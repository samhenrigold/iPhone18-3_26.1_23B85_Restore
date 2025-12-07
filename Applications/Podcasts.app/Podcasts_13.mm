void sub_100222940(uint64_t a1, void *a2)
{
  v3 = v2;
  v205 = a2;
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = &v192 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v10 = &v192 - v9;
  __chkstk_darwin();
  v12 = &v192 - v11;
  __chkstk_darwin();
  v194 = &v192 - v13;
  __chkstk_darwin();
  v199 = &v192 - v14;
  __chkstk_darwin();
  v16 = &v192 - v15;
  v219 = type metadata accessor for RemoteNonFollowedShow();
  v17 = *(v219 - 8);
  __chkstk_darwin();
  v204 = &v192 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v200 = &v192 - v19;
  __chkstk_darwin();
  __chkstk_darwin();
  v22 = &v192 - v21;
  v210 = *(a1 + 16);
  if (!v210)
  {
    v209 = _swiftEmptyArrayStorage;
    return;
  }

  v197 = v20;
  v208 = a1 + ((*(v17 + 80) + 32) & ~*(v17 + 80));
  v201 = OBJC_IVAR____TtC8Podcasts29NonFollowedShowsSyncProcessor_nonFollowedShowsSyncStorage;
  swift_beginAccess();
  v23 = 0;
  v203 = v8;
  v26 = *(v17 + 16);
  v24 = v17 + 16;
  v25 = v26;
  v212 = (v24 - 8);
  v220 = (v6 + 8);
  v209 = _swiftEmptyArrayStorage;
  v207 = *(v24 + 56);
  *&v27 = 136315394;
  v192 = v27;
  *&v27 = 136381955;
  v196 = v27;
  *&v27 = 136315138;
  v214 = v27;
  v217 = v5;
  v198 = v12;
  v202 = v16;
  v28 = v219;
  v215 = v24;
  v216 = v22;
  v213 = v26;
  v211 = v3;
  v193 = v10;
  while (1)
  {
    v218 = v23;
    v25(v22, v208 + v207 * v23, v28);
    v35 = RemoteNonFollowedShow.prioritizedIDs.getter();
    v222 = v35;
    sub_100168088(&qword_100578598, &qword_1004059D8);
    sub_100226254();
    if (Collection.isNotEmpty.getter())
    {
      break;
    }

    v67 = v203;
    static Logger.cloudSync.getter();
    v68 = v204;
    v25(v204, v22, v28);
    v69 = Logger.logObject.getter();
    v70 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v69, v70))
    {

      v71 = *v212;
      (*v212)(v68, v219);
      (*v220)(v67, v5);
      v71(v22, v219);
      v28 = v219;
      goto LABEL_36;
    }

    v29 = swift_slowAlloc();
    v221 = swift_slowAlloc();
    v222 = v221;
    *v29 = v214;
    v25(v200, v68, v28);
    v30 = String.init<A>(describing:)();
    v32 = v31;
    v33 = *v212;
    v22 = v216;
    (*v212)(v68, v219);
    v34 = sub_1000153E0(v30, v32, &v222);

    *(v29 + 4) = v34;
    v5 = v217;
    _os_log_impl(&_mh_execute_header, v69, v70, "[NonFollowedShows] Remote Implicit Follow received without any meaningful podcast ID. There is nothing we can do with this show: %s", v29, 0xCu);
    sub_100004590(v221);

    (*v220)(v67, v5);
    v33(v22, v219);
    v3 = v211;
    v28 = v219;
LABEL_4:
    v23 = v218 + 1;
    v25 = v213;
    if (v218 + 1 == v210)
    {
      return;
    }
  }

  v36 = *(v35 + 2);
  v221 = v205;

  if (!v36)
  {
    goto LABEL_19;
  }

  v37 = 0;
  v206 = v35;
  v38 = v35 + 48;
  while (1)
  {
    v39 = *(v38 - 2);
    if (!*v38)
    {
      v46 = [v221 podcastForStoreId:*(v38 - 2)];

      if (v46)
      {
        break;
      }

      goto LABEL_9;
    }

    v40 = *(v38 - 1);
    if (*v38 == 1)
    {

      static Logger.cloudSync.getter();

      v41 = Logger.logObject.getter();
      v42 = v16;
      v43 = static os_log_type_t.error.getter();
      sub_1001F876C(v39, v40, 1u);
      if (os_log_type_enabled(v41, v43))
      {
        v44 = swift_slowAlloc();
        v45 = swift_slowAlloc();
        v222 = v45;
        *v44 = v214;
        *(v44 + 4) = sub_1000153E0(v39, v40, &v222);
        _os_log_impl(&_mh_execute_header, v41, v43, "[NonFollowedShows] A remote podcast identified by a local ID as the UUID does not make any sense at all. Offending UUID: %s", v44, 0xCu);
        sub_100004590(v45);
        v5 = v217;
      }

      (*v220)(v42, v5);
      sub_1001F876C(v39, v40, 1u);
      v16 = v42;
      goto LABEL_9;
    }

    v47 = String._bridgeToObjectiveC()();
    v48 = [v221 podcastForFeedUrl:v47];

    sub_1001F876C(v39, v40, 2u);
    if (v48)
    {
      break;
    }

LABEL_9:
    v38 += 24;
    if (v36 == ++v37)
    {
      goto LABEL_18;
    }
  }

  v36 = v37;
LABEL_18:
  v3 = v211;
  v22 = v216;
  v35 = v206;
LABEL_19:
  v49 = *(v35 + 2);
  if (v36 == v49)
  {

    v50 = v198;
    static Logger.cloudSync.getter();
    v51 = static os_log_type_t.default.getter();
    v52 = v197;
    v53 = v219;
    v54 = v213;
    v213(v197, v22, v219);
    v55 = Logger.logObject.getter();
    if (os_log_type_enabled(v55, v51))
    {
      v56 = swift_slowAlloc();
      LODWORD(v195) = v51;
      v57 = v56;
      v206 = swift_slowAlloc();
      v222 = v206;
      *v57 = v192;
      v58 = Array.description.getter();
      v60 = v59;

      v61 = sub_1000153E0(v58, v60, &v222);
      v5 = v217;

      *(v57 + 4) = v61;
      *(v57 + 12) = 2080;
      v54(v200, v52, v53);
      v62 = String.init<A>(describing:)();
      v64 = v63;
      v65 = *v212;
      (*v212)(v52, v53);
      v66 = sub_1000153E0(v62, v64, &v222);

      *(v57 + 14) = v66;
      _os_log_impl(&_mh_execute_header, v55, v195, "[NonFollowedShows] Received Implicit Follow from sync which doesn't exist in this device, we must insert it as Implicitly Followed: IDs %s, remote show: %s", v57, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      v65 = *v212;
      (*v212)(v52, v53);
    }

    v89 = *v220;
    (*v220)(v50, v5);
    v3 = v211;
    sub_100004428(v211 + v201, &v222);
    v90 = v225;
    v91 = v226;
    sub_1000044A0(&v222, v225);
    v22 = v216;
    v92 = (*(v91 + 136))(v216, v221, v90, v91);
    sub_100004590(&v222);
    v93 = [v92 uuid];
    if (v93)
    {
      v221 = v65;
      v94 = v93;
      v95 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v97 = v96;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v209 = sub_100243134(0, *(v209 + 2) + 1, 1, v209);
      }

      v16 = v202;
      v99 = *(v209 + 2);
      v98 = *(v209 + 3);
      if (v99 >= v98 >> 1)
      {
        v209 = sub_100243134((v98 > 1), v99 + 1, 1, v209);
      }

      v100 = v219;
      (v221)(v22, v219);
      v101 = v209;
      *(v209 + 2) = v99 + 1;
      v102 = &v101[16 * v99];
      v28 = v100;
      *(v102 + 4) = v95;
      *(v102 + 5) = v97;
LABEL_36:
      v3 = v211;
      goto LABEL_4;
    }

    v104 = v193;
    static Logger.cloudSync.getter();
    v105 = v92;
    v106 = Logger.logObject.getter();
    v107 = static os_log_type_t.error.getter();
    v108 = os_log_type_enabled(v106, v107);
    v28 = v219;
    if (v108)
    {
      LODWORD(v206) = v107;
      v221 = v65;
      v109 = swift_slowAlloc();
      v195 = swift_slowAlloc();
      v227 = v195;
      *v109 = v196;
      v110 = [v105 title];
      if (v110)
      {
        v111 = v110;
        v112 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v114 = v113;
      }

      else
      {
        v112 = 0;
        v114 = 0;
      }

      v222 = v112;
      v223 = v114;
      sub_100168088(&qword_100574230, &qword_100401FE0);
      v156 = String.init<A>(describing:)();
      v158 = sub_1000153E0(v156, v157, &v227);

      *(v109 + 4) = v158;
      *(v109 + 12) = 2080;
      v159 = [v105 uuid];
      if (v159)
      {
        v160 = v159;
        v161 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v163 = v162;
      }

      else
      {
        v161 = 0;
        v163 = 0;
      }

      v222 = v161;
      v223 = v163;
      v164 = String.init<A>(describing:)();
      v166 = sub_1000153E0(v164, v165, &v227);

      *(v109 + 14) = v166;
      *(v109 + 22) = 2081;
      v222 = MTPodcast.adamId.getter();
      LOBYTE(v223) = v167 & 1;
      sub_100168088(&qword_1005785A8, qword_1004059E0);
      v168 = String.init<A>(describing:)();
      v170 = sub_1000153E0(v168, v169, &v227);

      *(v109 + 24) = v170;
      *(v109 + 32) = 1024;
      v171 = [v105 subscribed];

      *(v109 + 34) = v171;
      *(v109 + 38) = 1024;
      v172 = [v105 hidden];

      *(v109 + 40) = v172;
      *(v109 + 44) = 1024;
      v173 = [v105 isImplicitlyFollowed];

      *(v109 + 46) = v173;
      _os_log_impl(&_mh_execute_header, v106, v206, "[NonFollowedShows] New inserted podcast has no uuid: %{private}s, uuid: %s, adamID: %{private}s, isFollowed: %{BOOL}d, isHidden: %{BOOL}d, isImplicitlyFollowed: %{BOOL}d.", v109, 0x32u);
      swift_arrayDestroy();

      v5 = v217;
      v89(v193, v217);
      v22 = v216;
      (v221)(v216, v28);
    }

    else
    {

      v89(v104, v5);
      v22 = v216;
      v65(v216, v28);
    }

LABEL_68:
    v16 = v202;
    goto LABEL_4;
  }

  if (v36 >= v49)
  {
    __break(1u);
  }

  else
  {
    v72 = &v35[24 * v36 + 32];
    v74 = *(v72 + 8);
    v75 = *(v72 + 16);
    v222 = *v72;
    v73 = v222;
    v223 = v74;
    v224 = v75;
    sub_1002262B8(v222, v74, v75);
    v76 = v221;
    sub_1002243E0(&v222, v221, &v227);
    sub_1001F876C(v73, v74, v75);
    v77 = v227;

    if (v77)
    {
      v78 = v77;
      swift_bridgeObjectRelease_n();
      v79 = v199;
      static Logger.cloudSync.getter();
      v80 = static os_log_type_t.default.getter();
      v81 = v78;
      v82 = Logger.logObject.getter();
      if (os_log_type_enabled(v82, v80))
      {
        v83 = swift_slowAlloc();
        v221 = swift_slowAlloc();
        v227 = v221;
        *v83 = v196;
        v84 = [v81 title];
        if (v84)
        {
          v85 = v84;
          v86 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v88 = v87;
        }

        else
        {
          v86 = 0;
          v88 = 0;
        }

        v28 = v219;
        v222 = v86;
        v223 = v88;
        sub_100168088(&qword_100574230, &qword_100401FE0);
        v115 = String.init<A>(describing:)();
        v117 = sub_1000153E0(v115, v116, &v227);

        *(v83 + 4) = v117;
        *(v83 + 12) = 2080;
        v118 = [v81 uuid];
        if (v118)
        {
          v119 = v118;
          v120 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v122 = v121;
        }

        else
        {
          v120 = 0;
          v122 = 0;
        }

        v222 = v120;
        v223 = v122;
        v123 = String.init<A>(describing:)();
        v125 = sub_1000153E0(v123, v124, &v227);

        *(v83 + 14) = v125;
        *(v83 + 22) = 2081;
        v222 = MTPodcast.adamId.getter();
        LOBYTE(v223) = v126 & 1;
        sub_100168088(&qword_1005785A8, qword_1004059E0);
        v127 = String.init<A>(describing:)();
        v129 = sub_1000153E0(v127, v128, &v227);

        *(v83 + 24) = v129;
        *(v83 + 32) = 1024;
        v130 = [v81 subscribed];

        *(v83 + 34) = v130;
        *(v83 + 38) = 1024;
        v131 = [v81 hidden];

        *(v83 + 40) = v131;
        *(v83 + 44) = 1024;
        v132 = [v81 isImplicitlyFollowed];

        *(v83 + 46) = v132;
        _os_log_impl(&_mh_execute_header, v82, v80, "[NonFollowedShows] Upgrade to Implicitly Followed if needed from sync already existing local podcast: %{private}s, uuid: %s, adamID: %{private}s, isFollowed: %{BOOL}d, isHidden: %{BOOL}d, isImplicitlyFollowed: %{BOOL}d.", v83, 0x32u);
        swift_arrayDestroy();

        v103 = *v220;
        v5 = v217;
        (*v220)(v199, v217);
      }

      else
      {

        v103 = *v220;
        (*v220)(v79, v5);
        v28 = v219;
      }

      sub_100004428(v3 + v201, &v222);
      v133 = v225;
      v134 = v226;
      sub_1000044A0(&v222, v225);
      (*(v134 + 144))(v81, v216, v133, v134);
      sub_100004590(&v222);
      v135 = [v81 uuid];
      if (v135)
      {
        v136 = v135;

        v137 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v139 = v138;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v209 = sub_100243134(0, *(v209 + 2) + 1, 1, v209);
        }

        v16 = v202;
        v141 = *(v209 + 2);
        v140 = *(v209 + 3);
        if (v141 >= v140 >> 1)
        {
          v209 = sub_100243134((v140 > 1), v141 + 1, 1, v209);
        }

        v22 = v216;
        v142 = v219;
        (*v212)(v216, v219);
        v143 = v209;
        *(v209 + 2) = v141 + 1;
        v144 = &v143[16 * v141];
        v28 = v142;
        *(v144 + 4) = v137;
        *(v144 + 5) = v139;
        goto LABEL_4;
      }

      v145 = v194;
      static Logger.cloudSync.getter();
      v146 = v81;
      v147 = Logger.logObject.getter();
      v148 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v147, v148))
      {
        LODWORD(v221) = v148;
        v149 = swift_slowAlloc();
        v206 = swift_slowAlloc();
        v227 = v206;
        *v149 = v196;
        v150 = [v146 title];
        if (v150)
        {
          v151 = v150;
          v152 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v154 = v153;
        }

        else
        {
          v152 = 0;
          v154 = 0;
        }

        v222 = v152;
        v223 = v154;
        sub_100168088(&qword_100574230, &qword_100401FE0);
        v174 = String.init<A>(describing:)();
        v176 = sub_1000153E0(v174, v175, &v227);

        *(v149 + 4) = v176;
        *(v149 + 12) = 2080;
        v177 = [v146 uuid];
        if (v177)
        {
          v178 = v177;
          v179 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v181 = v180;
        }

        else
        {
          v179 = 0;
          v181 = 0;
        }

        v222 = v179;
        v223 = v181;
        v182 = String.init<A>(describing:)();
        v184 = sub_1000153E0(v182, v183, &v227);

        *(v149 + 14) = v184;
        *(v149 + 22) = 2081;
        v222 = MTPodcast.adamId.getter();
        LOBYTE(v223) = v185 & 1;
        sub_100168088(&qword_1005785A8, qword_1004059E0);
        v186 = String.init<A>(describing:)();
        v188 = sub_1000153E0(v186, v187, &v227);

        *(v149 + 24) = v188;
        *(v149 + 32) = 1024;
        v189 = [v146 subscribed];

        *(v149 + 34) = v189;
        *(v149 + 38) = 1024;
        v190 = [v146 hidden];

        *(v149 + 40) = v190;
        *(v149 + 44) = 1024;
        v191 = [v146 isImplicitlyFollowed];

        *(v149 + 46) = v191;
        _os_log_impl(&_mh_execute_header, v147, v221, "[NonFollowedShows] Existing local podcast has no uuid: %{private}s, uuid: %s, adamID: %{private}s, isFollowed: %{BOOL}d, isHidden: %{BOOL}d, isImplicitlyFollowed: %{BOOL}d.", v149, 0x32u);
        swift_arrayDestroy();

        v155 = v194;
        v5 = v217;
      }

      else
      {

        v155 = v145;
      }

      v103(v155, v5);
      v22 = v216;
      (*v212)(v216, v28);
      goto LABEL_68;
    }
  }

  __break(1u);
}

void sub_100224018(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v9 = type metadata accessor for Logger();
  v10 = *(v9 - 8);
  __chkstk_darwin();
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v14 = &v25 - v13;
  if (a1 || a2 < 10)
  {
    static Logger.cloudSync.getter();
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 134218240;
      *(v22 + 4) = a1;
      *(v22 + 12) = 2048;
      *(v22 + 14) = a2;
      _os_log_impl(&_mh_execute_header, v20, v21, "%ld non followed shows added from cloud, %ld non-followed-shows removed locally.", v22, 0x16u);
    }

    (*(v10 + 8))(v12, v9);
  }

  else
  {
    static Logger.cloudSync.getter();
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 134218240;
      *(v17 + 4) = 0;
      *(v17 + 12) = 2048;
      *(v17 + 14) = a2;
      _os_log_impl(&_mh_execute_header, v15, v16, "[NonFollowedShows] Big library removal detected remoteNonFollowedShowsCount = %ld, localNonFollowedShowsToDeleteCount = %ld", v17, 0x16u);
    }

    (*(v10 + 8))(v14, v9);
    v18 = *(v5 + OBJC_IVAR____TtC8Podcasts29NonFollowedShowsSyncProcessor_cloudSyncBugReporter);
    if (a4)
    {
      v19 = String._bridgeToObjectiveC()();
    }

    else
    {
      v19 = 0;
    }

    sub_100168088(&qword_100573618, &qword_100400B78);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1004007C0;
    v26 = 0xD00000000000001BLL;
    v27 = 0x800000010046A240;
    AnyHashable.init<A>(_:)();
    *(inited + 96) = &type metadata for Int;
    *(inited + 72) = 0;
    v26 = 0xD000000000000022;
    v27 = 0x800000010046A260;
    AnyHashable.init<A>(_:)();
    *(inited + 168) = &type metadata for Int;
    *(inited + 144) = a2;
    sub_10016A0DC(inited);
    swift_setDeallocating();
    sub_100168088(&qword_100578590, &qword_100400B80);
    swift_arrayDestroy();
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    [v18 reportNonFollowedShowsSyncIssue:1 version:v19 userInfo:isa];
  }
}

void sub_1002243E0(uint64_t *a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v6 = *(type metadata accessor for Logger() - 8);
  *&v8 = __chkstk_darwin().n128_u64[0];
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a1;
  if (*(a1 + 16))
  {
    v12 = a1[1];
    if (*(a1 + 16) == 1)
    {
      v13 = v7;
      static Logger.cloudSync.getter();

      v14 = Logger.logObject.getter();
      v15 = static os_log_type_t.error.getter();
      sub_1001F876C(v11, v12, 1u);
      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        v17 = swift_slowAlloc();
        v21 = v17;
        *v16 = 136315138;
        *(v16 + 4) = sub_1000153E0(v11, v12, &v21);
        _os_log_impl(&_mh_execute_header, v14, v15, "[NonFollowedShows] A remote podcast identified by a local ID as the UUID does not make any sense at all. Offending UUID: %s", v16, 0xCu);
        sub_100004590(v17);
      }

      (*(v6 + 8))(v10, v13);
      v18 = 0;
    }

    else
    {
      v19 = String._bridgeToObjectiveC()();
      v18 = [a2 podcastForFeedUrl:v19];
    }
  }

  else
  {
    v18 = [a2 podcastForStoreId:{*a1, v8}];
  }

  *a3 = v18;
}

uint64_t sub_100224610(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Date();
  v11 = *(v10 - 8);
  __chkstk_darwin();
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  Date.init()();
  Date.timeIntervalSinceReferenceDate.getter();
  v15 = v14;
  (*(v11 + 8))(v13, v10);
  static Logger.cloudSync.getter();
  v16 = static os_log_type_t.default.getter();
  v17 = Logger.logObject.getter();
  if (os_log_type_enabled(v17, v16))
  {
    v18 = swift_slowAlloc();
    v34 = v7;
    v19 = v18;
    v20 = swift_slowAlloc();
    v35[0] = v20;
    v35[1] = a1;
    *v19 = 136315394;
    v35[2] = a2;

    sub_100168088(&qword_100574230, &qword_100401FE0);
    v21 = String.init<A>(describing:)();
    v33 = v6;
    v23 = sub_1000153E0(v21, v22, v35);

    *(v19 + 4) = v23;
    *(v19 + 12) = 2048;
    *(v19 + 14) = v15;
    _os_log_impl(&_mh_execute_header, v17, v16, "[NonFollowedShows] Bumping NonFollowedShowsSync version: %s, nonFollowedShowsLastSyncTimestamp: %f, isNonFollowedShowsSyncDirty = false.", v19, 0x16u);
    sub_100004590(v20);

    (*(v34 + 8))(v9, v33);
  }

  else
  {

    (*(v7 + 8))(v9, v6);
  }

  v24 = v3 + OBJC_IVAR____TtC8Podcasts29NonFollowedShowsSyncProcessor_nonFollowedShowsSyncStorage;
  swift_beginAccess();
  v25 = *(v24 + 24);
  v26 = *(v24 + 32);
  sub_100010C38(v24, v25);
  v27 = *(v26 + 72);

  v27(a1, a2, v25, v26);
  v28 = *(v24 + 24);
  v29 = *(v24 + 32);
  sub_100010C38(v24, v28);
  (*(v29 + 24))(0, v28, v29);
  v30 = *(v24 + 24);
  v31 = *(v24 + 32);
  sub_100010C38(v24, v30);
  (*(v31 + 48))(v15, 0, v30, v31);
  return swift_endAccess();
}

id sub_1002249AC(uint64_t a1, uint64_t a2, char *a3)
{
  v6 = type metadata accessor for OSSignposter();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15[3] = type metadata accessor for NonFollowedShowsSyncStorage();
  v15[4] = &protocol witness table for NonFollowedShowsSyncStorage;
  v15[0] = a1;
  static OSSignposter.cloudSync.getter();
  OSSignposter.logHandle.getter();
  OSSignpostID.init(log:)();
  (*(v7 + 8))(v9, v6);
  *&a3[OBJC_IVAR____TtC8Podcasts29NonFollowedShowsSyncProcessor_signpostState] = 0;
  sub_100004428(v15, &a3[OBJC_IVAR____TtC8Podcasts29NonFollowedShowsSyncProcessor_nonFollowedShowsSyncStorage]);
  *&a3[OBJC_IVAR____TtC8Podcasts29NonFollowedShowsSyncProcessor_cloudSyncBugReporter] = a2;
  v10 = type metadata accessor for NonFollowedShowsSyncProcessor(0);
  v14.receiver = a3;
  v14.super_class = v10;
  v11 = objc_msgSendSuper2(&v14, "init");
  sub_100004590(v15);
  return v11;
}

uint64_t sub_100224B14(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v42 = a1;
  v5 = type metadata accessor for Logger();
  v48 = *(v5 - 8);
  v49 = v5;
  __chkstk_darwin();
  v7 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for OSSignpostID();
  v9 = *(v8 - 8);
  __chkstk_darwin();
  v46 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v12 = &v38 - v11;
  v47 = type metadata accessor for OSSignposter();
  v45 = *(v47 - 8);
  __chkstk_darwin();
  v14 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  static OSSignposter.cloudSync.getter();
  v43 = *(v9 + 16);
  v44 = v8;
  v43(v12, v2 + OBJC_IVAR____TtC8Podcasts29NonFollowedShowsSyncProcessor_signpostID, v8);

  v15 = OSSignposter.logHandle.getter();
  v41 = static os_signpost_type_t.begin.getter();

  if (OS_os_log.signpostsEnabled.getter())
  {
    v16 = swift_slowAlloc();
    v40 = v7;
    v17 = v16;
    v18 = swift_slowAlloc();
    v39 = v2;
    v19 = v18;
    v51[0] = v18;
    *v17 = 136315138;
    *(v17 + 4) = sub_1000153E0(v42, a2, v51);
    v20 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v15, v41, v20, "NonFollowedShowsSyncProcessor.GET", "%s", v17, 0xCu);
    sub_100004590(v19);
    v3 = v39;

    v7 = v40;
  }

  v21 = v44;
  v43(v46, v12, v44);
  type metadata accessor for OSSignpostIntervalState();
  swift_allocObject();
  v22 = OSSignpostIntervalState.init(id:isOpen:)();
  (*(v9 + 8))(v12, v21);
  (*(v45 + 8))(v14, v47);
  *(v3 + OBJC_IVAR____TtC8Podcasts29NonFollowedShowsSyncProcessor_signpostState) = v22;

  v23 = OBJC_IVAR____TtC8Podcasts29NonFollowedShowsSyncProcessor_nonFollowedShowsSyncStorage;
  swift_beginAccess();
  sub_100004428(v3 + v23, v51);
  v24 = v52;
  v25 = v53;
  sub_1000044A0(v51, v52);
  v26 = (*(v25 + 64))(v24, v25);
  v28 = v27;
  sub_100004590(v51);
  static Logger.cloudSync.getter();
  v29 = static os_log_type_t.default.getter();
  v30 = Logger.logObject.getter();
  if (os_log_type_enabled(v30, v29))
  {
    v31 = swift_slowAlloc();
    v32 = v7;
    v33 = swift_slowAlloc();
    v50 = v33;
    *v31 = 136315138;
    v51[0] = v26;
    v51[1] = v28;

    sub_100168088(&qword_100574230, &qword_100401FE0);
    v34 = String.init<A>(describing:)();
    v36 = sub_1000153E0(v34, v35, &v50);

    *(v31 + 4) = v36;
    _os_log_impl(&_mh_execute_header, v30, v29, "[NonFollowedShows] Version for Get transaction: %s", v31, 0xCu);
    sub_100004590(v33);

    (*(v48 + 8))(v32, v49);
  }

  else
  {

    (*(v48 + 8))(v7, v49);
  }

  return v26;
}

unsigned __int8 *sub_100225034(uint64_t a1, unint64_t a2, void *a3)
{
  v4 = v3;
  v90 = a1;
  v7 = type metadata accessor for Logger();
  v88 = *(v7 - 8);
  v89 = v7;
  __chkstk_darwin();
  v95 = &v84 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for OSSignpostID();
  v10 = *(v9 - 8);
  __chkstk_darwin();
  v93 = &v84 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v13 = &v84 - v12;
  v94 = type metadata accessor for OSSignposter();
  v92 = *(v94 - 8);
  __chkstk_darwin();
  v15 = &v84 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  static OSSignposter.cloudSync.getter();
  v91 = *(v10 + 16);
  v91(v13, v3 + OBJC_IVAR____TtC8Podcasts29NonFollowedShowsSyncProcessor_signpostID, v9);

  v16 = OSSignposter.logHandle.getter();
  v86 = static os_signpost_type_t.begin.getter();

  v17 = OS_os_log.signpostsEnabled.getter();
  v87 = a3;
  v85 = a2;
  if (v17)
  {
    v18 = swift_slowAlloc();
    v84 = v3;
    v19 = v18;
    v20 = swift_slowAlloc();
    v97[0] = v20;
    *v19 = 136315138;
    *(v19 + 4) = sub_1000153E0(v90, a2, v97);
    v21 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v16, v86, v21, "NonFollowedShowsSyncProcessor.SET", "%s", v19, 0xCu);
    sub_100004590(v20);

    v4 = v84;
  }

  v91(v93, v13, v9);
  type metadata accessor for OSSignpostIntervalState();
  swift_allocObject();
  v22 = OSSignpostIntervalState.init(id:isOpen:)();
  (*(v10 + 8))(v13, v9);
  (*(v92 + 8))(v15, v94);
  *(v4 + OBJC_IVAR____TtC8Podcasts29NonFollowedShowsSyncProcessor_signpostState) = v22;

  v23 = OBJC_IVAR____TtC8Podcasts29NonFollowedShowsSyncProcessor_nonFollowedShowsSyncStorage;
  swift_beginAccess();
  sub_100004428(v4 + v23, v97);
  v24 = v98;
  v25 = v99;
  sub_1000044A0(v97, v98);
  v26 = (*(v25 + 120))(v24, v25);
  sub_100004590(v97);
  if (*(v26 + 16))
  {
    goto LABEL_4;
  }

  sub_100004428(v4 + v23, v97);
  v41 = v98;
  v42 = v99;
  sub_1000044A0(v97, v98);
  v43 = (*(v42 + 64))(v41, v42);
  if (v44)
  {
    v45 = v43;
    v46 = v44;
    result = sub_100004590(v97);
    v48 = HIBYTE(v46) & 0xF;
    v49 = v45 & 0xFFFFFFFFFFFFLL;
    if ((v46 & 0x2000000000000000) != 0)
    {
      v50 = HIBYTE(v46) & 0xF;
    }

    else
    {
      v50 = v45 & 0xFFFFFFFFFFFFLL;
    }

    if (v50)
    {
      if ((v46 & 0x1000000000000000) != 0)
      {
        v52 = sub_100311A9C();
        v77 = v83;
        goto LABEL_78;
      }

      if ((v46 & 0x2000000000000000) != 0)
      {
        v97[0] = v45;
        v97[1] = v46 & 0xFFFFFFFFFFFFFFLL;
        if (v45 == 43)
        {
          if (v48)
          {
            if (--v48)
            {
              v52 = 0;
              v69 = v97 + 1;
              while (1)
              {
                v70 = *v69 - 48;
                if (v70 > 9)
                {
                  break;
                }

                v71 = 10 * v52;
                if ((v52 * 10) >> 64 != (10 * v52) >> 63)
                {
                  break;
                }

                v52 = v71 + v70;
                if (__OFADD__(v71, v70))
                {
                  break;
                }

                ++v69;
                if (!--v48)
                {
                  goto LABEL_77;
                }
              }
            }

            goto LABEL_76;
          }

LABEL_90:
          __break(1u);
          return result;
        }

        if (v45 != 45)
        {
          if (v48)
          {
            v52 = 0;
            v74 = v97;
            while (1)
            {
              v75 = *v74 - 48;
              if (v75 > 9)
              {
                break;
              }

              v76 = 10 * v52;
              if ((v52 * 10) >> 64 != (10 * v52) >> 63)
              {
                break;
              }

              v52 = v76 + v75;
              if (__OFADD__(v76, v75))
              {
                break;
              }

              v74 = (v74 + 1);
              if (!--v48)
              {
                goto LABEL_77;
              }
            }
          }

          goto LABEL_76;
        }

        if (v48)
        {
          if (--v48)
          {
            v52 = 0;
            v63 = v97 + 1;
            while (1)
            {
              v64 = *v63 - 48;
              if (v64 > 9)
              {
                break;
              }

              v65 = 10 * v52;
              if ((v52 * 10) >> 64 != (10 * v52) >> 63)
              {
                break;
              }

              v52 = v65 - v64;
              if (__OFSUB__(v65, v64))
              {
                break;
              }

              ++v63;
              if (!--v48)
              {
                goto LABEL_77;
              }
            }
          }

          goto LABEL_76;
        }
      }

      else
      {
        if ((v45 & 0x1000000000000000) != 0)
        {
          result = ((v46 & 0xFFFFFFFFFFFFFFFLL) + 32);
        }

        else
        {
          result = _StringObject.sharedUTF8.getter();
        }

        v51 = *result;
        if (v51 == 43)
        {
          if (v49 >= 1)
          {
            v48 = v49 - 1;
            if (v49 != 1)
            {
              v52 = 0;
              if (result)
              {
                v66 = result + 1;
                while (1)
                {
                  v67 = *v66 - 48;
                  if (v67 > 9)
                  {
                    goto LABEL_76;
                  }

                  v68 = 10 * v52;
                  if ((v52 * 10) >> 64 != (10 * v52) >> 63)
                  {
                    goto LABEL_76;
                  }

                  v52 = v68 + v67;
                  if (__OFADD__(v68, v67))
                  {
                    goto LABEL_76;
                  }

                  ++v66;
                  if (!--v48)
                  {
                    goto LABEL_77;
                  }
                }
              }

              goto LABEL_68;
            }

            goto LABEL_76;
          }

          goto LABEL_89;
        }

        if (v51 != 45)
        {
          if (v49)
          {
            v52 = 0;
            if (result)
            {
              while (1)
              {
                v72 = *result - 48;
                if (v72 > 9)
                {
                  goto LABEL_76;
                }

                v73 = 10 * v52;
                if ((v52 * 10) >> 64 != (10 * v52) >> 63)
                {
                  goto LABEL_76;
                }

                v52 = v73 + v72;
                if (__OFADD__(v73, v72))
                {
                  goto LABEL_76;
                }

                ++result;
                if (!--v49)
                {
                  goto LABEL_68;
                }
              }
            }

            goto LABEL_68;
          }

LABEL_76:
          v52 = 0;
          LOBYTE(v48) = 1;
          goto LABEL_77;
        }

        if (v49 >= 1)
        {
          v48 = v49 - 1;
          if (v49 != 1)
          {
            v52 = 0;
            if (result)
            {
              v53 = result + 1;
              while (1)
              {
                v54 = *v53 - 48;
                if (v54 > 9)
                {
                  goto LABEL_76;
                }

                v55 = 10 * v52;
                if ((v52 * 10) >> 64 != (10 * v52) >> 63)
                {
                  goto LABEL_76;
                }

                v52 = v55 - v54;
                if (__OFSUB__(v55, v54))
                {
                  goto LABEL_76;
                }

                ++v53;
                if (!--v48)
                {
                  goto LABEL_77;
                }
              }
            }

LABEL_68:
            LOBYTE(v48) = 0;
LABEL_77:
            v96 = v48;
            v77 = v48;
LABEL_78:

            if ((v77 & 1) == 0 && v52 >= 11)
            {
              v78 = *(v4 + OBJC_IVAR____TtC8Podcasts29NonFollowedShowsSyncProcessor_cloudSyncBugReporter);
              sub_100004428(v4 + v23, v97);
              v79 = v98;
              v80 = v99;
              sub_1000044A0(v97, v98);
              (*(v80 + 64))(v79, v80);
              if (v81)
              {
                v82 = String._bridgeToObjectiveC()();
              }

              else
              {
                v82 = 0;
              }

              sub_100004590(v97);
              [v78 reportNonFollowedShowsSyncIssue:0 version:v82 userInfo:0];
            }

            goto LABEL_4;
          }

          goto LABEL_76;
        }

        __break(1u);
      }

      __break(1u);
LABEL_89:
      __break(1u);
      goto LABEL_90;
    }
  }

  else
  {
    sub_100004590(v97);
  }

