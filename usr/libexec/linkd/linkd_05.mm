void *sub_10006BBC8(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_10002EB80(&unk_10019A780, &unk_10014F070);
    v3 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v3 = _swiftEmptyDictionarySingleton;
  }

  v6 = v3;
  sub_10006D5C8(a1, 1, &v6);
  v4 = v6;
  if (v1)
  {
  }

  return v4;
}

uint64_t sub_10006BC60()
{
  v0 = type metadata accessor for Logger();
  sub_100037CD8(v0, qword_10019DBA8);
  sub_10000347C(v0, qword_10019DBA8);
  result = LNLogSubsystem;
  if (LNLogSubsystem)
  {
    String.init(cString:)();
    return Logger.init(subsystem:category:)();
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_10006BCE0(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if ([objc_opt_self() isAssistantIntentPhraseExpansionEnabled] && AFDeviceSupportsSAE())
  {
    v9 = sub_100003D44(0, &qword_10019ACD0, LSBundleRecord_ptr);
    swift_bridgeObjectRetain_n();
    v10 = sub_1000FEC40(a1, a2, 0);
    if (v4)
    {
    }

    else
    {
      v17 = v9;
      v18 = &off_10018C118;
      *&v16 = v10;
      sub_10001A798(&v16, v19);
      v20 = a1;
      v21 = a2;
      v9 = sub_10006BEA4(v19, a3, a4);
      sub_10006D7A0(v19);
    }
  }

  else
  {
    if (qword_1001981C8 != -1)
    {
      sub_100002AEC(&qword_1001981C8);
    }

    v11 = type metadata accessor for Logger();
    sub_10000347C(v11, qword_10019DBA8);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v12, v13, "Device/locale does not support phrase expansion or phrase expansion is disabled", v14, 2u);
      sub_1000036AC(v14);
    }

    return _swiftEmptyArrayStorage;
  }

  return v9;
}

unint64_t sub_10006BEA4(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v206 = a3;
  v7 = _s7BuilderVMa(0);
  __chkstk_darwin(v7);
  v9 = &v184 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a1 + 40);
  v11 = *(a1 + 48);
  sub_1000034B4((v3 + 112), *(v3 + 136));
  v12 = sub_100078FFC(v10, v11, 0, 0);
  if (v4)
  {
    return v9;
  }

  v201 = v9;
  v197 = a1;
  v205 = v3;
  v198 = v7;
  v203 = v12;
  v202 = v11;
  v204 = v10;
  v199 = a2;
  if (qword_1001981C8 != -1)
  {
    sub_100002AEC(&qword_1001981C8);
  }

  v13 = type metadata accessor for Logger();
  v14 = sub_10000347C(v13, qword_10019DBA8);

  v200 = v14;
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();
  v17 = sub_10001135C(v16);
  v18 = v204;
  v19 = v202;
  if (v17)
  {
    v20 = sub_100007764();
    sub_100004E88(v20, 3.852e-34);

    sub_1000051B8(&_mh_execute_header, v21, v22, "Found %ld example phrases from JSON file");
    sub_100003A0C();
  }

  else
  {
  }

  v9 = v205;
  sub_1000110F0();

  v23 = sub_10000485C();
  v25 = sub_100078F78(v23, v24);
  v196 = v13;

  v213 = v25;
  sub_1000110F0();
  v26 = sub_10000485C();
  v28 = sub_100078FA4(v26, v27);
  v29 = *(*sub_1000110F0() + OBJC_IVAR____TtC10LinkDaemon13MetadataStore_provider);

  v30 = v29;
  sub_100007B58();
  sub_100020274();
  if (v29)
  {

    return v9;
  }

  v190 = v31;
  v191 = v28;
  sub_100013334(v9 + 112, &v211);
  sub_10001AAD4();
  v33 = sub_10002EB80(&qword_100198B70, &qword_10014DDB0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10014DD60;
  v35 = objc_opt_self();
  *(inited + 32) = [v35 entityUpdatingProtocol];
  *(inited + 40) = [v35 propertyUpdaterProtocol];
  sub_1000C2C6C(inited);
  sub_100007B58();
  sub_1000791B0();
  v195 = v35;

  sub_10000485C();
  v36 = sub_1000B6334();

  if (!v36)
  {
    sub_100003D44(0, &unk_10019AB20, LNActionMetadata_ptr);
    v36 = Dictionary.init(dictionaryLiteral:)();
  }

  v37 = v205;
  sub_1000034F8(&v211);
  sub_100013334(v37 + 112, &v211);
  sub_10001AAD4();
  v38 = swift_initStackObject();
  *(v38 + 16) = xmmword_10014CE80;
  *(v38 + 32) = [v195 openEntitySystemProtocol];
  sub_1000C2C6C(v38);
  sub_100007B58();
  sub_1000791B0();

  sub_10000485C();
  v39 = sub_1000B6334();

  if (v39)
  {
    v192 = v39;
  }

  else
  {
    sub_100003D44(0, &unk_10019AB20, LNActionMetadata_ptr);
    v192 = Dictionary.init(dictionaryLiteral:)();
  }

  v9 = v205;
  sub_1000034F8(&v211);
  v40 = *(*sub_1000110F0() + OBJC_IVAR____TtC10LinkDaemon13MetadataStore_provider);

  v41 = v40;
  sub_100007B58();
  sub_1000A3EE8();
  v189 = v40;
  if (v40)
  {

    sub_100012020();

    return v9;
  }

  v43 = v42;
  v44 = sub_1000232F4(v42);
  if (!v44)
  {
LABEL_28:

    sub_100008898();
    v43 = sub_10006BBC8(v62);
    v189 = 0;
    v63 = sub_1000B631C();
    v64 = sub_1000B631C();
    v211 = v63;
    sub_10006E60C(v64);
    v45 = v211;
    sub_10000485C();
    v194 = v43;
    sub_100040EF8();
    i = v65;

    v33 = 0;
    v66 = *(i + 16);
    v195 = i;
    v67 = i + 48;
    v187 = v66;
    v188 = -v66;
    v185 = _swiftEmptyArrayStorage;
    v184 = i + 48;
LABEL_29:
    v36 = (v67 + 24 * v33);
    v68 = v33 + 1;
    while (v188 + v68 != 1)
    {
      v33 = v68;
      if ((v68 - 1) >= *(v195 + 2))
      {
        __break(1u);
LABEL_100:
        __break(1u);
LABEL_101:
        __break(1u);
LABEL_102:
        __break(1u);
        goto LABEL_103;
      }

      v69 = *(v36 - 1);
      v186 = *(v36 - 2);
      v70 = *v36;
      v193 = v69;

      v40 = v70;
      sub_100011814(&v212);

      v192 = v40;
      v71 = [v40 intentIdentifier];
      v43 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v45 = v72;

      if (*(i + 16))
      {
        v73 = v43;
        v43 = i;
        sub_10000C2A0(v73, v45);
        i = v74;

        v9 = v205;
        if (i)
        {
          sub_100011814(v209);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v211 = i;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v76 = sub_100007150();
            sub_1000B3698(v76, v77, v78);
            i = v211;
          }

          v67 = v184;
          v43 = v186;
          v80 = *(i + 16);
          v79 = *(i + 24);
          v45 = v80 + 1;
          if (v80 >= v79 >> 1)
          {
            v83 = sub_100007EF0(v79);
            sub_1000B3698(v83, v80 + 1, 1);
            i = v211;
          }

          *(i + 16) = v45;
          v185 = i;
          v81 = (i + 24 * v80);
          v82 = v193;
          v81[4] = v43;
          v81[5] = v82;
          v81[6] = v192;
          v9 = v205;
          goto LABEL_29;
        }
      }

      else
      {

        v9 = v205;
      }

      v68 = v33 + 1;
      v36 += 3;
    }

    sub_10000781C();
    v86 = v85 + 48;
    v188 = _swiftEmptyArrayStorage;
    v186 = _swiftEmptyArrayStorage;
    v184 = v85 + 48;
LABEL_43:
    v36 = (v86 + 24 * v84);
    v43 = v194;
    while (v187 != v84)
    {
      sub_10000781C();
      v88 = *(v87 + 16);
      v193 = v89;
      if (v89 >= v88)
      {
        goto LABEL_100;
      }

      v90 = *(v36 - 1);
      v192 = *(v36 - 2);
      v40 = *v36;

      v91 = v90;

      v33 = v40;
      v92 = [v33 intentIdentifier];
      i = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v45 = v93;

      if (!*(v43 + 16))
      {

LABEL_50:
        sub_100011814(v210);
        v95 = swift_isUniquelyReferenced_nonNull_native();
        v211 = i;
        if ((v95 & 1) == 0)
        {
          v96 = sub_100007150();
          sub_1000B3698(v96, v97, v98);
          i = v211;
        }

        v86 = v184;
        v99 = v193;
        v101 = *(i + 16);
        v100 = *(i + 24);
        v45 = v101 + 1;
        if (v101 >= v100 >> 1)
        {
          v103 = sub_100007EF0(v100);
          sub_1000B3698(v103, v101 + 1, 1);
          v99 = v193;
          i = v211;
        }

        v84 = v99 + 1;
        *(i + 16) = v45;
        v186 = i;
        v102 = (i + 24 * v101);
        v102[4] = v192;
        v102[5] = v91;
        v102[6] = v33;
        v18 = v204;
        v9 = v205;
        goto LABEL_43;
      }

      sub_10000C2A0(i, v45);
      i = v94;

      if ((i & 1) == 0)
      {
        goto LABEL_50;
      }

      v36 += 3;
      v84 = v193 + 1;
      v18 = v204;
      v9 = v205;
      v43 = v194;
    }

    i = &v213;
    sub_10006E2C8(v186);
    v104 = 0;
    v208 = _swiftEmptyArrayStorage;
    v192 = *(v213 + 16);
    v187 = v213;
    v105 = (v213 + 48);
    while (v192 != v104)
    {
      v106 = *(v187 + 16);
      v193 = v104;
      if (v104 >= v106)
      {
        goto LABEL_101;
      }

      v43 = *(v105 - 1);
      v107 = *v105;
      v33 = v105;
      sub_100013334(v9 + 112, &v211);
      sub_10001AAD4();

      v36 = v107;
      v9 = [v36 intentIdentifier];
      v195 = static String._unconditionallyBridgeFromObjectiveC(_:)();

      sub_10000485C();
      sub_100008898();
      sub_100078C8C(v108, v109, v110, v111);
      if (v40)
      {

        sub_100012020();

        sub_1000034F8(&v211);

        goto LABEL_8;
      }

      v189 = 0;

      sub_1000034F8(&v211);
      i = &v208;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      v45 = *((v208 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v45 >= *((v208 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v188 = v208;
      v105 = (v33 + 24);
      v104 = v193 + 1;
      v9 = v205;
    }

    sub_10006E2C8(v185);
    sub_1000110F0();
    sub_10000485C();
    sub_100008898();
    v114 = sub_100078FD0(v112, v113);
    if (v40)
    {

      sub_100012020();

LABEL_8:

      return v9;
    }

    v33 = v114;
    v189 = 0;
    v9 = 0;
    v195 = *(v114 + 16);
    v115 = v114 + 48;
    v116 = _swiftEmptyArrayStorage;
    v36 = v201;
    v193 = (v114 + 48);
LABEL_66:
    for (i = v115 + 24 * v9; ; i += 24)
    {
      sub_10000781C();
      if (v117 == v9)
      {
        break;
      }

      if (v9 >= *(v33 + 16))
      {
        goto LABEL_102;
      }

      v118 = *(i - 16);
      v43 = *(i - 8);
      v40 = *i;

      v45 = v40;
      if (![v45 kind])
      {
        v119 = swift_isUniquelyReferenced_nonNull_native();
        v211 = v116;
        if ((v119 & 1) == 0)
        {
          v120 = sub_100007150();
          sub_1000B364C(v120, v121, v122);
          v116 = v211;
        }

        v124 = v116[2];
        v123 = v116[3];
        v125 = (v124 + 1);
        v126 = v43;
        if (v124 >= v123 >> 1)
        {
          v128 = sub_100007EF0(v123);
          v130 = v129;
          v192 = v131;
          sub_1000B364C(v128, v129, 1);
          v125 = v130;
          v124 = v192;
          v126 = v43;
          v116 = v211;
        }

        ++v9;
        v116[2] = v125;
        v127 = &v116[3 * v124];
        v127[4] = v118;
        v127[5] = v126;
        v127[6] = v45;
        v36 = v201;
        v115 = v193;
        goto LABEL_66;
      }

      ++v9;
      v36 = v201;
    }

    v133 = sub_1000134B0(v132);
    v134 = static os_log_type_t.default.getter();
    if (sub_10001135C(v134))
    {
      v135 = sub_100007764();
      sub_100004E88(v135, 3.852e-34);
      v195 = v116;

      sub_1000051B8(&_mh_execute_header, v136, v137, "Developer provided %ld AssistantAppEntity examples");
      sub_100003A0C();
    }

    else
    {

      v195 = v116;
    }

    v211 = _swiftEmptyDictionarySingleton;
    sub_100011814(&v215);
    v9 = v206;
    v138 = sub_1000BE888();
    sub_1000B6F10(v188, v190, i, v9, v18, v19, v138, &v211);
    i = v139;

    v141 = sub_1000134B0(v140);
    v142 = static os_log_type_t.default.getter();
    if (sub_10001135C(v142))
    {
      v143 = sub_100007764();
      sub_100004E88(v143, 3.852e-34);

      sub_1000051B8(&_mh_execute_header, v144, v145, "Found %ld parameters with platform-provided values");
      v146 = v143;
      v9 = v206;
      sub_1000036AC(v146);
    }

    else
    {
    }

    v193 = i;
    v43 = v198;
    v147 = sub_100006A7C();
    sub_10006D518(v147, v148);
    v33 = v213;
    sub_100013334(v205 + 112, v36 + *(v43 + 40));
    v40 = qword_100198300;

    v45 = v191;
    if (v40 == -1)
    {
      goto LABEL_83;
    }

    goto LABEL_104;
  }

  v45 = v44;
  v188 = v36;
  v211 = _swiftEmptyArrayStorage;
  i = &v211;
  sub_1000B36E4(0, v44 & ~(v44 >> 63), 0);
  v195 = v45;
  if ((v45 & 0x8000000000000000) == 0)
  {
    v47 = 0;
    v48 = v211;
    v194 = v43 & 0xC000000000000001;
    v193 = v43;
    do
    {
      if (v194)
      {
        v49 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v49 = *(v43 + 8 * v47 + 32);
      }

      v50 = v49;
      v51 = [v49 identifier];
      v52 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v54 = v53;

      v211 = v48;
      v56 = v48[2];
      v55 = v48[3];
      v57 = v56 + 1;
      if (v56 >= v55 >> 1)
      {
        v60 = sub_100007EF0(v55);
        v187 = v61;
        sub_1000B36E4(v60, v61, 1);
        v57 = v187;
        v48 = v211;
      }

      ++v47;
      v48[2] = v57;
      v58 = &v48[3 * v56];
      v58[4] = v52;
      v58[5] = v54;
      v58[6] = v50;
      sub_10000781C();
      v9 = v205;
      v43 = v193;
    }

    while (v59 != v47);
    goto LABEL_28;
  }

LABEL_103:
  __break(1u);
LABEL_104:
  swift_once();
LABEL_83:
  v149 = sub_100011814(&v214);
  v151 = sub_10000347C(v149, v150);
  (*(*(i - 8) + 16))(v36, v151, i);
  v152 = (v36 + *(v43 + 24));
  v153 = v199;
  *v152 = v199;
  v152[1] = v9;
  v154 = *(v43 + 28);
  v197 = v33;
  *(v36 + v154) = v33;
  *(v36 + *(v43 + 32)) = v45;
  *(v36 + *(v43 + 36)) = v193;
  *(v36 + *(v43 + 44)) = v194;
  *(v36 + *(v43 + 48)) = v195;

  v156 = sub_1000134B0(v155);
  v157 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v156, v157))
  {
    v158 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v208 = v9;
    *v158 = 136315394;
    v159 = sub_10000485C();
    *(v158 + 4) = sub_100004C50(v159, v160, v161);
    *(v158 + 12) = 2080;
    *(v158 + 14) = sub_100004C50(v153, v206, &v208);
    _os_log_impl(&_mh_execute_header, v156, v157, "Interpolating AssistantIntent example phrases for %s:%s", v158, 0x16u);
    swift_arrayDestroy();
    sub_100003A0C();
    v162 = v158;
    v36 = v201;
    sub_1000036AC(v162);
  }

  v163 = v36;
  sub_100008898();
  sub_100097910();
  if (v40)
  {
    sub_100006A7C();

    sub_10006D550(v36);
  }

  else
  {
    v165 = v164;
    __chkstk_darwin(v164);
    *(&v184 - 2) = v163;
    v166 = sub_10006BB00(_swiftEmptyArrayStorage, sub_10006D5AC, (&v184 - 4), v191);

    v168 = sub_1000134B0(v167);
    v169 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v168, v169))
    {
      v170 = swift_slowAlloc();
      *v170 = 134218240;
      *(v170 + 4) = sub_1000232F4(v165);

      *(v170 + 12) = 2048;
      *(v170 + 14) = sub_1000232F4(v166);
      v171 = v166;

      _os_log_impl(&_mh_execute_header, v168, v169, "Generated example phrases: %ld negative phrases: %ld", v170, 0x16u);
      sub_100003A0C();
    }

    else
    {

      v171 = v166;
    }

    v172 = *(v203 + 16);
    if (v172)
    {
      v208 = _swiftEmptyArrayStorage;
      specialized ContiguousArray.reserveCapacity(_:)();
      v173 = 48;
      v174 = v203;
      do
      {
        v175 = *(v174 + v173);
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        v173 += 24;
        --v172;
      }

      while (v172);
      sub_100006A7C();

      v176 = v208;
    }

    else
    {
      sub_100006A7C();

      v176 = _swiftEmptyArrayStorage;
    }

    v207 = v176;

    sub_10006E5E0(v177);
    sub_10006E5E0(v171);
    v9 = v207;

    v179 = sub_1000134B0(v178);
    v180 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v179, v180))
    {
      v181 = swift_slowAlloc();
      v182 = swift_slowAlloc();
      v208 = v182;
      *v181 = 134218498;
      v183 = sub_1000232F4(v165);

      *(v181 + 4) = v183;

      *(v181 + 12) = 2080;
      *(v181 + 14) = sub_100004C50(v204, v202, &v208);
      *(v181 + 22) = 2080;
      *(v181 + 24) = sub_100004C50(v199, v206, &v208);
      _os_log_impl(&_mh_execute_header, v179, v180, "Caching AssistantIntent %ld phrases for %s:%s", v181, 0x20u);
      swift_arrayDestroy();
      sub_1000036AC(v182);
      sub_1000036AC(v181);
    }

    else
    {

      swift_bridgeObjectRelease_n();
    }

    sub_1000034B4((v205 + 112), *(v205 + 136));
    sub_100079098(v204, v202, v9);
    sub_10006D550(v201);
  }

  return v9;
}

uint64_t sub_10006D550(uint64_t a1)
{
  v2 = _s7BuilderVMa(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10006D5C8(uint64_t a1, char a2, void *a3)
{
  v4 = 0;
  v28 = *(a1 + 16);
  for (i = (a1 + 48); ; i += 3)
  {
    if (v28 == v4)
    {
    }

    if (v4 >= *(a1 + 16))
    {
      break;
    }

    v7 = *(i - 2);
    v6 = *(i - 1);
    v8 = *i;
    v9 = *a3;

    v10 = v8;
    v12 = sub_10000C2A0(v7, v6);
    v13 = v9[2];
    v14 = (v11 & 1) == 0;
    v15 = v13 + v14;
    if (__OFADD__(v13, v14))
    {
      goto LABEL_17;
    }

    v16 = v11;
    if (v9[3] >= v15)
    {
      if ((a2 & 1) == 0)
      {
        sub_10002EB80(&qword_10019B480, &qword_1001506A0);
        _NativeDictionary.copy()();
      }
    }

    else
    {
      sub_100046E0C(v15, a2 & 1);
      v17 = sub_10000C2A0(v7, v6);
      if ((v16 & 1) != (v18 & 1))
      {
        goto LABEL_19;
      }

      v12 = v17;
    }

    v19 = *a3;
    if (v16)
    {
      v20 = *(v19[7] + 8 * v12);

      v21 = v19[7];
      v22 = *(v21 + 8 * v12);
      *(v21 + 8 * v12) = v20;
    }

    else
    {
      v19[(v12 >> 6) + 8] |= 1 << v12;
      v23 = (v19[6] + 16 * v12);
      *v23 = v7;
      v23[1] = v6;
      *(v19[7] + 8 * v12) = v10;
      v24 = v19[2];
      v25 = __OFADD__(v24, 1);
      v26 = v24 + 1;
      if (v25)
      {
        goto LABEL_18;
      }

      v19[2] = v26;
    }

    ++v4;
    a2 = 1;
  }

  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void sub_10006D7F8(id a1@<X4>, uint64_t a2@<X0>, uint64_t a3@<X1>, uint64_t a4@<X2>, uint64_t a5@<X3>, void *a6@<X8>)
{
  v12 = &TableBuilder;
  if ([a1 value] || (v16 = objc_msgSend(a1, "disabledReason")) == 0)
  {
    v13 = 0;
    v14 = 0xF000000000000000;
LABEL_3:
    v15 = [a1 v12[34].ivars];

    *a6 = a2;
    a6[1] = a3;
    a6[2] = a4;
    a6[3] = a5;
    a6[4] = v15;
    a6[5] = v13;
    a6[6] = v14;
    return;
  }

  v22 = 0;
  v21 = v16;
  v17 = [objc_opt_self() archivedDataWithRootObject:v16 requiringSecureCoding:1 error:&v22];
  v18 = v22;
  if (v17)
  {
    v13 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v19;

    v12 = &TableBuilder;
    goto LABEL_3;
  }

  v20 = v18;

  _convertNSErrorToError(_:)();

  swift_willThrow();
}

id sub_10006D994()
{
  v1 = v0[4];
  if (v1 == 1)
  {
    v2 = [objc_opt_self() enabled];

    return v2;
  }

  else if (v1)
  {
    _StringGuts.grow(_:)(49);

    v8._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v8);

    v9._countAndFlagsBits = 0xD00000000000001BLL;
    v9._object = 0x8000000100155520;
    String.append(_:)(v9);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    v4 = v0[6];
    if (v4 >> 60 == 15)
    {
      v7 = 0;
    }

    else
    {
      v5 = v0[5];
      sub_100003D44(0, &qword_100199D10, NSKeyedUnarchiver_ptr);
      sub_100003D44(0, &qword_10019AD00, LNStaticDeferredLocalizedString_ptr);
      sub_1000098F0(v5, v4);
      v7 = static NSKeyedUnarchiver.unarchivedObject<A>(ofClass:from:)();
      sub_10000D4DC(v5, v4);
    }

    v6 = [objc_opt_self() disabledWithReason:v7];

    return v6;
  }

  return result;
}

void sub_10006DB9C(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v2)
  {
    v9 = _swiftEmptyArrayStorage;
    sub_1000B345C(0, v2 & ~(v2 >> 63), 0);
    if (v2 < 0)
    {
      __break(1u);
    }

    else
    {
      v3 = 0;
      v4 = v9;
      do
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v5 = *(a1 + 8 * v3 + 32);
        }

        sub_100003D44(0, &qword_100198BA0, INSpeakableString_ptr);
        swift_dynamicCast();
        v9 = v4;
        v7 = v4[2];
        v6 = v4[3];
        if (v7 >= v6 >> 1)
        {
          sub_1000B345C(v6 > 1, v7 + 1, 1);
          v4 = v9;
        }

        ++v3;
        v4[2] = v7 + 1;
        sub_1000398F4(&v8, &v4[4 * v7 + 4]);
      }

      while (v2 != v3);
    }
  }
}

void *sub_10006DD04(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = _swiftEmptyArrayStorage;
  if (v1)
  {
    v10 = _swiftEmptyArrayStorage;
    sub_1000B34AC(0, v1, 0);
    v2 = _swiftEmptyArrayStorage;
    v4 = a1 + 32;
    do
    {
      sub_100013334(v4, v8);
      sub_10002EB80(&qword_10019A530, &qword_10014F270);
      sub_10002EB80(&unk_10019B4F0, &qword_10014F268);
      swift_dynamicCast();
      v10 = v2;
      v6 = v2[2];
      v5 = v2[3];
      if (v6 >= v5 >> 1)
      {
        sub_1000B34AC((v5 > 1), v6 + 1, 1);
        v2 = v10;
      }

      v2[2] = v6 + 1;
      sub_10001A798(&v9, &v2[5 * v6 + 4]);
      v4 += 40;
      --v1;
    }

    while (v1);
  }

  return v2;
}

void *sub_10006DE3C(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = _swiftEmptyArrayStorage;
  if (v1)
  {
    v4 = sub_1000125FC();
    sub_1000B345C(v4, v5, v6);
    v2 = v12;
    v7 = a1 + 40;
    do
    {

      swift_dynamicCast();
      v12 = v2;
      v9 = v2[2];
      v8 = v2[3];
      if (v9 >= v8 >> 1)
      {
        sub_1000B345C(v8 > 1, v9 + 1, 1);
        v2 = v12;
      }

      v2[2] = v9 + 1;
      sub_1000398F4(&v11, &v2[4 * v9 + 4]);
      v7 += 16;
      --v1;
    }

    while (v1);
  }

  return v2;
}

void *sub_10006DF2C(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = _swiftEmptyArrayStorage;
  if (v1)
  {
    v4 = sub_1000125FC();
    sub_1000B35B4(v4, v5, v6);
    v2 = v15;
    v7 = a1 + 40;
    do
    {

      sub_10002EB80(&qword_100199ED0, &qword_10014ED20);
      swift_dynamicCast();
      v9 = v15[2];
      v8 = v15[3];
      if (v9 >= v8 >> 1)
      {
        sub_1000B35B4((v8 > 1), v9 + 1, 1);
      }

      v15[2] = v9 + 1;
      v10 = &v15[5 * v9];
      v10[8] = v14;
      *(v10 + 2) = v12;
      *(v10 + 3) = v13;
      v7 += 16;
      --v1;
    }

    while (v1);
  }

  return v2;
}

