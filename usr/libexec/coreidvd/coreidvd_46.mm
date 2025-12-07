uint64_t sub_100521BB4(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return _swift_task_switch(sub_100521BD4, 0, 0);
}

uint64_t sub_100521BD4()
{
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v1[1] = sub_100521C68;

  return sub_100545B38();
}

uint64_t sub_100521C68(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  *(v3 + 40) = a1;
  *(v3 + 48) = a2;

  return _swift_task_switch(sub_10053CD28, 0, 0);
}

uint64_t sub_100521D68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v45 = a1;
  v46 = a2;
  v4 = type metadata accessor for DIPError.Code();
  v41 = *(v4 - 8);
  __chkstk_darwin(v4);
  v42 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = type metadata accessor for Logger();
  v6 = *(v44 - 8);
  v7 = __chkstk_darwin(v44);
  v43 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v10 = &v36 - v9;
  v47 = sub_100007224(&qword_1008352C8, &qword_1006C0D50);
  v11 = *(v47 - 8);
  __chkstk_darwin(v47);
  v13 = &v36 - v12;
  v14 = sub_100007224(&unk_100835208, &unk_1006C0D10);
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v36 - v16;
  v18 = type metadata accessor for DIPPregeneratedAssessment(0);
  if (*(a3 + *(v18 + 60) + 8))
  {
    v19 = v18;
    v20 = Data.init(base64Encoded:options:)();
    if (v21 >> 60 != 15)
    {
      v22 = v21;
      if (*(a3 + *(v19 + 64) + 8))
      {
        v39 = v20;
        v40 = v21;
        v24 = Data.init(base64Encoded:options:)();
        v20 = v39;
        v22 = v40;
        if (v23 >> 60 != 15)
        {
          v37 = v23;
          v38 = v24;
          type metadata accessor for JSONDecoder();
          swift_allocObject();
          JSONDecoder.init()();
          sub_1000BA30C(&qword_100835728, &unk_100835208, &unk_1006C0D10, &protocol conformance descriptor for EncryptedDataContainer<A>);
          dispatch thunk of JSONDecoder.decode<A>(_:from:)();
          sub_1000BA30C(&qword_100835788, &qword_1008352C8, &qword_1006C0D50, &protocol conformance descriptor for EncryptedDataContainer<A>);
          v32 = v37;
          dispatch thunk of JSONDecoder.decode<A>(_:from:)();
          sub_10000BD94(v39, v40);

          sub_10000BD94(v38, v32);
          v33 = v45;
          (*(v15 + 32))(v45, v17, v14);
          (*(v15 + 56))(v33, 0, 1, v14);
          v34 = v46;
          v35 = v47;
          (*(v11 + 32))(v46, v13, v47);
          v30 = v35;
          v29 = v34;
          v28 = 0;
          return (*(v11 + 56))(v29, v28, 1, v30);
        }
      }

      sub_10000BD94(v20, v22);
    }
  }

  defaultLogger()();
  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    *v27 = 0;
    _os_log_impl(&_mh_execute_header, v25, v26, "No Encrypted Containers from pre-generated assessment", v27, 2u);
  }

  (*(v6 + 8))(v10, v44);
  v28 = 1;
  (*(v15 + 56))(v45, 1, 1, v14);
  v29 = v46;
  v30 = v47;
  return (*(v11 + 56))(v29, v28, 1, v30);
}

void sub_100522400(NSObject *a1@<X0>, int a2@<W1>, _OWORD *a3@<X2>, NSObject *a4@<X3>, int a5@<W4>, void *a6@<X8>)
{
  v7 = v6;
  v395 = a5;
  v422 = a6;
  v423 = a4;
  v396 = a3;
  v388 = a2;
  v399 = a1;
  v8 = sub_100007224(&unk_100835208, &unk_1006C0D10);
  v397 = *(v8 - 8);
  v398 = v8;
  __chkstk_darwin(v8);
  v385 = &v372 - v9;
  v10 = sub_100007224(&qword_100836328, &unk_1006C51B0);
  __chkstk_darwin(v10 - 8);
  v387 = &v372 - v11;
  v382 = type metadata accessor for String.Encoding();
  v386 = *(v382 - 8);
  __chkstk_darwin(v382);
  v383 = &v372 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_100007224(&qword_100835138, &qword_1006C0B58);
  v402 = *(v13 - 8);
  v403 = v13;
  __chkstk_darwin(v13);
  v389 = (&v372 - v14);
  v15 = sub_100007224(&qword_100835248, &unk_1006E7940);
  v393 = *(v15 - 8);
  v16 = __chkstk_darwin(v15 - 8);
  v401 = &v372 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v16);
  v380 = &v372 - v19;
  v394 = v20;
  __chkstk_darwin(v18);
  v406 = &v372 - v21;
  v22 = sub_100007224(&qword_100835180, &unk_1006C0CE0);
  v391 = *(v22 - 8);
  v23 = __chkstk_darwin(v22 - 8);
  v384 = &v372 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __chkstk_darwin(v23);
  v400 = &v372 - v26;
  v27 = __chkstk_darwin(v25);
  v390 = (&v372 - v28);
  v392 = v29;
  __chkstk_darwin(v27);
  v404 = (&v372 - v30);
  v31 = type metadata accessor for UUID();
  v32 = *(v31 - 8);
  v409 = v31;
  v410 = v32;
  v33 = __chkstk_darwin(v31);
  v408 = &v372 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v33);
  v411 = &v372 - v35;
  v36 = type metadata accessor for DIPError.Code();
  v419 = *(v36 - 8);
  v420 = v36;
  __chkstk_darwin(v36);
  v426 = (&v372 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0));
  v38 = sub_100007224(&unk_10084A160, &unk_1006E7978);
  __chkstk_darwin(v38 - 8);
  v40 = &v372 - v39;
  v428 = type metadata accessor for AugmentedProfile(0);
  v41 = *(v428 - 1);
  v42 = __chkstk_darwin(v428);
  v414 = &v372 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = __chkstk_darwin(v42);
  v418 = &v372 - v45;
  v46 = __chkstk_darwin(v44);
  v413 = (&v372 - v47);
  __chkstk_darwin(v46);
  v49 = &v372 - v48;
  countAndFlagsBits = type metadata accessor for Logger();
  v50 = *(countAndFlagsBits - 8);
  v51 = __chkstk_darwin(countAndFlagsBits);
  v416 = &v372 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = __chkstk_darwin(v51);
  v417 = &v372 - v54;
  v55 = __chkstk_darwin(v53);
  v415 = (&v372 - v56);
  v57 = __chkstk_darwin(v55);
  v412 = &v372 - v58;
  v59 = __chkstk_darwin(v57);
  v381 = &v372 - v60;
  v61 = __chkstk_darwin(v59);
  v407 = &v372 - v62;
  v63 = __chkstk_darwin(v61);
  v405 = &v372 - v64;
  v65 = __chkstk_darwin(v63);
  v421 = &v372 - v66;
  v67 = __chkstk_darwin(v65);
  v69 = &v372 - v68;
  __chkstk_darwin(v67);
  v71 = &v372 - v70;
  defaultLogger()();
  v72 = Logger.logObject.getter();
  v73 = static os_log_type_t.debug.getter();
  v74 = os_log_type_enabled(v72, v73);
  v425 = v7;
  if (v74)
  {
    v75 = swift_slowAlloc();
    *v75 = 0;
    _os_log_impl(&_mh_execute_header, v72, v73, "Computing new assessment", v75, 2u);
    v7 = v425;
  }

  v76 = (v50 + 8);
  object = *(v50 + 8);
  object(v71, countAndFlagsBits);
  v77 = v428;
  v424 = swift_allocBox();
  v79 = v78;
  sub_10000BBC4(v423, v40, &unk_10084A160, &unk_1006E7978);
  v80 = (*(v41 + 48))(v40, 1, v77);
  v427 = v76;
  if (v80 == 1)
  {
    sub_10000BE18(v40, &unk_10084A160, &unk_1006E7978);

    sub_100007224(&qword_10084A1D0, &qword_1006DB410);
    runAsyncAndBlock<A>(file:function:line:_:)();

    if (!*(&v449 + 1))
    {
      v423 = 0x800000010071E6B0;
      v428 = "sessment GUID to use";
      defaultLogger()();
      v136 = Logger.logObject.getter();
      v137 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v136, v137))
      {
        v138 = swift_slowAlloc();
        *v138 = 0;
        _os_log_impl(&_mh_execute_header, v136, v137, "assessment profile is missing, skip assessment", v138, 2u);
      }

      object(v69, countAndFlagsBits);
      (*(v419 + 104))(v426, enum case for DIPError.Code.odnMissingProfile(_:), v420);
      sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
      v139 = sub_100007224(&qword_1008341D0, &unk_1006BF8D0);
      v420 = v139;
      v140 = *(*(v139 - 8) + 72);
      v141 = (*(*(v139 - 8) + 80) + 32) & ~*(*(v139 - 8) + 80);
      v142 = swift_allocObject();
      *(v142 + 16) = xmmword_1006BF740;
      v143 = v142 + v141;
      v144 = (v142 + v141 + *(v139 + 48));
      v145 = enum case for DIPError.PropertyKey.inoWorkflowID(_:);
      v146 = type metadata accessor for DIPError.PropertyKey();
      v147 = *(*(v146 - 8) + 104);
      (v147)(v143, v145, v146);
      v148 = v425;
      v149 = *(v425 + 16);
      v150 = *(v425 + 24);
      v144[3] = &type metadata for String;
      v144[4] = &protocol witness table for String;
      *v144 = v149;
      v144[1] = v150;
      v151 = (v143 + v140 + *(v420 + 48));
      v147();
      v152 = *(v148 + 32);
      v153 = *(v148 + 40);
      v151[3] = &type metadata for String;
      v151[4] = &protocol witness table for String;
      *v151 = v152;
      v151[1] = v153;

      sub_10003C9C0(v142);
      swift_setDeallocating();
      swift_arrayDestroy();
      swift_deallocClassInstance();
      type metadata accessor for DIPError();
      sub_10053B9C0(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
      swift_allocError();
      v370 = 500;
      v368 = 0xD000000000000070;
      v369 = v423;
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      v154 = v421;
      defaultLogger()();
      DIPRecordError(_:message:log:)();
      object(v154, countAndFlagsBits);

      swift_beginAccess();
      v155 = v422;
      sub_10000BBC4(v148 + 216, v422, &qword_100834EB0, &qword_1006E78F0);
      v157 = *(v148 + OBJC_IVAR____TtC8coreidvd10DIPODNator_profileId);
      v156 = *(v148 + OBJC_IVAR____TtC8coreidvd10DIPODNator_profileId + 8);
      v158 = *(type metadata accessor for ODNAssessmentResult(0) + 44);
      v159 = type metadata accessor for AssessmentAdditionalInfo(0);
      (*(*(v159 - 8) + 56))(v155 + v158, 1, 1, v159);
      *(v155 + 13) = 0u;
      *(v155 + 11) = 0u;
      *(v155 + 9) = 0u;
      *(v155 + 7) = 0u;
      *(v155 + 5) = 0u;
      v155[16] = 0;
      v155[17] = 0;
      v155[15] = 1;
      *(v155 + 144) = 0;
      *(v155 + 19) = 0u;
      *(v155 + 21) = 0u;
      *(v155 + 23) = 0u;
      *(v155 + 25) = 0u;
      v155[27] = v157;
      v155[28] = v156;
      swift_deallocBox();
LABEL_32:

      return;
    }

    v81 = v418;
    sub_10053CD68(v418);

    sub_10052DC18(v81);
    v160 = v413;
    sub_100537B28(v81, v413, type metadata accessor for AugmentedProfile);
    sub_100537B28(v160, v79, type metadata accessor for AugmentedProfile);
    v49 = v414;
    sub_10053BFD8(v79, v414);
    sub_10053D32C(v49);
  }

  else
  {
    sub_100537B28(v40, v49, type metadata accessor for AugmentedProfile);
    sub_10053BFD8(v49, v79);
    sub_10052DC18(v49);
  }

  sub_100537B90(v49, type metadata accessor for AugmentedProfile);
  v82 = v428;

  v83 = Data.init(base64Encoded:options:)();
  v85 = v84;

  if (v85 >> 60 == 15)
  {
    v86 = v417;
    defaultLogger()();
    v87 = Logger.logObject.getter();
    v88 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v87, v88))
    {
      v89 = swift_slowAlloc();
      *v89 = 0;
      _os_log_impl(&_mh_execute_header, v87, v88, "assessment profile is missing, skip assessment", v89, 2u);
    }

    object(v86, countAndFlagsBits);
    (*(v419 + 104))(v426, enum case for DIPError.Code.odnMissingProfile(_:), v420);
    sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
    v90 = sub_100007224(&qword_1008341D0, &unk_1006BF8D0);
    v428 = v90;
    v91 = *(*(v90 - 8) + 72);
    v92 = (*(*(v90 - 8) + 80) + 32) & ~*(*(v90 - 8) + 80);
    v93 = swift_allocObject();
    *(v93 + 16) = xmmword_1006BF740;
    v94 = v93 + v92;
    v95 = (v93 + v92 + *(v90 + 48));
    v96 = enum case for DIPError.PropertyKey.inoWorkflowID(_:);
    v97 = type metadata accessor for DIPError.PropertyKey();
    v98 = *(*(v97 - 8) + 104);
    (v98)(v94, v96, v97);
    v99 = v425;
    v100 = *(v425 + 16);
    v101 = *(v425 + 24);
    v95[3] = &type metadata for String;
    v95[4] = &protocol witness table for String;
    *v95 = v100;
    v95[1] = v101;
    v102 = (v94 + v91 + *(v428 + 12));
    v98();
    v103 = *(v99 + 32);
    v104 = *(v99 + 40);
    v105 = v99;
    v102[3] = &type metadata for String;
    v102[4] = &protocol witness table for String;
    *v102 = v103;
    v102[1] = v104;

    sub_10003C9C0(v93);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    type metadata accessor for DIPError();
    sub_10053B9C0(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    v369 = 0x800000010071E6B0;
    v370 = 509;
    v368 = 0xD000000000000070;
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    v106 = v421;
    defaultLogger()();
    DIPRecordError(_:message:log:)();
LABEL_16:
    object(v106, countAndFlagsBits);

    swift_beginAccess();
    v130 = v422;
    sub_10000BBC4(v105 + 216, v422, &qword_100834EB0, &qword_1006E78F0);
    v131 = (v105 + OBJC_IVAR____TtC8coreidvd10DIPODNator_profileId);
LABEL_17:
    v133 = *v131;
    v132 = v131[1];
    v134 = *(type metadata accessor for ODNAssessmentResult(0) + 44);
    v135 = type metadata accessor for AssessmentAdditionalInfo(0);
    (*(*(v135 - 8) + 56))(v130 + v134, 1, 1, v135);

    *(v130 + 13) = 0u;
    *(v130 + 11) = 0u;
    *(v130 + 9) = 0u;
    *(v130 + 7) = 0u;
    *(v130 + 5) = 0u;
    v130[16] = 0;
    v130[17] = 0;
    v130[15] = 1;
    *(v130 + 144) = 0;
    *(v130 + 19) = 0u;
    *(v130 + 21) = 0u;
    *(v130 + 23) = 0u;
    *(v130 + 25) = 0u;
    v130[27] = v133;
    v130[28] = v132;
    return;
  }

  v107 = *(v82 + 6);
  v417 = v79;
  if (!*(v79 + v107 + 8) || (, v108 = Data.init(base64Encoded:options:)(), v110 = v109, , v110 >> 60 == 15))
  {
    v423 = v83;
    v418 = v85;
    v111 = v415;
    defaultLogger()();
    v112 = Logger.logObject.getter();
    v113 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v112, v113))
    {
      v114 = swift_slowAlloc();
      *v114 = 0;
      _os_log_impl(&_mh_execute_header, v112, v113, "assessment profileInfo is missing, skip assessment", v114, 2u);
    }

    object(v111, countAndFlagsBits);
    (*(v419 + 104))(v426, enum case for DIPError.Code.assessmentProfileInfoMissing(_:), v420);
    sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
    v115 = sub_100007224(&qword_1008341D0, &unk_1006BF8D0);
    v428 = v115;
    v116 = *(*(v115 - 8) + 72);
    v117 = (*(*(v115 - 8) + 80) + 32) & ~*(*(v115 - 8) + 80);
    v118 = swift_allocObject();
    *(v118 + 16) = xmmword_1006BF740;
    v119 = v118 + v117;
    v120 = (v118 + v117 + *(v115 + 48));
    v121 = enum case for DIPError.PropertyKey.inoWorkflowID(_:);
    v122 = type metadata accessor for DIPError.PropertyKey();
    v123 = *(*(v122 - 8) + 104);
    (v123)(v119, v121, v122);
    v124 = v425;
    v125 = *(v425 + 16);
    v126 = *(v425 + 24);
    v120[3] = &type metadata for String;
    v120[4] = &protocol witness table for String;
    *v120 = v125;
    v120[1] = v126;
    v127 = (v119 + v116 + *(v428 + 12));
    v123();
    v128 = *(v124 + 32);
    v129 = *(v124 + 40);
    v105 = v124;
    v127[3] = &type metadata for String;
    v127[4] = &protocol witness table for String;
    *v127 = v128;
    v127[1] = v129;

    sub_10003C9C0(v118);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    type metadata accessor for DIPError();
    sub_10053B9C0(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    v369 = 0x800000010071E6B0;
    v370 = 515;
    v368 = 0xD000000000000070;
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    v106 = v421;
    defaultLogger()();
    DIPRecordError(_:message:log:)();
    sub_10000BD94(v423, v418);
    goto LABEL_16;
  }

  v426 = v108;
  swift_beginAccess();
  sub_10000BBC4(v7 + 216, &v449, &qword_100834EB0, &qword_1006E78F0);
  v161 = *(&v450 + 1);
  sub_10000BE18(&v449, &qword_100834EB0, &qword_1006E78F0);
  if (v161 && *(v7 + 280) >> 60 != 15 && *(v7 + 264) && (swift_beginAccess(), sub_10000BBC4(v7 + 288, &v449, &qword_100834EB0, &qword_1006E78F0), v162 = *(&v450 + 1), sub_10000BE18(&v449, &qword_100834EB0, &qword_1006E78F0), v162) && *(v7 + 352) >> 60 != 15 && *(v7 + 336))
  {
    v163 = 0;
  }

  else
  {

    v370 = v7;
    v371 = &type metadata for () + 8;
    runAsyncAndBlock<A>(timeout:file:function:line:_:)();
    v163 = 0;
  }

  v180 = *(v7 + 280);
  v181 = v412;
  if (v180 >> 60 == 15 || (v182 = *(v7 + 264)) == 0)
  {
    defaultLogger()();
    v191 = Logger.logObject.getter();
    v192 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v191, v192))
    {
      v193 = swift_slowAlloc();
      *v193 = 0;
      _os_log_impl(&_mh_execute_header, v191, v192, "No assessment guid was set; skipping assessment", v193, 2u);

      sub_10000BD94(v83, v85);

      sub_10000BD94(v426, v110);
    }

    else
    {
      sub_10000BD94(v426, v110);
      sub_10000BD94(v83, v85);
    }

    object(v181, countAndFlagsBits);
    v194 = v7 + 216;
    v195 = v7;
    v130 = v422;
    sub_10000BBC4(v194, v422, &qword_100834EB0, &qword_1006E78F0);
    v131 = (v195 + OBJC_IVAR____TtC8coreidvd10DIPODNator_profileId);
    goto LABEL_17;
  }

  v183 = *(v7 + 256);
  v415 = *(v7 + 272);
  v419 = v180;
  sub_1000363B4(v415, v180);
  v420 = v182;

  UUID.init()();
  v184 = UUID.uuidString.getter();
  v185 = v184;
  v187 = v186;
  v188 = *(v7 + 72);
  v377 = v183;
  if (v188)
  {
    v189 = *(v7 + 64);
    if (qword_100832CA8 != -1)
    {
      v366 = v188;
      v367 = *(v7 + 64);
      swift_once();
      v189 = v367;
      v188 = v366;
    }

    v190 = sub_100555FD4(*(v7 + 48), *(v7 + 56), v189, v188);
    v414 = v185;
    v203 = 0;
    v204 = v190 + 2;
    v205 = v190[2];
    v423 = v83;
    v378 = v110;
    if (v205)
    {
      v206 = v190;

      if (v205 > *v204)
      {
        __break(1u);
        goto LABEL_108;
      }

      v207 = &v204[2 * v205];
      v202 = v207[1];
      v414 = *v207;

      v163 = 0;
    }

    else
    {

      v163 = 0;
      v202 = v187;
    }

    v201 = v408;
  }

  else
  {
    v414 = v184;
    v196 = v405;
    defaultLogger()();
    v197 = Logger.logObject.getter();
    v198 = static os_log_type_t.info.getter();
    v199 = os_log_type_enabled(v197, v198);
    v423 = v83;
    v378 = v110;
    if (v199)
    {
      v200 = swift_slowAlloc();
      *v200 = 0;
      _os_log_impl(&_mh_execute_header, v197, v198, "No launch tiers, so no sessions to search for", v200, 2u);
    }

    object(v196, countAndFlagsBits);
    v201 = v408;
    v202 = v187;
  }

  v208 = v411;
  v412 = UUID.uuidString.getter();
  v210 = v209;
  v211 = *(v7 + 336);
  v379 = *(v7 + 328);
  v405 = v211;

  v413 = v202;

  v212 = v407;
  defaultLogger()();
  v213 = v409;
  v214 = v410;
  (*(v410 + 16))(v201, v208, v409);

  v215 = Logger.logObject.getter();
  v216 = static os_log_type_t.debug.getter();

  v374 = v216;
  if (os_log_type_enabled(v215, v216))
  {
    v372 = v215;
    v373 = 0;
    v376 = v210;
    v418 = v85;
    v217 = swift_slowAlloc();
    v218 = swift_slowAlloc();
    v219 = v408;
    *&v449 = v218;
    *v217 = 136315394;
    v220 = UUID.uuidString.getter();
    v222 = v221;
    v223 = *(v214 + 8);
    v223(v219, v213);
    v224 = sub_100141FE4(v220, v222, &v449);

    *(v217 + 4) = v224;
    *(v217 + 12) = 2080;
    v225 = *(v7 + 336);
    v375 = v223;
    if (v225)
    {
      v226 = *(v7 + 328);
      v227 = v225;
    }

    else
    {
      v227 = 0xE500000000000000;
      v226 = 0x3E6C696E3CLL;
    }

    v228 = v414;
    v230 = v407;
    v231 = v374;

    v232 = sub_100141FE4(v226, v227, &v449);

    *(v217 + 14) = v232;
    v233 = v372;
    _os_log_impl(&_mh_execute_header, v372, v231, "using tsid %s ts session %%@ tguid %s", v217, 0x16u);
    swift_arrayDestroy();

    object(v230, countAndFlagsBits);
    v7 = v425;
    v85 = v418;
    v163 = v373;
    v229 = v376;
  }

  else
  {

    v375 = *(v214 + 8);
    v375(v408, v213);
    object(v212, countAndFlagsBits);
    v228 = v414;
    v229 = v210;
  }

  v234 = v413;
  type metadata accessor for JSONEncoder();
  swift_allocObject();
  JSONEncoder.init()();
  v235 = v412;
  *&v449 = v412;
  *(&v449 + 1) = v229;
  *&v450 = v228;
  *(&v450 + 1) = v234;
  *&v451[0] = v379;
  *(&v451[0] + 1) = v405;
  sub_10053B49C();
  v236 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v238 = v423;
  if (v163)
  {

    sub_10000BD94(v415, v419);

    sub_10000BD94(v426, v378);

    sub_10000BD94(v238, v85);
    v375(v411, v409);

    v250 = object;
    v251 = v416;
LABEL_29:
    defaultLogger()();
    swift_errorRetain();
    v164 = Logger.logObject.getter();
    v165 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v164, v165))
    {
      v166 = v163;
      v167 = swift_slowAlloc();
      v168 = swift_slowAlloc();
      *&v449 = v168;
      *v167 = 136446210;
      *&v440 = v166;
      swift_errorRetain();
      sub_100007224(&qword_100833B90, &qword_1006D95C0);
      v169 = String.init<A>(reflecting:)();
      v171 = sub_100141FE4(v169, v170, &v449);
      v7 = v425;

      *(v167 + 4) = v171;
      _os_log_impl(&_mh_execute_header, v164, v165, "ignoring failed to generate assessment data. error %{public}s", v167, 0xCu);
      sub_10000BB78(v168);

      v163 = v166;
    }

    v172 = countAndFlagsBits;
    v250(v251, countAndFlagsBits);
    v173 = v421;
    defaultLogger()();
    DIPRecordError(_:message:log:)();
    v250(v173, v172);
    sub_10051EB94(v163, 2, &v449);

    swift_beginAccess();
    v174 = v422;
    sub_10000BBC4(v7 + 216, v422, &qword_100834EB0, &qword_1006E78F0);
    v176 = *(v7 + OBJC_IVAR____TtC8coreidvd10DIPODNator_profileId);
    v175 = *(v7 + OBJC_IVAR____TtC8coreidvd10DIPODNator_profileId + 8);
    v177 = *(type metadata accessor for ODNAssessmentResult(0) + 44);
    v178 = type metadata accessor for AssessmentAdditionalInfo(0);
    (*(*(v178 - 8) + 56))(v174 + v177, 1, 1, v178);
    v179 = v450;
    *(v174 + 11) = v449;
    *(v174 + 9) = 0u;
    *(v174 + 7) = 0u;
    *(v174 + 5) = 0u;
    *(v174 + 13) = v179;
    *(v174 + 15) = v451[0];
    *(v174 + 129) = *(v451 + 9);
    *(v174 + 19) = 0u;
    *(v174 + 21) = 0u;
    *(v174 + 23) = 0u;
    *(v174 + 25) = 0u;
    v174[27] = v176;
    v174[28] = v175;
    goto LABEL_32;
  }

  v376 = v229;
  v239 = v236;
  v240 = v237;

  sub_100007224(&qword_10083C068, &qword_1006DEC10);
  v241 = swift_allocObject();
  *(v241 + 16) = xmmword_1006BF520;
  *(v241 + 32) = v239;
  *(v241 + 40) = v240;
  v407 = v239;
  v408 = v240;
  sub_10000B8B8(v239, v240);
  if (qword_100832CC0 != -1)
  {
    swift_once();
  }

  v418 = v85;
  v374 = MKBGetDeviceLockState();
  v243 = v402;
  v242 = v403;
  v244 = v417;
  v245 = (*(v402 + 48))(v417, 1, v403);
  v246 = 0;
  v247 = 0;
  if (!v245)
  {
    v248 = v389;
    (*(v243 + 16))(v389, v244, v242);
    JWSSignedJSON.payload.getter();
    (*(v243 + 8))(v248, v242);
    v451[1] = v443;
    v452 = v444;
    v453[0] = v445[0];
    *(v453 + 13) = *(v445 + 13);
    v449 = v440;
    v450 = v441;
    v451[0] = v442;
    sub_10000BBC4(&v449, &v431, &qword_100835658, &qword_1006C1A50);
    sub_10009E858(&v449);
    if (*(&v449 + 1))
    {
      v247 = *(&v451[1] + 1);
      v249 = *&v451[1];

      sub_10000BE18(&v449, &qword_100835658, &qword_1006C1A50);
      v246 = v249;
    }

    else
    {
      v246 = 0;
      v247 = 0;
    }
  }

  v85 = v404;
  sub_1005259FC(v404, v406, v246, v247, v235, v376, v377, v420);
  v373 = 0;

  v252 = v390;
  sub_10000BBC4(v85, v390, &qword_100835180, &unk_1006C0CE0);
  v254 = v397;
  v253 = v398;
  v255 = *(v397 + 48);
  v375 = (v397 + 48);
  v372 = v255;
  if ((v255)(v252, 1, v398) == 1)
  {
    sub_10000BE18(v252, &qword_100835180, &unk_1006C0CE0);
    v203 = v406;
  }

  else
  {
    EncryptedDataContainer.data.getter();
    v257 = v256;
    (*(v254 + 8))(v252, v253);
    v203 = v406;
    if (v257)
    {
      v258 = v383;
      static String.Encoding.utf8.getter();
      v259 = String.data(using:allowLossyConversion:)();
      v261 = v260;

      v262 = v386 + 1;
      isa = v386[1].isa;
      v264 = v258;
      v265 = v382;
      isa(v264, v382);
      if (v261 >> 60 != 15)
      {
        v403 = v259;
        v386 = v262;
        v266 = v380;
        sub_10000BBC4(v203, v380, &qword_100835248, &unk_1006E7940);
        v267 = sub_100007224(&qword_1008352C8, &qword_1006C0D50);
        v268 = *(v267 - 8);
        if ((*(v268 + 48))(v266, 1, v267) == 1)
        {
          sub_10000BD94(v403, v261);
          sub_10000BE18(v266, &qword_100835248, &unk_1006E7940);
          v7 = v425;
        }

        else
        {
          v269 = v261;
          v270 = v241;
          EncryptedDataContainer.data.getter();
          v272 = v271;
          (*(v268 + 8))(v266, v267);
          if (v272)
          {
            v273 = v383;
            static String.Encoding.utf8.getter();
            v274 = String.data(using:allowLossyConversion:)();
            v276 = v275;

            isa(v273, v265);
            if (v276 >> 60 != 15)
            {
              sub_10000B8B8(v403, v269);
              isEscapingClosureAtFileLocation = *(v270 + 2);
              v277 = *(v270 + 3);
              v279 = v277 >> 1;
              v280 = isEscapingClosureAtFileLocation + 1;
              if (v277 >> 1 > isEscapingClosureAtFileLocation)
              {
                goto LABEL_75;
              }

              goto LABEL_111;
            }
          }

          sub_10000BD94(v403, v269);
          v7 = v425;
          v203 = v406;
          v85 = v404;
          v241 = v270;
        }
      }
    }
  }

  while (1)
  {
    v386 = v241;
    v206 = v374 - 1;
    if (qword_100832C98 != -1)
    {
LABEL_108:
      swift_once();
    }

    v283 = v206 < 2;
    v284 = off_1008475C8;
    os_unfair_lock_lock(off_1008475C8 + 6);
    v403 = *(v284 + 2);

    os_unfair_lock_unlock(v284 + 6);
    v285 = *(v7 + 40);
    v402 = *(v7 + 32);
    LODWORD(v383) = *(v7 + 208);
    v286 = *(v7 + 368);
    v389 = v285;
    v390 = v286;
    sub_10000BBC4(v85, v400, &qword_100835180, &unk_1006C0CE0);
    sub_10000BBC4(v203, v401, &qword_100835248, &unk_1006E7940);
    v287 = (*(v391 + 80) + 64) & ~*(v391 + 80);
    v288 = (v392 + *(v393 + 80) + v287) & ~*(v393 + 80);
    v289 = v288 + v394;
    v290 = (v288 + v394) & 0xFFFFFFFFFFFFFFF8;
    v291 = swift_allocObject();
    *(v291 + 16) = v7;
    LODWORD(v394) = v283;
    *(v291 + 24) = v283;
    v292 = v413;
    v293 = v414;
    *(v291 + 32) = v424;
    *(v291 + 40) = v293;
    v270 = v399;
    *(v291 + 48) = v292;
    *(v291 + 56) = v270;
    sub_1000B1FC8(v400, v291 + v287, &qword_100835180, &unk_1006C0CE0);
    sub_1000B1FC8(v401, v291 + v288, &qword_100835248, &unk_1006E7940);
    *(v291 + v289) = v395 & 1;
    v294 = (v291 + v290);
    v295 = v376;
    v294[1] = v412;
    v294[2] = v295;
    v294[3] = v293;
    v294[4] = v292;
    v296 = v405;
    v294[5] = v379;
    v294[6] = v296;
    v297 = (v291 + ((v290 + 63) & 0xFFFFFFFFFFFFFFF8));
    v298 = v396;
    *(v297 + 41) = *(v396 + 41);
    v299 = v298[2];
    v297[1] = v298[1];
    v297[2] = v299;
    *v297 = *v298;
    v460 = xmmword_1006BF650;
    v461 = xmmword_1006DE2A0;
    v462 = xmmword_1006BF650;
    LODWORD(v463) = 0;
    *(&v463 + 1) = 0xBFF0000000000000;
    v300 = v403;
    v414 = *(v403 + 32);
    v280 = swift_allocObject();
    v301 = v402;
    *(v280 + 16) = v300;
    *(v280 + 24) = v301;
    v269 = v389;
    *(v280 + 32) = v389;
    v302 = swift_allocObject();
    *(v302 + 16) = sub_10053CD64;
    *(v302 + 24) = v280;
    *&v442 = sub_10026CBB8;
    *(&v442 + 1) = v302;
    *&v440 = _NSConcreteStackBlock;
    *(&v440 + 1) = 1107296256;
    *&v441 = sub_10057E264;
    *(&v441 + 1) = &unk_100816380;
    v303 = _Block_copy(&v440);
    v276 = *(&v442 + 1);

    v304 = v378;
    sub_1000363B4(v426, v378);
    v413 = v390;

    sub_10000BBC4(v298, &v449, &qword_100835768, &qword_1006DB770);
    v274 = v414;

    dispatch_sync(v274, v303);

    _Block_release(v303);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
      goto LABEL_110;
    }

    __chkstk_darwin(v305);
    v306 = v402;
    *(&v372 - 18) = v307;
    *(&v372 - 17) = v306;
    *(&v372 - 16) = v269;
    LOBYTE((&v372)[-15]) = v383;
    v308 = v418;
    v309 = v419;
    *(&v372 - 14) = v415;
    *(&v372 - 13) = v309;
    v310 = v423;
    *(&v372 - 12) = v423;
    *(&v372 - 11) = v308;
    v311 = v426;
    *(&v372 - 10) = v426;
    *(&v372 - 9) = v304;
    v312 = v386;
    *(&v372 - 8) = v399;
    *(&v372 - 7) = v312;
    *(&v372 - 6) = v390;
    LOBYTE((&v372)[-5]) = v388 & 1;
    v368 = sub_10053C600;
    v369 = v291;
    v370 = &v460;
    v313 = v373;
    OS_dispatch_queue.sync<A>(execute:)();
    if (v313)
    {
      v314 = v313;

      v315 = [objc_opt_self() standardUserDefaults];
      v316._countAndFlagsBits = static DaemonInternalDefaultsKeys.enableTapToRadarForNotableErrors.getter();
      v317 = NSUserDefaults.internalBool(forKey:)(v316);

      v318 = v409;
      if (v317)
      {
        v319 = v381;
        defaultLogger()();
        v320 = Logger.logObject.getter();
        v321 = static os_log_type_t.info.getter();
        if (os_log_type_enabled(v320, v321))
        {
          v322 = swift_slowAlloc();
          *v322 = 0;
          _os_log_impl(&_mh_execute_header, v320, v321, "Triggering tap-to-radar for ODN mypg due to user defaults setting", v322, 2u);
        }

        object(v319, countAndFlagsBits);
        if (static DIPFeatures.sharedInstance.getter())
        {
          ObjectType = swift_getObjectType();
          swift_errorRetain();
          v370 = 0;
          v371 = ObjectType;
          DIPFeaturesProtocol.triggerTapToRadar(forContext:title:error:attachmentFilePaths:deleteOnAttach:description:)();
          swift_unknownObjectRelease();
        }
      }

      v163 = v314;
      swift_willThrow();
      sub_10000BD94(v415, v419);
      sub_10000BD94(v423, v418);

      v324 = v426;
      sub_10000BD94(v426, v304);
      sub_10000BD94(v324, v304);
      sub_10000B90C(v407, v408);
      sub_10000BE18(v406, &qword_100835248, &unk_1006E7940);
      sub_10000BE18(v404, &qword_100835180, &unk_1006C0CE0);
      (*(v410 + 8))(v411, v318);
      v449 = v460;
      v450 = v461;
      v451[0] = v462;
      v451[1] = v463;
      sub_10053B540(&v449);

      v7 = v425;
      v251 = v416;
      v250 = object;
      goto LABEL_29;
    }

    v423 = v310;
    v325 = v402;
    v427 = &v372;

    sub_10000BD94(v311, v304);

    v456[0] = v460;
    v456[1] = v461;
    v457 = v462;
    v458 = v463;
    v459[0] = v460;
    v459[1] = v461;
    v459[2] = v462;
    v459[3] = v463;
    sub_10053B594(v456, &v449);
    sub_10053B540(v459);
    v326 = Data.base64EncodedString(options:)(0);
    object = v326._object;
    countAndFlagsBits = v326._countAndFlagsBits;
    v327 = 0;
    v328 = 0;
    v329 = *(&v457 + 1);
    if (*(&v457 + 1) >> 60 != 15)
    {
      v330 = v457;
      sub_10000B8B8(v457, *(&v457 + 1));
      v331 = Data.base64EncodedString(options:)(0);
      v327 = v331._countAndFlagsBits;
      v328 = v331._object;
      sub_10000BD94(v330, v329);
    }

    v416 = v328;
    v421 = v327;
    isEscapingClosureAtFileLocation = v425;
    sub_10000BBC4(v425 + 216, v448, &qword_100834EB0, &qword_1006E78F0);
    v274 = v410;
    v269 = v404;
    v270 = v384;
    v276 = v385;
    v280 = v325;
    if (v448[3])
    {
      sub_100007224(&qword_100834EB8, &qword_1006C06F0);
      if (swift_dynamicCast())
      {
        v438 = v446;
        v439 = v447;
        v433 = v442;
        v434 = v443;
        v436 = v445[0];
        v437 = v445[1];
        v435 = v444;
        v431 = v440;
        v432 = v441;
        nullsub_7();
        v280 = v325;
        v453[1] = v437;
        v454 = v438;
        v455 = v439;
        v451[0] = v433;
        v451[1] = v434;
        v452 = v435;
        v453[0] = v436;
        v449 = v431;
        v450 = v432;
        goto LABEL_94;
      }
    }

    else
    {
      sub_10000BE18(v448, &qword_100834EB0, &qword_1006E78F0);
    }

    sub_10053C7B8(&v449);
