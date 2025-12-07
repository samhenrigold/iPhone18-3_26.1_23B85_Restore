uint64_t sub_10003E0EC()
{
  v129 = v0;
  v1 = sub_10004697C(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
  swift_allocError();
  sub_10004353C(v2);
  swift_willThrow();

  v128 = v0[116];
  v3 = v0[82];
  v4 = v0[80];

  LODWORD(v127) = enum case for DIPError.Code.internalError(_:);
  (*(v4 + 104))(v3);
  swift_errorRetain();
  sub_10002688C(_swiftEmptyArrayStorage);
  v126 = v1;
  v5 = swift_allocError();
  HIBYTE(v92[1]) = -18;
  strcpy(v92, "authenticate()");
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v6 = [objc_opt_self() standardUserDefaults];
  v7 = String._bridgeToObjectiveC()();
  v8 = [v6 BOOLForKey:v7];

  if (v8)
  {
    v9 = v0[73];
    v10 = v0[62];
    v11 = v0[63];
    v12 = v0[54];
    v13 = v0[55];
    v14 = v0[35];
    defaultLogger()();
    DIPLogError(_:message:log:)();

    (*(v11 + 8))(v9, v10);
    (*(v13 + 56))(v14, 1, 1, v12);
    goto LABEL_21;
  }

  v15 = v0[80];
  v16 = v0[79];
  v17 = v0[41];
  swift_getErrorValue();
  Error.dipErrorCode.getter();
  v18 = (*(v15 + 48))(v17, 1, v16);
  v125 = "nauthenticated reader";
  if (v18 == 1)
  {
    goto LABEL_4;
  }

  v24 = v0[80];
  v25 = v0[79];
  v26 = v0[40];
  sub_100046360(v0[41], v26, &qword_100201488, &qword_1001ACFD0);
  v27 = (*(v24 + 88))(v26, v25);
  if (v27 == enum case for DIPError.Code.idcsInvalidReaderRequest(_:))
  {
    defaultLogger()();
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&_mh_execute_header, v28, v29, "Encountered invalid reader request", v30, 2u);
    }

    v31 = v0[64];
LABEL_13:
    v34 = v0[62];
    v35 = v0[63];
    v36 = v0[41];

    (*(v35 + 8))(v31, v34);
    sub_10000A0D4(v36, &qword_100201488, &qword_1001ACFD0);
LABEL_14:
    LODWORD(v124) = 1;
    v23 = &enum case for IDCSAnalytics.ReaderAuthOutcome.rejected(_:);
    goto LABEL_15;
  }

  if (v27 == enum case for DIPError.Code.idcsMissingReaderAuthCerts(_:))
  {
    defaultLogger()();
    v28 = Logger.logObject.getter();
    v32 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v28, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&_mh_execute_header, v28, v32, "Encountered missing or malformed auth certificates", v33, 2u);
    }

    v31 = v0[65];
    goto LABEL_13;
  }

  if (v27 == enum case for DIPError.Code.idcsMisformattedReaderAuthSignature(_:) || v27 == enum case for DIPError.Code.idcsInvalidReaderAuthSignature(_:))
  {
    sub_10000A0D4(v0[41], &qword_100201488, &qword_1001ACFD0);
    defaultLogger()();
    v85 = Logger.logObject.getter();
    v86 = static os_log_type_t.error.getter();
    v87 = os_log_type_enabled(v85, v86);
    v88 = v0[67];
    v89 = v0[62];
    v90 = v0[63];
    if (v87)
    {
      v91 = swift_slowAlloc();
      *v91 = 0;
      _os_log_impl(&_mh_execute_header, v85, v86, "Encountered invalid signature during reader auth", v91, 2u);
    }

    (*(v90 + 8))(v88, v89);
    goto LABEL_14;
  }

  if (v27 == enum case for DIPError.Code.idcsRevokedReaderAuthCertificate(_:))
  {
    defaultLogger()();
    v28 = Logger.logObject.getter();
    v83 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v28, v83))
    {
      v84 = swift_slowAlloc();
      *v84 = 0;
      _os_log_impl(&_mh_execute_header, v28, v83, "Encountered revoked reader auth certificate", v84, 2u);
    }

    v31 = v0[66];
    goto LABEL_13;
  }

  (*(v0[80] + 8))(v0[40], v0[79]);
LABEL_4:
  v19 = v0[73];
  v20 = v0[62];
  v21 = v0[63];
  v22 = v0[41];
  defaultLogger()();
  DIPLogError(_:message:log:)();
  (*(v21 + 8))(v19, v20);
  sub_10000A0D4(v22, &qword_100201488, &qword_1001ACFD0);
  LODWORD(v124) = 0;
  v23 = &enum case for IDCSAnalytics.ReaderAuthOutcome.unauthenticated(_:);
LABEL_15:
  v121 = v23;
  v37 = v5;
  v38 = v0[101];
  v122 = v0[100];
  v39 = v0[51];
  v40 = v0[52];
  v41 = v0[50];
  v42 = v0[48];
  v43 = v0[38];
  v44 = v0[39];
  v45 = v0[36];
  v46 = v0[37];
  v128 = v37;
  sub_100041CE0(v37, v0[39]);
  v123 = *v45;
  (*(v39 + 104))(v40, *v121, v41);
  (*(v43 + 16))(v42, v44, v46);
  (*(v43 + 56))(v42, 0, 1, v46);
  v47 = type metadata accessor for IdentityReaderAuthenticator(0);
  sub_100046244(v45 + *(v47 + 20), v38);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v49 = v0[101];
  if (EnumCaseMultiPayload == 1)
  {
    v50 = v0[43];
    v51 = v0[44];
    v52 = v0[42];
    sub_1000462A8(v0[101]);
    (*(v50 + 104))(v51, enum case for IDCSAnalytics.ReaderAuthTypeTag.web(_:), v52);
  }

  else
  {
    v53 = v0[98];
    v54 = v0[97];
    v55 = v0[95];
    v56 = v0[94];
    v58 = v0[43];
    v57 = v0[44];
    v59 = v0[42];
    v60 = *(sub_100004E70(&qword_1002014A8, &qword_1001AB838) + 48);
    (*(v58 + 104))(v57, enum case for IDCSAnalytics.ReaderAuthTypeTag.physical(_:), v59);
    (*(v55 + 8))(v49 + v60, v56);
    (*(v53 + 8))(v49, v54);
  }

  v61 = v0[80];
  v120 = v0[82];
  v121 = v0[79];
  v122 = v0[56];
  v62 = v0[51];
  v63 = v0[52];
  v119 = v0[50];
  v64 = v0[48];
  v65 = v0[44];
  v66 = v0[45];
  v67 = v0[42];
  v68 = v0[43];
  type metadata accessor for IDCSAnalytics();
  (*(v68 + 32))(v66, v65, v67);
  static IDCSAnalytics.sendReaderAuthOutcomeEvent(documentTypes:outcome:failureReason:readerAuthType:)();
  (*(v68 + 8))(v66, v67);
  sub_10000A0D4(v64, &qword_100201490, &qword_1001AB820);
  (*(v62 + 8))(v63, v119);
  (*(v61 + 104))(v120, v127, v121);
  swift_errorRetain();
  sub_10002688C(_swiftEmptyArrayStorage);
  v92[2] = 267;
  HIBYTE(v92[1]) = -18;
  strcpy(v92, "authenticate()");
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  if (v124)
  {
    v92[3] = v0[103];
    v92[4] = v0[102];
    v92[5] = v0[101];
    v92[6] = v0[99];
    v92[7] = v0[96];
    v92[8] = v0[93];
    v92[9] = v0[92];
    v92[10] = v0[91];
    v93 = v0[88];
    v94 = v0[87];
    v95 = v0[85];
    v96 = v0[84];
    v97 = v0[82];
    v98 = v0[81];
    v99 = v0[78];
    v100 = v0[77];
    v101 = v0[76];
    v102 = v0[75];
    v103 = v0[74];
    v104 = v0[73];
    v105 = v0[72];
    v106 = v0[71];
    v107 = v0[70];
    v108 = v0[69];
    v109 = v0[68];
    v110 = v0[67];
    v111 = v0[66];
    v112 = v0[65];
    v113 = v0[64];
    v114 = v0[61];
    v115 = v0[58];
    v70 = v0[55];
    v69 = v0[56];
    v71 = v0[54];
    v116 = v0[57];
    v117 = v0[53];
    v118 = v0[52];
    v119 = v0[49];
    v120 = v0[48];
    v121 = v0[47];
    v122 = v0[46];
    v123 = v0[45];
    v124 = v0[44];
    v125 = v0[41];
    v127 = v0[40];
    v73 = v0[38];
    v72 = v0[39];
    v74 = v0[37];
    v126 = swift_allocError();
    (*(v70 + 16))(v75, v69, v71);
    swift_willThrow();

    (*(v70 + 8))(v69, v71);
    (*(v73 + 8))(v72, v74);

    v76 = v0[1];
    goto LABEL_22;
  }

  v78 = v0[55];
  v77 = v0[56];
  v79 = v0[54];
  v80 = v0[35];
  (*(v0[38] + 8))(v0[39], v0[37]);

  (*(v78 + 32))(v80, v77, v79);
  (*(v78 + 56))(v80, 0, 1, v79);
LABEL_21:
  v93 = v0[88];
  v94 = v0[87];
  v95 = v0[85];
  v96 = v0[84];
  v97 = v0[82];
  v98 = v0[81];
  v99 = v0[78];
  v100 = v0[77];
  v101 = v0[76];
  v102 = v0[75];
  v103 = v0[74];
  v104 = v0[73];
  v105 = v0[72];
  v106 = v0[71];
  v107 = v0[70];
  v108 = v0[69];
  v109 = v0[68];
  v110 = v0[67];
  v111 = v0[66];
  v112 = v0[65];
  v113 = v0[64];
  v114 = v0[61];
  v115 = v0[58];
  v116 = v0[57];
  v117 = v0[56];
  v118 = v0[53];
  v119 = v0[52];
  v120 = v0[49];
  v121 = v0[48];
  v122 = v0[47];
  v123 = v0[46];
  v124 = v0[45];
  v125 = v0[44];
  v126 = v0[41];
  v127 = v0[40];
  v128 = v0[39];
  v81 = v0[34];

  *(v81 + 89) = 0u;
  v81[4] = 0u;
  v81[5] = 0u;
  v81[2] = 0u;
  v81[3] = 0u;
  *v81 = 0u;
  v81[1] = 0u;
  v76 = v0[1];
LABEL_22:

  return v76();
}

char *sub_10003F088(uint64_t a1, uint64_t a2)
{
  v147 = a2;
  v136 = type metadata accessor for DIPError.Code();
  v135 = *(v136 - 8);
  __chkstk_darwin(v136);
  v4 = v124 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Logger();
  v133 = *(v5 - 8);
  v6 = __chkstk_darwin(v5);
  v132 = v124 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v6);
  v128 = v124 - v9;
  v10 = __chkstk_darwin(v8);
  v127 = v124 - v11;
  __chkstk_darwin(v10);
  v129 = v124 - v12;
  v146 = type metadata accessor for ISO18013SessionTranscript();
  v131 = *(v146 - 8);
  __chkstk_darwin(v146);
  v144 = v124 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v145 = type metadata accessor for ISO18013ReaderAuthentication();
  v130 = *(v145 - 8);
  __chkstk_darwin(v145);
  v143 = v124 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for COSE_Sign1();
  v134 = *(v15 - 8);
  __chkstk_darwin(v15);
  v141 = v124 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_100004E70(&qword_1002014D0, &unk_1001AD120);
  v18 = __chkstk_darwin(v17 - 8);
  v157 = (v124 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v18);
  v158 = (v124 - v20);
  v21 = sub_100004E70(&qword_1002014D8, &qword_1001AB860);
  __chkstk_darwin(v21 - 8);
  v23 = v124 - v22;
  v167 = sub_100004E70(&qword_1002014E0, &qword_1001AB868);
  KeyPath = *(v167 - 8);
  v24 = __chkstk_darwin(v167);
  v138 = v124 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __chkstk_darwin(v24);
  v137 = v124 - v27;
  v28 = __chkstk_darwin(v26);
  v150 = v124 - v29;
  v30 = __chkstk_darwin(v28);
  v148 = v124 - v31;
  v32 = __chkstk_darwin(v30);
  v142 = v124 - v33;
  __chkstk_darwin(v32);
  v156 = (v124 - v34);
  v164 = type metadata accessor for ISO18013ReaderRequest.DocRequest();
  v160 = *(v164 - 8);
  __chkstk_darwin(v164);
  v36 = v124 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = sub_100004E70(&qword_1002014E8, &qword_1001AB870);
  __chkstk_darwin(v37 - 8);
  v39 = v124 - v38;
  v149 = a1;
  v40 = ISO18013ReaderRequest.readerAuthAll.getter();
  if (v40)
  {
    v169 = v40;
    v166 = v40;
    sub_100004E70(&qword_100201510, &unk_1001AB8F0);
    sub_1000464D0(&qword_100201518, &qword_100201510, &unk_1001AB8F0);
    Collection.nilIfEmpty.getter();

    if (v168)
    {

      goto LABEL_19;
    }
  }

  ISO18013ReaderRequest.deviceRequestInfo.getter();
  v41 = sub_100004E70(&qword_1002014F0, &qword_1001AB878);
  v42 = (*(*(v41 - 8) + 48))(v39, 1, v41);
  sub_10000A0D4(v39, &qword_1002014E8, &qword_1001AB870);
  if (v42 != 1)
  {
LABEL_19:
    v61 = v135;
    v62 = v136;
    (*(v135 + 104))(v4, enum case for DIPError.Code.idcsInvalidReaderRequest(_:), v136);
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_10004697C(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
LABEL_20:
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    goto LABEL_21;
  }

  v126 = v5;
  v43 = ISO18013ReaderRequest.docRequests.getter();
  v44 = *(v43 + 16);
  v125 = v4;
  v165 = v15;
  if (v44)
  {
    v155 = *(v160 + 16);
    v45 = (*(v160 + 80) + 32) & ~*(v160 + 80);
    v124[1] = v43;
    v46 = v43 + v45;
    v154 = *(v160 + 72);
    v153 = (v134 + 48);
    v140 = (v134 + 32);
    v47 = v158;
    v160 += 16;
    v48 = (v160 - 8);
    v151 = (KeyPath + 48);
    v152 = (KeyPath + 56);
    v166 = _swiftEmptyArrayStorage;
    v49 = v167;
    v139 = (v160 - 8);
    do
    {
      v162 = v46;
      v163 = v44;
      (v155)(v36);
      ISO18013ReaderRequest.DocRequest.readerAuth.getter();
      v50 = v157;
      sub_100046360(v47, v157, &qword_1002014D0, &unk_1001AD120);
      v51 = v165;
      if ((*v153)(v50, 1, v165) == 1)
      {
        sub_10000A0D4(v47, &qword_1002014D0, &unk_1001AD120);
        v52 = 1;
      }

      else
      {
        v53 = *v140;
        v54 = v141;
        (*v140)(v141, v50, v51);
        v55 = *(v167 + 48);
        ISO18013ReaderRequest.DocRequest.itemsRequest.getter();
        sub_10000A0D4(v158, &qword_1002014D0, &unk_1001AD120);
        v56 = v54;
        v47 = v158;
        v53(&v23[v55], v56, v165);
        v48 = v139;
        v49 = v167;
        v52 = 0;
      }

      (*v152)(v23, v52, 1, v49);
      (*v48)(v36, v164);
      if ((*v151)(v23, 1, v49) == 1)
      {
        sub_10000A0D4(v23, &qword_1002014D8, &qword_1001AB860);
      }

      else
      {
        sub_100046524(v23, v156, &qword_1002014E0, &qword_1001AB868);
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v57 = v166;
        }

        else
        {
          v57 = sub_100100654(0, *(v166 + 2) + 1, 1, v166);
        }

        v59 = *(v57 + 2);
        v58 = *(v57 + 3);
        if (v59 >= v58 >> 1)
        {
          v57 = sub_100100654((v58 > 1), v59 + 1, 1, v57);
        }

        *(v57 + 2) = v59 + 1;
        v60 = (*(KeyPath + 80) + 32) & ~*(KeyPath + 80);
        v166 = v57;
        sub_100046524(v156, &v57[v60 + *(KeyPath + 72) * v59], &qword_1002014E0, &qword_1001AB868);
        v49 = v167;
      }

      v46 = v162 + v154;
      v44 = (v163 - 1);
    }

    while (v163 != 1);

    result = v166;
  }

  else
  {

    result = _swiftEmptyArrayStorage;
  }

  v65 = v132;
  v164 = *(result + 2);
  if (!v164)
  {

    defaultLogger()();
    v101 = Logger.logObject.getter();
    v102 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v101, v102))
    {
      v103 = swift_slowAlloc();
      *v103 = 0;
      _os_log_impl(&_mh_execute_header, v101, v102, "Reader request contains no signatures, the request is unauthenticated", v103, 2u);
    }

    (*(v133 + 8))(v65, v126);
    return _swiftEmptyArrayStorage;
  }

  v66 = 0;
  v163 = (v134 + 32);
  v156 = (v134 + 8);
  v157 = (v131 + 16);
  v158 = (v130 + 8);
  v67 = v148;
  v166 = result;
  do
  {
    if (v66 >= *(result + 2))
    {
      __break(1u);
      goto LABEL_69;
    }

    v155 = (*(KeyPath + 80) + 32) & ~*(KeyPath + 80);
    v162 = *(KeyPath + 72);
    v68 = v142;
    sub_100046360(&result[v155 + v162 * v66], v142, &qword_1002014E0, &qword_1001AB868);
    v69 = v167;
    v70 = *(v167 + 48);
    v71 = sub_100004E70(&qword_1002014F8, &qword_1001AB880);
    (*(*(v71 - 8) + 32))(v67, v68, v71);
    v72 = v165;
    v160 = *v163;
    (v160)(v67 + v70, v68 + v70, v165);
    (*v157)(v144, v147, v146);
    v73 = v67;
    v74 = v150;
    sub_100046360(v73, v150, &qword_1002014E0, &qword_1001AB868);
    v75 = *(v69 + 48);
    v76 = v143;
    ISO18013ReaderAuthentication.init(sessionTranscript:itemsRequestBytes:)();
    v77 = v74 + v75;
    v67 = v148;
    (*v156)(v77, v72);
    v78 = v161;
    sub_100045160(v67 + v70, v76, &type metadata accessor for ISO18013ReaderAuthentication, byte_100201530, &type metadata accessor for ISO18013ReaderAuthentication, &protocol conformance descriptor for ISO18013ReaderAuthentication);
    v161 = v78;
    if (v78)
    {

      (*v158)(v76, v145);
      sub_10000A0D4(v67, &qword_1002014E0, &qword_1001AB868);
      v4 = v125;
      v62 = v136;
LABEL_45:
      v61 = v135;
LABEL_21:
      v63 = "nauthenticated reader";
      (*(v61 + 104))(v4, enum case for DIPError.Code.internalError(_:), v62);
      swift_errorRetain();
      sub_10002688C(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_10004697C(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
      swift_allocError();
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      swift_willThrow();

      return v63;
    }

    ++v66;
    (*v158)(v76, v145);
    sub_10000A0D4(v67, &qword_1002014E0, &qword_1001AB868);
    result = v166;
  }

  while (v164 != v66);
  v79._countAndFlagsBits = 0x3138303730663863;
  v80._countAndFlagsBits = 0xD000000000000028;
  v80._object = 0x80000001001B3D00;
  v79._object = 0xE800000000000000;
  logMilestone(tag:description:)(v79, v80);
  v81 = v129;
  defaultLogger()();
  v82 = Logger.logObject.getter();
  v83 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v82, v83))
  {
    v84 = swift_slowAlloc();
    *v84 = 0;
    _os_log_impl(&_mh_execute_header, v82, v83, "Verified reader auth signature with reader leaf certificate", v84, 2u);
  }

  v85 = *(v133 + 8);
  v133 += 8;
  v85(v81, v126);
  v86 = v166;
  v87 = *(v166 + 2);
  v88 = *(ISO18013ReaderRequest.docRequests.getter() + 16);

  v158 = v87;
  v89 = v167;
  if (v87 != v88)
  {

    v104 = v128;
    defaultLogger()();
    v105 = Logger.logObject.getter();
    v106 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v105, v106))
    {
      v107 = swift_slowAlloc();
      *v107 = 0;
      _os_log_impl(&_mh_execute_header, v105, v106, "Reader request contains a mix of signed and unsigned requests, falling back to unauthenticated request", v107, 2u);
    }

    v85(v104, v126);
    return _swiftEmptyArrayStorage;
  }

  v157 = v85;
  KeyPath = swift_getKeyPath();
  v90 = _swiftEmptyArrayStorage;
  v91 = &v86[v155];
  do
  {
    v92 = v137;
    sub_100046360(v91, v137, &qword_1002014E0, &qword_1001AB868);
    v93 = v150;
    sub_100046360(v92, v150, &qword_1002014E0, &qword_1001AB868);
    v94 = *(v89 + 48);
    v95 = sub_100004E70(&qword_1002014F8, &qword_1001AB880);
    v96 = v138;
    (*(*(v95 - 8) + 32))(v138, v93, v95);
    (v160)(v96 + v94, v93 + v94, v165);
    swift_getAtKeyPath();
    sub_10000A0D4(v96, &qword_1002014E0, &qword_1001AB868);
    sub_10000A0D4(v92, &qword_1002014E0, &qword_1001AB868);
    v97 = v169;
    if (v169)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v90 = sub_100100630(0, v90[2] + 1, 1, v90, v98);
      }

      v100 = v90[2];
      v99 = v90[3];
      if (v100 >= v99 >> 1)
      {
        v90 = sub_100100630((v99 > 1), v100 + 1, 1, v90, v98);
      }

      v90[2] = v100 + 1;
      v90[v100 + 4] = v97;
      v89 = v167;
    }

    v91 += v162;
    --v164;
  }

  while (v164);
  v4 = v125;

  v108 = v90[2];
  v109 = v161;
  if (!v108)
  {

    v111 = _swiftEmptyArrayStorage;
    v62 = v136;
LABEL_59:
    v116 = v158;
    if (v158 == v111[2])
    {

      v118 = sub_10010D6D8(v117);

      v119 = *(v118 + 16);

      if (v119 != v116)
      {

        v120 = v127;
        defaultLogger()();
        v121 = Logger.logObject.getter();
        v122 = static os_log_type_t.info.getter();
        if (os_log_type_enabled(v121, v122))
        {
          v123 = swift_slowAlloc();
          *v123 = 0;
          _os_log_impl(&_mh_execute_header, v121, v122, "Reader requests signed with different certificate chains, falling back to unauthenticated request", v123, 2u);
        }

        v157(v120, v126);
        return _swiftEmptyArrayStorage;
      }

      if (v111[2])
      {
        v63 = v111[4];

        return v63;
      }
    }

    v61 = v135;
    (*(v135 + 104))(v4, enum case for DIPError.Code.idcsMissingReaderAuthCerts(_:), v62);
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_10004697C(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    goto LABEL_20;
  }

  v169 = _swiftEmptyArrayStorage;
  result = sub_10010A798(0, v108, 0);
  v110 = 0;
  v111 = v169;
  v62 = v136;
  while (v110 < v90[2])
  {

    v112 = decodeCertificateChain(fromDER:)();
    if (v109)
    {

      goto LABEL_45;
    }

    v113 = v112;

    v169 = v111;
    v115 = v111[2];
    v114 = v111[3];
    if (v115 >= v114 >> 1)
    {
      result = sub_10010A798((v114 > 1), v115 + 1, 1);
      v111 = v169;
    }

    ++v110;
    v111[2] = v115 + 1;
    v111[v115 + 4] = v113;
    v62 = v136;
    if (v108 == v110)
    {

      goto LABEL_59;
    }
  }

LABEL_69:
  __break(1u);
  return result;
}

void *sub_10004083C(uint64_t a1, uint64_t a2)
{
  v4 = v3;
  v5 = v2;
  v8 = type metadata accessor for DIPError.Code();
  v77 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v73 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = type metadata accessor for Logger();
  v79 = *(v80 - 8);
  v11 = __chkstk_darwin(v80);
  v106 = &v73 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v76 = &v73 - v14;
  __chkstk_darwin(v13);
  v78 = &v73 - v15;
  v109 = type metadata accessor for ISO18013ReaderRequest.DocRequest();
  v85 = *(v109 - 8);
  __chkstk_darwin(v109);
  v108 = &v73 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107 = sub_100004E70(&qword_1002014F8, &qword_1001AB880);
  v110 = *(v107 - 8);
  __chkstk_darwin(v107);
  v84 = &v73 - v17;
  v18 = sub_100004E70(&qword_1002014E8, &qword_1001AB870);
  __chkstk_darwin(v18 - 8);
  v99 = &v73 - v19;
  v98 = type metadata accessor for ISO18013SessionTranscript();
  v105 = *(v98 - 8);
  __chkstk_darwin(v98);
  v103 = &v73 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = type metadata accessor for ISO18013ReaderAuthenticationAll();
  v102 = *(v97 - 8);
  __chkstk_darwin(v97);
  v22 = &v73 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = type metadata accessor for COSE_Sign1();
  v101 = *(v87 - 8);
  v23 = __chkstk_darwin(v87);
  v75 = &v73 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v26 = &v73 - v25;
  v86 = a1;
  v27 = ISO18013ReaderRequest.readerAuthAll.getter();
  if (!v27 || (v112 = v27, v94 = v22, sub_100004E70(&qword_100201510, &unk_1001AB8F0), v100 = v26, sub_1000464D0(&qword_100201518, &qword_100201510, &unk_1001AB8F0), v28 = v100, Collection.nilIfEmpty.getter(), result = , !v111))
  {
    v62 = v106;
    defaultLogger()();
    v63 = Logger.logObject.getter();
    v64 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v63, v64))
    {
      v65 = swift_slowAlloc();
      *v65 = 0;
      _os_log_impl(&_mh_execute_header, v63, v64, "Reader request contains no signatures, the request is unauthenticated", v65, 2u);
    }

    (*(v79 + 8))(v62, v80);
    return _swiftEmptyArrayStorage;
  }

  v73 = v8;
  v30 = v111[2];
  v83 = v111;
  v93 = v30;
  v74 = v10;
  if (!v30)
  {
LABEL_15:
    v49._countAndFlagsBits = 0x3138303730663863;
    v50._countAndFlagsBits = 0xD000000000000028;
    v50._object = 0x80000001001B3D00;
    v49._object = 0xE800000000000000;
    logMilestone(tag:description:)(v49, v50);
    v51 = v78;
    defaultLogger()();
    v52 = Logger.logObject.getter();
    v53 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      *v54 = 0;
      _os_log_impl(&_mh_execute_header, v52, v53, "Verified reader auth signature with reader leaf certificate", v54, 2u);
    }

    v55 = *(v79 + 8);
    v55(v51, v80);
    v56 = v74;
    if (v83[2] != 1)
    {

      v66 = v76;
      defaultLogger()();
      v67 = Logger.logObject.getter();
      v68 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v67, v68))
      {
        v70 = swift_slowAlloc();
        *v70 = 0;
        _os_log_impl(&_mh_execute_header, v67, v68, "Reader request contains > 1 readerAuthAll structures, falling back to unauthenticated request", v70, 2u);
      }

      v55(v66, v80);
      return _swiftEmptyArrayStorage;
    }

    v57 = v101;
    v58 = v75;
    v59 = v87;
    (*(v101 + 16))(v75, v83 + ((*(v57 + 80) + 32) & ~*(v57 + 80)), v87);

    v60 = COSE_Sign1.x509Chain.getter();
    (*(v57 + 8))(v58, v59);
    if (v60)
    {

      v61 = decodeCertificateChain(fromDER:)();
      if (v4)
      {
        swift_bridgeObjectRelease_n();
LABEL_30:
        v71 = v77;
        goto LABEL_33;
      }

      v72 = v61;
      swift_bridgeObjectRelease_n();
      v112 = v72;
      sub_100004E70(&qword_100201548, &qword_1001AB908);
      sub_1000464D0(&qword_100201550, &qword_100201548, &qword_1001AB908);
      Collection.nilIfEmpty.getter();

      result = v111;
      if (v111)
      {
        return result;
      }
    }

    v71 = v77;
    (*(v77 + 104))(v56, enum case for DIPError.Code.idcsMissingReaderAuthCerts(_:), v73);
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_10004697C(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
LABEL_33:
    (*(v71 + 104))(v56, enum case for DIPError.Code.internalError(_:), v73);
    swift_errorRetain();
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_10004697C(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
  }

  v31 = v111;
  v32 = 0;
  v91 = v111 + ((*(v101 + 80) + 32) & ~*(v101 + 80));
  v89 = v101 + 16;
  v88 = (v105 + 2);
  v105 = (v85 + 8);
  v106 = (v85 + 16);
  v104 = v110 + 32;
  v90 = (v102 + 8);
  v92 = (v101 + 8);
  v33 = v87;
  v82 = v5;
  v81 = a2;
  while (v32 < v31[2])
  {
    v34 = *(v101 + 72);
    v102 = v32;
    (*(v101 + 16))(v28, &v91[v34 * v32], v33);
    (*v88)(v103, a2, v98);
    v35 = ISO18013ReaderRequest.docRequests.getter();
    v36 = *(v35 + 16);
    if (v36)
    {
      v96 = v4;
      v112 = _swiftEmptyArrayStorage;
      v37 = v35;
      sub_10010A7D8(0, v36, 0);
      v38 = v112;
      v39 = *(v85 + 80);
      v95 = v37;
      v40 = v37 + ((v39 + 32) & ~v39);
      v41 = *(v85 + 72);
      v42 = *(v85 + 16);
      v43 = v84;
      do
      {
        v44 = v108;
        v45 = v109;
        v42(v108, v40, v109);
        ISO18013ReaderRequest.DocRequest.itemsRequest.getter();
        (*v105)(v44, v45);
        v112 = v38;
        v47 = v38[2];
        v46 = v38[3];
        if (v47 >= v46 >> 1)
        {
          sub_10010A7D8((v46 > 1), v47 + 1, 1);
          v38 = v112;
        }

        v38[2] = v47 + 1;
        (*(v110 + 32))(v38 + ((*(v110 + 80) + 32) & ~*(v110 + 80)) + *(v110 + 72) * v47, v43, v107);
        v40 += v41;
        --v36;
      }

      while (v36);

      v4 = v96;
      a2 = v81;
      v33 = v87;
      v31 = v83;
    }

    else
    {
    }

    ISO18013ReaderRequest.deviceRequestInfo.getter();
    v48 = v94;
    ISO18013ReaderAuthenticationAll.init(sessionTranscript:itemsRequestBytesAll:deviceRequestsInfoBytes:)();
    v28 = v100;
    sub_100045160(v100, v48, &type metadata accessor for ISO18013ReaderAuthenticationAll, byte_100201558, &type metadata accessor for ISO18013ReaderAuthenticationAll, &protocol conformance descriptor for ISO18013ReaderAuthenticationAll);
    if (v4)
    {

      (*v90)(v48, v97);
      (*v92)(v28, v33);
      v56 = v74;
      goto LABEL_30;
    }

    v32 = v102 + 1;
    (*v90)(v48, v97);
    result = (*v92)(v28, v33);
    if (v32 == v93)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100041690(uint64_t a1)
{
  v1[4] = a1;
  v2 = type metadata accessor for Logger();
  v1[5] = v2;
  v1[6] = *(v2 - 8);
  v1[7] = swift_task_alloc();
  v1[8] = swift_task_alloc();
  v1[9] = swift_task_alloc();

  return _swift_task_switch(sub_100041768, 0, 0);
}

uint64_t sub_100041768(uint64_t a1)
{
  v51 = v1;
  defaultLogger()();

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = v1[4];
    v5 = swift_slowAlloc();
    v48 = swift_slowAlloc();
    v49 = v48;
    *v5 = 136315138;
    swift_getKeyPath();
    v6 = *(v4 + 16);
    if (v6)
    {
      v47 = v3;
      v7 = v1[4];
      v50 = _swiftEmptyArrayStorage;
      sub_10010A818(0, v6, 0);
      v8 = _swiftEmptyArrayStorage;
      v9 = (v7 + 32);
      do
      {
        v1[3] = *v9;

        swift_getAtKeyPath();

        v10 = v1[2];
        v50 = v8;
        v12 = v8[2];
        v11 = v8[3];
        if (v12 >= v11 >> 1)
        {
          sub_10010A818((v11 > 1), v12 + 1, 1);
          v8 = v50;
        }

        v8[2] = v12 + 1;
        v8[v12 + 4] = v10;
        ++v9;
        --v6;
      }

      while (v6);

      v3 = v47;
    }

    else
    {
    }

    v17 = v1[9];
    v19 = v1[5];
    v18 = v1[6];
    sub_100004E70(&qword_100201580, &qword_1001AB980);
    v20 = Array.description.getter();
    v22 = v21;

    v23 = sub_10010150C(v20, v22, &v49);

    *(v5 + 4) = v23;
    _os_log_impl(&_mh_execute_header, v2, v3, "IdentityReaderAuthenticator determining apple issued chain from received list of chains: %s", v5, 0xCu);
    sub_100005090(v48);

    v16 = *(v18 + 8);
    v16(v17, v19);
  }

  else
  {
    v13 = v1[9];
    v14 = v1[5];
    v15 = v1[6];

    v16 = *(v15 + 8);
    v16(v13, v14);
  }

  v24 = v1[4];
  v25 = *(v24 + 16);
  if (!v25)
  {
LABEL_24:
    defaultLogger()();
    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.debug.getter();
    v36 = os_log_type_enabled(v34, v35);
    v37 = v1[7];
    v38 = v1[5];
    if (v36)
    {
      v39 = swift_slowAlloc();
      *v39 = 0;
      _os_log_impl(&_mh_execute_header, v34, v35, "IdentityReaderAuthenticator could not determined matched apple issued chain", v39, 2u);
    }

    v16(v37, v38);
    v28 = _swiftEmptyArrayStorage;
    goto LABEL_30;
  }

  v26 = 0;
  v27 = v24 + 32;
  while (1)
  {
    v28 = *(v27 + 8 * v26);
    if (v28 >> 62)
    {
      result = _CocoaArrayWrapper.endIndex.getter();
      if (!result)
      {
        goto LABEL_13;
      }
    }

    else
    {
      result = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!result)
      {
        goto LABEL_13;
      }
    }

    if ((v28 & 0xC000000000000001) != 0)
    {

      v31 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (!*((v28 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        return result;
      }

      v30 = *(v28 + 32);

      v31 = v30;
    }

    v32 = v31;
    v33 = SecCertificateRef.hasBrandAssetsIdentifier.getter();

    if (v33)
    {
      break;
    }

LABEL_13:
    if (v25 == ++v26)
    {
      goto LABEL_24;
    }
  }

  defaultLogger()();
  v40 = Logger.logObject.getter();
  v41 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v40, v41))
  {
    v43 = swift_slowAlloc();
    *v43 = 134217984;
    *(v43 + 4) = v26;
    _os_log_impl(&_mh_execute_header, v40, v41, "IdentityReaderAuthenticator determined matched apple issued chain at index %ld", v43, 0xCu);
  }

  v44 = v1[8];
  v45 = v1[5];

  v16(v44, v45);

LABEL_30:

  v46 = v1[1];

  return v46(v28);
}

