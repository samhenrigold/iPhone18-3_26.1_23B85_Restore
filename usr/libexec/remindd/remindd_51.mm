void sub_1004B6C94(void *a1, uint64_t a2)
{
  sub_1000F5104(&unk_100939D60, &unk_1007959E0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1007953F0;
  *(v5 + 32) = a1;
  v6 = objc_opt_self();
  v7 = a1;
  v8 = [v6 fetchOptionsIncludingDueDateDeltaAlerts];
  v9 = objc_allocWithZone(REMRemindersDataViewInvocation_fetchByObjectID);
  sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;
  v5, v11, v12, v13, v14, v15, v16, v17;
  v18 = [v9 initWithObjectIDs:isa fetchOptions:v8];

  v19 = sub_10048394C(a2);
  if (!v2)
  {
    objc_opt_self();
    v20 = swift_dynamicCastObjCClass();
    if (v20)
    {
      v21 = v20;
      v87 = v19;
      v22 = [v21 accountStorages];
      v23 = v7;
      if (!v22)
      {
        sub_1000060C8(0, &unk_10093F580, REMAccountStorage_ptr);
        v24 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
        v22 = Array._bridgeToObjectiveC()().super.isa;
        v25 = v24;
        v23 = v7;
        v25, v26, v27, v28, v29, v30, v31, v32;
      }

      v33 = [v21 listStorages];
      if (!v33)
      {
        sub_1000060C8(0, &unk_10094F0C0, REMListStorage_ptr);
        v34 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
        v33 = Array._bridgeToObjectiveC()().super.isa;
        v35 = v34;
        v23 = v7;
        v35, v36, v37, v38, v39, v40, v41, v42;
      }

      v43 = [v21 reminderStorages];
      if (!v43)
      {
        sub_1000060C8(0, &unk_10093F670, REMReminderStorage_ptr);
        v44 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
        v43 = Array._bridgeToObjectiveC()().super.isa;
        v45 = v44;
        v23 = v7;
        v45, v46, v47, v48, v49, v50, v51, v52;
      }

      v53 = objc_opt_self();
      v54 = *(v88 + 48);
      v55 = swift_allocObject();
      *(v55 + 16) = xmmword_1007953F0;
      *(v55 + 32) = v23;
      v89 = v23;
      v56 = Array._bridgeToObjectiveC()().super.isa;
      v55, v57, v58, v59, v60, v61, v62, v63;
      v64 = [v53 remindersFromAccountStorages:v22 listStorages:v33 reminderStorages:v43 store:v54 requestedReminderIDs:v56];

      if (v64)
      {
        sub_1000060C8(0, &unk_100942FB0, REMReminder_ptr);
        v65 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        if (v65 >> 62)
        {
          goto LABEL_25;
        }

        for (i = *((v65 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
        {
          v74 = 0;
          while (1)
          {
            if ((v65 & 0xC000000000000001) != 0)
            {
              v75 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              if (v74 >= *((v65 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_24;
              }

              v75 = *(v65 + 8 * v74 + 32);
            }

            v76 = v75;
            v77 = v74 + 1;
            if (__OFADD__(v74, 1))
            {
              break;
            }

            sub_1000060C8(0, &qword_100945FC0, NSObject_ptr);
            v78 = [v76 objectID];
            v79 = static NSObject.== infix(_:_:)();

            if (v79)
            {
              v65, v80, v81, v82, v83, v84, v85, v86;

              REMReminder.codable.getter();
              return;
            }

            ++v74;
            if (v77 == i)
            {
              goto LABEL_26;
            }
          }

          __break(1u);
LABEL_24:
          __break(1u);
LABEL_25:
          ;
        }

LABEL_26:
        v65, v66, v67, v68, v69, v70, v71, v72;
      }

      [objc_opt_self() noSuchObjectErrorWithObjectID:v89];
      swift_willThrow();
    }

    else
    {
      [objc_opt_self() noSuchObjectErrorWithObjectID:v7];
      swift_willThrow();
    }
  }
}

void sub_1004B7184(unint64_t a1, uint64_t a2, uint64_t a3, char *a4)
{
  v6 = v5;
  v290 = a2;
  v298 = a1;
  v9 = *v4;
  v10 = sub_1000F5104(&unk_100939D90, "8\n\r");
  __chkstk_darwin(v10 - 8, v11);
  v279 = &v264 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13, v14);
  v282 = &v264 - v15;
  v16 = sub_1000F5104(&qword_100949220, &qword_1007AD438);
  __chkstk_darwin(v16 - 8, v17);
  v301 = &v264 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19, v20);
  v293 = &v264 - v21;
  v302 = type metadata accessor for UUID();
  v292 = *&v302[-1].shareRecordIDToRootRecordIDLock[2];
  __chkstk_darwin(v302, v22);
  v280 = &v264 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24, v25);
  v294 = &v264 - v26;
  __chkstk_darwin(v27, v28);
  v289 = &v264 - v29;
  __chkstk_darwin(v30, v31);
  v299 = &v264 - v32;
  __chkstk_darwin(v33, v34);
  v300 = &v264 - v35;
  v36 = type metadata accessor for Date();
  v37 = *(v36 - 8);
  __chkstk_darwin(v36, v38);
  v281 = &v264 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v40, v41);
  v284 = &v264 - v42;
  __chkstk_darwin(v43, v44);
  v283 = &v264 - v45;
  __chkstk_darwin(v46, v47);
  v49 = &v264 - v48;
  Date.init()();
  v304 = 0;
  v50 = [a4 existingObjectWithID:a3 error:&v304];
  v51 = v304;
  if (!v50)
  {
    v58 = v304;
    _convertNSErrorToError(_:)();

    swift_willThrow();
LABEL_7:
    v37[1](v49, v36);
    return;
  }

  v52 = v50;
  type metadata accessor for REMCDTemplate();
  v53 = swift_dynamicCastClass();
  if (!v53)
  {
    v59 = v51;

    goto LABEL_7;
  }

  v295 = v53;
  v276 = v9;
  v278 = v52;
  v54 = *(*v4 + 160);
  v55 = v51;
  v277 = v4;
  v56 = v54(a4);
  if (v5)
  {
    v37[1](v49, v36);
    v57 = &v307;
LABEL_76:

    return;
  }

  v275 = v56;
  v304 = &_swiftEmptyArrayStorage;
  v60 = sub_10038EEC4(&_swiftEmptyArrayStorage);
  v303 = &_swiftEmptyArrayStorage;
  v61 = v298;
  if (v298 >> 62)
  {
    goto LABEL_81;
  }

  for (i = *((v298 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = v223)
  {
    v272 = v37;
    v273 = v49;
    v288 = a4;
    v274 = v36;
    if (i)
    {
      v49 = 0;
      v286 = (v61 & 0xFFFFFFFFFFFFFF8);
      v287 = v61 & 0xC000000000000001;
      v285 = (v292 + 8);
      v291 = &_swiftEmptyArrayStorage;
      a4 = v6;
      while (1)
      {
        if (v287)
        {
          v63 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v49 >= v286[2])
          {
            goto LABEL_80;
          }

          v63 = *(v61 + 8 * v49 + 32);
        }

        v64 = v63;
        v36 = v49 + 1;
        if (__OFADD__(v49, 1))
        {
          goto LABEL_79;
        }

        v6 = i;
        v305 = 0;
        v65 = [v63 remObjectIDWithError:&v305];
        if (!v65)
        {
          v174 = v305;
          v291, v175, v176, v177, v178, v179, v180, v181;
          _convertNSErrorToError(_:)();

          swift_willThrow();
          v272[1](v273, v274);
          goto LABEL_90;
        }

        v66 = v65;
        v67 = v305;
        v68 = sub_1004B99C4(v64, v295, v288);
        if (a4)
        {
          v272[1](v273, v274);
          v60, v189, v190, v191, v192, v193, v194, v195;
          v291, v196, v197, v198, v199, v200, v201, v202;

          goto LABEL_74;
        }

        v296 = v60;
        v297 = 0;
        v69 = v68;
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v304 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v304 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v291 = v304;
        v70 = [v66 uuid];
        v71 = v300;
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        v72 = [v69 uuid];
        v37 = v299;
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        v73 = v296;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v305 = v73;
        sub_1002C81B4(v37, v71, isUniquelyReferenced_nonNull_native);

        (*v285)(v71, v302);
        v60 = v305;
        ++v49;
        i = v6;
        v75 = v36 == v6;
        a4 = v297;
        v61 = v298;
        v36 = v301;
        if (v75)
        {
          goto LABEL_25;
        }
      }
    }

    v291 = &_swiftEmptyArrayStorage;
    v36 = v301;
    a4 = v6;
LABEL_25:
    v76 = v291;
    sub_1005F8ACC(v291, 1);
    v6 = a4;
    if (a4)
    {
      v272[1](v273, v274);
      v60, v84, v85, v86, v87, v88, v89, v90;

      v76, v91, v92, v93, v94, v95, v96, v97;
LABEL_75:
      v57 = &v306;
      goto LABEL_76;
    }

    v76, v77, v78, v79, v80, v81, v82, v83;
    if (!v275)
    {
      break;
    }

    v37 = v274;
    if (!*(v60 + 16) || !*(v290 + 16))
    {
      v203 = &_swiftEmptyArrayStorage;
      goto LABEL_70;
    }

    v296 = v60;
    v105 = *(v290 + 64);
    v291 = (v290 + 64);
    v106 = 1 << *(v290 + 32);
    v107 = -1;
    if (v106 < 64)
    {
      v107 = ~(-1 << v106);
    }

    v60 = v107 & v105;
    v287 = (v106 + 63) >> 6;
    v271 = v292 + 16;
    v298 = v292 + 32;
    v285 = (v292 + 8);
    v269 = (v292 + 56);
    v268 = (v292 + 48);
    v267 = (v272 + 1);
    v286 = v275;

    a4 = 0;
    isa = &_swiftEmptyArrayStorage;
    v49 = v289;
    v297 = 0;
LABEL_33:
    v108 = v293;
    v109 = v291;
    v110 = v287;
    while (v60)
    {
      v113 = a4;
LABEL_46:
      v116 = __clz(__rbit64(v60));
      v60 &= v60 - 1;
      v117 = v290;
      v118 = v292;
      v119 = *(v292 + 72) * (v116 | (v113 << 6));
      v120 = *(v292 + 16);
      v121 = v302;
      v120(v300, *(v290 + 48) + v119, v302);
      v122 = v299;
      v120(v299, *(v117 + 56) + v119, v121);
      v123 = sub_1000F5104(&qword_100944C00, &qword_1007AD440);
      v124 = *(v123 + 48);
      v125 = *(v118 + 32);
      v36 = v301;
      v125(v301, v300, v121);
      v125((v36 + v124), v122, v121);
      (*(*(v123 - 8) + 56))(v36, 0, 1, v123);
      v108 = v293;
      v49 = v289;
      v6 = v297;
LABEL_47:
      sub_1004B9CE4(v36, v108);
      v126 = sub_1000F5104(&qword_100944C00, &qword_1007AD440);
      if ((*(*(v126 - 8) + 48))(v108, 1, v126) == 1)
      {

        v37 = v274;
        v60 = v296;
        v203 = isa;
        goto LABEL_70;
      }

      v127 = *(v126 + 48);
      v128 = *v298;
      v129 = v49;
      v37 = v49;
      v130 = v302;
      (*v298)(v129, v108, v302);
      v128(v294, v108 + v127, v130);
      v131 = [v286 membershipByMemberIdentifier];
      sub_1000060C8(0, &qword_10093B450, REMMembership_ptr);
      sub_100224A60();
      v132 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      if (*(v132 + 16))
      {
        v140 = sub_100363F20(v37);
        v49 = v37;
        if (v141)
        {
          v148 = *(*(v132 + 56) + 8 * v140);
          v132, v149, v150, v151, v152, v153, v154, v155;
          v156 = [v148 groupIdentifier];
          v108 = v293;
          if (v156)
          {
            v158 = v280;
            v159 = v156;
            static UUID._unconditionallyBridgeFromObjectiveC(_:)();

            v160 = v296;
            v161 = v279;
            if (*v296->clientIdentity)
            {
              v162 = sub_100363F20(v158);
              v36 = v301;
              if (v163)
              {
                (*(v292 + 16))(v282, *&v160->clientIdentity[40] + *(v292 + 72) * v162, v302);
                v164 = 0;
              }

              else
              {
                v164 = 1;
              }
            }

            else
            {
              v164 = 1;
              v36 = v301;
            }

            v165 = v282;
            v166 = v302;
            (*v269)(v282, v164, 1, v302);
            sub_10018E470(v165, v161);
            static Date.now.getter();
            isa = UUID._bridgeToObjectiveC()().super.isa;
            if ((*v268)(v161, 1, v166) == 1)
            {
              v266 = 0;
            }

            else
            {
              v266 = UUID._bridgeToObjectiveC()().super.isa;
              (*v285)(v161, v166);
            }

            v167 = objc_allocWithZone(REMMembership);
            v168 = Date._bridgeToObjectiveC()().super.isa;
            v169 = v167;
            v170 = isa;
            v37 = v266;
            v265 = [v169 initWithMemberIdentifier:isa groupIdentifier:v266 isObsolete:0 modifiedOn:v168];

            (*v267)(v283, v274);
            v171 = v265;
            specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
            if (*((v303 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v303 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
              v36 = v301;
            }

            specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

            sub_1000050A4(v282, &unk_100939D90, "8\n\r");
            v172 = *v285;
            v173 = v302;
            (*v285)(v280, v302);
            v172(v294, v173);
            v172(v49, v173);
            isa = v303;
            goto LABEL_33;
          }
        }

        else
        {
          v132, v141, v142, v143, v144, v145, v146, v147;
          v108 = v293;
        }
      }

      else
      {
        v132, v133, v134, v135, v136, v137, v138, v139;
        v49 = v37;
      }

      v111 = *v285;
      v112 = v302;
      (*v285)(v294, v302);
      v111(v49, v112);
      v109 = v291;
      v110 = v287;
      v36 = v301;
    }

    if (v110 <= (a4 + 1))
    {
      v114 = a4 + 1;
    }

    else
    {
      v114 = v110;
    }

    v115 = v114 - 1;
    while (1)
    {
      v113 = a4 + 1;
      if (__OFADD__(a4, 1))
      {
        break;
      }

      if (v113 >= v110)
      {
        v157 = sub_1000F5104(&qword_100944C00, &qword_1007AD440);
        (*(*(v157 - 8) + 56))(v36, 1, 1, v157);
        v60 = 0;
        a4 = v115;
        goto LABEL_47;
      }

      v60 = *(&v109->super.isa + v113);
      ++a4;
      if (v60)
      {
        a4 = v113;
        goto LABEL_46;
      }
    }

    __break(1u);
LABEL_79:
    __break(1u);
LABEL_80:
    __break(1u);
LABEL_81:
    v222 = v61;
    v223 = _CocoaArrayWrapper.endIndex.getter();
    v61 = v222;
  }

  v203 = &_swiftEmptyArrayStorage;
  v37 = v274;
LABEL_70:
  if (v203 >> 62)
  {
    if (!_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_83;
    }

LABEL_72:
    v204 = objc_allocWithZone(REMMemberships);
    sub_1000060C8(0, &qword_10093B450, REMMembership_ptr);
    v205 = Array._bridgeToObjectiveC()().super.isa;
    v203, v206, v207, v208, v209, v210, v211, v212;
    v213 = [v204 initWithMemberships:v205];

    v66 = v213;
    sub_10032D8A8(v213, 1, v214);
    if (v6)
    {
      v272[1](v273, v37);
      v60, v215, v216, v217, v218, v219, v220, v221;

LABEL_74:
      goto LABEL_75;
    }
  }

  else
  {
    if (*((v203 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_72;
    }

LABEL_83:
    v203, v98, v99, v100, v101, v102, v103, v104;
  }

  [v295 updateChangeCount];
  v305 = 0;
  if ([v288 save:&v305])
  {
    v296 = v60;
    v224 = qword_1009362B0;
    v225 = v305;
    if (v224 != -1)
    {
      swift_once();
    }

    v226 = type metadata accessor for Logger();
    sub_100006654(v226, qword_100949378);
    v227 = v272;
    v228 = v284;
    (v272[2])(v284, v273, v37);

    v229 = Logger.logObject.getter();
    v230 = v277;
    v231 = v229;
    v232 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v231, v232))
    {
      v233 = swift_slowAlloc();
      v234 = swift_slowAlloc();
      v297 = v6;
      v235 = v234;
      v302 = swift_slowAlloc();
      v305 = v302;
      *v233 = 136446978;
      v236 = sub_1001424F8(v276);
      v238 = v237;
      v239 = sub_10000668C(v236, v237, &v305);
      v238, v240, v241, v242, v243, v244, v245, v246;
      *(v233 + 4) = v239;
      v37 = v274;
      *(v233 + 12) = 2114;
      v247 = v230[2];
      v248 = v230[3];
      *(v233 + 14) = v247;
      *(v233 + 22) = 2114;
      *(v233 + 24) = v248;
      v301 = v235;
      *v235 = v247;
      *(v235 + 1) = v248;
      *(v233 + 32) = 2048;
      v249 = v247;
      v250 = v248;
      v251 = v281;
      Date.init()();
      v252 = v284;
      Date.timeIntervalSince(_:)();
      v254 = v253;
      LOBYTE(v235) = v232;
      v255 = v227[1];
      v255(v251, v37);
      v255(v252, v37);
      *(v233 + 34) = v254;
      _os_log_impl(&_mh_execute_header, v231, v235, "%{public}s: Copied Sections to template {templateObjectID: %{public}@, sourceListObjectID: %{public}@, elapsedSeconds: %f}", v233, 0x2Au);
      sub_1000F5104(&unk_100938E70, &unk_100797230);
      swift_arrayDestroy();

      sub_10000607C(v302);
    }

    else
    {

      v255 = v227[1];
      v255(v228, v37);
    }

    [v288 reset];

    v255(v273, v37);
    v296, v257, v258, v259, v260, v261, v262, v263;
  }

  else
  {
    v256 = v305;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    v272[1](v273, v37);
LABEL_90:
    v60, v182, v183, v184, v185, v186, v187, v188;
  }
}

uint64_t sub_1004B8594()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_100949378);
  v1 = sub_100006654(v0, qword_100949378);
  if (qword_1009364A0 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_100975128);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void sub_1004B865C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, uint64_t a8, char *a9, void *a10, void *a11, _TtC7remindd19RDXPCStorePerformer *a12, char *a13, uint64_t a14, _TtC7remindd19RDXPCStorePerformer **a15)
{
  v16 = v15;
  v195 = a7;
  v183 = a5;
  v182 = a4;
  v21 = sub_1000F5104(&unk_100939D90, "8\n\r");
  __chkstk_darwin(v21 - 8, v22);
  v181 = &v168 - v23;
  v180 = type metadata accessor for UUID();
  v197 = *(v180 - 8);
  __chkstk_darwin(v180, v24);
  v179 = &v168 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  __chkstk_darwin(v26 - 8, v27);
  v178 = &v168 - v28;
  v29 = type metadata accessor for Date();
  v30 = *(v29 - 8);
  __chkstk_darwin(v29, v31);
  v33 = &v168 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v34, v35);
  v176 = &v168 - v36;
  v37 = type metadata accessor for REMRemindersListDataView.ReminderLite();
  v199 = *&v37[-1].shareRecordIDToRootRecordIDLock[2];
  v200 = v37;
  __chkstk_darwin(v37, v38);
  v194 = &v168 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v42 = __chkstk_darwin(v40, v41).n128_u64[0];
  v191 = &v168 - v43;
  v203 = 0;
  v44 = [a1 existingObjectWithID:a2 error:{&v203, v42}];
  v45 = v203;
  if (!v44)
  {
    v68 = v203;
    v16 = _convertNSErrorToError(_:)();

    swift_willThrow();
    goto LABEL_13;
  }

  v46 = v44;
  type metadata accessor for REMCDTemplate();
  v198 = swift_dynamicCastClass();
  if (v198)
  {
    v174 = a8;
    v47 = v46;
    v196 = a9;
    v48 = a6 >> 1;
    v49 = v45;
    v173 = a10;
    swift_beginAccess();
    v50 = v183;
    v175 = v29;
    v188 = v30;
    v187 = v33;
    v171 = v46;
    if (v48 == v183)
    {
LABEL_4:
      if (v196 && a11)
      {
        v51 = v16;
        v201 = 0;

        v52 = a11;
        v53 = [a1 existingObjectWithID:v52 error:&v201];
        v54 = v201;
        if (!v53)
        {
          v110 = v201;
          v111 = _convertNSErrorToError(_:)();

          v16 = v111;
          swift_willThrow();

          goto LABEL_13;
        }

        v55 = v53;
        type metadata accessor for REMCDManualSortHint();
        v56 = swift_dynamicCastClass();
        v57 = v54;
        if (v56)
        {
          v58 = [(RDXPCStorePerformer *)v56 account];
          if (v58)
          {
            v59 = v58;
            v60 = [(RDXPCStorePerformer *)v58 remObjectID];
            if (v60)
            {
              v61 = v60;
              v199 = a1;
              Date.init()();
              REMMutableManualOrdering.modifiedDate.setter();
              v62 = objc_opt_self();
              v63 = v61;
              v64 = [v62 defaultCenter];
              type metadata accessor for REMManualOrderingCDIngestor();
              inited = swift_initStackObject();
              v200 = v63;
              *(inited + 16) = v63;
              *(inited + 24) = v64;
              v66 = REMMutableManualOrdering.immutableCopy()();
              sub_1004A963C(v66, v56, v59);
              if (v51)
              {

                v67 = v200;

                v16 = v51;
LABEL_13:
                *a15 = v16;
                return;
              }

              v112 = v200;

              v16 = 0;
              a1 = v199;
            }

            else
            {

              v16 = v51;
            }

            v29 = v175;
            v30 = v188;
            v33 = v187;
          }

          else
          {

            v16 = v51;
            v29 = v175;
            v30 = v188;
          }
        }

        else
        {

          v16 = v51;
          v29 = v175;
        }
      }

      v113 = v178;
      static Date.now.getter();
      (*(v30 + 56))(v113, 0, 1, v29);
      KeyPath = swift_getKeyPath();
      v115 = v198;
      sub_10013206C(KeyPath, v113);

      sub_1000050A4(v113, &unk_100938850, qword_100795AE0);
      [v115 updateChangeCount];
      v201 = 0;
      if (![a1 save:&v201])
      {
        v167 = v201;
        v16 = _convertNSErrorToError(_:)();

        swift_willThrow();
        goto LABEL_13;
      }

      v200 = v16;
      v16 = a12;
      v47 = a13;
      v116 = qword_1009362B0;
      v117 = v201;
      if (v116 == -1)
      {
        goto LABEL_47;
      }
    }

    else
    {
      v192 = v199 + 2;
      v170 = v197 + 56;
      v193 = (v199 + 1);
      v169 = v48;
      if (v183 <= v48)
      {
        v70 = v48;
      }

      else
      {
        v70 = v183;
      }

      v172 = v70;
      v71 = v195;
      while (v50 != v172)
      {
        v72 = v199[9];
        v183 = v50;
        v189 = v72;
        v190 = v199[2];
        v190(v191, v182 + v72 * v50, v200);
        v73 = v71;
        v74 = REMRemindersListDataView.ReminderLite.objectID.getter();
        sub_1004B6C94(v74, a1);
        if (v16)
        {
          (*v193)(v191, v200);

          goto LABEL_13;
        }

        v76 = v75;

        v77 = [v76 storage];
        v78 = sub_1004B5B48(v77, 0, v198, a1);
        v71 = v73;
        v177 = v76;

        v79 = REMRemindersListDataView.ReminderLite.objectID.getter();
        v197 = v78;
        v80 = [v79 uuid];

        v81 = v179;
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        v82 = v197;
        v83 = [v197 uuid];
        v84 = v181;
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        (*v170)(v84, 0, 1, v180);
        sub_10031DC2C(v84, v81);
        if (v196)
        {
          REMMutableManualOrdering.append(topLevelElementID:)();
        }

        v47 = v191;
        v85 = REMRemindersListDataView.ReminderLite.subtasks.getter();
        if (v85)
        {
          v86 = *(v85 + 16);
          v168 = v193 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
          v16 = 0;
          v184 = v86;
          if (v86)
          {
            v87 = 0;
            v88 = v85;
            v186 = v85;
            while (v87 < *(v85 + 16))
            {
              v90 = v199;
              v89 = v200;
              v91 = v194;
              v190(v194, v88 + ((*(v90 + 80) + 32) & ~*(v90 + 80)), v200);
              v92 = REMRemindersListDataView.ReminderLite.objectID.getter();
              v185 = v90[1];
              v185(v91, v89);
              sub_1004B6C94(v92, a1);
              v94 = v93;

              v95 = a1;
              v96 = [v94 storage];
              v97 = v197;
              v98 = v197;
              v99 = v97;
              v100 = v95;
              v101 = sub_1004B5B48(v96, v99, v198, v95);

              v47 = v196;
              if (v196)
              {
                REMMutableManualOrdering.append(secondaryLevelElementID:forTopLevelElementID:)();
              }

              ++v87;

              v88 += v189;
              v16 = 0;
              a1 = v100;
              v71 = v195;
              v30 = v188;
              v33 = v187;
              v85 = v186;
              if (v184 == v87)
              {
                v102 = v186;
                v82 = v197;
                v185(v191, v200);
                goto LABEL_34;
              }
            }

            __break(1u);
            break;
          }

          v102 = v85;
          (*v193)(v191, v200);
LABEL_34:
          v102, v103, v104, v105, v106, v107, v108, v109;
        }

        else
        {
          (*v193)(v47, v200);
          v16 = 0;
        }

        v29 = v175;

        if (__OFADD__(*v173, 1))
        {
          goto LABEL_53;
        }

        v50 = v183 + 1;
        ++*v173;
        if (v50 == v169)
        {
          goto LABEL_4;
        }
      }

      __break(1u);
LABEL_53:
      __break(1u);
    }

    swift_once();
LABEL_47:
    v118 = type metadata accessor for Logger();
    sub_100006654(v118, qword_100949378);
    v119 = v175;
    (*(v30 + 16))(v33, v47, v175);
    swift_bridgeObjectRetain_n();
    v120 = v33;
    v121 = v195;

    v122 = Logger.logObject.getter();
    v123 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v122, v123))
    {
      v198 = v122;
      v124 = swift_slowAlloc();
      LODWORD(v197) = v123;
      v125 = v30;
      v126 = v124;
      v127 = swift_slowAlloc();
      v199 = swift_slowAlloc();
      v202 = v199;
      *v126 = 136447490;
      v128 = sub_1001424F8(a14);
      v130 = v129;
      v131 = a1;
      v132 = sub_10000668C(v128, v129, &v202);
      v130, v133, v134, v135, v136, v137, v138, v139;
      *(v126 + 4) = v132;
      a1 = v131;
      *(v126 + 12) = 2048;
      v140 = v173;
      swift_beginAccess();
      *(v126 + 14) = *v140;
      *(v126 + 22) = 2048;
      v141 = *v16->clientIdentity;
      v16, v142, v143, v144, v145, v146, v147, v148;
      *(v126 + 24) = v141;
      v16, v149, v150, v151, v152, v153, v154, v155;
      *(v126 + 32) = 2114;
      v156 = *(v121 + 16);
      v157 = *(v121 + 24);
      *(v126 + 34) = v156;
      *(v126 + 42) = 2114;
      *(v126 + 44) = v157;
      *v127 = v156;
      v127[1] = v157;
      *(v126 + 52) = 2048;
      v158 = v156;
      v159 = v157;
      v160 = v176;
      Date.init()();
      Date.timeIntervalSince(_:)();
      v162 = v161;
      v163 = *(v125 + 8);
      v164 = v160;
      v165 = v175;
      v163(v164, v175);
      v163(v120, v165);
      *(v126 + 54) = v162;
      v166 = v198;
      _os_log_impl(&_mh_execute_header, v198, v197, "%{public}s: Copied %ld out of %ld top-level reminders to template {templateObjectID: %{public}@, sourceListObjectID: %{public}@, elapsedSeconds: %f}", v126, 0x3Eu);
      sub_1000F5104(&unk_100938E70, &unk_100797230);
      swift_arrayDestroy();

      sub_10000607C(v199);
    }

    else
    {

      swift_bridgeObjectRelease_n();
      (*(v30 + 8))(v120, v119);
    }

    goto LABEL_15;
  }

  v69 = v45;

LABEL_15:
  [a1 reset];
}

_TtC7remindd19RDXPCStorePerformer *sub_1004B9630(uint64_t a1, const char *a2, ...)
{
  v4 = *v2;
  if (qword_1009362B0 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_100006654(v5, qword_100949378);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.fault.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v22[0] = v9;
    v22[1] = v4;
    *v8 = 136446210;
    swift_getMetatypeMetadata();
    v10 = String.init<A>(describing:)();
    v12 = v11;
    v13 = sub_10000668C(v10, v11, v22);
    v12, v14, v15, v16, v17, v18, v19, v20;
    *(v8 + 4) = v13;
    _os_log_impl(&_mh_execute_header, v6, v7, a2, v8, 0xCu);
    sub_10000607C(v9);
  }

  return &_swiftEmptyArrayStorage;
}

uint64_t sub_1004B97BC()
{
  v1 = *v0;
  if (qword_1009362B0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100006654(v2, qword_100949378);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.fault.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v19[0] = v6;
    *v5 = 136446210;
    v19[2] = v1;
    swift_getMetatypeMetadata();
    v7 = String.init<A>(describing:)();
    v9 = v8;
    v10 = sub_10000668C(v7, v8, v19);
    v9, v11, v12, v13, v14, v15, v16, v17;
    *(v5 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v3, v4, "%{public}s: fetchSectionsInSourceList(in:) should be overridden by subclass", v5, 0xCu);
    sub_10000607C(v6);
  }

  return 0;
}

uint64_t sub_1004B9948()
{

  return swift_deallocClassInstance();
}

id sub_1004B99C4(void *a1, void *a2, uint64_t a3)
{
  v6 = type metadata accessor for Date();
  v28 = *(v6 - 8);
  v29 = v6;
  __chkstk_darwin(v6, v7);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10, v12);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for REMCDTemplateSection();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v16 = [objc_allocWithZone(ObjCClassFromMetadata) initWithContext:a3];
  v17 = [(objc_class *)ObjCClassFromMetadata newObjectID];
  v18 = v16;
  v19 = [v17 uuid];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  isa = UUID._bridgeToObjectiveC()().super.isa;
  (*(v11 + 8))(v14, v10);
  [v18 setIdentifier:isa];

  v21 = [a2 account];
  [v18 setAccount:v21];

  [v18 setTemplate:a2];
  v22 = v18;
  v23 = [a1 displayName];
  [v22 setDisplayName:v23];

  v24 = [a1 creationDate];
  if (v24)
  {
    v25 = v24;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v26.super.isa = Date._bridgeToObjectiveC()().super.isa;
    (*(v28 + 8))(v9, v29);
  }

  else
  {
    v26.super.isa = 0;
  }

  [v22 setCreationDate:{v26.super.isa, v28, v29}];

  [v22 setMinimumSupportedVersion:{objc_msgSend(a1, "minimumSupportedVersion")}];
  [v22 updateChangeCount];

  return v17;
}