LABEL_4:
  v27 = v95;
  static Logger.cloudSync.getter();
  v28 = static os_log_type_t.default.getter();
  v29 = Logger.logObject.getter();
  if (os_log_type_enabled(v29, v28))
  {
    v30 = swift_slowAlloc();
    v97[0] = swift_slowAlloc();
    *v30 = 136315394;
    sub_100168088(&qword_100574880, &unk_100401D30);
    v31 = Array.description.getter();
    v33 = v23;
    v34 = v26;
    v35 = v4;
    v36 = sub_1000153E0(v31, v32, v97);

    *(v30 + 4) = v36;
    v4 = v35;
    v26 = v34;
    v23 = v33;
    *(v30 + 12) = 2080;
    *(v30 + 14) = sub_1000153E0(v90, v85, v97);
    _os_log_impl(&_mh_execute_header, v29, v28, "[NonFollowedShows] Providing data for SET transaction. implicitlyFollowedShows: %s, key: %s", v30, 0x16u);
    swift_arrayDestroy();

    (*(v88 + 8))(v95, v89);
  }

  else
  {

    (*(v88 + 8))(v27, v89);
  }

  sub_100004428(v4 + v23, v97);
  v37 = v98;
  v38 = v99;
  sub_1000044A0(v97, v98);
  (*(v38 + 64))(v37, v38);
  if (v39)
  {
    v40 = String._bridgeToObjectiveC()();
  }

  else
  {
    v40 = 0;
  }

  v56 = v87;
  sub_100004590(v97);
  v57 = v40;
  *v56 = v40;
  v58 = [objc_allocWithZone(MZKeyValueStoreNode) init];
  sub_1001A543C(v26);

  isa = Array._bridgeToObjectiveC()().super.isa;

  [v58 setArrayValue:isa];

  v60 = [v58 value];
  if (v60)
  {
    v61 = v60;
    v62 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {

    return 0;
  }

  return v62;
}

uint64_t sub_100225A6C(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(void), uint64_t a8)
{
  v26 = a3;
  v27 = a4;
  v28 = a1;
  v29 = a2;
  v12 = type metadata accessor for Logger();
  v13 = *(v12 - 8);
  __chkstk_darwin();
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.cloudSync.getter();
  v16 = static os_log_type_t.default.getter();
  v17 = Logger.logObject.getter();
  if (os_log_type_enabled(v17, v16))
  {
    v18 = swift_slowAlloc();
    v25 = a8;
    v19 = v18;
    v20 = swift_slowAlloc();
    v24 = a7;
    v21 = v20;
    v30 = v20;
    *v19 = 136315138;
    *(v19 + 4) = sub_1000153E0(v26, v27, &v30);
    _os_log_impl(&_mh_execute_header, v17, v16, "[NonFollowedShows] Updating local cache after GET transaction for key %s", v19, 0xCu);
    sub_100004590(v21);
    a7 = v24;

    a8 = v25;
  }

  (*(v13 + 8))(v15, v12);
  sub_100220C94(v28, v29, a5, a6);
  return sub_100221660(a5, a6, a7, a8);
}

uint64_t sub_100225C48(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t a6)
{
  v7 = v6;
  v29 = a1;
  v30 = a2;
  v12 = type metadata accessor for Logger();
  v13 = *(v12 - 8);
  __chkstk_darwin();
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.cloudSync.getter();
  v16 = static os_log_type_t.default.getter();
  v17 = Logger.logObject.getter();
  if (os_log_type_enabled(v17, v16))
  {
    v18 = swift_slowAlloc();
    v28 = v7;
    v19 = v18;
    v20 = swift_slowAlloc();
    v27 = a3;
    v21 = a4;
    v22 = a5;
    v23 = a6;
    v24 = v20;
    v31 = v20;
    *v19 = 136315138;
    *(v19 + 4) = sub_1000153E0(v29, v30, &v31);
    _os_log_impl(&_mh_execute_header, v17, v16, "[NonFollowedShows] Successful SET transaction for key %s, marking everything as synced and finishing normally.", v19, 0xCu);
    sub_100004590(v24);
    a6 = v23;
    a5 = v22;
    a4 = v21;
    a3 = v27;
  }

  (*(v13 + 8))(v15, v12);
  return sub_100221660(a3, a4, a5, a6);
}

uint64_t sub_100225E28(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(void, __n128), uint64_t a8)
{
  v9 = v8;
  v33 = a3;
  v34 = a4;
  v35 = a1;
  v36 = a2;
  v14 = type metadata accessor for Logger();
  v15 = *(v14 - 8);
  __chkstk_darwin();
  v17 = &v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.cloudSync.getter();
  v18 = static os_log_type_t.default.getter();
  v19 = Logger.logObject.getter();
  if (os_log_type_enabled(v19, v18))
  {
    v20 = swift_slowAlloc();
    v32 = a8;
    v21 = v20;
    v22 = swift_slowAlloc();
    v31 = a5;
    v23 = a7;
    v24 = v22;
    v37[0] = v22;
    *v21 = 136315138;
    *(v21 + 4) = sub_1000153E0(v33, v34, v37);
    _os_log_impl(&_mh_execute_header, v19, v18, "[NonFollowedShows] Failure on SET transaction for key %s, Bookkeeper copy has diverged from local copy, we must merge both.", v21, 0xCu);
    sub_100004590(v24);
    a7 = v23;
    a5 = v31;

    a8 = v32;
  }

  (*(v15 + 8))(v17, v14);
  sub_100220C94(v35, v36, a5, a6);
  sub_100221CFC(a7, a8);
  v25 = v9 + OBJC_IVAR____TtC8Podcasts29NonFollowedShowsSyncProcessor_nonFollowedShowsSyncStorage;
  swift_beginAccess();
  v26 = *(v25 + 24);
  v27 = *(v25 + 32);
  sub_100010C38(v25, v26);
  v28 = *(v27 + 72);

  v28(a5, a6, v26, v27);
  return swift_endAccess();
}

uint64_t sub_100226074(uint64_t a1)
{
  result = type metadata accessor for OSSignpostID();
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

uint64_t sub_100226120(uint64_t a1)
{
  v2 = sub_100168088(&qword_100578588, &unk_1004059C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100226188(uint64_t a1, uint64_t a2)
{
  v4 = sub_100168088(&qword_100578588, &unk_1004059C0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_100226208()
{
  result = qword_100573AC0;
  if (!qword_100573AC0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100573AC0);
  }

  return result;
}

unint64_t sub_100226254()
{
  result = qword_1005785A0;
  if (!qword_1005785A0)
  {
    sub_100168310(&qword_100578598, &qword_1004059D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005785A0);
  }

  return result;
}

uint64_t sub_1002262B8(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 - 1 <= 1)
  {
  }

  return result;
}

id sub_100226384(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = objc_opt_self();
  v6 = [v5 mainBundle];
  v39._object = 0x800000010046A360;
  v7._countAndFlagsBits = 0xD000000000000018;
  v7._object = 0x800000010046A340;
  v8._countAndFlagsBits = 0;
  v8._object = 0xE000000000000000;
  v39._countAndFlagsBits = 0xD000000000000014;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v7, 0, v6, v8, v39);

  sub_100168088(&unk_100574670, &qword_100400AB0);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_100400790;
  v10 = [a1 title];
  if (v10)
  {
    v11 = v10;
    v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v13;
  }

  else
  {
    v12 = 0;
    v14 = 0;
  }

  *(v9 + 56) = &type metadata for String;
  *(v9 + 64) = sub_100022C18();
  if (v14)
  {
    v15 = v12;
  }

  else
  {
    v15 = 0;
  }

  if (v14)
  {
    v16 = v14;
  }

  else
  {
    v16 = 0xE000000000000000;
  }

  *(v9 + 32) = v15;
  *(v9 + 40) = v16;
  String.init(format:_:)();

  v17 = [v5 mainBundle];
  v40._object = 0xE000000000000000;
  v18._countAndFlagsBits = 0x6C65636E6143;
  v18._object = 0xE600000000000000;
  v19._countAndFlagsBits = 0;
  v19._object = 0xE000000000000000;
  v40._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v18, 0, v17, v19, v40);

  v20 = [v5 mainBundle];
  v41._object = 0xE000000000000000;
  v21._countAndFlagsBits = 0x53206574656C6544;
  v21._object = 0xEE006E6F69746174;
  v22._countAndFlagsBits = 0;
  v22._object = 0xE000000000000000;
  v41._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v21, 0, v20, v22, v41);

  v23 = String._bridgeToObjectiveC()();

  v24 = [objc_opt_self() alertControllerWithTitle:v23 message:0 preferredStyle:1];

  v25 = String._bridgeToObjectiveC()();

  v26 = objc_opt_self();
  v27 = [v26 actionWithTitle:v25 style:1 handler:0];

  [v24 addAction:v27];
  v28 = swift_allocObject();
  v28[2] = a2;
  v28[3] = a1;
  v28[4] = a3;
  v28[5] = a4;
  v29 = a2;
  v30 = a1;

  v31 = String._bridgeToObjectiveC()();

  aBlock[4] = sub_10022677C;
  aBlock[5] = v28;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1002E8240;
  aBlock[3] = &unk_1004E6370;
  v32 = _Block_copy(aBlock);

  v33 = [v26 actionWithTitle:v31 style:2 handler:v32];
  _Block_release(v32);

  [v24 addAction:v33];
  return v24;
}

uint64_t sub_1002267B4(uint64_t a1, uint64_t a2)
{
  sub_100168088(&qword_100574690, &unk_100401BA0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_100400790;
  *(v4 + 32) = (*(a2 + 8))(a1, a2);
  *(v4 + 40) = v5;
  (*(a2 + 16))(&v9, a1, a2);
  if (v10)
  {
    sub_1000109E4(&v9, v11);
    v6 = v12;
    v7 = v13;
    sub_1000044A0(v11, v12);
    *&v9 = sub_1002267B4(v6, v7);
    sub_1001C3B80(v4);
    v4 = v9;
    sub_100004590(v11);
  }

  else
  {
    sub_1002268BC(&v9);
  }

  return v4;
}

uint64_t sub_1002268BC(uint64_t a1)
{
  v2 = sub_100168088(&qword_1005785B0, &qword_100405A28);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_100226924(char a1)
{
  v2 = v1;
  sub_100168088(&qword_100574040, &unk_100400AD0);
  __chkstk_darwin();
  v5 = &v19 - v4;
  v6 = *v2;
  v7 = objc_allocWithZone(CLSContext);
  v8 = String._bridgeToObjectiveC()();
  v9 = String._bridgeToObjectiveC()();
  v10 = [v7 initWithType:v6 identifier:v8 title:v9];

  [v10 setAssignable:*(v2 + 40)];
  [v10 setDisplayOrder:v2[6]];
  v11 = type metadata accessor for CLSContextMetadata(0);
  sub_1001BB0E0(v2 + *(v11 + 36), v5);
  v12 = type metadata accessor for URL();
  v13 = *(v12 - 8);
  v15 = 0;
  if ((*(v13 + 48))(v5, 1, v12) != 1)
  {
    URL._bridgeToObjectiveC()(v14);
    v15 = v16;
    (*(v13 + 8))(v5, v12);
  }

  [v10 setUniversalLinkURL:v15];

  if (a1)
  {
    v17 = (*(v2 + *(v11 + 40)))();
    [v10 setThumbnail:v17];
  }

  return v10;
}

uint64_t type metadata accessor for CLSContextMetadata(uint64_t a1)
{
  result = qword_100578610;
  if (!qword_100578610)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100226BA4(uint64_t a1)
{
  type metadata accessor for CLSContextType(319);
  if (v1 <= 0x3F)
  {
    sub_100012E4C(319);
    if (v2 <= 0x3F)
    {
      sub_100226C84();
      if (v3 <= 0x3F)
      {
        sub_100226CD4(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

unint64_t sub_100226C84()
{
  result = qword_100578620;
  if (!qword_100578620)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_100578620);
  }

  return result;
}

void sub_100226CD4(uint64_t a1)
{
  if (!qword_100578628)
  {
    sub_100168310(&qword_10057C9C0, &qword_100403E20);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_100578628);
    }
  }
}

uint64_t sub_100226D38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = [objc_opt_self() sharedInstance];
  type metadata accessor for PlayStateDataSource();
  swift_allocObject();

  PlayStateDataSource.init(playbackController:pendingPlaybackStore:episodeLookupUtil:)();
  sub_100226EAC();
  v5 = EpisodeStateDataSourceProtocol.eraseToAnyEpisodeStateDataSource()();

  sub_100168088(&unk_100574680, &qword_100401740);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_100400800;
  *(v6 + 32) = v5;
  *(v6 + 40) = a2;
  sub_100168088(&qword_100578680, &unk_100405A48);
  swift_allocObject();

  DefaultEpisodeStateDataSource.init()();
  sub_100226F04();
  v7 = EpisodeStateDataSourceProtocol.eraseToAnyEpisodeStateDataSource()();

  *(v6 + 48) = v7;

  return v6;
}

unint64_t sub_100226EAC()
{
  result = qword_100578678;
  if (!qword_100578678)
  {
    type metadata accessor for PlayStateDataSource();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100578678);
  }

  return result;
}

unint64_t sub_100226F04()
{
  result = qword_100578688;
  if (!qword_100578688)
  {
    sub_100168310(&qword_100578680, &unk_100405A48);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100578688);
  }

  return result;
}

uint64_t FeedIngesterProvider.downloadManager.getter()
{
  swift_beginAccess();

  sub_100168088(&qword_1005786F0, &qword_100405A58);
  Synchronized.wrappedValue.getter();

  return v1;
}

uint64_t FeedIngesterProvider.downloadManager.setter(uint64_t a1)
{
  swift_beginAccess();
  swift_unknownObjectRetain();
  sub_100168088(&qword_1005786F8, &qword_100405A60);
  Synchronized.wrappedValue.setter();
  swift_endAccess();
  return swift_unknownObjectRelease();
}

void (*FeedIngesterProvider.downloadManager.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  *a1 = v3;
  *(v3 + 40) = v1;
  swift_beginAccess();
  sub_100168088(&qword_1005786F0, &qword_100405A58);
  Synchronized.wrappedValue.getter();
  return sub_100227144;
}

void sub_100227144(uint64_t a1, char a2)
{
  v2 = *a1;
  *(*a1 + 32) = *(*a1 + 24);
  if (a2)
  {
    swift_unknownObjectRetain();
    sub_100168088(&qword_1005786F8, &qword_100405A60);
    Synchronized.wrappedValue.setter();
    swift_unknownObjectRelease();
  }

  else
  {
    sub_100168088(&qword_1005786F8, &qword_100405A60);
    Synchronized.wrappedValue.setter();
  }

  swift_endAccess();

  free(v2);
}

id FeedIngesterProvider.createNewIngester(with:from:updaterJobUUID:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = v4[2];
  v21 = v4[3];
  v22 = v4[10];
  v7 = v4[5];
  v19 = v4[9];
  v20 = v4[4];
  swift_beginAccess();
  swift_unknownObjectRetain();
  v18 = v6;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v8 = v7;

  swift_unknownObjectRetain();
  sub_100168088(&qword_1005786F0, &qword_100405A58);
  Synchronized.wrappedValue.getter();

  v17 = [objc_allocWithZone(type metadata accessor for EpisodeLevelCalculator()) init];
  v10 = v4[6];
  v9 = v4[7];
  type metadata accessor for NotificationSettings();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();

  v11 = static NotificationSettings.canSendNotification()();
  v12 = objc_allocWithZone(MTFeedIngester);
  v13 = a1;
  v14 = String._bridgeToObjectiveC()();

  LOBYTE(v16) = v11 & 1;
  v24 = [v12 initWithPodcast:v13 ctx:v18 storeInfoUpdater:v21 imageDownloader:v19 imageStore:v22 syncController:v20 library:v8 downloadManager:v25 episodeLevelCalculator:v17 categoryIngester:v10 chapterIngester:v9 feedUpdateSource:a2 updaterJobUUID:v14 canSendNotifications:v16];

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return v24;
}

uint64_t FeedIngesterProvider.deinit()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v0;
}

uint64_t FeedIngesterProvider.__deallocating_deinit()
{
  FeedIngesterProvider.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1002274C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_100168088(&qword_100578010, &qword_100401F60);
  __chkstk_darwin();
  v5 = &v18 - v4;
  v6 = sub_100168088(&qword_10057AB40, &qword_10040B770);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin();
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v11 = &v18 - v10;
  Models.AlertAction.Button.action.getter();
  if (!v21)
  {
    return sub_100227A90(&v20);
  }

  sub_100184658(&v20, v22);
  BaseObjectGraph.inject<A>(_:)();
  static TaskPriority.userInitiated.getter();
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v5, 0, 1, v12);
  (*(v7 + 16))(v9, v11, v6);
  sub_100004428(v22, &v20);
  type metadata accessor for MainActor();

  v13 = static MainActor.shared.getter();
  v14 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v15 = (v8 + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  v19 = v5;
  v16 = swift_allocObject();
  *(v16 + 16) = v13;
  *(v16 + 24) = &protocol witness table for MainActor;
  (*(v7 + 32))(v16 + v14, v9, v6);
  sub_100184658(&v20, v16 + v15);
  *(v16 + ((v15 + 47) & 0xFFFFFFFFFFFFFFF8)) = a3;
  sub_100217F98(0, 0, v19, &unk_100405B40, v16);

  (*(v7 + 8))(v11, v6);
  return sub_100004590(v22);
}

uint64_t sub_100227794(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[4] = a5;
  v6[5] = a6;
  v6[2] = a1;
  v6[3] = a4;
  v7 = sub_100168088(&qword_100578920, &qword_100405B48);
  v6[6] = v7;
  v6[7] = *(v7 - 8);
  v6[8] = swift_task_alloc();
  type metadata accessor for MainActor();
  v6[9] = static MainActor.shared.getter();
  v9 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100227898, v9, v8);
}

uint64_t sub_100227898()
{
  v1 = v0[8];
  v2 = v0[6];
  v3 = v0[7];
  v4 = v0[2];

  (*(v3 + 104))(v1, enum case for ActionDispatcher.MetricsBehavior.notProcessed<A>(_:), v2);
  sub_100168088(&qword_10057AB40, &qword_10040B770);
  v5 = ActionDispatcher.perform(_:withMetrics:asPartOf:)();
  (*(v3 + 8))(v1, v2);
  *v4 = v5;

  v6 = v0[1];

  return v6();
}

uint64_t sub_100227994(uint64_t a1, uint64_t a2)
{
  v4 = static Models.AlertAction.ButtonRole.cancel.getter();
  if (!a2)
  {

    static Models.AlertAction.ButtonRole.destructive.getter();

    return 0;
  }

  if (v4 == a1 && v5 == a2)
  {

LABEL_8:

    return 1;
  }

  v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v7)
  {
    goto LABEL_8;
  }

  if (static Models.AlertAction.ButtonRole.destructive.getter() == a1 && v8 == a2)
  {

    return 2;
  }

  v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v9 & 1) == 0)
  {
    return 0;
  }

  return 2;
}

uint64_t sub_100227A90(uint64_t a1)
{
  v2 = sub_100168088(&qword_100578C20, &unk_100403D30);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100227AF8(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_100168088(&qword_10057AB40, &qword_10040B770) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v1 + 16);
  v9 = *(v1 + 24);
  v10 = *(v1 + ((v7 + 47) & 0xFFFFFFFFFFFFFFF8));
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = sub_10001C51C;

  return sub_100227794(a1, v8, v9, v1 + v6, v1 + v7, v10);
}

void sub_100227C3C()
{
  v1 = type metadata accessor for EpisodeOffer();
  v54 = *(v1 - 8);
  __chkstk_darwin();
  v3 = v49 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100168088(&qword_100574040, &unk_100400AD0);
  __chkstk_darwin();
  v5 = v49 - v4;
  v56 = type metadata accessor for URL();
  v51 = *(v56 - 8);
  __chkstk_darwin();
  v7 = v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v55 = v49 - v8;
  type metadata accessor for EpisodeContextActionDataType(0);
  __chkstk_darwin();
  v10 = v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v12 = v49 - v11;
  __chkstk_darwin();
  v14 = v49 - v13;
  v15 = *(v0 + 16);
  if (v15)
  {
    v16 = OBJC_IVAR____TtC8Podcasts24EpisodeContextActionData_type;
    swift_beginAccess();
    sub_1001EAFE4(v15 + v16, v12, v17);
    sub_1002288DC(v12, v14, v18);
    sub_1001EAFE4(v14, v10, v19);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 1)
    {
      v34 = *v10;
      v35 = *(*v10 + 16);
      if (!v35)
      {

        goto LABEL_19;
      }

      v50 = v14;
      v36 = objc_opt_self();
      v37 = v7;
      v38 = v54 + 16;
      v54 = *(v54 + 16);
      v55 = v36;
      v39 = (*(v38 + 64) + 32) & ~*(v38 + 64);
      v49[1] = v34;
      v40 = v34 + v39;
      v41 = *(v38 + 56);
      v52 = (v38 - 8);
      v53 = v41;
      v42 = (v51 + 8);
      do
      {
        (v54)(v3, v40, v1);
        v43 = [v55 sharedApplication];
        EpisodeOffer.streamUrl.getter();
        (*v52)(v3, v1);
        URL._bridgeToObjectiveC()(v44);
        v46 = v45;
        (*v42)(v37, v56);
        type metadata accessor for OpenExternalURLOptionsKey(0);
        sub_100228940(&qword_100573120, type metadata accessor for OpenExternalURLOptionsKey, &unk_100400148);
        isa = Dictionary._bridgeToObjectiveC()().super.isa;
        [v43 openURL:v46 options:isa completionHandler:0];

        v40 += v53;
        --v35;
      }

      while (v35);
    }

    else
    {
      if (EnumCaseMultiPayload)
      {
        sub_1001EDA30(v14, v21);
        v14 = v10;
        goto LABEL_19;
      }

      v50 = v14;
      v22 = *v10;

      v52 = v22;
      v23 = *(v22 + 16);
      v24 = v56;
      if (v23)
      {
        type metadata accessor for CoreDataFetcher();
        v25 = (v51 + 48);
        v53 = (v51 + 8);
        v54 = v51 + 32;
        v26 = v23 - 1;
        for (i = (v52 + 5); ; i += 2)
        {
          v57 = 0;
          v58 = 0;
          __chkstk_darwin();
          v49[-2] = &v57;

          static CoreDataFetcher.performAndWaitOnEpisode<A>(with:block:)();

          if (!v58)
          {
            goto LABEL_7;
          }

          URL.init(string:)();
          if ((*v25)(v5, 1, v24) == 1)
          {
            break;
          }

          v28 = v55;
          (*v54)(v55, v5, v24);
          v29 = [objc_opt_self() sharedApplication];
          URL._bridgeToObjectiveC()(v30);
          v32 = v31;
          type metadata accessor for OpenExternalURLOptionsKey(0);
          sub_100228940(&qword_100573120, type metadata accessor for OpenExternalURLOptionsKey, &unk_100400148);
          v33 = Dictionary._bridgeToObjectiveC()().super.isa;
          [v29 openURL:v32 options:v33 completionHandler:0];

          v24 = v56;
          (*v53)(v28, v56);

          if (!v26)
          {
            goto LABEL_16;
          }

LABEL_8:
          --v26;
        }

        sub_1001FDD40(v5);

LABEL_7:
        if (!v26)
        {
          goto LABEL_16;
        }

        goto LABEL_8;
      }
    }

LABEL_16:

    v14 = v50;
LABEL_19:
    sub_1001EDA30(v14, v48);
  }
}