uint64_t sub_100041C44(_OWORD *a1)
{
  _StringGuts.grow(_:)(58);
  v1._object = 0x80000001001B3F80;
  v1._countAndFlagsBits = 0xD000000000000038;
  String.append(_:)(v1);
  _print_unlocked<A, B>(_:_:)();
  return 0;
}

uint64_t sub_100041CE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for DIPError.Code();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100004E70(&qword_100201560, &unk_1001AB910);
  __chkstk_darwin(v8 - 8);
  v10 = v27 - v9;
  v11 = type metadata accessor for DIPError();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27[1] = a1;
  swift_errorRetain();
  sub_100004E70(&qword_100200208, &qword_1001AA530);
  v15 = swift_dynamicCast();
  v16 = *(v12 + 56);
  if (!v15)
  {
    v16(v10, 1, 1, v11);
    sub_10000A0D4(v10, &qword_100201560, &unk_1001AB910);
    v18 = &enum case for IDCSAnalytics.ReaderAuthFailureReason.other(_:);
    goto LABEL_5;
  }

  v16(v10, 0, 1, v11);
  (*(v12 + 32))(v14, v10, v11);
  DIPError.code.getter();
  (*(v12 + 8))(v14, v11);
  v17 = (*(v5 + 88))(v7, v4);
  if (v17 == enum case for DIPError.Code.idcsMisformattedIssuerAuthCerts(_:))
  {
    v18 = &enum case for IDCSAnalytics.ReaderAuthFailureReason.misformattedCertificate(_:);
LABEL_5:
    v19 = *v18;
    v20 = type metadata accessor for IDCSAnalytics.ReaderAuthFailureReason();
    v21 = *(*(v20 - 8) + 104);
    v22 = a2;
    v23 = v19;
    return v21(v22, v23, v20);
  }

  if (v17 == enum case for DIPError.Code.idcsUnknownIssuerAuthAlgorithm(_:))
  {
    v18 = &enum case for IDCSAnalytics.ReaderAuthFailureReason.unsupportedIssuerAuthAlgorithm(_:);
    goto LABEL_5;
  }

  if (v17 == enum case for DIPError.Code.idcsMissingReaderAuth(_:))
  {
    v18 = &enum case for IDCSAnalytics.ReaderAuthFailureReason.noAuthProvided(_:);
    goto LABEL_5;
  }

  if (v17 == enum case for DIPError.Code.idcsMissingReaderAuthCerts(_:))
  {
    v18 = &enum case for IDCSAnalytics.ReaderAuthFailureReason.missingCertificate(_:);
    goto LABEL_5;
  }

  if (v17 == enum case for DIPError.Code.idcsUntrustedReaderAuthCertificate(_:))
  {
    v18 = &enum case for IDCSAnalytics.ReaderAuthFailureReason.untrustedCertificate(_:);
    goto LABEL_5;
  }

  if (v17 == enum case for DIPError.Code.idcsMissingReaderOrganization(_:))
  {
    v18 = &enum case for IDCSAnalytics.ReaderAuthFailureReason.missingOrganization(_:);
    goto LABEL_5;
  }

  if (v17 == enum case for DIPError.Code.idcsUnknownReaderAuthAlgorithm(_:))
  {
    v18 = &enum case for IDCSAnalytics.ReaderAuthFailureReason.unsupportedReaderAuthAlgorithm(_:);
    goto LABEL_5;
  }

  if (v17 == enum case for DIPError.Code.idcsMisformattedReaderAuthSignature(_:))
  {
    v18 = &enum case for IDCSAnalytics.ReaderAuthFailureReason.misformattedSignature(_:);
    goto LABEL_5;
  }

  if (v17 == enum case for DIPError.Code.idcsInvalidReaderAuthSignature(_:))
  {
    v18 = &enum case for IDCSAnalytics.ReaderAuthFailureReason.invalidSignature(_:);
    goto LABEL_5;
  }

  if (v17 == enum case for DIPError.Code.idcsRevokedReaderAuthCertificate(_:))
  {
    v18 = &enum case for IDCSAnalytics.ReaderAuthFailureReason.revokedCertificate(_:);
    goto LABEL_5;
  }

  if (v17 == enum case for DIPError.Code.idcsExpiredReaderAuthCertificate(_:))
  {
    v18 = &enum case for IDCSAnalytics.ReaderAuthFailureReason.expiredCertificate(_:);
    goto LABEL_5;
  }

  if (v17 == enum case for DIPError.Code.idcsUnknownDocumentType(_:))
  {
    v18 = &enum case for IDCSAnalytics.ReaderAuthFailureReason.unknownDocumentType(_:);
    goto LABEL_5;
  }

  if (v17 == enum case for DIPError.Code.idcsNotYetValidReaderAuthCertificate(_:))
  {
    v18 = &enum case for IDCSAnalytics.ReaderAuthFailureReason.notYetValidCertificate(_:);
    goto LABEL_5;
  }

  v25 = v17;
  v26 = enum case for DIPError.Code.idcsHostNameMismatchForReaderAuthCertificate(_:);
  v20 = type metadata accessor for IDCSAnalytics.ReaderAuthFailureReason();
  v21 = *(*(v20 - 8) + 104);
  if (v25 != v26)
  {
    v21(a2, enum case for IDCSAnalytics.ReaderAuthFailureReason.other(_:), v20);
    return (*(v5 + 8))(v7, v4);
  }

  v23 = enum case for IDCSAnalytics.ReaderAuthFailureReason.hostNameInvalid(_:);
  v22 = a2;
  return v21(v22, v23, v20);
}

uint64_t sub_1000421D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[14] = a5;
  v6[15] = a6;
  v6[12] = a3;
  v6[13] = a4;
  v6[10] = a1;
  v6[11] = a2;
  v7 = type metadata accessor for Logger();
  v6[16] = v7;
  v6[17] = *(v7 - 8);
  v6[18] = swift_task_alloc();
  v8 = type metadata accessor for DIPError.Code();
  v6[19] = v8;
  v6[20] = *(v8 - 8);
  v6[21] = swift_task_alloc();
  v6[22] = swift_task_alloc();
  sub_100004E70(&qword_100201560, &unk_1001AB910);
  v6[23] = swift_task_alloc();
  v9 = type metadata accessor for DIPError();
  v6[24] = v9;
  v6[25] = *(v9 - 8);
  v6[26] = swift_task_alloc();
  v10 = type metadata accessor for DIPCertUsage();
  v6[27] = v10;
  v11 = *(v10 - 8);
  v6[28] = v11;
  v6[29] = *(v11 + 64);
  v6[30] = swift_task_alloc();
  sub_100004E70(&qword_100201CD0, &qword_1001AC550);
  v6[31] = swift_task_alloc();
  v6[32] = sub_100004E70(&qword_100201568, &unk_1001AB920);
  v6[33] = swift_task_alloc();
  v12 = type metadata accessor for DIPOIDVerifier();
  v6[34] = v12;
  v13 = *(v12 - 8);
  v6[35] = v13;
  v6[36] = *(v13 + 64);
  v6[37] = swift_task_alloc();
  v6[38] = swift_task_alloc();

  return _swift_task_switch(sub_1000424DC, 0, 0);
}

uint64_t sub_1000424DC()
{
  v1 = *(v0 + 104);
  sub_10001A940(*(v0 + 120), v0 + 16);
  DIPOIDVerifier.init(dateProvider:)();
  if (v1)
  {
    DIPOIDVerifier.setTrustedRoots(_:)(*(v0 + 104));
  }

  v2 = *(v0 + 264);
  v3 = *(*(v0 + 256) + 48);
  sub_100043FA0(v2, (v2 + v3), *(v0 + 80), *(v0 + 88), *(v0 + 96));
  v4 = swift_task_alloc();
  *(v0 + 312) = v4;
  *v4 = v0;
  v4[1] = sub_100042B30;
  v5 = *(v0 + 112);

  return DIPOIDVerifier.verifyChain(_:forUsage:)(v5, v2 + v3);
}

uint64_t sub_100042B30(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 320) = a1;
  *(v3 + 328) = v1;

  if (v1)
  {
    v4 = sub_100042FB0;
  }

  else
  {
    v4 = sub_100042C44;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100042C44()
{
  if ((sub_100044494() & 1) != 0 || (v1 = [objc_opt_self() standardUserDefaults], v2._object = 0x80000001001B4030, v2._countAndFlagsBits = 0xD000000000000026, v3 = NSUserDefaults.internalBool(forKey:)(v2), v1, v3))
  {
    v5 = *(v0 + 296);
    v4 = *(v0 + 304);
    v33 = v4;
    v34 = *(v0 + 320);
    v6 = *(v0 + 280);
    v8 = *(v0 + 264);
    v7 = *(v0 + 272);
    v9 = *(v0 + 240);
    v10 = *(v0 + 248);
    v26 = v5;
    v27 = v9;
    v11 = *(v0 + 224);
    v28 = *(v0 + 288);
    v29 = *(v0 + 232);
    v12 = *(v0 + 216);
    v30 = *(v0 + 112);
    v31 = v8;
    v32 = *(v0 + 80);
    v13 = type metadata accessor for TaskPriority();
    (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
    v14 = v5;
    v15 = v7;
    (*(v6 + 16))(v14, v4, v7);
    (*(v11 + 16))(v9, v8, v12);
    v16 = (*(v6 + 80) + 32) & ~*(v6 + 80);
    v17 = (v28 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
    v18 = (*(v11 + 80) + v17 + 8) & ~*(v11 + 80);
    v19 = swift_allocObject();
    *(v19 + 16) = 0;
    *(v19 + 24) = 0;
    (*(v6 + 32))(v19 + v16, v26, v15);
    *(v19 + v17) = v30;
    (*(v11 + 32))(v19 + v18, v27, v12);
    *(v19 + ((v29 + v18 + 7) & 0xFFFFFFFFFFFFFFF8)) = v32;

    v35 = sub_1000BDD04(0, 0, v10, &unk_1001AB938, v19);

    sub_10000A0D4(v31, &qword_100201568, &unk_1001AB920);
    (*(v6 + 8))(v33, v15);
  }

  else
  {
    v20 = *(v0 + 304);
    v21 = *(v0 + 272);
    v22 = *(v0 + 280);
    v23 = *(v0 + 264);

    sub_10000A0D4(v23, &qword_100201568, &unk_1001AB920);
    (*(v22 + 8))(v20, v21);
    v35 = 0;
  }

  v24 = *(v0 + 8);

  return v24(v35);
}

uint64_t sub_100042FB0()
{
  v44 = v0;
  sub_10000A0D4(v0[33], &qword_100201568, &unk_1001AB920);
  v1 = [objc_opt_self() standardUserDefaults];
  v2._object = 0x80000001001B3FF0;
  v2._countAndFlagsBits = 0xD00000000000003DLL;
  v3 = NSUserDefaults.internalBool(forKey:)(v2);

  if (v3)
  {
    v4 = v0[25];
    v0[7] = static DIPOIDVerifier.getSpecificCertificateError(_:)();
    sub_100004E70(&qword_100200208, &qword_1001AA530);
    v5 = swift_dynamicCast();
    v6 = *(v4 + 56);
    if (v5)
    {
      v8 = v0[25];
      v7 = v0[26];
      v10 = v0[23];
      v9 = v0[24];
      v12 = v0[21];
      v11 = v0[22];
      v14 = v0[19];
      v13 = v0[20];
      v6(v10, 0, 1, v9);
      (*(v8 + 32))(v7, v10, v9);
      DIPError.code.getter();
      (*(v13 + 104))(v12, enum case for DIPError.Code.hostNameMismatchForCertificate(_:), v14);
      sub_10004697C(&qword_100200210, &type metadata accessor for DIPError.Code, &protocol conformance descriptor for DIPError.Code);
      dispatch thunk of RawRepresentable.rawValue.getter();
      dispatch thunk of RawRepresentable.rawValue.getter();
      v15 = *(v13 + 8);
      v15(v12, v14);
      v15(v11, v14);
      if (v0[8] == v0[9])
      {
        defaultLogger()();

        v16 = Logger.logObject.getter();
        v17 = static os_log_type_t.debug.getter();

        v18 = os_log_type_enabled(v16, v17);
        v19 = v0[38];
        v21 = v0[34];
        v20 = v0[35];
        v23 = v0[25];
        v22 = v0[26];
        v24 = v0[24];
        v25 = v0[17];
        v41 = v0[16];
        v42 = v0[18];
        if (v18)
        {
          v40 = v0[38];
          v26 = swift_slowAlloc();
          v39 = v22;
          v27 = swift_slowAlloc();
          v43 = v27;
          *v26 = 136315138;
          type metadata accessor for SecCertificate(0);
          v28 = Array.description.getter();
          v38 = v24;
          v30 = sub_10010150C(v28, v29, &v43);

          *(v26 + 4) = v30;
          _os_log_impl(&_mh_execute_header, v16, v17, "Request origin host validation log only, permitting host name mismatch for readerCerts %s", v26, 0xCu);
          sub_100005090(v27);

          (*(v25 + 8))(v42, v41);
          (*(v23 + 8))(v39, v38);
          (*(v20 + 8))(v40, v21);
        }

        else
        {

          (*(v25 + 8))(v42, v41);
          (*(v23 + 8))(v22, v24);
          (*(v20 + 8))(v19, v21);
        }

        v37 = v0[1];

        return v37(0);
      }

      (*(v0[25] + 8))(v0[26], v0[24]);
    }

    else
    {
      v31 = v0[23];
      v6(v31, 1, 1, v0[24]);
      sub_10000A0D4(v31, &qword_100201560, &unk_1001AB910);
    }
  }

  v32 = v0[38];
  v34 = v0[34];
  v33 = v0[35];
  swift_willThrow();
  (*(v33 + 8))(v32, v34);

  v35 = v0[1];

  return v35();
}

uint64_t sub_10004353C@<X0>(uint64_t a2@<X8>)
{
  v74 = a2;
  v2 = type metadata accessor for DIPError.Code();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v73 = &v63 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v66 = &v63 - v6;
  v7 = type metadata accessor for Logger();
  v67 = *(v7 - 8);
  v68 = v7;
  v8 = __chkstk_darwin(v7);
  v10 = &v63 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v8);
  v65 = &v63 - v12;
  v13 = __chkstk_darwin(v11);
  v15 = &v63 - v14;
  v16 = __chkstk_darwin(v13);
  v18 = &v63 - v17;
  __chkstk_darwin(v16);
  v63 = &v63 - v19;
  v20 = sub_100004E70(&qword_100201488, &qword_1001ACFD0);
  v21 = __chkstk_darwin(v20 - 8);
  v71 = &v63 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __chkstk_darwin(v21);
  v64 = &v63 - v24;
  v25 = __chkstk_darwin(v23);
  v27 = &v63 - v26;
  v28 = __chkstk_darwin(v25);
  v30 = &v63 - v29;
  __chkstk_darwin(v28);
  v32 = &v63 - v31;
  v33 = static DIPOIDVerifier.getSpecificCertificateError(_:)();
  v34 = *(v3 + 56);
  v75 = v32;
  v35 = v32;
  v36 = v34;
  v34(v35, 1, 1, v2);
  v72 = v33;
  swift_getErrorValue();
  Error.dipErrorCode.getter();
  v69 = *(v3 + 48);
  v70 = v3 + 48;
  if (v69(v30, 1, v2) == 1)
  {
    goto LABEL_2;
  }

  sub_100046360(v30, v27, &qword_100201488, &qword_1001ACFD0);
  v42 = (*(v3 + 88))(v27, v2);
  if (v42 == enum case for DIPError.Code.revokedCertificate(_:))
  {
    v37 = v30;
    defaultLogger()();
    v43 = Logger.logObject.getter();
    v44 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      *v45 = 0;
      _os_log_impl(&_mh_execute_header, v43, v44, "Encountered revoked reader auth certificate", v45, 2u);
    }

    (*(v67 + 8))(v15, v68);
    v41 = v75;
    sub_10000A0D4(v75, &qword_100201488, &qword_1001ACFD0);
    v46 = &enum case for DIPError.Code.idcsRevokedReaderAuthCertificate(_:);
    goto LABEL_19;
  }

  if (v42 == enum case for DIPError.Code.expiredCertificate(_:))
  {
    v37 = v30;
    defaultLogger()();
    v47 = Logger.logObject.getter();
    v48 = static os_log_type_t.error.getter();
    v49 = os_log_type_enabled(v47, v48);
    v41 = v75;
    if (v49)
    {
      v50 = swift_slowAlloc();
      *v50 = 0;
      _os_log_impl(&_mh_execute_header, v47, v48, "Encountered expired reader auth certificate", v50, 2u);
    }

    (*(v67 + 8))(v18, v68);
    sub_10000A0D4(v41, &qword_100201488, &qword_1001ACFD0);
    v46 = &enum case for DIPError.Code.idcsExpiredReaderAuthCertificate(_:);
    goto LABEL_19;
  }

  v41 = v75;
  if (v42 == enum case for DIPError.Code.notYetValidCertificate(_:))
  {
    v37 = v30;
    v51 = v65;
    defaultLogger()();
    v52 = Logger.logObject.getter();
    v53 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      *v54 = 0;
      _os_log_impl(&_mh_execute_header, v52, v53, "Encountered not yet valid reader auth certificate", v54, 2u);
    }

    (*(v67 + 8))(v51, v68);
    sub_10000A0D4(v41, &qword_100201488, &qword_1001ACFD0);
    v46 = &enum case for DIPError.Code.idcsNotYetValidReaderAuthCertificate(_:);
    goto LABEL_19;
  }

  if (v42 == enum case for DIPError.Code.hostNameMismatchForCertificate(_:))
  {
    v37 = v30;
    sub_10000A0D4(v75, &qword_100201488, &qword_1001ACFD0);
    v46 = &enum case for DIPError.Code.idcsHostNameMismatchForReaderAuthCertificate(_:);
LABEL_19:
    (*(v3 + 104))(v41, *v46, v2);
    v36(v41, 0, 1, v2);
    goto LABEL_20;
  }

  if (v42 != enum case for DIPError.Code.idcsUnknownDocumentType(_:))
  {
    (*(v3 + 8))(v27, v2);
LABEL_2:
    v37 = v30;
    defaultLogger()();
    v38 = Logger.logObject.getter();
    v39 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      *v40 = 0;
      _os_log_impl(&_mh_execute_header, v38, v39, "Encountered generic reader auth certificate failure", v40, 2u);
    }

    (*(v67 + 8))(v10, v68);
    v41 = v75;
    goto LABEL_20;
  }

  v37 = v30;
  v58 = v63;
  defaultLogger()();
  v59 = Logger.logObject.getter();
  v60 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v59, v60))
  {
    v61 = swift_slowAlloc();
    *v61 = 0;
    _os_log_impl(&_mh_execute_header, v59, v60, "Encountered unknown document type", v61, 2u);
  }

  (*(v67 + 8))(v58, v68);
  swift_getErrorValue();
  v62 = v64;
  Error.dipErrorCode.getter();
  sub_10000A0D4(v41, &qword_100201488, &qword_1001ACFD0);
  sub_100046524(v62, v41, &qword_100201488, &qword_1001ACFD0);
LABEL_20:
  v55 = v71;
  sub_10000A0D4(v37, &qword_100201488, &qword_1001ACFD0);
  sub_100046360(v41, v55, &qword_100201488, &qword_1001ACFD0);
  if (v69(v55, 1, v2) == 1)
  {
    sub_10000A0D4(v55, &qword_100201488, &qword_1001ACFD0);
    (*(v3 + 104))(v73, enum case for DIPError.Code.idcsUntrustedReaderAuthCertificate(_:), v2);
    swift_errorRetain();
    sub_10002688C(_swiftEmptyArrayStorage);
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  }

  else
  {
    v56 = v66;
    (*(v3 + 32))(v66, v55, v2);
    (*(v3 + 16))(v73, v56, v2);
    swift_errorRetain();
    sub_10002688C(_swiftEmptyArrayStorage);
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();

    (*(v3 + 8))(v56, v2);
  }

  return sub_10000A0D4(v41, &qword_100201488, &qword_1001ACFD0);
}

void *sub_100043FA0(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v6 = v5;
  v49 = a1;
  v11 = type metadata accessor for Logger();
  v48 = *(v11 - 8);
  __chkstk_darwin(v11);
  v13 = &v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for ISO18013KnownDocTypes();
  v15 = *(v14 - 8);
  v16 = __chkstk_darwin(v14);
  v18 = &v44 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a5)
  {
    v47 = a2;
    v19 = objc_opt_self();

    v20 = [v19 standardUserDefaults];
    v21 = String._bridgeToObjectiveC()();
    v22 = [v20 stringForKey:v21];

    if (v22)
    {
      v46 = v6;
      v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v25 = v24;

      defaultLogger()();

      v26 = Logger.logObject.getter();
      v27 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        v29 = swift_slowAlloc();
        v45 = v23;
        v50 = v29;
        *v28 = 136315394;

        v30 = sub_10010150C(a4, a5, &v50);

        *(v28 + 4) = v30;
        *(v28 + 12) = 2080;
        a4 = v45;
        *(v28 + 14) = sub_10010150C(v45, v25, &v50);
        _os_log_impl(&_mh_execute_header, v26, v27, "Overriding relying party identifier %s with %s", v28, 0x16u);
        swift_arrayDestroy();

        (*(v48 + 8))(v13, v11);
      }

      else
      {

        (*(v48 + 8))(v13, v11);

        a4 = v23;
      }
    }

    else
    {
      v25 = a5;
    }

    v39 = v49;
    *v49 = a4;
    v39[1] = v25;
    v40 = enum case for DIPCertUsage.webPresentment(_:);
    v41 = type metadata accessor for DIPCertUsage();
    v42 = *(*(v41 - 8) + 104);
    (v42)(v39, v40, v41);
    v43 = v47;
    *v47 = a4;
    v43[1] = v25;
    v42();
  }

  else
  {
    v31 = v16;
    result = sub_1000353A4(a3);
    if (!v5)
    {
      v33 = a2;
      v34 = result;
      (*(v15 + 104))(v18, enum case for ISO18013KnownDocTypes.iso18013_5_1_mDL(_:), v31);
      v35 = sub_100035954(v18, v34);

      (*(v15 + 8))(v18, v31);
      v36 = type metadata accessor for DIPCertUsage();
      v37 = *(*(v36 - 8) + 104);
      if (v35)
      {
        v37(v49, enum case for DIPCertUsage.iso18013ReaderAuth(_:), v36);
        v38 = &enum case for DIPCertUsage.iso18013ReaderAuthNoNetwork(_:);
      }

      else
      {
        v37(v49, enum case for DIPCertUsage.iso18013ReaderAuthNoOIDCheck(_:), v36);
        v38 = &enum case for DIPCertUsage.iso18013ReaderAuthNoOIDCheckNoNetwork(_:);
      }

      return (v37)(v33, *v38, v36);
    }
  }

  return result;
}

uint64_t sub_100044494()
{
  v1 = SecTrustCopyResult(v0);
  if (!v1)
  {
    goto LABEL_9;
  }

  v2 = v1;
  if ([(__CFDictionary *)v1 objectForKey:kSecTrustRevocationChecked])
  {
    _bridgeAnyObjectToAny(_:)();

    swift_unknownObjectRelease();
  }

  else
  {

    v6 = 0u;
    v7 = 0u;
  }

  v8[0] = v6;
  v8[1] = v7;
  if (!*(&v7 + 1))
  {
    sub_10000A0D4(v8, &qword_1002004C0, &unk_1001AB940);
    goto LABEL_9;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_9:
    v3 = 1;
    return v3 & 1;
  }

  v3 = v5 ^ 1;
  return v3 & 1;
}

uint64_t sub_100044578(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[5] = a6;
  v7[6] = a7;
  v7[3] = a4;
  v7[4] = a5;
  v7[2] = a1;
  v8 = type metadata accessor for DIPError();
  v7[7] = v8;
  v7[8] = *(v8 - 8);
  v7[9] = swift_task_alloc();
  v9 = type metadata accessor for IDCSAnalytics.ReaderAuthOnlineOCSPOutcome();
  v7[10] = v9;
  v7[11] = *(v9 - 8);
  v7[12] = swift_task_alloc();
  type metadata accessor for DIPSignpost.Config();
  v7[13] = swift_task_alloc();
  v10 = type metadata accessor for DIPSignpost();
  v7[14] = v10;
  v7[15] = *(v10 - 8);
  v7[16] = swift_task_alloc();
  v11 = type metadata accessor for DIPError.Code();
  v7[17] = v11;
  v7[18] = *(v11 - 8);
  v7[19] = swift_task_alloc();
  v12 = type metadata accessor for Logger();
  v7[20] = v12;
  v7[21] = *(v12 - 8);
  v7[22] = swift_task_alloc();
  v7[23] = swift_task_alloc();

  return _swift_task_switch(sub_1000447E8, 0, 0);
}