uint64_t sub_1004B9CE4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000F5104(&qword_100949220, &qword_1007AD438);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1004B9D6C()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_1009494A0);
  v1 = sub_100006654(v0, qword_1009494A0);
  if (qword_1009364D8 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_1009751D0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

id sub_1004B9E80(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v5 = a1;
  v6 = a4();

  return v6;
}

id sub_1004B9F24()
{
  v1 = *v0;
  v6 = 0;
  v2 = [v1 attachmentRepresentationAndReturnError:&v6];
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

Swift::Int sub_1004BA00C()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  v2 = 0xE800000000000000;
  v3 = 0xE800000000000000;
  v4 = 0xE700000000000000;
  if (v1 != 3)
  {
    v4 = 0x80000001007EA7D0;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (v1)
  {
    v2 = 0xE300000000000000;
  }

  if (v1 <= 1)
  {
    v5 = v2;
  }

  else
  {
    v5 = v3;
  }

  String.hash(into:)();
  v5, v6, v7, v8, v9, v10, v11, v12;
  return Hasher._finalize()();
}

double sub_1004BA0EC(uint64_t a1)
{
  v2 = *v1;
  v3 = 0xE800000000000000;
  v4 = 0xE800000000000000;
  v5 = 0xE700000000000000;
  if (v2 != 3)
  {
    v5 = 0x80000001007EA7D0;
  }

  if (v2 != 2)
  {
    v4 = v5;
  }

  if (*v1)
  {
    v3 = 0xE300000000000000;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v4;
  }

  String.hash(into:)();

  v6, v7, v8, v9, v10, v11, v12, v13;
  return result;
}

Swift::Int sub_1004BA1B8(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  v3 = 0xE800000000000000;
  v4 = 0xE800000000000000;
  v5 = 0xE700000000000000;
  if (v2 != 3)
  {
    v5 = 0x80000001007EA7D0;
  }

  if (v2 != 2)
  {
    v4 = v5;
  }

  if (v2)
  {
    v3 = 0xE300000000000000;
  }

  if (v2 <= 1)
  {
    v6 = v3;
  }

  else
  {
    v6 = v4;
  }

  String.hash(into:)();
  v6, v7, v8, v9, v10, v11, v12, v13;
  return Hasher._finalize()();
}

unint64_t sub_1004BA294@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1004BAC2C(*a1);
  *a2 = result;
  return result;
}

void sub_1004BA2C4(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE800000000000000;
  v4 = 0x44497463656A626FLL;
  v5 = 0xE800000000000000;
  v6 = 0x657A6953656C6966;
  v7 = 0xE700000000000000;
  v8 = 0x4C5255656C6966;
  if (v2 != 3)
  {
    v8 = 0xD000000000000012;
    v7 = 0x80000001007EA7D0;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 6911093;
    v3 = 0xE300000000000000;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

unint64_t sub_1004BA370@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_1004BAC2C(a1);
  *a2 = result;
  return result;
}

uint64_t sub_1004BA398()
{
  v1 = *v0;
  v2 = 0x44497463656A626FLL;
  v3 = 0x657A6953656C6966;
  v4 = 0x4C5255656C6966;
  if (v1 != 3)
  {
    v4 = 0xD000000000000012;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 6911093;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

double sub_1004BA494(uint64_t a1)
{
  v2 = *v1;
  v3 = 0xE800000000000000;
  v4 = 0xE500000000000000;
  if (v2 != 5)
  {
    v4 = 0xE600000000000000;
  }

  v5 = 0xE700000000000000;
  if (v2 != 3)
  {
    v5 = 0x80000001007EA7D0;
  }

  if (*v1 <= 4u)
  {
    v4 = v5;
  }

  v6 = 0xE300000000000000;
  if (v2 != 1)
  {
    v6 = 0xE800000000000000;
  }

  if (*v1)
  {
    v3 = v6;
  }

  if (*v1 <= 2u)
  {
    v7 = v3;
  }

  else
  {
    v7 = v4;
  }

  String.hash(into:)();

  v7, v8, v9, v10, v11, v12, v13, v14;
  return result;
}

unint64_t sub_1004BA5A0@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1004BAC78(*a1);
  *a2 = result;
  return result;
}

void sub_1004BA5D0(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE800000000000000;
  v4 = 0x44497463656A626FLL;
  v5 = 0xE500000000000000;
  v6 = 0x6874646977;
  if (v2 != 5)
  {
    v6 = 0x746867696568;
    v5 = 0xE600000000000000;
  }

  v7 = 0xE700000000000000;
  v8 = 0x4C5255656C6966;
  if (v2 != 3)
  {
    v8 = 0xD000000000000012;
    v7 = 0x80000001007EA7D0;
  }

  if (*v1 <= 4u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE300000000000000;
  v10 = 6911093;
  if (v2 != 1)
  {
    v10 = 0x657A6953656C6966;
    v9 = 0xE800000000000000;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  v13 = __OFSUB__(v2, 2);
  v11 = v2 == 2;
  v12 = v2 - 2 < 0;
  if (*v1 <= 2u)
  {
    v14 = v4;
  }

  else
  {
    v14 = v6;
  }

  if (!(v12 ^ v13 | v11))
  {
    v3 = v5;
  }

  *a1 = v14;
  a1[1] = v3;
}

unint64_t sub_1004BA6B4@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_1004BAC78(a1);
  *a2 = result;
  return result;
}

uint64_t sub_1004BA6DC()
{
  v1 = *v0;
  v2 = 0x44497463656A626FLL;
  v3 = 0x6874646977;
  if (v1 != 5)
  {
    v3 = 0x746867696568;
  }

  v4 = 0x4C5255656C6966;
  if (v1 != 3)
  {
    v4 = 0xD000000000000012;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 6911093;
  if (v1 != 1)
  {
    v5 = 0x657A6953656C6966;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

Swift::Int sub_1004BA804()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  v2 = 0xE800000000000000;
  v3 = 0xE300000000000000;
  if (v1 != 2)
  {
    v3 = 0xE800000000000000;
  }

  if (v1)
  {
    v2 = 0xE300000000000000;
  }

  if (v1 <= 1)
  {
    v4 = v2;
  }

  else
  {
    v4 = v3;
  }

  String.hash(into:)();
  v4, v5, v6, v7, v8, v9, v10, v11;
  return Hasher._finalize()();
}

double sub_1004BA8B8(uint64_t a1)
{
  v2 = 0xE800000000000000;
  v3 = 0xE300000000000000;
  if (*v1 != 2)
  {
    v3 = 0xE800000000000000;
  }

  if (*v1)
  {
    v2 = 0xE300000000000000;
  }

  if (*v1 <= 1u)
  {
    v4 = v2;
  }

  else
  {
    v4 = v3;
  }

  String.hash(into:)();

  v4, v5, v6, v7, v8, v9, v10, v11;
  return result;
}

Swift::Int sub_1004BA958(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  v3 = 0xE800000000000000;
  v4 = 0xE300000000000000;
  if (v2 != 2)
  {
    v4 = 0xE800000000000000;
  }

  if (v2)
  {
    v3 = 0xE300000000000000;
  }

  if (v2 <= 1)
  {
    v5 = v3;
  }

  else
  {
    v5 = v4;
  }

  String.hash(into:)();
  v5, v6, v7, v8, v9, v10, v11, v12;
  return Hasher._finalize()();
}

unint64_t sub_1004BAA08@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1004BABE0(*a1);
  *a2 = result;
  return result;
}

void sub_1004BAA38(uint64_t *a1@<X8>)
{
  v2 = 0xE800000000000000;
  v3 = 0x44497463656A626FLL;
  v4 = 0xE300000000000000;
  v5 = 7107189;
  if (*v1 != 2)
  {
    v5 = 0x617461646174656DLL;
    v4 = 0xE800000000000000;
  }

  if (*v1)
  {
    v3 = 6911093;
    v2 = 0xE300000000000000;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

unint64_t sub_1004BAAB8@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_1004BABE0(a1);
  *a2 = result;
  return result;
}

uint64_t sub_1004BAAE0()
{
  v1 = 0x44497463656A626FLL;
  v2 = 7107189;
  if (*v0 != 2)
  {
    v2 = 0x617461646174656DLL;
  }

  if (*v0)
  {
    v1 = 6911093;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_1004BABE0(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1008E0AD8, v2);
  object, v4, v5, v6, v7, v8, v9, v10;
  if (v3 >= 4)
  {
    return 4;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_1004BAC2C(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1008E0B58, v2);
  object, v4, v5, v6, v7, v8, v9, v10;
  if (v3 >= 5)
  {
    return 5;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_1004BAC78(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1008E0D68, v2);
  object, v4, v5, v6, v7, v8, v9, v10;
  if (v3 >= 7)
  {
    return 7;
  }

  else
  {
    return v3;
  }
}

char **sub_1004BACC4(void *a1)
{
  v3 = type metadata accessor for URL();
  v4 = *(v3 - 8);
  *&v6 = __chkstk_darwin(v3, v5).n128_u64[0];
  v8 = &v85 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = 0;
  v9 = [a1 remObjectIDWithError:{&v87, v6}];
  if (!v9)
  {
    v31 = v87;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    return v1;
  }

  v10 = v9;
  v86 = v4;
  v11 = v87;
  v1 = &selRef_attachmentRepresentationAndReturnError_;
  v12 = [a1 account];
  v13 = &selRef_persistentStoreForIdentifier_;
  if (v12)
  {
    v14 = v12;
    v15 = [v12 remObjectID];

    v13 = &selRef_persistentStoreForIdentifier_;
    if (v15)
    {
      v16 = [a1 reminder];
      if (v16)
      {
        v17 = v16;
        v18 = [v16 remObjectID];

        if (v18)
        {
          v19 = [a1 url];
          if (v19)
          {
            v20 = v19;
            static URL._unconditionallyBridgeFromObjectiveC(_:)();

            v21 = [a1 metadata];
            if (v21)
            {
              v23 = v21;
              v24 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
              v26 = v25;

              URL._bridgeToObjectiveC()(v27);
              v29 = v28;
              if (v26 >> 60 == 15)
              {
                isa = 0;
              }

              else
              {
                v83.super.isa = Data._bridgeToObjectiveC()().super.isa;
                v84 = v24;
                isa = v83.super.isa;
                sub_100031A14(v84, v26);
              }
            }

            else
            {
              URL._bridgeToObjectiveC()(v22);
              v29 = v82;
              isa = 0;
            }

            v1 = [objc_allocWithZone(REMURLAttachment) initWithObjectID:v10 accountID:v15 reminderID:v18 url:v29 metadata:isa];

            (*(v86 + 8))(v8, v3);
            return v1;
          }
        }
      }

      v13 = &selRef_persistentStoreForIdentifier_;
    }
  }

  v32 = [a1 account];
  if (v32)
  {
    v33 = v32;
    v34 = 0xE900000000000029;
  }

  else
  {
    if (qword_1009362B8 != -1)
    {
      swift_once();
    }

    v35 = type metadata accessor for Logger();
    sub_100006654(v35, qword_1009494A0);
    v36 = v10;
    v33 = Logger.logObject.getter();
    v37 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v33, v37))
    {
      v1 = v13;
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      *v38 = 138412290;
      *(v38 + 4) = v36;
      *v39 = v10;
      v40 = v36;
      _os_log_impl(&_mh_execute_header, v33, v37, "REMURLAttachmentCDIngestor: cdURLAttachment.account is nil {cdURLAttachment.remObjectID: %@}", v38, 0xCu);
      sub_1000050A4(v39, &unk_100938E70, &unk_100797230);

      v13 = v1;
    }

    v34 = 0xE700000000000000;
  }

  v41 = [a1 v13[127]];
  if (v41)
  {
    v49 = v41;
  }

  else
  {
    v34, v42, v43, v44, v45, v46, v47, v48;
    if (qword_1009362B8 != -1)
    {
      swift_once();
    }

    v50 = type metadata accessor for Logger();
    sub_100006654(v50, qword_1009494A0);
    v51 = v10;
    v49 = Logger.logObject.getter();
    v52 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v49, v52))
    {
      v53 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      *v53 = 138412290;
      *(v53 + 4) = v51;
      *v54 = v10;
      v55 = v51;
      _os_log_impl(&_mh_execute_header, v49, v52, "REMURLAttachmentCDIngestor: cdURLAttachment.reminder is nil {cdURLAttachment.remObjectID: %@}", v53, 0xCu);
      sub_1000050A4(v54, &unk_100938E70, &unk_100797230);
    }

    v34 = 0xE800000000000000;
  }

  v56 = [a1 uti];
  if (v56)
  {
    v64 = v56;
  }

  else
  {
    v34, v57, v58, v59, v60, v61, v62, v63;
    if (qword_1009362B8 != -1)
    {
      swift_once();
    }

    v65 = type metadata accessor for Logger();
    sub_100006654(v65, qword_1009494A0);
    v66 = v10;
    v64 = Logger.logObject.getter();
    v67 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v64, v67))
    {
      v68 = swift_slowAlloc();
      v69 = swift_slowAlloc();
      *v68 = 138412290;
      *(v68 + 4) = v66;
      *v69 = v10;
      v70 = v66;
      _os_log_impl(&_mh_execute_header, v64, v67, "REMURLAttachmentCDIngestor: cdURLAttachment.uti is nil {cdURLAttachment.remObjectID: %@}", v68, 0xCu);
      sub_1000050A4(v69, &unk_100938E70, &unk_100797230);
    }

    v34 = 0xE300000000000000;
  }

  v71 = objc_opt_self();
  sub_1000060C8(0, &qword_100944EC8, off_1008D41F0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v73 = String._bridgeToObjectiveC()();
  v34, v74, v75, v76, v77, v78, v79, v80;
  [v71 unexpectedNilPropertyWithClass:ObjCClassFromMetadata property:v73];

  swift_willThrow();
  return v1;
}

void sub_1004BB414(void *a1, void *a2, uint64_t a3)
{
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6, v8);
  v114 = v103 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10, v11);
  v115 = v103 - v12;
  v117 = type metadata accessor for UUID();
  *&v15 = __chkstk_darwin(v117, v13).n128_u64[0];
  v17 = v103 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(a3 + 16);
  if (v18)
  {
    v19 = (a3 + 32);
    v116 = (v14 + 8);
    v112 = (v7 + 32);
    v113 = (v7 + 8);
    do
    {
      v24 = *v19++;
      v23 = v24;
      if (v24 <= 2)
      {
        if (!v23)
        {
          v20 = [a1 objectID];
          v21 = [v20 uuid];

          static UUID._unconditionallyBridgeFromObjectiveC(_:)();
          v22.super.isa = UUID._bridgeToObjectiveC()().super.isa;
          (*v116)(v17, v117);
          [a2 setIdentifier:v22.super.isa];
LABEL_4:

          goto LABEL_5;
        }

        if (v23 == 1)
        {
          v22.super.isa = [a1 uti];
          if (!v22.super.isa)
          {
            static String._unconditionallyBridgeFromObjectiveC(_:)();
            v83 = v82;
            v22.super.isa = String._bridgeToObjectiveC()();
            v83, v84, v85, v86, v87, v88, v89, v90;
          }

          [a2 setUti:v22.super.isa];
          goto LABEL_4;
        }

        v92 = [a1 fileSize];
        if ((v92 & 0x8000000000000000) != 0)
        {
          goto LABEL_33;
        }

        [a2 setFileSize:v92];
      }

      else if (v23 > 4)
      {
        if (v23 == 5)
        {
          v91 = [a1 width];
          if (v91 >> 15)
          {
            goto LABEL_34;
          }

          [a2 setWidth:v91];
        }

        else
        {
          v93 = [a1 height];
          if (v93 >> 15)
          {
            __break(1u);
LABEL_33:
            __break(1u);
LABEL_34:
            __break(1u);
          }

          [a2 setHeight:v93];
        }
      }

      else if (v23 == 3)
      {
        v25 = [a1 fileURL];
        if (v25)
        {
          v26 = v114;
          v27 = v25;
          static URL._unconditionallyBridgeFromObjectiveC(_:)();

          v28 = v115;
          (*v112)(v115, v26, v6);
          v29 = [a2 storeControllerManagedObjectContext];
          if (v29 && (v30 = v29, v31 = [v29 storeController], v30, v31))
          {
            v109 = static REMFileDigester.sha512Sum(url:)();
            v110 = v32;
            if (v32)
            {
              v107 = v6;
              v108 = v31;
              v103[1] = URL.lastPathComponent.getter();
              v106 = v33;
              v34 = [a1 objectID];
              v35 = [v34 uuid];

              static UUID._unconditionallyBridgeFromObjectiveC(_:)();
              v36.super.isa = UUID._bridgeToObjectiveC()().super.isa;
              v37 = v117;
              v104 = *v116;
              isa = v36.super.isa;
              v104(v17, v117);
              v38 = [a1 accountID];
              v39 = [v38 uuid];

              static UUID._unconditionallyBridgeFromObjectiveC(_:)();
              v40 = UUID._bridgeToObjectiveC()().super.isa;
              v103[0] = v17;
              v104(v17, v37);
              URL.lastPathComponent.getter();
              v42 = v41;
              v43 = String._bridgeToObjectiveC()();
              v42, v44, v45, v46, v47, v48, v49, v50;
              v51 = String._bridgeToObjectiveC()();
              URL._bridgeToObjectiveC()(v52);
              v54 = v53;
              v118 = 0;
              v55 = isa;
              LODWORD(v104) = [v108 updateAttachmentFile:isa accountID:v40 fileName:v43 sha512Sum:v51 fileURL:v53 keepSource:1 error:&v118];

              v56 = v118;
              if ((v104 & 1) == 0)
              {
                v94 = v56;
                v106, v57, v58, v59, v60, v61, v62, v63;
                v110, v95, v96, v97, v98, v99, v100, v101;
                v102 = _convertNSErrorToError(_:)();

                v111 = v102;
                swift_willThrow();

                (*v113)(v115, v107);
                return;
              }

              v64 = v106;
              v65 = String._bridgeToObjectiveC()();
              v64, v66, v67, v68, v69, v70, v71, v72;
              [a2 setFileName:v65];

              v73 = v110;
              v74 = String._bridgeToObjectiveC()();
              v73, v75, v76, v77, v78, v79, v80, v81;
              [a2 setSha512Sum:v74];

              v6 = v107;
              (*v113)(v115, v107);
              v17 = v103[0];
            }

            else
            {
              (*v113)(v28, v6);
            }
          }

          else
          {
            (*v113)(v28, v6);
          }
        }
      }

LABEL_5:
      --v18;
    }

    while (v18);
  }
}

void sub_1004BBAB8(void *a1, void *a2, uint64_t a3)
{
  v110 = a2;
  v5 = type metadata accessor for URL();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5, v7);
  v106 = &v93[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v9, v10);
  v107 = &v93[-v11];
  v109 = type metadata accessor for UUID();
  *&v14 = __chkstk_darwin(v109, v12).n128_u64[0];
  v16 = &v93[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = *(a3 + 16);
  if (v17)
  {
    v18 = (a3 + 32);
    v108 = (v13 + 8);
    v104 = (v6 + 32);
    v105 = (v6 + 8);
    v19 = &selRef_hack_willSaveHandled;
    do
    {
      v24 = *v18++;
      v23 = v24;
      if (v24 <= 1)
      {
        if (v23)
        {
          v22.super.isa = [a1 uti];
          if (!v22.super.isa)
          {
            static String._unconditionallyBridgeFromObjectiveC(_:)();
            v68 = v67;
            v22.super.isa = String._bridgeToObjectiveC()();
            v68, v69, v70, v71, v72, v73, v74, v75;
          }

          [v110 setUti:v22.super.isa];
        }

        else
        {
          v20 = [a1 v19[433]];
          v21 = [v20 uuid];

          static UUID._unconditionallyBridgeFromObjectiveC(_:)();
          v22.super.isa = UUID._bridgeToObjectiveC()().super.isa;
          (*v108)(v16, v109);
          [v110 setIdentifier:v22.super.isa];
        }
      }

      else if (v23 == 2)
      {
        v76 = [a1 fileSize];
        if ((v76 & 0x8000000000000000) != 0)
        {
          __break(1u);
        }

        [v110 setFileSize:v76];
      }

      else if (v23 == 3)
      {
        v25 = [a1 fileURL];
        if (v25)
        {
          v26 = v106;
          v27 = v25;
          static URL._unconditionallyBridgeFromObjectiveC(_:)();

          v28 = v107;
          (*v104)(v107, v26, v5);
          v29 = [v110 storeControllerManagedObjectContext];
          if (v29 && (v30 = v29, v31 = [v29 storeController], v30, v31))
          {
            v102 = static REMFileDigester.sha512Sum(url:)();
            v103 = v32;
            if (v32)
            {
              v97 = v5;
              v100 = v31;
              v98 = URL.lastPathComponent.getter();
              v99 = v33;
              v34 = [a1 v19[433]];
              v35 = [v34 uuid];

              static UUID._unconditionallyBridgeFromObjectiveC(_:)();
              isa = UUID._bridgeToObjectiveC()().super.isa;
              v36 = v109;
              v37 = *v108;
              (*v108)(v16, v109);
              v38 = [a1 accountID];
              v39 = [v38 uuid];

              static UUID._unconditionallyBridgeFromObjectiveC(_:)();
              v95 = UUID._bridgeToObjectiveC()().super.isa;
              v37(v16, v36);
              v40 = String._bridgeToObjectiveC()();
              v41 = String._bridgeToObjectiveC()();
              URL._bridgeToObjectiveC()(v42);
              v44 = v43;
              v111 = 0;
              v45 = v95;
              v46 = isa;
              v94 = [v100 updateAttachmentFile:isa accountID:v95 fileName:v40 sha512Sum:v41 fileURL:v43 keepSource:1 error:&v111];

              if ((v94 & 1) == 0)
              {
                v77 = v111;
                v99, v78, v79, v80, v81, v82, v83, v84;
                v103, v85, v86, v87, v88, v89, v90, v91;
                v92 = _convertNSErrorToError(_:)();

                v101 = v92;
                swift_willThrow();

                (*v105)(v107, v97);
                return;
              }

              v47 = v111;
              v48 = v99;
              v49 = String._bridgeToObjectiveC()();
              v48, v50, v51, v52, v53, v54, v55, v56;
              v57 = v110;
              [v110 setFileName:v49];

              v58 = v103;
              v59 = String._bridgeToObjectiveC()();
              v58, v60, v61, v62, v63, v64, v65, v66;
              [v57 setSha512Sum:v59];

              v5 = v97;
              (*v105)(v107, v97);
              v19 = &selRef_hack_willSaveHandled;
            }

            else
            {
              (*v105)(v28, v5);
            }
          }

          else
          {
            (*v105)(v28, v5);
          }
        }
      }

      --v17;
    }

    while (v17);
  }
}

id sub_1004BC0DC(id a1)
{
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2, v4);
  v6 = &v112 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000F5104(&unk_1009441F0, &qword_100795760);
  __chkstk_darwin(v7 - 8, v8);
  v10 = &v112 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11, v12);
  v14 = &v112 - v13;
  *&v17 = __chkstk_darwin(v15, v16).n128_u64[0];
  v19 = &v112 - v18;
  v126 = 0;
  v20 = [a1 remObjectIDWithError:{&v126, v17}];
  if (!v20)
  {
    v46 = v126;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    return a1;
  }

  v121 = v3;
  v122 = v14;
  v124 = v19;
  v125 = v20;
  v21 = v126;
  v22 = [a1 account];
  if (v22)
  {
    v23 = v22;
    v24 = [v22 remObjectID];

    v123 = v24;
    if (v24)
    {
      v25 = [a1 reminder];
      if (v25 && (v26 = v25, v27 = [v25 remObjectID], v26, v27))
      {
        v28 = [a1 uti];
        if (v28)
        {
          v29 = v10;
          v119 = v27;
          v120 = v28;
          v30 = type metadata accessor for URL();
          v31 = *(v30 - 8);
          v32 = *(v31 + 56);
          v33 = v124;
          v115 = v31 + 56;
          v116 = v32;
          v32(v124, 1, 1, v30);
          v34 = [a1 storeControllerManagedObjectContext];
          if (v34)
          {
            v118 = v31;
            v35 = v34;
            v36 = [v34 storeController];

            v31 = v118;
            v117 = v36;
            if (v36)
            {
              v37 = [a1 fileName];
              if (v37)
              {
                v113 = v37;
                v38 = [v125 uuid];
                static UUID._unconditionallyBridgeFromObjectiveC(_:)();

                isa = UUID._bridgeToObjectiveC()().super.isa;
                v114 = v30;
                v40 = v121[1];
                v40(v6, v2);
                v41 = [v123 uuid];
                static UUID._unconditionallyBridgeFromObjectiveC(_:)();

                v42 = UUID._bridgeToObjectiveC()().super.isa;
                v40(v6, v2);
                v30 = v114;
                v33 = v124;
                v121 = [a1 sha512Sum];
                v43 = v113;
                v44 = [v117 URLForAttachmentFile:isa accountID:v42 fileName:v113 sha512Sum:v121];

                v31 = v118;
                v45 = v122;
                static URL._unconditionallyBridgeFromObjectiveC(_:)();

                sub_1000050A4(v33, &unk_1009441F0, &qword_100795760);
                v116(v45, 0, 1, v30);
                sub_10003E8F8(v45, v33);
              }

              else
              {
              }
            }
          }

          v97 = [a1 fileSize];
          if ((v97 & 0x8000000000000000) != 0)
          {
            __break(1u);
          }

          v98 = v97;
          sub_1001E0978(v33, v29);
          v99 = [a1 width];
          v100 = v99 & ~(v99 >> 31);
          v101 = [a1 height];
          v102 = v101 & ~(v101 >> 31);
          if ((*(v31 + 48))(v29, 1, v30) == 1)
          {
            v104 = 0;
          }

          else
          {
            URL._bridgeToObjectiveC()(v103);
            v104 = v105;
            (*(v31 + 8))(v29, v30);
          }

          v106 = objc_allocWithZone(REMImageAttachment);
          v111 = v100;
          v107 = v125;
          v108 = v123;
          v109 = v119;
          v110 = v120;
          a1 = [v106 initWithObjectID:v125 accountID:v123 reminderID:v119 UTI:v120 fileSize:v98 fileURL:v104 data:0 width:v111 height:v102];

          sub_1000050A4(v33, &unk_1009441F0, &qword_100795760);
          return a1;
        }
      }

      else
      {
        v27 = v123;
      }
    }
  }

  v47 = [a1 account];
  if (v47)
  {
    v48 = v47;
    v49 = 0xE900000000000029;
    v50 = v125;
  }

  else
  {
    v50 = v125;
    if (qword_1009362B8 != -1)
    {
      swift_once();
    }

    v51 = type metadata accessor for Logger();
    sub_100006654(v51, qword_1009494A0);
    v52 = v50;
    v48 = Logger.logObject.getter();
    v53 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v48, v53))
    {
      v54 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      *v54 = 138412290;
      *(v54 + 4) = v52;
      *v55 = v50;
      v56 = v52;
      _os_log_impl(&_mh_execute_header, v48, v53, "REMImageAttachmentCDIngestor: cdImageAttachment.account is nil {cdImageAttachment.remObjectID: %@}", v54, 0xCu);
      sub_1000050A4(v55, &unk_100938E70, &unk_100797230);
    }

    v49 = 0xE700000000000000;
  }

  v57 = [a1 reminder];
  if (v57)
  {
    v65 = v57;
  }

  else
  {
    v49, v58, v59, v60, v61, v62, v63, v64;
    if (qword_1009362B8 != -1)
    {
      swift_once();
    }

    v66 = type metadata accessor for Logger();
    sub_100006654(v66, qword_1009494A0);
    v67 = v50;
    v65 = Logger.logObject.getter();
    v68 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v65, v68))
    {
      v69 = swift_slowAlloc();
      v70 = swift_slowAlloc();
      *v69 = 138412290;
      *(v69 + 4) = v67;
      *v70 = v50;
      v71 = v67;
      _os_log_impl(&_mh_execute_header, v65, v68, "REMImageAttachmentCDIngestor: cdImageAttachment.reminder is nil {cdImageAttachment.remObjectID: %@}", v69, 0xCu);
      sub_1000050A4(v70, &unk_100938E70, &unk_100797230);
    }

    v49 = 0xE800000000000000;
  }

  v72 = [a1 uti];
  if (v72)
  {
    v80 = v72;
  }

  else
  {
    v49, v73, v74, v75, v76, v77, v78, v79;
    if (qword_1009362B8 != -1)
    {
      swift_once();
    }

    v81 = type metadata accessor for Logger();
    sub_100006654(v81, qword_1009494A0);
    v82 = v50;
    v80 = Logger.logObject.getter();
    v83 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v80, v83))
    {
      v84 = swift_slowAlloc();
      v85 = swift_slowAlloc();
      *v84 = 138412290;
      *(v84 + 4) = v82;
      *v85 = v50;
      v86 = v82;
      _os_log_impl(&_mh_execute_header, v80, v83, "REMImageAttachmentCDIngestor: cdImageAttachment.uti is nil {cdImageAttachment.remObjectID: %@}", v84, 0xCu);
      sub_1000050A4(v85, &unk_100938E70, &unk_100797230);
    }

    v49 = 0xE300000000000000;
  }

  a1 = objc_opt_self();
  sub_1000060C8(0, &unk_100944ED0, off_1008D41A0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v88 = String._bridgeToObjectiveC()();
  v49, v89, v90, v91, v92, v93, v94, v95;
  [a1 unexpectedNilPropertyWithClass:ObjCClassFromMetadata property:v88];

  swift_willThrow();
  return a1;
}

