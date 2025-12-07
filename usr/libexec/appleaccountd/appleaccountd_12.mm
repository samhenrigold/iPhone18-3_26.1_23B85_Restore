uint64_t sub_10016BA4C(void *a1, void *a2, void (*a3)(uint64_t, char *, uint64_t, void *), uint64_t a4, void *a5, uint64_t a6, uint64_t a7, void *a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void (*a17)(uint64_t, char *, uint64_t, void *))
{
  v203 = a8;
  v201 = a5;
  v198 = a3;
  v199 = a2;
  v206 = a13;
  v195 = type metadata accessor for SHA256Digest();
  v194 = *(v195 - 8);
  __chkstk_darwin(v195);
  v191 = &v185 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v193 = type metadata accessor for SHA256();
  v192 = *(v193 - 8);
  v22 = __chkstk_darwin(v193);
  v190 = &v185 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v196 = &v185 - v24;
  v25 = type metadata accessor for BeneficiaryInfoRecord(0);
  __chkstk_darwin(v25 - 8);
  v27 = &v185 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = swift_allocObject();
  v29 = v203;
  v28[2] = a7;
  v28[3] = v29;
  v197 = a9;
  v28[4] = a9;
  v28[5] = a10;
  v30 = swift_allocObject();
  v31 = v201;
  v30[2] = a4;
  v30[3] = v31;
  v32 = v206;
  v30[4] = a6;
  v30[5] = v32;
  v200 = v30;
  v30[6] = v28;
  sub_100016034(0, &qword_1003E0C40, AABeneficiaryInfo_ptr);
  v205 = a1;
  sub_100168334(a1, v27);
  v207 = a7;
  swift_retain_n();
  v33 = v29;
  v203 = a10;
  swift_retain_n();
  v34 = v33;
  v206 = a4;
  swift_errorRetain();
  v35 = v31;
  v204 = a6;

  v201 = v28;

  v36 = sub_1001E36E8(v27);
  if (qword_1003D7F48 != -1)
  {
    swift_once();
  }

  v37 = type metadata accessor for Logger();
  v38 = sub_100008D04(v37, qword_1003FAAB8);
  v39 = v36;
  v40 = Logger.logObject.getter();
  v41 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v40, v41))
  {
    v42 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    *v42 = 138412290;
    *(v42 + 4) = v39;
    *v43 = v39;
    v44 = v39;
    _os_log_impl(&_mh_execute_header, v40, v41, "BeneficiaryInfo: %@", v42, 0xCu);
    sub_100008D3C(v43, &unk_1003D9140, &qword_10033E640);
  }

  v45 = v199;
  v46 = v199[2];
  v47 = v204;
  v202 = v34;
  if (v46 && (v48 = sub_10031AF8C(v205), (v49 & 1) != 0))
  {
    v50 = v45[7] + 32 * v48;
    v51 = *(v50 + 24);
    v199 = *(v50 + 16);

    v205 = v39;
    v52 = [v39 accessKey];
    v198 = a17;
    if (v52 && (v53 = v52, v54 = [v52 claimTokenString], v53, v54))
    {
      v187 = v51;
      v188 = v35;
      v189 = v37;
      v55 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v57 = v56;

      v58 = sub_100170228(v55, v57);
      v60 = v59;
      SHA256.init()();
      sub_100168520(&unk_1003DA8A0, &type metadata accessor for SHA256, &protocol conformance descriptor for SHA256);
      v61 = v190;
      v62 = v193;
      dispatch thunk of HashFunction.init()();
      sub_100015D6C(v58, v60);
      v186 = v58;
      sub_10018F16C(v58, v60, v61);
      sub_100012324(v58, v60);
      v63 = v191;
      dispatch thunk of HashFunction.finalize()();
      v192 = *(v192 + 8);
      (v192)(v61, v62);
      v64 = v195;
      v213 = v195;
      v214 = sub_100168520(&qword_1003D8D70, &type metadata accessor for SHA256Digest, &protocol conformance descriptor for SHA256Digest);
      v65 = sub_10000DBEC(&v212);
      v66 = v194;
      (*(v194 + 16))(v65, v63, v64);
      sub_1000080F8(&v212, v213);
      dispatch thunk of ContiguousBytes.withUnsafeBytes<A>(_:)();
      (*(v66 + 8))(v63, v64);
      v67 = v220;
      sub_10000839C(&v212);
      sub_100012324(v186, v60);
      (v192)(v196, v62);
      *&v212 = sub_100166018(v67, *(&v67 + 1));
      sub_100005814(&qword_1003DA1E0, &qword_100345E50);
      sub_10005A668();
      v68 = BidirectionalCollection<>.joined(separator:)();
      v70 = v69;
      sub_100012324(v67, *(&v67 + 1));

      v196 = v38;
      v71 = Logger.logObject.getter();
      v72 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v71, v72))
      {
        v73 = swift_slowAlloc();
        v74 = swift_slowAlloc();
        *&v212 = v74;
        *v73 = 136315138;
        *(v73 + 4) = sub_10021145C(v68, v70, &v212);
        _os_log_impl(&_mh_execute_header, v71, v72, "localClaimCodeHash: %s", v73, 0xCu);
        sub_10000839C(v74);
      }

      v75 = v187;

      v76 = Logger.logObject.getter();
      v77 = static os_log_type_t.debug.getter();

      v78 = os_log_type_enabled(v76, v77);
      v79 = v207;
      v80 = v204;
      if (v78)
      {
        v81 = v207;
        v82 = swift_slowAlloc();
        v83 = swift_slowAlloc();
        *&v212 = v83;
        *v82 = 136315138;
        v84 = v199;
        *(v82 + 4) = sub_10021145C(v199, v75, &v212);
        _os_log_impl(&_mh_execute_header, v76, v77, "idMS ClaimCode Hash: %s", v82, 0xCu);
        sub_10000839C(v83);

        v79 = v81;

        v85 = v203;
        v86 = v202;
        v87 = v189;
      }

      else
      {

        v85 = v203;
        v86 = v202;
        v87 = v189;
        v84 = v199;
      }

      *&v212 = v68;
      *(&v212 + 1) = v70;
      *&v220 = v84;
      *(&v220 + 1) = v75;
      sub_1000709A0();
      v129 = StringProtocol.caseInsensitiveCompare<A>(_:)();

      v130 = Logger.logObject.getter();
      v131 = static os_log_type_t.debug.getter();
      v132 = os_log_type_enabled(v130, v131);
      if (v129)
      {
        v133 = v80;
        if (v132)
        {
          v134 = swift_slowAlloc();
          *v134 = 0;
          _os_log_impl(&_mh_execute_header, v130, v131, "🌧️ Claim code does not match.", v134, 2u);
        }

        type metadata accessor for InheritanceError(0);
        *&v212 = 2100;
        sub_100212324(_swiftEmptyArrayStorage);
        sub_100168520(&qword_1003D8040, type metadata accessor for InheritanceError, &unk_10033C05C);
        _BridgedStoredNSError.init(_:userInfo:)();
        v135 = v221;
        v136 = _convertErrorToNSError(_:)();

        v137 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v139 = v138;
        v213 = sub_100016034(0, &qword_1003DB5F0, NSError_ptr);
        *&v212 = v136;
        sub_100070AF0(&v212, &v220);
        v140 = v136;

        v196 = v86;

        v141 = v140;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v219 = &_swiftEmptyDictionarySingleton;
        sub_1002CF8B4(&v220, v137, v139, isUniquelyReferenced_nonNull_native);

        v199 = v141;
        if (v206)
        {
          swift_getErrorValue();
          v143 = v210;
          v144 = v211;
          swift_errorRetain();
          sub_100256810(v143, v144);
          swift_getErrorValue();
          v145 = sub_100256874(v208, v209);
          v146 = objc_allocWithZone(NSError);
          v147 = String._bridgeToObjectiveC()();

          isa = Dictionary._bridgeToObjectiveC()().super.isa;

          v149 = v146;
          v150 = v188;
          v151 = [v149 initWithDomain:v147 code:v145 userInfo:isa];

          v152 = _convertErrorToNSError(_:)();
          [v150 populateUnderlyingErrorsStartingWithRootError:v152];
        }

        else
        {

          v156 = v141;
          v157 = _convertErrorToNSError(_:)();

          v150 = v188;
          [v188 populateUnderlyingErrorsStartingWithRootError:v157];
        }

        v158 = v205;
        if (qword_1003D7F70 != -1)
        {
          swift_once();
        }

        sub_100008D04(v189, qword_1003FAB30);
        v159 = v150;

        v160 = Logger.logObject.getter();
        v161 = static os_log_type_t.debug.getter();

        if (os_log_type_enabled(v160, v161))
        {
          v162 = swift_slowAlloc();
          v205 = swift_slowAlloc();
          *&v212 = v205;
          *v162 = 136315394;
          *(v162 + 4) = sub_10021145C(*(v133 + OBJC_IVAR____TtC13appleaccountd31InheritancePreflightHealthCheck_checkName), *(v133 + OBJC_IVAR____TtC13appleaccountd31InheritancePreflightHealthCheck_checkName + 8), &v212);
          *(v162 + 12) = 2080;
          v163 = v158;
          v164 = [v159 debugDescription];
          v165 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v167 = v166;

          v168 = v165;
          v133 = v204;
          v169 = sub_10021145C(v168, v167, &v212);
          v170 = v198;
          v171 = v207;

          *(v162 + 14) = v169;
          v158 = v163;
          v85 = v203;
          _os_log_impl(&_mh_execute_header, v160, v161, "%s - Reporting Preflight Event %s", v162, 0x16u);
          swift_arrayDestroy();

          v86 = v202;
        }

        else
        {

          v86 = v202;
          v171 = v207;
          v170 = v198;
        }

        [*(v133 + OBJC_IVAR____TtC13appleaccountd31InheritancePreflightHealthCheck_analyticsReporter) sendEvent:v159];
        v172 = v196;
        v170(v171, v196, v197, v85);
      }

      else
      {
        if (v132)
        {
          v153 = swift_slowAlloc();
          *v153 = 0;
          _os_log_impl(&_mh_execute_header, v130, v131, "🌈 Claim code matches!", v153, 2u);
        }

        v154 = v86;

        if (v206)
        {
          v155 = _convertErrorToNSError(_:)();
        }

        else
        {
          v155 = 0;
        }

        v173 = v188;
        [v188 populateUnderlyingErrorsStartingWithRootError:v155];

        if (qword_1003D7F70 != -1)
        {
          swift_once();
        }

        sub_100008D04(v87, qword_1003FAB30);
        v174 = v173;

        v175 = Logger.logObject.getter();
        v176 = static os_log_type_t.debug.getter();

        if (os_log_type_enabled(v175, v176))
        {
          v177 = swift_slowAlloc();
          *&v212 = swift_slowAlloc();
          *v177 = 136315394;
          *(v177 + 4) = sub_10021145C(*(v80 + OBJC_IVAR____TtC13appleaccountd31InheritancePreflightHealthCheck_checkName), *(v80 + OBJC_IVAR____TtC13appleaccountd31InheritancePreflightHealthCheck_checkName + 8), &v212);
          *(v177 + 12) = 2080;
          v178 = [v174 debugDescription];
          v179 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v181 = v180;

          v85 = v203;
          v182 = sub_10021145C(v179, v181, &v212);
          v80 = v204;

          *(v177 + 14) = v182;
          _os_log_impl(&_mh_execute_header, v175, v176, "%s - Reporting Preflight Event %s", v177, 0x16u);
          swift_arrayDestroy();
          v86 = v202;

          v79 = v207;
        }

        v183 = v198;
        [*(v80 + OBJC_IVAR____TtC13appleaccountd31InheritancePreflightHealthCheck_analyticsReporter) sendEvent:v174];
        v183(v79, v154, v197, v85);
      }
    }

    else
    {

      v93 = Logger.logObject.getter();
      v94 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v93, v94))
      {
        v95 = swift_slowAlloc();
        *v95 = 0;
        _os_log_impl(&_mh_execute_header, v93, v94, "Claim code hash was not found in local CK record.", v95, 2u);
      }

      type metadata accessor for InheritanceError(0);
      *&v212 = 2102;
      sub_100212324(_swiftEmptyArrayStorage);
      sub_100168520(&qword_1003D8040, type metadata accessor for InheritanceError, &unk_10033C05C);
      _BridgedStoredNSError.init(_:userInfo:)();
      v96 = v221;
      v97 = _convertErrorToNSError(_:)();

      v98 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v100 = v99;
      v213 = sub_100016034(0, &qword_1003DB5F0, NSError_ptr);
      *&v212 = v97;
      sub_100070AF0(&v212, &v220);
      v101 = v97;

      v196 = v34;
      v102 = v203;

      v199 = v101;
      v103 = swift_isUniquelyReferenced_nonNull_native();
      v219 = &_swiftEmptyDictionarySingleton;
      sub_1002CF8B4(&v220, v98, v100, v103);

      if (v206)
      {
        swift_getErrorValue();
        v104 = v217;
        v105 = v218;
        swift_errorRetain();
        sub_100256810(v104, v105);
        swift_getErrorValue();
        v106 = sub_100256874(v215, v216);
        v107 = v35;
        v108 = objc_allocWithZone(NSError);
        v109 = String._bridgeToObjectiveC()();

        v110 = Dictionary._bridgeToObjectiveC()().super.isa;

        v111 = v108;
        v35 = v107;
        v112 = [v111 initWithDomain:v109 code:v106 userInfo:v110];

        v113 = _convertErrorToNSError(_:)();
        [v107 populateUnderlyingErrorsStartingWithRootError:v113];
      }

      else
      {

        v114 = v199;
        v115 = _convertErrorToNSError(_:)();

        [v35 populateUnderlyingErrorsStartingWithRootError:v115];
      }

      if (qword_1003D7F70 != -1)
      {
        swift_once();
      }

      sub_100008D04(v37, qword_1003FAB30);
      v116 = v35;

      v117 = Logger.logObject.getter();
      v118 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v117, v118))
      {
        v119 = swift_slowAlloc();
        *&v212 = swift_slowAlloc();
        *v119 = 136315394;
        *(v119 + 4) = sub_10021145C(*(v47 + OBJC_IVAR____TtC13appleaccountd31InheritancePreflightHealthCheck_checkName), *(v47 + OBJC_IVAR____TtC13appleaccountd31InheritancePreflightHealthCheck_checkName + 8), &v212);
        *(v119 + 12) = 2080;
        v120 = [v116 debugDescription];
        v121 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v123 = v122;

        v124 = v121;
        v47 = v204;
        v125 = sub_10021145C(v124, v123, &v212);
        v126 = v198;
        v127 = v207;

        *(v119 + 14) = v125;
        v102 = v203;
        _os_log_impl(&_mh_execute_header, v117, v118, "%s - Reporting Preflight Event %s", v119, 0x16u);
        swift_arrayDestroy();

        v86 = v202;
      }

      else
      {

        v86 = v202;
        v127 = v207;
        v126 = v198;
      }

      [*(v47 + OBJC_IVAR____TtC13appleaccountd31InheritancePreflightHealthCheck_analyticsReporter) sendEvent:v116];
      v128 = v196;
      v126(v127, v196, v197, v102);
    }
  }

  else
  {
    v88 = Logger.logObject.getter();
    v89 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v88, v89))
    {
      v90 = swift_slowAlloc();
      *v90 = 0;
      _os_log_impl(&_mh_execute_header, v88, v89, "Claim code hash was not found in idMS response.", v90, 2u);
    }

    v91 = swift_allocObject();
    v92 = v200;
    *(v91 + 16) = a15;
    *(v91 + 24) = v92;

    sub_1001674A8(v205, v198, a16, v91);

    v86 = v202;
  }
}