void *sub_10006E040(uint64_t a1)
{
  v2 = type metadata accessor for LNBundleRecord(0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 16);
  v7 = _swiftEmptyArrayStorage;
  if (v6)
  {
    v17 = _swiftEmptyArrayStorage;
    sub_1000B392C(0, v6, 0);
    v7 = v17;
    v8 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v9 = *(v3 + 72);
    do
    {
      sub_10004AE8C(v8, v5);
      v17 = v7;
      v11 = v7[2];
      v10 = v7[3];
      if (v11 >= v10 >> 1)
      {
        sub_1000B392C((v10 > 1), v11 + 1, 1);
        v7 = v17;
      }

      v15 = v2;
      v16 = &off_10018EDD8;
      v12 = sub_100013234(&v14);
      sub_10004AE8C(v5, v12);
      v7[2] = v11 + 1;
      sub_10001A798(&v14, &v7[5 * v11 + 4]);
      sub_1000715C4(v5);
      v8 += v9;
      --v6;
    }

    while (v6);
  }

  return v7;
}

void sub_10006E200(uint64_t a1)
{
  v4 = sub_100007F00(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_100024C6C(v4, 1, sub_10007007C);
  sub_10001A9F4();
  if (!v6)
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  sub_100003AE4();
  if (v7 != v5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  sub_10002EB80(&qword_10019A488, &qword_10014F1C8);
  swift_arrayInitWithCopy();

  if (!v1)
  {
LABEL_8:
    *v2 = v3;
    return;
  }

  sub_100019D34();
  if (!v5)
  {
    *(v3 + 16) = v8;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

void sub_10006E2C8(uint64_t a1)
{
  sub_100007F00(a1);
  if (v4)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_10007143C();
  sub_10001A9F4();
  if (!v5)
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  sub_100003AE4();
  if (v6 != v4)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  sub_100018714();

  if (!v1)
  {
LABEL_8:
    *v2 = v3;
    return;
  }

  sub_100019D34();
  if (!v4)
  {
    *(v3 + 16) = v7;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

void sub_10006E3AC(uint64_t a1)
{
  v4 = sub_100007F00(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_100024C6C(v4, 1, sub_100013A60);
  sub_10001A9F4();
  if (!v6)
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  sub_100003AE4();
  if (v7 != v5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  sub_100018714();

  if (!v1)
  {
LABEL_8:
    *v2 = v3;
    return;
  }

  sub_100019D34();
  if (!v5)
  {
    *(v3 + 16) = v8;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

void sub_10006E450(uint64_t a1)
{
  v4 = sub_100007F00(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_100024C6C(v4, 1, sub_100070554);
  sub_10001A9F4();
  if (!v6)
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  sub_100003AE4();
  if (v7 != v5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  sub_100018714();

  if (!v1)
  {
LABEL_8:
    *v2 = v3;
    return;
  }

  sub_100019D34();
  if (!v5)
  {
    *(v3 + 16) = v8;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

uint64_t sub_10006E520(uint64_t a1, uint64_t (*a2)(void), void (*a3)(uint64_t, void, uint64_t))
{
  v7 = a2();
  v8 = (a2)(*v3);
  v9 = __OFADD__(v8, v7);
  result = v8 + v7;
  if (v9)
  {
    __break(1u);
    goto LABEL_8;
  }

  sub_100071348(result, 1);
  v11 = *v3;
  v12 = *v3 & 0xFFFFFFFFFFFFFF8;
  a3(v12 + 8 * *(v12 + 0x10) + 32, (*(v12 + 0x18) >> 1) - *(v12 + 0x10), a1);
  v14 = v13;

  if (v14 < v7)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v14 < 1)
  {
LABEL_6:
    *v3 = v11;
    return result;
  }

  v15 = *(v12 + 16);
  v9 = __OFADD__(v15, v14);
  v16 = v15 + v14;
  if (!v9)
  {
    *(v12 + 16) = v16;
    goto LABEL_6;
  }

LABEL_9:
  __break(1u);
  return result;
}

void sub_10006E638(uint64_t a1)
{
  v4 = sub_100007F00(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_100024C6C(v4, 1, sub_100070C90);
  sub_10001A9F4();
  if (!v6)
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  sub_100003AE4();
  if (v7 != v5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  sub_100018714();

  if (!v1)
  {
LABEL_8:
    *v2 = v3;
    return;
  }

  sub_100019D34();
  if (!v5)
  {
    *(v3 + 16) = v8;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

void sub_10006E728(uint64_t a1)
{
  sub_100007F00(a1);
  if (v6)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v7 = v5;
  v8 = v4;
  sub_100071244();
  v9 = *v2;
  if (!*(v3 + 16))
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  if ((*(v9 + 24) >> 1) - *(v9 + 16) < v1)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  sub_10002EB80(v8, v7);
  swift_arrayInitWithCopy();

  if (!v1)
  {
LABEL_8:
    *v2 = v9;
    return;
  }

  v10 = *(v9 + 16);
  v6 = __OFADD__(v10, v1);
  v11 = v10 + v1;
  if (!v6)
  {
    *(v9 + 16) = v11;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

void *LinkDaemon.entryPoints.getter()
{
  sub_100004DD8();
  v0 = swift_allocObject();
  *(v0 + 16) = sub_10006F34C;
  *(v0 + 24) = 0;
  v1 = sub_10002EB80(&qword_10019A368, &qword_10014F0E0);
  sub_100024878(v1);
  v2 = sub_10006FB60(1, sub_1000716A8, v0);
  sub_100004DD8();
  v3 = swift_allocObject();
  *(v3 + 16) = sub_10006F440;
  *(v3 + 24) = 0;
  v4 = sub_10002EB80(&qword_10019A370, &qword_10014F0E8);
  sub_100024878(v4);
  v5 = sub_1000037AC();
  v8 = sub_10006FB60(v5, v6, v7);
  sub_100004DD8();
  v9 = swift_allocObject();
  *(v9 + 16) = sub_10006F4F4;
  *(v9 + 24) = 0;
  v10 = sub_10002EB80(&qword_10019A378, &qword_10014F0F0);
  sub_100024878(v10);
  v11 = sub_10006FB60(1, sub_1000716A8, v9);
  sub_10002EB80(&qword_10019A380, &qword_1001507E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10014BC40;
  *(inited + 56) = sub_10002EB80(&qword_10019A388, &qword_10014F0F8);
  *(inited + 64) = &off_10018FCE8;
  sub_100004DD8();
  v13 = swift_allocObject();
  *(v13 + 16) = sub_1000714E8;
  *(v13 + 24) = v11;
  sub_100024878(v10);
  swift_retain_n();
  v14 = sub_1000037AC();
  sub_10006FB60(v14, v15, v16);
  swift_allocObject();
  v17 = sub_10000EE70();
  v18 = sub_10006FD7C(v17);

  *(inited + 32) = v18;
  sub_100004DD8();
  v19 = swift_allocObject();
  *(v19 + 16) = v2;
  *(v19 + 24) = v11;
  *(inited + 96) = sub_10002EB80(&qword_10019A390, &qword_10014F100);
  *(inited + 104) = &off_10018FCE8;
  sub_100004DD8();
  v20 = swift_allocObject();
  *(v20 + 16) = sub_100071504;
  *(v20 + 24) = v19;
  v21 = sub_10002EB80(&qword_10019A398, &qword_10014F108);
  sub_100024878(v21);

  v22 = sub_1000037AC();
  v25 = sub_10006FB60(v22, v23, v24);
  swift_allocObject();
  v26 = sub_10006FC50(v25, &qword_100198228, &qword_10019DD40, algn_10019DD48, sub_100084CC4);

  *(inited + 72) = v26;
  sub_10002EB80(&qword_10019A3A0, &qword_10014F110);
  v27 = swift_initStackObject();
  *(v27 + 16) = xmmword_10014BC40;
  v28 = sub_10002EB80(&qword_10019A3A8, &qword_10014F118);
  v29 = swift_allocObject();

  swift_defaultActor_initialize();
  *(v29 + 112) = v2;
  *(v27 + 56) = v28;
  *(v27 + 64) = sub_100013EBC(&qword_10019A3B0, &qword_10019A3A8, &qword_10014F118, &unk_10014DF18);
  *(v27 + 32) = v29;
  *(v27 + 96) = sub_1000026B8();
  *(v27 + 104) = sub_100013EBC(&qword_10019A3C0, &qword_10019A3B8, &qword_10014F120, &unk_10014DF18);
  sub_100004DD8();
  v30 = swift_allocObject();
  *(v30 + 16) = sub_100071520;
  *(v30 + 24) = v2;
  sub_100024878(v21);
  sub_100011AF8();
  v31 = sub_1000037AC();
  v34 = sub_10006FB60(v31, v32, v33);
  v35 = swift_allocObject();
  swift_defaultActor_initialize();

  *(v35 + 112) = v34;
  *(v27 + 72) = v35;
  v36 = swift_initStackObject();
  *(v36 + 16) = xmmword_10014BC40;
  *(v36 + 56) = sub_1000026B8();
  *(v36 + 64) = sub_100013EBC(&qword_10019A3D0, &qword_10019A3C8, &qword_10014F128, &unk_10014F668);
  sub_100004DD8();
  v37 = swift_allocObject();
  *(v37 + 16) = sub_10007153C;
  *(v37 + 24) = v2;
  v38 = sub_10002EB80(&qword_10019A3D8, &qword_10014F130);
  sub_100024878(v38);
  sub_100011AF8();
  v39 = sub_1000037AC();
  sub_10006FB60(v39, v40, v41);
  sub_10000643C();
  v42 = sub_10000EE70();
  v43 = sub_10006FA70(v42);

  *(v36 + 32) = v43;
  *(v36 + 96) = sub_1000026B8();
  *(v36 + 104) = sub_100012A8C(&qword_10019A3E8);
  sub_100004DD8();
  v44 = swift_allocObject();
  *(v44 + 16) = sub_100071558;
  *(v44 + 24) = v8;
  v45 = sub_10002EB80(&qword_10019A3F0, &qword_10014F140);
  sub_100024878(v45);
  swift_retain_n();
  v46 = sub_1000037AC();
  sub_10006FB60(v46, v47, v48);
  sub_10000643C();
  v49 = sub_10000EE70();
  v50 = sub_10006F980(v49);

  *(v36 + 72) = v50;
  v51 = swift_initStackObject();
  *(v51 + 16) = xmmword_10014F0D0;
  v52 = sub_10002EB80(&qword_10019A3F8, &qword_10014F148);
  swift_allocObject();

  v54 = sub_10006FC50(v53, &qword_100198360, &qword_10019E128, &qword_10019E130, sub_1000D2B9C);
  *(v51 + 56) = v52;
  *(v51 + 64) = sub_100013EBC(&qword_10019A400, &qword_10019A3F8, &qword_10014F148, &unk_100151B80);
  *(v51 + 32) = v54;
  *(v51 + 96) = sub_1000026B8();
  *(v51 + 104) = sub_100012A8C(&qword_10019A410);
  sub_100004DD8();
  v55 = swift_allocObject();
  *(v55 + 16) = sub_100071574;
  *(v55 + 24) = v8;
  v56 = sub_10002EB80(&qword_10019A418, &qword_10014F158);
  v57 = sub_100024878(v56);
  swift_retain_n();
  v58 = sub_1000037AC();
  sub_10006FB60(v58, v59, v60);
  sub_100012038();
  v61 = sub_10006FC50(v57, &qword_100198130, &qword_10019DA50, algn_10019DA58, sub_100057BE0);

  *(v51 + 72) = v61;
  *(v51 + 136) = sub_1000026B8();
  *(v51 + 144) = sub_100012A8C(&qword_10019A428);
  sub_100004DD8();
  v62 = swift_allocObject();
  *(v62 + 16) = sub_100071598;
  *(v62 + 24) = v2;
  v63 = sub_10002EB80(&qword_10019A430, &qword_10014F168);
  sub_100024878(v63);
  sub_100011AF8();
  v64 = sub_1000037AC();
  sub_10006FB60(v64, v65, v66);
  sub_100012038();
  v67 = sub_10006FC50(&unk_10014F160, &qword_1001981F8, &qword_10019DBD8, &qword_10019DBE0, sub_100072DCC);

  *(v51 + 112) = v67;
  *(v51 + 176) = sub_1000026B8();
  *(v51 + 184) = sub_100012A8C(&qword_10019A440);
  sub_100004DD8();
  v68 = swift_allocObject();
  *(v68 + 16) = sub_10006F8D8;
  *(v68 + 24) = 0;
  v69 = sub_10002EB80(&qword_10019A448, &qword_10014F178);
  sub_100024878(v69);
  v70 = sub_1000037AC();
  v72 = v71;
  sub_10006FB60(v70, v73, v74);
  sub_100012038();
  *(v51 + 152) = sub_10006FC50(v72, &qword_1001983A8, &qword_10019E328, &qword_10019E330, sub_100109060);
  *(v51 + 216) = sub_1000026B8();
  *(v51 + 224) = sub_100012A8C(&qword_10019A458);
  sub_100004DD8();
  v75 = swift_allocObject();
  *(v75 + 16) = sub_10006F904;
  *(v75 + 24) = 0;
  v76 = sub_10002EB80(&qword_10019A460, &qword_10014F188);
  sub_100024878(v76);
  v77 = sub_1000037AC();
  v79 = v78;
  sub_10006FB60(v77, v80, v81);
  sub_100012038();
  *(v51 + 192) = sub_10006FC50(v79, &qword_1001981B8, &qword_10019DB80, algn_10019DB88, sub_10006A12C);
  sub_10006E728(v36);
  sub_10006E728(v51);
  v82 = sub_10006DD04(v27);

  sub_10006E728(inited);

  return v82;
}

char *sub_10006F34C@<X0>(char **a1@<X8>)
{
  if (qword_100198348 != -1)
  {
    swift_once();
  }

  memcpy(__dst, &qword_10019E0B0, sizeof(__dst));
  v3 = __dst[4];
  v4 = __dst[5];
  v8 = __dst[8];
  objc_allocWithZone(type metadata accessor for Registry(0));

  sub_1000069B8(v3, v4);

  sub_100071620(&v8, &v6);
  result = sub_1000C6A2C(__dst);
  if (!v1)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_10006F440@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_10002EB80(&qword_1001990C0, &unk_10014E200);
  __chkstk_darwin(v2 - 8);
  v4 = &v7 - v3;
  v5 = type metadata accessor for URL();
  sub_1000075C4(v4, 1, 1, v5);
  type metadata accessor for TranscriptActionRecordStreamManager(0);
  swift_allocObject();
  result = sub_10005D520(v4);
  *a1 = result;
  return result;
}

id sub_10006F4F4@<X0>(void *a1@<X8>)
{
  if (qword_1001980A8 != -1)
  {
    swift_once();
  }

  v2 = qword_10019D818;
  *a1 = qword_10019D818;
  return v2;
}

uint64_t sub_10006F55C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100084BA4();
  if (!v1)
  {
    *a1 = result;
  }

  return result;
}

id sub_10006F58C@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  type metadata accessor for ApplicationService();
  swift_allocObject();

  result = sub_100084CF4(v4, a1);
  *a2 = result;
  return result;
}

id sub_10006F5FC@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for ApplicationService();
  swift_allocObject();

  result = sub_100084CF4(v2, 0);
  *a1 = result;
  return result;
}

uint64_t sub_10006F660@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  type metadata accessor for UpdateRegistryService();
  v4 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v4 + 112) = a1;
  *a2 = v4;
}

uint64_t sub_10006F6C0@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_10006F720();
  type metadata accessor for PruneTranscriptService();
  v3 = swift_allocObject();
  result = swift_defaultActor_initialize();
  *(v3 + 112) = v2;
  *a1 = v3;
  return result;
}

uint64_t sub_10006F720()
{

  result = sub_10011D0FC(v1, v0);
  if (v3)
  {
    sub_10002EB80(&qword_10019A548, &qword_10014F280);
    result = _diagnoseUnexpectedEnumCase<A>(type:)();
    __break(1u);
  }

  return result;
}

id sub_10006F77C@<X0>(void *a1@<X8>)
{
  v2 = sub_10006F720();
  sub_10002EB80(&qword_10019A540, &qword_10014F278);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_10014CE90;
  if (qword_100198318 != -1)
  {
    swift_once();
  }

  v4 = qword_10019E080;
  *(v3 + 56) = &type metadata for NotifyingTranscriptObserver;
  *(v3 + 64) = &off_10018EC08;
  *(v3 + 32) = v4;
  v5 = objc_allocWithZone(type metadata accessor for Transcript());
  v6 = v4;
  result = sub_100057960(v2, v3);
  *a1 = result;
  return result;
}

id sub_10006F868@<X0>(uint64_t *a1@<X8>)
{
  v2 = objc_allocWithZone(type metadata accessor for SuggestedActionsService());

  result = sub_100072CA8(v3, &unk_10014F460, 0);
  *a1 = result;
  return result;
}

id sub_10006F930@<X0>(uint64_t (*a1)(void)@<X0>, void *a2@<X8>)
{
  result = [objc_allocWithZone(a1(0)) init];
  *a2 = result;
  return result;
}

uint64_t sub_10006F980(uint64_t a1)
{
  v2 = v1;
  swift_defaultActor_initialize();
  v4 = qword_10019A7A0;
  v5 = sub_10002EB80(&qword_10019A550, &qword_10014F288);
  sub_1000075C4(v2 + v4, 1, 1, v5);
  *(v2 + qword_10019A7A8) = 0;
  *(v2 + qword_10019DBE8) = a1;
  sub_100003D44(0, &qword_10019A558, NSBackgroundActivityScheduler_ptr);

  v6 = sub_10006FE64(0xD000000000000020, 0x8000000100154EE0, &selRef_initWithIdentifier_);
  [v6 setPreregistered:1];

  *(v2 + 112) = 0;
  *(v2 + 120) = v6;
  return v2;
}

uint64_t sub_10006FA70(uint64_t a1)
{
  v2 = v1;
  swift_defaultActor_initialize();
  v4 = qword_10019A7A0;
  v5 = sub_10002EB80(&qword_10019A550, &qword_10014F288);
  sub_1000075C4(v2 + v4, 1, 1, v5);
  *(v2 + qword_10019A7A8) = 0;
  *(v2 + qword_10019DBE8) = a1;
  sub_100003D44(0, &qword_10019A558, NSBackgroundActivityScheduler_ptr);

  v6 = sub_10006FE64(0xD00000000000001FLL, 0x8000000100155540, &selRef_initWithIdentifier_);
  [v6 setPreregistered:1];

  *(v2 + 112) = 0;
  *(v2 + 120) = v6;
  return v2;
}

uint64_t sub_10006FB60(char a1, uint64_t a2, uint64_t a3)
{
  v7 = [objc_allocWithZone(NSLock) init];
  *(v3 + 48) = 0;
  *(v3 + 56) = -1;
  *(v3 + 40) = a1;
  *(v3 + 16) = v7;
  *(v3 + 24) = a2;
  *(v3 + 32) = a3;
  return v3;
}

id *sub_10006FC50(uint64_t a1, void *a2, uint64_t *a3, uint64_t *a4, uint64_t a5)
{
  ObjectType = swift_getObjectType();
  swift_defaultActor_initialize();
  sub_100003D44(0, &qword_10019A538, NSXPCListener_ptr);
  if (*a2 != -1)
  {
    swift_once();
  }

  v11 = *a3;
  v12 = *a4;

  v5[14] = sub_10006FE64(v11, v12, &selRef_initWithMachServiceName_);
  v5[15] = a1;
  v17.receiver = v5;
  v17.super_class = ObjectType;

  v13 = objc_msgSendSuper2(&v17, "init");
  v14 = v13[14];
  v15 = v13;
  [v14 setDelegate:{v15, v17.receiver, v17.super_class}];
  [v13[14] resume];

  return v15;
}

id *sub_10006FD7C(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  swift_defaultActor_initialize();
  sub_100003D44(0, &qword_10019A538, NSXPCListener_ptr);
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v1[14] = sub_10006FE64(v4, v5, &selRef_initWithMachServiceName_);
  v1[15] = a1;
  v10.receiver = v1;
  v10.super_class = ObjectType;

  v6 = objc_msgSendSuper2(&v10, "init");
  v7 = v6[14];
  v8 = v6;
  [v7 setDelegate:{v8, v10.receiver, v10.super_class}];
  [v6[14] resume];

  return v8;
}

id sub_10006FE64(uint64_t a1, uint64_t a2, SEL *a3)
{
  v4 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v5 = String._bridgeToObjectiveC()();

  v6 = [v4 *a3];

  return v6;
}

void sub_10006FED8()
{
  sub_1000088A4();
  if (v4)
  {
    sub_1000079A4();
    if (v5 != v6)
    {
      sub_100006A88();
      if (v5)
      {
        __break(1u);
        return;
      }

      sub_100007164();
    }
  }

  sub_100006778();
  if (v3)
  {
    v7 = sub_10002EB80(&qword_10019A518, &qword_10014F248);
    v8 = sub_100011600(v7);
    sub_1000051D8(v8);
  }

  else
  {
    v3 = _swiftEmptyArrayStorage;
  }

  v9 = sub_10000751C();
  if (v1)
  {
    if (v3 != v0 || &v10[24 * v2] <= v9)
    {
      memmove(v9, v10, 24 * v2);
    }

    v0[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_10006FFAC()
{
  sub_1000088A4();
  if (v4)
  {
    sub_1000079A4();
    if (v5 != v6)
    {
      sub_100006A88();
      if (v5)
      {
        __break(1u);
        return;
      }

      sub_100007164();
    }
  }

  sub_100006778();
  if (v3)
  {
    sub_10002EB80(&qword_10019A510, &qword_10014F240);
    v7 = sub_10001A85C();
    sub_100011820(v7);
    sub_100011108(v8);
  }

  else
  {
    v3 = _swiftEmptyArrayStorage;
  }

  v9 = sub_10000751C();
  if (v1)
  {
    if (v3 != v0 || &v10[32 * v2] <= v9)
    {
      memmove(v9, v10, 32 * v2);
    }

    v0[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void *sub_10007007C(void *result, int64_t a2, char a3, void *a4)
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
    sub_10002EB80(&qword_10019A490, &qword_10014F1D0);
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
    sub_10002EB80(&qword_10019A488, &qword_10014F1C8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_1000701AC()
{
  sub_1000088A4();
  if (v4)
  {
    sub_1000079A4();
    if (v5 != v6)
    {
      sub_100006A88();
      if (v5)
      {
        __break(1u);
        return;
      }

      sub_100007164();
    }
  }

  sub_1000134C8();
  if (v2)
  {
    v7 = sub_10002EB80(&qword_10019A520, &qword_10014F250);
    v8 = sub_100004868(v7);
    sub_100004E98(v8);
    v8[2] = v3;
    v8[3] = v9;
  }

  else
  {
    v8 = _swiftEmptyArrayStorage;
  }

  if (v1)
  {
    if (v8 != v0 || &v0[3 * v3 + 4] <= v8 + 4)
    {
      v11 = sub_10001AAF4();
      memmove(v11, v12, v13);
    }

    v0[2] = 0;
  }

  else
  {
    sub_10002EB80(&qword_10019A528, &qword_10014F258);
    sub_1000183FC();
    swift_arrayInitWithCopy();
  }
}

void sub_1000702DC()
{
  sub_1000088A4();
  if (v4)
  {
    sub_1000079A4();
    if (v5 != v6)
    {
      sub_100006A88();
      if (v5)
      {
        __break(1u);
        return;
      }

      sub_100007164();
    }
  }

  sub_1000134C8();
  if (v2)
  {
    sub_10002EB80(&qword_10019A4E0, &qword_10014F220);
    v7 = sub_10001A85C();
    v8 = j__malloc_size(v7);
    sub_10001E0C0(v8 - 32);
  }

  else
  {
    v7 = _swiftEmptyArrayStorage;
  }

  v9 = sub_1000119E0();
  if (v1)
  {
    if (v7 != v0 || &v10[16 * v3] <= v9)
    {
      memmove(v9, v10, 16 * v3);
    }

    v0[2] = 0;
  }

  else
  {
    memcpy(v9, v10, 16 * v3);
  }
}

void sub_1000703A8()
{
  sub_1000088A4();
  if (v6)
  {
    sub_1000079A4();
    if (v7 != v8)
    {
      sub_100006A88();
      if (v7)
      {
        __break(1u);
        return;
      }

      sub_100007164();
    }
  }

  sub_100006778();
  if (v3)
  {
    v9 = sub_10002EB80(&qword_10019A4E8, &qword_10014F228);
    v4 = 40;
    v10 = sub_100011600(v9);
    sub_1000051D8(v10);
  }

  else
  {
    v3 = _swiftEmptyArrayStorage;
  }

  sub_10001272C();
  if (v1)
  {
    if (v3 != v0 || v5 + 40 * v2 <= v4)
    {
      v12 = sub_10001AAF4();
      memmove(v12, v13, v14);
    }

    v0[2] = 0;
  }

  else
  {
    sub_10002EB80(&unk_10019B370, &unk_100150580);
    sub_1000183FC();
    swift_arrayInitWithCopy();
  }
}

void sub_100070554()
{
  sub_1000088A4();
  if (v4)
  {
    sub_1000079A4();
    if (v5 != v6)
    {
      sub_100006A88();
      if (v5)
      {
        __break(1u);
        return;
      }

      sub_100007164();
    }
  }

  sub_100006778();
  if (v3)
  {
    sub_10002EB80(&qword_10019A4F8, &unk_100150170);
    v7 = swift_allocObject();
    sub_100011820(v7);
    sub_100011108(v8);
  }

  else
  {
    v3 = _swiftEmptyArrayStorage;
  }

  v9 = sub_10000751C();
  if (v1)
  {
    if (v3 != v0 || &v10[64 * v2] <= v9)
    {
      memmove(v9, v10, v2 << 6);
    }

    v0[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_100070628()
{
  sub_1000088A4();
  if (v6)
  {
    sub_1000079A4();
    if (v7 != v8)
    {
      sub_100006A88();
      if (v7)
      {
        __break(1u);
        return;
      }

      sub_100007164();
    }
  }

  sub_100006778();
  if (v3)
  {
    v9 = sub_10002EB80(&qword_10019A4B8, &qword_10014F1F8);
    v4 = 24;
    v10 = sub_100011600(v9);
    sub_1000051D8(v10);
  }

  else
  {
    v3 = _swiftEmptyArrayStorage;
  }

  sub_10001272C();
  if (v1)
  {
    if (v3 != v0 || v5 + 24 * v2 <= v4)
    {
      v12 = sub_10001AAF4();
      memmove(v12, v13, v14);
    }

    v0[2] = 0;
  }

  else
  {
    sub_10002EB80(&qword_10019A4C0, &qword_10014F200);
    sub_1000183FC();
    swift_arrayInitWithCopy();
  }
}

void sub_10007076C()
{
  sub_1000088A4();
  if (v6)
  {
    sub_1000079A4();
    if (v7 != v8)
    {
      sub_100006A88();
      if (v7)
      {
        __break(1u);
        return;
      }

      sub_100007164();
    }
  }

  sub_100006778();
  if (v3)
  {
    sub_10002EB80(&unk_10019B300, &unk_100150520);
    v9 = sub_10001A85C();
    sub_100011820(v9);
    sub_100011108(v10);
  }

  else
  {
    v3 = _swiftEmptyArrayStorage;
  }

  sub_10001272C();
  if (v1)
  {
    if (v3 != v0 || v5 + 16 * v2 <= v4)
    {
      v12 = sub_10001AAF4();
      memmove(v12, v13, v14);
    }

    v0[2] = 0;
  }

  else
  {
    sub_10002EB80(&qword_10019A4C8, &qword_10014F208);
    sub_1000183FC();
    swift_arrayInitWithCopy();
  }
}

void sub_100070854()
{
  sub_1000088A4();
  if (v4)
  {
    sub_1000079A4();
    if (v5 != v6)
    {
      sub_100006A88();
      if (v5)
      {
        __break(1u);
        return;
      }

      sub_100007164();
    }
  }

  sub_1000134C8();
  if (v2)
  {
    sub_10002EB80(&qword_10019A4A0, &qword_10014F1E0);
    v7 = sub_10001A85C();
    v8 = j__malloc_size(v7);
    sub_10001E0C0(v8 - 32);
  }

  else
  {
    v7 = _swiftEmptyArrayStorage;
  }

  v9 = sub_1000119E0();
  if (v1)
  {
    if (v7 != v0 || &v10[8 * v3] <= v9)
    {
      memmove(v9, v10, 8 * v3);
    }

    v0[2] = 0;
  }

  else
  {
    memcpy(v9, v10, 8 * v3);
  }
}

void sub_100070920()
{
  sub_1000088A4();
  if (v6)
  {
    sub_1000079A4();
    if (v7 != v8)
    {
      sub_100006A88();
      if (v7)
      {
        __break(1u);
        return;
      }

      sub_100007164();
    }
  }

  sub_100006778();
  if (v3)
  {
    sub_10002EB80(&qword_10019A4A8, &qword_10014F1E8);
    v9 = sub_10001A85C();
    sub_100011820(v9);
    sub_100011108(v10);
  }

  else
  {
    v3 = _swiftEmptyArrayStorage;
  }

  sub_10001272C();
  if (v1)
  {
    if (v3 != v0 || v5 + 8 * v2 <= v4)
    {
      v12 = sub_10001AAF4();
      memmove(v12, v13, v14);
    }

    v0[2] = 0;
  }

  else
  {
    sub_10002EB80(&qword_10019A4B0, &qword_10014F1F0);
    sub_1000183FC();
    swift_arrayInitWithCopy();
  }
}

void sub_100070A08()
{
  sub_1000088A4();
  if (v6)
  {
    sub_1000079A4();
    if (v7 != v8)
    {
      sub_100006A88();
      if (v7)
      {
        __break(1u);
        return;
      }

      sub_100007164();
    }
  }

  sub_100006778();
  if (v3)
  {
    v9 = sub_10002EB80(&qword_10019A4F0, &unk_100150160);
    v4 = 40;
    v10 = sub_100011600(v9);
    sub_1000051D8(v10);
  }

  else
  {
    v3 = _swiftEmptyArrayStorage;
  }

  sub_10001272C();
  if (v1)
  {
    if (v3 != v0 || v5 + 40 * v2 <= v4)
    {
      v12 = sub_10001AAF4();
      memmove(v12, v13, v14);
    }

    v0[2] = 0;
  }

  else
  {
    sub_10002EB80(&qword_10019B390, &qword_1001505A0);
    sub_1000183FC();
    swift_arrayInitWithCopy();
  }
}

void sub_100070AF0()
{
  sub_1000088A4();
  if (v4)
  {
    sub_1000079A4();
    if (v5 != v6)
    {
      sub_100006A88();
      if (v5)
      {
        __break(1u);
        return;
      }

      sub_100007164();
    }
  }

  sub_100006778();
  if (v3)
  {
    v7 = sub_10002EB80(&unk_10019B4E0, &qword_10014F260);
    v8 = sub_100011600(v7);
    sub_1000051D8(v8);
  }

  else
  {
    v3 = _swiftEmptyArrayStorage;
  }

  v9 = sub_10000751C();
  if (v1)
  {
    if (v3 != v0 || &v10[48 * v2] <= v9)
    {
      memmove(v9, v10, 48 * v2);
    }

    v0[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_100070BC4()
{
  sub_1000088A4();
  if (v4)
  {
    sub_1000079A4();
    if (v5 != v6)
    {
      sub_100006A88();
      if (v5)
      {
        __break(1u);
        return;
      }

      sub_100007164();
    }
  }

  sub_1000134C8();
  if (v2)
  {
    sub_10002EB80(&qword_10019A4D0, &qword_10014F210);
    v7 = sub_10001A85C();
    v8 = j__malloc_size(v7);
    sub_10001E0C0(v8 - 32);
  }

  else
  {
    v7 = _swiftEmptyArrayStorage;
  }

  v9 = sub_1000119E0();
  if (v1)
  {
    if (v7 != v0 || &v10[4 * v3] <= v9)
    {
      memmove(v9, v10, 4 * v3);
    }

    v0[2] = 0;
  }

  else
  {
    memcpy(v9, v10, 4 * v3);
  }
}

void sub_100070C90()
{
  sub_1000088A4();
  if (v4)
  {
    sub_1000079A4();
    if (v5 != v6)
    {
      sub_100006A88();
      if (v5)
      {
        __break(1u);
        return;
      }

      sub_100007164();
    }
  }

  sub_1000134C8();
  if (v2)
  {
    v7 = sub_10002EB80(&qword_10019A498, &qword_10014F1D8);
    v8 = sub_100004868(v7);
    sub_100004E98(v8);
    v8[2] = v3;
    v8[3] = v9;
  }

  else
  {
    v8 = _swiftEmptyArrayStorage;
  }

  v10 = sub_1000119E0();
  if (v1)
  {
    if (v8 != v0 || &v11[48 * v3] <= v10)
    {
      memmove(v10, v11, 48 * v3);
    }

    v0[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_100070DF4(char a1, uint64_t a2, char a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t), uint64_t *a6, uint64_t *a7)
{
  if (a3)
  {
    sub_1000079A4();
    if (v12 != v13)
    {
      sub_100006A88();
      if (v12)
      {
        __break(1u);
        return;
      }

      sub_100007164();
    }
  }

  else
  {
    v11 = a2;
  }

  v14 = *(a4 + 16);
  v15 = a5(v14, v11);
  v16 = *(sub_10002EB80(a6, a7) - 8);
  if (a1)
  {
    v17 = (*(v16 + 80) + 32) & ~*(v16 + 80);
    sub_100071174(a4 + v17, v14, v15 + v17, a6, a7);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_100070F2C()
{
  sub_1000088A4();
  if (v4)
  {
    sub_1000079A4();
    if (v5 != v6)
    {
      sub_100006A88();
      if (v5)
      {
        __break(1u);
        return;
      }

      sub_100007164();
    }
  }

  sub_1000134C8();
  if (v2)
  {
    v7 = sub_10002EB80(&unk_10019B330, &unk_100150550);
    v8 = sub_100004868(v7);
    sub_100004E98(v8);
    v8[2] = v3;
    v8[3] = v9;
  }

  else
  {
    v8 = _swiftEmptyArrayStorage;
  }

  v10 = sub_1000119E0();
  if (v1)
  {
    if (v8 != v0 || &v11[24 * v3] <= v10)
    {
      memmove(v10, v11, 24 * v3);
    }

    v0[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

char *sub_100071004(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[16 * a2] <= a3)
  {
    return sub_100002B0C(a3, result);
  }

  return result;
}

char *sub_100071024(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[32 * a2] <= a3)
  {
    return sub_100002B0C(a3, result);
  }

  return result;
}

char *sub_10007105C(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[48 * a2] <= a3)
  {
    return sub_100002B0C(a3, result);
  }

  return result;
}

char *sub_10007109C(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[64 * a2] <= a3)
  {
    return sub_100002B0C(a3, result);
  }

  return result;
}

char *sub_1000710D4(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[104 * a2] <= a3)
  {
    return sub_100002B0C(a3, result);
  }

  return result;
}

char *sub_100071128(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[48 * a2] <= a3)
  {
    return sub_100002B0C(a3, result);
  }

  return result;
}

uint64_t sub_100071174(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  sub_10000C8D4();
  if (v10 && (result = sub_10002EB80(a4, a5), v6 + *(*(result - 8) + 72) * v5 > v7))
  {
    if (v7 != v6)
    {
      v12 = sub_100007828();

      return _swift_arrayInitWithTakeBackToFront(v12);
    }
  }

  else
  {
    sub_10002EB80(a4, a5);
    v13 = sub_100007828();

    return _swift_arrayInitWithTakeFrontToBack(v13);
  }

  return result;
}

void sub_100071244()
{
  v4 = sub_1000246B4();
  *v1 = v2;
  if (!v4 || v3 > *(v2 + 24) >> 1)
  {
    sub_100013C90();
    sub_10001A674(v5, v6, v7, v8, v9, v10, v11, v0);
    *v1 = v12;
  }
}

uint64_t sub_100071348(uint64_t a1, char a2)
{
  v4 = *v2;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v2 = v4;
  if (result)
  {
    if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
    {
      if (a1 <= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  else if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
  {
    goto LABEL_9;
  }

  _CocoaArrayWrapper.endIndex.getter();
LABEL_9:
  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
  *v2 = result;
  return result;
}

uint64_t sub_10007143C()
{
  result = sub_1000246B4();
  *v1 = v2;
  if (!result || v3 > *(v2 + 24) >> 1)
  {
    sub_100013C90();
    result = v0();
    *v1 = result;
  }

  return result;
}

uint64_t sub_1000714B0@<X0>(void (*a1)(uint64_t *__return_ptr)@<X0>, uint64_t a2@<X8>)
{
  result = sub_10006FBC4(a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_1000715C4(uint64_t a1)
{
  v2 = type metadata accessor for LNBundleRecord(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100071620(uint64_t a1, uint64_t a2)
{
  v4 = sub_10002EB80(&qword_10019A560, &qword_100151690);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000716D4(uint64_t *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v5 = a1[2] == a2[2] && a1[3] == a2[3];
  if (!v5 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  sub_100003D44(0, &qword_100199300, NSObject_ptr);
  return static NSObject.== infix(_:_:)() & 1;
}

uint64_t sub_100071774(uint64_t a1)
{
  String.hash(into:)();
  String.hash(into:)();
  return NSObject.hash(into:)();
}

Swift::Int sub_1000717B4()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  String.hash(into:)();
  NSObject.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int sub_100071818(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  String.hash(into:)();
  NSObject.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_1000718EC()
{
  v0 = sub_10002EB80(&unk_10019AAC0, &unk_10014BE40);
  v1 = sub_100056DD4();
  return ExpressionType.init(_:)(0xD000000000000010, 0x8000000100155560, v0, v1);
}

uint64_t sub_100071950()
{
  v0 = sub_10002EB80(&unk_10019AAC0, &unk_10014BE40);
  v1 = sub_100056DD4();
  return ExpressionType.init(_:)(0xD000000000000010, 0x8000000100154580, v0, v1);
}

uint64_t sub_1000719B4()
{
  v0 = sub_10002EB80(&unk_10019AAC0, &unk_10014BE40);
  v1 = sub_100056DD4();
  return ExpressionType.init(_:)(0x6D796E6F6E7973, 0xE700000000000000, v0, v1);
}

uint64_t sub_100071A14(_OWORD *a1, uint64_t a2)
{
  v15 = a2;
  if (qword_1001981D0 != -1)
  {
    sub_100007F18(&qword_1001981D0);
  }

  memcpy(__dst, &unk_10019A568, 0xB0uLL);
  memcpy(__src, &unk_10019A568, sizeof(__src));
  sub_1000196B0(__dst, v11);
  if (qword_1001981D8 != -1)
  {
    sub_100007174(&qword_1001981D8);
  }

  sub_100003A8C(&qword_10019A618);
  v11[0] = *a1;
  <- infix<A>(_:_:)();
  sub_10002EB80(&unk_10019AAE0, &unk_10014BE30);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10014BC40;
  if (qword_1001981E8 != -1)
  {
    swift_once();
  }

  type metadata accessor for JSONEncoder();
  swift_allocObject();
  JSONEncoder.init()();
  LNStaticDeferredLocalizedString.asLocalizedStringResourceJSON(encoder:)();
  if (v2)
  {

    sub_10002EBC8(v12);
    memcpy(v11, __src, sizeof(v11));
    sub_10001970C(v11);
    *(v4 + 16) = 0;
    swift_setDeallocating();
    return sub_1000B3030();
  }

  else
  {

    <- infix<A>(_:_:)();

    if (qword_1001981E0 != -1)
    {
      sub_100002B1C(&qword_1001981E0);
    }

    sub_100003A8C(&qword_10019A630);
    <- infix<A>(_:_:)();
    v6 = QueryType.insert(_:_:)(v12, v4);
    v8 = v7;
    v10 = v9;
    swift_setDeallocating();
    sub_1000B3030();
    sub_10002EBC8(v12);
    memcpy(v11, __src, sizeof(v11));
    sub_10001970C(v11);
    v16.template._countAndFlagsBits = v6;
    v16.template._object = v8;
    v16.bindings._rawValue = v10;
    Connection.run(_:)(v16);
  }
}

_UNKNOWN **sub_100071D10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (qword_1001981D0 != -1)
  {
    sub_100007F18(&qword_1001981D0);
  }

  memcpy(v33, &unk_10019A568, sizeof(v33));
  if (qword_1001981D8 != -1)
  {
    sub_100007174(&qword_1001981D8);
  }

  sub_100003A8C(&qword_10019A618);
  v32[0] = a3;
  v32[1] = a4;
  v9 = == infix<A>(_:_:)();
  v11 = v10;
  v13 = v12;
  if (qword_1001981E0 != -1)
  {
    sub_100002B1C(&qword_1001981E0);
  }

  sub_100003A8C(&qword_10019A630);
  v14 = == infix<A>(_:_:)();
  v17 = && infix(_:_:)(v9, v11, v13, v14, v15, v16);
  v19 = v18;
  v21 = v20;

  memcpy(v31, v33, sizeof(v31));
  v22 = &protocol witness table for Table;
  QueryType.filter(_:)(v17, v19, v21, &type metadata for Table, &protocol witness table for Table, v23, v24, v25, v30, v31[0], v31[1], v31[2], v31[3], v31[4], v31[5], v31[6], v31[7], v31[8], v31[9], v31[10], v31[11], v31[12], v31[13], v31[14], v31[15], v31[16], v31[17], v31[18], v31[19], v31[20], v31[21], a1, a2, v32[2], v32[3], v32[4], v32[5], v32[6], v32[7], v32[8], v32[9], v32[10], v32[11], v32[12], v32[13], v32[14]);

  memcpy(v34, v32, sizeof(v34));
  v32[3] = &type metadata for Table;
  v32[4] = &protocol witness table for Table;
  v32[0] = swift_allocObject();
  memcpy((v32[0] + 16), v34, 0xB0uLL);
  v26 = v35;
  Connection.prepareRowIterator(_:)(v32);
  v27 = sub_1000034F8(v32);
  if (!v26)
  {
    __chkstk_darwin(v27);

    RowIterator.compactMap<A>(_:)();
    v22 = v29;
  }

  return v22;
}

double sub_100072014@<D0>(uint64_t a1@<X8>)
{
  sub_100072060(v4);
  result = *v4;
  v3 = v4[1];
  *a1 = v4[0];
  *(a1 + 16) = v3;
  *(a1 + 32) = v5;
  return result;
}

uint64_t sub_100072060@<X0>(void *a1@<X8>)
{
  if (qword_1001981D8 != -1)
  {
    swift_once();
  }

  Row.get<A>(_:)();
  if (qword_1001981E0 != -1)
  {
    swift_once();
  }

  Row.get<A>(_:)();
  if (qword_1001981E8 != -1)
  {
    swift_once();
  }

  Row.get<A>(_:)();
  sub_100003D44(0, &qword_10019AD00, LNStaticDeferredLocalizedString_ptr);
  result = LNStaticDeferredLocalizedString.init(localizedStringResourceJSON:)();
  *a1 = v3;
  a1[1] = v4;
  a1[2] = v3;
  a1[3] = v4;
  a1[4] = result;
  return result;
}

double sub_10007224C@<D0>(uint64_t a1@<X8>)
{
  (*(v1 + 16))(v6);
  if (!v2)
  {
    result = *v6;
    v5 = v6[1];
    *a1 = v6[0];
    *(a1 + 16) = v5;
    *(a1 + 32) = v7;
  }

  return result;
}

uint64_t sub_10007229C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 40))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
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

uint64_t sub_1000722DC(uint64_t result, int a2, int a3)
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

unint64_t sub_100072338()
{
  result = qword_10019A660;
  if (!qword_10019A660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10019A660);
  }

  return result;
}

void *sub_10007238C()
{
  v0 = type metadata accessor for NSFastEnumerationIterator();
  v19 = *(v0 - 8);
  __chkstk_darwin(v0);
  v2 = &v18 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  NSOrderedSet.makeIterator()();
  v3 = _swiftEmptyArrayStorage;
  v4 = &qword_10019A720;
  v20 = sub_1000766BC();
  while (1)
  {
    dispatch thunk of IteratorProtocol.next()();
    if (!v24)
    {
      break;
    }

    sub_1000398F4(&v23, v22);
    sub_100004D14(v22, v21);
    sub_100003D44(0, v4, LNEffectiveBundleIdentifier_ptr);
    if (swift_dynamicCast())
    {
      v5 = v2;
      v6 = v0;
      v7 = v4;
      v8 = v25;
      v9 = [v25 bundleIdentifier];

      v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v12 = v11;

      sub_1000034F8(v22);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_100013A60();
        v3 = v15;
      }

      v13 = v3[2];
      if (v13 >= v3[3] >> 1)
      {
        sub_100013A60();
        v3 = v16;
      }

      v3[2] = v13 + 1;
      v14 = &v3[2 * v13];
      v14[4] = v10;
      v14[5] = v12;
      v4 = v7;
      v0 = v6;
      v2 = v5;
    }

    else
    {
      sub_1000034F8(v22);
    }
  }

  (*(v19 + 8))(v2, v0);
  return v3;
}

uint64_t sub_1000725E4()
{
  sub_1000036A0();
  *(v0 + 152) = v1;
  *(v0 + 160) = v2;
  sub_100009990();

  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_10007266C()
{
  sub_100004884();
  v1 = objc_opt_self();
  v2 = String._bridgeToObjectiveC()();
  v3 = [v1 policyWithBundleIdentifier:v2];

  v0[10] = 0;
  v4 = [v3 connectionWithError:v0 + 10];
  v0[21] = v4;

  v5 = v0[10];
  if (v4)
  {
    sub_100003D44(0, &qword_10019A770, AFPreferences_ptr);
    v6 = v5;
    sub_100027D40();
    if (v7)
    {
      v8 = String._bridgeToObjectiveC()();
    }

    else
    {
      v8 = 0;
    }

    v0[22] = v8;
    v0[2] = v0;
    v0[7] = v0 + 18;
    v0[3] = sub_1000728E8;
    v12 = swift_continuation_init();
    v0[17] = sub_10002EB80(&qword_10019A790, &qword_10014F468);
    v0[10] = _NSConcreteStackBlock;
    v0[11] = 1107296256;
    v0[12] = sub_100072B50;
    v0[13] = &unk_10018DA68;
    v0[14] = v12;
    [v4 fetchSuggestedActionsWithSiriLanguageCode:v8 completionHandler:v0 + 10];

    return _swift_continuation_await(v0 + 2);
  }

  else
  {
    v9 = v5;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    sub_100003A00();

    return v10();
  }
}

uint64_t sub_1000728E8()
{
  sub_1000036A0();
  sub_100007A64();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 184) = *(v3 + 48);
  sub_100009990();

  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_100072A18()
{
  sub_1000070C8();
  v1 = *(v0 + 176);

  v2 = *(v0 + 144);
  sub_1000105C0();

  return v3(v2);
}

uint64_t sub_100072AB4()
{
  sub_1000036C4();
  v1 = *(v0 + 176);
  v2 = *(v0 + 168);
  swift_willThrow();

  sub_100003A00();

  return v3();
}

uint64_t sub_100072B50(uint64_t a1, uint64_t a2, void *a3)
{
  sub_1000034B4((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v4 = a3;

    return sub_100038184();
  }

  else
  {
    sub_100003D44(0, &qword_10019A798, LNSuggestedAction_ptr);
    static Array._unconditionallyBridgeFromObjectiveC(_:)();

    return sub_100038188();
  }
}

uint64_t sub_100072BF8()
{
  v0 = type metadata accessor for Logger();
  sub_100037CD8(v0, qword_10019DBC0);
  sub_10000347C(v0, qword_10019DBC0);
  type metadata accessor for SuggestedActionsService();
  sub_10002EB80(&qword_10019A250, &qword_10014DF40);
  String.init<A>(describing:)();
  result = LNLogSubsystem;
  if (LNLogSubsystem)
  {
    String.init(cString:)();
    return Logger.init(subsystem:category:)();
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_100072CA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();
  *&v3[OBJC_IVAR____TtC10LinkDaemon23SuggestedActionsService_registrySource] = a1;
  v8 = &v3[OBJC_IVAR____TtC10LinkDaemon23SuggestedActionsService_applicationSuggestionsProvider];
  *v8 = a2;
  *(v8 + 1) = a3;
  v10.receiver = v3;
  v10.super_class = ObjectType;
  return objc_msgSendSuper2(&v10, "init");
}

uint64_t sub_100072DCC()
{
  result = static String._unconditionallyBridgeFromObjectiveC(_:)();
  qword_10019DBD8 = result;
  unk_10019DBE0 = v1;
  return result;
}

uint64_t sub_100072DFC()
{
  if (qword_1001981F8 != -1)
  {
    swift_once();
  }

  v0 = qword_10019DBD8;

  return v0;
}

uint64_t sub_100072E64(uint64_t a1)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = v1;
  sub_100009990();
  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_100072E90()
{
  sub_100004884();
  v15 = v0;
  if (qword_1001981F0 != -1)
  {
    sub_100002B3C(&qword_1001981F0);
  }

  v1 = type metadata accessor for Logger();
  *(v0 + 40) = sub_100011AB8(v1, qword_10019DBC0);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = sub_1000056E4();
    v14 = v5;
    *v4 = 136315138;
    sub_100003D44(0, &qword_10019A728, LNSuggestionsRequest_ptr);
    v6 = Array.description.getter();
    v8 = sub_100004C50(v6, v7, &v14);

    *(v4 + 4) = v8;
    _os_log_impl(&_mh_execute_header, v2, v3, "Fetching suggested actions for requests: %s", v4, 0xCu);
    sub_1000034F8(v5);
    sub_1000036AC(v5);
    sub_1000036AC(v4);
  }

  v9 = sub_10002EB80(&qword_10019A738, &qword_10014F3E8);
  v10 = swift_task_alloc();
  *(v0 + 48) = v10;
  *(v10 + 16) = *(v0 + 24);
  swift_task_alloc();
  sub_1000103E4();
  *(v0 + 56) = v11;
  *v11 = v12;
  v11[1] = sub_1000730B4;
  v17 = v9;

  return withTaskGroup<A, B>(of:returning:isolation:body:)(v0 + 16, v9, v9, 0, 0, &unk_10014F3F8, v10, v9);
}

uint64_t sub_1000730B4()
{
  sub_1000036A0();
  sub_1000036D0();
  v1 = *v0;
  sub_10000298C();
  *v2 = v1;

  sub_100009990();

  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_1000731B8()
{
  sub_100004884();
  v12 = v0;
  v1 = *(v0 + 16);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = sub_1000056E4();
    v11 = v5;
    *v4 = 136315138;
    sub_10002EB80(&qword_10019A730, &qword_10014F3E0);
    v6 = Dictionary.description.getter();
    v8 = sub_100004C50(v6, v7, &v11);

    *(v4 + 4) = v8;
    _os_log_impl(&_mh_execute_header, v2, v3, "Fetching suggested actions succeeded with result: %s", v4, 0xCu);
    sub_1000034F8(v5);
    sub_1000036AC(v5);
    sub_100004D8C();
  }

  sub_1000105C0();

  return v9(v1);
}

uint64_t sub_10007330C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[12] = a3;
  v4[13] = a4;
  v4[10] = a1;
  v4[11] = a2;
  v5 = sub_10002EB80(&unk_10019A740, &unk_10014F400);
  v4[14] = v5;
  v4[15] = *(v5 - 8);
  v4[16] = swift_task_alloc();
  sub_10002EB80(&qword_100198C20, &qword_10014D090);
  v4[17] = swift_task_alloc();
  v4[18] = swift_task_alloc();

  return _swift_task_switch(sub_100073420, 0, 0);
}

uint64_t sub_100073420()
{
  v1 = sub_1000232F4(*(v0 + 96));
  v26 = v1;
  if (v1)
  {
    if (v1 < 1)
    {
      __break(1u);
      return dispatch thunk of AsyncIteratorProtocol.next()(v1);
    }

    v2 = 0;
    v3 = *(v0 + 96);
    v23 = v3 + 32;
    v24 = **(v0 + 88);
    v25 = v3 & 0xC000000000000001;
    do
    {
      if (v25)
      {
        v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v4 = *(v23 + 8 * v2);
      }

      v5 = v4;
      v7 = *(v0 + 136);
      v6 = *(v0 + 144);
      v8 = *(v0 + 104);
      v9 = type metadata accessor for TaskPriority();
      sub_1000075C4(v6, 1, 1, v9);
      v10 = swift_allocObject();
      v10[2] = 0;
      v10[3] = 0;
      v10[4] = v5;
      v10[5] = v8;
      sub_10003CC10(v6, v7);
      LODWORD(v6) = sub_1000032C4(v7, 1, v9);
      v11 = v5;
      v12 = v8;
      v13 = *(v0 + 136);
      if (v6 == 1)
      {
        sub_100003E9C(*(v0 + 136), &qword_100198C20, &qword_10014D090);
      }

      else
      {
        TaskPriority.rawValue.getter();
        (*(*(v9 - 8) + 8))(v13, v9);
      }

      if (v10[2])
      {
        swift_getObjectType();
        swift_unknownObjectRetain();
        v14 = dispatch thunk of Actor.unownedExecutor.getter();
        v16 = v15;
        swift_unknownObjectRelease();
      }

      else
      {
        v14 = 0;
        v16 = 0;
      }

      v17 = swift_allocObject();
      *(v17 + 16) = &unk_10014F420;
      *(v17 + 24) = v10;

      sub_10002EB80(&qword_10019A738, &qword_10014F3E8);
      v18 = v16 | v14;
      if (v16 | v14)
      {
        *(v0 + 16) = 0;
        *(v0 + 24) = 0;
        v18 = v0 + 16;
        *(v0 + 32) = v14;
        *(v0 + 40) = v16;
      }

      ++v2;
      v19 = *(v0 + 144);
      *(v0 + 48) = 1;
      *(v0 + 56) = v18;
      *(v0 + 64) = v24;
      swift_task_create();

      sub_100003E9C(v19, &qword_100198C20, &qword_10014D090);
    }

    while (v26 != v2);
  }

  sub_10002EB80(&qword_10019A738, &qword_10014F3E8);
  TaskGroup.makeAsyncIterator()();
  *(v0 + 152) = _swiftEmptyDictionarySingleton;
  sub_100076BF0();
  swift_task_alloc();
  sub_1000103E4();
  *(v0 + 160) = v20;
  *v20 = v21;
  sub_100003AF8(v20);
  v1 = v0 + 72;

  return dispatch thunk of AsyncIteratorProtocol.next()(v1);
}

uint64_t sub_100073774()
{
  sub_1000036C4();
  sub_1000036D0();
  v3 = v2;
  sub_100007A64();
  *v4 = v3;
  v5 = *v1;
  sub_10000298C();
  *v6 = v5;
  v3[21] = v0;

  if (v0)
  {
    v8 = v3[15];
    v7 = v3[16];
    v9 = v3[14];

    (*(v8 + 8))(v7, v9);
  }

  sub_100009990();

  return _swift_task_switch(v10, v11, v12);
}

uint64_t sub_1000738B4()
{
  sub_100004884();
  v11 = v0;
  v1 = v0[9];
  if (v1)
  {
    v2 = v0[19];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = v2;
    sub_10007612C(v1, sub_100076C54, 0, isUniquelyReferenced_nonNull_native, &v10);
    v0[19] = v10;
    sub_100076BF0();
    swift_task_alloc();
    sub_1000103E4();
    v0[20] = v4;
    *v4 = v5;
    sub_100003AF8(v4);

    return dispatch thunk of AsyncIteratorProtocol.next()(v0 + 9);
  }

  else
  {
    v6 = v0[19];
    v7 = v0[10];
    (*(v0[15] + 8))(v0[16], v0[14]);
    *v7 = v6;

    sub_100003A00();

    return v8();
  }
}

uint64_t sub_100073A0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[14] = a4;
  v5[15] = a5;
  v5[13] = a1;
  return _swift_task_switch(sub_100073A30, 0, 0);
}

uint64_t sub_100073A30()
{
  sub_1000036A0();
  if ([*(v0 + 112) isOnScreen])
  {
    v1 = swift_task_alloc();
    *(v0 + 128) = v1;
    *v1 = v0;
    v2 = sub_1000119EC(v1);

    return sub_100073EF0(v2);
  }

  else
  {
    v4 = swift_task_alloc();
    *(v0 + 136) = v4;
    *v4 = v0;
    v5 = sub_1000119EC(v4);

    return sub_100074380(v5);
  }
}

uint64_t sub_100073B28()
{
  sub_1000036A0();
  sub_1000036D0();
  sub_100007A64();
  *v2 = v1;
  *(v1 + 72) = v0;
  *(v1 + 80) = v3;
  v4 = *v0;
  sub_10000298C();
  *v5 = v4;

  sub_100009990();

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_100073C10()
{
  sub_1000036C4();
  v1 = v0[10];
  v3 = v0[13];
  v2 = v0[14];
  sub_10002EB80(&unk_10019A760, &qword_10014F440);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10014CE90;
  v5 = [v2 bundleIdentifier];
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;

  *(inited + 32) = v6;
  *(inited + 40) = v8;
  *(inited + 48) = v1;
  sub_10002EB80(&qword_10019A730, &qword_10014F3E0);
  *v3 = Dictionary.init(dictionaryLiteral:)();
  sub_100003A00();

  return v9();
}

uint64_t sub_100073D0C()
{
  sub_1000036A0();
  sub_1000036D0();
  sub_100007A64();
  *v2 = v1;
  *(v1 + 88) = v0;
  *(v1 + 96) = v3;
  v4 = *v0;
  sub_10000298C();
  *v5 = v4;

  sub_100009990();

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_100073DF4()
{
  sub_1000036C4();
  v2 = v0[13];
  v1 = v0[14];
  v3 = v0[12];
  sub_10002EB80(&unk_10019A760, &qword_10014F440);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10014CE90;
  v5 = [v1 bundleIdentifier];
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;

  *(inited + 32) = v6;
  *(inited + 40) = v8;
  *(inited + 48) = v3;
  sub_10002EB80(&qword_10019A730, &qword_10014F3E0);
  *v2 = Dictionary.init(dictionaryLiteral:)();
  sub_100003A00();

  return v9();
}

uint64_t sub_100073EF0(uint64_t a1)
{
  *(v2 + 48) = a1;
  *(v2 + 56) = v1;
  return _swift_task_switch(sub_100073F10, 0, 0);
}

uint64_t sub_100073F10()
{
  sub_1000036C4();
  v1 = *(*(v0 + 56) + OBJC_IVAR____TtC10LinkDaemon23SuggestedActionsService_applicationSuggestionsProvider);
  v2 = [*(v0 + 48) bundleIdentifier];
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;

  *(v0 + 64) = v5;
  v8 = (v1 + *v1);
  v6 = swift_task_alloc();
  *(v0 + 72) = v6;
  *v6 = v0;
  v6[1] = sub_100074048;

  return v8(v3, v5);
}

uint64_t sub_100074048()
{
  sub_1000070C8();
  v3 = v2;
  sub_1000036D0();
  v5 = v4;
  sub_100007A64();
  *v6 = v5;
  v7 = *v1;
  sub_10000298C();
  *v8 = v7;
  *(v5 + 80) = v0;

  if (v0)
  {
    sub_100009990();

    return _swift_task_switch(v9, v10, v11);
  }

  else
  {

    v12 = *(v7 + 8);

    return v12(v3);
  }
}

uint64_t sub_100074188()
{
  v17 = v0;

  if (qword_1001981F0 != -1)
  {
    sub_100002B3C(&qword_1001981F0);
  }

  v1 = *(v0 + 48);
  v2 = type metadata accessor for Logger();
  sub_100011AB8(v2, qword_10019DBC0);
  v3 = v1;
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 48);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = sub_1000056E4();
    v16 = v9;
    *v7 = 138412546;
    *(v7 + 4) = v6;
    *v8 = v6;
    *(v7 + 12) = 2080;
    swift_getErrorValue();
    v10 = v6;
    v11 = Error.localizedDescription.getter();
    v13 = sub_100004C50(v11, v12, &v16);

    *(v7 + 14) = v13;
    _os_log_impl(&_mh_execute_header, v4, v5, "Failed fetching suggested actions for: %@, error: %s", v7, 0x16u);
    sub_100003E9C(v8, &unk_10019A260, &unk_10014D030);
    sub_1000036AC(v8);
    sub_1000034F8(v9);
    sub_1000036AC(v9);
    sub_1000036AC(v7);
  }

  sub_1000105C0();

  return v14(_swiftEmptyArrayStorage);
}

uint64_t sub_100074380(uint64_t a1)
{
  *(v2 + 48) = a1;
  *(v2 + 56) = v1;
  return _swift_task_switch(sub_1000743A0, 0, 0);
}

uint64_t sub_1000743A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_100007858();
  sub_100012AA8();
  *(v14 + 64) = sub_100084BE4();
  v15 = swift_task_alloc();
  *(v14 + 72) = v15;
  *v15 = v14;
  v15[1] = sub_100074598;
  sub_10000783C();

  return sub_1000C4814();
}

uint64_t sub_100074598()
{
  sub_1000036A0();
  sub_1000036D0();
  v1 = *v0;
  sub_10000298C();
  *v2 = v1;

  sub_100009990();

  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_100074680()
{
  sub_1000070C8();
  v1 = [*(v0 + 48) bundleIdentifier];
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v3 = v2;

  *(v0 + 80) = v3;
  v4 = swift_task_alloc();
  *(v0 + 88) = v4;
  *v4 = v0;
  v5 = sub_100006788(v4);

  return sub_1000167F4(v5, v6);
}

uint64_t sub_10007473C()
{
  sub_1000036A0();
  sub_1000036D0();
  v3 = v2;
  sub_100007A64();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 96) = v5;
  *(v3 + 104) = v0;

  if (!v0)
  {
  }

  sub_100009990();

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_100074848()
{
  sub_1000070C8();
  v1 = [*(v0 + 48) bundleIdentifier];
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v3 = v2;

  *(v0 + 112) = v3;
  v4 = swift_task_alloc();
  *(v0 + 120) = v4;
  *v4 = v0;
  v5 = sub_100006788(v4);

  return sub_1000C4A08(v5, v6);
}

uint64_t sub_100074904()
{
  sub_1000036A0();
  sub_1000036D0();
  v3 = v2;
  sub_100007A64();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 128) = v5;
  *(v3 + 136) = v0;

  if (!v0)
  {
  }

  sub_100009990();

  return _swift_task_switch(v6, v7, v8);
}

char *sub_100074A10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, id *a10, void *a11)
{
  sub_100007858();
  sub_100012AA8();
  v14 = sub_1000232F4(v12[16]);
  if (v14)
  {
    v15 = v14;
    v16 = sub_10001E0D0();
    result = sub_1000B36E4(v16, v17, v18);
    if (v15 < 0)
    {
      __break(1u);
      return result;
    }

    sub_1000026D0();
    do
    {
      if (v13)
      {
        v20 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v20 = *a10;
      }

      v21 = [v20 identifier];
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      sub_100012614();
      if (v23)
      {
        v25 = sub_100024890(v22);
        sub_1000B36E4(v25, v26, v27);
        v11 = a11;
      }

      sub_100013CB4();
    }

    while (!v24);
  }

  else
  {

    v11 = _swiftEmptyArrayStorage;
  }

  v28 = v12[6];
  v12[18] = sub_100075994(v11);
  v29 = [v28 bundleIdentifier];
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v31 = v30;

  v12[19] = v31;
  v32 = swift_task_alloc();
  v12[20] = v32;
  *v32 = v12;
  sub_100006788(v32);
  sub_10000783C();

  return sub_10001F900(v33, v34);
}

uint64_t sub_100074B9C()
{
  sub_1000036A0();
  sub_1000036D0();
  v3 = v2;
  sub_100007A64();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 168) = v5;
  *(v3 + 176) = v0;

  if (!v0)
  {
  }

  sub_100009990();

  return _swift_task_switch(v6, v7, v8);
}

char *sub_100074CA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, id *a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_100007858();
  sub_100012AA8();
  v17 = sub_1000232F4(v15[21]);
  if (v17)
  {
    v18 = v17;
    v19 = sub_10001E0D0();
    result = sub_10002357C(v19, v20, v21);
    if (v18 < 0)
    {
      __break(1u);
      return result;
    }

    sub_1000026D0();
    do
    {
      if (v16)
      {
        v23 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v23 = *a10;
      }

      v24 = [v23 identifier];
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      sub_100012614();
      if (v26)
      {
        v28 = sub_100024890(v25);
        sub_10002357C(v28, v29, v30);
        v14 = a11;
      }

      sub_100013CB4();
    }

    while (!v27);
  }

  else
  {

    v14 = _swiftEmptyArrayStorage;
  }

  v31 = v15[18];
  v32 = v15[6];
  v33 = sub_100075A6C(v14);
  sub_100003D44(0, &qword_10019A770, AFPreferences_ptr);
  v34 = sub_100027D40();
  v15[23] = sub_100076D80(v34, v35, v33, v31);
  v36 = [v32 bundleIdentifier];
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v38 = v37;

  v15[24] = v38;
  v39 = swift_task_alloc();
  v15[25] = v39;
  *v39 = v15;
  v39[1] = sub_100074E80;
  sub_10000783C();

  return sub_100093040(v40, v41, v42);
}

uint64_t sub_100074E80()
{
  sub_1000036C4();
  v3 = v2;
  v4 = *v1;
  sub_10000298C();
  *v5 = v4;
  *v5 = *v1;
  *(v4 + 208) = v0;

  if (!v0)
  {
    *(v4 + 216) = v3;
  }

  sub_100009990();

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_100074FE4()
{
  sub_1000036A0();
  v1 = *(v0 + 64);

  sub_1000105C0();

  return v2();
}

uint64_t sub_100075048(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_100007858();
  sub_100012AA8();
  v19 = *(v15 + 64);

  if (qword_1001981F0 != -1)
  {
    sub_100002B3C(&qword_1001981F0);
  }

  v20 = sub_10000C8E8();
  sub_100011AB8(v20, qword_10019DBC0);
  v21 = v14;
  sub_10000645C();
  v22 = Logger.logObject.getter();
  static os_log_type_t.error.getter();

  if (sub_10001D5C8())
  {
    sub_10001161C();
    sub_100005D18();
    a10 = sub_100076EDC();
    a11 = a10;
    sub_100007F38(5.778e-34);
    swift_getErrorValue();
    sub_100012738();
    v23 = sub_10000EE80();
    sub_1000079B4(v23, v24, v25, v26, v27, v28);
    sub_10001A874();
    *(v16 + 14) = v18;
    sub_1000134D8(&_mh_execute_header, v29, v30, "Failed fetching suggested actions for: %@, error: %s");
    sub_100003E9C(v17, &unk_10019A260, &unk_10014D030);
    sub_1000067A0();
    sub_100005200();
    sub_100004D8C();
  }

  sub_1000105C0();
  sub_10000783C();

  return v33(v31, v32, v33, v34, v35, v36, v37, v38, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_100075198(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_100007858();
  sub_100012AA8();
  v19 = *(v15 + 64);

  if (qword_1001981F0 != -1)
  {
    sub_100002B3C(&qword_1001981F0);
  }

  v20 = sub_10000C8E8();
  sub_100011AB8(v20, qword_10019DBC0);
  v21 = v14;
  sub_10000645C();
  v22 = Logger.logObject.getter();
  static os_log_type_t.error.getter();

  if (sub_10001D5C8())
  {
    sub_10001161C();
    sub_100005D18();
    a10 = sub_100076EDC();
    a11 = a10;
    sub_100007F38(5.778e-34);
    swift_getErrorValue();
    sub_100012738();
    v23 = sub_10000EE80();
    sub_1000079B4(v23, v24, v25, v26, v27, v28);
    sub_10001A874();
    *(v16 + 14) = v18;
    sub_1000134D8(&_mh_execute_header, v29, v30, "Failed fetching suggested actions for: %@, error: %s");
    sub_100003E9C(v17, &unk_10019A260, &unk_10014D030);
    sub_1000067A0();
    sub_100005200();
    sub_100004D8C();
  }

  sub_1000105C0();
  sub_10000783C();

  return v33(v31, v32, v33, v34, v35, v36, v37, v38, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_1000752F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_100007858();
  sub_100012AA8();
  v18 = *(v14 + 64);

  if (qword_1001981F0 != -1)
  {
    sub_100002B3C(&qword_1001981F0);
  }

  v19 = sub_10000C8E8();
  sub_100011AB8(v19, qword_10019DBC0);
  v20 = v18;
  sub_10000645C();
  v21 = Logger.logObject.getter();
  static os_log_type_t.error.getter();

  if (sub_10001D5C8())
  {
    sub_10001161C();
    sub_100005D18();
    a10 = sub_100076EDC();
    a11 = a10;
    sub_100007F38(5.778e-34);
    swift_getErrorValue();
    sub_100012738();
    v22 = sub_10000EE80();
    sub_1000079B4(v22, v23, v24, v25, v26, v27);
    sub_10001A874();
    *(v15 + 14) = v17;
    sub_1000134D8(&_mh_execute_header, v28, v29, "Failed fetching suggested actions for: %@, error: %s");
    sub_100003E9C(v16, &unk_10019A260, &unk_10014D030);
    sub_1000067A0();
    sub_100005200();
    sub_100004D8C();
  }

  sub_1000105C0();
  sub_10000783C();

  return v32(v30, v31, v32, v33, v34, v35, v36, v37, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_100075458(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_100007858();
  sub_100012AA8();
  v19 = *(v15 + 64);

  if (qword_1001981F0 != -1)
  {
    sub_100002B3C(&qword_1001981F0);
  }

  v20 = sub_10000C8E8();
  sub_100011AB8(v20, qword_10019DBC0);
  v21 = v14;
  sub_10000645C();
  v22 = Logger.logObject.getter();
  static os_log_type_t.error.getter();

  if (sub_10001D5C8())
  {
    sub_10001161C();
    sub_100005D18();
    a10 = sub_100076EDC();
    a11 = a10;
    sub_100007F38(5.778e-34);
    swift_getErrorValue();
    sub_100012738();
    v23 = sub_10000EE80();
    sub_1000079B4(v23, v24, v25, v26, v27, v28);
    sub_10001A874();
    *(v16 + 14) = v18;
    sub_1000134D8(&_mh_execute_header, v29, v30, "Failed fetching suggested actions for: %@, error: %s");
    sub_100003E9C(v17, &unk_10019A260, &unk_10014D030);
    sub_1000067A0();
    sub_100005200();
    sub_100004D8C();
  }

  sub_1000105C0();
  sub_10000783C();

  return v33(v31, v32, v33, v34, v35, v36, v37, v38, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_100075630(uint64_t a1, void *aBlock, void *a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  sub_100003D44(0, &qword_10019A728, LNSuggestionsRequest_ptr);
  v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v3[4] = v5;
  a3;
  v6 = swift_task_alloc();
  v3[5] = v6;
  *v6 = v3;
  v6[1] = sub_100075718;

  return sub_100072E64(v5);
}

uint64_t sub_100075718()
{
  sub_1000036C4();
  sub_1000036D0();
  v2 = *(v1 + 24);
  v3 = *(v1 + 16);
  v4 = *v0;
  sub_10000298C();
  *v5 = v4;

  sub_10002EB80(&qword_10019A730, &qword_10014F3E0);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  (v2)[2](v2, isa, 0);

  _Block_release(v2);
  v7 = *(v4 + 8);

  return v7();
}

void *sub_1000758BC(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_10002EB80(&qword_100199320, &qword_10014F3B0);
    v1 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v1 = _swiftEmptyDictionarySingleton;
  }

  v4 = v1;

  sub_1000763D8(v2, 1, &v4, sub_100046E34, &unk_10019A708, &qword_10014F3B8);

  return v4;
}

void *sub_100075994(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_10002EB80(&unk_10019A780, &unk_10014F070);
    v1 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v1 = _swiftEmptyDictionarySingleton;
  }

  v4 = v1;

  sub_1000763D8(v2, 1, &v4, sub_100046E0C, &qword_10019B480, &qword_1001506A0);

  return v4;
}

void *sub_100075A6C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_10002EB80(&qword_100199310, &qword_10014EE40);
    v1 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v1 = _swiftEmptyDictionarySingleton;
  }

  v4 = v1;

  sub_1000763D8(v2, 1, &v4, sub_100046DE4, &qword_10019B490, &qword_10014EE48);

  return v4;
}

uint64_t sub_100075B5C(void *a1, id a2)
{
  v3 = [a2 identifier];
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;
  if (v4 != static String._unconditionallyBridgeFromObjectiveC(_:)() || v6 != v7)
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v9)
    {

      goto LABEL_8;
    }

    v40 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v42 = v41;
    if (v40 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v42 == v43)
    {
    }

    else
    {
      v45 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v45)
      {

        return 1;
      }

      v47 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v49 = v48;
      v50 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v52 = v51;

      if (v47 != v50 || v49 != v52)
      {
        v54 = _stringCompareWithSmolCheck(_:_:expecting:)();

        return v54 & 1;
      }
    }

    return 1;
  }

LABEL_8:
  sub_10002EB80(&unk_100198B60, &qword_10014E3C0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10014F0D0;
  sub_100003720();
  *(v11 + 32) = 0xD000000000000015;
  *(v11 + 40) = v12;
  sub_100003720();
  *(v13 + 48) = v15;
  *(v13 + 56) = v14;
  sub_100003720();
  *(v17 + 64) = v16 + 5;
  *(v17 + 72) = v18;
  sub_100003720();
  *(v19 + 80) = v21;
  *(v19 + 88) = v20;
  sub_100003720();
  *(v23 + 96) = v22 | 2;
  *(v23 + 104) = v24;
  v25 = [a1 effectiveBundleIdentifiers];
  sub_10007238C();

  v27 = 0;
  while (1)
  {
    v28 = v27 + 16;
    if (v27 == 80)
    {
      break;
    }

    v29 = *(inited + v27 + 40);
    v55[0] = *(inited + v27 + 32);
    v55[1] = v29;
    __chkstk_darwin(v26);

    v30 = sub_1000574AC();

    v27 = v28;
    if (v30)
    {

      swift_setDeallocating();
      sub_1000B30FC();
      return 1;
    }
  }

  swift_setDeallocating();
  sub_1000B30FC();
  if (qword_1001981F0 != -1)
  {
    sub_100002B3C(&qword_1001981F0);
  }

  v31 = type metadata accessor for Logger();
  sub_100011AB8(v31, qword_10019DBC0);

  v32 = Logger.logObject.getter();
  v33 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v35 = sub_1000056E4();
    v55[0] = v35;
    *v34 = 136315138;
    v36 = Array.description.getter();
    v38 = v37;

    v39 = sub_100004C50(v36, v38, v55);

    *(v34 + 4) = v39;
    _os_log_impl(&_mh_execute_header, v32, v33, "Skipping 'open' suggestions for app: %s (not yet supported)", v34, 0xCu);
    sub_1000034F8(v35);
    sub_100004D8C();
    sub_1000036AC(v34);
  }

  else
  {
  }

  return 0;
}

void sub_100075FA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = 0;
  v7 = *(a1 + 16);
  v8 = a1 + 40;
  v9 = _swiftEmptyArrayStorage;
LABEL_2:
  v10 = (v8 + 16 * v6);
  while (v7 != v6)
  {
    if (v6 >= v7)
    {
      __break(1u);
LABEL_19:
      __break(1u);
      return;
    }

    v11 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      goto LABEL_19;
    }

    if (*(a5 + 16))
    {
      v13 = *(v10 - 1);
      v12 = *v10;

      v14 = sub_10000C2A0(v13, v12);
      if (v15)
      {
        v16 = *(*(a5 + 56) + 8 * v14);
        v17 = [v16 displayRepresentation];
        v18 = [v17 name];

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_100070628();
          v9 = v21;
        }

        v19 = v9[2];
        if (v19 >= v9[3] >> 1)
        {
          sub_100070628();
          v9 = v22;
        }

        v9[2] = v19 + 1;
        v20 = &v9[3 * v19];
        v20[4] = v13;
        v20[5] = v12;
        v20[6] = v18;
        v6 = v11;
        goto LABEL_2;
      }
    }

    ++v6;
    v10 += 2;
  }

  sub_1000758BC(v9);
}

uint64_t sub_10007612C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v43 = a5;
  sub_10004AAE4(v42);
  v6 = v42[1];
  v7 = v42[3];
  v8 = v42[4];
  v35 = v42[5];
  v36 = v42[0];
  v9 = (v42[2] + 64) >> 6;

  v34 = v6;
  if (v8)
  {
    while (1)
    {
      v37 = a4;
      v10 = v7;
LABEL_8:
      v12 = __clz(__rbit64(v8)) | (v10 << 6);
      v13 = (*(v36 + 48) + 16 * v12);
      v14 = v13[1];
      v15 = *(*(v36 + 56) + 8 * v12);
      v41[0] = *v13;
      v41[1] = v14;
      v41[2] = v15;

      v35(&v38, v41);

      v16 = v38;
      v17 = v39;
      v18 = v40;
      v19 = *v43;
      v21 = sub_10000C2A0(v38, v39);
      v22 = v19[2];
      v23 = (v20 & 1) == 0;
      v24 = v22 + v23;
      if (__OFADD__(v22, v23))
      {
        break;
      }

      v25 = v20;
      if (v19[3] >= v24)
      {
        if ((v37 & 1) == 0)
        {
          sub_10002EB80(&qword_10019A758, &qword_10014F430);
          _NativeDictionary.copy()();
        }
      }

      else
      {
        sub_100046E20(v24, v37 & 1);
        v26 = sub_10000C2A0(v16, v17);
        if ((v25 & 1) != (v27 & 1))
        {
          goto LABEL_24;
        }

        v21 = v26;
      }

      v8 &= v8 - 1;
      v28 = *v43;
      if (v25)
      {

        *(v28[7] + 8 * v21) = v18;
      }

      else
      {
        v28[(v21 >> 6) + 8] |= 1 << v21;
        v29 = (v28[6] + 16 * v21);
        *v29 = v16;
        v29[1] = v17;
        *(v28[7] + 8 * v21) = v18;
        v30 = v28[2];
        v31 = __OFADD__(v30, 1);
        v32 = v30 + 1;
        if (v31)
        {
          goto LABEL_23;
        }

        v28[2] = v32;
      }

      a4 = 1;
      v7 = v10;
      v6 = v34;
      if (!v8)
      {
        goto LABEL_3;
      }
    }
  }

  else
  {
LABEL_3:
    v11 = v7;
    while (1)
    {
      v10 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v10 >= v9)
      {
        sub_100014464(v36);
      }

      v8 = *(v6 + 8 * v10);
      ++v11;
      if (v8)
      {
        v37 = a4;
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_1000763D8(uint64_t a1, char a2, void *a3, void (*a4)(void), uint64_t *a5, uint64_t *a6)
{
  v7 = 0;
  v32 = *(a1 + 16);
  for (i = (a1 + 48); ; i += 3)
  {
    if (v32 == v7)
    {
    }

    if (v7 >= *(a1 + 16))
    {
      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      goto LABEL_22;
    }

    v9 = *(i - 2);
    v10 = *(i - 1);
    v11 = *i;
    v12 = *a3;

    v13 = v11;
    v15 = sub_10000C2A0(v9, v10);
    v16 = v12[2];
    v17 = (v14 & 1) == 0;
    if (__OFADD__(v16, v17))
    {
      goto LABEL_19;
    }

    v18 = v14;
    if (v12[3] < v16 + v17)
    {
      break;
    }

    if (a2)
    {
      if (v14)
      {
        goto LABEL_14;
      }
    }

    else
    {
      sub_10002EB80(a5, a6);
      _NativeDictionary.copy()();
      if (v18)
      {
        goto LABEL_14;
      }
    }

LABEL_11:
    v21 = *a3;
    *(*a3 + 8 * (v15 >> 6) + 64) |= 1 << v15;
    v22 = (v21[6] + 16 * v15);
    *v22 = v9;
    v22[1] = v10;
    *(v21[7] + 8 * v15) = v13;
    v23 = v21[2];
    v24 = __OFADD__(v23, 1);
    v25 = v23 + 1;
    if (v24)
    {
      goto LABEL_20;
    }

    v21[2] = v25;
    ++v7;
    a2 = 1;
  }

  a4();
  v19 = sub_10000C2A0(v9, v10);
  if ((v18 & 1) != (v20 & 1))
  {
    goto LABEL_21;
  }

  v15 = v19;
  if ((v18 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_14:
  swift_allocError();
  swift_willThrow();
  swift_errorRetain();
  sub_10002EB80(&unk_100198760, &qword_10014F3C0);
  if ((swift_dynamicCast() & 1) == 0)
  {
  }

LABEL_22:
  _StringGuts.grow(_:)(30);
  v27._object = 0x8000000100155680;
  v27._countAndFlagsBits = 0xD00000000000001BLL;
  String.append(_:)(v27);
  _print_unlocked<A, B>(_:_:)();
  v28._countAndFlagsBits = 39;
  v28._object = 0xE100000000000000;
  String.append(_:)(v28);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

unint64_t sub_1000766BC()
{
  result = qword_10019A718;
  if (!qword_10019A718)
  {
    type metadata accessor for NSFastEnumerationIterator();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10019A718);
  }

  return result;
}

uint64_t sub_100076714()
{
  sub_1000070C8();
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_10000BEC4;

  return sub_100075630(v2, v3, v4);
}

uint64_t sub_1000767C4()
{
  sub_1000070C8();
  v3 = v2;
  v5 = v4;
  v7 = *(v0 + 16);
  v6 = *(v0 + 24);
  swift_task_alloc();
  sub_1000103E4();
  *(v1 + 16) = v8;
  *v8 = v9;
  v8[1] = sub_10000BEC4;

  return sub_10007330C(v5, v3, v7, v6);
}

uint64_t sub_100076870(uint64_t a1, int *a2)
{
  *(v2 + 24) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 32) = v3;
  *v3 = v2;
  v3[1] = sub_100076964;

  return v5(v2 + 16);
}

uint64_t sub_100076964()
{
  sub_1000070C8();
  v1 = *v0;
  v2 = *(*v0 + 24);
  v3 = *v0;
  sub_10000298C();
  *v4 = v3;

  *v2 = *(v1 + 16);
  v5 = *(v3 + 8);

  return v5();
}

uint64_t sub_100076A88()
{
  sub_1000036C4();
  v3 = v2;
  v4 = v0[2];
  v5 = v0[3];
  v7 = v0[4];
  v6 = v0[5];
  swift_task_alloc();
  sub_1000103E4();
  *(v1 + 16) = v8;
  *v8 = v9;
  v8[1] = sub_10000BFAC;

  return sub_100073A0C(v3, v4, v5, v7, v6);
}

uint64_t sub_100076B40()
{
  sub_1000070C8();
  v3 = v2;
  v4 = *(v0 + 16);
  swift_task_alloc();
  sub_1000103E4();
  *(v1 + 16) = v5;
  *v5 = v6;
  v5[1] = sub_10000BFAC;

  return sub_100076870(v3, v4);
}

unint64_t sub_100076BF0()
{
  result = qword_10019A750;
  if (!qword_10019A750)
  {
    sub_10002EC70(&unk_10019A740, &unk_10014F400);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10019A750);
  }

  return result;
}

uint64_t sub_100076C54@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_10004B2B0(&v6, *a1, a1[1], a1[2]);
  v4 = v6;
  *a2 = result;
  a2[1] = v5;
  a2[2] = v4;
  return result;
}

uint64_t sub_100076C98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = &type metadata for SiriDiscoverabilityClosedAppSuggestionStrategy;
  v14 = &off_10018DB18;
  v10 = swift_allocObject();
  *&v12 = v10;
  v10[2] = a1;
  v10[3] = a2;
  v10[4] = a3;
  v10[5] = a4;
  sub_10002EB80(&qword_10019A778, &qword_10014F458);
  *(a5 + 56) = Dictionary.init(dictionaryLiteral:)();
  *(a5 + 64) = Dictionary.init(dictionaryLiteral:)();
  sub_10001A798(&v12, a5 + 16);
  return a5;
}

uint64_t sub_100076D80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = &type metadata for SiriDiscoverabilityClosedAppSuggestionStrategy;
  v14[4] = &off_10018DB18;
  v8 = swift_allocObject();
  v14[0] = v8;
  v8[2] = a1;
  v8[3] = a2;
  v8[4] = a3;
  v8[5] = a4;
  type metadata accessor for SuggestedActionsGenerator();
  v9 = swift_allocObject();
  v10 = sub_10001C5D0(v14, &type metadata for SiriDiscoverabilityClosedAppSuggestionStrategy);
  swift_cvw_initWithCopy(v13, v10);
  v11 = sub_100076C98(v13[0], v13[1], v13[2], v13[3], v9);
  sub_1000034F8(v14);
  return v11;
}

uint64_t sub_100076E4C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 32))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 16);
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

uint64_t sub_100076E8C(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

uint64_t sub_100076EDC()
{

  return swift_slowAlloc();
}

void sub_100076EF8(uint64_t a1)
{
  sub_100078690(319);
  if (v1 <= 0x3F)
  {
    swift_initClassMetadata2();
  }
}

uint64_t sub_100076FCC()
{
  v1 = *(v0 + 16);
  os_unfair_lock_lock((v1 + 112));
  sub_100077064((v1 + 120), v1);
  os_unfair_lock_unlock((v1 + 112));
  sub_100003A00();

  return v2();
}

void sub_100077064(void **a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = *a1;
  v4 = swift_allocObject();
  swift_weakInit();
  v5 = swift_allocObject();
  v5[2] = *(v2 + 80);
  v5[3] = *(v2 + 88);
  v5[4] = v4;
  v7[4] = sub_100078948;
  v7[5] = v5;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 1107296256;
  v7[2] = sub_100078320;
  v7[3] = &unk_10018DD00;
  v6 = _Block_copy(v7);

  [v3 scheduleWithBlock:v6];
  _Block_release(v6);
}

uint64_t sub_10007719C(uint64_t (*a1)(uint64_t), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_10002EB80(&qword_100198C20, &qword_10014D090);
  __chkstk_darwin(v9 - 8);
  v11 = &v34 - v10;
  v12 = type metadata accessor for Logger();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return a1(1);
  }

  v17 = Strong;
  v35 = a5;
  v36 = v11;
  v37 = v12;
  v39 = a1;
  v40 = a4;
  swift_getMetatypeMetadata();
  v38 = String.init<A>(describing:)();
  v19 = v18;
  v40 = a4;
  sub_10002EB80(&qword_10019A250, &qword_10014DF40);
  String.init<A>(describing:)();
  result = LNLogSubsystem;
  if (LNLogSubsystem)
  {
    String.init(cString:)();
    Logger.init(subsystem:category:)();

    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v34 = a2;
      v40 = v24;
      *v23 = 136315394;
      *(v23 + 4) = sub_100004C50(v38, v19, &v40);
      *(v23 + 12) = 2080;
      v25 = (*(v35 + 8))(a4);
      v27 = sub_100004C50(v25, v26, &v40);

      *(v23 + 14) = v27;
      _os_log_impl(&_mh_execute_header, v21, v22, "%s started XPC activity %s", v23, 0x16u);
      swift_arrayDestroy();
      a2 = v34;
    }

    (*(v13 + 8))(v15, v37);
    os_unfair_lock_lock((v17 + 112));
    v28 = [*(v17 + 120) shouldDefer];
    os_unfair_lock_unlock((v17 + 112));
    v29 = v39;
    if (v28)
    {

      v29(2);
    }

    else
    {
      v30 = type metadata accessor for TaskPriority();
      v31 = v36;
      sub_1000075C4(v36, 1, 1, v30);
      v32 = swift_allocObject();
      v32[2] = 0;
      v32[3] = 0;
      v33 = v38;
      v32[4] = v17;
      v32[5] = v33;
      v32[6] = v19;
      v32[7] = v29;
      v32[8] = a2;

      sub_10003A6C0(0, 0, v31, &unk_10014F6A0, v32);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10007758C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[17] = a7;
  v8[18] = a8;
  v8[15] = a5;
  v8[16] = a6;
  v8[14] = a4;
  v9 = *a4;
  v8[19] = *a4;
  v10 = type metadata accessor for Logger();
  v8[20] = v10;
  v8[21] = *(v10 - 8);
  v8[22] = swift_task_alloc();
  v8[23] = swift_task_alloc();
  v8[24] = swift_task_alloc();
  v8[25] = swift_task_alloc();
  v11 = *(v9 + 80);
  v8[26] = v11;
  v8[27] = *(v11 - 8);
  v8[28] = swift_task_alloc();

  return _swift_task_switch(sub_100077718, 0, 0);
}

void sub_100077718()
{
  sub_100002794(v0[28]);
  v0[29] = *(v0[19] + 88);
  v1 = swift_task_alloc();
  v0[30] = v1;
  *v1 = v0;
  v1[1] = sub_100077ADC;
  sub_1000134F8();

  __asm { BRAA            X2, X16 }
}

uint64_t sub_100077ADC(char a1)
{
  sub_1000036D0();
  v5 = v4;
  v6 = *v2;
  sub_10000298C();
  *v7 = v6;
  *(v5 + 248) = v1;

  if (v1)
  {
    v8 = sub_100078008;
  }

  else
  {
    *(v5 + 256) = a1;
    v8 = sub_100077BF8;
  }

  return _swift_task_switch(v8, 0, 0);
}

uint64_t sub_100077BF8()
{
  v72 = v0;
  v2 = *(v0 + 208);
  if (*(v0 + 256))
  {
    *(v0 + 96) = v2;
    sub_10002EB80(&qword_10019A250, &qword_10014DF40);
    String.init<A>(describing:)();
    result = LNLogSubsystem;
    if (LNLogSubsystem)
    {
      v4 = String.init(cString:)();
      sub_100007874(v4);

      v5 = Logger.logObject.getter();
      v6 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v5, v6))
      {
        v7 = *(v0 + 208);
        v67 = *(v0 + 216);
        v69 = *(v0 + 224);
        v8 = sub_10001840C();
        v9 = swift_slowAlloc();
        v71 = v9;
        v17 = sub_100011118(4.8151e-34, v9, v10, v11, v12, v13, v14, v15, v16);
        v18 = sub_100007194(v17);
        v20 = v19(v18);
        v22 = sub_100004C50(v20, v21, &v71);

        *(v8 + 14) = v22;
        sub_100005234();
        _os_log_impl(v23, v24, v25, v26, v27, 0x16u);
        v28 = 2;
        swift_arrayDestroy();
        sub_1000036AC(v9);
        sub_1000067A0();

        (*(v1 + 8))();
        (*(v67 + 8))(v69, v7);
      }

      else
      {
        v54 = *(v0 + 216);
        v53 = *(v0 + 224);
        v55 = *(v0 + 208);
        v56 = *(v0 + 192);
        v57 = *(v0 + 160);
        v58 = *(v0 + 168);

        (*(v58 + 8))(v56, v57);
        (*(v54 + 8))(v53, v55);
        v28 = 2;
      }

      goto LABEL_11;
    }

    __break(1u);
  }

  else
  {
    *(v0 + 104) = v2;
    sub_10002EB80(&qword_10019A250, &qword_10014DF40);
    String.init<A>(describing:)();
    result = LNLogSubsystem;
    if (LNLogSubsystem)
    {
      v29 = String.init(cString:)();
      sub_100007874(v29);

      v30 = Logger.logObject.getter();
      v31 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v30, v31))
      {
        v32 = *(v0 + 208);
        v68 = *(v0 + 216);
        v70 = *(v0 + 224);
        v33 = sub_10001840C();
        v34 = swift_slowAlloc();
        v71 = v34;
        v42 = sub_100011118(4.8151e-34, v34, v35, v36, v37, v38, v39, v40, v41);
        v43 = sub_100007194(v42);
        v45 = v44(v43);
        v47 = sub_100004C50(v45, v46, &v71);

        *(v33 + 14) = v47;
        sub_100005234();
        _os_log_impl(v48, v49, v50, v51, v52, 0x16u);
        swift_arrayDestroy();
        sub_1000036AC(v34);
        sub_1000067A0();

        (*(v1 + 8))();
        (*(v68 + 8))(v70, v32);
      }

      else
      {
        v60 = *(v0 + 216);
        v59 = *(v0 + 224);
        v62 = *(v0 + 200);
        v61 = *(v0 + 208);
        v63 = *(v0 + 160);
        v64 = *(v0 + 168);

        (*(v64 + 8))(v62, v63);
        (*(v60 + 8))(v59, v61);
      }

      v28 = 1;
LABEL_11:
      (*(v0 + 136))(v28);

      sub_100003A00();
      sub_1000134F8();

      __asm { BRAA            X1, X16 }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100078008()
{
  v31 = v0;
  v0[10] = v0[26];
  sub_10002EB80(&qword_10019A250, &qword_10014DF40);
  String.init<A>(describing:)();
  result = LNLogSubsystem;
  if (LNLogSubsystem)
  {
    v2 = String.init(cString:)();
    sub_100007874(v2);

    swift_errorRetain();
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v3, v4))
    {
      v5 = v0[29];
      v6 = v0[26];
      v28 = v0[27];
      v29 = v0[28];
      v25 = v0[21];
      v26 = v0[20];
      v27 = v0[22];
      v8 = v0[15];
      v7 = v0[16];
      v9 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      *v9 = 136315650;
      *(v9 + 4) = sub_100004C50(v8, v7, &v30);
      *(v9 + 12) = 2080;
      v10 = (*(v5 + 8))(v6, v5);
      v12 = sub_100004C50(v10, v11, &v30);

      *(v9 + 14) = v12;
      *(v9 + 22) = 2080;
      swift_getErrorValue();
      v13 = Error.localizedDescription.getter();
      v15 = sub_100004C50(v13, v14, &v30);

      *(v9 + 24) = v15;
      _os_log_impl(&_mh_execute_header, v3, v4, "%s failed to handle XPC activity %s: %s", v9, 0x20u);
      swift_arrayDestroy();
      sub_1000067A0();
      sub_1000036AC(v9);

      (*(v25 + 8))(v27, v26);
      (*(v28 + 8))(v29, v6);
    }

    else
    {
      v17 = v0[27];
      v16 = v0[28];
      v18 = v0[26];
      v20 = v0[21];
      v19 = v0[22];
      v21 = v0[20];

      (*(v20 + 8))(v19, v21);
      (*(v17 + 8))(v16, v18);
    }

    v22 = sub_100004EB8();
    v23(v22);

    sub_100003A00();

    return v24();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100078320(uint64_t a1, void *aBlock)
{
  v2 = *(a1 + 32);
  v3 = _Block_copy(aBlock);
  v4 = swift_allocObject();
  *(v4 + 16) = v3;

  v2(sub_100078954, v4);
}

uint64_t sub_1000783CC()
{
  sub_1000036A0();
  v1 = v0[2];
  os_unfair_lock_lock((v1 + 112));
  [*(v1 + 120) invalidate];
  os_unfair_lock_unlock((v1 + 112));
  v2 = *(v1 + qword_10019A7A8);
  v0[3] = v2;
  if (v2)
  {

    v3 = swift_task_alloc();
    v0[4] = v3;
    *v3 = v0;
    v3[1] = sub_1000784D8;

    return Task<>.value.getter(v3);
  }

  else
  {
    sub_100003A00();

    return v4();
  }
}

uint64_t sub_1000784D8()
{
  sub_1000036A0();
  sub_1000036D0();
  v2 = *(v1 + 16);
  v3 = *v0;
  sub_10000298C();
  *v4 = v3;

  return _swift_task_switch(sub_100043C80, v2, 0);
}

uint64_t sub_1000785F4()
{
  sub_100078A44(v0 + qword_10019A7A0);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_10007864C()
{
  sub_1000785F4();

  return _swift_defaultActor_deallocate(v0);
}

void sub_100078690(uint64_t a1)
{
  if (!qword_10019A830)
  {
    sub_10002EC70(&qword_10019A550, &qword_10014F288);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_10019A830);
    }
  }
}

_BYTE *storeEnumTagSinglePayload for XPCActivityResult(_BYTE *result, unsigned int a2, unsigned int a3)
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
        break;
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

unint64_t sub_1000787D4()
{
  result = qword_10019A840;
  if (!qword_10019A840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10019A840);
  }

  return result;
}

uint64_t sub_100078828()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10000BFAC;

  return sub_100076FB4(v1);
}

uint64_t sub_1000788B8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10000BFAC;

  return sub_1000783B4(v1);
}

uint64_t sub_100078968(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_10000BFAC;

  return sub_10007758C(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_100078A44(uint64_t a1)
{
  v2 = sub_10002EB80(&qword_10019A868, &qword_10014F6A8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_100078AAC(uint64_t a1)
{
  if ((a1 & 0x100000000) != 0)
  {
    return 0xD000000000000019;
  }

  _StringGuts.grow(_:)(16);

  strcpy(v3, "Unknown errno ");
  HIBYTE(v3[1]) = -18;
  v1._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v1);

  return v3[0];
}

unint64_t sub_100078B8C()
{
  result = qword_10019A870;
  if (!qword_10019A870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10019A870);
  }

  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for IssueSandboxExceptionError(uint64_t result, int *a2)
{
  v2 = *a2;
  *(result + 4) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for IssueSandboxExceptionError(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 5))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for IssueSandboxExceptionError(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 4) = 0;
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

  *(result + 5) = v3;
  return result;
}

uint64_t sub_100078C40(uint64_t a1)
{
  if (*(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100078C5C(uint64_t result, int a2)
{
  if (a2)
  {
    *result = a2 - 1;
    v2 = 1;
  }

  else
  {
    v2 = 0;
  }

  *(result + 4) = v2;
  return result;
}

void sub_100078CE4(void (*a1)(id *), uint64_t a2, uint64_t a3)
{
  v6 = sub_1000232F4(a3);
  for (i = 0; v6 != i; ++i)
  {
    if ((a3 & 0xC000000000000001) != 0)
    {
      v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (i >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_12;
      }

      v8 = *(a3 + 8 * i + 32);
    }

    v9 = v8;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_12:
      __break(1u);
      return;
    }

    v10 = v8;
    a1(&v10);

    if (v3)
    {
      return;
    }
  }
}

uint64_t sub_100078DBC(uint64_t result, void *a2)
{
  v2 = a2;
  v3 = *(result + 16);
  v4 = result + 32;
  if (v3)
  {
    while (1)
    {
      v29 = v3;
      v5 = *(v4 + 16);
      v27[0] = *v4;
      v27[1] = v5;
      v27[2] = *(v4 + 32);
      v28 = *(v4 + 48);
      v6 = v5;
      sub_100083FD4(v27, &v26);
      v7 = sub_10006D994();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v26 = *v2;
      v9 = v26;
      v10 = sub_10000C2A0(v6, *(&v6 + 1));
      v12 = v9[2];
      v13 = (v11 & 1) == 0;
      v14 = v12 + v13;
      if (__OFADD__(v12, v13))
      {
        break;
      }

      v15 = v10;
      v16 = v11;
      sub_10002EB80(&unk_10019AAF8, &unk_10014F860);
      if (_NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v14))
      {
        v17 = sub_10000C2A0(v6, *(&v6 + 1));
        if ((v16 & 1) != (v18 & 1))
        {
          goto LABEL_14;
        }

        v15 = v17;
      }

      v19 = v26;
      if (v16)
      {
        v20 = v26[7];
        v21 = *(v20 + 8 * v15);
        *(v20 + 8 * v15) = v7;
      }

      else
      {
        v26[(v15 >> 6) + 8] |= 1 << v15;
        *(v19[6] + 16 * v15) = v6;
        *(v19[7] + 8 * v15) = v7;
        v22 = v19[2];
        v23 = __OFADD__(v22, 1);
        v24 = v22 + 1;
        if (v23)
        {
          goto LABEL_13;
        }

        v19[2] = v24;
      }

      v2 = a2;
      *a2 = v19;
      result = sub_100083F80(v27);
      v4 += 56;
      v3 = v29 - 1;
      if (v29 == 1)
      {
        return result;
      }
    }

    __break(1u);
LABEL_13:
    __break(1u);
LABEL_14:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  return result;
}

uint64_t sub_100078FFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1000FDCB8(a1, a2, a3, a4, *(v4 + OBJC_IVAR____TtC10LinkDaemon13MetadataStore_connection));
  sub_10008445C();
  if (v5)
  {
    type metadata accessor for Schema.RuntimeError(0);
    sub_100002B5C();
    sub_100084084(v6, v7);
    sub_10001AB00();
    swift_allocError();
    sub_100006474();
    sub_10008451C();
    swift_willThrow();
  }

  return sub_10000C0C4();
}

id sub_100079098(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = v3;
  result = sub_1000232F4(a3);
  v8 = result;
  for (i = 0; v8 != i; ++i)
  {
    if ((a3 & 0xC000000000000001) != 0)
    {
      result = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (i >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_12;
      }

      result = *(a3 + 8 * i + 32);
    }

    v10 = result;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_12:
      __break(1u);
      return result;
    }

    v11 = v10;
    sub_1000FDED8(a1, a2);

    if (v4)
    {
      return result;
    }
  }

  return result;
}

void sub_1000791B0()
{
  sub_1000067D4();
  v1 = *(v0 + OBJC_IVAR____TtC10LinkDaemon13MetadataStore_provider);

  v1;

  sub_1000071CC();
  sub_1000A3F48();
}

unint64_t sub_100079210(uint64_t a1, char a2)
{
  switch(a2)
  {
    case 1:
      _StringGuts.grow(_:)(40);

      sub_100013128();
      v3 = v11 + 21;
      goto LABEL_6;
    case 2:
      _StringGuts.grow(_:)(43);

      v4._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v4);

      v5._countAndFlagsBits = 8238;
      v5._object = 0xE200000000000000;
      String.append(_:)(v5);
      _StringGuts.grow(_:)(51);
      sub_1000132B4();
      v6._countAndFlagsBits = 0xD000000000000011;
      String.append(_:)(v6);
      v7._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v7);

      v8._countAndFlagsBits = 0xD000000000000020;
      v8._object = 0x8000000100155CC0;
      String.append(_:)(v8);
      v13 = 0xD000000000000027;

      v9._countAndFlagsBits = 0;
      v9._object = 0xE000000000000000;
      String.append(_:)(v9);

      goto LABEL_7;
    case 3:
      sub_1000132B4();
      return 0xD00000000000001FLL;
    default:
      _StringGuts.grow(_:)(36);

      sub_100013128();
      v3 = v2 + 17;
LABEL_6:
      v13 = v3;
      swift_errorRetain();
      sub_10002EB80(&unk_100198760, &qword_10014F3C0);
      v12._countAndFlagsBits = String.init<A>(describing:)();
      String.append(_:)(v12);
LABEL_7:

      return v13;
  }
}

uint64_t sub_10007946C()
{
  v0 = type metadata accessor for Logger();
  sub_100037CD8(v0, qword_10019DBF0);
  sub_10000347C(v0, qword_10019DBF0);
  type metadata accessor for MetadataStore(0);
  sub_10002EB80(&qword_10019A250, &qword_10014DF40);
  String.init<A>(describing:)();
  result = LNLogSubsystem;
  if (LNLogSubsystem)
  {
    String.init(cString:)();
    return Logger.init(subsystem:category:)();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100079520(uint64_t a1)
{
  v4 = sub_10002EB80(&qword_1001990C0, &unk_10014E200);
  __chkstk_darwin(v4 - 8);
  v6 = &v16 - v5;
  URL.absoluteString.getter();
  sub_1000215C0();
  v7 = objc_allocWithZone(v1);
  v8 = sub_1000079CC();
  sub_100079D10(v8, v9, 0);
  sub_10008445C();
  if (v2)
  {
    type metadata accessor for URL();
    sub_100002978();
    (*(v10 + 8))(a1);
  }

  else
  {
    v11 = type metadata accessor for URL();
    sub_10000482C();
    (*(v12 + 32))(v6, a1, v11);
    sub_1000075C4(v6, 0, 1, v11);
    v13 = OBJC_IVAR____TtC10LinkDaemon13MetadataStore_URL;
    swift_beginAccess();
    v14 = 0;
    sub_100060D78(v6, v13);
    swift_endAccess();
  }

  return sub_10000C0C4();
}

void sub_100079698(uint64_t a1)
{
  v2 = type metadata accessor for URL();
  sub_100002944();
  v4 = v3;
  __chkstk_darwin(v5);
  v7 = &v59[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v8);
  v10 = &v59[-v9];
  __chkstk_darwin(v11);
  v13 = &v59[-v12];
  ppDb = 0;
  URL.absoluteString.getter();
  v14 = String.utf8CString.getter();

  v15 = sqlite3_open_v2((v14 + 32), &ppDb, 2, 0);

  if (v15)
  {
    if (sqlite3_errmsg(ppDb))
    {
      String.init(cString:)();
      v17 = v16;
      if (qword_100198200 != -1)
      {
        sub_100007F64();
        swift_once();
      }

      v18 = type metadata accessor for Logger();
      sub_10000347C(v18, qword_10019DBF0);
      (*(v4 + 16))(v7, a1, v2);

      v19 = Logger.logObject.getter();
      v20 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        v60 = swift_slowAlloc();
        v61 = v60;
        *v21 = 136315650;
        sub_100018430();
        sub_100084084(v22, v23);
        dispatch thunk of CustomStringConvertible.description.getter();
        sub_1000844C4();
        v24(v7, v2);
        v25 = sub_1000079CC();
        v28 = sub_100004C50(v25, v26, v27);

        *(v21 + 4) = v28;
        *(v21 + 12) = 1024;
        *(v21 + 14) = v15;
        v29 = sub_100018D14();
        v31 = sub_100004C50(v29, v17, v30);

        *(v21 + 20) = v31;
        v32 = "Could not open database at %s to truncate: %d %s";
LABEL_13:
        _os_log_impl(&_mh_execute_header, v19, v20, v32, v21, 0x1Cu);
        swift_arrayDestroy();
        sub_100004DE4();

        sub_100004DE4();

        return;
      }

      (*(v4 + 8))(v7, v2);
      return;
    }

    __break(1u);
LABEL_23:
    __break(1u);
    return;
  }

  v33 = _sqlite3_db_truncate();
  if (!v33)
  {
    if (qword_100198200 != -1)
    {
      sub_100007F64();
      swift_once();
    }

    v48 = type metadata accessor for Logger();
    sub_10000347C(v48, qword_10019DBF0);
    (*(v4 + 16))(v13, a1, v2);
    v49 = Logger.logObject.getter();
    v50 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v49, v50))
    {
      v51 = sub_100007764();
      v52 = sub_1000056E4();
      v61 = v52;
      *v51 = 136315138;
      sub_100018430();
      sub_100084084(v53, v54);
      v55 = dispatch thunk of CustomStringConvertible.description.getter();
      v57 = v56;
      (*(v4 + 8))(v13, v2);
      v58 = sub_100004C50(v55, v57, &v61);

      *(v51 + 4) = v58;
      _os_log_impl(&_mh_execute_header, v49, v50, "Truncated database at %s", v51, 0xCu);
      sub_1000034F8(v52);
      sub_100004DE4();

      sub_100004DE4();
    }

    else
    {

      (*(v4 + 8))(v13, v2);
    }

    sqlite3_close_v2(ppDb);
    return;
  }

  v34 = v33;
  if (!sqlite3_errmsg(ppDb))
  {
    goto LABEL_23;
  }

  String.init(cString:)();
  v36 = v35;
  if (qword_100198200 != -1)
  {
    sub_100007F64();
    swift_once();
  }

  v37 = type metadata accessor for Logger();
  sub_10000347C(v37, qword_10019DBF0);
  (*(v4 + 16))(v10, a1, v2);

  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v60 = swift_slowAlloc();
    v61 = v60;
    *v21 = 136315650;
    sub_100018430();
    sub_100084084(v38, v39);
    dispatch thunk of CustomStringConvertible.description.getter();
    sub_1000844C4();
    v40(v10, v2);
    v41 = sub_1000079CC();
    v44 = sub_100004C50(v41, v42, v43);

    *(v21 + 4) = v44;
    *(v21 + 12) = 1024;
    *(v21 + 14) = v34;
    v45 = sub_100018D14();
    v47 = sub_100004C50(v45, v36, v46);

    *(v21 + 20) = v47;
    v32 = "Could not truncate database at %s: %d %s";
    goto LABEL_13;
  }

  (*(v4 + 8))(v10, v2);
}

uint64_t sub_100079D10(uint64_t a1, uint64_t a2, int a3)
{
  v79 = a3;
  ObjectType = swift_getObjectType();
  v5 = type metadata accessor for Logger();
  sub_100002944();
  v78 = v6;
  v8 = *(v7 + 64);
  __chkstk_darwin(v9);
  v10 = &v77 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v77 - v12;
  v14 = OBJC_IVAR____TtC10LinkDaemon13MetadataStore_URL;
  v15 = type metadata accessor for URL();
  v82 = v3;
  v80 = v14;
  sub_1000075C4(&v3[v14], 1, 1, v15);
  v16 = sub_10000373C();
  v81 = ObjectType;
  v17 = v84;
  result = sub_10007A370(v16, v18, v19, 1, 1);
  if (v17)
  {
    v21 = sub_10000373C();
    sub_1000842EC(v21, v22);
    v23 = v82;
LABEL_25:
    sub_100039B5C(&v23[v80], &qword_1001990C0, &unk_10014E200);
    return swift_deallocPartialClassInstance();
  }

  v24 = result;
  v77 = 0;
  v25 = v78;
  v84 = v5;
  if (v79 & 1) != 0 || (result = sub_10007A5CC(), (result))
  {
    if (!LNLogSubsystem)
    {
      __break(1u);
      return result;
    }

    v26 = sub_10000373C();
    sub_1000842EC(v26, v27);
    String.init(cString:)();
    Logger.init(subsystem:category:)();
    v28 = v84;
    (*(v25 + 16))(v10, v13, v84);
    v29 = (*(v25 + 80) + 16) & ~*(v25 + 80);
    v30 = swift_allocObject();
    (*(v25 + 32))(v30 + v29, v10, v28);
    Connection.trace(_:)(sub_100084300, v30);

    (*(v25 + 8))(v13, v28);
  }

  else
  {
    v31 = sub_10000373C();
    sub_1000842EC(v31, v32);
  }

  v33 = v81;
  v34 = v77;
  v35 = sub_10007A8A4();
  v23 = v82;
  if (v34)
  {

    goto LABEL_25;
  }

  v37 = v35;
  if (v36)
  {
    if (v35)
    {
      sub_100083A24();
      sub_10001AB00();
      swift_allocError();
      *v38 = 0;
      v39 = 3;
LABEL_24:
      *(v38 + 8) = v39;
      swift_willThrow();

      goto LABEL_25;
    }

    if (qword_100198200 != -1)
    {
      sub_100007F64();
      v35 = swift_once();
    }

    v57 = sub_100084498(v35, qword_10019DBF0);
    static os_log_type_t.default.getter();
    v58 = sub_10001A88C();
    if (os_log_type_enabled(v58, v59))
    {
      *swift_slowAlloc() = 0;
      sub_100012AB4();
      _os_log_impl(v60, v61, v62, v63, v64, 2u);
      sub_100004DE4();
    }

    sub_10007A980(v24);
  }

  else
  {
    if (v35 != 116)
    {
      if (qword_100198200 != -1)
      {
        sub_100007F64();
        v35 = swift_once();
      }

      v48 = sub_100084498(v35, qword_10019DBF0);
      static os_log_type_t.default.getter();
      v49 = sub_10001A88C();
      if (os_log_type_enabled(v49, v50))
      {
        v51 = swift_slowAlloc();
        *v51 = 134218240;
        *(v51 + 4) = v37;
        *(v51 + 12) = 2048;
        *(v51 + 14) = 116;
        sub_100012AB4();
        _os_log_impl(v52, v53, v54, v55, v56, 0x16u);
        sub_100004DE4();
      }

      sub_100083A24();
      sub_10001AB00();
      swift_allocError();
      *v38 = v37;
      v39 = 2;
      goto LABEL_24;
    }

    if (qword_100198200 != -1)
    {
      sub_100007F64();
      v35 = swift_once();
    }

    v40 = sub_100084498(v35, qword_10019DBF0);
    static os_log_type_t.debug.getter();
    v41 = sub_10001A88C();
    if (os_log_type_enabled(v41, v42))
    {
      *swift_slowAlloc() = 0;
      sub_100012AB4();
      _os_log_impl(v43, v44, v45, v46, v47, 2u);
      sub_100004DE4();
    }
  }

  *&v23[OBJC_IVAR____TtC10LinkDaemon13MetadataStore_connection] = v24;
  v65 = objc_allocWithZone(type metadata accessor for _LNMetadataProviderDirect());
  swift_retain_n();
  *&v23[OBJC_IVAR____TtC10LinkDaemon13MetadataStore_provider] = sub_1000A3E30();
  type metadata accessor for ConnectionTransactionSerializer(0);
  v66 = swift_allocObject();

  v68 = sub_100082244(v67);
  *&v23[OBJC_IVAR____TtC10LinkDaemon13MetadataStore_transactionManager] = v66;
  if (qword_100198200 != -1)
  {
    sub_100007F64();
    v68 = swift_once();
  }

  v69 = sub_100084498(v68, qword_10019DBF0);
  static os_log_type_t.debug.getter();
  v70 = sub_10001A88C();
  if (os_log_type_enabled(v70, v71))
  {
    *swift_slowAlloc() = 0;
    sub_100012AB4();
    _os_log_impl(v72, v73, v74, v75, v76, 2u);
    sub_100004DE4();
  }

  v83.receiver = v23;
  v83.super_class = v33;
  return objc_msgSendSuper2(&v83, "init");
}

uint64_t sub_10007A370(uint64_t a1, unint64_t a2, double a3, uint64_t a4, char a5)
{
  type metadata accessor for Connection();
  swift_allocObject();
  sub_10002CD10(a1, a2);
  v10 = Connection.init(_:readonly:)(a1, a2, 0);
  v11 = v5;
  if (!v5)
  {
    if (a5)
    {
      v12 = [objc_opt_self() processInfo];
      v13 = [v12 environment];

      v14 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
      sub_1000A0CB8(0x5F454C4241534944, 0xEB000000004C4157, v14);
      v16 = v15;

      if (v16)
      {
      }

      else
      {
        sub_10010CF04(v17, v18);
      }
    }

    _StringGuts.grow(_:)(23);

    v19._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v19);

    v20._countAndFlagsBits = 59;
    v20._object = 0xE100000000000000;
    String.append(_:)(v20);
    v21._countAndFlagsBits = 0xD000000000000014;
    v21._object = 0x8000000100155C30;
    Connection.execute(_:)(v21);
    if (!v22)
    {

      Connection.busyTimeout.setter(a3);
      return v10;
    }

    v11 = v22;
  }

  sub_100083A24();
  swift_allocError();
  *v23 = v11;
  *(v23 + 8) = 0;
  swift_willThrow();
  return v10;
}

uint64_t sub_10007A5CC()
{
  v0 = [objc_opt_self() standardUserDefaults];
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 objectForKey:v1];

  if (v2)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v12 = 0u;
    v13 = 0u;
  }

  v14[0] = v12;
  v14[1] = v13;
  if (!*(&v13 + 1))
  {
    sub_100039B5C(v14, &qword_1001992F0, &qword_10014E000);
    return 0;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  v3 = v11;
  if (qword_100198200 != -1)
  {
    sub_100007F64();
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_10000347C(v4, qword_10019DBF0);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  v7 = sub_10001A88C();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 67109120;
    *(v9 + 4) = v11;
    _os_log_impl(&_mh_execute_header, v5, v6, "traceDB = %{BOOL}d", v9, 8u);
    sub_100004DE4();
  }

  return v3;
}

void sub_10007A790(uint64_t a1, unint64_t a2)
{

  oslog = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v8 = v6;
    *v5 = 136315138;
    *(v5 + 4) = sub_100004C50(a1, a2, &v8);
    _os_log_impl(&_mh_execute_header, oslog, v4, "%s", v5, 0xCu);
    sub_1000034F8(v6);
  }
}

uint64_t sub_10007A8A4()
{
  result = Connection.scalar(_:_:)();
  if (!v0)
  {
    if (v5)
    {
      sub_10001A798(&v4, v6);
      sub_10002EB80(&unk_10019ABC0, &qword_10014F8D0);
      swift_dynamicCast();
      v2 = v7;
      if (v7)
      {
        sub_10010CFA0();
        if (v3)
        {
          return v2;
        }

        else
        {
          return 1;
        }
      }

      else
      {
        return 0;
      }
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_10007A980(uint64_t a1)
{
  result = sub_10007F45C(a1);
  if (v1)
  {
    type metadata accessor for Schema.RuntimeError(0);
    sub_100002B5C();
    sub_100084084(v3, v4);
    sub_100005244();
    swift_allocError();
    sub_100012058();
    sub_10001D5E0();
    swift_willThrow();
  }

  return result;
}

void sub_10007AA08()
{
  sub_100067878();
  if (v0)
  {
    type metadata accessor for Schema.RuntimeError(0);
    sub_100002B5C();
    sub_100084084(v1, v2);
    sub_100005244();
    swift_allocError();
    sub_100012058();
    sub_10001D5E0();
    swift_willThrow();
  }
}

void *sub_10007AAC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  sub_100095F40(a1, a2, a3, a4, *(v5 + OBJC_IVAR____TtC10LinkDaemon13MetadataStore_connection), __src);
  if (!v6)
  {
    return memcpy(a5, __src, 0x68uLL);
  }

  type metadata accessor for Schema.RuntimeError(0);
  sub_100002B5C();
  sub_100084084(v8, v9);
  sub_100005244();
  swift_allocError();
  sub_100012058();
  sub_10001D5E0();
  swift_willThrow();
}

uint64_t sub_10007AC04(uint64_t a1, uint64_t (*a2)(uint64_t, void))
{
  a2(a1, *(v2 + OBJC_IVAR____TtC10LinkDaemon13MetadataStore_connection));
  sub_10008445C();
  if (v3)
  {
    type metadata accessor for Schema.RuntimeError(0);
    sub_100002B5C();
    sub_100084084(v4, v5);
    sub_10001AB00();
    swift_allocError();
    sub_100006474();
    sub_10008451C();
    swift_willThrow();
  }

  return sub_10000C0C4();
}

uint64_t sub_10007ACD4(uint64_t (*a1)(void))
{
  a1(*(v1 + OBJC_IVAR____TtC10LinkDaemon13MetadataStore_connection));
  sub_10008445C();
  if (v2)
  {
    type metadata accessor for Schema.RuntimeError(0);
    sub_100002B5C();
    sub_100084084(v3, v4);
    sub_10001AB00();
    swift_allocError();
    sub_100006474();
    sub_10008451C();
    swift_willThrow();
  }

  return sub_10000C0C4();
}

uint64_t sub_10007AD78(uint64_t a1, uint64_t a2)
{
  sub_10007AE20(&v6);
  if (!v2)
  {
    return v6;
  }

  type metadata accessor for Schema.RuntimeError(0);
  sub_100002B5C();
  sub_100084084(v3, v4);
  sub_100005244();
  swift_allocError();
  sub_100012058();
  sub_10001D5E0();
  swift_willThrow();
}

uint64_t sub_10007AE20@<X0>(uint64_t a2@<X8>)
{
  Table.init(_:database:)();
  v2 = sub_10002EB80(&unk_10019AAC0, &unk_10014BE40);
  v3 = sub_100013F04(&qword_100198780, &unk_10019AAC0, &unk_10014BE40);
  ExpressionType.init(_:)(7955819, 0xE300000000000000, v2, v3);
  v4 = sub_10002EB80(&unk_10019AAD0, &unk_100150890);
  v5 = sub_100013F04(&qword_100199500, &unk_10019AAD0, &unk_100150890);
  ExpressionType.init(_:)(0x65756C6176, 0xE500000000000000, v4, v5);
  v6 = __dst[0];

  v7 = == infix<A>(_:_:)();
  v9 = v8;
  v11 = v10;

  v24[0] = swift_allocObject();
  memcpy(__dst, __src, sizeof(__dst));
  QueryType.filter(_:)(v7, v9, v11, &type metadata for Table, &protocol witness table for Table, v12, v13, v14, v20, v6, a2, *(&v6 + 1), *&__dst[0], *(&__dst[0] + 1), *&__dst[1], *(&__dst[1] + 1), *&__dst[2], *(&__dst[2] + 1), *&__dst[3], *(&__dst[3] + 1), *&__dst[4], *(&__dst[4] + 1), *&__dst[5], *(&__dst[5] + 1), *&__dst[6], *(&__dst[6] + 1), *&__dst[7], *(&__dst[7] + 1), *&__dst[8], *(&__dst[8] + 1), *&__dst[9], *(&__dst[9] + 1), *&__dst[10], *(&__dst[10] + 1), v24[0], v24[1], v24[2], &type metadata for Table, &protocol witness table for Table, __src[0], __src[1], __src[2], __src[3], __src[4], __src[5], __src[6]);

  sub_10001970C(__src);
  v15 = __src[24];
  v16 = Connection.pluck(_:)(v24);
  if (v15)
  {

    return sub_1000034F8(v24);
  }

  else
  {
    v18 = v16;
    sub_1000034F8(v24);
    if (v18)
    {
      Row.get<A>(_:)();

      v19 = __dst[0];
    }

    else
    {

      v19 = xmmword_10014BC50;
    }

    *v22 = v19;
  }

  return result;
}

uint64_t sub_10007B13C()
{
  v1 = sub_10001AAC8();
  result = sub_10007B1D4(v1, v2, v3, v4, v5);
  if (v0)
  {
    type metadata accessor for Schema.RuntimeError(0);
    sub_100002B5C();
    sub_100084084(v7, v8);
    sub_100005244();
    swift_allocError();
    sub_100012058();
    sub_10001D5E0();
    swift_willThrow();
  }

  return result;
}

uint64_t sub_10007B1D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  Table.init(_:database:)();
  v5 = sub_10002EB80(&unk_10019AAC0, &unk_10014BE40);
  v6 = sub_100013F04(&qword_100198780, &unk_10019AAC0, &unk_10014BE40);
  ExpressionType.init(_:)(7955819, 0xE300000000000000, v5, v6);
  v7 = sub_10002EB80(&unk_10019AAD0, &unk_100150890);
  v8 = sub_100013F04(&qword_100199500, &unk_10019AAD0, &unk_100150890);
  ExpressionType.init(_:)(0x65756C6176, 0xE500000000000000, v7, v8);
  sub_10002EB80(&unk_10019AAE0, &unk_10014BE30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10014BC40;
  <- infix<A>(_:_:)();

  <- infix<A>(_:_:)();

  memcpy(__dst, __src, sizeof(__dst));
  v16 = QueryType.insert(or:_:)(AppIntents_SQLite_OnConflict_replace, inited);
  countAndFlagsBits = v16.template._countAndFlagsBits;
  object = v16.template._object;
  rawValue = v16.bindings._rawValue;
  swift_setDeallocating();
  sub_1000B3030();
  sub_10001970C(__src);
  v17.template._countAndFlagsBits = countAndFlagsBits;
  v17.template._object = object;
  v17.bindings._rawValue = rawValue;
  Connection.run(_:)(v17);
}

uint64_t sub_10007B444()
{
  sub_1000036A0();
  *(v1 + 72) = v2;
  *(v1 + 80) = v0;
  *(v1 + 152) = v3;
  *(v1 + 56) = v4;
  *(v1 + 64) = v5;
  v6 = type metadata accessor for Logger();
  *(v1 + 88) = v6;
  v7 = *(v6 - 8);
  *(v1 + 96) = v7;
  *(v1 + 104) = *(v7 + 64);
  *(v1 + 112) = swift_task_alloc();
  sub_100009990();

  return _swift_task_switch(v8, v9, v10);
}

uint64_t sub_10007B50C()
{
  if (qword_100198200 != -1)
  {
    sub_100007F64();
    swift_once();
  }

  v2 = *(v0 + 104);
  v1 = *(v0 + 112);
  v3 = *(v0 + 88);
  v4 = *(v0 + 96);
  v5 = *(v0 + 80);
  v19 = *(v0 + 152);
  v6 = *(v0 + 56);
  v17 = *(v0 + 64);
  v18 = *(v0 + 72);
  v7 = sub_10000347C(v3, qword_10019DBF0);
  (*(v4 + 16))(v1, v7, v3);
  sub_100013334(v6, v0 + 16);
  v8 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v9 = (v2 + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v9 + 47) & 0xFFFFFFFFFFFFFFF8;
  v11 = swift_allocObject();
  *(v0 + 120) = v11;
  (*(v4 + 32))(v11 + v8, v1, v3);
  sub_10001A798((v0 + 16), v11 + v9);
  v12 = (v11 + v10);
  *v12 = v17;
  v12[1] = v18;
  v13 = v11 + ((v10 + 23) & 0xFFFFFFFFFFFFFFF8);
  *v13 = v5;
  *(v13 + 8) = v19;

  v14 = v5;
  v15 = swift_task_alloc();
  *(v0 + 128) = v15;
  *v15 = v0;
  v15[1] = sub_10007B6F4;

  return sub_100082334(&unk_10014F848, v11);
}

uint64_t sub_10007B6F4()
{
  sub_1000036A0();
  sub_1000036D0();
  v3 = v2;
  sub_100007A64();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 136) = v5;
  *(v3 + 144) = v0;

  sub_100009990();

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_10007B808()
{
  sub_1000070C8();
  if (*(v0 + 136))
  {
    swift_willThrow();
  }

  sub_100003A00();

  return v1();
}

uint64_t sub_10007B878()
{
  sub_1000036A0();

  sub_100003A00();

  return v0();
}

uint64_t sub_10007B8D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  *(v6 + 376) = a6;
  *(v6 + 272) = a4;
  *(v6 + 280) = a5;
  *(v6 + 256) = a2;
  *(v6 + 264) = a3;
  *(v6 + 248) = a1;
  sub_10002EB80(&qword_10019BB70, &qword_10014F850);
  *(v6 + 288) = swift_task_alloc();
  *(v6 + 296) = type metadata accessor for LNBundleRecord(0);
  *(v6 + 304) = swift_task_alloc();
  *(v6 + 312) = swift_task_alloc();

  return _swift_task_switch(sub_10007B9B8, 0, 0);
}

uint64_t sub_10007B9B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_100007858();
  sub_100013334(*(v14 + 256), v14 + 16);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();
  if (sub_100084504(v16))
  {
    v17 = sub_100007764();
    a10 = sub_1000056E4();
    *v17 = 136446210;
    v19 = *(v14 + 40);
    v18 = *(v14 + 48);
    sub_1000034B4((v14 + 16), v19);
    sub_1000039EC();
    v20(v19);
    sub_1000215C0();
    sub_1000034F8((v14 + 16));
    v21 = sub_100004890();
    sub_100004C50(v21, v19, v22);
    sub_10001E0E8();

    *(v17 + 4) = v18;
    sub_1000844E4(&_mh_execute_header, v23, v24, "→ Beginning indexing transaction for %{public}s");
    sub_1000034F8(a10);
    sub_100004DE4();

    sub_100004DE4();
  }

  else
  {

    sub_1000034F8((v14 + 16));
  }

  v25 = *(v14 + 256);
  *(v14 + 320) = *(*(v14 + 280) + OBJC_IVAR____TtC10LinkDaemon13MetadataStore_connection);
  v26 = v25[4];
  sub_1000034B4(v25, v25[3]);
  v27 = *(*(v26 + 8) + 8);

  v28 = sub_1000844D8();
  v27(v28);
  sub_100109F48();
  v41 = *(v14 + 288);
  v40 = *(v14 + 296);

  v42 = sub_1000032C4(v41, 1, v40);
  if (v42 == 1)
  {
    v43 = *(v14 + 256);
    sub_100039B5C(*(v14 + 288), &qword_10019BB70, &qword_10014F850);
    sub_100013334(v43, v14 + 56);
    v44 = Logger.logObject.getter();
    v45 = static os_log_type_t.info.getter();
    if (sub_10001283C(v45))
    {
      v46 = sub_100007764();
      v139 = sub_1000056E4();
      *v46 = 136446210;
      v47 = *(v14 + 80);
      sub_1000034B4((v14 + 56), v47);
      sub_1000039EC();
      v49 = v48(v47);
      v51 = v50;
      sub_1000034F8((v14 + 56));
      v52 = sub_100004890();
      sub_100004C50(v52, v51, v53);
      sub_1000248A8();

      *(v46 + 4) = v49;
      sub_1000026E4(&_mh_execute_header, v54, v55, "Bundle record %{public}s not found, creating");
      sub_1000034F8(v139);
      sub_100004DE4();

      sub_100004DE4();
    }

    else
    {

      sub_1000034F8((v14 + 56));
    }

    v82 = *(v14 + 296);
    v81 = *(v14 + 304);
    v83 = *(v14 + 256);
    v84 = v25[3];
    v85 = sub_1000844D8();
    sub_1000034B4(v85, v86);
    sub_1000039EC();
    v88 = v87(v84);
    v90 = v89;
    sub_1000034B4(v83, v25[3]);
    v91 = sub_1000248A8();
    v92(v91);
    v93 = v25[3];
    sub_1000034B4(v83, v93);
    sub_100019D40();
    v95 = v94(v93);
    v97 = v96;
    v98 = [objc_opt_self() latestMetadataVersion];
    *v81 = v88;
    v81[1] = v90;
    v99 = (v81 + v82[6]);
    *v99 = v95;
    v99[1] = v97;
    *(v81 + v82[7]) = 1;
    *(v81 + v82[8]) = v98;
    sub_100002B74();
    sub_10010A624();
    v112 = swift_task_alloc();
    *(v14 + 360) = v112;
    *v112 = v14;
    v112[1] = sub_10007C56C;
    goto LABEL_25;
  }

  v56 = *(v14 + 312);
  v57 = *(v14 + 296);
  v58 = *(v14 + 256);
  sub_100084178(*(v14 + 288), v56, type metadata accessor for LNBundleRecord);
  v59 = v56 + *(v57 + 24);
  v60 = v25[3];
  sub_1000034B4(v58, v60);
  sub_100019D40();
  v62 = v61(v60);
  v64 = v63;
  sub_1000844D8();
  LOBYTE(v57) = static Data.== infix(_:_:)();
  sub_100009B18(v62, v64);
  if ((v57 & 1) == 0)
  {
    sub_100013334(*(v14 + 256), v14 + 96);
    v100 = Logger.logObject.getter();
    v101 = static os_log_type_t.info.getter();
    if (sub_10001283C(v101))
    {
      v102 = sub_100007764();
      v140 = sub_1000056E4();
      *v102 = 136446210;
      v103 = *(v14 + 120);
      sub_1000034B4((v14 + 96), v103);
      sub_1000039EC();
      v105 = v104(v103);
      v107 = v106;
      sub_1000034F8((v14 + 96));
      v108 = sub_100004890();
      sub_100004C50(v108, v107, v109);
      sub_1000248A8();

      *(v102 + 4) = v105;
      sub_1000026E4(&_mh_execute_header, v110, v111, "%{public}s installIdentifier changed, indexing");
      sub_1000034F8(v140);
      sub_100004DE4();

      sub_100004DE4();
    }

    else
    {

      sub_1000034F8((v14 + 96));
    }

    v115 = *(v14 + 312);
    v116 = *(v14 + 296);
    v117 = v25[3];
    sub_1000034B4(*(v14 + 256), v117);
    sub_100019D40();
    v119 = v118(v117);
    v121 = v120;
    sub_100009B18(*v59, *(v59 + 8));
    *v59 = v119;
    *(v59 + 8) = v121;
    *(v115 + *(v116 + 28)) = 1;
    sub_100002B74();
    sub_10010A348();
    v113 = swift_task_alloc();
    *(v14 + 344) = v113;
    *v113 = v14;
    v114 = sub_10007C3D8;
LABEL_24:
    v113[1] = v114;
LABEL_25:
    sub_10000783C();

    return sub_10007C8D0(v122, v123, v124, v125, v126, v127);
  }

  v65 = *(v14 + 312);
  v66 = *(v14 + 376);
  v67 = *(*(v14 + 296) + 28);
  v68 = *(v65 + v67);
  result = sub_10010ABE4();
  if (v68 < result || v66)
  {
    if (__OFADD__(v68, 1))
    {
      __break(1u);
      return result;
    }

    *(v65 + v67) = v68 + 1;
    sub_10010A348();
    v113 = swift_task_alloc();
    *(v14 + 328) = v113;
    *v113 = v14;
    v114 = sub_10007C244;
    goto LABEL_24;
  }

  sub_100013334(*(v14 + 256), v14 + 136);
  v69 = Logger.logObject.getter();
  v70 = static os_log_type_t.error.getter();
  if (sub_10001283C(v70))
  {
    v71 = sub_100007764();
    a10 = sub_1000056E4();
    *v71 = 136446210;
    v72 = *(v14 + 160);
    sub_1000034B4((v14 + 136), v72);
    sub_1000039EC();
    v74 = v73(v72);
    v76 = v75;
    sub_1000034F8((v14 + 136));
    v77 = sub_100004890();
    sub_100004C50(v77, v76, v78);
    sub_1000248A8();

    *(v71 + 4) = v74;
    sub_1000026E4(&_mh_execute_header, v79, v80, "Bundle record %{public}s has failed indexing too frequently and has been blocked");
    sub_1000034F8(a10);
    sub_100004DE4();

    sub_100004DE4();
  }

  else
  {

    sub_1000034F8((v14 + 136));
  }

  v129 = *(v14 + 312);
  v130 = *(v14 + 256);
  type metadata accessor for Schema.RuntimeError(0);
  sub_100002B5C();
  sub_100084084(v131, v132);
  sub_10001AB00();
  swift_allocError();
  v134 = v133;
  sub_1000034B4(v130, v25[3]);
  v135 = sub_1000248A8();
  *v134 = v136(v135);
  v134[1] = v137;
  swift_storeEnumTagMultiPayload();
  swift_willThrow();

  sub_1000071B4();
  sub_100083F2C(v129, v138);
  v29 = *(v14 + 248);
  v30 = sub_1000034B4(*(v14 + 256), *(*(v14 + 256) + 24));
  sub_100083CC0(v29, v30);

  sub_100003A00();
  sub_10000783C();

  return v32(v31, v32, v33, v34, v35, v36, v37, v38, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_10007C244()
{
  sub_1000036A0();
  sub_1000036D0();
  sub_100007A64();
  *v3 = v2;
  v2[22] = v1;
  v2[23] = v4;
  v2[24] = v0;
  v5 = *v1;
  sub_10000298C();
  *v6 = v5;
  *(v7 + 336) = v0;

  sub_100009990();

  return _swift_task_switch(v8, v9, v10);
}

uint64_t sub_10007C348()
{
  sub_1000036C4();
  sub_100027380();
  sub_1000071B4();
  sub_100083F2C(v0, v1);
  sub_100004B9C();

  v2 = sub_1000088B0();

  return v3(v2);
}

uint64_t sub_10007C3D8()
{
  sub_1000036A0();
  sub_1000036D0();
  sub_100007A64();
  *v3 = v2;
  v2[25] = v1;
  v2[26] = v4;
  v2[27] = v0;
  v5 = *v1;
  sub_10000298C();
  *v6 = v5;
  *(v7 + 352) = v0;

  sub_100009990();

  return _swift_task_switch(v8, v9, v10);
}

uint64_t sub_10007C4DC()
{
  sub_1000036C4();
  sub_100027380();
  sub_1000071B4();
  sub_100083F2C(v0, v1);
  sub_100004B9C();

  v2 = sub_1000088B0();

  return v3(v2);
}

uint64_t sub_10007C56C()
{
  sub_1000036A0();
  sub_1000036D0();
  sub_100007A64();
  *v3 = v2;
  v2[28] = v1;
  v2[29] = v4;
  v2[30] = v0;
  v5 = *v1;
  sub_10000298C();
  *v6 = v5;
  *(v7 + 368) = v0;

  sub_100009990();

  return _swift_task_switch(v8, v9, v10);
}

uint64_t sub_10007C670()
{
  sub_1000036C4();
  v1 = *(v0 + 304);

  sub_1000071B4();
  sub_100083F2C(v1, v2);
  sub_100004B9C();

  v3 = sub_1000088B0();

  return v4(v3);
}

uint64_t sub_10007C710()
{
  sub_1000036C4();
  v1 = *(v0 + 304);

  sub_1000071B4();
  sub_100083F2C(v1, v2);
  sub_1000246E4();

  sub_100003A00();

  return v3();
}

uint64_t sub_10007C7A8()
{
  sub_1000036C4();
  v1 = *(v0 + 312);

  sub_1000071B4();
  sub_100083F2C(v1, v2);
  sub_1000246E4();

  sub_100003A00();

  return v3();
}

uint64_t sub_10007C83C()
{
  sub_1000036C4();
  v1 = *(v0 + 312);

  sub_1000071B4();
  sub_100083F2C(v1, v2);
  sub_1000246E4();

  sub_100003A00();

  return v3();
}

uint64_t sub_10007C8D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[25] = a5;
  v6[26] = a6;
  v6[23] = a3;
  v6[24] = a4;
  v6[21] = a1;
  v6[22] = a2;
  v6[27] = type metadata accessor for LNBundleRecord(0);
  v6[28] = swift_task_alloc();

  return _swift_task_switch(sub_10007C96C, 0, 0);
}

void sub_10007C96C()
{
  sub_100004884();
  sub_100013334(v0[23], (v0 + 2));
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.info.getter();
  if (sub_100084504(v2))
  {
    v3 = sub_100007764();
    v13 = sub_1000056E4();
    *v3 = 136446210;
    v5 = v0[5];
    v4 = v0[6];
    sub_1000034B4(v0 + 2, v5);
    sub_1000039EC();
    v6(v5);
    sub_1000215C0();
    sub_1000034F8(v0 + 2);
    v7 = sub_100004890();
    sub_100004C50(v7, v5, v8);
    sub_10001E0E8();

    *(v3 + 4) = v4;
    sub_100012F74(&_mh_execute_header, v9, v2, "Calling transaction block for %{public}s");
    sub_1000034F8(v13);
    sub_100004DE4();

    sub_100004DE4();
  }

  else
  {

    sub_1000034F8(v0 + 2);
  }

  v10 = swift_task_alloc();
  v0[29] = v10;
  *v10 = v0;
  v10[1] = sub_10007CB3C;
  sub_10001064C();

  __asm { BRAA            X0, X16 }
}

uint64_t sub_10007CB3C()
{
  sub_1000036A0();
  sub_1000036D0();
  sub_100007A64();
  *v3 = v2;
  v4 = *v1;
  sub_10000298C();
  *v5 = v4;
  *(v6 + 240) = v0;

  sub_100009990();

  return _swift_task_switch(v7, v8, v9);
}

void sub_10007CC38()
{
  sub_100004884();
  sub_100013334(v0[23], (v0 + 12));
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.info.getter();
  if (sub_100084504(v2))
  {
    v3 = sub_100007764();
    v17 = sub_1000056E4();
    *v3 = 136446210;
    v5 = v0[15];
    v4 = v0[16];
    sub_1000034B4(v0 + 12, v5);
    sub_1000039EC();
    v6(v5);
    sub_1000215C0();
    sub_1000034F8(v0 + 12);
    v7 = sub_1000079CC();
    sub_100004C50(v7, v8, v9);
    sub_10001E0E8();

    *(v3 + 4) = v4;
    sub_100012F74(&_mh_execute_header, v10, v2, "Transaction succeeded for %{public}s, resetting attemptedIndexCount");
    sub_1000034F8(v17);
    sub_100004DE4();

    sub_100004DE4();
  }

  else
  {

    sub_1000034F8(v0 + 12);
  }

  v12 = v0[27];
  v11 = v0[28];
  sub_100083E3C(v0[21], v11, type metadata accessor for LNBundleRecord);
  *(v11 + *(v12 + 28)) = 0;
  sub_10010A348();
  sub_1000071B4();
  sub_100083F2C(v13, v14);

  sub_10001064C();

  __asm { BRAA            X2, X16 }
}

uint64_t sub_10007CDDC()
{
  v29 = v0;
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = sub_100007764();
    v4 = sub_1000056E4();
    v28 = v4;
    *v3 = 136446210;
    swift_getErrorValue();
    v5 = Error.localizedDescription.getter();
    v7 = sub_100004C50(v5, v6, &v28);

    *(v3 + 4) = v7;
    sub_1000844E4(&_mh_execute_header, v8, v9, "Transaction failed due to error: %{public}s");
    sub_1000034F8(v4);
    sub_100004DE4();

    sub_100004DE4();
  }

  v10 = _convertErrorToNSError(_:)();
  if (sub_10007D0CC())
  {
    sub_100013334(v0[23], (v0 + 7));
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = sub_100007764();
      v14 = sub_1000056E4();
      v28 = v14;
      *v13 = 136446210;
      v15 = v0[10];
      sub_1000034B4(v0 + 7, v15);
      sub_1000039EC();
      v16(v15);
      v18 = v17;
      sub_1000034F8(v0 + 7);
      v19 = sub_100004890();
      v21 = sub_100004C50(v19, v18, v20);

      *(v13 + 4) = v21;
      _os_log_impl(&_mh_execute_header, v11, v12, "LS tearing down, deleting invalid bundle record %{public}s", v13, 0xCu);
      sub_1000034F8(v14);
      sub_100004DE4();

      sub_100004DE4();
    }

    else
    {

      sub_1000034F8(v0 + 7);
    }

    v22 = v0[23];
    v23 = v22[3];
    sub_1000034B4(v22, v23);
    sub_1000039EC();
    v24(v23);
    sub_10010A1E0();
  }

  v25 = sub_1000088B0();

  return v26(v25);
}

uint64_t sub_10007D0CC()
{
  if ([v0 code] != 4099)
  {
    goto LABEL_17;
  }

  v1 = [v0 domain];
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = v3;

  if (v2 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v4 == v5)
  {
  }

  else
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v7 & 1) == 0)
    {
      goto LABEL_17;
    }
  }

  v8 = [v0 userInfo];
  v9 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_1000A0C5C(v10, v11, v9, &v17);

  if (!v18)
  {
    sub_100039B5C(&v17, &qword_1001992F0, &qword_10014E000);
    goto LABEL_17;
  }

  if (!swift_dynamicCast())
  {
LABEL_17:
    v13 = 0;
    return v13 & 1;
  }

  if (v15 == 0xD00000000000007ELL && 0x8000000100155AC0 == v16)
  {

    v13 = 1;
  }

  else
  {
    v13 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v13 & 1;
}

uint64_t sub_10007D2BC(uint64_t a1, void *a2, void *a3, char *a4, uint64_t a5, char a6, uint64_t a7, unint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, unint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  sub_100021644();
  LOBYTE(v28) = a6;
  sub_10007D43C(v33, a1, a2, a3, a4, a5, a7, a8, v28, a12, a9, a10, a11, v23, v24, a13, a14, a15, a16, a17, a18, a19, a20, a21);

  if (!v36)
  {
  }

  type metadata accessor for Schema.RuntimeError(0);
  sub_100002B5C();
  sub_100084084(v25, v26);
  sub_100005244();
  swift_allocError();
  sub_100012058();
  sub_10001D5E0();
  swift_willThrow();
}

void sub_10007D43C(uint64_t a1, uint64_t a2, void *a3, void *a4, char *a5, uint64_t a6, uint64_t a7, unint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char *a15, unint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  v207 = a8;
  v209 = a7;
  v210 = a5;
  v211 = a6;
  v213 = a4;
  v27 = type metadata accessor for LNAppShortcutParameterRecord(0);
  v206 = *(v27 - 8);
  __chkstk_darwin(v27 - 8);
  v29 = &v196 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = type metadata accessor for LNBundleRecord(0);
  __chkstk_darwin(v30);
  v32 = (&v196 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0));
  v208 = a1;
  v33 = *(a1 + OBJC_IVAR____TtC10LinkDaemon13MetadataStore_connection);
  swift_retain_n();
  sub_10002EB80(&unk_100198B60, &qword_10014E3C0);
  v34 = swift_allocObject();
  v212 = xmmword_10014CE90;
  *(v34 + 16) = xmmword_10014CE90;
  *(v34 + 32) = a2;
  *(v34 + 40) = a3;
  swift_retain_n();

  v35 = v229;
  sub_10010AA54();
  if (v35)
  {
  }

  else
  {
    v205 = v29;

    sub_100083E9C(v213, v32 + v30[5]);
    *v32 = a2;
    v32[1] = a3;
    v36 = (v32 + v30[6]);
    v37 = v210;
    v38 = v211;
    *v36 = v210;
    v36[1] = v38;
    *(v32 + v30[7]) = 0;
    *(v32 + v30[8]) = v209;

    sub_1000098F0(v37, v38);
    sub_10010A624();
    v39 = sub_100083F2C(v32, type metadata accessor for LNBundleRecord);
    __chkstk_darwin(v39);
    *(&v196 - 4) = v33;
    *(&v196 - 3) = a2;
    v40 = v213;
    *(&v196 - 2) = a3;
    *(&v196 - 1) = v40;
    sub_100078CE4(sub_100083F0C, (&v196 - 6), v207);
    v210 = v33;
    v211 = a2;
    v213 = a3;
    if (a9 == 2 || (v229 = a10, (v209 = sub_1000232F4(a10)) == 0))
    {
      v229 = 0;
LABEL_24:
      v198 = a24;
      v197 = a23;
      v200 = a22;
      v199 = a21;
      v201 = a20;
      v202 = a19;
      v204 = a18;
      v209 = a17;
      v55 = a16 + 64;
      v56 = 1 << *(a16 + 32);
      v57 = -1;
      if (v56 < 64)
      {
        v57 = ~(-1 << v56);
      }

      v58 = v57 & *(a16 + 64);
      v59 = (v56 + 63) >> 6;
      v206 = a16;

      v60 = 0;
      v205 = a16 + 64;
      v203 = v59;
      if (v58)
      {
        while (1)
        {
          v61 = v60;
LABEL_31:
          v62 = __clz(__rbit64(v58)) | (v61 << 6);
          v63 = *(*(v206 + 48) + 8 * v62);
          v64 = (*(v206 + 56) + 16 * v62);
          v65 = v64[1];
          v207 = *v64;
          v66 = v213;

          v67 = v63;

          v68 = [v67 identifier];
          v69 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v71 = v70;

          *&v219 = v211;
          *(&v219 + 1) = v66;
          v220 = v69;
          v221 = v71;
          v222 = v207;
          v223 = v65;

          v29 = v210;
          v72 = v229;
          sub_100092450(&v219);
          v229 = v72;
          if (v72)
          {
            break;
          }

          v58 &= v58 - 1;

          swift_bridgeObjectRelease_n();

          v60 = v61;
          v55 = v205;
          v59 = v203;
          if (!v58)
          {
            goto LABEL_28;
          }
        }

        swift_bridgeObjectRelease_n();
      }

      else
      {
        while (1)
        {
LABEL_28:
          v61 = v60 + 1;
          if (__OFADD__(v60, 1))
          {
            __break(1u);
LABEL_128:
            v96 = v29;
            v142 = v211;
            v143 = v200;
            goto LABEL_129;
          }

          if (v61 >= v59)
          {
            break;
          }

          v58 = *(v55 + 8 * v61);
          ++v60;
          if (v58)
          {
            goto LABEL_31;
          }
        }

        v73 = v209;
        v74 = sub_1000232F4(v209);
        v75 = 0;
        v206 = v73 & 0xC000000000000001;
        v207 = v74;
        v205 = v73 & 0xFFFFFFFFFFFFFF8;
        v76 = &type metadata for String;
        v77 = v229;
        v78 = v213;
        while (v207 != v75)
        {
          if (v206)
          {
            v79 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v75 >= *(v205 + 16))
            {
              goto LABEL_147;
            }

            v79 = *(v209 + 8 * v75 + 32);
          }

          v80 = v79;
          if (__OFADD__(v75, 1))
          {
            __break(1u);
LABEL_147:
            __break(1u);
            goto LABEL_148;
          }

          v81 = v80;
          v82 = LNEntityMetadata.asJson(prettyPrinted:)(0);
          if (v83)
          {
LABEL_59:

LABEL_60:

            goto LABEL_4;
          }

          if (qword_100198450 != -1)
          {
            swift_once();
          }

          memcpy(v217, &unk_10019C518, sizeof(v217));
          memcpy(v216, &unk_10019C518, sizeof(v216));
          sub_1000196B0(v217, v215);
          if (qword_100198458 != -1)
          {
            swift_once();
          }

          v229 = 0;
          v214._countAndFlagsBits = v211;
          v214._object = v78;
          <- infix<A>(_:_:)();
          sub_10002EB80(&unk_10019AAE0, &unk_10014BE30);
          v84 = swift_allocObject();
          *(v84 + 16) = v212;
          if (qword_100198468 != -1)
          {
            swift_once();
          }

          v214 = v82;
          v85 = v76;
          <- infix<A>(_:_:)();

          v86 = QueryType.insert(_:_:)(v215, v84);
          v88 = v87;
          v90 = v89;
          swift_setDeallocating();
          sub_1000B3030();
          sub_10002EBC8(v215);
          memcpy(v218, v216, sizeof(v218));
          sub_10001970C(v218);
          v231.template._countAndFlagsBits = v86;
          v231.template._object = v88;
          v231.bindings._rawValue = v90;
          Connection.run(_:)(v231);
          if (v91)
          {

            return;
          }

          v78 = v213;

          ++v75;
          v76 = v85;
          v77 = 0;
        }

        v92 = v77;
        v93 = v204;
        v94 = sub_1000232F4(v204);
        v95 = 0;
        v96 = v93 & 0xC000000000000001;
        v97 = v93 & 0xFFFFFFFFFFFFFF8;
        v98 = v210;
        while (v94 != v95)
        {
          if (v96)
          {
            v99 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v95 >= *(v97 + 16))
            {
              goto LABEL_169;
            }

            v99 = *(v204 + 8 * v95 + 32);
          }

          v100 = v99;
          if (__OFADD__(v95, 1))
          {
            __break(1u);
LABEL_169:
            __break(1u);
            goto LABEL_170;
          }

          v101 = v100;
          sub_10007F178(v208, v98, v211, v78, v101);
          if (v92)
          {

            return;
          }

          ++v95;
        }

        v102 = v202;
        v229 = sub_1000232F4(v202);
        v103 = 0;
        v208 = v102 & 0xFFFFFFFFFFFFFF8;
        v209 = v102 & 0xC000000000000001;
        v104 = v92;
        while (1)
        {
          v105 = v211;
          if (v229 == v103)
          {
            break;
          }

          v106 = v213;
          if (v209)
          {
            v107 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v103 >= *(v208 + 16))
            {
              goto LABEL_183;
            }

            v107 = *(v202 + 8 * v103 + 32);
          }

          v108 = v107;
          if (__OFADD__(v103, 1))
          {
            goto LABEL_182;
          }

          v81 = v108;
          v109 = LNQueryMetadata.asJson(prettyPrinted:sortKeys:)(0, 1);
          if (v110)
          {
            goto LABEL_59;
          }

          if (qword_100198490 != -1)
          {
            swift_once();
          }

          memcpy(v217, &unk_10019C710, sizeof(v217));
          memcpy(v216, &unk_10019C710, sizeof(v216));
          sub_1000196B0(v217, v215);
          if (qword_100198498 != -1)
          {
            swift_once();
          }

          v214._countAndFlagsBits = v105;
          v214._object = v106;
          <- infix<A>(_:_:)();
          sub_10002EB80(&unk_10019AAE0, &unk_10014BE30);
          v111 = swift_allocObject();
          *(v111 + 16) = v212;
          if (qword_1001984A8 != -1)
          {
            swift_once();
          }

          v214 = v109;
          <- infix<A>(_:_:)();

          v112 = QueryType.insert(_:_:)(v215, v111);
          v114 = v113;
          v116 = v115;
          swift_setDeallocating();
          sub_1000B3030();
          sub_10002EBC8(v215);
          memcpy(v218, v216, sizeof(v218));
          sub_10001970C(v218);
          v232.template._countAndFlagsBits = v112;
          v232.template._object = v114;
          v232.bindings._rawValue = v116;
          Connection.run(_:)(v232);
          v104 = v117;
          if (v117)
          {
LABEL_166:

            goto LABEL_60;
          }

          ++v103;
        }

        v29 = v104;
        v124 = v201;
        v125 = sub_1000232F4(v201);
        v126 = 0;
        v127 = v124 & 0xC000000000000001;
        v128 = v124 & 0xFFFFFFFFFFFFFF8;
        v129 = v213;
        while (v125 != v126)
        {
          if (v127)
          {
            v130 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v126 >= *(v128 + 16))
            {
              goto LABEL_186;
            }

            v130 = *(v201 + 8 * v126 + 32);
          }

          v131 = v130;
          if (__OFADD__(v126, 1))
          {
            goto LABEL_185;
          }

          v132 = v131;
          sub_1000FDED8(v211, v129);
          if (v29)
          {

            return;
          }

          ++v126;
        }

        v140 = v199;
        v229 = sub_1000232F4(v199);
        if (!v229)
        {
          goto LABEL_128;
        }

        v141 = 0;
        v208 = v140 & 0xFFFFFFFFFFFFFF8;
        v209 = v140 & 0xC000000000000001;
        v96 = v29;
        while (1)
        {
          v142 = v211;
          v143 = v200;
          if (v229 == v141)
          {
            break;
          }

          v144 = v213;
          if (v209)
          {
            v145 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v141 >= *(v208 + 16))
            {
              goto LABEL_188;
            }

            v145 = *(v199 + 8 * v141 + 32);
          }

          v146 = v145;
          if (__OFADD__(v141, 1))
          {
            goto LABEL_187;
          }

          type metadata accessor for CodingUserInfoKey();

          v81 = v146;
          sub_10002EB80(&unk_100198750, &unk_1001518C0);
          v147 = Dictionary.init(dictionaryLiteral:)();
          v148 = LNAssistantIntentMetadata.asJson(userInfo:)(v147);
          if (v149)
          {
LABEL_167:

            goto LABEL_60;
          }

          if (qword_100198208 != -1)
          {
            swift_once();
          }

          memcpy(v217, &unk_10019DC48, sizeof(v217));
          memcpy(v216, &unk_10019DC48, sizeof(v216));
          sub_1000196B0(v217, v215);
          if (qword_100198210 != -1)
          {
            swift_once();
          }

          v214._countAndFlagsBits = v142;
          v214._object = v144;
          <- infix<A>(_:_:)();
          sub_10002EB80(&unk_10019AAE0, &unk_10014BE30);
          v150 = swift_allocObject();
          *(v150 + 16) = v212;
          if (qword_100198218 != -1)
          {
            swift_once();
          }

          v214 = v148;
          <- infix<A>(_:_:)();

          v151 = QueryType.insert(_:_:)(v215, v150);
          v153 = v152;
          v155 = v154;
          swift_setDeallocating();
          sub_1000B3030();
          sub_10002EBC8(v215);
          memcpy(v218, v216, sizeof(v218));
          sub_10001970C(v218);
          v233.template._countAndFlagsBits = v151;
          v233.template._object = v153;
          v233.bindings._rawValue = v155;
          Connection.run(_:)(v233);
          v96 = v156;
          if (v156)
          {
            goto LABEL_166;
          }

          ++v141;
        }

LABEL_129:
        v157 = v143;
        v229 = sub_1000232F4(v143);
        if (v229)
        {
          v158 = 0;
          v208 = v157 & 0xFFFFFFFFFFFFFF8;
          v209 = v157 & 0xC000000000000001;
          while (v229 != v158)
          {
            v159 = v213;
            if (v209)
            {
              v160 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              if (v158 >= *(v208 + 16))
              {
                goto LABEL_190;
              }

              v160 = *(v157 + 8 * v158 + 32);
            }

            v161 = v160;
            if (__OFADD__(v158, 1))
            {
              goto LABEL_189;
            }

            type metadata accessor for CodingUserInfoKey();

            v81 = v161;
            sub_10002EB80(&unk_100198750, &unk_1001518C0);
            v162 = Dictionary.init(dictionaryLiteral:)();
            v163 = LNAssistantIntentNegativePhrases.asJson(userInfo:)(v162);
            if (v164)
            {
              goto LABEL_167;
            }

            if (qword_100198390 != -1)
            {
              swift_once();
            }

            memcpy(v217, &unk_10019E248, sizeof(v217));
            memcpy(v216, &unk_10019E248, sizeof(v216));
            sub_1000196B0(v217, v215);
            if (qword_100198398 != -1)
            {
              swift_once();
            }

            v214._countAndFlagsBits = v142;
            v214._object = v159;
            <- infix<A>(_:_:)();
            sub_10002EB80(&unk_10019AAE0, &unk_10014BE30);
            v165 = swift_allocObject();
            *(v165 + 16) = v212;
            if (qword_1001983A0 != -1)
            {
              swift_once();
            }

            v214 = v163;
            <- infix<A>(_:_:)();

            v166 = QueryType.insert(_:_:)(v215, v165);
            v168 = v167;
            v170 = v169;
            swift_setDeallocating();
            sub_1000B3030();
            sub_10002EBC8(v215);
            memcpy(v218, v216, sizeof(v218));
            sub_10001970C(v218);
            v234.template._countAndFlagsBits = v166;
            v234.template._object = v168;
            v234.bindings._rawValue = v170;
            Connection.run(_:)(v234);
            v96 = v171;
            if (v171)
            {
              goto LABEL_166;
            }

            ++v158;
            v142 = v211;
            v157 = v200;
          }
        }

        v172 = v197;
        v229 = sub_1000232F4(v197);
        if (v229)
        {
          v173 = 0;
          v208 = v172 & 0xFFFFFFFFFFFFFF8;
          v209 = v172 & 0xC000000000000001;
          while (v229 != v173)
          {
            v174 = v213;
            if (v209)
            {
              v175 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              if (v173 >= *(v208 + 16))
              {
                goto LABEL_194;
              }

              v175 = *(v172 + 8 * v173 + 32);
            }

            v176 = v175;
            if (__OFADD__(v173, 1))
            {
              goto LABEL_193;
            }

            type metadata accessor for CodingUserInfoKey();

            v81 = v176;
            sub_10002EB80(&unk_100198750, &unk_1001518C0);
            v177 = Dictionary.init(dictionaryLiteral:)();
            v178 = LNAssistantAppEntityMetadata.asJson(userInfo:)(v177);
            if (v179)
            {
              goto LABEL_167;
            }

            if (qword_100198110 != -1)
            {
              swift_once();
            }

            memcpy(v217, &unk_10019D958, sizeof(v217));
            memcpy(v216, &unk_10019D958, sizeof(v216));
            sub_1000196B0(v217, v215);
            if (qword_100198118 != -1)
            {
              swift_once();
            }

            v214._countAndFlagsBits = v142;
            v214._object = v174;
            <- infix<A>(_:_:)();
            sub_10002EB80(&unk_10019AAE0, &unk_10014BE30);
            v180 = swift_allocObject();
            *(v180 + 16) = v212;
            if (qword_100198120 != -1)
            {
              swift_once();
            }

            v214 = v178;
            <- infix<A>(_:_:)();

            v181 = QueryType.insert(_:_:)(v215, v180);
            v183 = v182;
            v185 = v184;
            swift_setDeallocating();
            sub_1000B3030();
            sub_10002EBC8(v215);
            memcpy(v218, v216, sizeof(v218));
            sub_10001970C(v218);
            v235.template._countAndFlagsBits = v181;
            v235.template._object = v183;
            v235.bindings._rawValue = v185;
            Connection.run(_:)(v235);
            v96 = v186;
            if (v186)
            {
              goto LABEL_166;
            }

            ++v173;
            v142 = v211;
            v172 = v197;
          }
        }

LABEL_170:
        v187 = v198;
        v188 = sub_1000232F4(v198);
        v189 = 0;
        v229 = v187 & 0xC000000000000001;
        v190 = v187 & 0xFFFFFFFFFFFFFF8;
        while (v188 != v189)
        {
          if (v229)
          {
            v191 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v189 >= *(v190 + 16))
            {
              goto LABEL_192;
            }

            v191 = *(v198 + 8 * v189 + 32);
          }

          if (__OFADD__(v189, 1))
          {
            goto LABEL_191;
          }

          v192 = v191;
          v193 = [v192 phraseMetadata];
          v194 = [v193 actionIdentifier];

          static String._unconditionallyBridgeFromObjectiveC(_:)();
          objc_allocWithZone(LNAssistantSuggestionPhraseQuery);

          v195 = sub_100083984();
          sub_10002D998(v195, v192, v210);
          if (v96)
          {

            return;
          }

          ++v189;
        }

LABEL_4:
      }
    }

    else
    {
      *&v225 = a2;
      *(&v225 + 1) = a3;
      v226 = a11;
      v227 = a12;
      v228 = a13;
      sub_10010C868(&v225);
      v41 = 0;
      v207 = v229 & 0xC000000000000001;
      v203 = a15;
      v202 = a14;
      v204 = v229 & 0xFFFFFFFFFFFFFF8;
      while (v209 != v41)
      {
        if (v207)
        {
          v42 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v41 >= *(v204 + 16))
          {
            goto LABEL_181;
          }

          v42 = *(v229 + 8 * v41 + 32);
        }

        v43 = v42;
        if (__OFADD__(v41, 1))
        {
          __break(1u);
LABEL_181:
          __break(1u);
LABEL_182:
          __break(1u);
LABEL_183:
          __break(1u);
          goto LABEL_184;
        }

        type metadata accessor for CodingUserInfoKey();

        v44 = v43;
        sub_10002EB80(&unk_100198750, &unk_1001518C0);
        v45 = Dictionary.init(dictionaryLiteral:)();
        v46 = LNAutoShortcutMetadata.asJson(userInfo:)(v45);
        if (v47)
        {
          goto LABEL_86;
        }

        if (qword_1001980C8 != -1)
        {
          swift_once();
        }

        memcpy(v217, &unk_10019D848, sizeof(v217));
        memcpy(v216, &unk_10019D848, sizeof(v216));
        sub_1000196B0(v217, v215);
        if (qword_1001980D0 != -1)
        {
          swift_once();
        }

        v214._countAndFlagsBits = v211;
        v214._object = v213;
        <- infix<A>(_:_:)();
        sub_10002EB80(&unk_10019AAE0, &unk_10014BE30);
        v48 = swift_allocObject();
        *(v48 + 16) = v212;
        if (qword_1001980D8 != -1)
        {
          swift_once();
        }

        v214 = v46;
        <- infix<A>(_:_:)();

        v49 = QueryType.insert(_:_:)(v215, v48);
        v51 = v50;
        v53 = v52;
        swift_setDeallocating();
        sub_1000B3030();
        sub_10002EBC8(v215);
        memcpy(v218, v216, sizeof(v218));
        sub_10001970C(v218);
        v230.template._countAndFlagsBits = v49;
        v230.template._object = v51;
        v230.bindings._rawValue = v53;
        v33 = v210;
        Connection.run(_:)(v230);
        if (v54)
        {

LABEL_86:

          goto LABEL_4;
        }

        ++v41;
      }

      v229 = 0;
      v118 = 0;
      v119 = v202;
      v29 = v203;
      v120 = *(v202 + 16);
      v122 = v205;
      v121 = v206;
      while (v120 != v118)
      {
        sub_100083E3C(v119 + ((*(v121 + 80) + 32) & ~*(v121 + 80)) + *(v121 + 72) * v118, v122, type metadata accessor for LNAppShortcutParameterRecord);
        v123 = v229;
        sub_100067070();
        v229 = v123;
        if (v123)
        {
          sub_100083F2C(v122, type metadata accessor for LNAppShortcutParameterRecord);

          return;
        }

        ++v118;
        sub_100083F2C(v122, type metadata accessor for LNAppShortcutParameterRecord);
      }

      v133 = 1 << v29[32];
      v134 = -1;
      if (v133 < 64)
      {
        v134 = ~(-1 << v133);
      }

      v135 = v134 & *(v29 + 7);
      v136 = (v133 + 63) >> 6;

      v137 = 0;
      if (!v135)
      {
LABEL_101:
        while (1)
        {
          v138 = v137 + 1;
          if (__OFADD__(v137, 1))
          {
            break;
          }

          if (v138 >= v136)
          {

            goto LABEL_24;
          }

          v135 = *&v29[8 * v138 + 56];
          ++v137;
          if (v135)
          {
            goto LABEL_104;
          }
        }

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
LABEL_189:
        __break(1u);
LABEL_190:
        __break(1u);
LABEL_191:
        __break(1u);
LABEL_192:
        __break(1u);
LABEL_193:
        __break(1u);
LABEL_194:
        __break(1u);
        return;
      }

      while (1)
      {
        v138 = v137;
LABEL_104:
        memcpy(__dst, (*(v29 + 6) + 104 * (__clz(__rbit64(v135)) | (v138 << 6))), sizeof(__dst));
        sub_100037C7C(__dst, v218);
        v139 = v229;
        sub_100096494(__dst, v33);
        v229 = v139;
        if (v139)
        {
          break;
        }

        v135 &= v135 - 1;
        sub_10004AF54(__dst);
        v137 = v138;
        if (!v135)
        {
          goto LABEL_101;
        }
      }

LABEL_148:

      sub_10004AF54(__dst);
    }
  }
}

uint64_t sub_10007F030(void **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_10002EB80(&qword_1001990C0, &unk_10014E200);
  __chkstk_darwin(v9 - 8);
  v11 = &v17 - v10;
  v12 = type metadata accessor for LNActionRecord(0);
  __chkstk_darwin(v12 - 8);
  v14 = (&v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = *a1;
  sub_100083E9C(a5, v11);

  sub_10001446C(a3, a4, v11, v15, v14);
  sub_100064864(v14);
  return sub_100083F2C(v14, type metadata accessor for LNActionRecord);
}

uint64_t sub_10007F178(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  sub_1001121D4(a3, a4);
  if (v5)
  {
    v27 = v5;
    swift_errorRetain();
    sub_10002EB80(&unk_100198760, &qword_10014F3C0);
    if (swift_dynamicCast())
    {

      v8 = v23;
      v7 = v24;
      v9 = v25;
      v10 = v26;
      if (v25 == 19)
      {
        if (qword_100198200 != -1)
        {
          swift_once();
        }

        v11 = type metadata accessor for Logger();
        sub_10000347C(v11, qword_10019DBF0);

        v12 = Logger.logObject.getter();
        v13 = static os_log_type_t.debug.getter();

        if (os_log_type_enabled(v12, v13))
        {
          v14 = swift_slowAlloc();
          v22 = swift_slowAlloc();
          *v14 = 136315394;
          *(v14 + 4) = sub_100004C50(0xD00000000000002ELL, 0x8000000100155B40, &v22);
          *(v14 + 12) = 2080;
          v15 = Result.description.getter(v8, v7, 19, v10);
          log = v12;
          v17 = v13;
          v18 = sub_100004C50(v15, v16, &v22);

          *(v14 + 14) = v18;
          _os_log_impl(&_mh_execute_header, log, v17, "%s ignoring error: %s", v14, 0x16u);
          swift_arrayDestroy();
        }

        else
        {
        }

        goto LABEL_13;
      }

      sub_10002EC1C();
      swift_allocError();
      *v19 = v23;
      *(v19 + 8) = v7;
      *(v19 + 16) = v9;
      *(v19 + 24) = v10;
      swift_willThrow();
    }
  }

LABEL_13:
}

uint64_t sub_10007F45C(uint64_t a1)
{
  sub_10002EB80(&unk_100198B60, &qword_10014E3C0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10014F750;
  *(inited + 32) = 0x736E6F69746361;
  *(inited + 40) = 0xE700000000000000;
  *(inited + 48) = 0xD000000000000012;
  *(inited + 56) = 0x8000000100154CC0;
  *(inited + 64) = 0x6E61747369737361;
  *(inited + 72) = 0xEF746E65746E4974;
  *(inited + 80) = 0xD00000000000001ELL;
  *(inited + 88) = 0x8000000100155A20;
  *(inited + 96) = 0x73656C646E7562;
  *(inited + 104) = 0xE700000000000000;
  *(inited + 112) = 0x6769666E6F63;
  *(inited + 120) = 0xE600000000000000;
  *(inited + 128) = 0xD00000000000001ELL;
  *(inited + 136) = 0x8000000100155A40;
  *(inited + 144) = 0x7365697469746E65;
  *(inited + 152) = 0xE800000000000000;
  strcpy((inited + 160), "examplePhrases");
  *(inited + 175) = -18;
  *(inited + 176) = 0x73656972657571;
  *(inited + 184) = 0xE700000000000000;
  *(inited + 192) = 0x736D756E65;
  *(inited + 200) = 0xE500000000000000;
  *(inited + 208) = 0xD000000000000019;
  *(inited + 216) = 0x8000000100155A60;
  strcpy((inited + 224), "appShortcuts");
  *(inited + 237) = 0;
  *(inited + 238) = -5120;
  *(inited + 240) = 0xD000000000000015;
  *(inited + 248) = 0x80000001001553B0;
  *(inited + 256) = 0xD000000000000010;
  *(inited + 264) = 0x8000000100154C00;
  *(inited + 272) = 0xD000000000000010;
  *(inited + 280) = 0x8000000100155A80;
  *(inited + 288) = 0x746E6176656C6572;
  *(inited + 296) = 0xEF73746E65746E49;
  *(inited + 304) = 0xD000000000000010;
  *(inited + 312) = 0x8000000100155AA0;
  *(inited + 320) = 0xD000000000000017;
  *(inited + 328) = 0x8000000100155580;
  *(inited + 336) = 0xD00000000000001ALL;
  *(inited + 344) = 0x80000001001545A0;
  v4[2] = inited;
  v4[3] = a1;
  Connection.transaction(_:block:)(0, sub_100083A08, v4);
  swift_setDeallocating();
  return sub_1000B30FC();
}

void sub_10007F6FC(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = a1 + 40;
  if (v2)
  {
    while (1)
    {

      Table.init(_:database:)();
      memcpy(__dst, __src, sizeof(__dst));
      SchemaType.drop(ifExists:)(1);
      memcpy(v7, __dst, sizeof(v7));
      sub_10001970C(v7);
      Connection.run(_:_:)();
      if (v1)
      {
        break;
      }

      v3 += 16;
      if (!--v2)
      {
        goto LABEL_4;
      }
    }
  }

  else
  {
LABEL_4:
    if (qword_100198400 != -1)
    {
      swift_once();
    }

    Connection.execute(_:)(xmmword_10019E528);
    if (v4)
    {
      sub_100083A24();
      swift_allocError();
      *v5 = v4;
      *(v5 + 8) = 1;
      swift_willThrow();
    }
  }
}

uint64_t sub_10007F8D0()
{
  sub_1000128F0();
  sub_10002EB80(&unk_100198B60, &qword_10014E3C0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_10014CE90;
  *(v3 + 32) = v2;
  *(v3 + 40) = v1;

  sub_10007F9BC(v3);
  if (!v0)
  {
  }

  type metadata accessor for Schema.RuntimeError(0);
  sub_100002B5C();
  sub_100084084(v4, v5);
  sub_100005244();
  swift_allocError();
  sub_100012058();
  sub_10001D5E0();
  swift_willThrow();
}

uint64_t sub_10007F9BC(uint64_t a1)
{
  v5[3] = a1;
  result = Connection.transaction(_:block:)(0, sub_100083A78, v5);
  if (v1)
  {
    type metadata accessor for Schema.RuntimeError(0);
    sub_100002B5C();
    sub_100084084(v3, v4);
    sub_100005244();
    swift_allocError();
    sub_100012058();
    sub_10001D5E0();
    swift_willThrow();
  }

  return result;
}

void sub_10007FB8C(uint64_t a1)
{
  sub_100062140(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

double sub_10007FC3C()
{
  v0 = [objc_opt_self() standardUserDefaults];
  sub_1000132B4();
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 objectForKey:v1];

  if (v2)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v10 = 0u;
    v11 = 0u;
  }

  v12[0] = v10;
  v12[1] = v11;
  if (!*(&v11 + 1))
  {
    sub_100039B5C(v12, &qword_1001992F0, &qword_10014E000);
    return 300.0;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    return 300.0;
  }

  if (qword_100198200 != -1)
  {
    sub_100007F64();
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_10000347C(v3, qword_10019DBF0);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (sub_100084504(v5))
  {
    v6 = sub_100007764();
    *v6 = 134217984;
    *(v6 + 4) = v9;
    sub_100012F74(&_mh_execute_header, v7, v5, "Using user defined audit delay %lds");
    sub_100004DE4();
  }

  return v9;
}

void sub_10007FDEC()
{
  v1 = *(v0 + OBJC_IVAR____TtC10LinkDaemon13MetadataStore_provider);
  sub_1000188D4();
  sub_1000A44FC();
}

void sub_10007FEA4()
{
  sub_1000046A0();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = _Block_copy(v6);
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;
  _Block_copy(v7);
  v11 = v5;
  sub_10007FFA0(v8, v10, v11, v7, v3, v1);

  _Block_release(v7);

  sub_100017F88();
}

void sub_10007FFA0(uint64_t a1, uint64_t a2, uint64_t a3, const void *a4, uint64_t a5, void (*a6)(uint64_t, uint64_t, uint64_t, void *))
{
  v7[2] = a4;
  a6(a1, a2, a5, v7);
  _Block_release(a4);
}

id sub_1000801B0()
{
  sub_1000046A0();
  v8 = sub_10001D9E4(v5, v6, v7);
  v9 = v1;
  sub_10001DCDC();
  sub_10001E0E8();

  if (v8)
  {
    if (v0)
    {
      _convertErrorToNSError(_:)();
      sub_100012998();
      v10 = v1;
      sub_10000E7EC();
    }

    else
    {
    }
  }

  else
  {
    sub_100003D44(0, v3, v2);
    Dictionary._bridgeToObjectiveC()();
    sub_100010D28();
  }

  sub_100017F88();

  return v11;
}

void sub_1000805FC()
{
  sub_1000067D4();
  v2 = *(v0 + OBJC_IVAR____TtC10LinkDaemon13MetadataStore_provider);

  v3 = v2;
  v4 = v1;
  sub_1000A4AE0();
}

void sub_100080928()
{
  v1 = *(v0 + OBJC_IVAR____TtC10LinkDaemon13MetadataStore_provider);
  sub_1000188D4();
  sub_1000A75A8();
}

void sub_100080A1C()
{
  v1 = *(v0 + OBJC_IVAR____TtC10LinkDaemon13MetadataStore_provider);
  sub_1000188D4();
  sub_1000A7FE8(v2);
}

void sub_100080B24()
{
  v1 = *(v0 + OBJC_IVAR____TtC10LinkDaemon13MetadataStore_provider);
  sub_1000188D4();
  sub_1000A84C8();
}

void sub_100080B84()
{
  sub_1000067D4();
  v1 = *(v0 + OBJC_IVAR____TtC10LinkDaemon13MetadataStore_provider);

  v1;

  sub_1000071CC();
  sub_1000A8B34();
}

id sub_100080D5C()
{
  sub_1000046A0();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_1000215C0();
  v10 = v6;
  sub_1000287E8(v7, v9, v4, v0, v2);

  sub_100017F88();

  return v11;
}

void sub_100080E70(uint64_t a1, uint64_t a2, void *a3)
{
  sub_1000128F0();
  v6 = *(v3 + OBJC_IVAR____TtC10LinkDaemon13MetadataStore_provider);
  v7 = a3;
  v8 = v6;
  v9 = v4;
  sub_1000A8518();
}

void sub_100081000()
{
  v1 = *(v0 + OBJC_IVAR____TtC10LinkDaemon13MetadataStore_provider);
  sub_1000188D4();
  sub_1000A95B8();
}

id sub_100081088()
{
  sub_1000046A0();
  v8 = sub_10001D9E4(v5, v6, v7);
  v9 = v1;
  sub_10001DCDC();
  sub_10001E0E8();

  if (v8)
  {
    if (v0)
    {
      _convertErrorToNSError(_:)();
      sub_100012998();
      v10 = v1;
      sub_10000E7EC();
    }

    else
    {
    }
  }

  else
  {
    sub_100003D44(0, v3, v2);
    sub_10001AAC8();
    Array._bridgeToObjectiveC()();
    sub_100010D28();
  }

  sub_100017F88();

  return v11;
}

void sub_100081164()
{
  v1 = *(v0 + OBJC_IVAR____TtC10LinkDaemon13MetadataStore_provider);
  sub_1000188D4();
  sub_1000A9CF4();
}

id sub_1000811C4()
{
  sub_1000046A0();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v5();

  sub_10002EB80(v3, v1);
  Dictionary._bridgeToObjectiveC()();
  sub_100010D28();
  sub_100017F88();

  return v8;
}

uint64_t sub_100081300(uint64_t a1, uint64_t a2, uint64_t (*a3)(id, id, uint64_t, uint64_t))
{
  sub_1000128F0();
  v7 = *(v3 + OBJC_IVAR____TtC10LinkDaemon13MetadataStore_provider);

  v8 = v7;
  return a3(v8, v8, v5, v4);
}

id sub_100081378(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(id, id, uint64_t, uint64_t))
{
  if (a3)
  {
    v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = v8;
  }

  else
  {
    v7 = 0;
    v9 = 0;
  }

  v10 = a1;
  sub_100081300(v7, v9, a5);

  Array._bridgeToObjectiveC()();
  sub_100010D28();

  return 0;
}

uint64_t sub_10008160C(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  sub_1000128F0();
  v5 = *(v3 + OBJC_IVAR____TtC10LinkDaemon13MetadataStore_provider);

  v6 = sub_10000C900();
  return a3(v6);
}

uint64_t sub_100081698(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v4 = *(v2 + OBJC_IVAR____TtC10LinkDaemon13MetadataStore_provider);

  v5 = sub_10000C900();
  return a2(v5);
}

uint64_t sub_100081860()
{
  sub_1000070C8();
  v0 = type metadata accessor for MetadataError();
  sub_100084084(&qword_10019B0F0, &type metadata accessor for MetadataError);
  sub_100005244();
  swift_allocError();
  (*(*(v0 - 8) + 104))(v1, enum case for MetadataError.recordNotFound(_:), v0);
  swift_willThrow();
  sub_100003A00();

  return v2();
}

uint64_t sub_1000819D4(uint64_t a1, void *aBlock, void *a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v3[4] = v5;
  v6 = a3;
  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_100081A8C;

  return sub_100081848();
}

uint64_t sub_100081A8C()
{
  sub_1000036C4();
  v2 = v0;
  sub_1000036D0();
  v4 = v3;
  sub_100007A64();
  *v5 = v4;
  v7 = *(v6 + 16);
  v8 = *v1;
  sub_10000298C();
  *v9 = v8;

  if (v2)
  {
    v10 = _convertErrorToNSError(_:)();

    v11 = 0;
    v12 = v10;
  }

  else
  {
    v11 = String._bridgeToObjectiveC()();

    v10 = 0;
    v12 = v11;
  }

  v13 = *(v4 + 24);
  (v13)[2](v13, v11, v10);

  _Block_release(v13);
  sub_100003A00();

  return v14();
}

void sub_100081C24()
{
  sub_1000067D4();
  v1 = *(v0 + OBJC_IVAR____TtC10LinkDaemon13MetadataStore_provider);

  sub_10000C900();
  sub_1000A6A88();
}

void *sub_100081F1C(uint64_t a1, uint64_t a2)
{
  v8 = _swiftEmptyDictionarySingleton;
  v4 = sub_10010E6C0(a1, a2, *(v2 + OBJC_IVAR____TtC10LinkDaemon13MetadataStore_connection));
  if (v3)
  {
    type metadata accessor for Schema.RuntimeError(0);
    sub_100002B5C();
    sub_100084084(v5, v6);
    sub_100005244();
    swift_allocError();
    sub_100012058();
    sub_10001D5E0();
    swift_willThrow();
  }

  else
  {
    sub_100078DBC(v4, &v8);

    return v8;
  }
}

uint64_t sub_100081FDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v10 = v5;
  sub_1000067D4();

  sub_10006D7F8(a5, v9, v8, v7, v6, v15);
  if (v10)
  {
    type metadata accessor for Schema.RuntimeError(0);
    sub_100002B5C();
    sub_100084084(v12, v13);
    sub_100005244();
    swift_allocError();
    sub_100012058();
    sub_10001D5E0();
    swift_willThrow();
  }

  else
  {
    sub_10010E91C(v15);
    return sub_100083F80(v15);
  }
}

void sub_1000820E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1000128F0();

  sub_1000B8BA0(v4, a3);
  if (!v3)
  {
    v7 = sub_1000232F4(v5);
    v8 = 0;
    v12 = v5 & 0xC000000000000001;
    while (v7 != v8)
    {
      if (v12)
      {
        v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v8 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_12;
        }

        v9 = *(v5 + 8 * v8 + 32);
      }

      if (__OFADD__(v8, 1))
      {
        __break(1u);
LABEL_12:
        __break(1u);
        return;
      }

      v10 = v9;

      sub_1000B8D48(v10, v4, a3, v11);
      sub_1000B8F6C(v11);
      sub_100084030(v11);

      ++v8;
    }
  }
}

uint64_t sub_100082244(uint64_t a1)
{
  swift_defaultActor_initialize();
  v3 = OBJC_IVAR____TtC10LinkDaemon31ConnectionTransactionSerializer_logger;
  if (qword_1001982F8 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  v5 = sub_10000347C(v4, qword_10019E020);
  (*(*(v4 - 8) + 16))(v1 + v3, v5, v4);
  *(v1 + OBJC_IVAR____TtC10LinkDaemon31ConnectionTransactionSerializer_transactionQueue) = _swiftEmptyArrayStorage;
  *(v1 + OBJC_IVAR____TtC10LinkDaemon31ConnectionTransactionSerializer_processingTask) = 0;
  *(v1 + OBJC_IVAR____TtC10LinkDaemon31ConnectionTransactionSerializer_count) = 0;
  *(v1 + OBJC_IVAR____TtC10LinkDaemon31ConnectionTransactionSerializer_connection) = a1;
  return v1;
}

uint64_t sub_100082334(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  return sub_100011A00(sub_100082354, v2);
}

uint64_t sub_100082354()
{
  sub_1000036C4();
  v1 = *(v0 + 40);
  sub_100018730();
  v4 = sub_100084084(v2, v3);
  v5 = swift_task_alloc();
  *(v0 + 48) = v5;
  v6 = *(v0 + 24);
  *(v5 + 16) = v1;
  *(v5 + 24) = v6;
  v7 = swift_task_alloc();
  *(v0 + 56) = v7;
  v8 = sub_10002EB80(qword_10019AA78, &unk_10014F7F0);
  *v7 = v0;
  v7[1] = sub_100082490;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 16, v1, v4, 0xD000000000000013, 0x8000000100155BD0, sub_1000841D8, v5, v8);
}

uint64_t sub_100082490()
{
  sub_1000036A0();
  sub_1000036D0();
  v3 = v2;
  sub_100007A64();
  *v4 = v3;
  v5 = *v1;
  sub_10000298C();
  *v6 = v5;
  *(v3 + 64) = v0;

  if (v0)
  {
    v7 = *(v3 + 40);
    v8 = sub_1000825BC;
  }

  else
  {
    v9 = *(v3 + 40);

    v8 = sub_1000825A0;
    v7 = v9;
  }

  return _swift_task_switch(v8, v7, 0);
}

uint64_t sub_1000825BC()
{
  sub_1000036A0();

  sub_100003A00();

  return v0();
}