id sub_1004BCB54(id a1)
{
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2, v4);
  v6 = &v108 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000F5104(&unk_1009441F0, &qword_100795760);
  __chkstk_darwin(v7 - 8, v8);
  v10 = &v108 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11, v12);
  v14 = &v108 - v13;
  *&v17 = __chkstk_darwin(v15, v16).n128_u64[0];
  v19 = &v108 - v18;
  v122 = 0;
  v20 = [a1 remObjectIDWithError:{&v122, v17}];
  if (!v20)
  {
    v46 = v122;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    return a1;
  }

  v117 = v3;
  v118 = v14;
  v120 = v19;
  v121 = v20;
  v21 = v122;
  v22 = [a1 account];
  if (v22)
  {
    v23 = v22;
    v24 = [v22 remObjectID];

    v119 = v24;
    if (v24)
    {
      v25 = [a1 reminder];
      if (v25 && (v26 = v25, v27 = [v25 remObjectID], v26, v27))
      {
        v28 = [a1 uti];
        if (v28)
        {
          v29 = v10;
          v115 = v27;
          v116 = v28;
          v30 = type metadata accessor for URL();
          v31 = *(v30 - 8);
          v32 = *(v31 + 56);
          v33 = v120;
          v111 = v31 + 56;
          v112 = v32;
          v32(v120, 1, 1, v30);
          v34 = [a1 storeControllerManagedObjectContext];
          if (v34)
          {
            v114 = v31;
            v35 = v34;
            v36 = [v34 storeController];

            v31 = v114;
            v113 = v36;
            if (v36)
            {
              v37 = [a1 fileName];
              if (v37)
              {
                v109 = v37;
                v38 = [v121 uuid];
                static UUID._unconditionallyBridgeFromObjectiveC(_:)();

                isa = UUID._bridgeToObjectiveC()().super.isa;
                v110 = v30;
                v40 = v117[1];
                v40(v6, v2);
                v41 = [v119 uuid];
                static UUID._unconditionallyBridgeFromObjectiveC(_:)();

                v42 = UUID._bridgeToObjectiveC()().super.isa;
                v40(v6, v2);
                v30 = v110;
                v33 = v120;
                v117 = [a1 sha512Sum];
                v43 = v109;
                v44 = [v113 URLForAttachmentFile:isa accountID:v42 fileName:v109 sha512Sum:v117];

                v31 = v114;
                v45 = v118;
                static URL._unconditionallyBridgeFromObjectiveC(_:)();

                sub_1000050A4(v33, &unk_1009441F0, &qword_100795760);
                v112(v45, 0, 1, v30);
                sub_10003E8F8(v45, v33);
              }

              else
              {
              }
            }
          }

          v97 = [a1 fileSize];
          if ((v97 & 0x8000000000000000) != 0)
          {
            __break(1u);
          }

          v98 = v97;
          sub_1001E0978(v33, v29);
          v99 = (*(v31 + 48))(v29, 1, v30);
          v101 = v121;
          if (v99 == 1)
          {
            v102 = 0;
          }

          else
          {
            URL._bridgeToObjectiveC()(v100);
            v102 = v103;
            (*(v31 + 8))(v29, v30);
          }

          v104 = objc_allocWithZone(REMFileAttachment);
          v105 = v119;
          v106 = v115;
          v107 = v116;
          a1 = [v104 initWithObjectID:v101 accountID:v119 reminderID:v115 UTI:v116 fileSize:v98 fileURL:v102 data:0];

          sub_1000050A4(v33, &unk_1009441F0, &qword_100795760);
          return a1;
        }
      }

      else
      {
        v27 = v119;
      }
    }
  }

  v47 = [a1 account];
  if (v47)
  {
    v48 = v47;
    v49 = 0xE900000000000029;
    v50 = v121;
  }

  else
  {
    v50 = v121;
    if (qword_1009362B8 != -1)
    {
      swift_once();
    }

    v51 = type metadata accessor for Logger();
    sub_100006654(v51, qword_1009494A0);
    v52 = v50;
    v48 = Logger.logObject.getter();
    v53 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v48, v53))
    {
      v54 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      *v54 = 138412290;
      *(v54 + 4) = v52;
      *v55 = v50;
      v56 = v52;
      _os_log_impl(&_mh_execute_header, v48, v53, "REMFileAttachmentCDIngestor: cdFileAttachment.account is nil {cdFileAttachment.remObjectID: %@}", v54, 0xCu);
      sub_1000050A4(v55, &unk_100938E70, &unk_100797230);
    }

    v49 = 0xE700000000000000;
  }

  v57 = [a1 reminder];
  if (v57)
  {
    v65 = v57;
  }

  else
  {
    v49, v58, v59, v60, v61, v62, v63, v64;
    if (qword_1009362B8 != -1)
    {
      swift_once();
    }

    v66 = type metadata accessor for Logger();
    sub_100006654(v66, qword_1009494A0);
    v67 = v50;
    v65 = Logger.logObject.getter();
    v68 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v65, v68))
    {
      v69 = swift_slowAlloc();
      v70 = swift_slowAlloc();
      *v69 = 138412290;
      *(v69 + 4) = v67;
      *v70 = v50;
      v71 = v67;
      _os_log_impl(&_mh_execute_header, v65, v68, "REMFileAttachmentCDIngestor: cdFileAttachment.reminder is nil {cdFileAttachment.remObjectID: %@}", v69, 0xCu);
      sub_1000050A4(v70, &unk_100938E70, &unk_100797230);
    }

    v49 = 0xE800000000000000;
  }

  v72 = [a1 uti];
  if (v72)
  {
    v80 = v72;
  }

  else
  {
    v49, v73, v74, v75, v76, v77, v78, v79;
    if (qword_1009362B8 != -1)
    {
      swift_once();
    }

    v81 = type metadata accessor for Logger();
    sub_100006654(v81, qword_1009494A0);
    v82 = v50;
    v80 = Logger.logObject.getter();
    v83 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v80, v83))
    {
      v84 = swift_slowAlloc();
      v85 = swift_slowAlloc();
      *v84 = 138412290;
      *(v84 + 4) = v82;
      *v85 = v50;
      v86 = v82;
      _os_log_impl(&_mh_execute_header, v80, v83, "REMFileAttachmentCDIngestor: cdFileAttachment.uti is nil {cdFileAttachment.remObjectID: %@}", v84, 0xCu);
      sub_1000050A4(v85, &unk_100938E70, &unk_100797230);
    }

    v49 = 0xE300000000000000;
  }

  a1 = objc_opt_self();
  sub_1000060C8(0, &qword_100939DF0, off_1008D4188);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v88 = String._bridgeToObjectiveC()();
  v49, v89, v90, v91, v92, v93, v94, v95;
  [a1 unexpectedNilPropertyWithClass:ObjCClassFromMetadata property:v88];

  swift_willThrow();
  return a1;
}

unint64_t sub_1004BD630()
{
  result = qword_100949B28;
  if (!qword_100949B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100949B28);
  }

  return result;
}

unint64_t sub_1004BD6B8()
{
  result = qword_100949B40;
  if (!qword_100949B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100949B40);
  }

  return result;
}

unint64_t sub_1004BD740()
{
  result = qword_100949B58;
  if (!qword_100949B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100949B58);
  }

  return result;
}

unint64_t sub_1004BD7C8()
{
  result = qword_100949B70;
  if (!qword_100949B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100949B70);
  }

  return result;
}

unint64_t sub_1004BD850()
{
  result = qword_100949B88;
  if (!qword_100949B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100949B88);
  }

  return result;
}

unint64_t sub_1004BD8D8()
{
  result = qword_100949BA0;
  if (!qword_100949BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100949BA0);
  }

  return result;
}

uint64_t sub_1004BD948()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_100949BB0);
  v1 = sub_100006654(v0, qword_100949BB0);
  if (qword_100936410 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_100974F78);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void sub_1004BDA10(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    if (qword_1009362C0 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_100006654(v3, qword_100949BB0);
    v4 = v2;
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      aBlock[0] = v8;
      *v7 = 136446210;
      v9 = *&v4[OBJC_IVAR____TtC7remindd18RDClientConnection_clientIdentity + 16];
      v35 = *&v4[OBJC_IVAR____TtC7remindd18RDClientConnection_clientIdentity];
      *v36 = v9;
      *&v36[14] = *&v4[OBJC_IVAR____TtC7remindd18RDClientConnection_clientIdentity + 30];
      sub_1000F5104(&qword_100939EB0, &qword_1007989A0);
      v10 = swift_allocObject();
      v11 = v10;
      *(v10 + 16) = xmmword_100791340;
      if (((*&v36[28] << 32) & 0xC10000000000) == 0x810000000000)
      {
        v12 = 0xD000000000000011;
      }

      else
      {
        v12 = 0;
      }

      if (((*&v36[28] << 32) & 0xC10000000000) == 0x810000000000)
      {
        v13 = 0x80000001007EECE0;
      }

      else
      {
        v13 = 0xE000000000000000;
      }

      *(v10 + 56) = &type metadata for String;
      v14 = sub_100006600();
      v11[8] = v14;
      v11[4] = v12;
      v11[5] = v13;
      v15 = sub_1000063E8();
      v11[12] = &type metadata for String;
      v11[13] = v14;
      v11[9] = v15;
      v11[10] = v16;
      v17 = String.init(format:_:)();
      v19 = v18;
      v20 = sub_10000668C(v17, v18, aBlock);
      v19, v21, v22, v23, v24, v25, v26, v27;
      *(v7 + 4) = v20;
      _os_log_impl(&_mh_execute_header, v5, v6, "Connection was interrupted unexpectedly {clientIdentity: %{public}s}", v7, 0xCu);
      sub_10000607C(v8);
    }

    v28 = swift_unknownObjectWeakLoadStrong();
    if (v28)
    {
      v29 = *(v28 + OBJC_IVAR____TtC7remindd26RDClientConnectionListener_listenerQueue);
      v30 = v28;
      v31 = swift_allocObject();
      *(v31 + 16) = v4;
      *(v31 + 24) = v30;
      v32 = swift_allocObject();
      *(v32 + 16) = sub_1004BECBC;
      *(v32 + 24) = v31;
      aBlock[4] = sub_1000FDA90;
      aBlock[5] = v32;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_10000F160;
      aBlock[3] = &unk_1008F4668;
      v33 = _Block_copy(aBlock);
      v4 = v4;
      swift_unknownObjectRetain();

      dispatch_sync(v29, v33);
      _Block_release(v33);
      LOBYTE(v29) = swift_isEscapingClosureAtFileLocation();

      swift_unknownObjectRelease();

      if ((v29 & 1) == 0)
      {
        return;
      }

      __break(1u);
    }
  }
}

id sub_1004BDDAC()
{
  sub_100053464();
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RDClientConnection();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1004BDE38(uint64_t a1, uint64_t a2, void *a3, void (*a4)(uint64_t, id))
{
  if (qword_100935FC8 != -1)
  {
    swift_once();
  }

  v9 = (v4 + OBJC_IVAR____TtC7remindd18RDClientConnection_clientIdentity);
  v10 = *(v4 + OBJC_IVAR____TtC7remindd18RDClientConnection_clientIdentity + 16);
  v38 = *(v4 + OBJC_IVAR____TtC7remindd18RDClientConnection_clientIdentity);
  v39[0] = v10;
  *(v39 + 14) = *(v4 + OBJC_IVAR____TtC7remindd18RDClientConnection_clientIdentity + 30);
  _StringGuts.grow(_:)(17);
  0xE000000000000000, v11, v12, v13, v14, v15, v16, v17;
  *&v36 = 0x725465676E616863;
  *(&v36 + 1) = 0xEF2E676E696B6361;
  v18._countAndFlagsBits = a2;
  v18._object = a3;
  String.append(_:)(v18);
  sub_1000081D8(&v38, 0x725465676E616863, 0xEF2E676E696B6361);
  0xEF2E676E696B6361, v19, v20, v21, v22, v23, v24, v25;
  v26 = *(v9 + 22);
  if (v26 >> 14 >= 2)
  {
    if (v26 >> 14 == 2)
    {
      v27 = *(v9 + 10) | (*(v9 + 22) << 32);
    }

    else
    {
      v27 = 0x7FFFFFFFLL;
    }
  }

  else
  {
    v27 = 2147483519;
  }

  sub_100009A40(16, v27);
  v29 = *(v4 + OBJC_IVAR____TtC7remindd18RDClientConnection_xpcDaemon + 8);
  ObjectType = swift_getObjectType();
  v31 = v9[1];
  v36 = *v9;
  v37[0] = v31;
  *(v37 + 14) = *(v9 + 30);
  v32 = (*(v29 + 8))(&v36, a1, ObjectType, v29);
  if (v32)
  {
    a4(v32, 0);

    return swift_unknownObjectRelease();
  }

  else
  {
    v33 = objc_opt_self();
    v34 = String._bridgeToObjectiveC()();
    v35 = [v33 xpcPerformerUnavailableErrorWithDescription:v34];

    swift_willThrow();
    swift_errorRetain();
    a4(0, v35);
  }
}

uint64_t sub_1004BE0FC(uint64_t a1, Swift::String a2, void (*a3)(uint64_t, id))
{
  object = a2._object;
  countAndFlagsBits = a2._countAndFlagsBits;
  if (qword_100935FC8 != -1)
  {
    swift_once();
  }

  v8 = (v3 + OBJC_IVAR____TtC7remindd18RDClientConnection_clientIdentity);
  v9 = *(v3 + OBJC_IVAR____TtC7remindd18RDClientConnection_clientIdentity + 16);
  v30 = *(v3 + OBJC_IVAR____TtC7remindd18RDClientConnection_clientIdentity);
  v31[0] = v9;
  *(v31 + 14) = *(v3 + OBJC_IVAR____TtC7remindd18RDClientConnection_clientIdentity + 30);
  *&v28 = 0x2E6775626564;
  *(&v28 + 1) = 0xE600000000000000;
  v10._countAndFlagsBits = countAndFlagsBits;
  v10._object = object;
  String.append(_:)(v10);
  sub_1000081D8(&v30, 0x2E6775626564, 0xE600000000000000);
  0xE600000000000000, v11, v12, v13, v14, v15, v16, v17;
  v18 = *(v8 + 22);
  if (v18 >> 14 >= 2)
  {
    if (v18 >> 14 == 2)
    {
      v19 = *(v8 + 10) | (*(v8 + 22) << 32);
    }

    else
    {
      v19 = 0x7FFFFFFFLL;
    }
  }

  else
  {
    v19 = 2147483519;
  }

  sub_100009A40(32, v19);
  v21 = *(v3 + OBJC_IVAR____TtC7remindd18RDClientConnection_xpcDaemon + 8);
  ObjectType = swift_getObjectType();
  v23 = v8[1];
  v28 = *v8;
  v29[0] = v23;
  *(v29 + 14) = *(v8 + 30);
  v24 = (*(v21 + 16))(&v28, a1, ObjectType, v21);
  if (v24)
  {
    a3(v24, 0);

    return swift_unknownObjectRelease();
  }

  else
  {
    v25 = objc_opt_self();
    v26 = String._bridgeToObjectiveC()();
    v27 = [v25 xpcPerformerUnavailableErrorWithDescription:v26];

    swift_willThrow();
    swift_errorRetain();
    a3(0, v27);
  }
}

uint64_t sub_1004BE394(void *a1, int a2, void *a3, uint64_t a4, void *aBlock, uint64_t a6, uint64_t a7, void (*a8)(void *, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v12 = _Block_copy(aBlock);
  v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = v14;
  v16 = swift_allocObject();
  *(v16 + 16) = v12;
  v17 = a3;
  v18 = a1;
  a8(a3, v13, v15, a7, v16);

  v15, v19, v20, v21, v22, v23, v24, v25;
}

uint64_t sub_1004BE468(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, id))
{
  v4 = v3;
  if (qword_100935FC8 != -1)
  {
    v25 = a1;
    v26 = a2;
    swift_once();
    a1 = v25;
    a2 = v26;
  }

  v6 = (v4 + OBJC_IVAR____TtC7remindd18RDClientConnection_clientIdentity);
  v7 = *(v4 + OBJC_IVAR____TtC7remindd18RDClientConnection_clientIdentity + 16);
  v29 = *(v4 + OBJC_IVAR____TtC7remindd18RDClientConnection_clientIdentity);
  v30[0] = v7;
  *(v30 + 14) = *(v4 + OBJC_IVAR____TtC7remindd18RDClientConnection_clientIdentity + 30);
  *&v27 = 0x676E697865646E69;
  *(&v27 + 1) = 0xE90000000000002ELL;
  String.append(_:)(*&a1);
  sub_1000081D8(&v29, 0x676E697865646E69, 0xE90000000000002ELL);
  0xE90000000000002ELL, v8, v9, v10, v11, v12, v13, v14;
  v15 = *(v6 + 22);
  if (v15 >> 14 >= 2)
  {
    if (v15 >> 14 == 2)
    {
      v16 = *(v6 + 10) | (*(v6 + 22) << 32);
    }

    else
    {
      v16 = 0x7FFFFFFFLL;
    }
  }

  else
  {
    v16 = 2147483519;
  }

  sub_100009A40(64, v16);
  v18 = *(v4 + OBJC_IVAR____TtC7remindd18RDClientConnection_xpcDaemon + 8);
  ObjectType = swift_getObjectType();
  v20 = v6[1];
  v27 = *v6;
  v28[0] = v20;
  *(v28 + 14) = *(v6 + 30);
  v21 = (*(v18 + 40))(&v27, ObjectType, v18);
  if (v21)
  {
    a3(v21, 0);

    return swift_unknownObjectRelease();
  }

  else
  {
    v22 = objc_opt_self();
    v23 = String._bridgeToObjectiveC()();
    v24 = [v22 xpcPerformerUnavailableErrorWithDescription:v23];

    swift_willThrow();
    swift_errorRetain();
    a3(0, v24);
  }
}

void sub_1004BE6F8(uint64_t a1, SEL *a2, const char *a3)
{
  v6 = sub_10000AA28();
  if (v6)
  {
    [v6 *a2];

    swift_unknownObjectRelease();
  }

  else
  {
    if (qword_1009362C0 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_100006654(v7, qword_100949BB0);
    oslog = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(oslog, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v8, a3, v9, 2u);
    }
  }
}

void sub_1004BE8A8(uint64_t a1)
{
  if (qword_1009362C0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100006654(v1, qword_100949BB0);
  swift_errorRetain();
  oslog = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(oslog, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v17 = v4;
    *v3 = 136315138;
    swift_getErrorValue();
    v5 = Error.localizedDescription.getter();
    v7 = v6;
    v8 = sub_10000668C(v5, v6, &v17);
    v7, v9, v10, v11, v12, v13, v14, v15;
    *(v3 + 4) = v8;
    _os_log_impl(&_mh_execute_header, oslog, v2, "Unable to get remoteObjectProxy for the app from the daemon. Maybe the client is gone? {error: %s}", v3, 0xCu);
    sub_10000607C(v4);
  }

  else
  {
  }
}

NSString sub_1004BEA40()
{
  result = String._bridgeToObjectiveC()();
  qword_100974EC0 = result;
  return result;
}

NSString sub_1004BEA78()
{
  result = String._bridgeToObjectiveC()();
  qword_100974EC8 = result;
  return result;
}

uint64_t sub_1004BEAB0(unsigned __int8 a1)
{
  v2 = v1;
  v4 = String._bridgeToObjectiveC()();
  v5 = [v2 valueForEntitlement:v4];

  if (v5)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v29 = 0u;
    v30 = 0u;
  }

  v31[0] = v29;
  v31[1] = v30;
  if (!*(&v30 + 1))
  {
    sub_1000050A4(v31, &qword_100939ED0, &qword_100791B10);
    goto LABEL_11;
  }

  sub_1000F5104(&unk_10093B300, &unk_100797780);
  v6 = swift_dynamicCast();
  if ((v6 & 1) == 0)
  {
LABEL_11:
    v11 = 0;
    return v11 & 1;
  }

  v8 = v29;
  if (a1 <= 1u)
  {
    v10 = 0xD000000000000014;
    if (a1)
    {
      v10 = 0xD000000000000011;
      v9 = "d.userInteractive";
    }

    else
    {
      v9 = "com.apple.remindd";
    }
  }

  else if (a1 == 2)
  {
    v9 = "com.apple.suggestd.reminders";
    v10 = 0xD000000000000021;
  }

  else if (a1 == 3)
  {
    v9 = "istributed-evaluation";
    v10 = 0xD00000000000001CLL;
  }

  else
  {
    v9 = "h-lookup.global-name";
    v10 = 0xD000000000000025;
  }

  v12 = (v9 | 0x8000000000000000);
  *&v31[0] = v10;
  *(&v31[0] + 1) = v9 | 0x8000000000000000;
  __chkstk_darwin(v6, v7);
  v28[2] = v31;
  v11 = sub_100040A74(sub_1002CB9B8, v28, v29);
  v12, v13, v14, v15, v16, v17, v18, v19;
  v8, v20, v21, v22, v23, v24, v25, v26;
  return v11 & 1;
}

uint64_t sub_1004BECC0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v256 = a3;
  v255 = a2;
  v254 = a1;
  v5 = sub_1000F5104(&qword_100949DC0, &qword_1007AE140);
  __chkstk_darwin(v5 - 8, v6);
  v8 = (&v251 - v7);
  v9 = type metadata accessor for REMManualOrdering.PinnedList();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9, v11);
  v283 = &v251 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13, v14);
  v282 = &v251 - v15;
  __chkstk_darwin(v16, v17);
  v267 = &v251 - v18;
  v19 = type metadata accessor for REMAccountsListDataView.Model.PinnedList();
  v20 = *(v19 - 8);
  __chkstk_darwin(v19, v21);
  v269 = &v251 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23, v24);
  v286 = &v251 - v25;
  __chkstk_darwin(v26, v27);
  v253 = &v251 - v28;
  __chkstk_darwin(v29, v30);
  v251 = &v251 - v31;
  __chkstk_darwin(v32, v33);
  v252 = &v251 - v34;
  __chkstk_darwin(v35, v36);
  v261 = &v251 - v37;
  __chkstk_darwin(v38, v39);
  v262 = &v251 - v40;
  __chkstk_darwin(v41, v42);
  v44 = (&v251 - v43);
  __chkstk_darwin(v45, v46);
  v284 = (&v251 - v47);
  __chkstk_darwin(v48, v49);
  v258 = &v251 - v50;
  v53 = __chkstk_darwin(v51, v52);
  v287 = &v251 - v55;
  v288 = v54;
  v56 = *(a4 + 16);
  v260 = v20;
  v268 = v56;
  v257 = a4;
  if (v56)
  {
    v58 = *(v20 + 16);
    v57 = (v20 + 16);
    v59 = a4 + ((v57[64] + 32) & ~v57[64]);
    v277 = *(v57 + 7);
    v278 = v58;
    v276 = (v57 + 72);
    v275 = enum case for REMAccountsListDataView.Model.PinnedList.predefinedSmartList(_:);
    v265 = enum case for REMAccountsListDataView.Model.PinnedList.list(_:);
    v259 = enum case for REMAccountsListDataView.Model.PinnedList.customSmartList(_:);
    v279 = v57;
    v273 = v57 - 8;
    v274 = (v57 + 80);
    v264 = enum case for REMManualOrdering.PinnedList.listOrCustomSmartList(_:);
    v272 = (v10 + 104);
    v263 = enum case for REMManualOrdering.PinnedList.predefinedSmartList(_:);
    v60 = (v10 + 32);
    v271 = (v10 + 56);
    v266 = v10;
    v270 = (v10 + 48);
    v285 = &_swiftEmptyArrayStorage;
    v280 = v44;
    v281 = v8;
    v61 = v284;
    do
    {
      v62 = v287;
      v63 = v278;
      (v278)(v287, v59, v19, v53);
      (v63)(v61, v62, v19);
      (v63)(v44, v61, v19);
      v64 = (*v276)(v44, v19);
      if (v64 == v275)
      {
        v65 = *v273;
        (*v273)(v61, v19);
        (*v274)(v44, v19);
        v66 = *v44;
        v67 = v282;
        *v282 = v66;
        v68 = &v292 + 4;
      }

      else
      {
        if (v64 == v265)
        {
          (*v274)(v44, v19);
          v69 = *v44;
          v70 = [*v44 objectID];

          v19 = v288;
          v65 = *v273;
          (*v273)(v61, v288);
          v67 = v282;
          *v282 = v70;
        }

        else
        {
          if (v64 != v259)
          {
            goto LABEL_105;
          }

          (*v274)(v44, v19);
          v71 = *v44;
          v72 = [*v44 objectID];

          v65 = *v273;
          (*v273)(v61, v288);
          v67 = v282;
          *v282 = v72;
          v19 = v288;
        }

        v68 = &v293;
      }

      (*v272)(v67, *(v68 - 64), v9);
      v73 = *v60;
      v74 = v281;
      (*v60)(v281, v67, v9);
      (*v271)(v74, 0, 1, v9);
      v65(v287, v19);
      if ((*v270)(v74, 1, v9) == 1)
      {
        sub_1004BFFA4(v74);
        v44 = v280;
      }

      else
      {
        v75 = v267;
        v73(v267, v74, v9);
        v73(v283, v75, v9);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v285 = sub_100365A9C(0, *v285->clientIdentity + 1, 1, v285);
        }

        v77 = *v285->clientIdentity;
        v76 = *&v285->clientIdentity[8];
        v44 = v280;
        if (v77 >= v76 >> 1)
        {
          v285 = sub_100365A9C((v76 > 1), v77 + 1, 1, v285);
        }

        v78 = v285;
        *v285->clientIdentity = v77 + 1;
        v73(v78 + ((*(v266 + 80) + 32) & ~*(v266 + 80)) + *(v266 + 72) * v77, v283, v9);
        v19 = v288;
      }

      v59 += v277;
      --v56;
      v61 = v284;
    }

    while (v56);
  }

  else
  {
    v285 = &_swiftEmptyArrayStorage;
  }

  v79 = v285;
  v80 = sub_1001A5CDC(v285);
  v79, v81, v82, v83, v84, v85, v86, v87;
  sub_1002160F4(v80, v255);
  v89 = v88;
  v80, v90, v91, v92, v93, v94, v95, v96;
  v104 = sub_10038E404(&_swiftEmptyArrayStorage);
  v105 = v268;
  if (v268)
  {
    v287 = *(v260 + 16);
    v106 = v257 + ((*(v260 + 80) + 32) & ~*(v260 + 80));
    v107 = *(v260 + 72);
    v283 = (v89 & 0xC000000000000001);
    v108 = v89 & 0xFFFFFFFFFFFFFF8;
    if (v89 < 0)
    {
      v108 = v89;
    }

    v280 = v108;
    v277 = (v260 + 40);
    v278 = (v260 + 32);
    v284 = (v260 + 8);
    v285 = v107;
    v109 = v258;
    v276 = v89;
    v282 = v260 + 16;
    do
    {
      (v287)(v109, v106, v19);
      v110 = REMAccountsListDataView.Model.PinnedList.objectID.getter();
      if (v110)
      {
        v111 = v110;
        if (v283)
        {
          v112 = v110;
          v113 = __CocoaDictionary.lookup(_:)();

          if (v113)
          {
            v289 = v113;
            type metadata accessor for RDElementManualSortID(0);
            swift_dynamicCast();
            v114 = v290;
            if (v290)
            {
              goto LABEL_34;
            }
          }
        }

        else if (*(v89 + 16))
        {
          sub_10002B924(v110);
          if (v115)
          {

            if (v114)
            {
LABEL_34:
              v279 = v111;
              v116 = *(v114 + 24);
              v281 = v114;
              if (v116)
              {
                v117 = *(v114 + 16);
                v118 = v116;
              }

              else
              {
                v119._countAndFlagsBits = UUID.uuidString.getter();
                object = v119._object;
                v290 = 0x7C6C61636F6CLL;
                v291 = 0xE600000000000000;
                String.append(_:)(v119);
                object, v121, v122, v123, v124, v125, v126, v127;
                v117 = v290;
                v118 = v291;
              }

              (v287)(v262, v109, v19);

              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v290 = v104;
              v129 = sub_100005F4C(v117, v118);
              v137 = *(v104 + 16);
              v138 = (v130 & 1) == 0;
              v139 = __OFADD__(v137, v138);
              v140 = v137 + v138;
              if (v139)
              {
                goto LABEL_101;
              }

              v141 = v130;
              if (*(v104 + 24) >= v140)
              {
                if (isUniquelyReferenced_nonNull_native)
                {
                  goto LABEL_42;
                }

                v146 = v129;
                sub_100373804();
                v129 = v146;
                if ((v141 & 1) == 0)
                {
                  goto LABEL_45;
                }

LABEL_43:
                v142 = v129;
                v118, v130, v131, v132, v133, v134, v135, v136;
                v143 = v290;
                v144 = *(v290 + 56) + v142 * v285;
                v145 = v288;
                (*v277)(v144, v262, v288);
              }

              else
              {
                sub_10036ABD8(v140, isUniquelyReferenced_nonNull_native);
                v129 = sub_100005F4C(v117, v118);
                if ((v141 & 1) != (v130 & 1))
                {
                  goto LABEL_106;
                }

LABEL_42:
                if (v141)
                {
                  goto LABEL_43;
                }

LABEL_45:
                v143 = v290;
                *(v290 + 8 * (v129 >> 6) + 64) |= 1 << v129;
                v147 = (v143[6] + 16 * v129);
                *v147 = v117;
                v147[1] = v118;
                v145 = v288;
                (v278->super.isa)(v143[7] + v129 * v285, v262, v288);
                v148 = v143[2];
                v139 = __OFADD__(v148, 1);
                v149 = v148 + 1;
                if (v139)
                {
                  goto LABEL_103;
                }

                v143[2] = v149;
              }

              v150._countAndFlagsBits = UUID.uuidString.getter();
              v151 = v150._object;
              v290 = 0x7C6C61636F6CLL;
              v291 = 0xE600000000000000;
              String.append(_:)(v150);
              v151, v152, v153, v154, v155, v156, v157, v158;
              v160 = v290;
              v159 = v291;
              (v287)(v261, v109, v145);
              v161 = swift_isUniquelyReferenced_nonNull_native();
              v290 = v143;
              v169 = sub_100005F4C(v160, v159);
              v170 = v143[2];
              v171 = (v162 & 1) == 0;
              v172 = v170 + v171;
              if (__OFADD__(v170, v171))
              {
                goto LABEL_102;
              }

              v173 = v162;
              if (v143[3] >= v172)
              {
                if (v161)
                {
                  v175 = v279;
                  if ((v162 & 1) == 0)
                  {
                    goto LABEL_51;
                  }
                }

                else
                {
                  sub_100373804();
                  v175 = v279;
                  if ((v173 & 1) == 0)
                  {
                    goto LABEL_51;
                  }
                }
              }

              else
              {
                sub_10036ABD8(v172, v161);
                v174 = sub_100005F4C(v160, v159);
                if ((v173 & 1) != (v162 & 1))
                {
                  goto LABEL_106;
                }

                v169 = v174;
                v175 = v279;
                if ((v173 & 1) == 0)
                {
LABEL_51:
                  v104 = v290;
                  *(v290 + 8 * (v169 >> 6) + 64) |= 1 << v169;
                  v176 = (*(v104 + 48) + 16 * v169);
                  *v176 = v160;
                  v176[1] = v159;
                  v19 = v288;
                  (v278->super.isa)(*(v104 + 56) + v169 * v285, v261, v288);

                  v109 = v258;
                  (*v284)(v258, v19);
                  v177 = *(v104 + 16);
                  v139 = __OFADD__(v177, 1);
                  v178 = v177 + 1;
                  if (v139)
                  {
                    goto LABEL_104;
                  }

                  *(v104 + 16) = v178;
                  goto LABEL_56;
                }
              }

              v159, v162, v163, v164, v165, v166, v167, v168;
              v104 = v290;
              v19 = v288;
              (*v277)(*(v290 + 56) + v169 * v285, v261, v288);

              v109 = v258;
              (*v284)(v258, v19);
LABEL_56:

              v89 = v276;
              goto LABEL_24;
            }
          }
        }

        (*v284)(v109, v19);
      }

      else
      {
        (*v284)(v109, v19);
      }

LABEL_24:
      v106 += v285;
      --v105;
    }

    while (v105);
  }

  v89, v97, v98, v99, v100, v101, v102, v103;
  v186 = *(v254 + 16);
  if (!v186)
  {
    v189 = &_swiftEmptyArrayStorage;
    goto LABEL_75;
  }

  v187 = 0;
  v287 = v260 + 32;
  v284 = (v260 + 8);
  v285 = (v260 + 16);
  v188 = (v254 + 40);
  v189 = &_swiftEmptyArrayStorage;
  do
  {
    v190 = &v188[16 * v187];
    v191 = v187;
    while (1)
    {
      if (v191 >= v186)
      {
        __break(1u);
LABEL_100:
        __break(1u);
LABEL_101:
        __break(1u);
LABEL_102:
        __break(1u);
LABEL_103:
        __break(1u);
LABEL_104:
        __break(1u);
LABEL_105:
        _diagnoseUnexpectedEnumCase<A>(type:)();
        __break(1u);
LABEL_106:
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }

      v187 = v191 + 1;
      if (__OFADD__(v191, 1))
      {
        goto LABEL_100;
      }

      if (*(v104 + 16))
      {
        break;
      }

LABEL_62:
      ++v191;
      v190 += 2;
      if (v187 == v186)
      {
        goto LABEL_75;
      }
    }

    v192 = *(v190 - 1);
    v193 = *v190;

    v194 = sub_100005F4C(v192, v193);
    if ((v195 & 1) == 0)
    {
      v193, v195, v196, v197, v198, v199, v200, v201;
      goto LABEL_62;
    }

    v283 = v188;
    v202 = *(v104 + 56);
    v203 = v260;
    v282 = *(v260 + 72);
    v204 = *(v260 + 16);
    v205 = v251;
    v206 = v288;
    v204(v251, v202 + v282 * v194, v288);
    v207 = *(v203 + 32);
    v208 = v189;
    v209 = v252;
    v281 = v207;
    v207(v252, v205, v206);
    v210 = v209;
    v189 = v208;
    v204(v253, v210, v206);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v189 = sub_100039334(0, *v208->clientIdentity + 1, 1, v208);
    }

    v219 = *v189->clientIdentity;
    v218 = *&v189->clientIdentity[8];
    if (v219 >= v218 >> 1)
    {
      v189 = sub_100039334((v218 > 1), v219 + 1, 1, v189);
    }

    v193, v211, v212, v213, v214, v215, v216, v217;
    v220 = v260;
    v221 = v288;
    (*(v260 + 8))(v252, v288);
    *v189->clientIdentity = v219 + 1;
    v281(v189 + ((*(v220 + 80) + 32) & ~*(v220 + 80)) + v219 * v282, v253, v221);
    v188 = v283;
  }

  while (v187 != v186);