uint64_t sub_10016D368()
{

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_10016D3A0()
{

  return _swift_deallocObject(v0, 56);
}

uint64_t sub_10016D408()
{

  return _swift_deallocObject(v0, 48);
}

uint64_t sub_10016D46C()
{

  return _swift_deallocObject(v0, 56);
}

uint64_t sub_10016D4EC()
{

  return _swift_deallocObject(v0, 56);
}

uint64_t sub_10016D580()
{
  type metadata accessor for BenefactorAccessKeyHealthCheck(0);
  sub_100005814(&qword_1003E0D28, &unk_100344410);
  result = String.init<A>(describing:)();
  qword_1003E0C48 = result;
  unk_1003E0C50 = v1;
  return result;
}

uint64_t sub_10016D5D4(uint64_t a1, char a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t a5)
{
  if (a2)
  {
    if (qword_1003D7F48 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_100008D04(v8, qword_1003FAAB8);
    swift_errorRetain();
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();
    sub_1000A6B60(a1, 1);
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v22[0] = swift_slowAlloc();
      *v11 = 136315394;
      if (qword_1003D7E10 != -1)
      {
        swift_once();
      }

      *(v11 + 4) = sub_10021145C(qword_1003E0C48, unk_1003E0C50, v22);
      *(v11 + 12) = 2080;
      v22[3] = a1;
      swift_errorRetain();
      sub_100005814(&unk_1003DBB60, &unk_10033E740);
      v12 = String.init<A>(describing:)();
      v14 = sub_10021145C(v12, v13, v22);

      *(v11 + 14) = v14;
      _os_log_impl(&_mh_execute_header, v9, v10, "%s - failed to fetch manatee status: %s", v11, 0x16u);
      swift_arrayDestroy();
    }

    v15 = a1;
    return a3(v15);
  }

  if ((a1 & 1) == 0)
  {
    if (qword_1003D7F48 != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    sub_100008D04(v17, qword_1003FAAB8);
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v22[0] = v21;
      *v20 = 136315138;
      if (qword_1003D7E10 != -1)
      {
        swift_once();
      }

      *(v20 + 4) = sub_10021145C(qword_1003E0C48, unk_1003E0C50, v22);
      _os_log_impl(&_mh_execute_header, v18, v19, "%s - manatee is not enabled, no benefactor access key checks needed.", v20, 0xCu);
      sub_10000839C(v21);
    }

    v15 = 0;
    return a3(v15);
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_10016D958(a3, a4);
  }

  return result;
}

void sub_10016D958(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  v7 = sub_100005814(&qword_1003E0D30, qword_100344420);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = aBlock - v9;
  (*(v8 + 16))(aBlock - v9, v3 + OBJC_IVAR____TtC13appleaccountd30BenefactorAccessKeyHealthCheck__inheritanceManager, v7);
  Dependency.wrappedValue.getter();
  (*(v8 + 8))(v10, v7);
  v11 = aBlock[0];
  v12 = swift_allocObject();
  v12[2] = a1;
  v12[3] = a2;
  v12[4] = v3;
  v12[5] = v6;
  aBlock[4] = sub_10016FD84;
  aBlock[5] = v12;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10016F5FC;
  aBlock[3] = &unk_1003ABA38;
  v13 = _Block_copy(aBlock);

  [v11 fetchBenefactorsWithCompletion:v13];
  _Block_release(v13);
}

uint64_t sub_10016DB54()
{
  v1 = OBJC_IVAR____TtC13appleaccountd30BenefactorAccessKeyHealthCheck__inheritanceManager;
  v2 = sub_100005814(&qword_1003E0D30, qword_100344420);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC13appleaccountd30BenefactorAccessKeyHealthCheck__storageController;
  v4 = sub_100005814(&qword_1003E1970, &qword_1003446B0);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for BenefactorAccessKeyHealthCheck(uint64_t a1)
{
  result = qword_1003E0C90;
  if (!qword_1003E0C90)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10016DC9C(uint64_t a1)
{
  sub_10016DD68(319);
  if (v1 <= 0x3F)
  {
    sub_10016DDC0(319);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_10016DD68(uint64_t a1)
{
  if (!qword_1003E0CA0)
  {
    type metadata accessor for InheritanceRequestManager(255);
    v1 = type metadata accessor for Dependency();
    if (!v2)
    {
      atomic_store(v1, &qword_1003E0CA0);
    }
  }
}

void sub_10016DDC0(uint64_t a1)
{
  if (!qword_1003E1160)
  {
    sub_100008CBC(&unk_1003E01A0, &qword_1003443F0);
    v1 = type metadata accessor for Dependency();
    if (!v2)
    {
      atomic_store(v1, &qword_1003E1160);
    }
  }
}

uint64_t sub_10016DE50(unint64_t a1, uint64_t a2, void (*a3)(uint64_t), NSObject *a4, uint64_t a5, NSObject *a6)
{
  v60 = a6;
  v61 = a5;
  v10 = type metadata accessor for DispatchWorkItemFlags();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for DispatchQoS();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v50 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for DispatchQoS.QoSClass();
  v19 = __chkstk_darwin(v18);
  v22 = &v50 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    swift_errorRetain();
    a3(a2);
  }

  else
  {
    v55 = v15;
    v56 = v13;
    v24 = v60;
    v59 = v10;
    v50 = v22;
    v51 = v20;
    v52 = v19;
    v62 = a1;
    v54 = v17;
    if (qword_1003D7F48 != -1)
    {
      goto LABEL_29;
    }

    while (1)
    {
      v53 = a4;
      v25 = type metadata accessor for Logger();
      sub_100008D04(v25, qword_1003FAAB8);
      v26 = v62;

      v27 = Logger.logObject.getter();
      v28 = static os_log_type_t.info.getter();
      v29 = os_log_type_enabled(v27, v28);
      v57 = v14;
      v58 = v11;
      if (v29)
      {
        v30 = swift_slowAlloc();
        v31 = swift_slowAlloc();
        aBlock[0] = v31;
        *v30 = 136315394;
        if (qword_1003D7E10 != -1)
        {
          swift_once();
        }

        *(v30 + 4) = sub_10021145C(qword_1003E0C48, unk_1003E0C50, aBlock);
        *(v30 + 12) = 2048;
        if (v62)
        {
          a4 = v24;
          v32 = v62 >> 62 ? _CocoaArrayWrapper.endIndex.getter() : *((v62 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        else
        {
          a4 = v24;
          v32 = 0;
        }

        *(v30 + 14) = v32;
        v11 = v62;

        _os_log_impl(&_mh_execute_header, v27, v28, "%s - performing access key health check on %ld benefactors", v30, 0x16u);
        sub_10000839C(v31);
      }

      else
      {
        a4 = v24;

        v11 = v26;
      }

      v60 = dispatch_group_create();
      v33 = swift_allocObject();
      *(v33 + 16) = 0;
      if (!v11)
      {
        break;
      }

      v24 = (v11 & 0xFFFFFFFFFFFFFF8);
      if (v11 >> 62)
      {
        v34 = _CocoaArrayWrapper.endIndex.getter();
        if (!v34)
        {
          break;
        }
      }

      else
      {
        v34 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v34)
        {
          break;
        }
      }

      v35 = 0;
      v14 = v11 & 0xC000000000000001;
      v36 = a3;
      while (1)
      {
        if (v14)
        {
          v37 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v35 >= v24[2].isa)
          {
            goto LABEL_28;
          }

          v37 = *(v11 + 8 * v35 + 32);
        }

        v11 = v37;
        a3 = (v35 + 1);
        if (__OFADD__(v35, 1))
        {
          break;
        }

        aBlock[0] = v37;
        sub_10016E508(aBlock, v60, v61, v33, a4);

        ++v35;
        v38 = a3 == v34;
        a3 = v36;
        v11 = v62;
        if (v38)
        {
          goto LABEL_31;
        }
      }

      __break(1u);
LABEL_28:
      __break(1u);
LABEL_29:
      swift_once();
    }

LABEL_31:
    sub_100016034(0, &qword_1003DC2B0, OS_dispatch_queue_ptr);
    v40 = v50;
    v39 = v51;
    v41 = v52;
    (*(v51 + 104))(v50, enum case for DispatchQoS.QoSClass.background(_:), v52);
    v42 = static OS_dispatch_queue.global(qos:)();
    (*(v39 + 8))(v40, v41);
    v43 = swift_allocObject();
    v44 = v53;
    v43[2] = a3;
    v43[3] = v44;
    v43[4] = v33;
    aBlock[4] = sub_1000C540C;
    aBlock[5] = v43;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100031EF0;
    aBlock[3] = &unk_1003ABAB0;
    v45 = _Block_copy(aBlock);

    v46 = v54;
    static DispatchQoS.unspecified.getter();
    v63 = _swiftEmptyArrayStorage;
    sub_10016FE34(&qword_1003D9120, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_100005814(&unk_1003DABE0, &unk_10033EC20);
    sub_1000383E4();
    v47 = v56;
    v48 = v59;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v49 = v60;
    OS_dispatch_group.notify(qos:flags:queue:execute:)();

    _Block_release(v45);
    (*(v58 + 8))(v47, v48);
    (*(v55 + 8))(v46, v57);
  }
}

void sub_10016E508(void **a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *a1;
  if ([v13 status] == 2)
  {
    dispatch_group_enter(a2);
    v14 = swift_allocObject();
    v14[2] = v13;
    v14[3] = a4;
    v14[4] = a2;
    v14[5] = a5;
    v15 = v13;

    v16 = a2;
    sub_10016EB80(v15, sub_10016FEC4, v14);
  }

  else
  {
    if (qword_1003D7F48 != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    sub_100008D04(v17, qword_1003FAAB8);
    v18 = v13;
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      *v21 = 136315394;
      if (qword_1003D7E10 != -1)
      {
        swift_once();
      }

      *(v21 + 4) = sub_10021145C(qword_1003E0C48, unk_1003E0C50, &v28);
      *(v21 + 12) = 2080;
      v22 = [v18 beneficiaryID];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      sub_10016FE34(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v23 = dispatch thunk of CustomStringConvertible.description.getter();
      v25 = v24;
      (*(v10 + 8))(v12, v9);
      v26 = sub_10021145C(v23, v25, &v28);

      *(v21 + 14) = v26;
      _os_log_impl(&_mh_execute_header, v19, v20, "%s - BenefactorInfoRecord with beneficiaryID - %s is not accepted. Skipping health check.", v21, 0x16u);
      swift_arrayDestroy();
    }
  }
}

void sub_10016E86C(uint64_t a1, void *a2, uint64_t a3, NSObject *a4)
{
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    swift_errorRetain();
    if (qword_1003D7F48 != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    sub_100008D04(v12, qword_1003FAAB8);
    v13 = a2;
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v14, v15))
    {
      v24 = a4;
      v16 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v25[0] = v23;
      *v16 = 136315394;
      if (qword_1003D7E10 != -1)
      {
        swift_once();
      }

      *(v16 + 4) = sub_10021145C(qword_1003E0C48, unk_1003E0C50, v25);
      *(v16 + 12) = 2080;
      v17 = [v13 beneficiaryID];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      sub_10016FE34(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v18 = dispatch thunk of CustomStringConvertible.description.getter();
      v20 = v19;
      (*(v9 + 8))(v11, v8);
      v21 = sub_10021145C(v18, v20, v25);

      *(v16 + 14) = v21;
      _os_log_impl(&_mh_execute_header, v14, v15, "%s - health check failed for benefactor - %s", v16, 0x16u);
      swift_arrayDestroy();

      a4 = v24;
    }

    else
    {
    }

    swift_beginAccess();
    *(a3 + 16) = a1;
  }

  dispatch_group_leave(a4);
}

void sub_10016EB80(void *a1, uint64_t a2, void *a3)
{
  v91 = a2;
  v92 = a3;
  v90 = *v3;
  v5 = sub_100005814(&qword_1003E0D30, qword_100344420);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v80[-v7];
  v93 = type metadata accessor for UUID();
  v9 = *(v93 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v93);
  __chkstk_darwin(v11);
  v13 = &v80[-v12];
  v14 = [a1 accessKey];
  if (v14)
  {
    v15 = v13;
    v16 = v9;

    if (qword_1003D7F48 != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    sub_100008D04(v17, qword_1003FAAB8);
    v18 = a1;
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *&v94[0] = swift_slowAlloc();
      *v21 = 136315394;
      if (qword_1003D7E10 != -1)
      {
        swift_once();
      }

      *(v21 + 4) = sub_10021145C(qword_1003E0C48, unk_1003E0C50, v94);
      *(v21 + 12) = 2080;
      v22 = [v18 beneficiaryID];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      sub_10016FE34(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v23 = v93;
      v24 = dispatch thunk of CustomStringConvertible.description.getter();
      v25 = v23;
      v27 = v26;
      (*(v16 + 8))(v15, v25);
      v28 = sub_10021145C(v24, v27, v94);

      *(v21 + 14) = v28;
      _os_log_impl(&_mh_execute_header, v19, v20, "%s - BenefactorInfoRecord with beneficiaryID - %s has an access key. No repair needed.", v21, 0x16u);
      swift_arrayDestroy();
    }

    (v91)(0);
  }

  else
  {
    v83 = v3;
    v84 = v8;
    v86 = &v80[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
    v87 = v6;
    v85 = v10;
    v88 = v9;
    v89 = v13;
    if (qword_1003D7F48 != -1)
    {
      swift_once();
    }

    v29 = type metadata accessor for Logger();
    sub_100008D04(v29, qword_1003FAAB8);
    v30 = a1;
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.info.getter();

    v33 = os_log_type_enabled(v31, v32);
    v34 = v87;
    v35 = v5;
    v36 = v83;
    if (v33)
    {
      v81 = v32;
      v82 = v31;
      v37 = swift_slowAlloc();
      *&v94[0] = swift_slowAlloc();
      *v37 = 136315394;
      v38 = v84;
      if (qword_1003D7E10 != -1)
      {
        swift_once();
      }

      *(v37 + 4) = sub_10021145C(qword_1003E0C48, unk_1003E0C50, v94);
      *(v37 + 12) = 2080;
      v39 = [v30 beneficiaryID];
      v40 = v89;
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      sub_10016FE34(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v41 = v93;
      v42 = dispatch thunk of CustomStringConvertible.description.getter();
      v43 = v41;
      v45 = v44;
      (*(v88 + 8))(v40, v43);
      v46 = sub_10021145C(v42, v45, v94);

      *(v37 + 14) = v46;
      v47 = v82;
      _os_log_impl(&_mh_execute_header, v82, v81, "%s - BenefactorInfoRecord with beneficiaryID - %s missing access key. Attempting repair by re-sending acceptance status.", v37, 0x16u);
      swift_arrayDestroy();

      v34 = v87;
    }

    else
    {

      v40 = v89;
      v38 = v84;
    }

    (v34)[2](v38, v36 + OBJC_IVAR____TtC13appleaccountd30BenefactorAccessKeyHealthCheck__inheritanceManager, v35);
    Dependency.wrappedValue.getter();
    (v34[1])(v38, v35);
    v48 = *&v94[0];
    v87 = *&v94[0];
    v49 = [v30 beneficiaryID];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v50 = swift_allocObject();
    v51 = v91;
    v52 = v92;
    v50[2] = v30;
    v50[3] = v51;
    v53 = v90;
    v50[4] = v52;
    v50[5] = v53;
    v54 = v50;
    v84 = v50;
    v91 = v48 + OBJC_IVAR____TtC13appleaccountd25InheritanceRequestManager_invitationResponder;
    v55 = objc_allocWithZone(type metadata accessor for InheritanceInvitationActionAnalyticsEvent(0));
    sub_100005814(&qword_1003E30D0, &unk_100340690);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10033E5C0;
    v57 = v40;
    strcpy((inited + 32), "isFamilyInvite");
    *(inited + 47) = -18;
    v58 = v30;

    *(inited + 48) = Bool._bridgeToObjectiveC()();
    *(inited + 56) = 0xD000000000000013;
    *(inited + 64) = 0x8000000100330290;
    *(inited + 72) = Int._bridgeToObjectiveC()();
    sub_1003093D0(inited);
    swift_setDeallocating();
    sub_100005814(&unk_1003E8C10, &unk_100344990);
    swift_arrayDestroy();
    v59 = AAFTimedAnalyticsEvent.init(eventName:initialData:)();
    v60 = swift_initStackObject();
    *(v60 + 16) = xmmword_10033EB30;
    strcpy((v60 + 32), "didCDPRepair");
    *(v60 + 45) = 0;
    *(v60 + 46) = -5120;
    LOBYTE(v94[0]) = 2;
    String.init<A>(describing:)();
    v61 = String._bridgeToObjectiveC()();

    *(v60 + 48) = v61;
    sub_1003093D0(v60);
    swift_setDeallocating();
    sub_10016FF1C(v60 + 32);
    v90 = v59;
    dispatch thunk of AAFTimedAnalyticsEvent.appendEvent(data:)();

    v62 = swift_allocObject();
    *(v62 + 16) = 1;
    *(v62 + 24) = v59;
    *(v62 + 32) = sub_10016FF10;
    *(v62 + 40) = v54;
    v63 = v91;
    v92 = sub_1000080F8((v91 + 40), *(v91 + 64));
    sub_10016FFDC(v63, v94);
    v64 = v88;
    v65 = v86;
    (*(v88 + 16))(v86, v57, v93);
    v66 = (*(v64 + 80) + 136) & ~*(v64 + 80);
    v67 = (v85 + v66 + 7) & 0xFFFFFFFFFFFFFFF8;
    v68 = swift_allocObject();
    v69 = v94[5];
    *(v68 + 80) = v94[4];
    *(v68 + 96) = v69;
    *(v68 + 112) = v94[6];
    *(v68 + 128) = v95;
    v70 = v94[1];
    *(v68 + 16) = v94[0];
    *(v68 + 32) = v70;
    v71 = v94[3];
    *(v68 + 48) = v94[2];
    *(v68 + 64) = v71;
    v72 = v65;
    v73 = v93;
    (*(v64 + 32))(v68 + v66, v72, v93);
    v74 = v90;
    *(v68 + v67) = v90;
    v75 = v68 + ((v67 + 15) & 0xFFFFFFFFFFFFFFF8);
    *v75 = sub_10016FF10;
    *(v75 + 8) = v84;
    *(v75 + 16) = 1;
    v76 = (v68 + ((v67 + 39) & 0xFFFFFFFFFFFFFFF8));
    *v76 = sub_10016FFCC;
    v76[1] = v62;
    v77 = v74;
    swift_retain_n();
    v78 = v77;

    v79 = v89;
    sub_10021B0E8(v89, sub_100170158, v68);

    (*(v64 + 8))(v79, v73);
  }
}

uint64_t sub_10016F5FC(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v5 = *(a1 + 32);
  if (a2)
  {
    sub_100016034(0, &qword_1003E3170, AABenefactorInfo_ptr);
    v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v6 = a3;
  v5(v4, a3);
}

uint64_t sub_10016F6A0(uint64_t a1, void *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1)
  {
    return a3(a1);
  }

  swift_errorRetain();
  if (qword_1003D7F48 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  sub_100008D04(v12, qword_1003FAAB8);
  swift_errorRetain();
  v13 = a2;
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.error.getter();

  if (!os_log_type_enabled(v14, v15))
  {

    return a3(a1);
  }

  v26 = a4;
  v27 = a3;
  v16 = swift_slowAlloc();
  v29 = swift_slowAlloc();
  *v16 = 136315650;
  if (qword_1003D7E10 != -1)
  {
    swift_once();
  }

  *(v16 + 4) = sub_10021145C(qword_1003E0C48, unk_1003E0C50, &v29);
  *(v16 + 12) = 2080;
  v17 = [v13 beneficiaryID];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  sub_10016FE34(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v18 = dispatch thunk of CustomStringConvertible.description.getter();
  v20 = v19;
  (*(v9 + 8))(v11, v8);
  v21 = sub_10021145C(v18, v20, &v29);

  *(v16 + 14) = v21;
  *(v16 + 22) = 2080;
  v28 = a1;
  swift_errorRetain();
  sub_100005814(&unk_1003DBB60, &unk_10033E740);
  v22 = String.init<A>(describing:)();
  v24 = sub_10021145C(v22, v23, &v29);

  *(v16 + 24) = v24;
  _os_log_impl(&_mh_execute_header, v14, v15, "%s - failed to send acceptance response for %s: %s", v16, 0x20u);
  swift_arrayDestroy();

  return v27(a1);
}

uint64_t sub_10016FA08(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  v7 = sub_100005814(&qword_1003E1970, &qword_1003446B0);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v21[-1] - v9;
  if (qword_1003D7F48 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  sub_100008D04(v11, qword_1003FAAB8);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v20 = v6;
    v14 = a1;
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v21[0] = v16;
    *v15 = 136315138;
    if (qword_1003D7E10 != -1)
    {
      swift_once();
    }

    *(v15 + 4) = sub_10021145C(qword_1003E0C48, unk_1003E0C50, v21);
    _os_log_impl(&_mh_execute_header, v12, v13, "%s - started.", v15, 0xCu);
    sub_10000839C(v16);

    a1 = v14;
    v6 = v20;
  }

  else
  {
  }

  (*(v8 + 16))(v10, v3 + OBJC_IVAR____TtC13appleaccountd30BenefactorAccessKeyHealthCheck__storageController, v7);
  Dependency.wrappedValue.getter();
  (*(v8 + 8))(v10, v7);
  sub_1000080F8(v21, v21[3]);
  v17 = swift_allocObject();
  swift_weakInit();
  v18 = swift_allocObject();
  v18[2] = a1;
  v18[3] = a2;
  v18[4] = v17;
  v18[5] = v6;

  sub_10021E8F0(sub_10016FD74, v18);

  return sub_10000839C(v21);
}

uint64_t sub_10016FD34()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_10016FD90(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10016FDA8()
{

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_10016FDE8(uint64_t a1)
{

  return _swift_deallocObject(v1, a1);
}

uint64_t sub_10016FE34(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10016FE7C()
{

  return _swift_deallocObject(v0, 48);
}

uint64_t sub_10016FED0()
{

  return _swift_deallocObject(v0, 48);
}

uint64_t sub_10016FF1C(uint64_t a1)
{
  v2 = sub_100005814(&unk_1003E8C10, &unk_100344990);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10016FF84()
{
  if (*(v0 + 32))
  {
  }

  return _swift_deallocObject(v0, 48);
}

uint64_t sub_100170038()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 136) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_10000839C(v0 + 2);
  sub_10000839C(v0 + 7);
  sub_10000839C(v0 + 12);
  (*(v2 + 8))(&v0[v3], v1);

  if (*&v0[(v4 + 15) & 0xFFFFFFFFFFFFFFF8])
  {
  }

  return _swift_deallocObject(v0, ((v4 + 39) & 0xFFFFFFFFFFFFFFF8) + 16);
}

uint64_t sub_100170158(uint64_t a1)
{
  v3 = *(type metadata accessor for UUID() - 8);
  v4 = (*(v3 + 80) + 136) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_1002068A0(a1, (v1 + 16), v1 + v4, *(v1 + v5), *(v1 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 8), *(v1 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 16), *(v1 + ((v5 + 39) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((v5 + 39) & 0xFFFFFFFFFFFFFFF8) + 8));
}

uint64_t sub_100170228(uint64_t a1, unint64_t a2)
{
  v39[0] = a1;
  v39[1] = a2;
  *&v42 = a1;
  *(&v42 + 1) = a2;

  sub_100005814(&qword_1003E0E50, &qword_1003444A8);
  if (swift_dynamicCast())
  {
    sub_10003E950(__src, &v43);
    sub_1000080F8(&v43, v44);
    dispatch thunk of ContiguousBytes.withUnsafeBytes<A>(_:)();
    __src[0] = v42;
    sub_10000839C(&v43);
    goto LABEL_63;
  }

  v41 = 0;
  memset(__src, 0, sizeof(__src));
  sub_100008D3C(__src, &qword_1003E0E58, &unk_1003444B0);
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_67;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
    *&__src[0] = a1;
    *(&__src[0] + 1) = a2 & 0xFFFFFFFFFFFFFFLL;
    v4 = __src;
  }

  else if ((a1 & 0x1000000000000000) != 0)
  {
    v4 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    v4 = _StringObject.sharedUTF8.getter();
  }

  sub_10018EB64(&v43, v4, v5);
  v6 = *(&v43 + 1);
  v7 = v43;
  if (*(&v43 + 1) >> 60 != 15)
  {
    __src[0] = v43;
    goto LABEL_63;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v8 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v8 = a1 & 0xFFFFFFFFFFFFLL;
  }

LABEL_12:
  *&__src[0] = sub_10018F8DC(v8);
  *(&__src[0] + 1) = v9;
  __chkstk_darwin(*&__src[0]);
  v34[2] = v39;
  v10 = sub_10018EC2C(sub_1001928D4, v34);
  v14 = v10;
  v15 = v11;
  v16 = v12;
  v17 = *(&__src[0] + 1) >> 62;
  if ((*(&__src[0] + 1) >> 62) > 1)
  {
    if (v17 == 2)
    {
      v19 = *(*&__src[0] + 16);
      v18 = *(*&__src[0] + 24);
      v20 = __OFSUB__(v18, v19);
      v21 = v18 - v19;
      if (v20)
      {
        goto LABEL_70;
      }

      if (v13 != v21)
      {
        goto LABEL_23;
      }
    }

    else if (v13)
    {
      v22 = 0;
      goto LABEL_60;
    }
  }

  else if (v17)
  {
    if (__OFSUB__(DWORD1(__src[0]), __src[0]))
    {
      goto LABEL_71;
    }

    if (v13 != DWORD1(__src[0]) - LODWORD(__src[0]))
    {
LABEL_23:
      if (v17 == 2)
      {
        v22 = *(*&__src[0] + 24);
      }

      else if (v17 == 1)
      {
        v22 = *&__src[0] >> 32;
      }

      else
      {
        v22 = BYTE14(__src[0]);
      }

LABEL_60:
      if (v22 >= v13)
      {
        Data._Representation.replaceSubrange(_:with:count:)();
LABEL_62:

        goto LABEL_63;
      }

      __break(1u);
LABEL_70:
      __break(1u);
LABEL_71:
      __break(1u);
    }
  }

  else if (v13 != BYTE14(__src[0]))
  {
    goto LABEL_23;
  }

  v36 = v7;
  if ((v11 & 0x2000000000000000) != 0)
  {
    v23 = HIBYTE(v11) & 0xF;
  }

  else
  {
    v23 = v10 & 0xFFFFFFFFFFFFLL;
  }

  *(&v42 + 7) = 0;
  *&v42 = 0;
  if (4 * v23 == v12 >> 14)
  {
    goto LABEL_57;
  }

  v35 = v6;
  LOBYTE(v24) = 0;
  v25 = (v10 >> 59) & 1;
  if ((v11 & 0x1000000000000000) == 0)
  {
    LOBYTE(v25) = 1;
  }

  v26 = 4 << v25;
  v37 = (v11 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v38 = v11 & 0xFFFFFFFFFFFFFFLL;
  do
  {
    v27 = v16 & 0xC;
    v28 = v16;
    if (v27 == v26)
    {
      v28 = sub_10018F0F0(v16, v14, v15);
    }

    v29 = v28 >> 16;
    if (v28 >> 16 >= v23)
    {
      __break(1u);
LABEL_65:
      __break(1u);
LABEL_66:
      __break(1u);
LABEL_67:
      v8 = String.UTF8View._foreignCount()();
      v7 = 0;
      v6 = 0xF000000000000000;
      goto LABEL_12;
    }

    if ((v15 & 0x1000000000000000) != 0)
    {
      v31 = String.UTF8View._foreignSubscript(position:)();
      if (v27 != v26)
      {
        goto LABEL_46;
      }
    }

    else if ((v15 & 0x2000000000000000) != 0)
    {
      *&v43 = v14;
      *(&v43 + 1) = v38;
      v31 = *(&v43 + v29);
      if (v27 != v26)
      {
        goto LABEL_46;
      }
    }

    else
    {
      v30 = v37;
      if ((v14 & 0x1000000000000000) == 0)
      {
        v30 = _StringObject.sharedUTF8.getter();
      }

      v31 = *(v30 + v29);
      if (v27 != v26)
      {
LABEL_46:
        if ((v15 & 0x1000000000000000) == 0)
        {
          goto LABEL_47;
        }

        goto LABEL_50;
      }
    }

    v16 = sub_10018F0F0(v16, v14, v15);
    if ((v15 & 0x1000000000000000) == 0)
    {
LABEL_47:
      v16 = (v16 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_52;
    }

LABEL_50:
    if (v23 <= v16 >> 16)
    {
      goto LABEL_66;
    }

    v16 = String.UTF8View._foreignIndex(after:)();
LABEL_52:
    *(&v42 + v24) = v31;
    v24 = v24 + 1;
    if ((v24 >> 8))
    {
      goto LABEL_65;
    }

    if (v24 == 14)
    {
      *&v43 = v42;
      *(&v43 + 6) = *(&v42 + 6);
      Data._Representation.append(contentsOf:)();
      LOBYTE(v24) = 0;
    }
  }

  while (4 * v23 != v16 >> 14);
  v6 = v35;
  if (v24)
  {
    *&v43 = v42;
    *(&v43 + 6) = *(&v42 + 6);
    Data._Representation.append(contentsOf:)();
    sub_100015D58(v36, v6);
    goto LABEL_62;
  }

LABEL_57:

  sub_100015D58(v36, v6);
LABEL_63:
  v32 = __src[0];
  sub_100015D6C(*&__src[0], *(&__src[0] + 1));

  sub_100012324(v32, *(&v32 + 1));
  return v32;
}

uint64_t sub_100170748()
{
  type metadata accessor for BenefactorHealthCheck(0);
  sub_100005814(&qword_1003E0E10, &unk_100344470);
  result = String.init<A>(describing:)();
  qword_1003E0D38 = result;
  unk_1003E0D40 = v1;
  return result;
}

uint64_t sub_10017079C(void *a1, char a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = type metadata accessor for DispatchWorkItemFlags();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v58 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for DispatchQoS();
  v68 = *(v16 - 8);
  __chkstk_darwin(v16);
  v67 = &v58 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for DispatchQoS.QoSClass();
  v19 = __chkstk_darwin(v18);
  if (a2)
  {
    if (qword_1003D7F48 == -1)
    {
LABEL_3:
      v22 = type metadata accessor for Logger();
      sub_100008D04(v22, qword_1003FAAB8);
      swift_errorRetain();
      v23 = Logger.logObject.getter();
      v24 = static os_log_type_t.error.getter();
      sub_1000399DC(a1, 1);
      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        aBlock[0] = swift_slowAlloc();
        *v25 = 136315394;
        if (qword_1003D7E18 != -1)
        {
          swift_once();
        }

        *(v25 + 4) = sub_10021145C(qword_1003E0D38, unk_1003E0D40, aBlock);
        *(v25 + 12) = 2080;
        v69 = a1;
        swift_errorRetain();
        sub_100005814(&unk_1003DBB60, &unk_10033E740);
        v26 = String.init<A>(describing:)();
        v28 = sub_10021145C(v26, v27, aBlock);

        *(v25 + 14) = v28;
        _os_log_impl(&_mh_execute_header, v23, v24, "%s - failed to start health check. An error occured while fetching benefactors. Error :- %s", v25, 0x16u);
        swift_arrayDestroy();
      }

      return a3(a1);
    }

LABEL_28:
    swift_once();
    goto LABEL_3;
  }

  v66 = a3;
  a3 = a1[2];
  if (a3)
  {
    v58 = &v58 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
    v59 = v21;
    v60 = v19;
    v62 = v16;
    if (qword_1003D7F48 != -1)
    {
      swift_once();
    }

    v63 = v13;
    v65 = a4;
    v30 = type metadata accessor for Logger();
    sub_100008D04(v30, qword_1003FAAB8);

    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.info.getter();
    v33 = os_log_type_enabled(v31, v32);
    v64 = v12;
    v61 = v15;
    if (v33)
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      aBlock[0] = v35;
      *v34 = 136315394;
      if (qword_1003D7E18 != -1)
      {
        swift_once();
      }

      *(v34 + 4) = sub_10021145C(qword_1003E0D38, unk_1003E0D40, aBlock);
      *(v34 + 12) = 2048;
      *(v34 + 14) = a3;
      sub_1000399DC(a1, 0);
      _os_log_impl(&_mh_execute_header, v31, v32, "%s - performing health check on %ld benefactors", v34, 0x16u);
      sub_10000839C(v35);
    }

    else
    {
      sub_1000399DC(a1, 0);
    }

    v43 = dispatch_group_create();
    v44 = swift_allocObject();
    *(v44 + 16) = 0;
    v45 = 0;
    v46 = *(type metadata accessor for BenefactorInfoRecord(0) - 8);
    while (1)
    {
      v47 = (v45 + 1);
      if (__OFADD__(v45, 1))
      {
        break;
      }

      sub_1001710BC(a1 + ((*(v46 + 80) + 32) & ~*(v46 + 80)) + *(v46 + 72) * v45++, v43, a5, v44, a6);
      if (v47 == a3)
      {
        sub_100016034(0, &qword_1003DC2B0, OS_dispatch_queue_ptr);
        v49 = v58;
        v48 = v59;
        v50 = v60;
        (*(v59 + 104))(v58, enum case for DispatchQoS.QoSClass.background(_:), v60);
        v51 = static OS_dispatch_queue.global(qos:)();
        (*(v48 + 8))(v49, v50);
        v52 = swift_allocObject();
        v53 = v65;
        v52[2] = v66;
        v52[3] = v53;
        v52[4] = v44;
        aBlock[4] = sub_1000C540C;
        aBlock[5] = v52;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_100031EF0;
        aBlock[3] = &unk_1003ABC10;
        v54 = _Block_copy(aBlock);

        v55 = v67;
        static DispatchQoS.unspecified.getter();
        v69 = _swiftEmptyArrayStorage;
        sub_100195084(&qword_1003D9120, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
        sub_100005814(&unk_1003DABE0, &unk_10033EC20);
        sub_1000D10EC(&qword_1003D9130, &unk_1003DABE0, &unk_10033EC20, &protocol conformance descriptor for [A]);
        v56 = v61;
        v57 = v64;
        dispatch thunk of SetAlgebra.init<A>(_:)();
        OS_dispatch_group.notify(qos:flags:queue:execute:)();

        _Block_release(v54);
        (*(v63 + 8))(v56, v57);
        (*(v68 + 8))(v55, v62);
      }
    }

    __break(1u);
    goto LABEL_28;
  }

  if (qword_1003D7F48 != -1)
  {
    swift_once();
  }

  v36 = type metadata accessor for Logger();
  sub_100008D04(v36, qword_1003FAAB8);
  v37 = Logger.logObject.getter();
  v38 = static os_log_type_t.info.getter();
  v39 = os_log_type_enabled(v37, v38);
  v40 = v66;
  if (v39)
  {
    v41 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    aBlock[0] = v42;
    *v41 = 136315138;
    if (qword_1003D7E18 != -1)
    {
      swift_once();
    }

    *(v41 + 4) = sub_10021145C(qword_1003E0D38, unk_1003E0D40, aBlock);
    _os_log_impl(&_mh_execute_header, v37, v38, "%s - no benefactors found. Skipping Benefactor Health Check", v41, 0xCu);
    sub_10000839C(v42);
  }

  return v40(0);
}

void sub_1001710BC(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v32 = a5;
  v10 = type metadata accessor for BenefactorInfoRecord(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10 - 8);
  v14 = v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v17 = v31 - v16;
  if (*(a1 + *(v15 + 32)) == 2)
  {
    dispatch_group_enter(a2);
    sub_100194C44(a1, v17, type metadata accessor for BenefactorInfoRecord);
    v18 = (*(v11 + 80) + 16) & ~*(v11 + 80);
    v19 = (v12 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
    v31[1] = a3;
    v31[2] = v5;
    v20 = (v19 + 15) & 0xFFFFFFFFFFFFFFF8;
    v21 = swift_allocObject();
    sub_100194EC4(v17, v21 + v18, type metadata accessor for BenefactorInfoRecord);
    *(v21 + v19) = a4;
    *(v21 + v20) = a2;
    *(v21 + ((v20 + 15) & 0xFFFFFFFFFFFFFFF8)) = v32;

    v22 = a2;
    sub_1001717B4(a1, sub_10018FF1C, v21);
  }

  else
  {
    if (qword_1003D7F48 != -1)
    {
      swift_once();
    }

    v23 = type metadata accessor for Logger();
    sub_100008D04(v23, qword_1003FAAB8);
    sub_100194C44(a1, v14, type metadata accessor for BenefactorInfoRecord);
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      *v26 = 136315394;
      if (qword_1003D7E18 != -1)
      {
        swift_once();
      }

      *(v26 + 4) = sub_10021145C(qword_1003E0D38, unk_1003E0D40, &v33);
      *(v26 + 12) = 2080;
      type metadata accessor for UUID();
      sub_100195084(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v27 = dispatch thunk of CustomStringConvertible.description.getter();
      v29 = v28;
      sub_100195024(v14, type metadata accessor for BenefactorInfoRecord);
      v30 = sub_10021145C(v27, v29, &v33);

      *(v26 + 14) = v30;
      _os_log_impl(&_mh_execute_header, v24, v25, "%s - BenefactorInfoRecord with beneficiaryID - %s is not accepted. Skipping health check.", v26, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      sub_100195024(v14, type metadata accessor for BenefactorInfoRecord);
    }
  }
}

void sub_1001714C4(uint64_t a1, uint64_t a2, uint64_t a3, NSObject *a4)
{
  v8 = type metadata accessor for BenefactorInfoRecord(0);
  __chkstk_darwin(v8 - 8);
  v10 = &v20[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    swift_errorRetain();
    if (qword_1003D7F48 != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    sub_100008D04(v11, qword_1003FAAB8);
    sub_100194C44(a2, v10, type metadata accessor for BenefactorInfoRecord);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v20[0] = swift_slowAlloc();
      *v14 = 136315394;
      if (qword_1003D7E18 != -1)
      {
        swift_once();
      }

      *(v14 + 4) = sub_10021145C(qword_1003E0D38, unk_1003E0D40, v20);
      *(v14 + 12) = 2080;
      type metadata accessor for UUID();
      sub_100195084(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v15 = dispatch thunk of CustomStringConvertible.description.getter();
      v17 = v16;
      sub_100195024(v10, type metadata accessor for BenefactorInfoRecord);
      v18 = sub_10021145C(v15, v17, v20);

      *(v14 + 14) = v18;
      _os_log_impl(&_mh_execute_header, v12, v13, "%s - failed for benefactor - %s", v14, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      sub_100195024(v10, type metadata accessor for BenefactorInfoRecord);
    }

    swift_beginAccess();
    *(a3 + 16) = a1;
  }

  dispatch_group_leave(a4);
}

uint64_t sub_1001717B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v40 = a2;
  v41 = a3;
  v39 = *v3;
  v6 = sub_100005814(&qword_1003E1970, &qword_1003446B0);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v34 - v8;
  v10 = type metadata accessor for BenefactorInfoRecord(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10 - 8);
  v38 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v34 - v14;
  if (qword_1003D7F48 != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  sub_100008D04(v16, qword_1003FAAB8);
  v42 = a1;
  sub_100194C44(a1, v15, type metadata accessor for BenefactorInfoRecord);
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v17, v18))
  {
    v36 = v11;
    v37 = v3;
    v19 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v43[0] = v35;
    *v19 = 136315394;
    if (qword_1003D7E18 != -1)
    {
      swift_once();
    }

    *(v19 + 4) = sub_10021145C(qword_1003E0D38, unk_1003E0D40, v43);
    *(v19 + 12) = 2080;
    type metadata accessor for UUID();
    sub_100195084(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v20 = dispatch thunk of CustomStringConvertible.description.getter();
    v22 = v21;
    sub_100195024(v15, type metadata accessor for BenefactorInfoRecord);
    v23 = sub_10021145C(v20, v22, v43);

    *(v19 + 14) = v23;
    _os_log_impl(&_mh_execute_header, v17, v18, "%s - fetching health record for beneficiaryID: %s", v19, 0x16u);
    swift_arrayDestroy();

    v11 = v36;
    v4 = v37;
  }

  else
  {

    sub_100195024(v15, type metadata accessor for BenefactorInfoRecord);
  }

  (*(v7 + 16))(v9, v4 + OBJC_IVAR____TtC13appleaccountd21BenefactorHealthCheck__inheritanceStorage, v6);
  Dependency.wrappedValue.getter();
  (*(v7 + 8))(v9, v6);
  sub_1000080F8(v43, v43[3]);
  v24 = swift_allocObject();
  swift_weakInit();
  v25 = v42;
  v26 = v38;
  sub_100194C44(v42, v38, type metadata accessor for BenefactorInfoRecord);
  v27 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v28 = (v12 + v27 + 7) & 0xFFFFFFFFFFFFFFF8;
  v29 = (v28 + 23) & 0xFFFFFFFFFFFFFFF8;
  v30 = swift_allocObject();
  sub_100194EC4(v26, v30 + v27, type metadata accessor for BenefactorInfoRecord);
  v31 = (v30 + v28);
  v32 = v41;
  *v31 = v40;
  v31[1] = v32;
  *(v30 + v29) = v24;
  *(v30 + ((v29 + 15) & 0xFFFFFFFFFFFFFFF8)) = v39;

  sub_10021CBFC(v25, sub_100190160, v30);

  return sub_10000839C(v43);
}

uint64_t sub_100171CDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v46 = a3;
  v5 = *v3;
  v43 = a2;
  v44 = v5;
  v6 = sub_100005814(&qword_1003E1970, &qword_1003446B0);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v36 - v8;
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v41 = v13;
  v42 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v15 = &v36 - v14;
  if (qword_1003D7F48 != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  sub_100008D04(v16, qword_1003FAAB8);
  v40 = *(v11 + 16);
  v40(v15, a1, v10);
  v17 = v10;
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v18, v19))
  {
    v37 = v7;
    v38 = v6;
    v20 = v17;
    v39 = a1;
    v21 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v47[0] = v36;
    *v21 = 136315394;
    if (qword_1003D7E18 != -1)
    {
      swift_once();
    }

    *(v21 + 4) = sub_10021145C(qword_1003E0D38, unk_1003E0D40, v47);
    *(v21 + 12) = 2080;
    sub_100195084(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v22 = dispatch thunk of CustomStringConvertible.description.getter();
    v24 = v23;
    (*(v11 + 8))(v15, v20);
    v25 = sub_10021145C(v22, v24, v47);

    *(v21 + 14) = v25;
    _os_log_impl(&_mh_execute_header, v18, v19, "%s - starting individual beneficiary health check for %s", v21, 0x16u);
    swift_arrayDestroy();

    v26 = v20;
    v6 = v38;
    a1 = v39;
    v7 = v37;
  }

  else
  {

    (*(v11 + 8))(v15, v17);
    v26 = v17;
  }

  v27 = v45;
  (*(v7 + 16))(v9, v45 + OBJC_IVAR____TtC13appleaccountd21BenefactorHealthCheck__inheritanceStorage, v6);
  Dependency.wrappedValue.getter();
  (*(v7 + 8))(v9, v6);
  sub_1000080F8(v47, v47[3]);
  v28 = v42;
  v40(v42, a1, v26);
  v29 = (*(v11 + 80) + 40) & ~*(v11 + 80);
  v30 = (v41 + v29 + 7) & 0xFFFFFFFFFFFFFFF8;
  v31 = swift_allocObject();
  v32 = v26;
  v33 = v31;
  v34 = v43;
  *(v31 + 2) = v27;
  *(v31 + 3) = v34;
  *(v31 + 4) = v46;
  (*(v11 + 32))(&v31[v29], v28, v32);
  *(v33 + v30) = v44;

  sub_10021B0E8(a1, sub_100194758, v33);

  return sub_10000839C(v47);
}

uint64_t sub_1001721D8(uint64_t a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4, uint64_t a5)
{
  v33 = a5;
  v32 = type metadata accessor for UUID();
  v34 = *(v32 - 8);
  __chkstk_darwin(v32);
  v9 = v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for BenefactorInfoRecord(0);
  __chkstk_darwin(v10 - 8);
  v12 = v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_100005814(&unk_1003E1DD0, &qword_1003444D0);
  __chkstk_darwin(v13);
  v15 = (v31 - v14);
  sub_100012D04(a1, v31 - v14, &unk_1003E1DD0, &qword_1003444D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v31[1] = a4;
    v16 = *v15;
    if (qword_1003D7F48 != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    sub_100008D04(v17, qword_1003FAAB8);
    v18 = v34;
    v19 = v32;
    (*(v34 + 16))(v9, v33, v32);
    swift_errorRetain();
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      *v22 = 136315650;
      if (qword_1003D7E18 != -1)
      {
        swift_once();
      }

      *(v22 + 4) = sub_10021145C(qword_1003E0D38, unk_1003E0D40, &v35);
      *(v22 + 12) = 2080;
      sub_100195084(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v24 = dispatch thunk of CustomStringConvertible.description.getter();
      v25 = v19;
      v27 = v26;
      (*(v34 + 8))(v9, v25);
      v28 = sub_10021145C(v24, v27, &v35);

      *(v22 + 14) = v28;
      *(v22 + 22) = 2112;
      v29 = _convertErrorToNSError(_:)();
      *(v22 + 24) = v29;
      *v23 = v29;
      _os_log_impl(&_mh_execute_header, v20, v21, "%s - error fetching beneficiary record for %s: %@", v22, 0x20u);
      sub_100008D3C(v23, &unk_1003D9140, &qword_10033E640);

      swift_arrayDestroy();
    }

    else
    {

      (*(v18 + 8))(v9, v19);
    }

    swift_errorRetain();
    a3(v16);
  }

  else
  {
    sub_100194EC4(v15, v12, type metadata accessor for BenefactorInfoRecord);
    sub_1001717B4(v12, a3, a4);
    return sub_100195024(v12, type metadata accessor for BenefactorInfoRecord);
  }
}

uint64_t sub_100172664()
{
  v1 = OBJC_IVAR____TtC13appleaccountd21BenefactorHealthCheck__inheritanceStorage;
  v2 = sub_100005814(&qword_1003E1970, &qword_1003446B0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC13appleaccountd21BenefactorHealthCheck__storageController;
  v4 = sub_100005814(&unk_1003DA550, &qword_10033F620);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for BenefactorHealthCheck(uint64_t a1)
{
  result = qword_1003E0D80;
  if (!qword_1003E0D80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1001727AC(uint64_t a1)
{
  sub_10000DAB8(319, &qword_1003E1160, &unk_1003E01A0, &qword_1003443F0);
  if (v1 <= 0x3F)
  {
    sub_10000DAB8(319, &unk_1003DA6A0, &unk_1003DA2B0, &unk_10033F430);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_1001728D0(uint64_t a1, uint64_t a2, void (*a3)(uint64_t), void (*a4)(uint64_t), uint64_t a5, uint64_t a6)
{
  v58 = a6;
  v59 = a5;
  v61 = a3;
  v62 = a4;
  v60 = a2;
  v7 = sub_100005814(&qword_1003E1970, &qword_1003446B0);
  v54 = *(v7 - 8);
  v55 = v7;
  __chkstk_darwin(v7);
  v9 = &v52 - v8;
  v10 = type metadata accessor for InheritanceHealthRecord(0);
  v56 = *(v10 - 8);
  v11 = *(v56 + 64);
  v12 = __chkstk_darwin(v10 - 8);
  v57 = &v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v52 - v13;
  v15 = type metadata accessor for BenefactorInfoRecord(0);
  v52 = *(v15 - 8);
  v16 = *(v52 + 64);
  v17 = __chkstk_darwin(v15 - 8);
  v53 = &v52 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v52 - v18;
  v20 = sub_100005814(&unk_1003E10C0, &qword_100346A70);
  __chkstk_darwin(v20);
  v22 = (&v52 - v21);
  sub_100012D04(a1, &v52 - v21, &unk_1003E10C0, &qword_100346A70);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v23 = *v22;
    if (qword_1003D7F48 != -1)
    {
      swift_once();
    }

    v24 = type metadata accessor for Logger();
    sub_100008D04(v24, qword_1003FAAB8);
    v25 = v19;
    sub_100194C44(v60, v19, type metadata accessor for BenefactorInfoRecord);
    swift_errorRetain();
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v63[0] = swift_slowAlloc();
      *v28 = 136315650;
      if (qword_1003D7E18 != -1)
      {
        swift_once();
      }

      *(v28 + 4) = sub_10021145C(qword_1003E0D38, unk_1003E0D40, v63);
      *(v28 + 12) = 2080;
      type metadata accessor for UUID();
      sub_100195084(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v29 = dispatch thunk of CustomStringConvertible.description.getter();
      v31 = v30;
      sub_100195024(v25, type metadata accessor for BenefactorInfoRecord);
      v32 = sub_10021145C(v29, v31, v63);

      *(v28 + 14) = v32;
      *(v28 + 22) = 2080;
      v63[5] = v23;
      swift_errorRetain();
      sub_100005814(&unk_1003DBB60, &unk_10033E740);
      v33 = String.init<A>(describing:)();
      v35 = sub_10021145C(v33, v34, v63);

      *(v28 + 24) = v35;
      _os_log_impl(&_mh_execute_header, v26, v27, "%s - failed to fetch InheritanceHealthRecord for %s. Error :- %s", v28, 0x20u);
      swift_arrayDestroy();
    }

    else
    {

      sub_100195024(v19, type metadata accessor for BenefactorInfoRecord);
    }

    swift_errorRetain();
    v61(v23);
  }

  else
  {
    v36 = v22;
    v37 = v14;
    sub_100194EC4(v36, v14, type metadata accessor for InheritanceHealthRecord);
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v40 = v54;
      v39 = v55;
      (*(v54 + 16))(v9, Strong + OBJC_IVAR____TtC13appleaccountd21BenefactorHealthCheck__inheritanceStorage, v55);
      Dependency.wrappedValue.getter();

      (*(v40 + 8))(v9, v39);
      v55 = sub_1000080F8(v63, v63[3]);
      v41 = v60;
      v42 = v53;
      sub_100194C44(v60, v53, type metadata accessor for BenefactorInfoRecord);
      v43 = v57;
      sub_100194C44(v37, v57, type metadata accessor for InheritanceHealthRecord);
      v44 = (*(v52 + 80) + 16) & ~*(v52 + 80);
      v45 = (v16 + v44 + 7) & 0xFFFFFFFFFFFFFFF8;
      v54 = v37;
      v46 = (v45 + 23) & 0xFFFFFFFFFFFFFFF8;
      v47 = (*(v56 + 80) + v46 + 8) & ~*(v56 + 80);
      v48 = swift_allocObject();
      sub_100194EC4(v42, v48 + v44, type metadata accessor for BenefactorInfoRecord);
      v49 = (v48 + v45);
      v50 = v62;
      *v49 = v61;
      v49[1] = v50;
      *(v48 + v46) = v59;
      sub_100194EC4(v43, v48 + v47, type metadata accessor for InheritanceHealthRecord);
      *(v48 + ((v11 + v47 + 7) & 0xFFFFFFFFFFFFFFF8)) = v58;

      sub_100217018(v41, sub_100190474, v48);

      sub_100195024(v54, type metadata accessor for InheritanceHealthRecord);
      return sub_10000839C(v63);
    }

    else
    {
      return sub_100195024(v14, type metadata accessor for InheritanceHealthRecord);
    }
  }
}

uint64_t sub_10017303C(uint64_t a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4, uint64_t a5, uint64_t a6)
{
  v31 = a3;
  v32 = a4;
  v9 = type metadata accessor for BeneficiaryInfoRecord(0);
  __chkstk_darwin(v9 - 8);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for BenefactorInfoRecord(0);
  __chkstk_darwin(v12 - 8);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_100005814(&unk_1003E10A0, &unk_100344480);
  __chkstk_darwin(v15);
  v17 = (&v31 - v16);
  sub_100012D04(a1, &v31 - v16, &unk_1003E10A0, &unk_100344480);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v18 = *v17;
    if (qword_1003D7F48 != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    sub_100008D04(v19, qword_1003FAAB8);
    sub_100194C44(a2, v14, type metadata accessor for BenefactorInfoRecord);
    swift_errorRetain();
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v34[0] = swift_slowAlloc();
      *v22 = 136315650;
      if (qword_1003D7E18 != -1)
      {
        swift_once();
      }

      *(v22 + 4) = sub_10021145C(qword_1003E0D38, unk_1003E0D40, v34);
      *(v22 + 12) = 2080;
      type metadata accessor for UUID();
      sub_100195084(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v23 = dispatch thunk of CustomStringConvertible.description.getter();
      v25 = v24;
      sub_100195024(v14, type metadata accessor for BenefactorInfoRecord);
      v26 = sub_10021145C(v23, v25, v34);

      *(v22 + 14) = v26;
      *(v22 + 22) = 2080;
      v33 = v18;
      swift_errorRetain();
      sub_100005814(&unk_1003DBB60, &unk_10033E740);
      v27 = String.init<A>(describing:)();
      v29 = sub_10021145C(v27, v28, v34);

      *(v22 + 24) = v29;
      _os_log_impl(&_mh_execute_header, v20, v21, "%s - failed to fetch BeneficiaryInfoRecord for %s. Error :- %s", v22, 0x20u);
      swift_arrayDestroy();
    }

    else
    {

      sub_100195024(v14, type metadata accessor for BenefactorInfoRecord);
    }

    swift_errorRetain();
    v31(v18);
  }

  else
  {
    sub_100194EC4(v17, v11, type metadata accessor for BeneficiaryInfoRecord);
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      sub_1001734C8(a6, v11, v31, v32);
    }

    return sub_100195024(v11, type metadata accessor for BeneficiaryInfoRecord);
  }
}

uint64_t sub_1001734C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v114 = a3;
  v115 = a4;
  v102 = a2;
  v6 = *v4;
  v112 = v4;
  v113 = v6;
  v111 = sub_100005814(&unk_1003DA550, &qword_10033F620);
  v110 = *(v111 - 8);
  __chkstk_darwin(v111);
  v109 = &v95 - v7;
  v8 = type metadata accessor for UUID();
  v97 = *(v8 - 8);
  __chkstk_darwin(v8);
  v96 = &v95 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = type metadata accessor for Date();
  v104 = *(v105 - 8);
  __chkstk_darwin(v105);
  v103 = &v95 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for SHA256();
  v99 = *(v11 - 8);
  __chkstk_darwin(v11);
  v13 = &v95 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = type metadata accessor for SHA256Digest();
  v100 = *(v101 - 8);
  __chkstk_darwin(v101);
  v15 = &v95 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for InheritanceHealthRecord(0);
  v17 = __chkstk_darwin(v16);
  v108 = &v95 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v20 = &v95 - v19;
  if (qword_1003D7F48 != -1)
  {
    swift_once();
  }

  v21 = type metadata accessor for Logger();
  v22 = sub_100008D04(v21, qword_1003FAAB8);
  v106 = a1;
  sub_100194C44(a1, v20, type metadata accessor for InheritanceHealthRecord);
  v116 = v22;
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.info.getter();
  v25 = os_log_type_enabled(v23, v24);
  v107 = v16;
  v98 = v8;
  if (v25)
  {
    v26 = swift_slowAlloc();
    v117[0] = swift_slowAlloc();
    *v26 = 136315394;
    if (qword_1003D7E18 != -1)
    {
      swift_once();
    }

    *(v26 + 4) = sub_10021145C(qword_1003E0D38, unk_1003E0D40, v117);
    *(v26 + 12) = 2080;
    sub_100195084(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v27 = dispatch thunk of CustomStringConvertible.description.getter();
    v29 = v28;
    sub_100195024(v20, type metadata accessor for InheritanceHealthRecord);
    v30 = sub_10021145C(v27, v29, v117);

    *(v26 + 14) = v30;
    _os_log_impl(&_mh_execute_header, v23, v24, "%s - verifying benefactor health record for beneficiaryID - %s", v26, 0x16u);
    swift_arrayDestroy();

    v16 = v107;
  }

  else
  {

    sub_100195024(v20, type metadata accessor for InheritanceHealthRecord);
  }

  v31 = (v102 + *(type metadata accessor for BeneficiaryInfoRecord(0) + 28));
  v32 = *v31;
  v33 = v31[1];
  sub_100195084(&unk_1003DA8A0, &type metadata accessor for SHA256, &protocol conformance descriptor for SHA256);
  dispatch thunk of HashFunction.init()();
  sub_100015D6C(v32, v33);
  sub_10018F16C(v32, v33, v13);
  sub_100012324(v32, v33);
  dispatch thunk of HashFunction.finalize()();
  (*(v99 + 8))(v13, v11);
  sub_100195084(&qword_1003DE938, &type metadata accessor for SHA256Digest, &protocol conformance descriptor for SHA256Digest);
  v34 = v101;
  v35 = Digest.makeIterator()();
  v37 = sub_10018F47C(v35, v36);

  v38 = sub_10018F97C(v37);
  v40 = v39;

  (*(v100 + 8))(v15, v34);
  v41 = swift_allocBox();
  v43 = v42;
  sub_100194C44(v106, v42, type metadata accessor for InheritanceHealthRecord);
  v44 = v103;
  Date.init()();
  (*(v104 + 40))(v43 + *(v16 + 20), v44, v105);
  v45 = (v43 + *(v16 + 24));
  v46 = *v45;
  v47 = v45[1];
  sub_100015D6C(*v45, v47);
  v48 = sub_10018F69C(v38, v40, v46, v47);
  sub_100012324(v46, v47);
  if (v48)
  {
    v49 = Logger.logObject.getter();
    v50 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      v117[0] = v52;
      *v51 = 136315138;
      if (qword_1003D7E18 != -1)
      {
        swift_once();
      }

      *(v51 + 4) = sub_10021145C(qword_1003E0D38, unk_1003E0D40, v117);
      _os_log_impl(&_mh_execute_header, v49, v50, "%s - verified accessKeyHash matches with healthRecord. We're good.", v51, 0xCu);
      sub_10000839C(v52);
    }

    v53 = Logger.logObject.getter();
    v54 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v53, v54))
    {
      v116 = v40;
      v106 = v38;
      v55 = swift_slowAlloc();
      v107 = swift_slowAlloc();
      v117[0] = v107;
      *v55 = 136315394;
      if (qword_1003D7E18 != -1)
      {
        swift_once();
      }

      *(v55 + 4) = sub_10021145C(qword_1003E0D38, unk_1003E0D40, v117);
      *(v55 + 12) = 2080;
      swift_beginAccess();
      v56 = v97;
      v57 = v96;
      v58 = v98;
      (*(v97 + 16))(v96, v43, v98);
      sub_100195084(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v59 = dispatch thunk of CustomStringConvertible.description.getter();
      v61 = v60;
      (*(v56 + 8))(v57, v58);
      v62 = sub_10021145C(v59, v61, v117);

      *(v55 + 14) = v62;
      _os_log_impl(&_mh_execute_header, v53, v54, "%s - benefactor Record %s is healthy!", v55, 0x16u);
      swift_arrayDestroy();

      v38 = v106;
      v40 = v116;
    }

    else
    {
    }
  }

  else
  {

    sub_100015D6C(v38, v40);
    v63 = Logger.logObject.getter();
    v64 = static os_log_type_t.info.getter();

    sub_100012324(v38, v40);
    LODWORD(v105) = v64;
    if (os_log_type_enabled(v63, v64))
    {
      v106 = v38;
      v65 = swift_slowAlloc();
      v117[0] = swift_slowAlloc();
      *v65 = 136315650;
      if (qword_1003D7E18 != -1)
      {
        swift_once();
      }

      *(v65 + 4) = sub_10021145C(qword_1003E0D38, unk_1003E0D40, v117);
      *(v65 + 12) = 2080;
      swift_beginAccess();
      v66 = (v43 + *(v16 + 24));
      v67 = *v66;
      v68 = v66[1];
      sub_100015D6C(*v66, v68);
      v69 = Data.description.getter();
      v71 = v70;
      sub_100012324(v67, v68);
      v72 = sub_10021145C(v69, v71, v117);

      *(v65 + 14) = v72;
      *(v65 + 22) = 2080;
      v38 = v106;
      sub_100015D6C(v106, v40);
      v73 = Data.description.getter();
      v75 = v74;
      sub_100012324(v38, v40);
      v76 = sub_10021145C(v73, v75, v117);

      *(v65 + 24) = v76;
      _os_log_impl(&_mh_execute_header, v63, v105, "%s - accessKey hash did not match! Previous hash: %s New Hash: %s", v65, 0x20u);
      swift_arrayDestroy();
    }

    else
    {
    }

    v77 = Logger.logObject.getter();
    v78 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v77, v78))
    {
      v79 = swift_slowAlloc();
      v80 = swift_slowAlloc();
      v117[0] = v80;
      *v79 = 136315138;
      v81 = v107;
      if (qword_1003D7E18 != -1)
      {
        swift_once();
      }

      *(v79 + 4) = sub_10021145C(qword_1003E0D38, unk_1003E0D40, v117);
      _os_log_impl(&_mh_execute_header, v77, v78, "%s - updating health record access key hash so owner knows we have the new hash.", v79, 0xCu);
      sub_10000839C(v80);
    }

    else
    {

      v81 = v107;
    }

    swift_beginAccess();
    v82 = (v43 + *(v81 + 24));
    v83 = *v82;
    v84 = v82[1];
    *v82 = v38;
    v82[1] = v40;
    sub_100015D6C(v38, v40);
    sub_100012324(v83, v84);
  }

  v85 = v110;
  v86 = v111;
  v87 = v109;
  (*(v110 + 16))(v109, v112 + OBJC_IVAR____TtC13appleaccountd21BenefactorHealthCheck__storageController, v111);
  Dependency.wrappedValue.getter();
  (*(v85 + 8))(v87, v86);
  sub_1000080F8(v117, v117[3]);
  swift_beginAccess();
  v88 = v43;
  v89 = v108;
  sub_100194C44(v88, v108, type metadata accessor for InheritanceHealthRecord);
  v90 = swift_allocObject();
  v91 = v114;
  v92 = v115;
  v90[2] = v41;
  v90[3] = v91;
  v93 = v113;
  v90[4] = v92;
  v90[5] = v93;

  sub_10018D8C0(v89, sub_1001905DC, v90);

  sub_100012324(v38, v40);
  sub_100195024(v89, type metadata accessor for InheritanceHealthRecord);
  sub_10000839C(v117);
}

uint64_t sub_100174424(uint64_t a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4)
{
  v38 = a4;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100005814(&unk_1003E10C0, &qword_100346A70);
  __chkstk_darwin(v10);
  v12 = (&v36 - v11);
  sub_100012D04(a1, &v36 - v11, &unk_1003E10C0, &qword_100346A70);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v37 = a3;
    v13 = *v12;
    if (qword_1003D7F48 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    sub_100008D04(v14, qword_1003FAAB8);

    swift_errorRetain();
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      *v17 = 136315650;
      if (qword_1003D7E18 != -1)
      {
        swift_once();
      }

      *(v17 + 4) = sub_10021145C(qword_1003E0D38, unk_1003E0D40, &v40);
      *(v17 + 12) = 2080;
      type metadata accessor for InheritanceHealthRecord(0);
      v18 = swift_projectBox();
      swift_beginAccess();
      (*(v7 + 16))(v9, v18, v6);
      sub_100195084(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v19 = dispatch thunk of CustomStringConvertible.description.getter();
      v21 = v20;
      (*(v7 + 8))(v9, v6);
      v22 = sub_10021145C(v19, v21, &v40);

      *(v17 + 14) = v22;
      *(v17 + 22) = 2080;
      v39 = v13;
      swift_errorRetain();
      sub_100005814(&unk_1003DBB60, &unk_10033E740);
      v23 = String.init<A>(describing:)();
      v25 = sub_10021145C(v23, v24, &v40);

      *(v17 + 24) = v25;
      _os_log_impl(&_mh_execute_header, v15, v16, "%s - error updating InheritanceHealthRecord %s: %s", v17, 0x20u);
      swift_arrayDestroy();
    }

    swift_errorRetain();
    v37(v13);
  }

  else
  {
    if (qword_1003D7F48 != -1)
    {
      swift_once();
    }

    v27 = type metadata accessor for Logger();
    sub_100008D04(v27, qword_1003FAAB8);

    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v28, v29))
    {
      v37 = a3;
      v30 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      *v30 = 136315394;
      if (qword_1003D7E18 != -1)
      {
        swift_once();
      }

      *(v30 + 4) = sub_10021145C(qword_1003E0D38, unk_1003E0D40, &v40);
      *(v30 + 12) = 2080;
      type metadata accessor for InheritanceHealthRecord(0);
      v31 = swift_projectBox();
      swift_beginAccess();
      (*(v7 + 16))(v9, v31, v6);
      sub_100195084(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v32 = dispatch thunk of CustomStringConvertible.description.getter();
      v34 = v33;
      (*(v7 + 8))(v9, v6);
      v35 = sub_10021145C(v32, v34, &v40);

      *(v30 + 14) = v35;
      _os_log_impl(&_mh_execute_header, v28, v29, "%s - inheritanceHealthRecord %s was updated.", v30, 0x16u);
      swift_arrayDestroy();

      v37(0);
    }

    else
    {

      a3(0);
    }

    return sub_100008D3C(v12, &unk_1003E10C0, &qword_100346A70);
  }
}

void sub_100174A80(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v27 = a2;
  v28 = a4;
  v26 = a3;
  v7 = type metadata accessor for CustodianRecord(0);
  v8 = v7 - 8;
  v25 = *(v7 - 8);
  v9 = *(v25 + 64);
  __chkstk_darwin(v7);
  v10 = [objc_allocWithZone(CKModifyRecordsOperation) init];
  sub_1002DE8D4();
  sub_100005814(&unk_1003E4DE0, &qword_1003432F0);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1003431D0;
  v12 = objc_autoreleasePoolPush();
  v13 = sub_1002E1D08(*(a1 + *(v8 + 52)), *(a1 + *(v8 + 52) + 8));
  if (!v13)
  {
    v13 = sub_10017D094();
  }

  aBlock[0] = v13;
  v14 = v13;
  sub_1000F0774(aBlock);
  objc_autoreleasePoolPop(v12);
  *(v11 + 32) = v14;
  sub_100016034(0, &qword_1003E0E18, CKRecord_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v10 setRecordsToSave:isa];

  sub_100194C44(a1, &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for CustodianRecord);
  v16 = (*(v25 + 80) + 24) & ~*(v25 + 80);
  v17 = (v9 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
  v18 = swift_allocObject();
  v18[2] = v5;
  sub_100194EC4(&v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v18 + v16, type metadata accessor for CustodianRecord);
  v19 = v26;
  v20 = v27;
  *(v18 + v17) = v27;
  v21 = (v18 + ((v17 + 15) & 0xFFFFFFFFFFFFFFF8));
  v22 = v28;
  *v21 = v19;
  v21[1] = v22;
  aBlock[4] = sub_100194A04;
  aBlock[5] = v18;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100179734;
  aBlock[3] = &unk_1003AC430;
  v23 = _Block_copy(aBlock);

  v24 = v20;

  [v10 setModifyRecordsCompletionBlock:v23];
  _Block_release(v23);
  [v24 addOperation:v10];
}

void sub_100174D78(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v27 = a2;
  v28 = a4;
  v26 = a3;
  v7 = type metadata accessor for CustodianRecoveryInfoRecord(0);
  v8 = v7 - 8;
  v25 = *(v7 - 8);
  v9 = *(v25 + 64);
  __chkstk_darwin(v7);
  v10 = [objc_allocWithZone(CKModifyRecordsOperation) init];
  sub_1002DE8D4();
  sub_100005814(&unk_1003E4DE0, &qword_1003432F0);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1003431D0;
  v12 = objc_autoreleasePoolPush();
  v13 = sub_1002E1D08(*(a1 + *(v8 + 44)), *(a1 + *(v8 + 44) + 8));
  if (!v13)
  {
    v13 = sub_10017DBB8();
  }

  aBlock[0] = v13;
  v14 = v13;
  sub_1000F3E8C(aBlock);
  objc_autoreleasePoolPop(v12);
  *(v11 + 32) = v14;
  sub_100016034(0, &qword_1003E0E18, CKRecord_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v10 setRecordsToSave:isa];

  sub_100194C44(a1, &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for CustodianRecoveryInfoRecord);
  v16 = (*(v25 + 80) + 24) & ~*(v25 + 80);
  v17 = (v9 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
  v18 = swift_allocObject();
  v18[2] = v5;
  sub_100194EC4(&v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v18 + v16, type metadata accessor for CustodianRecoveryInfoRecord);
  v19 = v26;
  v20 = v27;
  *(v18 + v17) = v27;
  v21 = (v18 + ((v17 + 15) & 0xFFFFFFFFFFFFFFF8));
  v22 = v28;
  *v21 = v19;
  v21[1] = v22;
  aBlock[4] = sub_1001952C4;
  aBlock[5] = v18;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100179734;
  aBlock[3] = &unk_1003AC548;
  v23 = _Block_copy(aBlock);

  v24 = v20;

  [v10 setModifyRecordsCompletionBlock:v23];
  _Block_release(v23);
  [v24 addOperation:v10];
}

void sub_100175070(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v27 = a2;
  v28 = a4;
  v26 = a3;
  v7 = type metadata accessor for CustodianHealthRecord(0);
  v8 = v7 - 8;
  v25 = *(v7 - 8);
  v9 = *(v25 + 64);
  __chkstk_darwin(v7);
  v10 = [objc_allocWithZone(CKModifyRecordsOperation) init];
  sub_1002DE8D4();
  sub_100005814(&unk_1003E4DE0, &qword_1003432F0);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1003431D0;
  v12 = objc_autoreleasePoolPush();
  v13 = sub_1002E1D08(*(a1 + *(v8 + 40)), *(a1 + *(v8 + 40) + 8));
  if (!v13)
  {
    v13 = sub_10017D624();
  }

  aBlock[0] = v13;
  v14 = v13;
  sub_1000ECC30(aBlock);
  objc_autoreleasePoolPop(v12);
  *(v11 + 32) = v14;
  sub_100016034(0, &qword_1003E0E18, CKRecord_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v10 setRecordsToSave:isa];

  sub_100194C44(a1, &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for CustodianHealthRecord);
  v16 = (*(v25 + 80) + 24) & ~*(v25 + 80);
  v17 = (v9 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
  v18 = swift_allocObject();
  v18[2] = v5;
  sub_100194EC4(&v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v18 + v16, type metadata accessor for CustodianHealthRecord);
  v19 = v26;
  v20 = v27;
  *(v18 + v17) = v27;
  v21 = (v18 + ((v17 + 15) & 0xFFFFFFFFFFFFFFF8));
  v22 = v28;
  *v21 = v19;
  v21[1] = v22;
  aBlock[4] = sub_10019569C;
  aBlock[5] = v18;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100179734;
  aBlock[3] = &unk_1003AC610;
  v23 = _Block_copy(aBlock);

  v24 = v20;

  [v10 setModifyRecordsCompletionBlock:v23];
  _Block_release(v23);
  [v24 addOperation:v10];
}

void sub_100175368(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v27 = a2;
  v28 = a4;
  v26 = a3;
  v7 = type metadata accessor for CustodianshipInfoRecord(0);
  v8 = v7 - 8;
  v25 = *(v7 - 8);
  v9 = *(v25 + 64);
  __chkstk_darwin(v7);
  v10 = [objc_allocWithZone(CKModifyRecordsOperation) init];
  sub_1002DE8D4();
  sub_100005814(&unk_1003E4DE0, &qword_1003432F0);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1003431D0;
  v12 = objc_autoreleasePoolPush();
  v13 = sub_1002E1D08(*(a1 + *(v8 + 40)), *(a1 + *(v8 + 40) + 8));
  if (!v13)
  {
    v13 = sub_10017D800();
  }

  aBlock[0] = v13;
  v14 = v13;
  sub_1000F8C14(aBlock);
  objc_autoreleasePoolPop(v12);
  *(v11 + 32) = v14;
  sub_100016034(0, &qword_1003E0E18, CKRecord_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v10 setRecordsToSave:isa];

  sub_100194C44(a1, &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for CustodianshipInfoRecord);
  v16 = (*(v25 + 80) + 24) & ~*(v25 + 80);
  v17 = (v9 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
  v18 = swift_allocObject();
  v18[2] = v5;
  sub_100194EC4(&v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v18 + v16, type metadata accessor for CustodianshipInfoRecord);
  v19 = v26;
  v20 = v27;
  *(v18 + v17) = v27;
  v21 = (v18 + ((v17 + 15) & 0xFFFFFFFFFFFFFFF8));
  v22 = v28;
  *v21 = v19;
  v21[1] = v22;
  aBlock[4] = sub_100192AB4;
  aBlock[5] = v18;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100179734;
  aBlock[3] = &unk_1003ABE68;
  v23 = _Block_copy(aBlock);

  v24 = v20;

  [v10 setModifyRecordsCompletionBlock:v23];
  _Block_release(v23);
  [v24 addOperation:v10];
}

void sub_100175660(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v27 = a2;
  v28 = a4;
  v26 = a3;
  v7 = type metadata accessor for InheritanceHealthRecord(0);
  v8 = v7 - 8;
  v25 = *(v7 - 8);
  v9 = *(v25 + 64);
  __chkstk_darwin(v7);
  v10 = [objc_allocWithZone(CKModifyRecordsOperation) init];
  sub_1002DE8D4();
  sub_100005814(&unk_1003E4DE0, &qword_1003432F0);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1003431D0;
  v12 = objc_autoreleasePoolPush();
  v13 = sub_1002E1D08(*(a1 + *(v8 + 40)), *(a1 + *(v8 + 40) + 8));
  if (!v13)
  {
    v13 = sub_10017D9DC(a1);
  }

  aBlock[0] = v13;
  v14 = v13;
  sub_1001EAE54(aBlock);
  objc_autoreleasePoolPop(v12);
  *(v11 + 32) = v14;
  sub_100016034(0, &qword_1003E0E18, CKRecord_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v10 setRecordsToSave:isa];

  sub_100194C44(a1, &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for InheritanceHealthRecord);
  v16 = (*(v25 + 80) + 24) & ~*(v25 + 80);
  v17 = (v9 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
  v18 = swift_allocObject();
  v18[2] = v5;
  sub_100194EC4(&v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v18 + v16, type metadata accessor for InheritanceHealthRecord);
  v19 = v26;
  v20 = v27;
  *(v18 + v17) = v27;
  v21 = (v18 + ((v17 + 15) & 0xFFFFFFFFFFFFFFF8));
  v22 = v28;
  *v21 = v19;
  v21[1] = v22;
  aBlock[4] = sub_1001909B4;
  aBlock[5] = v18;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100179734;
  aBlock[3] = &unk_1003ABD50;
  v23 = _Block_copy(aBlock);

  v24 = v20;

  [v10 setModifyRecordsCompletionBlock:v23];
  _Block_release(v23);
  [v24 addOperation:v10];
}

void sub_100175958(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v27 = a2;
  v28 = a4;
  v26 = a3;
  v7 = type metadata accessor for BeneficiaryInfoRecord(0);
  v8 = v7 - 8;
  v25 = *(v7 - 8);
  v9 = *(v25 + 64);
  __chkstk_darwin(v7);
  v10 = [objc_allocWithZone(CKModifyRecordsOperation) init];
  sub_1002DE8D4();
  sub_100005814(&unk_1003E4DE0, &qword_1003432F0);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1003431D0;
  v12 = objc_autoreleasePoolPush();
  v13 = sub_1002E1D08(*(a1 + *(v8 + 44)), *(a1 + *(v8 + 44) + 8));
  if (!v13)
  {
    v13 = sub_10017D448(a1);
  }

  aBlock[0] = v13;
  v14 = v13;
  sub_1001E5D58(aBlock);
  objc_autoreleasePoolPop(v12);
  *(v11 + 32) = v14;
  sub_100016034(0, &qword_1003E0E18, CKRecord_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v10 setRecordsToSave:isa];

  sub_100194C44(a1, &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for BeneficiaryInfoRecord);
  v16 = (*(v25 + 80) + 24) & ~*(v25 + 80);
  v17 = (v9 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
  v18 = swift_allocObject();
  v18[2] = v5;
  sub_100194EC4(&v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v18 + v16, type metadata accessor for BeneficiaryInfoRecord);
  v19 = v26;
  v20 = v27;
  *(v18 + v17) = v27;
  v21 = (v18 + ((v17 + 15) & 0xFFFFFFFFFFFFFFF8));
  v22 = v28;
  *v21 = v19;
  v21[1] = v22;
  aBlock[4] = sub_100194098;
  aBlock[5] = v18;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100179734;
  aBlock[3] = &unk_1003AC278;
  v23 = _Block_copy(aBlock);

  v24 = v20;

  [v10 setModifyRecordsCompletionBlock:v23];
  _Block_release(v23);
  [v24 addOperation:v10];
}

void sub_100175C50(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v27 = a2;
  v28 = a4;
  v26 = a3;
  v7 = type metadata accessor for InheritanceInvitationRecord(0);
  v8 = v7 - 8;
  v25 = *(v7 - 8);
  v9 = *(v25 + 64);
  __chkstk_darwin(v7);
  v10 = [objc_allocWithZone(CKModifyRecordsOperation) init];
  sub_1002DE8D4();
  sub_100005814(&unk_1003E4DE0, &qword_1003432F0);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1003431D0;
  v12 = objc_autoreleasePoolPush();
  v13 = sub_1002E1D08(*(a1 + *(v8 + 48)), *(a1 + *(v8 + 48) + 8));
  if (!v13)
  {
    v13 = sub_10017DD94();
  }

  aBlock[0] = v13;
  v14 = v13;
  sub_1001EE71C(aBlock);
  objc_autoreleasePoolPop(v12);
  *(v11 + 32) = v14;
  sub_100016034(0, &qword_1003E0E18, CKRecord_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v10 setRecordsToSave:isa];

  sub_100194C44(a1, &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for InheritanceInvitationRecord);
  v16 = (*(v25 + 80) + 24) & ~*(v25 + 80);
  v17 = (v9 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
  v18 = swift_allocObject();
  v18[2] = v5;
  sub_100194EC4(&v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v18 + v16, type metadata accessor for InheritanceInvitationRecord);
  v19 = v26;
  v20 = v27;
  *(v18 + v17) = v27;
  v21 = (v18 + ((v17 + 15) & 0xFFFFFFFFFFFFFFF8));
  v22 = v28;
  *v21 = v19;
  v21[1] = v22;
  aBlock[4] = sub_1001944D0;
  aBlock[5] = v18;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100179734;
  aBlock[3] = &unk_1003AC340;
  v23 = _Block_copy(aBlock);

  v24 = v20;

  [v10 setModifyRecordsCompletionBlock:v23];
  _Block_release(v23);
  [v24 addOperation:v10];
}

void sub_100175F48(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v27 = a2;
  v28 = a4;
  v26 = a3;
  v7 = type metadata accessor for BenefactorInfoRecord(0);
  v8 = v7 - 8;
  v25 = *(v7 - 8);
  v9 = *(v25 + 64);
  __chkstk_darwin(v7);
  v10 = [objc_allocWithZone(CKModifyRecordsOperation) init];
  sub_1002DE8D4();
  sub_100005814(&unk_1003E4DE0, &qword_1003432F0);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1003431D0;
  v12 = objc_autoreleasePoolPush();
  v13 = sub_1002E1D08(*(a1 + *(v8 + 40)), *(a1 + *(v8 + 40) + 8));
  if (!v13)
  {
    v13 = sub_10017D26C(a1);
  }

  aBlock[0] = v13;
  v14 = v13;
  sub_1001E2B8C(aBlock);
  objc_autoreleasePoolPop(v12);
  *(v11 + 32) = v14;
  sub_100016034(0, &qword_1003E0E18, CKRecord_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v10 setRecordsToSave:isa];

  sub_100194C44(a1, &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for BenefactorInfoRecord);
  v16 = (*(v25 + 80) + 24) & ~*(v25 + 80);
  v17 = (v9 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
  v18 = swift_allocObject();
  v18[2] = v5;
  sub_100194EC4(&v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v18 + v16, type metadata accessor for BenefactorInfoRecord);
  v19 = v26;
  v20 = v27;
  *(v18 + v17) = v27;
  v21 = (v18 + ((v17 + 15) & 0xFFFFFFFFFFFFFFF8));
  v22 = v28;
  *v21 = v19;
  v21[1] = v22;
  aBlock[4] = sub_100193C58;
  aBlock[5] = v18;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100179734;
  aBlock[3] = &unk_1003AC1B0;
  v23 = _Block_copy(aBlock);

  v24 = v20;

  [v10 setModifyRecordsCompletionBlock:v23];
  _Block_release(v23);
  [v24 addOperation:v10];
}

void sub_100176240(unint64_t a1, uint64_t a2, uint64_t a3, char *a4, char *a5, char *a6, void (*a7)(uint64_t), uint64_t a8)
{
  v57 = a8;
  v58 = a7;
  v53 = a6;
  v54 = a4;
  v56 = a5;
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_100005814(&unk_1003DF000, &unk_10033EC50);
  __chkstk_darwin(v14 - 8);
  v16 = &v50 - v15;
  v17 = type metadata accessor for CustodianRecord(0);
  v18 = *(v17 - 8);
  v19 = __chkstk_darwin(v17);
  v21 = &v50 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v23 = &v50 - v22;
  v24 = sub_100005814(&unk_1003DA200, &unk_10033FA80);
  v25 = __chkstk_darwin(v24);
  v55 = (&v50 - v26);
  if (a3)
  {
    v60[0] = a3;
    swift_errorRetain();
    sub_100005814(&unk_1003DBB60, &unk_10033E740);
    type metadata accessor for CKError(0);
    if (swift_dynamicCast())
    {
      v27 = v59;
      sub_100179758(v59, v56, v53, v58, v57);
    }

    else
    {
      v32 = v55;
      *v55 = a3;
      swift_storeEnumTagMultiPayload();
      swift_errorRetain();
      v58(v32);
      sub_100008D3C(v32, &unk_1003DA200, &unk_10033FA80);
    }

    return;
  }

  v53 = v21;
  v54 = v13;
  if (!a1)
  {
    return;
  }

  v28 = v25;
  if (a1 >> 62)
  {
    v48 = v25;
    v49 = _CocoaArrayWrapper.endIndex.getter();
    v28 = v48;
    if (!v49)
    {
      return;
    }
  }

  else if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    return;
  }

  v52 = v28;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v29 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
LABEL_22:
      swift_once();
      goto LABEL_14;
    }

    v29 = *(a1 + 32);
  }

  v30 = v56[*(v17 + 48)];
  v31 = v29;
  sub_1000EF6D0(v31, v30, v16);
  v21 = v10;
  v51 = v31;
  (*(v18 + 56))(v16, 0, 1, v17);
  sub_100194EC4(v16, v23, type metadata accessor for CustodianRecord);
  if (qword_1003D7F28 != -1)
  {
    goto LABEL_22;
  }

LABEL_14:
  v33 = type metadata accessor for Logger();
  sub_100008D04(v33, qword_1003FAA58);
  v34 = v53;
  sub_100194C44(v56, v53, type metadata accessor for CustodianRecord);
  v35 = Logger.logObject.getter();
  v36 = static os_log_type_t.default.getter();
  v37 = os_log_type_enabled(v35, v36);
  v38 = v54;
  if (v37)
  {
    v39 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    v56 = v23;
    v60[0] = v40;
    *v39 = 136315394;
    *(v39 + 4) = sub_10021145C(0x6169646F74737543, 0xEF64726F6365526ELL, v60);
    *(v39 + 12) = 2080;
    (*(v11 + 16))(v38, v34, v21);
    sub_100195024(v34, type metadata accessor for CustodianRecord);
    sub_100195084(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v41 = dispatch thunk of CustomStringConvertible.description.getter();
    v43 = v42;
    (*(v11 + 8))(v38, v21);
    v44 = sub_10021145C(v41, v43, v60);

    *(v39 + 14) = v44;
    _os_log_impl(&_mh_execute_header, v35, v36, "%s %s saved successfully", v39, 0x16u);
    swift_arrayDestroy();
    v23 = v56;
  }

  else
  {
    sub_100195024(v34, type metadata accessor for CustodianRecord);
  }

  v45 = v58;
  v46 = v51;
  v47 = v55;
  sub_100194C44(v23, v55, type metadata accessor for CustodianRecord);
  swift_storeEnumTagMultiPayload();
  v45(v47);

  sub_100008D3C(v47, &unk_1003DA200, &unk_10033FA80);
  sub_100195024(v23, type metadata accessor for CustodianRecord);
}

void sub_1001768D8(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char *a5, char *a6, void (*a7)(uint64_t), uint64_t a8)
{
  v58 = a8;
  v59 = a7;
  v54 = a6;
  v55 = a4;
  v57 = a5;
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_100005814(&unk_1003D91B0, qword_1003444F0);
  __chkstk_darwin(v14 - 8);
  v16 = &v51 - v15;
  v17 = type metadata accessor for CustodianRecoveryInfoRecord(0);
  v18 = *(v17 - 8);
  v19 = __chkstk_darwin(v17);
  v21 = &v51 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v23 = &v51 - v22;
  v24 = sub_100005814(&unk_1003DB610, &unk_10033FA90);
  v25 = __chkstk_darwin(v24);
  v56 = (&v51 - v26);
  if (a3)
  {
    v61[0] = a3;
    swift_errorRetain();
    sub_100005814(&unk_1003DBB60, &unk_10033E740);
    type metadata accessor for CKError(0);
    if (swift_dynamicCast())
    {
      v27 = v60;
      sub_100179CE4(v60, v57, v54, v59, v58);
    }

    else
    {
      v33 = v56;
      *v56 = a3;
      swift_storeEnumTagMultiPayload();
      swift_errorRetain();
      v59(v33);
      sub_100008D3C(v33, &unk_1003DB610, &unk_10033FA90);
    }

    return;
  }

  v54 = v21;
  v55 = v11;
  if (!a1)
  {
    return;
  }

  v28 = v10;
  v29 = v25;
  if (a1 >> 62)
  {
    v49 = v25;
    v50 = _CocoaArrayWrapper.endIndex.getter();
    v29 = v49;
    if (!v50)
    {
      return;
    }
  }

  else if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    return;
  }

  v53 = v29;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v30 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
LABEL_22:
      swift_once();
      goto LABEL_14;
    }

    v30 = *(a1 + 32);
  }

  v31 = v57[*(v17 + 40)];
  v32 = v30;
  sub_1000F3020(v32, v31, v16);
  v21 = v28;
  v52 = v32;
  (*(v18 + 56))(v16, 0, 1, v17);
  sub_100194EC4(v16, v23, type metadata accessor for CustodianRecoveryInfoRecord);
  if (qword_1003D7F28 != -1)
  {
    goto LABEL_22;
  }

LABEL_14:
  v34 = type metadata accessor for Logger();
  sub_100008D04(v34, qword_1003FAA58);
  v35 = v54;
  sub_100194C44(v57, v54, type metadata accessor for CustodianRecoveryInfoRecord);
  v36 = Logger.logObject.getter();
  v37 = static os_log_type_t.default.getter();
  v38 = os_log_type_enabled(v36, v37);
  v39 = v55;
  if (v38)
  {
    v40 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    v57 = v23;
    v61[0] = v41;
    *v40 = 136315394;
    *(v40 + 4) = sub_10021145C(0xD00000000000001BLL, 0x800000010032CEE0, v61);
    *(v40 + 12) = 2080;
    (*(v39 + 16))(v13, v35, v21);
    sub_100195024(v35, type metadata accessor for CustodianRecoveryInfoRecord);
    sub_100195084(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v42 = dispatch thunk of CustomStringConvertible.description.getter();
    v44 = v43;
    (*(v39 + 8))(v13, v21);
    v45 = sub_10021145C(v42, v44, v61);

    *(v40 + 14) = v45;
    _os_log_impl(&_mh_execute_header, v36, v37, "%s %s saved successfully", v40, 0x16u);
    swift_arrayDestroy();
    v23 = v57;
  }

  else
  {
    sub_100195024(v35, type metadata accessor for CustodianRecoveryInfoRecord);
  }

  v46 = v59;
  v47 = v52;
  v48 = v56;
  sub_100194C44(v23, v56, type metadata accessor for CustodianRecoveryInfoRecord);
  swift_storeEnumTagMultiPayload();
  v46(v48);

  sub_100008D3C(v48, &unk_1003DB610, &unk_10033FA90);
  sub_100195024(v23, type metadata accessor for CustodianRecoveryInfoRecord);
}

void sub_100176F6C(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char *a5, char *a6, void (*a7)(uint64_t), uint64_t a8)
{
  v58 = a8;
  v59 = a7;
  v54 = a6;
  v55 = a4;
  v57 = a5;
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_100005814(&qword_1003D91A8, &unk_10033EC40);
  __chkstk_darwin(v14 - 8);
  v16 = &v51 - v15;
  v17 = type metadata accessor for CustodianHealthRecord(0);
  v18 = *(v17 - 8);
  v19 = __chkstk_darwin(v17);
  v21 = &v51 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v23 = &v51 - v22;
  v24 = sub_100005814(&qword_1003D91E8, &qword_100346AC0);
  v25 = __chkstk_darwin(v24);
  v56 = (&v51 - v26);
  if (a3)
  {
    v61[0] = a3;
    swift_errorRetain();
    sub_100005814(&unk_1003DBB60, &unk_10033E740);
    type metadata accessor for CKError(0);
    if (swift_dynamicCast())
    {
      v27 = v60;
      sub_10017A270(v60, v57, v54, v59, v58);
    }

    else
    {
      v33 = v56;
      *v56 = a3;
      swift_storeEnumTagMultiPayload();
      swift_errorRetain();
      v59(v33);
      sub_100008D3C(v33, &qword_1003D91E8, &qword_100346AC0);
    }

    return;
  }

  v54 = v21;
  v55 = v11;
  if (!a1)
  {
    return;
  }

  v28 = v10;
  v29 = v25;
  if (a1 >> 62)
  {
    v49 = v25;
    v50 = _CocoaArrayWrapper.endIndex.getter();
    v29 = v49;
    if (!v50)
    {
      return;
    }
  }

  else if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    return;
  }

  v53 = v29;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v30 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
LABEL_22:
      swift_once();
      goto LABEL_14;
    }

    v30 = *(a1 + 32);
  }

  v31 = v57[*(v17 + 36)];
  v32 = v30;
  sub_1000EC0A4(v32, v31, v16);
  v21 = v28;
  v52 = v32;
  (*(v18 + 56))(v16, 0, 1, v17);
  sub_100194EC4(v16, v23, type metadata accessor for CustodianHealthRecord);
  if (qword_1003D7F28 != -1)
  {
    goto LABEL_22;
  }

LABEL_14:
  v34 = type metadata accessor for Logger();
  sub_100008D04(v34, qword_1003FAA58);
  v35 = v54;
  sub_100194C44(v57, v54, type metadata accessor for CustodianHealthRecord);
  v36 = Logger.logObject.getter();
  v37 = static os_log_type_t.default.getter();
  v38 = os_log_type_enabled(v36, v37);
  v39 = v55;
  if (v38)
  {
    v40 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    v57 = v23;
    v61[0] = v41;
    *v40 = 136315394;
    *(v40 + 4) = sub_10021145C(0xD000000000000015, 0x800000010032CDD0, v61);
    *(v40 + 12) = 2080;
    (*(v39 + 16))(v13, v35, v21);
    sub_100195024(v35, type metadata accessor for CustodianHealthRecord);
    sub_100195084(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v42 = dispatch thunk of CustomStringConvertible.description.getter();
    v44 = v43;
    (*(v39 + 8))(v13, v21);
    v45 = sub_10021145C(v42, v44, v61);

    *(v40 + 14) = v45;
    _os_log_impl(&_mh_execute_header, v36, v37, "%s %s saved successfully", v40, 0x16u);
    swift_arrayDestroy();
    v23 = v57;
  }

  else
  {
    sub_100195024(v35, type metadata accessor for CustodianHealthRecord);
  }

  v46 = v59;
  v47 = v52;
  v48 = v56;
  sub_100194C44(v23, v56, type metadata accessor for CustodianHealthRecord);
  swift_storeEnumTagMultiPayload();
  v46(v48);

  sub_100008D3C(v48, &qword_1003D91E8, &qword_100346AC0);
  sub_100195024(v23, type metadata accessor for CustodianHealthRecord);
}

void sub_100177600(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char *a5, char *a6, void (*a7)(uint64_t), uint64_t a8)
{
  v58 = a8;
  v59 = a7;
  v54 = a6;
  v55 = a4;
  v57 = a5;
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_100005814(&qword_1003D9270, &qword_10033ECF0);
  __chkstk_darwin(v14 - 8);
  v16 = &v51 - v15;
  v17 = type metadata accessor for CustodianshipInfoRecord(0);
  v18 = *(v17 - 8);
  v19 = __chkstk_darwin(v17);
  v21 = &v51 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v23 = &v51 - v22;
  v24 = sub_100005814(&unk_1003DA0E0, &unk_10033F1D0);
  v25 = __chkstk_darwin(v24);
  v56 = (&v51 - v26);
  if (a3)
  {
    v61[0] = a3;
    swift_errorRetain();
    sub_100005814(&unk_1003DBB60, &unk_10033E740);
    type metadata accessor for CKError(0);
    if (swift_dynamicCast())
    {
      v27 = v60;
      sub_10017A7FC(v60, v57, v54, v59, v58);
    }

    else
    {
      v33 = v56;
      *v56 = a3;
      swift_storeEnumTagMultiPayload();
      swift_errorRetain();
      v59(v33);
      sub_100008D3C(v33, &unk_1003DA0E0, &unk_10033F1D0);
    }

    return;
  }

  v54 = v21;
  v55 = v11;
  if (!a1)
  {
    return;
  }

  v28 = v10;
  v29 = v25;
  if (a1 >> 62)
  {
    v49 = v25;
    v50 = _CocoaArrayWrapper.endIndex.getter();
    v29 = v49;
    if (!v50)
    {
      return;
    }
  }

  else if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    return;
  }

  v53 = v29;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v30 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
LABEL_22:
      swift_once();
      goto LABEL_14;
    }

    v30 = *(a1 + 32);
  }

  v31 = v57[*(v17 + 36)];
  v32 = v30;
  sub_1000F80E0(v32, v31, v16);
  v21 = v28;
  v52 = v32;
  (*(v18 + 56))(v16, 0, 1, v17);
  sub_100194EC4(v16, v23, type metadata accessor for CustodianshipInfoRecord);
  if (qword_1003D7F28 != -1)
  {
    goto LABEL_22;
  }

LABEL_14:
  v34 = type metadata accessor for Logger();
  sub_100008D04(v34, qword_1003FAA58);
  v35 = v54;
  sub_100194C44(v57, v54, type metadata accessor for CustodianshipInfoRecord);
  v36 = Logger.logObject.getter();
  v37 = static os_log_type_t.default.getter();
  v38 = os_log_type_enabled(v36, v37);
  v39 = v55;
  if (v38)
  {
    v40 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    v57 = v23;
    v61[0] = v41;
    *v40 = 136315394;
    *(v40 + 4) = sub_10021145C(0xD000000000000017, 0x800000010032CE50, v61);
    *(v40 + 12) = 2080;
    (*(v39 + 16))(v13, v35, v21);
    sub_100195024(v35, type metadata accessor for CustodianshipInfoRecord);
    sub_100195084(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v42 = dispatch thunk of CustomStringConvertible.description.getter();
    v44 = v43;
    (*(v39 + 8))(v13, v21);
    v45 = sub_10021145C(v42, v44, v61);

    *(v40 + 14) = v45;
    _os_log_impl(&_mh_execute_header, v36, v37, "%s %s saved successfully", v40, 0x16u);
    swift_arrayDestroy();
    v23 = v57;
  }

  else
  {
    sub_100195024(v35, type metadata accessor for CustodianshipInfoRecord);
  }

  v46 = v59;
  v47 = v52;
  v48 = v56;
  sub_100194C44(v23, v56, type metadata accessor for CustodianshipInfoRecord);
  swift_storeEnumTagMultiPayload();
  v46(v48);

  sub_100008D3C(v48, &unk_1003DA0E0, &unk_10033F1D0);
  sub_100195024(v23, type metadata accessor for CustodianshipInfoRecord);
}

void sub_100177C94(unint64_t a1, uint64_t a2, uint64_t a3, char *a4, uint64_t a5, char *a6, void (*a7)(uint64_t), uint64_t a8)
{
  v58 = a8;
  v59 = a7;
  v54 = a6;
  v55 = a4;
  v57 = a5;
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 1);
  __chkstk_darwin(v10);
  v13 = v52 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_100005814(&qword_1003E0E20, &qword_100344490);
  __chkstk_darwin(v14 - 8);
  v16 = v52 - v15;
  v17 = type metadata accessor for InheritanceHealthRecord(0);
  v18 = *(v17 - 8);
  v19 = __chkstk_darwin(v17);
  v21 = v52 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v23 = v52 - v22;
  v24 = sub_100005814(&unk_1003E10C0, &qword_100346A70);
  v25 = __chkstk_darwin(v24);
  v56 = (v52 - v26);
  if (a3)
  {
    v61[0] = a3;
    swift_errorRetain();
    sub_100005814(&unk_1003DBB60, &unk_10033E740);
    type metadata accessor for CKError(0);
    if (swift_dynamicCast())
    {
      v27 = v60;
      sub_10017AD88(v60, v57, v54, v59, v58);
    }

    else
    {
      v32 = v56;
      *v56 = a3;
      swift_storeEnumTagMultiPayload();
      swift_errorRetain();
      v59(v32);
      sub_100008D3C(v32, &unk_1003E10C0, &qword_100346A70);
    }

    return;
  }

  v54 = v21;
  v55 = v18;
  v53 = v11;
  if (!a1)
  {
    return;
  }

  v28 = v25;
  v29 = v17;
  if (a1 >> 62)
  {
    v50 = v25;
    v51 = _CocoaArrayWrapper.endIndex.getter();
    v28 = v50;
    if (!v51)
    {
      return;
    }
  }

  else if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    return;
  }

  v52[1] = v28;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v17 = v10;
    v30 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
LABEL_22:
      swift_once();
      goto LABEL_14;
    }

    v17 = v10;
    v30 = *(a1 + 32);
  }

  a1 = v57;
  v31 = *(v57 + *(v29 + 36));
  v10 = v30;
  sub_1001EA130(v10, v31, v16);
  (*(v55 + 7))(v16, 0, 1, v29);
  v55 = v23;
  sub_100194EC4(v16, v23, type metadata accessor for InheritanceHealthRecord);
  if (qword_1003D7F28 != -1)
  {
    goto LABEL_22;
  }

LABEL_14:
  v33 = type metadata accessor for Logger();
  sub_100008D04(v33, qword_1003FAA58);
  v34 = v54;
  sub_100194C44(a1, v54, type metadata accessor for InheritanceHealthRecord);
  v35 = Logger.logObject.getter();
  v36 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v35, v36))
  {
    v37 = v34;
    v38 = swift_slowAlloc();
    v61[0] = swift_slowAlloc();
    *v38 = 136315394;
    *(v38 + 4) = sub_10021145C(0xD000000000000017, 0x8000000100330300, v61);
    *(v38 + 12) = 2080;
    v39 = *(v29 + 28);
    v40 = v53;
    (*(v53 + 16))(v13, v37 + v39, v17);
    sub_100195024(v37, type metadata accessor for InheritanceHealthRecord);
    sub_100195084(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v41 = dispatch thunk of CustomStringConvertible.description.getter();
    v42 = v13;
    v43 = v41;
    v45 = v44;
    (*(v40 + 8))(v42, v17);
    v46 = sub_10021145C(v43, v45, v61);

    *(v38 + 14) = v46;
    _os_log_impl(&_mh_execute_header, v35, v36, "%s %s saved successfully", v38, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
    sub_100195024(v34, type metadata accessor for InheritanceHealthRecord);
  }

  v47 = v59;
  v48 = v55;
  v49 = v56;
  sub_100194C44(v55, v56, type metadata accessor for InheritanceHealthRecord);
  swift_storeEnumTagMultiPayload();
  v47(v49);

  sub_100008D3C(v49, &unk_1003E10C0, &qword_100346A70);
  sub_100195024(v48, type metadata accessor for InheritanceHealthRecord);
}

void sub_10017833C(unint64_t a1, uint64_t a2, uint64_t a3, char *a4, uint64_t a5, char *a6, void (*a7)(uint64_t), uint64_t a8)
{
  v58 = a8;
  v59 = a7;
  v54 = a6;
  v55 = a4;
  v57 = a5;
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 1);
  __chkstk_darwin(v10);
  v13 = v52 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_100005814(&unk_1003E4F30, &unk_1003444E0);
  __chkstk_darwin(v14 - 8);
  v16 = v52 - v15;
  v17 = type metadata accessor for BeneficiaryInfoRecord(0);
  v18 = *(v17 - 8);
  v19 = __chkstk_darwin(v17);
  v21 = v52 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v23 = v52 - v22;
  v24 = sub_100005814(&unk_1003E10A0, &unk_100344480);
  v25 = __chkstk_darwin(v24);
  v56 = (v52 - v26);
  if (a3)
  {
    v61[0] = a3;
    swift_errorRetain();
    sub_100005814(&unk_1003DBB60, &unk_10033E740);
    type metadata accessor for CKError(0);
    if (swift_dynamicCast())
    {
      v27 = v60;
      sub_10017B2AC(v60, v57, v54, v59, v58);
    }

    else
    {
      v32 = v56;
      *v56 = a3;
      swift_storeEnumTagMultiPayload();
      swift_errorRetain();
      v59(v32);
      sub_100008D3C(v32, &unk_1003E10A0, &unk_100344480);
    }

    return;
  }

  v54 = v21;
  v55 = v18;
  v53 = v11;
  if (!a1)
  {
    return;
  }

  v28 = v25;
  v29 = v17;
  if (a1 >> 62)
  {
    v50 = v25;
    v51 = _CocoaArrayWrapper.endIndex.getter();
    v28 = v50;
    if (!v51)
    {
      return;
    }
  }

  else if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    return;
  }

  v52[1] = v28;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v17 = v10;
    v30 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
LABEL_22:
      swift_once();
      goto LABEL_14;
    }

    v17 = v10;
    v30 = *(a1 + 32);
  }

  a1 = v57;
  v31 = *(v57 + *(v29 + 40));
  v10 = v30;
  sub_1001E4CD8(v10, v31, v16);
  (*(v55 + 7))(v16, 0, 1, v29);
  v55 = v23;
  sub_100194EC4(v16, v23, type metadata accessor for BeneficiaryInfoRecord);
  if (qword_1003D7F28 != -1)
  {
    goto LABEL_22;
  }

LABEL_14:
  v33 = type metadata accessor for Logger();
  sub_100008D04(v33, qword_1003FAA58);
  v34 = v54;
  sub_100194C44(a1, v54, type metadata accessor for BeneficiaryInfoRecord);
  v35 = Logger.logObject.getter();
  v36 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v35, v36))
  {
    v37 = v34;
    v38 = swift_slowAlloc();
    v61[0] = swift_slowAlloc();
    *v38 = 136315394;
    *(v38 + 4) = sub_10021145C(0xD000000000000015, 0x8000000100330410, v61);
    *(v38 + 12) = 2080;
    v39 = *(v29 + 32);
    v40 = v53;
    (*(v53 + 16))(v13, v37 + v39, v17);
    sub_100195024(v37, type metadata accessor for BeneficiaryInfoRecord);
    sub_100195084(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v41 = dispatch thunk of CustomStringConvertible.description.getter();
    v42 = v13;
    v43 = v41;
    v45 = v44;
    (*(v40 + 8))(v42, v17);
    v46 = sub_10021145C(v43, v45, v61);

    *(v38 + 14) = v46;
    _os_log_impl(&_mh_execute_header, v35, v36, "%s %s saved successfully", v38, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
    sub_100195024(v34, type metadata accessor for BeneficiaryInfoRecord);
  }

  v47 = v59;
  v48 = v55;
  v49 = v56;
  sub_100194C44(v55, v56, type metadata accessor for BeneficiaryInfoRecord);
  swift_storeEnumTagMultiPayload();
  v47(v49);

  sub_100008D3C(v49, &unk_1003E10A0, &unk_100344480);
  sub_100195024(v48, type metadata accessor for BeneficiaryInfoRecord);
}

void sub_1001789E4(unint64_t a1, uint64_t a2, uint64_t a3, char *a4, uint64_t a5, char *a6, void (*a7)(uint64_t), uint64_t a8)
{
  v58 = a8;
  v59 = a7;
  v54 = a6;
  v55 = a4;
  v57 = a5;
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 1);
  __chkstk_darwin(v10);
  v13 = v52 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_100005814(&qword_1003E4F40, &unk_1003446D0);
  __chkstk_darwin(v14 - 8);
  v16 = v52 - v15;
  v17 = type metadata accessor for InheritanceInvitationRecord(0);
  v18 = *(v17 - 8);
  v19 = __chkstk_darwin(v17);
  v21 = v52 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v23 = v52 - v22;
  v24 = sub_100005814(&qword_1003E1290, &unk_1003444C0);
  v25 = __chkstk_darwin(v24);
  v56 = (v52 - v26);
  if (a3)
  {
    v61[0] = a3;
    swift_errorRetain();
    sub_100005814(&unk_1003DBB60, &unk_10033E740);
    type metadata accessor for CKError(0);
    if (swift_dynamicCast())
    {
      v27 = v60;
      sub_10017B7D0(v60, v57, v54, v59, v58);
    }

    else
    {
      v32 = v56;
      *v56 = a3;
      swift_storeEnumTagMultiPayload();
      swift_errorRetain();
      v59(v32);
      sub_100008D3C(v32, &qword_1003E1290, &unk_1003444C0);
    }

    return;
  }

  v54 = v21;
  v55 = v18;
  v53 = v11;
  if (!a1)
  {
    return;
  }

  v28 = v25;
  v29 = v17;
  if (a1 >> 62)
  {
    v50 = v25;
    v51 = _CocoaArrayWrapper.endIndex.getter();
    v28 = v50;
    if (!v51)
    {
      return;
    }
  }

  else if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    return;
  }

  v52[1] = v28;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v17 = v10;
    v30 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
LABEL_22:
      swift_once();
      goto LABEL_14;
    }

    v17 = v10;
    v30 = *(a1 + 32);
  }

  a1 = v57;
  v31 = *(v57 + *(v29 + 44));
  v10 = v30;
  sub_1001EDB14(v10, v31, v16);
  (*(v55 + 7))(v16, 0, 1, v29);
  v55 = v23;
  sub_100194EC4(v16, v23, type metadata accessor for InheritanceInvitationRecord);
  if (qword_1003D7F28 != -1)
  {
    goto LABEL_22;
  }

LABEL_14:
  v33 = type metadata accessor for Logger();
  sub_100008D04(v33, qword_1003FAA58);
  v34 = v54;
  sub_100194C44(a1, v54, type metadata accessor for InheritanceInvitationRecord);
  v35 = Logger.logObject.getter();
  v36 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v35, v36))
  {
    v37 = v34;
    v38 = swift_slowAlloc();
    v61[0] = swift_slowAlloc();
    *v38 = 136315394;
    *(v38 + 4) = sub_10021145C(0xD00000000000001BLL, 0x8000000100330380, v61);
    *(v38 + 12) = 2080;
    v39 = *(v29 + 36);
    v40 = v53;
    (*(v53 + 16))(v13, v37 + v39, v17);
    sub_100195024(v37, type metadata accessor for InheritanceInvitationRecord);
    sub_100195084(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v41 = dispatch thunk of CustomStringConvertible.description.getter();
    v42 = v13;
    v43 = v41;
    v45 = v44;
    (*(v40 + 8))(v42, v17);
    v46 = sub_10021145C(v43, v45, v61);

    *(v38 + 14) = v46;
    _os_log_impl(&_mh_execute_header, v35, v36, "%s %s saved successfully", v38, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
    sub_100195024(v34, type metadata accessor for InheritanceInvitationRecord);
  }

  v47 = v59;
  v48 = v55;
  v49 = v56;
  sub_100194C44(v55, v56, type metadata accessor for InheritanceInvitationRecord);
  swift_storeEnumTagMultiPayload();
  v47(v49);

  sub_100008D3C(v49, &qword_1003E1290, &unk_1003444C0);
  sub_100195024(v48, type metadata accessor for InheritanceInvitationRecord);
}

void sub_10017908C(unint64_t a1, uint64_t a2, uint64_t a3, char *a4, uint64_t a5, char *a6, void (*a7)(uint64_t), uint64_t a8)
{
  v58 = a8;
  v59 = a7;
  v54 = a6;
  v55 = a4;
  v57 = a5;
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 1);
  __chkstk_darwin(v10);
  v13 = v52 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_100005814(&unk_1003E1DE0, &qword_1003444D8);
  __chkstk_darwin(v14 - 8);
  v16 = v52 - v15;
  v17 = type metadata accessor for BenefactorInfoRecord(0);
  v18 = *(v17 - 8);
  v19 = __chkstk_darwin(v17);
  v21 = v52 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v23 = v52 - v22;
  v24 = sub_100005814(&unk_1003E1DD0, &qword_1003444D0);
  v25 = __chkstk_darwin(v24);
  v56 = (v52 - v26);
  if (a3)
  {
    v61[0] = a3;
    swift_errorRetain();
    sub_100005814(&unk_1003DBB60, &unk_10033E740);
    type metadata accessor for CKError(0);
    if (swift_dynamicCast())
    {
      v27 = v60;
      sub_10017BCF4(v60, v57, v54, v59, v58);
    }

    else
    {
      v32 = v56;
      *v56 = a3;
      swift_storeEnumTagMultiPayload();
      swift_errorRetain();
      v59(v32);
      sub_100008D3C(v32, &unk_1003E1DD0, &qword_1003444D0);
    }

    return;
  }

  v54 = v21;
  v55 = v18;
  v53 = v11;
  if (!a1)
  {
    return;
  }

  v28 = v25;
  v29 = v17;
  if (a1 >> 62)
  {
    v50 = v25;
    v51 = _CocoaArrayWrapper.endIndex.getter();
    v28 = v50;
    if (!v51)
    {
      return;
    }
  }

  else if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    return;
  }

  v52[1] = v28;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v17 = v10;
    v30 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
LABEL_22:
      swift_once();
      goto LABEL_14;
    }

    v17 = v10;
    v30 = *(a1 + 32);
  }

  a1 = v57;
  v31 = *(v57 + *(v29 + 36));
  v10 = v30;
  sub_1001E17B0(v10, v31, v16);
  (*(v55 + 7))(v16, 0, 1, v29);
  v55 = v23;
  sub_100194EC4(v16, v23, type metadata accessor for BenefactorInfoRecord);
  if (qword_1003D7F28 != -1)
  {
    goto LABEL_22;
  }

