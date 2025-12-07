int main(int argc, const char **argv, const char **envp)
{
  v3 = [objc_opt_self() sharedProgram];
  qword_100011598 = v3;
  v5 = [objc_allocWithZone(type metadata accessor for ManagedSettingsDiagnosticsToolDelegate(0 v4))];
  [v3 setDelegate:v5];

  result = [qword_100011598 main];
  __break(1u);
  return result;
}

id sub_1000013A4(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for ManagedSettingsDiagnosticsToolDelegate(a1, a2);
  return objc_msgSendSuper2(&v4, "dealloc");
}

char *sub_1000013FC(uint64_t a1, uint64_t a2)
{
  v3 = &v2[OBJC_IVAR____TtC29managedsettingsdiagnoticstool18DiagnosticsCommand_optionNameDiagnosticsPath];
  *v3 = 0xD000000000000010;
  *(v3 + 1) = 0x800000010000A640;
  v22.receiver = v2;
  v22.super_class = type metadata accessor for DiagnosticsCommand(a1, a2);
  v4 = objc_msgSendSuper2(&v22, "init");
  v5 = String._bridgeToObjectiveC()();
  [v4 setName:v5];

  v6 = String._bridgeToObjectiveC()();
  [v4 setShortEnglishDescription:v6];

  v7 = String._bridgeToObjectiveC()();
  [v4 setLongEnglishDescription:v7];

  v8 = *&v4[OBJC_IVAR____TtC29managedsettingsdiagnoticstool18DiagnosticsCommand_optionNameDiagnosticsPath];
  v9 = *&v4[OBJC_IVAR____TtC29managedsettingsdiagnoticstool18DiagnosticsCommand_optionNameDiagnosticsPath + 8];

  v10._countAndFlagsBits = v8;
  v10._object = v9;
  String.append(_:)(v10);

  v11._countAndFlagsBits = 93;
  v11._object = 0xE100000000000000;
  String.append(_:)(v11);
  v12 = String._bridgeToObjectiveC()();

  [v4 setUsageLine:{v12, 2960731, 0xE300000000000000}];

  v13 = [objc_allocWithZone(CLIOption) init];
  v14 = String._bridgeToObjectiveC()();
  [v13 setShortName:v14];

  v15 = String._bridgeToObjectiveC()();

  [v13 setLongName:v15];

  [v13 setParameterCount:1];
  v16 = String._bridgeToObjectiveC()();
  [v13 setShortEnglishDescription:v16];

  sub_100002D08(&qword_100011520, &unk_100009618);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_1000095C0;
  *(v17 + 32) = v13;
  sub_100003698(0, v18);
  v19 = v13;
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v4 setOptions:isa];

  return v4;
}

