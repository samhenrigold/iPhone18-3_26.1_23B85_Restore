uint64_t sub_10001F640(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_10001F650()
{

  if (*(v0 + 24))
  {
  }

  sub_10001F6B4(*(v0 + 40), *(v0 + 48));

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_10001F6B4(uint64_t result, char a2)
{
  if (a2)
  {
  }

  return v2;
}

uint64_t sub_10001F6D4(uint64_t result, char a2)
{
  if (a2)
  {
    return swift_errorRetain();
  }

  return v2;
}

uint64_t sub_10001F6E0()
{
  sub_10001F6B4(*(v0 + 16), *(v0 + 24));

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_10001F79C()
{

  if (*(v0 + 32))
  {
  }

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_10001F828()
{

  if (*(v0 + 24))
  {
  }

  sub_10001F6B4(*(v0 + 48), *(v0 + 56));

  return _swift_deallocObject(v0, 72, 7);
}

void sub_10001F8A4(void *a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

id sub_10001F8C8(void *a1, char a2)
{
  if (a2)
  {
    return swift_errorRetain();
  }

  else
  {
    return a1;
  }
}

uint64_t sub_10001F8D4(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t sub_10001F91C()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10001F974()
{

  if (*(v0 + 32))
  {
  }

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_10001F9E8()
{

  if (*(v0 + 24))
  {
  }

  sub_10001F6B4(*(v0 + 48), *(v0 + 56));

  return _swift_deallocObject(v0, 80, 7);
}

uint64_t sub_10001FA74()
{
  sub_10001F8A4(*(v0 + 16), *(v0 + 24));

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_10001FB88()
{
  sub_10001F8A4(*(v0 + 16), *(v0 + 24));

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_10001FC10()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10001FC5C()
{

  if (*(v0 + 32))
  {
  }

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10001FD10()
{

  if (*(v0 + 24))
  {
  }

  sub_10001F6B4(*(v0 + 40), *(v0 + 48));

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_10001FDA0()
{
  sub_10001F8A4(*(v0 + 16), *(v0 + 24));

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_10001FE28()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10001FE8C(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_10001FF94()
{

  if (*(v0 + 32))
  {
  }

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100020058()
{

  if (*(v0 + 24))
  {
  }

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000200A0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100007224(&qword_100833A28, &qword_1006BF8A8);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_100020110(uint64_t a1, uint64_t a2)
{
  v4 = sub_100007224(&qword_100833A28, &qword_1006BF8A8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000201F0()
{

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100020260(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_1000202C4(void (*a1)(uint64_t *), uint64_t a2, void (*a3)(uint64_t *), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v206 = a8;
  v205 = a7;
  v204 = a6;
  v212 = a2;
  v223 = a1;
  v10 = type metadata accessor for DIPError.PropertyKey();
  v216 = *(v10 - 8);
  v217 = v10;
  __chkstk_darwin(v10);
  v215 = &v195 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v210 = type metadata accessor for Logger();
  v211 = *(v210 - 8);
  v12 = __chkstk_darwin(v210);
  v201 = &v195 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v12);
  v202 = &v195 - v15;
  v16 = __chkstk_darwin(v14);
  v207 = &v195 - v17;
  v18 = __chkstk_darwin(v16);
  v203 = &v195 - v19;
  v20 = __chkstk_darwin(v18);
  v209 = &v195 - v21;
  __chkstk_darwin(v20);
  v208 = &v195 - v22;
  v23 = type metadata accessor for DIPRetryResult();
  v24 = *(v23 - 8);
  v221 = v23;
  v222 = v24;
  __chkstk_darwin(v23);
  v26 = (&v195 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  v27 = type metadata accessor for DIPError.Code();
  v219 = *(v27 - 8);
  v220 = v27;
  v28 = __chkstk_darwin(v27);
  v218 = &v195 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v31 = &v195 - v30;
  v32 = sub_100007224(&qword_100833A88, qword_1006BF8E0);
  __chkstk_darwin(v32 - 8);
  v34 = &v195 - v33;
  v35 = type metadata accessor for DIPError();
  v36 = *(v35 - 8);
  v37 = __chkstk_darwin(v35);
  v214 = &v195 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = __chkstk_darwin(v37);
  v213 = &v195 - v40;
  __chkstk_darwin(v39);
  v42 = &v195 - v41;
  v43 = swift_allocObject();
  v44 = a3;
  *(v43 + 16) = a3;
  *(v43 + 24) = a4;
  v225[0] = v223;
  v45 = a4;
  v46 = v223;

  swift_errorRetain();
  sub_100007224(&qword_100833B90, &qword_1006D95C0);
  v47 = swift_dynamicCast();
  v48 = *(v36 + 56);
  if (!v47)
  {
    v48(v34, 1, 1, v35);
    sub_10000BE18(v34, &qword_100833A88, qword_1006BF8E0);
    *v26 = v46;
    v58 = v221;
    v59 = v222;
    (*(v222 + 104))(v26, enum case for DIPRetryResult.stopWithError(_:), v221);
    swift_errorRetain();
    v44(v26);
    (*(v59 + 8))(v26, v58);
  }

  v200 = v43;
  v199 = v45;
  v223 = v44;
  v48(v34, 0, 1, v35);
  (*(v36 + 32))(v42, v34, v35);
  DIPError.code.getter();
  v50 = v219;
  v49 = v220;
  v51 = (*(v219 + 88))(v31, v220);
  v52 = v35;
  v53 = v26;
  if (v51 == enum case for DIPError.Code.invalidAppleAccount(_:))
  {
    goto LABEL_3;
  }

  v198 = v42;
  v197 = v36;
  v196 = v26;
  if (v51 == enum case for DIPError.Code.networkTimeOut(_:))
  {
LABEL_6:
    sub_10001F43C(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    v60 = v49;
    v61 = v52;
    v62 = *(v197 + 16);
    v63 = v198;
    v213 = v61;
    v62(v64, v198);
    (*(v50 + 104))(v218, enum case for DIPError.Code.internalError(_:), v60);
    sub_1000402AC(_swiftEmptyArrayStorage);
    v65 = v214;
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    v66 = DIPError.properties.getter();
    v68 = v215;
    v67 = v216;
    v69 = v217;
    (*(v216 + 104))(v215, enum case for DIPError.PropertyKey.serverRetryAfter(_:), v217);
    if (*(v66 + 16) && (v70 = sub_10003AF10(v68), (v71 & 1) != 0))
    {
      sub_100020260(*(v66 + 56) + 40 * v70, v225);
      (*(v67 + 8))(v68, v69);

      sub_100007224(&unk_100833A90, &unk_1006DEE50);
      v72 = swift_dynamicCast();
      v73 = v222;
      v74 = v223;
      v75 = v221;
      if (v72)
      {
        v76 = v224;
        v77 = v213;
        v78 = v63;
        v79 = swift_allocError();
        (v62)(v80, v65, v77);
        v81 = v196;
        *v196 = v79;
        v81[1] = v76;
        (*(v73 + 104))(v81, enum case for DIPRetryResult.retryAfterDelay(_:), v75);
        v74(v81);
        (*(v73 + 8))(v81, v75);
        v82 = *(v197 + 8);
        v82(v65, v77);
        v82(v78, v77);
      }
    }

    else
    {

      (*(v67 + 8))(v68, v69);
      v73 = v222;
      v74 = v223;
      v75 = v221;
    }

    v101 = v213;
    v102 = swift_allocError();
    (v62)(v103, v65, v101);
    v104 = v196;
    *v196 = v102;
    (*(v73 + 104))(v104, enum case for DIPRetryResult.retryWithError(_:), v75);
    v74(v104);
    (*(v73 + 8))(v104, v75);
    v105 = *(v197 + 8);
    v105(v65, v101);
    v105(v198, v101);
  }

  if (v51 == enum case for DIPError.Code.cloudkitZoneNotFound(_:))
  {
    v83 = v209;
    defaultLogger()();
    v84 = v212;

    v85 = Logger.logObject.getter();
    v86 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v85, v86))
    {
      v87 = swift_slowAlloc();
      v88 = swift_slowAlloc();
      v225[0] = v88;
      *v87 = 136446210;
      *(v87 + 4) = sub_100141FE4(*(v84 + 24), *(v84 + 32), v225);
      _os_log_impl(&_mh_execute_header, v85, v86, "Zone is missing in container %{public}s, deleting local caches", v87, 0xCu);
      sub_10000BB78(v88);
    }

    (*(v211 + 8))(v83, v210);
    v89 = v197;
    v217 = "e, wiping container";
    sub_10001F43C(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    v90 = *(v89 + 16);
    v90(v91, v198, v52);
    v92 = v52;
    (*(v219 + 104))(v218, enum case for DIPError.Code.internalError(_:), v220);
    sub_1000402AC(_swiftEmptyArrayStorage);
LABEL_14:
    v93 = v213;
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    sub_10001DD68();
    sub_10001DC7C();
    v94 = swift_allocError();
    v90(v95, v93, v92);
    v96 = v196;
    *v196 = v94;
    v98 = v221;
    v97 = v222;
    (*(v222 + 104))(v96, enum case for DIPRetryResult.retryWithError(_:), v221);
    v223(v96);
    (*(v97 + 8))(v96, v98);
    v99 = *(v89 + 8);
    v99(v93, v92);
LABEL_15:
    v100 = v198;
LABEL_16:
    v99(v100, v92);
  }

  if (v51 == enum case for DIPError.Code.cloudkitServerUnavailable(_:) || v51 == enum case for DIPError.Code.cloudkitRateLimited(_:))
  {
    goto LABEL_6;
  }

  if (v51 == enum case for DIPError.Code.cloudkitServerRecordChanged(_:))
  {
    v217 = "local caches and retrying";
    v216 = sub_10001F43C(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    v215 = swift_allocError();
    v107 = v197;
    v108 = *(v197 + 16);
    v108(v109, v198, v52);
    v92 = v52;
    (*(v50 + 104))(v218, enum case for DIPError.Code.internalError(_:), v49);
    sub_1000402AC(_swiftEmptyArrayStorage);
    v110 = v213;
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    v111 = swift_allocError();
    v108(v112, v110, v52);
    *v53 = v111;
    v114 = v221;
    v113 = v222;
    (*(v222 + 104))(v53, enum case for DIPRetryResult.retryWithError(_:), v221);
    v223(v53);
    (*(v113 + 8))(v53, v114);
    v99 = *(v107 + 8);
    v99(v110, v52);
    goto LABEL_15;
  }

  if (v51 == enum case for DIPError.Code.cloudkitChangeTokenExpired(_:))
  {
    v115 = v50;
    v116 = v208;
    defaultLogger()();
    v117 = v212;

    v118 = Logger.logObject.getter();
    v119 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v118, v119))
    {
      v120 = swift_slowAlloc();
      v121 = swift_slowAlloc();
      v225[0] = v121;
      *v120 = 136446210;
      *(v120 + 4) = sub_100141FE4(*(v117 + 24), *(v117 + 32), v225);
      _os_log_impl(&_mh_execute_header, v118, v119, "Change token is expired in container %{public}s, deleting local caches", v120, 0xCu);
      sub_10000BB78(v121);
    }

    (*(v211 + 8))(v116, v210);
    v217 = "g local caches and retrying";
    sub_10001F43C(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    v89 = v197;
    v90 = *(v197 + 16);
    v90(v122, v198, v52);
    v92 = v52;
    (*(v115 + 104))(v218, enum case for DIPError.Code.internalError(_:), v220);
    sub_1000402AC(_swiftEmptyArrayStorage);
    goto LABEL_14;
  }

  v123 = v31;
  v124 = v212;
  if (v51 == enum case for DIPError.Code.cloudkitUnsyncedKeychain(_:))
  {
    v125 = v50;
    v126 = v207;
    defaultLogger()();
    v127 = Logger.logObject.getter();
    v128 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v127, v128))
    {
      v129 = swift_slowAlloc();
      *v129 = 0;
      _os_log_impl(&_mh_execute_header, v127, v128, "CloudKit keychain is still being synced", v129, 2u);
    }

    (*(v211 + 8))(v126, v210);
    v217 = "artial uploads failure";
    sub_10001F43C(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    v130 = v197;
    v131 = *(v197 + 16);
    v132 = v198;
    v131(v133, v198, v52);
    v134 = v52;
    (*(v125 + 104))(v218, enum case for DIPError.Code.internalError(_:), v220);
    sub_1000402AC(_swiftEmptyArrayStorage);
    v135 = v213;
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    v136 = swift_allocError();
    v131(v137, v135, v134);
    v138 = v196;
    *v196 = v136;
    v140 = v221;
    v139 = v222;
    (*(v222 + 104))(v138, enum case for DIPRetryResult.retryWithError(_:), v221);
    v223(v138);
    (*(v139 + 8))(v138, v140);
    v141 = *(v130 + 8);
    v141(v135, v134);
    v141(v132, v134);
  }

  else if (v51 == enum case for DIPError.Code.cloudkitMissingManateeIdentity(_:))
  {
    v142 = v50;
    v143 = v203;
    defaultLogger()();

    v144 = Logger.logObject.getter();
    v145 = static os_log_type_t.info.getter();

    v146 = os_log_type_enabled(v144, v145);
    v147 = v197;
    if (v146)
    {
      v148 = swift_slowAlloc();
      v149 = swift_slowAlloc();
      v225[0] = v149;
      *v148 = 136446210;
      *(v148 + 4) = sub_100141FE4(*(v124 + 24), *(v124 + 32), v225);
      _os_log_impl(&_mh_execute_header, v144, v145, "E2E encryption data in container %{public}s is unrecoverable, wiping container", v148, 0xCu);
      sub_10000BB78(v149);
    }

    (*(v211 + 8))(v143, v210);
    v150 = swift_allocBox();
    sub_10001F43C(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    v151 = v198;
    (*(v147 + 16))(v152, v198, v52);
    (*(v142 + 104))(v218, enum case for DIPError.Code.internalError(_:), v220);
    sub_1000402AC(_swiftEmptyArrayStorage);
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    v153 = swift_allocObject();
    v154 = v205;
    v153[2] = v150;
    v153[3] = v154;
    v153[4] = v200;

    sub_10000E410(v206, v153);

    (*(v147 + 8))(v151, v52);
  }

  else
  {
    v36 = v197;
    v42 = v198;
    if (v51 == enum case for DIPError.Code.cloudkitManateeUnavailable(_:))
    {
LABEL_3:
      sub_10001F43C(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
      v54 = swift_allocError();
      (*(v36 + 16))(v55, v42, v52);
      *v53 = v54;
      v57 = v221;
      v56 = v222;
      (*(v222 + 104))(v53, enum case for DIPRetryResult.stopWithError(_:), v221);
      v223(v53);
      (*(v56 + 8))(v53, v57);
      (*(v36 + 8))(v42, v52);
    }

    if (v51 != enum case for DIPError.Code.cloudkitPartialUploadsFailure(_:))
    {
      if (v51 != enum case for DIPError.Code.cloudkitCancelRequestedByClient(_:))
      {
        sub_10001F43C(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
        v188 = swift_allocError();
        v189 = v197;
        v190 = v50;
        v191 = v198;
        (*(v197 + 16))(v192, v198, v52);
        *v53 = v188;
        v194 = v221;
        v193 = v222;
        (*(v222 + 104))(v53, enum case for DIPRetryResult.stopWithError(_:), v221);
        v223(v53);
        (*(v193 + 8))(v53, v194);
        (*(v189 + 8))(v191, v52);
        (*(v190 + 8))(v123, v220);
      }

      v172 = v50;
      v173 = v201;
      defaultLogger()();
      v174 = Logger.logObject.getter();
      v175 = static os_log_type_t.debug.getter();
      v176 = os_log_type_enabled(v174, v175);
      v177 = v197;
      if (v176)
      {
        v178 = swift_slowAlloc();
        *v178 = 0;
        _os_log_impl(&_mh_execute_header, v174, v175, "", v178, 2u);
      }

      (*(v211 + 8))(v173, v210);
      v217 = "ching to container";
      sub_10001F43C(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
      swift_allocError();
      v179 = *(v177 + 16);
      v180 = v198;
      v179(v181, v198, v52);
      v92 = v52;
      (*(v172 + 104))(v218, enum case for DIPError.Code.internalError(_:), v220);
      sub_1000402AC(_swiftEmptyArrayStorage);
      v182 = v213;
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      v183 = swift_allocError();
      v179(v184, v182, v92);
      v185 = v196;
      *v196 = v183;
      v187 = v221;
      v186 = v222;
      (*(v222 + 104))(v185, enum case for DIPRetryResult.stopWithError(_:), v221);
      v223(v185);
      (*(v186 + 8))(v185, v187);
      v99 = *(v177 + 8);
      v99(v182, v92);
      v100 = v180;
      goto LABEL_16;
    }

    v155 = v202;
    defaultLogger()();
    v156 = Logger.logObject.getter();
    v157 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v156, v157))
    {
      v158 = swift_slowAlloc();
      *v158 = 0;
      _os_log_impl(&_mh_execute_header, v156, v157, "There was a partial uploads failure.", v158, 2u);
    }

    (*(v211 + 8))(v155, v210);
    v159._countAndFlagsBits = 0xD000000000000018;
    v160._countAndFlagsBits = 0x3932353561313033;
    v159._object = 0x80000001006FB6D0;
    v160._object = 0xE800000000000000;
    logMilestone(tag:description:)(v160, v159);
    v217 = "Partial CloudKit Failure";
    sub_10001F43C(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    v161 = v197;
    v162 = *(v197 + 16);
    v163 = v198;
    v162(v164, v198, v52);
    (*(v219 + 104))(v218, enum case for DIPError.Code.internalError(_:), v220);
    sub_1000402AC(_swiftEmptyArrayStorage);
    v165 = v213;
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    v166 = swift_allocError();
    v162(v167, v165, v52);
    v168 = v196;
    *v196 = v166;
    v170 = v221;
    v169 = v222;
    (*(v222 + 104))(v168, enum case for DIPRetryResult.retryWithError(_:), v221);
    v223(v168);
    (*(v169 + 8))(v168, v170);
    v171 = *(v161 + 8);
    v171(v165, v52);
    v171(v163, v52);
  }
}

uint64_t sub_100022168(void (*a1)(void))
{
  a1(*(v1 + 16));

  return _swift_deallocObject(v1, 40, 7);
}

id sub_1000222A8()
{
  type metadata accessor for DIPPushNotificationManager();
  swift_allocObject();
  result = sub_10002751C();
  qword_100881E40 = result;
  return result;
}

uint64_t sub_100022318()
{
  v1 = type metadata accessor for DIPError.Code();
  v0[25] = v1;
  v0[26] = *(v1 - 8);
  v0[27] = swift_task_alloc();
  v2 = type metadata accessor for DIPError();
  v0[28] = v2;
  v0[29] = *(v2 - 8);
  v0[30] = swift_task_alloc();
  v3 = type metadata accessor for TimeoutError();
  v0[31] = v3;
  v0[32] = *(v3 - 8);
  v0[33] = swift_task_alloc();
  v4 = type metadata accessor for Logger();
  v0[34] = v4;
  v0[35] = *(v4 - 8);
  v0[36] = swift_task_alloc();
  v0[37] = swift_task_alloc();
  v0[38] = swift_task_alloc();
  type metadata accessor for DIPPushNotificationManager();
  sub_100027D54(&qword_100833B70, v5, type metadata accessor for DIPPushNotificationManager, &unk_1006BF9A0);
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v0[39] = v7;
  v0[40] = v6;

  return _swift_task_switch(sub_100022550, v7, v6);
}

uint64_t sub_100022550()
{
  v1 = String._bridgeToObjectiveC()();
  v2 = [objc_opt_self() containerWithIdentifier:v1];
  v0[41] = v2;

  v0[2] = v0;
  v0[7] = v0 + 21;
  v0[3] = sub_1000226C0;
  v3 = swift_continuation_init();
  v0[17] = sub_100007224(&unk_100845DF0, &unk_1006BFA20);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_100672A4C;
  v0[13] = &unk_1007FD578;
  v0[14] = v3;
  [v2 serverPreferredPushEnvironmentWithCompletionHandler:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_1000226C0()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 336) = v2;
  v3 = *(v1 + 320);
  v4 = *(v1 + 312);
  if (v2)
  {
    v5 = sub_1000229EC;
  }

  else
  {
    v5 = sub_1000227F0;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_1000227F0()
{
  v19 = v0;
  v2 = v0[21];
  v1 = v0[22];

  defaultLogger()();

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[41];
  v7 = v0[38];
  v9 = v0[34];
  v8 = v0[35];
  if (v5)
  {
    v17 = v0[34];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v18 = v11;
    *v10 = 136446210;
    v16 = v7;
    v12 = v2;
    v13 = sub_100141FE4(v2, v1, &v18);

    *(v10 + 4) = v13;
    v2 = v12;
    _os_log_impl(&_mh_execute_header, v3, v4, "The APS server environment is %{public}s", v10, 0xCu);
    sub_10000BB78(v11);

    (*(v8 + 8))(v16, v17);
  }

  else
  {

    (*(v8 + 8))(v7, v9);
  }

  v14 = v0[1];

  return v14(v2, v1);
}

uint64_t sub_1000229EC(uint64_t a1)
{
  v34 = v1;
  v2 = v1[42];
  swift_willThrow();
  v1[23] = v2;
  swift_errorRetain();
  sub_100007224(&qword_100833B90, &qword_1006D95C0);
  if (swift_dynamicCast())
  {
    v3 = v1[37];
    v4 = v1[35];
    v26 = v1[41];
    v27 = v1[34];
    v28 = v1[32];
    v5 = v1[30];
    v29 = v1[31];
    v31 = v1[33];
    v7 = v1[28];
    v6 = v1[29];
    v8 = v1[26];
    v9 = v1[27];
    v10 = v1[25];

    (*(v8 + 104))(v9, enum case for DIPError.Code.timeoutTaskFetchAPSEnv(_:), v10);
    sub_1000402AC(_swiftEmptyArrayStorage);
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    sub_100027D54(&qword_100834130, 255, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    (*(v6 + 16))(v11, v5, v7);
    defaultLogger()();
    DIPRecordError(_:message:log:)();

    (*(v4 + 8))(v3, v27);
    (*(v6 + 8))(v5, v7);

    (*(v28 + 8))(v31, v29);
  }

  else
  {

    defaultLogger()();
    swift_errorRetain();
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();

    v14 = os_log_type_enabled(v12, v13);
    v15 = v1[41];
    v17 = v1[35];
    v16 = v1[36];
    v18 = v1[34];
    if (v14)
    {
      v32 = v1[36];
      v30 = v1[34];
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v33 = v20;
      *v19 = 136446210;
      swift_getErrorValue();
      v21 = Error.localizedDescription.getter();
      v23 = sub_100141FE4(v21, v22, &v33);

      *(v19 + 4) = v23;
      _os_log_impl(&_mh_execute_header, v12, v13, "Unable to determine server preferred push environment due to error: %{public}s", v19, 0xCu);
      sub_10000BB78(v20);

      (*(v17 + 8))(v32, v30);
    }

    else
    {

      (*(v17 + 8))(v16, v18);
    }
  }

  v24 = v1[1];

  return v24(0x69746375646F7270, 0xEA00000000006E6FLL);
}

uint64_t sub_100022E20()
{
  v1[26] = v0;
  v2 = type metadata accessor for DIPError();
  v1[27] = v2;
  v1[28] = *(v2 - 8);
  v1[29] = swift_task_alloc();
  v3 = type metadata accessor for DIPError.Code();
  v1[30] = v3;
  v1[31] = *(v3 - 8);
  v1[32] = swift_task_alloc();
  v4 = type metadata accessor for Logger();
  v1[33] = v4;
  v1[34] = *(v4 - 8);
  v1[35] = swift_task_alloc();
  v1[36] = swift_task_alloc();
  v1[37] = swift_task_alloc();
  v1[38] = swift_task_alloc();
  v1[39] = swift_task_alloc();
  v1[40] = swift_task_alloc();
  v1[41] = swift_task_alloc();
  v1[42] = swift_task_alloc();
  v1[43] = swift_task_alloc();
  v1[44] = swift_task_alloc();
  type metadata accessor for DIPPushNotificationManager();
  sub_100027D54(&qword_100833B70, v5, type metadata accessor for DIPPushNotificationManager, &unk_1006BF9A0);
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[45] = v6;
  v1[46] = v7;

  return _swift_task_switch(sub_100023088, v6, v7);
}

uint64_t sub_100023088()
{
  v1 = *(v0[26] + 72);
  if (v1)
  {
    v2 = v1;

    v3 = v0[1];

    return v3(v1);
  }

  else
  {
    v5 = swift_task_alloc();
    v0[47] = v5;
    *v5 = v0;
    v5[1] = sub_100023254;

    return sub_100022318();
  }
}

uint64_t sub_100023254(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 384) = a1;
  *(v4 + 392) = a2;

  v5 = *(v3 + 368);
  v6 = *(v3 + 360);

  return _swift_task_switch(sub_1000233B0, v6, v5);
}

uint64_t sub_1000233B0(uint64_t a1)
{
  v76 = v1;
  defaultLogger()();

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v5 = v1[48];
    v4 = v1[49];
    v6 = v1[44];
    v7 = v1[33];
    v8 = v1[34];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v75 = v10;
    *v9 = 136315138;
    *(v9 + 4) = sub_100141FE4(v5, v4, &v75);
    _os_log_impl(&_mh_execute_header, v2, v3, "Using APS Connection environment %s", v9, 0xCu);
    sub_10000BB78(v10);

    v11 = *(v8 + 8);
    v11(v6, v7);
  }

  else
  {
    v12 = v1[44];
    v13 = v1[33];
    v14 = v1[34];

    v11 = *(v14 + 8);
    v11(v12, v13);
  }

  v1[50] = v11;
  v15 = v1[26];
  v16 = *(v15 + 80);
  v17 = objc_allocWithZone(APSConnection);
  v18 = v16;
  v19 = String._bridgeToObjectiveC()();

  v20 = String._bridgeToObjectiveC()();
  v21 = [v17 initWithEnvironmentName:v19 namedDelegatePort:v20 queue:v18];

  v22 = *(v15 + 72);
  *(v15 + 72) = v21;
  v23 = v21;

  if (v23)
  {
    [v23 setDelegate:v1[26]];
  }

  v24 = *(v1[26] + 72);
  if (v24 && (v25 = [v24 publicToken]) != 0)
  {
    v26 = v25;
    v27 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v29 = v28;

    v30 = Data.base16EncodedString()();
    sub_10000B90C(v27, v29);
    defaultLogger()();

    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.default.getter();

    v33 = os_log_type_enabled(v31, v32);
    v34 = v1[43];
    v35 = v1[33];
    if (v33)
    {
      v36 = v11;
      v37 = swift_slowAlloc();
      v74 = v34;
      v38 = swift_slowAlloc();
      v75 = v38;
      *v37 = 136315138;
      v39 = sub_100141FE4(v30._countAndFlagsBits, v30._object, &v75);

      *(v37 + 4) = v39;
      _os_log_impl(&_mh_execute_header, v31, v32, "===> DIPPushNotificationManager APS pushtoken = %s", v37, 0xCu);
      sub_10000BB78(v38);

      v11 = v36;

      v36(v74, v35);
      goto LABEL_15;
    }

    v45 = v34;
  }

  else
  {
    defaultLogger()();
    v40 = Logger.logObject.getter();
    v41 = static os_log_type_t.default.getter();
    v42 = os_log_type_enabled(v40, v41);
    v43 = v1[42];
    v35 = v1[33];
    if (v42)
    {
      v44 = swift_slowAlloc();
      *v44 = 0;
      _os_log_impl(&_mh_execute_header, v40, v41, "===> DIPPushNotificationManager APS pushtoken = NOT AVAILABLE", v44, 2u);
    }

    v45 = v43;
  }

  v11(v45, v35);
LABEL_15:
  v46 = [objc_opt_self() standardUserDefaults];
  static DaemonDefaultsKeys.usePDSPushSandbox.getter();
  v47 = String._bridgeToObjectiveC()();

  v48 = [v46 BOOLForKey:v47];

  if (v48)
  {
    defaultLogger()();
    v49 = Logger.logObject.getter();
    v50 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      *v51 = 0;
      _os_log_impl(&_mh_execute_header, v49, v50, "Using pds push sandbox environment due to user defaults setting", v51, 2u);
    }

    v52 = v1[41];
    v53 = v1[33];
    v54 = v1[26];

    v11(v52, v53);
    *(v54 + 64) = 1;
  }

  else
  {
    defaultLogger()();
    v55 = Logger.logObject.getter();
    v56 = static os_log_type_t.debug.getter();
    v57 = os_log_type_enabled(v55, v56);
    v58 = v1[40];
    v59 = v1[33];
    if (v57)
    {
      v60 = swift_slowAlloc();
      *v60 = 0;
      _os_log_impl(&_mh_execute_header, v55, v56, "Using pds production environment by default", v60, 2u);
    }

    v11(v58, v59);
  }

  type metadata accessor for DIPAccountManager();
  static DIPAccountManager.sharedInstance.getter();
  sub_10000BA08(v1 + 18, v1[21]);
  dispatch thunk of DIPAccountManagerProtocol.primaryAppleAccountDSID()();
  v61 = v1[26];
  sub_10000BB78(v1 + 18);
  v62 = String._bridgeToObjectiveC()();

  v63 = [objc_opt_self() userWithDSID:v62];
  v1[51] = v63;

  v64 = *(v61 + 64);
  v65 = objc_allocWithZone(PDSRegistration);
  v66 = String._bridgeToObjectiveC()();
  v67 = String._bridgeToObjectiveC()();
  v1[52] = [v65 initWithTopic:v66 qualifier:v67 pushEnvironment:v64];

  v68 = *(v61 + 32);
  v69 = *(v61 + 40);
  objc_allocWithZone(PDSRegistrar);

  v70 = sub_1000278FC(v68, v69);
  v1[53] = v70;
  v1[54] = 0;
  v1[2] = v1;
  v1[7] = v1 + 23;
  v1[3] = sub_100023F94;
  v71 = v70;
  v72 = swift_continuation_init();
  v1[17] = sub_100007224(&qword_100833B80, &unk_1006BFA10);
  v1[10] = _NSConcreteStackBlock;
  v1[11] = 1107296256;
  v1[12] = sub_100024BE8;
  v1[13] = &unk_1007FD550;
  v1[14] = v72;
  [v71 currentRegistrationsForUser:v63 completion:v1 + 10];

  return _swift_continuation_await(v1 + 2);
}

uint64_t sub_100023F94()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 440) = v2;
  v3 = *(v1 + 368);
  v4 = *(v1 + 360);
  if (v2)
  {
    v5 = sub_1000247CC;
  }

  else
  {
    v5 = sub_1000240F0;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_1000240F0()
{
  v0[24] = v0[52];
  v1 = v0[23];
  v2 = swift_task_alloc();
  *(v2 + 16) = v0 + 24;
  v3 = sub_10035C7BC(sub_100027DC8, v2, v1);

  if (v3)
  {
    defaultLogger()();
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();
    v6 = os_log_type_enabled(v4, v5);
    v7 = v0[50];
    v8 = v0[38];
    v9 = v0[33];
    if (v6)
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v4, v5, "PDS found a previous registration, skipping", v10, 2u);
    }

    v7(v8, v9);
  }

  else
  {
    defaultLogger()();
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v11, v12, "PDS no existing registration found, adding a new one", v13, 2u);
    }

    v15 = v0[52];
    v14 = v0[53];
    v17 = v0[50];
    v16 = v0[51];
    v18 = v0[39];
    v19 = v0[33];

    v17(v18, v19);
    v0[25] = 0;
    v20 = [v14 addRegistration:v15 toUser:v16 error:v0 + 25];
    v21 = v0[25];
    if (!v20)
    {
      v34 = v0[52];
      v33 = v0[53];
      v35 = v0[51];
      v36 = v21;
      _convertNSErrorToError(_:)();

      swift_willThrow();
      v38 = v0[31];
      v37 = v0[32];
      v39 = v0[30];
      v40 = _convertErrorToNSError(_:)();
      v41 = [v40 code];

      v42 = *(v38 + 104);
      v42(v37, enum case for DIPError.Code.invalidAppleAccount(_:), v39);
      v43 = DIPError.Code.rawValue.getter();
      (*(v38 + 8))(v37, v39);
      if (v41 == v43)
      {
        defaultLogger()();
        v44 = Logger.logObject.getter();
        v45 = static os_log_type_t.default.getter();
        v46 = os_log_type_enabled(v44, v45);
        v47 = v0[50];
        v48 = v0[36];
        v49 = v0[33];
        if (v46)
        {
          v50 = swift_slowAlloc();
          *v50 = 0;
          _os_log_impl(&_mh_execute_header, v44, v45, "Ignoring account not signed in errors for PDS registration", v50, 2u);
        }

        else
        {
        }

        v47(v48, v49);
      }

      else
      {
        v51 = v0[35];
        v60 = v0[33];
        v61 = v0[50];
        v52 = v0[29];
        v53 = v0[27];
        v54 = v0[28];
        v42(v0[32], enum case for DIPError.Code.pdsRegistrationError(_:), v0[30]);
        swift_errorRetain();
        sub_1000402AC(_swiftEmptyArrayStorage);
        DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
        sub_100027D54(&qword_100834130, 255, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
        swift_allocError();
        (*(v54 + 16))(v55, v52, v53);
        defaultLogger()();
        DIPRecordError(_:message:log:)();

        v61(v51, v60);
        (*(v54 + 8))(v52, v53);
      }

      goto LABEL_19;
    }

    v22 = v21;
  }

  defaultLogger()();
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.default.getter();
  v25 = os_log_type_enabled(v23, v24);
  v26 = v0[52];
  v27 = v0[53];
  v28 = v0[50];
  v29 = v0[51];
  v30 = v0[37];
  v31 = v0[33];
  if (v25)
  {
    v32 = swift_slowAlloc();
    *v32 = 0;
    _os_log_impl(&_mh_execute_header, v23, v24, "PDS registration complete", v32, 2u);
  }

  v28(v30, v31);
LABEL_19:
  v59 = *(v0[26] + 72);
  v56 = v59;

  v57 = v0[1];

  return v57(v59);
}

uint64_t sub_1000247CC(uint64_t a1)
{
  v2 = v1[52];
  v3 = v1[53];
  v4 = v1[51];
  swift_willThrow();

  v6 = v1[31];
  v5 = v1[32];
  v7 = v1[30];
  v8 = _convertErrorToNSError(_:)();
  v9 = [v8 code];

  v10 = *(v6 + 104);
  v10(v5, enum case for DIPError.Code.invalidAppleAccount(_:), v7);
  v11 = DIPError.Code.rawValue.getter();
  (*(v6 + 8))(v5, v7);
  if (v9 == v11)
  {
    defaultLogger()();
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.default.getter();
    v14 = os_log_type_enabled(v12, v13);
    v15 = v1[50];
    v16 = v1[36];
    v17 = v1[33];
    if (v14)
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&_mh_execute_header, v12, v13, "Ignoring account not signed in errors for PDS registration", v18, 2u);
    }

    else
    {
    }

    v15(v16, v17);
  }

  else
  {
    v19 = v1[35];
    v28 = v1[33];
    v29 = v1[50];
    v20 = v1[29];
    v21 = v1[27];
    v22 = v1[28];
    v10(v1[32], enum case for DIPError.Code.pdsRegistrationError(_:), v1[30]);
    swift_errorRetain();
    sub_1000402AC(_swiftEmptyArrayStorage);
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    sub_100027D54(&qword_100834130, 255, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    (*(v22 + 16))(v23, v20, v21);
    defaultLogger()();
    DIPRecordError(_:message:log:)();

    v29(v19, v28);
    (*(v22 + 8))(v20, v21);
  }

  v27 = *(v1[26] + 72);
  v24 = v27;

  v25 = v1[1];

  return v25(v27);
}

uint64_t sub_100024BE8(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *sub_10000BA08((a1 + 32), *(a1 + 56));
  if (a3)
  {
    sub_100007224(&qword_100833B90, &qword_1006D95C0);
    v5 = swift_allocError();
    *v6 = a3;
    v7 = a3;

    return _swift_continuation_throwingResumeWithError(v4, v5);
  }

  else
  {
    sub_10001F8D4(0, &qword_100833B88, PDSRegistration_ptr);
    **(*(v4 + 64) + 40) = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    return _swift_continuation_throwingResume(v4);
  }
}

uint64_t sub_100024CD8()
{
  v1[2] = v0;
  v2 = type metadata accessor for Logger();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  v1[6] = swift_task_alloc();
  type metadata accessor for DIPPushNotificationManager();
  sub_100027D54(&qword_100833B70, v3, type metadata accessor for DIPPushNotificationManager, &unk_1006BF9A0);
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[7] = v5;
  v1[8] = v4;

  return _swift_task_switch(sub_100024DF4, v5, v4);
}

uint64_t sub_100024DF4()
{
  if (qword_100832D30 != -1)
  {
    swift_once();
  }

  v1 = swift_task_alloc();
  *(v0 + 72) = v1;
  *v1 = v0;
  v1[1] = sub_100024EC0;
  v2.n128_u64[0] = 10.0;

  return OS_dispatch_group.wait(interval:)(v2);
}

uint64_t sub_100024EC0(char a1)
{
  v2 = *v1;
  *(*v1 + 96) = a1;

  v3 = *(v2 + 64);
  v4 = *(v2 + 56);

  return _swift_task_switch(sub_100024FE8, v4, v3);
}

uint64_t sub_100024FE8()
{
  if (static DispatchTimeoutResult.== infix(_:_:)())
  {
    defaultLogger()();
    v1 = Logger.logObject.getter();
    v2 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v1, v2))
    {
      v3 = swift_slowAlloc();
      *v3 = 0;
      _os_log_impl(&_mh_execute_header, v1, v2, "Timed out waiting for the daemon to be initialized, proceeding to enable push", v3, 2u);
    }

    v4 = v0[6];
    v5 = v0[3];
    v6 = v0[4];

    (*(v6 + 8))(v4, v5);
  }

  v7 = swift_task_alloc();
  v0[10] = v7;
  *v7 = v0;
  v7[1] = sub_10002512C;

  return sub_100022E20();
}

uint64_t sub_10002512C(uint64_t a1)
{
  v2 = *v1;
  *(*v1 + 88) = a1;

  v3 = *(v2 + 64);
  v4 = *(v2 + 56);

  return _swift_task_switch(sub_100025254, v4, v3);
}

uint64_t sub_100025254(uint64_t a1)
{
  v2 = v1[11];
  if (v2)
  {
    v3 = v1[2];
    sub_100007224(&qword_100833B78, &unk_1006D9F00);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_1006BF740;
    *(v4 + 32) = 0xD000000000000035;
    *(v4 + 40) = 0x80000001006FBAD0;
    v5 = *(v3 + 24);
    *(v4 + 48) = *(v3 + 16);
    *(v4 + 56) = v5;

    isa = Array._bridgeToObjectiveC()().super.isa;

    [v2 _setEnabledTopics:isa];

    v7._countAndFlagsBits = 0x3166323864616636;
    v8._object = 0x80000001006FBB10;
    v7._object = 0xE800000000000000;
    v8._countAndFlagsBits = 0xD000000000000021;
    logMilestone(tag:description:)(v7, v8);
  }

  else
  {
    defaultLogger()();
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();
    v11 = os_log_type_enabled(v9, v10);
    v13 = v1[4];
    v12 = v1[5];
    v14 = v1[3];
    if (v11)
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v9, v10, "unable to enable push because no connection available", v15, 2u);
    }

    (*(v13 + 8))(v12, v14);
  }

  v16 = v1[1];

  return v16();
}

uint64_t sub_10002543C(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  v4 = type metadata accessor for DIPError();
  v3[6] = v4;
  v3[7] = *(v4 - 8);
  v3[8] = swift_task_alloc();
  v5 = type metadata accessor for DIPError.Code();
  v3[9] = v5;
  v3[10] = *(v5 - 8);
  v3[11] = swift_task_alloc();
  v6 = type metadata accessor for Logger();
  v3[12] = v6;
  v3[13] = *(v6 - 8);
  v3[14] = swift_task_alloc();
  v3[15] = swift_task_alloc();
  v3[16] = swift_task_alloc();
  v3[17] = swift_task_alloc();
  v7 = swift_task_alloc();
  v3[18] = v7;
  *v7 = v3;
  v7[1] = sub_10002563C;

  return sub_100022E20();
}

uint64_t sub_10002563C(uint64_t a1)
{
  *(*v1 + 152) = a1;

  type metadata accessor for DIPPushNotificationManager();
  sub_100027D54(&qword_100833B70, v2, type metadata accessor for DIPPushNotificationManager, &unk_1006BF9A0);
  v4 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1000257D8, v4, v3);
}

uint64_t sub_1000257D8(uint64_t a1)
{
  v2 = *(v1 + 152);
  if (v2)
  {
    v3 = *(v1 + 40);
    [*(v1 + 152) _setEnabledTopics:0];
    v4 = String._bridgeToObjectiveC()();
    v5 = [objc_opt_self() userWithDSID:v4];

    v6 = *(v3 + 32);
    v7 = *(v3 + 40);
    objc_allocWithZone(PDSRegistrar);

    v8 = sub_1000278FC(v6, v7);
    *(v1 + 16) = 0;
    v9 = [v8 removeAllRegistrationsFromUser:v5 error:v1 + 16];
    v10 = *(v1 + 16);
    if (v9)
    {
      v11 = v10;
      defaultLogger()();
      v12 = Logger.logObject.getter();
      v13 = static os_log_type_t.default.getter();
      v14 = os_log_type_enabled(v12, v13);
      v15 = *(v1 + 136);
      v16 = *(v1 + 96);
      v17 = *(v1 + 104);
      if (v14)
      {
        v18 = swift_slowAlloc();
        *v18 = 0;
        _os_log_impl(&_mh_execute_header, v12, v13, "removed all PDS registrations", v18, 2u);
      }

      (*(v17 + 8))(v15, v16);
    }

    else
    {
      v26 = v10;
      _convertNSErrorToError(_:)();

      swift_willThrow();
      v50 = v2;

      v28 = *(v1 + 80);
      v27 = *(v1 + 88);
      v29 = *(v1 + 72);
      v30 = _convertErrorToNSError(_:)();
      v31 = [v30 code];

      v32 = *(v28 + 104);
      v32(v27, enum case for DIPError.Code.invalidAppleAccount(_:), v29);
      v33 = DIPError.Code.rawValue.getter();
      (*(v28 + 8))(v27, v29);
      if (v31 == v33)
      {
        defaultLogger()();
        v34 = Logger.logObject.getter();
        v35 = static os_log_type_t.default.getter();
        v36 = os_log_type_enabled(v34, v35);
        v37 = *(v1 + 120);
        v38 = *(v1 + 96);
        v39 = *(v1 + 104);
        if (v36)
        {
          v40 = swift_slowAlloc();
          *v40 = 0;
          _os_log_impl(&_mh_execute_header, v34, v35, "Ignoring account not signed in errors for PDS registration", v40, 2u);
        }

        else
        {
        }

        (*(v39 + 8))(v37, v38);
      }

      else
      {
        v41 = *(v1 + 112);
        v48 = *(v1 + 104);
        v49 = *(v1 + 96);
        v42 = *(v1 + 64);
        v43 = *(v1 + 48);
        v44 = *(v1 + 56);
        v32(*(v1 + 88), enum case for DIPError.Code.pdsDeregistrationError(_:), *(v1 + 72));
        swift_errorRetain();
        sub_1000402AC(_swiftEmptyArrayStorage);
        DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
        sub_100027D54(&qword_100834130, 255, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
        swift_allocError();
        (*(v44 + 16))(v45, v42, v43);
        defaultLogger()();
        DIPRecordError(_:message:log:)();

        (*(v48 + 8))(v41, v49);
        (*(v44 + 8))(v42, v43);
      }
    }
  }

  else
  {
    defaultLogger()();
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.error.getter();
    v21 = os_log_type_enabled(v19, v20);
    v22 = *(v1 + 128);
    v23 = *(v1 + 96);
    v24 = *(v1 + 104);
    if (v21)
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&_mh_execute_header, v19, v20, "unable to disable push because no connection available", v25, 2u);
    }

    (*(v24 + 8))(v22, v23);
  }

  v46 = *(v1 + 8);

  return v46();
}

void sub_100025E80(void *a1)
{
  v2 = sub_100007224(&unk_100845860, &unk_1006BF9D0);
  __chkstk_darwin(v2 - 8);
  v4 = &v116 - v3;
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v120 = &v116 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v119 = &v116 - v10;
  v11 = __chkstk_darwin(v9);
  v123 = &v116 - v12;
  __chkstk_darwin(v11);
  v14 = &v116 - v13;
  defaultLogger()();
  v15 = a1;
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();
  v18 = os_log_type_enabled(v16, v17);
  p_align = &stru_10082BFE8.align;
  v118 = v4;
  if (v18)
  {
    v121 = v6;
    v122 = v5;
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    *&v129[0] = v21;
    *v20 = 136315394;
    v22 = [v15 topic];
    if (v22)
    {
      v23 = v22;
      v117 = v21;
      v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v26 = v25;

      v27 = sub_100141FE4(v24, v26, v129);

      *(v20 + 4) = v27;
      *(v20 + 12) = 2080;
      v28 = [v15 userInfo];

      if (v28)
      {
        static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

        v29 = Dictionary.description.getter();
        v31 = v30;

        v32 = sub_100141FE4(v29, v31, v129);

        *(v20 + 14) = v32;
        _os_log_impl(&_mh_execute_header, v16, v17, "<=== APS message received in DIPPushNotificationManager, topic = %s, message = %s", v20, 0x16u);
        swift_arrayDestroy();

        v6 = v121;
        v33 = *(v121 + 8);
        v5 = v122;
        v33(v14, v122);
        p_align = (&stru_10082BFE8 + 24);
        goto LABEL_6;
      }
    }

    else
    {

      __break(1u);
    }

    __break(1u);
    goto LABEL_47;
  }

  v33 = *(v6 + 8);
  v33(v14, v5);
LABEL_6:
  v34 = v124;
  v35 = *(v124 + 16);
  v36 = *(v124 + 24);
  v37 = [v15 *(p_align + 449)];
  if (v37)
  {
    v38 = v37;
    v39 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v41 = v40;

    if (v35 == v39 && v36 == v41)
    {

      goto LABEL_11;
    }

    v42 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v42)
    {
LABEL_11:
      v43 = [objc_opt_self() standardUserDefaults];
      v44._countAndFlagsBits = static DaemonInternalDefaultsKeys.skipPendingActionsFromPushNotification.getter();
      v45 = NSUserDefaults.internalBool(forKey:)(v44);

      if (v45)
      {
        v46 = v119;
        defaultLogger()();
        v47 = Logger.logObject.getter();
        v48 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v47, v48))
        {
          v49 = swift_slowAlloc();
          *v49 = 0;
          _os_log_impl(&_mh_execute_header, v47, v48, "Internal settings for skipPendingActionsFromPushNotification has been enabled. Will not request pending actions", v49, 2u);
        }

        v50 = v46;
LABEL_37:
        v33(v50, v5);
        return;
      }

      v62 = *(v34 + 56);
      *&v126 = *(v34 + 48);
      *(&v126 + 1) = v62;

      AnyHashable.init<A>(_:)();
      v63 = [v15 userInfo];
      if (v63)
      {
        v64 = v63;
        v65 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

        v66 = *(v65 + 16);
        v121 = v6;
        if (v66 && (v67 = sub_10003AECC(v129), (v68 & 1) != 0))
        {
          sub_10001F2EC(*(v65 + 56) + 32 * v67, &v126);
          sub_1000279C8(v129);

          v69 = swift_dynamicCast();
          v70 = v125[0];
          if (!v69)
          {
            v70 = 0;
          }

          v119 = v70;
          if (v69)
          {
            v71 = v125[1];
          }

          else
          {
            v71 = 0;
          }

          v117 = v71;
        }

        else
        {

          sub_1000279C8(v129);
          v119 = 0;
          v117 = 0;
        }

        v122 = v5;
        v72 = type metadata accessor for IdentityProofingPendingActionsWebService();
        memset(v129, 0, sizeof(v129));
        v130 = 0;
        v73 = swift_allocObject();
        *(v73 + 16) = 0;
        v124 = sub_100224C5C();
        v74 = [objc_allocWithZone(PKPaymentService) init];
        v127 = sub_10001F8D4(0, &unk_1008458A0, PKPaymentService_ptr);
        v128 = &off_10080C410;
        *&v126 = v74;
        v75 = sub_10026CB9C(v127);
        v76 = sub_10026CBA0();
        type metadata accessor for IdentityProofingExpirationActionProvider();
        v77 = swift_allocObject();
        v78 = sub_10001F358(&v126, v77 + 16);
        *(v77 + 56) = v75;
        *(v77 + 64) = v76;
        v79 = sub_100224C60(v78);
        v80 = sub_100224C64();
        if (qword_100832CC0 != -1)
        {
          swift_once();
        }

        v120 = v79;
        v81 = qword_1008823E0;
        type metadata accessor for IdentityWatchProvisioningManagerFactory();
        v82 = swift_allocObject();
        v83 = qword_100832C40;
        v84 = v81;
        if (v83 != -1)
        {
          swift_once();
        }

        v85 = qword_100882300;
        v127 = v72;
        v128 = &off_10080B7E8;
        *&v126 = v73;
        type metadata accessor for IdentityProofingPendingActionsFlow(0);
        v86 = swift_allocObject();
        v87 = sub_10001F370(&v126, v72);
        v116 = &v116;
        __chkstk_darwin(v87);
        v89 = (&v116 - ((v88 + 15) & 0xFFFFFFFFFFFFFFF0));
        (*(v90 + 16))(v89);
        v91 = *v89;
        v125[3] = v72;
        v125[4] = &off_10080B7E8;
        v125[0] = v91;
        *(v86 + 16) = 0;
        v92 = OBJC_IVAR____TtC8coreidvd34IdentityProofingPendingActionsFlow_workflowRecommendationResponse;
        v93 = type metadata accessor for WorkflowRecommendationResponse(0);
        (*(*(v93 - 8) + 56))(v86 + v92, 1, 1, v93);
        v94 = v86 + OBJC_IVAR____TtC8coreidvd34IdentityProofingPendingActionsFlow_paymentService;
        *v94 = 0u;
        *(v94 + 16) = 0u;
        *(v94 + 32) = 0;
        v95 = OBJC_IVAR____TtC8coreidvd34IdentityProofingPendingActionsFlow_livenessConfigProvider;
        *(v86 + OBJC_IVAR____TtC8coreidvd34IdentityProofingPendingActionsFlow_livenessConfigProvider) = 0;
        v96 = OBJC_IVAR____TtC8coreidvd34IdentityProofingPendingActionsFlow_staticWorkflow;
        v97 = type metadata accessor for IdentityProofingStaticWorkflow(0);
        (*(*(v97 - 8) + 56))(v86 + v96, 1, 1, v97);
        v98 = OBJC_IVAR____TtC8coreidvd34IdentityProofingPendingActionsFlow_watchListener;
        *(v86 + OBJC_IVAR____TtC8coreidvd34IdentityProofingPendingActionsFlow_watchListener) = 0;
        *(v86 + OBJC_IVAR____TtC8coreidvd34IdentityProofingPendingActionsFlow_livenessStepUpConfig) = 0;
        *(v86 + OBJC_IVAR____TtC8coreidvd34IdentityProofingPendingActionsFlow_livenessStepUpIQSettings) = 0;
        swift_beginAccess();
        sub_100027A1C(v129, v94);
        swift_endAccess();
        *(v86 + OBJC_IVAR____TtC8coreidvd34IdentityProofingPendingActionsFlow_trigger) = 2;
        sub_100020260(v125, v86 + OBJC_IVAR____TtC8coreidvd34IdentityProofingPendingActionsFlow_pendingActionsWebService);
        *(v86 + OBJC_IVAR____TtC8coreidvd34IdentityProofingPendingActionsFlow_userNotificationProvider) = v124;
        *(v86 + OBJC_IVAR____TtC8coreidvd34IdentityProofingPendingActionsFlow_expirationActionProvider) = v77;
        *(v86 + v95) = 0;

        *(v86 + OBJC_IVAR____TtC8coreidvd34IdentityProofingPendingActionsFlow_cleanupProvider) = v120;
        *(v86 + OBJC_IVAR____TtC8coreidvd34IdentityProofingPendingActionsFlow_biomeManager) = v80;
        *(v86 + OBJC_IVAR____TtC8coreidvd34IdentityProofingPendingActionsFlow_deviceInfo) = v84;
        if (qword_1008824A8)
        {
          v99 = *(qword_1008824A8 + 152);
          v100 = v99;
        }

        else
        {
          v99 = 0;
        }

        v101 = *(v86 + v98);
        *(v86 + v98) = v99;
        v102 = v84;

        if (qword_100832C18 != -1)
        {
          swift_once();
        }

        v103 = qword_100882220;
        v104 = type metadata accessor for IdentityBiometricStoreHelper();
        type metadata accessor for IdentityProofingCredentialProvider();
        v105 = swift_allocObject();
        v105[2] = 0;
        v105[3] = v103;
        v105[6] = v104;
        v105[7] = &off_10080A0A8;
        *(v86 + OBJC_IVAR____TtC8coreidvd34IdentityProofingPendingActionsFlow_credentialProvider) = v105;
        *(v86 + OBJC_IVAR____TtC8coreidvd34IdentityProofingPendingActionsFlow_identityWatchProvisioningManagerFactory) = v82;

        *(v86 + 24) = sub_10003D358(_swiftEmptyArrayStorage);
        *(v86 + OBJC_IVAR____TtC8coreidvd34IdentityProofingPendingActionsFlow_actionsRepository) = v85;

        defaultLogger()();

        v106 = Logger.logObject.getter();
        v107 = static os_log_type_t.debug.getter();

        if (os_log_type_enabled(v106, v107))
        {
          v108 = swift_slowAlloc();
          v109 = swift_slowAlloc();
          *v108 = 138412290;
          v110 = *(v86 + v98);
          *(v108 + 4) = v110;
          *v109 = v110;
          v111 = v110;
          _os_log_impl(&_mh_execute_header, v106, v107, "IdentityProofingPendingActionsFlow: watchListener = %@", v108, 0xCu);
          sub_10000BE18(v109, &unk_100833B50, &unk_1006D8FB0);
        }

        (*(v121 + 8))(v123, v122);
        sub_10000BE18(v129, &unk_100833B60, &qword_1006BF9E0);
        sub_10000BB78(v125);
        sub_10000BB78(&v126);
        v112 = type metadata accessor for TaskPriority();
        v113 = v118;
        (*(*(v112 - 8) + 56))(v118, 1, 1, v112);
        v114 = swift_allocObject();
        v114[2] = 0;
        v114[3] = 0;
        v115 = v119;
        v114[4] = v86;
        v114[5] = v115;
        v114[6] = v117;
        sub_1003E653C(0, 0, v113, &unk_1006BF9F0, v114);

        return;
      }

LABEL_47:
      __break(1u);
      return;
    }
  }

  v51 = [v15 userInfo];
  if (v51)
  {
    v52 = v51;
    static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v54 = [objc_opt_self() notificationFromRemoteNotificationDictionary:isa];

    if (v54)
    {
      v55 = v120;
      defaultLogger()();
      v56 = v54;
      v57 = Logger.logObject.getter();
      v58 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v57, v58))
      {
        v59 = swift_slowAlloc();
        v60 = swift_slowAlloc();
        *v59 = 138412290;
        *(v59 + 4) = v56;
        *v60 = v54;
        v61 = v56;
        _os_log_impl(&_mh_execute_header, v57, v58, "APS didReceiveMessage %@", v59, 0xCu);
        sub_10000BE18(v60, &unk_100833B50, &unk_1006D8FB0);

        v55 = v120;
      }

      else
      {
        v61 = v57;
        v57 = v56;
      }

      v50 = v55;
      goto LABEL_37;
    }
  }
}

uint64_t sub_100026CF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[4] = a5;
  v6[5] = a6;
  v6[2] = a1;
  v6[3] = a4;
  return _swift_task_switch(sub_100026D14, 0, 0);
}

uint64_t sub_100026D14()
{
  v1 = *(v0 + 40);
  v6 = *(v0 + 24);
  type metadata accessor for OSTransaction();
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  *(v2 + 16) = v6;
  *(v2 + 32) = v1;
  v3 = swift_task_alloc();
  *(v0 + 56) = v3;
  *v3 = v0;
  v3[1] = sub_100026E40;
  v4 = *(v0 + 16);

  return __s13CoreIDVShared13OSTransactionC5namedyq_SS_q_yYaYbxYKXEtYaxYKs5ErrorRzRi__r0_lFZ(v4, 0xD000000000000034, 0x80000001006FB9B0, &unk_1006BFA00, v2, &type metadata for Never, &type metadata for () + 8, &protocol witness table for Never);
}

uint64_t sub_100026E40()
{
  v2 = *v1;

  if (!v0)
  {

    v4 = *(v2 + 8);

    return v4();
  }

  return result;
}

uint64_t sub_100026F50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a3;
  v4[4] = a4;
  v4[2] = a2;
  v5 = type metadata accessor for Logger();
  v4[5] = v5;
  v4[6] = *(v5 - 8);
  v4[7] = swift_task_alloc();
  v6 = type metadata accessor for DIPError.Code();
  v4[8] = v6;
  v4[9] = *(v6 - 8);
  v4[10] = swift_task_alloc();
  v7 = type metadata accessor for DIPError();
  v4[11] = v7;
  v4[12] = *(v7 - 8);
  v4[13] = swift_task_alloc();

  return _swift_task_switch(sub_1000270CC, 0, 0);
}

uint64_t sub_1000270CC()
{
  v1._countAndFlagsBits = 0x3635323263343465;
  v2._object = 0x80000001006FB9F0;
  v1._object = 0xE800000000000000;
  v2._countAndFlagsBits = 0xD00000000000003BLL;
  logMilestone(tag:description:)(v1, v2);
  v3 = swift_task_alloc();
  v0[14] = v3;
  *v3 = v0;
  v3[1] = sub_10002719C;
  v5 = v0[3];
  v4 = v0[4];

  return sub_10025AE6C(v5, v4, 0, 1);
}

uint64_t sub_10002719C(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 120) = v1;

  if (v1)
  {

    return _swift_task_switch(sub_10002730C, 0, 0);
  }

  else
  {

    v4 = *(v3 + 8);

    return v4();
  }
}

uint64_t sub_10002730C()
{
  v2 = v0[12];
  v1 = v0[13];
  v3 = v0[11];
  v5 = v0[6];
  v4 = v0[7];
  v9 = v0[5];
  (*(v0[9] + 104))(v0[10], enum case for DIPError.Code.internalError(_:), v0[8]);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  sub_100027D54(&qword_100834130, 255, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
  swift_allocError();
  (*(v2 + 16))(v6, v1, v3);
  defaultLogger()();
  DIPRecordError(_:message:log:)();

  (*(v5 + 8))(v4, v9);
  (*(v2 + 8))(v1, v3);

  v7 = v0[1];

  return v7();
}

id sub_10002751C()
{
  v8 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v1 = *(v8 - 8);
  __chkstk_darwin(v8);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for OS_dispatch_queue_serial.Attributes();
  __chkstk_darwin(v4);
  v5 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v5 - 8);
  *(v0 + 16) = 0xD00000000000001ALL;
  *(v0 + 24) = 0x80000001006FB970;
  *(v0 + 32) = 0xD000000000000012;
  *(v0 + 40) = 0x80000001006FB990;
  *(v0 + 48) = 0xD000000000000011;
  *(v0 + 56) = 0x80000001006FB930;
  *(v0 + 64) = 0;
  *(v0 + 72) = 0;
  sub_10001F8D4(0, &qword_100833B28, OS_dispatch_queue_serial_ptr);
  static DispatchQoS.unspecified.getter();
  v10 = _swiftEmptyArrayStorage;
  sub_100027D54(&qword_100833B30, 255, &type metadata accessor for OS_dispatch_queue_serial.Attributes, &protocol conformance descriptor for OS_dispatch_queue_serial.Attributes);
  sub_100007224(&qword_100833B38, &qword_1006BF9C8);
  sub_100027898();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v1 + 104))(v3, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v8);
  *(v0 + 80) = OS_dispatch_queue_serial.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v6 = type metadata accessor for DIPPushNotificationManager();
  v9.receiver = v0;
  v9.super_class = v6;
  return objc_msgSendSuper2(&v9, "init");
}

uint64_t sub_1000277F8()
{

  return swift_deallocClassInstance();
}

unint64_t sub_100027898()
{
  result = qword_100833B40;
  if (!qword_100833B40)
  {
    sub_10000B870(&qword_100833B38, &qword_1006BF9C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100833B40);
  }

  return result;
}

id sub_1000278FC(uint64_t a1, uint64_t a2)
{
  v3 = String._bridgeToObjectiveC()();

  v8 = 0;
  v4 = [v2 initWithClientID:v3 error:&v8];

  if (v4)
  {
    v5 = v8;
  }

  else
  {
    v6 = v8;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return v4;
}

uint64_t sub_100027A1C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100007224(&unk_100833B60, &qword_1006BF9E0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_100027A8C()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100027AD4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100027B9C;

  return sub_100026CF0(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_100027B9C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_100027C90(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100027B9C;

  return sub_100026F50(a1, v4, v5, v6);
}

uint64_t sub_100027D54(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t sub_100027E30(uint64_t a1)
{
  isEscapingClosureAtFileLocation = v1;
  v9 = a1;
  OS_dispatch_queue_serial_executor.asUnownedSerialExecutor()();
  if (swift_task_isCurrentExecutor())
  {
    v3 = swift_allocObject();
    *(v3 + 16) = sub_100028008;
    *(v3 + 24) = &v8;
    v4 = swift_allocObject();
    *(v4 + 16) = sub_100028054;
    *(v4 + 24) = v3;

    v11[0] = v1;
    sub_1000280B4(v11);

    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      return result;
    }

    __break(1u);

    swift_isEscapingClosureAtFileLocation();

    __break(1u);
  }

  v11[0] = 0;
  v11[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(66);
  v6._object = 0x80000001006FBC30;
  v6._countAndFlagsBits = 0xD00000000000003FLL;
  String.append(_:)(v6);
  v10 = isEscapingClosureAtFileLocation;
  type metadata accessor for DIPPushNotificationManager();
  _print_unlocked<A, B>(_:_:)();
  v7._countAndFlagsBits = 46;
  v7._object = 0xE100000000000000;
  String.append(_:)(v7);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

void sub_100028008()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    sub_100025E80(v1);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_10002807C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000280E8()
{

  return swift_deallocClassInstance();
}

uint64_t sub_100028144()
{
  v0 = type metadata accessor for DispatchTimeInterval();
  sub_100031898(v0, qword_100833C40);
  *sub_10003170C(v0, qword_100833C40) = 5;
  v1 = *(*(v0 - 8) + 104);

  return v1();
}

Swift::Int sub_1000281E0()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1000282DC(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int sub_1000283C4(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_1000284BC@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10002F608(*a1);
  *a2 = result;
  return result;
}

void sub_1000284EC(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEF746E6F7246746ELL;
  v4 = 0xE600000000000000;
  v5 = 0x6569666C6573;
  v6 = 0xED00006F65646956;
  v7 = 0x7373656E6576696CLL;
  if (v2 != 3)
  {
    v7 = 0x7261696C69787561;
    v6 = 0xEE006F6564695679;
  }

  if (v2 != 2)
  {
    v5 = v7;
    v4 = v6;
  }

  if (*v1)
  {
    v3 = 0xEE006B636142746ELL;
  }

  if (*v1 <= 1u)
  {
    v8 = 0x656D75636F446469;
  }

  else
  {
    v8 = v5;
  }

  if (*v1 > 1u)
  {
    v3 = v4;
  }

  *a1 = v8;
  a1[1] = v3;
}

void sub_1000285B8(char *a1@<X8>)
{
  v137 = a1;
  v2 = type metadata accessor for URLResourceValues();
  v122 = *(v2 - 8);
  v123 = v2;
  __chkstk_darwin(v2);
  v124 = &v114 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100007224(&unk_100844540, &unk_1006BFBC0);
  __chkstk_darwin(v4 - 8);
  v134 = &v114 - v5;
  v6 = type metadata accessor for Logger();
  v141 = *(v6 - 8);
  v7 = __chkstk_darwin(v6);
  v121 = &v114 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v11 = &v114 - v10;
  v12 = __chkstk_darwin(v9);
  v125 = &v114 - v13;
  v14 = __chkstk_darwin(v12);
  v129 = &v114 - v15;
  v16 = __chkstk_darwin(v14);
  v131 = &v114 - v17;
  v18 = __chkstk_darwin(v16);
  v20 = &v114 - v19;
  __chkstk_darwin(v18);
  v22 = &v114 - v21;
  v23 = type metadata accessor for DIPError.Code();
  v132 = *(v23 - 8);
  v133 = v23;
  __chkstk_darwin(v23);
  v136 = &v114 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for URL();
  v142 = *(v25 - 8);
  v26 = __chkstk_darwin(v25);
  v28 = &v114 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __chkstk_darwin(v26);
  __chkstk_darwin(v29);
  v32 = *(v1 + 40);
  if (v32 >> 60 == 15)
  {
    defaultLogger()();
    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 0;
      _os_log_impl(&_mh_execute_header, v33, v34, "No asset data is set, so there is nothing to write to disk", v35, 2u);
    }

    (*(v141 + 8))(v11, v6);
    (*(v142 + 56))(v137, 1, 1, v25);
  }

  else
  {
    v135 = v6;
    v130 = v31;
    v139 = &v114 - v30;
    v120 = v1;
    v36 = *(v1 + 32);
    v37 = objc_opt_self();
    v126 = v36;
    v127 = v32;
    sub_10000B8B8(v36, v32);
    v140 = [v37 defaultManager];
    v143[0] = 0;
    if (qword_100832B68 != -1)
    {
      swift_once();
    }

    v128 = v25;
    sub_10003170C(v25, qword_100881E80);
    URL.appendingPathComponent(_:isDirectory:)();
    URL.path.getter();
    v38 = String._bridgeToObjectiveC()();

    v39 = [v140 fileExistsAtPath:v38 isDirectory:v143];

    if (v39)
    {
      v40 = v135;
      if ((v143[0] & 1) == 0)
      {
        v144 = 0;
        v145 = 0xE000000000000000;
        _StringGuts.grow(_:)(47);

        v144 = 0xD000000000000014;
        v145 = 0x80000001006FC120;
        v74 = v139;
        v75._countAndFlagsBits = URL.path.getter();
        String.append(_:)(v75);

        v76._countAndFlagsBits = 0xD000000000000019;
        v76._object = 0x80000001006FC140;
        String.append(_:)(v76);
        (*(v132 + 104))(v136, enum case for DIPError.Code.cloudkitCannotSaveDataBeforeUploads(_:), v133);
        sub_1000402AC(_swiftEmptyArrayStorage);
        type metadata accessor for DIPError();
        sub_1000317EC(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
        swift_allocError();
        DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
        swift_willThrow();

        sub_10000BD94(v126, v127);
        (*(v142 + 8))(v74, v128);
        return;
      }

      defaultLogger()();
      v41 = Logger.logObject.getter();
      v42 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v41, v42))
      {
        v43 = swift_slowAlloc();
        *v43 = 0;
        _os_log_impl(&_mh_execute_header, v41, v42, "uploads path exists", v43, 2u);
      }

      v44 = *(v141 + 8);
      v44(v22, v40);
    }

    else
    {
      defaultLogger()();
      v45 = Logger.logObject.getter();
      v46 = static os_log_type_t.debug.getter();
      v47 = os_log_type_enabled(v45, v46);
      v40 = v135;
      if (v47)
      {
        v48 = swift_slowAlloc();
        *v48 = 0;
        _os_log_impl(&_mh_execute_header, v45, v46, "uploads path doesn't exist. Creating the directory...", v48, 2u);
      }

      v44 = *(v141 + 8);
      v44(v20, v40);
      v49 = v139;
      URL.path.getter();
      v50 = String._bridgeToObjectiveC()();

      v144 = 0;
      v51 = [v140 createDirectoryAtPath:v50 withIntermediateDirectories:0 attributes:0 error:&v144];

      if (!v51)
      {
        v77 = v144;
        _convertNSErrorToError(_:)();

        swift_willThrow();
        sub_10000BD94(v126, v127);
        (*(v142 + 8))(v49, v128);
        return;
      }

      v52 = v144;
    }

    v53 = v128;
    URL.path.getter();
    URL.init(fileURLWithPath:)();

    v54 = v120;
    v55 = v130;
    URL.appendingPathComponent(_:)();
    v56 = v142;
    v118 = *(v142 + 8);
    v119 = v142 + 8;
    v118(v28, v53);
    v57 = v134;
    v115 = *(v56 + 16);
    v116 = v56 + 16;
    v115(v134, v55, v53);
    v59 = *(v56 + 56);
    v58 = v56 + 56;
    v117 = v59;
    v59(v57, 0, 1, v53);
    v60 = OBJC_IVAR____TtC8coreidvd11UploadAsset_assetFileURL;
    swift_beginAccess();
    sub_10000BDA8(v57, v54 + v60);
    swift_endAccess();
    URL.path.getter();
    v61 = String._bridgeToObjectiveC()();

    LODWORD(v60) = [v140 fileExistsAtPath:v61];

    if (v60)
    {
      v62 = v131;
      defaultLogger()();
      v63 = Logger.logObject.getter();
      v64 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v63, v64))
      {
        v65 = swift_slowAlloc();
        v66 = swift_slowAlloc();
        v142 = v58;
        v67 = v66;
        v144 = v66;
        *v65 = 136315138;
        v134 = v44;
        v68 = v53;
        v69 = v130;
        swift_beginAccess();
        v70 = URL.absoluteString.getter();
        v72 = sub_100141FE4(v70, v71, &v144);

        *(v65 + 4) = v72;
        _os_log_impl(&_mh_execute_header, v63, v64, "Not writing asset to path %s because a file already exists at that path", v65, 0xCu);
        sub_10000BB78(v67);

        sub_10000BD94(v126, v127);
        (v134)(v131, v135);
        v73 = v118;
        v118(v139, v68);
      }

      else
      {

        sub_10000BD94(v126, v127);
        v44(v62, v40);
        v73 = v118;
        v118(v139, v53);
        v68 = v53;
        v69 = v130;
      }

      swift_beginAccess();
      v96 = v137;
      v115(v137, v69, v68);
      v117(v96, 0, 1, v68);
      v73(v69, v68);
    }

    else
    {
      v134 = v44;
      if (qword_100832B60 != -1)
      {
        swift_once();
      }

      v78 = qword_100881E78;
      v79 = *(qword_100881E78 + 16);
      os_unfair_lock_lock(v79 + 54);
      v80 = v138;
      sub_100031B5C(&v79[4], &v144);
      v81 = v129;
      if (v80)
      {
        os_unfair_lock_unlock(v79 + 54);
        __break(1u);
        os_unfair_lock_unlock(v53 + 54);
        __break(1u);
      }

      else
      {
        os_unfair_lock_unlock(v79 + 54);
        v82 = v146;

        sub_100031918(&v144);
        v83 = *(v82 + 16);
        os_unfair_lock_lock((v83 + 24));
        v84 = *(v83 + 16);
        v85 = __OFADD__(v84, 1);
        v86 = v84 + 1;
        if (v85)
        {
          __break(1u);
        }

        *(v83 + 16) = v86;
        os_unfair_lock_unlock((v83 + 24));

        defaultLogger()();
        v87 = Logger.logObject.getter();
        v88 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v87, v88))
        {
          v142 = v58;
          v89 = swift_slowAlloc();
          *v89 = 134217984;
          v90 = *(v78 + 16);
          os_unfair_lock_lock(v90 + 54);
          sub_100031B5C(&v90[4], &v144);
          os_unfair_lock_unlock(v90 + 54);
          v91 = v146;

          sub_100031918(&v144);
          v92 = *(v91 + 16);
          os_unfair_lock_lock((v92 + 24));
          v93 = *(v92 + 16);
          os_unfair_lock_unlock((v92 + 24));

          *(v89 + 4) = v93;
          _os_log_impl(&_mh_execute_header, v87, v88, "Current upload count: %ld", v89, 0xCu);

          v58 = v142;
        }

        v94 = v141 + 8;
        (v134)(v81, v135);
        v95 = v126;
        Data.write(to:options:)();
        v141 = v94;
        v97 = v125;
        defaultLogger()();
        v98 = Logger.logObject.getter();
        v99 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v98, v99))
        {
          v101 = swift_slowAlloc();
          v102 = swift_slowAlloc();
          v142 = v58;
          v103 = v102;
          v144 = v102;
          *v101 = 136315138;
          swift_beginAccess();
          v104 = URL.path.getter();
          v106 = sub_100141FE4(v104, v105, &v144);

          *(v101 + 4) = v106;
          _os_log_impl(&_mh_execute_header, v98, v99, "Writing the document to fileURL %s", v101, 0xCu);
          sub_10000BB78(v103);

          v95 = v126;

          (v134)(v125, v135);
        }

        else
        {

          (v134)(v97, v135);
        }

        v107 = v124;
        URLResourceValues.init()();
        URLResourceValues.isExcludedFromBackup.setter();
        swift_beginAccess();
        URL.setResourceValues(_:)();
        swift_endAccess();

        sub_10000BD94(v95, v127);
        (*(v122 + 8))(v107, v123);
        v108 = v128;
        v109 = v118;
        v118(v139, v128);
        v110 = *(v120 + 32);
        v111 = *(v120 + 40);
        *(v120 + 32) = xmmword_1006BF650;
        sub_10000BD94(v110, v111);
        v112 = v137;
        v113 = v130;
        v115(v137, v130, v108);
        v117(v112, 0, 1, v108);
        v109(v113, v108);
      }
    }
  }
}