LABEL_14:
  v33 = type metadata accessor for Logger();
  sub_100008D04(v33, qword_1003FAA58);
  v34 = v54;
  sub_100194C44(a1, v54, type metadata accessor for BenefactorInfoRecord);
  v35 = Logger.logObject.getter();
  v36 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v35, v36))
  {
    v37 = v34;
    v38 = swift_slowAlloc();
    v61[0] = swift_slowAlloc();
    *v38 = 136315394;
    *(v38 + 4) = sub_10021145C(0xD000000000000014, 0x80000001003303F0, v61);
    *(v38 + 12) = 2080;
    v39 = *(v29 + 28);
    v40 = v53;
    (*(v53 + 16))(v13, v37 + v39, v17);
    sub_100195024(v37, type metadata accessor for BenefactorInfoRecord);
    sub_100195084(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v41 = dispatch thunk of CustomStringConvertible.description.getter();
    v42 = v13;
    v43 = v41;
    v45 = v44;
    (*(v40 + 8))(v42, v17);
    v46 = sub_10021145C(v43, v45, v61);

    *(v38 + 14) = v46;
    _os_log_impl(&_mh_execute_header, v35, v36, "%s %s saved successfully", v38, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
    sub_100195024(v34, type metadata accessor for BenefactorInfoRecord);
  }

  v47 = v59;
  v48 = v55;
  v49 = v56;
  sub_100194C44(v55, v56, type metadata accessor for BenefactorInfoRecord);
  swift_storeEnumTagMultiPayload();
  v47(v49);

  sub_100008D3C(v49, &unk_1003E1DD0, &qword_1003444D0);
  sub_100195024(v48, type metadata accessor for BenefactorInfoRecord);
}

uint64_t sub_100179758(void *a1, uint64_t a2, uint64_t a3, void (*a4)(void *), uint64_t a5)
{
  v45 = a4;
  v46 = a5;
  v42 = a3;
  v7 = sub_100005814(&unk_1003DA200, &unk_10033FA80);
  __chkstk_darwin(v7);
  v9 = &v40 - v8;
  v10 = type metadata accessor for CustodianRecord(0);
  v43 = *(v10 - 8);
  v11 = *(v43 + 64);
  __chkstk_darwin(v10 - 8);
  type metadata accessor for CKError(0);
  v48 = 26;
  sub_100212324(_swiftEmptyArrayStorage);
  sub_100195084(&qword_1003DA8D0, type metadata accessor for CKError, &unk_10033DE84);
  _BridgedStoredNSError.init(_:userInfo:)();
  v12 = v49;
  v48 = v49;
  _BridgedStoredNSError.code.getter();

  v13 = sub_1002DF114(v47, a1);
  if (v13 || (v40 = v7, v41 = v9, v48 = 28, sub_100212324(_swiftEmptyArrayStorage), _BridgedStoredNSError.init(_:userInfo:)(), v14 = v49, v48 = v49, _BridgedStoredNSError.code.getter(), v14, (v13 = sub_1002DF114(v47, a1)) != 0))
  {

    sub_100194C44(a2, &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for CustodianRecord);
    v15 = (*(v43 + 80) + 40) & ~*(v43 + 80);
    v16 = swift_allocObject();
    v17 = v46;
    v16[2] = v45;
    v16[3] = v17;
    v16[4] = v44;
    sub_100194EC4(&v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + v15, type metadata accessor for CustodianRecord);

    sub_100190C00(a2, sub_100194C18, v16);
  }

  else
  {
    v19 = a1;
    v48 = 14;
    sub_100212324(_swiftEmptyArrayStorage);
    _BridgedStoredNSError.init(_:userInfo:)();
    v20 = v49;
    v48 = v49;
    _BridgedStoredNSError.code.getter();

    v21 = sub_1002DF114(v47, v19);
    if (v21)
    {

      v22 = v41;
      if (qword_1003D7F28 != -1)
      {
        swift_once();
      }

      v23 = type metadata accessor for Logger();
      sub_100008D04(v23, qword_1003FAA58);
      v24 = Logger.logObject.getter();
      v25 = static os_log_type_t.error.getter();
      v26 = os_log_type_enabled(v24, v25);
      v27 = v42;
      if (v26)
      {
        v28 = swift_slowAlloc();
        *v28 = 0;
        _os_log_impl(&_mh_execute_header, v24, v25, "Conflicted record. Need to resolve the conflict before saving.", v28, 2u);
      }

      sub_1002E45AC(v19, v27);
      *v22 = v19;
      swift_storeEnumTagMultiPayload();
      v29 = v19;
    }

    else
    {
      v22 = v41;
      if (qword_1003D7F28 != -1)
      {
        swift_once();
      }

      v30 = type metadata accessor for Logger();
      sub_100008D04(v30, qword_1003FAA58);
      v31 = v19;
      v32 = Logger.logObject.getter();
      v33 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v32, v33))
      {
        v34 = swift_slowAlloc();
        v35 = swift_slowAlloc();
        v49 = v35;
        *v34 = 136315138;
        v36 = related decl 'e' for CKErrorCode.description.getter();
        v38 = sub_10021145C(v36, v37, &v49);

        *(v34 + 4) = v38;
        _os_log_impl(&_mh_execute_header, v32, v33, "Unknown error while saving the record %s.", v34, 0xCu);
        sub_10000839C(v35);
      }

      *v22 = v31;
      swift_storeEnumTagMultiPayload();
      v39 = v31;
    }

    v45(v22);
    return sub_100008D3C(v22, &unk_1003DA200, &unk_10033FA80);
  }
}