uint64_t sub_1000447E8()
{
  v1 = [objc_opt_self() standardUserDefaults];
  v2._countAndFlagsBits = 0xD000000000000026;
  v2._object = 0x80000001001B4030;
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
      _os_log_impl(&_mh_execute_header, v4, v5, "Simulating OCSP failure due to internal defaults setting", v6, 2u);
    }

    v7 = v0[23];
    v8 = v0[20];
    v9 = v0[21];
    v11 = v0[18];
    v10 = v0[19];
    v12 = v0[17];

    (*(v9 + 8))(v7, v8);
    (*(v11 + 104))(v10, enum case for DIPError.Code.internalError(_:), v12);
    sub_10002688C(_swiftEmptyArrayStorage);
    sub_10004697C(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    v13 = v0[12];
    v14 = v0[10];
    v15 = v0[11];
    v17 = v0[8];
    v16 = v0[9];
    v18 = v0[7];
    sub_10004353C(v16);
    type metadata accessor for IDCSAnalytics();
    (*(v15 + 104))(v13, enum case for IDCSAnalytics.ReaderAuthOnlineOCSPOutcome.revoked(_:), v14);
    static IDCSAnalytics.sendOnlineOCSPOutcomeEvent(documentTypes:outcome:)();
    (*(v15 + 8))(v13, v14);
    swift_allocError();
    (*(v17 + 16))(v19, v16, v18);
    swift_willThrow();

    (*(v17 + 8))(v16, v18);

    v20 = v0[1];

    return v20();
  }

  else
  {
    static IDCSSignposts.cryptoRevokedCertificateCheck.getter();
    DIPSignpost.init(_:)();
    v22 = swift_task_alloc();
    v0[24] = v22;
    *v22 = v0;
    v22[1] = sub_100044C10;
    v24 = v0[4];
    v23 = v0[5];

    return DIPOIDVerifier.verifyChain(_:forUsage:)(v24, v23);
  }
}

uint64_t sub_100044C10(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 200) = a1;
  *(v3 + 208) = v1;

  if (v1)
  {
    v4 = sub_100044F5C;
  }

  else
  {
    v4 = sub_100044D24;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100044D24()
{
  if (sub_100044494())
  {
    defaultLogger()();
    v1 = Logger.logObject.getter();
    v2 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v1, v2))
    {
      v3 = swift_slowAlloc();
      *v3 = 0;
      _os_log_impl(&_mh_execute_header, v1, v2, "Reader certificate might have revoked certificate when making request", v3, 2u);
    }

    v5 = v0[21];
    v4 = v0[22];
    v6 = v0[20];

    (*(v5 + 8))(v4, v6);
    v18 = 1;
    v7 = &enum case for IDCSAnalytics.ReaderAuthOnlineOCSPOutcome.inconclusive(_:);
  }

  else
  {
    v18 = 0;
    v7 = &enum case for IDCSAnalytics.ReaderAuthOnlineOCSPOutcome.notRevoked(_:);
  }

  v9 = v0[15];
  v8 = v0[16];
  v16 = v0[25];
  v17 = v0[14];
  v11 = v0[11];
  v10 = v0[12];
  v12 = v0[10];
  v13 = v0[2];
  type metadata accessor for IDCSAnalytics();
  (*(v11 + 104))(v10, *v7, v12);
  static IDCSAnalytics.sendOnlineOCSPOutcomeEvent(documentTypes:outcome:)();

  (*(v11 + 8))(v10, v12);
  *v13 = v18;
  DIPSignpost.end(workflowID:isBackground:)(0, 2);
  (*(v9 + 8))(v8, v17);

  v14 = v0[1];

  return v14();
}

uint64_t sub_100044F5C()
{
  v2 = v0[15];
  v1 = v0[16];
  v3 = v0[14];
  DIPSignpost.end(workflowID:isBackground:)(0, 2);
  (*(v2 + 8))(v1, v3);
  v4 = v0[12];
  v5 = v0[10];
  v6 = v0[11];
  v8 = v0[8];
  v7 = v0[9];
  v9 = v0[7];
  sub_10004353C(v7);
  type metadata accessor for IDCSAnalytics();
  (*(v6 + 104))(v4, enum case for IDCSAnalytics.ReaderAuthOnlineOCSPOutcome.revoked(_:), v5);
  static IDCSAnalytics.sendOnlineOCSPOutcomeEvent(documentTypes:outcome:)();
  (*(v6 + 8))(v4, v5);
  sub_10004697C(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
  swift_allocError();
  (*(v8 + 16))(v10, v7, v9);
  swift_willThrow();

  (*(v8 + 8))(v7, v9);

  v11 = v0[1];

  return v11();
}

uint64_t sub_100045160(uint64_t a1, uint64_t a2, void (*a3)(void), char *a4, uint64_t (*a5)(uint64_t), unint64_t a6)
{
  v103 = a5;
  v104 = a6;
  v101 = a3;
  v102 = a4;
  v105 = a2;
  v7 = type metadata accessor for COSESignatureValidator();
  v94 = *(v7 - 8);
  v95 = v7;
  __chkstk_darwin(v7);
  v96 = v82 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = sub_100004E70(&qword_100201520, &qword_1001AD110);
  v92 = *(v93 - 8);
  __chkstk_darwin(v93);
  v97 = v82 - v9;
  v10 = type metadata accessor for ISO18013PresentmentType();
  v99 = *(v10 - 8);
  v100 = v10;
  __chkstk_darwin(v10);
  v98 = v82 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DIPError.Code();
  v13 = *(v12 - 8);
  v14 = __chkstk_darwin(v12);
  v91 = v82 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v14);
  v90 = v82 - v17;
  v18 = __chkstk_darwin(v16);
  v89 = v82 - v19;
  __chkstk_darwin(v18);
  v111 = v82 - v20;
  v21 = sub_100004E70(&qword_100201528, &qword_1001AB900);
  __chkstk_darwin(v21 - 8);
  v106 = v82 - v22;
  v23 = type metadata accessor for PublicKeyAlgorithm();
  v24 = *(v23 - 8);
  v108 = v23;
  v109 = v24;
  __chkstk_darwin(v23);
  v107 = v82 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for Logger();
  v27 = *(v26 - 8);
  v28 = __chkstk_darwin(v26);
  v88 = v82 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __chkstk_darwin(v28);
  v87 = v82 - v31;
  __chkstk_darwin(v30);
  v33 = v82 - v32;
  defaultLogger()();
  v34 = Logger.logObject.getter();
  v35 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    *v36 = 0;
    _os_log_impl(&_mh_execute_header, v34, v35, "Verifying reader signature", v36, 2u);
  }

  v37 = *(v27 + 8);
  v37(v33, v26);
  v114 = COSE_Sign1.signature.getter();
  v39 = v38;
  v40 = COSE_Sign1.x509Chain.getter();
  if (!v40)
  {
    goto LABEL_8;
  }

  if (!v40[2])
  {

LABEL_8:
    (*(v13 + 104))(v111, enum case for DIPError.Code.idcsMissingReaderAuthCerts(_:), v12);
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_10004697C(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
LABEL_9:
    v46 = v114;
    v47 = v39;
    return sub_1000092BC(v46, v47);
  }

  v85 = v12;
  v86 = v39;
  v41 = v40[4];
  v42 = v40[5];
  sub_100009708(v41, v42);

  sub_100009708(v41, v42);
  v43 = v110;
  v44 = decodeCertificate(fromDER:)();
  if (v43)
  {
    sub_1000092BC(v114, v86);
    sub_1000092BC(v41, v42);
    return sub_1000092BC(v41, v42);
  }

  v48 = v44;
  sub_1000092BC(v41, v42);
  sub_1000092BC(v41, v42);
  v49 = v48;
  v50 = SecCertificateRef.rawECPublicKeyData()();
  if (v51 >> 60 == 15)
  {
    (*(v13 + 104))(v111, enum case for DIPError.Code.idcsMisformattedReaderAuthCerts(_:), v85);
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_10004697C(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    v46 = v114;
    v47 = v86;
    return sub_1000092BC(v46, v47);
  }

  v84 = v50;
  v110 = v51;
  v52 = v106;
  SecCertificateRef.publicKeyAlgorithm()();
  v53 = v108;
  if ((*(v109 + 48))(v52, 1, v108) == 1)
  {
    v39 = v86;
    sub_10000A0D4(v52, &qword_100201528, &qword_1001AB900);
    (*(v13 + 104))(v111, enum case for DIPError.Code.idcsMisformattedReaderAuthCerts(_:), v85);
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_10004697C(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    sub_10001C120(v84, v110);

    goto LABEL_9;
  }

  v82[0] = v37;
  v82[1] = a1;
  v83 = v49;
  (*(v109 + 32))(v107, v52, v53);
  type metadata accessor for CBOREncoder();
  swift_allocObject();
  v54 = CBOREncoder.init()();
  (*(v99 + 104))(v98, enum case for ISO18013PresentmentType.physical(_:), v100);
  CBOREncoder.presentmentType.setter();
  v101(0);
  sub_10004697C(v102, v103, v104);
  v112 = dispatch thunk of CBOREncoder.encode<A>(_:)();
  v113 = v55;
  v56 = v112;
  v57 = v55;
  sub_100009708(v112, v55);
  sub_100046428();
  sub_10004647C();

  v58 = v97;
  CBOREncodedCBOR.init(value:tag:encoder:)();
  v103 = v56;
  v104 = v57;
  v105 = v54;
  v99 = v26;
  v59 = v93;
  v102 = 0;
  v106 = CBOREncodedCBOR.dataValue.getter();
  v101 = v60;
  (*(v92 + 8))(v58, v59);
  v61 = *(v13 + 104);
  v62 = v85;
  (v61)(v111, enum case for DIPError.Code.idcsUnknownReaderAuthAlgorithm(_:), v85);
  (v61)(v89, enum case for DIPError.Code.idcsMisformattedReaderAuthCerts(_:), v62);
  (v61)(v90, enum case for DIPError.Code.idcsMisformattedReaderAuthSignature(_:), v62);
  v100 = v13 + 104;
  v98 = v61;
  (v61)(v91, enum case for DIPError.Code.idcsInvalidReaderAuthSignature(_:), v62);
  v63 = v86;
  v64 = v101;
  COSESignatureValidator.init(errorCodeUnknownAlgorithm:errorCodeInvalidPublicKey:errorCodeMisformattedSignature:errorCodeInvalidSignature:)();
  COSE_Sign1.algorithmIdentifier.getter();
  v65 = v114;
  v66 = v84;
  v67 = v110;
  v68 = v106;
  v69 = v102;
  COSESignatureValidator.validateSignature(signature:publicKeyData:publicKeyAlgorithm:algorithmIdentifier:payload:)();
  if (!v69)
  {
    sub_1000092BC(v65, v63);

    sub_10001C120(v66, v67);
    sub_1000092BC(v68, v64);

    sub_1000092BC(v103, v104);
LABEL_21:
    v81 = v107;
    (*(v94 + 8))(v96, v95);
    return (*(v109 + 8))(v81, v108);
  }

  v70 = [objc_opt_self() standardUserDefaults];
  v71._countAndFlagsBits = 0xD00000000000002ALL;
  v71._object = 0x80000001001B3ED0;
  v72 = NSUserDefaults.internalBool(forKey:)(v71);

  if (v72)
  {
    v73 = v87;
    defaultLogger()();
    v74 = Logger.logObject.getter();
    v75 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v74, v75))
    {
      v76 = swift_slowAlloc();
      *v76 = 0;
      _os_log_impl(&_mh_execute_header, v74, v75, "Ignoring reader signature validation error due to user defaults setting", v76, 2u);
    }

    v77 = v73;
    v78 = v99;
    v79 = v82[0];
    (v82[0])(v77, v99);
    v80 = v88;
    defaultLogger()();
    DIPLogError(_:message:log:)();
    sub_1000092BC(v114, v86);

    sub_10001C120(v84, v110);
    sub_1000092BC(v106, v64);

    sub_1000092BC(v103, v104);
    v79(v80, v78);
    goto LABEL_21;
  }

  v102 = "nauthenticated reader";
  (v98)(v111, enum case for DIPError.Code.internalError(_:), v85);
  swift_errorRetain();
  sub_10002688C(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_10004697C(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();
  sub_1000092BC(v114, v86);

  sub_10001C120(v84, v110);
  sub_1000092BC(v106, v64);

  sub_1000092BC(v103, v104);
  (*(v94 + 8))(v96, v95);
  return (*(v109 + 8))(v107, v108);
}

uint64_t sub_1000461BC@<X0>(void *a1@<X8>)
{
  sub_100004E70(&qword_100201508, &qword_1001AB888);
  sub_1000464D0(&qword_100201500, &qword_100201508, &qword_1001AB888);
  result = Collection.nilIfEmpty.getter();
  *a1 = v3;
  return result;
}

uint64_t sub_100046244(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IdentityReaderAuthenticator.Request(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000462A8(uint64_t a1)
{
  v2 = type metadata accessor for IdentityReaderAuthenticator.Request(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_10004630C()
{
  result = qword_1002014B8;
  if (!qword_1002014B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002014B8);
  }

  return result;
}

uint64_t sub_100046360(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100004E70(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1000463C8@<X0>(uint64_t *a2@<X8>)
{
  result = COSE_Sign1.x509Chain.getter();
  *a2 = result;
  return result;
}

unint64_t sub_100046428()
{
  result = qword_100201538;
  if (!qword_100201538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100201538);
  }

  return result;
}

unint64_t sub_10004647C()
{
  result = qword_100201540;
  if (!qword_100201540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100201540);
  }

  return result;
}

uint64_t sub_1000464D0(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_100021ED0(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100046524(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100004E70(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_10004658C()
{
  v1 = type metadata accessor for DIPOIDVerifier();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = type metadata accessor for DIPCertUsage();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v5 + v8 + 8) & ~v8;
  v10 = v3 | v8;
  v11 = (*(v7 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  (*(v7 + 8))(v0 + v9, v6);

  return _swift_deallocObject(v0, v11 + 8, v10 | 7);
}

uint64_t sub_100046704(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for DIPOIDVerifier() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(type metadata accessor for DIPCertUsage() - 8);
  v9 = (v7 + *(v8 + 80) + 8) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = *(v1 + v7);
  v13 = *(v1 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v14 = swift_task_alloc();
  *(v3 + 16) = v14;
  *v14 = v3;
  v14[1] = sub_1000104D4;

  return sub_100044578(a1, v10, v11, v1 + v6, v12, v1 + v9, v13);
}

uint64_t sub_1000468A0(uint64_t result, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return v3;
}

uint64_t sub_1000468AC@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for SecCertificate(0);
  result = Array<A>.base64EncodedStrings.getter();
  *a2 = result;
  return result;
}

uint64_t sub_10004697C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100046A04@<X0>(uint64_t *a1@<X8>)
{
  result = ISO18013ReaderRequest.ItemsRequest.docType.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_100046A70(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 sub_100046A88(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 89) = *(a2 + 89);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_100046AB4(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 105))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100046AFC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 104) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 105) = 1;
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

    *(result + 105) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100046B8C(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

uint64_t sub_100046BA8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 56))
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

uint64_t sub_100046BFC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 13;
    if (a3 >= 0xD)
    {
      *(result + 56) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 56) = 0;
    }

    if (a2)
    {
      *(result + 8) = 0;
      *(result + 16) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

uint64_t sub_100046C68()
{
  if (qword_1001FFFD0 != -1)
  {
    swift_once();
  }

  v0 = *(qword_100205C80 + 16);
  os_unfair_lock_lock((v0 + 72));
  sub_10002171C((v0 + 16), v10);
  os_unfair_lock_unlock((v0 + 72));
  v1 = v10[1];
  v2 = v10[2];
  v3 = v10[3];
  v4 = v10[4];
  v5 = v10[5];
  v6 = v10[6];

  sub_10000ED48(v3, v4);
  v7 = sub_10000ED48(v5, v6);
  if (v1)
  {
    v8 = v1(v7);
    sub_10000ED48(v1, v2);
    return v8;
  }

  else
  {
    type metadata accessor for SELegacyKeystore();

    return swift_allocObject();
  }
}

void sub_100046D78(void *a1)
{
  v3 = type metadata accessor for DIPError.Code();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Logger();
  v45 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = v1;
  if (!a1)
  {
    v47 = 0;
    v16 = SESLegacyKeyGetOccupiedSlots();
    v17 = v47;
    if (v16)
    {
      v18 = v16;
      sub_100048A3C();
      v14 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
      v15 = v17;

      if (!v15)
      {
        goto LABEL_7;
      }

      goto LABEL_20;
    }

    v15 = v47;
    goto LABEL_19;
  }

  v47 = 0;
  v10 = a1;
  v11 = SESLegacyKeyGetOccupiedSlotsWithListenerEndpoint();
  v12 = v47;
  if (!v11)
  {
    v15 = v47;

LABEL_19:
    v14 = 0;
    if (!v15)
    {
      goto LABEL_7;
    }

    goto LABEL_20;
  }

  v13 = v11;
  sub_100048A3C();
  v14 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = v12;

  if (!v15)
  {
LABEL_7:
    if (!v14)
    {
      (*(v4 + 104))(v6, enum case for DIPError.Code.sesLegacyKeyGetOccupiedSlotsError(_:), v3);
      sub_10002688C(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_100008E7C();
      swift_allocError();
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      swift_willThrow();
      return;
    }

    v47 = &_swiftEmptySetSingleton;
    if (v14 >> 62)
    {
      v19 = _CocoaArrayWrapper.endIndex.getter();
      if (v19)
      {
        goto LABEL_10;
      }
    }

    else
    {
      v19 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v19)
      {
LABEL_10:
        if (v19 < 1)
        {
          __break(1u);
        }

        for (i = 0; i != v19; ++i)
        {
          if ((v14 & 0xC000000000000001) != 0)
          {
            v21 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            v21 = *(v14 + 8 * i + 32);
          }

          v22 = v21;
          sub_100102364(v46, [v21 integerValue]);
        }
      }
    }

    return;
  }

LABEL_20:
  v44 = v7;

  defaultLogger()();
  v43 = v15;
  v23 = v15;
  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v42 = v6;
    v27 = v26;
    v28 = swift_slowAlloc();
    v47 = v28;
    *v27 = 136446210;
    v29 = [v23 debugDescription];
    v41 = v23;
    v30 = v29;
    v31 = v3;
    v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v40 = v9;
    v33 = v4;
    v35 = v34;

    v36 = v32;
    v3 = v31;
    v37 = sub_10010150C(v36, v35, &v47);
    v4 = v33;

    *(v27 + 4) = v37;
    v23 = v41;
    _os_log_impl(&_mh_execute_header, v24, v25, "Error from SESLegacyKeyGetOccupiedSlots: %{public}s", v27, 0xCu);
    sub_100005090(v28);

    v6 = v42;

    (*(v45 + 8))(v40, v44);
  }

  else
  {

    (*(v45 + 8))(v9, v44);
  }

  (*(v4 + 104))(v6, enum case for DIPError.Code.sesLegacyKeyGetOccupiedSlotsError(_:), v3);
  v38 = v23;
  sub_10002688C(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_100008E7C();
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();
}

void sub_1000473B4(uint64_t a1)
{
  v2 = type metadata accessor for DIPError.Code();
  v34 = *(v2 - 8);
  v35 = v2;
  __chkstk_darwin(v2);
  v4 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = type metadata accessor for Logger();
  v5 = *(v36 - 8);
  v6 = __chkstk_darwin(v36);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v29 - v9;
  defaultLogger()();
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 134349056;
    *(v13 + 4) = a1;
    _os_log_impl(&_mh_execute_header, v11, v12, "SELegacyKeystore deleteKey keySlot = %{public}ld", v13, 0xCu);
  }

  v14 = *(v5 + 8);
  v14(v10, v36);
  v15 = [objc_allocWithZone(NSNumber) initWithInteger:a1];
  v16 = SESLegacyKeyDelete();
  if (v16)
  {
    v31 = v14;
    v32 = v15;
    v33 = v4;
    v17 = v16;
    defaultLogger()();
    v18 = v17;
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v37 = v22;
      *v21 = 136315138;
      swift_getErrorValue();
      v23 = Error.localizedDescription.getter();
      v25 = sub_10010150C(v23, v24, &v37);
      v30 = v8;
      v26 = v18;
      v27 = v25;

      *(v21 + 4) = v27;
      v18 = v26;
      _os_log_impl(&_mh_execute_header, v19, v20, "Error from SESLegacyKeyDelete: %s", v21, 0xCu);
      sub_100005090(v22);

      v28 = v30;
    }

    else
    {

      v28 = v8;
    }

    v31(v28, v36);
    (*(v34 + 104))(v33, enum case for DIPError.Code.sesLegacyKeyDeleteError(_:), v35);
    v15 = v18;
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100008E7C();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
  }
}

uint64_t sub_100047814(uint64_t a1, unint64_t a2, void *a3, void (*a4)(char *, uint64_t), unint64_t a5, void *a6)
{
  v86 = a3;
  v11 = type metadata accessor for DIPError.Code();
  v77 = *(v11 - 8);
  v78 = v11;
  __chkstk_darwin(v11);
  v79 = &v73 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for Logger();
  v87 = *(v13 - 8);
  v88 = v13;
  v14 = __chkstk_darwin(v13);
  v16 = &v73 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v14);
  v80 = &v73 - v18;
  __chkstk_darwin(v17);
  v20 = &v73 - v19;
  defaultLogger()();
  sub_100009708(a1, a2);
  sub_100009708(a4, a5);
  v81 = a6;
  v21 = a6;
  v22 = a2;
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.debug.getter();
  sub_1000092BC(a1, v22);
  sub_1000092BC(a4, a5);
  v76 = v21;

  v25 = os_log_type_enabled(v23, v24);
  v75 = v16;
  v84 = a4;
  v85 = a5;
  v82 = a1;
  v83 = v22;
  if (v25)
  {
    v26 = swift_slowAlloc();
    v74 = swift_slowAlloc();
    v90 = v74;
    *v26 = 136315906;
    v27 = Data.base16EncodedString()();
    v28 = sub_10010150C(v27._countAndFlagsBits, v27._object, &v90);

    *(v26 + 4) = v28;
    *(v26 + 12) = 2050;
    *(v26 + 14) = v86;
    *(v26 + 22) = 2080;
    v29 = Data.base16EncodedString()();
    v30 = sub_10010150C(v29._countAndFlagsBits, v29._object, &v90);

    *(v26 + 24) = v30;
    *(v26 + 32) = 2080;
    v31 = v81;
    v89 = v81;
    sub_100004E70(&qword_100201658, &qword_1001ABC18);
    v32 = Optional.debugDescription.getter();
    v34 = sub_10010150C(v32, v33, &v90);

    *(v26 + 34) = v34;
    _os_log_impl(&_mh_execute_header, v23, v24, "SELegacyKeystore signDigest digest = %s, keySlot = %{public}ld, externalizedLAContext = %s, seAccessEndpoint = %s", v26, 0x2Au);
    swift_arrayDestroy();

    v35 = *(v87 + 8);
    v35(v20, v88);
  }

  else
  {

    v35 = *(v87 + 8);
    v35(v20, v88);
    v31 = v81;
  }

  v36 = objc_allocWithZone(NSNumber);
  v37 = [v36 initWithInteger:v86];
  if (v31)
  {
    v38 = v76;
    isa = Data._bridgeToObjectiveC()().super.isa;
    v40 = Data._bridgeToObjectiveC()().super.isa;
    v90 = 0;
    v41 = SESLegacyKeySignPrecomputedDigestWithListenerEndpoint();
  }

  else
  {
    v42 = Data._bridgeToObjectiveC()().super.isa;
    v43 = Data._bridgeToObjectiveC()().super.isa;
    v90 = 0;
    v41 = SESLegacyKeySignPrecomputedDigest();
  }

  v44 = v90;
  if (v44)
  {
    v45 = v44;
    v85 = v41;
    v86 = v37;
    v46 = v44;
    v47 = v80;
    defaultLogger()();
    v48 = v46;
    v49 = Logger.logObject.getter();
    v50 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      v84 = v35;
      v52 = v51;
      v53 = swift_slowAlloc();
      v90 = v53;
      *v52 = 136446210;
      v54 = [v48 debugDescription];
      v55 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v57 = v56;

      v58 = sub_10010150C(v55, v57, &v90);

      *(v52 + 4) = v58;
      _os_log_impl(&_mh_execute_header, v49, v50, "Error from SESLegacyKeySignPrecomputedDigest: %{public}s", v52, 0xCu);
      sub_100005090(v53);

      v84(v80, v88);
    }

    else
    {

      v35(v47, v88);
    }

    (*(v77 + 104))(v79, enum case for DIPError.Code.sesLegacyKeySignError(_:), v78);
    v71 = v48;
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100008E7C();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    v37 = v85;
    goto LABEL_15;
  }

  if (!v41)
  {
    (*(v77 + 104))(v79, enum case for DIPError.Code.sesLegacyKeySignError(_:), v78);
    v45 = sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100008E7C();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
LABEL_15:

    return v45;
  }

  v59 = [v41 signature];
  v45 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v61 = v60;

  v62 = v75;
  defaultLogger()();
  sub_100009708(v45, v61);
  v63 = Logger.logObject.getter();
  v64 = v41;
  v65 = static os_log_type_t.debug.getter();
  sub_1000092BC(v45, v61);
  if (os_log_type_enabled(v63, v65))
  {
    v66 = swift_slowAlloc();
    v84 = v35;
    v67 = v66;
    v68 = swift_slowAlloc();
    v90 = v68;
    *v67 = 136315138;
    v69 = Data.base16EncodedString()();
    v86 = v37;
    v70 = sub_10010150C(v69._countAndFlagsBits, v69._object, &v90);

    *(v67 + 4) = v70;
    _os_log_impl(&_mh_execute_header, v63, v65, "SESLegacyKeySignPrecomputedDigest signature %s", v67, 0xCu);
    sub_100005090(v68);

    v84(v75, v88);
  }

  else
  {

    v35(v62, v88);
  }

  return v45;
}

int64_t sub_10004816C(void *a1, void (*a2)(char *, uint64_t), void *a3, uint64_t a4, unint64_t a5, void *a6)
{
  v80 = a3;
  v12 = type metadata accessor for DIPError.Code();
  v75 = *(v12 - 8);
  v76 = v12;
  __chkstk_darwin(v12);
  v77 = &v70 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Logger();
  v83 = *(v14 - 8);
  v84 = v14;
  v15 = __chkstk_darwin(v14);
  v73 = &v70 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v15);
  v78 = &v70 - v18;
  __chkstk_darwin(v17);
  v20 = &v70 - v19;
  defaultLogger()();
  sub_100009708(a1, a2);
  sub_100009708(a4, a5);
  v74 = a6;
  v21 = a6;
  v22 = a5;
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.debug.getter();
  v81 = a1;
  v82 = a2;
  sub_1000092BC(a1, a2);
  sub_1000092BC(a4, v22);
  v79 = v21;

  v25 = os_log_type_enabled(v23, v24);
  v72 = v6;
  if (v25)
  {
    v26 = swift_slowAlloc();
    v71 = swift_slowAlloc();
    v86 = v71;
    *v26 = 136315906;
    v27 = Data.base16EncodedString()();
    v28 = sub_10010150C(v27._countAndFlagsBits, v27._object, &v86);

    *(v26 + 4) = v28;
    *(v26 + 12) = 2050;
    *(v26 + 14) = v80;
    *(v26 + 22) = 2080;
    v29 = Data.base16EncodedString()();
    v30 = sub_10010150C(v29._countAndFlagsBits, v29._object, &v86);

    *(v26 + 24) = v30;
    *(v26 + 32) = 2080;
    v85 = v74;
    sub_100004E70(&qword_100201658, &qword_1001ABC18);
    v31 = Optional.debugDescription.getter();
    v33 = sub_10010150C(v31, v32, &v86);

    *(v26 + 34) = v33;
    _os_log_impl(&_mh_execute_header, v23, v24, "SELegacyKeystore signDigestSidv digest = %s, keySlot = %{public}ld, externalizedLAContext = %s, seAccessEndpoint = %s", v26, 0x2Au);
    swift_arrayDestroy();
  }

  v34 = *(v83 + 8);
  v34(v20, v84);
  v35 = objc_allocWithZone(NSNumber);
  v36 = [v35 initWithInteger:v80];
  isa = Data._bridgeToObjectiveC()().super.isa;
  v38 = Data._bridgeToObjectiveC()().super.isa;
  v86 = 0;
  v39 = SESLegacyKeySignPrecomputedWithIDV();

  v40 = v86;
  if (v86)
  {
    v81 = v39;
    v82 = v34;
    v80 = v36;
    v41 = v86;
    v42 = v78;
    defaultLogger()();
    v43 = v41;
    v44 = Logger.logObject.getter();
    v45 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v86 = v47;
      *v46 = 136446210;
      v48 = [v43 debugDescription];
      v49 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v50 = v43;
      v52 = v51;

      v53 = sub_10010150C(v49, v52, &v86);
      v43 = v50;

      *(v46 + 4) = v53;
      _os_log_impl(&_mh_execute_header, v44, v45, "Error from SESLegacyKeySignPrecomputedWithIDV: %{public}s", v46, 0xCu);
      sub_100005090(v47);

      v54 = v78;
    }

    else
    {

      v54 = v42;
    }

    v82(v54, v84);
    (*(v75 + 104))(v77, enum case for DIPError.Code.sesLegacyKeySignError(_:), v76);
    v68 = v43;
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100008E7C();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    v36 = v80;
    goto LABEL_11;
  }

  if (!v39)
  {
    (*(v75 + 104))(v77, enum case for DIPError.Code.sesLegacyKeySignError(_:), v76);
    v40 = sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100008E7C();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
LABEL_11:

    return v40;
  }

  v82 = v34;
  v55 = [v39 signature];
  v40 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v56 = v39;
  v58 = v57;

  v59 = v73;
  defaultLogger()();
  sub_100009708(v40, v58);
  v60 = Logger.logObject.getter();
  v61 = static os_log_type_t.debug.getter();
  sub_1000092BC(v40, v58);
  if (os_log_type_enabled(v60, v61))
  {
    v62 = swift_slowAlloc();
    v63 = swift_slowAlloc();
    v81 = v56;
    v64 = v63;
    v86 = v63;
    *v62 = 136315138;
    v65 = Data.base16EncodedString()();
    v66 = sub_10010150C(v65._countAndFlagsBits, v65._object, &v86);

    *(v62 + 4) = v66;
    _os_log_impl(&_mh_execute_header, v60, v61, "SESLegacyKeySignPrecomputedWithIDV signature %s", v62, 0xCu);
    sub_100005090(v64);

    v67 = v73;
  }

  else
  {

    v67 = v59;
  }

  v82(v67, v84);
  return v40;
}

unint64_t sub_100048A3C()
{
  result = qword_100201660;
  if (!qword_100201660)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100201660);
  }

  return result;
}

