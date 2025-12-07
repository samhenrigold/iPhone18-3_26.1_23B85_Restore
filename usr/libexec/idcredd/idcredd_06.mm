uint64_t sub_1000B5140()
{
  sub_1000BD010((v0 + 12), (v0 + 2), &qword_100202460, &unk_1001AD180);
  if (v0[5])
  {
    sub_10001A940((v0 + 2), (v0 + 17));
    v1 = v0[20];
    v2 = v0[21];
    sub_100009278(v0 + 17, v1);
    v24 = (*(v2 + 8) + **(v2 + 8));
    v3 = swift_task_alloc();
    v0[62] = v3;
    *v3 = v0;
    v3[1] = sub_1000B56A4;
    v4 = v0[38];

    return v24(v4, 1, v1, v2);
  }

  else
  {
    v6 = v0[38];
    sub_10000A0D4(v0[55], &qword_1002024A0, &unk_1001ACF90);
    v7 = type metadata accessor for PayloadMetadata(0);
    (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
    sub_10000A0D4(v6, &qword_100202490, &unk_1001ACF80);
    v8 = v0[49];
    v9 = v0[47];
    v10 = v0[22];
    v11 = *(v8 + 8);
    v12 = *(v8 + 24);
    v21 = *(v8 + 16);
    v22 = *v8;
    v23 = *(v8 + 168);
    v25 = *(v8 + 152);
    sub_100046360((v0 + 2), v10 + 56, &qword_100202460, &unk_1001AD180);
    v13 = *(v8 + 144);
    v14 = *(v8 + 96);
    v15 = *(v8 + 112);
    v19 = *(v8 + 104);
    v20 = *(v8 + 88);
    v16 = *(v9 + 52);
    v17 = type metadata accessor for PresentmentRequestInterpreter.DBResults(0);
    sub_100046360(v8 + v16, v10 + *(v17 + 48), &qword_100202488, &qword_1001ACF78);

    sub_1000BB9CC(v8, type metadata accessor for PresentmentRequestInterpreter.DBResult);
    *v10 = v22;
    *(v10 + 8) = v11;
    *(v10 + 16) = v21;
    *(v10 + 24) = v12;
    *(v10 + 32) = v25;
    *(v10 + 48) = v23;
    *(v10 + 96) = v13;
    *(v10 + 104) = v20;
    *(v10 + 112) = v14;
    *(v10 + 120) = v19;
    *(v10 + 128) = v15;
    (*(*(v17 - 8) + 56))(v10, 0, 1, v17);
    sub_10000A0D4((v0 + 2), &qword_100202460, &unk_1001AD180);

    v18 = v0[1];

    return v18();
  }
}

uint64_t sub_1000B5550()
{
  v1 = v0[49];
  sub_10000A0D4(v0[55], &qword_1002024A0, &unk_1001ACF90);
  sub_1000BB9CC(v1, type metadata accessor for PresentmentRequestInterpreter.DBResult);
  sub_10000A0D4((v0 + 2), &qword_100202460, &unk_1001AD180);

  v2 = v0[1];

  return v2();
}

uint64_t sub_1000B56A4()
{
  *(*v1 + 504) = v0;

  if (v0)
  {
    v2 = sub_1000B5A90;
  }

  else
  {
    v2 = sub_1000B57B8;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1000B57B8()
{
  v1 = v0[38];
  sub_10000A0D4(v0[55], &qword_1002024A0, &unk_1001ACF90);
  v2 = type metadata accessor for PayloadMetadata(0);
  (*(*(v2 - 8) + 56))(v1, 0, 1, v2);
  sub_10000A0D4(v1, &qword_100202490, &unk_1001ACF80);
  sub_100005090(v0 + 17);
  v3 = v0[49];
  v4 = v0[47];
  v5 = v0[22];
  v6 = *(v3 + 8);
  v7 = *(v3 + 24);
  v17 = *(v3 + 16);
  v18 = *v3;
  v19 = *(v3 + 168);
  v20 = *(v3 + 152);
  sub_100046360((v0 + 2), v5 + 56, &qword_100202460, &unk_1001AD180);
  v8 = *(v3 + 144);
  v9 = *(v3 + 96);
  v10 = *(v3 + 112);
  v15 = *(v3 + 104);
  v16 = *(v3 + 88);
  v11 = *(v4 + 52);
  v12 = type metadata accessor for PresentmentRequestInterpreter.DBResults(0);
  sub_100046360(v3 + v11, v5 + *(v12 + 48), &qword_100202488, &qword_1001ACF78);

  sub_1000BB9CC(v3, type metadata accessor for PresentmentRequestInterpreter.DBResult);
  *v5 = v18;
  *(v5 + 8) = v6;
  *(v5 + 16) = v17;
  *(v5 + 24) = v7;
  *(v5 + 32) = v20;
  *(v5 + 48) = v19;
  *(v5 + 96) = v8;
  *(v5 + 104) = v16;
  *(v5 + 112) = v9;
  *(v5 + 120) = v15;
  *(v5 + 128) = v10;
  (*(*(v12 - 8) + 56))(v5, 0, 1, v12);
  sub_10000A0D4((v0 + 2), &qword_100202460, &unk_1001AD180);

  v13 = v0[1];

  return v13();
}

uint64_t sub_1000B5A90()
{
  v1 = v0[49];
  sub_10000A0D4(v0[55], &qword_1002024A0, &unk_1001ACF90);
  sub_1000BB9CC(v1, type metadata accessor for PresentmentRequestInterpreter.DBResult);
  sub_100005090(v0 + 17);
  sub_10000A0D4((v0 + 2), &qword_100202460, &unk_1001AD180);

  v2 = v0[1];

  return v2();
}

void sub_1000B5BEC(char *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, NSObject *a4@<X4>, char *a5@<X5>, void *a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>, uint64_t a9, unint64_t a10)
{
  v118 = a5;
  v119 = a7;
  v116 = a6;
  v117 = a4;
  v115 = a8;
  v13 = type metadata accessor for Logger();
  v114 = *(v13 - 8);
  v14 = __chkstk_darwin(v13);
  v16 = &v106 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = &v106 - v17;
  v19 = type metadata accessor for DIPError.Code();
  v20 = *(v19 - 1);
  __chkstk_darwin(v19);
  v22 = &v106 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = v125;
  v24 = sub_10005218C(a2, a3);
  if (!v23)
  {
    v109 = v16;
    v113 = v20;
    v125 = v19;
    v110._countAndFlagsBits = a2;
    v110._object = a3;
    v107 = v18;
    v111 = v22;
    v108 = v13;
    if (!v24)
    {
      v122 = 0;
      v123 = 0xE000000000000000;
      _StringGuts.grow(_:)(38);

      v122 = 0xD000000000000024;
      v123 = 0x80000001001B7EF0;
      String.append(_:)(v110);
      (*(v113 + 104))(v111, enum case for DIPError.Code.idcsUnknownCredential(_:), v125);
      sub_10002688C(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_1000BD16C(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
      swift_allocError();
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      swift_willThrow();
      return;
    }

    v112 = 0;
    v25 = v24;
    v26 = [v24 partition];
    if (!v26)
    {
      (*(v113 + 104))(v111, enum case for DIPError.Code.invalidStoredData(_:), v125);
      sub_10002688C(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_1000BD16C(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
      swift_allocError();
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      swift_willThrow();

      return;
    }

    v27 = v25;
    v28 = v26;
    v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v31 = v30;

    if (v116)
    {
      v32 = [v116 identifier];
      v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v35 = v34;
    }

    else
    {
      v33 = 0;
      v35 = 0;
    }

    v36 = v112;
    v37 = sub_10009F024(a1, v117, v118, v33, v35, v25);
    v112 = v36;
    if (v36)
    {

      return;
    }

    v38 = v37;
    v39 = v27;

    if (!v38)
    {

      v31 = v109;
      defaultLogger()();
      object = v110._object;

      v44 = Logger.logObject.getter();
      v45 = static os_log_type_t.debug.getter();

      v46 = os_log_type_enabled(v44, v45);
      v38 = v108;
      v47 = v114;
      countAndFlagsBits = v110._countAndFlagsBits;
      if (v46)
      {
        v49 = swift_slowAlloc();
        v50 = swift_slowAlloc();
        v122 = v50;
        *v49 = 136315138;
        *(v49 + 4) = sub_10010150C(countAndFlagsBits, object, &v122);
        _os_log_impl(&_mh_execute_header, v44, v45, "No presentment key available, skipping credential %s", v49, 0xCu);
        sub_100005090(v50);

        (v47)[1](v109, v38);
LABEL_24:
        v65 = type metadata accessor for PresentmentRequestInterpreter.DBResult(0);
        (*(*(v65 - 8) + 56))(v115, 1, 1, v65);
        return;
      }

LABEL_23:

      (v47)[1](v31, v38);
      goto LABEL_24;
    }

    v40 = v112;
    v41 = sub_1000BBB88(v38);
    v112 = v40;
    if (v40)
    {

      return;
    }

    v44 = v42;
    v119 = v41;
    v51 = [v38 payload];
    if (!v51)
    {

      (*(v113 + 104))(v111, enum case for DIPError.Code.invalidStoredData(_:), v125);
      sub_10002688C(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_1000BD16C(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
      swift_allocError();
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      swift_willThrow();

      return;
    }

    v52 = v51;
    v53 = [v51 docType];
    v54 = v111;
    if (!v53 || (v118 = v29, v55 = v53, v56 = static String._unconditionallyBridgeFromObjectiveC(_:)(), v58 = v57, v55, v122 = v56, v123 = v58, sub_10004630C(), Collection.nilIfEmpty.getter(), , (v59 = v121) == 0))
    {

      (*(v113 + 104))(v54, enum case for DIPError.Code.invalidStoredData(_:), v125);
      sub_10002688C(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_1000BD16C(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
      swift_allocError();
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      swift_willThrow();

      return;
    }

    v60 = v31;
    v125 = v52;
    v47 = v120;
    if (!a9)
    {
      v61 = [v39 options];
      if (v61)
      {
        v62 = v44;
        v63 = v61;
        v64 = [v61 readerAuthenticationPolicy];

        v44 = v62;
        if ((v64 & 0x8000000000000000) != 0)
        {
          __break(1u);
          goto LABEL_23;
        }
      }

      else
      {
        v64 = 0;
      }

      if (v64 != a10)
      {

        v60 = v107;
        defaultLogger()();
        v75 = v110._object;

        v76 = Logger.logObject.getter();
        v77 = static os_log_type_t.debug.getter();

        if (os_log_type_enabled(v76, v77))
        {
          v78 = swift_slowAlloc();
          v79 = swift_slowAlloc();
          v118 = v38;
          v122 = v79;
          *v78 = 136315650;
          *(v78 + 4) = sub_10010150C(v110._countAndFlagsBits, v75, &v122);
          *(v78 + 12) = 2082;
          v80 = DCCredentialReaderAuthenticationPolicyToString();
          v81 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v83 = v82;

          v84 = sub_10010150C(v81, v83, &v122);

          *(v78 + 14) = v84;
          *(v78 + 22) = 2082;
          v85 = DCCredentialReaderAuthenticationPolicyToString();
          v86 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v88 = v87;

          v89 = sub_10010150C(v86, v88, &v122);

          *(v78 + 24) = v89;
          _os_log_impl(&_mh_execute_header, v76, v77, "Not proposing credential %s because its reader authentication policy %{public}s does not match the session's reader authentication policy %{public}s", v78, 0x20u);
          swift_arrayDestroy();

          (*(v114 + 8))(v107, v108);
          goto LABEL_24;
        }

LABEL_43:

        (*(v114 + 8))(v60, v108);
        goto LABEL_24;
      }
    }

    v116 = v47;
    v117 = v44;
    v66 = v59;
    v67 = v125;
    v68 = [v125 protectionType];
    if ((v68 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      v69 = v68;
      v70 = v112;
      sub_10005E914(v124);
      if (v70)
      {

        return;
      }

      v71 = [v67 payloadData];
      if (v71)
      {
        v72 = v71;
        v73 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
        v114 = v74;
      }

      else
      {
        v73 = 0;
        v114 = 0xF000000000000000;
      }

      sub_100059974();
      v112 = 0;
      v113 = v90;
      v91 = [v67 issuerCertificateChain];
      if (!v91 || (v122 = 0, v92 = v91, static Array._conditionallyBridgeFromObjectiveC(_:result:)(), v92, (v93 = v122) == 0))
      {

        v93 = _swiftEmptyArrayStorage;
      }

      v110._object = v93;
      v94 = [v39 options];
      v111 = v73;
      v95 = v38;
      if (v94)
      {
        v96 = v94;
        v76 = [v94 presentmentAuthPolicy];

        if (v76 < 0)
        {
          __break(1u);
          goto LABEL_43;
        }
      }

      else
      {
        v76 = 0;
      }

      v97 = type metadata accessor for PresentmentRequestInterpreter.DBResult(0);
      v98 = v115;
      v99 = v125;
      sub_10005EC20((v115 + *(v97 + 52)));

      v100 = v124[0];
      *(v98 + 56) = v124[1];
      v101 = v124[3];
      *(v98 + 72) = v124[2];
      *(v98 + 88) = v101;
      *(v98 + 104) = v124[4];
      *v98 = v118;
      *(v98 + 8) = v60;
      *(v98 + 16) = v116;
      *(v98 + 24) = v66;
      *(v98 + 32) = v69;
      *(v98 + 40) = v100;
      v103 = v113;
      v102 = v114;
      *(v98 + 120) = v111;
      *(v98 + 128) = v102;
      v104 = v110._object;
      *(v98 + 136) = v103;
      *(v98 + 144) = v104;
      v105 = v117;
      *(v98 + 152) = v119;
      *(v98 + 160) = v105;
      *(v98 + 168) = v76;
      (*(*(v97 - 8) + 56))(v98, 0, 1, v97);
    }
  }
}

unint64_t sub_1000B6A84(void *a1)
{
  _StringGuts.grow(_:)(42);

  sub_100004E70(&qword_100201580, &qword_1001AB980);
  v1 = Dictionary.description.getter();
  v3 = v2;

  v4._countAndFlagsBits = v1;
  v4._object = v3;
  String.append(_:)(v4);

  return 0xD000000000000028;
}

id sub_1000B6B60(uint64_t a1)
{
  v2 = sub_100004E70(&qword_1002019B0, &unk_1001ABDD0);
  __chkstk_darwin(v2 - 8);
  v58 = &v53 - v3;
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  v59 = v4;
  v60 = v5;
  v6 = __chkstk_darwin(v4);
  v56 = &v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v57 = &v53 - v8;
  v9 = type metadata accessor for Logger();
  v61 = *(v9 - 8);
  v62 = v9;
  v10 = __chkstk_darwin(v9);
  v12 = &v53 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v53 - v13;
  v15 = sub_100004E70(&qword_100202488, &qword_1001ACF78);
  v16 = __chkstk_darwin(v15 - 8);
  v18 = &v53 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v16);
  v21 = &v53 - v20;
  __chkstk_darwin(v19);
  v23 = (&v53 - v22);
  v24 = *(type metadata accessor for PresentmentRequestInterpreter.DBResults(0) + 48);
  sub_100046360(a1 + v24, v23, &qword_100202488, &qword_1001ACF78);
  v25 = type metadata accessor for PayloadRevocationListMetadata(0);
  v26 = *(*(v25 - 8) + 48);
  if (v26(v23, 1, v25) == 1)
  {
    sub_10000A0D4(v23, &qword_100202488, &qword_1001ACF78);
LABEL_4:
    defaultLogger()();
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&_mh_execute_header, v28, v29, "StoredPayload missing identifier revocation list identifier; excluding from payload contents", v30, 2u);
    }

    (*(v61 + 8))(v14, v62);
    return 0;
  }

  v53 = v12;
  v27 = v23[1];
  v54 = *v23;
  sub_100032EBC(v54, v27);
  sub_1000BB9CC(v23, type metadata accessor for PayloadRevocationListMetadata);
  v55 = v27;
  if (v27 >> 60 == 15)
  {
    goto LABEL_4;
  }

  sub_100046360(a1 + v24, v21, &qword_100202488, &qword_1001ACF78);
  if (v26(v21, 1, v25) == 1)
  {
    sub_10000A0D4(v21, &qword_100202488, &qword_1001ACF78);
    v32 = v58;
    (*(v60 + 56))(v58, 1, 1, v59);
    v33 = v54;
LABEL_11:
    sub_10000A0D4(v32, &qword_1002019B0, &unk_1001ABDD0);
    v37 = v53;
    defaultLogger()();
    v38 = Logger.logObject.getter();
    v39 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      *v40 = 0;
      _os_log_impl(&_mh_execute_header, v38, v39, "StoredPayload missing identifier revocation list uri; excluding from payload contents", v40, 2u);
    }

    sub_10001C120(v33, v55);

    (*(v61 + 8))(v37, v62);
    return 0;
  }

  v32 = v58;
  sub_100046360(&v21[*(v25 + 24)], v58, &qword_1002019B0, &unk_1001ABDD0);
  sub_1000BB9CC(v21, type metadata accessor for PayloadRevocationListMetadata);
  v35 = v59;
  v34 = v60;
  v36 = (*(v60 + 48))(v32, 1, v59);
  v33 = v54;
  if (v36 == 1)
  {
    goto LABEL_11;
  }

  (*(v34 + 32))(v57, v32, v35);
  sub_100046360(a1 + v24, v18, &qword_100202488, &qword_1001ACF78);
  if (v26(v18, 1, v25) == 1)
  {
    sub_10000A0D4(v18, &qword_100202488, &qword_1001ACF78);
    v41 = 0;
    v42 = 0xF000000000000000;
  }

  else
  {
    v41 = *(v18 + 2);
    v42 = *(v18 + 3);
    sub_100032EBC(v41, v42);
    sub_1000BB9CC(v18, type metadata accessor for PayloadRevocationListMetadata);
  }

  v44 = v55;
  v43 = v56;
  (*(v34 + 16))(v56, v57, v35);
  v45.super.isa = Data._bridgeToObjectiveC()().super.isa;
  if (v42 >> 60 == 15)
  {
    isa = 0;
  }

  else
  {
    isa = Data._bridgeToObjectiveC()().super.isa;
    sub_10001C120(v41, v42);
  }

  v47 = objc_allocWithZone(DCCredentialRevocationInfo);
  URL._bridgeToObjectiveC()(v48);
  v50 = v49;
  v51 = [v47 initWithIdentifier:v45.super.isa certificate:isa URL:v49];

  sub_10001C120(v33, v44);
  v52 = *(v60 + 8);
  v52(v43, v35);
  v52(v57, v35);
  return v51;
}

uint64_t sub_1000B725C(uint64_t a1, uint64_t a2)
{
  v3[13] = a2;
  v3[14] = v2;
  v3[12] = a1;
  v4 = type metadata accessor for DIPError.Code();
  v3[15] = v4;
  v3[16] = *(v4 - 8);
  v3[17] = swift_task_alloc();
  v5 = type metadata accessor for Logger();
  v3[18] = v5;
  v3[19] = *(v5 - 8);
  v3[20] = swift_task_alloc();
  v3[21] = swift_task_alloc();

  return _swift_task_switch(sub_1000B7388, 0, 0);
}

void sub_1000B7388(uint64_t a1)
{
  v65 = v1;
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "PresentmentRequestInterpreter getProposalElements", v4, 2u);
  }

  v5 = v1[21];
  v6 = v1[18];
  v7 = v1[19];

  v8 = *(v7 + 8);
  v1[22] = v8;
  v8(v5, v6);
  v9 = DocumentRequest.namespaces.getter();
  sub_100004E70(&qword_100202458, &unk_1001ACF20);
  v10 = static _DictionaryStorage.copy(original:)();
  v11 = v10;
  v12 = 0;
  v57 = v1;
  v58 = v10;
  v1[23] = v10;
  v14 = v9 + 64;
  v13 = *(v9 + 64);
  v61 = v9;
  v15 = 1 << *(v9 + 32);
  v16 = -1;
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  v17 = v16 & v13;
  v18 = (v15 + 63) >> 6;
  v59 = v10 + 64;
  if ((v16 & v13) != 0)
  {
    while (1)
    {
      v19 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_12:
      v22 = v19 | (v12 << 6);
      v23 = (*(v61 + 48) + 16 * v22);
      v62 = *v23;
      v24 = *(*(v61 + 56) + 8 * v22);
      v25 = *(v24 + 16);
      if (v25)
      {
        v26 = v23[1];
        sub_100004E70(&qword_1002004F8, &qword_1001AAFA8);
        v27 = swift_allocObject();
        v28 = j__malloc_size(v27);
        v29 = v28 - 32;
        if (v28 < 32)
        {
          v29 = v28 - 17;
        }

        v27[2] = v25;
        v27[3] = 2 * (v29 >> 4);
        v30 = sub_100122774(&v64, v27 + 4, v25, v24);
        v31 = v64;
        v60 = v30;

        sub_1000BAE9C(v31);
        if (v60 != v25)
        {
          goto LABEL_36;
        }

        v11 = v58;
        v32 = v26;
      }

      else
      {

        v27 = _swiftEmptyArrayStorage;
      }

      *(v59 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      v33 = (v11[6] + 16 * v22);
      *v33 = v62;
      v33[1] = v32;
      *(v11[7] + 8 * v22) = v27;
      v34 = v11[2];
      v35 = __OFADD__(v34, 1);
      v36 = v34 + 1;
      if (v35)
      {
        break;
      }

      v11[2] = v36;
      if (!v17)
      {
        goto LABEL_7;
      }
    }

LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
  }

  else
  {
LABEL_7:
    v20 = v12;
    while (1)
    {
      v12 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v12 >= v18)
      {
        break;
      }

      v21 = *(v14 + 8 * v12);
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v17 = (v21 - 1) & v21;
        goto LABEL_12;
      }
    }

    v37 = v57;
    v38 = v57[13];

    v57[24] = sub_10010D054(_swiftEmptyArrayStorage);
    sub_100046360(v38, (v57 + 7), &qword_100202460, &unk_1001AD180);
    if (v57[10])
    {
      sub_10001AA08((v57 + 7), (v57 + 2));
      v39 = swift_task_alloc();
      v57[25] = v39;
      *v39 = v57;
      v39[1] = sub_1000B796C;
      v40 = v57[12];

      sub_1000B7EBC(v11, v40, (v57 + 2));
    }

    else
    {
      v41 = v57[12];
      sub_10000A0D4((v57 + 7), &qword_100202460, &unk_1001AD180);
      v42 = sub_1000BAF70(v11, v41);

      v43 = v42[2];

      if (v43)
      {
        defaultLogger()();
        v44 = Logger.logObject.getter();
        v45 = static os_log_type_t.debug.getter();
        v46 = os_log_type_enabled(v44, v45);
        v47 = v57[22];
        v48 = v57[20];
        v49 = v57[18];
        if (v46)
        {
          v63 = v57[22];
          v50 = swift_slowAlloc();
          v51 = swift_slowAlloc();
          v64 = v51;
          *v50 = 136315138;

          sub_100004E70(&qword_100202468, &unk_1001ACF30);
          v52 = Dictionary.description.getter();
          v54 = v53;

          v55 = sub_10010150C(v52, v54, &v64);

          *(v50 + 4) = v55;
          _os_log_impl(&_mh_execute_header, v44, v45, "PresentmentRequestInterpreter getProposalElements elementsForProposal %s", v50, 0xCu);
          sub_100005090(v51);

          v63(v48, v49);
        }

        else
        {

          v47(v48, v49);
        }

        v37 = v57;
      }

      else
      {

        v42 = 0;
      }

      v56 = v37[1];

      v56(0, v42);
    }
  }
}

uint64_t sub_1000B796C(uint64_t a1, uint64_t a2)
{
  v5 = *v3;
  v5[26] = a2;
  v5[27] = v2;

  if (v2)
  {
    v6 = sub_1000B7D00;
  }

  else
  {
    v5[28] = a1;
    v6 = sub_1000B7AB0;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_1000B7AB0()
{
  v23 = v0;
  v1 = v0[28];
  v2 = v0[26];
  sub_100005090(v0 + 2);

  v3 = *(v2 + 16);

  v4 = v0[26];
  if (v3)
  {
    defaultLogger()();
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.debug.getter();
    v7 = os_log_type_enabled(v5, v6);
    v8 = v0[22];
    v9 = v0[20];
    v10 = v0[18];
    if (v7)
    {
      v21 = v1;
      v11 = swift_slowAlloc();
      v20 = v9;
      v12 = swift_slowAlloc();
      v22 = v12;
      *v11 = 136315138;

      sub_100004E70(&qword_100202468, &unk_1001ACF30);
      v13 = Dictionary.description.getter();
      v19 = v8;
      v15 = v14;

      v16 = sub_10010150C(v13, v15, &v22);

      *(v11 + 4) = v16;
      _os_log_impl(&_mh_execute_header, v5, v6, "PresentmentRequestInterpreter getProposalElements elementsForProposal %s", v11, 0xCu);
      sub_100005090(v12);

      v1 = v21;

      v19(v20, v10);
    }

    else
    {

      v8(v9, v10);
    }
  }

  else
  {

    v4 = 0;
  }

  v17 = v0[1];

  return v17(v1, v4);
}

uint64_t sub_1000B7D00()
{
  v2 = v0[16];
  v1 = v0[17];
  v3 = v0[15];
  sub_100005090(v0 + 2);

  (*(v2 + 104))(v1, enum case for DIPError.Code.internalError(_:), v3);
  swift_errorRetain();
  sub_10002688C(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_1000BD16C(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v4 = v0[1];

  return v4();
}

uint64_t sub_1000B7EBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = type metadata accessor for DIPError.Code();
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();
  v6 = type metadata accessor for CredentialPresentmentElementRequestInfo.IntentToStore();
  v4[9] = v6;
  v4[10] = *(v6 - 8);
  v4[11] = swift_task_alloc();
  v4[12] = swift_task_alloc();
  v7 = type metadata accessor for ISO18013IssuerSignedItem();
  v4[13] = v7;
  v4[14] = *(v7 - 8);
  v4[15] = swift_task_alloc();
  v4[16] = swift_task_alloc();
  v8 = type metadata accessor for CredentialPresentmentElementRequestInfo();
  v4[17] = v8;
  v4[18] = *(v8 - 8);
  v4[19] = swift_task_alloc();
  v9 = sub_100004E70(&qword_1002004D8, &qword_1001ACBF0);
  v4[20] = v9;
  v4[21] = *(v9 - 8);
  v4[22] = swift_task_alloc();
  v10 = type metadata accessor for Logger();
  v4[23] = v10;
  v4[24] = *(v10 - 8);
  v4[25] = swift_task_alloc();

  return _swift_task_switch(sub_1000B8170, 0, 0);
}

uint64_t sub_1000B8170()
{
  sub_10010D040(_swiftEmptyArrayStorage);

  v0[26] = sub_10010D054(_swiftEmptyArrayStorage);
  defaultLogger()();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "getProposalElements: payloadProcessor provided; extracting elements from payload", v3, 2u);
  }

  v5 = v0[24];
  v4 = v0[25];
  v6 = v0[23];
  v7 = v0[4];
  v8 = v0[2];

  (*(v5 + 8))(v4, v6);
  v9 = v7[3];
  v10 = v7[4];
  sub_100009278(v7, v9);
  v13 = (*(v10 + 16) + **(v10 + 16));
  v11 = swift_task_alloc();
  v0[27] = v11;
  *v11 = v0;
  v11[1] = sub_1000B8368;

  return v13(v8, v9, v10);
}

uint64_t sub_1000B8368(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 224) = a1;
  *(v3 + 232) = v1;

  if (v1)
  {

    v4 = sub_1000B9240;
  }

  else
  {
    v4 = sub_1000B8484;
  }

  return _swift_task_switch(v4, 0, 0);
}

void sub_1000B8484()
{
  v1 = v0[10];
  v2 = v0[28];
  v3 = *(v2 + 64);
  v89 = v2 + 64;
  v4 = -1;
  v5 = -1 << *(v2 + 32);
  if (-v5 < 64)
  {
    v4 = ~(-1 << -v5);
  }

  v6 = v4 & v3;
  v88 = (63 - v5) >> 6;
  v95 = (v0[14] + 8);
  v87 = v0[18];
  v86 = (v1 + 32);
  v85 = (v1 + 88);
  v84 = enum case for CredentialPresentmentElementRequestInfo.IntentToStore.mayStore(_:);
  v83 = enum case for CredentialPresentmentElementRequestInfo.IntentToStore.willNotStore(_:);
  v81 = enum case for CredentialPresentmentElementRequestInfo.IntentToStore.displayOnly(_:);
  v7 = (v1 + 8);
  v82 = (v1 + 96);
  v94 = v0[21];
  v8 = v0[26];
  v90 = v0[28];

  v9 = 0;
  v10 = 0;
LABEL_4:
  v0[30] = v8;
  v0[31] = v9;
LABEL_6:
  if (v6)
  {
    goto LABEL_5;
  }

  while (1)
  {
    v15 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v15 >= v88)
    {
      v62 = v0[5];

      if (*(v62 + 72) == 1)
      {
        v101 = v0[28];
        sub_10000ED48(v0[31], 0);

        v63 = v0[1];

        v63(v101, v8);
      }

      else
      {
        v64 = v0[4];
        v65 = *(v0[5] + 56);
        if (v65 == 1)
        {
          v66 = 1;
        }

        else
        {
          v66 = 2 * (v65 == 2);
        }

        v67 = [objc_opt_self() standardUserDefaults];
        v68._object = 0x80000001001B7CD0;
        v68._countAndFlagsBits = 0xD000000000000016;
        v69 = NSUserDefaults.internalBool(forKey:)(v68);

        if (v69)
        {
          v70 = 2;
        }

        else
        {
          v70 = v66;
        }

        v71 = v64[3];
        v72 = v64[4];
        sub_100009278(v64, v71);
        v73 = DocumentRequest.docType.getter();
        v75 = v74;
        v0[32] = v74;
        v76 = DocumentRequest.alternativeElements.getter();
        v0[33] = v76;
        v102 = (*(v72 + 24) + **(v72 + 24));
        v77 = swift_task_alloc();
        v0[34] = v77;
        *v77 = v0;
        v77[1] = sub_1000B8DD8;
        v78 = v0[2];

        v102(v78, v73, v75, v76, v70, v71, v72);
      }

      return;
    }

    v6 = *(v89 + 8 * v15);
    ++v10;
    if (v6)
    {
      v10 = v15;
LABEL_5:
      v11 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      v12 = v11 | (v10 << 6);
      v13 = *(*(v90 + 56) + 8 * v12);
      v14 = *(v13 + 16);
      if (v14)
      {
        v79 = v7;
        v16 = (*(v90 + 48) + 16 * v12);
        v100 = *v16;
        v93 = v13 + ((*(v94 + 80) + 32) & ~*(v94 + 80));
        v96 = v16[1];

        v17 = 0;
        v91 = v14;
        v92 = v13;
        while (1)
        {
          if (v17 >= *(v13 + 16))
          {
            goto LABEL_61;
          }

          (*(v94 + 16))(v0[22], v93 + *(v94 + 72) * v17, v0[20]);
          v18 = DocumentRequest.namespaces.getter();
          v98 = v9;
          v99 = v8;
          v97 = v17;
          if (!*(v18 + 16))
          {
            goto LABEL_21;
          }

          v19 = sub_100099644(v100, v96);
          if ((v20 & 1) == 0)
          {
            goto LABEL_21;
          }

          v21 = v0[16];
          v22 = v0[13];
          v23 = *(*(v18 + 56) + 8 * v19);

          CBOREncodedCBOR.value.getter();
          v24 = ISO18013IssuerSignedItem.elementIdentifier.getter();
          v26 = v25;
          (*v95)(v21, v22);
          if (!*(v23 + 16))
          {
            break;
          }

          v27 = sub_100099644(v24, v26);
          v29 = v28;

          if ((v29 & 1) == 0)
          {
            goto LABEL_21;
          }

          v30 = v0[19];
          v31 = v0[17];
          v33 = v0[11];
          v32 = v0[12];
          v80 = v0[9];
          (*(v87 + 16))(v30, *(v23 + 56) + *(v87 + 72) * v27, v31);

          CredentialPresentmentElementRequestInfo.intentToStore.getter();
          (*(v87 + 8))(v30, v31);
          (*v86)(v33, v32, v80);
          v34 = (*v85)(v33, v80);
          if (v34 == v84)
          {
            v35 = v0[11];
            (*v82)(v35, v0[9]);
            v36 = 0;
            v37 = *v35;
            v38 = 1;
            goto LABEL_23;
          }

          if (v34 == v83)
          {
            v37 = 0;
            v36 = 1;
            v38 = 2;
          }

          else
          {
            if (v34 != v81)
            {
              (*v79)(v0[11], v0[9]);
              goto LABEL_22;
            }

            v37 = 0;
            v36 = 1;
            v38 = 3;
          }

LABEL_23:
          v39 = v0[15];
          v40 = v0[13];
          CBOREncodedCBOR.value.getter();
          ISO18013IssuerSignedItem.elementIdentifier.getter();
          (*v95)(v39, v40);
          if (v36)
          {
            v37 = NSNotFound.getter();
          }

          v41 = objc_allocWithZone(DCPresentmentRequestedElement);
          v42 = String._bridgeToObjectiveC()();

          v43 = [v41 initWithElementIdentifier:v42 intentToRetain:v38 retentionPeriod:v37];

          sub_10000ED48(v98, 0);
          v8 = v99;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v45 = sub_100099644(v100, v96);
          v47 = v99[2];
          v48 = (v46 & 1) == 0;
          v49 = __OFADD__(v47, v48);
          v50 = v47 + v48;
          if (v49)
          {
            goto LABEL_62;
          }

          v51 = v46;
          if (v99[3] < v50)
          {
            sub_100108A98(v50, isUniquelyReferenced_nonNull_native);
            v8 = v99;
            v45 = sub_100099644(v100, v96);
            if ((v51 & 1) != (v52 & 1))
            {

              KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
              return;
            }

LABEL_30:
            if ((v51 & 1) == 0)
            {
              goto LABEL_31;
            }

            goto LABEL_33;
          }

          if (isUniquelyReferenced_nonNull_native)
          {
            goto LABEL_30;
          }

          v61 = v45;
          sub_100109EF8();
          v45 = v61;
          v8 = v99;
          if ((v51 & 1) == 0)
          {
LABEL_31:
            v8[(v45 >> 6) + 8] |= 1 << v45;
            v53 = (v8[6] + 16 * v45);
            *v53 = v100;
            v53[1] = v96;
            *(v8[7] + 8 * v45) = _swiftEmptyArrayStorage;
            v54 = v8[2];
            v49 = __OFADD__(v54, 1);
            v55 = v54 + 1;
            if (v49)
            {
              goto LABEL_63;
            }

            v8[2] = v55;
            v56 = v45;

            v45 = v56;
          }

LABEL_33:
          v57 = (v8[7] + 8 * v45);
          v58 = v43;
          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          if (*((*v57 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v57 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          v17 = v97 + 1;
          v59 = v0[22];
          v60 = v0[20];
          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

          (*(v94 + 8))(v59, v60);
          v9 = sub_1000BDCF8;
          v13 = v92;
          if (v91 == v97 + 1)
          {

            v9 = sub_1000BDCF8;
            v7 = v79;
            goto LABEL_4;
          }
        }

LABEL_21:

LABEL_22:
        v37 = 0;
        v38 = 0;
        v36 = 1;
        goto LABEL_23;
      }

      goto LABEL_6;
    }
  }

  __break(1u);
LABEL_61:
  __break(1u);
LABEL_62:
  __break(1u);
LABEL_63:
  __break(1u);
}

uint64_t sub_1000B8DD8(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 280) = v1;

  if (v1)
  {

    v5 = sub_1000B942C;
  }

  else
  {
    *(v4 + 288) = a1;
    v5 = sub_1000B8F54;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1000B8F54()
{
  v1 = *(v0 + 280);
  v2 = sub_1000A1124(*(v0 + 288), *(v0 + 24), *(v0 + 224), *(v0 + 240));
  v4 = v3;

  if (v1)
  {
    v5 = *(v0 + 248);
    (*(*(v0 + 56) + 104))(*(v0 + 64), enum case for DIPError.Code.internalError(_:), *(v0 + 48));
    swift_errorRetain();
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1000BD16C(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    sub_10000ED48(v5, 0);

    v6 = *(v0 + 8);

    return v6();
  }

  else
  {
    sub_10000ED48(*(v0 + 248), 0);

    v8 = *(v0 + 8);

    return v8(v2, v4);
  }
}

uint64_t sub_1000B9240()
{
  (*(v0[7] + 104))(v0[8], enum case for DIPError.Code.internalError(_:), v0[6]);
  swift_errorRetain();
  sub_10002688C(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_1000BD16C(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  sub_10000ED48(0, 0);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1000B942C()
{
  v1 = v0[31];
  (*(v0[7] + 104))(v0[8], enum case for DIPError.Code.internalError(_:), v0[6]);
  swift_errorRetain();
  sub_10002688C(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_1000BD16C(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  sub_10000ED48(v1, 0);

  v2 = v0[1];

  return v2();
}

uint64_t sub_1000B9620(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = type metadata accessor for DIPError.Code();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();
  type metadata accessor for DIPSignpost.Config();
  v3[8] = swift_task_alloc();
  v5 = type metadata accessor for DIPSignpost();
  v3[9] = v5;
  v3[10] = *(v5 - 8);
  v3[11] = swift_task_alloc();
  v6 = type metadata accessor for Logger();
  v3[12] = v6;
  v3[13] = *(v6 - 8);
  v3[14] = swift_task_alloc();

  return _swift_task_switch(sub_1000B97C8, 0, 0);
}

uint64_t sub_1000B97C8(uint64_t a1)
{
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "PresentmentRequestInterpreter interpretGenericDataRequest", v4, 2u);
  }

  v6 = v1[13];
  v5 = v1[14];
  v7 = v1[12];

  (*(v6 + 8))(v5, v7);
  static IDCSSignposts.presentmentInterpretGenericDataRequest.getter();
  DIPSignpost.init(_:)();
  v8 = swift_task_alloc();
  v1[15] = v8;
  *v8 = v1;
  v8[1] = sub_1000B992C;
  v10 = v1[2];
  v9 = v1[3];

  return sub_1000DE724(v10, v9);
}

uint64_t sub_1000B992C(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(*v3 + 128) = v2;

  if (v2)
  {
    v7 = sub_1000B9B28;
  }

  else
  {
    *(v6 + 136) = a2;
    *(v6 + 144) = a1;
    v7 = sub_1000B9A60;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_1000B9A60()
{
  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[9];
  DIPSignpost.end(workflowID:isBackground:)(0, 2);
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];
  v6 = v0[17];
  v5 = v0[18];

  return v4(v5, v6);
}

uint64_t sub_1000B9B28()
{
  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[9];
  (*(v0[6] + 104))(v0[7], enum case for DIPError.Code.internalError(_:), v0[5]);
  swift_errorRetain();
  sub_10002688C(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_1000BD16C(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  DIPSignpost.end(workflowID:isBackground:)(0, 2);
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

void *sub_1000B9D00()
{

  sub_10000A0D4(v0 + OBJC_IVAR____TtC7idcredd29PresentmentRequestInterpreter_identityReaderAuthenticator, &qword_100202378, &unk_1001ACE70);
  sub_100005090((v0 + OBJC_IVAR____TtC7idcredd29PresentmentRequestInterpreter_payloadProcessorBuilder));

  return v0;
}

uint64_t sub_1000B9D88()
{
  sub_1000B9D00();

  return swift_deallocClassInstance();
}

void sub_1000B9E08(uint64_t a1)
{
  sub_1000BA2FC(319, &unk_100202208, type metadata accessor for IdentityReaderAuthenticator);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_1000B9F14(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_100004E70(&qword_100202370, &qword_1001ACE68);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 20);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_100004E70(&qword_100202378, &unk_1001ACE70);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 24);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_1000BA064(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = sub_100004E70(&qword_100202370, &qword_1001ACE68);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 20);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_100004E70(&qword_100202378, &unk_1001ACE70);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 24);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void sub_1000BA1C0(uint64_t a1)
{
  sub_1000BA294(319);
  if (v1 <= 0x3F)
  {
    sub_1000BA2FC(319, &unk_1002023F0, &type metadata accessor for ISO18013SessionTranscript);
    if (v2 <= 0x3F)
    {
      sub_1000BA2FC(319, &unk_100202208, type metadata accessor for IdentityReaderAuthenticator);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1000BA294(uint64_t a1)
{
  if (!qword_1002023E8)
  {
    type metadata accessor for PresentmentProposal(255);
    v1 = type metadata accessor for Dictionary();
    if (!v2)
    {
      atomic_store(v1, &qword_1002023E8);
    }
  }
}

void sub_1000BA2FC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Optional();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1000BA350(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 1;
  }

  v2 = *(a1 + 16);
  if (!v2)
  {
    return 1;
  }

  v3 = a2;
  v4 = 0;
  v76 = *(a1 + 16);
  v77 = a1 + 32;
  v5 = a2 + 56;
  v82 = a2 + 56;
  while (1)
  {
    if (!*(v3 + 16))
    {
      goto LABEL_5;
    }

    v80 = v4;
    v6 = (v77 + 16 * v4);
    v8 = *v6;
    v7 = v6[1];
    Hasher.init(_seed:)();
    sub_100009708(v8, v7);
    Data.hash(into:)();
    v9 = Hasher._finalize()();
    v10 = -1 << *(v3 + 32);
    v11 = v9 & ~v10;
    if ((*(v5 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
    {
      break;
    }

LABEL_4:
    sub_1000092BC(v8, v7);
    v2 = v76;
    v4 = v80;
LABEL_5:
    if (++v4 == v2)
    {
      return 1;
    }
  }

  v12 = ~v10;
  v13 = v7 >> 62;
  if (v8)
  {
    v14 = 0;
  }

  else
  {
    v14 = v7 == 0xC000000000000000;
  }

  v15 = !v14;
  v84 = v15;
  v16 = __OFSUB__(HIDWORD(v8), v8);
  v81 = v16;
  v78 = (v8 >> 32) - v8;
  v79 = v8 >> 32;
  v83 = v12;
  while (1)
  {
    v17 = (*(v3 + 48) + 16 * v11);
    v19 = *v17;
    v18 = v17[1];
    v20 = v18 >> 62;
    if (v18 >> 62 == 3)
    {
      if (v19)
      {
        v21 = 0;
      }

      else
      {
        v21 = v18 == 0xC000000000000000;
      }

      v23 = !v21 || v7 >> 62 != 3;
      if (((v23 | v84) & 1) == 0)
      {
        v67 = 0;
        v68 = 0xC000000000000000;
LABEL_150:
        sub_1000092BC(v67, v68);
        return 0;
      }

LABEL_42:
      v24 = 0;
      if (v13 <= 1)
      {
        goto LABEL_39;
      }

      goto LABEL_43;
    }

    if (v20 > 1)
    {
      if (v20 != 2)
      {
        goto LABEL_42;
      }

      v26 = *(v19 + 16);
      v25 = *(v19 + 24);
      v27 = __OFSUB__(v25, v26);
      v24 = v25 - v26;
      if (v27)
      {
        goto LABEL_152;
      }

      if (v13 <= 1)
      {
        goto LABEL_39;
      }
    }

    else if (v20)
    {
      LODWORD(v24) = HIDWORD(v19) - v19;
      if (__OFSUB__(HIDWORD(v19), v19))
      {
        goto LABEL_153;
      }

      v24 = v24;
      if (v13 <= 1)
      {
LABEL_39:
        v28 = BYTE6(v7);
        if (v13)
        {
          v28 = HIDWORD(v8) - v8;
          if (v81)
          {
            __break(1u);
LABEL_151:
            __break(1u);
LABEL_152:
            __break(1u);
LABEL_153:
            __break(1u);
LABEL_154:
            __break(1u);
LABEL_155:
            __break(1u);
LABEL_156:
            __break(1u);
LABEL_157:
            __break(1u);
LABEL_158:
            __break(1u);
LABEL_159:
            __break(1u);
LABEL_160:
            __break(1u);
LABEL_161:
            __break(1u);
LABEL_162:
            __break(1u);
LABEL_163:
            __break(1u);
LABEL_164:
            __break(1u);
LABEL_165:
            __break(1u);
LABEL_166:
            __break(1u);
LABEL_167:
            __break(1u);
LABEL_168:
            __break(1u);
LABEL_169:
            __break(1u);
LABEL_170:
            __break(1u);
LABEL_171:
            __break(1u);
LABEL_172:
            __break(1u);
          }
        }

        goto LABEL_45;
      }
    }

    else
    {
      v24 = BYTE6(v18);
      if (v13 <= 1)
      {
        goto LABEL_39;
      }
    }

LABEL_43:
    if (v13 != 2)
    {
      if (!v24)
      {
        goto LABEL_149;
      }

      goto LABEL_19;
    }

    v30 = *(v8 + 16);
    v29 = *(v8 + 24);
    v27 = __OFSUB__(v29, v30);
    v28 = v29 - v30;
    if (v27)
    {
      goto LABEL_151;
    }

LABEL_45:
    if (v24 != v28)
    {
      goto LABEL_19;
    }

    if (v24 < 1)
    {
      goto LABEL_149;
    }

    if (v20 > 1)
    {
      if (v20 != 2)
      {
        *&__s1[6] = 0;
        *__s1 = 0;
        if (!v13)
        {
LABEL_98:
          __s2 = v8;
          v86 = v7;
          v87 = BYTE2(v7);
          v88 = BYTE3(v7);
          v89 = BYTE4(v7);
          v90 = BYTE5(v7);
          if (!memcmp(__s1, &__s2, BYTE6(v7)))
          {
            goto LABEL_149;
          }

          goto LABEL_19;
        }

        if (v13 == 2)
        {
          v45 = *(v8 + 16);
          v71 = *(v8 + 24);
          sub_100009708(v19, v18);
          v46 = __DataStorage._bytes.getter();
          if (v46)
          {
            v47 = __DataStorage._offset.getter();
            if (__OFSUB__(v45, v47))
            {
              goto LABEL_167;
            }

            v46 += v45 - v47;
          }

          v27 = __OFSUB__(v71, v45);
          v48 = v71 - v45;
          if (v27)
          {
            goto LABEL_160;
          }

          result = __DataStorage._length.getter();
          if (!v46)
          {
            goto LABEL_177;
          }

          goto LABEL_105;
        }

        if (v79 < v8)
        {
          goto LABEL_157;
        }

        sub_100009708(v19, v18);
        v52 = __DataStorage._bytes.getter();
        if (!v52)
        {
          goto LABEL_178;
        }

        v53 = v52;
        v54 = __DataStorage._offset.getter();
        if (__OFSUB__(v8, v54))
        {
          goto LABEL_163;
        }

        v34 = (v8 - v54 + v53);
        result = __DataStorage._length.getter();
        if (!v34)
        {
          goto LABEL_179;
        }

        goto LABEL_113;
      }

      v36 = *(v19 + 16);
      sub_100009708(v19, v18);
      v37 = __DataStorage._bytes.getter();
      if (v37)
      {
        v38 = __DataStorage._offset.getter();
        if (__OFSUB__(v36, v38))
        {
          goto LABEL_155;
        }

        v37 += v36 - v38;
      }

      __DataStorage._length.getter();
      v12 = v83;
      if (v13 != 2)
      {
        if (v13 == 1)
        {
          if (v79 < v8)
          {
            goto LABEL_161;
          }

          v39 = __DataStorage._bytes.getter();
          if (v39)
          {
            v40 = __DataStorage._offset.getter();
            if (__OFSUB__(v8, v40))
            {
              goto LABEL_171;
            }

            v39 += v8 - v40;
          }

          result = __DataStorage._length.getter();
          v41 = (v8 >> 32) - v8;
          if (result < v78)
          {
            v41 = result;
          }

          if (!v37)
          {
            goto LABEL_184;
          }

          if (!v39)
          {
            goto LABEL_183;
          }

LABEL_88:
          if (v37 == v39)
          {
            goto LABEL_148;
          }

          v44 = v41;
          result = v37;
LABEL_140:
          v51 = v39;
          goto LABEL_141;
        }

        *__s1 = v8;
        *&__s1[8] = v7;
        __s1[10] = BYTE2(v7);
        __s1[11] = BYTE3(v7);
        __s1[12] = BYTE4(v7);
        __s1[13] = BYTE5(v7);
        if (!v37)
        {
          goto LABEL_174;
        }

LABEL_144:
        v57 = __s1;
        v56 = v37;
        v55 = BYTE6(v7);
        goto LABEL_145;
      }

      v69 = v37;
      v58 = *(v8 + 16);
      v73 = *(v8 + 24);
      v39 = __DataStorage._bytes.getter();
      if (v39)
      {
        v59 = __DataStorage._offset.getter();
        if (__OFSUB__(v58, v59))
        {
          goto LABEL_169;
        }

        v39 += v58 - v59;
      }

      if (__OFSUB__(v73, v58))
      {
        goto LABEL_164;
      }

      v60 = __DataStorage._length.getter();
      if (v60 >= v73 - v58)
      {
        v61 = v73 - v58;
      }

      else
      {
        v61 = v60;
      }

      result = v69;
      if (!v69)
      {
        goto LABEL_182;
      }

      v3 = a2;
      if (!v39)
      {
        goto LABEL_181;
      }

LABEL_138:
      if (result == v39)
      {
LABEL_148:
        sub_1000092BC(v19, v18);
LABEL_149:
        v67 = v8;
        v68 = v7;
        goto LABEL_150;
      }

      v44 = v61;
      goto LABEL_140;
    }

    if (v20)
    {
      if (v19 > v19 >> 32)
      {
        goto LABEL_154;
      }

      sub_100009708(v19, v18);
      v37 = __DataStorage._bytes.getter();
      if (v37)
      {
        v42 = __DataStorage._offset.getter();
        if (__OFSUB__(v19, v42))
        {
          goto LABEL_156;
        }

        v37 += v19 - v42;
      }

      __DataStorage._length.getter();
      v12 = v83;
      if (v13 != 2)
      {
        if (v13 == 1)
        {
          if (v79 < v8)
          {
            goto LABEL_165;
          }

          v39 = __DataStorage._bytes.getter();
          if (v39)
          {
            v43 = __DataStorage._offset.getter();
            if (__OFSUB__(v8, v43))
            {
              goto LABEL_172;
            }

            v39 += v8 - v43;
          }

          result = __DataStorage._length.getter();
          v41 = (v8 >> 32) - v8;
          if (result < v78)
          {
            v41 = result;
          }

          if (!v37)
          {
            goto LABEL_186;
          }

          if (!v39)
          {
            goto LABEL_185;
          }

          goto LABEL_88;
        }

        *__s1 = v8;
        *&__s1[8] = v7;
        __s1[10] = BYTE2(v7);
        __s1[11] = BYTE3(v7);
        __s1[12] = BYTE4(v7);
        __s1[13] = BYTE5(v7);
        if (!v37)
        {
          goto LABEL_175;
        }

        goto LABEL_144;
      }

      v70 = v37;
      v62 = *(v8 + 16);
      v74 = *(v8 + 24);
      v39 = __DataStorage._bytes.getter();
      if (v39)
      {
        v63 = __DataStorage._offset.getter();
        if (__OFSUB__(v62, v63))
        {
          goto LABEL_170;
        }

        v39 += v62 - v63;
      }

      if (__OFSUB__(v74, v62))
      {
        goto LABEL_166;
      }

      v64 = __DataStorage._length.getter();
      if (v64 >= v74 - v62)
      {
        v61 = v74 - v62;
      }

      else
      {
        v61 = v64;
      }

      result = v70;
      if (!v70)
      {
        goto LABEL_188;
      }

      v3 = a2;
      if (!v39)
      {
        goto LABEL_187;
      }

      goto LABEL_138;
    }

    *__s1 = v19;
    *&__s1[8] = v18;
    __s1[10] = BYTE2(v18);
    __s1[11] = BYTE3(v18);
    __s1[12] = BYTE4(v18);
    __s1[13] = BYTE5(v18);
    if (!v13)
    {
      goto LABEL_98;
    }

    if (v13 != 1)
    {
      v49 = *(v8 + 16);
      v72 = *(v8 + 24);
      sub_100009708(v19, v18);
      v46 = __DataStorage._bytes.getter();
      if (v46)
      {
        v50 = __DataStorage._offset.getter();
        if (__OFSUB__(v49, v50))
        {
          goto LABEL_168;
        }

        v46 += v49 - v50;
      }

      v27 = __OFSUB__(v72, v49);
      v48 = v72 - v49;
      if (v27)
      {
        goto LABEL_159;
      }

      result = __DataStorage._length.getter();
      if (!v46)
      {
        goto LABEL_180;
      }

LABEL_105:
      if (result >= v48)
      {
        v44 = v48;
      }

      else
      {
        v44 = result;
      }

      result = __s1;
      v51 = v46;
LABEL_141:
      v65 = memcmp(result, v51, v44);
      sub_1000092BC(v19, v18);
      v5 = v82;
      v12 = v83;
      if (!v65)
      {
        goto LABEL_149;
      }

      goto LABEL_19;
    }

    if (v79 < v8)
    {
      goto LABEL_158;
    }

    sub_100009708(v19, v18);
    v31 = __DataStorage._bytes.getter();
    if (!v31)
    {
      break;
    }

    v32 = v31;
    v33 = __DataStorage._offset.getter();
    if (__OFSUB__(v8, v33))
    {
      goto LABEL_162;
    }

    v34 = (v8 - v33 + v32);
    result = __DataStorage._length.getter();
    if (!v34)
    {
      goto LABEL_176;
    }

LABEL_113:
    if (result >= v78)
    {
      v55 = (v8 >> 32) - v8;
    }

    else
    {
      v55 = result;
    }

    v56 = __s1;
    v57 = v34;
LABEL_145:
    v66 = memcmp(v56, v57, v55);
    sub_1000092BC(v19, v18);
    v5 = v82;
    if (!v66)
    {
      goto LABEL_149;
    }

LABEL_19:
    v11 = (v11 + 1) & v12;
    if (((*(v5 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
    {
      goto LABEL_4;
    }
  }

  __DataStorage._length.getter();
  __break(1u);
LABEL_174:
  __break(1u);
LABEL_175:
  __break(1u);
LABEL_176:
  __break(1u);
LABEL_177:
  __break(1u);
LABEL_178:
  result = __DataStorage._length.getter();
LABEL_179:
  __break(1u);
LABEL_180:
  __break(1u);
LABEL_181:
  __break(1u);
LABEL_182:
  __break(1u);
LABEL_183:
  __break(1u);
LABEL_184:
  __break(1u);
LABEL_185:
  __break(1u);
LABEL_186:
  __break(1u);
LABEL_187:
  __break(1u);
LABEL_188:
  __break(1u);
  return result;
}

void *sub_1000BAC98@<X0>(void *a1@<X0>, void *(*a2)(uint64_t *__return_ptr, void)@<X1>, void *a3@<X8>)
{
  result = a2(&v6, *a1);
  if (!v3)
  {
    *a3 = v6;
  }

  return result;
}

uint64_t sub_1000BACE0(uint64_t a1, uint64_t *a2, int *a3)
{
  v5 = *a2;
  v8 = (a3 + *a3);
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_1000104D4;

  return v8(a1, v5);
}

Swift::Int sub_1000BAEA8()
{
  v0 = sub_10010DD18(&off_1001F41A0);
  v7 = v0;
  v1 = [objc_opt_self() standardUserDefaults];
  v2._object = 0x80000001001B2870;
  v2._countAndFlagsBits = 0xD00000000000001DLL;
  v3 = NSUserDefaults.internalString(forKey:)(v2);

  if (v3.value._object)
  {

    v4 = (v3.value._object >> 56) & 0xF;
    if ((v3.value._object & 0x2000000000000000) == 0)
    {
      v4 = v3.value._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
    }

    if (v4)
    {
      sub_100102584(&v6, 2);
      return v7;
    }
  }

  return v0;
}

void *sub_1000BAF70(uint64_t a1, uint64_t a2)
{
  v88 = a2;
  v84 = a1;
  v79 = type metadata accessor for CredentialPresentmentElementRequestInfo.IntentToStore();
  v2 = *(v79 - 8);
  v3 = __chkstk_darwin(v79);
  v78 = (&v67 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v3);
  v77 = &v67 - v5;
  v80 = type metadata accessor for CredentialPresentmentElementRequestInfo();
  v83 = *(v80 - 8);
  __chkstk_darwin(v80);
  v76 = &v67 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Logger();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v67 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  defaultLogger()();
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&_mh_execute_header, v11, v12, "getProposalElements: no payloadProcessor provided; returning all requested elements", v13, 2u);
  }

  (*(v8 + 8))(v10, v7);
  v14 = sub_10010D054(_swiftEmptyArrayStorage);
  v15 = *(v84 + 64);
  v82 = v84 + 64;
  v16 = 1 << *(v84 + 32);
  v17 = -1;
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  v18 = v17 & v15;
  v81 = (v16 + 63) >> 6;
  v74 = v83 + 8;
  v75 = v83 + 16;
  v72 = (v2 + 88);
  v73 = (v2 + 32);
  v71 = enum case for CredentialPresentmentElementRequestInfo.IntentToStore.mayStore(_:);
  v70 = enum case for CredentialPresentmentElementRequestInfo.IntentToStore.willNotStore(_:);
  v68 = enum case for CredentialPresentmentElementRequestInfo.IntentToStore.displayOnly(_:);
  v67 = (v2 + 8);
  v69 = (v2 + 96);

  v19 = 0;
  v20 = 0;
LABEL_7:
  if (v18)
  {
    goto LABEL_6;
  }

  while (1)
  {
    v25 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      break;
    }

    if (v25 >= v81)
    {

      sub_10000ED48(v19, 0);
      return v14;
    }

    v18 = *(v82 + 8 * v25);
    ++v20;
    if (v18)
    {
      v20 = v25;
LABEL_6:
      v21 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
      v22 = v21 | (v20 << 6);
      v23 = *(*(v84 + 56) + 8 * v22);
      v24 = *(v23 + 16);
      if (v24)
      {
        v26 = (*(v84 + 48) + 16 * v22);
        v27 = v26[1];
        v91 = *v26;

        v28 = 0;
        v29 = (v23 + 40);
        v86 = v23;
        v87 = v27;
        v85 = v24;
        while (1)
        {
          if (v28 >= *(v23 + 16))
          {
            goto LABEL_44;
          }

          v89 = v29;
          v90 = v28;
          v30 = *(v29 - 1);
          v31 = *v29;

          v32 = DocumentRequest.namespaces.getter();
          if (*(v32 + 16) && (v33 = sub_100099644(v91, v27), (v34 & 1) != 0) && (v35 = *(*(v32 + 56) + 8 * v33), , , *(v35 + 16)) && (v36 = sub_100099644(v30, v31), (v37 & 1) != 0))
          {
            v38 = v83;
            v39 = v76;
            (*(v83 + 16))(v76, *(v35 + 56) + *(v83 + 72) * v36, v80);

            v40 = v77;
            CredentialPresentmentElementRequestInfo.intentToStore.getter();
            (*(v38 + 8))(v39, v80);
            v41 = v78;
            v42 = v40;
            v43 = v79;
            (*v73)(v78, v42, v79);
            v44 = (*v72)(v41, v43);
            if (v44 == v71)
            {
              (*v69)(v41, v43);
              v45 = *v41;
              v46 = 1;
              goto LABEL_23;
            }

            if (v44 == v70)
            {
              v46 = 2;
              goto LABEL_22;
            }

            if (v44 == v68)
            {
              v46 = 3;
              goto LABEL_22;
            }

            (*v67)(v41, v43);
          }

          else
          {
          }

          v46 = 0;
LABEL_22:
          v45 = NSNotFound.getter();
LABEL_23:
          v47 = objc_allocWithZone(DCPresentmentRequestedElement);
          v48 = String._bridgeToObjectiveC()();

          v49 = [v47 initWithElementIdentifier:v48 intentToRetain:v46 retentionPeriod:v45];

          sub_10000ED48(v19, 0);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v92 = v14;
          v27 = v87;
          v51 = sub_100099644(v91, v87);
          v53 = v14[2];
          v54 = (v52 & 1) == 0;
          v55 = __OFADD__(v53, v54);
          v56 = v53 + v54;
          if (v55)
          {
            goto LABEL_45;
          }

          v57 = v52;
          if (v14[3] < v56)
          {
            sub_100108A98(v56, isUniquelyReferenced_nonNull_native);
            v51 = sub_100099644(v91, v27);
            if ((v57 & 1) != (v58 & 1))
            {
              goto LABEL_47;
            }

LABEL_28:
            v14 = v92;
            if ((v57 & 1) == 0)
            {
              goto LABEL_29;
            }

            goto LABEL_31;
          }

          if (isUniquelyReferenced_nonNull_native)
          {
            goto LABEL_28;
          }

          v65 = v51;
          sub_100109EF8();
          v51 = v65;
          v14 = v92;
          if ((v57 & 1) == 0)
          {
LABEL_29:
            v14[(v51 >> 6) + 8] |= 1 << v51;
            v59 = (v14[6] + 16 * v51);
            *v59 = v91;
            v59[1] = v27;
            *(v14[7] + 8 * v51) = _swiftEmptyArrayStorage;
            v60 = v14[2];
            v55 = __OFADD__(v60, 1);
            v61 = v60 + 1;
            if (v55)
            {
              goto LABEL_46;
            }

            v14[2] = v61;
            v62 = v51;

            v51 = v62;
          }

LABEL_31:
          v63 = (v14[7] + 8 * v51);
          v64 = v49;
          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          if (*((*v63 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v63 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          v28 = v90 + 1;
          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

          v29 = v89 + 2;
          v19 = sub_1000BDCF8;
          v23 = v86;
          if (v85 == v28)
          {

            v19 = sub_1000BDCF8;
            goto LABEL_7;
          }
        }
      }

      goto LABEL_7;
    }
  }

  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_1000BB74C()
{

  v1 = *(v0 + 48);
  if (v1 >> 60 != 15)
  {
    sub_1000092BC(*(v0 + 40), v1);
  }

  sub_100005090((v0 + 88));

  return _swift_deallocObject(v0, 136, 7);
}

uint64_t sub_1000BB7BC(uint64_t a1, uint64_t a2)
{
  v5 = v2[3];
  v12 = v2[2];
  v6 = v2[4];
  v7 = v2[5];
  v8 = v2[6];
  v9 = v2[7];
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = sub_1000105C8;

  return sub_1000B3E10(a1, a2, v12, v5, v6, v7, v8, v9);
}

uint64_t sub_1000BB8CC()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000BB904(uint64_t a1, uint64_t *a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1000104D4;

  return sub_1000BACE0(a1, a2, v6);
}

uint64_t sub_1000BB9CC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1000BBA4C()
{

  v1 = *(v0 + 56);
  if (v1 >> 60 != 15)
  {
    sub_1000092BC(*(v0 + 48), v1);
  }

  return _swift_deallocObject(v0, 104, 7);
}

uint64_t sub_1000BBB18(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1000BBB88(char *a1)
{
  v113 = type metadata accessor for DIPError.Code();
  v106 = *(v113 - 8);
  __chkstk_darwin(v113);
  v108 = &v92 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_100004E70(&qword_100200510, qword_1001AB070);
  v4 = __chkstk_darwin(v3 - 8);
  v100 = &v92 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v101 = &v92 - v6;
  v105 = type metadata accessor for CredentialKeyType();
  v103 = *(v105 - 8);
  v7 = __chkstk_darwin(v105);
  v102 = &v92 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v95 = &v92 - v10;
  __chkstk_darwin(v9);
  v104 = &v92 - v11;
  v12 = sub_100004E70(&qword_1002024A8, &unk_1001ACFA0);
  __chkstk_darwin(v12 - 8);
  v14 = &v92 - v13;
  v15 = type metadata accessor for CredentialKeyUsage();
  v16 = *(v15 - 8);
  v17 = __chkstk_darwin(v15);
  v19 = &v92 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v21 = &v92 - v20;
  v107 = a1;
  v22 = [a1 usage];
  if (v22)
  {
    v23 = v22;
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    CredentialKeyUsage.init(rawValue:)();
    if ((*(v16 + 48))(v14, 1, v15) != 1)
    {
      (*(v16 + 32))(v21, v14, v15);
      v24 = *(v16 + 104);
      v25 = (v16 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
      goto LABEL_6;
    }

    sub_10000A0D4(v14, &qword_1002024A8, &unk_1001ACFA0);
  }

  v24 = *(v16 + 104);
  v25 = (v16 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v24(v21, enum case for CredentialKeyUsage.invalid(_:), v15);
LABEL_6:
  v96 = enum case for CredentialKeyUsage.presentment(_:);
  v97 = v25;
  v98 = v24;
  (v24)(v19);
  sub_1000BD16C(&qword_1002024B0, &type metadata accessor for CredentialKeyUsage, &protocol conformance descriptor for CredentialKeyUsage);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  if (v111 == v109 && v112 == v110)
  {
    v26 = *(v16 + 8);
    v26(v19, v15);
    v26(v21, v15);
  }

  else
  {
    v27 = _stringCompareWithSmolCheck(_:_:expecting:)();
    v28 = *(v16 + 8);
    v28(v19, v15);
    v28(v21, v15);

    if ((v27 & 1) == 0)
    {
      v107 = "ad has an empty document type";
      v51 = *(v106 + 104);
      v52 = v113;
      v51(v108, enum case for DIPError.Code.badLogic(_:), v113);
      v106 = sub_10002688C(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_1000BD16C(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
      swift_allocError();
LABEL_24:
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      swift_willThrow();
LABEL_30:
      v51(v108, enum case for DIPError.Code.internalError(_:), v52);
LABEL_31:
      swift_errorRetain();
      v67 = sub_10002688C(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_1000BD16C(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
      swift_allocError();
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      swift_willThrow();

      return v67;
    }
  }

  v29 = v107;
  v30 = [v107 identifier];
  v31 = v113;
  if (!v30)
  {
    v107 = "edKey:credentialKeyManager:)";
    v51 = *(v106 + 104);
    v51(v108, enum case for DIPError.Code.idcsInvalidPresentmentKey(_:), v113);
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1000BD16C(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
LABEL_23:
    v52 = v113;
    goto LABEL_24;
  }

  v32 = v30;
  v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v35 = v34;

  v36 = [v29 publicKeyIdentifier];
  if (!v36)
  {

    v107 = "have an identifier";
    v51 = *(v106 + 104);
    v51(v108, enum case for DIPError.Code.idcsInvalidPresentmentKey(_:), v31);
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1000BD16C(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    goto LABEL_23;
  }

  v37 = v36;
  v93 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v94 = v38;

  v39 = [v29 keyType];
  if (!v39)
  {
LABEL_15:
    v42 = v103;
    v43 = v105;
    (*(v103 + 104))(v104, enum case for CredentialKeyType.invalid(_:), v105);
    goto LABEL_16;
  }

  v40 = v39;
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  v41 = v101;
  CredentialKeyType.init(rawValue:)();
  v42 = v103;
  v43 = v105;
  if ((*(v103 + 48))(v41, 1, v105) == 1)
  {
    sub_10000A0D4(v41, &qword_100200510, qword_1001AB070);
    goto LABEL_15;
  }

  v53 = v41;
  v54 = v104;
  (*(v42 + 32))(v104, v53, v43);
  v55 = (*(v42 + 88))(v54, v43);
  v56 = v55;
  if (v55 != enum case for CredentialKeyType.legacySE(_:))
  {
    if (v55 != enum case for CredentialKeyType.ses(_:))
    {
      if (v55 == enum case for CredentialKeyType.externalSE(_:))
      {
        type metadata accessor for ExternalSEPresentmentKey(0);
        v84 = swift_allocObject();
        v85 = v43;
        v67 = v84;
        *(v84 + OBJC_IVAR____TtC7idcredd24ExternalSEPresentmentKey_publicKey) = xmmword_1001AB540;
        v86 = (v84 + OBJC_IVAR____TtC7idcredd24ExternalSEPresentmentKey_publicKeyIdentifier);
        v87 = v94;
        *v86 = v93;
        v86[1] = v87;
        (*(v42 + 104))(v84 + OBJC_IVAR____TtC7idcredd13CredentialKey_type, v56, v85);
        v98(v67 + OBJC_IVAR____TtC7idcredd13CredentialKey_usage, v96, v15);
        v88 = OBJC_IVAR____TtC7idcredd13CredentialKey_lock;
        sub_100004E70(&qword_1002010A0, &unk_1001AB530);
        v89 = swift_allocObject();
        *(v89 + 16) = 0;
        *(v67 + v88) = v89;
        *(v67 + 16) = v33;
        *(v67 + 24) = v35;
        return v67;
      }

LABEL_16:

      v111 = 0;
      v112 = 0xE000000000000000;
      _StringGuts.grow(_:)(46);
      v44._countAndFlagsBits = 0xD000000000000011;
      v44._object = 0x80000001001B80C0;
      String.append(_:)(v44);
      v45 = [v107 keyType];
      v46 = v113;
      if (v45)
      {
        v47 = v45;
        static String._unconditionallyBridgeFromObjectiveC(_:)();

        v43 = v105;
        v48 = v100;
        CredentialKeyType.init(rawValue:)();
        if ((*(v42 + 48))(v48, 1, v43) != 1)
        {
          v49 = v108;
          v50 = v102;
          (*(v42 + 32))(v102, v48, v43);
          goto LABEL_29;
        }

        sub_10000A0D4(v48, &qword_100200510, qword_1001AB070);
      }

      v49 = v108;
      v50 = v102;
      (*(v42 + 104))(v102, enum case for CredentialKeyType.invalid(_:), v43);
LABEL_29:
      _print_unlocked<A, B>(_:_:)();
      v107 = *(v42 + 8);
      (v107)(v50, v43);
      v75._countAndFlagsBits = 0xD00000000000001BLL;
      v75._object = 0x80000001001B80E0;
      String.append(_:)(v75);
      v102 = v112;
      v103 = v111;
      v106 = *(v106 + 104);
      (v106)(v49, enum case for DIPError.Code.idcsInvalidPresentmentKey(_:), v46);
      sub_10002688C(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_1000BD16C(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
      swift_allocError();
      v52 = v113;
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      swift_willThrow();
      sub_1000092BC(v93, v94);
      (v107)(v104, v105);
      v51 = v106;
      goto LABEL_30;
    }

    v77 = [v107 keyBlob];
    if (v77)
    {
      v78 = v77;
      v79 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v81 = v80;

      v82 = v99;
      v83 = sub_10002BD74(v33, v35, v79, v81, 0, 0xF000000000000000);
      if (!v82)
      {
        v67 = v83;
        sub_1000092BC(v93, v94);
        sub_1000092BC(v79, v81);

        return v67;
      }

      sub_1000092BC(v93, v94);

      sub_1000092BC(v79, v81);
      (*(v106 + 104))(v108, enum case for DIPError.Code.internalError(_:), v113);
      goto LABEL_31;
    }

    v107 = " for stored presentment key";
    v90 = *(v106 + 104);
    v91 = v113;
    v90(v108, enum case for DIPError.Code.idcsInvalidPresentmentKey(_:), v113);
    v106 = sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1000BD16C(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
LABEL_41:
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    sub_1000092BC(v93, v94);
    v90(v108, enum case for DIPError.Code.internalError(_:), v91);
    goto LABEL_31;
  }

  v57 = v107;
  v58 = [v107 publicKey];
  if (!v58)
  {

    v107 = "nt key does not have a key blob";
    v90 = *(v106 + 104);
    v91 = v113;
    v90(v108, enum case for DIPError.Code.idcsInvalidPresentmentKey(_:), v113);
    v106 = sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1000BD16C(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    goto LABEL_41;
  }

  v113 = v35;
  v59 = v43;
  v60 = v58;
  v61 = v42;
  v108 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v63 = v62;

  v64 = [v57 keySlot];
  v65 = *(v42 + 104);
  v66 = v95;
  v65(v95, v56, v59);
  type metadata accessor for LegacySEPresentmentKey(0);
  v67 = swift_allocObject();
  v68 = v67 + OBJC_IVAR____TtC7idcredd22LegacySEPresentmentKey_keySlot;
  *v68 = v64;
  *(v68 + 8) = 0;
  v69 = (v67 + OBJC_IVAR____TtC7idcredd22LegacySEPresentmentKey_publicKeyIdentifier);
  v70 = v94;
  *v69 = v93;
  v69[1] = v70;
  v71 = (v67 + OBJC_IVAR____TtC7idcredd22LegacySEPresentmentKey_publicKey);
  *v71 = v108;
  v71[1] = v63;
  (*(v61 + 16))(v67 + OBJC_IVAR____TtC7idcredd13CredentialKey_type, v66, v59);
  v98(v67 + OBJC_IVAR____TtC7idcredd13CredentialKey_usage, v96, v15);
  v72 = OBJC_IVAR____TtC7idcredd13CredentialKey_lock;
  sub_100004E70(&qword_1002010A0, &unk_1001AB530);
  v73 = swift_allocObject();
  *(v73 + 16) = 0;
  *(v67 + v72) = v73;
  v74 = v113;
  *(v67 + 16) = v33;
  *(v67 + 24) = v74;
  (*(v61 + 8))(v66, v59);
  return v67;
}

uint64_t sub_1000BCEF0()
{

  return _swift_deallocObject(v0, 24, 7);
}

void *sub_1000BCF28@<X0>(void *a1@<X8>)
{
  result = sub_100052798(*(v1 + 16));
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

void *sub_1000BCF60@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = (*(v2 + 16))(&v6, *a1);
  if (!v3)
  {
    *a2 = v6;
  }

  return result;
}

uint64_t sub_1000BCFA8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1000BD010(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100004E70(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

double sub_1000BD0BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2)
  {
  }

  return result;
}

void sub_1000BD10C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2)
  {
  }
}

uint64_t sub_1000BD16C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1000BD1BC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PresentmentProposal(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_1000BD220()
{
  result = qword_100202508;
  if (!qword_100202508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100202508);
  }

  return result;
}

uint64_t sub_1000BD288(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = sub_100004E70(&qword_100201560, &unk_1001AB910);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 32);

    return v10(v11, a2, v9);
  }
}

void *sub_1000BD364(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *result = a2;
  }

  else
  {
    v7 = sub_100004E70(&qword_100201560, &unk_1001AB910);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_1000BD414(uint64_t a1)
{
  sub_1000BD56C(319, &qword_100202578, &qword_100202580, DCPresentmentProposalReaderMetadata_ptr);
  if (v1 <= 0x3F)
  {
    sub_1000BD56C(319, &qword_100202588, &qword_100202590, DCPresentmentProposalReaderAnalytics_ptr);
    if (v2 <= 0x3F)
    {
      sub_1000BA2FC(319, &qword_100202598, type metadata accessor for SecCertificate);
      if (v3 <= 0x3F)
      {
        sub_1000BDCA0(319, &qword_100201378, &type metadata for CertificateKnownIssuer, &type metadata accessor for Optional);
        if (v4 <= 0x3F)
        {
          sub_1000BA2FC(319, &unk_1002025A0, &type metadata accessor for DIPError);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1000BD56C(uint64_t a1, unint64_t *a2, unint64_t *a3, void *a4)
{
  if (!*a2)
  {
    sub_10005684C(255, a3, a4);
    v5 = type metadata accessor for Optional();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_1000BD5D8(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_100004E70(&qword_100202488, &qword_1001ACF78);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 52);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1000BD6A8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_100004E70(&qword_100202488, &qword_1001ACF78);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 52);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_1000BD758(uint64_t a1)
{
  type metadata accessor for DCCredentialPayloadProtectionType(319);
  if (v1 <= 0x3F)
  {
    sub_1000BDCA0(319, &qword_100201A40, &type metadata for Data, &type metadata accessor for Optional);
    if (v2 <= 0x3F)
    {
      sub_1000BDC4C(319, &qword_100202648, &qword_1002019B8, &qword_1001AD020);
      if (v3 <= 0x3F)
      {
        sub_1000BDCA0(319, &qword_100202650, &type metadata for Data, &type metadata accessor for Array);
        if (v4 <= 0x3F)
        {
          sub_1000BD8E8();
          if (v5 <= 0x3F)
          {
            type metadata accessor for DCCredentialPresentmentAuthPolicy(319);
            if (v6 <= 0x3F)
            {
              sub_1000BA2FC(319, &unk_100202660, type metadata accessor for PayloadRevocationListMetadata);
              if (v7 <= 0x3F)
              {
                swift_cvw_initStructMetadataWithLayoutString();
              }
            }
          }
        }
      }
    }
  }
}

unint64_t sub_1000BD8E8()
{
  result = qword_100202658;
  if (!qword_100202658)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_100202658);
  }

  return result;
}

uint64_t sub_1000BD95C(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_100004E70(&qword_100202488, &qword_1001ACF78);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 48);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1000BDA2C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_100004E70(&qword_100202488, &qword_1001ACF78);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 48);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_1000BDADC(uint64_t a1)
{
  sub_1000BD8E8();
  if (v1 <= 0x3F)
  {
    type metadata accessor for DCCredentialPresentmentAuthPolicy(319);
    if (v2 <= 0x3F)
    {
      sub_1000BDC4C(319, &qword_100202718, &qword_100202720, &unk_1001AE890);
      if (v3 <= 0x3F)
      {
        sub_1000BDCA0(319, &qword_100202650, &type metadata for Data, &type metadata accessor for Array);
        if (v4 <= 0x3F)
        {
          sub_1000BDCA0(319, &unk_100202728, &type metadata for String, &type metadata accessor for Optional);
          if (v5 <= 0x3F)
          {
            sub_1000BA2FC(319, &unk_100202660, type metadata accessor for PayloadRevocationListMetadata);
            if (v6 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_1000BDC4C(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    sub_100021ED0(a3, a4);
    v5 = type metadata accessor for Optional();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1000BDCA0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_1000BDD04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_100004E70(&qword_100201CD0, &qword_1001AC550);
  __chkstk_darwin(v8 - 8);
  v10 = v22 - v9;
  sub_100046360(a3, v22 - v9, &qword_100201CD0, &qword_1001AC550);
  v11 = type metadata accessor for TaskPriority();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_10000A0D4(v10, &qword_100201CD0, &qword_1001AC550);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = dispatch thunk of Actor.unownedExecutor.getter();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = String.utf8CString.getter() + 32;

      if (v17 | v15)
      {
        v23[0] = 0;
        v23[1] = 0;
        v19 = v23;
        v23[2] = v15;
        v23[3] = v17;
      }

      else
      {
        v19 = 0;
      }

      v22[1] = 7;
      v22[2] = v19;
      v22[3] = v18;
      v20 = swift_task_create();

      sub_10000A0D4(a3, &qword_100201CD0, &qword_1001AC550);

      return v20;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_10000A0D4(a3, &qword_100201CD0, &qword_1001AC550);
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_1000BDFA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_100004E70(&qword_100201CD0, &qword_1001AC550);
  __chkstk_darwin(v8 - 8);
  v10 = v22 - v9;
  sub_100046360(a3, v22 - v9, &qword_100201CD0, &qword_1001AC550);
  v11 = type metadata accessor for TaskPriority();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_10000A0D4(v10, &qword_100201CD0, &qword_1001AC550);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = dispatch thunk of Actor.unownedExecutor.getter();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = String.utf8CString.getter() + 32;

      if (v17 | v15)
      {
        v23[0] = 0;
        v23[1] = 0;
        v19 = v23;
        v23[2] = v15;
        v23[3] = v17;
      }

      else
      {
        v19 = 0;
      }

      v22[1] = 7;
      v22[2] = v19;
      v22[3] = v18;
      v20 = swift_task_create();

      sub_10000A0D4(a3, &qword_100201CD0, &qword_1001AC550);

      return v20;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_10000A0D4(a3, &qword_100201CD0, &qword_1001AC550);
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

void *sub_1000BE254(uint64_t a1, void *a2, void *a3)
{
  v341 = type metadata accessor for ISO18013IssuerSignedItem();
  v6 = *(v341 - 8);
  v7 = __chkstk_darwin(v341);
  v326 = &v289 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v325 = &v289 - v10;
  v11 = __chkstk_darwin(v9);
  v294 = &v289 - v12;
  __chkstk_darwin(v11);
  v332 = &v289 - v13;
  v347 = sub_100004E70(&qword_1002004D8, &qword_1001ACBF0);
  v14 = *(v347 - 8);
  v15 = __chkstk_darwin(v347);
  v339 = &v289 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v15);
  v309 = &v289 - v18;
  v19 = __chkstk_darwin(v17);
  v324 = &v289 - v20;
  v21 = __chkstk_darwin(v19);
  v343 = &v289 - v22;
  v23 = __chkstk_darwin(v21);
  v310 = &v289 - v24;
  v25 = __chkstk_darwin(v23);
  v330 = &v289 - v26;
  v27 = __chkstk_darwin(v25);
  v305 = &v289 - v28;
  __chkstk_darwin(v27);
  v348 = &v289 - v29;
  v313 = type metadata accessor for Logger();
  v30 = __chkstk_darwin(v313);
  v298 = &v289 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30);
  v318 = &v289 - v33;
  v34 = a1 + 56;
  v35 = 1 << *(a1 + 32);
  if (v35 < 64)
  {
    v36 = ~(-1 << v35);
  }

  else
  {
    v36 = -1;
  }

  v37 = v36 & *(a1 + 56);
  v297 = (v35 + 63) >> 6;
  v353 = v14 + 16;
  v340 = (v6 + 8);
  v338 = (v14 + 32);
  v351 = (v14 + 8);
  v352 = v14;
  v312 = (v32 + 8);
  v345 = a2;

  v344 = a3;

  v296 = a1;

  v311 = 0;
  v299 = 0;
  v38 = 0;
  *&v39 = 136315394;
  v293 = v39;
  *&v39 = 136315650;
  v304 = v39;
  v342 = xmmword_1001AA160;
  v290 = a1 + 56;
  while (1)
  {
    if (v37)
    {
      v40 = v38;
      v41 = v347;
    }

    else
    {
      v41 = v347;
      do
      {
        v40 = v38 + 1;
        if (__OFADD__(v38, 1))
        {
          goto LABEL_225;
        }

        if (v40 >= v297)
        {

          sub_10000ED48(v311, 0);
          sub_10000ED48(v299, 0);
          return v345;
        }

        v37 = *(v34 + 8 * v40);
        ++v38;
      }

      while (!v37);
    }

    v292 = (v37 - 1) & v37;
    v291 = v40;
    v42 = (*(v296 + 48) + 48 * (__clz(__rbit64(v37)) | (v40 << 6)));
    v43 = v42[1];
    v295 = v42[2];
    v45 = v42[3];
    v44 = v42[4];
    v46 = v42[5];
    v47 = *(v44 + 64);
    v333 = v44 + 64;
    v48 = 1 << *(v44 + 32);
    v49 = v48 < 64 ? ~(-1 << v48) : -1;
    v50 = v49 & v47;
    v303 = (v48 + 63) >> 6;
    v336 = v44;
    swift_bridgeObjectRetain_n();
    v315 = v43;

    v334 = v46;

    v51 = 0;
    v322 = v45;
LABEL_16:
    if (v50)
    {
      break;
    }

    v53 = v336;
    while (1)
    {
      v52 = v51 + 1;
      if (__OFADD__(v51, 1))
      {
        goto LABEL_221;
      }

      if (v52 >= v303)
      {
        break;
      }

      v50 = *(v333 + 8 * v52);
      ++v51;
      if (v50)
      {
        goto LABEL_22;
      }
    }

    v38 = v291;
    v34 = v290;
    v37 = v292;
  }

  v52 = v51;
  v53 = v336;
LABEL_22:
  v300 = v52;
  v54 = __clz(__rbit64(v50)) | (v52 << 6);
  v55 = *(v53 + 56);
  v56 = (*(v53 + 48) + 16 * v54);
  v57 = v56[1];
  v327 = *v56;
  v317 = *(v55 + 8 * v54);
  v331 = v57;
  if (v344)
  {
    v58 = v344;
  }

  else
  {

    v58 = sub_10010D02C(_swiftEmptyArrayStorage);
  }

  v301 = (v50 - 1) & v50;
  v319 = v58;
  v59 = *(v58 + 64);
  v321 = v58 + 64;
  v60 = 1 << *(v58 + 32);
  if (v60 < 64)
  {
    v61 = ~(-1 << v60);
  }

  else
  {
    v61 = -1;
  }

  v62 = v61 & v59;
  v320 = (v60 + 63) >> 6;

  v63 = 0;
  v64 = v334;
  while (v62)
  {
    v65 = v63;
LABEL_36:
    v66 = *(v319 + 48);
    v323 = v65;
    v67 = (v66 + ((v65 << 10) | (16 * __clz(__rbit64(v62)))));
    v68 = *v67;
    v69 = v67[1];
    if (*(v64 + 16))
    {

      v70 = sub_100099644(v68, v69);
      v71 = &_swiftEmptySetSingleton;
      if ((v72 & 1) == 0)
      {
        goto LABEL_41;
      }

      v71 = *(*(v334 + 56) + 8 * v70);
    }

    else
    {
      v71 = &_swiftEmptySetSingleton;
    }

LABEL_41:
    v346 = v71;
    v73 = v344;
    v337 = v69;
    v354 = v68;
    if (!v344)
    {
      goto LABEL_63;
    }

    if (!v344[2] || (v74 = sub_100099644(v68, v69), v73 = v344, (v75 & 1) == 0) || (v76 = *(v344[7] + 8 * v74), , v73 = v344, !v76))
    {
      v93 = v62;
      v94 = v73;
      sub_100099644(v68, v69);
      if (v95)
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v356[0] = v73;
        if (!isUniquelyReferenced_nonNull_native)
        {
          sub_100109A9C();
          v94 = v356[0];
        }

        sub_10000C01C();
      }

      v73 = v94;
      v62 = v93;
      goto LABEL_63;
    }

    v328 = v62;
    v77 = *(v76 + 16);

    if (v77)
    {
      v78 = 0;
      v79 = v76 + 40;
      v335 = v77;
      v314 = v77 - 1;
      v329 = _swiftEmptyArrayStorage;
      v80 = v346;
      v350 = v76;
      v316 = v76 + 40;
LABEL_47:
      v81 = (v79 + 16 * v78);
      v82 = v78;
      while (v82 < *(v76 + 16))
      {
        v83 = *(v81 - 1);
        v84 = *v81;
        v78 = v82 + 1;
        v359 = v80;
        sub_100004E70(&qword_1002004F8, &qword_1001AAFA8);
        v85 = swift_allocObject();
        *(v85 + 16) = v342;
        v349 = v83;
        *(v85 + 32) = v83;
        *(v85 + 40) = v84;
        v358 = v85;
        swift_bridgeObjectRetain_n();
        v355 = sub_100004E70(&qword_100201D00, &unk_1001ACF10);
        sub_100004E70(&qword_100201580, &qword_1001AB980);
        sub_100055454(&qword_100202440, &qword_100201D00, &unk_1001ACF10, &protocol conformance descriptor for Set<A>);
        sub_100055454(&qword_100202448, &qword_100201580, &qword_1001AB980, &protocol conformance descriptor for [A]);
        LOBYTE(v83) = Collection<>.contains<A>(_:)();

        if ((v83 & 1) == 0)
        {
          v355 = v84;
          v86 = v329;
          v87 = swift_isUniquelyReferenced_nonNull_native();
          v356[0] = v86;
          v69 = v337;
          v68 = v354;
          if ((v87 & 1) == 0)
          {
            sub_10010A6B4(0, *(v86 + 16) + 1, 1);
            v86 = v356[0];
          }

          v80 = v346;
          v88 = v349;
          v76 = v350;
          v89 = v355;
          v91 = *(v86 + 16);
          v90 = *(v86 + 24);
          if (v91 >= v90 >> 1)
          {
            sub_10010A6B4((v90 > 1), v91 + 1, 1);
            v89 = v355;
            v86 = v356[0];
            v88 = v349;
            v80 = v346;
          }

          *(v86 + 16) = v91 + 1;
          v329 = v86;
          v92 = v86 + 16 * v91;
          *(v92 + 32) = v88;
          *(v92 + 40) = v89;
          v79 = v316;
          if (v314 != v82)
          {
            goto LABEL_47;
          }

          goto LABEL_110;
        }

        v81 += 2;
        ++v82;
        v80 = v346;
        v69 = v337;
        v68 = v354;
        v76 = v350;
        if (v335 == v78)
        {
          goto LABEL_110;
        }
      }

      goto LABEL_222;
    }

    v329 = _swiftEmptyArrayStorage;
LABEL_110:

    v158 = v344;
    v159 = swift_isUniquelyReferenced_nonNull_native();
    v356[0] = v158;
    v161 = sub_100099644(v68, v69);
    v162 = *(v158 + 16);
    v163 = (v160 & 1) == 0;
    v164 = v162 + v163;
    if (__OFADD__(v162, v163))
    {
      goto LABEL_229;
    }

    v165 = v160;
    if (*(v158 + 24) < v164)
    {
      sub_100108404(v164, v159);
      v166 = sub_100099644(v68, v69);
      v62 = v328;
      if ((v165 & 1) != (v167 & 1))
      {
        goto LABEL_234;
      }

      v161 = v166;

      goto LABEL_114;
    }

    v62 = v328;
    v168 = v329;
    if ((v159 & 1) == 0)
    {
      sub_100109A9C();
LABEL_114:
      v168 = v329;
    }

    v169 = v356[0];
    if (v165)
    {
      *(*(v356[0] + 56) + 8 * v161) = v168;
      v73 = v169;
    }

    else
    {
      *(v356[0] + 8 * (v161 >> 6) + 64) |= 1 << v161;
      v170 = (v169[6] + 16 * v161);
      *v170 = v68;
      v170[1] = v69;
      *(v169[7] + 8 * v161) = v168;
      v171 = v169[2];
      v172 = __OFADD__(v171, 1);
      v173 = v171 + 1;
      if (v172)
      {
        goto LABEL_232;
      }

      v169[2] = v173;
      v73 = v169;
    }

LABEL_63:
    v344 = v73;
    v97 = v345;
    if (!v345)
    {
      v345 = 0;
LABEL_83:
      v116 = v318;
      goto LABEL_84;
    }

    if (!v345[2] || (sub_100099644(v68, v69), (v98 & 1) == 0) || (v99 = ) == 0)
    {
      sub_100099644(v68, v69);
      if (v114)
      {
        v115 = swift_isUniquelyReferenced_nonNull_native();
        v356[0] = v97;
        if (!v115)
        {
          sub_100109AB0();
          v97 = v356[0];
        }

        v345 = v97;
        sub_10000C01C();
      }

      goto LABEL_83;
    }

    v328 = v62;
    v335 = *(v99 + 16);
    if (v335)
    {
      v100 = 0;
      v101 = _swiftEmptyArrayStorage;
      v102 = v347;
      v103 = v305;
      v329 = v99;
      while (v100 < *(v99 + 16))
      {
        v355 = v101;
        v350 = (*(v352 + 80) + 32) & ~*(v352 + 80);
        v349 = *(v352 + 72);
        (*(v352 + 16))(v103, v99 + v350 + v349 * v100, v102);
        v359 = v346;
        sub_100004E70(&qword_1002004F8, &qword_1001AAFA8);
        v104 = swift_allocObject();
        *(v104 + 16) = v342;
        v105 = v332;
        CBOREncodedCBOR.value.getter();
        v106 = ISO18013IssuerSignedItem.elementIdentifier.getter();
        v108 = v107;
        (*v340)(v105, v341);
        *(v104 + 32) = v106;
        *(v104 + 40) = v108;
        v358 = v104;
        sub_100004E70(&qword_100201D00, &unk_1001ACF10);
        sub_100004E70(&qword_100201580, &qword_1001AB980);
        sub_100055454(&qword_100202440, &qword_100201D00, &unk_1001ACF10, &protocol conformance descriptor for Set<A>);
        sub_100055454(&qword_100202448, &qword_100201580, &qword_1001AB980, &protocol conformance descriptor for [A]);
        LOBYTE(v106) = Collection<>.contains<A>(_:)();

        if (v106)
        {
          v102 = v347;
          (*v351)(v103, v347);
          v101 = v355;
        }

        else
        {
          v109 = *v338;
          v102 = v347;
          (*v338)(v330, v103, v347);
          v101 = v355;
          v110 = swift_isUniquelyReferenced_nonNull_native();
          v356[0] = v101;
          if ((v110 & 1) == 0)
          {
            sub_10010A758(0, *(v101 + 2) + 1, 1);
            v103 = v305;
            v102 = v347;
            v101 = v356[0];
          }

          v111 = v350;
          v113 = *(v101 + 2);
          v112 = *(v101 + 3);
          if (v113 >= v112 >> 1)
          {
            sub_10010A758((v112 > 1), v113 + 1, 1);
            v103 = v305;
            v102 = v347;
            v101 = v356[0];
          }

          *(v101 + 2) = v113 + 1;
          v109(&v101[v111 + v113 * v349], v330, v102);
        }

        ++v100;
        v99 = v329;
        if (v335 == v100)
        {
          goto LABEL_121;
        }
      }

      goto LABEL_223;
    }

    v101 = _swiftEmptyArrayStorage;
LABEL_121:

    v174 = v345;
    v175 = swift_isUniquelyReferenced_nonNull_native();
    v356[0] = v174;
    v176 = v354;
    v69 = v337;
    v177 = sub_100099644(v354, v337);
    v179 = *(v174 + 16);
    v180 = (v178 & 1) == 0;
    v172 = __OFADD__(v179, v180);
    v181 = v179 + v180;
    if (v172)
    {
      goto LABEL_230;
    }

    v182 = v178;
    if (*(v174 + 24) >= v181)
    {
      v116 = v318;
      v62 = v328;
      if ((v175 & 1) == 0)
      {
        v188 = v177;
        sub_100109AB0();
        v116 = v318;
        v177 = v188;
        v62 = v328;
      }
    }

    else
    {
      sub_100108418(v181, v175);
      v177 = sub_100099644(v176, v69);
      v62 = v328;
      if ((v182 & 1) != (v183 & 1))
      {
        goto LABEL_234;
      }

      v116 = v318;
    }

    v184 = v356[0];
    v345 = v356[0];
    if (v182)
    {
      *(*(v356[0] + 56) + 8 * v177) = v101;
    }

    else
    {
      *(v356[0] + 8 * (v177 >> 6) + 64) |= 1 << v177;
      v185 = (v184[6] + 16 * v177);
      *v185 = v176;
      v185[1] = v69;
      *(v184[7] + 8 * v177) = v101;
      v186 = v184[2];
      v172 = __OFADD__(v186, 1);
      v187 = v186 + 1;
      if (v172)
      {
        goto LABEL_233;
      }

      v184[2] = v187;
    }

LABEL_84:
    v328 = ((v62 - 1) & v62);
    defaultLogger()();
    v117 = v336;

    v118 = Logger.logObject.getter();
    v119 = static os_log_type_t.debug.getter();

    LODWORD(v314) = v119;
    if (os_log_type_enabled(v118, v119))
    {
      v308 = v118;
      v120 = swift_slowAlloc();
      v306 = swift_slowAlloc();
      v359 = v306;
      *v120 = v304;
      v121 = sub_10010150C(v354, v69, &v359);

      *(v120 + 4) = v121;
      v307 = v120;
      *(v120 + 12) = 2080;
      v358 = _swiftEmptyArrayStorage;
      v122 = 1 << *(v117 + 32);
      if (v122 < 64)
      {
        v123 = ~(-1 << v122);
      }

      else
      {
        v123 = -1;
      }

      v124 = v123 & *(v117 + 64);
      v125 = (v122 + 63) >> 6;
      swift_bridgeObjectRetain_n();
      v126 = 0;
      v316 = v125;
      while (v124)
      {
LABEL_95:
        v335 = v124;
        v337 = v126;
        v129 = __clz(__rbit64(v124)) | (v126 << 6);
        v130 = *(*(v117 + 48) + 16 * v129 + 8);
        v131 = *(*(v117 + 56) + 8 * v129);
        KeyPath = swift_getKeyPath();
        v133 = *(v131 + 16);
        if (v133)
        {
          v357 = _swiftEmptyArrayStorage;
          v329 = v130;

          sub_10010A6B4(0, v133, 0);
          v134 = v357;
          v135 = v131 + 56;
          v136 = _HashTable.startBucket.getter();
          v137 = v347;
          v349 = KeyPath;
          v350 = v131 + 56;
          while ((v136 & 0x8000000000000000) == 0 && v136 < 1 << *(v131 + 32))
          {
            if ((*(v135 + 8 * (v136 >> 6)) & (1 << v136)) == 0)
            {
              goto LABEL_214;
            }

            v354 = v133;
            LODWORD(v355) = *(v131 + 36);
            v138 = *(v131 + 48);
            v139 = v131;
            v140 = v352;
            v141 = v348;
            (*(v352 + 16))(v348, v138 + *(v352 + 72) * v136, v137);
            swift_getAtKeyPath();
            (*(v140 + 8))(v141, v137);
            v142 = v356[0];
            v143 = v356[1];
            v144 = v134;
            v357 = v134;
            v145 = v134[2];
            v146 = v144[3];
            if (v145 >= v146 >> 1)
            {
              sub_10010A6B4((v146 > 1), v145 + 1, 1);
              v137 = v347;
              v144 = v357;
            }

            v144[2] = v145 + 1;
            v147 = &v144[2 * v145];
            v147[4] = v142;
            v147[5] = v143;
            if (v136 >= -(-1 << *(v139 + 32)))
            {
              goto LABEL_215;
            }

            v131 = v139;
            v135 = v350;
            if ((*(v350 + 8 * (v136 >> 6)) & (1 << v136)) == 0)
            {
              goto LABEL_216;
            }

            if (v355 != *(v131 + 36))
            {
              goto LABEL_217;
            }

            v134 = v144;
            v136 = _HashTable.occupiedBucket(after:)();
            v133 = v354 - 1;
            if (v354 == 1)
            {

              v125 = v316;
              v127 = v134;
              goto LABEL_89;
            }
          }

          __break(1u);
LABEL_214:
          __break(1u);
LABEL_215:
          __break(1u);
LABEL_216:
          __break(1u);
LABEL_217:
          __break(1u);
          goto LABEL_218;
        }

        v127 = _swiftEmptyArrayStorage;
LABEL_89:
        v124 = (v335 - 1) & v335;
        sub_1000FC91C(v127);
        v117 = v336;
        v126 = v337;
      }

      while (1)
      {
        v128 = v126 + 1;
        if (__OFADD__(v126, 1))
        {
          break;
        }

        if (v128 >= v125)
        {

          v148 = Array.description.getter();
          v150 = v149;

          v151 = sub_10010150C(v148, v150, &v359);

          v152 = v307;
          *(v307 + 14) = v151;
          *(v152 + 22) = 2080;
          v153 = Set.description.getter();
          v155 = v154;

          v156 = sub_10010150C(v153, v155, &v359);

          *(v152 + 24) = v156;
          v157 = v308;
          _os_log_impl(&_mh_execute_header, v308, v314, "Removing elements from namespace %s due to fallbacks %s: %s", v152, 0x20u);
          swift_arrayDestroy();

          (*v312)(v318, v313);
          goto LABEL_30;
        }

        v124 = *(v333 + 8 * v128);
        ++v126;
        if (v124)
        {
          v126 = v128;
          goto LABEL_95;
        }
      }

LABEL_218:
      __break(1u);
LABEL_219:
      __break(1u);
      goto LABEL_220;
    }

    (*v312)(v116, v313);
LABEL_30:
    v63 = v323;
    v41 = v347;
    v64 = v334;
    v62 = v328;
  }

  while (1)
  {
    v65 = v63 + 1;
    if (__OFADD__(v63, 1))
    {
      goto LABEL_219;
    }

    if (v65 >= v320)
    {
      break;
    }

    v62 = *(v321 + 8 * v65);
    ++v63;
    if (v62)
    {
      goto LABEL_36;
    }
  }

  v189 = v317;
  v190 = v317 + 56;
  v191 = 1 << *(v317 + 32);
  if (v191 < 64)
  {
    v192 = ~(-1 << v191);
  }

  else
  {
    v192 = -1;
  }

  v193 = v192 & *(v317 + 56);
  v194 = (v191 + 63) >> 6;

  v195 = 0;
  v323 = v194;
  v321 = v190;
  while (2)
  {
    if (v193)
    {
LABEL_143:
      v335 = v193;
      v329 = v195;
      v197 = __clz(__rbit64(v193)) | (v195 << 6);
      v198 = *(v189 + 48);
      v199 = v352;
      v350 = *(v352 + 72);
      v200 = v310;
      v354 = *(v352 + 16);
      (v354)(v310, v198 + v350 * v197, v41);
      v328 = *(v199 + 32);
      v328(v343, v200, v41);
      v201 = v345;
      if (v345)
      {
        v202 = v324;
        if (v345[2])
        {
          v203 = sub_100099644(v327, v331);
          if (v204)
          {
            v205 = *(v201[7] + 8 * v203);
            v206 = *(v205 + 16);

            v346 = -v206;
            v207 = -1;
            v349 = v205;
            v208 = v347;
            while (1)
            {
              v210 = v346 + v207;
              if (v346 + v207 == -1)
              {
                break;
              }

              if (++v207 >= *(v349 + 16))
              {
                goto LABEL_224;
              }

              v337 = v210;
              (v354)(v339, v205 + ((*(v352 + 80) + 32) & ~*(v352 + 80)), v208);
              v211 = v325;
              CBOREncodedCBOR.value.getter();
              v355 = ISO18013IssuerSignedItem.elementIdentifier.getter();
              v213 = v212;
              v214 = v341;
              v215 = *v340;
              (*v340)(v211, v341);
              v216 = v326;
              CBOREncodedCBOR.value.getter();
              v217 = ISO18013IssuerSignedItem.elementIdentifier.getter();
              v219 = v218;
              v215(v216, v214);
              if (v355 == v217 && v213 == v219)
              {

                (*v351)(v339, v347);
LABEL_153:

                v210 = v337;
                goto LABEL_161;
              }

              v205 += v350;
              v209 = _stringCompareWithSmolCheck(_:_:expecting:)();

              v208 = v347;
              (*v351)(v339, v347);
              if (v209)
              {
                goto LABEL_153;
              }
            }

LABEL_161:
            v220 = v210 != -1;
            v221 = v344;
            v201 = v345;
            v202 = v324;
            v190 = v321;
            if (!v344)
            {
              goto LABEL_165;
            }

            goto LABEL_162;
          }

          v220 = 2;
        }

        else
        {
          v220 = 2;
        }

        v221 = v344;
        if (!v344)
        {
          goto LABEL_165;
        }
      }

      else
      {
        v220 = 2;
        v221 = v344;
        v202 = v324;
        if (!v344)
        {
          goto LABEL_165;
        }
      }

LABEL_162:
      if (v221[2])
      {
        v222 = v221;
        v223 = sub_100099644(v327, v331);
        if (v224)
        {
          v225 = *(v221[7] + 8 * v223);
          __chkstk_darwin(v223);
          *(&v289 - 2) = v343;

          v226 = v302;
          v227 = sub_100120CF8(sub_1000DC734, (&v289 - 4), v225);
          v302 = v226;
          v202 = v324;

          v228 = v227 & 1;
        }

        else
        {
          v228 = 2;
        }

        v201 = v345;
        v221 = v222;
        if (!v345)
        {
          goto LABEL_185;
        }

LABEL_169:
        if (v220 == 2 || (v220 & 1) != 0)
        {
          goto LABEL_185;
        }

        (v354)(v309, v343, v347);
        sub_10000ED48(v311, 0);
        v229 = swift_isUniquelyReferenced_nonNull_native();
        v356[0] = v345;
        v231 = sub_100099644(v327, v331);
        v232 = v345;
        v233 = v345[2];
        v234 = (v230 & 1) == 0;
        v235 = v233 + v234;
        if (__OFADD__(v233, v234))
        {
          goto LABEL_226;
        }

        v236 = v230;
        if (v345[3] < v235)
        {
          sub_100108418(v235, v229);
          v237 = v356[0];
          v238 = sub_100099644(v327, v331);
          if ((v236 & 1) != (v239 & 1))
          {
            goto LABEL_234;
          }

          v231 = v238;
          v232 = v237;
          if (v236)
          {
            goto LABEL_180;
          }

LABEL_178:
          v232[(v231 >> 6) + 8] |= 1 << v231;
          v240 = (v232[6] + 16 * v231);
          v241 = v331;
          *v240 = v327;
          v240[1] = v241;
          *(v232[7] + 8 * v231) = _swiftEmptyArrayStorage;
          v242 = v232[2];
          v172 = __OFADD__(v242, 1);
          v243 = v242 + 1;
          if (v172)
          {
            goto LABEL_227;
          }

          v232[2] = v243;
          v244 = v232;

          v232 = v244;
          goto LABEL_180;
        }

        if (v229)
        {
          if ((v230 & 1) == 0)
          {
            goto LABEL_178;
          }
        }

        else
        {
          sub_100109AB0();
          v232 = v356[0];
          if ((v236 & 1) == 0)
          {
            goto LABEL_178;
          }
        }

LABEL_180:
        v201 = v232;
        v245 = v232[7];
        v246 = *(v245 + 8 * v231);
        v247 = swift_isUniquelyReferenced_nonNull_native();
        *(v245 + 8 * v231) = v246;
        if ((v247 & 1) == 0)
        {
          v246 = sub_100100C9C(0, *(v246 + 2) + 1, 1, v246);
          *(v245 + 8 * v231) = v246;
        }

        v249 = *(v246 + 2);
        v248 = *(v246 + 3);
        if (v249 >= v248 >> 1)
        {
          v246 = sub_100100C9C((v248 > 1), v249 + 1, 1, v246);
          *(v245 + 8 * v231) = v246;
        }

        *(v246 + 2) = v249 + 1;
        v328(&v246[((*(v352 + 80) + 32) & ~*(v352 + 80)) + v249 * v350], v309, v347);
        v311 = sub_1000BDCF8;
        v221 = v344;
        v202 = v324;
LABEL_185:
        v345 = v201;
        if (v228 == 2 || (v228 & 1) != 0)
        {
          v41 = v347;
          v189 = v317;
LABEL_137:
          v194 = v323;
          v193 = (v335 - 1) & v335;
          (*v351)(v343, v41);
          v195 = v329;
          continue;
        }

        if (!v221)
        {
          v344 = 0;
LABEL_203:
          v277 = v298;
          defaultLogger()();
          v41 = v347;
          (v354)(v202, v343, v347);

          v278 = v322;

          v279 = Logger.logObject.getter();
          v280 = static os_log_type_t.debug.getter();

          if (os_log_type_enabled(v279, v280))
          {
            v281 = swift_slowAlloc();
            v355 = swift_slowAlloc();
            v356[0] = v355;
            *v281 = v293;

            v282 = sub_10010150C(v295, v278, v356);

            *(v281 + 4) = v282;
            *(v281 + 12) = 2080;
            v283 = v332;
            CBOREncodedCBOR.value.getter();
            v284 = ISO18013IssuerSignedItem.elementIdentifier.getter();
            v286 = v285;
            (*v340)(v283, v341);
            (*v351)(v202, v41);
            v287 = sub_10010150C(v284, v286, v356);

            *(v281 + 14) = v287;
            _os_log_impl(&_mh_execute_header, v279, v280, "Adding element due to %s fallback: %s", v281, 0x16u);
            swift_arrayDestroy();
          }

          else
          {

            (*v351)(v202, v41);
          }

          (*v312)(v277, v313);
          v189 = v317;
          v190 = v321;
          goto LABEL_137;
        }

        v250 = v294;
        CBOREncodedCBOR.value.getter();
        v251 = ISO18013IssuerSignedItem.elementIdentifier.getter();
        v253 = v252;
        (*v340)(v250, v341);
        sub_10000ED48(v299, 0);
        v254 = swift_isUniquelyReferenced_nonNull_native();
        v356[0] = v344;
        v255 = sub_100099644(v327, v331);
        v257 = v344;
        v258 = v255;
        v259 = v344[2];
        v260 = (v256 & 1) == 0;
        v261 = v259 + v260;
        if (__OFADD__(v259, v260))
        {
          goto LABEL_228;
        }

        v262 = v256;
        if (v344[3] < v261)
        {
          sub_100108404(v261, v254);
          v263 = v356[0];
          v264 = sub_100099644(v327, v331);
          if ((v262 & 1) != (v265 & 1))
          {
            goto LABEL_234;
          }

          v258 = v264;
          v257 = v263;
          if (v262)
          {
            goto LABEL_198;
          }

LABEL_196:
          v257[(v258 >> 6) + 8] |= 1 << v258;
          v266 = (v257[6] + 16 * v258);
          v267 = v331;
          *v266 = v327;
          v266[1] = v267;
          *(v257[7] + 8 * v258) = _swiftEmptyArrayStorage;
          v268 = v257[2];
          v172 = __OFADD__(v268, 1);
          v269 = v268 + 1;
          if (v172)
          {
            goto LABEL_231;
          }

          v257[2] = v269;
          v270 = v257;

          v257 = v270;
          goto LABEL_198;
        }

        if (v254)
        {
          if ((v256 & 1) == 0)
          {
            goto LABEL_196;
          }
        }

        else
        {
          sub_100109A9C();
          v257 = v356[0];
          if ((v262 & 1) == 0)
          {
            goto LABEL_196;
          }
        }

LABEL_198:
        v344 = v257;
        v271 = v257[7];
        v272 = *(v271 + 8 * v258);
        v273 = swift_isUniquelyReferenced_nonNull_native();
        *(v271 + 8 * v258) = v272;
        if ((v273 & 1) == 0)
        {
          v272 = sub_100100418(0, *(v272 + 2) + 1, 1, v272);
          *(v271 + 8 * v258) = v272;
        }

        v275 = *(v272 + 2);
        v274 = *(v272 + 3);
        if (v275 >= v274 >> 1)
        {
          v272 = sub_100100418((v274 > 1), v275 + 1, 1, v272);
          *(v271 + 8 * v258) = v272;
        }

        *(v272 + 2) = v275 + 1;
        v276 = &v272[16 * v275];
        *(v276 + 4) = v251;
        *(v276 + 5) = v253;
        v299 = sub_1000BDCF8;
        v202 = v324;
        goto LABEL_203;
      }

LABEL_165:
      v228 = 2;
      if (!v201)
      {
        goto LABEL_185;
      }

      goto LABEL_169;
    }

    break;
  }

  while (1)
  {
    v196 = v195 + 1;
    if (__OFADD__(v195, 1))
    {
      break;
    }

    if (v196 >= v194)
    {

      v51 = v300;
      v50 = v301;
      goto LABEL_16;
    }

    v193 = *(v190 + 8 * v196);
    ++v195;
    if (v193)
    {
      v195 = v196;
      goto LABEL_143;
    }
  }

LABEL_220:
  __break(1u);
LABEL_221:
  __break(1u);
LABEL_222:
  __break(1u);
LABEL_223:
  __break(1u);
LABEL_224:
  __break(1u);
LABEL_225:
  __break(1u);
LABEL_226:
  __break(1u);
LABEL_227:
  __break(1u);
LABEL_228:
  __break(1u);
LABEL_229:
  __break(1u);
LABEL_230:
  __break(1u);
LABEL_231:
  __break(1u);
LABEL_232:
  __break(1u);
LABEL_233:
  __break(1u);
LABEL_234:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_1000C0520@<X0>(uint64_t *a2@<X8>)
{
  result = ISO18013IssuerSignedItem.elementIdentifier.getter();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_1000C054C(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = type metadata accessor for Logger();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();

  return _swift_task_switch(sub_1000C0610, 0, 0);
}

uint64_t sub_1000C0610()
{
  v1 = *(v0 + 24);
  v2 = [*(v0 + 16) credentialIdentifier];
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;

  v6 = *(v1 + *(type metadata accessor for PresentmentProposal(0) + 40));
  v8 = *(v6 + 16);
  v7 = *(v6 + 24);
  v9 = *v1;

  v10 = [v9 readerMetadata];
  if (v10)
  {
    v11 = v10;
    v12 = [v10 identifier];

    v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = v14;
  }

  else
  {
    v13 = 0;
    v15 = 0;
  }

  v16 = swift_allocObject();
  *(v0 + 64) = v16;
  v16[2] = v3;
  v16[3] = v5;
  v16[4] = v8;
  v16[5] = v7;
  v16[6] = v13;
  v16[7] = v15;
  v17 = swift_allocObject();
  *(v0 + 72) = v17;
  *(v17 + 16) = sub_1000DCA8C;
  *(v17 + 24) = v16;

  v18 = swift_task_alloc();
  *(v0 + 80) = v18;
  *v18 = v0;
  v18[1] = sub_1000C07F4;

  return AsyncCoreDataContainer.performWrite<A>(_:)(v18, sub_1000DCAB0, v17, &type metadata for () + 8);
}

uint64_t sub_1000C07F4()
{
  *(*v1 + 88) = v0;

  if (v0)
  {
    v2 = sub_1000C0978;
  }

  else
  {

    v2 = sub_1000C0918;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1000C0918()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000C0978()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[5];

  defaultLogger()();
  DIPRecordError(_:message:log:)();

  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

void sub_1000C0A50(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5, uint64_t a6, void *a7)
{
  sub_1000A09B0(a1, a2, a3, a4, a5, a6, a7);
  if (!v7)
  {
    sub_100050240();
  }
}

uint64_t sub_1000C0A7C(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  sub_100004E70(&qword_100201CD0, &qword_1001AC550);
  v3[5] = swift_task_alloc();
  sub_100004E70(&qword_100202378, &unk_1001ACE70);
  v3[6] = swift_task_alloc();
  v3[7] = swift_task_alloc();
  v4 = type metadata accessor for DIPError.Code();
  v3[8] = v4;
  v3[9] = *(v4 - 8);
  v3[10] = swift_task_alloc();
  v5 = type metadata accessor for DIPError();
  v3[11] = v5;
  v3[12] = *(v5 - 8);
  v3[13] = swift_task_alloc();
  v3[14] = swift_task_alloc();
  v6 = type metadata accessor for ContinuousClock();
  v3[15] = v6;
  v3[16] = *(v6 - 8);
  v3[17] = swift_task_alloc();
  v7 = type metadata accessor for ISO18013SessionTranscript();
  v3[18] = v7;
  v3[19] = *(v7 - 8);
  v3[20] = swift_task_alloc();
  sub_100004E70(&qword_100202370, &qword_1001ACE68);
  v3[21] = swift_task_alloc();
  v3[22] = swift_task_alloc();
  v3[23] = swift_task_alloc();
  sub_100004E70(&qword_100201578, &qword_1001AD1E0);
  v3[24] = swift_task_alloc();
  v3[25] = swift_task_alloc();
  v8 = type metadata accessor for ISO18013IssuerSignedItem();
  v3[26] = v8;
  v3[27] = *(v8 - 8);
  v3[28] = swift_task_alloc();
  v9 = sub_100004E70(&qword_1002004D8, &qword_1001ACBF0);
  v3[29] = v9;
  v3[30] = *(v9 - 8);
  v3[31] = swift_task_alloc();
  v3[32] = *(type metadata accessor for PresentmentProposal(0) - 8);
  v3[33] = swift_task_alloc();
  v3[34] = swift_task_alloc();
  v3[35] = swift_task_alloc();
  v10 = type metadata accessor for IDCSAnalytics.PhysicalPresentmentRequestedEventOutcome();
  v3[36] = v10;
  v11 = *(v10 - 8);
  v3[37] = v11;
  v3[38] = *(v11 + 64);
  v3[39] = swift_task_alloc();
  v3[40] = swift_task_alloc();
  v3[41] = swift_task_alloc();
  v3[42] = swift_task_alloc();
  type metadata accessor for DIPSignpost.Config();
  v3[43] = swift_task_alloc();
  v12 = type metadata accessor for DIPSignpost();
  v3[44] = v12;
  v3[45] = *(v12 - 8);
  v3[46] = swift_task_alloc();
  v13 = type metadata accessor for Logger();
  v3[47] = v13;
  v3[48] = *(v13 - 8);
  v3[49] = swift_task_alloc();
  v3[50] = swift_task_alloc();
  v3[51] = swift_task_alloc();

  return _swift_task_switch(sub_1000C1028, 0, 0);
}

uint64_t sub_1000C1028(uint64_t a1)
{
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "PresentmentResponseBuilder buildCredentialResponse", v4, 2u);
  }

  v5 = v1[51];
  v6 = v1[47];
  v7 = v1[48];
  v8 = v1[2];
  v9 = v1[3];

  v10 = *(v7 + 8);
  v1[52] = v10;
  v10(v5, v6);
  static IDCSSignposts.presentmentBuildResponse.getter();
  DIPSignpost.init(_:)();
  v11 = *v9;
  v12 = [v8 credentialIdentifier];
  v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = v14;

  if (*(v11 + 16))
  {
    v16 = sub_100099644(v13, v15);
    v18 = v17;

    if (v18)
    {
      v20 = v1[34];
      v19 = v1[35];
      sub_1000DC5D0(*(v11 + 56) + *(v1[32] + 72) * v16, v20, type metadata accessor for PresentmentProposal);
      sub_1000DC9CC(v20, v19, type metadata accessor for PresentmentProposal);
      v21 = swift_task_alloc();
      v1[53] = v21;
      *v21 = v1;
      v21[1] = sub_1000C1734;
      v22 = v1[35];
      v23 = v1[33];
      v24 = v1[2];

      return sub_1000C805C(v23, v22, v24);
    }
  }

  else
  {
  }

  v26 = v1[10];
  v27 = v1[8];
  v28 = v1[9];
  v29 = v1[2];
  _StringGuts.grow(_:)(50);

  v30 = [v29 credentialIdentifier];
  v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v33 = v32;

  v34._countAndFlagsBits = v31;
  v34._object = v33;
  String.append(_:)(v34);

  v35._countAndFlagsBits = 0xD000000000000011;
  v35._object = 0x80000001001B94A0;
  String.append(_:)(v35);
  (*(v28 + 104))(v26, enum case for DIPError.Code.idcsInvalidPresentmentSelection(_:), v27);
  sub_10002688C(_swiftEmptyArrayStorage);
  sub_1000DC984(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();
  v36 = v1[39];
  v37 = v1[37];
  v55 = v1[36];
  v38 = v1[12];
  v39 = v1[13];
  v40 = v1[11];
  (*(v1[9] + 104))(v1[10], enum case for DIPError.Code.internalError(_:), v1[8]);
  swift_errorRetain();
  sub_10002688C(_swiftEmptyArrayStorage);
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  v41 = swift_allocError();
  v42 = *(v38 + 16);
  v42(v43, v39, v40);
  *v36 = v41;
  (*(v37 + 104))(v36, enum case for IDCSAnalytics.PhysicalPresentmentRequestedEventOutcome.presentmentFailed(_:), v55);
  v45 = v1[12];
  v44 = v1[13];
  v46 = v1[11];
  (*(v1[37] + 32))(v1[42], v1[39], v1[36]);
  swift_allocError();
  v42(v47, v44, v46);
  swift_willThrow();

  (*(v45 + 8))(v44, v46);
  v49 = v1[45];
  v48 = v1[46];
  v50 = v1[44];
  v51 = v1[42];
  v52 = v1[36];
  v53 = v1[37];
  DIPSignpost.end(workflowID:isBackground:)(0, 2);
  sub_10001C120(0, 0xF000000000000000);
  (*(v53 + 8))(v51, v52);
  (*(v49 + 8))(v48, v50);

  v54 = v1[1];

  return v54();
}

uint64_t sub_1000C1734(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 432) = a1;
  *(v3 + 440) = v1;

  if (v1)
  {
    v4 = sub_1000C573C;
  }

  else
  {
    v4 = sub_1000C1848;
  }

  return _swift_task_switch(v4, 0, 0);
}

char *sub_1000C1848()
{
  v1 = *(v0 + 280);
  v2 = *(v0 + 264);
  sub_1000DC488(v1, type metadata accessor for PresentmentProposal);
  sub_1000DC9CC(v2, v1, type metadata accessor for PresentmentProposal);
  v3 = *v1;
  v4 = [v3 readerMetadata];
  *(v0 + 448) = v4;
  if (v4)
  {
    v5 = v4;
    v6 = [v4 identifier];
  }

  v7 = [v3 authACL];
  if (v7)
  {
    v8 = v7;
    v9 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v10;
  }

  else
  {
    v9 = 0;
    v11 = 0xF000000000000000;
  }

  *(v0 + 456) = v9;
  *(v0 + 464) = v11;
  v12 = *(v0 + 280);
  v13 = *(v12 + 24);
  v14 = *(v0 + 432);
  if (v13)
  {
    v15 = [*(v0 + 432) elementsToPresent];
    if (v15)
    {
      v16 = v15;
      sub_100004E70(&qword_100201580, &qword_1001AB980);
      v17 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
    }

    else
    {
      v17 = 0;
    }

    v88 = *(v0 + 240);
    v38 = sub_1000D92A8(v13, v17);
    v90 = v0;
    *(v0 + 472) = v38;

    v39 = -1;
    v40 = -1 << *(v38 + 32);
    if (-v40 < 64)
    {
      v39 = ~(-1 << -v40);
    }

    v41 = v39 & *(v38 + 64);
    v42 = (63 - v40) >> 6;
    result = swift_bridgeObjectRetain_n();
    v43 = 0;
    v44 = _swiftEmptyArrayStorage;
    while (v41)
    {
LABEL_22:
      v46 = *(*(v38 + 56) + ((v43 << 9) | (8 * __clz(__rbit64(v41)))));
      v47 = *(v46 + 16);
      v48 = *(v44 + 2);
      v49 = v48 + v47;
      if (__OFADD__(v48, v47))
      {
        goto LABEL_57;
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      if (!result || v49 > *(v44 + 3) >> 1)
      {
        if (v48 <= v49)
        {
          v50 = v48 + v47;
        }

        else
        {
          v50 = v48;
        }

        result = sub_100100C9C(result, v50, 1, v44);
        v44 = result;
      }

      v41 &= v41 - 1;
      if (*(v46 + 16))
      {
        if ((*(v44 + 3) >> 1) - *(v44 + 2) < v47)
        {
          goto LABEL_59;
        }

        swift_arrayInitWithCopy();

        if (v47)
        {
          v51 = *(v44 + 2);
          v52 = __OFADD__(v51, v47);
          v53 = v51 + v47;
          if (v52)
          {
            goto LABEL_60;
          }

          *(v44 + 2) = v53;
        }
      }

      else
      {

        if (v47)
        {
          goto LABEL_58;
        }
      }
    }

    while (1)
    {
      v45 = v43 + 1;
      if (__OFADD__(v43, 1))
      {
        break;
      }

      if (v45 >= v42)
      {
        v54 = v90;
        v55 = v90[30];
        v56 = v90[27];

        v57 = 0;
        v86 = *(v44 + 2);
        v90[60] = v86;
        v58 = (v55 + 16);
        v59 = (v56 + 8);
        v60 = (v55 + 8);
        do
        {
          v54[61] = v57;
          if (v86 == v57)
          {
            break;
          }

          if (v57 >= *(v44 + 2))
          {
            goto LABEL_56;
          }

          v62 = v54[31];
          v64 = v54[28];
          v63 = v54[29];
          v65 = v90[26];
          (*v58)(v62, &v44[((*(v88 + 80) + 32) & ~*(v88 + 80)) + *(v88 + 72) * v57], v63);
          CBOREncodedCBOR.value.getter();
          v66 = ISO18013IssuerSignedItem.elementIdentifier.getter();
          v68 = v67;
          v69 = v65;
          v54 = v90;
          (*v59)(v64, v69);
          v70 = v66;
          v71 = v90[31];
          v72 = v90[29];
          if (v70 == 0x7469617274726F70 && v68 == 0xE800000000000000)
          {

            (*v60)(v71, v72);
            break;
          }

          ++v57;
          v61 = _stringCompareWithSmolCheck(_:_:expecting:)();

          result = (*v60)(v71, v72);
        }

        while ((v61 & 1) == 0);

        v73 = v54[25];

        ISO18013KnownDocTypes.init(rawValue:)();
        v74 = type metadata accessor for ISO18013KnownDocTypes();
        v75 = *(v74 - 8);
        if ((*(v75 + 48))(v73, 1, v74) == 1)
        {
LABEL_51:
          v80 = 0;
        }

        else
        {
          v76 = v54[24];
          sub_100046360(v54[25], v76, &qword_100201578, &qword_1001AD1E0);
          v77 = (*(v75 + 88))(v76, v74);
          if (v77 != enum case for ISO18013KnownDocTypes.iso18013_5_1_mDL(_:) && v77 != enum case for ISO18013KnownDocTypes.japanNationalIDCard(_:) && v77 != enum case for ISO18013KnownDocTypes.photoID(_:))
          {
            (*(v75 + 8))(v54[24], v74);
            goto LABEL_51;
          }

          v80 = 1;
        }

        *(v54 + 580) = v80;
        v81 = v54[3];
        sub_10000A0D4(v54[25], &qword_100201578, &qword_1001AD1E0);
        v82 = type metadata accessor for PresentmentRequestInterpretation(0);
        v54[62] = v82;
        v83 = *(v82 + 24);
        *(v54 + 144) = v83;
        v84 = swift_task_alloc();
        v54[63] = v84;
        *v84 = v54;
        v84[1] = sub_1000C2304;

        return sub_1000D9510(v81 + v83);
      }

      v41 = *(v38 + 64 + 8 * v45);
      ++v43;
      if (v41)
      {
        v43 = v45;
        goto LABEL_22;
      }
    }

    __break(1u);
LABEL_56:
    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    __break(1u);
LABEL_59:
    __break(1u);
LABEL_60:
    __break(1u);
  }

  else
  {
    v87 = v9;
    v89 = v11;
    (*(*(v0 + 72) + 104))(*(v0 + 80), enum case for DIPError.Code.idcsMissingProposalElements(_:), *(v0 + 64));
    sub_10002688C(_swiftEmptyArrayStorage);
    sub_1000DC984(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    sub_1000DC488(v12, type metadata accessor for PresentmentProposal);
    v18 = *(v0 + 312);
    v19 = *(v0 + 296);
    v85 = *(v0 + 288);
    v20 = *(v0 + 96);
    v21 = *(v0 + 104);
    v22 = *(v0 + 88);
    (*(*(v0 + 72) + 104))(*(v0 + 80), enum case for DIPError.Code.internalError(_:), *(v0 + 64));
    swift_errorRetain();
    sub_10002688C(_swiftEmptyArrayStorage);
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    v23 = swift_allocError();
    v24 = *(v20 + 16);
    v24(v25, v21, v22);
    *v18 = v23;
    (*(v19 + 104))(v18, enum case for IDCSAnalytics.PhysicalPresentmentRequestedEventOutcome.presentmentFailed(_:), v85);
    v27 = *(v0 + 96);
    v26 = *(v0 + 104);
    v28 = *(v0 + 88);
    (*(*(v0 + 296) + 32))(*(v0 + 336), *(v0 + 312), *(v0 + 288));
    swift_allocError();
    v24(v29, v26, v28);
    swift_willThrow();

    (*(v27 + 8))(v26, v28);
    v31 = *(v0 + 360);
    v30 = *(v0 + 368);
    v32 = *(v0 + 352);
    v33 = *(v0 + 336);
    v34 = *(v0 + 288);
    v35 = *(v0 + 296);
    DIPSignpost.end(workflowID:isBackground:)(0, 2);
    sub_10001C120(v87, v89);
    (*(v35 + 8))(v33, v34);
    (*(v31 + 8))(v30, v32);

    v36 = *(v0 + 8);

    return v36();
  }

  return result;
}

uint64_t sub_1000C2304(char a1)
{
  *(*v1 + 581) = a1;

  return _swift_task_switch(sub_1000C2404, 0, 0);
}

uint64_t sub_1000C2404()
{
  if (*(v0 + 581) == 1)
  {
    v1 = *(v0 + 176);
    v2 = *(v0 + 144);
    v3 = *(v0 + 152);
    sub_100046360(*(v0 + 24) + *(*(v0 + 496) + 20), v1, &qword_100202370, &qword_1001ACE68);
    if ((*(v3 + 48))(v1, 1, v2) != 1)
    {
      v34 = *(v0 + 184);
      v36 = *(v0 + 152);
      v35 = *(v0 + 160);
      v37 = *(v0 + 144);
      v38 = *(v36 + 32);
      v38(v35, *(v0 + 176), v37);
      v38(v34, v35, v37);
      (*(v36 + 56))(v34, 0, 1, v37);
      goto LABEL_11;
    }

    v4 = *(v0 + 432);
    sub_10000A0D4(*(v0 + 176), &qword_100202370, &qword_1001ACE68);
    v5 = [v4 responseEncryptionParameters];
    v6 = DCPresentmentResponseEncryptionParameters.sessionTranscriptData.getter();
    v8 = v7;

    if (v8 >> 60 == 15)
    {
      (*(*(v0 + 152) + 56))(*(v0 + 184), 1, 1, *(v0 + 144));
LABEL_11:
      v39 = swift_task_alloc();
      *(v0 + 512) = v39;
      *v39 = v0;
      v39[1] = sub_1000C2E84;
      v40 = *(v0 + 472);
      v41 = *(v0 + 432);
      v42 = *(v0 + 280);
      v43 = *(v0 + 184);

      return sub_1000CDFB4(v41, v42, v40, v43);
    }

    v65 = *(v0 + 440);
    sub_1000D8304();
    sub_1000DC984(&qword_1002029A0, &type metadata accessor for ISO18013SessionTranscript, &protocol conformance descriptor for ISO18013SessionTranscript);
    dispatch thunk of CBORDecoder.decode<A>(_:from:)();
    if (!v65)
    {
      v68 = *(v0 + 184);
      v69 = *(v0 + 168);
      v70 = *(v0 + 144);
      v71 = *(v0 + 152);

      sub_10001C120(v6, v8);
      (*(v71 + 56))(v69, 0, 1, v70);
      sub_100046524(v69, v68, &qword_100202370, &qword_1001ACE68);
      goto LABEL_11;
    }

    v66 = *(v0 + 432);
    v67 = *(v0 + 280);

    sub_10001C120(v6, v8);

    sub_1000DC488(v67, type metadata accessor for PresentmentProposal);
    v73 = *(v0 + 488) != *(v0 + 480);
  }

  else
  {
    v9 = *(v0 + 432);
    v10 = *(v0 + 280);
    v11 = *(v0 + 80);
    v12 = *(v0 + 64);
    v13 = *(v0 + 72);

    (*(v13 + 104))(v11, enum case for DIPError.Code.idcsUntrustedReaderAuthCertificate(_:), v12);
    sub_10002688C(_swiftEmptyArrayStorage);
    sub_1000DC984(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    sub_1000DC488(v10, type metadata accessor for PresentmentProposal);
    v73 = *(v0 + 488) != *(v0 + 480);
  }

  v72 = *(v0 + 448) != 0;
  v76 = *(v0 + 464);
  v77 = *(v0 + 456);
  v75 = *(v0 + 580);
  v14 = *(v0 + 312);
  v15 = *(v0 + 288);
  v16 = *(v0 + 296);
  v18 = *(v0 + 96);
  v17 = *(v0 + 104);
  v19 = *(v0 + 88);
  (*(*(v0 + 72) + 104))(*(v0 + 80), enum case for DIPError.Code.internalError(_:), *(v0 + 64));
  swift_errorRetain();
  sub_10002688C(_swiftEmptyArrayStorage);
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  sub_1000DC984(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
  v20 = swift_allocError();
  v21 = *(v18 + 16);
  v21(v22, v17, v19);
  *v14 = v20;
  (*(v16 + 104))(v14, enum case for IDCSAnalytics.PhysicalPresentmentRequestedEventOutcome.presentmentFailed(_:), v15);
  v24 = *(v0 + 96);
  v23 = *(v0 + 104);
  v25 = *(v0 + 88);
  v26 = *(v0 + 32);
  v74 = *(*(v0 + 296) + 32);
  v74(*(v0 + 336), *(v0 + 312), *(v0 + 288));
  swift_allocError();
  v21(v27, v23, v25);
  swift_willThrow();

  (*(v24 + 8))(v23, v25);
  if (v75 == 1 && !*(v26 + 16))
  {
    v28 = *(v0 + 48);
    v29 = *(v0 + 24);
    v30 = type metadata accessor for PresentmentRequestInterpretation(0);
    sub_100046360(v29 + *(v30 + 24), v28, &qword_100202378, &unk_1001ACE70);
    v31 = type metadata accessor for IdentityReaderAuthenticator(0);
    v32 = (*(*(v31 - 8) + 48))(v28, 1, v31);
    v33 = *(v0 + 48);
    if (v32 == 1)
    {
      sub_10000A0D4(v33, &qword_100202378, &unk_1001ACE70);
      v78 = 0;
    }

    else
    {
      v45 = *(v33 + *(v31 + 32));
      sub_1000DC488(v33, type metadata accessor for IdentityReaderAuthenticator);
      v78 = v45 == 0;
    }

    v46 = *(v0 + 328);
    v47 = *(v0 + 320);
    v49 = *(v0 + 296);
    v48 = *(v0 + 304);
    v50 = *(v0 + 288);
    v51 = *(v0 + 40);
    v52 = *(v49 + 16);
    v52(v46, *(v0 + 336), v50);
    v53 = type metadata accessor for TaskPriority();
    (*(*(v53 - 8) + 56))(v51, 1, 1, v53);
    v52(v47, v46, v50);
    v54 = (*(v49 + 80) + 48) & ~*(v49 + 80);
    v55 = v54 + v48;
    v56 = swift_allocObject();
    *(v56 + 2) = 0;
    *(v56 + 3) = 0;
    *(v56 + 4) = v77;
    *(v56 + 5) = v76;
    v74(&v56[v54], v47, v50);
    v57 = &v56[v55];
    *v57 = v72;
    v57[1] = v73;
    v57[2] = v78;
    sub_100032EBC(v77, v76);
    sub_1000BDFA8(0, 0, v51, &unk_1001AD1F0, v56);

    (*(v49 + 8))(v46, v50);
  }

  v59 = *(v0 + 360);
  v58 = *(v0 + 368);
  v60 = *(v0 + 352);
  v61 = *(v0 + 336);
  v63 = *(v0 + 288);
  v62 = *(v0 + 296);
  DIPSignpost.end(workflowID:isBackground:)(0, 2);
  sub_10001C120(v77, v76);
  (*(v62 + 8))(v61, v63);
  (*(v59 + 8))(v58, v60);

  v64 = *(v0 + 8);

  return v64();
}

uint64_t sub_1000C2E84(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v4[65] = a1;
  v4[66] = a2;
  v4[67] = v2;

  if (v2)
  {

    return _swift_task_switch(sub_1000C5B38, 0, 0);
  }

  else
  {
    v5 = swift_task_alloc();
    v4[68] = v5;
    *v5 = v4;
    v5[1] = sub_1000C300C;
    v6 = v4[35];
    v7 = v4[54];

    return sub_1000C054C(v7, v6);
  }
}

uint64_t sub_1000C300C()
{

  return _swift_task_switch(sub_1000C3108, 0, 0);
}

uint64_t sub_1000C3108()
{
  v1 = objc_opt_self();
  *(v0 + 552) = v1;
  v2 = [v1 standardUserDefaults];
  v3._countAndFlagsBits = 0xD000000000000026;
  v3._object = 0x80000001001B9580;
  v4 = NSUserDefaults.internalBool(forKey:)(v3);

  if (v4)
  {
    defaultLogger()();
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v5, v6, "Sleeping for 10 seconds before returning presentment response due to user defaults setting", v7, 2u);
    }

    v8 = *(v0 + 416);
    v9 = *(v0 + 400);
    v10 = *(v0 + 376);

    v8(v9, v10);
    static Clock<>.continuous.getter();
    v11 = swift_task_alloc();
    *(v0 + 560) = v11;
    *v11 = v0;
    v11[1] = sub_1000C4104;

    return sub_1000D8A28(0x8AC7230489E80000, 0, 0, 0, 1);
  }

  else
  {
    v13 = [*(v0 + 552) standardUserDefaults];
    v14._object = 0x80000001001B95B0;
    v14._countAndFlagsBits = 0xD000000000000028;
    v15 = NSUserDefaults.internalBool(forKey:)(v14);

    if (v15)
    {

      defaultLogger()();
      v16 = Logger.logObject.getter();
      v17 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        *v18 = 0;
        _os_log_impl(&_mh_execute_header, v16, v17, "Throwing error at end of presentment due to internal defaults setting", v18, 2u);
      }

      v112 = *(v0 + 520);
      v114 = *(v0 + 528);
      v116 = *(v0 + 432);
      v19 = *(v0 + 416);
      v20 = *(v0 + 392);
      v21 = *(v0 + 376);
      v107 = *(v0 + 336);
      v108 = *(v0 + 296);
      v109 = *(v0 + 288);
      v123 = *(v0 + 184);
      v127 = *(v0 + 280);
      v22 = *(v0 + 88);
      v105 = *(v0 + 112);
      v106 = *(v0 + 96);
      v23 = *(v0 + 72);
      v24 = *(v0 + 80);
      v25 = *(v0 + 64);

      v19(v20, v21);
      v26 = enum case for DIPError.Code.internalError(_:);
      (*(v23 + 104))(v24, enum case for DIPError.Code.internalError(_:), v25);
      sub_10002688C(_swiftEmptyArrayStorage);
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      sub_1000DC984(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
      v27 = swift_allocError();
      v28 = *(v106 + 16);
      v28(v29, v105, v22);
      *v107 = v27;
      v111 = enum case for IDCSAnalytics.PhysicalPresentmentRequestedEventOutcome.presentmentFailed(_:);
      (*(v108 + 104))(v107, enum case for IDCSAnalytics.PhysicalPresentmentRequestedEventOutcome.presentmentFailed(_:), v109);
      swift_allocError();
      v28(v30, v105, v22);
      swift_willThrow();
      sub_1000092BC(v112, v114);

      (*(v106 + 8))(v105, v22);
      sub_10000A0D4(v123, &qword_100202370, &qword_1001ACE68);
      sub_1000DC488(v127, type metadata accessor for PresentmentProposal);
      LODWORD(v116) = *(v0 + 580);
      v124 = *(v0 + 456);
      v128 = *(v0 + 464);
      v113 = *(v0 + 488) != *(v0 + 480);
      v110 = *(v0 + 448) != 0;
      v31 = *(v0 + 312);
      v32 = *(v0 + 296);
      v115 = *(v0 + 288);
      v34 = *(v0 + 96);
      v33 = *(v0 + 104);
      v35 = *(v0 + 88);
      (*(*(v0 + 72) + 104))(*(v0 + 80), v26, *(v0 + 64));
      swift_errorRetain();
      sub_10002688C(_swiftEmptyArrayStorage);
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      v36 = swift_allocError();
      v37 = *(v34 + 16);
      v37(v38, v33, v35);
      *v31 = v36;
      (*(v32 + 104))(v31, v111, v115);
      (*(*(v0 + 296) + 8))(*(v0 + 336), *(v0 + 288));
      v40 = *(v0 + 96);
      v39 = *(v0 + 104);
      v41 = *(v0 + 88);
      v42 = *(v0 + 32);
      v119 = *(*(v0 + 296) + 32);
      v119(*(v0 + 336), *(v0 + 312), *(v0 + 288));
      swift_allocError();
      v37(v43, v39, v41);
      swift_willThrow();

      (*(v40 + 8))(v39, v41);
      if (v116 == 1 && !*(v42 + 16))
      {
        v44 = *(v0 + 48);
        v45 = *(v0 + 24);
        v46 = type metadata accessor for PresentmentRequestInterpretation(0);
        sub_100046360(v45 + *(v46 + 24), v44, &qword_100202378, &unk_1001ACE70);
        v47 = type metadata accessor for IdentityReaderAuthenticator(0);
        v48 = (*(*(v47 - 8) + 48))(v44, 1, v47);
        v49 = *(v0 + 48);
        if (v48 == 1)
        {
          sub_10000A0D4(v49, &qword_100202378, &unk_1001ACE70);
          v117 = 0;
        }

        else
        {
          v63 = *(v49 + *(v47 + 32));
          sub_1000DC488(v49, type metadata accessor for IdentityReaderAuthenticator);
          v117 = v63 == 0;
        }

        v64 = *(v0 + 328);
        v65 = *(v0 + 320);
        v67 = *(v0 + 296);
        v66 = *(v0 + 304);
        v68 = *(v0 + 288);
        v69 = *(v0 + 40);
        v70 = *(v67 + 16);
        v70(v64, *(v0 + 336), v68);
        v71 = type metadata accessor for TaskPriority();
        (*(*(v71 - 8) + 56))(v69, 1, 1, v71);
        v70(v65, v64, v68);
        v72 = (*(v67 + 80) + 48) & ~*(v67 + 80);
        v73 = v72 + v66;
        v74 = swift_allocObject();
        *(v74 + 2) = 0;
        *(v74 + 3) = 0;
        *(v74 + 4) = v124;
        *(v74 + 5) = v128;
        v119(&v74[v72], v65, v68);
        v75 = &v74[v73];
        *v75 = v110;
        v75[1] = v113;
        v75[2] = v117;
        sub_100032EBC(v124, v128);
        sub_1000BDFA8(0, 0, v69, &unk_1001AD1F0, v74);

        (*(v67 + 8))(v64, v68);
      }

      v77 = *(v0 + 360);
      v76 = *(v0 + 368);
      v78 = *(v0 + 352);
      v79 = *(v0 + 336);
      v81 = *(v0 + 288);
      v80 = *(v0 + 296);
      DIPSignpost.end(workflowID:isBackground:)(0, 2);
      sub_10001C120(v124, v128);
      (*(v80 + 8))(v79, v81);
      (*(v77 + 8))(v76, v78);

      v82 = *(v0 + 8);

      return v82();
    }

    else
    {
      v50 = *(v0 + 528);
      v51 = *(v0 + 520);
      v125 = *(v0 + 580);
      v52 = *(v0 + 472);
      v53 = *(v0 + 432);
      v54 = *(v0 + 280);
      v55 = *(v0 + 184);
      v121 = *(v0 + 32);
      (*(*(v0 + 296) + 104))(*(v0 + 336), enum case for IDCSAnalytics.PhysicalPresentmentRequestedEventOutcome.success(_:), *(v0 + 288));
      sub_100020718(v52);

      v56 = objc_allocWithZone(DCCredentialResponse);
      isa = Data._bridgeToObjectiveC()().super.isa;
      sub_100004E70(&qword_100201CE8, &qword_1001AC6F8);
      v58 = Dictionary._bridgeToObjectiveC()().super.isa;

      v129 = [v56 initWithResponseData:isa elementsByNamespace:v58];
      sub_1000092BC(v51, v50);

      sub_10000A0D4(v55, &qword_100202370, &qword_1001ACE68);
      sub_1000DC488(v54, type metadata accessor for PresentmentProposal);
      if (v125 == 1 && !*(v121 + 16))
      {
        v59 = *(v0 + 56);
        sub_100046360(*(v0 + 24) + *(v0 + 576), v59, &qword_100202378, &unk_1001ACE70);
        v60 = type metadata accessor for IdentityReaderAuthenticator(0);
        v61 = (*(*(v60 - 8) + 48))(v59, 1, v60);
        v62 = *(v0 + 56);
        if (v61 == 1)
        {
          sub_10000A0D4(v62, &qword_100202378, &unk_1001ACE70);
          v126 = 0;
        }

        else
        {
          v83 = *(v62 + *(v60 + 32));
          sub_1000DC488(v62, type metadata accessor for IdentityReaderAuthenticator);
          v126 = v83 == 0;
        }

        v85 = *(v0 + 456);
        v84 = *(v0 + 464);
        v86 = *(v0 + 328);
        v87 = *(v0 + 320);
        v88 = *(v0 + 296);
        v89 = *(v0 + 288);
        v90 = *(v0 + 40);
        v118 = *(v0 + 304);
        v122 = *(v0 + 488) != *(v0 + 480);
        v120 = *(v0 + 448) != 0;
        v91 = *(v88 + 16);
        v91(v86, *(v0 + 336), v89);
        v92 = type metadata accessor for TaskPriority();
        (*(*(v92 - 8) + 56))(v90, 1, 1, v92);
        v91(v87, v86, v89);
        v93 = (*(v88 + 80) + 48) & ~*(v88 + 80);
        v94 = swift_allocObject();
        *(v94 + 2) = 0;
        *(v94 + 3) = 0;
        *(v94 + 4) = v85;
        *(v94 + 5) = v84;
        (*(v88 + 32))(&v94[v93], v87, v89);
        v95 = &v94[v93 + v118];
        *v95 = v120;
        v95[1] = v122;
        v95[2] = v126;
        sub_100032EBC(v85, v84);
        sub_1000BDFA8(0, 0, v90, &unk_1001AD200, v94);

        (*(v88 + 8))(v86, v89);
      }

      v97 = *(v0 + 456);
      v96 = *(v0 + 464);
      v98 = *(v0 + 360);
      v99 = *(v0 + 368);
      v100 = *(v0 + 352);
      v101 = *(v0 + 336);
      v103 = *(v0 + 288);
      v102 = *(v0 + 296);
      DIPSignpost.end(workflowID:isBackground:)(0, 2);
      sub_10001C120(v97, v96);
      (*(v102 + 8))(v101, v103);
      (*(v98 + 8))(v99, v100);

      v104 = *(v0 + 8);

      return v104(v129);
    }
  }
}

uint64_t sub_1000C4104()
{
  v2 = *v1;
  *(*v1 + 568) = v0;

  (*(v2[16] + 8))(v2[17], v2[15]);
  if (v0)
  {

    v3 = sub_1000C50AC;
  }

  else
  {
    v3 = sub_1000C4254;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1000C4254()
{
  v1 = [*(v0 + 552) standardUserDefaults];
  v2._object = 0x80000001001B95B0;
  v2._countAndFlagsBits = 0xD000000000000028;
  v3 = NSUserDefaults.internalBool(forKey:)(v2);

  if (v3)
  {

    defaultLogger()();
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, v5, "Throwing error at end of presentment due to internal defaults setting", v6, 2u);
    }

    v101 = *(v0 + 520);
    v103 = *(v0 + 528);
    v105 = *(v0 + 432);
    v7 = *(v0 + 416);
    v8 = *(v0 + 392);
    v9 = *(v0 + 376);
    v96 = *(v0 + 336);
    v97 = *(v0 + 296);
    v98 = *(v0 + 288);
    v112 = *(v0 + 184);
    v116 = *(v0 + 280);
    v10 = *(v0 + 88);
    v94 = *(v0 + 112);
    v95 = *(v0 + 96);
    v11 = *(v0 + 72);
    v12 = *(v0 + 80);
    v13 = *(v0 + 64);

    v7(v8, v9);
    v14 = enum case for DIPError.Code.internalError(_:);
    (*(v11 + 104))(v12, enum case for DIPError.Code.internalError(_:), v13);
    sub_10002688C(_swiftEmptyArrayStorage);
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    sub_1000DC984(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    v15 = swift_allocError();
    v16 = *(v95 + 16);
    v16(v17, v94, v10);
    *v96 = v15;
    v100 = enum case for IDCSAnalytics.PhysicalPresentmentRequestedEventOutcome.presentmentFailed(_:);
    (*(v97 + 104))(v96, enum case for IDCSAnalytics.PhysicalPresentmentRequestedEventOutcome.presentmentFailed(_:), v98);
    swift_allocError();
    v16(v18, v94, v10);
    swift_willThrow();
    sub_1000092BC(v101, v103);

    (*(v95 + 8))(v94, v10);
    sub_10000A0D4(v112, &qword_100202370, &qword_1001ACE68);
    sub_1000DC488(v116, type metadata accessor for PresentmentProposal);
    LODWORD(v105) = *(v0 + 580);
    v113 = *(v0 + 456);
    v117 = *(v0 + 464);
    v102 = *(v0 + 488) != *(v0 + 480);
    v99 = *(v0 + 448) != 0;
    v19 = *(v0 + 312);
    v20 = *(v0 + 296);
    v104 = *(v0 + 288);
    v22 = *(v0 + 96);
    v21 = *(v0 + 104);
    v23 = *(v0 + 88);
    (*(*(v0 + 72) + 104))(*(v0 + 80), v14, *(v0 + 64));
    swift_errorRetain();
    sub_10002688C(_swiftEmptyArrayStorage);
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    v24 = swift_allocError();
    v25 = *(v22 + 16);
    v25(v26, v21, v23);
    *v19 = v24;
    (*(v20 + 104))(v19, v100, v104);
    (*(*(v0 + 296) + 8))(*(v0 + 336), *(v0 + 288));
    v28 = *(v0 + 96);
    v27 = *(v0 + 104);
    v29 = *(v0 + 88);
    v30 = *(v0 + 32);
    v108 = *(*(v0 + 296) + 32);
    v108(*(v0 + 336), *(v0 + 312), *(v0 + 288));
    swift_allocError();
    v25(v31, v27, v29);
    swift_willThrow();

    (*(v28 + 8))(v27, v29);
    if (v105 == 1 && !*(v30 + 16))
    {
      v32 = *(v0 + 48);
      v33 = *(v0 + 24);
      v34 = type metadata accessor for PresentmentRequestInterpretation(0);
      sub_100046360(v33 + *(v34 + 24), v32, &qword_100202378, &unk_1001ACE70);
      v35 = type metadata accessor for IdentityReaderAuthenticator(0);
      v36 = (*(*(v35 - 8) + 48))(v32, 1, v35);
      v37 = *(v0 + 48);
      if (v36 == 1)
      {
        sub_10000A0D4(v37, &qword_100202378, &unk_1001ACE70);
        v106 = 0;
      }

      else
      {
        v51 = *(v37 + *(v35 + 32));
        sub_1000DC488(v37, type metadata accessor for IdentityReaderAuthenticator);
        v106 = v51 == 0;
      }

      v52 = *(v0 + 328);
      v53 = *(v0 + 320);
      v55 = *(v0 + 296);
      v54 = *(v0 + 304);
      v56 = *(v0 + 288);
      v57 = *(v0 + 40);
      v58 = *(v55 + 16);
      v58(v52, *(v0 + 336), v56);
      v59 = type metadata accessor for TaskPriority();
      (*(*(v59 - 8) + 56))(v57, 1, 1, v59);
      v58(v53, v52, v56);
      v60 = (*(v55 + 80) + 48) & ~*(v55 + 80);
      v61 = v60 + v54;
      v62 = swift_allocObject();
      *(v62 + 2) = 0;
      *(v62 + 3) = 0;
      *(v62 + 4) = v113;
      *(v62 + 5) = v117;
      v108(&v62[v60], v53, v56);
      v63 = &v62[v61];
      *v63 = v99;
      v63[1] = v102;
      v63[2] = v106;
      sub_100032EBC(v113, v117);
      sub_1000BDFA8(0, 0, v57, &unk_1001AD1F0, v62);

      (*(v55 + 8))(v52, v56);
    }

    v65 = *(v0 + 360);
    v64 = *(v0 + 368);
    v66 = *(v0 + 352);
    v67 = *(v0 + 336);
    v69 = *(v0 + 288);
    v68 = *(v0 + 296);
    DIPSignpost.end(workflowID:isBackground:)(0, 2);
    sub_10001C120(v113, v117);
    (*(v68 + 8))(v67, v69);
    (*(v65 + 8))(v64, v66);

    v70 = *(v0 + 8);

    return v70();
  }

  else
  {
    v38 = *(v0 + 528);
    v39 = *(v0 + 520);
    v114 = *(v0 + 580);
    v40 = *(v0 + 472);
    v41 = *(v0 + 432);
    v42 = *(v0 + 280);
    v43 = *(v0 + 184);
    v110 = *(v0 + 32);
    (*(*(v0 + 296) + 104))(*(v0 + 336), enum case for IDCSAnalytics.PhysicalPresentmentRequestedEventOutcome.success(_:), *(v0 + 288));
    sub_100020718(v40);

    v44 = objc_allocWithZone(DCCredentialResponse);
    isa = Data._bridgeToObjectiveC()().super.isa;
    sub_100004E70(&qword_100201CE8, &qword_1001AC6F8);
    v46 = Dictionary._bridgeToObjectiveC()().super.isa;

    v118 = [v44 initWithResponseData:isa elementsByNamespace:v46];
    sub_1000092BC(v39, v38);

    sub_10000A0D4(v43, &qword_100202370, &qword_1001ACE68);
    sub_1000DC488(v42, type metadata accessor for PresentmentProposal);
    if (v114 == 1 && !*(v110 + 16))
    {
      v47 = *(v0 + 56);
      sub_100046360(*(v0 + 24) + *(v0 + 576), v47, &qword_100202378, &unk_1001ACE70);
      v48 = type metadata accessor for IdentityReaderAuthenticator(0);
      v49 = (*(*(v48 - 8) + 48))(v47, 1, v48);
      v50 = *(v0 + 56);
      if (v49 == 1)
      {
        sub_10000A0D4(v50, &qword_100202378, &unk_1001ACE70);
        v115 = 0;
      }

      else
      {
        v72 = *(v50 + *(v48 + 32));
        sub_1000DC488(v50, type metadata accessor for IdentityReaderAuthenticator);
        v115 = v72 == 0;
      }

      v74 = *(v0 + 456);
      v73 = *(v0 + 464);
      v75 = *(v0 + 328);
      v76 = *(v0 + 320);
      v77 = *(v0 + 296);
      v78 = *(v0 + 288);
      v79 = *(v0 + 40);
      v107 = *(v0 + 304);
      v111 = *(v0 + 488) != *(v0 + 480);
      v109 = *(v0 + 448) != 0;
      v80 = *(v77 + 16);
      v80(v75, *(v0 + 336), v78);
      v81 = type metadata accessor for TaskPriority();
      (*(*(v81 - 8) + 56))(v79, 1, 1, v81);
      v80(v76, v75, v78);
      v82 = (*(v77 + 80) + 48) & ~*(v77 + 80);
      v83 = swift_allocObject();
      *(v83 + 2) = 0;
      *(v83 + 3) = 0;
      *(v83 + 4) = v74;
      *(v83 + 5) = v73;
      (*(v77 + 32))(&v83[v82], v76, v78);
      v84 = &v83[v82 + v107];
      *v84 = v109;
      v84[1] = v111;
      v84[2] = v115;
      sub_100032EBC(v74, v73);
      sub_1000BDFA8(0, 0, v79, &unk_1001AD200, v83);

      (*(v77 + 8))(v75, v78);
    }

    v86 = *(v0 + 456);
    v85 = *(v0 + 464);
    v87 = *(v0 + 360);
    v88 = *(v0 + 368);
    v89 = *(v0 + 352);
    v90 = *(v0 + 336);
    v92 = *(v0 + 288);
    v91 = *(v0 + 296);
    DIPSignpost.end(workflowID:isBackground:)(0, 2);
    sub_10001C120(v86, v85);
    (*(v91 + 8))(v90, v92);
    (*(v87 + 8))(v88, v89);

    v93 = *(v0 + 8);

    return v93(v118);
  }
}

uint64_t sub_1000C50AC()
{
  v1 = *(v0 + 432);
  v2 = *(v0 + 280);
  v3 = *(v0 + 184);
  sub_1000092BC(*(v0 + 520), *(v0 + 528));

  sub_10000A0D4(v3, &qword_100202370, &qword_1001ACE68);
  sub_1000DC488(v2, type metadata accessor for PresentmentProposal);
  v47 = *(v0 + 580);
  v50 = *(v0 + 456);
  v51 = *(v0 + 464);
  v46 = *(v0 + 488) != *(v0 + 480);
  v45 = *(v0 + 448) != 0;
  v4 = *(v0 + 312);
  v5 = *(v0 + 296);
  v49 = *(v0 + 288);
  v7 = *(v0 + 96);
  v6 = *(v0 + 104);
  v8 = *(v0 + 88);
  (*(*(v0 + 72) + 104))(*(v0 + 80), enum case for DIPError.Code.internalError(_:), *(v0 + 64));
  swift_errorRetain();
  sub_10002688C(_swiftEmptyArrayStorage);
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  sub_1000DC984(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
  v9 = swift_allocError();
  v10 = *(v7 + 16);
  v10(v11, v6, v8);
  *v4 = v9;
  (*(v5 + 104))(v4, enum case for IDCSAnalytics.PhysicalPresentmentRequestedEventOutcome.presentmentFailed(_:), v49);
  v13 = *(v0 + 96);
  v12 = *(v0 + 104);
  v14 = *(v0 + 88);
  v15 = *(v0 + 32);
  v44 = *(*(v0 + 296) + 32);
  v44(*(v0 + 336), *(v0 + 312), *(v0 + 288));
  swift_allocError();
  v10(v16, v12, v14);
  swift_willThrow();

  (*(v13 + 8))(v12, v14);
  if (v47 == 1 && !*(v15 + 16))
  {
    v17 = *(v0 + 48);
    v18 = *(v0 + 24);
    v19 = type metadata accessor for PresentmentRequestInterpretation(0);
    sub_100046360(v18 + *(v19 + 24), v17, &qword_100202378, &unk_1001ACE70);
    v20 = type metadata accessor for IdentityReaderAuthenticator(0);
    v21 = (*(*(v20 - 8) + 48))(v17, 1, v20);
    v22 = *(v0 + 48);
    if (v21 == 1)
    {
      sub_10000A0D4(v22, &qword_100202378, &unk_1001ACE70);
      v48 = 0;
    }

    else
    {
      v23 = *(v22 + *(v20 + 32));
      sub_1000DC488(v22, type metadata accessor for IdentityReaderAuthenticator);
      v48 = v23 == 0;
    }

    v24 = *(v0 + 328);
    v25 = *(v0 + 320);
    v27 = *(v0 + 296);
    v26 = *(v0 + 304);
    v28 = *(v0 + 288);
    v29 = *(v0 + 40);
    v30 = *(v27 + 16);
    v30(v24, *(v0 + 336), v28);
    v31 = type metadata accessor for TaskPriority();
    (*(*(v31 - 8) + 56))(v29, 1, 1, v31);
    v30(v25, v24, v28);
    v32 = (*(v27 + 80) + 48) & ~*(v27 + 80);
    v33 = v32 + v26;
    v34 = swift_allocObject();
    *(v34 + 2) = 0;
    *(v34 + 3) = 0;
    *(v34 + 4) = v50;
    *(v34 + 5) = v51;
    v44(&v34[v32], v25, v28);
    v35 = &v34[v33];
    *v35 = v45;
    v35[1] = v46;
    v35[2] = v48;
    sub_100032EBC(v50, v51);
    sub_1000BDFA8(0, 0, v29, &unk_1001AD1F0, v34);

    (*(v27 + 8))(v24, v28);
  }

  v37 = *(v0 + 360);
  v36 = *(v0 + 368);
  v38 = *(v0 + 352);
  v39 = *(v0 + 336);
  v41 = *(v0 + 288);
  v40 = *(v0 + 296);
  DIPSignpost.end(workflowID:isBackground:)(0, 2);
  sub_10001C120(v50, v51);
  (*(v40 + 8))(v39, v41);
  (*(v37 + 8))(v36, v38);

  v42 = *(v0 + 8);

  return v42();
}

uint64_t sub_1000C573C()
{
  sub_1000DC488(v0[35], type metadata accessor for PresentmentProposal);
  v1 = v0[39];
  v2 = v0[37];
  v21 = v0[36];
  v4 = v0[12];
  v3 = v0[13];
  v5 = v0[11];
  (*(v0[9] + 104))(v0[10], enum case for DIPError.Code.internalError(_:), v0[8]);
  swift_errorRetain();
  sub_10002688C(_swiftEmptyArrayStorage);
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  sub_1000DC984(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
  v6 = swift_allocError();
  v7 = *(v4 + 16);
  v7(v8, v3, v5);
  *v1 = v6;
  (*(v2 + 104))(v1, enum case for IDCSAnalytics.PhysicalPresentmentRequestedEventOutcome.presentmentFailed(_:), v21);
  v10 = v0[12];
  v9 = v0[13];
  v11 = v0[11];
  (*(v0[37] + 32))(v0[42], v0[39], v0[36]);
  swift_allocError();
  v7(v12, v9, v11);
  swift_willThrow();

  (*(v10 + 8))(v9, v11);
  v14 = v0[45];
  v13 = v0[46];
  v15 = v0[44];
  v16 = v0[42];
  v17 = v0[36];
  v18 = v0[37];
  DIPSignpost.end(workflowID:isBackground:)(0, 2);
  sub_10001C120(0, 0xF000000000000000);
  (*(v18 + 8))(v16, v17);
  (*(v14 + 8))(v13, v15);

  v19 = v0[1];

  return v19();
}

uint64_t sub_1000C5B38()
{
  v1 = *(v0 + 280);
  v2 = *(v0 + 184);

  sub_10000A0D4(v2, &qword_100202370, &qword_1001ACE68);
  sub_1000DC488(v1, type metadata accessor for PresentmentProposal);
  v46 = *(v0 + 580);
  v49 = *(v0 + 456);
  v50 = *(v0 + 464);
  v45 = *(v0 + 488) != *(v0 + 480);
  v44 = *(v0 + 448) != 0;
  v3 = *(v0 + 312);
  v4 = *(v0 + 296);
  v48 = *(v0 + 288);
  v6 = *(v0 + 96);
  v5 = *(v0 + 104);
  v7 = *(v0 + 88);
  (*(*(v0 + 72) + 104))(*(v0 + 80), enum case for DIPError.Code.internalError(_:), *(v0 + 64));
  swift_errorRetain();
  sub_10002688C(_swiftEmptyArrayStorage);
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  sub_1000DC984(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
  v8 = swift_allocError();
  v9 = *(v6 + 16);
  v9(v10, v5, v7);
  *v3 = v8;
  (*(v4 + 104))(v3, enum case for IDCSAnalytics.PhysicalPresentmentRequestedEventOutcome.presentmentFailed(_:), v48);
  v12 = *(v0 + 96);
  v11 = *(v0 + 104);
  v13 = *(v0 + 88);
  v14 = *(v0 + 32);
  v43 = *(*(v0 + 296) + 32);
  v43(*(v0 + 336), *(v0 + 312), *(v0 + 288));
  swift_allocError();
  v9(v15, v11, v13);
  swift_willThrow();

  (*(v12 + 8))(v11, v13);
  if (v46 == 1 && !*(v14 + 16))
  {
    v16 = *(v0 + 48);
    v17 = *(v0 + 24);
    v18 = type metadata accessor for PresentmentRequestInterpretation(0);
    sub_100046360(v17 + *(v18 + 24), v16, &qword_100202378, &unk_1001ACE70);
    v19 = type metadata accessor for IdentityReaderAuthenticator(0);
    v20 = (*(*(v19 - 8) + 48))(v16, 1, v19);
    v21 = *(v0 + 48);
    if (v20 == 1)
    {
      sub_10000A0D4(v21, &qword_100202378, &unk_1001ACE70);
      v47 = 0;
    }

    else
    {
      v22 = *(v21 + *(v19 + 32));
      sub_1000DC488(v21, type metadata accessor for IdentityReaderAuthenticator);
      v47 = v22 == 0;
    }

    v23 = *(v0 + 328);
    v24 = *(v0 + 320);
    v26 = *(v0 + 296);
    v25 = *(v0 + 304);
    v27 = *(v0 + 288);
    v28 = *(v0 + 40);
    v29 = *(v26 + 16);
    v29(v23, *(v0 + 336), v27);
    v30 = type metadata accessor for TaskPriority();
    (*(*(v30 - 8) + 56))(v28, 1, 1, v30);
    v29(v24, v23, v27);
    v31 = (*(v26 + 80) + 48) & ~*(v26 + 80);
    v32 = v31 + v25;
    v33 = swift_allocObject();
    *(v33 + 2) = 0;
    *(v33 + 3) = 0;
    *(v33 + 4) = v49;
    *(v33 + 5) = v50;
    v43(&v33[v31], v24, v27);
    v34 = &v33[v32];
    *v34 = v44;
    v34[1] = v45;
    v34[2] = v47;
    sub_100032EBC(v49, v50);
    sub_1000BDFA8(0, 0, v28, &unk_1001AD1F0, v33);

    (*(v26 + 8))(v23, v27);
  }

  v36 = *(v0 + 360);
  v35 = *(v0 + 368);
  v37 = *(v0 + 352);
  v38 = *(v0 + 336);
  v40 = *(v0 + 288);
  v39 = *(v0 + 296);
  DIPSignpost.end(workflowID:isBackground:)(0, 2);
  sub_10001C120(v49, v50);
  (*(v39 + 8))(v38, v40);
  (*(v36 + 8))(v35, v37);

  v41 = *(v0 + 8);

  return v41();
}

uint64_t sub_1000C61BC(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  type metadata accessor for ISO18013Version();
  v2[4] = swift_task_alloc();
  v3 = type metadata accessor for ISO18013Response.Status();
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();
  v4 = type metadata accessor for ISO18013Response();
  v2[8] = v4;
  v2[9] = *(v4 - 8);
  v2[10] = swift_task_alloc();
  v5 = type metadata accessor for DIPError.Code();
  v2[11] = v5;
  v2[12] = *(v5 - 8);
  v2[13] = swift_task_alloc();
  type metadata accessor for DIPSignpost.Config();
  v2[14] = swift_task_alloc();
  v6 = type metadata accessor for DIPSignpost();
  v2[15] = v6;
  v2[16] = *(v6 - 8);
  v2[17] = swift_task_alloc();
  v7 = type metadata accessor for Logger();
  v2[18] = v7;
  v2[19] = *(v7 - 8);
  v2[20] = swift_task_alloc();
  v2[21] = swift_task_alloc();

  return _swift_task_switch(sub_1000C6450, 0, 0);
}

uint64_t sub_1000C6450(uint64_t a1)
{
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "PresentmentResponseBuilder buildErrorResponse", v4, 2u);
  }

  v5 = v1[21];
  v6 = v1[18];
  v7 = v1[19];
  v8 = v1[3];

  v9 = *(v7 + 8);
  v1[22] = v9;
  v9(v5, v6);
  static IDCSSignposts.presentmentBuildErrorResponse.getter();
  DIPSignpost.init(_:)();
  v10 = *(v8 + 72);
  v1[23] = v10;

  return _swift_task_switch(sub_1000C6588, v10, 0);
}

uint64_t sub_1000C6588()
{
  if (*(*(v0 + 184) + 160))
  {

    *(v0 + 248) = ISO18013SessionCryptarch.isReadyForEncryption.getter() & 1;

    v1 = sub_1000C6980;
  }

  else
  {
    v1 = sub_1000C6620;
  }

  return _swift_task_switch(v1, 0, 0);
}

uint64_t sub_1000C6620(uint64_t a1)
{
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Session cryptor is not ready for encryption; skipping error response", v4, 2u);
  }

  v5 = v1[22];
  v6 = v1[20];
  v7 = v1[18];
  v9 = v1[12];
  v8 = v1[13];
  v10 = v1[11];

  v5(v6, v7);
  (*(v9 + 104))(v8, enum case for DIPError.Code.idcsSessionKeyNotDerived(_:), v10);
  sub_10002688C(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_1000DC984(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();
  v11 = v1[16];
  v12 = v1[17];
  v15 = v1[15];
  (*(v1[12] + 104))(v1[13], enum case for DIPError.Code.internalError(_:), v1[11]);
  swift_errorRetain();
  sub_10002688C(_swiftEmptyArrayStorage);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  DIPSignpost.end(workflowID:isBackground:)(0, 2);
  (*(v11 + 8))(v12, v15);

  v13 = v1[1];

  return v13();
}

uint64_t sub_1000C6980(uint64_t a1)
{
  if (*(v1 + 248))
  {
    v2 = &enum case for ISO18013Response.Status.cborDecodingError(_:);
    v3 = &enum case for ISO18013Response.Status.cborValidationError(_:);
    v4 = *(v1 + 16);
    if (v4 != 2)
    {
      v3 = &enum case for ISO18013Response.Status.generalError(_:);
    }

    if (v4 != 1)
    {
      v2 = v3;
    }

    (*(*(v1 + 48) + 104))(*(v1 + 56), *v2, *(v1 + 40));
    static ISO18013Response.supportedVersion.getter();
    ISO18013Response.init(version:documents:documentErrors:status:)();
    *(v1 + 192) = sub_1000D8560();
    sub_1000DC984(&qword_100202920, &type metadata accessor for ISO18013Response, &protocol conformance descriptor for ISO18013Response);
    v5 = dispatch thunk of CBOREncoder.encode<A>(_:)();
    *(v1 + 200) = 0;
    *(v1 + 208) = v5;
    *(v1 + 216) = v6;
    v21 = *(v1 + 184);

    return _swift_task_switch(sub_1000C6E98, v21, 0);
  }

  else
  {
    defaultLogger()();
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v7, v8, "Session cryptor is not ready for encryption; skipping error response", v9, 2u);
    }

    v10 = *(v1 + 176);
    v11 = *(v1 + 160);
    v12 = *(v1 + 144);
    v14 = *(v1 + 96);
    v13 = *(v1 + 104);
    v15 = *(v1 + 88);

    v10(v11, v12);
    (*(v14 + 104))(v13, enum case for DIPError.Code.idcsSessionKeyNotDerived(_:), v15);
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1000DC984(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    v16 = *(v1 + 128);
    v17 = *(v1 + 136);
    v18 = *(v1 + 120);
    (*(*(v1 + 96) + 104))(*(v1 + 104), enum case for DIPError.Code.internalError(_:), *(v1 + 88));
    swift_errorRetain();
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1000DC984(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    DIPSignpost.end(workflowID:isBackground:)(0, 2);
    (*(v16 + 8))(v17, v18);

    v19 = *(v1 + 8);

    return v19();
  }
}

uint64_t sub_1000C6E98()
{
  v1 = *(v0 + 200);
  v2 = sub_1000DEE04(*(v0 + 208), *(v0 + 216));
  *(v0 + 224) = v1;
  if (v1)
  {
    v4 = sub_1000C7068;
  }

  else
  {
    *(v0 + 232) = v3;
    *(v0 + 240) = v2;
    v4 = sub_1000C6F2C;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1000C6F2C()
{
  v2 = v0[16];
  v1 = v0[17];
  v3 = v0[15];
  v4 = v0[9];
  v5 = v0[10];
  v6 = v0[8];
  sub_1000092BC(v0[26], v0[27]);

  (*(v4 + 8))(v5, v6);
  DIPSignpost.end(workflowID:isBackground:)(0, 2);
  (*(v2 + 8))(v1, v3);

  v7 = v0[1];
  v9 = v0[29];
  v8 = v0[30];

  return v7(v8, v9);
}

uint64_t sub_1000C7068()
{
  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[8];
  sub_1000092BC(v0[26], v0[27]);

  (*(v2 + 8))(v1, v3);
  v5 = v0[16];
  v4 = v0[17];
  v6 = v0[15];
  (*(v0[12] + 104))(v0[13], enum case for DIPError.Code.internalError(_:), v0[11]);
  swift_errorRetain();
  sub_10002688C(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_1000DC984(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  DIPSignpost.end(workflowID:isBackground:)(0, 2);
  (*(v5 + 8))(v4, v6);

  v7 = v0[1];

  return v7();
}

uint64_t sub_1000C72A8(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = type metadata accessor for DIPError.Code();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();
  type metadata accessor for DIPSignpost.Config();
  v3[8] = swift_task_alloc();
  v5 = type metadata accessor for DIPSignpost();
  v3[9] = v5;
  v3[10] = *(v5 - 8);
  v3[11] = swift_task_alloc();
  v6 = type metadata accessor for Logger();
  v3[12] = v6;
  v3[13] = *(v6 - 8);
  v3[14] = swift_task_alloc();
  v3[15] = swift_task_alloc();

  return _swift_task_switch(sub_1000C745C, 0, 0);
}

uint64_t sub_1000C745C(uint64_t a1)
{
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "PresentmentResponseBuilder buildGenericDataResponse", v4, 2u);
  }

  v5 = v1[15];
  v6 = v1[12];
  v7 = v1[13];
  v8 = v1[4];

  v9 = *(v7 + 8);
  v1[16] = v9;
  v9(v5, v6);
  static IDCSSignposts.presentmentBuildGenericDataResponse.getter();
  DIPSignpost.init(_:)();
  v10 = *(v8 + 72);
  v1[17] = v10;

  return _swift_task_switch(sub_1000C7594, v10, 0);
}

uint64_t sub_1000C7594()
{
  if (*(*(v0 + 136) + 160))
  {

    *(v0 + 168) = ISO18013SessionCryptarch.isReadyForEncryption.getter() & 1;

    v1 = sub_1000C7974;
  }

  else
  {
    v1 = sub_1000C762C;
  }

  return _swift_task_switch(v1, 0, 0);
}

uint64_t sub_1000C762C(uint64_t a1)
{
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Session cryptor is not ready for encryption; skipping error response", v4, 2u);
  }

  v5 = v1[16];
  v6 = v1[14];
  v7 = v1[12];
  v9 = v1[6];
  v8 = v1[7];
  v10 = v1[5];

  v5(v6, v7);
  v16 = *(v9 + 104);
  v16(v8, enum case for DIPError.Code.idcsSessionKeyNotDerived(_:), v10);
  sub_10002688C(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_1000DC984(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();
  v12 = v1[10];
  v11 = v1[11];
  v15 = v1[9];
  v16(v1[7], enum case for DIPError.Code.internalError(_:), v1[5]);
  swift_errorRetain();
  sub_10002688C(_swiftEmptyArrayStorage);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  DIPSignpost.end(workflowID:isBackground:)(0, 2);
  (*(v12 + 8))(v11, v15);

  v13 = v1[1];

  return v13();
}

uint64_t sub_1000C7974(uint64_t a1)
{
  if (*(v1 + 168))
  {
    v2 = *(v1 + 136);

    return _swift_task_switch(sub_1000C7D0C, v2, 0);
  }

  else
  {
    defaultLogger()();
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, v4, "Session cryptor is not ready for encryption; skipping error response", v5, 2u);
    }

    v6 = *(v1 + 128);
    v7 = *(v1 + 112);
    v8 = *(v1 + 96);
    v10 = *(v1 + 48);
    v9 = *(v1 + 56);
    v11 = *(v1 + 40);

    v6(v7, v8);
    v17 = *(v10 + 104);
    v17(v9, enum case for DIPError.Code.idcsSessionKeyNotDerived(_:), v11);
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1000DC984(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    v13 = *(v1 + 80);
    v12 = *(v1 + 88);
    v16 = *(v1 + 72);
    v17(*(v1 + 56), enum case for DIPError.Code.internalError(_:), *(v1 + 40));
    swift_errorRetain();
    sub_10002688C(_swiftEmptyArrayStorage);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    DIPSignpost.end(workflowID:isBackground:)(0, 2);
    (*(v13 + 8))(v12, v16);

    v14 = *(v1 + 8);

    return v14();
  }
}

uint64_t sub_1000C7D0C()
{
  v1 = sub_1000DEE04(*(v0 + 16), *(v0 + 24));
  *(v0 + 144) = 0;
  *(v0 + 152) = v2;
  *(v0 + 160) = v1;

  return _swift_task_switch(sub_1000C7DA0, 0, 0);
}

uint64_t sub_1000C7DA0()
{
  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[9];
  DIPSignpost.end(workflowID:isBackground:)(0, 2);
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];
  v6 = v0[19];
  v5 = v0[20];

  return v4(v5, v6);
}

uint64_t sub_1000C7E78()
{
  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[9];
  (*(v0[6] + 104))(v0[7], enum case for DIPError.Code.internalError(_:), v0[5]);
  swift_errorRetain();
  sub_10002688C(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_1000DC984(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  DIPSignpost.end(workflowID:isBackground:)(0, 2);
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1000C805C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[14] = a3;
  v4[15] = v3;
  v4[12] = a1;
  v4[13] = a2;
  v5 = type metadata accessor for DIPError.Code();
  v4[16] = v5;
  v4[17] = *(v5 - 8);
  v4[18] = swift_task_alloc();
  v4[19] = type metadata accessor for PresentmentProposal(0);
  v4[20] = swift_task_alloc();
  v4[21] = type metadata accessor for PresentmentResponseBuilder.DBResults(0);
  v4[22] = swift_task_alloc();
  sub_100004E70(&qword_1002014D0, &unk_1001AD120);
  v4[23] = swift_task_alloc();
  v6 = type metadata accessor for Logger();
  v4[24] = v6;
  v4[25] = *(v6 - 8);
  v4[26] = swift_task_alloc();
  v4[27] = swift_task_alloc();
  v4[28] = swift_task_alloc();
  v4[29] = swift_task_alloc();

  return _swift_task_switch(sub_1000C8238, 0, 0);
}

uint64_t sub_1000C8238(uint64_t a1)
{
  v124 = v1;
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "PresentmentResponseBuilder loadPayloadDetailsIfNeeded", v4, 2u);
  }

  v5 = v1[29];
  v6 = v1[24];
  v7 = v1[25];
  v8 = v1[13];

  v9 = *(v7 + 8);
  v9(v5, v6);
  if (*(v8 + 24) && (v10 = v1[23], sub_100046360(v1[13] + *(v1[19] + 32), v10, &qword_1002014D0, &unk_1001AD120), v11 = type metadata accessor for COSE_Sign1(), v12 = (*(*(v11 - 8) + 48))(v10, 1, v11), sub_10000A0D4(v10, &qword_1002014D0, &unk_1001AD120), v12 != 1))
  {
    defaultLogger()();
    v81 = Logger.logObject.getter();
    v82 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v81, v82))
    {
      v83 = swift_slowAlloc();
      *v83 = 0;
      _os_log_impl(&_mh_execute_header, v81, v82, "Proposal already contains payload details, no need to load them now", v83, 2u);
    }

    v84 = v1[28];
    v85 = v1[24];
    v86 = v1[13];
    v87 = v1[14];
    v88 = v1[12];

    v9(v84, v85);
    sub_1000DC5D0(v86, v88, type metadata accessor for PresentmentProposal);
    v122 = v1[14];
    v89 = v87;

    v90 = v1[1];

    return v90(v122);
  }

  else
  {
    v13 = *v1[13];
    v1[30] = v13;
    v14 = [v13 credentialIdentifier];
    v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v17 = v16;

    defaultLogger()();

    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.debug.getter();

    v20 = os_log_type_enabled(v18, v19);
    v21 = v1[27];
    v22 = v1[24];
    v109 = v15;
    v120 = v9;
    if (v20)
    {
      v117 = v1[27];
      v23 = v15;
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v123[0] = v25;
      *v24 = 136315138;
      *(v24 + 4) = sub_10010150C(v23, v17, v123);
      _os_log_impl(&_mh_execute_header, v18, v19, "Loading payload details for credential %s", v24, 0xCu);
      sub_100005090(v25);

      v26 = v117;
    }

    else
    {

      v26 = v21;
    }

    v9(v26, v22);
    v27 = (v1[13] + *(v1[19] + 40));
    v28 = *v27;
    v1[31] = *v27;
    v29 = v27[1];
    v1[32] = v29;
    v111 = v29;
    v110 = *v28;
    v105 = *(v29 + 16);
    v30 = (v105)(*v28);
    v32 = v31;
    v1[33] = v30;
    v1[34] = v31;
    defaultLogger()();
    sub_100009708(v30, v32);
    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.debug.getter();
    sub_1000092BC(v30, v32);
    v35 = os_log_type_enabled(v33, v34);
    v36 = v1[26];
    v37 = v1[24];
    v107 = v30;
    v108 = v17;
    v106 = v32;
    if (v35)
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v123[0] = v39;
      *v38 = 136315138;
      v40 = Data.base16EncodedString()();
      v41 = sub_10010150C(v40._countAndFlagsBits, v40._object, v123);

      *(v38 + 4) = v41;
      _os_log_impl(&_mh_execute_header, v33, v34, "Using presentment key %s", v38, 0xCu);
      sub_100005090(v39);
    }

    v120(v36, v37);
    v42 = v1[19];
    v43 = v1[13];
    v44 = *(v43 + 32);
    v1[35] = v44;
    v45 = *(v43 + *(v42 + 48));
    v112 = v1;
    v1[36] = v45;
    sub_100004E70(&qword_100202458, &unk_1001ACF20);
    v46 = static _DictionaryStorage.copy(original:)();
    v47 = v46;
    v48 = v45 + 64;
    v49 = 1 << *(v45 + 32);
    v50 = -1;
    if (v49 < 64)
    {
      v50 = ~(-1 << v49);
    }

    v51 = v50 & *(v45 + 64);
    v52 = (v49 + 63) >> 6;
    v114 = v46 + 64;
    v115 = v45;
    v104 = v44;

    v57 = 0;
    v113 = v47;
    if (v51)
    {
      while (1)
      {
        v58 = __clz(__rbit64(v51));
        v51 &= v51 - 1;
LABEL_19:
        v61 = v58 | (v57 << 6);
        v62 = (*(v115 + 48) + 16 * v61);
        v63 = *v62;
        v64 = *(*(v115 + 56) + 8 * v61);
        v65 = *(v64 + 16);
        if (v65)
        {
          v116 = *v62;
          v66 = v62[1];
          sub_100004E70(&qword_1002004F8, &qword_1001AAFA8);
          v67 = swift_allocObject();
          v68 = j__malloc_size(v67);
          v69 = v68 - 32;
          if (v68 < 32)
          {
            v69 = v68 - 17;
          }

          v67[2] = v65;
          v67[3] = 2 * (v69 >> 4);
          v70 = sub_100122774(v123, v67 + 4, v65, v64);
          v118 = v123[0];
          v121 = v70;

          v53 = sub_1000BAE9C(v118);
          if (v121 != v65)
          {
            goto LABEL_49;
          }

          v63 = v116;
          v53 = v66;
          v47 = v113;
        }

        else
        {

          v67 = _swiftEmptyArrayStorage;
        }

        *(v114 + ((v61 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v61;
        v71 = (v47[6] + 16 * v61);
        *v71 = v63;
        v71[1] = v53;
        *(v47[7] + 8 * v61) = v67;
        v72 = v47[2];
        v73 = __OFADD__(v72, 1);
        v74 = v72 + 1;
        if (v73)
        {
          break;
        }

        v47[2] = v74;
        if (!v51)
        {
          goto LABEL_14;
        }
      }

LABEL_48:
      __break(1u);
LABEL_49:
      __break(1u);
    }

    else
    {
LABEL_14:
      v59 = v57;
      while (1)
      {
        v57 = v59 + 1;
        if (__OFADD__(v59, 1))
        {
          __break(1u);
          goto LABEL_48;
        }

        if (v57 >= v52)
        {
          break;
        }

        v60 = *(v48 + 8 * v57);
        ++v59;
        if (v60)
        {
          v58 = __clz(__rbit64(v60));
          v51 = (v60 - 1) & v60;
          goto LABEL_19;
        }
      }

      v75 = v112[14];
      sub_10001A940(v112[15] + 88, (v112 + 2));
      v76 = [v75 authData];
      if (v76)
      {
        v77 = v76;
        v78 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
        v80 = v79;
      }

      else
      {
        v78 = 0;
        v80 = 0xF000000000000000;
      }

      v112[37] = v78;
      v112[38] = v80;
      v92 = [v112[14] elementsToPresent];
      if (v92)
      {
        v93 = v92;
        sub_100004E70(&qword_100201580, &qword_1001AB980);
        v119 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
      }

      else
      {
        v119 = 0;
      }

      v94 = v112[15];
      v95 = *(v94 + 56);
      if (v95)
      {
        v96 = 0;
      }

      else
      {
        v97 = *(v94 + 40);
        if (v97 == 1)
        {
          v96 = 1;
        }

        else
        {
          v96 = 2 * (v97 == 2);
        }
      }

      v98 = v105(v110, v111);
      v100 = v99;
      v112[39] = v98;
      v112[40] = v99;
      sub_10001A940((v112 + 2), (v112 + 7));
      v101 = swift_allocObject();
      v112[41] = v101;
      *(v101 + 16) = v109;
      *(v101 + 24) = v108;
      *(v101 + 32) = v107;
      *(v101 + 40) = v106;
      sub_10001AA08((v112 + 7), v101 + 48);
      *(v101 + 88) = v78;
      *(v101 + 96) = v80;
      *(v101 + 104) = v98;
      *(v101 + 112) = v100;
      *(v101 + 120) = v113;
      *(v101 + 128) = v119;
      *(v101 + 136) = v96;
      *(v101 + 144) = v95;
      *(v101 + 152) = v104;
      sub_100009708(v107, v106);

      sub_100032EBC(v78, v80);
      sub_100009708(v98, v100);
      v102 = swift_allocObject();
      v112[42] = v102;
      *(v102 + 16) = &unk_1001AD168;
      *(v102 + 24) = v101;

      v103 = swift_task_alloc();
      v112[43] = v103;
      *v103 = v112;
      v103[1] = sub_1000C8C74;
      v56 = v112[21];
      v53 = v112[22];
      v54 = &unk_1001AD178;
      v55 = v102;
    }

    return AsyncCoreDataContainer.read<A>(_:)(v53, v54, v55, v56);
  }
}

uint64_t sub_1000C8C74()
{
  *(*v1 + 352) = v0;

  if (v0)
  {
    v2 = sub_1000C9050;
  }

  else
  {

    v2 = sub_1000C8D98;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1000C8D98()
{
  v27 = *(v0 + 280);
  v28 = *(v0 + 288);
  v30 = *(v0 + 240);
  v2 = *(v0 + 168);
  v1 = *(v0 + 176);
  v3 = *(v0 + 152);
  v4 = *(v0 + 160);
  v5 = *(v0 + 104);
  v6 = (v1 + v2[6]);
  v7 = *v6;
  v8 = v6[1];
  v9 = *(v1 + v2[5]);
  v26 = *(v0 + 248);
  sub_100046360(v1, v4 + v3[8], &qword_1002014D0, &unk_1001AD120);
  v10 = *(v5 + v3[9]);
  v11 = *(v5 + v3[11]);
  *v4 = v30;
  v4[1] = v7;
  v4[2] = v8;
  v4[3] = v9;
  v4[4] = v27;
  *(v4 + v3[9]) = v10;
  *(v4 + v3[10]) = v26;
  *(v4 + v3[11]) = v11;
  *(v4 + v3[12]) = v28;
  v12 = *(v0 + 240);
  if (*(v1 + v2[7]))
  {

    v13 = v12;

    sub_100004E70(&qword_100201580, &qword_1001AB980);
    v14.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  else
  {

    v15 = v12;

    v14.super.isa = 0;
  }

  v17 = *(v0 + 312);
  v16 = *(v0 + 320);
  v19 = *(v0 + 296);
  v18 = *(v0 + 304);
  v21 = *(v0 + 264);
  v20 = *(v0 + 272);
  v22 = *(v0 + 176);
  v29 = *(v0 + 160);
  v23 = *(v0 + 96);
  v31 = [*(v0 + 112) copyWithElementsToPresent:{v14.super.isa, v26, v27}];

  sub_1000092BC(v17, v16);
  sub_10001C120(v19, v18);
  sub_1000092BC(v21, v20);
  sub_100005090((v0 + 16));
  sub_1000DC488(v22, type metadata accessor for PresentmentResponseBuilder.DBResults);
  sub_1000DC9CC(v29, v23, type metadata accessor for PresentmentProposal);

  v24 = *(v0 + 8);

  return v24(v31);
}

uint64_t sub_1000C9050()
{
  v2 = v0[39];
  v1 = v0[40];
  v4 = v0[37];
  v3 = v0[38];
  v5 = v0[34];
  v6 = v0[33];
  v7 = v0[17];
  v10 = v0[18];
  v11 = v0[16];

  sub_1000092BC(v2, v1);
  sub_10001C120(v4, v3);
  sub_1000092BC(v6, v5);
  sub_100005090(v0 + 2);
  (*(v7 + 104))(v10, enum case for DIPError.Code.internalError(_:), v11);
  swift_errorRetain();
  sub_10002688C(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_1000DC984(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v8 = v0[1];

  return v8();
}

uint64_t sub_1000C9298(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 768) = v19;
  *(v8 + 1112) = v18;
  *(v8 + 736) = v16;
  *(v8 + 752) = v17;
  *(v8 + 720) = v15;
  *(v8 + 712) = a8;
  *(v8 + 704) = a7;
  *(v8 + 696) = a6;
  *(v8 + 688) = a5;
  *(v8 + 680) = a4;
  *(v8 + 672) = a3;
  *(v8 + 664) = a2;
  *(v8 + 656) = a1;
  sub_100004E70(&qword_1002014D0, &unk_1001AD120);
  *(v8 + 776) = swift_task_alloc();
  type metadata accessor for PayloadMetadata(0);
  *(v8 + 784) = swift_task_alloc();
  v9 = type metadata accessor for DIPError.Code();
  *(v8 + 792) = v9;
  *(v8 + 800) = *(v9 - 8);
  *(v8 + 808) = swift_task_alloc();
  v10 = type metadata accessor for KeyLookupInfo(0);
  *(v8 + 816) = v10;
  *(v8 + 824) = *(v10 - 8);
  *(v8 + 832) = swift_task_alloc();
  sub_100004E70(&qword_100202498, &unk_1001AD910);
  *(v8 + 840) = swift_task_alloc();
  *(v8 + 848) = swift_task_alloc();
  *(v8 + 856) = swift_task_alloc();
  v11 = type metadata accessor for Logger();
  *(v8 + 864) = v11;
  *(v8 + 872) = *(v11 - 8);
  *(v8 + 880) = swift_task_alloc();
  *(v8 + 888) = swift_task_alloc();
  *(v8 + 896) = swift_task_alloc();
  v12 = type metadata accessor for NSManagedObjectContext.ScheduledTaskType();
  *(v8 + 904) = v12;
  *(v8 + 912) = *(v12 - 8);
  *(v8 + 920) = swift_task_alloc();
  *(v8 + 928) = type metadata accessor for PresentmentResponseBuilder.DBResult(0);
  *(v8 + 936) = swift_task_alloc();

  return _swift_task_switch(sub_1000C95A8, 0, 0);
}

uint64_t sub_1000C95A8()
{
  v1 = v0[115];
  v2 = v0[114];
  v3 = v0[113];
  v4 = v0[87];
  v5 = v0[86];
  v6 = v0[85];
  v7 = v0[84];
  v8 = v0[83];
  v9 = swift_allocObject();
  v0[118] = v9;
  v9[2] = v8;
  v9[3] = v7;
  v9[4] = v6;
  v9[5] = v5;
  v9[6] = v4;

  sub_100009708(v5, v4);
  v10 = swift_allocObject();
  v0[119] = v10;
  *(v10 + 16) = sub_1000DC550;
  *(v10 + 24) = v9;
  (*(v2 + 104))(v1, enum case for NSManagedObjectContext.ScheduledTaskType.immediate(_:), v3);

  v11 = swift_task_alloc();
  v0[120] = v11;
  *v11 = v0;
  v11[1] = sub_1000C9748;
  v12 = v0[117];
  v13 = v0[116];
  v14 = v0[115];

  return NSManagedObjectContext.perform<A>(schedule:_:)(v12, v14, sub_1000BBAFC, v10, v13);
}

uint64_t sub_1000C9748()
{
  v2 = *v1;
  *(*v1 + 968) = v0;

  if (v0)
  {
    (*(v2[114] + 8))(v2[115], v2[113]);

    v3 = sub_1000CA120;
  }

  else
  {
    v4 = v2[115];
    v5 = v2[114];
    v6 = v2[113];

    (*(v5 + 8))(v4, v6);
    v3 = sub_1000C98C4;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1000C98C4()
{
  v1 = *(v0 + 936);
  *(v0 + 416) = 0u;
  *(v0 + 432) = 0u;
  *(v0 + 448) = 0;
  v2 = v1[3];
  v3 = v1[4];
  v4 = v1[1];
  *(v0 + 48) = v1[2];
  *(v0 + 16) = *v1;
  *(v0 + 32) = v4;
  *(v0 + 64) = v2;
  *(v0 + 80) = v3;
  v5 = *(v0 + 56);
  switch(v5)
  {
    case 2:
      sub_1000DC574(v0 + 16, v0 + 176);
      defaultLogger()();
      v41 = Logger.logObject.getter();
      v42 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v41, v42))
      {
        v43 = swift_slowAlloc();
        *v43 = 0;
        _os_log_impl(&_mh_execute_header, v41, v42, "Payload protection type is payload encryption key", v43, 2u);
      }

      v44 = *(v0 + 936);
      v45 = *(v0 + 928);
      v46 = *(v0 + 880);
      v47 = *(v0 + 872);
      v48 = *(v0 + 864);
      v49 = *(v0 + 848);
      v50 = *(v0 + 824);
      v51 = *(v0 + 816);

      (*(v47 + 8))(v46, v48);
      sub_100046360(v44 + *(v45 + 20), v49, &qword_100202498, &unk_1001AD910);
      v52 = (*(v50 + 48))(v49, 1, v51);
      v53 = *(v0 + 848);
      if (v52 != 1)
      {
        v59 = *(v0 + 840);
        v60 = *(v0 + 832);
        v61 = *(v0 + 824);
        v62 = *(v0 + 816);
        v63 = *(v0 + 704);
        sub_1000DC9CC(v53, v60, type metadata accessor for KeyLookupInfo);
        sub_100009278(v63, v63[3]);
        v64 = *(v0 + 40);
        v65 = *(v0 + 48);
        v66 = *(v0 + 16);
        sub_1000DC5D0(v60, v59, type metadata accessor for KeyLookupInfo);
        (*(v61 + 56))(v59, 0, 1, v62);
        v67 = swift_task_alloc();
        *(v0 + 1008) = v67;
        *v67 = v0;
        v67[1] = sub_1000CAF00;
        v20 = *(v0 + 840);
        v26 = *(v0 + 720);
        v25 = *(v0 + 712);
        v21 = v0 + 456;
        v22 = v64;
        v23 = v65;
        v24 = v66;
LABEL_19:

        return sub_1000F1194(v21, v22, v23, v24, v20, v25, v26);
      }

      v1 = *(v0 + 936);
      v54 = *(v0 + 808);
      v55 = *(v0 + 800);
      v56 = *(v0 + 792);
      sub_10000A0D4(v53, &qword_100202498, &unk_1001AD910);
      (*(v55 + 104))(v54, enum case for DIPError.Code.idcsMissingPayloadProtectionKey(_:), v56);
      sub_10002688C(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_1000DC984(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
      swift_allocError();
      break;
    case 1:
      sub_1000DC574(v0 + 16, v0 + 256);
      defaultLogger()();
      v27 = Logger.logObject.getter();
      v28 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        *v29 = 0;
        _os_log_impl(&_mh_execute_header, v27, v28, "Payload protection type is device encryption key", v29, 2u);
      }

      v30 = *(v0 + 936);
      v31 = *(v0 + 928);
      v32 = *(v0 + 888);
      v33 = *(v0 + 872);
      v34 = *(v0 + 864);
      v35 = *(v0 + 704);

      (*(v33 + 8))(v32, v34);
      sub_100009278(v35, v35[3]);
      v37 = *(v0 + 40);
      v36 = *(v0 + 48);
      v38 = *(v0 + 16);
      v39 = *(v31 + 20);
      v40 = swift_task_alloc();
      *(v0 + 992) = v40;
      *v40 = v0;
      v40[1] = sub_1000CA8B8;
      v26 = *(v0 + 720);
      v25 = *(v0 + 712);
      v21 = v0 + 576;
      v20 = v30 + v39;
      v22 = v37;
      v23 = v36;
      v24 = v38;
      goto LABEL_19;
    case 0:
      sub_1000DC574(v0 + 16, v0 + 336);
      defaultLogger()();
      v6 = Logger.logObject.getter();
      v7 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v6, v7))
      {
        v8 = swift_slowAlloc();
        *v8 = 0;
        _os_log_impl(&_mh_execute_header, v6, v7, "Payload protection type is standard, extracting elements from credential payload", v8, 2u);
      }

      v9 = *(v0 + 896);
      v10 = *(v0 + 872);
      v11 = *(v0 + 864);
      v12 = *(v0 + 856);
      v13 = *(v0 + 824);
      v14 = *(v0 + 816);
      v15 = *(v0 + 704);

      (*(v10 + 8))(v9, v11);
      sub_100009278(v15, v15[3]);
      v17 = *(v0 + 40);
      v16 = *(v0 + 48);
      v18 = *(v0 + 16);
      (*(v13 + 56))(v12, 1, 1, v14);
      v19 = swift_task_alloc();
      *(v0 + 976) = v19;
      *v19 = v0;
      v19[1] = sub_1000CA23C;
      v20 = *(v0 + 856);
      v21 = v0 + 616;
      v22 = v17;
      v23 = v16;
      v24 = v18;
      v25 = 0;
      v26 = 0xF000000000000000;
      goto LABEL_19;
    default:
      (*(*(v0 + 800) + 104))(*(v0 + 808), enum case for DIPError.Code.internalError(_:), *(v0 + 792));
      sub_1000DC574(v0 + 16, v0 + 96);
      sub_10002688C(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_1000DC984(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
      swift_allocError();
      break;
  }

  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();
  sub_1000BCE9C(v0 + 16);
  sub_10000A0D4(v0 + 416, &qword_100202460, &unk_1001AD180);
  sub_1000DC488(v1, type metadata accessor for PresentmentResponseBuilder.DBResult);

  v57 = *(v0 + 8);

  return v57();
}

uint64_t sub_1000CA120()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000CA23C()
{
  v2 = *v1;
  *(*v1 + 984) = v0;

  sub_10000A0D4(*(v2 + 856), &qword_100202498, &unk_1001AD910);
  if (v0)
  {
    v3 = sub_1000CA764;
  }

  else
  {
    v3 = sub_1000CA380;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1000CA380()
{
  sub_10000A0D4(v0 + 416, &qword_100202460, &unk_1001AD180);
  v1 = *(v0 + 632);
  *(v0 + 416) = *(v0 + 616);
  *(v0 + 432) = v1;
  *(v0 + 448) = *(v0 + 648);
  sub_100046360(v0 + 416, v0 + 536, &qword_100202460, &unk_1001AD180);
  if (*(v0 + 560))
  {
    sub_10001AA08((v0 + 536), v0 + 496);
    v2 = *(v0 + 520);
    v3 = *(v0 + 528);
    sub_100009278((v0 + 496), v2);
    v12 = (*(v3 + 8) + **(v3 + 8));
    v4 = swift_task_alloc();
    *(v0 + 1024) = v4;
    *v4 = v0;
    v4[1] = sub_1000CB5B8;
    v5 = *(v0 + 784);

    return v12(v5, 1, v2, v3);
  }

  else
  {
    v7 = *(v0 + 936);
    v8 = *(v0 + 808);
    v9 = *(v0 + 800);
    v10 = *(v0 + 792);
    sub_10000A0D4(v0 + 536, &qword_100202460, &unk_1001AD180);
    (*(v9 + 104))(v8, enum case for DIPError.Code.idcsErrorInitializingPayloadProcessor(_:), v10);
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1000DC984(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    sub_1000BCE9C(v0 + 16);
    sub_10000A0D4(v0 + 416, &qword_100202460, &unk_1001AD180);
    sub_1000DC488(v7, type metadata accessor for PresentmentResponseBuilder.DBResult);

    v11 = *(v0 + 8);

    return v11();
  }
}

uint64_t sub_1000CA764()
{
  v1 = *(v0 + 936);
  sub_1000BCE9C(v0 + 16);
  sub_10000A0D4(v0 + 416, &qword_100202460, &unk_1001AD180);
  sub_1000DC488(v1, type metadata accessor for PresentmentResponseBuilder.DBResult);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1000CA8B8()
{
  *(*v1 + 1000) = v0;

  if (v0)
  {
    v2 = sub_1000CADAC;
  }

  else
  {
    v2 = sub_1000CA9CC;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1000CA9CC()
{
  sub_10000A0D4(v0 + 416, &qword_100202460, &unk_1001AD180);
  v1 = *(v0 + 592);
  *(v0 + 416) = *(v0 + 576);
  *(v0 + 432) = v1;
  *(v0 + 448) = *(v0 + 608);
  sub_100046360(v0 + 416, v0 + 536, &qword_100202460, &unk_1001AD180);
  if (*(v0 + 560))
  {
    sub_10001AA08((v0 + 536), v0 + 496);
    v2 = *(v0 + 520);
    v3 = *(v0 + 528);
    sub_100009278((v0 + 496), v2);
    v12 = (*(v3 + 8) + **(v3 + 8));
    v4 = swift_task_alloc();
    *(v0 + 1024) = v4;
    *v4 = v0;
    v4[1] = sub_1000CB5B8;
    v5 = *(v0 + 784);

    return v12(v5, 1, v2, v3);
  }

  else
  {
    v7 = *(v0 + 936);
    v8 = *(v0 + 808);
    v9 = *(v0 + 800);
    v10 = *(v0 + 792);
    sub_10000A0D4(v0 + 536, &qword_100202460, &unk_1001AD180);
    (*(v9 + 104))(v8, enum case for DIPError.Code.idcsErrorInitializingPayloadProcessor(_:), v10);
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1000DC984(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    sub_1000BCE9C(v0 + 16);
    sub_10000A0D4(v0 + 416, &qword_100202460, &unk_1001AD180);
    sub_1000DC488(v7, type metadata accessor for PresentmentResponseBuilder.DBResult);

    v11 = *(v0 + 8);

    return v11();
  }
}

uint64_t sub_1000CADAC()
{
  v1 = *(v0 + 936);
  sub_1000BCE9C(v0 + 16);
  sub_10000A0D4(v0 + 416, &qword_100202460, &unk_1001AD180);
  sub_1000DC488(v1, type metadata accessor for PresentmentResponseBuilder.DBResult);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1000CAF00()
{
  v2 = *v1;
  *(*v1 + 1016) = v0;

  sub_10000A0D4(*(v2 + 840), &qword_100202498, &unk_1001AD910);
  if (v0)
  {
    v3 = sub_1000CB444;
  }

  else
  {
    v3 = sub_1000CB044;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1000CB044()
{
  sub_1000DC488(*(v0 + 832), type metadata accessor for KeyLookupInfo);
  sub_10000A0D4(v0 + 416, &qword_100202460, &unk_1001AD180);
  v1 = *(v0 + 472);
  *(v0 + 416) = *(v0 + 456);
  *(v0 + 432) = v1;
  *(v0 + 448) = *(v0 + 488);
  sub_100046360(v0 + 416, v0 + 536, &qword_100202460, &unk_1001AD180);
  if (*(v0 + 560))
  {
    sub_10001AA08((v0 + 536), v0 + 496);
    v2 = *(v0 + 520);
    v3 = *(v0 + 528);
    sub_100009278((v0 + 496), v2);
    v12 = (*(v3 + 8) + **(v3 + 8));
    v4 = swift_task_alloc();
    *(v0 + 1024) = v4;
    *v4 = v0;
    v4[1] = sub_1000CB5B8;
    v5 = *(v0 + 784);

    return v12(v5, 1, v2, v3);
  }

  else
  {
    v7 = *(v0 + 936);
    v8 = *(v0 + 808);
    v9 = *(v0 + 800);
    v10 = *(v0 + 792);
    sub_10000A0D4(v0 + 536, &qword_100202460, &unk_1001AD180);
    (*(v9 + 104))(v8, enum case for DIPError.Code.idcsErrorInitializingPayloadProcessor(_:), v10);
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1000DC984(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    sub_1000BCE9C(v0 + 16);
    sub_10000A0D4(v0 + 416, &qword_100202460, &unk_1001AD180);
    sub_1000DC488(v7, type metadata accessor for PresentmentResponseBuilder.DBResult);

    v11 = *(v0 + 8);

    return v11();
  }
}

uint64_t sub_1000CB444()
{
  v1 = v0[117];
  v2 = v0[104];
  sub_1000BCE9C((v0 + 2));
  sub_1000DC488(v2, type metadata accessor for KeyLookupInfo);
  sub_10000A0D4((v0 + 52), &qword_100202460, &unk_1001AD180);
  sub_1000DC488(v1, type metadata accessor for PresentmentResponseBuilder.DBResult);

  v3 = v0[1];

  return v3();
}

uint64_t sub_1000CB5B8()
{
  *(*v1 + 1032) = v0;

  if (v0)
  {
    v2 = sub_1000CC5D8;
  }

  else
  {
    v2 = sub_1000CB6CC;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1000CB6CC()
{
  v1 = objc_opt_self();
  v0[130] = v1;
  v2 = [v1 standardUserDefaults];
  v3._object = 0x80000001001B9350;
  v3._countAndFlagsBits = 0xD000000000000027;
  v4 = NSUserDefaults.internalBool(forKey:)(v3);

  if (v4 || sub_1000EBB34(v0[91], v0[92], *(v0[98] + 40), *(v0[98] + 48)))
  {
    v5 = v0[65];
    v6 = v0[66];
    sub_100009278(v0 + 62, v5);
    v13 = (*(v6 + 32) + **(v6 + 32));
    v7 = swift_task_alloc();
    v0[131] = v7;
    *v7 = v0;
    v7[1] = sub_1000CBAC0;
    v8 = v0[97];

    return v13(v8, v5, v6);
  }

  else
  {
    v10 = v0[117];
    v11 = v0[98];
    (*(v0[100] + 104))(v0[101], enum case for DIPError.Code.idcsPayloadPresentmentKeyMismatch(_:), v0[99]);
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1000DC984(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    sub_1000BCE9C((v0 + 2));
    sub_10000A0D4((v0 + 52), &qword_100202460, &unk_1001AD180);
    sub_1000DC488(v10, type metadata accessor for PresentmentResponseBuilder.DBResult);
    sub_1000DC488(v11, type metadata accessor for PayloadMetadata);
    sub_100005090(v0 + 62);

    v12 = v0[1];

    return v12();
  }
}

uint64_t sub_1000CBAC0()
{
  *(*v1 + 1056) = v0;

  if (v0)
  {
    v2 = sub_1000CC734;
  }

  else
  {
    v2 = sub_1000CBBD4;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1000CBBD4()
{
  v1 = v0[93];
  v2 = v0[65];
  v3 = v0[66];
  sub_100009278(v0 + 62, v2);
  v6 = (*(v3 + 16) + **(v3 + 16));
  v4 = swift_task_alloc();
  v0[133] = v4;
  *v4 = v0;
  v4[1] = sub_1000CBD10;

  return v6(v1, v2, v3);
}

uint64_t sub_1000CBD10(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 1072) = a1;
  *(v3 + 1080) = v1;

  if (v1)
  {
    v4 = sub_1000CC8B0;
  }

  else
  {
    v4 = sub_1000CBE28;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1000CBE28()
{
  if (*(v0 + 1112))
  {
    v1 = *(v0 + 1072);
    v2 = *(v0 + 752);
    v3 = *(v0 + 936);
    v4 = *(v0 + 784);
    v5 = *(v0 + 776);
    v6 = *(v0 + 656);

    sub_10000A0D4(v0 + 416, &qword_100202460, &unk_1001AD180);
    sub_1000DC488(v3, type metadata accessor for PresentmentResponseBuilder.DBResult);
    sub_100046524(v5, v6, &qword_1002014D0, &unk_1001AD120);
    v7 = *(v0 + 24);
    v8 = *(v0 + 32);

    sub_1000BCE9C(v0 + 16);
    v9 = type metadata accessor for PresentmentResponseBuilder.DBResults(0);
    *(v6 + v9[5]) = v1;
    v10 = (v6 + v9[6]);
    *v10 = v7;
    v10[1] = v8;
    *(v6 + v9[7]) = v2;
    sub_1000DC488(v4, type metadata accessor for PayloadMetadata);
    sub_100005090((v0 + 496));

    v11 = *(v0 + 8);

    return v11();
  }

  else
  {
    v13 = *(v0 + 760);
    v14 = [*(v0 + 1040) standardUserDefaults];
    v15._object = 0x80000001001B7CD0;
    v15._countAndFlagsBits = 0xD000000000000016;
    v16 = NSUserDefaults.internalBool(forKey:)(v15);

    if (v16)
    {
      v17 = 2;
    }

    else
    {
      v17 = v13;
    }

    v18 = *(v0 + 520);
    v19 = *(v0 + 528);
    sub_100009278((v0 + 496), v18);
    v20 = *(v0 + 24);
    v21 = *(v0 + 32);
    v25 = (*(v19 + 24) + **(v19 + 24));
    v22 = swift_task_alloc();
    *(v0 + 1088) = v22;
    *v22 = v0;
    v22[1] = sub_1000CC184;
    v23 = *(v0 + 768);
    v24 = *(v0 + 744);

    return v25(v24, v20, v21, v23, v17, v18, v19);
  }
}

uint64_t sub_1000CC184(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 1096) = a1;
  *(v3 + 1104) = v1;

  if (v1)
  {

    v4 = sub_1000CCA48;
  }

  else
  {
    v4 = sub_1000CC2A4;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1000CC2A4()
{
  v1 = *(v0 + 1104);
  v3 = sub_1000BE254(*(v0 + 1096), *(v0 + 1072), *(v0 + 752));
  if (v1)
  {
    v4 = *(v0 + 936);
    v5 = *(v0 + 784);
    v6 = *(v0 + 776);

    sub_1000BCE9C(v0 + 16);
    sub_10000A0D4(v6, &qword_1002014D0, &unk_1001AD120);
    sub_10000A0D4(v0 + 416, &qword_100202460, &unk_1001AD180);
    sub_1000DC488(v4, type metadata accessor for PresentmentResponseBuilder.DBResult);
    sub_1000DC488(v5, type metadata accessor for PayloadMetadata);
  }

  else
  {
    v8 = v2;

    v9 = *(v0 + 936);
    v10 = *(v0 + 784);
    v11 = *(v0 + 776);
    v12 = *(v0 + 656);
    sub_10000A0D4(v0 + 416, &qword_100202460, &unk_1001AD180);
    sub_1000DC488(v9, type metadata accessor for PresentmentResponseBuilder.DBResult);
    sub_100046524(v11, v12, &qword_1002014D0, &unk_1001AD120);
    v13 = *(v0 + 24);
    v14 = *(v0 + 32);

    sub_1000BCE9C(v0 + 16);
    v15 = type metadata accessor for PresentmentResponseBuilder.DBResults(0);
    *(v12 + v15[5]) = v3;
    v16 = (v12 + v15[6]);
    *v16 = v13;
    v16[1] = v14;
    *(v12 + v15[7]) = v8;
    sub_1000DC488(v10, type metadata accessor for PayloadMetadata);
  }

  sub_100005090((v0 + 496));

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_1000CC5D8()
{
  v1 = v0[117];
  sub_1000BCE9C((v0 + 2));
  sub_10000A0D4((v0 + 52), &qword_100202460, &unk_1001AD180);
  sub_1000DC488(v1, type metadata accessor for PresentmentResponseBuilder.DBResult);
  sub_100005090(v0 + 62);

  v2 = v0[1];

  return v2();
}

uint64_t sub_1000CC734()
{
  v1 = v0[117];
  v2 = v0[98];
  sub_1000BCE9C((v0 + 2));
  sub_10000A0D4((v0 + 52), &qword_100202460, &unk_1001AD180);
  sub_1000DC488(v1, type metadata accessor for PresentmentResponseBuilder.DBResult);
  sub_1000DC488(v2, type metadata accessor for PayloadMetadata);
  sub_100005090(v0 + 62);

  v3 = v0[1];

  return v3();
}

uint64_t sub_1000CC8B0()
{
  v1 = v0[117];
  v2 = v0[98];
  v3 = v0[97];
  sub_1000BCE9C((v0 + 2));
  sub_10000A0D4(v3, &qword_1002014D0, &unk_1001AD120);
  sub_10000A0D4((v0 + 52), &qword_100202460, &unk_1001AD180);
  sub_1000DC488(v1, type metadata accessor for PresentmentResponseBuilder.DBResult);
  sub_1000DC488(v2, type metadata accessor for PayloadMetadata);
  sub_100005090(v0 + 62);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1000CCA48()
{
  v1 = v0[117];
  v2 = v0[98];
  v3 = v0[97];
  sub_1000BCE9C((v0 + 2));
  sub_10000A0D4(v3, &qword_1002014D0, &unk_1001AD120);
  sub_10000A0D4((v0 + 52), &qword_100202460, &unk_1001AD180);
  sub_1000DC488(v1, type metadata accessor for PresentmentResponseBuilder.DBResult);
  sub_1000DC488(v2, type metadata accessor for PayloadMetadata);
  sub_100005090(v0 + 62);

  v4 = v0[1];

  return v4();
}

__n128 sub_1000CCBE0@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, void *a4@<X3>, void *a5@<X4>, uint64_t a6@<X8>)
{
  v142 = a5;
  v143 = a1;
  v139 = a6;
  v140 = a4;
  v144 = a3;
  v7 = sub_100004E70(&qword_100200510, qword_1001AB070);
  v8 = __chkstk_darwin(v7 - 8);
  v133 = &v127 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v135 = &v127 - v11;
  __chkstk_darwin(v10);
  v134 = &v127 - v12;
  v137 = type metadata accessor for CredentialKeyType();
  v138 = *(v137 - 8);
  v13 = __chkstk_darwin(v137);
  v136 = &v127 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v141 = &v127 - v16;
  v17 = __chkstk_darwin(v15);
  v19 = &v127 - v18;
  __chkstk_darwin(v17);
  v21 = &v127 - v20;
  v22 = sub_100004E70(&qword_100202498, &unk_1001AD910);
  v23 = __chkstk_darwin(v22 - 8);
  v25 = &v127 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __chkstk_darwin(v23);
  v28 = &v127 - v27;
  __chkstk_darwin(v26);
  v30 = &v127 - v29;
  v31 = type metadata accessor for DIPError.Code();
  v32 = *(v31 - 1);
  __chkstk_darwin(v31);
  v34 = &v127 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = v154;
  v36 = sub_10005218C(a2, v144);
  if (!v35)
  {
    v143 = v32;
    v144 = v31;
    v130 = v21;
    v131 = v28;
    v154 = v34;
    v38 = v141;
    v132 = v30;
    if (v36)
    {
      v39 = v36;
      sub_10005A0A4(v140, v142);
      v41 = v154;
      v43 = v143;
      v42 = v144;
      if (!v40)
      {
        v145 = 0;
        v146 = 0xE000000000000000;
        _StringGuts.grow(_:)(46);

        v145 = 0xD00000000000002CLL;
        v146 = 0x80000001001B93F0;
        v51 = Data.base16EncodedString()();
        String.append(_:)(v51);

        (*(v43 + 104))(v41, enum case for DIPError.Code.idcsMissingPresentmentKey(_:), v42);
        sub_10002688C(_swiftEmptyArrayStorage);
        type metadata accessor for DIPError();
        sub_1000DC984(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
        swift_allocError();
        DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
        swift_willThrow();

        return result;
      }

      v142 = v39;
      v140 = v40;
      v44 = [v40 payload];
      if (!v44)
      {
        (*(v43 + 104))(v41, enum case for DIPError.Code.idcsMissingPayload(_:), v42);
        sub_10002688C(_swiftEmptyArrayStorage);
        type metadata accessor for DIPError();
        sub_1000DC984(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
        swift_allocError();
        DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
        swift_willThrow();

        return result;
      }

      v45 = v44;
      v46 = type metadata accessor for KeyLookupInfo(0);
      v47 = *(v46 - 8);
      v48 = *(v47 + 56);
      v49 = v47 + 56;
      v50 = v132;
      v48(v132, 1, 1, v46);
      sub_10005E914(&v149);
      v129 = v45;
      v127 = v49;
      v128 = v48;
      if (*(&v151 + 1) != 2)
      {
        v52 = v128;
        if (*(&v151 + 1) != 1)
        {
          if (*(&v151 + 1))
          {
            (*(v143 + 104))(v154, enum case for DIPError.Code.internalError(_:), v144);
            sub_10002688C(_swiftEmptyArrayStorage);
            type metadata accessor for DIPError();
            sub_1000DC984(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
            swift_allocError();
            DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
            swift_willThrow();

            sub_1000BCE9C(&v149);
            sub_10000A0D4(v50, &qword_100202498, &unk_1001AD910);
            return result;
          }

          sub_10000A0D4(v50, &qword_100202498, &unk_1001AD910);
          v52(v50, 1, 1, v46);
          goto LABEL_56;
        }

        v154 = v46;
        v147 = &type metadata for CredentialDecryptionKeyIdentifierProvider;
        v148 = &off_1001F4D30;
        v53 = v142;
        v54 = sub_100021FD0(v142, v150.n128_i64[1], v151, v149);
        sub_10001AA20(&v145);
        if (!v54)
        {

LABEL_39:
          v94 = v139;
          v50 = v132;
LABEL_57:
          v125 = type metadata accessor for PresentmentResponseBuilder.DBResult(0);
          sub_100046524(v50, v94 + *(v125 + 20), &qword_100202498, &unk_1001AD910);
          v126 = v152;
          *(v94 + 32) = v151;
          *(v94 + 48) = v126;
          *(v94 + 64) = v153;
          result = v150;
          *v94 = v149;
          *(v94 + 16) = result;
          return result;
        }

        v55 = [v54 identifier];
        v56 = v129;
        if (v55)
        {
          v57 = v55;
          v58 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v60 = v59;

          v61 = [v54 publicKeyIdentifier];
          if (v61)
          {
            v143 = v58;
            v62 = v61;
            v141 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
            v136 = v63;

            v64 = v54;
            v65 = [v64 keyType];
            v144 = v19;
            v66 = v131;
            v67 = v130;
            if (v65)
            {
              v68 = v65;
              static String._unconditionallyBridgeFromObjectiveC(_:)();

              v69 = v134;
              CredentialKeyType.init(rawValue:)();
              v70 = v138;
              v71 = v137;
              if ((*(v138 + 48))(v69, 1, v137) != 1)
              {
                (*(v70 + 32))(v67, v69, v71);
                goto LABEL_42;
              }

              sub_10000A0D4(v69, &qword_100200510, qword_1001AB070);
            }

            v70 = v138;
            v71 = v137;
            (*(v138 + 104))(v67, enum case for CredentialKeyType.invalid(_:), v137);
LABEL_42:

            (*(v70 + 16))(v144, v67, v71);
            v95 = [v64 keyBlob];
            if (v95)
            {
              v96 = v95;
              v135 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
              v98 = v97;
            }

            else
            {

              v135 = 0;
              v98 = 0xF000000000000000;
            }

            v99 = v138;
            v100 = v67;
            v101 = v137;
            (*(v138 + 8))(v100, v137);
            v102 = v132;
            sub_10000A0D4(v132, &qword_100202498, &unk_1001AD910);
            v103 = v144;
            *v66 = v143;
            v66[1] = v60;
            v104 = v136;
            v66[2] = v141;
            v66[3] = v104;
            v105 = v154;
            (*(v99 + 32))(v66 + *(v154 + 6), v103, v101);
            v106 = (v66 + *(v105 + 7));
            *v106 = v135;
            v106[1] = v98;
            v128(v66, 0, 1, v105);
            v107 = v66;
            v108 = v102;
            v50 = v102;
            goto LABEL_55;
          }

          goto LABEL_36;
        }

LABEL_37:
LABEL_38:

        goto LABEL_39;
      }

      v154 = v46;
      v56 = v129;
      v72 = [v129 payloadProtectionKey];
      if (v72)
      {
        v73 = v72;
        v74 = [v72 identifier];

        if (!v74)
        {
          goto LABEL_37;
        }

        v144 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v76 = v75;

        v77 = [v56 payloadProtectionKey];
        if (!v77)
        {
LABEL_36:

          goto LABEL_37;
        }

        v78 = v77;
        v79 = [v77 publicKeyIdentifier];

        if (!v79)
        {

          goto LABEL_38;
        }

        v80 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
        v82 = v81;

        v83 = [v129 payloadProtectionKey];
        v50 = v132;
        if (v83)
        {
          v84 = v83;
          v131 = v80;
          v134 = v82;
          v143 = v76;
          v85 = [v83 keyType];
          v86 = v136;
          v87 = v25;
          v88 = v38;
          if (v85)
          {
            v89 = v85;
            static String._unconditionallyBridgeFromObjectiveC(_:)();

            v90 = v133;
            CredentialKeyType.init(rawValue:)();
            v91 = v138;
            v92 = v137;
            if ((*(v138 + 48))(v90, 1, v137) != 1)
            {
              v110 = v90;
              v93 = v135;
              (*(v91 + 32))(v135, v110, v92);
LABEL_48:

              (*(v91 + 56))(v93, 0, 1, v92);
              v111 = *(v91 + 32);
              v111(v88, v93, v92);
              (*(v91 + 16))(v86, v88, v92);
              v112 = v129;
              v113 = [v129 payloadProtectionKey];
              if (v113)
              {
                v114 = v113;
                v115 = [v113 keyBlob];

                if (v115)
                {
                  v135 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
                  v133 = v116;

LABEL_54:
                  v117 = v137;
                  (*(v138 + 8))(v88, v137);
                  v118 = v132;
                  sub_10000A0D4(v132, &qword_100202498, &unk_1001AD910);
                  v119 = v143;
                  *v87 = v144;
                  *(v87 + 1) = v119;
                  v120 = v134;
                  *(v87 + 2) = v131;
                  *(v87 + 3) = v120;
                  v121 = v87;
                  v122 = v154;
                  v111(&v121[*(v154 + 6)], v136, v117);
                  v123 = &v121[*(v122 + 7)];
                  v124 = v133;
                  *v123 = v135;
                  v123[1] = v124;
                  v128(v121, 0, 1, v122);
                  v107 = v121;
                  v108 = v118;
                  v50 = v118;
LABEL_55:
                  sub_100046524(v107, v108, &qword_100202498, &unk_1001AD910);
                  goto LABEL_56;
                }
              }

              else
              {
              }

              v135 = 0;
              v133 = 0xF000000000000000;
              goto LABEL_54;
            }

            sub_10000A0D4(v90, &qword_100200510, qword_1001AB070);
          }

          v91 = v138;
          v93 = v135;
          v92 = v137;
          (*(v138 + 104))(v135, enum case for CredentialKeyType.invalid(_:), v137);
          goto LABEL_48;
        }

        sub_1000092BC(v80, v82);
        v109 = v135;
        (*(v138 + 56))(v135, 1, 1, v137);
        sub_10000A0D4(v109, &qword_100200510, qword_1001AB070);
      }

      else
      {
      }

LABEL_56:
      v94 = v139;
      goto LABEL_57;
    }

    (*(v143 + 104))(v154, enum case for DIPError.Code.idcsUnknownCredential(_:), v144);
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1000DC984(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
  }

  return result;
}

unint64_t sub_1000CDE48(uint64_t a1)
{
  _StringGuts.grow(_:)(32);

  if (a1)
  {
    sub_100004E70(&qword_100201580, &qword_1001AB980);
    v2 = Dictionary.debugDescription.getter();
    v4 = v3;
  }

  else
  {
    v4 = 0xE500000000000000;
    v2 = 0x3E6C696E3CLL;
  }

  v5 = v4;
  String.append(_:)(*&v2);

  return 0xD00000000000001ELL;
}

unint64_t sub_1000CDF0C(uint64_t a1)
{
  _StringGuts.grow(_:)(39);

  sub_100004E70(&qword_1002029B8, &qword_1001AD210);
  v1._countAndFlagsBits = Dictionary.description.getter();
  String.append(_:)(v1);

  return 0xD000000000000025;
}

uint64_t sub_1000CDFB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[8] = a4;
  v5[9] = v4;
  v5[6] = a2;
  v5[7] = a3;
  v5[5] = a1;
  v6 = type metadata accessor for DIPError.Code();
  v5[10] = v6;
  v5[11] = *(v6 - 8);
  v5[12] = swift_task_alloc();
  v7 = type metadata accessor for DCPresentmentResponseEncryptionParameters.Storage();
  v5[13] = v7;
  v5[14] = *(v7 - 8);
  v5[15] = swift_task_alloc();
  type metadata accessor for ISO18013Version();
  v5[16] = swift_task_alloc();
  v8 = type metadata accessor for ISO18013Response.Status();
  v5[17] = v8;
  v5[18] = *(v8 - 8);
  v5[19] = swift_task_alloc();
  v9 = type metadata accessor for ISO18013Response();
  v5[20] = v9;
  v5[21] = *(v9 - 8);
  v5[22] = swift_task_alloc();
  v10 = type metadata accessor for ISO18013Response.Document();
  v5[23] = v10;
  v5[24] = *(v10 - 8);
  v5[25] = swift_task_alloc();
  sub_100004E70(&qword_100202990, &qword_1001AD150);
  v5[26] = swift_task_alloc();
  v5[27] = swift_task_alloc();
  v11 = type metadata accessor for ISO18013Response.IssuerSigned();
  v5[28] = v11;
  v5[29] = *(v11 - 8);
  v5[30] = swift_task_alloc();
  v5[31] = swift_task_alloc();
  type metadata accessor for DIPSignpost.Config();
  v5[32] = swift_task_alloc();
  v12 = type metadata accessor for DIPSignpost();
  v5[33] = v12;
  v5[34] = *(v12 - 8);
  v5[35] = swift_task_alloc();
  v13 = type metadata accessor for Logger();
  v5[36] = v13;
  v5[37] = *(v13 - 8);
  v5[38] = swift_task_alloc();

  return _swift_task_switch(sub_1000CE3A8, 0, 0);
}

uint64_t sub_1000CE3A8(uint64_t a1)
{
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "PresentmentResponseBuilder buildResponsePayload", v4, 2u);
  }

  v6 = v1[37];
  v5 = v1[38];
  v7 = v1[36];
  v8 = v1[31];
  v10 = v1[6];
  v9 = v1[7];

  (*(v6 + 8))(v5, v7);
  static IDCSSignposts.presentmentBuildResponsePayload.getter();
  DIPSignpost.init(_:)();
  sub_1000CFAF0(v10, v9, v8);
  v11 = swift_task_alloc();
  v1[39] = v11;
  *v11 = v1;
  v11[1] = sub_1000CE74C;
  v12 = v1[27];
  v13 = v1[8];
  v14 = v1[5];
  v15 = v1[6];

  return sub_1000D0530(v12, v14, v15, v13);
}

uint64_t sub_1000CE74C()
{
  *(*v1 + 320) = v0;

  if (v0)
  {
    v2 = sub_1000CF5C0;
  }

  else
  {
    v2 = sub_1000CE860;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1000CE860()
{
  v1 = v0[26];
  v2 = v0[27];
  v3 = v0[24];
  v4 = v0[25];
  v5 = v0[18];
  v77 = v0[23];
  v79 = v0[19];
  v81 = v0[17];
  v6 = v0[14];
  v90 = v0[13];
  v95 = v0[15];
  v86 = v0[5];
  (*(v0[29] + 16))(v0[30], v0[31], v0[28]);
  sub_100046360(v2, v1, &qword_100202990, &qword_1001AD150);

  ISO18013Response.Document.init(docType:issuerSigned:deviceSigned:errors:)();
  sub_100004E70(&qword_100202998, &qword_1001AD158);
  v7 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1001AA160;
  (*(v3 + 16))(v8 + v7, v4, v77);
  (*(v5 + 104))(v79, enum case for ISO18013Response.Status.ok(_:), v81);
  static ISO18013Response.supportedVersion.getter();
  ISO18013Response.init(version:documents:documentErrors:status:)();
  v9._countAndFlagsBits = 0x3334646133663763;
  v10._countAndFlagsBits = 0xD00000000000005BLL;
  v10._object = 0x80000001001B8F40;
  v9._object = 0xE800000000000000;
  logMilestone(tag:description:)(v9, v10);
  v11 = [v86 responseEncryptionParameters];
  v12 = direct field offset for DCPresentmentResponseEncryptionParameters.storage;
  swift_beginAccess();
  (*(v6 + 16))(v95, &v11[v12], v90);

  v13 = (*(v6 + 88))(v95, v90);
  if (v13 == enum case for DCPresentmentResponseEncryptionParameters.Storage.appleHPKE(_:))
  {
    v14 = v0[40];
    v15 = v0[22];
    v16 = v0[15];
    v17 = v0[8];
    (*(v0[14] + 96))(v16, v0[13]);
    v18 = *v16;
    v19 = v16[1];
    v20 = v16[2];
    sub_1000092BC(v18, v19);
    v21 = sub_1000DAC80(v15, v17, v20);
    if (v14)
    {
      v91 = v0[31];
      v23 = v0[29];
      v87 = v0[28];
      v24 = v0[27];
      v25 = v0[24];
      v26 = v0[25];
      v28 = v0[22];
      v27 = v0[23];
      v30 = v0[20];
      v29 = v0[21];

      (*(v29 + 8))(v28, v30);
      (*(v25 + 8))(v26, v27);
      sub_10000A0D4(v24, &qword_100202990, &qword_1001AD150);
      (*(v23 + 8))(v91, v87);
LABEL_13:
      v56 = v0[34];
      v55 = v0[35];
      v57 = v0[33];
      (*(v0[11] + 104))(v0[12], enum case for DIPError.Code.internalError(_:), v0[10]);
      swift_errorRetain();
      sub_10002688C(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_1000DC984(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
      swift_allocError();
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      swift_willThrow();

      DIPSignpost.end(workflowID:isBackground:)(0, 2);
      (*(v56 + 8))(v55, v57);

      v58 = v0[1];

      return v58();
    }

    v93 = v21;
    v96 = v22;

LABEL_17:
    v59 = v0[34];
    v60 = v0[35];
    v73 = v0[31];
    v74 = v0[33];
    v61 = v0[29];
    v71 = v0[27];
    v72 = v0[28];
    v63 = v0[24];
    v62 = v0[25];
    v64 = v0[22];
    v65 = v0[23];
    v67 = v0[20];
    v66 = v0[21];
    v68._countAndFlagsBits = 0x3466373032303261;
    v69._countAndFlagsBits = 0xD000000000000054;
    v69._object = 0x80000001001B8FD0;
    v68._object = 0xE800000000000000;
    logMilestone(tag:description:)(v68, v69);
    (*(v66 + 8))(v64, v67);
    (*(v63 + 8))(v62, v65);
    sub_10000A0D4(v71, &qword_100202990, &qword_1001AD150);
    (*(v61 + 8))(v73, v72);
    DIPSignpost.end(workflowID:isBackground:)(0, 2);
    (*(v59 + 8))(v60, v74);

    v70 = v0[1];

    return v70(v93, v96);
  }

  if (v13 == enum case for DCPresentmentResponseEncryptionParameters.Storage.webProposalHPKE(_:))
  {
    v31 = v0[40];
    v32 = v0[22];
    v33 = v0[15];
    v34 = v0[8];
    (*(v0[14] + 96))(v33, v0[13]);
    v35 = *v33;
    v36 = v33[1];
    v38 = v33[2];
    v37 = v33[3];
    sub_1000092BC(v35, v36);
    v39 = sub_1000DB868(v32, v34, v38, v37);
    if (v31)
    {
      v92 = v0[31];
      v41 = v0[29];
      v88 = v0[28];
      v84 = v0[27];
      v42 = v0[24];
      v43 = v0[25];
      v45 = v0[22];
      v44 = v0[23];
      v46 = v0[20];
      v47 = v0[21];
      sub_1000092BC(v38, v37);
      (*(v47 + 8))(v45, v46);
      (*(v42 + 8))(v43, v44);
      sub_10000A0D4(v84, &qword_100202990, &qword_1001AD150);
      (*(v41 + 8))(v92, v88);
      goto LABEL_13;
    }

    v93 = v39;
    v96 = v40;
    sub_1000092BC(v38, v37);
    goto LABEL_17;
  }

  if (v13 != enum case for DCPresentmentResponseEncryptionParameters.Storage.sessionEncryption(_:))
  {
    v51 = v0[29];
    v89 = v0[28];
    v94 = v0[31];
    v52 = v0[24];
    v80 = v0[25];
    v82 = v0[27];
    v76 = v0[22];
    v78 = v0[23];
    v53 = v0[21];
    v75 = v0[20];
    v54 = v0[14];
    v83 = v0[13];
    v85 = v0[15];
    (*(v0[11] + 104))(v0[12], enum case for DIPError.Code.idcsUnknownResponseEncryptionType(_:), v0[10]);
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1000DC984(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    (*(v53 + 8))(v76, v75);
    (*(v52 + 8))(v80, v78);
    sub_10000A0D4(v82, &qword_100202990, &qword_1001AD150);
    (*(v51 + 8))(v94, v89);
    (*(v54 + 8))(v85, v83);
    goto LABEL_13;
  }

  v48 = swift_task_alloc();
  v0[41] = v48;
  *v48 = v0;
  v48[1] = sub_1000CF290;
  v49 = v0[22];

  return sub_1000D72F4(v49);
}

uint64_t sub_1000CF290(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(*v3 + 336) = v2;

  if (v2)
  {
    v7 = sub_1000CF82C;
  }

  else
  {
    *(v6 + 344) = a2;
    *(v6 + 352) = a1;
    v7 = sub_1000CF3C4;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_1000CF3C4()
{
  v18 = v0[43];
  v19 = v0[44];
  v1 = v0[34];
  v2 = v0[35];
  v16 = v0[31];
  v17 = v0[33];
  v3 = v0[29];
  v14 = v0[27];
  v15 = v0[28];
  v5 = v0[24];
  v4 = v0[25];
  v6 = v0[22];
  v7 = v0[23];
  v9 = v0[20];
  v8 = v0[21];
  v10._countAndFlagsBits = 0x3466373032303261;
  v11._object = 0x80000001001B8FD0;
  v10._object = 0xE800000000000000;
  v11._countAndFlagsBits = 0xD000000000000054;
  logMilestone(tag:description:)(v10, v11);
  (*(v8 + 8))(v6, v9);
  (*(v5 + 8))(v4, v7);
  sub_10000A0D4(v14, &qword_100202990, &qword_1001AD150);
  (*(v3 + 8))(v16, v15);
  DIPSignpost.end(workflowID:isBackground:)(0, 2);
  (*(v1 + 8))(v2, v17);

  v12 = v0[1];

  return v12(v19, v18);
}

uint64_t sub_1000CF5C0()
{
  (*(v0[29] + 8))(v0[31], v0[28]);
  v2 = v0[34];
  v1 = v0[35];
  v3 = v0[33];
  (*(v0[11] + 104))(v0[12], enum case for DIPError.Code.internalError(_:), v0[10]);
  swift_errorRetain();
  sub_10002688C(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_1000DC984(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  DIPSignpost.end(workflowID:isBackground:)(0, 2);
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1000CF82C()
{
  v1 = v0[31];
  v2 = v0[28];
  v3 = v0[29];
  v4 = v0[27];
  v6 = v0[24];
  v5 = v0[25];
  v7 = v0[23];
  (*(v0[21] + 8))(v0[22], v0[20]);
  (*(v6 + 8))(v5, v7);
  sub_10000A0D4(v4, &qword_100202990, &qword_1001AD150);
  (*(v3 + 8))(v1, v2);
  v9 = v0[34];
  v8 = v0[35];
  v10 = v0[33];
  (*(v0[11] + 104))(v0[12], enum case for DIPError.Code.internalError(_:), v0[10]);
  swift_errorRetain();
  sub_10002688C(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_1000DC984(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  DIPSignpost.end(workflowID:isBackground:)(0, 2);
  (*(v9 + 8))(v8, v10);

  v11 = v0[1];

  return v11();
}

uint64_t sub_1000CFAF0@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v79 = a2;
  v81 = a1;
  v78 = a3;
  v3 = type metadata accessor for DIPError.Code();
  v74 = *(v3 - 8);
  v75 = v3;
  __chkstk_darwin(v3);
  v76 = (&v69 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = sub_100004E70(&qword_1002014D0, &unk_1001AD120);
  __chkstk_darwin(v5 - 8);
  v80 = (&v69 - v6);
  v86 = type metadata accessor for COSE_Sign1();
  v7 = *(v86 - 1);
  v8 = __chkstk_darwin(v86);
  v77 = &v69 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v12 = &v69 - v11;
  __chkstk_darwin(v10);
  v82 = &v69 - v13;
  v14 = type metadata accessor for DIPSignpost.Config();
  __chkstk_darwin(v14 - 8);
  v15 = type metadata accessor for DIPSignpost();
  v83 = *(v15 - 8);
  v84 = v15;
  __chkstk_darwin(v15);
  v87 = &v69 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for Logger();
  v18 = *(v17 - 8);
  v19 = __chkstk_darwin(v17);
  v85 = &v69 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __chkstk_darwin(v19);
  v23 = &v69 - v22;
  __chkstk_darwin(v21);
  v25 = &v69 - v24;
  defaultLogger()();
  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v73 = v18;
    *v28 = 0;
    _os_log_impl(&_mh_execute_header, v26, v27, "PresentmentResponseBuilder buildResponsePayloadIssuerSigned", v28, 2u);
    v18 = v73;
  }

  v31 = *(v18 + 8);
  v30 = v18 + 8;
  v29 = v31;
  v31(v25, v17);
  static IDCSSignposts.presentmentBuildResponsePayloadIssuerSigned.getter();
  DIPSignpost.init(_:)();
  defaultLogger()();
  v32 = Logger.logObject.getter();
  v33 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    *v34 = 0;
    _os_log_impl(&_mh_execute_header, v32, v33, "Building response payload issuer signed", v34, 2u);
  }

  v29(v23, v17);
  v35 = type metadata accessor for PresentmentProposal(0);
  v36 = v80;
  sub_100046360(v81 + *(v35 + 32), v80, &qword_1002014D0, &unk_1001AD120);
  v37 = v86;
  v38 = (*(v7 + 48))(v36, 1, v86);
  v39 = v85;
  if (v38 == 1)
  {
    sub_10000A0D4(v36, &qword_1002014D0, &unk_1001AD120);
    v85 = "ns device namespaces ";
    v40 = v75;
    v86 = *(v74 + 104);
    v41 = v76;
    (v86)(v76, enum case for DIPError.Code.idcsMissingProposalIssuerAuth(_:), v75);
    v82 = "Unencrypted response: ";
    v81 = sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1000DC984(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    (v86)(v41, enum case for DIPError.Code.internalError(_:), v40);
    swift_errorRetain();
    sub_10002688C(_swiftEmptyArrayStorage);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    v42 = v87;
    DIPSignpost.end(workflowID:isBackground:)(0, 2);
    return (*(v83 + 8))(v42, v84);
  }

  else
  {
    v44 = v82;
    (*(v7 + 32))(v82, v36, v37);
    defaultLogger()();
    v80 = *(v7 + 16);
    v81 = v7 + 16;
    (v80)(v12, v44, v37);
    v45 = Logger.logObject.getter();
    v46 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v45, v46))
    {
      LODWORD(v74) = v46;
      v47 = swift_slowAlloc();
      v70 = swift_slowAlloc();
      v89 = v70;
      v75 = v47;
      *v47 = 136446210;
      v48 = COSE_Sign1.x509Chain.getter();
      v71 = v29;
      v72 = v17;
      v76 = v45;
      if (v48)
      {
        v73 = v30;
        v49 = *(v48 + 16);
        if (v49)
        {
          v88 = _swiftEmptyArrayStorage;
          v50 = v48;
          sub_10010A6B4(0, v49, 0);
          v51 = v88;
          v69 = v50;
          v52 = (v50 + 40);
          do
          {
            v53 = *(v52 - 1);
            v54 = *v52;
            sub_100009708(v53, *v52);
            v55 = Data.base64EncodedString(options:)(0);
            sub_1000092BC(v53, v54);
            v88 = v51;
            v57 = v51[2];
            v56 = v51[3];
            if (v57 >= v56 >> 1)
            {
              sub_10010A6B4((v56 > 1), v57 + 1, 1);
              v51 = v88;
            }

            v52 += 2;
            v51[2] = v57 + 1;
            *&v51[2 * v57 + 4] = v55;
            --v49;
          }

          while (v49);

          v39 = v85;
          v37 = v86;
        }

        else
        {
        }
      }

      v59 = Array.description.getter();
      v61 = v60;

      v58 = *(v7 + 8);
      v58(v12, v37);
      v62 = sub_10010150C(v59, v61, &v89);

      v63 = v75;
      *(v75 + 1) = v62;
      v64 = v76;
      _os_log_impl(&_mh_execute_header, v76, v74, "PresentmentResponseBuilder built issuer auth with document signer chain: %{public}s", v63, 0xCu);
      sub_100005090(v70);

      v71(v39, v72);
    }

    else
    {

      v58 = *(v7 + 8);
      v58(v12, v37);
      v29(v39, v17);
    }

    v66 = v83;
    v65 = v84;
    v67 = v82;
    (v80)(v77, v82, v37);

    ISO18013Response.IssuerSigned.init(namespaces:issuerAuth:)();
    v58(v67, v37);
    v68 = v87;
    DIPSignpost.end(workflowID:isBackground:)(0, 2);
    return (*(v66 + 8))(v68, v65);
  }
}

uint64_t sub_1000D0530(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[6] = a4;
  v5[7] = v4;
  v5[4] = a2;
  v5[5] = a3;
  v5[3] = a1;
  v6 = type metadata accessor for DIPError.Code();
  v5[8] = v6;
  v5[9] = *(v6 - 8);
  v5[10] = swift_task_alloc();
  v7 = type metadata accessor for ISO18013Response.DeviceAuth();
  v5[11] = v7;
  v5[12] = *(v7 - 8);
  v5[13] = swift_task_alloc();
  v5[14] = swift_task_alloc();
  sub_100004E70(&qword_1002014D0, &unk_1001AD120);
  v5[15] = swift_task_alloc();
  v8 = type metadata accessor for COSE_Sign1();
  v5[16] = v8;
  v5[17] = *(v8 - 8);
  v5[18] = swift_task_alloc();
  v9 = sub_100004E70(&qword_100202930, &qword_1001AD118);
  v5[19] = v9;
  v5[20] = *(v9 - 8);
  v5[21] = swift_task_alloc();
  v5[22] = swift_task_alloc();
  type metadata accessor for DIPSignpost.Config();
  v5[23] = swift_task_alloc();
  v10 = type metadata accessor for DIPSignpost();
  v5[24] = v10;
  v5[25] = *(v10 - 8);
  v5[26] = swift_task_alloc();
  v11 = type metadata accessor for Logger();
  v5[27] = v11;
  v5[28] = *(v11 - 8);
  v5[29] = swift_task_alloc();
  v5[30] = swift_task_alloc();

  return _swift_task_switch(sub_1000D0858, 0, 0);
}

uint64_t sub_1000D0858(uint64_t a1)
{
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "PresentmentResponseBuilder buildResponsePayloadDeviceSigned", v4, 2u);
  }

  v5 = v1[30];
  v6 = v1[27];
  v7 = v1[28];

  v8 = *(v7 + 8);
  v8(v5, v6);
  static IDCSSignposts.presentmentBuildResponsePayloadDeviceSigned.getter();
  DIPSignpost.init(_:)();
  defaultLogger()();
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v9, v10, "Building response payload device signed", v11, 2u);
  }

  v12 = v1[29];
  v13 = v1[27];
  v14 = v1[4];

  v8(v12, v13);
  v1[2] = sub_1000D9F3C(v14);
  sub_1000D8560();
  sub_100004E70(&qword_100202948, &qword_1001AD130);
  sub_1000DAB30(&qword_100202950, sub_1000DAA74, &protocol witness table for String, &protocol conformance descriptor for <> [A : B]);
  sub_1000DAB30(&qword_100202970, sub_1000DABB4, &protocol witness table for String, &protocol conformance descriptor for <> [A : B]);
  CBOREncodedCBOR.init(value:tag:encoder:)();
  v15 = swift_task_alloc();
  v1[31] = v15;
  *v15 = v1;
  v15[1] = sub_1000D0D40;
  v16 = v1[22];
  v17 = v1[15];
  v18 = v1[6];
  v19 = v1[4];
  v20 = v1[5];

  return sub_1000D1528(v17, v19, v20, v18, v16);
}

uint64_t sub_1000D0D40()
{
  *(*v1 + 256) = v0;

  if (v0)
  {
    v2 = sub_1000D1160;
  }

  else
  {
    v2 = sub_1000D0E54;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1000D0E54()
{
  v1 = v0[16];
  v2 = v0[17];
  v3 = v0[15];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    (*(v0[20] + 8))(v0[22], v0[19]);
    sub_10000A0D4(v3, &qword_1002014D0, &unk_1001AD120);
    v4 = 1;
  }

  else
  {
    v6 = v0[20];
    v5 = v0[21];
    v7 = v0[18];
    v8 = v0[14];
    v20 = v0[19];
    v21 = v0[13];
    v10 = v0[11];
    v9 = v0[12];
    v11 = v3;
    v12 = v0[22];
    (*(v2 + 32))(v7, v11, v1);
    (*(v2 + 16))(v8, v7, v1);
    (*(v9 + 104))(v8, enum case for ISO18013Response.DeviceAuth.deviceSignature(_:), v10);
    (*(v6 + 16))(v5, v12, v20);
    (*(v9 + 16))(v21, v8, v10);
    ISO18013Response.DeviceSigned.init(namespaces:deviceAuth:)();
    (*(v9 + 8))(v8, v10);
    (*(v2 + 8))(v7, v1);
    (*(v6 + 8))(v12, v20);
    v4 = 0;
  }

  v14 = v0[25];
  v13 = v0[26];
  v15 = v0[24];
  v16 = v0[3];
  v17 = type metadata accessor for ISO18013Response.DeviceSigned();
  (*(*(v17 - 8) + 56))(v16, v4, 1, v17);
  DIPSignpost.end(workflowID:isBackground:)(0, 2);
  (*(v14 + 8))(v13, v15);

  v18 = v0[1];

  return v18();
}

uint64_t sub_1000D1160()
{
  (*(v0[20] + 8))(v0[22], v0[19]);
  v2 = v0[25];
  v1 = v0[26];
  v3 = v0[24];
  (*(v0[9] + 104))(v0[10], enum case for DIPError.Code.internalError(_:), v0[8]);
  swift_errorRetain();
  sub_10002688C(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_1000DC984(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  DIPSignpost.end(workflowID:isBackground:)(0, 2);
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}