uint64_t sub_100001714(void *a1)
{
  v193 = type metadata accessor for URL.DirectoryHint();
  v3 = *(v193 - 1);
  __chkstk_darwin(v193);
  v192 = &v177 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100002D08(&qword_1000114F0, &qword_1000095F8);
  __chkstk_darwin(v5 - 8);
  v7 = &v177 - v6;
  v8 = type metadata accessor for URL();
  v194 = *(v8 - 8);
  v195 = v8;
  v9 = __chkstk_darwin(v8);
  v189 = &v177 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v188 = &v177 - v12;
  v13 = __chkstk_darwin(v11);
  v191 = &v177 - v14;
  v15 = __chkstk_darwin(v13);
  v190 = &v177 - v16;
  v17 = __chkstk_darwin(v15);
  v19 = &v177 - v18;
  v20 = __chkstk_darwin(v17);
  v22 = &v177 - v21;
  v23 = __chkstk_darwin(v20);
  v25 = &v177 - v24;
  v26 = __chkstk_darwin(v23);
  v28 = &v177 - v27;
  __chkstk_darwin(v26);
  v196 = &v177 - v29;
  v30 = [a1 dictionaryWithOptionsAndValues];
  v31 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  if (*(v31 + 16) && (v32 = sub_1000032F8(*(v1 + OBJC_IVAR____TtC29managedsettingsdiagnoticstool18DiagnosticsCommand_optionNameDiagnosticsPath), *(v1 + OBJC_IVAR____TtC29managedsettingsdiagnoticstool18DiagnosticsCommand_optionNameDiagnosticsPath + 8)), (v33 & 1) != 0))
  {
    sub_100003580(*(v31 + 56) + 32 * v32, v201);
  }

  else
  {

    memset(v201, 0, sizeof(v201));
  }

  sub_100003370(v201, &v198);
  if (!v199)
  {
    sub_100003520(&v198, &qword_1000114F8, &qword_100009600);
    if (qword_1000113C0 != -1)
    {
      swift_once();
    }

    v41 = type metadata accessor for Logger();
    sub_1000033E0(v41, static Logger.diagnostics);
    v42 = Logger.logObject.getter();
    v43 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      *v44 = 0;
      _os_log_impl(&_mh_execute_header, v42, v43, "diagnostics path cannot be nil", v44, 2u);
    }

    goto LABEL_59;
  }

  v34 = v194;
  sub_100003418(&v198, v200);
  *&v198 = 0;
  *(&v198 + 1) = 0xE000000000000000;
  v35._countAndFlagsBits = 0x2F2F3A656C6966;
  v35._object = 0xE700000000000000;
  String.append(_:)(v35);
  _print_unlocked<A, B>(_:_:)();
  URL.init(string:)();

  v36 = v195;
  if ((*(v34 + 48))(v7, 1, v195) == 1)
  {
    sub_100003520(v7, &qword_1000114F0, &qword_1000095F8);
    if (qword_1000113C0 != -1)
    {
      swift_once();
    }

    v37 = type metadata accessor for Logger();
    sub_1000033E0(v37, static Logger.diagnostics);
    v38 = Logger.logObject.getter();
    v39 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      *v40 = 0;
      _os_log_impl(&_mh_execute_header, v38, v39, "Failed to convert diagnostics path to URL", v40, 2u);
    }

    goto LABEL_58;
  }

  (*(v34 + 32))(v196, v7, v36);
  v197 = 0;
  v187 = objc_opt_self();
  v45 = [v187 defaultManager];
  URL.path.getter();
  v46 = String._bridgeToObjectiveC()();

  v47 = [v45 fileExistsAtPath:v46 isDirectory:&v197];

  if (!v47 || (v197 & 1) == 0)
  {
    if (qword_1000113C0 != -1)
    {
      swift_once();
    }

    v85 = type metadata accessor for Logger();
    sub_1000033E0(v85, static Logger.diagnostics);
    v86 = v196;
    (*(v34 + 16))(v28, v196, v36);
    v87 = Logger.logObject.getter();
    v88 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v87, v88))
    {
      v89 = swift_slowAlloc();
      v90 = swift_slowAlloc();
      *&v198 = v90;
      *v89 = 136315138;
      sub_100003474();
      v91 = dispatch thunk of CustomStringConvertible.description.getter();
      v93 = v92;
      v94 = *(v34 + 8);
      v94(v28, v36);
      v95 = sub_100002D50(v91, v93, &v198);

      *(v89 + 4) = v95;
      _os_log_impl(&_mh_execute_header, v87, v88, "Path doesn't exist at %s or is NOT a directory", v89, 0xCu);
      sub_100003428(v90);

      v94(v196, v36);
    }

    else
    {

      v96 = *(v34 + 8);
      v96(v28, v36);
      v96(v86, v36);
    }

    goto LABEL_58;
  }

  *&v198 = 1919251285;
  *(&v198 + 1) = 0xE400000000000000;
  v48 = *(v3 + 104);
  v49 = v192;
  v185 = enum case for URL.DirectoryHint.isDirectory(_:);
  v50 = v193;
  v184 = v3 + 104;
  v183 = v48;
  v48(v192);
  v182 = sub_1000034CC();
  URL.appending<A>(path:directoryHint:)();
  v51 = *(v3 + 8);
  v186 = (v3 + 8);
  v181 = v51;
  v51(v49, v50);
  v52 = objc_opt_self();
  *&v198 = 0;
  v53 = [v52 collectDiagnosticsWithOutError:&v198];
  v54 = v198;
  if (v53)
  {
    v55 = v53;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();
    v56 = v54;

    v57 = v187;
    v58 = [v187 defaultManager];
    URL._bridgeToObjectiveC()(v59);
    v61 = v60;
    URL._bridgeToObjectiveC()(v62);
    v64 = v63;
    *&v198 = 0;
    v65 = [v58 copyItemAtURL:v61 toURL:v63 error:&v198];

    if (v65)
    {
      v66 = v198;
      v67 = [v57 defaultManager];
      URL._bridgeToObjectiveC()(v68);
      v70 = v69;
      *&v198 = 0;
      v71 = [v67 removeItemAtURL:v69 error:&v198];

      if (v71)
      {
        v72 = qword_1000113C0;
        v73 = v198;
        if (v72 != -1)
        {
          swift_once();
        }

        v74 = type metadata accessor for Logger();
        sub_1000033E0(v74, static Logger.diagnostics);
        v75 = v195;
        (*(v34 + 16))(v19, v25, v195);
        v76 = Logger.logObject.getter();
        v77 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v76, v77))
        {
          v78 = swift_slowAlloc();
          v178 = v78;
          v180 = swift_slowAlloc();
          *&v198 = v180;
          *v78 = 136315138;
          sub_100003474();
          v179 = v77;
          v79 = dispatch thunk of CustomStringConvertible.description.getter();
          v81 = v80;
          v82 = *(v34 + 8);
          v82(v19);
          v83 = sub_100002D50(v79, v81, &v198);

          v84 = v178;
          *(v178 + 1) = v83;
          _os_log_impl(&_mh_execute_header, v76, v179, "Successfully created user diagnostic files at %s", v84, 0xCu);
          sub_100003428(v180);
        }

        else
        {

          v82 = *(v34 + 8);
          (v82)(v19, v75);
        }

        (v82)(v22, v75);
        (v82)(v25, v75);
        v108 = 1;
        v101 = v196;
        goto LABEL_43;
      }

      v100 = v198;
      _convertNSErrorToError(_:)();

      swift_willThrow();
      v82 = *(v34 + 8);
      v99 = v195;
      (v82)(v22, v195);
    }

    else
    {
      v98 = v198;
      _convertNSErrorToError(_:)();

      swift_willThrow();
      v99 = v36;
      v82 = *(v34 + 8);
      (v82)(v22, v36);
    }

    (v82)(v25, v99);
  }

  else
  {
    v97 = v198;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    v82 = *(v34 + 8);
    (v82)(v25, v36);
    v57 = v187;
  }

  v101 = v196;
  if (qword_1000113C0 != -1)
  {
    swift_once();
  }

  v102 = type metadata accessor for Logger();
  sub_1000033E0(v102, static Logger.diagnostics);
  swift_errorRetain();
  v103 = Logger.logObject.getter();
  v104 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v103, v104))
  {
    v105 = swift_slowAlloc();
    v106 = swift_slowAlloc();
    *v105 = 138412290;
    swift_errorRetain();
    v107 = _swift_stdlib_bridgeErrorToNSError();
    *(v105 + 4) = v107;
    *v106 = v107;
    _os_log_impl(&_mh_execute_header, v103, v104, "Failed to collect user diagnostics. Error: %@", v105, 0xCu);
    sub_100003520(v106, &qword_100011510, &qword_100009608);
  }

  else
  {
  }

  v108 = 0;