uint64_t sub_100179CE4(void *a1, uint64_t a2, uint64_t a3, void (*a4)(void *), uint64_t a5)
{
  v45 = a4;
  v46 = a5;
  v42 = a3;
  v7 = sub_100005814(&unk_1003DB610, &unk_10033FA90);
  __chkstk_darwin(v7);
  v9 = &v40 - v8;
  v10 = type metadata accessor for CustodianRecoveryInfoRecord(0);
  v43 = *(v10 - 8);
  v11 = *(v43 + 64);
  __chkstk_darwin(v10 - 8);
  type metadata accessor for CKError(0);
  v48 = 26;
  sub_100212324(_swiftEmptyArrayStorage);
  sub_100195084(&qword_1003DA8D0, type metadata accessor for CKError, &unk_10033DE84);
  _BridgedStoredNSError.init(_:userInfo:)();
  v12 = v49;
  v48 = v49;
  _BridgedStoredNSError.code.getter();

  v13 = sub_1002DF114(v47, a1);
  if (v13 || (v40 = v7, v41 = v9, v48 = 28, sub_100212324(_swiftEmptyArrayStorage), _BridgedStoredNSError.init(_:userInfo:)(), v14 = v49, v48 = v49, _BridgedStoredNSError.code.getter(), v14, (v13 = sub_1002DF114(v47, a1)) != 0))
  {

    sub_100194C44(a2, &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for CustodianRecoveryInfoRecord);
    v15 = (*(v43 + 80) + 40) & ~*(v43 + 80);
    v16 = swift_allocObject();
    v17 = v46;
    v16[2] = v45;
    v16[3] = v17;
    v16[4] = v44;
    sub_100194EC4(&v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + v15, type metadata accessor for CustodianRecoveryInfoRecord);

    sub_100190F64(a2, sub_1001954C8, v16);
  }

  else
  {
    v19 = a1;
    v48 = 14;
    sub_100212324(_swiftEmptyArrayStorage);
    _BridgedStoredNSError.init(_:userInfo:)();
    v20 = v49;
    v48 = v49;
    _BridgedStoredNSError.code.getter();

    v21 = sub_1002DF114(v47, v19);
    if (v21)
    {

      v22 = v41;
      if (qword_1003D7F28 != -1)
      {
        swift_once();
      }

      v23 = type metadata accessor for Logger();
      sub_100008D04(v23, qword_1003FAA58);
      v24 = Logger.logObject.getter();
      v25 = static os_log_type_t.error.getter();
      v26 = os_log_type_enabled(v24, v25);
      v27 = v42;
      if (v26)
      {
        v28 = swift_slowAlloc();
        *v28 = 0;
        _os_log_impl(&_mh_execute_header, v24, v25, "Conflicted record. Need to resolve the conflict before saving.", v28, 2u);
      }

      sub_1002E45AC(v19, v27);
      *v22 = v19;
      swift_storeEnumTagMultiPayload();
      v29 = v19;
    }

    else
    {
      v22 = v41;
      if (qword_1003D7F28 != -1)
      {
        swift_once();
      }

      v30 = type metadata accessor for Logger();
      sub_100008D04(v30, qword_1003FAA58);
      v31 = v19;
      v32 = Logger.logObject.getter();
      v33 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v32, v33))
      {
        v34 = swift_slowAlloc();
        v35 = swift_slowAlloc();
        v49 = v35;
        *v34 = 136315138;
        v36 = related decl 'e' for CKErrorCode.description.getter();
        v38 = sub_10021145C(v36, v37, &v49);

        *(v34 + 4) = v38;
        _os_log_impl(&_mh_execute_header, v32, v33, "Unknown error while saving the record %s.", v34, 0xCu);
        sub_10000839C(v35);
      }

      *v22 = v31;
      swift_storeEnumTagMultiPayload();
      v39 = v31;
    }

    v45(v22);
    return sub_100008D3C(v22, &unk_1003DB610, &unk_10033FA90);
  }
}

uint64_t sub_10017A270(void *a1, uint64_t a2, uint64_t a3, void (*a4)(void *), uint64_t a5)
{
  v45 = a4;
  v46 = a5;
  v42 = a3;
  v7 = sub_100005814(&qword_1003D91E8, &qword_100346AC0);
  __chkstk_darwin(v7);
  v9 = &v40 - v8;
  v10 = type metadata accessor for CustodianHealthRecord(0);
  v43 = *(v10 - 8);
  v11 = *(v43 + 64);
  __chkstk_darwin(v10 - 8);
  type metadata accessor for CKError(0);
  v48 = 26;
  sub_100212324(_swiftEmptyArrayStorage);
  sub_100195084(&qword_1003DA8D0, type metadata accessor for CKError, &unk_10033DE84);
  _BridgedStoredNSError.init(_:userInfo:)();
  v12 = v49;
  v48 = v49;
  _BridgedStoredNSError.code.getter();

  v13 = sub_1002DF114(v47, a1);
  if (v13 || (v40 = v7, v41 = v9, v48 = 28, sub_100212324(_swiftEmptyArrayStorage), _BridgedStoredNSError.init(_:userInfo:)(), v14 = v49, v48 = v49, _BridgedStoredNSError.code.getter(), v14, (v13 = sub_1002DF114(v47, a1)) != 0))
  {

    sub_100194C44(a2, &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for CustodianHealthRecord);
    v15 = (*(v43 + 80) + 40) & ~*(v43 + 80);
    v16 = swift_allocObject();
    v17 = v46;
    v16[2] = v45;
    v16[3] = v17;
    v16[4] = v44;
    sub_100194EC4(&v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + v15, type metadata accessor for CustodianHealthRecord);

    sub_1001912C8(a2, sub_100195930, v16);
  }

  else
  {
    v19 = a1;
    v48 = 14;
    sub_100212324(_swiftEmptyArrayStorage);
    _BridgedStoredNSError.init(_:userInfo:)();
    v20 = v49;
    v48 = v49;
    _BridgedStoredNSError.code.getter();

    v21 = sub_1002DF114(v47, v19);
    if (v21)
    {

      v22 = v41;
      if (qword_1003D7F28 != -1)
      {
        swift_once();
      }

      v23 = type metadata accessor for Logger();
      sub_100008D04(v23, qword_1003FAA58);
      v24 = Logger.logObject.getter();
      v25 = static os_log_type_t.error.getter();
      v26 = os_log_type_enabled(v24, v25);
      v27 = v42;
      if (v26)
      {
        v28 = swift_slowAlloc();
        *v28 = 0;
        _os_log_impl(&_mh_execute_header, v24, v25, "Conflicted record. Need to resolve the conflict before saving.", v28, 2u);
      }

      sub_1002E45AC(v19, v27);
      *v22 = v19;
      swift_storeEnumTagMultiPayload();
      v29 = v19;
    }

    else
    {
      v22 = v41;
      if (qword_1003D7F28 != -1)
      {
        swift_once();
      }

      v30 = type metadata accessor for Logger();
      sub_100008D04(v30, qword_1003FAA58);
      v31 = v19;
      v32 = Logger.logObject.getter();
      v33 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v32, v33))
      {
        v34 = swift_slowAlloc();
        v35 = swift_slowAlloc();
        v49 = v35;
        *v34 = 136315138;
        v36 = related decl 'e' for CKErrorCode.description.getter();
        v38 = sub_10021145C(v36, v37, &v49);

        *(v34 + 4) = v38;
        _os_log_impl(&_mh_execute_header, v32, v33, "Unknown error while saving the record %s.", v34, 0xCu);
        sub_10000839C(v35);
      }

      *v22 = v31;
      swift_storeEnumTagMultiPayload();
      v39 = v31;
    }

    v45(v22);
    return sub_100008D3C(v22, &qword_1003D91E8, &qword_100346AC0);
  }
}

uint64_t sub_10017A7FC(void *a1, uint64_t a2, uint64_t a3, void (*a4)(void *), uint64_t a5)
{
  v45 = a4;
  v46 = a5;
  v42 = a3;
  v7 = sub_100005814(&unk_1003DA0E0, &unk_10033F1D0);
  __chkstk_darwin(v7);
  v9 = &v40 - v8;
  v10 = type metadata accessor for CustodianshipInfoRecord(0);
  v43 = *(v10 - 8);
  v11 = *(v43 + 64);
  __chkstk_darwin(v10 - 8);
  type metadata accessor for CKError(0);
  v48 = 26;
  sub_100212324(_swiftEmptyArrayStorage);
  sub_100195084(&qword_1003DA8D0, type metadata accessor for CKError, &unk_10033DE84);
  _BridgedStoredNSError.init(_:userInfo:)();
  v12 = v49;
  v48 = v49;
  _BridgedStoredNSError.code.getter();

  v13 = sub_1002DF114(v47, a1);
  if (v13 || (v40 = v7, v41 = v9, v48 = 28, sub_100212324(_swiftEmptyArrayStorage), _BridgedStoredNSError.init(_:userInfo:)(), v14 = v49, v48 = v49, _BridgedStoredNSError.code.getter(), v14, (v13 = sub_1002DF114(v47, a1)) != 0))
  {

    sub_100194C44(a2, &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for CustodianshipInfoRecord);
    v15 = (*(v43 + 80) + 40) & ~*(v43 + 80);
    v16 = swift_allocObject();
    v17 = v46;
    v16[2] = v45;
    v16[3] = v17;
    v16[4] = v44;
    sub_100194EC4(&v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + v15, type metadata accessor for CustodianshipInfoRecord);

    sub_10019162C(a2, sub_100192C18, v16);
  }

  else
  {
    v19 = a1;
    v48 = 14;
    sub_100212324(_swiftEmptyArrayStorage);
    _BridgedStoredNSError.init(_:userInfo:)();
    v20 = v49;
    v48 = v49;
    _BridgedStoredNSError.code.getter();

    v21 = sub_1002DF114(v47, v19);
    if (v21)
    {

      v22 = v41;
      if (qword_1003D7F28 != -1)
      {
        swift_once();
      }

      v23 = type metadata accessor for Logger();
      sub_100008D04(v23, qword_1003FAA58);
      v24 = Logger.logObject.getter();
      v25 = static os_log_type_t.error.getter();
      v26 = os_log_type_enabled(v24, v25);
      v27 = v42;
      if (v26)
      {
        v28 = swift_slowAlloc();
        *v28 = 0;
        _os_log_impl(&_mh_execute_header, v24, v25, "Conflicted record. Need to resolve the conflict before saving.", v28, 2u);
      }

      sub_1002E45AC(v19, v27);
      *v22 = v19;
      swift_storeEnumTagMultiPayload();
      v29 = v19;
    }

    else
    {
      v22 = v41;
      if (qword_1003D7F28 != -1)
      {
        swift_once();
      }

      v30 = type metadata accessor for Logger();
      sub_100008D04(v30, qword_1003FAA58);
      v31 = v19;
      v32 = Logger.logObject.getter();
      v33 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v32, v33))
      {
        v34 = swift_slowAlloc();
        v35 = swift_slowAlloc();
        v49 = v35;
        *v34 = 136315138;
        v36 = related decl 'e' for CKErrorCode.description.getter();
        v38 = sub_10021145C(v36, v37, &v49);

        *(v34 + 4) = v38;
        _os_log_impl(&_mh_execute_header, v32, v33, "Unknown error while saving the record %s.", v34, 0xCu);
        sub_10000839C(v35);
      }

      *v22 = v31;
      swift_storeEnumTagMultiPayload();
      v39 = v31;
    }

    v45(v22);
    return sub_100008D3C(v22, &unk_1003DA0E0, &unk_10033F1D0);
  }
}

uint64_t sub_10017AD88(void *a1, uint64_t a2, uint64_t a3, void (*a4)(void *), uint64_t a5)
{
  v41 = a4;
  v42 = a5;
  v38 = a3;
  v7 = sub_100005814(&unk_1003E10C0, &qword_100346A70);
  __chkstk_darwin(v7);
  v9 = v37 - v8;
  v10 = type metadata accessor for InheritanceHealthRecord(0);
  v39 = *(v10 - 8);
  v11 = *(v39 + 64);
  __chkstk_darwin(v10 - 8);
  type metadata accessor for CKError(0);
  v44 = 26;
  sub_100212324(_swiftEmptyArrayStorage);
  sub_100195084(&qword_1003DA8D0, type metadata accessor for CKError, &unk_10033DE84);
  _BridgedStoredNSError.init(_:userInfo:)();
  v12 = v45;
  v44 = v45;
  _BridgedStoredNSError.code.getter();

  v13 = sub_1002DF114(v43, a1);
  if (v13 || (v37[1] = v7, v44 = 28, sub_100212324(_swiftEmptyArrayStorage), _BridgedStoredNSError.init(_:userInfo:)(), v14 = v45, v44 = v45, _BridgedStoredNSError.code.getter(), v14, (v13 = sub_1002DF114(v43, a1)) != 0))
  {

    sub_100194C44(a2, v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for InheritanceHealthRecord);
    v15 = (*(v39 + 80) + 40) & ~*(v39 + 80);
    v16 = swift_allocObject();
    v17 = v42;
    v16[2] = v41;
    v16[3] = v17;
    v16[4] = v40;
    sub_100194EC4(v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + v15, type metadata accessor for InheritanceHealthRecord);

    sub_100191990(a2, sub_100190B54, v16);
  }

  else
  {
    v19 = v9;
    if (sub_1002DECC8(a1))
    {
      if (qword_1003D7F28 != -1)
      {
        swift_once();
      }

      v20 = type metadata accessor for Logger();
      sub_100008D04(v20, qword_1003FAA58);
      v21 = Logger.logObject.getter();
      v22 = static os_log_type_t.error.getter();
      v23 = os_log_type_enabled(v21, v22);
      v24 = v38;
      if (v23)
      {
        v25 = swift_slowAlloc();
        *v25 = 0;
        _os_log_impl(&_mh_execute_header, v21, v22, "Conflicted record. Need to resolve the conflict before saving.", v25, 2u);
      }

      sub_1002E45AC(a1, v24);
      *v19 = a1;
      swift_storeEnumTagMultiPayload();
      v26 = a1;
    }

    else
    {
      if (qword_1003D7F28 != -1)
      {
        swift_once();
      }

      v27 = type metadata accessor for Logger();
      sub_100008D04(v27, qword_1003FAA58);
      v28 = a1;
      v29 = Logger.logObject.getter();
      v30 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        v32 = swift_slowAlloc();
        v45 = v32;
        *v31 = 136315138;
        v33 = related decl 'e' for CKErrorCode.description.getter();
        v35 = sub_10021145C(v33, v34, &v45);

        *(v31 + 4) = v35;
        _os_log_impl(&_mh_execute_header, v29, v30, "Unknown error while saving the record %s.", v31, 0xCu);
        sub_10000839C(v32);
      }

      *v19 = v28;
      swift_storeEnumTagMultiPayload();
      v36 = v28;
    }

    v41(v19);
    return sub_100008D3C(v19, &unk_1003E10C0, &qword_100346A70);
  }
}