uint64_t sub_100048A88(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, int a5)
{
  v88 = a5;
  v91 = a3;
  v86 = a1;
  v7 = type metadata accessor for DIPError.Code();
  v83 = *(v7 - 8);
  v84 = v7;
  __chkstk_darwin(v7);
  v85 = &v79 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Logger();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v80 = &v79 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v14 = &v79 - v13;
  defaultLogger()();

  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.debug.getter();

  v17 = os_log_type_enabled(v15, v16);
  v90 = a2;
  v81 = v10;
  v82 = v9;
  if (v17)
  {
    v18 = v9;
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    *v92 = v20;
    *v19 = 136315138;
    *(v19 + 4) = sub_10010150C(v91, a4, v92);
    _os_log_impl(&_mh_execute_header, v15, v16, "Storing Key in iCloud keychain key with label %s", v19, 0xCu);
    sub_100005090(v20);

    v21 = *(v10 + 8);
    v22 = v18;
    a2 = v90;
    v21(v14, v22);
  }

  else
  {

    v21 = *(v10 + 8);
    v21(v14, v9);
  }

  sub_100004E70(&qword_100200470, &qword_1001AAEC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1001ABC20;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v87 = inited + 32;
  *(inited + 40) = v24;
  type metadata accessor for CFString(0);
  v26 = v25;
  *(inited + 72) = v25;
  *(inited + 48) = kSecClassGenericPassword;
  *(inited + 80) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 88) = v27;
  *(inited + 120) = v26;
  *(inited + 96) = kSecAttrAccessibleAfterFirstUnlock;
  *(inited + 128) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 136) = v28;
  *(inited + 168) = &type metadata for String;
  *(inited + 144) = v91;
  *(inited + 152) = a4;
  *(inited + 176) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 184) = v29;
  *(inited + 216) = &type metadata for Bool;
  *(inited + 192) = 1;
  *(inited + 224) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 232) = v30;
  v31 = a2 >> 62;
  v79 = v21;
  if ((a2 >> 62) <= 1)
  {
    if (!v31)
    {
      *v92 = v86;
      *&v92[8] = a2;
      v92[10] = BYTE2(a2);
      v92[11] = BYTE3(a2);
      v92[12] = BYTE4(a2);
      v92[13] = BYTE5(a2);

      v32 = kSecClassGenericPassword;
      v33 = kSecAttrAccessibleAfterFirstUnlock;
      v34 = CFDataCreateWithBytesNoCopy(0, v92, BYTE6(a2), kCFAllocatorNull);
      if (!v34)
      {
        goto LABEL_29;
      }

LABEL_27:
      v51 = v34;
      v52 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v54 = v53;

      goto LABEL_30;
    }

    v44 = v86;
    v45 = (v86 >> 32) - v86;
    if (v86 >> 32 >= v86)
    {

      v46 = kSecClassGenericPassword;
      v47 = kSecAttrAccessibleAfterFirstUnlock;
      v38 = __DataStorage._bytes.getter();
      if (!v38)
      {
        goto LABEL_20;
      }

      v48 = __DataStorage._offset.getter();
      if (!__OFSUB__(v44, v48))
      {
        v38 += v44 - v48;
LABEL_20:
        v49 = __DataStorage._length.getter();
        if (v49 >= v45)
        {
          v43 = v45;
        }

        else
        {
          v43 = v49;
        }

LABEL_23:
        if (v38)
        {
          v50 = v43;
        }

        else
        {
          v50 = 0;
        }

        v34 = CFDataCreateWithBytesNoCopy(0, v38, v50, kCFAllocatorNull);
        if (!v34)
        {
          goto LABEL_29;
        }

        goto LABEL_27;
      }

LABEL_48:
      __break(1u);
    }

    __break(1u);
    goto LABEL_46;
  }

  if (v31 == 2)
  {
    v35 = *(v86 + 16);
    v91 = *(v86 + 24);

    v36 = kSecClassGenericPassword;
    v37 = kSecAttrAccessibleAfterFirstUnlock;
    v38 = __DataStorage._bytes.getter();
    if (v38)
    {
      v39 = __DataStorage._offset.getter();
      if (__OFSUB__(v35, v39))
      {
LABEL_47:
        __break(1u);
        goto LABEL_48;
      }

      v38 += v35 - v39;
    }

    v40 = __OFSUB__(v91, v35);
    v41 = v91 - v35;
    if (!v40)
    {
      v42 = __DataStorage._length.getter();
      if (v42 >= v41)
      {
        v43 = v41;
      }

      else
      {
        v43 = v42;
      }

      goto LABEL_23;
    }

LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  *&v92[6] = 0;
  *v92 = 0;

  v55 = kSecClassGenericPassword;
  v56 = kSecAttrAccessibleAfterFirstUnlock;
  v34 = CFDataCreateWithBytesNoCopy(0, v92, 0, kCFAllocatorNull);
  if (v34)
  {
    goto LABEL_27;
  }

LABEL_29:
  v52 = 0;
  v54 = 0xC000000000000000;
LABEL_30:
  v57 = v89;
  v58 = v88;
  *(inited + 264) = &type metadata for Data;
  *(inited + 240) = v52;
  *(inited + 248) = v54;
  *(inited + 272) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 280) = v59;
  if (v58 > 1u)
  {
    if (v58 == 2)
    {
      v61 = "(key:label:itemService:)";
      v60 = 0xD000000000000024;
    }

    else
    {
      v61 = "Invalid Syncable Key type";
      v60 = 0xD000000000000015;
    }
  }

  else if (v58)
  {
    v61 = "itokencredentiallist";
    v60 = 0xD000000000000018;
  }

  else
  {
    v60 = 0xD000000000000016;
    v61 = "com.apple.idv.accountkak";
  }

  *(inited + 312) = &type metadata for String;
  *(inited + 288) = v60;
  *(inited + 296) = v61 | 0x8000000000000000;
  *(inited + 320) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 328) = v62;
  *(inited + 360) = &type metadata for Bool;
  *(inited + 336) = 1;
  v63 = sub_10010CA84(inited);
  swift_setDeallocating();
  sub_100004E70(&qword_100200490, &unk_1001AAEE0);
  swift_arrayDestroy();
  sub_100009278((v57 + 16), *(v57 + 40));
  type metadata accessor for GenericPasswordKeychainWrapper();
  v64 = sub_1000340F4(v63, 0);

  if (v64)
  {
    v65 = SecCopyErrorMessageString(v64, 0);
    if (v65)
    {
      v66 = v65;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    else
    {
      *v92 = v64;
      dispatch thunk of CustomStringConvertible.description.getter();
    }

    sub_100004E70(&unk_100200230, &unk_1001AB020);
    v72 = (sub_100004E70(&unk_100201890, &unk_1001AA550) - 8);
    v73 = (*(*v72 + 80) + 32) & ~*(*v72 + 80);
    v74 = swift_allocObject();
    *(v74 + 16) = xmmword_1001AA160;
    v75 = v74 + v73;
    v76 = v75 + v72[14];
    v77 = enum case for DIPError.PropertyKey.underlyingErrno(_:);
    v78 = type metadata accessor for DIPError.PropertyKey();
    (*(*(v78 - 8) + 104))(v75, v77, v78);
    *(v76 + 24) = &type metadata for Int32;
    *(v76 + 32) = &protocol witness table for Int32;
    *v76 = v64;
    sub_10010C6F8(v74);
    swift_setDeallocating();
    sub_100005128(v75);
    swift_deallocClassInstance();
    (*(v83 + 104))(v85, enum case for DIPError.Code.internalError(_:), v84);
    type metadata accessor for DIPError();
    sub_100008E7C();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    return swift_willThrow();
  }

  else
  {
    v67 = v80;
    defaultLogger()();
    v68 = Logger.logObject.getter();
    v69 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v68, v69))
    {
      v70 = swift_slowAlloc();
      *v70 = 67109120;
      _os_log_impl(&_mh_execute_header, v68, v69, "Store Syncable Key Status -> %d", v70, 8u);
    }

    return v79(v67, v82);
  }
}

uint64_t sub_10004949C()
{
  sub_100005090((v0 + 16));

  return swift_deallocClassInstance();
}

uint64_t sub_1000494F8(uint64_t a1, unint64_t a2)
{
  v4 = type metadata accessor for DIPError.Code();
  v42 = *(v4 - 8);
  v43 = v4;
  __chkstk_darwin(v4);
  v44 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  defaultLogger()();

  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v41 = v6;
    v13 = v12;
    v14 = a2;
    v15 = a1;
    v16 = swift_slowAlloc();
    v47 = v16;
    *v13 = 136315138;
    *(v13 + 4) = sub_10010150C(v15, v14, &v47);
    _os_log_impl(&_mh_execute_header, v10, v11, "Reading keychain key with label %s", v13, 0xCu);
    sub_100005090(v16);
    a1 = v15;
    a2 = v14;

    (*(v7 + 8))(v9, v41);
  }

  else
  {

    (*(v7 + 8))(v9, v6);
  }

  sub_100004E70(&qword_100200470, &qword_1001AAEC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1001AA170;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 40) = v18;
  type metadata accessor for CFString(0);
  v20 = v19;
  *(inited + 72) = v19;
  *(inited + 48) = kSecClassGenericPassword;
  *(inited + 80) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 88) = v21;
  *(inited + 120) = v20;
  *(inited + 96) = kSecAttrAccessibleAfterFirstUnlock;
  *(inited + 128) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 136) = v22;
  *(inited + 168) = &type metadata for String;
  *(inited + 144) = a1;
  *(inited + 152) = a2;
  *(inited + 176) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 184) = v23;
  *(inited + 216) = &type metadata for Bool;
  *(inited + 192) = 1;
  *(inited + 224) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 232) = v24;
  *(inited + 264) = &type metadata for Bool;
  *(inited + 240) = 1;
  *(inited + 272) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 280) = v25;
  *(inited + 312) = &type metadata for Bool;
  *(inited + 288) = 1;

  v26 = kSecClassGenericPassword;
  v27 = kSecAttrAccessibleAfterFirstUnlock;
  v28 = sub_10010CA84(inited);
  swift_setDeallocating();
  sub_100004E70(&qword_100200490, &unk_1001AAEE0);
  swift_arrayDestroy();
  v48 = 0;
  sub_100009278((v45 + 16), *(v45 + 40));
  type metadata accessor for GenericPasswordKeychainWrapper();
  v29 = sub_10003414C(v28, &v48);

  if (v29 == -25300)
  {
    v30 = 0;
    goto LABEL_10;
  }

  if (v29)
  {
    v31 = SecCopyErrorMessageString(v29, 0);
    if (v31)
    {
      v32 = v31;
      v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    else
    {
      LODWORD(v47) = v29;
      v30 = dispatch thunk of CustomStringConvertible.description.getter();
    }

    sub_100004E70(&unk_100200230, &unk_1001AB020);
    v33 = (sub_100004E70(&unk_100201890, &unk_1001AA550) - 8);
    v34 = (*(*v33 + 80) + 32) & ~*(*v33 + 80);
    v35 = swift_allocObject();
    *(v35 + 16) = xmmword_1001AA160;
    v36 = v35 + v34;
    v37 = v36 + v33[14];
    v38 = enum case for DIPError.PropertyKey.underlyingErrno(_:);
    v39 = type metadata accessor for DIPError.PropertyKey();
    (*(*(v39 - 8) + 104))(v36, v38, v39);
    *(v37 + 24) = &type metadata for Int32;
    *(v37 + 32) = &protocol witness table for Int32;
    *v37 = v29;
    sub_10010C6F8(v35);
    swift_setDeallocating();
    sub_100005128(v36);
    swift_deallocClassInstance();
    (*(v42 + 104))(v44, enum case for DIPError.Code.internalError(_:), v43);
    type metadata accessor for DIPError();
    sub_100008E7C();
    swift_allocError();
    goto LABEL_16;
  }

  if (!v48 || (v46 = v48, swift_unknownObjectRetain(), (swift_dynamicCast() & 1) == 0))
  {
    (*(v42 + 104))(v44, enum case for DIPError.Code.invalidSyncableKeyType(_:), v43);
    v30 = sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100008E7C();
    swift_allocError();
LABEL_16:
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    swift_unknownObjectRelease();
    return v30;
  }

  v30 = v47;
LABEL_10:
  swift_unknownObjectRelease();
  return v30;
}

uint64_t sub_100049CB0(uint64_t a1, unint64_t a2)
{
  v41 = a1;
  v4 = type metadata accessor for DIPError.Code();
  v37 = *(v4 - 8);
  v38 = v4;
  __chkstk_darwin(v4);
  v39 = v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  defaultLogger()();

  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v36[1] = v2;
    v14 = v13;
    v42 = v13;
    *v12 = 136315138;
    *(v12 + 4) = sub_10010150C(v41, a2, &v42);
    _os_log_impl(&_mh_execute_header, v10, v11, "Deleting keychain key with label %s", v12, 0xCu);
    sub_100005090(v14);
  }

  (*(v7 + 8))(v9, v6);
  sub_100004E70(&qword_100200470, &qword_1001AAEC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1001ABC30;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 40) = v16;
  type metadata accessor for CFString(0);
  v18 = v17;
  *(inited + 72) = v17;
  *(inited + 48) = kSecClassGenericPassword;
  *(inited + 80) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 88) = v19;
  *(inited + 120) = v18;
  *(inited + 96) = kSecAttrAccessibleAfterFirstUnlock;
  *(inited + 128) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 136) = v20;
  *(inited + 168) = &type metadata for Bool;
  *(inited + 144) = 1;
  *(inited + 176) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 184) = v21;
  *(inited + 216) = &type metadata for String;
  *(inited + 192) = v41;
  *(inited + 200) = a2;
  *(inited + 224) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 232) = v22;
  *(inited + 264) = &type metadata for Bool;
  *(inited + 240) = 1;

  v23 = kSecClassGenericPassword;
  v24 = kSecAttrAccessibleAfterFirstUnlock;
  sub_10010CA84(inited);
  swift_setDeallocating();
  sub_100004E70(&qword_100200490, &unk_1001AAEE0);
  swift_arrayDestroy();
  sub_100009278((v40 + 16), *(v40 + 40));
  type metadata accessor for GenericPasswordKeychainWrapper();
  v25 = sub_1000341A4();

  if (v25 != -25300 && v25)
  {
    v27 = SecCopyErrorMessageString(v25, 0);
    if (v27)
    {
      v28 = v27;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    else
    {
      LODWORD(v42) = v25;
      dispatch thunk of CustomStringConvertible.description.getter();
    }

    sub_100004E70(&unk_100200230, &unk_1001AB020);
    v29 = (sub_100004E70(&unk_100201890, &unk_1001AA550) - 8);
    v30 = (*(*v29 + 80) + 32) & ~*(*v29 + 80);
    v31 = swift_allocObject();
    *(v31 + 16) = xmmword_1001AA160;
    v32 = v31 + v30;
    v33 = v32 + v29[14];
    v34 = enum case for DIPError.PropertyKey.underlyingErrno(_:);
    v35 = type metadata accessor for DIPError.PropertyKey();
    (*(*(v35 - 8) + 104))(v32, v34, v35);
    *(v33 + 24) = &type metadata for Int32;
    *(v33 + 32) = &protocol witness table for Int32;
    *v33 = v25;
    sub_10010C6F8(v31);
    swift_setDeallocating();
    sub_100005128(v32);
    swift_deallocClassInstance();
    (*(v37 + 104))(v39, enum case for DIPError.Code.internalError(_:), v38);
    type metadata accessor for DIPError();
    sub_100008E7C();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_10004A2C4(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v65 = a1;
  v66 = a2;
  v4 = type metadata accessor for DIPError.Code();
  v58 = *(v4 - 8);
  v59 = v4;
  __chkstk_darwin(v4);
  v60 = &v55 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v8);
  v57 = &v55 - v12;
  __chkstk_darwin(v11);
  v14 = &v55 - v13;
  defaultLogger()();

  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.debug.getter();

  v17 = os_log_type_enabled(v15, v16);
  v62 = v7;
  v63 = v6;
  if (v17)
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v56 = v10;
    v20 = v7;
    v21 = v19;
    v67 = v19;
    *v18 = 136315138;
    *(v18 + 4) = sub_10010150C(v66, a3, &v67);
    _os_log_impl(&_mh_execute_header, v15, v16, "Updating Key in iCloud keychain key with label %s", v18, 0xCu);
    sub_100005090(v21);

    v22 = v20;
    v10 = v56;
    v61 = *(v22 + 8);
  }

  else
  {

    v61 = *(v7 + 8);
  }

  v61(v14, v6);
  sub_100004E70(&qword_100200470, &qword_1001AAEC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1001ABC30;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 40) = v24;
  type metadata accessor for CFString(0);
  v26 = v25;
  *(inited + 72) = v25;
  *(inited + 48) = kSecClassGenericPassword;
  *(inited + 80) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 88) = v27;
  *(inited + 120) = v26;
  *(inited + 96) = kSecAttrAccessibleAfterFirstUnlock;
  *(inited + 128) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 136) = v28;
  *(inited + 168) = &type metadata for Bool;
  *(inited + 144) = 1;
  *(inited + 176) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 184) = v29;
  *(inited + 216) = &type metadata for Bool;
  *(inited + 192) = 1;
  *(inited + 224) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 232) = v30;
  *(inited + 264) = &type metadata for String;
  *(inited + 240) = v66;
  *(inited + 248) = a3;

  v31 = kSecClassGenericPassword;
  v32 = kSecAttrAccessibleAfterFirstUnlock;
  sub_10010CA84(inited);
  swift_setDeallocating();
  sub_100004E70(&qword_100200490, &unk_1001AAEE0);
  swift_arrayDestroy();
  sub_100009278((v64 + 16), *(v64 + 40));
  type metadata accessor for GenericPasswordKeychainWrapper();
  v33 = sub_1000341F4();

  if (!v33)
  {
    defaultLogger()();
    v34 = Logger.logObject.getter();
    v42 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v34, v42))
    {
      v43 = swift_slowAlloc();
      *v43 = 67109120;
      v37 = "Update Syncable Key Status -> %d";
      v38 = v42;
      v39 = v34;
      v40 = v43;
      v41 = 8;
      goto LABEL_10;
    }

LABEL_11:
    v44 = v61;
    goto LABEL_12;
  }

  if (v33 == -25299)
  {
    v10 = v57;
    defaultLogger()();
    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 0;
      v37 = "Item already exist on iCloud keychain will skip update";
      v38 = v35;
      v39 = v34;
      v40 = v36;
      v41 = 2;
LABEL_10:
      _os_log_impl(&_mh_execute_header, v39, v38, v37, v40, v41);
      v44 = v61;

LABEL_12:

      return v44(v10, v63);
    }

    goto LABEL_11;
  }

  v46 = SecCopyErrorMessageString(v33, 0);
  if (v46)
  {
    v47 = v46;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    LODWORD(v67) = v33;
    dispatch thunk of CustomStringConvertible.description.getter();
  }

  sub_100004E70(&unk_100200230, &unk_1001AB020);
  v48 = (sub_100004E70(&unk_100201890, &unk_1001AA550) - 8);
  v49 = (*(*v48 + 80) + 32) & ~*(*v48 + 80);
  v50 = swift_allocObject();
  *(v50 + 16) = xmmword_1001AA160;
  v51 = v50 + v49;
  v52 = v51 + v48[14];
  v53 = enum case for DIPError.PropertyKey.underlyingErrno(_:);
  v54 = type metadata accessor for DIPError.PropertyKey();
  (*(*(v54 - 8) + 104))(v51, v53, v54);
  *(v52 + 24) = &type metadata for Int32;
  *(v52 + 32) = &protocol witness table for Int32;
  *v52 = v33;
  sub_10010C6F8(v50);
  swift_setDeallocating();
  sub_100005128(v51);
  swift_deallocClassInstance();
  (*(v58 + 104))(v60, enum case for DIPError.Code.internalError(_:), v59);
  type metadata accessor for DIPError();
  sub_100008E7C();
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  return swift_willThrow();
}

void *sub_10004AA70(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return _swiftEmptyArrayStorage;
  }

  sub_10010A6B4(0, v1, 0);
  v3 = a1 + 64;
  result = _HashTable.startBucket.getter();
  v5 = result;
  v6 = 0;
  v23 = *(a1 + 36);
  v21 = v1;
  while ((v5 & 0x8000000000000000) == 0 && v5 < 1 << *(a1 + 32))
  {
    v8 = v5 >> 6;
    if ((*(v3 + 8 * (v5 >> 6)) & (1 << v5)) == 0)
    {
      goto LABEL_22;
    }

    if (v23 != *(a1 + 36))
    {
      goto LABEL_23;
    }

    v9 = (*(a1 + 56) + 16 * v5);
    v10 = v9[1];
    v22 = *v9;
    v11 = _swiftEmptyArrayStorage[2];
    v12 = _swiftEmptyArrayStorage[3];

    if (v11 >= v12 >> 1)
    {
      result = sub_10010A6B4((v12 > 1), v11 + 1, 1);
    }

    _swiftEmptyArrayStorage[2] = v11 + 1;
    v13 = &_swiftEmptyArrayStorage[2 * v11];
    v13[4] = v22;
    v13[5] = v10;
    v7 = 1 << *(a1 + 32);
    if (v5 >= v7)
    {
      goto LABEL_24;
    }

    v3 = a1 + 64;
    v14 = *(a1 + 64 + 8 * v8);
    if ((v14 & (1 << v5)) == 0)
    {
      goto LABEL_25;
    }

    if (v23 != *(a1 + 36))
    {
      goto LABEL_26;
    }

    v15 = v14 & (-2 << (v5 & 0x3F));
    if (v15)
    {
      v7 = __clz(__rbit64(v15)) | v5 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v16 = v8 << 6;
      v17 = v8 + 1;
      v18 = (a1 + 72 + 8 * v8);
      while (v17 < (v7 + 63) >> 6)
      {
        v20 = *v18++;
        v19 = v20;
        v16 += 64;
        ++v17;
        if (v20)
        {
          result = sub_1000468A0(v5, v23, 0);
          v7 = __clz(__rbit64(v19)) + v16;
          goto LABEL_4;
        }
      }

      result = sub_1000468A0(v5, v23, 0);
    }

LABEL_4:
    ++v6;
    v5 = v7;
    if (v6 == v21)
    {
      return _swiftEmptyArrayStorage;
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

char *sub_10004ACB4()
{
  v1 = type metadata accessor for DIPError.Code();
  v82 = *(v1 - 8);
  __chkstk_darwin(v1);
  v79 = &v74 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for Logger();
  v80 = *(v3 - 8);
  v81 = v3;
  v4 = __chkstk_darwin(v3);
  v6 = &v74 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v4);
  v9 = &v74 - v8;
  v10 = __chkstk_darwin(v7);
  v12 = &v74 - v11;
  __chkstk_darwin(v10);
  v14 = &v74 - v13;
  v15 = type metadata accessor for CoreIDVAssetBundle.CertificateType();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v74 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v16 + 104))(v18, enum case for CoreIDVAssetBundle.CertificateType.terminalAuthRoots(_:), v15);
  v19 = sub_10004C2FC(v18, &off_1001F3FE0);
  v83 = v0;
  if (v0)
  {
    (*(v16 + 8))(v18, v15);
  }

  else
  {
    v20 = v19;
    v74 = v14;
    v75 = v6;
    v76 = v12;
    v77 = v1;
    v78 = v9;
    (*(v16 + 8))(v18, v15);
    v85 = v20;
    v21 = objc_opt_self();
    v22 = [v21 standardUserDefaults];
    v23._object = 0x80000001001B4740;
    v23._countAndFlagsBits = 0xD00000000000001DLL;
    v24 = NSUserDefaults.internalBool(forKey:)(v23);

    v25 = v80;
    v26 = v81;
    if (v24)
    {
      v27 = v74;
      defaultLogger()();
      v28 = Logger.logObject.getter();
      v29 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        *v30 = 0;
        _os_log_impl(&_mh_execute_header, v28, v29, "Allowing internal reader authentication test roots", v30, 2u);
      }

      (*(v25 + 8))(v27, v26);
      sub_1000FC91C(&off_1001F40B0);
    }

    v31 = [v21 standardUserDefaults];
    v32._object = 0x80000001001B4740;
    v32._countAndFlagsBits = 0xD00000000000001DLL;
    v33 = NSUserDefaults.internalBool(forKey:)(v32);

    v34 = v78;
    if (v33 || (v35 = [v21 standardUserDefaults], v36 = String._bridgeToObjectiveC()(), v37 = objc_msgSend(v35, "BOOLForKey:", v36), v35, v36, v37))
    {
      v38 = v76;
      defaultLogger()();
      v39 = Logger.logObject.getter();
      v40 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v39, v40))
      {
        v41 = swift_slowAlloc();
        *v41 = 0;
        _os_log_impl(&_mh_execute_header, v39, v40, "Allowing external reader authentication test roots", v41, 2u);
        v38 = v76;
      }

      (*(v25 + 8))(v38, v26);
      sub_1000FC91C(&off_1001F40F0);
    }

    v42 = [v21 standardUserDefaults];
    v43 = String._bridgeToObjectiveC()();
    v44 = [v42 stringForKey:v43];

    if (v44)
    {
      v45 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v47 = v46;

      defaultLogger()();
      v48 = Logger.logObject.getter();
      v49 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v48, v49))
      {
        v50 = swift_slowAlloc();
        *v50 = 0;
        _os_log_impl(&_mh_execute_header, v48, v49, "Reader auth root cert injected through user defaults", v50, 2u);
        v34 = v78;
      }

      (*(v25 + 8))(v34, v26);
      v51 = v85;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v51 = sub_100100418(0, *(v51 + 2) + 1, 1, v51);
      }

      v53 = *(v51 + 2);
      v52 = *(v51 + 3);
      if (v53 >= v52 >> 1)
      {
        v51 = sub_100100418((v52 > 1), v53 + 1, 1, v51);
      }

      *(v51 + 2) = v53 + 1;
      v54 = &v51[16 * v53];
      *(v54 + 4) = v45;
      *(v54 + 5) = v47;
      v85 = v51;
    }

    v55 = [v21 standardUserDefaults];
    v56._countAndFlagsBits = 0xD00000000000001BLL;
    v56._object = 0x80000001001B4610;
    v57 = NSUserDefaults.internalBool(forKey:)(v56);

    v58 = v77;
    v59 = v82;
    if (v57)
    {
      v60 = v75;
      defaultLogger()();
      v61 = Logger.logObject.getter();
      v62 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v61, v62))
      {
        v63 = swift_slowAlloc();
        v64 = swift_slowAlloc();
        v84[0] = v64;
        *v63 = 136315138;
        swift_beginAccess();

        v65 = v25;
        v66 = v26;
        v67 = Array.description.getter();
        v69 = v68;

        v70 = sub_10010150C(v67, v69, v84);

        *(v63 + 4) = v70;
        _os_log_impl(&_mh_execute_header, v61, v62, "All trusted reader roots: %s", v63, 0xCu);
        sub_100005090(v64);
        v59 = v82;

        v58 = v77;

        (*(v65 + 8))(v75, v66);
      }

      else
      {

        (*(v25 + 8))(v60, v26);
      }
    }

    swift_beginAccess();

    v71 = v83;
    v72 = decodeCertificateChain(fromBase64DER:)();
    if (v71)
    {

      (*(v59 + 104))(v79, enum case for DIPError.Code.internalError(_:), v58);
      swift_errorRetain();
      v18 = sub_10002688C(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_100020698(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
      swift_allocError();
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      swift_willThrow();
    }

    else
    {
      v18 = v72;
      swift_bridgeObjectRelease_n();
    }
  }

  return v18;
}

char *sub_10004B654()
{
  v1 = type metadata accessor for DIPError.Code();
  v48 = *(v1 - 8);
  __chkstk_darwin(v1);
  v3 = &v45 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Logger();
  v49 = *(v4 - 8);
  v50 = v4;
  v5 = __chkstk_darwin(v4);
  v7 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v45 - v8;
  v10 = type metadata accessor for CoreIDVAssetBundle.CertificateType();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 104))(v13, enum case for CoreIDVAssetBundle.CertificateType.appleIssuerRoots(_:), v10);
  v14 = sub_10004C2FC(v13, _swiftEmptyArrayStorage);
  v15 = v0;
  if (v0)
  {
    (*(v11 + 8))(v13, v10);
  }

  else
  {
    v16 = v14;
    v45 = v9;
    v46 = v3;
    v47 = v7;
    (*(v11 + 8))(v13, v10);
    v52 = v16;
    v17 = objc_opt_self();
    v18 = [v17 standardUserDefaults];
    v19._countAndFlagsBits = 0xD000000000000023;
    v19._object = 0x80000001001B45E0;
    v20 = NSUserDefaults.internalBool(forKey:)(v19);

    v22 = v49;
    v21 = v50;
    if (v20)
    {
      v23 = v45;
      defaultLogger()();
      v24 = Logger.logObject.getter();
      v25 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        *v26 = 0;
        _os_log_impl(&_mh_execute_header, v24, v25, "Adding internal reader authentication test roots as Apple issuer roots", v26, 2u);
      }

      (*(v22 + 8))(v23, v21);
      sub_1000FC91C(&off_1001F40B0);
    }

    v27 = [v17 standardUserDefaults];
    v28._object = 0x80000001001B4610;
    v28._countAndFlagsBits = 0xD00000000000001BLL;
    v29 = NSUserDefaults.internalBool(forKey:)(v28);

    v30 = v1;
    if (v29)
    {
      v31 = v47;
      defaultLogger()();
      v32 = Logger.logObject.getter();
      v33 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v32, v33))
      {
        v34 = swift_slowAlloc();
        v45 = 0;
        v35 = v34;
        v51[0] = swift_slowAlloc();
        v36 = v51[0];
        *v35 = 136315138;
        swift_beginAccess();

        v37 = Array.description.getter();
        v39 = v38;

        v40 = v37;
        v30 = v1;
        v41 = sub_10010150C(v40, v39, v51);

        v42 = v35;
        v15 = v45;
        *(v42 + 1) = v41;
        _os_log_impl(&_mh_execute_header, v32, v33, "All trusted Apple issued reader roots: %s", v42, 0xCu);
        sub_100005090(v36);

        (*(v22 + 8))(v47, v50);
      }

      else
      {

        (*(v22 + 8))(v31, v21);
      }
    }

    swift_beginAccess();

    v43 = decodeCertificateChain(fromBase64DER:)();
    if (v15)
    {

      (*(v48 + 104))(v46, enum case for DIPError.Code.internalError(_:), v30);
      swift_errorRetain();
      sub_10002688C(_swiftEmptyArrayStorage);
      v3 = type metadata accessor for DIPError();
      sub_100020698(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
      swift_allocError();
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      swift_willThrow();
    }

    else
    {
      v3 = v43;
      swift_bridgeObjectRelease_n();
    }
  }

  return v3;
}