void sub_100029A54()
{
  v1 = type metadata accessor for Logger();
  v85 = *(v1 - 8);
  v86 = v1;
  v2 = __chkstk_darwin(v1);
  v79 = &v76 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __chkstk_darwin(v2);
  v6 = &v76 - v5;
  v7 = __chkstk_darwin(v4);
  v83 = (&v76 - v8);
  __chkstk_darwin(v7);
  v84 = &v76 - v9;
  v10 = sub_100007224(&unk_100844540, &unk_1006BFBC0);
  v11 = __chkstk_darwin(v10 - 8);
  v81 = &v76 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v14 = &v76 - v13;
  v15 = type metadata accessor for URL();
  v16 = *(v15 - 8);
  v17 = __chkstk_darwin(v15);
  v19 = &v76 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v21 = &v76 - v20;
  v22 = OBJC_IVAR____TtC8coreidvd11UploadAsset_assetFileURL;
  swift_beginAccess();
  v82 = v0;
  v80 = v22;
  sub_10000BBC4(v0 + v22, v14, &unk_100844540, &unk_1006BFBC0);
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    sub_10000BE18(v14, &unk_100844540, &unk_1006BFBC0);
    defaultLogger()();
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&_mh_execute_header, v23, v24, "Asset is not on disk so there is nothing to delete", v25, 2u);
    }

    (*(v85 + 8))(v6, v86);
    return;
  }

  (*(v16 + 32))(v21, v14, v15);
  defaultLogger()();
  (*(v16 + 16))(v19, v21, v15);
  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v76 = swift_slowAlloc();
    v88[0] = v76;
    *v28 = 136315138;
    v29 = URL.absoluteString.getter();
    v77 = v21;
    v30 = v15;
    v32 = v31;
    v78 = *(v16 + 8);
    v78(v19, v30);
    v33 = sub_100141FE4(v29, v32, v88);
    v15 = v30;
    v21 = v77;

    *(v28 + 4) = v33;
    _os_log_impl(&_mh_execute_header, v26, v27, "Deleting asset file at %s", v28, 0xCu);
    sub_10000BB78(v76);
  }

  else
  {

    v78 = *(v16 + 8);
    v78(v19, v15);
  }

  v34 = v84;
  v84 = *(v85 + 8);
  (v84)(v34, v86);
  v35 = v16;
  if (qword_100832B60 != -1)
  {
    swift_once();
  }

  v36 = qword_100881E78;
  v37 = *(qword_100881E78 + 16);
  os_unfair_lock_lock(v37 + 54);
  v38 = v87;
  sub_1000318FC(&v37[4], v88);
  v87 = v38;
  v39 = v37 + 54;
  if (v38)
  {
    goto LABEL_23;
  }

  os_unfair_lock_unlock(v39);
  v40 = v89;

  sub_100031918(v88);
  v41 = *(v40 + 16);
  os_unfair_lock_lock((v41 + 24));
  v42 = *(v41 + 16);
  v43 = __OFSUB__(v42, 1);
  v44 = v42 - 1;
  if (v43)
  {
    __break(1u);
  }

  *(v41 + 16) = v44;
  os_unfair_lock_unlock((v41 + 24));

  defaultLogger()();
  v45 = Logger.logObject.getter();
  v46 = static os_log_type_t.debug.getter();
  if (!os_log_type_enabled(v45, v46))
  {
    goto LABEL_15;
  }

  v77 = v15;
  v47 = v21;
  v48 = swift_slowAlloc();
  *v48 = 134217984;
  v49 = *(v36 + 16);
  os_unfair_lock_lock(v49 + 54);
  v50 = v87;
  sub_100031B5C(&v49[4], v88);
  v87 = v50;
  v39 = v49 + 54;
  if (v50)
  {
LABEL_23:
    os_unfair_lock_unlock(v39);
    __break(1u);
    return;
  }

  os_unfair_lock_unlock(v39);
  v51 = v89;

  sub_100031918(v88);
  v52 = *(v51 + 16);
  os_unfair_lock_lock((v52 + 24));
  v53 = *(v52 + 16);
  os_unfair_lock_unlock((v52 + 24));

  *(v48 + 4) = v53;
  _os_log_impl(&_mh_execute_header, v45, v46, "Current upload count: %ld", v48, 0xCu);

  v21 = v47;
  v15 = v77;