uint64_t sub_10017B2AC(void *a1, uint64_t a2, uint64_t a3, void (*a4)(void *), uint64_t a5)
{
  v41 = a4;
  v42 = a5;
  v38 = a3;
  v7 = sub_100005814(&unk_1003E10A0, &unk_100344480);
  __chkstk_darwin(v7);
  v9 = v37 - v8;
  v10 = type metadata accessor for BeneficiaryInfoRecord(0);
  v39 = *(v10 - 8);
  v11 = *(v39 + 64);
  __chkstk_darwin(v10 - 8);
  type metadata accessor for CKError(0);
  v44 = 26;
  sub_100212324(_swiftEmptyArrayStorage);
  sub_100195084(&qword_1003DA8D0, type metadata accessor for CKError, &unk_10033DE84);
  _BridgedStoredNSError.init(_:userInfo:)();
  v12 = v45;
  v44 = v45;
  _BridgedStoredNSError.code.getter();

  v13 = sub_1002DF114(v43, a1);
  if (v13 || (v37[1] = v7, v44 = 28, sub_100212324(_swiftEmptyArrayStorage), _BridgedStoredNSError.init(_:userInfo:)(), v14 = v45, v44 = v45, _BridgedStoredNSError.code.getter(), v14, (v13 = sub_1002DF114(v43, a1)) != 0))
  {

    sub_100194C44(a2, v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for BeneficiaryInfoRecord);
    v15 = (*(v39 + 80) + 40) & ~*(v39 + 80);
    v16 = swift_allocObject();
    v17 = v42;
    v16[2] = v41;
    v16[3] = v17;
    v16[4] = v40;
    sub_100194EC4(v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + v15, type metadata accessor for BeneficiaryInfoRecord);

    sub_100191EB0(a2, sub_10019429C, v16);
  }

  else
  {
    v19 = v9;
    if (sub_1002DECC8(a1))
    {
      if (qword_1003D7F28 != -1)
      {
        swift_once();
      }

      v20 = type metadata accessor for Logger();
      sub_100008D04(v20, qword_1003FAA58);
      v21 = Logger.logObject.getter();
      v22 = static os_log_type_t.error.getter();
      v23 = os_log_type_enabled(v21, v22);
      v24 = v38;
      if (v23)
      {
        v25 = swift_slowAlloc();
        *v25 = 0;
        _os_log_impl(&_mh_execute_header, v21, v22, "Conflicted record. Need to resolve the conflict before saving.", v25, 2u);
      }

      sub_1002E45AC(a1, v24);
      *v19 = a1;
      swift_storeEnumTagMultiPayload();
      v26 = a1;
    }

    else
    {
      if (qword_1003D7F28 != -1)
      {
        swift_once();
      }

      v27 = type metadata accessor for Logger();
      sub_100008D04(v27, qword_1003FAA58);
      v28 = a1;
      v29 = Logger.logObject.getter();
      v30 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        v32 = swift_slowAlloc();
        v45 = v32;
        *v31 = 136315138;
        v33 = related decl 'e' for CKErrorCode.description.getter();
        v35 = sub_10021145C(v33, v34, &v45);

        *(v31 + 4) = v35;
        _os_log_impl(&_mh_execute_header, v29, v30, "Unknown error while saving the record %s.", v31, 0xCu);
        sub_10000839C(v32);
      }

      *v19 = v28;
      swift_storeEnumTagMultiPayload();
      v36 = v28;
    }

    v41(v19);
    return sub_100008D3C(v19, &unk_1003E10A0, &unk_100344480);
  }
}

uint64_t sub_10017B7D0(void *a1, uint64_t a2, uint64_t a3, void (*a4)(void *), uint64_t a5)
{
  v41 = a4;
  v42 = a5;
  v38 = a3;
  v7 = sub_100005814(&qword_1003E1290, &unk_1003444C0);
  __chkstk_darwin(v7);
  v9 = v37 - v8;
  v10 = type metadata accessor for InheritanceInvitationRecord(0);
  v39 = *(v10 - 8);
  v11 = *(v39 + 64);
  __chkstk_darwin(v10 - 8);
  type metadata accessor for CKError(0);
  v44 = 26;
  sub_100212324(_swiftEmptyArrayStorage);
  sub_100195084(&qword_1003DA8D0, type metadata accessor for CKError, &unk_10033DE84);
  _BridgedStoredNSError.init(_:userInfo:)();
  v12 = v45;
  v44 = v45;
  _BridgedStoredNSError.code.getter();

  v13 = sub_1002DF114(v43, a1);
  if (v13 || (v37[1] = v7, v44 = 28, sub_100212324(_swiftEmptyArrayStorage), _BridgedStoredNSError.init(_:userInfo:)(), v14 = v45, v44 = v45, _BridgedStoredNSError.code.getter(), v14, (v13 = sub_1002DF114(v43, a1)) != 0))
  {

    sub_100194C44(a2, v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for InheritanceInvitationRecord);
    v15 = (*(v39 + 80) + 40) & ~*(v39 + 80);
    v16 = swift_allocObject();
    v17 = v42;
    v16[2] = v41;
    v16[3] = v17;
    v16[4] = v40;
    sub_100194EC4(v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + v15, type metadata accessor for InheritanceInvitationRecord);

    sub_100192210(a2, sub_100194654, v16);
  }

  else
  {
    v19 = v9;
    if (sub_1002DECC8(a1))
    {
      if (qword_1003D7F28 != -1)
      {
        swift_once();
      }

      v20 = type metadata accessor for Logger();
      sub_100008D04(v20, qword_1003FAA58);
      v21 = Logger.logObject.getter();
      v22 = static os_log_type_t.error.getter();
      v23 = os_log_type_enabled(v21, v22);
      v24 = v38;
      if (v23)
      {
        v25 = swift_slowAlloc();
        *v25 = 0;
        _os_log_impl(&_mh_execute_header, v21, v22, "Conflicted record. Need to resolve the conflict before saving.", v25, 2u);
      }

      sub_1002E45AC(a1, v24);
      *v19 = a1;
      swift_storeEnumTagMultiPayload();
      v26 = a1;
    }

    else
    {
      if (qword_1003D7F28 != -1)
      {
        swift_once();
      }

      v27 = type metadata accessor for Logger();
      sub_100008D04(v27, qword_1003FAA58);
      v28 = a1;
      v29 = Logger.logObject.getter();
      v30 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        v32 = swift_slowAlloc();
        v45 = v32;
        *v31 = 136315138;
        v33 = related decl 'e' for CKErrorCode.description.getter();
        v35 = sub_10021145C(v33, v34, &v45);

        *(v31 + 4) = v35;
        _os_log_impl(&_mh_execute_header, v29, v30, "Unknown error while saving the record %s.", v31, 0xCu);
        sub_10000839C(v32);
      }

      *v19 = v28;
      swift_storeEnumTagMultiPayload();
      v36 = v28;
    }

    v41(v19);
    return sub_100008D3C(v19, &qword_1003E1290, &unk_1003444C0);
  }
}

uint64_t sub_10017BCF4(void *a1, uint64_t a2, uint64_t a3, void (*a4)(void *), uint64_t a5)
{
  v41 = a4;
  v42 = a5;
  v38 = a3;
  v7 = sub_100005814(&unk_1003E1DD0, &qword_1003444D0);
  __chkstk_darwin(v7);
  v9 = v37 - v8;
  v10 = type metadata accessor for BenefactorInfoRecord(0);
  v39 = *(v10 - 8);
  v11 = *(v39 + 64);
  __chkstk_darwin(v10 - 8);
  type metadata accessor for CKError(0);
  v44 = 26;
  sub_100212324(_swiftEmptyArrayStorage);
  sub_100195084(&qword_1003DA8D0, type metadata accessor for CKError, &unk_10033DE84);
  _BridgedStoredNSError.init(_:userInfo:)();
  v12 = v45;
  v44 = v45;
  _BridgedStoredNSError.code.getter();

  v13 = sub_1002DF114(v43, a1);
  if (v13 || (v37[1] = v7, v44 = 28, sub_100212324(_swiftEmptyArrayStorage), _BridgedStoredNSError.init(_:userInfo:)(), v14 = v45, v44 = v45, _BridgedStoredNSError.code.getter(), v14, (v13 = sub_1002DF114(v43, a1)) != 0))
  {

    sub_100194C44(a2, v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for BenefactorInfoRecord);
    v15 = (*(v39 + 80) + 40) & ~*(v39 + 80);
    v16 = swift_allocObject();
    v17 = v42;
    v16[2] = v41;
    v16[3] = v17;
    v16[4] = v40;
    sub_100194EC4(v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + v15, type metadata accessor for BenefactorInfoRecord);

    sub_100192574(a2, sub_100193DBC, v16);
  }

  else
  {
    v19 = v9;
    if (sub_1002DECC8(a1))
    {
      if (qword_1003D7F28 != -1)
      {
        swift_once();
      }

      v20 = type metadata accessor for Logger();
      sub_100008D04(v20, qword_1003FAA58);
      v21 = Logger.logObject.getter();
      v22 = static os_log_type_t.error.getter();
      v23 = os_log_type_enabled(v21, v22);
      v24 = v38;
      if (v23)
      {
        v25 = swift_slowAlloc();
        *v25 = 0;
        _os_log_impl(&_mh_execute_header, v21, v22, "Conflicted record. Need to resolve the conflict before saving.", v25, 2u);
      }

      sub_1002E45AC(a1, v24);
      *v19 = a1;
      swift_storeEnumTagMultiPayload();
      v26 = a1;
    }

    else
    {
      if (qword_1003D7F28 != -1)
      {
        swift_once();
      }

      v27 = type metadata accessor for Logger();
      sub_100008D04(v27, qword_1003FAA58);
      v28 = a1;
      v29 = Logger.logObject.getter();
      v30 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        v32 = swift_slowAlloc();
        v45 = v32;
        *v31 = 136315138;
        v33 = related decl 'e' for CKErrorCode.description.getter();
        v35 = sub_10021145C(v33, v34, &v45);

        *(v31 + 4) = v35;
        _os_log_impl(&_mh_execute_header, v29, v30, "Unknown error while saving the record %s.", v31, 0xCu);
        sub_10000839C(v32);
      }

      *v19 = v28;
      swift_storeEnumTagMultiPayload();
      v36 = v28;
    }

    v41(v19);
    return sub_100008D3C(v19, &unk_1003E1DD0, &qword_1003444D0);
  }
}

void sub_10017C218(uint64_t a1, void (*a2)(void *), uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100005814(&unk_1003DA200, &unk_10033FA80);
  __chkstk_darwin(v9);
  v11 = (&v17 - v10);
  if (a1)
  {
    *v11 = a1;
    swift_storeEnumTagMultiPayload();
    swift_errorRetain();
    a2(v11);
    sub_100008D3C(v11, &unk_1003DA200, &unk_10033FA80);
  }

  else
  {
    if (qword_1003D7EB0 != -1)
    {
      swift_once();
    }

    if (*(a5 + *(type metadata accessor for CustodianRecord(0) + 48)) == 1)
    {
      if (qword_1003D7EC0 != -1)
      {
        swift_once();
      }

      v12 = &qword_1003FA9D0;
    }

    else
    {
      if (qword_1003D7EB8 != -1)
      {
        swift_once();
      }

      v12 = &qword_1003FA9C0;
    }

    v13 = *v12;
    v14 = v12[1];

    v15 = sub_1002E2BC4(v13, v14);

    v18 = [v15 privateCloudDatabase];

    sub_100174A80(a5, v18, a2, a3);
    v16 = v18;
  }
}

void sub_10017C450(uint64_t a1, void (*a2)(void *), uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100005814(&unk_1003DB610, &unk_10033FA90);
  __chkstk_darwin(v9);
  v11 = (&v17 - v10);
  if (a1)
  {
    *v11 = a1;
    swift_storeEnumTagMultiPayload();
    swift_errorRetain();
    a2(v11);
    sub_100008D3C(v11, &unk_1003DB610, &unk_10033FA90);
  }

  else
  {
    if (qword_1003D7EB0 != -1)
    {
      swift_once();
    }

    if (*(a5 + *(type metadata accessor for CustodianRecoveryInfoRecord(0) + 40)) == 1)
    {
      if (qword_1003D7EC0 != -1)
      {
        swift_once();
      }

      v12 = &qword_1003FA9D0;
    }

    else
    {
      if (qword_1003D7EB8 != -1)
      {
        swift_once();
      }

      v12 = &qword_1003FA9C0;
    }

    v13 = *v12;
    v14 = v12[1];

    v15 = sub_1002E2BC4(v13, v14);

    v18 = [v15 privateCloudDatabase];

    sub_100174D78(a5, v18, a2, a3);
    v16 = v18;
  }
}

void sub_10017C688(uint64_t a1, void (*a2)(void *), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6, uint64_t *a7, uint64_t (*a8)(void), void (*a9)(uint64_t, id, void (*)(void), uint64_t))
{
  v16 = sub_100005814(a6, a7);
  __chkstk_darwin(v16);
  v18 = (&v24 - v17);
  if (a1)
  {
    *v18 = a1;
    swift_storeEnumTagMultiPayload();
    swift_errorRetain();
    a2(v18);
    sub_100008D3C(v18, a6, a7);
  }

  else
  {
    if (qword_1003D7EB0 != -1)
    {
      swift_once();
    }

    if (*(a5 + *(a8(0) + 36)) == 1)
    {
      if (qword_1003D7EC0 != -1)
      {
        swift_once();
      }

      v19 = &qword_1003FA9D0;
    }

    else
    {
      if (qword_1003D7EB8 != -1)
      {
        swift_once();
      }

      v19 = &qword_1003FA9C0;
    }

    v20 = *v19;
    v21 = v19[1];

    v22 = sub_1002E2BC4(v20, v21);

    v25 = [v22 privateCloudDatabase];

    a9(a5, v25, a2, a3);
    v23 = v25;
  }
}

void sub_10017C8D4(uint64_t a1, void (*a2)(void *), uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100005814(&unk_1003E10A0, &unk_100344480);
  __chkstk_darwin(v9);
  v11 = (&v17 - v10);
  if (a1)
  {
    *v11 = a1;
    swift_storeEnumTagMultiPayload();
    swift_errorRetain();
    a2(v11);
    sub_100008D3C(v11, &unk_1003E10A0, &unk_100344480);
  }

  else
  {
    if (qword_1003D7EB0 != -1)
    {
      swift_once();
    }

    if (*(a5 + *(type metadata accessor for BeneficiaryInfoRecord(0) + 40)) == 1)
    {
      if (qword_1003D7ED8 != -1)
      {
        swift_once();
      }

      v12 = &qword_1003FAA00;
    }

    else
    {
      if (qword_1003D7ED0 != -1)
      {
        swift_once();
      }

      v12 = &qword_1003FA9F0;
    }

    v13 = *v12;
    v14 = v12[1];

    v15 = sub_1002E2BC4(v13, v14);

    v18 = [v15 privateCloudDatabase];

    sub_100175958(a5, v18, a2, a3);
    v16 = v18;
  }
}

void sub_10017CB0C(uint64_t a1, void (*a2)(void *), uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100005814(&qword_1003E1290, &unk_1003444C0);
  __chkstk_darwin(v9);
  v11 = (&v17 - v10);
  if (a1)
  {
    *v11 = a1;
    swift_storeEnumTagMultiPayload();
    swift_errorRetain();
    a2(v11);
    sub_100008D3C(v11, &qword_1003E1290, &unk_1003444C0);
  }

  else
  {
    if (qword_1003D7EB0 != -1)
    {
      swift_once();
    }

    if (*(a5 + *(type metadata accessor for InheritanceInvitationRecord(0) + 44)) == 1)
    {
      if (qword_1003D7ED8 != -1)
      {
        swift_once();
      }

      v12 = &qword_1003FAA00;
    }

    else
    {
      if (qword_1003D7ED0 != -1)
      {
        swift_once();
      }

      v12 = &qword_1003FA9F0;
    }

    v13 = *v12;
    v14 = v12[1];

    v15 = sub_1002E2BC4(v13, v14);

    v18 = [v15 privateCloudDatabase];

    sub_100175C50(a5, v18, a2, a3);
    v16 = v18;
  }
}

void sub_10017CD44(uint64_t a1, void (*a2)(void *), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6, uint64_t *a7, uint64_t (*a8)(void), void (*a9)(uint64_t, id, void (*)(void), uint64_t))
{
  v16 = sub_100005814(a6, a7);
  __chkstk_darwin(v16);
  v18 = (&v24 - v17);
  if (a1)
  {
    *v18 = a1;
    swift_storeEnumTagMultiPayload();
    swift_errorRetain();
    a2(v18);
    sub_100008D3C(v18, a6, a7);
  }

  else
  {
    if (qword_1003D7EB0 != -1)
    {
      swift_once();
    }

    if (*(a5 + *(a8(0) + 36)) == 1)
    {
      if (qword_1003D7ED8 != -1)
      {
        swift_once();
      }

      v19 = &qword_1003FAA00;
    }

    else
    {
      if (qword_1003D7ED0 != -1)
      {
        swift_once();
      }

      v19 = &qword_1003FA9F0;
    }

    v20 = *v19;
    v21 = v19[1];

    v22 = sub_1002E2BC4(v20, v21);

    v25 = [v22 privateCloudDatabase];

    a9(a5, v25, a2, a3);
    v23 = v25;
  }
}

uint64_t sub_10017CFB4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, unint64_t *a5, void *a6, unint64_t *a7, void *a8)
{
  v12 = a2;
  v13 = *(a1 + 32);
  if (a2)
  {
    sub_100016034(0, a5, a6);
    v12 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  if (a3)
  {
    sub_100016034(0, a7, a8);
    a3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v14 = a4;
  v13(v12, a3, a4);
}

Class sub_10017D094()
{
  if (qword_1003D7EB0 != -1)
  {
    swift_once();
  }

  v0 = sub_1002E2EE0(0xD000000000000011, 0x8000000100330430);
  sub_100016034(0, &qword_1003DEC08, CKRecordID_ptr);
  v1 = UUID.uuidString.getter();
  v3 = v2;
  v4 = v0;
  v5._countAndFlagsBits = v1;
  v5._object = v3;
  v6.super.isa = CKRecordID.init(recordName:zoneID:)(v5, v4).super.isa;
  if (qword_1003D7F28 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_100008D04(v7, qword_1003FAA58);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v8, v9, "Failed to unarchive record -- creating new one", v10, 2u);
  }

  sub_100016034(0, &qword_1003E0E18, CKRecord_ptr);
  v11._countAndFlagsBits = 0x6169646F74737543;
  v11._object = 0xEF64726F6365526ELL;
  isa = CKRecord.init(recordType:recordID:)(v11, v6).super.isa;

  return isa;
}

Class sub_10017D26C(uint64_t a1)
{
  if (qword_1003D7EB0 != -1)
  {
    swift_once();
  }

  v1 = UUID.uuidString.getter();
  v3 = sub_1002E2EE0(v1, v2);

  sub_100016034(0, &qword_1003DEC08, CKRecordID_ptr);
  type metadata accessor for BenefactorInfoRecord(0);
  v4 = UUID.uuidString.getter();
  v6 = v5;
  v7 = v3;
  v8._countAndFlagsBits = v4;
  v8._object = v6;
  v9.super.isa = CKRecordID.init(recordName:zoneID:)(v8, v7).super.isa;
  if (qword_1003D7F28 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  sub_100008D04(v10, qword_1003FAA58);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&_mh_execute_header, v11, v12, "Failed to unarchive record -- creating new one", v13, 2u);
  }

  sub_100016034(0, &qword_1003E0E18, CKRecord_ptr);
  v14._object = 0x80000001003303D0;
  v14._countAndFlagsBits = 0xD00000000000001FLL;
  isa = CKRecord.init(recordType:recordID:)(v14, v9).super.isa;

  return isa;
}

Class sub_10017D448(uint64_t a1)
{
  if (qword_1003D7EB0 != -1)
  {
    swift_once();
  }

  v1 = UUID.uuidString.getter();
  v3 = sub_1002E2EE0(v1, v2);

  sub_100016034(0, &qword_1003DEC08, CKRecordID_ptr);
  type metadata accessor for BeneficiaryInfoRecord(0);
  v4 = UUID.uuidString.getter();
  v6 = v5;
  v7 = v3;
  v8._countAndFlagsBits = v4;
  v8._object = v6;
  v9.super.isa = CKRecordID.init(recordName:zoneID:)(v8, v7).super.isa;
  if (qword_1003D7F28 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  sub_100008D04(v10, qword_1003FAA58);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&_mh_execute_header, v11, v12, "Failed to unarchive record -- creating new one", v13, 2u);
  }

  sub_100016034(0, &qword_1003E0E18, CKRecord_ptr);
  v14._object = 0x8000000100330350;
  v14._countAndFlagsBits = 0xD000000000000020;
  isa = CKRecord.init(recordType:recordID:)(v14, v9).super.isa;

  return isa;
}

Class sub_10017D624()
{
  if (qword_1003D7EB0 != -1)
  {
    swift_once();
  }

  type metadata accessor for CustodianHealthRecord(0);
  v0 = UUID.uuidString.getter();
  v2 = sub_1002E2EE0(v0, v1);

  sub_100016034(0, &qword_1003DEC08, CKRecordID_ptr);
  v3 = UUID.uuidString.getter();
  v5 = v4;
  v6 = v2;
  v7._countAndFlagsBits = v3;
  v7._object = v5;
  v8.super.isa = CKRecordID.init(recordName:zoneID:)(v7, v6).super.isa;
  if (qword_1003D7F28 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  sub_100008D04(v9, qword_1003FAA58);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v10, v11, "Failed to unarchive record -- creating new one", v12, 2u);
  }

  sub_100016034(0, &qword_1003E0E18, CKRecord_ptr);
  v13._object = 0x800000010032CDD0;
  v13._countAndFlagsBits = 0xD000000000000015;
  isa = CKRecord.init(recordType:recordID:)(v13, v8).super.isa;

  return isa;
}

Class sub_10017D800()
{
  if (qword_1003D7EB0 != -1)
  {
    swift_once();
  }

  type metadata accessor for CustodianshipInfoRecord(0);
  v0 = UUID.uuidString.getter();
  v2 = sub_1002E2EE0(v0, v1);

  sub_100016034(0, &qword_1003DEC08, CKRecordID_ptr);
  v3 = UUID.uuidString.getter();
  v5 = v4;
  v6 = v2;
  v7._countAndFlagsBits = v3;
  v7._object = v5;
  v8.super.isa = CKRecordID.init(recordName:zoneID:)(v7, v6).super.isa;
  if (qword_1003D7F28 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  sub_100008D04(v9, qword_1003FAA58);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v10, v11, "Failed to unarchive record -- creating new one", v12, 2u);
  }

  sub_100016034(0, &qword_1003E0E18, CKRecord_ptr);
  v13._object = 0x800000010032CE50;
  v13._countAndFlagsBits = 0xD000000000000017;
  isa = CKRecord.init(recordType:recordID:)(v13, v8).super.isa;

  return isa;
}

Class sub_10017D9DC(uint64_t a1)
{
  if (qword_1003D7EB0 != -1)
  {
    swift_once();
  }

  v1 = UUID.uuidString.getter();
  v3 = sub_1002E2EE0(v1, v2);

  sub_100016034(0, &qword_1003DEC08, CKRecordID_ptr);
  type metadata accessor for InheritanceHealthRecord(0);
  v4 = UUID.uuidString.getter();
  v6 = v5;
  v7 = v3;
  v8._countAndFlagsBits = v4;
  v8._object = v6;
  v9.super.isa = CKRecordID.init(recordName:zoneID:)(v8, v7).super.isa;
  if (qword_1003D7F28 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  sub_100008D04(v10, qword_1003FAA58);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&_mh_execute_header, v11, v12, "Failed to unarchive record -- creating new one", v13, 2u);
  }

  sub_100016034(0, &qword_1003E0E18, CKRecord_ptr);
  v14._object = 0x8000000100330300;
  v14._countAndFlagsBits = 0xD000000000000017;
  isa = CKRecord.init(recordType:recordID:)(v14, v9).super.isa;

  return isa;
}

Class sub_10017DBB8()
{
  if (qword_1003D7EB0 != -1)
  {
    swift_once();
  }

  type metadata accessor for CustodianRecoveryInfoRecord(0);
  v0 = UUID.uuidString.getter();
  v2 = sub_1002E2EE0(v0, v1);

  sub_100016034(0, &qword_1003DEC08, CKRecordID_ptr);
  v3 = UUID.uuidString.getter();
  v5 = v4;
  v6 = v2;
  v7._countAndFlagsBits = v3;
  v7._object = v5;
  v8.super.isa = CKRecordID.init(recordName:zoneID:)(v7, v6).super.isa;
  if (qword_1003D7F28 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  sub_100008D04(v9, qword_1003FAA58);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v10, v11, "Failed to unarchive record -- creating new one", v12, 2u);
  }

  sub_100016034(0, &qword_1003E0E18, CKRecord_ptr);
  v13._object = 0x800000010032CEE0;
  v13._countAndFlagsBits = 0xD00000000000001BLL;
  isa = CKRecord.init(recordType:recordID:)(v13, v8).super.isa;

  return isa;
}

Class sub_10017DD94()
{
  if (qword_1003D7EB0 != -1)
  {
    swift_once();
  }

  v0 = sub_1002E2EE0(0xD000000000000011, 0x8000000100330430);
  sub_100016034(0, &qword_1003DEC08, CKRecordID_ptr);
  type metadata accessor for InheritanceInvitationRecord(0);
  v1 = UUID.uuidString.getter();
  v3 = v2;
  v4 = v0;
  v5._countAndFlagsBits = v1;
  v5._object = v3;
  v6.super.isa = CKRecordID.init(recordName:zoneID:)(v5, v4).super.isa;
  if (qword_1003D7F28 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_100008D04(v7, qword_1003FAA58);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v8, v9, "Failed to unarchive record -- creating new one", v10, 2u);
  }

  sub_100016034(0, &qword_1003E0E18, CKRecord_ptr);
  v11._countAndFlagsBits = 0xD00000000000001BLL;
  v11._object = 0x8000000100330380;
  isa = CKRecord.init(recordType:recordID:)(v11, v6).super.isa;

  return isa;
}

