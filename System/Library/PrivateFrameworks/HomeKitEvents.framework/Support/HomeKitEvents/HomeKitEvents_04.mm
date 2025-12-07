uint64_t sub_100070384@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char *a7@<X8>)
{
  v134 = a5;
  v142 = a7;
  v12 = type metadata accessor for UUID();
  v13 = *(v12 - 1);
  v14 = __chkstk_darwin(v12);
  v139 = (&v131 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = __chkstk_darwin(v14);
  v18 = &v131 - v17;
  v19 = __chkstk_darwin(v16);
  v133 = &v131 - v20;
  v21 = __chkstk_darwin(v19);
  v136 = &v131 - v22;
  __chkstk_darwin(v21);
  v24 = &v131 - v23;
  v25 = type metadata accessor for Logger();
  v26 = *(v25 - 8);
  v140 = v25;
  v141 = v26;
  v27 = __chkstk_darwin(v25);
  v138 = (&v131 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
  v29 = __chkstk_darwin(v27);
  v131 = &v131 - v30;
  v31 = __chkstk_darwin(v29);
  v132 = &v131 - v32;
  v33 = __chkstk_darwin(v31);
  v137 = &v131 - v34;
  __chkstk_darwin(v33);
  v36 = &v131 - v35;
  v37 = sub_100071468(a1, a3);
  if (!a2)
  {
    type metadata accessor for CloudUploadResultLogEvent();
    sub_100011750(v37 & 1);
    sub_100072428(&qword_1000AB008, v66, type metadata accessor for EventUploader, &unk_100087A4C);
    static LoggedObject.logger.getter();
    v67 = *(v13 + 16);
    v137 = a1;
    v67(v24, a1, v12);
    v68 = Logger.logObject.getter();
    v69 = static os_log_type_t.debug.getter();
    v70 = v13;
    if (os_log_type_enabled(v68, v69))
    {
      v71 = swift_slowAlloc();
      v72 = swift_slowAlloc();
      v143 = v70;
      v144 = v72;
      v149[0] = v72;
      *v71 = 136446210;
      sub_100072428(&qword_1000AB0D8, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v73 = dispatch thunk of CustomStringConvertible.description.getter();
      v74 = v67;
      v76 = v75;
      (*(v143 + 8))(v24, v12);
      v77 = sub_100035120(v73, v76, v149);
      v67 = v74;

      *(v71 + 4) = v77;
      _os_log_impl(&_mh_execute_header, v68, v69, "Event %{public}s uploaded successfully", v71, 0xCu);
      sub_10000D330(v144);
      v70 = v143;
    }

    else
    {

      (*(v13 + 8))(v24, v12);
    }

    (*(v141 + 8))(v36, v140);
    v92 = v142;
    v41 = v12;
    v67(v142, v137, v12);
    goto LABEL_23;
  }

  v135 = a6;
  v143 = v13;
  v144 = v12;
  type metadata accessor for CloudUploadResultLogEvent();
  swift_errorRetain();
  sub_100011760(a2, v37 & 1);
  if (*(*a4 + 16) < 5uLL)
  {
    swift_errorRetain();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v149[0] = *a4;
    *a4 = 0x8000000000000000;
    sub_10007E85C(a2, a1, isUniquelyReferenced_nonNull_native);
    *a4 = v149[0];
  }

  v149[0] = a2;
  swift_errorRetain();
  sub_10000CED0(&unk_1000AAB08, &qword_1000853D0);
  type metadata accessor for CKError(0);
  v39 = swift_dynamicCast();
  v41 = v144;
  v42 = v139;
  if (!v39)
  {
    sub_100072428(&qword_1000AB008, v40, type metadata accessor for EventUploader, &unk_100087A4C);
    v78 = v138;
    static LoggedObject.logger.getter();
    v70 = v143;
    v79 = *(v143 + 16);
    v136 = ((v143 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000);
    v79(v42, a1, v41);
    swift_errorRetain();
    v80 = Logger.logObject.getter();
    v81 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v80, v81))
    {
      v82 = swift_slowAlloc();
      v83 = swift_slowAlloc();
      v135 = a2;
      v137 = a1;
      v84 = v83;
      v85 = swift_slowAlloc();
      v149[0] = v85;
      *v82 = 136446466;
      sub_100072428(&qword_1000AB0D8, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v86 = dispatch thunk of CustomStringConvertible.description.getter();
      v87 = v79;
      v89 = v88;
      (*(v143 + 8))(v42, v144);
      v90 = sub_100035120(v86, v89, v149);
      v79 = v87;

      *(v82 + 4) = v90;
      *(v82 + 12) = 2114;
      swift_errorRetain();
      v91 = _swift_stdlib_bridgeErrorToNSError();
      *(v82 + 14) = v91;
      *v84 = v91;
      _os_log_impl(&_mh_execute_header, v80, v81, "Unhandled error for event %{public}s: %{public}@", v82, 0x16u);
      sub_10000D620(v84, &unk_1000AB7D0, &qword_100085510);
      a1 = v137;

      sub_10000D330(v85);
      v70 = v143;

      v41 = v144;
    }

    else
    {

      (*(v70 + 8))(v42, v41);
    }

    (*(v141 + 8))(v78, v140);
    v92 = v142;
    v79(v142, a1, v41);
    goto LABEL_23;
  }

  v43 = v18;
  v44 = v148;
  v45 = COERCE_DOUBLE(related decl 'e' for CKErrorCode.retryAfterSeconds.getter());
  v46 = v143;
  if ((v47 & 1) == 0)
  {
    v48 = v45;
    v49 = v134;
    v50 = *v134;
    if (*(v134 + 8))
    {
      v50 = 0.0;
    }

    if (v50 >= v45)
    {
      v48 = v50;
    }

    *v134 = v48;
    *(v49 + 8) = 0;
  }

  v149[0] = v44;
  sub_100072428(&qword_1000AAEA8, 255, type metadata accessor for CKError, &unk_100085AD8);
  _BridgedStoredNSError.code.getter();
  if ((v148 > 0x24 || ((1 << v148) & 0x1400C046DALL) == 0) && v148 != 111 && v148 != 115)
  {
    v149[0] = v44;
    _BridgedStoredNSError.code.getter();
    if (v148 == 26 || v148 == 28)
    {
      sub_100072428(&qword_1000AB008, v95, type metadata accessor for EventUploader, &unk_100087A4C);
      v96 = v132;
      static LoggedObject.logger.getter();
      v97 = *(v46 + 16);
      v98 = (v46 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
      v137 = a1;
      v139 = v97;
      (v97)(v133, a1, v41);
      v99 = v96;
      v100 = v41;
      v101 = v44;
      v102 = Logger.logObject.getter();
      v103 = v46;
      v104 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v102, v104))
      {
        v105 = swift_slowAlloc();
        v136 = v98;
        v106 = v105;
        v107 = swift_slowAlloc();
        v148 = v101;
        v149[0] = v107;
        *v106 = 134218242;
        _BridgedStoredNSError.code.getter();
        *(v106 + 4) = v147;

        *(v106 + 12) = 2082;
        sub_100072428(&qword_1000AB0D8, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v108 = v133;
        v109 = dispatch thunk of CustomStringConvertible.description.getter();
        v111 = v110;
        (*(v143 + 8))(v108, v100);
        v112 = sub_100035120(v109, v111, v149);

        *(v106 + 14) = v112;
        _os_log_impl(&_mh_execute_header, v102, v104, "Zone does not exist (%ld), dropping event %{public}s", v106, 0x16u);
        sub_10000D330(v107);

        (*(v141 + 8))(v132, v140);
        v92 = v142;
        v70 = v143;
        v41 = v100;
      }

      else
      {

        (*(v103 + 8))(v133, v100);
        (*(v141 + 8))(v99, v140);
        v92 = v142;
        v41 = v100;
        v70 = v103;
      }

      (v139)(v92, v137, v41);
    }

    else
    {
      sub_100072428(&qword_1000AB008, v95, type metadata accessor for EventUploader, &unk_100087A4C);
      v113 = v131;
      static LoggedObject.logger.getter();
      v114 = *(v46 + 16);
      v136 = ((v46 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000);
      v139 = v114;
      (v114)(v43, a1, v41);
      v115 = v44;
      v116 = v113;
      v117 = v43;
      v118 = v115;
      v119 = Logger.logObject.getter();
      v120 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v119, v120))
      {
        v121 = swift_slowAlloc();
        v122 = swift_slowAlloc();
        v137 = a1;
        v123 = v122;
        v138 = swift_slowAlloc();
        v146 = v118;
        v147 = v138;
        *v121 = 134218498;
        _BridgedStoredNSError.code.getter();
        *(v121 + 4) = v145;

        *(v121 + 12) = 2082;
        sub_100072428(&qword_1000AB0D8, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v124 = dispatch thunk of CustomStringConvertible.description.getter();
        v126 = v125;
        v127 = v143;
        (*(v143 + 8))(v117, v144);
        v128 = sub_100035120(v124, v126, &v147);

        *(v121 + 14) = v128;
        *(v121 + 22) = 2114;
        v129 = v118;
        v130 = _swift_stdlib_bridgeErrorToNSError();
        *(v121 + 24) = v130;
        *v123 = v130;
        _os_log_impl(&_mh_execute_header, v119, v120, "Unhandled CloudKit error code (%ld), dropping event %{public}s: %{public}@", v121, 0x20u);
        sub_10000D620(v123, &unk_1000AB7D0, &qword_100085510);
        a1 = v137;

        sub_10000D330(v138);

        v41 = v144;

        (*(v141 + 8))(v131, v140);
        v92 = v142;
        v70 = v127;
      }

      else
      {

        v70 = v143;
        (*(v143 + 8))(v117, v41);
        (*(v141 + 8))(v116, v140);
        v92 = v142;
      }

      (v139)(v142, a1, v41);
    }

LABEL_23:
    v93 = 0;
    return (*(v70 + 56))(v92, v93, 1, v41);
  }

  sub_100072428(&qword_1000AB008, v51, type metadata accessor for EventUploader, &unk_100087A4C);
  v52 = v137;
  static LoggedObject.logger.getter();
  v53 = v136;
  (*(v46 + 16))(v136, a1, v41);
  v54 = v44;
  v55 = Logger.logObject.getter();
  v56 = v46;
  v57 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v55, v57))
  {
    v58 = swift_slowAlloc();
    v59 = swift_slowAlloc();
    v139 = swift_slowAlloc();
    v149[0] = v139;
    *v58 = 136446466;
    sub_100072428(&qword_1000AB0D8, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v60 = dispatch thunk of CustomStringConvertible.description.getter();
    v62 = v61;
    (*(v56 + 8))(v53, v144);
    v63 = sub_100035120(v60, v62, v149);

    *(v58 + 4) = v63;
    *(v58 + 12) = 2114;
    v64 = v54;
    v65 = _swift_stdlib_bridgeErrorToNSError();
    *(v58 + 14) = v65;
    *v59 = v65;
    _os_log_impl(&_mh_execute_header, v55, v57, "Error indicates retry may succeed, holding on to event %{public}s: %{public}@", v58, 0x16u);
    sub_10000D620(v59, &unk_1000AB7D0, &qword_100085510);

    sub_10000D330(v139);

    v41 = v144;
  }

  else
  {

    (*(v56 + 8))(v53, v41);
  }

  (*(v141 + 8))(v52, v140);
  v93 = 1;
  v92 = v142;
  v70 = v56;
  return (*(v70 + 56))(v92, v93, 1, v41);
}

uint64_t sub_100071468(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a2 + 16) && (sub_100072428(&unk_1000AC310, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID), v7 = dispatch thunk of Hashable._rawHashValue(seed:)(), v8 = -1 << *(a2 + 32), v9 = v7 & ~v8, v17 = a2 + 56, ((*(a2 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0))
  {
    v16 = ~v8;
    v10 = v4 + 16;
    v11 = *(v4 + 16);
    v12 = *(v10 + 56);
    v13 = (v10 - 8);
    do
    {
      v11(v6, *(a2 + 48) + v12 * v9, v3);
      sub_100072428(&qword_1000AB730, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v14 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*v13)(v6, v3);
      if (v14)
      {
        break;
      }

      v9 = (v9 + 1) & v16;
    }

    while (((*(v17 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  else
  {
    v14 = 0;
  }

  return v14 & 1;
}

uint64_t sub_100071684(uint64_t a1, char a2)
{
  *(v3 + 168) = a2;
  *(v3 + 32) = a1;
  *(v3 + 40) = v2;
  *(v3 + 48) = *v2;
  v4 = type metadata accessor for Logger();
  *(v3 + 56) = v4;
  *(v3 + 64) = *(v4 - 8);
  *(v3 + 72) = swift_task_alloc();
  *(v3 + 80) = swift_task_alloc();
  *(v3 + 88) = swift_task_alloc();
  *(v3 + 96) = swift_task_alloc();
  *(v3 + 104) = swift_task_alloc();

  return _swift_task_switch(sub_1000717A0, 0, 0);
}

uint64_t sub_1000717A0(uint64_t a1, uint64_t a2)
{
  v39 = v2;
  v3 = *(*(v2 + 32) + 16);
  *(v2 + 112) = v3;
  *(v2 + 120) = sub_100072428(&qword_1000AB008, a2, type metadata accessor for EventUploader, &unk_100087A4C);
  if (v3)
  {
    static LoggedObject.logger.getter();

    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 134217984;
      *(v6 + 4) = v3;

      _os_log_impl(&_mh_execute_header, v4, v5, "Deleting %ld record identifier(s) for successful uploads from the local database", v6, 0xCu);
    }

    else
    {
    }

    v16 = *(v2 + 96);
    v17 = *(v2 + 56);
    v18 = *(v2 + 64);
    v19 = *(v18 + 8);
    *(v2 + 128) = v19;
    *(v2 + 136) = (v18 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v19(v16, v17);
    static LoggedObject.logger.getter();

    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.debug.getter();

    v22 = os_log_type_enabled(v20, v21);
    v23 = *(v2 + 88);
    v24 = *(v2 + 56);
    if (v22)
    {
      v25 = swift_slowAlloc();
      v37 = v3;
      v38 = swift_slowAlloc();
      v26 = v38;
      *v25 = 136315138;
      type metadata accessor for UUID();
      v27 = Array.description.getter();
      v29 = sub_100035120(v27, v28, &v38);

      *(v25 + 4) = v29;
      _os_log_impl(&_mh_execute_header, v20, v21, "%s", v25, 0xCu);
      sub_10000D330(v26);
      v3 = v37;

      v19(v23, v24);
    }

    else
    {

      v19(v23, v24);
    }

    v30 = *(v2 + 40);
    v31 = *(v2 + 168);
    v32 = type metadata accessor for EventUploadSubtaskLogEvent();
    v33 = objc_allocWithZone(v32);
    v34 = OBJC_IVAR____TtC11homeeventsd26EventUploadSubtaskLogEvent_metricsManager;
    type metadata accessor for MetricsManager();
    *&v33[v34] = static MetricsManager.sharedInstance.getter();
    v33[OBJC_IVAR____TtC11homeeventsd26EventUploadSubtaskLogEvent_subtaskType] = 2;
    *&v33[OBJC_IVAR____TtC11homeeventsd26EventUploadSubtaskLogEvent_numRecords] = v3;
    v33[OBJC_IVAR____TtC11homeeventsd26EventUploadSubtaskLogEvent_attributedToFakeData] = v31;
    *(v2 + 16) = v33;
    *(v2 + 24) = v32;
    *(v2 + 144) = objc_msgSendSuper2((v2 + 16), "init");
    sub_10000D224((v30 + 56), *(v30 + 80));
    v35 = swift_task_alloc();
    *(v2 + 152) = v35;
    *v35 = v2;
    v35[1] = sub_100071C64;
    v36 = *(v2 + 32);

    return sub_1000769B8(v36);
  }

  else
  {
    static LoggedObject.logger.getter();
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.info.getter();
    v9 = os_log_type_enabled(v7, v8);
    v10 = *(v2 + 104);
    v11 = *(v2 + 56);
    v12 = *(v2 + 64);
    if (v9)
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v7, v8, "No record identifiers for successful uploads to delete", v13, 2u);
    }

    (*(v12 + 8))(v10, v11);

    v14 = *(v2 + 8);

    return v14();
  }
}

uint64_t sub_100071C64()
{
  *(*v1 + 160) = v0;

  if (v0)
  {
    v2 = sub_100071EEC;
  }

  else
  {
    v2 = sub_100071D78;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100071D78()
{
  static LoggedObject.logger.getter();

  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = *(v0 + 112);
    v4 = swift_slowAlloc();
    *v4 = 134217984;
    *(v4 + 4) = v3;

    _os_log_impl(&_mh_execute_header, v1, v2, "Successfully deleted %ld record identifier(s)", v4, 0xCu);
  }

  else
  {
  }

  v5 = *(v0 + 144);
  (*(v0 + 128))(*(v0 + 80), *(v0 + 56));
  sub_100031AD8();

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_100071EEC()
{
  sub_100031DC0(v0[20]);
  static LoggedObject.logger.getter();
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    *v3 = 138543362;
    swift_errorRetain();
    v5 = _swift_stdlib_bridgeErrorToNSError();
    *(v3 + 4) = v5;
    *v4 = v5;
    _os_log_impl(&_mh_execute_header, v1, v2, "Failed to delete record identifier(s): %{public}@", v3, 0xCu);
    sub_10000D620(v4, &unk_1000AB7D0, &qword_100085510);
  }

  v6 = v0[18];
  v7 = v0[16];
  v8 = v0[9];
  v9 = v0[7];

  v7(v8, v9);
  swift_willThrow();

  v10 = v0[1];

  return v10();
}

uint64_t sub_1000720D4()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10007211C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10001DBDC;

  return sub_10006D9BC(a1, v4, v5, v7, v6);
}

uint64_t sub_1000721DC()
{
  sub_10000D330((v0 + 16));

  sub_10000D330((v0 + 80));

  return _swift_deallocObject(v0, 120, 7);
}

void *sub_100072224(void *a1)
{
  swift_errorRetain();
  sub_10000CED0(&unk_1000AAB08, &qword_1000853D0);
  type metadata accessor for CKError(0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_10;
  }

  v2 = related decl 'e' for CKErrorCode.retryAfterSeconds.getter();
  if ((v3 & 1) == 0)
  {
    return v2;
  }

  sub_100072428(&qword_1000AAEA8, 255, type metadata accessor for CKError, &unk_100085AD8);
  _BridgedStoredNSError.code.getter();
  if ((v5 > 0x24 || ((1 << v5) & 0x1400C046DALL) == 0) && v5 != 111 && v5 != 115)
  {

LABEL_10:
    swift_errorRetain();
    return a1;
  }

  return 0;
}

unint64_t sub_10007236C()
{
  result = qword_1000AC170;
  if (!qword_1000AC170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AC170);
  }

  return result;
}

uint64_t sub_1000723C0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_10000CED0(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_100072428(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

__n128 sub_10007249C(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_1000724B0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8) >> 1;
  if (v2 > 0x80000000)
  {
    v3 = ~v2;
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

uint64_t sub_100072500(uint64_t result, int a2, int a3)
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
      *result = 0;
      *(result + 8) = 2 * -a2;
      *(result + 16) = 0;
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

uint64_t sub_10007257C()
{
  v1[3] = v0;
  v1[4] = *v0;
  v2 = type metadata accessor for NSManagedObjectContext.ScheduledTaskType();
  v1[5] = v2;
  v1[6] = *(v2 - 8);
  v1[7] = swift_task_alloc();

  return _swift_task_switch(sub_100072664, 0, 0);
}

uint64_t sub_100072664()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[3];
  v6 = *(v5 + 16);
  v7 = swift_allocObject();
  v0[8] = v7;
  *(v7 + 16) = v5;
  *(v7 + 24) = v3;
  v8 = swift_allocObject();
  v0[9] = v8;
  v8[2] = sub_1000791D8;
  v8[3] = v7;
  v8[4] = v6;
  v9 = enum case for NSManagedObjectContext.ScheduledTaskType.immediate(_:);
  v10 = *(v2 + 104);

  v10(v1, v9, v4);

  v6;
  v11 = swift_task_alloc();
  v0[10] = v11;
  *v11 = v0;
  v11[1] = sub_1000727EC;
  v12 = v0[7];

  return NSManagedObjectContext.perform<A>(schedule:_:)(v0 + 2, v12, sub_10007931C, v8, &type metadata for Int);
}

uint64_t sub_1000727EC()
{
  v2 = *v1;
  v2[11] = v0;

  if (v0)
  {
    (*(v2[6] + 8))(v2[7], v2[5]);

    return _swift_task_switch(sub_1000729A0, 0, 0);
  }

  else
  {
    v4 = v2[6];
    v3 = v2[7];
    v5 = v2[5];

    (*(v4 + 8))(v3, v5);
    v6 = v2[2];

    v7 = v2[1];

    return v7(v6);
  }
}

uint64_t sub_1000729A0()
{

  v1 = *(v0 + 8);

  return v1();
}

id sub_100072A0C(void (*a1)(void), uint64_t a2, void *a3)
{
  a1();
  if (!v3)
  {
    return [a3 reset];
  }

  [a3 reset];
  return swift_willThrow();
}

uint64_t sub_100072A74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v5[7] = *v4;
  v6 = type metadata accessor for Logger();
  v5[8] = v6;
  v5[9] = *(v6 - 8);
  v5[10] = swift_task_alloc();
  v7 = type metadata accessor for NSManagedObjectContext.ScheduledTaskType();
  v5[11] = v7;
  v5[12] = *(v7 - 8);
  v5[13] = swift_task_alloc();

  return _swift_task_switch(sub_100072BC0, 0, 0);
}

uint64_t sub_100072BC0()
{
  v34 = v0;
  v1 = *(v0[6] + 16);
  v2 = [v1 persistentStoreCoordinator];
  v0[14] = v2;
  if (v2)
  {
    v4 = v2;
    v5 = v0[12];
    v31 = v0[11];
    v32 = v0[13];
    v6 = v0[6];
    v8 = v0[4];
    v7 = v0[5];
    v30 = v0[7];
    v9 = v0[2];
    v10 = v0[3];
    v11 = swift_allocObject();
    v0[15] = v11;
    v11[2] = v4;
    v11[3] = v9;
    v11[4] = v10;
    v11[5] = v8;
    v11[6] = v7;
    v11[7] = v6;
    v11[8] = v30;
    v12 = swift_allocObject();
    v0[16] = v12;
    v12[2] = sub_100079ABC;
    v12[3] = v11;
    v12[4] = v1;
    v13 = enum case for NSManagedObjectContext.ScheduledTaskType.immediate(_:);
    v14 = *(v5 + 104);
    v15 = v4;

    v14(v32, v13, v31);

    v1;
    v16 = swift_task_alloc();
    v0[17] = v16;
    *v16 = v0;
    v16[1] = sub_100072F2C;
    v17 = v0[13];

    return NSManagedObjectContext.perform<A>(schedule:_:)(v16, v17, sub_100079B60, v12, &type metadata for () + 8);
  }

  else
  {
    sub_1000793B4(&qword_1000AC238, v3, type metadata accessor for CoreDataDatabase, &unk_100087C04);
    static LoggedObject.logger.getter();

    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.error.getter();

    v20 = os_log_type_enabled(v18, v19);
    v22 = v0[9];
    v21 = v0[10];
    v23 = v0[8];
    if (v20)
    {
      v25 = v0[2];
      v24 = v0[3];
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v33 = v27;
      *v26 = 136446210;
      *(v26 + 4) = sub_100035120(v25, v24, &v33);
      _os_log_impl(&_mh_execute_header, v18, v19, "Could not set metadata '%{public}s' without coordinator", v26, 0xCu);
      sub_10000D330(v27);
    }

    (*(v22 + 8))(v21, v23);

    v28 = v0[1];

    return v28();
  }
}

uint64_t sub_100072F2C()
{
  v2 = *v1;
  *(*v1 + 144) = v0;

  if (v0)
  {
    (*(v2[12] + 8))(v2[13], v2[11]);

    v3 = sub_100073130;
  }

  else
  {
    v5 = v2[12];
    v4 = v2[13];
    v6 = v2[11];

    (*(v5 + 8))(v4, v6);
    v3 = sub_1000730B8;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1000730B8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100073130()
{
  v1 = *(v0 + 112);

  v2 = *(v0 + 8);

  return v2();
}

void sub_1000731B8(void *a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v74 = a6;
  v75 = a2;
  v11 = type metadata accessor for Logger();
  v76 = *(v11 - 8);
  v77 = v11;
  v12 = __chkstk_darwin(v11);
  v14 = &v67 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v12);
  v17 = &v67 - v16;
  v18 = __chkstk_darwin(v15);
  v73 = &v67 - v19;
  __chkstk_darwin(v18);
  v21 = &v67 - v20;
  v22 = [a1 persistentStores];
  sub_10000D544(0, &qword_1000AB420, NSPersistentStore_ptr);
  v23 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v23 >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
LABEL_3:
      if ((v23 & 0xC000000000000001) != 0)
      {
        v24 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (!*((v23 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
        }

        v24 = *(v23 + 32);
      }

      v25 = v24;

      v70 = sub_1000793B4(&qword_1000AC238, v26, type metadata accessor for CoreDataDatabase, &unk_100087C04);
      static LoggedObject.logger.getter();

      v27 = Logger.logObject.getter();
      v28 = a5;
      v29 = v21;
      v30 = static os_log_type_t.default.getter();

      v31 = os_log_type_enabled(v27, v30);
      v72 = a3;
      if (v31)
      {
        v32 = swift_slowAlloc();
        v69 = v25;
        v33 = v32;
        v68 = swift_slowAlloc();
        *&v80[0] = v68;
        *v33 = 136446466;
        *(v33 + 4) = sub_100035120(v75, a3, v80);
        *(v33 + 12) = 2080;
        v71 = v29;
        v34 = a4;
        *&v82 = a4;
        *(&v82 + 1) = v28;

        sub_10000CED0(&qword_1000AC298, &qword_100087CB8);
        v35 = String.init<A>(describing:)();
        v37 = sub_100035120(v35, v36, v80);

        *(v33 + 14) = v37;
        v38 = v76;
        _os_log_impl(&_mh_execute_header, v27, v30, "Setting metadata: '%{public}s' = %s", v33, 0x16u);
        swift_arrayDestroy();

        v25 = v69;

        v39 = v71;
        v71 = *(v38 + 8);
        v71(v39, v77);
        if (v28)
        {
LABEL_8:
          v40 = &type metadata for String;
          v41 = v28;
          goto LABEL_11;
        }
      }

      else
      {

        v71 = *(v76 + 8);
        v71(v29, v77);
        v34 = a4;
        if (v28)
        {
          goto LABEL_8;
        }
      }

      v34 = 0;
      v41 = 0;
      v40 = 0;
      v83 = 0;
LABEL_11:
      *&v82 = v34;
      *(&v82 + 1) = v41;
      v84 = v40;

      v42 = [v25 metadata];
      if (!v42)
      {
        __break(1u);
        return;
      }

      v43 = v42;
      v44 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      v81 = v44;
      if (v28)
      {
        sub_10004DBDC(&v82, v80);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v79 = v44;
        sub_10007EBF4(v80, v75, v72, isUniquelyReferenced_nonNull_native);
        if (v79)
        {
LABEL_14:
          v46.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

          goto LABEL_17;
        }
      }

      else
      {
        sub_10000D620(&v82, &qword_1000ABEB8, &qword_1000873A0);
        sub_1000791F4(v75, v72, v80);
        sub_10000D620(v80, &qword_1000ABEB8, &qword_1000873A0);
        if (v81)
        {
          goto LABEL_14;
        }
      }

      v46.super.isa = 0;
LABEL_17:
      [v25 setMetadata:v46.super.isa];

      v47 = *(v74 + 16);
      *&v82 = 0;
      if ([v47 save:&v82])
      {
        v48 = v82;
        v49 = v73;
        static LoggedObject.logger.getter();
        v50 = Logger.logObject.getter();
        v51 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v50, v51))
        {
          v52 = swift_slowAlloc();
          *v52 = 0;
          _os_log_impl(&_mh_execute_header, v50, v51, "Successfully set metadata", v52, 2u);
        }

        v71(v49, v77);
      }

      else
      {
        v53 = v82;
        v54 = _convertNSErrorToError(_:)();

        swift_willThrow();
        static LoggedObject.logger.getter();
        swift_errorRetain();
        v55 = Logger.logObject.getter();
        v56 = static os_log_type_t.error.getter();
        v78 = v54;

        if (os_log_type_enabled(v55, v56))
        {
          v57 = swift_slowAlloc();
          v58 = v25;
          v59 = swift_slowAlloc();
          *v57 = 138543362;
          swift_errorRetain();
          v60 = _swift_stdlib_bridgeErrorToNSError();
          *(v57 + 4) = v60;
          *v59 = v60;
          _os_log_impl(&_mh_execute_header, v55, v56, "Failed to save metadata changes: %{public}@", v57, 0xCu);
          sub_10000D620(v59, &unk_1000AB7D0, &qword_100085510);
          v25 = v58;
        }

        v71(v14, v77);
        swift_willThrow();
      }

      return;
    }
  }

  else if (*((v23 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  sub_1000793B4(&qword_1000AC238, v61, type metadata accessor for CoreDataDatabase, &unk_100087C04);
  static LoggedObject.logger.getter();

  v62 = a3;
  v63 = Logger.logObject.getter();
  v64 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v63, v64))
  {
    v65 = swift_slowAlloc();
    v66 = swift_slowAlloc();
    *&v82 = v66;
    *v65 = 136446210;
    *(v65 + 4) = sub_100035120(v75, v62, &v82);
    _os_log_impl(&_mh_execute_header, v63, v64, "Could not set metadata '%{public}s' without persistent store", v65, 0xCu);
    sub_10000D330(v66);
  }

  (*(v76 + 8))(v17, v77);
}

uint64_t sub_100073A78(uint64_t a1, uint64_t a2)
{
  v3[11] = a2;
  v3[12] = v2;
  v3[10] = a1;
  v3[13] = *v2;
  v4 = type metadata accessor for Logger();
  v3[14] = v4;
  v3[15] = *(v4 - 8);
  v3[16] = swift_task_alloc();
  v3[17] = swift_task_alloc();
  v3[18] = swift_task_alloc();

  return _swift_task_switch(sub_100073B7C, 0, 0);
}

id sub_100073B7C()
{
  v56 = v0;
  v1 = [*(v0[12] + 16) persistentStoreCoordinator];
  if (v1)
  {
    v3 = v1;
    v4 = [v1 persistentStores];
    sub_10000D544(0, &qword_1000AB420, NSPersistentStore_ptr);
    v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v5 >> 62)
    {
      result = _CocoaArrayWrapper.endIndex.getter();
      if (result)
      {
LABEL_4:
        if ((v5 & 0xC000000000000001) != 0)
        {
          v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (!*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_34;
          }

          v7 = *(v5 + 32);
        }

        v8 = v7;

        result = [v8 metadata];
        if (result)
        {
          v9 = result;
          v10 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

          if (*(v10 + 16) && (v11 = sub_10007B4E8(v0[10], v0[11]), (v12 & 1) != 0))
          {
            sub_10000CFA0(*(v10 + 56) + 32 * v11, (v0 + 2));

            v13 = swift_dynamicCast();
            if (v13)
            {
              v15 = v0[8];
            }

            else
            {
              v15 = 0;
            }

            if (v13)
            {
              v16 = v0[9];
            }

            else
            {
              v16 = 0;
            }
          }

          else
          {

            v15 = 0;
            v16 = 0;
          }

          sub_1000793B4(&qword_1000AC238, v14, type metadata accessor for CoreDataDatabase, &unk_100087C04);
          static LoggedObject.logger.getter();

          v27 = Logger.logObject.getter();
          v28 = static os_log_type_t.default.getter();

          v29 = os_log_type_enabled(v27, v28);
          v30 = v0[18];
          v32 = v0[14];
          v31 = v0[15];
          if (v29)
          {
            v52 = v0[14];
            v53 = v3;
            v34 = v0[10];
            v33 = v0[11];
            v51 = v8;
            v35 = swift_slowAlloc();
            v55 = swift_slowAlloc();
            *v35 = 136446466;
            *(v35 + 4) = sub_100035120(v34, v33, &v55);
            *(v35 + 12) = 2080;
            v0[6] = v15;
            v0[7] = v16;

            sub_10000CED0(&qword_1000AC298, &qword_100087CB8);
            v36 = String.init<A>(describing:)();
            v38 = sub_100035120(v36, v37, &v55);

            *(v35 + 14) = v38;
            _os_log_impl(&_mh_execute_header, v27, v28, "Got metadata value for '%{public}s': %s", v35, 0x16u);
            swift_arrayDestroy();

            (*(v31 + 8))(v30, v52);
          }

          else
          {

            (*(v31 + 8))(v30, v32);
          }

          goto LABEL_29;
        }

LABEL_34:
        __break(1u);
        return result;
      }
    }

    else
    {
      result = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result)
      {
        goto LABEL_4;
      }
    }

    sub_1000793B4(&qword_1000AC238, v39, type metadata accessor for CoreDataDatabase, &unk_100087C04);
    static LoggedObject.logger.getter();

    v40 = Logger.logObject.getter();
    v41 = static os_log_type_t.error.getter();

    v42 = os_log_type_enabled(v40, v41);
    v43 = v0[17];
    v45 = v0[14];
    v44 = v0[15];
    if (v42)
    {
      v54 = v3;
      v47 = v0[10];
      v46 = v0[11];
      v48 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      v55 = v49;
      *v48 = 136446210;
      *(v48 + 4) = sub_100035120(v47, v46, &v55);
      _os_log_impl(&_mh_execute_header, v40, v41, "Could not get metadata '%{public}s' without persistent store", v48, 0xCu);
      sub_10000D330(v49);
    }

    else
    {
    }

    (*(v44 + 8))(v43, v45);
  }

  else
  {
    sub_1000793B4(&qword_1000AC238, v2, type metadata accessor for CoreDataDatabase, &unk_100087C04);
    static LoggedObject.logger.getter();

    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.error.getter();

    v19 = os_log_type_enabled(v17, v18);
    v21 = v0[15];
    v20 = v0[16];
    v22 = v0[14];
    if (v19)
    {
      v24 = v0[10];
      v23 = v0[11];
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v55 = v26;
      *v25 = 136446210;
      *(v25 + 4) = sub_100035120(v24, v23, &v55);
      _os_log_impl(&_mh_execute_header, v17, v18, "Could not get metadata '%{public}s' without coordinator", v25, 0xCu);
      sub_10000D330(v26);
    }

    (*(v21 + 8))(v20, v22);
  }

  v15 = 0;
  v16 = 0;
LABEL_29:

  v50 = v0[1];

  return v50(v15, v16);
}

uint64_t sub_100074230()
{

  return swift_deallocClassInstance();
}

uint64_t sub_10007428C(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v2[4] = *v1;
  v3 = type metadata accessor for NSManagedObjectContext.ScheduledTaskType();
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();
  v4 = type metadata accessor for Logger();
  v2[8] = v4;
  v2[9] = *(v4 - 8);
  v2[10] = swift_task_alloc();
  v2[11] = swift_task_alloc();

  return _swift_task_switch(sub_1000743DC, 0, 0);
}

uint64_t sub_1000743DC(uint64_t a1, uint64_t a2)
{
  v3 = *(v2[2] + 16);
  sub_1000793B4(&qword_1000AC238, a2, type metadata accessor for CoreDataDatabase, &unk_100087C04);
  if (v3)
  {
    static LoggedObject.logger.getter();

    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 134217984;
      *(v6 + 4) = v3;

      _os_log_impl(&_mh_execute_header, v4, v5, "Saving %ld event(s)", v6, 0xCu);
    }

    else
    {
    }

    v16 = v2[6];
    v28 = v2[7];
    v17 = v2[4];
    v18 = v2[5];
    v20 = v2[2];
    v19 = v2[3];
    (*(v2[9] + 8))(v2[11], v2[8]);
    v21 = *(v19 + 16);
    v22 = swift_allocObject();
    v2[12] = v22;
    v22[2] = v20;
    v22[3] = v19;
    v22[4] = v17;
    v23 = swift_allocObject();
    v2[13] = v23;
    v23[2] = sub_100079A4C;
    v23[3] = v22;
    v23[4] = v21;
    v24 = enum case for NSManagedObjectContext.ScheduledTaskType.immediate(_:);
    v25 = *(v16 + 104);

    v25(v28, v24, v18);

    v21;
    v26 = swift_task_alloc();
    v2[14] = v26;
    *v26 = v2;
    v26[1] = sub_10007477C;
    v27 = v2[7];

    return NSManagedObjectContext.perform<A>(schedule:_:)(v26, v27, sub_100079B60, v23, &type metadata for () + 8);
  }

  else
  {
    static LoggedObject.logger.getter();
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();
    v9 = os_log_type_enabled(v7, v8);
    v11 = v2[9];
    v10 = v2[10];
    v12 = v2[8];
    if (v9)
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v7, v8, "No events to save", v13, 2u);
    }

    (*(v11 + 8))(v10, v12);

    v14 = v2[1];

    return v14();
  }
}

uint64_t sub_10007477C()
{
  v2 = *v1;
  *(*v1 + 120) = v0;

  if (v0)
  {
    (*(v2[6] + 8))(v2[7], v2[5]);

    v3 = sub_100074980;
  }

  else
  {
    v5 = v2[6];
    v4 = v2[7];
    v6 = v2[5];

    (*(v5 + 8))(v4, v6);
    v3 = sub_100074908;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100074908()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100074980()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100074A0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v81 = a2;
  v95 = type metadata accessor for Date();
  v98 = *(v95 - 8);
  __chkstk_darwin(v95);
  v94 = &v75 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = type metadata accessor for UUID();
  v97 = *(v93 - 8);
  v6 = __chkstk_darwin(v93);
  v99 = &v75 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v100 = &v75 - v8;
  v91 = type metadata accessor for PendingEventData(0);
  v9 = *(v91 - 1);
  v10 = __chkstk_darwin(v91);
  v92 = &v75 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v13 = &v75 - v12;
  v14 = type metadata accessor for Logger();
  v15 = *(v14 - 8);
  v16 = __chkstk_darwin(v14);
  v77 = &v75 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v16);
  v75 = &v75 - v19;
  v20 = __chkstk_darwin(v18);
  v82 = &v75 - v21;
  __chkstk_darwin(v20);
  v23 = &v75 - v22;
  v83 = sub_1000793B4(&qword_1000AC238, v24, type metadata accessor for CoreDataDatabase, &unk_100087C04);
  v78 = a3;
  static LoggedObject.logger.getter();
  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    *v27 = 0;
    _os_log_impl(&_mh_execute_header, v25, v26, "Creating pending events from event data", v27, 2u);
  }

  v28 = *(v15 + 8);
  v80 = v14;
  v79 = v15 + 8;
  v76 = v28;
  v28(v23, v14);
  v29 = *(a1 + 16);
  v30 = _swiftEmptyArrayStorage;
  if (v29)
  {
    v101 = _swiftEmptyArrayStorage;
    specialized ContiguousArray.reserveCapacity(_:)();
    v31 = *(v81 + 16);
    v32 = a1 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
    v88 = (v97 + 16);
    v89 = v31;
    v86 = (v98 + 8);
    v87 = (v98 + 16);
    v84 = *(v9 + 72);
    v85 = (v97 + 8);
    v34 = v93;
    v33 = v94;
    v35 = v99;
    v36 = v13;
    v37 = v92;
    v38 = v95;
    v90 = v36;
    while (1)
    {
      v98 = v32;
      v99 = v29;
      sub_100037660(v32, v36);
      sub_100037660(v36, v37);
      v42 = *v88;
      (*v88)(v100, v37, v34);
      v43 = v91;
      v44 = *(v37 + v91[8] + 8);
      v96 = *(v37 + v91[7]);
      v97 = v44;
      v42(v35, v37 + v91[5], v34);
      v45 = v33;
      (*v87)(v33, v37 + v43[6], v38);
      v46 = v43[10];
      v47 = *(v37 + v43[9]);
      v48 = *(v37 + v46);
      v49 = objc_allocWithZone(type metadata accessor for PendingUploadEvent());

      v50 = [v49 initWithContext:v89];
      isa = UUID._bridgeToObjectiveC()().super.isa;
      [v50 setIdentifier:isa];

      [v50 setType:v96];
      v52 = Data._bridgeToObjectiveC()().super.isa;
      [v50 setData:v52];

      v53 = UUID._bridgeToObjectiveC()().super.isa;
      [v50 setHomeIdentifier:v53];

      v54 = Date._bridgeToObjectiveC()().super.isa;
      [v50 setDate:v54];

      sub_100082EE4(v47);
      v55 = String._bridgeToObjectiveC()();
      [v50 willChangeValueForKey:v55];

      if (v48 > 1)
      {
        break;
      }

      v38 = v95;
      v37 = v92;
      v34 = v93;
      v39 = Int16._bridgeToObjectiveC()().super.super.isa;
      [v50 setPrimitiveDatabase:v39];

      v40 = String._bridgeToObjectiveC()();
      [v50 didChangeValueForKey:v40];

      (*v86)(v45, v38);
      v41 = *v85;
      (*v85)(v35, v34);
      v41(v100, v34);
      v36 = v90;
      sub_1000376C4(v90);
      sub_1000376C4(v37);
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v32 = v98 + v84;
      v29 = v99 - 1;
      v33 = v94;
      if (v99 == 1)
      {
        v30 = v101;
        goto LABEL_9;
      }
    }

    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
LABEL_9:
    static LoggedObject.logger.getter();

    v56 = Logger.logObject.getter();
    v57 = static os_log_type_t.info.getter();
    v58 = os_log_type_enabled(v56, v57);
    v59 = v80;
    v60 = v76;
    if (v58)
    {
      v61 = swift_slowAlloc();
      *v61 = 134217984;
      if (v30 >> 62)
      {
        v62 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v62 = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      *(v61 + 4) = v62;

      _os_log_impl(&_mh_execute_header, v56, v57, "Saving %ld pending event(s)", v61, 0xCu);
    }

    else
    {

      swift_bridgeObjectRelease_n();
    }

    v60(v82, v59);
    v63 = *(v81 + 16);
    v101 = 0;
    if ([v63 save:&v101])
    {
      v64 = v101;
      static LoggedObject.logger.getter();
      v65 = Logger.logObject.getter();
      v66 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v65, v66))
      {
        v67 = swift_slowAlloc();
        *v67 = 0;
        _os_log_impl(&_mh_execute_header, v65, v66, "Successfully saved pending events", v67, 2u);
      }

      return (v60)(v75, v59);
    }

    else
    {
      v69 = v101;
      _convertNSErrorToError(_:)();

      swift_willThrow();
      static LoggedObject.logger.getter();
      swift_errorRetain();
      v70 = Logger.logObject.getter();
      v71 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v70, v71))
      {
        v72 = swift_slowAlloc();
        v73 = swift_slowAlloc();
        *v72 = 138543362;
        swift_errorRetain();
        v74 = _swift_stdlib_bridgeErrorToNSError();
        *(v72 + 4) = v74;
        *v73 = v74;
        _os_log_impl(&_mh_execute_header, v70, v71, "Failed to save pending events: %{public}@", v72, 0xCu);
        sub_10000D620(v73, &unk_1000AB7D0, &qword_100085510);
      }

      v60(v77, v59);
      return swift_willThrow();
    }
  }

  return result;
}