uint64_t sub_1002282A4(void *a1, uint64_t *a2)
{
  if (a1 && (v3 = [a1 enclosureURL]) != 0)
  {
    v4 = v3;
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  *a2 = v5;
  a2[1] = v7;
}

uint64_t sub_100228320()
{

  v1 = OBJC_IVAR____TtC8Podcasts24OpenEpisodeContextAction_metricsLabel;
  v2 = type metadata accessor for MetricsLabel();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for OpenEpisodeContextAction(uint64_t a1)
{
  result = qword_100578950;
  if (!qword_100578950)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100228420(uint64_t a1)
{
  result = type metadata accessor for MetricsLabel();
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

uint64_t sub_1002284BC()
{
  v0 = [objc_opt_self() mainBundle];
  v5._object = 0xE400000000000000;
  v1._object = 0x800000010046A470;
  v1._countAndFlagsBits = 0xD000000000000013;
  v2._countAndFlagsBits = 0;
  v2._object = 0xE000000000000000;
  v5._countAndFlagsBits = 1852141647;
  countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v1, 0, v0, v2, v5)._countAndFlagsBits;

  return countAndFlagsBits;
}

uint64_t sub_100228570@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC8Podcasts24OpenEpisodeContextAction_metricsLabel;
  v4 = type metadata accessor for MetricsLabel();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_1002285E8@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for ContextActionType.openEpisode(_:);
  v3 = type metadata accessor for ContextActionType();
  v6 = *(v3 - 8);
  (*(v6 + 104))(a1, v2, v3);
  v4 = *(v6 + 56);

  return v4(a1, 0, 1, v3);
}

uint64_t sub_1002286C4(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return sub_100232E54(a1, a2, WitnessTable);
}

uint64_t sub_100228724(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return sub_100232848(a1, a2, WitnessTable);
}

id sub_100228784(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return sub_100232ADC(a1, a2, WitnessTable);
}

uint64_t sub_1002287E4()
{
  if (!*(v0 + 16))
  {
    return 0;
  }

  v1 = sub_100396F64();

  return v1 & 1;
}

uint64_t sub_10022882C(uint64_t a1)
{
  result = sub_100228940(&unk_100582220, type metadata accessor for OpenEpisodeContextAction, &unk_100405BA8);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_100228884(uint64_t a1)
{
  result = sub_100228940(&unk_100578A50, type metadata accessor for OpenEpisodeContextAction, &unk_100405C00);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1002288DC(uint64_t a1, uint64_t a2, __n128 a3)
{
  v5 = type metadata accessor for EpisodeContextActionDataType(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100228940(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100228990()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1002289F4()
{
  v1 = v0;
  v2 = *v0;
  v3 = sub_100168088(&unk_100578B10, &unk_100405CA0);
  v4 = *(v3 - 8);
  v14 = v3;
  v15 = v4;
  __chkstk_darwin();
  v6 = &v13 - v5;
  v16 = ShowListProvider.pageContent.getter();
  v7 = v0[2];
  v8 = *(v1 + 24);
  v9 = swift_allocObject();
  *(v9 + 16) = v7;
  *(v9 + 24) = v8;
  *(v9 + 32) = v2;

  static Subscribers.Demand.unlimited.getter();
  sub_100168088(&unk_100578DB0, &unk_100404810);
  sub_100168088(&unk_100578B20, &unk_100405CB0);
  sub_100009FAC(&unk_100574B00, &unk_100578DB0, &unk_100404810, &protocol conformance descriptor for CurrentValueSubject<A, B>);
  sub_100009FAC(&qword_100578B30, &unk_100578B20, &unk_100405CB0, &protocol conformance descriptor for Future<A, B>);
  Publisher<>.flatMap<A>(maxPublishers:_:)();

  sub_100009FAC(&qword_100578B38, &unk_100578B10, &unk_100405CA0, &protocol conformance descriptor for Publishers.FlatMap<A, B>);
  v10 = v14;
  v11 = Publisher.eraseToAnyPublisher()();
  (*(v15 + 8))(v6, v10);
  return v11;
}

uint64_t sub_100228C70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v21 = a5;
  v9 = *(type metadata accessor for PageContent() - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin();
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100168088(&qword_100578010, &qword_100401F60);
  __chkstk_darwin();
  v13 = &v20 - v12;
  sub_100168088(&unk_100578B20, &unk_100405CB0);
  v14 = type metadata accessor for TaskPriority();
  (*(*(v14 - 8) + 56))(v13, 1, 1, v14);
  sub_1001AB84C(a1, v11);
  v15 = (*(v9 + 80) + 24) & ~*(v9 + 80);
  v16 = v15 + v10;
  v17 = swift_allocObject();
  *(v17 + 16) = a2;
  sub_1001AD194(v11, v17 + v15, &type metadata accessor for PageContent);
  *(v17 + v16) = a3;
  *(v17 + (v16 & 0xFFFFFFFFFFFFFFF8) + 8) = a4;
  v18 = swift_allocObject();
  *(v18 + 16) = &unk_100405CC8;
  *(v18 + 24) = v17;

  result = Future<>.init(priority:unwrapping:)();
  *v21 = result;
  return result;
}

uint64_t sub_100228EA4(uint64_t a1, uint64_t a2, char a3)
{
  *(v3 + 40) = a3;
  *(v3 + 16) = a1;
  *(v3 + 24) = a2;
  type metadata accessor for MainActor();
  *(v3 + 32) = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100228F40, v5, v4);
}

uint64_t sub_100228F40()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 16);
  v3 = *(v0 + 40);

  v4 = sub_100229744(v2, v1, v3);
  v5 = *(v0 + 8);

  return v5(v4);
}

uint64_t sub_100228FF4()
{
  v2 = *(type metadata accessor for PageContent() - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = *(v0 + v3 + *(v2 + 64));
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1001AB9B8;

  return sub_100228EA4(v4, v0 + v3, v5);
}

id sub_10022910C(uint64_t a1, uint64_t a2, int a3)
{
  v45 = a1;
  v46 = type metadata accessor for ModernShelf();
  v5 = *(v46 - 8);
  __chkstk_darwin();
  v7 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v9 = &v42 - v8;
  __chkstk_darwin();
  v43 = &v42 - v10;
  v11 = *(a2 + *(type metadata accessor for ModernPage() + 24));
  v12 = *(v11 + 16);
  if (!v12)
  {
    return 0;
  }

  LODWORD(v42) = a3;
  v13 = 0;
  v14 = v5 + 16;
  v44 = (v5 + 8);
  while (1)
  {
    if (v13 >= *(v11 + 16))
    {
LABEL_47:
      __break(1u);
      goto LABEL_48;
    }

    (*(v5 + 16))(v7, v11 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v13, v46);
    v15 = ModernShelf.id.getter();
    v17 = v16;
    type metadata accessor for ShowListProvider();
    if (v15 == static ShowListProvider.showsShelfID.getter() && v17 == v18)
    {
      break;
    }

    v19 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v19)
    {
      goto LABEL_10;
    }

    ++v13;
    (*v44)(v7, v46);
    if (v12 == v13)
    {
      return 0;
    }
  }

LABEL_10:
  v21 = *(v5 + 32);
  v22 = v46;
  v21(v9, v7, v46);
  v21(v43, v9, v22);
  v23 = ModernShelf.items.getter();
  v48 = _swiftEmptyArrayStorage;
  v24 = *(v23 + 16);
  if (v24)
  {
    v25 = v23 + 32;
    v7 = _swiftEmptyArrayStorage;
    v26 = v42;
    do
    {
      sub_100004428(v25, v49);
      sub_1000109E4(v49, v47);
      sub_100168088(&qword_1005748E0, &qword_100401D88);
      type metadata accessor for LibraryShowLockup();
      if ((swift_dynamicCast() & 1) != 0 && v47[5])
      {
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v48 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v48 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v7 = v48;
      }

      v25 += 40;
      --v24;
    }

    while (v24);
  }

  else
  {

    v7 = _swiftEmptyArrayStorage;
    v26 = v42;
  }

  if (v26 == 7)
  {
    v14 = 6;
  }

  else
  {
    v27 = ShowsSortType.rawValue.getter();
    v29 = v28;
    if (v27 == ShowsSortType.rawValue.getter() && v29 == v30)
    {

      v14 = 5;
    }

    else
    {
      v31 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v31)
      {
        v14 = 5;
      }

      else
      {
        v14 = 0;
      }
    }
  }

  v47[0] = _swiftEmptyArrayStorage;
  v11 = v7 & 0xFFFFFFFFFFFFFF8;
  if (!(v7 >> 62))
  {
    v32 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_30;
  }

LABEL_48:
  v32 = _CocoaArrayWrapper.endIndex.getter();
LABEL_30:
  v33 = 0;
  v42 = _swiftEmptyArrayStorage;
  while (v32 != v33)
  {
    if ((v7 & 0xC000000000000001) != 0)
    {
      v34 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v35 = v33 + 1;
      if (__OFADD__(v33, 1))
      {
        goto LABEL_45;
      }
    }

    else
    {
      if (v33 >= *(v11 + 16))
      {
        goto LABEL_46;
      }

      v34 = *(v7 + 8 * v33 + 32);

      v35 = v33 + 1;
      if (__OFADD__(v33, 1))
      {
LABEL_45:
        __break(1u);
LABEL_46:
        __break(1u);
        goto LABEL_47;
      }
    }

    sub_100009F1C(0, &qword_100577460, CPListItem_ptr);
    memset(v49, 0, sizeof(v49));
    v50 = -1;
    v36 = sub_100271D14(v45, v34, v49, v14);

    ++v33;
    if (v36)
    {
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v47[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v47[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v42 = v47[0];
      v33 = v35;
    }
  }

  v37 = v42;
  if (v42 >> 62)
  {

    sub_100168088(&unk_100574A00, &unk_100401EC0);
    v38 = _bridgeCocoaArray<A>(_:)();
  }

  else
  {

    dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
    v38 = v37;
  }

  v39 = objc_allocWithZone(CPListSection);
  sub_1001AA058(v38);

  isa = Array._bridgeToObjectiveC()().super.isa;

  v41 = [v39 initWithItems:isa];

  (*v44)(v43, v46);
  return v41;
}

uint64_t sub_100229744(uint64_t a1, uint64_t a2, int a3)
{
  type metadata accessor for ModernPage();
  __chkstk_darwin();
  v6 = v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Logger();
  v8 = *(v7 - 8);
  __chkstk_darwin();
  v10 = v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for PageContent();
  __chkstk_darwin();
  v12 = v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1001AB84C(a2, v12);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      sub_1001AD1FC(v12, &type metadata accessor for PageContent);
    }

    else
    {
      sub_1001AD194(v12, v6, &type metadata accessor for ModernPage);
      type metadata accessor for CarPlayPageLoadCoordinator(0);
      swift_allocObject();

      v21 = sub_1002442DC(v20);

      v29[1] = v21;
      v22 = BaseObjectGraph.satisfying<A>(_:with:)();
      v23 = sub_10022910C(v22, v6, a3);
      if (v23)
      {
        v24 = v23;
        v25 = [v24 items];
        sub_100168088(&unk_100574A00, &unk_100401EC0);
        v26 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        if (v26 >> 62)
        {
          v27 = _CocoaArrayWrapper.endIndex.getter();
        }

        else
        {
          v27 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        if (v27)
        {
          sub_100168088(&unk_100574680, &qword_100401740);
          v28 = swift_allocObject();
          *(v28 + 16) = xmmword_1004007B0;
          *(v28 + 32) = v24;

          sub_1001AD1FC(v6, &type metadata accessor for ModernPage);
          return v28;
        }

        sub_1001AD1FC(v6, &type metadata accessor for ModernPage);
      }

      else
      {
        sub_1001AD1FC(v6, &type metadata accessor for ModernPage);
      }
    }

    return 0;
  }

  else if (EnumCaseMultiPayload)
  {

    sub_100009F1C(0, &qword_1005748A0, OS_os_log_ptr);
    static OS_os_log.carPlay.getter();
    swift_errorRetain();
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      *v17 = 138412290;
      swift_errorRetain();
      v19 = _swift_stdlib_bridgeErrorToNSError();
      *(v17 + 4) = v19;
      *v18 = v19;
      _os_log_impl(&_mh_execute_header, v15, v16, "Failed to load show list page: %@.", v17, 0xCu);
      sub_100186264(v18);
    }

    else
    {
    }

    (*(v8 + 8))(v10, v7);
    return 0;
  }

  else
  {
    return 0;
  }
}

void sub_100229BFC()
{
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  __chkstk_darwin();
  v4 = &aBlock - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v6 = &aBlock - v5;
  __chkstk_darwin();
  v8 = &aBlock - v7;
  if (v0[OBJC_IVAR____TtC8Podcasts25FetchFairPlayKeyOperation_iTunesCloudFairPlayOfflineEnabled] != 1)
  {
    static Logger.fairPlay.getter();
    v9 = v0;
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      aBlock = v20;
      *v19 = 136315138;
      v21 = sub_10022A25C();
      v23 = sub_1000153E0(v21, v22, &aBlock);

      *(v19 + 4) = v23;
      sub_100004590(v20);
    }

    (*(v2 + 8))(v4, v1);
    goto LABEL_9;
  }

  if (v0[OBJC_IVAR____TtC8Podcasts25FetchFairPlayKeyOperation_episodeAdamID + 8])
  {
    static Logger.fairPlay.getter();
    v9 = v0;
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      aBlock = v13;
      *v12 = 136315138;
      v14 = sub_10022A25C();
      v16 = sub_1000153E0(v14, v15, &aBlock);

      *(v12 + 4) = v16;
      sub_100004590(v13);
    }

    (*(v2 + 8))(v6, v1);
LABEL_9:
    v24 = *&v9[OBJC_IVAR____TtC8Podcasts13BaseOperation_resultHandler];
    if (v24)
    {
      v25 = *&v9[OBJC_IVAR____TtC8Podcasts13BaseOperation_resultHandler + 8];
      v53 = sub_100168088(&qword_100578BE0, &unk_100405DA0);
      aBlock = 0;
      LOBYTE(v51) = 0;

      v24(&aBlock);
      sub_100037470(v24, v25);
      sub_100004590(&aBlock);
    }

    goto LABEL_11;
  }

  v26 = v0;
  URL.path(percentEncoded:)(0);
  v27._countAndFlagsBits = 0x676B70766F6D2ELL;
  v27._object = 0xE700000000000000;
  v28 = String.hasSuffix(_:)(v27);

  if (v28)
  {
    v29 = objc_allocWithZone(AVURLAsset);
    URL._bridgeToObjectiveC()(v30);
    v32 = v31;
    [v29 initWithURL:v31 options:0];

    v33 = objc_allocWithZone(type metadata accessor for FairPlayAsset());
    v34 = FairPlayAsset.init(adamID:avAsset:)();
    v35 = *&v26[OBJC_IVAR____TtC8Podcasts25FetchFairPlayKeyOperation_fairPlayKeyLoader];
    v36 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v37 = swift_allocObject();
    *(v37 + 16) = v36;
    *(v37 + 24) = v34;
    v54 = sub_10022B2A8;
    v55 = v37;
    aBlock = _NSConcreteStackBlock;
    v51 = 1107296256;
    v52 = sub_10022AF78;
    v53 = &unk_1004E6540;
    v38 = _Block_copy(&aBlock);
    v39 = v34;

    [v35 createSessionWithAsset:v39 completion:v38];
    _Block_release(v38);

    return;
  }

  static Logger.fairPlay.getter();
  v40 = v0;
  v41 = Logger.logObject.getter();
  v42 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v41, v42))
  {
    v43 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    aBlock = v44;
    *v43 = 136315138;
    v45 = sub_10022A25C();
    v47 = sub_1000153E0(v45, v46, &aBlock);

    *(v43 + 4) = v47;
    _os_log_impl(&_mh_execute_header, v41, v42, "%s Not a FairPlay asset, finishing operation.", v43, 0xCu);
    sub_100004590(v44);
  }

  (*(v2 + 8))(v8, v1);
  v48 = *&v40[OBJC_IVAR____TtC8Podcasts13BaseOperation_resultHandler];
  if (v48)
  {
    v49 = *&v40[OBJC_IVAR____TtC8Podcasts13BaseOperation_resultHandler + 8];
    v53 = sub_100168088(&qword_100578BE0, &unk_100405DA0);
    aBlock = 0;
    LOBYTE(v51) = 0;

    v48(&aBlock);
    sub_100037470(v48, v49);
    sub_100004590(&aBlock);
  }

LABEL_11:
  sub_10003172C();
}

unint64_t sub_10022A25C()
{
  v1 = (v0 + OBJC_IVAR____TtC8Podcasts25FetchFairPlayKeyOperation____lazy_storage___logPrefix);
  if (*(v0 + OBJC_IVAR____TtC8Podcasts25FetchFairPlayKeyOperation____lazy_storage___logPrefix + 8))
  {
    v2 = *v1;
  }

  else
  {
    v2 = 0xD00000000000001CLL;
    *v1 = 0xD00000000000001CLL;
    v1[1] = 0x800000010046A5E0;
  }

  return v2;
}

char *sub_10022A2C0(uint64_t a1, void **a2, uint64_t a3, void *a4)
{
  v7 = type metadata accessor for Logger();
  v8 = *(v7 - 8);
  __chkstk_darwin();
  v10 = &v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v12 = &v52 - v11;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v14 = result;
    if (a2)
    {
      swift_errorRetain();
      static Logger.fairPlay.getter();
      v15 = v14;
      v16 = a4;
      v17 = Logger.logObject.getter();
      v18 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        v53 = swift_slowAlloc();
        v54 = v7;
        aBlock = v53;
        *v19 = 136315651;
        v20 = sub_10022A25C();
        v22 = v8;
        v23 = sub_1000153E0(v20, v21, &aBlock);

        *(v19 + 4) = v23;
        *(v19 + 12) = 2160;
        *(v19 + 14) = 1752392040;
        *(v19 + 22) = 2081;
        v24 = FairPlayAsset.description.getter();
        v26 = sub_1000153E0(v24, v25, &aBlock);

        *(v19 + 24) = v26;
        _os_log_impl(&_mh_execute_header, v17, v18, "%s Error creating content key session for adamID %{private,mask.hash}s, failing operation.", v19, 0x20u);
        swift_arrayDestroy();

        (*(v22 + 8))(v12, v54);
      }

      else
      {

        (*(v8 + 8))(v12, v7);
      }

      v32 = *&v15[OBJC_IVAR____TtC8Podcasts13BaseOperation_resultHandler];
      if (v32)
      {
        v33 = *&v15[OBJC_IVAR____TtC8Podcasts13BaseOperation_resultHandler + 8];
        v58 = sub_100168088(&qword_100578BE0, &unk_100405DA0);
        aBlock = a2;
        LOBYTE(v56) = 1;
        swift_errorRetain();
        swift_errorRetain();
        sub_100013CB4(v32, v33);
        v32(&aBlock);
        sub_100037470(v32, v33);
        sub_100004590(&aBlock);
      }

      else
      {
        swift_errorRetain();
      }

      v34 = OBJC_IVAR____TtC8Podcasts13BaseOperation_lock;
      v35 = *&v15[OBJC_IVAR____TtC8Podcasts13BaseOperation_lock];
      swift_errorRetain();
      [v35 lock];
      *&v15[OBJC_IVAR____TtC8Podcasts13BaseOperation__error] = a2;
      swift_errorRetain();

      [*&v15[v34] unlock];

      sub_10003172C();
    }

    else
    {
      if (a1)
      {
        v27 = *&result[OBJC_IVAR____TtC8Podcasts25FetchFairPlayKeyOperation_fairPlayKeyLoader];
        v28 = swift_allocObject();
        *(v28 + 16) = v14;
        *(v28 + 24) = a4;
        v59 = sub_10022B304;
        v60 = v28;
        aBlock = _NSConcreteStackBlock;
        v56 = 1107296256;
        v57 = sub_10022AF0C;
        v58 = &unk_1004E6590;
        v29 = _Block_copy(&aBlock);
        v30 = v14;
        v31 = a4;
        swift_unknownObjectRetain();
        swift_unknownObjectRetain();

        [v27 startKeyRequestWithSession:a1 completion:v29];

        _Block_release(v29);
        swift_unknownObjectRelease();
        return swift_unknownObjectRelease();
      }

      static Logger.fairPlay.getter();
      v36 = v14;
      v37 = a4;
      v38 = Logger.logObject.getter();
      v39 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v38, v39))
      {
        v40 = swift_slowAlloc();
        aBlock = swift_slowAlloc();
        *v40 = 136315651;
        v41 = sub_10022A25C();
        v54 = v8;
        v43 = sub_1000153E0(v41, v42, &aBlock);

        *(v40 + 4) = v43;
        *(v40 + 12) = 2160;
        *(v40 + 14) = 1752392040;
        *(v40 + 22) = 2081;
        v44 = FairPlayAsset.description.getter();
        v46 = sub_1000153E0(v44, v45, &aBlock);

        *(v40 + 24) = v46;
        _os_log_impl(&_mh_execute_header, v38, v39, "%s No error or session returned creating content key session for adamID %{private,mask.hash}s, failing operation.", v40, 0x20u);
        swift_arrayDestroy();

        (*(v54 + 8))(v10, v7);
      }

      else
      {

        (*(v8 + 8))(v10, v7);
      }

      sub_10022B2B0();
      v47 = swift_allocError();
      v48 = *&v36[OBJC_IVAR____TtC8Podcasts13BaseOperation_resultHandler];
      if (v48)
      {
        v49 = *&v36[OBJC_IVAR____TtC8Podcasts13BaseOperation_resultHandler + 8];
        v58 = sub_100168088(&qword_100578BE0, &unk_100405DA0);
        aBlock = v47;
        LOBYTE(v56) = 1;
        sub_100013CB4(v48, v49);
        swift_errorRetain();
        v48(&aBlock);
        sub_100037470(v48, v49);
        sub_100004590(&aBlock);
      }

      v50 = OBJC_IVAR____TtC8Podcasts13BaseOperation_lock;
      v51 = *&v36[OBJC_IVAR____TtC8Podcasts13BaseOperation_lock];
      swift_errorRetain();
      [v51 lock];
      *&v36[OBJC_IVAR____TtC8Podcasts13BaseOperation__error] = v47;
      swift_errorRetain();

      [*&v36[v50] unlock];

      sub_10003172C();
    }
  }

  return result;
}

void sub_10022A9BC(uint64_t a1, void *a2, void *a3)
{
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v11 = &v41 - v10;
  if (a1)
  {
    swift_errorRetain();
    static Logger.fairPlay.getter();
    v12 = a2;
    v13 = a3;
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v42 = v6;
      v43 = v41;
      *v16 = 136315651;
      v17 = sub_10022A25C();
      v19 = v7;
      v20 = sub_1000153E0(v17, v18, &v43);

      *(v16 + 4) = v20;
      *(v16 + 12) = 2160;
      *(v16 + 14) = 1752392040;
      *(v16 + 22) = 2081;
      v21 = FairPlayAsset.description.getter();
      v23 = sub_1000153E0(v21, v22, &v43);

      *(v16 + 24) = v23;
      _os_log_impl(&_mh_execute_header, v14, v15, "%s Error fetching key for adamID %{private,mask.hash}s, failing operation.", v16, 0x20u);
      swift_arrayDestroy();

      (*(v19 + 8))(v11, v42);
    }

    else
    {

      (*(v7 + 8))(v11, v6);
    }

    v35 = *&v12[OBJC_IVAR____TtC8Podcasts13BaseOperation_resultHandler];
    if (v35)
    {
      v36 = *&v12[OBJC_IVAR____TtC8Podcasts13BaseOperation_resultHandler + 8];
      v45 = sub_100168088(&qword_100578BE0, &unk_100405DA0);
      v43 = a1;
      v44 = 1;
      swift_errorRetain();
      swift_errorRetain();
      sub_100013CB4(v35, v36);
      v35(&v43);
      sub_100037470(v35, v36);
      sub_100004590(&v43);
    }

    else
    {
      swift_errorRetain();
    }

    v37 = OBJC_IVAR____TtC8Podcasts13BaseOperation_lock;
    v38 = *&v12[OBJC_IVAR____TtC8Podcasts13BaseOperation_lock];
    swift_errorRetain();
    [v38 lock];
    *&v12[OBJC_IVAR____TtC8Podcasts13BaseOperation__error] = a1;
    swift_errorRetain();

    [*&v12[v37] unlock];

    sub_10003172C();
  }

  else
  {
    static Logger.fairPlay.getter();
    v24 = a2;
    v25 = a3;
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      *v28 = 136315651;
      v29 = sub_10022A25C();
      v42 = v7;
      v31 = sub_1000153E0(v29, v30, &v43);

      *(v28 + 4) = v31;
      *(v28 + 12) = 2160;
      *(v28 + 14) = 1752392040;
      *(v28 + 22) = 2081;
      v32 = FairPlayAsset.description.getter();
      v34 = sub_1000153E0(v32, v33, &v43);

      *(v28 + 24) = v34;
      _os_log_impl(&_mh_execute_header, v26, v27, "%s Successfully fetched key for adamID %{private,mask.hash}s, finishing operation.", v28, 0x20u);
      swift_arrayDestroy();

      (*(v42 + 8))(v9, v6);
    }

    else
    {

      (*(v7 + 8))(v9, v6);
    }

    v39 = *&v24[OBJC_IVAR____TtC8Podcasts13BaseOperation_resultHandler];
    if (v39)
    {
      v40 = *&v24[OBJC_IVAR____TtC8Podcasts13BaseOperation_resultHandler + 8];
      v45 = sub_100168088(&qword_100578BE0, &unk_100405DA0);
      v43 = 0;
      v44 = 0;

      v39(&v43);
      sub_100037470(v39, v40);
      sub_100004590(&v43);
    }

    sub_10003172C();
  }
}

void sub_10022AF0C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

uint64_t sub_10022AF78(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  swift_unknownObjectRetain();
  v6 = a3;
  v5(a2, a3);

  return swift_unknownObjectRelease();
}

uint64_t sub_10022B028()
{
  sub_10003163C(*(v0 + OBJC_IVAR____TtC8Podcasts25FetchFairPlayKeyOperation_input), *(v0 + OBJC_IVAR____TtC8Podcasts25FetchFairPlayKeyOperation_input + 8));
  v1 = OBJC_IVAR____TtC8Podcasts25FetchFairPlayKeyOperation_episodeLocation;
  v2 = type metadata accessor for URL();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  swift_unknownObjectRelease();
}

uint64_t type metadata accessor for FetchFairPlayKeyOperation(uint64_t a1)
{
  result = qword_100578B98;
  if (!qword_100578B98)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10022B1C8(uint64_t a1)
{
  result = type metadata accessor for URL();
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

uint64_t sub_10022B288@<X0>(uint64_t a1@<X8>)
{
  v2 = v1 + OBJC_IVAR____TtC8Podcasts25FetchFairPlayKeyOperation_input;
  v3 = *(v1 + OBJC_IVAR____TtC8Podcasts25FetchFairPlayKeyOperation_input);
  *a1 = v3;
  v4 = *(v2 + 8);
  *(a1 + 8) = v4;
  return sub_1000314A0(v3, v4);
}

unint64_t sub_10022B2B0()
{
  result = qword_100578BE8;
  if (!qword_100578BE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100578BE8);
  }

  return result;
}

unint64_t sub_10022B320()
{
  result = qword_100578BF0;
  if (!qword_100578BF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100578BF0);
  }

  return result;
}