LABEL_43:
  v109 = v190;
  v111 = v191;
  v110 = v192;
  *&v198 = 0x6D6574737953;
  *(&v198 + 1) = 0xE600000000000000;
  v112 = v193;
  v183(v192, v185, v193);
  URL.appending<A>(path:directoryHint:)();
  v181(v110, v112);
  v113 = objc_opt_self();
  *&v198 = 0;
  v114 = [v113 collectDiagnosticsWithOutError:&v198];
  v115 = v198;
  if (!v114)
  {
    v157 = v198;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    (v82)(v109, v195);
    goto LABEL_52;
  }

  LODWORD(v192) = v108;
  v193 = v82;
  v116 = v114;
  static URL._unconditionallyBridgeFromObjectiveC(_:)();
  v117 = v115;

  v118 = [v57 defaultManager];
  URL._bridgeToObjectiveC()(v119);
  v121 = v120;
  URL._bridgeToObjectiveC()(v122);
  v124 = v123;
  *&v198 = 0;
  v125 = v57;
  v126 = [v118 copyItemAtURL:v121 toURL:v123 error:&v198];

  v127 = v198;
  if (!v126 || (v128 = v198, v129 = [v125 defaultManager], URL._bridgeToObjectiveC()(v130), v132 = v131, *&v198 = 0, v133 = objc_msgSend(v129, "removeItemAtURL:error:", v131, &v198), v129, v132, v127 = v198, !v133))
  {
    v154 = v127;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    v155 = v195;
    v156 = v193;
    (v193)(v111, v195);
    v82 = v156;
    (v156)(v109, v155);
LABEL_52:
    if (qword_1000113C0 != -1)
    {
      swift_once();
    }

    v158 = type metadata accessor for Logger();
    sub_1000033E0(v158, static Logger.diagnostics);
    swift_errorRetain();
    v159 = Logger.logObject.getter();
    v160 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v159, v160))
    {
      v161 = swift_slowAlloc();
      v162 = swift_slowAlloc();
      *v161 = 138412290;
      swift_errorRetain();
      v163 = _swift_stdlib_bridgeErrorToNSError();
      *(v161 + 4) = v163;
      *v162 = v163;
      _os_log_impl(&_mh_execute_header, v159, v160, "Failed to collect system diagnostics. Error: %@", v161, 0xCu);
      sub_100003520(v162, &qword_100011510, &qword_100009608);
    }

    goto LABEL_57;
  }

  v134 = qword_1000113C0;
  v135 = v198;
  if (v134 != -1)
  {
    swift_once();
  }

  v136 = type metadata accessor for Logger();
  v137 = sub_1000033E0(v136, static Logger.diagnostics);
  v140 = *(v34 + 16);
  v139 = (v34 + 16);
  v138 = v140;
  v141 = v188;
  v142 = v195;
  v140(v188, v109, v195);
  v143 = Logger.logObject.getter();
  v144 = static os_log_type_t.default.getter();
  v145 = os_log_type_enabled(v143, v144);
  v82 = v193;
  if (v145)
  {
    v146 = swift_slowAlloc();
    v187 = v137;
    v186 = v138;
    v147 = v146;
    v148 = swift_slowAlloc();
    *&v198 = v148;
    *v147 = 136315138;
    sub_100003474();
    v149 = dispatch thunk of CustomStringConvertible.description.getter();
    v190 = v139;
    v150 = v109;
    v152 = v151;
    (v82)(v141, v142);
    v153 = sub_100002D50(v149, v152, &v198);

    *(v147 + 4) = v153;
    _os_log_impl(&_mh_execute_header, v143, v144, "Successfully created system diagnostic files at %s", v147, 0xCu);
    sub_100003428(v148);
    v101 = v196;

    v138 = v186;

    (v82)(v191, v142);
    (v82)(v150, v142);
  }

  else
  {

    (v82)(v141, v142);
    (v82)(v191, v142);
    (v82)(v109, v142);
  }

  v165 = v189;
  if ((v192 & 1) == 0)
  {
LABEL_57:
    (v82)(v101, v195);
LABEL_58:
    sub_100003428(v200);
LABEL_59:
    sub_100003520(v201, &qword_1000114F8, &qword_100009600);
    return 0;
  }

  v166 = v195;
  v138(v189, v101, v195);
  v167 = Logger.logObject.getter();
  v168 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v167, v168))
  {
    v169 = swift_slowAlloc();
    v170 = swift_slowAlloc();
    *&v198 = v170;
    *v169 = 136315138;
    sub_100003474();
    v171 = dispatch thunk of CustomStringConvertible.description.getter();
    v172 = v101;
    v174 = v173;
    (v82)(v165, v166);
    v175 = sub_100002D50(v171, v174, &v198);

    *(v169 + 4) = v175;
    _os_log_impl(&_mh_execute_header, v167, v168, "Successfully created diagnostic files at %s", v169, 0xCu);
    sub_100003428(v170);

    v176 = v172;
  }

  else
  {

    (v82)(v165, v166);
    v176 = v101;
  }

  (v82)(v176, v166);
  sub_100003428(v200);
  sub_100003520(v201, &qword_1000114F8, &qword_100009600);
  return 1;
}