char *sub_10004BCA8()
{
  v1 = type metadata accessor for DIPError.Code();
  v48 = *(v1 - 8);
  __chkstk_darwin(v1);
  v3 = &v45 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Logger();
  v49 = *(v4 - 8);
  v50 = v4;
  v5 = __chkstk_darwin(v4);
  v7 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v45 - v8;
  v10 = type metadata accessor for CoreIDVAssetBundle.CertificateType();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 104))(v13, enum case for CoreIDVAssetBundle.CertificateType.appleIssuerWebPresentmentRoots(_:), v10);
  v14 = sub_10004C2FC(v13, &off_1001F4120);
  v15 = v0;
  if (v0)
  {
    (*(v11 + 8))(v13, v10);
  }

  else
  {
    v16 = v14;
    v45 = v9;
    v46 = v3;
    v47 = v7;
    (*(v11 + 8))(v13, v10);
    v52 = v16;
    v17 = objc_opt_self();
    v18 = [v17 standardUserDefaults];
    v19._countAndFlagsBits = 0xD000000000000023;
    v19._object = 0x80000001001B45E0;
    v20 = NSUserDefaults.internalBool(forKey:)(v19);

    v22 = v49;
    v21 = v50;
    if (v20)
    {
      v23 = v45;
      defaultLogger()();
      v24 = Logger.logObject.getter();
      v25 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        *v26 = 0;
        _os_log_impl(&_mh_execute_header, v24, v25, "Adding internal reader authentication test roots as Apple issuer roots", v26, 2u);
      }

      (*(v22 + 8))(v23, v21);
      sub_1000FC91C(&off_1001F4160);
    }

    v27 = [v17 standardUserDefaults];
    v28._object = 0x80000001001B4610;
    v28._countAndFlagsBits = 0xD00000000000001BLL;
    v29 = NSUserDefaults.internalBool(forKey:)(v28);

    v30 = v1;
    if (v29)
    {
      v31 = v47;
      defaultLogger()();
      v32 = Logger.logObject.getter();
      v33 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v32, v33))
      {
        v34 = swift_slowAlloc();
        v45 = 0;
        v35 = v34;
        v51[0] = swift_slowAlloc();
        v36 = v51[0];
        *v35 = 136315138;
        swift_beginAccess();

        v37 = Array.description.getter();
        v39 = v38;

        v40 = v37;
        v30 = v1;
        v41 = sub_10010150C(v40, v39, v51);

        v42 = v35;
        v15 = v45;
        *(v42 + 1) = v41;
        _os_log_impl(&_mh_execute_header, v32, v33, "All trusted Apple issued web roots: %s", v42, 0xCu);
        sub_100005090(v36);

        (*(v22 + 8))(v47, v50);
      }

      else
      {

        (*(v22 + 8))(v31, v21);
      }
    }

    swift_beginAccess();

    v43 = decodeCertificateChain(fromBase64DER:)();
    if (v15)
    {

      (*(v48 + 104))(v46, enum case for DIPError.Code.internalError(_:), v30);
      swift_errorRetain();
      sub_10002688C(_swiftEmptyArrayStorage);
      v3 = type metadata accessor for DIPError();
      sub_100020698(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
      swift_allocError();
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      swift_willThrow();
    }

    else
    {
      v3 = v43;
      swift_bridgeObjectRelease_n();
    }
  }

  return v3;
}

void (*sub_10004C2FC(uint64_t a1, void (*a2)(char *, uint64_t)))(char *, uint64_t)
{
  v75 = a1;
  v3 = type metadata accessor for DIPError.Code();
  v68 = *(v3 - 8);
  v69 = v3;
  __chkstk_darwin(v3);
  v70 = &v62 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for CoreIDVAssetBundle.CertificateType();
  v71 = *(v5 - 8);
  v72 = v5;
  __chkstk_darwin(v5);
  v7 = &v62 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Logger();
  v77 = *(v8 - 8);
  v78 = v8;
  v9 = __chkstk_darwin(v8);
  v76 = &v62 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v74 = &v62 - v12;
  __chkstk_darwin(v11);
  v14 = &v62 - v13;
  v15 = type metadata accessor for URL();
  v16 = *(v15 - 8);
  v17 = __chkstk_darwin(v15);
  v19 = &v62 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v21 = &v62 - v20;
  v22 = objc_opt_self();

  v23 = [v22 defaultManager];
  v24 = [v23 URLsForDirectory:5 inDomains:1];

  v25 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  if (!*(v25 + 16))
  {

    v35 = 0;
    v36 = 0xF000000000000000;
LABEL_7:
    v38 = a2;
    goto LABEL_8;
  }

  v73 = a2;
  (*(v16 + 16))(v21, v25 + ((*(v16 + 80) + 32) & ~*(v16 + 80)), v15);

  URL.appendingPathComponent(_:)();
  if ((URL.isFileOnDisk.getter() & 1) == 0)
  {
    v37 = *(v16 + 8);
    v37(v19, v15);
    v37(v21, v15);
    v35 = 0;
    v36 = 0xF000000000000000;
    a2 = v73;
    goto LABEL_7;
  }

  v66 = v16;
  v67 = v21;
  defaultLogger()();
  v27 = v71;
  v26 = v72;
  (*(v71 + 16))(v7, v75, v72);
  v28 = Logger.logObject.getter();
  v29 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v64 = v30;
    v65 = swift_slowAlloc();
    v80 = v65;
    *v30 = 136315138;
    v63 = CoreIDVAssetBundle.CertificateType.rawValue.getter();
    v32 = v31;
    (*(v27 + 8))(v7, v26);
    v33 = sub_10010150C(v63, v32, &v80);

    v34 = v64;
    *(v64 + 1) = v33;
    _os_log_impl(&_mh_execute_header, v28, v29, "Looking at mobile asset loaded certificates for type : %s", v34, 0xCu);
    sub_100005090(v65);
  }

  else
  {

    (*(v27 + 8))(v7, v26);
  }

  (*(v77 + 8))(v14, v78);
  v57 = v79;
  v58 = Data.init(contentsOf:options:)();
  if (v57)
  {
    v79 = 0xF000000000000000;
    (*(v68 + 104))(v70, enum case for DIPError.Code.internalError(_:), v69);
    swift_errorRetain();
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100020698(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    sub_10001C120(0, v79);

    v38 = *(v66 + 8);
    v38(v19, v15);
    v38(v67, v15);

    return v38;
  }

  v35 = v58;
  v36 = v59;
  a2 = v73;
  v38 = sub_10004CC64(v75, v73, v58, v59);
  v79 = 0;
  v61 = *(v66 + 8);
  v61(v19, v15);
  v61(v67, v15);

LABEL_8:
  if (sub_1000FD564(v38, a2))
  {
    v39 = v74;
    defaultLogger()();
    v40 = Logger.logObject.getter();
    v41 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      *v42 = 0;
      _os_log_impl(&_mh_execute_header, v40, v41, "No new rootCertificates from cached", v42, 2u);
    }

    (*(v77 + 8))(v39, v78);
  }

  v43 = [objc_opt_self() standardUserDefaults];
  v44._countAndFlagsBits = 0xD00000000000001BLL;
  v44._object = 0x80000001001B4610;
  v45 = NSUserDefaults.internalBool(forKey:)(v44);

  if (v45)
  {
    v46 = v76;
    defaultLogger()();
    v47 = Logger.logObject.getter();
    v48 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      v75 = v35;
      v51 = v50;
      v80 = v50;
      *v49 = 136315138;

      v52 = Array.description.getter();
      v53 = v36;
      v55 = v54;

      v56 = sub_10010150C(v52, v55, &v80);

      *(v49 + 4) = v56;
      _os_log_impl(&_mh_execute_header, v47, v48, "logging root Certs = %s", v49, 0xCu);
      sub_100005090(v51);

      sub_10001C120(v75, v53);

      (*(v77 + 8))(v76, v78);
    }

    else
    {
      sub_10001C120(v35, v36);

      (*(v77 + 8))(v46, v78);
    }
  }

  else
  {
    sub_10001C120(v35, v36);
  }

  return v38;
}

void *sub_10004CC64(uint64_t a1, void *a2, uint64_t a3, unint64_t a4)
{
  v88 = a1;
  v8 = type metadata accessor for DIPError.Code();
  v96 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v74 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100004E70(&qword_100201708, &qword_1001ABC90);
  __chkstk_darwin(v11 - 8);
  v87 = &v74 - v12;
  v13 = type metadata accessor for CoreIDVAssetBundle.CertificateType();
  v91 = *(v13 - 8);
  v92 = v13;
  __chkstk_darwin(v13);
  v90 = &v74 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = sub_100004E70(&qword_1002005E8, &qword_1001AB1A8);
  v86 = *(v94 - 8);
  __chkstk_darwin(v94);
  v93 = &v74 - v15;
  v89 = type metadata accessor for Logger();
  v95 = *(v89 - 8);
  v16 = __chkstk_darwin(v89);
  v18 = &v74 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v16);
  v21 = &v74 - v20;
  __chkstk_darwin(v19);
  v23 = &v74 - v22;
  v24 = type metadata accessor for CoreIDVAssetBundle();
  v25 = __chkstk_darwin(v24);
  v26 = __chkstk_darwin(v25);
  v102 = &v74 - v29;
  if (a4 >> 60 == 15)
  {

    return a2;
  }

  v79 = v28;
  v80 = v27;
  v81 = v26;
  v82 = v8;
  v83 = v10;
  type metadata accessor for JSONDecoder();
  swift_allocObject();
  sub_100009708(a3, a4);
  JSONDecoder.init()();
  type metadata accessor for CoreIDVAsset();
  sub_100020698(&qword_100200518, &type metadata accessor for CoreIDVAsset, &protocol conformance descriptor for CoreIDVAsset);
  v84 = a3;
  v85 = a4;
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();
  if (v4)
  {

    v30 = *(v96 + 104);
    v31 = enum case for DIPError.Code.internalError(_:);
    a2 = 0x80000001001B46C0;
LABEL_5:
    v30(v83, v31, v82);
    swift_errorRetain();
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100020698(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    sub_10001C120(v84, v85);
    return a2;
  }

  v78 = v101[0];
  CoreIDVAsset.base.getter();
  result = MobileGestalt_get_current_device();
  if (result)
  {
    v33 = result;
    v34 = MobileGestalt_copy_buildVersion_obj();

    if (v34)
    {
      v77 = a2;
      v75 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v36 = v35;

      defaultLogger()();

      v37 = Logger.logObject.getter();
      v38 = static os_log_type_t.debug.getter();

      v39 = os_log_type_enabled(v37, v38);
      v40 = v89;
      if (v39)
      {
        v41 = swift_slowAlloc();
        v76 = v37;
        v42 = v41;
        v43 = swift_slowAlloc();
        v101[0] = v43;
        *v42 = 136315138;
        v44 = v75;
        *(v42 + 4) = sub_10010150C(v75, v36, v101);
        v45 = v38;
        v46 = v76;
        _os_log_impl(&_mh_execute_header, v76, v45, "build version = %s", v42, 0xCu);
        sub_100005090(v43);

        v47 = *(v95 + 8);
        v48 = v23;
        v49 = v40;
        v50 = v44;
      }

      else
      {

        v47 = *(v95 + 8);
        v48 = v23;
        v49 = v40;
        v50 = v75;
      }

      v76 = v47;
      (v47)(v48, v49);
      v55 = v40;
      Regex.init(_regexString:version:)();
      v99 = v50;
      v100 = v36;
      v97 = 0;
      v98 = 0xE000000000000000;
      sub_10004FFDC();
      sub_10004630C();
      sub_100021E6C();
      RangeReplaceableCollection<>.replacing<A, B>(_:with:maxReplacements:)();

      v57 = v101[0];
      v56 = v101[1];
      defaultLogger()();

      v58 = Logger.logObject.getter();
      v59 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v58, v59))
      {
        v60 = swift_slowAlloc();
        v61 = swift_slowAlloc();
        v101[0] = v61;
        *v60 = 136315138;
        *(v60 + 4) = sub_10010150C(v57, v56, v101);
        _os_log_impl(&_mh_execute_header, v58, v59, "prefix = %s", v60, 0xCu);
        sub_100005090(v61);
      }

      (v76)(v21, v55);
      v54 = v85;
      a2 = v77;
      v62 = v57;
      v63 = v79;
      sub_10004D8F4(v62, v56, v79);

      (*(v86 + 8))(v93, v94);
      v64 = v80;
      v65 = v102;
      v66 = v81;
      (*(v80 + 8))(v102, v81);
      (*(v64 + 32))(v65, v63, v66);
    }

    else
    {
      defaultLogger()();
      v51 = Logger.logObject.getter();
      v52 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v51, v52))
      {
        v53 = swift_slowAlloc();
        *v53 = 0;
        _os_log_impl(&_mh_execute_header, v51, v52, "build prefix not available, using default", v53, 2u);
      }

      (*(v95 + 8))(v18, v89);
      v54 = v85;
    }

    v68 = v90;
    v67 = v91;
    v69 = v92;
    (*(v91 + 16))(v90, v88, v92);
    v70 = (*(v67 + 88))(v68, v69);
    if (v70 == enum case for CoreIDVAssetBundle.CertificateType.terminalAuthRoots(_:))
    {
      v71 = v87;
      v72 = v102;
      CoreIDVAssetBundle.terminalAuthRoots.getter();
    }

    else if (v70 == enum case for CoreIDVAssetBundle.CertificateType.issuerRoots(_:))
    {
      v71 = v87;
      v72 = v102;
      CoreIDVAssetBundle.issuerRoots.getter();
    }

    else if (v70 == enum case for CoreIDVAssetBundle.CertificateType.appleIssuerRoots(_:))
    {
      v71 = v87;
      v72 = v102;
      CoreIDVAssetBundle.appleIssuerRoots.getter();
    }

    else
    {
      if (v70 != enum case for CoreIDVAssetBundle.CertificateType.appleIssuerWebPresentmentRoots(_:))
      {
        a2 = 0x80000001001B46C0;
        v73 = enum case for DIPError.Code.internalError(_:);
        v30 = *(v96 + 104);
        v30(v83, enum case for DIPError.Code.internalError(_:), v82);
        sub_10002688C(_swiftEmptyArrayStorage);
        type metadata accessor for DIPError();
        sub_100020698(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
        swift_allocError();
        DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
        swift_willThrow();

        (*(v80 + 8))(v102, v81);
        (*(v91 + 8))(v90, v92);
        v31 = v73;
        goto LABEL_5;
      }

      v71 = v87;
      v72 = v102;
      CoreIDVAssetBundle.appleIssuerWebPresentmentRoots.getter();
    }

    a2 = sub_10004EA40(a2, v71);

    sub_10001C120(v84, v54);
    sub_10000A0D4(v71, &qword_100201708, &qword_1001ABC90);
    (*(v80 + 8))(v72, v81);
    return a2;
  }

  __break(1u);
  return result;
}