LABEL_75:
  v104, v179, v180, v181, v182, v183, v184, v185;
  v278 = v189;
  v290 = v189;
  sub_1000F5104(&qword_100949DC8, &qword_1007AE148);
  sub_10003980C();
  sub_1004C0048();
  sub_10018BA8C();
  v222 = Sequence.compactMapToSet<A>(_:)();
  v230 = v222;
  v231 = v268;
  if (v268)
  {
    v232 = 0;
    v285 = *(v260 + 16);
    v233 = (*(v260 + 80) + 32) & ~*(v260 + 80);
    v284 = (v257 + v233);
    v287 = *(v260 + 72);
    v234 = v222 & 0xFFFFFFFFFFFFFF8;
    if (v222 < 0)
    {
      v234 = v222;
    }

    v279 = v233;
    v280 = v234;
    v235 = v222 + 56;
    v282 = v222 & 0xC000000000000001;
    v283 = (v260 + 32);
    v281 = (v260 + 8);
    v236 = &_swiftEmptyArrayStorage;
    v260 += 16;
    while (1)
    {
      (v285)(v286, v284 + v287 * v232, v288);
      v237 = REMAccountsListDataView.Model.PinnedList.objectID.getter();
      if (v237)
      {
        v238 = v237;
        if (v282)
        {
          v239 = __CocoaSet.contains(_:)();

          if ((v239 & 1) == 0)
          {
            goto LABEL_92;
          }
        }

        else
        {
          if (!*(v230 + 16) || (v240 = NSObject._rawHashValue(seed:)(*(v230 + 40)), v241 = -1 << *(v230 + 32), v242 = v240 & ~v241, ((*(v235 + ((v242 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v242) & 1) == 0))
          {
LABEL_91:

LABEL_92:
            v246 = *v283;
            (*v283)(v269, v286, v288);
            v247 = swift_isUniquelyReferenced_nonNull_native();
            v290 = v236;
            if ((v247 & 1) == 0)
            {
              sub_1002533A4(0, *v236->clientIdentity + 1, 1);
              v236 = v290;
            }

            v249 = *v236->clientIdentity;
            v248 = *&v236->clientIdentity[8];
            if (v249 >= v248 >> 1)
            {
              sub_1002533A4((v248 > 1), v249 + 1, 1);
              v236 = v290;
            }

            *v236->clientIdentity = v249 + 1;
            v246(&v279[v236 + v249 * v287], v269, v288);
            v231 = v268;
            goto LABEL_81;
          }

          v243 = ~v241;
          while (1)
          {
            v244 = *(*(v230 + 48) + 8 * v242);
            v245 = static NSObject.== infix(_:_:)();

            if (v245)
            {
              break;
            }

            v242 = (v242 + 1) & v243;
            if (((*(v235 + ((v242 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v242) & 1) == 0)
            {
              goto LABEL_91;
            }
          }

          v231 = v268;
        }
      }

      (*v281)(v286, v288);
LABEL_81:
      if (++v232 == v231)
      {
        goto LABEL_98;
      }
    }
  }

  v236 = &_swiftEmptyArrayStorage;
LABEL_98:
  v230, v223, v224, v225, v226, v227, v228, v229;
  v290 = v278;
  sub_100013504(v236);
  return v290;
}

uint64_t sub_1004BFFA4(uint64_t a1)
{
  v2 = sub_1000F5104(&qword_100949DC0, &qword_1007AE140);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1004C000C@<X0>(uint64_t *a2@<X8>)
{
  result = REMAccountsListDataView.Model.PinnedList.objectID.getter();
  *a2 = result;
  return result;
}

unint64_t sub_1004C0048()
{
  result = qword_100949DD0;
  if (!qword_100949DD0)
  {
    sub_1000F514C(&qword_100949DC8, &qword_1007AE148);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100949DD0);
  }

  return result;
}

uint64_t sub_1004C00AC(uint64_t a1)
{
  swift_getAssociatedTypeWitness();
  result = type metadata accessor for Optional();
  if (v2 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v3 <= 0x3F)
    {
      return swift_initClassMetadata2();
    }
  }

  return result;
}

uint64_t sub_1004C01D0()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_100949DE0);
  v1 = sub_100006654(v0, qword_100949DE0);
  if (qword_100936430 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_100974FD8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1004C0298()
{
  v1 = *(v0 + 16);
  v2 = swift_allocObject();
  *(v2 + 16) = sub_1004C2A40;
  *(v2 + 24) = v0;
  v5[4] = sub_1000529DC;
  v5[5] = v2;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 1107296256;
  v5[2] = sub_10000F160;
  v5[3] = &unk_1008F47B0;
  v3 = _Block_copy(v5);

  dispatch_sync(v1, v3);
  _Block_release(v3);
  LOBYTE(v1) = swift_isEscapingClosureAtFileLocation();

  if (v1)
  {
    __break(1u);
  }

  return result;
}

void sub_1004C03CC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = *(*v2 + 80);
  v55 = *(v4 - 8);
  __chkstk_darwin(a1, a2);
  v54 = &v47 - v5;
  v7 = *(v6 + 88);
  v52 = *(v7 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v57 = type metadata accessor for Optional();
  v8 = *(v57 - 8);
  __chkstk_darwin(v57, v9);
  v53 = &v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11, v12);
  v14 = &v47 - v13;
  v15 = type metadata accessor for DispatchPredicate();
  v16 = *(v15 - 8);
  v18 = __chkstk_darwin(v15, v17);
  v20 = (&v47 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = *(v3 + 2);
  *v20 = v21;
  (*(v16 + 104))(v20, enum case for DispatchPredicate.onQueue(_:), v15, v18);
  v22 = v21;
  v23 = _dispatchPreconditionTest(_:)();
  (*(v16 + 8))(v20, v15);
  if (v23)
  {
    v51 = v22;
    if (qword_1009362D8 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v24 = v7;
  v25 = type metadata accessor for Logger();
  v56 = sub_100006654(v25, qword_100949DE0);
  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    *v28 = 0;
    _os_log_impl(&_mh_execute_header, v26, v27, "CloudSchemaCatchUpSyncController: Starting", v28, 2u);
  }

  v29 = *(*v3 + 104);
  swift_beginAccess();
  v30 = v8;
  v31 = v57;
  (*(v8 + 16))(v14, &v3[v29], v57);
  v32 = *(AssociatedTypeWitness - 8);
  v33 = (*(v32 + 48))(v14, 1, AssociatedTypeWitness);
  (*(v8 + 8))(v14, v31);
  if (v33 == 1)
  {
    v34 = v54;
    v35 = v55;
    (*(v55 + 16))(v54, &v3[*(*v3 + 112)], v4);
    v36 = swift_allocObject();
    v50 = v30;
    v37 = v36;
    swift_weakInit();
    v38 = swift_allocObject();
    v49 = v29;
    v39 = v38;
    v38[2] = v4;
    v38[3] = v24;
    v38[4] = v37;
    v40 = v52;
    v48 = *(v52 + 24);

    v41 = v53;
    v48(v51, sub_1004C2AB8, v39, v4, v40);

    (*(v35 + 8))(v34, v4);

    (*(v32 + 56))(v41, 0, 1, AssociatedTypeWitness);
    v42 = v49;
    swift_beginAccess();
    (*(v50 + 40))(&v3[v42], v41, v57);
    swift_endAccess();
    v43 = Logger.logObject.getter();
    v44 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      *v45 = 0;
      v46 = "CloudSchemaCatchUpSyncController: Instantiated a background scheduler (xpcActivity) upon q_start";
LABEL_10:
      _os_log_impl(&_mh_execute_header, v43, v44, v46, v45, 2u);
    }
  }

  else
  {
    v43 = Logger.logObject.getter();
    v44 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      *v45 = 0;
      v46 = "CloudSchemaCatchUpSyncController: backgroundScheduler has already instantiated, duplicate call to q_start?";
      goto LABEL_10;
    }
  }
}

void sub_1004C09F0()
{
  v1 = v0;
  v2 = type metadata accessor for Date();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2, v4);
  v6 = &v43[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7, v8);
  v10 = &v43[-v9];
  v11 = type metadata accessor for DispatchPredicate();
  v12 = *(v11 - 8);
  v14 = __chkstk_darwin(v11, v13);
  v16 = &v43[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = v1[2];
  *v16 = v17;
  (*(v12 + 104))(v16, enum case for DispatchPredicate.onQueue(_:), v11, v14);
  v18 = v17;
  LOBYTE(v17) = _dispatchPreconditionTest(_:)();
  (*(v12 + 8))(v16, v11);
  if ((v17 & 1) == 0)
  {
    __break(1u);
LABEL_18:
    swift_once();
    goto LABEL_10;
  }

  v16 = *(v1 + *(*v1 + 120));
  if ([v16 schedulingState] != 1)
  {
    return;
  }

  v19 = [v16 lastScheduledDate];
  if (v19)
  {
    v20 = v19;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    Date.timeIntervalSinceNow.getter();
    if (v21 >= -604800.0)
    {
      (*(v3 + 8))(v10, v2);
    }

    else
    {
      if (qword_1009362D8 != -1)
      {
        swift_once();
      }

      v22 = type metadata accessor for Logger();
      sub_100006654(v22, qword_100949DE0);
      (*(v3 + 16))(v6, v10, v2);

      v23 = Logger.logObject.getter();
      v24 = static os_log_type_t.fault.getter();

      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        v46 = swift_slowAlloc();
        v47 = v46;
        *v25 = 134349314;
        *(v25 + 4) = 0x4122750000000000;
        *(v25 + 12) = 2082;
        sub_1004C2A68(&qword_100937010, &type metadata accessor for Date, &protocol conformance descriptor for Date);
        v45 = v23;
        v26 = dispatch thunk of CustomStringConvertible.description.getter();
        v28 = v27;
        v29 = *(v3 + 8);
        v44 = v24;
        v29(v6, v2);
        v30 = sub_10000668C(v26, v28, &v47);
        v28, v31, v32, v33, v34, v35, v36, v37;
        *(v25 + 14) = v30;
        v38 = v45;
        _os_log_impl(&_mh_execute_header, v45, v44, "CloudSchemaCatchUpSyncController: q_repairSchedulingStateIfNeeded(): It had been too long since we scheudled the background activity and catch up sync still hasn't ran yet, force running the activity manually now {timeout: %{public}f, lastScheduledDate: %{public}s}", v25, 0x16u);
        sub_10000607C(v46);
      }

      else
      {

        v29 = *(v3 + 8);
        v29(v6, v2);
      }

      sub_1004C1888();
      v29(v10, v2);
    }

    return;
  }

  if (qword_1009362D8 != -1)
  {
    goto LABEL_18;
  }

LABEL_10:
  v39 = type metadata accessor for Logger();
  sub_100006654(v39, qword_100949DE0);
  v40 = Logger.logObject.getter();
  v41 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v40, v41))
  {
    v42 = swift_slowAlloc();
    *v42 = 0;
    _os_log_impl(&_mh_execute_header, v40, v41, "CloudSchemaCatchUpSyncController: q_repairSchedulingStateIfNeeded(): schedulingState is .scheduled but we don't have a lastScheduledDate, force re-scheduling now", v42, 2u);
  }

  [v16 setSchedulingState:0];
  [v16 setLastScheduledDate:0];
  sub_1004C1034();
}

void sub_1004C0F28()
{
  v1 = type metadata accessor for DispatchPredicate();
  v2 = *(v1 - 8);
  v4 = __chkstk_darwin(v1, v3);
  v6 = (&v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *(v0 + 16);
  *v6 = v7;
  (*(v2 + 104))(v6, enum case for DispatchPredicate.onQueue(_:), v1, v4);
  v8 = v7;
  LOBYTE(v7) = _dispatchPreconditionTest(_:)();
  (*(v2 + 8))(v6, v1);
  if (v7)
  {
    sub_1004C1034();
  }

  else
  {
    __break(1u);
  }
}

void sub_1004C1034()
{
  v1 = *(*(*v0 + 88) + 8);
  v55 = *(*v0 + 80);
  v56 = v1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3 = type metadata accessor for Optional();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3, v5);
  v7 = &v53 - v6;
  v8 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin(v9, v10);
  v54 = &v53 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12, v13);
  v57 = &v53 - v14;
  v15 = type metadata accessor for DispatchPredicate();
  v16 = *(v15 - 8);
  v18 = __chkstk_darwin(v15, v17);
  v20 = (&v53 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = *(v0 + 2);
  *v20 = v21;
  (*(v16 + 104))(v20, enum case for DispatchPredicate.onQueue(_:), v15, v18);
  v22 = v21;
  LOBYTE(v21) = _dispatchPreconditionTest(_:)();
  (*(v16 + 8))(v20, v15);
  if ((v21 & 1) == 0)
  {
    __break(1u);
    goto LABEL_27;
  }

  v23 = *(*v0 + 104);
  swift_beginAccess();
  (*(v4 + 16))(v7, &v0[v23], v3);
  if ((*(v8 + 48))(v7, 1, AssociatedTypeWitness) == 1)
  {
    (*(v4 + 8))(v7, v3);
    if (qword_1009362D8 == -1)
    {
LABEL_4:
      v24 = type metadata accessor for Logger();
      sub_100006654(v24, qword_100949DE0);
      v25 = Logger.logObject.getter();
      v26 = static os_log_type_t.fault.getter();
      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        *v27 = 0;
        _os_log_impl(&_mh_execute_header, v25, v26, "CloudSchemaCatchUpSyncController: backgroundScheduler is unexpectedly not instantiated yet when calling q_scheduleBackgroundActivity(), bailing out", v27, 2u);
      }

      return;
    }

LABEL_27:
    swift_once();
    goto LABEL_4;
  }

  v28 = AssociatedTypeWitness;
  v29 = v57;
  (*(v8 + 32))(v57, v7, AssociatedTypeWitness);
  v30 = *&v0[*(*v0 + 120)];
  swift_getObjectType();
  v31 = [v30 schedulingState];
  if (v31)
  {
    v32 = v31;
    if (qword_1009362D8 != -1)
    {
      swift_once();
    }

    v33 = type metadata accessor for Logger();
    sub_100006654(v33, qword_100949DE0);
    v34 = v54;
    (*(v8 + 16))(v54, v29, v28);
    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      *v37 = 134349312;
      *(v37 + 4) = v32;
      *(v37 + 12) = 1026;
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      v39 = (*(AssociatedConformanceWitness + 8))(v28, AssociatedConformanceWitness);
      v40 = v8;
      v41 = v28;
      v42 = v39 & 1;
      v43 = *(v40 + 8);
      v43(v34, v41);
      *(v37 + 14) = v42;
      v28 = v41;
      _os_log_impl(&_mh_execute_header, v35, v36, "CloudSchemaCatchUpSyncController: SchedulingState is not .unset so no need to schedule another one {schedulingState: %{public}ld, hasPendingActivity: %{BOOL,public}d}", v37, 0x12u);
    }

    else
    {
      v43 = *(v8 + 8);
      v43(v34, v28);
    }

    v43(v29, v28);
  }

  else
  {
    v44 = swift_getAssociatedConformanceWitness();
    if ((*(v44 + 8))(AssociatedTypeWitness, v44))
    {
      if (qword_1009362D8 != -1)
      {
        swift_once();
      }

      v45 = type metadata accessor for Logger();
      sub_100006654(v45, qword_100949DE0);
      v46 = Logger.logObject.getter();
      v47 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v46, v47))
      {
        v48 = swift_slowAlloc();
        *v48 = 134349056;
        *(v48 + 4) = 0;
        _os_log_impl(&_mh_execute_header, v46, v47, "CloudSchemaCatchUpSyncController: Already having a pending activity with the background scheduler (xpcActivity) so no need to schedule another one {schedulingState: (%{public}ld)}", v48, 0xCu);
      }

      sub_1004C2318();
    }

    else
    {
      (*(v44 + 24))(AssociatedTypeWitness, v44);
      sub_1004C2318();
      if (qword_1009362D8 != -1)
      {
        swift_once();
      }

      v49 = type metadata accessor for Logger();
      sub_100006654(v49, qword_100949DE0);
      v50 = Logger.logObject.getter();
      v51 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v50, v51))
      {
        v52 = swift_slowAlloc();
        *v52 = 0;
        _os_log_impl(&_mh_execute_header, v50, v51, "CloudSchemaCatchUpSyncController: Updated background activity (xpcActivity) criteria", v52, 2u);
      }
    }

    (*(v8 + 8))(v29, AssociatedTypeWitness);
  }
}

uint64_t sub_1004C17EC(uint64_t a1)
{

  sub_1004C0F28();
}

uint64_t sub_1004C1828(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1004C1888();
  }

  return result;
}

void sub_1004C1888()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2, v4);
  v6 = v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v47 = *(v7 - 8);
  __chkstk_darwin(v7, v8);
  v46 = v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchPredicate();
  v11 = *(v10 - 8);
  v13 = __chkstk_darwin(v10, v12);
  v15 = (v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = v1[2];
  *v15 = v16;
  (*(v11 + 104))(v15, enum case for DispatchPredicate.onQueue(_:), v10, v13);
  v45 = v16;
  LOBYTE(v16) = _dispatchPreconditionTest(_:)();
  (*(v11 + 8))(v15, v10);
  if (v16)
  {
    if (qword_1009362D8 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v17 = type metadata accessor for Logger();
  sub_100006654(v17, qword_100949DE0);
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&_mh_execute_header, v18, v19, "CloudSchemaCatchUpSyncController: Running scheduled background activity...", v20, 2u);
  }

  v21 = *(v1 + *(*v1 + 120));
  v22 = [v21 schedulingState];
  if (v22 == 1)
  {
    [v21 setSchedulingState:2];
    v23 = v1 + *(*v1 + 128);
    Strong = swift_unknownObjectWeakLoadStrong();
    v25 = *(v23 + 1);
    v26 = Logger.logObject.getter();
    if (Strong)
    {
      v43 = v3;
      v44 = v7;
      v27 = v2;
      v28 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v26, v28))
      {
        v29 = swift_slowAlloc();
        *v29 = 0;
        _os_log_impl(&_mh_execute_header, v26, v28, "os_transaction INIT {name: com.apple.remindd.ICCloudSchemaCatchUpSyncController.q_syncRunScheduledActivity}", v29, 2u);
      }

      v30 = os_transaction_create();
      v31 = swift_allocObject();
      v31[2] = Strong;
      v31[3] = v25;
      v42[5] = Strong;
      v42[6] = v30;
      v31[4] = v30;
      v53 = sub_1000FCE50;
      v54 = v31;
      aBlock = _NSConcreteStackBlock;
      v50 = 1107296256;
      v42[4] = &v51;
      v51 = sub_100019200;
      v52 = &unk_1008F4800;
      v32 = _Block_copy(&aBlock);
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      v33 = v46;
      static DispatchQoS.unspecified.getter();
      v48 = &_swiftEmptyArrayStorage;
      v42[2] = sub_1004C2A68(&qword_100936E90, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
      v42[1] = sub_1000F5104(&unk_100939E50, &unk_100791AD0);
      v42[3] = sub_10000AB90();
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v32);
      v43 = *(v43 + 8);
      (v43)(v6, v27);
      v47 = *(v47 + 8);
      v34 = v44;
      (v47)(v33, v44);

      v53 = sub_1004C2AB0;
      v54 = v1;
      aBlock = _NSConcreteStackBlock;
      v50 = 1107296256;
      v51 = sub_100019200;
      v52 = &unk_1008F4828;
      v35 = _Block_copy(&aBlock);

      static DispatchQoS.unspecified.getter();
      v48 = &_swiftEmptyArrayStorage;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v35);
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      (v43)(v6, v27);
      (v47)(v33, v34);
    }

    else
    {
      v40 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v26, v40))
      {
        v41 = swift_slowAlloc();
        *v41 = 0;
        _os_log_impl(&_mh_execute_header, v26, v40, "CloudSchemaCatchUpSyncController: Unexpected nil RDICCloudSchemaCatchUpSyncPerformer (ICCloudContext), bailing out from q_syncRunScheduledActivity()", v41, 2u);
      }
    }
  }

  else
  {
    v36 = v22;
    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      *v39 = 134349056;
      *(v39 + 4) = v36;
      _os_log_impl(&_mh_execute_header, v37, v38, "CloudSchemaCatchUpSyncController: SchedulingState is not .scheduled when trying to call q_syncRunScheduledActivity(), bailing out {schedulingState: %{public}ld}", v39, 0xCu);
    }
  }
}

id sub_1004C1FD4()
{
  [v0 setSchedulingState:0];

  return [v0 setLastScheduledDate:0];
}

void sub_1004C2030(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  (*(a2 + 8))(1, @"CloudSchemaCatchUpSyncBackgroundActivity", 0, 0, ObjectType, a2);
  if (qword_1009362D8 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100006654(v4, qword_100949DE0);
  oslog = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(oslog, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, oslog, v5, "os_transaction RELEASE {name: com.apple.remindd.ICCloudSchemaCatchUpSyncController.q_syncRunScheduledActivity}", v6, 2u);
  }
}

uint64_t sub_1004C2158(char *a1)
{
  v2 = *a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin(AssociatedTypeWitness, v5);
  v7 = &v11 - v6;
  v8 = *(v2 + 104);
  swift_beginAccess();
  result = (*(v4 + 48))(&a1[v8], 1, AssociatedTypeWitness);
  if (!result)
  {
    (*(v4 + 16))(v7, &a1[v8], AssociatedTypeWitness);
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    (*(AssociatedConformanceWitness + 16))(AssociatedTypeWitness, AssociatedConformanceWitness);
    return (*(v4 + 8))(v7, AssociatedTypeWitness);
  }

  return result;
}

void sub_1004C2318()
{
  v1 = v0;
  v2 = type metadata accessor for Date();
  v3 = *(v2 - 8);
  *&v5 = __chkstk_darwin(v2, v4).n128_u64[0];
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  [v1 setSchedulingState:{1, v5}];
  v8 = [objc_opt_self() rem_now];
  static Date._unconditionallyBridgeFromObjectiveC(_:)();

  isa = Date._bridgeToObjectiveC()().super.isa;
  (*(v3 + 8))(v7, v2);
  [v1 setLastScheduledDate:isa];
}

id *sub_1004C2440()
{
  v1 = *v0;

  v2 = *(*v0 + 13);
  v3 = v1[10];
  swift_getAssociatedTypeWitness();
  v4 = type metadata accessor for Optional();
  (*(*(v4 - 8) + 8))(v0 + v2, v4);
  (*(*(v3 - 8) + 8))(v0 + *(*v0 + 14), v3);
  swift_unknownObjectRelease();
  sub_1000536E0(v0 + *(*v0 + 16));
  return v0;
}

uint64_t sub_1004C2588()
{
  sub_1004C2440();

  return swift_deallocClassInstance();
}

double sub_1004C261C()
{
  v1 = *(v0 + 16);
  if ([v1 containsLargeDatabases])
  {
    v2 = 1800.0;
  }

  else if ([v1 containsOnlySmallDatabases])
  {
    v2 = 15.0;
  }

  else
  {
    v2 = 300.0;
  }

  if (qword_1009362D8 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_100006654(v3, qword_100949DE0);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 134349056;
    *(v6 + 4) = v2;
    _os_log_impl(&_mh_execute_header, v4, v5, "RDICCloudSchemaCatchUpSyncXPCActivity: Updating scheduler (xpcActivity) criteria {estimatedDuration: %{public}f}", v6, 0xCu);
  }

  v7 = sub_10039363C(&off_1008E3678);
  v16[0] = xmmword_1007AE160;
  v16[1] = xmmword_1007AE160;
  v17 = 0;
  v18 = 257;
  v19 = 0;
  v20 = v2;
  v21 = 256;
  v22 = 0;
  v23 = 33620225;
  v24 = 7;
  v25 = v7;
  sub_1005A46AC(v16);

  v7, v8, v9, v10, v11, v12, v13, v14;
  return result;
}

uint64_t sub_1004C27E0()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1004C2844()
{
  type metadata accessor for UnfairLock();

  Lock.sync<A>(_:)();

  return v1;
}

uint64_t sub_1004C2954@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v9 = *(*v4 + 16);
  type metadata accessor for RDICCloudSchemaCatchUpSyncXPCActivity();
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  v11 = swift_allocObject();
  v11[2] = a1;
  v11[3] = a2;
  v11[4] = a3;
  type metadata accessor for RDDynamicXPCActivity();
  swift_allocObject();
  v12 = v9;
  v13 = a1;

  v14 = sub_1005A9A28(2u, sub_1000FCE88, v11);

  *(v10 + 24) = v14;
  *a4 = v10;
  return result;
}

void sub_1004C2A40(uint64_t a1, uint64_t a2)
{
  sub_1004C03CC(a1, a2);

  sub_1004C09F0();
}

