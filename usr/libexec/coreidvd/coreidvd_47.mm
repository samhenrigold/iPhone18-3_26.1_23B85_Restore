unint64_t sub_100540128(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6, int a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char *a25, uint64_t a26)
{
  v171 = a8;
  v148 = a7;
  v153 = a5;
  v154 = a6;
  v151 = a3;
  v152 = a4;
  v149 = a1;
  v150 = a2;
  v26 = type metadata accessor for DispatchWorkItemFlags();
  v164 = *(v26 - 8);
  v165 = v26;
  __chkstk_darwin(v26);
  v162 = &v146 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v163 = type metadata accessor for DispatchQoS();
  v161 = *(v163 - 8);
  __chkstk_darwin(v163);
  v160 = &v146 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = type metadata accessor for Logger();
  v30 = *(v29 - 8);
  v172 = v29;
  v173 = v30;
  v31 = __chkstk_darwin(v29);
  v157 = &v146 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = __chkstk_darwin(v31);
  v156 = &v146 - v34;
  v35 = __chkstk_darwin(v33);
  v155 = &v146 - v36;
  v37 = __chkstk_darwin(v35);
  v166 = &v146 - v38;
  __chkstk_darwin(v37);
  v40 = &v146 - v39;
  v41 = type metadata accessor for DispatchTime();
  v42 = *(v41 - 8);
  __chkstk_darwin(v41);
  v44 = &v146 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45.value._countAndFlagsBits = a10;
  v45.value._object = a11;
  DIPSignpost.end(workflowID:isBackground:)(v45, (a12 == 9));
  v46 = *(a15 + 32);
  v47 = swift_allocObject();
  *(v47 + 16) = sub_100545778;
  *(v47 + 24) = a15;
  v181 = sub_10021E8E8;
  v182 = v47;
  aBlock = _NSConcreteStackBlock;
  v178 = 1107296256;
  v179 = sub_10057E264;
  v180 = &unk_100816560;
  v48 = _Block_copy(&aBlock);
  v49 = v46;

  dispatch_sync(v49, v48);

  _Block_release(v48);
  LOBYTE(v48) = swift_isEscapingClosureAtFileLocation();
  v159 = a15;

  if (v48)
  {
    __break(1u);
  }

  else
  {
    static DispatchTime.now()();
    v51 = DispatchTime.uptimeNanoseconds.getter();
    (*(v42 + 8))(v44, v41);
    result = DispatchTime.uptimeNanoseconds.getter();
    if (v51 >= result)
    {
      v52 = a23;
      v175 = a22;
      v53 = a21;
      v174 = a20;
      v170 = a19;
      v169 = a14;
      v168 = a13;
      v54 = (v51 - result) / 1000000000.0;
      swift_beginAccess();
      *(a16 + 16) = v54;
      v55 = v171;
      v158 = a16;
      v167 = a21;
      if (v171)
      {
        swift_beginAccess();
        *(a18 + 16) = v55;
        swift_errorRetain();
        swift_errorRetain();

        defaultLogger()();
        swift_errorRetain();
        v56 = Logger.logObject.getter();
        v57 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v56, v57))
        {
          v58 = v55;
          v59 = swift_slowAlloc();
          v60 = swift_slowAlloc();
          v147 = a23;
          v61 = v60;
          aBlock = v60;
          *v59 = 134349314;
          v62 = _convertErrorToNSError(_:)();
          v63 = [v62 code];

          *(v59 + 4) = v63;

          *(v59 + 12) = 2082;
          swift_getErrorValue();
          v64 = Error.localizedDescription.getter();
          v66 = sub_100141FE4(v64, v65, &aBlock);

          *(v59 + 14) = v66;
          _os_log_impl(&_mh_execute_header, v56, v57, "error retrieving ODIN data. %{public}ld - %{public}s", v59, 0x16u);
          sub_10000BB78(v61);
          v52 = v147;

          v55 = v58;
        }

        else
        {
        }

        (*(v173 + 8))(v40, v172);
        if (!v52)
        {
          goto LABEL_11;
        }
      }

      else
      {
        v147 = a23;
        v67 = v170;
        swift_beginAccess();
        *(v67 + 16) = v148;
        v68 = v174;
        swift_beginAccess();
        v69 = *(v68 + 16);
        v70 = *(v68 + 24);
        v71 = v149;
        v72 = v150;
        *(v68 + 16) = v149;
        *(v68 + 24) = v72;
        sub_1000363B4(v71, v72);
        sub_10000BD94(v69, v70);
        swift_beginAccess();
        v73 = *(a21 + 16);
        v74 = *(a21 + 24);
        v75 = v151;
        v76 = v152;
        *(a21 + 16) = v151;
        *(a21 + 24) = v76;
        sub_1000363B4(v75, v76);
        sub_10000BD94(v73, v74);
        v77 = v175;
        swift_beginAccess();
        v78 = *(v77 + 16);
        v79 = *(v77 + 24);
        v80 = v153;
        v81 = v154;
        *(v77 + 16) = v153;
        *(v77 + 24) = v81;
        sub_1000363B4(v80, v81);
        sub_10000BD94(v78, v79);
        defaultLogger()();

        sub_10000CCA8();
        sub_10000CCA8();
        v82 = Logger.logObject.getter();
        v83 = static os_log_type_t.debug.getter();

        v84 = os_log_type_enabled(v82, v83);
        v85 = v173;
        if (v84)
        {
          v86 = swift_slowAlloc();
          *v86 = 67109632;
          v87 = v170;
          swift_beginAccess();
          *(v86 + 4) = *(v87 + 16);

          *(v86 + 8) = 1040;
          *(v86 + 10) = 3;
          *(v86 + 14) = 2048;
          swift_beginAccess();
          *(v86 + 16) = *(a16 + 16);
          _os_log_impl(&_mh_execute_header, v82, v83, "ODIN returned index %u, after %.*f seconds", v86, 0x18u);
        }

        else
        {
        }

        v99 = v155;
        v100 = *(v85 + 8);
        v101 = v172;
        (v100)(v166, v172);
        defaultLogger()();

        v102 = Logger.logObject.getter();
        v103 = static os_log_type_t.debug.getter();

        v104 = v103;
        v105 = v103;
        v106 = v102;
        v107 = os_log_type_enabled(v102, v105);
        v173 = v85 + 8;
        v166 = v100;
        if (v107)
        {
          v108 = swift_slowAlloc();
          v109 = swift_slowAlloc();
          aBlock = v109;
          *v108 = 136315138;
          v110 = v174;
          swift_beginAccess();
          v111 = *(v110 + 24);
          if (v111 >> 60 == 15)
          {
            object = 0xE300000000000000;
            countAndFlagsBits = 7104878;
          }

          else
          {
            v115 = *(v174 + 16);
            sub_10000B8B8(v115, *(v110 + 24));
            v116 = Data.base16EncodedString()();
            countAndFlagsBits = v116._countAndFlagsBits;
            object = v116._object;
            sub_10000BD94(v115, v111);
          }

          v117 = v167;
          v118 = sub_100141FE4(countAndFlagsBits, object, &aBlock);

          *(v108 + 4) = v118;
          _os_log_impl(&_mh_execute_header, v106, v104, " tdata   %s", v108, 0xCu);
          sub_10000BB78(v109);

          v101 = v172;
          v119 = v166;
          (v166)(v155, v172);
          v55 = v171;
          v114 = v156;
          v53 = v117;
          v100 = v119;
        }

        else
        {

          (v100)(v99, v101);
          v114 = v156;
        }

        defaultLogger()();

        v120 = Logger.logObject.getter();
        v121 = static os_log_type_t.debug.getter();

        if (os_log_type_enabled(v120, v121))
        {
          v122 = v55;
          v123 = v53;
          v124 = swift_slowAlloc();
          v125 = swift_slowAlloc();
          aBlock = v125;
          *v124 = 136315138;
          swift_beginAccess();
          v126 = *(v123 + 24);
          if (v126 >> 60 == 15)
          {
            v127 = 0xE300000000000000;
            v128 = 7104878;
          }

          else
          {
            v130 = *(v123 + 16);
            sub_10000B8B8(v130, *(v123 + 24));
            v131 = Data.base16EncodedString()();
            v127 = v131._object;
            sub_10000BD94(v130, v126);
            v128 = v131._countAndFlagsBits;
            v100 = v166;
          }

          v55 = v122;
          v132 = sub_100141FE4(v128, v127, &aBlock);

          *(v124 + 4) = v132;
          _os_log_impl(&_mh_execute_header, v120, v121, " assessment %s", v124, 0xCu);
          sub_10000BB78(v125);

          v129 = v156;
          v101 = v172;
        }

        else
        {

          v129 = v114;
        }

        (v100)(v129, v101);
        v133 = v157;
        defaultLogger()();

        v134 = Logger.logObject.getter();
        v135 = static os_log_type_t.debug.getter();

        if (os_log_type_enabled(v134, v135))
        {
          v136 = v135;
          v137 = swift_slowAlloc();
          v138 = swift_slowAlloc();
          aBlock = v138;
          *v137 = 136315138;
          v139 = v175;
          swift_beginAccess();
          v140 = *(v139 + 24);
          if (v140 >> 60 == 15)
          {
            v141 = 0xE300000000000000;
            v55 = v171;
            v142 = 7104878;
          }

          else
          {
            v143 = *(v175 + 16);
            sub_10000B8B8(v143, *(v139 + 24));
            v144 = Data.base16EncodedString()();
            v142 = v144._countAndFlagsBits;
            v141 = v144._object;
            sub_10000BD94(v143, v140);
            v55 = v171;
          }

          v145 = sub_100141FE4(v142, v141, &aBlock);

          *(v137 + 4) = v145;
          _os_log_impl(&_mh_execute_header, v134, v136, " cdata   %s", v137, 0xCu);
          sub_10000BB78(v138);

          (v166)(v157, v172);
        }

        else
        {

          (v100)(v133, v101);
        }

        v52 = v147;
        if (!v147)
        {
          goto LABEL_11;
        }
      }

      v166 = a25;
      v88 = v170;
      v89 = v159;
      v173 = *(v159 + 16);
      v90 = swift_allocObject();
      v92 = v174;
      v91 = v175;
      v90[2] = v167;
      v90[3] = v92;
      v90[4] = v91;
      v90[5] = v88;
      v90[6] = v158;
      v90[7] = v55;
      v90[8] = v89;
      v90[9] = a25;
      v90[10] = v52;
      v90[11] = a24;
      v90[12] = a26;
      v181 = sub_100545810;
      v182 = v90;
      aBlock = _NSConcreteStackBlock;
      v178 = 1107296256;
      v179 = sub_100503A7C;
      v180 = &unk_1008165B0;
      v172 = _Block_copy(&aBlock);
      sub_10001F640(v52, a24);

      swift_errorRetain();

      sub_10001F640(v52, a24);

      v93 = v160;
      static DispatchQoS.unspecified.getter();
      v176 = _swiftEmptyArrayStorage;
      sub_100545850(&unk_1008341E0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
      v94 = v52;
      sub_100007224(&qword_100848A40, &unk_1006BF8C0);
      sub_10001F484(&qword_1008341F0, &qword_100848A40, &unk_1006BF8C0);
      v95 = v162;
      v96 = v165;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      v97 = v172;
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v97);
      sub_10001FE8C(v94, a24);
      (*(v164 + 8))(v95, v96);
      (*(v161 + 8))(v93, v163);

LABEL_11:
      v98 = v168;
      swift_beginAccess();
      *(v98 + 16) = 1;
      return OS_dispatch_semaphore.signal()();
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100541080(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void (*a9)(_OWORD *, void, uint64_t, __n128), uint64_t a10, uint64_t a11)
{
  v44 = a8;
  v45 = a4;
  v49 = a6;
  v46 = a5;
  v14 = type metadata accessor for Logger();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v44 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  defaultLogger()();
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&_mh_execute_header, v18, v19, "Preparing to call odn completion function", v20, 2u);
  }

  v47 = a10;
  v48 = a9;

  (*(v15 + 8))(v17, v14);
  swift_beginAccess();
  v21 = *(a1 + 24);
  if (v21 >> 60 == 15)
  {
    swift_beginAccess();
    v22 = *(a3 + 24);
    if (v22 >> 60 == 15)
    {
      v50 = 0uLL;
      *&v51 = 0;
      *(&v51 + 1) = 0xF000000000000000;
      v52 = 0u;
      v53 = 0u;
      goto LABEL_9;
    }

    v34 = *(a3 + 16);
    swift_beginAccess();
    v35 = *(a2 + 16);
    v36 = *(a2 + 24);
    v37 = v45;
    swift_beginAccess();
    v29 = *(v37 + 16);
    v38 = v46;
    swift_beginAccess();
    v31 = *(v38 + 16);
    sub_1000363B4(v34, v22);
    sub_1000363B4(v35, v36);
    v39._countAndFlagsBits = 0x3632636634373131;
    v40._countAndFlagsBits = 0xD000000000000016;
    v40._object = 0x800000010071ED90;
    v39._object = 0xE800000000000000;
    logMilestone(tag:description:)(v39, v40);
    *&v50 = v35;
    *(&v50 + 1) = v36;
    v51 = xmmword_1006DE2A0;
    *&v52 = v34;
    *(&v52 + 1) = v22;
  }

  else
  {
    v23 = *(a1 + 16);
    swift_beginAccess();
    v24 = *(a2 + 16);
    v25 = *(a2 + 24);
    swift_beginAccess();
    v26 = *(a3 + 16);
    v27 = *(a3 + 24);
    v28 = v45;
    swift_beginAccess();
    v29 = *(v28 + 16);
    v30 = v46;
    swift_beginAccess();
    v31 = *(v30 + 16);
    sub_1000363B4(v23, v21);
    sub_1000363B4(v24, v25);
    sub_1000363B4(v26, v27);
    v32._countAndFlagsBits = 0x3962363931376166;
    v33._object = 0x800000010071EDB0;
    v32._object = 0xE800000000000000;
    v33._countAndFlagsBits = 0xD000000000000011;
    logMilestone(tag:description:)(v32, v33);
    *&v50 = v24;
    *(&v50 + 1) = v25;
    *&v51 = v23;
    *(&v51 + 1) = v21;
    *&v52 = v26;
    *(&v52 + 1) = v27;
  }

  LODWORD(v53) = v29;
  *(&v53 + 1) = v31;
LABEL_9:
  v54[0] = v50;
  v54[1] = v51;
  v54[2] = v52;
  v54[3] = v53;
  v41 = v49;
  if (v49)
  {
    swift_errorRetain();
    v42 = sub_10054518C(v41, v44);

    swift_errorRetain();
  }

  else
  {
    v42 = 0;
  }

  swift_beginAccess();
  (v48)(v54, *(a11 + 16), v42);

  return sub_10000BE18(&v50, &qword_100847578, &qword_1006E7968);
}

uint64_t sub_100541484(char a1, uint64_t a2, uint64_t a3)
{
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for DispatchQoS();
  v11 = *(v18 - 8);
  __chkstk_darwin(v18);
  v13 = v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17[1] = *(v3 + 16);
  v14 = swift_allocObject();
  *(v14 + 16) = a1;
  *(v14 + 24) = a2;
  *(v14 + 32) = a3;
  aBlock[4] = sub_1005459E8;
  aBlock[5] = v14;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100503A7C;
  aBlock[3] = &unk_100816678;
  v15 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v19 = _swiftEmptyArrayStorage;
  sub_100545850(&unk_1008341E0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100007224(&qword_100848A40, &unk_1006BF8C0);
  sub_10001F484(&qword_1008341F0, &qword_100848A40, &unk_1006BF8C0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v15);
  (*(v8 + 8))(v10, v7);
  (*(v11 + 8))(v13, v18);
}

void sub_10054174C(char a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = aBlock - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = &_swiftEmptyDictionarySingleton;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    aBlock[0] = &_swiftEmptyDictionarySingleton;
    sub_10016CAB8(49, 0xE100000000000000, 7105633, 0xE300000000000000, isUniquelyReferenced_nonNull_native);
    v10 = aBlock[0];
  }

  defaultLogger()();
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&_mh_execute_header, v12, v13, "Starting to clean ODN cache", v14, 2u);
  }

  (*(v7 + 8))(v9, v6);
  v15 = [objc_allocWithZone(OZRXp7MLSzffIeLD) init];
  sub_10054CC30(v10);

  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v17 = swift_allocObject();
  *(v17 + 16) = a2;
  *(v17 + 24) = a3;
  aBlock[4] = sub_100545A2C;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100541DB0;
  aBlock[3] = &unk_1008166C8;
  v18 = _Block_copy(aBlock);

  [v15 t5yVezCKaX2Zrwrw:isa uXxcS3vcKdsH38zZ:v18];
  _Block_release(v18);
}

uint64_t sub_1005419F8(int a1, unint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t), uint64_t a5)
{
  v10 = type metadata accessor for Logger();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v37 - v15;
  if (a3)
  {
    swift_errorRetain();
    defaultLogger()();
    swift_errorRetain();
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.debug.getter();

    if (!os_log_type_enabled(v17, v18))
    {

      (*(v11 + 8))(v16, v10);
      return a4(a3);
    }

    v19 = swift_slowAlloc();
    v39 = v10;
    v20 = v19;
    v21 = swift_slowAlloc();
    v38 = a5;
    v22 = v21;
    v40 = v21;
    *v20 = 136446210;
    swift_getErrorValue();
    v23 = Error.localizedDescription.getter();
    v25 = sub_100141FE4(v23, v24, &v40);

    *(v20 + 4) = v25;
    _os_log_impl(&_mh_execute_header, v17, v18, "Error cleaning ODN cache: = %{public}s", v20, 0xCu);
    sub_10000BB78(v22);

    v26 = *(v11 + 8);
    v27 = v16;
LABEL_10:
    v26(v27, v39);
    return a4(a3);
  }

  v39 = v10;
  defaultLogger()();

  v28 = Logger.logObject.getter();
  v29 = static os_log_type_t.debug.getter();

  if (!os_log_type_enabled(v28, v29))
  {

    v26 = *(v11 + 8);
    v27 = v14;
    goto LABEL_10;
  }

  v37 = a4;
  v38 = a5;
  v30 = swift_slowAlloc();
  v31 = swift_slowAlloc();
  v40 = v31;
  *v30 = 67240450;
  *(v30 + 4) = a1;
  *(v30 + 8) = 2080;
  if (!a2)
  {
    sub_10003DB20(_swiftEmptyArrayStorage);
  }

  v32 = Dictionary.description.getter();
  v34 = v33;

  v35 = sub_100141FE4(v32, v34, &v40);

  *(v30 + 10) = v35;
  _os_log_impl(&_mh_execute_header, v28, v29, "Successfully finished cleaning ODN cache. Records purged = %{public}u, metadata = %s", v30, 0x12u);
  sub_10000BB78(v31);

  (*(v11 + 8))(v14, v39);
  return v37(0);
}

uint64_t sub_100541DB0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = *(a1 + 32);
  if (a3)
  {
    v7 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v7 = 0;
  }

  v8 = a4;
  v6(a2, v7, a4);
}

uint64_t sub_100541E64(uint64_t a1, uint64_t a2, char a3)
{
  v5 = sub_100007224(&qword_100834120, &unk_1006BFBA0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v12 - v7;
  (*(v6 + 16))(&v12 - v7, a1, v5);
  v9 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v10 = swift_allocObject();
  (*(v6 + 32))(v10 + v9, v8, v5);
  sub_100541484(a3, sub_10002F6E8, v10);
}

uint64_t sub_100541FB4()
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
  aBlock[4] = sub_100545908;
  v14 = v0;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100503A7C;
  aBlock[3] = &unk_1008165D8;
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
  (*(v5 + 8))(v7, v11);
}

void sub_100542254(void *a1)
{
  v77 = a1;
  v71 = type metadata accessor for TimeoutError();
  v68[1] = *(v71 - 8);
  __chkstk_darwin(v71);
  v76 = type metadata accessor for DIPError();
  v68[3] = *(v76 - 1);
  __chkstk_darwin(v76);
  v68[2] = v68 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = type metadata accessor for DIPError.Code();
  v72 = *(v2 - 8);
  v73 = v2;
  __chkstk_darwin(v2);
  v74 = v68 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = type metadata accessor for Logger();
  v4 = *(v79 - 8);
  v5 = __chkstk_darwin(v79);
  v6 = __chkstk_darwin(v5);
  v75 = v68 - v7;
  v8 = __chkstk_darwin(v6);
  v10 = v68 - v9;
  v11 = __chkstk_darwin(v8);
  v69 = v68 - v12;
  v13 = __chkstk_darwin(v11);
  v15 = v68 - v14;
  v16 = __chkstk_darwin(v13);
  v18 = v68 - v17;
  __chkstk_darwin(v16);
  v20 = v68 - v19;
  defaultLogger()();
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    *v23 = 0;
    _os_log_impl(&_mh_execute_header, v21, v22, "START getting NF data", v23, 2u);
  }

  v24 = *(v4 + 8);
  v25 = v79;
  v78 = v4 + 8;
  v24(v20, v79);
  v26 = objc_opt_self();
  v81 = 0;
  v27 = [v26 embeddedSecureElementWithError:&v81];
  v28 = v81;
  if (!v27)
  {
    v30 = v81;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    defaultLogger()();
    swift_errorRetain();
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = v24;
      v35 = swift_slowAlloc();
      *v33 = 138412290;
      swift_errorRetain();
      v36 = _swift_stdlib_bridgeErrorToNSError();
      *(v33 + 4) = v36;
      *v35 = v36;
      _os_log_impl(&_mh_execute_header, v31, v32, "No Embedded SE with error: %@", v33, 0xCu);
      sub_10000BE18(v35, &unk_100833B50, &unk_1006D8FB0);
      v24 = v34;
    }

    else
    {
    }

    v24(v10, v25);
    goto LABEL_24;
  }

  v70 = v27;
  sub_10001F8D4(0, &qword_100847758, NFSecureElementManagerSession_ptr);
  v29 = v28;
  v68[0] = "invalid assessmentGUID format";
  runAsyncAndBlock<A>(timeout:file:function:line:_:)();
  v76 = v24;
  v37 = v81;
  v81 = 0;
  v80 = 0;
  v38 = [v37 getCryptogram:&v81 challengeResponse:&v80];
  v39 = v80;
  v40 = v81;
  v41 = v80;
  v42 = v40;
  [v37 endSession];
  if ((v38 & 1) == 0)
  {
    defaultLogger()();
    v53 = Logger.logObject.getter();
    v54 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v53, v54))
    {
      v55 = swift_slowAlloc();
      *v55 = 0;
      _os_log_impl(&_mh_execute_header, v53, v54, " error getting NF challenge / cryptogram, resetting everything", v55, 2u);
    }

    v56 = v79;
    v76(v18, v79);
    v43 = 0;
    v57 = 0;
    goto LABEL_18;
  }

  if (!v42 || !v41)
  {
    v56 = v79;
    v58 = v69;
    goto LABEL_20;
  }

  v43 = v41;
  v41 = v42;
  v44 = [v70 serialNumber];
  if (!v44)
  {
    v42 = v43;
    v57 = v41;
    v56 = v79;
LABEL_18:
    v58 = v69;

    v41 = v43;
    v42 = v57;
LABEL_20:
    defaultLogger()();
    v59 = Logger.logObject.getter();
    v60 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v59, v60))
    {
      v61 = swift_slowAlloc();
      *v61 = 0;
      _os_log_impl(&_mh_execute_header, v59, v60, "No NF data available", v61, 2u);
    }

    else
    {
    }

    v76(v58, v56);
LABEL_24:
    v62 = v77;
    goto LABEL_25;
  }

  v45 = v44;
  v46 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v48 = v47;

  defaultLogger()();
  v49 = Logger.logObject.getter();
  v50 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v49, v50))
  {
    v51 = swift_slowAlloc();
    v75 = v48;
    *v51 = 0;
    _os_log_impl(&_mh_execute_header, v49, v50, "Retrieved NF seid and challenge/response", v51, 2u);
    v48 = v75;

    v52 = v37;
  }

  else
  {
    v52 = v49;
    v49 = v37;
  }

  v76(v15, v79);
  v63 = v77;
  v64 = v77[7];
  v65 = v77[8];
  v66 = v77[9];
  v67 = v77[10];
  v77[7] = v40;
  v63[8] = v39;
  v63[9] = v46;
  v63[10] = v48;
  sub_100544CA0(v64, v65, v66, v67);

  v62 = v63;
LABEL_25:
  sub_100542FCC(v62);
}

void sub_100542FCC(uint64_t a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  defaultLogger()();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, v7, "END getting NF data", v8, 2u);
  }

  (*(v3 + 8))(v5, v2);
  v9 = *(a1 + 24);
  OS_dispatch_semaphore.signal()();
}

uint64_t sub_100543120(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  v4 = sub_10001F8D4(0, &qword_100847758, NFSecureElementManagerSession_ptr);
  *v3 = v1;
  v3[1] = sub_100027B9C;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(a1, 0, 0, 0x657250636E797361, 0xEE0029286D726157, sub_100543218, 0, v4);
}

void sub_100543218(uint64_t a1)
{
  v2 = sub_100007224(&qword_100847760, &qword_1006E7AB0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = aBlock - v4;
  v6 = [objc_opt_self() sharedHardwareManager];
  (*(v3 + 16))(v5, a1, v2);
  v7 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v8 = swift_allocObject();
  (*(v3 + 32))(v8 + v7, v5, v2);
  aBlock[4] = sub_100545924;
  aBlock[5] = v8;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10001335C;
  aBlock[3] = &unk_100816628;
  v9 = _Block_copy(aBlock);

  v10 = [v6 startSecureElementManagerSessionWithPriority:v9];
  _Block_release(v9);
  swift_unknownObjectRelease();
}

uint64_t sub_100543400(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for DIPError.Code();
  __chkstk_darwin(v4);
  if (a2)
  {
    v11 = a2;
    swift_errorRetain();
LABEL_3:
    sub_100007224(&qword_100847760, &qword_1006E7AB0);
    return CheckedContinuation.resume(throwing:)();
  }

  if (!a1)
  {
    (*(v6 + 104))(&v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), enum case for DIPError.Code.nearfieldInconsistentCallbackError(_:));
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100545850(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    v9 = swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    v11 = v9;
    goto LABEL_3;
  }

  v11 = a1;
  v8 = a1;
  sub_100007224(&qword_100847760, &qword_1006E7AB0);
  return CheckedContinuation.resume(returning:)();
}

uint64_t sub_100543628(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v24 - v11;
  v13 = *(a1 + 48);
  if (v13)
  {
    v14 = *(a1 + 40);

    defaultLogger()();

    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      *v17 = 136446466;
      *(v17 + 4) = sub_100141FE4(a2, a3, &v25);
      *(v17 + 12) = 2082;
      v18 = sub_100141FE4(v14, v13, &v25);

      *(v17 + 14) = v18;
      _os_log_impl(&_mh_execute_header, v15, v16, "ODN asked to compute assessment for %{public}s but assessment computation for %{public}s is already in progress!", v17, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
    }

    return (*(v7 + 8))(v12, v6);
  }

  else
  {
    defaultLogger()();

    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v25 = v22;
      *v21 = 136446210;
      *(v21 + 4) = sub_100141FE4(a2, a3, &v25);
      _os_log_impl(&_mh_execute_header, v19, v20, "ODN asked to compute assessment for %{public}s; no assessment computation is in progress", v21, 0xCu);
      sub_10000BB78(v22);
    }

    (*(v7 + 8))(v10, v6);
    *(a1 + 40) = a2;
    *(a1 + 48) = a3;
  }
}

uint64_t sub_100543968(uint64_t a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  defaultLogger()();

  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v15 = v9;
    *v8 = 136446210;
    if (*(a1 + 48))
    {
      v10 = *(a1 + 40);
      v11 = *(a1 + 48);
    }

    else
    {
      v11 = 0xE500000000000000;
      v10 = 0x3E6C696E3CLL;
    }

    v12 = sub_100141FE4(v10, v11, &v15);

    *(v8 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v6, v7, "ODN finished computing assessment for %{public}s", v8, 0xCu);
    sub_10000BB78(v9);
  }

  (*(v3 + 8))(v5, v2);
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
}

uint64_t sub_100543B4C()
{

  sub_100544CA0(*(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80));

  return swift_deallocClassInstance();
}

uint64_t sub_100543BE0()
{
  v1 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v2 = *(v1 - 8);
  v15 = v1;
  v16 = v2;
  __chkstk_darwin(v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v5);
  v6 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v6 - 8);
  sub_10001F8D4(0, &qword_100845BD0, OS_dispatch_queue_ptr);
  v14 = "currentWorkflowID";
  static DispatchQoS.unspecified.getter();
  v17 = _swiftEmptyArrayStorage;
  v13 = sub_100545850(&qword_1008465A0, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  v12 = sub_100007224(&unk_1008458B0, &qword_1006BF8A0);
  sub_10001F484(&qword_1008465B0, &unk_1008458B0, &qword_1006BF8A0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v7 = enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:);
  v8 = *(v16 + 104);
  v16 += 104;
  v11 = v4;
  v8(v4, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v15);
  *(v0 + 16) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  *(v0 + 24) = dispatch_semaphore_create(0);
  static DispatchQoS.unspecified.getter();
  v17 = _swiftEmptyArrayStorage;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v8(v11, v7, v15);
  *(v0 + 32) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  *(v0 + 40) = 0u;
  *(v0 + 56) = 0u;
  *(v0 + 72) = 0u;
  return v0;
}