NSArray sub_10022B37C(void *a1, objc_class *a2, int64_t a3, unint64_t a4)
{
  v78 = a3;
  isa = a2;
  v79 = a1;
  v74 = *(type metadata accessor for ArtworkModel() - 8);
  __chkstk_darwin();
  v6 = (&v70 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_100168088(&unk_100575AE0, &unk_100405E80);
  __chkstk_darwin();
  v76 = (&v70 - v7);
  sub_100168088(&unk_100578410, &qword_100402DB0);
  __chkstk_darwin();
  v75 = &v70 - v8;
  sub_100168088(&qword_100578C00, &unk_100405E90);
  __chkstk_darwin();
  v10 = &v70 - v9;
  v11 = _s20ShowcaseImageRowItemVMa(0);
  v12 = *(v11 - 8);
  v84 = v11;
  v85 = v12;
  __chkstk_darwin();
  v14 = (&v70 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin();
  v16 = &v70 - v15;
  if (a4 >> 62)
  {
    goto LABEL_19;
  }

  v17 = *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v81 = v6;
  for (i = a4; v17; i = a4)
  {
    v18 = 0;
    v83 = a4 & 0xC000000000000001;
    v19 = a4 & 0xFFFFFFFFFFFFFF8;
    v6 = (v85 + 48);
    v20 = _swiftEmptyArrayStorage;
    v80 = v16;
    while (v83)
    {
      specialized _ArrayBuffer._getElementSlowPath(_:)();
      v21 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        goto LABEL_17;
      }

LABEL_9:
      sub_10022BDF4(v10);
      if ((*v6)(v10, 1, v84) == 1)
      {
        sub_100009104(v10, &qword_100578C00, &unk_100405E90);
      }

      else
      {
        sub_10022D080(v10, v16, _s20ShowcaseImageRowItemVMa);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v20 = sub_100243BAC(0, v20[2] + 1, 1, v20);
        }

        v23 = v20[2];
        v22 = v20[3];
        if (v23 >= v22 >> 1)
        {
          v20 = sub_100243BAC((v22 > 1), v23 + 1, 1, v20);
        }

        v20[2] = v23 + 1;
        v24 = v20 + ((*(v85 + 80) + 32) & ~*(v85 + 80)) + *(v85 + 72) * v23;
        v16 = v80;
        sub_10022D080(v80, v24, _s20ShowcaseImageRowItemVMa);
        a4 = i;
      }

      ++v18;
      if (v21 == v17)
      {
        goto LABEL_21;
      }
    }

    if (v18 >= *(v19 + 16))
    {
      goto LABEL_18;
    }

    v21 = v18 + 1;
    if (!__OFADD__(v18, 1))
    {
      goto LABEL_9;
    }

LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    v17 = _CocoaArrayWrapper.endIndex.getter();
    v81 = v6;
  }

  v20 = _swiftEmptyArrayStorage;
LABEL_21:
  v28 = sub_10023E334(CPMaximumNumberOfGridImages, v20);
  v29 = v27 >> 1;
  if (v26 == v27 >> 1)
  {

    swift_unknownObjectRelease();
    return 0;
  }

  v31 = v25;
  v32 = v26;
  v33 = v27;
  type metadata accessor for CarPlayPageLoadCoordinator(0);
  v83 = v32;
  BaseObjectGraph.inject<A>(_:)();
  v73 = aBlock;
  v80 = String._bridgeToObjectiveC()();

  sub_100009F1C(0, &qword_100578C08, UIImage_ptr);
  result.super.isa = Array._bridgeToObjectiveC()().super.isa;
  v35 = v29 - v83;
  if (__OFSUB__(v29, v83))
  {
    goto LABEL_49;
  }

  isa = result.super.isa;
  v72 = v28;
  v71 = v33;
  v78 = v29 - v83;
  v70 = v35 & ~(v35 >> 63);
  if (v35)
  {
    aBlock = _swiftEmptyArrayStorage;
    result.super.isa = sub_1001A7364(0, v35 & ~(v35 >> 63), 0);
    if (v35 < 0)
    {
LABEL_50:
      __break(1u);
      goto LABEL_51;
    }

    v36 = aBlock;
    v37 = v83;
    if (v83 <= v29)
    {
      v38 = v29;
    }

    else
    {
      v38 = v83;
    }

    while (v38 != v37)
    {
      sub_10022D1F4(v31 + *(v85 + 72) * v37, v14, _s20ShowcaseImageRowItemVMa);
      v40 = *v14;
      v39 = v14[1];

      result.super.isa = sub_10022D25C(v14, _s20ShowcaseImageRowItemVMa);
      aBlock = v36;
      v42 = v36[2];
      v41 = v36[3];
      if (v42 >= v41 >> 1)
      {
        result.super.isa = sub_1001A7364((v41 > 1), v42 + 1, 1);
        v36 = aBlock;
      }

      v36[2] = (v42 + 1);
      v43 = &v36[2 * v42];
      v43[4] = v40;
      v43[5] = v39;
      if (v29 == ++v37)
      {
        goto LABEL_33;
      }
    }

    __break(1u);
    goto LABEL_48;
  }

LABEL_33:
  v44 = v80;
  v45 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v46 = Array._bridgeToObjectiveC()().super.isa;

  v47 = isa;
  v48 = [v45 initWithText:v44 images:isa imageTitles:v46];

  v49 = v78;
  if (!v78)
  {
    v58 = v48;
    v51 = _swiftEmptyArrayStorage;
LABEL_45:
    CarPlayPageLoadCoordinator.loadImages(for:into:)(v51, v48);

    v59 = v76;
    *v76 = i;
    v60 = type metadata accessor for CarPlayTemplateInfo.TemplateType(0);
    swift_storeEnumTagMultiPayload();
    v61 = *(*(v60 - 8) + 56);
    v30 = v48;
    v61(v59, 0, 1, v60);
    v62 = v75;
    v61(v75, 1, 1, v60);
    v63 = type metadata accessor for CarPlayTemplateInfo(0);
    v64 = *(v63 + 20);
    sub_1001FBB44(v59, v62);
    *(v62 + v64) = 0;
    (*(*(v63 - 8) + 56))(v62, 0, 1, v63);
    sub_1001D2AD4(v62);
    v65 = v79;
    v90 = sub_10022D0E8;
    v91 = v79;
    aBlock = _NSConcreteStackBlock;
    v87 = 1107296256;
    v88 = sub_100372F30;
    v89 = &unk_1004E6648;
    v66 = _Block_copy(&aBlock);

    [v48 setHandler:v66];
    _Block_release(v66);
    v67 = swift_allocObject();
    v67[2] = v72;
    v67[3] = v31;
    v68 = v71;
    v67[4] = v83;
    v67[5] = v68;
    v67[6] = v65;
    v90 = sub_10022D0F0;
    v91 = v67;
    aBlock = _NSConcreteStackBlock;
    v87 = 1107296256;
    v88 = sub_1002B1CD0;
    v89 = &unk_1004E6698;
    v69 = _Block_copy(&aBlock);

    swift_unknownObjectRetain();

    [v48 setListImageRowHandler:v69];
    _Block_release(v69);

    swift_unknownObjectRelease();

    return v30;
  }

  aBlock = _swiftEmptyArrayStorage;
  v50 = v48;
  result.super.isa = sub_1001A7650(0, v70, 0);
  if ((v49 & 0x8000000000000000) == 0)
  {
    v80 = v48;
    v51 = aBlock;
    v52 = v83;
    if (v83 <= v29)
    {
      v53 = v29;
    }

    else
    {
      v53 = v83;
    }

    v54 = v74;
    while (v53 != v52)
    {
      sub_10022D1F4(v31 + *(v85 + 72) * v52, v14, _s20ShowcaseImageRowItemVMa);
      v55 = v81;
      sub_10022D1F4(v14 + *(v84 + 24), v81, &type metadata accessor for ArtworkModel);
      sub_10022D25C(v14, _s20ShowcaseImageRowItemVMa);
      aBlock = v51;
      v57 = v51[2];
      v56 = v51[3];
      if (v57 >= v56 >> 1)
      {
        sub_1001A7650((v56 > 1), v57 + 1, 1);
        v54 = v74;
        v51 = aBlock;
      }

      v51[2] = (v57 + 1);
      result.super.isa = sub_10022D080(v55, v51 + ((*(v54 + 80) + 32) & ~*(v54 + 80)) + *(v54 + 72) * v57, &type metadata accessor for ArtworkModel);
      if (v29 == ++v52)
      {
        v48 = v80;
        goto LABEL_45;
      }
    }

LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

LABEL_51:
  __break(1u);
  return result;
}

uint64_t _s20ShowcaseImageRowItemVMa(uint64_t a1)
{
  result = qword_100578C80;
  if (!qword_100578C80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10022BDF4@<X0>(uint64_t a2@<X8>)
{
  v35 = a2;
  sub_100168088(&unk_100578C10, &qword_100400B60);
  __chkstk_darwin();
  v32 = &v31 - v2;
  v3 = type metadata accessor for ArtworkModel();
  v31 = *(v3 - 8);
  __chkstk_darwin();
  v33 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100168088(&qword_10057CF40, qword_100405ED0);
  __chkstk_darwin();
  v6 = &v31 - v5;
  v7 = type metadata accessor for FlowDestination();
  v34 = *(v7 - 8);
  __chkstk_darwin();
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = _s20ShowcaseImageRowItemVMa(0);
  v10 = *(v36 - 8);
  __chkstk_darwin();
  v12 = (&v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = Showcase.showName.getter();
  if (!v14)
  {
    goto LABEL_10;
  }

  v15 = v13;
  v16 = v14;
  v17 = HIBYTE(v14) & 0xF;
  if ((v14 & 0x2000000000000000) == 0)
  {
    v17 = v13 & 0xFFFFFFFFFFFFLL;
  }

  if (!v17)
  {

LABEL_10:

    goto LABEL_11;
  }

  Showcase.clickAction.getter();
  if (!v38)
  {

    sub_100009104(v37, &qword_100578C20, &unk_100403D30);
LABEL_14:
    v19 = v35;
    (*(v34 + 56))(v6, 1, 1, v7);
    goto LABEL_15;
  }

  sub_100168088(&unk_10057BB70, &qword_100401CB0);
  type metadata accessor for FlowAction();
  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_14;
  }

  dispatch thunk of FlowAction.destination.getter();

  v18 = v34;
  if ((*(v34 + 48))(v6, 1, v7) == 1)
  {

    v19 = v35;
LABEL_15:
    sub_100009104(v6, &qword_10057CF40, qword_100405ED0);
    v20 = 1;
    v21 = v19;
    return (*(v10 + 56))(v21, v20, 1, v36);
  }

  (*(v18 + 32))(v9, v6, v7);
  v23 = v32;
  Showcase.showArtwork.getter();
  if ((*(v31 + 48))(v23, 1, v3) != 1)
  {
    sub_10022D080(v23, v33, &type metadata accessor for ArtworkModel);
    *v12 = v15;
    v12[1] = v16;
    v24 = v12 + *(v36 + 20);
    v25 = sub_100168088(&unk_100575B10, &qword_100402DC8);
    v26 = *(v25 + 48);
    v27 = &v24[*(v25 + 64)];
    FlowDestination.pageDestinationURL.getter();
    *&v24[v26] = FlowDestination.pageDestinationPage.getter();
    v28 = Showcase.showAdamId.getter();
    LOBYTE(v26) = v29;

    (*(v34 + 8))(v9, v7);
    *v27 = v28;
    v27[8] = v26 & 1;
    type metadata accessor for CarPlayTemplateInfo.TemplateType(0);
    swift_storeEnumTagMultiPayload();
    sub_10022D080(v33, v12 + *(v36 + 24), &type metadata accessor for ArtworkModel);
    v30 = v35;
    sub_10022D080(v12, v35, _s20ShowcaseImageRowItemVMa);
    v21 = v30;
    v20 = 0;
    return (*(v10 + 56))(v21, v20, 1, v36);
  }

  (*(v34 + 8))(v9, v7);

  sub_100009104(v23, &unk_100578C10, &qword_100400B60);
LABEL_11:
  v20 = 1;
  v21 = v35;
  return (*(v10 + 56))(v21, v20, 1, v36);
}

uint64_t sub_10022C378(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_100168088(&qword_100578010, &qword_100401F60);
  __chkstk_darwin();
  v9 = &v14 - v8;
  static TaskPriority.userInitiated.getter();
  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v9, 0, 1, v10);
  type metadata accessor for MainActor();

  swift_unknownObjectRetain();

  v11 = static MainActor.shared.getter();
  v12 = swift_allocObject();
  v12[2] = v11;
  v12[3] = &protocol witness table for MainActor;
  v12[4] = a4;
  v12[5] = a1;
  v12[6] = a2;
  v12[7] = a3;
  sub_10023EE80(0, 0, v9, &unk_100405EC0, v12);
}

uint64_t sub_10022C4CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[3] = a5;
  v7[6] = type metadata accessor for MainActor();
  v7[7] = static MainActor.shared.getter();
  v8 = type metadata accessor for CarPlayController();
  v9 = swift_task_alloc();
  v7[8] = v9;
  *v9 = v7;
  v9[1] = sub_10022C5A0;

  return BaseObjectGraph.inject<A>(_:)(v7 + 2, v8, v8);
}

uint64_t sub_10022C5A0()
{
  *(*v1 + 72) = v0;

  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  if (v0)
  {
    v4 = sub_10022D44C;
  }

  else
  {
    v4 = sub_1001FB358;
  }

  return _swift_task_switch(v4, v3, v2);
}

void sub_10022C6FC(uint64_t a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unint64_t a8, uint64_t a9)
{
  v50 = a6;
  v55 = a3;
  v56 = a4;
  v12 = type metadata accessor for Logger();
  v51 = *(v12 - 8);
  v52 = v12;
  __chkstk_darwin();
  v14 = &v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100168088(&qword_100578010, &qword_100401F60);
  __chkstk_darwin();
  v54 = &v49 - v15;
  v16 = type metadata accessor for CarPlayTemplateInfo(0);
  v53 = *(v16 - 8);
  __chkstk_darwin();
  v49 = &v49 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100168088(&unk_100575AE0, &unk_100405E80);
  __chkstk_darwin();
  v19 = &v49 - v18;
  sub_100168088(&unk_100578410, &qword_100402DB0);
  __chkstk_darwin();
  v21 = &v49 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v23 = &v49 - v22;
  v24 = _s20ShowcaseImageRowItemVMa(0);
  __chkstk_darwin();
  v27 = &v49 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a8 >> 1) < a7)
  {
    __break(1u);
  }

  else if (a2 < a7 || (a8 >> 1) <= a2)
  {
    sub_100009F1C(0, &qword_1005748A0, OS_os_log_ptr);
    static OS_os_log.carPlay.getter();
    v45 = Logger.logObject.getter();
    v46 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      *v47 = 0;
      _os_log_impl(&_mh_execute_header, v45, v46, "Attempted to select list image row item with invalid index!", v47, 2u);
    }

    v48 = (*(v51 + 8))(v14, v52);
    v55(v48);
  }

  else
  {
    v52 = a9;
    sub_10022D1F4(v50 + *(v25 + 72) * a2, &v49 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0), _s20ShowcaseImageRowItemVMa);
    v28 = objc_allocWithZone(CPListImageRowItem);
    v29 = String._bridgeToObjectiveC()();
    sub_100009F1C(0, &qword_100578C08, UIImage_ptr);
    isa = Array._bridgeToObjectiveC()().super.isa;
    v31 = [v28 initWithText:v29 images:isa];

    sub_10022D1F4(&v27[*(v24 + 20)], v19, type metadata accessor for CarPlayTemplateInfo.TemplateType);
    v32 = type metadata accessor for CarPlayTemplateInfo.TemplateType(0);
    v33 = *(*(v32 - 8) + 56);
    v33(v19, 0, 1, v32);
    v33(v23, 1, 1, v32);
    v34 = *(v16 + 20);
    sub_1001FBB44(v19, v23);
    v23[v34] = 0;
    v35 = v53;
    (*(v53 + 56))(v23, 0, 1, v16);
    sub_1001D2D08(v23, v21);
    v36 = (*(v35 + 48))(v21, 1, v16);
    v37 = 0;
    if (v36 != 1)
    {
      sub_10022D1F4(v21, v49, type metadata accessor for CarPlayTemplateInfo);
      v37 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
      sub_10022D25C(v21, type metadata accessor for CarPlayTemplateInfo);
    }

    [v31 setUserInfo:v37];
    swift_unknownObjectRelease();
    sub_100009104(v23, &unk_100578410, &qword_100402DB0);
    v38 = v54;
    static TaskPriority.userInitiated.getter();
    v39 = type metadata accessor for TaskPriority();
    (*(*(v39 - 8) + 56))(v38, 0, 1, v39);
    type metadata accessor for MainActor();
    v40 = v52;

    v41 = v31;
    v42 = v56;

    v43 = static MainActor.shared.getter();
    v44 = swift_allocObject();
    v44[2] = v43;
    v44[3] = &protocol witness table for MainActor;
    v44[4] = v40;
    v44[5] = v41;
    v44[6] = v55;
    v44[7] = v42;
    sub_10023EE80(0, 0, v38, &unk_100405EA8, v44);

    sub_10022D25C(v27, _s20ShowcaseImageRowItemVMa);
  }
}

uint64_t sub_10022CDC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[3] = a5;
  v7[6] = type metadata accessor for MainActor();
  v7[7] = static MainActor.shared.getter();
  v8 = type metadata accessor for CarPlayController();
  v9 = swift_task_alloc();
  v7[8] = v9;
  *v9 = v7;
  v9[1] = sub_10022CE94;

  return BaseObjectGraph.inject<A>(_:)(v7 + 2, v8, v8);
}

uint64_t sub_10022CE94()
{
  *(*v1 + 72) = v0;

  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  if (v0)
  {
    v4 = sub_1001FB3F4;
  }

  else
  {
    v4 = sub_10022CFF0;
  }

  return _swift_task_switch(v4, v3, v2);
}

uint64_t sub_10022CFF0()
{
  v1 = v0[4];
  v2 = v0[5];
  v3 = v0[3];

  v4 = v0[2];
  sub_1002B2D3C(v3, v1, v2, v4);

  v5 = v0[1];

  return v5();
}