uint64_t sub_10004D8F4@<X0>(uint64_t a1@<X1>, unint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v148 = a3;
  v5 = sub_100004E70(&qword_100201718, &qword_1001ABC98);
  v6 = __chkstk_darwin(v5 - 8);
  v142 = &v133 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v6);
  v139 = &v133 - v9;
  __chkstk_darwin(v8);
  v11 = &v133 - v10;
  v149 = type metadata accessor for CoreIDVAssetBundle();
  v145 = *(v149 - 8);
  v12 = __chkstk_darwin(v149);
  v146 = &v133 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v141 = &v133 - v14;
  v15 = type metadata accessor for Logger();
  v16 = *(v15 - 8);
  v17 = __chkstk_darwin(v15);
  v143 = &v133 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v17);
  v144 = &v133 - v20;
  v21 = __chkstk_darwin(v19);
  v138 = &v133 - v22;
  v23 = __chkstk_darwin(v21);
  v140 = &v133 - v24;
  __chkstk_darwin(v23);
  v26 = &v133 - v25;
  defaultLogger()();

  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.debug.getter();

  v29 = os_log_type_enabled(v27, v28);
  v147 = v16;
  if (v29)
  {
    v30 = v15;
    v31 = swift_slowAlloc();
    v32 = a1;
    v33 = swift_slowAlloc();
    v150[0] = v33;
    *v31 = 136315138;
    *(v31 + 4) = sub_10010150C(v32, a2, v150);
    _os_log_impl(&_mh_execute_header, v27, v28, "MobileAsset trying to find asset for %s", v31, 0xCu);
    sub_100005090(v33);
    a1 = v32;

    v15 = v30;
    v16 = v147;
  }

  v34 = *(v16 + 8);
  v34(v26, v15);
  v35 = CoreIDVAsset.iOS.getter();
  v36 = v149;
  if (v35)
  {
    v37 = v35;
    if (!*(v35 + 16))
    {
      goto LABEL_15;
    }

    v38 = sub_100099644(a1, a2);
    if (v39)
    {
      v40 = v15;
      v41 = v141;
      (*(v145 + 16))(v141, *(v37 + 7) + *(v145 + 72) * v38, v36);

      v42 = v140;
      defaultLogger()();
      v43 = Logger.logObject.getter();
      v44 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v43, v44))
      {
        v45 = swift_slowAlloc();
        *v45 = 0;
        _os_log_impl(&_mh_execute_header, v43, v44, "MobileAsset, found an exact match", v45, 2u);
      }

      v34(v42, v40);
      return (*(v145 + 32))(v148, v41, v36);
    }

    if (*(v37 + 2) && (v52 = sub_100099644(0x746C7561666564, 0xE700000000000000), (v53 & 1) != 0))
    {
      v141 = v15;
      v143 = v37;
      v54 = v145;
      (*(v145 + 16))(v11, *(v37 + 7) + *(v145 + 72) * v52, v36);
      (*(v54 + 56))(v11, 0, 1, v36);
      (*(v54 + 32))(v146, v11, v36);
    }

    else
    {
LABEL_15:
      v143 = v37;
      v141 = v15;
      v54 = v145;
      (*(v145 + 56))(v11, 1, 1, v36);
      CoreIDVAsset.base.getter();
      if ((*(v54 + 48))(v11, 1, v36) != 1)
      {
        sub_10000A0D4(v11, &qword_100201718, &qword_1001ABC98);
      }
    }

    v55 = a1;
    sub_100050030(1, a1, a2);

    v56 = static String._fromSubstring(_:)();
    v58 = v57;

    v59 = HIBYTE(v58) & 0xF;
    if ((v58 & 0x2000000000000000) == 0)
    {
      v59 = v56 & 0xFFFFFFFFFFFFLL;
    }

    if (v59)
    {

      v60 = sub_10004EEBC(v56, v58);
      if ((v61 & 1) == 0)
      {
        v62 = v60;
        if (v60 >= 2)
        {
          v63 = sub_10004F1BC(v55, a2);
          if (v64)
          {
            v65 = v63;
            v66 = v64;
            v140 = v56;
            v67 = Character.isUppercase.getter();
            if (v67)
            {
              v150[0] = v65;
              v150[1] = v66;
              __chkstk_darwin(v67);
              *(&v133 - 2) = v150;

              v136 = v65;
              v68 = sub_100120CF8(sub_10000ED28, (&v133 - 4), &off_1001F4010);

              if (v68)
              {
                v137 = v66;
                v135 = v62;
                v144 = v34;
                v69 = 0x746C7561666564;
                v70 = v143;
                v71 = v143 + 64;
                v72 = 1 << v143[32];
                v73 = -1;
                if (v72 < 64)
                {
                  v73 = ~(-1 << v72);
                }

                v74 = v73 & *(v143 + 8);
                v75 = (v72 + 63) >> 6;

                v76 = 0;
                v77 = _swiftEmptyArrayStorage;
                while (v74)
                {
LABEL_34:
                  v80 = __clz(__rbit64(v74));
                  v74 &= v74 - 1;
                  v81 = (*(v70 + 48) + ((v76 << 10) | (16 * v80)));
                  v62 = *v81;
                  v82 = v81[1];
                  v83 = *v81 == 0x746C7561666564 && v82 == 0xE700000000000000;
                  if (!v83 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
                  {

                    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                    v150[0] = v77;
                    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                    {
                      sub_10010A6B4(0, v77[2] + 1, 1);
                      v77 = v150[0];
                    }

                    v86 = v77[2];
                    v85 = v77[3];
                    v87 = v86 + 1;
                    if (v86 >= v85 >> 1)
                    {
                      v134 = (v86 + 1);
                      v133 = v86;
                      sub_10010A6B4((v85 > 1), v86 + 1, 1);
                      v87 = v134;
                      v86 = v133;
                      v77 = v150[0];
                    }

                    v77[2] = v87;
                    v88 = &v77[2 * v86];
                    v88[4] = v62;
                    v88[5] = v82;
                  }
                }

                v78 = v137;
                while (1)
                {
                  v79 = v76 + 1;
                  if (__OFADD__(v76, 1))
                  {
                    __break(1u);
                    goto LABEL_95;
                  }

                  if (v79 >= v75)
                  {
                    break;
                  }

                  v74 = *&v71[8 * v79];
                  ++v76;
                  if (v74)
                  {
                    v76 = v79;
                    goto LABEL_34;
                  }
                }

                v93 = v77[2];
                if (v93)
                {
                  v150[0] = _swiftEmptyArrayStorage;
                  v94 = v77;
                  sub_10010A6B4(0, v93, 0);
                  v95 = v150[0];
                  v134 = v94;
                  v96 = v94 + 5;
                  v76 = v144;
                  do
                  {
                    v97 = *(v96 - 1);
                    v98 = *v96;

                    sub_100050030(1, v97, v98);
                    v99 = static String._fromSubstring(_:)();
                    v101 = v100;

                    v150[0] = v95;
                    v103 = v95[2];
                    v102 = v95[3];
                    if (v103 >= v102 >> 1)
                    {
                      sub_10010A6B4((v102 > 1), v103 + 1, 1);
                      v95 = v150[0];
                    }

                    v95[2] = v103 + 1;
                    v104 = &v95[2 * v103];
                    v104[4] = v99;
                    v104[5] = v101;
                    v96 += 2;
                    --v93;
                  }

                  while (v93);

                  v78 = v137;
                }

                else
                {

                  v95 = _swiftEmptyArrayStorage;
                  v76 = v144;
                }

                v69 = sub_10010D640(v95);

                v105 = sub_1000A0DEC(v140, v58, v69);
                v77 = v149;
                v62 = v145;
                if (v105)
                {
                  if (v136 == 65 && v78 == 0xE100000000000000 || (v106 = v136, (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
                  {
                    v107 = 0;
                    goto LABEL_60;
                  }

                  if (v106 == 66 && v78 == 0xE100000000000000 || (v132 = v136, (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
                  {
                    v107 = 1;
                    goto LABEL_60;
                  }

                  if (v132 == 67 && v78 == 0xE100000000000000 || (v74 = v136, (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
                  {
                    v107 = 2;
                    goto LABEL_60;
                  }

LABEL_95:
                  if (v74 == 68 && v78 == 0xE100000000000000)
                  {
                    v107 = 3;
LABEL_60:

                    v108 = v107;
                    v109 = v139;
                    sub_10004F23C(v108, v140, v58, &off_1001F4010, v70, v139);

                    if ((*(v62 + 48))(v109, 1, v77) != 1)
                    {
                      (*(v62 + 8))(v146, v77);
                      swift_arrayDestroy();

                      return (*(v62 + 32))(v148, v109, v77);
                    }

                    sub_10000A0D4(v109, &qword_100201718, &qword_1001ABC98);
                    goto LABEL_63;
                  }

                  if (_stringCompareWithSmolCheck(_:_:expecting:)())
                  {
                    v107 = 3;
LABEL_104:
                    v77 = v149;
                    v76 = v144;
                    v62 = v145;
                    goto LABEL_60;
                  }

                  if (v136 == 69 && v137 == 0xE100000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                  {
                    v107 = 4;
                    goto LABEL_104;
                  }

                  if (v136 == 70 && v137 == 0xE100000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                  {
                    v107 = 5;
                    goto LABEL_104;
                  }

                  if (v136 == 71 && v137 == 0xE100000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                  {
                    v107 = 6;
                    goto LABEL_104;
                  }

                  if (v136 == 72 && v137 == 0xE100000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                  {
                    v107 = 7;
                    goto LABEL_104;
                  }

                  v76 = v144;
                  v62 = v145;
                }

                else
                {
                }

LABEL_63:
                v110 = 0;
                v111 = v135 - 1;
                v112 = v69 + 56;
                v113 = (v62 + 48);
                while (1)
                {
                  v114 = v111 - 1;
                  if (v111 < 1)
                  {
                    if (v110)
                    {

                      v126 = v138;
                      defaultLogger()();
                      v127 = Logger.logObject.getter();
                      v128 = static os_log_type_t.info.getter();
                      if (os_log_type_enabled(v127, v128))
                      {
                        v129 = swift_slowAlloc();
                        *v129 = 0;
                        _os_log_impl(&_mh_execute_header, v127, v128, "MobileAsset, exhausted trying to find a compatible version, returning default", v129, 2u);
                      }

                      (v76)(v126, v141);
                      return (*(v145 + 32))(v148, v146, v149);
                    }

                    v114 = 0;
                    v110 = 1;
                  }

                  v150[0] = v111;
                  v115 = dispatch thunk of CustomStringConvertible.description.getter();
                  v117 = v116;
                  if (*(v69 + 16) && (v118 = v115, Hasher.init(_seed:)(), String.hash(into:)(), v119 = Hasher._finalize()(), v120 = -1 << *(v69 + 32), v121 = v119 & ~v120, ((*(v112 + ((v121 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v121) & 1) != 0))
                  {
                    v122 = ~v120;
                    while (1)
                    {
                      v123 = (*(v69 + 48) + 16 * v121);
                      v124 = *v123 == v118 && v123[1] == v117;
                      if (v124 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                      {
                        break;
                      }

                      v121 = (v121 + 1) & v122;
                      if (((*(v112 + ((v121 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v121) & 1) == 0)
                      {
                        goto LABEL_64;
                      }
                    }

                    v125 = v142;
                    sub_10004F23C(7uLL, v118, v117, &off_1001F4010, v70, v142);

                    if ((*v113)(v125, 1, v149) != 1)
                    {
                      v130 = v145;
                      v131 = v149;
                      (*(v145 + 8))(v146, v149);
                      swift_arrayDestroy();

                      return (*(v130 + 32))(v148, v125, v131);
                    }

                    sub_10000A0D4(v125, &qword_100201718, &qword_1001ABC98);
                  }

                  else
                  {
LABEL_64:
                  }

                  v111 = v114;
                  v76 = v144;
                }
              }
            }
          }
        }
      }
    }

    v89 = v144;
    defaultLogger()();
    v90 = Logger.logObject.getter();
    v91 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v90, v91))
    {
      v92 = swift_slowAlloc();
      *v92 = 0;
      _os_log_impl(&_mh_execute_header, v90, v91, "MobileAsset, system gave inconsistent buildVersion, using default", v92, 2u);
    }

    v34(v89, v141);
    return (*(v54 + 32))(v148, v146, v36);
  }

  else
  {
    v47 = v15;
    swift_arrayDestroy();
    v48 = v143;
    defaultLogger()();
    v49 = Logger.logObject.getter();
    v50 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      *v51 = 0;
      _os_log_impl(&_mh_execute_header, v49, v50, "MobileAsset, No deviceType mapped, returning default", v51, 2u);
    }

    v34(v48, v47);
    return CoreIDVAsset.base.getter();
  }
}

void *sub_10004EA40(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Logger();
  v36 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100004E70(&qword_100201708, &qword_1001ABC90);
  __chkstk_darwin(v7 - 8);
  v9 = &v31 - v8;
  v10 = type metadata accessor for CoreIDVAssetCertificates();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v31 - v15;
  sub_1000500FC(a2, v9);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_10000A0D4(v9, &qword_100201708, &qword_1001ABC90);
  }

  else
  {
    (*(v11 + 32))(v16, v9, v10);
    v17 = [objc_opt_self() standardUserDefaults];
    v18._object = 0x80000001001B4610;
    v18._countAndFlagsBits = 0xD00000000000001BLL;
    v19 = NSUserDefaults.internalBool(forKey:)(v18);

    if (v19)
    {
      defaultLogger()();
      (*(v11 + 16))(v14, v16, v10);
      v20 = Logger.logObject.getter();
      v21 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        v33 = v22;
        v35 = swift_slowAlloc();
        v37 = v35;
        *v22 = 136315138;
        v34 = v21;
        CoreIDVAssetCertificates.certificates.getter();
        v32 = Dictionary.Keys.description.getter();
        v24 = v23;

        (*(v11 + 8))(v14, v10);
        v25 = sub_10010150C(v32, v24, &v37);

        v26 = v33;
        *(v33 + 1) = v25;
        _os_log_impl(&_mh_execute_header, v20, v34, "MobileAsset has certificates of keys: %s", v26, 0xCu);
        sub_100005090(v35);
      }

      else
      {

        (*(v11 + 8))(v14, v10);
      }

      (*(v36 + 8))(v6, v4);
    }

    v27 = CoreIDVAssetCertificates.certificates.getter();
    v28 = sub_10004AA70(v27);

    v37 = v28;
    if (CoreIDVAssetCertificates.overrideDefault.getter())
    {
      (*(v11 + 8))(v16, v10);
      return v28;
    }

    else
    {

      sub_1000FC91C(v29);
      (*(v11 + 8))(v16, v10);
      return v37;
    }
  }

  return a1;
}

unint64_t sub_10004EEBC(unint64_t result, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  v3 = result & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v4 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v4 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v4)
  {

    return 0;
  }

  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      v27[0] = result;
      v27[1] = a2 & 0xFFFFFFFFFFFFFFLL;
      if (result == 43)
      {
        if (v2)
        {
          v3 = v2 - 1;
          if (v2 != 1)
          {
            v6 = 0;
            v16 = v27 + 1;
            while (1)
            {
              v17 = *v16 - 48;
              if (v17 > 9)
              {
                break;
              }

              v18 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                break;
              }

              v6 = v18 + v17;
              if (__OFADD__(v18, v17))
              {
                break;
              }

              ++v16;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_61;
        }

LABEL_72:
        __break(1u);
        return result;
      }

      if (result != 45)
      {
        if (v2)
        {
          v6 = 0;
          v21 = v27;
          while (1)
          {
            v22 = *v21 - 48;
            if (v22 > 9)
            {
              break;
            }

            v23 = 10 * v6;
            if ((v6 * 10) >> 64 != (10 * v6) >> 63)
            {
              break;
            }

            v6 = v23 + v22;
            if (__OFADD__(v23, v22))
            {
              break;
            }

            ++v21;
            if (!--v2)
            {
              goto LABEL_60;
            }
          }
        }

        goto LABEL_61;
      }

      if (v2)
      {
        v3 = v2 - 1;
        if (v2 != 1)
        {
          v6 = 0;
          v10 = v27 + 1;
          while (1)
          {
            v11 = *v10 - 48;
            if (v11 > 9)
            {
              break;
            }

            v12 = 10 * v6;
            if ((v6 * 10) >> 64 != (10 * v6) >> 63)
            {
              break;
            }

            v6 = v12 - v11;
            if (__OFSUB__(v12, v11))
            {
              break;
            }

            ++v10;
            if (!--v3)
            {
              goto LABEL_62;
            }
          }
        }

        goto LABEL_61;
      }
    }

    else
    {
      if ((result & 0x1000000000000000) != 0)
      {
        result = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
      }

      else
      {
        result = _StringObject.sharedUTF8.getter();
        v3 = v26;
      }

      v5 = *result;
      if (v5 == 43)
      {
        if (v3 >= 1)
        {
          if (--v3)
          {
            v6 = 0;
            if (result)
            {
              v13 = (result + 1);
              while (1)
              {
                v14 = *v13 - 48;
                if (v14 > 9)
                {
                  goto LABEL_61;
                }

                v15 = 10 * v6;
                if ((v6 * 10) >> 64 != (10 * v6) >> 63)
                {
                  goto LABEL_61;
                }

                v6 = v15 + v14;
                if (__OFADD__(v15, v14))
                {
                  goto LABEL_61;
                }

                ++v13;
                if (!--v3)
                {
                  goto LABEL_62;
                }
              }
            }

            goto LABEL_60;
          }

          goto LABEL_61;
        }

        goto LABEL_71;
      }

      if (v5 != 45)
      {
        if (v3)
        {
          v6 = 0;
          if (result)
          {
            while (1)
            {
              v19 = *result - 48;
              if (v19 > 9)
              {
                goto LABEL_61;
              }

              v20 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                goto LABEL_61;
              }

              v6 = v20 + v19;
              if (__OFADD__(v20, v19))
              {
                goto LABEL_61;
              }

              ++result;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_60;
        }

LABEL_61:
        v6 = 0;
        LOBYTE(v3) = 1;
        goto LABEL_62;
      }

      if (v3 >= 1)
      {
        if (--v3)
        {
          v6 = 0;
          if (result)
          {
            v7 = (result + 1);
            while (1)
            {
              v8 = *v7 - 48;
              if (v8 > 9)
              {
                goto LABEL_61;
              }

              v9 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                goto LABEL_61;
              }

              v6 = v9 - v8;
              if (__OFSUB__(v9, v8))
              {
                goto LABEL_61;
              }

              ++v7;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

LABEL_60:
          LOBYTE(v3) = 0;
LABEL_62:
          v28 = v3;
          v24 = v3;
          goto LABEL_63;
        }

        goto LABEL_61;
      }

      __break(1u);
    }

    __break(1u);
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  v6 = sub_10004F5DC(result, a2, 10);
  v24 = v25;
LABEL_63:

  if (v24)
  {
    return 0;
  }

  else
  {
    return v6;
  }
}

uint64_t sub_10004F1BC(uint64_t a1, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v2)
  {
    return 0;
  }

  String.index(before:)();
  return String.subscript.getter();
}

uint64_t sub_10004F23C@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v47 = a6;
  v11 = type metadata accessor for Logger();
  v43 = *(v11 - 8);
  v44 = v11;
  __chkstk_darwin(v11);
  v42 = &v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for CoreIDVAssetBundle();
  v45 = *(v13 - 8);
  v46 = v13;
  result = __chkstk_darwin(v13);
  v41 = &v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(v16) = 0;
  while (1)
  {
    if (a1 <= 0)
    {
      v18 = (a1 != 0) | v16;
      v16 = 1;
      if (v18)
      {
        v30 = v46;
        v39 = v47;
        v31 = v45;
        return (*(v31 + 56))(v39, v16, 1, v30);
      }

      v17 = 0;
    }

    else
    {
      v17 = a1 - 1;
    }

    if (a1 >= *(a4 + 16))
    {
      break;
    }

    v19 = (a4 + 32 + 16 * a1);
    v20 = *v19;
    v21 = v19[1];
    v48[0] = a2;
    v48[1] = a3;

    v22._countAndFlagsBits = v20;
    v22._object = v21;
    String.append(_:)(v22);

    v23 = String.init<A>(_:)();
    v25 = v24;
    if (*(a5 + 16))
    {
      v26 = v23;
      v27 = sub_100099644(v23, v24);
      if (v28)
      {
        v29 = *(a5 + 56);
        v31 = v45;
        v30 = v46;
        v32 = v41;
        (*(v45 + 16))(v41, v29 + *(v45 + 72) * v27, v46);
        v33 = v42;
        defaultLogger()();

        v34 = Logger.logObject.getter();
        v35 = static os_log_type_t.debug.getter();

        if (os_log_type_enabled(v34, v35))
        {
          v36 = swift_slowAlloc();
          v37 = swift_slowAlloc();
          v48[0] = v37;
          *v36 = 136315138;
          v38 = sub_10010150C(v26, v25, v48);

          *(v36 + 4) = v38;
          _os_log_impl(&_mh_execute_header, v34, v35, "MobileAsset, choosing asset from %s", v36, 0xCu);
          sub_100005090(v37);
        }

        else
        {
        }

        (*(v43 + 8))(v33, v44);
        v39 = v47;
        (*(v31 + 32))(v47, v32, v30);
        v16 = 0;
        return (*(v31 + 56))(v39, v16, 1, v30);
      }
    }

    a1 = v17;
  }

  __break(1u);
  return result;
}

unsigned __int8 *sub_10004F5DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v62 = a1;
  v63 = a2;

  result = String.init<A>(_:)();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_10004FBE4(result, v5);
    v35 = v34;

    v5 = v35;
    if ((v35 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = _StringObject.sharedUTF8.getter();
      v7 = v61;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v19 = v7 - 1;
        if (v19)
        {
          v20 = a3 + 48;
          v21 = a3 + 55;
          v22 = a3 + 87;
          if (a3 > 10)
          {
            v20 = 58;
          }

          else
          {
            v22 = 97;
            v21 = 65;
          }

          if (result)
          {
            v13 = 0;
            v23 = result + 1;
            do
            {
              v24 = *v23;
              if (v24 < 0x30 || v24 >= v20)
              {
                if (v24 < 0x41 || v24 >= v21)
                {
                  v17 = 0;
                  if (v24 < 0x61 || v24 >= v22)
                  {
                    goto LABEL_127;
                  }

                  v25 = -87;
                }

                else
                {
                  v25 = -55;
                }
              }

              else
              {
                v25 = -48;
              }

              v26 = v13 * a3;
              if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
              {
                goto LABEL_126;
              }

              v13 = v26 + (v24 + v25);
              if (__OFADD__(v26, (v24 + v25)))
              {
                goto LABEL_126;
              }

              ++v23;
              --v19;
            }

            while (v19);
LABEL_46:
            v17 = v13;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v17 = 0;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v27 = a3 + 48;
        v28 = a3 + 55;
        v29 = a3 + 87;
        if (a3 > 10)
        {
          v27 = 58;
        }

        else
        {
          v29 = 97;
          v28 = 65;
        }

        if (result)
        {
          v30 = 0;
          do
          {
            v31 = *result;
            if (v31 < 0x30 || v31 >= v27)
            {
              if (v31 < 0x41 || v31 >= v28)
              {
                v17 = 0;
                if (v31 < 0x61 || v31 >= v29)
                {
                  goto LABEL_127;
                }

                v32 = -87;
              }

              else
              {
                v32 = -55;
              }
            }

            else
            {
              v32 = -48;
            }

            v33 = v30 * a3;
            if ((v30 * a3) >> 64 != (v30 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v30 = v33 + (v31 + v32);
            if (__OFADD__(v33, (v31 + v32)))
            {
              goto LABEL_126;
            }

            ++result;
            --v7;
          }

          while (v7);
          v17 = v33 + (v31 + v32);
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          v13 = 0;
          v14 = result + 1;
          while (1)
          {
            v15 = *v14;
            if (v15 < 0x30 || v15 >= v10)
            {
              if (v15 < 0x41 || v15 >= v11)
              {
                v17 = 0;
                if (v15 < 0x61 || v15 >= v12)
                {
                  goto LABEL_127;
                }

                v16 = -87;
              }

              else
              {
                v16 = -55;
              }
            }

            else
            {
              v16 = -48;
            }

            v18 = v13 * a3;
            if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v13 = v18 - (v15 + v16);
            if (__OFSUB__(v18, (v15 + v16)))
            {
              goto LABEL_126;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v17 = 0;
LABEL_127:

        return v17;
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v36 = HIBYTE(v5) & 0xF;
  v62 = v6;
  v63 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v36)
      {
        v38 = 0;
        v54 = a3 + 48;
        v55 = a3 + 55;
        v56 = a3 + 87;
        if (a3 > 10)
        {
          v54 = 58;
        }

        else
        {
          v56 = 97;
          v55 = 65;
        }

        v57 = &v62;
        while (1)
        {
          v58 = *v57;
          if (v58 < 0x30 || v58 >= v54)
          {
            if (v58 < 0x41 || v58 >= v55)
            {
              v17 = 0;
              if (v58 < 0x61 || v58 >= v56)
              {
                goto LABEL_127;
              }

              v59 = -87;
            }

            else
            {
              v59 = -55;
            }
          }

          else
          {
            v59 = -48;
          }

          v60 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v60 + (v58 + v59);
          if (__OFADD__(v60, (v58 + v59)))
          {
            goto LABEL_126;
          }

          v57 = (v57 + 1);
          if (!--v36)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v36)
    {
      v37 = v36 - 1;
      if (v37)
      {
        v38 = 0;
        v39 = a3 + 48;
        v40 = a3 + 55;
        v41 = a3 + 87;
        if (a3 > 10)
        {
          v39 = 58;
        }

        else
        {
          v41 = 97;
          v40 = 65;
        }

        v42 = &v62 + 1;
        while (1)
        {
          v43 = *v42;
          if (v43 < 0x30 || v43 >= v39)
          {
            if (v43 < 0x41 || v43 >= v40)
            {
              v17 = 0;
              if (v43 < 0x61 || v43 >= v41)
              {
                goto LABEL_127;
              }

              v44 = -87;
            }

            else
            {
              v44 = -55;
            }
          }

          else
          {
            v44 = -48;
          }

          v45 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v45 - (v43 + v44);
          if (__OFSUB__(v45, (v43 + v44)))
          {
            goto LABEL_126;
          }

          ++v42;
          if (!--v37)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v36)
  {
    v46 = v36 - 1;
    if (v46)
    {
      v38 = 0;
      v47 = a3 + 48;
      v48 = a3 + 55;
      v49 = a3 + 87;
      if (a3 > 10)
      {
        v47 = 58;
      }

      else
      {
        v49 = 97;
        v48 = 65;
      }

      v50 = &v62 + 1;
      do
      {
        v51 = *v50;
        if (v51 < 0x30 || v51 >= v47)
        {
          if (v51 < 0x41 || v51 >= v48)
          {
            v17 = 0;
            if (v51 < 0x61 || v51 >= v49)
            {
              goto LABEL_127;
            }

            v52 = -87;
          }

          else
          {
            v52 = -55;
          }
        }

        else
        {
          v52 = -48;
        }

        v53 = v38 * a3;
        if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
        {
          goto LABEL_126;
        }

        v38 = v53 + (v51 + v52);
        if (__OFADD__(v53, (v51 + v52)))
        {
          goto LABEL_126;
        }

        ++v50;
        --v46;
      }

      while (v46);
LABEL_125:
      v17 = v38;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

unint64_t sub_10004FB68(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = String.UTF16View.index(_:offsetBy:)();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = String.UTF8View._foreignIndex(_:offsetBy:)();
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

uint64_t sub_10004FBE4(uint64_t a1, unint64_t a2)
{
  v2 = String.subscript.getter();
  v6 = sub_10004FC64(v2, v3, v4, v5);

  return v6;
}

uint64_t sub_10004FC64(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v9 = Substring.UTF8View.distance(from:to:)();
    if (!v9 || (v10 = v9, v11 = sub_10010194C(v9, 0), v12 = sub_10004FDBC(v14, (v11 + 4), v10, a1, a2, a3, a4), , , v12 == v10))
    {
      v13 = static String._uncheckedFromUTF8(_:)();

      return v13;
    }

    __break(1u);
  }

  else
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v14[0] = a3;
      v14[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return static String._uncheckedFromUTF8(_:)();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }
  }

  _StringObject.sharedUTF8.getter();
LABEL_4:

  return static String._uncheckedFromUTF8(_:)();
}

unint64_t sub_10004FDBC(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_34;
  }

  if (a3 < 0)
  {
    goto LABEL_38;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_34:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    v17 = v12 & 0xC;
    result = v12;
    if (v17 == v15)
    {
      result = sub_10004FB68(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = String.UTF8View._foreignSubscript(position:)();
      v19 = result;
      if (v17 != v15)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
        if (v17 != v15)
        {
          goto LABEL_23;
        }
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = _StringObject.sharedUTF8.getter();
        }

        v19 = *(result + v18);
        if (v17 != v15)
        {
LABEL_23:
          if ((a7 & 0x1000000000000000) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_27;
        }
      }
    }

    result = sub_10004FB68(v12, a6, a7);
    v12 = result;
    if ((a7 & 0x1000000000000000) == 0)
    {
LABEL_24:
      v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_29;
    }

LABEL_27:
    if (v23 <= v12 >> 16)
    {
      goto LABEL_37;
    }

    result = String.UTF8View._foreignIndex(after:)();
    v12 = result;
LABEL_29:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_34;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_36;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

unint64_t sub_10004FFDC()
{
  result = qword_100201710;
  if (!qword_100201710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100201710);
  }

  return result;
}

uint64_t sub_100050030(uint64_t result, uint64_t a2, unint64_t a3)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  v3 = result;
  result = String.count.getter();
  if (__OFSUB__(result, v3))
  {
LABEL_7:
    __break(1u);
    return result;
  }

  String.index(_:offsetBy:limitedBy:)();

  return String.subscript.getter();
}

uint64_t sub_1000500FC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100004E70(&qword_100201708, &qword_1001ABC90);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void *sub_10005016C@<X0>(void *a1@<X8>)
{
  result = sub_100058FA8();
  if (!v1)
  {
    v4 = result;
    v5 = [result newBackgroundContext];

    type metadata accessor for IDCSAsyncDataContext();
    result = swift_allocObject();
    result[2] = v5;
    *a1 = result;
  }

  return result;
}

uint64_t sub_1000501DC()
{

  return swift_deallocClassInstance();
}

id sub_100050240()
{
  v1 = *(v0 + 16);
  v4 = 0;
  if ([v1 save:&v4])
  {
    return v4;
  }

  v3 = v4;
  _convertNSErrorToError(_:)();

  return swift_willThrow();
}

uint64_t sub_1000502E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v6 = type metadata accessor for NSManagedObjectContext.ScheduledTaskType();
  v5[7] = v6;
  v5[8] = *(v6 - 8);
  v5[9] = swift_task_alloc();

  return _swift_task_switch(sub_1000503B0, 0, 0);
}

uint64_t sub_1000503B0()
{
  v1 = v0[9];
  v2 = v0[5];
  v4 = v0[3];
  v3 = v0[4];
  v5 = swift_allocObject();
  v0[10] = v5;
  v5[2] = v2;
  v5[3] = v4;
  v5[4] = v3;
  v6 = enum case for NSManagedObjectContext.ScheduledTaskType.immediate(_:);
  v7 = type metadata accessor for NSManagedObjectContext.ScheduledTaskType();
  (*(*(v7 - 8) + 104))(v1, v6, v7);

  v8 = swift_task_alloc();
  v0[11] = v8;
  *v8 = v0;
  v8[1] = sub_100050500;
  v9 = v0[9];
  v10 = v0[5];
  v11 = v0[2];

  return NSManagedObjectContext.perform<A>(schedule:_:)(v11, v9, sub_100050894, v5, v10);
}

uint64_t sub_100050500()
{
  v2 = *(*v1 + 72);
  v3 = *(*v1 + 64);
  v4 = *(*v1 + 56);
  v5 = *v1;
  *(*v1 + 96) = v0;

  (*(v3 + 8))(v2, v4);

  if (v0)
  {

    return _swift_task_switch(sub_1000506D8, 0, 0);
  }

  else
  {

    v6 = *(v5 + 8);

    return v6();
  }
}

uint64_t sub_1000506D8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10005073C()
{

  return swift_deallocClassInstance();
}

uint64_t sub_100050798(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1000104D4;

  return sub_1000502E8(a1, a2, a3, a4);
}

uint64_t sub_10005085C()
{

  return _swift_deallocObject(v0, 40, 7);
}

unint64_t sub_1000508BC(uint64_t a1, void *a2)
{
  v5 = type metadata accessor for DIPError.Code();
  v34 = *(v5 - 8);
  v35 = v5;
  __chkstk_darwin(v5);
  v36 = v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DIPSignpost.Config();
  __chkstk_darwin(v7 - 8);
  v8 = type metadata accessor for DIPSignpost();
  v37 = *(v8 - 8);
  v38 = v8;
  __chkstk_darwin(v8);
  v10 = v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IDCSSignposts.databaseFetchAuthACL.getter();
  DIPSignpost.init(_:)();
  type metadata accessor for StoredAuthACL();
  v11 = static StoredAuthACL.fetchRequest()();
  [v11 setFetchLimit:1];
  sub_100050ECC();
  sub_100004E70(&qword_100201868, &unk_1001ABDC0);
  v12 = swift_allocObject();
  v33 = xmmword_1001AA160;
  *(v12 + 16) = xmmword_1001AA160;
  *(v12 + 56) = &type metadata for String;
  *(v12 + 64) = sub_100050F18();
  *(v12 + 32) = a1;
  *(v12 + 40) = a2;

  v13 = NSPredicate.init(format:_:)();
  [v11 setPredicate:v13];

  result = NSManagedObjectContext.fetch<A>(_:)();
  if (v2)
  {

    v39 = 0;
    v40 = 0xE000000000000000;
    _StringGuts.grow(_:)(30);
    v15._object = 0x80000001001B4860;
    v15._countAndFlagsBits = 0xD000000000000018;
    String.append(_:)(v15);
    v16._countAndFlagsBits = a1;
    v16._object = a2;
    String.append(_:)(v16);
    v17._countAndFlagsBits = 8250;
    v17._object = 0xE200000000000000;
    String.append(_:)(v17);
    swift_getErrorValue();
    DefaultStringInterpolation.appendInterpolation<A>(_:)();
    v32[0] = v40;
    v32[1] = v39;
    (*(v34 + 104))(v36, enum case for DIPError.Code.coreDataErrorFetchAuthACLsWithIdentifierFailed(_:), v35);
    sub_100004E70(&unk_100200230, &unk_1001AB020);
    v18 = (sub_100004E70(&unk_100201890, &unk_1001AA550) - 8);
    v19 = (*(*v18 + 80) + 32) & ~*(*v18 + 80);
    v20 = swift_allocObject();
    *(v20 + 16) = v33;
    v21 = v20 + v19;
    v22 = (v20 + v19 + v18[14]);
    v23 = enum case for DIPError.PropertyKey.underlyingErrno(_:);
    v24 = type metadata accessor for DIPError.PropertyKey();
    (*(*(v24 - 8) + 104))(v21, v23, v24);
    swift_getErrorValue();
    swift_errorRetain();
    v25 = dispatch thunk of Error._code.getter();
    v22[3] = &type metadata for Int;
    v22[4] = &protocol witness table for Int;
    *v22 = v25;
    sub_10010C6F8(v20);
    swift_setDeallocating();
    sub_100005128(v21);
    swift_deallocClassInstance();
    v26 = 0x80000001001B48C0;
    type metadata accessor for DIPError();
    sub_100008E7C();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    DIPSignpost.end(workflowID:isBackground:)(0, 2);
    (*(v37 + 8))(v10, v38);
    return v26;
  }

  v28 = v37;
  v27 = v38;
  if (!(result >> 62))
  {
    if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_5;
    }

LABEL_10:

    v26 = 0;
    goto LABEL_11;
  }

  v30 = result;
  v31 = _CocoaArrayWrapper.endIndex.getter();
  result = v30;
  if (!v31)
  {
    goto LABEL_10;
  }

LABEL_5:
  if ((result & 0xC000000000000001) != 0)
  {
    v29 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_8;
  }

  if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v29 = *(result + 32);
LABEL_8:
    v26 = v29;

LABEL_11:
    DIPSignpost.end(workflowID:isBackground:)(0, 2);
    (*(v28 + 8))(v10, v27);
    return v26;
  }

  __break(1u);
  return result;
}

unint64_t sub_100050ECC()
{
  result = qword_100201870;
  if (!qword_100201870)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100201870);
  }

  return result;
}

unint64_t sub_100050F18()
{
  result = qword_100201880;
  if (!qword_100201880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100201880);
  }

  return result;
}

uint64_t sub_100050F6C()
{
  v1 = type metadata accessor for DIPError.Code();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v23 = v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for DIPSignpost.Config();
  __chkstk_darwin(v4 - 8);
  v22 = type metadata accessor for DIPSignpost();
  v5 = *(v22 - 8);
  __chkstk_darwin(v22);
  v7 = v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IDCSSignposts.databaseFetchAllAuthACLs.getter();
  DIPSignpost.init(_:)();
  type metadata accessor for StoredAuthACL();
  v8 = static StoredAuthACL.fetchRequest()();
  v9 = NSManagedObjectContext.fetch<A>(_:)();

  if (v0)
  {
    v24 = 0;
    v25 = 0xE000000000000000;
    _StringGuts.grow(_:)(32);
    v10._countAndFlagsBits = 0xD00000000000001ELL;
    v10._object = 0x80000001001B4920;
    String.append(_:)(v10);
    swift_getErrorValue();
    DefaultStringInterpolation.appendInterpolation<A>(_:)();
    v20[0] = v25;
    v20[1] = v24;
    (*(v2 + 104))(v23, enum case for DIPError.Code.coreDataErrorFetchAuthACLsFailed(_:), v1);
    sub_100004E70(&unk_100200230, &unk_1001AB020);
    v11 = (sub_100004E70(&unk_100201890, &unk_1001AA550) - 8);
    v12 = (*(*v11 + 80) + 32) & ~*(*v11 + 80);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_1001AA160;
    v21 = v9;
    v14 = v13 + v12;
    v15 = (v13 + v12 + v11[14]);
    v16 = enum case for DIPError.PropertyKey.underlyingErrno(_:);
    v17 = type metadata accessor for DIPError.PropertyKey();
    (*(*(v17 - 8) + 104))(v14, v16, v17);
    swift_getErrorValue();
    swift_errorRetain();
    v18 = dispatch thunk of Error._code.getter();
    v15[3] = &type metadata for Int;
    v15[4] = &protocol witness table for Int;
    *v15 = v18;
    sub_10010C6F8(v13);
    swift_setDeallocating();
    sub_100005128(v14);
    swift_deallocClassInstance();
    type metadata accessor for DIPError();
    sub_100008E7C();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    DIPSignpost.end(workflowID:isBackground:)(0, 2);
    (*(v5 + 8))(v7, v22);
    return v21;
  }

  else
  {
    DIPSignpost.end(workflowID:isBackground:)(0, 2);
    (*(v5 + 8))(v7, v22);
  }

  return v9;
}

uint64_t sub_100051424(unint64_t a1, uint64_t a2)
{
  v46 = a1;
  v47 = a2;
  v4 = type metadata accessor for DIPError.Code();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DIPSignpost.Config();
  __chkstk_darwin(v8 - 8);
  v9 = type metadata accessor for DIPSignpost();
  v44 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IDCSSignposts.databaseDeleteAuthACL.getter();
  DIPSignpost.init(_:)();
  v12 = sub_100050F6C();
  v45 = v9;
  if (v3)
  {
    v48 = 0;
    v49 = 0xE000000000000000;
    _StringGuts.grow(_:)(27);
    v13._object = 0x80000001001B48E0;
    v13._countAndFlagsBits = 0xD000000000000019;
    String.append(_:)(v13);
    swift_getErrorValue();
    DefaultStringInterpolation.appendInterpolation<A>(_:)();
    v46 = v49;
    v47 = v48;
    (*(v5 + 104))(v7, enum case for DIPError.Code.coreDataErrorDeleteAuthACLsFailed(_:), v4);
    sub_100004E70(&unk_100200230, &unk_1001AB020);
    v14 = (sub_100004E70(&unk_100201890, &unk_1001AA550) - 8);
    v15 = (*(*v14 + 80) + 32) & ~*(*v14 + 80);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_1001AA160;
    v17 = (v16 + v15 + v14[14]);
    v18 = enum case for DIPError.PropertyKey.underlyingErrno(_:);
    v19 = type metadata accessor for DIPError.PropertyKey();
    (*(*(v19 - 8) + 104))(v16 + v15, v18, v19);
    swift_getErrorValue();
    swift_errorRetain();
    v20 = dispatch thunk of Error._code.getter();
    v17[3] = &type metadata for Int;
    v17[4] = &protocol witness table for Int;
    *v17 = v20;
    sub_10010C6F8(v16);
    swift_setDeallocating();
    sub_100005128(v16 + v15);
    swift_deallocClassInstance();
    v21 = "error fetching auth ACL ";
    type metadata accessor for DIPError();
    sub_100008E7C();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    DIPSignpost.end(workflowID:isBackground:)(0, 2);
    (*(v44 + 8))(v11, v45);
  }

  else
  {
    v22 = v12;
    v40 = v2;
    v41 = 0;
    v42 = v11;
    if (v12 >> 62)
    {
      goto LABEL_23;
    }

    for (i = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
    {
      v24 = 0;
      v43 = v22 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if ((v22 & 0xC000000000000001) != 0)
        {
          v25 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v24 >= *(v43 + 16))
          {
            goto LABEL_22;
          }

          v25 = *(v22 + 8 * v24 + 32);
        }

        v26 = v25;
        v27 = v24 + 1;
        if (__OFADD__(v24, 1))
        {
          break;
        }

        v28 = [v25 identifier];
        if (v28)
        {
          v29 = v28;
          v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v32 = v31;

          if (v30 == v46 && v32 == v47)
          {

LABEL_20:

            [*(v40 + 16) deleteObject:v26];

            LOBYTE(v21) = 1;
            goto LABEL_25;
          }

          v34 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v34)
          {
            goto LABEL_20;
          }
        }

        ++v24;
        if (v27 == i)
        {
          goto LABEL_24;
        }
      }

      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      ;
    }

LABEL_24:

    LOBYTE(v21) = 0;
LABEL_25:
    v36 = v44;
    v35 = v45;
    v37 = v42;
    DIPSignpost.end(workflowID:isBackground:)(0, 2);
    (*(v36 + 8))(v37, v35);
  }

  return v21 & 1;
}

uint64_t sub_1000519F8(uint64_t a1)
{
  v2 = type metadata accessor for DIPSignpost.Config();
  __chkstk_darwin(v2 - 8);
  v19 = type metadata accessor for DIPSignpost();
  v3 = *(v19 - 8);
  __chkstk_darwin(v19);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IDCSSignposts.databaseFetchCredentialInStates.getter();
  DIPSignpost.init(_:)();
  v6 = *(a1 + 16);
  v7 = _swiftEmptyArrayStorage;
  if (v6)
  {
    v20 = _swiftEmptyArrayStorage;
    sub_10010A718(0, v6, 0);
    v7 = v20;
    v8 = (a1 + 32);
    v9 = v20[2];
    do
    {
      v11 = *v8++;
      v10 = v11;
      v20 = v7;
      v12 = v7[3];
      if (v9 >= v12 >> 1)
      {
        sub_10010A718((v12 > 1), v9 + 1, 1);
        v7 = v20;
      }

      v7[2] = v9 + 1;
      v7[v9++ + 4] = v10;
      --v6;
    }

    while (v6);
  }

  type metadata accessor for StoredCredential();
  v13 = static StoredCredential.fetchRequest()();
  sub_100050ECC();
  sub_100004E70(&qword_100201868, &unk_1001ABDC0);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1001AA160;
  *(v14 + 56) = sub_100004E70(&qword_1002018D8, &qword_1001ABD58);
  *(v14 + 64) = sub_100055454(&unk_1002018E0, &qword_1002018D8, &qword_1001ABD58, &protocol conformance descriptor for [A]);
  *(v14 + 32) = v7;
  v15 = NSPredicate.init(format:_:)();
  [v13 setPredicate:v15];

  v16 = NSManagedObjectContext.fetch<A>(_:)();
  DIPSignpost.end(workflowID:isBackground:)(0, 2);
  (*(v3 + 8))(v5, v19);
  return v16;
}

uint64_t sub_100051CD4()
{
  v1 = type metadata accessor for DIPError.Code();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v23 = v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for DIPSignpost.Config();
  __chkstk_darwin(v4 - 8);
  v22 = type metadata accessor for DIPSignpost();
  v5 = *(v22 - 8);
  __chkstk_darwin(v22);
  v7 = v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IDCSSignposts.databaseFetchAllCredentials.getter();
  DIPSignpost.init(_:)();
  type metadata accessor for StoredCredential();
  v8 = static StoredCredential.fetchRequest()();
  v9 = NSManagedObjectContext.fetch<A>(_:)();

  if (v0)
  {
    v24 = 0;
    v25 = 0xE000000000000000;
    _StringGuts.grow(_:)(34);
    v10._countAndFlagsBits = 0xD000000000000020;
    v10._object = 0x80000001001B4A10;
    String.append(_:)(v10);
    swift_getErrorValue();
    DefaultStringInterpolation.appendInterpolation<A>(_:)();
    v20[0] = v25;
    v20[1] = v24;
    (*(v2 + 104))(v23, enum case for DIPError.Code.coreDataErrorFetchAllCredentialsFailed(_:), v1);
    sub_100004E70(&unk_100200230, &unk_1001AB020);
    v11 = (sub_100004E70(&unk_100201890, &unk_1001AA550) - 8);
    v12 = (*(*v11 + 80) + 32) & ~*(*v11 + 80);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_1001AA160;
    v21 = v9;
    v14 = v13 + v12;
    v15 = (v13 + v12 + v11[14]);
    v16 = enum case for DIPError.PropertyKey.underlyingErrno(_:);
    v17 = type metadata accessor for DIPError.PropertyKey();
    (*(*(v17 - 8) + 104))(v14, v16, v17);
    swift_getErrorValue();
    swift_errorRetain();
    v18 = dispatch thunk of Error._code.getter();
    v15[3] = &type metadata for Int;
    v15[4] = &protocol witness table for Int;
    *v15 = v18;
    sub_10010C6F8(v13);
    swift_setDeallocating();
    sub_100005128(v14);
    swift_deallocClassInstance();
    type metadata accessor for DIPError();
    sub_100008E7C();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    DIPSignpost.end(workflowID:isBackground:)(0, 2);
    (*(v5 + 8))(v7, v22);
    return v21;
  }

  else
  {
    DIPSignpost.end(workflowID:isBackground:)(0, 2);
    (*(v5 + 8))(v7, v22);
  }

  return v9;
}

unint64_t sub_10005218C(uint64_t a1, void *a2)
{
  v33 = type metadata accessor for DIPError.Code();
  v4 = *(v33 - 8);
  __chkstk_darwin(v33);
  v34 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DIPSignpost.Config();
  __chkstk_darwin(v6 - 8);
  v7 = type metadata accessor for DIPSignpost();
  v37 = *(v7 - 8);
  v38 = v7;
  __chkstk_darwin(v7);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IDCSSignposts.databaseFetchCredential.getter();
  DIPSignpost.init(_:)();
  type metadata accessor for StoredCredential();
  v10 = static StoredCredential.fetchRequest()();
  [v10 setFetchLimit:1];
  sub_100050ECC();
  sub_100004E70(&qword_100201868, &unk_1001ABDC0);
  v11 = swift_allocObject();
  v32 = xmmword_1001AA160;
  *(v11 + 16) = xmmword_1001AA160;
  *(v11 + 56) = &type metadata for String;
  *(v11 + 64) = sub_100050F18();
  *(v11 + 32) = a1;
  *(v11 + 40) = a2;

  v12 = NSPredicate.init(format:_:)();
  [v10 setPredicate:v12];

  v13 = v36;
  result = NSManagedObjectContext.fetch<A>(_:)();
  if (v13)
  {

    v39 = 0;
    v40 = 0xE000000000000000;
    _StringGuts.grow(_:)(32);
    v15._countAndFlagsBits = 0xD00000000000001ALL;
    v15._object = 0x80000001001B4980;
    String.append(_:)(v15);
    v16._countAndFlagsBits = a1;
    v16._object = a2;
    String.append(_:)(v16);
    v17._countAndFlagsBits = 8250;
    v17._object = 0xE200000000000000;
    String.append(_:)(v17);
    swift_getErrorValue();
    DefaultStringInterpolation.appendInterpolation<A>(_:)();
    v35 = v40;
    v36 = v39;
    (*(v4 + 104))(v34, enum case for DIPError.Code.coreDataErrorFetchCredentialFailed(_:), v33);
    sub_100004E70(&unk_100200230, &unk_1001AB020);
    v18 = (sub_100004E70(&unk_100201890, &unk_1001AA550) - 8);
    v19 = (*(*v18 + 80) + 32) & ~*(*v18 + 80);
    v20 = swift_allocObject();
    *(v20 + 16) = v32;
    v21 = v20 + v19;
    v22 = (v20 + v19 + v18[14]);
    v23 = enum case for DIPError.PropertyKey.underlyingErrno(_:);
    v24 = type metadata accessor for DIPError.PropertyKey();
    (*(*(v24 - 8) + 104))(v21, v23, v24);
    swift_getErrorValue();
    swift_errorRetain();
    v25 = dispatch thunk of Error._code.getter();
    v22[3] = &type metadata for Int;
    v22[4] = &protocol witness table for Int;
    *v22 = v25;
    sub_10010C6F8(v20);
    swift_setDeallocating();
    sub_100005128(v21);
    swift_deallocClassInstance();
    v26 = 0x80000001001B49E0;
    type metadata accessor for DIPError();
    sub_100008E7C();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    DIPSignpost.end(workflowID:isBackground:)(0, 2);
    (*(v37 + 8))(v9, v38);
    return v26;
  }

  v28 = v37;
  v27 = v38;
  if (!(result >> 62))
  {
    if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_5;
    }

LABEL_10:

    v26 = 0;
    goto LABEL_11;
  }

  v30 = result;
  v31 = _CocoaArrayWrapper.endIndex.getter();
  result = v30;
  if (!v31)
  {
    goto LABEL_10;
  }

LABEL_5:
  if ((result & 0xC000000000000001) != 0)
  {
    v29 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_8;
  }

  if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v29 = *(result + 32);
LABEL_8:
    v26 = v29;

LABEL_11:
    DIPSignpost.end(workflowID:isBackground:)(0, 2);
    (*(v28 + 8))(v9, v27);
    return v26;
  }

  __break(1u);
  return result;
}

void *sub_100052798(uint64_t a1)
{
  type metadata accessor for StoredCredential();
  v2 = static StoredCredential.fetchRequest()();
  sub_100004E70(&qword_100200220, &unk_1001AA540);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1001ABD30;
  sub_100050ECC();
  sub_100004E70(&qword_100201868, &unk_1001ABDC0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1001AA160;
  *(v4 + 56) = sub_100004E70(&qword_100201D00, &unk_1001ACF10);
  *(v4 + 64) = sub_100055454(&qword_1002018A0, &qword_100201D00, &unk_1001ACF10, &protocol conformance descriptor for Set<A>);
  *(v4 + 32) = a1;

  *(v3 + 32) = NSPredicate.init(format:_:)();
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1001AA160;
  *(v5 + 56) = &type metadata for UInt;
  *(v5 + 64) = &protocol witness table for UInt;
  *(v5 + 32) = 2;
  *(v3 + 40) = NSPredicate.init(format:_:)();
  isa = Array._bridgeToObjectiveC()().super.isa;

  v7 = [objc_opt_self() andPredicateWithSubpredicates:isa];

  v8 = v2;
  [v2 setPredicate:v7];

  v9 = NSManagedObjectContext.fetch<A>(_:)();
  if (!v28)
  {
    v10 = v9;
    v11 = v9 & 0xFFFFFFFFFFFFFF8;
    if (v9 >> 62)
    {
LABEL_24:
      v12 = _CocoaArrayWrapper.endIndex.getter();
      if (v12)
      {
LABEL_4:
        v13 = 0;
        v29 = _swiftEmptyArrayStorage;
        do
        {
          v14 = v13;
          while (1)
          {
            if ((v10 & 0xC000000000000001) != 0)
            {
              v15 = specialized _ArrayBuffer._getElementSlowPath(_:)();
              v13 = v14 + 1;
              if (__OFADD__(v14, 1))
              {
                goto LABEL_22;
              }
            }

            else
            {
              if (v14 >= *(v11 + 16))
              {
                goto LABEL_23;
              }

              v15 = *(v10 + 8 * v14 + 32);
              v13 = v14 + 1;
              if (__OFADD__(v14, 1))
              {
LABEL_22:
                __break(1u);
LABEL_23:
                __break(1u);
                goto LABEL_24;
              }
            }

            v16 = v15;
            v17 = [v16 credentialIdentifier];
            if (v17)
            {
              break;
            }

            ++v14;
            if (v13 == v12)
            {
              goto LABEL_26;
            }
          }

          v27 = v8;
          v18 = v17;
          v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v26 = v20;

          if (swift_isUniquelyReferenced_nonNull_native())
          {
            v21 = v29;
          }

          else
          {
            v21 = sub_100100418(0, *(v29 + 2) + 1, 1, v29);
          }

          v23 = *(v21 + 2);
          v22 = *(v21 + 3);
          if (v23 >= v22 >> 1)
          {
            v21 = sub_100100418((v22 > 1), v23 + 1, 1, v21);
          }

          *(v21 + 2) = v23 + 1;
          v29 = v21;
          v24 = &v21[16 * v23];
          v8 = v27;
          *(v24 + 4) = v19;
          *(v24 + 5) = v26;
        }

        while (v13 != v12);
        goto LABEL_26;
      }
    }

    else
    {
      v12 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v12)
      {
        goto LABEL_4;
      }
    }

    v29 = _swiftEmptyArrayStorage;
LABEL_26:

    v2 = v29;
  }

  return v2;
}

unint64_t sub_100052B58(uint64_t a1)
{
  v3 = type metadata accessor for DIPError.Code();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v35 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DIPSignpost.Config();
  __chkstk_darwin(v6 - 8);
  v7 = type metadata accessor for DIPSignpost();
  v37 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IDCSSignposts.databaseFetchCredentialIdentifiers.getter();
  v36 = v9;
  DIPSignpost.init(_:)();
  v10 = objc_allocWithZone(NSFetchRequest);
  v11 = String._bridgeToObjectiveC()();
  v12 = [v10 initWithEntityName:v11];

  [v12 setResultType:2];
  sub_100004E70(&qword_1002018A8, &unk_1001ABD40);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1001AAE50;
  *(v13 + 32) = 0xD000000000000014;
  *(v13 + 40) = 0x80000001001B4A60;
  *(v13 + 88) = &type metadata for String;
  *(v13 + 56) = &type metadata for String;
  *(v13 + 64) = 0x6F69746974726170;
  *(v13 + 72) = 0xE90000000000006ELL;
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v12 setPropertiesToFetch:isa];

  v34 = a1;
  if (*(a1 + 16))
  {
    v33 = sub_100050ECC();
    sub_100004E70(&qword_100201868, &unk_1001ABDC0);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_1001AA160;
    *(v15 + 56) = sub_100004E70(&qword_100201580, &qword_1001AB980);
    *(v15 + 64) = sub_100055454(&qword_1002018C0, &qword_100201580, &qword_1001AB980, &protocol conformance descriptor for [A]);
    *(v15 + 32) = v34;

    v16 = NSPredicate.init(format:_:)();
    [v12 setPredicate:v16];
  }

  sub_100004E70(&unk_1002018B0, &qword_1001ABD50);
  v17 = NSManagedObjectContext.fetch<A>(_:)();
  if (v1)
  {
    v34 = v7;

    v32 = 0x80000001001B4AA0;
    v33 = 0x80000001001B49A0;
    v18 = v1;
  }

  else
  {
    v28 = sub_100053340(v17);

    if (v28)
    {
      v18 = sub_100054F10(v28);

      v29 = v36;
      DIPSignpost.end(workflowID:isBackground:)(0, 2);
      (*(v37 + 8))(v29, v7);
      return v18;
    }

    v34 = v7;
    (*(v4 + 104))(v35, enum case for DIPError.Code.coreDataErrorFetchIdentifiersUnexpectedResultType(_:), v3);
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100008E7C();
    v18 = swift_allocError();
    v32 = 0x80000001001B4AA0;
    v33 = 0x80000001001B49A0;
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
  }

  v38 = 0;
  v39 = 0xE000000000000000;
  _StringGuts.grow(_:)(30);
  v19._countAndFlagsBits = 0xD00000000000001CLL;
  v19._object = 0x80000001001B4A80;
  String.append(_:)(v19);
  swift_getErrorValue();
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  v31 = v38;
  (*(v4 + 104))(v35, enum case for DIPError.Code.coreDataErrorFetchIdentifiersFailed(_:), v3);
  sub_100004E70(&unk_100200230, &unk_1001AB020);
  v20 = (sub_100004E70(&unk_100201890, &unk_1001AA550) - 8);
  v21 = (*(*v20 + 80) + 32) & ~*(*v20 + 80);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_1001AA160;
  v23 = (v22 + v21 + v20[14]);
  v24 = enum case for DIPError.PropertyKey.underlyingErrno(_:);
  v25 = type metadata accessor for DIPError.PropertyKey();
  (*(*(v25 - 8) + 104))(v22 + v21, v24, v25);
  swift_getErrorValue();
  swift_errorRetain();
  v26 = dispatch thunk of Error._code.getter();
  v23[3] = &type metadata for Int;
  v23[4] = &protocol witness table for Int;
  *v23 = v26;
  sub_10010C6F8(v22);
  swift_setDeallocating();
  sub_100005128(v22 + v21);
  swift_deallocClassInstance();
  type metadata accessor for DIPError();
  sub_100008E7C();
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v27 = v36;
  DIPSignpost.end(workflowID:isBackground:)(0, 2);
  (*(v37 + 8))(v27, v34);
  return v18;
}

void *sub_100053340(unint64_t a1)
{
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_23;
  }

  v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  sub_10010A898(0, v3 & ~(v3 >> 63), 0);
  v4 = _swiftEmptyArrayStorage;
  if (!v2)
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v2)
    {
      return v4;
    }

LABEL_7:
    for (i = 0; ; ++i)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        specialized _ArrayBuffer._getElementSlowPath(_:)();
        v6 = i + 1;
        if (__OFADD__(i, 1))
        {
          goto LABEL_21;
        }
      }

      else
      {
        if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_22;
        }

        swift_unknownObjectRetain();
        v6 = i + 1;
        if (__OFADD__(i, 1))
        {
LABEL_21:
          __break(1u);
LABEL_22:
          __break(1u);
LABEL_23:
          v3 = _CocoaArrayWrapper.endIndex.getter();
          goto LABEL_3;
        }
      }

      sub_100004E70(&unk_1002018B0, &qword_1001ABD50);
      sub_100004E70(&qword_1002018D0, &qword_1001AAEA0);
      if ((swift_dynamicCast() & 1) == 0)
      {

        return 0;
      }

      v8 = _swiftEmptyArrayStorage[2];
      v7 = _swiftEmptyArrayStorage[3];
      if (v8 >= v7 >> 1)
      {
        sub_10010A898((v7 > 1), v8 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v8 + 1;
      _swiftEmptyArrayStorage[v8 + 4] = v10;
      if (v6 == v2)
      {
        return v4;
      }
    }
  }

  v2 = _CocoaArrayWrapper.endIndex.getter();
  if (v2)
  {
    goto LABEL_7;
  }

  return v4;
}

unint64_t sub_1000534F4(uint64_t a1, unint64_t a2, const char *a3)
{
  v4 = v3;
  v45 = a2;
  v46 = a3;
  v6 = type metadata accessor for DIPError.Code();
  v42 = *(v6 - 8);
  v43 = v6;
  __chkstk_darwin(v6);
  v44 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DIPSignpost.Config();
  __chkstk_darwin(v8 - 8);
  v9 = type metadata accessor for DIPSignpost();
  v48 = *(v9 - 8);
  v49 = v9;
  __chkstk_darwin(v9);
  v11 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IDCSSignposts.databaseFetchCredentialIdentifiersByDocType.getter();
  v47 = v11;
  DIPSignpost.init(_:)();
  v12 = objc_allocWithZone(NSFetchRequest);
  v13 = String._bridgeToObjectiveC()();
  v14 = [v12 initWithEntityName:v13];

  [v14 setResultType:2];
  sub_100004E70(&qword_1002018A8, &unk_1001ABD40);
  v15 = swift_allocObject();
  v41 = xmmword_1001AAE50;
  *(v15 + 16) = xmmword_1001AAE50;
  *(v15 + 32) = 0xD000000000000014;
  *(v15 + 40) = 0x80000001001B4A60;
  *(v15 + 88) = &type metadata for String;
  *(v15 + 56) = &type metadata for String;
  *(v15 + 64) = 0x6F69746974726170;
  *(v15 + 72) = 0xE90000000000006ELL;
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v14 setPropertiesToFetch:isa];

  v17 = a1;
  v18 = *(a1 + 16);
  sub_100050ECC();
  sub_100004E70(&qword_100201868, &unk_1001ABDC0);
  if (v18)
  {
    v19 = swift_allocObject();
    *(v19 + 16) = v41;
    *(v19 + 56) = sub_100004E70(&qword_100201580, &qword_1001AB980);
    *(v19 + 64) = sub_100055454(&qword_1002018C0, &qword_100201580, &qword_1001AB980, &protocol conformance descriptor for [A]);
    *(v19 + 32) = v17;
    *(v19 + 96) = &type metadata for String;
    *(v19 + 104) = sub_100050F18();
    v20 = v46;
    *(v19 + 72) = v45;
    *(v19 + 80) = v20;
  }

  else
  {
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_1001AA160;
    *(v21 + 56) = &type metadata for String;
    *(v21 + 64) = sub_100050F18();
    v22 = v46;
    *(v21 + 32) = v45;
    *(v21 + 40) = v22;
  }

  v23 = NSPredicate.init(format:_:)();
  [v14 setPredicate:v23];

  sub_100004E70(&unk_1002018B0, &qword_1001ABD50);
  v24 = NSManagedObjectContext.fetch<A>(_:)();
  if (v4)
  {

    v45 = 0x80000001001B4BB0;
    v46 = 0x80000001001B49A0;
    v26 = v42;
    v25 = v43;
  }

  else
  {
    v38 = sub_100053340(v24);

    if (v38)
    {
      v28 = sub_100054F10(v38);

      v39 = v47;
      DIPSignpost.end(workflowID:isBackground:)(0, 2);
      (*(v48 + 8))(v39, v49);
      return v28;
    }

    v46 = "fetchCredentialIdentifiers(in:)";
    v26 = v42;
    v25 = v43;
    (*(v42 + 104))(v44, enum case for DIPError.Code.coreDataErrorFetchIdentifiersUnexpectedResultType(_:), v43);
    *&v41 = sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100008E7C();
    swift_allocError();
    v45 = 0x80000001001B4BB0;
    v46 = 0x80000001001B49A0;
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
  }

  v50 = 0;
  v51 = 0xE000000000000000;
  _StringGuts.grow(_:)(30);
  v27._countAndFlagsBits = 0xD00000000000001CLL;
  v27._object = 0x80000001001B4A80;
  String.append(_:)(v27);
  swift_getErrorValue();
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  v43 = v50;
  v28 = v44;
  (*(v26 + 104))(v44, enum case for DIPError.Code.coreDataErrorFetchIdentifiersFailed(_:), v25);
  sub_100004E70(&unk_100200230, &unk_1001AB020);
  v29 = (sub_100004E70(&unk_100201890, &unk_1001AA550) - 8);
  v30 = (*(*v29 + 80) + 32) & ~*(*v29 + 80);
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_1001AA160;
  v32 = v31 + v30;
  v33 = (v31 + v30 + v29[14]);
  v34 = enum case for DIPError.PropertyKey.underlyingErrno(_:);
  v35 = type metadata accessor for DIPError.PropertyKey();
  (*(*(v35 - 8) + 104))(v32, v34, v35);
  swift_getErrorValue();
  swift_errorRetain();
  v36 = dispatch thunk of Error._code.getter();
  v33[3] = &type metadata for Int;
  v33[4] = &protocol witness table for Int;
  *v33 = v36;
  sub_10010C6F8(v31);
  swift_setDeallocating();
  sub_100005128(v32);
  swift_deallocClassInstance();
  type metadata accessor for DIPError();
  sub_100008E7C();
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v37 = v47;
  DIPSignpost.end(workflowID:isBackground:)(0, 2);
  (*(v48 + 8))(v37, v49);
  return v28;
}

uint64_t (*sub_100053D4C(uint64_t **a1, uint64_t a2, uint64_t a3))()
{
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  *a1 = v6;
  v6[4] = sub_100054BC4(v6, a2, a3);
  return sub_100053DD4;
}

void sub_100053DD4(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

void *sub_100053E30(uint64_t a1, uint64_t a2)
{
  v99 = type metadata accessor for DIPError.Code();
  v96 = *(v99 - 1);
  __chkstk_darwin(v99);
  v100 = &v87 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Logger();
  v94 = *(v5 - 8);
  v95 = v5;
  v6 = __chkstk_darwin(v5);
  v8 = &v87 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v6);
  v11 = &v87 - v10;
  __chkstk_darwin(v9);
  v13 = &v87 - v12;
  v14 = type metadata accessor for DIPSignpost.Config();
  __chkstk_darwin(v14 - 8);
  v15 = type metadata accessor for DIPSignpost();
  v91 = *(v15 - 8);
  v92 = v15;
  __chkstk_darwin(v15);
  v17 = &v87 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IDCSSignposts.databaseFetchActiveRegionsInPartitions.getter();
  v90 = v17;
  DIPSignpost.init(_:)();
  v101 = type metadata accessor for StoredPayload();
  v18 = static StoredPayload.fetchRequest()();
  sub_100004E70(&qword_1002018A8, &unk_1001ABD40);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_1001AA160;
  *(v19 + 56) = &type metadata for String;
  *(v19 + 32) = 0x6E6F69676572;
  *(v19 + 40) = 0xE600000000000000;
  isa = Array._bridgeToObjectiveC()().super.isa;

  v93 = v18;
  [v18 setPropertiesToFetch:isa];

  v21 = *(a1 + 16);
  v89 = v8;
  v98 = a2;
  if (v21)
  {
    defaultLogger()();

    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v103 = swift_slowAlloc();
      *v24 = 136315394;
      v25 = Array.description.getter();
      v27 = sub_10010150C(v25, v26, &v103);

      *(v24 + 4) = v27;
      *(v24 + 12) = 2080;
      v28 = Set.description.getter();
      v30 = sub_10010150C(v28, v29, &v103);

      *(v24 + 14) = v30;
      _os_log_impl(&_mh_execute_header, v22, v23, "fetchActiveRegionsInPartitions partitions %s requested docTypes: %s", v24, 0x16u);
      swift_arrayDestroy();
    }

    v88 = *(v94 + 8);
    v88(v13, v95);
    sub_100050ECC();
    sub_100004E70(&qword_100201868, &unk_1001ABDC0);
    v31 = swift_allocObject();
    *(v31 + 16) = xmmword_1001AAFC0;
    *(v31 + 56) = sub_100004E70(&qword_100201580, &qword_1001AB980);
    v32 = sub_100055454(&qword_1002018C0, &qword_100201580, &qword_1001AB980, &protocol conformance descriptor for [A]);
    *(v31 + 32) = a1;
    *(v31 + 96) = &type metadata for UInt;
    *(v31 + 104) = &protocol witness table for UInt;
    *(v31 + 64) = v32;
    *(v31 + 72) = 2;
    *(v31 + 136) = sub_100004E70(&qword_100201D00, &unk_1001ACF10);
    *(v31 + 144) = sub_100055454(&qword_1002018A0, &qword_100201D00, &unk_1001ACF10, &protocol conformance descriptor for Set<A>);
    *(v31 + 112) = v98;

    v33 = NSPredicate.init(format:_:)();
  }

  else
  {
    defaultLogger()();

    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v103 = v37;
      *v36 = 136315138;
      v38 = Set.description.getter();
      v39 = a2;
      v41 = sub_10010150C(v38, v40, &v103);

      *(v36 + 4) = v41;
      _os_log_impl(&_mh_execute_header, v34, v35, "fetchActiveRegionsInPartitions requested docTypes: %s", v36, 0xCu);
      sub_100005090(v37);

      v88 = *(v94 + 8);
      v88(v11, v95);
    }

    else
    {

      v88 = *(v94 + 8);
      v88(v11, v95);
      v39 = a2;
    }

    sub_100050ECC();
    sub_100004E70(&qword_100201868, &unk_1001ABDC0);
    v42 = swift_allocObject();
    *(v42 + 16) = xmmword_1001AAE50;
    *(v42 + 56) = &type metadata for UInt;
    *(v42 + 64) = &protocol witness table for UInt;
    *(v42 + 32) = 2;
    *(v42 + 96) = sub_100004E70(&qword_100201D00, &unk_1001ACF10);
    *(v42 + 104) = sub_100055454(&qword_1002018A0, &qword_100201D00, &unk_1001ACF10, &protocol conformance descriptor for Set<A>);
    *(v42 + 72) = v39;

    v33 = NSPredicate.init(format:_:)();
  }

  v43 = v93;
  [v93 setPredicate:v33];

  v44 = v104;
  v45 = NSManagedObjectContext.fetch<A>(_:)();
  v46 = v44;
  if (v44)
  {

    (*(v96 + 104))(v100, enum case for DIPError.Code.internalError(_:), v99);
    swift_errorRetain();
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100008E7C();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    v47 = v90;
    DIPSignpost.end(workflowID:isBackground:)(0, 2);
    return (*(v91 + 8))(v47, v92);
  }

  v49 = v45;
  if (v45 >> 62)
  {
LABEL_50:
    v50 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v50 = *((v45 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v87 = v46;
  if (v50)
  {
    v46 = 0;
    v51 = 0;
    v102 = v49 & 0xC000000000000001;
    v96 = v49 & 0xFFFFFFFFFFFFFF8;
    v99 = _swiftEmptyDictionarySingleton;
    v97 = v49;
    v101 = v50;
    while (1)
    {
      if (v102)
      {
        v52 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v46 >= *(v96 + 16))
        {
          goto LABEL_48;
        }

        v52 = *(v49 + 8 * v46 + 32);
      }

      v53 = v52;
      v54 = v46 + 1;
      if (__OFADD__(v46, 1))
      {
        __break(1u);
LABEL_48:
        __break(1u);
LABEL_49:
        __break(1u);
        goto LABEL_50;
      }

      v55 = [v52 docType];
      if (v55)
      {
        break;
      }

LABEL_16:
      ++v46;
      if (v54 == v50)
      {
        goto LABEL_43;
      }
    }

    v56 = v55;
    v104 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v58 = v57;

    v59 = [v53 region];
    if (!v59)
    {

LABEL_41:
      v50 = v101;
      goto LABEL_16;
    }

    v60 = v59;
    v61 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v49 = v62;

    v63 = HIBYTE(v49) & 0xF;
    v100 = v61;
    if ((v49 & 0x2000000000000000) == 0)
    {
      v63 = v61 & 0xFFFFFFFFFFFFLL;
    }

    if (!v63)
    {

LABEL_40:
      v49 = v97;
      goto LABEL_41;
    }

    sub_10000ED48(v51, 0);
    v64 = v99;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v103 = v64;
    sub_100099644(v104, v58);
    v67 = *(v64 + 16);
    v68 = (v66 & 1) == 0;
    v69 = v67 + v68;
    if (__OFADD__(v67, v68))
    {
      goto LABEL_49;
    }

    v70 = v66;
    if (*(v64 + 24) < v69)
    {
      sub_10010842C(v69, isUniquelyReferenced_nonNull_native);
      sub_100099644(v104, v58);
      if ((v70 & 1) != (v71 & 1))
      {
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }

      v72 = v103;
      if ((v70 & 1) == 0)
      {
        goto LABEL_38;
      }

LABEL_36:

LABEL_39:
      v99 = v72;
      sub_100102214(&v103, v100, v49);

      v51 = sub_100053E20;
      goto LABEL_40;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      v72 = v103;
      if (v66)
      {
        goto LABEL_36;
      }
    }

    else
    {
      sub_100109AC4();
      v72 = v103;
      if (v70)
      {
        goto LABEL_36;
      }
    }

LABEL_38:
    sub_100112C68();
    goto LABEL_39;
  }

  v51 = 0;
  v99 = _swiftEmptyDictionarySingleton;
LABEL_43:
  v104 = v51;

  v73 = v89;
  defaultLogger()();

  v74 = Logger.logObject.getter();
  v75 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v74, v75))
  {
    v76 = swift_slowAlloc();
    v103 = swift_slowAlloc();
    *v76 = 136315394;

    sub_100004E70(&qword_100201D00, &unk_1001ACF10);
    v77 = Dictionary.description.getter();
    v79 = v78;

    v80 = sub_10010150C(v77, v79, &v103);

    *(v76 + 4) = v80;
    *(v76 + 12) = 2080;
    v81 = Set.description.getter();
    v83 = sub_10010150C(v81, v82, &v103);

    *(v76 + 14) = v83;
    _os_log_impl(&_mh_execute_header, v74, v75, "fetchActiveRegionsInPartitions returning %s for requested docTypes: %s", v76, 0x16u);
    swift_arrayDestroy();
  }

  v88(v73, v95);
  v85 = v91;
  v84 = v92;
  v86 = v90;
  DIPSignpost.end(workflowID:isBackground:)(0, 2);
  (*(v85 + 8))(v86, v84);
  sub_10000ED48(v104, 0);
  return v99;
}

void (*sub_100054BC4(uint64_t *a1, uint64_t a2, uint64_t a3))(uint64_t a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x50uLL);
  }

  v7 = v6;
  *a1 = v6;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7[8] = sub_100054EDC(v7);
  v7[9] = sub_100054CD0(v7 + 4, a2, a3, isUniquelyReferenced_nonNull_native);
  return sub_100054C70;
}

void sub_100054C70(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 64);
  (*(*a1 + 72))();
  v2(v1, 0);

  free(v1);
}

void (*sub_100054CD0(void *a1, uint64_t a2, uint64_t a3, char a4))(uint64_t **a1)
{
  v5 = v4;
  if (&_swift_coroFrameAlloc)
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(0x30uLL);
  }

  v11 = v10;
  *a1 = v10;
  v10[2] = a3;
  v10[3] = v4;
  v10[1] = a2;
  v12 = *v4;
  v13 = sub_100099644(a2, a3);
  *(v11 + 40) = v14 & 1;
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_16;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a4 & 1) == 0)
  {
    if (v20 >= v18 && (a4 & 1) == 0)
    {
      v21 = v13;
      sub_100109A9C();
      v13 = v21;
      goto LABEL_11;
    }

    sub_100108404(v18, a4 & 1);
    v13 = sub_100099644(a2, a3);
    if ((v19 & 1) == (v22 & 1))
    {
      goto LABEL_11;
    }

LABEL_16:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_11:
  v11[4] = v13;
  if (v19)
  {
    v23 = *(*(*v5 + 56) + 8 * v13);
  }

  else
  {
    v23 = 0;
  }

  *v11 = v23;
  return sub_100054E28;
}

void sub_100054E28(uint64_t **a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    if ((*a1)[5])
    {
      *(*(*v1[3] + 56) + 8 * v1[4]) = v2;
    }

    else
    {
      sub_100112C68();
    }
  }

  else if ((*a1)[5])
  {
    sub_10001A8EC(*(*v1[3] + 48) + 16 * v1[4]);
    sub_10000C01C();
  }

  free(v1);
}