LABEL_94:
    v378 = v304;
    v277 = v458;
    v332 = (v458 + 1);
    if (v458 != -1)
    {
      break;
    }

LABEL_110:
    __break(1u);
LABEL_111:
    v270 = sub_1003C55E4((v277 > 1), v280, 1, v270);
    v277 = *(v270 + 3);
    v279 = v277 >> 1;
LABEL_75:
    *(v270 + 2) = v280;
    v281 = &v270[16 * isEscapingClosureAtFileLocation];
    *(v281 + 4) = v403;
    *(v281 + 5) = v269;
    if (v279 < (isEscapingClosureAtFileLocation + 2))
    {
      v270 = sub_1003C55E4((v277 > 1), isEscapingClosureAtFileLocation + 2, 1, v270);
    }

    sub_10000BD94(v403, v269);
    *(v270 + 2) = isEscapingClosureAtFileLocation + 2;
    v241 = v270;
    v282 = &v270[16 * v280];
    *(v282 + 4) = v274;
    *(v282 + 5) = v276;
    v7 = v425;
    v203 = v406;
    v85 = v404;
  }

  sub_10000BBC4(v269, v270, &qword_100835180, &unk_1006C0CE0);
  v333 = v398;
  if ((v372)(v270, 1, v398) == 1)
  {
    sub_10000BE18(v270, &qword_100835180, &unk_1006C0CE0);
    v334 = v423;
    goto LABEL_100;
  }

  v414 = v332;
  v335 = v397;
  v336 = *(v397 + 32);
  v336(v276, v270, v333);
  v337 = v280;
  v338 = v389;
  if (String.hasPrefix(_:)(*(isEscapingClosureAtFileLocation + 384)))
  {
    v339 = type metadata accessor for AssessmentAdditionalInfo(0);
    v340 = v276;
    v341 = *(v339 + 28);
    v342 = v387;
    v336(v387 + v341, v340, v333);
    (*(v335 + 56))(v342 + v341, 0, 1, v333);
    *v342 = v337;
    *(v342 + 8) = v338;
    *(v342 + 16) = v394;
    *(v342 + 24) = 0;
    *(v342 + 32) = 0;
    v343 = v342 + *(v339 + 32);
    *v343 = v414;
    *(v343 + 8) = 0;
    (*(*(v339 - 8) + 56))(v342, 0, 1, v339);

    v334 = v423;
    v344 = v378;
    v345 = v409;
    v274 = v410;
    v269 = v404;
  }

  else
  {
    (*(v335 + 8))(v276, v333);
    v334 = v423;
    v274 = v410;
    v269 = v404;
LABEL_100:
    v346 = type metadata accessor for AssessmentAdditionalInfo(0);
    (*(*(v346 - 8) + 56))(v387, 1, 1, v346);
    v344 = v378;
    v345 = v409;
  }

  v445[1] = v453[1];
  v446 = v454;
  v447 = v455;
  v442 = v451[0];
  v443 = v451[1];
  v444 = v452;
  v445[0] = v453[0];
  v440 = v449;
  v441 = v450;
  if (sub_10021C1F8(&v440) == 1)
  {
    sub_10000BD94(v415, v419);
    sub_10000BD94(v334, v418);
    sub_10053B540(v456);
    sub_10000BD94(v426, v344);
    sub_10000B90C(v407, v408);
    sub_10000BE18(v406, &qword_100835248, &unk_1006E7940);
    sub_10000BE18(v269, &qword_100835180, &unk_1006C0CE0);
    (*(v274 + 1))(v411, v345);
    v425 = 0;
    v347 = 0;
    v348 = 0;
    v349 = 0;
    v350 = 0;
    v351 = 0;
    v352 = 0;
    v353 = 0;
  }

  else
  {
    v354 = v440;
    sub_10000BD94(v415, v419);
    sub_10000BD94(v334, v418);
    v355 = 49;
    if (v354)
    {
      v355 = 50;
    }

    v425 = v355;
    sub_10053B540(v456);
    sub_10000BD94(v426, v344);
    sub_10000B90C(v407, v408);
    sub_10000BE18(v406, &qword_100835248, &unk_1006E7940);
    sub_10000BE18(v269, &qword_100835180, &unk_1006C0CE0);
    (*(v274 + 1))(v411, v345);
    v348 = *(&v444 + 1);
    v350 = *(&v445[0] + 1);
    v349 = *&v445[0];
    v352 = *(&v445[1] + 1);
    v351 = *&v445[1];
    v353 = v446;

    sub_10000BE18(&v449, &qword_1008475B8, &qword_1006E79F0);
    v347 = 0xE100000000000000;
  }

  v356 = v417;
  swift_beginAccess();
  v357 = &v356[*(v428 + 7)];
  v358 = *v357;
  v359 = *(v357 + 1);
  v360 = v422;
  v361 = v420;
  *v422 = v377;
  v360[1] = v361;
  v360[3] = &type metadata for String;
  v360[4] = &off_1007FDA60;
  v362 = v376;
  v360[5] = v412;
  v360[6] = v362;
  v363 = object;
  v360[7] = countAndFlagsBits;
  v360[8] = v363;
  v364 = v416;
  v360[9] = v421;
  v360[10] = v364;
  *(v360 + 11) = 0u;
  *(v360 + 13) = 0u;
  v360[16] = 0;
  v360[17] = 0;
  v360[15] = 1;
  *(v360 + 144) = 0;
  v360[19] = v425;
  v360[20] = v347;
  v360[21] = v348;
  v360[22] = v349;
  v360[23] = v350;
  v360[24] = v351;
  v360[25] = v352;
  v360[26] = v353;
  v360[27] = v358;
  v360[28] = v359;
  v365 = type metadata accessor for ODNAssessmentResult(0);
  sub_1000B1FC8(v387, v360 + *(v365 + 44), &qword_100836328, &unk_1006C51B0);
}

uint64_t sub_100525798(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return _swift_task_switch(sub_1005257B8, 0, 0);
}

uint64_t sub_1005257B8()
{
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v1[1] = sub_10052584C;

  return sub_100545B38();
}

uint64_t sub_10052584C(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  *(v3 + 40) = a1;
  *(v3 + 48) = a2;

  return _swift_task_switch(sub_10052594C, 0, 0);
}

uint64_t sub_10052596C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100027B9C;

  return sub_100527BE0();
}

void sub_1005259FC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v59 = a7;
  v60 = a8;
  v61 = a5;
  v78 = a3;
  v67 = a1;
  v68 = a2;
  v10 = type metadata accessor for Logger();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v53 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for DIPError.Code();
  v64 = *(v14 - 8);
  __chkstk_darwin(v14);
  v16 = &v53 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_100007224(&qword_1008352C8, &qword_1006C0D50);
  v65 = *(v17 - 8);
  v66 = v17;
  __chkstk_darwin(v17);
  v58 = &v53 - v18;
  v19 = type metadata accessor for EncryptionParamsAlgorithmIdentifier();
  v20 = *(v19 - 8);
  v62 = v19;
  v63 = v20;
  v21 = __chkstk_darwin(v19);
  v57 = &v53 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v24 = &v53 - v23;
  v25 = sub_100007224(&unk_100835208, &unk_1006C0D10);
  v69 = *(v25 - 8);
  v70 = v25;
  __chkstk_darwin(v25);
  v27 = &v53 - v26;
  if (!a4)
  {
    defaultLogger()();
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&_mh_execute_header, v31, v32, "No tsidEnc cert provided, skipping encryption and sending nil", v33, 2u);
    }

    (*(v11 + 8))(v13, v10);
    v34 = 1;
    (*(v69 + 56))(v67, 1, 1, v70);
    v35 = v68;
    v37 = v65;
    v36 = v66;
    goto LABEL_7;
  }

  v56 = v27;

  v28._countAndFlagsBits = v78;
  v28._object = a4;
  v29 = createCertificateFromString(_:)(v28);
  if (v30)
  {

    return;
  }

  v38 = v29;
  v39 = copyPublicKeyDataFromCertificate(_:)();
  if (v40 >> 60 != 15)
  {
    v41 = v39;
    v42 = v40;
    v43 = type metadata accessor for DIPECIESSessionECV3SH();
    swift_allocObject();
    v44 = DIPECIESSessionECV3SH.init(_:)();
    v45 = *(v63 + 104);
    v55 = enum case for EncryptionParamsAlgorithmIdentifier.EC_v3_SH(_:);
    v63 += 104;
    v54 = v45;
    v45(v24);
    v76 = v43;
    v77 = &protocol witness table for DIPECIESSessionECV3;
    v75 = v44;
    type metadata accessor for __DataStorage();
    swift_allocObject();
    v78 = v44;

    v64 = __DataStorage.init(length:)();
    v71 = 49;
    v72 = 0xE100000000000000;
    v73 = v61;
    v74 = a6;
    sub_1000363B4(v41, v42);
    sub_10053B6DC();
    sub_10053B730();
    v38;
    EncryptedDataContainer.init(alg:encryptor:remoteCertificate:senderSigningKey:recipientSigningKey:data:)();
    v54(v57, v55, v62);
    v76 = v43;
    v77 = &protocol witness table for DIPECIESSessionECV3;
    v75 = v78;
    swift_allocObject();

    v46 = v60;

    __DataStorage.init(length:)();
    v71 = 49;
    v72 = 0xE100000000000000;
    v73 = v59;
    v74 = v46;
    sub_10053B784();
    sub_10053B7D8();
    v47 = v58;
    EncryptedDataContainer.init(alg:encryptor:remoteCertificate:senderSigningKey:recipientSigningKey:data:)();

    v49 = v69;
    v48 = v70;
    v50 = v67;
    (*(v69 + 32))(v67, v56, v70);
    (*(v49 + 56))(v50, 0, 1, v48);
    v37 = v65;
    v51 = v66;
    v52 = v68;
    (*(v65 + 32))(v68, v47, v66);
    v36 = v51;
    v35 = v52;
    v34 = 0;
LABEL_7:
    (*(v37 + 56))(v35, v34, 1, v36);
    return;
  }

  (*(v64 + 104))(v16, enum case for DIPError.Code.certificateDecodingFailed(_:), v14);
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_10053B9C0(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();
}

void sub_10052625C(_OWORD *a1, int a2, uint64_t a3, uint64_t a4, int a5, void (*a6)(char *, uint64_t), uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t *a13, _OWORD *a14)
{
  v184 = a7;
  v185 = a8;
  countAndFlagsBits = a6;
  v219 = a4;
  v209 = a5;
  v16 = *a13;
  v196 = a13[1];
  v197 = v16;
  v195 = a13[2];
  v17 = a13[3];
  v193 = a14;
  v194 = v17;
  v18 = a13[4];
  v198 = a13[5];
  v199 = v18;
  v19 = a14[1];
  v243 = *a14;
  v244 = v19;
  v245[0] = a14[2];
  *(v245 + 9) = *(a14 + 41);
  v20 = *a1;
  v21 = a1[1];
  v22 = a1[2];
  v23 = a1[3];
  v203 = a1;
  v248 = v22;
  v249 = v23;
  v246 = v20;
  v247 = v21;
  v24 = sub_100007224(&qword_100847540, &qword_1006E7938);
  __chkstk_darwin(v24 - 8);
  v183 = &v180 - v25;
  v26 = type metadata accessor for DIPError.Code();
  v186 = *(v26 - 8);
  v187 = v26;
  __chkstk_darwin(v26);
  v188 = &v180 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = type metadata accessor for DIPError();
  v190 = *(v28 - 8);
  v191 = v28;
  __chkstk_darwin(v28);
  v189 = &v180 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_100007224(&unk_100845860, &unk_1006BF9D0);
  __chkstk_darwin(v30 - 8);
  v202 = &v180 - v31;
  v32 = sub_100007224(&unk_10084A170, &unk_1006E7900);
  __chkstk_darwin(v32 - 8);
  v34 = &v180 - v33;
  v35 = sub_100007224(&unk_10084A160, &unk_1006E7978);
  v36 = __chkstk_darwin(v35 - 8);
  v192 = &v180 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = __chkstk_darwin(v36);
  v204 = &v180 - v39;
  __chkstk_darwin(v38);
  v216 = &v180 - v40;
  v41 = sub_100007224(&qword_100835248, &unk_1006E7940);
  v42 = __chkstk_darwin(v41 - 8);
  v211 = &v180 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v42);
  v214 = &v180 - v44;
  v45 = sub_100007224(&qword_100835180, &unk_1006C0CE0);
  v181 = *(v45 - 8);
  v182 = v45;
  v46 = __chkstk_darwin(v45);
  v215 = &v180 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v46);
  v213 = &v180 - v48;
  v49 = type metadata accessor for Logger();
  v220 = *(v49 - 8);
  v50 = __chkstk_darwin(v49);
  v206 = &v180 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = __chkstk_darwin(v50);
  v205 = &v180 - v53;
  v54 = __chkstk_darwin(v52);
  v201 = &v180 - v55;
  v56 = __chkstk_darwin(v54);
  v210 = &v180 - v57;
  v58 = __chkstk_darwin(v56);
  v60 = &v180 - v59;
  v61 = __chkstk_darwin(v58);
  v63 = &v180 - v62;
  v64 = __chkstk_darwin(v61);
  v66 = &v180 - v65;
  v67 = __chkstk_darwin(v64);
  v69 = &v180 - v68;
  __chkstk_darwin(v67);
  v71 = &v180 - v70;
  v212 = type metadata accessor for AugmentedProfile(0);
  v207 = swift_projectBox();
  LODWORD(v208) = a2;
  v217 = v49;
  if ((a2 & 1) == 0)
  {
    defaultLogger()();
    v72 = Logger.logObject.getter();
    v76 = static os_log_type_t.info.getter();
    if (!os_log_type_enabled(v72, v76))
    {
      goto LABEL_8;
    }

    v74 = a3;
    v77 = swift_slowAlloc();
    *v77 = 0;
    _os_log_impl(&_mh_execute_header, v72, v76, "odn callback called (completed late)", v77, 2u);
    goto LABEL_6;
  }

  defaultLogger()();
  v72 = Logger.logObject.getter();
  v73 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v72, v73))
  {
    v74 = a3;
    v75 = swift_slowAlloc();
    *v75 = 0;
    _os_log_impl(&_mh_execute_header, v72, v73, "odn callback called (completed in time)", v75, 2u);
    v69 = v71;
LABEL_6:

    a3 = v74;
    v49 = v217;
    goto LABEL_8;
  }

  v69 = v71;
LABEL_8:

  v78 = *(v220 + 8);
  v220 += 8;
  countAndFlagsBits = v78;
  v78(v69, v49);
  if (a3)
  {
    swift_errorRetain();
    sub_10051EB94(a3, 2, v221);
    v200 = a3;
    if (v208)
    {
      defaultLogger()();
      v79 = Logger.logObject.getter();
      v80 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v79, v80))
      {
        v81 = swift_slowAlloc();
        *v81 = 0;
        _os_log_impl(&_mh_execute_header, v79, v80, "odn callback received an error but completed in time; not logging the error separately", v81, 2u);
      }
    }

    else
    {
      defaultLogger()();
      DIPRecordError(_:message:log:)();
      v60 = v63;
    }

    v87 = v212;
    countAndFlagsBits(v60, v49);
    v88 = sub_100007224(&unk_100835208, &unk_1006C0D10);
    v89 = *(*(v88 - 8) + 56);
    v89(v213, 1, 1, v88);
    v90 = sub_100007224(&qword_1008352C8, &qword_1006C0D50);
    v91 = *(v90 - 8);
    v92 = *(v91 + 56);
    v93 = v91 + 56;
    v92(v214, 1, 1, v90);
    v94 = v207;
    swift_beginAccess();
    v95 = v94;
    v96 = v216;
    sub_10053BFD8(v95, v216);
    v208 = *(v87 - 8);
    (*(v208 + 56))(v96, 0, 1, v87);
    defaultLogger()();
    v97 = Logger.logObject.getter();
    v98 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v97, v98))
    {
      v99 = swift_slowAlloc();
      v207 = v93;
      *v99 = 0;
      _os_log_impl(&_mh_execute_header, v97, v98, "Preparing ODN web requests", v99, 2u);
    }

    v209 &= 1u;

    countAndFlagsBits(v210, v217);
    v100 = v215;
    v89(v215, 1, 1, v88);
    v101 = v211;
    v92(v211, 1, 1, v90);
    v102 = v219;
    v103 = *(v219 + 40);
    v104 = *(v219 + 384);
    v210 = *(v219 + 32);
    if (String.hasPrefix(_:)(v104))
    {
      sub_10000BE18(v101, &qword_100835248, &unk_1006E7940);
      sub_10000BE18(v100, &qword_100835180, &unk_1006C0CE0);
      sub_10000BBC4(v213, v100, &qword_100835180, &unk_1006C0CE0);
      sub_10000BBC4(v214, v101, &qword_100835248, &unk_1006E7940);
    }

    else
    {
      v105 = v201;
      defaultLogger()();
      v106 = Logger.logObject.getter();
      v107 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v106, v107))
      {
        v108 = swift_slowAlloc();
        *v108 = 0;
        _os_log_impl(&_mh_execute_header, v106, v107, "Label Ingestion Not Allowed, skipping EncryptedContainers", v108, 2u);
      }

      countAndFlagsBits(v105, v217);
    }

    v109 = v204;
    swift_beginAccess();
    sub_10000BBC4(v102 + 216, &v226, &qword_100834EB0, &qword_1006E78F0);
    sub_10004CF8C(&v226, &v234);
    sub_10000BE18(&v226, &qword_100834EB0, &qword_1006E78F0);
    v110 = (*(v102 + 160) + OBJC_IVAR____TtC8coreidvd13DIPWebService_conversation);
    v112 = *v110;
    v111 = v110[1];
    sub_10000BBC4(v216, v109, &unk_10084A160, &unk_1006E7978);
    v113 = v212;
    if ((*(v208 + 48))(v109, 1, v212) == 1)
    {

      sub_10000BE18(v109, &unk_10084A160, &unk_1006E7978);
      v114 = 0xE700000000000000;
      v115 = 0x4E574F4E4B4E55;
    }

    else
    {
      v116 = (v109 + *(v113 + 28));
      v115 = *v116;
      v114 = v116[1];

      sub_100537B90(v109, type metadata accessor for AugmentedProfile);
    }

    v117 = v215;
    v118 = type metadata accessor for ORDRequest(0);
    sub_10000BBC4(v117, &v34[v118[11]], &qword_100835180, &unk_1006C0CE0);
    *v34 = v112;
    *(v34 + 1) = v111;
    *(v34 + 2) = 0;
    *(v34 + 3) = 0;
    v119 = v235;
    *(v34 + 2) = v234;
    *(v34 + 3) = v119;
    v120 = v237;
    *(v34 + 4) = v236;
    *(v34 + 5) = v120;
    *(v34 + 12) = v210;
    *(v34 + 13) = v103;
    *(v34 + 14) = v115;
    *(v34 + 15) = v114;
    v121 = v221[0];
    v122 = v221[1];
    v123 = v222[0];
    *(v34 + 169) = *(v222 + 9);
    *(v34 + 9) = v122;
    *(v34 + 10) = v123;
    *(v34 + 8) = v121;
    v34[185] = v209;
    v124 = &v34[v118[12]];
    *v124 = 0;
    v124[8] = 1;
    v125 = &v34[v118[13]];
    *v125 = 0;
    v125[8] = 1;
    (*(*(v118 - 1) + 56))(v34, 0, 1, v118);
    v126 = OBJC_IVAR____TtC8coreidvd10DIPODNator_ordRequest;
    v127 = v219;
    swift_beginAccess();
    sub_1000B2764(v34, v127 + v126, &unk_10084A170, &unk_1006E7900);
    swift_endAccess();
    type metadata accessor for JSONEncoder();
    swift_allocObject();
    JSONEncoder.init()();
    v227 = 0u;
    v228[0] = 0u;
    v226 = 0u;
    sub_100007224(&qword_1008475A8, &unk_1006E79C0);
    sub_10053C11C();
    v128 = dispatch thunk of JSONEncoder.encode<A>(_:)();
    v130 = v129;

    sub_10000B8B8(v128, v130);
    Data.base64EncodedString(options:)(0);
    sub_10000B90C(v128, v130);

    v131 = v217;
    v133 = v205;
    v132 = v206;
    defaultLogger()();
    v134 = Logger.logObject.getter();
    v135 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v134, v135))
    {
      v136 = swift_slowAlloc();
      *v136 = 0;
      _os_log_impl(&_mh_execute_header, v134, v135, "Skipping OTD web request because required properties aren't available", v136, 2u);
    }

    countAndFlagsBits(v133, v131);
    if (*(v127 + 402) == 1)
    {
      defaultLogger()();
      v137 = Logger.logObject.getter();
      v138 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v137, v138))
      {
        v139 = swift_slowAlloc();
        *v139 = 0;
        _os_log_impl(&_mh_execute_header, v137, v138, "Configured to not immediately send to Assessment Server", v139, 2u);
      }

      sub_10000BD94(v128, v130);
      countAndFlagsBits(v132, v131);
    }

    else
    {
      if (*(v127 + 104))
      {
        v140 = *(v127 + 96);
        v141 = *(v127 + 104);
      }

      else
      {
        v140 = *(v127 + 112);
        v141 = *(v127 + 120);
      }

      v168 = type metadata accessor for TaskPriority();
      v169 = v202;
      (*(*(v168 - 8) + 56))(v202, 1, 1, v168);
      v170 = swift_allocObject();
      v170[2] = 0;
      v170[3] = 0;
      v170[4] = v127;
      v170[5] = v140;
      v170[6] = v141;

      sub_1003E653C(0, 0, v169, &unk_1006E79F8, v170);

      sub_10000BD94(v128, v130);
    }

    sub_10000BE18(v211, &qword_100835248, &unk_1006E7940);
    sub_10000BE18(v215, &qword_100835180, &unk_1006C0CE0);
    sub_10000BE18(v216, &unk_10084A160, &unk_1006E7978);
    sub_10000BE18(v214, &qword_100835248, &unk_1006E7940);
    sub_10000BE18(v213, &qword_100835180, &unk_1006C0CE0);
    v171 = v127;
  }

  else
  {
    defaultLogger()();
    v82 = Logger.logObject.getter();
    v83 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v82, v83))
    {
      v84 = swift_slowAlloc();
      *v84 = 0;
      _os_log_impl(&_mh_execute_header, v82, v83, "assessments retrieved", v84, 2u);
    }

    countAndFlagsBits(v66, v49);
    if (v208)
    {
      v231 = 0u;
      v232 = 0u;
      *&v233[1] = 0;
      v233[0] = 1uLL;
      BYTE8(v233[1]) = 0;
      v85 = v203;
      v86 = v219;
    }

    else
    {
      sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
      v142 = sub_100007224(&qword_1008341D0, &unk_1006BF8D0);
      v143 = *(*(v142 - 8) + 72);
      v144 = (*(*(v142 - 8) + 80) + 32) & ~*(*(v142 - 8) + 80);
      v145 = swift_allocObject();
      *(v145 + 16) = xmmword_1006BF740;
      v146 = v145 + v144;
      v147 = (v145 + v144 + *(v142 + 48));
      v148 = enum case for DIPError.PropertyKey.spWorkflowID(_:);
      v149 = type metadata accessor for DIPError.PropertyKey();
      v150 = *(*(v149 - 8) + 104);
      (v150)(v146, v148, v149);
      v151 = *(v219 + 32);
      v152 = *(v219 + 40);
      v147[3] = &type metadata for String;
      v147[4] = &protocol witness table for String;
      *v147 = v151;
      v147[1] = v152;
      v153 = v146 + v143 + *(v142 + 48);
      v150();
      v86 = v219;
      v154 = *(v219 + 208);
      *(v153 + 24) = &type metadata for DIPState;
      *(v153 + 32) = sub_10053B8D4();
      *v153 = v154;

      sub_10003C9C0(v145);
      swift_setDeallocating();
      swift_arrayDestroy();
      swift_deallocClassInstance();
      (*(v186 + 104))(v188, enum case for DIPError.Code.odnTimeout(_:), v187);
      v155 = v189;
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      sub_10053B9C0(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
      v156 = v191;
      v157 = swift_allocError();
      v158 = v190;
      (*(v190 + 16))(v159, v155, v156);
      sub_10051EB94(v157, 2, v229);
      (*(v158 + 8))(v155, v156);

      v231 = v229[0];
      v232 = v229[1];
      v233[0] = v230[0];
      *(v233 + 9) = *(v230 + 9);
      v85 = v203;
    }

    if (*(v86 + 184) == 1)
    {
      v160 = *(v85 + 24);
      if (v160 >> 60 != 15)
      {
        v234 = *v85;
        *&v235 = *(v85 + 16);
        *(&v235 + 1) = v160;
        v161 = *(v85 + 48);
        v236 = *(v85 + 32);
        v237 = v161;
        v162 = v183;
        sub_10000BBC4(a10, v183, &qword_100835180, &unk_1006C0CE0);
        (*(v181 + 56))(v162, 0, 1, v182);
        v226 = v246;
        v227 = v247;
        v228[0] = v248;
        v228[1] = v249;
        sub_10053B594(&v226, &v223);
        sub_100528A38(v184, v185, &v234, v209 & 1, a9, v162, a11);
        sub_10000BE18(v85, &qword_100847578, &qword_1006E7968);
        sub_10000BE18(v162, &qword_100847540, &qword_1006E7938);
      }
    }

    if (a12)
    {
      v163 = *(v85 + 24) >> 60;
      v220 = a10;
      if (v163 == 15)
      {
        countAndFlagsBits = 0;
        object = 0;
      }

      else
      {
        v172 = Data.base64EncodedString(options:)(0);
        countAndFlagsBits = v172._countAndFlagsBits;
        object = v172._object;
      }

      v173 = sub_100536E08(v85, *(v86 + 208) != 9, v209 & 1);
      v175 = v174;
      if (*(v85 + 24) >> 60 == 15)
      {
        v176 = 0;
      }

      else
      {
        v176 = *(v85 + 48);
      }

      if (*(v193 + 4) == 1)
      {
        v223 = v231;
        v224 = v232;
        v225[0] = v233[0];
        v177 = *(v233 + 9);
      }

      else
      {
        v226 = v243;
        v227 = v244;
        v228[0] = v245[0];
        *(v228 + 9) = *(v245 + 9);
        sub_10009ECBC(&v226, &v223);
        sub_10000BE18(&v231, &qword_100835768, &qword_1006DB770);
        v223 = v243;
        v224 = v244;
        v225[0] = v245[0];
        v177 = *(v245 + 9);
      }

      *(v225 + 9) = v177;
      v226 = v223;
      v227 = v224;
      v228[0] = v225[0];
      *(v228 + 9) = v177;
      *&v238 = v197;
      *(&v238 + 1) = v196;
      v239 = v195;
      v240 = v194;
      v241 = v199;
      v242 = v198;
      v178 = v207;
      swift_beginAccess();
      v179 = v192;
      sub_10053BFD8(v178, v192);
      (*(*(v212 - 8) + 56))(v179, 0, 1);
      v86 = v219;
      sub_100529B68(countAndFlagsBits, object, &v238, v173, v175, v176, &v226, v209 & 1, v220, v176 + 1, 0, a11, v176 + 2, 0, v179, 0, 0);

      sub_10000BE18(&v223, &qword_100835768, &qword_1006DB770);
      v165 = &unk_10084A160;
      v166 = &unk_1006E7978;
      v167 = v179;
    }

    else
    {
      v165 = &qword_100835768;
      v166 = &qword_1006DB770;
      v167 = &v231;
    }

    sub_10000BE18(v167, v165, v166);
    v171 = v86;
  }

  sub_100527A88(v171);
}

void sub_100527A88(uint64_t a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  defaultLogger()();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, v7, "signaling shareTimeSemaphore because we are done", v8, 2u);
  }

  (*(v3 + 8))(v5, v2);
  v9 = *(a1 + 376);
  if (v9)
  {
    v10 = v9;
    OS_dispatch_semaphore.signal()();
  }
}

uint64_t sub_100527BE0()
{
  v1[92] = v0;
  v2 = type metadata accessor for DIPError.Code();
  v1[93] = v2;
  v1[94] = *(v2 - 8);
  v1[95] = swift_task_alloc();

  return _swift_task_switch(sub_100527CA0, 0, 0);
}