uint64_t sub_10022D080(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10022D120(uint64_t a1)
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
  v10[1] = sub_10001C51C;

  return sub_10022CDC0(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_10022D1F4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10022D25C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10022D2BC(uint64_t a1)
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
  v10[1] = sub_10021A620;

  return sub_10022C4CC(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_10022D3B8(uint64_t a1)
{
  result = type metadata accessor for CarPlayTemplateInfo.TemplateType(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for ArtworkModel();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void *sub_10022D450(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v5 = v4;
  v22 = a4;
  v23 = type metadata accessor for SmartPlayPlatformContext();
  v9 = *(v23 - 8);
  __chkstk_darwin();
  v11 = &v21[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = type metadata accessor for SmartPlayContext();
  v13 = *(v12 - 8);
  __chkstk_darwin();
  v15 = &v21[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_100168088(&qword_100574B10, &unk_100401F50);
  swift_allocObject();
  *(v4 + 104) = CurrentValueSubject.init(_:)();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  *(v4 + 32) = a3;
  sub_100168088(&qword_10057E670, &unk_100405FE0);

  BaseObjectGraph.inject<A>(_:)();
  sub_1000109E4(&v24, v4 + 40);
  *(v4 + 80) = v22;
  type metadata accessor for LibraryShowProvider();
  swift_allocObject();

  *(v4 + 88) = LibraryShowProvider.init(asPartOf:showUUID:)();
  (*(v13 + 104))(v15, enum case for SmartPlayContext.showPage(_:), v12);
  (*(v9 + 104))(v11, enum case for SmartPlayPlatformContext.carPlay(_:), v23);
  type metadata accessor for SmartPlayButtonController();
  swift_allocObject();

  *(v4 + 96) = SmartPlayButtonController.init(button:context:platform:objectGraph:)();

  LibraryShowProvider.loadPageContent()();

  sub_1000044A0((v5 + 40), *(v5 + 64));
  dispatch thunk of LibraryActionControllerProtocol.updateFeed(podcast:context:)();
  v16 = swift_allocObject();
  *(v16 + 16) = a2;
  *(v16 + 24) = a3;
  v17 = swift_allocObject();
  *(v17 + 16) = a2;
  *(v17 + 24) = a3;
  v18 = sub_100009F1C(0, &qword_1005729D0, OS_dispatch_queue_ptr);

  v19 = static OS_dispatch_queue.main.getter();
  v25 = v18;
  v26 = &protocol witness table for OS_dispatch_queue;
  *&v24 = v19;
  Promise.then(perform:orCatchError:on:)();

  sub_100004590(&v24);
  return v5;
}

uint64_t sub_10022D7F8(_BYTE *a1, uint64_t a2, unint64_t a3)
{
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = "Feed update was not successful from CarPlay store page";
  v11 = *a1;
  if (*a1)
  {
    v10 = "Feed update was successful from CarPlay store page";
  }

  v12 = v10 - 32;
  static Logger.podcastsStatesCoordination.getter();
  v13 = static os_log_type_t.default.getter();
  v14 = Logger.logObject.getter();
  if (os_log_type_enabled(v14, v13))
  {
    v19 = a3;
    if (v11)
    {
      v15 = 0xD000000000000032;
    }

    else
    {
      v15 = 0xD000000000000036;
    }

    v16 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    *v16 = 136315395;
    v17 = sub_1000153E0(v15, v12 | 0x8000000000000000, &v20);

    *(v16 + 4) = v17;
    *(v16 + 12) = 2081;
    *(v16 + 14) = sub_1000153E0(a2, v19, &v20);
    _os_log_impl(&_mh_execute_header, v14, v13, "%s adamID: %{private}s", v16, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_10022DA10(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.podcastsStatesCoordination.getter();
  v9 = static os_log_type_t.default.getter();
  v10 = Logger.logObject.getter();
  if (os_log_type_enabled(v10, v9))
  {
    v11 = swift_slowAlloc();
    v18 = v5;
    v12 = a3;
    v13 = v11;
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v19 = v15;
    *v13 = 136380931;
    *(v13 + 4) = sub_1000153E0(a2, v12, &v19);
    *(v13 + 12) = 2112;
    swift_errorRetain();
    v16 = _swift_stdlib_bridgeErrorToNSError();
    *(v13 + 14) = v16;
    *v14 = v16;
    _os_log_impl(&_mh_execute_header, v10, v9, "Error triggering feed update from CarPlay store page for podcast adamID: %{private}s, with error: %@.", v13, 0x16u);
    sub_100009104(v14, &qword_100575B20, &qword_100401F90);

    sub_100004590(v15);

    return (*(v6 + 8))(v8, v18);
  }

  else
  {

    return (*(v6 + 8))(v8, v5);
  }
}

uint64_t sub_10022DC1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v29 = type metadata accessor for ModernShelf.ItemPresentation();
  v5 = *(v29 - 8);
  __chkstk_darwin();
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ModernShelf();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin();
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(a1 + 16);
  if (v13)
  {
    v24 = v9;
    v25 = a2;
    v27 = *(v9 + 16);
    v28 = v9 + 16;
    v14 = (v5 + 8);
    v15 = (v9 + 8);
    v16 = a1 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
    v26 = *(v9 + 72);
    while (1)
    {
      v27(v12, v16, v8, v10);
      ModernShelf.itemPresentation.getter();
      ModernShelf.ItemPresentation.itemKind.getter();
      (*v14)(v7, v29);
      v17 = ModernShelf.ItemKind.rawValue.getter();
      v19 = v18;
      if (v17 == ModernShelf.ItemKind.rawValue.getter() && v19 == v20)
      {
        break;
      }

      v21 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v21)
      {
        goto LABEL_10;
      }

      (*v15)(v12, v8);
      v16 += v26;
      if (!--v13)
      {
        v22 = 1;
        v9 = v24;
        a2 = v25;
        return (*(v9 + 56))(a2, v22, 1, v8);
      }
    }

LABEL_10:
    v9 = v24;
    a2 = v25;
    (*(v24 + 32))(v25, v12, v8);
    v22 = 0;
  }

  else
  {
    v22 = 1;
  }

  return (*(v9 + 56))(a2, v22, 1, v8);
}

void *sub_10022DEC4(uint64_t a1)
{
  sub_100168088(&qword_100578DE0, &unk_100405FB0);
  __chkstk_darwin();
  v3 = v13 - v2;
  v4 = type metadata accessor for ModernShelf();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10022DC1C(a1, v3);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_100009104(v3, &qword_100578DE0, &unk_100405FB0);
    return _swiftEmptyArrayStorage;
  }

  else
  {
    (*(v5 + 32))(v7, v3, v4);
    v9 = ModernShelf.items.getter();
    v17 = _swiftEmptyArrayStorage;
    v10 = *(v9 + 16);
    if (v10)
    {
      v11 = v9 + 32;
      v8 = _swiftEmptyArrayStorage;
      do
      {
        sub_100004428(v11, v16);
        sub_1000109E4(v16, v14);
        sub_100168088(&qword_1005748E0, &qword_100401D88);
        type metadata accessor for LibraryEpisodeLockup();
        if ((swift_dynamicCast() & 1) != 0 && v15)
        {
          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          if (*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v17 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v13[1] = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          v8 = v17;
        }

        v11 += 40;
        --v10;
      }

      while (v10);
    }

    else
    {

      v8 = _swiftEmptyArrayStorage;
    }

    (*(v5 + 8))(v7, v4);
  }

  return v8;
}

char *sub_10022E16C(uint64_t a1, uint64_t a2)
{
  sub_100168088(&qword_100578DE0, &unk_100405FB0);
  __chkstk_darwin();
  v5 = v80 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v7 = v80 - v6;
  sub_100168088(&qword_100577490, &qword_1004017A0);
  __chkstk_darwin();
  v87 = v80 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v10 = v80 - v9;
  type metadata accessor for PageContent();
  __chkstk_darwin();
  v12 = v80 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v14 = v80 - v13;
  v15 = type metadata accessor for ModernPage();
  __chkstk_darwin();
  v88 = v80 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v18 = v80 - v17;
  sub_100231644(a1, v14, &type metadata accessor for PageContent);
  if (swift_getEnumCaseMultiPayload() != 3)
  {
    v30 = &type metadata accessor for PageContent;
    v31 = v14;
LABEL_92:
    sub_1002316B4(v31, v30);
    v79 = 0;
    return (v79 & 1);
  }

  sub_1001AD194(v14, v18, &type metadata accessor for ModernPage);
  sub_100231644(a2, v12, &type metadata accessor for PageContent);
  v19 = v18;
  if (swift_getEnumCaseMultiPayload() != 3)
  {
    sub_1002316B4(v18, &type metadata accessor for ModernPage);
    v30 = &type metadata accessor for PageContent;
    v31 = v12;
    goto LABEL_92;
  }

  v20 = v88;
  sub_1001AD194(v12, v88, &type metadata accessor for ModernPage);
  v21 = *(v15 + 24);
  v22 = *&v18[v21];
  v24 = sub_100230D5C(*(v19 + v21), v23);
  v82 = *(v20 + *(v15 + 24));
  v26 = sub_100230D5C(v82, v25);
  v27 = v26;
  v84 = v26;
  v85 = v24;
  v83 = v19;
  if (!v24)
  {
    v28 = 0;
    v29 = 0;
    v86 = 0;
    if (!v26)
    {
      goto LABEL_43;
    }

    goto LABEL_10;
  }

  v28 = ShowHeader.episodeToPlay.getter();

  if (v27)
  {
LABEL_10:

    v32 = ShowHeader.episodeToPlay.getter();

    if (!v28)
    {
      if (!v32)
      {
        v29 = 0;
        v86 = 0;
        goto LABEL_43;
      }

      v81 = v22;
      v36 = 1;
      v35 = 1;
      v33 = 0;
      goto LABEL_16;
    }

    v86 = v32;
LABEL_12:

    v33 = Episode.adamId.getter();
    v35 = v34;

    v32 = v86;
    if (!v86)
    {
      if ((v35 & 1) == 0)
      {
        v86 = 0;
        goto LABEL_88;
      }

      v86 = 0;
      v43 = 1;
      goto LABEL_28;
    }

    v81 = v22;
    v36 = 0;
LABEL_16:

    v37 = Episode.adamId.getter();
    v39 = v38;
    v86 = v32;

    if (v35)
    {
      if ((v39 & 1) == 0)
      {
        goto LABEL_88;
      }
    }

    else if ((v39 & 1) != 0 || v33 != v37)
    {
      goto LABEL_88;
    }

    v40 = v86;
    if (v36)
    {
      v41 = 0;
      v42 = 0;
LABEL_32:

      v45 = Episode.uuid.getter();
      v47 = v46;
      v86 = v40;

      if (v41)
      {
        v22 = v81;
        if (v47)
        {
          if (v42 == v45 && v41 == v47)
          {

LABEL_42:
            v29 = v28;
            goto LABEL_43;
          }

          v48 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v48)
          {
            goto LABEL_42;
          }

          goto LABEL_88;
        }

LABEL_37:

LABEL_89:

        goto LABEL_90;
      }

      v22 = v81;
      if (!v47)
      {
        goto LABEL_42;
      }

LABEL_88:

      goto LABEL_89;
    }

    v43 = 0;
    v22 = v81;
LABEL_28:

    v42 = Episode.uuid.getter();
    v41 = v44;

    if (v43)
    {
      if (!v41)
      {
        goto LABEL_42;
      }

      goto LABEL_37;
    }

    v81 = v22;
    v40 = v86;
    goto LABEL_32;
  }

  v86 = 0;
  v29 = 0;
  if (v28)
  {
    goto LABEL_12;
  }

LABEL_43:
  v80[1] = v29;
  sub_10022DC1C(v22, v7);
  v49 = type metadata accessor for ModernShelf();
  v50 = *(v49 - 8);
  v51 = *(v50 + 48);
  if (v51(v7, 1, v49) == 1)
  {
    sub_100009104(v7, &qword_100578DE0, &unk_100405FB0);
    v80[0] = 0;
    v52 = 0;
  }

  else
  {
    v81 = v22;
    ModernShelf.header.getter();
    (*(v50 + 8))(v7, v49);
    v53 = type metadata accessor for Header();
    v54 = *(v53 - 8);
    if ((*(v54 + 48))(v10, 1, v53) == 1)
    {
      sub_100009104(v10, &qword_100577490, &qword_1004017A0);
      v80[0] = 0;
      v52 = 0;
    }

    else
    {
      v80[0] = Header.title.getter();
      v55 = v10;
      v52 = v56;
      (*(v54 + 8))(v55, v53);
    }

    v22 = v81;
  }

  sub_10022DC1C(v82, v5);
  if (v51(v5, 1, v49) == 1)
  {
    sub_100009104(v5, &qword_100578DE0, &unk_100405FB0);
    v57 = 0;
    v58 = 0;
    if (v52)
    {
      goto LABEL_51;
    }

LABEL_59:
    if (!v58)
    {
      goto LABEL_63;
    }

    goto LABEL_91;
  }

  v59 = v87;
  ModernShelf.header.getter();
  (*(v50 + 8))(v5, v49);
  v60 = type metadata accessor for Header();
  v61 = *(v60 - 8);
  if ((*(v61 + 48))(v59, 1, v60) == 1)
  {
    sub_100009104(v59, &qword_100577490, &qword_1004017A0);
    v57 = 0;
    v58 = 0;
    if (!v52)
    {
      goto LABEL_59;
    }
  }

  else
  {
    v57 = Header.title.getter();
    v58 = v62;
    (*(v61 + 8))(v59, v60);
    if (!v52)
    {
      goto LABEL_59;
    }
  }

LABEL_51:
  if (!v58)
  {

LABEL_75:

LABEL_90:

LABEL_91:
    sub_1002316B4(v88, &type metadata accessor for ModernPage);
    v31 = v83;
    v30 = &type metadata accessor for ModernPage;
    goto LABEL_92;
  }

  if (v80[0] == v57 && v52 == v58)
  {

    goto LABEL_63;
  }

  v63 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v63 & 1) == 0)
  {
    goto LABEL_75;
  }

LABEL_63:
  v64 = sub_10022DEC4(v22);
  v65 = sub_10022DEC4(v82);
  if (v64 >> 62)
  {
    v66 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v66 = *((v64 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v66)
  {
    v89 = _swiftEmptyArrayStorage;
    result = sub_1001A7578(0, v66 & ~(v66 >> 63), 0);
    if (v66 < 0)
    {
      __break(1u);
      goto LABEL_99;
    }

    v68 = 0;
    v69 = v89;
    do
    {
      if ((v64 & 0xC000000000000001) != 0)
      {
        specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
      }

      v70 = LegacyLockup.adamId.getter();

      v89 = v69;
      v72 = v69[2];
      v71 = v69[3];
      if (v72 >= v71 >> 1)
      {
        sub_1001A7578((v71 > 1), v72 + 1, 1);
        v69 = v89;
      }

      ++v68;
      v69[2] = v72 + 1;
      v69[v72 + 4] = v70;
    }

    while (v66 != v68);
  }

  else
  {

    v69 = _swiftEmptyArrayStorage;
  }

  if (!(v65 >> 62))
  {
    v73 = *((v65 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v73)
    {
      goto LABEL_79;
    }

LABEL_96:

    v75 = _swiftEmptyArrayStorage;
LABEL_97:
    v79 = sub_100195F50(v69, v75);

    sub_1002316B4(v88, &type metadata accessor for ModernPage);
    sub_1002316B4(v83, &type metadata accessor for ModernPage);
    return (v79 & 1);
  }

  v73 = _CocoaArrayWrapper.endIndex.getter();
  if (!v73)
  {
    goto LABEL_96;
  }

LABEL_79:
  v89 = _swiftEmptyArrayStorage;
  result = sub_1001A7578(0, v73 & ~(v73 >> 63), 0);
  if ((v73 & 0x8000000000000000) == 0)
  {
    v74 = 0;
    v75 = v89;
    do
    {
      if ((v65 & 0xC000000000000001) != 0)
      {
        specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
      }

      v76 = LegacyLockup.adamId.getter();

      v89 = v75;
      v78 = v75[2];
      v77 = v75[3];
      if (v78 >= v77 >> 1)
      {
        sub_1001A7578((v77 > 1), v78 + 1, 1);
        v75 = v89;
      }

      ++v74;
      v75[2] = v78 + 1;
      v75[v78 + 4] = v76;
    }

    while (v73 != v74);

    goto LABEL_97;
  }

LABEL_99:
  __break(1u);
  return result;
}

id sub_10022ED70(uint64_t a1, uint64_t a2, _UNKNOWN **a3, uint64_t a4, uint64_t a5, int a6)
{
  v51 = a6;
  v45 = a4;
  v46 = a5;
  v52 = a1;
  sub_100168088(&qword_100578DE0, &unk_100405FB0);
  __chkstk_darwin();
  v49 = &v44 - v9;
  sub_100168088(&qword_100577490, &qword_1004017A0);
  __chkstk_darwin();
  v11 = &v44 - v10;
  v47 = a2;
  v48 = v6;
  v12 = sub_10022DEC4(a2);
  v13 = v12;
  v53 = _swiftEmptyArrayStorage;
  if (v12 >> 62)
  {
LABEL_56:
    v14 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v14 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v44 = v11;
  v11 = _swiftEmptyArrayStorage;
  if (v14)
  {
    v15 = 0;
    v50 = v13 & 0xC000000000000001;
    while (1)
    {
      if (v50)
      {
        specialized _ArrayBuffer._getElementSlowPath(_:)();
        v16 = v15 + 1;
        if (__OFADD__(v15, 1))
        {
LABEL_19:
          __break(1u);
LABEL_20:
          v21 = v53;
          goto LABEL_22;
        }
      }

      else
      {
        if (v15 >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
LABEL_55:
          __break(1u);
          goto LABEL_56;
        }

        v16 = v15 + 1;
        if (__OFADD__(v15, 1))
        {
          goto LABEL_19;
        }
      }

      v17 = LibraryEpisodeLockup.uuid.getter();
      v11 = v18;
      if (!a3)
      {
        break;
      }

      if (v17 == Episode.uuid.getter() && v11 == v19)
      {
      }

      else
      {
        v20 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v20 & 1) == 0)
        {
          goto LABEL_16;
        }
      }

LABEL_6:
      ++v15;
      if (v16 == v14)
      {
        goto LABEL_20;
      }
    }

LABEL_16:
    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    v11 = *(v53 + 16);
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    specialized ContiguousArray._endMutation()();
    goto LABEL_6;
  }

  v21 = _swiftEmptyArrayStorage;
LABEL_22:

  v53 = _swiftEmptyArrayStorage;
  if ((v21 & 0x8000000000000000) != 0 || (v21 & 0x4000000000000000) != 0)
  {
    v22 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v22 = *(v21 + 16);
  }

  v11 = 0;
  v50 = _swiftEmptyArrayStorage;
  v13 = &qword_100577460;
  a3 = CPListItem_ptr;
  while (v22 != v11)
  {
    if ((v21 & 0xC000000000000001) != 0)
    {
      v23 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v24 = (v11 + 1);
      if (__OFADD__(v11, 1))
      {
        goto LABEL_53;
      }
    }

    else
    {
      if (v11 >= *(v21 + 16))
      {
        goto LABEL_54;
      }

      v23 = *(v21 + 8 * v11 + 32);

      v24 = (v11 + 1);
      if (__OFADD__(v11, 1))
      {
LABEL_53:
        __break(1u);
LABEL_54:
        __break(1u);
        goto LABEL_55;
      }
    }

    sub_100009F1C(0, &qword_100577460, CPListItem_ptr);
    v25 = sub_10021E760(v52, v23, 0, 1, v51);

    ++v11;
    if (v25)
    {
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v53 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v53 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v50 = v53;
      v11 = v24;
    }
  }

  v53 = v50;
  if (!(v50 >> 62))
  {
    v26 = v49;
    if (*((v50 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_39;
    }

LABEL_59:

    return 0;
  }

  v42 = _CocoaArrayWrapper.endIndex.getter();
  v26 = v49;
  if (!v42)
  {
    goto LABEL_59;
  }

LABEL_39:
  sub_100231174(v52, v45, v46);
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((v53 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v53 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  v27 = v53;
  if (v53 >> 62)
  {

    sub_100168088(&unk_100574A00, &unk_100401EC0);
    v28 = _bridgeCocoaArray<A>(_:)();
  }

  else
  {

    dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
    v28 = v27;
  }

  sub_10022DC1C(v47, v26);
  v29 = type metadata accessor for ModernShelf();
  v30 = *(v29 - 8);
  if ((*(v30 + 48))(v26, 1, v29) == 1)
  {
    v31 = &qword_100578DE0;
    v32 = &unk_100405FB0;
    v33 = v26;
  }

  else
  {
    v34 = v44;
    ModernShelf.header.getter();
    (*(v30 + 8))(v26, v29);
    v35 = type metadata accessor for Header();
    v36 = *(v35 - 8);
    if ((*(v36 + 48))(v34, 1, v35) != 1)
    {
      Header.title.getter();
      v37 = v38;
      (*(v36 + 8))(v34, v35);
      goto LABEL_49;
    }

    v31 = &qword_100577490;
    v32 = &qword_1004017A0;
    v33 = v34;
  }

  sub_100009104(v33, v31, v32);
  v37 = 0;
LABEL_49:
  sub_1001AA058(v28);

  v39.super.isa = Array._bridgeToObjectiveC()().super.isa;

  if (v37)
  {
    v40 = String._bridgeToObjectiveC()();
  }

  else
  {
    v40 = 0;
  }

  v41 = [objc_allocWithZone(CPListSection) initWithItems:v39.super.isa header:v40 sectionIndexTitle:0];

  return v41;
}

uint64_t sub_10022F418(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_100168088(&qword_100578010, &qword_100401F60);
  __chkstk_darwin();
  v9 = &v14 - v8;
  static TaskPriority.userInitiated.getter();
  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v9, 0, 1, v10);
  type metadata accessor for MainActor();

  swift_unknownObjectRetain();

  v11 = static MainActor.shared.getter();
  v12 = swift_allocObject();
  v12[2] = v11;
  v12[3] = &protocol witness table for MainActor;
  v12[4] = a4;
  v12[5] = a1;
  v12[6] = a2;
  v12[7] = a3;
  sub_10023EE80(0, 0, v9, &unk_100405FD0, v12);
}

uint64_t sub_10022F56C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[3] = a5;
  v8 = type metadata accessor for CarPlayTemplateInfo(0);
  v7[6] = v8;
  v7[7] = *(v8 - 8);
  v7[8] = swift_task_alloc();
  sub_100168088(&unk_100578410, &qword_100402DB0);
  v7[9] = swift_task_alloc();
  v7[10] = swift_task_alloc();
  v7[11] = type metadata accessor for MainActor();
  v7[12] = static MainActor.shared.getter();
  v9 = type metadata accessor for CarPlayController();
  v10 = swift_task_alloc();
  v7[13] = v10;
  *v10 = v7;
  v10[1] = sub_10022F6E0;

  return BaseObjectGraph.inject<A>(_:)(v7 + 2, v9, v9);
}

uint64_t sub_10022F6E0()
{
  *(*v1 + 112) = v0;

  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  if (v0)
  {
    v4 = sub_10022FA94;
  }

  else
  {
    v4 = sub_10022F83C;
  }

  return _swift_task_switch(v4, v3, v2);
}

uint64_t sub_10022F83C()
{
  v1 = v0[9];
  v2 = v0[10];
  v3 = v0[6];
  v4 = v0[7];

  v5 = v0[2];
  v6 = [objc_opt_self() mainBundle];
  v21._object = 0xE000000000000000;
  v7._countAndFlagsBits = 0x5345444F53495045;
  v7._object = 0xE800000000000000;
  v8._countAndFlagsBits = 0;
  v8._object = 0xE000000000000000;
  v21._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v7, 0, v6, v8, v21);

  v9 = objc_allocWithZone(CPListItem);
  v10 = String._bridgeToObjectiveC()();

  v11 = [v9 initWithText:v10 detailText:0];

  swift_getObjectType();
  sub_1001D29AC(v2);
  sub_1001D2D08(v2, v1);
  v12 = 0;
  if ((*(v4 + 48))(v1, 1, v3) != 1)
  {
    v13 = v0[9];
    sub_100231644(v13, v0[8], type metadata accessor for CarPlayTemplateInfo);
    v12 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
    sub_1002316B4(v13, type metadata accessor for CarPlayTemplateInfo);
  }

  v14 = v0[10];
  v16 = v0[4];
  v15 = v0[5];
  [v11 setUserInfo:v12];
  swift_unknownObjectRelease();
  sub_100009104(v14, &unk_100578410, &qword_100402DB0);
  v17 = v11;
  sub_1002B4180(v17, v16, v15, v5);

  v18 = v0[1];

  return v18();
}

uint64_t sub_10022FA94()
{

  v1 = *(v0 + 8);

  return v1();
}

void *sub_10022FB20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a2 + *(type metadata accessor for ModernPage() + 24));
  v11 = sub_100230D5C(v9, v10);
  if (v11)
  {
    v12 = v11;
    sub_100009F1C(0, &unk_100575B00, CPListSection_ptr);
    v13 = sub_1002CA624(a1, v12, a5);
    v14 = v13;
    if (v13)
    {
      v15 = v13;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    }

    v16 = ShowHeader.episodeToPlay.getter();
    v17 = sub_10022ED70(a1, v9, v16, a3, a4, a5);

    if (v17)
    {
      v18 = v17;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    }

    else
    {
    }
  }

  return _swiftEmptyArrayStorage;
}

unint64_t sub_10022FCE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5)
{
  v29 = a5;
  type metadata accessor for ModernPage();
  __chkstk_darwin();
  v9 = &v28[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = type metadata accessor for Logger();
  v30 = *(v10 - 8);
  __chkstk_darwin();
  v12 = &v28[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  type metadata accessor for PageContent();
  __chkstk_darwin();
  v14 = &v28[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_100231644(a2, v14, &type metadata accessor for PageContent);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      sub_1002316B4(v14, &type metadata accessor for PageContent);
      return 0;
    }

    else
    {
      sub_1001AD194(v14, v9, &type metadata accessor for ModernPage);
      type metadata accessor for CarPlayPageLoadCoordinator(0);
      swift_allocObject();

      v23 = sub_1002442DC(v22);

      v31 = v23;
      v24 = BaseObjectGraph.satisfying<A>(_:with:)();
      v25 = sub_10022FB20(v24, v9, a3, a4, v29);
      v26 = v25;
      if (v25 >> 62)
      {
        v27 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v27 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      sub_1002316B4(v9, &type metadata accessor for ModernPage);
      if (v27)
      {
        return v26;
      }

      else
      {

        return 0;
      }
    }
  }

  else if (EnumCaseMultiPayload)
  {

    sub_100009F1C(0, &qword_1005748A0, OS_os_log_ptr);
    static OS_os_log.carPlay.getter();
    swift_errorRetain();
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      *v19 = 138412290;
      swift_errorRetain();
      v21 = _swift_stdlib_bridgeErrorToNSError();
      *(v19 + 4) = v21;
      *v20 = v21;
      _os_log_impl(&_mh_execute_header, v17, v18, "Failed to load library show page: %@", v19, 0xCu);
      sub_100009104(v20, &qword_100575B20, &qword_100401F90);
    }

    else
    {
    }

    (*(v30 + 8))(v12, v10);
    return 0;
  }

  else
  {
    return 1;
  }
}

uint64_t sub_100230128()
{

  sub_100004590((v0 + 40));

  return swift_deallocClassInstance();
}

uint64_t sub_1002301AC()
{
  v1 = v0;
  v28 = *v0;
  v2 = v28;
  v3 = sub_100168088(&unk_100578D90, &qword_1004047F0);
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v27 - v5;
  v7 = sub_100168088(&unk_100577400, &qword_1004047F8);
  v8 = *(v7 - 8);
  v32 = v7;
  v33 = v8;
  __chkstk_darwin();
  v29 = &v27 - v9;
  v35 = sub_100168088(&unk_100578DA0, &qword_100404800);
  v37 = *(v35 - 8);
  __chkstk_darwin();
  v30 = &v27 - v10;
  v34 = sub_100168088(&unk_100577410, &qword_100404808);
  v36 = *(v34 - 8);
  __chkstk_darwin();
  v31 = &v27 - v11;
  v38 = LibraryShowProvider.pageContent.getter();
  *(swift_allocObject() + 16) = v2;
  sub_100168088(&unk_100578DB0, &unk_100404810);
  sub_100009FAC(&unk_100574B00, &unk_100578DB0, &unk_100404810, &protocol conformance descriptor for CurrentValueSubject<A, B>);
  Publisher.removeDuplicates(by:)();

  v38 = v0[13];
  sub_100168088(&qword_100574B10, &unk_100401F50);
  sub_100009FAC(&unk_100577420, &unk_100578D90, &qword_1004047F0, &protocol conformance descriptor for Publishers.RemoveDuplicates<A>);
  sub_100009FAC(&unk_100574B20, &qword_100574B10, &unk_100401F50, &protocol conformance descriptor for CurrentValueSubject<A, B>);
  v12 = v29;
  Publisher.combineLatest<A>(_:)();
  (*(v4 + 8))(v6, v3);
  v13 = v0[2];
  v14 = v0[3];
  v15 = v0[4];
  v16 = *(v1 + 80);
  v17 = v1[12];
  v18 = swift_allocObject();
  *(v18 + 16) = v13;
  *(v18 + 24) = v17;
  *(v18 + 32) = v14;
  *(v18 + 40) = v15;
  *(v18 + 48) = v16;
  *(v18 + 56) = v28;
  v19 = swift_allocObject();
  *(v19 + 16) = sub_100230C08;
  *(v19 + 24) = v18;

  static Subscribers.Demand.unlimited.getter();
  sub_100168088(&unk_100577430, &unk_100404820);
  sub_100009FAC(&unk_100578DC0, &unk_100577400, &qword_1004047F8, &protocol conformance descriptor for Publishers.CombineLatest<A, B>);
  sub_100009FAC(&unk_100577440, &unk_100577430, &unk_100404820, &protocol conformance descriptor for Future<A, B>);
  v20 = v30;
  v21 = v32;
  Publisher<>.flatMap<A>(maxPublishers:_:)();

  (*(v33 + 8))(v12, v21);
  sub_100009FAC(&unk_100578DD0, &unk_100578DA0, &qword_100404800, &protocol conformance descriptor for Publishers.FlatMap<A, B>);
  v22 = v31;
  v23 = v35;
  Publisher.compactMap<A>(_:)();
  (*(v37 + 8))(v20, v23);
  sub_100009FAC(&unk_100577450, &unk_100577410, &qword_100404808, &protocol conformance descriptor for Publishers.CompactMap<A, B>);
  v24 = v34;
  v25 = Publisher.eraseToAnyPublisher()();
  (*(v36 + 8))(v22, v24);
  return v25;
}

uint64_t sub_1002307E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7)
{
  v24 = a7;
  v23 = a6;
  v11 = *(type metadata accessor for PageContent() - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin();
  sub_100168088(&qword_100578010, &qword_100401F60);
  __chkstk_darwin();
  v14 = &v22[-v13];
  type metadata accessor for SmartPlayButtonController();
  v25 = a3;
  v15 = BaseObjectGraph.satisfying<A>(_:with:)();
  sub_100168088(&unk_100577430, &unk_100404820);
  v16 = type metadata accessor for TaskPriority();
  (*(*(v16 - 8) + 56))(v14, 1, 1, v16);
  sub_100231644(a1, &v22[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)], &type metadata accessor for PageContent);
  v17 = (*(v11 + 80) + 24) & ~*(v11 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = v15;
  sub_1001AD194(&v22[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)], v18 + v17, &type metadata accessor for PageContent);
  v19 = v18 + ((v17 + v12 + 7) & 0xFFFFFFFFFFFFFFF8);
  *v19 = a4;
  *(v19 + 8) = a5;
  *(v19 + 16) = v23;
  *(v18 + ((v17 + v12 + 31) & 0xFFFFFFFFFFFFFFF8)) = v24;
  v20 = swift_allocObject();
  *(v20 + 16) = &unk_100405F98;
  *(v20 + 24) = v18;

  return Future<>.init(priority:unwrapping:)();
}

uint64_t sub_100230A5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6)
{
  *(v6 + 40) = a4;
  *(v6 + 48) = a6;
  *(v6 + 64) = a5;
  *(v6 + 24) = a2;
  *(v6 + 32) = a3;
  *(v6 + 16) = a1;
  type metadata accessor for MainActor();
  *(v6 + 56) = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100230B00, v8, v7);
}

uint64_t sub_100230B00()
{
  v2 = *(v0 + 32);
  v1 = *(v0 + 40);
  v4 = *(v0 + 16);
  v3 = *(v0 + 24);
  v5 = *(v0 + 64);

  v6 = sub_10022FCE8(v4, v3, v2, v1, v5);
  v7 = *(v0 + 8);

  return v7(v6);
}

uint64_t sub_100230C24()
{
  v2 = *(type metadata accessor for PageContent() - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = v3 + *(v2 + 64);
  v5 = *(v0 + 16);
  v6 = v0 + ((v4 + 7) & 0xFFFFFFFFFFFFFFF8);
  v7 = *v6;
  v8 = *(v6 + 8);
  v9 = *(v0 + ((v4 + 31) & 0xFFFFFFFFFFFFFFF8));
  v10 = *(v6 + 16);
  v11 = swift_task_alloc();
  *(v1 + 16) = v11;
  *v11 = v1;
  v11[1] = sub_1001AB9B8;

  return sub_100230A5C(v5, v0 + v3, v7, v8, v10, v9);
}

uint64_t sub_100230D5C(uint64_t a1, __n128 a2)
{
  v44 = type metadata accessor for ModernShelf.ItemPresentation();
  v3 = *(v44 - 8);
  __chkstk_darwin();
  v5 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ModernShelf();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v12 = __chkstk_darwin();
  v13 = *(a1 + 16);
  if (!v13)
  {
    return 0;
  }

  v38 = v11;
  v39 = v7;
  v40 = &v37 - v10;
  v15 = *(v7 + 16);
  v14 = v7 + 16;
  v16 = (v3 + 8);
  v42 = (v14 - 8);
  v43 = v15;
  v17 = a1 + ((*(v14 + 64) + 32) & ~*(v14 + 64));
  v41 = *(v14 + 56);
  while (1)
  {
    v18 = v6;
    v43(v9, v17, v6, v12);
    ModernShelf.itemPresentation.getter();
    ModernShelf.ItemPresentation.itemKind.getter();
    (*v16)(v5, v44);
    v19 = ModernShelf.ItemKind.rawValue.getter();
    v21 = v20;
    if (v19 == ModernShelf.ItemKind.rawValue.getter() && v21 == v22)
    {
      break;
    }

    v23 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v23)
    {
      goto LABEL_9;
    }

    v6 = v18;
    (*v42)(v9, v18);
    v17 += v41;
    if (!--v13)
    {
      return 0;
    }
  }

LABEL_9:
  v25 = v38;
  v26 = *(v39 + 32);
  v27 = v18;
  v26(v38, v9, v18);
  v28 = v40;
  v26(v40, v25, v18);
  result = ModernShelf.items.getter();
  v30 = result;
  v31 = *(result + 16);
  v32 = result + 32;
  if (v31)
  {
    v33 = 0;
    v34 = result + 32;
    while (1)
    {
      sub_100004428(v34, v45);
      sub_100168088(&qword_1005748E0, &qword_100401D88);
      type metadata accessor for ShowHeader();
      result = swift_dynamicCast();
      if (result)
      {
        v35 = v46;

        if (v35)
        {
          break;
        }
      }

      ++v33;
      v34 += 40;
      if (v31 == v33)
      {
        goto LABEL_15;
      }
    }

    v31 = v33;
  }

LABEL_15:
  v36 = *(v30 + 16);
  if (v31 == v36)
  {
    v24 = 0;
LABEL_20:

    (*v42)(v28, v27);
    return v24;
  }

  if (v31 >= v36)
  {
    __break(1u);
  }

  else
  {
    sub_100004428(v32 + 40 * v31, v45);
    sub_100168088(&qword_1005748E0, &qword_100401D88);
    type metadata accessor for ShowHeader();
    result = swift_dynamicCast();
    if (result)
    {
      v24 = v46;
      if (v46)
      {
        goto LABEL_20;
      }
    }
  }

  __break(1u);
  return result;
}

id sub_100231174(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v32 = a1;
  sub_100168088(&unk_100578410, &qword_100402DB0);
  __chkstk_darwin();
  v31 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v7 = &v29 - v6;
  sub_100168088(&unk_100575AE0, &unk_100405E80);
  __chkstk_darwin();
  v9 = &v29 - v8;
  v10 = type metadata accessor for CarPlayTemplateInfo(0);
  v11 = *(v10 - 8);
  __chkstk_darwin();
  v30 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v14 = &v29 - v13;
  v15 = [objc_opt_self() mainBundle];
  v34._object = 0xE000000000000000;
  v16._object = 0x800000010046A6C0;
  v16._countAndFlagsBits = 0xD000000000000019;
  v17._countAndFlagsBits = 0;
  v17._object = 0xE000000000000000;
  v34._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v16, 0, v15, v17, v34);

  v18 = objc_allocWithZone(CPListItem);
  v19 = String._bridgeToObjectiveC()();

  v20 = [v18 initWithText:v19 detailText:0 image:0 accessoryImage:0 accessoryType:1];

  *v9 = a2;
  *(v9 + 1) = a3;
  *(v9 + 2) = 0;
  v9[24] = 2;
  v9[64] = 8;
  v21 = type metadata accessor for CarPlayTemplateInfo.TemplateType(0);
  swift_storeEnumTagMultiPayload();
  v22 = *(*(v21 - 8) + 56);
  v22(v9, 0, 1, v21);
  v22(v14, 1, 1, v21);
  v23 = *(v10 + 20);

  sub_1001FBB44(v9, v14);
  v14[v23] = 0;
  v24 = v31;
  sub_100231644(v14, v7, type metadata accessor for CarPlayTemplateInfo);
  (*(v11 + 56))(v7, 0, 1, v10);
  sub_1001D2D08(v7, v24);
  v25 = (*(v11 + 48))(v24, 1, v10);
  v26 = 0;
  if (v25 != 1)
  {
    sub_100231644(v24, v30, type metadata accessor for CarPlayTemplateInfo);
    v26 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
    sub_1002316B4(v24, type metadata accessor for CarPlayTemplateInfo);
  }

  [v20 setUserInfo:v26];
  swift_unknownObjectRelease();
  sub_100009104(v7, &unk_100578410, &qword_100402DB0);
  aBlock[4] = sub_1002316AC;
  aBlock[5] = v32;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100372F30;
  aBlock[3] = &unk_1004E67F8;
  v27 = _Block_copy(aBlock);

  [v20 setHandler:v27];
  _Block_release(v27);
  sub_1002316B4(v14, type metadata accessor for CarPlayTemplateInfo);
  return v20;
}

uint64_t sub_100231644(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1002316B4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100231714(uint64_t a1)
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
  v10[1] = sub_10001C51C;

  return sub_10022F56C(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_1002317F8@<X0>(void *a1@<X8>)
{
  v3 = 0xD000000000000010;
  v4 = (v1 + OBJC_IVAR____TtC8Podcasts30OpenReferenceLinkContextAction_destination);
  v5 = *(v1 + OBJC_IVAR____TtC8Podcasts30OpenReferenceLinkContextAction_destination + 8);
  if (v5 >= 2)
  {
    v13 = *v4;
    v12 = 0x8000000100468230;

    v14._countAndFlagsBits = 0x5F4E495F4E45504FLL;
    v15._countAndFlagsBits = 0xD000000000000022;
    v15._object = 0x8000000100468280;
    v14._object = 0xEA00000000004025;
    PFLocalizedString(_:comment:)(v14, v15);
    sub_100168088(&unk_100574670, &qword_100400AB0);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_100400790;
    *(v16 + 56) = &type metadata for String;
    *(v16 + 64) = sub_100022C18();
    *(v16 + 32) = v13;
    *(v16 + 40) = v5;
    countAndFlagsBits = static String.localizedStringWithFormat(_:_:)();
    object = v17;
  }

  else
  {
    v6._countAndFlagsBits = 0x4E494C5F4E45504FLL;
    v7._countAndFlagsBits = 0xD000000000000021;
    v7._object = 0x8000000100468250;
    v6._object = 0xE90000000000004BLL;
    v9 = PFLocalizedString(_:comment:)(v6, v7);
    result = v9._countAndFlagsBits;
    countAndFlagsBits = v9._countAndFlagsBits;
    object = v9._object;
    v12 = 0xE600000000000000;
    v3 = 0x697261666173;
  }

  *a1 = 0;
  a1[1] = v3;
  a1[2] = v12;
  a1[3] = countAndFlagsBits;
  a1[4] = object;
  return result;
}

uint64_t sub_10023196C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = (*(a2 + 32))();
  v8 = v7;
  result = (*(a2 + 16))(a1, a2);
  *a3 = 0;
  a3[1] = v6;
  a3[2] = v8;
  a3[3] = result;
  a3[4] = v10;
  return result;
}

uint64_t sub_1002319E8()
{
  if ((*(v0 + OBJC_IVAR____TtC8Podcasts24SuggestLessContextAction_adamID + 8) & 1) != 0 || *(v0 + OBJC_IVAR____TtC8Podcasts24SuggestLessContextAction_interestState) == 4)
  {
    goto LABEL_3;
  }

  v3 = OBJC_IVAR____TtC8Podcasts24SuggestLessContextAction_configuration;
  swift_beginAccess();
  if (!*(v0 + v3))
  {
LABEL_11:
    v6 = InterestState.rawValue.getter();
    v8 = v7;
    v1 = 1;
    if (v6 != InterestState.rawValue.getter() || v8 != v9)
    {
      v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v11)
      {
        v1 = 1;
        return v1 & 1;
      }

      v12 = InterestState.rawValue.getter();
      v14 = v13;
      if (v12 == InterestState.rawValue.getter() && v14 == v15)
      {
        v1 = 1;
      }

      else
      {
        v1 = _stringCompareWithSmolCheck(_:_:expecting:)();
      }
    }

    return v1 & 1;
  }

  type metadata accessor for ChannelContextActionConfiguration(0);
  v4 = swift_dynamicCastClass();
  if (v4)
  {
    if ((*(v4 + qword_1005932C8) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  else
  {
    type metadata accessor for PodcastContextActionConfiguration(0);
    if (!swift_dynamicCastClass())
    {
      goto LABEL_11;
    }

    v5 = sub_1002DC89C();

    if (v5)
    {
      goto LABEL_11;
    }
  }

LABEL_3:
  v1 = 0;
  return v1 & 1;
}

uint64_t sub_100231B9C()
{
  if ((*(v0 + OBJC_IVAR____TtC8Podcasts25UndoFavoriteContextAction_adamID + 8) & 1) != 0 || *(v0 + OBJC_IVAR____TtC8Podcasts25UndoFavoriteContextAction_interestState) == 4 || (v1 = OBJC_IVAR____TtC8Podcasts25UndoFavoriteContextAction_configuration, swift_beginAccess(), *(v0 + v1)) && (type metadata accessor for PodcastContextActionConfiguration(0), swift_dynamicCastClass()))
  {
    v2 = 0;
  }

  else
  {
    v4 = InterestState.rawValue.getter();
    v6 = v5;
    if (v4 == InterestState.rawValue.getter() && v6 == v7)
    {
      v2 = 1;
    }

    else
    {
      v2 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

  return v2 & 1;
}

BOOL sub_100231CA0()
{
  v1 = v0;
  type metadata accessor for InteractionContext.Page();
  __chkstk_darwin();
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for InteractionContext();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  if (*(v0 + 16) && (, dispatch thunk of ContextActionsConfiguration.context.getter(), , InteractionContext.page.getter(), (*(v5 + 8))(v7, v4), v8 = InteractionContext.Page.isShowPage.getter(), sub_10023625C(v3, &type metadata accessor for InteractionContext.Page), (v8 & 1) != 0))
  {
    return 0;
  }

  else
  {
    return *(v1 + 24) != 0;
  }
}

id sub_100231E2C()
{
  swift_beginAccess();
  if (!*(v0 + 16))
  {
    v5 = 0;
    v3 = 0u;
    v4 = 0u;
    goto LABEL_7;
  }

  dispatch thunk of ContextActionsConfiguration.previewModel.getter();

  if (!*(&v4 + 1))
  {
LABEL_7:
    sub_100009104(&v3, &qword_100576490, &qword_100403D40);
    v1 = 0;
    v6 = 0u;
    v7 = 0u;
    v8 = 0;
    goto LABEL_10;
  }

  sub_100168088(&qword_1005748C0, qword_1004060D0);
  sub_100168088(&qword_10057BC10, &qword_1004091B0);
  if (swift_dynamicCast())
  {
    if (*(&v7 + 1))
    {
      v1 = [objc_opt_self() isRunningOnInternalOS];
    }

    else
    {
      v1 = 0;
    }
  }

  else
  {
    v1 = 0;
    v8 = 0;
    v6 = 0u;
    v7 = 0u;
  }

LABEL_10:
  sub_100009104(&v6, &qword_100578DE8, &qword_1004060C8);
  return v1;
}

uint64_t sub_100231F68()
{
  type metadata accessor for InteractionContext.Page();
  __chkstk_darwin();
  v2 = &v10 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for InteractionContext();
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v0 + 16))
  {

    if (sub_100397D28(v7))
    {
      swift_beginAccess();
      v8 = *(v0 + 40);
      if (v8)
      {

        dispatch thunk of ContextActionsConfiguration.context.getter();

        InteractionContext.page.getter();
        (*(v4 + 8))(v6, v3);
        LOBYTE(v8) = InteractionContext.Page.isTranscriptView.getter();

        sub_10023625C(v2, &type metadata accessor for InteractionContext.Page);
      }

      else
      {
      }
    }

    else
    {

      LOBYTE(v8) = 0;
    }
  }

  else
  {
    LOBYTE(v8) = 0;
  }

  return v8 & 1;
}

uint64_t sub_100232138(uint64_t (*a1)(uint64_t), __n128 a2)
{
  sub_1002B9778(a2);
  v4 = [objc_opt_self() sharedInstance];
  swift_beginAccess();
  v5 = *(v2 + 48);
  v6 = swift_allocObject();
  v6[2] = v5;
  v6[3] = sub_10024E918;
  v6[4] = 0;
  aBlock[4] = sub_1001E9664;
  aBlock[5] = v6;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1002355D0;
  aBlock[3] = &unk_1004E6A28;
  v7 = _Block_copy(aBlock);
  swift_retain_n();

  [v4 reportAConcernURLWithCompletion:v7];
  _Block_release(v7);

  if (a1)
  {
    return a1(result);
  }

  return result;
}

uint64_t sub_100232294(uint64_t (*a1)(void), void *a2)
{
  sub_100168088(&qword_100574040, &unk_100400AD0);
  __chkstk_darwin();
  v6 = v23 - v5;
  v7 = type metadata accessor for URL();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin();
  v10 = v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v12 = v23 - v11;
  v13 = OBJC_IVAR____TtC8Podcasts30OpenReferenceLinkContextAction_link;
  swift_beginAccess();
  sub_1001BB0E0(v2 + v13, v6);
  if ((*(v8 + 48))(v6, 1, v7) != 1)
  {
    v23[1] = a2;
    v15 = *(v8 + 32);
    v15(v12, v6, v7);
    v23[0] = [objc_opt_self() sharedApplication];
    URL._bridgeToObjectiveC()(v16);
    v24 = a1;
    v18 = v17;
    (*(v8 + 16))(v10, v12, v7);
    v19 = (*(v8 + 80) + 16) & ~*(v8 + 80);
    v20 = swift_allocObject();
    v15((v20 + v19), v10, v7);
    aBlock[4] = sub_100236184;
    aBlock[5] = v20;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1002016BC;
    aBlock[3] = &unk_1004E69D8;
    v21 = _Block_copy(aBlock);

    v22 = v23[0];
    [v23[0] openURL:v18 withCompletionHandler:v21];
    _Block_release(v21);

    a1 = v24;
    result = (*(v8 + 8))(v12, v7);
    if (!a1)
    {
      return result;
    }

    return a1(result);
  }

  result = sub_100009104(v6, &qword_100574040, &unk_100400AD0);
  if (a1)
  {
    return a1(result);
  }

  return result;
}

void sub_1002325B0(void (*a1)(uint64_t, __n128), __n128 a2)
{
  type metadata accessor for EpisodeContextActionDataType(0);
  v5 = __chkstk_darwin();
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = v2[3];
  if (!v8)
  {
LABEL_4:
    if (!a1)
    {
      return;
    }

    goto LABEL_5;
  }

  v9 = OBJC_IVAR____TtC8Podcasts24EpisodeContextActionData_type;
  swift_beginAccess();
  sub_1002361F4(v8 + v9, v7, type metadata accessor for EpisodeContextActionDataType);
  if (swift_getEnumCaseMultiPayload())
  {
    v4 = sub_10023625C(v7, type metadata accessor for EpisodeContextActionDataType);
    goto LABEL_4;
  }

  sub_1000044A0(v2 + 4, v2[7]);
  dispatch thunk of LibraryActionControllerProtocol.removeFromUpNext(uuids:)();

  if (!a1)
  {
    return;
  }

LABEL_5:
  a1(v4, v5);
}

uint64_t sub_100232714(uint64_t (*a1)(uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = (*(a4 + 56))(a3, a4);
  if (a1)
  {
    return a1(result);
  }

  return result;
}

uint64_t sub_10023276C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 8);

  dispatch thunk of ContextAction.configuration.setter();
  type metadata accessor for PodcastContextActionConfiguration(0);
  if (swift_dynamicCastClass())
  {
    v6 = *(a3 + 24);

    v6(v7, a2, a3);
  }

  v8 = *(v5 + 64);

  return v8(a2, v5);
}

uint64_t sub_100232848(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_100168088(&qword_100575870, &unk_100402BE0);
  __chkstk_darwin();
  v8 = v15 - v7;
  dispatch thunk of ContextAction.apply(configuration:)();
  if ((dispatch thunk of ContextAction.isSupported()() & 1) == 0)
  {
    return 0;
  }

  v9 = (*(a3 + 16))(a2, a3);
  v15[0] = v10;
  v15[1] = v9;
  sub_1002330C8(a2, a3);
  (*(a3 + 48))(a2, a3);
  v11 = type metadata accessor for ContextActionType();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v8, 1, v11) == 1)
  {
    sub_100009104(v8, &qword_100575870, &unk_100402BE0);
  }

  else
  {
    ContextActionType.actionIdentifier.getter();
    (*(v12 + 8))(v8, v11);
  }

  (*(a3 + 24))(a2, a3);
  (*(a3 + 96))(a2, a3);
  sub_100009F1C(0, &qword_1005764B0, UIAction_ptr);
  v14 = swift_allocObject();
  v14[2] = a2;
  v14[3] = a3;
  v14[4] = a1;
  v14[5] = v3;

  swift_unknownObjectRetain();
  return UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
}

id sub_100232ADC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  sub_100168088(&qword_100575870, &unk_100402BE0);
  __chkstk_darwin();
  v9 = v23 - v8;
  dispatch thunk of ContextAction.apply(configuration:)();
  if (((*(a3 + 80))(a2, a3) & 1) == 0)
  {
    return 0;
  }

  (*(a3 + 72))(&aBlock, a2, a3);
  v23[2] = v26;
  v24 = aBlock;
  v10 = v27;
  v23[1] = v28;
  v11 = v29;
  (*(a3 + 48))(a2, a3);
  v12 = type metadata accessor for ContextActionType();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v9, 1, v12) == 1)
  {
    sub_100009104(v9, &qword_100575870, &unk_100402BE0);
    v14 = 0;
  }

  else
  {
    v14 = sub_100234C80() & 1;
    (*(v13 + 8))(v9, v12);
  }

  v16 = swift_allocObject();
  v16[2] = a2;
  v16[3] = a3;
  v16[4] = v4;
  v16[5] = a1;
  v16[6] = v14;
  swift_unknownObjectRetain();

  if (v11)
  {
    v17 = String._bridgeToObjectiveC()();
  }

  else
  {
    v17 = 0;
  }

  v29 = sub_1002344A8;
  v30 = v16;
  aBlock = _NSConcreteStackBlock;
  v26 = 1107296256;
  v27 = sub_1002348A4;
  v28 = &unk_1004E68C0;
  v18 = _Block_copy(&aBlock);
  v15 = [objc_opt_self() contextualActionWithStyle:v14 title:v17 handler:v18];

  _Block_release(v18);

  v19 = v24;
  [v15 setBackgroundColor:v24];
  if (v10)
  {
    v20 = String._bridgeToObjectiveC()();

    v21 = [objc_opt_self() systemImageNamed:v20];
  }

  else
  {
    v21 = sub_1002330C8(a2, a3);
  }

  [v15 setImage:v21];

  return v15;
}