id sub_100002C9C(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for DiagnosticsCommand(a1, a2);
  return objc_msgSendSuper2(&v4, "dealloc");
}

uint64_t sub_100002D08(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_100002D50(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_100002E1C(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = &type metadata for _StringGuts;
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_100003580(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_100003428(v11);
  return v7;
}

unint64_t sub_100002E1C(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_100002F28(a5, a6);
    *a1 = v8;
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
    v11 = a6;
    result = _StringObject.sharedUTF8.getter();
    a6 = v11;
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

char *sub_100002F28(uint64_t a1, unint64_t a2)
{
  v3 = sub_100002F74(a1, a2);
  sub_1000030A4(&off_10000C538);
  return v3;
}

char *sub_100002F74(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return &_swiftEmptyArrayStorage;
  }

  v6 = sub_100003190(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 32, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = _StringObject.sharedUTF8.getter();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 32, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = String.UTF8View._foreignCount()();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_100003190(v10, 0);
        result = _StringGuts._foreignCopyUTF8(into:)();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_1000030A4(uint64_t result)
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
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_100003204(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_100003190(uint64_t a1, uint64_t a2)
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
    return &_swiftEmptyArrayStorage;
  }

  sub_100002D08(&qword_100011518, &qword_100009610);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_100003204(char *result, int64_t a2, char a3, char *a4)
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
    sub_100002D08(&qword_100011518, &qword_100009610);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
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

unint64_t sub_1000032F8(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  v4 = Hasher._finalize()();

  return sub_1000035E0(a1, a2, v4);
}

uint64_t sub_100003370(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002D08(&qword_1000114F8, &qword_100009600);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000033E0(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

_OWORD *sub_100003418(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_100003428(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
    return _swift_release(*a1);
  }

  else
  {
    return (*(v1 + 8))();
  }
}

unint64_t sub_100003474()
{
  result = qword_100011500;
  if (!qword_100011500)
  {
    type metadata accessor for URL();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100011500);
  }

  return result;
}

unint64_t sub_1000034CC()
{
  result = qword_100011508;
  if (!qword_100011508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100011508);
  }

  return result;
}

uint64_t sub_100003520(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100002D08(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_100003580(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_1000035E0(uint64_t a1, uint64_t a2, uint64_t a3)
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

unint64_t sub_100003698(uint64_t a1, uint64_t a2)
{
  result = qword_100011528;
  if (!qword_100011528)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100011528);
  }

  return result;
}

uint64_t Logger.diagnostics.unsafeMutableAddressor()
{
  if (qword_1000113C0 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();

  return sub_1000033E0(v0, static Logger.diagnostics);
}

uint64_t sub_100003748()
{
  v0 = type metadata accessor for Logger();
  sub_100003870(v0, static Logger.diagnostics);
  sub_1000033E0(v0, static Logger.diagnostics);
  return Logger.init(subsystem:category:)();
}

uint64_t static Logger.diagnostics.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1000113C0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  v3 = sub_1000033E0(v2, static Logger.diagnostics);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t *sub_100003870(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

id sub_100003DE0(void *a1, uint64_t a2)
{
  v3 = a1;
  v4 = [NSMutableString stringWithCapacity:a2];
  for (i = [NSMutableString stringWithCapacity:a2 + 1];
  {
    [v4 appendString:@"\t"];
  }

  [i appendFormat:@"\n%@", v4];
  v6 = [v3 stringByReplacingOccurrencesOfString:@"\n" withString:i];
  v7 = [NSString stringWithFormat:@"%@%@", v4, v6];

  return v7;
}

void sub_100003EE4()
{
  v0 = +[CLIProgram sharedProgram];
  v12 = [v0 programName];

  v1 = +[NSBundle mainBundle];
  v2 = [v1 infoDictionary];
  v3 = [v2 objectForKeyedSubscript:_kCFBundleShortVersionStringKey];
  v4 = [v2 objectForKeyedSubscript:kCFBundleVersionKey];
  if ([v3 length])
  {
    v5 = [@" " stringByAppendingString:v3];
  }

  else
  {
    v5 = &stru_10000C7F0;
  }

  if ([v4 length])
  {
    sub_100006E14(__stdoutp, @"%@%@ (%@)\n", v6, v7, v8, v9, v10, v11, v12);
  }

  else
  {
    sub_100006E14(__stdoutp, @"%@%@\n", v6, v7, v8, v9, v10, v11, v12);
  }
}

void sub_100004030(void *a1)
{
  v1 = a1;
  v2 = [qword_1000115C0 objectForKeyedSubscript:v1];
  v3 = [qword_1000115D0 objectForKey:v2];
  v10 = v3;
  if (v1 && !v2)
  {
    v67 = v3;

    sub_100006E14(__stdoutp, @"\n", v11, v12, v13, v14, v15, v16, v63);
    v68 = 0;
LABEL_8:
    sub_100004398(qword_1000115D8);
    sub_100006E14(__stdoutp, @"Commands:\n", v22, v23, v24, v25, v26, v27, v64);
    v28 = qword_1000115C8;
    v29 = [NSSortDescriptor sortDescriptorWithKey:@"name" ascending:1];
    v74 = v29;
    v30 = [NSArray arrayWithObjects:&v74 count:1];
    v31 = [v28 sortedArrayUsingDescriptors:v30];

    v71 = 0u;
    v72 = 0u;
    v69 = 0u;
    v70 = 0u;
    v32 = v31;
    v33 = [v32 countByEnumeratingWithState:&v69 objects:v73 count:16];
    if (v33)
    {
      v34 = v33;
      v35 = *v70;
      do
      {
        for (i = 0; i != v34; i = i + 1)
        {
          if (*v70 != v35)
          {
            objc_enumerationMutation(v32);
          }

          v37 = *(*(&v69 + 1) + 8 * i);
          v38 = __stdoutp;
          v39 = [v37 nameSummaryString];
          v65 = [v37 shortEnglishDescription];
          sub_100006E14(v38, @"\t%@\n\t%@\n\n", v40, v41, v42, v43, v44, v45, v39);
        }

        v34 = [v32 countByEnumeratingWithState:&v69 objects:v73 count:16];
      }

      while (v34);
    }

    v10 = v67;
    v1 = v68;
    goto LABEL_21;
  }

  sub_100006E14(__stdoutp, @"\n", v4, v5, v6, v7, v8, v9, v63);
  if (!v2)
  {
    v67 = v10;
    v68 = v1;
    goto LABEL_8;
  }

  v17 = [v2 nameSummaryString];
  v18 = [v2 usageLine];

  if (v18)
  {
    v19 = [v2 name];
    v20 = [v2 usageLine];
    v21 = [NSString stringWithFormat:@"Usage: %@ %@\n\t", v19, v20];
  }

  else
  {
    v21 = &stru_10000C7F0;
  }

  v46 = __stdoutp;
  v66 = [v2 shortEnglishDescription];
  sub_100006E14(v46, @"%@\n\t%@%@\n\n", v47, v48, v49, v50, v51, v52, v17);

  v53 = [v2 longEnglishDescription];
  v54 = v53;
  if (v53)
  {
    v55 = __stdoutp;
    v56 = sub_100003DE0(v53, 1);
    sub_100006E14(v55, @"%@\n\n", v57, v58, v59, v60, v61, v62, v56);
  }

  sub_100004398(qword_1000115D8);
  if (v10)
  {
    sub_100004398(v10);
  }

LABEL_21:
}

void sub_100004398(void *a1)
{
  v1 = a1;
  if ([v1[1] count])
  {
    if (qword_1000115D8 == v1)
    {
      v8 = @"Global options:\n";
    }

    else
    {
      v8 = @"Command options:\n";
    }

    sub_100006E14(__stdoutp, v8, v2, v3, v4, v5, v6, v7, v37);
    v39 = v1;
    v9 = v1[1];
    v10 = [NSSortDescriptor sortDescriptorWithKey:@"canonicalName" ascending:1];
    v45 = v10;
    v11 = [NSArray arrayWithObjects:&v45 count:1];
    v12 = [v9 sortedArrayUsingDescriptors:v11];

    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v13 = v12;
    v14 = [v13 countByEnumeratingWithState:&v40 objects:v44 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v41;
      do
      {
        for (i = 0; i != v15; i = i + 1)
        {
          if (*v41 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = *(*(&v40 + 1) + 8 * i);
          v19 = __stdoutp;
          v20 = [v18 nameSummaryString];
          v38 = [v18 shortEnglishDescription];
          sub_100006E14(v19, @"\t%@\n\t%@\n\n", v21, v22, v23, v24, v25, v26, v20);

          v27 = [v18 longEnglishDescription];
          v28 = v27;
          if (v27)
          {
            v29 = __stdoutp;
            v30 = sub_100003DE0(v27, 1);
            sub_100006E14(v29, @"%@\n\n", v31, v32, v33, v34, v35, v36, v30);
          }
        }

        v15 = [v13 countByEnumeratingWithState:&v40 objects:v44 count:16];
      }

      while (v15);
    }

    v1 = v39;
  }
}

void sub_1000053EC(void *a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    sub_100006EF4(@"Unknown option '%@'", v4, v5, v6, v7, v8, v9, v10, v3);
    v11 = [a1 command];
    sub_1000070AC(v11);
  }
}

void sub_10000544C(void *a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    sub_100006EF4(@"Option '%@' missing an argument", v4, v5, v6, v7, v8, v9, v10, v3);
    v11 = [a1 command];
    sub_1000070AC(v11);
  }
}

void sub_100005708(uint64_t a1, void *a2)
{
  v11 = a2;
  v3 = [*(*(*(a1 + 32) + 16) + 16) objectForKeyedSubscript:?];
  v4 = [v3 parameterCount];
  if (!v3)
  {
    sub_1000053EC(*(a1 + 32), v11);
    [(CLIOptionParser *)v9 dictionaryWithOptionsAndValues];
    return;
  }

  if (!v4)
  {
    goto LABEL_5;
  }

  v5 = [*(a1 + 32) nextArgument];
  if (!v5)
  {
    sub_10000544C(*(a1 + 32), *(a1 + 40));
LABEL_5:
    v5 = 0;
  }

  v6 = *(a1 + 48);
  v7 = [v3 shortName];
  v8 = [v3 longName];
  (*(v6 + 16))(v6, v7, v8, v5);
}

uint64_t sub_1000058BC(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = v7;
  }

  v11 = v10;
  v12 = [*(a1 + 32) objectForKeyedSubscript:v11];
  if (![*(a1 + 40) preserveMultipleArguments])
  {
    if (v9)
    {
      [*(a1 + 32) setObject:v9 forKeyedSubscript:v11];
      goto LABEL_13;
    }

    goto LABEL_10;
  }

  if (!v9)
  {
LABEL_10:
    v13 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v12 unsignedIntegerValue] + 1);
LABEL_12:
    v14 = v13;
    [*(a1 + 32) setObject:v13 forKeyedSubscript:v11];

    goto LABEL_13;
  }

  if (!v12)
  {
    v13 = [NSMutableArray arrayWithObject:v9];
    goto LABEL_12;
  }

  [v12 addObject:v9];
LABEL_13:

  return 1;
}

void sub_100005B80(id a1)
{
  v1 = objc_opt_new();
  v2 = qword_1000115D8;
  qword_1000115D8 = v1;

  v3 = objc_opt_new();
  v4 = qword_1000115C8;
  qword_1000115C8 = v3;

  v5 = objc_opt_new();
  v6 = qword_1000115C0;
  qword_1000115C0 = v5;

  qword_1000115D0 = +[NSMapTable strongToStrongObjectsMapTable];

  _objc_release_x1();
}

void sub_100005CBC(id a1)
{
  qword_1000115F0 = objc_opt_new();

  _objc_release_x1();
}

void sub_100005DE8(uint64_t a1, void *a2)
{
  v12 = a2;
  objc_opt_self();
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = [v12 lastObject];
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_14;
    }

    v2 = v12;
  }

  v9 = v2;
  if (!v2)
  {
LABEL_14:
    sub_10000706C(64, @"Unrecognized format, valid formats are: text, JSON, plist", v3, v4, v5, v6, v7, v8, v11);
  }

  v10 = [v2 caseInsensitiveCompare:@"text"];
  if (!v10)
  {
    goto LABEL_11;
  }

  if ([v9 caseInsensitiveCompare:@"plist"])
  {
    if (![v9 caseInsensitiveCompare:@"json"])
    {
      v10 = 2;
      goto LABEL_11;
    }

    goto LABEL_14;
  }

  v10 = 1;
LABEL_11:
  sub_100006EB4(v10);
}

BOOL sub_100006130(id a1, CLIOptionParser *a2)
{
  v2 = a2;
  sub_100003EE4();
  v3 = [(CLIOptionParser *)v2 nextArgument];

  sub_100004030(v3);
  return 1;
}

unint64_t sub_100006B4C(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if ([v3 isEqual:v4])
  {
    v5 = 0;
  }

  else
  {
    v6 = [v3 length];
    v7 = v6;
    if (v6 >= 0x20)
    {
      v8 = 32;
    }

    else
    {
      v8 = v6;
    }

    v9 = [v4 length];
    if (v9 >= 0x20)
    {
      v10 = 32;
    }

    else
    {
      v10 = v9;
    }

    v43 = v10;
    if (v7 && v9)
    {
      v42 = &v40;
      v11 = v43;
      v41 = v43 + 1;
      __chkstk_darwin(v9);
      v13 = &v40 - v12;
      bzero(&v40 - v12, v14);
      v15 = 0;
      v16 = vdupq_n_s64(v8);
      v17 = v11;
      v18 = xmmword_100009630;
      v19 = vdupq_n_s64(2uLL);
      v20 = v13;
      do
      {
        v21 = vmovn_s64(vcgeq_u64(v16, v18));
        if (v21.i8[0])
        {
          *v20 = v15;
        }

        if (v21.i8[4])
        {
          v20[v11 + 1] = v15 + 1;
        }

        v15 += 2;
        v18 = vaddq_s64(v18, v19);
        v20 += 2 * v11 + 2;
      }

      while (((v8 + 2) & 0x7E) != v15);
      v22 = 0;
      v23 = vdupq_n_s64(v43);
      v24 = (v43 + 2) & 0x7E;
      v25 = xmmword_100009630;
      v26 = v13 + 8;
      v27 = vdupq_n_s64(2uLL);
      do
      {
        v28 = vmovn_s64(vcgeq_u64(v23, v25));
        if (v28.i8[0])
        {
          *(v26 - 1) = v22;
        }

        if (v28.i8[4])
        {
          *v26 = v22 + 1;
        }

        v22 += 2;
        v25 = vaddq_s64(v25, v27);
        v26 += 2;
      }

      while (v24 != v22);
      v40 = v13;
      v29 = v13 + 8;
      v30 = 1;
      do
      {
        v31 = 0;
        v44 = v30;
        v32 = v30 - 1;
        v33 = v29;
        do
        {
          v34 = [v3 characterAtIndex:{v31, v40}];
          v35 = [v4 characterAtIndex:v32];
          v36 = *(v33 - 1);
          v37 = *v33 + 1;
          v38 = v33[v11];
          if (v37 >= v38 + 1)
          {
            v37 = v38 + 1;
          }

          if (v34 != v35)
          {
            ++v36;
          }

          if (v37 >= v36)
          {
            v37 = v36;
          }

          v33[v17 + 1] = v37;
          ++v31;
          v33 = (v33 + v17 * 8 + 8);
        }

        while (v8 != v31);
        v30 = v44 + 1;
        v29 += 8;
      }

      while (v44 != v43);
      v5 = *&v40[8 * v41 * v8 + 8 * v43];
    }

    else if (v8 <= v43)
    {
      v5 = v43;
    }

    else
    {
      v5 = v8;
    }
  }

  return v5;
}

size_t sub_100006E14(FILE *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10 = a2;
  v11 = [[NSString alloc] initWithFormat:v10 arguments:&a9];

  v12 = fwrite([v11 UTF8String], 1uLL, objc_msgSend(v11, "lengthOfBytesUsingEncoding:", 4), a1);
  return v12;
}

void sub_100006EB4(uint64_t result)
{
  if (qword_100011600 != -1)
  {
    sub_10000798C();
  }

  qword_1000115F8 = result;
}

void sub_100006F2C(const char *a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v13 = [[NSString alloc] initWithFormat:v5 arguments:a3];

  if ([v13 length])
  {
    v6 = [v13 characterAtIndex:{objc_msgSend(v13, "length") - 1}] != 10;
  }

  else
  {
    v6 = 1;
  }

  v7 = __stderrp;
  v8 = +[CLIProgram sharedProgram];
  v9 = [v8 programName];
  fprintf(v7, "%s: %s: ", [v9 UTF8String], a1);

  v10 = v13;
  v11 = [v13 UTF8String];
  v12 = [v13 lengthOfBytesUsingEncoding:4];
  fwrite(v11, 1uLL, v12, __stderrp);
  if (v6)
  {
    fputc(10, __stderrp);
  }
}

void sub_1000070AC(void *a1)
{
  v1 = a1;
  [v1 usageLine];
  if (!objc_claimAutoreleasedReturnValue())
  {
    exit(64);
  }

  v2 = [v1 name];
  sub_10000706C(64, @"Usage: %@ %@\n", v3, v4, v5, v6, v7, v8, v2);
}

void sub_100007134()
{
  sub_100003DCC();
  v4 = +[NSAssertionHandler currentHandler];
  [v4 handleFailureInMethod:v3 object:v2 file:@"CLICommand.m" lineNumber:47 description:@"Nothing to execute"];

  *v0 = *v1;
}

void sub_1000071A4()
{
  sub_100003DCC();
  v4 = +[NSAssertionHandler currentHandler];
  [v4 handleFailureInMethod:v3 object:v2 file:@"CLICommand.m" lineNumber:53 description:@"Commands must have a name"];

  *v0 = *v1;
}

id *sub_100007214(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (a1)
  {
    v17.receiver = a1;
    v17.super_class = CLIOptionParser;
    v7 = objc_msgSendSuper2(&v17, "init");
    a1 = v7;
    if (v7)
    {
      [v7 setArguments:v5];
      v8 = [a1 nextArgument];
      v9 = a1[4];
      a1[4] = v8;

      if (v6)
      {
        objc_storeStrong(a1 + 5, a3);
        v10 = [qword_1000115D0 objectForKey:v6];
        v11 = v10;
        if (v10)
        {
          v12 = v10;
        }

        else
        {
          v12 = objc_opt_new();
        }

        v14 = a1[2];
        a1[2] = v12;
      }

      else
      {
        if (qword_1000115E0 != -1)
        {
          dispatch_once(&qword_1000115E0, &stru_10000C610);
        }

        v13 = qword_1000115D8;
        v11 = a1[2];
        a1[2] = v13;
      }

      if (!a1[2])
      {
        v16 = +[NSAssertionHandler currentHandler];
        [v16 handleFailureInMethod:"initWithArguments:command:" object:a1 file:@"CLIOptionParsing.m" lineNumber:422 description:@"The commands or global options haven't been registered yet!"];
      }
    }
  }

  return a1;
}

void sub_100007394()
{
  sub_100005C38();
  v1 = +[NSAssertionHandler currentHandler];
  sub_100005C2C();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

void sub_100007414(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v8 = +[NSAssertionHandler currentHandler];
  [v8 handleFailureInMethod:a1 object:a2 file:@"CLIOptionParsing.m" lineNumber:220 description:{@"Invalid parameter not satisfying: %@", @"_canonicalName"}];

  *a4 = *a3;
}

void sub_1000074A4()
{
  sub_100005C38();
  v1 = +[NSAssertionHandler currentHandler];
  sub_100005C2C();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

void sub_100007510()
{
  sub_100005C38();
  v1 = +[NSAssertionHandler currentHandler];
  sub_100005C2C();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

void sub_10000757C()
{
  sub_100005C1C();
  v3 = +[NSAssertionHandler currentHandler];
  [v3 handleFailureInMethod:v2 object:v1 file:@"CLIOptionParsing.m" lineNumber:302 description:{@"Short option '-%@' is duplicated", v0}];
}

void sub_1000075F4()
{
  sub_100005C1C();
  v3 = +[NSAssertionHandler currentHandler];
  [v3 handleFailureInMethod:v2 object:v1 file:@"CLIOptionParsing.m" lineNumber:309 description:{@"Long option '--%@' is duplicated", v0}];
}

void sub_10000766C()
{
  sub_100005C1C();
  v3 = +[NSAssertionHandler currentHandler];
  [v3 handleFailureInMethod:v2 object:v1 file:@"CLIOptionParsing.m" lineNumber:356 description:{@"Long option '--%@' is duplicated", v0}];
}

void sub_1000076E4()
{
  sub_100005C38();
  v1 = +[NSAssertionHandler currentHandler];
  sub_100005C2C();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

void sub_100007750(uint64_t a1)
{
  if (a1)
  {
    v1 = objc_opt_new();
    [v1 setName:@"help"];
    [v1 setAliases:&off_10000CF58];
    [v1 setShortEnglishDescription:@"Show help for a command or show all commands."];
    [v1 setExecutionBlock:&stru_10000C670];
    [v1 register];
    v2 = objc_opt_new();

    [v2 setName:@"version"];
    [v2 setShortEnglishDescription:@"Show this program's version."];
    [v2 setExecutionBlock:&stru_10000C690];
    [v2 register];
  }
}

void sub_10000782C(uint64_t a1, uint64_t a2)
{
  v4 = +[NSAssertionHandler currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"CLIProgram.m" lineNumber:52 description:@"Calling +sharedProgram will not return a CLIProgram subclass"];
}

void sub_1000078B4(uint64_t a1, uint64_t a2)
{
  v4 = +[NSAssertionHandler currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"CLIProgram.m" lineNumber:313 description:@"-startRunLoop must be called on the main thread"];
}

unint64_t sub_100007928(unint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (a1 && !*(a1 + 8))
  {
    a1 = sub_100006B4C(v5, v6);
  }

  return a1;
}