uint64_t sub_100075500(uint64_t a1)
{
  *(v2 + 16) = *v1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_1000755BC;

  return sub_1000757D4(a1);
}

uint64_t sub_1000755BC(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;
  *(*v2 + 32) = v1;

  if (v1)
  {
    v6 = *(v5 + 8);

    return v6();
  }

  else
  {
    *(v4 + 40) = a1;

    return _swift_task_switch(sub_10007570C, 0, 0);
  }
}

uint64_t sub_10007570C()
{
  v1 = v0[5];
  v2 = v0[2];
  v3 = swift_allocObject();
  *(v3 + 16) = v2;
  v4 = sub_100079454(v1, sub_10007944C, v3);

  v5 = v0[1];

  return v5(v4);
}

uint64_t sub_1000757D4(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v2[5] = *v1;
  v3 = type metadata accessor for NSManagedObjectContext.ScheduledTaskType();
  v2[6] = v3;
  v2[7] = *(v3 - 8);
  v2[8] = swift_task_alloc();
  v4 = type metadata accessor for Logger();
  v2[9] = v4;
  v2[10] = *(v4 - 8);
  v2[11] = swift_task_alloc();

  return _swift_task_switch(sub_100075918, 0, 0);
}

uint64_t sub_100075918(uint64_t a1, uint64_t a2)
{
  sub_1000793B4(&qword_1000AC238, a2, type metadata accessor for CoreDataDatabase, &unk_100087C04);
  static LoggedObject.logger.getter();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = v2[3];
    v6 = swift_slowAlloc();
    *v6 = 134217984;
    *(v6 + 4) = v5;
    _os_log_impl(&_mh_execute_header, v3, v4, "Fetching pending events (limit = %ld)", v6, 0xCu);
  }

  v8 = v2[10];
  v7 = v2[11];
  v9 = v2[9];
  v20 = v2[8];
  v10 = v2[6];
  v11 = v2[7];
  v12 = v2[4];
  v13 = v2[5];
  v14 = v2[3];

  (*(v8 + 8))(v7, v9);
  v15 = swift_allocObject();
  v2[12] = v15;
  v15[2] = v14;
  v15[3] = v12;
  v15[4] = v13;
  (*(v11 + 104))(v20, enum case for NSManagedObjectContext.ScheduledTaskType.immediate(_:), v10);

  v16 = swift_task_alloc();
  v2[13] = v16;
  v17 = sub_10000CED0(&qword_1000AC288, &qword_100087C90);
  *v16 = v2;
  v16[1] = sub_100075B58;
  v18 = v2[8];

  return NSManagedObjectContext.perform<A>(schedule:_:)(v2 + 2, v18, sub_1000799D0, v15, v17);
}