uint64_t sub_100232E54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 8);

  dispatch thunk of ContextAction.configuration.setter();
  type metadata accessor for NowPlayingContextActionConfiguration();
  if (swift_dynamicCastClass())
  {

    v6 = sub_1001ECDA0();
    (*(a3 + 24))(v6, a2, a3);
  }

  else
  {
    type metadata accessor for EpisodeContextActionConfiguration(0);
    if (swift_dynamicCastClass())
    {
      v7 = *(a3 + 24);

      v7(v8, a2, a3);
    }

    else
    {
      type metadata accessor for TranscriptSelectionContextActionConfiguration(0);
      v9 = swift_dynamicCastClass();
      if (!v9)
      {
        goto LABEL_9;
      }

      v10 = *(v9 + qword_1005766C8);
      v11 = *(a3 + 24);

      v11(v10, a2, a3);
    }
  }

LABEL_9:
  v12 = *(v5 + 64);

  return v12(a2, v5);
}

double sub_100232FDC@<D0>(uint64_t a1@<X8>)
{
  v2 = [objc_opt_self() mainBundle];
  v7._object = 0x8000000100468210;
  v3._countAndFlagsBits = 0x6853206F74206F47;
  v3._object = 0xEA0000000000776FLL;
  v4._countAndFlagsBits = 0;
  v4._object = 0xE000000000000000;
  v7._countAndFlagsBits = 0xD00000000000001ALL;
  v5 = NSLocalizedString(_:tableName:bundle:value:comment:)(v3, 0, v2, v4, v7);

  result = 0.0;
  *a1 = xmmword_100405FF0;
  *(a1 + 16) = 0xEF6572617571732ELL;
  *(a1 + 24) = v5;
  return result;
}

id sub_1002330C8(uint64_t a1, uint64_t a2)
{
  (*(a2 + 32))(a1);
  if (!v2)
  {
    return 0;
  }

  v3 = String._bridgeToObjectiveC()();

  v4 = [objc_opt_self() _systemImageNamed:v3];

  if (!v4)
  {
    return 0;
  }

  v5 = [v4 imageWithRenderingMode:2];

  return v5;
}

uint64_t sub_100233170(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v32 = a3;
  v33 = a4;
  v34 = a2;
  sub_100168088(&qword_100576480, &qword_100403868);
  __chkstk_darwin();
  v8 = &v28[-v7];
  sub_100168088(&unk_10057BB90, &unk_100402D60);
  __chkstk_darwin();
  v10 = &v28[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v12 = &v28[-v11];
  v13 = type metadata accessor for PresentationSource();
  v14 = *(v13 - 8);
  __chkstk_darwin();
  v16 = &v28[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  *&v17 = __chkstk_darwin().n128_u64[0];
  v19 = &v28[-v18];
  v20 = [a1 presentationSourceItem];
  if (v20)
  {
    v22 = v20;
    dispatch thunk of ContextActionsConfiguration.presentationSource.getter();
    if ((*(v14 + 48))(v12, 1, v13) == 1)
    {
      swift_unknownObjectRelease();
      sub_100009104(v12, &unk_10057BB90, &unk_100402D60);
    }

    else
    {
      (*(v14 + 32))(v19, v12, v13);
      v31 = a5;
      v30 = *(v14 + 16);
      v30(v16, v19, v13);
      *v8 = v22;
      v29 = enum case for PresentationSource.Position.sourceItem(_:);
      v23 = type metadata accessor for PresentationSource.Position();
      v24 = *(v23 - 8);
      (*(v24 + 104))(v8, v29, v23);
      (*(v24 + 56))(v8, 0, 1, v23);
      swift_unknownObjectRetain();
      PresentationSource.position.setter();
      v30(v10, v16, v13);
      (*(v14 + 56))(v10, 0, 1, v13);
      dispatch thunk of ContextActionsConfiguration.presentationSource.setter();
      swift_unknownObjectRelease();
      v25 = *(v14 + 8);
      v25(v16, v13);
      v25(v19, v13);
      a5 = v31;
    }
  }

  v26 = v33;
  sub_100233528(v34, v33, a5, v21);
  return (*(a5 + 56))(v26, a5);
}

uint64_t sub_100233528(uint64_t a1, uint64_t a2, uint64_t a3, __n128 a4)
{
  v8 = type metadata accessor for OSLogger();
  v98 = *(v8 - 8);
  __chkstk_darwin();
  v10 = v71 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = type metadata accessor for ActionMetricsBehavior();
  v93 = *(v94 - 8);
  __chkstk_darwin();
  v92 = v71 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = type metadata accessor for PresentationSource.Position();
  v80 = *(v81 - 8);
  __chkstk_darwin();
  v79 = v71 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100168088(&qword_100576480, &qword_100403868);
  __chkstk_darwin();
  v83 = v71 - v13;
  type metadata accessor for InteractionContext();
  __chkstk_darwin();
  v84 = v71 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100168088(&qword_100576488, &unk_100403870);
  __chkstk_darwin();
  v91 = v71 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v95 = v71 - v16;
  v88 = type metadata accessor for ActionOrigin();
  v87 = *(v88 - 8);
  __chkstk_darwin();
  v97 = v71 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100168088(&qword_100574040, &unk_100400AD0);
  __chkstk_darwin();
  v86 = v71 - v18;
  v19 = type metadata accessor for MetricsLabel();
  v85 = *(v19 - 8);
  __chkstk_darwin();
  v21 = v71 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for MetricsData();
  __chkstk_darwin();
  v23 = v71 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = type metadata accessor for NativeClickMetricsAction();
  v89 = *(v90 - 8);
  __chkstk_darwin();
  v96 = v71 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100168088(&unk_10057BB90, &unk_100402D60);
  __chkstk_darwin();
  v82 = v71 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __chkstk_darwin();
  v28 = v71 - v27;
  result = (*(a3 + 104))(a1, a2, a3, v26);
  if ((result & 1) == 0)
  {
    result = sub_100234978(a1);
    if (v30)
    {
      v74 = result;
      v78 = v30;
      v75 = v23;
      v76 = a2;
      v77 = v4;
      v31 = v8;
      dispatch thunk of ContextActionsConfiguration.presentationSource.getter();
      v32 = type metadata accessor for PresentationSource();
      v33 = *(v32 - 8);
      v34 = *(v33 + 48);
      v35 = v33 + 48;
      if (v34(v28, 1, v32) || (v71[3] = v35, v72 = v34, v73 = v32, (v36 = PresentationSource.viewController.getter()) == 0))
      {

        sub_100009104(v28, &unk_10057BB90, &unk_100402D60);
      }

      else
      {
        v37 = v36;
        sub_100009104(v28, &unk_10057BB90, &unk_100402D60);
        v38 = UIResponder.nearestActionRunner.getter();
        v71[2] = v39;

        if (v38)
        {
          v98 = v38;
          type metadata accessor for TranscriptSelectionContextActionConfiguration(0);
          if (swift_dynamicCastClass() || (type metadata accessor for NowPlayingTranscriptSelectionContextActionConfiguration(), swift_dynamicCastClass()))
          {
            v40 = static MetricsTargetType.transcriptText.getter();
          }

          else
          {
            v40 = static MetricsTargetType.button.getter();
          }

          v71[0] = v40;
          (*(a3 + 40))(v76, a3);
          MetricsLabel.rawValue.getter();
          (*(v85 + 8))(v21, v19);
          v41 = swift_dynamicCastClass();
          v71[1] = a1;
          if (v41)
          {
            static MetricsActionContext.selectionMenu.getter();
          }

          else
          {
            static MetricsActionContext.contextual.getter();
          }

          v42 = v88;
          v43 = type metadata accessor for URL();
          v44 = v86;
          (*(*(v43 - 8) + 56))(v86, 1, 1, v43);
          static MetricsDataConfiguration.default.getter();
          static MetricsData.clickData(targetID:targetType:actionType:actionContext:actionResult:actionURL:fields:configuration:)();

          v111 = v104;
          sub_100009104(&v111, &unk_100574650, &unk_1004023C0);
          v110 = v105;
          sub_100009104(&v110, &unk_100573A90, &unk_100401170);
          v109 = v106;
          sub_100009104(&v109, &unk_100574660, &unk_1004023D0);
          sub_100037470(v107, v108);

          sub_100009104(v44, &qword_100574040, &unk_100400AD0);
          NativeClickMetricsAction.init(_:)();
          ContextActionsConfiguration.objectGraph.getter();
          v45 = v95;
          BaseObjectGraph.injectIfAvailable<A>(_:)();

          v46 = v87;
          v47 = *(v87 + 48);
          v49 = v42;
          if (v47(v45, 1, v42) != 1)
          {
            v53 = v97;
            sub_1001E91F0(v45, v97, v48);
LABEL_27:
            type metadata accessor for ActionRunnerOptions();
            ContextActionsConfiguration.objectGraph.getter();
            BaseObjectGraph.__allocating_init(_:)();
            v61 = v91;
            sub_1002361F4(v53, v91, &type metadata accessor for ActionOrigin);
            (*(v46 + 56))(v61, 0, 1, v49);
            ActionRunnerOptions.withActionOrigin(_:)();

            sub_100009104(v61, &qword_100576488, &unk_100403870);
            swift_getObjectType();
            v62 = v90;
            v100 = v90;
            v101 = sub_10000E464(&qword_100576498, &type metadata accessor for NativeClickMetricsAction, &protocol conformance descriptor for NativeClickMetricsAction);
            v63 = sub_10000E680(&v99);
            v64 = v89;
            v65 = v96;
            (*(v89 + 16))(v63, v96, v62);
            v66 = v93;
            v67 = v92;
            v68 = v94;
            (*(v93 + 104))(v92, enum case for ActionMetricsBehavior.fromAction(_:), v94);
            ActionRunner.perform(_:withMetrics:asPartOf:)();
            swift_unknownObjectRelease();

            (*(v66 + 8))(v67, v68);
            sub_10023625C(v97, &type metadata accessor for ActionOrigin);
            (*(v64 + 8))(v65, v62);
            return sub_100004590(&v99);
          }

          dispatch thunk of ContextActionsConfiguration.context.getter();
          dispatch thunk of ContextActionsConfiguration.previewModel.getter();
          v50 = v100;
          if (v100)
          {
            v51 = sub_1000044A0(&v99, v100);
            *(&v103 + 1) = v50;
            v52 = sub_10000E680(&v102);
            (*(*(v50 - 8) + 16))(v52, v51, v50);
            sub_100004590(&v99);
          }

          else
          {
            sub_100009104(&v99, &qword_100576490, &qword_100403D40);
            v102 = 0u;
            v103 = 0u;
          }

          v54 = v83;
          v55 = v72;
          v56 = v82;
          dispatch thunk of ContextActionsConfiguration.presentationSource.getter();
          if (!v55(v56, 1, v73))
          {
            PresentationSource.position.getter();
            v57 = v80;
            v58 = v56;
            v59 = v81;
            if (!(*(v80 + 48))(v54, 1, v81))
            {
              (*(v57 + 16))(v79, v54, v59);
              sub_100009104(v54, &qword_100576480, &qword_100403868);
              sub_100009104(v58, &unk_10057BB90, &unk_100402D60);
              v69 = v57;
              v70 = v79;
              PresentationSource.Position.view.getter();
              (*(v69 + 8))(v70, v59);
LABEL_25:
              v53 = v97;
              ActionOrigin.init(context:sender:view:)();
              v60 = v95;
              if (v47(v95, 1, v49) != 1)
              {
                sub_100009104(v60, &qword_100576488, &unk_100403870);
              }

              goto LABEL_27;
            }

            sub_100009104(v54, &qword_100576480, &qword_100403868);
            v56 = v58;
          }

          sub_100009104(v56, &unk_10057BB90, &unk_100402D60);
          goto LABEL_25;
        }
      }

      static OSLogger.actions.getter();
      sub_100168088(&unk_10057E660, qword_100403D70);
      type metadata accessor for LogMessage();
      *(swift_allocObject() + 16) = xmmword_100400790;
      LogMessage.init(stringLiteral:)();
      Logger.error(_:)();

      return (*(v98 + 8))(v10, v31);
    }
  }

  return result;
}

uint64_t sub_1002343DC(__n128 a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_100233528(a7, a9, a10, a1);
  v14 = swift_allocObject();
  v14[2] = a8;
  v14[3] = a4;
  v14[4] = a5;
  v15 = *(a10 + 88);

  v15(sub_1001E9478, v14, a9, a10);
}

uint64_t sub_1002344D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v24 = a3;
  v22 = a2;
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v27 = *(v3 - 8);
  __chkstk_darwin();
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v25 = *(v6 - 8);
  v26 = v6;
  __chkstk_darwin();
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchTime();
  v10 = *(v9 - 8);
  __chkstk_darwin();
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v14 = &v22 - v13;
  sub_100009F1C(0, &qword_1005729D0, OS_dispatch_queue_ptr);
  v15 = static OS_dispatch_queue.main.getter();
  static DispatchTime.now()();
  + infix(_:_:)();
  v23 = *(v10 + 8);
  v16 = v12;
  v17 = v9;
  v23(v16, v9);
  v18 = swift_allocObject();
  v19 = v24;
  *(v18 + 16) = v22;
  *(v18 + 24) = v19;
  aBlock[4] = sub_10023614C;
  aBlock[5] = v18;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000F038;
  aBlock[3] = &unk_1004E6960;
  v20 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_10000E464(&qword_10057D380, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100168088(&unk_100575CD0, &unk_100400B50);
  sub_100182E30();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
  _Block_release(v20);

  (*(v27 + 8))(v5, v3);
  (*(v25 + 8))(v8, v26);
  return (v23)(v14, v17);
}

void sub_1002348A4(uint64_t a1, void *a2, void *a3, void *aBlock)
{
  v6 = *(a1 + 32);
  v7 = _Block_copy(aBlock);
  v8 = swift_allocObject();
  *(v8 + 16) = v7;

  v10 = a2;
  v9 = a3;
  v6(v10, v9, sub_1002353FC, v8);
}

uint64_t sub_100234978(uint64_t a1)
{
  type metadata accessor for ChannelContextActionConfiguration(0);
  v2 = swift_dynamicCastClass();
  if (v2)
  {
    *&v17 = *(v2 + qword_1005932C8 + 8);
LABEL_3:
    sub_1000366D8();
    return BinaryInteger.description.getter();
  }

  swift_getObjectType();
  v4 = swift_conformsToProtocol2();
  if (v4 && v1 && (v5 = v4, v6 = swift_getObjectType(), v7 = v1, (*(v5 + 16))(v6, v5)))
  {
    v8 = sub_100398D08();
    v10 = v9;

    if (object_getClass(v7) == _TtC8Podcasts34EpisodePresentPodcastContextAction && (AdamID.isEmpty.getter() & 1) == 0)
    {
      goto LABEL_22;
    }

    type metadata accessor for SubscribeEpisodeContextAction();
    if (swift_dynamicCastClass())
    {
      if ((AdamID.isEmpty.getter() & 1) == 0)
      {
        goto LABEL_22;
      }
    }
  }

  else
  {
    swift_getObjectType();
    v11 = swift_conformsToProtocol2();
    if (v11)
    {
      if (v1)
      {
        v12 = v11;
        ObjectType = swift_getObjectType();
        if ((*(v12 + 16))(ObjectType, v12))
        {
          v10 = sub_1002160A8(v14);

          if ((AdamID.isEmpty.getter() & 1) == 0)
          {
LABEL_22:
            *&v17 = v10;
            goto LABEL_3;
          }
        }
      }
    }

    type metadata accessor for ContextActionsConfiguration();

    sub_100168088(&qword_1005764A0, &qword_100403880);
    if ((swift_dynamicCast() & 1) == 0)
    {
      v19 = 0;
      v17 = 0u;
      v18 = 0u;
      sub_100009104(&v17, &qword_1005764A8, qword_100403888);
      return 0;
    }

    v15 = *(&v18 + 1);
    v16 = v19;
    sub_1000044A0(&v17, *(&v18 + 1));
    if (!(*(v16 + 8))(v15, v16))
    {
      sub_100004590(&v17);
      return 0;
    }

    v8 = sub_100399278();

    sub_100004590(&v17);
  }

  if ((AdamID.isEmpty.getter() & 1) == 0)
  {
    *&v17 = v8;
    goto LABEL_3;
  }

  return 0;
}

uint64_t sub_100234C18(uint64_t a1, uint64_t a2, uint64_t a3)
{

  dispatch thunk of ContextAction.configuration.setter();
  v5 = *(a3 + 64);

  return v5(a2, a3);
}

uint64_t sub_100234C80()
{
  v0 = type metadata accessor for ContextActionType();
  v34 = *(v0 - 8);
  v35 = v0;
  __chkstk_darwin();
  v33 = v32 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100168088(&unk_100573A80, &unk_100401160);
  __chkstk_darwin();
  v3 = v32 - v2;
  v4 = type metadata accessor for EpisodeListSettings();
  v32[0] = *(v4 - 8);
  __chkstk_darwin();
  v6 = v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for InteractionContext();
  v8 = *(v7 - 8);
  __chkstk_darwin();
  v10 = v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for InteractionContext.Page();
  __chkstk_darwin();
  v12 = v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v14 = v32 - v13;
  dispatch thunk of ContextActionsConfiguration.context.getter();
  InteractionContext.page.getter();
  (*(v8 + 8))(v10, v7);
  sub_1002361F4(v14, v12, &type metadata accessor for InteractionContext.Page);
  if (swift_getEnumCaseMultiPayload() == 4)
  {
    v15 = *v12;
    *&v41 = 0;
    *(&v41 + 1) = 0xE000000000000000;
    *&v42 = 0;
    *(&v42 + 1) = 0xE000000000000000;
    v43 = xmmword_100406000;
    v44.i64[0] = 0;
    v44.i64[1] = 0xE000000000000000;
    v45 = 5;
  }

  else
  {
    InteractionContext.Page.episodeListSettings.getter();
    v16 = v32[0];
    if ((*(v32[0] + 48))(v3, 1, v4) == 1)
    {
      sub_10023625C(v14, &type metadata accessor for InteractionContext.Page);
      sub_100009104(v3, &unk_100573A80, &unk_100401160);
      v17 = v12;
LABEL_44:
      sub_10023625C(v17, &type metadata accessor for InteractionContext.Page);
LABEL_45:
      v15 = 0;
      return v15 & 1;
    }

    (*(v16 + 32))(v6, v3, v4);
    EpisodeListSettings.listType.getter();
    v15 = EpisodeListSettings.hidePlayedEpisodes.getter();
    (*(v16 + 8))(v6, v4);
    sub_10023625C(v12, &type metadata accessor for InteractionContext.Page);
    v43 = v38;
    v44 = v39;
    v45 = v40;
    v41 = v36;
    v42 = v37;
  }

  v19 = v33;
  v18 = v34;
  v20 = v35;
  (*(v34 + 16))(v33, v32[1], v35);
  v21 = (*(v18 + 88))(v19, v20);
  if (v21 == enum case for ContextActionType.removeEpisode(_:))
  {
    if (v45 != 2)
    {
      if (v45 != 8)
      {
        if (v45 == 10)
        {
          v22 = vorrq_s8(v43, v44);
          v23 = *&vorr_s8(*v22.i8, *&vextq_s8(v22, v22, 8uLL)) | *(&v41 + 1);
          v24 = v41 | *(&v42 + 1) | v42;
          goto LABEL_17;
        }

        goto LABEL_43;
      }

      goto LABEL_28;
    }

    goto LABEL_36;
  }

  if (v21 == enum case for ContextActionType.removeEpisodeFromBookmarks(_:))
  {
    if (v45 != 7)
    {
      if (v45 != 8)
      {
        if (v45 == 10 && v41 == 6)
        {
          v25 = vorrq_s8(v43, v44);
          v23 = *&vorr_s8(*v25.i8, *&vextq_s8(v25, v25, 8uLL)) | *(&v41 + 1);
          v24 = *(&v42 + 1) | v42;
LABEL_17:
          if (!(v23 | v24))
          {
            goto LABEL_37;
          }
        }

LABEL_43:
        sub_100018888(&v41);
        v17 = v14;
        goto LABEL_44;
      }

      goto LABEL_28;
    }

LABEL_36:
    sub_100018888(&v41);
    goto LABEL_37;
  }

  if (v21 != enum case for ContextActionType.markPlayed(_:))
  {
    if (v21 == enum case for ContextActionType.markUnplayed(_:))
    {
      if (v45 != 8)
      {
        goto LABEL_43;
      }

LABEL_28:
      v15 = static EpisodeUserFilter.== infix(_:_:)();
LABEL_29:
      sub_100018888(&v41);
      goto LABEL_30;
    }

    if (v21 != enum case for ContextActionType.removeFromUpNext(_:))
    {
      v29 = enum case for ContextActionType.removeFromStation(_:);
      v30 = v21;
      sub_100018888(&v41);
      sub_10023625C(v14, &type metadata accessor for InteractionContext.Page);
      if (v30 == v29)
      {
        v15 = 1;
        return v15 & 1;
      }

      (*(v18 + 8))(v19, v20);
      goto LABEL_45;
    }

    goto LABEL_36;
  }

  v26 = BYTE8(v42);
  if (v45 <= 5u)
  {
    if (v45 - 2 >= 2)
    {
      if (v45 == 4)
      {
        sub_10023625C(v14, &type metadata accessor for InteractionContext.Page);
        sub_100018888(&v41);
        v15 = v26;
        return v15 & 1;
      }

      if (v45 != 5)
      {
        goto LABEL_43;
      }
    }

    goto LABEL_29;
  }

  if (v45 <= 7u)
  {
    if (v45 != 6)
    {
      if (v45 != 7)
      {
        goto LABEL_43;
      }

      goto LABEL_29;
    }

LABEL_37:
    sub_10023625C(v14, &type metadata accessor for InteractionContext.Page);
    v15 = 1;
    return v15 & 1;
  }

  if (v45 == 8)
  {
    v31 = static EpisodeUserFilter.== infix(_:_:)();
    sub_100018888(&v41);
    sub_10023625C(v14, &type metadata accessor for InteractionContext.Page);
    v15 |= v31;
    return v15 & 1;
  }

  if (v45 != 10)
  {
    goto LABEL_43;
  }

  v27 = v44.i64[0] | *(&v43 + 1) | v43;
  if (*(&v42 + 1) | v42 | v41 | v44.i64[1] | v27 | *(&v41 + 1))
  {
    if ((v41 - 5) > 1 || *(&v42 + 1) | v42 | v44.i64[1] | v27 | *(&v41 + 1))
    {
      goto LABEL_43;
    }
  }

LABEL_30:
  sub_10023625C(v14, &type metadata accessor for InteractionContext.Page);
  return v15 & 1;
}

uint64_t sub_100235414@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 24);
  v2 = *(v1 + 32);
  *a1 = xmmword_100406010;
  *(a1 + 16) = 0xE400000000000000;
  *(a1 + 24) = v3;
  *(a1 + 32) = v2;
}

double sub_100235450@<D0>(uint64_t a1@<X8>)
{
  sub_1002317F8(v5);
  v2 = v6;
  result = *v5;
  v4 = v5[1];
  *a1 = v5[0];
  *(a1 + 16) = v4;
  *(a1 + 32) = v2;
  return result;
}

BOOL sub_100235490()
{
  sub_100168088(&qword_100574040, &unk_100400AD0);
  __chkstk_darwin();
  v2 = &v7[-v1];
  swift_beginAccess();
  if (!*(v0 + 16))
  {
    return 0;
  }

  type metadata accessor for ExternalReferenceLinkContextActionConfiguration(0);
  if (!swift_dynamicCastClass())
  {
    return 0;
  }

  v3 = OBJC_IVAR____TtC8Podcasts30OpenReferenceLinkContextAction_link;
  swift_beginAccess();
  sub_1001BB0E0(v0 + v3, v2);
  v4 = type metadata accessor for URL();
  v5 = (*(*(v4 - 8) + 48))(v2, 1, v4) != 1;
  sub_100009104(v2, &qword_100574040, &unk_100400AD0);
  return v5;
}

uint64_t sub_1002355D0(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for URL();
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 32);
  static URL._unconditionallyBridgeFromObjectiveC(_:)();

  v7(v6);

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_1002356CC@<X0>(void *a1@<X8>)
{
  v3 = v1[12];
  v2 = v1[13];
  v4 = v1[9];
  v5 = v1[10];
  *a1 = 0;
  a1[1] = v3;
  a1[2] = v2;
  a1[3] = v4;
  a1[4] = v5;
}

void sub_100235730(uint64_t a1@<X8>)
{
  v4 = *(v1 + 24);
  v3 = *(v1 + 32);
  v5 = objc_opt_self();

  v6 = [v5 mainBundle];
  v10._object = 0x80000001004682E0;
  v7._object = 0x80000001004682B0;
  v7._countAndFlagsBits = 0xD000000000000029;
  v8._countAndFlagsBits = 0;
  v8._object = 0xE000000000000000;
  v10._countAndFlagsBits = 0x100000000000001DLL;
  v9 = NSLocalizedString(_:tableName:bundle:value:comment:)(v7, 0, v6, v8, v10);

  *a1 = 0;
  *(a1 + 8) = v4;
  *(a1 + 16) = v3;
  *(a1 + 24) = v9;
}

BOOL sub_100235804()
{
  v1 = OBJC_IVAR____TtC8Podcasts37ManageFavoriteCategoriesContextAction_configuration;
  swift_beginAccess();
  result = 0;
  if (*(v0 + v1))
  {
    type metadata accessor for CategoryContextActionConfiguration(0);
    if (swift_dynamicCastClass())
    {
      return 1;
    }
  }

  return result;
}

void sub_10023588C(uint64_t a1@<X8>)
{
  v4 = *(v1 + 64);
  v3 = *(v1 + 72);
  v5 = objc_opt_self();

  v6 = [v5 mainBundle];
  v10._object = 0x8000000100468320;
  v7._object = 0x8000000100468300;
  v10._countAndFlagsBits = 0xD000000000000025;
  v7._countAndFlagsBits = 0xD000000000000010;
  v8._countAndFlagsBits = 0;
  v8._object = 0xE000000000000000;
  v9 = NSLocalizedString(_:tableName:bundle:value:comment:)(v7, 0, v6, v8, v10);

  *a1 = 0;
  *(a1 + 8) = v4;
  *(a1 + 16) = v3;
  *(a1 + 24) = v9;
}

void sub_100235968(uint64_t a1@<X8>)
{
  v4 = *(v1 + 24);
  v3 = *(v1 + 32);
  v5 = objc_opt_self();

  v6 = [v5 mainBundle];
  v10._object = 0xE800000000000000;
  v10._countAndFlagsBits = 0x657469726F766146;
  v7._object = 0x8000000100468360;
  v7._countAndFlagsBits = 0xD000000000000015;
  v8._countAndFlagsBits = 0;
  v8._object = 0xE000000000000000;
  v9 = NSLocalizedString(_:tableName:bundle:value:comment:)(v7, 0, v6, v8, v10);

  *a1 = 0;
  *(a1 + 8) = v4;
  *(a1 + 16) = v3;
  *(a1 + 24) = v9;
}

void sub_100235A54(uint64_t a1@<X8>)
{
  v4 = *(v1 + 24);
  v3 = *(v1 + 32);
  v5 = objc_opt_self();

  v6 = [v5 mainBundle];
  v10._object = 0xEC0000007373654CLL;
  v10._countAndFlagsBits = 0x2074736567677553;
  v7._object = 0x8000000100468380;
  v7._countAndFlagsBits = 0xD000000000000019;
  v8._countAndFlagsBits = 0;
  v8._object = 0xE000000000000000;
  v9 = NSLocalizedString(_:tableName:bundle:value:comment:)(v7, 0, v6, v8, v10);

  *a1 = 0;
  *(a1 + 8) = v4;
  *(a1 + 16) = v3;
  *(a1 + 24) = v9;
}

uint64_t sub_100235B48@<X0>(void *a1@<X8>)
{
  v3 = 0xEC000000656C6262;
  v4 = 0x75622E65746F7571;
  v5 = OBJC_IVAR____TtC8Podcasts27ViewTranscriptContextAction_configuration;
  swift_beginAccess();
  if (*(v1 + v5))
  {
    type metadata accessor for NowPlayingTranscriptSelectionContextActionConfiguration();
    if (swift_dynamicCastClass())
    {
      v4 = 0xD000000000000014;
      v3 = 0x80000001004683C0;
    }
  }

  result = sub_1002EB514();
  *a1 = 0;
  a1[1] = v4;
  a1[2] = v3;
  a1[3] = result;
  a1[4] = v7;
  return result;
}

void sub_100235C28(uint64_t a1@<X8>)
{
  v4 = *(v1 + 24);
  v3 = *(v1 + 32);
  v5 = objc_opt_self();

  v6 = [v5 mainBundle];
  v10._object = 0x8000000100468400;
  v7._countAndFlagsBits = 0xD00000000000001ELL;
  v7._object = 0x80000001004683E0;
  v8._countAndFlagsBits = 0;
  v8._object = 0xE000000000000000;
  v10._countAndFlagsBits = 0xD000000000000011;
  v9 = NSLocalizedString(_:tableName:bundle:value:comment:)(v7, 0, v6, v8, v10);

  *a1 = 0;
  *(a1 + 8) = v4;
  *(a1 + 16) = v3;
  *(a1 + 24) = v9;
}