uint64_t sub_100527CA0()
{
  v1 = *(v0 + 736) + OBJC_IVAR____TtC8coreidvd10DIPODNator_clientGUIDFactory;
  *(v0 + 288) = *v1;
  v2 = *(v1 + 64);
  v4 = *(v1 + 16);
  v3 = *(v1 + 32);
  *(v0 + 336) = *(v1 + 48);
  *(v0 + 352) = v2;
  *(v0 + 304) = v4;
  *(v0 + 320) = v3;
  v5 = *(v0 + 288);
  if (v5)
  {
    *(v0 + 368) = v5;
    *(v0 + 376) = *(v1 + 8);
    v6 = *(v1 + 24);
    v7 = *(v1 + 40);
    v8 = *(v1 + 56);
    *(v0 + 440) = *(v1 + 72);
    *(v0 + 408) = v7;
    *(v0 + 424) = v8;
    *(v0 + 392) = v6;
    v9 = *(v1 + 64);
    v11 = *(v1 + 16);
    v10 = *(v1 + 32);
    *(v0 + 496) = *(v1 + 48);
    *(v0 + 512) = v9;
    *(v0 + 464) = v11;
    *(v0 + 480) = v10;
    *(v0 + 448) = *v1;
    sub_10004DEB8(v0 + 448, v0 + 528);
    v12 = swift_task_alloc();
    *(v0 + 768) = v12;
    *v12 = v0;
    v12[1] = sub_100527F2C;

    return sub_10004ADF8(v0 + 152);
  }

  else
  {
    (*(*(v0 + 752) + 104))(*(v0 + 760), enum case for DIPError.Code.internalError(_:), *(v0 + 744));
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_10053B9C0(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    v14 = *(v0 + 8);

    return v14();
  }
}

uint64_t sub_100527F2C()
{
  *(*v1 + 776) = v0;

  if (v0)
  {
    v2 = sub_100528920;
  }

  else
  {
    v2 = sub_100528040;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100528040()
{
  v2 = v0[34];
  v1 = v0[35];
  v0[98] = v2;
  v0[99] = v1;
  v3 = qword_100832C98;

  if (v3 != -1)
  {
    swift_once();
  }

  v4 = v0[97];
  v5 = off_1008475C8;
  v0[100] = off_1008475C8;
  os_unfair_lock_lock(v5 + 6);

  os_unfair_lock_unlock(v5 + 6);
  v6 = sub_100544838(v2, v1);
  v8 = v7;
  v0[101] = v6;
  v0[102] = v7;

  if (v4)
  {

    sub_10004D8EC((v0 + 19));
LABEL_7:
    sub_10000BE18((v0 + 36), &unk_10084A150, &qword_1006E78F8);

    v14 = v0[1];

    return v14();
  }

  if (v8 >> 60 == 15)
  {
    v9 = v0[95];
    v10 = v0[94];
    v11 = v0[93];
    sub_10004D8EC((v0 + 19));
    _StringGuts.grow(_:)(41);

    v12._countAndFlagsBits = v2;
    v12._object = v1;
    String.append(_:)(v12);

    v13._countAndFlagsBits = 41;
    v13._object = 0xE100000000000000;
    String.append(_:)(v13);
    (*(v10 + 104))(v9, enum case for DIPError.Code.internalError(_:), v11);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_10053B9C0(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    goto LABEL_7;
  }

  v16 = swift_task_alloc();
  v0[103] = v16;
  *v16 = v0;
  v16[1] = sub_100528384;

  return sub_10004BA48((v0 + 2));
}

uint64_t sub_100528384()
{
  *(*v1 + 832) = v0;

  if (v0)
  {
    v2 = sub_10052899C;
  }

  else
  {
    v2 = sub_100528498;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100528498()
{
  v1 = *(v0 + 832);
  v2 = *(v0 + 800);
  v4 = *(v0 + 136);
  v3 = *(v0 + 144);

  os_unfair_lock_lock(v2 + 6);

  os_unfair_lock_unlock(v2 + 6);
  v5 = sub_100544838(v4, v3);
  if (v1)
  {
    v7 = *(v0 + 816);
    v8 = *(v0 + 808);

    sub_10004D8EC(v0 + 16);
    sub_10000BD94(v8, v7);

    sub_10004D8EC(v0 + 152);
LABEL_5:
    sub_10000BE18(v0 + 288, &unk_10084A150, &qword_1006E78F8);

    v16 = *(v0 + 8);
    goto LABEL_6;
  }

  v9 = v6;
  v37 = v5;

  if (v9 >> 60 == 15)
  {
    v38 = *(v0 + 816);
    v10 = *(v0 + 808);
    v11 = *(v0 + 760);
    v12 = *(v0 + 752);
    v13 = *(v0 + 744);
    sub_10004D8EC(v0 + 152);
    sub_10004D8EC(v0 + 16);

    _StringGuts.grow(_:)(39);

    v14._countAndFlagsBits = v4;
    v14._object = v3;
    String.append(_:)(v14);

    v15._countAndFlagsBits = 41;
    v15._object = 0xE100000000000000;
    String.append(_:)(v15);
    (*(v12 + 104))(v11, enum case for DIPError.Code.internalError(_:), v13);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_10053B9C0(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    sub_10000BD94(v10, v38);
    goto LABEL_5;
  }

  v18 = *(v0 + 816);
  v19 = *(v0 + 808);
  v20 = *(v0 + 792);
  v21 = *(v0 + 784);
  v22 = *(v0 + 736);
  *(v0 + 632) = &type metadata for DIPClientGUID;
  *(v0 + 640) = &off_1007FDCB8;
  v23 = swift_allocObject();
  *(v0 + 608) = v23;
  v24 = *(v0 + 264);
  *(v23 + 112) = *(v0 + 248);
  *(v23 + 128) = v24;
  *(v23 + 144) = *(v0 + 280);
  v25 = *(v0 + 200);
  *(v23 + 48) = *(v0 + 184);
  *(v23 + 64) = v25;
  v26 = *(v0 + 232);
  *(v23 + 80) = *(v0 + 216);
  *(v23 + 96) = v26;
  v27 = *(v0 + 168);
  *(v23 + 16) = *(v0 + 152);
  *(v23 + 32) = v27;
  swift_beginAccess();
  sub_1000B2764(v0 + 608, (v22 + 27), &qword_100834EB0, &qword_1006E78F0);
  swift_endAccess();
  v22[32] = v21;
  v22[33] = v20;

  v28 = v22[34];
  v29 = v22[35];
  v22[34] = v19;
  v22[35] = v18;
  sub_10000BD94(v28, v29);
  *(v0 + 672) = &type metadata for DIPClientGUID;
  *(v0 + 680) = &off_1007FDCB8;
  v30 = swift_allocObject();
  *(v0 + 648) = v30;
  sub_10000BE18(v0 + 288, &unk_10084A150, &qword_1006E78F8);
  v31 = *(v0 + 128);
  *(v30 + 112) = *(v0 + 112);
  *(v30 + 128) = v31;
  *(v30 + 144) = *(v0 + 144);
  v32 = *(v0 + 64);
  *(v30 + 48) = *(v0 + 48);
  *(v30 + 64) = v32;
  v33 = *(v0 + 96);
  *(v30 + 80) = *(v0 + 80);
  *(v30 + 96) = v33;
  v34 = *(v0 + 32);
  *(v30 + 16) = *(v0 + 16);
  *(v30 + 32) = v34;
  swift_beginAccess();
  sub_1000B2764(v0 + 648, (v22 + 36), &qword_100834EB0, &qword_1006E78F0);
  swift_endAccess();
  v22[41] = v4;
  v22[42] = v3;

  v35 = v22[43];
  v36 = v22[44];
  v22[43] = v37;
  v22[44] = v9;
  sub_10000BD94(v35, v36);

  v16 = *(v0 + 8);
LABEL_6:

  return v16();
}

uint64_t sub_100528920()
{
  sub_10000BE18(v0 + 288, &unk_10084A150, &qword_1006E78F8);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10052899C()
{
  sub_10000BD94(v0[101], v0[102]);

  sub_10004D8EC((v0 + 19));
  sub_10000BE18((v0 + 36), &unk_10084A150, &qword_1006E78F8);

  v1 = v0[1];

  return v1();
}

uint64_t sub_100528A38(uint64_t a1, uint64_t a2, __int128 *a3, int a4, uint64_t a5, void *a6, uint64_t a7)
{
  v123 = a7;
  v126._object = a6;
  v115 = a2;
  v116 = a5;
  LODWORD(v130) = a4;
  v114 = a1;
  v9 = type metadata accessor for DIPError();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v129 = &v100 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v131 = type metadata accessor for DIPError.Code();
  v127 = *(v131 - 8);
  __chkstk_darwin(v131);
  v132 = &v100 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DispatchWorkItemFlags();
  v118 = *(v13 - 8);
  v119 = v13;
  __chkstk_darwin(v13);
  v117 = &v100 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v113 = type metadata accessor for DIPPregeneratedAssessment(0);
  __chkstk_darwin(v113);
  v124 = &v100 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_100007224(&qword_100835248, &unk_1006E7940);
  __chkstk_darwin(v16 - 8);
  v120 = &v100 - v17;
  v125 = sub_100007224(&qword_1008352C8, &qword_1006C0D50);
  v122 = *(v125 - 8);
  __chkstk_darwin(v125);
  v121 = &v100 - v18;
  v19 = sub_100007224(&qword_100847540, &qword_1006E7938);
  __chkstk_darwin(v19 - 8);
  v21 = &v100 - v20;
  v22 = sub_100007224(&qword_100835180, &unk_1006C0CE0);
  v126._countAndFlagsBits = *(v22 - 8);
  __chkstk_darwin(v22);
  v24 = &v100 - v23;
  v133 = type metadata accessor for Logger();
  v25 = *(v133 - 8);
  v26 = __chkstk_darwin(v133);
  v128 = &v100 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v29 = &v100 - v28;
  swift_beginAccess();
  sub_10000BBC4((v7 + 216), v169, &qword_100834EB0, &qword_1006E78F0);
  if (!v170)
  {
    v42 = v169;
    return sub_10000BE18(v42, &qword_100834EB0, &qword_1006E78F0);
  }

  v112 = v10;
  sub_100007224(&qword_100834EB8, &qword_1006C06F0);
  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
    return result;
  }

  v111 = v9;
  *&v158[32] = v166;
  *&v158[48] = v167;
  v159 = v168;
  v157[2] = v162;
  v157[3] = v163;
  *v158 = v164;
  *&v158[16] = v165;
  v157[0] = v160;
  v157[1] = v161;
  swift_beginAccess();
  sub_10000BBC4((v7 + 288), v156, &qword_100834EB0, &qword_1006E78F0);
  if (!v156[3])
  {
    sub_10004D8EC(v157);
    v42 = v156;
    return sub_10000BE18(v42, &qword_100834EB0, &qword_1006E78F0);
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    return sub_10004D8EC(v157);
  }

  *&v145[32] = v153;
  *&v145[48] = v154;
  v146 = v155;
  v144[2] = v149;
  v144[3] = v150;
  *v145 = v151;
  *&v145[16] = v152;
  v144[0] = v147;
  v144[1] = v148;
  object = v7;
  v31 = v7[208] != 9;
  v32 = a3[1];
  v171[0] = *a3;
  v171[1] = v32;
  v33 = a3[3];
  v171[2] = a3[2];
  v171[3] = v33;
  v105 = sub_100536E08(v171, v31, v130 & 1);
  v130 = v34;
  defaultLogger()();
  v35 = Logger.logObject.getter();
  v36 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    *v37 = 0;
    _os_log_impl(&_mh_execute_header, v35, v36, "Storing assessment for reuse", v37, 2u);
  }

  v108 = *(v25 + 8);
  v109 = v25 + 8;
  v108(v29, v133);
  v38 = object[4];
  v102 = object[5];
  v103 = v38;
  v104 = *(a3 + 12);
  v39 = Data.base64EncodedString(options:)(0);
  countAndFlagsBits = v39._countAndFlagsBits;
  object = v39._object;
  type metadata accessor for JSONEncoder();
  swift_allocObject();
  JSONEncoder.init()();
  v40 = 49;
  if (LOBYTE(v157[0]))
  {
    v40 = 50;
  }

  *&v140 = v40;
  *(&v140 + 1) = 0xE100000000000000;
  v141 = *&v158[8];
  v142 = *&v158[24];
  v143 = *&v158[40];
  sub_10009F038();

  v41 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v107 = 0;
  v139[0] = v140;
  v139[1] = v141;
  v139[2] = v142;
  v139[3] = v143;
  v43 = v41;
  v45 = v44;
  sub_10004D770(v139);
  v46 = Data.base64EncodedString(options:)(0);
  v106 = v46._object;
  sub_10000B90C(v43, v45);
  v47 = 49;
  if (LOBYTE(v144[0]))
  {
    v47 = 50;
  }

  *&v135 = v47;
  *(&v135 + 1) = 0xE100000000000000;
  v136 = *&v145[8];
  v137 = *&v145[24];
  v138 = *&v145[40];

  v48 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v134[0] = v135;
  v134[1] = v136;
  v134[2] = v137;
  v134[3] = v138;
  v57 = v48;
  v59 = v58;
  sub_10004D770(v134);
  v100 = Data.base64EncodedString(options:)(0);
  sub_10000B90C(v57, v59);
  sub_10000BBC4(v126._object, v21, &qword_100847540, &qword_1006E7938);
  if ((*(v126._countAndFlagsBits + 48))(v21, 1, v22) == 1)
  {
    sub_10000BE18(v21, &qword_100847540, &qword_1006E7938);
    v126._countAndFlagsBits = 0;
    v126._object = 0;
  }

  else
  {
    sub_1000B1FC8(v21, v24, &qword_100835180, &unk_1006C0CE0);
    sub_10053B62C();
    v60 = dispatch thunk of JSONEncoder.encode<A>(_:)();
    v62 = v61;
    v126 = Data.base64EncodedString(options:)(0);
    sub_10000B90C(v60, v62);
    sub_10000BE18(v24, &qword_100835180, &unk_1006C0CE0);
  }

  v63 = v120;
  sub_10000BBC4(v123, v120, &qword_100835248, &unk_1006E7940);
  v64 = v122;
  v65 = v125;
  v66 = (*(v122 + 48))(v63, 1, v125);
  v67 = v124;
  v68 = v121;
  if (v66 == 1)
  {
    v123 = 0;

    sub_10000BE18(v63, &qword_100835248, &unk_1006E7940);
    v69 = 0;
    v70 = 0;
  }

  else
  {
    (*(v64 + 32))(v121, v63, v65);
    sub_1000BA30C(&qword_1008357B0, &qword_1008352C8, &qword_1006C0D50, &protocol conformance descriptor for EncryptedDataContainer<A>);
    v71 = dispatch thunk of JSONEncoder.encode<A>(_:)();
    v123 = 0;
    v72 = v71;
    v74 = v73;
    v75 = Data.base64EncodedString(options:)(0);
    v69 = v75._countAndFlagsBits;
    v70 = v75._object;

    sub_10000B90C(v72, v74);
    (*(v64 + 8))(v68, v125);
  }

  v76 = v113;
  v77 = v102;

  Date.init()();
  v78 = *&v158[56];
  v79 = v159;
  v80 = *&v145[56];
  v81 = v146;
  *v67 = v103;
  v67[1] = v77;
  v82 = (v67 + v76[6]);
  *v82 = countAndFlagsBits;
  v82[1] = object;
  v83 = (v67 + v76[7]);
  *v83 = v105;
  v83[1] = v130;
  v84 = (v67 + v76[8]);
  *v84 = v78;
  v84[1] = v79;
  v85 = (v67 + v76[9]);
  v86 = v106;
  *v85 = v46._countAndFlagsBits;
  v85[1] = v86;
  v87 = (v67 + v76[10]);
  *v87 = v80;
  v87[1] = v81;
  v88 = (v67 + v76[11]);
  v89 = v100._object;
  *v88 = v100._countAndFlagsBits;
  v88[1] = v89;
  v90 = (v67 + v76[12]);
  v91 = v115;
  *v90 = v114;
  v90[1] = v91;
  *(v67 + v76[13]) = v104;
  *(v67 + v76[14]) = v116;
  v92 = (v67 + v76[15]);
  v93 = v126._object;
  *v92 = v126._countAndFlagsBits;
  v92[1] = v93;
  v94 = (v67 + v76[16]);
  *v94 = v69;
  v94[1] = v70;
  v95 = qword_100832CA8;

  if (v95 != -1)
  {
    swift_once();
  }

  v96 = v117;
  v97 = static DispatchWorkItemFlags.barrier.getter();
  __chkstk_darwin(v97);
  v98 = v123;
  OS_dispatch_queue.sync<A>(flags:execute:)();
  if (v98)
  {
    (*(v118 + 8))(v96, v119);
    sub_100537B90(v67, type metadata accessor for DIPPregeneratedAssessment);
    v99 = *(v127 + 13);
    v130 = 0x800000010071DB10;
    v126._object = 0x800000010071DF50;
    v127 = v99;
    LODWORD(v125) = enum case for DIPError.Code.internalError(_:);
    v50 = v131;
    v49 = v132;
    v51 = v99;
    v99(v132);
    swift_errorRetain();
    sub_1000402AC(_swiftEmptyArrayStorage);
    v126._countAndFlagsBits = sub_10053B9C0(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    v52 = v111;
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    sub_10004D8EC(v144);
    sub_10004D8EC(v157);
    v51(v49, v125, v50);
    swift_errorRetain();
    sub_1000402AC(_swiftEmptyArrayStorage);
    v53 = v129;
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_allocError();
    v54 = v112;
    (*(v112 + 16))(v55, v53, v52);
    v56 = v128;
    defaultLogger()();
    DIPRecordError(_:message:log:)();

    v108(v56, v133);
    (*(v54 + 8))(v53, v52);
  }

  else
  {
    sub_10004D8EC(v144);
    sub_10004D8EC(v157);
    (*(v118 + 8))(v96, v119);
    return sub_100537B90(v67, type metadata accessor for DIPPregeneratedAssessment);
  }
}

uint64_t sub_100529B68(uint64_t a1, unint64_t a2, _OWORD *a3, uint64_t a4, uint64_t a5, uint64_t a6, _OWORD *a7, int a8, uint64_t a9, uint64_t a10, unsigned __int8 a11, uint64_t a12, uint64_t a13, unsigned __int8 a14, uint64_t a15, uint64_t a16, char a17)
{
  v18 = v17;
  DWORD2(v212) = a8;
  v213 = a7;
  v191 = a6;
  v192 = a4;
  v202 = a5;
  v209 = a3;
  v210 = a1;
  v211 = a2;
  *&v212 = a15;
  v19 = sub_100007224(&unk_100845860, &unk_1006BF9D0);
  __chkstk_darwin(v19 - 8);
  v204 = &v175 - v20;
  v21 = type metadata accessor for DIPError.Code();
  v185 = *(v21 - 8);
  v186 = v21;
  __chkstk_darwin(v21);
  v187 = &v175 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v198 = type metadata accessor for DIPError();
  v200 = *(v198 - 8);
  __chkstk_darwin(v198);
  v197 = &v175 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for DispatchWorkItemFlags();
  v195 = *(v24 - 8);
  v196 = v24;
  __chkstk_darwin(v24);
  v194 = &v175 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_100007224(&qword_1008350C0, &unk_1006C0B30);
  __chkstk_darwin(v26 - 8);
  v179 = &v175 - v27;
  v193 = type metadata accessor for DIPODINPair(0);
  __chkstk_darwin(v193);
  v199 = (&v175 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
  v29 = sub_100007224(&qword_100847538, &unk_1006E83A0);
  v30 = __chkstk_darwin(v29 - 8);
  v201 = &v175 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30);
  v190 = &v175 - v32;
  v33 = sub_100007224(&unk_10084A160, &unk_1006E7978);
  v34 = __chkstk_darwin(v33 - 8);
  v182 = &v175 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v34);
  v208 = &v175 - v36;
  v37 = sub_100007224(&unk_10084A170, &unk_1006E7900);
  __chkstk_darwin(v37 - 8);
  v39 = &v175 - v38;
  v40 = sub_100007224(&qword_100835248, &unk_1006E7940);
  __chkstk_darwin(v40 - 8);
  v42 = &v175 - v41;
  v43 = sub_100007224(&qword_100835180, &unk_1006C0CE0);
  __chkstk_darwin(v43 - 8);
  v45 = &v175 - v44;
  v46 = type metadata accessor for Logger();
  v221 = *(v46 - 8);
  v47 = __chkstk_darwin(v46);
  v203 = &v175 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = __chkstk_darwin(v47);
  v205 = &v175 - v50;
  v51 = __chkstk_darwin(v49);
  v184 = &v175 - v52;
  v53 = __chkstk_darwin(v51);
  v183 = &v175 - v54;
  v55 = __chkstk_darwin(v53);
  v57 = &v175 - v56;
  __chkstk_darwin(v55);
  v59 = &v175 - v58;
  defaultLogger()();
  v60 = Logger.logObject.getter();
  v61 = static os_log_type_t.debug.getter();
  v62 = os_log_type_enabled(v60, v61);
  v220 = v18;
  if (v62)
  {
    v63 = swift_slowAlloc();
    *v63 = 0;
    _os_log_impl(&_mh_execute_header, v60, v61, "Preparing ODN web requests", v63, 2u);
    v18 = v220;
  }

  v64 = v221 + 8;
  v218 = *(v221 + 8);
  v218(v59, v46);
  v65 = sub_100007224(&unk_100835208, &unk_1006C0D10);
  (*(*(v65 - 8) + 56))(v45, 1, 1, v65);
  v66 = sub_100007224(&qword_1008352C8, &qword_1006C0D50);
  (*(*(v66 - 8) + 56))(v42, 1, 1, v66);
  v67 = *(v18 + 32);
  v68 = *(v18 + 384);
  v216 = *(v18 + 40);
  v217 = v67;
  v69 = String.hasPrefix(_:)(v68);
  v214 = v42;
  v215 = v46;
  v219 = v45;
  v221 = v64;
  if (v69)
  {
    LODWORD(v188) = a14;
    v189 = a13;
    LODWORD(v206) = a11;
    v207 = a10;
    sub_10000BE18(v42, &qword_100835248, &unk_1006E7940);
    sub_10000BE18(v45, &qword_100835180, &unk_1006C0CE0);
    v18 = v220;
    sub_10000BBC4(a9, v45, &qword_100835180, &unk_1006C0CE0);
    sub_10000BBC4(a12, v42, &qword_100835248, &unk_1006E7940);
  }

  else
  {
    defaultLogger()();
    v70 = Logger.logObject.getter();
    v71 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v70, v71))
    {
      v72 = swift_slowAlloc();
      *v72 = 0;
      _os_log_impl(&_mh_execute_header, v70, v71, "Label Ingestion Not Allowed, skipping EncryptedContainers", v72, 2u);
    }

    v218(v57, v46);
    v189 = 0;
    v207 = 0;
    LODWORD(v188) = 1;
    LODWORD(v206) = 1;
  }

  v73 = v208;
  swift_beginAccess();
  sub_10000BBC4(v18 + 216, &v225, &qword_100834EB0, &qword_1006E78F0);
  sub_10004CF8C(&v225, v232);
  sub_10000BE18(&v225, &qword_100834EB0, &qword_1006E78F0);
  v74 = (*(v18 + 160) + OBJC_IVAR____TtC8coreidvd13DIPWebService_conversation);
  v76 = *v74;
  v75 = v74[1];
  sub_10000BBC4(v212, v73, &unk_10084A160, &unk_1006E7978);
  v77 = type metadata accessor for AugmentedProfile(0);
  v78 = *(v77 - 8);
  v79 = *(v78 + 48);
  v180 = v78 + 48;
  v181 = v79;
  v80 = v79(v73, 1, v77);
  v81 = v216;
  v208 = v77;
  if (v80 == 1)
  {

    sub_10000BE18(v73, &unk_10084A160, &unk_1006E7978);
    v82 = 0xE700000000000000;
    v83 = 0x4E574F4E4B4E55;
  }

  else
  {
    v84 = (v73 + *(v77 + 28));
    v83 = *v84;
    v82 = v84[1];

    sub_100537B90(v73, type metadata accessor for AugmentedProfile);
  }

  v85 = v81;
  v86 = type metadata accessor for ORDRequest(0);
  sub_10000BBC4(v219, &v39[v86[11]], &qword_100835180, &unk_1006C0CE0);
  *v39 = v76;
  *(v39 + 1) = v75;
  v87 = v211;
  *(v39 + 2) = v210;
  *(v39 + 3) = v87;
  v88 = v232[1];
  *(v39 + 2) = v232[0];
  *(v39 + 3) = v88;
  v89 = v232[3];
  *(v39 + 4) = v232[2];
  *(v39 + 5) = v89;
  *(v39 + 12) = v217;
  *(v39 + 13) = v85;
  *(v39 + 14) = v83;
  *(v39 + 15) = v82;
  v90 = v213;
  v91 = *v213;
  v92 = v213[1];
  v93 = v213[2];
  *(v39 + 169) = *(v213 + 41);
  *(v39 + 9) = v92;
  *(v39 + 10) = v93;
  *(v39 + 8) = v91;
  v39[185] = BYTE8(v212);
  v94 = &v39[v86[12]];
  *v94 = v207;
  v94[8] = v206 & 1;
  v95 = &v39[v86[13]];
  *v95 = a16;
  v95[8] = a17 & 1;
  (*(*(v86 - 1) + 56))(v39, 0, 1, v86);
  v96 = OBJC_IVAR____TtC8coreidvd10DIPODNator_ordRequest;
  v97 = v220;
  swift_beginAccess();
  sub_10000BBC4(v90, &v225, &qword_100835768, &qword_1006DB770);

  sub_1000B2764(v39, v97 + v96, &unk_10084A170, &unk_1006E7900);
  swift_endAccess();
  type metadata accessor for JSONEncoder();
  swift_allocObject();
  JSONEncoder.init()();
  v98 = v209;
  v99 = v209[1];
  v225 = *v209;
  v226 = v99;
  v227 = v209[2];
  sub_100007224(&qword_1008475A8, &unk_1006E79C0);
  sub_10053C11C();
  v100 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v102 = v101;
  v103 = v100;

  sub_10000B8B8(v103, v102);
  v104 = Data.base64EncodedString(options:)(0);
  v210 = v103;
  sub_10000B90C(v103, v102);
  v105 = *(v98 + 1);
  v107 = v214;
  v106 = v215;
  v108 = v218;
  if (!v105 || (v109 = *v98, v110 = v98[2], v234 = v98[1], v235 = v110, !v202) || *(v97 + 200))
  {

    v211 = v102;
    v111 = v205;
    defaultLogger()();
    v112 = Logger.logObject.getter();
    v113 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v112, v113))
    {
      v114 = swift_slowAlloc();
      *v114 = 0;
      _os_log_impl(&_mh_execute_header, v112, v113, "Skipping OTD web request because required properties aren't available", v114, 2u);
    }

    v108(v111, v106);
    goto LABEL_17;
  }

  v206 = v109;
  v207 = v105;
  v211 = v102;
  v209 = *(v97 + 192);
  swift_beginAccess();
  sub_10000BBC4(v97 + 288, &v225, &qword_100834EB0, &qword_1006E78F0);
  sub_10004CF8C(&v225, v233);
  sub_10000BE18(&v225, &qword_100834EB0, &qword_1006E78F0);
  v126 = type metadata accessor for OTDRequest(0);
  v127 = v190;
  sub_10000BBC4(v107, &v190[v126[10]], &qword_100835248, &unk_1006E7940);
  v128 = v216;
  swift_bridgeObjectRetain_n();
  v129 = v213;
  sub_10000BBC4(v213, &v225, &qword_100835768, &qword_1006DB770);
  v130 = v202;

  v131 = experimentalGroup()();
  v132 = v233[0];
  *(v127 + 40) = v233[1];
  v133 = v233[3];
  *(v127 + 56) = v233[2];
  *v127 = v104;
  *(v127 + 16) = v191;
  *(v127 + 72) = v133;
  *(v127 + 24) = v132;
  *(v127 + 88) = v217;
  *(v127 + 96) = v128;
  *(v127 + 104) = v192;
  *(v127 + 112) = v130;
  *(v127 + 120) = 2;
  *(v127 + 128) = BYTE8(v212);
  v134 = v127 + v126[11];
  *v134 = v189;
  *(v134 + 8) = v188 & 1;
  v135 = (v127 + v126[12]);
  *(v135 + 41) = *(v129 + 41);
  v136 = v129[2];
  v135[1] = v129[1];
  v135[2] = v136;
  *v135 = *v129;
  v137 = v127 + v126[13];
  *v137 = 0;
  *(v137 + 8) = 1;
  *(v127 + v126[14]) = v131;
  v138 = *(v126 - 1);
  v139 = *(v138 + 56);
  v177 = v138 + 56;
  v139(v127, 0, 1, v126);
  v140 = OBJC_IVAR____TtC8coreidvd10DIPODNator_otdRequest;
  swift_beginAccess();
  sub_1000B2764(v127, v97 + v140, &qword_100847538, &unk_1006E83A0);
  swift_endAccess();
  v141 = *(v97 + 272);
  v213 = *(v97 + 280);
  v142 = *(v97 + 176);
  v191 = *(v97 + 168);
  v143 = *(v97 + 72);
  v205 = *(v97 + 64);
  v144 = *(v97 + 88);
  v202 = *(v97 + 80);
  v178 = v126;
  v188 = v139;
  v139(v201, 1, 1, v126);
  v145 = *(v97 + 104);
  v192 = v144;
  v189 = v141;
  v190 = v142;
  v176 = v143;
  if (!v145)
  {
    v146 = v141;
    v147 = v182;
    sub_10000BBC4(v212, v182, &unk_10084A160, &unk_1006E7978);
    if (v181(v147, 1, v208) == 1)
    {
      sub_1000363B4(v146, v213);

      v148 = &unk_10084A160;
      v149 = &unk_1006E7978;
      v150 = v147;
    }

    else
    {
      v151 = v146;
      v152 = v179;
      sub_10000BBC4(v147, v179, &qword_1008350C0, &unk_1006C0B30);
      sub_1000363B4(v151, v213);

      v153 = v152;

      sub_100537B90(v147, type metadata accessor for AugmentedProfile);
      v154 = sub_100007224(&qword_100835138, &qword_1006C0B58);
      v155 = *(v154 - 8);
      if ((*(v155 + 48))(v153, 1, v154) != 1)
      {
        JWSSignedJSON.payload.getter();
        v229 = v223[4];
        v230[0] = v224[0];
        *(v230 + 13) = *(v224 + 13);
        v225 = v223[0];
        v226 = v223[1];
        v227 = v223[2];
        v228 = v223[3];
        (*(v155 + 8))(v153, v154);
        sub_10000BBC4(&v225, v222, &qword_100835658, &qword_1006C1A50);
        sub_10009E858(&v225);
        if (*(&v225 + 1))
        {
          v212 = v226;

          sub_10000BE18(&v225, &qword_100835658, &qword_1006C1A50);
          goto LABEL_34;
        }

        goto LABEL_33;
      }

      v148 = &qword_1008350C0;
      v149 = &unk_1006C0B30;
      v150 = v153;
    }

    sub_10000BE18(v150, v148, v149);
LABEL_33:
    v212 = v209;
    goto LABEL_34;
  }

  *&v212 = *(v97 + 96);
  sub_1000363B4(v141, v213);

  *(&v212 + 1) = v145;
LABEL_34:
  v156 = v206;
  v157 = v207;
  v222[0] = v206;
  v222[1] = v207;
  v223[0] = v234;
  v225 = v235;
  v158 = v199;
  *v199 = xmmword_1006BF650;
  v159 = v193;
  v208 = *(v193 + 52);
  v188(v158 + v208, 1, 1, v178);
  v160 = (v158 + *(v159 + 56));
  v161 = *v158;
  v162 = *(v158 + 8);

  sub_10004D7A0(v222, v231);
  sub_10004D7A0(v223, v231);
  sub_10000BBC4(&v225, v231, &qword_10084A1D0, &qword_1006DB410);
  sub_10000BD94(v161, v162);
  v163 = v213;
  *v158 = v189;
  *(v158 + 8) = v163;
  *(v158 + 16) = v156;
  *(v158 + 24) = v157;
  v164 = v235;
  *(v158 + 32) = v234;
  *(v158 + 48) = v164;
  v165 = v209;
  *(v158 + 64) = v209;
  *(v158 + 72) = 0;
  *(v158 + 80) = v165;
  *(v158 + 88) = 0;
  v166 = v190;
  *(v158 + 96) = v191;
  *(v158 + 104) = v166;
  v167 = v216;
  *(v158 + 112) = v217;
  *(v158 + 120) = v167;
  *(v158 + 128) = 0;
  v168 = v176;
  *(v158 + 136) = v205;
  *(v158 + 144) = v168;
  v169 = v201;
  v170 = v192;
  *(v158 + 152) = v202;
  *(v158 + 160) = v170;
  sub_1000B2764(v169, v158 + v208, &qword_100847538, &unk_1006E83A0);
  v171 = *(&v212 + 1);
  *v160 = v212;
  v160[1] = v171;
  if (qword_100832CA8 != -1)
  {
    swift_once();
  }

  v172 = v194;
  v173 = static DispatchWorkItemFlags.barrier.getter();
  __chkstk_darwin(v173);
  OS_dispatch_queue.sync<A>(flags:execute:)();
  v174 = v158;
  v107 = v214;
  v106 = v215;
  (*(v195 + 8))(v172, v196);
  sub_100537B90(v174, type metadata accessor for DIPODINPair);
  v108 = v218;
LABEL_17:
  if (*(v97 + 402) == 1)
  {
    v115 = v203;
    defaultLogger()();
    v116 = Logger.logObject.getter();
    v117 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v116, v117))
    {
      v118 = swift_slowAlloc();
      *v118 = 0;
      _os_log_impl(&_mh_execute_header, v116, v117, "Configured to not immediately send to Assessment Server", v118, 2u);
    }

    sub_10000BD94(v210, v211);
    v108(v115, v106);
  }

  else
  {
    if (*(v97 + 104))
    {
      v119 = *(v97 + 96);
      v120 = *(v97 + 104);
    }

    else
    {
      v119 = *(v97 + 112);
      v120 = *(v97 + 120);
    }

    v121 = type metadata accessor for TaskPriority();
    v122 = v204;
    (*(*(v121 - 8) + 56))(v204, 1, 1, v121);
    v123 = swift_allocObject();
    v123[2] = 0;
    v123[3] = 0;
    v123[4] = v97;
    v123[5] = v119;
    v123[6] = v120;

    sub_1003E653C(0, 0, v122, &unk_1006E9F00, v123);

    sub_10000BD94(v210, v211);
  }

  v124 = v219;
  sub_10000BE18(v107, &qword_100835248, &unk_1006E7940);
  return sub_10000BE18(v124, &qword_100835180, &unk_1006C0CE0);
}

uint64_t sub_10052B2CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[15] = a5;
  v6[16] = a6;
  v6[14] = a4;
  v7 = type metadata accessor for DIPError.Code();
  v6[17] = v7;
  v6[18] = *(v7 - 8);
  v6[19] = swift_task_alloc();
  v8 = type metadata accessor for DIPError();
  v6[20] = v8;
  v6[21] = *(v8 - 8);
  v6[22] = swift_task_alloc();
  v6[23] = swift_task_alloc();
  sub_100007224(&qword_100847538, &unk_1006E83A0);
  v6[24] = swift_task_alloc();
  v6[25] = swift_task_alloc();
  v9 = type metadata accessor for OTDRequest(0);
  v6[26] = v9;
  v6[27] = *(v9 - 8);
  v6[28] = swift_task_alloc();
  sub_100007224(&unk_10084A170, &unk_1006E7900);
  v6[29] = swift_task_alloc();
  v6[30] = swift_task_alloc();
  v10 = type metadata accessor for ORDRequest(0);
  v6[31] = v10;
  v6[32] = *(v10 - 8);
  v6[33] = swift_task_alloc();
  v11 = type metadata accessor for Logger();
  v6[34] = v11;
  v6[35] = *(v11 - 8);
  v6[36] = swift_task_alloc();
  v6[37] = swift_task_alloc();
  v6[38] = swift_task_alloc();
  v6[39] = swift_task_alloc();
  v6[40] = swift_task_alloc();
  v6[41] = swift_task_alloc();

  return _swift_task_switch(sub_10052B5D0, 0, 0);
}

uint64_t sub_10052B5D0(uint64_t a1)
{
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Sending ODN Results", v4, 2u);
  }

  v5 = v1[41];
  v6 = v1[34];
  v7 = v1[35];
  v8 = v1[31];
  v9 = v1[32];
  v10 = v1[30];
  v11 = v1[14];

  v12 = *(v7 + 8);
  v1[42] = v12;
  v12(v5, v6);
  v13 = OBJC_IVAR____TtC8coreidvd10DIPODNator_ordRequest;
  v1[43] = OBJC_IVAR____TtC8coreidvd10DIPODNator_ordRequest;
  swift_beginAccess();
  sub_10000BBC4(v11 + v13, v10, &unk_10084A170, &unk_1006E7900);
  if ((*(v9 + 48))(v10, 1, v8) == 1)
  {
    sub_10000BE18(v1[30], &unk_10084A170, &unk_1006E7900);
  }

  else
  {
    v14 = v1[14];
    sub_100537B28(v1[30], v1[33], type metadata accessor for ORDRequest);
    if (*(v14 + 400) == 1)
    {
      v15 = v1[14];
      v16 = v15[21];
      v17 = v15[22];
      v18 = v15[24];
      v19 = v15[25];
      v20 = swift_task_alloc();
      v1[44] = v20;
      *v20 = v1;
      v20[1] = sub_10052BB88;
      v21 = v1[33];
      v22 = v1[15];
      v23 = v1[16];

      return sub_1005AA678(v16, v17, v22, v23, v18, v19, v21);
    }

    sub_100537B90(v1[33], type metadata accessor for ORDRequest);
  }

  defaultLogger()();
  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.info.getter();
  v27 = os_log_type_enabled(v25, v26);
  v28 = v1[40];
  v29 = v1[34];
  if (v27)
  {
    v30 = swift_slowAlloc();
    *v30 = 0;
    _os_log_impl(&_mh_execute_header, v25, v26, "no ORD available or configured to not send", v30, 2u);
  }

  v12(v28, v29);
  v31 = v1[26];
  v32 = v1[27];
  v33 = v1[25];
  v34 = v1[14];
  v35 = OBJC_IVAR____TtC8coreidvd10DIPODNator_otdRequest;
  v1[46] = OBJC_IVAR____TtC8coreidvd10DIPODNator_otdRequest;
  swift_beginAccess();
  sub_10000BBC4(v34 + v35, v33, &qword_100847538, &unk_1006E83A0);
  if ((*(v32 + 48))(v33, 1, v31) == 1)
  {
    sub_10000BE18(v1[25], &qword_100847538, &unk_1006E83A0);
LABEL_19:
    defaultLogger()();
    v41 = Logger.logObject.getter();
    v42 = static os_log_type_t.info.getter();
    v43 = os_log_type_enabled(v41, v42);
    v44 = v1[42];
    v45 = v1[39];
    v46 = v1[34];
    if (v43)
    {
      v47 = swift_slowAlloc();
      *v47 = 0;
      _os_log_impl(&_mh_execute_header, v41, v42, "no OTD available or configured to not send", v47, 2u);
    }

    v44(v45, v46);

    v48 = v1[1];

    return v48();
  }

  v36 = v1[14];
  sub_100537B28(v1[25], v1[28], type metadata accessor for OTDRequest);
  if (*(v36 + 401) != 1)
  {
    sub_100537B90(v1[28], type metadata accessor for OTDRequest);
    goto LABEL_19;
  }

  v37 = swift_task_alloc();
  v1[47] = v37;
  *v37 = v1;
  v37[1] = sub_10052C034;
  v38 = v1[28];
  v39 = v1[15];
  v40 = v1[16];

  return sub_1005AB670(v38, v39, v40);
}

uint64_t sub_10052BB88()
{
  *(*v1 + 360) = v0;

  if (v0)
  {
    v2 = sub_10052C2E8;
  }

  else
  {
    v2 = sub_10052BC9C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10052BC9C()
{
  v1 = v0[43];
  v2 = v0[32];
  v3 = v0[31];
  v4 = v0[29];
  v5 = v0[14];
  sub_100537B90(v0[33], type metadata accessor for ORDRequest);
  (*(v2 + 56))(v4, 1, 1, v3);
  swift_beginAccess();
  sub_1000B2764(v4, v5 + v1, &unk_10084A170, &unk_1006E7900);
  swift_endAccess();
  v6 = v0[26];
  v7 = v0[27];
  v8 = v0[25];
  v9 = v0[14];
  v10 = OBJC_IVAR____TtC8coreidvd10DIPODNator_otdRequest;
  v0[46] = OBJC_IVAR____TtC8coreidvd10DIPODNator_otdRequest;
  swift_beginAccess();
  sub_10000BBC4(v9 + v10, v8, &qword_100847538, &unk_1006E83A0);
  if ((*(v7 + 48))(v8, 1, v6) == 1)
  {
    sub_10000BE18(v0[25], &qword_100847538, &unk_1006E83A0);
LABEL_8:
    defaultLogger()();
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.info.getter();
    v19 = os_log_type_enabled(v17, v18);
    v20 = v0[42];
    v21 = v0[39];
    v22 = v0[34];
    if (v19)
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&_mh_execute_header, v17, v18, "no OTD available or configured to not send", v23, 2u);
    }

    v20(v21, v22);

    v24 = v0[1];

    return v24();
  }

  v11 = v0[14];
  sub_100537B28(v0[25], v0[28], type metadata accessor for OTDRequest);
  if (*(v11 + 401) != 1)
  {
    sub_100537B90(v0[28], type metadata accessor for OTDRequest);
    goto LABEL_8;
  }

  v12 = swift_task_alloc();
  v0[47] = v12;
  *v12 = v0;
  v12[1] = sub_10052C034;
  v13 = v0[28];
  v14 = v0[15];
  v15 = v0[16];

  return sub_1005AB670(v13, v14, v15);
}