uint64_t sub_100075B58()
{
  v2 = *(*v1 + 64);
  v3 = *(*v1 + 56);
  v4 = *(*v1 + 48);
  *(*v1 + 112) = v0;

  (*(v3 + 8))(v2, v4);

  if (v0)
  {
    v5 = sub_100075D64;
  }

  else
  {
    v5 = sub_100075CEC;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100075CEC()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_100075D64()
{

  v1 = *(v0 + 8);

  return v1();
}

BOOL sub_100075DD4(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for PendingEventData(0);
  v4 = __chkstk_darwin(v3);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v25 - v7;
  v9 = type metadata accessor for Logger();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(a1 + *(v3 + 40));
  if (v14 == 2)
  {
    sub_1000793B4(&qword_1000AC238, v11, type metadata accessor for CoreDataDatabase, &unk_100087C04);
    static LoggedObject.logger.getter();
    sub_100037660(a1, v8);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v25 = v9;
      v18 = v17;
      v19 = swift_slowAlloc();
      v26 = v19;
      *v18 = 136315138;
      sub_100037660(v8, v6);
      v20 = String.init<A>(describing:)();
      v22 = v21;
      sub_1000376C4(v8);
      v23 = sub_100035120(v20, v22, &v26);

      *(v18 + 4) = v23;
      _os_log_impl(&_mh_execute_header, v15, v16, "Dropping event with unknown target database: %s", v18, 0xCu);
      sub_10000D330(v19);

      (*(v10 + 8))(v13, v25);
    }

    else
    {

      sub_1000376C4(v8);
      (*(v10 + 8))(v13, v9);
    }
  }

  return v14 != 2;
}

void sub_100076090(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v83 = a1;
  v75 = a4;
  v6 = type metadata accessor for PendingEventData(0);
  v85 = *(v6 - 8);
  v86 = v6;
  __chkstk_darwin(v6);
  v8 = &v73 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Logger();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = &v73 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v11);
  v74 = &v73 - v15;
  v16 = __chkstk_darwin(v14);
  v82 = &v73 - v17;
  __chkstk_darwin(v16);
  v19 = &v73 - v18;
  v78 = sub_1000793B4(&qword_1000AC238, v20, type metadata accessor for CoreDataDatabase, &unk_100087C04);
  v79 = a3;
  static LoggedObject.logger.getter();
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    *v23 = 0;
    _os_log_impl(&_mh_execute_header, v21, v22, "Beginning fetch", v23, 2u);
  }

  v25 = *(v10 + 8);
  v24 = v10 + 8;
  v77 = v9;
  v80 = v25;
  v81 = v24;
  v25(v19, v9);
  v26 = type metadata accessor for PendingUploadEvent();
  v87 = v26;
  sub_10000CED0(&qword_1000AC290, &qword_100087C98);
  if ((String.init<A>(describing:)() != 0xD000000000000012 || 0x800000010008A000 != v27) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    __break(1u);
    goto LABEL_29;
  }

  v28 = objc_allocWithZone(NSFetchRequest);
  v29 = String._bridgeToObjectiveC()();

  v30 = [v28 initWithEntityName:v29];

  [v30 setReturnsObjectsAsFaults:0];
  [v30 setFetchLimit:v83];
  if ((*(a2 + 32) & 1) == 0)
  {
    [v30 setFetchBatchSize:*(a2 + 24)];
  }

  v76 = v30;
  v31 = v84;
  v32 = NSManagedObjectContext.fetch<A>(_:)();
  if (v31)
  {
    static LoggedObject.logger.getter();
    swift_errorRetain();
    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.error.getter();

    v35 = os_log_type_enabled(v33, v34);
    v36 = v77;
    if (v35)
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      *v37 = 138543362;
      swift_errorRetain();
      v39 = _swift_stdlib_bridgeErrorToNSError();
      *(v37 + 4) = v39;
      *v38 = v39;
      _os_log_impl(&_mh_execute_header, v33, v34, "Failed to fetch pending events: %{public}@", v37, 0xCu);
      sub_10000D620(v38, &unk_1000AB7D0, &qword_100085510);
    }

    v80(v13, v36);
    swift_willThrow();

    return;
  }

  v24 = v32;
  v73 = 0;
  v40 = v82;
  static LoggedObject.logger.getter();
  v41 = Logger.logObject.getter();
  v42 = static os_log_type_t.info.getter();
  v43 = os_log_type_enabled(v41, v42);
  v26 = v77;
  if (v43)
  {
    v44 = swift_slowAlloc();
    *v44 = 0;
    _os_log_impl(&_mh_execute_header, v41, v42, "Fetch completed successfully", v44, 2u);
  }

  v80(v40, v26);
  if (v24 >> 62)
  {
LABEL_29:
    v45 = _CocoaArrayWrapper.endIndex.getter();
    if (v45)
    {
      goto LABEL_16;
    }

    goto LABEL_30;
  }

  v45 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v45)
  {
LABEL_16:
    v87 = _swiftEmptyArrayStorage;
    sub_10003E6F8(0, v45 & ~(v45 >> 63), 0);
    if (v45 < 0)
    {
      __break(1u);
      return;
    }

    v46 = 0;
    v47 = v87;
    v48 = v24;
    v82 = (v24 & 0xC000000000000001);
    v83 = v45;
    v84 = v24;
    do
    {
      if (v82)
      {
        v49 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v49 = *(v48 + 8 * v46 + 32);
      }

      v50 = v49;
      v51 = [v49 identifier];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v52 = [v50 homeIdentifier];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v53 = [v50 date];
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      v54 = [v50 type];
      v55 = [v50 data];
      v56 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v58 = v57;

      v59 = String._bridgeToObjectiveC()();
      [v50 willAccessValueForKey:v59];

      v60 = [v50 primitiveUnencryptedTags];
      if (v60)
      {
        v61 = v60;
        v62 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
      }

      else
      {
        v62 = _swiftEmptyArrayStorage;
      }

      v63 = String._bridgeToObjectiveC()();
      [v50 didAccessValueForKey:v63];

      LOBYTE(v63) = sub_100082E00();
      v64 = v86;
      *&v8[v86[7]] = v54;
      v65 = &v8[v64[8]];
      *v65 = v56;
      v65[1] = v58;
      *&v8[v64[9]] = v62;
      v8[v64[10]] = v63;
      v87 = v47;
      v67 = v47[2];
      v66 = v47[3];
      if (v67 >= v66 >> 1)
      {
        sub_10003E6F8((v66 > 1), v67 + 1, 1);
        v47 = v87;
      }

      ++v46;
      v47[2] = v67 + 1;
      sub_10003FB74(v8, v47 + ((*(v85 + 80) + 32) & ~*(v85 + 80)) + *(v85 + 72) * v67);
      v48 = v84;
    }

    while (v83 != v46);

    v26 = v77;
    goto LABEL_31;
  }