uint64_t sub_10017DF74(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  v28 = a4;
  v29 = a5;
  v27 = a3;
  v26 = a2;
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v33 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchQoS();
  v31 = *(v10 - 8);
  v32 = v10;
  __chkstk_darwin(v10);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for CustodianRecord(0);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13 - 8);
  v16 = &v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = *(v5 + 32);
  sub_100194C44(a1, v16, type metadata accessor for CustodianRecord);
  v17 = (*(v14 + 80) + 16) & ~*(v14 + 80);
  v18 = (v15 + v17 + 7) & 0xFFFFFFFFFFFFFFF8;
  v19 = swift_allocObject();
  sub_100194EC4(v16, v19 + v17, type metadata accessor for CustodianRecord);
  *(v19 + v18) = v5;
  v20 = v19 + ((v18 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v20 = v26;
  *(v20 + 8) = v27;
  v21 = (v19 + ((v18 + 31) & 0xFFFFFFFFFFFFFFF8));
  v22 = v29;
  *v21 = v28;
  v21[1] = v22;
  aBlock[4] = sub_100193040;
  aBlock[5] = v19;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100031EF0;
  aBlock[3] = &unk_1003ABF80;
  v23 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v34 = _swiftEmptyArrayStorage;
  sub_100195084(&qword_1003D9120, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100005814(&unk_1003DABE0, &unk_10033EC20);
  sub_1000D10EC(&qword_1003D9130, &unk_1003DABE0, &unk_10033EC20, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v23);
  (*(v33 + 8))(v9, v7);
  (*(v31 + 8))(v12, v32);
}

uint64_t sub_10017E358(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  v28 = a4;
  v29 = a5;
  v27 = a3;
  v26 = a2;
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v33 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchQoS();
  v31 = *(v10 - 8);
  v32 = v10;
  __chkstk_darwin(v10);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for CustodianRecoveryInfoRecord(0);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13 - 8);
  v16 = &v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = *(v5 + 32);
  sub_100194C44(a1, v16, type metadata accessor for CustodianRecoveryInfoRecord);
  v17 = (*(v14 + 80) + 16) & ~*(v14 + 80);
  v18 = (v15 + v17 + 7) & 0xFFFFFFFFFFFFFFF8;
  v19 = swift_allocObject();
  sub_100194EC4(v16, v19 + v17, type metadata accessor for CustodianRecoveryInfoRecord);
  *(v19 + v18) = v5;
  v20 = v19 + ((v18 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v20 = v26;
  *(v20 + 8) = v27;
  v21 = (v19 + ((v18 + 31) & 0xFFFFFFFFFFFFFFF8));
  v22 = v29;
  *v21 = v28;
  v21[1] = v22;
  aBlock[4] = sub_10019325C;
  aBlock[5] = v19;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100031EF0;
  aBlock[3] = &unk_1003ABFD0;
  v23 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v34 = _swiftEmptyArrayStorage;
  sub_100195084(&qword_1003D9120, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100005814(&unk_1003DABE0, &unk_10033EC20);
  sub_1000D10EC(&qword_1003D9130, &unk_1003DABE0, &unk_10033EC20, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v23);
  (*(v33 + 8))(v9, v7);
  (*(v31 + 8))(v12, v32);
}

uint64_t sub_10017E73C(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  v28 = a4;
  v29 = a5;
  v27 = a3;
  v26 = a2;
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v33 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchQoS();
  v31 = *(v10 - 8);
  v32 = v10;
  __chkstk_darwin(v10);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for CustodianHealthRecord(0);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13 - 8);
  v16 = &v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = *(v5 + 32);
  sub_100194C44(a1, v16, type metadata accessor for CustodianHealthRecord);
  v17 = (*(v14 + 80) + 16) & ~*(v14 + 80);
  v18 = (v15 + v17 + 7) & 0xFFFFFFFFFFFFFFF8;
  v19 = swift_allocObject();
  sub_100194EC4(v16, v19 + v17, type metadata accessor for CustodianHealthRecord);
  *(v19 + v18) = v5;
  v20 = v19 + ((v18 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v20 = v26;
  *(v20 + 8) = v27;
  v21 = (v19 + ((v18 + 31) & 0xFFFFFFFFFFFFFFF8));
  v22 = v29;
  *v21 = v28;
  v21[1] = v22;
  aBlock[4] = sub_100193428;
  aBlock[5] = v19;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100031EF0;
  aBlock[3] = &unk_1003AC020;
  v23 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v34 = _swiftEmptyArrayStorage;
  sub_100195084(&qword_1003D9120, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100005814(&unk_1003DABE0, &unk_10033EC20);
  sub_1000D10EC(&qword_1003D9130, &unk_1003DABE0, &unk_10033EC20, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v23);
  (*(v33 + 8))(v9, v7);
  (*(v31 + 8))(v12, v32);
}

uint64_t sub_10017EB20(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  v28 = a4;
  v29 = a5;
  v27 = a3;
  v26 = a2;
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v33 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchQoS();
  v31 = *(v10 - 8);
  v32 = v10;
  __chkstk_darwin(v10);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for CustodianshipInfoRecord(0);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13 - 8);
  v16 = &v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = *(v5 + 32);
  sub_100194C44(a1, v16, type metadata accessor for CustodianshipInfoRecord);
  v17 = (*(v14 + 80) + 16) & ~*(v14 + 80);
  v18 = (v15 + v17 + 7) & 0xFFFFFFFFFFFFFFF8;
  v19 = swift_allocObject();
  sub_100194EC4(v16, v19 + v17, type metadata accessor for CustodianshipInfoRecord);
  *(v19 + v18) = v5;
  v20 = v19 + ((v18 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v20 = v26;
  *(v20 + 8) = v27;
  v21 = (v19 + ((v18 + 31) & 0xFFFFFFFFFFFFFFF8));
  v22 = v29;
  *v21 = v28;
  v21[1] = v22;
  aBlock[4] = sub_100192E14;
  aBlock[5] = v19;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100031EF0;
  aBlock[3] = &unk_1003ABF30;
  v23 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v34 = _swiftEmptyArrayStorage;
  sub_100195084(&qword_1003D9120, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100005814(&unk_1003DABE0, &unk_10033EC20);
  sub_1000D10EC(&qword_1003D9130, &unk_1003DABE0, &unk_10033EC20, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v23);
  (*(v33 + 8))(v9, v7);
  (*(v31 + 8))(v12, v32);
}

uint64_t sub_10017EF04(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  v28 = a4;
  v29 = a5;
  v27 = a3;
  v26 = a2;
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v33 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchQoS();
  v31 = *(v10 - 8);
  v32 = v10;
  __chkstk_darwin(v10);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for CustodianRecoverySessionRecord(0);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13 - 8);
  v16 = &v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = *(v5 + 32);
  sub_100194C44(a1, v16, type metadata accessor for CustodianRecoverySessionRecord);
  v17 = (*(v14 + 80) + 16) & ~*(v14 + 80);
  v18 = (v15 + v17 + 7) & 0xFFFFFFFFFFFFFFF8;
  v19 = swift_allocObject();
  sub_100194EC4(v16, v19 + v17, type metadata accessor for CustodianRecoverySessionRecord);
  *(v19 + v18) = v5;
  v20 = v19 + ((v18 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v20 = v26;
  *(v20 + 8) = v27;
  v21 = (v19 + ((v18 + 31) & 0xFFFFFFFFFFFFFFF8));
  v22 = v29;
  *v21 = v28;
  v21[1] = v22;
  aBlock[4] = sub_100194F2C;
  aBlock[5] = v19;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100031EF0;
  aBlock[3] = &unk_1003AC4F8;
  v23 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v34 = _swiftEmptyArrayStorage;
  sub_100195084(&qword_1003D9120, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100005814(&unk_1003DABE0, &unk_10033EC20);
  sub_1000D10EC(&qword_1003D9130, &unk_1003DABE0, &unk_10033EC20, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v23);
  (*(v33 + 8))(v9, v7);
  (*(v31 + 8))(v12, v32);
}

uint64_t sub_10017F2E8(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  v28 = a4;
  v29 = a5;
  v27 = a3;
  v26 = a2;
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v33 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchQoS();
  v31 = *(v10 - 8);
  v32 = v10;
  __chkstk_darwin(v10);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for InheritanceHealthRecord(0);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13 - 8);
  v16 = &v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = *(v5 + 32);
  sub_100194C44(a1, v16, type metadata accessor for InheritanceHealthRecord);
  v17 = (*(v14 + 80) + 16) & ~*(v14 + 80);
  v18 = (v15 + v17 + 7) & 0xFFFFFFFFFFFFFFF8;
  v19 = swift_allocObject();
  sub_100194EC4(v16, v19 + v17, type metadata accessor for InheritanceHealthRecord);
  *(v19 + v18) = v5;
  v20 = v19 + ((v18 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v20 = v26;
  *(v20 + 8) = v27;
  v21 = (v19 + ((v18 + 31) & 0xFFFFFFFFFFFFFFF8));
  v22 = v29;
  *v21 = v28;
  v21[1] = v22;
  aBlock[4] = sub_100191E84;
  aBlock[5] = v19;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100031EF0;
  aBlock[3] = &unk_1003ABE18;
  v23 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v34 = _swiftEmptyArrayStorage;
  sub_100195084(&qword_1003D9120, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100005814(&unk_1003DABE0, &unk_10033EC20);
  sub_1000D10EC(&qword_1003D9130, &unk_1003DABE0, &unk_10033EC20, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v23);
  (*(v33 + 8))(v9, v7);
  (*(v31 + 8))(v12, v32);
}

uint64_t sub_10017F6CC(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  v28 = a4;
  v29 = a5;
  v27 = a3;
  v26 = a2;
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v33 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchQoS();
  v31 = *(v10 - 8);
  v32 = v10;
  __chkstk_darwin(v10);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for BeneficiaryInfoRecord(0);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13 - 8);
  v16 = &v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = *(v5 + 32);
  sub_100194C44(a1, v16, type metadata accessor for BeneficiaryInfoRecord);
  v17 = (*(v14 + 80) + 16) & ~*(v14 + 80);
  v18 = (v15 + v17 + 7) & 0xFFFFFFFFFFFFFFF8;
  v19 = swift_allocObject();
  sub_100194EC4(v16, v19 + v17, type metadata accessor for BeneficiaryInfoRecord);
  *(v19 + v18) = v5;
  v20 = v19 + ((v18 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v20 = v26;
  *(v20 + 8) = v27;
  v21 = (v19 + ((v18 + 31) & 0xFFFFFFFFFFFFFFF8));
  v22 = v29;
  *v21 = v28;
  v21[1] = v22;
  aBlock[4] = sub_1001937E0;
  aBlock[5] = v19;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100031EF0;
  aBlock[3] = &unk_1003AC0C0;
  v23 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v34 = _swiftEmptyArrayStorage;
  sub_100195084(&qword_1003D9120, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100005814(&unk_1003DABE0, &unk_10033EC20);
  sub_1000D10EC(&qword_1003D9130, &unk_1003DABE0, &unk_10033EC20, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v23);
  (*(v33 + 8))(v9, v7);
  (*(v31 + 8))(v12, v32);
}

uint64_t sub_10017FAB0(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  v28 = a4;
  v29 = a5;
  v27 = a3;
  v26 = a2;
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v33 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchQoS();
  v31 = *(v10 - 8);
  v32 = v10;
  __chkstk_darwin(v10);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for InheritanceInvitationRecord(0);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13 - 8);
  v16 = &v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = *(v5 + 32);
  sub_100194C44(a1, v16, type metadata accessor for InheritanceInvitationRecord);
  v17 = (*(v14 + 80) + 16) & ~*(v14 + 80);
  v18 = (v15 + v17 + 7) & 0xFFFFFFFFFFFFFFF8;
  v19 = swift_allocObject();
  sub_100194EC4(v16, v19 + v17, type metadata accessor for InheritanceInvitationRecord);
  *(v19 + v18) = v5;
  v20 = v19 + ((v18 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v20 = v26;
  *(v20 + 8) = v27;
  v21 = (v19 + ((v18 + 31) & 0xFFFFFFFFFFFFFFF8));
  v22 = v29;
  *v21 = v28;
  v21[1] = v22;
  aBlock[4] = sub_1001935C4;
  aBlock[5] = v19;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100031EF0;
  aBlock[3] = &unk_1003AC070;
  v23 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v34 = _swiftEmptyArrayStorage;
  sub_100195084(&qword_1003D9120, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100005814(&unk_1003DABE0, &unk_10033EC20);
  sub_1000D10EC(&qword_1003D9130, &unk_1003DABE0, &unk_10033EC20, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v23);
  (*(v33 + 8))(v9, v7);
  (*(v31 + 8))(v12, v32);
}

uint64_t sub_10017FE94(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  v28 = a4;
  v29 = a5;
  v27 = a3;
  v26 = a2;
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v33 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchQoS();
  v31 = *(v10 - 8);
  v32 = v10;
  __chkstk_darwin(v10);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for BenefactorInfoRecord(0);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13 - 8);
  v16 = &v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = *(v5 + 32);
  sub_100194C44(a1, v16, type metadata accessor for BenefactorInfoRecord);
  v17 = (*(v14 + 80) + 16) & ~*(v14 + 80);
  v18 = (v15 + v17 + 7) & 0xFFFFFFFFFFFFFFF8;
  v19 = swift_allocObject();
  sub_100194EC4(v16, v19 + v17, type metadata accessor for BenefactorInfoRecord);
  *(v19 + v18) = v5;
  v20 = v19 + ((v18 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v20 = v26;
  *(v20 + 8) = v27;
  v21 = (v19 + ((v18 + 31) & 0xFFFFFFFFFFFFFFF8));
  v22 = v29;
  *v21 = v28;
  v21[1] = v22;
  aBlock[4] = sub_100193AD4;
  aBlock[5] = v19;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100031EF0;
  aBlock[3] = &unk_1003AC160;
  v23 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v34 = _swiftEmptyArrayStorage;
  sub_100195084(&qword_1003D9120, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100005814(&unk_1003DABE0, &unk_10033EC20);
  sub_1000D10EC(&qword_1003D9130, &unk_1003DABE0, &unk_10033EC20, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v23);
  (*(v33 + 8))(v9, v7);
  (*(v31 + 8))(v12, v32);
}

uint64_t sub_100180278(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  v28 = a4;
  v29 = a5;
  v27 = a3;
  v26 = a2;
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v33 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchQoS();
  v31 = *(v10 - 8);
  v32 = v10;
  __chkstk_darwin(v10);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for BeneficiaryManifestRecord(0);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13 - 8);
  v16 = &v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = *(v5 + 32);
  sub_100194C44(a1, v16, type metadata accessor for BeneficiaryManifestRecord);
  v17 = (*(v14 + 80) + 16) & ~*(v14 + 80);
  v18 = (v15 + v17 + 7) & 0xFFFFFFFFFFFFFFF8;
  v19 = swift_allocObject();
  sub_100194EC4(v16, v19 + v17, type metadata accessor for BeneficiaryManifestRecord);
  *(v19 + v18) = v5;
  v20 = v19 + ((v18 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v20 = v26;
  *(v20 + 8) = v27;
  v21 = (v19 + ((v18 + 31) & 0xFFFFFFFFFFFFFFF8));
  v22 = v29;
  *v21 = v28;
  v21[1] = v22;
  aBlock[4] = sub_100193958;
  aBlock[5] = v19;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100031EF0;
  aBlock[3] = &unk_1003AC110;
  v23 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v34 = _swiftEmptyArrayStorage;
  sub_100195084(&qword_1003D9120, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100005814(&unk_1003DABE0, &unk_10033EC20);
  sub_1000D10EC(&qword_1003D9130, &unk_1003DABE0, &unk_10033EC20, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v23);
  (*(v33 + 8))(v9, v7);
  (*(v31 + 8))(v12, v32);
}

uint64_t sub_10018065C(uint64_t a1, void *a2, uint64_t a3, int a4, void (*a5)(uint64_t), uint64_t a6)
{
  v176 = a6;
  v177 = a5;
  v168 = a4;
  v167 = a3;
  v173 = a2;
  v186 = a1;
  v174 = sub_100005814(&unk_1003DA200, &unk_10033FA80);
  __chkstk_darwin(v174);
  v175 = (&v154 - v6);
  v181 = type metadata accessor for URL();
  v184 = *(v181 - 1);
  v7 = __chkstk_darwin(v181);
  v166 = (&v154 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = __chkstk_darwin(v7);
  v180 = &v154 - v10;
  v11 = __chkstk_darwin(v9);
  v183 = &v154 - v12;
  __chkstk_darwin(v11);
  v14 = &v154 - v13;
  v15 = type metadata accessor for UUID();
  v179 = *(v15 - 8);
  __chkstk_darwin(v15);
  v178 = &v154 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v172 = type metadata accessor for CustodianRecord(0);
  v17 = __chkstk_darwin(v172);
  v185 = &v154 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v17);
  v21 = (&v154 - v20);
  v22 = __chkstk_darwin(v19);
  v163 = &v154 - v23;
  v24 = __chkstk_darwin(v22);
  v162 = &v154 - v25;
  v26 = __chkstk_darwin(v24);
  v165 = &v154 - v27;
  v28 = __chkstk_darwin(v26);
  v164 = &v154 - v29;
  v30 = __chkstk_darwin(v28);
  v32 = &v154 - v31;
  __chkstk_darwin(v30);
  v34 = &v154 - v33;
  if (qword_1003D7F58 != -1)
  {
    swift_once();
  }

  v35 = type metadata accessor for Logger();
  v36 = sub_100008D04(v35, qword_1003FAAE8);
  v37 = v186;
  sub_100194C44(v186, v34, type metadata accessor for CustodianRecord);
  sub_100194C44(v37, v32, type metadata accessor for CustodianRecord);
  v182 = v36;
  v38 = Logger.logObject.getter();
  v39 = static os_log_type_t.default.getter();
  v40 = os_log_type_enabled(v38, v39);
  v171 = v14;
  if (v40)
  {
    v41 = swift_slowAlloc();
    v169 = v21;
    v42 = v41;
    v161 = swift_slowAlloc();
    v188[0] = v161;
    *v42 = 136315394;
    v160 = v38;
    v43 = v179;
    v44 = v178;
    (*(v179 + 16))(v178, v34, v15);
    v158 = type metadata accessor for CustodianRecord;
    sub_100195024(v34, type metadata accessor for CustodianRecord);
    sub_100195084(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    LODWORD(v159) = v39;
    v45 = dispatch thunk of CustomStringConvertible.description.getter();
    v47 = v46;
    (*(v43 + 8))(v44, v15);
    v48 = sub_10021145C(v45, v47, v188);

    *(v42 + 4) = v48;
    *(v42 + 12) = 2080;
    type metadata accessor for LocalCache();
    v170 = v15;
    v49 = v180;
    sub_100307F40();
    v50 = v183;
    URL.appendingPathComponent(_:isDirectory:)();
    v51 = v50;
    v52 = *(v184 + 8);
    v53 = v49;
    v54 = v181;
    v52(v53, v181);
    UUID.uuidString.getter();
    URL.appendingPathComponent(_:)();

    v52(v51, v54);
    sub_100195024(v32, v158);
    sub_100195084(&qword_1003DD590, &type metadata accessor for URL, &protocol conformance descriptor for URL);
    v55 = dispatch thunk of CustomStringConvertible.description.getter();
    v57 = v56;
    v58 = v54;
    v15 = v170;
    v52(v14, v58);
    v59 = sub_10021145C(v55, v57, v188);

    *(v42 + 14) = v59;
    v60 = v160;
    _os_log_impl(&_mh_execute_header, v160, v159, "Local Cache: Saving record: %s at path: %s", v42, 0x16u);
    swift_arrayDestroy();

    v21 = v169;
  }

  else
  {
    sub_100195024(v32, type metadata accessor for CustodianRecord);
    sub_100195024(v34, type metadata accessor for CustodianRecord);
  }

  sub_100195084(&qword_1003DD6F8, type metadata accessor for CustodianRecord, &unk_100341C98);

  v61 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v63 = v62;

  v64 = objc_autoreleasePoolPush();
  sub_10030348C(v61, v63, &v187, v188);
  v160 = 0;
  v161 = v61;
  v169 = v21;
  objc_autoreleasePoolPop(v64);

  v172 = v188[0];
  v173 = v188[1];
  v92 = v186;
  v93 = v164;
  sub_100194C44(v186, v164, type metadata accessor for CustodianRecord);
  v94 = v165;
  sub_100194C44(v92, v165, type metadata accessor for CustodianRecord);
  v95 = Logger.logObject.getter();
  v96 = static os_log_type_t.default.getter();
  v97 = os_log_type_enabled(v95, v96);
  v170 = v15;
  if (v97)
  {
    v98 = swift_slowAlloc();
    LODWORD(v158) = v96;
    v99 = v98;
    v159 = swift_slowAlloc();
    v188[0] = v159;
    *v99 = 136315394;
    v101 = v178;
    v100 = v179;
    (*(v179 + 16))(v178, v93, v15);
    v156 = type metadata accessor for CustodianRecord;
    sub_100195024(v93, type metadata accessor for CustodianRecord);
    sub_100195084(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v157 = v95;
    v102 = dispatch thunk of CustomStringConvertible.description.getter();
    v104 = v103;
    (*(v100 + 8))(v101, v15);
    v105 = sub_10021145C(v102, v104, v188);

    v155 = v99;
    *(v99 + 4) = v105;
    *(v99 + 12) = 2080;
    type metadata accessor for LocalCache();
    v106 = v180;
    sub_100307F40();
    v107 = v183;
    URL.appendingPathComponent(_:isDirectory:)();
    v164 = v63;
    v108 = *(v184 + 8);
    v109 = v106;
    v110 = v181;
    v108(v109, v181);
    UUID.uuidString.getter();
    v111 = v171;
    URL.appendingPathComponent(_:)();

    v108(v107, v110);
    sub_100195024(v94, v156);
    sub_100195084(&qword_1003DD590, &type metadata accessor for URL, &protocol conformance descriptor for URL);
    v112 = dispatch thunk of CustomStringConvertible.description.getter();
    v114 = v113;
    v108(v111, v110);
    v63 = v164;
    v115 = sub_10021145C(v112, v114, v188);

    v116 = v155;
    *(v155 + 14) = v115;
    v117 = v157;
    _os_log_impl(&_mh_execute_header, v157, v158, "Local Cache: Successfully encrypted record %s, %s", v116, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
    sub_100195024(v94, type metadata accessor for CustodianRecord);
    sub_100195024(v93, type metadata accessor for CustodianRecord);

    v110 = v181;
    v111 = v171;
    v107 = v183;
  }

  type metadata accessor for LocalCache();
  sub_100307F40();
  URL.appendingPathComponent(_:isDirectory:)();
  v118 = v107;
  v119 = *(v184 + 8);
  v119(v118, v110);
  _sSo13NSFileManagerC13appleaccountdE26createDirectoryIfNecessary3url10attributesSb10Foundation3URLV_SDySo0A12AttributeKeyaypGSgtFZ_0(v111, 0);
  v119(v111, v110);
  sub_100307F40();
  URL.appendingPathComponent(_:isDirectory:)();
  v119(v118, v110);
  UUID.uuidString.getter();
  v120 = v166;
  URL.appendingPathComponent(_:)();
  v121 = v120;

  v119(v111, v110);
  v123 = v172;
  v122 = v173;
  v124 = v120;
  v125 = v160;
  sub_10030A77C(v172, v173, v124, v167, v168);
  if (v125)
  {
    v119(v121, v110);
    sub_100012324(v123, v122);
    sub_100012324(v161, v63);
    v126 = v170;
    v127 = v169;
    v65 = v186;
    sub_100194C44(v186, v169, type metadata accessor for CustodianRecord);
    sub_100194C44(v65, v185, type metadata accessor for CustodianRecord);
    swift_errorRetain();
    v66 = Logger.logObject.getter();
    v67 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v66, v67))
    {
      v68 = swift_slowAlloc();
      v182 = swift_slowAlloc();
      v186 = swift_slowAlloc();
      v188[0] = v186;
      *v68 = 136315650;
      v69 = v179;
      v70 = *(v179 + 16);
      LODWORD(v173) = v67;
      v71 = v127;
      v72 = v178;
      v70(v178, v71, v126);
      v172 = v66;
      v169 = type metadata accessor for CustodianRecord;
      sub_100195024(v71, type metadata accessor for CustodianRecord);
      sub_100195084(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v73 = dispatch thunk of CustomStringConvertible.description.getter();
      v75 = v74;
      (*(v69 + 8))(v72, v126);
      v76 = sub_10021145C(v73, v75, v188);

      *(v68 + 4) = v76;
      *(v68 + 12) = 2080;
      type metadata accessor for LocalCache();
      v77 = v180;
      sub_100307F40();
      v78 = v183;
      URL.appendingPathComponent(_:isDirectory:)();
      v79 = v185;
      v80 = *(v184 + 8);
      v81 = v181;
      v80(v77, v181);
      UUID.uuidString.getter();
      v82 = v171;
      URL.appendingPathComponent(_:)();

      v80(v78, v81);
      sub_100195024(v79, v169);
      sub_100195084(&qword_1003DD590, &type metadata accessor for URL, &protocol conformance descriptor for URL);
      v83 = dispatch thunk of CustomStringConvertible.description.getter();
      v85 = v84;
      v80(v82, v81);
      v86 = sub_10021145C(v83, v85, v188);

      *(v68 + 14) = v86;
      *(v68 + 22) = 2112;
      v87 = _convertErrorToNSError(_:)();
      *(v68 + 24) = v87;
      v88 = v182;
      v182->isa = v87;
      v89 = v172;
      _os_log_impl(&_mh_execute_header, v172, v173, "Local Cache: Error adding record %s with URL %s to local disk: %@", v68, 0x20u);
      sub_100008D3C(v88, &unk_1003D9140, &qword_10033E640);

      swift_arrayDestroy();
    }

    else
    {
      sub_100195024(v185, type metadata accessor for CustodianRecord);
      sub_100195024(v127, type metadata accessor for CustodianRecord);
    }

    v90 = v175;
    *v175 = v125;
    swift_storeEnumTagMultiPayload();
    swift_errorRetain();
    v177(v90);
  }

  else
  {
    v164 = v63;
    v119(v121, v110);
    v128 = v186;
    v129 = v162;
    sub_100194C44(v186, v162, type metadata accessor for CustodianRecord);
    v130 = v163;
    sub_100194C44(v128, v163, type metadata accessor for CustodianRecord);
    v131 = v110;
    v132 = Logger.logObject.getter();
    v133 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v132, v133))
    {
      v134 = swift_slowAlloc();
      v185 = swift_slowAlloc();
      v188[0] = v185;
      *v134 = 136315394;
      v135 = v179;
      v136 = *(v179 + 16);
      LODWORD(v184) = v133;
      v137 = v178;
      v138 = v170;
      v136(v178, v129, v170);
      v181 = type metadata accessor for CustodianRecord;
      sub_100195024(v129, type metadata accessor for CustodianRecord);
      sub_100195084(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v139 = dispatch thunk of CustomStringConvertible.description.getter();
      v182 = v132;
      v140 = v139;
      v142 = v141;
      (*(v135 + 8))(v137, v138);
      v143 = sub_10021145C(v140, v142, v188);

      *(v134 + 4) = v143;
      *(v134 + 12) = 2080;
      v144 = v180;
      sub_100307F40();
      v145 = v183;
      URL.appendingPathComponent(_:isDirectory:)();
      v119(v144, v131);
      v146 = v163;
      UUID.uuidString.getter();
      v147 = v171;
      URL.appendingPathComponent(_:)();

      v119(v145, v131);
      sub_100195024(v146, v181);
      sub_100195084(&qword_1003DD590, &type metadata accessor for URL, &protocol conformance descriptor for URL);
      v148 = dispatch thunk of CustomStringConvertible.description.getter();
      v150 = v149;
      v119(v147, v131);
      v151 = sub_10021145C(v148, v150, v188);
      v123 = v172;

      *(v134 + 14) = v151;
      v152 = v182;
      _os_log_impl(&_mh_execute_header, v182, v184, "Local Cache: Successfully saved record to local disk %s, %s", v134, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
      sub_100195024(v130, type metadata accessor for CustodianRecord);
      sub_100195024(v129, type metadata accessor for CustodianRecord);
    }

    v153 = v161;
    v90 = v175;
    sub_100194C44(v186, v175, type metadata accessor for CustodianRecord);
    swift_storeEnumTagMultiPayload();
    v177(v90);
    sub_100012324(v153, v164);
    sub_100012324(v123, v173);
  }

  return sub_100008D3C(v90, &unk_1003DA200, &unk_10033FA80);
}

uint64_t sub_100181B74(uint64_t a1, NSObject *a2, uint64_t (*a3)(uint64_t a1), int a4, void (*a5)(uint64_t), uint64_t a6)
{
  v183 = a6;
  v184 = a5;
  LODWORD(v176) = a4;
  v175 = a3;
  v180 = a2;
  v192 = a1;
  v181 = sub_100005814(&unk_1003DB610, &unk_10033FA90);
  __chkstk_darwin(v181);
  v182 = (&v162 - v6);
  v191 = type metadata accessor for URL();
  v189 = *(v191 - 8);
  v7 = __chkstk_darwin(v191);
  v174 = (&v162 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = __chkstk_darwin(v7);
  v188 = &v162 - v10;
  v11 = __chkstk_darwin(v9);
  v13 = &v162 - v12;
  __chkstk_darwin(v11);
  v15 = &v162 - v14;
  v16 = type metadata accessor for UUID();
  v187 = *(v16 - 8);
  __chkstk_darwin(v16);
  v186 = &v162 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v179 = type metadata accessor for CustodianRecoveryInfoRecord(0);
  v18 = __chkstk_darwin(v179);
  v20 = (&v162 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = __chkstk_darwin(v18);
  v23 = &v162 - v22;
  v24 = __chkstk_darwin(v21);
  v171 = &v162 - v25;
  v26 = __chkstk_darwin(v24);
  v170 = &v162 - v27;
  v28 = __chkstk_darwin(v26);
  v173 = &v162 - v29;
  v30 = __chkstk_darwin(v28);
  v172 = &v162 - v31;
  v32 = __chkstk_darwin(v30);
  v34 = &v162 - v33;
  __chkstk_darwin(v32);
  v36 = &v162 - v35;
  if (qword_1003D7F58 != -1)
  {
    swift_once();
  }

  v37 = type metadata accessor for Logger();
  v38 = sub_100008D04(v37, qword_1003FAAE8);
  v39 = v192;
  sub_100194C44(v192, v36, type metadata accessor for CustodianRecoveryInfoRecord);
  sub_100194C44(v39, v34, type metadata accessor for CustodianRecoveryInfoRecord);
  v190 = v38;
  v40 = Logger.logObject.getter();
  v41 = static os_log_type_t.default.getter();
  v42 = os_log_type_enabled(v40, v41);
  v178 = v15;
  v185 = v20;
  if (v42)
  {
    v43 = v13;
    v44 = swift_slowAlloc();
    v168 = swift_slowAlloc();
    v194[0] = v168;
    *v44 = 136315394;
    v45 = v187;
    v46 = *(v187 + 16);
    LODWORD(v167) = v41;
    v47 = v186;
    v46(v186, v36, v16);
    v166 = type metadata accessor for CustodianRecoveryInfoRecord;
    sub_100195024(v36, type metadata accessor for CustodianRecoveryInfoRecord);
    sub_100195084(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v48 = dispatch thunk of CustomStringConvertible.description.getter();
    v169 = v23;
    v49 = v48;
    v51 = v50;
    (*(v45 + 8))(v47, v16);
    v52 = sub_10021145C(v49, v51, v194);

    *(v44 + 4) = v52;
    *(v44 + 12) = 2080;
    type metadata accessor for LocalCache();
    v177 = v16;
    v53 = v188;
    sub_100307F40();
    URL.appendingPathComponent(_:isDirectory:)();
    v54 = v43;
    v55 = *(v189 + 1);
    v56 = v53;
    v57 = v191;
    v55(v56, v191);
    UUID.uuidString.getter();
    URL.appendingPathComponent(_:)();

    v55(v54, v57);
    sub_100195024(v34, v166);
    sub_100195084(&qword_1003DD590, &type metadata accessor for URL, &protocol conformance descriptor for URL);
    v58 = dispatch thunk of CustomStringConvertible.description.getter();
    v60 = v59;
    v61 = v57;
    v16 = v177;
    v55(v15, v61);
    v20 = v185;
    v62 = v54;
    v23 = v169;
    v63 = sub_10021145C(v58, v60, v194);

    *(v44 + 14) = v63;
    _os_log_impl(&_mh_execute_header, v40, v167, "Local Cache: Saving record: %s at path: %s", v44, 0x16u);
    swift_arrayDestroy();

    v13 = v62;
  }

  else
  {
    sub_100195024(v34, type metadata accessor for CustodianRecoveryInfoRecord);
    sub_100195024(v36, type metadata accessor for CustodianRecoveryInfoRecord);
  }

  sub_100195084(&qword_1003DD858, type metadata accessor for CustodianRecoveryInfoRecord, &unk_100341E80);

  v64 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v66 = v65;

  v67 = objc_autoreleasePoolPush();
  sub_10030348C(v64, v66, &v193, v194);
  v167 = 0;
  v168 = v64;
  v169 = v66;
  objc_autoreleasePoolPop(v67);

  v179 = v194[0];
  v180 = v194[1];
  v93 = v192;
  v94 = v172;
  sub_100194C44(v192, v172, type metadata accessor for CustodianRecoveryInfoRecord);
  v95 = v173;
  sub_100194C44(v93, v173, type metadata accessor for CustodianRecoveryInfoRecord);
  v96 = Logger.logObject.getter();
  v97 = static os_log_type_t.default.getter();
  v98 = os_log_type_enabled(v96, v97);
  v177 = v16;
  if (v98)
  {
    v99 = swift_slowAlloc();
    v166 = v99;
    v165 = swift_slowAlloc();
    v194[0] = v165;
    *v99 = 136315394;
    v101 = v186;
    v100 = v187;
    (*(v187 + 16))(v186, v94, v16);
    v162 = type metadata accessor for CustodianRecoveryInfoRecord;
    sub_100195024(v94, type metadata accessor for CustodianRecoveryInfoRecord);
    sub_100195084(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v164 = v96;
    v102 = dispatch thunk of CustomStringConvertible.description.getter();
    v163 = v97;
    v103 = v102;
    v105 = v104;
    (*(v100 + 8))(v101, v16);
    v106 = sub_10021145C(v103, v105, v194);

    v107 = v166;
    *(v166 + 4) = v106;
    *(v107 + 6) = 2080;
    type metadata accessor for LocalCache();
    v108 = v188;
    sub_100307F40();
    v172 = 0x800000010032CEE0;
    URL.appendingPathComponent(_:isDirectory:)();
    v109 = v13;
    v110 = v95;
    v111 = v189;
    v112 = *(v189 + 1);
    v113 = v108;
    v114 = v191;
    v112(v113, v191);
    UUID.uuidString.getter();
    v115 = v178;
    URL.appendingPathComponent(_:)();

    v112(v109, v114);
    sub_100195024(v110, v162);
    sub_100195084(&qword_1003DD590, &type metadata accessor for URL, &protocol conformance descriptor for URL);
    v116 = dispatch thunk of CustomStringConvertible.description.getter();
    v118 = v117;
    v112(v115, v114);
    v20 = v185;
    v13 = v109;
    v119 = v172;
    v120 = sub_10021145C(v116, v118, v194);

    v121 = v166;
    *(v166 + 14) = v120;
    v122 = v164;
    _os_log_impl(&_mh_execute_header, v164, v163, "Local Cache: Successfully encrypted record %s, %s", v121, 0x16u);
    swift_arrayDestroy();

    v123 = v111;
  }

  else
  {
    sub_100195024(v95, type metadata accessor for CustodianRecoveryInfoRecord);
    sub_100195024(v94, type metadata accessor for CustodianRecoveryInfoRecord);

    v119 = 0x800000010032CEE0;
    v114 = v191;
    v115 = v178;
    v123 = v189;
  }

  v172 = v119;
  v124 = type metadata accessor for LocalCache();
  sub_100307F40();
  URL.appendingPathComponent(_:isDirectory:)();
  v125 = *(v123 + 1);
  v125(v13, v114);
  _sSo13NSFileManagerC13appleaccountdE26createDirectoryIfNecessary3url10attributesSb10Foundation3URLV_SDySo0A12AttributeKeyaypGSgtFZ_0(v115, 0);
  v125(v115, v114);
  v166 = v124;
  sub_100307F40();
  URL.appendingPathComponent(_:isDirectory:)();
  v125(v13, v114);
  UUID.uuidString.getter();
  v126 = v174;
  URL.appendingPathComponent(_:)();
  v127 = v126;

  v128 = v115;
  v129 = v125;
  v173 = v123 + 8;
  v125(v128, v114);
  v131 = v179;
  v130 = v180;
  v132 = v126;
  v133 = v167;
  sub_10030A77C(v179, v180, v132, v175, v176);
  if (v133)
  {
    v129(v127, v114);
    sub_100012324(v131, v130);
    sub_100012324(v168, v169);
    v134 = v177;
    v68 = v192;
    sub_100194C44(v192, v23, type metadata accessor for CustodianRecoveryInfoRecord);
    sub_100194C44(v68, v20, type metadata accessor for CustodianRecoveryInfoRecord);
    swift_errorRetain();
    v69 = Logger.logObject.getter();
    v70 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v69, v70))
    {
      v71 = swift_slowAlloc();
      v190 = swift_slowAlloc();
      v192 = swift_slowAlloc();
      v194[0] = v192;
      *v71 = 136315650;
      v73 = v186;
      v72 = v187;
      (*(v187 + 16))(v186, v23, v134);
      v180 = v69;
      v176 = type metadata accessor for CustodianRecoveryInfoRecord;
      sub_100195024(v23, type metadata accessor for CustodianRecoveryInfoRecord);
      sub_100195084(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      LODWORD(v179) = v70;
      v74 = dispatch thunk of CustomStringConvertible.description.getter();
      v76 = v75;
      (*(v72 + 8))(v73, v134);
      v77 = sub_10021145C(v74, v76, v194);

      *(v71 + 4) = v77;
      *(v71 + 12) = 2080;
      type metadata accessor for LocalCache();
      v78 = v188;
      sub_100307F40();
      URL.appendingPathComponent(_:isDirectory:)();
      v79 = v13;
      v80 = *(v189 + 1);
      v81 = v191;
      v80(v78, v191);
      v82 = v185;
      UUID.uuidString.getter();
      v83 = v178;
      URL.appendingPathComponent(_:)();

      v80(v79, v81);
      sub_100195024(v82, v176);
      sub_100195084(&qword_1003DD590, &type metadata accessor for URL, &protocol conformance descriptor for URL);
      v84 = dispatch thunk of CustomStringConvertible.description.getter();
      v86 = v85;
      v80(v83, v81);
      v87 = sub_10021145C(v84, v86, v194);

      *(v71 + 14) = v87;
      *(v71 + 22) = 2112;
      v88 = _convertErrorToNSError(_:)();
      *(v71 + 24) = v88;
      v89 = v190;
      *v190 = v88;
      v90 = v180;
      _os_log_impl(&_mh_execute_header, v180, v179, "Local Cache: Error adding record %s with URL %s to local disk: %@", v71, 0x20u);
      sub_100008D3C(v89, &unk_1003D9140, &qword_10033E640);

      swift_arrayDestroy();
    }

    else
    {
      sub_100195024(v20, type metadata accessor for CustodianRecoveryInfoRecord);
      sub_100195024(v23, type metadata accessor for CustodianRecoveryInfoRecord);
    }

    v91 = v182;
    *v182 = v133;
    swift_storeEnumTagMultiPayload();
    swift_errorRetain();
    v184(v91);
  }

  else
  {
    v189 = v13;
    v135 = v129;
    v129(v127, v114);
    v136 = v192;
    v137 = v170;
    sub_100194C44(v192, v170, type metadata accessor for CustodianRecoveryInfoRecord);
    v138 = v171;
    sub_100194C44(v136, v171, type metadata accessor for CustodianRecoveryInfoRecord);
    v139 = Logger.logObject.getter();
    v140 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v139, v140))
    {
      v141 = swift_slowAlloc();
      v190 = swift_slowAlloc();
      v194[0] = v190;
      *v141 = 136315394;
      v142 = v187;
      v143 = *(v187 + 16);
      v185 = v139;
      v144 = v186;
      LODWORD(v176) = v140;
      v145 = v177;
      v143(v186, v137, v177);
      v175 = type metadata accessor for CustodianRecoveryInfoRecord;
      sub_100195024(v137, type metadata accessor for CustodianRecoveryInfoRecord);
      sub_100195084(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v146 = v138;
      v147 = dispatch thunk of CustomStringConvertible.description.getter();
      v149 = v148;
      (*(v142 + 8))(v144, v145);
      v131 = v179;
      v150 = sub_10021145C(v147, v149, v194);

      *(v141 + 4) = v150;
      *(v141 + 12) = 2080;
      v151 = v188;
      sub_100307F40();
      v152 = v189;
      URL.appendingPathComponent(_:isDirectory:)();
      v153 = v191;
      v135(v151, v191);
      UUID.uuidString.getter();
      v154 = v178;
      URL.appendingPathComponent(_:)();

      v135(v152, v153);
      sub_100195024(v146, v175);
      sub_100195084(&qword_1003DD590, &type metadata accessor for URL, &protocol conformance descriptor for URL);
      v155 = dispatch thunk of CustomStringConvertible.description.getter();
      v157 = v156;
      v135(v154, v153);
      v158 = sub_10021145C(v155, v157, v194);

      *(v141 + 14) = v158;
      v159 = v185;
      _os_log_impl(&_mh_execute_header, v185, v176, "Local Cache: Successfully saved record to local disk %s, %s", v141, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
      sub_100195024(v138, type metadata accessor for CustodianRecoveryInfoRecord);
      sub_100195024(v137, type metadata accessor for CustodianRecoveryInfoRecord);
    }

    v160 = v169;
    v161 = v168;
    v91 = v182;
    sub_100194C44(v192, v182, type metadata accessor for CustodianRecoveryInfoRecord);
    swift_storeEnumTagMultiPayload();
    v184(v91);
    sub_100012324(v161, v160);
    sub_100012324(v131, v180);
  }

  return sub_100008D3C(v91, &unk_1003DB610, &unk_10033FA90);
}

uint64_t sub_100183064(uint64_t a1, NSObject *a2, uint64_t (*a3)(uint64_t a1), int a4, void (*a5)(uint64_t), uint64_t a6)
{
  v183 = a6;
  v184 = a5;
  LODWORD(v176) = a4;
  v175 = a3;
  v180 = a2;
  v192 = a1;
  v181 = sub_100005814(&qword_1003D91E8, &qword_100346AC0);
  __chkstk_darwin(v181);
  v182 = (&v162 - v6);
  v191 = type metadata accessor for URL();
  v189 = *(v191 - 8);
  v7 = __chkstk_darwin(v191);
  v174 = (&v162 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = __chkstk_darwin(v7);
  v188 = &v162 - v10;
  v11 = __chkstk_darwin(v9);
  v13 = &v162 - v12;
  __chkstk_darwin(v11);
  v15 = &v162 - v14;
  v16 = type metadata accessor for UUID();
  v187 = *(v16 - 8);
  __chkstk_darwin(v16);
  v186 = &v162 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v179 = type metadata accessor for CustodianHealthRecord(0);
  v18 = __chkstk_darwin(v179);
  v20 = (&v162 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = __chkstk_darwin(v18);
  v23 = &v162 - v22;
  v24 = __chkstk_darwin(v21);
  v171 = &v162 - v25;
  v26 = __chkstk_darwin(v24);
  v170 = &v162 - v27;
  v28 = __chkstk_darwin(v26);
  v173 = &v162 - v29;
  v30 = __chkstk_darwin(v28);
  v172 = &v162 - v31;
  v32 = __chkstk_darwin(v30);
  v34 = &v162 - v33;
  __chkstk_darwin(v32);
  v36 = &v162 - v35;
  if (qword_1003D7F58 != -1)
  {
    swift_once();
  }

  v37 = type metadata accessor for Logger();
  v38 = sub_100008D04(v37, qword_1003FAAE8);
  v39 = v192;
  sub_100194C44(v192, v36, type metadata accessor for CustodianHealthRecord);
  sub_100194C44(v39, v34, type metadata accessor for CustodianHealthRecord);
  v190 = v38;
  v40 = Logger.logObject.getter();
  v41 = static os_log_type_t.default.getter();
  v42 = os_log_type_enabled(v40, v41);
  v178 = v15;
  v185 = v20;
  if (v42)
  {
    v43 = v13;
    v44 = swift_slowAlloc();
    v168 = swift_slowAlloc();
    v194[0] = v168;
    *v44 = 136315394;
    v45 = v187;
    v46 = *(v187 + 16);
    LODWORD(v167) = v41;
    v47 = v186;
    v46(v186, v36, v16);
    v166 = type metadata accessor for CustodianHealthRecord;
    sub_100195024(v36, type metadata accessor for CustodianHealthRecord);
    sub_100195084(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v48 = dispatch thunk of CustomStringConvertible.description.getter();
    v169 = v23;
    v49 = v48;
    v51 = v50;
    (*(v45 + 8))(v47, v16);
    v52 = sub_10021145C(v49, v51, v194);

    *(v44 + 4) = v52;
    *(v44 + 12) = 2080;
    type metadata accessor for LocalCache();
    v177 = v16;
    v53 = v188;
    sub_100307F40();
    URL.appendingPathComponent(_:isDirectory:)();
    v54 = v43;
    v55 = *(v189 + 1);
    v56 = v53;
    v57 = v191;
    v55(v56, v191);
    UUID.uuidString.getter();
    URL.appendingPathComponent(_:)();

    v55(v54, v57);
    sub_100195024(v34, v166);
    sub_100195084(&qword_1003DD590, &type metadata accessor for URL, &protocol conformance descriptor for URL);
    v58 = dispatch thunk of CustomStringConvertible.description.getter();
    v60 = v59;
    v61 = v57;
    v16 = v177;
    v55(v15, v61);
    v20 = v185;
    v62 = v54;
    v23 = v169;
    v63 = sub_10021145C(v58, v60, v194);

    *(v44 + 14) = v63;
    _os_log_impl(&_mh_execute_header, v40, v167, "Local Cache: Saving record: %s at path: %s", v44, 0x16u);
    swift_arrayDestroy();

    v13 = v62;
  }

  else
  {
    sub_100195024(v34, type metadata accessor for CustodianHealthRecord);
    sub_100195024(v36, type metadata accessor for CustodianHealthRecord);
  }

  sub_100195084(&qword_1003DD5A8, type metadata accessor for CustodianHealthRecord, &unk_100341A70);

  v64 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v66 = v65;

  v67 = objc_autoreleasePoolPush();
  sub_10030348C(v64, v66, &v193, v194);
  v167 = 0;
  v168 = v64;
  v169 = v66;
  objc_autoreleasePoolPop(v67);

  v179 = v194[0];
  v180 = v194[1];
  v93 = v192;
  v94 = v172;
  sub_100194C44(v192, v172, type metadata accessor for CustodianHealthRecord);
  v95 = v173;
  sub_100194C44(v93, v173, type metadata accessor for CustodianHealthRecord);
  v96 = Logger.logObject.getter();
  v97 = static os_log_type_t.default.getter();
  v98 = os_log_type_enabled(v96, v97);
  v177 = v16;
  if (v98)
  {
    v99 = swift_slowAlloc();
    v166 = v99;
    v165 = swift_slowAlloc();
    v194[0] = v165;
    *v99 = 136315394;
    v101 = v186;
    v100 = v187;
    (*(v187 + 16))(v186, v94, v16);
    v162 = type metadata accessor for CustodianHealthRecord;
    sub_100195024(v94, type metadata accessor for CustodianHealthRecord);
    sub_100195084(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v164 = v96;
    v102 = dispatch thunk of CustomStringConvertible.description.getter();
    v163 = v97;
    v103 = v102;
    v105 = v104;
    (*(v100 + 8))(v101, v16);
    v106 = sub_10021145C(v103, v105, v194);

    v107 = v166;
    *(v166 + 4) = v106;
    *(v107 + 6) = 2080;
    type metadata accessor for LocalCache();
    v108 = v188;
    sub_100307F40();
    v172 = 0x800000010032CDD0;
    URL.appendingPathComponent(_:isDirectory:)();
    v109 = v13;
    v110 = v95;
    v111 = v189;
    v112 = *(v189 + 1);
    v113 = v108;
    v114 = v191;
    v112(v113, v191);
    UUID.uuidString.getter();
    v115 = v178;
    URL.appendingPathComponent(_:)();

    v112(v109, v114);
    sub_100195024(v110, v162);
    sub_100195084(&qword_1003DD590, &type metadata accessor for URL, &protocol conformance descriptor for URL);
    v116 = dispatch thunk of CustomStringConvertible.description.getter();
    v118 = v117;
    v112(v115, v114);
    v20 = v185;
    v13 = v109;
    v119 = v172;
    v120 = sub_10021145C(v116, v118, v194);

    v121 = v166;
    *(v166 + 14) = v120;
    v122 = v164;
    _os_log_impl(&_mh_execute_header, v164, v163, "Local Cache: Successfully encrypted record %s, %s", v121, 0x16u);
    swift_arrayDestroy();

    v123 = v111;
  }

  else
  {
    sub_100195024(v95, type metadata accessor for CustodianHealthRecord);
    sub_100195024(v94, type metadata accessor for CustodianHealthRecord);

    v119 = 0x800000010032CDD0;
    v114 = v191;
    v115 = v178;
    v123 = v189;
  }

  v172 = v119;
  v124 = type metadata accessor for LocalCache();
  sub_100307F40();
  URL.appendingPathComponent(_:isDirectory:)();
  v125 = *(v123 + 1);
  v125(v13, v114);
  _sSo13NSFileManagerC13appleaccountdE26createDirectoryIfNecessary3url10attributesSb10Foundation3URLV_SDySo0A12AttributeKeyaypGSgtFZ_0(v115, 0);
  v125(v115, v114);
  v166 = v124;
  sub_100307F40();
  URL.appendingPathComponent(_:isDirectory:)();
  v125(v13, v114);
  UUID.uuidString.getter();
  v126 = v174;
  URL.appendingPathComponent(_:)();
  v127 = v126;

  v128 = v115;
  v129 = v125;
  v173 = v123 + 8;
  v125(v128, v114);
  v131 = v179;
  v130 = v180;
  v132 = v126;
  v133 = v167;
  sub_10030A77C(v179, v180, v132, v175, v176);
  if (v133)
  {
    v129(v127, v114);
    sub_100012324(v131, v130);
    sub_100012324(v168, v169);
    v134 = v177;
    v68 = v192;
    sub_100194C44(v192, v23, type metadata accessor for CustodianHealthRecord);
    sub_100194C44(v68, v20, type metadata accessor for CustodianHealthRecord);
    swift_errorRetain();
    v69 = Logger.logObject.getter();
    v70 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v69, v70))
    {
      v71 = swift_slowAlloc();
      v190 = swift_slowAlloc();
      v192 = swift_slowAlloc();
      v194[0] = v192;
      *v71 = 136315650;
      v73 = v186;
      v72 = v187;
      (*(v187 + 16))(v186, v23, v134);
      v180 = v69;
      v176 = type metadata accessor for CustodianHealthRecord;
      sub_100195024(v23, type metadata accessor for CustodianHealthRecord);
      sub_100195084(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      LODWORD(v179) = v70;
      v74 = dispatch thunk of CustomStringConvertible.description.getter();
      v76 = v75;
      (*(v72 + 8))(v73, v134);
      v77 = sub_10021145C(v74, v76, v194);

      *(v71 + 4) = v77;
      *(v71 + 12) = 2080;
      type metadata accessor for LocalCache();
      v78 = v188;
      sub_100307F40();
      URL.appendingPathComponent(_:isDirectory:)();
      v79 = v13;
      v80 = *(v189 + 1);
      v81 = v191;
      v80(v78, v191);
      v82 = v185;
      UUID.uuidString.getter();
      v83 = v178;
      URL.appendingPathComponent(_:)();

      v80(v79, v81);
      sub_100195024(v82, v176);
      sub_100195084(&qword_1003DD590, &type metadata accessor for URL, &protocol conformance descriptor for URL);
      v84 = dispatch thunk of CustomStringConvertible.description.getter();
      v86 = v85;
      v80(v83, v81);
      v87 = sub_10021145C(v84, v86, v194);

      *(v71 + 14) = v87;
      *(v71 + 22) = 2112;
      v88 = _convertErrorToNSError(_:)();
      *(v71 + 24) = v88;
      v89 = v190;
      *v190 = v88;
      v90 = v180;
      _os_log_impl(&_mh_execute_header, v180, v179, "Local Cache: Error adding record %s with URL %s to local disk: %@", v71, 0x20u);
      sub_100008D3C(v89, &unk_1003D9140, &qword_10033E640);

      swift_arrayDestroy();
    }

    else
    {
      sub_100195024(v20, type metadata accessor for CustodianHealthRecord);
      sub_100195024(v23, type metadata accessor for CustodianHealthRecord);
    }

    v91 = v182;
    *v182 = v133;
    swift_storeEnumTagMultiPayload();
    swift_errorRetain();
    v184(v91);
  }

  else
  {
    v189 = v13;
    v135 = v129;
    v129(v127, v114);
    v136 = v192;
    v137 = v170;
    sub_100194C44(v192, v170, type metadata accessor for CustodianHealthRecord);
    v138 = v171;
    sub_100194C44(v136, v171, type metadata accessor for CustodianHealthRecord);
    v139 = Logger.logObject.getter();
    v140 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v139, v140))
    {
      v141 = swift_slowAlloc();
      v190 = swift_slowAlloc();
      v194[0] = v190;
      *v141 = 136315394;
      v142 = v187;
      v143 = *(v187 + 16);
      v185 = v139;
      v144 = v186;
      LODWORD(v176) = v140;
      v145 = v177;
      v143(v186, v137, v177);
      v175 = type metadata accessor for CustodianHealthRecord;
      sub_100195024(v137, type metadata accessor for CustodianHealthRecord);
      sub_100195084(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v146 = v138;
      v147 = dispatch thunk of CustomStringConvertible.description.getter();
      v149 = v148;
      (*(v142 + 8))(v144, v145);
      v131 = v179;
      v150 = sub_10021145C(v147, v149, v194);

      *(v141 + 4) = v150;
      *(v141 + 12) = 2080;
      v151 = v188;
      sub_100307F40();
      v152 = v189;
      URL.appendingPathComponent(_:isDirectory:)();
      v153 = v191;
      v135(v151, v191);
      UUID.uuidString.getter();
      v154 = v178;
      URL.appendingPathComponent(_:)();

      v135(v152, v153);
      sub_100195024(v146, v175);
      sub_100195084(&qword_1003DD590, &type metadata accessor for URL, &protocol conformance descriptor for URL);
      v155 = dispatch thunk of CustomStringConvertible.description.getter();
      v157 = v156;
      v135(v154, v153);
      v158 = sub_10021145C(v155, v157, v194);

      *(v141 + 14) = v158;
      v159 = v185;
      _os_log_impl(&_mh_execute_header, v185, v176, "Local Cache: Successfully saved record to local disk %s, %s", v141, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
      sub_100195024(v138, type metadata accessor for CustodianHealthRecord);
      sub_100195024(v137, type metadata accessor for CustodianHealthRecord);
    }

    v160 = v169;
    v161 = v168;
    v91 = v182;
    sub_100194C44(v192, v182, type metadata accessor for CustodianHealthRecord);
    swift_storeEnumTagMultiPayload();
    v184(v91);
    sub_100012324(v161, v160);
    sub_100012324(v131, v180);
  }

  return sub_100008D3C(v91, &qword_1003D91E8, &qword_100346AC0);
}

uint64_t sub_100184554(uint64_t a1, NSObject *a2, uint64_t (*a3)(uint64_t a1), int a4, void (*a5)(uint64_t), uint64_t a6)
{
  v183 = a6;
  v184 = a5;
  LODWORD(v176) = a4;
  v175 = a3;
  v180 = a2;
  v192 = a1;
  v181 = sub_100005814(&unk_1003DA0E0, &unk_10033F1D0);
  __chkstk_darwin(v181);
  v182 = (&v162 - v6);
  v191 = type metadata accessor for URL();
  v189 = *(v191 - 8);
  v7 = __chkstk_darwin(v191);
  v174 = (&v162 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = __chkstk_darwin(v7);
  v188 = &v162 - v10;
  v11 = __chkstk_darwin(v9);
  v13 = &v162 - v12;
  __chkstk_darwin(v11);
  v15 = &v162 - v14;
  v16 = type metadata accessor for UUID();
  v187 = *(v16 - 8);
  __chkstk_darwin(v16);
  v186 = &v162 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v179 = type metadata accessor for CustodianshipInfoRecord(0);
  v18 = __chkstk_darwin(v179);
  v20 = (&v162 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = __chkstk_darwin(v18);
  v23 = &v162 - v22;
  v24 = __chkstk_darwin(v21);
  v171 = &v162 - v25;
  v26 = __chkstk_darwin(v24);
  v170 = &v162 - v27;
  v28 = __chkstk_darwin(v26);
  v173 = &v162 - v29;
  v30 = __chkstk_darwin(v28);
  v172 = &v162 - v31;
  v32 = __chkstk_darwin(v30);
  v34 = &v162 - v33;
  __chkstk_darwin(v32);
  v36 = &v162 - v35;
  if (qword_1003D7F58 != -1)
  {
    swift_once();
  }

  v37 = type metadata accessor for Logger();
  v38 = sub_100008D04(v37, qword_1003FAAE8);
  v39 = v192;
  sub_100194C44(v192, v36, type metadata accessor for CustodianshipInfoRecord);
  sub_100194C44(v39, v34, type metadata accessor for CustodianshipInfoRecord);
  v190 = v38;
  v40 = Logger.logObject.getter();
  v41 = static os_log_type_t.default.getter();
  v42 = os_log_type_enabled(v40, v41);
  v178 = v15;
  v185 = v20;
  if (v42)
  {
    v43 = v13;
    v44 = swift_slowAlloc();
    v168 = swift_slowAlloc();
    v194[0] = v168;
    *v44 = 136315394;
    v45 = v187;
    v46 = *(v187 + 16);
    LODWORD(v167) = v41;
    v47 = v186;
    v46(v186, v36, v16);
    v166 = type metadata accessor for CustodianshipInfoRecord;
    sub_100195024(v36, type metadata accessor for CustodianshipInfoRecord);
    sub_100195084(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v48 = dispatch thunk of CustomStringConvertible.description.getter();
    v169 = v23;
    v49 = v48;
    v51 = v50;
    (*(v45 + 8))(v47, v16);
    v52 = sub_10021145C(v49, v51, v194);

    *(v44 + 4) = v52;
    *(v44 + 12) = 2080;
    type metadata accessor for LocalCache();
    v177 = v16;
    v53 = v188;
    sub_100307F40();
    URL.appendingPathComponent(_:isDirectory:)();
    v54 = v43;
    v55 = *(v189 + 1);
    v56 = v53;
    v57 = v191;
    v55(v56, v191);
    UUID.uuidString.getter();
    URL.appendingPathComponent(_:)();

    v55(v54, v57);
    sub_100195024(v34, v166);
    sub_100195084(&qword_1003DD590, &type metadata accessor for URL, &protocol conformance descriptor for URL);
    v58 = dispatch thunk of CustomStringConvertible.description.getter();
    v60 = v59;
    v61 = v57;
    v16 = v177;
    v55(v15, v61);
    v20 = v185;
    v62 = v54;
    v23 = v169;
    v63 = sub_10021145C(v58, v60, v194);

    *(v44 + 14) = v63;
    _os_log_impl(&_mh_execute_header, v40, v167, "Local Cache: Saving record: %s at path: %s", v44, 0x16u);
    swift_arrayDestroy();

    v13 = v62;
  }

  else
  {
    sub_100195024(v34, type metadata accessor for CustodianshipInfoRecord);
    sub_100195024(v36, type metadata accessor for CustodianshipInfoRecord);
  }

  sub_100195084(&qword_1003DDA48, type metadata accessor for CustodianshipInfoRecord, &unk_100342270);

  v64 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v66 = v65;

  v67 = objc_autoreleasePoolPush();
  sub_10030348C(v64, v66, &v193, v194);
  v167 = 0;
  v168 = v64;
  v169 = v66;
  objc_autoreleasePoolPop(v67);

  v179 = v194[0];
  v180 = v194[1];
  v93 = v192;
  v94 = v172;
  sub_100194C44(v192, v172, type metadata accessor for CustodianshipInfoRecord);
  v95 = v173;
  sub_100194C44(v93, v173, type metadata accessor for CustodianshipInfoRecord);
  v96 = Logger.logObject.getter();
  v97 = static os_log_type_t.default.getter();
  v98 = os_log_type_enabled(v96, v97);
  v177 = v16;
  if (v98)
  {
    v99 = swift_slowAlloc();
    v166 = v99;
    v165 = swift_slowAlloc();
    v194[0] = v165;
    *v99 = 136315394;
    v101 = v186;
    v100 = v187;
    (*(v187 + 16))(v186, v94, v16);
    v162 = type metadata accessor for CustodianshipInfoRecord;
    sub_100195024(v94, type metadata accessor for CustodianshipInfoRecord);
    sub_100195084(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v164 = v96;
    v102 = dispatch thunk of CustomStringConvertible.description.getter();
    v163 = v97;
    v103 = v102;
    v105 = v104;
    (*(v100 + 8))(v101, v16);
    v106 = sub_10021145C(v103, v105, v194);

    v107 = v166;
    *(v166 + 4) = v106;
    *(v107 + 6) = 2080;
    type metadata accessor for LocalCache();
    v108 = v188;
    sub_100307F40();
    v172 = 0x800000010032CE50;
    URL.appendingPathComponent(_:isDirectory:)();
    v109 = v13;
    v110 = v95;
    v111 = v189;
    v112 = *(v189 + 1);
    v113 = v108;
    v114 = v191;
    v112(v113, v191);
    UUID.uuidString.getter();
    v115 = v178;
    URL.appendingPathComponent(_:)();

    v112(v109, v114);
    sub_100195024(v110, v162);
    sub_100195084(&qword_1003DD590, &type metadata accessor for URL, &protocol conformance descriptor for URL);
    v116 = dispatch thunk of CustomStringConvertible.description.getter();
    v118 = v117;
    v112(v115, v114);
    v20 = v185;
    v13 = v109;
    v119 = v172;
    v120 = sub_10021145C(v116, v118, v194);

    v121 = v166;
    *(v166 + 14) = v120;
    v122 = v164;
    _os_log_impl(&_mh_execute_header, v164, v163, "Local Cache: Successfully encrypted record %s, %s", v121, 0x16u);
    swift_arrayDestroy();

    v123 = v111;
  }

  else
  {
    sub_100195024(v95, type metadata accessor for CustodianshipInfoRecord);
    sub_100195024(v94, type metadata accessor for CustodianshipInfoRecord);

    v119 = 0x800000010032CE50;
    v114 = v191;
    v115 = v178;
    v123 = v189;
  }

  v172 = v119;
  v124 = type metadata accessor for LocalCache();
  sub_100307F40();
  URL.appendingPathComponent(_:isDirectory:)();
  v125 = *(v123 + 1);
  v125(v13, v114);
  _sSo13NSFileManagerC13appleaccountdE26createDirectoryIfNecessary3url10attributesSb10Foundation3URLV_SDySo0A12AttributeKeyaypGSgtFZ_0(v115, 0);
  v125(v115, v114);
  v166 = v124;
  sub_100307F40();
  URL.appendingPathComponent(_:isDirectory:)();
  v125(v13, v114);
  UUID.uuidString.getter();
  v126 = v174;
  URL.appendingPathComponent(_:)();
  v127 = v126;

  v128 = v115;
  v129 = v125;
  v173 = v123 + 8;
  v125(v128, v114);
  v131 = v179;
  v130 = v180;
  v132 = v126;
  v133 = v167;
  sub_10030A77C(v179, v180, v132, v175, v176);
  if (v133)
  {
    v129(v127, v114);
    sub_100012324(v131, v130);
    sub_100012324(v168, v169);
    v134 = v177;
    v68 = v192;
    sub_100194C44(v192, v23, type metadata accessor for CustodianshipInfoRecord);
    sub_100194C44(v68, v20, type metadata accessor for CustodianshipInfoRecord);
    swift_errorRetain();
    v69 = Logger.logObject.getter();
    v70 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v69, v70))
    {
      v71 = swift_slowAlloc();
      v190 = swift_slowAlloc();
      v192 = swift_slowAlloc();
      v194[0] = v192;
      *v71 = 136315650;
      v73 = v186;
      v72 = v187;
      (*(v187 + 16))(v186, v23, v134);
      v180 = v69;
      v176 = type metadata accessor for CustodianshipInfoRecord;
      sub_100195024(v23, type metadata accessor for CustodianshipInfoRecord);
      sub_100195084(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      LODWORD(v179) = v70;
      v74 = dispatch thunk of CustomStringConvertible.description.getter();
      v76 = v75;
      (*(v72 + 8))(v73, v134);
      v77 = sub_10021145C(v74, v76, v194);

      *(v71 + 4) = v77;
      *(v71 + 12) = 2080;
      type metadata accessor for LocalCache();
      v78 = v188;
      sub_100307F40();
      URL.appendingPathComponent(_:isDirectory:)();
      v79 = v13;
      v80 = *(v189 + 1);
      v81 = v191;
      v80(v78, v191);
      v82 = v185;
      UUID.uuidString.getter();
      v83 = v178;
      URL.appendingPathComponent(_:)();

      v80(v79, v81);
      sub_100195024(v82, v176);
      sub_100195084(&qword_1003DD590, &type metadata accessor for URL, &protocol conformance descriptor for URL);
      v84 = dispatch thunk of CustomStringConvertible.description.getter();
      v86 = v85;
      v80(v83, v81);
      v87 = sub_10021145C(v84, v86, v194);

      *(v71 + 14) = v87;
      *(v71 + 22) = 2112;
      v88 = _convertErrorToNSError(_:)();
      *(v71 + 24) = v88;
      v89 = v190;
      *v190 = v88;
      v90 = v180;
      _os_log_impl(&_mh_execute_header, v180, v179, "Local Cache: Error adding record %s with URL %s to local disk: %@", v71, 0x20u);
      sub_100008D3C(v89, &unk_1003D9140, &qword_10033E640);

      swift_arrayDestroy();
    }

    else
    {
      sub_100195024(v20, type metadata accessor for CustodianshipInfoRecord);
      sub_100195024(v23, type metadata accessor for CustodianshipInfoRecord);
    }

    v91 = v182;
    *v182 = v133;
    swift_storeEnumTagMultiPayload();
    swift_errorRetain();
    v184(v91);
  }

  else
  {
    v189 = v13;
    v135 = v129;
    v129(v127, v114);
    v136 = v192;
    v137 = v170;
    sub_100194C44(v192, v170, type metadata accessor for CustodianshipInfoRecord);
    v138 = v171;
    sub_100194C44(v136, v171, type metadata accessor for CustodianshipInfoRecord);
    v139 = Logger.logObject.getter();
    v140 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v139, v140))
    {
      v141 = swift_slowAlloc();
      v190 = swift_slowAlloc();
      v194[0] = v190;
      *v141 = 136315394;
      v142 = v187;
      v143 = *(v187 + 16);
      v185 = v139;
      v144 = v186;
      LODWORD(v176) = v140;
      v145 = v177;
      v143(v186, v137, v177);
      v175 = type metadata accessor for CustodianshipInfoRecord;
      sub_100195024(v137, type metadata accessor for CustodianshipInfoRecord);
      sub_100195084(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v146 = v138;
      v147 = dispatch thunk of CustomStringConvertible.description.getter();
      v149 = v148;
      (*(v142 + 8))(v144, v145);
      v131 = v179;
      v150 = sub_10021145C(v147, v149, v194);

      *(v141 + 4) = v150;
      *(v141 + 12) = 2080;
      v151 = v188;
      sub_100307F40();
      v152 = v189;
      URL.appendingPathComponent(_:isDirectory:)();
      v153 = v191;
      v135(v151, v191);
      UUID.uuidString.getter();
      v154 = v178;
      URL.appendingPathComponent(_:)();

      v135(v152, v153);
      sub_100195024(v146, v175);
      sub_100195084(&qword_1003DD590, &type metadata accessor for URL, &protocol conformance descriptor for URL);
      v155 = dispatch thunk of CustomStringConvertible.description.getter();
      v157 = v156;
      v135(v154, v153);
      v158 = sub_10021145C(v155, v157, v194);

      *(v141 + 14) = v158;
      v159 = v185;
      _os_log_impl(&_mh_execute_header, v185, v176, "Local Cache: Successfully saved record to local disk %s, %s", v141, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
      sub_100195024(v138, type metadata accessor for CustodianshipInfoRecord);
      sub_100195024(v137, type metadata accessor for CustodianshipInfoRecord);
    }

    v160 = v169;
    v161 = v168;
    v91 = v182;
    sub_100194C44(v192, v182, type metadata accessor for CustodianshipInfoRecord);
    swift_storeEnumTagMultiPayload();
    v184(v91);
    sub_100012324(v161, v160);
    sub_100012324(v131, v180);
  }

  return sub_100008D3C(v91, &unk_1003DA0E0, &unk_10033F1D0);
}

uint64_t sub_100185A44(uint64_t a1, NSObject *a2, uint64_t (*a3)(uint64_t a1), int a4, void (*a5)(uint64_t), uint64_t a6)
{
  v183 = a6;
  v184 = a5;
  LODWORD(v176) = a4;
  v175 = a3;
  v180 = a2;
  v192 = a1;
  v181 = sub_100005814(&qword_1003DA0F0, qword_100342AC0);
  __chkstk_darwin(v181);
  v182 = (&v162 - v6);
  v191 = type metadata accessor for URL();
  v189 = *(v191 - 8);
  v7 = __chkstk_darwin(v191);
  v174 = (&v162 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = __chkstk_darwin(v7);
  v188 = &v162 - v10;
  v11 = __chkstk_darwin(v9);
  v13 = &v162 - v12;
  __chkstk_darwin(v11);
  v15 = &v162 - v14;
  v16 = type metadata accessor for UUID();
  v187 = *(v16 - 8);
  __chkstk_darwin(v16);
  v186 = &v162 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v179 = type metadata accessor for CustodianRecoverySessionRecord(0);
  v18 = __chkstk_darwin(v179);
  v20 = (&v162 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = __chkstk_darwin(v18);
  v23 = &v162 - v22;
  v24 = __chkstk_darwin(v21);
  v171 = &v162 - v25;
  v26 = __chkstk_darwin(v24);
  v170 = &v162 - v27;
  v28 = __chkstk_darwin(v26);
  v173 = &v162 - v29;
  v30 = __chkstk_darwin(v28);
  v172 = &v162 - v31;
  v32 = __chkstk_darwin(v30);
  v34 = &v162 - v33;
  __chkstk_darwin(v32);
  v36 = &v162 - v35;
  if (qword_1003D7F58 != -1)
  {
    swift_once();
  }

  v37 = type metadata accessor for Logger();
  v38 = sub_100008D04(v37, qword_1003FAAE8);
  v39 = v192;
  sub_100194C44(v192, v36, type metadata accessor for CustodianRecoverySessionRecord);
  sub_100194C44(v39, v34, type metadata accessor for CustodianRecoverySessionRecord);
  v190 = v38;
  v40 = Logger.logObject.getter();
  v41 = static os_log_type_t.default.getter();
  v42 = os_log_type_enabled(v40, v41);
  v178 = v15;
  v185 = v20;
  if (v42)
  {
    v43 = v13;
    v44 = swift_slowAlloc();
    v168 = swift_slowAlloc();
    v194[0] = v168;
    *v44 = 136315394;
    v45 = v187;
    v46 = *(v187 + 16);
    LODWORD(v167) = v41;
    v47 = v186;
    v46(v186, v36, v16);
    v166 = type metadata accessor for CustodianRecoverySessionRecord;
    sub_100195024(v36, type metadata accessor for CustodianRecoverySessionRecord);
    sub_100195084(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v48 = dispatch thunk of CustomStringConvertible.description.getter();
    v169 = v23;
    v49 = v48;
    v51 = v50;
    (*(v45 + 8))(v47, v16);
    v52 = sub_10021145C(v49, v51, v194);

    *(v44 + 4) = v52;
    *(v44 + 12) = 2080;
    type metadata accessor for LocalCache();
    v177 = v16;
    v53 = v188;
    sub_100307F40();
    URL.appendingPathComponent(_:isDirectory:)();
    v54 = v43;
    v55 = *(v189 + 1);
    v56 = v53;
    v57 = v191;
    v55(v56, v191);
    UUID.uuidString.getter();
    URL.appendingPathComponent(_:)();

    v55(v54, v57);
    sub_100195024(v34, v166);
    sub_100195084(&qword_1003DD590, &type metadata accessor for URL, &protocol conformance descriptor for URL);
    v58 = dispatch thunk of CustomStringConvertible.description.getter();
    v60 = v59;
    v61 = v57;
    v16 = v177;
    v55(v15, v61);
    v20 = v185;
    v62 = v54;
    v23 = v169;
    v63 = sub_10021145C(v58, v60, v194);

    *(v44 + 14) = v63;
    _os_log_impl(&_mh_execute_header, v40, v167, "Local Cache: Saving record: %s at path: %s", v44, 0x16u);
    swift_arrayDestroy();

    v13 = v62;
  }

  else
  {
    sub_100195024(v34, type metadata accessor for CustodianRecoverySessionRecord);
    sub_100195024(v36, type metadata accessor for CustodianRecoverySessionRecord);
  }

  sub_100195084(&qword_1003DD960, type metadata accessor for CustodianRecoverySessionRecord, &unk_100342080);

  v64 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v66 = v65;

  v67 = objc_autoreleasePoolPush();
  sub_10030348C(v64, v66, &v193, v194);
  v167 = 0;
  v168 = v64;
  v169 = v66;
  objc_autoreleasePoolPop(v67);

  v179 = v194[0];
  v180 = v194[1];
  v93 = v192;
  v94 = v172;
  sub_100194C44(v192, v172, type metadata accessor for CustodianRecoverySessionRecord);
  v95 = v173;
  sub_100194C44(v93, v173, type metadata accessor for CustodianRecoverySessionRecord);
  v96 = Logger.logObject.getter();
  v97 = static os_log_type_t.default.getter();
  v98 = os_log_type_enabled(v96, v97);
  v177 = v16;
  if (v98)
  {
    v99 = swift_slowAlloc();
    v166 = v99;
    v165 = swift_slowAlloc();
    v194[0] = v165;
    *v99 = 136315394;
    v101 = v186;
    v100 = v187;
    (*(v187 + 16))(v186, v94, v16);
    v162 = type metadata accessor for CustodianRecoverySessionRecord;
    sub_100195024(v94, type metadata accessor for CustodianRecoverySessionRecord);
    sub_100195084(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v164 = v96;
    v102 = dispatch thunk of CustomStringConvertible.description.getter();
    v163 = v97;
    v103 = v102;
    v105 = v104;
    (*(v100 + 8))(v101, v16);
    v106 = sub_10021145C(v103, v105, v194);

    v107 = v166;
    *(v166 + 4) = v106;
    *(v107 + 6) = 2080;
    type metadata accessor for LocalCache();
    v108 = v188;
    sub_100307F40();
    v172 = 0x800000010032CDB0;
    URL.appendingPathComponent(_:isDirectory:)();
    v109 = v13;
    v110 = v95;
    v111 = v189;
    v112 = *(v189 + 1);
    v113 = v108;
    v114 = v191;
    v112(v113, v191);
    UUID.uuidString.getter();
    v115 = v178;
    URL.appendingPathComponent(_:)();

    v112(v109, v114);
    sub_100195024(v110, v162);
    sub_100195084(&qword_1003DD590, &type metadata accessor for URL, &protocol conformance descriptor for URL);
    v116 = dispatch thunk of CustomStringConvertible.description.getter();
    v118 = v117;
    v112(v115, v114);
    v20 = v185;
    v13 = v109;
    v119 = v172;
    v120 = sub_10021145C(v116, v118, v194);

    v121 = v166;
    *(v166 + 14) = v120;
    v122 = v164;
    _os_log_impl(&_mh_execute_header, v164, v163, "Local Cache: Successfully encrypted record %s, %s", v121, 0x16u);
    swift_arrayDestroy();

    v123 = v111;
  }

  else
  {
    sub_100195024(v95, type metadata accessor for CustodianRecoverySessionRecord);
    sub_100195024(v94, type metadata accessor for CustodianRecoverySessionRecord);

    v119 = 0x800000010032CDB0;
    v114 = v191;
    v115 = v178;
    v123 = v189;
  }

  v172 = v119;
  v124 = type metadata accessor for LocalCache();
  sub_100307F40();
  URL.appendingPathComponent(_:isDirectory:)();
  v125 = *(v123 + 1);
  v125(v13, v114);
  _sSo13NSFileManagerC13appleaccountdE26createDirectoryIfNecessary3url10attributesSb10Foundation3URLV_SDySo0A12AttributeKeyaypGSgtFZ_0(v115, 0);
  v125(v115, v114);
  v166 = v124;
  sub_100307F40();
  URL.appendingPathComponent(_:isDirectory:)();
  v125(v13, v114);
  UUID.uuidString.getter();
  v126 = v174;
  URL.appendingPathComponent(_:)();
  v127 = v126;

  v128 = v115;
  v129 = v125;
  v173 = v123 + 8;
  v125(v128, v114);
  v131 = v179;
  v130 = v180;
  v132 = v126;
  v133 = v167;
  sub_10030A77C(v179, v180, v132, v175, v176);
  if (v133)
  {
    v129(v127, v114);
    sub_100012324(v131, v130);
    sub_100012324(v168, v169);
    v134 = v177;
    v68 = v192;
    sub_100194C44(v192, v23, type metadata accessor for CustodianRecoverySessionRecord);
    sub_100194C44(v68, v20, type metadata accessor for CustodianRecoverySessionRecord);
    swift_errorRetain();
    v69 = Logger.logObject.getter();
    v70 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v69, v70))
    {
      v71 = swift_slowAlloc();
      v190 = swift_slowAlloc();
      v192 = swift_slowAlloc();
      v194[0] = v192;
      *v71 = 136315650;
      v73 = v186;
      v72 = v187;
      (*(v187 + 16))(v186, v23, v134);
      v180 = v69;
      v176 = type metadata accessor for CustodianRecoverySessionRecord;
      sub_100195024(v23, type metadata accessor for CustodianRecoverySessionRecord);
      sub_100195084(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      LODWORD(v179) = v70;
      v74 = dispatch thunk of CustomStringConvertible.description.getter();
      v76 = v75;
      (*(v72 + 8))(v73, v134);
      v77 = sub_10021145C(v74, v76, v194);

      *(v71 + 4) = v77;
      *(v71 + 12) = 2080;
      type metadata accessor for LocalCache();
      v78 = v188;
      sub_100307F40();
      URL.appendingPathComponent(_:isDirectory:)();
      v79 = v13;
      v80 = *(v189 + 1);
      v81 = v191;
      v80(v78, v191);
      v82 = v185;
      UUID.uuidString.getter();
      v83 = v178;
      URL.appendingPathComponent(_:)();

      v80(v79, v81);
      sub_100195024(v82, v176);
      sub_100195084(&qword_1003DD590, &type metadata accessor for URL, &protocol conformance descriptor for URL);
      v84 = dispatch thunk of CustomStringConvertible.description.getter();
      v86 = v85;
      v80(v83, v81);
      v87 = sub_10021145C(v84, v86, v194);

      *(v71 + 14) = v87;
      *(v71 + 22) = 2112;
      v88 = _convertErrorToNSError(_:)();
      *(v71 + 24) = v88;
      v89 = v190;
      *v190 = v88;
      v90 = v180;
      _os_log_impl(&_mh_execute_header, v180, v179, "Local Cache: Error adding record %s with URL %s to local disk: %@", v71, 0x20u);
      sub_100008D3C(v89, &unk_1003D9140, &qword_10033E640);

      swift_arrayDestroy();
    }

    else
    {
      sub_100195024(v20, type metadata accessor for CustodianRecoverySessionRecord);
      sub_100195024(v23, type metadata accessor for CustodianRecoverySessionRecord);
    }

    v91 = v182;
    *v182 = v133;
    swift_storeEnumTagMultiPayload();
    swift_errorRetain();
    v184(v91);
  }

  else
  {
    v189 = v13;
    v135 = v129;
    v129(v127, v114);
    v136 = v192;
    v137 = v170;
    sub_100194C44(v192, v170, type metadata accessor for CustodianRecoverySessionRecord);
    v138 = v171;
    sub_100194C44(v136, v171, type metadata accessor for CustodianRecoverySessionRecord);
    v139 = Logger.logObject.getter();
    v140 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v139, v140))
    {
      v141 = swift_slowAlloc();
      v190 = swift_slowAlloc();
      v194[0] = v190;
      *v141 = 136315394;
      v142 = v187;
      v143 = *(v187 + 16);
      v185 = v139;
      v144 = v186;
      LODWORD(v176) = v140;
      v145 = v177;
      v143(v186, v137, v177);
      v175 = type metadata accessor for CustodianRecoverySessionRecord;
      sub_100195024(v137, type metadata accessor for CustodianRecoverySessionRecord);
      sub_100195084(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v146 = v138;
      v147 = dispatch thunk of CustomStringConvertible.description.getter();
      v149 = v148;
      (*(v142 + 8))(v144, v145);
      v131 = v179;
      v150 = sub_10021145C(v147, v149, v194);

      *(v141 + 4) = v150;
      *(v141 + 12) = 2080;
      v151 = v188;
      sub_100307F40();
      v152 = v189;
      URL.appendingPathComponent(_:isDirectory:)();
      v153 = v191;
      v135(v151, v191);
      UUID.uuidString.getter();
      v154 = v178;
      URL.appendingPathComponent(_:)();

      v135(v152, v153);
      sub_100195024(v146, v175);
      sub_100195084(&qword_1003DD590, &type metadata accessor for URL, &protocol conformance descriptor for URL);
      v155 = dispatch thunk of CustomStringConvertible.description.getter();
      v157 = v156;
      v135(v154, v153);
      v158 = sub_10021145C(v155, v157, v194);

      *(v141 + 14) = v158;
      v159 = v185;
      _os_log_impl(&_mh_execute_header, v185, v176, "Local Cache: Successfully saved record to local disk %s, %s", v141, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
      sub_100195024(v138, type metadata accessor for CustodianRecoverySessionRecord);
      sub_100195024(v137, type metadata accessor for CustodianRecoverySessionRecord);
    }

    v160 = v169;
    v161 = v168;
    v91 = v182;
    sub_100194C44(v192, v182, type metadata accessor for CustodianRecoverySessionRecord);
    swift_storeEnumTagMultiPayload();
    v184(v91);
    sub_100012324(v161, v160);
    sub_100012324(v131, v180);
  }

  return sub_100008D3C(v91, &qword_1003DA0F0, qword_100342AC0);
}

uint64_t sub_100186F34(uint64_t a1, NSObject *a2, uint64_t (*a3)(uint64_t a1), int a4, void (*a5)(uint64_t), uint64_t a6)
{
  v182 = a6;
  v183 = a5;
  LODWORD(v174) = a4;
  v173 = a3;
  v179 = a2;
  v193 = a1;
  v180 = sub_100005814(&unk_1003E10C0, &qword_100346A70);
  __chkstk_darwin(v180);
  v181 = (&v161 - v6);
  v7 = type metadata accessor for URL();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v172 = (&v161 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = __chkstk_darwin(v9);
  v187 = &v161 - v12;
  v13 = __chkstk_darwin(v11);
  v190 = &v161 - v14;
  __chkstk_darwin(v13);
  v16 = &v161 - v15;
  v186 = type metadata accessor for UUID();
  v192 = *(v186 - 8);
  __chkstk_darwin(v186);
  v185 = &v161 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for InheritanceHealthRecord(0);
  v19 = __chkstk_darwin(v18);
  v21 = &v161 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __chkstk_darwin(v19);
  v188 = &v161 - v23;
  v24 = __chkstk_darwin(v22);
  v170 = &v161 - v25;
  v26 = __chkstk_darwin(v24);
  v169 = &v161 - v27;
  v28 = __chkstk_darwin(v26);
  v175 = &v161 - v29;
  v30 = __chkstk_darwin(v28);
  v171 = (&v161 - v31);
  v32 = __chkstk_darwin(v30);
  v34 = &v161 - v33;
  __chkstk_darwin(v32);
  v36 = &v161 - v35;
  if (qword_1003D7F58 != -1)
  {
    swift_once();
  }

  v37 = type metadata accessor for Logger();
  v38 = sub_100008D04(v37, qword_1003FAAE8);
  v39 = v193;
  sub_100194C44(v193, v36, type metadata accessor for InheritanceHealthRecord);
  sub_100194C44(v39, v34, type metadata accessor for InheritanceHealthRecord);
  v189 = v38;
  v40 = Logger.logObject.getter();
  v41 = static os_log_type_t.default.getter();
  v42 = os_log_type_enabled(v40, v41);
  v177 = v16;
  v176 = v8;
  v184 = v21;
  if (v42)
  {
    v43 = swift_slowAlloc();
    v191 = v18;
    v44 = v43;
    v178 = swift_slowAlloc();
    v195[0] = v178;
    *v44 = 136315394;
    v45 = *(v192 + 16);
    v46 = &v36[*(v191 + 28)];
    LODWORD(v168) = v41;
    v47 = v185;
    v48 = v186;
    v45(v185, v46, v186);
    v167 = type metadata accessor for InheritanceHealthRecord;
    sub_100195024(v36, type metadata accessor for InheritanceHealthRecord);
    sub_100195084(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v49 = dispatch thunk of CustomStringConvertible.description.getter();
    v51 = v50;
    (*(v192 + 8))(v47, v48);
    v52 = sub_10021145C(v49, v51, v195);

    *(v44 + 4) = v52;
    *(v44 + 12) = 2080;
    type metadata accessor for LocalCache();
    v53 = v187;
    sub_100307F40();
    v54 = v190;
    URL.appendingPathComponent(_:isDirectory:)();
    v55 = v8;
    v56 = v54;
    v57 = v55[1];
    v57(v53, v7);
    UUID.uuidString.getter();
    URL.appendingPathComponent(_:)();

    v57(v56, v7);
    sub_100195024(v34, v167);
    sub_100195084(&qword_1003DD590, &type metadata accessor for URL, &protocol conformance descriptor for URL);
    v58 = dispatch thunk of CustomStringConvertible.description.getter();
    v60 = v59;
    v57(v16, v7);
    v21 = v184;
    v61 = sub_10021145C(v58, v60, v195);

    *(v44 + 14) = v61;
    _os_log_impl(&_mh_execute_header, v40, v168, "Local Cache: Saving record: %s at path: %s", v44, 0x16u);
    swift_arrayDestroy();

    v18 = v191;
  }

  else
  {
    sub_100195024(v34, type metadata accessor for InheritanceHealthRecord);
    sub_100195024(v36, type metadata accessor for InheritanceHealthRecord);
  }

  sub_100195084(&qword_1003E0E38, type metadata accessor for InheritanceHealthRecord, &unk_100346248);

  v62 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v178 = v63;
  v64 = v62;

  v65 = objc_autoreleasePoolPush();
  sub_10030348C(v64, v178, &v194, v195);
  v166 = 0;
  v167 = v64;
  objc_autoreleasePoolPop(v65);

  v168 = v195[0];
  v179 = v195[1];
  v93 = v193;
  v94 = v171;
  sub_100194C44(v193, v171, type metadata accessor for InheritanceHealthRecord);
  v95 = v175;
  sub_100194C44(v93, v175, type metadata accessor for InheritanceHealthRecord);
  v96 = Logger.logObject.getter();
  v97 = static os_log_type_t.default.getter();
  v98 = os_log_type_enabled(v96, v97);
  v191 = v18;
  if (v98)
  {
    v99 = swift_slowAlloc();
    v165 = swift_slowAlloc();
    v195[0] = v165;
    *v99 = 136315394;
    v100 = v192;
    v101 = *(v192 + 16);
    v102 = v94 + *(v18 + 28);
    v103 = v185;
    v164 = v97;
    v104 = v186;
    v101(v185, v102, v186);
    v163 = type metadata accessor for InheritanceHealthRecord;
    sub_100195024(v94, type metadata accessor for InheritanceHealthRecord);
    sub_100195084(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v171 = v96;
    v105 = dispatch thunk of CustomStringConvertible.description.getter();
    v107 = v106;
    (*(v100 + 8))(v103, v104);
    v108 = sub_10021145C(v105, v107, v195);

    v162 = v99;
    *(v99 + 4) = v108;
    *(v99 + 12) = 2080;
    type metadata accessor for LocalCache();
    v109 = v187;
    sub_100307F40();
    v110 = v190;
    URL.appendingPathComponent(_:isDirectory:)();
    v111 = v176;
    v112 = *(v176 + 1);
    v112(v109, v7);
    v113 = v175;
    UUID.uuidString.getter();
    v114 = v177;
    URL.appendingPathComponent(_:)();

    v112(v110, v7);
    sub_100195024(v113, v163);
    sub_100195084(&qword_1003DD590, &type metadata accessor for URL, &protocol conformance descriptor for URL);
    v115 = dispatch thunk of CustomStringConvertible.description.getter();
    v117 = v116;
    v112(v114, v7);
    v21 = v184;
    v118 = sub_10021145C(v115, v117, v195);

    v119 = v162;
    *(v162 + 14) = v118;
    v120 = v171;
    _os_log_impl(&_mh_execute_header, v171, v164, "Local Cache: Successfully encrypted record %s, %s", v119, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
    sub_100195024(v95, type metadata accessor for InheritanceHealthRecord);
    sub_100195024(v94, type metadata accessor for InheritanceHealthRecord);

    v114 = v177;
    v111 = v176;
  }

  v121 = type metadata accessor for LocalCache();
  v122 = v190;
  sub_100307F40();
  URL.appendingPathComponent(_:isDirectory:)();
  v123 = v111[1];
  v123(v122, v7);
  _sSo13NSFileManagerC13appleaccountdE26createDirectoryIfNecessary3url10attributesSb10Foundation3URLV_SDySo0A12AttributeKeyaypGSgtFZ_0(v114, 0);
  v123(v114, v7);
  sub_100307F40();
  URL.appendingPathComponent(_:isDirectory:)();
  v123(v122, v7);
  UUID.uuidString.getter();
  v124 = v172;
  URL.appendingPathComponent(_:)();
  v125 = v123;

  v123(v114, v7);
  v126 = v168;
  v127 = v179;
  v128 = v166;
  sub_10030A77C(v168, v179, v124, v173, v174);
  if (v128)
  {
    v125(v124, v7);
    sub_100012324(v126, v127);
    sub_100012324(v167, v178);
    v129 = v191;
    v130 = v188;
    v66 = v193;
    sub_100194C44(v193, v188, type metadata accessor for InheritanceHealthRecord);
    sub_100194C44(v66, v21, type metadata accessor for InheritanceHealthRecord);
    swift_errorRetain();
    v67 = Logger.logObject.getter();
    v68 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v67, v68))
    {
      v69 = swift_slowAlloc();
      v189 = swift_slowAlloc();
      v193 = swift_slowAlloc();
      v195[0] = v193;
      *v69 = 136315650;
      v70 = v192;
      v71 = *(v192 + 16);
      v72 = v130 + *(v129 + 28);
      v73 = v185;
      LODWORD(v188) = v68;
      v74 = v186;
      v71(v185, v72, v186);
      v178 = type metadata accessor for InheritanceHealthRecord;
      sub_100195024(v130, type metadata accessor for InheritanceHealthRecord);
      sub_100195084(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v179 = v67;
      v75 = dispatch thunk of CustomStringConvertible.description.getter();
      v76 = v7;
      v78 = v77;
      (*(v70 + 8))(v73, v74);
      v79 = sub_10021145C(v75, v78, v195);

      *(v69 + 4) = v79;
      *(v69 + 12) = 2080;
      type metadata accessor for LocalCache();
      v80 = v187;
      sub_100307F40();
      v81 = v190;
      URL.appendingPathComponent(_:isDirectory:)();
      v82 = *(v176 + 1);
      v82(v80, v76);
      v83 = v184;
      UUID.uuidString.getter();
      v84 = v177;
      URL.appendingPathComponent(_:)();

      v82(v81, v76);
      sub_100195024(v83, v178);
      sub_100195084(&qword_1003DD590, &type metadata accessor for URL, &protocol conformance descriptor for URL);
      v85 = dispatch thunk of CustomStringConvertible.description.getter();
      v87 = v86;
      v82(v84, v76);
      v88 = sub_10021145C(v85, v87, v195);

      *(v69 + 14) = v88;
      *(v69 + 22) = 2112;
      v89 = _convertErrorToNSError(_:)();
      *(v69 + 24) = v89;
      v90 = v189;
      *v189 = v89;
      v67 = v179;
      _os_log_impl(&_mh_execute_header, v179, v188, "Local Cache: Error adding record %s with URL %s to local disk: %@", v69, 0x20u);
      sub_100008D3C(v90, &unk_1003D9140, &qword_10033E640);

      swift_arrayDestroy();
    }

    else
    {
      sub_100195024(v21, type metadata accessor for InheritanceHealthRecord);
      sub_100195024(v130, type metadata accessor for InheritanceHealthRecord);
    }

    v91 = v181;
    *v181 = v128;
    swift_storeEnumTagMultiPayload();
    swift_errorRetain();
    v183(v91);
  }

  else
  {
    v184 = v121;
    v188 = 0x8000000100330300;
    v176 = v125;
    v125(v124, v7);
    v131 = v193;
    v132 = v169;
    sub_100194C44(v193, v169, type metadata accessor for InheritanceHealthRecord);
    v133 = v170;
    sub_100194C44(v131, v170, type metadata accessor for InheritanceHealthRecord);
    v134 = Logger.logObject.getter();
    v135 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v134, v135))
    {
      v136 = swift_slowAlloc();
      v189 = swift_slowAlloc();
      v195[0] = v189;
      *v136 = 136315394;
      LODWORD(v175) = v135;
      v137 = v192;
      v138 = *(v192 + 16);
      v139 = v132 + *(v191 + 28);
      v174 = v134;
      v140 = v185;
      v141 = v186;
      v138(v185, v139, v186);
      v173 = type metadata accessor for InheritanceHealthRecord;
      sub_100195024(v132, type metadata accessor for InheritanceHealthRecord);
      sub_100195084(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v142 = v133;
      v143 = dispatch thunk of CustomStringConvertible.description.getter();
      v144 = v190;
      v145 = v137;
      v146 = v7;
      v148 = v147;
      (*(v145 + 8))(v140, v141);
      v149 = sub_10021145C(v143, v148, v195);

      *(v136 + 4) = v149;
      *(v136 + 12) = 2080;
      v150 = v136;
      v151 = v187;
      sub_100307F40();
      URL.appendingPathComponent(_:isDirectory:)();
      v152 = v176;
      v176(v151, v146);
      UUID.uuidString.getter();
      v153 = v177;
      URL.appendingPathComponent(_:)();

      v152(v144, v146);
      sub_100195024(v142, v173);
      sub_100195084(&qword_1003DD590, &type metadata accessor for URL, &protocol conformance descriptor for URL);
      v154 = dispatch thunk of CustomStringConvertible.description.getter();
      v156 = v155;
      v157 = v153;
      v126 = v168;
      v152(v157, v146);
      v158 = sub_10021145C(v154, v156, v195);

      *(v150 + 14) = v158;
      v159 = v174;
      _os_log_impl(&_mh_execute_header, v174, v175, "Local Cache: Successfully saved record to local disk %s, %s", v150, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
      sub_100195024(v133, type metadata accessor for InheritanceHealthRecord);
      sub_100195024(v132, type metadata accessor for InheritanceHealthRecord);
    }

    v160 = v167;
    v91 = v181;
    sub_100194C44(v193, v181, type metadata accessor for InheritanceHealthRecord);
    swift_storeEnumTagMultiPayload();
    v183(v91);
    sub_100012324(v160, v178);
    sub_100012324(v126, v179);
  }

  return sub_100008D3C(v91, &unk_1003E10C0, &qword_100346A70);
}

uint64_t sub_100188450(uint64_t a1, NSObject *a2, uint64_t (*a3)(uint64_t a1), int a4, void (*a5)(uint64_t), uint64_t a6)
{
  v182 = a6;
  v183 = a5;
  LODWORD(v174) = a4;
  v173 = a3;
  v179 = a2;
  v193 = a1;
  v180 = sub_100005814(&unk_1003E10A0, &unk_100344480);
  __chkstk_darwin(v180);
  v181 = (&v161 - v6);
  v7 = type metadata accessor for URL();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v172 = (&v161 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = __chkstk_darwin(v9);
  v187 = &v161 - v12;
  v13 = __chkstk_darwin(v11);
  v190 = &v161 - v14;
  __chkstk_darwin(v13);
  v16 = &v161 - v15;
  v186 = type metadata accessor for UUID();
  v192 = *(v186 - 8);
  __chkstk_darwin(v186);
  v185 = &v161 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for BeneficiaryInfoRecord(0);
  v19 = __chkstk_darwin(v18);
  v21 = &v161 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __chkstk_darwin(v19);
  v188 = &v161 - v23;
  v24 = __chkstk_darwin(v22);
  v170 = &v161 - v25;
  v26 = __chkstk_darwin(v24);
  v169 = &v161 - v27;
  v28 = __chkstk_darwin(v26);
  v175 = &v161 - v29;
  v30 = __chkstk_darwin(v28);
  v171 = (&v161 - v31);
  v32 = __chkstk_darwin(v30);
  v34 = &v161 - v33;
  __chkstk_darwin(v32);
  v36 = &v161 - v35;
  if (qword_1003D7F58 != -1)
  {
    swift_once();
  }

  v37 = type metadata accessor for Logger();
  v38 = sub_100008D04(v37, qword_1003FAAE8);
  v39 = v193;
  sub_100194C44(v193, v36, type metadata accessor for BeneficiaryInfoRecord);
  sub_100194C44(v39, v34, type metadata accessor for BeneficiaryInfoRecord);
  v189 = v38;
  v40 = Logger.logObject.getter();
  v41 = static os_log_type_t.default.getter();
  v42 = os_log_type_enabled(v40, v41);
  v177 = v16;
  v176 = v8;
  v184 = v21;
  if (v42)
  {
    v43 = swift_slowAlloc();
    v191 = v18;
    v44 = v43;
    v178 = swift_slowAlloc();
    v195[0] = v178;
    *v44 = 136315394;
    v45 = *(v192 + 16);
    v46 = &v36[*(v191 + 32)];
    LODWORD(v168) = v41;
    v47 = v185;
    v48 = v186;
    v45(v185, v46, v186);
    v167 = type metadata accessor for BeneficiaryInfoRecord;
    sub_100195024(v36, type metadata accessor for BeneficiaryInfoRecord);
    sub_100195084(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v49 = dispatch thunk of CustomStringConvertible.description.getter();
    v51 = v50;
    (*(v192 + 8))(v47, v48);
    v52 = sub_10021145C(v49, v51, v195);

    *(v44 + 4) = v52;
    *(v44 + 12) = 2080;
    type metadata accessor for LocalCache();
    v53 = v187;
    sub_100307F40();
    v54 = v190;
    URL.appendingPathComponent(_:isDirectory:)();
    v55 = v8;
    v56 = v54;
    v57 = v55[1];
    v57(v53, v7);
    UUID.uuidString.getter();
    URL.appendingPathComponent(_:)();

    v57(v56, v7);
    sub_100195024(v34, v167);
    sub_100195084(&qword_1003DD590, &type metadata accessor for URL, &protocol conformance descriptor for URL);
    v58 = dispatch thunk of CustomStringConvertible.description.getter();
    v60 = v59;
    v57(v16, v7);
    v21 = v184;
    v61 = sub_10021145C(v58, v60, v195);

    *(v44 + 14) = v61;
    _os_log_impl(&_mh_execute_header, v40, v168, "Local Cache: Saving record: %s at path: %s", v44, 0x16u);
    swift_arrayDestroy();

    v18 = v191;
  }

  else
  {
    sub_100195024(v34, type metadata accessor for BeneficiaryInfoRecord);
    sub_100195024(v36, type metadata accessor for BeneficiaryInfoRecord);
  }

  sub_100195084(&qword_1003E0E68, type metadata accessor for BeneficiaryInfoRecord, &unk_100345BC8);

  v62 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v178 = v63;
  v64 = v62;

  v65 = objc_autoreleasePoolPush();
  sub_10030348C(v64, v178, &v194, v195);
  v166 = 0;
  v167 = v64;
  objc_autoreleasePoolPop(v65);

  v168 = v195[0];
  v179 = v195[1];
  v93 = v193;
  v94 = v171;
  sub_100194C44(v193, v171, type metadata accessor for BeneficiaryInfoRecord);
  v95 = v175;
  sub_100194C44(v93, v175, type metadata accessor for BeneficiaryInfoRecord);
  v96 = Logger.logObject.getter();
  v97 = static os_log_type_t.default.getter();
  v98 = os_log_type_enabled(v96, v97);
  v191 = v18;
  if (v98)
  {
    v99 = swift_slowAlloc();
    v165 = swift_slowAlloc();
    v195[0] = v165;
    *v99 = 136315394;
    v100 = v192;
    v101 = *(v192 + 16);
    v102 = v94 + *(v18 + 32);
    v103 = v185;
    v164 = v97;
    v104 = v186;
    v101(v185, v102, v186);
    v163 = type metadata accessor for BeneficiaryInfoRecord;
    sub_100195024(v94, type metadata accessor for BeneficiaryInfoRecord);
    sub_100195084(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v171 = v96;
    v105 = dispatch thunk of CustomStringConvertible.description.getter();
    v107 = v106;
    (*(v100 + 8))(v103, v104);
    v108 = sub_10021145C(v105, v107, v195);

    v162 = v99;
    *(v99 + 4) = v108;
    *(v99 + 12) = 2080;
    type metadata accessor for LocalCache();
    v109 = v187;
    sub_100307F40();
    v110 = v190;
    URL.appendingPathComponent(_:isDirectory:)();
    v111 = v176;
    v112 = *(v176 + 1);
    v112(v109, v7);
    v113 = v175;
    UUID.uuidString.getter();
    v114 = v177;
    URL.appendingPathComponent(_:)();

    v112(v110, v7);
    sub_100195024(v113, v163);
    sub_100195084(&qword_1003DD590, &type metadata accessor for URL, &protocol conformance descriptor for URL);
    v115 = dispatch thunk of CustomStringConvertible.description.getter();
    v117 = v116;
    v112(v114, v7);
    v21 = v184;
    v118 = sub_10021145C(v115, v117, v195);

    v119 = v162;
    *(v162 + 14) = v118;
    v120 = v171;
    _os_log_impl(&_mh_execute_header, v171, v164, "Local Cache: Successfully encrypted record %s, %s", v119, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
    sub_100195024(v95, type metadata accessor for BeneficiaryInfoRecord);
    sub_100195024(v94, type metadata accessor for BeneficiaryInfoRecord);

    v114 = v177;
    v111 = v176;
  }

  v121 = type metadata accessor for LocalCache();
  v122 = v190;
  sub_100307F40();
  URL.appendingPathComponent(_:isDirectory:)();
  v123 = v111[1];
  v123(v122, v7);
  _sSo13NSFileManagerC13appleaccountdE26createDirectoryIfNecessary3url10attributesSb10Foundation3URLV_SDySo0A12AttributeKeyaypGSgtFZ_0(v114, 0);
  v123(v114, v7);
  sub_100307F40();
  URL.appendingPathComponent(_:isDirectory:)();
  v123(v122, v7);
  UUID.uuidString.getter();
  v124 = v172;
  URL.appendingPathComponent(_:)();
  v125 = v123;

  v123(v114, v7);
  v126 = v168;
  v127 = v179;
  v128 = v166;
  sub_10030A77C(v168, v179, v124, v173, v174);
  if (v128)
  {
    v125(v124, v7);
    sub_100012324(v126, v127);
    sub_100012324(v167, v178);
    v129 = v191;
    v130 = v188;
    v66 = v193;
    sub_100194C44(v193, v188, type metadata accessor for BeneficiaryInfoRecord);
    sub_100194C44(v66, v21, type metadata accessor for BeneficiaryInfoRecord);
    swift_errorRetain();
    v67 = Logger.logObject.getter();
    v68 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v67, v68))
    {
      v69 = swift_slowAlloc();
      v189 = swift_slowAlloc();
      v193 = swift_slowAlloc();
      v195[0] = v193;
      *v69 = 136315650;
      v70 = v192;
      v71 = *(v192 + 16);
      v72 = v130 + *(v129 + 32);
      v73 = v185;
      LODWORD(v188) = v68;
      v74 = v186;
      v71(v185, v72, v186);
      v178 = type metadata accessor for BeneficiaryInfoRecord;
      sub_100195024(v130, type metadata accessor for BeneficiaryInfoRecord);
      sub_100195084(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v179 = v67;
      v75 = dispatch thunk of CustomStringConvertible.description.getter();
      v76 = v7;
      v78 = v77;
      (*(v70 + 8))(v73, v74);
      v79 = sub_10021145C(v75, v78, v195);

      *(v69 + 4) = v79;
      *(v69 + 12) = 2080;
      type metadata accessor for LocalCache();
      v80 = v187;
      sub_100307F40();
      v81 = v190;
      URL.appendingPathComponent(_:isDirectory:)();
      v82 = *(v176 + 1);
      v82(v80, v76);
      v83 = v184;
      UUID.uuidString.getter();
      v84 = v177;
      URL.appendingPathComponent(_:)();

      v82(v81, v76);
      sub_100195024(v83, v178);
      sub_100195084(&qword_1003DD590, &type metadata accessor for URL, &protocol conformance descriptor for URL);
      v85 = dispatch thunk of CustomStringConvertible.description.getter();
      v87 = v86;
      v82(v84, v76);
      v88 = sub_10021145C(v85, v87, v195);

      *(v69 + 14) = v88;
      *(v69 + 22) = 2112;
      v89 = _convertErrorToNSError(_:)();
      *(v69 + 24) = v89;
      v90 = v189;
      *v189 = v89;
      v67 = v179;
      _os_log_impl(&_mh_execute_header, v179, v188, "Local Cache: Error adding record %s with URL %s to local disk: %@", v69, 0x20u);
      sub_100008D3C(v90, &unk_1003D9140, &qword_10033E640);

      swift_arrayDestroy();
    }

    else
    {
      sub_100195024(v21, type metadata accessor for BeneficiaryInfoRecord);
      sub_100195024(v130, type metadata accessor for BeneficiaryInfoRecord);
    }

    v91 = v181;
    *v181 = v128;
    swift_storeEnumTagMultiPayload();
    swift_errorRetain();
    v183(v91);
  }

  else
  {
    v184 = v121;
    v188 = 0x8000000100330350;
    v176 = v125;
    v125(v124, v7);
    v131 = v193;
    v132 = v169;
    sub_100194C44(v193, v169, type metadata accessor for BeneficiaryInfoRecord);
    v133 = v170;
    sub_100194C44(v131, v170, type metadata accessor for BeneficiaryInfoRecord);
    v134 = Logger.logObject.getter();
    v135 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v134, v135))
    {
      v136 = swift_slowAlloc();
      v189 = swift_slowAlloc();
      v195[0] = v189;
      *v136 = 136315394;
      LODWORD(v175) = v135;
      v137 = v192;
      v138 = *(v192 + 16);
      v139 = v132 + *(v191 + 32);
      v174 = v134;
      v140 = v185;
      v141 = v186;
      v138(v185, v139, v186);
      v173 = type metadata accessor for BeneficiaryInfoRecord;
      sub_100195024(v132, type metadata accessor for BeneficiaryInfoRecord);
      sub_100195084(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v142 = v133;
      v143 = dispatch thunk of CustomStringConvertible.description.getter();
      v144 = v190;
      v145 = v137;
      v146 = v7;
      v148 = v147;
      (*(v145 + 8))(v140, v141);
      v149 = sub_10021145C(v143, v148, v195);

      *(v136 + 4) = v149;
      *(v136 + 12) = 2080;
      v150 = v136;
      v151 = v187;
      sub_100307F40();
      URL.appendingPathComponent(_:isDirectory:)();
      v152 = v176;
      v176(v151, v146);
      UUID.uuidString.getter();
      v153 = v177;
      URL.appendingPathComponent(_:)();

      v152(v144, v146);
      sub_100195024(v142, v173);
      sub_100195084(&qword_1003DD590, &type metadata accessor for URL, &protocol conformance descriptor for URL);
      v154 = dispatch thunk of CustomStringConvertible.description.getter();
      v156 = v155;
      v157 = v153;
      v126 = v168;
      v152(v157, v146);
      v158 = sub_10021145C(v154, v156, v195);

      *(v150 + 14) = v158;
      v159 = v174;
      _os_log_impl(&_mh_execute_header, v174, v175, "Local Cache: Successfully saved record to local disk %s, %s", v150, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
      sub_100195024(v133, type metadata accessor for BeneficiaryInfoRecord);
      sub_100195024(v132, type metadata accessor for BeneficiaryInfoRecord);
    }

    v160 = v167;
    v91 = v181;
    sub_100194C44(v193, v181, type metadata accessor for BeneficiaryInfoRecord);
    swift_storeEnumTagMultiPayload();
    v183(v91);
    sub_100012324(v160, v178);
    sub_100012324(v126, v179);
  }

  return sub_100008D3C(v91, &unk_1003E10A0, &unk_100344480);
}

uint64_t sub_10018996C(uint64_t a1, NSObject *a2, uint64_t (*a3)(uint64_t a1), int a4, void (*a5)(uint64_t), uint64_t a6)
{
  v182 = a6;
  v183 = a5;
  LODWORD(v174) = a4;
  v173 = a3;
  v179 = a2;
  v193 = a1;
  v180 = sub_100005814(&qword_1003E1290, &unk_1003444C0);
  __chkstk_darwin(v180);
  v181 = (&v161 - v6);
  v7 = type metadata accessor for URL();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v172 = (&v161 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = __chkstk_darwin(v9);
  v187 = &v161 - v12;
  v13 = __chkstk_darwin(v11);
  v190 = &v161 - v14;
  __chkstk_darwin(v13);
  v16 = &v161 - v15;
  v186 = type metadata accessor for UUID();
  v192 = *(v186 - 8);
  __chkstk_darwin(v186);
  v185 = &v161 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for InheritanceInvitationRecord(0);
  v19 = __chkstk_darwin(v18);
  v21 = &v161 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __chkstk_darwin(v19);
  v188 = &v161 - v23;
  v24 = __chkstk_darwin(v22);
  v170 = &v161 - v25;
  v26 = __chkstk_darwin(v24);
  v169 = &v161 - v27;
  v28 = __chkstk_darwin(v26);
  v175 = &v161 - v29;
  v30 = __chkstk_darwin(v28);
  v171 = (&v161 - v31);
  v32 = __chkstk_darwin(v30);
  v34 = &v161 - v33;
  __chkstk_darwin(v32);
  v36 = &v161 - v35;
  if (qword_1003D7F58 != -1)
  {
    swift_once();
  }

  v37 = type metadata accessor for Logger();
  v38 = sub_100008D04(v37, qword_1003FAAE8);
  v39 = v193;
  sub_100194C44(v193, v36, type metadata accessor for InheritanceInvitationRecord);
  sub_100194C44(v39, v34, type metadata accessor for InheritanceInvitationRecord);
  v189 = v38;
  v40 = Logger.logObject.getter();
  v41 = static os_log_type_t.default.getter();
  v42 = os_log_type_enabled(v40, v41);
  v177 = v16;
  v176 = v8;
  v184 = v21;
  if (v42)
  {
    v43 = swift_slowAlloc();
    v191 = v18;
    v44 = v43;
    v178 = swift_slowAlloc();
    v195[0] = v178;
    *v44 = 136315394;
    v45 = *(v192 + 16);
    v46 = &v36[*(v191 + 36)];
    LODWORD(v168) = v41;
    v47 = v185;
    v48 = v186;
    v45(v185, v46, v186);
    v167 = type metadata accessor for InheritanceInvitationRecord;
    sub_100195024(v36, type metadata accessor for InheritanceInvitationRecord);
    sub_100195084(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v49 = dispatch thunk of CustomStringConvertible.description.getter();
    v51 = v50;
    (*(v192 + 8))(v47, v48);
    v52 = sub_10021145C(v49, v51, v195);

    *(v44 + 4) = v52;
    *(v44 + 12) = 2080;
    type metadata accessor for LocalCache();
    v53 = v187;
    sub_100307F40();
    v54 = v190;
    URL.appendingPathComponent(_:isDirectory:)();
    v55 = v8;
    v56 = v54;
    v57 = v55[1];
    v57(v53, v7);
    UUID.uuidString.getter();
    URL.appendingPathComponent(_:)();

    v57(v56, v7);
    sub_100195024(v34, v167);
    sub_100195084(&qword_1003DD590, &type metadata accessor for URL, &protocol conformance descriptor for URL);
    v58 = dispatch thunk of CustomStringConvertible.description.getter();
    v60 = v59;
    v57(v16, v7);
    v21 = v184;
    v61 = sub_10021145C(v58, v60, v195);

    *(v44 + 14) = v61;
    _os_log_impl(&_mh_execute_header, v40, v168, "Local Cache: Saving record: %s at path: %s", v44, 0x16u);
    swift_arrayDestroy();

    v18 = v191;
  }

  else
  {
    sub_100195024(v34, type metadata accessor for InheritanceInvitationRecord);
    sub_100195024(v36, type metadata accessor for InheritanceInvitationRecord);
  }

  sub_100195084(&qword_1003E0E60, type metadata accessor for InheritanceInvitationRecord, &unk_100346474);

  v62 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v178 = v63;
  v64 = v62;

  v65 = objc_autoreleasePoolPush();
  sub_10030348C(v64, v178, &v194, v195);
  v166 = 0;
  v167 = v64;
  objc_autoreleasePoolPop(v65);

  v168 = v195[0];
  v179 = v195[1];
  v93 = v193;
  v94 = v171;
  sub_100194C44(v193, v171, type metadata accessor for InheritanceInvitationRecord);
  v95 = v175;
  sub_100194C44(v93, v175, type metadata accessor for InheritanceInvitationRecord);
  v96 = Logger.logObject.getter();
  v97 = static os_log_type_t.default.getter();
  v98 = os_log_type_enabled(v96, v97);
  v191 = v18;
  if (v98)
  {
    v99 = swift_slowAlloc();
    v165 = swift_slowAlloc();
    v195[0] = v165;
    *v99 = 136315394;
    v100 = v192;
    v101 = *(v192 + 16);
    v102 = v94 + *(v18 + 36);
    v103 = v185;
    v164 = v97;
    v104 = v186;
    v101(v185, v102, v186);
    v163 = type metadata accessor for InheritanceInvitationRecord;
    sub_100195024(v94, type metadata accessor for InheritanceInvitationRecord);
    sub_100195084(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v171 = v96;
    v105 = dispatch thunk of CustomStringConvertible.description.getter();
    v107 = v106;
    (*(v100 + 8))(v103, v104);
    v108 = sub_10021145C(v105, v107, v195);

    v162 = v99;
    *(v99 + 4) = v108;
    *(v99 + 12) = 2080;
    type metadata accessor for LocalCache();
    v109 = v187;
    sub_100307F40();
    v110 = v190;
    URL.appendingPathComponent(_:isDirectory:)();
    v111 = v176;
    v112 = *(v176 + 1);
    v112(v109, v7);
    v113 = v175;
    UUID.uuidString.getter();
    v114 = v177;
    URL.appendingPathComponent(_:)();

    v112(v110, v7);
    sub_100195024(v113, v163);
    sub_100195084(&qword_1003DD590, &type metadata accessor for URL, &protocol conformance descriptor for URL);
    v115 = dispatch thunk of CustomStringConvertible.description.getter();
    v117 = v116;
    v112(v114, v7);
    v21 = v184;
    v118 = sub_10021145C(v115, v117, v195);

    v119 = v162;
    *(v162 + 14) = v118;
    v120 = v171;
    _os_log_impl(&_mh_execute_header, v171, v164, "Local Cache: Successfully encrypted record %s, %s", v119, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
    sub_100195024(v95, type metadata accessor for InheritanceInvitationRecord);
    sub_100195024(v94, type metadata accessor for InheritanceInvitationRecord);

    v114 = v177;
    v111 = v176;
  }

  v121 = type metadata accessor for LocalCache();
  v122 = v190;
  sub_100307F40();
  URL.appendingPathComponent(_:isDirectory:)();
  v123 = v111[1];
  v123(v122, v7);
  _sSo13NSFileManagerC13appleaccountdE26createDirectoryIfNecessary3url10attributesSb10Foundation3URLV_SDySo0A12AttributeKeyaypGSgtFZ_0(v114, 0);
  v123(v114, v7);
  sub_100307F40();
  URL.appendingPathComponent(_:isDirectory:)();
  v123(v122, v7);
  UUID.uuidString.getter();
  v124 = v172;
  URL.appendingPathComponent(_:)();
  v125 = v123;

  v123(v114, v7);
  v126 = v168;
  v127 = v179;
  v128 = v166;
  sub_10030A77C(v168, v179, v124, v173, v174);
  if (v128)
  {
    v125(v124, v7);
    sub_100012324(v126, v127);
    sub_100012324(v167, v178);
    v129 = v191;
    v130 = v188;
    v66 = v193;
    sub_100194C44(v193, v188, type metadata accessor for InheritanceInvitationRecord);
    sub_100194C44(v66, v21, type metadata accessor for InheritanceInvitationRecord);
    swift_errorRetain();
    v67 = Logger.logObject.getter();
    v68 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v67, v68))
    {
      v69 = swift_slowAlloc();
      v189 = swift_slowAlloc();
      v193 = swift_slowAlloc();
      v195[0] = v193;
      *v69 = 136315650;
      v70 = v192;
      v71 = *(v192 + 16);
      v72 = v130 + *(v129 + 36);
      v73 = v185;
      LODWORD(v188) = v68;
      v74 = v186;
      v71(v185, v72, v186);
      v178 = type metadata accessor for InheritanceInvitationRecord;
      sub_100195024(v130, type metadata accessor for InheritanceInvitationRecord);
      sub_100195084(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v179 = v67;
      v75 = dispatch thunk of CustomStringConvertible.description.getter();
      v76 = v7;
      v78 = v77;
      (*(v70 + 8))(v73, v74);
      v79 = sub_10021145C(v75, v78, v195);

      *(v69 + 4) = v79;
      *(v69 + 12) = 2080;
      type metadata accessor for LocalCache();
      v80 = v187;
      sub_100307F40();
      v81 = v190;
      URL.appendingPathComponent(_:isDirectory:)();
      v82 = *(v176 + 1);
      v82(v80, v76);
      v83 = v184;
      UUID.uuidString.getter();
      v84 = v177;
      URL.appendingPathComponent(_:)();

      v82(v81, v76);
      sub_100195024(v83, v178);
      sub_100195084(&qword_1003DD590, &type metadata accessor for URL, &protocol conformance descriptor for URL);
      v85 = dispatch thunk of CustomStringConvertible.description.getter();
      v87 = v86;
      v82(v84, v76);
      v88 = sub_10021145C(v85, v87, v195);

      *(v69 + 14) = v88;
      *(v69 + 22) = 2112;
      v89 = _convertErrorToNSError(_:)();
      *(v69 + 24) = v89;
      v90 = v189;
      *v189 = v89;
      v67 = v179;
      _os_log_impl(&_mh_execute_header, v179, v188, "Local Cache: Error adding record %s with URL %s to local disk: %@", v69, 0x20u);
      sub_100008D3C(v90, &unk_1003D9140, &qword_10033E640);

      swift_arrayDestroy();
    }

    else
    {
      sub_100195024(v21, type metadata accessor for InheritanceInvitationRecord);
      sub_100195024(v130, type metadata accessor for InheritanceInvitationRecord);
    }

    v91 = v181;
    *v181 = v128;
    swift_storeEnumTagMultiPayload();
    swift_errorRetain();
    v183(v91);
  }

  else
  {
    v184 = v121;
    v188 = 0x8000000100330380;
    v176 = v125;
    v125(v124, v7);
    v131 = v193;
    v132 = v169;
    sub_100194C44(v193, v169, type metadata accessor for InheritanceInvitationRecord);
    v133 = v170;
    sub_100194C44(v131, v170, type metadata accessor for InheritanceInvitationRecord);
    v134 = Logger.logObject.getter();
    v135 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v134, v135))
    {
      v136 = swift_slowAlloc();
      v189 = swift_slowAlloc();
      v195[0] = v189;
      *v136 = 136315394;
      LODWORD(v175) = v135;
      v137 = v192;
      v138 = *(v192 + 16);
      v139 = v132 + *(v191 + 36);
      v174 = v134;
      v140 = v185;
      v141 = v186;
      v138(v185, v139, v186);
      v173 = type metadata accessor for InheritanceInvitationRecord;
      sub_100195024(v132, type metadata accessor for InheritanceInvitationRecord);
      sub_100195084(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v142 = v133;
      v143 = dispatch thunk of CustomStringConvertible.description.getter();
      v144 = v190;
      v145 = v137;
      v146 = v7;
      v148 = v147;
      (*(v145 + 8))(v140, v141);
      v149 = sub_10021145C(v143, v148, v195);

      *(v136 + 4) = v149;
      *(v136 + 12) = 2080;
      v150 = v136;
      v151 = v187;
      sub_100307F40();
      URL.appendingPathComponent(_:isDirectory:)();
      v152 = v176;
      v176(v151, v146);
      UUID.uuidString.getter();
      v153 = v177;
      URL.appendingPathComponent(_:)();

      v152(v144, v146);
      sub_100195024(v142, v173);
      sub_100195084(&qword_1003DD590, &type metadata accessor for URL, &protocol conformance descriptor for URL);
      v154 = dispatch thunk of CustomStringConvertible.description.getter();
      v156 = v155;
      v157 = v153;
      v126 = v168;
      v152(v157, v146);
      v158 = sub_10021145C(v154, v156, v195);

      *(v150 + 14) = v158;
      v159 = v174;
      _os_log_impl(&_mh_execute_header, v174, v175, "Local Cache: Successfully saved record to local disk %s, %s", v150, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
      sub_100195024(v133, type metadata accessor for InheritanceInvitationRecord);
      sub_100195024(v132, type metadata accessor for InheritanceInvitationRecord);
    }

    v160 = v167;
    v91 = v181;
    sub_100194C44(v193, v181, type metadata accessor for InheritanceInvitationRecord);
    swift_storeEnumTagMultiPayload();
    v183(v91);
    sub_100012324(v160, v178);
    sub_100012324(v126, v179);
  }

  return sub_100008D3C(v91, &qword_1003E1290, &unk_1003444C0);
}