uint64_t sub_100235D00()
{
  if ((*(v0 + OBJC_IVAR____TtC8Podcasts28UndoSuggestLessContextAction_adamID + 8) & 1) != 0 || *(v0 + OBJC_IVAR____TtC8Podcasts28UndoSuggestLessContextAction_interestState) == 4)
  {
    v1 = 0;
  }

  else
  {
    v2 = InterestState.rawValue.getter();
    v4 = v3;
    if (v2 == InterestState.rawValue.getter() && v4 == v5)
    {
      v1 = 1;
    }

    else
    {
      v1 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

  return v1 & 1;
}

uint64_t sub_100235DD0@<X0>(void *a1@<X8>)
{
  v3 = *(v1 + 32);
  v2 = *(v1 + 40);
  *a1 = 0;
  a1[1] = v3;
  a1[2] = v2;
  a1[3] = 0xD000000000000024;
  a1[4] = 0x8000000100468420;
}

void sub_100235E18(uint64_t a1@<X8>)
{
  v4 = *(v1 + 24);
  v3 = *(v1 + 32);
  v5 = objc_opt_self();

  v6 = [v5 mainBundle];
  v10._object = 0xED0000657469726FLL;
  v10._countAndFlagsBits = 0x766146206F646E55;
  v7._object = 0x8000000100468450;
  v7._countAndFlagsBits = 0xD00000000000001ALL;
  v8._countAndFlagsBits = 0;
  v8._object = 0xE000000000000000;
  v9 = NSLocalizedString(_:tableName:bundle:value:comment:)(v7, 0, v6, v8, v10);

  *a1 = 0;
  *(a1 + 8) = v4;
  *(a1 + 16) = v3;
  *(a1 + 24) = v9;
}

double sub_100235F10@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_10023196C(a1, a2, v7);
  v4 = v8;
  result = *v7;
  v6 = v7[1];
  *a3 = v7[0];
  *(a3 + 16) = v6;
  *(a3 + 32) = v4;
  return result;
}

double sub_100235F50@<D0>(uint64_t a1@<X8>)
{
  v2 = [objc_opt_self() mainBundle];
  v7._object = 0xE000000000000000;
  v3._countAndFlagsBits = 0x73676E6974746553;
  v3._object = 0xE800000000000000;
  v4._countAndFlagsBits = 0;
  v4._object = 0xE000000000000000;
  v7._countAndFlagsBits = 0;
  v5 = NSLocalizedString(_:tableName:bundle:value:comment:)(v3, 0, v2, v4, v7);

  result = 0.0;
  *a1 = xmmword_100406020;
  *(a1 + 16) = 0xE400000000000000;
  *(a1 + 24) = v5;
  return result;
}

double sub_10023601C@<D0>(uint64_t a1@<X8>)
{
  v2 = [objc_opt_self() mainBundle];
  v7._object = 0x8000000100468470;
  v3._countAndFlagsBits = 0x6853206F74206F47;
  v3._object = 0xEA0000000000776FLL;
  v4._countAndFlagsBits = 0;
  v4._object = 0xE000000000000000;
  v7._countAndFlagsBits = 0xD000000000000021;
  v5 = NSLocalizedString(_:tableName:bundle:value:comment:)(v3, 0, v2, v4, v7);

  result = 0.0;
  *a1 = xmmword_100405FF0;
  *(a1 + 16) = 0xEF6572617571732ELL;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_100236108(uint64_t (*a1)(uint64_t), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t (*)(uint64_t), uint64_t, uint64_t, uint64_t))
{
  result = a5(a1, a2, a3, a4);
  if (a1)
  {
    return a1(result);
  }

  return result;
}

void sub_100236184(uint64_t a1)
{
  v2 = a1;
  v3 = *(type metadata accessor for URL() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  sub_1002473E8(v2, v4);
}

uint64_t sub_1002361F4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10023625C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1002362E0@<X0>(double *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v49 = a2;
  sub_100168088(&qword_100578E88, &qword_100406128);
  __chkstk_darwin();
  v6 = v40 - v5;
  v7 = type metadata accessor for URLComponents();
  v50 = *(v7 - 8);
  v51 = v7;
  __chkstk_darwin();
  v44 = v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = type metadata accessor for URLQueryItem();
  v9 = *(v47 - 8);
  __chkstk_darwin();
  v43 = v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v42 = v40 - v11;
  v12 = *a1;
  v57 = *(a1 + 1);
  v58 = v12;
  v13 = *(a1 + 2);
  v55 = *(a1 + 3);
  v56 = v13;
  v14 = *(a1 + 4);
  v53 = *(a1 + 5);
  v54 = v14;
  v15 = a1[12];
  v48 = *(a1 + 104);
  sub_100168088(&qword_100578E90, &unk_100406130);
  inited = swift_initStackObject();
  *(inited + 32) = 0x4E65646F73697065;
  *(inited + 16) = xmmword_100401B10;
  *(inited + 40) = 0xEB00000000656D61;
  v17 = v57;
  *(inited + 48) = v58;
  *(inited + 64) = 0x4965646F73697065;
  *(inited + 72) = 0xE900000000000064;
  *(inited + 80) = v17;
  *(inited + 96) = 0x4E74736163646F70;
  *(inited + 104) = 0xEB00000000656D61;
  v18 = v55;
  *(inited + 112) = v56;
  *(inited + 128) = 0x4974736163646F70;
  *(inited + 136) = 0xE900000000000064;
  *(inited + 144) = v18;
  *(inited + 160) = 0x4E6C656E6E616863;
  *(inited + 168) = 0xEB00000000656D61;
  v19 = v53;
  *(inited + 176) = v54;
  *(inited + 192) = 0x496C656E6E616863;
  *(inited + 200) = 0xE900000000000064;
  *(inited + 208) = v19;
  sub_10023698C(&v58, v52);
  sub_10023698C(&v57, v52);
  sub_10023698C(&v56, v52);
  sub_10023698C(&v55, v52);
  sub_10023698C(&v54, v52);
  sub_10023698C(&v53, v52);
  v20 = sub_10016A870(inited);
  swift_setDeallocating();
  sub_100168088(&qword_100578E98, &unk_100406140);
  swift_arrayDestroy();
  v21 = 1 << *(v20 + 32);
  v22 = -1;
  if (v21 < 64)
  {
    v22 = ~(-1 << v21);
  }

  v23 = v22 & *(v20 + 64);
  v24 = (v21 + 63) >> 6;
  v45 = v9 + 32;
  v46 = v9;

  v25 = 0;
  v26 = _swiftEmptyArrayStorage;
  if (!v23)
  {
    goto LABEL_6;
  }

  do
  {
LABEL_4:
    while (1)
    {
      v27 = __clz(__rbit64(v23));
      v23 &= v23 - 1;
      v28 = v27 | (v25 << 6);
      v29 = (*(v20 + 56) + 16 * v28);
      if (v29[1])
      {
        break;
      }

      if (!v23)
      {
        goto LABEL_6;
      }
    }

    v40[2] = *v29;
    v41 = a3;
    v40[1] = *(*(v20 + 48) + 16 * v28);

    URLQueryItem.init(name:value:)();

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v26 = sub_100243BD4(0, v26[2] + 1, 1, v26);
    }

    v32 = v26[2];
    v31 = v26[3];
    if (v32 >= v31 >> 1)
    {
      v26 = sub_100243BD4((v31 > 1), v32 + 1, 1, v26);
    }

    v26[2] = v32 + 1;
    (*(v46 + 32))(v26 + ((*(v46 + 80) + 32) & ~*(v46 + 80)) + *(v46 + 72) * v32, v42, v47);
    a3 = v41;
  }

  while (v23);
  while (1)
  {
LABEL_6:
    v30 = v25 + 1;
    if (__OFADD__(v25, 1))
    {
      __break(1u);
LABEL_26:
      v26 = sub_100243BD4(0, v26[2] + 1, 1, v26);
      goto LABEL_19;
    }

    if (v30 >= v24)
    {
      break;
    }

    v23 = *(v20 + 64 + 8 * v30);
    ++v25;
    if (v23)
    {
      v25 = v30;
      goto LABEL_4;
    }
  }

  if ((v48 & 1) != 0 || v15 == 0.0)
  {
    goto LABEL_22;
  }

  Double.description.getter();
  v25 = v43;
  URLQueryItem.init(name:value:)();

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_26;
  }

LABEL_19:
  v34 = v26[2];
  v33 = v26[3];
  if (v34 >= v33 >> 1)
  {
    v26 = sub_100243BD4((v33 > 1), v34 + 1, 1, v26);
  }

  v26[2] = v34 + 1;
  (*(v46 + 32))(v26 + ((*(v46 + 80) + 32) & ~*(v46 + 80)) + *(v46 + 72) * v34, v25, v47);
LABEL_22:
  URLComponents.init(url:resolvingAgainstBaseURL:)();
  v36 = v50;
  v35 = v51;
  if ((*(v50 + 48))(v6, 1, v51) == 1)
  {

    sub_1002369FC(v6);
    v37 = type metadata accessor for URL();
    return (*(*(v37 - 8) + 56))(a3, 1, 1, v37);
  }

  else
  {
    v39 = v44;
    (*(v36 + 32))(v44, v6, v35);
    URLComponents.queryItems.setter();
    URLComponents.url.getter();
    return (*(v36 + 8))(v39, v35);
  }
}