LABEL_30:

  v47 = _swiftEmptyArrayStorage;
LABEL_31:
  v68 = v74;
  static LoggedObject.logger.getter();

  v69 = Logger.logObject.getter();
  v70 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v69, v70))
  {
    v71 = swift_slowAlloc();
    *v71 = 134217984;
    *(v71 + 4) = v47[2];

    _os_log_impl(&_mh_execute_header, v69, v70, "Fetched %ld pending event(s)", v71, 0xCu);
  }

  else
  {
  }

  v72 = v75;

  v80(v68, v26);
  *v72 = v47;
}

uint64_t sub_1000769B8(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v2[4] = *v1;
  v3 = type metadata accessor for Logger();
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();
  v4 = type metadata accessor for NSManagedObjectContext.ScheduledTaskType();
  v2[8] = v4;
  v2[9] = *(v4 - 8);
  v2[10] = swift_task_alloc();

  return _swift_task_switch(sub_100076AFC, 0, 0);
}

uint64_t sub_100076AFC(uint64_t a1, uint64_t a2)
{
  v3 = v2[2];
  if (*(v3 + 16))
  {
    v4 = v2[9];
    v24 = v2[10];
    v5 = v2[8];
    v7 = v2[3];
    v6 = v2[4];
    v8 = *(v7 + 16);
    v9 = swift_allocObject();
    v2[11] = v9;
    v9[2] = v3;
    v9[3] = v7;
    v9[4] = v6;
    v10 = swift_allocObject();
    v2[12] = v10;
    v10[2] = sub_1000793FC;
    v10[3] = v9;
    v10[4] = v8;
    v11 = enum case for NSManagedObjectContext.ScheduledTaskType.immediate(_:);
    v12 = *(v4 + 104);

    v12(v24, v11, v5);

    v8;
    v13 = swift_task_alloc();
    v2[13] = v13;
    *v13 = v2;
    v13[1] = sub_100076DD0;
    v14 = v2[10];

    return NSManagedObjectContext.perform<A>(schedule:_:)(v13, v14, sub_10007941C, v10, &type metadata for () + 8);
  }

  else
  {
    sub_1000793B4(&qword_1000AC238, a2, type metadata accessor for CoreDataDatabase, &unk_100087C04);
    static LoggedObject.logger.getter();
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.default.getter();
    v17 = os_log_type_enabled(v15, v16);
    v19 = v2[6];
    v18 = v2[7];
    v20 = v2[5];
    if (v17)
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&_mh_execute_header, v15, v16, "No identifiers to delete", v21, 2u);
    }

    (*(v19 + 8))(v18, v20);

    v22 = v2[1];

    return v22();
  }
}

uint64_t sub_100076DD0()
{
  v2 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    (*(v2[9] + 8))(v2[10], v2[8]);

    v3 = sub_100076FC8;
  }

  else
  {
    v4 = v2[10];
    v7 = v2 + 8;
    v5 = v2[8];
    v6 = v7[1];

    (*(v6 + 8))(v4, v5);
    v3 = sub_100076F58;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100076F58()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100076FC8()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_100077040(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v38 = a2;
  v5 = type metadata accessor for Logger();
  v39 = *(v5 - 8);
  v40 = v5;
  v6 = __chkstk_darwin(v5);
  v37 = v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v9 = v35 - v8;
  type metadata accessor for PendingUploadEvent();
  v10 = [swift_getObjCClassFromMetadata() fetchRequest];
  sub_10000D544(0, &qword_1000AC258, NSPredicate_ptr);
  sub_10000CED0(&qword_1000AC260, &qword_100087C58);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_100085330;
  *(v11 + 56) = sub_10000CED0(&qword_1000AC278, &qword_100087C70);
  *(v11 + 64) = sub_100031A38(&qword_1000AC280, &qword_1000AC278, &qword_100087C70, &protocol conformance descriptor for [A]);
  *(v11 + 32) = a1;

  v12 = NSPredicate.init(format:_:)();
  v36 = v10;
  [v10 setPredicate:v12];

  sub_1000793B4(&qword_1000AC238, v13, type metadata accessor for CoreDataDatabase, &unk_100087C04);
  v35[1] = a3;
  static LoggedObject.logger.getter();

  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v41 = v17;
    *v16 = 134218242;
    *(v16 + 4) = *(a1 + 16);

    *(v16 + 12) = 2080;
    type metadata accessor for UUID();
    v18 = Array.description.getter();
    v20 = sub_100035120(v18, v19, &v41);

    *(v16 + 14) = v20;
    _os_log_impl(&_mh_execute_header, v14, v15, "Deleting %ld identifier(s): %s", v16, 0x16u);
    sub_10000D330(v17);
  }

  else
  {
  }

  v21 = v40;
  v22 = *(v39 + 8);
  v22(v9, v40);
  v23 = v37;
  static LoggedObject.logger.getter();

  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v27 = v23;
    v28 = swift_slowAlloc();
    v41 = v28;
    *v26 = 136315138;
    type metadata accessor for UUID();
    v29 = Array.description.getter();
    v31 = sub_100035120(v29, v30, &v41);

    *(v26 + 4) = v31;
    _os_log_impl(&_mh_execute_header, v24, v25, "%s", v26, 0xCu);
    sub_10000D330(v28);

    v32 = v40;
    v33 = v27;
  }

  else
  {

    v33 = v23;
    v32 = v21;
  }

  v22(v33, v32);
  v34 = v36;
  sub_1000774F4(v36);
}

NSObject *sub_1000774F4(uint64_t a1)
{
  v3 = type metadata accessor for Logger();
  v58 = *(v3 - 8);
  v59 = v3;
  v4 = __chkstk_darwin(v3);
  v6 = &v57 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v4);
  v9 = &v57 - v8;
  v10 = __chkstk_darwin(v7);
  v12 = &v57 - v11;
  __chkstk_darwin(v10);
  v14 = &v57 - v13;
  v15 = [objc_allocWithZone(NSBatchDeleteRequest) initWithFetchRequest:a1];
  [v15 setResultType:2];
  v16 = *(v1 + 16);
  *&v61 = 0;
  v17 = [v16 executeRequest:v15 error:&v61];
  v18 = v61;
  if (v17)
  {
    v19 = v17;
    *(&v64 + 1) = sub_10000D544(0, &qword_1000AC240, NSPersistentStoreResult_ptr);
    *&v63 = v19;
    sub_10004DBDC(&v63, v65);
    sub_10000CFA0(v65, &v63);
    sub_10000D544(0, &qword_1000AC248, NSBatchDeleteResult_ptr);
    v20 = v18;
    if (swift_dynamicCast())
    {
      v22 = v61;
      if ([v61 result])
      {
        _bridgeAnyObjectToAny(_:)();
        swift_unknownObjectRelease();
      }

      else
      {
        v61 = 0u;
        v62 = 0u;
      }

      v63 = v61;
      v64 = v62;
      if (*(&v62 + 1))
      {
        sub_10000D544(0, &qword_1000AADD0, NSNumber_ptr);
        if (swift_dynamicCast())
        {
          v43 = v60;
          sub_1000793B4(&qword_1000AC238, v42, type metadata accessor for CoreDataDatabase, &unk_100087C04);
          static LoggedObject.logger.getter();
          v44 = Logger.logObject.getter();
          v45 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v44, v45))
          {
            v46 = swift_slowAlloc();
            *v46 = 0;
            _os_log_impl(&_mh_execute_header, v44, v45, "Batch delete succeeded", v46, 2u);
          }

          (*(v58 + 8))(v14, v59);
          v25 = [v43 integerValue];

          sub_10000D330(v65);
          return v25;
        }
      }

      else
      {
        sub_10000D620(&v63, &qword_1000ABEB8, &qword_1000873A0);
      }

      sub_1000793B4(&qword_1000AC238, v42, type metadata accessor for CoreDataDatabase, &unk_100087C04);
      static LoggedObject.logger.getter();
      v47 = v22;
      v48 = Logger.logObject.getter();
      v49 = static os_log_type_t.fault.getter();

      if (os_log_type_enabled(v48, v49))
      {
        v50 = swift_slowAlloc();
        v51 = swift_slowAlloc();
        *&v61 = v51;
        *v50 = 136446210;
        if ([v47 result])
        {
          _bridgeAnyObjectToAny(_:)();
          swift_unknownObjectRelease();
        }

        else
        {
          v63 = 0u;
          v64 = 0u;
        }

        sub_10000CED0(&qword_1000ABEB8, &qword_1000873A0);
        v52 = String.init<A>(describing:)();
        v54 = sub_100035120(v52, v53, &v61);

        *(v50 + 4) = v54;
        _os_log_impl(&_mh_execute_header, v48, v49, "Expected number as result, got %{public}s", v50, 0xCu);
        sub_10000D330(v51);
      }

      (*(v58 + 8))(v12, v59);
      v25 = 0x8000000100089F30;
      sub_10007933C();
      swift_allocError();
      *v55 = 0xD000000000000020;
      v55[1] = 0x8000000100089F30;
      swift_willThrow();
    }

    else
    {
      sub_1000793B4(&qword_1000AC238, v21, type metadata accessor for CoreDataDatabase, &unk_100087C04);
      static LoggedObject.logger.getter();
      sub_10000CFA0(v65, &v63);
      v30 = Logger.logObject.getter();
      v31 = static os_log_type_t.fault.getter();
      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        v33 = swift_slowAlloc();
        *&v61 = v33;
        *v32 = 136446210;
        v34 = sub_10000D224(&v63, *(&v64 + 1));
        __chkstk_darwin(v34);
        (*(v36 + 16))(&v57 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0));
        v37 = String.init<A>(describing:)();
        v39 = v38;
        sub_10000D330(&v63);
        v40 = sub_100035120(v37, v39, &v61);

        *(v32 + 4) = v40;
        _os_log_impl(&_mh_execute_header, v30, v31, "Unexpected result type for batch delete: %{public}s", v32, 0xCu);
        sub_10000D330(v33);

        (*(v58 + 8))(v9, v59);
      }

      else
      {

        (*(v58 + 8))(v9, v59);
        sub_10000D330(&v63);
      }

      v25 = 0x8000000100089F00;
      sub_10007933C();
      swift_allocError();
      *v41 = 0xD000000000000027;
      v41[1] = 0x8000000100089F00;
      swift_willThrow();
    }

    sub_10000D330(v65);
    return v25;
  }

  v23 = v61;
  _convertNSErrorToError(_:)();

  swift_willThrow();
  sub_1000793B4(&qword_1000AC238, v24, type metadata accessor for CoreDataDatabase, &unk_100087C04);
  static LoggedObject.logger.getter();
  swift_errorRetain();
  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    *v27 = 138543362;
    swift_errorRetain();
    v29 = _swift_stdlib_bridgeErrorToNSError();
    *(v27 + 4) = v29;
    *v28 = v29;
    _os_log_impl(&_mh_execute_header, v25, v26, "Batch delete failed to execute: %{public}@", v27, 0xCu);
    sub_10000D620(v28, &unk_1000AB7D0, &qword_100085510);
  }

  (*(v58 + 8))(v6, v59);
  swift_willThrow();

  return v25;
}

uint64_t sub_100077E7C(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v2[5] = *v1;
  v3 = type metadata accessor for NSManagedObjectContext.ScheduledTaskType();
  v2[6] = v3;
  v2[7] = *(v3 - 8);
  v2[8] = swift_task_alloc();

  return _swift_task_switch(sub_100077F64, 0, 0);
}

uint64_t sub_100077F64()
{
  v1 = v0[7];
  v14 = v0[8];
  v2 = v0[5];
  v3 = v0[6];
  v5 = v0[3];
  v4 = v0[4];
  v6 = *(v4 + 16);
  v7 = swift_allocObject();
  v0[9] = v7;
  v7[2] = v5;
  v7[3] = v4;
  v7[4] = v2;
  v8 = swift_allocObject();
  v0[10] = v8;
  v8[2] = sub_100079394;
  v8[3] = v7;
  v8[4] = v6;
  v9 = enum case for NSManagedObjectContext.ScheduledTaskType.immediate(_:);
  v10 = *(v1 + 104);

  v10(v14, v9, v3);

  v6;
  v11 = swift_task_alloc();
  v0[11] = v11;
  *v11 = v0;
  v11[1] = sub_1000780FC;
  v12 = v0[8];

  return NSManagedObjectContext.perform<A>(schedule:_:)(v0 + 2, v12, sub_100079B48, v8, &type metadata for Int);
}

uint64_t sub_1000780FC()
{
  v2 = *v1;
  v2[12] = v0;

  if (v0)
  {
    (*(v2[7] + 8))(v2[8], v2[6]);

    return _swift_task_switch(sub_1000782B0, 0, 0);
  }

  else
  {
    v4 = v2[7];
    v3 = v2[8];
    v5 = v2[6];

    (*(v4 + 8))(v3, v5);
    v6 = v2[2];

    v7 = v2[1];

    return v7(v6);
  }
}

uint64_t sub_1000782B0()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_10007831C(uint64_t a1@<X0>, uint64_t a2@<X1>, NSObject **a4@<X8>)
{
  v25 = a2;
  v22 = a4;
  v5 = type metadata accessor for Logger();
  v23 = *(v5 - 8);
  v24 = v5;
  __chkstk_darwin(v5);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for PendingUploadEvent();
  v8 = [swift_getObjCClassFromMetadata() fetchRequest];
  sub_10000D544(0, &qword_1000AC258, NSPredicate_ptr);
  sub_10000CED0(&qword_1000AC260, &qword_100087C58);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_100085330;
  *(v9 + 56) = sub_10000CED0(&qword_1000AC268, &qword_100087C60);
  *(v9 + 64) = sub_100031A38(&qword_1000AC270, &qword_1000AC268, &qword_100087C60, &protocol conformance descriptor for Set<A>);
  *(v9 + 32) = a1;

  v10 = NSPredicate.init(format:_:)();
  [v8 setPredicate:v10];

  sub_1000793B4(&qword_1000AC238, v11, type metadata accessor for CoreDataDatabase, &unk_100087C04);
  static LoggedObject.logger.getter();

  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v27 = v15;
    *v14 = 136315138;
    type metadata accessor for UUID();
    sub_1000793B4(&unk_1000AC310, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v16 = Set.description.getter();
    v18 = sub_100035120(v16, v17, &v27);

    *(v14 + 4) = v18;
    _os_log_impl(&_mh_execute_header, v12, v13, "Deleting events for homes %s", v14, 0xCu);
    sub_10000D330(v15);
  }

  (*(v23 + 8))(v7, v24);
  v19 = v26;
  v20 = sub_1000774F4(v8);

  if (!v19)
  {
    *v22 = v20;
  }
}

void sub_100078694(NSObject **a2@<X8>)
{
  v3 = v2;
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for PendingUploadEvent();
  v9 = [swift_getObjCClassFromMetadata() fetchRequest];
  sub_1000793B4(&qword_1000AC238, v10, type metadata accessor for CoreDataDatabase, &unk_100087C04);
  static LoggedObject.logger.getter();
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v16 = v5;
    *v13 = 0;
    _os_log_impl(&_mh_execute_header, v11, v12, "Executing batch delete to clear the database", v13, 2u);
    v3 = v2;
    v5 = v16;
  }

  (*(v6 + 8))(v8, v5);
  v14 = sub_1000774F4(v9);

  if (!v3)
  {
    *a2 = v14;
  }
}

uint64_t sub_100078894()
{
  v1[3] = v0;
  v1[4] = *v0;
  v2 = type metadata accessor for NSManagedObjectContext.ScheduledTaskType();
  v1[5] = v2;
  v1[6] = *(v2 - 8);
  v1[7] = swift_task_alloc();

  return _swift_task_switch(sub_10007897C, 0, 0);
}

uint64_t sub_10007897C()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[3];
  v6 = *(v5 + 16);
  v7 = swift_allocObject();
  v0[8] = v7;
  *(v7 + 16) = v5;
  *(v7 + 24) = v3;
  v8 = swift_allocObject();
  v0[9] = v8;
  v8[2] = sub_1000799F0;
  v8[3] = v7;
  v8[4] = v6;
  v9 = enum case for NSManagedObjectContext.ScheduledTaskType.immediate(_:);
  v10 = *(v2 + 104);

  v10(v1, v9, v4);

  v6;
  v11 = swift_task_alloc();
  v0[10] = v11;
  *v11 = v0;
  v11[1] = sub_100078B04;
  v12 = v0[7];

  return NSManagedObjectContext.perform<A>(schedule:_:)(v0 + 2, v12, sub_100079B48, v8, &type metadata for Int);
}