uint64_t sub_1004C2A68(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1004C2AE8(uint64_t a1, uint64_t a2, NSObject *a3, _TtC7remindd19RDXPCStorePerformer *a4)
{
  v99 = a1;
  v5 = v4;
  v97 = a3;
  v98 = a2;
  v7 = type metadata accessor for Date();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7, v9);
  v11 = &v95 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DispatchPredicate();
  v13 = *(v12 - 8);
  v15 = __chkstk_darwin(v12, v14);
  v17 = (&v95 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = *(v5 + 48);
  *v17 = v18;
  (*(v13 + 104))(v17, enum case for DispatchPredicate.onQueue(_:), v12, v15);
  v19 = v18;
  LOBYTE(v18) = _dispatchPreconditionTest(_:)();
  (*(v13 + 8))(v17, v12);
  if ((v18 & 1) == 0)
  {
    __break(1u);
    goto LABEL_30;
  }

  v20 = OBJC_IVAR____TtC7remindd11RDThrottler_throttleResetDate;
  swift_beginAccess();
  v96 = *(v8 + 16);
  v96(v11, v5 + v20, v7);
  v21 = Date.isInThePast.getter();
  v22 = *(v8 + 8);
  v22(v11, v7);
  if (v21)
  {
    sub_10003F81C();
    v23 = OBJC_IVAR____TtC7remindd11RDThrottler_currentIntervalAllowedOperationsCount;
    v24 = *(v5 + OBJC_IVAR____TtC7remindd11RDThrottler_currentIntervalAllowedOperationsCount);
    goto LABEL_5;
  }

  v23 = OBJC_IVAR____TtC7remindd11RDThrottler_currentIntervalAllowedOperationsCount;
  v24 = *(v5 + OBJC_IVAR____TtC7remindd11RDThrottler_currentIntervalAllowedOperationsCount);
  if (v24)
  {
LABEL_5:
    v25 = v24 != 0;
    v26 = v24 - 1;
    if (v25)
    {
      *(v5 + v23) = v26;
      if (qword_1009362E0 == -1)
      {
LABEL_8:
        v27 = type metadata accessor for Logger();
        sub_100006654(v27, qword_10094A058);

        v28 = Logger.logObject.getter();
        v29 = static os_log_type_t.info.getter();
        a4, v30, v31, v32, v33, v34, v35, v36;

        if (os_log_type_enabled(v28, v29))
        {
          v37 = swift_slowAlloc();
          v101 = swift_slowAlloc();
          *v37 = 136446466;
          *(v37 + 4) = sub_10000668C(*(v5 + 32), *(v5 + 40), &v101);
          *(v37 + 12) = 2082;
          if (a4)
          {
            v38 = v97;
          }

          else
          {
            v38 = 7104878;
          }

          if (a4)
          {
            v39 = a4;
          }

          else
          {
            v39 = 0xE300000000000000;
          }

          v40 = sub_10000668C(v38, v39, &v101);
          v39, v41, v42, v43, v44, v45, v46, v47;
          *(v37 + 14) = v40;
          _os_log_impl(&_mh_execute_header, v28, v29, "Throttler allows and is going to run operation {identifier: %{public}s, op: %{public}s}", v37, 0x16u);
          swift_arrayDestroy();
        }

        return (v99)();
      }

LABEL_31:
      swift_once();
      goto LABEL_8;
    }

LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v95 = v22;
  if (qword_1009362E0 != -1)
  {
    swift_once();
  }

  v49 = type metadata accessor for Logger();
  sub_100006654(v49, qword_10094A058);

  swift_retain_n();
  static REMCDRecurrenceRule.shouldAttemptLocalObjectMerge()();
  static REMCDRecurrenceRule.shouldAttemptLocalObjectMerge()();

  v50 = Logger.logObject.getter();
  v51 = static os_log_type_t.error.getter();
  a4, v52, v53, v54, v55, v56, v57, v58;

  LODWORD(v100) = v51;
  v59 = v51;
  v60 = v50;
  if (os_log_type_enabled(v50, v59))
  {
    v61 = swift_slowAlloc();
    v98 = swift_slowAlloc();
    v101 = v98;
    *v61 = 136447234;
    *(v61 + 4) = sub_10000668C(*(v5 + 32), *(v5 + 40), &v101);
    *(v61 + 12) = 2082;
    if (a4)
    {
      v62 = v97;
    }

    else
    {
      v62 = 7104878;
    }

    v97 = v60;
    if (a4)
    {
      v63 = a4;
    }

    else
    {
      v63 = 0xE300000000000000;
    }

    v64 = sub_10000668C(v62, v63, &v101);
    v63, v65, v66, v67, v68, v69, v70, v71;
    v99 = v61;
    *(v61 + 14) = v64;
    *(v61 + 22) = 1040;
    *(v61 + 24) = 4;
    *(v61 + 28) = 2048;
    v72 = v96;
    v96(v11, v5 + v20, v7);
    Date.timeIntervalSinceNow.getter();
    v74 = v73;
    v75 = v95;
    v95(v11, v7);
    v76 = v99;
    *(v99 + 30) = v74;
    *(v76 + 38) = 2082;
    v72(v11, v5 + v20, v7);
    v77 = Date.description.getter();
    v79 = v78;
    v75(v11, v7);
    v80 = sub_10000668C(v77, v79, &v101);
    v79, v81, v82, v83, v84, v85, v86, v87;
    v88 = v99;
    *(v99 + 40) = v80;
    v89 = v97;
    _os_log_impl(&_mh_execute_header, v97, v100, "Throttler denied operation {identifier: %{public}s, op: %{public}s, remainingTimeInterval: %.*f, throttleResetDate: %{public}s}", v88, 0x30u);
    swift_arrayDestroy();
    v90 = v96;

    v91 = v95;
  }

  else
  {

    v91 = v95;
    v90 = v96;
  }

  v92 = objc_opt_self();
  v90(v11, v5 + v20, v7);
  Date.timeIntervalSinceNow.getter();
  v94 = v93;
  v91(v11, v7);
  [v92 throttledErrorWithRemainingTimeInterval:v94];
  return swift_willThrow();
}

uint64_t sub_1004C31B8()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_10094A058);
  v1 = sub_100006654(v0, qword_10094A058);
  if (qword_100936450 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_100975038);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1004C3280(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  *(v8 + 40), a2, a3, a4, a5, a6, a7, a8;

  v9 = OBJC_IVAR____TtC7remindd11RDThrottler_throttleResetDate;
  v10 = type metadata accessor for Date();
  (*(*(v10 - 8) + 8))(v8 + v9, v10);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for RDThrottler(uint64_t a1)
{
  result = qword_10094A0A8;
  if (!qword_10094A0A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1004C3380(uint64_t a1)
{
  result = type metadata accessor for Date();
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

void sub_1004C3438(uint64_t a1, _TtC7remindd19RDXPCStorePerformer *a2, char *a3, void *a4, uint64_t a5, uint64_t a6, NSObject *a7)
{
  v112 = a6;
  v110 = a7;
  v111 = a5;
  v114 = a4;
  v109 = a1;
  v9 = type metadata accessor for Date();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9, v11);
  v13 = &v107 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for DispatchPredicate();
  v15 = *(v14 - 8);
  v17 = __chkstk_darwin(v14, v16);
  v19 = (&v107 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = *(a3 + 6);
  *v19 = v20;
  (*(v15 + 104))(v19, enum case for DispatchPredicate.onQueue(_:), v14, v17);
  v21 = v20;
  LOBYTE(v20) = _dispatchPreconditionTest(_:)();
  (*(v15 + 8))(v19, v14);
  if ((v20 & 1) == 0)
  {
    __break(1u);
    goto LABEL_30;
  }

  v22 = OBJC_IVAR____TtC7remindd11RDThrottler_throttleResetDate;
  swift_beginAccess();
  v108 = *(v10 + 16);
  v108(v13, &a3[v22], v9);
  v23 = Date.isInThePast.getter();
  v24 = *(v10 + 8);
  v24(v13, v9);
  if (v23)
  {
    sub_10003F81C();
    v25 = OBJC_IVAR____TtC7remindd11RDThrottler_currentIntervalAllowedOperationsCount;
    v26 = *&a3[OBJC_IVAR____TtC7remindd11RDThrottler_currentIntervalAllowedOperationsCount];
    goto LABEL_5;
  }

  v25 = OBJC_IVAR____TtC7remindd11RDThrottler_currentIntervalAllowedOperationsCount;
  v26 = *&a3[OBJC_IVAR____TtC7remindd11RDThrottler_currentIntervalAllowedOperationsCount];
  if (v26)
  {
LABEL_5:
    v27 = v26 != 0;
    v28 = v26 - 1;
    if (v27)
    {
      *&a3[v25] = v28;
      if (qword_1009362E0 == -1)
      {
LABEL_8:
        v29 = type metadata accessor for Logger();
        sub_100006654(v29, qword_10094A058);

        v30 = Logger.logObject.getter();
        v31 = static os_log_type_t.info.getter();
        a2, v32, v33, v34, v35, v36, v37, v38;

        if (os_log_type_enabled(v30, v31))
        {
          v39 = swift_slowAlloc();
          v115 = swift_slowAlloc();
          *v39 = 136446466;
          *(v39 + 4) = sub_10000668C(*(a3 + 4), *(a3 + 5), &v115);
          *(v39 + 12) = 2082;
          if (a2)
          {
            v40 = v109;
          }

          else
          {
            v40 = 7104878;
          }

          if (a2)
          {
            v41 = a2;
          }

          else
          {
            v41 = 0xE300000000000000;
          }

          v42 = sub_10000668C(v40, v41, &v115);
          v41, v43, v44, v45, v46, v47, v48, v49;
          *(v39 + 14) = v42;
          _os_log_impl(&_mh_execute_header, v30, v31, "Throttler allows and is going to run operation {identifier: %{public}s, op: %{public}s}", v39, 0x16u);
          swift_arrayDestroy();
        }

        v50 = v114;
        v51 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v53 = v52;
        sub_1004C2AE8(v111, v112, v51, v52);

        v53, v54, v55, v56, v57, v58, v59, v60;
        return;
      }

LABEL_31:
      swift_once();
      goto LABEL_8;
    }

LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v107 = v24;
  if (qword_1009362E0 != -1)
  {
    swift_once();
  }

  v61 = type metadata accessor for Logger();
  sub_100006654(v61, qword_10094A058);

  swift_retain_n();
  static REMCDRecurrenceRule.shouldAttemptLocalObjectMerge()();
  static REMCDRecurrenceRule.shouldAttemptLocalObjectMerge()();

  v62 = Logger.logObject.getter();
  v63 = static os_log_type_t.error.getter();
  a2, v64, v65, v66, v67, v68, v69, v70;

  LODWORD(v113) = v63;
  v71 = v63;
  v72 = v62;
  if (os_log_type_enabled(v62, v71))
  {
    v73 = swift_slowAlloc();
    v111 = swift_slowAlloc();
    v115 = v111;
    *v73 = 136447234;
    *(v73 + 4) = sub_10000668C(*(a3 + 4), *(a3 + 5), &v115);
    *(v73 + 12) = 2082;
    if (a2)
    {
      v74 = v109;
    }

    else
    {
      v74 = 7104878;
    }

    v110 = v72;
    if (a2)
    {
      v75 = a2;
    }

    else
    {
      v75 = 0xE300000000000000;
    }

    v76 = sub_10000668C(v74, v75, &v115);
    v75, v77, v78, v79, v80, v81, v82, v83;
    v112 = v73;
    *(v73 + 14) = v76;
    *(v73 + 22) = 1040;
    *(v73 + 24) = 4;
    *(v73 + 28) = 2048;
    v84 = v108;
    v108(v13, &a3[v22], v9);
    Date.timeIntervalSinceNow.getter();
    v86 = v85;
    v87 = v107;
    v107(v13, v9);
    v88 = v112;
    *(v112 + 30) = v86;
    *(v88 + 38) = 2082;
    v84(v13, &a3[v22], v9);
    v89 = Date.description.getter();
    v91 = v90;
    v87(v13, v9);
    v92 = sub_10000668C(v89, v91, &v115);
    v91, v93, v94, v95, v96, v97, v98, v99;
    v100 = v112;
    *(v112 + 40) = v92;
    v101 = v110;
    _os_log_impl(&_mh_execute_header, v110, v113, "Throttler denied operation {identifier: %{public}s, op: %{public}s, remainingTimeInterval: %.*f, throttleResetDate: %{public}s}", v100, 0x30u);
    swift_arrayDestroy();
    v102 = v108;

    v103 = v107;
  }

  else
  {

    v103 = v107;
    v102 = v108;
  }

  v104 = objc_opt_self();
  v102(v13, &a3[v22], v9);
  Date.timeIntervalSinceNow.getter();
  v106 = v105;
  v103(v13, v9);
  [v104 throttledErrorWithRemainingTimeInterval:v106];
  swift_willThrow();
}

void sub_1004C3B48(uint64_t a1, char *a2, char *a3, void *a4, void *a5, NSObject *a6, void *a7, void *a8)
{
  v105 = a6;
  v111 = a5;
  v112 = a8;
  v110 = a2;
  v104 = a1;
  v109 = type metadata accessor for Date();
  v11 = *(v109 - 8);
  __chkstk_darwin(v109, v12);
  v14 = (&v102 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = type metadata accessor for DispatchPredicate();
  v16 = *(v15 - 8);
  v18 = __chkstk_darwin(v15, v17);
  v20 = (&v102 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v113 = a3;
  v21 = *(a3 + 6);
  *v20 = v21;
  (*(v16 + 104))(v20, enum case for DispatchPredicate.onQueue(_:), v15, v18);
  v22 = a4;
  v23 = v111;
  v111 = a7;

  v112 = v112;
  v24 = v21;
  LOBYTE(a7) = _dispatchPreconditionTest(_:)();
  v26 = *(v16 + 8);
  v25 = (v16 + 8);
  v26(v20, v15);
  if ((a7 & 1) == 0)
  {
    __break(1u);
    goto LABEL_30;
  }

  v107 = v23;
  v108 = v22;
  v27 = OBJC_IVAR____TtC7remindd11RDThrottler_throttleResetDate;
  v21 = v113;
  swift_beginAccess();
  v25 = (v11 + 16);
  v28 = v109;
  v103 = *(v11 + 16);
  v103(v14, &v21[v27], v109);
  v29 = Date.isInThePast.getter();
  v30 = *(v11 + 8);
  v102 = v11 + 8;
  v30(v14, v28);
  if (v29)
  {
    sub_10003F81C();
    v31 = OBJC_IVAR____TtC7remindd11RDThrottler_currentIntervalAllowedOperationsCount;
    v32 = *&v21[OBJC_IVAR____TtC7remindd11RDThrottler_currentIntervalAllowedOperationsCount];
    goto LABEL_5;
  }

  v31 = OBJC_IVAR____TtC7remindd11RDThrottler_currentIntervalAllowedOperationsCount;
  v32 = *&v21[OBJC_IVAR____TtC7remindd11RDThrottler_currentIntervalAllowedOperationsCount];
  if (v32)
  {
LABEL_5:
    v33 = v32 != 0;
    v34 = v32 - 1;
    v14 = v110;
    if (v33)
    {
      v25 = v112;
      *&v21[v31] = v34;
      if (qword_1009362E0 == -1)
      {
LABEL_8:
        v35 = type metadata accessor for Logger();
        sub_100006654(v35, qword_10094A058);

        v36 = Logger.logObject.getter();
        v37 = static os_log_type_t.info.getter();
        v14, v38, v39, v40, v41, v42, v43, v44;

        if (os_log_type_enabled(v36, v37))
        {
          v45 = v21;
          v46 = swift_slowAlloc();
          v114 = swift_slowAlloc();
          *v46 = 136446466;
          *(v46 + 4) = sub_10000668C(*(v45 + 4), *(v45 + 5), &v114);
          *(v46 + 12) = 2082;
          if (v14)
          {
            v47 = v104;
          }

          else
          {
            v47 = 7104878;
          }

          if (v14)
          {
            v48 = v14;
          }

          else
          {
            v48 = 0xE300000000000000;
          }

          v49 = sub_10000668C(v47, v48, &v114);
          v48, v50, v51, v52, v53, v54, v55, v56;
          *(v46 + 14) = v49;
          _os_log_impl(&_mh_execute_header, v36, v37, "Throttler allows and is going to run operation {identifier: %{public}s, op: %{public}s}", v46, 0x16u);
          swift_arrayDestroy();
        }

        v58 = v107;
        v57 = v108;
        sub_1001BF0FC(v108, v107, v105, v111, v25);

        return;
      }

LABEL_31:
      swift_once();
      goto LABEL_8;
    }

LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v59 = v21;
  if (qword_1009362E0 != -1)
  {
    swift_once();
  }

  v60 = type metadata accessor for Logger();
  sub_100006654(v60, qword_10094A058);
  v61 = v110;

  swift_retain_n();
  static REMCDRecurrenceRule.shouldAttemptLocalObjectMerge()();
  static REMCDRecurrenceRule.shouldAttemptLocalObjectMerge()();

  v62 = Logger.logObject.getter();
  v63 = static os_log_type_t.error.getter();
  v61, v64, v65, v66, v67, v68, v69, v70;

  if (os_log_type_enabled(v62, v63))
  {
    v71 = swift_slowAlloc();
    v105 = v62;
    v72 = v71;
    v106 = swift_slowAlloc();
    v114 = v106;
    *v72 = 136447234;
    *(v72 + 4) = sub_10000668C(*(v59 + 4), *(v59 + 5), &v114);
    *(v72 + 12) = 2082;
    if (v61)
    {
      v73 = v104;
    }

    else
    {
      v73 = 7104878;
    }

    LODWORD(v104) = v63;
    if (v61)
    {
      v74 = v61;
    }

    else
    {
      v74 = 0xE300000000000000;
    }

    v75 = sub_10000668C(v73, v74, &v114);
    v74, v76, v77, v78, v79, v80, v81, v82;
    *(v72 + 14) = v75;
    *(v72 + 22) = 1040;
    *(v72 + 24) = 4;
    *(v72 + 28) = 2048;
    v83 = v103;
    v103(v14, &v59[v27], v28);
    Date.timeIntervalSinceNow.getter();
    v85 = v84;
    v30(v14, v28);
    *(v72 + 30) = v85;
    *(v72 + 38) = 2082;
    v83(v14, &v59[v27], v28);
    v86 = Date.description.getter();
    v88 = v87;
    v30(v14, v28);
    v89 = sub_10000668C(v86, v88, &v114);
    v88, v90, v91, v92, v93, v94, v95, v96;
    *(v72 + 40) = v89;
    v97 = v105;
    _os_log_impl(&_mh_execute_header, v105, v104, "Throttler denied operation {identifier: %{public}s, op: %{public}s, remainingTimeInterval: %.*f, throttleResetDate: %{public}s}", v72, 0x30u);
    swift_arrayDestroy();

    v98 = v103;
    v59 = v113;
  }

  else
  {

    v98 = v103;
  }

  v99 = objc_opt_self();
  v98(v14, &v59[v27], v28);
  Date.timeIntervalSinceNow.getter();
  v101 = v100;
  v30(v14, v28);
  [v99 throttledErrorWithRemainingTimeInterval:v101];
  swift_willThrow();
}

uint64_t sub_1004C42C0()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_10094A158);
  v1 = sub_100006654(v0, qword_10094A158);
  if (qword_1009364E0 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_1009751E8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

double sub_1004C4394()
{
  v1 = [v0 reminder];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 account];
    if (v3)
    {
      v4 = v3;
      v5 = [v3 accountTypeHost];
      v6 = [v5 isCloudKit];

      if (v6)
      {
        v7 = sub_1004C4B94();
        if ((v8 & 1) == 0)
        {
          v9 = v7;

          return *&v9;
        }
      }

      else
      {
        if (qword_1009362E8 != -1)
        {
          swift_once();
        }

        v35 = type metadata accessor for Logger();
        sub_100006654(v35, qword_10094A158);
        v36 = v0;
        v37 = Logger.logObject.getter();
        v38 = static os_log_type_t.info.getter();

        if (os_log_type_enabled(v37, v38))
        {
          v39 = swift_slowAlloc();
          v40 = swift_slowAlloc();
          v72 = v40;
          *v39 = 136446210;
          v41 = [v36 remObjectID];
          if (v41)
          {
            v42 = v41;
            v43 = [v41 description];

            v44 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v46 = v45;
          }

          else
          {
            v44 = 7104878;
            v46 = 0xE300000000000000;
          }

          v63 = sub_10000668C(v44, v46, &v72);
          v46, v64, v65, v66, v67, v68, v69, v70;
          *(v39 + 4) = v63;
          _os_log_impl(&_mh_execute_header, v37, v38, "REMCDAlarm.generateNonce(): alarm does not belong to CK account, skip generateNonce() {alarmID: %{public}s}", v39, 0xCu);
          sub_10000607C(v40);
        }
      }

      v10 = kREMNonceUnset;

      return v10;
    }

    if (qword_1009362E8 != -1)
    {
      swift_once();
    }

    v23 = type metadata accessor for Logger();
    sub_100006654(v23, qword_10094A158);
    v24 = v0;
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v72 = v28;
      *v27 = 136446210;
      v29 = [v24 remObjectID];
      if (v29)
      {
        v30 = v29;
        v31 = [v29 description];

        v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v34 = v33;
      }

      else
      {
        v32 = 7104878;
        v34 = 0xE300000000000000;
      }

      v55 = sub_10000668C(v32, v34, &v72);
      v34, v56, v57, v58, v59, v60, v61, v62;
      *(v27 + 4) = v55;
      _os_log_impl(&_mh_execute_header, v25, v26, "REMCDAlarm.generateNonce(): alarm.reminder.account unexpectedly nil trying to call generateNonce() {alarmID: %{public}s}", v27, 0xCu);
      sub_10000607C(v28);
    }

    v10 = kREMNonceUnset;
  }

  else
  {
    if (qword_1009362E8 != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    sub_100006654(v11, qword_10094A158);
    v12 = v0;
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v72 = v16;
      *v15 = 136446210;
      v17 = [v12 remObjectID];
      if (v17)
      {
        v18 = v17;
        v19 = [v17 description];

        v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v22 = v21;
      }

      else
      {
        v20 = 7104878;
        v22 = 0xE300000000000000;
      }

      v47 = sub_10000668C(v20, v22, &v72);
      v22, v48, v49, v50, v51, v52, v53, v54;
      *(v15 + 4) = v47;
      _os_log_impl(&_mh_execute_header, v13, v14, "REMCDAlarm.generateNonce(): alarm.reminder not set before trying to call generateNonce() {alarmID: %{public}s}", v15, 0xCu);
      sub_10000607C(v16);
    }

    return kREMNonceUnset;
  }

  return v10;
}

void sub_1004C4958(const char *a1, ...)
{
  v3 = [v1 alarm];
  if (v3)
  {
    v4 = v3;
    sub_1004C4394();
  }

  else
  {
    if (qword_1009362E8 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_100006654(v5, qword_10094A158);
    v6 = v1;
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v25 = v10;
      *v9 = 136446210;
      v11 = [v6 remObjectID];
      if (v11)
      {
        v12 = v11;
        v13 = [v11 description];

        v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v16 = v15;
      }

      else
      {
        v16 = 0xE300000000000000;
        v14 = 7104878;
      }

      v17 = sub_10000668C(v14, v16, &v25);
      v16, v18, v19, v20, v21, v22, v23, v24;
      *(v9 + 4) = v17;
      _os_log_impl(&_mh_execute_header, v7, v8, a1, v9, 0xCu);
      sub_10000607C(v10);
    }
  }
}

uint64_t sub_1004C4B94()
{
  v1 = v0;
  if (qword_100935E28 != -1)
  {
    swift_once();
  }

  v2 = qword_100974D20;
  if (!*(qword_100974D20 + 16) || (v3 = sub_100005F4C(0xD000000000000011, 0x80000001007EA5C0), (v4 & 1) == 0))
  {
    if (qword_1009362E8 != -1)
    {
      swift_once();
    }

    v27 = type metadata accessor for Logger();
    sub_100006654(v27, qword_10094A158);
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.fault.getter();
    if (!os_log_type_enabled(v28, v29))
    {
      goto LABEL_13;
    }

    v30 = swift_slowAlloc();
    *v30 = 0;
    _os_log_impl(&_mh_execute_header, v28, v29, "REMAlarmCDIngestor: Fatal programming fault, was expecting to map dueDateComponents storage value key to CD value key", v30, 2u);
LABEL_12:

    goto LABEL_13;
  }

  v5 = *(*(v2 + 56) + 16 * v3 + 8);

  v6 = [v1 resolutionTokenMap];
  if (!v6)
  {
    v5, v7, v8, v9, v10, v11, v12, v13;
    if (qword_1009362E8 != -1)
    {
      swift_once();
    }

    v31 = type metadata accessor for Logger();
    sub_100006654(v31, qword_10094A158);
    v32 = v1;
    v28 = Logger.logObject.getter();
    v33 = static os_log_type_t.error.getter();

    if (!os_log_type_enabled(v28, v33))
    {
      goto LABEL_13;
    }

    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v88 = v35;
    *v34 = 136446210;
    v36 = [v32 remObjectID];
    if (v36)
    {
      v37 = v36;
      v38 = [v36 description];

      v39 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v41 = v40;
    }

    else
    {
      v39 = 7104878;
      v41 = 0xE300000000000000;
    }

    v53 = sub_10000668C(v39, v41, &v88);
    v41, v54, v55, v56, v57, v58, v59, v60;
    *(v34 + 4) = v53;
    _os_log_impl(&_mh_execute_header, v28, v33, "REMAlarmCDIngestor: Failed to get resolution token map from reminder {reminderID: %{public}s}", v34, 0xCu);
    sub_10000607C(v35);

    goto LABEL_12;
  }

  v14 = v6;
  v15 = String._bridgeToObjectiveC()();
  v5, v16, v17, v18, v19, v20, v21, v22;
  v23 = [v14 getTokenForKey:v15];

  if (v23)
  {
    [v23 generateNonce];
    v25 = v24;

    return v25;
  }

  if (qword_1009362E8 != -1)
  {
    swift_once();
  }

  v42 = type metadata accessor for Logger();
  sub_100006654(v42, qword_10094A158);
  v43 = v1;
  v28 = v14;
  v44 = Logger.logObject.getter();
  v45 = static os_log_type_t.error.getter();

  if (!os_log_type_enabled(v44, v45))
  {

    return 0;
  }

  v46 = swift_slowAlloc();
  v88 = swift_slowAlloc();
  *v46 = 136446466;
  v47 = [v43 remObjectID];
  if (v47)
  {
    v48 = v47;
    v49 = [v47 description];

    v50 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v52 = v51;
  }

  else
  {
    v50 = 7104878;
    v52 = 0xE300000000000000;
  }

  v61 = sub_10000668C(v50, v52, &v88);
  v52, v62, v63, v64, v65, v66, v67, v68;
  *(v46 + 4) = v61;
  *(v46 + 12) = 2082;
  v69 = [v28 getTokenKeys];
  v70 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v71 = Array.description.getter();
  v73 = v72;
  v70, v72, v74, v75, v76, v77, v78, v79;
  v80 = sub_10000668C(v71, v73, &v88);
  v73, v81, v82, v83, v84, v85, v86, v87;
  *(v46 + 14) = v80;
  _os_log_impl(&_mh_execute_header, v44, v45, "REMAlarmCDIngestor: Failed to find the resolution token of 'dueDateComponents' from reminder {reminderID: %{public}s, mapKeys: %{public}s}", v46, 0x16u);
  swift_arrayDestroy();

LABEL_13:
  return 0;
}

id static REMCDAccountListData.fetchRequest()()
{
  v0 = objc_allocWithZone(NSFetchRequest);
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 initWithEntityName:v1];

  return v2;
}

uint64_t sub_1004C5194@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for REMCDAccountListData();
  result = Identifiable<>.id.getter();
  *a2 = result;
  return result;
}

uint64_t sub_1004C51D8()
{
  v1 = v0;
  v2 = type metadata accessor for URL();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2, v4);
  v6 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7, v8);
  v10 = &v42 - v9;
  URL.appendingPathComponent(_:)();
  v11 = *(v0 + OBJC_IVAR____TtC7remindd19RDCoreBehaviorModel_feedbackVersion);
  v12 = OBJC_IVAR____TtC7remindd19RDCoreBehaviorModel_feedbackForRules;
  swift_beginAccess();
  v13 = *(v1 + v12);
  type metadata accessor for JSONEncoder();
  swift_allocObject();

  JSONEncoder.init()();
  v46[0] = v11;
  v46[1] = v13;
  sub_1004D08BC();
  v14 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v16 = v15;
  v13, v15, v17, v18, v19, v20, v21, v22;

  Data.write(to:options:)();
  if (qword_1009362F0 != -1)
  {
    swift_once();
  }

  v23 = type metadata accessor for Logger();
  sub_100006654(v23, qword_10094A170);
  (*(v3 + 16))(v6, v10, v2);
  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v45 = v14;
    v28 = v27;
    v46[0] = v27;
    *v26 = 136315138;
    v43 = URL.absoluteString.getter();
    v44 = v16;
    v30 = v29;
    v31 = *(v3 + 8);
    v31(v6, v2);
    v32 = sub_10000668C(v43, v30, v46);
    v30, v33, v34, v35, v36, v37, v38, v39;
    *(v26 + 4) = v32;
    _os_log_impl(&_mh_execute_header, v24, v25, "RDCoreBehaviorModel: New feedback info saved to {%s}", v26, 0xCu);
    sub_10000607C(v28);

    sub_10001BBA0(v45, v44);

    v31(v10, v2);
  }

  else
  {
    sub_10001BBA0(v14, v16);

    v41 = *(v3 + 8);
    v41(v6, v2);
    v41(v10, v2);
  }

  return 1;
}

void sub_1004C5794(uint64_t a1)
{
  v2 = v1;
  v59 = *(a1 + 16);
  if (!v59)
  {
    return;
  }

  v3 = 0;
  v58 = a1 + 32;
  v4 = &_swiftEmptyArrayStorage;
  while (1)
  {
    v5 = v58 + 24 * v3;
    v6 = *v5;
    v7 = *(v5 + 8);
    v8 = *(v5 + 16);
    v63[0] = v6;
    v63[1] = v7;
    v64 = v8;
    sub_1004D45B0(v6, v7, v8);
    v9 = v2;
    sub_1004CD47C(v63, &v65);
    if (v2)
    {
      sub_1004D45F8(v6, v7, v8, v10, v11, v12, v13, v14);
      v4, v50, v51, v52, v53, v54, v55, v56;
      return;
    }

    sub_1004D45F8(v6, v7, v8, v10, v11, v12, v13, v14);
    v15 = v65;
    v16 = v65 >> 62;
    if (v65 >> 62)
    {
      v17 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v17 = *((v65 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v18 = v4 >> 62;
    if (v4 >> 62)
    {
      v49 = _CocoaArrayWrapper.endIndex.getter();
      v20 = v49 + v17;
      if (__OFADD__(v49, v17))
      {
LABEL_33:
        __break(1u);
        return;
      }
    }

    else
    {
      v19 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v20 = v19 + v17;
      if (__OFADD__(v19, v17))
      {
        goto LABEL_33;
      }
    }

    v61 = v17;
    if (swift_isUniquelyReferenced_nonNull_bridgeObject())
    {
      if (!v18)
      {
        v28 = v4 & 0xFFFFFFFFFFFFFF8;
        if (v20 <= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          goto LABEL_17;
        }

        goto LABEL_16;
      }

LABEL_15:
      _CocoaArrayWrapper.endIndex.getter();
      goto LABEL_16;
    }

    if (v18)
    {
      goto LABEL_15;
    }

LABEL_16:
    v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
    v28 = v4 & 0xFFFFFFFFFFFFFF8;
LABEL_17:
    v29 = *(v28 + 16);
    v30 = *(v28 + 24);
    if (v16)
    {
      break;
    }

    v31 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v31)
    {
      goto LABEL_3;
    }

LABEL_21:
    if (((v30 >> 1) - v29) < v61)
    {
      goto LABEL_38;
    }

    v60 = v4;
    v34 = v28 + 8 * v29 + 32;
    v57 = v28;
    if (v16)
    {
      if (v31 < 1)
      {
        goto LABEL_40;
      }

      sub_10000CB48(&unk_10094A440, &qword_10094A438, &unk_1007AE590, &protocol conformance descriptor for [A]);
      for (i = 0; i != v31; ++i)
      {
        sub_1000F5104(&qword_10094A438, &unk_1007AE590);
        v43 = sub_100011090(v62, i, v15);
        v45 = *v44;
        (v43)(v62, 0);
        *(v34 + 8 * i) = v45;
      }
    }

    else
    {
      sub_1000F5104(&qword_10093AA30, &qword_1007AE460);
      swift_arrayInitWithCopy();
    }

    v15, v35, v36, v37, v38, v39, v40, v41;
    v2 = v9;
    v4 = v60;
    if (v61 >= 1)
    {
      v46 = *(v57 + 16);
      v47 = __OFADD__(v46, v61);
      v48 = v46 + v61;
      if (v47)
      {
        goto LABEL_39;
      }

      *(v57 + 16) = v48;
    }

LABEL_4:
    if (++v3 == v59)
    {
      return;
    }
  }

  v32 = v28;
  v33 = _CocoaArrayWrapper.endIndex.getter();
  v28 = v32;
  v31 = v33;
  if (v33)
  {
    goto LABEL_21;
  }

LABEL_3:
  v15, v21, v22, v23, v24, v25, v26, v27;
  if (v61 <= 0)
  {
    goto LABEL_4;
  }

  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
}

uint64_t sub_1004C5AE0(unint64_t a1)
{
  v3 = OBJC_IVAR____TtC7remindd19RDCoreBehaviorModel_feedbackVersion;
  if (*(v1 + OBJC_IVAR____TtC7remindd19RDCoreBehaviorModel_feedbackVersion) >= a1)
  {
    if (qword_1009362F0 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    sub_100006654(v14, qword_10094A170);
    v15 = v1;

    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 134218240;
      *(v18 + 4) = *(v15 + v3);

      *(v18 + 12) = 2048;
      *(v18 + 14) = a1;
      _os_log_impl(&_mh_execute_header, v16, v17, "RDCoreBehaviorModel: Current feedback version {%lu}, skipping reset to version {%lu}", v18, 0x16u);
    }

    else
    {
    }

    v13 = 0;
  }

  else
  {
    v4 = OBJC_IVAR____TtC7remindd19RDCoreBehaviorModel_feedbackForRules;
    swift_beginAccess();
    v5 = *(v1 + v4);
    *(v1 + v4) = _swiftEmptyDictionarySingleton;
    v5, v6, v7, v8, v9, v10, v11, v12;
    *(v1 + v3) = a1;
    v13 = sub_1004C51D8();
  }

  return v13 & 1;
}

double sub_1004C5C68(void *a1, uint64_t a2, void *a3, uint64_t a4, double a5)
{
  v93 = a4;
  v88 = a3;
  v90 = a2;
  v89 = a1;
  v92 = *v5;
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v98 = *(v8 - 8);
  v99 = v8;
  __chkstk_darwin(v8, v9);
  v96 = &v81 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = type metadata accessor for DispatchQoS();
  v95 = *(v97 - 8);
  __chkstk_darwin(v97, v11);
  v94 = &v81 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for Date();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13, v16);
  v91 = &v81 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17, v18);
  v103 = &v81 - v19;
  v20 = type metadata accessor for REMSuggestedAttributeInputDataFrame();
  v87 = *(v20 - 8);
  __chkstk_darwin(v20, v21);
  v23 = &v81 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for URL();
  v100 = *(v24 - 8);
  v101 = v24;
  __chkstk_darwin(v24, v25);
  v102 = &v81 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000060C8(0, &qword_10094A388, BMMiningTask_ptr);
  if ([swift_getObjCClassFromMetadata() respondsToSelector:"supportsTaskSpecificEvents"] && objc_msgSend(objc_opt_self(), "supportsTaskSpecificEvents"))
  {
    v83 = v6;
    v84 = v5;
    URL.appendingPathComponent(_:)();
    v27 = sub_1004D09D4();
    v28 = sub_1004D0AC0();
    v86 = v14;
    v29 = v28;
    v82 = objc_allocWithZone(BMMiningTask);
    URL._bridgeToObjectiveC()(&v106);
    v31 = v30;
    sub_1000F5104(&unk_100943AF0, &unk_100797FE0);
    v85 = v13;
    sub_10000CB48(&qword_10093A9E8, &unk_100943AF0, &unk_100797FE0, &protocol conformance descriptor for NSObject);
    isa = Set._bridgeToObjectiveC()().super.isa;
    v27, v33, v34, v35, v36, v37, v38, v39;
    v40 = Set._bridgeToObjectiveC()().super.isa;
    v29, v41, v42, v43, v44, v45, v46, v47;
    v48 = [v82 initWithStorageURL:v31 types:isa targetTypes:v40 samplingInterval:v88 absoluteSupport:2.0 confidence:a5];
    v88 = v48;

    v49 = v87;
    v50 = *(v87 + 16);
    v50(v23, v89, v20);
    v51 = type metadata accessor for RDCoreBehaviorModelTrainingDelegate(0);
    v52 = objc_allocWithZone(v51);
    *&v52[OBJC_IVAR____TtC7remindd35RDCoreBehaviorModelTrainingDelegate_timer] = 0;
    v50(&v52[OBJC_IVAR____TtC7remindd35RDCoreBehaviorModelTrainingDelegate_trainingDataFrame], v23, v20);
    *&v52[OBJC_IVAR____TtC7remindd35RDCoreBehaviorModelTrainingDelegate_intentWords] = v90;
    v53 = &v52[OBJC_IVAR____TtC7remindd35RDCoreBehaviorModelTrainingDelegate_metrics];
    *v53 = 0;
    *(v53 + 1) = 0;
    *(v53 + 2) = 0;
    *(v53 + 3) = -2;
    v105.receiver = v52;
    v105.super_class = v51;

    v54 = objc_msgSendSuper2(&v105, "init");
    v89 = v54;
    (*(v49 + 8))(v23, v20);
    [v48 setDelegate:v54];
    v55 = v103;
    Date.init()();
    sub_1000060C8(0, &qword_10093E6E0, OS_dispatch_queue_ptr);
    v90 = static OS_dispatch_queue.main.getter();
    v56 = v86;
    v57 = v91;
    v58 = v85;
    (*(v86 + 16))(v91, v55, v85);
    v59 = (*(v56 + 80) + 24) & ~*(v56 + 80);
    v60 = (v15 + v59 + 7) & 0xFFFFFFFFFFFFFFF8;
    v61 = (v60 + 15) & 0xFFFFFFFFFFFFFFF8;
    v62 = (v61 + 15) & 0xFFFFFFFFFFFFFFF8;
    v63 = swift_allocObject();
    *(v63 + 16) = v84;
    (*(v56 + 32))(v63 + v59, v57, v58);
    v64 = v88;
    *(v63 + v60) = v88;
    v65 = v89;
    *(v63 + v61) = v89;
    v66 = v92;
    *(v63 + v62) = v93;
    *(v63 + ((v62 + 15) & 0xFFFFFFFFFFFFFFF8)) = v66;
    aBlock[4] = sub_1004D4640;
    aBlock[5] = v63;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100019200;
    aBlock[3] = &unk_1008F4978;
    v67 = _Block_copy(aBlock);

    v68 = v64;
    v69 = v65;

    v70 = v94;
    static DispatchQoS.unspecified.getter();
    aBlock[0] = &_swiftEmptyArrayStorage;
    sub_1000546DC(&qword_100936E90, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_1000F5104(&unk_100939E50, &unk_100791AD0);
    sub_10000CB48(&qword_100936EA0, &unk_100939E50, &unk_100791AD0, &protocol conformance descriptor for [A]);
    v71 = v96;
    v72 = v99;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v73 = v90;
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v67);

    (*(v98 + 8))(v71, v72);
    (*(v95 + 8))(v70, v97);
    if (qword_1009362F0 != -1)
    {
      swift_once();
    }

    v74 = type metadata accessor for Logger();
    sub_100006654(v74, qword_10094A170);
    v75 = Logger.logObject.getter();
    v76 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v75, v76))
    {
      v77 = swift_slowAlloc();
      *v77 = 0;
      _os_log_impl(&_mh_execute_header, v75, v76, "RDCoreBehaviorModel: CoreBehavior mining task will begin mining", v77, 2u);
    }

    [v68 mine];
    (*(v86 + 8))(v103, v85);
    (*(v100 + 8))(v102, v101);
    a5 = *&v69[OBJC_IVAR____TtC7remindd35RDCoreBehaviorModelTrainingDelegate_metrics + 16];
  }

  else
  {
    v78 = objc_opt_self();
    v79 = String._bridgeToObjectiveC()();
    [v78 internalErrorWithDebugDescription:v79];

    swift_willThrow();
  }

  return a5;
}