uint64_t sub_100543F04(uint64_t a1, unsigned __int8 a2, uint64_t a3, int a4)
{
  v65 = a4;
  v73 = a3;
  v78 = a1;
  v4 = a2;
  v5 = type metadata accessor for DIPError.Code();
  v70 = *(v5 - 8);
  v71 = v5;
  __chkstk_darwin(v5);
  v72 = &v64[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = type metadata accessor for Date();
  v68 = *(v7 - 8);
  v69 = v7;
  __chkstk_darwin(v7);
  v67 = &v64[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = type metadata accessor for DispatchTime();
  v76 = *(v9 - 8);
  v77 = v9;
  v10 = __chkstk_darwin(v9);
  v74 = &v64[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v10);
  v75 = &v64[-v12];
  v80 = type metadata accessor for Logger();
  v79 = *(v80 - 8);
  v13 = __chkstk_darwin(v80);
  v66 = &v64[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = __chkstk_darwin(v13);
  v17 = &v64[-v16];
  v18 = __chkstk_darwin(v15);
  v20 = &v64[-v19];
  v21 = __chkstk_darwin(v18);
  v23 = &v64[-v22];
  __chkstk_darwin(v21);
  v25 = &v64[-v24];
  if (v4 == 9)
  {
    v26 = 60.0;
  }

  else
  {
    v26 = 3.0;
  }

  v27 = objc_opt_self();
  v28 = [v27 standardUserDefaults];
  v29._countAndFlagsBits = static DaemonInternalDefaultsKeys.disableODNTimeout.getter();
  v30 = NSUserDefaults.internalBool(forKey:)(v29);

  if (v30)
  {
    defaultLogger()();
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&_mh_execute_header, v31, v32, "Disabling ODN timeout due to user defaults setting", v33, 2u);
    }

    v34 = v79;
    v35 = v80;
    (*(v79 + 8))(v25, v80);
    v26 = 9999999.0;
  }

  else
  {
    v36 = [v27 standardUserDefaults];
    v37._countAndFlagsBits = static DaemonInternalDefaultsKeys.alwaysTimeoutODN.getter();
    v38 = NSUserDefaults.internalBool(forKey:)(v37);

    if (v38)
    {
      defaultLogger()();
      v39 = Logger.logObject.getter();
      v40 = static os_log_type_t.debug.getter();
      v41 = os_log_type_enabled(v39, v40);
      v34 = v79;
      if (v41)
      {
        v42 = swift_slowAlloc();
        *v42 = 0;
        _os_log_impl(&_mh_execute_header, v39, v40, "Forcing ODN timeout due to user defaults settings", v42, 2u);
      }

      v35 = v80;
      (*(v34 + 8))(v23, v80);
      v26 = 0.0001;
    }

    else
    {
      v35 = v80;
      v34 = v79;
      if (v65)
      {
        defaultLogger()();
        v43 = Logger.logObject.getter();
        v44 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v43, v44))
        {
          v45 = swift_slowAlloc();
          *v45 = 0;
          _os_log_impl(&_mh_execute_header, v43, v44, "ODN triggered at proofing time, setting time out to a default value", v45, 2u);
        }

        (*(v34 + 8))(v20, v35);
        v46._countAndFlagsBits = 0x6233346566333836;
        v47._countAndFlagsBits = 0xD000000000000043;
        v47._object = 0x800000010071ED40;
        v46._object = 0xE800000000000000;
        logMilestone(tag:description:)(v46, v47);
        v26 = 15.0;
      }
    }
  }

  defaultLogger()();
  v48 = Logger.logObject.getter();
  v49 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v48, v49))
  {
    v50 = swift_slowAlloc();
    *v50 = 134349056;
    *(v50 + 4) = v26;
    _os_log_impl(&_mh_execute_header, v48, v49, "now we wait %{public}f seconds for ODN", v50, 0xCu);
  }

  v51 = *(v34 + 8);
  v51(v17, v35);
  v52 = v74;
  static DispatchTime.now()();
  v53 = v75;
  + infix(_:_:)();
  v54 = v77;
  v55 = *(v76 + 8);
  v55(v52, v77);
  OS_dispatch_semaphore.wait(timeout:)();
  v55(v53, v54);
  result = static DispatchTimeoutResult.== infix(_:_:)();
  if (result)
  {
    v57 = v66;
    defaultLogger()();
    sub_10000CCA8();
    sub_10000CCA8();
    v58 = Logger.logObject.getter();
    v59 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v58, v59))
    {
      v60 = swift_slowAlloc();
      *v60 = 68157952;
      *(v60 + 4) = 2;
      *(v60 + 8) = 2048;
      *(v60 + 10) = v26;
      _os_log_impl(&_mh_execute_header, v58, v59, "Timed out waiting for ODN data after %.*f seconds", v60, 0x12u);
    }

    v51(v57, v80);
    v81 = 0;
    v82 = 0xE000000000000000;
    _StringGuts.grow(_:)(36);

    v81 = 0xD000000000000022;
    v82 = 0x800000010071EC10;
    v61 = v67;
    static Date.now.getter();
    sub_100545850(&qword_10083ACE0, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    v62 = v69;
    v63._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v63);

    (*(v68 + 8))(v61, v62);
    (*(v70 + 104))(v72, enum case for DIPError.Code.odnTimeout(_:), v71);
    type metadata accessor for DIPError();
    sub_100545850(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();

    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_100544838(uint64_t a1, unint64_t a2)
{
  v4 = type metadata accessor for DIPError.Code();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = Data.init(base64Encoded:options:)();
  if (v13 >> 60 == 15)
  {
    v23 = v5;
    v24 = result;
    v25 = v13;
    defaultLogger()();

    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v22 = v7;
      v17 = v16;
      v18 = swift_slowAlloc();
      v21 = v4;
      v19 = v18;
      v26 = v18;
      *v17 = 136446210;
      *(v17 + 4) = sub_100141FE4(a1, a2, &v26);
      _os_log_impl(&_mh_execute_header, v14, v15, "Invalid assessment GUID: %{public}s", v17, 0xCu);
      sub_10000BB78(v19);
      v4 = v21;

      v7 = v22;
    }

    (*(v9 + 8))(v11, v8);
    (*(v23 + 104))(v7, enum case for DIPError.Code.invalidAssessmentGUID(_:), v4);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100545850(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    return v24;
  }

  return result;
}

uint64_t sub_100544BA4(uint64_t a1)
{
  v2 = type metadata accessor for AugmentedProfile(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100544C00()
{
  v1 = *(v0 + 24);
  if (v1 >> 60 != 15)
  {
    sub_10000B90C(*(v0 + 16), v1);
  }

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100544C48()
{

  return _swift_deallocObject(v0, 24, 7);
}

void *sub_100544CA0(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_100544CF8()
{
  v8 = type metadata accessor for DIPSignpost();
  v1 = *(v8 - 8);
  v11 = *(v1 + 80);
  v2 = (v11 + 16) & ~v11;
  v3 = (((v2 + *(v1 + 64) + 31) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = type metadata accessor for DispatchTime();
  v4 = *(v9 - 8);
  v10 = *(v4 + 80);
  v5 = (v10 + ((((v3 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v10;
  v6 = (((((((((((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  (*(v1 + 8))(v0 + v2, v8);

  (*(v4 + 8))(v0 + v5, v9);

  if (*(v0 + v6))
  {
  }

  return _swift_deallocObject(v0, ((((v6 + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8, v11 | v10 | 7);
}

unint64_t sub_100544F68(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6, int a7, uint64_t a8)
{
  v12 = *(type metadata accessor for DIPSignpost() - 8);
  v13 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v14 = v13 + *(v12 + 64);
  v15 = (v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  v16 = (v14 + 31) & 0xFFFFFFFFFFFFFFF8;
  v17 = (v16 + 15) & 0xFFFFFFFFFFFFFFF8;
  v18 = (v17 + 15) & 0xFFFFFFFFFFFFFFF8;
  v19 = (v18 + 15) & 0xFFFFFFFFFFFFFFF8;
  v20 = *(type metadata accessor for DispatchTime() - 8);
  v21 = (*(v20 + 80) + v19 + 8) & ~*(v20 + 80);
  v22 = (*(v20 + 64) + v21 + 7) & 0xFFFFFFFFFFFFFFF8;
  v23 = (v22 + 15) & 0xFFFFFFFFFFFFFFF8;
  v24 = (v23 + 15) & 0xFFFFFFFFFFFFFFF8;
  v25 = (v24 + 15) & 0xFFFFFFFFFFFFFFF8;
  v26 = (v25 + 15) & 0xFFFFFFFFFFFFFFF8;
  v27 = (v26 + 15) & 0xFFFFFFFFFFFFFFF8;
  return sub_100540128(a1, a2, a3, a4, a5, a6, a7, a8, v8 + v13, *(v8 + v15), *(v8 + v15 + 8), *(v8 + v15 + 16), *(v8 + v16), *(v8 + v17), *(v8 + v18), *(v8 + v19), v8 + v21, *(v8 + v22), *(v8 + v23), *(v8 + v24), *(v8 + v25), *(v8 + v26), *(v8 + v27), *(v8 + v27 + 8), *(v8 + ((v27 + 23) & 0xFFFFFFFFFFFFFFF8)), *(v8 + ((((v27 + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_100545174(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10054518C(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for DIPError.Code();
  v32 = *(v3 - 8);
  v33 = v3;
  __chkstk_darwin(v3);
  v34 = &v27[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = type metadata accessor for DIPError.PropertyKey();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v31 = &v27[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v27[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];

  defaultLogger()();
  swift_errorRetain();
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v30 = v8;
    v15 = v14;
    v29 = swift_slowAlloc();
    *&v37 = v29;
    *v15 = 136446210;
    swift_getErrorValue();
    v28 = v13;
    v16 = Error.localizedDescription.getter();
    v18 = sub_100141FE4(v16, v17, &v37);

    *(v15 + 4) = v18;
    _os_log_impl(&_mh_execute_header, v12, v28, "ODN error : %{public}s", v15, 0xCu);
    sub_10000BB78(v29);

    (*(v9 + 8))(v11, v30);
  }

  else
  {

    (*(v9 + 8))(v11, v8);
  }

  v19 = v31;
  (*(v6 + 104))(v31, enum case for DIPError.PropertyKey.underlyingErrno(_:), v5);
  v20 = _convertErrorToNSError(_:)();
  v21 = [v20 code];

  v38 = &type metadata for Int;
  v39 = &protocol witness table for Int;
  *&v37 = v21;
  sub_10001F358(&v37, v36);
  LOBYTE(v20) = swift_isUniquelyReferenced_nonNull_native();
  v35 = a2;
  v22 = sub_10001F370(v36, v36[3]);
  sub_100658C24(*v22, v19, v20, &v35);
  (*(v6 + 8))(v19, v5);
  sub_10000BB78(v36);
  v23 = _convertErrorToNSError(_:)();
  v24 = [v23 code];

  if (v24 == -31)
  {
    (*(v32 + 104))(v34, enum case for DIPError.Code.odnDisconnected(_:), v33);
  }

  else
  {
    (*(v32 + 104))(v34, enum case for DIPError.Code.odnError(_:), v33);
  }

  type metadata accessor for DIPError();
  sub_100545850(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
  v25 = swift_allocError();
  swift_errorRetain();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  return v25;
}

uint64_t sub_100545790()
{

  return _swift_deallocObject(v0, 104, 7);
}

uint64_t sub_100545850(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100545898(uint64_t a1, uint64_t a2)
{
  v4 = sub_100007224(&qword_1008350C0, &unk_1006C0B30);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100545924(void *a1, uint64_t a2)
{
  sub_100007224(&qword_100847760, &qword_1006E7AB0);

  return sub_100543400(a1, a2);
}

uint64_t sub_1005459B0()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1005459F4()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100545A34(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 64))
  {
    return (*a1 + 13);
  }

  v3 = (((*(a1 + 24) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 24) >> 60) & 3))) ^ 0xF;
  if (v3 >= 0xC)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_100545A88(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 13;
    if (a3 >= 0xD)
    {
      *(result + 64) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 64) = 0;
    }

    if (a2)
    {
      *(result + 16) = 0;
      *(result + 24) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

uint64_t sub_100545B38()
{
  v1[2] = v0;
  v2 = type metadata accessor for DIPError.Code();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  v3 = type metadata accessor for DIPError();
  v1[6] = v3;
  v1[7] = *(v3 - 8);
  v1[8] = swift_task_alloc();
  v4 = type metadata accessor for Logger();
  v1[9] = v4;
  v1[10] = *(v4 - 8);
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();
  v1[13] = swift_task_alloc();
  v1[14] = swift_task_alloc();
  v1[15] = swift_task_alloc();
  v1[16] = swift_task_alloc();
  v1[17] = swift_task_alloc();
  v1[18] = swift_task_alloc();

  return _swift_task_switch(sub_100545D04, 0, 0);
}

uint64_t sub_100545D04()
{
  v68 = v0;
  v1 = [objc_opt_self() standardUserDefaults];
  v2._countAndFlagsBits = static DaemonInternalDefaultsKeys.forceFallbackProfile.getter();
  v3 = NSUserDefaults.internalBool(forKey:)(v2);

  if (v3)
  {
    defaultLogger()();
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, v5, "User settings forcing fallback profile", v6, 2u);
    }

    v7 = v0[18];
    v8 = v0[9];
    v9 = v0[10];

    v10 = *(v9 + 8);
    v10(v7, v8);
    sub_100549828();
    if (v12)
    {
      v65 = v11;
      v66 = v12;
      defaultLogger()();

      v37 = Logger.logObject.getter();
      v38 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v37, v38))
      {
        v39 = v0[2];
        v40 = swift_slowAlloc();
        v41 = swift_slowAlloc();
        v67[0] = v41;
        *v40 = 136446210;
        v42 = v0[2];
        if (*(v39 + 32))
        {
          v43 = *(v42 + 24);
          v44 = *(v39 + 32);
        }

        else
        {
          v62 = *(v42 + 16);
          if (v62)
          {
            v63 = *(v62 + 24);
            if (v63)
            {
              v43 = *(v63 + 16);
              v44 = *(v63 + 24);
            }

            else
            {
              v43 = 0x414C494156414E55;
              v44 = 0xEB00000000454C42;
            }
          }

          else
          {
            v43 = 0x6E776F6E6B6E753CLL;
            v44 = 0xE90000000000003ELL;
          }
        }

        v64 = v0[17];
        v45 = v0[9];

        v46 = sub_100141FE4(v43, v44, v67);

        *(v40 + 4) = v46;
        _os_log_impl(&_mh_execute_header, v37, v38, "Using fallback assessment profile for %{public}s due to user defaults setting", v40, 0xCu);
        sub_10000BB78(v41);

        v47 = v64;
        v48 = v45;
      }

      else
      {
        v55 = v0[17];
        v56 = v0[9];

        v47 = v55;
        v48 = v56;
      }

      v10(v47, v48);
      goto LABEL_34;
    }

    defaultLogger()();

    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = v0[2];
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v67[0] = v17;
      *v16 = 136446210;
      v18 = *(v15 + 32);
      v19 = v0[2];
      if (v18)
      {
        v20 = *(v19 + 24);
        v21 = v18;
      }

      else
      {
        v52 = *(v19 + 16);
        if (v52)
        {
          v53 = *(v52 + 24);
          if (v53)
          {
            v20 = *(v53 + 16);
            v21 = *(v53 + 24);
          }

          else
          {
            v20 = 0x414C494156414E55;
            v21 = 0xEB00000000454C42;
          }
        }

        else
        {
          v20 = 0x6E776F6E6B6E753CLL;
          v21 = 0xE90000000000003ELL;
        }
      }

      v22 = v0[16];
      v23 = v0[9];

      v24 = sub_100141FE4(v20, v21, v67);

      *(v16 + 4) = v24;
      _os_log_impl(&_mh_execute_header, v13, v14, "Unable to get a fallback profile for %{public}s despite user defaults setting; falling back to normal profile flow", v16, 0xCu);
      sub_10000BB78(v17);

      v10(v22, v23);
    }

    else
    {
      v25 = v0[16];
      v26 = v0[9];

      v10(v25, v26);
    }
  }

  v27 = *(v0[2] + 16);
  v0[19] = v27;
  if (v27 && v27[1078])
  {
    v65 = v27[1077];
    v66 = v27[1078];

    defaultLogger()();

    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = v0[2];
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v67[0] = v32;
      *v31 = 136446210;
      if (*(v30 + 32))
      {
        v33 = *(v0[2] + 24);
        v34 = *(v30 + 32);
      }

      else
      {
        v54 = v27[3];
        if (v54)
        {
          v33 = *(v54 + 16);
          v34 = *(v54 + 24);
        }

        else
        {
          v33 = 0x414C494156414E55;
          v34 = 0xEB00000000454C42;
        }
      }

      v57 = v0[15];
      v59 = v0[9];
      v58 = v0[10];

      v60 = sub_100141FE4(v33, v34, v67);

      *(v31 + 4) = v60;
      _os_log_impl(&_mh_execute_header, v28, v29, "Using assessment profile from workflow for %{public}s", v31, 0xCu);
      sub_10000BB78(v32);

      (*(v58 + 8))(v57, v59);
    }

    else
    {
      v49 = v0[15];
      v51 = v0[9];
      v50 = v0[10];

      (*(v50 + 8))(v49, v51);
    }

LABEL_34:

    v61 = v0[1];

    return v61(v65, v66);
  }

  v35 = swift_task_alloc();
  v0[20] = v35;
  *v35 = v0;
  v35[1] = sub_100546598;

  return sub_100548A44();
}

uint64_t sub_100546598(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v4[21] = a1;
  v4[22] = a2;
  v4[23] = v2;

  if (v2)
  {
    v5 = sub_100546E24;
  }

  else
  {
    v5 = sub_1005466B0;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1005466B0(uint64_t a1)
{
  v68 = v1;
  if (v1[22])
  {
    defaultLogger()();

    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v2, v3))
    {
      v4 = v1[2];
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v67[0] = v6;
      *v5 = 136446210;
      v7 = *(v4 + 32);
      if (v7)
      {
        v8 = *(v1[2] + 24);
        v9 = v7;
      }

      else
      {
        v55 = v1[19];
        if (v55)
        {
          v56 = *(v55 + 24);
          if (v56)
          {
            v8 = *(v56 + 16);
            v9 = *(v56 + 24);
          }

          else
          {
            v8 = 0x414C494156414E55;
            v9 = 0xEB00000000454C42;
          }
        }

        else
        {
          v8 = 0x6E776F6E6B6E753CLL;
          v9 = 0xE90000000000003ELL;
        }
      }

      v10 = v1[14];
      v11 = v1[9];
      v12 = v1[10];

      v13 = sub_100141FE4(v8, v9, v67);

      *(v5 + 4) = v13;
      _os_log_impl(&_mh_execute_header, v2, v3, "Using assessment profile from CDN for %{public}s", v5, 0xCu);
      sub_10000BB78(v6);

      (*(v12 + 8))(v10, v11);
    }

    else
    {
      v36 = v1[14];
      v37 = v1[9];
      v38 = v1[10];

      (*(v38 + 8))(v36, v37);
    }

    v65 = v1[22];
    v66 = v1[21];
  }

  else
  {
    v14 = v1[23];
    sub_100549828();
    if (v14)
    {
      v18 = v1[10];
      v17 = v1[11];
      v19 = v1[8];
      v20 = v1[9];
      v21 = v1[6];
      v22 = v1[7];
      (*(v1[4] + 104))(v1[5], enum case for DIPError.Code.internalError(_:), v1[3]);
      swift_errorRetain();
      sub_1000402AC(_swiftEmptyArrayStorage);
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      sub_100037214();
      swift_allocError();
      (*(v22 + 16))(v23, v19, v21);
      defaultLogger()();
      DIPRecordError(_:message:log:)();

      (*(v18 + 8))(v17, v20);
      (*(v22 + 8))(v19, v21);
    }

    else if (v16)
    {
      v66 = v15;
      v44 = v16;
      defaultLogger()();

      v45 = Logger.logObject.getter();
      v46 = static os_log_type_t.debug.getter();

      v65 = v44;
      if (os_log_type_enabled(v45, v46))
      {
        v47 = v1[2];
        v48 = swift_slowAlloc();
        v49 = swift_slowAlloc();
        v67[0] = v49;
        *v48 = 136446210;
        if (*(v47 + 32))
        {
          v50 = *(v1[2] + 24);
          v51 = *(v47 + 32);
        }

        else
        {
          v62 = v1[19];
          if (v62)
          {
            v63 = *(v62 + 24);
            if (v63)
            {
              v50 = *(v63 + 16);
              v51 = *(v63 + 24);
            }

            else
            {
              v50 = 0x414C494156414E55;
              v51 = 0xEB00000000454C42;
            }
          }

          else
          {
            v50 = 0x6E776F6E6B6E753CLL;
            v51 = 0xE90000000000003ELL;
          }
        }

        v64 = v1[13];
        v53 = v1[9];
        v52 = v1[10];

        v54 = sub_100141FE4(v50, v51, v67);

        *(v48 + 4) = v54;
        _os_log_impl(&_mh_execute_header, v45, v46, "Using fallback assessment profile for %{public}s", v48, 0xCu);
        sub_10000BB78(v49);

        (*(v52 + 8))(v64, v53);
      }

      else
      {
        v59 = v1[13];
        v61 = v1[9];
        v60 = v1[10];

        (*(v60 + 8))(v59, v61);
      }

      goto LABEL_16;
    }

    defaultLogger()();

    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = v1[2];
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v67[0] = v28;
      *v27 = 136446210;
      v29 = *(v26 + 32);
      if (v29)
      {
        v30 = *(v1[2] + 24);
        v31 = v29;
      }

      else
      {
        v57 = v1[19];
        if (v57)
        {
          v58 = *(v57 + 24);
          if (v58)
          {
            v30 = *(v58 + 16);
            v31 = *(v58 + 24);
          }

          else
          {
            v30 = 0x414C494156414E55;
            v31 = 0xEB00000000454C42;
          }
        }

        else
        {
          v30 = 0x6E776F6E6B6E753CLL;
          v31 = 0xE90000000000003ELL;
        }
      }

      v32 = v1[12];
      v33 = v1[9];
      v34 = v1[10];

      v35 = sub_100141FE4(v30, v31, v67);

      *(v27 + 4) = v35;
      _os_log_impl(&_mh_execute_header, v24, v25, "No profile available for %{public}s", v27, 0xCu);
      sub_10000BB78(v28);

      (*(v34 + 8))(v32, v33);
    }

    else
    {
      v39 = v1[12];
      v40 = v1[9];
      v41 = v1[10];

      (*(v41 + 8))(v39, v40);
    }

    v65 = 0;
    v66 = 0;
  }

LABEL_16:

  v42 = v1[1];

  return v42(v66, v65);
}

uint64_t sub_100546E24()
{
  v49 = v0;
  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[8];
  v5 = v0[6];
  v4 = v0[7];
  v45 = v0[9];
  (*(v0[4] + 104))(v0[5]);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  sub_100037214();
  swift_allocError();
  (*(v4 + 16))(v6, v3, v5);
  defaultLogger()();
  DIPRecordError(_:message:log:)();

  (*(v2 + 8))(v1, v45);
  (*(v4 + 8))(v3, v5);

  sub_100549828();
  if (v8)
  {
    v47 = v8;
    v26 = v7;
    defaultLogger()();

    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.debug.getter();

    v46 = v26;
    if (os_log_type_enabled(v27, v28))
    {
      v29 = v0[2];
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v48[0] = v31;
      *v30 = 136446210;
      if (*(v29 + 32))
      {
        v32 = *(v0[2] + 24);
        v33 = *(v29 + 32);
      }

      else
      {
        v42 = v0[19];
        if (v42)
        {
          v43 = *(v42 + 24);
          if (v43)
          {
            v32 = *(v43 + 16);
            v33 = *(v43 + 24);
          }

          else
          {
            v32 = 0x414C494156414E55;
            v33 = 0xEB00000000454C42;
          }
        }

        else
        {
          v32 = 0x6E776F6E6B6E753CLL;
          v33 = 0xE90000000000003ELL;
        }
      }

      v44 = v0[13];
      v35 = v0[9];
      v34 = v0[10];

      v36 = sub_100141FE4(v32, v33, v48);

      *(v30 + 4) = v36;
      _os_log_impl(&_mh_execute_header, v27, v28, "Using fallback assessment profile for %{public}s", v30, 0xCu);
      sub_10000BB78(v31);

      (*(v34 + 8))(v44, v35);
    }

    else
    {
      v39 = v0[13];
      v41 = v0[9];
      v40 = v0[10];

      (*(v40 + 8))(v39, v41);
    }
  }

  else
  {
    defaultLogger()();

    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = v0[2];
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v48[0] = v13;
      *v12 = 136446210;
      v14 = *(v11 + 32);
      if (v14)
      {
        v15 = *(v0[2] + 24);
        v16 = v14;
      }

      else
      {
        v37 = v0[19];
        if (v37)
        {
          v38 = *(v37 + 24);
          if (v38)
          {
            v15 = *(v38 + 16);
            v16 = *(v38 + 24);
          }

          else
          {
            v15 = 0x414C494156414E55;
            v16 = 0xEB00000000454C42;
          }
        }

        else
        {
          v15 = 0x6E776F6E6B6E753CLL;
          v16 = 0xE90000000000003ELL;
        }
      }

      v17 = v0[12];
      v18 = v0[9];
      v19 = v0[10];

      v20 = sub_100141FE4(v15, v16, v48);

      *(v12 + 4) = v20;
      _os_log_impl(&_mh_execute_header, v9, v10, "No profile available for %{public}s", v12, 0xCu);
      sub_10000BB78(v13);

      (*(v19 + 8))(v17, v18);
    }

    else
    {
      v21 = v0[12];
      v22 = v0[9];
      v23 = v0[10];

      (*(v23 + 8))(v21, v22);
    }

    v46 = 0;
    v47 = 0;
  }

  v24 = v0[1];

  return v24(v46, v47);
}

uint64_t sub_100547540()
{
  v1[5] = v0;
  v2 = type metadata accessor for DIPError.Code();
  v1[6] = v2;
  v1[7] = *(v2 - 8);
  v1[8] = swift_task_alloc();
  v3 = type metadata accessor for DIPError();
  v1[9] = v3;
  v1[10] = *(v3 - 8);
  v1[11] = swift_task_alloc();
  v4 = type metadata accessor for TimeoutError();
  v1[12] = v4;
  v1[13] = *(v4 - 8);
  v1[14] = swift_task_alloc();
  v5 = type metadata accessor for Logger();
  v1[15] = v5;
  v1[16] = *(v5 - 8);
  v1[17] = swift_task_alloc();
  v1[18] = swift_task_alloc();

  return _swift_task_switch(sub_100547720, 0, 0);
}

uint64_t sub_100547720()
{
  v1 = *(v0[5] + 64);
  v0[19] = v1;
  os_unfair_lock_lock((v1 + 32));
  v3 = *(v1 + 16);
  v2 = *(v1 + 24);

  os_unfair_lock_unlock((v1 + 32));
  if (v2)
  {
LABEL_2:

    v4 = v0[1];

    return v4(v3, v2);
  }

  v6 = *(v0[5] + 56);
  v0[20] = v6;
  if (!v6)
  {
    defaultLogger()();
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.debug.getter();
    v11 = os_log_type_enabled(v9, v10);
    v12 = v0[18];
    v13 = v0[15];
    v14 = v0[16];
    if (v11)
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v9, v10, "Cannot fetch server time seed because no web service was provided", v15, 2u);
    }

    (*(v14 + 8))(v12, v13);
    v3 = 0;
    goto LABEL_2;
  }

  swift_retain_n();
  v7 = swift_task_alloc();
  v0[21] = v7;
  *v7 = v0;
  v7[1] = sub_100547958;
  v8.n128_u64[0] = 4.0;

  return withTaskTimeoutHandler<A>(timeout:operation:)(v8);
}

uint64_t sub_100547958()
{
  *(*v1 + 176) = v0;

  if (v0)
  {
    v2 = sub_100547BA0;
  }

  else
  {

    v2 = sub_100547A74;
  }

  return _swift_task_switch(v2, 0, 0);
}

void sub_100547A74()
{
  v1 = v0[22];
  v2 = v0[19];
  v3 = v0[2];
  v4 = v0[3];
  v5 = swift_task_alloc();
  *(v5 + 16) = v3;
  *(v5 + 24) = v4;
  os_unfair_lock_lock((v2 + 32));
  sub_10054B89C((v2 + 16));
  if (v1)
  {
    v6 = (v0[19] + 32);

    os_unfair_lock_unlock(v6);
  }

  else
  {
    os_unfair_lock_unlock((v0[19] + 32));

    v7 = v0[1];

    v7(v3, v4);
  }
}

uint64_t sub_100547BA0()
{
  v1 = v0[22];

  v0[4] = v1;
  swift_errorRetain();
  sub_100007224(&qword_100833B90, &qword_1006D95C0);
  v2 = swift_dynamicCast();
  v3 = v0[16];
  v4 = v0[17];
  v24 = v0[15];
  if (v2)
  {
    v19 = v0[13];
    v5 = v0[11];
    v20 = v0[12];
    v22 = v0[14];
    v7 = v0[9];
    v6 = v0[10];
    v8 = v0[7];
    v9 = v0[8];
    v10 = v0[6];

    (*(v8 + 104))(v9, enum case for DIPError.Code.timeoutNetworkFetchSTS(_:), v10);
    sub_1000402AC(_swiftEmptyArrayStorage);
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    sub_100037214();
    swift_allocError();
    (*(v6 + 16))(v11, v5, v7);
    defaultLogger()();
    DIPRecordError(_:message:log:)();

    (*(v3 + 8))(v4, v24);
    (*(v6 + 8))(v5, v7);

    (*(v19 + 8))(v22, v20);
  }

  else
  {
    v12 = v0[10];
    v13 = v0[8];
    v21 = v0[11];
    v23 = v0[9];
    v15 = v0[6];
    v14 = v0[7];

    (*(v14 + 104))(v13, enum case for DIPError.Code.internalError(_:), v15);
    swift_errorRetain();
    sub_1000402AC(_swiftEmptyArrayStorage);
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    sub_100037214();
    swift_allocError();
    (*(v12 + 16))(v16, v21, v23);
    defaultLogger()();
    DIPRecordError(_:message:log:)();

    (*(v3 + 8))(v4, v24);
    (*(v12 + 8))(v21, v23);
  }

  v17 = v0[1];

  return v17(0, 0);
}

uint64_t sub_100547F8C(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_100548024;

  return sub_1005A58C4(0);
}

uint64_t sub_100548024(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *v3;

  if (v2)
  {
    v8 = *(v7 + 8);

    return v8();
  }

  else
  {
    *(v6 + 32) = a2;
    *(v6 + 40) = a1;

    return _swift_task_switch(sub_10054B8E4, 0, 0);
  }
}

uint64_t sub_100548180()
{
  v1[14] = v0;
  v2 = type metadata accessor for Logger();
  v1[15] = v2;
  v1[16] = *(v2 - 8);
  v1[17] = swift_task_alloc();
  v1[18] = swift_task_alloc();

  return _swift_task_switch(sub_10054824C, 0, 0);
}

uint64_t sub_10054824C(uint64_t a1)
{
  v2 = v1[14];
  v3 = v2[7];
  v1[19] = v3;
  if (v3)
  {
    if (v2[4])
    {
      v4 = v2[3];
      v5 = v2[4];
      goto LABEL_4;
    }

    v16 = v2[2];
    if (v16)
    {
      v17 = *(v16 + 24);
      if (v17)
      {
        v4 = *(v17 + 16);
        v5 = *(v17 + 24);
      }

      else
      {
        v5 = 0xEB00000000454C42;
        v4 = 0x414C494156414E55;
      }

LABEL_4:

      sub_10054AA0C(v4, v5, 1, v1 + 2);

      v6 = swift_task_alloc();
      v1[20] = v6;
      *v6 = v1;
      v6[1] = sub_10054851C;

      return sub_1005A770C((v1 + 2));
    }

    defaultLogger()();
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.debug.getter();
    v20 = os_log_type_enabled(v18, v19);
    v21 = v1[18];
    v22 = v1[15];
    v23 = v1[16];
    if (v20)
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&_mh_execute_header, v18, v19, "No workflow or workflow ID provided; skipping profile refresh", v24, 2u);
    }

    (*(v23 + 8))(v21, v22);
  }

  else
  {
    defaultLogger()();
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.debug.getter();
    v10 = os_log_type_enabled(v8, v9);
    v12 = v1[16];
    v11 = v1[17];
    v13 = v1[15];
    if (v10)
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v8, v9, "No assessment static web service provided; skipping profile refresh", v14, 2u);
    }

    (*(v12 + 8))(v11, v13);
  }

  v15 = v1[1];

  return v15();
}

uint64_t sub_10054851C()
{
  v1 = *v0;

  sub_10054B698(v1 + 16);

  return _swift_task_switch(sub_100548620, 0, 0);
}

uint64_t sub_100548620()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100548690()
{
  v1[2] = v0;
  v2 = type metadata accessor for Logger();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();

  return _swift_task_switch(sub_100548750, 0, 0);
}

uint64_t sub_100548750(uint64_t a1)
{
  v2 = *(v1[2] + 56);
  v1[6] = v2;
  if (v2)
  {

    v3 = swift_task_alloc();
    v1[7] = v3;
    *v3 = v1;
    v3[1] = sub_1005488E0;

    return sub_1005A80B8();
  }

  else
  {
    defaultLogger()();
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.debug.getter();
    v7 = os_log_type_enabled(v5, v6);
    v9 = v1[4];
    v8 = v1[5];
    v10 = v1[3];
    if (v7)
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v5, v6, "No assessment static web service provided; skipping sts refresh", v11, 2u);
    }

    (*(v9 + 8))(v8, v10);

    v12 = v1[1];

    return v12();
  }
}

uint64_t sub_1005488E0()
{

  return _swift_task_switch(sub_1005489DC, 0, 0);
}

uint64_t sub_1005489DC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100548A44()
{
  v1[17] = v0;
  v2 = type metadata accessor for DIPError();
  v1[18] = v2;
  v1[19] = *(v2 - 8);
  v1[20] = swift_task_alloc();
  v3 = type metadata accessor for TimeoutError();
  v1[21] = v3;
  v1[22] = *(v3 - 8);
  v1[23] = swift_task_alloc();
  v4 = type metadata accessor for DIPError.Code();
  v1[24] = v4;
  v1[25] = *(v4 - 8);
  v1[26] = swift_task_alloc();
  v5 = type metadata accessor for Logger();
  v1[27] = v5;
  v1[28] = *(v5 - 8);
  v1[29] = swift_task_alloc();
  v1[30] = swift_task_alloc();

  return _swift_task_switch(sub_100548C24, 0, 0);
}

uint64_t sub_100548C24()
{
  v1 = *(v0 + 136);
  if (v1[4])
  {
    v2 = v1[3];
    v3 = v1[4];
    goto LABEL_3;
  }

  v11 = v1[2];
  if (v11)
  {
    v12 = *(v11 + 24);
    if (v12)
    {
      v2 = *(v12 + 16);
      v3 = *(v12 + 24);
    }

    else
    {
      v3 = 0xEB00000000454C42;
      v2 = 0x414C494156414E55;
    }

LABEL_3:

    sub_10054AA0C(v2, v3, 0, (v0 + 16));

    v4 = v1[7];
    *(v0 + 248) = v4;
    if (v4)
    {
      v5 = swift_allocObject();
      v6 = *(v0 + 64);
      *(v5 + 56) = *(v0 + 48);
      *(v5 + 72) = v6;
      v7 = *(v0 + 96);
      *(v5 + 88) = *(v0 + 80);
      *(v5 + 104) = v7;
      v8 = *(v0 + 32);
      *(v5 + 24) = *(v0 + 16);
      *(v0 + 256) = v5;
      *(v5 + 16) = v4;
      *(v5 + 40) = v8;
      swift_retain_n();
      v9 = swift_task_alloc();
      *(v0 + 264) = v9;
      *v9 = v0;
      v9[1] = sub_100549028;
      v10.n128_u64[0] = 4.0;

      return withTaskTimeoutHandler<A>(timeout:operation:)(v10);
    }

    else
    {
      sub_10054B698(v0 + 16);
      defaultLogger()();
      v13 = Logger.logObject.getter();
      v14 = static os_log_type_t.debug.getter();
      v15 = os_log_type_enabled(v13, v14);
      v16 = *(v0 + 240);
      v17 = *(v0 + 216);
      v18 = *(v0 + 224);
      if (v15)
      {
        v19 = swift_slowAlloc();
        *v19 = 0;
        _os_log_impl(&_mh_execute_header, v13, v14, "No assessment static web service provided; skipping profile fetch", v19, 2u);
      }

      (*(v18 + 8))(v16, v17);

      v20 = *(v0 + 8);

      return v20(0, 0);
    }
  }

  (*(*(v0 + 200) + 104))(*(v0 + 208), enum case for DIPError.Code.badLogic(_:), *(v0 + 192));
  sub_1000402AC(_swiftEmptyArrayStorage);
  sub_100037214();
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v21 = *(v0 + 8);

  return v21();
}

uint64_t sub_100549028()
{
  *(*v1 + 272) = v0;

  if (v0)
  {
    v2 = sub_1005491F8;
  }

  else
  {

    v2 = sub_100549144;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100549144()
{

  v2 = v0[14];
  v1 = v0[15];

  v3 = v0[1];

  return v3(v2, v1);
}

uint64_t sub_1005491F8()
{
  v1 = v0[34];

  v0[16] = v1;
  swift_errorRetain();
  sub_100007224(&qword_100833B90, &qword_1006D95C0);
  v2 = swift_dynamicCast();
  v3 = v0[28];
  v4 = v0[29];
  v5 = v0[26];
  v6 = v0[27];
  v7 = v0[24];
  v8 = v0[25];
  if (v2)
  {
    v16 = v0[27];
    v17 = v0[22];
    v9 = v0[20];
    v18 = v0[21];
    v19 = v0[23];
    v11 = v0[18];
    v10 = v0[19];

    (*(v8 + 104))(v5, enum case for DIPError.Code.timeoutNetworkFetchProfile(_:), v7);
    sub_1000402AC(_swiftEmptyArrayStorage);
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    sub_100037214();
    swift_allocError();
    (*(v10 + 16))(v12, v9, v11);
    defaultLogger()();
    DIPRecordError(_:message:log:)();

    (*(v3 + 8))(v4, v16);
    (*(v10 + 8))(v9, v11);

    (*(v17 + 8))(v19, v18);

    v13 = v0[1];

    return v13(0, 0);
  }

  else
  {

    defaultLogger()();
    DIPRecordError(_:message:log:)();
    (*(v3 + 8))(v4, v6);
    (*(v8 + 104))(v5, enum case for DIPError.Code.internalError(_:), v7);
    swift_errorRetain();
    sub_1000402AC(_swiftEmptyArrayStorage);
    sub_100037214();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    v15 = v0[1];

    return v15();
  }
}

uint64_t sub_100549604(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  v5 = swift_task_alloc();
  *(v3 + 24) = v5;
  *v5 = v3;
  v5[1] = sub_1005496A8;

  return sub_1005A8714(a3, 0);
}

uint64_t sub_1005496A8(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *v3;

  if (v2)
  {
    v8 = *(v7 + 8);

    return v8();
  }

  else
  {
    *(v6 + 32) = a2;
    *(v6 + 40) = a1;

    return _swift_task_switch(sub_100549804, 0, 0);
  }
}

uint64_t sub_100549804()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 16);
  *v2 = *(v0 + 40);
  v2[1] = v1;
  return (*(v0 + 8))();
}

void sub_100549828()
{
  v1 = type metadata accessor for DIPError.Code();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v58 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Logger();
  v60 = *(v5 - 8);
  v6 = __chkstk_darwin(v5);
  v8 = &v58 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v58 - v9;
  v11 = type metadata accessor for String.Encoding();
  __chkstk_darwin(v11 - 8);
  v12 = v0[6];
  if (v12)
  {
    v59 = v5;
    v61 = v0[5];
    v62 = v4;
    v13 = v12;
  }

  else
  {
    v33 = v0[2];
    if (!v33)
    {
      defaultLogger()();
      v49 = Logger.logObject.getter();
      v50 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v49, v50))
      {
        v51 = swift_slowAlloc();
        *v51 = 0;
        _os_log_impl(&_mh_execute_header, v49, v50, "Skipping fallback profile because no provider ID is available", v51, 2u);
      }

      (v60)[1](v8, v5);
      return;
    }

    v62 = v4;
    v34 = *(v33 + 24);
    v59 = v5;
    if (v34)
    {
      v13 = *(v34 + 72);
      v61 = *(v34 + 64);
    }

    else
    {
      v13 = 0xEB00000000454C42;
      v61 = 0x414C494156414E55;
    }
  }

  v14 = objc_allocWithZone(NSBundle);

  v15 = String._bridgeToObjectiveC()();
  v16 = [v14 initWithPath:v15];

  if (!v16)
  {

    v63 = "s/CoreIDVShared.framework";
    (*(v2 + 104))(v62, enum case for DIPError.Code.filesystemError(_:), v1);
    sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
    v35 = (sub_100007224(&qword_1008341D0, &unk_1006BF8D0) - 8);
    v36 = (*(*v35 + 80) + 32) & ~*(*v35 + 80);
    v37 = swift_allocObject();
    *(v37 + 16) = xmmword_1006BF520;
    v38 = v37 + v36;
    v39 = (v38 + v35[14]);
    v40 = enum case for DIPError.PropertyKey.filesystemPath(_:);
    v41 = type metadata accessor for DIPError.PropertyKey();
    (*(*(v41 - 8) + 104))(v38, v40, v41);
    v39[3] = &type metadata for String;
    v39[4] = &protocol witness table for String;
    *v39 = 0xD000000000000039;
    v39[1] = 0x800000010071EF10;
    sub_10003C9C0(v37);
    swift_setDeallocating();
    sub_10000BE18(v38, &qword_1008341D0, &unk_1006BF8D0);
    swift_deallocClassInstance();
    type metadata accessor for DIPError();
    sub_100037214();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    return;
  }

  v17 = v61;
  sub_10054A688(v61, v13);
  if (!v18)
  {
    v63 = "getFallbackProfile()";
    (*(v2 + 104))(v62, enum case for DIPError.Code.badLogic(_:), v1);
    sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
    v60 = v16;
    v42 = (sub_100007224(&qword_1008341D0, &unk_1006BF8D0) - 8);
    v43 = (*(*v42 + 80) + 32) & ~*(*v42 + 80);
    v44 = swift_allocObject();
    *(v44 + 16) = xmmword_1006BF520;
    v45 = v44 + v43;
    v46 = (v45 + v42[14]);
    v47 = enum case for DIPError.PropertyKey.spProviderID(_:);
    v48 = type metadata accessor for DIPError.PropertyKey();
    (*(*(v48 - 8) + 104))(v45, v47, v48);
    v46[3] = &type metadata for String;
    v46[4] = &protocol witness table for String;
    *v46 = v17;
    v46[1] = v13;
    sub_10003C9C0(v44);
    swift_setDeallocating();
    sub_10000BE18(v45, &qword_1008341D0, &unk_1006BF8D0);
    swift_deallocClassInstance();
    type metadata accessor for DIPError();
    sub_100037214();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    goto LABEL_13;
  }

  v19 = String._bridgeToObjectiveC()();

  v20 = String._bridgeToObjectiveC()();
  v21 = [v16 pathForResource:v19 ofType:0 inDirectory:v20];

  if (v21)
  {

    v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v24 = v23;

    static String.Encoding.utf8.getter();
    v25 = v63;
    String.init(contentsOfFile:encoding:)();
    if (v25)
    {
      v61 = "e fallback profile filename";
      (*(v2 + 104))(v62, enum case for DIPError.Code.filesystemError(_:), v1);
      sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
      v60 = v16;
      v63 = v25;
      v26 = (sub_100007224(&qword_1008341D0, &unk_1006BF8D0) - 8);
      v27 = (*(*v26 + 80) + 32) & ~*(*v26 + 80);
      v28 = swift_allocObject();
      *(v28 + 16) = xmmword_1006BF520;
      v29 = v28 + v27;
      v30 = (v29 + v26[14]);
      v31 = enum case for DIPError.PropertyKey.filesystemPath(_:);
      v32 = type metadata accessor for DIPError.PropertyKey();
      (*(*(v32 - 8) + 104))(v29, v31, v32);
      v30[3] = &type metadata for String;
      v30[4] = &protocol witness table for String;
      *v30 = v22;
      v30[1] = v24;
      sub_10003C9C0(v28);
      swift_setDeallocating();
      sub_10000BE18(v29, &qword_1008341D0, &unk_1006BF8D0);
      swift_deallocClassInstance();
      type metadata accessor for DIPError();
      sub_100037214();
      swift_allocError();
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      swift_willThrow();

LABEL_13:

      return;
    }
  }

  else
  {
    defaultLogger()();

    v52 = Logger.logObject.getter();
    v53 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v52, v53))
    {
      v54 = v16;
      v55 = swift_slowAlloc();
      v56 = swift_slowAlloc();
      v64 = v56;
      *v55 = 136446210;
      v57 = sub_100141FE4(v61, v13, &v64);

      *(v55 + 4) = v57;
      _os_log_impl(&_mh_execute_header, v52, v53, "No fallback profile was found for workflow %{public}s", v55, 0xCu);
      sub_10000BB78(v56);
    }

    else
    {
    }

    (v60)[1](v10, v59);
  }
}

uint64_t sub_10054A390()
{

  return swift_deallocClassInstance();
}

unint64_t sub_10054A40C(unint64_t result)
{
  if (result)
  {
    v1 = result;
    swift_stdlib_random();
    if (-v1 % v1)
    {
      while (1)
      {
        swift_stdlib_random();
      }
    }

    return 0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_10054A498(unint64_t result)
{
  if (result)
  {
    v1 = result;
    swift_stdlib_random();
    result = (0 * v1) >> 64;
    if (-v1 % v1)
    {
      while (1)
      {
        swift_stdlib_random();
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_10054A524(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (qword_100832B60 != -1)
  {
    swift_once();
  }

  v10 = *(qword_100881E78 + 16);
  os_unfair_lock_lock(v10 + 54);
  sub_100031B5C(&v10[4], v16);
  os_unfair_lock_unlock(v10 + 54);
  v11 = v17;
  v12 = v18;
  sub_10001F640(v17, v18);
  sub_100031918(v16);
  if (v11)
  {
    v13 = v11(a1, a2, a5);
    sub_10001FE8C(v11, v12);
  }

  else
  {
    type metadata accessor for ProfileManager();
    v13 = swift_allocObject();
    sub_100007224(&unk_100848980, &qword_1006E7CC8);
    v14 = swift_allocObject();
    *(v14 + 16) = 0;
    *(v14 + 24) = 0;
    *(v14 + 32) = 0;
    v13[7] = a5;
    v13[8] = v14;
    v13[2] = 0;
    v13[3] = a1;
    v13[4] = a2;
    v13[5] = a3;
    v13[6] = a4;
  }

  return v13;
}

uint64_t sub_10054A688(uint64_t a1, uint64_t a2)
{
  v33 = type metadata accessor for Logger();
  v4 = *(v33 - 8);
  v5 = __chkstk_darwin(v33);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v32 - v8;
  v10 = type metadata accessor for String.Encoding();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = a1;
  v35 = a2;

  v14._countAndFlagsBits = 45;
  v14._object = 0xE100000000000000;
  String.append(_:)(v14);
  v15._object = 0x800000010071F010;
  v15._countAndFlagsBits = 0xD000000000000024;
  String.append(_:)(v15);
  static String.Encoding.utf8.getter();
  v16 = String.data(using:allowLossyConversion:)();
  v18 = v17;

  (*(v11 + 8))(v13, v10);
  if (v18 >> 60 == 15)
  {
    defaultLogger()();
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&_mh_execute_header, v19, v20, "Error converting fallback provider ID to data", v21, 2u);
    }

    (*(v4 + 8))(v7, v33);
  }

  else
  {
    isa = Data._bridgeToObjectiveC()().super.isa;
    v23 = DigestSha256();

    if (v23)
    {
      v24 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v26 = v25;

      countAndFlagsBits = Data.base16EncodedString()()._countAndFlagsBits;
      sub_10000B90C(v24, v26);
      sub_10000BD94(v16, v18);
      return countAndFlagsBits;
    }

    defaultLogger()();
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&_mh_execute_header, v29, v30, "Error hashing fallback provider ID", v31, 2u);
    }

    sub_10000BD94(v16, v18);

    (*(v4 + 8))(v9, v33);
  }

  return 0;
}

double sub_10054AA0C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t *a4@<X8>)
{
  v85 = a3;
  v98 = a1;
  v99 = a2;
  v97 = a4;
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v95 = v4;
  v96 = v5;
  v6 = __chkstk_darwin(v4);
  v84 = &v82 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v6);
  v82 = &v82 - v9;
  v10 = __chkstk_darwin(v8);
  v86 = &v82 - v11;
  v12 = __chkstk_darwin(v10);
  v83 = &v82 - v13;
  __chkstk_darwin(v12);
  v89 = &v82 - v14;
  v15 = type metadata accessor for Locale.Language();
  v87 = *(v15 - 8);
  v88 = v15;
  __chkstk_darwin(v15);
  v17 = &v82 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_100007224(&qword_10083DC48, &unk_1006DB7B0);
  __chkstk_darwin(v18 - 8);
  v20 = &v82 - v19;
  v100 = type metadata accessor for Locale();
  v21 = *(v100 - 8);
  v22 = __chkstk_darwin(v100);
  v24 = &v82 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v26 = &v82 - v25;
  v27 = sub_100007224(&unk_100849BA0, &qword_1006D95F0);
  __chkstk_darwin(v27 - 8);
  v29 = &v82 - v28;
  v30 = [objc_opt_self() mainBundle];
  v31 = [v30 infoDictionary];

  if (!v31 || (v32 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)(), v31, !v32))
  {
    v93 = 0x6E776F6E6B6E75;
    v94 = 0xE700000000000000;
    goto LABEL_15;
  }

  if (*(v32 + 16))
  {

    v33 = sub_10003ADCC(0x656C646E75424643, 0xEF6E6F6973726556);
    if (v34)
    {
      sub_10001F2EC(*(v32 + 56) + 32 * v33, v103);

      if (swift_dynamicCast())
      {
        v93 = v101;
        v94 = v102;
        if (!*(v32 + 16))
        {
          goto LABEL_14;
        }

        goto LABEL_11;
      }
    }

    else
    {
    }
  }

  v93 = 0x6E776F6E6B6E75;
  v94 = 0xE700000000000000;
  if (!*(v32 + 16))
  {
LABEL_14:

    goto LABEL_15;
  }

LABEL_11:
  v35 = sub_10003ADCC(0xD000000000000011, 0x8000000100706F10);
  if ((v36 & 1) == 0)
  {
    goto LABEL_14;
  }

  sub_10001F2EC(*(v32 + 56) + 32 * v35, v103);

  if (swift_dynamicCast())
  {
    v37 = 0x6E776F6E6B6E75;
    v91 = v101;
    v92 = v102;
    goto LABEL_16;
  }

LABEL_15:
  v91 = 0x6E776F6E6B6E75;
  v92 = 0xE700000000000000;
  v37 = 0x6E776F6E6B6E75;
LABEL_16:
  static Locale.current.getter();
  Locale.region.getter();
  v38 = *(v21 + 8);
  v38(v26, v100);
  v39 = type metadata accessor for Locale.Region();
  v40 = *(v39 - 8);
  if ((*(v40 + 48))(v29, 1, v39) == 1)
  {
    sub_10000BE18(v29, &unk_100849BA0, &qword_1006D95F0);
    v90 = 0xE700000000000000;
    v41 = 0x6E776F6E6B6E75;
  }

  else
  {
    v42 = Locale.Region.identifier.getter();
    v90 = v43;
    (*(v40 + 8))(v29, v39);
    v41 = 0x6E776F6E6B6E75;
    v37 = v42;
  }

  static Locale.current.getter();
  Locale.language.getter();
  v38(v24, v100);
  Locale.Language.languageCode.getter();
  (*(v87 + 8))(v17, v88);
  v44 = type metadata accessor for Locale.LanguageCode();
  v45 = *(v44 - 8);
  if ((*(v45 + 48))(v20, 1, v44) == 1)
  {
    sub_10000BE18(v20, &qword_10083DC48, &unk_1006DB7B0);
    v46 = 0xE700000000000000;
  }

  else
  {
    v41 = Locale.LanguageCode.identifier.getter();
    v46 = v47;
    (*(v45 + 8))(v20, v44);
  }

  v48 = v89;
  v49 = [objc_opt_self() standardUserDefaults];
  v50._countAndFlagsBits = static DaemonInternalDefaultsKeys.forceProfileBucket.getter();
  v51 = NSUserDefaults.internalString(forKey:)(v50);
  countAndFlagsBits = v51.value._countAndFlagsBits;
  object = v51.value._object;

  if (v51.value._object)
  {
    defaultLogger()();

    v54 = Logger.logObject.getter();
    v55 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      v57 = swift_slowAlloc();
      v103[0] = v57;
      *v56 = 136446210;
      *(v56 + 4) = sub_100141FE4(v51.value._countAndFlagsBits, v51.value._object, v103);
      _os_log_impl(&_mh_execute_header, v54, v55, "Forcing assessment bucket %{public}s due to user settings", v56, 0xCu);
      sub_10000BB78(v57);
    }

    (*(v96 + 8))(v48, v95);
    goto LABEL_26;
  }

  if (isInternalBuild()())
  {
    v64 = experimentalGroup()();
    v65 = v86;
    if (v64.value._object)
    {
      if (v64.value._countAndFlagsBits == 0x7972726163 && v64.value._object == 0xE500000000000000)
      {

LABEL_38:
        v71 = v83;
        defaultLogger()();
        v72 = Logger.logObject.getter();
        v73 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v72, v73))
        {
          v74 = swift_slowAlloc();
          *v74 = 0;
          _os_log_impl(&_mh_execute_header, v72, v73, "Selected assessment bucket 4", v74, 2u);
        }

        (*(v96 + 8))(v71, v95);
        object = 0xE100000000000000;
        countAndFlagsBits = 52;
        goto LABEL_26;
      }

      v70 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v70)
      {
        goto LABEL_38;
      }
    }

    defaultLogger()();
    v75 = Logger.logObject.getter();
    v76 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v75, v76))
    {
      v77 = swift_slowAlloc();
      *v77 = 0;
      _os_log_impl(&_mh_execute_header, v75, v76, "Selected assessment bucket 3", v77, 2u);
    }

    (*(v96 + 8))(v65, v95);
    object = 0xE100000000000000;
    countAndFlagsBits = 51;
  }

  else if ((v85 & 1) != 0 || sub_10054A498(0x64uLL))
  {
    v66 = v84;
    defaultLogger()();
    v67 = Logger.logObject.getter();
    v68 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v67, v68))
    {
      v69 = swift_slowAlloc();
      *v69 = 0;
      _os_log_impl(&_mh_execute_header, v67, v68, "Selected assessment bucket 1", v69, 2u);
    }

    (*(v96 + 8))(v66, v95);
    object = 0xE100000000000000;
    countAndFlagsBits = 49;
  }

  else
  {
    v78 = v82;
    defaultLogger()();
    v79 = Logger.logObject.getter();
    v80 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v79, v80))
    {
      v81 = swift_slowAlloc();
      *v81 = 0;
      _os_log_impl(&_mh_execute_header, v79, v80, "Selected assessment bucket 0", v81, 2u);
    }

    (*(v96 + 8))(v78, v95);
    object = 0xE100000000000000;
    countAndFlagsBits = 48;
  }

LABEL_26:
  v58 = v97;
  v59 = v99;
  *v97 = v98;
  v58[1] = v59;
  v60 = v92;
  v58[2] = v91;
  v58[3] = v60;
  v61 = v94;
  v58[4] = v93;
  v58[5] = v61;
  v62 = v90;
  v58[6] = v37;
  v58[7] = v62;
  v58[8] = v41;
  v58[9] = v46;
  v58[10] = countAndFlagsBits;
  v58[11] = object;

  return result;
}

void *sub_10054B4F4(uint64_t a1, uint64_t a2)
{
  if (qword_100832B60 != -1)
  {
    swift_once();
  }

  v4 = *(qword_100881E78 + 16);
  os_unfair_lock_lock(v4 + 54);
  sub_1000318FC(&v4[4], v15);
  os_unfair_lock_unlock(v4 + 54);
  v5 = v16;
  v6 = v17;
  sub_10001F640(v16, v17);
  sub_100031918(v15);
  if (v5)
  {
    v7 = v5(a1, a2);
    sub_10001FE8C(v5, v6);
  }

  else
  {
    type metadata accessor for ProfileManager();
    v7 = swift_allocObject();
    sub_100007224(&unk_100848980, &qword_1006E7CC8);
    v8 = swift_allocObject();
    *(v8 + 16) = 0;
    *(v8 + 24) = 0;
    *(v8 + 32) = 0;
    v7[2] = a1;
    v7[7] = a2;
    v7[8] = v8;
    if (a1)
    {
      v9 = *(a1 + 24);
      if (v9)
      {
        v11 = v9[2];
        v10 = v9[3];
        v13 = v9[8];
        v12 = v9[9];
      }

      else
      {
        v10 = 0xEB00000000454C42;
        v11 = 0x414C494156414E55;
        v13 = 0x414C494156414E55;
        v12 = 0xEB00000000454C42;
      }

      v7[3] = v11;
      v7[4] = v10;
      v7[5] = v13;
      v7[6] = v12;
    }

    else
    {
      *(v7 + 5) = 0u;
      *(v7 + 3) = 0u;
    }
  }

  return v7;
}

uint64_t sub_10054B6EC()
{

  return _swift_deallocObject(v0, 120, 7);
}

uint64_t sub_10054B754(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100027B9C;

  return sub_100549604(a1, v4, v1 + 24);
}

uint64_t sub_10054B800(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100041F04;

  return sub_100547F8C(a1);
}

double sub_10054B89C(void *a1)
{
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);

  *a1 = v4;
  a1[1] = v3;

  return result;
}

uint64_t sub_10054B8E8(int a1)
{
  v26 = a1;
  v1 = type metadata accessor for Logger();
  __chkstk_darwin(v1);
  v2 = type metadata accessor for URL();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v4);
  v9 = &v23 - v8;
  v10 = __chkstk_darwin(v7);
  v12 = &v23 - v11;
  __chkstk_darwin(v10);
  v14 = &v23 - v13;
  sub_10054FA40(&v23 - v13);
  (*(v3 + 8))(v14, v2);
  if (qword_100832B68 != -1)
  {
    swift_once();
  }

  sub_10003170C(v2, qword_100881E80);
  URL.appendingPathComponent(_:)();
  static URL.coreidvdBiomeManagedObjectModel.getter();
  (*(v3 + 16))(v6, v12, v2);
  type metadata accessor for AsyncCoreDataStore(0);
  v15 = swift_allocObject();
  v16 = OBJC_IVAR____TtC8coreidvd18AsyncCoreDataStore__container;
  sub_100007224(&qword_100847928, &unk_1006E7D20);
  v17 = swift_allocObject();
  *(v17 + 24) = 0;
  v25 = v6;
  v18 = v9;
  v19 = *(v3 + 8);
  v24 = NSURLFileProtectionCompleteUntilFirstUserAuthentication;
  v19(v12, v2);
  *(v15 + v16) = v17;
  *(v17 + 16) = 0;
  v20 = v15 + OBJC_IVAR____TtC8coreidvd18AsyncCoreDataStore_persistentStoreName;
  strcpy((v15 + OBJC_IVAR____TtC8coreidvd18AsyncCoreDataStore_persistentStoreName), "coreidvd-biome");
  *(v20 + 15) = -18;
  v21 = *(v3 + 32);
  v21(v15 + OBJC_IVAR____TtC8coreidvd18AsyncCoreDataStore_modelURL, v18, v2);
  v21(v15 + OBJC_IVAR____TtC8coreidvd18AsyncCoreDataStore_databaseURL, v25, v2);
  *(v15 + OBJC_IVAR____TtC8coreidvd18AsyncCoreDataStore_urlFileProtection) = v24;
  *(v15 + 16) = v26 & 1;
  *(v15 + OBJC_IVAR____TtC8coreidvd18AsyncCoreDataStore_automaticallyRemoveIncompatibleStoresOnMigrationError) = 0;
  result = v27;
  *(v27 + 16) = v15;
  return result;
}

uint64_t sub_10054BCA8()
{
  v2 = type metadata accessor for DIPError.Code();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(*(v0 + 16) + OBJC_IVAR____TtC8coreidvd18AsyncCoreDataStore__container);
  os_unfair_lock_lock((v6 + 24));
  sub_10054BEA0((v6 + 16), &v9);
  os_unfair_lock_unlock((v6 + 24));
  if (!v1)
  {
    return v9;
  }

  (*(v3 + 104))(v5, enum case for DIPError.Code.internalError(_:), v2);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_100037214();
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();
}

uint64_t sub_10054BEBC(int a1)
{
  v26 = a1;
  v1 = type metadata accessor for Logger();
  __chkstk_darwin(v1);
  v2 = type metadata accessor for URL();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v4);
  v9 = &v23 - v8;
  v10 = __chkstk_darwin(v7);
  v12 = &v23 - v11;
  __chkstk_darwin(v10);
  v14 = &v23 - v13;
  sub_10054FA40(&v23 - v13);
  (*(v3 + 8))(v14, v2);
  if (qword_100832B68 != -1)
  {
    swift_once();
  }

  sub_10003170C(v2, qword_100881E80);
  URL.appendingPathComponent(_:)();
  static URL.coreidvdManagedObjectModel.getter();
  (*(v3 + 16))(v6, v12, v2);
  type metadata accessor for AsyncCoreDataStore(0);
  v15 = swift_allocObject();
  v16 = OBJC_IVAR____TtC8coreidvd18AsyncCoreDataStore__container;
  sub_100007224(&qword_100847928, &unk_1006E7D20);
  v17 = swift_allocObject();
  *(v17 + 24) = 0;
  v25 = v6;
  v18 = v9;
  v19 = *(v3 + 8);
  v24 = NSURLFileProtectionCompleteUntilFirstUserAuthentication;
  v19(v12, v2);
  *(v15 + v16) = v17;
  *(v17 + 16) = 0;
  v20 = (v15 + OBJC_IVAR____TtC8coreidvd18AsyncCoreDataStore_persistentStoreName);
  *v20 = 0x6476646965726F63;
  v20[1] = 0xE800000000000000;
  v21 = *(v3 + 32);
  v21(v15 + OBJC_IVAR____TtC8coreidvd18AsyncCoreDataStore_modelURL, v18, v2);
  v21(v15 + OBJC_IVAR____TtC8coreidvd18AsyncCoreDataStore_databaseURL, v25, v2);
  *(v15 + OBJC_IVAR____TtC8coreidvd18AsyncCoreDataStore_urlFileProtection) = v24;
  *(v15 + 16) = v26 & 1;
  *(v15 + OBJC_IVAR____TtC8coreidvd18AsyncCoreDataStore_automaticallyRemoveIncompatibleStoresOnMigrationError) = 1;
  result = v27;
  *(v27 + 16) = v15;
  return result;
}

uint64_t sub_10054C274()
{
  v2 = type metadata accessor for DIPError.Code();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(*(v0 + 16) + OBJC_IVAR____TtC8coreidvd18AsyncCoreDataStore__container);
  os_unfair_lock_lock((v6 + 24));
  sub_10054BEA0((v6 + 16), &v9);
  os_unfair_lock_unlock((v6 + 24));
  if (!v1)
  {
    return v9;
  }

  (*(v3 + 104))(v5, enum case for DIPError.Code.internalError(_:), v2);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_100037214();
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();
}

void sub_10054C46C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_100007224(&qword_100834718, &qword_1006C0018);
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

  v8 = 0;
  while (v5)
  {
LABEL_15:
    v12 = __clz(__rbit64(v5)) | (v8 << 6);
    v13 = (*(a1 + 48) + 16 * v12);
    v15 = *v13;
    v14 = v13[1];
    sub_10001F2EC(*(a1 + 56) + 32 * v12, v35);
    *&v34 = v15;
    *(&v34 + 1) = v14;
    v32[2] = v34;
    v33[0] = v35[0];
    v33[1] = v35[1];
    v32[0] = v34;

    swift_dynamicCast();
    sub_10001F348(v33, v27);
    v28 = v24;
    v29 = v25;
    v30 = v26;
    sub_10001F348(v27, v31);
    v24 = v28;
    v25 = v29;
    v26 = v30;
    sub_10001F348(v31, v32);
    v16 = AnyHashable._rawHashValue(seed:)(v2[5]);
    v17 = -1 << *(v2 + 32);
    v18 = v16 & ~v17;
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
          v9 = __clz(__rbit64(~v23)) + (v19 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v9 = __clz(__rbit64((-1 << v18) & ~*&v7[8 * (v18 >> 6)])) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *&v7[(v9 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v9;
    v10 = v2[6] + 40 * v9;
    *v10 = v24;
    *(v10 + 16) = v25;
    *(v10 + 32) = v26;
    sub_10001F348(v32, (v2[7] + 32 * v9));
    ++v2[2];
  }

  while (1)
  {
    v11 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v11 >= v6)
    {

      return;
    }

    v5 = *(a1 + 64 + 8 * v11);
    ++v8;
    if (v5)
    {
      v8 = v11;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
}

void sub_10054C734(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_100007224(&qword_1008346F8, &qword_1006DA530);
    v2 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v2 = &_swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v11 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v11 >= v6)
    {

      return;
    }

    v5 = *(a1 + 64 + 8 * v11);
    ++v7;
    if (v5)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v13 = (*(a1 + 48) + ((v11 << 10) | (16 * v12)));
        v15 = *v13;
        v14 = v13[1];

        swift_dynamicCast();
        sub_10001F348(&v22, v24);
        sub_10001F348(v24, v25);
        sub_10001F348(v25, &v23);
        v16 = sub_10003ADCC(v15, v14);
        if (v17)
        {
          v8 = (v2[6] + 16 * v16);
          *v8 = v15;
          v8[1] = v14;
          v9 = v16;

          v10 = (v2[7] + 32 * v9);
          sub_10000BB78(v10);
          sub_10001F348(&v23, v10);
          v7 = v11;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_20;
          }

          *(v2 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v16;
          v18 = (v2[6] + 16 * v16);
          *v18 = v15;
          v18[1] = v14;
          sub_10001F348(&v23, (v2[7] + 32 * v16));
          v19 = v2[2];
          v20 = __OFADD__(v19, 1);
          v21 = v19 + 1;
          if (v20)
          {
            goto LABEL_21;
          }

          v2[2] = v21;
          v7 = v11;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v11 = v7;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
}

void sub_10054C98C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_100007224(&qword_100847D88, &unk_1006E7FB0);
    v1 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v1 = &_swiftEmptyDictionarySingleton;
  }

  v2 = 1 << *(a1 + 32);
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  else
  {
    v3 = -1;
  }

  v4 = v3 & *(a1 + 64);
  v5 = (v2 + 63) >> 6;
  v6 = v1 + 64;

  v7 = 0;
  while (v4)
  {
LABEL_15:
    v10 = __clz(__rbit64(v4)) | (v7 << 6);
    v11 = *(*(a1 + 48) + 8 * v10);
    v12 = (*(a1 + 56) + 16 * v10);
    v13 = v12[1];
    v25 = *v12;
    v26 = v13;
    v14 = v11;

    swift_dynamicCast();
    sub_10001F348((v27 + 8), v24);
    sub_10001F348(v24, v27);
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    Hasher.init(_seed:)();
    String.hash(into:)();
    v15 = Hasher._finalize()();

    v16 = -1 << v1[32];
    v17 = v15 & ~v16;
    v18 = v17 >> 6;
    if (((-1 << v17) & ~*&v6[8 * (v17 >> 6)]) == 0)
    {
      v19 = 0;
      v20 = (63 - v16) >> 6;
      while (++v18 != v20 || (v19 & 1) == 0)
      {
        v21 = v18 == v20;
        if (v18 == v20)
        {
          v18 = 0;
        }

        v19 |= v21;
        v22 = *&v6[8 * v18];
        if (v22 != -1)
        {
          v8 = __clz(__rbit64(~v22)) + (v18 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v8 = __clz(__rbit64((-1 << v17) & ~*&v6[8 * (v17 >> 6)])) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    *&v6[(v8 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v8;
    v4 &= v4 - 1;
    *(*(v1 + 6) + 8 * v8) = v14;
    sub_10001F348(v27, (*(v1 + 7) + 32 * v8));
    ++*(v1 + 2);
  }

  while (1)
  {
    v9 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v9 >= v5)
    {

      return;
    }

    v4 = *(a1 + 64 + 8 * v9);
    ++v7;
    if (v4)
    {
      v7 = v9;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
}

void sub_10054CC30(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_100007224(&qword_100834718, &qword_1006C0018);
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

  v8 = 0;
  while (v5)
  {
LABEL_15:
    v12 = (*(a1 + 48) + ((v8 << 10) | (16 * __clz(__rbit64(v5)))));
    v13 = v12[1];
    *&v30[0] = *v12;
    *(&v30[0] + 1) = v13;

    swift_dynamicCast();
    swift_dynamicCast();
    v26 = v22;
    v27 = v23;
    v28 = v24;
    sub_10001F348(&v25, v29);
    v22 = v26;
    v23 = v27;
    v24 = v28;
    sub_10001F348(v29, v30);
    v14 = AnyHashable._rawHashValue(seed:)(v2[5]);
    v15 = -1 << *(v2 + 32);
    v16 = v14 & ~v15;
    v17 = v16 >> 6;
    if (((-1 << v16) & ~*&v7[8 * (v16 >> 6)]) == 0)
    {
      v18 = 0;
      v19 = (63 - v15) >> 6;
      while (++v17 != v19 || (v18 & 1) == 0)
      {
        v20 = v17 == v19;
        if (v17 == v19)
        {
          v17 = 0;
        }

        v18 |= v20;
        v21 = *&v7[8 * v17];
        if (v21 != -1)
        {
          v9 = __clz(__rbit64(~v21)) + (v17 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v9 = __clz(__rbit64((-1 << v16) & ~*&v7[8 * (v16 >> 6)])) | v16 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *&v7[(v9 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v9;
    v10 = v2[6] + 40 * v9;
    *v10 = v22;
    *(v10 + 16) = v23;
    *(v10 + 32) = v24;
    sub_10001F348(v30, (v2[7] + 32 * v9));
    ++v2[2];
  }

  while (1)
  {
    v11 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v11 >= v6)
    {

      return;
    }

    v5 = *(a1 + 64 + 8 * v11);
    ++v8;
    if (v5)
    {
      v8 = v11;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
}

void sub_10054CEF8(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_100007224(&qword_100847D78, &qword_1006E7F98);
    v1 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v1 = &_swiftEmptyDictionarySingleton;
  }

  v2 = 1 << *(a1 + 32);
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  else
  {
    v3 = -1;
  }

  v4 = v3 & *(a1 + 64);
  v5 = (v2 + 63) >> 6;
  v6 = v1 + 8;

  v7 = 0;
  while (v4)
  {
LABEL_15:
    v10 = (v7 << 9) | (8 * __clz(__rbit64(v4)));
    v11 = *(*(a1 + 48) + v10);
    v23 = *(*(a1 + 56) + v10);
    v12 = v11;
    swift_dynamicCast();
    sub_10001F348((v24 + 8), v22);
    sub_10001F348(v22, v24);
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    Hasher.init(_seed:)();
    String.hash(into:)();
    v13 = Hasher._finalize()();

    v14 = -1 << *(v1 + 32);
    v15 = v13 & ~v14;
    v16 = v15 >> 6;
    if (((-1 << v15) & ~v6[v15 >> 6]) == 0)
    {
      v17 = 0;
      v18 = (63 - v14) >> 6;
      while (++v16 != v18 || (v17 & 1) == 0)
      {
        v19 = v16 == v18;
        if (v16 == v18)
        {
          v16 = 0;
        }

        v17 |= v19;
        v20 = v6[v16];
        if (v20 != -1)
        {
          v8 = __clz(__rbit64(~v20)) + (v16 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v8 = __clz(__rbit64((-1 << v15) & ~v6[v15 >> 6])) | v15 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    *(v6 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
    v4 &= v4 - 1;
    *(v1[6] + 8 * v8) = v12;
    sub_10001F348(v24, (v1[7] + 32 * v8));
    ++v1[2];
  }

  while (1)
  {
    v9 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v9 >= v5)
    {

      return;
    }

    v4 = *(a1 + 64 + 8 * v9);
    ++v7;
    if (v4)
    {
      v7 = v9;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
}

uint64_t sub_10054D194(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE700000000000000;
  v4 = 0x44454C4542414CLL;
  if (v2 != 1)
  {
    v4 = 0x44454C494146;
    v3 = 0xE600000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 5719374;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE300000000000000;
  }

  v7 = 0xE700000000000000;
  v8 = 0x44454C4542414CLL;
  if (*a2 != 1)
  {
    v8 = 0x44454C494146;
    v7 = 0xE600000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 5719374;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE300000000000000;
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

Swift::Int sub_10054D288()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_10054D320(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int sub_10054D3A4(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_10054D438@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10054EE88(*a1);
  *a2 = result;
  return result;
}

void sub_10054D468(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE300000000000000;
  v4 = 0xE700000000000000;
  v5 = 0x44454C4542414CLL;
  if (v2 != 1)
  {
    v5 = 0x44454C494146;
    v4 = 0xE600000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 5719374;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

void *sub_10054D4C0()
{

  sub_10054F450(v0 + OBJC_IVAR____TtC8coreidvd22DIPStoredVerifiedClaim_claim);

  return v0;
}

uint64_t sub_10054D554()
{
  sub_10054D4C0();

  return swift_deallocClassInstance();
}

uint64_t sub_10054D5D4(uint64_t a1)
{
  result = type metadata accessor for VerifiedClaim(319);
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_10054D690()
{
  v1 = 0x654B63696C627570;
  if (*v0 != 1)
  {
    v1 = 1752392040;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x65756C6176;
  }
}

uint64_t sub_10054D6E4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_10054EED4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_10054D70C(uint64_t a1)
{
  v2 = sub_10054E7FC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10054D748(uint64_t a1)
{
  v2 = sub_10054E7FC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10054D784()
{
  v1 = OBJC_IVAR____TtC8coreidvd28VerifiedEncryptedDataWrapper_value;
  v2 = sub_100007224(&unk_100849C00, &unk_1006BFC20);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

void sub_10054D87C(uint64_t a1)
{
  sub_10054DB2C(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_10054D918(void *a1)
{
  v3 = sub_100007224(&qword_100847D80, &unk_1006E7FA0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v8 - v5;
  sub_10000BA08(a1, a1[3]);
  sub_10054E7FC();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = 0;
  sub_100007224(&unk_100849C00, &unk_1006BFC20);
  sub_1000BA30C(&qword_10084A0A0, &unk_100849C00, &unk_1006BFC20, &protocol conformance descriptor for EncryptedMessage<A>);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (v1)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v10 = 1;
  KeyedEncodingContainer.encode(_:forKey:)();
  v9 = 2;
  KeyedEncodingContainer.encode(_:forKey:)();
  return (*(v4 + 8))(v6, v3);
}

void sub_10054DB2C(uint64_t a1)
{
  if (!qword_100847BD8)
  {
    sub_10000B870(&unk_10084A070, &unk_1006E7DF0);
    sub_1000AB6CC();
    sub_1000AB81C();
    v1 = type metadata accessor for EncryptedMessage();
    if (!v2)
    {
      atomic_store(v1, &qword_100847BD8);
    }
  }
}

uint64_t sub_10054DBC4(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for Date();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_10054DC84(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for Date();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_10054DD48(uint64_t a1)
{
  type metadata accessor for Date();
  if (v1 <= 0x3F)
  {
    sub_100133F18(319, &qword_100835140, &type metadata for String);
    if (v2 <= 0x3F)
    {
      sub_100133F18(319, &unk_100847CE0, &type metadata for DIPAssessmentBindings);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_10054DE50(void *a1)
{
  v3 = v1;
  v5 = sub_100007224(&unk_100849C00, &unk_1006BFC20);
  v22 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v21 - v6;
  v23 = sub_100007224(&qword_100847D40, &unk_1006E7F70);
  v8 = *(v23 - 8);
  __chkstk_darwin(v23);
  v10 = &v21 - v9;
  v11 = a1[3];
  v24 = a1;
  sub_10000BA08(a1, v11);
  sub_10054E7FC();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    type metadata accessor for VerifiedEncryptedDataWrapper(0);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v27 = 0;
    sub_1000BA30C(&qword_100847D50, &unk_100849C00, &unk_1006BFC20, &protocol conformance descriptor for EncryptedMessage<A>);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v22 + 32))(v3 + OBJC_IVAR____TtC8coreidvd28VerifiedEncryptedDataWrapper_value, v7, v5);
    v26 = 1;
    v12 = KeyedDecodingContainer.decode(_:forKey:)();
    v21 = v5;
    v13 = (v3 + OBJC_IVAR____TtC8coreidvd28VerifiedEncryptedDataWrapper_publicKey);
    *v13 = v12;
    v13[1] = v14;
    v25 = 2;
    v15 = v23;
    v17 = KeyedDecodingContainer.decode(_:forKey:)();
    v19 = v18;
    (*(v8 + 8))(v10, v15);
    v20 = (v3 + OBJC_IVAR____TtC8coreidvd28VerifiedEncryptedDataWrapper_hash);
    *v20 = v17;
    v20[1] = v19;
  }

  sub_10000BB78(v24);
  return v3;
}

uint64_t sub_10054E1EC@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  type metadata accessor for VerifiedEncryptedDataWrapper(0);
  v5 = swift_allocObject();
  result = sub_10054DE50(a1);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

Swift::Int sub_10054E26C()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int sub_10054E2D8(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_10054E328@<X0>(Swift::String *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&off_1007FC1C8, *a1);

  *a2 = v3 != 0;
  return result;
}

uint64_t sub_10054E3B0@<X0>(Swift::String string@<0:X0, 8:X1>, BOOL *a2@<X8>)
{
  object = string._object;
  v3._countAndFlagsBits = string._countAndFlagsBits;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&off_1007FC200, v3);

  *a2 = v5 != 0;
  return result;
}

uint64_t sub_10054E408(uint64_t a1)
{
  v2 = sub_10054F3FC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10054E444(uint64_t a1)
{
  v2 = sub_10054F3FC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10054E480(void *a1)
{
  v2 = sub_100007224(&qword_100847D70, &qword_1006E7F90);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v16[-1] - v4;
  sub_10000BA08(a1, a1[3]);
  sub_10054F3FC();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v6 = objc_opt_self();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  v16[0] = 0;
  v8 = [v6 dataWithJSONObject:isa options:0 error:v16];

  v9 = v16[0];
  if (v8)
  {
    v10 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = v11;

    v16[0] = v10;
    v16[1] = v12;
    sub_10000B9B4();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    (*(v3 + 8))(v5, v2);
    return sub_10000B90C(v10, v12);
  }

  else
  {
    v14 = v9;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    return (*(v3 + 8))(v5, v2);
  }
}

id sub_10054E6BC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  sub_10054C46C(*a1);
  v3 = objc_allocWithZone(NSDictionary);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v5 = [v3 initWithDictionary:isa];

  sub_10054C46C(v2);
  v6 = Dictionary._bridgeToObjectiveC()().super.isa;

  v7 = [v5 isEqualToDictionary:v6];

  return v7;
}

id sub_10054E7B0@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_10054EFF0(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

unint64_t sub_10054E7FC()
{
  result = qword_100847D48;
  if (!qword_100847D48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100847D48);
  }

  return result;
}

uint64_t sub_10054E850(uint64_t a1, uint64_t a2)
{
  v5 = *a1;
  v4 = *(a1 + 8);
  v7 = *a2;
  v6 = *(a2 + 8);
  if (v4 >> 60 == 15)
  {
    if (v6 >> 60 == 15)
    {
      sub_1000363B4(*a1, v4);
      sub_1000363B4(v7, v6);
      sub_10000BD94(v5, v4);
      goto LABEL_8;
    }

LABEL_5:
    sub_1000363B4(*a1, v4);
    sub_1000363B4(v7, v6);
    sub_10000BD94(v5, v4);
    sub_10000BD94(v7, v6);
    return 0;
  }

  if (v6 >> 60 == 15)
  {
    goto LABEL_5;
  }

  sub_1000363B4(*a1, v4);
  sub_1000363B4(v7, v6);
  v9 = sub_1000C31A0(v5, v4, v7, v6);
  sub_10000BD94(v7, v6);
  sub_10000BD94(v5, v4);
  if (!v9)
  {
    return 0;
  }

LABEL_8:
  if ((*(a1 + 16) != *(a2 + 16) || *(a1 + 24) != *(a2 + 24)) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v10 = *(a1 + 72);
  v11 = *(a2 + 72);
  if (v10)
  {
    if (!v11 || (*(a1 + 64) != *(a2 + 64) || v10 != v11) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v11)
  {
    return 0;
  }

  v12 = *(a1 + 88);
  v13 = *(a2 + 88);
  if (v12)
  {
    if (!v13 || (*(a1 + 80) != *(a2 + 80) || v12 != v13) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v13)
  {
    return 0;
  }

  if ((*(a1 + 96) != *(a2 + 96) || *(a1 + 104) != *(a2 + 104)) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || (*(a1 + 112) != *(a2 + 112) || *(a1 + 120) != *(a2 + 120)) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v14 = 5719374;
  if (*(a1 + 128))
  {
    if (*(a1 + 128) == 1)
    {
      v15 = 0xE700000000000000;
      v16 = 0x44454C4542414CLL;
    }

    else
    {
      v15 = 0xE600000000000000;
      v16 = 0x44454C494146;
    }
  }

  else
  {
    v15 = 0xE300000000000000;
    v16 = 5719374;
  }

  if (*(a2 + 128))
  {
    if (*(a2 + 128) == 1)
    {
      v17 = 0xE700000000000000;
      v14 = 0x44454C4542414CLL;
    }

    else
    {
      v17 = 0xE600000000000000;
      v14 = 0x44454C494146;
    }
  }

  else
  {
    v17 = 0xE300000000000000;
  }

  if (v16 == v14 && v15 == v17)
  {
  }

  else
  {
    v18 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v18 & 1) == 0)
    {
      return 0;
    }
  }

  v19 = *(a1 + 144);
  v20 = *(a2 + 144);
  if (v19)
  {
    if (v20 && (*(a1 + 136) == *(a2 + 136) && v19 == v20 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
    {
      goto LABEL_52;
    }

    return 0;
  }

  if (v20)
  {
    return 0;
  }

LABEL_52:
  if (*(a1 + 152) == *(a2 + 152) && *(a1 + 160) == *(a2 + 160))
  {
    return 1;
  }

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

BOOL sub_10054EBA4(uint64_t *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v5 = type metadata accessor for DIPPregeneratedAssessment(0);
  if ((static Date.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v6 = v5[6];
  v7 = *(a1 + v6);
  v8 = *(a1 + v6 + 8);
  v9 = (a2 + v6);
  v10 = v7 == *v9 && v8 == v9[1];
  if (!v10 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v11 = v5[7];
  v12 = (a1 + v11);
  v13 = *(a1 + v11 + 8);
  v14 = (a2 + v11);
  v15 = v14[1];
  if (v13)
  {
    if (!v15)
    {
      return 0;
    }

    v16 = *v12 == *v14 && v13 == v15;
    if (!v16 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v15)
  {
    return 0;
  }

  v17 = v5[8];
  v18 = *(a1 + v17);
  v19 = *(a1 + v17 + 8);
  v20 = (a2 + v17);
  v21 = v18 == *v20 && v19 == v20[1];
  if (!v21 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v22 = v5[9];
  v23 = *(a1 + v22);
  v24 = *(a1 + v22 + 8);
  v25 = (a2 + v22);
  if ((v23 != *v25 || v24 != v25[1]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v26 = v5[10];
  v27 = *(a1 + v26);
  v28 = *(a1 + v26 + 8);
  v29 = (a2 + v26);
  if ((v27 != *v29 || v28 != v29[1]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v30 = v5[11];
  v31 = *(a1 + v30);
  v32 = *(a1 + v30 + 8);
  v33 = (a2 + v30);
  if ((v31 != *v33 || v32 != v33[1]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v34 = v5[12];
  v35 = *(a1 + v34);
  v36 = *(a1 + v34 + 8);
  v37 = (a2 + v34);
  if ((v35 != *v37 || v36 != v37[1]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  if (*(a1 + v5[13]) != *(a2 + v5[13]))
  {
    return 0;
  }

  v38 = v5[14];
  v39 = *(a1 + v38);
  v40 = *(a2 + v38);
  result = (v39 | v40) == 0;
  if (v39)
  {
    if (v40)
    {

      sub_10054C46C(v39);
      v42 = objc_allocWithZone(NSDictionary);
      isa = Dictionary._bridgeToObjectiveC()().super.isa;

      v44 = [v42 initWithDictionary:isa];

      sub_10054C46C(v40);
      v45 = Dictionary._bridgeToObjectiveC()().super.isa;

      v46 = [v44 isEqualToDictionary:v45];

      return v46;
    }
  }

  return result;
}

unint64_t sub_10054EE88(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1007FC160, v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_10054EED4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x65756C6176 && a2 == 0xE500000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x654B63696C627570 && a2 == 0xE900000000000079 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1752392040 && a2 == 0xE400000000000000)
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

id sub_10054EFF0(void *a1)
{
  v3 = type metadata accessor for DIPError.Code();
  v22 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100007224(&qword_100847D58, &qword_1006E7F80);
  v23 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v18 - v7;
  v9 = sub_10000BA08(a1, a1[3]);
  sub_10054F3FC();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    goto LABEL_10;
  }

  v20 = v5;
  v21 = a1;
  v19 = v3;
  sub_10000B960();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v11 = v25[0];
  v10 = v25[1];
  v12 = objc_opt_self();
  isa = Data._bridgeToObjectiveC()().super.isa;
  v25[0] = 0;
  v14 = [v12 JSONObjectWithData:isa options:0 error:v25];

  v9 = v25[0];
  if (!v14)
  {
    v16 = v25[0];
    _convertNSErrorToError(_:)();

    goto LABEL_8;
  }

  v15 = v25[0];
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  sub_100007224(&qword_100847D68, &qword_1006E7F88);
  if ((swift_dynamicCast() & 1) == 0)
  {
    (*(v22 + 104))(v20, enum case for DIPError.Code.internalError(_:), v19);
    v9 = sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100037214();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
LABEL_8:
    swift_willThrow();
    sub_10000B90C(v11, v10);
    (*(v23 + 8))(v8, v6);
    a1 = v21;
LABEL_10:
    sub_10000BB78(a1);
    return v9;
  }

  (*(v23 + 8))(v8, v6);
  sub_10000B90C(v11, v10);
  v9 = v24;
  sub_10000BB78(v21);
  return v9;
}

unint64_t sub_10054F3FC()
{
  result = qword_100847D60;
  if (!qword_100847D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100847D60);
  }

  return result;
}

uint64_t sub_10054F450(uint64_t a1)
{
  v2 = type metadata accessor for VerifiedClaim(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10054F4C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_100007224(&qword_100847538, &unk_1006E83A0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 52);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_10054F590(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = sub_100007224(&qword_100847538, &unk_1006E83A0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 52);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_10054F660(uint64_t a1)
{
  sub_100133F18(319, &qword_10083AA40, &type metadata for Data);
  if (v1 <= 0x3F)
  {
    sub_100133F18(319, &qword_100835140, &type metadata for String);
    if (v2 <= 0x3F)
    {
      sub_10054F750(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_10054F750(uint64_t a1)
{
  if (!qword_100846C08)
  {
    type metadata accessor for OTDRequest(255);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_100846C08);
    }
  }
}

unint64_t sub_10054F7DC()
{
  result = qword_100847E48;
  if (!qword_100847E48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100847E48);
  }

  return result;
}

unint64_t sub_10054F834()
{
  result = qword_100847E50;
  if (!qword_100847E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100847E50);
  }

  return result;
}

unint64_t sub_10054F88C()
{
  result = qword_100847E58;
  if (!qword_100847E58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100847E58);
  }

  return result;
}

unint64_t sub_10054F8E4()
{
  result = qword_100847E60;
  if (!qword_100847E60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100847E60);
  }

  return result;
}

unint64_t sub_10054F93C()
{
  result = qword_100847E68;
  if (!qword_100847E68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100847E68);
  }

  return result;
}

unint64_t sub_10054F994()
{
  result = qword_100847E70;
  if (!qword_100847E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100847E70);
  }

  return result;
}

unint64_t sub_10054F9EC()
{
  result = qword_100847E78;
  if (!qword_100847E78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100847E78);
  }

  return result;
}

uint64_t sub_10054FA40@<X0>(uint64_t a1@<X8>)
{
  v62 = a1;
  v1 = type metadata accessor for DIPError.Code();
  v59 = *(v1 - 8);
  v60 = v1;
  __chkstk_darwin(v1);
  v3 = &v54 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Logger();
  v64 = *(v4 - 8);
  v65 = v4;
  v5 = __chkstk_darwin(v4);
  v7 = &v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v54 - v8;
  v10 = type metadata accessor for URL();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = [objc_opt_self() defaultManager];
  if (qword_100832B68 != -1)
  {
    swift_once();
  }

  v15 = sub_10003170C(v10, qword_100881E80);
  (*(v11 + 16))(v13, v15, v10);
  v67 = 0;
  URL.path.getter();
  v16 = String._bridgeToObjectiveC()();

  v17 = [v14 fileExistsAtPath:v16 isDirectory:&v67];

  if (v17)
  {
    if (v67 == 1)
    {

      return (*(v11 + 32))(v62, v13, v10);
    }

    URL._bridgeToObjectiveC()(v67);
    v19 = v18;
    v68 = 0;
    v20 = [v14 removeItemAtURL:v18 error:&v68];

    if (!v20)
    {
      v53 = v68;
      _convertNSErrorToError(_:)();

      goto LABEL_17;
    }

    v21 = v68;
  }

  v57 = v14;
  v58 = v13;
  v61 = v3;
  v22 = URL.path.getter();
  v24 = v23;
  defaultLogger()();

  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v55 = v7;
    v29 = v22;
    v30 = v24;
    v31 = v28;
    v68 = v28;
    *v27 = 136315138;
    *(v27 + 4) = sub_100141FE4(v29, v30, &v68);
    _os_log_impl(&_mh_execute_header, v25, v26, "Creating directory %s", v27, 0xCu);
    sub_10000BB78(v31);
    v24 = v30;
    v22 = v29;
    v7 = v55;
  }

  v32 = *(v64 + 8);
  v32(v9, v65);
  S_IRUSR.getter();
  S_IWUSR.getter();
  S_IXUSR.getter();
  String.utf8CString.getter();
  v33 = rootless_mkdir_datavault();

  if (!v33)
  {

    v13 = v58;
    return (*(v11 + 32))(v62, v13, v10);
  }

  v62 = v11;
  v63 = v10;
  v34 = errno.getter();
  defaultLogger()();
  v35 = Logger.logObject.getter();
  v36 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    *v37 = 67109120;
    *(v37 + 4) = v34;
    _os_log_impl(&_mh_execute_header, v35, v36, "error creating directory : %d", v37, 8u);
  }

  v56 = v24;

  v32(v7, v65);
  v68 = 0;
  v69 = 0xE000000000000000;
  _StringGuts.grow(_:)(43);

  v68 = 0xD000000000000019;
  v69 = 0x800000010071F4C0;
  v38._countAndFlagsBits = v22;
  v38._object = v24;
  String.append(_:)(v38);
  v39._countAndFlagsBits = 0x206F742065756420;
  v39._object = 0xEE00206F6E727265;
  String.append(_:)(v39);
  v66 = v34;
  v40._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v40);

  v64 = v69;
  v65 = v68;
  (*(v59 + 104))(v61, enum case for DIPError.Code.filesystemError(_:), v60);
  sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
  v41 = sub_100007224(&qword_1008341D0, &unk_1006BF8D0);
  v42 = *(v41 - 8);
  v60 = *(v42 + 72);
  v43 = (*(v42 + 80) + 32) & ~*(v42 + 80);
  v44 = swift_allocObject();
  *(v44 + 16) = xmmword_1006BF740;
  v45 = v44 + v43;
  v46 = v44 + v43 + *(v41 + 48);
  v47 = enum case for DIPError.PropertyKey.underlyingErrno(_:);
  v48 = type metadata accessor for DIPError.PropertyKey();
  v49 = *(*(v48 - 8) + 104);
  v59 = v22;
  (v49)(v45, v47, v48);
  *(v46 + 24) = &type metadata for Int32;
  *(v46 + 32) = &protocol witness table for Int32;
  *v46 = v34;
  v50 = (v45 + v60 + *(v41 + 48));
  v49();
  v50[3] = &type metadata for String;
  v50[4] = &protocol witness table for String;
  v51 = v56;
  *v50 = v59;
  v50[1] = v51;
  sub_10003C9C0(v44);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  type metadata accessor for DIPError();
  sub_10057628C(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  v11 = v62;
  v10 = v63;
  v14 = v57;
  v13 = v58;
LABEL_17:
  swift_willThrow();

  return (*(v11 + 8))(v13, v10);
}

void *sub_100550300()
{
  type metadata accessor for DIPSqliteLocalStore();
  swift_allocObject();
  result = sub_10055033C();
  qword_1008823D8 = result;
  return result;
}

void *sub_10055033C()
{
  v10 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v1 = *(v10 - 8);
  __chkstk_darwin(v10);
  v3 = v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v4);
  v5 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v5 - 8);
  v6 = sub_10017ABC8();
  v9[0] = "deleteDatabase()";
  v9[1] = v6;
  static DispatchQoS.unspecified.getter();
  v11 = _swiftEmptyArrayStorage;
  sub_10057628C(&qword_1008465A0, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_100007224(&unk_1008458B0, &qword_1006BF8A0);
  sub_1000BA30C(&qword_1008465B0, &unk_1008458B0, &qword_1006BF8A0, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v1 + 104))(v3, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v10);
  v0[2] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v0[3] = 0xD000000000000011;
  v0[4] = 0x800000010071F4A0;
  v0[5] = 0;
  v7 = [objc_opt_self() defaultManager];
  v0[7] = 0;
  v0[8] = 0;
  v0[6] = v7;
  sub_1005507F8();
  return v0;
}

uint64_t sub_1005505EC()
{
  v1 = *(v0 + 16);
  v2 = swift_allocObject();
  *(v2 + 16) = sub_10057621C;
  *(v2 + 24) = v0;
  v6[4] = sub_10026CBB8;
  v6[5] = v2;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 1107296256;
  v6[2] = sub_10057E264;
  v6[3] = &unk_100816B00;
  v3 = _Block_copy(v6);
  v4 = v1;

  dispatch_sync(v4, v3);

  _Block_release(v3);
  LOBYTE(v3) = swift_isEscapingClosureAtFileLocation();

  if (v3)
  {
    __break(1u);
  }

  else
  {

    return v0;
  }

  return result;
}

sqlite3 *sub_100550754(uint64_t a1)
{
  swift_beginAccess();
  result = *(a1 + 40);
  if (result)
  {
    result = sqlite3_close_v2(result);
    *(a1 + 40) = 0;
  }

  return result;
}

uint64_t sub_1005507A0()
{
  sub_1005505EC();

  return swift_deallocClassInstance();
}

uint64_t sub_1005507F8()
{
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v51 = &v39 - v6;
  v7 = type metadata accessor for DIPError.Code();
  v45 = *(v7 - 8);
  v46 = v7;
  __chkstk_darwin(v7);
  v47 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DIPError();
  v49 = *(v9 - 8);
  v50 = v9;
  __chkstk_darwin(v9);
  v48 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = type metadata accessor for URL();
  v11 = *(v52 - 8);
  v12 = __chkstk_darwin(v52);
  v14 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v39 - v15;
  sub_10054FA40(&v39 - v15);
  URL.appendingPathComponent(_:)();
  *(v0 + 56) = URL.path.getter();
  *(v0 + 64) = v17;

  URL._bridgeToObjectiveC()(v18);
  v20 = v19;
  v53 = 0;
  v21 = [v19 setResourceValue:NSURLFileProtectionCompleteUntilFirstUserAuthentication forKey:NSURLFileProtectionKey error:&v53];

  if (v21)
  {
    v22 = v53;
  }

  else
  {
    v44 = v1;
    v23 = v2;
    v24 = v53;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    defaultLogger()();
    swift_errorRetain();
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.info.getter();

    v43 = v26;
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v42 = v23;
      v28 = v27;
      v41 = swift_slowAlloc();
      v53 = v41;
      *v28 = 136315138;
      swift_getErrorValue();
      v39 = v25;
      v29 = Error.localizedDescription.getter();
      v31 = sub_100141FE4(v29, v30, &v53);
      v40 = v5;
      v32 = v31;

      *(v28 + 4) = v32;
      v33 = v44;
      v34 = v39;
      _os_log_impl(&_mh_execute_header, v39, v43, "Ignoring error when changing file protection: %s", v28, 0xCu);
      sub_10000BB78(v41);

      v35 = v42;

      (*(v35 + 8))(v40, v33);
    }

    else
    {

      (*(v23 + 8))(v5, v44);
    }
  }

  sub_100550E88(v14);
  v36 = *(v11 + 8);
  v37 = v52;
  v36(v14, v52);
  return (v36)(v16, v37);
}

const char *sub_100550E88(uint64_t a1)
{
  v2 = type metadata accessor for DIPError.Code();
  v76 = *(v2 - 8);
  v77 = v2;
  __chkstk_darwin(v2);
  v78 = &v69 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v69 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v72 = &v69 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v79 = &v69 - v13;
  v14 = __chkstk_darwin(v12);
  v73 = &v69 - v15;
  v16 = __chkstk_darwin(v14);
  v71 = &v69 - v17;
  v18 = __chkstk_darwin(v16);
  v74 = &v69 - v19;
  v20 = __chkstk_darwin(v18);
  v75 = &v69 - v21;
  v22 = __chkstk_darwin(v20);
  v80 = &v69 - v23;
  __chkstk_darwin(v22);
  v25 = &v69 - v24;
  defaultLogger()();
  v26 = *(v5 + 16);
  v85 = a1;
  v82 = v4;
  v26(v7, a1, v4);
  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v69 = v9;
    v30 = v29;
    v31 = swift_slowAlloc();
    v84[0] = v31;
    *v30 = 136315138;
    v32 = URL.path.getter();
    v70 = v8;
    v34 = v33;
    (*(v5 + 8))(v7, v82);
    v35 = sub_100141FE4(v32, v34, v84);
    v8 = v70;

    *(v30 + 4) = v35;
    _os_log_impl(&_mh_execute_header, v27, v28, "coreidvd: database at %s", v30, 0xCu);
    sub_10000BB78(v31);

    v36 = *(v69 + 8);
  }

  else
  {

    (*(v5 + 8))(v7, v82);
    v36 = *(v9 + 8);
  }

  v36(v25, v8);
  URL.path.getter();
  v37 = String.utf8CString.getter();

  v38 = v83;
  swift_beginAccess();
  v39 = sqlite3_open_v2((v37 + 32), (v38 + 40), 3145730, 0);
  swift_endAccess();

  if (v39)
  {
    if (v39 == 23)
    {
      (*(v76 + 104))(v78, enum case for DIPError.Code.deviceLocked(_:), v77);
      sub_1000402AC(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_10057628C(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
      swift_allocError();
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      return swift_willThrow();
    }

    else
    {
      defaultLogger()();
      v45 = Logger.logObject.getter();
      v46 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v45, v46))
      {
        v47 = swift_slowAlloc();
        *v47 = 67109120;
        *(v47 + 4) = v39;
        _os_log_impl(&_mh_execute_header, v45, v46, "coreidvd: error opening file, removing and recreating database: sqlite error code %d", v47, 8u);
      }

      v36(v80, v8);
      v48 = v81;
      result = sub_100551CDC(v85);
      if (!v48)
      {
        v49 = v75;
        defaultLogger()();
        v50 = Logger.logObject.getter();
        v51 = static os_log_type_t.info.getter();
        if (os_log_type_enabled(v50, v51))
        {
          v52 = swift_slowAlloc();
          *v52 = 0;
          _os_log_impl(&_mh_execute_header, v50, v51, "coreidvd: finished creating tables", v52, 2u);
        }

        return (v36)(v49, v8);
      }
    }
  }

  else
  {
    v41 = v81;
    sub_100553BD0();
    if (v41)
    {
      defaultLogger()();
      v42 = Logger.logObject.getter();
      v43 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v42, v43))
      {
        v44 = swift_slowAlloc();
        *v44 = 0;
        _os_log_impl(&_mh_execute_header, v42, v43, "coreidvd: error during schema migration, re-creating database", v44, 2u);
      }

      v36(v79, v8);
      sub_100551CDC(v85);
      v64 = v72;
      defaultLogger()();
      v65 = Logger.logObject.getter();
      v66 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v65, v66))
      {
        v68 = swift_slowAlloc();
        *v68 = 0;
        _os_log_impl(&_mh_execute_header, v65, v66, "coreidvd: finished reloading tables", v68, 2u);
      }

      return (v36)(v64, v8);
    }

    else
    {
      if ((sub_100555910() & 1) == 0)
      {
        defaultLogger()();
        v53 = Logger.logObject.getter();
        v54 = static os_log_type_t.info.getter();
        if (os_log_type_enabled(v53, v54))
        {
          v55 = swift_slowAlloc();
          *v55 = 0;
          _os_log_impl(&_mh_execute_header, v53, v54, "coreidvd: invalid tables, re-creating", v55, 2u);
        }

        v36(v74, v8);
        sub_100551CDC(v85);
        v56 = v71;
        defaultLogger()();
        v57 = Logger.logObject.getter();
        v58 = static os_log_type_t.info.getter();
        if (os_log_type_enabled(v57, v58))
        {
          v59 = swift_slowAlloc();
          *v59 = 0;
          _os_log_impl(&_mh_execute_header, v57, v58, "coreidvd: finished reloading tables", v59, 2u);
        }

        v36(v56, v8);
      }

      v60 = v73;
      defaultLogger()();
      v61 = Logger.logObject.getter();
      v62 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v61, v62))
      {
        v63 = swift_slowAlloc();
        *v63 = 0;
        _os_log_impl(&_mh_execute_header, v61, v62, "coreidvd: successfully retrieved database", v63, 2u);
      }

      return (v36)(v60, v8);
    }
  }

  return result;
}

id sub_1005518C8(uint64_t a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DIPError.Code();
  __chkstk_darwin(v6);
  if (*(a1 + 64))
  {
    v9 = *(a1 + 56);
    swift_beginAccess();
    v10 = *(a1 + 40);

    if (v10)
    {
      sqlite3_close_v2(v10);
      *(a1 + 40) = 0;
    }

    defaultLogger()();
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v22 = v9;
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v11, v12, "coreidvd: deleting database", v13, 2u);
    }

    (*(v3 + 8))(v5, v2);
    v14 = *(a1 + 48);
    v15 = String._bridgeToObjectiveC()();
    v16 = [v14 fileExistsAtPath:v15];

    if (!v16)
    {
    }

    v17 = *(a1 + 48);
    v18 = String._bridgeToObjectiveC()();

    v23 = 0;
    v19 = [v17 removeItemAtPath:v18 error:&v23];

    if (v19)
    {
      return v23;
    }

    v21 = v23;
    _convertNSErrorToError(_:)();
  }

  else
  {
    (*(v8 + 104))(&v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), enum case for DIPError.Code.unexpectedDaemonState(_:));
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_10057628C(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  }

  return swift_willThrow();
}

const char *sub_100551CDC(uint64_t a1)
{
  v3 = v1;
  v99 = type metadata accessor for URLResourceValues();
  v98 = *(v99 - 8);
  __chkstk_darwin(v99);
  v108 = &v94 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = type metadata accessor for DIPError.Code();
  v104 = *(v105 - 8);
  __chkstk_darwin(v105);
  v109 = &v94 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = type metadata accessor for Logger();
  v102 = *(v103 - 1);
  v7 = __chkstk_darwin(v103);
  v94 = &v94 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v95 = &v94 - v10;
  __chkstk_darwin(v9);
  v100 = &v94 - v11;
  v12 = type metadata accessor for URL();
  __chkstk_darwin(v12);
  v14 = &v94 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v110 = v15;
  v16 = *(v15 + 16);
  v111 = v17;
  v107 = v15 + 16;
  v106 = v16;
  (v16)(v14, a1);
  swift_beginAccess();
  v18 = *(v3 + 40);
  if (v18)
  {
    sqlite3_close_v2(v18);
    *(v3 + 40) = 0;
  }

  v19 = *(v3 + 48);
  URL.path.getter();
  v20 = String._bridgeToObjectiveC()();

  v112 = 0;
  v21 = [v19 removeItemAtPath:v20 error:&v112];

  if (v21)
  {
    v101 = v2;
    v22 = v112;
  }

  else
  {
    v23 = v112;
    _convertNSErrorToError(_:)();

    swift_willThrow();

    v101 = 0;
  }

  v97 = v3;
  v24 = *(v3 + 48);
  URL.path.getter();
  v25 = String._bridgeToObjectiveC()();

  sub_100007224(&qword_1008480B8, &unk_1006E8390);
  inited = swift_initStackObject();
  v96 = xmmword_1006BF740;
  *(inited + 16) = xmmword_1006BF740;
  *(inited + 32) = NSFileProtectionKey;
  type metadata accessor for FileProtectionType(0);
  *(inited + 40) = NSFileProtectionCompleteUntilFirstUserAuthentication;
  *(inited + 64) = v27;
  *(inited + 72) = NSFilePosixPermissions;
  v28 = NSFileProtectionKey;
  v29 = NSFileProtectionCompleteUntilFirstUserAuthentication;
  v30 = NSFilePosixPermissions;
  v31 = S_IRUSR.getter();
  v32 = S_IWUSR.getter();
  *(inited + 104) = &type metadata for UInt16;
  *(inited + 80) = v32 | v31;
  sub_10003D8B8(inited);
  swift_setDeallocating();
  sub_100007224(&qword_100834870, &qword_1006C00C0);
  swift_arrayDestroy();
  type metadata accessor for FileAttributeKey(0);
  sub_10057628C(&unk_1008341B0, type metadata accessor for FileAttributeKey, &unk_1006BF3B0);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  LOBYTE(v31) = [v24 createFileAtPath:v25 contents:0 attributes:isa];

  if ((v31 & 1) == 0)
  {
    v36 = v14;
    v38 = v100;
    defaultLogger()();
    v39 = Logger.logObject.getter();
    v40 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      *v41 = 0;
      _os_log_impl(&_mh_execute_header, v39, v40, "coreidvd: error creating new database", v41, 2u);
    }

    (*(v102 + 8))(v38, v103);
    v108 = "PRAGMA user_version=1.0";
    (*(v104 + 104))(v109, enum case for DIPError.Code.sqliteError(_:), v105);
    sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
    v42 = (sub_100007224(&qword_1008341D0, &unk_1006BF8D0) - 8);
    v43 = (*(*v42 + 80) + 32) & ~*(*v42 + 80);
    v44 = swift_allocObject();
    *(v44 + 16) = xmmword_1006BF520;
    v45 = (v44 + v43 + v42[14]);
    v46 = enum case for DIPError.PropertyKey.filesystemPath(_:);
    v47 = type metadata accessor for DIPError.PropertyKey();
    (*(*(v47 - 8) + 104))(v44 + v43, v46, v47);
    v37 = v111;
    v45[3] = v111;
    v45[4] = sub_10057628C(&qword_1008418B0, &type metadata accessor for URL, &protocol conformance descriptor for URL);
    v48 = sub_100032DBC(v45);
    v106(v48, v36, v37);
    sub_10003C9C0(v44);
    swift_setDeallocating();
    sub_10000BE18(v44 + v43, &qword_1008341D0, &unk_1006BF8D0);
    swift_deallocClassInstance();
    type metadata accessor for DIPError();
    sub_10057628C(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    return (*(v110 + 8))(v36, v37);
  }

  v34 = v108;
  URLResourceValues.init()();
  URLResourceValues.isExcludedFromBackup.setter();
  v35 = v101;
  URL.setResourceValues(_:)();
  v36 = v14;
  if (v35)
  {
    (*(v98 + 8))(v34, v99);
    v37 = v111;
    return (*(v110 + 8))(v36, v37);
  }

  URL.path.getter();
  v49 = String.utf8CString.getter();

  v50 = v97;
  swift_beginAccess();
  v51 = sqlite3_open_v2((v49 + 32), (v50 + 40), 3145730, 0);
  swift_endAccess();

  if (v51)
  {
    result = sqlite3_errmsg(*(v50 + 40));
    if (result)
    {
      v101 = v36;
      v53 = String.init(cString:)();
      v55 = v54;
      v56 = v95;
      defaultLogger()();
      v57 = Logger.logObject.getter();
      v58 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v57, v58))
      {
        v59 = swift_slowAlloc();
        *v59 = 0;
        _os_log_impl(&_mh_execute_header, v57, v58, "coreidvd: error creating database", v59, 2u);
      }

      (*(v102 + 8))(v56, v103);
      v112 = 0;
      v113 = 0xE000000000000000;
      _StringGuts.grow(_:)(30);

      v112 = 0xD00000000000001CLL;
      v113 = 0x8000000100721570;
      v60._countAndFlagsBits = v53;
      v60._object = v55;
      String.append(_:)(v60);

      v103 = v112;
      v102 = v113;
      (*(v104 + 104))(v109, enum case for DIPError.Code.sqliteError(_:), v105);
      sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
      v61 = sub_100007224(&qword_1008341D0, &unk_1006BF8D0);
      v62 = *(*(v61 - 8) + 72);
      v63 = (*(*(v61 - 8) + 80) + 32) & ~*(*(v61 - 8) + 80);
      v64 = swift_allocObject();
      *(v64 + 16) = v96;
      v65 = v64 + v63;
      v66 = v65 + *(v61 + 48);
      v67 = enum case for DIPError.PropertyKey.underlyingErrno(_:);
      v68 = type metadata accessor for DIPError.PropertyKey();
      v69 = *(*(v68 - 8) + 104);
      (v69)(v65, v67, v68);
      v70 = sqlite3_errcode(*(v97 + 40));
      *(v66 + 24) = &type metadata for Int32;
      *(v66 + 32) = &protocol witness table for Int32;
      *v66 = v70;
      v71 = (v65 + v62 + *(v61 + 48));
      v69();
      v72 = v111;
      v71[3] = v111;
      v71[4] = sub_10057628C(&qword_1008418B0, &type metadata accessor for URL, &protocol conformance descriptor for URL);
      v73 = sub_100032DBC(v71);
      v36 = v101;
      v106(v73, v101, v72);
      sub_10003C9C0(v64);
      swift_setDeallocating();
      swift_arrayDestroy();
      swift_deallocClassInstance();
      type metadata accessor for DIPError();
      sub_10057628C(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
      swift_allocError();
LABEL_17:
      v37 = v72;
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      swift_willThrow();
      (*(v98 + 8))(v108, v99);
      return (*(v110 + 8))(v36, v37);
    }

    __break(1u);
  }

  else
  {
    sub_100553BD0();
    if (!sqlite3_exec(*(v50 + 40), "PRAGMA cache_size=512;", 0, 0, 0))
    {
      (*(v98 + 8))(v34, v99);
      return (*(v110 + 8))(v36, v111);
    }

    result = sqlite3_errmsg(*(v50 + 40));
    if (result)
    {
      v101 = v36;
      v74 = String.init(cString:)();
      v76 = v75;
      v77 = v94;
      defaultLogger()();
      v78 = Logger.logObject.getter();
      v79 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v78, v79))
      {
        v80 = swift_slowAlloc();
        *v80 = 0;
        _os_log_impl(&_mh_execute_header, v78, v79, "coreidvd: error setting cache size", v80, 2u);
      }

      (*(v102 + 8))(v77, v103);
      v112 = 0;
      v113 = 0xE000000000000000;
      _StringGuts.grow(_:)(28);

      v112 = 0xD00000000000001ALL;
      v113 = 0x80000001007215B0;
      v81._countAndFlagsBits = v74;
      v81._object = v76;
      String.append(_:)(v81);

      v103 = v112;
      v102 = v113;
      (*(v104 + 104))(v109, enum case for DIPError.Code.sqliteError(_:), v105);
      sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
      v82 = sub_100007224(&qword_1008341D0, &unk_1006BF8D0);
      v105 = v82;
      v83 = *(*(v82 - 8) + 72);
      v84 = (*(*(v82 - 8) + 80) + 32) & ~*(*(v82 - 8) + 80);
      v85 = swift_allocObject();
      *(v85 + 16) = v96;
      v86 = v85 + v84;
      v87 = v86 + *(v82 + 48);
      v88 = enum case for DIPError.PropertyKey.underlyingErrno(_:);
      v89 = type metadata accessor for DIPError.PropertyKey();
      v90 = *(*(v89 - 8) + 104);
      (v90)(v86, v88, v89);
      v91 = sqlite3_errcode(*(v50 + 40));
      *(v87 + 24) = &type metadata for Int32;
      *(v87 + 32) = &protocol witness table for Int32;
      *v87 = v91;
      v92 = (v86 + v83 + *(v105 + 48));
      v90();
      v72 = v111;
      v92[3] = v111;
      v92[4] = sub_10057628C(&qword_1008418B0, &type metadata accessor for URL, &protocol conformance descriptor for URL);
      v93 = sub_100032DBC(v92);
      v36 = v101;
      v106(v93, v101, v72);
      sub_10003C9C0(v85);
      swift_setDeallocating();
      swift_arrayDestroy();
      swift_deallocClassInstance();
      type metadata accessor for DIPError();
      sub_10057628C(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
      swift_allocError();
      goto LABEL_17;
    }
  }

  __break(1u);
  return result;
}

const char *sub_100552F38(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DIPError.Code();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 > 2)
  {
    if (a1 == 3)
    {
      v35 = v9;
      v40 = v10;
      goto LABEL_11;
    }

    if (a1 == 4)
    {
      v35 = v9;
      v40 = v10;
      goto LABEL_11;
    }

LABEL_8:
    v38 = 0;
    v39 = 0xE000000000000000;
    v13 = v10;
    _StringGuts.grow(_:)(28);

    v38 = 0xD00000000000001ALL;
    v39 = 0x8000000100721450;
    v36 = a1;
    v14._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v14);

    (*(v9 + 104))(v12, enum case for DIPError.Code.badLogic(_:), v13);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_10057628C(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    goto LABEL_16;
  }

  if (a1 == 1)
  {
    v35 = v9;
    v40 = v10;
    goto LABEL_11;
  }

  if (a1 != 2)
  {
    goto LABEL_8;
  }

  v35 = v9;
  v40 = v10;
LABEL_11:
  swift_beginAccess();
  v15 = *(v2 + 40);
  v16 = String.utf8CString.getter();

  LODWORD(v15) = sqlite3_exec(v15, (v16 + 32), 0, 0, 0);

  if (!v15)
  {
    return result;
  }

  v34 = v12;
  result = sqlite3_errmsg(*(v2 + 40));
  if (!result)
  {
    __break(1u);
    return result;
  }

  v18 = String.init(cString:)();
  v20 = v19;
  defaultLogger()();
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    *v23 = 0;
    _os_log_impl(&_mh_execute_header, v21, v22, "coreidvd: error updating user version", v23, 2u);
  }

  (*(v5 + 8))(v7, v4);
  v36 = 0;
  v37 = 0xE000000000000000;
  _StringGuts.grow(_:)(31);

  v36 = 0xD00000000000001DLL;
  v37 = 0x80000001007214B0;
  v24._countAndFlagsBits = v18;
  v24._object = v20;
  String.append(_:)(v24);

  v33 = v36;
  (*(v35 + 104))(v34, enum case for DIPError.Code.sqliteError(_:), v40);
  sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
  v25 = (sub_100007224(&qword_1008341D0, &unk_1006BF8D0) - 8);
  v26 = (*(*v25 + 80) + 32) & ~*(*v25 + 80);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_1006BF520;
  v28 = v27 + v26;
  v29 = v28 + v25[14];
  v30 = enum case for DIPError.PropertyKey.underlyingErrno(_:);
  v31 = type metadata accessor for DIPError.PropertyKey();
  (*(*(v31 - 8) + 104))(v28, v30, v31);
  v32 = sqlite3_errcode(*(v2 + 40));
  *(v29 + 24) = &type metadata for Int32;
  *(v29 + 32) = &protocol witness table for Int32;
  *v29 = v32;
  sub_10003C9C0(v27);
  swift_setDeallocating();
  sub_10000BE18(v28, &qword_1008341D0, &unk_1006BF8D0);
  swift_deallocClassInstance();
  type metadata accessor for DIPError();
  sub_10057628C(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
  swift_allocError();
LABEL_16:
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  return swift_willThrow();
}

const char *sub_1005535D8()
{
  v1 = type metadata accessor for DIPError.Code();
  v33 = *(v1 - 8);
  __chkstk_darwin(v1);
  v3 = &v30 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = type metadata accessor for Logger();
  v4 = *(v34 - 8);
  __chkstk_darwin(v34);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  ppStmt = 0;
  swift_beginAccess();
  v7 = *(v0 + 40);
  v8 = String.utf8CString.getter();
  LODWORD(v7) = sqlite3_prepare_v3(v7, (v8 + 32), -1, 0, &ppStmt, 0);

  if (!v7)
  {
    if (sqlite3_step(ppStmt) != 100)
    {
      v28 = 0;
      goto LABEL_12;
    }

    v29 = sqlite3_column_double(ppStmt, 0);
    if ((*&v29 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v29 > -9.22337204e18)
    {
      if (v29 < 9.22337204e18)
      {
        v28 = v29;
LABEL_12:
        sqlite3_finalize(ppStmt);
        return v28;
      }

LABEL_16:
      __break(1u);
    }

    __break(1u);
    goto LABEL_16;
  }

  v31 = v1;
  v32 = v0;
  result = sqlite3_errmsg(*(v0 + 40));
  if (result)
  {
    v10 = String.init(cString:)();
    v12 = v11;
    defaultLogger()();

    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = v10;
      v17 = v3;
      v18 = swift_slowAlloc();
      v35 = v18;
      *v15 = 136446210;
      *(v15 + 4) = sub_100141FE4(v16, v12, &v35);
      _os_log_impl(&_mh_execute_header, v13, v14, "coreidvd: failed to getting user version select statement: %{public}s", v15, 0xCu);
      sub_10000BB78(v18);
      v3 = v17;
      v10 = v16;
    }

    (*(v4 + 8))(v6, v34);
    v35 = 0;
    v36 = 0xE000000000000000;
    _StringGuts.grow(_:)(44);

    v35 = 0xD00000000000002ALL;
    v36 = 0x8000000100721400;
    v19._countAndFlagsBits = v10;
    v19._object = v12;
    String.append(_:)(v19);

    (*(v33 + 104))(v3, enum case for DIPError.Code.sqliteError(_:), v31);
    sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
    v20 = (sub_100007224(&qword_1008341D0, &unk_1006BF8D0) - 8);
    v21 = (*(*v20 + 80) + 32) & ~*(*v20 + 80);
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_1006BF520;
    v23 = v22 + v21;
    v24 = v22 + v21 + v20[14];
    v25 = enum case for DIPError.PropertyKey.underlyingErrno(_:);
    v26 = type metadata accessor for DIPError.PropertyKey();
    (*(*(v26 - 8) + 104))(v23, v25, v26);
    v27 = sqlite3_errcode(*(v32 + 40));
    *(v24 + 24) = &type metadata for Int32;
    *(v24 + 32) = &protocol witness table for Int32;
    *v24 = v27;
    sub_10003C9C0(v22);
    swift_setDeallocating();
    sub_10000BE18(v23, &qword_1008341D0, &unk_1006BF8D0);
    swift_deallocClassInstance();
    v28 = type metadata accessor for DIPError();
    sub_10057628C(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    return v28;
  }

  __break(1u);
  return result;
}

const char *sub_100553BD0()
{
  v208 = type metadata accessor for DIPError.Code();
  v210 = *(v208 - 8);
  __chkstk_darwin(v208);
  v209 = &v194 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v214 = type metadata accessor for Logger();
  v211 = *(v214 - 8);
  v2 = __chkstk_darwin(v214);
  v204 = &v194 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __chkstk_darwin(v2);
  v207 = &v194 - v5;
  v6 = __chkstk_darwin(v4);
  v206 = &v194 - v7;
  v8 = __chkstk_darwin(v6);
  v203 = &v194 - v9;
  v10 = __chkstk_darwin(v8);
  v213 = &v194 - v11;
  v12 = __chkstk_darwin(v10);
  v212 = &v194 - v13;
  v14 = __chkstk_darwin(v12);
  v205 = &v194 - v15;
  v16 = __chkstk_darwin(v14);
  v18 = &v194 - v17;
  v19 = __chkstk_darwin(v16);
  v21 = &v194 - v20;
  v22 = __chkstk_darwin(v19);
  v24 = &v194 - v23;
  v25 = __chkstk_darwin(v22);
  v27 = &v194 - v26;
  v28 = __chkstk_darwin(v25);
  v30 = &v194 - v29;
  v31 = __chkstk_darwin(v28);
  v33 = &v194 - v32;
  v34 = __chkstk_darwin(v31);
  v36 = &v194 - v35;
  __chkstk_darwin(v34);
  v38 = &v194 - v37;
  v39 = v221;
  result = sub_1005535D8();
  if (!v39)
  {
    v221 = result;
    v197 = v36;
    v200 = v33;
    v196 = v30;
    v195 = v27;
    v194 = v24;
    v198 = v21;
    v199 = v18;
    v41 = v211;
    v202 = v0;
    v201 = 0;
    defaultLogger()();
    v42 = Logger.logObject.getter();
    v43 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      *v44 = 134349056;
      *(v44 + 4) = v221;
      _os_log_impl(&_mh_execute_header, v42, v43, "Current schema version is %{public}ld", v44, 0xCu);
    }

    v45 = *(v41 + 8);
    v46 = v214;
    result = v45(v38, v214);
    v47 = v212;
    v48 = v213;
    if (v221 > 1)
    {
      if (v221 == 2)
      {
        defaultLogger()();
        v124 = Logger.logObject.getter();
        v125 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v124, v125))
        {
          v126 = swift_slowAlloc();
          *v126 = 0;
          _os_log_impl(&_mh_execute_header, v124, v125, "Migrating schema to version 4", v126, 2u);
        }

        v45(v47, v46);
        v127 = v202;
        swift_beginAccess();
        v128 = *(v127 + 40);
        v129 = String.utf8CString.getter();
        LODWORD(v128) = sqlite3_exec(v128, (v129 + 32), 0, 0, 0);

        v130 = v210;
        if (v128)
        {
          result = sqlite3_errmsg(*(v127 + 40));
          if (result)
          {
            v131 = String.init(cString:)();
            v133 = v132;
            defaultLogger()();
            v134 = Logger.logObject.getter();
            v135 = static os_log_type_t.error.getter();
            if (os_log_type_enabled(v134, v135))
            {
              v136 = swift_slowAlloc();
              *v136 = 0;
              _os_log_impl(&_mh_execute_header, v134, v135, "coreidvd: error altering table pregenerated assessments", v136, 2u);
              v46 = v214;
            }

            v45(v48, v46);
            v215 = 0;
            v216 = 0xE000000000000000;
            _StringGuts.grow(_:)(49);

            v215 = 0xD00000000000002FLL;
            v216 = 0x8000000100720C80;
            v137._countAndFlagsBits = v131;
            v137._object = v133;
            String.append(_:)(v137);

            (*(v130 + 104))(v209, enum case for DIPError.Code.sqliteError(_:), v208);
            sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
            v138 = (sub_100007224(&qword_1008341D0, &unk_1006BF8D0) - 8);
            v139 = (*(*v138 + 80) + 32) & ~*(*v138 + 80);
            v140 = swift_allocObject();
            *(v140 + 16) = xmmword_1006BF520;
            v141 = v140 + v139;
            v142 = v141 + v138[14];
            v143 = enum case for DIPError.PropertyKey.underlyingErrno(_:);
            v144 = type metadata accessor for DIPError.PropertyKey();
            (*(*(v144 - 8) + 104))(v141, v143, v144);
            v145 = sqlite3_errcode(*(v202 + 40));
            *(v142 + 24) = &type metadata for Int32;
            *(v142 + 32) = &protocol witness table for Int32;
            *v142 = v145;
            sub_10003C9C0(v140);
            swift_setDeallocating();
            sub_10000BE18(v141, &qword_1008341D0, &unk_1006BF8D0);
            swift_deallocClassInstance();
            type metadata accessor for DIPError();
            sub_10057628C(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
            swift_allocError();
            goto LABEL_57;
          }

          goto LABEL_68;
        }

        v169 = v201;
        result = sub_100552F38(4);
        if (v169)
        {
          return result;
        }

        v146 = v203;
      }

      else
      {
        if (v221 != 3)
        {
          return result;
        }

        v76 = v206;
        defaultLogger()();
        v77 = Logger.logObject.getter();
        v78 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v77, v78))
        {
          v79 = swift_slowAlloc();
          *v79 = 0;
          _os_log_impl(&_mh_execute_header, v77, v78, "Migrating schema to version 4", v79, 2u);
          v76 = v206;
        }

        v45(v76, v46);
        v80 = v202;
        swift_beginAccess();
        v81 = *(v80 + 40);
        v82 = String.utf8CString.getter();
        LODWORD(v81) = sqlite3_exec(v81, (v82 + 32), 0, 0, 0);

        if (v81)
        {
          result = sqlite3_errmsg(*(v80 + 40));
          if (result)
          {
            v83 = String.init(cString:)();
            v85 = v84;
            defaultLogger()();
            v86 = Logger.logObject.getter();
            v87 = static os_log_type_t.error.getter();
            v88 = os_log_type_enabled(v86, v87);
            v89 = v210;
            if (v88)
            {
              v90 = swift_slowAlloc();
              *v90 = 0;
              _os_log_impl(&_mh_execute_header, v86, v87, "coreidvd: error altering table pregenerated assessments", v90, 2u);
              v46 = v214;
            }

            v45(v207, v46);
            v215 = 0;
            v216 = 0xE000000000000000;
            _StringGuts.grow(_:)(49);

            v215 = 0xD00000000000002FLL;
            v216 = 0x8000000100720C80;
            v91._countAndFlagsBits = v83;
            v91._object = v85;
            String.append(_:)(v91);

            (*(v89 + 104))(v209, enum case for DIPError.Code.sqliteError(_:), v208);
            sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
            v92 = (sub_100007224(&qword_1008341D0, &unk_1006BF8D0) - 8);
            v93 = (*(*v92 + 80) + 32) & ~*(*v92 + 80);
            v94 = swift_allocObject();
            *(v94 + 16) = xmmword_1006BF520;
            v95 = v94 + v93;
            v96 = v95 + v92[14];
            v97 = enum case for DIPError.PropertyKey.underlyingErrno(_:);
            v98 = type metadata accessor for DIPError.PropertyKey();
            (*(*(v98 - 8) + 104))(v95, v97, v98);
            v99 = sqlite3_errcode(*(v202 + 40));
            *(v96 + 24) = &type metadata for Int32;
            *(v96 + 32) = &protocol witness table for Int32;
            *v96 = v99;
            sub_10003C9C0(v94);
            swift_setDeallocating();
            sub_10000BE18(v95, &qword_1008341D0, &unk_1006BF8D0);
            swift_deallocClassInstance();
            type metadata accessor for DIPError();
            sub_10057628C(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
            swift_allocError();
            goto LABEL_57;
          }

LABEL_66:
          __break(1u);
          goto LABEL_67;
        }

        v150 = v201;
        result = sub_100552F38(4);
        if (v150)
        {
          return result;
        }

        v146 = v204;
      }

      defaultLogger()();
      v147 = Logger.logObject.getter();
      v170 = static os_log_type_t.debug.getter();
      if (!os_log_type_enabled(v147, v170))
      {
LABEL_60:

        return v45(v146, v46);
      }

      v171 = swift_slowAlloc();
      *v171 = 0;
      _os_log_impl(&_mh_execute_header, v147, v170, "Done migrating schema to version 4", v171, 2u);
LABEL_51:

      goto LABEL_60;
    }

    v49 = v201;
    v50 = v210;
    if (v221)
    {
      if (v221 != 1)
      {
        return result;
      }

      goto LABEL_7;
    }

    v100 = v197;
    defaultLogger()();
    v101 = Logger.logObject.getter();
    v102 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v101, v102))
    {
      v103 = swift_slowAlloc();
      *v103 = 0;
      _os_log_impl(&_mh_execute_header, v101, v102, "Migrating schema to version 1", v103, 2u);
    }

    v45(v100, v46);
    v104 = v202;
    swift_beginAccess();
    v105 = *(v104 + 40);
    v106 = String.utf8CString.getter();
    v107 = sqlite3_exec(v105, (v106 + 32), 0, 0, 0);

    v108 = *(v104 + 40);
    if (v107)
    {
      result = sqlite3_errmsg(*(v104 + 40));
      if (!result)
      {
LABEL_67:
        __break(1u);
LABEL_68:
        __break(1u);
LABEL_69:
        __break(1u);
        goto LABEL_70;
      }

      v109 = String.init(cString:)();
      v111 = v110;
      defaultLogger()();
      v112 = Logger.logObject.getter();
      v113 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v112, v113))
      {
        v114 = swift_slowAlloc();
        *v114 = 0;
        _os_log_impl(&_mh_execute_header, v112, v113, "coreidvd: error creating table signalmap", v114, 2u);
        v46 = v214;
      }

      v45(v200, v46);
      v219 = 0;
      v220 = 0xE000000000000000;
      _StringGuts.grow(_:)(32);

      v219 = 0xD00000000000001ELL;
      v220 = 0x80000001007210E0;
      v115._countAndFlagsBits = v109;
      v115._object = v111;
      String.append(_:)(v115);

      (*(v50 + 104))(v209, enum case for DIPError.Code.sqliteError(_:), v208);
      sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
      v116 = (sub_100007224(&qword_1008341D0, &unk_1006BF8D0) - 8);
      v117 = (*(*v116 + 80) + 32) & ~*(*v116 + 80);
      v118 = swift_allocObject();
      *(v118 + 16) = xmmword_1006BF520;
      v119 = v118 + v117;
      v120 = v119 + v116[14];
      v121 = enum case for DIPError.PropertyKey.underlyingErrno(_:);
      v122 = type metadata accessor for DIPError.PropertyKey();
      (*(*(v122 - 8) + 104))(v119, v121, v122);
      v123 = sqlite3_errcode(*(v202 + 40));
      *(v120 + 24) = &type metadata for Int32;
      *(v120 + 32) = &protocol witness table for Int32;
      *v120 = v123;
      sub_10003C9C0(v118);
      swift_setDeallocating();
      sub_10000BE18(v119, &qword_1008341D0, &unk_1006BF8D0);
      swift_deallocClassInstance();
      type metadata accessor for DIPError();
      sub_10057628C(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
      swift_allocError();
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      return swift_willThrow();
    }

    else
    {
      v151 = String.utf8CString.getter();
      v152 = sqlite3_exec(v108, (v151 + 32), 0, 0, 0);

      v153 = *(v104 + 40);
      if (v152)
      {
        result = sqlite3_errmsg(*(v104 + 40));
        if (result)
        {
          v154 = String.init(cString:)();
          v156 = v155;
          defaultLogger()();
          v157 = Logger.logObject.getter();
          v158 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v157, v158))
          {
            v159 = swift_slowAlloc();
            *v159 = 0;
            _os_log_impl(&_mh_execute_header, v157, v158, "coreidvd: error creating table verifiedclaim", v159, 2u);
            v46 = v214;
          }

          v45(v196, v46);
          v219 = 0;
          v220 = 0xE000000000000000;
          _StringGuts.grow(_:)(38);

          v219 = 0xD000000000000024;
          v220 = 0x8000000100721270;
          v160._countAndFlagsBits = v154;
          v160._object = v156;
          String.append(_:)(v160);

          (*(v50 + 104))(v209, enum case for DIPError.Code.sqliteError(_:), v208);
          sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
          v161 = (sub_100007224(&qword_1008341D0, &unk_1006BF8D0) - 8);
          v162 = (*(*v161 + 80) + 32) & ~*(*v161 + 80);
          v163 = swift_allocObject();
          *(v163 + 16) = xmmword_1006BF520;
          v164 = v163 + v162;
          v165 = v164 + v161[14];
          v166 = enum case for DIPError.PropertyKey.underlyingErrno(_:);
          v167 = type metadata accessor for DIPError.PropertyKey();
          (*(*(v167 - 8) + 104))(v164, v166, v167);
          v168 = sqlite3_errcode(*(v202 + 40));
          *(v165 + 24) = &type metadata for Int32;
          *(v165 + 32) = &protocol witness table for Int32;
          *v165 = v168;
          sub_10003C9C0(v163);
          swift_setDeallocating();
          sub_10000BE18(v164, &qword_1008341D0, &unk_1006BF8D0);
          swift_deallocClassInstance();
          type metadata accessor for DIPError();
          sub_10057628C(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
          swift_allocError();
          goto LABEL_57;
        }

        goto LABEL_69;
      }

      v172 = String.utf8CString.getter();
      v173 = sqlite3_exec(v153, (v172 + 32), 0, 0, 0);

      if (v173)
      {
        result = sqlite3_errmsg(*(v202 + 40));
        if (result)
        {
          v174 = String.init(cString:)();
          v176 = v175;
          defaultLogger()();
          v177 = Logger.logObject.getter();
          v178 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v177, v178))
          {
            v179 = swift_slowAlloc();
            *v179 = 0;
            _os_log_impl(&_mh_execute_header, v177, v178, "coreidvd: error creating table training signal labels", v179, 2u);
            v46 = v214;
          }

          v45(v195, v46);
          v219 = 0;
          v220 = 0xE000000000000000;
          _StringGuts.grow(_:)(47);

          v219 = 0xD00000000000002DLL;
          v220 = 0x80000001007213B0;
          v180._countAndFlagsBits = v174;
          v180._object = v176;
          String.append(_:)(v180);

          (*(v50 + 104))(v209, enum case for DIPError.Code.sqliteError(_:), v208);
          sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
          v181 = (sub_100007224(&qword_1008341D0, &unk_1006BF8D0) - 8);
          v182 = (*(*v181 + 80) + 32) & ~*(*v181 + 80);
          v183 = swift_allocObject();
          *(v183 + 16) = xmmword_1006BF520;
          v184 = v183 + v182;
          v185 = v184 + v181[14];
          v186 = enum case for DIPError.PropertyKey.underlyingErrno(_:);
          v187 = type metadata accessor for DIPError.PropertyKey();
          (*(*(v187 - 8) + 104))(v184, v186, v187);
          v188 = sqlite3_errcode(*(v202 + 40));
          *(v185 + 24) = &type metadata for Int32;
          *(v185 + 32) = &protocol witness table for Int32;
          *v185 = v188;
          sub_10003C9C0(v183);
          swift_setDeallocating();
          sub_10000BE18(v184, &qword_1008341D0, &unk_1006BF8D0);
          swift_deallocClassInstance();
          type metadata accessor for DIPError();
          sub_10057628C(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
          swift_allocError();
          goto LABEL_57;
        }

LABEL_70:
        __break(1u);
        return result;
      }

      v189 = v201;
      result = sub_100552F38(1);
      if (!v189)
      {
        v190 = v194;
        defaultLogger()();
        v191 = Logger.logObject.getter();
        v192 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v191, v192))
        {
          v193 = swift_slowAlloc();
          *v193 = 0;
          _os_log_impl(&_mh_execute_header, v191, v192, "Done migrating schema to version 1", v193, 2u);
        }

        v45(v190, v46);
        v49 = 0;
LABEL_7:
        v51 = v198;
        defaultLogger()();
        v52 = Logger.logObject.getter();
        v53 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v52, v53))
        {
          v54 = swift_slowAlloc();
          *v54 = 0;
          _os_log_impl(&_mh_execute_header, v52, v53, "Migrating schema to version 4", v54, 2u);
        }

        v55 = v51;
        v56 = v45;
        v45(v55, v46);
        v57 = v202;
        swift_beginAccess();
        v58 = *(v57 + 40);
        v59 = String.utf8CString.getter();
        LODWORD(v58) = sqlite3_exec(v58, (v59 + 32), 0, 0, 0);

        v60 = v199;
        if (v58)
        {
          result = sqlite3_errmsg(*(v57 + 40));
          if (result)
          {
            v61 = String.init(cString:)();
            v63 = v62;
            defaultLogger()();
            v64 = Logger.logObject.getter();
            v65 = static os_log_type_t.error.getter();
            if (os_log_type_enabled(v64, v65))
            {
              v66 = swift_slowAlloc();
              *v66 = 0;
              _os_log_impl(&_mh_execute_header, v64, v65, "coreidvd: error creating table pregenerated assessments", v66, 2u);
              v46 = v214;
            }

            v56(v60, v46);
            v217 = 0;
            v218 = 0xE000000000000000;
            _StringGuts.grow(_:)(48);

            v217 = 0xD00000000000002ELL;
            v218 = 0x8000000100720F50;
            v67._countAndFlagsBits = v61;
            v67._object = v63;
            String.append(_:)(v67);

            (*(v50 + 104))(v209, enum case for DIPError.Code.sqliteError(_:), v208);
            sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
            v68 = (sub_100007224(&qword_1008341D0, &unk_1006BF8D0) - 8);
            v69 = (*(*v68 + 80) + 32) & ~*(*v68 + 80);
            v70 = swift_allocObject();
            *(v70 + 16) = xmmword_1006BF520;
            v71 = v70 + v69;
            v72 = v71 + v68[14];
            v73 = enum case for DIPError.PropertyKey.underlyingErrno(_:);
            v74 = type metadata accessor for DIPError.PropertyKey();
            (*(*(v74 - 8) + 104))(v71, v73, v74);
            v75 = sqlite3_errcode(*(v202 + 40));
            *(v72 + 24) = &type metadata for Int32;
            *(v72 + 32) = &protocol witness table for Int32;
            *v72 = v75;
            sub_10003C9C0(v70);
            swift_setDeallocating();
            sub_10000BE18(v71, &qword_1008341D0, &unk_1006BF8D0);
            swift_deallocClassInstance();
            type metadata accessor for DIPError();
            sub_10057628C(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
            swift_allocError();
LABEL_57:
            DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
            return swift_willThrow();
          }

          __break(1u);
          goto LABEL_66;
        }

        result = sub_100552F38(4);
        if (v49)
        {
          return result;
        }

        v146 = v205;
        defaultLogger()();
        v147 = Logger.logObject.getter();
        v148 = static os_log_type_t.debug.getter();
        if (!os_log_type_enabled(v147, v148))
        {
          v45 = v56;
          goto LABEL_60;
        }

        v149 = swift_slowAlloc();
        *v149 = 0;
        _os_log_impl(&_mh_execute_header, v147, v148, "Done migrating schema to version 4", v149, 2u);
        v45 = v56;
        goto LABEL_51;
      }
    }
  }

  return result;
}

const char *sub_100555910()
{
  v59 = type metadata accessor for Logger();
  v1 = *(v59 - 8);
  v2 = __chkstk_darwin(v59);
  v4 = &v58 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __chkstk_darwin(v2);
  v7 = &v58 - v6;
  v8 = __chkstk_darwin(v5);
  v10 = &v58 - v9;
  __chkstk_darwin(v8);
  v12 = &v58 - v11;
  swift_beginAccess();
  v13 = *(v0 + 40);
  v14 = String.utf8CString.getter();
  v15 = sqlite3_exec(v13, (v14 + 32), 0, 0, 0);

  v16 = *(v0 + 40);
  if (!v15)
  {
    v26 = String.utf8CString.getter();
    v27 = sqlite3_exec(v16, (v26 + 32), 0, 0, 0);

    v28 = *(v0 + 40);
    if (!v27)
    {
      v37 = String.utf8CString.getter();
      v38 = sqlite3_exec(v28, (v37 + 32), 0, 0, 0);

      v39 = *(v0 + 40);
      if (!v38)
      {
        v48 = String.utf8CString.getter();
        v49 = sqlite3_exec(v39, (v48 + 32), 0, 0, 0);

        if (!v49)
        {
          return 1;
        }

        result = sqlite3_errmsg(*(v0 + 40));
        if (result)
        {
          v50 = String.init(cString:)();
          v52 = v51;
          defaultLogger()();

          v53 = Logger.logObject.getter();
          v54 = static os_log_type_t.error.getter();

          if (os_log_type_enabled(v53, v54))
          {
            v55 = swift_slowAlloc();
            v56 = swift_slowAlloc();
            v60 = v56;
            *v55 = 136446210;
            v57 = sub_100141FE4(v50, v52, &v60);

            *(v55 + 4) = v57;
            _os_log_impl(&_mh_execute_header, v53, v54, "coreidvd: invalid table pregeneratedassessments: %{public}s", v55, 0xCu);
            sub_10000BB78(v56);
          }

          else
          {
          }

          (*(v1 + 8))(v4, v59);
          return 0;
        }

LABEL_31:
        __break(1u);
        return result;
      }

      result = sqlite3_errmsg(*(v0 + 40));
      if (result)
      {
        v40 = String.init(cString:)();
        v42 = v41;
        defaultLogger()();

        v43 = Logger.logObject.getter();
        v44 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v43, v44))
        {
          v45 = swift_slowAlloc();
          v46 = swift_slowAlloc();
          v60 = v46;
          *v45 = 136446210;
          v47 = sub_100141FE4(v40, v42, &v60);

          *(v45 + 4) = v47;
          _os_log_impl(&_mh_execute_header, v43, v44, "coreidvd: invalid table trainingsignallabels: %{public}s", v45, 0xCu);
          sub_10000BB78(v46);
        }

        else
        {
        }

        (*(v1 + 8))(v7, v59);
        return 0;
      }

LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    result = sqlite3_errmsg(*(v0 + 40));
    if (result)
    {
      v29 = String.init(cString:)();
      v31 = v30;
      defaultLogger()();

      v32 = Logger.logObject.getter();
      v33 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v32, v33))
      {
        v34 = swift_slowAlloc();
        v35 = swift_slowAlloc();
        v60 = v35;
        *v34 = 136446210;
        v36 = sub_100141FE4(v29, v31, &v60);

        *(v34 + 4) = v36;
        _os_log_impl(&_mh_execute_header, v32, v33, "coreidvd: invalid table verifiedclaim: %{public}s", v34, 0xCu);
        sub_10000BB78(v35);
      }

      else
      {
      }

      (*(v1 + 8))(v10, v59);
      return 0;
    }

LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  result = sqlite3_errmsg(*(v0 + 40));
  if (!result)
  {
    __break(1u);
    goto LABEL_29;
  }

  v18 = String.init(cString:)();
  v20 = v19;
  defaultLogger()();

  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v60 = v24;
    *v23 = 136446210;
    v25 = sub_100141FE4(v18, v20, &v60);

    *(v23 + 4) = v25;
    _os_log_impl(&_mh_execute_header, v21, v22, "coreidvd: invalid table signalmap: %{public}s", v23, 0xCu);
    sub_10000BB78(v24);
  }

  else
  {
  }

  (*(v1 + 8))(v12, v59);
  return 0;
}

void *sub_100555FD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13 = 0;
  v7 = _swiftEmptyArrayStorage;
  v8 = a1;
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = &v7;
  OS_dispatch_queue.sync<A>(execute:)();
  v5 = v7;
  if (v4)
  {
  }

  return v5;
}

void *sub_100556098(uint64_t a1, sqlite3_stmt **a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char **a7)
{
  v92 = a5;
  v93 = a6;
  v94 = a4;
  v10 = type metadata accessor for Logger();
  v95 = *(v10 - 8);
  v96 = v10;
  v11 = __chkstk_darwin(v10);
  v13 = &v89 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v11);
  v16 = &v89 - v15;
  __chkstk_darwin(v14);
  v91 = &v89 - v17;
  v18 = type metadata accessor for DIPError.Code();
  v98 = *(v18 - 8);
  v99 = v18;
  __chkstk_darwin(v18);
  v102 = &v89 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v20 = *(a1 + 40);
  if (!v20)
  {
    sub_1005507F8();
    v20 = *(a1 + 40);
    if (!v20)
    {
      (*(v98 + 104))(v102, enum case for DIPError.Code.databaseInaccessible(_:), v99);
      sub_1000402AC(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_10057628C(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
      swift_allocError();
LABEL_16:
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      return swift_willThrow();
    }
  }

  v21 = String.utf8CString.getter();
  v22 = sqlite3_prepare_v3(v20, (v21 + 32), -1, 0, a2, 0);

  v97 = v20;
  if (v22)
  {
    result = sqlite3_errmsg(v20);
    if (result)
    {
      v24 = String.init(cString:)();
      v26 = v25;
      defaultLogger()();

      v27 = Logger.logObject.getter();
      v28 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        v30 = swift_slowAlloc();
        v100 = v30;
        *v29 = 136446210;
        *(v29 + 4) = sub_100141FE4(v24, v26, &v100);
        _os_log_impl(&_mh_execute_header, v27, v28, "coreidvd: failed to prepare select statement: %{public}s", v29, 0xCu);
        sub_10000BB78(v30);
      }

      (*(v95 + 8))(v13, v96);
      v100 = 0;
      v101 = 0xE000000000000000;
      _StringGuts.grow(_:)(33);

      v100 = 0xD00000000000001FLL;
      v101 = 0x800000010071F8B0;
      v31._countAndFlagsBits = v24;
      v31._object = v26;
      String.append(_:)(v31);

      (*(v98 + 104))(v102, enum case for DIPError.Code.sqliteError(_:), v99);
      sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
      v32 = (sub_100007224(&qword_1008341D0, &unk_1006BF8D0) - 8);
      v33 = (*(*v32 + 80) + 32) & ~*(*v32 + 80);
      v34 = swift_allocObject();
      *(v34 + 16) = xmmword_1006BF520;
      v35 = v34 + v33;
      v36 = v35 + v32[14];
      v37 = enum case for DIPError.PropertyKey.underlyingErrno(_:);
      v38 = type metadata accessor for DIPError.PropertyKey();
      (*(*(v38 - 8) + 104))(v35, v37, v38);
      v39 = sqlite3_errcode(v97);
      *(v36 + 24) = &type metadata for Int32;
      *(v36 + 32) = &protocol witness table for Int32;
      *v36 = v39;
      sub_10003C9C0(v34);
      swift_setDeallocating();
      sub_10000BE18(v35, &qword_1008341D0, &unk_1006BF8D0);
      swift_deallocClassInstance();
      type metadata accessor for DIPError();
      sub_10057628C(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
      swift_allocError();
      goto LABEL_16;
    }

    goto LABEL_33;
  }

  v90 = a2;
  v40 = *a2;
  if (qword_100832CA0 != -1)
  {
    swift_once();
  }

  v41 = qword_1008823D0;
  v42 = String.utf8CString.getter();
  v43 = sqlite3_bind_text(v40, 1, (v42 + 32), -1, v41);

  if (v43)
  {
    result = sqlite3_errmsg(v97);
    if (!result)
    {
LABEL_34:
      __break(1u);
      goto LABEL_35;
    }

    v44 = String.init(cString:)();
    v46 = v45;
    defaultLogger()();

    v47 = Logger.logObject.getter();
    v48 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      v100 = v50;
      *v49 = 136446210;
      *(v49 + 4) = sub_100141FE4(v44, v46, &v100);
      _os_log_impl(&_mh_execute_header, v47, v48, "coreidvd: failure binding serviceName: %{public}s", v49, 0xCu);
      sub_10000BB78(v50);
    }

    (*(v95 + 8))(v16, v96);
    v100 = 0;
    v101 = 0xE000000000000000;
    _StringGuts.grow(_:)(29);

    v100 = 0xD00000000000001BLL;
    v101 = 0x8000000100720820;
    v51._countAndFlagsBits = v44;
    v51._object = v46;
    String.append(_:)(v51);

    (*(v98 + 104))(v102, enum case for DIPError.Code.sqliteError(_:), v99);
    sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
    v52 = (sub_100007224(&qword_1008341D0, &unk_1006BF8D0) - 8);
    v53 = (*(*v52 + 80) + 32) & ~*(*v52 + 80);
    v54 = swift_allocObject();
    *(v54 + 16) = xmmword_1006BF520;
    v55 = v54 + v53;
    v56 = v55 + v52[14];
    v57 = enum case for DIPError.PropertyKey.underlyingErrno(_:);
    v58 = type metadata accessor for DIPError.PropertyKey();
    (*(*(v58 - 8) + 104))(v55, v57, v58);
    v59 = sqlite3_errcode(v97);
    *(v56 + 24) = &type metadata for Int32;
    *(v56 + 32) = &protocol witness table for Int32;
    *v56 = v59;
    sub_10003C9C0(v54);
    swift_setDeallocating();
    sub_10000BE18(v55, &qword_1008341D0, &unk_1006BF8D0);
    swift_deallocClassInstance();
    type metadata accessor for DIPError();
    sub_10057628C(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
  }

  else
  {
    v60 = v90;
    v61 = *v90;
    v62 = String.utf8CString.getter();
    LODWORD(v61) = sqlite3_bind_text(v61, 2, (v62 + 32), -1, v41);

    if (!v61)
    {
      while (1)
      {
        if (sqlite3_step(*v60) != 100)
        {
          v80 = *v60;
          return sqlite3_finalize(v80);
        }

        result = sqlite3_column_text(*v60, 0);
        if (!result)
        {
          break;
        }

        v82 = String.init(cString:)();
        v84 = v83;
        v85 = *a7;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *a7 = v85;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v85 = sub_1003C5110(0, *(v85 + 2) + 1, 1, v85);
          *a7 = v85;
        }

        v88 = *(v85 + 2);
        v87 = *(v85 + 3);
        if (v88 >= v87 >> 1)
        {
          v85 = sub_1003C5110((v87 > 1), v88 + 1, 1, v85);
          *a7 = v85;
        }

        *(v85 + 2) = v88 + 1;
        v81 = &v85[16 * v88];
        *(v81 + 4) = v82;
        *(v81 + 5) = v84;
      }

      __break(1u);
LABEL_33:
      __break(1u);
      goto LABEL_34;
    }

    result = sqlite3_errmsg(v97);
    if (!result)
    {
LABEL_35:
      __break(1u);
      return result;
    }

    v63 = String.init(cString:)();
    v65 = v64;
    v66 = v91;
    defaultLogger()();

    v67 = Logger.logObject.getter();
    v68 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v67, v68))
    {
      v69 = swift_slowAlloc();
      v70 = swift_slowAlloc();
      v100 = v70;
      *v69 = 136446210;
      *(v69 + 4) = sub_100141FE4(v63, v65, &v100);
      _os_log_impl(&_mh_execute_header, v67, v68, "coreidvd: failure binding targetTier: %{public}s", v69, 0xCu);
      sub_10000BB78(v70);
    }

    (*(v95 + 8))(v66, v96);
    v100 = 0;
    v101 = 0xE000000000000000;
    _StringGuts.grow(_:)(28);

    v100 = 0xD00000000000001ALL;
    v101 = 0x8000000100720840;
    v71._countAndFlagsBits = v63;
    v71._object = v65;
    String.append(_:)(v71);

    (*(v98 + 104))(v102, enum case for DIPError.Code.sqliteError(_:), v99);
    sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
    v72 = (sub_100007224(&qword_1008341D0, &unk_1006BF8D0) - 8);
    v73 = (*(*v72 + 80) + 32) & ~*(*v72 + 80);
    v74 = swift_allocObject();
    *(v74 + 16) = xmmword_1006BF520;
    v75 = v74 + v73;
    v76 = v75 + v72[14];
    v77 = enum case for DIPError.PropertyKey.underlyingErrno(_:);
    v78 = type metadata accessor for DIPError.PropertyKey();
    (*(*(v78 - 8) + 104))(v75, v77, v78);
    v79 = sqlite3_errcode(v97);
    *(v76 + 24) = &type metadata for Int32;
    *(v76 + 32) = &protocol witness table for Int32;
    *v76 = v79;
    sub_10003C9C0(v74);
    swift_setDeallocating();
    sub_10000BE18(v75, &qword_1008341D0, &unk_1006BF8D0);
    swift_deallocClassInstance();
    type metadata accessor for DIPError();
    sub_10057628C(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
  }

  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();
  v80 = *v90;
  return sqlite3_finalize(v80);
}

const char *sub_100556F98(uint64_t a1, void *a2)
{
  v4 = type metadata accessor for String.Encoding();
  __chkstk_darwin(v4 - 8);
  v419 = &v415 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100007224(&qword_100847538, &unk_1006E83A0);
  __chkstk_darwin(v6 - 8);
  v428 = &v415 - v7;
  v427 = type metadata accessor for OTDRequest(0);
  v424 = *(v427 - 8);
  __chkstk_darwin(v427);
  v425 = &v415 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Date();
  v435 = *(v9 - 8);
  v436 = v9;
  __chkstk_darwin(v9);
  v434 = &v415 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Logger();
  v12 = *(v11 - 8);
  v441 = v11;
  v442 = v12;
  v13 = __chkstk_darwin(v11);
  v420 = &v415 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v418 = &v415 - v16;
  v17 = __chkstk_darwin(v15);
  v417 = &v415 - v18;
  v19 = __chkstk_darwin(v17);
  v422 = &v415 - v20;
  v21 = __chkstk_darwin(v19);
  v423 = &v415 - v22;
  v23 = __chkstk_darwin(v21);
  v421 = &v415 - v24;
  v25 = __chkstk_darwin(v23);
  v429 = &v415 - v26;
  v27 = __chkstk_darwin(v25);
  v430 = &v415 - v28;
  v29 = __chkstk_darwin(v27);
  v431 = &v415 - v30;
  v31 = __chkstk_darwin(v29);
  v432 = &v415 - v32;
  v33 = __chkstk_darwin(v31);
  v433 = &v415 - v34;
  v35 = __chkstk_darwin(v33);
  v437 = &v415 - v36;
  v37 = __chkstk_darwin(v35);
  v438 = &v415 - v38;
  v39 = __chkstk_darwin(v37);
  v439 = &v415 - v40;
  v41 = __chkstk_darwin(v39);
  v43 = &v415 - v42;
  v44 = __chkstk_darwin(v41);
  v46 = &v415 - v45;
  v47 = __chkstk_darwin(v44);
  v49 = (&v415 - v48);
  v50 = __chkstk_darwin(v47);
  v52 = &v415 - v51;
  __chkstk_darwin(v50);
  v54 = &v415 - v53;
  v55 = type metadata accessor for DIPError.Code();
  v56 = *(v55 - 8);
  v443 = v55;
  v444 = v56;
  __chkstk_darwin(v55);
  v58 = &v415 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  ppStmt = 0;
  swift_beginAccess();
  v59 = *(a1 + 40);
  if (!v59)
  {
    sub_1005507F8();
    v59 = *(a1 + 40);
    if (!v59)
    {
      (*(v444 + 104))(v58, enum case for DIPError.Code.databaseInaccessible(_:), v443);
      sub_1000402AC(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_10057628C(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
      swift_allocError();
      goto LABEL_15;
    }
  }

  if (a2[1] >> 60 == 15)
  {
    (*(v444 + 104))(v58, enum case for DIPError.Code.invalidAssessmentGUID(_:), v443);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_10057628C(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
LABEL_15:
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    return swift_willThrow();
  }

  v416 = v58;
  v60 = String.utf8CString.getter();
  v61 = sqlite3_prepare_v3(v59, (v60 + 32), -1, 0, &ppStmt, 0);

  v440 = v59;
  if (v61)
  {
    v62 = sqlite3_errmsg(v59);
    if (v62)
    {
      v64 = String.init(cString:)();
      v66 = v65;
      defaultLogger()();

      v67 = Logger.logObject.getter();
      v68 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v67, v68))
      {
        v69 = swift_slowAlloc();
        v70 = swift_slowAlloc();
        *&v445 = v70;
        *v69 = 136446210;
        *(v69 + 4) = sub_100141FE4(v64, v66, &v445);
        _os_log_impl(&_mh_execute_header, v67, v68, "coreidvd: failed to prepare insert statement %{public}s", v69, 0xCu);
        sub_10000BB78(v70);
      }

      (*(v442 + 8))(v54, v441);
      v72 = v443;
      v71 = v444;
      *&v445 = 0xD00000000000002ALL;
      *(&v445 + 1) = 0x8000000100721780;
      v73._countAndFlagsBits = v64;
      v73._object = v66;
      String.append(_:)(v73);

      (*(v71 + 104))(v416, enum case for DIPError.Code.sqliteError(_:), v72);
      sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
      v74 = (sub_100007224(&qword_1008341D0, &unk_1006BF8D0) - 8);
      v75 = (*(*v74 + 80) + 32) & ~*(*v74 + 80);
      v76 = swift_allocObject();
      *(v76 + 16) = xmmword_1006BF520;
      v77 = v76 + v75;
      v78 = v77 + v74[14];
      v79 = enum case for DIPError.PropertyKey.underlyingErrno(_:);
      v80 = type metadata accessor for DIPError.PropertyKey();
      (*(*(v80 - 8) + 104))(v77, v79, v80);
      v81 = sqlite3_errcode(v440);
      *(v78 + 24) = &type metadata for Int32;
      *(v78 + 32) = &protocol witness table for Int32;
      *v78 = v81;
      sub_10003C9C0(v76);
      swift_setDeallocating();
      sub_10000BE18(v77, &qword_1008341D0, &unk_1006BF8D0);
      swift_deallocClassInstance();
      type metadata accessor for DIPError();
      sub_10057628C(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
      swift_allocError();
      goto LABEL_15;
    }

    __break(1u);
    goto LABEL_104;
  }

  v82 = ppStmt;
  v83 = a2[9];
  if (qword_100832CA0 != -1)
  {
    v253 = a2[9];
    swift_once();
    v83 = v253;
  }

  v84 = qword_1008823D0;
  if (v83)
  {
    v85 = (String.utf8CString.getter() + 32);
  }

  else
  {
    v85 = 0;
  }

  v87 = sqlite3_bind_text(v82, 1, v85, -1, v84);
  swift_unknownObjectRelease();
  if (v87)
  {
    if (sqlite3_errmsg(v440))
    {
      v88 = String.init(cString:)();
      v90 = v89;
      defaultLogger()();

      v91 = Logger.logObject.getter();
      v92 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v91, v92))
      {
        v93 = swift_slowAlloc();
        v94 = swift_slowAlloc();
        *&v445 = v94;
        *v93 = 136446210;
        *(v93 + 4) = sub_100141FE4(v88, v90, &v445);
        _os_log_impl(&_mh_execute_header, v91, v92, "coreidvd: failure binding dsid: %{public}s", v93, 0xCu);
        sub_10000BB78(v94);
      }

      (*(v442 + 8))(v52, v441);
      v96 = v443;
      v95 = v444;
      *&v445 = 0xD000000000000025;
      *(&v445 + 1) = 0x80000001007217B0;
      v97._countAndFlagsBits = v88;
      v97._object = v90;
      String.append(_:)(v97);

      (*(v95 + 104))(v416, enum case for DIPError.Code.sqliteError(_:), v96);
      sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
      v98 = (sub_100007224(&qword_1008341D0, &unk_1006BF8D0) - 8);
      v99 = (*(*v98 + 80) + 32) & ~*(*v98 + 80);
      v100 = swift_allocObject();
      *(v100 + 16) = xmmword_1006BF520;
      v101 = v100 + v99;
      v102 = v101 + v98[14];
      v103 = enum case for DIPError.PropertyKey.underlyingErrno(_:);
      v104 = type metadata accessor for DIPError.PropertyKey();
      (*(*(v104 - 8) + 104))(v101, v103, v104);
      v105 = sqlite3_errcode(v440);
      *(v102 + 24) = &type metadata for Int32;
      *(v102 + 32) = &protocol witness table for Int32;
      *v102 = v105;
      sub_10003C9C0(v100);
      swift_setDeallocating();
      sub_10000BE18(v101, &qword_1008341D0, &unk_1006BF8D0);
      swift_deallocClassInstance();
      type metadata accessor for DIPError();
      sub_10057628C(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
      swift_allocError();
      goto LABEL_93;
    }

    __break(1u);
    goto LABEL_107;
  }

  v106 = ppStmt;
  v107 = String.utf8CString.getter();
  LODWORD(v106) = sqlite3_bind_text(v106, 2, (v107 + 32), -1, v84);

  if (v106)
  {
    result = sqlite3_errmsg(v440);
    if (result)
    {
      v108 = String.init(cString:)();
      v110 = v109;
      defaultLogger()();

      v111 = Logger.logObject.getter();
      v112 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v111, v112))
      {
        v113 = swift_slowAlloc();
        v114 = swift_slowAlloc();
        *&v445 = v114;
        *v113 = 136446210;
        *(v113 + 4) = sub_100141FE4(v108, v110, &v445);
        _os_log_impl(&_mh_execute_header, v111, v112, "coreidvd: failure binding signalsUUID: %{public}s", v113, 0xCu);
        sub_10000BB78(v114);
      }

      (*(v442 + 8))(v49, v441);
      v116 = v443;
      v115 = v444;
      *&v445 = 0xD00000000000002CLL;
      *(&v445 + 1) = 0x80000001007217E0;
      v117._countAndFlagsBits = v108;
      v117._object = v110;
      String.append(_:)(v117);

      (*(v115 + 104))(v416, enum case for DIPError.Code.sqliteError(_:), v116);
      sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
      v118 = (sub_100007224(&qword_1008341D0, &unk_1006BF8D0) - 8);
      v119 = (*(*v118 + 80) + 32) & ~*(*v118 + 80);
      v120 = swift_allocObject();
      *(v120 + 16) = xmmword_1006BF520;
      v121 = v120 + v119;
      v122 = v121 + v118[14];
      v123 = enum case for DIPError.PropertyKey.underlyingErrno(_:);
      v124 = type metadata accessor for DIPError.PropertyKey();
      (*(*(v124 - 8) + 104))(v121, v123, v124);
      v125 = sqlite3_errcode(v440);
      *(v122 + 24) = &type metadata for Int32;
      *(v122 + 32) = &protocol witness table for Int32;
      *v122 = v125;
      sub_10003C9C0(v120);
      swift_setDeallocating();
      sub_10000BE18(v121, &qword_1008341D0, &unk_1006BF8D0);
      swift_deallocClassInstance();
      type metadata accessor for DIPError();
      sub_10057628C(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
      swift_allocError();
      goto LABEL_93;
    }

    __break(1u);
    goto LABEL_134;
  }

  if (a2[1] >> 60 == 15)
  {
LABEL_134:
    __break(1u);
LABEL_135:
    __break(1u);
LABEL_136:
    __break(1u);
LABEL_137:
    __break(1u);
LABEL_138:
    __break(1u);
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
    __break(1u);
    goto LABEL_145;
  }

  v49 = v84;
  v126 = ppStmt;
  Data.base64EncodedString(options:)(0);
  v127 = String.utf8CString.getter();

  LODWORD(v126) = sqlite3_bind_text(v126, 3, (v127 + 32), -1, v84);

  if (v126)
  {
    result = sqlite3_errmsg(v440);
    if (result)
    {
      v128 = String.init(cString:)();
      v130 = v129;
      defaultLogger()();

      v131 = Logger.logObject.getter();
      v132 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v131, v132))
      {
        v133 = swift_slowAlloc();
        v134 = swift_slowAlloc();
        *&v445 = v134;
        *v133 = 136446210;
        *(v133 + 4) = sub_100141FE4(v128, v130, &v445);
        _os_log_impl(&_mh_execute_header, v131, v132, "coreidvd: failure binding assessmentGUID: %{public}s", v133, 0xCu);
        sub_10000BB78(v134);
      }

      (*(v442 + 8))(v46, v441);
      v136 = v443;
      v135 = v444;
      *&v445 = 0xD00000000000002FLL;
      *(&v445 + 1) = 0x8000000100721810;
      v137._countAndFlagsBits = v128;
      v137._object = v130;
      String.append(_:)(v137);

      (*(v135 + 104))(v416, enum case for DIPError.Code.sqliteError(_:), v136);
      sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
      v138 = (sub_100007224(&qword_1008341D0, &unk_1006BF8D0) - 8);
      v139 = (*(*v138 + 80) + 32) & ~*(*v138 + 80);
      v140 = swift_allocObject();
      *(v140 + 16) = xmmword_1006BF520;
      v141 = v140 + v139;
      v142 = v141 + v138[14];
      v143 = enum case for DIPError.PropertyKey.underlyingErrno(_:);
      v144 = type metadata accessor for DIPError.PropertyKey();
      (*(*(v144 - 8) + 104))(v141, v143, v144);
      v145 = sqlite3_errcode(v440);
      *(v142 + 24) = &type metadata for Int32;
      *(v142 + 32) = &protocol witness table for Int32;
      *v142 = v145;
      sub_10003C9C0(v140);
      swift_setDeallocating();
      sub_10000BE18(v141, &qword_1008341D0, &unk_1006BF8D0);
      swift_deallocClassInstance();
      type metadata accessor for DIPError();
      sub_10057628C(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
      swift_allocError();
      goto LABEL_93;
    }

    goto LABEL_135;
  }

  v146 = ppStmt;
  if (a2[11])
  {
    v147 = (String.utf8CString.getter() + 32);
  }

  else
  {
    v147 = 0;
  }

  v148 = sqlite3_bind_text(v146, 4, v147, -1, v84);
  swift_unknownObjectRelease();
  if (v148)
  {
    result = sqlite3_errmsg(v440);
    if (result)
    {
      v149 = String.init(cString:)();
      v151 = v150;
      defaultLogger()();

      v152 = Logger.logObject.getter();
      v153 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v152, v153))
      {
        v154 = swift_slowAlloc();
        v155 = swift_slowAlloc();
        *&v445 = v155;
        *v154 = 136446210;
        *(v154 + 4) = sub_100141FE4(v149, v151, &v445);
        _os_log_impl(&_mh_execute_header, v152, v153, "coreidvd: failure binding asdVersion: %{public}s", v154, 0xCu);
        sub_10000BB78(v155);
      }

      (*(v442 + 8))(v43, v441);
      v157 = v443;
      v156 = v444;
      *&v445 = 0xD00000000000002BLL;
      *(&v445 + 1) = 0x8000000100721840;
      v158._countAndFlagsBits = v149;
      v158._object = v151;
      String.append(_:)(v158);

      (*(v156 + 104))(v416, enum case for DIPError.Code.sqliteError(_:), v157);
      sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
      v159 = (sub_100007224(&qword_1008341D0, &unk_1006BF8D0) - 8);
      v160 = (*(*v159 + 80) + 32) & ~*(*v159 + 80);
      v161 = swift_allocObject();
      *(v161 + 16) = xmmword_1006BF520;
      v162 = v161 + v160;
      v163 = v162 + v159[14];
      v164 = enum case for DIPError.PropertyKey.underlyingErrno(_:);
      v165 = type metadata accessor for DIPError.PropertyKey();
      (*(*(v165 - 8) + 104))(v162, v164, v165);
      v166 = sqlite3_errcode(v440);
      *(v163 + 24) = &type metadata for Int32;
      *(v163 + 32) = &protocol witness table for Int32;
      *v163 = v166;
      sub_10003C9C0(v161);
      swift_setDeallocating();
      sub_10000BE18(v162, &qword_1008341D0, &unk_1006BF8D0);
      swift_deallocClassInstance();
      type metadata accessor for DIPError();
      sub_10057628C(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
      swift_allocError();
      goto LABEL_93;
    }

    goto LABEL_136;
  }

  v167 = [objc_opt_self() mainBundle];
  v168 = [v167 infoDictionary];

  if (v168)
  {
    v169 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    if (*(v169 + 16) && (v170 = sub_10003ADCC(0x656C646E75424643, 0xEF6E6F6973726556), (v171 & 1) != 0))
    {
      sub_10001F2EC(*(v169 + 56) + 32 * v170, &v445);
    }

    else
    {
      v445 = 0u;
      v446 = 0u;
    }

    if (*(&v446 + 1))
    {
      swift_dynamicCast();
      goto LABEL_50;
    }
  }

  else
  {
    v445 = 0u;
    v446 = 0u;
  }

  sub_10000BE18(&v445, &unk_100845ED0, &qword_1006DA1D0);
LABEL_50:
  v172 = ppStmt;
  v173 = String.utf8CString.getter();
  LODWORD(v172) = sqlite3_bind_text(v172, 5, (v173 + 32), -1, v84);

  if (v172)
  {
    result = sqlite3_errmsg(v440);
    if (result)
    {

      v174 = String.init(cString:)();
      v176 = v175;
      v177 = v439;
      defaultLogger()();

      v178 = Logger.logObject.getter();
      v179 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v178, v179))
      {
        v180 = swift_slowAlloc();
        v181 = swift_slowAlloc();
        *&v445 = v181;
        *v180 = 136446210;
        *(v180 + 4) = sub_100141FE4(v174, v176, &v445);
        _os_log_impl(&_mh_execute_header, v178, v179, "coreidvd: failure binding idvVersion: %{public}s", v180, 0xCu);
        sub_10000BB78(v181);
      }

      (*(v442 + 8))(v177, v441);
      *&v445 = 0xD00000000000002BLL;
      *(&v445 + 1) = 0x800000010071FC20;
      v182._countAndFlagsBits = v174;
      v182._object = v176;
      String.append(_:)(v182);

      (*(v444 + 104))(v416, enum case for DIPError.Code.sqliteError(_:), v443);
      sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
      v183 = (sub_100007224(&qword_1008341D0, &unk_1006BF8D0) - 8);
      v184 = (*(*v183 + 80) + 32) & ~*(*v183 + 80);
      v185 = swift_allocObject();
      *(v185 + 16) = xmmword_1006BF520;
      v186 = v185 + v184;
      v187 = v186 + v183[14];
      v188 = enum case for DIPError.PropertyKey.underlyingErrno(_:);
      v189 = type metadata accessor for DIPError.PropertyKey();
      (*(*(v189 - 8) + 104))(v186, v188, v189);
      v190 = sqlite3_errcode(v440);
      *(v187 + 24) = &type metadata for Int32;
      *(v187 + 32) = &protocol witness table for Int32;
      *v187 = v190;
      sub_10003C9C0(v185);
      swift_setDeallocating();
      sub_10000BE18(v186, &qword_1008341D0, &unk_1006BF8D0);
      swift_deallocClassInstance();
      type metadata accessor for DIPError();
      sub_10057628C(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
      swift_allocError();
      goto LABEL_93;
    }

    goto LABEL_137;
  }

  v191 = ppStmt;
  v192 = String.utf8CString.getter();
  LODWORD(v191) = sqlite3_bind_text(v191, 6, (v192 + 32), -1, v84);

  if (v191)
  {
    result = sqlite3_errmsg(v440);
    if (result)
    {

      v193 = String.init(cString:)();
      v195 = v194;
      v196 = v438;
      defaultLogger()();

      v197 = Logger.logObject.getter();
      v198 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v197, v198))
      {
        v199 = swift_slowAlloc();
        v200 = swift_slowAlloc();
        *&v445 = v200;
        *v199 = 136446210;
        *(v199 + 4) = sub_100141FE4(v193, v195, &v445);
        _os_log_impl(&_mh_execute_header, v197, v198, "coreidvd: failure binding serviceName: %{public}s", v199, 0xCu);
        sub_10000BB78(v200);
      }

      (*(v442 + 8))(v196, v441);
      v202 = v443;
      v201 = v444;
      *&v445 = 0xD00000000000002CLL;
      *(&v445 + 1) = 0x800000010071F720;
      v203._countAndFlagsBits = v193;
      v203._object = v195;
      String.append(_:)(v203);

      (*(v201 + 104))(v416, enum case for DIPError.Code.sqliteError(_:), v202);
      sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
      v204 = (sub_100007224(&qword_1008341D0, &unk_1006BF8D0) - 8);
      v205 = (*(*v204 + 80) + 32) & ~*(*v204 + 80);
      v206 = swift_allocObject();
      *(v206 + 16) = xmmword_1006BF520;
      v207 = v206 + v205;
      v208 = v207 + v204[14];
      v209 = enum case for DIPError.PropertyKey.underlyingErrno(_:);
      v210 = type metadata accessor for DIPError.PropertyKey();
      (*(*(v210 - 8) + 104))(v207, v209, v210);
      v211 = sqlite3_errcode(v440);
      *(v208 + 24) = &type metadata for Int32;
      *(v208 + 32) = &protocol witness table for Int32;
      *v208 = v211;
      sub_10003C9C0(v206);
      swift_setDeallocating();
      sub_10000BE18(v207, &qword_1008341D0, &unk_1006BF8D0);
      swift_deallocClassInstance();
      type metadata accessor for DIPError();
      sub_10057628C(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
      swift_allocError();
      goto LABEL_93;
    }

    goto LABEL_138;
  }

  v212 = ppStmt;
  v213 = String.utf8CString.getter();
  LODWORD(v212) = sqlite3_bind_text(v212, 7, (v213 + 32), -1, v84);

  if (v212)
  {
    result = sqlite3_errmsg(v440);
    if (result)
    {

      v214 = String.init(cString:)();
      v216 = v215;
      v217 = v437;
      defaultLogger()();

      v218 = Logger.logObject.getter();
      v219 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v218, v219))
      {
        v220 = swift_slowAlloc();
        v221 = swift_slowAlloc();
        *&v445 = v221;
        *v220 = 136446210;
        *(v220 + 4) = sub_100141FE4(v214, v216, &v445);
        _os_log_impl(&_mh_execute_header, v218, v219, "coreidvd: failure binding workflowid: %{public}s", v220, 0xCu);
        sub_10000BB78(v221);
      }

      (*(v442 + 8))(v217, v441);
      v223 = v443;
      v222 = v444;
      *&v445 = 0xD00000000000002BLL;
      *(&v445 + 1) = 0x800000010071FAE0;
      v224._countAndFlagsBits = v214;
      v224._object = v216;
      String.append(_:)(v224);

      (*(v222 + 104))(v416, enum case for DIPError.Code.sqliteError(_:), v223);
      sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
      v225 = (sub_100007224(&qword_1008341D0, &unk_1006BF8D0) - 8);
      v226 = (*(*v225 + 80) + 32) & ~*(*v225 + 80);
      v227 = swift_allocObject();
      *(v227 + 16) = xmmword_1006BF520;
      v228 = v227 + v226;
      v229 = v228 + v225[14];
      v230 = enum case for DIPError.PropertyKey.underlyingErrno(_:);
      v231 = type metadata accessor for DIPError.PropertyKey();
      (*(*(v231 - 8) + 104))(v228, v230, v231);
      v232 = sqlite3_errcode(v440);
      *(v229 + 24) = &type metadata for Int32;
      *(v229 + 32) = &protocol witness table for Int32;
      *v229 = v232;
      sub_10003C9C0(v227);
      swift_setDeallocating();
      sub_10000BE18(v228, &qword_1008341D0, &unk_1006BF8D0);
      swift_deallocClassInstance();
      type metadata accessor for DIPError();
      sub_10057628C(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
      swift_allocError();
      goto LABEL_93;
    }

    goto LABEL_139;
  }

  v233 = v434;
  Date.init()();
  Date.timeIntervalSinceReferenceDate.getter();
  v235 = v234;
  (*(v435 + 8))(v233, v436);
  if (sqlite3_bind_double(ppStmt, 8, v235))
  {
    result = sqlite3_errmsg(v440);
    if (result)
    {

      v236 = String.init(cString:)();
      v238 = v237;
      v239 = v433;
      defaultLogger()();

      v240 = Logger.logObject.getter();
      v241 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v240, v241))
      {
        v242 = swift_slowAlloc();
        v243 = swift_slowAlloc();
        *&v445 = v243;
        *v242 = 136446210;
        *(v242 + 4) = sub_100141FE4(v236, v238, &v445);
        _os_log_impl(&_mh_execute_header, v240, v241, "coreidvd: failure binding date: %{public}s", v242, 0xCu);
        sub_10000BB78(v243);
      }

      (*(v442 + 8))(v239, v441);
      *&v445 = 0xD00000000000002ELL;
      *(&v445 + 1) = 0x8000000100721870;
      v244._countAndFlagsBits = v236;
      v244._object = v238;
      String.append(_:)(v244);

      (*(v444 + 104))(v416, enum case for DIPError.Code.sqliteError(_:), v443);
      sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
      v245 = (sub_100007224(&qword_1008341D0, &unk_1006BF8D0) - 8);
      v246 = (*(*v245 + 80) + 32) & ~*(*v245 + 80);
      v247 = swift_allocObject();
      *(v247 + 16) = xmmword_1006BF520;
      v248 = v247 + v246;
      v249 = v248 + v245[14];
      v250 = enum case for DIPError.PropertyKey.underlyingErrno(_:);
      v251 = type metadata accessor for DIPError.PropertyKey();
      (*(*(v251 - 8) + 104))(v248, v250, v251);
      v252 = sqlite3_errcode(v440);
      *(v249 + 24) = &type metadata for Int32;
      *(v249 + 32) = &protocol witness table for Int32;
      *v249 = v252;
      sub_10003C9C0(v247);
      swift_setDeallocating();
      sub_10000BE18(v248, &qword_1008341D0, &unk_1006BF8D0);
      swift_deallocClassInstance();
      type metadata accessor for DIPError();
      sub_10057628C(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
      swift_allocError();
      goto LABEL_93;
    }

    goto LABEL_140;
  }

  if (sqlite3_bind_text(ppStmt, 9, "NEW", -1, v84))
  {
    result = sqlite3_errmsg(v440);
    if (result)
    {

      v254 = String.init(cString:)();
      v256 = v255;
      defaultLogger()();

      v257 = Logger.logObject.getter();
      v258 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v257, v258))
      {
        v259 = swift_slowAlloc();
        v260 = swift_slowAlloc();
        *&v445 = v260;
        *v259 = 136446210;
        *(v259 + 4) = sub_100141FE4(v254, v256, &v445);
        _os_log_impl(&_mh_execute_header, v257, v258, "coreidvd: failure binding status: %{public}s", v259, 0xCu);
        sub_10000BB78(v260);
      }

      (*(v442 + 8))(v432, v441);
      *&v445 = 0xD000000000000027;
      *(&v445 + 1) = 0x80000001007218A0;
      v261._countAndFlagsBits = v254;
      v261._object = v256;
      String.append(_:)(v261);

      (*(v444 + 104))(v416, enum case for DIPError.Code.sqliteError(_:), v443);
      sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
      v262 = (sub_100007224(&qword_1008341D0, &unk_1006BF8D0) - 8);
      v263 = (*(*v262 + 80) + 32) & ~*(*v262 + 80);
      v264 = swift_allocObject();
      *(v264 + 16) = xmmword_1006BF520;
      v265 = v264 + v263;
      v266 = v265 + v262[14];
      v267 = enum case for DIPError.PropertyKey.underlyingErrno(_:);
      v268 = type metadata accessor for DIPError.PropertyKey();
      (*(*(v268 - 8) + 104))(v265, v267, v268);
      v269 = sqlite3_errcode(v440);
      *(v266 + 24) = &type metadata for Int32;
      *(v266 + 32) = &protocol witness table for Int32;
      *v266 = v269;
      sub_10003C9C0(v264);
      swift_setDeallocating();
      sub_10000BE18(v265, &qword_1008341D0, &unk_1006BF8D0);
      swift_deallocClassInstance();
      type metadata accessor for DIPError();
      sub_10057628C(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
      swift_allocError();
      goto LABEL_93;
    }

    goto LABEL_141;
  }

  v270 = ppStmt;
  v271 = String.utf8CString.getter();
  LODWORD(v270) = sqlite3_bind_text(v270, 10, (v271 + 32), -1, v84);

  if (v270)
  {
    result = sqlite3_errmsg(v440);
    if (result)
    {

      v272 = String.init(cString:)();
      v274 = v273;
      defaultLogger()();

      v275 = Logger.logObject.getter();
      v276 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v275, v276))
      {
        v277 = swift_slowAlloc();
        v278 = swift_slowAlloc();
        *&v445 = v278;
        *v277 = 136446210;
        *(v277 + 4) = sub_100141FE4(v272, v274, &v445);
        _os_log_impl(&_mh_execute_header, v275, v276, "coreidvd: failure binding sessionUuid: %{public}s", v277, 0xCu);
        sub_10000BB78(v278);
      }

      (*(v442 + 8))(v431, v441);
      *&v445 = 0xD00000000000002CLL;
      *(&v445 + 1) = 0x80000001007218D0;
      v279._countAndFlagsBits = v272;
      v279._object = v274;
      String.append(_:)(v279);

      (*(v444 + 104))(v416, enum case for DIPError.Code.sqliteError(_:), v443);
      sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
      v280 = (sub_100007224(&qword_1008341D0, &unk_1006BF8D0) - 8);
      v281 = (*(*v280 + 80) + 32) & ~*(*v280 + 80);
      v282 = swift_allocObject();
      *(v282 + 16) = xmmword_1006BF520;
      v283 = v282 + v281;
      v284 = v283 + v280[14];
      v285 = enum case for DIPError.PropertyKey.underlyingErrno(_:);
      v286 = type metadata accessor for DIPError.PropertyKey();
      (*(*(v286 - 8) + 104))(v283, v285, v286);
      v287 = sqlite3_errcode(v440);
      *(v284 + 24) = &type metadata for Int32;
      *(v284 + 32) = &protocol witness table for Int32;
      *v284 = v287;
      sub_10003C9C0(v282);
      swift_setDeallocating();
      sub_10000BE18(v283, &qword_1008341D0, &unk_1006BF8D0);
      swift_deallocClassInstance();
      type metadata accessor for DIPError();
      sub_10057628C(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
      swift_allocError();
      goto LABEL_93;
    }

    goto LABEL_142;
  }

  v288 = ppStmt;
  if (a2[18])
  {
    v289 = (String.utf8CString.getter() + 32);
  }

  else
  {
    v289 = 0;
  }

  v290 = sqlite3_bind_text(v288, 11, v289, -1, v84);
  swift_unknownObjectRelease();
  if (v290)
  {
    result = sqlite3_errmsg(v440);
    if (result)
    {

      v291 = String.init(cString:)();
      v293 = v292;
      defaultLogger()();

      v294 = Logger.logObject.getter();
      v295 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v294, v295))
      {
        v296 = swift_slowAlloc();
        v297 = swift_slowAlloc();
        *&v445 = v297;
        *v296 = 136446210;
        *(v296 + 4) = sub_100141FE4(v291, v293, &v445);
        _os_log_impl(&_mh_execute_header, v294, v295, "coreidvd: failure binding launchTier: %{public}s", v296, 0xCu);
        sub_10000BB78(v297);
      }

      (*(v442 + 8))(v430, v441);
      *&v445 = 0xD00000000000002BLL;
      *(&v445 + 1) = 0x8000000100721900;
      v298._countAndFlagsBits = v291;
      v298._object = v293;
      String.append(_:)(v298);

      (*(v444 + 104))(v416, enum case for DIPError.Code.sqliteError(_:), v443);
      sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
      v299 = (sub_100007224(&qword_1008341D0, &unk_1006BF8D0) - 8);
      v300 = (*(*v299 + 80) + 32) & ~*(*v299 + 80);
      v301 = swift_allocObject();
      *(v301 + 16) = xmmword_1006BF520;
      v302 = v301 + v300;
      v303 = v302 + v299[14];
      v304 = enum case for DIPError.PropertyKey.underlyingErrno(_:);
      v305 = type metadata accessor for DIPError.PropertyKey();
      (*(*(v305 - 8) + 104))(v302, v304, v305);
      v306 = sqlite3_errcode(v440);
      *(v303 + 24) = &type metadata for Int32;
      *(v303 + 32) = &protocol witness table for Int32;
      *v303 = v306;
      sub_10003C9C0(v301);
      swift_setDeallocating();
      sub_10000BE18(v302, &qword_1008341D0, &unk_1006BF8D0);
      swift_deallocClassInstance();
      type metadata accessor for DIPError();
      sub_10057628C(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
      swift_allocError();
      goto LABEL_93;
    }

    goto LABEL_143;
  }

  v307 = ppStmt;
  v308 = String.utf8CString.getter();
  LODWORD(v307) = sqlite3_bind_text(v307, 12, (v308 + 32), -1, v84);

  if (v307)
  {
    result = sqlite3_errmsg(v440);
    if (result)
    {

      v309 = String.init(cString:)();
      v311 = v310;
      defaultLogger()();

      v312 = Logger.logObject.getter();
      v313 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v312, v313))
      {
        v314 = swift_slowAlloc();
        v315 = swift_slowAlloc();
        *&v445 = v315;
        *v314 = 136315138;
        *(v314 + 4) = sub_100141FE4(v309, v311, &v445);
        _os_log_impl(&_mh_execute_header, v312, v313, "coreidvd: failure binding targetTier: %s", v314, 0xCu);
        sub_10000BB78(v315);
      }

      (*(v442 + 8))(v429, v441);
      *&v445 = 0xD00000000000002BLL;
      *(&v445 + 1) = 0x8000000100721930;
      v316._countAndFlagsBits = v309;
      v316._object = v311;
      String.append(_:)(v316);

      (*(v444 + 104))(v416, enum case for DIPError.Code.sqliteError(_:), v443);
      sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
      v317 = (sub_100007224(&qword_1008341D0, &unk_1006BF8D0) - 8);
      v318 = (*(*v317 + 80) + 32) & ~*(*v317 + 80);
      v319 = swift_allocObject();
      *(v319 + 16) = xmmword_1006BF520;
      v320 = v319 + v318;
      v321 = v320 + v317[14];
      v322 = enum case for DIPError.PropertyKey.underlyingErrno(_:);
      v323 = type metadata accessor for DIPError.PropertyKey();
      (*(*(v323 - 8) + 104))(v320, v322, v323);
      v324 = sqlite3_errcode(v440);
      *(v321 + 24) = &type metadata for Int32;
      *(v321 + 32) = &protocol witness table for Int32;
      *v321 = v324;
      sub_10003C9C0(v319);
      swift_setDeallocating();
      sub_10000BE18(v320, &qword_1008341D0, &unk_1006BF8D0);
      swift_deallocClassInstance();
      type metadata accessor for DIPError();
      sub_10057628C(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
      swift_allocError();
      goto LABEL_93;
    }

    goto LABEL_144;
  }

  v52 = type metadata accessor for DIPODINPair(0);
  v325 = v428;
  sub_10000BBC4(a2 + *(v52 + 13), v428, &qword_100847538, &unk_1006E83A0);
  if ((*(v424 + 48))(v325, 1, v427) == 1)
  {
    sub_10000BE18(v428, &qword_100847538, &unk_1006E83A0);
    if (!sqlite3_bind_null(ppStmt, 13))
    {
      goto LABEL_114;
    }

    result = sqlite3_errmsg(v440);
    if (result)
    {

      v326 = String.init(cString:)();
      v328 = v327;
      defaultLogger()();

      v329 = Logger.logObject.getter();
      v330 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v329, v330))
      {
        v331 = swift_slowAlloc();
        v332 = swift_slowAlloc();
        *&v445 = v332;
        *v331 = 136446210;
        *(v331 + 4) = sub_100141FE4(v326, v328, &v445);
        _os_log_impl(&_mh_execute_header, v329, v330, "coreidvd: failure binding null otd_request: %{public}s", v331, 0xCu);
        sub_10000BB78(v332);
      }

      (*(v442 + 8))(v423, v441);
      *&v445 = 0xD00000000000002CLL;
      *(&v445 + 1) = 0x8000000100720520;
      v333._countAndFlagsBits = v326;
      v333._object = v328;
      String.append(_:)(v333);

      (*(v444 + 104))(v416, enum case for DIPError.Code.sqliteError(_:), v443);
      sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
      v334 = (sub_100007224(&qword_1008341D0, &unk_1006BF8D0) - 8);
      v335 = (*(*v334 + 80) + 32) & ~*(*v334 + 80);
      v336 = swift_allocObject();
      *(v336 + 16) = xmmword_1006BF520;
      v337 = v336 + v335;
      v338 = v337 + v334[14];
      v339 = enum case for DIPError.PropertyKey.underlyingErrno(_:);
      v340 = type metadata accessor for DIPError.PropertyKey();
      (*(*(v340 - 8) + 104))(v337, v339, v340);
      v341 = sqlite3_errcode(v440);
      *(v338 + 24) = &type metadata for Int32;
      *(v338 + 32) = &protocol witness table for Int32;
      *v338 = v341;
      sub_10003C9C0(v336);
      swift_setDeallocating();
      sub_10000BE18(v337, &qword_1008341D0, &unk_1006BF8D0);
      swift_deallocClassInstance();
      type metadata accessor for DIPError();
      sub_10057628C(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
      swift_allocError();
      goto LABEL_93;
    }

LABEL_145:
    __break(1u);
LABEL_146:
    __break(1u);
    goto LABEL_147;
  }

  sub_100576224(v428, v425, type metadata accessor for OTDRequest);
  type metadata accessor for JSONEncoder();
  swift_allocObject();
  JSONEncoder.init()();
  sub_10057628C(&unk_1008480C0, type metadata accessor for OTDRequest, &unk_1006C1534);
  v342 = v426;
  v62 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v426 = v342;
  if (v342)
  {
    sub_1005762D4(v425, type metadata accessor for OTDRequest);

    return sqlite3_finalize(ppStmt);
  }

LABEL_104:
  v43 = v62;
  v87 = v63;

  *&v445 = v43;
  *(&v445 + 1) = v87;
  static String.Encoding.utf8.getter();
  sub_10053B880();
  String.init<A>(bytes:encoding:)();
  v84 = ppStmt;
  if (!v343)
  {
LABEL_107:
    v344 = 0;
    goto LABEL_108;
  }

  v344 = (String.utf8CString.getter() + 32);
LABEL_108:
  v345 = sqlite3_bind_text(v84, 13, v344, -1, v49);
  swift_unknownObjectRelease();
  if (v345)
  {
    result = sqlite3_errmsg(v440);
    if (result)
    {

      v346 = String.init(cString:)();
      v348 = v347;
      defaultLogger()();

      v349 = Logger.logObject.getter();
      v350 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v349, v350))
      {
        v351 = swift_slowAlloc();
        v352 = swift_slowAlloc();
        *&v445 = v352;
        *v351 = 136446210;
        *(v351 + 4) = sub_100141FE4(v346, v348, &v445);
        _os_log_impl(&_mh_execute_header, v349, v350, "coreidvd: failure binding otd_request: %{public}s", v351, 0xCu);
        sub_10000BB78(v352);
      }

      (*(v442 + 8))(v421, v441);
      *&v445 = 0xD00000000000002CLL;
      *(&v445 + 1) = 0x8000000100720520;
      v353._countAndFlagsBits = v346;
      v353._object = v348;
      String.append(_:)(v353);

      v441 = *(&v445 + 1);
      v442 = v445;
      (*(v444 + 104))(v416, enum case for DIPError.Code.sqliteError(_:), v443);
      sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
      v354 = (sub_100007224(&qword_1008341D0, &unk_1006BF8D0) - 8);
      v355 = (*(*v354 + 80) + 32) & ~*(*v354 + 80);
      v356 = swift_allocObject();
      *(v356 + 16) = xmmword_1006BF520;
      v357 = v356 + v355;
      v358 = v357 + v354[14];
      v359 = enum case for DIPError.PropertyKey.underlyingErrno(_:);
      v360 = type metadata accessor for DIPError.PropertyKey();
      (*(*(v360 - 8) + 104))(v357, v359, v360);
      v361 = sqlite3_errcode(v440);
      *(v358 + 24) = &type metadata for Int32;
      *(v358 + 32) = &protocol witness table for Int32;
      *v358 = v361;
      sub_10003C9C0(v356);
      swift_setDeallocating();
      sub_10000BE18(v357, &qword_1008341D0, &unk_1006BF8D0);
      swift_deallocClassInstance();
      type metadata accessor for DIPError();
      sub_10057628C(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
      swift_allocError();
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      swift_willThrow();
      sub_10000B90C(v43, v87);
      sub_1005762D4(v425, type metadata accessor for OTDRequest);
      return sqlite3_finalize(ppStmt);
    }

    goto LABEL_146;
  }

  sub_1005762D4(v425, type metadata accessor for OTDRequest);

  sub_10000B90C(v43, v87);
LABEL_114:
  if (*(a2 + *(v52 + 14) + 8))
  {
    v362 = ppStmt;
    v363 = String.utf8CString.getter();
    LODWORD(v362) = sqlite3_bind_text(v362, 14, (v363 + 32), -1, v49);

    if (v362)
    {
      result = sqlite3_errmsg(v440);
      if (!result)
      {
LABEL_147:
        __break(1u);
        goto LABEL_148;
      }

      v364 = String.init(cString:)();
      v366 = v365;
      defaultLogger()();

      v367 = Logger.logObject.getter();
      v368 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v367, v368))
      {
        v369 = swift_slowAlloc();
        v370 = swift_slowAlloc();
        *&v445 = v370;
        *v369 = 136446210;
        *(v369 + 4) = sub_100141FE4(v364, v366, &v445);
        _os_log_impl(&_mh_execute_header, v367, v368, "coreidvd: failure binding otd_url: %{public}s", v369, 0xCu);
        sub_10000BB78(v370);
      }

      (*(v442 + 8))(v422, v441);
      *&v445 = 0xD000000000000028;
      *(&v445 + 1) = 0x8000000100721960;
      v371._countAndFlagsBits = v364;
      v371._object = v366;
      String.append(_:)(v371);

      (*(v444 + 104))(v416, enum case for DIPError.Code.sqliteError(_:), v443);
      sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
      v372 = (sub_100007224(&qword_1008341D0, &unk_1006BF8D0) - 8);
      v373 = (*(*v372 + 80) + 32) & ~*(*v372 + 80);
      v374 = swift_allocObject();
      *(v374 + 16) = xmmword_1006BF520;
      v375 = v374 + v373;
      v376 = v375 + v372[14];
      v377 = enum case for DIPError.PropertyKey.underlyingErrno(_:);
      v378 = type metadata accessor for DIPError.PropertyKey();
      (*(*(v378 - 8) + 104))(v375, v377, v378);
      v379 = sqlite3_errcode(v440);
      *(v376 + 24) = &type metadata for Int32;
      *(v376 + 32) = &protocol witness table for Int32;
      *v376 = v379;
      sub_10003C9C0(v374);
      swift_setDeallocating();
      sub_10000BE18(v375, &qword_1008341D0, &unk_1006BF8D0);
      swift_deallocClassInstance();
      type metadata accessor for DIPError();
      sub_10057628C(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
      swift_allocError();
      goto LABEL_93;
    }
  }

  else if (sqlite3_bind_null(ppStmt, 14))
  {
    result = sqlite3_errmsg(v440);
    if (!result)
    {
LABEL_148:
      __break(1u);
      goto LABEL_149;
    }

    v380 = String.init(cString:)();
    v382 = v381;
    defaultLogger()();

    v383 = Logger.logObject.getter();
    v384 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v383, v384))
    {
      v385 = swift_slowAlloc();
      v386 = swift_slowAlloc();
      *&v445 = v386;
      *v385 = 136446210;
      *(v385 + 4) = sub_100141FE4(v380, v382, &v445);
      _os_log_impl(&_mh_execute_header, v383, v384, "coreidvd: failure binding null otd_url: %{public}s", v385, 0xCu);
      sub_10000BB78(v386);
    }

    (*(v442 + 8))(v417, v441);
    *&v445 = 0xD000000000000028;
    *(&v445 + 1) = 0x8000000100721960;
    v387._countAndFlagsBits = v380;
    v387._object = v382;
    String.append(_:)(v387);

    (*(v444 + 104))(v416, enum case for DIPError.Code.sqliteError(_:), v443);
    sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
    v388 = (sub_100007224(&qword_1008341D0, &unk_1006BF8D0) - 8);
    v389 = (*(*v388 + 80) + 32) & ~*(*v388 + 80);
    v390 = swift_allocObject();
    *(v390 + 16) = xmmword_1006BF520;
    v391 = v390 + v389;
    v392 = v391 + v388[14];
    v393 = enum case for DIPError.PropertyKey.underlyingErrno(_:);
    v394 = type metadata accessor for DIPError.PropertyKey();
    (*(*(v394 - 8) + 104))(v391, v393, v394);
    v395 = sqlite3_errcode(v440);
    *(v392 + 24) = &type metadata for Int32;
    *(v392 + 32) = &protocol witness table for Int32;
    *v392 = v395;
    sub_10003C9C0(v390);
    swift_setDeallocating();
    sub_10000BE18(v391, &qword_1008341D0, &unk_1006BF8D0);
    swift_deallocClassInstance();
    type metadata accessor for DIPError();
    sub_10057628C(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    goto LABEL_93;
  }

  if (sqlite3_step(ppStmt) == 101)
  {

    defaultLogger()();
    v396 = Logger.logObject.getter();
    v397 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v396, v397))
    {
      v398 = swift_slowAlloc();
      *v398 = 0;
      _os_log_impl(&_mh_execute_header, v396, v397, "coredivd: Stored new value mapping", v398, 2u);
    }

    (*(v442 + 8))(v420, v441);
    return sqlite3_finalize(ppStmt);
  }

  result = sqlite3_errmsg(v440);
  if (result)
  {

    v399 = String.init(cString:)();
    v401 = v400;
    defaultLogger()();

    v402 = Logger.logObject.getter();
    v403 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v402, v403))
    {
      v404 = swift_slowAlloc();
      v405 = swift_slowAlloc();
      *&v445 = v405;
      *v404 = 136446210;
      *(v404 + 4) = sub_100141FE4(v399, v401, &v445);
      _os_log_impl(&_mh_execute_header, v402, v403, "coreidvd: failure inserting mapping: %{public}s", v404, 0xCu);
      sub_10000BB78(v405);
    }

    (*(v442 + 8))(v418, v441);
    *&v445 = 0xD000000000000019;
    *(&v445 + 1) = 0x8000000100721990;
    v406._countAndFlagsBits = v399;
    v406._object = v401;
    String.append(_:)(v406);

    (*(v444 + 104))(v416, enum case for DIPError.Code.sqliteError(_:), v443);
    sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
    v407 = (sub_100007224(&qword_1008341D0, &unk_1006BF8D0) - 8);
    v408 = (*(*v407 + 80) + 32) & ~*(*v407 + 80);
    v409 = swift_allocObject();
    *(v409 + 16) = xmmword_1006BF520;
    v410 = v409 + v408;
    v411 = v410 + v407[14];
    v412 = enum case for DIPError.PropertyKey.underlyingErrno(_:);
    v413 = type metadata accessor for DIPError.PropertyKey();
    (*(*(v413 - 8) + 104))(v410, v412, v413);
    v414 = sqlite3_errcode(v440);
    *(v411 + 24) = &type metadata for Int32;
    *(v411 + 32) = &protocol witness table for Int32;
    *v411 = v414;
    sub_10003C9C0(v409);
    swift_setDeallocating();
    sub_10000BE18(v410, &qword_1008341D0, &unk_1006BF8D0);
    swift_deallocClassInstance();
    type metadata accessor for DIPError();
    sub_10057628C(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
LABEL_93:
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    return sqlite3_finalize(ppStmt);
  }

LABEL_149:
  __break(1u);
  return result;
}

const char *sub_10055BAE0(uint64_t a1, char **a2)
{
  v4 = type metadata accessor for Logger();
  v49 = *(v4 - 8);
  v5 = __chkstk_darwin(v4);
  v7 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v45 - v8;
  v47 = type metadata accessor for DIPError.Code();
  v10 = *(v47 - 8);
  __chkstk_darwin(v47);
  v12 = &v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  ppStmt = 0;
  swift_beginAccess();
  v13 = *(a1 + 40);
  if (!v13)
  {
    sub_1005507F8();
    v13 = *(a1 + 40);
    if (!v13)
    {
      (*(v10 + 104))(v12, enum case for DIPError.Code.databaseInaccessible(_:), v47);
      sub_1000402AC(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_10057628C(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
      swift_allocError();
LABEL_19:
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      return swift_willThrow();
    }
  }

  v48 = v4;
  v14 = String.utf8CString.getter();
  v15 = sqlite3_prepare_v3(v13, (v14 + 32), -1, 0, &ppStmt, 0);

  if (v15)
  {
    result = sqlite3_errmsg(v13);
    if (result)
    {
      v17 = String.init(cString:)();
      v19 = v18;
      defaultLogger()();

      v20 = Logger.logObject.getter();
      v21 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        v23 = swift_slowAlloc();
        v46 = v12;
        v24 = v23;
        v50 = v23;
        *v22 = 136446210;
        *(v22 + 4) = sub_100141FE4(v17, v19, &v50);
        _os_log_impl(&_mh_execute_header, v20, v21, "coreidvd: failed to prepare select statement: %{public}s", v22, 0xCu);
        sub_10000BB78(v24);
        v12 = v46;
      }

      (*(v49 + 8))(v7, v48);
      v50 = 0;
      v51 = 0xE000000000000000;
      _StringGuts.grow(_:)(33);

      v50 = 0xD00000000000001FLL;
      v51 = 0x800000010071F8B0;
      v25._countAndFlagsBits = v17;
      v25._object = v19;
      String.append(_:)(v25);

      v49 = v50;
      (*(v10 + 104))(v12, enum case for DIPError.Code.sqliteError(_:), v47);
      sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
      v26 = (sub_100007224(&qword_1008341D0, &unk_1006BF8D0) - 8);
      v27 = (*(*v26 + 80) + 32) & ~*(*v26 + 80);
      v28 = swift_allocObject();
      *(v28 + 16) = xmmword_1006BF520;
      v29 = v28 + v27;
      v30 = v29 + v26[14];
      v31 = enum case for DIPError.PropertyKey.underlyingErrno(_:);
      v32 = type metadata accessor for DIPError.PropertyKey();
      (*(*(v32 - 8) + 104))(v29, v31, v32);
      v33 = sqlite3_errcode(v13);
      *(v30 + 24) = &type metadata for Int32;
      *(v30 + 32) = &protocol witness table for Int32;
      *v30 = v33;
      sub_10003C9C0(v28);
      swift_setDeallocating();
      sub_10000BE18(v29, &qword_1008341D0, &unk_1006BF8D0);
      swift_deallocClassInstance();
      type metadata accessor for DIPError();
      sub_10057628C(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
      swift_allocError();
      goto LABEL_19;
    }

    __break(1u);
  }

  else
  {
    while (sqlite3_step(ppStmt) == 100)
    {
      if (!sqlite3_column_text(ppStmt, 0))
      {
        __break(1u);
      }

      v35 = String.init(cString:)();
      v37 = v36;
      v38 = *a2;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *a2 = v38;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v38 = sub_1003C5110(0, *(v38 + 2) + 1, 1, v38);
        *a2 = v38;
      }

      v41 = *(v38 + 2);
      v40 = *(v38 + 3);
      if (v41 >= v40 >> 1)
      {
        v38 = sub_1003C5110((v40 > 1), v41 + 1, 1, v38);
        *a2 = v38;
      }

      *(v38 + 2) = v41 + 1;
      v34 = &v38[16 * v41];
      *(v34 + 4) = v35;
      *(v34 + 5) = v37;
    }

    defaultLogger()();
    v42 = Logger.logObject.getter();
    v43 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      *v44 = 0;
      _os_log_impl(&_mh_execute_header, v42, v43, "retrieved all claim id", v44, 2u);
    }

    (*(v49 + 8))(v9, v48);
    return sqlite3_finalize(ppStmt);
  }

  return result;
}

void *sub_10055C2C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v142 = a4;
  v144 = a2;
  v145 = a3;
  v6 = type metadata accessor for Logger();
  v147 = *(v6 - 8);
  v148 = v6;
  v7 = __chkstk_darwin(v6);
  v9 = &v120 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v7);
  v12 = &v120 - v11;
  __chkstk_darwin(v10);
  v139 = &v120 - v13;
  v143 = type metadata accessor for VerifiedClaim(0);
  v14 = __chkstk_darwin(v143);
  v141 = &v120 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v146 = &v120 - v16;
  v17 = type metadata accessor for String.Encoding();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v120 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for DIPError.Code();
  v149 = *(v21 - 8);
  v150 = v21;
  __chkstk_darwin(v21);
  v151 = &v120 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  ppStmt = 0;
  swift_beginAccess();
  v23 = *(a1 + 40);
  if (!v23)
  {
    sub_1005507F8();
    v23 = *(a1 + 40);
    if (!v23)
    {
      (*(v149 + 104))(v151, enum case for DIPError.Code.databaseInaccessible(_:), v150);
      sub_1000402AC(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_10057628C(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
      swift_allocError();
LABEL_17:
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      return swift_willThrow();
    }
  }

  v24 = String.utf8CString.getter();
  v25 = sqlite3_prepare_v3(v23, (v24 + 32), -1, 0, &ppStmt, 0);

  if (v25)
  {
    result = sqlite3_errmsg(v23);
    if (result)
    {
      v27 = String.init(cString:)();
      v29 = v28;
      defaultLogger()();

      v30 = Logger.logObject.getter();
      v31 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        v33 = swift_slowAlloc();
        v154 = v33;
        *v32 = 136446210;
        *(v32 + 4) = sub_100141FE4(v27, v29, &v154);
        _os_log_impl(&_mh_execute_header, v30, v31, "coreidvd: failed to prepare select statement: %{public}s", v32, 0xCu);
        sub_10000BB78(v33);
      }

      (*(v147 + 8))(v9, v148);
      v154 = 0;
      v155 = 0xE000000000000000;
      _StringGuts.grow(_:)(33);

      v154 = 0xD00000000000001FLL;
      v155 = 0x800000010071F8B0;
      v34._countAndFlagsBits = v27;
      v34._object = v29;
      String.append(_:)(v34);

      v148 = v154;
      (*(v149 + 104))(v151, enum case for DIPError.Code.sqliteError(_:), v150);
      sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
      v35 = (sub_100007224(&qword_1008341D0, &unk_1006BF8D0) - 8);
      v36 = (*(*v35 + 80) + 32) & ~*(*v35 + 80);
      v37 = swift_allocObject();
      *(v37 + 16) = xmmword_1006BF520;
      v38 = v37 + v36;
      v39 = v38 + v35[14];
      v40 = enum case for DIPError.PropertyKey.underlyingErrno(_:);
      v41 = type metadata accessor for DIPError.PropertyKey();
      (*(*(v41 - 8) + 104))(v38, v40, v41);
      v42 = sqlite3_errcode(v23);
      *(v39 + 24) = &type metadata for Int32;
      *(v39 + 32) = &protocol witness table for Int32;
      *v39 = v42;
      sub_10003C9C0(v37);
      swift_setDeallocating();
      sub_10000BE18(v38, &qword_1008341D0, &unk_1006BF8D0);
      swift_deallocClassInstance();
      type metadata accessor for DIPError();
      sub_10057628C(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
      swift_allocError();
      goto LABEL_17;
    }

    __break(1u);
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  v43 = ppStmt;
  if (qword_100832CA0 != -1)
  {
    swift_once();
  }

  v44 = qword_1008823D0;
  v45 = String.utf8CString.getter();
  v46 = sqlite3_bind_text(v43, 1, (v45 + 32), -1, v44);

  if (!v46)
  {
    if (sqlite3_step(ppStmt) == 100)
    {
      v140 = (v18 + 8);
      v121 = v17;
      while (1)
      {
        result = sqlite3_column_text(ppStmt, 0);
        if (!result)
        {
          break;
        }

        v76 = String.init(cString:)();
        v78 = v77;
        result = sqlite3_column_text(ppStmt, 1);
        if (!result)
        {
          goto LABEL_47;
        }

        v129 = v76;
        v79 = String.init(cString:)();
        v133 = v80;
        result = sqlite3_column_text(ppStmt, 2);
        if (!result)
        {
          goto LABEL_45;
        }

        String.init(cString:)();
        static String.Encoding.utf8.getter();
        v138 = String.data(using:allowLossyConversion:)();
        v82 = v81;

        v83 = *v140;
        (*v140)(v20, v17);
        if (v82 >> 60 == 15)
        {

          (*(v149 + 104))(v151, enum case for DIPError.Code.jsonDecodingFailed(_:), v150);
          sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
          v99 = (sub_100007224(&qword_1008341D0, &unk_1006BF8D0) - 8);
          v100 = (*(*v99 + 80) + 32) & ~*(*v99 + 80);
          v101 = swift_allocObject();
          *(v101 + 16) = xmmword_1006BF520;
          v102 = v101 + v100;
          v103 = (v102 + v99[14]);
          v104 = enum case for DIPError.PropertyKey.databaseColumn(_:);
          v105 = type metadata accessor for DIPError.PropertyKey();
          (*(*(v105 - 8) + 104))(v102, v104, v105);
          v103[3] = &type metadata for String;
          v103[4] = &protocol witness table for String;
          *v103 = 0x6D69616C63;
          v103[1] = 0xE500000000000000;
          sub_10003C9C0(v101);
          swift_setDeallocating();
          sub_10000BE18(v102, &qword_1008341D0, &unk_1006BF8D0);
          swift_deallocClassInstance();
          type metadata accessor for DIPError();
          sub_10057628C(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
          swift_allocError();
          goto LABEL_15;
        }

        result = sqlite3_column_text(ppStmt, 3);
        if (!result)
        {
          goto LABEL_48;
        }

        String.init(cString:)();
        static String.Encoding.utf8.getter();
        v136 = String.data(using:allowLossyConversion:)();
        v85 = v84;

        v83(v20, v17);
        v137 = v85;
        if (v85 >> 60 == 15)
        {

          (*(v149 + 104))(v151, enum case for DIPError.Code.jsonDecodingFailed(_:), v150);
          sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
          v106 = (sub_100007224(&qword_1008341D0, &unk_1006BF8D0) - 8);
          v107 = (*(*v106 + 80) + 32) & ~*(*v106 + 80);
          v108 = swift_allocObject();
          *(v108 + 16) = xmmword_1006BF520;
          v109 = v108 + v107;
          v110 = (v109 + v106[14]);
          v111 = enum case for DIPError.PropertyKey.databaseColumn(_:);
          v112 = type metadata accessor for DIPError.PropertyKey();
          (*(*(v112 - 8) + 104))(v109, v111, v112);
          v110[3] = &type metadata for String;
          v110[4] = &protocol witness table for String;
          *v110 = 0x7461646D69616C63;
          v110[1] = 0xE900000000000061;
          sub_10003C9C0(v108);
          swift_setDeallocating();
          sub_10000BE18(v109, &qword_1008341D0, &unk_1006BF8D0);
          swift_deallocClassInstance();
          type metadata accessor for DIPError();
          sub_10057628C(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
          swift_allocError();
          DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
          swift_willThrow();
          sub_10000BD94(v138, v82);
          return sqlite3_finalize(ppStmt);
        }

        result = sqlite3_column_text(ppStmt, 4);
        if (!result)
        {
          goto LABEL_49;
        }

        String.init(cString:)();
        static String.Encoding.utf8.getter();
        v134 = String.data(using:allowLossyConversion:)();
        v87 = v86;

        v83(v20, v17);
        v135 = v87;
        v132 = v82;
        if (v87 >> 60 == 15)
        {

          (*(v149 + 104))(v151, enum case for DIPError.Code.jsonDecodingFailed(_:), v150);
          sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
          v113 = (sub_100007224(&qword_1008341D0, &unk_1006BF8D0) - 8);
          v114 = (*(*v113 + 80) + 32) & ~*(*v113 + 80);
          v115 = swift_allocObject();
          *(v115 + 16) = xmmword_1006BF520;
          v116 = v115 + v114;
          v117 = (v116 + v113[14]);
          v118 = enum case for DIPError.PropertyKey.databaseColumn(_:);
          v119 = type metadata accessor for DIPError.PropertyKey();
          (*(*(v119 - 8) + 104))(v116, v118, v119);
          v117[3] = &type metadata for String;
          v117[4] = &protocol witness table for String;
          *v117 = 0xD000000000000013;
          v117[1] = 0x800000010071F970;
          sub_10003C9C0(v115);
          swift_setDeallocating();
          sub_10000BE18(v116, &qword_1008341D0, &unk_1006BF8D0);
          swift_deallocClassInstance();
          type metadata accessor for DIPError();
          sub_10057628C(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
          swift_allocError();
          DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
          swift_willThrow();
          sub_10000BD94(v136, v137);
          sub_10000BD94(v138, v132);
          return sqlite3_finalize(ppStmt);
        }

        v127 = v79;
        result = sqlite3_column_text(ppStmt, 5);
        if (!result)
        {
          goto LABEL_52;
        }

        String.init(cString:)();
        static String.Encoding.utf8.getter();
        v88 = String.data(using:allowLossyConversion:)();
        v90 = v89;

        v83(v20, v17);
        result = sqlite3_column_text(ppStmt, 6);
        if (!result)
        {
          goto LABEL_51;
        }

        v91 = String.init(cString:)();
        v131 = v92;
        result = sqlite3_column_text(ppStmt, 7);
        if (!result)
        {
          goto LABEL_50;
        }

        v154 = String.init(cString:)();
        v155 = v93;
        v152 = 124;
        v153 = 0xE100000000000000;
        sub_10001F298();
        v130 = StringProtocol.components<A>(separatedBy:)();

        type metadata accessor for JSONDecoder();
        swift_allocObject();
        JSONDecoder.init()();
        sub_10057628C(&qword_100837948, type metadata accessor for VerifiedClaim, &unk_1006D0E30);
        dispatch thunk of JSONDecoder.decode<A>(_:from:)();
        if (v4)
        {
          sub_10000BD94(v138, v82);
          sub_10000BD94(v136, v137);
          sub_10000BD94(v88, v90);
          sub_10000BD94(v134, v135);

          return sqlite3_finalize(ppStmt);
        }

        v126 = v91;
        v128 = v78;

        swift_allocObject();
        JSONDecoder.init()();
        sub_100007224(&unk_10084A070, &unk_1006E7DF0);
        sub_1000AB6CC();
        dispatch thunk of JSONDecoder.decode<A>(_:from:)();

        v94 = v154;
        swift_allocObject();
        JSONDecoder.init()();
        dispatch thunk of JSONDecoder.decode<A>(_:from:)();

        v125 = v94;
        v124 = v88;
        v123 = v154;
        v122 = v90;
        if (v90 >> 60 == 15)
        {
          v63 = 0;
          v64 = v145;
        }

        else
        {
          swift_allocObject();
          sub_10000B8B8(v88, v90);
          JSONDecoder.init()();
          sub_100007224(&qword_100848070, &unk_1006E8370);
          sub_100575EDC();
          dispatch thunk of JSONDecoder.decode<A>(_:from:)();
          v64 = v145;
          sub_10000BD94(v88, v90);

          v63 = v154;
        }

        v65 = v141;
        sub_100575E78(v146, v141);
        type metadata accessor for DIPStoredVerifiedClaim(0);
        v66 = swift_allocObject();
        v67 = OBJC_IVAR____TtC8coreidvd22DIPStoredVerifiedClaim_encryptedClaimData;
        *(v66 + OBJC_IVAR____TtC8coreidvd22DIPStoredVerifiedClaim_encryptedClaimData) = 0;
        v66[2] = v144;
        v66[3] = v64;
        v68 = v129;
        v69 = v128;
        v66[4] = v129;
        v66[5] = v69;
        v70 = v133;
        v66[6] = v127;
        v66[7] = v70;
        sub_100576224(v65, v66 + OBJC_IVAR____TtC8coreidvd22DIPStoredVerifiedClaim_claim, type metadata accessor for VerifiedClaim);
        *(v66 + OBJC_IVAR____TtC8coreidvd22DIPStoredVerifiedClaim_claimData) = v125;
        *(v66 + OBJC_IVAR____TtC8coreidvd22DIPStoredVerifiedClaim_unverifiedClaimData) = v123;
        *(v66 + v67) = v63;
        v71 = (v66 + OBJC_IVAR____TtC8coreidvd22DIPStoredVerifiedClaim_serviceName);
        v72 = v131;
        *v71 = v126;
        v71[1] = v72;
        *(v66 + OBJC_IVAR____TtC8coreidvd22DIPStoredVerifiedClaim_acl) = v130;

        v73 = v142;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v154 = *v73;
        *v73 = 0x8000000000000000;
        sub_10016E3A4(v66, v68, v69, isUniquelyReferenced_nonNull_native);

        *v73 = v154;
        sub_10000BD94(v138, v132);
        sub_10000BD94(v136, v137);
        sub_10000BD94(v134, v135);
        sub_10000BD94(v124, v122);
        sub_1005762D4(v146, type metadata accessor for VerifiedClaim);
        v75 = sqlite3_step(ppStmt);
        v17 = v121;
        if (v75 != 100)
        {
          goto LABEL_36;
        }
      }

LABEL_46:
      __break(1u);
LABEL_47:
      __break(1u);
LABEL_48:
      __break(1u);
LABEL_49:
      __break(1u);
LABEL_50:
      __break(1u);
LABEL_51:
      __break(1u);
LABEL_52:
      __break(1u);
      goto LABEL_53;
    }

LABEL_36:
    v95 = v139;
    defaultLogger()();
    v96 = Logger.logObject.getter();
    v97 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v96, v97))
    {
      v98 = swift_slowAlloc();
      *v98 = 0;
      _os_log_impl(&_mh_execute_header, v96, v97, "retrieved claim", v98, 2u);
    }

    (*(v147 + 8))(v95, v148);
    return sqlite3_finalize(ppStmt);
  }

  result = sqlite3_errmsg(v23);
  if (result)
  {
    v47 = String.init(cString:)();
    v49 = v48;
    defaultLogger()();

    v50 = Logger.logObject.getter();
    v51 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      v154 = v53;
      *v52 = 136446210;
      *(v52 + 4) = sub_100141FE4(v47, v49, &v154);
      _os_log_impl(&_mh_execute_header, v50, v51, "coreidvd: failure binding providerId: %{public}s", v52, 0xCu);
      sub_10000BB78(v53);
    }

    (*(v147 + 8))(v12, v148);
    v154 = 0;
    v155 = 0xE000000000000000;
    _StringGuts.grow(_:)(44);

    v154 = 0xD00000000000002ALL;
    v155 = 0x800000010071F8D0;
    v54._countAndFlagsBits = v47;
    v54._object = v49;
    String.append(_:)(v54);

    v148 = v154;
    (*(v149 + 104))(v151, enum case for DIPError.Code.sqliteError(_:), v150);
    sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
    v55 = (sub_100007224(&qword_1008341D0, &unk_1006BF8D0) - 8);
    v56 = (*(*v55 + 80) + 32) & ~*(*v55 + 80);
    v57 = swift_allocObject();
    *(v57 + 16) = xmmword_1006BF520;
    v58 = v57 + v56;
    v59 = v58 + v55[14];
    v60 = enum case for DIPError.PropertyKey.underlyingErrno(_:);
    v61 = type metadata accessor for DIPError.PropertyKey();
    (*(*(v61 - 8) + 104))(v58, v60, v61);
    v62 = sqlite3_errcode(v23);
    *(v59 + 24) = &type metadata for Int32;
    *(v59 + 32) = &protocol witness table for Int32;
    *v59 = v62;
    sub_10003C9C0(v57);
    swift_setDeallocating();
    sub_10000BE18(v58, &qword_1008341D0, &unk_1006BF8D0);
    swift_deallocClassInstance();
    type metadata accessor for DIPError();
    sub_10057628C(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
LABEL_15:
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    return sqlite3_finalize(ppStmt);
  }

LABEL_53:
  __break(1u);
  return result;
}