uint64_t sub_100078B04()
{
  v2 = *v1;
  v2[11] = v0;

  if (v0)
  {
    (*(v2[6] + 8))(v2[7], v2[5]);

    return _swift_task_switch(sub_100079B28, 0, 0);
  }

  else
  {
    v4 = v2[6];
    v3 = v2[7];
    v5 = v2[5];

    (*(v4 + 8))(v3, v5);
    v6 = v2[2];

    v7 = v2[1];

    return v7(v6);
  }
}

uint64_t sub_100078CB8@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  v38 = type metadata accessor for Logger();
  v4 = *(v38 - 8);
  v5 = __chkstk_darwin(v38);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v5);
  v34 = &v33 - v9;
  __chkstk_darwin(v8);
  v11 = &v33 - v10;
  sub_1000793B4(&qword_1000AC238, v12, type metadata accessor for CoreDataDatabase, &unk_100087C04);
  static LoggedObject.logger.getter();
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v37 = a1;
    *v15 = 0;
    _os_log_impl(&_mh_execute_header, v13, v14, "Fetching pending event count", v15, 2u);
  }

  v36 = *(v4 + 8);
  v37 = v4 + 8;
  v36(v11, v38);
  v39 = type metadata accessor for PendingUploadEvent();
  sub_10000CED0(&qword_1000AC290, &qword_100087C98);
  if (String.init<A>(describing:)() == 0xD000000000000012 && 0x800000010008A000 == v16 || (result = _stringCompareWithSmolCheck(_:_:expecting:)(), (result & 1) != 0))
  {
    v18 = objc_allocWithZone(NSFetchRequest);
    v19 = String._bridgeToObjectiveC()();

    v20 = [v18 initWithEntityName:v19];

    v21 = v35;
    v22 = NSManagedObjectContext.count<A>(for:)();
    if (v21)
    {

      static LoggedObject.logger.getter();
      swift_errorRetain();
      v23 = Logger.logObject.getter();
      v24 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        v26 = swift_slowAlloc();
        *v25 = 138543362;
        swift_errorRetain();
        v27 = _swift_stdlib_bridgeErrorToNSError();
        *(v25 + 4) = v27;
        *v26 = v27;
        _os_log_impl(&_mh_execute_header, v23, v24, "Failed to fetch pending event count: %{public}@", v25, 0xCu);
        sub_10000D620(v26, &unk_1000AB7D0, &qword_100085510);
      }

      v36(v7, v38);
      return swift_willThrow();
    }

    else
    {
      v28 = v22;

      v29 = v34;
      static LoggedObject.logger.getter();
      v30 = Logger.logObject.getter();
      v31 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        *v32 = 134217984;
        *(v32 + 4) = v28;
        _os_log_impl(&_mh_execute_header, v30, v31, "Fetched pending event count: %ld", v32, 0xCu);
      }

      result = (v36)(v29, v38);
      *a2 = v28;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1000791A0()
{

  return _swift_deallocObject(v0, 32, 7);
}

double sub_1000791F4@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = v3;
  v6 = sub_10007B4E8(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v12 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1000802BC();
      v10 = v12;
    }

    sub_10004DBDC((*(v10 + 56) + 32 * v8), a3);
    sub_10005A5A0(v8, v10);
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

id sub_100079298@<X0>(void (*a1)(uint64_t *__return_ptr)@<X0>, void *a2@<X2>, void *a3@<X8>)
{
  a1(&v7);
  if (v3)
  {
    [a2 reset];
    return swift_willThrow();
  }

  else
  {
    result = [a2 reset];
    *a3 = v7;
  }

  return result;
}

unint64_t sub_10007933C()
{
  result = qword_1000AC250;
  if (!qword_1000AC250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AC250);
  }

  return result;
}

uint64_t sub_1000793B4(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void *sub_100079454(uint64_t a1, uint64_t (*a2)(char *), uint64_t a3)
{
  v68 = a2;
  v69 = a3;
  v65 = type metadata accessor for EventWriterScope();
  v4 = *(v65 - 8);
  __chkstk_darwin(v65);
  v66 = &v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = type metadata accessor for PendingEventData(0);
  v6 = *(v63 - 8);
  v7 = __chkstk_darwin(v63);
  v61 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v64 = &v51 - v10;
  v11 = __chkstk_darwin(v9);
  v13 = &v51 - v12;
  __chkstk_darwin(v11);
  v62 = &v51 - v14;
  v71 = &_swiftEmptyDictionarySingleton;
  v70 = a1;
  v15 = *(a1 + 16);
  if (v15)
  {
    v16 = 0;
    v56 = enum case for EventWriterScope.shared(_:);
    v59 = (v4 + 104);
    v58 = enum case for EventWriterScope.owned(_:);
    v54 = (v4 + 8);
    v55 = v4 + 32;
    v67 = &_swiftEmptyDictionarySingleton;
    v53 = xmmword_100085330;
    v60 = v4;
    while (1)
    {
      for (i = v16; ; ++i)
      {
        if (i >= v15)
        {
          __break(1u);
LABEL_28:
          __break(1u);
LABEL_29:
          __break(1u);
LABEL_30:
          __break(1u);
LABEL_31:
          _assertionFailure(_:_:file:line:flags:)();
          __break(1u);
LABEL_32:
          result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
          __break(1u);
          return result;
        }

        v18 = (*(v6 + 80) + 32) & ~*(v6 + 80);
        v19 = *(v6 + 72);
        sub_100037660(v70 + v18 + v19 * i, v13);
        v16 = i + 1;
        if (__OFADD__(i, 1))
        {
          goto LABEL_28;
        }

        if (v68(v13))
        {
          break;
        }

        sub_1000376C4(v13);
        if (v16 == v15)
        {
          return v67;
        }
      }

      v20 = v62;
      sub_10003FB74(v13, v62);
      v21 = v20;
      v22 = v64;
      sub_10003FB74(v21, v64);
      v23 = v58;
      if (*(v22 + *(v63 + 40)))
      {
        v23 = v56;
        if (*(v22 + *(v63 + 40)) != 1)
        {
          goto LABEL_31;
        }
      }

      v24 = v66;
      (*v59)(v66, v23, v65);
      v25 = v24;
      v26 = v67;
      v28 = sub_10007B5A4(v25);
      v29 = v26[2];
      v30 = (v27 & 1) == 0;
      v31 = v29 + v30;
      v32 = v60;
      if (__OFADD__(v29, v30))
      {
        goto LABEL_29;
      }

      if (v26[3] >= v31)
      {
        goto LABEL_15;
      }

      LODWORD(v57) = v27;
      sub_10007BD1C(v31, 1);
      v67 = v71;
      v33 = sub_10007B5A4(v66);
      v34 = v27 & 1;
      LOBYTE(v27) = v57;
      if ((v57 & 1) != v34)
      {
        goto LABEL_32;
      }

      v28 = v33;
LABEL_15:
      v57 = v28;
      if ((v27 & 1) == 0)
      {
        sub_10000CED0(&qword_1000AB460, &qword_1000866B8);
        v42 = swift_allocObject();
        *(v42 + 16) = v53;
        sub_10003FB74(v64, v42 + v18);
        v43 = v57;
        v44 = v66;
        v45 = v67;
        v67[(v57 >> 6) + 8] |= 1 << v57;
        (*(v32 + 32))(v45[6] + *(v32 + 72) * v43, v44, v65);
        *(v45[7] + 8 * v43) = v42;
        v46 = v45[2];
        v47 = __OFADD__(v46, 1);
        v48 = v46 + 1;
        if (!v47)
        {
          v45[2] = v48;
          if (v16 != v15)
          {
            continue;
          }

          return v67;
        }

        goto LABEL_30;
      }

      (*v54)(v66, v65);
      v35 = v67[7];
      sub_10003FB74(v64, v61);
      v36 = v57;
      v37 = *(v35 + 8 * v57);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v35 + 8 * v36) = v37;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v37 = sub_1000226FC(0, v37[2] + 1, 1, v37);
        *(v35 + 8 * v57) = v37;
      }

      v40 = v37[2];
      v39 = v37[3];
      v41 = v40 + 1;
      if (v40 >= v39 >> 1)
      {
        v52 = v40 + 1;
        v49 = sub_1000226FC((v39 > 1), v40 + 1, 1, v37);
        v41 = v52;
        v37 = v49;
        *(v35 + 8 * v57) = v49;
      }

      v37[2] = v41;
      sub_10003FB74(v61, v37 + v18 + v40 * v19);
      if (v16 == v15)
      {
        return v67;
      }
    }
  }

  return &_swiftEmptyDictionarySingleton;
}