uint64_t sub_10052C034()
{
  *(*v1 + 384) = v0;

  if (v0)
  {
    v2 = sub_10052C8C4;
  }

  else
  {
    v2 = sub_10052C148;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10052C148()
{
  v1 = v0[46];
  v2 = v0[27];
  v3 = v0[26];
  v4 = v0[24];
  v5 = v0[14];
  sub_100537B90(v0[28], type metadata accessor for OTDRequest);
  (*(v2 + 56))(v4, 1, 1, v3);
  swift_beginAccess();
  sub_1000B2764(v4, v5 + v1, &qword_100847538, &unk_1006E83A0);
  swift_endAccess();

  v6 = v0[1];

  return v6();
}

uint64_t sub_10052C2E8()
{
  v1 = v0[38];
  v40 = v0[42];
  v39 = v0[34];
  v2 = v0[23];
  v3 = v0[20];
  v4 = v0[21];
  (*(v0[18] + 104))(v0[19], enum case for DIPError.Code.internalError(_:), v0[17]);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  sub_10053B9C0(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
  swift_allocError();
  (*(v4 + 16))(v5, v2, v3);
  defaultLogger()();
  DIPRecordError(_:message:log:)();
  v40(v1, v39);

  defaultLogger()();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();
  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[42];
  v10 = v0[37];
  v11 = v0[34];
  v41 = v0[23];
  v13 = v0[20];
  v12 = v0[21];
  if (v8)
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&_mh_execute_header, v6, v7, "Unable to send ORD request; continuing on", v14, 2u);
  }

  v9(v10, v11);
  (*(v12 + 8))(v41, v13);
  v15 = v0[43];
  v16 = v0[32];
  v17 = v0[31];
  v18 = v0[29];
  v19 = v0[14];
  sub_100537B90(v0[33], type metadata accessor for ORDRequest);
  (*(v16 + 56))(v18, 1, 1, v17);
  swift_beginAccess();
  sub_1000B2764(v18, v19 + v15, &unk_10084A170, &unk_1006E7900);
  swift_endAccess();
  v20 = v0[26];
  v21 = v0[27];
  v22 = v0[25];
  v23 = v0[14];
  v24 = OBJC_IVAR____TtC8coreidvd10DIPODNator_otdRequest;
  v0[46] = OBJC_IVAR____TtC8coreidvd10DIPODNator_otdRequest;
  swift_beginAccess();
  sub_10000BBC4(v23 + v24, v22, &qword_100847538, &unk_1006E83A0);
  if ((*(v21 + 48))(v22, 1, v20) == 1)
  {
    sub_10000BE18(v0[25], &qword_100847538, &unk_1006E83A0);
LABEL_10:
    defaultLogger()();
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.info.getter();
    v33 = os_log_type_enabled(v31, v32);
    v34 = v0[42];
    v35 = v0[39];
    v36 = v0[34];
    if (v33)
    {
      v37 = swift_slowAlloc();
      *v37 = 0;
      _os_log_impl(&_mh_execute_header, v31, v32, "no OTD available or configured to not send", v37, 2u);
    }

    v34(v35, v36);

    v38 = v0[1];

    return v38();
  }

  v25 = v0[14];
  sub_100537B28(v0[25], v0[28], type metadata accessor for OTDRequest);
  if (*(v25 + 401) != 1)
  {
    sub_100537B90(v0[28], type metadata accessor for OTDRequest);
    goto LABEL_10;
  }

  v26 = swift_task_alloc();
  v0[47] = v26;
  *v26 = v0;
  v26[1] = sub_10052C034;
  v27 = v0[28];
  v28 = v0[15];
  v29 = v0[16];

  return sub_1005AB670(v27, v28, v29);
}

uint64_t sub_10052C8C4()
{
  v1 = v0[38];
  v23 = v0[42];
  v22 = v0[34];
  v3 = v0[21];
  v2 = v0[22];
  v4 = v0[20];
  (*(v0[18] + 104))(v0[19], enum case for DIPError.Code.internalError(_:), v0[17]);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  sub_10053B9C0(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
  swift_allocError();
  (*(v3 + 16))(v5, v2, v4);
  defaultLogger()();
  DIPRecordError(_:message:log:)();
  v23(v1, v22);

  defaultLogger()();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();
  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[42];
  v10 = v0[36];
  v11 = v0[34];
  v12 = v0[21];
  v24 = v0[22];
  v13 = v0[20];
  if (v8)
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&_mh_execute_header, v6, v7, "Unable to send OTD request; continuing on", v14, 2u);
  }

  v9(v10, v11);
  (*(v12 + 8))(v24, v13);
  v15 = v0[46];
  v16 = v0[27];
  v17 = v0[26];
  v18 = v0[24];
  v19 = v0[14];
  sub_100537B90(v0[28], type metadata accessor for OTDRequest);
  (*(v16 + 56))(v18, 1, 1, v17);
  swift_beginAccess();
  sub_1000B2764(v18, v19 + v15, &qword_100847538, &unk_1006E83A0);
  swift_endAccess();

  v20 = v0[1];

  return v20();
}

uint64_t sub_10052CCA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[38] = a3;
  v4[39] = a4;
  v4[36] = a1;
  v4[37] = a2;
  v5 = type metadata accessor for Logger();
  v4[40] = v5;
  v4[41] = *(v5 - 8);
  v4[42] = swift_task_alloc();
  v4[43] = swift_task_alloc();
  v6 = type metadata accessor for DIPError.Code();
  v4[44] = v6;
  v4[45] = *(v6 - 8);
  v4[46] = swift_task_alloc();
  v7 = type metadata accessor for DIPError();
  v4[47] = v7;
  v4[48] = *(v7 - 8);
  v4[49] = swift_task_alloc();
  sub_100007224(&unk_10084A130, &qword_1006E9ED0);
  v4[50] = swift_task_alloc();
  v8 = type metadata accessor for DIPPregeneratedAssessment(0);
  v4[51] = v8;
  v4[52] = *(v8 - 8);
  v4[53] = swift_task_alloc();

  return _swift_task_switch(sub_10052CEC4, 0, 0);
}

uint64_t sub_10052CEC4()
{
  v88 = v0;
  v1 = v0[51];
  v2 = v0[52];
  v3 = v0[50];
  sub_10000BBC4(v0[38], v3, &unk_10084A130, &qword_1006E9ED0);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_10000BE18(v0[50], &unk_10084A130, &qword_1006E9ED0);
    defaultLogger()();
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v6, v7, "getOrCreateGUIDS: no pre-generated assessment available; generating new guids", v9, 2u);
    }

    v11 = v0[41];
    v10 = v0[42];
    v12 = v0[40];

    (*(v11 + 8))(v10, v12);
    v13 = swift_task_alloc();
    v0[54] = v13;
    *v13 = v0;
    v13[1] = sub_10052D45C;

    return sub_10004ADF8((v0 + 19));
  }

  else
  {
    v4 = v0[53];
    v5 = v0[39];
    sub_100537B28(v0[50], v4, type metadata accessor for DIPPregeneratedAssessment);
    sub_1005371D8(v4, v5, v54);
    v53 = v54[0];
    v15 = v55;
    v16 = v56;
    v17 = v57;
    v51 = v59;
    v52 = v58;
    v49 = v61;
    v50 = v60;
    v47 = v63;
    v48 = v62;
    v45 = v65;
    v46 = v64;
    v43 = v67;
    v44 = v66;
    v41 = v69;
    v42 = v68;
    v40 = v70;
    v39 = v71;
    v37 = v73;
    v38 = v72;
    v35 = v75;
    v36 = v74;
    v33 = v77;
    v34 = v76;
    v31 = v79;
    v32 = v78;
    v29 = v81;
    v30 = v80;
    v27 = v83;
    v28 = v82;
    v25 = v85;
    v26 = v84;
    v23 = v87;
    v24 = v86;
    v18 = v0[52];
    v19 = v0[51];
    v20 = v0[37];
    sub_100537B28(v0[53], v20, type metadata accessor for DIPPregeneratedAssessment);
    (*(v18 + 56))(v20, 0, 1, v19);
    v21 = v0[36];

    *v21 = v53;
    *(v21 + 8) = v15;
    *(v21 + 16) = v16;
    *(v21 + 24) = v17;
    *(v21 + 32) = v52;
    *(v21 + 40) = v51;
    *(v21 + 48) = v50;
    *(v21 + 56) = v49;
    *(v21 + 64) = v48;
    *(v21 + 72) = v47;
    *(v21 + 80) = v46;
    *(v21 + 88) = v45;
    *(v21 + 96) = v44;
    *(v21 + 104) = v43;
    *(v21 + 112) = v42;
    *(v21 + 120) = v41;
    *(v21 + 128) = v40;
    *(v21 + 136) = v39;
    *(v21 + 144) = v38;
    *(v21 + 152) = v37;
    *(v21 + 160) = v36;
    *(v21 + 168) = v35;
    *(v21 + 176) = v34;
    *(v21 + 184) = v33;
    *(v21 + 192) = v32;
    *(v21 + 200) = v31;
    *(v21 + 208) = v30;
    *(v21 + 216) = v29;
    *(v21 + 224) = v28;
    *(v21 + 232) = v27;
    *(v21 + 240) = v26;
    *(v21 + 248) = v25;
    *(v21 + 256) = v24;
    *(v21 + 264) = v23;
    v22 = v0[1];

    return v22();
  }
}

uint64_t sub_10052D45C()
{
  v2 = *v1;
  *(v2 + 440) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_10052D888, 0, 0);
  }

  else
  {
    v3 = swift_task_alloc();
    *(v2 + 448) = v3;
    *v3 = v2;
    v3[1] = sub_10052D5D0;

    return sub_10004BA48(v2 + 16);
  }
}

uint64_t sub_10052D5D0()
{
  *(*v1 + 456) = v0;

  if (v0)
  {
    v2 = sub_10052DA4C;
  }

  else
  {
    v2 = sub_10052D6E4;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10052D6E4()
{
  (*(*(v0 + 416) + 56))(*(v0 + 296), 1, 1, *(v0 + 408));
  v22 = *(v0 + 144);
  v23 = *(v0 + 136);
  v20 = *(v0 + 104);
  v21 = *(v0 + 120);
  v18 = *(v0 + 72);
  v19 = *(v0 + 88);
  v16 = *(v0 + 40);
  v17 = *(v0 + 56);
  v15 = *(v0 + 24);
  v14 = *(v0 + 16);
  v2 = *(v0 + 272);
  v1 = *(v0 + 280);
  v12 = *(v0 + 240);
  v13 = *(v0 + 256);
  v10 = *(v0 + 208);
  v11 = *(v0 + 224);
  v8 = *(v0 + 176);
  v9 = *(v0 + 192);
  v7 = *(v0 + 160);
  v3 = *(v0 + 152);
  v4 = *(v0 + 288);

  *v4 = v3;
  *(v4 + 8) = v7;
  *(v4 + 24) = v8;
  *(v4 + 40) = v9;
  *(v4 + 56) = v10;
  *(v4 + 72) = v11;
  *(v4 + 88) = v12;
  *(v4 + 104) = v13;
  *(v4 + 120) = v2;
  *(v4 + 128) = v1;
  *(v4 + 136) = v14;
  *(v4 + 144) = v15;
  *(v4 + 160) = v16;
  *(v4 + 176) = v17;
  *(v4 + 192) = v18;
  *(v4 + 208) = v19;
  *(v4 + 224) = v20;
  *(v4 + 240) = v21;
  *(v4 + 256) = v23;
  *(v4 + 264) = v22;
  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_10052D888()
{
  (*(v0[45] + 104))(v0[46], enum case for DIPError.Code.unexpectedDaemonState(_:), v0[44]);
  sub_1000402AC(_swiftEmptyArrayStorage);
  sub_10053B9C0(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v1 = v0[1];

  return v1();
}

uint64_t sub_10052DA4C()
{
  sub_10004D8EC((v0 + 19));
  (*(v0[45] + 104))(v0[46], enum case for DIPError.Code.unexpectedDaemonState(_:), v0[44]);
  sub_1000402AC(_swiftEmptyArrayStorage);
  sub_10053B9C0(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v1 = v0[1];

  return v1();
}

uint64_t sub_10052DC18(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100007224(&qword_1008350C0, &unk_1006C0B30);
  v5 = __chkstk_darwin(v4 - 8);
  v31 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v5);
  v9 = &v30 - v8;
  v10 = __chkstk_darwin(v7);
  v12 = &v30 - v11;
  __chkstk_darwin(v10);
  v14 = &v30 - v13;
  v15 = (a1 + *(type metadata accessor for AugmentedProfile(0) + 28));
  v17 = *v15;
  v16 = v15[1];
  v18 = (v2 + OBJC_IVAR____TtC8coreidvd10DIPODNator_profileId);
  *v18 = v17;
  v18[1] = v16;

  sub_10000BBC4(a1, v14, &qword_1008350C0, &unk_1006C0B30);
  v19 = sub_100007224(&qword_100835138, &qword_1006C0B58);
  v20 = *(v19 - 8);
  v21 = *(v20 + 48);
  if (v21(v14, 1, v19) == 1)
  {
    sub_10000BE18(v14, &qword_1008350C0, &unk_1006C0B30);
    v22 = 1;
  }

  else
  {
    JWSSignedJSON.payload.getter();
    v43 = v37;
    v44[0] = v38[0];
    *(v44 + 13) = *(v38 + 13);
    v39 = v33;
    v40 = v34;
    v41 = v35;
    v42 = v36;
    (*(v20 + 8))(v14, v19);
    sub_10009E858(&v39);
    v22 = BYTE9(v44[1]);
  }

  *(v2 + 400) = v22;
  sub_10000BBC4(a1, v12, &qword_1008350C0, &unk_1006C0B30);
  if (v21(v12, 1, v19) == 1)
  {
    sub_10000BE18(v12, &qword_1008350C0, &unk_1006C0B30);
    v23 = 1;
  }

  else
  {
    JWSSignedJSON.payload.getter();
    v43 = v37;
    v44[0] = v38[0];
    *(v44 + 13) = *(v38 + 13);
    v39 = v33;
    v40 = v34;
    v41 = v35;
    v42 = v36;
    (*(v20 + 8))(v12, v19);
    sub_10009E858(&v39);
    v23 = BYTE10(v44[1]);
  }

  *(v2 + 401) = v23;
  sub_10000BBC4(a1, v9, &qword_1008350C0, &unk_1006C0B30);
  if (v21(v9, 1, v19) == 1)
  {
    sub_10000BE18(v9, &qword_1008350C0, &unk_1006C0B30);
    v24 = 0;
    v25 = 0;
  }

  else
  {
    JWSSignedJSON.payload.getter();
    v43 = v37;
    v44[0] = v38[0];
    *(v44 + 13) = *(v38 + 13);
    v39 = v33;
    v40 = v34;
    v41 = v35;
    v42 = v36;
    (*(v20 + 8))(v9, v19);
    sub_10000BBC4(&v39, v32, &qword_100835658, &qword_1006C1A50);
    sub_10009E858(&v39);
    v25 = *(&v39 + 1);
    if (*(&v39 + 1))
    {
      v24 = v39;

      sub_10000BE18(&v39, &qword_100835658, &qword_1006C1A50);
    }

    else
    {
      v24 = 0;
    }
  }

  *(v2 + 112) = v24;
  *(v2 + 120) = v25;

  v26 = v31;
  sub_10000BBC4(a1, v31, &qword_1008350C0, &unk_1006C0B30);
  if (v21(v26, 1, v19) == 1)
  {
    sub_10000BE18(v26, &qword_1008350C0, &unk_1006C0B30);
LABEL_16:
    v28 = 0;
    v27 = 0;
    goto LABEL_17;
  }

  JWSSignedJSON.payload.getter();
  v43 = v37;
  v44[0] = v38[0];
  *(v44 + 13) = *(v38 + 13);
  v39 = v33;
  v40 = v34;
  v41 = v35;
  v42 = v36;
  (*(v20 + 8))(v26, v19);
  sub_10000BBC4(&v39, v32, &qword_100835658, &qword_1006C1A50);
  sub_10009E858(&v39);
  if (!*(&v39 + 1))
  {
    goto LABEL_16;
  }

  v27 = *(&v40 + 1);
  v28 = v40;

  sub_10000BE18(&v39, &qword_100835658, &qword_1006C1A50);
LABEL_17:
  *(v2 + 128) = v28;
  *(v2 + 136) = v27;
}

uint64_t sub_10052E12C()
{

  sub_10000BE18(v0 + 216, &qword_100834EB0, &qword_1006E78F0);

  sub_10000BD94(*(v0 + 272), *(v0 + 280));
  sub_10000BE18(v0 + 288, &qword_100834EB0, &qword_1006E78F0);

  sub_10000BD94(*(v0 + 344), *(v0 + 352));

  sub_10000BE18(v0 + OBJC_IVAR____TtC8coreidvd10DIPODNator_ordRequest, &unk_10084A170, &unk_1006E7900);
  sub_10000BE18(v0 + OBJC_IVAR____TtC8coreidvd10DIPODNator_otdRequest, &qword_100847538, &unk_1006E83A0);

  sub_10053C0AC(*(v0 + OBJC_IVAR____TtC8coreidvd10DIPODNator_clientGUIDFactory), *(v0 + OBJC_IVAR____TtC8coreidvd10DIPODNator_clientGUIDFactory + 8), *(v0 + OBJC_IVAR____TtC8coreidvd10DIPODNator_clientGUIDFactory + 16), *(v0 + OBJC_IVAR____TtC8coreidvd10DIPODNator_clientGUIDFactory + 24), *(v0 + OBJC_IVAR____TtC8coreidvd10DIPODNator_clientGUIDFactory + 32), *(v0 + OBJC_IVAR____TtC8coreidvd10DIPODNator_clientGUIDFactory + 40), *(v0 + OBJC_IVAR____TtC8coreidvd10DIPODNator_clientGUIDFactory + 48), *(v0 + OBJC_IVAR____TtC8coreidvd10DIPODNator_clientGUIDFactory + 56), *(v0 + OBJC_IVAR____TtC8coreidvd10DIPODNator_clientGUIDFactory + 64), *(v0 + OBJC_IVAR____TtC8coreidvd10DIPODNator_clientGUIDFactory + 72));
  return v0;
}

uint64_t sub_10052E2B0()
{
  sub_10052E12C();

  return swift_deallocClassInstance();
}

void sub_10052E330(uint64_t a1)
{
  sub_10052E4CC(319, &qword_100846C00, type metadata accessor for ORDRequest);
  if (v1 <= 0x3F)
  {
    sub_10052E4CC(319, &qword_100846C08, type metadata accessor for OTDRequest);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_10052E4CC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
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

uint64_t sub_10052E520(uint64_t *a1, uint64_t a2)
{
  v35 = a2;
  v3 = type metadata accessor for Logger();
  v32 = *(v3 - 8);
  v33 = v3;
  v4 = __chkstk_darwin(v3);
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v31 - v7;
  v9 = a1[1];
  v10 = a1[2];
  v11 = v10[2];
  v34 = *a1;
  if (v11)
  {
    v12 = v10[5];
    v38 = v10[4];
  }

  else
  {
    v38 = 0;
    v12 = 0;
  }

  v13 = [objc_opt_self() standardUserDefaults];
  v14._countAndFlagsBits = static DaemonInternalDefaultsKeys.logODNBindingValues.getter();
  v15 = NSUserDefaults.internalBool(forKey:)(v14);

  if (v15 && v12)
  {

    defaultLogger()();

    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.debug.getter();

    v18 = os_log_type_enabled(v16, v17);
    v19 = v34;
    if (v18)
    {
      v20 = swift_slowAlloc();
      *&v36 = swift_slowAlloc();
      *v20 = 136315394;
      *(v20 + 4) = sub_100141FE4(v19, v9, &v36);
      *(v20 + 12) = 2080;
      v21 = sub_100141FE4(v38, v12, &v36);

      *(v20 + 14) = v21;
      _os_log_impl(&_mh_execute_header, v16, v17, "ODN bindings user entered keyed-in attribute %s: %s", v20, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
    }

    (*(v32 + 8))(v8, v33);
LABEL_14:
    *(&v37 + 1) = &type metadata for String;
    *&v36 = v38;
    *(&v36 + 1) = v12;
    goto LABEL_15;
  }

  defaultLogger()();

  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.debug.getter();

  v24 = os_log_type_enabled(v22, v23);
  v19 = v34;
  if (v24)
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    *&v36 = v26;
    *v25 = 136315138;
    *(v25 + 4) = sub_100141FE4(v19, v9, &v36);
    _os_log_impl(&_mh_execute_header, v22, v23, "ODN bindings user entered keyed-in attribute %s", v25, 0xCu);
    sub_10000BB78(v26);
  }

  (*(v32 + 8))(v6, v33);
  if (v12)
  {
    goto LABEL_14;
  }

  v36 = 0u;
  v37 = 0u;
LABEL_15:

  sub_10014BD20(&v36, v19, v9);
  *&v36 = v19;
  *(&v36 + 1) = v9;

  v27._countAndFlagsBits = 0x657261685373692ELL;
  v27._object = 0xE900000000000064;
  String.append(_:)(v27);
  v28 = v36;
  v29 = [objc_allocWithZone(NSNumber) initWithBool:1];
  *(&v37 + 1) = sub_10001F8D4(0, &qword_100833A50, NSNumber_ptr);
  *&v36 = v29;
  return sub_10014BD20(&v36, v28, *(&v28 + 1));
}

void sub_10052E9C0(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v56 = a3;
  v55 = a2;
  v54 = a1;
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v61 = *(v7 - 8);
  v62 = v7;
  __chkstk_darwin(v7);
  v59 = &v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = type metadata accessor for DispatchQoS();
  v58 = *(v60 - 8);
  __chkstk_darwin(v60);
  v57 = &v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100007224(&unk_10084A140, &unk_1006DB430);
  __chkstk_darwin(v10 - 8);
  v12 = &v52 - v11;
  v67 = type metadata accessor for ODNAssessmentResult(0);
  v53 = *(v67 - 8);
  __chkstk_darwin(v67);
  v52 = &v52 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for DIPSignpost.Config();
  __chkstk_darwin(v14 - 8);
  v15 = type metadata accessor for DIPSignpost();
  v63 = *(v15 - 8);
  v64 = v15;
  __chkstk_darwin(v15);
  v17 = &v52 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for Logger();
  v65 = *(v18 - 8);
  v66 = v18;
  v19 = __chkstk_darwin(v18);
  v21 = &v52 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v23 = &v52 - v22;
  v24 = [objc_opt_self() standardUserDefaults];
  v25._countAndFlagsBits = static DaemonInternalDefaultsKeys.disableODIN.getter();
  v26 = NSUserDefaults.internalBool(forKey:)(v25);

  if (!v26)
  {
    static DaemonSignposts.getVerificationResultFetchAssesssment.getter();
    DIPSignpost.init(_:)();
    v34 = v17;
    if (*(v5 + OBJC_IVAR____TtC8coreidvd27AssessDuringProofingODNator_odnNatorState) != 1)
    {
      *(v5 + OBJC_IVAR____TtC8coreidvd27AssessDuringProofingODNator_odnNatorState) = 1;
      v36 = dispatch_semaphore_create(0);
      v37 = *(v5 + 368);
      *(v5 + 368) = v36;

      v38 = dispatch_semaphore_create(0);
      v39 = *(v5 + 376);
      *(v5 + 376) = v38;

      v70[0] = sub_10051F568(v54, v55, 0);
      if (v56)
      {
        sub_10051B690(v56, v70);
      }

      sub_10051F0D0(v70, 0, 0);
      v40 = v70[0];
      v41 = swift_allocObject();
      *(v41 + 16) = v5;
      *(v41 + 24) = v40;
      aBlock[4] = sub_10053C07C;
      aBlock[5] = v41;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100503A7C;
      aBlock[3] = &unk_100816290;
      v42 = _Block_copy(aBlock);

      v43 = v57;
      static DispatchQoS.unspecified.getter();
      v68 = _swiftEmptyArrayStorage;
      sub_10053B9C0(&unk_1008341E0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
      sub_100007224(&qword_100848A40, &unk_1006BF8C0);
      sub_1000BA30C(&qword_1008341F0, &qword_100848A40, &unk_1006BF8C0, &protocol conformance descriptor for [A]);
      v44 = v59;
      v45 = v62;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v42);
      (*(v61 + 8))(v44, v45);
      (*(v58 + 8))(v43, v60);

      *(a4 + 32) = 0;
      *a4 = 0u;
      *(a4 + 16) = 0u;
      v46 = *(v67 + 44);
      v47 = type metadata accessor for AssessmentAdditionalInfo(0);
      (*(*(v47 - 8) + 56))(a4 + v46, 1, 1, v47);
      *(a4 + 104) = 0u;
      *(a4 + 88) = 0u;
      *(a4 + 72) = 0u;
      *(a4 + 56) = 0u;
      *(a4 + 40) = 0u;
      *(a4 + 128) = 0;
      *(a4 + 136) = 0;
      *(a4 + 120) = 1;
      *(a4 + 144) = 0;
      *(a4 + 152) = 0u;
      *(a4 + 168) = 0u;
      *(a4 + 184) = 0u;
      *(a4 + 200) = 0u;
      *(a4 + 216) = 0u;
      goto LABEL_17;
    }

    v35 = OBJC_IVAR____TtC8coreidvd27AssessDuringProofingODNator_assessmentResult;
    swift_beginAccess();
    sub_10000BBC4(v5 + v35, v12, &unk_10084A140, &unk_1006DB430);
    if ((*(v53 + 48))(v12, 1, v67) == 1)
    {
      sub_10000BE18(v12, &unk_10084A140, &unk_1006DB430);
    }

    else
    {
      v48 = v52;
      sub_100537B28(v12, v52, type metadata accessor for ODNAssessmentResult);
      if (*(v48 + 120) != 1)
      {
        defaultLogger()();
        v49 = Logger.logObject.getter();
        v50 = static os_log_type_t.info.getter();
        if (os_log_type_enabled(v49, v50))
        {
          v51 = swift_slowAlloc();
          *v51 = 0;
          _os_log_impl(&_mh_execute_header, v49, v50, "fetchAssessment: previous assessment contains error.", v51, 2u);
        }

        (*(v65 + 8))(v21, v66);
        sub_100537B28(v48, a4, type metadata accessor for ODNAssessmentResult);
        goto LABEL_17;
      }

      sub_100537B90(v48, type metadata accessor for ODNAssessmentResult);
    }

    sub_100531D78(a4);
LABEL_17:
    DIPSignpost.end(workflowID:isBackground:)(0, 2);
    (*(v63 + 8))(v34, v64);
    return;
  }

  defaultLogger()();
  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    *v29 = 0;
    _os_log_impl(&_mh_execute_header, v27, v28, "Skipping ODIN due to setting", v29, 2u);
  }

  (*(v65 + 8))(v23, v66);
  swift_beginAccess();
  sub_10000BBC4(v5 + 216, a4, &qword_100834EB0, &qword_1006E78F0);
  v31 = *(v5 + OBJC_IVAR____TtC8coreidvd10DIPODNator_profileId);
  v30 = *(v5 + OBJC_IVAR____TtC8coreidvd10DIPODNator_profileId + 8);
  v32 = *(v67 + 44);
  v33 = type metadata accessor for AssessmentAdditionalInfo(0);
  (*(*(v33 - 8) + 56))(a4 + v32, 1, 1, v33);
  *(a4 + 104) = 0u;
  *(a4 + 88) = 0u;
  *(a4 + 72) = 0u;
  *(a4 + 56) = 0u;
  *(a4 + 40) = 0u;
  *(a4 + 128) = 0;
  *(a4 + 136) = 0;
  *(a4 + 120) = 1;
  *(a4 + 144) = 0;
  *(a4 + 152) = 0u;
  *(a4 + 168) = 0u;
  *(a4 + 184) = 0u;
  *(a4 + 200) = 0u;
  *(a4 + 216) = v31;
  *(a4 + 224) = v30;
}

void sub_10052F378(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v71 = a3;
  v72 = a2;
  v73 = a1;
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v78 = *(v5 - 8);
  v79 = v5;
  __chkstk_darwin(v5);
  v76 = &v64 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = type metadata accessor for DispatchQoS();
  v75 = *(v77 - 8);
  __chkstk_darwin(v77);
  v74 = &v64 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100007224(&unk_10084A130, &qword_1006E9ED0);
  v68 = *(v8 - 8);
  v69 = *(v68 + 64);
  __chkstk_darwin(v8 - 8);
  v70 = &v64 - v9;
  v10 = sub_100007224(&unk_10084A160, &unk_1006E7978);
  v66 = *(v10 - 8);
  v11 = *(v66 + 64);
  __chkstk_darwin(v10 - 8);
  v67 = &v64 - v12;
  v13 = sub_100007224(&unk_10084A140, &unk_1006DB430);
  __chkstk_darwin(v13 - 8);
  v15 = &v64 - v14;
  v85 = type metadata accessor for ODNAssessmentResult(0);
  v65 = *(v85 - 8);
  __chkstk_darwin(v85);
  v64 = &v64 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for DIPSignpost.Config();
  __chkstk_darwin(v17 - 8);
  v18 = type metadata accessor for DIPSignpost();
  v80 = *(v18 - 8);
  v81 = v18;
  __chkstk_darwin(v18);
  v20 = &v64 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for Logger();
  v82 = *(v21 - 8);
  v83 = v21;
  v22 = __chkstk_darwin(v21);
  v24 = &v64 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v26 = &v64 - v25;
  v27 = [objc_opt_self() standardUserDefaults];
  v28._countAndFlagsBits = static DaemonInternalDefaultsKeys.disableODIN.getter();
  v29 = NSUserDefaults.internalBool(forKey:)(v28);

  if (!v29)
  {
    static DaemonSignposts.getVerificationResultFetchAssesssment.getter();
    DIPSignpost.init(_:)();
    v38 = v84;
    v39 = v20;
    if (*(v84 + OBJC_IVAR____TtC8coreidvd27AssessDuringProofingODNator_odnNatorState) != 1)
    {
      *(v84 + OBJC_IVAR____TtC8coreidvd27AssessDuringProofingODNator_odnNatorState) = 1;
      v41 = dispatch_semaphore_create(0);
      v42 = *(v38 + 368);
      *(v38 + 368) = v41;

      v43 = dispatch_semaphore_create(0);
      v44 = *(v38 + 376);
      *(v38 + 376) = v43;

      v82 = *(v38 + OBJC_IVAR____TtC8coreidvd27AssessDuringProofingODNator_workQueue);
      v45 = v67;
      sub_10000BBC4(v71, v67, &unk_10084A160, &unk_1006E7978);
      v46 = v70;
      sub_10000BBC4(v72, v70, &unk_10084A130, &qword_1006E9ED0);
      v47 = (*(v66 + 80) + 16) & ~*(v66 + 80);
      v48 = (v11 + v47 + 7) & 0xFFFFFFFFFFFFFFF8;
      v49 = (*(v68 + 80) + v48 + 8) & ~*(v68 + 80);
      v50 = (v69 + v49 + 7) & 0xFFFFFFFFFFFFFFF8;
      v51 = swift_allocObject();
      v83 = v39;
      v52 = v51;
      sub_1000B1FC8(v45, v51 + v47, &unk_10084A160, &unk_1006E7978);
      *(v52 + v48) = v38;
      sub_1000B1FC8(v46, v52 + v49, &unk_10084A130, &qword_1006E9ED0);
      *(v52 + v50) = v73;
      aBlock[4] = sub_10053BE1C;
      aBlock[5] = v52;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100503A7C;
      aBlock[3] = &unk_100816240;
      v53 = _Block_copy(aBlock);

      v54 = v74;
      static DispatchQoS.unspecified.getter();
      v86 = _swiftEmptyArrayStorage;
      sub_10053B9C0(&unk_1008341E0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
      sub_100007224(&qword_100848A40, &unk_1006BF8C0);
      sub_1000BA30C(&qword_1008341F0, &qword_100848A40, &unk_1006BF8C0, &protocol conformance descriptor for [A]);
      v55 = v76;
      v56 = v79;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v53);
      (*(v78 + 8))(v55, v56);
      (*(v75 + 8))(v54, v77);

      *(a4 + 32) = 0;
      *a4 = 0u;
      *(a4 + 16) = 0u;
      v57 = *(v85 + 44);
      v58 = type metadata accessor for AssessmentAdditionalInfo(0);
      (*(*(v58 - 8) + 56))(a4 + v57, 1, 1, v58);
      *(a4 + 104) = 0u;
      *(a4 + 88) = 0u;
      *(a4 + 72) = 0u;
      *(a4 + 56) = 0u;
      *(a4 + 40) = 0u;
      *(a4 + 128) = 0;
      *(a4 + 136) = 0;
      *(a4 + 120) = 1;
      *(a4 + 144) = 0;
      *(a4 + 152) = 0u;
      *(a4 + 168) = 0u;
      *(a4 + 184) = 0u;
      *(a4 + 200) = 0u;
      *(a4 + 216) = 0u;
      v59 = v83;
      DIPSignpost.end(workflowID:isBackground:)(0, 2);
      (*(v80 + 8))(v59, v81);
      return;
    }

    v40 = OBJC_IVAR____TtC8coreidvd27AssessDuringProofingODNator_assessmentResult;
    swift_beginAccess();
    sub_10000BBC4(v38 + v40, v15, &unk_10084A140, &unk_1006DB430);
    if ((*(v65 + 48))(v15, 1, v85) == 1)
    {
      sub_10000BE18(v15, &unk_10084A140, &unk_1006DB430);
    }

    else
    {
      v60 = v64;
      sub_100537B28(v15, v64, type metadata accessor for ODNAssessmentResult);
      if (*(v60 + 120) != 1)
      {
        defaultLogger()();
        v61 = Logger.logObject.getter();
        v62 = static os_log_type_t.info.getter();
        if (os_log_type_enabled(v61, v62))
        {
          v63 = swift_slowAlloc();
          *v63 = 0;
          _os_log_impl(&_mh_execute_header, v61, v62, "fetchAssessment: previous assessment contains error.", v63, 2u);
        }

        (*(v82 + 8))(v24, v83);
        sub_100537B28(v60, a4, type metadata accessor for ODNAssessmentResult);
        goto LABEL_15;
      }

      sub_100537B90(v60, type metadata accessor for ODNAssessmentResult);
    }

    sub_100531D78(a4);
LABEL_15:
    DIPSignpost.end(workflowID:isBackground:)(0, 2);
    (*(v80 + 8))(v20, v81);
    return;
  }

  v30 = v84;
  defaultLogger()();
  v31 = Logger.logObject.getter();
  v32 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    *v33 = 0;
    _os_log_impl(&_mh_execute_header, v31, v32, "Skipping ODIN due to setting", v33, 2u);
  }

  (*(v82 + 8))(v26, v83);
  swift_beginAccess();
  sub_10000BBC4(v30 + 216, a4, &qword_100834EB0, &qword_1006E78F0);
  v35 = *(v30 + OBJC_IVAR____TtC8coreidvd10DIPODNator_profileId);
  v34 = *(v30 + OBJC_IVAR____TtC8coreidvd10DIPODNator_profileId + 8);
  v36 = *(v85 + 44);
  v37 = type metadata accessor for AssessmentAdditionalInfo(0);
  (*(*(v37 - 8) + 56))(a4 + v36, 1, 1, v37);
  *(a4 + 104) = 0u;
  *(a4 + 88) = 0u;
  *(a4 + 72) = 0u;
  *(a4 + 56) = 0u;
  *(a4 + 40) = 0u;
  *(a4 + 128) = 0;
  *(a4 + 136) = 0;
  *(a4 + 120) = 1;
  *(a4 + 144) = 0;
  *(a4 + 152) = 0u;
  *(a4 + 168) = 0u;
  *(a4 + 184) = 0u;
  *(a4 + 200) = 0u;
  *(a4 + 216) = v35;
  *(a4 + 224) = v34;
}

uint64_t sub_10052FF0C(uint64_t a1, uint64_t a2, uint64_t a3, NSObject *a4)
{
  v107 = a4;
  v115 = a3;
  v119 = a2;
  v124 = a1;
  v4 = type metadata accessor for DIPSignpost.Config();
  __chkstk_darwin(v4 - 8);
  v106 = &v95 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DIPSignpost();
  v109 = *(v6 - 8);
  v110 = v6;
  __chkstk_darwin(v6);
  v108 = &v95 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100007224(&unk_10084A130, &qword_1006E9ED0);
  __chkstk_darwin(v8 - 8);
  v116 = &v95 - v9;
  v10 = type metadata accessor for DIPPregeneratedAssessment(0);
  v113 = *(v10 - 8);
  v114 = v10;
  __chkstk_darwin(v10);
  v105 = &v95 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DIPError.Code();
  v98 = *(v12 - 8);
  v99 = v12;
  __chkstk_darwin(v12);
  v100 = &v95 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_100007224(&unk_10084A140, &unk_1006DB430);
  __chkstk_darwin(v14 - 8);
  v117 = (&v95 - v15);
  v120 = sub_100007224(&qword_100835138, &qword_1006C0B58);
  v118 = *(v120 - 8);
  v16 = __chkstk_darwin(v120);
  v102 = &v95 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v97 = &v95 - v18;
  v121 = type metadata accessor for Logger();
  v125 = *(v121 - 8);
  v19 = __chkstk_darwin(v121);
  v111 = &v95 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __chkstk_darwin(v19);
  v123 = &v95 - v22;
  __chkstk_darwin(v21);
  v103 = &v95 - v23;
  v24 = type metadata accessor for AugmentedProfile(0);
  v25 = *(v24 - 8);
  v26 = __chkstk_darwin(v24);
  v104 = &v95 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v29 = &v95 - v28;
  v30 = sub_100007224(&unk_10084A160, &unk_1006E7978);
  v31 = __chkstk_darwin(v30 - 8);
  v112 = (&v95 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0));
  v33 = __chkstk_darwin(v31);
  v101 = &v95 - v34;
  v35 = __chkstk_darwin(v33);
  v37 = &v95 - v36;
  __chkstk_darwin(v35);
  v39 = &v95 - v38;
  v40 = *(v25 + 56);
  v40(&v95 - v38, 1, 1, v24);
  sub_10000BBC4(v124, v37, &unk_10084A160, &unk_1006E7978);
  v41 = *(v25 + 48);
  v124 = v25 + 48;
  v122 = v41;
  if (v41(v37, 1, v24) == 1)
  {
    v96 = v39;
    sub_10000BE18(v37, &unk_10084A160, &unk_1006E7978);
    v42 = v119;

    sub_100007224(&qword_10084A1D0, &qword_1006DB410);
    runAsyncAndBlock<A>(file:function:line:_:)();

    v43 = v123;
    if (*(&v134 + 1))
    {
      v44 = v104;
      sub_10053CD68(v104);

      sub_10052DC18(v44);
      v56 = v101;
      sub_100537B28(v44, v101, type metadata accessor for AugmentedProfile);
      v40(v56, 0, 1, v24);
      v57 = v42;
      v58 = v96;
      sub_1000B2764(v56, v96, &unk_10084A160, &unk_1006E7978);
    }

    else
    {
      v57 = v42;
      v58 = v96;
    }
  }

  else
  {
    sub_100537B28(v37, v29, type metadata accessor for AugmentedProfile);
    sub_10000BE18(v39, &unk_10084A160, &unk_1006E7978);
    sub_10053BFD8(v29, v39);
    v40(v39, 0, 1, v24);
    v57 = v119;
    sub_10052DC18(v29);
    sub_100537B90(v29, type metadata accessor for AugmentedProfile);
    v58 = v39;
    v43 = v123;
  }

  defaultLogger()();
  v45 = Logger.logObject.getter();
  v46 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v45, v46))
  {
    v47 = 4271950;
    v48 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    v140[0] = v49;
    *v48 = 136315138;
    swift_beginAccess();
    if (v122(v58, 1, v24))
    {
      v50 = v58;
      v51 = 0xE300000000000000;
    }

    else
    {
      v104 = v24;
      v54 = v118;
      v55 = v120;
      if ((*(v118 + 48))(v58, 1, v120))
      {
        v50 = v58;
        v51 = 0xE300000000000000;
      }

      else
      {
        v59 = v97;
        v50 = v58;
        (*(v54 + 16))(v97, v58, v55);
        JWSSignedJSON.payload.getter();
        (*(v54 + 8))(v59, v55);
        v138 = v132;
        *v139 = v133[0];
        *&v139[13] = *(v133 + 13);
        v134 = v128;
        v135 = v129;
        v136 = v130;
        v137 = v131;
        sub_10009E858(&v134);
        v60 = 0xD000000000000018;
        v61 = 0x80000001006F94E0;
        if (v139[24] != 1)
        {
          v60 = 0x6146737961776C61;
          v61 = 0xEE006B6361626C6CLL;
        }

        if (v139[24])
        {
          v47 = v60;
        }

        else
        {
          v47 = 0x746C7561666564;
        }

        if (v139[24])
        {
          v51 = v61;
        }

        else
        {
          v51 = 0xE700000000000000;
        }
      }

      v57 = v119;
      v24 = v104;
    }

    v62 = sub_100141FE4(v47, v51, v140);

    *(v48 + 4) = v62;
    _os_log_impl(&_mh_execute_header, v45, v46, "fetchAssessment: requirePregenerated set at : %s", v48, 0xCu);
    sub_10000BB78(v49);

    v52 = *(v125 + 8);
    v53 = v121;
    v52(v123, v121);
    v58 = v50;
  }

  else
  {

    v52 = *(v125 + 8);
    v53 = v121;
    v52(v43, v121);
  }

  swift_beginAccess();
  v63 = v122(v58, 1, v24);
  v64 = v116;
  v65 = v120;
  v66 = v118;
  if (v63 || (*(v118 + 48))(v58, 1, v120))
  {
    goto LABEL_24;
  }

  v82 = v102;
  (*(v66 + 16))(v102, v58, v65);
  JWSSignedJSON.payload.getter();
  (*(v66 + 8))(v82, v65);
  v138 = v132;
  *v139 = v133[0];
  *&v139[13] = *(v133 + 13);
  v134 = v128;
  v135 = v129;
  v136 = v130;
  v137 = v131;
  sub_10009E858(&v134);
  if (v139[24] && v139[24] != 1)
  {
  }

  else
  {
    v83 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v83 & 1) == 0)
    {
LABEL_24:
      sub_10000BBC4(v115, v64, &unk_10084A130, &qword_1006E9ED0);
      if ((*(v113 + 48))(v64, 1, v114) == 1)
      {
        sub_10000BE18(v64, &unk_10084A130, &qword_1006E9ED0);
        defaultLogger()();
        v67 = Logger.logObject.getter();
        v68 = static os_log_type_t.info.getter();
        if (os_log_type_enabled(v67, v68))
        {
          v69 = swift_slowAlloc();
          *v69 = 0;
          _os_log_impl(&_mh_execute_header, v67, v68, "No Pregenerated available, computing a new one", v69, 2u);
        }

        v52(v111, v53);
        static DaemonSignposts.getVerificationResultFetchAssesssmentProofing.getter();
        v70 = v108;
        DIPSignpost.init(_:)();
        v134 = 0u;
        v135 = 0u;
        *&v137 = 0;
        v136 = 1uLL;
        BYTE8(v137) = 0;
        v71 = v112;
        sub_10000BBC4(v58, v112, &unk_10084A160, &unk_1006E7978);
        v72 = v117;
        sub_100522400(v107, 0, &v134, v71, 1, v117);
        sub_10000BE18(v71, &unk_10084A160, &unk_1006E7978);
        v73 = type metadata accessor for ODNAssessmentResult(0);
        (*(*(v73 - 8) + 56))(v72, 0, 1, v73);
        v74 = OBJC_IVAR____TtC8coreidvd27AssessDuringProofingODNator_assessmentResult;
        swift_beginAccess();
        sub_1000B2764(v72, v57 + v74, &unk_10084A140, &unk_1006DB430);
        swift_endAccess();
        DIPSignpost.end(workflowID:isBackground:)(0, 2);
        (*(v109 + 8))(v70, v110);
      }

      else
      {
        v75 = v105;
        sub_100537B28(v64, v105, type metadata accessor for DIPPregeneratedAssessment);
        v76 = v112;
        sub_10000BBC4(v58, v112, &unk_10084A160, &unk_1006E7978);
        v77 = v117;
        sub_100520B1C(v75, v76, v117);
        sub_10000BE18(v76, &unk_10084A160, &unk_1006E7978);
        sub_100537B90(v75, type metadata accessor for DIPPregeneratedAssessment);
        v78 = type metadata accessor for ODNAssessmentResult(0);
        (*(*(v78 - 8) + 56))(v77, 0, 1, v78);
        v79 = OBJC_IVAR____TtC8coreidvd27AssessDuringProofingODNator_assessmentResult;
        swift_beginAccess();
        sub_1000B2764(v77, v57 + v79, &unk_10084A140, &unk_1006DB430);
        swift_endAccess();
      }

      v80 = v58;
      return sub_10000BE18(v80, &unk_10084A160, &unk_1006E7978);
    }
  }

  (*(v98 + 104))(v100, enum case for DIPError.Code.odnForcedFallback(_:), v99);
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_10053B9C0(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
  v84 = swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  sub_10051EB94(v84, 2, v126);

  swift_beginAccess();
  v85 = v117;
  sub_10000BBC4(v57 + 216, v117, &qword_100834EB0, &qword_1006E78F0);
  v87 = *(v57 + OBJC_IVAR____TtC8coreidvd10DIPODNator_profileId);
  v86 = *(v57 + OBJC_IVAR____TtC8coreidvd10DIPODNator_profileId + 8);
  v88 = type metadata accessor for ODNAssessmentResult(0);
  v89 = *(v88 + 44);
  v90 = type metadata accessor for AssessmentAdditionalInfo(0);
  (*(*(v90 - 8) + 56))(v85 + v89, 1, 1, v90);
  v91 = v126[1];
  *(v85 + 11) = v126[0];
  *(v85 + 9) = 0u;
  *(v85 + 7) = 0u;
  *(v85 + 5) = 0u;
  *(v85 + 13) = v91;
  *(v85 + 15) = v127[0];
  *(v85 + 129) = *(v127 + 9);
  *(v85 + 19) = 0u;
  *(v85 + 21) = 0u;
  *(v85 + 23) = 0u;
  *(v85 + 25) = 0u;
  v85[27] = v87;
  v85[28] = v86;
  (*(*(v88 - 8) + 56))(v85, 0, 1, v88);
  v92 = OBJC_IVAR____TtC8coreidvd27AssessDuringProofingODNator_assessmentResult;
  swift_beginAccess();

  sub_1000B2764(v85, v57 + v92, &unk_10084A140, &unk_1006DB430);
  swift_endAccess();
  v93 = *(v57 + 376);
  if (v93)
  {
    v94 = v93;
    OS_dispatch_semaphore.signal()();
  }

  v80 = v58;
  return sub_10000BE18(v80, &unk_10084A160, &unk_1006E7978);
}