uint64_t sub_10023698C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100168088(&qword_100574230, &qword_100401FE0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1002369FC(uint64_t a1)
{
  v2 = sub_100168088(&qword_100578E88, &qword_100406128);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100236A64(__int128 *a1, uint64_t a2)
{
  *(v2 + 16) = 0;
  v5 = [objc_opt_self() mainBundle];
  v17._object = 0xE400000000000000;
  v6._object = 0x800000010046A810;
  v6._countAndFlagsBits = 0xD000000000000013;
  v7._countAndFlagsBits = 0;
  v7._object = 0xE000000000000000;
  v17._countAndFlagsBits = 2036427856;
  v8 = NSLocalizedString(_:tableName:bundle:value:comment:)(v6, 0, v5, v7, v17);

  *(v2 + 24) = v8;
  *(v2 + 40) = 0;
  v9 = OBJC_IVAR____TtC8Podcasts36PlayTranscriptSelectionContextAction_state;
  v10 = type metadata accessor for EpisodePlayState();
  (*(*(v10 - 8) + 56))(v2 + v9, 1, 1, v10);
  v11 = v2 + OBJC_IVAR____TtC8Podcasts36PlayTranscriptSelectionContextAction_playerStartTime;
  *v11 = 0;
  *(v11 + 8) = 1;
  v12 = v2 + OBJC_IVAR____TtC8Podcasts36PlayTranscriptSelectionContextAction_referenceStartTime;
  *v12 = 0;
  *(v12 + 8) = 1;
  v13 = v2 + OBJC_IVAR____TtC8Podcasts36PlayTranscriptSelectionContextAction_alignmentCoordinator;
  *v13 = 0u;
  *(v13 + 16) = 0u;
  *(v13 + 32) = 0;
  v14 = OBJC_IVAR____TtC8Podcasts36PlayTranscriptSelectionContextAction_pendingMetadata;
  v15 = type metadata accessor for PendingPlaybackMetadata();
  (*(*(v15 - 8) + 56))(v2 + v14, 1, 1, v15);
  sub_1000109E4(a1, v2 + 48);
  *(v2 + 88) = a2;
  return v2;
}

void sub_100236C04(uint64_t a1)
{
  v2 = type metadata accessor for EpisodeOffer();
  v70 = *(v2 - 8);
  __chkstk_darwin();
  v4 = &v69 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v6 = &v69 - v5;
  sub_100168088(&qword_100578FE0, &unk_100408A60);
  __chkstk_darwin();
  v71 = &v69 - v7;
  sub_100168088(&qword_10057BC50, &qword_1004062D8);
  __chkstk_darwin();
  v69 = &v69 - v8;
  type metadata accessor for EpisodeContextActionDataType(0);
  __chkstk_darwin();
  v10 = (&v69 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin();
  v12 = (&v69 - v11);
  __chkstk_darwin();
  v14 = &v69 - v13;
  v15 = OBJC_IVAR____TtC8Podcasts24EpisodeContextActionData_type;
  swift_beginAccess();
  sub_100239D88(a1 + v15, v14, type metadata accessor for EpisodeContextActionDataType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  sub_100239DF0(v14, type metadata accessor for EpisodeContextActionDataType);
  if (EnumCaseMultiPayload <= 1)
  {
    v22 = v4;
    v23 = v2;
    v24 = v70;
    if (EnumCaseMultiPayload)
    {
      v33 = sub_1003982E0(1);
      if (v33[2])
      {
        (*(v24 + 16))(v22, v33 + ((*(v24 + 80) + 32) & ~*(v24 + 80)), v23);

        (*(v24 + 32))(v6, v22, v23);
        EpisodeOffer.contentId.getter();
        v34 = v69;
        PendingPlaybackMetadata.init(adamId:uuid:)();
        v35 = OBJC_IVAR____TtC8Podcasts36PlayTranscriptSelectionContextAction_pendingMetadata;
        v36 = v72;
        swift_beginAccess();
        sub_100016A14(v34, v36 + v35, &qword_10057BC50, &qword_1004062D8);
        swift_endAccess();
        EpisodeOffer.contentId.getter();
        EpisodeStateController.stateMachine(for:)();
        v37 = v71;
        dispatch thunk of EpisodeStateMachine.currentState.getter();

        (*(v24 + 8))(v6, v23);
LABEL_51:
        v53 = type metadata accessor for EpisodePlayState();
        (*(*(v53 - 8) + 56))(v37, 0, 1, v53);
        v54 = OBJC_IVAR____TtC8Podcasts36PlayTranscriptSelectionContextAction_state;
        swift_beginAccess();
        v49 = v36 + v54;
        v50 = v37;
        goto LABEL_72;
      }
    }

    else if (sub_100398118(1, v17)[2])
    {
      swift_bridgeObjectRetain_n();

      v25 = v69;
      PendingPlaybackMetadata.init(adamId:uuid:)();
      v26 = OBJC_IVAR____TtC8Podcasts36PlayTranscriptSelectionContextAction_pendingMetadata;
      v27 = v72;
      swift_beginAccess();
      sub_100016A14(v25, v27 + v26, &qword_10057BC50, &qword_1004062D8);
      swift_endAccess();
      EpisodeStateController.stateMachine(for:)();

      v28 = v71;
      dispatch thunk of EpisodeStateMachine.currentState.getter();

      goto LABEL_49;
    }

    goto LABEL_74;
  }

  if (EnumCaseMultiPayload == 2)
  {
    sub_100239D88(a1 + v15, v12, type metadata accessor for EpisodeContextActionDataType);
    if (swift_getEnumCaseMultiPayload() != 2)
    {
      sub_100239DF0(v12, type metadata accessor for EpisodeContextActionDataType);
      v38 = _swiftEmptyArrayStorage;
      goto LABEL_42;
    }

    v18 = *v12;
    v73 = _swiftEmptyArrayStorage;
    if (!(v18 >> 62))
    {
      v29 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v29)
      {
        goto LABEL_21;
      }

      goto LABEL_40;
    }

    goto LABEL_39;
  }

  if (EnumCaseMultiPayload != 3)
  {
    return;
  }

  sub_100239D88(a1 + v15, v10, type metadata accessor for EpisodeContextActionDataType);
  if (swift_getEnumCaseMultiPayload() != 3)
  {
    sub_100239DF0(v10, type metadata accessor for EpisodeContextActionDataType);
    v39 = _swiftEmptyArrayStorage;
    goto LABEL_59;
  }

  v15 = *v10;
  v73 = _swiftEmptyArrayStorage;
  if (v15 >> 62)
  {
    goto LABEL_56;
  }

  v18 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v18)
  {
LABEL_57:
    v39 = _swiftEmptyArrayStorage;
LABEL_58:

LABEL_59:
    if (v39 >> 62)
    {
      if (_CocoaArrayWrapper.endIndex.getter())
      {
LABEL_61:
        if ((v39 & 0xC000000000000001) != 0)
        {
          v55 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (!*((v39 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            return;
          }

          v55 = *(v39 + 32);
        }

        v56 = v55;

        v57 = MPCPlayerResponseItem.podcastEpisode.getter();
        if (v57 && (v58 = v57, MPModelObject.uuid.getter(), v60 = v59, v58, v60))
        {
          v61 = v72;
          EpisodeStateController.stateMachine(for:)();
        }

        else
        {
          v62 = MPCPlayerResponseItem.podcastEpisode.getter();
          if (!v62 || (v63 = v62, MPModelObject.adamID.getter(), v65 = v64, v63, (v65 & 1) != 0))
          {

            return;
          }

          v61 = v72;
          EpisodeStateController.stateMachine(for:)();
        }

        v66 = v71;
        dispatch thunk of EpisodeStateMachine.currentState.getter();

        v67 = type metadata accessor for EpisodePlayState();
        (*(*(v67 - 8) + 56))(v66, 0, 1, v67);
        v68 = OBJC_IVAR____TtC8Podcasts36PlayTranscriptSelectionContextAction_state;
        swift_beginAccess();
        v49 = v61 + v68;
        v50 = v66;
        goto LABEL_72;
      }
    }

    else if (*((v39 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_61;
    }

LABEL_74:

    return;
  }

  while (1)
  {
    v19 = 0;
    while (1)
    {
      if ((v15 & 0xC000000000000001) != 0)
      {
        specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v19 >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_38;
        }

        v20 = *(v15 + 8 * v19 + 32);
      }

      v21 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      ++v19;
      if (v21 == v18)
      {
        v39 = v73;
        goto LABEL_58;
      }
    }

    while (1)
    {
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      v29 = _CocoaArrayWrapper.endIndex.getter();
      if (!v29)
      {
        break;
      }

LABEL_21:
      v30 = 0;
      v15 = v18 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if ((v18 & 0xC000000000000001) != 0)
        {
          v31 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v30 >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_37;
          }

          v31 = *(v18 + 8 * v30 + 32);
        }

        v32 = v30 + 1;
        if (__OFADD__(v30, 1))
        {
          break;
        }

        if ([v31 isExplicit])
        {
          type metadata accessor for RestrictionsController();
          static RestrictionsController.isExplicitContentAllowed.getter();
        }

        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        ++v30;
        if (v32 == v29)
        {
          v38 = v73;
          goto LABEL_41;
        }
      }

      __break(1u);
    }

LABEL_40:
    v38 = _swiftEmptyArrayStorage;
LABEL_41:

LABEL_42:
    if (v38 >> 62)
    {
      if (!_CocoaArrayWrapper.endIndex.getter())
      {
        goto LABEL_74;
      }
    }

    else if (!*((v38 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_74;
    }

    if ((v38 & 0xC000000000000001) != 0)
    {
      break;
    }

    if (*((v38 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v40 = *(v38 + 32);
      goto LABEL_47;
    }

    __break(1u);
LABEL_56:
    v18 = _CocoaArrayWrapper.endIndex.getter();
    if (!v18)
    {
      goto LABEL_57;
    }
  }

  v40 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_47:
  v41 = v40;

  v42 = v41;
  [v42 episodeStoreId];
  AdamID.init(rawValue:)();
  v43 = [v42 episodeUuid];
  if (!v43)
  {
    [v42 episodeStoreId];

    AdamID.init(rawValue:)();
    v51 = v69;
    PendingPlaybackMetadata.init(adamId:uuid:)();
    v52 = OBJC_IVAR____TtC8Podcasts36PlayTranscriptSelectionContextAction_pendingMetadata;
    v36 = v72;
    swift_beginAccess();
    sub_100016A14(v51, v36 + v52, &qword_10057BC50, &qword_1004062D8);
    swift_endAccess();
    EpisodeStateController.stateMachine(for:)();
    v37 = v71;
    dispatch thunk of EpisodeStateMachine.currentState.getter();

    goto LABEL_51;
  }

  v44 = v43;

  static String._unconditionallyBridgeFromObjectiveC(_:)();

  v45 = v69;
  PendingPlaybackMetadata.init(adamId:uuid:)();
  v46 = OBJC_IVAR____TtC8Podcasts36PlayTranscriptSelectionContextAction_pendingMetadata;
  v27 = v72;
  swift_beginAccess();
  sub_100016A14(v45, v27 + v46, &qword_10057BC50, &qword_1004062D8);
  swift_endAccess();
  EpisodeStateController.stateMachine(for:)();

  v28 = v71;
  dispatch thunk of EpisodeStateMachine.currentState.getter();

LABEL_49:
  v47 = type metadata accessor for EpisodePlayState();
  (*(*(v47 - 8) + 56))(v28, 0, 1, v47);
  v48 = OBJC_IVAR____TtC8Podcasts36PlayTranscriptSelectionContextAction_state;
  swift_beginAccess();
  v49 = v27 + v48;
  v50 = v28;
LABEL_72:
  sub_100016A14(v50, v49, &qword_100578FE0, &unk_100408A60);
  swift_endAccess();
}

void sub_10023778C()
{
  swift_beginAccess();
  if (*(v0 + 40))
  {
    type metadata accessor for TranscriptSelectionContextActionConfiguration(0);
    v1 = swift_dynamicCastClass();
    if (v1)
    {
      v2 = v0 + OBJC_IVAR____TtC8Podcasts36PlayTranscriptSelectionContextAction_referenceStartTime;
      *v2 = *(v1 + qword_1005766D8);
      *(v2 + 8) = 0;
      sub_100004428(v1 + qword_1005932A0, v12);
      v3 = OBJC_IVAR____TtC8Podcasts36PlayTranscriptSelectionContextAction_alignmentCoordinator;
      swift_beginAccess();
      v4 = v0 + v3;
    }

    else
    {
      type metadata accessor for NowPlayingTranscriptSelectionContextActionConfiguration();
      if (!swift_dynamicCastClass())
      {
        return;
      }

      started = NowPlayingTranscriptSelectionContextActionConfiguration.playerStartTime.getter();
      v6 = v0 + OBJC_IVAR____TtC8Podcasts36PlayTranscriptSelectionContextAction_playerStartTime;
      *v6 = started;
      *(v6 + 8) = v7 & 1;
      v8 = NowPlayingTranscriptSelectionContextActionConfiguration.referenceStartTime.getter();
      v9 = v0 + OBJC_IVAR____TtC8Podcasts36PlayTranscriptSelectionContextAction_referenceStartTime;
      *v9 = v8;
      *(v9 + 8) = v10 & 1;
      NowPlayingTranscriptSelectionContextActionConfiguration.alignmentCoordinator.getter();

      v11 = OBJC_IVAR____TtC8Podcasts36PlayTranscriptSelectionContextAction_alignmentCoordinator;
      swift_beginAccess();
      v4 = v0 + v11;
    }

    sub_100016A14(v12, v4, &qword_100578FE8, &qword_1004062C0);
    swift_endAccess();
  }
}

uint64_t sub_100237910()
{
  type metadata accessor for InteractionContext.Page();
  __chkstk_darwin();
  v2 = &v10 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for InteractionContext();
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!*(v0 + 16))
  {
    goto LABEL_6;
  }

  if (!sub_100397D28(v7))
  {

LABEL_6:
    LOBYTE(v8) = 0;
    return v8 & 1;
  }

  swift_beginAccess();
  v8 = *(v0 + 40);
  if (v8)
  {

    dispatch thunk of ContextActionsConfiguration.context.getter();

    InteractionContext.page.getter();
    (*(v4 + 8))(v6, v3);
    LOBYTE(v8) = InteractionContext.Page.isTranscriptView.getter();

    sub_100239DF0(v2, &type metadata accessor for InteractionContext.Page);
  }

  else
  {
  }

  return v8 & 1;
}

void sub_100237AD0()
{
  sub_100168088(&qword_100578010, &qword_100401F60);
  __chkstk_darwin();
  v2 = &v29 - v1;
  v3 = type metadata accessor for Logger();
  v31 = *(v3 - 8);
  __chkstk_darwin();
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100168088(&qword_100578FE0, &unk_100408A60);
  __chkstk_darwin();
  v7 = (&v29 - v6);
  v8 = type metadata accessor for EpisodePlayState();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin();
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v13 = &v29 - v12;
  if (*(v0 + OBJC_IVAR____TtC8Podcasts36PlayTranscriptSelectionContextAction_playerStartTime + 8))
  {
    v30 = v2;
    v14 = OBJC_IVAR____TtC8Podcasts36PlayTranscriptSelectionContextAction_state;
    swift_beginAccess();
    sub_100010430(v0 + v14, v7, &qword_100578FE0, &unk_100408A60);
    if ((*(v9 + 48))(v7, 1, v8) == 1)
    {
      v15 = &qword_100578FE0;
      v16 = &unk_100408A60;
      v17 = v7;
LABEL_14:
      sub_100009104(v17, v15, v16);
      return;
    }

    sub_100239BE4(v7, v13);
    v19 = OBJC_IVAR____TtC8Podcasts36PlayTranscriptSelectionContextAction_alignmentCoordinator;
    swift_beginAccess();
    sub_100010430(v0 + v19, &v32, &qword_100578FE8, &qword_1004062C0);
    if (!v33)
    {
      sub_100239DF0(v13, &type metadata accessor for EpisodePlayState);
      v15 = &qword_100578FE8;
      v16 = &qword_1004062C0;
      v17 = &v32;
      goto LABEL_14;
    }

    sub_1000109E4(&v32, v34);
    if ((*(v0 + OBJC_IVAR____TtC8Podcasts36PlayTranscriptSelectionContextAction_referenceStartTime + 8) & 1) == 0)
    {
      v29 = v0;
      v20 = *(v0 + OBJC_IVAR____TtC8Podcasts36PlayTranscriptSelectionContextAction_referenceStartTime);
      static Logger.transcripts.getter();
      v21 = Logger.logObject.getter();
      v22 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        *v23 = 134217984;
        *(v23 + 4) = v20;
        _os_log_impl(&_mh_execute_header, v21, v22, "User tapped transcript play button at %f", v23, 0xCu);
      }

      (*(v31 + 8))(v5, v3);
      v24 = type metadata accessor for TaskPriority();
      v25 = v30;
      (*(*(v24 - 8) + 56))(v30, 1, 1, v24);
      sub_100239D88(v13, v11, &type metadata accessor for EpisodePlayState);
      sub_100004428(v34, &v32);
      v26 = (*(v9 + 80) + 40) & ~*(v9 + 80);
      v27 = (v10 + v26 + 7) & 0xFFFFFFFFFFFFFFF8;
      v28 = swift_allocObject();
      v28[2] = 0;
      v28[3] = 0;
      v28[4] = v29;
      sub_100239BE4(v11, v28 + v26);
      sub_1000109E4(&v32, v28 + v27);
      *(v28 + ((v27 + 47) & 0xFFFFFFFFFFFFFFF8)) = v20;

      sub_100217A04(0, 0, v25, &unk_1004062D0, v28);
    }

    sub_100004590(v34);
    sub_100239DF0(v13, &type metadata accessor for EpisodePlayState);
  }

  else
  {
    v18 = *(v0 + OBJC_IVAR____TtC8Podcasts36PlayTranscriptSelectionContextAction_playerStartTime);

    sub_100238000(v18);
  }
}

void sub_100238000(double a1)
{
  v2 = v1;
  v3 = *v1;
  v4 = type metadata accessor for EpisodeOffer();
  v63 = *(v4 - 8);
  v64 = v4;
  __chkstk_darwin();
  v6 = &v62 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v8 = &v62 - v7;
  sub_100168088(&unk_100573A80, &unk_100401160);
  __chkstk_darwin();
  v65 = &v62 - v9;
  type metadata accessor for EpisodeContextActionDataType(0);
  __chkstk_darwin();
  v11 = (&v62 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin();
  v13 = &v62 - v12;
  __chkstk_darwin();
  v15 = &v62 - v14;
  sub_100168088(&qword_100578FE0, &unk_100408A60);
  __chkstk_darwin();
  v17 = &v62 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v19 = &v62 - v18;
  v67 = v1[2];
  if (!v67)
  {
    return;
  }

  v62 = v3;
  v20 = OBJC_IVAR____TtC8Podcasts36PlayTranscriptSelectionContextAction_state;
  swift_beginAccess();
  sub_100010430(v1 + v20, v19, &qword_100578FE0, &unk_100408A60);
  v21 = type metadata accessor for EpisodePlayState();
  v22 = (*(*(v21 - 8) + 48))(v19, 1, v21);
  v66 = v19;
  if (v22 == 1)
  {
    v23 = v67;
  }

  else
  {
    sub_100010430(v19, v17, &qword_100578FE0, &unk_100408A60);
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      v24 = v17[16];
      sub_1000044A0(v1 + 6, v1[9]);

      dispatch thunk of EpisodeControllerProtocol.seekTo(time:)();
      if (v24 == 1)
      {
        sub_1000044A0(v1 + 6, v1[9]);
        dispatch thunk of EpisodeControllerProtocol.playPlayer()();
      }

      goto LABEL_85;
    }

    v23 = v67;

    sub_100239DF0(v17, &type metadata accessor for EpisodePlayState);
  }

  v25 = OBJC_IVAR____TtC8Podcasts24EpisodeContextActionData_type;
  swift_beginAccess();
  sub_100239D88(v23 + v25, v15, type metadata accessor for EpisodeContextActionDataType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      sub_100239DF0(v15, type metadata accessor for EpisodeContextActionDataType);
      v40 = sub_1003982E0(1);
      if (v40[2])
      {
        v42 = v63;
        v41 = v64;
        (*(v63 + 16))(v6, v40 + ((*(v42 + 80) + 32) & ~*(v42 + 80)), v64);

        (*(v42 + 32))(v8, v6, v41);
        sub_1000044A0(v1 + 6, v1[9]);
        v69 = v62;
        v68 = v1;

        dispatch thunk of EpisodeControllerProtocol.play(episodeOffer:queueEpisodesIds:timestamp:sender:)();

        (*(v42 + 8))(v8, v41);
        goto LABEL_82;
      }

      goto LABEL_85;
    }

    sub_100239DF0(v15, type metadata accessor for EpisodeContextActionDataType);
    if (sub_100398118(1, v32)[2])
    {

      sub_1000044A0(v1 + 6, v1[9]);
      v33 = type metadata accessor for EpisodeListSettings();
      v34 = v65;
      (*(*(v33 - 8) + 56))(v65, 1, 1, v33);
      v69 = v62;
      v68 = v1;

      dispatch thunk of EpisodeControllerProtocol.play(episodeUuid:settings:sender:isSmartPlayButton:preventQueueing:adamId:reason:timestamp:waitForEngine:)();

      v35 = v34;
LABEL_77:
      sub_100009104(v35, &unk_100573A80, &unk_100401160);
      goto LABEL_82;
    }

    goto LABEL_84;
  }

  if (EnumCaseMultiPayload == 2)
  {
    sub_100239DF0(v15, type metadata accessor for EpisodeContextActionDataType);
    sub_100239D88(v67 + v25, v13, type metadata accessor for EpisodeContextActionDataType);
    if (swift_getEnumCaseMultiPayload() != 2)
    {
      sub_100239DF0(v13, type metadata accessor for EpisodeContextActionDataType);
      v43 = _swiftEmptyArrayStorage;
      goto LABEL_53;
    }

    v13 = *v13;
    v68 = _swiftEmptyArrayStorage;
    if (!(v13 >> 62))
    {
      v36 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v36)
      {
        goto LABEL_28;
      }

      goto LABEL_51;
    }

    goto LABEL_50;
  }

  v27 = v67;
  if (EnumCaseMultiPayload != 3)
  {

    sub_100239DF0(v15, type metadata accessor for EpisodeContextActionDataType);
    goto LABEL_86;
  }

  sub_100239DF0(v15, type metadata accessor for EpisodeContextActionDataType);
  sub_100239D88(v27 + v25, v11, type metadata accessor for EpisodeContextActionDataType);
  if (swift_getEnumCaseMultiPayload() != 3)
  {
    sub_100239DF0(v11, type metadata accessor for EpisodeContextActionDataType);
    v44 = _swiftEmptyArrayStorage;
    goto LABEL_68;
  }

  v13 = *v11;
  v68 = _swiftEmptyArrayStorage;
  if (v13 >> 62)
  {
    goto LABEL_65;
  }

  v28 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v28)
  {
LABEL_66:
    v44 = _swiftEmptyArrayStorage;
LABEL_67:

LABEL_68:
    if (v44 >> 62)
    {
      if (_CocoaArrayWrapper.endIndex.getter())
      {
        goto LABEL_70;
      }
    }

    else if (*((v44 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_70:
      if ((v44 & 0xC000000000000001) != 0)
      {
        v52 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (!*((v44 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          return;
        }

        v52 = *(v44 + 32);
      }

      v47 = v52;

      v53 = MPCPlayerResponseItem.podcastEpisode.getter();
      if (v53)
      {
        v54 = v53;
        MPModelObject.uuid.getter();
        v56 = v55;

        if (v56)
        {
          sub_1000044A0(v1 + 6, v1[9]);
          v57 = type metadata accessor for EpisodeListSettings();
          v51 = v65;
          (*(*(v57 - 8) + 56))(v65, 1, 1, v57);
          v69 = v62;
          v68 = v1;

          dispatch thunk of EpisodeControllerProtocol.play(episodeUuid:settings:sender:isSmartPlayButton:preventQueueing:adamId:reason:timestamp:waitForEngine:)();

LABEL_76:
          v35 = v51;
          goto LABEL_77;
        }
      }

      v58 = MPCPlayerResponseItem.podcastEpisode.getter();
      if (v58)
      {
        v59 = v58;
        MPModelObject.adamID.getter();
        v61 = v60;

        if ((v61 & 1) == 0)
        {
          goto LABEL_81;
        }
      }

LABEL_85:

      goto LABEL_86;
    }

LABEL_84:

    goto LABEL_85;
  }

  while (1)
  {
    v29 = 0;
    while (1)
    {
      if ((v13 & 0xC000000000000001) != 0)
      {
        specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v29 >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_49;
        }

        v30 = *(v13 + 8 * v29 + 32);
      }

      v31 = v29 + 1;
      if (__OFADD__(v29, 1))
      {
        break;
      }

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      ++v29;
      if (v31 == v28)
      {
        v44 = v68;
        goto LABEL_67;
      }
    }

    while (1)
    {
      __break(1u);
LABEL_48:
      __break(1u);
LABEL_49:
      __break(1u);
LABEL_50:
      v36 = _CocoaArrayWrapper.endIndex.getter();
      if (!v36)
      {
        break;
      }

LABEL_28:
      v37 = 0;
      while (1)
      {
        if ((v13 & 0xC000000000000001) != 0)
        {
          v38 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v37 >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_48;
          }

          v38 = *(v13 + 8 * v37 + 32);
        }

        v39 = v37 + 1;
        if (__OFADD__(v37, 1))
        {
          break;
        }

        if ([v38 isExplicit])
        {
          type metadata accessor for RestrictionsController();
          static RestrictionsController.isExplicitContentAllowed.getter();
        }

        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        ++v37;
        if (v39 == v36)
        {
          v43 = v68;
          goto LABEL_52;
        }
      }

      __break(1u);
    }

LABEL_51:
    v43 = _swiftEmptyArrayStorage;
LABEL_52:

LABEL_53:
    if (v43 >> 62)
    {
      if (!_CocoaArrayWrapper.endIndex.getter())
      {
        goto LABEL_84;
      }
    }

    else if (!*((v43 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_84;
    }

    if ((v43 & 0xC000000000000001) != 0)
    {
      break;
    }

    if (*((v43 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v45 = *(v43 + 32);
      goto LABEL_58;
    }

    __break(1u);
LABEL_65:
    v28 = _CocoaArrayWrapper.endIndex.getter();
    if (!v28)
    {
      goto LABEL_66;
    }
  }

  v45 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_58:
  v46 = v45;

  v47 = v46;
  v48 = [v47 episodeUuid];
  if (v48)
  {
    v49 = v48;

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_1000044A0(v2 + 6, v2[9]);
    v50 = type metadata accessor for EpisodeListSettings();
    v51 = v65;
    (*(*(v50 - 8) + 56))(v65, 1, 1, v50);
    v69 = v62;
    v68 = v2;

    dispatch thunk of EpisodeControllerProtocol.play(episodeUuid:settings:sender:isSmartPlayButton:preventQueueing:adamId:reason:timestamp:waitForEngine:)();

    goto LABEL_76;
  }

  [v47 episodeStoreId];

  AdamID.init(rawValue:)();
LABEL_81:
  sub_1000044A0(v2 + 6, v2[9]);
  v69 = v62;
  v68 = v2;

  dispatch thunk of EpisodeControllerProtocol.play(storeEpisodeId:timestamp:sender:)();

LABEL_82:
  sub_100009104(&v68, &unk_1005783D0, &qword_1004031E0);
LABEL_86:
  sub_100009104(v66, &qword_100578FE0, &unk_100408A60);
}

uint64_t sub_100238D24(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 64) = a1;
  *(v7 + 48) = a6;
  *(v7 + 56) = a7;
  *(v7 + 40) = a5;
  v8 = type metadata accessor for Logger();
  *(v7 + 72) = v8;
  *(v7 + 80) = *(v8 - 8);
  *(v7 + 88) = swift_task_alloc();
  *(v7 + 96) = swift_task_alloc();
  *(v7 + 104) = swift_task_alloc();
  sub_100168088(&qword_10057BC50, &qword_1004062D8);
  *(v7 + 112) = swift_task_alloc();
  v9 = type metadata accessor for PendingPlaybackMetadata();
  *(v7 + 120) = v9;
  *(v7 + 128) = *(v9 - 8);
  *(v7 + 136) = swift_task_alloc();

  return _swift_task_switch(sub_100238E98, 0, 0);
}

uint64_t sub_100238E98()
{
  v1 = v0[15];
  v2 = v0[16];
  v3 = v0[14];
  v4 = v0[5];
  v5 = OBJC_IVAR____TtC8Podcasts36PlayTranscriptSelectionContextAction_pendingMetadata;
  swift_beginAccess();
  sub_100010430(v4 + v5, v3, &qword_10057BC50, &qword_1004062D8);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_100009104(v0[14], &qword_10057BC50, &qword_1004062D8);
  }

  else
  {
    (*(v0[16] + 32))(v0[17], v0[14], v0[15]);
    if (EpisodePlayState.isEpisodePlaying.getter() & 1) != 0 || (EpisodePlayState.isEpisodePaused.getter())
    {
      (*(v0[16] + 8))(v0[17], v0[15]);
    }

    else
    {
      v7 = v0[16];
      v6 = v0[17];
      v8 = v0[15];
      sub_1000044A0((v0[5] + 48), *(v0[5] + 72));
      dispatch thunk of EpisodeControllerProtocol.preflight(_:)();
      (*(v7 + 8))(v6, v8);
    }
  }

  v9 = v0[7];
  v10 = v9[3];
  v11 = v9[4];
  sub_1000044A0(v9, v10);
  v12 = swift_task_alloc();
  v0[18] = v12;
  *v12 = v0;
  v12[1] = sub_100239070;
  v13.n128_u64[0] = v0[8];

  return dispatch thunk of AlignmentCoordinator.fetchPlayerTimestamp(for:)(v10, v11, v13);
}

uint64_t sub_100239070(double a1)
{
  v3 = *v2;
  *(v3 + 152) = a1;
  *(v3 + 160) = v1;

  if (v1)
  {
    v4 = sub_1002392F0;
  }

  else
  {
    v4 = sub_100239188;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100239188(uint64_t a1)
{
  static Logger.transcripts.getter();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v1 + 19);
    v5 = *(v1 + 8);
    v6 = swift_slowAlloc();
    *v6 = 134218240;
    *(v6 + 4) = v4;
    *(v6 + 12) = 2048;
    *(v6 + 14) = v5;
    _os_log_impl(&_mh_execute_header, v2, v3, "Starting play at %f, reference timestamp: %f", v6, 0x16u);
  }

  v7 = v1[19];
  v8 = *(v1 + 13);
  v9 = *(v1 + 9);
  v10 = *(v1 + 10);

  (*(v10 + 8))(v8, v9);
  sub_100238000(v7);

  v11 = *(v1 + 1);

  return v11();
}

uint64_t sub_1002392F0(uint64_t a1)
{
  static Logger.transcripts.getter();
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v1 + 8);
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 134218242;
    *(v5 + 4) = v4;
    *(v5 + 12) = 2112;
    swift_errorRetain();
    v7 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 14) = v7;
    *v6 = v7;
    _os_log_impl(&_mh_execute_header, v2, v3, "Unable to play from transcript at time: %f, error: %@", v5, 0x16u);
    sub_100009104(v6, &qword_100575B20, &qword_100401F90);
  }

  v8 = *(v1 + 12);
  v9 = *(v1 + 9);
  v10 = *(v1 + 10);

  v11 = *(v10 + 8);
  v11(v8, v9);
  static Logger.transcripts.getter();
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = *(v1 + 8);
    v15 = swift_slowAlloc();
    *v15 = 134217984;
    *(v15 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v12, v13, "Falling back to play at reference time: %f", v15, 0xCu);
  }

  v16 = *(v1 + 11);
  v17 = *(v1 + 9);
  v18 = v1[8];

  v11(v16, v17);
  sub_100238000(v18);

  v19 = *(v1 + 1);

  return v19();
}

uint64_t sub_100239568()
{

  sub_100004590((v0 + 48));

  sub_100009104(v0 + OBJC_IVAR____TtC8Podcasts36PlayTranscriptSelectionContextAction_state, &qword_100578FE0, &unk_100408A60);
  sub_100009104(v0 + OBJC_IVAR____TtC8Podcasts36PlayTranscriptSelectionContextAction_alignmentCoordinator, &qword_100578FE8, &qword_1004062C0);
  sub_100009104(v0 + OBJC_IVAR____TtC8Podcasts36PlayTranscriptSelectionContextAction_pendingMetadata, &qword_10057BC50, &qword_1004062D8);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for PlayTranscriptSelectionContextAction(uint64_t a1)
{
  result = qword_100578EF0;
  if (!qword_100578EF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100239698(uint64_t a1)
{
  sub_1002397DC(319, &qword_100578F00, &type metadata accessor for EpisodePlayState);
  if (v1 <= 0x3F)
  {
    sub_1002397DC(319, &unk_100578F08, &type metadata accessor for PendingPlaybackMetadata);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_1002397DC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
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

uint64_t sub_100239830()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t sub_100239870@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for MetricsLabel.play(_:);
  v3 = type metadata accessor for MetricsLabel();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_1002398E4@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for ContextActionType.playFromTranscript(_:);
  v3 = type metadata accessor for ContextActionType();
  v6 = *(v3 - 8);
  (*(v6 + 104))(a1, v2, v3);
  v4 = *(v6 + 56);

  return v4(a1, 0, 1, v3);
}

void sub_1002399C0()
{
  v1 = *(v0 + 16);
  if (v1)
  {

    if (sub_100397D28(v2))
    {
      sub_100236C04(v1);
      sub_10023778C();
    }
  }
}

uint64_t sub_100239A74(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 40) = a1;
}

uint64_t sub_100239B18(uint64_t a1)
{
  result = sub_100239BA0(&qword_100578FD0, &unk_100406230);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_100239B5C(uint64_t a1)
{
  result = sub_100239BA0(&qword_100578FD8, &unk_100406288);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_100239BA0(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for PlayTranscriptSelectionContextAction(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100239BE4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EpisodePlayState();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100239C48(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for EpisodePlayState() - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = v1[2];
  v9 = v1[3];
  v10 = v1[4];
  v11 = *(v1 + ((v7 + 47) & 0xFFFFFFFFFFFFFFF8));
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_10001C51C;

  return sub_100238D24(v11, a1, v8, v9, v10, v1 + v6, v1 + v7);
}

uint64_t sub_100239D88(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100239DF0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_100239E50()
{
  v1 = [objc_allocWithZone(MTInformativeTableViewCell) init];
  *(v0 + 48) = 0u;
  *(v0 + 64) = 0u;
  *(v0 + 80) = 0;
  *(v0 + 88) = v1;
  *(v0 + 16) = 0x7263736275536F6ELL;
  *(v0 + 24) = 0xEF736E6F69747069;
  *(v0 + 32) = [objc_allocWithZone(MTDynamicTypeConstant) initWithDefaultConstant:UIFontTextStyleBody textStyle:UITableViewAutomaticDimension];
  v2 = String._bridgeToObjectiveC()();
  isa = Array._bridgeToObjectiveC()().super.isa;
  v4 = objc_opt_self();
  v5 = [v4 groupWithTitle:v2 footerText:0 settings:isa];

  if (!v5)
  {
    __break(1u);
    goto LABEL_6;
  }

  *(v0 + 40) = v5;
  sub_100168088(&unk_100574680, &qword_100401740);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1004007B0;
  v7 = objc_opt_self();
  v8 = objc_opt_self();

  v9 = [v8 mainBundle];
  v27._object = 0xE000000000000000;
  v10._countAndFlagsBits = 0xD00000000000002DLL;
  v10._object = 0x800000010046A8A0;
  v11._countAndFlagsBits = 0;
  v11._object = 0xE000000000000000;
  v27._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v10, 0, v9, v11, v27);

  v12 = String._bridgeToObjectiveC()();

  v13 = String._bridgeToObjectiveC()();
  v14 = [v7 informativeSettingWithText:v12 identifier:v13];

  if (!v14)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  *(inited + 32) = v14;

  v15 = [v8 mainBundle];
  v28._object = 0xE000000000000000;
  v16._countAndFlagsBits = 0xD000000000000031;
  v16._object = 0x8000000100469FF0;
  v17._countAndFlagsBits = 0;
  v17._object = 0xE000000000000000;
  v28._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v16, 0, v15, v17, v28);

  sub_1001A5228(inited);
  v18 = String._bridgeToObjectiveC()();

  v19 = Array._bridgeToObjectiveC()().super.isa;

  v20 = [v4 groupWithTitle:v18 footerText:0 settings:v19];

  if (v20)
  {
    swift_setDeallocating();
    swift_arrayDestroy();
    v21 = *(v0 + 40);
    *(v0 + 40) = v20;

    v22 = [objc_opt_self() defaultCenter];
    v23 = swift_allocObject();
    swift_weakInit();
    aBlock[4] = sub_10023A58C;
    aBlock[5] = v23;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1003250A8;
    aBlock[3] = &unk_1004E6B48;
    v24 = _Block_copy(aBlock);

    v25 = [v22 addObserverForName:UIContentSizeCategoryDidChangeNotification object:0 queue:0 usingBlock:v24];
    _Block_release(v24);

    swift_unknownObjectRelease();

    return;
  }

LABEL_7:
  __break(1u);
}

void sub_10023A2E0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = [objc_allocWithZone(MTInformativeTableViewCell) init];
    v5 = *(v3 + 88);
    *(v3 + 88) = v4;
  }
}

double sub_10023A358()
{
  v1 = [*(v0 + 88) messageLabel];
  v2 = [objc_opt_self() mainBundle];
  v11._object = 0xE000000000000000;
  v3._object = 0x800000010046A8A0;
  v3._countAndFlagsBits = 0xD00000000000002DLL;
  v4._countAndFlagsBits = 0;
  v4._object = 0xE000000000000000;
  v11._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v3, 0, v2, v4, v11);

  v5 = String._bridgeToObjectiveC()();

  [v1 setText:v5];

  [*(v0 + 88) fittingSize];
  if (v7 != 0.0 || v6 != 0.0)
  {
    return v6;
  }

  v8 = *(v0 + 32);

  [v8 currentConstant];
  return result;
}

uint64_t sub_10023A4A8()
{

  sub_10023A524((v0 + 6));

  return swift_deallocClassInstance();
}

uint64_t sub_10023A524(uint64_t a1)
{
  v2 = sub_100168088(&qword_100576010, &unk_10040C9D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_10023A62C(uint64_t a1, uint64_t a2, uint64_t *a3, void *a4)
{
  sub_10023D8CC();
  swift_getKeyPath();
  v6 = NSExpression.init<A, B>(forKeyPath:)();
  v7 = [v6 keyPath];

  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;

  *a3 = v8;
  *a4 = v10;
}

id sub_10023A6E4(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (*a3 != -1)
  {
    swift_once();
  }

  v6 = String._bridgeToObjectiveC()();

  return v6;
}

id sub_10023A7BC(uint64_t a1, uint64_t a2, void *a3)
{

  v3 = String._bridgeToObjectiveC()();

  return v3;
}

uint64_t sub_10023A824(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = (a1 + *a4);
  *v7 = v6;
  v7[1] = v8;
}

id sub_10023A874(uint64_t a1)
{
  v1[OBJC_IVAR___MTSharedPlaybackController_isPlaying] = 0;
  *&v1[OBJC_IVAR___MTSharedPlaybackController_preferredJumpForwardInterval] = 0x403E000000000000;
  *&v1[OBJC_IVAR___MTSharedPlaybackController_preferredJumpBackwardInterval] = 0x402E000000000000;
  v2 = &v1[OBJC_IVAR___MTSharedPlaybackController_localizedPreferredJumpForwardString];
  *v2 = 0;
  v2[1] = 0xE000000000000000;
  v3 = &v1[OBJC_IVAR___MTSharedPlaybackController_localizedPreferredJumpBackwardString];
  *v3 = 0;
  v3[1] = 0xE000000000000000;
  *&v1[OBJC_IVAR___MTSharedPlaybackController_subscriptions] = _swiftEmptyArrayStorage;
  *&v1[OBJC_IVAR___MTSharedPlaybackController_playbackController] = a1;
  v6.receiver = v1;
  v6.super_class = type metadata accessor for SharedPlaybackController();

  v4 = objc_msgSendSuper2(&v6, "init");
  sub_100009638();

  return v4;
}

uint64_t sub_10023A950(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  *(v4 + 24) = a4;
  return _swift_task_switch(sub_10023A970, 0, 0);
}

uint64_t sub_10023A970()
{
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v1[1] = sub_10023AA10;

  return PlaybackController.play()();
}

uint64_t sub_10023AA10()
{
  *(*v1 + 40) = v0;

  if (v0)
  {

    v2 = sub_10023D948;
  }

  else
  {
    v2 = sub_10023AB2C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10023AB88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  *(v4 + 24) = a4;
  return _swift_task_switch(sub_10023ABA8, 0, 0);
}

uint64_t sub_10023ABA8()
{
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v1[1] = sub_10023AC48;

  return PlaybackController.pause()();
}

uint64_t sub_10023AC48()
{
  *(*v1 + 40) = v0;

  if (v0)
  {
  }

  return _swift_task_switch(sub_10023D948, 0, 0);
}

uint64_t sub_10023AD98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 56) = a1;
  *(v4 + 64) = a4;
  return _swift_task_switch(sub_10023ADB8, 0, 0);
}

uint64_t sub_10023ADB8()
{
  v1 = type metadata accessor for PlaybackController.TransportCommand();
  v0[5] = v1;
  v0[6] = &protocol witness table for PlaybackController.TransportCommand;
  v2 = sub_10000E680(v0 + 2);
  (*(*(v1 - 8) + 104))(v2, enum case for PlaybackController.TransportCommand.jumpForward(_:), v1);
  v5 = &async function pointer to dispatch thunk of PlaybackController.performCommand(_:options:) + async function pointer to dispatch thunk of PlaybackController.performCommand(_:options:);
  v3 = swift_task_alloc();
  v0[9] = v3;
  *v3 = v0;
  v3[1] = sub_10023AED0;

  return (v5)(v0 + 2, 0);
}

uint64_t sub_10023AED0(uint64_t a1)
{
  v4 = *v2;

  if (v1)
  {

    v5 = sub_10023B024;
  }

  else
  {
    *(v4 + 80) = a1;
    sub_100004590((v4 + 16));
    v5 = sub_10023B004;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_10023B024()
{
  sub_100004590((v0 + 16));
  **(v0 + 56) = 0;
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10023B0C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 56) = a1;
  *(v4 + 64) = a4;
  return _swift_task_switch(sub_10023B0E0, 0, 0);
}

uint64_t sub_10023B0E0()
{
  v1 = type metadata accessor for PlaybackController.TransportCommand();
  v0[5] = v1;
  v0[6] = &protocol witness table for PlaybackController.TransportCommand;
  v2 = sub_10000E680(v0 + 2);
  (*(*(v1 - 8) + 104))(v2, enum case for PlaybackController.TransportCommand.jumpBackward(_:), v1);
  v5 = &async function pointer to dispatch thunk of PlaybackController.performCommand(_:options:) + async function pointer to dispatch thunk of PlaybackController.performCommand(_:options:);
  v3 = swift_task_alloc();
  v0[9] = v3;
  *v3 = v0;
  v3[1] = sub_10023B1F8;

  return (v5)(v0 + 2, 0);
}

uint64_t sub_10023B1F8(uint64_t a1)
{
  v4 = *v2;

  if (v1)
  {

    v5 = sub_10023D940;
  }

  else
  {
    *(v4 + 80) = a1;
    sub_100004590((v4 + 16));
    v5 = sub_10023D93C;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_10023B360(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, void, char *, uint64_t, void *))
{
  sub_100168088(&qword_100578010, &qword_100401F60);
  __chkstk_darwin();
  v9 = &v14 - v8;
  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = a1;
  v12 = a1;
  a5(0, 0, v9, a4, v11);
}

uint64_t sub_10023B46C(void *a1, int a2, uint64_t a3, uint64_t a4)
{
  v34 = a2;
  sub_100168088(&qword_100578010, &qword_100401F60);
  __chkstk_darwin();
  v35 = &v31 - v8;
  v33 = type metadata accessor for Logger();
  v9 = *(v33 - 8);
  __chkstk_darwin();
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.modernPlayback.getter();
  v12 = v4;
  v13 = a1;
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v31 = a3;
    v17 = v16;
    v36 = swift_slowAlloc();
    *v17 = 136315394;
    swift_getObjectType();
    v18 = _typeName(_:qualified:)();
    v20 = sub_1000153E0(v18, v19, &v36);
    v32 = a4;
    v21 = v20;

    *(v17 + 4) = v21;
    *(v17 + 12) = 2082;
    swift_getObjectType();
    v22 = _typeName(_:qualified:)();
    v24 = sub_1000153E0(v22, v23, &v36);

    *(v17 + 14) = v24;
    a4 = v32;
    _os_log_impl(&_mh_execute_header, v14, v15, "[%s] Resolving %{public}s for playback.", v17, 0x16u);
    swift_arrayDestroy();

    a3 = v31;
  }

  (*(v9 + 8))(v11, v33);
  v25 = type metadata accessor for TaskPriority();
  v26 = v35;
  (*(*(v25 - 8) + 56))(v35, 1, 1, v25);
  v27 = swift_allocObject();
  *(v27 + 16) = 0;
  *(v27 + 24) = 0;
  *(v27 + 32) = v13;
  *(v27 + 40) = a3;
  *(v27 + 48) = a4;
  *(v27 + 56) = v12;
  *(v27 + 64) = v34 & 1;
  v28 = v12;
  v29 = v13;
  sub_100013CB4(a3, a4);
  sub_100217A04(0, 0, v26, &unk_1004063D8, v27);
}

uint64_t sub_10023B798(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  *(v8 + 344) = a8;
  *(v8 + 112) = a6;
  *(v8 + 120) = a7;
  *(v8 + 96) = a4;
  *(v8 + 104) = a5;
  v9 = type metadata accessor for PlaybackController.QueueCommand();
  *(v8 + 128) = v9;
  *(v8 + 136) = *(v9 - 8);
  *(v8 + 144) = swift_task_alloc();
  v10 = type metadata accessor for Logger();
  *(v8 + 152) = v10;
  *(v8 + 160) = *(v10 - 8);
  *(v8 + 168) = swift_task_alloc();
  *(v8 + 176) = swift_task_alloc();
  *(v8 + 184) = swift_task_alloc();
  sub_100168088(&qword_1005791C8, &unk_1004063E0);
  v11 = swift_task_alloc();
  *(v8 + 192) = v11;
  v12 = type metadata accessor for PlaybackIntent();
  *(v8 + 200) = v12;
  *(v8 + 208) = *(v12 - 8);
  *(v8 + 216) = swift_task_alloc();
  *(v8 + 224) = swift_task_alloc();
  *(v8 + 232) = swift_task_alloc();
  v13 = swift_task_alloc();
  *(v8 + 240) = v13;
  *v13 = v8;
  v13[1] = sub_10023B9C4;

  return sub_1002FB2BC(v11);
}

uint64_t sub_10023B9C4()
{

  return _swift_task_switch(sub_10023BAC0, 0, 0);
}

uint64_t sub_10023BAC0()
{
  v69 = v0;
  v1 = *(v0 + 200);
  v2 = *(v0 + 208);
  v3 = *(v0 + 192);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_100009104(v3, &qword_1005791C8, &unk_1004063E0);
    type metadata accessor for MainActor();
    *(v0 + 248) = static MainActor.shared.getter();
    v5 = dispatch thunk of Actor.unownedExecutor.getter();

    return _swift_task_switch(sub_10023C15C, v5, v4);
  }

  v6 = *(v0 + 96);
  (*(v2 + 32))(*(v0 + 232), v3, v1);
  static Logger.modernPlayback.getter();
  v7 = v6;
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  if (!os_log_type_enabled(v8, v9))
  {
    v22 = *(v0 + 184);
    v23 = *(v0 + 152);
    v24 = *(v0 + 160);
    v25 = *(v0 + 96);

    v26 = *(v24 + 8);
    v26(v22, v23);
    goto LABEL_13;
  }

  v10 = 0x6E776F6E6B6E555BLL;
  v11 = *(v0 + 96);
  v12 = swift_slowAlloc();
  v13 = swift_slowAlloc();
  v14 = swift_slowAlloc();
  v68 = v14;
  *v12 = 141559043;
  *(v12 + 4) = 1752392040;
  *(v12 + 12) = 2113;
  v15 = [v11 currentItem];
  *(v12 + 14) = v15;
  v64 = v13;
  *v13 = v15;
  *(v12 + 22) = 2160;
  *(v12 + 24) = 1752392040;
  *(v12 + 32) = 2081;
  v16 = [v11 currentItem];
  if (!v16)
  {
    goto LABEL_11;
  }

  v17 = v14;
  v18 = v16;
  v19 = [v16 episodeUuid];

  if (!v19)
  {
    v14 = v17;
LABEL_11:
    v21 = 0xE90000000000005DLL;
    goto LABEL_12;
  }

  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v21 = v20;

  v14 = v17;
LABEL_12:
  v27 = *(v0 + 160);
  v61 = *(v0 + 152);
  v62 = *(v0 + 184);
  v28 = *(v0 + 96);
  v29 = sub_1000153E0(v10, v21, &v68);

  *(v12 + 34) = v29;
  *(v12 + 42) = 2048;
  v30 = [v28 count];

  *(v12 + 44) = v30;
  _os_log_impl(&_mh_execute_header, v8, v9, "Resolved manifest starting item: %{private,mask.hash}@ - UUID: %{private,mask.hash}s. Number of items: %ld", v12, 0x34u);
  sub_100009104(v64, &qword_100575B20, &qword_100401F90);

  sub_100004590(v14);

  v26 = *(v27 + 8);
  v26(v62, v61);
LABEL_13:
  *(v0 + 256) = v26;
  v31 = *(v0 + 120);
  static Logger.modernPlayback.getter();
  v32 = v31;
  v33 = Logger.logObject.getter();
  v34 = static os_log_type_t.error.getter();

  v35 = os_log_type_enabled(v33, v34);
  v36 = *(v0 + 176);
  v37 = *(v0 + 152);
  if (v35)
  {
    v63 = *(v0 + 344);
    v65 = *(v0 + 176);
    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v68 = v39;
    *v38 = 136315394;
    swift_getObjectType();
    v40 = _typeName(_:qualified:)();
    v42 = sub_1000153E0(v40, v41, &v68);

    *(v38 + 4) = v42;
    *(v38 + 12) = 1024;
    *(v38 + 14) = v63;
    _os_log_impl(&_mh_execute_header, v33, v34, "[%s] Intent created, requesting playback (waitForEngine: %{BOOL}d)", v38, 0x12u);
    sub_100004590(v39);

    v43 = v65;
  }

  else
  {

    v43 = v36;
  }

  v26(v43, v37);
  v44 = *(v0 + 232);
  v45 = *(v0 + 200);
  v46 = *(v0 + 208);
  v48 = *(v0 + 136);
  v47 = *(v0 + 144);
  v49 = *(v0 + 344);
  v50 = *(v0 + 128);
  v51 = *(v46 + 16);
  *(v0 + 264) = v51;
  *(v0 + 272) = (v46 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v51(v47, v44, v45);
  (*(v48 + 104))(v47, enum case for PlaybackController.QueueCommand.replace(_:), v50);
  v52 = (v48 + 16);
  v53 = *(v0 + 144);
  v54 = *(v0 + 128);
  if (v49 == 1)
  {
    *(v0 + 80) = v54;
    *(v0 + 88) = &protocol witness table for PlaybackController.QueueCommand;
    v55 = sub_10000E680((v0 + 56));
    (*v52)(v55, v53, v54);
    v66 = &async function pointer to dispatch thunk of PlaybackController.performWhenAvailable(_:options:timeout:) + async function pointer to dispatch thunk of PlaybackController.performWhenAvailable(_:options:timeout:);
    v56 = swift_task_alloc();
    *(v0 + 280) = v56;
    *v56 = v0;
    v56[1] = sub_10023C23C;
    v57.n128_u64[0] = 5.0;

    return (v66)(v0 + 56, 0, v57);
  }

  else
  {
    *(v0 + 40) = v54;
    *(v0 + 48) = &protocol witness table for PlaybackController.QueueCommand;
    v58 = sub_10000E680((v0 + 16));
    (*v52)(v58, v53, v54);
    v67 = &async function pointer to dispatch thunk of PlaybackController.performCommand(_:options:) + async function pointer to dispatch thunk of PlaybackController.performCommand(_:options:);
    v59 = swift_task_alloc();
    *(v0 + 296) = v59;
    *v59 = v0;
    v59[1] = sub_10023C400;

    return (v67)(v0 + 16, 0);
  }
}