LABEL_15:

  v54 = v85 + 8;
  (v84)(v83, v86);
  v55 = [objc_opt_self() defaultManager];
  URL._bridgeToObjectiveC()(v56);
  v58 = v57;
  v88[0] = 0;
  v59 = [v55 removeItemAtURL:v57 error:v88];

  if (v59)
  {
    v60 = v88[0];
    v78(v21, v15);
  }

  else
  {
    v85 = v54;
    v61 = v88[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();
    v87 = 0;
    v62 = v79;
    defaultLogger()();
    swift_errorRetain();
    v63 = Logger.logObject.getter();
    v64 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v63, v64))
    {
      v65 = swift_slowAlloc();
      v77 = v21;
      v66 = v65;
      v83 = swift_slowAlloc();
      v88[0] = v83;
      *v66 = 136315138;
      swift_getErrorValue();
      v67 = Error.localizedDescription.getter();
      v69 = v35;
      v70 = v15;
      v71 = sub_100141FE4(v67, v68, v88);

      *(v66 + 4) = v71;
      v15 = v70;
      v35 = v69;
      _os_log_impl(&_mh_execute_header, v63, v64, "error occurred during removal of stored document %s. Not a fatal error as the proofing flow can continue.", v66, 0xCu);
      sub_10000BB78(v83);

      (v84)(v79, v86);
      v72 = v77;
    }

    else
    {

      (v84)(v62, v86);
      v72 = v21;
    }

    v78(v72, v15);
  }

  v73 = v81;
  (*(v35 + 56))(v81, 1, 1, v15);
  v74 = v82;
  v75 = v80;
  swift_beginAccess();
  sub_10000BDA8(v73, v74 + v75);
  swift_endAccess();
}

uint64_t sub_10002A3A4()
{

  sub_10000BD94(*(v0 + 32), *(v0 + 40));
  sub_10000BE18(v0 + OBJC_IVAR____TtC8coreidvd11UploadAsset_assetFileURL, &unk_100844540, &unk_1006BFBC0);
  sub_10000BD94(*(v0 + OBJC_IVAR____TtC8coreidvd11UploadAsset_systemData), *(v0 + OBJC_IVAR____TtC8coreidvd11UploadAsset_systemData + 8));

  return swift_deallocClassInstance();
}

void sub_10002A464(uint64_t a1)
{
  sub_10002A514(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_10002A514(uint64_t a1)
{
  if (!qword_100833C98)
  {
    type metadata accessor for URL();
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_100833C98);
    }
  }
}

char *sub_10002A56C()
{
  type metadata accessor for UploadsCloudContainer(0);
  swift_allocObject();
  result = sub_10002A5F8();
  qword_100881E48 = result;
  return result;
}

uint64_t sub_10002A5AC()
{
  sub_100007224(&qword_1008341D8, &unk_1006BFBE0);
  result = swift_allocObject();
  *(result + 24) = 0;
  *(result + 16) = &_swiftEmptyDictionarySingleton;
  off_100833C58 = result;
  return result;
}

char *sub_10002A5F8()
{
  v22 = type metadata accessor for Logger();
  v1 = *(v22 - 8);
  __chkstk_darwin(v22);
  v3 = &v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = (v0 + OBJC_IVAR____TtC8coreidvd21UploadsCloudContainer_name);
  *v4 = 0x7364616F6C7075;
  v4[1] = 0xE700000000000000;
  v5 = (v0 + OBJC_IVAR____TtC8coreidvd21UploadsCloudContainer_containerIDProd);
  *v5 = 0xD000000000000019;
  v5[1] = 0x80000001006FBD90;
  v6 = (v0 + OBJC_IVAR____TtC8coreidvd21UploadsCloudContainer_containerIDNonProd);
  *v6 = 0xD000000000000021;
  v6[1] = 0x80000001006FBDB0;
  v7 = (v0 + OBJC_IVAR____TtC8coreidvd21UploadsCloudContainer_networkAttributionBundleID);
  *v7 = 0xD000000000000012;
  v7[1] = 0x80000001006FBDE0;
  v8 = [objc_opt_self() standardUserDefaults];
  v9._countAndFlagsBits = static DaemonDefaultsKeys.useCloudKitUploadsNonProd.getter();
  v10 = NSUserDefaults.internalBool(forKey:)(v9);

  if (v10)
  {
    defaultLogger()();
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v11, v12, "Using nonprod uploads CloudKit container due to user defaults setting", v13, 2u);
    }

    (*(v1 + 8))(v3, v22);
    v14 = *v6;
    v15 = v6[1];
  }

  else
  {
    v14 = *v5;
    v15 = v5[1];
  }

  v16 = *v4;
  v17 = v4[1];
  v18 = *v7;
  v19 = v7[1];

  return sub_10000C218(v16, v17, v14, v15, v18, v19);
}

char *sub_10002A86C(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for Logger();
  v34 = *(v4 - 8);
  v35 = v4;
  v5 = __chkstk_darwin(v4);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v33 - v8;
  v10 = (v2 + OBJC_IVAR____TtC8coreidvd21UploadsCloudContainer_name);
  *v10 = 0x7364616F6C7075;
  v10[1] = 0xE700000000000000;
  v33 = v10;
  v11 = (v2 + OBJC_IVAR____TtC8coreidvd21UploadsCloudContainer_containerIDProd);
  *v11 = 0xD000000000000019;
  v11[1] = 0x80000001006FBD90;
  v12 = (v2 + OBJC_IVAR____TtC8coreidvd21UploadsCloudContainer_containerIDNonProd);
  *v12 = 0xD000000000000021;
  v12[1] = 0x80000001006FBDB0;
  v13 = (v2 + OBJC_IVAR____TtC8coreidvd21UploadsCloudContainer_networkAttributionBundleID);
  *v13 = 0xD000000000000012;
  v13[1] = 0x80000001006FBDE0;
  v14 = 0x80000001006FC100;
  v15 = 0xD000000000000010;
  if (a1 == 1)
  {
    v15 = 0xD000000000000021;
    v14 = 0x80000001006FBDB0;
  }

  if (a1)
  {
    v16 = v15;
  }

  else
  {
    v16 = 0xD000000000000019;
  }

  if (a1)
  {
    v17 = v14;
  }

  else
  {
    v17 = 0x80000001006FBD90;
  }

  v18 = [objc_opt_self() standardUserDefaults];
  v19._countAndFlagsBits = static DaemonDefaultsKeys.useCloudKitUploadsNonProd.getter();
  v20 = NSUserDefaults.internalBool(forKey:)(v19);

  if (v20)
  {

    defaultLogger()();
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&_mh_execute_header, v21, v22, "Internal setting for non-prod container enabled, using certification Uploads Container", v23, 2u);
    }

    (*(v34 + 8))(v9, v35);
    v16 = 0xD000000000000021;
    v17 = 0x80000001006FBDB0;
  }

  defaultLogger()();

  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v36 = v27;
    *v26 = 136315138;
    *(v26 + 4) = sub_100141FE4(v16, v17, &v36);
    _os_log_impl(&_mh_execute_header, v24, v25, "Initializing UploadsCloudContainer with Container ID: %s", v26, 0xCu);
    sub_10000BB78(v27);
  }

  (*(v34 + 8))(v7, v35);
  v28 = *v33;
  v29 = v33[1];
  v30 = *v13;
  v31 = v13[1];

  return sub_10000C218(v28, v29, v16, v17, v30, v31);
}

uint64_t sub_10002AC64(uint64_t (*a1)(uint64_t))
{
  v2 = type metadata accessor for DaemonDefaultsKeys.CloudContainerDefaultsKeys();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [objc_opt_self() standardUserDefaults];
  v7._countAndFlagsBits = static DaemonDefaultsKeys.useCloudKitUploadsNonProd.getter();
  v8 = NSUserDefaults.internalBool(forKey:)(v7);

  if (v8)
  {
    v9 = static DaemonDefaultsKeys.uploadsNonprodCloudContainer.getter();
  }

  else
  {
    v9 = static DaemonDefaultsKeys.uploadsCloudContainer.getter();
  }

  v10 = a1(v9);
  (*(v3 + 8))(v5, v2);
  return v10;
}

uint64_t sub_10002ADA0(uint64_t a1)
{
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v24 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v22 = *(v6 - 8);
  v23 = v6;
  __chkstk_darwin(v6);
  v8 = v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchTime();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = v21 - v14;
  v21[1] = *(v1 + 40);
  static DispatchTime.now()();
  if (qword_100832B48 != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for DispatchTimeInterval();
  sub_10003170C(v16, qword_100833C40);
  + infix(_:_:)();
  v17 = *(v10 + 8);
  v17(v13, v9);
  v18 = swift_allocObject();
  *(v18 + 16) = v1;
  *(v18 + 24) = a1;
  aBlock[4] = sub_10003177C;
  aBlock[5] = v18;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100503A7C;
  aBlock[3] = &unk_1007FD770;
  v19 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v25 = _swiftEmptyArrayStorage;
  sub_1000317EC(&unk_1008341E0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100007224(&qword_100848A40, &unk_1006BF8C0);
  sub_100031834();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
  _Block_release(v19);
  (*(v24 + 8))(v5, v3);
  (*(v22 + 8))(v8, v23);
  v17(v15, v9);
}

uint64_t sub_10002B194(uint64_t a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  result = __chkstk_darwin(v2);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    swift_errorRetain();
    defaultLogger()();
    swift_errorRetain();
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v15 = v10;
      *v9 = 136446210;
      swift_getErrorValue();
      v11 = Error.localizedDescription.getter();
      v13 = sub_100141FE4(v11, v12, &v15);

      *(v9 + 4) = v13;
      _os_log_impl(&_mh_execute_header, v7, v8, "Unable to warm up uploads CloudKit container due to error %{public}s", v9, 0xCu);
      sub_10000BB78(v10);
    }

    else
    {
    }

    return (*(v3 + 8))(v6, v2);
  }

  return result;
}