void sub_100531168(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v6 = v5;
  v62 = a3;
  v63 = a4;
  v60 = a1;
  v61 = a2;
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v68 = *(v8 - 8);
  v69 = v8;
  __chkstk_darwin(v8);
  v66 = &v57 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = type metadata accessor for DispatchQoS();
  v65 = *(v67 - 8);
  __chkstk_darwin(v67);
  v64 = &v57 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100007224(&unk_10084A140, &unk_1006DB430);
  __chkstk_darwin(v11 - 8);
  v13 = &v57 - v12;
  v70 = type metadata accessor for ODNAssessmentResult(0);
  v59 = *(v70 - 8);
  __chkstk_darwin(v70);
  v58 = &v57 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for Logger();
  v16 = *(v15 - 8);
  v17 = __chkstk_darwin(v15);
  v57 = &v57 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v17);
  v21 = &v57 - v20;
  __chkstk_darwin(v19);
  v23 = &v57 - v22;
  v24 = [objc_opt_self() standardUserDefaults];
  v25._countAndFlagsBits = static DaemonInternalDefaultsKeys.disableODIN.getter();
  v26 = NSUserDefaults.internalBool(forKey:)(v25);

  if (v26)
  {
    defaultLogger()();
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&_mh_execute_header, v27, v28, "Skipping ODIN due to setting", v29, 2u);
    }

    (*(v16 + 8))(v23, v15);
    swift_beginAccess();
    sub_10000BBC4(v6 + 216, a5, &qword_100834EB0, &qword_1006E78F0);
    v30 = v6 + OBJC_IVAR____TtC8coreidvd10DIPODNator_profileId;
    v32 = *(v6 + OBJC_IVAR____TtC8coreidvd10DIPODNator_profileId);
    v31 = *(v30 + 8);
    v33 = *(v70 + 44);
    v34 = type metadata accessor for AssessmentAdditionalInfo(0);
    (*(*(v34 - 8) + 56))(a5 + v33, 1, 1, v34);
    *(a5 + 104) = 0u;
    *(a5 + 88) = 0u;
    *(a5 + 72) = 0u;
    *(a5 + 56) = 0u;
    *(a5 + 40) = 0u;
    *(a5 + 128) = 0;
    *(a5 + 136) = 0;
    *(a5 + 120) = 1;
    *(a5 + 144) = 0;
    *(a5 + 152) = 0u;
    *(a5 + 168) = 0u;
    *(a5 + 184) = 0u;
    *(a5 + 200) = 0u;
    *(a5 + 216) = v32;
    *(a5 + 224) = v31;

    return;
  }

  defaultLogger()();
  v35 = Logger.logObject.getter();
  v36 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    *v37 = 0;
    _os_log_impl(&_mh_execute_header, v35, v36, "Fetching identity profile assessment", v37, 2u);
  }

  v38 = *(v16 + 8);
  v38(v21, v15);
  if (*(v6 + OBJC_IVAR____TtC8coreidvd27AssessDuringProofingODNator_odnNatorState) != 1)
  {
    *(v6 + OBJC_IVAR____TtC8coreidvd27AssessDuringProofingODNator_odnNatorState) = 1;
    v40 = dispatch_semaphore_create(0);
    v41 = *(v6 + 368);
    *(v6 + 368) = v40;

    v42 = dispatch_semaphore_create(0);
    v43 = *(v6 + 376);
    *(v6 + 376) = v42;

    v44 = sub_100536158(v60, v61, v62, v63);
    v45 = swift_allocObject();
    *(v45 + 16) = v6;
    *(v45 + 24) = v44;
    aBlock[4] = sub_10053B96C;
    aBlock[5] = v45;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100503A7C;
    aBlock[3] = &unk_100816128;
    v46 = _Block_copy(aBlock);

    v47 = v64;
    static DispatchQoS.unspecified.getter();
    v71 = _swiftEmptyArrayStorage;
    sub_10053B9C0(&unk_1008341E0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_100007224(&qword_100848A40, &unk_1006BF8C0);
    sub_1000BA30C(&qword_1008341F0, &qword_100848A40, &unk_1006BF8C0, &protocol conformance descriptor for [A]);
    v48 = v66;
    v49 = v69;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v46);
    (*(v68 + 8))(v48, v49);
    (*(v65 + 8))(v47, v67);

    *(a5 + 32) = 0;
    *a5 = 0u;
    *(a5 + 16) = 0u;
    v50 = *(v70 + 44);
    v51 = type metadata accessor for AssessmentAdditionalInfo(0);
    (*(*(v51 - 8) + 56))(a5 + v50, 1, 1, v51);
    *(a5 + 104) = 0u;
    *(a5 + 88) = 0u;
    *(a5 + 72) = 0u;
    *(a5 + 56) = 0u;
    *(a5 + 40) = 0u;
    *(a5 + 128) = 0;
    *(a5 + 136) = 0;
    *(a5 + 120) = 1;
    *(a5 + 144) = 0;
    *(a5 + 152) = 0u;
    *(a5 + 168) = 0u;
    *(a5 + 184) = 0u;
    *(a5 + 200) = 0u;
    *(a5 + 216) = 0u;
    return;
  }

  v39 = OBJC_IVAR____TtC8coreidvd27AssessDuringProofingODNator_assessmentResult;
  swift_beginAccess();
  sub_10000BBC4(v6 + v39, v13, &unk_10084A140, &unk_1006DB430);
  if ((*(v59 + 48))(v13, 1, v70) == 1)
  {
    sub_10000BE18(v13, &unk_10084A140, &unk_1006DB430);
LABEL_13:
    sub_100531D78(a5);
    return;
  }

  v52 = v58;
  sub_100537B28(v13, v58, type metadata accessor for ODNAssessmentResult);
  if (*(v52 + 120) == 1)
  {
    sub_100537B90(v52, type metadata accessor for ODNAssessmentResult);
    goto LABEL_13;
  }

  v53 = v57;
  defaultLogger()();
  v54 = Logger.logObject.getter();
  v55 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v54, v55))
  {
    v56 = swift_slowAlloc();
    *v56 = 0;
    _os_log_impl(&_mh_execute_header, v54, v55, "fetchAssessment: previous assessment contains error.", v56, 2u);
  }

  v38(v53, v15);
  sub_100537B28(v52, a5, type metadata accessor for ODNAssessmentResult);
}

uint64_t sub_100531A84(uint64_t a1, NSObject *a2, void (*a3)(uint64_t))
{
  v6 = sub_100007224(&unk_10084A160, &unk_1006E7978);
  __chkstk_darwin(v6 - 8);
  v8 = (v23 - v7 + 16);
  v9 = sub_100007224(&unk_10084A140, &unk_1006DB430);
  __chkstk_darwin(v9 - 8);
  v11 = (v23 - v10 + 16);
  v12 = type metadata accessor for DIPSignpost.Config();
  __chkstk_darwin(v12 - 8);
  v13 = type metadata accessor for DIPSignpost();
  v14 = *(v13 - 8);
  v15 = __chkstk_darwin(v13);
  v17 = v23 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0) + 16;
  a3(v15);
  DIPSignpost.init(_:)();
  memset(v23, 0, sizeof(v23));
  v24 = 1;
  v18 = type metadata accessor for AugmentedProfile(0);
  v25 = 0;
  v26 = 0;
  v27 = 0;
  (*(*(v18 - 8) + 56))(v8, 1, 1, v18);
  sub_100522400(a2, 0, v23, v8, 1, v11);
  sub_10000BE18(v8, &unk_10084A160, &unk_1006E7978);
  v19 = type metadata accessor for ODNAssessmentResult(0);
  (*(*(v19 - 8) + 56))(v11, 0, 1, v19);
  v20 = OBJC_IVAR____TtC8coreidvd27AssessDuringProofingODNator_assessmentResult;
  swift_beginAccess();
  sub_1000B2764(v11, a1 + v20, &unk_10084A140, &unk_1006DB430);
  swift_endAccess();
  DIPSignpost.end(workflowID:isBackground:)(0, 2);
  return (*(v14 + 8))(v17, v13);
}

uint64_t sub_100531D78@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v87 = a1;
  v82 = type metadata accessor for DIPError.Code();
  v81 = *(v82 - 8);
  __chkstk_darwin(v82);
  v80 = &v74 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Logger();
  v85 = *(v4 - 8);
  v86 = v4;
  v5 = __chkstk_darwin(v4);
  v83 = &v74 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v5);
  v84 = &v74 - v8;
  __chkstk_darwin(v7);
  v76 = &v74 - v9;
  v88 = type metadata accessor for ODNAssessmentResult(0);
  v78 = *(v88 - 8);
  __chkstk_darwin(v88);
  v75 = &v74 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100007224(&unk_10084A140, &unk_1006DB430);
  v12 = __chkstk_darwin(v11 - 8);
  v77 = &v74 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v79 = &v74 - v14;
  sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
  v15 = sub_100007224(&qword_1008341D0, &unk_1006BF8D0);
  v16 = *(*(v15 - 8) + 72);
  v17 = (*(*(v15 - 8) + 80) + 32) & ~*(*(v15 - 8) + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_1006BF740;
  v19 = v18 + v17;
  v20 = (v19 + *(v15 + 48));
  v21 = enum case for DIPError.PropertyKey.spWorkflowID(_:);
  v22 = type metadata accessor for DIPError.PropertyKey();
  v23 = *(*(v22 - 8) + 104);
  (v23)(v19, v21, v22);
  v24 = *(v2 + 32);
  v25 = *(v2 + 40);
  v20[3] = &type metadata for String;
  v20[4] = &protocol witness table for String;
  *v20 = v24;
  v20[1] = v25;
  v26 = v19 + v16;
  v27 = v2;
  v28 = v26 + *(v15 + 48);
  v23();
  v29 = *(v2 + 208);
  *(v28 + 24) = &type metadata for DIPState;
  *(v28 + 32) = sub_10053B8D4();
  *v28 = v29;

  v30 = sub_10003C9C0(v18);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v31 = *(v2 + 376);
  if (!v31)
  {
    (*(v81 + 104))(v80, enum case for DIPError.Code.odnSemaphoreNotSet(_:), v82);
    type metadata accessor for DIPError();
    sub_10053B9C0(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    v33 = swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    v82 = 0;
    v59 = 0;
LABEL_4:
    v34 = v84;
    defaultLogger()();
    swift_errorRetain();
    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v35, v36))
    {
      v37 = v59;
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      aBlock[0] = v39;
      *v38 = 136446210;
      aBlock[6] = v33;
      swift_errorRetain();
      sub_100007224(&qword_100833B90, &qword_1006D95C0);
      v40 = String.init<A>(reflecting:)();
      v42 = v27;
      v43 = sub_100141FE4(v40, v41, aBlock);

      *(v38 + 4) = v43;
      v27 = v42;
      _os_log_impl(&_mh_execute_header, v35, v36, "waitAndGetAssessmentInProcess: ignoring failed to generate assessment data. error %{public}s", v38, 0xCu);
      sub_10000BB78(v39);

      v59 = v37;
    }

    v44 = v86;
    v45 = *(v85 + 8);
    v45(v34, v86);
    v46 = v83;
    defaultLogger()();
    DIPRecordError(_:message:log:)();
    v45(v46, v44);
    sub_10051EB94(v33, 2, v90);
    v47 = *(v27 + 368);
    if (v47)
    {
      v48 = v47;
      OS_dispatch_semaphore.signal()();
    }

    else
    {
    }

    swift_beginAccess();
    v49 = v87;
    sub_10000BBC4(v27 + 216, v87, &qword_100834EB0, &qword_1006E78F0);
    v51 = *(v27 + OBJC_IVAR____TtC8coreidvd10DIPODNator_profileId);
    v50 = *(v27 + OBJC_IVAR____TtC8coreidvd10DIPODNator_profileId + 8);
    v52 = *(v88 + 44);
    v53 = type metadata accessor for AssessmentAdditionalInfo(0);
    (*(*(v53 - 8) + 56))(v49 + v52, 1, 1, v53);
    v54 = v90[1];
    *(v49 + 88) = v90[0];
    *(v49 + 72) = 0u;
    *(v49 + 56) = 0u;
    *(v49 + 40) = 0u;
    *(v49 + 104) = v54;
    *(v49 + 120) = v91[0];
    *(v49 + 129) = *(v91 + 9);
    *(v49 + 152) = 0u;
    *(v49 + 168) = 0u;
    *(v49 + 184) = 0u;
    *(v49 + 200) = 0u;
    *(v49 + 216) = v51;
    *(v49 + 224) = v50;

    return sub_10001FE8C(v82, v59);
  }

  v32 = v31;
  sub_100543F04(v32, v29, v30, 0);
  v74 = v32;
  v55 = v78;
  v56 = v79;
  v57 = v88;
  (*(v78 + 56))(v79, 1, 1, v88);
  v58 = *(v27 + OBJC_IVAR____TtC8coreidvd27AssessDuringProofingODNator_workQueue);
  v59 = swift_allocObject();
  *(v59 + 16) = v56;
  *(v59 + 24) = v27;
  v60 = swift_allocObject();
  *(v60 + 16) = sub_10053B960;
  *(v60 + 24) = v59;
  aBlock[4] = sub_10026CBB8;
  aBlock[5] = v60;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10057E264;
  aBlock[3] = &unk_1008160D8;
  v61 = _Block_copy(aBlock);

  dispatch_sync(v58, v61);
  _Block_release(v61);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
    return result;
  }

  v64 = v77;
  sub_10000BBC4(v56, v77, &unk_10084A140, &unk_1006DB430);
  v65 = (*(v55 + 48))(v64, 1, v57);
  v66 = v80;
  v67 = v82;
  v68 = v81;
  if (v65 == 1)
  {
    sub_10000BE18(v64, &unk_10084A140, &unk_1006DB430);
    (*(v68 + 104))(v66, enum case for DIPError.Code.odnTimeout(_:), v67);
    type metadata accessor for DIPError();
    sub_10053B9C0(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    v33 = swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    sub_10000BE18(v56, &unk_10084A140, &unk_1006DB430);
    v82 = sub_10053B960;
    goto LABEL_4;
  }

  v69 = v75;
  sub_100537B28(v64, v75, type metadata accessor for ODNAssessmentResult);
  v70 = v76;
  defaultLogger()();
  v71 = Logger.logObject.getter();
  v72 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v71, v72))
  {
    v73 = swift_slowAlloc();
    *v73 = 0;
    _os_log_impl(&_mh_execute_header, v71, v72, "After waiting and have an assessment result", v73, 2u);
    v56 = v79;
  }

  (*(v85 + 8))(v70, v86);
  sub_100537B28(v69, v87, type metadata accessor for ODNAssessmentResult);
  sub_10000BE18(v56, &unk_10084A140, &unk_1006DB430);
}

uint64_t sub_1005329C0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100007224(&unk_10084A140, &unk_1006DB430);
  __chkstk_darwin(v4 - 8);
  v6 = &v9 - v5;
  v7 = OBJC_IVAR____TtC8coreidvd27AssessDuringProofingODNator_assessmentResult;
  swift_beginAccess();
  sub_10000BBC4(a2 + v7, v6, &unk_10084A140, &unk_1006DB430);
  return sub_1000B2764(v6, a1, &unk_10084A140, &unk_1006DB430);
}

void sub_100532A94()
{
  sub_10000BE18(v0 + OBJC_IVAR____TtC8coreidvd27AssessDuringProofingODNator_assessmentResult, &unk_10084A140, &unk_1006DB430);

  v1 = *(v0 + OBJC_IVAR____TtC8coreidvd27AssessDuringProofingODNator_recomputeQueue);
}

uint64_t sub_100532AF4()
{
  sub_10052E12C();
  v1 = OBJC_IVAR____TtC8coreidvd27AssessDuringProofingODNator_assessmentResult;

  sub_10000BE18(v0 + v1, &unk_10084A140, &unk_1006DB430);

  v2 = *(v0 + OBJC_IVAR____TtC8coreidvd27AssessDuringProofingODNator_recomputeQueue);

  return swift_deallocClassInstance();
}

void sub_100532BCC(uint64_t a1)
{
  sub_10052E4CC(319, &unk_100846FE0, type metadata accessor for ODNAssessmentResult);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_100532CB4(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 8);

  return v6(a1, a2);
}

uint64_t sub_100532D80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
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
    v9 = sub_100007224(&qword_100836328, &unk_1006C51B0);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 44);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_100532E5C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 24) = a2;
  }

  else
  {
    v7 = sub_100007224(&qword_100836328, &unk_1006C51B0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 44);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_100532F0C(uint64_t a1)
{
  sub_100533030(319);
  if (v1 <= 0x3F)
  {
    sub_100133F18(319, &qword_100835140, &type metadata for String);
    if (v2 <= 0x3F)
    {
      sub_100133F18(319, &qword_1008352D0, &type metadata for ODNErrorInfo);
      if (v3 <= 0x3F)
      {
        sub_100133F18(319, &qword_1008352B8, &type metadata for DIPClientGUIDSeeds);
        if (v4 <= 0x3F)
        {
          sub_10052E4CC(319, &unk_100836398, type metadata accessor for AssessmentAdditionalInfo);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_100533030(uint64_t a1)
{
  if (!qword_1008474E8)
  {
    sub_10000B870(&qword_100834EB8, &qword_1006C06F0);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_1008474E8);
    }
  }
}

unint64_t sub_100533098()
{
  result = qword_100847530;
  if (!qword_100847530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100847530);
  }

  return result;
}

void *sub_1005330EC(uint64_t a1)
{
  v2 = type metadata accessor for PersonNameComponents();
  v101 = *(v2 - 8);
  v102 = v2;
  v3 = __chkstk_darwin(v2);
  v100 = &v96 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v6 = &v96 - v5;
  v7 = type metadata accessor for Logger();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v96 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v9);
  v99 = &v96 - v13;
  v14 = __chkstk_darwin(v12);
  v16 = &v96 - v15;
  __chkstk_darwin(v14);
  v18 = &v96 - v17;
  defaultLogger()();
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&_mh_execute_header, v19, v20, "Attempting to guess name components", v21, 2u);
  }

  v22 = *(v8 + 8);
  v22(v18, v7);
  if (!*(a1 + 16))
  {
    goto LABEL_16;
  }

  v23 = sub_10003ADCC(0x6D614E7473726966, 0xE900000000000065);
  if ((v24 & 1) == 0)
  {
    goto LABEL_16;
  }

  sub_10001F2EC(*(a1 + 56) + 32 * v23, &v105);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_16;
  }

  v98 = v22;
  v25 = *(&v104[0] + 1);
  if (!*(a1 + 16) || (v26 = *&v104[0], v27 = sub_10003ADCC(0x656D614E7473616CLL, 0xE800000000000000), (v28 & 1) == 0) || (sub_10001F2EC(*(a1 + 56) + 32 * v27, &v105), (swift_dynamicCast() & 1) == 0))
  {

    v37 = &_swiftEmptyDictionarySingleton;
    v22 = v98;
    goto LABEL_17;
  }

  v29 = *(&v104[0] + 1);
  v97 = *&v104[0];
  *&v105 = v26;
  *(&v105 + 1) = v25;

  v30._countAndFlagsBits = 32;
  v30._object = 0xE100000000000000;
  String.append(_:)(v30);

  v31._countAndFlagsBits = v97;
  v31._object = v29;
  String.append(_:)(v31);

  v32 = [objc_allocWithZone(NSPersonNameComponentsFormatter) init];
  v33 = String._bridgeToObjectiveC()();

  v34 = [v32 personNameComponentsFromString:v33];

  if (!v34)
  {
    defaultLogger()();
    v39 = Logger.logObject.getter();
    v40 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      *v41 = 0;
      _os_log_impl(&_mh_execute_header, v39, v40, "Could not get nameComponents out of name", v41, 2u);
    }

    v22 = v98;
    v98(v16, v7);
LABEL_16:
    v37 = &_swiftEmptyDictionarySingleton;
    goto LABEL_17;
  }

  static PersonNameComponents._unconditionallyBridgeFromObjectiveC(_:)();

  v35 = PersonNameComponents.namePrefix.getter();
  v37 = &_swiftEmptyDictionarySingleton;
  if (v36)
  {
    v106 = &type metadata for String;
    *&v105 = v35;
    *(&v105 + 1) = v36;
    sub_10001F348(&v105, v104);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v103 = &_swiftEmptyDictionarySingleton;
    sub_10016CC40(v104, 0xD000000000000010, 0x800000010071E320, isUniquelyReferenced_nonNull_native);
    v37 = v103;
  }

  v22 = v98;
  v66 = PersonNameComponents.familyName.getter();
  if (v67)
  {
    v106 = &type metadata for String;
    *&v105 = v66;
    *(&v105 + 1) = v67;
    sub_10001F348(&v105, v104);
    v68 = swift_isUniquelyReferenced_nonNull_native();
    v103 = v37;
    sub_10016CC40(v104, 0xD000000000000010, 0x800000010071E300, v68);
    v37 = v103;
  }

  v69 = PersonNameComponents.givenName.getter();
  if (v70)
  {
    v106 = &type metadata for String;
    *&v105 = v69;
    *(&v105 + 1) = v70;
    sub_10001F348(&v105, v104);
    v71 = swift_isUniquelyReferenced_nonNull_native();
    v103 = v37;
    sub_10016CC40(v104, 0x6947646573726170, 0xEF656D614E6E6576, v71);
    v37 = v103;
  }

  v72 = PersonNameComponents.middleName.getter();
  if (v73)
  {
    v106 = &type metadata for String;
    *&v105 = v72;
    *(&v105 + 1) = v73;
    sub_10001F348(&v105, v104);
    v74 = swift_isUniquelyReferenced_nonNull_native();
    v103 = v37;
    sub_10016CC40(v104, 0xD000000000000010, 0x800000010071E2E0, v74);
    v37 = v103;
  }

  v75 = PersonNameComponents.nameSuffix.getter();
  if (v76)
  {
    v106 = &type metadata for String;
    *&v105 = v75;
    *(&v105 + 1) = v76;
    sub_10001F348(&v105, v104);
    v77 = swift_isUniquelyReferenced_nonNull_native();
    v103 = v37;
    sub_10016CC40(v104, 0xD000000000000010, 0x800000010071E2C0, v77);
    v37 = v103;
  }

  v78 = PersonNameComponents.nickname.getter();
  if (v79)
  {
    v106 = &type metadata for String;
    *&v105 = v78;
    *(&v105 + 1) = v79;
    sub_10001F348(&v105, v104);
    v80 = swift_isUniquelyReferenced_nonNull_native();
    v103 = v37;
    sub_10016CC40(v104, 0x694E646573726170, 0xEE00656D614E6B63, v80);
    (*(v101 + 8))(v6, v102);
    v37 = v103;
  }

  else
  {
    (*(v101 + 8))(v6, v102);
  }

LABEL_17:
  if (*(a1 + 16))
  {
    v42 = sub_10003ADCC(0xD000000000000012, 0x80000001006FA330);
    if (v43)
    {
      sub_10001F2EC(*(a1 + 56) + 32 * v42, &v105);
      if (swift_dynamicCast())
      {
        v98 = v22;
        v44 = *(&v104[0] + 1);
        if (*(a1 + 16) && (v45 = *&v104[0], v46 = sub_10003ADCC(0xD000000000000011, 0x80000001006FA350), (v47 & 1) != 0) && (sub_10001F2EC(*(a1 + 56) + 32 * v46, &v105), (swift_dynamicCast() & 1) != 0))
        {
          v48 = v104[0];
          *&v105 = v45;
          *(&v105 + 1) = v44;

          v49._countAndFlagsBits = 32;
          v49._object = 0xE100000000000000;
          String.append(_:)(v49);

          String.append(_:)(v48);

          v50 = [objc_allocWithZone(NSPersonNameComponentsFormatter) init];
          v51 = String._bridgeToObjectiveC()();

          v52 = [v50 personNameComponentsFromString:v51];

          if (v52)
          {
            v53 = v100;
            static PersonNameComponents._unconditionallyBridgeFromObjectiveC(_:)();

            v54 = PersonNameComponents.namePrefix.getter();
            if (v55)
            {
              v106 = &type metadata for String;
              *&v105 = v54;
              *(&v105 + 1) = v55;
              sub_10001F348(&v105, v104);
              v56 = swift_isUniquelyReferenced_nonNull_native();
              v103 = v37;
              sub_10016CC40(v104, 0xD000000000000018, 0x800000010071E2A0, v56);
              v37 = v103;
            }

            v22 = v98;
            v81 = PersonNameComponents.familyName.getter();
            if (v82)
            {
              v106 = &type metadata for String;
              *&v105 = v81;
              *(&v105 + 1) = v82;
              sub_10001F348(&v105, v104);
              v83 = swift_isUniquelyReferenced_nonNull_native();
              v103 = v37;
              sub_10016CC40(v104, 0xD000000000000018, 0x800000010071E280, v83);
              v37 = v103;
            }

            v84 = PersonNameComponents.givenName.getter();
            if (v85)
            {
              v106 = &type metadata for String;
              *&v105 = v84;
              *(&v105 + 1) = v85;
              sub_10001F348(&v105, v104);
              v86 = swift_isUniquelyReferenced_nonNull_native();
              v103 = v37;
              sub_10016CC40(v104, 0xD000000000000017, 0x800000010071E260, v86);
              v37 = v103;
            }

            v87 = PersonNameComponents.middleName.getter();
            if (v88)
            {
              v106 = &type metadata for String;
              *&v105 = v87;
              *(&v105 + 1) = v88;
              sub_10001F348(&v105, v104);
              v89 = swift_isUniquelyReferenced_nonNull_native();
              v103 = v37;
              sub_10016CC40(v104, 0xD000000000000018, 0x800000010071E240, v89);
              v37 = v103;
            }

            v90 = PersonNameComponents.nameSuffix.getter();
            if (v91)
            {
              v106 = &type metadata for String;
              *&v105 = v90;
              *(&v105 + 1) = v91;
              sub_10001F348(&v105, v104);
              v92 = swift_isUniquelyReferenced_nonNull_native();
              v103 = v37;
              sub_10016CC40(v104, 0xD000000000000018, 0x800000010071E220, v92);
              v37 = v103;
            }

            v93 = PersonNameComponents.nickname.getter();
            if (v94)
            {
              v106 = &type metadata for String;
              *&v105 = v93;
              *(&v105 + 1) = v94;
              sub_10001F348(&v105, v104);
              v95 = swift_isUniquelyReferenced_nonNull_native();
              v103 = v37;
              sub_10016CC40(v104, 0xD000000000000016, 0x800000010071E200, v95);
              (*(v101 + 8))(v53, v102);
              v37 = v103;
            }

            else
            {
              (*(v101 + 8))(v53, v102);
            }
          }

          else
          {
            v62 = v99;
            defaultLogger()();
            v63 = Logger.logObject.getter();
            v64 = static os_log_type_t.info.getter();
            if (os_log_type_enabled(v63, v64))
            {
              v65 = swift_slowAlloc();
              *v65 = 0;
              _os_log_impl(&_mh_execute_header, v63, v64, "Could not get nameComponents out of doc name", v65, 2u);
            }

            v22 = v98;
            v98(v62, v7);
          }
        }

        else
        {

          v22 = v98;
        }
      }
    }
  }

  defaultLogger()();

  v57 = Logger.logObject.getter();
  v58 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v57, v58))
  {
    v59 = v22;
    v60 = swift_slowAlloc();
    *v60 = 134349056;
    *(v60 + 4) = *(v37 + 2);

    _os_log_impl(&_mh_execute_header, v57, v58, "Guessed %{public}ld name components", v60, 0xCu);

    v59(v11, v7);
  }

  else
  {

    v22(v11, v7);
  }

  return v37;
}