_TtC7remindd19RDXPCStorePerformer *sub_1004C6658(uint64_t a1)
{
  v32 = a1;
  v2 = sub_1000F5104(&qword_10094A380, &unk_1007AE530);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2, v4);
  v6 = &v32 - v5;
  sub_1000060C8(0, &qword_10094A388, BMMiningTask_ptr);
  if (![swift_getObjCClassFromMetadata() respondsToSelector:"supportsTaskSpecificEvents"])
  {
    return &_swiftEmptyArrayStorage;
  }

  v7 = &_swiftEmptyArrayStorage;
  if (![objc_opt_self() supportsTaskSpecificEvents])
  {
    return v7;
  }

  v8 = OBJC_IVAR____TtC7remindd19RDCoreBehaviorModel_rules;
  swift_beginAccess();
  (*(v3 + 16))(v6, v1 + v8, v2);
  v9 = OrderedDictionary.values.getter();
  (*(v3 + 8))(v6, v2);
  if (!(v9 >> 62))
  {
    v17 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v17)
    {
      goto LABEL_5;
    }

LABEL_16:
    v31 = v9;
LABEL_17:
    v31, v10, v11, v12, v13, v14, v15, v16;
    return v7;
  }

  v17 = _CocoaArrayWrapper.endIndex.getter();
  if (!v17)
  {
    goto LABEL_16;
  }

LABEL_5:
  v18 = v9;
  v34 = &_swiftEmptyArrayStorage;
  result = sub_100026EF4(0, v17 & ~(v17 >> 63), 0);
  if ((v17 & 0x8000000000000000) == 0)
  {
    v20 = 0;
    v7 = v34;
    v10 = v9;
    v33 = v9 & 0xC000000000000001;
    v21 = v32;
    v22 = v18;
    do
    {
      if (v33)
      {
        v23 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v23 = *&v10[8 * v20 + 32];
      }

      v24 = v23;
      v25 = sub_1004C8964(v23, v21);
      v27 = v26;

      v34 = v7;
      v29 = *v7->clientIdentity;
      v28 = *&v7->clientIdentity[8];
      if (v29 >= v28 >> 1)
      {
        sub_100026EF4((v28 > 1), v29 + 1, 1);
        v21 = v32;
        v7 = v34;
      }

      ++v20;
      *v7->clientIdentity = v29 + 1;
      v30 = v7 + 16 * v29;
      *(v30 + 4) = v25;
      *(v30 + 5) = v27;
      v10 = v22;
    }

    while (v17 != v20);
    v31 = v22;
    goto LABEL_17;
  }

  __break(1u);
  return result;
}

_TtC7remindd19RDXPCStorePerformer *sub_1004C68F8(unint64_t a1, _TtC7remindd19RDXPCStorePerformer *a2, uint64_t a3, uint64_t a4, int a5)
{
  v280 = a5;
  v279 = a4;
  v9 = sub_1000F5104(&qword_10094A380, &unk_1007AE530);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9, v11);
  v13 = v266 - v12;
  sub_1000060C8(0, &qword_10094A388, BMMiningTask_ptr);
  if (![swift_getObjCClassFromMetadata() respondsToSelector:"supportsTaskSpecificEvents"])
  {
    return &_swiftEmptyArrayStorage;
  }

  v14 = &_swiftEmptyArrayStorage;
  if ([objc_opt_self() supportsTaskSpecificEvents])
  {
    v278 = v13;
    *&v283 = v5;
    sub_1000F5104(&qword_10094A3A0, &qword_1007A46E8);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_100791300;
    REMSuggestedAttributeInput.list.getter();
    v16 = REMSuggestedList.listIdentifier.getter();
    v18 = v17;

    *(v15 + 32) = v16;
    *(v15 + 40) = v18;
    *(v15 + 48) = 2;
    v289[0] = v15;
    REMSuggestedAttributeInput.dueDayOfWeek.getter();
    v19 = REMSuggestedWeekDay.value.getter();

    if ((v19 - 8) >= 0xFFFFFFFFFFFFFFF9)
    {
      v26 = *(v15 + 16);
      v25 = *(v15 + 24);
      v24 = v15;
      if (v26 >= v25 >> 1)
      {
        v24 = sub_1003679FC((v25 > 1), v26 + 1, 1, v15, v20, v21, v22, v23);
      }

      *v24->clientIdentity = v26 + 1;
      v27 = v24 + 24 * v26;
      *(v27 + 4) = v19;
      *(v27 + 5) = 0;
      v27[48] = 3;
      v289[0] = v24;
    }

    else
    {
      v24 = v15;
    }

    v28 = REMSuggestedAttributeInput.location.getter();
    v29 = REMSuggestedLocation.isSpecificLocation.getter();
    v268 = v28;
    if (v29)
    {
      v30 = *v24->clientIdentity;
      v31 = *&v24->clientIdentity[8];

      if (v30 >= v31 >> 1)
      {
        v24 = sub_1003679FC((v31 > 1), v30 + 1, 1, v24, v32, v33, v34, v35);
      }

      *v24->clientIdentity = v30 + 1;
      v36 = v24 + 24 * v30;
      *(v36 + 4) = v268;
      *(v36 + 5) = 0;
      v36[48] = 4;
      v289[0] = v24;
    }

    *&v282 = v9;
    *&v281 = v10;
    if (a3)
    {
      v37 = *v24->clientIdentity;
      v38 = *&v24->clientIdentity[8];

      if (v37 >= v38 >> 1)
      {
        v24 = sub_1003679FC((v38 > 1), v37 + 1, 1, v24, v39, v40, v41, v42);
      }

      *v24->clientIdentity = v37 + 1;
      v43 = v24 + 24 * v37;
      *(v43 + 4) = a2;
      *(v43 + 5) = a3;
      v44 = v24;
      v43[48] = 5;
      v289[0] = v24;
    }

    else
    {
      v44 = v24;
    }

    if (REMSuggestedAttributeInput.flagged.getter())
    {
      v50 = *(v44 + 16);
      v49 = *(v44 + 24);
      if (v50 >= v49 >> 1)
      {
        v44 = sub_1003679FC((v49 > 1), v50 + 1, 1, v44, v45, v46, v47, v48);
      }

      *(v44 + 16) = v50 + 1;
      v51 = v44 + 24 * v50;
      *(v51 + 32) = xmmword_1007AE440;
      *(v51 + 48) = 7;
      v289[0] = v44;
    }

    if (REMSuggestedAttributeInput.priority.getter())
    {
      v52 = REMSuggestedAttributeInput.priority.getter();
      v58 = *(v44 + 16);
      v57 = *(v44 + 24);
      if (v58 >= v57 >> 1)
      {
        v265 = v52;
        v44 = sub_1003679FC((v57 > 1), v58 + 1, 1, v44, v53, v54, v55, v56);
        v52 = v265;
      }

      *(v44 + 16) = v58 + 1;
      v59 = v44 + 24 * v58;
      *(v59 + 32) = v52;
      *(v59 + 40) = 0;
      *(v59 + 48) = 8;
      v289[0] = v44;
    }

    v277 = a1;
    v60 = REMSuggestedAttributeInput.tags.getter();
    v61 = 0;
    v284 = v60;
    v62 = 1 << *(v60 + 32);
    v63 = -1;
    if (v62 < 64)
    {
      v63 = ~(-1 << v62);
    }

    v64 = v60 + 56;
    v65 = v63 & *(v60 + 56);
    v66 = (v62 + 63) >> 6;
    if (v65)
    {
      goto LABEL_33;
    }

    while (1)
    {
      v67 = v61 + 1;
      if (__OFADD__(v61, 1))
      {
LABEL_85:
        __break(1u);
        goto LABEL_86;
      }

      if (v67 >= v66)
      {
        break;
      }

      v65 = *(v64 + 8 * v67);
      ++v61;
      if (v65)
      {
        v61 = v67;
        do
        {
LABEL_33:
          v68 = (v284[6] + ((v61 << 10) | (16 * __clz(__rbit64(v65)))));
          v70 = *v68;
          v69 = v68[1];
          a2 = v44;
          v71 = *(v44 + 16);
          v72 = *(v44 + 24);

          if (v71 >= v72 >> 1)
          {
            a2 = sub_1003679FC((v72 > 1), v71 + 1, 1, a2, v73, v74, v75, v76);
          }

          v65 &= v65 - 1;
          *a2->clientIdentity = v71 + 1;
          v44 = a2;
          v77 = a2 + 24 * v71;
          *(v77 + 4) = v70;
          *(v77 + 5) = v69;
          v77[48] = 1;
          v289[0] = a2;
        }

        while (v65);
      }
    }

    a2 = REMSuggestedAttributeInput.contact.getter();
    if (REMSuggestedContact.isValid.getter())
    {
      v78 = *(v44 + 16);
      v79 = *(v44 + 24);

      if (v78 >= v79 >> 1)
      {
        v44 = sub_1003679FC((v79 > 1), v78 + 1, 1, v44, v80, v81, v82, v83);
      }

      *(v44 + 16) = v78 + 1;
      v84 = v44 + 24 * v78;
      *(v84 + 32) = a2;
      *(v84 + 40) = 0;
      *(v84 + 48) = 0;
      v289[0] = v44;
    }

    if (qword_1009362F0 != -1)
    {
      goto LABEL_88;
    }

    while (1)
    {
      v85 = type metadata accessor for Logger();
      v269 = sub_100006654(v85, qword_10094A170);
      v86 = Logger.logObject.getter();
      v87 = static os_log_type_t.default.getter();
      v88 = os_log_type_enabled(v86, v87);
      v267 = v44;
      v266[1] = a2;
      if (v88)
      {
        v89 = swift_slowAlloc();
        v90 = swift_slowAlloc();
        *&v285[0] = v90;
        *v89 = 136315138;

        v91 = Array.description.getter();
        v93 = v92;
        v44, v92, v94, v95, v96, v97, v98, v99;
        v100 = sub_10000668C(v91, v93, v285);
        v93, v101, v102, v103, v104, v105, v106, v107;
        *(v89 + 4) = v100;
        _os_log_impl(&_mh_execute_header, v86, v87, "RDCoreBehaviorModel: corebehavior context: %s", v89, 0xCu);
        sub_10000607C(v90);
      }

      v108 = v283;
      v109 = v278;
      v110 = OBJC_IVAR____TtC7remindd19RDCoreBehaviorModel_rules;
      swift_beginAccess();
      v111 = v281;
      v112 = v282;
      (*(v281 + 16))(v109, v108 + v110, v282);
      v113 = OrderedDictionary.values.getter();
      v114 = *(v111 + 8);
      a2 = (v111 + 8);
      v114(v109, v112);

      v115 = sub_1004D0BA0(v113, v289);
      v113, v116, v117, v118, v119, v120, v121, v122;

      v123 = Logger.logObject.getter();
      v124 = static os_log_type_t.default.getter();
      v44 = v115 >> 62;
      if (os_log_type_enabled(v123, v124))
      {
        a2 = swift_slowAlloc();
        LODWORD(a2->super.isa) = 134349056;
        if (v44)
        {
          v132 = _CocoaArrayWrapper.endIndex.getter();
        }

        else
        {
          v132 = *((v115 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        *(&a2->super.isa + 4) = v132;
        v115, v125, v126, v127, v128, v129, v130, v131;
        _os_log_impl(&_mh_execute_header, v123, v124, "RDCoreBehaviorModel: number of matching rules: %{public}ld", a2, 0xCu);
      }

      else
      {

        v115, v133, v134, v135, v136, v137, v138, v139;
      }

      v140 = Logger.logObject.getter();
      v141 = static os_log_type_t.default.getter();
      v115, v142, v143, v144, v145, v146, v147, v148;
      if (os_log_type_enabled(v140, v141))
      {
        a2 = swift_slowAlloc();
        v149 = swift_slowAlloc();
        *&v285[0] = v149;
        LODWORD(a2->super.isa) = 136315138;
        sub_1000060C8(0, &qword_10093F650, BMRule_ptr);
        v150 = Array.description.getter();
        v152 = v151;
        v153 = sub_10000668C(v150, v151, v285);
        v152, v154, v155, v156, v157, v158, v159, v160;
        *(&a2->super.isa + 4) = v153;
        _os_log_impl(&_mh_execute_header, v140, v141, "RDCoreBehaviorModel: matching rules:\n %s", a2, 0xCu);
        sub_10000607C(v149);
      }

      v288 = &_swiftEmptyArrayStorage;
      if (v44)
      {
        v168 = _CocoaArrayWrapper.endIndex.getter();
        if (!v168)
        {
LABEL_90:
          v205 = &_swiftEmptyArrayStorage;
          goto LABEL_91;
        }
      }

      else
      {
        v168 = *((v115 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v168)
        {
          goto LABEL_90;
        }
      }

      v169 = 0;
      v274 = v115 & 0xC000000000000001;
      v273 = v115 & 0xFFFFFFFFFFFFFF8;
      v272 = &v115->clientIdentity[16];
      v271 = v115;
      v270 = v168;
LABEL_55:
      if (v274)
      {
        v177 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v169 >= *(v273 + 16))
        {
          goto LABEL_87;
        }

        v177 = *&v272[8 * v169];
      }

      v284 = v177;
      v178 = __OFADD__(v169, 1);
      v179 = v169 + 1;
      if (!v178)
      {
        v277 = v179;
        v180 = [v284 consequent];
        v181 = sub_1000F5104(&qword_10093AA30, &qword_1007AE460);
        sub_10000CB48(&qword_10094A190, &qword_10093AA30, &qword_1007AE460, &protocol conformance descriptor for NSObject);
        v44 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

        v276 = v44;
        v278 = v181;
        if ((v44 & 0xC000000000000001) != 0)
        {
          swift_unknownObjectRetain();
          __CocoaSet.makeIterator()();
          Set.Iterator.init(_cocoa:)();
          v44 = v289[1];
          v182 = v289[2];
          v183 = v289[3];
          a2 = v289[4];
          v184 = v289[5];
        }

        else
        {
          v185 = -1 << *(v44 + 32);
          v182 = (v44 + 56);
          v183 = ~v185;
          v186 = -v185;
          if (v186 < 64)
          {
            v187 = ~(-1 << v186);
          }

          else
          {
            v187 = -1;
          }

          v184 = (v187 & *(v44 + 56));

          a2 = 0;
        }

        v275 = v183;
        v188 = (v183 + 64) >> 6;
        v189 = &_swiftEmptyArrayStorage;
        while (1)
        {
          if (v44 < 0)
          {
            v197 = __CocoaSet.Iterator.next()();
            if (!v197)
            {
              goto LABEL_54;
            }

            v287 = v197;
            swift_dynamicCast();
            v196 = *&v285[0];
            v194 = a2;
            v195 = v184;
            if (!*&v285[0])
            {
              goto LABEL_54;
            }
          }

          else
          {
            v192 = a2;
            v193 = v184;
            v194 = a2;
            if (!v184)
            {
              while (1)
              {
                v194 = (&v192->super.isa + 1);
                if (__OFADD__(v192, 1))
                {
                  break;
                }

                if (v194 >= v188)
                {
                  goto LABEL_54;
                }

                v193 = *(&v182->super.isa + v194);
                v192 = (v192 + 1);
                if (v193)
                {
                  goto LABEL_73;
                }
              }

              __break(1u);
              goto LABEL_85;
            }

LABEL_73:
            v195 = (v193 - 1) & v193;
            v196 = *(*(v44 + 48) + ((v194 << 9) | (8 * __clz(__rbit64(v193)))));
            if (!v196)
            {
LABEL_54:

              sub_10001B860(v44);
              v276, v170, v171, v172, v173, v174, v175, v176;
              sub_100272438(v189);
              v169 = v277;
              v115 = v271;
              if (v277 != v270)
              {
                goto LABEL_55;
              }

              v205 = v288;
LABEL_91:
              v115, v161, v162, v163, v164, v165, v166, v167;

              v206 = Logger.logObject.getter();
              v207 = static os_log_type_t.default.getter();
              v205, v208, v209, v210, v211, v212, v213, v214;
              if (os_log_type_enabled(v206, v207))
              {
                v215 = swift_slowAlloc();
                v216 = swift_slowAlloc();
                *&v285[0] = v216;
                *v215 = 136315138;
                v217 = Array.description.getter();
                v219 = v218;
                v220 = sub_10000668C(v217, v218, v285);
                v219, v221, v222, v223, v224, v225, v226, v227;
                *(v215 + 4) = v220;
                _os_log_impl(&_mh_execute_header, v206, v207, "RDCoreBehaviorModel: all corebehavior predictions: %s", v215, 0xCu);
                sub_10000607C(v216);
              }

              v14 = sub_1004CB2B4(2, v205);
              v205, v228, v229, v230, v231, v232, v233, v234;

              v235 = Logger.logObject.getter();
              v236 = static os_log_type_t.default.getter();
              v14, v237, v238, v239, v240, v241, v242, v243;
              if (os_log_type_enabled(v235, v236))
              {
                v251 = swift_slowAlloc();
                v252 = swift_slowAlloc();
                *&v285[0] = v252;
                *v251 = 136315138;
                v253 = Array.description.getter();
                v255 = v254;
                v256 = sub_10000668C(v253, v254, v285);
                v255, v257, v258, v259, v260, v261, v262, v263;
                *(v251 + 4) = v256;
                _os_log_impl(&_mh_execute_header, v235, v236, "RDCoreBehaviorModel: top corebehavior predictions: %s", v251, 0xCu);
                sub_10000607C(v252);
              }

              v267, v244, v245, v246, v247, v248, v249, v250;

              return v14;
            }
          }

          v287 = v196;
          sub_1004C8260(&v287, v280 & 1, v284, v279, v285);

          v198 = v286;
          if (v286 != 255)
          {
            v283 = v285[0];
            v282 = v285[1];
            v281 = v285[2];
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v189 = sub_1003679E0(0, *v189->clientIdentity + 1, 1, v189, v199, v200, v201, v202);
            }

            v204 = *v189->clientIdentity;
            v203 = *&v189->clientIdentity[8];
            if (v204 >= v203 >> 1)
            {
              v189 = sub_1003679E0((v203 > 1), v204 + 1, 1, v189, v199, v200, v201, v202);
            }

            *v189->clientIdentity = v204 + 1;
            v190 = v189 + 56 * v204;
            v191 = v282;
            *(v190 + 2) = v283;
            *(v190 + 3) = v191;
            *(v190 + 4) = v281;
            v190[80] = v198;
          }

          a2 = v194;
          v184 = v195;
        }
      }

LABEL_86:
      __break(1u);
LABEL_87:
      __break(1u);
LABEL_88:
      swift_once();
    }
  }

  return v14;
}

void sub_1004C7804(uint64_t a1, _TtC7remindd19RDXPCStorePerformer *a2, double a3)
{
  v4 = v3;
  v8 = type metadata accessor for Date();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8, v10);
  v12 = &v82 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  Date.init()();
  Date.timeIntervalSince1970.getter();
  v14 = v13;
  (*(v9 + 8))(v12, v8);
  v15 = a3 * 0.05;
  v16 = OBJC_IVAR____TtC7remindd19RDCoreBehaviorModel_feedbackForRules;
  swift_beginAccess();
  v17 = *(v4 + v16);
  if (*(v17 + 16) && (v18 = sub_100005F4C(a1, a2), (v19 & 1) != 0))
  {
    v20 = *(*(v17 + 56) + 8 * v18);
    swift_endAccess();

    v22 = sub_1004D00EC(v21, v14);
    v20, v23, v24, v25, v26, v27, v28, v29;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v86 = v22;
    sub_1002C99E0(isUniquelyReferenced_nonNull_native, v15, v14);
    v31 = v86;
  }

  else
  {
    swift_endAccess();
    sub_1000F5104(&qword_10094A398, &unk_1007AE540);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100791300;
    *(inited + 32) = v14;
    *(inited + 40) = v15;
    v31 = sub_100390784(inited);
    swift_setDeallocating();
  }

  swift_beginAccess();

  v33 = swift_isUniquelyReferenced_nonNull_native();
  v83 = *(v4 + v16);
  *(v4 + v16) = 0x8000000000000000;
  sub_1002C99B4(v31, a1, a2, v33);
  a2, v34, v35, v36, v37, v38, v39, v40;
  v41 = v83;
  *(v4 + v16) = v83;
  swift_endAccess();
  if (*(v41 + 16))
  {
    v42 = sub_100005F4C(a1, a2);
    if (v43)
    {
      v44 = *(*(v41 + 56) + 8 * v42);
      swift_beginAccess();
      v83 = a1;
      v84 = a2;

      sub_1000F5104(&qword_10094A380, &unk_1007AE530);
      OrderedDictionary.subscript.getter();
      a2, v45, v46, v47, v48, v49, v50, v51;
      v52 = v85;
      if (!v85)
      {
        swift_endAccess();
        v44, v75, v76, v77, v78, v79, v80, v81;
        return;
      }

      swift_endAccess();
      [v52 confidence];
      v54 = v53;
      v55 = 0;
      v56 = 1 << *(v44 + 32);
      v57 = -1;
      if (v56 < 64)
      {
        v57 = ~(-1 << v56);
      }

      v58 = v57 & *(v44 + 64);
      v59 = (v56 + 63) >> 6;
      for (i = 0.0; v58; i = i + *(*(v44 + 56) + ((v61 << 9) | (8 * v62))))
      {
        v61 = v55;
LABEL_16:
        v62 = __clz(__rbit64(v58));
        v58 &= v58 - 1;
      }

      while (1)
      {
        v61 = v55 + 1;
        if (__OFADD__(v55, 1))
        {
          break;
        }

        if (v61 >= v59)
        {

          if (v54 + i >= *(v4 + OBJC_IVAR____TtC7remindd19RDCoreBehaviorModel_confidenceThreshold))
          {

            return;
          }

          if (qword_1009362F0 == -1)
          {
LABEL_20:
            v63 = type metadata accessor for Logger();
            sub_100006654(v63, qword_10094A170);

            v64 = Logger.logObject.getter();
            v65 = static os_log_type_t.default.getter();
            a2, v66, v67, v68, v69, v70, v71, v72;
            if (os_log_type_enabled(v64, v65))
            {
              v73 = swift_slowAlloc();
              v74 = swift_slowAlloc();
              v86 = v74;
              *v73 = 136315138;
              *(v73 + 4) = sub_10000668C(a1, a2, &v86);
              _os_log_impl(&_mh_execute_header, v64, v65, "RDCoreBehaviorModel: Removing rule: %s", v73, 0xCu);
              sub_10000607C(v74);
            }

            v83 = a1;
            v84 = a2;
            swift_beginAccess();
            OrderedDictionary.removeValue(forKey:)();
            swift_endAccess();

            return;
          }

LABEL_27:
          swift_once();
          goto LABEL_20;
        }

        v58 = *(v44 + 64 + 8 * v61);
        ++v55;
        if (v58)
        {
          v55 = v61;
          goto LABEL_16;
        }
      }

      __break(1u);
      goto LABEL_27;
    }
  }
}

void sub_1004C7D34(_TtC7remindd19RDXPCStorePerformer **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_100436428(v2);
  }

  v3 = *v2->clientIdentity;
  v4[0] = &v2->clientIdentity[16];
  v4[1] = v3;
  sub_1004CE61C(v4);
  *a1 = v2;
}