uint64_t sub_10002B384(void (*a1)(void), void *a2, uint64_t a3, unint64_t a4, uint64_t a5, int a6, char a7, int a8)
{
  v226 = a8;
  LOBYTE(v8) = a7;
  v235 = a6;
  v227 = a5;
  v257 = a4;
  v236 = a1;
  v213 = type metadata accessor for UploadsCloudContainer.AnalyticsMetadata(0);
  v211 = *(v213 - 8);
  v11 = __chkstk_darwin(v213);
  v214 = &v198 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v212 = &v198 - v13;
  v14 = sub_100007224(&unk_100849400, &unk_1006BFBB0);
  __chkstk_darwin(v14 - 8);
  v241 = &v198 - v15;
  v16 = sub_100007224(&unk_100834140, &qword_1006DC180);
  v222 = *(v16 - 8);
  v17 = __chkstk_darwin(v16 - 8);
  v234 = &v198 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v223 = v18;
  __chkstk_darwin(v17);
  v240 = &v198 - v19;
  v243 = type metadata accessor for Date();
  v231 = *(v243 - 8);
  v20 = __chkstk_darwin(v243);
  v224 = &v198 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __chkstk_darwin(v20);
  v229 = &v198 - v23;
  v221 = v24;
  __chkstk_darwin(v22);
  v239 = &v198 - v25;
  v26 = sub_100007224(&unk_100844540, &unk_1006BFBC0);
  __chkstk_darwin(v26 - 8);
  v252 = &v198 - v27;
  v253 = type metadata accessor for URL();
  v28 = *(v253 - 8);
  v29 = __chkstk_darwin(v253);
  v242 = &v198 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v32 = &v198 - v31;
  v33 = type metadata accessor for DIPError.Code();
  v34 = *(v33 - 8);
  __chkstk_darwin(v33);
  v36 = &v198 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v254 = type metadata accessor for Logger();
  v233 = *(v254 - 8);
  v37 = __chkstk_darwin(v254);
  v238 = &v198 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = __chkstk_darwin(v37);
  v218 = &v198 - v40;
  v41 = __chkstk_darwin(v39);
  v228 = &v198 - v42;
  v43 = __chkstk_darwin(v41);
  v45 = &v198 - v44;
  v46 = __chkstk_darwin(v43);
  v245 = &v198 - v47;
  v48 = __chkstk_darwin(v46);
  v237 = &v198 - v49;
  v50 = __chkstk_darwin(v48);
  v217 = &v198 - v51;
  __chkstk_darwin(v50);
  v53 = &v198 - v52;
  v225 = a3;
  sub_10000BBC4(a3, &v262, &qword_100834128, &unk_1006DDA60);
  v256 = v32;
  if (!v263)
  {
    sub_10000BE18(&v262, &qword_100834128, &unk_1006DDA60);
LABEL_8:
    v61 = swift_allocObject();
    v232 = v61;
    *(v61 + 16) = _swiftEmptyArrayStorage;
    v62 = (v61 + 16);
    v63 = v257;
    v207 = v257 >> 62;
    if (v257 >> 62)
    {
      goto LABEL_102;
    }

    v64 = *((v257 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_10:
    v219 = a2;
    v258 = v45;
    v259 = v64;
    if (v64)
    {
      v65 = 0;
      v66 = v63 & 0xC000000000000001;
      a2 = (v63 & 0xFFFFFFFFFFFFFF8);
      do
      {
        if (v66)
        {
          v32 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          v45 = (v65 + 1);
          if (__OFADD__(v65, 1))
          {
LABEL_99:
            __break(1u);
LABEL_100:
            __break(1u);
LABEL_101:
            __break(1u);
LABEL_102:
            v64 = _CocoaArrayWrapper.endIndex.getter();
            goto LABEL_10;
          }
        }

        else
        {
          if (v65 >= a2[2])
          {
            goto LABEL_100;
          }

          v32 = *(v63 + 8 * v65 + 32);

          v45 = (v65 + 1);
          if (__OFADD__(v65, 1))
          {
            goto LABEL_99;
          }
        }

        v67 = sub_10002FA7C(v32);
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((*v62 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v62 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v260 = *((*v62 & 0xFFFFFFFFFFFFFF8) + 0x10);
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

        ++v65;
        v68 = v45 == v259;
        v63 = v257;
        v45 = v258;
        v32 = v256;
      }

      while (!v68);
    }

    v69 = [objc_allocWithZone(CKOperationConfiguration) init];
    v70 = v69;
    if (v235)
    {
      v71 = 25;
    }

    else
    {
      v71 = 17;
    }

    [v69 setQualityOfService:{v71, v198, v199}];
    v208 = v70;
    [v70 setAllowsCellularAccess:v8 & 1];
    v220 = os_transaction_create();
    v209 = sub_10003E0B4(_swiftEmptyArrayStorage);
    v244 = [objc_opt_self() defaultManager];
    v62 = v259;
    if (v259)
    {
      v8 = 0;
      v210 = 0;
      v251 = v63 & 0xC000000000000001;
      v246 = v63 & 0xFFFFFFFFFFFFFF8;
      v250 = (v28 + 48);
      v249 = (v28 + 32);
      v216 = NSFileCreationDate;
      v230 = (v231 + 56);
      v203 = (v231 + 48);
      v201 = (v231 + 32);
      v199 = NSFileSize;
      v198 = (v231 + 16);
      v200 = (v231 + 8);
      v248 = (v28 + 8);
      v255 = (v233 + 8);
      v215 = (v28 + 16);
      a2 = &unk_1006BFBC0;
      *&v72 = 136315138;
      v247 = v72;
      *&v72 = 136315650;
      v202 = v72;
      v73 = v253;
      while (1)
      {
        if (v251)
        {
          v28 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          v81 = v8 + 1;
          if (__OFADD__(v8, 1))
          {
            goto LABEL_98;
          }
        }

        else
        {
          if (v8 >= *(v246 + 16))
          {
            goto LABEL_101;
          }

          v28 = *(v63 + 8 * v8 + 32);

          v81 = v8 + 1;
          if (__OFADD__(v8, 1))
          {
LABEL_98:
            __break(1u);
            goto LABEL_99;
          }
        }

        v260 = v81;
        v82 = OBJC_IVAR____TtC8coreidvd11UploadAsset_assetFileURL;
        swift_beginAccess();
        v83 = v28 + v82;
        v84 = v252;
        sub_10000BBC4(v83, v252, &unk_100844540, &unk_1006BFBC0);
        if ((*v250)(v84, 1, v73) != 1)
        {
          break;
        }

        sub_10000BE18(v84, &unk_100844540, &unk_1006BFBC0);
        defaultLogger()();

        v85 = Logger.logObject.getter();
        v86 = static os_log_type_t.debug.getter();

        if (!os_log_type_enabled(v85, v86))
        {

          (*v255)(v45, v254);
          v73 = v253;
          goto LABEL_61;
        }

        v74 = swift_slowAlloc();
        v75 = swift_slowAlloc();
        *&v264 = v75;
        *v74 = v247;
        v76 = *(v28 + 16);
        v77 = *(v28 + 24);

        v78 = sub_100141FE4(v76, v77, &v264);
        v45 = v258;

        *(v74 + 4) = v78;
        v79 = v259;
        _os_log_impl(&_mh_execute_header, v85, v86, "No file url is available for asset %s", v74, 0xCu);
        sub_10000BB78(v75);
        v63 = v257;

        v32 = v256;

        v62 = v79;
        (*v255)(v45, v254);
        v73 = v253;
LABEL_29:
        a2 = &unk_1006BFBC0;
        v80 = v260;
LABEL_30:
        ++v8;
        if (v80 == v62)
        {
          goto LABEL_83;
        }
      }

      (*v249)(v32, v84, v73);
      v87 = *(v28 + 48);
      if (v87 == 5)
      {
        v88 = v245;
        defaultLogger()();

        v89 = Logger.logObject.getter();
        v90 = static os_log_type_t.debug.getter();

        if (!os_log_type_enabled(v89, v90))
        {

          (*v255)(v88, v254);
          v109 = *v248;
          goto LABEL_59;
        }

        v91 = swift_slowAlloc();
        v92 = swift_slowAlloc();
        *&v264 = v92;
        *v91 = v247;
        v93 = *(v28 + 16);
        v94 = *(v28 + 24);

        v95 = sub_100141FE4(v93, v94, &v264);

        *(v91 + 4) = v95;
        v96 = v259;
        _os_log_impl(&_mh_execute_header, v89, v90, "No asset type is available for asset %s", v91, 0xCu);
        sub_10000BB78(v92);
        v63 = v257;

        v32 = v256;

        v62 = v96;
        (*v255)(v88, v254);
        v97 = *v248;
        goto LABEL_53;
      }

      URL.path.getter();
      v98 = v32;
      v99 = String._bridgeToObjectiveC()();

      *&v264 = 0;
      v100 = [v244 attributesOfItemAtPath:v99 error:{&v264, v198, v199}];

      v101 = v264;
      if (!v100)
      {
        v119 = v264;
        _convertNSErrorToError(_:)();

        swift_willThrow();
        v120 = v238;
        defaultLogger()();
        v121 = v242;
        v122 = v253;
        (*v215)(v242, v98, v253);

        swift_errorRetain();
        v123 = Logger.logObject.getter();
        v124 = static os_log_type_t.debug.getter();

        if (!os_log_type_enabled(v123, v124))
        {

          v28 = *v248;
          (*v248)(v121, v122);
          (*v255)(v120, v254);
          (v28)(v98, v122);
          v63 = v257;
          v73 = v122;
          v32 = v98;
          goto LABEL_60;
        }

        v125 = swift_slowAlloc();
        v206 = swift_slowAlloc();
        *&v264 = v206;
        *v125 = v202;
        v205 = v124;
        v126 = *(v28 + 16);
        v127 = *(v28 + 24);

        v128 = sub_100141FE4(v126, v127, &v264);

        *(v125 + 4) = v128;
        *(v125 + 12) = 2080;
        v129 = URL.path.getter();
        v131 = v130;
        v132 = *v248;
        v204 = v123;
        v132(v242, v122);
        v133 = sub_100141FE4(v129, v131, &v264);

        *(v125 + 14) = v133;
        *(v125 + 22) = 2080;
        swift_getErrorValue();
        v134 = Error.localizedDescription.getter();
        v136 = sub_100141FE4(v134, v135, &v264);

        *(v125 + 24) = v136;
        v137 = v204;
        _os_log_impl(&_mh_execute_header, v204, v205, "Skipping analytics because no attributes are available for %s at url %s, error %s", v125, 0x20u);
        swift_arrayDestroy();

        v62 = v259;

        (*v255)(v238, v254);
        v32 = v256;
        v132(v256, v122);
        v63 = v257;
        v73 = v122;
        goto LABEL_54;
      }

      type metadata accessor for FileAttributeKey(0);
      sub_1000317EC(&unk_1008341B0, type metadata accessor for FileAttributeKey, &unk_1006BF3B0);
      v102 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
      v103 = v101;

      if (*(v102 + 16) && (v104 = sub_10004062C(), (v105 & 1) != 0))
      {
        sub_10001F2EC(*(v102 + 56) + 32 * v104, &v264);
        v106 = v241;
        v107 = v243;
        v108 = swift_dynamicCast();
        (*v230)(v106, v108 ^ 1u, 1, v107);
        if ((*v203)(v106, 1, v107) != 1)
        {
          (*v201)(v229, v106, v107);
          if (*(v102 + 16) && (v138 = sub_10004062C(), (v139 & 1) != 0))
          {
            sub_10001F2EC(*(v102 + 56) + 32 * v138, &v264);

            sub_10001F8D4(0, &qword_100833A50, NSNumber_ptr);
            if (swift_dynamicCast())
            {
              v140 = v261;
              v141 = [v261 unsignedLongLongValue];
              v142 = __CFADD__(v210, v141);
              v210 += v141;
              if (v142)
              {
                goto LABEL_105;
              }

              v143 = v141;
              v145 = *(v28 + 16);
              v144 = *(v28 + 24);
              v146 = v213;
              v147 = v212;
              (*v198)(&v212[*(v213 + 20)], v229, v243);
              *v147 = v87;
              *&v147[*(v146 + 24)] = v143;
              sub_1000305E8(v147, v214);

              v148 = v209;
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              *&v264 = v148;
              v150 = sub_10003ADCC(v145, v144);
              v152 = *(v148 + 16);
              v153 = (v151 & 1) == 0;
              v154 = __OFADD__(v152, v153);
              v155 = v152 + v153;
              if (v154)
              {
                goto LABEL_106;
              }

              v156 = v151;
              v73 = v253;
              if (*(v148 + 24) >= v155)
              {
                if (isUniquelyReferenced_nonNull_native)
                {
                  goto LABEL_76;
                }

                v168 = v150;
                sub_10016FDA8();
                v150 = v168;
                v45 = v258;
                if ((v156 & 1) == 0)
                {
                  goto LABEL_79;
                }

LABEL_77:
                v167 = v150;

                v209 = v264;
                sub_10003064C(v214, *(v264 + 56) + *(v211 + 72) * v167);

                (*v200)(v229, v243);
                v32 = v256;
                (*v248)(v256, v73);
              }

              else
              {
                sub_100166DEC(v155, isUniquelyReferenced_nonNull_native);
                v150 = sub_10003ADCC(v145, v144);
                if ((v156 & 1) != (v157 & 1))
                {
                  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
                  __break(1u);
                  return result;
                }

LABEL_76:
                v45 = v258;
                if (v156)
                {
                  goto LABEL_77;
                }

LABEL_79:
                v169 = v264;
                *(v264 + 8 * (v150 >> 6) + 64) |= 1 << v150;
                v170 = (v169[6] + 16 * v150);
                *v170 = v145;
                v170[1] = v144;
                sub_1000305E8(v214, v169[7] + *(v211 + 72) * v150);

                (*v200)(v229, v243);
                v32 = v256;
                (*v248)(v256, v73);
                v171 = v169[2];
                v154 = __OFADD__(v171, 1);
                v172 = v171 + 1;
                if (v154)
                {
                  goto LABEL_107;
                }

                v209 = v169;
                v169[2] = v172;
              }

              v63 = v257;
              v62 = v259;
              v80 = v260;
              a2 = &unk_1006BFBC0;
              goto LABEL_30;
            }
          }

          else
          {
          }

          v158 = v217;
          defaultLogger()();

          v159 = Logger.logObject.getter();
          v160 = static os_log_type_t.debug.getter();

          if (!os_log_type_enabled(v159, v160))
          {

            (*v255)(v158, v254);
            (*v200)(v229, v243);
LABEL_58:
            v109 = *v248;
            v32 = v256;
LABEL_59:
            v73 = v253;
            v109(v32, v253);
LABEL_60:
            v45 = v258;
LABEL_61:
            a2 = &unk_1006BFBC0;
            v62 = v259;
            v80 = v260;
            goto LABEL_30;
          }

          v161 = swift_slowAlloc();
          v162 = swift_slowAlloc();
          *&v264 = v162;
          *v161 = v247;
          v163 = *(v28 + 16);
          v164 = *(v28 + 24);

          v165 = sub_100141FE4(v163, v164, &v264);

          *(v161 + 4) = v165;
          v166 = v259;
          _os_log_impl(&_mh_execute_header, v159, v160, "No file size available for asset %s", v161, 0xCu);
          sub_10000BB78(v162);
          v63 = v257;

          v62 = v166;
          (*v255)(v158, v254);
          (*v200)(v229, v243);
          goto LABEL_52;
        }
      }

      else
      {

        v106 = v241;
        (*v230)(v241, 1, 1, v243);
      }

      sub_10000BE18(v106, &unk_100849400, &unk_1006BFBB0);
      v110 = v237;
      defaultLogger()();

      v111 = Logger.logObject.getter();
      v112 = static os_log_type_t.debug.getter();

      if (!os_log_type_enabled(v111, v112))
      {

        (*v255)(v110, v254);
        goto LABEL_58;
      }

      v113 = swift_slowAlloc();
      v114 = swift_slowAlloc();
      *&v264 = v114;
      *v113 = v247;
      v115 = *(v28 + 16);
      v116 = *(v28 + 24);

      v117 = sub_100141FE4(v115, v116, &v264);

      *(v113 + 4) = v117;
      v118 = v259;
      _os_log_impl(&_mh_execute_header, v111, v112, "No attributes available for asset %s", v113, 0xCu);
      sub_10000BB78(v114);
      v63 = v257;

      v62 = v118;
      (*v255)(v110, v254);
LABEL_52:
      v97 = *v248;
      v32 = v256;
LABEL_53:
      v73 = v253;
      v97(v32, v253);
LABEL_54:
      v45 = v258;
      goto LABEL_29;
    }

    v210 = 0;
LABEL_83:
    Date.init()();
    type metadata accessor for NetworkMonitor();
    static NetworkMonitor.shared.getter();
    NetworkMonitor.currentPath.getter();

    v173 = [objc_opt_self() standardUserDefaults];
    v174._countAndFlagsBits = static DaemonInternalDefaultsKeys.forceCloudkitPartialRecordsFailure.getter();
    v175 = NSUserDefaults.internalBool(forKey:)(v174);

    v176 = v243;
    if (v175)
    {
      defaultLogger()();
      v177 = Logger.logObject.getter();
      v178 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v177, v178))
      {
        v179 = swift_slowAlloc();
        *v179 = 0;
        _os_log_impl(&_mh_execute_header, v177, v178, "forceCloudkitPartialRecordsFailure internal setting enabled", v179, 2u);
      }

      v180 = *(v233 + 8);
      v180(v228, v254);
      if (!v207)
      {
        if (*((v63 & 0xFFFFFFFFFFFFFF8) + 0x10) < 2)
        {
          goto LABEL_97;
        }

LABEL_90:
        defaultLogger()();
        v181 = Logger.logObject.getter();
        v182 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v181, v182))
        {
          v183 = swift_slowAlloc();
          *v183 = 0;
          _os_log_impl(&_mh_execute_header, v181, v182, "Number of assets are greater than 1, will remove the first item from the disk to simulate partial failure.", v183, 2u);
        }

        v180(v218, v254);
        if (v259)
        {
          if ((v63 & 0xC000000000000001) != 0)
          {
            specialized _ArrayBuffer._getElementSlowPath(_:)();
            sub_100029A54();
          }

          else
          {
            if (!*((v63 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              __break(1u);
LABEL_105:
              __break(1u);
LABEL_106:
              __break(1u);
LABEL_107:
              __break(1u);
            }

            sub_100029A54();
          }
        }

        goto LABEL_97;
      }

      if (_CocoaArrayWrapper.endIndex.getter() >= 2)
      {
        goto LABEL_90;
      }
    }

LABEL_97:
    v260 = *(v232 + 16);
    sub_10000BBC4(v225, &v264, &qword_100834128, &unk_1006DDA60);
    sub_10000BBC4(v240, v234, &unk_100834140, &qword_1006DC180);
    v184 = v231;
    v185 = v224;
    (*(v231 + 16))(v224, v239, v176);
    v186 = (*(v222 + 80) + 104) & ~*(v222 + 80);
    v187 = v63;
    v188 = (v223 + *(v184 + 80) + v186) & ~*(v184 + 80);
    v259 = (v188 + v221 + 7) & 0xFFFFFFFFFFFFFFF8;
    v189 = (v188 + v221 + 23) & 0xFFFFFFFFFFFFFFF8;
    v190 = swift_allocObject();
    *(v190 + 16) = v220;
    v191 = v265;
    *(v190 + 24) = v264;
    *(v190 + 40) = v191;
    v192 = v236;
    *(v190 + 56) = v266;
    *(v190 + 64) = v192;
    v193 = v227;
    *(v190 + 72) = v219;
    *(v190 + 80) = v193;
    *(v190 + 88) = v187;
    *(v190 + 96) = v232;
    sub_10003041C(v234, v190 + v186);
    (*(v184 + 32))(v190 + v188, v185, v176);
    v194 = v260;
    v195 = v190 + v259;
    *v195 = v209;
    *(v195 + 8) = v235 & 1;
    v196 = v190 + v189;
    *v196 = v210;
    *(v196 + 8) = v226 & 1;

    swift_unknownObjectRetain();

    v197 = v208;
    sub_10001B6FC(v194, 5, v208, sub_10003048C, v190);
    swift_unknownObjectRelease();

    sub_10000BE18(v240, &unk_100834140, &qword_1006DC180);
    (*(v184 + 8))(v239, v176);
  }

  sub_10001F358(&v262, &v264);
  v54 = *(*sub_10000BA08(&v264, *(&v265 + 1)) + 16);
  os_unfair_lock_lock((v54 + 20));
  v55 = *(v54 + 16);
  os_unfair_lock_unlock((v54 + 20));
  if (v55 != 1)
  {
    sub_10000BB78(&v264);
    v32 = v256;
    goto LABEL_8;
  }

  defaultLogger()();
  v56 = Logger.logObject.getter();
  v57 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v56, v57))
  {
    v58 = swift_slowAlloc();
    *v58 = 0;
    _os_log_impl(&_mh_execute_header, v56, v57, "saveAssets: cancelToken.isCanceled is true, completing with canceled error code.", v58, 2u);
  }

  (*(v233 + 8))(v53, v254);
  (*(v34 + 104))(v36, enum case for DIPError.Code.cloudkitCancelRequestedByClient(_:), v33);
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_1000317EC(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
  v59 = swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  v236(v59);

  return sub_10000BB78(&v264);
}

uint64_t sub_10002D44C(unint64_t a1, void (*a2)(char *, uint64_t), uint64_t a3, _BYTE *a4, void (*a5)(uint64_t), unint64_t a6, uint64_t a7, unint64_t a8, unint64_t a9, uint64_t a10, unint64_t a11, uint64_t a12, unsigned __int8 a13, uint64_t a14, char a15)
{
  v167 = a2;
  v168 = a8;
  v155 = type metadata accessor for UploadsCloudContainer.AnalyticsMetadata(0);
  v154 = *(v155 - 1);
  v20 = __chkstk_darwin(v155);
  v152 = &v131 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v23 = &v131 - v22;
  v24 = sub_100007224(&unk_100834140, &qword_1006DC180);
  __chkstk_darwin(v24 - 8);
  v26 = &v131 - v25;
  v165 = type metadata accessor for DIPError();
  v27 = *(v165 - 8);
  __chkstk_darwin(v165);
  v162 = &v131 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v163 = type metadata accessor for DIPError.Code();
  v138 = *(v163 - 8);
  __chkstk_darwin(v163);
  v164 = &v131 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v169 = type metadata accessor for Logger();
  v142 = *(v169 - 8);
  v30 = __chkstk_darwin(v169);
  v157 = &v131 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = __chkstk_darwin(v30);
  v34 = &v131 - v33;
  v35 = __chkstk_darwin(v32);
  v161 = &v131 - v36;
  __chkstk_darwin(v35);
  v38 = &v131 - v37;
  v140 = type metadata accessor for Date();
  v139 = *(v140 - 8);
  __chkstk_darwin(v140);
  v153 = &v131 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  Date.init()();
  v166 = a1;
  v141 = a5;
  if ((~a1 & 0xF000000000000007) == 0)
  {
    v156 = v23;
    v40 = a9;
    defaultLogger()();

    v41 = Logger.logObject.getter();
    v42 = static os_log_type_t.debug.getter();

    v43 = os_log_type_enabled(v41, v42);
    v44 = &unk_1006BF000;
    v137 = a6;
    v136 = v27;
    v149 = a9;
    if (v43)
    {
      v45 = swift_slowAlloc();
      a6 = swift_slowAlloc();
      v172[0] = a6;
      *v45 = 136315138;
      swift_beginAccess();
      sub_10001F8D4(0, &unk_1008341C0, CKRecord_ptr);
      v166 = a11;

      v46 = Array.description.getter();
      v48 = v47;

      v49 = sub_100141FE4(v46, v48, v172);
      v44 = &unk_1006BF000;

      *(v45 + 4) = v49;
      v40 = v149;
      _os_log_impl(&_mh_execute_header, v41, v42, "Successfully saved asset records %s to CloudKit", v45, 0xCu);
      sub_10000BB78(a6);
    }

    v167 = *(v142 + 8);
    v167(v34, v169);
    sub_10000BBC4(a10, v26, &unk_100834140, &qword_1006DC180);
    v147 = sub_10059D288(v26);
    v151 = v50;
    v146 = sub_10059D5E0(v26);
    v150 = v51;
    sub_10000BE18(v26, &unk_100834140, &qword_1006DC180);
    Date.timeIntervalSince(_:)();
    swift_beginAccess();
    v52 = *(v40 + 16);
    if (v52 >> 62)
    {
LABEL_72:
      v53 = _CocoaArrayWrapper.endIndex.getter();
      if (v53)
      {
        goto LABEL_6;
      }
    }

    else
    {
      v53 = *((v52 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v53)
      {
LABEL_6:
        if (v53 >= 1)
        {
          v145 = a14;
          v27 = a12;
          v166 = v52 & 0xC000000000000001;
          v144 = a13;

          swift_beginAccess();
          v54 = 0;
          v135 = "ror as non-fatal";
          v134 = "ry video to CloudKit.";
          v133 = "s video to Cloudkit.";
          v132 = "Uploaded selfie to Cloudkit.";
          v131 = "Uploaded ID front to Cloudkit.";
          v160 = (v142 + 8);
          *&v55 = *(v44 + 197);
          v148 = v55;
          v143 = a15 & 1;
          a4 = v156;
          v56 = v157;
          v159 = v52;
          v158 = v53;
          while (1)
          {
            v57 = v166 ? specialized _ArrayBuffer._getElementSlowPath(_:)() : *(v52 + 8 * v54 + 32);
            v38 = v57;
            v58 = [v57 recordID];
            a6 = [v58 recordName];

            v59 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v61 = v60;

            if (!*(a12 + 16))
            {
              break;
            }

            v62 = sub_10003ADCC(v59, v61);
            a6 = v63;

            if ((a6 & 1) == 0)
            {
              goto LABEL_21;
            }

            v64 = v152;
            sub_1000306B0(*(a12 + 56) + *(v154 + 72) * v62, v152);
            sub_1000305E8(v64, a4);
            v65 = *a4;
            if (v65 <= 1)
            {
              if (*a4)
              {
                v78 = 0xD00000000000001DLL;
                v79 = v131 | 0x8000000000000000;
                v80 = 0x3133306264373835;
              }

              else
              {
                v78 = 0xD00000000000001ELL;
                v79 = v132 | 0x8000000000000000;
                v80 = 0x3639333965343934;
              }

              v81 = 0xE800000000000000;
              logMilestone(tag:description:)(*&v80, *&v78);
              a6 = 0x656D75636F446469;
            }

            else if (v65 == 2)
            {
              v82._countAndFlagsBits = 0xD00000000000001CLL;
              v82._object = (v133 | 0x8000000000000000);
              v83._countAndFlagsBits = 0x3730303166656435;
              v83._object = 0xE800000000000000;
              logMilestone(tag:description:)(v83, v82);
              a6 = 0x6569666C6573;
            }

            else if (v65 == 3)
            {
              v66._object = (v134 | 0x8000000000000000);
              v67._countAndFlagsBits = 0x6337343733663332;
              v67._object = 0xE800000000000000;
              v66._countAndFlagsBits = 0xD000000000000024;
              logMilestone(tag:description:)(v67, v66);
              a6 = 0x7373656E6576696CLL;
            }

            else
            {
              v84._countAndFlagsBits = 0xD000000000000025;
              v84._object = (v135 | 0x8000000000000000);
              v85._countAndFlagsBits = 0x6136383637396164;
              v85._object = 0xE800000000000000;
              logMilestone(tag:description:)(v85, v84);
              a6 = 0x7261696C69787561;
            }

            Date.timeIntervalSince(_:)();
            if (*(v149 + 16) >> 62)
            {
              a7 = _CocoaArrayWrapper.endIndex.getter();
              type metadata accessor for DaemonAnalytics();
              if (a7 < 0)
              {
                __break(1u);
                goto LABEL_34;
              }
            }

            else
            {
              type metadata accessor for DaemonAnalytics();
            }

            v52 = v159;
            LOBYTE(v130) = v143;
            v129 = v150;
            v128 = v146;
            static DaemonAnalytics.sendUploadedAssetToCloudKitEvent(assetType:isUserInitiated:fileSizeBytes:batchUploadDurationSeconds:metaUploadDurationSeconds:batchSizeBytes:batchAssetCount:networkType:networkCost:isScheduledUpload:)();

            sub_100030714(a4);
            v53 = v158;
LABEL_10:
            if (v53 == ++v54)
            {
              goto LABEL_74;
            }
          }

LABEL_21:
          defaultLogger()();
          v68 = v38;
          v69 = Logger.logObject.getter();
          v70 = static os_log_type_t.debug.getter();

          if (os_log_type_enabled(v69, v70))
          {
            a6 = swift_slowAlloc();
            v71 = swift_slowAlloc();
            v173 = v71;
            *a6 = v148;
            v72 = [v68 recordID];
            v73 = [v72 recordName];

            v74 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v76 = v75;

            v77 = sub_100141FE4(v74, v76, &v173);
            v56 = v157;
            a4 = v156;

            *(a6 + 4) = v77;
            v52 = v159;
            _os_log_impl(&_mh_execute_header, v69, v70, "Not recording analytics for %s because no metadat is available", a6, 0xCu);
            sub_10000BB78(v71);
            v53 = v158;
          }

          else
          {
          }

          v167(v56, v169);
          goto LABEL_10;
        }

        __break(1u);
        goto LABEL_87;
      }
    }

LABEL_74:

    v123 = v168;
    if (v168 >> 62)
    {
      v126 = _CocoaArrayWrapper.endIndex.getter();
      v123 = v168;
      v124 = v126;
    }

    else
    {
      v124 = *((v168 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v124)
    {
      if (v124 < 1)
      {
LABEL_87:
        __break(1u);
        goto LABEL_88;
      }

      v125 = 0;
      v166 = v123 & 0xC000000000000001;
      v160 = "Error saving asset to CloudKit";
      v159 = 0x80000001006FBE50;
      LODWORD(v158) = enum case for DIPError.Code.internalError(_:);
      v157 = (v138 + 104);
      v156 = (v136 + 16);
      v155 = "Operation canceled by client.";
      v154 = v142 + 8;
      do
      {
        if (v166)
        {
          specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
        }

        sub_100029A54();

        ++v125;
      }

      while (v124 != v125);
    }

    v141(0);
    return (*(v139 + 8))(v153, v140);
  }

LABEL_34:
  sub_10000BBC4(a4, &v170, &qword_100834128, &unk_1006DDA60);
  if (!v171)
  {
    v87 = v166;
    sub_100030770(v166, v167);
    sub_10000BE18(&v170, &qword_100834128, &unk_1006DDA60);
    v94 = v168;
    if (v87 < 0)
    {
      goto LABEL_42;
    }

LABEL_40:
    sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
    v95 = (sub_100007224(&qword_1008341D0, &unk_1006BF8D0) - 8);
    v96 = (*(*v95 + 80) + 32) & ~*(*v95 + 80);
    v97 = swift_allocObject();
    *(v97 + 16) = xmmword_1006BF520;
    v98 = v97 + v96;
    v99 = (v98 + v95[14]);
    v100 = enum case for DIPError.PropertyKey.cloudContainerName(_:);
    v101 = type metadata accessor for DIPError.PropertyKey();
    (*(*(v101 - 8) + 104))(v98, v100, v101);
    v103 = *(a7 + OBJC_IVAR____TtC8coreidvd21UploadsCloudContainer_name);
    v102 = *(a7 + OBJC_IVAR____TtC8coreidvd21UploadsCloudContainer_name + 8);
    v99[3] = &type metadata for String;
    v99[4] = &protocol witness table for String;
    *v99 = v103;
    v99[1] = v102;

    sub_10003C9C0(v97);
    swift_setDeallocating();
    sub_10000BE18(v98, &qword_1008341D0, &unk_1006BF8D0);
    swift_deallocClassInstance();
    (*(v138 + 104))(v164, enum case for DIPError.Code.internalError(_:), v163);
    v104 = v167;
    sub_100030770(v87, v167);
    v129 = 0x80000001006FBE50;
    v130 = 402;
    v128 = 0xD00000000000005CLL;
    v105 = v162;
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    v106._countAndFlagsBits = 0xD000000000000015;
    v107._countAndFlagsBits = 0x3031323638313933;
    v106._object = 0x80000001006FC040;
    v107._object = 0xE800000000000000;
    logMilestone(tag:description:)(v107, v106);
    sub_1000317EC(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    v108 = v165;
    v109 = swift_allocError();
    (*(v27 + 16))(v110, v105, v108);
    v141(v109);

    sub_1000307E0(v87, v104);
    (*(v27 + 8))(v105, v108);
    return (*(v139 + 8))(v153, v140);
  }

  sub_10001F358(&v170, v172);
  v86 = *(*sub_10000BA08(v172, v172[3]) + 16);
  v87 = v166;
  sub_100030770(v166, v167);
  os_unfair_lock_lock((v86 + 20));
  v88 = *(v86 + 16);
  os_unfair_lock_unlock((v86 + 20));
  if (v88)
  {
    defaultLogger()();
    v89 = Logger.logObject.getter();
    v90 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v89, v90))
    {
      v91 = swift_slowAlloc();
      *v91 = 0;
      _os_log_impl(&_mh_execute_header, v89, v90, "saveAssets: Save failed but cancelToken.isCanceled is true, completing with canceled error code.", v91, 2u);
    }

    (*(v142 + 8))(v38, v169);
    (*(v138 + 104))(v164, enum case for DIPError.Code.cloudkitCancelRequestedByClient(_:), v163);
    sub_1000402AC(_swiftEmptyArrayStorage);
    sub_1000317EC(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    v92 = swift_allocError();
    v129 = 0x80000001006FBE50;
    v130 = 395;
    v128 = 0xD00000000000005CLL;
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    v141(v92);

    sub_1000307E0(v166, v167);
    (*(v139 + 8))(v153, v140);
    return sub_10000BB78(v172);
  }

  sub_10000BB78(v172);
  v94 = v168;
  if ((v87 & 0x8000000000000000) == 0)
  {
    goto LABEL_40;
  }

LABEL_42:
  *&v170 = _swiftEmptyArrayStorage;
  if (v94 >> 62)
  {
LABEL_88:
    v111 = _CocoaArrayWrapper.endIndex.getter();
    goto LABEL_44;
  }

  v111 = *((v94 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_44:
  v44 = v141;
  v137 = a6;
  swift_errorRetain();
  if (!v111)
  {
    v52 = 0;
    v119 = _swiftEmptyArrayStorage;
    if ((_swiftEmptyArrayStorage & 0x8000000000000000) != 0)
    {
      goto LABEL_89;
    }

    goto LABEL_59;
  }

  a6 = 0;
  v52 = 0;
  v112 = v168;
  v113 = v168 & 0xC000000000000001;
  v44 = (v168 & 0xFFFFFFFFFFFFFF8);
  while (!v113)
  {
    if (a6 >= *(v44 + 2))
    {
      __break(1u);
LABEL_71:
      __break(1u);
      goto LABEL_72;
    }

    v114 = *(v112 + 8 * a6 + 32);

    v116 = a6 + 1;
    if (__OFADD__(a6, 1))
    {
      goto LABEL_55;
    }

LABEL_51:
    v117 = *(v114 + 24);
    v172[0] = *(v114 + 16);
    v172[1] = v117;
    __chkstk_darwin(v115);
    v130 = v172;

    v118 = sub_10035C8E4(sub_1000307C0, &v128, v167);

    if (v118)
    {
    }

    else
    {
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
    }

    ++a6;
    v112 = v168;
    if (v116 == v111)
    {
      goto LABEL_56;
    }
  }

  v115 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  v114 = v115;
  v116 = a6 + 1;
  if (!__OFADD__(a6, 1))
  {
    goto LABEL_51;
  }

LABEL_55:
  __break(1u);
LABEL_56:
  v119 = v170;
  v44 = v141;
  if ((v170 & 0x8000000000000000) != 0)
  {
LABEL_89:
    v120 = _CocoaArrayWrapper.endIndex.getter();
    if (!v120)
    {
      goto LABEL_90;
    }

LABEL_61:
    a6 = 0;
    while (1)
    {
      if ((v119 & 0xC000000000000001) != 0)
      {
        specialized _ArrayBuffer._getElementSlowPath(_:)();
        v121 = a6 + 1;
        if (__OFADD__(a6, 1))
        {
          goto LABEL_69;
        }
      }

      else
      {
        if (a6 >= *(v119 + 16))
        {
          goto LABEL_71;
        }

        v121 = a6 + 1;
        if (__OFADD__(a6, 1))
        {
LABEL_69:
          __break(1u);

          (*(v138 + 104))(v164, enum case for DIPError.Code.internalError(_:), v163);
          swift_errorRetain();
          sub_1000402AC(_swiftEmptyArrayStorage);
          sub_1000317EC(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
          swift_allocError();
          v129 = 0x80000001006FBE50;
          v130 = 411;
          v128 = 0xD00000000000005CLL;
          DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
          v122 = v161;
          defaultLogger()();
          DIPRecordError(_:message:log:)();

          (*(v142 + 8))(v122, v169);

          goto LABEL_91;
        }
      }

      sub_100029A54();

      ++a6;
      if (v121 == v120)
      {
        goto LABEL_90;
      }
    }
  }

LABEL_59:
  if ((v119 & 0x4000000000000000) != 0)
  {
    goto LABEL_89;
  }

  v120 = *(v119 + 16);
  if (v120)
  {
    goto LABEL_61;
  }

LABEL_90:

LABEL_91:
  v127 = v166;
  swift_errorRetain();
  v44(v127 & 0x7FFFFFFFFFFFFFFFLL);

  sub_1000307E0(v127, v167);

  return (*(v139 + 8))(v153, v140);
}

uint64_t sub_10002ED64(uint64_t a1, void (*a2)(void), uint64_t a3)
{
  v6 = type metadata accessor for DIPError.Code();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DIPError();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1)
  {
    return (a2)(0);
  }

  v17 = a3;
  v18 = a2;
  (*(v7 + 104))(v9, enum case for DIPError.Code.internalError(_:), v6);
  swift_errorRetain();
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  sub_1000317EC(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
  v14 = swift_allocError();
  (*(v11 + 16))(v15, v13, v10);
  v18(v14);

  return (*(v11 + 8))(v13, v10);
}

uint64_t sub_10002F014(uint64_t a1, uint64_t a2, uint64_t a3, char a4, int a5, uint64_t a6)
{
  v22 = a5;
  v11 = sub_100007224(&qword_100834120, &unk_1006BFBA0);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v21[-v13];
  (*(v12 + 16))(&v21[-v13], a1, v11);
  v15 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v16 = swift_allocObject();
  (*(v12 + 32))(v16 + v15, v14, v11);
  sub_10000BBC4(a6, v23, &qword_100834128, &unk_1006DDA60);
  v17 = swift_allocObject();
  v18 = v23[1];
  *(v17 + 16) = v23[0];
  *(v17 + 32) = v18;
  *(v17 + 48) = v24;
  *(v17 + 56) = a3;
  *(v17 + 64) = a2;
  *(v17 + 72) = a4;
  *(v17 + 73) = v22;
  v19 = swift_allocObject();
  *(v19 + 16) = sub_10002F6E8;
  *(v19 + 24) = v16;

  sub_10000CCB8(3, sub_10002F7B4, v17, sub_10002F804, v19);
}

uint64_t sub_10002F244(uint64_t a1)
{
  if (a1)
  {
    swift_errorRetain();
    sub_100007224(&qword_100834120, &unk_1006BFBA0);
    return CheckedContinuation.resume(throwing:)();
  }

  else
  {
    sub_100007224(&qword_100834120, &unk_1006BFBA0);
    return CheckedContinuation.resume(returning:)();
  }
}

uint64_t sub_10002F2B8()
{
}

uint64_t sub_10002F328()
{
  sub_10001EBD4();

  return swift_deallocClassInstance();
}

uint64_t getEnumTagSinglePayload for UploadAsset.AssetType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for UploadAsset.AssetType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_10002F5B4()
{
  result = qword_100834118;
  if (!qword_100834118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100834118);
  }

  return result;
}

unint64_t sub_10002F608(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1007F8990, v2);

  if (v3 >= 5)
  {
    return 5;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_10002F654()
{
  v1 = sub_100007224(&qword_100834120, &unk_1006BFBA0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_10002F6E8(uint64_t a1)
{
  sub_100007224(&qword_100834120, &unk_1006BFBA0);

  return sub_10002F244(a1);
}

uint64_t sub_10002F764()
{
  if (*(v0 + 40))
  {
    sub_10000BB78((v0 + 16));
  }

  return _swift_deallocObject(v0, 75, 7);
}

uint64_t sub_10002F7CC()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10002F82C(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10002F864()
{

  return _swift_deallocObject(v0, 24, 7);
}

char *sub_10002F89C(Swift::UInt a1)
{
  if (qword_100832B58 != -1)
  {
    swift_once();
  }

  v2 = off_100833C58;
  os_unfair_lock_lock(off_100833C58 + 6);
  v3 = *(v2 + 2);
  if (!*(v3 + 16) || (v4 = sub_10003B2F0(a1), (v5 & 1) == 0))
  {
    os_unfair_lock_unlock(v2 + 6);
LABEL_8:
    os_unfair_lock_lock(v2 + 6);
    type metadata accessor for UploadsCloudContainer(0);
    swift_allocObject();
    v6 = sub_10002A86C(a1);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *(v2 + 2);
    *(v2 + 2) = 0x8000000000000000;
    sub_10016D25C(v6, a1, isUniquelyReferenced_nonNull_native);
    *(v2 + 2) = v9;
    os_unfair_lock_unlock(v2 + 6);
    return v6;
  }

  v6 = *(*(v3 + 56) + 8 * v4);

  os_unfair_lock_unlock(v2 + 6);
  if (!v6)
  {
    goto LABEL_8;
  }

  return v6;
}

id sub_10002F9BC()
{
  isa = Data._bridgeToObjectiveC()().super.isa;
  v6 = 0;
  v2 = [v0 initForReadingFromData:isa error:&v6];

  if (v2)
  {
    v3 = v6;
  }

  else
  {
    v4 = v6;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return v2;
}

unsigned __int8 *sub_10002FA7C(unsigned __int8 *a1)
{
  v2 = v1;
  v4 = sub_100007224(&unk_100844540, &unk_1006BFBC0);
  v5 = __chkstk_darwin(v4 - 8);
  v49 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v8 = &v39 - v7;
  v9 = type metadata accessor for URL();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DIPError.Code();
  v41 = *(v13 - 8);
  v42 = v13;
  __chkstk_darwin(v13);
  v43 = &v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *&a1[OBJC_IVAR____TtC8coreidvd11UploadAsset_systemData + 8];
  if (v15 >> 60 == 15)
  {
    v40 = v12;
    sub_10001F8D4(0, &unk_1008341C0, CKRecord_ptr);
    v16 = v10;
    v17 = objc_allocWithZone(CKRecordID);
    v18 = String._bridgeToObjectiveC()();
    v19 = v17;
    v10 = v16;
    v2 = v1;
    v20 = [v19 initWithRecordName:v18];

    v21._countAndFlagsBits = 0x315F7465737341;
    v21._object = 0xE700000000000000;
    isa = CKRecord.init(recordType:recordID:)(v21, v20).super.isa;
    goto LABEL_3;
  }

  v27 = *&a1[OBJC_IVAR____TtC8coreidvd11UploadAsset_systemData];
  v24 = objc_allocWithZone(NSKeyedUnarchiver);
  sub_10000B8B8(v27, v15);
  v28 = sub_10002F9BC();
  if (v1)
  {
LABEL_9:
    sub_10000BD94(v27, v15);
    return v24;
  }

  v24 = v28;
  isa = [objc_allocWithZone(CKRecord) initWithCoder:v28];
  if (!isa)
  {
    (*(v41 + 104))(v43, enum case for DIPError.Code.invalidStoredData(_:), v42);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1000317EC(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    goto LABEL_9;
  }

  v40 = v12;

  sub_10000BD94(v27, v15);
LABEL_3:
  v22 = OBJC_IVAR____TtC8coreidvd11UploadAsset_assetFileURL;
  swift_beginAccess();
  sub_10000BBC4(&a1[v22], v8, &unk_100844540, &unk_1006BFBC0);
  v23 = *(v10 + 48);
  if (v23(v8, 1, v9) == 1)
  {
    sub_10000BE18(v8, &unk_100844540, &unk_1006BFBC0);
    v8 = v49;
    v24 = a1;
    sub_1000285B8(v49);
    if (v2)
    {
LABEL_7:

      return v24;
    }

    v25 = v23(v8, 1, v9);
    v26 = v40;
    if (v25 == 1)
    {
      sub_10000BE18(v8, &unk_100844540, &unk_1006BFBC0);
      (*(v41 + 104))(v43, enum case for DIPError.Code.unexpectedDaemonState(_:), v42);
      v24 = sub_1000402AC(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_1000317EC(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
      swift_allocError();
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      swift_willThrow();
      goto LABEL_7;
    }
  }

  else
  {
    v26 = v40;
  }

  (*(v10 + 32))(v26, v8, v9);
  v29 = objc_allocWithZone(CKAsset);
  URL._bridgeToObjectiveC()(v30);
  v32 = v31;
  v33 = [v29 initWithFileURL:v31];

  v34 = v33;
  v24 = isa;
  CKRecord.subscript.setter();
  v35 = a1[48];
  if (v35 == 5)
  {
    (*(v10 + 8))(v26, v9);
  }

  else
  {
    if (a1[48] <= 1u)
    {
      if (a1[48])
      {
        v36 = 0xEE006B636142746ELL;
      }

      else
      {
        v36 = 0xEF746E6F7246746ELL;
      }

      v37 = 0x656D75636F446469;
    }

    else if (v35 == 2)
    {
      v36 = 0xE600000000000000;
      v37 = 0x6569666C6573;
    }

    else if (v35 == 3)
    {
      v36 = 0xED00006F65646956;
      v37 = 0x7373656E6576696CLL;
    }

    else
    {
      v36 = 0xEE006F6564695679;
      v37 = 0x7261696C69787561;
    }

    v47 = &type metadata for String;
    v48 = &protocol witness table for String;
    v45 = v37;
    v46 = v36;
    sub_10001F8D4(0, &unk_1008341C0, CKRecord_ptr);
    CKRecordKeyValueSetting.subscript.setter();

    (*(v10 + 8))(v26, v9);
  }

  return v24;
}

uint64_t sub_100030224()
{
  v1 = *(sub_100007224(&unk_100834140, &qword_1006DC180) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 104) & ~v2;
  v4 = *(v1 + 64);
  v5 = type metadata accessor for Date();
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v8 = *(v6 + 64);
  swift_unknownObjectRelease();
  if (*(v0 + 48))
  {
    sub_10000BB78((v0 + 24));
  }

  v9 = type metadata accessor for NWPath();
  v10 = *(v9 - 8);
  if (!(*(v10 + 48))(v0 + v3, 1, v9))
  {
    (*(v10 + 8))(v0 + v3, v9);
  }

  v11 = (v3 + v4 + v7) & ~v7;
  v12 = (v11 + v8 + 23) & 0xFFFFFFFFFFFFFFF8;
  (*(v6 + 8))(v0 + v11, v5);

  return _swift_deallocObject(v0, v12 + 9, v2 | v7 | 7);
}

uint64_t sub_10003041C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100007224(&unk_100834140, &qword_1006DC180);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10003048C(unint64_t a1, void (*a2)(char *, uint64_t))
{
  v5 = *(sub_100007224(&unk_100834140, &qword_1006DC180) - 8);
  v6 = (*(v5 + 80) + 104) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for Date() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = v9 + *(v8 + 64);
  return sub_10002D44C(a1, a2, *(v2 + 16), (v2 + 24), *(v2 + 64), *(v2 + 72), *(v2 + 80), *(v2 + 88), *(v2 + 96), v2 + v6, v2 + v9, *(v2 + ((v10 + 7) & 0xFFFFFFFFFFFFFFF8)), *(v2 + ((v10 + 7) & 0xFFFFFFFFFFFFFFF8) + 8), *(v2 + ((v10 + 23) & 0xFFFFFFFFFFFFFFF8)), *(v2 + ((v10 + 23) & 0xFFFFFFFFFFFFFFF8) + 8));
}

uint64_t sub_1000305E8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UploadsCloudContainer.AnalyticsMetadata(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10003064C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UploadsCloudContainer.AnalyticsMetadata(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000306B0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UploadsCloudContainer.AnalyticsMetadata(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100030714(uint64_t a1)
{
  v2 = type metadata accessor for UploadsCloudContainer.AnalyticsMetadata(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100030770(uint64_t a1, uint64_t a2)
{
  if (a1 < 0)
  {
    swift_errorRetain();
  }

  else
  {

    return swift_errorRetain();
  }
}

uint64_t sub_1000307E0(uint64_t result, uint64_t a2)
{
  if ((~result & 0xF000000000000007) != 0)
  {
    return sub_1000307F4(result, a2);
  }

  return result;
}

uint64_t sub_1000307F4(uint64_t a1, uint64_t a2)
{
  if (a1 < 0)
  {
  }

  else
  {
  }
}

void *sub_100030844(uint64_t a1)
{
  v145 = type metadata accessor for Logger();
  v2 = *(v145 - 8);
  v3 = __chkstk_darwin(v145);
  v141 = &v122 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __chkstk_darwin(v3);
  v7 = &v122 - v6;
  v8 = __chkstk_darwin(v5);
  v10 = &v122 - v9;
  __chkstk_darwin(v8);
  v129 = &v122 - v11;
  v12 = sub_100007224(&unk_100844540, &unk_1006BFBC0);
  v13 = __chkstk_darwin(v12 - 8);
  v128 = &v122 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v16 = &v122 - v15;
  v17 = type metadata accessor for URL();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v139 = &v122 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for ProofingSession.UploadAsset();
  v21 = __chkstk_darwin(v20);
  v22 = __chkstk_darwin(v21);
  v23 = __chkstk_darwin(v22);
  v127 = &v122 - v24;
  v25 = __chkstk_darwin(v23);
  __chkstk_darwin(v25);
  v31 = &v122 - v30;
  result = _swiftEmptyArrayStorage;
  v155 = _swiftEmptyArrayStorage;
  v33 = *(a1 + 16);
  if (v33)
  {
    v146 = v18;
    v147 = v2;
    v137 = v26;
    v132 = v29;
    v133 = v28;
    v142 = v17;
    v140 = v16;
    v123 = v10;
    v134 = v7;
    v35 = *(v27 + 16);
    v34 = v27 + 16;
    v153 = v35;
    v36 = (a1 + ((*(v34 + 64) + 32) & ~*(v34 + 64)));
    v149 = *(v34 + 56);
    v150 = v34;
    v148 = (v34 - 8);
    v37 = _swiftEmptyArrayStorage;
    v38 = v36;
    v39 = v33;
    v35(v31, v36, v20);
    while (1)
    {
      v41 = ProofingSession.UploadAsset.recordUUID.getter();
      v43 = v42;
      v152 = *v148;
      v152(v31, v20);
      if (v43)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v37 = sub_1003C5110(0, *(v37 + 2) + 1, 1, v37);
        }

        v46 = *(v37 + 2);
        v45 = *(v37 + 3);
        v47 = v37;
        if (v46 >= v45 >> 1)
        {
          v47 = sub_1003C5110((v45 > 1), v46 + 1, 1, v37);
        }

        *(v47 + 2) = v46 + 1;
        v37 = v47;
        v40 = &v47[16 * v46];
        *(v40 + 4) = v41;
        *(v40 + 5) = v43;
      }

      v38 += v149;
      v39 = (v39 - 1);
      if (!v39)
      {
        break;
      }

      v153(v31, v38, v20);
    }

    v126 = v37;
    v151 = v20;
    v143 = v146 + 6;
    v136 = v146 + 4;
    v135 = v146 + 1;
    v125 = v146 + 2;
    v124 = v146 + 7;
    v131 = _swiftEmptyArrayStorage;
    v144 = (v147 + 1);
    *&v44 = 136315138;
    v138 = v44;
    v130 = xmmword_1006BF650;
    v49 = v140;
    v48 = v141;
    v50 = v142;
    v51 = v133;
    v52 = v137;
    while (1)
    {
      v153(v52, v36, v151);
      ProofingSession.UploadAsset.assetFileURL.getter();
      if (!v60)
      {
        goto LABEL_39;
      }

      URL.init(string:)();

      if ((v143->isa)(v49, 1, v50) == 1)
      {
        sub_10000BE18(v49, &unk_100844540, &unk_1006BFBC0);
LABEL_39:
        v146 = v33;
        v147 = v36;
        defaultLogger()();
        v95 = v151;
        v153(v51, v52, v151);
        v96 = Logger.logObject.getter();
        v97 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v96, v97))
        {
          v53 = swift_slowAlloc();
          v54 = swift_slowAlloc();
          v154 = v54;
          *v53 = v138;
          v55 = ProofingSession.UploadAsset.recordUUID.getter();
          if (v56)
          {
            v57 = v55;
          }

          else
          {
            v57 = 0;
          }

          if (v56)
          {
            v58 = v56;
          }

          else
          {
            v58 = 0xE000000000000000;
          }

          v152(v51, v95);
          v59 = sub_100141FE4(v57, v58, &v154);

          *(v53 + 4) = v59;
          _os_log_impl(&_mh_execute_header, v96, v97, "assetURL of the upload asset with recordUUID %s doesn't exist skipping the upload asset", v53, 0xCu);
          sub_10000BB78(v54);
          v48 = v141;

          v50 = v142;
          v49 = v140;

          (*v144)(v48, v145);
          v152(v52, v95);
        }

        else
        {

          v98 = v152;
          v152(v51, v95);
          (*v144)(v48, v145);
          v98(v52, v95);
        }

        v33 = v146;
        v36 = v147;
        goto LABEL_20;
      }

      v61 = v139;
      (v136->isa)(v139, v49, v50);
      if ((URL.isFileOnDisk.getter() & 1) == 0)
      {
        (v135->isa)(v61, v50);
        goto LABEL_39;
      }

      v62 = ProofingSession.UploadAsset.assetType.getter();
      if (v63 && (v64 = v63, v65._countAndFlagsBits = v62, v65._object = v64, v66 = _findStringSwitchCase(cases:string:)(&off_1007F8990, v65), , v66 <= 4))
      {
        v67 = ProofingSession.UploadAsset.recordUUID.getter();
        if (!v68)
        {
          v115 = v123;
          defaultLogger()();
          v116 = Logger.logObject.getter();
          v117 = static os_log_type_t.debug.getter();
          if (os_log_type_enabled(v116, v117))
          {
            v118 = swift_slowAlloc();
            *v118 = 0;
            _os_log_impl(&_mh_execute_header, v116, v117, "recordUUID of the upload asset doesn't exist skipping the upload asset", v118, 2u);

            (*v144)(v123, v145);
          }

          else
          {

            (*v144)(v115, v145);
          }

          v50 = v142;
          (v135->isa)(v139, v142);
          v52 = v137;
          v152(v137, v151);
          v49 = v140;
          v51 = v133;
          goto LABEL_20;
        }

        v69 = v67;
        v70 = v68;
        v71 = v128;
        v72 = v142;
        (v125->isa)(v128, v139, v142);
        isa = v124->isa;
        (v124->isa)(v71, 0, 1, v72);
        type metadata accessor for UploadAsset(0);
        v74 = swift_allocObject();
        *(v74 + 32) = v130;
        isa(v74 + OBJC_IVAR____TtC8coreidvd11UploadAsset_assetFileURL, 1, 1, v72);
        v75 = v130;
        *(v74 + OBJC_IVAR____TtC8coreidvd11UploadAsset_systemData) = v130;
        *(v74 + 16) = v69;
        *(v74 + 24) = v70;
        v76 = *(v74 + 32);
        v77 = *(v74 + 40);
        *(v74 + 32) = v75;
        sub_10000BD94(v76, v77);
        *(v74 + 48) = v66;
        v78 = OBJC_IVAR____TtC8coreidvd11UploadAsset_assetFileURL;
        swift_beginAccess();
        sub_10000BDA8(v71, v74 + v78);
        swift_endAccess();

        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v155 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v155 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v131 = v155;
        v79 = v129;
        defaultLogger()();
        v80 = v127;
        v81 = v151;
        v153(v127, v137, v151);
        v82 = Logger.logObject.getter();
        v83 = static os_log_type_t.debug.getter();
        if (!os_log_type_enabled(v82, v83))
        {

          v119 = v81;
          v120 = v81;
          v121 = v152;
          v152(v80, v119);
          (*v144)(v79, v145);
          v50 = v142;
          (v135->isa)(v139, v142);
          v114 = v137;
          v121(v137, v120);
          v49 = v140;
          v48 = v141;
          goto LABEL_54;
        }

        v84 = swift_slowAlloc();
        v85 = swift_slowAlloc();
        v146 = v82;
        v147 = v85;
        v154 = v85;
        *v84 = v138;
        v86 = ProofingSession.UploadAsset.recordUUID.getter();
        if (v87)
        {
          v88 = v86;
        }

        else
        {
          v88 = 0;
        }

        if (v87)
        {
          v89 = v87;
        }

        else
        {
          v89 = 0xE000000000000000;
        }

        v90 = v81;
        v91 = v152;
        v152(v80, v90);
        v92 = sub_100141FE4(v88, v89, &v154);

        *(v84 + 4) = v92;
        v93 = v146;
        _os_log_impl(&_mh_execute_header, v146, v83, "Created the StoredUploadAsset with recordUUID %s", v84, 0xCu);
        sub_10000BB78(v147);

        (*v144)(v79, v145);
        v50 = v142;
        (v135->isa)(v139, v142);
        v94 = v137;
        v91(v137, v151);
        v49 = v140;
        v48 = v141;
      }

      else
      {
        defaultLogger()();
        v99 = v132;
        v100 = v151;
        v153(v132, v137, v151);
        v101 = Logger.logObject.getter();
        v102 = static os_log_type_t.debug.getter();
        if (!os_log_type_enabled(v101, v102))
        {

          v112 = v99;
          v113 = v152;
          v152(v112, v100);
          (*v144)(v134, v145);
          (v135->isa)(v139, v50);
          v114 = v137;
          v113(v137, v100);
LABEL_54:
          v51 = v133;
          v52 = v114;
          goto LABEL_20;
        }

        v103 = swift_slowAlloc();
        v104 = swift_slowAlloc();
        v154 = v104;
        *v103 = v138;
        v105 = ProofingSession.UploadAsset.recordUUID.getter();
        if (v106)
        {
          v107 = v105;
        }

        else
        {
          v107 = 0;
        }

        if (v106)
        {
          v108 = v106;
        }

        else
        {
          v108 = 0xE000000000000000;
        }

        v109 = v100;
        v110 = v152;
        v152(v99, v109);
        v111 = sub_100141FE4(v107, v108, &v154);
        v48 = v141;

        *(v103 + 4) = v111;
        _os_log_impl(&_mh_execute_header, v101, v102, "assetType of the upload asset with recordUUID %s doesn't exist skipping the upload asset", v103, 0xCu);
        sub_10000BB78(v104);

        v50 = v142;
        v49 = v140;

        (*v144)(v134, v145);
        (v135->isa)(v139, v50);
        v94 = v137;
        v110(v137, v151);
      }

      v51 = v133;
      v52 = v94;
LABEL_20:
      v36 = (v36 + v149);
      v33 = (v33 - 1);
      if (!v33)
      {
        return v131;
      }
    }
  }

  return result;
}

uint64_t sub_10003170C(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_100031744()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000317D4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000317EC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_100031834()
{
  result = qword_1008341F0;
  if (!qword_1008341F0)
  {
    sub_10000B870(&qword_100848A40, &unk_1006BF8C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008341F0);
  }

  return result;
}

uint64_t *sub_100031898(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t sub_100031980(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 251)
  {
    v4 = *a1;
    if (v4 >= 5)
    {
      return v4 - 4;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = type metadata accessor for Date();
    v9 = *(*(v8 - 8) + 48);
    v10 = &a1[*(a3 + 20)];

    return v9(v10, a2, v8);
  }
}

_BYTE *sub_100031A38(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 251)
  {
    *result = a2 + 4;
  }

  else
  {
    v7 = type metadata accessor for Date();
    v8 = *(*(v7 - 8) + 56);
    v9 = &v5[*(a4 + 20)];

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_100031AD8(uint64_t a1)
{
  result = type metadata accessor for Date();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_100031B74()
{
  v0 = type metadata accessor for DIPCertUsage();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for CertUsageMapper();
  static CertUsageMapper.sharedInstance.getter();
  type metadata accessor for Workflow(0);
  v4 = enum case for DIPCertUsage.topekaServerSigning(_:);
  v5 = *(v1 + 104);
  v5(v3, enum case for DIPCertUsage.topekaServerSigning(_:), v0);
  CertUsageMapper.registerMapping(forType:usage:)();
  v6 = *(v1 + 8);
  v6(v3, v0);
  type metadata accessor for LegacyINOWorkflow(0);
  v5(v3, v4, v0);
  CertUsageMapper.registerMapping(forType:usage:)();
  v6(v3, v0);
  type metadata accessor for LegacySPWorkflow(0);
  v5(v3, v4, v0);
  CertUsageMapper.registerMapping(forType:usage:)();
  v6(v3, v0);
  v5(v3, v4, v0);
  CertUsageMapper.registerMapping(forType:usage:)();
  v6(v3, v0);
  v5(v3, v4, v0);
  CertUsageMapper.registerMapping(forType:usage:)();
  v6(v3, v0);
  type metadata accessor for IdentityProofingResponse(0);
  v5(v3, v4, v0);
  CertUsageMapper.registerMapping(forType:usage:)();
  v6(v3, v0);
  type metadata accessor for SharingRegistrationResponse(0);
  v5(v3, v4, v0);
  CertUsageMapper.registerMapping(forType:usage:)();
  v6(v3, v0);
  v5(v3, v4, v0);
  CertUsageMapper.registerMapping(forType:usage:)();
  v6(v3, v0);
  sub_100007224(&unk_100849FD0, &qword_1006E8380);
  v5(v3, v4, v0);
  CertUsageMapper.registerMapping(forType:usage:)();
  v6(v3, v0);
  v5(v3, v4, v0);
  CertUsageMapper.registerMapping(forType:usage:)();
  v6(v3, v0);
  sub_100007224(&qword_100834290, &qword_1006BFC08);
  v5(v3, v4, v0);
  CertUsageMapper.registerMapping(forType:usage:)();
  v6(v3, v0);
  sub_100007224(&qword_100834298, &qword_1006BFC10);
  v5(v3, v4, v0);
  CertUsageMapper.registerMapping(forType:usage:)();
  v6(v3, v0);
  sub_100007224(&qword_1008342A0, &qword_1006BFC18);
  v5(v3, v4, v0);
  CertUsageMapper.registerMapping(forType:usage:)();
  v6(v3, v0);
  v5(v3, v4, v0);
  CertUsageMapper.registerMapping(forType:usage:)();
  v6(v3, v0);
  v5(v3, v4, v0);
  CertUsageMapper.registerMapping(forType:usage:)();
  v6(v3, v0);
  v5(v3, v4, v0);
  CertUsageMapper.registerMapping(forType:usage:)();
  v6(v3, v0);
  v5(v3, v4, v0);
  CertUsageMapper.registerMapping(forType:usage:)();
  v6(v3, v0);
  type metadata accessor for WorkflowRecommendationResponse(0);
  v5(v3, v4, v0);
  CertUsageMapper.registerMapping(forType:usage:)();
  v6(v3, v0);
  sub_100007224(&unk_100849C00, &unk_1006BFC20);
  v5(v3, enum case for DIPCertUsage.inoSigning(_:), v0);
  CertUsageMapper.registerMapping(forType:usage:)();
  v6(v3, v0);
  v5(v3, enum case for DIPCertUsage.spSigning(_:), v0);
  CertUsageMapper.registerMapping(forType:usage:)();
  v6(v3, v0);
  v5(v3, enum case for DIPCertUsage.assessmentServerSigning(_:), v0);
  CertUsageMapper.registerMapping(forType:usage:)();
  v6(v3, v0);
  type metadata accessor for IdentityProofingStaticWorkflow(0);
  v5(v3, v4, v0);
  CertUsageMapper.registerMapping(forType:usage:)();
  v6(v3, v0);
  v5(v3, v4, v0);
  CertUsageMapper.registerMapping(forType:usage:)();
  v6(v3, v0);
  v5(v3, v4, v0);
  CertUsageMapper.registerMapping(forType:usage:)();
  v6(v3, v0);
  v5(v3, v4, v0);
  CertUsageMapper.registerMapping(forType:usage:)();
  v6(v3, v0);
  v5(v3, v4, v0);
  CertUsageMapper.registerMapping(forType:usage:)();

  return (v6)(v3, v0);
}

double sub_10003232C()
{
  type metadata accessor for EnvironmentManager();
  v0 = swift_allocObject();
  sub_100007224(&qword_100834370, &qword_1006BFDF8);
  v1 = swift_allocObject();
  result = 0.0;
  v1[1] = 0u;
  v1[2] = 0u;
  v1[3] = 0u;
  v1[4] = 0u;
  v1[5] = 0u;
  v1[6] = 0u;
  v1[7] = 0u;
  v1[8] = 0u;
  v1[9] = 0u;
  v1[10] = 0u;
  v1[11] = 0u;
  v1[12] = 0u;
  *(v1 + 204) = 0u;
  *(v0 + 16) = v1;
  qword_100881E78 = v0;
  return result;
}

uint64_t sub_1000323A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_100032BAC(a1, &v20);
  if (*(&v21 + 1))
  {
    v11 = v31;
    *(a3 + 160) = v30;
    *(a3 + 176) = v11;
    *(a3 + 192) = v32;
    v12 = v27;
    *(a3 + 96) = v26;
    *(a3 + 112) = v12;
    v13 = v29;
    *(a3 + 128) = v28;
    *(a3 + 144) = v13;
    v14 = v23;
    *(a3 + 32) = v22;
    *(a3 + 48) = v14;
    v15 = v25;
    *(a3 + 64) = v24;
    *(a3 + 80) = v15;
    v16 = v21;
    *a3 = v20;
    *(a3 + 16) = v16;
  }

  else
  {
    sub_100032C1C(a1);
    sub_100032C1C(&v20);
    defaultLogger()();
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v33 = a2;
      *v19 = 0;
      _os_log_impl(&_mh_execute_header, v17, v18, "No environment exists, creating new environment", v19, 2u);
    }

    (*(v7 + 8))(v9, v6);
    sub_100032594(a3);
    return sub_100032C84(a3, a1);
  }

  return result;
}

uint64_t sub_100032594@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for MobileDocumentReaderSupportChecker();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v23[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MobileDocumentReaderSupportChecker.init(suiteNameOverride:)();
  if (qword_100832CF8 != -1)
  {
    swift_once();
  }

  v6 = qword_100882440;
  v29 = v2;
  v30 = &protocol witness table for MobileDocumentReaderSupportChecker;
  v7 = sub_100032DBC(&v28);
  (*(v3 + 16))(v7, v5, v2);
  v8 = type metadata accessor for DIPConfigWebService();
  v27[3] = v8;
  v27[4] = &off_100818040;
  v27[0] = v6;
  v9 = type metadata accessor for ConfigurationManager();
  v10 = swift_allocObject();
  v11 = sub_10001F370(v27, v8);
  __chkstk_darwin(v11);
  v13 = &v23[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v14 + 16))(v13);
  v15 = *v13;
  v25 = v8;
  v26 = &off_100818040;
  *&v24 = v15;

  swift_defaultActor_initialize();
  *(v10 + 192) = 0;
  sub_10001F358(&v28, v10 + 112);
  sub_10001F358(&v24, v10 + 152);
  sub_10000BB78(v27);
  (*(v3 + 8))(v5, v2);
  v29 = v9;
  v30 = &off_100815AD0;
  *&v28 = v10;
  type metadata accessor for DaemonCoreDataStore();
  swift_allocObject();
  v16 = sub_10054BEBC(0);
  type metadata accessor for DaemonBiomeCoreDataStore();
  swift_initStackObject();
  sub_10054B8E8(0);
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 184) = 0u;
  sub_100020260(&v28, a1);
  *(a1 + 40) = v16;
  swift_allocObject();

  *(a1 + 48) = sub_10054B8E8(0);
  type metadata accessor for IdentityProofingDataContainer();
  v17 = swift_allocObject();
  *(v17 + 24) = v16;
  sub_100007224(&qword_100834350, &qword_1006BFDD8);
  swift_allocObject();
  swift_retain_n();
  *(v17 + 16) = AsyncCoreDataContainer.init(contextBuilder:)();
  *(a1 + 56) = v17;
  type metadata accessor for MobileDocumentReaderDataContainer();
  v18 = swift_allocObject();
  *(v18 + 24) = v16;
  sub_100007224(&qword_100834358, &qword_1006BFDE0);
  swift_allocObject();
  swift_retain_n();
  *(v18 + 16) = AsyncCoreDataContainer.init(contextBuilder:)();
  *(a1 + 64) = v18;
  type metadata accessor for MobileDocumentRegistrationDataContainer();
  v19 = swift_allocObject();
  *(v19 + 24) = v16;
  sub_100007224(&qword_100834360, &qword_1006BFDE8);
  swift_allocObject();
  swift_retain_n();
  *(v19 + 16) = AsyncCoreDataContainer.init(contextBuilder:)();
  *(a1 + 72) = v19;
  type metadata accessor for ThreadSafeUploadTracker();
  v20 = swift_allocObject();
  sub_100007224(&qword_100834368, &qword_1006BFDF0);
  v21 = swift_allocObject();
  *(v21 + 24) = 0;

  result = sub_10000BB78(&v28);
  *(v21 + 16) = 0;
  *(v20 + 16) = v21;
  *(a1 + 80) = v20;
  return result;
}

uint64_t sub_100032A88(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 sub_100032AA0(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  v5 = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 128);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = v7;
  *(a1 + 80) = v5;
  *(a1 + 96) = v6;
  result = *(a2 + 144);
  v9 = *(a2 + 160);
  v10 = *(a2 + 176);
  *(a1 + 192) = *(a2 + 192);
  *(a1 + 160) = v9;
  *(a1 + 176) = v10;
  *(a1 + 144) = result;
  return result;
}

uint64_t sub_100032AE4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 200))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100032B2C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 184) = 0u;
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
      *(result + 200) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 200) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100032BAC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100007224(&qword_100834348, &qword_1006BFDD0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100032C1C(uint64_t a1)
{
  v2 = sub_100007224(&qword_100834348, &qword_1006BFDD0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100032CBC()
{
  v0 = type metadata accessor for URL();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100031898(v2, qword_100881E80);
  sub_10003170C(v0, qword_100881E80);
  static URL.libraryDirectory.getter();
  URL.appendingPathComponent(_:isDirectory:)();
  return (*(v1 + 8))(v4, v0);
}

uint64_t *sub_100032DBC(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_100032E90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v73 = &v69 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v10 = &v69 - v9;
  v11 = type metadata accessor for DeviceInformationProvider();
  v75 = *(v11 - 8);
  v76 = v11;
  __chkstk_darwin(v11);
  v74 = &v69 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for HardwareAttestationType();
  v14 = __chkstk_darwin(v13);
  v86 = &v69 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v14);
  v87 = &v69 - v17;
  v18 = __chkstk_darwin(v16);
  v88 = &v69 - v19;
  v20 = __chkstk_darwin(v18);
  v22 = &v69 - v21;
  __chkstk_darwin(v20);
  v96 = &v69 - v24;
  v25 = *(a1 + 16);
  v85 = enum case for HardwareAttestationType.SEP(_:);
  if (!v25)
  {
    return (*(v23 + 104))(a2, v85, v13);
  }

  v70 = v10;
  v71 = v6;
  v72 = v5;
  v77 = v2;
  v78 = a2;
  v27 = *(v23 + 16);
  v26 = v23 + 16;
  v83 = v27;
  v91 = (v26 + 88);
  v84 = enum case for HardwareAttestationType.SE(_:);
  v82 = enum case for HardwareAttestationType.IDV(_:);
  v81 = enum case for HardwareAttestationType.OP(_:);
  v28 = a1 + ((*(v26 + 64) + 32) & ~*(v26 + 64));
  v79 = *(v26 + 56);
  v80 = v26;
  v29 = v96;
  v90 = (v26 - 8);
  while (1)
  {
    v83(v29, v28, v13);
    v89 = *v91;
    v89(v22, v85, v13);
    sub_100034734(&qword_100834380, &type metadata accessor for HardwareAttestationType, &protocol conformance descriptor for HardwareAttestationType);
    dispatch thunk of RawRepresentable.rawValue.getter();
    dispatch thunk of RawRepresentable.rawValue.getter();
    if (v94 == v92 && v95 == v93)
    {
      v31 = 1;
    }

    else
    {
      v31 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }

    v32 = *v90;
    (*v90)(v22, v13);

    if (v31)
    {
      goto LABEL_26;
    }

    v89(v88, v84, v13);
    dispatch thunk of RawRepresentable.rawValue.getter();
    dispatch thunk of RawRepresentable.rawValue.getter();
    if (v94 == v92 && v95 == v93)
    {
      v32(v88, v13);

LABEL_23:
      v37 = hasSEService();
      v32(v96, v13);
      if (v37)
      {
        v38 = v78;
        v39 = v84;
        return v89(v38, v39, v13);
      }

LABEL_27:
      v38 = v78;
LABEL_43:
      v39 = v85;
      return v89(v38, v39, v13);
    }

    v33 = _stringCompareWithSmolCheck(_:_:expecting:)();
    v32(v88, v13);

    if (v33)
    {
      goto LABEL_23;
    }

    v89(v87, v82, v13);
    dispatch thunk of RawRepresentable.rawValue.getter();
    dispatch thunk of RawRepresentable.rawValue.getter();
    if (v94 == v92 && v95 == v93)
    {
      v32(v87, v13);

LABEL_26:
      v32(v96, v13);
      goto LABEL_27;
    }

    v34 = _stringCompareWithSmolCheck(_:_:expecting:)();
    v32(v87, v13);

    if (v34)
    {
      goto LABEL_26;
    }

    v89(v86, v81, v13);
    dispatch thunk of RawRepresentable.rawValue.getter();
    dispatch thunk of RawRepresentable.rawValue.getter();
    if (v94 == v92 && v95 == v93)
    {
      break;
    }

    v35 = _stringCompareWithSmolCheck(_:_:expecting:)();
    v32(v86, v13);

    if (v35)
    {
      goto LABEL_29;
    }

    v29 = v96;
    v32(v96, v13);
    v28 += v79;
    if (!--v25)
    {
      return v89(v78, v85, v13);
    }
  }

  v32(v86, v13);

LABEL_29:
  v40 = hasSEService();
  v41 = v78;
  if (!v40)
  {
    goto LABEL_42;
  }

  v42 = v74;
  DeviceInformationProvider.init()();
  v43 = DeviceInformationProvider.hardwarePlatform.getter();
  v45 = v44;
  (*(v75 + 8))(v42, v76);
  if (qword_100832CC0 != -1)
  {
    swift_once();
  }

  v46 = qword_1008823E0;
  v47 = sub_100592810();
  if (v48 == 1)
  {
    sub_1005946FC();
  }

  else
  {
    sub_10003477C(v47, v48);
  }

  v49 = sub_100592810();
  v51 = v50;
  v53 = v52;

  if (v51 == 1 || (sub_10003477C(v49, v51), (v53 & 0x100000000) != 0))
  {

    v61 = v73;
    defaultLogger()();
    v62 = Logger.logObject.getter();
    v63 = static os_log_type_t.default.getter();
    v64 = os_log_type_enabled(v62, v63);
    v65 = v72;
    v66 = v71;
    if (v64)
    {
      v67 = swift_slowAlloc();
      *v67 = 0;
      _os_log_impl(&_mh_execute_header, v62, v63, "failed to get SE type", v67, 2u);
    }

    (*(v66 + 8))(v61, v65);
LABEL_42:
    v32(v96, v13);
    v38 = v41;
    goto LABEL_43;
  }

  v54 = v70;
  defaultLogger()();

  v55 = Logger.logObject.getter();
  v56 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v55, v56))
  {
    v57 = swift_slowAlloc();
    v58 = swift_slowAlloc();
    v94 = v58;
    *v57 = 136446466;
    *(v57 + 4) = sub_100141FE4(v43, v45, &v94);
    *(v57 + 12) = 1026;
    *(v57 + 14) = v53;
    _os_log_impl(&_mh_execute_header, v55, v56, "soc %{public}s, se %{public}u", v57, 0x12u);
    sub_10000BB78(v58);
    v41 = v78;

    (*(v71 + 8))(v70, v72);
  }

  else
  {

    (*(v71 + 8))(v54, v72);
  }

  v68 = sub_100034790(v43, v45, v59, v60);

  v32(v96, v13);
  switch(v53)
  {
    case 2:
LABEL_49:
      if (v68 <= 5u)
      {
        goto LABEL_52;
      }

      goto LABEL_50;
    case 1:
      if (v68 <= 4u)
      {
        goto LABEL_52;
      }

      goto LABEL_50;
    case 0:
      goto LABEL_49;
  }

  if (v68 > 1u)
  {
LABEL_50:
    v38 = v41;
    v39 = v84;
    return v89(v38, v39, v13);
  }

LABEL_52:
  v38 = v41;
  v39 = v85;
  return v89(v38, v39, v13);
}

uint64_t sub_100033918(uint64_t a1, char a2)
{
  *(v2 + 320) = a2;
  *(v2 + 168) = a1;
  v3 = type metadata accessor for DIPError.Code();
  *(v2 + 176) = v3;
  *(v2 + 184) = *(v3 - 8);
  *(v2 + 192) = swift_task_alloc();
  v4 = type metadata accessor for DIPError();
  *(v2 + 200) = v4;
  *(v2 + 208) = *(v4 - 8);
  *(v2 + 216) = swift_task_alloc();
  v5 = type metadata accessor for Logger();
  *(v2 + 224) = v5;
  *(v2 + 232) = *(v5 - 8);
  *(v2 + 240) = swift_task_alloc();
  *(v2 + 248) = swift_task_alloc();
  v6 = type metadata accessor for DIPKeyAlgorithm();
  *(v2 + 256) = v6;
  *(v2 + 264) = *(v6 - 8);
  *(v2 + 272) = swift_task_alloc();

  return _swift_task_switch(sub_100033AFC, 0, 0);
}

uint64_t sub_100033AFC()
{
  v1 = swift_allocObject();
  *(v0 + 280) = v1;
  *(v1 + 16) = 0;
  v2 = objc_opt_self();
  *(v0 + 288) = v2;
  v3 = [v2 standardUserDefaults];
  static DaemonDefaultsKeys.seAvailable.getter();
  v4 = String._bridgeToObjectiveC()();

  v5 = [v3 BOOLForKey:v4];

  if (v5)
  {
    *(v1 + 16) = 1;
    goto LABEL_10;
  }

  if ((*(v0 + 320) & 1) != 0 || !hasSEService())
  {
LABEL_10:
    sub_100034454(v1);

    v13 = *(v0 + 8);

    return v13(v5);
  }

  sub_10003437C(*(v0 + 168), v0 + 56);
  if (!*(v0 + 80))
  {
    sub_1000343EC(v0 + 56);
    goto LABEL_10;
  }

  v7 = *(v0 + 264);
  v6 = *(v0 + 272);
  v8 = *(v0 + 256);
  sub_10001F358((v0 + 56), v0 + 16);
  v9 = *(v0 + 40);
  sub_10000BA08((v0 + 16), v9);
  (*(v7 + 104))(v6, enum case for DIPKeyAlgorithm.ECC256(_:), v8);
  v10 = sub_10003D6C8(_swiftEmptyArrayStorage);
  *(v0 + 296) = v10;
  v11 = swift_task_alloc();
  *(v0 + 304) = v11;
  *v11 = v0;
  v11[1] = sub_100033D84;
  v12 = *(v0 + 272);

  return dispatch thunk of DIPKeystoreProtocol.generateIdentityKeyPair(label:algorithm:constraints:enableUAM:temporary:)(v0 + 96, 0xD000000000000014, 0x80000001006FC190, v12, v10, 1, 1, v9);
}

uint64_t sub_100033D84()
{
  v2 = *v1;
  *(*v1 + 312) = v0;

  if (v0)
  {
    (*(v2[33] + 8))(v2[34], v2[32]);

    v3 = sub_1000340B0;
  }

  else
  {
    v5 = v2[33];
    v4 = v2[34];
    v6 = v2[32];

    (*(v5 + 8))(v4, v6);
    sub_10000BB78(v2 + 12);
    v3 = sub_100033EF4;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100033EF4()
{
  v1 = v0[36];
  *(v0[35] + 16) = 1;
  v2 = [v1 standardUserDefaults];
  static DaemonDefaultsKeys.seAvailable.getter();
  v3 = String._bridgeToObjectiveC()();

  [v2 setBool:1 forKey:v3];

  defaultLogger()();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.info.getter();
  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[31];
  v8 = v0[28];
  v9 = v0[29];
  if (v6)
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v4, v5, "set se service available to true", v10, 2u);
  }

  (*(v9 + 8))(v7, v8);
  v11 = v0[35];
  sub_10000BB78(v0 + 2);
  sub_100034454(v11);

  v12 = v0[39] == 0;

  v13 = v0[1];

  return v13(v12);
}

uint64_t sub_1000340B0()
{
  v2 = v0[29];
  v1 = v0[30];
  v15 = v0[28];
  v14 = v0[27];
  v3 = v0[25];
  v4 = v0[26];
  v5 = v0[23];
  v6 = v0[24];
  v7 = v0[22];
  _StringGuts.grow(_:)(35);

  swift_getErrorValue();
  v8._countAndFlagsBits = Error.localizedDescription.getter();
  String.append(_:)(v8);

  (*(v5 + 104))(v6, enum case for DIPError.Code.keychainSEKeyCreateFailure(_:), v7);
  sub_1000402AC(_swiftEmptyArrayStorage);
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  sub_100034734(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
  swift_allocError();
  (*(v4 + 16))(v9, v14, v3);
  defaultLogger()();
  DIPRecordError(_:message:log:)();

  (*(v2 + 8))(v1, v15);
  (*(v4 + 8))(v14, v3);

  v10 = v0[35];
  sub_10000BB78(v0 + 2);
  sub_100034454(v10);

  v11 = v0[39] == 0;

  v12 = v0[1];

  return v12(v11);
}

uint64_t sub_10003437C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100007224(&qword_100834378, &unk_1006BFF50);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000343EC(uint64_t a1)
{
  v2 = sub_100007224(&qword_100834378, &unk_1006BFF50);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100034454(uint64_t a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v14[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  defaultLogger()();

  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v15 = v9;
    *v8 = 136446210;
    swift_beginAccess();
    if (*(a1 + 16))
    {
      v10 = 1702195828;
    }

    else
    {
      v10 = 0x65736C6166;
    }

    if (*(a1 + 16))
    {
      v11 = 0xE400000000000000;
    }

    else
    {
      v11 = 0xE500000000000000;
    }

    v12 = sub_100141FE4(v10, v11, &v15);

    *(v8 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v6, v7, "se service available = %{public}s", v8, 0xCu);
    sub_10000BB78(v9);
  }

  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_100034640()
{
  v0 = [objc_opt_self() standardUserDefaults];
  static DaemonDefaultsKeys.seAvailable.getter();
  v1 = String._bridgeToObjectiveC()();

  [v0 removeObjectForKey:v1];

  type metadata accessor for DIPKeystoreKeychain();
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  static DIPKeystoreKeychain.deleteKeychainItem(label:serialNumber:secClass:)();
}

uint64_t sub_100034734(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10003477C(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

uint64_t sub_100034790(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1000348A0();
  sub_1000348F4();
  if (BidirectionalCollection<>.starts<A>(with:)())
  {
    return 0;
  }

  v5 = BidirectionalCollection<>.starts<A>(with:)();
  result = 2;
  if ((v5 & 1) == 0)
  {
    if (BidirectionalCollection<>.starts<A>(with:)())
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }

  return result;
}

unint64_t sub_1000348A0()
{
  result = qword_100839C00;
  if (!qword_100839C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100839C00);
  }

  return result;
}

unint64_t sub_1000348F4()
{
  result = qword_100834388;
  if (!qword_100834388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100834388);
  }

  return result;
}

uint64_t sub_10003498C()
{
  DIPCryptoKeychain.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_100034A2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  *(v7 + 80) = a5;
  *(v7 + 88) = v6;
  *(v7 + 168) = a6;
  *(v7 + 64) = a2;
  *(v7 + 72) = a3;
  *(v7 + 56) = a1;
  v8 = type metadata accessor for DIPError.Code();
  *(v7 + 96) = v8;
  *(v7 + 104) = *(v8 - 8);
  *(v7 + 112) = swift_task_alloc();
  type metadata accessor for DIPSignpost.Config();
  *(v7 + 120) = swift_task_alloc();
  v9 = type metadata accessor for DIPSignpost();
  *(v7 + 128) = v9;
  *(v7 + 136) = *(v9 - 8);
  *(v7 + 144) = swift_task_alloc();

  return _swift_task_switch(sub_100034B80, 0, 0);
}

uint64_t sub_100034B80()
{
  static DaemonSignposts.fetchSEABAASCert.getter();
  DIPSignpost.init(_:)();
  v1 = swift_task_alloc();
  *(v0 + 152) = v1;
  *v1 = v0;
  v1[1] = sub_100034C34;
  v2 = *(v0 + 168);
  v4 = *(v0 + 64);
  v3 = *(v0 + 72);

  return sub_100036658(v4, v3, v2);
}

uint64_t sub_100034C34()
{
  *(*v1 + 160) = v0;

  if (v0)
  {
    v2 = sub_100034F64;
  }

  else
  {
    v2 = sub_100034D48;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100034D48()
{
  v1 = *(v0 + 160);
  sub_100035714(*(v0 + 64), *(v0 + 72), *(v0 + 80), 1, v0 + 16);
  if (v1)
  {
    goto LABEL_2;
  }

  if (!*(v0 + 40))
  {
    v8 = *(v0 + 104);
    v7 = *(v0 + 112);
    v9 = *(v0 + 96);
    sub_1000371AC(v0 + 16);
    (*(v8 + 104))(v7, enum case for DIPError.Code.unexpectedDaemonState(_:), v9);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100037214();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
LABEL_2:
    (*(*(v0 + 136) + 8))(*(v0 + 144), *(v0 + 128));

    v2 = *(v0 + 8);
    goto LABEL_5;
  }

  v4 = *(v0 + 136);
  v3 = *(v0 + 144);
  v5 = *(v0 + 128);
  sub_10001F358((v0 + 16), *(v0 + 56));
  DIPSignpost.end(workflowID:isBackground:)(0, 2);
  (*(v4 + 8))(v3, v5);

  v2 = *(v0 + 8);
LABEL_5:

  return v2();
}

uint64_t sub_100034F64()
{
  v2 = v0[13];
  v1 = v0[14];
  v3 = v0[12];
  v4 = _convertErrorToNSError(_:)();
  v5 = [v4 code];
  (*(v2 + 104))(v1, enum case for DIPError.Code.keychainSEKeyCreateFailure(_:), v3);
  v6 = DIPError.Code.rawValue.getter();
  (*(v2 + 8))(v1, v3);
  if (v5 == v6)
  {
    sub_100034640();
  }

  swift_willThrow();

  (*(v0[17] + 8))(v0[18], v0[16]);

  v7 = v0[1];

  return v7();
}

uint64_t sub_100035094(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a3;
  v4[6] = a4;
  v4[3] = a1;
  v4[4] = a2;
  v5 = type metadata accessor for DIPError();
  v4[7] = v5;
  v4[8] = *(v5 - 8);
  v4[9] = swift_task_alloc();
  v6 = type metadata accessor for DIPError.Code();
  v4[10] = v6;
  v4[11] = *(v6 - 8);
  v4[12] = swift_task_alloc();

  return _swift_task_switch(sub_1000351E0, 0, 0);
}

uint64_t sub_1000351E0()
{
  v1 = v0[4];
  os_unfair_lock_lock((v1 + 32));
  v2 = *(v1 + 24);
  v3 = *(v1 + 16);
  v4 = v2;
  os_unfair_lock_unlock((v1 + 32));
  v0[2] = 0;
  Attestation = SecKeyCreateAttestation();
  if (Attestation)
  {
    v6 = Attestation;
    v7 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = v8;

    isa = Data._bridgeToObjectiveC()().super.isa;
    v11 = SecCertificateCreateWithData(kCFAllocatorDefault, isa);

    v28 = v9;
    if (v11)
    {
      type metadata accessor for DIPKeystoreKeychain();
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      static DIPKeystoreKeychain.deleteKeychainItem(label:serialNumber:secClass:)();

      static String._unconditionallyBridgeFromObjectiveC(_:)();
      static DIPKeystoreKeychain.deleteKeychainItem(label:serialNumber:secClass:)();

      static DIPKeystoreKeychain.storeKeychainKey(_:label:)();
      static DIPKeystoreKeychain.storeKeychainCertificate(_:label:failIfDuplicate:)();
      v25 = v0[3];

      sub_10000B90C(v7, v9);
      v26 = &enum case for DIPRetrier.RetryResult.success<A>(_:);
    }

    else
    {
      v16 = v0[9];
      v18 = v0[7];
      v17 = v0[8];
      v27 = v0[3];
      (*(v0[11] + 104))(v0[12], enum case for DIPError.Code.certificateDecodingFailed(_:), v0[10]);
      sub_1000402AC(_swiftEmptyArrayStorage);
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      sub_100037214();
      v19 = swift_allocError();
      (*(v17 + 32))(v20, v16, v18);

      sub_10000B90C(v7, v28);
      v25 = v27;
      *v27 = v19;
      v26 = &enum case for DIPRetrier.RetryResult.failure<A>(_:);
    }
  }

  else
  {
    v13 = v0[11];
    v12 = v0[12];
    v14 = v0[10];
    v25 = v0[3];
    (*(v13 + 104))(v12, enum case for DIPError.Code.seAttestationFailure(_:), v14);
    v15 = errorFromCFError(_:_:_:)();

    (*(v13 + 8))(v12, v14);
    *v25 = v15;
    v25[1] = 0;
    *(v25 + 16) = 1;
    v26 = &enum case for DIPRetrier.RetryResult.retry<A>(_:);
  }

  v21 = *v26;
  v22 = sub_100007224(&qword_100834438, &qword_1006BFEC0);
  (*(*(v22 - 8) + 104))(v25, v21, v22);

  v23 = v0[1];

  return v23();
}

uint64_t sub_100035714@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X8>)
{
  v6 = v5;
  v84 = a4;
  v90 = a3;
  v91 = a5;
  v9 = type metadata accessor for DIPError.Code();
  v81 = *(v9 - 8);
  v82 = v9;
  __chkstk_darwin(v9);
  v83 = v80 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = type metadata accessor for HardwareAttestationType();
  v85 = *(v88 - 8);
  __chkstk_darwin(v88);
  v87 = v80 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for IdentityKeyGenerationOption();
  v86 = *(v12 - 8);
  __chkstk_darwin(v12);
  v14 = v80 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100007224(&qword_100834440, &qword_1006BFEC8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1006BFE10;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 72) = &type metadata for String;
  *(inited + 40) = v16;
  *(inited + 48) = a1;
  v92._countAndFlagsBits = a1;
  *(inited + 56) = a2;
  *(inited + 80) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 88) = v17;
  v92._object = a2;

  v89 = v6;
  v18 = DIPKeystoreKeychain.laContext.getter();
  *(inited + 120) = sub_100037320();
  *(inited + 96) = v18;
  *(inited + 128) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 136) = v19;
  type metadata accessor for CFString(0);
  *(inited + 168) = v20;
  *(inited + 144) = kSecClassKey;
  *(inited + 176) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 184) = v21;
  *(inited + 216) = &type metadata for Bool;
  *(inited + 192) = 1;
  v22 = kSecClassKey;
  v23 = sub_10003D8DC(inited);
  swift_setDeallocating();
  sub_100007224(&qword_100834450, &unk_1006BFED0);
  swift_arrayDestroy();
  v96 = 0;
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  v25 = SecItemCopyMatching(isa, &v96);

  if (v25)
  {

    if (v25 == -25300)
    {
      v26 = v91;
      *(v91 + 32) = 0;
      *v26 = 0u;
      v26[1] = 0u;
    }

    else
    {
      v94 = 0;
      v95 = 0xE000000000000000;
      _StringGuts.grow(_:)(56);
      v39._object = 0x80000001006FC500;
      v39._countAndFlagsBits = 0xD000000000000025;
      String.append(_:)(v39);
      String.append(_:)(v92);
      v40._countAndFlagsBits = 0x7473206874697720;
      v40._object = 0xEF203D2073757461;
      String.append(_:)(v40);
      v93 = v25;
      v41._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v41);

      (*(v81 + 104))(v83, enum case for DIPError.Code.keychainFailureQueryKey(_:), v82);
      sub_1000402AC(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_100037214();
      swift_allocError();
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      swift_willThrow();
    }

    return swift_unknownObjectRelease();
  }

  v27 = v86;
  v28 = v87;
  v29 = v88;
  v30 = v90;
  v80[1] = v23;
  if (v90)
  {
    (*(v86 + 104))(v14, enum case for IdentityKeyGenerationOption.validity(_:), v12);
    if (*(v30 + 16))
    {
      v31 = sub_10003B100(v14);
      if (v32)
      {
        v33 = (*(v30 + 56) + 16 * v31);
        v34 = v27;
        v36 = *v33;
        v35 = v33[1];
        v37 = *(v34 + 8);

        v37(v14, v12);
        v38 = v35;
        goto LABEL_11;
      }
    }

    (*(v27 + 8))(v14, v12);
  }

  v36 = 0;
  v38 = 0xE000000000000000;
LABEL_11:
  v42 = (HIBYTE(v38) & 0xF);
  v43 = v36 & 0xFFFFFFFFFFFFLL;
  if ((v38 & 0x2000000000000000) != 0)
  {
    v44 = HIBYTE(v38) & 0xF;
  }

  else
  {
    v44 = v36 & 0xFFFFFFFFFFFFLL;
  }

  if (!v44)
  {

    v45 = v28;
    v46 = v85;
    goto LABEL_73;
  }

  if ((v38 & 0x1000000000000000) == 0)
  {
    v45 = v28;
    if ((v38 & 0x2000000000000000) != 0)
    {
      v94 = v36;
      v95 = v38 & 0xFFFFFFFFFFFFFFLL;
      if (v36 == 43)
      {
        v46 = v85;
        if (!v42)
        {
          goto LABEL_84;
        }

        if (--v42)
        {
          v62 = 0;
          v63 = &v94 + 1;
          while (1)
          {
            v64 = *v63 - 48;
            if (v64 > 9)
            {
              break;
            }

            v65 = 10 * v62;
            if ((v62 * 10) >> 64 != (10 * v62) >> 63)
            {
              break;
            }

            v62 = v65 + v64;
            if (__OFADD__(v65, v64))
            {
              break;
            }

            ++v63;
            if (!--v42)
            {
              goto LABEL_72;
            }
          }
        }
      }

      else
      {
        v46 = v85;
        if (v36 == 45)
        {
          if (!v42)
          {
LABEL_82:
            __break(1u);
LABEL_83:
            __break(1u);
LABEL_84:
            __break(1u);
          }

          if (--v42)
          {
            v53 = 0;
            v54 = &v94 + 1;
            while (1)
            {
              v55 = *v54 - 48;
              if (v55 > 9)
              {
                break;
              }

              v56 = 10 * v53;
              if ((v53 * 10) >> 64 != (10 * v53) >> 63)
              {
                break;
              }

              v53 = v56 - v55;
              if (__OFSUB__(v56, v55))
              {
                break;
              }

              ++v54;
              if (!--v42)
              {
                goto LABEL_72;
              }
            }
          }
        }

        else if (v42)
        {
          v69 = 0;
          v70 = &v94;
          while (1)
          {
            v71 = *v70 - 48;
            if (v71 > 9)
            {
              break;
            }

            v72 = 10 * v69;
            if ((v69 * 10) >> 64 != (10 * v69) >> 63)
            {
              break;
            }

            v69 = v72 + v71;
            if (__OFADD__(v72, v71))
            {
              break;
            }

            v70 = (v70 + 1);
            if (!--v42)
            {
              goto LABEL_72;
            }
          }
        }
      }
    }

    else
    {
      if ((v36 & 0x1000000000000000) != 0)
      {
        v42 = ((v38 & 0xFFFFFFFFFFFFFFFLL) + 32);
      }

      else
      {
        v42 = _StringObject.sharedUTF8.getter();
      }

      v46 = v85;
      v47 = *v42;
      if (v47 == 43)
      {
        if (v43 >= 1)
        {
          v57 = v43 - 1;
          if (v43 != 1)
          {
            v58 = 0;
            if (!v42)
            {
              goto LABEL_72;
            }

            v59 = v42 + 1;
            while (1)
            {
              v60 = *v59 - 48;
              if (v60 > 9)
              {
                break;
              }

              v61 = 10 * v58;
              if ((v58 * 10) >> 64 != (10 * v58) >> 63)
              {
                break;
              }

              v58 = v61 + v60;
              if (__OFADD__(v61, v60))
              {
                break;
              }

              ++v59;
              if (!--v57)
              {
LABEL_63:
                LOBYTE(v42) = 0;
                goto LABEL_72;
              }
            }
          }

          goto LABEL_71;
        }

        goto LABEL_83;
      }

      if (v47 == 45)
      {
        if (v43 >= 1)
        {
          v48 = v43 - 1;
          if (v43 != 1)
          {
            v49 = 0;
            if (!v42)
            {
              goto LABEL_72;
            }

            v50 = v42 + 1;
            while (1)
            {
              v51 = *v50 - 48;
              if (v51 > 9)
              {
                break;
              }

              v52 = 10 * v49;
              if ((v49 * 10) >> 64 != (10 * v49) >> 63)
              {
                break;
              }

              v49 = v52 - v51;
              if (__OFSUB__(v52, v51))
              {
                break;
              }

              ++v50;
              if (!--v48)
              {
                goto LABEL_63;
              }
            }
          }

          goto LABEL_71;
        }

        __break(1u);
        goto LABEL_82;
      }

      if (v43)
      {
        v66 = 0;
        if (!v42)
        {
          goto LABEL_72;
        }

        while (1)
        {
          v67 = *v42 - 48;
          if (v67 > 9)
          {
            break;
          }

          v68 = 10 * v66;
          if ((v66 * 10) >> 64 != (10 * v66) >> 63)
          {
            break;
          }

          v66 = v68 + v67;
          if (__OFADD__(v68, v67))
          {
            break;
          }

          ++v42;
          if (!--v43)
          {
            goto LABEL_63;
          }
        }
      }
    }

LABEL_71:
    LOBYTE(v42) = 1;
LABEL_72:
    LOBYTE(v93) = v42;
    v73 = v42;

    if ((v73 & 1) == 0)
    {
      goto LABEL_74;
    }

    goto LABEL_73;
  }

  sub_1000FFDD8(v36, v38, 10);
  v79 = v78;

  v45 = v28;
  v46 = v85;
  if (v79)
  {
LABEL_73:
    result = DEFAULT_BAA_CERTIFICATE_VALIDITY_IN_MINUTES.getter();
  }

LABEL_74:
  if (v96)
  {
    swift_unknownObjectRetain();

    type metadata accessor for SecKey(0);
    swift_dynamicCastUnknownClassUnconditional();
    (*(v46 + 104))(v45, enum case for HardwareAttestationType.SE(_:), v29);
    DIPKeystoreKeychain.laContext.getter();
    v75 = type metadata accessor for IdentityKeyWithKeychain();
    swift_allocObject();

    v76 = IdentityKeyWithKeychain.init(label:privateKey:attestationType:laContext:validity:isTemporary:)();
    v77 = v91;
    *(v91 + 24) = v75;
    v77[4] = &protocol witness table for IdentityKeyWithKeychain;
    *v77 = v76;
    return swift_unknownObjectRelease();
  }

  __break(1u);
  return result;
}

uint64_t sub_1000360B4(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v3[2] = a2;
  v3[3] = a3;
  swift_allocObject();
  sub_1000363B4(a2, a3);
  v7 = swift_task_alloc();
  v3[4] = v7;
  *v7 = v3;
  v7[1] = sub_100036188;

  return DIPKeystoreKeychain.init(requireUserAuth:externalizedLAContext:)(a1, a2, a3);
}

uint64_t sub_100036188(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 40) = v1;

  if (v1)
  {
    v5 = sub_100036318;
  }

  else
  {
    *(v4 + 48) = a1;
    v5 = sub_1000362B0;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1000362B0()
{
  sub_10000BD94(v0[2], v0[3]);
  v1 = v0[1];
  v2 = v0[6];

  return v1(v2);
}

uint64_t sub_100036318()
{
  sub_10000BD94(v0[2], v0[3]);
  v1 = v0[1];

  return v1();
}

uint64_t sub_10003637C()
{
  DIPKeystoreKeychain.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1000363B4(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_10000B8B8(result, a2);
  }

  return result;
}

uint64_t sub_1000363C8(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for DIPError.Code();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DIPError();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for DIPCryptoKeychain();
  result = dispatch thunk of static DIPCryptoKeychain.generateKeyAsym(_:_:useSecureElement:)();
  if (v2)
  {
    v15 = result;
    v16 = v12;
    swift_getErrorValue();
    Error.localizedDescription.getter();
    (*(v4 + 104))(v6, enum case for DIPError.Code.keychainSEKeyCreateFailure(_:), v3);
    sub_1000402AC(_swiftEmptyArrayStorage);
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    sub_100037214();
    swift_allocError();
    (*(v8 + 16))(v13, v10, v7);
    swift_willThrow();

    (*(v8 + 8))(v10, v7);
    return v15;
  }

  return result;
}

uint64_t sub_100036658(uint64_t a1, uint64_t a2, char a3)
{
  *(v3 + 52) = a3;
  *(v3 + 64) = a1;
  *(v3 + 72) = a2;
  v4 = type metadata accessor for DIPError.Code();
  *(v3 + 80) = v4;
  *(v3 + 88) = *(v4 - 8);
  *(v3 + 96) = swift_task_alloc();
  v5 = type metadata accessor for DIPBackoffStrategy();
  *(v3 + 104) = v5;
  *(v3 + 112) = *(v5 - 8);
  *(v3 + 120) = swift_task_alloc();
  v6 = type metadata accessor for DIPRetrier();
  *(v3 + 128) = v6;
  *(v3 + 136) = *(v6 - 8);
  *(v3 + 144) = swift_task_alloc();
  v7 = type metadata accessor for KeyUsage();
  *(v3 + 152) = v7;
  *(v3 + 160) = *(v7 - 8);
  *(v3 + 168) = swift_task_alloc();
  v8 = type metadata accessor for DIPKeyAlgorithm();
  *(v3 + 176) = v8;
  *(v3 + 184) = *(v8 - 8);
  *(v3 + 192) = swift_task_alloc();

  return _swift_task_switch(sub_1000368B8, 0, 0);
}

uint64_t sub_1000368B8()
{
  v0[7] = 0;
  v1 = DIPSecKeyCopyAttestationKey();
  v0[25] = v1;
  if (v1)
  {
    v2 = v1;
    v3 = v0[21];
    v4 = v0[19];
    v5 = v0[20];
    (*(v0[23] + 104))(v0[24], enum case for DIPKeyAlgorithm.ECC256(_:), v0[22]);
    (*(v5 + 104))(v3, enum case for KeyUsage.signature(_:), v4);
    v6 = createBAAKeyACLWithDefaultLAContext(enableUAM:keyUsage:requireUserAuth:forSecureElement:)();
    v8 = v0[23];
    v7 = v0[24];
    v12 = v6;
    (*(v0[20] + 8))(v0[21], v0[19]);
    v13 = sub_1000363C8(v7, v12);
    v15 = v14;
    v0[26] = v13;
    v38 = v13;
    (*(v8 + 8))(v0[24], v0[22]);

    v18 = getSEABASSOIDS();
    v0[27] = v18;
    if (!v18)
    {
      __break(1u);
      return DIPRetrier.retry<A>(operation:)(v18, v19, v20, v21);
    }

    v22 = v18;
    v23 = v2;
    v24 = String._bridgeToObjectiveC()();
    v25 = SecKeySetParameter();

    if (v25)
    {
      if (qword_100832CF8 != -1)
      {
        swift_once();
      }

      v27 = v0[14];
      v26 = v0[15];
      v28 = v0[13];
      v30 = v0[8];
      v29 = v0[9];
      sub_1005B0650();
      *v26 = sub_1005B083C();
      (*(v27 + 104))(v26, enum case for DIPBackoffStrategy.linear(_:), v28);
      DIPRetrier.init(maxRetries:backoffStrategy:)();
      sub_100007224(&qword_100834430, &qword_1006BFEA8);
      inited = swift_initStackObject();
      v0[28] = inited;
      *(inited + 32) = 0;
      *(inited + 16) = v23;
      *(inited + 24) = v38;
      v32 = swift_task_alloc();
      v0[29] = v32;
      v32[2] = inited;
      v32[3] = v30;
      v32[4] = v29;
      v33 = v23;
      v34 = v38;
      v18 = swift_task_alloc();
      v0[30] = v18;
      *v18 = v0;
      v18[1] = sub_100036DFC;
      v19 = &unk_1006BFEB8;
      v21 = &type metadata for () + 8;
      v20 = v32;

      return DIPRetrier.retry<A>(operation:)(v18, v19, v20, v21);
    }

    v36 = v0[11];
    v35 = v0[12];
    v37 = v0[10];
    (*(v36 + 104))(v35, enum case for DIPError.Code.secKeySetParameterFailed(_:), v37);
    errorFromCFError(_:_:_:)();
    (*(v36 + 8))(v35, v37);
    swift_willThrow();
  }

  else
  {
    v10 = v0[11];
    v9 = v0[12];
    v11 = v0[10];
    (*(v10 + 104))(v9, enum case for DIPError.Code.secKeyCopyAttestationKeyFailed(_:), v11);
    errorFromCFError(_:_:_:)();
    (*(v10 + 8))(v9, v11);
    swift_willThrow();
  }

  v16 = v0[1];

  return v16();
}

uint64_t sub_100036DFC()
{
  *(*v1 + 248) = v0;

  if (v0)
  {
    v2 = sub_100037088;
  }

  else
  {
    v2 = sub_100036F5C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100036F5C()
{
  v2 = v0[27];
  v1 = v0[28];
  v3 = v0[25];
  v4 = v0[26];
  v6 = v0[17];
  v5 = v0[18];
  v7 = v0[16];
  swift_setDeallocating();

  (*(v6 + 8))(v5, v7);

  v8 = v0[1];

  return v8();
}

uint64_t sub_100037088()
{
  v2 = v0[27];
  v1 = v0[28];
  v4 = v0[25];
  v3 = v0[26];
  v6 = v0[17];
  v5 = v0[18];
  v7 = v0[16];
  swift_setDeallocating();

  (*(v6 + 8))(v5, v7);

  v8 = v0[1];

  return v8();
}

uint64_t sub_1000371AC(uint64_t a1)
{
  v2 = sub_100007224(&qword_100849FA0, &qword_1006BFEA0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_100037214()
{
  result = qword_100834130;
  if (!qword_100834130)
  {
    type metadata accessor for DIPError();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100834130);
  }

  return result;
}

uint64_t sub_10003726C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100027B9C;

  return sub_100035094(a1, v4, v5, v6);
}

unint64_t sub_100037320()
{
  result = qword_100834448;
  if (!qword_100834448)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100834448);
  }

  return result;
}

uint64_t sub_10003736C(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  *(v6 + 408) = a5;
  *(v6 + 416) = v5;
  *(v6 + 392) = a2;
  *(v6 + 400) = a4;
  *(v6 + 668) = a3;
  *(v6 + 384) = a1;
  v7 = type metadata accessor for DIPError.Code();
  *(v6 + 424) = v7;
  *(v6 + 432) = *(v7 - 8);
  *(v6 + 440) = swift_task_alloc();
  v8 = type metadata accessor for Logger();
  *(v6 + 448) = v8;
  *(v6 + 456) = *(v8 - 8);
  *(v6 + 464) = swift_task_alloc();
  *(v6 + 472) = swift_task_alloc();
  v9 = type metadata accessor for HardwareAttestationType();
  *(v6 + 480) = v9;
  *(v6 + 488) = *(v9 - 8);
  *(v6 + 496) = swift_task_alloc();
  *(v6 + 504) = swift_task_alloc();
  *(v6 + 512) = swift_task_alloc();
  *(v6 + 520) = swift_task_alloc();

  return _swift_task_switch(sub_100037520, 0, 0);
}

uint64_t sub_100037520()
{
  v100 = v0;
  sub_100032E90(*(v0 + 392), *(v0 + 520));
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v5 = *(v0 + 472);
    v6 = *(v0 + 448);
    v7 = *(v0 + 456);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v98 = v9;
    *v8 = 136446210;
    swift_beginAccess();
    v10 = HardwareAttestationType.rawValue.getter();
    v12 = sub_100141FE4(v10, v11, &v98);

    *(v8 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v2, v3, "pre-selected attestation type is %{public}s", v8, 0xCu);
    sub_10000BB78(v9);

    v13 = *(v7 + 8);
    v13(v5, v6);
  }

  else
  {
    v14 = *(v0 + 472);
    v15 = *(v0 + 448);
    v16 = *(v0 + 456);

    v13 = *(v16 + 8);
    v13(v14, v15);
  }

  *(v0 + 528) = v13;
  v17 = *(v0 + 408);
  v18 = *(v0 + 668);
  swift_beginAccess();
  v98 = HardwareAttestationType.rawValue.getter();
  v99 = v19;
  v20._countAndFlagsBits = 45;
  v20._object = 0xE100000000000000;
  String.append(_:)(v20);
  if (v18)
  {
    v21 = 1702195828;
  }

  else
  {
    v21 = 0x65736C6166;
  }

  if (v18)
  {
    v22 = 0xE400000000000000;
  }

  else
  {
    v22 = 0xE500000000000000;
  }

  v23 = v22;
  String.append(_:)(*&v21);

  v24._countAndFlagsBits = 45;
  v24._object = 0xE100000000000000;
  String.append(_:)(v24);
  if (v17 >> 60 == 15)
  {
    countAndFlagsBits = 0;
    object = 0xE000000000000000;
  }

  else
  {
    v27 = Data.base64EncodedString(options:)(0);
    countAndFlagsBits = v27._countAndFlagsBits;
    object = v27._object;
  }

  v28 = *(v0 + 416);
  v29 = object;
  String.append(_:)(*&countAndFlagsBits);

  v31 = v98;
  v30 = v99;
  *(v0 + 536) = v98;
  *(v0 + 544) = v30;
  swift_beginAccess();
  v32 = *(v28 + 16);
  if (!*(v32 + 16))
  {
LABEL_22:
    v41 = *(v0 + 512);
    v42 = *(v0 + 488);
    *(v0 + 16) = 0u;
    *(v0 + 32) = 0u;
    *(v0 + 48) = 0;
    *(v0 + 664) = enum case for HardwareAttestationType.SE(_:);
    v43 = *(v42 + 104);
    *(v0 + 552) = v43;
    *(v0 + 560) = (v42 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
    v43(v41);
    *(v0 + 568) = sub_1000398CC(&qword_100834380, &type metadata accessor for HardwareAttestationType, &protocol conformance descriptor for HardwareAttestationType);
    dispatch thunk of RawRepresentable.rawValue.getter();
    dispatch thunk of RawRepresentable.rawValue.getter();
    if (*(v0 + 320) == *(v0 + 336) && *(v0 + 328) == *(v0 + 344))
    {
      v44 = 1;
    }

    else
    {
      v44 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }

    v45 = *(v0 + 512);
    v46 = *(v0 + 480);
    v47 = *(v0 + 488);
    v48 = *(v47 + 8);
    *(v0 + 576) = v48;
    *(v0 + 584) = (v47 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v48(v45, v46);

    if (v44)
    {
      v49 = *(*(v0 + 416) + 24);
      if (v49 == 2 || (v49 & 1) != 0)
      {
        v50 = *(v0 + 400);
        v51 = *(v0 + 408);
        *(v0 + 592) = type metadata accessor for DIPKeystoreSecureElement(0);
        swift_allocObject();
        sub_1000363B4(v50, v51);
        v52 = swift_task_alloc();
        *(v0 + 600) = v52;
        *v52 = v0;
        v53 = sub_10003800C;
        goto LABEL_39;
      }

      v54 = *(v0 + 520);
      v55 = *(v0 + 504);
      v56 = *(v0 + 480);
      v57 = *(v0 + 488);
      (v43)(v55, enum case for HardwareAttestationType.SEP(_:), v56);
      swift_beginAccess();
      (*(v57 + 40))(v54, v55, v56);
    }

    defaultLogger()();
    v58 = Logger.logObject.getter();
    v59 = static os_log_type_t.info.getter();
    v60 = os_log_type_enabled(v58, v59);
    v61 = *(v0 + 528);
    if (v60)
    {
      v97 = *(v0 + 464);
      v62 = *(v0 + 448);
      v63 = swift_slowAlloc();
      v64 = swift_slowAlloc();
      v98 = v64;
      *v63 = 136446210;
      v65 = HardwareAttestationType.rawValue.getter();
      v67 = sub_100141FE4(v65, v66, &v98);

      *(v63 + 4) = v67;
      _os_log_impl(&_mh_execute_header, v58, v59, "final selected attestation type is %{public}s", v63, 0xCu);
      sub_10000BB78(v64);

      v68 = v97;
      v69 = v62;
    }

    else
    {
      v70 = *(v0 + 464);
      v71 = *(v0 + 448);

      v68 = v70;
      v69 = v71;
    }

    v61(v68, v69);
    (*(v0 + 552))(*(v0 + 496), enum case for HardwareAttestationType.SEP(_:), *(v0 + 480));
    dispatch thunk of RawRepresentable.rawValue.getter();
    dispatch thunk of RawRepresentable.rawValue.getter();
    v72 = *(v0 + 576);
    v73 = *(v0 + 496);
    v74 = *(v0 + 480);
    if (*(v0 + 352) == *(v0 + 368) && *(v0 + 360) == *(v0 + 376))
    {
      v72(*(v0 + 496), *(v0 + 480));
    }

    else
    {
      v75 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v72(v73, v74);

      if ((v75 & 1) == 0)
      {
        v81 = *(v0 + 576);
        v82 = *(v0 + 504);
        v83 = *(v0 + 480);
        (*(v0 + 552))(v82, *(v0 + 664), v83);
        sub_1000398CC(&unk_100849F80, &type metadata accessor for HardwareAttestationType, &protocol conformance descriptor for HardwareAttestationType);
        v84 = dispatch thunk of static Equatable.== infix(_:_:)();
        v81(v82, v83);
        if ((v84 & 1) == 0)
        {
          v91 = *(v0 + 576);
          v92 = *(v0 + 520);
          v93 = *(v0 + 480);
          v95 = *(v0 + 432);
          v94 = *(v0 + 440);
          v96 = *(v0 + 424);

          (*(v95 + 104))(v94, enum case for DIPError.Code.unimplemented(_:), v96);
          sub_1000402AC(_swiftEmptyArrayStorage);
          type metadata accessor for DIPError();
          sub_1000398CC(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
          swift_allocError();
          DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
          swift_willThrow();
          sub_1000343EC(v0 + 16);
          v91(v92, v93);

          v40 = *(v0 + 8);
          goto LABEL_2;
        }

        v80 = sub_10003437C(v0 + 16, v0 + 96);
        if (*(v0 + 120))
        {
          v85 = *(v0 + 544);
          v86 = *(v0 + 536);
          sub_10001F358((v0 + 96), v0 + 56);
          swift_beginAccess();

          sub_10014BB48(v0 + 56, v86, v85);
          swift_endAccess();
          v80 = sub_10003437C(v0 + 16, v0 + 136);
          if (*(v0 + 160))
          {
            v87 = *(v0 + 576);
            v88 = *(v0 + 520);
            v89 = *(v0 + 480);
            v90 = *(v0 + 384);
            sub_1000343EC(v0 + 16);

            sub_10001F358((v0 + 136), v90);
            v87(v88, v89);
            goto LABEL_20;
          }
        }

        else
        {
          __break(1u);
        }

        __break(1u);
        return DIPKeystoreKeychain.init(requireUserAuth:externalizedLAContext:)(v80, v78, v79);
      }
    }

    v76 = *(v0 + 400);
    v77 = *(v0 + 408);
    *(v0 + 632) = type metadata accessor for DIPKeystoreKeychain();
    swift_allocObject();
    sub_1000363B4(v76, v77);
    v52 = swift_task_alloc();
    *(v0 + 640) = v52;
    *v52 = v0;
    v53 = sub_100038A94;
LABEL_39:
    v52[1] = v53;
    v78 = *(v0 + 400);
    v79 = *(v0 + 408);
    v80 = *(v0 + 668);

    return DIPKeystoreKeychain.init(requireUserAuth:externalizedLAContext:)(v80, v78, v79);
  }

  v33 = sub_10003ADCC(v31, v30);
  if ((v34 & 1) == 0)
  {

    goto LABEL_22;
  }

  v35 = v33;
  v36 = *(v0 + 520);
  v37 = *(v0 + 480);
  v38 = *(v0 + 488);
  v39 = *(v0 + 384);

  sub_100020260(*(v32 + 56) + 40 * v35, v39);

  (*(v38 + 8))(v36, v37);
LABEL_20:

  v40 = *(v0 + 8);
LABEL_2:

  return v40();
}

uint64_t sub_10003800C(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 608) = v1;

  if (v1)
  {
    v5 = sub_1000389AC;
  }

  else
  {
    *(v4 + 616) = a1;
    v5 = sub_100038134;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100038134()
{
  v1 = v0[77];
  v2 = v0[74];
  sub_1000343EC((v0 + 2));
  v0[2] = v1;
  v0[5] = v2;
  v0[6] = &protocol witness table for DIPKeystoreKeychain;
  v3 = swift_task_alloc();
  v0[78] = v3;
  *v3 = v0;
  v3[1] = sub_1000381EC;

  return sub_100033918((v0 + 2), 0);
}

uint64_t sub_1000381EC(char a1)
{
  *(*v1 + 669) = a1;

  return _swift_task_switch(sub_1000382EC, 0, 0);
}

uint64_t sub_1000382EC(uint64_t a1)
{
  v51 = v1;
  if (*(v1 + 669) == 1)
  {
    *(*(v1 + 416) + 24) = 1;
  }

  else
  {
    v2 = *(v1 + 552);
    v3 = *(v1 + 520);
    v4 = *(v1 + 504);
    v5 = *(v1 + 480);
    v6 = *(v1 + 488);
    *(*(v1 + 416) + 24) = 0;
    v2(v4, enum case for HardwareAttestationType.SEP(_:), v5);
    swift_beginAccess();
    (*(v6 + 40))(v3, v4, v5);
  }

  defaultLogger()();
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.info.getter();
  v9 = os_log_type_enabled(v7, v8);
  v10 = *(v1 + 528);
  if (v9)
  {
    v49 = *(v1 + 464);
    v11 = *(v1 + 448);
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v50 = v13;
    *v12 = 136446210;
    v14 = HardwareAttestationType.rawValue.getter();
    v16 = sub_100141FE4(v14, v15, &v50);

    *(v12 + 4) = v16;
    _os_log_impl(&_mh_execute_header, v7, v8, "final selected attestation type is %{public}s", v12, 0xCu);
    sub_10000BB78(v13);

    v17 = v49;
    v18 = v11;
  }

  else
  {
    v19 = *(v1 + 464);
    v20 = *(v1 + 448);

    v17 = v19;
    v18 = v20;
  }

  v10(v17, v18);
  (*(v1 + 552))(*(v1 + 496), enum case for HardwareAttestationType.SEP(_:), *(v1 + 480));
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  v21 = *(v1 + 576);
  v22 = *(v1 + 496);
  v23 = *(v1 + 480);
  if (*(v1 + 352) == *(v1 + 368) && *(v1 + 360) == *(v1 + 376))
  {
    v21(*(v1 + 496), *(v1 + 480));

    goto LABEL_11;
  }

  v24 = _stringCompareWithSmolCheck(_:_:expecting:)();
  v21(v22, v23);

  if (v24)
  {
LABEL_11:
    v25 = *(v1 + 400);
    v26 = *(v1 + 408);
    *(v1 + 632) = type metadata accessor for DIPKeystoreKeychain();
    swift_allocObject();
    sub_1000363B4(v25, v26);
    v27 = swift_task_alloc();
    *(v1 + 640) = v27;
    *v27 = v1;
    v27[1] = sub_100038A94;
    v28 = *(v1 + 400);
    v29 = *(v1 + 408);
    v30 = *(v1 + 668);

    return DIPKeystoreKeychain.init(requireUserAuth:externalizedLAContext:)(v30, v28, v29);
  }

  v31 = *(v1 + 576);
  v32 = *(v1 + 504);
  v33 = *(v1 + 480);
  (*(v1 + 552))(v32, *(v1 + 664), v33);
  sub_1000398CC(&unk_100849F80, &type metadata accessor for HardwareAttestationType, &protocol conformance descriptor for HardwareAttestationType);
  v34 = dispatch thunk of static Equatable.== infix(_:_:)();
  v31(v32, v33);
  if ((v34 & 1) == 0)
  {
    v42 = *(v1 + 576);
    v43 = *(v1 + 520);
    v44 = *(v1 + 480);
    v46 = *(v1 + 432);
    v45 = *(v1 + 440);
    v47 = *(v1 + 424);

    (*(v46 + 104))(v45, enum case for DIPError.Code.unimplemented(_:), v47);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1000398CC(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    sub_1000343EC(v1 + 16);
    v42(v43, v44);

    v41 = *(v1 + 8);
    goto LABEL_19;
  }

  v30 = sub_10003437C(v1 + 16, v1 + 96);
  if (!*(v1 + 120))
  {
    __break(1u);
    goto LABEL_23;
  }

  v35 = *(v1 + 544);
  v36 = *(v1 + 536);
  sub_10001F358((v1 + 96), v1 + 56);
  swift_beginAccess();

  sub_10014BB48(v1 + 56, v36, v35);
  swift_endAccess();
  v30 = sub_10003437C(v1 + 16, v1 + 136);
  if (!*(v1 + 160))
  {
LABEL_23:
    __break(1u);
    return DIPKeystoreKeychain.init(requireUserAuth:externalizedLAContext:)(v30, v28, v29);
  }

  v37 = *(v1 + 576);
  v38 = *(v1 + 520);
  v39 = *(v1 + 480);
  v40 = *(v1 + 384);
  sub_1000343EC(v1 + 16);

  sub_10001F358((v1 + 136), v40);
  v37(v38, v39);

  v41 = *(v1 + 8);
LABEL_19:

  return v41();
}

uint64_t sub_1000389AC()
{
  v1 = v0[72];
  v2 = v0[65];
  v3 = v0[60];

  sub_1000343EC((v0 + 2));
  v1(v2, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_100038A94(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 648) = v1;

  if (v1)
  {

    v5 = sub_100038D58;
  }

  else
  {
    *(v4 + 656) = a1;
    v5 = sub_100038BC4;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100038BC4()
{
  v1 = *(v0 + 656);
  v2 = *(v0 + 632);
  sub_1000343EC(v0 + 16);
  *(v0 + 16) = v1;
  *(v0 + 40) = v2;
  *(v0 + 48) = &protocol witness table for DIPKeystoreKeychain;
  result = sub_10003437C(v0 + 16, v0 + 96);
  if (!*(v0 + 120))
  {
    __break(1u);
    goto LABEL_7;
  }

  v4 = *(v0 + 544);
  v5 = *(v0 + 536);
  sub_10001F358((v0 + 96), v0 + 56);
  swift_beginAccess();

  sub_10014BB48(v0 + 56, v5, v4);
  swift_endAccess();
  result = sub_10003437C(v0 + 16, v0 + 136);
  if (!*(v0 + 160))
  {
LABEL_7:
    __break(1u);
    return result;
  }

  v6 = *(v0 + 576);
  v7 = *(v0 + 520);
  v8 = *(v0 + 480);
  v9 = *(v0 + 384);
  sub_1000343EC(v0 + 16);

  sub_10001F358((v0 + 136), v9);
  v6(v7, v8);

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_100038D58()
{
  v1 = v0[72];
  v2 = v0[65];
  v3 = v0[60];
  sub_1000343EC((v0 + 2));
  v1(v2, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_100038E38()
{

  return swift_deallocClassInstance();
}

__n128 sub_100038E94(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_100038EA8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100038EF0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100038F4C(uint64_t a1, uint64_t a2)
{
  v2[7] = a1;
  v2[8] = a2;
  v3 = type metadata accessor for Logger();
  v2[9] = v3;
  v2[10] = *(v3 - 8);
  v2[11] = swift_task_alloc();
  v4 = type metadata accessor for DIPError.Code();
  v2[12] = v4;
  v2[13] = *(v4 - 8);
  v2[14] = swift_task_alloc();
  v5 = type metadata accessor for DIPError();
  v2[15] = v5;
  v2[16] = *(v5 - 8);
  v2[17] = swift_task_alloc();

  return _swift_task_switch(sub_1000390C4, 0, 0);
}

uint64_t sub_1000390C4()
{
  type metadata accessor for DIPAccountManager();
  static DIPAccountManager.sharedInstance.getter();
  sub_10000BA08(v0 + 2, v0[5]);
  v1 = dispatch thunk of DIPAccountManagerProtocol.primaryAppleAccountIdentifier()();
  v3 = v2;
  v4 = v1;
  sub_10000BB78(v0 + 2);

  v5._countAndFlagsBits = 46;
  v5._object = 0xE100000000000000;
  String.append(_:)(v5);

  v6._countAndFlagsBits = v4;
  v6._object = v3;
  String.append(_:)(v6);

  type metadata accessor for DIPKeystoreKeychain();
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  static DIPKeystoreKeychain.deleteKeychainItem(label:serialNumber:secClass:)();

  IDV_INTERMEDIATE_CERT_KEYCHAIN_LABEL.getter();
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  static DIPKeystoreKeychain.deleteKeychainItem(label:serialNumber:secClass:)();

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  static DIPKeystoreKeychain.deleteKeychainItem(label:serialNumber:secClass:)();

  v8 = v0[1];

  return v8();
}

uint64_t sub_1000398CC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100039914()
{
  v0 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v4 - 8);
  v5 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v5 - 8);
  type metadata accessor for RewrapService();
  v6 = swift_allocObject();
  sub_10001F8D4(0, &qword_100845BD0, OS_dispatch_queue_ptr);
  static OS_dispatch_queue.Attributes.concurrent.getter();
  static DispatchQoS.unspecified.getter();
  (*(v1 + 104))(v3, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v0);
  result = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  *(v6 + 16) = result;
  qword_100881EB8 = v6;
  return result;
}

void sub_100039AEC(unint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  v7 = type metadata accessor for DIPKeyAlgorithm();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DIPError.Code();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v15 = &v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v16 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v16)
  {
    (*(v12 + 104))(v15, enum case for DIPError.Code.internalError(_:));
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_10004057C(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
LABEL_9:
    swift_willThrow();
    return;
  }

  v44 = v3;
  v45 = v13;
  error = 0;
  v17 = SecAccessControlCreateWithFlags(kCFAllocatorDefault, kSecAttrAccessibleAfterFirstUnlockThisDeviceOnly, 0x40000000uLL, &error);
  if (!v17)
  {
    v27 = v45;
    (*(v12 + 104))(v15, enum case for DIPError.Code.keychainAccessControlFailure(_:), v45);
    errorFromCFError(_:_:_:)();
    (*(v12 + 8))(v15, v27);
    goto LABEL_9;
  }

  v18 = v17;
  v41 = a1;
  v40 = a3;
  v43 = v15;
  sub_100007224(&qword_100834440, &qword_1006BFEC8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1006BF520;
  *(inited + 32) = 1952671087;
  v20 = inited + 32;
  *(inited + 40) = 0xE400000000000000;
  *(inited + 72) = &type metadata for Bool;
  *(inited + 48) = 1;
  sub_10003D8DC(inited);
  swift_setDeallocating();
  sub_1000404B8(v20);
  v21 = v18;
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  SecAccessControlSetConstraints();

  type metadata accessor for DIPCryptoKeychain();
  (*(v8 + 104))(v10, enum case for DIPKeyAlgorithm.ECIES_REWRAP(_:), v7);
  v23 = v44;
  v24 = dispatch thunk of static DIPCryptoKeychain.generateKeyAsym(_:_:)();
  v26 = (v8 + 8);
  v42 = v21;
  if (v23)
  {
    (*v26)(v10, v7);

    swift_getErrorValue();
    v33._countAndFlagsBits = Error.localizedDescription.getter();
    v46 = 0xD000000000000025;
    v47 = 0x80000001006FC7F0;
    String.append(_:)(v33);

    (*(v12 + 104))(v43, enum case for DIPError.Code.internalError(_:), v45);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_10004057C(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
  }

  else
  {
    v28 = v24;
    v29 = v25;
    (*v26)(v10, v7);

    v46 = v41;
    v47 = a2;

    v30._countAndFlagsBits = 0x727765727065732ELL;
    v30._object = 0xEA00000000007061;
    String.append(_:)(v30);
    v32 = v46;
    v31 = v47;
    type metadata accessor for DIPKeystoreKeychain();
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    static DIPKeystoreKeychain.deleteKeychainItem(label:serialNumber:secClass:)();

    static DIPKeystoreKeychain.storeKeychainKey(_:label:)();
    v34 = type metadata accessor for RewrapKeySecKey();
    v35 = swift_allocObject();
    v36 = v28;
    v37 = v35;
    v35[2] = v36;
    v35[3] = v32;
    v35[4] = v31;
    v38 = v40;
    v40[3] = v34;
    v38[4] = &off_1007FD8F0;

    *v38 = v37;
  }
}

void sub_10003A22C(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for DIPError.Code();
  v26 = *(v6 - 8);
  __chkstk_darwin(v6);
  v27 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = a1;
  v30 = a2;

  v8._countAndFlagsBits = 0x727765727065732ELL;
  v8._object = 0xEA00000000007061;
  String.append(_:)(v8);
  v9 = v29;
  v10 = v30;
  sub_100007224(&qword_100834440, &qword_1006BFEC8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1006BFF90;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 72) = &type metadata for String;
  *(inited + 40) = v12;
  *(inited + 48) = v9;
  *(inited + 56) = v10;
  *(inited + 80) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 88) = v13;
  type metadata accessor for CFString(0);
  *(inited + 120) = v14;
  *(inited + 96) = kSecClassKey;
  *(inited + 128) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 136) = v15;
  *(inited + 168) = &type metadata for Bool;
  *(inited + 144) = 1;

  v16 = kSecClassKey;
  sub_10003D8DC(inited);
  swift_setDeallocating();
  sub_100007224(&qword_100834450, &unk_1006BFED0);
  swift_arrayDestroy();
  result = 0;
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  v18 = SecItemCopyMatching(isa, &result);

  if (v18)
  {

    if (v18 == -25300)
    {

      *(a3 + 32) = 0;
      *a3 = 0u;
      *(a3 + 16) = 0u;
    }

    else
    {
      v29 = 0;
      v30 = 0xE000000000000000;
      _StringGuts.grow(_:)(56);
      v22._countAndFlagsBits = 0xD000000000000025;
      v22._object = 0x80000001006FC500;
      String.append(_:)(v22);
      v23._countAndFlagsBits = v9;
      v23._object = v10;
      String.append(_:)(v23);

      v24._countAndFlagsBits = 0x7473206874697720;
      v24._object = 0xEF203D2073757461;
      String.append(_:)(v24);
      v28 = v18;
      v25._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v25);

      (*(v26 + 104))(v27, enum case for DIPError.Code.internalError(_:), v6);
      sub_1000402AC(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_10004057C(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
      swift_allocError();
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      swift_willThrow();
    }

    goto LABEL_7;
  }

  if (result)
  {
    swift_unknownObjectRetain();

    type metadata accessor for SecKey(0);
    v19 = swift_dynamicCastUnknownClassUnconditional();
    v20 = type metadata accessor for RewrapKeySecKey();
    v21 = swift_allocObject();
    v21[2] = v19;
    v21[3] = v9;
    v21[4] = v10;
    *(a3 + 24) = v20;
    *(a3 + 32) = &off_1007FD8F0;
    *a3 = v21;
LABEL_7:
    swift_unknownObjectRelease();
    return;
  }

  __break(1u);
}

uint64_t sub_10003A73C()
{

  return swift_deallocClassInstance();
}

uint64_t sub_10003A798(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v9[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  static DispatchWorkItemFlags.barrier.getter();
  v10 = a1;
  v11 = a2;
  sub_100007224(&qword_100834700, &qword_1006C0000);
  OS_dispatch_queue.sync<A>(flags:execute:)();
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_10003A94C()
{

  return swift_deallocClassInstance();
}

unint64_t sub_10003A9CC(uint64_t a1)
{
  type metadata accessor for DIPError.PropertyKey();
  sub_10004057C(&qword_1008346E8, &type metadata accessor for DIPError.PropertyKey, &protocol conformance descriptor for DIPError.PropertyKey);
  v2 = dispatch thunk of Hashable._rawHashValue(seed:)();

  return sub_10003AA64(a1, v2);
}

unint64_t sub_10003AA64(uint64_t a1, uint64_t a2)
{
  v19 = a1;
  v4 = type metadata accessor for DIPError.PropertyKey();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = v2;
  v8 = -1 << *(v2 + 32);
  v9 = a2 & ~v8;
  v18 = v2 + 64;
  if ((*(v2 + 64 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    v13 = *(v5 + 16);
    v12 = v5 + 16;
    v11 = v13;
    v14 = *(v12 + 56);
    do
    {
      v11(v7, *(v20 + 48) + v14 * v9, v4);
      sub_10004057C(&qword_1008346F0, &type metadata accessor for DIPError.PropertyKey, &protocol conformance descriptor for DIPError.PropertyKey);
      v15 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v12 - 8))(v7, v4);
      if (v15)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(v18 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  return v9;
}

unint64_t sub_10003AC24(uint64_t a1)
{
  type metadata accessor for IdentityElement();
  sub_10004057C(&qword_1008347A8, &type metadata accessor for IdentityElement, &protocol conformance descriptor for IdentityElement);
  v2 = dispatch thunk of Hashable._rawHashValue(seed:)();
  return sub_10003BA44(a1, v2, &type metadata accessor for IdentityElement, &qword_1008347B0, &type metadata accessor for IdentityElement, &protocol conformance descriptor for IdentityElement);
}

unint64_t sub_10003ACF8(uint64_t a1)
{
  type metadata accessor for Locale();
  sub_10004057C(&qword_100834788, &type metadata accessor for Locale, &protocol conformance descriptor for Locale);
  v2 = dispatch thunk of Hashable._rawHashValue(seed:)();
  return sub_10003BA44(a1, v2, &type metadata accessor for Locale, &qword_100834790, &type metadata accessor for Locale, &protocol conformance descriptor for Locale);
}

unint64_t sub_10003ADF8(uint64_t a1)
{
  type metadata accessor for Locale.Region();
  sub_10004057C(&qword_100834778, &type metadata accessor for Locale.Region, &protocol conformance descriptor for Locale.Region);
  v2 = dispatch thunk of Hashable._rawHashValue(seed:)();
  return sub_10003BA44(a1, v2, &type metadata accessor for Locale.Region, &qword_100834780, &type metadata accessor for Locale.Region, &protocol conformance descriptor for Locale.Region);
}

unint64_t sub_10003AECC(uint64_t a1)
{
  v2 = v1;
  v4 = AnyHashable._rawHashValue(seed:)(*(v2 + 40));

  return sub_10003BC9C(a1, v4);
}

unint64_t sub_10003AF10(uint64_t a1)
{
  type metadata accessor for DIPError.PropertyKey();
  sub_10004057C(&qword_1008346E8, &type metadata accessor for DIPError.PropertyKey, &protocol conformance descriptor for DIPError.PropertyKey);
  v2 = dispatch thunk of Hashable._rawHashValue(seed:)();
  return sub_10003BA44(a1, v2, &type metadata accessor for DIPError.PropertyKey, &qword_1008346F0, &type metadata accessor for DIPError.PropertyKey, &protocol conformance descriptor for DIPError.PropertyKey);
}

unint64_t sub_10003AFE4(uint64_t a1)
{
  v2 = static Hasher._hash(seed:_:)();

  return sub_10003BD64(a1, v2);
}

unint64_t sub_10003B028(uint64_t a1)
{
  v2 = v1;
  v4 = NSObject._rawHashValue(seed:)(*(v2 + 40));
  return sub_10003C1E4(a1, v4, &qword_100833A40, CKRecordZoneID_ptr);
}

unint64_t sub_10003B078(uint64_t a1)
{
  v1 = a1;
  Hasher.init(_seed:)();
  sub_1000221FC();
  String.hash(into:)();

  v2 = Hasher._finalize()();

  return sub_10003BDD0(v1, v2);
}

unint64_t sub_10003B100(uint64_t a1)
{
  type metadata accessor for IdentityKeyGenerationOption();
  sub_10004057C(&qword_1008347C8, &type metadata accessor for IdentityKeyGenerationOption, &protocol conformance descriptor for IdentityKeyGenerationOption);
  v2 = dispatch thunk of Hashable._rawHashValue(seed:)();
  return sub_10003BA44(a1, v2, &type metadata accessor for IdentityKeyGenerationOption, &qword_1008347D0, &type metadata accessor for IdentityKeyGenerationOption, &protocol conformance descriptor for IdentityKeyGenerationOption);
}

unint64_t sub_10003B1D8(uint64_t a1)
{
  v2 = v1;
  v4 = NSObject._rawHashValue(seed:)(*(v2 + 40));

  return sub_10003C120(a1, v4);
}

unint64_t sub_10003B21C(uint64_t a1)
{
  type metadata accessor for IQCType();
  sub_10004057C(&qword_100834900, &type metadata accessor for IQCType, &protocol conformance descriptor for IQCType);
  v2 = dispatch thunk of Hashable._rawHashValue(seed:)();
  return sub_10003BA44(a1, v2, &type metadata accessor for IQCType, &qword_100834908, &type metadata accessor for IQCType, &protocol conformance descriptor for IQCType);
}

unint64_t sub_10003B2F0(Swift::UInt a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1);
  v2 = Hasher._finalize()();

  return sub_10003BD64(a1, v2);
}

unint64_t sub_10003B35C(uint64_t a1)
{
  v2 = v1;
  v4 = NSObject._rawHashValue(seed:)(*(v2 + 40));
  return sub_10003C1E4(a1, v4, &qword_100845EE0, NSString_ptr);
}

unint64_t sub_10003B3AC(uint64_t a1)
{
  type metadata accessor for ECIESOption();
  sub_10004057C(&qword_1008347E8, &type metadata accessor for ECIESOption, &protocol conformance descriptor for ECIESOption);
  v2 = dispatch thunk of Hashable._rawHashValue(seed:)();
  return sub_10003BA44(a1, v2, &type metadata accessor for ECIESOption, &qword_1008347F0, &type metadata accessor for ECIESOption, &protocol conformance descriptor for ECIESOption);
}

unint64_t sub_10003B480(uint64_t a1)
{
  type metadata accessor for ISO18013KnownDocTypes();
  sub_10004057C(&qword_1008348B0, &type metadata accessor for ISO18013KnownDocTypes, &protocol conformance descriptor for ISO18013KnownDocTypes);
  v2 = dispatch thunk of Hashable._rawHashValue(seed:)();
  return sub_10003BA44(a1, v2, &type metadata accessor for ISO18013KnownDocTypes, &qword_1008348B8, &type metadata accessor for ISO18013KnownDocTypes, &protocol conformance descriptor for ISO18013KnownDocTypes);
}

unint64_t sub_10003B580(uint64_t a1)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v2 = Hasher._finalize()();

  return sub_10003C8BC(a1, v2);
}

unint64_t sub_10003B610(uint64_t a1)
{
  type metadata accessor for DIPSignpost.Config();
  sub_10004057C(&qword_100834878, &type metadata accessor for DIPSignpost.Config, &protocol conformance descriptor for DIPSignpost.Config);
  v2 = dispatch thunk of Hashable._rawHashValue(seed:)();
  return sub_10003BA44(a1, v2, &type metadata accessor for DIPSignpost.Config, &qword_100834880, &type metadata accessor for DIPSignpost.Config, &protocol conformance descriptor for DIPSignpost.Config);
}

unint64_t sub_10003B6E4(uint64_t a1)
{
  v1 = a1;
  Hasher.init(_seed:)();
  String.hash(into:)();

  v2 = Hasher._finalize()();

  return sub_10003C6B0(v1, v2);
}

unint64_t sub_10003B808(uint64_t a1)
{
  type metadata accessor for EncryptedMessageEntity();
  sub_10004057C(&qword_100834938, &type metadata accessor for EncryptedMessageEntity, &protocol conformance descriptor for EncryptedMessageEntity);
  v2 = dispatch thunk of Hashable._rawHashValue(seed:)();
  return sub_10003BA44(a1, v2, &type metadata accessor for EncryptedMessageEntity, &qword_100834940, &type metadata accessor for EncryptedMessageEntity, &protocol conformance descriptor for EncryptedMessageEntity);
}

uint64_t sub_10003B8DC(uint64_t a1, uint64_t a2, void (*a3)(void *, uint64_t, uint64_t), uint64_t (*a4)(uint64_t, uint64_t, Swift::Int))
{
  Hasher.init(_seed:)();
  a3(v10, a1, a2);
  v7 = Hasher._finalize()();

  return a4(a1, a2, v7);
}

unint64_t sub_10003B970(uint64_t a1)
{
  type metadata accessor for MobileDocumentType();
  sub_10004057C(&qword_100834750, &type metadata accessor for MobileDocumentType, &protocol conformance descriptor for MobileDocumentType);
  v2 = dispatch thunk of Hashable._rawHashValue(seed:)();
  return sub_10003BA44(a1, v2, &type metadata accessor for MobileDocumentType, &qword_100834758, &type metadata accessor for MobileDocumentType, &protocol conformance descriptor for MobileDocumentType);
}

unint64_t sub_10003BA44(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, uint64_t (*a5)(uint64_t), uint64_t a6)
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
      sub_10004057C(v23, v24, v25);
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

unint64_t sub_10003BBE4(uint64_t a1, uint64_t a2, uint64_t a3)
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

unint64_t sub_10003BC9C(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      sub_100040520(*(v2 + 48) + 40 * v4, v8);
      v6 = static AnyHashable.== infix(_:_:)();
      sub_1000279C8(v8);
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

unint64_t sub_10003BD64(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_10003BDD0(unsigned __int8 a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v26 = ~v3;
    v5 = 0xEA00000000007075;
    v6 = 0x80000001006F88F0;
    v27 = a1;
    while (1)
    {
      v7 = *(*(v28 + 48) + v4);
      v29 = v4;
      if (v7 > 4)
      {
        if (*(*(v28 + 48) + v4) <= 6u)
        {
          if (v7 == 5)
          {
            v12 = 0xD000000000000010;
            v13 = 0x80000001006F8940;
          }

          else
          {
            v12 = 0xD000000000000018;
            v13 = 0x80000001006F8960;
          }
        }

        else if (v7 == 7)
        {
          v12 = 0x6F5A6574656C6564;
          v13 = 0xEB0000000073656ELL;
        }

        else if (v7 == 8)
        {
          v12 = 0x6465686361747461;
          v13 = 0xE800000000000000;
        }

        else
        {
          v13 = 0xE800000000000000;
          v12 = 0x6465686361746564;
        }
      }

      else
      {
        v8 = 0xD000000000000017;
        if (v7 == 3)
        {
          v8 = 0x7465467075746573;
          v9 = 0xEF73656E6F5A6863;
        }

        else
        {
          v9 = 0x80000001006F8920;
        }

        if (v7 == 2)
        {
          v8 = 0xD000000000000011;
          v9 = v6;
        }

        v10 = *(*(v28 + 48) + v4) ? 0x7465536E69676562 : 0x696C616974696E69;
        v11 = v7 ? 0xEA00000000007075 : 0xEB0000000064657ALL;
        v12 = v7 <= 1 ? v10 : v8;
        v13 = v7 <= 1 ? v11 : v9;
      }

      v14 = 0x6465686361747461;
      if (v27 != 8)
      {
        v14 = 0x6465686361746564;
      }

      v15 = 0xE800000000000000;
      if (v27 == 7)
      {
        v14 = 0x6F5A6574656C6564;
        v15 = 0xEB0000000073656ELL;
      }

      v16 = 0xD000000000000018;
      if (v27 == 5)
      {
        v16 = 0xD000000000000010;
      }

      v17 = 0x80000001006F8960;
      if (v27 == 5)
      {
        v17 = 0x80000001006F8940;
      }

      if (v27 <= 6)
      {
        v14 = v16;
        v15 = v17;
      }

      v18 = 0xD000000000000017;
      if (v27 == 3)
      {
        v18 = 0x7465467075746573;
        v19 = 0xEF73656E6F5A6863;
      }

      else
      {
        v19 = 0x80000001006F8920;
      }

      if (v27 == 2)
      {
        v18 = 0xD000000000000011;
        v19 = v6;
      }

      if (v27)
      {
        v20 = 0x7465536E69676562;
      }

      else
      {
        v20 = 0x696C616974696E69;
      }

      if (!v27)
      {
        v5 = 0xEB0000000064657ALL;
      }

      if (v27 <= 1)
      {
        v18 = v20;
        v19 = v5;
      }

      v21 = v27 <= 4 ? v18 : v14;
      v22 = v27 <= 4 ? v19 : v15;
      if (v12 == v21 && v13 == v22)
      {
        break;
      }

      v23 = v6;
      v24 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v24)
      {
        return v29;
      }

      v4 = (v29 + 1) & v26;
      v5 = 0xEA00000000007075;
      v6 = v23;
      if (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) == 0)
      {
        return v4;
      }
    }

    return v29;
  }

  return v4;
}

unint64_t sub_10003C120(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    type metadata accessor for IdentityGesture();
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

unint64_t sub_10003C1E4(uint64_t a1, uint64_t a2, unint64_t *a3, void *a4)
{
  v5 = -1 << *(v4 + 32);
  v6 = a2 & ~v5;
  if ((*(v4 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    sub_10001F8D4(0, a3, a4);
    do
    {
      v8 = *(*(v4 + 48) + 8 * v6);
      v9 = static NSObject.== infix(_:_:)();

      if (v9)
      {
        break;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  return v6;
}

unint64_t sub_10003C2B0(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v4 = v3 + 64;
  v5 = -1 << *(v3 + 32);
  v6 = a3 & ~v5;
  if ((*(v3 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = v3;
    v8 = a2;
    v9 = a1;
    v10 = ~v5;
    if (a1)
    {
      v11 = 0;
    }

    else
    {
      v11 = a2 == 0xC000000000000000;
    }

    v12 = !v11;
    v43 = v12;
    v13 = a2 >> 62;
    v14 = __OFSUB__(HIDWORD(a1), a1);
    v40 = v14;
    v39 = HIDWORD(a1) - a1;
    v41 = v10;
    v42 = BYTE6(a2);
    v36 = v4;
    while (1)
    {
      v15 = (*(v7 + 48) + 16 * v6);
      v17 = *v15;
      v16 = v15[1];
      v18 = v16 >> 62;
      if (v16 >> 62 == 3)
      {
        break;
      }

      if (v18 > 1)
      {
        if (v18 != 2)
        {
          goto LABEL_36;
        }

        v24 = *(v17 + 16);
        v23 = *(v17 + 24);
        v25 = __OFSUB__(v23, v24);
        v22 = v23 - v24;
        if (v25)
        {
          goto LABEL_64;
        }

        if (v13 <= 1)
        {
          goto LABEL_33;
        }
      }

      else if (v18)
      {
        LODWORD(v22) = HIDWORD(v17) - v17;
        if (__OFSUB__(HIDWORD(v17), v17))
        {
          goto LABEL_65;
        }

        v22 = v22;
        if (v13 <= 1)
        {
LABEL_33:
          v26 = v42;
          if (v13)
          {
            v26 = v39;
            if (v40)
            {
              goto LABEL_63;
            }
          }

          goto LABEL_39;
        }
      }

      else
      {
        v22 = BYTE6(v16);
        if (v13 <= 1)
        {
          goto LABEL_33;
        }
      }

LABEL_37:
      if (v13 != 2)
      {
        if (!v22)
        {
          return v6;
        }

        goto LABEL_13;
      }

      v28 = *(v9 + 16);
      v27 = *(v9 + 24);
      v25 = __OFSUB__(v27, v28);
      v26 = v27 - v28;
      if (v25)
      {
        __break(1u);
LABEL_63:
        __break(1u);
LABEL_64:
        __break(1u);
LABEL_65:
        __break(1u);
LABEL_66:
        __break(1u);
LABEL_67:
        __break(1u);
LABEL_68:
        __break(1u);
LABEL_69:
        __break(1u);
      }

LABEL_39:
      if (v22 != v26)
      {
        goto LABEL_13;
      }

      if (v22 < 1)
      {
        return v6;
      }

      if (v18 <= 1)
      {
        if (!v18)
        {
          v45[0] = v17;
          LOWORD(v45[1]) = v16;
          BYTE2(v45[1]) = BYTE2(v16);
          BYTE3(v45[1]) = BYTE3(v16);
          BYTE4(v45[1]) = BYTE4(v16);
          BYTE5(v45[1]) = BYTE5(v16);
          sub_10000B8B8(v17, v16);
          sub_1000C2B5C(v45, v9, v8, &v44);
          sub_10000B90C(v17, v16);
          if (v44)
          {
            return v6;
          }

          v10 = v41;
          goto LABEL_13;
        }

        if (v17 >> 32 < v17)
        {
          goto LABEL_66;
        }

        sub_10000B8B8(v17, v16);
        v31 = __DataStorage._bytes.getter();
        if (v31)
        {
          v33 = __DataStorage._offset.getter();
          if (__OFSUB__(v17, v33))
          {
            goto LABEL_69;
          }

          v31 += v17 - v33;
        }

        goto LABEL_58;
      }

      if (v18 == 2)
      {
        v30 = *(v17 + 16);
        v29 = *(v17 + 24);
        sub_10000B8B8(v17, v16);
        v31 = __DataStorage._bytes.getter();
        if (v31)
        {
          v32 = __DataStorage._offset.getter();
          if (__OFSUB__(v30, v32))
          {
            goto LABEL_68;
          }

          v31 += v30 - v32;
        }

        if (__OFSUB__(v29, v30))
        {
          goto LABEL_67;
        }

LABEL_58:
        __DataStorage._length.getter();
        v34 = v31;
        v9 = a1;
        v8 = a2;
        sub_1000C2B5C(v34, a1, a2, v45);
        sub_10000B90C(v17, v16);
        if (v45[0])
        {
          return v6;
        }

        v4 = v36;
        v10 = v41;
        goto LABEL_13;
      }

      memset(v45, 0, 14);
      sub_10000B8B8(v17, v16);
      sub_1000C2B5C(v45, v9, v8, &v44);
      sub_10000B90C(v17, v16);
      if (v44)
      {
        return v6;
      }

LABEL_13:
      v6 = (v6 + 1) & v10;
      if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        return v6;
      }
    }

    if (v17)
    {
      v19 = 0;
    }

    else
    {
      v19 = v16 == 0xC000000000000000;
    }

    v21 = !v19 || v13 < 3;
    if (((v21 | v43) & 1) == 0)
    {
      return v6;
    }

LABEL_36:
    v22 = 0;
    if (v13 <= 1)
    {
      goto LABEL_33;
    }

    goto LABEL_37;
  }

  return v6;
}