uint64_t sub_100079998()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100079A0C()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100079A6C()
{

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_100079AE4()
{

  return _swift_deallocObject(v0, 40, 7);
}

void sub_100079B78(uint64_t a1)
{
  v44 = type metadata accessor for EventWriterScope();
  v2 = *(v44 - 8);
  __chkstk_darwin(v44);
  v39 = &v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10000CED0(&qword_1000AC140, &unk_100087CE0);
  v5 = __chkstk_darwin(v4 - 8);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v33 - v8;
  v10 = *(a1 + 64);
  v34 = a1 + 64;
  v11 = 1 << *(a1 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & v10;
  v33 = (v11 + 63) >> 6;
  v35 = v2 + 32;
  v36 = v2 + 16;
  v40 = v2;
  v41 = a1;
  v42 = (v2 + 8);

  v14 = 0;
  v15 = 0;
  v37 = v9;
  v38 = v7;
  if (v13)
  {
    while (1)
    {
      v43 = v14;
      v16 = v15;
LABEL_13:
      v19 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
      v20 = v19 | (v16 << 6);
      v22 = v40;
      v21 = v41;
      v23 = v39;
      v24 = v44;
      (*(v40 + 16))(v39, *(v41 + 48) + *(v40 + 72) * v20, v44);
      v25 = *(*(v21 + 56) + 8 * v20);
      v26 = sub_10000CED0(&qword_1000AC148, &qword_100087A98);
      v27 = *(v26 + 48);
      v28 = *(v22 + 32);
      v7 = v38;
      v28(v38, v23, v24);
      *&v7[v27] = v25;
      (*(*(v26 - 8) + 56))(v7, 0, 1, v26);

      v18 = v16;
      v9 = v37;
      v14 = v43;
LABEL_14:
      sub_100079F40(v7, v9);
      v29 = sub_10000CED0(&qword_1000AC148, &qword_100087A98);
      if ((*(*(v29 - 8) + 48))(v9, 1, v29) == 1)
      {
        break;
      }

      v30 = *(*&v9[*(v29 + 48)] + 16);

      v31 = __OFADD__(v14, v30);
      v14 += v30;
      if (v31)
      {
        goto LABEL_21;
      }

      (*v42)(v9, v44);
      v15 = v18;
      if (!v13)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    if (v33 <= v15 + 1)
    {
      v17 = v15 + 1;
    }

    else
    {
      v17 = v33;
    }

    v18 = v17 - 1;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v16 >= v33)
      {
        v32 = sub_10000CED0(&qword_1000AC148, &qword_100087A98);
        (*(*(v32 - 8) + 56))(v7, 1, 1, v32);
        v13 = 0;
        goto LABEL_14;
      }

      v13 = *(v34 + 8 * v16);
      ++v15;
      if (v13)
      {
        v43 = v14;
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
  }
}

uint64_t sub_100079F40(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000CED0(&qword_1000AC140, &unk_100087CE0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100079FC0(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEB00000000646572;
  v3 = 0x6F72724574696177;
  v4 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v5 = 0x6870724F74696177;
    }

    else
    {
      v5 = 0x6363755374696177;
    }

    if (v4 == 2)
    {
      v6 = 0xEC00000064656E61;
    }

    else
    {
      v6 = 0xED00006465646565;
    }
  }

  else
  {
    if (a1)
    {
      v5 = 0x6566654474696177;
    }

    else
    {
      v5 = 0x6F72724574696177;
    }

    if (v4)
    {
      v6 = 0xEC00000064657272;
    }

    else
    {
      v6 = 0xEB00000000646572;
    }
  }

  v7 = 0x6870724F74696177;
  if (a2 == 2)
  {
    v8 = 0xEC00000064656E61;
  }

  else
  {
    v7 = 0x6363755374696177;
    v8 = 0xED00006465646565;
  }

  if (a2)
  {
    v3 = 0x6566654474696177;
    v2 = 0xEC00000064657272;
  }

  if (a2 <= 1u)
  {
    v9 = v3;
  }

  else
  {
    v9 = v7;
  }

  if (a2 <= 1u)
  {
    v10 = v2;
  }

  else
  {
    v10 = v8;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v11 & 1;
}

uint64_t sub_10007A13C(char a1)
{
  v2 = v1;
  swift_getObjectType();
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2[OBJC_IVAR____TtC11homeeventsd32EventUploadScheduledWaitLogEvent_outcome] = a1;
  MetricsManager.submitLogEvent(_:error:)();
  sub_100080DD4(&qword_1000AC390, v8, type metadata accessor for EventUploadScheduledWaitLogEvent, &unk_100087EB0);
  static LoggedObject.logger.getter();
  v9 = v2;
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.info.getter();

  if (!os_log_type_enabled(v10, v11))
  {
    goto LABEL_7;
  }

  v12 = swift_slowAlloc();
  v28 = swift_slowAlloc();
  v30 = v28;
  *v12 = 136446210;
  v13 = sub_10007AB68();
  v14 = *(v13 + 16);
  if (!v14)
  {
    v15 = _swiftEmptyArrayStorage;
    goto LABEL_6;
  }

  v23 = v12;
  v24 = v11;
  v25 = v5;
  v26 = v4;
  v15 = sub_100032ABC(v14, 0);
  v27 = sub_100033338(&v29, v15 + 4, v14, v13);
  v16 = v29;

  sub_1000123C4(v16);
  if (v27 == v14)
  {
    v5 = v25;
    v4 = v26;
    LOBYTE(v11) = v24;
    v12 = v23;
LABEL_6:
    v29 = v15;
    sub_100011900(&v29);

    sub_10000CED0(&unk_1000AB050, &unk_100085CF0);
    v17 = Array.description.getter();
    v19 = v18;

    v20 = sub_100035120(v17, v19, &v30);

    *(v12 + 4) = v20;
    _os_log_impl(&_mh_execute_header, v10, v11, "Submitted EventUploadScheduledWaitLogEvent: %{public}s", v12, 0xCu);
    sub_10000D330(v28);

LABEL_7:

    return (*(v5 + 8))(v7, v4);
  }

  __break(1u);

  __break(1u);
  return result;
}

uint64_t sub_10007A464(uint64_t a1)
{
  swift_getObjectType();
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1[OBJC_IVAR____TtC11homeeventsd32EventUploadScheduledWaitLogEvent_outcome] = 0;
  MetricsManager.submitLogEvent(_:error:)();
  sub_100080DD4(&qword_1000AC390, v6, type metadata accessor for EventUploadScheduledWaitLogEvent, &unk_100087EB0);
  static LoggedObject.logger.getter();
  v7 = v1;
  swift_errorRetain();
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.info.getter();

  if (!os_log_type_enabled(v8, v9))
  {
    goto LABEL_7;
  }

  v10 = swift_slowAlloc();
  v29 = swift_slowAlloc();
  v30 = swift_slowAlloc();
  v32 = v30;
  *v10 = 136446466;
  v11 = sub_10007AB68();
  v12 = *(v11 + 16);
  if (!v12)
  {
    v13 = _swiftEmptyArrayStorage;
    goto LABEL_6;
  }

  v23 = v9;
  v24 = v8;
  v25 = v5;
  v26 = v3;
  v27 = v2;
  v13 = sub_100032ABC(v12, 0);
  v28 = sub_100033338(&v31, v13 + 4, v12, v11);
  v14 = v31;

  sub_1000123C4(v14);
  if (v28 == v12)
  {
    v3 = v26;
    v2 = v27;
    v8 = v24;
    v5 = v25;
    LOBYTE(v9) = v23;
LABEL_6:
    v31 = v13;
    sub_100011900(&v31);

    sub_10000CED0(&unk_1000AB050, &unk_100085CF0);
    v15 = Array.description.getter();
    v17 = v16;

    v18 = sub_100035120(v15, v17, &v32);

    *(v10 + 4) = v18;
    *(v10 + 12) = 2114;
    swift_errorRetain();
    v19 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 14) = v19;
    v20 = v29;
    *v29 = v19;
    _os_log_impl(&_mh_execute_header, v8, v9, "Submitted EventUploadScheduledWaitLogEvent: %{public}s, with error: %{public}@", v10, 0x16u);
    sub_10000D620(v20, &unk_1000AB7D0, &qword_100085510);

    sub_10000D330(v30);

LABEL_7:

    return (*(v3 + 8))(v5, v2);
  }

  __break(1u);

  __break(1u);
  return result;
}

Swift::Int sub_10007A804()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_10007A8E4(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int sub_10007A9B0()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_10007AA8C@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100080D88(*a1);
  *a2 = result;
  return result;
}

void sub_10007AABC(uint64_t *a1@<X8>)
{
  v2 = 0xEB00000000646572;
  v3 = 0x6F72724574696177;
  v4 = 0x6870724F74696177;
  v5 = 0xED00006465646565;
  if (*v1 == 2)
  {
    v5 = 0xEC00000064656E61;
  }

  else
  {
    v4 = 0x6363755374696177;
  }

  if (*v1)
  {
    v3 = 0x6566654474696177;
    v2 = 0xEC00000064657272;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v4;
  }

  if (*v1 > 1u)
  {
    v2 = v5;
  }

  *a1 = v6;
  a1[1] = v2;
}

unint64_t sub_10007AB68()
{
  sub_10000CED0(&unk_1000AB060, &unk_100085D00);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100085330;
  *(inited + 32) = 0x73746961576D756ELL;
  *(inited + 40) = 0xE800000000000000;
  *(inited + 48) = [objc_allocWithZone(NSNumber) initWithInteger:1];
  v2 = sub_1000806CC(inited);
  swift_setDeallocating();
  sub_10000D620(inited + 32, &qword_1000AB3B0, &qword_100086230);
  v3 = OBJC_IVAR____TtC11homeeventsd32EventUploadScheduledWaitLogEvent_outcome;
  v4 = v0[OBJC_IVAR____TtC11homeeventsd32EventUploadScheduledWaitLogEvent_outcome];
  if (v4 <= 1)
  {
    v30 = v0;
    v31 = OBJC_IVAR____TtC11homeeventsd32EventUploadScheduledWaitLogEvent_outcome;
  }

  else if (v4 == 2)
  {
    v30 = v0;
    v31 = OBJC_IVAR____TtC11homeeventsd32EventUploadScheduledWaitLogEvent_outcome;
  }

  else
  {
    v5 = v0;
    if (v4 != 3)
    {
      p_name = (&XPCServer.Listener + 24);
      goto LABEL_26;
    }

    v30 = v0;
    v31 = OBJC_IVAR____TtC11homeeventsd32EventUploadScheduledWaitLogEvent_outcome;
  }

  v6 = objc_allocWithZone(NSString);
  v7 = String._bridgeToObjectiveC()();

  v8 = [v6 initWithString:v7];

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_10007E6E4(v8, 0x6374754F74696177, 0xEF65707954656D6FLL, isUniquelyReferenced_nonNull_native);
  if (v4 > 1)
  {
    p_name = (&XPCServer.Listener + 24);
LABEL_12:
    v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v10 = v12 & 1;
    goto LABEL_13;
  }

  if (v4)
  {
    p_name = &XPCServer.Listener.name;
    goto LABEL_12;
  }

  v10 = 1;
  p_name = (&XPCServer.Listener + 24);
LABEL_13:
  v13 = [objc_allocWithZone(NSNumber) p_name[347]];
  v14 = swift_isUniquelyReferenced_nonNull_native();
  sub_10007E6E4(v13, 0x73746961576D756ELL, 0xEF6465726F727245, v14);
  if (v4 <= 1 && v4)
  {

    v15 = 1;
  }

  else
  {
    v16 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v15 = v16 & 1;
  }

  v17 = [objc_allocWithZone(NSNumber) p_name[347]];
  v18 = swift_isUniquelyReferenced_nonNull_native();
  sub_10007E6E4(v17, 0xD000000000000010, 0x800000010008A0D0, v18);
  if (v4 == 2)
  {

    v19 = 1;
  }

  else
  {
    v20 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v19 = v20 & 1;
  }

  v21 = [objc_allocWithZone(NSNumber) p_name[347]];
  v22 = swift_isUniquelyReferenced_nonNull_native();
  sub_10007E6E4(v21, 0xD000000000000010, 0x800000010008A0F0, v22);
  if (v4 <= 1)
  {
    v5 = v30;
LABEL_24:
    v23 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v24 = v23 & 1;
    goto LABEL_25;
  }

  v5 = v30;
  if (v4 == 2)
  {
    goto LABEL_24;
  }

  v24 = 1;
LABEL_25:
  v25 = [objc_allocWithZone(NSNumber) p_name[347]];
  v26 = swift_isUniquelyReferenced_nonNull_native();
  sub_10007E6E4(v25, 0xD000000000000011, 0x800000010008A110, v26);
  v3 = v31;
LABEL_26:
  if ([v5 durationMilliseconds] >= 1 && ((1 << *(v5 + v3)) & 0xB) != 0)
  {
    v27 = [objc_allocWithZone(NSNumber) p_name[347]];
    v28 = swift_isUniquelyReferenced_nonNull_native();
    sub_10007E6E4(v27, 0xD000000000000014, 0x80000001000892C0, v28);
  }

  return v2;
}

unint64_t sub_10007B42C()
{
  result = qword_1000AC2D8;
  if (!qword_1000AC2D8)
  {
    sub_100003988(&qword_1000AC2E0, qword_100087DD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AC2D8);
  }

  return result;
}

unint64_t sub_10007B494()
{
  result = qword_1000AC2E8;
  if (!qword_1000AC2E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AC2E8);
  }

  return result;
}

unint64_t sub_10007B4E8(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  v4 = Hasher._finalize()();

  return sub_10007B8B8(a1, a2, v4);
}

unint64_t sub_10007B560(uint64_t a1)
{
  v2 = v1;
  v4 = AnyHashable._rawHashValue(seed:)(*(v2 + 40));

  return sub_10007B970(a1, v4);
}

unint64_t sub_10007B5A4(uint64_t a1)
{
  type metadata accessor for EventWriterScope();
  sub_100080DD4(&qword_1000AC370, 255, &type metadata accessor for EventWriterScope, &protocol conformance descriptor for EventWriterScope);
  v2 = dispatch thunk of Hashable._rawHashValue(seed:)();
  return sub_10007BAA4(a1, v2, &type metadata accessor for EventWriterScope, &qword_1000AC378, &type metadata accessor for EventWriterScope, &protocol conformance descriptor for EventWriterScope);
}

unint64_t sub_10007B67C(uint64_t a1)
{
  v1 = a1;
  v2 = static Hasher._hash(seed:bytes:count:)();

  return sub_10007BA38(v1, v2);
}

unint64_t sub_10007B6C4(uint64_t a1)
{
  type metadata accessor for UUID();
  sub_100080DD4(&unk_1000AC310, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v2 = dispatch thunk of Hashable._rawHashValue(seed:)();
  return sub_10007BAA4(a1, v2, &type metadata accessor for UUID, &qword_1000AB730, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
}

unint64_t sub_10007B79C(uint64_t a1)
{
  v2 = v1;
  v4 = NSObject._rawHashValue(seed:)(*(v2 + 40));

  return sub_10007BC48(a1, v4);
}

unint64_t sub_10007B7E0(uint64_t a1)
{
  type metadata accessor for Configuration.TargetCloudKitZone();
  sub_100080DD4(&qword_1000AB740, 255, &type metadata accessor for Configuration.TargetCloudKitZone, &protocol conformance descriptor for Configuration.TargetCloudKitZone);
  v2 = dispatch thunk of Hashable._rawHashValue(seed:)();
  return sub_10007BAA4(a1, v2, &type metadata accessor for Configuration.TargetCloudKitZone, &qword_1000AC340, &type metadata accessor for Configuration.TargetCloudKitZone, &protocol conformance descriptor for Configuration.TargetCloudKitZone);
}

unint64_t sub_10007B8B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (_stringCompareWithSmolCheck(_:_:expecting:)())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_10007B970(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      sub_100080E1C(*(v2 + 48) + 40 * v4, v8);
      v6 = static AnyHashable.== infix(_:_:)();
      sub_100080E78(v8);
      if (v6)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_10007BA38(int a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 4 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_10007BAA4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, uint64_t (*a5)(uint64_t), uint64_t a6)
{
  v24 = a5;
  v25 = a6;
  v23 = a4;
  v21[1] = a1;
  v8 = a3(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v21 - v10;
  v22 = v6;
  v12 = -1 << *(v6 + 32);
  v13 = a2 & ~v12;
  v21[0] = v6 + 64;
  if ((*(v6 + 64 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v14 = ~v12;
    v17 = *(v9 + 16);
    v16 = v9 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    do
    {
      v15(v11, *(v22 + 48) + v18 * v13, v8);
      sub_100080DD4(v23, 255, v24, v25);
      v19 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v16 - 8))(v11, v8);
      if (v19)
      {
        break;
      }

      v13 = (v13 + 1) & v14;
    }

    while (((*(v21[0] + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) != 0);
  }

  return v13;
}

unint64_t sub_10007BC48(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    sub_10000D544(0, &qword_1000AC3A0, CKRecordZoneID_ptr);
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = static NSObject.== infix(_:_:)();

      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

uint64_t sub_10007BD1C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for EventWriterScope();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  sub_10000CED0(&qword_1000AC368, &qword_100087F30);
  v39 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v11 = result;
  if (*(v9 + 16))
  {
    v43 = v8;
    v35 = v2;
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 64);
    v17 = (v14 + 63) >> 6;
    v36 = (v6 + 16);
    v37 = v9;
    v38 = v6;
    v40 = (v6 + 32);
    v18 = result + 64;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v23 = v20 | (v12 << 6);
      v24 = *(v9 + 48);
      v42 = *(v38 + 72);
      v25 = v24 + v42 * v23;
      if (v39)
      {
        (*v40)(v43, v25, v5);
        v41 = *(*(v9 + 56) + 8 * v23);
      }

      else
      {
        (*v36)(v43, v25, v5);
        v41 = *(*(v9 + 56) + 8 * v23);
      }

      sub_100080DD4(&qword_1000AC370, 255, &type metadata accessor for EventWriterScope, &protocol conformance descriptor for EventWriterScope);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v26 = -1 << *(v11 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v18 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v18 + 8 * v28);
          if (v32 != -1)
          {
            v19 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v27) & ~*(v18 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = (*v40)(*(v11 + 48) + v42 * v19, v43, v5);
      *(*(v11 + 56) + 8 * v19) = v41;
      ++*(v11 + 16);
      v9 = v37;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v22 = v13[v12];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_34;
    }

    v33 = 1 << *(v9 + 32);
    v3 = v35;
    if (v33 >= 64)
    {
      bzero(v13, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v33;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

uint64_t sub_10007C0FC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_10000CED0(&qword_1000AC3B8, &qword_100087F68);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v3;
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
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 4 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((v4 & 1) == 0)
      {
        swift_unknownObjectRetain();
      }

      result = static Hasher._hash(seed:bytes:count:)();
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 4 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v4 & 1) == 0)
    {

      v3 = v30;
      goto LABEL_33;
    }

    v29 = 1 << *(v5 + 32);
    v3 = v30;
    if (v29 >= 64)
    {
      bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

Swift::Int sub_10007C370(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_10000CED0(&qword_1000AC2F8, &qword_100087EE0);
  v35 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v34 = v5;
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
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v35 & 1) == 0)
      {

        v25 = v24;
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v26 = -1 << *(v7 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v34;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
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

    if ((v35 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v2;
    if (v33 >= 64)
    {
      bzero(v9, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_10007C614(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  sub_10000CED0(&qword_1000AC308, &qword_100087EF0);
  v39 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v11 = result;
  if (*(v9 + 16))
  {
    v43 = v8;
    v35 = v2;
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 64);
    v17 = (v14 + 63) >> 6;
    v36 = (v6 + 16);
    v37 = v9;
    v38 = v6;
    v40 = (v6 + 32);
    v18 = result + 64;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v23 = v20 | (v12 << 6);
      v24 = *(v9 + 48);
      v42 = *(v38 + 72);
      v25 = v24 + v42 * v23;
      if (v39)
      {
        (*v40)(v43, v25, v5);
        v41 = *(*(v9 + 56) + 8 * v23);
      }

      else
      {
        (*v36)(v43, v25, v5);
        v41 = *(*(v9 + 56) + 8 * v23);
        swift_errorRetain();
      }

      sub_100080DD4(&unk_1000AC310, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v26 = -1 << *(v11 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v18 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v18 + 8 * v28);
          if (v32 != -1)
          {
            v19 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v27) & ~*(v18 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = (*v40)(*(v11 + 48) + v42 * v19, v43, v5);
      *(*(v11 + 56) + 8 * v19) = v41;
      ++*(v11 + 16);
      v9 = v37;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v22 = v13[v12];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_34;
    }

    v33 = 1 << *(v9 + 32);
    v3 = v35;
    if (v33 >= 64)
    {
      bzero(v13, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v33;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

Swift::Int sub_10007C9F4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v40 = type metadata accessor for UUID();
  v5 = *(v40 - 8);
  __chkstk_darwin(v40);
  v39 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  sub_10000CED0(&qword_1000AC398, &qword_100087F48);
  v38 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v9 = result;
  if (*(v7 + 16))
  {
    v35 = v2;
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v36 = (v5 + 16);
    v37 = v5;
    v16 = (v5 + 32);
    v17 = result + 64;
    while (v14)
    {
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v22 = v19 | (v10 << 6);
      v23 = *(*(v7 + 48) + 8 * v22);
      v24 = *(v5 + 72);
      v25 = *(v7 + 56) + v24 * v22;
      if (v38)
      {
        (*v16)(v39, v25, v40);
      }

      else
      {
        (*v36)(v39, v25, v40);
        v26 = v23;
      }

      result = NSObject._rawHashValue(seed:)(*(v9 + 40));
      v27 = -1 << *(v9 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v17 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v17 + 8 * v29);
          if (v33 != -1)
          {
            v18 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v28) & ~*(v17 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      *(*(v9 + 48) + 8 * v18) = v23;
      result = (*v16)(*(v9 + 56) + v24 * v18, v39, v40);
      ++*(v9 + 16);
      v5 = v37;
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v10 >= v15)
      {
        break;
      }

      v21 = v11[v10];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v14 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_34;
    }

    v34 = 1 << *(v7 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      bzero((v7 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v34;
    }

    *(v7 + 16) = 0;
  }

LABEL_34:
  *v3 = v9;
  return result;
}

uint64_t sub_10007CD40(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  sub_10000CED0(&qword_1000AC328, &qword_100087F00);
  v39 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v11 = result;
  if (*(v9 + 16))
  {
    v43 = v8;
    v35 = v2;
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 64);
    v17 = (v14 + 63) >> 6;
    v36 = (v6 + 16);
    v37 = v9;
    v38 = v6;
    v40 = (v6 + 32);
    v18 = result + 64;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v23 = v20 | (v12 << 6);
      v24 = *(v9 + 48);
      v42 = *(v38 + 72);
      v25 = v24 + v42 * v23;
      if (v39)
      {
        (*v40)(v43, v25, v5);
        v41 = *(*(v9 + 56) + 8 * v23);
      }

      else
      {
        (*v36)(v43, v25, v5);
        v41 = *(*(v9 + 56) + 8 * v23);
        swift_errorRetain();
      }

      sub_100080DD4(&unk_1000AC310, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v26 = -1 << *(v11 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v18 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v18 + 8 * v28);
          if (v32 != -1)
          {
            v19 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v27) & ~*(v18 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = (*v40)(*(v11 + 48) + v42 * v19, v43, v5);
      *(*(v11 + 56) + 8 * v19) = v41;
      ++*(v11 + 16);
      v9 = v37;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v22 = v13[v12];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_34;
    }

    v33 = 1 << *(v9 + 32);
    v3 = v35;
    if (v33 >= 64)
    {
      bzero(v13, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v33;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

Swift::Int sub_10007D120(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_10000CED0(&unk_1000AC330, &qword_100087F08);
  v34 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v5;
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
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v34 & 1) == 0)
      {
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

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v33;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
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

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_10007D3DC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for Configuration.TargetCloudKitZone();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  sub_10000CED0(&qword_1000AC350, &qword_100087F18);
  v39 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v11 = result;
  if (*(v9 + 16))
  {
    v43 = v8;
    v35 = v2;
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 64);
    v17 = (v14 + 63) >> 6;
    v36 = (v6 + 16);
    v37 = v9;
    v38 = v6;
    v40 = (v6 + 32);
    v18 = result + 64;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v23 = v20 | (v12 << 6);
      v24 = *(v9 + 48);
      v42 = *(v38 + 72);
      v25 = v24 + v42 * v23;
      if (v39)
      {
        (*v40)(v43, v25, v5);
        v41 = *(*(v9 + 56) + 8 * v23);
      }

      else
      {
        (*v36)(v43, v25, v5);
        v41 = *(*(v9 + 56) + 8 * v23);
      }

      sub_100080DD4(&qword_1000AB740, 255, &type metadata accessor for Configuration.TargetCloudKitZone, &protocol conformance descriptor for Configuration.TargetCloudKitZone);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v26 = -1 << *(v11 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v18 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v18 + 8 * v28);
          if (v32 != -1)
          {
            v19 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v27) & ~*(v18 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = (*v40)(*(v11 + 48) + v42 * v19, v43, v5);
      *(*(v11 + 56) + 8 * v19) = v41;
      ++*(v11 + 16);
      v9 = v37;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v22 = v13[v12];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_34;
    }

    v33 = 1 << *(v9 + 32);
    v3 = v35;
    if (v33 >= 64)
    {
      bzero(v13, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v33;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

uint64_t sub_10007D7D0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v7 = v4;
  v8 = a2;
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v4;
  sub_10000CED0(a3, a4);
  v43 = v8;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v15 = result;
  if (*(v13 + 16))
  {
    v47 = v12;
    v39 = v4;
    v16 = 0;
    v17 = (v13 + 64);
    v18 = 1 << *(v13 + 32);
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    else
    {
      v19 = -1;
    }

    v20 = v19 & *(v13 + 64);
    v21 = (v18 + 63) >> 6;
    v40 = (v10 + 16);
    v41 = v13;
    v42 = v10;
    v44 = (v10 + 32);
    v22 = result + 64;
    while (v20)
    {
      v24 = __clz(__rbit64(v20));
      v20 &= v20 - 1;
LABEL_15:
      v27 = v24 | (v16 << 6);
      v28 = *(v13 + 48);
      v46 = *(v42 + 72);
      v29 = v28 + v46 * v27;
      if (v43)
      {
        (*v44)(v47, v29, v9);
        v45 = *(*(v13 + 56) + 8 * v27);
      }

      else
      {
        (*v40)(v47, v29, v9);
        v45 = *(*(v13 + 56) + 8 * v27);
      }

      sub_100080DD4(&unk_1000AC310, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v30 = -1 << *(v15 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v22 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v22 + 8 * v32);
          if (v36 != -1)
          {
            v23 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v23 = __clz(__rbit64((-1 << v31) & ~*(v22 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v22 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
      result = (*v44)(*(v15 + 48) + v46 * v23, v47, v9);
      *(*(v15 + 56) + 8 * v23) = v45;
      ++*(v15 + 16);
      v13 = v41;
    }

    v25 = v16;
    while (1)
    {
      v16 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v16 >= v21)
      {
        break;
      }

      v26 = v17[v16];
      ++v25;
      if (v26)
      {
        v24 = __clz(__rbit64(v26));
        v20 = (v26 - 1) & v26;
        goto LABEL_15;
      }
    }

    if ((v43 & 1) == 0)
    {

      v7 = v39;
      goto LABEL_34;
    }

    v37 = 1 << *(v13 + 32);
    v7 = v39;
    if (v37 >= 64)
    {
      bzero(v17, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v17 = -1 << v37;
    }

    *(v13 + 16) = 0;
  }

LABEL_34:
  *v7 = v15;
  return result;
}

uint64_t sub_10007DBB0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v52 = type metadata accessor for LubyRackoffEncryptionKey();
  v5 = *(v52 - 8);
  __chkstk_darwin(v52);
  v51 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v53 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_10000CED0(&qword_1000AC358, &qword_100087F20);
  v47 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v12 = result;
  if (*(v10 + 16))
  {
    v13 = 0;
    v14 = v8;
    v15 = (v10 + 64);
    v16 = 1 << *(v10 + 32);
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    else
    {
      v17 = -1;
    }

    v18 = v17 & *(v10 + 64);
    v19 = (v16 + 63) >> 6;
    v43 = (v14 + 16);
    v44 = v14;
    v41 = v2;
    v42 = v5 + 16;
    v45 = v10;
    v46 = v5;
    v48 = (v5 + 32);
    v49 = (v14 + 32);
    v20 = result + 64;
    v21 = v14;
    while (v18)
    {
      v23 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
LABEL_15:
      v26 = v23 | (v13 << 6);
      v27 = *(v10 + 48);
      v50 = *(v21 + 72);
      v28 = v27 + v50 * v26;
      if (v47)
      {
        (*v49)(v53, v28, v7);
        v29 = *(v10 + 56);
        v30 = *(v46 + 72);
        (*(v46 + 32))(v51, v29 + v30 * v26, v52);
      }

      else
      {
        (*v43)(v53, v28, v7);
        v31 = *(v10 + 56);
        v30 = *(v46 + 72);
        (*(v46 + 16))(v51, v31 + v30 * v26, v52);
      }

      sub_100080DD4(&unk_1000AC310, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v32 = -1 << *(v12 + 32);
      v33 = result & ~v32;
      v34 = v33 >> 6;
      if (((-1 << v33) & ~*(v20 + 8 * (v33 >> 6))) == 0)
      {
        v35 = 0;
        v36 = (63 - v32) >> 6;
        while (++v34 != v36 || (v35 & 1) == 0)
        {
          v37 = v34 == v36;
          if (v34 == v36)
          {
            v34 = 0;
          }

          v35 |= v37;
          v38 = *(v20 + 8 * v34);
          if (v38 != -1)
          {
            v22 = __clz(__rbit64(~v38)) + (v34 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v22 = __clz(__rbit64((-1 << v33) & ~*(v20 + 8 * (v33 >> 6)))) | v33 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v20 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      (*v49)((*(v12 + 48) + v50 * v22), v53, v7);
      result = (*v48)(*(v12 + 56) + v30 * v22, v51, v52);
      ++*(v12 + 16);
      v21 = v44;
      v10 = v45;
    }

    v24 = v13;
    while (1)
    {
      v13 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v13 >= v19)
      {
        break;
      }

      v25 = v15[v13];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v18 = (v25 - 1) & v25;
        goto LABEL_15;
      }
    }

    if ((v47 & 1) == 0)
    {

      v3 = v41;
      goto LABEL_34;
    }

    v39 = 1 << *(v10 + 32);
    v3 = v41;
    if (v39 >= 64)
    {
      bzero(v15, ((v39 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v15 = -1 << v39;
    }

    *(v10 + 16) = 0;
  }

LABEL_34:
  *v3 = v12;
  return result;
}

Swift::Int sub_10007E070(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_10000CED0(&qword_1000AC300, &qword_100087EE8);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v31 = v2;
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
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((v4 & 1) == 0)
      {
        v22 = v20;
        swift_errorRetain();
      }

      result = NSObject._rawHashValue(seed:)(*(v7 + 40));
      v23 = -1 << *(v7 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v14 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v14 + 8 * v25);
          if (v29 != -1)
          {
            v15 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v4 & 1) == 0)
    {

      v3 = v31;
      goto LABEL_33;
    }

    v30 = 1 << *(v5 + 32);
    v3 = v31;
    if (v30 >= 64)
    {
      bzero((v5 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v30;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_10007E2E0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_10000CED0(&qword_1000AC3B0, &unk_100087F58);
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
        sub_10004DBDC(v24, v34);
      }

      else
      {
        sub_10000CFA0(v24, v34);
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
      result = sub_10004DBDC(v34, (*(v7 + 56) + 32 * v15));
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

unint64_t sub_10007E598(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_10007B67C(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 < v14 || (a3 & 1) != 0)
    {
      sub_10007C0FC(v14, a3 & 1);
      result = sub_10007B67C(a2);
      if ((v15 & 1) != (v18 & 1))
      {
LABEL_16:
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }
    }

    else
    {
      v17 = result;
      sub_10007EEB0();
      result = v17;
    }
  }

  v19 = *v4;
  if ((v15 & 1) == 0)
  {
    v19[(result >> 6) + 8] |= 1 << result;
    *(v19[6] + 4 * result) = a2;
    *(v19[7] + 8 * result) = a1;
    v20 = v19[2];
    v13 = __OFADD__(v20, 1);
    v21 = v20 + 1;
    if (!v13)
    {
      v19[2] = v21;
      return result;
    }

    goto LABEL_15;
  }

  *(v19[7] + 8 * result) = a1;

  return swift_unknownObjectRelease();
}

void sub_10007E6E4(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_10007B4E8(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_10007C370(v16, a4 & 1);
      v11 = sub_10007B4E8(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
_objc_release_x1:
        _objc_release_x1();
        return;
      }
    }

    else
    {
      v19 = v11;
      sub_10007F00C();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a1;

    goto _objc_release_x1;
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v22 = (v21[6] + 16 * v11);
  *v22 = a2;
  v22[1] = a3;
  *(v21[7] + 8 * v11) = a1;
  v23 = v21[2];
  v15 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v24;
}

uint64_t sub_10007E85C(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_10007B6C4(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 < v17 || (a3 & 1) == 0)
  {
    if (v19 >= v17 && (a3 & 1) == 0)
    {
      sub_10007F178();
      goto LABEL_7;
    }

    sub_10007C614(v17, a3 & 1);
    v22 = sub_10007B6C4(a2);
    if ((v18 & 1) == (v23 & 1))
    {
      v14 = v22;
      v20 = *v4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v11, a2, v8);
      return sub_10007ED44(v14, v11, a1, v20);
    }

LABEL_15:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_7:
  v20 = *v4;
  if ((v18 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  *(v20[7] + 8 * v14) = a1;
}

uint64_t sub_10007EA28(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_10007B6C4(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 < v17 || (a3 & 1) == 0)
  {
    if (v19 >= v17 && (a3 & 1) == 0)
    {
      sub_10007F664();
      goto LABEL_7;
    }

    sub_10007CD40(v17, a3 & 1);
    v22 = sub_10007B6C4(a2);
    if ((v18 & 1) == (v23 & 1))
    {
      v14 = v22;
      v20 = *v4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v11, a2, v8);
      return sub_10007ED44(v14, v11, a1, v20);
    }

LABEL_15:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_7:
  v20 = *v4;
  if ((v18 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  *(v20[7] + 8 * v14) = a1;
}

void sub_10007EBF4(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_10007B4E8(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_1000802BC();
      v11 = v19;
      goto LABEL_8;
    }

    sub_10007E2E0(v16, a4 & 1);
    v11 = sub_10007B4E8(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    v22 = (v21[7] + 32 * v11);
    sub_10000D330(v22);

    sub_10004DBDC(a1, v22);
  }

  else
  {
    sub_10007EE44(v11, a2, a3, a1, v21);
  }
}

uint64_t sub_10007ED44(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = type metadata accessor for UUID();
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  *(a4[7] + 8 * a1) = a3;
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

unint64_t sub_10007EDFC(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  *(a5[7] + 8 * result) = a4;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

_OWORD *sub_10007EE44(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_10004DBDC(a4, (a5[7] + 32 * a1));
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

void *sub_10007EEB0()
{
  v1 = v0;
  sub_10000CED0(&qword_1000AC3B8, &qword_100087F68);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 4 * v17) = *(*(v2 + 48) + 4 * v17);
        *(*(v4 + 56) + 8 * v17) = v18;
        result = swift_unknownObjectRetain();
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

id sub_10007F00C()
{
  v1 = v0;
  sub_10000CED0(&qword_1000AC2F8, &qword_100087EE0);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;

        result = v20;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

char *sub_10007F178()
{
  v1 = v0;
  v33 = type metadata accessor for UUID();
  v35 = *(v33 - 8);
  __chkstk_darwin(v33);
  v32 = &v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000CED0(&qword_1000AC308, &qword_100087EF0);
  v3 = *v0;
  v4 = static _DictionaryStorage.copy(original:)();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = (v3 + 64);
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    v28 = v1;
    v29 = v3 + 64;
    if (v5 != v3 || result >= &v7[8 * v8])
    {
      result = memmove(result, v7, 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v34 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v30 = v35 + 32;
    v31 = v35 + 16;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v36 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = v35;
        v20 = *(v35 + 72) * v18;
        v22 = v32;
        v21 = v33;
        (*(v35 + 16))(v32, *(v3 + 48) + v20, v33);
        v23 = *(*(v3 + 56) + 8 * v18);
        v24 = v3;
        v25 = v34;
        (*(v19 + 32))(*(v34 + 48) + v20, v22, v21);
        v26 = *(v25 + 56);
        v3 = v24;
        *(v26 + 8 * v18) = v23;
        result = swift_errorRetain();
        v13 = v36;
      }

      while (v36);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v1 = v28;
        v5 = v34;
        goto LABEL_18;
      }

      v17 = *(v29 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v36 = (v17 - 1) & v17;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v5;
  }

  return result;
}

id sub_10007F3F8()
{
  v1 = v0;
  v29 = type metadata accessor for UUID();
  v31 = *(v29 - 8);
  __chkstk_darwin(v29);
  v28 = v26 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000CED0(&qword_1000AC398, &qword_100087F48);
  v3 = *v0;
  v4 = static _DictionaryStorage.copy(original:)();
  v5 = v4;
  if (*(v3 + 16))
  {
    v26[0] = v1;
    result = (v4 + 64);
    v7 = v3 + 64;
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || result >= v7 + 8 * v8)
    {
      result = memmove(result, (v3 + 64), 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v30 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v26[1] = v31 + 32;
    v26[2] = v31 + 16;
    for (i = v3; v13; v3 = i)
    {
      v15 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_14:
      v18 = v15 | (v9 << 6);
      v19 = *(v3 + 56);
      v20 = *(*(v3 + 48) + 8 * v18);
      v21 = v31;
      v22 = *(v31 + 72) * v18;
      v24 = v28;
      v23 = v29;
      (*(v31 + 16))(v28, v19 + v22, v29);
      v25 = v30;
      *(*(v30 + 48) + 8 * v18) = v20;
      (*(v21 + 32))(*(v25 + 56) + v22, v24, v23);
      result = v20;
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v1 = v26[0];
        v5 = v30;
        goto LABEL_18;
      }

      v17 = *(v7 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v13 = (v17 - 1) & v17;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v5;
  }

  return result;
}

char *sub_10007F664()
{
  v1 = v0;
  v33 = type metadata accessor for UUID();
  v35 = *(v33 - 8);
  __chkstk_darwin(v33);
  v32 = &v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000CED0(&qword_1000AC328, &qword_100087F00);
  v3 = *v0;
  v4 = static _DictionaryStorage.copy(original:)();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = (v3 + 64);
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    v28 = v1;
    v29 = v3 + 64;
    if (v5 != v3 || result >= &v7[8 * v8])
    {
      result = memmove(result, v7, 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v34 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v30 = v35 + 32;
    v31 = v35 + 16;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v36 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = v35;
        v20 = *(v35 + 72) * v18;
        v22 = v32;
        v21 = v33;
        (*(v35 + 16))(v32, *(v3 + 48) + v20, v33);
        v23 = *(*(v3 + 56) + 8 * v18);
        v24 = v3;
        v25 = v34;
        (*(v19 + 32))(*(v34 + 48) + v20, v22, v21);
        v26 = *(v25 + 56);
        v3 = v24;
        *(v26 + 8 * v18) = v23;
        result = swift_errorRetain();
        v13 = v36;
      }

      while (v36);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v1 = v28;
        v5 = v34;
        goto LABEL_18;
      }

      v17 = *(v29 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v36 = (v17 - 1) & v17;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v5;
  }

  return result;
}

void sub_10007F8E4()
{
  v1 = v0;
  sub_10000CED0(&unk_1000AC330, &qword_100087F08);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }
}

char *sub_10007FA68()
{
  v1 = v0;
  v31 = type metadata accessor for Configuration.TargetCloudKitZone();
  v33 = *(v31 - 8);
  __chkstk_darwin(v31);
  v30 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000CED0(&qword_1000AC350, &qword_100087F18);
  v3 = *v0;
  v4 = static _DictionaryStorage.copy(original:)();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = (v3 + 64);
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    v26 = v1;
    v27 = v3 + 64;
    if (v5 != v3 || result >= &v7[8 * v8])
    {
      result = memmove(result, v7, 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v32 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v28 = v33 + 32;
    v29 = v33 + 16;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v34 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = v33;
        v20 = *(v33 + 72) * v18;
        v22 = v30;
        v21 = v31;
        (*(v33 + 16))(v30, *(v3 + 48) + v20, v31);
        v23 = *(*(v3 + 56) + 8 * v18);
        v24 = v32;
        (*(v19 + 32))(*(v32 + 48) + v20, v22, v21);
        *(*(v24 + 56) + 8 * v18) = v23;
        result = v23;
        v13 = v34;
      }

      while (v34);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v1 = v26;
        v5 = v32;
        goto LABEL_18;
      }

      v17 = *(v27 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v34 = (v17 - 1) & v17;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v5;
  }

  return result;
}

void sub_10007FCF0(uint64_t *a1, uint64_t *a2)
{
  v5 = v2;
  v35 = type metadata accessor for UUID();
  v37 = *(v35 - 8);
  __chkstk_darwin(v35);
  v34 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000CED0(a1, a2);
  v7 = *v2;
  v8 = static _DictionaryStorage.copy(original:)();
  v9 = v8;
  if (*(v7 + 16))
  {
    v10 = (v8 + 64);
    v11 = ((1 << *(v9 + 32)) + 63) >> 6;
    v30 = v5;
    v31 = (v7 + 64);
    if (v9 != v7 || v10 >= v7 + 64 + 8 * v11)
    {
      memmove(v10, v31, 8 * v11);
    }

    v13 = 0;
    v14 = *(v7 + 16);
    v36 = v9;
    *(v9 + 16) = v14;
    v15 = 1 << *(v7 + 32);
    v16 = -1;
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    v17 = v16 & *(v7 + 64);
    v18 = (v15 + 63) >> 6;
    v32 = v37 + 32;
    v33 = v37 + 16;
    if (v17)
    {
      do
      {
        v19 = __clz(__rbit64(v17));
        v38 = (v17 - 1) & v17;
LABEL_17:
        v22 = v19 | (v13 << 6);
        v23 = v37;
        v24 = *(v37 + 72) * v22;
        v26 = v34;
        v25 = v35;
        (*(v37 + 16))(v34, *(v7 + 48) + v24, v35);
        v27 = *(*(v7 + 56) + 8 * v22);
        v28 = v36;
        (*(v23 + 32))(*(v36 + 48) + v24, v26, v25);
        *(*(v28 + 56) + 8 * v22) = v27;

        v17 = v38;
      }

      while (v38);
    }

    v20 = v13;
    while (1)
    {
      v13 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v13 >= v18)
      {

        v5 = v30;
        v9 = v36;
        goto LABEL_21;
      }

      v21 = *(v31 + v13);
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v38 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v5 = v9;
  }
}

char *sub_10007FF68()
{
  v1 = v0;
  v41 = type metadata accessor for LubyRackoffEncryptionKey();
  v44 = *(v41 - 8);
  __chkstk_darwin(v41);
  v40 = &v30 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = type metadata accessor for UUID();
  v43 = *(v39 - 8);
  __chkstk_darwin(v39);
  v38 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000CED0(&qword_1000AC358, &qword_100087F20);
  v4 = *v0;
  v5 = static _DictionaryStorage.copy(original:)();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = (v4 + 64);
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    v30 = v1;
    v31 = v4 + 64;
    if (v6 != v4 || result >= &v8[8 * v9])
    {
      result = memmove(result, v8, 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v42 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    v35 = v43 + 16;
    v36 = v15;
    v33 = v43 + 32;
    v34 = v44 + 16;
    v32 = v44 + 32;
    v37 = v4;
    v17 = v38;
    v16 = v39;
    if (v14)
    {
      do
      {
        v18 = __clz(__rbit64(v14));
        v45 = (v14 - 1) & v14;
LABEL_14:
        v21 = v18 | (v10 << 6);
        v22 = v43;
        v23 = *(v43 + 72) * v21;
        (*(v43 + 16))(v17, *(v4 + 48) + v23, v16);
        v24 = v44;
        v25 = *(v44 + 72) * v21;
        v26 = v40;
        v27 = v41;
        (*(v44 + 16))(v40, *(v4 + 56) + v25, v41);
        v28 = v42;
        (*(v22 + 32))(*(v42 + 48) + v23, v17, v16);
        v29 = *(v28 + 56);
        v4 = v37;
        result = (*(v24 + 32))(v29 + v25, v26, v27);
        v15 = v36;
        v14 = v45;
      }

      while (v45);
    }

    v19 = v10;
    while (1)
    {
      v10 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v10 >= v15)
      {

        v1 = v30;
        v6 = v42;
        goto LABEL_18;
      }

      v20 = *(v31 + 8 * v10);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v45 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }

  return result;
}

void sub_1000802BC()
{
  v1 = v0;
  sub_10000CED0(&qword_1000AC3B0, &unk_100087F58);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 32 * v17;
        sub_10000CFA0(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_10004DBDC(v25, (*(v4 + 56) + v22));
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {

        v1 = v24;
        goto LABEL_21;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v1 = v4;
  }
}

unint64_t sub_100080460(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10000CED0(&qword_1000AC3B0, &unk_100087F58);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_100013358(v4, &v13, &unk_1000AC3D0, &unk_100087F80);
      v5 = v13;
      v6 = v14;
      result = sub_10007B4E8(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_10004DBDC(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_100080590(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10000CED0(&unk_1000AC3C0, &unk_100087F70);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_100013358(v4, v13, &qword_1000AAD90, &qword_100085580);
      result = sub_10007B560(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = sub_10004DBDC(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_1000806CC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10000CED0(&qword_1000AC2F8, &qword_100087EE0);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_10007B4E8(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      *(v3[7] + 8 * result) = v8;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_1000807D0(uint64_t a1)
{
  v2 = sub_10000CED0(&qword_1000AC3A8, &qword_100087F50);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_10000CED0(&qword_1000AC308, &qword_100087EF0);
    v7 = static _DictionaryStorage.allocate(capacity:)();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_100013358(v9, v5, &qword_1000AC3A8, &qword_100087F50);
      result = sub_10007B6C4(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = type metadata accessor for UUID();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      *(v7[7] + 8 * v13) = *&v5[v8];
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_1000809B8(uint64_t a1)
{
  v2 = sub_10000CED0(&qword_1000ABF38, &qword_100087F40);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_10000CED0(&qword_1000AC368, &qword_100087F30);
    v7 = static _DictionaryStorage.allocate(capacity:)();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_100013358(v9, v5, &qword_1000ABF38, &qword_100087F40);
      result = sub_10007B5A4(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = type metadata accessor for EventWriterScope();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      *(v7[7] + 8 * v13) = *&v5[v8];
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_100080BA0(uint64_t a1)
{
  v2 = sub_10000CED0(&qword_1000AC320, &qword_100087EF8);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_10000CED0(&qword_1000AC328, &qword_100087F00);
    v7 = static _DictionaryStorage.allocate(capacity:)();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_100013358(v9, v5, &qword_1000AC320, &qword_100087EF8);
      result = sub_10007B6C4(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = type metadata accessor for UUID();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      *(v7[7] + 8 * v13) = *&v5[v8];
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_100080D88(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1000A1C70, v2);

  if (v3 >= 4)
  {
    return 4;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_100080DD4(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100080ECC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_10000CED0(&qword_1000AAD30, &qword_100085540);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  sub_10001DA7C(a3, v25 - v10);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_100021CAC(v11);
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

      sub_100021CAC(a3);

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

  sub_100021CAC(a3);
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

uint64_t sub_10008118C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10000D130;

  return sub_10000649C();
}

id sub_10008135C(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for AccountChangedListener();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_1000813C4()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100081404()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10000D130;

  return sub_10008118C();
}

uint64_t sub_1000814B8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10001DBDC;

  return sub_100022048(a1, v4);
}

uint64_t sub_100081570()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000815A8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10000D130;

  return sub_100022048(a1, v4);
}

uint64_t sub_100081664(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  v8 = type metadata accessor for Logger();
  v7[6] = v8;
  v7[7] = *(v8 - 8);
  v7[8] = swift_task_alloc();
  v7[9] = swift_task_alloc();

  return _swift_task_switch(sub_100081734, 0, 0);
}

uint64_t sub_100081734()
{
  v0[10] = type metadata accessor for XPCServer();
  v0[11] = sub_10000E874();
  static LoggedObject.logger.getter();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "Resetting configuration", v3, 2u);
  }

  v4 = v0[9];
  v5 = v0[6];
  v6 = v0[7];
  v7 = v0[2];

  v8 = *(v6 + 8);
  v0[12] = v8;
  v8(v4, v5);

  return _swift_task_switch(sub_100081868, v7, 0);
}

uint64_t sub_100081868()
{
  sub_100009388();
  v0[13] = 0;
  v1 = swift_task_alloc();
  v0[14] = v1;
  *v1 = v0;
  v1[1] = sub_10008196C;
  v2 = v0[5];

  return sub_10001C164(0, 1, v2);
}

uint64_t sub_10008196C()
{
  *(*v1 + 120) = v0;

  if (v0)
  {
    v2 = sub_100081B9C;
  }

  else
  {
    v2 = sub_100081A80;
  }

  return _swift_task_switch(v2, 0, 0);
}

void sub_100081A80()
{
  (*(v0 + 24))(0);
  static LoggedObject.logger.getter();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "Restarting", v3, 2u);
  }

  v4 = *(v0 + 96);
  v5 = *(v0 + 64);
  v6 = *(v0 + 48);

  v4(v5, v6);

  sub_1000095B0();
}

void sub_100081B9C()
{

  (*(v0 + 24))(0);
  static LoggedObject.logger.getter();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "Restarting", v3, 2u);
  }

  v4 = *(v0 + 96);
  v5 = *(v0 + 64);
  v6 = *(v0 + 48);

  v4(v5, v6);

  sub_1000095B0();
}

uint64_t sub_100081CC0()
{
  v1 = v0[13];
  v2 = v0[3];
  swift_errorRetain();
  v2(v1);

  v3 = v0[1];

  return v3();
}

void *sub_100081D68(uint64_t a1)
{
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for PendingEventData(0) - 8;
  v7 = __chkstk_darwin(v6);
  v9 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v50 = &v39 - v11;
  v12 = &_swiftEmptyDictionarySingleton;
  v51 = &_swiftEmptyDictionarySingleton;
  v13 = *(a1 + 16);
  if (!v13)
  {
    return v12;
  }

  v43 = *(v10 + 80);
  v14 = v3;
  v15 = *(v10 + 72);
  v16 = a1 + ((v43 + 32) & ~v43);
  v48 = (v43 + 32) & ~v43;
  v49 = (v14 + 16);
  v41 = (v14 + 8);
  v42 = v14 + 32;
  v40 = xmmword_100085330;
  v44 = v9;
  v45 = v14;
  v46 = v2;
  v47 = v15;
  while (1)
  {
    v19 = v50;
    sub_100037660(v16, v50);
    (*v49)(v5, v19, v2);
    v21 = sub_10007B6C4(v5);
    v22 = v12[2];
    v23 = (v20 & 1) == 0;
    v24 = v22 + v23;
    if (__OFADD__(v22, v23))
    {
      break;
    }

    v25 = v20;
    if (v12[3] < v24)
    {
      sub_10007E05C(v24, 1);
      v12 = v51;
      v26 = sub_10007B6C4(v5);
      if ((v25 & 1) != (v27 & 1))
      {
        goto LABEL_19;
      }

      v21 = v26;
    }

    if (v25)
    {
      (*v41)(v5, v2);
      v28 = v12[7];
      sub_10003FB74(v50, v9);
      v29 = *(v28 + 8 * v21);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v28 + 8 * v21) = v29;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v29 = sub_1000226FC(0, v29[2] + 1, 1, v29);
        *(v28 + 8 * v21) = v29;
      }

      v32 = v29[2];
      v31 = v29[3];
      if (v32 >= v31 >> 1)
      {
        v29 = sub_1000226FC((v31 > 1), v32 + 1, 1, v29);
        *(v28 + 8 * v21) = v29;
      }

      v29[2] = v32 + 1;
      v2 = v46;
      v17 = v47;
      v18 = v29 + v48 + v32 * v47;
      v9 = v44;
      sub_10003FB74(v44, v18);
    }

    else
    {
      sub_10000CED0(&qword_1000AB460, &qword_1000866B8);
      v33 = v48;
      v34 = swift_allocObject();
      *(v34 + 16) = v40;
      sub_10003FB74(v50, v34 + v33);
      v12[(v21 >> 6) + 8] |= 1 << v21;
      (*(v45 + 32))(v12[6] + *(v45 + 72) * v21, v5, v2);
      *(v12[7] + 8 * v21) = v34;
      v35 = v12[2];
      v36 = __OFADD__(v35, 1);
      v37 = v35 + 1;
      if (v36)
      {
        goto LABEL_18;
      }

      v12[2] = v37;
      v17 = v47;
    }

    v16 += v17;
    if (!--v13)
    {
      return v12;
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_100082138(uint64_t a1)
{
  v1[2] = a1;
  v2 = type metadata accessor for PendingEventData(0);
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  v3 = type metadata accessor for UUID();
  v1[6] = v3;
  v1[7] = *(v3 - 8);
  v1[8] = swift_task_alloc();

  return _swift_task_switch(sub_100082254, 0, 0);
}

uint64_t sub_100082254()
{
  sub_10000D224(*(v0 + 16), *(*(v0 + 16) + 24));
  v1 = swift_task_alloc();
  *(v0 + 72) = v1;
  *v1 = v0;
  v1[1] = sub_1000822F4;

  return sub_1000757D4(0x7FFFFFFFFFFFFFFFLL);
}

uint64_t sub_1000822F4(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;
  *(*v2 + 80) = v1;

  if (v1)
  {

    v6 = *(v5 + 8);

    return v6();
  }

  else
  {
    *(v4 + 88) = a1;

    return _swift_task_switch(sub_100082458, 0, 0);
  }
}

uint64_t sub_100082458()
{
  v1 = v0[7];
  v32 = v0[3];
  v33 = v0[4];
  v2 = sub_100081D68(v0[11]);

  sub_10000CED0(&qword_1000AC410, &qword_100087FE8);
  result = static _DictionaryStorage.copy(original:)();
  v4 = result;
  v5 = 0;
  v7 = v2 + 8;
  v6 = v2[8];
  v34 = v1;
  v35 = v2;
  v8 = 1 << *(v2 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & v6;
  v11 = (v8 + 63) >> 6;
  v30 = (v1 + 32);
  v31 = result + 64;
  if ((v9 & v6) != 0)
  {
    while (1)
    {
      v12 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_10:
      v15 = v12 | (v5 << 6);
      v16 = *(v34 + 72) * v15;
      result = (*(v34 + 16))(v0[8], v35[6] + v16, v0[6]);
      v17 = *(v35[7] + 8 * v15);
      if (*(v17 + 16) != 1)
      {
        break;
      }

      v36 = v0[6];
      v37 = v0[8];
      v18 = v4;
      v19 = v0[5];
      sub_100037660(v17 + ((*(v33 + 80) + 32) & ~*(v33 + 80)), v19);
      sub_10000CED0(&qword_1000AB7F8, &qword_100086C18);
      v20 = swift_allocObject();
      *(v20 + 16) = xmmword_100085F30;
      v21 = *(v19 + *(v32 + 28));
      *(v20 + 56) = &type metadata for Int64;
      *(v20 + 32) = v21;
      v22 = (v19 + *(v32 + 32));
      v23 = *v22;
      v24 = v22[1];
      *(v20 + 88) = &type metadata for Data;
      *(v20 + 64) = v23;
      *(v20 + 72) = v24;
      sub_10003F994(v23, v24);
      v25 = v19;
      v4 = v18;
      sub_1000376C4(v25);
      *(v31 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      result = (*v30)(v18[6] + v16, v37, v36);
      *(v18[7] + 8 * v15) = v20;
      v26 = v18[2];
      v27 = __OFADD__(v26, 1);
      v28 = v26 + 1;
      if (v27)
      {
        goto LABEL_19;
      }

      v18[2] = v28;
      if (!v10)
      {
        goto LABEL_5;
      }
    }

LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
  }

  else
  {
LABEL_5:
    v13 = v5;
    while (1)
    {
      v5 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        __break(1u);
        goto LABEL_18;
      }

      if (v5 >= v11)
      {
        break;
      }

      v14 = v7[v5];
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v10 = (v14 - 1) & v14;
        goto LABEL_10;
      }
    }

    v29 = v0[1];

    return v29(v4);
  }

  return result;
}

uint64_t sub_100082738()
{
  v1[2] = v0;
  v1[3] = *v0;
  v2 = type metadata accessor for Logger();
  v1[4] = v2;
  v1[5] = *(v2 - 8);
  v1[6] = swift_task_alloc();
  v1[7] = swift_task_alloc();
  v3 = type metadata accessor for URL();
  v1[8] = v3;
  v1[9] = *(v3 - 8);
  v1[10] = swift_task_alloc();
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();

  return _swift_task_switch(sub_1000828A0, v0, 0);
}

uint64_t sub_1000828A0()
{
  v30 = v0;
  v2 = v0[11];
  v1 = v0[12];
  v4 = v0[8];
  v3 = v0[9];
  _s15DefaultDelegateC13ConfigurationVMa(0);
  URL.deletingLastPathComponent()();
  sub_10000F2E8(&qword_1000AAFE0, &unk_100087200);
  sub_10000F2E8(&qword_1000AAFE8, &unk_100087240);
  static LoggedObject<>.logger.getter();
  (*(v3 + 16))(v2, v1, v4);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.info.getter();
  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[11];
  v10 = v0[8];
  v9 = v0[9];
  v11 = v0[7];
  v12 = v0[4];
  v13 = v0[5];
  if (v7)
  {
    v14 = swift_slowAlloc();
    v28 = v11;
    v15 = swift_slowAlloc();
    v29 = v15;
    *v14 = 136315138;
    v26 = v6;
    v16 = URL.path.getter();
    v27 = v12;
    v18 = v17;
    v19 = v10;
    v20 = *(v9 + 8);
    v20(v8, v19);
    v21 = sub_100035120(v16, v18, &v29);

    *(v14 + 4) = v21;
    _os_log_impl(&_mh_execute_header, v5, v26, "Removing '%s'", v14, 0xCu);
    sub_10000D330(v15);

    (*(v13 + 8))(v28, v27);
  }

  else
  {

    v22 = v10;
    v20 = *(v9 + 8);
    v20(v8, v22);
    (*(v13 + 8))(v11, v12);
  }

  v23 = [objc_opt_self() defaultManager];
  sub_100065740();
  v20(v0[12], v0[8]);

  v24 = v0[1];

  return v24();
}

uint64_t sub_100082E00()
{
  v1 = String._bridgeToObjectiveC()();
  [v0 willAccessValueForKey:v1];

  v2 = [v0 primitiveDatabase];
  if (v2)
  {
    v3 = v2;
    v4 = [v2 shortValue];

    if (v4 + 1 <= 2)
    {
      v5 = 0x10002u >> (8 * (v4 + 1));
    }

    else
    {
      v5 = 2;
    }
  }

  else
  {
    v5 = 0;
  }

  v6 = String._bridgeToObjectiveC()();
  [v0 didAccessValueForKey:v6];

  return v5;
}

void sub_100082EE4(uint64_t a1)
{
  v3 = String._bridgeToObjectiveC()();
  [v1 willChangeValueForKey:v3];

  if (*(a1 + 16))
  {
    v4.super.isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v4.super.isa = 0;
  }

  [v1 setPrimitiveUnencryptedTags:v4.super.isa];

  v5 = String._bridgeToObjectiveC()();
  [v1 didChangeValueForKey:v5];
}

id sub_100083038(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for PendingUploadEvent();
  return objc_msgSendSuper2(&v3, "dealloc");
}

Swift::String __swiftcall String.lowercased()()
{
  v0 = String.lowercased()();
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

uint64_t String.subscript.getter()
{
  return String.subscript.getter();
}

{
  return String.subscript.getter();
}