uint64_t sub_1004C7DA0(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_10043653C(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_1004CE714(v6);
  return specialized ContiguousArray._endMutation()();
}

uint64_t sub_1004C7E1C()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_10094A170);
  v1 = sub_100006654(v0, qword_10094A170);
  if (qword_100936458 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_100975050);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1004C7EE4(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000F5104(&qword_10094A450, &qword_1007AE610);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6, v8);
  v10 = v12 - v9;
  sub_10000F61C(a1, a1[3]);
  sub_1004D4BA0();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v14 = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v3)
  {
    v12[1] = a3;
    v13 = 1;
    sub_1000F5104(&qword_10094A460, &qword_1007AE618);
    sub_1004D4BF4();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_1004C807C()
{
  if (*v0)
  {
    return 0xD000000000000010;
  }

  else
  {
    return 0x6E6F6973726576;
  }
}

void sub_1004C80BC(uint64_t a1@<X0>, _TtC7remindd19RDXPCStorePerformer *a2@<X1>, char *a3@<X8>, void *a4@<X2>, void *a5@<X3>, void *a6@<X4>, void *a7@<X5>, void *a8@<X6>, void *a9@<X7>)
{
  v12 = a1 == 0x6E6F6973726576 && a2 == 0xE700000000000000;
  if (v12 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    a2, a2, a4, a5, a6, a7, a8, a9;
    v13 = 0;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001007FA8B0 == a2)
  {
    a2, 0x80000001007FA8B0, a4, a5, a6, a7, a8, a9;
    v13 = 1;
  }

  else
  {
    v14 = _stringCompareWithSmolCheck(_:_:expecting:)();
    a2, v15, v16, v17, v18, v19, v20, v21;
    if (v14)
    {
      v13 = 1;
    }

    else
    {
      v13 = 2;
    }
  }

  *a3 = v13;
}

uint64_t sub_1004C81A0(uint64_t a1)
{
  v2 = sub_1004D4BA0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1004C81DC(uint64_t a1)
{
  v2 = sub_1004D4BA0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1004C8218@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_1004D0ED8(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
  }

  return result;
}

uint64_t sub_1004C8260@<X0>(void **a1@<X0>, char a2@<W1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v9 = *a1;
  if (sub_1004C8824(*a1, 4) & 1) != 0 && (v68 = [v9 value], (swift_dynamicCast()))
  {
    if (a2)
    {
      v10 = sub_1004C8964(a3, a4);
    }

    else
    {
      v10 = BMRule.shortDescription.getter();
    }

    v23 = v10;
    v24 = v11;
    type metadata accessor for REMSuggestedList();
    v25 = REMSuggestedList.__allocating_init(stringLiteral:)();
    [a3 support];
    v27 = v26;
    result = [a3 confidence];
    *a5 = v25;
    *(a5 + 8) = v27;
    *(a5 + 16) = v29;
    *(a5 + 24) = v23;
    *(a5 + 32) = v24;
    *(a5 + 40) = 0;
    *(a5 + 48) = 0;
  }

  else
  {
    if (sub_1004C8824(v9, 6) & 1) != 0 && (v66 = [v9 value], (swift_dynamicCast()))
    {
      if (a2)
      {
        v12 = sub_1004C8964(a3, a4);
      }

      else
      {
        v12 = BMRule.shortDescription.getter();
      }

      v38 = v12;
      v39 = v13;
      type metadata accessor for REMSuggestedWeekDay();
      swift_allocObject();
      v40 = REMSuggestedWeekDay.init(_:)();
      [a3 support];
      v42 = v41;
      result = [a3 confidence];
      *a5 = v40;
      *(a5 + 8) = v42;
      *(a5 + 16) = v43;
      *(a5 + 24) = v38;
      *(a5 + 32) = v39;
      *(a5 + 40) = 0;
      v37 = 2;
    }

    else if (sub_1004C8824(v9, 5) & 1) != 0 && (v68 = [v9 value], (swift_dynamicCast()))
    {
      if (a2)
      {
        v14 = sub_1004C8964(a3, a4);
      }

      else
      {
        v14 = BMRule.shortDescription.getter();
      }

      v44 = v14;
      v45 = v15;
      type metadata accessor for REMSuggestedLocation();
      swift_allocObject();
      v46 = REMSuggestedLocation.init(stringLiteral:)();
      [a3 support];
      v48 = v47;
      result = [a3 confidence];
      *a5 = v46;
      *(a5 + 8) = v48;
      *(a5 + 16) = v49;
      *(a5 + 24) = v44;
      *(a5 + 32) = v45;
      *(a5 + 40) = 0;
      v37 = 1;
    }

    else if (sub_1004C8824(v9, 8))
    {
      if (a2)
      {
        v16 = sub_1004C8964(a3, a4);
      }

      else
      {
        v16 = BMRule.shortDescription.getter();
      }

      v32 = v16;
      v33 = v17;
      [a3 support];
      v35 = v34;
      result = [a3 confidence];
      *a5 = 1;
      *(a5 + 8) = v35;
      *(a5 + 16) = v36;
      *(a5 + 24) = v32;
      *(a5 + 32) = v33;
      *(a5 + 40) = 0;
      v37 = 3;
    }

    else if (sub_1004C8824(v9, 9) & 1) != 0 && (v66 = [v9 value], (swift_dynamicCast()))
    {
      if (a2)
      {
        v18 = sub_1004C8964(a3, a4);
      }

      else
      {
        v18 = BMRule.shortDescription.getter();
      }

      v50 = v18;
      v51 = v19;
      [a3 support];
      v53 = v52;
      result = [a3 confidence];
      *a5 = v68;
      *(a5 + 8) = v53;
      *(a5 + 16) = v54;
      *(a5 + 24) = v50;
      *(a5 + 32) = v51;
      *(a5 + 40) = 0;
      v37 = 4;
    }

    else if (sub_1004C8824(v9, 10) & 1) != 0 && ([v9 value], (swift_dynamicCast()))
    {
      v20 = v66;
      if (a2)
      {
        v21 = sub_1004C8964(a3, a4);
      }

      else
      {
        v21 = BMRule.shortDescription.getter();
      }

      v55 = v21;
      v56 = v22;
      [a3 support];
      v58 = v57;
      result = [a3 confidence];
      *a5 = v20;
      *(a5 + 8) = v67;
      *(a5 + 16) = v58;
      *(a5 + 24) = v59;
      *(a5 + 32) = v55;
      *(a5 + 40) = v56;
      v37 = 5;
    }

    else
    {
      result = sub_1004C8824(v9, 11);
      if (result & 1) != 0 && ([v9 value], result = swift_dynamicCast(), (result))
      {
        if (a2)
        {
          v30 = sub_1004C8964(a3, a4);
        }

        else
        {
          v30 = BMRule.shortDescription.getter();
        }

        v60 = v30;
        v61 = v31;
        type metadata accessor for REMSuggestedContact();
        swift_allocObject();
        v62 = REMSuggestedContact.init(stringLiteral:)();
        [a3 support];
        v64 = v63;
        result = [a3 confidence];
        *a5 = v62;
        *(a5 + 8) = v64;
        *(a5 + 16) = v65;
        *(a5 + 24) = v60;
        *(a5 + 32) = v61;
        *(a5 + 40) = 0;
        v37 = 6;
      }

      else
      {
        *(a5 + 16) = 0u;
        *(a5 + 32) = 0u;
        *a5 = 0u;
        v37 = -1;
      }
    }

    *(a5 + 48) = v37;
  }

  return result;
}

uint64_t sub_1004C8824(void *a1, uint64_t a2)
{
  v2 = a2;
  v3 = [a1 type];
  v4 = [v3 identifier];

  if (v4)
  {
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v8 = sub_1004CCF4C(v2);
  v9 = [v8 identifier];

  if (v9)
  {
    v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v19 = v18;

    if (v7)
    {
      if (v19)
      {
        if (v5 == v17 && v7 == v19)
        {
          v7, v10, v11, v12, v13, v14, v15, v16;
          v20 = 1;
        }

        else
        {
          v20 = _stringCompareWithSmolCheck(_:_:expecting:)();
          v7, v21, v22, v23, v24, v25, v26, v27;
        }

        goto LABEL_16;
      }

      goto LABEL_11;
    }

    if (v19)
    {
      v20 = 0;
      goto LABEL_16;
    }
  }

  else if (v7)
  {
LABEL_11:
    v20 = 0;
    v19 = v7;
LABEL_16:
    v19, v10, v11, v12, v13, v14, v15, v16;
    return v20 & 1;
  }

  v20 = 1;
  return v20 & 1;
}

_TtC7remindd19RDXPCStorePerformer *sub_1004C8964(void *a1, uint64_t countAndFlagsBits)
{
  v3 = [a1 antecedent];
  v4 = sub_1000F5104(&qword_10093AA30, &qword_1007AE460);
  sub_10000CB48(&qword_10094A190, &qword_10093AA30, &qword_1007AE460, &protocol conformance descriptor for NSObject);
  v5 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  sub_1000F5104(&qword_10094A198, &unk_1007AE468);
  sub_10000CB48(&qword_10094A1A0, &qword_10094A198, &unk_1007AE468, &protocol conformance descriptor for Set<A>);
  v6 = Sequence.elements<A>(ofType:)();
  v5, v7, v8, v9, v10, v11, v12, v13;
  if (v6 >> 62)
  {
    goto LABEL_53;
  }

  v21 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v208 = countAndFlagsBits;
  if (v21)
  {
    result = sub_100026EF4(0, v21 & ~(v21 >> 63), 0);
    if ((v21 & 0x8000000000000000) == 0)
    {
      v205 = v4;
      v23 = 0;
      while (1)
      {
        v4 = v23 + 1;
        if (__OFADD__(v23, 1))
        {
          __break(1u);
LABEL_50:
          __break(1u);
LABEL_51:
          __break(1u);
LABEL_52:
          __break(1u);
LABEL_53:
          v21 = _CocoaArrayWrapper.endIndex.getter();
          goto LABEL_3;
        }

        if ((v6 & 0xC000000000000001) != 0)
        {
          v24 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v23 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_51;
          }

          v24 = *(v6 + 8 * v23 + 32);
        }

        v25 = v24;
        v26 = [v24 type];
        v27 = [v26 identifier];

        if (v27)
        {
          v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v30 = v29;
        }

        else
        {
          v30 = 0xE300000000000000;
          v28 = 7104878;
        }

        v31._countAndFlagsBits = v28;
        v31._object = v30;
        String.append(_:)(v31);
        v30, v32, v33, v34, v35, v36, v37, v38;
        v39._countAndFlagsBits = 58;
        v39._object = 0xE100000000000000;
        String.append(_:)(v39);
        if (!countAndFlagsBits)
        {
          goto LABEL_21;
        }

        if ((sub_1004C8824(v25, 4) & 1) == 0)
        {
          goto LABEL_21;
        }

        [v25 value];
        if (!swift_dynamicCast())
        {
          goto LABEL_21;
        }

        if (!*(countAndFlagsBits + 16))
        {
          break;
        }

        v47 = sub_100005F4C(v210, v211);
        v49 = v48;
        v211, v48, v50, v51, v52, v53, v54, v55;
        if ((v49 & 1) == 0)
        {
          goto LABEL_21;
        }

        v56 = (*(countAndFlagsBits + 56) + 16 * v47);
        v58 = *v56;
        v57 = v56[1];

LABEL_22:
        v59._countAndFlagsBits = v58;
        v59._object = v57;
        String.append(_:)(v59);

        v57, v60, v61, v62, v63, v64, v65, v66;
        v68 = *_swiftEmptyArrayStorage.clientIdentity;
        v67 = *&_swiftEmptyArrayStorage.clientIdentity[8];
        if (v68 >= v67 >> 1)
        {
          sub_100026EF4((v67 > 1), v68 + 1, 1);
        }

        *_swiftEmptyArrayStorage.clientIdentity = v68 + 1;
        v69 = &_swiftEmptyArrayStorage + 16 * v68;
        *(v69 + 4) = 0;
        *(v69 + 5) = 0xE000000000000000;
        ++v23;
        countAndFlagsBits = v208;
        if (v4 == v21)
        {
          goto LABEL_25;
        }
      }

      v211, v40, v41, v42, v43, v44, v45, v46;
LABEL_21:
      v210 = 0;
      v211 = 0xE000000000000000;
      [v25 value];
      _print_unlocked<A, B>(_:_:)();
      swift_unknownObjectRelease();
      v58 = 0;
      v57 = 0xE000000000000000;
      goto LABEL_22;
    }

    __break(1u);
    goto LABEL_57;
  }

LABEL_25:
  v6, v14, v15, v16, v17, v18, v19, v20;
  v70 = [a1 consequent];
  v71 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  v72 = Sequence.elements<A>(ofType:)();
  v71, v73, v74, v75, v76, v77, v78, v79;
  if (!(v72 >> 62))
  {
    v87 = *((v72 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v87)
    {
      goto LABEL_27;
    }

LABEL_55:
    v72, v80, v81, v82, v83, v84, v85, v86;
    sub_1000F5104(&qword_100939EB0, &qword_1007989A0);
    v135 = swift_allocObject();
    *(v135 + 16) = xmmword_100791300;
    [a1 support];
    *(v135 + 56) = &type metadata for Double;
    *(v135 + 64) = &protocol witness table for Double;
    *(v135 + 32) = v136;
    v209 = String.init(format:_:)();
    v138 = v137;
    v139 = swift_allocObject();
    *(v139 + 16) = xmmword_100791300;
    [a1 confidence];
    *(v139 + 56) = &type metadata for Double;
    *(v139 + 64) = &protocol witness table for Double;
    *(v139 + 32) = v140;
    v141 = String.init(format:_:)();
    v143 = v142;
    _StringGuts.grow(_:)(26);
    0xE000000000000000, v144, v145, v146, v147, v148, v149, v150;
    sub_1000F5104(&unk_10093B300, &unk_100797780);
    sub_10000CB48(&qword_10093D0F0, &unk_10093B300, &unk_100797780, &protocol conformance descriptor for [A]);
    v151 = BidirectionalCollection<>.joined(separator:)();
    v153 = v152;
    &_swiftEmptyArrayStorage, v152, v154, v155, v156, v157, v158, v159;
    v160._countAndFlagsBits = v151;
    v160._object = v153;
    String.append(_:)(v160);
    v153, v161, v162, v163, v164, v165, v166, v167;
    v168._countAndFlagsBits = 0x5B203E3D205DLL;
    v168._object = 0xE600000000000000;
    String.append(_:)(v168);
    v169 = BidirectionalCollection<>.joined(separator:)();
    v171 = v170;
    &_swiftEmptyArrayStorage, v170, v172, v173, v174, v175, v176, v177;
    v178._countAndFlagsBits = v169;
    v178._object = v171;
    String.append(_:)(v178);
    v171, v179, v180, v181, v182, v183, v184, v185;
    v186._countAndFlagsBits = 0x203A737B205DLL;
    v186._object = 0xE600000000000000;
    String.append(_:)(v186);
    v187._countAndFlagsBits = v209;
    v187._object = v138;
    String.append(_:)(v187);
    v138, v188, v189, v190, v191, v192, v193, v194;
    v195._countAndFlagsBits = 979574828;
    v195._object = 0xE400000000000000;
    String.append(_:)(v195);
    v196._countAndFlagsBits = v141;
    v196._object = v143;
    String.append(_:)(v196);
    v143, v197, v198, v199, v200, v201, v202, v203;
    v204._countAndFlagsBits = 125;
    v204._object = 0xE100000000000000;
    String.append(_:)(v204);
    return 91;
  }

  v87 = _CocoaArrayWrapper.endIndex.getter();
  if (!v87)
  {
    goto LABEL_55;
  }

LABEL_27:
  result = sub_100026EF4(0, v87 & ~(v87 >> 63), 0);
  if ((v87 & 0x8000000000000000) == 0)
  {
    v88 = 0;
    v207 = v87;
    while (1)
    {
      v4 = v88 + 1;
      if (__OFADD__(v88, 1))
      {
        goto LABEL_50;
      }

      if ((v72 & 0xC000000000000001) != 0)
      {
        v89 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v88 >= *((v72 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_52;
        }

        v89 = *(v72 + 8 * v88 + 32);
      }

      v90 = v89;
      v91 = [v89 type];
      v92 = [v91 identifier];

      if (v92)
      {
        v93 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v95 = v94;
      }

      else
      {
        v95 = 0xE300000000000000;
        v93 = 7104878;
      }

      v96._countAndFlagsBits = v93;
      v96._object = v95;
      String.append(_:)(v96);
      v95, v97, v98, v99, v100, v101, v102, v103;
      v104._countAndFlagsBits = 58;
      v104._object = 0xE100000000000000;
      String.append(_:)(v104);
      if (!countAndFlagsBits)
      {
        goto LABEL_44;
      }

      if ((sub_1004C8824(v90, 4) & 1) == 0)
      {
        goto LABEL_44;
      }

      [v90 value];
      if (!swift_dynamicCast())
      {
        goto LABEL_44;
      }

      if (!*(countAndFlagsBits + 16))
      {
        break;
      }

      v112 = sub_100005F4C(v210, v211);
      v114 = v113;
      v211, v113, v115, v116, v117, v118, v119, v120;
      if ((v114 & 1) == 0)
      {
        goto LABEL_44;
      }

      v121 = (*(countAndFlagsBits + 56) + 16 * v112);
      v123 = *v121;
      v122 = v121[1];

LABEL_45:
      v124._countAndFlagsBits = v123;
      v124._object = v122;
      String.append(_:)(v124);

      v122, v125, v126, v127, v128, v129, v130, v131;
      v6 = 0;
      v133 = *_swiftEmptyArrayStorage.clientIdentity;
      v132 = *&_swiftEmptyArrayStorage.clientIdentity[8];
      if (v133 >= v132 >> 1)
      {
        sub_100026EF4((v132 > 1), v133 + 1, 1);
      }

      *_swiftEmptyArrayStorage.clientIdentity = v133 + 1;
      v134 = &_swiftEmptyArrayStorage + 16 * v133;
      *(v134 + 4) = 0;
      *(v134 + 5) = 0xE000000000000000;
      ++v88;
      countAndFlagsBits = v208;
      if (v4 == v207)
      {
        goto LABEL_55;
      }
    }

    v211, v105, v106, v107, v108, v109, v110, v111;
LABEL_44:
    v210 = 0;
    v211 = 0xE000000000000000;
    [v90 value];
    _print_unlocked<A, B>(_:_:)();
    swift_unknownObjectRelease();
    v123 = 0;
    v122 = 0xE000000000000000;
    goto LABEL_45;
  }

LABEL_57:
  __break(1u);
  return result;
}

uint64_t BMRule.shortDescription.getter()
{
  v1 = v0;
  v2 = [(RDXPCStorePerformer *)v0 antecedent];
  sub_1000F5104(&qword_10093AA30, &qword_1007AE460);
  v3 = sub_10000CB48(&qword_10094A190, &qword_10093AA30, &qword_1007AE460, &protocol conformance descriptor for NSObject);
  v4 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  v5 = sub_1000F5104(&qword_10094A198, &unk_1007AE468);
  v6 = sub_10000CB48(&qword_10094A1A0, &qword_10094A198, &unk_1007AE468, &protocol conformance descriptor for Set<A>);
  v7 = Sequence.elements<A>(ofType:)();
  v4, v8, v9, v10, v11, v12, v13, v14;
  if (v7 >> 62)
  {
    goto LABEL_39;
  }

  for (i = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v140 = v7;
    v142 = &_swiftEmptyArrayStorage;
    sub_100026EF4(0, i & ~(i >> 63), 0);
    if (i < 0)
    {
      __break(1u);
LABEL_44:
      __break(1u);

      __break(1u);
      return result;
    }

    v134 = v6;
    v135 = v5;
    v136 = v3;
    v137 = v1;
    v23 = 0;
    v7 = v142;
    v24 = v140;
    v1 = (v140 & 0xC000000000000001);
    while (1)
    {
      v25 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        break;
      }

      if (v1)
      {
        v26 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v23 >= *((v140 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_37;
        }

        v26 = *&v24->clientIdentity[8 * v23 + 16];
      }

      v27 = v26;
      v28 = [v26 type];
      v29 = [v28 identifier];

      if (v29)
      {
        v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v32 = v31;
      }

      else
      {
        v32 = 0xE300000000000000;
        v30 = 7104878;
      }

      v33._countAndFlagsBits = v30;
      v33._object = v32;
      String.append(_:)(v33);
      v32, v34, v35, v36, v37, v38, v39, v40;
      v41._countAndFlagsBits = 58;
      v41._object = 0xE100000000000000;
      String.append(_:)(v41);
      [v27 value];
      _print_unlocked<A, B>(_:_:)();

      swift_unknownObjectRelease();
      v5 = 0xE000000000000000;
      v142 = v7;
      v6 = *(v7 + 16);
      v48 = *(v7 + 24);
      v3 = v6 + 1;
      if (v6 >= v48 >> 1)
      {
        sub_100026EF4((v48 > 1), v6 + 1, 1);
        v7 = v142;
      }

      *(v7 + 16) = v3;
      v49 = (v7 + 16 * v6);
      *(v49 + 4) = 0;
      *(v49 + 5) = 0xE000000000000000;
      ++v23;
      v24 = v140;
      if (v25 == i)
      {
        v140, v140, v42, v43, v44, v45, v46, v47;
        v1 = v137;
        v5 = v135;
        v6 = v134;
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    ;
  }

  v7, v15, v16, v17, v18, v19, v20, v21;
  v7 = &_swiftEmptyArrayStorage;
LABEL_19:
  v50 = [(RDXPCStorePerformer *)v1 consequent:v134];
  v51 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  v52 = Sequence.elements<A>(ofType:)();
  v51, v53, v54, v55, v56, v57, v58, v59;
  if (!(v52 >> 62))
  {
    v67 = *((v52 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v67)
    {
      goto LABEL_41;
    }

    goto LABEL_21;
  }

  v67 = _CocoaArrayWrapper.endIndex.getter();
  if (v67)
  {
LABEL_21:
    v142 = &_swiftEmptyArrayStorage;
    sub_100026EF4(0, v67 & ~(v67 >> 63), 0);
    if (v67 < 0)
    {
      goto LABEL_44;
    }

    v3 = 0;
    v1 = v142;
    v68 = v52;
    v139 = v52;
    v141 = v52 & 0xC000000000000001;
    v138 = v52 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      v69 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        goto LABEL_36;
      }

      if (v141)
      {
        v70 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v3 >= *(v138 + 16))
        {
          goto LABEL_38;
        }

        v70 = *(v68 + 8 * v3 + 32);
      }

      v71 = v70;
      v72 = [v70 type];
      v73 = [v72 identifier];

      if (v73)
      {
        v74 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v76 = v75;
      }

      else
      {
        v76 = 0xE300000000000000;
        v74 = 7104878;
      }

      v77._countAndFlagsBits = v74;
      v77._object = v76;
      String.append(_:)(v77);
      v76, v78, v79, v80, v81, v82, v83, v84;
      v85._countAndFlagsBits = 58;
      v85._object = 0xE100000000000000;
      String.append(_:)(v85);
      [v71 value];
      _print_unlocked<A, B>(_:_:)();

      swift_unknownObjectRelease();
      v5 = 0;
      v142 = v1;
      v93 = *v1->clientIdentity;
      v92 = *&v1->clientIdentity[8];
      v6 = v93 + 1;
      if (v93 >= v92 >> 1)
      {
        sub_100026EF4((v92 > 1), v93 + 1, 1);
        v1 = v142;
      }

      *v1->clientIdentity = v6;
      v94 = v1 + 16 * v93;
      *(v94 + 4) = 0;
      *(v94 + 5) = 0xE000000000000000;
      ++v3;
      v68 = v139;
      if (v69 == v67)
      {
        v139, v139, v86, v87, v88, v89, v90, v91;
        goto LABEL_42;
      }
    }
  }

LABEL_41:
  v52, v60, v61, v62, v63, v64, v65, v66;
  v1 = &_swiftEmptyArrayStorage;
LABEL_42:
  v142 = v7;

  sub_1004C7D34(&v142);
  v7, v95, v96, v97, v98, v99, v100, v101;
  sub_1000F5104(&unk_10093B300, &unk_100797780);
  sub_10000CB48(&qword_10093D0F0, &unk_10093B300, &unk_100797780, &protocol conformance descriptor for [A]);
  v102 = BidirectionalCollection<>.joined(separator:)();
  v104 = v103;

  v105._countAndFlagsBits = v102;
  v105._object = v104;
  String.append(_:)(v105);
  v104, v106, v107, v108, v109, v110, v111, v112;
  v113._countAndFlagsBits = 0x5B203E3D205DLL;
  v113._object = 0xE600000000000000;
  String.append(_:)(v113);
  v142 = v1;

  sub_1004C7D34(&v142);
  v1, v114, v115, v116, v117, v118, v119, v120;
  v121 = BidirectionalCollection<>.joined(separator:)();
  v123 = v122;

  v124._countAndFlagsBits = v121;
  v124._object = v123;
  String.append(_:)(v124);
  v123, v125, v126, v127, v128, v129, v130, v131;
  v132._countAndFlagsBits = 93;
  v132._object = 0xE100000000000000;
  String.append(_:)(v132);
  return 91;
}

unint64_t *sub_1004C9A28(uint64_t a1, uint64_t a2, char a3, uint64_t a4, char a5)
{
  v208 = a1;
  v6 = v5;
  v210 = *v6;
  v211 = sub_1000F5104(&qword_10094A380, &unk_1007AE530);
  v11 = *(v211 - 8);
  __chkstk_darwin(v211, v12);
  v14 = &v197 - v13;
  v15 = type metadata accessor for URL();
  v206 = *(v15 - 8);
  v207 = v15;
  __chkstk_darwin(v15, v16);
  v202 = &v197 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18, v19);
  v203 = &v197 - v20;
  *(v6 + OBJC_IVAR____TtC7remindd19RDCoreBehaviorModel_behaviorRetriever) = 0;
  *(v6 + OBJC_IVAR____TtC7remindd19RDCoreBehaviorModel_timer) = 0;
  *(v6 + OBJC_IVAR____TtC7remindd19RDCoreBehaviorModel_feedbackVersion) = 1;
  v21 = &unk_100974000;
  v204 = OBJC_IVAR____TtC7remindd19RDCoreBehaviorModel_feedbackForRules;
  *(v6 + OBJC_IVAR____TtC7remindd19RDCoreBehaviorModel_feedbackForRules) = _swiftEmptyDictionarySingleton;
  sub_1000060C8(0, &qword_10094A388, BMMiningTask_ptr);
  if (![swift_getObjCClassFromMetadata() respondsToSelector:"supportsTaskSpecificEvents"] || !objc_msgSend(objc_opt_self(), "supportsTaskSpecificEvents"))
  {
    if (qword_1009362F0 != -1)
    {
      goto LABEL_82;
    }

    goto LABEL_13;
  }

  if (a5)
  {
    v22 = 0.5;
  }

  else
  {
    v22 = *&a4;
  }

  *(v6 + OBJC_IVAR____TtC7remindd19RDCoreBehaviorModel_confidenceThreshold) = v22;
  if (a3)
  {
    v23 = 0.003;
  }

  else
  {
    v23 = *&a2;
  }

  (*(v206 + 16))(v6 + OBJC_IVAR____TtC7remindd19RDCoreBehaviorModel_baseUrl, v208, v207);
  URL.appendingPathComponent(_:)();
  v199 = sub_1000060C8(0, &qword_10093F650, BMRule_ptr);
  OrderedDictionary.init()();
  (*(v11 + 32))(v6 + OBJC_IVAR____TtC7remindd19RDCoreBehaviorModel_rules, v14, v211);
  v24 = sub_1004D09D4();
  v25 = objc_allocWithZone(BMBehaviorRetriever);
  URL._bridgeToObjectiveC()(v26);
  v28 = v27;
  sub_1000F5104(&unk_100943AF0, &unk_100797FE0);
  sub_10000CB48(&qword_10093A9E8, &unk_100943AF0, &unk_100797FE0, &protocol conformance descriptor for NSObject);
  isa = Set._bridgeToObjectiveC()().super.isa;
  v24, v30, v31, v32, v33, v34, v35, v36;
  v37 = [v25 initWithURL:v28 taskSpecificItemTypes:isa];

  if (!v37)
  {
    if (qword_1009362F0 == -1)
    {
LABEL_18:
      v58 = type metadata accessor for Logger();
      sub_100006654(v58, qword_10094A170);
      v59 = Logger.logObject.getter();
      v60 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v59, v60))
      {
        v61 = swift_slowAlloc();
        *v61 = 0;
        _os_log_impl(&_mh_execute_header, v59, v60, "RDCoreBehaviorModel: No existing CoreBehavior", v61, 2u);
      }

      v62 = v207;
      v63 = *(v206 + 8);
      v63(v208, v207);
      v63(v203, v62);
      *(v6 + OBJC_IVAR____TtC7remindd19RDCoreBehaviorModel_trained) = 0;
      return v6;
    }

LABEL_93:
    swift_once();
    goto LABEL_18;
  }

  URL.appendingPathComponent(_:)();
  v38 = v209;
  v39 = Data.init(contentsOf:options:)();
  if (v38)
  {

    v198 = 0;
    v21 = v211;
    v41 = v204;
  }

  else
  {
    v64 = v39;
    v65 = v40;
    type metadata accessor for JSONDecoder();
    swift_allocObject();
    JSONDecoder.init()();
    sub_1004D4548();
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();
    v21 = v211;
    v198 = 0;

    v67 = v215[0];
    v66 = v215[1];

    sub_1004D0910(v68, v67, 1uLL);
    v70 = v69;
    v66, v71, v72, v73, v74, v75, v76, v77;
    sub_10001BBA0(v64, v65);
    v66, v78, v79, v80, v81, v82, v83, v84;
    v41 = v204;
    swift_beginAccess();
    v85 = *(v6 + v41);
    *(v6 + v41) = v70;
    v85, v86, v87, v88, v89, v90, v91, v92;
  }

  v93 = [v37 retrieveRulesWithSupport:0 confidence:v23 filters:v22];
  v94 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v216 = &_swiftEmptyArrayStorage;
  if (v94 >> 62)
  {
    v102 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v102 = *((v94 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v197 = v37;
  v205 = v94;
  if (!v102)
  {
    v104 = &_swiftEmptyArrayStorage;
LABEL_56:
    v205, v95, v96, v97, v98, v99, v100, v101;

    v215[0] = sub_1004363E8(v163);
    v164 = v198;
    sub_1004C7DA0(v215);
    if (v164)
    {
      goto LABEL_96;
    }

    v104, v165, v166, v167, v168, v169, v170, v171;
    v172 = v215[0];
    v173 = v215[0] < 0 || (v215[0] & 0x4000000000000000) != 0;
    if (v173)
    {
      v195 = _CocoaArrayWrapper.endIndex.getter();
      if (_CocoaArrayWrapper.endIndex.getter() < 0)
      {
LABEL_95:
        __break(1u);
LABEL_96:

        __break(1u);
        return result;
      }

      if (v195 >= 0xC8)
      {
        v196 = 200;
      }

      else
      {
        v196 = v195;
      }

      if (v195 >= 0)
      {
        v175 = v196;
      }

      else
      {
        v175 = 200;
      }

      if (_CocoaArrayWrapper.endIndex.getter() >= v175)
      {
LABEL_65:
        if ((v172 & 0xC000000000000001) != 0)
        {

          if (v175)
          {
            v176 = 0;
            do
            {
              v177 = v176 + 1;
              _ArrayBuffer._typeCheckSlowPath(_:)(v176);
              v176 = v177;
            }

            while (v175 != v177);
          }
        }

        else
        {
        }

        if (v173)
        {
          _CocoaArrayWrapper.subscript.getter();
          v179 = v178;
          v181 = v180;
          v183 = v182;

          v183 >>= 1;
          v185 = v183 - v181;
          v184 = v183 <= v181;
          if (v183 == v181)
          {
            goto LABEL_78;
          }
        }

        else
        {
          v181 = 0;
          v179 = v172 + 32;
          v185 = v175;
          v184 = v175 <= 0;
          if (!v175)
          {
LABEL_78:
            swift_unknownObjectRelease();
            v192 = v207;
            v193 = *(v206 + 8);
            v193(v208, v207);
            v193(v202, v192);
            v193(v203, v192);
            v194 = *(v6 + OBJC_IVAR____TtC7remindd19RDCoreBehaviorModel_behaviorRetriever);
            *(v6 + OBJC_IVAR____TtC7remindd19RDCoreBehaviorModel_behaviorRetriever) = v197;

            *(v6 + OBJC_IVAR____TtC7remindd19RDCoreBehaviorModel_trained) = 1;
            return v6;
          }
        }

        if (!v184)
        {
          v186 = (v179 + 8 * v181);
          do
          {
            v187 = *v186++;
            v188 = v187;
            v189 = BMRule.shortDescription.getter();
            v213 = v190;
            v214 = v188;
            v212 = v189;
            swift_beginAccess();
            v191 = v188;
            OrderedDictionary.subscript.setter();
            swift_endAccess();

            --v185;
          }

          while (v185);
          goto LABEL_78;
        }

        __break(1u);
        goto LABEL_95;
      }
    }

    else
    {
      v174 = *(v215[0] + 16);
      if (v174 >= 0xC8)
      {
        v175 = 200;
      }

      else
      {
        v175 = *(v215[0] + 16);
      }

      if (v174 >= v175)
      {
        goto LABEL_65;
      }
    }

    __break(1u);
    goto LABEL_93;
  }

  v103 = 0;
  v210 = v94 & 0xC000000000000001;
  v201 = v94 & 0xFFFFFFFFFFFFFF8;
  v200 = v94 + 32;
  v104 = &_swiftEmptyArrayStorage;
  v209 = v102;
  while (1)
  {
    if (v210)
    {
      v105 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v103 >= *(v201 + 16))
      {
        goto LABEL_81;
      }

      v105 = *(v200 + 8 * v103);
    }

    v106 = v105;
    if (__OFADD__(v103++, 1))
    {
      break;
    }

    v108 = BMRule.shortDescription.getter();
    v110 = v109;
    swift_beginAccess();
    v118 = *(v6 + v41);
    if (*(v118 + 16))
    {
      v119 = sub_100005F4C(v108, v110);
      v21 = v120;
      v110, v120, v121, v122, v123, v124, v125, v126;
      if (v21)
      {
        v127 = *(*(v118 + 56) + 8 * v119);
        swift_endAccess();

        [v106 confidence];
        v129 = v128;
        v130 = 0;
        v131 = 1 << *(v127 + 32);
        if (v131 < 64)
        {
          v132 = ~(-1 << v131);
        }

        else
        {
          v132 = -1;
        }

        v133 = v132 & *(v127 + 64);
        v134 = (v131 + 63) >> 6;
        v135 = 0.0;
        if (v133)
        {
          while (1)
          {
            v136 = v130;
LABEL_45:
            v137 = __clz(__rbit64(v133));
            v133 &= v133 - 1;
            v135 = v135 + *(*(v127 + 56) + ((v136 << 9) | (8 * v137)));
            if (!v133)
            {
              goto LABEL_41;
            }
          }
        }

        while (1)
        {
LABEL_41:
          v136 = v130 + 1;
          if (__OFADD__(v130, 1))
          {
            __break(1u);
            goto LABEL_80;
          }

          if (v136 >= v134)
          {
            break;
          }

          v133 = *(v127 + 64 + 8 * v136);
          ++v130;
          if (v133)
          {
            v130 = v136;
            goto LABEL_45;
          }
        }

        v139 = v129 + v135;
        if (v22 >= v139)
        {

          goto LABEL_27;
        }

        v140 = [v106 antecedent];
        sub_1000F5104(&qword_10093AA30, &qword_1007AE460);
        sub_10000CB48(&qword_10094A190, &qword_10093AA30, &qword_1007AE460, &protocol conformance descriptor for NSObject);
        v141 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

        v142 = [v106 consequent];
        v143 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

        [v106 support];
        v145 = v144;
        v146 = objc_allocWithZone(BMRule);
        v147 = Set._bridgeToObjectiveC()().super.isa;
        v141, v148, v149, v150, v151, v152, v153, v154;
        v155 = Set._bridgeToObjectiveC()().super.isa;
        v143, v156, v157, v158, v159, v160, v161, v162;
        [v146 initWithAntecedent:v147 consequent:v155 support:v145 confidence:v139];

        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v216 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v216 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

        v104 = v216;
        v21 = v211;
        v41 = v204;
        goto LABEL_28;
      }
    }

    else
    {
      v110, v111, v112, v113, v114, v115, v116, v117;
    }

    swift_endAccess();
    v138 = v106;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v216 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v216 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      v41 = v204;
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

    v104 = v216;
LABEL_27:
    v21 = v211;
LABEL_28:
    if (v103 == v209)
    {
      goto LABEL_56;
    }
  }

LABEL_80:
  __break(1u);
LABEL_81:
  __break(1u);
LABEL_82:
  swift_once();
LABEL_13:
  v42 = type metadata accessor for Logger();
  sub_100006654(v42, qword_10094A170);
  v43 = Logger.logObject.getter();
  v44 = static os_log_type_t.fault.getter();
  v45 = os_log_type_enabled(v43, v44);
  v46 = v208;
  if (v45)
  {
    v47 = swift_slowAlloc();
    *v47 = 0;
    _os_log_impl(&_mh_execute_header, v43, v44, "RDCoreBehaviorModel: CoreBehavior is not up to date", v47, 2u);
  }

  v48 = objc_opt_self();
  v49 = String._bridgeToObjectiveC()();
  [v48 internalErrorWithDebugDescription:v49];

  swift_willThrow();
  (*(v206 + 8))(v46, v207);

  *(v6 + v21[478]), v50, v51, v52, v53, v54, v55, v56;
  swift_deallocPartialClassInstance();
  return v6;
}

uint64_t sub_1004CA880()
{
  v1 = v0;
  if (qword_1009362F0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100006654(v2, qword_10094A170);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "RDCoreBehaviorModel: deinit", v5, 2u);
  }

  v6 = OBJC_IVAR____TtC7remindd19RDCoreBehaviorModel_timer;
  v7 = *(v1 + OBJC_IVAR____TtC7remindd19RDCoreBehaviorModel_timer);
  *(v1 + OBJC_IVAR____TtC7remindd19RDCoreBehaviorModel_timer) = 0;

  v8 = OBJC_IVAR____TtC7remindd19RDCoreBehaviorModel_baseUrl;
  v9 = type metadata accessor for URL();
  (*(*(v9 - 8) + 8))(v1 + v8, v9);

  *(v1 + OBJC_IVAR____TtC7remindd19RDCoreBehaviorModel_feedbackForRules), v10, v11, v12, v13, v14, v15, v16;
  v17 = OBJC_IVAR____TtC7remindd19RDCoreBehaviorModel_rules;
  v18 = sub_1000F5104(&qword_10094A380, &unk_1007AE530);
  (*(*(v18 - 8) + 8))(v1 + v17, v18);
  return v1;
}

uint64_t sub_1004CAA28()
{
  sub_1004CA880();

  return swift_deallocClassInstance();
}

void sub_1004CAA80(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t a5, uint64_t a6)
{
  v37 = a5;
  v38 = a6;
  v35 = a3;
  v36 = a4;
  v40 = a1;
  v7 = type metadata accessor for Date();
  v34 = v7;
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7, v10);
  v11 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = objc_opt_self();
  v12 = swift_allocObject();
  swift_weakInit();
  (*(v8 + 16))(v11, a2, v7);
  v13 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v14 = (v9 + v13 + 7) & 0xFFFFFFFFFFFFFFF8;
  v15 = (v14 + 15) & 0xFFFFFFFFFFFFFFF8;
  v16 = (v15 + 15) & 0xFFFFFFFFFFFFFFF8;
  v17 = (v16 + 15) & 0xFFFFFFFFFFFFFFF8;
  v18 = swift_allocObject();
  (*(v8 + 32))(v18 + v13, v11, v34);
  v20 = v35;
  v19 = v36;
  *(v18 + v14) = v35;
  *(v18 + v15) = v12;
  *(v18 + v16) = v19;
  v21 = v38;
  *(v18 + v17) = v37;
  *(v18 + ((v17 + 15) & 0xFFFFFFFFFFFFFFF8)) = v21;
  aBlock[4] = sub_1004D46F4;
  aBlock[5] = v18;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1004CB24C;
  aBlock[3] = &unk_1008F49F0;
  v22 = _Block_copy(aBlock);

  v23 = v20;
  v24 = v19;

  v25 = [v39 scheduledTimerWithTimeInterval:1 repeats:v22 block:60.0];
  _Block_release(v22);
  v26 = *(v40 + OBJC_IVAR____TtC7remindd19RDCoreBehaviorModel_timer);
  *(v40 + OBJC_IVAR____TtC7remindd19RDCoreBehaviorModel_timer) = v25;
  v27 = v25;

  v28 = *&v24[OBJC_IVAR____TtC7remindd35RDCoreBehaviorModelTrainingDelegate_timer];
  *&v24[OBJC_IVAR____TtC7remindd35RDCoreBehaviorModelTrainingDelegate_timer] = v25;

  if (qword_1009362F0 != -1)
  {
    swift_once();
  }

  v29 = type metadata accessor for Logger();
  sub_100006654(v29, qword_10094A170);
  v30 = Logger.logObject.getter();
  v31 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    *v32 = 0;
    _os_log_impl(&_mh_execute_header, v30, v31, "RDCoreBehaviorModel: CoreBehavior mining task timer set", v32, 2u);
  }
}