uint64_t (*sub_100054EDC(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_100054F04;
}

unint64_t sub_100054F10(uint64_t a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v56 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v56 - v7;
  result = sub_10010D02C(_swiftEmptyArrayStorage);
  v63 = result;
  v10 = *(a1 + 16);
  if (!v10)
  {
    return result;
  }

  v11 = (a1 + 32);
  v61 = "fetchAllCredentials()";
  v12 = (v3 + 8);
  v58 = xmmword_1001AA160;
  v59 = v2;
  v60 = v8;
  while (1)
  {
    v13 = *v11;
    if (!*(*v11 + 16))
    {
      goto LABEL_18;
    }

    v14 = sub_100099644(0x6F69746974726170, 0xE90000000000006ELL);
    if ((v15 & 1) == 0)
    {

LABEL_18:
      defaultLogger()();
      v34 = Logger.logObject.getter();
      v35 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v34, v35))
      {
        v36 = swift_slowAlloc();
        *v36 = 0;
        _os_log_impl(&_mh_execute_header, v34, v35, "missing partition; skipping", v36, 2u);
      }

      (*v12)(v6, v2);
      goto LABEL_4;
    }

    if (!*(v13 + 16))
    {

LABEL_22:
      defaultLogger()();
      v37 = Logger.logObject.getter();
      v38 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v37, v38))
      {
        v39 = swift_slowAlloc();
        *v39 = 0;
        _os_log_impl(&_mh_execute_header, v37, v38, "missing credential identifier; skipping", v39, 2u);
      }

      (*v12)(v8, v2);
      goto LABEL_4;
    }

    v16 = (*(v13 + 56) + 16 * v14);
    v18 = *v16;
    v17 = v16[1];

    v19 = sub_100099644(0xD000000000000014, v61 | 0x8000000000000000);
    if ((v20 & 1) == 0)
    {

      v8 = v60;
      goto LABEL_22;
    }

    v21 = (*(v13 + 56) + 16 * v19);
    v22 = *v21;
    v23 = v21[1];

    v24 = v63;
    if (*(v63 + 16))
    {
      sub_100099644(v18, v17);
      if (v25)
      {
        v57 = sub_100053D4C(v62, v18, v17);
        v27 = *v26;
        if (*v26)
        {
          v28 = v26;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *v28 = v27;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v27 = sub_100100418(0, *(v27 + 2) + 1, 1, v27);
            *v28 = v27;
          }

          v31 = *(v27 + 2);
          v30 = *(v27 + 3);
          v32 = v31 + 1;
          if (v31 >= v30 >> 1)
          {
            v56 = v31 + 1;
            v55 = sub_100100418((v30 > 1), v31 + 1, 1, v27);
            v32 = v56;
            v27 = v55;
            *v28 = v55;
          }

          *(v27 + 2) = v32;
          v33 = &v27[16 * v31];
          *(v33 + 4) = v22;
          *(v33 + 5) = v23;
        }

        else
        {
        }

        (v57)(v62, 0);

        goto LABEL_38;
      }
    }

    sub_100004E70(&qword_1002004F8, &qword_1001AAFA8);
    v40 = swift_allocObject();
    *(v40 + 16) = v58;
    *(v40 + 32) = v22;
    *(v40 + 40) = v23;
    v41 = swift_isUniquelyReferenced_nonNull_native();
    v62[0] = v24;
    v42 = sub_100099644(v18, v17);
    v44 = v24[2];
    v45 = (v43 & 1) == 0;
    v46 = __OFADD__(v44, v45);
    v47 = v44 + v45;
    if (v46)
    {
      break;
    }

    v48 = v43;
    if (v24[3] < v47)
    {
      sub_100108404(v47, v41);
      v42 = sub_100099644(v18, v17);
      if ((v48 & 1) != (v49 & 1))
      {
        goto LABEL_43;
      }

LABEL_30:
      v50 = v62[0];
      if ((v48 & 1) == 0)
      {
        goto LABEL_35;
      }

      goto LABEL_31;
    }

    if (v41)
    {
      goto LABEL_30;
    }

    v51 = v42;
    sub_100109A9C();
    v42 = v51;
    v50 = v62[0];
    if ((v48 & 1) == 0)
    {
LABEL_35:
      v50[(v42 >> 6) + 8] |= 1 << v42;
      v52 = (v50[6] + 16 * v42);
      *v52 = v18;
      v52[1] = v17;
      *(v50[7] + 8 * v42) = v40;
      v53 = v50[2];
      v46 = __OFADD__(v53, 1);
      v54 = v53 + 1;
      if (v46)
      {
        goto LABEL_42;
      }

      v50[2] = v54;
      goto LABEL_37;
    }