uint64_t sub_100533D54(uint64_t *a1)
{
  v2 = type metadata accessor for Logger();
  v128 = *(v2 - 8);
  v129 = v2;
  v3 = __chkstk_darwin(v2);
  v5 = &v116 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v3);
  v8 = &v116 - v7;
  v9 = __chkstk_darwin(v6);
  v117 = &v116 - v10;
  v11 = __chkstk_darwin(v9);
  v13 = &v116 - v12;
  __chkstk_darwin(v11);
  v120 = &v116 - v14;
  v15 = type metadata accessor for CharacterSet();
  v16 = *(v15 - 8);
  v130 = v15;
  v131 = v16;
  __chkstk_darwin(v15);
  v18 = &v116 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v122 = a1;
  v19 = *a1;
  if (*(*a1 + 16) && (v20 = sub_10003ADCC(0x31746565727473, 0xE700000000000000), (v21 & 1) != 0))
  {
    sub_10001F2EC(*(v19 + 56) + 32 * v20, &v134);
    v22 = swift_dynamicCast();
    v23 = v132;
    if (!v22)
    {
      v23 = 0;
    }

    v127 = v23;
    if (v22)
    {
      v24 = v133;
    }

    else
    {
      v24 = 0;
    }
  }

  else
  {
    v127 = 0;
    v24 = 0;
  }

  v25 = *(v19 + 16);
  v119 = v8;
  v118 = v5;
  if (v25 && (v26 = sub_10003ADCC(0x32746565727473, 0xE700000000000000), (v27 & 1) != 0))
  {
    sub_10001F2EC(*(v19 + 56) + 32 * v26, &v134);
    v28 = swift_dynamicCast();
    if (v28)
    {
      v29 = v132;
    }

    else
    {
      v29 = 0;
    }

    if (v28)
    {
      v30 = v133;
    }

    else
    {
      v30 = 0;
    }
  }

  else
  {
    v29 = 0;
    v30 = 0;
  }

  v31 = *(v19 + 16);
  v121 = v13;
  if (v31 && (v32 = sub_10003ADCC(2037672291, 0xE400000000000000), (v33 & 1) != 0))
  {
    sub_10001F2EC(*(v19 + 56) + 32 * v32, &v134);
    v34 = swift_dynamicCast();
    if (v34)
    {
      v35 = v132;
    }

    else
    {
      v35 = 0;
    }

    if (v34)
    {
      v36 = v133;
    }

    else
    {
      v36 = 0;
    }

    if (!*(v19 + 16))
    {
      goto LABEL_38;
    }
  }

  else
  {
    v35 = 0;
    v36 = 0;
    if (!*(v19 + 16))
    {
      goto LABEL_38;
    }
  }

  v37 = sub_10003ADCC(0x6574617473, 0xE500000000000000);
  if (v38)
  {
    sub_10001F2EC(*(v19 + 56) + 32 * v37, &v134);
    v39 = swift_dynamicCast();
    if (v39)
    {
      v40 = v132;
    }

    else
    {
      v40 = 0;
    }

    if (v39)
    {
      v41 = v133;
    }

    else
    {
      v41 = 0;
    }

    v42 = *(v19 + 16);
    if (!v42)
    {
      goto LABEL_44;
    }

    goto LABEL_39;
  }

LABEL_38:
  v40 = 0;
  v41 = 0;
  v42 = *(v19 + 16);
  if (!v42)
  {
LABEL_44:
    v46 = 0;
    goto LABEL_45;
  }

LABEL_39:
  v43 = sub_10003ADCC(0x6F436C6174736F70, 0xEA00000000006564);
  if ((v44 & 1) == 0)
  {
    v42 = 0;
    goto LABEL_44;
  }

  sub_10001F2EC(*(v19 + 56) + 32 * v43, &v134);
  v45 = swift_dynamicCast();
  v42 = v132;
  if (v45)
  {
    v46 = v133;
  }

  else
  {
    v42 = 0;
    v46 = 0;
  }

LABEL_45:
  v47 = sub_100534AEC(v127, v24, v29, v30, v35, v36, v40, v41, v42, v46);
  v49 = v48;

  v134 = v47;
  v135 = v49;
  static CharacterSet.whitespacesAndNewlines.getter();
  v126 = sub_10001F298();
  v50 = StringProtocol.trimmingCharacters(in:)();
  v52 = v51;
  v53 = *(v131 + 8);
  v131 += 8;
  v125 = v53;
  v53(v18, v130);

  if (*(v19 + 16))
  {
    v54 = sub_10003ADCC(0xD000000000000010, 0x800000010071E340);
    if (v55)
    {
      sub_10001F2EC(*(v19 + 56) + 32 * v54, &v134);
      v56 = swift_dynamicCast();
      v57 = v132;
      if (!v56)
      {
        v57 = 0;
      }

      v124 = v57;
      if (v56)
      {
        v58 = v133;
      }

      else
      {
        v58 = 0;
      }

      if (!*(v19 + 16))
      {
        goto LABEL_63;
      }
    }

    else
    {
      v124 = 0;
      v58 = 0;
      if (!*(v19 + 16))
      {
LABEL_63:
        v123 = 0;
        v63 = 0;
        goto LABEL_64;
      }
    }
  }

  else
  {
    v124 = 0;
    v58 = 0;
    if (!*(v19 + 16))
    {
      goto LABEL_63;
    }
  }

  v59 = sub_10003ADCC(0xD000000000000010, 0x800000010071E360);
  if ((v60 & 1) == 0)
  {
    goto LABEL_63;
  }

  sub_10001F2EC(*(v19 + 56) + 32 * v59, &v134);
  v61 = swift_dynamicCast();
  v62 = v132;
  if (!v61)
  {
    v62 = 0;
  }

  v123 = v62;
  if (v61)
  {
    v63 = v133;
  }

  else
  {
    v63 = 0;
  }

LABEL_64:
  v64 = *(v19 + 16);
  v127 = v50;
  if (v64 && (v65 = sub_10003ADCC(0x746E656D75636F64, 0xED0000797469632ELL), (v66 & 1) != 0))
  {
    sub_10001F2EC(*(v19 + 56) + 32 * v65, &v134);
    v67 = swift_dynamicCast();
    if (v67)
    {
      v68 = v132;
    }

    else
    {
      v68 = 0;
    }

    if (v67)
    {
      v69 = v133;
    }

    else
    {
      v69 = 0;
    }

    if (!*(v19 + 16))
    {
      goto LABEL_84;
    }
  }

  else
  {
    v68 = 0;
    v69 = 0;
    if (!*(v19 + 16))
    {
      goto LABEL_84;
    }
  }

  v70 = sub_10003ADCC(0x746E656D75636F64, 0xEE0065746174732ELL);
  if (v71)
  {
    sub_10001F2EC(*(v19 + 56) + 32 * v70, &v134);
    v72 = swift_dynamicCast();
    if (v72)
    {
      v73 = v132;
    }

    else
    {
      v73 = 0;
    }

    if (v72)
    {
      v74 = v133;
    }

    else
    {
      v74 = 0;
    }

    v75 = *(v19 + 16);
    if (!v75)
    {
      goto LABEL_90;
    }

    goto LABEL_85;
  }

LABEL_84:
  v73 = 0;
  v74 = 0;
  v75 = *(v19 + 16);
  if (!v75)
  {
LABEL_90:
    v79 = 0;
    goto LABEL_91;
  }

LABEL_85:
  v76 = sub_10003ADCC(0xD000000000000013, 0x800000010071E380);
  if ((v77 & 1) == 0)
  {
    v75 = 0;
    goto LABEL_90;
  }

  sub_10001F2EC(*(v19 + 56) + 32 * v76, &v134);
  v78 = swift_dynamicCast();
  v75 = v132;
  if (v78)
  {
    v79 = v133;
  }

  else
  {
    v75 = 0;
    v79 = 0;
  }

LABEL_91:
  v80 = sub_100534AEC(v124, v58, v123, v63, v68, v69, v73, v74, v75, v79);
  v82 = v81;

  v134 = v80;
  v135 = v82;
  static CharacterSet.whitespacesAndNewlines.getter();
  v83 = StringProtocol.trimmingCharacters(in:)();
  v85 = v84;
  v125(v18, v130);

  v132 = &_swiftEmptySetSingleton;
  v86 = v127;
  if (String.count.getter() >= 1)
  {

    sub_100151120(&v134, v86, v52);
  }

  v87 = String.count.getter();
  v88 = v129;
  if (v87 >= 1)
  {

    sub_100151120(&v134, v83, v85);
  }

  if (v132[2])
  {
    sub_100534F28(v132);

    if (qword_100832C88 != -1)
    {
      v89 = swift_once();
    }

    __chkstk_darwin(v89);
    sub_100007224(&qword_1008475A0, &unk_1006E7998);
    OS_dispatch_queue.sync<A>(execute:)();

    if (v136)
    {
      v90 = v117;
      defaultLogger()();
      v91 = Logger.logObject.getter();
      v92 = static os_log_type_t.info.getter();
      if (!os_log_type_enabled(v91, v92))
      {
        goto LABEL_108;
      }

      v93 = swift_slowAlloc();
      *v93 = 0;
      _os_log_impl(&_mh_execute_header, v91, v92, "no geo location available", v93, 2u);
    }

    else
    {
      v99 = Double.description.getter();
      v137 = &type metadata for String;
      v134 = v99;
      v135 = v100;
      sub_10014BD20(&v134, 0x4C73736572646461, 0xEA00000000007461);
      v101 = Double.description.getter();
      v137 = &type metadata for String;
      v134 = v101;
      v135 = v102;
      sub_10014BD20(&v134, 0x4C73736572646461, 0xEA00000000006E6FLL);
      defaultLogger()();
      v91 = Logger.logObject.getter();
      v103 = static os_log_type_t.info.getter();
      if (!os_log_type_enabled(v91, v103))
      {
        v90 = v121;
LABEL_108:

        v105 = *(v128 + 8);
        v106 = v105(v90, v88);
        __chkstk_darwin(v106);
        OS_dispatch_queue.sync<A>(execute:)();

        if (v136)
        {
          v107 = v118;
          defaultLogger()();
          v108 = Logger.logObject.getter();
          v109 = static os_log_type_t.info.getter();
          if (os_log_type_enabled(v108, v109))
          {
            v110 = swift_slowAlloc();
            *v110 = 0;
            v111 = "no document geo location available";
LABEL_113:
            _os_log_impl(&_mh_execute_header, v108, v109, v111, v110, 2u);
          }
        }

        else
        {
          v112 = Double.description.getter();
          v137 = &type metadata for String;
          v134 = v112;
          v135 = v113;
          sub_10014BD20(&v134, 0xD000000000000013, 0x800000010071E3A0);
          v114 = Double.description.getter();
          v137 = &type metadata for String;
          v134 = v114;
          v135 = v115;
          sub_10014BD20(&v134, 0xD000000000000013, 0x800000010071E3C0);
          v107 = v119;
          defaultLogger()();
          v108 = Logger.logObject.getter();
          v109 = static os_log_type_t.info.getter();
          if (os_log_type_enabled(v108, v109))
          {
            v110 = swift_slowAlloc();
            *v110 = 0;
            v111 = "got document geo location";
            goto LABEL_113;
          }
        }

        return v105(v107, v88);
      }

      v104 = swift_slowAlloc();
      *v104 = 0;
      _os_log_impl(&_mh_execute_header, v91, v103, "got geo location", v104, 2u);
      v90 = v121;
    }

    goto LABEL_108;
  }

  v94 = v120;
  defaultLogger()();
  v95 = Logger.logObject.getter();
  v96 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v95, v96))
  {
    v97 = swift_slowAlloc();
    *v97 = 0;
    _os_log_impl(&_mh_execute_header, v95, v96, "No Address bindings provided for geo location", v97, 2u);
  }

  return (*(v128 + 8))(v94, v88);
}

uint64_t sub_100534AEC(uint64_t a1, void *a2, uint64_t a3, void *a4, uint64_t a5, void *a6, uint64_t a7, void *a8, uint64_t a9, void *a10)
{
  v47 = a7;
  v17 = type metadata accessor for CharacterSet();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v44 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = 0;
  v50 = 0xE000000000000000;
  if (a2)
  {
    v45 = a3;
    v46 = a5;
    v48._countAndFlagsBits = a1;
    v48._object = a2;

    static CharacterSet.whitespacesAndNewlines.getter();
    sub_10001F298();
    v21 = StringProtocol.trimmingCharacters(in:)();
    v23 = v22;
    (*(v18 + 8))(v20, v17);

    if (String.count.getter() >= 1)
    {
      v24._countAndFlagsBits = v21;
      v24._object = v23;
      String.append(_:)(v24);
    }

    a3 = v45;
    a5 = v46;
  }

  v25 = v17;
  v26 = a8;
  if (a4)
  {
    v48._countAndFlagsBits = a3;
    v48._object = a4;

    static CharacterSet.whitespacesAndNewlines.getter();
    sub_10001F298();
    v27 = StringProtocol.trimmingCharacters(in:)();
    v29 = v28;
    (*(v18 + 8))(v20, v25);

    if (String.count.getter() >= 1)
    {
      v48._countAndFlagsBits = 32;
      v48._object = 0xE100000000000000;
      v30._countAndFlagsBits = v27;
      v30._object = v29;
      String.append(_:)(v30);

      String.append(_:)(v48);
    }
  }

  if (a6)
  {
    v48._countAndFlagsBits = a5;
    v48._object = a6;

    static CharacterSet.whitespacesAndNewlines.getter();
    sub_10001F298();
    v31 = StringProtocol.trimmingCharacters(in:)();
    v33 = v32;
    (*(v18 + 8))(v20, v25);

    if (String.count.getter() >= 1)
    {
      v48._countAndFlagsBits = 8236;
      v48._object = 0xE200000000000000;
      v34._countAndFlagsBits = v31;
      v34._object = v33;
      String.append(_:)(v34);

      String.append(_:)(v48);
    }
  }

  if (v26)
  {
    v48._countAndFlagsBits = v47;
    v48._object = v26;

    static CharacterSet.whitespacesAndNewlines.getter();
    sub_10001F298();
    v35 = StringProtocol.trimmingCharacters(in:)();
    v37 = v36;
    (*(v18 + 8))(v20, v25);

    if (String.count.getter() >= 1)
    {
      v48._countAndFlagsBits = 8236;
      v48._object = 0xE200000000000000;
      v38._countAndFlagsBits = v35;
      v38._object = v37;
      String.append(_:)(v38);

      String.append(_:)(v48);
    }
  }

  if (a10)
  {
    v48._countAndFlagsBits = a9;
    v48._object = a10;

    static CharacterSet.whitespacesAndNewlines.getter();
    sub_10001F298();
    v39 = StringProtocol.trimmingCharacters(in:)();
    v41 = v40;
    (*(v18 + 8))(v20, v25);

    if (String.count.getter() >= 1)
    {
      v48._countAndFlagsBits = 32;
      v48._object = 0xE100000000000000;
      v42._countAndFlagsBits = v39;
      v42._object = v41;
      String.append(_:)(v42);

      String.append(_:)(v48);
    }
  }

  return v49;
}

void sub_100534F28(uint64_t a1)
{
  v2 = type metadata accessor for Logger();
  v40 = *(v2 - 8);
  v41 = v2;
  __chkstk_darwin(v2);
  v39 = &v38 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for DispatchTime();
  v44 = *(v4 - 8);
  v45 = v4;
  v5 = __chkstk_darwin(v4);
  v42 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v43 = &v38 - v7;
  v8 = dispatch_group_create();
  v9 = a1 + 56;
  v10 = 1 << *(a1 + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & *(a1 + 56);
  v13 = (v10 + 63) >> 6;
  v46 = v51;
  v47 = v8;
  v49 = a1;

  v14 = 0;
  v15 = 0;
  if (v12)
  {
    goto LABEL_6;
  }

  while (1)
  {
LABEL_7:
    v16 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      __break(1u);
      return;
    }

    if (v16 >= v13)
    {
      break;
    }

    v12 = *(v9 + 8 * v16);
    ++v14;
    if (v12)
    {
      while (1)
      {
        v17 = (*(v49 + 48) + ((v16 << 10) | (16 * __clz(__rbit64(v12)))));
        v19 = *v17;
        v18 = v17[1];
        v20 = qword_100832C88;

        if (v20 != -1)
        {
          v21 = swift_once();
        }

        v12 &= v12 - 1;
        __chkstk_darwin(v21);
        *(&v38 - 2) = v19;
        *(&v38 - 1) = v18;
        sub_100007224(&qword_1008475A0, &unk_1006E7998);
        OS_dispatch_queue.sync<A>(execute:)();
        if (v51[0])
        {
          v22 = v47;
          dispatch_group_enter(v47);
          v23 = [objc_allocWithZone(DIGeocoder) init];
          v48 = v15;
          v24 = v23;
          v25 = String._bridgeToObjectiveC()();
          v26 = swift_allocObject();
          v26[2] = v22;
          v26[3] = v19;
          v26[4] = v18;
          v51[2] = sub_10053BA48;
          v51[3] = v26;
          aBlock[0] = _NSConcreteStackBlock;
          aBlock[1] = 1107296256;
          v51[0] = sub_10001335C;
          v51[1] = &unk_100816178;
          v27 = _Block_copy(aBlock);

          v28 = v22;

          [v24 geocodeAddressString:v25 completionHandler:v27];

          _Block_release(v27);

          v15 = v48;
          v14 = v16;
          if (!v12)
          {
            goto LABEL_7;
          }
        }

        else
        {

          v14 = v16;
          if (!v12)
          {
            goto LABEL_7;
          }
        }

LABEL_6:
        v16 = v14;
      }
    }
  }

  v29 = v42;
  static DispatchTime.now()();
  v30 = v43;
  + infix(_:_:)();
  v31 = v45;
  v32 = *(v44 + 8);
  v32(v29, v45);
  v33 = v47;
  OS_dispatch_group.wait(timeout:)();
  v32(v30, v31);
  if (static DispatchTimeoutResult.== infix(_:_:)())
  {
  }

  else
  {
    v34 = v39;
    defaultLogger()();
    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      *v37 = 0;
      _os_log_impl(&_mh_execute_header, v35, v36, "geocodeAddressString callback not invoked in the specified timeout", v37, 2u);
    }

    else
    {
    }

    (*(v40 + 8))(v34, v41);
  }
}

void sub_100535430(void *a1, uint64_t a2, NSObject *a3, NSObject *a4, NSObject *a5)
{
  v22 = a3;
  v9 = type metadata accessor for Logger();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100832C88 != -1)
  {
    v11 = swift_once();
  }

  v14 = qword_100846B98;
  __chkstk_darwin(v11);
  *(&v22 - 2) = a4;
  *(&v22 - 1) = a5;
  sub_100007224(&qword_1008475A0, &unk_1006E7998);
  OS_dispatch_queue.sync<A>(execute:)();
  if ((v25 & 1) == 0)
  {
    goto LABEL_6;
  }

  if (a2)
  {
    aBlock = 0;
    v24 = 0xE000000000000000;
    swift_errorRetain();
    _StringGuts.grow(_:)(39);

    aBlock = 0xD000000000000025;
    v24 = 0x800000010071E430;
    v15._countAndFlagsBits = a4;
    v15._object = a5;
    String.append(_:)(v15);
    defaultLogger()();
    DIPRecordError(_:message:log:)();

    (*(v10 + 8))(v13, v9);
LABEL_6:
    dispatch_group_leave(v22);
    return;
  }

  if (!a1)
  {
    goto LABEL_10;
  }

  v16 = swift_allocObject();
  v16[2] = a4;
  v16[3] = a5;
  v16[4] = a1;
  v17 = swift_allocObject();
  v18 = sub_10053BA94;
  *(v17 + 16) = sub_10053BA94;
  *(v17 + 24) = v16;
  v27 = sub_10026CBB8;
  v28 = v17;
  aBlock = _NSConcreteStackBlock;
  v24 = 1107296256;
  v25 = sub_10057E264;
  v26 = &unk_1008161F0;
  v19 = _Block_copy(&aBlock);
  v20 = a1;

  dispatch_sync(v14, v19);

  _Block_release(v19);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
LABEL_10:
    v18 = 0;
    v16 = 0;
  }

  dispatch_group_leave(v22);
  sub_10001FE8C(v18, v16);
}

uint64_t sub_100535794(uint64_t a1, uint64_t a2, id a3)
{
  if (qword_100832C90 != -1)
  {
    swift_once();
  }

  [a3 coordinate];
  v7 = v6;
  v9 = v8;
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = off_100846BA0;
  off_100846BA0 = 0x8000000000000000;
  sub_10016E238(a1, a2, isUniquelyReferenced_nonNull_native, v7, v9);
  off_100846BA0 = v12;
  return swift_endAccess();
}

uint64_t sub_10053587C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (qword_100832C90 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v6 = off_100846BA0;
  v7 = 0uLL;
  if (*(off_100846BA0 + 2))
  {
    v8 = sub_10003ADCC(a1, a2);
    if (v9)
    {
      v10 = 0;
      v7 = *(v6[7] + 16 * v8);
    }

    else
    {
      v10 = 1;
      v7 = 0uLL;
    }
  }

  else
  {
    v10 = 1;
  }

  *a3 = v7;
  *(a3 + 16) = v10;
  return swift_endAccess();
}

double sub_100535960@<D0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  sub_10001F2EC((a1 + 2), (a2 + 2));
  *a2 = v4;
  a2[1] = v3;

  return result;
}

void sub_1005359AC(_OWORD *a1@<X8>)
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
    sub_10001F2EC(*(v3 + 56) + 32 * v13, v20);
    *&v21 = v16;
    *(&v21 + 1) = v15;
    sub_10001F348(v20, &v22);

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
      sub_10000BE18(v20, &qword_100847598, &unk_1006E7988);
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

unint64_t sub_100535B0C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v7 = -1 << *(a1 + 32);
  v8 = ~v7;
  v9 = *(a1 + 64);
  v10 = -v7;
  v45 = a1;
  v46 = a1 + 64;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v47 = v8;
  v48 = 0;
  v49 = v11 & v9;
  v50 = a2;
  v51 = a3;

  sub_1005359AC(&v43);
  v12 = *(&v43 + 1);
  if (!*(&v43 + 1))
  {
    goto LABEL_25;
  }

  v13 = v43;
  sub_10001F348(v44, v42);
  v14 = *a5;
  result = sub_10003ADCC(v13, v12);
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
    sub_100166280(v20, a4 & 1);
    result = sub_10003ADCC(v13, v12);
    if ((v21 & 1) == (v22 & 1))
    {
      goto LABEL_10;
    }

LABEL_8:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  if ((a4 & 1) == 0)
  {
    v26 = result;
    sub_10016F6B4();
    result = v26;
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
    v24 = result;

    v25 = (v23[7] + 32 * v24);
    sub_10000BB78(v25);
    sub_10001F348(v42, v25);
    goto LABEL_15;
  }

LABEL_13:
  v23[(result >> 6) + 8] |= 1 << result;
  v27 = (v23[6] + 16 * result);
  *v27 = v13;
  v27[1] = v12;
  result = sub_10001F348(v42, (v23[7] + 32 * result));
  v28 = v23[2];
  v19 = __OFADD__(v28, 1);
  v29 = v28 + 1;
  if (!v19)
  {
    v23[2] = v29;
LABEL_15:
    sub_1005359AC(&v43);
    v12 = *(&v43 + 1);
    if (*(&v43 + 1))
    {
      v21 = 1;
      do
      {
        v13 = v43;
        sub_10001F348(v44, v42);
        v32 = *a5;
        result = sub_10003ADCC(v13, v12);
        v34 = v32[2];
        v35 = (v33 & 1) == 0;
        v19 = __OFADD__(v34, v35);
        v36 = v34 + v35;
        if (v19)
        {
          goto LABEL_26;
        }

        a4 = v33;
        if (v32[3] < v36)
        {
          sub_100166280(v36, 1);
          result = sub_10003ADCC(v13, v12);
          if ((a4 & 1) != (v37 & 1))
          {
            goto LABEL_8;
          }
        }

        v38 = *a5;
        if (a4)
        {
          v30 = result;

          v31 = (v38[7] + 32 * v30);
          sub_10000BB78(v31);
          sub_10001F348(v42, v31);
        }

        else
        {
          v38[(result >> 6) + 8] |= 1 << result;
          v39 = (v38[6] + 16 * result);
          *v39 = v13;
          v39[1] = v12;
          result = sub_10001F348(v42, (v38[7] + 32 * result));
          v40 = v38[2];
          v19 = __OFADD__(v40, 1);
          v41 = v40 + 1;
          if (v19)
          {
            goto LABEL_27;
          }

          v38[2] = v41;
        }

        sub_1005359AC(&v43);
        v12 = *(&v43 + 1);
      }

      while (*(&v43 + 1));
    }

LABEL_25:
    sub_10001FA6C(v45);
  }

LABEL_27:
  __break(1u);
  return result;
}

unint64_t sub_100535E1C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5)
{
  v7 = -1 << *(a1 + 32);
  v8 = ~v7;
  v9 = *(a1 + 64);
  v10 = -v7;
  v48 = a1;
  v49 = a1 + 64;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v50 = v8;
  v51 = 0;
  v52 = v11 & v9;
  v53 = a2;
  v54 = a3;

  sub_1005359AC(&v46);
  v12 = *(&v46 + 1);
  if (!*(&v46 + 1))
  {
    goto LABEL_25;
  }

  v13 = v46;
  sub_10001F348(v47, v45);
  v14 = *a5;
  result = sub_10003ADCC(v13, v12);
  v17 = *(v14 + 16);
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
  if (*(v14 + 24) < v20)
  {
    sub_100166280(v20, a4 & 1);
    result = sub_10003ADCC(v13, v12);
    if ((v21 & 1) == (v22 & 1))
    {
      goto LABEL_10;
    }

LABEL_8:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  if ((a4 & 1) == 0)
  {
    v26 = result;
    sub_10016F6B4();
    result = v26;
    if (v21)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_10:
  if (v21)
  {
LABEL_11:
    v23 = *a5;
    v24 = 32 * result;
    sub_10001F2EC(*(*a5 + 56) + 32 * result, v44);
    sub_10000BB78(v45);

    v25 = *(v23 + 56);
    sub_10000BB78((v25 + v24));
    sub_10001F348(v44, (v25 + v24));
    goto LABEL_15;
  }

LABEL_13:
  v27 = *a5;
  *(*a5 + 8 * (result >> 6) + 64) |= 1 << result;
  v28 = (v27[6] + 16 * result);
  *v28 = v13;
  v28[1] = v12;
  result = sub_10001F348(v45, (v27[7] + 32 * result));
  v29 = v27[2];
  v19 = __OFADD__(v29, 1);
  v30 = v29 + 1;
  if (!v19)
  {
    v27[2] = v30;
LABEL_15:
    sub_1005359AC(&v46);
    v12 = *(&v46 + 1);
    if (*(&v46 + 1))
    {
      v21 = 1;
      do
      {
        v13 = v46;
        sub_10001F348(v47, v45);
        v34 = *a5;
        result = sub_10003ADCC(v13, v12);
        v36 = *(v34 + 16);
        v37 = (v35 & 1) == 0;
        v19 = __OFADD__(v36, v37);
        v38 = v36 + v37;
        if (v19)
        {
          goto LABEL_26;
        }

        a4 = v35;
        if (*(v34 + 24) < v38)
        {
          sub_100166280(v38, 1);
          result = sub_10003ADCC(v13, v12);
          if ((a4 & 1) != (v39 & 1))
          {
            goto LABEL_8;
          }
        }

        if (a4)
        {
          v31 = *a5;
          v32 = 32 * result;
          sub_10001F2EC(*(*a5 + 56) + 32 * result, v44);
          sub_10000BB78(v45);

          v33 = *(v31 + 56);
          sub_10000BB78((v33 + v32));
          sub_10001F348(v44, (v33 + v32));
        }

        else
        {
          v40 = *a5;
          *(*a5 + 8 * (result >> 6) + 64) |= 1 << result;
          v41 = (v40[6] + 16 * result);
          *v41 = v13;
          v41[1] = v12;
          result = sub_10001F348(v45, (v40[7] + 32 * result));
          v42 = v40[2];
          v19 = __OFADD__(v42, 1);
          v43 = v42 + 1;
          if (v19)
          {
            goto LABEL_27;
          }

          v40[2] = v43;
        }

        sub_1005359AC(&v46);
        v12 = *(&v46 + 1);
      }

      while (*(&v46 + 1));
    }

LABEL_25:
    sub_10001FA6C(v48);
  }

LABEL_27:
  __break(1u);
  return result;
}

_OWORD *sub_100536158(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v45 = a3;
  v46 = a4;
  v43 = a1;
  v44 = a2;
  v4 = sub_100007224(&qword_10083D6A0, &unk_1006DB700);
  __chkstk_darwin(v4 - 8);
  v6 = &v42 - v5;
  v7 = type metadata accessor for PDF417ParsedData();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = type metadata accessor for Logger();
  v11 = *(v47 - 8);
  v12 = __chkstk_darwin(v47);
  v42 = &v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v12);
  v16 = &v42 - v15;
  __chkstk_darwin(v14);
  v18 = &v42 - v17;
  defaultLogger()();
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&_mh_execute_header, v19, v20, "Preparing bindings dict from PDF417ParsedData", v21, 2u);
  }

  v22 = *(v11 + 8);
  v23 = v47;
  v22(v18, v47);
  v52[0] = &_swiftEmptyDictionarySingleton;
  sub_10000BBC4(v43, v6, &qword_10083D6A0, &unk_1006DB700);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_10000BE18(v6, &qword_10083D6A0, &unk_1006DB700);
  }

  else
  {
    (*(v8 + 32))(v10, v6, v7);
    v24 = PDF417ParsedData.getBindings()();
    sub_10054C734(v24);
    v26 = v25;

    v27 = v52[0];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v50 = v27;
    sub_100535B0C(v26, sub_100535960, 0, isUniquelyReferenced_nonNull_native, &v50);

    v52[0] = v50;
    v29 = defaultLogger()();
    __chkstk_darwin(v29);
    *(&v42 - 2) = v52;
    Logger.sensitive(_:)();
    v22(v16, v23);
    (*(v8 + 8))(v10, v7);
  }

  v30 = v46;
  sub_10051F0D0(v52, v44, v45);
  if (!v30)
  {
    goto LABEL_12;
  }

  OS_dispatch_group.wait()();
  v31 = *(v30 + 112);
  if (!v31 || v31[2] != 2)
  {

LABEL_12:
    v36 = v42;
    defaultLogger()();
    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      *v39 = 0;
      _os_log_impl(&_mh_execute_header, v37, v38, "No GPS location available for bindings", v39, 2u);
    }

    v22(v36, v47);
    goto LABEL_15;
  }

  v51 = &type metadata for Double;
  *&v50 = v31[4];
  sub_10001F348(&v50, v49);

  v32 = swift_isUniquelyReferenced_nonNull_native();
  v48 = v52[0];
  result = sub_10016CC40(v49, 0xD000000000000018, 0x800000010071E160, v32);
  v51 = &type metadata for Double;
  v52[0] = v48;
  if (v31[2] >= 2uLL)
  {
    v34 = v31[5];

    *&v50 = v34;
    sub_10001F348(&v50, v49);
    v35 = swift_isUniquelyReferenced_nonNull_native();
    v48 = v52[0];
    sub_10016CC40(v49, 0xD000000000000019, 0x800000010071E180, v35);

    v52[0] = v48;
LABEL_15:
    v40._countAndFlagsBits = 0x6133333630313834;
    v41._countAndFlagsBits = 0xD00000000000001ELL;
    v41._object = 0x800000010071E140;
    v40._object = 0xE800000000000000;
    logMilestone(tag:description:)(v40, v41);
    return v52[0];
  }

  __break(1u);
  return result;
}

uint64_t sub_100536710(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DIPError.Code();
  v36 = *(v4 - 8);
  v37 = v4;
  __chkstk_darwin(v4);
  v38 = v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DIPError();
  v40 = *(v6 - 8);
  v41 = v6;
  __chkstk_darwin(v6);
  v39 = v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = type metadata accessor for Logger();
  v8 = *(v42 - 8);
  v9 = __chkstk_darwin(v42);
  v35 = v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  __chkstk_darwin(v11);
  v13 = v33 - v12;
  v14 = type metadata accessor for String.Encoding();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = v33 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2 && (static String.Encoding.utf8.getter(), v18 = String.data(using:allowLossyConversion:)(), v20 = v19, (*(v15 + 8))(v17, v14), v20 >> 60 != 15))
  {
    v33[1] = a1;
    type metadata accessor for JSONDecoder();
    swift_allocObject();
    JSONDecoder.init()();
    sub_10053C938();
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();
    v25 = v18;

    v26 = v44;
    v33[0] = v43;
    v27 = v45;
    v28 = v46;
    v34 = v47;
    type metadata accessor for JSONEncoder();
    swift_allocObject();
    JSONEncoder.init()();
    v43 = v33[0];
    v44 = v26;
    v45 = v27;
    v46 = v28;
    v47 = 2;
    sub_10053B82C();
    v30 = dispatch thunk of JSONEncoder.encode<A>(_:)();
    v32 = v31;

    v43 = v30;
    v44 = v32;
    static String.Encoding.utf8.getter();
    sub_10053B880();
    String.init<A>(bytes:encoding:)();
    sub_10000BD94(v25, v20);
    sub_10000B90C(v30, v32);
    v24 = v34;
  }

  else
  {
    defaultLogger()();
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&_mh_execute_header, v21, v22, "no duaDataAug, using defaults", v23, 2u);
    }

    (*(v8 + 8))(v13, v42);

    v24 = 0;
  }

  return v24 & 1;
}

uint64_t sub_100536E08(__int128 *a1, char a2, char a3)
{
  v6 = type metadata accessor for Logger();
  __chkstk_darwin(v6);
  v7 = type metadata accessor for String.Encoding();
  __chkstk_darwin(v7 - 8);
  if (*(a1 + 3) >> 60 == 15)
  {
    return 0;
  }

  v8 = *(a1 + 7);
  v25 = *a1;
  if (*(&v25 + 1) >> 60 == 15)
  {
    return 0;
  }

  sub_10000BBC4(a1, &v21, &qword_100847578, &qword_1006E7968);
  sub_10000BBC4(&v25, &v21, &qword_100847580, &qword_1006E7970);
  v9 = Data.base64EncodedString(options:)(0);
  sub_10000BE18(&v25, &qword_100847580, &qword_1006E7970);
  if (qword_100832C80 != -1)
  {
    swift_once();
  }

  if (!byte_100882380)
  {
    v8 = -1.0;
  }

  sub_100007224(&unk_1008483D0, &unk_1006E83E0);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1006BF520;
  *(v10 + 56) = &type metadata for Double;
  *(v10 + 64) = &protocol witness table for Double;
  *(v10 + 32) = v8;
  v11 = String.init(format:_:)();
  v13 = v12;
  type metadata accessor for JSONEncoder();
  swift_allocObject();
  JSONEncoder.init()();
  v21._countAndFlagsBits = 0;
  v14 = sub_1006594FC(v11, v13, &v21);

  v15 = *&v21._countAndFlagsBits;
  if (!v14)
  {
    v15 = -1.0;
  }

  v21 = v9;
  v22 = v15;
  v23 = a2 & 1;
  v24 = a3;
  sub_10053B82C();
  v16 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v18 = v17;

  v21._countAndFlagsBits = v16;
  v21._object = v18;
  static String.Encoding.utf8.getter();
  sub_10053B880();
  v19 = String.init<A>(bytes:encoding:)();
  sub_10000BE18(a1, &qword_100847578, &qword_1006E7968);
  sub_10000B90C(v16, v18);
  return v19;
}