void sub_1004CADCC(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = type metadata accessor for Date();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10, v12);
  v14 = v51 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  Date.init()();
  Date.timeIntervalSince(_:)();
  v16 = v15;
  (*(v11 + 8))(v14, v10);
  if (qword_1009362F0 != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  sub_100006654(v17, qword_10094A170);
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v51[1] = a4;
    v21 = a6;
    v22 = a3;
    v23 = a5;
    v24 = v20;
    v25 = swift_slowAlloc();
    v52[0] = v25;
    *v24 = 136315138;
    v26 = Double.description.getter();
    v28 = v27;
    v29 = sub_10000668C(v26, v27, v52);
    v28, v30, v31, v32, v33, v34, v35, v36;
    *(v24 + 4) = v29;
    _os_log_impl(&_mh_execute_header, v18, v19, "RDCoreBehaviorModel: CoreBehavior mining task has run %s seconds", v24, 0xCu);
    sub_10000607C(v25);

    a5 = v23;
    a3 = v22;
    a6 = v21;
  }

  if (v16 >= 600.0)
  {
    v44 = Logger.logObject.getter();
    v45 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      *v46 = 0;
      _os_log_impl(&_mh_execute_header, v44, v45, "RDCoreBehaviorModel: CoreBehavior mining task terminating early due to time out", v46, 2u);
    }

    [a3 terminateEarly];
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v48 = *(Strong + OBJC_IVAR____TtC7remindd19RDCoreBehaviorModel_timer);

      [v48 invalidate];
    }

    swift_beginAccess();
    v43 = swift_weakLoadStrong();
    if (!v43)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

  if (a6 && *(a6 + 17) == 1)
  {

    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      *v39 = 0;
      _os_log_impl(&_mh_execute_header, v37, v38, "RDCoreBehaviorModel: CoreBehavior mining task terminating early due to shouldDefer is true", v39, 2u);
    }

    [a3 terminateEarly];
    swift_beginAccess();
    v40 = swift_weakLoadStrong();
    if (v40)
    {
      v41 = *(v40 + OBJC_IVAR____TtC7remindd19RDCoreBehaviorModel_timer);

      [v41 invalidate];
    }

    swift_beginAccess();
    v42 = swift_weakLoadStrong();

    if (!v42)
    {
      goto LABEL_20;
    }

    v43 = v42;
LABEL_19:
    v49 = *(v43 + OBJC_IVAR____TtC7remindd19RDCoreBehaviorModel_timer);
    *(v43 + OBJC_IVAR____TtC7remindd19RDCoreBehaviorModel_timer) = 0;

LABEL_20:
    v50 = *(a5 + OBJC_IVAR____TtC7remindd35RDCoreBehaviorModelTrainingDelegate_timer);
    *(a5 + OBJC_IVAR____TtC7remindd35RDCoreBehaviorModelTrainingDelegate_timer) = 0;
  }
}

void sub_1004CB24C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

_TtC7remindd19RDXPCStorePerformer *sub_1004CB2B4(uint64_t a1, uint64_t a2)
{
  v275 = a1;
  v264 = sub_1000F5104(&qword_10094A3A8, &qword_1007AE550);
  v255 = *(v264 - 8);
  __chkstk_darwin(v264, v3);
  v5 = &v250 - v4;
  v257 = sub_1000F5104(&qword_10094A3B0, &qword_1007AE558);
  v254 = *(v257 - 8);
  __chkstk_darwin(v257, v6);
  v8 = &v250 - v7;
  v258 = sub_1000F5104(&qword_10094A3B8, &qword_1007AE560);
  v253 = *(v258 - 8);
  __chkstk_darwin(v258, v9);
  v11 = (&v250 - v10);
  v260 = sub_1000F5104(&qword_10094A3C0, &qword_1007AE568);
  v252 = *(v260 - 8);
  __chkstk_darwin(v260, v12);
  v14 = (&v250 - v13);
  v261 = sub_1000F5104(&qword_10094A3C8, &qword_1007AE570);
  v251 = *(v261 - 8);
  __chkstk_darwin(v261, v15);
  v17 = (&v250 - v16);
  v263 = sub_1000F5104(&qword_10094A3D0, &qword_1007AE578);
  v250 = *(v263 - 8);
  __chkstk_darwin(v263, v18);
  v20 = (&v250 - v19);
  type metadata accessor for REMSuggestedLocation();
  sub_1000F5104(&qword_10094A3D8, &unk_1007AE580);
  v21 = COERCE_DOUBLE(&protocol conformance descriptor for ClassificationLabel);
  sub_1000546DC(&qword_10094A3E0, &type metadata accessor for REMSuggestedLocation, &protocol conformance descriptor for ClassificationLabel);
  v262 = v20;
  OrderedDictionary.init()();
  type metadata accessor for REMSuggestedWeekDay();
  sub_1000546DC(&qword_10094A3E8, &type metadata accessor for REMSuggestedWeekDay, &protocol conformance descriptor for ClassificationLabel);
  v265 = v17;
  OrderedDictionary.init()();
  type metadata accessor for REMSuggestedList();
  sub_1000546DC(&qword_10094A3F0, &type metadata accessor for REMSuggestedList, &protocol conformance descriptor for ClassificationLabel);
  v259 = v14;
  OrderedDictionary.init()();
  v274 = v11;
  OrderedDictionary.init()();
  v256 = v8;
  OrderedDictionary.init()();
  type metadata accessor for REMSuggestedContact();
  sub_1000546DC(&qword_10094A3F8, &type metadata accessor for REMSuggestedContact, &protocol conformance descriptor for ClassificationLabel);
  v267 = v5;
  OrderedDictionary.init()();
  v22 = *(a2 + 16);
  if (v22)
  {
    v272 = 0;
    v273 = 0;
    v271 = 0.0;
    v270 = 0;
    v269 = 0;
    v268 = 0;
    v23 = (a2 + 80);
    v266 = 255;
    while (1)
    {
      v32 = *(v23 - 6);
      v33 = *(v23 - 5);
      v21 = *(v23 - 4);
      v34 = *(v23 - 3);
      v36 = *(v23 - 2);
      v35 = *(v23 - 1);
      v37 = *v23;
      if (v37 <= 2)
      {
        *&v277 = *(v23 - 1);
        *&v276 = v34;
        if (!v37)
        {
          v280 = v32;
          sub_1002F10C8(v32, v33, *&v21, v34, v36, v35, 0);
          sub_10000CB48(&qword_10094A418, &qword_10094A3C0, &qword_1007AE568, &protocol conformance descriptor for OrderedDictionary<A, B>);

          dispatch thunk of Collection.startIndex.getter();
          dispatch thunk of Collection.endIndex.getter();
          if (dispatch thunk of Collection.distance(from:to:)() >= v275)
          {
LABEL_33:
            OrderedDictionary.subscript.getter();
            if (!v285 || (v87 = v282, v86 = v283, v285, v80, v81, v82, v83, v84, v85, v52, v88 = v277, v89 = v276, v87 >= *&v33) && (v87 != *&v33 || v86 >= v21))
            {
              v139 = v32;
              v140 = v33;
              v141 = v21;
              v142 = v276;
              v143 = v36;
              v144 = v277;
              v145 = 0;
LABEL_80:
              sub_1002F115C(v139, v140, *&v141, v142, v143, v144, v145, v52);

              goto LABEL_5;
            }

            v278 = v32;
            v282 = *&v33;
            v283 = v21;
            v284 = v276;
            v285 = v36;

            OrderedDictionary.subscript.setter();
            v25 = v32;
            v26 = v33;
            v27 = v21;
            v28 = v89;
            v29 = v36;
            v30 = v88;
          }

          else
          {
            OrderedDictionary.subscript.getter();
            if (v285)
            {
              v285, v73, v74, v75, v76, v77, v78, v79;
              goto LABEL_33;
            }

            v278 = v32;
            v282 = *&v33;
            v283 = v21;
            v146 = v276;
            v284 = v276;
            v285 = v36;

            OrderedDictionary.subscript.setter();
            v25 = v32;
            v26 = v33;
            v27 = v21;
            v28 = v146;
            v29 = v36;
            v30 = v277;
          }

          v31 = 0;
          goto LABEL_4;
        }

        if (v37 != 1)
        {
          v280 = v32;
          sub_1002F10C8(v32, v33, *&v21, v34, v36, v35, 2u);
          sub_10000CB48(&qword_10094A410, &qword_10094A3C8, &qword_1007AE570, &protocol conformance descriptor for OrderedDictionary<A, B>);

          dispatch thunk of Collection.startIndex.getter();
          dispatch thunk of Collection.endIndex.getter();
          if (dispatch thunk of Collection.distance(from:to:)() >= v275)
          {
LABEL_41:
            OrderedDictionary.subscript.getter();
            if (!v285 || (v104 = v282, v103 = v283, v285, v97, v98, v99, v100, v101, v102, v52, v105 = v277, v106 = v276, v104 >= *&v33) && (v104 != *&v33 || v103 >= v21))
            {
              v139 = v32;
              v140 = v33;
              v141 = v21;
              v142 = v276;
              v143 = v36;
              v144 = v277;
              v145 = 2;
              goto LABEL_80;
            }

            v278 = v32;
            v282 = *&v33;
            v283 = v21;
            v284 = v276;
            v285 = v36;

            OrderedDictionary.subscript.setter();
            v25 = v32;
            v26 = v33;
            v27 = v21;
            v28 = v106;
            v29 = v36;
            v30 = v105;
          }

          else
          {
            OrderedDictionary.subscript.getter();
            if (v285)
            {
              v285, v90, v91, v92, v93, v94, v95, v96;
              goto LABEL_41;
            }

            v278 = v32;
            v282 = *&v33;
            v283 = v21;
            v148 = v276;
            v284 = v276;
            v285 = v36;

            OrderedDictionary.subscript.setter();
            v25 = v32;
            v26 = v33;
            v27 = v21;
            v28 = v148;
            v29 = v36;
            v30 = v277;
          }

          v31 = 2;
          goto LABEL_4;
        }

        v280 = v32;
        sub_1002F10C8(v32, v33, *&v21, v34, v36, v35, 1u);
        sub_10000CB48(&qword_10094A408, &qword_10094A3D0, &qword_1007AE578, &protocol conformance descriptor for OrderedDictionary<A, B>);

        dispatch thunk of Collection.startIndex.getter();
        dispatch thunk of Collection.endIndex.getter();
        if (dispatch thunk of Collection.distance(from:to:)() >= v275)
        {
          goto LABEL_15;
        }

        OrderedDictionary.subscript.getter();
        if (v285)
        {
          v285, v39, v40, v41, v42, v43, v44, v45;
LABEL_15:
          OrderedDictionary.subscript.getter();
          if (!v285 || (v54 = v282, v53 = v283, v285, v46, v47, v48, v49, v50, v51, v52, v55 = v277, v56 = v276, v54 >= *&v33) && (v54 != *&v33 || v53 >= v21))
          {
            v139 = v32;
            v140 = v33;
            v141 = v21;
            v142 = v276;
            v143 = v36;
            v144 = v277;
            v145 = 1;
            goto LABEL_80;
          }

          v278 = v32;
          v282 = *&v33;
          v283 = v21;
          v284 = v276;
          v285 = v36;

          OrderedDictionary.subscript.setter();
          v25 = v32;
          v26 = v33;
          v27 = v21;
          v28 = v56;
          v29 = v36;
          v30 = v55;
          v31 = 1;
          goto LABEL_4;
        }

        v278 = v32;
        v282 = *&v33;
        v283 = v21;
        v147 = v276;
        v284 = v276;
        v285 = v36;

        OrderedDictionary.subscript.setter();
        v25 = v32;
        v26 = v33;
        v27 = v21;
        v28 = v147;
        v29 = v36;
        v30 = v277;
        v31 = 1;
      }

      else if (*v23 > 4u)
      {
        *&v277 = *(v23 - 1);
        if (v37 == 5)
        {
          v280 = v32;
          v281 = v33;
          sub_10000CB48(&unk_10094A428, &qword_10094A3B0, &qword_1007AE558, &protocol conformance descriptor for OrderedDictionary<A, B>);

          dispatch thunk of Collection.startIndex.getter();
          dispatch thunk of Collection.endIndex.getter();
          if (dispatch thunk of Collection.distance(from:to:)() >= v275)
          {
            goto LABEL_24;
          }

          OrderedDictionary.subscript.getter();
          if (v285)
          {
            v285, v57, v58, v59, v60, v61, v62, v63;
LABEL_24:
            OrderedDictionary.subscript.getter();
            if (v285)
            {
              v71 = v282;
              v70 = v283;
              v285, v64, v65, v66, v67, v68, v69, v24;
              v72 = v277;
              if (v71 < v21 || v71 == v21 && v70 < *&v34)
              {
                v278 = v32;
                v279 = v33;
                v282 = v21;
                v283 = *&v34;
                v284 = v36;
                v285 = v277;

                OrderedDictionary.subscript.setter();
              }

              v25 = v32;
              v26 = v33;
              v27 = v21;
              v28 = v34;
              v29 = v36;
              v30 = v72;
              v31 = 5;
            }

            else
            {
              v25 = v32;
              v26 = v33;
              v27 = v21;
              v28 = v34;
              v29 = v36;
              v30 = v277;
              v31 = 5;
            }

            goto LABEL_4;
          }

          v278 = v32;
          v279 = v33;
          v282 = v21;
          v283 = *&v34;
          v149 = v277;
          v284 = v36;
          v285 = v277;

          OrderedDictionary.subscript.setter();
          v25 = v32;
          v26 = v33;
          v27 = v21;
          v28 = v34;
          v29 = v36;
          v30 = v149;
          v31 = 5;
        }

        else
        {
          v280 = v32;
          *&v276 = v34;
          sub_1002F10C8(v32, v33, *&v21, v34, v36, v35, 6u);
          sub_10000CB48(&qword_10094A400, &qword_10094A3A8, &qword_1007AE550, &protocol conformance descriptor for OrderedDictionary<A, B>);

          dispatch thunk of Collection.startIndex.getter();
          dispatch thunk of Collection.endIndex.getter();
          if (dispatch thunk of Collection.distance(from:to:)() >= v275)
          {
            goto LABEL_57;
          }

          OrderedDictionary.subscript.getter();
          if (v285)
          {
            v285, v122, v123, v124, v125, v126, v127, v128;
LABEL_57:
            OrderedDictionary.subscript.getter();
            if (!v285 || (v136 = v282, v135 = v283, v285, v129, v130, v131, v132, v133, v134, v52, v137 = v277, v138 = v276, v136 >= *&v33) && (v136 != *&v33 || v135 >= v21))
            {
              v139 = v32;
              v140 = v33;
              v141 = v21;
              v142 = v276;
              v143 = v36;
              v144 = v277;
              v145 = 6;
              goto LABEL_80;
            }

            v278 = v32;
            v282 = *&v33;
            v283 = v21;
            v284 = v276;
            v285 = v36;

            OrderedDictionary.subscript.setter();
            v25 = v32;
            v26 = v33;
            v27 = v21;
            v28 = v138;
            v29 = v36;
            v30 = v137;
            v31 = 6;
            goto LABEL_4;
          }

          v278 = v32;
          v282 = *&v33;
          v283 = v21;
          v150 = v276;
          v284 = v276;
          v285 = v36;

          OrderedDictionary.subscript.setter();
          v25 = v32;
          v26 = v33;
          v27 = v21;
          v28 = v150;
          v29 = v36;
          v30 = v277;
          v31 = 6;
        }
      }

      else
      {
        if (v37 == 3)
        {

          sub_1004D459C(v273, v272, *&v271, v270, v269, v268, v266, v38);
          v266 = 3;
          v272 = v33;
          v273 = v32;
          v271 = v21;
          v270 = v34;
          v269 = v36;
          v268 = v35;
          goto LABEL_5;
        }

        *&v277 = *(v23 - 1);
        v280 = v32;
        sub_10000CB48(&qword_10094A420, &qword_10094A3B8, &qword_1007AE560, &protocol conformance descriptor for OrderedDictionary<A, B>);

        dispatch thunk of Collection.startIndex.getter();
        dispatch thunk of Collection.endIndex.getter();
        if (dispatch thunk of Collection.distance(from:to:)() < v275)
        {
          OrderedDictionary.subscript.getter();
          if (!v285)
          {
            goto LABEL_53;
          }

          v285, v107, v108, v109, v110, v111, v112, v113;
        }

        OrderedDictionary.subscript.getter();
        if (v285)
        {
          v121 = v282;
          v120 = v283;
          v285, v114, v115, v116, v117, v118, v119, v24;
          v30 = v277;
          if (v121 < *&v33 || v121 == *&v33 && v120 < v21)
          {
LABEL_53:
            v278 = v32;
            v282 = *&v33;
            v283 = v21;
            v284 = v34;
            v285 = v36;
            OrderedDictionary.subscript.setter();
            goto LABEL_5;
          }

          v25 = v32;
          v26 = v33;
          v27 = v21;
          v28 = v34;
          v29 = v36;
          v31 = 4;
        }

        else
        {
          v25 = v32;
          v26 = v33;
          v27 = v21;
          v28 = v34;
          v29 = v36;
          v30 = v277;
          v31 = 4;
        }
      }

LABEL_4:
      sub_1002F115C(v25, v26, *&v27, v28, v29, v30, v31, v24);
LABEL_5:
      v23 += 56;
      if (!--v22)
      {
        goto LABEL_82;
      }
    }
  }

  v272 = 0;
  v273 = 0;
  v271 = 0.0;
  v270 = 0;
  v269 = 0;
  v268 = 0;
  v266 = 255;
LABEL_82:
  v151 = &_swiftEmptyArrayStorage;
  v280 = &_swiftEmptyArrayStorage;
  sub_10000CB48(&qword_10094A408, &qword_10094A3D0, &qword_1007AE578, &protocol conformance descriptor for OrderedDictionary<A, B>);
  v152 = v262;
  v153 = dispatch thunk of Collection.count.getter();
  v154 = v267;
  if (v153)
  {
    v155 = v153;
    v278 = &_swiftEmptyArrayStorage;
    sub_100253AD4(0, v153 & ~(v153 >> 63), 0);
    v151 = v278;
    v156 = v152;
    dispatch thunk of Collection.startIndex.getter();
    if (v155 < 0)
    {
      __break(1u);
      goto LABEL_127;
    }

    do
    {
      v161 = dispatch thunk of Collection.subscript.read();
      v163 = *v162;
      *&v277 = v162[1];
      v164 = v162[2];
      v275 = v162[3];
      *&v276 = v164;
      v165 = v162[4];

      v161(&v282, 0);
      v278 = v151;
      v167 = *v151->clientIdentity;
      v166 = *&v151->clientIdentity[8];
      if (v167 >= v166 >> 1)
      {
        sub_100253AD4((v166 > 1), v167 + 1, 1);
        v151 = v278;
      }

      *v151->clientIdentity = v167 + 1;
      v168 = v151 + 56 * v167;
      v169 = v277;
      *(v168 + 4) = v163;
      *(v168 + 5) = v169;
      v170 = v275;
      *(v168 + 6) = v276;
      *(v168 + 7) = v170;
      *(v168 + 8) = v165;
      *(v168 + 9) = 0;
      v168[80] = 1;
      dispatch thunk of Collection.formIndex(after:)();
      --v155;
    }

    while (v155);
    v154 = v267;
  }

  sub_100272438(v151);
  sub_10000CB48(&qword_10094A410, &qword_10094A3C8, &qword_1007AE570, &protocol conformance descriptor for OrderedDictionary<A, B>);
  v171 = v265;
  v172 = v261;
  *&v173 = COERCE_DOUBLE(dispatch thunk of Collection.count.getter());
  v174 = &_swiftEmptyArrayStorage;
  v175 = v274;
  if (*&v173 == 0.0)
  {
    goto LABEL_94;
  }

  v21 = *&v173;
  v278 = &_swiftEmptyArrayStorage;
  sub_100253AD4(0, v173 & ~(v173 >> 63), 0);
  v174 = v278;
  v156 = v171;
  dispatch thunk of Collection.startIndex.getter();
  if ((*&v21 & 0x8000000000000000) != 0)
  {
LABEL_127:
    __break(1u);
    goto LABEL_128;
  }

  do
  {
    v176 = dispatch thunk of Collection.subscript.read();
    v178 = *v177;
    *&v277 = v177[1];
    v179 = v177[2];
    v275 = v177[3];
    *&v276 = v179;
    v180 = v177[4];

    v176(&v282, 0);
    v278 = v174;
    v181 = v172;
    v183 = *v174->clientIdentity;
    v182 = *&v174->clientIdentity[8];
    if (v183 >= v182 >> 1)
    {
      sub_100253AD4((v182 > 1), v183 + 1, 1);
      v174 = v278;
    }

    *v174->clientIdentity = v183 + 1;
    v184 = v174 + 56 * v183;
    v185 = v277;
    *(v184 + 4) = v178;
    *(v184 + 5) = v185;
    v186 = v275;
    *(v184 + 6) = v276;
    *(v184 + 7) = v186;
    *(v184 + 8) = v180;
    *(v184 + 9) = 0;
    v184[80] = 2;
    dispatch thunk of Collection.formIndex(after:)();
    --*&v21;
    v172 = v181;
  }

  while (v21 != 0.0);
  v154 = v267;
  v175 = v274;
LABEL_94:
  sub_100272438(v174);
  sub_10000CB48(&qword_10094A418, &qword_10094A3C0, &qword_1007AE568, &protocol conformance descriptor for OrderedDictionary<A, B>);
  v187 = v259;
  v188 = v260;
  *&v189 = COERCE_DOUBLE(dispatch thunk of Collection.count.getter());
  v190 = &_swiftEmptyArrayStorage;
  if (*&v189 == 0.0)
  {
    goto LABEL_100;
  }

  v21 = *&v189;
  v278 = &_swiftEmptyArrayStorage;
  sub_100253AD4(0, v189 & ~(v189 >> 63), 0);
  v190 = v278;
  v156 = v187;
  dispatch thunk of Collection.startIndex.getter();
  if ((*&v21 & 0x8000000000000000) != 0)
  {
LABEL_128:
    __break(1u);
    goto LABEL_129;
  }

  do
  {
    v191 = dispatch thunk of Collection.subscript.read();
    v193 = *v192;
    *&v277 = v192[1];
    v194 = v192[2];
    v275 = v192[3];
    *&v276 = v194;
    v195 = v192[4];

    v191(&v282, 0);
    v278 = v190;
    v196 = v188;
    v198 = *v190->clientIdentity;
    v197 = *&v190->clientIdentity[8];
    if (v198 >= v197 >> 1)
    {
      sub_100253AD4((v197 > 1), v198 + 1, 1);
      v190 = v278;
    }

    *v190->clientIdentity = v198 + 1;
    v199 = v190 + 56 * v198;
    v200 = v277;
    *(v199 + 4) = v193;
    *(v199 + 5) = v200;
    v201 = v275;
    *(v199 + 6) = v276;
    *(v199 + 7) = v201;
    *(v199 + 8) = v195;
    *(v199 + 9) = 0;
    v199[80] = 0;
    dispatch thunk of Collection.formIndex(after:)();
    --*&v21;
    v188 = v196;
  }

  while (v21 != 0.0);
  v154 = v267;
  v175 = v274;
LABEL_100:
  sub_100272438(v190);
  sub_10000CB48(&qword_10094A420, &qword_10094A3B8, &qword_1007AE560, &protocol conformance descriptor for OrderedDictionary<A, B>);
  *&v202 = COERCE_DOUBLE(dispatch thunk of Collection.count.getter());
  v203 = &_swiftEmptyArrayStorage;
  if (*&v202 == 0.0)
  {
    goto LABEL_107;
  }

  v21 = *&v202;
  v278 = &_swiftEmptyArrayStorage;
  sub_100253AD4(0, v202 & ~(v202 >> 63), 0);
  v203 = v278;
  v156 = v175;
  dispatch thunk of Collection.startIndex.getter();
  if ((*&v21 & 0x8000000000000000) != 0)
  {
LABEL_129:
    __break(1u);
LABEL_130:
    v156 = sub_1003679E0(0, *v156->clientIdentity + 1, 1, v156, v157, v158, v159, v160);
    goto LABEL_109;
  }

  v175 = v274;
  do
  {
    v204 = dispatch thunk of Collection.subscript.read();
    v206 = *v205;
    v276 = v205[1];
    v277 = v206;
    v207 = *(v205 + 4);

    v204(&v282, 0);
    v278 = v203;
    v209 = *v203->clientIdentity;
    v208 = *&v203->clientIdentity[8];
    if (v209 >= v208 >> 1)
    {
      sub_100253AD4((v208 > 1), v209 + 1, 1);
      v203 = v278;
    }

    *v203->clientIdentity = v209 + 1;
    v210 = v203 + 56 * v209;
    v211 = v276;
    *(v210 + 2) = v277;
    *(v210 + 3) = v211;
    *(v210 + 8) = v207;
    *(v210 + 9) = 0;
    v210[80] = 4;
    dispatch thunk of Collection.formIndex(after:)();
    --*&v21;
  }

  while (v21 != 0.0);
  v154 = v267;
LABEL_107:
  sub_100272438(v203);
  LOBYTE(v21) = v266;
  v212 = v264;
  if (v266 == 0xFF)
  {
    goto LABEL_112;
  }

  v156 = v280;
  sub_1002F10C8(v273, v272, *&v271, v270, v269, v268, v266);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_130;
  }

LABEL_109:
  v214 = *v156->clientIdentity;
  v213 = *&v156->clientIdentity[8];
  if (v214 >= v213 >> 1)
  {
    v156 = sub_1003679E0((v213 > 1), v214 + 1, 1, v156, v157, v158, v159, v160);
  }

  *v156->clientIdentity = v214 + 1;
  v215 = v156 + 56 * v214;
  v216 = v272;
  *(v215 + 4) = v273;
  *(v215 + 5) = v216;
  v217 = v270;
  *(v215 + 6) = v271;
  *(v215 + 7) = v217;
  v218 = v268;
  *(v215 + 8) = v269;
  *(v215 + 9) = v218;
  v215[80] = LOBYTE(v21);
  v280 = v156;
  v212 = v264;
  v175 = v274;
LABEL_112:
  v219 = sub_10000CB48(&unk_10094A428, &qword_10094A3B0, &qword_1007AE558, &protocol conformance descriptor for OrderedDictionary<A, B>);
  v220 = dispatch thunk of Collection.count.getter();
  v221 = &_swiftEmptyArrayStorage;
  if (v220)
  {
    v222 = v220;
    v278 = &_swiftEmptyArrayStorage;
    sub_100253AD4(0, v220 & ~(v220 >> 63), 0);
    v221 = v278;
    result = dispatch thunk of Collection.startIndex.getter();
    if (v222 < 0)
    {
      __break(1u);
      goto LABEL_132;
    }

    v275 = v219;
    do
    {
      v224 = dispatch thunk of Collection.subscript.read();
      v226 = v225[1];
      *&v276 = *v225;
      v227 = v225[2];
      v228 = v225[5];
      *&v277 = v225[4];

      v224(&v282, 0);
      v278 = v221;
      v230 = *v221->clientIdentity;
      v229 = *&v221->clientIdentity[8];
      if (v230 >= v229 >> 1)
      {
        sub_100253AD4((v229 > 1), v230 + 1, 1);
        v221 = v278;
      }

      *v221->clientIdentity = v230 + 1;
      v231 = v221 + 56 * v230;
      *(v231 + 4) = v276;
      *(v231 + 5) = v226;
      *(v231 + 6) = v227;
      *(v231 + 7) = v227;
      *(v231 + 8) = v277;
      *(v231 + 9) = v228;
      v231[80] = 5;
      dispatch thunk of Collection.formIndex(after:)();
      --v222;
    }

    while (v222);
    v212 = v264;
    v154 = v267;
    v175 = v274;
  }

  sub_100272438(v221);
  sub_10000CB48(&qword_10094A400, &qword_10094A3A8, &qword_1007AE550, &protocol conformance descriptor for OrderedDictionary<A, B>);
  v232 = dispatch thunk of Collection.count.getter();
  v233 = &_swiftEmptyArrayStorage;
  v234 = v265;
  if (!v232)
  {
LABEL_125:
    sub_100272438(v233);
    v249 = sub_1004D459C(v273, v272, *&v271, v270, v269, v268, v266, v248);
    (*(v255 + 8))(v154, v212, v249);
    (*(v254 + 8))(v256, v257);
    (*(v253 + 8))(v175, v258);
    (*(v252 + 8))(v259, v260);
    (*(v251 + 8))(v234, v261);
    (*(v250 + 8))(v262, v263);
    return v280;
  }

  v235 = v232;
  v278 = &_swiftEmptyArrayStorage;
  sub_100253AD4(0, v232 & ~(v232 >> 63), 0);
  v233 = v278;
  result = dispatch thunk of Collection.startIndex.getter();
  if ((v235 & 0x8000000000000000) == 0)
  {
    do
    {
      v236 = dispatch thunk of Collection.subscript.read();
      v238 = *v237;
      *&v277 = v237[1];
      v239 = v237[2];
      v275 = v237[3];
      *&v276 = v239;
      v240 = v154;
      v241 = v237[4];

      v236(&v282, 0);
      v278 = v233;
      v242 = v212;
      v244 = *v233->clientIdentity;
      v243 = *&v233->clientIdentity[8];
      if (v244 >= v243 >> 1)
      {
        sub_100253AD4((v243 > 1), v244 + 1, 1);
        v233 = v278;
      }

      *v233->clientIdentity = v244 + 1;
      v245 = v233 + 56 * v244;
      v246 = v277;
      *(v245 + 4) = v238;
      *(v245 + 5) = v246;
      v247 = v275;
      *(v245 + 6) = v276;
      *(v245 + 7) = v247;
      *(v245 + 8) = v241;
      *(v245 + 9) = 0;
      v245[80] = 6;
      dispatch thunk of Collection.formIndex(after:)();
      --v235;
      v212 = v242;
      v154 = v240;
    }

    while (v235);
    v175 = v274;
    v234 = v265;
    goto LABEL_125;
  }

LABEL_132:
  __break(1u);
  return result;
}