LABEL_31:
    *(v50[7] + 8 * v42) = v40;

LABEL_37:
    v63 = v50;
LABEL_38:
    v2 = v59;
    v8 = v60;
LABEL_4:
    ++v11;
    if (!--v10)
    {
      return v63;
    }
  }

  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_100055454(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_100021ED0(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10005549C()
{
  v0 = type metadata accessor for CredentialKeyType();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v33 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for DIPSignpost.Config();
  __chkstk_darwin(v4 - 8);
  v5 = type metadata accessor for DIPSignpost();
  v41 = *(v5 - 8);
  v42 = v5;
  __chkstk_darwin(v5);
  v7 = v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IDCSSignposts.databaseFetchAllInactivePresentmentKeys.getter();
  v40 = v7;
  DIPSignpost.init(_:)();
  v39 = type metadata accessor for StoredCryptoKey();
  v38 = static StoredCryptoKey.fetchRequest()();
  v37 = sub_10005684C(0, &qword_100201870, NSPredicate_ptr);
  v43 = "keyType = %@ or keyType = %@)";
  sub_100004E70(&qword_100201868, &unk_1001ABDC0);
  v8 = swift_allocObject();
  v36 = xmmword_1001AA160;
  *(v8 + 16) = xmmword_1001AA160;
  v35 = *(v1 + 104);
  v33[0] = v3;
  v35(v3, enum case for CredentialKeyType.legacySE(_:), v0);
  v9 = CredentialKeyType.rawValue.getter();
  v11 = v10;
  v12 = *(v1 + 8);
  v33[1] = v1 + 8;
  v34 = v12;
  v12(v3, v0);
  *(v8 + 56) = &type metadata for String;
  v13 = sub_100050F18();
  *(v8 + 64) = v13;
  *(v8 + 32) = v9;
  *(v8 + 40) = v11;
  v14 = NSPredicate.init(format:_:)();
  v15 = swift_allocObject();
  *(v15 + 16) = v36;
  v16 = v33[0];
  v35(v33[0], enum case for CredentialKeyType.ses(_:), v0);
  v17 = v16;
  v18 = CredentialKeyType.rawValue.getter();
  v20 = v19;
  v34(v17, v0);
  *(v15 + 56) = &type metadata for String;
  *(v15 + 64) = v13;
  *(v15 + 32) = v18;
  *(v15 + 40) = v20;
  v21 = NSPredicate.init(format:_:)();
  sub_100004E70(&qword_100200220, &unk_1001AA540);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_1001ABD30;
  *(v22 + 32) = v14;
  *(v22 + 40) = v21;
  v23 = objc_allocWithZone(NSCompoundPredicate);
  v24 = v14;
  v25 = v21;
  isa = Array._bridgeToObjectiveC()().super.isa;

  v27 = v23;
  v28 = v38;
  v29 = [v27 initWithType:2 subpredicates:isa];

  [v28 setPredicate:v29];
  v30 = NSManagedObjectContext.fetch<A>(_:)();

  v31 = v40;
  DIPSignpost.end(workflowID:isBackground:)(0, 2);
  (*(v41 + 8))(v31, v42);
  return v30;
}

uint64_t sub_1000558E0()
{
  v0 = type metadata accessor for CredentialKeyType();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v39 = v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v5 = v36 - v4;
  v6 = type metadata accessor for CredentialKeyUsage();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DIPSignpost.Config();
  __chkstk_darwin(v10 - 8);
  v11 = type metadata accessor for DIPSignpost();
  v41 = *(v11 - 8);
  v42 = v11;
  __chkstk_darwin(v11);
  v13 = v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IDCSSignposts.databaseFetchAllInactiveDeviceEncryptionKeys.getter();
  v40 = v13;
  DIPSignpost.init(_:)();
  v38 = type metadata accessor for StoredCryptoKey();
  v37 = static StoredCryptoKey.fetchRequest()();
  v14 = sub_10005684C(0, &qword_100201870, NSPredicate_ptr);
  v36[1] = "AuthPolicy == %d";
  v36[2] = v14;
  sub_100004E70(&qword_100201868, &unk_1001ABDC0);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1001AAFC0;
  (*(v7 + 104))(v9, enum case for CredentialKeyUsage.deviceEncryption(_:), v6);
  v16 = CredentialKeyUsage.rawValue.getter();
  v18 = v17;
  (*(v7 + 8))(v9, v6);
  *(v15 + 56) = &type metadata for String;
  v36[0] = sub_100050F18();
  *(v15 + 64) = v36[0];
  *(v15 + 32) = v16;
  *(v15 + 40) = v18;
  v19 = v1;
  v20 = *(v1 + 104);
  v20(v5, enum case for CredentialKeyType.sep(_:), v0);
  v21 = CredentialKeyType.rawValue.getter();
  v23 = v22;
  v24 = *(v19 + 8);
  v24(v5, v0);
  v25 = v36[0];
  *(v15 + 96) = &type metadata for String;
  *(v15 + 104) = v25;
  *(v15 + 72) = v21;
  *(v15 + 80) = v23;
  v26 = v39;
  v20(v39, enum case for CredentialKeyType.ses(_:), v0);
  v27 = v26;
  v28 = CredentialKeyType.rawValue.getter();
  v30 = v29;
  v24(v27, v0);
  *(v15 + 136) = &type metadata for String;
  *(v15 + 144) = v25;
  *(v15 + 112) = v28;
  *(v15 + 120) = v30;
  v31 = v37;
  v32 = NSPredicate.init(format:_:)();
  [v31 setPredicate:v32];

  v33 = NSManagedObjectContext.fetch<A>(_:)();
  v34 = v40;
  DIPSignpost.end(workflowID:isBackground:)(0, 2);
  (*(v41 + 8))(v34, v42);
  return v33;
}

uint64_t sub_100055D40(uint64_t a1, uint64_t a2)
{
  type metadata accessor for StoredCryptoKey();
  v3 = static StoredCryptoKey.fetchRequest()();
  sub_10005684C(0, &qword_100201870, NSPredicate_ptr);
  sub_100004E70(&qword_100201868, &unk_1001ABDC0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1001AAE50;
  v5 = CredentialKeyType.rawValue.getter();
  v7 = v6;
  *(v4 + 56) = &type metadata for String;
  v8 = sub_100050F18();
  *(v4 + 32) = v5;
  *(v4 + 40) = v7;
  *(v4 + 96) = &type metadata for UInt;
  *(v4 + 104) = &protocol witness table for UInt;
  *(v4 + 64) = v8;
  *(v4 + 72) = a2;
  v9 = NSPredicate.init(format:_:)();
  [v3 setPredicate:v9];

  v10 = NSManagedObjectContext.fetch<A>(_:)();
  return v10;
}

char *sub_100055E94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v7 = type metadata accessor for DIPSignpost.Config();
  __chkstk_darwin(v7 - 8);
  v8 = type metadata accessor for DIPSignpost();
  v38 = *(v8 - 8);
  v39 = v8;
  __chkstk_darwin(v8);
  v10 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IDCSSignposts.databaseFetchCredentialIdentifiersForPublicKeyIdentifier.getter();
  v37 = v10;
  DIPSignpost.init(_:)();
  type metadata accessor for StoredCryptoKey();
  v40 = static StoredCryptoKey.fetchRequest()();
  v11 = *(a3 + 16);
  sub_10005684C(0, &qword_100201870, NSPredicate_ptr);
  sub_100004E70(&qword_100201868, &unk_1001ABDC0);
  v12 = swift_allocObject();
  if (v11)
  {
    *(v12 + 16) = xmmword_1001AAE50;
    isa = Data._bridgeToObjectiveC()().super.isa;
    *(v12 + 56) = sub_10005684C(0, &qword_1002018F0, NSData_ptr);
    *(v12 + 64) = sub_100056894();
    *(v12 + 32) = isa;
    *(v12 + 96) = sub_100004E70(&qword_100201580, &qword_1001AB980);
    *(v12 + 104) = sub_1000568FC();
    *(v12 + 72) = a3;
  }

  else
  {
    *(v12 + 16) = xmmword_1001AA160;
    v14 = Data._bridgeToObjectiveC()().super.isa;
    *(v12 + 56) = sub_10005684C(0, &qword_1002018F0, NSData_ptr);
    *(v12 + 64) = sub_100056894();
    *(v12 + 32) = v14;
  }

  v15 = NSPredicate.init(format:_:)();
  v16 = v40;
  [v40 setPredicate:v15];

  result = NSManagedObjectContext.fetch<A>(_:)();
  v42 = result;
  if (v4)
  {

    v18 = v37;
    DIPSignpost.end(workflowID:isBackground:)(0, 2);
    (*(v38 + 8))(v18, v39);
    return v5;
  }

  v36 = 0;
  if (!(v42 >> 62))
  {
    v19 = *((v42 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v19)
    {
      goto LABEL_8;
    }

LABEL_23:
    v5 = _swiftEmptyArrayStorage;
LABEL_24:

    v35 = v37;
    DIPSignpost.end(workflowID:isBackground:)(0, 2);
    (*(v38 + 8))(v35, v39);
    return v5;
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  v19 = result;
  if (!result)
  {
    goto LABEL_23;
  }

LABEL_8:
  if (v19 >= 1)
  {
    v20 = 0;
    v21 = v42 & 0xC000000000000001;
    v5 = _swiftEmptyArrayStorage;
    v22 = &off_1001FE000;
    v41 = v42 & 0xC000000000000001;
    do
    {
      if (v21)
      {
        v23 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v23 = *(v42 + 8 * v20 + 32);
      }

      v24 = v23;
      v25 = [v23 v22[284]];
      if (v25 && (v26 = v25, v27 = [v25 credentialIdentifier], v26, v27))
      {
        v28 = v22;
        v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v31 = v30;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v5 = sub_100100418(0, *(v5 + 2) + 1, 1, v5);
        }

        v33 = *(v5 + 2);
        v32 = *(v5 + 3);
        if (v33 >= v32 >> 1)
        {
          v5 = sub_100100418((v32 > 1), v33 + 1, 1, v5);
        }

        *(v5 + 2) = v33 + 1;
        v34 = &v5[16 * v33];
        *(v34 + 4) = v29;
        *(v34 + 5) = v31;
        v21 = v41;
        v22 = v28;
      }

      else
      {
      }

      ++v20;
    }

    while (v19 != v20);
    goto LABEL_24;
  }

  __break(1u);
  return result;
}

unint64_t sub_10005634C(uint64_t a1, void *a2)
{
  v28 = type metadata accessor for DIPError.Code();
  v5 = *(v28 - 8);
  __chkstk_darwin(v28);
  v29 = v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for StoredCryptoKey();
  v7 = static StoredCryptoKey.fetchRequest()();
  [v7 setFetchLimit:1];
  sub_10005684C(0, &qword_100201870, NSPredicate_ptr);
  sub_100004E70(&qword_100201868, &unk_1001ABDC0);
  v8 = swift_allocObject();
  v27 = xmmword_1001AA160;
  *(v8 + 16) = xmmword_1001AA160;
  *(v8 + 56) = &type metadata for String;
  *(v8 + 64) = sub_100050F18();
  *(v8 + 32) = a1;
  *(v8 + 40) = a2;

  v9 = NSPredicate.init(format:_:)();
  [v7 setPredicate:v9];

  result = NSManagedObjectContext.fetch<A>(_:)();
  if (v2)
  {

    v30 = 0;
    v31 = 0xE000000000000000;
    _StringGuts.grow(_:)(32);
    v11._object = 0x80000001001B4C10;
    v11._countAndFlagsBits = 0xD00000000000001ALL;
    String.append(_:)(v11);
    v12._countAndFlagsBits = a1;
    v12._object = a2;
    String.append(_:)(v12);
    v13._countAndFlagsBits = 8250;
    v13._object = 0xE200000000000000;
    String.append(_:)(v13);
    swift_getErrorValue();
    DefaultStringInterpolation.appendInterpolation<A>(_:)();
    v26[1] = v30;
    (*(v5 + 104))(v29, enum case for DIPError.Code.coreDataErrorFetchCryptoKeyFailed(_:), v28);
    sub_100004E70(&unk_100200230, &unk_1001AB020);
    v14 = (sub_100004E70(&unk_100201890, &unk_1001AA550) - 8);
    v15 = (*(*v14 + 80) + 32) & ~*(*v14 + 80);
    v16 = swift_allocObject();
    *(v16 + 16) = v27;
    v17 = v16 + v15;
    v18 = (v17 + v14[14]);
    v19 = enum case for DIPError.PropertyKey.underlyingErrno(_:);
    v20 = type metadata accessor for DIPError.PropertyKey();
    (*(*(v20 - 8) + 104))(v17, v19, v20);
    swift_getErrorValue();
    swift_errorRetain();
    v21 = dispatch thunk of Error._code.getter();
    v18[3] = &type metadata for Int;
    v18[4] = &protocol witness table for Int;
    *v18 = v21;
    v22 = sub_10010C6F8(v16);
    swift_setDeallocating();
    sub_100005128(v17);
    swift_deallocClassInstance();
    type metadata accessor for DIPError();
    sub_100008E7C();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    return v22;
  }

  if (!(result >> 62))
  {
    if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_5;
    }

LABEL_10:

    return 0;
  }

  v24 = result;
  v25 = _CocoaArrayWrapper.endIndex.getter();
  result = v24;
  if (!v25)
  {
    goto LABEL_10;
  }

LABEL_5:
  if ((result & 0xC000000000000001) != 0)
  {
    v23 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_8;
  }

  if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v23 = *(result + 32);
LABEL_8:
    v22 = v23;

    return v22;
  }

  __break(1u);
  return result;
}

uint64_t sub_10005684C(uint64_t a1, unint64_t *a2, void *a3)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

unint64_t sub_100056894()
{
  result = qword_1002018F8;
  if (!qword_1002018F8)
  {
    sub_10005684C(255, &qword_1002018F0, NSData_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002018F8);
  }

  return result;
}

unint64_t sub_1000568FC()
{
  result = qword_1002018C0;
  if (!qword_1002018C0)
  {
    sub_100021ED0(&qword_100201580, &qword_1001AB980);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002018C0);
  }

  return result;
}

unint64_t sub_100056960(uint64_t a1, void *a2)
{
  v5 = type metadata accessor for DIPError.Code();
  v28 = *(v5 - 8);
  v29 = v5;
  __chkstk_darwin(v5);
  v30 = v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for StoredRelyingParty();
  v7 = static StoredRelyingParty.fetchRequest()();
  [v7 setFetchLimit:1];
  sub_100050ECC();
  sub_100004E70(&qword_100201868, &unk_1001ABDC0);
  v8 = swift_allocObject();
  v27 = xmmword_1001AA160;
  *(v8 + 16) = xmmword_1001AA160;
  *(v8 + 56) = &type metadata for String;
  *(v8 + 64) = sub_100050F18();
  *(v8 + 32) = a1;
  *(v8 + 40) = a2;

  v9 = NSPredicate.init(format:_:)();
  [v7 setPredicate:v9];

  result = NSManagedObjectContext.fetch<A>(_:)();
  if (v2)
  {

    v31 = 0;
    v32 = 0xE000000000000000;
    _StringGuts.grow(_:)(35);
    v11._countAndFlagsBits = 0xD00000000000001DLL;
    v11._object = 0x80000001001B4DB0;
    String.append(_:)(v11);
    v12._countAndFlagsBits = a1;
    v12._object = a2;
    String.append(_:)(v12);
    v13._countAndFlagsBits = 8250;
    v13._object = 0xE200000000000000;
    String.append(_:)(v13);
    swift_getErrorValue();
    DefaultStringInterpolation.appendInterpolation<A>(_:)();
    v26[1] = v31;
    (*(v28 + 104))(v30, enum case for DIPError.Code.coreDataErrorFetchRelyingPartyFailed(_:), v29);
    sub_100004E70(&unk_100200230, &unk_1001AB020);
    v14 = (sub_100004E70(&unk_100201890, &unk_1001AA550) - 8);
    v15 = (*(*v14 + 80) + 32) & ~*(*v14 + 80);
    v16 = swift_allocObject();
    *(v16 + 16) = v27;
    v17 = v16 + v15;
    v18 = (v17 + v14[14]);
    v19 = enum case for DIPError.PropertyKey.underlyingErrno(_:);
    v20 = type metadata accessor for DIPError.PropertyKey();
    (*(*(v20 - 8) + 104))(v17, v19, v20);
    swift_getErrorValue();
    swift_errorRetain();
    v21 = dispatch thunk of Error._code.getter();
    v18[3] = &type metadata for Int;
    v18[4] = &protocol witness table for Int;
    *v18 = v21;
    v22 = sub_10010C6F8(v16);
    swift_setDeallocating();
    sub_100005128(v17);
    swift_deallocClassInstance();
    type metadata accessor for DIPError();
    sub_100008E7C();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    return v22;
  }

  if (!(result >> 62))
  {
    if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_5;
    }

LABEL_10:

    return 0;
  }

  v24 = result;
  v25 = _CocoaArrayWrapper.endIndex.getter();
  result = v24;
  if (!v25)
  {
    goto LABEL_10;
  }

LABEL_5:
  if ((result & 0xC000000000000001) != 0)
  {
    v23 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_8;
  }

  if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v23 = *(result + 32);
LABEL_8:
    v22 = v23;

    return v22;
  }

  __break(1u);
  return result;
}

unint64_t sub_100056E4C(uint64_t a1, void *a2)
{
  v36 = type metadata accessor for DIPError.Code();
  v5 = *(v36 - 8);
  __chkstk_darwin(v36);
  v37 = v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DIPSignpost.Config();
  __chkstk_darwin(v7 - 8);
  v8 = type metadata accessor for DIPSignpost();
  v39 = *(v8 - 8);
  v40 = v8;
  __chkstk_darwin(v8);
  v10 = v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IDCSSignposts.databaseFetchPrearmTrustKey.getter();
  v38 = v10;
  DIPSignpost.init(_:)();
  type metadata accessor for StoredTrustKey();
  v11 = static StoredTrustKey.fetchRequest()();
  [v11 setFetchLimit:1];
  sub_100050ECC();
  sub_100004E70(&qword_100201868, &unk_1001ABDC0);
  v12 = swift_allocObject();
  v35 = xmmword_1001AA160;
  *(v12 + 16) = xmmword_1001AA160;
  *(v12 + 56) = &type metadata for String;
  *(v12 + 64) = sub_100050F18();
  *(v12 + 32) = a1;
  *(v12 + 40) = a2;

  v13 = NSPredicate.init(format:_:)();
  [v11 setPredicate:v13];

  result = NSManagedObjectContext.fetch<A>(_:)();
  if (v2)
  {

    v41 = 0;
    v42 = 0xE000000000000000;
    _StringGuts.grow(_:)(52);
    v15._countAndFlagsBits = 0xD00000000000002ELL;
    v15._object = 0x80000001001B4E30;
    String.append(_:)(v15);
    v16._countAndFlagsBits = a1;
    v16._object = a2;
    String.append(_:)(v16);
    v17._countAndFlagsBits = 8250;
    v17._object = 0xE200000000000000;
    String.append(_:)(v17);
    swift_getErrorValue();
    DefaultStringInterpolation.appendInterpolation<A>(_:)();
    v34[1] = v41;
    (*(v5 + 104))(v37, enum case for DIPError.Code.coreDataErrorFetchPrearmTrustKeyFailed(_:), v36);
    sub_100004E70(&unk_100200230, &unk_1001AB020);
    v18 = (sub_100004E70(&unk_100201890, &unk_1001AA550) - 8);
    v19 = (*(*v18 + 80) + 32) & ~*(*v18 + 80);
    v20 = swift_allocObject();
    *(v20 + 16) = v35;
    v21 = v20 + v19;
    v22 = (v20 + v19 + v18[14]);
    v23 = enum case for DIPError.PropertyKey.underlyingErrno(_:);
    v24 = type metadata accessor for DIPError.PropertyKey();
    (*(*(v24 - 8) + 104))(v21, v23, v24);
    swift_getErrorValue();
    swift_errorRetain();
    v25 = dispatch thunk of Error._code.getter();
    v22[3] = &type metadata for Int;
    v22[4] = &protocol witness table for Int;
    *v22 = v25;
    sub_10010C6F8(v20);
    swift_setDeallocating();
    sub_100005128(v21);
    swift_deallocClassInstance();
    v26 = type metadata accessor for DIPError();
    sub_100008E7C();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    v27 = v38;
    DIPSignpost.end(workflowID:isBackground:)(0, 2);
    (*(v39 + 8))(v27, v40);
    return v26;
  }

  v29 = v38;
  v28 = v39;
  v30 = v40;
  if (!(result >> 62))
  {
    if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_5;
    }

LABEL_10:

    v26 = 0;
    goto LABEL_11;
  }

  v32 = result;
  v33 = _CocoaArrayWrapper.endIndex.getter();
  result = v32;
  if (!v33)
  {
    goto LABEL_10;
  }

LABEL_5:
  if ((result & 0xC000000000000001) != 0)
  {
    v31 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_8;
  }

  if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v31 = *(result + 32);
LABEL_8:
    v26 = v31;

LABEL_11:
    DIPSignpost.end(workflowID:isBackground:)(0, 2);
    (*(v28 + 8))(v29, v30);
    return v26;
  }

  __break(1u);
  return result;
}

uint64_t sub_100057464(uint64_t a1, void *a2)
{
  v6 = type metadata accessor for DIPError.Code();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v29 = v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DIPSignpost.Config();
  __chkstk_darwin(v9 - 8);
  v28 = type metadata accessor for DIPSignpost();
  v10 = *(v28 - 8);
  __chkstk_darwin(v28);
  v12 = v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IDCSSignposts.databaseDeletePrearmTrustKey.getter();
  DIPSignpost.init(_:)();
  v13 = sub_100056E4C(a1, a2);
  if (v3)
  {
    v30 = 0;
    v31 = 0xE000000000000000;
    _StringGuts.grow(_:)(35);
    v14._object = 0x80000001001B4ED0;
    v14._countAndFlagsBits = 0xD000000000000021;
    String.append(_:)(v14);
    swift_getErrorValue();
    DefaultStringInterpolation.appendInterpolation<A>(_:)();
    v27[1] = v31;
    v27[2] = v30;
    (*(v7 + 104))(v29, enum case for DIPError.Code.coreDataErrorDeletePrearmTrustKeyFailed(_:), v6);
    sub_100004E70(&unk_100200230, &unk_1001AB020);
    v15 = (sub_100004E70(&unk_100201890, &unk_1001AA550) - 8);
    v16 = (*(*v15 + 80) + 32) & ~*(*v15 + 80);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_1001AA160;
    v18 = v17 + v16;
    v19 = (v17 + v16 + v15[14]);
    v20 = enum case for DIPError.PropertyKey.underlyingErrno(_:);
    v21 = type metadata accessor for DIPError.PropertyKey();
    (*(*(v21 - 8) + 104))(v18, v20, v21);
    swift_getErrorValue();
    swift_errorRetain();
    v22 = dispatch thunk of Error._code.getter();
    v19[3] = &type metadata for Int;
    v19[4] = &protocol witness table for Int;
    *v19 = v22;
    sub_10010C6F8(v17);
    swift_setDeallocating();
    sub_100005128(v18);
    swift_deallocClassInstance();
    type metadata accessor for DIPError();
    sub_100008E7C();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    DIPSignpost.end(workflowID:isBackground:)(0, 2);
    return (*(v10 + 8))(v12, v28);
  }

  else
  {
    v24 = v28;
    if (v13)
    {
      v25 = *(v2 + 16);
      v26 = v13;
      [v25 deleteObject:v13];
    }

    DIPSignpost.end(workflowID:isBackground:)(0, 2);
    return (*(v10 + 8))(v12, v24);
  }
}