uint64_t sub_1005371D8@<X0>(uint64_t a1@<X0>, const char *a2@<X1>, uint64_t a3@<X8>)
{
  v92 = a2;
  v5 = type metadata accessor for Logger();
  v90 = *(v5 - 8);
  v91 = v5;
  __chkstk_darwin(v5);
  v89 = &v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DIPError.Code();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DIPPregeneratedAssessment(0);
  v12 = Data.init(base64Encoded:options:)();
  v106 = v7;
  if (v13 >> 60 == 15)
  {
    goto LABEL_4;
  }

  v14 = v12;
  v15 = v13;
  v16 = Data.init(base64Encoded:options:)();
  if (v17 >> 60 == 15)
  {
    sub_10000BD94(v14, v15);
LABEL_4:
    (*(v8 + 104))(v10, enum case for DIPError.Code.base64DecodingFailed(_:), v7);
    sub_1000402AC(_swiftEmptyArrayStorage);
    v18 = v10;
    type metadata accessor for DIPError();
    sub_10053B9C0(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    v19 = v106;
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
LABEL_8:
    (*(v8 + 104))(v18, enum case for DIPError.Code.internalError(_:), v19);
    swift_errorRetain();
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_10053B9C0(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
  }

  v86 = a3;
  v87 = v16;
  v88 = v17;
  type metadata accessor for JSONDecoder();
  swift_allocObject();
  v20 = JSONDecoder.init()();
  sub_10009EF3C();
  v21 = v93;
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();
  if (v21)
  {

    sub_10000BD94(v87, v88);
    sub_10000BD94(v14, v15);
    v18 = v10;
    v19 = v106;
    goto LABEL_8;
  }

  v85 = v15;
  v93 = v14;
  v105[0] = v94;
  v105[1] = v95;
  v105[2] = v96;
  v105[3] = v97;
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();
  v104[0] = v94;
  v104[1] = v95;
  v104[2] = v96;
  v104[3] = v97;
  sub_10004A858(v105, v98);
  v72 = v98[1];
  v73 = v98[0];
  v70 = v98[3];
  v71 = v98[2];
  v69 = v98[4];
  v83 = v98[6];
  v84 = v98[5];
  v81 = v98[8];
  v82 = v98[7];
  v79 = v98[10];
  v80 = v98[9];
  v77 = v98[12];
  v78 = v98[11];
  v75 = v98[14];
  v76 = v98[13];
  v74 = v99;
  v23 = v100;
  sub_10004D770(v105);
  sub_10004A858(v104, v101);
  v67 = v23;
  v68 = v20;
  v52 = v101[0];
  v65 = v101[2];
  v66 = v101[1];
  v63 = v101[4];
  v64 = v101[3];
  v61 = v101[6];
  v62 = v101[5];
  v59 = v101[8];
  v60 = v101[7];
  v57 = v101[10];
  v58 = v101[9];
  v55 = v101[12];
  v56 = v101[11];
  v53 = v101[14];
  v54 = v101[13];
  v24 = v102;
  v92 = v103;
  sub_10004D770(v104);
  v25 = (a1 + *(v11 + 32));
  v26 = v106;
  v27 = v85;
  if (v99 != *v25 || (v28 = v92, v29 = v24, v100 != v25[1]))
  {
    if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
LABEL_19:
      sub_10004D8EC(v98);
      sub_10004D8EC(v101);
      v92 = "getGUIDs(from:guidFactory:)";
      (*(v8 + 104))(v10, enum case for DIPError.Code.guidSeedMismatch(_:), v26);
      sub_1000402AC(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_10053B9C0(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
      v18 = v10;
      swift_allocError();
      v19 = v106;
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      swift_willThrow();

      sub_10000BD94(v87, v88);
      sub_10000BD94(v93, v27);
      goto LABEL_8;
    }

    v29 = v102;
    v28 = v103;
  }

  v30 = (a1 + *(v11 + 40));
  if ((v29 != *v30 || v28 != v30[1]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_19;
  }

  v31 = v89;
  defaultLogger()();
  v32 = Logger.logObject.getter();
  v33 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    *v34 = 0;
    _os_log_impl(&_mh_execute_header, v32, v33, "using guids from pre-generated assessment", v34, 2u);
  }

  sub_10000BD94(v93, v27);

  sub_10000BD94(v87, v88);

  result = (*(v90 + 8))(v31, v91);
  v35 = v86;
  v36 = v71;
  *(v86 + 8) = v72;
  *(v35 + 16) = v36;
  v37 = v69;
  *(v35 + 24) = v70;
  *(v35 + 32) = v37;
  *v35 = v73 & 1;
  v38 = v83;
  *(v35 + 40) = v84;
  *(v35 + 48) = v38;
  v39 = v81;
  *(v35 + 56) = v82;
  *(v35 + 64) = v39;
  v40 = v79;
  *(v35 + 72) = v80;
  *(v35 + 80) = v40;
  v41 = v77;
  *(v35 + 88) = v78;
  *(v35 + 96) = v41;
  v42 = v75;
  *(v35 + 104) = v76;
  *(v35 + 112) = v42;
  v43 = v67;
  *(v35 + 120) = v74;
  *(v35 + 128) = v43;
  *(v35 + 136) = v52 & 1;
  v44 = v65;
  *(v35 + 144) = v66;
  *(v35 + 152) = v44;
  v45 = v63;
  *(v35 + 160) = v64;
  *(v35 + 168) = v45;
  v46 = v61;
  *(v35 + 176) = v62;
  *(v35 + 184) = v46;
  v47 = v59;
  *(v35 + 192) = v60;
  *(v35 + 200) = v47;
  v48 = v57;
  *(v35 + 208) = v58;
  *(v35 + 216) = v48;
  v49 = v55;
  *(v35 + 224) = v56;
  *(v35 + 232) = v49;
  v50 = v53;
  *(v35 + 240) = v54;
  *(v35 + 248) = v50;
  v51 = v92;
  *(v35 + 256) = v24;
  *(v35 + 264) = v51;
  return result;
}

uint64_t sub_100537B28(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100537B90(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100537BF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  *(v7 + 397) = a7;
  *(v7 + 1952) = a6;
  *(v7 + 1944) = a5;
  *(v7 + 1936) = a4;
  *(v7 + 1928) = a3;
  *(v7 + 1920) = a2;
  *(v7 + 1912) = a1;
  v8 = type metadata accessor for DIPError.Code();
  *(v7 + 1960) = v8;
  *(v7 + 1968) = *(v8 - 8);
  *(v7 + 1976) = swift_task_alloc();
  v9 = type metadata accessor for Date();
  *(v7 + 1984) = v9;
  *(v7 + 1992) = *(v9 - 8);
  *(v7 + 2000) = swift_task_alloc();
  *(v7 + 2008) = swift_task_alloc();
  v10 = type metadata accessor for DispatchWorkItemFlags();
  *(v7 + 2016) = v10;
  *(v7 + 2024) = *(v10 - 8);
  *(v7 + 2032) = swift_task_alloc();
  *(v7 + 2040) = swift_task_alloc();
  *(v7 + 2048) = type metadata accessor for DIPPregeneratedAssessment(0);
  *(v7 + 2056) = swift_task_alloc();
  v11 = sub_100007224(&qword_1008352C8, &qword_1006C0D50);
  *(v7 + 2064) = v11;
  *(v7 + 2072) = *(v11 - 8);
  *(v7 + 2080) = swift_task_alloc();
  sub_100007224(&qword_100847540, &qword_1006E7938);
  *(v7 + 2088) = swift_task_alloc();
  *(v7 + 2096) = swift_task_alloc();
  v12 = type metadata accessor for String.Encoding();
  *(v7 + 2104) = v12;
  *(v7 + 2112) = *(v12 - 8);
  *(v7 + 2120) = swift_task_alloc();
  sub_100007224(&qword_100835248, &unk_1006E7940);
  *(v7 + 2128) = swift_task_alloc();
  *(v7 + 2136) = swift_task_alloc();
  *(v7 + 2144) = swift_task_alloc();
  *(v7 + 2152) = swift_task_alloc();
  v13 = sub_100007224(&qword_100835180, &unk_1006C0CE0);
  *(v7 + 2160) = v13;
  *(v7 + 2168) = *(v13 - 8);
  *(v7 + 2176) = swift_task_alloc();
  *(v7 + 2184) = swift_task_alloc();
  *(v7 + 2192) = swift_task_alloc();
  v14 = type metadata accessor for UUID();
  *(v7 + 2200) = v14;
  *(v7 + 2208) = *(v14 - 8);
  *(v7 + 2216) = swift_task_alloc();
  sub_100007224(&qword_1008350C0, &unk_1006C0B30);
  *(v7 + 2224) = swift_task_alloc();
  *(v7 + 2232) = swift_task_alloc();
  *(v7 + 2240) = type metadata accessor for AugmentedProfile(0);
  *(v7 + 2248) = swift_task_alloc();
  v15 = type metadata accessor for Logger();
  *(v7 + 2256) = v15;
  *(v7 + 2264) = *(v15 - 8);
  *(v7 + 2272) = swift_task_alloc();
  *(v7 + 2280) = swift_task_alloc();
  *(v7 + 2288) = swift_task_alloc();

  return _swift_task_switch(sub_1005380F0, 0, 0);
}

uint64_t sub_1005380F0(uint64_t a1)
{
  v30 = v1;
  defaultLogger()();

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();

  v4 = os_log_type_enabled(v2, v3);
  v5 = *(v1 + 2288);
  v6 = *(v1 + 2264);
  v7 = *(v1 + 2256);
  if (v4)
  {
    v8 = *(v1 + 1920);
    v9 = *(v1 + 1912);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v29 = v11;
    *v10 = 136446210;
    *(v10 + 4) = sub_100141FE4(v9, v8, &v29);
    _os_log_impl(&_mh_execute_header, v2, v3, "Pre-generating assessment for workflow ID %{public}s", v10, 0xCu);
    sub_10000BB78(v11);
  }

  v12 = *(v6 + 8);
  v12(v5, v7);
  *(v1 + 2296) = v12;
  sub_10053CD68(*(v1 + 2248));
  v13 = *(v1 + 2248);
  v14 = *(v1 + 2232);
  sub_10053D32C(v13);
  sub_10000BBC4(v13, v14, &qword_1008350C0, &unk_1006C0B30);
  v15 = sub_100007224(&qword_100835138, &qword_1006C0B58);
  *(v1 + 2304) = v15;
  v16 = *(v15 - 8);
  *(v1 + 2312) = v16;
  v17 = *(v16 + 48);
  *(v1 + 2320) = v17;
  *(v1 + 2328) = (v16 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  v18 = v17(v14, 1, v15);
  v19 = *(v1 + 2232);
  if (v18 == 1)
  {
    sub_10000BE18(*(v1 + 2232), &qword_1008350C0, &unk_1006C0B30);
    v20 = 0;
  }

  else
  {
    JWSSignedJSON.payload.getter();
    v21 = *(v1 + 368);
    *(v1 + 464) = *(v1 + 352);
    *(v1 + 480) = v21;
    *(v1 + 493) = *(v1 + 381);
    v22 = *(v1 + 304);
    *(v1 + 400) = *(v1 + 288);
    *(v1 + 416) = v22;
    v23 = *(v1 + 336);
    *(v1 + 432) = *(v1 + 320);
    *(v1 + 448) = v23;
    (*(v16 + 8))(v19, v15);
    sub_10009E858(v1 + 400);
    v20 = *(v1 + 507);
  }

  v24 = *(v1 + 1952);
  v25 = *(v1 + 1944);
  v26 = swift_allocObject();
  *(v26 + 16) = v25;
  *(v26 + 24) = v24;
  *(v1 + 1832) = type metadata accessor for DeviceInformationProvider();
  *(v1 + 1840) = &protocol witness table for DeviceInformationProvider;
  sub_100032DBC((v1 + 1808));

  DeviceInformationProvider.init()();
  sub_10004D91C((v1 + 1808), v20, &unk_1006E7958, v26, (v1 + 736));
  v27 = swift_task_alloc();
  *(v1 + 2336) = v27;
  *v27 = v1;
  v27[1] = sub_10053860C;

  return sub_10004ADF8(v1 + 152);
}

uint64_t sub_10053860C()
{
  *(*v1 + 2344) = v0;

  if (v0)
  {
    v2 = sub_10053AFFC;
  }

  else
  {
    v2 = sub_100538720;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100538720()
{
  v1 = v0[35];
  v0[294] = v0[34];
  v0[295] = v1;

  v2 = swift_task_alloc();
  v0[296] = v2;
  *v2 = v0;
  v2[1] = sub_1005387CC;

  return sub_10004BA48((v0 + 2));
}

uint64_t sub_1005387CC()
{
  v2 = *v1;
  *(*v1 + 2376) = v0;

  if (v0)
  {
    sub_10004D8EC(v2 + 152);

    v3 = sub_10053B1E4;
  }

  else
  {
    v3 = sub_1005388F4;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1005388F4()
{
  v265 = v0;
  v1 = v0;
  v2 = v0[17];
  v3 = v0[18];

  v4 = Data.init(base64Encoded:options:)();
  if (v5 >> 60 == 15)
  {
    v6 = v0[281];
    v7 = v0[247];
    v8 = v0[246];
    v9 = v0[245];

    sub_10004D8EC((v0 + 2));
    sub_10004D8EC((v0 + 19));

    (*(v8 + 104))(v7, enum case for DIPError.Code.internalError(_:), v9);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_10053B9C0(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    sub_10004DEF0((v0 + 92));
LABEL_15:
    v17 = v6;
    goto LABEL_16;
  }

  v258 = v4;
  v259 = v5;
  if (qword_100832C98 != -1)
  {
    swift_once();
  }

  v10 = v0[297];
  v11 = v0[295];
  v12 = v1[294];
  v13 = off_1008475C8;
  os_unfair_lock_lock(off_1008475C8 + 6);

  os_unfair_lock_unlock(v13 + 6);
  v14 = sub_100544838(v12, v11);
  v257 = v15;
  if (v10)
  {
    v16 = v1[281];

    sub_10004DEF0((v1 + 92));

    sub_10004D8EC((v1 + 2));
    sub_10004D8EC((v1 + 19));
    sub_10000BD94(v258, v259);

    v17 = v16;
LABEL_16:
    sub_100537B90(v17, type metadata accessor for AugmentedProfile);

    v27 = v1[1];
    goto LABEL_17;
  }

  v256 = v14;

  if (v257 >> 60 == 15)
  {
    v6 = v1[281];
    v18 = v1[247];
    v19 = v1[246];
    v20 = v1[245];

    sub_10004D8EC((v1 + 2));
    sub_10004D8EC((v1 + 19));

    (*(v19 + 104))(v18, enum case for DIPError.Code.internalError(_:), v20);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_10053B9C0(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    sub_10004DEF0((v1 + 92));
LABEL_14:
    sub_10000BD94(v258, v259);
    goto LABEL_15;
  }

  v6 = v1[281];
  if (!*(v6 + *(v1[280] + 24) + 8))
  {
    v23 = v257;
    goto LABEL_13;
  }

  v21 = Data.init(base64Encoded:options:)();
  if (v22 >> 60 == 15)
  {
    v23 = v257;
    v6 = v1[281];
LABEL_13:
    v24 = v1[247];
    v25 = v1[246];
    v26 = v1[245];

    sub_10004D8EC((v1 + 2));
    sub_10004D8EC((v1 + 19));

    (*(v25 + 104))(v24, enum case for DIPError.Code.internalError(_:), v26);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_10053B9C0(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    sub_10004DEF0((v1 + 92));
    sub_10000BD94(v256, v23);
    goto LABEL_14;
  }

  v255 = v22;
  v253 = v21;
  v29 = *(v1 + 397);
  UUID.init()();
  v251 = UUID.uuidString.getter();
  v31 = v30;
  if (v29 == 1)
  {
    v32 = sub_10001F8D4(0, &qword_100833A50, NSNumber_ptr);
    v33.super.super.isa = NSNumber.init(integerLiteral:)(2).super.super.isa;
  }

  else
  {
    v32 = &type metadata for Int;
    v33.super.super.isa = 1;
  }

  v1[238] = v32;
  v1[235] = v33.super.super.isa;
  sub_10001F348(v1 + 235, v1 + 231);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v264[0] = &_swiftEmptyDictionarySingleton;
  sub_10016CC40(v1 + 231, 0xD000000000000012, 0x800000010071DEF0, isUniquelyReferenced_nonNull_native);
  v35 = UUID.uuidString.getter();
  v37 = v36;
  type metadata accessor for JSONEncoder();
  swift_allocObject();

  JSONEncoder.init()();
  v1[220] = v35;
  v1[221] = v37;
  v1[222] = v251;
  v1[223] = v31;
  v1[224] = v2;
  v1[225] = v3;
  sub_10053B49C();
  v38 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v243 = v37;
  v248 = v31;
  v39 = v1[274];
  v40 = v1[269];
  v41 = v1[259];
  v240 = v1[258];
  v242 = *(v1 + 397);
  v42 = v38;
  v44 = v43;

  sub_100007224(&qword_10083C068, &qword_1006DEC10);
  v45 = swift_allocObject();
  *(v45 + 16) = xmmword_1006BF520;
  *(v45 + 32) = v42;
  *(v45 + 40) = v44;
  v245 = v45;
  v46 = sub_100007224(&unk_100835208, &unk_1006C0D10);
  v233 = *(v46 - 8);
  v235 = v46;
  (*(v233 + 56))(v39, 1, 1);
  (*(v41 + 56))(v40, 1, 1, v240);
  v246 = v42;
  v247 = v44;
  if (v242 == 1)
  {
    v47 = v1[290];
    v48 = v1[288];
    v49 = v1[278];
    sub_10000BBC4(v1[281], v49, &qword_1008350C0, &unk_1006C0B30);
    if (v47(v49, 1, v48) == 1)
    {
      v50 = v1[278];
      sub_10000B8B8(v42, v247);
      sub_10000BE18(v50, &qword_1008350C0, &unk_1006C0B30);
      v51 = 0;
      v52 = 0;
    }

    else
    {
      v82 = v1[289];
      v83 = v1[288];
      v84 = v1[278];
      sub_10000B8B8(v246, v247);
      JWSSignedJSON.payload.getter();
      v85 = *(v1 + 37);
      *(v1 + 43) = *(v1 + 36);
      *(v1 + 44) = v85;
      *(v1 + 717) = *(v1 + 605);
      v86 = *(v1 + 33);
      *(v1 + 39) = *(v1 + 32);
      *(v1 + 40) = v86;
      v87 = *(v1 + 35);
      *(v1 + 41) = *(v1 + 34);
      *(v1 + 42) = v87;
      (*(v82 + 8))(v84, v83);
      sub_10000BBC4((v1 + 78), (v1 + 198), &qword_100835658, &qword_1006C1A50);
      sub_10009E858((v1 + 78));
      if (v1[79])
      {
        v52 = v1[85];
        v88 = v1[84];

        sub_10000BE18((v1 + 78), &qword_100835658, &qword_1006C1A50);
        v51 = v88;
      }

      else
      {
        v51 = 0;
        v52 = 0;
      }
    }

    sub_1005259FC(v1[273], v1[268], v51, v52, v35, v243, v1[294], v1[295]);
    v117 = v1[274];
    v118 = v1[273];
    v119 = v1[269];
    v120 = v1[268];

    sub_1000B2764(v118, v117, &qword_100835180, &unk_1006C0CE0);
    sub_1000B2764(v120, v119, &qword_100835248, &unk_1006E7940);
    if (!(*(v233 + 48))(v117, 1, v235))
    {
      EncryptedDataContainer.data.getter();
      if (v121)
      {
        v122 = v1[265];
        v123 = v1[264];
        v124 = v1[263];
        static String.Encoding.utf8.getter();
        v125 = String.data(using:allowLossyConversion:)();
        v127 = v126;

        v128 = *(v123 + 8);
        v129 = v122;
        v130 = v127;
        v128(v129, v124);
        if (v127 >> 60 != 15)
        {
          v241 = v125;
          if ((*(v1[259] + 48))(v1[269], 1, v1[258]) || (EncryptedDataContainer.data.getter(), !v156))
          {
            sub_10000BD94(v125, v127);
          }

          else
          {
            v157 = v1[265];
            v263 = v1;
            v158 = v1[263];
            static String.Encoding.utf8.getter();
            v159 = String.data(using:allowLossyConversion:)();
            v161 = v160;

            v128(v157, v158);
            if (v161 >> 60 == 15)
            {
              sub_10000BD94(v241, v130);
            }

            else
            {
              v175 = v161;
              sub_10000B8B8(v241, v130);
              v177 = *(v245 + 2);
              v176 = *(v245 + 3);
              v178 = v176 >> 1;
              v179 = v177 + 1;
              if (v176 >> 1 <= v177)
              {
                v245 = sub_1003C55E4((v176 > 1), v177 + 1, 1, v245);
                v176 = *(v245 + 3);
                v178 = v176 >> 1;
              }

              *(v245 + 2) = v179;
              v180 = &v245[16 * v177];
              *(v180 + 4) = v241;
              *(v180 + 5) = v130;
              v181 = v177 + 2;
              if (v178 < v181)
              {
                v245 = sub_1003C55E4((v176 > 1), v181, 1, v245);
              }

              sub_10000BD94(v241, v130);
              *(v245 + 2) = v181;
              v182 = &v245[16 * v179];
              *(v182 + 4) = v159;
              *(v182 + 5) = v175;
            }

            v1 = v263;
          }
        }
      }
    }
  }

  else
  {
    sub_10000B8B8(v42, v44);
  }

  v53 = v1 + 214;
  if (qword_100832CC0 != -1)
  {
    swift_once();
  }

  v54 = v1[240];
  v55 = v1;
  v56 = v1[239];
  LODWORD(v241) = MKBGetDeviceLockState();
  os_unfair_lock_lock(v13 + 6);
  v57 = *&v13[4]._os_unfair_lock_opaque;

  os_unfair_lock_unlock(v13 + 6);

  *(v55 + 55) = xmmword_1006BF650;
  *(v55 + 56) = xmmword_1006DE2A0;
  *(v55 + 57) = xmmword_1006BF650;
  *(v55 + 232) = 0;
  v55[117] = 0xBFF0000000000000;
  v260 = v57[4];
  v58 = swift_allocObject();
  v58[2] = v57;
  v58[3] = v56;
  v58[4] = v54;
  v59 = swift_allocObject();
  *(v59 + 16) = sub_10053B4F4;
  *(v59 + 24) = v58;
  v55[218] = sub_10021E8E8;
  v55[219] = v59;
  v55[214] = _NSConcreteStackBlock;
  v55[215] = 1107296256;
  v55[216] = sub_10057E264;
  v55[217] = &unk_100816060;
  v60 = _Block_copy(v53);

  v244 = v57;

  sub_1000363B4(v253, v255);
  v61 = v260;

  dispatch_sync(v61, v60);

  _Block_release(v60);
  LOBYTE(v60) = swift_isEscapingClosureAtFileLocation();

  if (v60)
  {
    __break(1u);
LABEL_69:
    swift_once();
LABEL_67:
    v200 = v57[257];
    v201 = qword_1008823D8;
    static DispatchWorkItemFlags.barrier.getter();
    v202 = swift_task_alloc();
    *(v202 + 16) = v201;
    *(v202 + 24) = v200;
    v203 = v57;
    OS_dispatch_queue.sync<A>(flags:execute:)();
    v204 = v57[267];
    v229 = v57[262];
    v231 = v57[257];
    v205 = v57[255];
    v206 = v57[253];
    v207 = v57[252];
    v232 = v57[251];
    v208 = v57[250];
    v209 = v57[249];
    v252 = v203[248];
    v249 = v203[240];
    v238 = v203[239];

    sub_10004D8EC((v203 + 2));
    sub_10004D8EC((v203 + 19));

    v254 = *(v206 + 8);
    v254(v205, v207);
    sub_10000BE18(v204, &qword_100835248, &unk_1006E7940);
    sub_10000BE18(v229, &qword_100847540, &qword_1006E7938);
    sub_100537B90(v231, type metadata accessor for DIPPregeneratedAssessment);
    Date.init()();
    static Date.- infix(_:_:)();
    v210 = *(v209 + 8);
    v210(v208, v252);
    static DispatchWorkItemFlags.barrier.getter();
    v211 = swift_task_alloc();
    v211[2] = v201;
    v211[3] = v238;
    v211[4] = v249;
    v211[5] = v232;
    OS_dispatch_queue.sync<A>(flags:execute:)();
    v250 = v203[281];
    v239 = v203[277];
    v212 = v203[276];
    v213 = v203;
    v214 = v203[275];
    v215 = v203;
    v216 = v203[254];
    v217 = v203[252];
    v218 = v213[251];
    v219 = v213[248];
    sub_10004DEF0((v213 + 92));
    sub_10000BD94(v256, v257);
    sub_10000BD94(v258, v259);
    sub_10000B90C(v241, v244);
    sub_10053B540(v245);
    sub_10000BD94(v253, v255);
    sub_10000B90C(v246, v247);

    v220 = v216;
    v96 = v215;
    v254(v220, v217);
    (*(v212 + 8))(v239, v214);
    v210(v218, v219);
    v115 = v250;
    goto LABEL_40;
  }

  v62 = (v55 + 110);
  v63 = v55[240];
  v64 = v55[239];
  v65 = swift_task_alloc();
  *(v65 + 16) = v244;
  *(v65 + 24) = v64;
  *(v65 + 32) = v63;
  *(v65 + 40) = 9;
  *(v65 + 48) = v256;
  *(v65 + 56) = v257;
  *(v65 + 64) = v258;
  *(v65 + 72) = v259;
  *(v65 + 80) = v253;
  *(v65 + 88) = v255;
  *(v65 + 96) = &_swiftEmptyDictionarySingleton;
  *(v65 + 104) = v245;
  *(v65 + 112) = 0;
  *(v65 + 120) = 0;
  *(v65 + 128) = 0;
  *(v65 + 136) = 0;
  *(v65 + 144) = v55 + 110;
  OS_dispatch_queue.sync<A>(execute:)();
  v66 = v55;
  v67 = v55 + 126;
  v68 = (v55 + 134);
  v261 = (v66 + 206);
  v236 = v241 - 1;
  v69 = v66;

  sub_10000BD94(v253, v255);

  v70 = *v62;
  v71 = v62[1];
  *v68 = *v62;
  *(v68 + 1) = v71;
  v72 = v62[2];
  v73 = v62[3];
  *(v68 + 2) = v72;
  *(v68 + 3) = v73;
  *v67 = v70;
  v67[1] = v71;
  v67[2] = v72;
  v67[3] = v73;
  v245 = v68;
  sub_10053B594(v68, (v66 + 102));
  sub_10053B540(v67);
  v230 = *(v66 + 280);
  v241 = v66[136];
  v244 = v66[137];
  sub_10000B8B8(v241, v244);
  defaultLogger()();

  v74 = Logger.logObject.getter();
  v75 = static os_log_type_t.debug.getter();

  v76 = os_log_type_enabled(v74, v75);
  v77 = v69[287];
  v78 = v69[285];
  v234 = v69[282];
  if (v76)
  {
    v225 = v69[239];
    v226 = v69[240];
    v227 = v69[287];
    v79 = swift_slowAlloc();
    v80 = v78;
    v81 = swift_slowAlloc();
    v264[0] = v81;
    *v79 = 136446210;
    *(v79 + 4) = sub_100141FE4(v225, v226, v264);
    _os_log_impl(&_mh_execute_header, v74, v75, "Successfully pre-generated an assessment for workflow ID %{public}s", v79, 0xCu);
    sub_10000BB78(v81);

    v227(v80, v234);
  }

  else
  {

    v77(v78, v234);
  }

  v89 = *(v69 + 397);
  v90 = *(v245 + 1);
  *v261 = *v245;
  v261[1] = v90;
  v91 = *(v245 + 3);
  v261[2] = *(v245 + 2);
  v261[3] = v91;
  sub_10053B594(v245, (v69 + 142));
  v92 = sub_100536E08(v261, 0, v236 < 2);
  v94 = v93;
  sub_10053B540(v245);
  v95 = v89 == 1;
  v96 = v69;
  if (v95)
  {
    v228 = v92;
    v262 = v94;
    v97 = v69;
    v98 = v69 + 150;
    v99 = v69[274];
    v100 = v69[271];
    v101 = v69[270];
    v102 = v69[269];
    v103 = v69[267];
    v104 = v97[262];
    sub_10000BBC4(v99, v104, &qword_100835180, &unk_1006C0CE0);
    (*(v100 + 56))(v104, 0, 1, v101);
    sub_10000BBC4(v102, v103, &qword_100835248, &unk_1006E7940);
    v105 = Data.base64EncodedString(options:)(0);
    swift_allocObject();
    JSONEncoder.init()();
    v106 = 49;
    if (*(v97 + 152))
    {
      v106 = 50;
    }

    v107 = v97[28];
    v108 = v97[29];
    v109 = v97[30];
    v110 = v97[31];
    v111 = v97[32];
    v112 = v97[33];
    v97[150] = v106;
    v97[151] = 0xE100000000000000;
    v97[152] = v107;
    v97[153] = v108;
    v97[154] = v109;
    v97[155] = v110;
    v97[156] = v111;
    v97[157] = v112;
    sub_10009F038();

    v113 = dispatch thunk of JSONEncoder.encode<A>(_:)();
    v131 = v98[1];
    *(v97 + 83) = *v98;
    *(v97 + 84) = v131;
    v132 = v98[3];
    *(v97 + 85) = v98[2];
    *(v97 + 86) = v132;
    v133 = v113;
    v135 = v134;
    sub_10004D770((v97 + 166));
    v136 = Data.base64EncodedString(options:)(0);
    sub_10000B90C(v133, v135);
    v137 = 49;
    if (*(v97 + 16))
    {
      v137 = 50;
    }

    v139 = v97[11];
    v138 = v97[12];
    v140 = v97[13];
    v141 = v97[14];
    v142 = v97[15];
    v143 = v97[16];
    v97[174] = v137;
    v97[175] = 0xE100000000000000;
    v97[176] = v139;
    v97[177] = v138;
    v97[178] = v140;
    v97[179] = v141;
    v97[180] = v142;
    v97[181] = v143;

    v144 = dispatch thunk of JSONEncoder.encode<A>(_:)();
    v146 = v97[271];
    v147 = v97[270];
    v223 = v97[262];
    v148 = v97[261];
    v149 = *(v97 + 88);
    *(v97 + 95) = *(v97 + 87);
    *(v97 + 96) = v149;
    v150 = *(v97 + 90);
    *(v97 + 97) = *(v97 + 89);
    *(v97 + 98) = v150;
    v151 = v144;
    v152 = v145;
    sub_10004D770((v97 + 190));
    v153 = Data.base64EncodedString(options:)(0);
    sub_10000B90C(v151, v152);
    sub_10000BBC4(v223, v148, &qword_100847540, &qword_1006E7938);
    if ((*(v146 + 48))(v148, 1, v147) == 1)
    {
      sub_10000BE18(v97[261], &qword_100847540, &qword_1006E7938);
      countAndFlagsBits = 0;
      object = 0;
    }

    else
    {
      sub_1000B1FC8(v97[261], v97[272], &qword_100835180, &unk_1006C0CE0);
      sub_10053B62C();
      v154 = dispatch thunk of JSONEncoder.encode<A>(_:)();
      v155 = v97[272];
      v162 = v154;
      v164 = v163;
      v165 = Data.base64EncodedString(options:)(0);
      countAndFlagsBits = v165._countAndFlagsBits;
      object = v165._object;
      sub_10000B90C(v162, v164);
      sub_10000BE18(v155, &qword_100835180, &unk_1006C0CE0);
    }

    v166 = v97[266];
    v167 = v97[259];
    v168 = v97[258];
    sub_10000BBC4(v97[267], v166, &qword_100835248, &unk_1006E7940);
    v169 = (*(v167 + 48))(v166, 1, v168);
    v170 = v97[266];
    if (v169 == 1)
    {

      sub_10000BE18(v170, &qword_100835248, &unk_1006E7940);
      v237 = 0;
      v222 = 0;
    }

    else
    {
      (*(v97[259] + 32))(v97[260], v97[266], v97[258]);
      sub_1000BA30C(&qword_1008357B0, &qword_1008352C8, &qword_1006C0D50, &protocol conformance descriptor for EncryptedDataContainer<A>);
      v171 = dispatch thunk of JSONEncoder.encode<A>(_:)();
      v172 = v97[260];
      v173 = v97[259];
      v174 = v97[258];
      v183 = v171;
      v185 = v184;
      v186 = Data.base64EncodedString(options:)(0);
      v237 = v186._countAndFlagsBits;
      v222 = v186._object;

      sub_10000B90C(v183, v185);
      (*(v173 + 8))(v172, v174);
    }

    v187 = v97[295];
    v188 = v97[294];
    v189 = v97[257];
    v190 = v97[256];
    v191 = v97[240];
    v57 = v97;
    v192 = v97[239];

    Date.init()();
    *v189 = v192;
    v189[1] = v191;
    *(v189 + v190[6]) = v105;
    v193 = (v189 + v190[7]);
    *v193 = v228;
    v193[1] = v262;
    v194 = (v189 + v190[8]);
    *v194 = v188;
    v194[1] = v187;
    *(v189 + v190[9]) = v136;
    v195 = (v189 + v190[10]);
    *v195 = v2;
    v195[1] = v3;
    *(v189 + v190[11]) = v153;
    v196 = (v189 + v190[12]);
    *v196 = v251;
    v196[1] = v248;
    *(v189 + v190[13]) = v230;
    *(v189 + v190[14]) = &_swiftEmptyDictionarySingleton;
    v197 = (v189 + v190[15]);
    *v197 = countAndFlagsBits;
    v197[1] = object;
    v198 = (v189 + v190[16]);
    *v198 = v237;
    v198[1] = v222;
    v199 = qword_100832CA8;

    if (v199 == -1)
    {
      goto LABEL_67;
    }

    goto LABEL_69;
  }

  v114 = v69[281];
  (*(v69[276] + 8))(v69[277], v69[275]);
  sub_10000B90C(v246, v247);
  sub_10000BD94(v253, v255);
  sub_10004DEF0((v69 + 92));
  sub_10004D8EC((v69 + 2));
  sub_10004D8EC((v69 + 19));

  sub_10000B90C(v241, v244);
  sub_10053B540(v245);
  sub_10000BD94(v256, v257);
  sub_10000BD94(v258, v259);

  v115 = v114;
LABEL_40:
  sub_100537B90(v115, type metadata accessor for AugmentedProfile);
  v116 = v96[274];
  sub_10000BE18(v96[269], &qword_100835248, &unk_1006E7940);
  sub_10000BE18(v116, &qword_100835180, &unk_1006C0CE0);

  v27 = v96[1];
LABEL_17:

  return v27();
}

uint64_t sub_10053AFFC()
{
  v1 = *(v0 + 2248);
  sub_10004DEF0(v0 + 736);
  sub_100537B90(v1, type metadata accessor for AugmentedProfile);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10053B1E4()
{
  v1 = *(v0 + 2248);
  sub_10004DEF0(v0 + 736);
  sub_100537B90(v1, type metadata accessor for AugmentedProfile);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10053B3CC()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10053B404()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_10053CD48;

  return sub_100532CB4(v2, v3);
}

unint64_t sub_10053B49C()
{
  result = qword_100847548;
  if (!qword_100847548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100847548);
  }

  return result;
}

uint64_t sub_10053B510(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_10053B62C()
{
  result = qword_100847550;
  if (!qword_100847550)
  {
    sub_10000B870(&qword_100835180, &unk_1006C0CE0);
    sub_1000BA30C(&qword_100835738, &unk_100835208, &unk_1006C0D10, &protocol conformance descriptor for EncryptedDataContainer<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100847550);
  }

  return result;
}

unint64_t sub_10053B6DC()
{
  result = qword_100847558;
  if (!qword_100847558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100847558);
  }

  return result;
}

unint64_t sub_10053B730()
{
  result = qword_100847560;
  if (!qword_100847560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100847560);
  }

  return result;
}

unint64_t sub_10053B784()
{
  result = qword_100847568;
  if (!qword_100847568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100847568);
  }

  return result;
}

unint64_t sub_10053B7D8()
{
  result = qword_100847570;
  if (!qword_100847570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100847570);
  }

  return result;
}

unint64_t sub_10053B82C()
{
  result = qword_100847588;
  if (!qword_100847588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100847588);
  }

  return result;
}

unint64_t sub_10053B880()
{
  result = qword_100847590;
  if (!qword_100847590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100847590);
  }

  return result;
}

unint64_t sub_10053B8D4()
{
  result = qword_10084A1B0;
  if (!qword_10084A1B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10084A1B0);
  }

  return result;
}

uint64_t sub_10053B928()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10053B9C0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10053BA08()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10053BA54()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10053BAA0()
{
  v1 = *(sub_100007224(&unk_10084A160, &unk_1006E7978) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = (*(v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(sub_100007224(&unk_10084A130, &qword_1006E9ED0) - 8);
  v6 = *(v5 + 80);
  v7 = (v4 + v6 + 8) & ~v6;
  v8 = *(v5 + 64);
  v9 = v0 + v3;
  v10 = type metadata accessor for AugmentedProfile(0);
  if (!(*(*(v10 - 8) + 48))(v9, 1, v10))
  {
    v11 = sub_100007224(&qword_100835138, &qword_1006C0B58);
    v12 = *(v11 - 8);
    if (!(*(v12 + 48))(v9, 1, v11))
    {
      (*(v12 + 8))(v9, v11);
    }
  }

  v13 = type metadata accessor for DIPPregeneratedAssessment(0);
  if (!(*(*(v13 - 8) + 48))(v0 + v7, 1, v13))
  {

    v14 = *(v13 + 20);
    v15 = type metadata accessor for Date();
    (*(*(v15 - 8) + 8))(v0 + v7 + v14, v15);
  }

  return _swift_deallocObject(v0, ((v8 + v7 + 7) & 0xFFFFFFFFFFFFFFF8) + 8, v2 | v6 | 7);
}

uint64_t sub_10053BE1C()
{
  v1 = *(sub_100007224(&unk_10084A160, &unk_1006E7978) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(sub_100007224(&unk_10084A130, &qword_1006E9ED0) - 8);
  v5 = (v3 + *(v4 + 80) + 8) & ~*(v4 + 80);
  v6 = *(v0 + v3);
  v7 = *(v0 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_10052FF0C(v0 + v2, v6, v0 + v5, v7);
}

uint64_t sub_10053BF3C(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_100041F04;

  return sub_100521BB4(a1, v1);
}

uint64_t sub_10053BFD8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AugmentedProfile(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10053C03C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10053C0AC(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (result)
  {
  }

  return result;
}

unint64_t sub_10053C11C()
{
  result = qword_1008475B0;
  if (!qword_1008475B0)
  {
    sub_10000B870(&qword_1008475A8, &unk_1006E79C0);
    sub_10053B49C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008475B0);
  }

  return result;
}

uint64_t sub_10053C1C0()
{

  return _swift_deallocObject(v0, 152, 7);
}

uint64_t sub_10053C230(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_100041F04;

  return sub_100525798(a1, v1);
}

uint64_t sub_10053C2CC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100027B9C;

  return sub_10052596C();
}

uint64_t sub_10053C368()
{
  v1 = *(sub_100007224(&qword_100835180, &unk_1006C0CE0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 64) & ~v2;
  v4 = *(v1 + 64);
  v5 = *(sub_100007224(&qword_100835248, &unk_1006E7940) - 8);
  v6 = *(v5 + 80);
  v7 = (v3 + v4 + v6) & ~v6;
  v8 = ((v7 + *(v5 + 64)) & 0xFFFFFFFFFFFFFFF8) + 63;

  v9 = sub_100007224(&unk_100835208, &unk_1006C0D10);
  v10 = *(v9 - 8);
  if (!(*(v10 + 48))(v0 + v3, 1, v9))
  {
    (*(v10 + 8))(v0 + v3, v9);
  }

  v11 = v8 & 0xFFFFFFFFFFFFFFF8;
  v12 = sub_100007224(&qword_1008352C8, &qword_1006C0D50);
  v13 = *(v12 - 8);
  if (!(*(v13 + 48))(v0 + v7, 1, v12))
  {
    (*(v13 + 8))(v0 + v7, v12);
  }

  if (*(v0 + v11 + 32) != 1)
  {
  }

  return _swift_deallocObject(v0, v11 + 57, v2 | v6 | 7);
}

void sub_10053C600(_OWORD *a1, int a2, uint64_t a3)
{
  v7 = *(sub_100007224(&qword_100835180, &unk_1006C0CE0) - 8);
  v8 = (*(v7 + 80) + 64) & ~*(v7 + 80);
  v9 = *(v7 + 64);
  v10 = *(sub_100007224(&qword_100835248, &unk_1006E7940) - 8);
  v11 = (v8 + v9 + *(v10 + 80)) & ~*(v10 + 80);
  sub_10052625C(a1, a2, a3, *(v3 + 16), *(v3 + 24), *(v3 + 32), *(v3 + 40), *(v3 + 48), *(v3 + 56), v3 + v8, v3 + v11, *(v3 + v11 + *(v10 + 64)), (v3 + ((v11 + *(v10 + 64)) & 0xFFFFFFFFFFFFFFF8) + 8), (v3 + ((((v11 + *(v10 + 64)) & 0xFFFFFFFFFFFFFFF8) + 63) & 0xFFFFFFFFFFFFFFF8)));
}

double sub_10053C7B8(uint64_t a1)
{
  *(a1 + 128) = 0;
  result = 0.0;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

uint64_t sub_10053C7D4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100041F04;

  return sub_10052B2CC(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_10053C89C(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_100041F04;

  return sub_100521BB4(a1, v1);
}

unint64_t sub_10053C938()
{
  result = qword_1008475C0;
  if (!qword_1008475C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008475C0);
  }

  return result;
}

uint64_t sub_10053C98C()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10053C9CC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100027B9C;

  return sub_10051DE94(a1, v4, v5, v7, v6);
}

uint64_t sub_10053CA8C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100041F04;

  return sub_10051E200(a1);
}

uint64_t sub_10053CB28()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10053CBB8;

  return sub_10051E3B4();
}

uint64_t sub_10053CBB8(uint64_t a1, uint64_t a2)
{
  v7 = *v2;

  v5 = *(v7 + 8);

  return v5(a1, a2);
}

uint64_t sub_10053CD68@<X0>(uint64_t a3@<X8>)
{
  v33 = a3;
  v4 = type metadata accessor for DIPError.Code();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for AugmentedProfile(0);
  __chkstk_darwin(v8);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Logger();
  v31 = *(v11 - 8);
  v32 = v11;
  __chkstk_darwin(v11);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = Data.init(base64Encoded:options:)();
  if (v15 >> 60 == 15)
  {
    (*(v5 + 104))(v7, enum case for DIPError.Code.assessmentProfileDecodingFailed(_:), v4);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100545850(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    return swift_willThrow();
  }

  else
  {
    v28 = v13;
    v17 = v14;
    v18 = v15;
    type metadata accessor for JSONDecoder();
    swift_allocObject();
    JSONDecoder.init()();
    sub_100545850(&qword_100847750, type metadata accessor for AugmentedProfile, &unk_1006C1804);
    v29 = v18;
    v30 = v17;
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();
    if (v3)
    {

      (*(v5 + 104))(v7, enum case for DIPError.Code.invalidAssessmentProfile(_:), v4);
      swift_errorRetain();
      sub_1000402AC(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_100545850(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
      swift_allocError();
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      swift_willThrow();

      return sub_10000BD94(v30, v29);
    }

    else
    {
      v19 = v29;

      v20 = v28;
      defaultLogger()();
      sub_10053BFD8(v33, v10);
      v21 = Logger.logObject.getter();
      v22 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        v24 = swift_slowAlloc();
        v34 = v24;
        *v23 = 136446210;
        v25 = &v10[*(v8 + 28)];
        v26 = v25[1];
        v33 = *v25;

        sub_100544BA4(v10);
        v27 = sub_100141FE4(v33, v26, &v34);

        *(v23 + 4) = v27;
        _os_log_impl(&_mh_execute_header, v21, v22, "Decoded profile %{public}s", v23, 0xCu);
        sub_10000BB78(v24);

        sub_10000BD94(v30, v19);
      }

      else
      {
        sub_10000BD94(v30, v19);

        sub_100544BA4(v10);
      }

      return (*(v31 + 8))(v20, v32);
    }
  }
}

uint64_t sub_10053D32C(uint64_t a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v77 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v4);
  v9 = &v77 - v8;
  v10 = __chkstk_darwin(v7);
  v12 = &v77 - v11;
  v13 = __chkstk_darwin(v10);
  v15 = &v77 - v14;
  __chkstk_darwin(v13);
  v17 = &v77 - v16;
  v18 = sub_100007224(&qword_1008350C0, &unk_1006C0B30);
  __chkstk_darwin(v18 - 8);
  v20 = &v77 - v19;
  result = _isInternalBuild.getter();
  if (result)
  {
    v80 = v6;
    sub_100545898(a1, v20);
    v22 = sub_100007224(&qword_100835138, &qword_1006C0B58);
    v23 = *(v22 - 8);
    if ((*(v23 + 48))(v20, 1, v22) == 1)
    {
      return sub_10000BE18(v20, &qword_1008350C0, &unk_1006C0B30);
    }

    else
    {
      JWSSignedJSON.payload.getter();
      v89 = v83[4];
      *v90 = v84[0];
      *&v90[13] = *(v84 + 13);
      v85 = v83[0];
      v86 = v83[1];
      v87 = v83[2];
      v88 = v83[3];
      (*(v23 + 8))(v20, v22);
      defaultLogger()();
      v24 = Logger.logObject.getter();
      v25 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        *v26 = 0;
        _os_log_impl(&_mh_execute_header, v24, v25, "Printing Augmented Profile Information:", v26, 2u);
      }

      v27 = *(v3 + 8);
      v27(v17, v2);
      defaultLogger()();
      sub_10009E820(&v85, v83);
      v28 = Logger.logObject.getter();
      v29 = static os_log_type_t.debug.getter();
      sub_10009E858(&v85);
      v30 = os_log_type_enabled(v28, v29);
      v78 = v2;
      v81 = v3 + 8;
      v79 = v27;
      if (v30)
      {
        v31 = swift_slowAlloc();
        v32 = swift_slowAlloc();
        *&v83[0] = v32;
        *v31 = 136315138;
        v33 = *(&v85 + 1);
        if (*(&v85 + 1))
        {
          v34 = v85;
        }

        else
        {
          v33 = 0xE300000000000000;
          v34 = 4271950;
        }

        v37 = sub_100141FE4(v34, v33, v83);

        *(v31 + 4) = v37;
        _os_log_impl(&_mh_execute_header, v28, v29, "  ord destination %s", v31, 0xCu);
        sub_10000BB78(v32);

        v35 = v15;
        v2 = v78;
        v36 = v78;
        v27 = v79;
      }

      else
      {

        v35 = v15;
        v36 = v2;
      }

      v27(v35, v36);
      defaultLogger()();
      sub_10009E820(&v85, v83);
      v38 = Logger.logObject.getter();
      v39 = static os_log_type_t.debug.getter();
      sub_10009E858(&v85);
      if (os_log_type_enabled(v38, v39))
      {
        v40 = swift_slowAlloc();
        v41 = swift_slowAlloc();
        *&v83[0] = v41;
        *v40 = 136315138;
        if (*(&v85 + 1))
        {
          v43 = *(&v86 + 1);
          v42 = v86;
        }

        else
        {
          v43 = 0xE300000000000000;
          v42 = 4271950;
        }

        v46 = sub_100141FE4(v42, v43, v83);

        *(v40 + 4) = v46;
        _os_log_impl(&_mh_execute_header, v38, v39, "  otd destination %s", v40, 0xCu);
        sub_10000BB78(v41);

        v44 = v12;
        v45 = v2;
        v27 = v79;
      }

      else
      {

        v44 = v12;
        v45 = v2;
      }

      v27(v44, v45);
      defaultLogger()();
      sub_10009E820(&v85, v83);
      v47 = Logger.logObject.getter();
      v48 = static os_log_type_t.debug.getter();
      sub_10009E858(&v85);
      if (os_log_type_enabled(v47, v48))
      {
        v49 = swift_slowAlloc();
        v50 = swift_slowAlloc();
        *&v83[0] = v50;
        *v49 = 136315138;
        if (*(&v85 + 1))
        {
          v52 = *(&v88 + 1);
          v51 = v88;
        }

        else
        {
          v52 = 0xE300000000000000;
          v51 = 4271950;
        }

        v53 = sub_100141FE4(v51, v52, v83);

        *(v49 + 4) = v53;
        _os_log_impl(&_mh_execute_header, v47, v48, "  tsid enc cert   %s", v49, 0xCu);
        sub_10000BB78(v50);

        v27(v9, v2);
      }

      else
      {

        v27(v9, v2);
      }

      v54 = *(&v89 + 1) + 64;
      v55 = 1 << *(*(&v89 + 1) + 32);
      v56 = -1;
      if (v55 < 64)
      {
        v56 = ~(-1 << v55);
      }

      v57 = v56 & *(*(&v89 + 1) + 64);
      v58 = (v55 + 63) >> 6;
      v82 = *(&v89 + 1);
      result = swift_bridgeObjectRetain_n();
      v59 = 0;
      v60 = _swiftEmptyArrayStorage;
      if (v57)
      {
        goto LABEL_31;
      }

      while (1)
      {
        v61 = v59 + 1;
        if (__OFADD__(v59, 1))
        {
          __break(1u);
          return result;
        }

        if (v61 >= v58)
        {
          break;
        }

        v57 = *(v54 + 8 * v61);
        ++v59;
        if (v57)
        {
          v59 = v61;
          do
          {
LABEL_31:
            v62 = (*(v82 + 48) + 16 * (__clz(__rbit64(v57)) | (v59 << 6)));
            v63 = *v62;
            v64 = v62[1];
            swift_bridgeObjectRetain_n();

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v60 = sub_1003C5110(0, *(v60 + 2) + 1, 1, v60);
            }

            v66 = *(v60 + 2);
            v65 = *(v60 + 3);
            if (v66 >= v65 >> 1)
            {
              v60 = sub_1003C5110((v65 > 1), v66 + 1, 1, v60);
            }

            v57 &= v57 - 1;

            *(v60 + 2) = v66 + 1;
            v67 = &v60[16 * v66];
            *(v67 + 4) = v63;
            *(v67 + 5) = v64;
          }

          while (v57);
        }
      }

      sub_10009E858(&v85);

      v68 = v80;
      defaultLogger()();
      v69 = Logger.logObject.getter();
      v70 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v69, v70))
      {
        v71 = swift_slowAlloc();
        v72 = swift_slowAlloc();
        *&v83[0] = v72;
        *v71 = 136315138;

        v73 = Array.description.getter();
        v75 = v74;

        v76 = sub_100141FE4(v73, v75, v83);

        *(v71 + 4) = v76;
        _os_log_impl(&_mh_execute_header, v69, v70, "  bindings keys   %s", v71, 0xCu);
        sub_10000BB78(v72);
      }

      v79(v68, v78);
    }
  }

  return result;
}

uint64_t sub_10053DCAC()
{
  type metadata accessor for DIPODNHelper();
  v0 = swift_allocObject();
  sub_100543BE0();
  sub_100007224(&qword_100847748, &qword_1006E7AA0);
  result = swift_allocObject();
  *(result + 24) = 0;
  *(result + 16) = v0;
  off_1008475C8 = result;
  return result;
}

uint64_t sub_10053DD10()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchQoS();
  v5 = *(v11 - 8);
  __chkstk_darwin(v11);
  v7 = v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10[1] = *(v0 + 16);
  aBlock[4] = sub_10053DFA0;
  aBlock[5] = 0;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100503A7C;
  aBlock[3] = &unk_1008166F0;
  v8 = _Block_copy(aBlock);
  static DispatchQoS.unspecified.getter();
  v12 = _swiftEmptyArrayStorage;
  sub_100545850(&unk_1008341E0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100007224(&qword_100848A40, &unk_1006BF8C0);
  sub_10001F484(&qword_1008341F0, &qword_100848A40, &unk_1006BF8C0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v8);
  (*(v2 + 8))(v4, v1);
  return (*(v5 + 8))(v7, v11);
}

void sub_10053DFA0()
{
  v0 = type metadata accessor for Logger();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = aBlock - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  defaultLogger()();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, v5, "Waking up odn", v6, 2u);
  }

  (*(v1 + 8))(v3, v0);
  v7 = [objc_allocWithZone(OZRXp7MLSzffIeLD) init];
  v8 = [objc_allocWithZone(cSPXWY2zzg2zwzaR) initWithQAy7FB3BSYJUwsIc:0 Zwvxi3fDtAHqlF0d:0 KufCqgU8RstLzBzT:1 BGiN5h2SLMRO6B9R:0 Jf7L4ypvXegQqMcE:0 zeXRCfLmM5cdkEtz:0];
  aBlock[4] = nullsub_7;
  aBlock[5] = 0;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10053E1B8;
  aBlock[3] = &unk_100816718;
  v9 = _Block_copy(aBlock);
  [v7 MypqGKKWznx4xnYa:v8 l8OCYbP9LFIvnTwG:0 ygOPXTiKN0J02x0j:v9];
  _Block_release(v9);
}

uint64_t sub_10053E1B8(uint64_t a1, void *a2, void *a3, void *a4, unsigned int a5, void *a6)
{
  v9 = a2;
  v10 = *(a1 + 32);
  if (a2)
  {

    v11 = v9;
    v9 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = v12;

    if (a3)
    {
      goto LABEL_3;
    }

LABEL_6:
    v16 = 0xF000000000000000;
    if (a4)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  v13 = 0xF000000000000000;
  if (!a3)
  {
    goto LABEL_6;
  }

LABEL_3:
  v14 = a3;
  a3 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = v15;

  if (a4)
  {
LABEL_4:
    v17 = a4;
    a4 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v19 = v18;

    goto LABEL_8;
  }

LABEL_7:
  v19 = 0xF000000000000000;
LABEL_8:
  v20 = a6;
  v10(v9, v13, a3, v16, a4, v19, a5, a6);

  sub_10000BD94(a4, v19);
  sub_10000BD94(a3, v16);
  sub_10000BD94(v9, v13);
}

void *sub_10053E304(uint64_t a1, uint64_t a2, NSObject *a3, void *a4, NSObject *a5, unint64_t a6, NSObject *a7, uint64_t a8, uint64_t a9, void *a10, void (*a11)(char *, uint64_t), uint64_t a12, NSObject *a13, unsigned __int8 a14, uint64_t a15, uint64_t a16, __int128 *a17)
{
  v253 = a7;
  v254 = a8;
  v266 = a6;
  v269 = a5;
  v287 = a4;
  v277 = a3;
  v272 = a2;
  v281 = a1;
  v17 = type metadata accessor for Date();
  v243 = *(v17 - 8);
  v244 = v17;
  __chkstk_darwin(v17);
  v242 = &v220 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v261 = type metadata accessor for DispatchTime();
  v256 = *(v261 - 8);
  v19 = __chkstk_darwin(v261);
  v258 = &v220 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __chkstk_darwin(v19);
  v247 = &v220 - v22;
  v251 = v23;
  __chkstk_darwin(v21);
  v260 = &v220 - v24;
  v25 = type metadata accessor for DIPError.Code();
  v262 = *(v25 - 8);
  v263 = v25;
  __chkstk_darwin(v25);
  v264 = &v220 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for Logger();
  v279 = *(v27 - 8);
  v280 = v27;
  v28 = __chkstk_darwin(v27);
  v259 = &v220 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __chkstk_darwin(v28);
  v237 = &v220 - v31;
  v32 = __chkstk_darwin(v30);
  v233 = &v220 - v33;
  v34 = __chkstk_darwin(v32);
  v241 = &v220 - v35;
  v36 = __chkstk_darwin(v34);
  v250 = &v220 - v37;
  v38 = __chkstk_darwin(v36);
  v246 = &v220 - v39;
  v40 = __chkstk_darwin(v38);
  v245 = &v220 - v41;
  __chkstk_darwin(v40);
  v267 = &v220 - v42;
  v43 = type metadata accessor for DIPSignpost.Config();
  __chkstk_darwin(v43 - 8);
  v45 = &v220 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = type metadata accessor for DIPSignpost();
  v274 = *(v46 - 8);
  v275 = v46;
  v47 = __chkstk_darwin(v46);
  v255 = &v220 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = __chkstk_darwin(v47);
  v257 = &v220 - v50;
  v249 = v51;
  __chkstk_darwin(v49);
  v53 = &v220 - v52;
  static DaemonSignposts.fetchAssessment.getter();
  v265 = v53;
  v248 = v45;
  DIPSignpost.init(_:)();
  v54 = swift_allocObject();
  v282 = xmmword_1006BF650;
  v270 = v54;
  *(v54 + 16) = xmmword_1006BF650;
  v236 = v54 + 16;
  v55 = swift_allocObject();
  v276 = v55;
  *(v55 + 16) = v282;
  v238 = v55 + 16;
  v56 = swift_allocObject();
  v271 = v56;
  *(v56 + 16) = 0;
  v240 = (v56 + 16);
  v57 = swift_allocObject();
  v273 = v57;
  *(v57 + 16) = 0;
  v235 = v57 + 16;
  v58 = swift_allocObject();
  v278 = v58;
  *(v58 + 16) = v282;
  v239 = v58 + 16;
  v59 = swift_allocObject();
  *&v282 = v59;
  *(v59 + 16) = 0xBFF0000000000000;
  v234 = v59 + 16;
  sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
  v60 = sub_100007224(&qword_1008341D0, &unk_1006BF8D0);
  v61 = *(v60 - 8);
  v268 = *(v61 + 72);
  v62 = (*(v61 + 80) + 32) & ~*(v61 + 80);
  v63 = swift_allocObject();
  *(v63 + 16) = xmmword_1006BF740;
  v64 = v63 + v62;
  v65 = (v63 + v62 + *(v60 + 48));
  v66 = enum case for DIPError.PropertyKey.spWorkflowID(_:);
  v67 = type metadata accessor for DIPError.PropertyKey();
  v68 = *(*(v67 - 8) + 104);
  (v68)(v64, v66, v67);
  v65[3] = &type metadata for String;
  v65[4] = &protocol witness table for String;
  v69 = v277;
  *v65 = v272;
  v65[1] = v69;
  v70 = (v64 + v268 + *(v60 + 48));
  v68();
  v71 = v266;
  v72 = v287;
  v70[3] = &type metadata for Int;
  v70[4] = &protocol witness table for Int;
  *v70 = v72;

  v268 = sub_10003C9C0(v63);
  swift_setDeallocating();
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  v74 = v71 >> 62;
  if ((v71 >> 62) > 1)
  {
    v76 = v269;
    v75 = v267;
    if (v74 != 2)
    {
      goto LABEL_17;
    }

    isa = v269[2].isa;
    v77 = v269[3].isa;
    v79 = __OFSUB__(v77, isa);
    v80 = v77 - isa;
    if (!v79)
    {
      if (v80 == 16)
      {
        goto LABEL_8;
      }

      goto LABEL_17;
    }

    __break(1u);
LABEL_60:
    __break(1u);
    return result;
  }

  v75 = v267;
  if (v74)
  {
    v76 = v269;
    if (!__OFSUB__(HIDWORD(v269), v269))
    {
      if (HIDWORD(v269) - v269 == 16)
      {
        goto LABEL_8;
      }

LABEL_17:
      v93 = v259;
      defaultLogger()();
      v94 = Logger.logObject.getter();
      v95 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v94, v95))
      {
        v96 = swift_slowAlloc();
        *v96 = 0;
        _os_log_impl(&_mh_execute_header, v94, v95, "invalid nonce size", v96, 2u);
      }

      (*(v279 + 8))(v93, v280);
      (*(v262 + 104))(v264, enum case for DIPError.Code.invalidAssessmentGUID(_:), v263);
      type metadata accessor for DIPError();
      sub_100545850(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
      swift_allocError();
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      swift_willThrow();
      (*(v274 + 8))(v265, v275);
      goto LABEL_20;
    }

    goto LABEL_60;
  }

  v76 = v269;
  if (BYTE6(v71) != 16)
  {
    goto LABEL_17;
  }

LABEL_8:
  v259 = a12;
  v81 = a10;
  v82 = a11;
  defaultLogger()();
  sub_10000B8B8(v76, v71);
  v83 = Logger.logObject.getter();
  v84 = static os_log_type_t.debug.getter();
  sub_10000B90C(v76, v71);
  if (os_log_type_enabled(v83, v84))
  {
    v85 = swift_slowAlloc();
    v86 = swift_slowAlloc();
    v232 = a10;
    v87 = v86;
    *&aBlock = v86;
    *v85 = 136446210;
    v88 = Data.base64EncodedString(options:)(0);
    v231 = a11;
    v89 = sub_100141FE4(v88._countAndFlagsBits, v88._object, &aBlock);
    v82 = v231;

    *(v85 + 4) = v89;
    _os_log_impl(&_mh_execute_header, v83, v84, "odn nonce %{public}s", v85, 0xCu);
    sub_10000BB78(v87);
    v81 = v232;
  }

  v267 = *(v279 + 8);
  (v267)(v75, v280);
  if (v287 == 9)
  {
    v90 = 2;
  }

  else
  {
    v90 = 1;
  }

  sub_10054C46C(v82);
  v91.super.isa = Data._bridgeToObjectiveC()().super.isa;
  if (v81 >> 60 == 15)
  {
    v92 = 0;
  }

  else
  {
    v92 = Data._bridgeToObjectiveC()().super.isa;
  }

  v102 = objc_allocWithZone(cSPXWY2zzg2zwzaR);
  v103 = Dictionary._bridgeToObjectiveC()().super.isa;

  v104 = Array._bridgeToObjectiveC()().super.isa;
  v105 = Data._bridgeToObjectiveC()().super.isa;
  v106 = [v102 initWithQAy7FB3BSYJUwsIc:v91.super.isa Zwvxi3fDtAHqlF0d:v92 KufCqgU8RstLzBzT:v90 BGiN5h2SLMRO6B9R:v103 Jf7L4ypvXegQqMcE:v104 zeXRCfLmM5cdkEtz:v105];

  if (!v106)
  {
    (*(v262 + 104))(v264, enum case for DIPError.Code.odnInitialize(_:), v263);
    type metadata accessor for DIPError();
    sub_100545850(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    (*(v274 + 8))(v265, v275);
    goto LABEL_20;
  }

  v232 = v106;
  v107 = a13;
  v108 = v281;
  v109 = *(v281 + 24);
  v110 = v247;
  static DispatchTime.now()();
  v111 = v260;
  + infix(_:_:)();
  v112 = (v256 + 8);
  v113 = *(v256 + 8);
  v114 = v261;
  v113(v110, v261);
  OS_dispatch_semaphore.wait(timeout:)();

  v247 = v112;
  v231 = v113;
  v113(v111, v114);
  if ((static DispatchTimeoutResult.== infix(_:_:)() & 1) == 0 || (v115 = *(v108 + 56)) == 0)
  {
    v129 = v246;
    defaultLogger()();
    v130 = Logger.logObject.getter();
    v131 = static os_log_type_t.debug.getter();
    v132 = os_log_type_enabled(v130, v131);
    v127 = v258;
    v122 = v250;
    if (v132)
    {
      v133 = swift_slowAlloc();
      *v133 = 0;
      _os_log_impl(&_mh_execute_header, v130, v131, "passing nil as NF data", v133, 2u);
    }

    (v267)(v129, v280);
    v126 = v257;
    v128 = a14;
    if (!a13)
    {
      goto LABEL_28;
    }

LABEL_32:
    v253 = v107;
    goto LABEL_33;
  }

  v269 = a13;
  v116 = *(v108 + 64);
  v117 = v115;
  v118 = v116;

  defaultLogger()();
  v119 = Logger.logObject.getter();
  v120 = static os_log_type_t.debug.getter();
  v121 = os_log_type_enabled(v119, v120);
  v122 = v250;
  if (v121)
  {
    v123 = swift_slowAlloc();
    *v123 = 0;
    _os_log_impl(&_mh_execute_header, v119, v120, "using collected NF data", v123, 2u);
  }

  (v267)(v245, v280);
  v124 = v232;
  [v232 setHostChallenge:v117];
  [v124 setChallengeResponse:v118];

  v125 = String._bridgeToObjectiveC()();

  [v124 setSeid:v125];

  v126 = v257;
  v127 = v258;
  v107 = v269;
  v128 = a14;
  if (v269)
  {
    goto LABEL_32;
  }

LABEL_28:
  v253 = dispatch_semaphore_create(0);
LABEL_33:
  v259 = a16;
  v254 = a15;
  v134 = objc_allocWithZone(OZRXp7MLSzffIeLD);
  v135 = v107;
  v136 = [v134 init];
  static DaemonSignposts.odnMypg.getter();
  DIPSignpost.init(_:)();
  static DispatchTime.now()();
  v137 = swift_allocObject();
  v266 = v137;
  *(v137 + 16) = 0;
  v221 = (v137 + 16);
  v138 = swift_allocObject();
  v269 = v138;
  *(v138 + 16) = 0;
  v222 = (v138 + 16);
  defaultLogger()();
  v139 = Logger.logObject.getter();
  v140 = static os_log_type_t.debug.getter();
  v141 = os_log_type_enabled(v139, v140);
  v250 = v136;
  v246 = v128;
  if (v141)
  {
    v142 = swift_slowAlloc();
    v143 = swift_slowAlloc();
    *&aBlock = v143;
    *v142 = 136315138;
    if (v128)
    {
      v144 = 49;
    }

    else
    {
      v144 = 48;
    }

    v145 = sub_100141FE4(v144, 0xE100000000000000, &aBlock);

    *(v142 + 4) = v145;
    v126 = v257;
    _os_log_impl(&_mh_execute_header, v139, v140, "Calling with option = %s", v142, 0xCu);
    sub_10000BB78(v143);
    v127 = v258;
  }

  (v267)(v122, v280);
  v146 = v274;
  v147 = v275;
  LODWORD(v267) = v107 != 0;
  (*(v274 + 16))(v255, v126, v275);
  v148 = v256;
  v149 = v261;
  (*(v256 + 16))(v260, v127, v261);
  v226 = (*(v146 + 80) + 16) & ~*(v146 + 80);
  v245 = ((v226 + v249 + 7) & 0xFFFFFFFFFFFFFFF8);
  v249 = (v226 + v249 + 31) & 0xFFFFFFFFFFFFFFF8;
  v248 = (v249 + 15) & 0xFFFFFFFFFFFFFFF8;
  v230 = (v248 + 15) & 0xFFFFFFFFFFFFFFF8;
  v229 = (v230 + 15) & 0xFFFFFFFFFFFFFFF8;
  v150 = (*(v148 + 80) + v229 + 8) & ~*(v148 + 80);
  v251 = (v251 + v150 + 7) & 0xFFFFFFFFFFFFFFF8;
  v227 = (v251 + 15) & 0xFFFFFFFFFFFFFFF8;
  v228 = v150;
  v225 = (v227 + 15) & 0xFFFFFFFFFFFFFFF8;
  v224 = (v225 + 15) & 0xFFFFFFFFFFFFFFF8;
  v223 = (v224 + 15) & 0xFFFFFFFFFFFFFFF8;
  v151 = (v223 + 15) & 0xFFFFFFFFFFFFFFF8;
  v152 = (v151 + 23) & 0xFFFFFFFFFFFFFFF8;
  v153 = swift_allocObject();
  (*(v146 + 32))(v153 + v226, v255, v147);
  v154 = &v245[v153];
  v155 = v277;
  *v154 = v272;
  *(v154 + 1) = v155;
  v154[16] = v287;
  v156 = v248;
  *(v153 + v249) = v269;
  *(v153 + v156) = v253;
  v157 = v282;
  *(v153 + v230) = v281;
  v158 = v228;
  *(v153 + v229) = v157;
  (*(v148 + 32))(v153 + v158, v260, v149);
  v159 = v270;
  *(v153 + v251) = v271;
  *(v153 + v227) = v273;
  v160 = v224;
  *(v153 + v225) = v159;
  *(v153 + v160) = v276;
  *(v153 + v223) = v278;
  v161 = (v153 + v151);
  v162 = v259;
  *v161 = v254;
  v161[1] = v162;
  v163 = v268;
  *(v153 + v152) = v268;
  *(v153 + ((v152 + 15) & 0xFFFFFFFFFFFFFFF8)) = v266;
  *&v285 = sub_100544F68;
  *(&v285 + 1) = v153;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  *&v284 = sub_10053E1B8;
  *(&v284 + 1) = &unk_100816510;
  v164 = _Block_copy(&aBlock);

  v165 = v232;

  v277 = v253;

  sub_10001F640(v254, v259);

  v166 = v163;

  v167 = v246;
  v168 = v250;
  [v250 MypqGKKWznx4xnYa:v165 l8OCYbP9LFIvnTwG:v246 & 1 ygOPXTiKN0J02x0j:v164];
  v169 = v164;
  v170 = v277;
  v171 = v165;
  _Block_release(v169);

  v172 = v252;
  sub_100543F04(v170, v287, v166, v267);
  if (v172)
  {

    v231(v258, v261);
    v173 = v275;
    v174 = *(v274 + 8);
    v174(v257, v275);
    v174(v265, v173);

LABEL_40:

LABEL_20:

    v97 = v281;
    v98 = *(v281 + 56);
    v99 = *(v281 + 64);
    v100 = *(v281 + 72);
    v101 = *(v281 + 80);
    *(v281 + 56) = 0u;
    *(v97 + 72) = 0u;
    return sub_100544CA0(v98, v99, v100, v101);
  }

  v175 = v167;
  v176 = v222;
  swift_beginAccess();
  if ((*v176 & 1) == 0)
  {
    v183 = v165;
    v184 = v241;
    defaultLogger()();
    v185 = Logger.logObject.getter();
    v186 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v185, v186))
    {
      v187 = swift_slowAlloc();
      *v187 = 0;
      _os_log_impl(&_mh_execute_header, v185, v186, "Timed out waiting for ODN data with semaphoreSignaledByODN = false", v187, 2u);
    }

    (*(v279 + 8))(v184, v280);
    *&aBlock = 0;
    *(&aBlock + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(36);

    *&aBlock = 0xD000000000000022;
    *(&aBlock + 1) = 0x800000010071EC10;
    v188 = v242;
    static Date.now.getter();
    sub_100545850(&qword_10083ACE0, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    v189 = v244;
    v190._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v190);

    (*(v243 + 8))(v188, v189);
    (*(v262 + 104))(v264, enum case for DIPError.Code.odnTimeoutWithPrecompute(_:), v263);
    type metadata accessor for DIPError();
    sub_100545850(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    goto LABEL_48;
  }

  v177 = v221;
  swift_beginAccess();
  *v177 = 1;
  v178 = v240;
  swift_beginAccess();
  v179 = *v178;
  v180 = v261;
  if (v179)
  {
    swift_errorRetain();
    sub_10054518C(v179, v166);

    swift_willThrow();

    v231(v258, v180);
    v181 = v275;
    v182 = *(v274 + 8);
    v182(v257, v275);
    v182(v265, v181);

    goto LABEL_40;
  }

  v193 = v275;
  if (v175)
  {
    swift_beginAccess();
    if (*(v278 + 24) >> 60 == 15)
    {
      v194 = v233;
      defaultLogger()();
      v195 = Logger.logObject.getter();
      v196 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v195, v196))
      {
        v197 = swift_slowAlloc();
        *v197 = 0;
        _os_log_impl(&_mh_execute_header, v195, v196, "ODN no error and no cbor assessments", v197, 2u);
      }

      (*(v279 + 8))(v194, v280);
      (*(v262 + 104))(v264, enum case for DIPError.Code.odnNoCBORAssessmentData(_:), v263);
      type metadata accessor for DIPError();
      sub_100545850(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
      swift_allocError();
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      swift_willThrow();

LABEL_48:
      v231(v258, v261);
      v191 = v275;
      v192 = *(v274 + 8);
      v192(v257, v275);
      v192(v265, v191);

      goto LABEL_20;
    }
  }

  swift_beginAccess();
  v198 = *(v276 + 24);
  if (v198 >> 60 == 15)
  {
    v287 = v165;
    v199 = v237;
    defaultLogger()();
    v200 = Logger.logObject.getter();
    v201 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v200, v201))
    {
      v202 = swift_slowAlloc();
      *v202 = 0;
      _os_log_impl(&_mh_execute_header, v200, v201, "ODN no error and no assessments", v202, 2u);
    }

    (*(v279 + 8))(v199, v280);
    (*(v262 + 104))(v264, enum case for DIPError.Code.odnNoAssessmentData(_:), v263);
    type metadata accessor for DIPError();
    sub_100545850(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    goto LABEL_48;
  }

  v280 = *(v276 + 16);
  sub_10000B8B8(v280, v198);

  v231(v258, v261);
  v203 = *(v274 + 8);
  v274 += 8;
  v287 = v203;
  (v203)(v257, v193);
  swift_beginAccess();
  v204 = *(v270 + 24);
  v279 = *(v270 + 16);
  v277 = v204;
  swift_beginAccess();
  v205 = v282;
  v206 = *(v278 + 16);
  v207 = *(v278 + 24);
  swift_beginAccess();
  LODWORD(v272) = *(v273 + 16);
  swift_beginAccess();
  v208 = a17[1];
  aBlock = *a17;
  v209 = a17[2];
  v210 = a17[3];
  v284 = v208;
  v285 = v209;
  *&v209 = *(v205 + 16);
  v286 = v210;
  v211 = v279;
  v212 = v280;
  v213 = v277;
  *a17 = v279;
  *(a17 + 1) = v213;
  *(a17 + 2) = v212;
  *(a17 + 3) = v198;
  *(a17 + 4) = v206;
  *(a17 + 5) = v207;
  *(a17 + 12) = v272;
  *(a17 + 7) = v209;
  sub_1000363B4(v211, v213);
  sub_1000363B4(v206, v207);
  sub_10053B540(&aBlock);

  v214 = v281;
  v215 = *(v281 + 56);
  v216 = *(v281 + 64);
  v217 = *(v281 + 72);
  v218 = *(v281 + 80);
  *(v281 + 56) = 0u;
  *(v214 + 72) = 0u;
  sub_100544CA0(v215, v216, v217, v218);
  v219 = v265;
  DIPSignpost.end(workflowID:isBackground:)(0, 2);
  return (v287)(v219, v275);
}