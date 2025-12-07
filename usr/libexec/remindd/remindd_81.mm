void sub_100737BEC(uint64_t a1, uint64_t a2, uint64_t a3, _TtC7remindd19RDXPCStorePerformer *a4, uint64_t a5)
{
  v113 = a5;
  v114 = a4;
  v112 = a3;
  v7 = type metadata accessor for Date();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7, v9);
  v11 = &v110 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12, v13);
  v15 = &v110 - v14;
  v16 = type metadata accessor for RDUserNotificationCategory();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16, v18);
  v20 = &v110 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21, v22);
  v24 = &v110 - v23;
  if (a1)
  {
    swift_errorRetain();
    if (qword_1009367B8 != -1)
    {
      swift_once();
    }

    v25 = type metadata accessor for Logger();
    sub_100006654(v25, qword_100950F70);
    (*(v17 + 16))(v24, a2, v16);
    v26 = v7;
    (*(v8 + 16))(v15, v113, v7);
    swift_errorRetain();
    v27 = v114;

    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.error.getter();
    v27, v30, v31, v32, v33, v34, v35, v36;

    if (os_log_type_enabled(v28, v29))
    {
      v37 = swift_slowAlloc();
      v113 = swift_slowAlloc();
      v115 = v113;
      *v37 = 136446978;
      v111 = v28;
      v38 = RDUserNotificationCategory.rawValue.getter();
      LODWORD(v110) = v29;
      v39 = v26;
      v41 = v40;
      (*(v17 + 8))(v24, v16);
      v42 = sub_10000668C(v38, v41, &v115);
      v41, v43, v44, v45, v46, v47, v48, v49;
      *(v37 + 4) = v42;
      *(v37 + 12) = 2082;
      *(v37 + 14) = sub_10000668C(v112, v114, &v115);
      *(v37 + 22) = 2082;
      sub_100054724(&qword_100937010, &type metadata accessor for Date, &protocol conformance descriptor for Date);
      v50 = dispatch thunk of CustomStringConvertible.description.getter();
      v52 = v51;
      (*(v8 + 8))(v15, v39);
      v53 = sub_10000668C(v50, v52, &v115);
      v52, v54, v55, v56, v57, v58, v59, v60;
      *(v37 + 24) = v53;
      *(v37 + 32) = 2080;
      swift_getErrorValue();
      v61 = Error.rem_errorDescription.getter();
      v63 = v62;
      v64 = sub_10000668C(v61, v62, &v115);
      v63, v65, v66, v67, v68, v69, v70, v71;
      *(v37 + 34) = v64;
      v72 = v111;
      _os_log_impl(&_mh_execute_header, v111, v110, "RDTodayNotificationEngine: retractTodayNotificationIfApplicable failed {category: %{public}s, retractReason: %{public}s, lastDismissedDate: %{public}s, error: %s}", v37, 0x2Au);
      swift_arrayDestroy();
    }

    else
    {

      (*(v8 + 8))(v15, v26);
      (*(v17 + 8))(v24, v16);
    }
  }

  else
  {
    if (qword_1009367B8 != -1)
    {
      swift_once();
    }

    v73 = type metadata accessor for Logger();
    sub_100006654(v73, qword_100950F70);
    (*(v17 + 16))(v20, a2, v16);
    v74 = v7;
    (*(v8 + 16))(v11, v113, v7);
    v75 = v114;

    v76 = Logger.logObject.getter();
    v77 = static os_log_type_t.default.getter();
    v75, v78, v79, v80, v81, v82, v83, v84;
    if (os_log_type_enabled(v76, v77))
    {
      v85 = swift_slowAlloc();
      v110 = v74;
      v86 = v85;
      v113 = swift_slowAlloc();
      v115 = v113;
      *v86 = 136446722;
      LODWORD(v111) = v77;
      v87 = RDUserNotificationCategory.rawValue.getter();
      v89 = v88;
      (*(v17 + 8))(v20, v16);
      v90 = sub_10000668C(v87, v89, &v115);
      v89, v91, v92, v93, v94, v95, v96, v97;
      *(v86 + 4) = v90;
      *(v86 + 12) = 2082;
      *(v86 + 14) = sub_10000668C(v112, v75, &v115);
      *(v86 + 22) = 2082;
      sub_100054724(&qword_100937010, &type metadata accessor for Date, &protocol conformance descriptor for Date);
      v98 = v110;
      v99 = dispatch thunk of CustomStringConvertible.description.getter();
      v101 = v100;
      (*(v8 + 8))(v11, v98);
      v102 = sub_10000668C(v99, v101, &v115);
      v101, v103, v104, v105, v106, v107, v108, v109;
      *(v86 + 24) = v102;
      _os_log_impl(&_mh_execute_header, v76, v111, "RDTodayNotificationEngine: retractTodayNotificationIfApplicable completed {category: %{public}s, retractReason: %{public}s, lastDismissedDate: %{public}s}", v86, 0x20u);
      swift_arrayDestroy();
    }

    else
    {

      (*(v8 + 8))(v11, v74);
      (*(v17 + 8))(v20, v16);
    }
  }
}

void sub_1007382EC()
{
  v1 = type metadata accessor for DispatchPredicate();
  v2 = *(v1 - 8);
  v4 = __chkstk_darwin(v1, v3);
  v6 = (&v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *(v0 + 16);
  *v6 = v7;
  (*(v2 + 104))(v6, enum case for DispatchPredicate.onQueue(_:), v1, v4);
  v8 = v7;
  LOBYTE(v7) = _dispatchPreconditionTest(_:)();
  (*(v2 + 8))(v6, v1);
  if ((v7 & 1) == 0)
  {
    __break(1u);
LABEL_9:
    swift_once();
    goto LABEL_5;
  }

  if (*(v0 + OBJC_IVAR____TtC7remindd25RDTodayNotificationEngine_started) == 1)
  {
    sub_1007384C4();
    return;
  }

  if (qword_1009367B8 != -1)
  {
    goto LABEL_9;
  }

LABEL_5:
  v9 = type metadata accessor for Logger();
  sub_100006654(v9, qword_100950F70);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.fault.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v10, v11, "RDTodayNotificationEngine.start() must be called before setupTimers", v12, 2u);
  }
}

void sub_1007384C4()
{
  v1 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  __chkstk_darwin(v1 - 8, v2);
  v299 = v292 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4, v5);
  v304 = v292 - v6;
  v317 = type metadata accessor for REMRemindersListDataView.DatesModel.Group();
  v321 = *(v317 - 8);
  __chkstk_darwin(v317, v7);
  v322 = v292 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9, v10);
  v316 = v292 - v11;
  v12 = type metadata accessor for REMRemindersListDataView.RemindersPrefetch();
  v310 = *(v12 - 8);
  v311 = v12;
  __chkstk_darwin(v12, v13);
  v308 = v292 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v319 = type metadata accessor for REMRemindersListDataView.ShowCompleted();
  v309 = *(v319 - 8);
  __chkstk_darwin(v319, v15);
  v307 = v292 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for REMRemindersListDataView.SortingStyle();
  v318 = *(v17 - 1);
  __chkstk_darwin(v17, v18);
  v20 = (v292 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v303 = sub_1000F5104(&unk_1009511F0, &unk_1007B7450);
  v302 = *(v303 - 8);
  __chkstk_darwin(v303, v21);
  v306 = v292 - v22;
  v301 = type metadata accessor for REMRemindersListDataView.DatesModel();
  v300 = *(v301 - 8);
  __chkstk_darwin(v301, v23);
  v305 = v292 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for Date();
  v315 = *(v25 - 8);
  __chkstk_darwin(v25, v26);
  v297 = v292 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28, v29);
  v298 = v292 - v30;
  __chkstk_darwin(v31, v32);
  v295 = v292 - v33;
  __chkstk_darwin(v34, v35);
  v296 = v292 - v36;
  __chkstk_darwin(v37, v38);
  v294 = v292 - v39;
  __chkstk_darwin(v40, v41);
  v313 = v292 - v42;
  v43 = sub_1000F5104(&qword_10093B790, &qword_100798D88);
  __chkstk_darwin(v43 - 8, v44);
  v46 = v292 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v47, v48);
  v50 = v292 - v49;
  v51 = type metadata accessor for DispatchPredicate();
  v52 = *(v51 - 8);
  v54 = __chkstk_darwin(v51, v53);
  v56 = (v292 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0));
  v314 = v0;
  v57 = *(v0 + 16);
  *v56 = v57;
  (*(v52 + 104))(v56, enum case for DispatchPredicate.onQueue(_:), v51, v54);
  v58 = v57;
  LOBYTE(v57) = _dispatchPreconditionTest(_:)();
  (*(v52 + 8))(v56, v51);
  if ((v57 & 1) == 0)
  {
    goto LABEL_57;
  }

  if (qword_1009367B8 != -1)
  {
    goto LABEL_58;
  }

  while (1)
  {
    v59 = type metadata accessor for Logger();
    v312 = sub_100006654(v59, qword_100950F70);
    v60 = Logger.logObject.getter();
    v61 = static os_log_type_t.default.getter();
    v62 = v17;
    if (os_log_type_enabled(v60, v61))
    {
      v63 = swift_slowAlloc();
      *v63 = 0;
      _os_log_impl(&_mh_execute_header, v60, v61, "RDTodayNotificationEngine: started addNextBannerTimeEvent", v63, 2u);
    }

    sub_1004FEB2C();
    v64 = [objc_opt_self() daemonUserDefaults];
    v65 = [v64 todayNotificationFireTime];

    v66 = v318;
    if (v65)
    {
      static DateComponents._unconditionallyBridgeFromObjectiveC(_:)();

      v67 = 0;
    }

    else
    {
      v67 = 1;
    }

    v68 = type metadata accessor for DateComponents();
    v69 = *(v68 - 8);
    (*(v69 + 56))(v46, v67, 1, v68);
    sub_100031B58(v46, v50, &qword_10093B790, &qword_100798D88);
    LODWORD(v68) = (*(v69 + 48))(v50, 1, v68);
    sub_1000050A4(v50, &qword_10093B790, &qword_100798D88);
    if (v68 == 1)
    {
      v70 = Logger.logObject.getter();
      v71 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v70, v71))
      {
        v72 = swift_slowAlloc();
        *v72 = 0;
        _os_log_impl(&_mh_execute_header, v70, v71, "User doesn't want today notifications at all. Not adding next time event.", v72, 2u);
      }

      return;
    }

    v320 = v25;
    Date.init()();
    v73 = [objc_allocWithZone(REMStore) initWithDaemonController:*(v314 + 120)];
    v74 = v20;
    (*&v66->coreSuggestionsHandler[10])(v20, enum case for REMRemindersListDataView.SortingStyle.default(_:), v62);
    v293 = v62;
    v75 = v309;
    v76 = v307;
    (*(v309 + 104))(v307, enum case for REMRemindersListDataView.ShowCompleted.off(_:), v319);
    v78 = v310;
    v77 = v311;
    v79 = v308;
    (*(v310 + 104))(v308, enum case for REMRemindersListDataView.RemindersPrefetch.none(_:), v311);
    v80 = v306;
    static REMRemindersListDataView.fetchScheduled(store:sortingStyle:showCompleted:countCompleted:remindersPrefetch:alwaysIncludeTodayGroup:diffingAgainst:)();
    v292[1] = 0;
    v292[0] = v73;
    (*(v78 + 8))(v79, v77);
    (*(v75 + 8))(v76, v319);
    (*v66->storeController)(v74, v293);
    v96 = v303;
    REMRemindersListDataView.Result.model.getter();
    (*(v302 + 8))(v80, v96);
    v97 = REMRemindersListDataView.DatesModel.groups.getter();
    v105 = v97;
    v25 = v320;
    v319 = *(v97 + 16);
    if (v319)
    {
      v46 = 0;
      v318 = (v321 + 16);
      v17 = (v321 + 32);
      v311 = (v321 + 8);
      v20 = &_swiftEmptyArrayStorage;
      v106 = v316;
      v50 = v317;
      while (v46 < *(v105 + 16))
      {
        v107 = (v321[80] + 32) & ~v321[80];
        v108 = *(v321 + 9);
        (*(v321 + 2))(v106, v105 + v107 + v108 * v46, v50);
        v109 = REMRemindersListDataView.DatesModel.Group.reminders.getter();
        v110 = *(v109 + 16);
        v109, v111, v112, v113, v114, v115, v116, v117;
        if (v110)
        {
          v118 = *v17;
          (*v17)(v322, v106, v50);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v323 = v20;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_100253DE0(0, *v20->clientIdentity + 1, 1);
            v20 = v323;
          }

          v121 = *v20->clientIdentity;
          v120 = *&v20->clientIdentity[8];
          if (v121 >= v120 >> 1)
          {
            sub_100253DE0((v120 > 1), v121 + 1, 1);
            v20 = v323;
          }

          *v20->clientIdentity = v121 + 1;
          v50 = v317;
          v118(v20 + v107 + v121 * v108, v322, v317);
          v25 = v320;
          v106 = v316;
        }

        else
        {
          (*v311)(v106, v50);
        }

        if (v319 == ++v46)
        {
          goto LABEL_28;
        }
      }

      __break(1u);
      goto LABEL_56;
    }

    v20 = &_swiftEmptyArrayStorage;
LABEL_28:
    v105, v98, v99, v100, v101, v102, v103, v104;
    sub_10072E1A8(v20);
    v123 = v122;

    v124 = v292[0];
    if (v123 >> 62)
    {
      sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);

      v125 = _bridgeCocoaArray<A>(_:)();
      v123, v285, v286, v287, v288, v289, v290, v291;
    }

    else
    {

      dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
      sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
      v125 = v123;
    }

    v126 = v315;
    sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
    isa = Array._bridgeToObjectiveC()().super.isa;
    v125, v128, v129, v130, v131, v132, v133, v134;
    v323 = 0;
    v135 = [v124 fetchRemindersWithObjectIDs:isa error:&v323];

    v136 = v323;
    if (!v135)
    {
      v163 = v323;
      v123, v164, v165, v166, v167, v168, v169, v170;
      _convertNSErrorToError(_:)();

      swift_willThrow();
      (*(v300 + 8))(v305, v301);
      swift_errorRetain();
      v81 = Logger.logObject.getter();
      v82 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v81, v82))
      {
        v83 = swift_slowAlloc();
        v84 = swift_slowAlloc();
        v323 = v84;
        *v83 = 136315138;
        swift_getErrorValue();
        v85 = Error.localizedDescription.getter();
        v87 = v86;
        v88 = sub_10000668C(v85, v86, &v323);
        v87, v89, v90, v91, v92, v93, v94, v95;
        *(v83 + 4) = v88;
        _os_log_impl(&_mh_execute_header, v81, v82, "Error fetching scheduled reminders when getting nextReminderDueDateMidnight {error: %s}", v83, 0xCu);
        sub_10000607C(v84);
      }

      else
      {
      }

LABEL_54:
      (*(v126 + 8))(v313, v25);
      return;
    }

    sub_1000060C8(0, &unk_100942FB0, REMReminder_ptr);
    sub_10000CDE4(&qword_1009391F0, &qword_1009391E0, REMObjectID_ptr, &protocol conformance descriptor for NSObject);
    v137 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
    v138 = v136;

    __chkstk_darwin(v139, v140);
    v141 = v313;
    v292[-2] = v137;
    v292[-1] = v141;
    v142 = sub_1003E08D8(sub_10073E3D8, &v292[-4], v123);
    v137, v143, v144, v145, v146, v147, v148, v149;
    v123, v150, v151, v152, v153, v154, v155, v156;
    v50 = *v142->clientIdentity;
    if (!v50)
    {
      break;
    }

    v157 = *(v126 + 16);
    v46 = v126 + 16;
    v158 = v294;
    v321 = v142 + ((*(v46 + 64) + 32) & ~*(v46 + 64));
    v322 = v157;
    v25 = v46;
    (v157)(v294);
    v17 = v295;
    if (v50 == 1)
    {
LABEL_33:
      v159 = v25 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
      v160 = v315;
      v161 = v304;
      v25 = v320;
      (*(v315 + 32))(v304, v158, v320);
      (*(v160 + 56))(v161, 0, 1, v25);
      v162 = v322;
      goto LABEL_36;
    }

    v20 = (v315 + 32);
    v277 = 1;
    while (v277 < *v142->clientIdentity)
    {
      v46 = v142;
      v278 = v158;
      v279 = v315;
      v280 = v320;
      (v322)(v17, &v321[*(v315 + 72) * v277], v320);
      v281 = static Date.< infix(_:_:)();
      v282 = *(v279 + 8);
      if (v281)
      {
        v282(v278, v280);
        (v20->super.isa)(v278, v17, v280);
      }

      else
      {
        v282(v17, v280);
      }

      v158 = v278;
      ++v277;
      v142 = v46;
      if (v50 == v277)
      {
        goto LABEL_33;
      }
    }

LABEL_56:
    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    swift_once();
  }

  (*(v126 + 56))(v304, 1, 1, v25);
  v162 = *(v126 + 16);
  v159 = (v126 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
LABEL_36:
  v171 = v296;
  v162(v296, v313, v25);

  v172 = Logger.logObject.getter();
  v173 = static os_log_type_t.debug.getter();
  v142, v174, v175, v176, v177, v178, v179, v180;
  v181 = os_log_type_enabled(v172, v173);
  v319 = v159;
  v322 = v162;
  if (v181)
  {
    v182 = swift_slowAlloc();
    v318 = swift_slowAlloc();
    v323 = v318;
    *v182 = 136315394;
    v183 = Array.description.getter();
    v185 = v184;
    v186 = sub_10000668C(v183, v184, &v323);
    v185, v187, v188, v189, v190, v191, v192, v193;
    *(v182 + 4) = v186;
    *(v182 + 12) = 2080;
    sub_1000F5104(&unk_1009431B0, &qword_10079D490);
    v194 = v315;
    v195 = (*(v315 + 80) + 32) & ~*(v315 + 80);
    v196 = swift_allocObject();
    *(v196 + 16) = xmmword_100791300;
    v162((v196 + v195), v171, v320);
    v197 = Array.description.getter();
    v199 = v198;
    v196, v198, v200, v201, v202, v203, v204, v205;
    v321 = *(v194 + 8);
    (v321)(v171, v320);
    v206 = v197;
    v25 = v320;
    v207 = sub_10000668C(v206, v199, &v323);
    v199, v208, v209, v210, v211, v212, v213, v214;
    *(v182 + 14) = v207;
    _os_log_impl(&_mh_execute_header, v172, v173, "Deciding when to wake up for the next TodayNotification {todayTimeCandidates: %s, now: %s}", v182, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    v194 = v315;
    v321 = *(v315 + 8);
    (v321)(v171, v25);
  }

  v215 = v297;
  v216 = v299;
  sub_100010364(v304, v299, &unk_100938850, qword_100795AE0);
  if ((*(v194 + 48))(v216, 1, v25) != 1)
  {
    v142, v217, v218, v219, v220, v221, v222, v223;
    v260 = v298;
    (*(v194 + 32))(v298, v216, v25);
    (v322)(v215, v260, v25);
    v261 = Logger.logObject.getter();
    v262 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v261, v262))
    {
      v263 = swift_slowAlloc();
      v264 = swift_slowAlloc();
      v323 = v264;
      *v263 = 136446210;
      v265 = Date.description.getter();
      v266 = v215;
      v268 = v267;
      (v321)(v266, v25);
      v269 = sub_10000668C(v265, v268, &v323);
      v268, v270, v271, v272, v273, v274, v275, v276;
      *(v263 + 4) = v269;
      _os_log_impl(&_mh_execute_header, v261, v262, "Scheduling next todayNotification fire date {nextFireDate: %{public}s}", v263, 0xCu);
      sub_10000607C(v264);
    }

    else
    {

      (v321)(v215, v25);
    }

    v126 = v194;
    v283 = v292[0];
    v284 = v298;
    sub_1003B80B8(v298);

    (v321)(v284, v25);
    sub_1000050A4(v304, &unk_100938850, qword_100795AE0);
    (*(v300 + 8))(v305, v301);
    goto LABEL_54;
  }

  sub_1000050A4(v216, &unk_100938850, qword_100795AE0);

  v224 = Logger.logObject.getter();
  v225 = static os_log_type_t.default.getter();
  v142, v226, v227, v228, v229, v230, v231, v232;
  if (os_log_type_enabled(v224, v225))
  {
    v240 = swift_slowAlloc();
    v241 = swift_slowAlloc();
    v323 = v241;
    *v240 = 136315138;
    v242 = Array.description.getter();
    v244 = v243;
    v142, v243, v245, v246, v247, v248, v249, v250;
    v251 = sub_10000668C(v242, v244, &v323);
    v252 = v244;
    v25 = v320;
    v252, v253, v254, v255, v256, v257, v258, v259;
    *(v240 + 4) = v251;
    _os_log_impl(&_mh_execute_header, v224, v225, "No time in todayTimeCandidates is in the future. Not adding next time event. {todayTimeCandidates: %s}", v240, 0xCu);
    sub_10000607C(v241);
  }

  else
  {
    v142, v233, v234, v235, v236, v237, v238, v239;
  }

  sub_1000050A4(v304, &unk_100938850, qword_100795AE0);
  (*(v300 + 8))(v305, v301);
  (v321)(v313, v25);
}

uint64_t sub_100739C30@<X0>(void **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  __chkstk_darwin(v8 - 8, v9);
  v11 = &v22 - v10;
  v12 = sub_100353844(*a1, a2);
  if (v12)
  {
    v13 = v12;
    v14 = [v12 displayDate];
    if (v14)
    {
      v15 = v14;
      if ([v14 isAllDay] & 1) != 0 && ((v16 = objc_msgSend(v13, "assignmentContext"), v17 = objc_msgSend(v16, "currentAssignment"), v16, !v17) || (v17, (sub_1005815C8(0))))
      {
        sub_1004F1548(v13, a3, v11);

        v18 = type metadata accessor for Date();
        v19 = *(v18 - 8);
        if ((*(v19 + 48))(v11, 1, v18) != 1)
        {
          (*(v19 + 32))(a4, v11, v18);
          return (*(v19 + 56))(a4, 0, 1, v18);
        }

        sub_1000050A4(v11, &unk_100938850, qword_100795AE0);
      }

      else
      {
      }
    }

    else
    {
    }
  }

  v20 = type metadata accessor for Date();
  return (*(*(v20 - 8) + 56))(a4, 1, 1, v20);
}

void sub_100739E7C(void (*a1)(void), uint64_t a2)
{
  v189 = a2;
  v193 = a1;
  v177 = type metadata accessor for RDUserNotificationCategory();
  v181 = *(v177 - 8);
  __chkstk_darwin(v177, v3);
  v180 = &v175 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v179 = type metadata accessor for RDUserNotificationType();
  v178 = *(v179 - 8);
  __chkstk_darwin(v179, v5);
  v176 = &v175 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v183 = type metadata accessor for REMRemindersListDataView.ReminderLite();
  v184 = *(v183 - 8);
  __chkstk_darwin(v183, v7);
  v182 = &v175 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v206 = type metadata accessor for Date();
  v203 = *(v206 - 1);
  __chkstk_darwin(v206, v9);
  v202 = &v175 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v188 = sub_1000F5104(&unk_1009511E0, &qword_1007B7448);
  v187 = *(v188 - 8);
  __chkstk_darwin(v188, v11);
  v201 = &v175 - v12;
  v186 = type metadata accessor for REMRemindersListDataView.TodayGroupModel();
  v185 = *(v186 - 8);
  __chkstk_darwin(v186, v13);
  v190 = &v175 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  Subtasks = type metadata accessor for REMRemindersListDataView.FetchSubtasks();
  v198 = *(Subtasks - 1);
  __chkstk_darwin(Subtasks, v15);
  v199 = &v175 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v197 = type metadata accessor for REMRemindersListDataView.RemindersPrefetch();
  v195 = *(v197 - 8);
  __chkstk_darwin(v197, v17);
  v196 = &v175 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v194 = type metadata accessor for REMRemindersListDataView.ShowCompleted();
  v19 = *(v194 - 8);
  __chkstk_darwin(v194, v20);
  v22 = &v175 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for REMRemindersListDataView.SortingStyle();
  v24 = *(v23 - 8);
  __chkstk_darwin(v23, v25);
  v27 = &v175 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  Configuration = type metadata accessor for REMRemindersListDataView.FetchConfiguration();
  v191 = *(Configuration - 8);
  __chkstk_darwin(Configuration, v28);
  v205 = &v175 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = type metadata accessor for DispatchPredicate();
  v31 = *(v30 - 8);
  v33 = __chkstk_darwin(v30, v32);
  v35 = (&v175 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0));
  v204 = v2;
  v36 = *(v2 + 16);
  *v35 = v36;
  (*(v31 + 104))(v35, enum case for DispatchPredicate.onQueue(_:), v30, v33);
  v37 = v36;
  LOBYTE(v36) = _dispatchPreconditionTest(_:)();
  (*(v31 + 8))(v35, v30);
  if ((v36 & 1) == 0)
  {
    goto LABEL_54;
  }

  if (qword_1009367B8 != -1)
  {
LABEL_55:
    swift_once();
  }

  v38 = type metadata accessor for Logger();
  v39 = sub_100006654(v38, qword_100950F70);
  v40 = Logger.logObject.getter();
  v41 = static os_log_type_t.default.getter();
  v42 = os_log_type_enabled(v40, v41);
  v43 = v205;
  if (v42)
  {
    v44 = swift_slowAlloc();
    *v44 = 0;
    _os_log_impl(&_mh_execute_header, v40, v41, "RDTodayNotificationEngine: started updateApplicationBadge", v44, 2u);
  }

  v45 = [objc_allocWithZone(REMStore) initWithDaemonController:*(v204 + 120)];
  (*(v24 + 104))(v27, enum case for REMRemindersListDataView.SortingStyle.default(_:), v23);
  (*(v19 + 104))(v22, enum case for REMRemindersListDataView.ShowCompleted.off(_:), v194);
  (*(v195 + 104))(v196, enum case for REMRemindersListDataView.RemindersPrefetch.none(_:), v197);
  (*(v198 + 104))(v199, enum case for REMRemindersListDataView.FetchSubtasks.off(_:), Subtasks);
  REMRemindersListDataView.FetchConfiguration.init(sortingStyle:showCompleted:countCompleted:remindersPrefetch:fetchSubtasks:)();
  v46 = v202;
  Date.init()();
  v47 = v201;
  static REMRemindersListDataView.fetchToday_Groups(store:grouped:currentLocation:today:configuration:diffingAgainst:)();
  v199 = v39;
  Subtasks = v45;
  (*v203->storeController)(v46, v206);
  v63 = v188;
  REMRemindersListDataView.Result.model.getter();
  (*(v187 + 8))(v47, v63);
  v64 = REMRemindersListDataView.TodayGroupModel.todayReminders.getter();
  v72 = v64;
  v73 = *(v64 + 16);
  if (v73)
  {
    v209 = &_swiftEmptyArrayStorage;
    specialized ContiguousArray.reserveCapacity(_:)();
    v74 = v182;
    v75 = v183;
    v206 = *(v184 + 16);
    v76 = *(v184 + 80);
    v203 = v72;
    v77 = v72 + ((v76 + 32) & ~v76);
    v78 = *(v184 + 72);
    v79 = (v184 + 8);
    do
    {
      v206(v74, v77, v75);
      REMRemindersListDataView.ReminderLite.objectID.getter();
      (*v79)(v74, v75);
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v77 += v78;
      --v73;
    }

    while (v73);
    v203, v80, v81, v82, v83, v84, v85, v86;
    v87 = v209;
    v43 = v205;
  }

  else
  {
    v64, v65, v66, v67, v68, v69, v70, v71;
    v87 = &_swiftEmptyArrayStorage;
  }

  v88 = Subtasks;
  if (v87 >> 62)
  {
    v23 = sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);

    v96 = _bridgeCocoaArray<A>(_:)();
    v87, v168, v169, v170, v171, v172, v173, v174;
  }

  else
  {

    dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
    v23 = sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
    v96 = v87;
  }

  v87, v89, v90, v91, v92, v93, v94, v95;
  sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;
  v96, v98, v99, v100, v101, v102, v103, v104;
  v209 = 0;
  v105 = [v88 fetchRemindersWithObjectIDs:isa error:&v209];

  v106 = v209;
  if (v105)
  {
    sub_1000060C8(0, &unk_100942FB0, REMReminder_ptr);
    sub_10000CDE4(&qword_1009391F0, &qword_1009391E0, REMObjectID_ptr, &protocol conformance descriptor for NSObject);
    v107 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
    v108 = v106;

    v109 = [objc_opt_self() daemonUserDefaults];
    v110 = [v109 shouldIncludeRemindersDueTodayInBadgeCount];

    LODWORD(v206) = v110;
    if (!v110)
    {
      v209 = &_swiftEmptyArrayStorage;
      if ((v107 & 0xC000000000000001) != 0)
      {
        v121 = __CocoaDictionary.makeIterator()();
        v24 = 0;
        v122 = 0;
        v22 = 0;
        v107 = v121 | 0x8000000000000000;
      }

      else
      {
        v123 = -1 << *(v107 + 32);
        v24 = v107 + 64;
        v122 = ~v123;
        v124 = -v123;
        if (v124 < 64)
        {
          v125 = ~(-1 << v124);
        }

        else
        {
          v125 = -1;
        }

        v22 = (v125 & *(v107 + 64));
      }

      v27 = 0;
      v203 = v122;
      v126 = (v122 + 64) >> 6;
      while (1)
      {
        if (v107 < 0)
        {
          if (!__CocoaDictionary.Iterator.next()() || (v131 = v130, swift_unknownObjectRelease(), v207 = v131, swift_dynamicCast(), v129 = v208, v19 = v27, v23 = v22, !v208))
          {
LABEL_45:
            sub_10001B860(v107);
            if ((v209 & 0x8000000000000000) != 0 || (v209 & 0x4000000000000000) != 0)
            {
              v119 = _CocoaArrayWrapper.endIndex.getter();
            }

            else
            {
              v119 = *(v209 + 16);
            }

            v118 = v177;
            v43 = v205;
            goto LABEL_49;
          }
        }

        else
        {
          v127 = v27;
          v128 = v22;
          v19 = v27;
          if (!v22)
          {
            while (1)
            {
              v19 = (v127 + 1);
              if (__OFADD__(v127, 1))
              {
                break;
              }

              if (v19 >= v126)
              {
                goto LABEL_45;
              }

              v128 = *(v24 + 8 * v19);
              ++v127;
              if (v128)
              {
                goto LABEL_39;
              }
            }

            __break(1u);
LABEL_54:
            __break(1u);
            goto LABEL_55;
          }

LABEL_39:
          v23 = (v128 - 1) & v128;
          v129 = *(*(v107 + 56) + ((v19 << 9) | (8 * __clz(__rbit64(v128)))));
          if (!v129)
          {
            goto LABEL_45;
          }
        }

        if ([v129 isOverdue])
        {
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
        }

        else
        {
        }

        v27 = v19;
        v22 = v23;
      }
    }

    v118 = v177;
    if ((v107 & 0xC000000000000001) != 0)
    {
      v119 = __CocoaDictionary.count.getter();
    }

    else
    {
      v119 = *(v107 + 16);
    }

    v107, v111, v112, v113, v114, v115, v116, v117;
LABEL_49:
    v132 = Logger.logObject.getter();
    v133 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v132, v133))
    {
      v134 = swift_slowAlloc();
      v135 = swift_slowAlloc();
      v209 = v135;
      *v134 = 136315394;
      v136 = Bool.yesno.getter();
      v138 = v137;
      v139 = sub_10000668C(v136, v137, &v209);
      v138, v140, v141, v142, v143, v144, v145, v146;
      *(v134 + 4) = v139;
      *(v134 + 12) = 2048;
      *(v134 + 14) = v119;
      _os_log_impl(&_mh_execute_header, v132, v133, "Updating application badge. {includeToday: %s, count: %ld}", v134, 0x16u);
      sub_10000607C(v135);
    }

    v147 = v181;
    v148 = v180;
    v149 = v179;
    v150 = v178;
    v151 = v176;
    (*(v178 + 104))(v176, enum case for RDUserNotificationType.todayNotificationBadge(_:), v179);
    v152 = sub_1002D833C(0, 0, 0);
    (*(v150 + 8))(v151, v149);
    v153 = [objc_allocWithZone(NSNumber) initWithInteger:v119];
    [v152 setBadge:v153];

    v154 = v204;
    (*(v147 + 104))(v148, enum case for RDUserNotificationCategory.todayNotificationBadge(_:), v118);
    v155 = RDUserNotificationCategory.rawValue.getter();
    v157 = v156;
    (*(v147 + 8))(v148, v118);
    v158 = swift_allocObject();
    v159 = v193;
    *(v158 + 16) = v154;
    *(v158 + 24) = v159;
    v160 = v189;
    *(v158 + 32) = v189;
    *(v158 + 40) = v206;
    *(v158 + 48) = v119;

    sub_10014D92C(v159, v160);
    sub_10052554C(v155, v157, v152, sub_10073E3C4, v158);

    v157, v161, v162, v163, v164, v165, v166, v167;
    (*(v185 + 8))(v190, v186);
    (*(v191 + 8))(v43, Configuration);
  }

  else
  {
    v120 = v209;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    (*(v185 + 8))(v190, v186);
    (*(v191 + 8))(v43, Configuration);
    swift_errorRetain();
    v48 = Logger.logObject.getter();
    v49 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      v209 = v51;
      *v50 = 136315138;
      swift_getErrorValue();
      v52 = Error.localizedDescription.getter();
      v54 = v53;
      v55 = sub_10000668C(v52, v53, &v209);
      v54, v56, v57, v58, v59, v60, v61, v62;
      *(v50 + 4) = v55;
      _os_log_impl(&_mh_execute_header, v48, v49, "Failed to fetch reminder count. Failed to update today badge {error: %s}", v50, 0xCu);
      sub_10000607C(v51);
    }

    else
    {
    }

    if (v193)
    {
      v193(0);
    }
  }
}

void sub_10073B0EC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
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

void sub_10073B140(uint64_t a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4, char a5, uint64_t a6)
{
  v10 = type metadata accessor for DispatchPredicate();
  v11 = *(v10 - 8);
  v13 = __chkstk_darwin(v10, v12);
  v15 = (&v50 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = *(a2 + 16);
  *v15 = v16;
  (*(v11 + 104))(v15, enum case for DispatchPredicate.onQueue(_:), v10, v13);
  v17 = v16;
  LOBYTE(v16) = _dispatchPreconditionTest(_:)();
  (*(v11 + 8))(v15, v10);
  if ((v16 & 1) == 0)
  {
    __break(1u);
    goto LABEL_17;
  }

  if (a1)
  {
    swift_errorRetain();
    if (qword_1009367B8 == -1)
    {
LABEL_4:
      v18 = type metadata accessor for Logger();
      sub_100006654(v18, qword_100950F70);
      swift_errorRetain();
      v19 = Logger.logObject.getter();
      v20 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        v22 = swift_slowAlloc();
        v51 = v22;
        *v21 = 136315138;
        swift_getErrorValue();
        v23 = Error.localizedDescription.getter();
        v25 = v24;
        v26 = sub_10000668C(v23, v24, &v51);
        v25, v27, v28, v29, v30, v31, v32, v33;
        *(v21 + 4) = v26;
        _os_log_impl(&_mh_execute_header, v19, v20, "Unable to post today badge notification. {error: %s}", v21, 0xCu);
        sub_10000607C(v22);
      }

      if (a3)
      {
        a3(0);
      }

      return;
    }

LABEL_17:
    swift_once();
    goto LABEL_4;
  }

  if (qword_1009367B8 != -1)
  {
    swift_once();
  }

  v34 = type metadata accessor for Logger();
  sub_100006654(v34, qword_100950F70);
  v35 = Logger.logObject.getter();
  v36 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v51 = v38;
    *v37 = 136315394;
    v39 = Bool.yesno.getter();
    v41 = v40;
    v42 = sub_10000668C(v39, v40, &v51);
    v41, v43, v44, v45, v46, v47, v48, v49;
    *(v37 + 4) = v42;
    *(v37 + 12) = 2048;
    *(v37 + 14) = a6;
    _os_log_impl(&_mh_execute_header, v35, v36, "Posted today badge notification. {includeToday: %s, count: %ld}", v37, 0x16u);
    sub_10000607C(v38);
  }

  if (a3)
  {
    a3(1);
  }
}

uint64_t sub_10073B4FC(uint64_t a1)
{
  v2 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  __chkstk_darwin(v2 - 8, v3);
  v5 = &v11 - v4;
  Date.init()();
  v6 = type metadata accessor for Date();
  (*(*(v6 - 8) + 56))(v5, 0, 1, v6);
  v7 = OBJC_IVAR____TtC7remindd25RDTodayNotificationEngine_cachedLastDismissedDate;
  swift_beginAccess();
  sub_100117A3C(v5, a1 + v7, &unk_100938850, qword_100795AE0);
  swift_endAccess();
  sub_100010364(a1 + v7, v5, &unk_100938850, qword_100795AE0);
  swift_beginAccess();
  v8 = *(a1 + 104);
  v9 = *(a1 + 112);
  sub_10000C9DC(a1 + 80, v8);
  (*(v9 + 16))(v5, v8, v9);
  return swift_endAccess();
}

void sub_10073B690(uint64_t a1, void (*a2)(void), uint64_t a3, void (*a4)(void))
{
  v7 = type metadata accessor for RDUserNotificationAction();
  v8 = *(v7 - 8);
  v10 = __chkstk_darwin(v7, v9);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v12, v4, v7, v10);
  v13 = (*(v8 + 88))(v12, v7);
  if (v13 == enum case for RDUserNotificationAction.defaultDismiss(_:))
  {
    if (a2)
    {
      a2();
    }

    return;
  }

  if (v13 == enum case for RDUserNotificationAction.debugDismiss(_:))
  {
    return;
  }

  if (v13 != enum case for RDUserNotificationAction.markAsCompleted(_:))
  {
    if (v13 == enum case for RDUserNotificationAction.snoozeForOneHour(_:) || v13 == enum case for RDUserNotificationAction.snoozeForOneDay(_:) || v13 == enum case for RDUserNotificationAction.snoozeToNextThirds(_:) || v13 == enum case for RDUserNotificationAction.snoozeToNextWeekend(_:))
    {
      if (qword_1009367B8 != -1)
      {
        swift_once();
      }

      v17 = type metadata accessor for Logger();
      sub_100006654(v17, qword_100950F70);
      v18 = Logger.logObject.getter();
      v19 = static os_log_type_t.error.getter();
      if (!os_log_type_enabled(v18, v19))
      {
        goto LABEL_44;
      }

      v20 = swift_slowAlloc();
      *v20 = 0;
      v21 = "RDTodayNotificationEngine: Unexpected .snooze* actions for today notification";
    }

    else if (v13 == enum case for RDUserNotificationAction.addToReminders(_:))
    {
      if (qword_1009367B8 != -1)
      {
        swift_once();
      }

      v22 = type metadata accessor for Logger();
      sub_100006654(v22, qword_100950F70);
      v18 = Logger.logObject.getter();
      v19 = static os_log_type_t.error.getter();
      if (!os_log_type_enabled(v18, v19))
      {
        goto LABEL_44;
      }

      v20 = swift_slowAlloc();
      *v20 = 0;
      v21 = "RDTodayNotificationEngine: Unexpected .addToReminders action for today notification";
    }

    else if (v13 == enum case for RDUserNotificationAction.viewAssignmentInList(_:))
    {
      if (qword_1009367B8 != -1)
      {
        swift_once();
      }

      v23 = type metadata accessor for Logger();
      sub_100006654(v23, qword_100950F70);
      v18 = Logger.logObject.getter();
      v19 = static os_log_type_t.error.getter();
      if (!os_log_type_enabled(v18, v19))
      {
        goto LABEL_44;
      }

      v20 = swift_slowAlloc();
      *v20 = 0;
      v21 = "RDTodayNotificationEngine: Unexpected .viewAssignmentInList action for today notification";
    }

    else if (v13 == enum case for RDUserNotificationAction.declineAssignment(_:))
    {
      if (qword_1009367B8 != -1)
      {
        swift_once();
      }

      v24 = type metadata accessor for Logger();
      sub_100006654(v24, qword_100950F70);
      v18 = Logger.logObject.getter();
      v19 = static os_log_type_t.error.getter();
      if (!os_log_type_enabled(v18, v19))
      {
        goto LABEL_44;
      }

      v20 = swift_slowAlloc();
      *v20 = 0;
      v21 = "RDTodayNotificationEngine: Unexpected .declineAssignment action for today notification";
    }

    else
    {
      if (v13 != enum case for RDUserNotificationAction.viewRemindersInList(_:))
      {
        _diagnoseUnexpectedEnumCase<A>(type:)();
        __break(1u);
        return;
      }

      if (qword_1009367B8 != -1)
      {
        swift_once();
      }

      v25 = type metadata accessor for Logger();
      sub_100006654(v25, qword_100950F70);
      v18 = Logger.logObject.getter();
      v19 = static os_log_type_t.error.getter();
      if (!os_log_type_enabled(v18, v19))
      {
        goto LABEL_44;
      }

      v20 = swift_slowAlloc();
      *v20 = 0;
      v21 = "RDTodayNotificationEngine: Unexpected .viewRemindersInList action for today notification";
    }

    _os_log_impl(&_mh_execute_header, v18, v19, v21, v20, 2u);

LABEL_44:

    return;
  }

  if (a4)
  {
    a4();
  }
}

void sub_10073BB84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v64 = a2;
  v4 = type metadata accessor for RDUserNotificationAction();
  v65 = *(v4 - 8);
  v5 = *(v65 + 64);
  __chkstk_darwin(v4, v6);
  __chkstk_darwin(v7, v8);
  v10 = &v55 - v9;
  v11 = type metadata accessor for REMNotificationIdentifier();
  v63 = *(v11 - 8);
  __chkstk_darwin(v11, v12);
  v62 = &v55 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14, v15);
  v16 = [objc_allocWithZone(REMStore) initWithDaemonController:*(a3 + 120)];
  v17 = REMStore.fetchReminder(notificationIdentifier:includingDueDateDeltaAlerts:)();
  v66 = v16;
  v61 = v5;
  v63 = &v55 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = a3;
  v18 = v64;
  v19 = v17;
  v20 = [v17 objectID];
  v60 = [objc_allocWithZone(REMSaveRequest) initWithStore:v16];
  v62 = v19;
  v59 = [v60 updateReminder:v19];
  [v59 snoozeForever];
  if (qword_1009367B8 != -1)
  {
    swift_once();
  }

  v21 = type metadata accessor for Logger();
  sub_100006654(v21, qword_100950F70);
  v22 = v65;
  v23 = *(v65 + 16);
  v24 = v10;
  v23(v10, v18, v4);
  v25 = v20;
  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v57 = v23;
    v29 = v24;
    v30 = v28;
    v31 = swift_slowAlloc();
    v56 = swift_slowAlloc();
    aBlock[0] = v56;
    *v30 = 138543618;
    *(v30 + 4) = v25;
    *v31 = v25;
    *(v30 + 12) = 2082;
    v32 = v25;
    v33 = RDUserNotificationAction.rawValue.getter();
    v35 = v34;
    v36 = v29;
    v23 = v57;
    (*(v65 + 8))(v36, v4);
    v37 = sub_10000668C(v33, v35, aBlock);
    v38 = v35;
    v22 = v65;
    v38, v39, v40, v41, v42, v43, v44, v45;
    *(v30 + 14) = v37;
    _os_log_impl(&_mh_execute_header, v26, v27, "RDTodayNotificationEngine: Updating reminder for notification action {reminderID: %{public}@, action: %{public}s}", v30, 0x16u);
    sub_1000050A4(v31, &unk_100938E70, &unk_100797230);

    sub_10000607C(v56);
  }

  else
  {

    (*(v22 + 8))(v24, v4);
  }

  v46 = v63;
  v47 = *(v58 + 16);
  v23(v63, v64, v4);
  v48 = (*(v22 + 80) + 24) & ~*(v22 + 80);
  v49 = swift_allocObject();
  v50 = v46;
  v51 = v49;
  *(v49 + 16) = v25;
  (*(v22 + 32))(v49 + v48, v50, v4);
  aBlock[4] = sub_10073EA00;
  aBlock[5] = v51;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100042968;
  aBlock[3] = &unk_1008FD7A8;
  v52 = _Block_copy(aBlock);
  v53 = v25;

  v54 = v60;
  [v60 saveWithQueue:v47 completion:v52];

  _Block_release(v52);
}

void sub_10073C304(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v75 = a2;
  v4 = type metadata accessor for RDUserNotificationAction();
  v76 = *(v4 - 8);
  v77 = v4;
  v5 = *(v76 + 64);
  __chkstk_darwin(v4, v6);
  __chkstk_darwin(v7, v8);
  v10 = &v66 - v9;
  v74 = type metadata accessor for REMAnalyticsEvent();
  v71 = *(v74 - 8);
  __chkstk_darwin(v74, v11);
  v13 = &v66 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for REMNotificationIdentifier();
  v15 = *(v14 - 8);
  v72 = v14;
  v73 = v15;
  __chkstk_darwin(v14, v16);
  v70 = &v66 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18, v19);
  v20 = [objc_allocWithZone(REMStore) initWithDaemonController:*(a3 + 120)];
  v21 = REMStore.fetchReminder(notificationIdentifier:includingDueDateDeltaAlerts:)();
  v67 = v10;
  v70 = v5;
  v72 = &v66 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = a3;
  v22 = v21;
  v23 = [v21 objectID];
  v68 = [objc_allocWithZone(REMSaveRequest) initWithStore:v20];
  v69 = v22;
  v24 = [v68 updateReminder:v22];
  type metadata accessor for REMAnalyticsManager();
  static REMAnalyticsManager.shared.getter();
  v25 = sub_1000F5104(&qword_1009511D8, &qword_1007B7440);
  v26 = &v13[v25[12]];
  v27 = v25[16];
  v28 = &v13[v25[20]];
  v29 = enum case for REMUserOperation.markReminderCompletedNotification(_:);
  v30 = type metadata accessor for REMUserOperation();
  (*(*(v30 - 8) + 104))(v13, v29, v30);
  v31 = type metadata accessor for Date();
  *v26 = 0;
  *(v26 + 1) = 0;
  (*(*(v31 - 8) + 56))(&v13[v27], 1, 1, v31);
  *v28 = 0;
  *(v28 + 1) = 0;
  v32 = v71;
  v33 = v74;
  (v71)[13](v13, enum case for REMAnalyticsEvent.userOperation(_:), v74);
  REMAnalyticsManager.post(event:)();

  (v32[1])(v13, v33);
  v71 = v24;
  [v24 setCompleted:1];
  if (qword_1009367B8 != -1)
  {
    swift_once();
  }

  v34 = type metadata accessor for Logger();
  sub_100006654(v34, qword_100950F70);
  v35 = v76;
  v36 = v67;
  v37 = v77;
  v66 = *(v76 + 16);
  v66(v67, v75, v77);
  v38 = v23;
  v39 = Logger.logObject.getter();
  v40 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v39, v40))
  {
    v41 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    v74 = v20;
    v43 = v42;
    v44 = swift_slowAlloc();
    aBlock[0] = v44;
    *v41 = 138543618;
    *(v41 + 4) = v38;
    *v43 = v38;
    *(v41 + 12) = 2082;
    v45 = v38;
    v46 = RDUserNotificationAction.rawValue.getter();
    v48 = v47;
    (*(v76 + 8))(v36, v77);
    v49 = sub_10000668C(v46, v48, aBlock);
    v50 = v48;
    v35 = v76;
    v50, v51, v52, v53, v54, v55, v56, v57;
    *(v41 + 14) = v49;
    _os_log_impl(&_mh_execute_header, v39, v40, "RDTodayNotificationEngine: Updating reminder for notification action {reminderID: %{public}@, action: %{public}s}", v41, 0x16u);
    sub_1000050A4(v43, &unk_100938E70, &unk_100797230);
    v20 = v74;

    sub_10000607C(v44);
    v37 = v77;
  }

  else
  {

    (*(v35 + 8))(v36, v37);
  }

  v58 = v72;
  v59 = *(v73 + 16);
  v66(v72, v75, v37);
  v60 = v35;
  v61 = (*(v35 + 80) + 24) & ~*(v35 + 80);
  v62 = swift_allocObject();
  *(v62 + 16) = v38;
  (*(v60 + 32))(v62 + v61, v58, v37);
  aBlock[4] = sub_10073E2D4;
  aBlock[5] = v62;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100042968;
  aBlock[3] = &unk_1008FD758;
  v63 = _Block_copy(aBlock);
  v64 = v38;

  v65 = v68;
  [v68 saveWithQueue:v59 completion:v63];

  _Block_release(v63);
}

uint64_t sub_10073CC18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  v8 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  __chkstk_darwin(v8 - 8, v9);
  v11 = &v17 - v10;
  Date.init()();
  v12 = type metadata accessor for Date();
  (*(*(v12 - 8) + 56))(v11, 0, 1, v12);
  v13 = OBJC_IVAR____TtC7remindd25RDTodayNotificationEngine_cachedLastDismissedDate;
  swift_beginAccess();
  sub_100117A3C(v11, a1 + v13, &unk_100938850, qword_100795AE0);
  swift_endAccess();
  sub_100010364(a1 + v13, v11, &unk_100938850, qword_100795AE0);
  swift_beginAccess();
  v14 = *(a1 + 104);
  v15 = *(a1 + 112);
  sub_10000C9DC(a1 + 80, v14);
  (*(v15 + 16))(v11, v14, v15);
  swift_endAccess();
  return a4(a2, a3, a1);
}

void sub_10073CDB4(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = type metadata accessor for RDUserNotificationAction();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6, v8);
  v10 = &v63 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11, v12);
  v14 = &v63 - v13;
  if (a1)
  {
    swift_errorRetain();
    if (qword_1009367B8 != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    sub_100006654(v15, qword_100950F70);
    (*(v7 + 16))(v14, a3, v6);
    swift_errorRetain();
    v16 = a2;
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v65 = swift_slowAlloc();
      v66 = v65;
      *v19 = 136446722;
      swift_getErrorValue();
      v64 = v17;
      v21 = Error.rem_errorDescription.getter();
      v23 = v22;
      v24 = sub_10000668C(v21, v22, &v66);
      v23, v25, v26, v27, v28, v29, v30, v31;
      *(v19 + 4) = v24;
      *(v19 + 12) = 2114;
      *(v19 + 14) = v16;
      *v20 = v16;
      *(v19 + 22) = 2082;
      v32 = v16;
      v33 = RDUserNotificationAction.rawValue.getter();
      v35 = v34;
      (*(v7 + 8))(v14, v6);
      v36 = sub_10000668C(v33, v35, &v66);
      v35, v37, v38, v39, v40, v41, v42, v43;
      *(v19 + 24) = v36;
      v44 = v64;
      _os_log_impl(&_mh_execute_header, v64, v18, "RDTodayNotificationEngine: Save error. Failed to save updates from notification response {error: %{public}s, reminderID: %{public}@, action: %{public}s}", v19, 0x20u);
      sub_1000050A4(v20, &unk_100938E70, &unk_100797230);

      swift_arrayDestroy();
    }

    else
    {

      (*(v7 + 8))(v14, v6);
    }
  }

  else
  {
    if (qword_1009367B8 != -1)
    {
      swift_once();
    }

    v45 = type metadata accessor for Logger();
    sub_100006654(v45, qword_100950F70);
    (*(v7 + 16))(v10, a3, v6);
    v46 = a2;
    v47 = Logger.logObject.getter();
    v48 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      v65 = swift_slowAlloc();
      v66 = v65;
      *v49 = 136446466;
      v51 = RDUserNotificationAction.rawValue.getter();
      v53 = v52;
      (*(v7 + 8))(v10, v6);
      v54 = sub_10000668C(v51, v53, &v66);
      v53, v55, v56, v57, v58, v59, v60, v61;
      *(v49 + 4) = v54;
      *(v49 + 12) = 2114;
      *(v49 + 14) = v46;
      *v50 = v46;
      v62 = v46;
      _os_log_impl(&_mh_execute_header, v47, v48, "RDTodayNotificationEngine: Updated reminder successfully. {action: %{public}s, reminderID: %{public}@}", v49, 0x16u);
      sub_1000050A4(v50, &unk_100938E70, &unk_100797230);

      sub_10000607C(v65);
    }

    else
    {

      (*(v7 + 8))(v10, v6);
    }
  }
}

uint64_t sub_10073D2CC(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t a5)
{
  v193 = a5;
  v194 = a4;
  v190 = a3;
  v192 = a1;
  v184 = type metadata accessor for REMNotificationIdentifier();
  v191 = *(v184 - 8);
  v6 = *(v191 + 64);
  __chkstk_darwin(v184, v7);
  v183 = &v169 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8, v9);
  v181 = &v169 - v10;
  __chkstk_darwin(v11, v12);
  v188 = &v169 - v13;
  v14 = sub_1000F5104(&qword_1009511D0, &qword_1007A0A90);
  __chkstk_darwin(v14 - 8, v15);
  v182 = &v169 - v16;
  v189 = type metadata accessor for RDUserNotificationAction();
  v186 = *(v189 - 8);
  __chkstk_darwin(v189, v17);
  v185 = &v169 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19, v20);
  v180 = &v169 - v21;
  v23 = v22;
  __chkstk_darwin(v24, v25);
  v179 = &v169 - v26;
  v27 = type metadata accessor for RDUserNotificationType();
  v28 = *(v27 - 8);
  __chkstk_darwin(v27, v29);
  v31 = &v169 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v32, v33);
  v35 = &v169 - v34;
  v38 = __chkstk_darwin(v36, v37);
  v40 = (&v169 - v39);
  v41 = *(v28 + 16);
  (v41)(&v169 - v39, a2, v27, v38);
  v42 = (*(v28 + 88))(v40, v27);
  if (v42 == enum case for RDUserNotificationType.reminderAlarm(_:))
  {
    goto LABEL_2;
  }

  if (v42 == enum case for RDUserNotificationType.todayNotificationForSingleReminder(_:))
  {
    (*(v28 + 96))(v40, v27);
    v61 = v191;
    v62 = v188;
    v63 = v184;
    v176 = *(v191 + 32);
    v177 = v191 + 32;
    v176(v188, v40, v184);
    if (qword_1009367B8 != -1)
    {
      swift_once();
    }

    v64 = type metadata accessor for Logger();
    sub_100006654(v64, qword_100950F70);
    v65 = v181;
    v178 = *(v61 + 16);
    v179 = (v61 + 16);
    v178(v181, v62, v63);
    v66 = v186;
    v67 = *(v186 + 16);
    v68 = v180;
    v175 = v186 + 16;
    v174 = v67;
    v67(v180, v190, v189);
    v69 = v192;
    v70 = Logger.logObject.getter();
    v71 = static os_log_type_t.default.getter();

    v171 = v71;
    v72 = os_log_type_enabled(v70, v71);
    v73 = v183;
    if (v72)
    {
      v74 = swift_slowAlloc();
      v170 = swift_slowAlloc();
      v195[0] = v170;
      *v74 = 136446722;
      v178(v73, v65, v63);
      v75 = String.init<A>(describing:)();
      v169 = v70;
      v77 = v76;
      v78 = *(v191 + 8);
      v173 = (v191 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v192 = v78;
      (v78)(v65, v63);
      v79 = sub_10000668C(v75, v77, v195);
      v77, v80, v81, v82, v83, v84, v85, v86;
      *(v74 + 4) = v79;
      v87 = v66;
      *(v74 + 12) = 2082;
      v88 = [v69 actionIdentifier];
      v89 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v91 = v90;

      v92 = sub_10000668C(v89, v91, v195);
      v63 = v184;
      v91, v93, v94, v95, v96, v97, v98, v99;
      *(v74 + 14) = v92;
      *(v74 + 22) = 2082;
      v100 = v190;
      v101 = RDUserNotificationAction.rawValue.getter();
      v103 = v102;
      v104 = v68;
      v105 = v189;
      (*(v87 + 8))(v104, v189);
      v106 = sub_10000668C(v101, v103, v195);
      v103, v107, v108, v109, v110, v111, v112, v113;
      *(v74 + 24) = v106;
      v73 = v183;
      v114 = v169;
      _os_log_impl(&_mh_execute_header, v169, v171, "TodayNotification: Processing notification response {type: .todayNotificationForSingleReminder, notificationIdentifier: %{public}s, actionIdentifier: %{public}s, action: %{public}s}", v74, 0x20u);
      swift_arrayDestroy();

      v62 = v188;

      v115 = v191;
    }

    else
    {

      v144 = v68;
      v105 = v189;
      (*(v66 + 8))(v144, v189);
      v145 = v191;
      v146 = *(v191 + 8);
      v173 = (v191 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v192 = v146;
      (v146)(v65, v63);
      v115 = v145;
      v100 = v190;
    }

    v178(v73, v62, v63);
    v174(v185, v100, v105);
    v147 = *(v115 + 80);
    v148 = v63;
    v149 = v186;
    v150 = *(v186 + 80);
    v151 = (v147 + 24) & ~v147;
    v152 = (v6 + v150 + v151) & ~v150;
    v153 = v62;
    v183 = v151;
    v184 = v147 | v150;
    v172 = v23;
    v154 = swift_allocObject();
    *(v154 + 16) = v187;
    v155 = v100;
    v176((v154 + v151), v73, v148);
    v156 = *(v149 + 32);
    v157 = v185;
    v158 = v189;
    v156(v154 + v152, v185, v189);
    v178(v73, v153, v148);
    v174(v157, v155, v158);
    v159 = swift_allocObject();
    *(v159 + 16) = v187;
    v176(&v183[v159], v73, v148);
    v156(v159 + v152, v157, v158);
    v160 = v182;
    (*(v191 + 56))(v182, 1, 1, v148);
    swift_retain_n();
    sub_10073B690(v160, sub_10073E1D0, v154, sub_10073E1E8);

    sub_1000050A4(v160, &qword_1009511D0, &qword_1007A0A90);
    (v192)(v188, v148);
    goto LABEL_24;
  }

  if (v42 == enum case for RDUserNotificationType.caldavSharedList(_:) || v42 == enum case for RDUserNotificationType.assignmentNotification(_:) || v42 == enum case for RDUserNotificationType.sharedListAddedReminderNotification(_:) || v42 == enum case for RDUserNotificationType.dueDateDeltaAlarm(_:))
  {
LABEL_2:
    (*(v28 + 8))(v40, v27);
    goto LABEL_3;
  }

  if (v42 != enum case for RDUserNotificationType.todayNotification(_:))
  {
    if (v42 != enum case for RDUserNotificationType.todayNotificationBadge(_:) && v42 != enum case for RDUserNotificationType.beforeFirstUnlock(_:))
    {
      _diagnoseUnexpectedEnumCase<A>(type:)();
      __break(1u);
LABEL_33:

      (*(v41 + 8))(v31, v35);
      goto LABEL_34;
    }

LABEL_3:
    if (qword_1009367B8 != -1)
    {
      swift_once();
    }

    v43 = type metadata accessor for Logger();
    sub_100006654(v43, qword_100950F70);
    (v41)(v35, a2, v27);
    v44 = v192;
    v45 = Logger.logObject.getter();
    v46 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      v191 = swift_slowAlloc();
      v192 = swift_slowAlloc();
      v195[0] = v192;
      *v47 = 136315394;
      (v41)(v31, v35, v27);
      v48 = String.init<A>(describing:)();
      v50 = v49;
      (*(v28 + 8))(v35, v27);
      v51 = sub_10000668C(v48, v50, v195);
      v50, v52, v53, v54, v55, v56, v57, v58;
      *(v47 + 4) = v51;
      *(v47 + 12) = 2112;
      *(v47 + 14) = v44;
      v59 = v191;
      *v191 = v44;
      v60 = v44;
      _os_log_impl(&_mh_execute_header, v45, v46, "RDTodayNotificationEngine didn't expect to receive actions of this type. {type: %s, response: %@}", v47, 0x16u);
      sub_1000050A4(v59, &unk_100938E70, &unk_100797230);

      sub_10000607C(v192);
    }

    else
    {

      (*(v28 + 8))(v35, v27);
    }

LABEL_24:
    v161 = v194;
    goto LABEL_25;
  }

  if (qword_1009367B8 != -1)
  {
    swift_once();
  }

  v116 = type metadata accessor for Logger();
  sub_100006654(v116, qword_100950F70);
  v41 = v186;
  v31 = v179;
  v35 = v189;
  (*(v186 + 16))(v179, v190, v189);
  v117 = v192;
  v40 = Logger.logObject.getter();
  v118 = static os_log_type_t.default.getter();

  if (!os_log_type_enabled(v40, v118))
  {
    goto LABEL_33;
  }

  v119 = swift_slowAlloc();
  v192 = swift_slowAlloc();
  v195[0] = v192;
  *v119 = 136446466;
  v120 = [v117 actionIdentifier];
  v121 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v122 = v35;
  v124 = v123;

  v125 = sub_10000668C(v121, v124, v195);
  v124, v126, v127, v128, v129, v130, v131, v132;
  *(v119 + 4) = v125;
  *(v119 + 12) = 2082;
  v133 = RDUserNotificationAction.rawValue.getter();
  v135 = v134;
  (*(v41 + 8))(v31, v122);
  v136 = sub_10000668C(v133, v135, v195);
  v135, v137, v138, v139, v140, v141, v142, v143;
  *(v119 + 14) = v136;
  _os_log_impl(&_mh_execute_header, v40, v118, "TodayNotification: Processing notification response {type: .todayNotification, actionIdentifier: %{public}s, action: %{public}s}", v119, 0x16u);
  swift_arrayDestroy();

LABEL_34:
  v167 = v187;
  v161 = v194;
  v168 = v182;
  (*(v191 + 56))(v182, 1, 1, v184);

  sub_10073B690(v168, sub_10073E2CC, v167, sub_10073B670);

  sub_1000050A4(v168, &qword_1009511D0, &qword_1007A0A90);
LABEL_25:
  if (qword_1009367B8 != -1)
  {
    swift_once();
  }

  v162 = type metadata accessor for Logger();
  sub_100006654(v162, qword_100950F70);
  v163 = Logger.logObject.getter();
  v164 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v163, v164))
  {
    v165 = swift_slowAlloc();
    *v165 = 0;
    _os_log_impl(&_mh_execute_header, v163, v164, "RDTodayNotificationEngine: Completing action handler by calling completionHandler now.", v165, 2u);
  }

  return v161();
}

uint64_t sub_10073E200(uint64_t (*a1)(uint64_t, uint64_t, uint64_t))
{
  v3 = *(type metadata accessor for REMNotificationIdentifier() - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(type metadata accessor for RDUserNotificationAction() - 8);
  return sub_10073CC18(*(v1 + 16), v1 + v4, v1 + ((v4 + v5 + *(v6 + 80)) & ~*(v6 + 80)), a1);
}

uint64_t sub_10073E300()
{
  v1 = type metadata accessor for RDUserNotificationAction();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

void sub_10073E3F4(uint64_t a1)
{
  v3 = *(type metadata accessor for RDUserNotificationCategory() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(type metadata accessor for Date() - 8);
  v7 = *(v1 + v5);
  v8 = *(v1 + v5 + 8);
  v9 = v1 + ((v5 + *(v6 + 80) + 16) & ~*(v6 + 80));

  sub_100737BEC(a1, v1 + v4, v7, v8, v9);
}

void sub_10073E4F8(uint64_t a1)
{
  v3 = *(type metadata accessor for RDUserNotificationCategory() - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 23) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v1 + 16);
  v8 = v1 + v5;
  v9 = *v8;
  v10 = *(v8 + 8);
  v11 = *(v1 + v6);
  v12 = *(v1 + v6 + 8);

  sub_100735F18(a1, v7, v1 + v4, v9, v10, v11, v12);
}

uint64_t sub_10073E5D8(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  v5 = *(a2(0) - 8);
  v6 = *(v3 + 16);
  v7 = v3 + ((*(v5 + 80) + 24) & ~*(v5 + 80));

  return a3(a1, v6, v7);
}

void sub_10073E6BC(uint64_t (*a1)(void), const char *a2)
{
  if (qword_1009367B8 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100006654(v4, qword_100950F70);
  oslog = Logger.logObject.getter();
  v5 = a1();
  if (os_log_type_enabled(oslog, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, oslog, v5, a2, v6, 2u);
  }
}

uint64_t sub_10073E834()
{
  if (*(v0 + 16))
  {
  }

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10073E938(uint64_t a1)
{

  if (*(v1 + 24))
  {
  }

  return _swift_deallocObject(v1, a1, 7);
}

void sub_10073E98C()
{
  v1 = *(v0 + 24);
  sub_1007382EC();
  if (v1)
  {
    v1();
  }
}

uint64_t sub_10073EA0C()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_100951210);
  v1 = sub_100006654(v0, qword_100951210);
  if (qword_100936428 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_100974FC0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

id sub_10073EAD4()
{
  result = [objc_opt_self() housekeepingingActivityScheduler];
  qword_100951228 = result;
  return result;
}

uint64_t sub_10073EB10()
{
  v1 = v0;
  v91 = type metadata accessor for Date();
  v2 = *(v91 - 8);
  __chkstk_darwin(v91, v3);
  v5 = v82 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6, v7);
  v9 = v82 - v8;
  v10 = type metadata accessor for OSSignpostID();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10, v12);
  v14 = v82 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  static os_signpost_type_t.begin.getter();
  if (qword_1009367C8 != -1)
  {
    swift_once();
  }

  v88 = v9;
  v15 = qword_100951228;
  static OSSignpostID.exclusive.getter();
  v87 = v15;
  os_signpost(_:dso:log:name:signpostID:)();
  v86 = *(v11 + 8);
  v89 = v11 + 8;
  v86(v14, v10);
  v16 = *(v1 + 24);
  v90 = *(v1 + 16);
  v17 = qword_1009367C0;

  if (v17 != -1)
  {
    swift_once();
  }

  v18 = type metadata accessor for Logger();
  v19 = sub_100006654(v18, qword_100951210);

  v82[1] = v19;
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.default.getter();
  v16, v22, v23, v24, v25, v26, v27, v28;
  v29 = os_log_type_enabled(v20, v21);
  v84 = v5;
  if (v29)
  {
    v30 = swift_slowAlloc();
    v83 = v10;
    v31 = v30;
    v32 = swift_slowAlloc();
    v92 = v32;
    *v31 = 136446210;
    v33 = v90;
    *(v31 + 4) = sub_10000668C(v90, v16, &v92);
    _os_log_impl(&_mh_execute_header, v20, v21, "[%{public}s] start execute()", v31, 0xCu);
    sub_10000607C(v32);

    v10 = v83;
  }

  else
  {

    v33 = v90;
  }

  v34 = v88;
  v35 = Date.init()();
  v93[0] = 0xD000000000000028;
  v93[1] = 0x80000001007B7600;
  v93[3] = 0;
  v94[0] = 0;
  v93[2] = 0;
  *(v94 + 6) = 0;
  __chkstk_darwin(v35, v36);
  v82[-4] = v1;
  v82[-3] = v33;
  v82[-2] = v16;
  v37 = v85;
  sub_100014A64(v93, sub_1007415B4, &v82[-6]);
  if (v37)
  {
    (*(v2 + 8))(v34, v91);
    v16, v38, v39, v40, v41, v42, v43, v44;
  }

  else
  {
    (*(v2 + 16))(v84, v34, v91);

    v45 = v2;
    v46 = Logger.logObject.getter();
    v47 = static os_log_type_t.default.getter();
    v16, v48, v49, v50, v51, v52, v53, v54;
    if (os_log_type_enabled(v46, v47))
    {
      v62 = swift_slowAlloc();
      v83 = v10;
      v63 = v62;
      v85 = swift_slowAlloc();
      v92 = v85;
      *v63 = 136446466;
      v64 = sub_10000668C(v90, v16, &v92);
      LODWORD(v90) = v47;
      v65 = v64;
      v16, v66, v67, v68, v69, v70, v71, v72;
      *(v63 + 4) = v65;
      *(v63 + 12) = 2048;
      v73 = v84;
      Date.rem_elapsedInMilliseconds.getter();
      v75 = v74;
      v76 = *(v45 + 8);
      v77 = v73;
      v78 = v91;
      v76(v77, v91);
      *(v63 + 14) = v75;
      _os_log_impl(&_mh_execute_header, v46, v90, "[%{public}s] end execute(), elapsedSeconds: %f ms", v63, 0x16u);
      sub_10000607C(v85);

      v10 = v83;

      v76(v34, v78);
    }

    else
    {
      v16, v55, v56, v57, v58, v59, v60, v61;

      v79 = *(v2 + 8);
      v80 = v91;
      v79(v84, v91);
      v79(v34, v80);
    }
  }

  static os_signpost_type_t.end.getter();
  static OSSignpostID.exclusive.getter();
  os_signpost(_:dso:log:name:signpostID:)();
  return (v86)(v14, v10);
}

void sub_10073F0F0(void *a1, _TtC7remindd19RDXPCStorePerformer **a2, uint64_t a3, _TtC7remindd19RDXPCStorePerformer *a4)
{
  v9 = objc_autoreleasePoolPush();
  sub_10073F208(a2, a1, a3, a4, &v12);
  if (v4)
  {
    objc_autoreleasePoolPop(v9);
  }

  else
  {
    objc_autoreleasePoolPop(v9);
    if ([a1 hasChanges])
    {
      v12 = 0;
      if ([a1 save:&v12])
      {
        v10 = v12;
      }

      else
      {
        v11 = v12;
        _convertNSErrorToError(_:)();

        swift_willThrow();
      }
    }
  }
}

void sub_10073F208(_TtC7remindd19RDXPCStorePerformer **a1, uint64_t a2, uint64_t a3, _TtC7remindd19RDXPCStorePerformer *a4, void *a5)
{
  v141 = a5;
  v6 = v5;
  v156 = a3;
  v147 = a1;
  v9 = sub_1000F5104(&unk_100939D90, "8\n\r");
  __chkstk_darwin(v9 - 8, v10);
  v12 = (&v140 - v11);
  v13 = type metadata accessor for UUID();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13, v15);
  v17 = &v140 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1007419AC();
  v27 = v18;
  if (v18 >> 62)
  {
    goto LABEL_77;
  }

  v28 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v28)
  {
LABEL_78:
    v27, v19, v20, v21, v22, v23, v24, v25;
    return;
  }

LABEL_3:
  v29 = 0;
  v30 = v27 & 0xC000000000000001;
  v146 = v27 & 0xFFFFFFFFFFFFFF8;
  v145 = (v27 + 32);
  v152 = 0x80000001007EA120;
  v158 = (v14 + 7);
  v154 = (v14 + 6);
  v151 = (v14 + 4);
  v150 = (v14 + 1);
  *&v26 = 136446466;
  v155 = v26;
  *&v26 = 136446210;
  v140 = v26;
  v165 = a4;
  v157 = a2;
  v143 = v28;
  v142 = v27 & 0xC000000000000001;
  v159 = v12;
  v160 = v13;
  v144 = v27;
  v153 = v17;
  while (1)
  {
    if (v30)
    {
      v38 = v29;
      v39 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v29 >= *(v146 + 16))
      {
        goto LABEL_76;
      }

      v38 = v29;
      v39 = *&v145[8 * v29];
    }

    v167 = v39;
    v40 = __OFADD__(v38, 1);
    v14 = (v38 + 1);
    if (v40)
    {
      goto LABEL_75;
    }

    v148 = v14;
    v41 = [v167 remObjectID];
    if (!v41)
    {
      v27, v42, v43, v44, v45, v46, v47, v48;
      if (qword_1009367C0 == -1)
      {
        goto LABEL_69;
      }

      goto LABEL_80;
    }

    v49 = v41;
    v14 = v147;
    v50 = sub_10073FE70(a2, v41);
    if (v6)
    {

      v144, v133, v134, v135, v136, v137, v138, v139;
LABEL_67:
      *v141 = v6;
      return;
    }

    v58 = v50;
    v173 = &_swiftEmptyArrayStorage;
    v59 = v50 >> 62 ? _CocoaArrayWrapper.endIndex.getter() : *((v50 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v164 = 0;
    v149 = v49;
    if (v59)
    {
      break;
    }

    v166 = &_swiftEmptyArrayStorage;
LABEL_47:
    v58, v51, v52, v53, v54, v55, v56, v57;
    v12 = v166;
    if (v166 >> 62)
    {
      v112 = _CocoaArrayWrapper.endIndex.getter();
      v12 = v166;
      v13 = v112;
    }

    else
    {
      v13 = *((v166 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v6 = v164;
    a2 = v157;
    if (v13)
    {
      v27 = 0;
      v162 = (v12 & 0xFFFFFFFFFFFFFF8);
      v163 = v12 & 0xC000000000000001;
      v161 = v13;
      while (1)
      {
        if (v163)
        {
          v87 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v27 >= v162[2].isa)
          {
            goto LABEL_74;
          }

          v87 = v12[v27 + 4];
        }

        v17 = v87;
        v12 = (v27 + 1);
        if (__OFADD__(v27, 1))
        {
          break;
        }

        sub_1000F5104(&unk_100939E10, &qword_1007970D0);
        v88 = v17;
        v89 = sub_100015620(v17, 0, 64, v167, a2);
        if (v6)
        {
          v144, v90, v91, v92, v93, v94, v95, v96;
          v166, v113, v114, v115, v116, v117, v118, v119;

          goto LABEL_67;
        }

        v97 = v89;

        if (qword_1009367C0 != -1)
        {
          swift_once();
        }

        v98 = type metadata accessor for Logger();
        sub_100006654(v98, qword_100951210);

        v99 = v88;
        v14 = Logger.logObject.getter();
        v100 = static os_log_type_t.default.getter();

        a4, v101, v102, v103, v104, v105, v106, v107;
        if (os_log_type_enabled(v14, v100))
        {
          v108 = swift_slowAlloc();
          v164 = 0;
          v109 = v108;
          v110 = swift_slowAlloc();
          v111 = swift_slowAlloc();
          *&v171 = v111;
          *v109 = v155;
          *(v109 + 4) = sub_10000668C(v156, v165, &v171);
          *(v109 + 12) = 2114;
          *(v109 + 14) = v99;
          *v110 = v17;
          v17 = v99;
          _os_log_impl(&_mh_execute_header, v14, v100, "[%{public}s] inserted grocery operation queue item for determine whether to suggest to convert this list into a grocery list {listObjectID: %{public}@", v109, 0x16u);
          sub_1000050A4(v110, &unk_100938E70, &unk_100797230);
          a4 = v165;

          sub_10000607C(v111);
          a2 = v157;

          v6 = v164;
        }

        else
        {
        }

        ++v27;
        v13 = v161;
        v86 = v12 == v161;
        v12 = v166;
        if (v86)
        {
          goto LABEL_4;
        }
      }

      __break(1u);
LABEL_74:
      __break(1u);
LABEL_75:
      __break(1u);
LABEL_76:
      __break(1u);
LABEL_77:
      v28 = _CocoaArrayWrapper.endIndex.getter();
      if (!v28)
      {
        goto LABEL_78;
      }

      goto LABEL_3;
    }

LABEL_4:

    v12, v31, v32, v33, v34, v35, v36, v37;
    v29 = v148;
    v27 = v144;
    v30 = v142;
    if (v148 == v143)
    {
      goto LABEL_78;
    }
  }

  if (v59 >= 1)
  {
    v60 = 0;
    v17 = (v58 & 0xC000000000000001);
    v166 = &_swiftEmptyArrayStorage;
    v61 = v152;
    v163 = v59;
    while (1)
    {
      if (v17)
      {
        v62 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v62 = *&v58->clientIdentity[8 * v60 + 16];
      }

      v63 = v62;
      *&v169 = 0xD000000000000024;
      *(&v169 + 1) = v61;
      v14 = [v62 __swift_objectForKeyedSubscript:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];
      swift_unknownObjectRelease();
      if (v14)
      {
        _bridgeAnyObjectToAny(_:)();
        swift_unknownObjectRelease();
      }

      else
      {
        v169 = 0u;
        v170 = 0u;
      }

      v171 = v169;
      v172 = v170;
      if (*(&v170 + 1))
      {
        if (swift_dynamicCast())
        {
          v64 = v168;
          *&v169 = 0x696669746E656469;
          *(&v169 + 1) = 0xEA00000000007265;
          v65 = [v63 __swift_objectForKeyedSubscript:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];
          swift_unknownObjectRelease();
          if (v65)
          {
            _bridgeAnyObjectToAny(_:)();
            swift_unknownObjectRelease();
          }

          else
          {
            v169 = 0u;
            v170 = 0u;
          }

          v171 = v169;
          v172 = v170;
          if (*(&v170 + 1))
          {
            v14 = v159;
            v66 = v160;
            v67 = swift_dynamicCast();
            (*v158)(v14, v67 ^ 1u, 1, v66);
            if ((*v154)(v14, 1, v66) == 1)
            {

              goto LABEL_34;
            }

            v68 = v153;
            (*v151)(v153, v14, v66);
            if (v64)
            {
              v61 = v152;
              if (qword_1009367C0 != -1)
              {
                swift_once();
              }

              v69 = type metadata accessor for Logger();
              sub_100006654(v69, qword_100951210);

              v14 = Logger.logObject.getter();
              v70 = static os_log_type_t.default.getter();
              a4, v71, v72, v73, v74, v75, v76, v77;
              v78 = os_log_type_enabled(v14, v70);
              v59 = v163;
              if (v78)
              {
                v79 = swift_slowAlloc();
                v162 = v14;
                v14 = v79;
                v80 = swift_slowAlloc();
                *&v171 = v80;
                *v14 = v140;
                *(v14 + 4) = sub_10000668C(v156, v165, &v171);
                v81 = v70;
                v82 = v162;
                _os_log_impl(&_mh_execute_header, v162, v81, "[%{public}s] found existing an list that is already suggested to be converted into a grocery list.", v14, 0xCu);
                sub_10000607C(v80);
                a4 = v165;
              }

              else
              {
              }

              (*v150)(v153, v160);
              goto LABEL_17;
            }

            sub_1000060C8(0, &unk_100938880, off_1008D41A8);
            ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
            isa = UUID._bridgeToObjectiveC()().super.isa;
            v85 = [ObjCClassFromMetadata objectIDWithUUID:isa];

            v14 = &v173;
            specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
            if (*((v173 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v173 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            }

            specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

            (*v150)(v68, v160);
            v166 = v173;
            a4 = v165;
            v61 = v152;
          }

          else
          {

            sub_1000050A4(&v171, &qword_100939ED0, &qword_100791B10);
            v14 = v159;
            (*v158)(v159, 1, 1, v160);
LABEL_34:
            sub_1000050A4(v14, &unk_100939D90, "8\n\r");
          }

          v59 = v163;
          goto LABEL_17;
        }
      }

      else
      {

        sub_1000050A4(&v171, &qword_100939ED0, &qword_100791B10);
      }

LABEL_17:
      if (v59 == ++v60)
      {
        goto LABEL_47;
      }
    }
  }

  __break(1u);
LABEL_80:
  swift_once();
LABEL_69:
  v120 = type metadata accessor for Logger();
  sub_100006654(v120, qword_100951210);

  v121 = Logger.logObject.getter();
  v122 = static os_log_type_t.default.getter();
  a4, v123, v124, v125, v126, v127, v128, v129;
  if (os_log_type_enabled(v121, v122))
  {
    v130 = a4;
    v131 = swift_slowAlloc();
    v132 = swift_slowAlloc();
    *&v171 = v132;
    *v131 = v140;
    *(v131 + 4) = sub_10000668C(v156, v130, &v171);
    _os_log_impl(&_mh_execute_header, v121, v122, "[%{public}s] found no accounts that support grocery lists. Not suggesting grocery list conversion.", v131, 0xCu);
    sub_10000607C(v132);
  }
}

void *sub_10073FE70(uint64_t a1, void *a2)
{
  v3 = v2;
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5, v7);
  v9 = &v73[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = _s10PredicatesOMa_1(0);
  __chkstk_darwin(v10, v10);
  v12 = &v73[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  *v12 = a2;
  swift_storeEnumTagMultiPayload();
  sub_1000060C8(0, &unk_100938880, off_1008D41A8);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v14 = a2;
  v15 = [ObjCClassFromMetadata cdEntityName];
  if (!v15)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v17 = v16;
    v15 = String._bridgeToObjectiveC()();
    v17, v18, v19, v20, v21, v22, v23, v24;
  }

  v25 = [objc_allocWithZone(NSFetchRequest) initWithEntityName:v15];

  [v25 setResultType:2];
  v26 = sub_10001F6F4();
  [v25 setPredicate:v26];

  v27 = [v14 uuid];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v28 = UUID.uuidString.getter();
  v30 = v29;
  (*(v6 + 8))(v9, v5);
  v31 = *(v3 + 32);
  v32 = String._bridgeToObjectiveC()();
  v33 = [v31 storeForAccountIdentifier:v32];

  if (v33)
  {
    v30, v34, v35, v36, v37, v38, v39, v40;
    sub_1000F5104(&unk_100939D60, &unk_1007959E0);
    v41 = swift_allocObject();
    *(v41 + 16) = xmmword_1007953F0;
    *(v41 + 32) = v33;
    sub_1000060C8(0, &qword_10093F430, NSPersistentStore_ptr);
    v42 = v33;
    isa = Array._bridgeToObjectiveC()().super.isa;
    v41, v44, v45, v46, v47, v48, v49, v50;
    [v25 setAffectedStores:isa];

    sub_1000F5104(&unk_100938E80, &unk_1007959D0);
    v51 = swift_allocObject();
    *(v51 + 16) = xmmword_100791340;
    *(v51 + 32) = 0x696669746E656469;
    *(v51 + 40) = 0xEA00000000007265;
    *(v51 + 88) = &type metadata for String;
    *(v51 + 56) = &type metadata for String;
    *(v51 + 64) = 0xD000000000000024;
    *(v51 + 72) = 0x80000001007EA120;
    v52 = Array._bridgeToObjectiveC()().super.isa;
    v51, v53, v54, v55, v56, v57, v58, v59;
    [v25 setPropertiesToFetch:v52];

    sub_1000060C8(0, &qword_100939F50, NSDictionary_ptr);
    v60 = NSManagedObjectContext.fetch<A>(_:)();
    sub_1001555B4(v12);
  }

  else
  {
    v60 = objc_opt_self();
    sub_1000F5104(&unk_100936FD0, &unk_100795D40);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100791300;
    *(inited + 32) = v28;
    v62 = inited + 32;
    *(inited + 40) = v30;
    v63 = sub_1001A5660(inited);
    swift_setDeallocating();
    sub_100034610(v62);
    v64 = Set._bridgeToObjectiveC()().super.isa;
    v63, v65, v66, v67, v68, v69, v70, v71;
    [v60 accountStoreMissingError:v64];

    swift_willThrow();
    sub_1001555B4(v12);
  }

  return v60;
}

uint64_t sub_10074032C(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  *(v8 + 24), a2, a3, a4, a5, a6, a7, a8;

  sub_10000607C((v8 + 40));

  return swift_deallocClassInstance();
}

uint64_t sub_100740398()
{
  v1 = type metadata accessor for Locale();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1, v3);
  __chkstk_darwin(v4, v5);
  v7 = &v30 - v6;
  v8 = (v0 + OBJC_IVAR____TtC7remindd40RDSuggestConversionToGroceryListActivity_userDefaults);
  v9 = *(v0 + OBJC_IVAR____TtC7remindd40RDSuggestConversionToGroceryListActivity_userDefaults + 24);
  v10 = *(v0 + OBJC_IVAR____TtC7remindd40RDSuggestConversionToGroceryListActivity_userDefaults + 32);
  sub_10000F61C((v0 + OBJC_IVAR____TtC7remindd40RDSuggestConversionToGroceryListActivity_userDefaults), v9);
  if ((*(v10 + 16))(v9, v10))
  {
    if (qword_1009367C0 != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    sub_100006654(v11, qword_100951210);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v12, v13))
    {
      goto LABEL_12;
    }

    v14 = swift_slowAlloc();
    *v14 = 0;
    v15 = "RDSuggestConversionToGroceryListActivity: not executing because the user already dismissed a grocery tip.";
    goto LABEL_11;
  }

  v16 = v8[3];
  v17 = v8[4];
  sub_10000F61C(v8, v16);
  if (((*(v17 + 8))(v16, v17) & 1) == 0)
  {
    static Locale.current.getter();
    Locale.identifier.getter();
    v22 = v21;
    (*(v2 + 8))(v7, v1);
    type metadata accessor for REMGroceryDummyModel();
    v19 = static REMGroceryDummyModel.isSupported(localeIdentifier:)();
    v22, v23, v24, v25, v26, v27, v28, v29;
    return v19 & 1;
  }

  if (qword_1009367C0 != -1)
  {
    swift_once();
  }

  v18 = type metadata accessor for Logger();
  sub_100006654(v18, qword_100951210);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    v15 = "RDSuggestConversionToGroceryListActivity: not executing because the user already created a grocery list.";
LABEL_11:
    _os_log_impl(&_mh_execute_header, v12, v13, v15, v14, 2u);
  }

LABEL_12:

  v19 = 0;
  return v19 & 1;
}

unint64_t sub_1007407E8()
{
  _StringGuts.grow(_:)(31);
  0xE000000000000000, v1, v2, v3, v4, v5, v6, v7;
  v8 = *(v0 + OBJC_IVAR____TtC7remindd40RDSuggestConversionToGroceryListActivity_identifier);
  v9 = *(v0 + OBJC_IVAR____TtC7remindd40RDSuggestConversionToGroceryListActivity_identifier + 8);

  v10._countAndFlagsBits = v8;
  v10._object = v9;
  String.append(_:)(v10);
  v9, v11, v12, v13, v14, v15, v16, v17;
  v18._countAndFlagsBits = 0x746973796261622ELL;
  v18._object = 0xEB00000000726574;
  String.append(_:)(v18);
  return 0xD000000000000012;
}

double sub_100740910()
{
  v1 = v0[3];
  v2 = v0[4];
  sub_10000F61C(v0, v1);
  v3 = (*(v2 + 8))(v1, v2);
  [v3 doubleValue];
  v5 = v4;

  return v5;
}

uint64_t sub_100740988@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_10000A87C(a1, v30);
  sub_1000F5104(&qword_10093D900, &qword_10079B610);
  type metadata accessor for RDSuggestConversionToGroceryListActivity();
  if (swift_dynamicCast())
  {

    swift_beginAccess();
    sub_10000A87C(v2 + 16, v26);
    v5 = v27;
    v6 = v28;
    sub_10000F61C(v26, v27);
    (*(v6 + 8))(v5, v6);
    sub_10000607C(v26);
    return sub_10000607C(v30);
  }

  else
  {
    if (qword_1009367C0 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_100006654(v8, qword_100951210);
    sub_10000A87C(a1, v26);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v29 = v12;
      *v11 = 136446210;
      sub_10000A87C(v26, &v25);
      v13 = String.init<A>(describing:)();
      v15 = v14;
      sub_10000607C(v26);
      v16 = sub_10000668C(v13, v15, &v29);
      v15, v17, v18, v19, v20, v21, v22, v23;
      *(v11 + 4) = v16;
      _os_log_impl(&_mh_execute_header, v9, v10, "RDSuggestConversionToGroceryListExecutionDateStorage.lastExecutedDate(for:) must work with RDSuggestConversionToGroceryListActivity only {executable: %{public}s}", v11, 0xCu);
      sub_10000607C(v12);
    }

    else
    {

      sub_10000607C(v26);
    }

    sub_10000607C(v30);
    v24 = type metadata accessor for Date();
    return (*(*(v24 - 8) + 56))(a2, 1, 1, v24);
  }
}

uint64_t sub_100740C10(uint64_t a1, uint64_t a2)
{
  v5 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  __chkstk_darwin(v5 - 8, v6);
  v8 = v30 - v7;
  sub_10000A87C(a1, v33);
  sub_1000F5104(&qword_10093D900, &qword_10079B610);
  type metadata accessor for RDSuggestConversionToGroceryListActivity();
  if (swift_dynamicCast())
  {

    v9 = type metadata accessor for Date();
    v10 = *(v9 - 8);
    (*(v10 + 16))(v8, a2, v9);
    (*(v10 + 56))(v8, 0, 1, v9);
    swift_beginAccess();
    v11 = *(v2 + 40);
    v12 = *(v2 + 48);
    sub_10000C9DC(v2 + 16, v11);
    (*(v12 + 16))(v8, v11, v12);
    swift_endAccess();
  }

  else
  {
    if (qword_1009367C0 != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    sub_100006654(v13, qword_100951210);
    sub_10000A87C(a1, v32);
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v31 = v17;
      *v16 = 136446210;
      sub_10000A87C(v32, v30);
      v18 = String.init<A>(describing:)();
      v20 = v19;
      sub_10000607C(v32);
      v21 = sub_10000668C(v18, v20, &v31);
      v20, v22, v23, v24, v25, v26, v27, v28;
      *(v16 + 4) = v21;
      _os_log_impl(&_mh_execute_header, v14, v15, "RDSuggestConversionToGroceryListExecutionDateStorage.updateLastExecutedDate(for:) must work with RDSuggestConversionToGroceryListActivity only {executable: %{public}s}", v16, 0xCu);
      sub_10000607C(v17);
    }

    else
    {

      sub_10000607C(v32);
    }
  }

  return sub_10000607C(v33);
}

uint64_t sub_100741064@<X0>(void *a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC7remindd40RDSuggestConversionToGroceryListActivity_executable);
  a1[3] = type metadata accessor for RDSuggestConversionToGroceryListActivity.RDSuggestConversionToGroceryListActivityExecutable();
  a1[4] = &off_1008FDCB8;
  a1[5] = &off_1008FDCC8;
  *a1 = v3;
}

uint64_t sub_1007410C8()
{
  v1 = (v0 + OBJC_IVAR____TtC7remindd40RDSuggestConversionToGroceryListActivity_configurations);
  v2 = *(v0 + OBJC_IVAR____TtC7remindd40RDSuggestConversionToGroceryListActivity_configurations + 24);
  v3 = *(v0 + OBJC_IVAR____TtC7remindd40RDSuggestConversionToGroceryListActivity_configurations + 32);
  sub_10000F61C(v1, v2);
  return (*(*(v3 + 16) + 8))(v2);
}

uint64_t sub_100741158@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC7remindd40RDSuggestConversionToGroceryListActivity_babysitter;
  swift_beginAccess();
  return sub_100010364(v1 + v3, a1, &unk_10093D8F0, &unk_10079B600);
}

char *sub_1007411C0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v11 = *v2;
  v6 = *(*v2 + OBJC_IVAR____TtC7remindd40RDSuggestConversionToGroceryListActivity_configurations + 24);
  v5 = *(*v2 + OBJC_IVAR____TtC7remindd40RDSuggestConversionToGroceryListActivity_configurations + 32);
  sub_10000F61C(&v11[OBJC_IVAR____TtC7remindd40RDSuggestConversionToGroceryListActivity_configurations], *&v11[OBJC_IVAR____TtC7remindd40RDSuggestConversionToGroceryListActivity_configurations + 24]);
  v7 = (*(*(v5 + 16) + 8))(v6);
  v13 = a1;
  v14 = &off_1008FDD08;
  *&v12 = v11;
  v8 = type metadata accessor for RDExecutionIntervalThrottlingPolicy();
  v9 = swift_allocObject();
  sub_100054B6C(&v12, v9 + 16);
  *(v9 + 56) = v7;
  a2[3] = v8;
  a2[4] = &off_1008F5B28;
  *a2 = v9;

  return v11;
}

uint64_t sub_1007412A4()
{
  v1 = *(*v0 + OBJC_IVAR____TtC7remindd40RDSuggestConversionToGroceryListActivity_identifier);

  return v1;
}

uint64_t sub_100741310@<X0>(uint64_t a1@<X8>)
{
  v3 = [*v1 suggestConversionToGroceryListLastExecutionDate];
  if (v3)
  {
    v4 = v3;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = type metadata accessor for Date();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, 1, v6);
}

void sub_1007413B4(uint64_t a1)
{
  v3 = *v1;
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  v6 = (*(v5 + 48))(a1, 1, v4);
  v7 = 0;
  if (v6 != 1)
  {
    isa = Date._bridgeToObjectiveC()().super.isa;
    (*(v5 + 8))(a1, v4);
    v7 = isa;
  }

  v9 = v7;
  [v3 setSuggestConversionToGroceryListLastExecutionDate:?];
}

id sub_100741510()
{
  v1 = [*v0 suggestConversionToGroceryListRateReduceFactor];

  return v1;
}

uint64_t sub_1007415D4()
{
  v0 = sub_10000F8A4(3uLL, 0, 7u);
  sub_1000F5104(&unk_100939D60, &unk_1007959E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100796900;
  *(inited + 32) = swift_getKeyPath();
  *(inited + 40) = swift_getKeyPath();
  sub_1000060C8(0, &qword_1009399F0, off_1008D4120);
  v2 = [objc_allocWithZone(NSFetchRequest) init];
  v3 = [swift_getObjCClassFromMetadata() entity];
  [v2 setEntity:v3];

  [v2 setAffectedStores:0];
  [v2 setPredicate:v0];

  sub_100010864(v4);
  inited, v5, v6, v7, v8, v9, v10, v11;
  v12 = sub_1002137C0(_swiftEmptySetSingleton);
  _swiftEmptySetSingleton, v13, v14, v15, v16, v17, v18, v19;
  isa = Array._bridgeToObjectiveC()().super.isa;
  v12, v21, v22, v23, v24, v25, v26, v27;
  [v2 setPropertiesToFetch:isa];

  swift_setDeallocating();
  swift_arrayDestroy();
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_1007953F0;
  sub_1000060C8(0, &qword_10093C980, NSSortDescriptor_ptr);
  swift_getKeyPath();
  *(v28 + 32) = NSSortDescriptor.init<A, B>(keyPath:ascending:)();
  v29 = Array._bridgeToObjectiveC()().super.isa;
  v28, v30, v31, v32, v33, v34, v35, v36;
  [v2 setSortDescriptors:v29];

  v37 = NSManagedObjectContext.fetch<A>(_:)();
  return v37;
}

_TtC7remindd19RDXPCStorePerformer *sub_1007419AC()
{
  v0 = sub_1007415D4();
  v8 = v0;
  if (v0 >> 62)
  {
    goto LABEL_31;
  }

  for (i = *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
  {
    if (i)
    {
      v10 = 0;
      while (1)
      {
        if ((v8 & 0xC000000000000001) != 0)
        {
          v11 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v10 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_28;
          }

          v11 = *(v8 + 8 * v10 + 32);
        }

        v12 = v11;
        v13 = v10 + 1;
        if (__OFADD__(v10, 1))
        {
          break;
        }

        v14 = [objc_allocWithZone(REMAccountCapabilities) initWithAccountType:{objc_msgSend(v11, "type")}];
        v15 = [v14 supportsGroceriesList];

        if (v15)
        {
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
        }

        else
        {
        }

        ++v10;
        if (v13 == i)
        {
          goto LABEL_14;
        }
      }

      __break(1u);
LABEL_28:
      __break(1u);
      goto LABEL_29;
    }

LABEL_14:
    v8, v1, v2, v3, v4, v5, v6, v7;
    if ((&_swiftEmptyArrayStorage & 0x8000000000000000) == 0 && (&_swiftEmptyArrayStorage & 0x4000000000000000) == 0)
    {
      v8 = *_swiftEmptyArrayStorage.clientIdentity;
      if (!v8)
      {
        break;
      }

      goto LABEL_17;
    }

    v8 = _CocoaArrayWrapper.endIndex.getter();
    if (!v8)
    {
      break;
    }

LABEL_17:
    v16 = 0;
    while (1)
    {
      if ((&_swiftEmptyArrayStorage & 0xC000000000000001) != 0)
      {
        specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v16 >= *_swiftEmptyArrayStorage.clientIdentity)
        {
          goto LABEL_30;
        }

        v17 = *&_swiftEmptyArrayStorage.clientIdentity[8 * v16 + 16];
      }

      v18 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      ++v16;
      if (v18 == v8)
      {
        goto LABEL_33;
      }
    }

LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    ;
  }

LABEL_33:

  return &_swiftEmptyArrayStorage;
}

void sub_100741C30(void *a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 >> 6 == 1)
  {

    v5 = a1;
  }

  else if (!(a3 >> 6))
  {
    v4 = a1;
  }
}

void sub_100741C9C(void *a1, _TtC7remindd19RDXPCStorePerformer *a2, unsigned __int8 a3)
{
  if (a3 >> 6 == 1)
  {
  }

  else if (!(a3 >> 6))
  {

    a2, v5, v6, v7, v8, v9, v10, v11;
  }
}

uint64_t sub_100741CF8(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  sub_100741C30(*a2, v4, v5);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  return a1;
}

uint64_t assignWithCopy for RDGroceryQueueItemConfiguration(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  sub_100741C30(*a2, v4, v5);
  v6 = *a1;
  v7 = *(a1 + 8);
  *a1 = v3;
  *(a1 + 8) = v4;
  v8 = *(a1 + 16);
  *(a1 + 16) = v5;
  sub_100741C9C(v6, v7, v8);
  return a1;
}

uint64_t assignWithTake for RDGroceryQueueItemConfiguration(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *a1;
  v5 = *(a1 + 8);
  *a1 = *a2;
  v6 = *(a1 + 16);
  *(a1 + 16) = v3;
  sub_100741C9C(v4, v5, v6);
  return a1;
}

uint64_t getEnumTagSinglePayload for RDGroceryQueueItemConfiguration(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7E && *(a1 + 17))
  {
    return (*a1 + 126);
  }

  v3 = ((*(a1 + 16) >> 6) & 0xFFFFFF83 | (4 * ((*(a1 + 16) >> 1) & 0x1F))) ^ 0x7F;
  if (v3 >= 0x7D)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t storeEnumTagSinglePayload for RDGroceryQueueItemConfiguration(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7D)
  {
    *(result + 16) = 0;
    *result = a2 - 126;
    *(result + 8) = 0;
    if (a3 >= 0x7E)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7E)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = 2 * (((-a2 >> 2) & 0x1F) - 32 * a2);
    }
  }

  return result;
}

uint64_t sub_100741E8C(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = v1;
  v3 = v1 >> 6;
  if (v2 >= 0)
  {
    return v3;
  }

  else
  {
    return (*a1 + 2);
  }
}

uint64_t sub_100741EBC(uint64_t result, unsigned int a2)
{
  if (a2 < 2)
  {
    *(result + 16) = *(result + 16) & 1 | (a2 << 6);
  }

  else
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    *(result + 16) = 0x80;
  }

  return result;
}

uint64_t sub_100741EF8()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_100951480);
  v1 = sub_100006654(v0, qword_100951480);
  if (qword_100936460 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_100975068);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

double sub_100741FC0@<D0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v122 = a2;
  v128 = a3;
  v4 = type metadata accessor for REMCDOperationQueueItem.ThreadSafeRepresentation(0);
  __chkstk_darwin(v4, v5);
  v6 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  __chkstk_darwin(v6 - 8, v7);
  v9 = &v116[-v8];
  v10 = type metadata accessor for Date();
  v123 = *(v10 - 8);
  v124 = v10;
  __chkstk_darwin(v10, v11);
  v13 = &v116[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v14, v15);
  v17 = &v116[-v16];
  __chkstk_darwin(v18, v19);
  v121 = &v116[-v20];
  v21 = sub_1000F5104(&unk_100939D90, "8\n\r");
  __chkstk_darwin(v21 - 8, v22);
  v24 = &v116[-((v23 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v25, v26);
  v28 = &v116[-v27];
  v29 = type metadata accessor for UUID();
  v30 = *(v29 - 8);
  v126 = v29;
  v127 = v30;
  __chkstk_darwin(v29, v31);
  v33 = &v116[-((v32 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v34, v35);
  v125 = &v116[-v36];
  v37 = *(a1 + 8);
  if (v37 == 4 || !sub_10018F950(*(a1 + 8), &off_1008E4228))
  {
    goto LABEL_21;
  }

  if (v37 > 1)
  {
    if (v37 != 2)
    {
      goto LABEL_21;
    }

    sub_100010364(a1 + v4[9], v24, &unk_100939D90, "8\n\r");
    v40 = v126;
    v41 = v127;
    if ((*(v127 + 48))(v24, 1, v126) == 1)
    {
      sub_1000050A4(v24, &unk_100939D90, "8\n\r");
      result = 0.0;
      v43 = v128;
      *v128 = 0u;
      *(v43 + 1) = 0u;
      v43[4] = 0;
    }

    else
    {
      (*(v41 + 32))(v33, v24, v40);
      v50 = objc_opt_self();
      isa = UUID._bridgeToObjectiveC()().super.isa;
      v52 = [v50 objectIDWithUUID:isa];

      v53 = type metadata accessor for RDGroceryOperationSuggestConversionToGroceryList();
      v54 = swift_allocObject();
      *(v54 + 16) = 2;
      v55 = v122;
      *(v54 + 24) = v52;
      *(v54 + 32) = v55;
      *(v54 + 40) = sub_100742D34;
      *(v54 + 48) = 0;
      v56 = v128;
      v128[3] = v53;
      v56[4] = &off_1008F94E0;
      *v56 = v54;
      v57 = *(v41 + 8);
      v58 = v55;
      v57(v33, v40);
    }
  }

  else
  {
    if (v37)
    {
      v44 = type metadata accessor for RDGroceryOperationDownloadGroceryModelAssetsFromTrial();
      v45 = swift_allocObject();
      *(v45 + 16) = 1;
      v46 = v128;
      v128[3] = v44;
      v46[4] = &off_1008FD3F0;
      *v46 = v45;
      return result;
    }

    sub_100010364(a1 + v4[9], v28, &unk_100939D90, "8\n\r");
    v38 = v126;
    v39 = v127;
    if ((*(v127 + 48))(v28, 1, v126) == 1)
    {
      sub_1000050A4(v28, &unk_100939D90, "8\n\r");
LABEL_21:
      v108 = v128;
      v128[4] = 0;
      result = 0.0;
      *v108 = 0u;
      *(v108 + 1) = 0u;
      return result;
    }

    (*(v39 + 32))(v125, v28, v38);
    sub_100010364(a1 + v4[7], v9, &unk_100938850, qword_100795AE0);
    v47 = v39;
    v48 = v123;
    v49 = v124;
    if ((*(v123 + 48))(v9, 1, v124) == 1)
    {
      (*(v47 + 8))(v125, v38);
      sub_1000050A4(v9, &unk_100938850, qword_100795AE0);
      goto LABEL_21;
    }

    v59 = v121;
    (*(v48 + 32))(v121, v9, v49);
    v60 = (a1 + v4[10]);
    v61 = v60[1];
    if (v61 >> 60 == 15)
    {
      (*(v48 + 8))(v59, v49);
      (*(v127 + 8))(v125, v38);
      goto LABEL_21;
    }

    v62 = *v60;
    v63 = objc_opt_self();
    sub_100029344(v62, v61);
    v64 = UUID._bridgeToObjectiveC()().super.isa;
    v65 = [v63 objectIDWithUUID:v64];

    v66 = objc_autoreleasePoolPush();
    type metadata accessor for JSONDecoder();
    swift_allocObject();
    JSONDecoder.init()();
    sub_100742DB8();
    v120 = v62;
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();
    v118 = v61;

    objc_autoreleasePoolPop(v66);
    v67 = v129;
    v117 = v130;
    v68 = *(v123 + 16);
    v68(v17, v121, v124);
    type metadata accessor for REMObjectID_Codable();
    sub_100190948();
    v119 = v65;

    v69 = Array<A>.removingDuplicates()();
    v67, v70, v71, v72, v73, v74, v75, v76;
    if (v69 >> 62)
    {
      sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);

      v84 = _bridgeCocoaArray<A>(_:)();
      v67, v109, v110, v111, v112, v113, v114, v115;
      v67 = v69;
    }

    else
    {

      dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
      sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
      v84 = v69;
    }

    v67, v77, v78, v79, v80, v81, v82, v83;
    v69, v85, v86, v87, v88, v89, v90, v91;
    v92 = v124;
    v68(v13, v17, v124);
    v93 = [objc_opt_self() sharedConfiguration];
    v131 = sub_1000060C8(0, &qword_100936F28, off_1008D4108);
    v132 = &off_1008E5A40;
    v129 = v93;
    v94 = type metadata accessor for RDGroceryOperationCategorizeRemindersInList(0);
    v95 = swift_allocObject();
    *(v95 + 16) = 0;
    v96 = OBJC_IVAR____TtC7remindd43RDGroceryOperationCategorizeRemindersInList_rdLog;
    if (qword_100936460 != -1)
    {
      swift_once();
    }

    v97 = type metadata accessor for Logger();
    v98 = sub_100006654(v97, qword_100975068);
    (*(*(v97 - 8) + 16))(v95 + v96, v98, v97);
    v99 = v119;
    *(v95 + OBJC_IVAR____TtC7remindd43RDGroceryOperationCategorizeRemindersInList_listObjectID) = v119;
    *(v95 + OBJC_IVAR____TtC7remindd43RDGroceryOperationCategorizeRemindersInList_reminderIDs) = v84;
    *(v95 + OBJC_IVAR____TtC7remindd43RDGroceryOperationCategorizeRemindersInList_isListCategorization) = v117 & 1;
    v68((v95 + OBJC_IVAR____TtC7remindd43RDGroceryOperationCategorizeRemindersInList_queuedAt), v13, v92);
    v100 = v122;
    *(v95 + OBJC_IVAR____TtC7remindd43RDGroceryOperationCategorizeRemindersInList_store) = v122;
    sub_10000A87C(&v129, v95 + OBJC_IVAR____TtC7remindd43RDGroceryOperationCategorizeRemindersInList_classifierConfiguration);
    v101 = (v95 + OBJC_IVAR____TtC7remindd43RDGroceryOperationCategorizeRemindersInList_groceryClassifierProvider);
    *v101 = &unk_1007B7858;
    v101[1] = 0;
    v102 = objc_opt_self();
    v103 = v100;
    v104 = [v102 daemonUserDefaults];
    v105 = *(v123 + 8);
    v105(v13, v92);
    v105(v17, v92);
    sub_10000607C(&v129);
    type metadata accessor for RDFeedbackProvider();
    v106 = swift_allocObject();
    *(v106 + 16) = v104;
    *(v95 + OBJC_IVAR____TtC7remindd43RDGroceryOperationCategorizeRemindersInList_rdFeedbackProvider) = v106;
    v107 = v128;
    v128[3] = v94;
    v107[4] = &off_1008EE168;
    sub_100031A14(v120, v118);

    *v107 = v95;
    v105(v121, v92);
    (*(v127 + 8))(v125, v126);
  }

  return result;
}

uint64_t sub_100742C80(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return _swift_task_switch(sub_100742CA0, 0, 0);
}

uint64_t sub_100742CA0()
{
  v1 = sub_100759D94(*(v0 + 16), *(v0 + 24), 0xD000000000000019, 0x8000000100800400);
  v2 = *(v0 + 8);

  return v2(v1);
}

unint64_t sub_100742D64()
{
  result = qword_100951498;
  if (!qword_100951498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100951498);
  }

  return result;
}

unint64_t sub_100742DB8()
{
  result = qword_1009514A0;
  if (!qword_1009514A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009514A0);
  }

  return result;
}

void sub_100742E10(_TtC7remindd19RDXPCStorePerformer *a1@<X1>, void *a2@<X2>, char *a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v44 = a4;
  v51 = a2;
  v52 = a3;
  v50 = a1;
  v48 = a5;
  v49 = type metadata accessor for REMListPickerDataView.Model();
  v47 = *(v49 - 8);
  __chkstk_darwin(v49, v5);
  v46 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7, v8);
  v45 = &v41 - v9;
  v10 = type metadata accessor for REMAccountsListDataView.Model();
  v42 = *(v10 - 8);
  v43 = v10;
  __chkstk_darwin(v10, v11);
  v13 = &v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  Options = type metadata accessor for REMAccountsListDataView.FetchOptions();
  v15 = *(Options - 8);
  __chkstk_darwin(Options, v16);
  v18 = &v41 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for REMAccountsListDataView.Invocation.Result();
  v20 = *(v19 - 8);
  __chkstk_darwin(v19, v21);
  v23 = &v41 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for REMAccountsListDataView.Invocation();
  v24 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  static REMAccountsListDataView.FetchOptions.accountsOnly.getter();
  v25 = v53;
  sub_10000ABF4(v50, v51, v52, v18, v23);
  (*(v15 + 8))(v18, Options);

  if (!v25)
  {
    REMAccountsListDataView.Invocation.Result.model.getter();
    (*(v20 + 8))(v23, v19);
    v26 = REMAccountsListDataView.Model.accounts.getter();
    (*(v42 + 8))(v13, v43);
    v27 = v44;
    v28 = REMListPickerDataView.Invocation.Parameters.shouldIncludeCustomSmartLists.getter();
    __chkstk_darwin(v28, v29);
    *(&v41 - 2) = v27;
    *(&v41 - 8) = v30 & 1;
    sub_1003DEA00(sub_1007127FC, (&v41 - 4), v26);
    v26, v31, v32, v33, v34, v35, v36, v37;
    v38 = v45;
    REMListPickerDataView.Model.init(accounts:)();
    v39 = v47;
    v40 = v49;
    (*(v47 + 16))(v46, v38, v49);
    REMListPickerDataView.Invocation.Result.init(model:)();
    (*(v39 + 8))(v38, v40);
  }
}

uint64_t sub_10074320C@<X0>(uint64_t a1@<X0>, int a2@<W2>, uint64_t a3@<X8>)
{
  v24[3] = a2;
  v5 = type metadata accessor for REMAccountsListDataView.Model.Account();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5, v7);
  v9 = v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for REMListPickerDataView.PickerMode();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10, v12);
  v14 = (v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  REMListPickerDataView.Invocation.Parameters.pickerMode.getter();
  v15 = (*(v11 + 88))(v14, v10);
  if (v15 == enum case for REMListPickerDataView.PickerMode.specificAccount(_:))
  {
    (*(v11 + 96))(v14, v10);
    v16 = *v14;
    sub_100003C4C();
    v17 = REMAccountsListDataView.Model.Account.account.getter();
    v18 = [v17 objectID];

    LOBYTE(v17) = static NSObject.== infix(_:_:)();
    if ((v17 & 1) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  if (v15 == enum case for REMListPickerDataView.PickerMode.allAccounts(_:))
  {
    goto LABEL_7;
  }

  if (v15 == enum case for REMListPickerDataView.PickerMode.cloudKitOnlyAccounts(_:))
  {
    v19 = REMAccountsListDataView.Model.Account.account.getter();
    v20 = [v19 capabilities];

    LOBYTE(v19) = [v20 supportsSubtasks];
    if ((v19 & 1) == 0)
    {
LABEL_8:
      v21 = 1;
      goto LABEL_9;
    }

LABEL_7:
    (*(v6 + 16))(v9, a1, v5);
    REMListPickerDataView.Model.Account.init(account:shouldIncludeCustomSmartLists:)();
    v21 = 0;
LABEL_9:
    v22 = type metadata accessor for REMListPickerDataView.Model.Account();
    return (*(*(v22 - 8) + 56))(a3, v21, 1, v22);
  }

  result = _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
  return result;
}

unint64_t sub_100743518(uint64_t a1)
{
  result = sub_100743540();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100743540()
{
  result = qword_1009514D0;
  if (!qword_1009514D0)
  {
    type metadata accessor for REMListPickerDataView.Invocation();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009514D0);
  }

  return result;
}

uint64_t sub_1007435FC()
{
  v0 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v17 = *(v0 - 8);
  v18 = v0;
  __chkstk_darwin(v0, v1);
  v16 = v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v3, v4);
  v5 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v5 - 8, v6);
  v7 = type metadata accessor for DispatchQoS.QoSClass();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7, v9);
  v11 = v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000060C8(0, &qword_10093E6E0, OS_dispatch_queue_ptr);
  active = type metadata accessor for RDPrimaryActiveCloudKitAccountManagedObjectIDCache(0);
  sub_1000F5104(&qword_1009516B8, &qword_1007B79E8);
  v12 = String.init<A>(reflecting:)();
  v15[0] = v13;
  v15[1] = v12;
  (*(v8 + 104))(v11, enum case for DispatchQoS.QoSClass.default(_:), v7);
  static OS_dispatch_queue.global(qos:)();
  (*(v8 + 8))(v11, v7);
  static DispatchQoS.unspecified.getter();
  active = &_swiftEmptyArrayStorage;
  sub_100008D58();
  sub_1000F5104(&unk_10093FEE0, &qword_100791B00);
  sub_100007FA0();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v17 + 104))(v16, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v18);
  OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  swift_allocObject();
  result = REMCache.init(cacheQueue:countLimit:)();
  qword_1009752E8 = result;
  return result;
}

uint64_t sub_100743930(uint64_t a1)
{
  swift_getObjectType();
  sub_10014F5CC(a1, v8);
  if (!v9)
  {
    sub_1001B2134(v8);
    goto LABEL_7;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_7:
    v5 = 0;
    return v5 & 1;
  }

  sub_1000060C8(0, &qword_100945FC0, NSObject_ptr);
  v2 = *&v7[OBJC_IVAR____TtC7remindd21RDPredefinedObjectKey_accountID];
  v3 = static NSObject.== infix(_:_:)();

  if ((v3 & 1) == 0)
  {

    goto LABEL_7;
  }

  v4 = *&v7[OBJC_IVAR____TtC7remindd21RDPredefinedObjectKey_objectID];
  v5 = static NSObject.== infix(_:_:)();

  return v5 & 1;
}

uint64_t sub_100743B88()
{
  v1 = v0;
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  *&v5 = __chkstk_darwin(v2, v4).n128_u64[0];
  v7 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [*(v1 + OBJC_IVAR____TtC7remindd21RDPredefinedObjectKey_accountID) uuid];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v9 = UUID.uuidString.getter();
  v11 = v10;
  (*(v3 + 8))(v7, v2);
  v42 = v9;
  v43 = v11;

  v12._countAndFlagsBits = 24415;
  v12._object = 0xE200000000000000;
  String.append(_:)(v12);
  v11, v13, v14, v15, v16, v17, v18, v19;
  v20 = v42;
  v21 = v43;
  v22 = [*(v1 + OBJC_IVAR____TtC7remindd21RDPredefinedObjectKey_objectID) stringRepresentation];
  v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v25 = v24;

  v42 = v20;
  v43 = v21;

  v26._countAndFlagsBits = v23;
  v26._object = v25;
  String.append(_:)(v26);
  v21, v27, v28, v29, v30, v31, v32, v33;
  v25, v34, v35, v36, v37, v38, v39, v40;
  return v42;
}

void sub_100743E38()
{
  v0 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v32 = *(v0 - 8);
  v33 = v0;
  __chkstk_darwin(v0, v1);
  v31 = v30 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v3, v4);
  v5 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v5 - 8, v6);
  v7 = type metadata accessor for DispatchQoS.QoSClass();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7, v9);
  v11 = v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000060C8(0, &qword_10093E6E0, OS_dispatch_queue_ptr);
  v34 = type metadata accessor for RDPredefinedManagedObjectIDCache(0);
  sub_1000F5104(&qword_1009516B0, &unk_1007B79D8);
  v30[1] = String.init<A>(reflecting:)();
  (*(v8 + 104))(v11, enum case for DispatchQoS.QoSClass.default(_:), v7);
  static OS_dispatch_queue.global(qos:)();
  (*(v8 + 8))(v11, v7);
  static DispatchQoS.unspecified.getter();
  v34 = &_swiftEmptyArrayStorage;
  sub_100008D58();
  sub_1000F5104(&unk_10093FEE0, &qword_100791B00);
  sub_100007FA0();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v32 + 104))(v31, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v33);
  OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v12 = static REMSmartList.NonCustom.allCases.getter();
  v13 = *(v12 + 16);
  v12, v14, v15, v16, v17, v18, v19, v20;
  v21 = static REMManualOrdering.Predefined.allCases.getter();
  v22 = *(v21 + 16);
  v21, v23, v24, v25, v26, v27, v28, v29;
  if (__OFADD__(v13, v22))
  {
    __break(1u);
  }

  else
  {
    type metadata accessor for RDPredefinedSmartListAndManualOrderingManagedObjectIDCache(0);
    swift_allocObject();
    REMCache.init(cacheQueue:countLimit:)();
  }
}

uint64_t sub_10074419C()
{
  sub_1000F5104(&unk_100939D60, &unk_1007959E0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_100799D70;
  *(v0 + 32) = swift_getKeyPath();
  *(v0 + 40) = swift_getKeyPath();
  result = swift_getKeyPath();
  *(v0 + 48) = result;
  qword_100975338 = v0 & 0xFFFFFFFFFFFFFF8;
  return result;
}

uint64_t sub_1007442B0(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  sub_1000F5104(&unk_100939D60, &unk_1007959E0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1007953F0;
  result = swift_getKeyPath();
  *(v4 + 32) = result;
  *a3 = v4 & 0xFFFFFFFFFFFFFF8;
  return result;
}

uint64_t sub_100744320(void *a1)
{
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2, v4);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000F5104(&unk_100939D90, "8\n\r");
  __chkstk_darwin(v7 - 8, v8);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v13 = __chkstk_darwin(v11, v12).n128_u64[0];
  v15 = &v20 - v14;
  v16 = [a1 identifier];
  if (v16)
  {
    v17 = v16;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    (*(v3 + 56))(v10, 0, 1, v2);
  }

  else
  {
    (*(v3 + 56))(v10, 1, 1, v2);
  }

  sub_100100FB4(v10, v15);
  if ((*(v3 + 48))(v15, 1, v2))
  {
    sub_1000050A4(v15, &unk_100939D90, "8\n\r");
    return 0;
  }

  else
  {
    (*(v3 + 16))(v6, v15, v2);
    sub_1000050A4(v15, &unk_100939D90, "8\n\r");
    v19 = UUID.uuidString.getter();
    (*(v3 + 8))(v6, v2);
    return v19;
  }
}

id sub_100744558(void *a1, uint64_t a2, void *a3)
{
  result = [a1 personID];
  if (result)
  {
    v6 = result;
    v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = v8;

    sub_100220844(a2, &v87);
    if (v88)
    {
      sub_100054B6C(&v87, &v89);
      v10 = [a3 externalIdentifier];
      if (v10)
      {
        v11 = v10;
        v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v14 = v13;

        v15 = v91;
        v16 = v92;
        sub_10000F61C(&v89, v91);
        v17 = (*(v16 + 16))(v12, v14, v15, v16);
        v19 = v18;
        v14, v18, v20, v21, v22, v23, v24, v25;
        if (v19)
        {
          *&v87 = v7;
          *(&v87 + 1) = v9;

          v26._countAndFlagsBits = 124;
          v26._object = 0xE100000000000000;
          String.append(_:)(v26);
          v9, v27, v28, v29, v30, v31, v32, v33;
          v34 = *(&v87 + 1);

          v35._countAndFlagsBits = v17;
          v35._object = v19;
          String.append(_:)(v35);
          v19, v36, v37, v38, v39, v40, v41, v42;
          v34, v43, v44, v45, v46, v47, v48, v49;
          v50 = v87;
          sub_10000607C(&v89);
          return v50;
        }
      }

      sub_10000607C(&v89);
    }

    else
    {
      sub_1000050A4(&v87, &qword_100947E90, &qword_10079B250);
    }

    v51 = [a3 externalIdentifier];
    if (v51)
    {
      v59 = v51;
      v60 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v62 = v61;

      v89 = v7;
      v90 = v9;

      v63._countAndFlagsBits = 124;
      v63._object = 0xE100000000000000;
      String.append(_:)(v63);
      v9, v64, v65, v66, v67, v68, v69, v70;
      v71 = v90;

      v72._countAndFlagsBits = v60;
      v72._object = v62;
      String.append(_:)(v72);
      v71, v73, v74, v75, v76, v77, v78, v79;
      v62, v80, v81, v82, v83, v84, v85, v86;
      return v89;
    }

    else
    {
      v9, v52, v53, v54, v55, v56, v57, v58;
      return 0;
    }
  }

  return result;
}

uint64_t sub_100744794(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  *(v8 + 24), a2, a3, a4, a5, a6, a7, a8;
  v9 = OBJC_IVAR____TtC7remindd21RDElementManualSortID_localUUID;
  v10 = type metadata accessor for UUID();
  (*(*(v10 - 8) + 8))(v8 + v9, v10);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for RDElementManualSortID(uint64_t a1)
{
  result = qword_1009516E8;
  if (!qword_1009516E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10074489C(uint64_t a1)
{
  result = type metadata accessor for UUID();
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

uint64_t sub_100744950(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  v4 = *(a2 + 24);
  if (v3)
  {
    if (!v4)
    {
      return 0;
    }

    v5 = *(a1 + 16) == *(a2 + 16) && v3 == v4;
    if (!v5 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v4)
  {
    return 0;
  }

  if (static UUID.== infix(_:_:)())
  {
    sub_100003C4C();
    return static NSObject.== infix(_:_:)() & 1;
  }

  return 0;
}

uint64_t sub_1007449F4(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4, v6);
  v8 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9, v10);
  v12 = &v38 - v11;
  __chkstk_darwin(v13, v14);
  v16 = &v38 - v15;
  v17 = a1;
  v18 = [v17 identifier];
  if (v18)
  {
    v19 = v18;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v20 = *(v5 + 32);
    v20(v16, v12, v4);
    v21 = [v17 account];

    if (v21)
    {
      v22 = [v21 remObjectID];
      if (v22)
      {
        v43 = v4;
        v45 = v22;
        v38 = v20;
        v39 = v8;
        v23 = swift_allocObject();
        *(v23 + 16) = v17;
        sub_100220844(a2, v46);
        v24 = swift_allocObject();
        v42 = a2;
        v25 = v24;
        *(v24 + 16) = v21;
        v26 = v46[1];
        *(v24 + 24) = v46[0];
        *(v24 + 40) = v26;
        *(v24 + 56) = v47;
        *(v24 + 64) = v17;
        v40 = v17;
        v41 = v21;
        v27 = [v41 accountTypeHost];
        v28 = swift_allocObject();
        *(v28 + 16) = sub_100744FA8;
        *(v28 + 24) = v25;
        v29 = swift_allocObject();
        *(v29 + 16) = sub_100744FA8;
        *(v29 + 24) = v25;
        v30 = swift_allocObject();
        *(v30 + 16) = sub_100744FA0;
        *(v30 + 24) = v23;
        swift_retain_n();
        v44 = v23;

        REMAccountTypeHost.switchByAccountType<A>(primaryCloudKitBlock:nonPrimaryCloudKitBlock:calDavBlock:exchangeBlock:localBlock:localInternalBlock:anyCloudKitBlock:anyCloudAccountBlock:)();
        sub_1000050A4(v42, &qword_100947E90, &qword_10079B250);

        v31 = *(&v46[0] + 1);
        v44 = *&v46[0];
        v32 = v39;
        v33 = v43;
        (*(v5 + 16))(v39, v16, v43);
        type metadata accessor for RDElementManualSortID(0);
        v34 = swift_allocObject();
        v35 = v38;
        v38((v34 + OBJC_IVAR____TtC7remindd21RDElementManualSortID_localUUID), v32, v33);
        swift_setDeallocating();
        (*(v5 + 8))(v34 + OBJC_IVAR____TtC7remindd21RDElementManualSortID_localUUID, v33);
        swift_deallocClassInstance();
        v35(v32, v16, v33);
        v36 = swift_allocObject();
        *(v36 + 16) = v44;
        *(v36 + 24) = v31;
        v35((v36 + OBJC_IVAR____TtC7remindd21RDElementManualSortID_localUUID), v32, v33);
        result = v36;
        *(v36 + OBJC_IVAR____TtC7remindd21RDElementManualSortID_accountID) = v45;
        return result;
      }
    }

    else
    {
    }

    sub_1000050A4(a2, &qword_100947E90, &qword_10079B250);
    (*(v5 + 8))(v16, v4);
  }

  else
  {

    sub_1000050A4(a2, &qword_100947E90, &qword_10079B250);
  }

  return 0;
}

uint64_t sub_100744FEC()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_100951780);
  v1 = sub_100006654(v0, qword_100951780);
  if (qword_100936420 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_100974FA8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

char *sub_1007450B4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v74 = a3;
  v71 = type metadata accessor for RDStoreControllerNotificationCenter.Observer(0);
  v73 = *(v71 - 8);
  __chkstk_darwin(v71, v10);
  v72 = &v67 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12, v13);
  v75 = &v67 - v14;
  v15 = sub_1000F5104(&qword_100942CA0, &qword_1007A3810);
  __chkstk_darwin(v15 - 8, v16);
  v76 = &v67 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18, v19);
  v21 = &v67 - v20;
  *(v5 + 2) = &_swiftEmptyArrayStorage;
  *(v5 + 3) = &_swiftEmptyArrayStorage;
  v22 = OBJC_IVAR____TtC7remindd13RDAlarmEngine_storeControllerNotificationCenterToken;
  v23 = type metadata accessor for RDStoreControllerNotificationCenter.Token(0);
  v24 = *(v23 - 8);
  v25 = *(v24 + 56);
  v26 = v24 + 56;
  v25(&v5[v22], 1, 1, v23);
  v5[OBJC_IVAR____TtC7remindd13RDAlarmEngine_started] = 0;
  *(v5 + 4) = a1;
  *&v5[OBJC_IVAR____TtC7remindd13RDAlarmEngine_beforeFirstUnlockNotificationEngine] = a5;
  v27 = type metadata accessor for RDDaemonController();
  v28 = objc_allocWithZone(v27);
  v29 = &v28[OBJC_IVAR____TtC7remindd18RDDaemonController_xpcDaemon];
  v30 = v74;
  *v29 = a2;
  *(v29 + 1) = v30;
  v31 = &v28[OBJC_IVAR____TtC7remindd18RDDaemonController_clientIdentity];
  *v31 = xmmword_1007B7C30;
  *(v31 + 38) = 0;
  *(v31 + 3) = 0;
  *(v31 + 4) = 0;
  *(v31 + 2) = 0;
  *&v28[OBJC_IVAR____TtC7remindd18RDDaemonController_storeContainerToken] = 0;
  v77.receiver = v28;
  v77.super_class = v27;
  v32 = a1;
  swift_unknownObjectRetain();

  *&v5[OBJC_IVAR____TtC7remindd13RDAlarmEngine_daemonController] = objc_msgSendSuper2(&v77, "init");
  if (a4)
  {
    v67 = v26;
    v68 = v25;
    v69 = v23;
    v70 = a2;
    v74 = a5;
    *(v5 + 5) = a4;
    sub_1000F5104(&unk_100936FD0, &unk_100795D40);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100791340;
    v34 = objc_opt_self();

    v35 = [v34 cdEntityName];
    v36 = v32;
    v37 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v39 = v38;

    *(inited + 32) = v37;
    *(inited + 40) = v39;
    v40 = [objc_opt_self() cdEntityName];
    v41 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v43 = v42;

    *(inited + 48) = v41;
    *(inited + 56) = v43;
    v44 = sub_10038D894(inited);
    swift_setDeallocating();
    swift_arrayDestroy();
    v45 = swift_allocObject();
    swift_weakInit();

    v46 = v76;
    UUID.init()();
    v47 = v46;
    v48 = v75;
    sub_100026CD8(v47, v75, type metadata accessor for RDStoreControllerNotificationCenter.Token);
    v49 = v71;
    *(v48 + *(v71 + 20)) = v44;
    *(v48 + *(v49 + 24)) = v36;
    v50 = (v48 + *(v49 + 28));
    *v50 = sub_100749180;
    v50[1] = v45;
    v51 = *(a4 + 40);

    os_unfair_lock_lock(v51);
    v52 = v48;
    v53 = v72;
    sub_100026CD8(v52, v72, type metadata accessor for RDStoreControllerNotificationCenter.Observer);
    swift_beginAccess();
    v54 = *(a4 + 48);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(a4 + 48) = v54;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v54 = sub_100365714(0, *v54->clientIdentity + 1, 1, v54);
      *(a4 + 48) = v54;
    }

    v57 = *v54->clientIdentity;
    v56 = *&v54->clientIdentity[8];
    if (v57 >= v56 >> 1)
    {
      v54 = sub_100365714((v56 > 1), v57 + 1, 1, v54);
    }

    *v54->clientIdentity = v57 + 1;
    sub_10035083C(v53, v54 + ((*(v73 + 80) + 32) & ~*(v73 + 80)) + *(v73 + 72) * v57, type metadata accessor for RDStoreControllerNotificationCenter.Observer);
    *(a4 + 48) = v54;
    swift_endAccess();
    os_unfair_lock_unlock(v51);

    swift_unknownObjectRelease();
    v44, v58, v59, v60, v61, v62, v63, v64;

    sub_1003508A4(v75, type metadata accessor for RDStoreControllerNotificationCenter.Observer);

    v21 = v76;
    v68(v76, 0, 1, v69);
  }

  else
  {

    swift_unknownObjectRelease();

    *(v5 + 5) = 0;
    v25(v21, 1, 1, v23);
  }

  v65 = OBJC_IVAR____TtC7remindd13RDAlarmEngine_storeControllerNotificationCenterToken;
  swift_beginAccess();
  sub_10014D740(v21, &v5[v65]);
  swift_endAccess();
  return v5;
}

uint64_t sub_1007456A4(uint64_t a1, uint64_t a2)
{
  if (qword_100936828 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100006654(v2, qword_100951780);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "os_transaction INIT {name: com.apple.remindd.RDAlarmEngine.alarmDatabaseDidChange}", v5, 2u);
  }

  os_transaction_create();
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_100745850();
  }

  else
  {
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v6, v7, "Received store changes with deallocated alarm engine", v8, 2u);
    }
  }

  sub_100749188();
  return swift_unknownObjectRelease();
}

void sub_100745850()
{
  v1 = v0;
  if (qword_100936828 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100006654(v2, qword_100951780);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Triggered alarmEngine database did change. Notifying producers", v5, 2u);
  }

  v6 = *(v1 + 16);
  v7 = *(v6 + 16);
  if (v7)
  {
    v8 = v6 + 32;

    do
    {
      sub_10000A87C(v8, v18);
      v9 = v19;
      v10 = v20;
      sub_10000F61C(v18, v19);
      (*(v10 + 32))(v9, v10);
      sub_10000607C(v18);
      v8 += 40;
      --v7;
    }

    while (v7);
    v6, v11, v12, v13, v14, v15, v16, v17;
  }
}

uint64_t sub_1007459AC()
{
  v1 = sub_1000F5104(&qword_100942CA0, &qword_1007A3810);
  __chkstk_darwin(v1 - 8, v2);
  v4 = &v32[-v3];
  v5 = type metadata accessor for RDStoreControllerNotificationCenter.Token(0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5, v7);
  v16 = &v32[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = *(v0 + 40);
  if (!v17)
  {
    goto LABEL_6;
  }

  v18 = OBJC_IVAR____TtC7remindd13RDAlarmEngine_storeControllerNotificationCenterToken;
  swift_beginAccess();
  sub_10014D7CC(v0 + v18, v4);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_1000050A4(v4, &qword_100942CA0, &qword_1007A3810);
LABEL_6:
    *(v0 + 16), v8, v9, v10, v11, v12, v13, v14;
    *(v0 + 24), v24, v25, v26, v27, v28, v29, v30;

    sub_1000050A4(v0 + OBJC_IVAR____TtC7remindd13RDAlarmEngine_storeControllerNotificationCenterToken, &qword_100942CA0, &qword_1007A3810);

    return v0;
  }

  sub_10035083C(v4, v16, type metadata accessor for RDStoreControllerNotificationCenter.Token);
  v19 = *(v17 + 40);

  os_unfair_lock_lock(v19);
  __chkstk_darwin(v20, v21);
  *&v32[-16] = v16;
  swift_beginAccess();
  v22 = sub_1002601AC(sub_10014D8A4, &v32[-32]);
  v23 = *(*(v17 + 48) + 16);
  if (v23 >= v22)
  {
    sub_100260C60(v22, v23);
    swift_endAccess();
    os_unfair_lock_unlock(v19);

    sub_1003508A4(v16, type metadata accessor for RDStoreControllerNotificationCenter.Token);
    goto LABEL_6;
  }

  __break(1u);
  result = swift_endAccess();
  __break(1u);
  return result;
}

uint64_t sub_100745C7C()
{
  sub_1007459AC();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for RDAlarmEngine(uint64_t a1)
{
  result = qword_1009517C8;
  if (!qword_1009517C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100745D28(uint64_t a1)
{
  sub_1001490E0(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_100745DF4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for DispatchPredicate();
  v7 = *(v6 - 8);
  v9 = __chkstk_darwin(v6, v8);
  v11 = (&v126 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (*(v3 + OBJC_IVAR____TtC7remindd13RDAlarmEngine_started))
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return;
  }

  *(v3 + OBJC_IVAR____TtC7remindd13RDAlarmEngine_started) = 1;
  v12 = v3[4];
  *v11 = v12;
  (*(v7 + 104))(v11, enum case for DispatchPredicate.onQueue(_:), v6, v9);
  v13 = v12;
  LOBYTE(v12) = _dispatchPreconditionTest(_:)();
  (*(v7 + 8))(v11, v6);
  if (v12)
  {
    v14 = v3[2];
    v3[2] = a1;

    v14, v15, v16, v17, v18, v19, v20, v21;
    v22 = v3[3];
    v3[3] = a2;

    v22, v23, v24, v25, v26, v27, v28, v29;
    if (qword_100936828 == -1)
    {
      goto LABEL_4;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_4:
  v30 = type metadata accessor for Logger();
  sub_100006654(v30, qword_100951780);
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();

  v31 = Logger.logObject.getter();
  v32 = static os_log_type_t.default.getter();

  if (!os_log_type_enabled(v31, v32))
  {

    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();
    v84 = *(a1 + 16);
    if (!v84)
    {
      goto LABEL_10;
    }

LABEL_8:
    v85 = a1 + 32;
    v86 = v84;
    do
    {
      sub_10000A87C(v85, &v127);
      v87 = v129;
      v88 = v130;
      sub_10000F61C(&v127, v129);
      (*(v88 + 24))(v87, v88);
      sub_10000607C(&v127);
      v85 += 40;
      --v86;
    }

    while (v86);
    goto LABEL_10;
  }

  v33 = swift_slowAlloc();
  v34 = swift_slowAlloc();
  *v33 = 136315650;
  v126 = v34;
  v127 = 60;
  v128 = 0xE100000000000000;
  v35._countAndFlagsBits = sub_100597C80(v3);
  object = v35._object;
  String.append(_:)(v35);
  object, v37, v38, v39, v40, v41, v42, v43;
  v44._countAndFlagsBits = 62;
  v44._object = 0xE100000000000000;
  String.append(_:)(v44);
  v45 = v128;
  v46 = sub_10000668C(v127, v128, &v126);
  v45, v47, v48, v49, v50, v51, v52, v53;
  *(v33 + 4) = v46;
  *(v33 + 12) = 2048;
  v54 = *(a1 + 16);
  a1, v55, v56, v57, v58, v59, v60, v61;
  *(v33 + 14) = v54;
  a1, v62, v63, v64, v65, v66, v67, v68;
  *(v33 + 22) = 2048;
  v69 = *(a2 + 16);
  a2, v70, v71, v72, v73, v74, v75, v76;
  *(v33 + 24) = v69;
  a2, v77, v78, v79, v80, v81, v82, v83;
  _os_log_impl(&_mh_execute_header, v31, v32, "Starting alarmEngine {engine: %s, producers.count: %ld, consumers.count: %ld}", v33, 0x20u);
  sub_10000607C(v34);

  v84 = *(a1 + 16);
  if (v84)
  {
    goto LABEL_8;
  }

LABEL_10:
  swift_bridgeObjectRetain_n();

  v89 = Logger.logObject.getter();
  v90 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v89, v90))
  {
    v91 = swift_slowAlloc();
    v92 = swift_slowAlloc();
    *v91 = 136315394;
    v126 = v92;
    v127 = 60;
    v128 = 0xE100000000000000;
    v93._countAndFlagsBits = sub_100597C80(v3);
    v94 = v93._object;
    String.append(_:)(v93);
    v94, v95, v96, v97, v98, v99, v100, v101;
    v102._countAndFlagsBits = 62;
    v102._object = 0xE100000000000000;
    String.append(_:)(v102);
    v103 = v128;
    v104 = sub_10000668C(v127, v128, &v126);
    v103, v105, v106, v107, v108, v109, v110, v111;
    *(v91 + 4) = v104;
    *(v91 + 12) = 2048;
    a1, v112, v113, v114, v115, v116, v117, v118;
    *(v91 + 14) = v84;
    a1, v119, v120, v121, v122, v123, v124, v125;
    _os_log_impl(&_mh_execute_header, v89, v90, "Finished starting alarmEngine {engine: %s, producers.count: %ld}", v91, 0x16u);
    sub_10000607C(v92);
  }

  else
  {

    swift_bridgeObjectRelease_n();
  }
}

void sub_100746328(uint64_t a1, void *a2, void *a3, const char *a4, const char *a5)
{
  if (a1)
  {
    swift_errorRetain();
    if (qword_100936828 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_100006654(v7, qword_100951780);
    swift_errorRetain();
    v8 = a2;
    v9 = a3;
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v61 = swift_slowAlloc();
      *v12 = 136315650;
      swift_errorRetain();
      sub_1000F5104(&unk_1009399E0, &qword_100795D00);
      v14 = String.init<A>(describing:)();
      v16 = v15;
      v17 = sub_10000668C(v14, v15, &v61);
      v16, v18, v19, v20, v21, v22, v23, v24;
      *(v12 + 4) = v17;
      *(v12 + 12) = 2114;
      *(v12 + 14) = v8;
      *v13 = v8;
      *(v12 + 22) = 2082;
      v25 = v8;
      v26 = [v9 actionIdentifier];
      v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v29 = v28;

      v30 = sub_10000668C(v27, v29, &v61);
      v29, v31, v32, v33, v34, v35, v36, v37;
      *(v12 + 24) = v30;
      _os_log_impl(&_mh_execute_header, v10, v11, a4, v12, 0x20u);
      sub_1000050A4(v13, &unk_100938E70, &unk_100797230);

      swift_arrayDestroy();
    }

    else
    {
    }
  }

  else
  {
    if (qword_100936828 != -1)
    {
      swift_once();
    }

    v39 = type metadata accessor for Logger();
    sub_100006654(v39, qword_100951780);
    v40 = a2;
    v41 = a3;
    formata = Logger.logObject.getter();
    v42 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(formata, v42))
    {
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v61 = v45;
      *v43 = 136446466;
      v46 = [v41 actionIdentifier];
      v47 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v49 = v48;

      v50 = sub_10000668C(v47, v49, &v61);
      v49, v51, v52, v53, v54, v55, v56, v57;
      *(v43 + 4) = v50;
      *(v43 + 12) = 2112;
      *(v43 + 14) = v40;
      *v44 = v40;
      v58 = v40;
      _os_log_impl(&_mh_execute_header, formata, v42, a5, v43, 0x16u);
      sub_1000050A4(v44, &unk_100938E70, &unk_100797230);

      sub_10000607C(v45);
    }

    else
    {
    }
  }
}

void *sub_1007467B8(void *a1)
{
  v2 = [a1 trigger];
  objc_opt_self();
  if (!swift_dynamicCastObjCClass())
  {
    objc_opt_self();
    if (!swift_dynamicCastObjCClass())
    {
      objc_opt_self();
      if (!swift_dynamicCastObjCClass())
      {
        objc_opt_self();
        if (!swift_dynamicCastObjCClass())
        {
          objc_opt_self();
          if (swift_dynamicCastObjCClass())
          {
            if (qword_100936828 != -1)
            {
              swift_once();
            }

            v4 = type metadata accessor for Logger();
            sub_100006654(v4, qword_100951780);
            v5 = Logger.logObject.getter();
            v6 = static os_log_type_t.fault.getter();
            if (os_log_type_enabled(v5, v6))
            {
              v7 = swift_slowAlloc();
              *v7 = 0;
              _os_log_impl(&_mh_execute_header, v5, v6, "This is an incorrect use of API. peopleInteraction origin takes an additional parameter that cannot be deduced solely by the REMAlarm. You need to create the origin enum manually", v7, 2u);
            }

            v2 = v5;
          }

          else
          {
            objc_opt_self();
            v8 = swift_dynamicCastObjCClass();

            if (v8)
            {
              return a1;
            }

            if (qword_100936828 != -1)
            {
              swift_once();
            }

            v9 = type metadata accessor for Logger();
            sub_100006654(v9, qword_100951780);
            v10 = a1;
            v2 = Logger.logObject.getter();
            v11 = static os_log_type_t.fault.getter();

            if (os_log_type_enabled(v2, v11))
            {
              v12 = swift_slowAlloc();
              v13 = swift_slowAlloc();
              *v12 = 138412290;
              v14 = [v10 trigger];
              *(v12 + 4) = v14;
              *v13 = v14;
              _os_log_impl(&_mh_execute_header, v2, v11, "Unable to get infer RDProducerAlarmTrigger enum from trigger {trigger: %@}", v12, 0xCu);
              sub_1000050A4(v13, &unk_100938E70, &unk_100797230);
            }
          }
        }
      }
    }
  }

  return a1;
}

uint64_t sub_100746AC4(void *a1, _TtC7remindd19RDXPCStorePerformer *a2, uint64_t a3, uint64_t (*a4)(void), uint64_t a5)
{
  v316 = a5;
  v317 = a4;
  v305 = a3;
  v318 = a1;
  v319 = a2;
  v314 = type metadata accessor for DispatchWorkItemFlags();
  v313 = *(v314 - 8);
  __chkstk_darwin(v314, v5);
  v311 = &v289 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v312 = type metadata accessor for DispatchQoS();
  v310 = *(v312 - 8);
  __chkstk_darwin(v312, v7);
  v309 = &v289 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v295 = type metadata accessor for Date();
  v294 = *(v295 - 8);
  __chkstk_darwin(v295, v9);
  v289 = &v289 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v292 = type metadata accessor for REMAnalyticsEvent();
  v291 = *(v292 - 8);
  __chkstk_darwin(v292, v11);
  v290 = &v289 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v306 = type metadata accessor for RDUserNotificationAction();
  v304 = *(v306 - 8);
  __chkstk_darwin(v306, v13);
  v293 = (&v289 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v15, v16);
  v296 = &v289 - v17;
  __chkstk_darwin(v18, v19);
  v302 = &v289 - v20;
  __chkstk_darwin(v21, v22);
  v301 = &v289 - v23;
  v24 = type metadata accessor for REMNotificationIdentifier();
  v25 = *(v24 - 8);
  __chkstk_darwin(v24, v26);
  v299 = (&v289 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v28, v29);
  v307 = &v289 - v30;
  __chkstk_darwin(v31, v32);
  v298 = &v289 - v33;
  __chkstk_darwin(v34, v35);
  v303 = &v289 - v36;
  __chkstk_darwin(v37, v38);
  v308 = &v289 - v39;
  __chkstk_darwin(v40, v41);
  v43 = (&v289 - v42);
  __chkstk_darwin(v44, v45);
  v47 = &v289 - v46;
  v48 = type metadata accessor for RDUserNotificationType();
  v49 = *(v48 - 8);
  __chkstk_darwin(v48, v50);
  v300 = (&v289 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v52, v53);
  v55 = &v289 - v54;
  v58 = __chkstk_darwin(v56, v57);
  v60 = &v289 - v59;
  v61 = *(v49 + 2);
  (v61)(&v289 - v59, v319, v48, v58);
  v62 = (*(v49 + 11))(v60, v48);
  v315 = v25;
  if (v62 == enum case for RDUserNotificationType.reminderAlarm(_:))
  {
    (*(v49 + 12))(v60, v48);
    (*(v25 + 32))(v47, v60, v24);
    v63 = v25;
    if (qword_100936828 != -1)
    {
      swift_once();
    }

    v64 = type metadata accessor for Logger();
    v65 = sub_100006654(v64, qword_100951780);
    v66 = *(v25 + 16);
    v66(v43, v47, v24);
    v67 = v24;
    v68 = v318;
    v319 = v65;
    v69 = Logger.logObject.getter();
    v70 = static os_log_type_t.default.getter();

    v71 = os_log_type_enabled(v69, v70);
    v297 = v47;
    v300 = v68;
    v303 = v66;
    if (v71)
    {
      v72 = swift_slowAlloc();
      LODWORD(v298) = v70;
      v73 = v72;
      v299 = swift_slowAlloc();
      aBlock = v299;
      *v73 = 136446466;
      v74 = [(RDXPCStorePerformer *)v68 actionIdentifier];
      v75 = v63;
      v76 = v74;
      v77 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v79 = v78;

      v80 = sub_10000668C(v77, v79, &aBlock);
      v79, v81, v82, v83, v84, v85, v86, v87;
      *(v73 + 4) = v80;
      *(v73 + 12) = 2082;
      v66(v308, v43, v67);
      v88 = String.init<A>(describing:)();
      v90 = v89;
      v318 = *(v75 + 8);
      (v318)(v43, v67);
      v91 = sub_10000668C(v88, v90, &aBlock);
      v90, v92, v93, v94, v95, v96, v97, v98;
      *(v73 + 14) = v91;
      _os_log_impl(&_mh_execute_header, v69, v298, "ReminderAlarm: Processing notification response {actionIdentifier: %{public}s, notificationIdentifier: %{public}s}", v73, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      v318 = *(v63 + 8);
      (v318)(v43, v24);
    }

    v48 = v320;
    v156 = [objc_allocWithZone(REMStore) initWithDaemonController:*(v320 + OBJC_IVAR____TtC7remindd13RDAlarmEngine_daemonController)];
    v157 = REMStore.fetchReminder(notificationIdentifier:includingDueDateDeltaAlerts:)();
    v307 = v67;
    v158 = v157;
    v159 = [v157 objectID];
    v160 = objc_allocWithZone(REMSaveRequest);
    v299 = v156;
    v298 = [v160 initWithStore:v156];
    v303 = v158;
    v308 = [v298 updateReminder:v158];
    v61 = v304;
    v49 = *(v304 + 16);
    v47 = v301;
    v25 = v306;
    (v49)(v301, v305, v306);
    v55 = v159;
    v43 = Logger.logObject.getter();
    v161 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v43, v161))
    {
      v163 = swift_slowAlloc();
      v296 = v49;
      v164 = v163;
      v165 = v47;
      v166 = swift_slowAlloc();
      v293 = swift_slowAlloc();
      aBlock = v293;
      *v164 = 138543618;
      *(v164 + 4) = v55;
      *v166 = v55;
      *(v164 + 12) = 2082;
      v167 = v55;
      v168 = RDUserNotificationAction.rawValue.getter();
      v170 = v169;
      (*(v61 + 8))(v165, v306);
      v171 = sub_10000668C(v168, v170, &aBlock);
      v170, v172, v173, v174, v175, v176, v177, v178;
      *(v164 + 14) = v171;
      _os_log_impl(&_mh_execute_header, v43, v161, "ReminderAlarm: Handle notification action for reminder {reminderID: %{public}@, action: %{public}s}", v164, 0x16u);
      sub_1000050A4(v166, &unk_100938E70, &unk_100797230);

      sub_10000607C(v293);
      v25 = v306;

      v49 = v296;
      v48 = v320;

LABEL_31:
      v179 = v302;
      (v49)(v302, v305, v25);
      v180 = (*(v61 + 88))(v179, v25);
      v181 = v303;
      if (v180 == enum case for RDUserNotificationAction.defaultDismiss(_:))
      {
        [v308 snoozeForever];
        v182 = v297;
LABEL_33:
        v183 = *(v48 + 32);
        v184 = swift_allocObject();
        v185 = v300;
        *(v184 + 16) = v55;
        *(v184 + 24) = v185;
        v325 = sub_100749154;
        v326 = v184;
        aBlock = _NSConcreteStackBlock;
        v322 = 1107296256;
        v323 = sub_100042968;
        v324 = &unk_1008FE080;
        v186 = _Block_copy(&aBlock);
        v187 = v185;
        v188 = v55;

        v189 = v298;
        [v298 saveWithQueue:v183 completion:v186];

        _Block_release(v186);
LABEL_34:
        (v318)(v182, v307);
        goto LABEL_37;
      }

      v182 = v297;
      if (v180 == enum case for RDUserNotificationAction.debugDismiss(_:))
      {
        (v318)(v297, v307);

        goto LABEL_37;
      }

      if (v180 == enum case for RDUserNotificationAction.markAsCompleted(_:))
      {
        type metadata accessor for REMAnalyticsManager();
        static REMAnalyticsManager.shared.getter();
        v202 = sub_1000F5104(&qword_1009511D8, &qword_1007B7440);
        v203 = v290;
        v204 = &v290[v202[12]];
        v205 = v55;
        v206 = v202[16];
        v207 = v48;
        v208 = &v290[v202[20]];
        v209 = enum case for REMUserOperation.markReminderCompletedNotification(_:);
        v210 = type metadata accessor for REMUserOperation();
        (*(*(v210 - 8) + 104))(v203, v209, v210);
        *v204 = 0;
        *(v204 + 1) = 0;
        v211 = &v203[v206];
        v55 = v205;
        (*(v294 + 56))(v211, 1, 1, v295);
        *v208 = 0;
        *(v208 + 1) = 0;
        v48 = v207;
        v182 = v297;
        v212 = v291;
        v213 = v292;
        (*(v291 + 104))(v203, enum case for REMAnalyticsEvent.userOperation(_:), v292);
        REMAnalyticsManager.post(event:)();

        v181 = v303;
        (*(v212 + 8))(v203, v213);
        [v308 setCompleted:1];
        goto LABEL_33;
      }

      if (v180 == enum case for RDUserNotificationAction.snoozeForOneHour(_:))
      {
        [v308 snoozeFromNowForTimeInterval:3600.0];
        goto LABEL_33;
      }

      if (v180 == enum case for RDUserNotificationAction.snoozeForOneDay(_:))
      {
        [v308 snoozeFromDueDateForFutureIntegralMultipleOfTimeInterval:86400.0];
        goto LABEL_33;
      }

      if (v180 == enum case for RDUserNotificationAction.snoozeToNextThirds(_:))
      {
        [v308 snoozeToNextThirds];
        goto LABEL_33;
      }

      if (v180 == enum case for RDUserNotificationAction.snoozeToNextWeekend(_:))
      {
        [v308 snoozeFromDueDateForFutureIntegralMultipleOfTimeInterval:604800.0];
        goto LABEL_33;
      }

      if (v180 == enum case for RDUserNotificationAction.addToReminders(_:))
      {
        v284 = Logger.logObject.getter();
        v285 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v284, v285))
        {
          v286 = swift_slowAlloc();
          *v286 = 0;
          v287 = "ReminderAlarm: Unexpected .addToReminders action for notification type .reminderAlarm";
LABEL_95:
          _os_log_impl(&_mh_execute_header, v284, v285, v287, v286, 2u);

          v288 = &v327;
LABEL_97:

          goto LABEL_34;
        }

        goto LABEL_96;
      }

      if (v180 == enum case for RDUserNotificationAction.viewAssignmentInList(_:))
      {
        v284 = Logger.logObject.getter();
        v285 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v284, v285))
        {
          v286 = swift_slowAlloc();
          *v286 = 0;
          v287 = "ReminderAlarm: Unexpected .viewAssignmentInList action for notification type .reminderAlarm";
          goto LABEL_95;
        }

LABEL_96:

        v288 = &v322;
        goto LABEL_97;
      }

      if (v180 == enum case for RDUserNotificationAction.declineAssignment(_:))
      {
        v284 = Logger.logObject.getter();
        v285 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v284, v285))
        {
          v286 = swift_slowAlloc();
          *v286 = 0;
          v287 = "ReminderAlarm: Unexpected .declineAssignment action for notification type .reminderAlarm";
          goto LABEL_95;
        }

        goto LABEL_96;
      }

      if (v180 == enum case for RDUserNotificationAction.viewRemindersInList(_:))
      {
        v284 = Logger.logObject.getter();
        v285 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v284, v285))
        {
          v286 = swift_slowAlloc();
          *v286 = 0;
          v287 = "ReminderAlarm: Unexpected .viewRemindersInList action for notification type .remindersAlarm";
          goto LABEL_95;
        }

        goto LABEL_96;
      }

LABEL_99:
      result = _diagnoseUnexpectedEnumCase<A>(type:)();
      __break(1u);
      return result;
    }

LABEL_30:

    (*(v61 + 8))(v47, v25);
    goto LABEL_31;
  }

  v307 = v24;
  if (v62 == enum case for RDUserNotificationType.todayNotificationForSingleReminder(_:) || v62 == enum case for RDUserNotificationType.caldavSharedList(_:) || v62 == enum case for RDUserNotificationType.assignmentNotification(_:) || v62 == enum case for RDUserNotificationType.sharedListAddedReminderNotification(_:))
  {
    (*(v49 + 1))(v60, v48);
LABEL_16:
    if (qword_100936828 != -1)
    {
      swift_once();
    }

    v138 = type metadata accessor for Logger();
    sub_100006654(v138, qword_100951780);
    (v61)(v55, v319, v48);
    v139 = v318;
    v140 = Logger.logObject.getter();
    v141 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v140, v141))
    {
      v142 = swift_slowAlloc();
      v318 = swift_slowAlloc();
      v319 = swift_slowAlloc();
      aBlock = v319;
      *v142 = 136315394;
      (v61)(v300, v55, v48);
      v143 = String.init<A>(describing:)();
      v145 = v144;
      (*(v49 + 1))(v55, v48);
      v146 = sub_10000668C(v143, v145, &aBlock);
      v145, v147, v148, v149, v150, v151, v152, v153;
      *(v142 + 4) = v146;
      *(v142 + 12) = 2112;
      *(v142 + 14) = v139;
      v154 = v318;
      *v318 = v139;
      v155 = v139;
      _os_log_impl(&_mh_execute_header, v140, v141, "AlarmEngine didn't expect to receive actions of this type. {type: %s, response: %@}", v142, 0x16u);
      sub_1000050A4(v154, &unk_100938E70, &unk_100797230);

      sub_10000607C(v319);
    }

    else
    {

      (*(v49 + 1))(v55, v48);
    }

    goto LABEL_23;
  }

  if (v62 != enum case for RDUserNotificationType.dueDateDeltaAlarm(_:))
  {
    if (v62 != enum case for RDUserNotificationType.todayNotification(_:) && v62 != enum case for RDUserNotificationType.todayNotificationBadge(_:) && v62 != enum case for RDUserNotificationType.beforeFirstUnlock(_:))
    {
      _diagnoseUnexpectedEnumCase<A>(type:)();
      __break(1u);
      goto LABEL_30;
    }

    goto LABEL_16;
  }

  (*(v49 + 12))(v60, v48);
  v99 = v315;
  v100 = v303;
  v101 = v307;
  (*(v315 + 32))(v303, v60, v307);
  if (qword_100936828 != -1)
  {
    swift_once();
  }

  v102 = type metadata accessor for Logger();
  v103 = sub_100006654(v102, qword_100951780);
  v104 = *(v99 + 16);
  v105 = v298;
  v104(v298, v100, v101);
  v106 = v318;
  v107 = Logger.logObject.getter();
  v108 = static os_log_type_t.default.getter();

  v109 = os_log_type_enabled(v107, v108);
  v301 = v106;
  v302 = v104;
  if (v109)
  {
    v110 = swift_slowAlloc();
    v300 = swift_slowAlloc();
    aBlock = v300;
    *v110 = 136446466;
    v111 = [v106 actionIdentifier];
    v112 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v318 = v103;
    v113 = v112;
    LODWORD(v297) = v108;
    v115 = v114;

    v116 = sub_10000668C(v113, v115, &aBlock);
    v117 = v115;
    v118 = v303;
    v117, v119, v120, v121, v122, v123, v124, v125;
    *(v110 + 4) = v116;
    *(v110 + 12) = 2082;
    v104(v308, v105, v101);
    v126 = String.init<A>(describing:)();
    v128 = v127;
    v319 = *(v99 + 8);
    (v319)(v105, v101);
    v129 = sub_10000668C(v126, v128, &aBlock);
    v130 = v128;
    v103 = v318;
    v130, v131, v132, v133, v134, v135, v136, v137;
    *(v110 + 14) = v129;
    _os_log_impl(&_mh_execute_header, v107, v297, "DueDateDeltaAlarm: Processing notification response {actionIdentifier: %{public}s, notificationIdentifier: %{public}s}", v110, 0x16u);
    swift_arrayDestroy();

    v100 = v118;
  }

  else
  {

    v319 = *(v99 + 8);
    (v319)(v105, v101);
  }

  v201 = [objc_allocWithZone(REMStore) initWithDaemonController:*(v320 + OBJC_IVAR____TtC7remindd13RDAlarmEngine_daemonController)];
  v214 = REMStore.fetchReminder(notificationIdentifier:includingDueDateDeltaAlerts:)();
  v215 = v100;
  v302 = [(RDXPCStorePerformer *)v214 objectID];
  v216 = objc_allocWithZone(REMSaveRequest);
  v308 = v201;
  v217 = [v216 initWithStore:v201];
  v218 = [(RDXPCStorePerformer *)v217 updateReminder:v214];
  v219 = v304;
  v220 = *(v304 + 16);
  v221 = v296;
  v222 = v306;
  v220(v296, v305, v306);
  v223 = (*(v219 + 88))(v221, v222);
  if (v223 != enum case for RDUserNotificationAction.defaultDismiss(_:))
  {
    v300 = v214;
    v318 = v103;
    v234 = v320;
    if (v223 != enum case for RDUserNotificationAction.debugDismiss(_:))
    {
      if (v223 == enum case for RDUserNotificationAction.markAsCompleted(_:))
      {
        type metadata accessor for REMAnalyticsManager();
        static REMAnalyticsManager.shared.getter();
        v235 = sub_1000F5104(&qword_1009511D8, &qword_1007B7440);
        v236 = v235[12];
        v237 = v234;
        v298 = v218;
        v238 = v217;
        v239 = v290;
        v240 = &v290[v236];
        v241 = v235[16];
        v242 = &v290[v235[20]];
        v243 = enum case for REMUserOperation.markReminderCompletedNotification(_:);
        v244 = type metadata accessor for REMUserOperation();
        (*(*(v244 - 8) + 104))(v239, v243, v244);
        *v240 = 0;
        *(v240 + 1) = 0;
        v234 = v237;
        (*(v294 + 56))(&v239[v241], 1, 1, v295);
        *v242 = 0;
        *(v242 + 1) = 0;
        v215 = v303;
        v245 = v291;
        v246 = v292;
        (*(v291 + 104))(v239, enum case for REMAnalyticsEvent.userOperation(_:), v292);
        REMAnalyticsManager.post(event:)();

        v247 = v239;
        v217 = v238;
        v218 = v298;
        (*(v245 + 8))(v247, v246);
        [v218 setCompleted:1];
      }

      else
      {
        if (v223 != enum case for RDUserNotificationAction.snoozeForOneHour(_:) && v223 != enum case for RDUserNotificationAction.snoozeForOneDay(_:) && v223 != enum case for RDUserNotificationAction.snoozeToNextThirds(_:) && v223 != enum case for RDUserNotificationAction.snoozeToNextWeekend(_:) && v223 != enum case for RDUserNotificationAction.addToReminders(_:) && v223 != enum case for RDUserNotificationAction.viewAssignmentInList(_:) && v223 != enum case for RDUserNotificationAction.declineAssignment(_:) && v223 != enum case for RDUserNotificationAction.viewRemindersInList(_:))
        {
          _diagnoseUnexpectedEnumCase<A>(type:)();
          __break(1u);
          goto LABEL_99;
        }

        v248 = Logger.logObject.getter();
        v249 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v248, v249))
        {
          v250 = swift_slowAlloc();
          *v250 = 0;
          _os_log_impl(&_mh_execute_header, v248, v249, "DueDateDeltaAlarm: Unexpected action for notification type .dueDateDeltaAlarm", v250, 2u);
        }
      }
    }

    goto LABEL_72;
  }

  v224 = [v218 dueDateDeltaAlertContext];
  if (!v224)
  {
LABEL_77:
    v281 = Logger.logObject.getter();
    v282 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v281, v282))
    {
      v283 = swift_slowAlloc();
      *v283 = 0;
      _os_log_impl(&_mh_execute_header, v281, v282, "DueDateDeltaAlarm: Unable to get early alert context to set ackDate.", v283, 2u);
    }

    else
    {
    }

    return (v319)(v215, v307);
  }

  v225 = v224;
  v300 = v214;
  v226 = v218;
  v227 = [v218 fetchedCurrentDueDateDeltaAlert];
  v228 = v320;
  if (!v227)
  {

    v214 = v300;
    v218 = v226;
    goto LABEL_77;
  }

  v229 = v227;
  v318 = v103;
  v230 = [v225 updateDueDateDeltaAlert:v227];
  v231 = v289;
  Date.init()();
  isa = Date._bridgeToObjectiveC()().super.isa;
  (*(v294 + 8))(v231, v295);
  v233 = [v230 setAcknowledgedDate:isa];

  v215 = v303;
  v234 = v228;
  v218 = v226;
LABEL_72:
  v299 = v217;
  v251 = *(v234 + 32);
  v252 = swift_allocObject();
  v253 = v302;
  v254 = v301;
  *(v252 + 16) = v302;
  *(v252 + 24) = v254;
  v325 = sub_100749128;
  v326 = v252;
  aBlock = _NSConcreteStackBlock;
  v322 = 1107296256;
  v323 = sub_100042968;
  v324 = &unk_1008FE030;
  v255 = _Block_copy(&aBlock);
  v256 = v254;
  v257 = v253;

  [(RDXPCStorePerformer *)v217 saveWithQueue:v251 completion:v255];
  _Block_release(v255);
  v258 = v293;
  v259 = v306;
  v220(v293, v305, v306);
  v260 = v257;
  v261 = Logger.logObject.getter();
  v262 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v261, v262))
  {
    v263 = swift_slowAlloc();
    v298 = v218;
    v264 = v258;
    v265 = v263;
    v266 = swift_slowAlloc();
    v267 = swift_slowAlloc();
    aBlock = v267;
    *v265 = 138543618;
    *(v265 + 4) = v260;
    *v266 = v260;
    *(v265 + 12) = 2082;
    v268 = v260;
    v269 = RDUserNotificationAction.rawValue.getter();
    v271 = v270;
    (*(v304 + 8))(v264, v259);
    v272 = sub_10000668C(v269, v271, &aBlock);
    v271, v273, v274, v275, v276, v277, v278, v279;
    *(v265 + 14) = v272;
    _os_log_impl(&_mh_execute_header, v261, v262, "DueDateDeltaAlarm: Handle notification action for reminder {reminderID: %{public}@, action: %{public}s}", v265, 0x16u);
    sub_1000050A4(v266, &unk_100938E70, &unk_100797230);

    sub_10000607C(v267);

    v280 = v303;
  }

  else
  {

    (*(v304 + 8))(v258, v259);
    v280 = v215;
  }

  (v319)(v280, v307);
LABEL_23:
  v48 = v320;
LABEL_37:
  v190 = *(v48 + OBJC_IVAR____TtC7remindd13RDAlarmEngine_beforeFirstUnlockNotificationEngine);
  if (v190)
  {
    sub_1000060C8(0, &qword_10093E6E0, OS_dispatch_queue_ptr);

    v191 = static OS_dispatch_queue.main.getter();
    v325 = sub_100749124;
    v326 = v190;
    aBlock = _NSConcreteStackBlock;
    v322 = 1107296256;
    v323 = sub_100019200;
    v324 = &unk_1008FDFE0;
    v192 = _Block_copy(&aBlock);

    v193 = v309;
    static DispatchQoS.unspecified.getter();
    aBlock = &_swiftEmptyArrayStorage;
    sub_10000AB38();
    sub_1000F5104(&unk_100939E50, &unk_100791AD0);
    sub_10000AB90();
    v194 = v311;
    v195 = v314;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v192);

    (*(v313 + 8))(v194, v195);
    (*(v310 + 8))(v193, v312);
  }

  if (qword_100936828 != -1)
  {
    swift_once();
  }

  v196 = type metadata accessor for Logger();
  sub_100006654(v196, qword_100951780);
  v197 = Logger.logObject.getter();
  v198 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v197, v198))
  {
    v199 = swift_slowAlloc();
    *v199 = 0;
    _os_log_impl(&_mh_execute_header, v197, v198, "Completing action handler by calling completionHandler now.", v199, 2u);
  }

  return v317();
}

void sub_100749188()
{
  if (qword_100936828 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_100006654(v0, qword_100951780);
  oslog = Logger.logObject.getter();
  v1 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, oslog, v1, "os_transaction RELEASE {name: com.apple.remindd.RDAlarmEngine.alarmDatabaseDidChange}", v2, 2u);
  }
}

uint64_t initializeWithCopy for RDProducerAlarmOrigin(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  sub_1001A3944(*a2, v4, v5, v6);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  return a1;
}

uint64_t assignWithCopy for RDProducerAlarmOrigin(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  sub_1001A3944(*a2, v4, v5, v6);
  v7 = *a1;
  v8 = *(a1 + 8);
  v9 = *(a1 + 16);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  v10 = *(a1 + 24);
  *(a1 + 24) = v6;
  sub_1001A39AC(v7, v8, v9, v10);
  return a1;
}

__n128 initializeWithTake for RDProducerAlarmOrigin(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t assignWithTake for RDProducerAlarmOrigin(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(a2 + 24);
  v5 = *a1;
  v7 = *(a1 + 8);
  v6 = *(a1 + 16);
  *a1 = *a2;
  *(a1 + 16) = v3;
  v8 = *(a1 + 24);
  *(a1 + 24) = v4;
  sub_1001A39AC(v5, v7, v6, v8);
  return a1;
}

uint64_t getEnumTagSinglePayload for RDProducerAlarmOrigin(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && *(a1 + 25))
  {
    return (*a1 + 252);
  }

  v3 = *(a1 + 24);
  if (v3 <= 4)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for RDProducerAlarmOrigin(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 252;
    if (a3 >= 0xFC)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 24) = -a2;
    }
  }

  return result;
}

double destroy for RDProducerAlarm(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  v5 = *(a1 + 32);

  return sub_1001A39AC(v2, v3, v4, v5);
}

uint64_t initializeWithCopy for RDProducerAlarm(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  *a1 = *a2;
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  v8 = *(a2 + 32);
  v9 = v4;
  sub_1001A3944(v5, v6, v7, v8);
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  *(a1 + 32) = v8;
  *(a1 + 33) = *(a2 + 33);
  *(a1 + 34) = *(a2 + 34);
  return a1;
}

uint64_t assignWithCopy for RDProducerAlarm(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *a1;
  *a1 = *a2;
  v6 = v4;

  v7 = *(a2 + 8);
  v8 = *(a2 + 16);
  v9 = *(a2 + 24);
  v10 = *(a2 + 32);
  sub_1001A3944(v7, v8, v9, v10);
  v11 = *(a1 + 8);
  v12 = *(a1 + 16);
  v13 = *(a1 + 24);
  *(a1 + 8) = v7;
  *(a1 + 16) = v8;
  *(a1 + 24) = v9;
  v14 = *(a1 + 32);
  *(a1 + 32) = v10;
  sub_1001A39AC(v11, v12, v13, v14);
  *(a1 + 33) = *(a2 + 33);
  *(a1 + 34) = *(a2 + 34);
  return a1;
}

__n128 initializeWithTake for RDProducerAlarm(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 31) = *(a2 + 31);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t assignWithTake for RDProducerAlarm(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  *a1 = *a2;

  v5 = *(a2 + 24);
  v6 = *(a2 + 32);
  v7 = *(a1 + 8);
  v8 = *(a1 + 16);
  v9 = *(a1 + 24);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = v5;
  v10 = *(a1 + 32);
  *(a1 + 32) = v6;
  sub_1001A39AC(v7, v8, v9, v10);
  *(a1 + 33) = *(a2 + 33);
  *(a1 + 34) = *(a2 + 34);
  return a1;
}

uint64_t getEnumTagSinglePayload for RDProducerAlarm(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 35))
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

uint64_t storeEnumTagSinglePayload for RDProducerAlarm(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 34) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 35) = 1;
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

    *(result + 35) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1007496F8()
{
  result = qword_100951888;
  if (!qword_100951888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100951888);
  }

  return result;
}

unint64_t sub_100749760()
{
  result = qword_100951890;
  if (!qword_100951890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100951890);
  }

  return result;
}

uint64_t sub_1007497C4()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_100951898);
  v1 = sub_100006654(v0, qword_100951898);
  if (qword_100936420 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_100974FA8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

double sub_10074988C(uint64_t a1, double a2, double a3, double a4)
{
  v4 = a2;
  v5 = *(a1 + 40);
  v6 = *(a1 + 32);
  if (v5 < 5)
  {
LABEL_2:
    v7 = 0xE700000000000000;
    v8 = 0x746C7561666544;
    goto LABEL_13;
  }

  v9 = a2 + 1.0;
  if (v6 <= 0.0 || v6 > v9)
  {
    if (v9 >= v6 || v6 > v4 + v4 + 1.0)
    {
      goto LABEL_2;
    }

    v7 = 0xE600000000000000;
    v8 = 0x6D756964654DLL;
    v4 = a4;
  }

  else
  {
    v7 = 0xE400000000000000;
    v8 = 1751607624;
    v4 = a3;
  }

LABEL_13:
  if (qword_100936830 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  sub_100006654(v12, qword_100951898);

  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();
  v7, v15, v16, v17, v18, v19, v20, v21;
  if (os_log_type_enabled(v13, v14))
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v40 = v30;
    *v29 = 136315906;
    v31 = sub_10000668C(v8, v7, &v40);
    v7, v32, v33, v34, v35, v36, v37, v38;
    *(v29 + 4) = v31;
    *(v29 + 12) = 2048;
    *(v29 + 14) = v4;
    *(v29 + 22) = 2048;
    *(v29 + 24) = v6;
    *(v29 + 32) = 2048;
    *(v29 + 34) = v5;
    _os_log_impl(&_mh_execute_header, v13, v14, "RDAlarmEngine:debouncePolicy: DB load is '%s', debounce interval to use: %f s, stats: {average: %f, #sample: %ld}", v29, 0x2Au);
    sub_10000607C(v30);
  }

  else
  {
    v7, v22, v23, v24, v25, v26, v27, v28;
  }

  return v4;
}

void sub_100749A90(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6, uint64_t a7)
{
  sub_1000F5104(&qword_1009518B0, &qword_1007B7E50);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_100792CF0;
  *(v13 + 56) = type metadata accessor for RDTimeAlarmProducer();
  *(v13 + 64) = sub_100749DCC(&qword_10093FEC0, type metadata accessor for RDTimeAlarmProducer, &unk_1007A6A04);
  *(v13 + 32) = a2;
  *(v13 + 96) = type metadata accessor for RDDueDateDeltaAlarmProducer();
  *(v13 + 104) = sub_100749DCC(&qword_10093FEC8, type metadata accessor for RDDueDateDeltaAlarmProducer, &unk_1007ACAAC);
  *(v13 + 72) = a3;
  *(v13 + 136) = type metadata accessor for RDLocationAlarmProducer();
  *(v13 + 144) = sub_100749DCC(&qword_10093FED8, type metadata accessor for RDLocationAlarmProducer, &unk_1007B2BE8);
  *(v13 + 112) = a4;
  *(v13 + 176) = type metadata accessor for RDVehicleAlarmProducer();
  *(v13 + 184) = sub_100749DCC(&qword_10093FED0, type metadata accessor for RDVehicleAlarmProducer, &unk_1007AE798);
  *(v13 + 152) = a5;
  *(v13 + 216) = type metadata accessor for RDContactInteractionAlarmProducer();
  *(v13 + 224) = sub_100749DCC(&qword_10093FEB8, type metadata accessor for RDContactInteractionAlarmProducer, &unk_10079EEA4);
  *(v13 + 192) = a6;
  sub_1000F5104(&qword_1009518B8, &qword_1007B7E58);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_100791300;
  *(v14 + 56) = type metadata accessor for RDAlarmNotificationConsumer();
  *(v14 + 64) = &off_1008ECC20;
  *(v14 + 32) = a7;
  v15 = a2;
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v19 = a6;

  sub_100745DF4(v13, v14);
  v13, v20, v21, v22, v23, v24, v25, v26;
  v14, v27, v28, v29, v30, v31, v32, v33;
  if (qword_100936830 != -1)
  {
    swift_once();
  }

  v34 = type metadata accessor for Logger();
  sub_100006654(v34, qword_100951898);
  oslog = Logger.logObject.getter();
  v35 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(oslog, v35))
  {
    v36 = swift_slowAlloc();
    *v36 = 0;
    _os_log_impl(&_mh_execute_header, oslog, v35, "os_transaction RELEASE {name: com.apple.remindd.RDAlarmEngineAssembly}", v36, 2u);
  }
}

uint64_t sub_100749DCC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100749E14()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_1009518C0);
  v1 = sub_100006654(v0, qword_1009518C0);
  if (qword_1009364D8 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_1009751D0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void sub_100749EDC(uint64_t a1@<X0>, _TtC7remindd19RDXPCStorePerformer *a2@<X1>, _TtC7remindd19RDXPCStorePerformer *a3@<X2>, _TtC7remindd19RDXPCStorePerformer *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v198 = a3;
  v196 = a1;
  v186 = a6;
  v185 = type metadata accessor for REMRemindersListDataView.GroupSectionsModel();
  __chkstk_darwin(v185, v9);
  v203 = &v172 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v190 = type metadata accessor for REMRemindersListDataView.ListsSectionsModel();
  v195 = *(v190 - 8);
  __chkstk_darwin(v190, v11);
  v184 = &v172 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13, v14);
  v202 = &v172 - v15;
  v16 = sub_1000F5104(&qword_10094B8E0, &unk_1007AABD0);
  __chkstk_darwin(v16 - 8, v17);
  v181 = &v172 - v18;
  v204 = type metadata accessor for REMRemindersListDataView.ListsSectionsModel.List();
  v182 = *&v204[-1].shareRecordIDToRootRecordIDLock[2];
  __chkstk_darwin(v204, v19);
  v188 = &v172 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21, v22);
  v201 = (&v172 - v23);
  v189 = type metadata accessor for REMRemindersListDataView.RemindersPrefetch();
  v193 = *(v189 - 8);
  __chkstk_darwin(v189, v24);
  v187 = &v172 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26, v27);
  v191 = &v172 - v28;
  Configuration = type metadata accessor for REMRemindersListDataView.FetchConfiguration();
  v194 = *(Configuration - 8);
  __chkstk_darwin(Configuration, v29);
  v31 = &v172 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v32, v33);
  v35 = &v172 - v34;
  v36 = type metadata accessor for REMRemindersListDataView.Diff();
  v183 = *(v36 - 8);
  __chkstk_darwin(v36, v37);
  v39 = &v172 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v40, v41);
  v43 = &v172 - v42;
  v200 = a5;
  v44 = REMRemindersListDataView.GroupSectionsInvocation.Parameters.group.getter();
  v199 = a4;
  v45 = v205;
  v46 = sub_10074C5B4(a2, a4, v44);

  if (v45)
  {
    return;
  }

  v47 = v197;
  v205 = v46;
  v178 = v31;
  v179 = v39;
  v180 = v43;
  v177 = v36;
  v48 = a2;
  v49 = v199;
  v50 = sub_10074D280(v196, a2, v198, v199, v200);
  v52 = v51;
  v53 = v50;
  v54 = [v47 fetchResultTokenToDiffAgainst];
  v55 = v180;
  sub_100534D44(v54, v180);
  v196 = 0;
  v175 = v52;

  REMRemindersListDataView.GroupSectionsInvocation.Parameters.configuration.getter();
  REMRemindersListDataView.FetchConfiguration.remindersPrefetch.getter();
  v56 = v194 + 8;
  v174 = *(v194 + 8);
  v174(v35, Configuration);
  v57 = v193;
  v58 = v187;
  v59 = v189;
  (*(v193 + 16))();
  v60 = (*(v57 + 88))(v58, v59);
  v194 = v56;
  v176 = v53;
  if (v60 != enum case for REMRemindersListDataView.RemindersPrefetch.initial(_:))
  {
    v63 = v202;
    v94 = v179;
    if (v60 == enum case for REMRemindersListDataView.RemindersPrefetch.updatedInserted(_:))
    {
      v95 = v193;
      v96 = v187;
      (*(v193 + 96))(v187, v59);
      v204 = sub_10053E698(*v96, v55, v48, v49, 0);
      (*(v95 + 8))(v191, v59);
      v97 = v190;
      v98 = v195;
    }

    else
    {
      v173 = v48;
      v99 = v182;
      if (v60 != enum case for REMRemindersListDataView.RemindersPrefetch.initialAndDateRange(_:))
      {
        if (v60 != enum case for REMRemindersListDataView.RemindersPrefetch.none(_:))
        {
          goto LABEL_58;
        }

        (*(v193 + 8))(v191, v59);
        v204 = &_swiftEmptyArrayStorage;
        v98 = v195;
        v148 = v178;
        v97 = v190;
        v147 = v183;
        goto LABEL_48;
      }

      v100 = v187;
      (*(v193 + 96))(v187, v59);
      v172 = *v100;
      v101 = sub_1000F5104(&qword_100938A78, &qword_1007AABE0);
      sub_100031B58(v100 + *(v101 + 48), v181, &qword_10094B8E0, &unk_1007AABD0);
      v102 = *v176->clientIdentity;
      if (v102)
      {
        v104 = *(v99 + 16);
        v103 = v99 + 16;
        v201 = v104;
        v105 = v176 + ((*(v103 + 64) + 32) & ~*(v103 + 64));
        v197 = *(v103 + 56);
        v198 = (v103 - 8);
        v106 = &_swiftEmptyArrayStorage;
        v107 = v204;
        v108 = v188;
        v104(v188, v105, v204);
        while (1)
        {
          v109 = REMRemindersListDataView.ListsSectionsModel.List.sections.getter();
          (v198->super.isa)(v108, v107);
          v110 = *(v109 + 16);
          v111 = *v106->clientIdentity;
          v112 = v111 + v110;
          if (__OFADD__(v111, v110))
          {
            goto LABEL_54;
          }

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          if (!isUniquelyReferenced_nonNull_native || v112 > *&v106->clientIdentity[8] >> 1)
          {
            if (v111 <= v112)
            {
              v121 = v111 + v110;
            }

            else
            {
              v121 = v111;
            }

            v106 = sub_100365A4C(isUniquelyReferenced_nonNull_native, v121, 1, v106);
          }

          v107 = v204;
          if (*(v109 + 16))
          {
            v122 = (*&v106->clientIdentity[8] >> 1) - *v106->clientIdentity;
            type metadata accessor for REMRemindersListDataView.SectionLite();
            if (v122 < v110)
            {
              goto LABEL_56;
            }

            swift_arrayInitWithCopy();
            v109, v123, v124, v125, v126, v127, v128, v129;
            v98 = v195;
            v108 = v188;
            if (v110)
            {
              v130 = *v106->clientIdentity;
              v92 = __OFADD__(v130, v110);
              v131 = v130 + v110;
              if (v92)
              {
                goto LABEL_57;
              }

              *v106->clientIdentity = v131;
            }
          }

          else
          {
            v109, v114, v115, v116, v117, v118, v119, v120;
            v98 = v195;
            if (v110)
            {
              goto LABEL_55;
            }
          }

          v105 += v197;
          if (!--v102)
          {
            break;
          }

          v201(v108, v105, v107);
        }
      }

      else
      {
        v106 = &_swiftEmptyArrayStorage;
        v98 = v195;
      }

      v149 = Array<A>.reminders.getter();
      v106, v150, v151, v152, v153, v154, v155, v156;
      v157 = v173;
      v158 = v199;
      v204 = sub_10053DB98(v172, v149, v173, v199, 0);
      v159 = v181;
      sub_10053EBE4(v181, v149, v157, v158, 0);
      v149, v160, v161, v162, v163, v164, v165, v166;
      sub_1000050A4(v159, &qword_10094B8E0, &unk_1007AABD0);
      (*(v193 + 8))(v191, v189);
      v63 = v202;
      v94 = v179;
      v97 = v190;
    }

    v147 = v183;
LABEL_47:
    v148 = v178;
LABEL_48:
    v167 = v148;
    REMRemindersListDataView.GroupSectionsInvocation.Parameters.configuration.getter();
    REMRemindersListDataView.FetchConfiguration.countCompleted.getter();
    v174(v167, Configuration);
    REMRemindersListDataView.ListsSectionsModel.init(lists:completedRemindersCount:hasCompletedReminders:prefetchedReminders:prefetchedDueReminders:)();
    (*(v98 + 16))(v184, v63, v97);
    v168 = v205;
    REMRemindersListDataView.GroupSectionsModel.init(listSections:group:)();
    v169 = v94;
    v170 = v180;
    v171 = v177;
    (*(v147 + 16))(v169, v180, v177);
    sub_10074DBA4(&qword_1009505E8, &type metadata accessor for REMRemindersListDataView.GroupSectionsModel, &protocol conformance descriptor for REMRemindersListDataView.GroupSectionsModel);
    sub_10074DBA4(&qword_1009505F0, &type metadata accessor for REMRemindersListDataView.GroupSectionsModel, &protocol conformance descriptor for REMRemindersListDataView.GroupSectionsModel);
    REMRemindersListDataView.DefaultInvocationResult.init(model:diff:)();

    (*(v98 + 8))(v63, v190);
    (*(v147 + 8))(v170, v171);
    return;
  }

  v173 = v48;
  (*(v57 + 96))(v58, v59);
  v188 = *v58;
  v61 = *v53->clientIdentity;
  v62 = v53;
  v63 = v202;
  if (!v61)
  {
    v66 = &_swiftEmptyArrayStorage;
LABEL_41:
    v132 = Array<A>.reminders.getter();
    v66, v133, v134, v135, v136, v137, v138, v139;
    v204 = sub_10053DB98(v188, v132, v173, v199, 0);
    v132, v140, v141, v142, v143, v144, v145, v146;
    (*(v193 + 8))(v191, v189);
    v97 = v190;
    v98 = v195;
    v147 = v183;
    v94 = v179;
    goto LABEL_47;
  }

  v198 = *(v182 + 16);
  v64 = v62 + ((*(v182 + 80) + 32) & ~*(v182 + 80));
  v197 = *(v182 + 72);
  v65 = (v182 + 8);
  v66 = &_swiftEmptyArrayStorage;
  v67 = v201;
  while (1)
  {
    v68 = v67;
    v69 = v204;
    (v198)(v67, v64, v204);
    v70 = REMRemindersListDataView.ListsSectionsModel.List.sections.getter();
    (*v65)(v68, v69);
    v71 = *(v70 + 16);
    v72 = *v66->clientIdentity;
    v73 = v72 + v71;
    if (__OFADD__(v72, v71))
    {
      break;
    }

    v74 = swift_isUniquelyReferenced_nonNull_native();
    if (v74 && v73 <= *&v66->clientIdentity[8] >> 1)
    {
      if (*(v70 + 16))
      {
        goto LABEL_16;
      }
    }

    else
    {
      if (v72 <= v73)
      {
        v82 = v72 + v71;
      }

      else
      {
        v82 = v72;
      }

      v66 = sub_100365A4C(v74, v82, 1, v66);
      if (*(v70 + 16))
      {
LABEL_16:
        v83 = (*&v66->clientIdentity[8] >> 1) - *v66->clientIdentity;
        type metadata accessor for REMRemindersListDataView.SectionLite();
        if (v83 < v71)
        {
          goto LABEL_52;
        }

        swift_arrayInitWithCopy();
        v70, v84, v85, v86, v87, v88, v89, v90;
        v63 = v202;
        v67 = v201;
        if (v71)
        {
          v91 = *v66->clientIdentity;
          v92 = __OFADD__(v91, v71);
          v93 = v91 + v71;
          if (v92)
          {
            goto LABEL_53;
          }

          *v66->clientIdentity = v93;
        }

        goto LABEL_6;
      }
    }

    v70, v75, v76, v77, v78, v79, v80, v81;
    v63 = v202;
    v67 = v201;
    if (v71)
    {
      goto LABEL_51;
    }

LABEL_6:
    v64 += v197;
    if (!--v61)
    {
      goto LABEL_41;
    }
  }

  __break(1u);
LABEL_51:
  __break(1u);
LABEL_52:
  __break(1u);
LABEL_53:
  __break(1u);
LABEL_54:
  __break(1u);
LABEL_55:
  __break(1u);
LABEL_56:
  __break(1u);
LABEL_57:
  __break(1u);
LABEL_58:
  _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
}

uint64_t sub_10074AC7C@<X0>(void **a1@<X0>, void (*a2)(char *, uint64_t)@<X1>, uint64_t a3@<X2>, _TtC7remindd19RDXPCStorePerformer *a4@<X3>, uint64_t a5@<X4>, _TtC7remindd19RDXPCStorePerformer *a6@<X5>, uint64_t a7@<X6>, void *a8@<X7>, uint64_t a9@<X8>, uint64_t *a11)
{
  v100 = a6;
  v88 = a8;
  v95 = a7;
  v96 = a3;
  v97 = a4;
  v98 = a5;
  v99 = a2;
  v83 = a9;
  v87 = type metadata accessor for REMRemindersListDataView.ListsSectionsModel.List.ListType();
  v90 = *(v87 - 8);
  __chkstk_darwin(v87, v12);
  v82 = &v78 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14, v15);
  v91 = &v78 - v16;
  __chkstk_darwin(v17, v18);
  v94 = &v78 - v19;
  v93 = type metadata accessor for REMRemindersListDataView.SectionsModel();
  v102 = *(v93 - 8);
  __chkstk_darwin(v93, v20);
  v81 = &v78 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22, v23);
  v86 = &v78 - v24;
  v92 = type metadata accessor for REMRemindersListDataView.ListSectionsModel();
  v103 = *(v92 - 8);
  __chkstk_darwin(v92, v25);
  v89 = &v78 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27, v28);
  v84 = &v78 - v29;
  v30 = sub_1000F5104(&qword_100938A70, &qword_1007ACC60);
  __chkstk_darwin(v30 - 8, v31);
  v85 = &v78 - v32;
  Configuration = type metadata accessor for REMRemindersListDataView.FetchConfiguration();
  __chkstk_darwin(Configuration - 8, v34);
  v35 = type metadata accessor for REMRemindersListDataView.ListSectionsInvocation.Parameters();
  v36 = *(v35 - 8);
  __chkstk_darwin(v35, v37);
  v39 = &v78 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = sub_1000F5104(&qword_100950618, &qword_1007B66F0);
  v80 = *(v40 - 8);
  __chkstk_darwin(v40, v41);
  v43 = &v78 - v42;
  v44 = *a1;
  REMList.codable.getter();
  REMRemindersListDataView.GroupSectionsInvocation.Parameters.configuration.getter();
  REMRemindersListDataView.ListSectionsInvocation.Parameters.init(list:configuration:)();
  v45 = v101;
  sub_1005B1AA0(v97, v98, v100, v39, v43);
  if (v45)
  {
    result = (*(v36 + 8))(v39, v35);
    *a11 = v45;
  }

  else
  {
    v47 = v87;
    (*(v36 + 8))(v39, v35);
    v48 = v84;
    v101 = v40;
    REMRemindersListDataView.DefaultInvocationResult.model.getter();
    v49 = v86;
    REMRemindersListDataView.ListSectionsModel.sectionsModel.getter();
    v50 = *(v103 + 8);
    v103 += 8;
    v100 = v50;
    (v50)(v48, v92);
    v51 = v85;
    REMRemindersListDataView.SectionsModel.remindersCount.getter();
    v52 = v102 + 8;
    v99 = *(v102 + 8);
    v99(v49, v93);
    v53 = type metadata accessor for REMRemindersListDataView.CountByCompleted();
    v54 = *(v53 - 8);
    v55 = (*(v54 + 48))(v51, 1, v53);
    v79 = v43;
    if (v55 == 1)
    {
      result = sub_1000050A4(v51, &qword_100938A70, &qword_1007ACC60);
      v56 = 0;
    }

    else
    {
      v56 = REMRemindersListDataView.CountByCompleted.completed.getter();
      result = (*(v54 + 8))(v51, v53);
    }

    v57 = v47;
    v58 = v94;
    v60 = v90;
    v59 = v91;
    if (__OFADD__(*v88, v56))
    {
      __break(1u);
    }

    else
    {
      v61 = v44;
      v62 = v89;
      *v88 += v56;
      v63 = [v61 groceryContext];
      if (v63 && (v64 = v63, v65 = [v63 shouldCategorizeGroceryItems], v64, v59 = v91, (v65 & 1) != 0))
      {
        v66 = &enum case for REMRemindersListDataView.ListsSectionsModel.List.ListType.grocery(_:);
      }

      else
      {
        v66 = &enum case for REMRemindersListDataView.ListsSectionsModel.List.ListType.regular(_:);
      }

      (*(v60 + 104))(v59, *v66, v57);
      (*(v60 + 32))(v58, v59, v57);
      v67 = [v61 objectID];
      v98 = REMObjectID.codable.getter();

      v68 = [v61 displayName];
      v69 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v96 = v70;
      v97 = v69;

      v71 = [v61 color];
      v102 = v52;
      if (v71)
      {
        v72 = v71;
        v95 = REMColor.codable.getter();
      }

      else
      {
        v95 = 0;
      }

      v73 = v94;
      (*(v60 + 16))(v82, v94, v57);
      v74 = v101;
      v75 = v79;
      REMRemindersListDataView.DefaultInvocationResult.model.getter();
      v76 = v62;
      v77 = v81;
      REMRemindersListDataView.ListSectionsModel.sectionsModel.getter();
      (v100)(v76, v92);
      REMRemindersListDataView.SectionsModel.sections.getter();
      v99(v77, v93);
      REMRemindersListDataView.ListsSectionsModel.List.init(listID:listName:listColor:listType:sections:)();
      (*(v60 + 8))(v73, v57);
      return (*(v80 + 8))(v75, v74);
    }
  }

  return result;
}

uint64_t sub_10074B464@<X0>(uint64_t (**a1)(char *, uint64_t)@<X0>, void (*a2)(char *, uint64_t)@<X1>, uint64_t a3@<X2>, _TtC7remindd19RDXPCStorePerformer *a4@<X3>, uint64_t a5@<X4>, void *a6@<X5>, uint64_t a7@<X6>, void *a8@<X7>, uint64_t a9@<X8>, uint64_t (**a11)(char *, uint64_t))
{
  v86 = a6;
  v77 = a8;
  v81 = a7;
  v82 = a3;
  v83 = a4;
  v84 = a5;
  v85 = a2;
  v67 = a9;
  v71 = type metadata accessor for REMRemindersListDataView.ListsSectionsModel.List.ListType();
  v78 = *(v71 - 8);
  __chkstk_darwin(v71, v12);
  v72 = &v67 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = type metadata accessor for REMRemindersListDataView.SectionsModel();
  v88 = *(v79 - 8);
  __chkstk_darwin(v79, v14);
  v70 = &v67 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16, v17);
  v74 = &v67 - v18;
  v19 = type metadata accessor for REMRemindersListDataView.CustomSmartListSectionsModel();
  v75 = *(v19 - 8);
  v76 = v19;
  __chkstk_darwin(v19, v20);
  v69 = &v67 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22, v23);
  v73 = &v67 - v24;
  v25 = sub_1000F5104(&qword_100938A70, &qword_1007ACC60);
  __chkstk_darwin(v25 - 8, v26);
  v80 = &v67 - v27;
  Configuration = type metadata accessor for REMRemindersListDataView.FetchConfiguration();
  __chkstk_darwin(Configuration - 8, v29);
  v30 = type metadata accessor for REMRemindersListDataView.CustomSmartListSectionsInvocation.Parameters();
  v31 = *(v30 - 8);
  __chkstk_darwin(v30, v32);
  v34 = &v67 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_1000F5104(&qword_100950B08, &qword_1007B6940);
  v68 = *(v35 - 1);
  __chkstk_darwin(v35, v36);
  v38 = &v67 - v37;
  v39 = *a1;
  REMSmartList.codable.getter();
  REMRemindersListDataView.GroupSectionsInvocation.Parameters.configuration.getter();
  REMRemindersListDataView.CustomSmartListSectionsInvocation.Parameters.init(smartList:shouldFetchManualOrderingID:configuration:)();
  v40 = v87;
  sub_10012BCB4(v83, v84, v86, v34, v38);
  if (v40)
  {
    result = (*(v31 + 8))(v34, v30);
    *a11 = v40;
  }

  else
  {
    v87 = v39;
    (*(v31 + 8))(v34, v30);
    v42 = v73;
    v86 = v35;
    REMRemindersListDataView.DefaultInvocationResult.model.getter();
    v43 = v74;
    REMRemindersListDataView.CustomSmartListSectionsModel.sectionsModel.getter();
    v44 = *(v75 + 8);
    v45 = v42;
    v46 = v76;
    v44(v45, v76);
    v47 = v80;
    REMRemindersListDataView.SectionsModel.remindersCount.getter();
    v48 = *(v88 + 8);
    v88 += 8;
    v85 = v48;
    v48(v43, v79);
    v49 = type metadata accessor for REMRemindersListDataView.CountByCompleted();
    v50 = *(v49 - 8);
    if ((*(v50 + 48))(v47, 1, v49) == 1)
    {
      result = sub_1000050A4(v80, &qword_100938A70, &qword_1007ACC60);
      v51 = 0;
    }

    else
    {
      v52 = v80;
      v51 = REMRemindersListDataView.CountByCompleted.completed.getter();
      result = (*(v50 + 8))(v52, v49);
    }

    v53 = v87;
    v54 = v78;
    v55 = *v77 + v51;
    if (__OFADD__(*v77, v51))
    {
      __break(1u);
    }

    else
    {
      v87 = v44;
      *v77 = v55;
      v56 = [v53 objectID];
      v84 = REMObjectID.codable.getter();

      v57 = [v53 name];
      v58 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v82 = v59;
      v83 = v58;

      v60 = [v53 color];
      if (v60)
      {
        v61 = v60;
        v62 = v38;
        v63 = v46;
        v81 = REMColor.codable.getter();
      }

      else
      {
        v62 = v38;
        v63 = v46;
        v81 = 0;
      }

      (*(v54 + 104))(v72, enum case for REMRemindersListDataView.ListsSectionsModel.List.ListType.customSmartList(_:), v71);
      v64 = v69;
      v65 = v86;
      REMRemindersListDataView.DefaultInvocationResult.model.getter();
      v66 = v70;
      REMRemindersListDataView.CustomSmartListSectionsModel.sectionsModel.getter();
      v87(v64, v63);
      REMRemindersListDataView.SectionsModel.sections.getter();
      v85(v66, v79);
      REMRemindersListDataView.ListsSectionsModel.List.init(listID:listName:listColor:listType:sections:)();
      return (*(v68 + 8))(v62, v65);
    }
  }

  return result;
}

uint64_t sub_10074BB9C(uint64_t a1)
{
  result = sub_10074DBA4(&qword_1009518F8, &type metadata accessor for REMRemindersListDataView.GroupSectionsInvocation, &protocol conformance descriptor for REMRemindersListDataView.GroupSectionsInvocation);
  *(a1 + 8) = result;
  return result;
}

void sub_10074BC28(uint64_t a1, int a2, void *a3)
{
  v7 = type metadata accessor for REMRemindersListDataView.ListsSectionsModel.List();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7, v9);
  v11 = &v75 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1000F5104(&qword_10093ED48, &qword_10079D4B8);
  __chkstk_darwin(v12, v13);
  v24 = (&v75 - v23);
  v82 = *(a1 + 16);
  if (!v82)
  {
    a1, v15, v16, v17, v18, v19, v20, v21;
    return;
  }

  LODWORD(v79) = a2;
  v77 = v3;
  v25 = *(v14 + 48);
  v26 = (*(v22 + 80) + 32) & ~*(v22 + 80);
  v81 = *(v22 + 72);
  v83 = a1;
  v76 = v26;
  sub_10074DB34(a1 + v26, &v75 - v23);
  v78 = v8;
  v27 = *(v8 + 32);
  v89 = *v24;
  v28 = v89;
  v80 = v25;
  v84 = v11;
  v85 = v7;
  v27(v11, v24 + v25, v7);
  v29 = *a3;
  v31 = sub_100364044(v28);
  v32 = v29[2];
  v33 = (v30 & 1) == 0;
  v34 = v32 + v33;
  if (__OFADD__(v32, v33))
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v35 = v30;
  if (v29[3] >= v34)
  {
    if (v79)
    {
      v38 = v78;
      if ((v30 & 1) == 0)
      {
        goto LABEL_13;
      }
    }

    else
    {
      sub_100373B88();
      v38 = v78;
      if ((v35 & 1) == 0)
      {
        goto LABEL_13;
      }
    }

    goto LABEL_10;
  }

  sub_10036B4B0(v34, v79 & 1);
  v36 = sub_100364044(v28);
  if ((v35 & 1) == (v37 & 1))
  {
    v31 = v36;
    v38 = v78;
    if ((v35 & 1) == 0)
    {
LABEL_13:
      v47 = *a3;
      *(*a3 + 8 * (v31 >> 6) + 64) |= 1 << v31;
      *(v47[6] + 8 * v31) = v28;
      v48 = v47[7];
      v79 = *(v38 + 72);
      v27((v48 + v79 * v31), v84, v85);
      v56 = v47[2];
      v57 = __OFADD__(v56, 1);
      v58 = v56 + 1;
      if (!v57)
      {
        v47[2] = v58;
        v59 = v83;
        if (v82 == 1)
        {
LABEL_23:
          v59, v49, v50, v51, v52, v53, v54, v55;
          return;
        }

        v60 = v83 + v81 + v76;
        v61 = 1;
        while (v61 < *v59->clientIdentity)
        {
          sub_10074DB34(v60, v24);
          v89 = *v24;
          v28 = v89;
          v27(v84, v24 + v80, v85);
          v62 = *a3;
          v63 = sub_100364044(v28);
          v65 = v62[2];
          v66 = (v64 & 1) == 0;
          v57 = __OFADD__(v65, v66);
          v67 = v65 + v66;
          if (v57)
          {
            goto LABEL_25;
          }

          v68 = v64;
          if (v62[3] < v67)
          {
            sub_10036B4B0(v67, 1);
            v63 = sub_100364044(v28);
            if ((v68 & 1) != (v69 & 1))
            {
              goto LABEL_28;
            }
          }

          if (v68)
          {
            v38 = v78;
            goto LABEL_10;
          }

          v70 = *a3;
          *(*a3 + 8 * (v63 >> 6) + 64) |= 1 << v63;
          *(v70[6] + 8 * v63) = v28;
          v27((v70[7] + v79 * v63), v84, v85);
          v71 = v70[2];
          v57 = __OFADD__(v71, 1);
          v72 = v71 + 1;
          if (v57)
          {
            goto LABEL_26;
          }

          ++v61;
          v70[2] = v72;
          v60 += v81;
          v59 = v83;
          if (v82 == v61)
          {
            goto LABEL_23;
          }
        }

        goto LABEL_27;
      }

LABEL_26:
      __break(1u);
LABEL_27:
      __break(1u);
      goto LABEL_28;
    }

LABEL_10:
    v39 = swift_allocError();
    swift_willThrow();
    v83, v40, v41, v42, v43, v44, v45, v46;
    v88 = v39;
    swift_errorRetain();
    sub_1000F5104(&unk_1009399E0, &qword_100795D00);
    if ((swift_dynamicCast() & 1) == 0)
    {
      (*(v38 + 8))(v84, v85);

      return;
    }

    goto LABEL_29;
  }

LABEL_28:
  type metadata accessor for REMObjectID_Codable();
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
LABEL_29:
  v86 = 0;
  v87 = 0xE000000000000000;
  _StringGuts.grow(_:)(30);
  v73._object = 0x80000001007F8340;
  v73._countAndFlagsBits = 0xD00000000000001BLL;
  String.append(_:)(v73);
  type metadata accessor for REMObjectID_Codable();
  _print_unlocked<A, B>(_:_:)();
  v74._countAndFlagsBits = 39;
  v74._object = 0xE100000000000000;
  String.append(_:)(v74);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_10074C164(uint64_t a1, uint64_t a2)
{
  v12[3] = type metadata accessor for REMSmartList_Codable();
  v12[4] = sub_10074DBA4(&qword_100948C30, &type metadata accessor for REMSmartList_Codable, &protocol conformance descriptor for REMSmartList_Codable);
  v12[5] = sub_10074DBA4(&qword_100948C38, &type metadata accessor for REMSmartList_Codable, &protocol conformance descriptor for REMSmartList_Codable);
  v12[0] = a1;
  sub_100030E2C(v12, v11);
  sub_1000F5104(&qword_100948C28, &qword_1007ACC70);
  type metadata accessor for REMList_Codable();
  if (swift_dynamicCast())
  {
    sub_10000607C(v12);
    v4 = v10;
LABEL_5:
    *(a2 + 16) = v4;
    sub_10000607C(v11);
    return a2;
  }

  if (swift_dynamicCast())
  {
    sub_10000607C(v12);
    v4 = v10 | 0x8000000000000000;
    goto LABEL_5;
  }

  if (qword_100936838 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_100006654(v5, qword_1009518C0);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.fault.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, v7, "unknown or unsupported REM object type for PolymorphicListItem", v8, 2u);
  }

  sub_10000607C(v12);
  sub_10000607C(v11);
  _s19PolymorphicListItemCMa_1();
  swift_deallocPartialClassInstance();
  return 0;
}

uint64_t sub_10074C38C(uint64_t a1, uint64_t a2)
{
  v12[3] = type metadata accessor for REMList_Codable();
  v12[4] = sub_10074DBA4(&qword_100948C18, &type metadata accessor for REMList_Codable, &protocol conformance descriptor for REMList_Codable);
  v12[5] = sub_10074DBA4(&qword_100948C20, &type metadata accessor for REMList_Codable, &protocol conformance descriptor for REMList_Codable);
  v12[0] = a1;
  sub_100030E2C(v12, v11);
  sub_1000F5104(&qword_100948C28, &qword_1007ACC70);
  if (swift_dynamicCast())
  {
    sub_10000607C(v12);
    v4 = v10;
LABEL_5:
    *(a2 + 16) = v4;
    sub_10000607C(v11);
    return a2;
  }

  type metadata accessor for REMSmartList_Codable();
  if (swift_dynamicCast())
  {
    sub_10000607C(v12);
    v4 = v10 | 0x8000000000000000;
    goto LABEL_5;
  }

  if (qword_100936838 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_100006654(v5, qword_1009518C0);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.fault.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, v7, "unknown or unsupported REM object type for PolymorphicListItem", v8, 2u);
  }

  sub_10000607C(v12);
  sub_10000607C(v11);
  _s19PolymorphicListItemCMa_1();
  swift_deallocPartialClassInstance();
  return 0;
}

id sub_10074C5B4(uint64_t a1, _TtC7remindd19RDXPCStorePerformer *a2, void *a3)
{
  v6 = _s10PredicatesOMa_1(0);
  __chkstk_darwin(v6, v7);
  v9 = (v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1000F5104(&unk_100939D60, &unk_1007959E0);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1007953F0;
  *(v10 + 32) = [a3 objectID];
  *v9 = v10;
  swift_storeEnumTagMultiPayload();
  if (qword_100936528 != -1)
  {
    swift_once();
  }

  v11 = qword_100975238;
  v12 = sub_10001F6F4();
  v13 = sub_100405438(0, v11, 0, v12);

  if (qword_100936520 != -1)
  {
    swift_once();
  }

  sub_1000060C8(0, &qword_10093C980, NSSortDescriptor_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;
  [(RDXPCStorePerformer *)v13 setSortDescriptors:isa];

  sub_1000060C8(0, &unk_100938880, off_1008D41A8);
  v15 = NSManagedObjectContext.fetch<A>(_:)();
  if (v3)
  {
    sub_100025374(v9, _s10PredicatesOMa_1);

    return a3;
  }

  v49[1] = v15;
  v16 = v15;
  sub_1000F5104(&qword_10093F6F0, qword_10079A300);
  sub_100155610();
  v17 = Sequence.elements<A>(ofType:)();
  v16, v18, v19, v20, v21, v22, v23, v24;

  v25 = sub_1000271D0(v17, a2);
  v17, v26, v27, v28, v29, v30, v31, v32;
  if (!(v25 >> 62))
  {
    result = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_9;
    }

LABEL_14:
    v25, v33, v34, v35, v36, v37, v38, v39;
    sub_100025374(v9, _s10PredicatesOMa_1);
    return a3;
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  if (!result)
  {
    goto LABEL_14;
  }

LABEL_9:
  if ((v25 & 0xC000000000000001) != 0)
  {
    v41 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_12;
  }

  if (*((v25 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v41 = *&v25->clientIdentity[16];
LABEL_12:
    a3 = v41;
    v25, v42, v43, v44, v45, v46, v47, v48;
    sub_100025374(v9, _s10PredicatesOMa_1);
    return a3;
  }

  __break(1u);
  return result;
}

_TtC7remindd19RDXPCStorePerformer *sub_10074C938(_TtC7remindd19RDXPCStorePerformer *a1, unint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5)
{
  v104 = type metadata accessor for REMRemindersListDataView.ListsSectionsModel.List();
  v101 = *(v104 - 8);
  __chkstk_darwin(v104, v10);
  v98 = &v92 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12, v13);
  v100 = &v92 - v14;
  v15 = sub_1000F5104(&qword_10093ED48, &qword_10079D4B8);
  v102 = *(v15 - 8);
  v103 = v15;
  __chkstk_darwin(v15, v16);
  v18 = &v92 - v17;
  if (a2 >> 62)
  {
    goto LABEL_81;
  }

  v19 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v19)
  {
LABEL_84:

    return a1;
  }

LABEL_3:
  if (a3 >> 62)
  {
    v20 = _CocoaArrayWrapper.endIndex.getter();
    if (!v20)
    {
      goto LABEL_84;
    }
  }

  else
  {
    v20 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v20)
    {
      goto LABEL_84;
    }
  }

  v94 = a4;
  v95 = a5;
  v105 = v18;
  v96 = a1;
  v18 = 0;
  v106 = &_swiftEmptyArrayStorage;
  a1 = (a2 & 0xC000000000000001);
  v97 = &_swiftEmptyArrayStorage;
  while (v19 != v18)
  {
    if (a1)
    {
      v21 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v18 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_76;
      }

      v21 = *(a2 + 8 * v18 + 32);
    }

    a5 = v21;
    a4 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      __break(1u);
LABEL_76:
      __break(1u);
LABEL_77:
      __break(1u);
LABEL_78:
      __break(1u);
LABEL_79:
      __break(1u);
LABEL_80:
      __break(1u);
LABEL_81:
      v19 = _CocoaArrayWrapper.endIndex.getter();
      if (!v19)
      {
        goto LABEL_84;
      }

      goto LABEL_3;
    }

    _s19PolymorphicListItemCMa_1();
    v22 = swift_allocObject();
    v23 = sub_10074C38C(a5, v22);
    ++v18;
    if (v23)
    {
      v97 = v23;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      a5 = *((v106 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (a5 >= *((v106 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v97 = v106;
      v18 = a4;
    }
  }

  v18 = 0;
  a2 = &_swiftEmptyArrayStorage;
  v106 = &_swiftEmptyArrayStorage;
  a1 = (a3 & 0xC000000000000001);
  while (v20 != v18)
  {
    if (a1)
    {
      v24 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v18 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_78;
      }

      v24 = *(a3 + 8 * v18 + 32);
    }

    a5 = v24;
    v25 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      goto LABEL_77;
    }

    _s19PolymorphicListItemCMa_1();
    v26 = swift_allocObject();
    v27 = sub_10074C164(a5, v26);
    ++v18;
    if (v27)
    {
      a5 = v27;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v106 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v106 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        a4 = *((v106 & 0xFFFFFFFFFFFFFF8) + 0x10);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      a2 = v106;
      v18 = v25;
    }
  }

  v106 = v97;
  v18 = &v106;
  sub_1002720DC(a2);
  a4 = v106;
  if (v106 >> 62)
  {
    v35 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v35 = *((v106 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v36 = v96;
  v37 = v99;
  if (v35 < 2)
  {
LABEL_36:
    v39 = 0;
    if (a4 >> 62)
    {
      goto LABEL_46;
    }

    goto LABEL_37;
  }

  a5 = v94;
  v38 = sub_100012370(a5, v95);
  if (v37)
  {

    v39 = 0;
    v37 = 0;
    if (a4 >> 62)
    {
      goto LABEL_46;
    }

    goto LABEL_37;
  }

  if (!v38)
  {

    goto LABEL_36;
  }

  v40 = v38;
  _s19PolymorphicListItemCMa_1();
  v39 = v40;
  v18 = REMOrderedIdentifierMap.reorder<A>(objects:)();
  v37 = 0;
  a4, v41, v42, v43, v44, v45, v46, v47;

  a4 = v18;
  if (v18 >> 62)
  {
LABEL_46:
    v48 = _CocoaArrayWrapper.endIndex.getter();
    v93 = v39;
    if (!v48)
    {
      goto LABEL_47;
    }

    goto LABEL_38;
  }

LABEL_37:
  v48 = *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v93 = v39;
  if (!v48)
  {
LABEL_47:
    a4, v28, v29, v30, v31, v32, v33, v34;
    v60 = &_swiftEmptyArrayStorage;
    goto LABEL_48;
  }

LABEL_38:
  v106 = &_swiftEmptyArrayStorage;
  specialized ContiguousArray.reserveCapacity(_:)();
  if (v48 < 0)
  {
    __break(1u);
LABEL_91:
    result = swift_unexpectedError();
    __break(1u);
    return result;
  }

  v49 = 0;
  do
  {
    if ((a4 & 0xC000000000000001) != 0)
    {
      v50 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v50 = *(a4 + 8 * v49 + 32);
    }

    v51 = (*(v50 + 16) & 0x7FFFFFFFFFFFFFFFLL);
    v52 = [v51 remObjectID];

    ++v49;
    v18 = &v106;
    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    a5 = *v106->clientIdentity;
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    specialized ContiguousArray._endMutation()();
  }

  while (v48 != v49);
  a4, v53, v54, v55, v56, v57, v58, v59;
  v60 = v106;
  v36 = v96;
LABEL_48:
  v99 = v37;
  v61 = *v36->clientIdentity;
  v62 = &_swiftEmptyArrayStorage;
  v97 = v60;
  if (v61)
  {
    v106 = &_swiftEmptyArrayStorage;
    sub_1002534F0(0, v61, 0);
    v62 = v106;
    a4 = v101 + 16;
    v63 = *(v101 + 16);
    v64 = v36 + ((*(v101 + 80) + 32) & ~*(v101 + 80));
    a5 = *(v101 + 72);
    v18 = v105;
    do
    {
      v63(v18 + *(v103 + 48), v64, v104);
      v65 = REMRemindersListDataView.ListsSectionsModel.List.listID.getter();
      v18 = v105;
      *v105 = v65;
      v106 = v62;
      v67 = *v62->clientIdentity;
      v66 = *&v62->clientIdentity[8];
      if (v67 >= v66 >> 1)
      {
        sub_1002534F0((v66 > 1), v67 + 1, 1);
        v18 = v105;
        v62 = v106;
      }

      *v62->clientIdentity = v67 + 1;
      sub_100031B58(v18, v62 + ((*(v102 + 80) + 32) & ~*(v102 + 80)) + *(v102 + 72) * v67, &qword_10093ED48, &qword_10079D4B8);
      v64 += a5;
      --v61;
    }

    while (v61);
    v60 = v97;
  }

  if (*v62->clientIdentity)
  {
    v18 = sub_1000F5104(&qword_100943D60, "x\b\v");
    v68 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v68 = _swiftEmptyDictionarySingleton;
  }

  v106 = v68;
  v69 = v99;
  sub_10074BC28(v62, 1, &v106);
  v99 = v69;
  if (v69)
  {
    goto LABEL_91;
  }

  a3 = v106;
  if (v60 >> 62)
  {
    a2 = _CocoaArrayWrapper.endIndex.getter();
    if (a2)
    {
LABEL_60:
      v70 = 0;
      v105 = (v60 & 0xC000000000000001);
      v94 = (v101 + 16);
      v102 = v101 + 32;
      v103 = v60 & 0xFFFFFFFFFFFFFF8;
      a1 = &_swiftEmptyArrayStorage;
      v95 = a2;
      v96 = a3;
      while (1)
      {
        if (v105)
        {
          v71 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v70 >= *(v103 + 16))
          {
            goto LABEL_80;
          }

          v71 = *&v60->clientIdentity[8 * v70 + 16];
        }

        a5 = v71;
        a4 = v70 + 1;
        if (__OFADD__(v70, 1))
        {
          goto LABEL_79;
        }

        v18 = v71;
        v72 = REMObjectID.codable.getter();
        v73 = v72;
        if (*(a3 + 16) && (v18 = a3, v74 = sub_100364044(v72), (v75 & 1) != 0))
        {
          v76 = *(a3 + 56);
          v77 = a1;
          v78 = v101;
          v79 = *(v101 + 72);
          v80 = v98;
          v81 = v104;
          (*(v101 + 16))(v98, v76 + v79 * v74, v104);

          a5 = *(v78 + 32);
          a1 = v77;
          (a5)(v100, v80, v81);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            a1 = sub_100365B88(0, *v77->clientIdentity + 1, 1, v77);
          }

          v83 = *a1->clientIdentity;
          v82 = *&a1->clientIdentity[8];
          v18 = v83 + 1;
          a2 = v95;
          a3 = v96;
          if (v83 >= v82 >> 1)
          {
            a1 = sub_100365B88((v82 > 1), v83 + 1, 1, a1);
          }

          *a1->clientIdentity = v18;
          (a5)(a1 + ((*(v101 + 80) + 32) & ~*(v101 + 80)) + v83 * v79, v100, v104);
          v60 = v97;
        }

        else
        {
        }

        ++v70;
        if (a4 == a2)
        {
          goto LABEL_88;
        }
      }
    }
  }

  else
  {
    a2 = *((v60 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (a2)
    {
      goto LABEL_60;
    }
  }

  a1 = &_swiftEmptyArrayStorage;
LABEL_88:

  v60, v84, v85, v86, v87, v88, v89, v90;
  return a1;
}

_TtC7remindd19RDXPCStorePerformer *sub_10074D280(uint64_t a1, _TtC7remindd19RDXPCStorePerformer *a2, _TtC7remindd19RDXPCStorePerformer *a3, _TtC7remindd19RDXPCStorePerformer *a4, uint64_t a5)
{
  v6 = v5;
  v145 = a4;
  v142 = a1;
  v143 = a3;
  v141 = _s10PredicatesOMa_3(0);
  __chkstk_darwin(v141, v9);
  v11 = (&v137 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = _s10PredicatesOMa_1(0);
  __chkstk_darwin(v12, v13);
  v15 = &v137 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = REMRemindersListDataView.GroupSectionsInvocation.Parameters.group.getter();
  v16 = [v18 objectID];

  v144 = a5;
  v17 = REMRemindersListDataView.GroupSectionsInvocation.Parameters.includePinnedSublists.getter();
  *v15 = v16;
  LOBYTE(v18) = v17 & 1;
  v15[8] = v17 & 1;
  swift_storeEnumTagMultiPayload();
  v146 = v16;
  v19 = sub_10001F6F4();
  sub_1000060C8(0, &unk_100938880, off_1008D41A8);
  v20 = [objc_allocWithZone(NSFetchRequest) init];
  v21 = [swift_getObjCClassFromMetadata() entity];
  [(RDXPCStorePerformer *)v20 setEntity:v21];

  [(RDXPCStorePerformer *)v20 setAffectedStores:0];
  [(RDXPCStorePerformer *)v20 setPredicate:v19];

  if (qword_100936520 != -1)
  {
    goto LABEL_13;
  }

  while (1)
  {
    sub_1000060C8(0, &qword_10093C980, NSSortDescriptor_ptr);
    isa = Array._bridgeToObjectiveC()().super.isa;
    [(RDXPCStorePerformer *)v20 setSortDescriptors:isa];

    v23 = a2;
    v24 = NSManagedObjectContext.fetch<A>(_:)();
    if (v6)
    {
      break;
    }

    v25 = v24;
    v140 = v11;
    v147 = v24;
    sub_1000F5104(&qword_10093F6F0, qword_10079A300);
    sub_100155610();
    v26 = Sequence.elements<A>(ofType:)();
    v25, v27, v28, v29, v30, v31, v32, v33;

    v34 = sub_1000271D0(v26, v145);
    v26, v35, v36, v37, v38, v39, v40, v41;
    v139 = v34;
    if (v34 >> 62)
    {
      sub_1000060C8(0, &qword_10093D5D0, REMList_ptr);

      v42 = _bridgeCocoaArray<A>(_:)();
      v34, v123, v124, v125, v126, v127, v128, v129;
    }

    else
    {

      dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
      sub_1000060C8(0, &qword_10093D5D0, REMList_ptr);
      v42 = v34;
    }

    v43 = v140;
    v147 = 0;
    type metadata accessor for REMRemindersListDataView.ListSectionsInvocation();
    v44 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    __chkstk_darwin(v44, v45);
    v47 = v142;
    v46 = v143;
    *(&v137 - 8) = v48;
    *(&v137 - 7) = v47;
    *(&v137 - 6) = a2;
    *(&v137 - 5) = v46;
    v49 = v144;
    *(&v137 - 4) = v145;
    *(&v137 - 3) = v49;
    *(&v137 - 2) = &v147;
    v138 = sub_10025D2D8(sub_10074DA9C, (&v137 - 10), v42);

    v42, v50, v51, v52, v53, v54, v55, v56;
    v57 = v147;
    v58 = v146;
    *v43 = v146;
    *(v43 + 8) = v18;
    swift_storeEnumTagMultiPayload();
    v11 = v58;
    v59 = sub_100717C9C(v43, a2, 0);
    v6 = 0;
    v18 = sub_1000303FC(v59, v145);
    v59, v60, v61, v62, v63, v64, v65, v66;
    if (v18 >> 62)
    {
      sub_1000060C8(0, &qword_10093A230, REMSmartList_ptr);

      v67 = _bridgeCocoaArray<A>(_:)();
      v18, v130, v131, v132, v133, v134, v135, v136;
    }

    else
    {

      dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
      sub_1000060C8(0, &qword_10093A230, REMSmartList_ptr);
      v67 = v18;
    }

    v68 = v142;
    v147 = 0;
    type metadata accessor for REMRemindersListDataView.CustomSmartListSectionsInvocation();
    v69 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    v146 = &v137;
    __chkstk_darwin(v69, v70);
    *(&v137 - 8) = v71;
    *(&v137 - 7) = v68;
    v72 = a2;
    v73 = v143;
    *(&v137 - 6) = a2;
    *(&v137 - 5) = v73;
    v74 = v144;
    *(&v137 - 4) = v145;
    *(&v137 - 3) = v74;
    *(&v137 - 2) = &v147;
    v75 = sub_10025D2D8(sub_10074DAC8, (&v137 - 10), v67);
    v145 = v72;
    v77 = v75;

    v67, v78, v79, v80, v81, v82, v83, v84;
    v143 = v147;
    v147 = v138;

    v146 = v77;
    sub_1002720F4(v85);
    v86 = v147;
    v87 = REMRemindersListDataView.GroupSectionsInvocation.Parameters.group.getter();
    a2 = [v87 accountID];

    v20 = v139;
    v23 = sub_10074C938(v86, v139, v18, a2, v145);

    v86, v88, v89, v90, v91, v92, v93, v94;
    v18, v95, v96, v97, v98, v99, v100, v101;
    v20, v102, v103, v104, v105, v106, v107, v108;
    sub_100025374(v140, _s10PredicatesOMa_3);
    sub_100025374(v15, _s10PredicatesOMa_1);
    v146, v109, v110, v111, v112, v113, v114, v115;
    v138, v116, v117, v118, v119, v120, v121, v122;
    if (!__OFADD__(v57, v143))
    {
      return v23;
    }

    __break(1u);
LABEL_13:
    swift_once();
  }

  sub_100025374(v15, _s10PredicatesOMa_1);

  return v23;
}

uint64_t sub_10074DB34(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000F5104(&qword_10093ED48, &qword_10079D4B8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10074DBA4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10074DBEC@<X0>(unint64_t *a1@<X8>)
{
  v3 = v2;
  v40 = a1;
  v4 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  __chkstk_darwin(v4 - 8, v5);
  v36 = &v31 - v6;
  v7 = type metadata accessor for Date();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7, v9);
  v32 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = type metadata accessor for REMJSONType();
  v38 = *(v39 - 8);
  __chkstk_darwin(v39, v11);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = v1;
  v14 = *(v1 + 16);
  v15 = *(v14 + 16);
  if (v15)
  {
    v33 = v2;
    v34 = v8;
    v35 = v7;
    v16 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
    v17 = sub_100368CEC(v15, 0);
    v18 = *(type metadata accessor for RDPermanentlyHiddenReminder(0) - 8);
    sub_10027A30C(&v42, v17 + ((*(v18 + 80) + 32) & ~*(v18 + 80)), v15, v14);
    v20 = v19;
    v21 = v42;

    result = sub_10001B860(v21);
    if (v20 != v15)
    {
      __break(1u);
      return result;
    }

    v13 = v16;
    v7 = v35;
    v8 = v34;
    v3 = v33;
  }

  type metadata accessor for RDPermanentlyHiddenReminder(0);
  sub_10074E930(&qword_1009519B0, type metadata accessor for RDPermanentlyHiddenReminder, &unk_1007A2DE8);
  Array<A>.toJSON()();

  if (!v3)
  {
    sub_1000F5104(&qword_100936EB0, &unk_1007954A0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100791300;
    *(inited + 32) = 0xD00000000000001ALL;
    *(inited + 40) = 0x80000001007FD1A0;
    REMJSONType.associatedValueAsAny.getter();
    v24 = sub_1001F67C8(inited);
    swift_setDeallocating();
    sub_1000050A4(inited + 32, &unk_100939260, &unk_100797220);
    v25 = v36;
    sub_10012F78C(v37 + OBJC_IVAR____TtC7remindd21RDRecentlyDeletedInfo_lastPermanentlyHiddenRemindersCleanupDate, v36);
    if ((*(v8 + 48))(v25, 1, v7) == 1)
    {
      sub_1000050A4(v25, &unk_100938850, qword_100795AE0);
    }

    else
    {
      v26 = v32;
      (*(v8 + 32))(v32, v25, v7);
      Date.timeIntervalSinceReferenceDate.getter();
      v43 = &type metadata for Double;
      *&v42 = v27;
      sub_100005EE0(&v42, v41);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v44 = v24;
      sub_1002C88F0(v41, 0xD000000000000029, 0x80000001007FD1C0, isUniquelyReferenced_nonNull_native);
      (*(v8 + 8))(v26, v7);
      v24 = v44;
    }

    v43 = &type metadata for Int;
    *&v42 = kREMSupportedVersionFor2024;
    sub_100005EE0(&v42, v41);
    v29 = swift_isUniquelyReferenced_nonNull_native();
    v44 = v24;
    sub_1002C88F0(v41, 0xD000000000000017, 0x80000001007E8C60, v29);
    v30 = v38;
    (*(v38 + 8))(v13, v39);
    *v40 = v44;
    return (*(v30 + 104))();
  }

  return result;
}

char *sub_10074E148@<X0>(char **a1@<X8>, uint64_t a2@<X0>)
{
  result = sub_10074E174(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

char *sub_10074E174(uint64_t a1)
{
  v2 = sub_1000F5104(&qword_100950590, &qword_1007B6618);
  v82 = *(v2 - 8);
  v83 = v2;
  __chkstk_darwin(v2, v3);
  v81 = &v77 - v4;
  v78 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  __chkstk_darwin(v78, v5);
  v77 = &v77 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7, v8);
  v80 = &v77 - v9;
  __chkstk_darwin(v10, v11);
  v79 = &v77 - v12;
  v13 = sub_1000F5104(&qword_1009519A8, &qword_1007B7EF8);
  v84 = *(v13 - 8);
  __chkstk_darwin(v13, v14);
  v16 = (&v77 - v15);
  v17 = sub_1000F5104(&qword_100938AE0, qword_1007B6560);
  v18 = *(v17 - 8);
  __chkstk_darwin(v17, v19);
  v21 = &v77 - v20;
  v22 = type metadata accessor for REMJSONType();
  v23 = *(v22 - 8);
  v25 = __chkstk_darwin(v22, v24);
  v27 = (&v77 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v23 + 16))(v27, a1, v22, v25);
  v28 = (*(v23 + 88))(v27, v22);
  if (v28 == enum case for REMJSONType.jsonObject(_:))
  {
    (*(v23 + 96))(v27, v22);
    v29 = *v27;
    (*(v18 + 104))(v21, enum case for Dictionary<>.DeserializableValueType.integer<A, B><A1>(_:), v17);
    v86 = kREMSupportedVersionFor2024;
    v30 = v85;
    Dictionary<>.deserializeOptional<A>(key:valueType:defaultValue:)();
    (*(v18 + 8))(v21, v17);
    if (v30)
    {
      v29, v31, v32, v33, v34, v35, v36, v37;
      return v21;
    }

    v21 = v87;
    if ((rem_isUnsupportedVersionByRuntime() & 1) == 0)
    {
      v51 = type metadata accessor for RDPermanentlyHiddenReminder(0);
      v52 = sub_10074E930(&qword_1009519B0, type metadata accessor for RDPermanentlyHiddenReminder, &unk_1007A2DE8);
      *v16 = v51;
      v16[1] = v52;
      v53 = v84;
      (*(v84 + 104))(v16, enum case for Dictionary<>.DeserializableValueType.jsonArray<A, B><A1>(_:), v13);
      sub_1000F5104(&qword_1009519B8, &qword_1007B7F00);
      Dictionary<>.deserializeRequired<A>(key:valueType:)();
      (*(v53 + 8))(v16, v13);
      v54 = v87;
      v55 = sub_1001A6A48(v87);
      v54, v56, v57, v58, v59, v60, v61, v62;
      v64 = v81;
      v63 = v82;
      v65 = v83;
      (*(v82 + 104))(v81, enum case for Dictionary<>.DeserializableValueType.date<A, B><A1>(_:), v83);
      v66 = type metadata accessor for Date();
      v67 = v80;
      (*(*(v66 - 8) + 56))(v80, 1, 1, v66);
      v68 = v79;
      Dictionary<>.deserializeOptional<A>(key:valueType:defaultValue:)();
      v29, v69, v70, v71, v72, v73, v74, v75;
      sub_1000050A4(v67, &unk_100938850, qword_100795AE0);
      (*(v63 + 8))(v64, v65);
      v76 = v77;
      sub_10012F7FC(v68, v77);
      type metadata accessor for RDRecentlyDeletedInfo(0);
      v21 = swift_allocObject();
      *(v21 + 2) = v55;
      sub_10012F7FC(v76, &v21[OBJC_IVAR____TtC7remindd21RDRecentlyDeletedInfo_lastPermanentlyHiddenRemindersCleanupDate]);
      return v21;
    }

    v29, v43, v44, v45, v46, v47, v48, v49;
    v38 = type metadata accessor for REMJSONDeserializationError();
    sub_10074E930(&qword_100938AF8, &type metadata accessor for REMJSONDeserializationError, &protocol conformance descriptor for REMJSONDeserializationError);
    swift_allocError();
    v40 = v50;
    *v50 = v21;
    v41 = &enum case for REMJSONDeserializationError.notSupported(_:);
LABEL_6:
    (*(*(v38 - 8) + 104))(v40, *v41, v38);
    swift_willThrow();
    return v21;
  }

  if (v28 == enum case for REMJSONType.jsonArray(_:))
  {
    (*(v23 + 8))(v27, v22);
    v38 = type metadata accessor for REMJSONDeserializationError();
    sub_10074E930(&qword_100938AF8, &type metadata accessor for REMJSONDeserializationError, &protocol conformance descriptor for REMJSONDeserializationError);
    swift_allocError();
    v40 = v39;
    v41 = &enum case for REMJSONDeserializationError.invalidData(_:);
    goto LABEL_6;
  }

  result = _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
  return result;
}

uint64_t sub_10074E930(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

BOOL sub_10074E990(void *a1, SEL *a2)
{
  v4 = v2;
  v6 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  __chkstk_darwin(v6 - 8, v7);
  v97 = &v94 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9, v10);
  v95 = &v94 - v11;
  __chkstk_darwin(v12, v13);
  v15 = &v94 - v14;
  __chkstk_darwin(v16, v17);
  v19 = &v94 - v18;
  v20 = type metadata accessor for Date();
  v21 = *(v20 - 8);
  __chkstk_darwin(v20, v22);
  v96 = &v94 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24, v25);
  v100 = &v94 - v26;
  __chkstk_darwin(v27, v28);
  v30 = &v94 - v29;
  __chkstk_darwin(v31, v32);
  v34 = &v94 - v33;
  *&v37 = __chkstk_darwin(v35, v36).n128_u64[0];
  v39 = &v94 - v38;
  v98 = v4;
  v40 = [v4 creationDate];
  v99 = v34;
  if (v40)
  {
    v41 = v40;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v42 = v34;
    v43 = a2;
    v44 = a1;
    v45 = *(v21 + 32);
    v45(v19, v42, v20);
    v101 = *(v21 + 56);
    v101(v19, 0, 1, v20);
    v45(v39, v19, v20);
    a1 = v44;
    a2 = v43;
  }

  else
  {
    v101 = *(v21 + 56);
    v101(v19, 1, 1, v20);
    static Date.distantFuture.getter();
    if ((*(v21 + 48))(v19, 1, v20) != 1)
    {
      sub_1001AAD5C(v19);
    }
  }

  v46 = [a1 *a2];
  if (v46)
  {
    v47 = v99;
    v48 = v46;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v49 = *(v21 + 32);
    v49(v15, v47, v20);
    v101(v15, 0, 1, v20);
    v49(v30, v15, v20);
  }

  else
  {
    v101(v15, 1, 1, v20);
    static Date.distantFuture.getter();
    v50 = (*(v21 + 48))(v15, 1, v20);
    v47 = v99;
    if (v50 != 1)
    {
      sub_1001AAD5C(v15);
    }
  }

  v51 = static Date.< infix(_:_:)();
  v52 = *(v21 + 8);
  v52(v30, v20);
  v52(v39, v20);
  if (v51)
  {
    return 1;
  }

  v54 = [v98 creationDate];
  if (v54)
  {
    v55 = v54;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v56 = *(v21 + 32);
    v57 = v47;
    v58 = v95;
    v59 = v57;
    v56(v95);
    v101(v58, 0, 1, v20);
    (v56)(v100, v58, v20);
  }

  else
  {
    v59 = v47;
    v60 = v95;
    v101(v95, 1, 1, v20);
    static Date.distantFuture.getter();
    if ((*(v21 + 48))(v60, 1, v20) != 1)
    {
      sub_1001AAD5C(v60);
    }
  }

  v61 = [a1 *a2];
  if (v61)
  {
    v62 = v61;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v63 = *(v21 + 32);
    v64 = v97;
    v63(v97, v59, v20);
    v101(v64, 0, 1, v20);
    v65 = v96;
    v63(v96, v64, v20);
  }

  else
  {
    v66 = v97;
    v101(v97, 1, 1, v20);
    v65 = v96;
    static Date.distantFuture.getter();
    if ((*(v21 + 48))(v66, 1, v20) != 1)
    {
      sub_1001AAD5C(v66);
    }
  }

  v67 = v100;
  v68 = static Date.== infix(_:_:)();
  v52(v65, v20);
  v52(v67, v20);
  if ((v68 & 1) == 0)
  {
    return 0;
  }

  v69 = [v98 name];
  if (v69)
  {
    v70 = v69;
    v71 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v73 = v72;
  }

  else
  {
    v71 = 0;
    v73 = 0xE000000000000000;
  }

  v104 = v71;
  v105 = v73;
  v74 = [a1 name];
  if (v74)
  {
    v75 = v74;
    v76 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v78 = v77;
  }

  else
  {
    v76 = 0;
    v78 = 0xE000000000000000;
  }

  v102 = v76;
  v103 = v78;
  sub_10013BCF4();
  v79 = StringProtocol.localizedStandardCompare<A>(_:)();
  v73, v80, v81, v82, v83, v84, v85, v86;
  v78, v87, v88, v89, v90, v91, v92, v93;
  return v79 == -1;
}

uint64_t sub_10074F0C0()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_1009519C0);
  v1 = sub_100006654(v0, qword_1009519C0);
  if (qword_100936410 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_100974F78);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_10074F1DC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1003FBA98();
  *a1 = result;
  return result;
}

uint64_t sub_10074F20C()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_100951B08);
  v1 = sub_100006654(v0, qword_100951B08);
  if (qword_1009364D8 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_1009751D0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void sub_10074F2D4(_TtC7remindd19RDXPCStorePerformer *a1@<X1>, uint64_t a2@<X2>, void *a3@<X3>, void (*a4)(char *, char *, uint64_t)@<X4>, _TtC7remindd19RDXPCStorePerformer *a5@<X8>)
{
  v466 = a2;
  v473 = a3;
  v474 = a4;
  v476 = a5;
  v453 = type metadata accessor for REMRemindersListDataView.AssignedModel();
  v452 = *(v453 - 8);
  __chkstk_darwin(v453, v6);
  v457 = &v419 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8, v9);
  v469 = &v419 - v10;
  v458 = type metadata accessor for REMRemindersListDataView.ListsModel();
  v467 = *(v458 - 8);
  __chkstk_darwin(v458, v11);
  v454 = &v419 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13, v14);
  v477 = &v419 - v15;
  v16 = sub_1000F5104(&qword_10094B8E0, &unk_1007AABD0);
  __chkstk_darwin(v16 - 8, v17);
  v441 = &v419 - v18;
  v471 = type metadata accessor for REMRemindersListDataView.ReminderLite();
  v479 = *(v471 - 8);
  __chkstk_darwin(v471, v19);
  v449 = &v419 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v461 = type metadata accessor for REMRemindersListDataView.RemindersPrefetch();
  v463 = *(v461 - 8);
  __chkstk_darwin(v461, v21);
  v455 = (&v419 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v23, v24);
  v459 = &v419 - v25;
  __chkstk_darwin(v26, v27);
  v445 = &v419 - v28;
  v447 = type metadata accessor for REMRemindersListDataView.SortingStyle();
  v446 = *(v447 - 1);
  __chkstk_darwin(v447, v29);
  v448 = &v419 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v444 = type metadata accessor for REMRemindersListDataView.AssignedInvocation.Parameters();
  v442 = *(v444 - 8);
  __chkstk_darwin(v444, v31);
  v443 = &v419 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v456 = type metadata accessor for REMRemindersListDataView.Diff();
  v451 = *(v456 - 8);
  __chkstk_darwin(v456, v33);
  v450 = &v419 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v35, v36);
  v468 = &v419 - v37;
  v475 = type metadata accessor for REMRemindersListDataView.ListsModel.Sublist();
  v460 = *(v475 - 8);
  __chkstk_darwin(v475, v38);
  v462 = &v419 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v40, v41);
  v472 = &v419 - v42;
  __chkstk_darwin(v43, v44);
  v464 = &v419 - v45;
  storeController = sub_1000F5104(&qword_100951B48, &unk_1007B7FC0);
  __chkstk_darwin(storeController, v47);
  v49 = &v419 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v50, v51);
  v53 = &v419 - v52;
  v54 = type metadata accessor for REMRemindersListDataView.ShowCompleted();
  v470 = *(v54 - 8);
  __chkstk_darwin(v54, v55);
  v57 = &v419 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v58, v59);
  v61 = &v419 - v60;
  __chkstk_darwin(v62, v63);
  v65 = &v419 - v64;
  __chkstk_darwin(v66, v67);
  v69 = &v419 - v68;
  v70 = v478;
  v71 = sub_100753DE0(a1);
  if (v70)
  {
    return;
  }

  v436 = v49;
  v435 = v61;
  v434 = v57;
  v440 = v65;
  v438 = v69;
  v439 = v53;
  v437 = v54;
  v72 = v71;
  v73 = a1;
  sub_100754FD4(v71, a1, v473, v474);
  v478 = 0;
  v76 = v75;
  v77 = v74;
  v433 = v72;
  v78 = REMRemindersListDataView.AssignedInvocation.Parameters.countCompleted.getter();
  if ((v78 & 1) == 0)
  {
    v431 = a1;
    v429 = v76;
    v96 = 0;
    v97 = v439;
    v98 = v438;
    goto LABEL_13;
  }

  LODWORD(v430) = v78;
  v79 = v433;
  v80 = v478;
  sub_100754818(v433);
  if (v80)
  {
    v79, v82, v83, v84, v85, v86, v87, v88;
    v77, v89, v90, v91, v92, v93, v94, v95;

    return;
  }

  v99 = v81;
  v431 = v73;
  v478 = 0;
  if (qword_100936848 != -1)
  {
    goto LABEL_101;
  }

  while (1)
  {
    v100 = type metadata accessor for Logger();
    v101 = sub_100006654(v100, qword_100951B08);
    v427 = &v419;
    v480 = v99;
    __chkstk_darwin(v101, v102);
    *(&v419 - 2) = v103;
    v429 = sub_1000F5104(&qword_10093CB70, &unk_1007A0280);
    v428 = sub_1000F5104(&unk_100939E40, &qword_100791BD0);
    sub_10000CB48(&qword_10093CB78, &qword_10093CB70, &unk_1007A0280, &protocol conformance descriptor for [A]);
    v104 = v478;
    v105 = Sequence.map<A>(skippingError:_:)();
    if (v104)
    {

      v99, v113, v114, v115, v116, v117, v118, v119;
      v478 = 0;
      v120 = &_swiftEmptyArrayStorage;
    }

    else
    {
      v120 = v105;
      v478 = 0;
      v99, v106, v107, v108, v109, v110, v111, v112;
    }

    v429 = v76;
    v480 = v120;
    sub_1000F5104(&qword_10093CB80, &qword_1007A7680);
    sub_10000CB48(&qword_10093CB88, &qword_10093CB80, &qword_1007A7680, &protocol conformance descriptor for [A]);
    sub_1001EB528();
    v121 = Sequence<>.unique()();
    v120, v122, v123, v124, v125, v126, v127, v128;
    v96 = *(v121 + 16);
    v121, v129, v130, v131, v132, v133, v134, v135;
    v97 = v439;
    v98 = v438;
    v78 = v430;
LABEL_13:
    v136 = v78 ^ 1;
    v430 = REMRemindersListDataView.AssignedInvocation.Parameters.currentUserShareParticipantIDsOverride.getter();
    REMRemindersListDataView.AssignedInvocation.Parameters.showCompleted.getter();
    v427 = v96;
    *v97 = v96;
    v426 = v136;
    *(v97 + 8) = v136 & 1;
    v137 = *(storeController + 12);
    v138 = storeController;
    v139 = v470;
    v140 = *(v470 + 16);
    v141 = v437;
    v425 = v470 + 16;
    v424 = v140;
    v140((v97 + v137), v98, v437);
    *(v97 + *(v138 + 16)) = v77;
    v142 = v436;
    sub_100756938(v97, v436);
    v428 = *v142;
    v143 = *(v142 + 8);
    v76 = *(v142 + *(v138 + 16));
    v144 = v142 + *(v138 + 12);
    v145 = v141;
    v146 = v440;
    (*(v139 + 32))(v440, v144, v141);
    v432 = v77;
    if ((v143 & 1) == 0)
    {

      v76, v178, v179, v180, v181, v182, v183, v184;
      v433, v185, v186, v187, v188, v189, v190, v191;
      v430, v192, v193, v194, v195, v196, v197, v198;
      v199 = *(v139 + 8);
      v199(v146, v141);
      sub_1000050A4(v97, &qword_100951B48, &unk_1007B7FC0);
      v199(v98, v141);
      v223 = v428 > 0;
      v225 = v469;
LABEL_25:
      v226 = v465;
      storeController = v477;
      v224 = v468;
      goto LABEL_44;
    }

    v421 = *v76->clientIdentity;
    if (v421)
    {
      v147 = v460;
      v77 = v76 + ((*(v147 + 80) + 32) & ~*(v147 + 80));
      v436 = (v460 + 16);
      storeController = v479->storeController;
      v428 = (v460 + 8);

      v148 = 0;
      v99 = v471;
      v149 = v475;
      v150 = v449;
      v151 = v464;
      v423 = v76;
      v420 = v77;
      while (2)
      {
        if (v148 >= *v76->clientIdentity)
        {
          goto LABEL_98;
        }

        v152 = v149;
        v153 = v148;
        (*(v147 + 16))(v151, v77 + *(v147 + 72) * v148, v152);
        v422 = v153 + 1;
        v77 = REMRemindersListDataView.ListsModel.Sublist.reminders.getter();
        v154 = 0;
        v76 = *(v77 + 16);
        while (v76 != v154)
        {
          if (v154 >= *(v77 + 16))
          {
            __break(1u);
            goto LABEL_92;
          }

          v155 = v479;
          (*v479->clientIdentity)(v150, v77 + ((v155->dataAccessRequestsWriter[2] + 32) & ~v155->dataAccessRequestsWriter[2]) + *&v479->storeProvider[10] * v154, v99);
          v154 = (v154 + 1);
          v156 = REMRemindersListDataView.ReminderLite.isCompleted.getter();
          (*v155->storeController)(v150, v99);
          if (v156)
          {
            v77, v157, v158, v159, v160, v161, v162, v163;
            v423, v200, v201, v202, v203, v204, v205, v206;
            v433, v207, v208, v209, v210, v211, v212, v213;
            v430, v214, v215, v216, v217, v218, v219, v220;
            (*v428)(v464, v475);
            v221 = *(v470 + 8);
            v222 = v437;
            v221(v440, v437);
            sub_1000050A4(v439, &qword_100951B48, &unk_1007B7FC0);
            v221(v438, v222);
            v223 = 1;
            storeController = v477;
            v224 = v468;
            v225 = v469;
            v226 = v465;
            goto LABEL_44;
          }
        }

        v151 = v464;
        v149 = v475;
        (*v428)(v464, v475);
        v77, v164, v165, v166, v167, v168, v169, v170;
        v148 = v422;
        v147 = v460;
        v76 = v423;
        v77 = v420;
        if (v422 != v421)
        {
          continue;
        }

        break;
      }

      v423, v171, v172, v173, v174, v175, v176, v177;
      v145 = v437;
    }

    else
    {

      v76, v227, v228, v229, v230, v231, v232, v233;
    }

    v234 = v435;
    v424(v435, v440, v145);
    v235 = v470;
    v236 = (*(v470 + 88))(v234, v145);
    v242 = v236 == enum case for REMRemindersListDataView.ShowCompleted.after(_:) || v236 == enum case for REMRemindersListDataView.ShowCompleted.allowlist(_:);
    v225 = v469;
    v243 = v445;
    if (v242)
    {
      v244 = *(v235 + 8);
      v245 = v145;
      v244(v234);
      v246 = v448;
      v247 = v447;
      v248 = v446;
    }

    else
    {
      v245 = v145;
      v246 = v448;
      v247 = v447;
      v248 = v446;
      if (v236 != enum case for REMRemindersListDataView.ShowCompleted.off(_:))
      {
        v224 = v468;
        if (v236 != enum case for REMRemindersListDataView.ShowCompleted.on(_:))
        {
          _diagnoseUnexpectedEnumCase<A>(type:)();
          __break(1u);
          goto LABEL_103;
        }

        v433, v145, v447, v237, v238, v239, v240, v241;
        v430, v282, v283, v284, v285, v286, v287, v288;
        v289 = *(v470 + 8);
        v289(v440, v145);
        sub_1000050A4(v439, &qword_100951B48, &unk_1007B7FC0);
        v289(v438, v145);
        v223 = 0;
        goto LABEL_43;
      }
    }

    (*(v248 + 104))(v246, enum case for REMRemindersListDataView.SortingStyle.default(_:), v247);
    v249 = v470;
    v250 = v245;
    (*(v470 + 104))(v434, enum case for REMRemindersListDataView.ShowCompleted.off(_:), v245);
    (*(v463 + 104))(v243, enum case for REMRemindersListDataView.RemindersPrefetch.none(_:), v461);
    v251 = v443;
    REMRemindersListDataView.AssignedInvocation.Parameters.init(sortingStyle:showCompleted:countCompleted:remindersPrefetch:currentUserShareParticipantIDsOverride:)();
    if ((REMRemindersListDataView.AssignedInvocation.Parameters.countCompleted.getter() & 1) == 0)
    {
      v433, v252, v253, v254, v255, v256, v257, v258;
      (*(v442 + 8))(v251, v444);
      v281 = *(v249 + 8);
      v281(v440, v250);
      sub_1000050A4(v439, &qword_100951B48, &unk_1007B7FC0);
      v281(v438, v250);
      v223 = 0;
      goto LABEL_25;
    }

    v259 = v250;
    v260 = v433;
    v261 = v478;
    sub_100754818(v433);
    v270 = v251;
    v271 = v439;
    v272 = v444;
    if (v261)
    {
      v432, v263, v264, v265, v266, v267, v268, v269;
      v260, v273, v274, v275, v276, v277, v278, v279;

      (*(v442 + 8))(v270, v272);
      v280 = *(v470 + 8);
      v280(v440, v259);
      sub_1000050A4(v271, &qword_100951B48, &unk_1007B7FC0);
      v280(v438, v259);
      return;
    }

    v290 = v262;
    v260, v263, v264, v265, v266, v267, v268, v269;
    if (qword_100936848 != -1)
    {
      swift_once();
    }

    v291 = type metadata accessor for Logger();
    v292 = sub_100006654(v291, qword_100951B08);
    v464 = &v419;
    v480 = v290;
    __chkstk_darwin(v292, v293);
    *(&v419 - 2) = v294;
    sub_1000F5104(&qword_10093CB70, &unk_1007A0280);
    sub_1000F5104(&unk_100939E40, &qword_100791BD0);
    sub_10000CB48(&qword_10093CB78, &qword_10093CB70, &unk_1007A0280, &protocol conformance descriptor for [A]);
    v295 = Sequence.map<A>(skippingError:_:)();
    v478 = 0;
    v290, v296, v297, v298, v299, v300, v301, v302;
    v303 = v442;
    v480 = v295;
    sub_1000F5104(&qword_10093CB80, &qword_1007A7680);
    sub_10000CB48(&qword_10093CB88, &qword_10093CB80, &qword_1007A7680, &protocol conformance descriptor for [A]);
    sub_1001EB528();
    v304 = Sequence<>.unique()();
    (*(v303 + 8))(v443, v444);
    v305 = *(v470 + 8);
    v306 = v437;
    v305(v440, v437);
    sub_1000050A4(v271, &qword_100951B48, &unk_1007B7FC0);
    v305(v438, v306);
    v295, v307, v308, v309, v310, v311, v312, v313;
    v314 = *(v304 + 16);
    v304, v315, v316, v317, v318, v319, v320, v321;
    v223 = v314 != 0;
    v224 = v468;
    v225 = v469;
LABEL_43:
    v226 = v465;
    storeController = v477;
LABEL_44:
    v322 = [v226 fetchResultTokenToDiffAgainst];
    v323 = v478;
    sub_100534D44(v322, v224);
    v324 = v467;
    v478 = v323;
    if (v323)
    {

      v432, v325, v326, v327, v328, v329, v330, v331;
      return;
    }

    LODWORD(v466) = v223;

    REMRemindersListDataView.AssignedInvocation.Parameters.remindersPrefetch.getter();
    v332 = v463;
    v333 = v455;
    v334 = v461;
    (*(v463 + 16))();
    v335 = (*(v332 + 88))(v333, v334);
    if (v335 != enum case for REMRemindersListDataView.RemindersPrefetch.initial(_:))
    {
      break;
    }

    (*(v332 + 96))(v333, v334);
    v465 = *v333;
    v77 = *v432->clientIdentity;
    if (!v77)
    {
      v99 = &_swiftEmptyArrayStorage;
LABEL_83:
      v479 = sub_10053DB98(v465, v99, v431, v473, 0);
      v99, v393, v394, v395, v396, v397, v398, v399;
      v476 = &_swiftEmptyArrayStorage;
      goto LABEL_84;
    }

    v336 = v460 + 16;
    v474 = *(v460 + 16);
    v337 = v432 + ((*(v460 + 80) + 32) & ~*(v460 + 80));
    v470 = *(v460 + 72);
    v338 = (v460 + 8);
    v99 = &_swiftEmptyArrayStorage;
    v339 = v472;
    while (1)
    {
      v340 = v339;
      v341 = v475;
      v342 = v336;
      v474(v339, v337, v475);
      v76 = REMRemindersListDataView.ListsModel.Sublist.reminders.getter();
      (*v338)(v340, v341);
      v343 = *v76->clientIdentity;
      v344 = *v99->clientIdentity;
      storeController = (v344 + v343);
      if (__OFADD__(v344, v343))
      {
        break;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (!isUniquelyReferenced_nonNull_native || storeController > *&v99->clientIdentity[8] >> 1)
      {
        if (v344 <= storeController)
        {
          v353 = v344 + v343;
        }

        else
        {
          v353 = v344;
        }

        v99 = sub_100365A24(isUniquelyReferenced_nonNull_native, v353, 1, v99);
      }

      storeController = v477;
      if (*v76->clientIdentity)
      {
        if ((*&v99->clientIdentity[8] >> 1) - *v99->clientIdentity < v343)
        {
          goto LABEL_94;
        }

        swift_arrayInitWithCopy();
        v76, v354, v355, v356, v357, v358, v359, v360;
        v76 = v476;
        v339 = v472;
        if (v343)
        {
          v361 = *v99->clientIdentity;
          v362 = __OFADD__(v361, v343);
          v363 = v361 + v343;
          if (v362)
          {
            goto LABEL_95;
          }

          *v99->clientIdentity = v363;
        }
      }

      else
      {
        v76, v346, v347, v348, v349, v350, v351, v352;
        v76 = v476;
        v339 = v472;
        if (v343)
        {
          goto LABEL_93;
        }
      }

      v337 += v470;
      --v77;
      v336 = v342;
      if (!v77)
      {
        goto LABEL_83;
      }
    }

LABEL_92:
    __break(1u);
LABEL_93:
    __break(1u);
LABEL_94:
    __break(1u);
LABEL_95:
    __break(1u);
LABEL_96:
    __break(1u);
LABEL_97:
    __break(1u);
LABEL_98:
    __break(1u);
LABEL_99:
    __break(1u);
LABEL_100:
    __break(1u);
LABEL_101:
    swift_once();
  }

  if (v335 == enum case for REMRemindersListDataView.RemindersPrefetch.updatedInserted(_:))
  {
    v364 = v463;
    (*(v463 + 96))(v333, v334);
    v479 = sub_10053E698(*v333, v224, v431, v473, 0);
    v476 = &_swiftEmptyArrayStorage;
LABEL_87:
    v403 = v459;
    v400 = v458;
    v402 = v454;
    v401 = v457;
    goto LABEL_88;
  }

  v364 = v463;
  if (v335 == enum case for REMRemindersListDataView.RemindersPrefetch.initialAndDateRange(_:))
  {
    (*(v463 + 96))(v333, v334);
    v470 = *v333;
    v365 = sub_1000F5104(&qword_100938A78, &qword_1007AABE0);
    sub_100031B58(v333 + *(v365 + 48), v441, &qword_10094B8E0, &unk_1007AABD0);
    v77 = *v432->clientIdentity;
    if (!v77)
    {
      v99 = &_swiftEmptyArrayStorage;
LABEL_90:
      v409 = v431;
      v410 = v473;
      v479 = sub_10053DB98(v470, v99, v431, v473, 0);
      v411 = v441;
      v476 = sub_10053EBE4(v441, v99, v409, v410, 0);
      v99, v412, v413, v414, v415, v416, v417, v418;
      sub_1000050A4(v411, &qword_10094B8E0, &unk_1007AABD0);
LABEL_84:
      v400 = v458;
      v225 = v469;
      v324 = v467;
      v401 = v457;
      v402 = v454;
      v364 = v463;
      v403 = v459;
LABEL_88:
      (*(v364 + 8))(v403, v461);
      REMRemindersListDataView.ListsModel.init(groups:completedRemindersCount:hasCompletedReminders:prefetchedReminders:prefetchedDueReminders:)();
      (*(v324 + 16))(v402, storeController, v400);
      v404 = v324;
      v479 = v429;
      REMRemindersListDataView.AssignedModel.init(listsModel:assignedSmartList:)();
      v405 = v452;
      v406 = v453;
      (*(v452 + 16))(v401, v225, v453);
      v407 = v451;
      v408 = v468;
      (*(v451 + 16))(v450, v468, v456);
      sub_1007569A8(&qword_100951B50, &type metadata accessor for REMRemindersListDataView.AssignedModel, &protocol conformance descriptor for REMRemindersListDataView.AssignedModel);
      sub_1007569A8(&qword_100951B58, &type metadata accessor for REMRemindersListDataView.AssignedModel, &protocol conformance descriptor for REMRemindersListDataView.AssignedModel);
      REMRemindersListDataView.DefaultInvocationResult.init(model:diff:)();

      (*(v405 + 8))(v469, v406);
      (*(v404 + 8))(v477, v458);
      (*(v407 + 8))(v408, v456);
      return;
    }

    v366 = v460 + 16;
    v474 = *(v460 + 16);
    v367 = v432 + ((*(v460 + 80) + 32) & ~*(v460 + 80));
    v472 = *(v460 + 72);
    v368 = (v460 + 8);
    v99 = &_swiftEmptyArrayStorage;
    v369 = v462;
    while (1)
    {
      v370 = v369;
      v371 = v475;
      v372 = v366;
      v474(v369, v367, v475);
      v76 = REMRemindersListDataView.ListsModel.Sublist.reminders.getter();
      (*v368)(v370, v371);
      v373 = *v76->clientIdentity;
      v374 = *v99->clientIdentity;
      storeController = (v374 + v373);
      if (__OFADD__(v374, v373))
      {
        goto LABEL_96;
      }

      v375 = swift_isUniquelyReferenced_nonNull_native();
      if (!v375 || storeController > *&v99->clientIdentity[8] >> 1)
      {
        if (v374 <= storeController)
        {
          v383 = v374 + v373;
        }

        else
        {
          v383 = v374;
        }

        v99 = sub_100365A24(v375, v383, 1, v99);
      }

      storeController = v477;
      if (*v76->clientIdentity)
      {
        if ((*&v99->clientIdentity[8] >> 1) - *v99->clientIdentity < v373)
        {
          goto LABEL_99;
        }

        swift_arrayInitWithCopy();
        v76, v384, v385, v386, v387, v388, v389, v390;
        v76 = v476;
        v369 = v462;
        if (v373)
        {
          v391 = *v99->clientIdentity;
          v362 = __OFADD__(v391, v373);
          v392 = v391 + v373;
          if (v362)
          {
            goto LABEL_100;
          }

          *v99->clientIdentity = v392;
        }
      }

      else
      {
        v76, v376, v377, v378, v379, v380, v381, v382;
        v76 = v476;
        v369 = v462;
        if (v373)
        {
          goto LABEL_97;
        }
      }

      v367 = &v472[v367];
      --v77;
      v366 = v372;
      if (!v77)
      {
        goto LABEL_90;
      }
    }
  }

  if (v335 == enum case for REMRemindersListDataView.RemindersPrefetch.none(_:))
  {
    v476 = &_swiftEmptyArrayStorage;
    v479 = &_swiftEmptyArrayStorage;
    goto LABEL_87;
  }

LABEL_103:
  _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
}

void sub_100750F0C(id *a1@<X0>, void *a2@<X8>)
{
  v3 = [*a1 reminder];
  if (v3)
  {
    v4 = v3;
    v5 = [v3 objectID];

    *a2 = v5;
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_100750F80@<X0>(void **a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X8>)
{
  v5 = v4;
  v71 = a3;
  v9 = sub_1000F5104(&qword_100940628, &unk_1007A6A20);
  __chkstk_darwin(v9 - 8, v10);
  v12 = v59 - v11;
  v13 = type metadata accessor for REMRemindersListDataView.ReminderLite();
  v65 = *(v13 - 8);
  __chkstk_darwin(v13, v14);
  v70 = v59 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for UUID();
  v62 = *(v16 - 8);
  v63 = v16;
  *&v18 = __chkstk_darwin(v16, v17).n128_u64[0];
  v20 = v59 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *a1;
  v22 = [v21 identifier];
  if (!v22)
  {
    goto LABEL_28;
  }

  v61 = v21;
  v23 = v22;
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v24 = *a2;
  if (!*(*a2 + 16) || (v25 = sub_100363F20(v20), (v26 & 1) == 0))
  {
    (*(v62 + 8))(v20, v63);
LABEL_28:
    v45 = type metadata accessor for REMRemindersListDataView.ListsModel.Sublist();
    return (*(*(v45 - 8) + 56))(a4, 1, 1, v45);
  }

  v27 = *(*(v24 + 56) + 8 * v25);
  if (v27 >> 62)
  {
    goto LABEL_36;
  }

  for (i = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v59[1] = v5;
    v60 = v20;
    v59[0] = a4;

    v5 = v27;
    if (!i)
    {
      break;
    }

    a4 = 0;
    v68 = v27 & 0xFFFFFFFFFFFFFF8;
    v69 = v27 & 0xC000000000000001;
    v67 = (v65 + 48);
    v36 = &_swiftEmptyArrayStorage;
    v66 = (v65 + 32);
    v64 = v12;
    while (1)
    {
      if (v69)
      {
        v37 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (a4 >= *(v68 + 16))
        {
          goto LABEL_35;
        }

        v37 = *&v5->clientIdentity[8 * a4 + 16];
      }

      v38 = v37;
      if (__OFADD__(a4, 1))
      {
        break;
      }

      v72 = a4 + 1;
      v39 = [v37 objectID];
      v20 = v39;
      v40 = v71;
      if (*(v71 + 16))
      {
        v41 = sub_100363FF4(v39);
        if (v42)
        {
          v27 = *(*(v40 + 56) + 8 * v41);
        }

        else
        {
          v27 = 0;
        }

        v12 = v64;
      }

      else
      {
        v27 = 0;
      }

      sub_1005384A4(v38, v27, 0, v12);
      if ((*v67)(v12, 1, v13) == 1)
      {
        sub_1000050A4(v12, &qword_100940628, &unk_1007A6A20);
      }

      else
      {
        v20 = *v66;
        (*v66)(v70, v12, v13);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v36 = sub_100365A24(0, *v36->clientIdentity + 1, 1, v36);
        }

        v44 = *v36->clientIdentity;
        v43 = *&v36->clientIdentity[8];
        v27 = (v44 + 1);
        if (v44 >= v43 >> 1)
        {
          v36 = sub_100365A24((v43 > 1), v44 + 1, 1, v36);
        }

        *v36->clientIdentity = v27;
        (v20)(v36 + ((*(v65 + 80) + 32) & ~*(v65 + 80)) + *(v65 + 72) * v44, v70, v13);
      }

      ++a4;
      if (v72 == i)
      {
        goto LABEL_29;
      }
    }

    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    ;
  }

LABEL_29:
  v5, v29, v30, v31, v32, v33, v34, v35;
  v47 = objc_opt_self();
  isa = UUID._bridgeToObjectiveC()().super.isa;
  v49 = [v47 objectIDWithUUID:isa];

  REMObjectID.codable.getter();
  v50 = v61;
  v51 = [v61 name];
  if (v51)
  {
    v52 = v51;
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    v50 = v61;
  }

  v54 = v62;
  v53 = v63;
  v55 = [v50 color];
  if (v55)
  {
    v56 = v55;
    REMColor.codable.getter();
  }

  v57 = v59[0];
  REMRemindersListDataView.ListsModel.Sublist.init(listID:listName:listColor:reminders:isCustomSmartList:)();
  (*(v54 + 8))(v60, v53);
  v58 = type metadata accessor for REMRemindersListDataView.ListsModel.Sublist();
  return (*(*(v58 - 8) + 56))(v57, 0, 1, v58);
}

id sub_100751558@<X0>(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4, v6);
  v8 = v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000F5104(&unk_100939D90, "8\n\r");
  __chkstk_darwin(v9 - 8, v10);
  v12 = v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v15 = __chkstk_darwin(v13, v14).n128_u64[0];
  v17 = v24 - v16;
  result = [*a1 reminder];
  if (result)
  {
    v19 = result;
    v20 = [result identifier];

    if (v20)
    {
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      (*(v5 + 56))(v12, 0, 1, v4);
    }

    else
    {
      (*(v5 + 56))(v12, 1, 1, v4);
    }

    sub_100031B58(v12, v17, &unk_100939D90, "8\n\r");
    if ((*(v5 + 48))(v17, 1, v4))
    {
      result = sub_1000050A4(v17, &unk_100939D90, "8\n\r");
      v21 = 0;
      v22 = 0;
    }

    else
    {
      (*(v5 + 16))(v8, v17, v4);
      sub_1000050A4(v17, &unk_100939D90, "8\n\r");
      v21 = UUID.uuidString.getter();
      v22 = v23;
      result = (*(v5 + 8))(v8, v4);
    }

    *a2 = v21;
    a2[1] = v22;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1007517E0(uint64_t *a1, void **a2)
{
  v123 = a1;
  v4 = type metadata accessor for Date();
  v121 = *(v4 - 8);
  __chkstk_darwin(v4, v5);
  v7 = &v116 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8, v9);
  v11 = &v116 - v10;
  v12 = type metadata accessor for UUID();
  v124 = *(v12 - 8);
  v125 = v12;
  __chkstk_darwin(v12, v13);
  v15 = &v116 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16, v17);
  v19 = &v116 - v18;
  *&v22 = __chkstk_darwin(v20, v21).n128_u64[0];
  v24 = &v116 - v23;
  v25 = *a2;
  v26 = [v25 identifier];
  if (v26)
  {
    v120 = v19;
    v122 = v2;
    v27 = v26;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v28 = [v25 reminder];
    if (v28)
    {
      v29 = v28;
      v30 = [v28 objectID];

      if (v30)
      {
        v31 = *v123;
        v119 = v30;
        v32 = sub_100353998(v30, v31);
        if (v32)
        {
          v33 = v32;
          v34 = [v32 identifier];
          if (v34)
          {
            v35 = v34;
            static UUID._unconditionallyBridgeFromObjectiveC(_:)();

            v117 = v33;
            v36 = [v33 assignedDate];
            if (v36)
            {
              v37 = v36;
              static Date._unconditionallyBridgeFromObjectiveC(_:)();

              v38.super.isa = Date._bridgeToObjectiveC()().super.isa;
              (*(v121 + 8))(v11, v4);
            }

            else
            {
              v38.super.isa = 0;
            }

            v78 = objc_opt_self();
            UUID.uuidString.getter();
            v80 = v79;
            v81 = String._bridgeToObjectiveC()();
            v80, v82, v83, v84, v85, v86, v87, v88;
            v118 = v78;
            [v78 orderValueWithAssignedDate:v38.super.isa objectIdentifier:v81];
            v90 = v89;

            v91 = [v25 assignedDate];
            if (v91)
            {
              v92 = v91;
              static Date._unconditionallyBridgeFromObjectiveC(_:)();

              v93.super.isa = Date._bridgeToObjectiveC()().super.isa;
              (*(v121 + 8))(v7, v4);
            }

            else
            {
              v93.super.isa = 0;
            }

            UUID.uuidString.getter();
            v95 = v94;
            v96 = String._bridgeToObjectiveC()();
            v95, v97, v98, v99, v100, v101, v102, v103;
            [v118 orderValueWithAssignedDate:v93.super.isa objectIdentifier:v96];
            v105 = v104;

            if (v90 > v105)
            {

LABEL_41:
              v114 = v125;
              v115 = *(v124 + 8);
              v115(v120, v125);
              v115(v24, v114);
              return;
            }

            if ((v31 & 0xC000000000000001) == 0)
            {
              v111 = v25;
              v110 = v123;
              goto LABEL_40;
            }

            if (v31 < 0)
            {
              v106 = v31;
            }

            else
            {
              v106 = v31 & 0xFFFFFFFFFFFFFF8;
            }

            v107 = v25;
            v108 = __CocoaDictionary.count.getter();
            if (!__OFADD__(v108, 1))
            {
              v109 = sub_10021EE08(v106, v108 + 1);
              v110 = v123;
              *v123 = v109;
LABEL_40:
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v126 = *v110;
              v113 = v119;
              sub_1002CB01C(v25, v119, isUniquelyReferenced_nonNull_native);

              *v110 = v126;
              goto LABEL_41;
            }

            goto LABEL_43;
          }
        }

        if ((v31 & 0xC000000000000001) != 0)
        {
          if (v31 < 0)
          {
            v70 = v31;
          }

          else
          {
            v70 = v31 & 0xFFFFFFFFFFFFFF8;
          }

          v71 = v25;
          v72 = __CocoaDictionary.count.getter();
          if (__OFADD__(v72, 1))
          {
            __break(1u);
LABEL_43:
            __break(1u);
            return;
          }

          v73 = sub_10021EE08(v70, v72 + 1);
          v74 = v123;
          *v123 = v73;
        }

        else
        {
          v75 = v25;
          v74 = v123;
        }

        v76 = swift_isUniquelyReferenced_nonNull_native();
        v126 = *v74;
        v77 = v119;
        sub_1002CB01C(v25, v119, v76);

        *v74 = v126;
        (*(v124 + 8))(v24, v125);
        return;
      }
    }

    if (qword_100936848 != -1)
    {
      swift_once();
    }

    v39 = type metadata accessor for Logger();
    sub_100006654(v39, qword_100951B08);
    v41 = v124;
    v40 = v125;
    (*(v124 + 16))(v15, v24, v125);
    v42 = Logger.logObject.getter();
    v43 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v123 = v24;
      v45 = v41;
      v46 = v44;
      v47 = swift_slowAlloc();
      v126 = v47;
      *v46 = 136315138;
      v48 = UUID.uuidString.getter();
      v50 = v49;
      v51 = *(v45 + 8);
      v52 = v15;
      v53 = v125;
      v51(v52, v125);
      v54 = sub_10000668C(v48, v50, &v126);
      v50, v55, v56, v57, v58, v59, v60, v61;
      *(v46 + 4) = v54;
      _os_log_impl(&_mh_execute_header, v42, v43, "REMRemindersListDataView.AssignedInvocation: cdAssignment has no owning reminder {identifier: %s}", v46, 0xCu);
      sub_10000607C(v47);

      v51(v123, v53);
    }

    else
    {

      v69 = *(v41 + 8);
      v69(v15, v40);
      v69(v24, v40);
    }
  }

  else
  {
    if (qword_100936848 != -1)
    {
      swift_once();
    }

    v62 = type metadata accessor for Logger();
    sub_100006654(v62, qword_100951B08);
    v63 = v25;
    v64 = Logger.logObject.getter();
    v65 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v64, v65))
    {
      v66 = swift_slowAlloc();
      v67 = swift_slowAlloc();
      *v66 = 138412290;
      v68 = [v63 objectID];
      *(v66 + 4) = v68;
      *v67 = v68;
      _os_log_impl(&_mh_execute_header, v64, v65, "REMRemindersListDataView.AssignedInvocation: cdAssignment has no identifier %@", v66, 0xCu);
      sub_1000050A4(v67, &unk_100938E70, &unk_100797230);
    }
  }
}

void sub_100751FE0(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6, v8);
  v10 = &v61 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1000F5104(&unk_100939D90, "8\n\r");
  __chkstk_darwin(v11 - 8, v12);
  v14 = &v61 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15, v16);
  v18 = &v61 - v17;
  v19 = *(a1 + 8);
  v20 = [v19 ckAssigneeIdentifier];
  if (v20)
  {
    v21 = v20;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v23 = v22;

    v24 = String.uppercased()();
    v23, v24._object, v25, v26, v27, v28, v29, v30;
    v65 = v24;
    __chkstk_darwin(v31, v32);
    *(&v61 - 2) = &v65;
    v33 = sub_100040A74(sub_100040B20, (&v61 - 4), a2);
    v24._object, v34, v35, v36, v37, v38, v39, v40;
    if ((v33 & 1) == 0)
    {

      v19 = 0;
    }
  }

  else
  {
    v66 = a3;
    if (qword_100936848 != -1)
    {
      swift_once();
    }

    v41 = type metadata accessor for Logger();
    sub_100006654(v41, qword_100951B08);
    v42 = v19;
    v43 = Logger.logObject.getter();
    v44 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v43, v44))
    {
      v64 = v44;
      v45 = swift_slowAlloc();
      v62 = swift_slowAlloc();
      v65._countAndFlagsBits = v62;
      v63 = v45;
      *v45 = 136315138;
      v46 = [v42 identifier];
      if (v46)
      {
        v47 = v46;
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        (*(v7 + 56))(v14, 0, 1, v6);
      }

      else
      {
        (*(v7 + 56))(v14, 1, 1, v6);
      }

      sub_100031B58(v14, v18, &unk_100939D90, "8\n\r");
      if ((*(v7 + 48))(v18, 1, v6))
      {
        sub_1000050A4(v18, &unk_100939D90, "8\n\r");
        v48 = 0xE300000000000000;
        v49 = 7104878;
      }

      else
      {
        (*(v7 + 16))(v10, v18, v6);
        sub_1000050A4(v18, &unk_100939D90, "8\n\r");
        v50 = UUID.uuidString.getter();
        v48 = v51;
        (*(v7 + 8))(v10, v6);
        v49 = v50;
      }

      v52 = sub_10000668C(v49, v48, &v65._countAndFlagsBits);
      v48, v53, v54, v55, v56, v57, v58, v59;
      v60 = v63;
      *(v63 + 1) = v52;
      _os_log_impl(&_mh_execute_header, v43, v64, "REMRemindersListDataView.AssignedInvocation: cdAssignment has no ckAssigneeIdentifier {identifier: %s}", v60, 0xCu);
      sub_10000607C(v62);
    }

    else
    {
    }

    v19 = 0;
    a3 = v66;
  }

  *a3 = v19;
}

uint64_t sub_100752474(uint64_t a1)
{
  result = sub_1007569A8(&qword_100951B40, &type metadata accessor for REMRemindersListDataView.AssignedInvocation, &protocol conformance descriptor for REMRemindersListDataView.AssignedInvocation);
  *(a1 + 8) = result;
  return result;
}

void sub_1007524CC(_TtC7remindd19RDXPCStorePerformer **a1, const char *a2, uint64_t *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v10 = v9;
  v11 = a3[1];
  if (v11 < 1)
  {
    v13 = &_swiftEmptyArrayStorage;
LABEL_138:
    v8 = *a1;
    if (!*a1)
    {
      goto LABEL_177;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_171:
      v13 = sub_1004361F4(v13, a2, a3, a4, a5, a6, a7, a8);
    }

    v200 = v13;
    v181 = *v13->clientIdentity;
    if (v181 >= 2)
    {
      while (*a3)
      {
        v182 = *(&v13->super.isa + 2 * v181);
        v183 = *&v13->clientIdentity[16 * v181 + 8];
        sub_100753400((*a3 + 8 * v182), (*a3 + 8 * *&v13->clientIdentity[16 * v181]), (*a3 + 8 * v183), &v8->super.isa);
        if (v10)
        {
          goto LABEL_148;
        }

        if (v183 < v182)
        {
          goto LABEL_164;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v13 = sub_1004361F4(v13, a2, a3, a4, a5, a6, a7, a8);
        }

        if (v181 - 2 >= *v13->clientIdentity)
        {
          goto LABEL_165;
        }

        v184 = &v13->super.isa + 2 * v181;
        *v184 = v182;
        v184[1] = v183;
        v200 = v13;
        sub_100436168(v181 - 1);
        v13 = v200;
        v181 = *v200->clientIdentity;
        if (v181 <= 1)
        {
          goto LABEL_148;
        }
      }

      goto LABEL_175;
    }

LABEL_148:
    v13, a2, a3, a4, a5, a6, a7, a8;
    return;
  }

  v12 = 0;
  v13 = &_swiftEmptyArrayStorage;
  while (1)
  {
    v14 = v12++;
    v194 = v13;
    v187 = v14;
    if (v12 >= v11)
    {
      goto LABEL_42;
    }

    v195 = v11;
    v15 = *a3;
    v199 = *(*a3 + 8 * v12);
    v198 = *(v15 + 8 * v14);
    v16 = v198;
    v17 = v14;
    v18 = v199;
    v8 = v16;
    v196 = sub_1003FB790(&v199, &v198);
    if (v10)
    {
      v13, v19, v20, v21, v22, v23, v24, v25;

      return;
    }

    v12 = v17 + 2;
    v14 = v17;
    if (v17 + 2 < v195)
    {
      v26 = (v15 + 8 * v17 + 16);
      while (1)
      {
        v192 = v12;
        v27 = *(v26 - 1);
        v28 = *v26;
        v29 = v27;
        v30 = [v28 accountTypeHost];
        REMAccountTypeHost.switchByAccountType<A>(primaryCloudKitBlock:nonPrimaryCloudKitBlock:calDavBlock:exchangeBlock:localBlock:localInternalBlock:anyCloudKitBlock:anyCloudAccountBlock:)();

        v31 = v199;
        if (v199 == 4)
        {
          v31 = 3;
        }

        v8 = v29;
        v32 = [(RDXPCStorePerformer *)v8 accountTypeHost:sub_10000EF28];
        REMAccountTypeHost.switchByAccountType<A>(primaryCloudKitBlock:nonPrimaryCloudKitBlock:calDavBlock:exchangeBlock:localBlock:localInternalBlock:anyCloudKitBlock:anyCloudAccountBlock:)();

        if (v199 == 4)
        {
          if (v31 < 3)
          {
            goto LABEL_8;
          }

          if (v31 != 3)
          {
            goto LABEL_19;
          }
        }

        else
        {
          if (v31 < v199)
          {
LABEL_8:

            if ((v196 & 1) == 0)
            {
              goto LABEL_41;
            }

            goto LABEL_9;
          }

          if (v199 < v31)
          {
LABEL_19:

            if (v196)
            {
              goto LABEL_135;
            }

            goto LABEL_9;
          }
        }

        v33 = [v28 name];
        if (v33)
        {
          v34 = v33;
          v35 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v37 = v36;
        }

        else
        {
          v35 = 0;
          v37 = 0xE000000000000000;
        }

        v38 = [(RDXPCStorePerformer *)v8 name];
        if (v38)
        {
          v39 = v38;
          v40 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v42 = v41;

          if (v35 != v40)
          {
            goto LABEL_29;
          }
        }

        else
        {
          v42 = 0xE000000000000000;
          if (v35)
          {
            goto LABEL_29;
          }
        }

        if (v37 != v42)
        {
LABEL_29:
          v57 = _stringCompareWithSmolCheck(_:_:expecting:)();

          v42, v58, v59, v60, v61, v62, v63, v64;
          v37, v65, v66, v67, v68, v69, v70, v71;
          v13 = v194;
          v12 = v192;
          if ((v196 ^ v57))
          {
            goto LABEL_32;
          }

          goto LABEL_9;
        }

        v42, v43, v44, v45, v46, v47, v48, v49;
        v37, v50, v51, v52, v53, v54, v55, v56;
        v13 = v194;
        v12 = v192;
        if (v196)
        {
LABEL_135:
          v14 = v187;
          if (v12 < v187)
          {
LABEL_170:
            __break(1u);
            goto LABEL_171;
          }

LABEL_35:
          if (v14 < v12)
          {
            v72 = 8 * v12 - 8;
            v73 = 8 * v14;
            v74 = v12;
            do
            {
              if (v14 != --v74)
              {
                v75 = *a3;
                if (!*a3)
                {
                  goto LABEL_174;
                }

                v76 = *(v75 + v73);
                *(v75 + v73) = *(v75 + v72);
                *(v75 + v72) = v76;
              }

              ++v14;
              v72 -= 8;
              v73 += 8;
            }

            while (v14 < v74);
LABEL_41:
            v14 = v187;
          }

          goto LABEL_42;
        }

LABEL_9:
        ++v12;
        ++v26;
        if (v195 == v12)
        {
          v12 = v195;
LABEL_32:
          v14 = v187;
          break;
        }
      }
    }

    if (v196)
    {
      if (v12 < v14)
      {
        goto LABEL_170;
      }

      goto LABEL_35;
    }

LABEL_42:
    v77 = a3[1];
    if (v12 < v77)
    {
      if (__OFSUB__(v12, v14))
      {
        goto LABEL_167;
      }

      if (v12 - v14 >= a4)
      {
LABEL_84:
        v14 = v187;
        goto LABEL_85;
      }

      v14 = v187;
      v78 = a4 + v187;
      if (__OFADD__(v187, a4))
      {
        goto LABEL_168;
      }

      if (v78 >= v77)
      {
        v78 = a3[1];
      }

      if (v78 < v187)
      {
LABEL_169:
        __break(1u);
        goto LABEL_170;
      }

      if (v12 != v78)
      {
        break;
      }
    }

LABEL_85:
    if (v12 < v14)
    {
      goto LABEL_166;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v13 = sub_1003658B8(0, *v13->clientIdentity + 1, 1, v13, a5, a6, a7, a8);
    }

    v134 = *v13->clientIdentity;
    v133 = *&v13->clientIdentity[8];
    v135 = v134 + 1;
    v136 = v187;
    if (v134 >= v133 >> 1)
    {
      v180 = sub_1003658B8((v133 > 1), v134 + 1, 1, v13, a5, a6, a7, a8);
      v136 = v187;
      v13 = v180;
    }

    *v13->clientIdentity = v135;
    v137 = v13 + 16 * v134;
    *(v137 + 4) = v136;
    *(v137 + 5) = v12;
    v8 = *a1;
    if (!*a1)
    {
      goto LABEL_176;
    }

    if (v134)
    {
      while (1)
      {
        v138 = v135 - 1;
        if (v135 >= 4)
        {
          break;
        }

        if (v135 == 3)
        {
          v139 = *&v13->clientIdentity[16];
          v140 = *&v13->clientIdentity[24];
          v149 = __OFSUB__(v140, v139);
          v141 = v140 - v139;
          v142 = v149;
LABEL_105:
          if (v142)
          {
            goto LABEL_155;
          }

          v155 = &v13->super.isa + 2 * v135;
          v157 = *v155;
          v156 = v155[1];
          v158 = __OFSUB__(v156, v157);
          v159 = v156 - v157;
          v160 = v158;
          if (v158)
          {
            goto LABEL_158;
          }

          v161 = &v13->clientIdentity[16 * v138 + 16];
          v163 = *v161;
          v162 = *(v161 + 1);
          v149 = __OFSUB__(v162, v163);
          v164 = v162 - v163;
          if (v149)
          {
            goto LABEL_161;
          }

          if (__OFADD__(v159, v164))
          {
            goto LABEL_162;
          }

          if (v159 + v164 >= v141)
          {
            if (v141 < v164)
            {
              v138 = v135 - 2;
            }

            goto LABEL_126;
          }

          goto LABEL_119;
        }

        v165 = &v13->super.isa + 2 * v135;
        v167 = *v165;
        v166 = v165[1];
        v149 = __OFSUB__(v166, v167);
        v159 = v166 - v167;
        v160 = v149;
LABEL_119:
        if (v160)
        {
          goto LABEL_157;
        }

        v168 = v13 + 16 * v138;
        v170 = *(v168 + 4);
        v169 = *(v168 + 5);
        v149 = __OFSUB__(v169, v170);
        v171 = v169 - v170;
        if (v149)
        {
          goto LABEL_160;
        }

        if (v171 < v159)
        {
          goto LABEL_3;
        }

LABEL_126:
        v176 = v138 - 1;
        if (v138 - 1 >= v135)
        {
          __break(1u);
LABEL_151:
          __break(1u);
LABEL_152:
          __break(1u);
LABEL_153:
          __break(1u);
LABEL_154:
          __break(1u);
LABEL_155:
          __break(1u);
LABEL_156:
          __break(1u);
LABEL_157:
          __break(1u);
LABEL_158:
          __break(1u);
LABEL_159:
          __break(1u);
LABEL_160:
          __break(1u);
LABEL_161:
          __break(1u);
LABEL_162:
          __break(1u);
LABEL_163:
          __break(1u);
LABEL_164:
          __break(1u);
LABEL_165:
          __break(1u);
LABEL_166:
          __break(1u);
LABEL_167:
          __break(1u);
LABEL_168:
          __break(1u);
          goto LABEL_169;
        }

        if (!*a3)
        {
          goto LABEL_173;
        }

        v177 = *&v13->clientIdentity[16 * v176 + 16];
        v178 = *&v13->clientIdentity[16 * v138 + 24];
        sub_100753400((*a3 + 8 * v177), (*a3 + 8 * *&v13->clientIdentity[16 * v138 + 16]), (*a3 + 8 * v178), &v8->super.isa);
        if (v10)
        {
          goto LABEL_148;
        }

        if (v178 < v177)
        {
          goto LABEL_151;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v13 = sub_1004361F4(v13, a2, a3, a4, a5, a6, a7, a8);
        }

        if (v176 >= *v13->clientIdentity)
        {
          goto LABEL_152;
        }

        v179 = v13 + 16 * v176;
        *(v179 + 4) = v177;
        *(v179 + 5) = v178;
        v200 = v13;
        sub_100436168(v138);
        v13 = v200;
        v135 = *v200->clientIdentity;
        if (v135 <= 1)
        {
          goto LABEL_3;
        }
      }

      v143 = &v13->clientIdentity[16 * v135 + 16];
      v144 = *(v143 - 64);
      v145 = *(v143 - 56);
      v149 = __OFSUB__(v145, v144);
      v146 = v145 - v144;
      if (v149)
      {
        goto LABEL_153;
      }

      v148 = *(v143 - 48);
      v147 = *(v143 - 40);
      v149 = __OFSUB__(v147, v148);
      v141 = v147 - v148;
      v142 = v149;
      if (v149)
      {
        goto LABEL_154;
      }

      v150 = &v13->super.isa + 2 * v135;
      v152 = *v150;
      v151 = v150[1];
      v149 = __OFSUB__(v151, v152);
      v153 = v151 - v152;
      if (v149)
      {
        goto LABEL_156;
      }

      v149 = __OFADD__(v141, v153);
      v154 = v141 + v153;
      if (v149)
      {
        goto LABEL_159;
      }

      if (v154 >= v146)
      {
        v172 = &v13->clientIdentity[16 * v138 + 16];
        v174 = *v172;
        v173 = *(v172 + 1);
        v149 = __OFSUB__(v173, v174);
        v175 = v173 - v174;
        if (v149)
        {
          goto LABEL_163;
        }

        if (v141 < v175)
        {
          v138 = v135 - 2;
        }

        goto LABEL_126;
      }

      goto LABEL_105;
    }

LABEL_3:
    v11 = a3[1];
    if (v12 >= v11)
    {
      goto LABEL_138;
    }
  }

  v197 = *a3;
  v79 = *a3 + 8 * v12 - 8;
  v80 = v187 - v12;
  v188 = v78;
LABEL_53:
  v193 = v12;
  v81 = *(v197 + 8 * v12);
  v189 = v80;
  v190 = v79;
  while (1)
  {
    v82 = *v79;
    v83 = v81;
    v8 = v82;
    v84 = [v83 accountTypeHost];
    REMAccountTypeHost.switchByAccountType<A>(primaryCloudKitBlock:nonPrimaryCloudKitBlock:calDavBlock:exchangeBlock:localBlock:localInternalBlock:anyCloudKitBlock:anyCloudAccountBlock:)();
    if (v10)
    {

      if (qword_100936098 != -1)
      {
        swift_once();
      }

      v85 = type metadata accessor for Logger();
      sub_100006654(v85, qword_100946390);
      v86 = Logger.logObject.getter();
      v87 = static os_log_type_t.fault.getter();
      if (os_log_type_enabled(v86, v87))
      {
        v88 = swift_slowAlloc();
        *v88 = 0;
        _os_log_impl(&_mh_execute_header, v86, v87, "Unknown or undefined account type in AccountsListDataView", v88, 2u);
      }

      v10 = 0;
    }

    else
    {

      v89 = v199;
      if (v199 != 4)
      {
        goto LABEL_62;
      }
    }

    v89 = 3;
LABEL_62:
    v90 = v8;
    v91 = [(RDXPCStorePerformer *)v90 accountTypeHost:sub_10000EF28];
    REMAccountTypeHost.switchByAccountType<A>(primaryCloudKitBlock:nonPrimaryCloudKitBlock:calDavBlock:exchangeBlock:localBlock:localInternalBlock:anyCloudKitBlock:anyCloudAccountBlock:)();

    if (v199 == 4)
    {
      if (v89 < 3)
      {
        goto LABEL_64;
      }

      if (v89 != 3)
      {
        goto LABEL_51;
      }
    }

    else
    {
      if (v89 < v199)
      {
LABEL_64:

        goto LABEL_78;
      }

      if (v199 < v89)
      {
LABEL_51:

        goto LABEL_52;
      }
    }

    v92 = v83;
    v93 = [v83 name];
    if (v93)
    {
      v94 = v93;
      v95 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v8 = v96;
    }

    else
    {
      v95 = 0;
      v8 = 0xE000000000000000;
    }

    v97 = [(RDXPCStorePerformer *)v90 name];
    if (v97)
    {
      v98 = v97;
      v99 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v101 = v100;

      if (v95 != v99)
      {
        goto LABEL_77;
      }
    }

    else
    {
      v101 = 0xE000000000000000;
      if (v95)
      {
        goto LABEL_77;
      }
    }

    if (v8 == v101)
    {

      v101, v119, v120, v121, v122, v123, v124, v125;
      v8, v126, v127, v128, v129, v130, v131, v132;
      v13 = v194;
      v10 = 0;
LABEL_52:
      v12 = v193 + 1;
      v79 = v190 + 8;
      v80 = v189 - 1;
      if (v193 + 1 == v188)
      {
        v12 = v188;
        goto LABEL_84;
      }

      goto LABEL_53;
    }

LABEL_77:
    v102 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v101, v103, v104, v105, v106, v107, v108, v109;
    v8, v110, v111, v112, v113, v114, v115, v116;
    v13 = v194;
    v10 = 0;
    if ((v102 & 1) == 0)
    {
      goto LABEL_52;
    }

LABEL_78:
    if (!v197)
    {
      break;
    }

    v117 = *v79;
    v81 = *(v79 + 8);
    *v79 = v81;
    *(v79 + 8) = v117;
    v79 -= 8;
    if (__CFADD__(v80++, 1))
    {
      goto LABEL_52;
    }
  }

  __break(1u);
LABEL_173:
  __break(1u);
LABEL_174:
  __break(1u);
LABEL_175:
  __break(1u);
LABEL_176:
  __break(1u);
LABEL_177:
  __break(1u);
}

uint64_t sub_100753400(void **__dst, id *__src, id *a3, void **a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 7;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 3;
  v11 = a3 - __src;
  v12 = a3 - __src + 7;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 3;
  if (v10 < v12 >> 3)
  {
    if (a4 != __dst || &__dst[v10] <= a4)
    {
      memmove(a4, __dst, 8 * v10);
    }

    v118 = &v4[v10];
    if (v8 < 8)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_66;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v116 = v6;
      v14 = *v4;
      v15 = *v6;
      v16 = v14;
      v17 = sub_1003FC504(v15);
      v18 = v16;
      v19 = sub_1003FC504(v18);
      if (v17 < v19)
      {

        v6 = v116;
LABEL_16:
        v20 = v6;
        v21 = v7 == v6++;
        if (v21)
        {
          goto LABEL_12;
        }

        goto LABEL_11;
      }

      if (v19 < v17)
      {

LABEL_30:
        v6 = v116;
        goto LABEL_31;
      }

      v114 = v4;
      v22 = [v15 name];
      if (v22)
      {
        v23 = v22;
        v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v26 = v25;
      }

      else
      {
        v24 = 0;
        v26 = 0xE000000000000000;
      }

      v27 = [v18 name];
      if (v27)
      {
        v28 = v26;
        v29 = v27;
        v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v32 = v31;

        v26 = v28;
        if (v24 != v30)
        {
          goto LABEL_34;
        }
      }

      else
      {
        v32 = 0xE000000000000000;
        if (v24)
        {
          goto LABEL_34;
        }
      }

      if (v26 == v32)
      {

        v32, v33, v34, v35, v36, v37, v38, v39;
        v26, v40, v41, v42, v43, v44, v45, v46;
        v4 = v114;
        goto LABEL_30;
      }

LABEL_34:
      v47 = v26;
      v48 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v32, v49, v50, v51, v52, v53, v54, v55;
      v47, v56, v57, v58, v59, v60, v61, v62;
      v4 = v114;
      v6 = v116;
      if (v48)
      {
        goto LABEL_16;
      }

LABEL_31:
      v20 = v4;
      v21 = v7 == v4++;
      if (v21)
      {
        goto LABEL_12;
      }

LABEL_11:
      *v7 = *v20;
LABEL_12:
      ++v7;
      if (v4 >= v118)
      {
        goto LABEL_10;
      }
    }
  }

  if (a4 != __src || &__src[v13] <= a4)
  {
    memmove(a4, __src, 8 * v13);
  }

  v118 = &v4[v13];
  if (v11 >= 8 && v6 > v7)
  {
    v115 = v4;
    v112 = v7;
LABEL_42:
    v117 = v6;
    v63 = v6 - 1;
    --v5;
    v64 = v118;
    do
    {
      v65 = *--v64;
      v66 = v63;
      v67 = *v63;
      v68 = v65;
      v69 = v67;
      v70 = sub_1003FC504(v68);
      v71 = v69;
      v72 = sub_1003FC504(v71);
      if (v70 < v72)
      {

LABEL_60:
        if (v5 + 1 != v117)
        {
          *v5 = *v66;
        }

        if (v118 <= v4 || (v6 = v66, v66 <= v112))
        {
          v6 = v66;
          goto LABEL_66;
        }

        goto LABEL_42;
      }

      if (v72 >= v70)
      {
        v73 = [v68 name];
        if (v73)
        {
          v74 = v73;
          v75 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v113 = v76;
        }

        else
        {
          v75 = 0;
          v113 = 0xE000000000000000;
        }

        v77 = [v71 name];
        if (v77)
        {
          v78 = v77;
          v79 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v81 = v80;
        }

        else
        {
          v79 = 0;
          v81 = 0xE000000000000000;
        }

        if (v75 == v79 && v113 == v81)
        {

          v81, v82, v83, v84, v85, v86, v87, v88;
          v113, v89, v90, v91, v92, v93, v94, v95;
          v4 = v115;
        }

        else
        {
          v96 = _stringCompareWithSmolCheck(_:_:expecting:)();

          v81, v97, v98, v99, v100, v101, v102, v103;
          v113, v104, v105, v106, v107, v108, v109, v110;
          v4 = v115;
          if (v96)
          {
            goto LABEL_60;
          }
        }
      }

      else
      {
      }

      if (v5 + 1 != v118)
      {
        *v5 = *v64;
      }

      --v5;
      v118 = v64;
      v63 = v66;
    }

    while (v64 > v4);
    v118 = v64;
    v6 = v117;
  }

LABEL_66:
  if (v6 != v4 || v6 >= (v4 + ((v118 - v4 + (v118 - v4 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(v6, v4, 8 * (v118 - v4));
  }

  return 1;
}

_TtC7remindd19RDXPCStorePerformer *sub_1007538F0()
{
  sub_100026EF4(0, 2, 0);
  result = &_swiftEmptyArrayStorage;
  v2 = *_swiftEmptyArrayStorage.clientIdentity;
  v1 = *&_swiftEmptyArrayStorage.clientIdentity[8];
  v3 = v1 >> 1;
  v4 = v2 + 1;
  if (v1 >> 1 <= v2)
  {
    sub_100026EF4((v1 > 1), v2 + 1, 1);
    result = &_swiftEmptyArrayStorage;
    v1 = *&_swiftEmptyArrayStorage.clientIdentity[8];
    v3 = v1 >> 1;
  }

  *_swiftEmptyArrayStorage.clientIdentity = v4;
  v5 = &_swiftEmptyArrayStorage + 16 * v2;
  *(v5 + 4) = 0x696669746E656469;
  *(v5 + 5) = 0xEA00000000007265;
  v6 = v2 + 2;
  if (v3 <= v4)
  {
    sub_100026EF4((v1 > 1), v6, 1);
    result = &_swiftEmptyArrayStorage;
  }

  *_swiftEmptyArrayStorage.clientIdentity = v6;
  v7 = &_swiftEmptyArrayStorage + 16 * v4;
  *(v7 + 4) = 0xD000000000000011;
  *(v7 + 5) = 0x80000001007F9020;
  return result;
}

void sub_100753A34(uint64_t a1, void **a2)
{
  v4 = _s10PredicatesOMa_1(0);
  *&v6 = __chkstk_darwin(v4, v5).n128_u64[0];
  v8 = (&v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *a2;
  v10 = [objc_allocWithZone(REMAccountCapabilities) initWithAccountType:{objc_msgSend(v9, "type", v6)}];
  v11 = [v10 supportsAssignments];

  if (v11)
  {
    v47 = 0;
    v12 = [v9 remObjectIDWithError:&v47];
    v13 = v47;
    if (v12)
    {
      *v8 = v12;
      swift_storeEnumTagMultiPayload();
      v14 = v13;
      v15 = sub_10001F6F4();
      sub_100756A08(v8, _s10PredicatesOMa_1);
      sub_1000060C8(0, &unk_100938880, off_1008D41A8);
      v16 = [objc_allocWithZone(NSFetchRequest) init];
      v17 = [swift_getObjCClassFromMetadata() entity];
      [v16 setEntity:v17];

      [v16 setAffectedStores:0];
      [v16 setPredicate:v15];
      v18 = sub_1007538F0();
      v19 = sub_10003450C(v18);
      v18, v20, v21, v22, v23, v24, v25, v26;
      isa = Array._bridgeToObjectiveC()().super.isa;
      v19, v28, v29, v30, v31, v32, v33, v34;
      [v16 setPropertiesToFetch:isa];

      if (qword_100936520 != -1)
      {
        swift_once();
      }

      sub_1000060C8(0, &qword_10093C980, NSSortDescriptor_ptr);
      v35 = Array._bridgeToObjectiveC()().super.isa;
      [v16 setSortDescriptors:v35];

      v36 = NSManagedObjectContext.fetch<A>(_:)();
      if (!v2)
      {
        v47 = v36;
        v37 = v36;
        sub_1000F5104(&qword_10093F6F0, qword_10079A300);
        sub_10000CB48(&qword_100945210, &qword_10093F6F0, qword_10079A300, &protocol conformance descriptor for [A]);
        v38 = Sequence.elements<A>(ofType:)();
        v37, v39, v40, v41, v42, v43, v44, v45;
        sub_100271FCC(v38);
      }
    }

    else
    {
      v46 = v47;
      _convertNSErrorToError(_:)();

      swift_willThrow();
    }
  }
}

_TtC7remindd19RDXPCStorePerformer *sub_100753DE0(_TtC7remindd19RDXPCStorePerformer *a1)
{
  v3 = sub_10000F8A4(3uLL, 0, 7u);
  sub_1000060C8(0, &qword_1009399F0, off_1008D4120);
  v4 = [objc_allocWithZone(NSFetchRequest) init];
  v5 = [swift_getObjCClassFromMetadata() entity];
  [v4 setEntity:v5];

  [v4 setAffectedStores:0];
  [v4 setPredicate:v3];
  v6 = NSManagedObjectContext.fetch<A>(_:)();

  if (!v1)
  {

    v23 = sub_10000EEFC(v7);
    sub_100011170(&v23);
    v6, v8, v9, v10, v11, v12, v13, v14;
    v15 = v23;
    v23 = &_swiftEmptyArrayStorage;
    if ((v15 & 0x8000000000000000) != 0 || (v15 & 0x4000000000000000) != 0)
    {
      goto LABEL_15;
    }

    for (i = *v15->clientIdentity; i; i = _CocoaArrayWrapper.endIndex.getter())
    {
      v17 = 0;
      while (1)
      {
        if ((v15 & 0xC000000000000001) != 0)
        {
          v18 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v17 >= *v15->clientIdentity)
          {
            goto LABEL_14;
          }

          v18 = *&v15->clientIdentity[8 * v17 + 16];
        }

        v19 = v18;
        v20 = v17 + 1;
        if (__OFADD__(v17, 1))
        {
          break;
        }

        v22 = v18;
        sub_100753A34(&v23, &v22);

        ++v17;
        if (v20 == i)
        {
          a1 = v23;
          goto LABEL_17;
        }
      }

      __break(1u);
LABEL_14:
      __break(1u);
LABEL_15:
      ;
    }

    a1 = &_swiftEmptyArrayStorage;
LABEL_17:
  }

  return a1;
}

uint64_t sub_100754018(unint64_t a1)
{
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2, v4);
  v6 = &v75 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000F5104(&unk_100939D90, "8\n\r");
  __chkstk_darwin(v7 - 8, v8);
  v10 = &v75 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11, v12);
  v14 = &v75 - v13;
  v15 = REMRemindersListDataView.AssignedInvocation.Parameters.currentUserShareParticipantIDsOverride.getter();
  if (v15)
  {
    return v15;
  }

  v84 = v14;
  if (!(a1 >> 62))
  {
    result = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_6;
    }

    return &_swiftEmptyArrayStorage;
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  if (!result)
  {
    return &_swiftEmptyArrayStorage;
  }

LABEL_6:
  v78 = v6;
  if (result >= 1)
  {
    v19 = 0;
    v85 = a1 & 0xC000000000000001;
    v82 = (v3 + 48);
    v83 = (v3 + 56);
    v77 = (v3 + 16);
    v17 = &_swiftEmptyArrayStorage;
    v76 = (v3 + 8);
    *&v16 = 136446210;
    v79 = v16;
    v80 = v10;
    v81 = v2;
    v86 = result;
    do
    {
      if (v85)
      {
        v31 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v31 = *(a1 + 8 * v19 + 32);
      }

      v32 = v31;
      v33 = [v31 currentUserShareParticipantID];
      if (v33)
      {
        v34 = v33;
        static String._unconditionallyBridgeFromObjectiveC(_:)();
        v36 = v35;

        v37 = String.uppercased()();
        v36, v37._object, v38, v39, v40, v41, v42, v43;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v17 = sub_100365788(0, *v17->clientIdentity + 1, 1, v17, v44, v45, v46, v47);
        }

        v49 = *v17->clientIdentity;
        v48 = *&v17->clientIdentity[8];
        if (v49 >= v48 >> 1)
        {
          v17 = sub_100365788((v48 > 1), v49 + 1, 1, v17, v44, v45, v46, v47);
        }

        *v17->clientIdentity = v49 + 1;
        *&v17->clientIdentity[16 * v49 + 16] = v37;
      }

      else
      {
        v50 = [v32 identifier];
        if (v50)
        {
          v51 = v50;
          static UUID._unconditionallyBridgeFromObjectiveC(_:)();

          v52 = 0;
        }

        else
        {
          v52 = 1;
        }

        (*v83)(v10, v52, 1, v2);
        v53 = v84;
        sub_100031B58(v10, v84, &unk_100939D90, "8\n\r");
        if ((*v82)(v53, 1, v2))
        {
          sub_1000050A4(v53, &unk_100939D90, "8\n\r");
          v54 = 0xE300000000000000;
          v55 = 7104878;
        }

        else
        {
          v56 = v78;
          (*v77)(v78, v53, v2);
          sub_1000050A4(v53, &unk_100939D90, "8\n\r");
          v55 = UUID.uuidString.getter();
          v54 = v57;
          (*v76)(v56, v2);
        }

        if (qword_100936848 != -1)
        {
          swift_once();
        }

        v58 = type metadata accessor for Logger();
        sub_100006654(v58, qword_100951B08);

        v59 = Logger.logObject.getter();
        v60 = static os_log_type_t.fault.getter();
        v54, v61, v62, v63, v64, v65, v66, v67;
        if (os_log_type_enabled(v59, v60))
        {
          v20 = swift_slowAlloc();
          v21 = a1;
          v22 = swift_slowAlloc();
          v87 = v22;
          *v20 = v79;
          v23 = sub_10000668C(v55, v54, &v87);
          v54, v24, v25, v26, v27, v28, v29, v30;
          *(v20 + 4) = v23;
          _os_log_impl(&_mh_execute_header, v59, v60, "REMRemindersListDataView.AssignedInvocation - Got a shared to/from me list that doesn't have the current user in the sharee list, huh?! {listID: %{public}s}", v20, 0xCu);
          sub_10000607C(v22);
          a1 = v21;
          v2 = v81;

          v10 = v80;
        }

        else
        {
          v54, v68, v69, v70, v71, v72, v73, v74;
        }
      }

      ++v19;
    }

    while (v86 != v19);
    return v17;
  }

  __break(1u);
  return result;
}

void sub_100754534(unint64_t a1, uint64_t a2)
{
  v3 = v2;
  v35 = &_swiftEmptyArrayStorage;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v4 = 0;
    v5 = 0;
    v6 = 0;
    v7 = __CocoaDictionary.makeIterator()() | 0x8000000000000000;
  }

  else
  {
    v8 = -1 << *(a1 + 32);
    v5 = ~v8;
    v4 = a1 + 64;
    v9 = -v8;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v6 = v10 & *(a1 + 64);
    v7 = a1;
  }

  v11 = 0;
  v30 = &_swiftEmptyArrayStorage;
  v32 = v7;
  while ((v7 & 0x8000000000000000) != 0)
  {
    v20 = __CocoaDictionary.Iterator.next()();
    if (!v20 || (v22 = v21, v33 = v20, sub_1000060C8(0, &qword_100943230, NSManagedObjectID_ptr), swift_dynamicCast(), v18 = v34[0], v33 = v22, sub_1000060C8(0, &unk_10093F790, off_1008D4158), swift_dynamicCast(), v19 = v34[0], v14 = v11, v15 = v6, !v18))
    {
LABEL_24:
      v7 = v32;
LABEL_25:
      sub_10001B860(v7);
      return;
    }

LABEL_19:
    v34[0] = v18;
    v34[1] = v19;
    sub_100751FE0(v34, a2, &v33);
    if (v3)
    {

      sub_10001B860(v32);
      v30, v23, v24, v25, v26, v27, v28, v29;
      return;
    }

    if (v33)
    {
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v35 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v35 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v30 = v35;
    }

    v11 = v14;
    v6 = v15;
    v7 = v32;
  }

  v12 = v11;
  v13 = v6;
  v14 = v11;
  if (v6)
  {
LABEL_15:
    v15 = (v13 - 1) & v13;
    v16 = (v14 << 9) | (8 * __clz(__rbit64(v13)));
    v17 = *(*(v7 + 56) + v16);
    v18 = *(*(v7 + 48) + v16);
    v19 = v17;
    if (!v18)
    {
      goto LABEL_24;
    }

    goto LABEL_19;
  }

  while (1)
  {
    v14 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v14 >= ((v5 + 64) >> 6))
    {
      goto LABEL_25;
    }

    v13 = *(v4 + 8 * v14);
    ++v12;
    if (v13)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
}

void sub_100754818(unint64_t a1)
{
  v3 = _s10PredicatesOMa_2(0);
  __chkstk_darwin(v3, v4);
  v6 = &v69 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 >> 62)
  {
    goto LABEL_23;
  }

  if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    do
    {
      v7 = sub_100754018(a1);
      if (!*(v7 + 16))
      {
        v7, v8, v9, v10, v11, v12, v13, v14;
        return;
      }

      v71 = v7;
      if (REMRemindersListDataView.AssignedInvocation.Parameters.countCompleted.getter())
      {
        v15 = sub_1000F5104(&qword_10094FE68, &qword_1007B5CC0);
        (*(*(v15 - 8) + 56))(v6, 1, 1, v15);
      }

      else
      {
        REMRemindersListDataView.AssignedInvocation.Parameters.showCompleted.getter();
        v16 = sub_1000F5104(&qword_10094FE68, &qword_1007B5CC0);
        (*(*(v16 - 8) + 56))(v6, 0, 1, v16);
      }

      v17 = sub_1006D5938();
      sub_100756A08(v6, _s10PredicatesOMa_2);
      sub_1000060C8(0, &unk_10093F790, off_1008D4158);
      v18 = objc_allocWithZone(NSFetchRequest);
      v6 = v17;
      v19 = [v18 init];
      v20 = [swift_getObjCClassFromMetadata() entity];
      [v19 setEntity:v20];

      [v19 setAffectedStores:0];
      [v19 setPredicate:v6];

      v21 = sub_1006D68EC();
      v22 = sub_10003450C(v21);
      v21, v23, v24, v25, v26, v27, v28, v29;
      isa = Array._bridgeToObjectiveC()().super.isa;
      v22, v31, v32, v33, v34, v35, v36, v37;
      [v19 setPropertiesToFetch:isa];

      v38 = sub_1006D6C38();
      v39 = Array._bridgeToObjectiveC()().super.isa;
      v38, v40, v41, v42, v43, v44, v45, v46;
      [v19 setRelationshipKeyPathsForPrefetching:v39];

      v47 = NSManagedObjectContext.fetch<A>(_:)();
      if (v1)
      {
        v71, v48, v49, v50, v51, v52, v53, v54;

        return;
      }

      v55 = v47;
      v73 = _swiftEmptyDictionarySingleton;
      if (v47 >> 62)
      {
        v56 = _CocoaArrayWrapper.endIndex.getter();
        if (!v56)
        {
LABEL_26:
          v60 = _swiftEmptyDictionarySingleton;
LABEL_27:
          v55, v48, v49, v50, v51, v52, v53, v54;
          v61 = v71;

          sub_100754534(v60, v61);
          v60, v62, v63, v64, v65, v66, v67, v68;

          swift_bridgeObjectRelease_n();
          return;
        }
      }

      else
      {
        v56 = *((v47 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v56)
        {
          goto LABEL_26;
        }
      }

      v70 = v6;
      v57 = 0;
      a1 = v55 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if ((v55 & 0xC000000000000001) != 0)
        {
          v58 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v57 >= *((v55 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_22;
          }

          v58 = *(v55 + 8 * v57 + 32);
        }

        v59 = v58;
        v6 = (v57 + 1);
        if (__OFADD__(v57, 1))
        {
          break;
        }

        v72 = v58;
        sub_1007517E0(&v73, &v72);

        ++v57;
        if (v6 == v56)
        {
          v60 = v73;
          v6 = v70;
          goto LABEL_27;
        }
      }

      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      ;
    }

    while (_CocoaArrayWrapper.endIndex.getter());
  }
}

_TtC7remindd19RDXPCStorePerformer *sub_100754C6C(unint64_t a1, uint64_t *a2, uint64_t a3)
{
  v7 = sub_1000F5104(&qword_10094C3A8, &qword_1007B0E38);
  __chkstk_darwin(v7 - 8, v8);
  v10 = &v37 - v9;
  v11 = type metadata accessor for REMRemindersListDataView.ListsModel.Sublist();
  v40 = *(v11 - 8);
  __chkstk_darwin(v11, v12);
  v47 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14, v15);
  v39 = &v37 - v17;
  if (a1 >> 62)
  {
    goto LABEL_21;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; v16 = v35)
  {
    v19 = 0;
    v45 = a1 & 0xFFFFFFFFFFFFFF8;
    v46 = a1 & 0xC000000000000001;
    v42 = (v40 + 32);
    v43 = (v40 + 48);
    v20 = &_swiftEmptyArrayStorage;
    v37 = a2;
    v38 = a3;
    v48 = v16;
    v44 = i;
    v41 = a1;
    while (1)
    {
      if (v46)
      {
        v16 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v19 >= *(v45 + 16))
        {
          goto LABEL_20;
        }

        v16 = *(a1 + 8 * v19 + 32);
      }

      v22 = v16;
      a1 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      v49 = v16;
      sub_100750F80(&v49, a2, a3, v10);
      if (v3)
      {
        v20, v23, v24, v25, v26, v27, v28, v29;

        return v20;
      }

      v30 = v48;
      if ((*v43)(v10, 1, v48) == 1)
      {
        v16 = sub_1000050A4(v10, &qword_10094C3A8, &qword_1007B0E38);
      }

      else
      {
        v31 = *v42;
        v32 = v39;
        (*v42)(v39, v10, v30);
        v31(v47, v32, v30);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v20 = sub_100365B14(0, *v20->clientIdentity + 1, 1, v20);
        }

        v34 = *v20->clientIdentity;
        v33 = *&v20->clientIdentity[8];
        if (v34 >= v33 >> 1)
        {
          v20 = sub_100365B14((v33 > 1), v34 + 1, 1, v20);
        }

        *v20->clientIdentity = v34 + 1;
        v16 = (v31)(v20 + ((*(v40 + 80) + 32) & ~*(v40 + 80)) + *(v40 + 72) * v34, v47, v48);
        a2 = v37;
        a3 = v38;
      }

      ++v19;
      v21 = a1 == v44;
      a1 = v41;
      if (v21)
      {
        return v20;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    v35 = v16;
    i = _CocoaArrayWrapper.endIndex.getter();
  }

  return &_swiftEmptyArrayStorage;
}

void sub_100754FD4(unint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v429 = a3;
  v448 = a1;
  v449 = a2;
  v5 = sub_1000F5104(&unk_100939D90, "8\n\r");
  __chkstk_darwin(v5 - 8, v6);
  v436 = &v413 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8, v9);
  v442 = &v413 - v10;
  v444 = type metadata accessor for UUID();
  v432 = *(v444 - 8);
  __chkstk_darwin(v444, v11);
  v443 = &v413 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v426 = sub_1000F5104(&qword_100939860, &unk_10079D480);
  v425 = *(v426 - 8);
  __chkstk_darwin(v426, v13);
  v424 = &v413 - v14;
  v15 = type metadata accessor for REMRemindersListDataView.SortingDirection();
  v440 = *(v15 - 8);
  v441 = v15;
  __chkstk_darwin(v15, v16);
  v427 = &v413 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18, v19);
  v431 = &v413 - v20;
  v445 = _s9UtilitiesO12SortingStyleOMa(0);
  __chkstk_darwin(v445, v21);
  v428 = &v413 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23, v24);
  v430 = &v413 - v25;
  __chkstk_darwin(v26, v27);
  v433 = (&v413 - v28);
  __chkstk_darwin(v29, v30);
  *&v439 = &v413 - v31;
  __chkstk_darwin(v32, v33);
  v437 = &v413 - v34;
  __chkstk_darwin(v35, v36);
  v438 = &v413 - v37;
  __chkstk_darwin(v38, v39);
  v446 = &v413 - v40;
  v41 = type metadata accessor for REMRemindersListDataView.RemindersPrefetch();
  __chkstk_darwin(v41 - 8, v42);
  v435 = type metadata accessor for REMRemindersListDataView.ShowCompleted();
  v434 = *&v435[-1].shareRecordIDToRootRecordIDLock[2];
  __chkstk_darwin(v435, v43);
  v45 = &v413 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v46, v47);
  v49 = &v413 - v48;
  v50 = type metadata accessor for REMRemindersListDataView.SortingStyle();
  __chkstk_darwin(v50 - 8, v51);
  v53 = (&v413 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0));
  v54 = type metadata accessor for REMRemindersListDataView.AssignedInvocation.Parameters();
  v55 = *(v54 - 8);
  __chkstk_darwin(v54, v56);
  v58 = &v413 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  REMRemindersListDataView.AssignedInvocation.Parameters.sortingStyle.getter();
  REMRemindersListDataView.AssignedInvocation.Parameters.showCompleted.getter();
  REMRemindersListDataView.AssignedInvocation.Parameters.remindersPrefetch.getter();
  v59 = a4;
  REMRemindersListDataView.AssignedInvocation.Parameters.currentUserShareParticipantIDsOverride.getter();
  v60 = v448;
  REMRemindersListDataView.AssignedInvocation.Parameters.init(sortingStyle:showCompleted:countCompleted:remindersPrefetch:currentUserShareParticipantIDsOverride:)();
  v61 = v447;
  sub_100754818(v60);
  if (v61)
  {
    (*(v55 + 8))(v58, v54);
    return;
  }

  v63 = v62;
  v422 = v53;
  v418 = v45;
  v419 = v49;
  v417 = v59;
  v447 = 0;
  v423 = v58;
  v420 = v55;
  v421 = v54;
  if (qword_100936848 != -1)
  {
    swift_once();
  }

  v64 = type metadata accessor for Logger();
  v65 = sub_100006654(v64, qword_100951B08);
  v453 = v63;
  __chkstk_darwin(v65, v66);
  *(&v413 - 2) = v67;
  v68 = v63;
  sub_1000F5104(&qword_10093CB70, &unk_1007A0280);
  sub_1000060C8(0, &qword_100943230, NSManagedObjectID_ptr);
  sub_10000CB48(&qword_10093CB78, &qword_10093CB70, &unk_1007A0280, &protocol conformance descriptor for [A]);
  v69 = v447;
  v70 = Sequence.map<A>(skippingError:_:)();
  v78 = v449;
  v79 = v438;
  if (v69)
  {

    v63, v80, v81, v82, v83, v84, v85, v86;
    v87 = &_swiftEmptyArrayStorage;
  }

  else
  {
    v87 = v70;
    v68, v71, v72, v73, v74, v75, v76, v77;
  }

  sub_1000060C8(0, &unk_100938890, NSPredicate_ptr);
  sub_1000F5104(&qword_100939EB0, &qword_1007989A0);
  v88 = swift_allocObject();
  *(v88 + 16) = xmmword_100791300;
  *(v88 + 56) = sub_1000F5104(&qword_100937028, &qword_100791C10);
  *(v88 + 64) = sub_10000CB48(&unk_10094F0D0, &qword_100937028, &qword_100791C10, &protocol conformance descriptor for [A]);
  *(v88 + 32) = v87;
  v89 = NSPredicate.init(format:_:)();
  v90 = v422;
  v91 = v423;
  REMRemindersListDataView.AssignedInvocation.Parameters.sortingStyle.getter();
  (*(v440 + 104))(v79, enum case for REMRemindersListDataView.SortingDirection.ascending(_:), v441);
  swift_storeEnumTagMultiPayload();
  v92 = v446;
  sub_1005368D8(v90, v79, v446);
  v93 = REMSmartListTypeAssigned;
  v94 = v439;
  v96 = sub_100538914(v439, v78, REMSmartListTypeAssigned, v92, v95);
  v415 = v93;
  v416 = v96;
  v422 = v89;
  v447 = 0;
  sub_1001B1DA0(v94, v437, v97);
  if (qword_1009363F8 != -1)
  {
    swift_once();
  }

  v98 = qword_100974F68;
  sub_1000F5104(&unk_100939D60, &unk_1007959E0);
  inited = swift_initStackObject();
  v439 = xmmword_100796900;
  *(inited + 16) = xmmword_100796900;
  *(inited + 32) = swift_getKeyPath();
  *(inited + 40) = swift_getKeyPath();
  v452 = v98;

  sub_100271A80(inited);
  v453 = v452;
  v100 = swift_allocObject();
  *(v100 + 16) = v439;
  *(v100 + 32) = swift_getKeyPath();
  *(v100 + 40) = swift_getKeyPath();
  v452 = v100;
  v101 = v446;
  v103 = sub_10053CBE4(v446, v102);
  sub_100271A80(v103);
  v104 = v101;
  v105 = v433;
  sub_1001A4ED8(v104, v433, v106);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    v108 = v419;
LABEL_17:
    sub_100756A08(v105, _s9UtilitiesO12SortingStyleOMa);
    v110 = &_swiftEmptyArrayStorage;
    goto LABEL_18;
  }

  v108 = v419;
  if (EnumCaseMultiPayload == 3)
  {
    goto LABEL_17;
  }

  v109 = EnumCaseMultiPayload;
  v110 = &_swiftEmptyArrayStorage;
  if (v109 == 4)
  {
    sub_100756A08(v105, _s9UtilitiesO12SortingStyleOMa);
    if (qword_1009367F0 != -1)
    {
      swift_once();
    }
  }

LABEL_18:
  sub_100271A80(v110);
  sub_1000F5104(&qword_10093F5A8, &qword_10079DFD0);
  Array<A>.removeDuplicates()();
  Array<A>.removeDuplicates()();
  v433 = v453;
  *&v439 = v452;
  v111 = v422;
  v112 = sub_100050654(v453, v452, 0, v422);
  v113 = v91;
  REMRemindersListDataView.AssignedInvocation.Parameters.showCompleted.getter();
  v114 = v108;
  v115 = v437;
  v116 = sub_10053CE0C(v437, v114, 0);
  v117 = *(v434 + 1);
  v117(v114, v435);
  sub_1000060C8(0, &qword_10093C980, NSSortDescriptor_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;
  v119 = v116;
  v120 = v112;
  v119, v121, v122, v123, v124, v125, v126, v127;
  [(RDXPCStorePerformer *)v112 setSortDescriptors:isa];

  sub_1000060C8(0, &qword_100939EE0, off_1008D41D0);
  v128 = v449;
  v129 = v447;
  v130 = NSManagedObjectContext.fetch<A>(_:)();
  if (v129)
  {

    sub_100756A08(v115, _s9UtilitiesO12SortingStyleOMa);
    (*(v420 + 8))(v113, v421);
    v433, v131, v132, v133, v134, v135, v136, v137;
    v439, v138, v139, v140, v141, v142, v143, v144;
    sub_100756A08(v446, _s9UtilitiesO12SortingStyleOMa);
    return;
  }

  v434 = v117;
  v145 = v418;
  v146 = v130;
  REMRemindersListDataView.AssignedInvocation.Parameters.showCompleted.getter();
  sub_100539C70(v146, v145, v128, 0);
  v438 = v146;
  v413 = v147;
  v447 = 0;
  v148 = v435;
  v149.n128_f64[0] = v434(v145, v435);
  v150 = v430;
  sub_1001A4ED8(v437, v430, v149);
  v151 = swift_getEnumCaseMultiPayload();
  v414 = v120;
  if (v151 != 4)
  {
    sub_100756A08(v150, _s9UtilitiesO12SortingStyleOMa);
    v165 = v431;
    goto LABEL_25;
  }

  v152 = *v150;
  v153 = *(v150 + 8);
  v155 = *(v150 + 16);
  v154 = *(v150 + 24);
  v156 = *(v150 + 32);

  v165 = v431;
  if (!v152)
  {
    goto LABEL_25;
  }

  v153, v157, v158, v159, v160, v161, v162, v163;
  v155, v166, v167, v168, v169, v170, v171, v172;
  v154, v173, v174, v175, v176, v177, v178, v179;
  v156, v180, v181, v182, v183, v184, v185, v186;
  v187 = sub_10053C9CC();
  if (!v187)
  {
    v152, v188, v189, v190, v191, v192, v193, v194;
LABEL_25:
    v221 = v446;
    v222 = v428;
    sub_1001A4ED8(v446, v428, v164);
    v223 = swift_getEnumCaseMultiPayload();
    if (v223 > 2)
    {
      v224 = v447;
      v225 = v443;
      if (v223 == 3)
      {
        v274 = v222;
        v276 = v440;
        v275 = v441;
        (*(v440 + 32))(v165, v274, v441);
        v277 = v419;
        REMRemindersListDataView.AssignedInvocation.Parameters.showCompleted.getter();
        v278 = v438;
        v279 = sub_1001561A0(v165, v277, v438);
        v278, v280, v281, v282, v283, v284, v285, v286;
        v434(v277, v435);
        (*(v276 + 8))(v165, v275);
        v220 = v279;
        goto LABEL_39;
      }

      if (v223 != 4)
      {
LABEL_35:
        v272 = v442;
        v273 = v432;
        v220 = v438;
        goto LABEL_41;
      }
    }

    else
    {
      v224 = v447;
      v225 = v443;
      if (v223 == 1)
      {
        v227 = v440;
        v226 = v441;
        v228 = v427;
        v229 = (*(v440 + 32))(v427, v222, v441);
        __chkstk_darwin(v229, v230);
        *(&v413 - 2) = v221;
        v231 = v438;
        sub_10024CAF0(sub_10054024C, (&v413 - 4), v438);
        v233 = v232;
        v231, v234, v235, v236, v237, v238, v239, v240;
        v241 = v419;
        REMRemindersListDataView.AssignedInvocation.Parameters.showCompleted.getter();
        v242 = sub_100156950(v228, v241, v233);
        v243 = v233;
        v244 = v242;
        v243, v245, v246, v247, v248, v249, v250, v251;
        v434(v241, v435);
        v259 = *(v244 + 16);
        if (v259)
        {
          v447 = v224;
          v451 = &_swiftEmptyArrayStorage;
          specialized ContiguousArray.reserveCapacity(_:)();
          v445 = *(v425 + 16);
          v260 = (*(v425 + 80) + 32) & ~*(v425 + 80);
          v435 = v244;
          v261 = v244 + v260;
          v438 = *(v425 + 72);
          v262 = (v425 + 8);
          v263 = v426;
          v264 = v424;
          do
          {
            v445(v264, v261, v263);
            REMSortableElement.element.getter();
            (*v262)(v264, v263);
            specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
            specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
            specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            specialized ContiguousArray._endMutation()();
            v261 += v438;
            --v259;
          }

          while (v259);
          (*(v440 + 8))(v427, v441);
          v435, v265, v266, v267, v268, v269, v270, v271;
          v220 = v451;
          goto LABEL_31;
        }

        v244, v252, v253, v254, v255, v256, v257, v258;
        (*(v227 + 8))(v228, v226);
        v220 = &_swiftEmptyArrayStorage;
LABEL_39:
        v272 = v442;
        goto LABEL_40;
      }
    }

    sub_100756A08(v222, _s9UtilitiesO12SortingStyleOMa);
    goto LABEL_35;
  }

  v195 = v187;
  v196 = v419;
  REMRemindersListDataView.AssignedInvocation.Parameters.showCompleted.getter();
  v197 = v438;
  v198 = sub_100155828(v152, v196, v195, v438);
  v152, v199, v200, v201, v202, v203, v204, v205;
  v197, v206, v207, v208, v209, v210, v211, v212;

  v434(v196, v148);
  v220 = v198;
LABEL_31:
  v224 = v447;
  v272 = v442;
  v225 = v443;
LABEL_40:
  v273 = v432;
LABEL_41:
  v451 = _swiftEmptyDictionarySingleton;
  v438 = v220;
  if (v220 >> 62)
  {
    v303 = _CocoaArrayWrapper.endIndex.getter();
    v220 = v438;
    v287 = v303;
    if (v303)
    {
      goto LABEL_43;
    }

LABEL_59:
    v291 = v439;
LABEL_60:
    v220, v213, v214, v215, v216, v217, v218, v219;
    v304 = v413;

    v305 = sub_100754C6C(v448, &v451, v304);
    v306 = v224;
    v433, v307, v308, v309, v310, v311, v312, v313;
    v291, v314, v315, v316, v317, v318, v319, v320;
    swift_bridgeObjectRelease_n();
    v321 = v416;
    if (v416)
    {
      v322 = sub_10022EB6C(v416);
      v330 = v421;
      v331 = v420;
      v332 = v423;
      if (v306)
      {
        v305, v323, v324, v325, v326, v327, v328, v329;

        v333 = v414;
        v334 = v446;
LABEL_63:

        sub_100756A08(v437, _s9UtilitiesO12SortingStyleOMa);
        (*(v331 + 8))(v332, v330);
        v451, v335, v336, v337, v338, v339, v340, v341;
        sub_100756A08(v334, _s9UtilitiesO12SortingStyleOMa);
        return;
      }

      v368 = v322;
      [objc_allocWithZone(REMSmartList) initWithStore:v429 storage:v322];
      v369 = objc_allocWithZone(type metadata accessor for REMSmartList_Codable());
      REMSmartList_Codable.init(_:)();

      goto LABEL_68;
    }

    v342 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v344 = v343;
    v346 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v352 = v345;
    v330 = v421;
    v331 = v420;
    v332 = v423;
    v353 = v429;
    if (v342 == v346 && v344 == v345)
    {
      v305, v345, v346, v347, v348, v349, v350, v351;
      v344, v354, v355, v356, v357, v358, v359, v360;
    }

    else
    {
      v378 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v344, v379, v380, v381, v382, v383, v384, v385;
      v352, v386, v387, v388, v389, v390, v391, v392;
      if ((v378 & 1) == 0)
      {
        v402 = sub_10003A1B8();
        if (v402)
        {
          v403 = v402;
          v404 = sub_10022F65C(v415, v402);
          if (v306)
          {

            v305, v405, v406, v407, v408, v409, v410, v411;
            v334 = v446;
            v333 = v422;
            v321 = v414;
            goto LABEL_63;
          }

          v412 = v404;
          [objc_allocWithZone(type metadata accessor for REMSmartList_Codable()) initWithStore:v353 storage:v404];
        }

        else
        {
        }

LABEL_68:
        v370 = v446;
        sub_100756A08(v437, _s9UtilitiesO12SortingStyleOMa);
        (*(v331 + 8))(v332, v330);
        v451, v371, v372, v373, v374, v375, v376, v377;
        sub_100756A08(v370, _s9UtilitiesO12SortingStyleOMa);
        return;
      }

      v352 = v305;
    }

    v352, v361, v362, v363, v364, v365, v366, v367;
    v393 = objc_opt_self();
    v394 = String._bridgeToObjectiveC()();
    [v393 invalidParameterErrorWithDescription:v394];

    swift_willThrow();
    sub_100756A08(v437, _s9UtilitiesO12SortingStyleOMa);
    (*(v331 + 8))(v332, v330);
    v451, v395, v396, v397, v398, v399, v400, v401;
    sub_100756A08(v446, _s9UtilitiesO12SortingStyleOMa);
    return;
  }

  v287 = *((v220 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v287)
  {
    goto LABEL_59;
  }

LABEL_43:
  if (v287 >= 1)
  {
    v288 = 0;
    v447 = v220 & 0xC000000000000001;
    v289 = (v273 + 56);
    v290 = (v273 + 48);
    v445 = (v273 + 32);
    v441 = (v273 + 8);
    v291 = v439;
    while (1)
    {
      v292 = v447 ? specialized _ArrayBuffer._getElementSlowPath(_:)() : *(v220 + 8 * v288 + 32);
      v293 = v292;
      v294 = [v292 list];
      if (!v294)
      {
        break;
      }

      v295 = v224;
      v296 = v294;
      v297 = [v294 identifier];

      if (v297)
      {
        v298 = v436;
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        v299 = 0;
      }

      else
      {
        v299 = 1;
        v298 = v436;
      }

      v300 = v444;
      (*v289)(v298, v299, 1, v444);
      v301 = v298;
      v302 = v300;
      v272 = v442;
      sub_100031B58(v301, v442, &unk_100939D90, "8\n\r");
      if ((*v290)(v272, 1, v302) == 1)
      {

        v224 = v295;
        v291 = v439;
        goto LABEL_57;
      }

      (*v445)(v225, v272, v302);
      v450 = v293;
      sub_1000F5104(&qword_10093A8A8, &unk_100797EA0);
      sub_10000CB48(&qword_10093A8B0, &qword_10093CAC0, &unk_10079E1E0, &protocol conformance descriptor for [A]);
      Dictionary<>.append(_:toCollectionUnderKey:)();
      v272 = v442;
      v225 = v443;
      (*v441)(v443, v302);

      v224 = v295;
      v291 = v439;
LABEL_46:
      ++v288;
      v220 = v438;
      if (v287 == v288)
      {
        goto LABEL_60;
      }
    }

    (*v289)(v272, 1, 1, v444);
LABEL_57:
    sub_1000050A4(v272, &unk_100939D90, "8\n\r");
    goto LABEL_46;
  }

  __break(1u);
}

uint64_t sub_100756938(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000F5104(&qword_100951B48, &unk_1007B7FC0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1007569A8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100756A08(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

_TtC7remindd19RDXPCStorePerformer *sub_100756A84(uint64_t (*a1)(id *), _TtC7remindd19RDXPCStorePerformer *a2, _TtC7remindd19RDXPCStorePerformer *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v9 = a3;
  v31 = &_swiftEmptyArrayStorage;
  if (a3 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v13 = 0;
    v28 = v9 & 0xFFFFFFFFFFFFFF8;
    v29 = v9 & 0xC000000000000001;
    v27 = v9;
    while (1)
    {
      if (v29)
      {
        v14 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v13 >= *(v28 + 16))
        {
          goto LABEL_17;
        }

        v14 = *&v9->clientIdentity[8 * v13 + 16];
      }

      v15 = v14;
      v16 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      v30 = v14;
      v17 = a2;
      v18 = a1(&v30);
      if (v8)
      {
        v9, v19, v20, v21, v22, v23, v24, v25;

        return v17;
      }

      if (v18)
      {
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        v9 = v27;
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
      }

      else
      {
      }

      ++v13;
      if (v16 == i)
      {
        v17 = v31;
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  v17 = &_swiftEmptyArrayStorage;
LABEL_20:
  v9, a2, a3, a4, a5, a6, a7, a8;
  return v17;
}

uint64_t sub_100756C30()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_100951B60);
  v1 = sub_100006654(v0, qword_100951B60);
  if (qword_1009364E0 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_1009751E8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void sub_100756CF8(uint64_t a1, unint64_t a2)
{
  v24 = &_swiftEmptyArrayStorage;
  v25 = &_swiftEmptyArrayStorage;
  if (a2 >> 62)
  {
    goto LABEL_15;
  }

  for (i = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    for (j = 0; ; ++j)
    {
      if ((a2 & 0xC000000000000001) != 0)
      {
        v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (j >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_14;
        }

        v7 = *(a2 + 8 * j + 32);
      }

      v8 = v7;
      v9 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      v26 = v7;
      sub_100758D1C(&v24, &v26, a1);

      if (v2)
      {
        v24, v10, v11, v12, v13, v14, v15, v16;
        v25, v17, v18, v19, v20, v21, v22, v23;
        return;
      }

      if (v9 == i)
      {
        return;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    ;
  }
}

void sub_100756E2C(void *a1, uint64_t a2, uint64_t a3, _TtC7remindd19RDXPCStorePerformer *a4, _OWORD *a5, char a6, unint64_t a7, unint64_t a8, unint64_t a9, uint64_t a10, _TtC7remindd19RDXPCStorePerformer *a11, unint64_t a12, unint64_t a13, unint64_t a14, unint64_t a15, unint64_t a16, unint64_t a17, _TtC7remindd19RDXPCStorePerformer *a18)
{
  v25 = *(a3 + 24);
  sub_100546E18(a2, a1, v25);
  if (v18)
  {
    return;
  }

  v278 = a7;
  v26 = *(a3 + 32);
  type metadata accessor for CDIngestionCoordinator();
  v27 = swift_allocObject();
  v28 = a5[1];
  *(v27 + 24) = *a5;
  *(v27 + 16) = 0;
  *(v27 + 112) = &_swiftEmptyArrayStorage;
  *(v27 + 120) = &_swiftEmptyArrayStorage;
  *(v27 + 128) = &_swiftEmptyArrayStorage;
  *(v27 + 136) = &_swiftEmptyArrayStorage;
  *(v27 + 72) = a4;
  *(v27 + 80) = v25;
  *(v27 + 88) = a1;
  *(v27 + 40) = v28;
  *(v27 + 54) = *(a5 + 30);

  v29 = v25;
  v30 = a1;
  sub_100009DAC(a5, v284);

  v31 = v29;
  v32 = v30;
  sub_100009DAC(a5, v284);
  *(v27 + 144) = sub_10038F67C(&_swiftEmptyArrayStorage);
  *(v27 + 96) = v26;
  v274 = a5;
  *(v27 + 104) = a6 & 1;
  v272 = v32;
  if (v26 > 3)
  {
    if (v26 == 4599)
    {
      sub_1005812D4(a5);
      a4, v50, v51, v52, v53, v54, v55, v56;

      v49 = v27;
      v41 = v278;
      if (*(v27 + 16))
      {
LABEL_14:
        v40 = 1;
        while (1)
        {
LABEL_15:
          v273 = a11;
          *(v27 + 16) = v40;
          type metadata accessor for REMAccountStorageCDIngestor();
          v64 = swift_allocObject();
          sub_100600EE8(a8, v64);

          type metadata accessor for REMListStorageCDIngestor();
          v65 = swift_allocObject();
          sub_1006016F4(v41, v65);

          v49 = a9;
          v282 = &_swiftEmptyArrayStorage;
          v283 = &_swiftEmptyArrayStorage;
          if (a9 >> 62)
          {
LABEL_116:
            v263 = v49;
            v264 = _CocoaArrayWrapper.endIndex.getter();
            v49 = v263;
            v41 = v264;
          }

          else
          {
            v41 = *((a9 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          if (!v41)
          {
            break;
          }

          v66 = v49;
          sub_1000060C8(0, &qword_100939EE0, off_1008D41D0);
          a8 = swift_getObjCClassFromMetadata();
          if (v41 >= 1)
          {
            v67 = 0;
            v68 = v66;
            v279 = v66 & 0xC000000000000001;
            v69 = 7104878;
            if (v273)
            {
              v69 = a10;
            }

            v271 = v69;
            v70 = 0xE300000000000000;
            if (v273)
            {
              v70 = v273;
            }

            v270 = v70;
            v275 = &_swiftEmptyArrayStorage;
            v276 = &_swiftEmptyArrayStorage;
            v71 = v66;
            while (1)
            {
              if (v279)
              {
                v93 = specialized _ArrayBuffer._getElementSlowPath(_:)();
              }

              else
              {
                v93 = *(v68 + 8 * v67 + 32);
              }

              v94 = v93;
              v95 = [v93 objectID];
              v96 = [v95 entityName];

              v97 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v99 = v98;

              v100 = [a8 cdEntityName];
              v101 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v103 = v102;

              if (v97 == v101 && v99 == v103)
              {
                v99, v104, v105, v106, v107, v108, v109, v110;
                v103, v139, v140, v141, v142, v143, v144, v145;
LABEL_38:
                v146 = v94;
                specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
                if (*((v283 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v283 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                {
                  specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
                }

                specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

                v276 = v283;
                goto LABEL_25;
              }

              v112 = _stringCompareWithSmolCheck(_:_:expecting:)();
              v99, v113, v114, v115, v116, v117, v118, v119;
              v103, v120, v121, v122, v123, v124, v125, v126;
              if (v112)
              {
                goto LABEL_38;
              }

              v127 = [v94 objectID];
              v128 = [v127 entityName];

              v129 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v131 = v130;

              if (v129 == 0xD000000000000012 && 0x80000001007EFFC0 == v131)
              {
                v131, v132, v133, v134, v135, v136, v137, v138;
              }

              else
              {
                v147 = _stringCompareWithSmolCheck(_:_:expecting:)();
                v131, v148, v149, v150, v151, v152, v153, v154;
                if ((v147 & 1) == 0)
                {
                  if (qword_100936850 != -1)
                  {
                    swift_once();
                  }

                  v156 = type metadata accessor for Logger();
                  sub_100006654(v156, qword_100951B60);
                  sub_100009DAC(v274, v284);
                  v157 = v94;

                  v158 = Logger.logObject.getter();
                  v159 = static os_log_type_t.fault.getter();
                  v273, v160, v161, v162, v163, v164, v165, v166;
                  sub_1005812D4(v274);

                  if (os_log_type_enabled(v158, v159))
                  {
                    v269 = v158;
                    v72 = swift_slowAlloc();
                    v268 = swift_slowAlloc();
                    v284[0] = swift_slowAlloc();
                    *v72 = 136446722;

                    v73 = sub_10000668C(v271, v270, v284);
                    v270, v74, v75, v76, v77, v78, v79, v80;
                    *(v72 + 4) = v73;
                    *(v72 + 12) = 2082;
                    v81 = sub_1000063E8();
                    v83 = v82;
                    v84 = sub_10000668C(v81, v82, v284);
                    v83, v85, v86, v87, v88, v89, v90, v91;
                    *(v72 + 14) = v84;
                    *(v72 + 22) = 2114;
                    v92 = [v157 objectID];
                    *(v72 + 24) = v92;
                    *v268 = v92;
                    _os_log_impl(&_mh_execute_header, v269, v159, "RDDatabaseSaver: Attempt to ingest REMReminderStorage with unexpected '\\REMReminderStorage.objectID.entityName' {author: %{public}s, clientIdentity: %{public}s, reminderStorage.objectID: %{public}@}", v72, 0x20u);
                    sub_100039860(v268);

                    swift_arrayDestroy();
                  }

                  else
                  {
                  }

                  goto LABEL_25;
                }
              }

              v155 = v94;
              specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
              if (*((v282 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v282 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
              {
                specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
              }

              specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

              v275 = v282;
LABEL_25:
              ++v67;
              v68 = v71;
              if (v41 == v67)
              {
                goto LABEL_50;
              }
            }
          }

          __break(1u);
LABEL_131:
          v185 = _CocoaArrayWrapper.endIndex.getter();
LABEL_76:
          v186 = 0;
          while (v185 != v186)
          {
            if ((v41 & 0xC000000000000001) != 0)
            {
              v187 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              if (v186 >= *(v26 + 16))
              {
                goto LABEL_113;
              }

              v187 = *(v41 + 8 * v186 + 32);
            }

            v188 = v187;
            if (__OFADD__(v186, 1))
            {
              __break(1u);
LABEL_113:
              __break(1u);
LABEL_114:
              __break(1u);
LABEL_115:
              __break(1u);
              goto LABEL_116;
            }

            v189 = [v187 remindersICSDisplayOrderChanged];

            ++v186;
            if (v189)
            {
              goto LABEL_14;
            }
          }

          v26 = a8 & 0xFFFFFFFFFFFFFF8;
          if (a8 >> 62)
          {
            v190 = _CocoaArrayWrapper.endIndex.getter();
          }

          else
          {
            v190 = *((a8 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          v191 = 0;
          while (1)
          {
            v40 = v190 != v191;
            if (v190 == v191)
            {
              break;
            }

            if ((a8 & 0xC000000000000001) != 0)
            {
              v192 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              if (v191 >= *((a8 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_115;
              }

              v192 = *(a8 + 8 * v191 + 32);
            }

            v193 = v192;
            if (__OFADD__(v191, 1))
            {
              goto LABEL_114;
            }

            v194 = [v192 listsDADisplayOrderChanged];

            ++v191;
            if (v194)
            {
              goto LABEL_15;
            }
          }
        }

        v275 = &_swiftEmptyArrayStorage;
        v276 = &_swiftEmptyArrayStorage;
LABEL_50:
        if (v276 >> 62)
        {
          v167 = v275;
          if (!_CocoaArrayWrapper.endIndex.getter())
          {
LABEL_53:
            if (v167 >> 62)
            {
              v169 = a12;
              if (!_CocoaArrayWrapper.endIndex.getter())
              {
LABEL_56:
                if (v169 >> 62)
                {
                  v172 = a13;
                  if (!_CocoaArrayWrapper.endIndex.getter())
                  {
LABEL_59:
                    if (v172 >> 62)
                    {
                      v174 = a14;
                      if (!_CocoaArrayWrapper.endIndex.getter())
                      {
LABEL_62:
                        if (v174 >> 62)
                        {
                          v179 = a15;
                          if (!_CocoaArrayWrapper.endIndex.getter())
                          {
LABEL_65:
                            if (v179 >> 62)
                            {
                              v181 = _CocoaArrayWrapper.endIndex.getter();
                            }

                            else
                            {
                              v181 = *((v179 & 0xFFFFFFFFFFFFFF8) + 0x10);
                            }

                            if (v181)
                            {
                              type metadata accessor for REMSmartListSectionStorageCDIngestor();
                              v182 = swift_allocObject();
                              sub_10060470C(v179, v182);
                            }

                            if (a16 >> 62)
                            {
                              if (!_CocoaArrayWrapper.endIndex.getter())
                              {
                                goto LABEL_72;
                              }
                            }

                            else if (!*((a16 & 0xFFFFFFFFFFFFFF8) + 0x10))
                            {
LABEL_72:
                              static os_log_type_t.info.getter();
                              measureTimeElapsed(_:level:block:)();
                              if (v273)
                              {
                                v281 = v273;
                                v184 = v273;
                              }

                              else
                              {
                                sub_1000063E8();
                                v184 = v195;
                                v281 = 0xE300000000000000;
                              }

                              v276, v196, v197, v198, v199, v200, v201, v202;
                              v167, v203, v204, v205, v206, v207, v208, v209;
                              v210 = [v272 transactionAuthor];
                              if (v210)
                              {
                                v211 = v210;
                                static String._unconditionallyBridgeFromObjectiveC(_:)();
                                v213 = v212;
                              }

                              else
                              {
                                v213 = 0;
                              }

                              v214 = String._bridgeToObjectiveC()();
                              v184, v215, v216, v217, v218, v219, v220, v221;
                              [v272 setTransactionAuthor:v214];

                              __chkstk_darwin(v222, v223);
                              static os_log_type_t.info.getter();
                              measureTimeElapsed(_:level:block:)();
                              sub_100759518(a17, v274);
                              sub_100758034(a17, a10, v273);
                              sub_1007588AC(a18, a10, v273);
                              sub_1003DA7DC();
                              if (qword_100936850 != -1)
                              {
                                swift_once();
                              }

                              v224 = type metadata accessor for Logger();
                              sub_100006654(v224, qword_100951B60);
                              sub_100009DAC(v274, v284);

                              v225 = Logger.logObject.getter();
                              v226 = static os_log_type_t.default.getter();
                              v273, v227, v228, v229, v230, v231, v232, v233;
                              sub_1005812D4(v274);
                              if (os_log_type_enabled(v225, v226))
                              {
                                v234 = swift_slowAlloc();
                                v284[0] = swift_slowAlloc();
                                *v234 = 136446466;
                                if (v273)
                                {
                                  v235 = a10;
                                }

                                else
                                {
                                  v235 = 7104878;
                                }

                                v277 = v226;
                                v236 = sub_10000668C(v235, v281, v284);
                                v281, v237, v238, v239, v240, v241, v242, v243;
                                *(v234 + 4) = v236;
                                *(v234 + 12) = 2082;
                                v244 = sub_1000063E8();
                                v246 = v245;
                                v247 = sub_10000668C(v244, v245, v284);
                                v246, v248, v249, v250, v251, v252, v253, v254;
                                *(v234 + 14) = v247;
                                _os_log_impl(&_mh_execute_header, v225, v277, "SAVE END {request.author: %{public}s, clientIdentity: %{public}s}", v234, 0x16u);
                                swift_arrayDestroy();
                              }

                              if (v213)
                              {
                                v255 = String._bridgeToObjectiveC()();
                              }

                              else
                              {
                                v255 = 0;
                              }

                              [v272 setTransactionAuthor:v255];
                              v213, v256, v257, v258, v259, v260, v261, v262;

                              return;
                            }

                            type metadata accessor for REMTemplateSectionStorageCDIngestor();
                            v183 = swift_allocObject();
                            sub_100604F08(a16, v183);

                            goto LABEL_72;
                          }
                        }

                        else
                        {
                          v179 = a15;
                          if (!*((v174 & 0xFFFFFFFFFFFFFF8) + 0x10))
                          {
                            goto LABEL_65;
                          }
                        }

                        type metadata accessor for REMListSectionStorageCDIngestor();
                        v180 = swift_allocObject();
                        sub_100603F10(v174, v180);

                        goto LABEL_65;
                      }
                    }

                    else
                    {
                      v174 = a14;
                      if (!*((v172 & 0xFFFFFFFFFFFFFF8) + 0x10))
                      {
                        goto LABEL_62;
                      }
                    }

                    v175 = [objc_opt_self() sharedConfiguration];
                    [v175 templatePublicLinkTTL];
                    v177 = v176;

                    type metadata accessor for REMTemplateStorageCDIngestor();
                    v178 = swift_allocObject();
                    *(v178 + 16) = v177;
                    sub_100603714(v172, v178);

                    goto LABEL_62;
                  }
                }

                else
                {
                  v172 = a13;
                  if (!*((v169 & 0xFFFFFFFFFFFFFF8) + 0x10))
                  {
                    goto LABEL_59;
                  }
                }

                type metadata accessor for REMSmartListStorageCDIngestor();
                v173 = swift_allocObject();
                sub_100602F08(v169, v173);

                goto LABEL_59;
              }
            }

            else
            {
              v169 = a12;
              if (!*((v167 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_56;
              }
            }

            v170 = [objc_opt_self() defaultFetchOptions];
            type metadata accessor for REMSavedReminderStorageCDIngestor();
            v171 = swift_allocObject();
            *(v171 + 16) = v170;
            sub_10060270C(v167, v171);

            goto LABEL_56;
          }
        }

        else
        {
          v167 = v275;
          if (!*((v276 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_53;
          }
        }

        type metadata accessor for REMReminderStorageCDIngestor();
        v168 = swift_allocObject();
        sub_100601F00(v276, v168);

        goto LABEL_53;
      }

LABEL_74:
      v26 = v41 & 0xFFFFFFFFFFFFFF8;
      if (!(v41 >> 62))
      {
        v185 = *((v41 & 0xFFFFFFFFFFFFFF8) + 0x10);
        goto LABEL_76;
      }

      goto LABEL_131;
    }

    v41 = v278;
    if (v26 == 4499)
    {
LABEL_13:
      sub_1005812D4(a5);
      a4, v57, v58, v59, v60, v61, v62, v63;

      v49 = v27;
      if (*(v27 + 16))
      {
        goto LABEL_14;
      }

      goto LABEL_74;
    }

    if (v26 == 4)
    {
      sub_1005812D4(a5);
      a4, v42, v43, v44, v45, v46, v47, v48;

      v49 = v27;
      *(v27 + 17) = 1;
      if (*(v27 + 16))
      {
        goto LABEL_14;
      }

      goto LABEL_74;
    }
  }

  else
  {
    if ((v26 - 1) < 3)
    {
      sub_1005812D4(a5);
      a4, v33, v34, v35, v36, v37, v38, v39;

      v40 = 1;
      *(v27 + 17) = 1;
      v41 = v278;
      goto LABEL_15;
    }

    v41 = v278;
    if (!v26)
    {
      goto LABEL_13;
    }
  }

  if (qword_100936008 != -1)
  {
    swift_once();
  }

  v265 = type metadata accessor for Logger();
  sub_100006654(v265, qword_100945730);
  v266 = sub_1001F67C8(&_swiftEmptyArrayStorage);
  v267 = sub_1001F67C8(&_swiftEmptyArrayStorage);
  sub_10054573C("unknown mode", 12, 2, v266, v267);
  __break(1u);
}

id sub_100757F90(void *a1)
{
  v3 = 0;
  if ([a1 save:&v3])
  {
    return v3;
  }

  v2 = v3;
  _convertNSErrorToError(_:)();

  return swift_willThrow();
}

void sub_100758034(unint64_t a1, uint64_t a2, unint64_t a3)
{
  v4 = v3;
  if (a1 >> 62)
  {
    if (!_CocoaArrayWrapper.endIndex.getter())
    {
      return;
    }
  }

  else if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    return;
  }

  v8 = sub_1007582BC(a1);
  if (v8)
  {
    v9 = v8;
    sub_1003AA508(v8);
  }

  v10 = sub_100758700(a1);
  if (v10 >> 62)
  {
    v53 = v10;
    v54 = _CocoaArrayWrapper.endIndex.getter();
    v53, v55, v56, v57, v58, v59, v60, v61;
    if (!v54)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v18 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v10, v11, v12, v13, v14, v15, v16, v17;
  if (v18)
  {
LABEL_7:
    sub_1003AB484(0);
  }

LABEL_8:
  sub_1000F5104(&qword_100936EB0, &unk_1007954A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100791340;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 72) = &type metadata for String;
  v21 = 0x68747561206F6E28;
  if (a3)
  {
    v21 = a2;
  }

  v22 = 0xEB0000000029726FLL;
  if (a3)
  {
    v22 = a3;
  }

  *(inited + 40) = v20;
  *(inited + 48) = v21;
  *(inited + 56) = v22;
  *(inited + 80) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 88) = v23;

  v25 = sub_1001A6C10(v24);
  a1, v26, v27, v28, v29, v30, v31, v32;
  *(inited + 120) = sub_1000F5104(&qword_1009472C0, &qword_1007AA0E0);
  *(inited + 96) = v25;
  v33 = sub_1001F67C8(inited);
  swift_setDeallocating();
  sub_1000F5104(&unk_100939260, &unk_100797220);
  swift_arrayDestroy();
  v34 = [objc_opt_self() defaultCenter];
  v35 = *(v4 + 24);
  sub_10045CA90(v33);
  v37 = v36;
  v33, v38, v39, v40, v41, v42, v43, v44;
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  v37, v46, v47, v48, v49, v50, v51, v52;
  [v34 postNotificationName:@"RDStoreControllerDidDisableAccountsNotification" object:v35 userInfo:isa];
}

id sub_1007582BC(unint64_t a1)
{
  v1 = a1;
  v50 = &_swiftEmptyArrayStorage;
  v49 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_17;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v3 = 0;
    while (1)
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v3 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_16;
        }

        v4 = *(v1 + 8 * v3 + 32);
      }

      v5 = v4;
      v6 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        break;
      }

      v7 = [v4 accountTypeHost];
      v8 = [v7 isPrimaryCloudKit];

      if (!v8 || ([v5 _isAddingExtraPrimaryCKAccountForTesting] & 1) != 0)
      {
      }

      else
      {
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
      }

      ++v3;
      if (v6 == i)
      {
        v9 = v50;
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    ;
  }

  v9 = &_swiftEmptyArrayStorage;
LABEL_19:
  v10 = v9 < 0 || (v9 & 0x4000000000000000) != 0;
  if (v10)
  {
    if (_CocoaArrayWrapper.endIndex.getter() <= 1)
    {
      goto LABEL_39;
    }
  }

  else if (*v9->clientIdentity <= 1)
  {
    goto LABEL_39;
  }

  if (qword_100936850 != -1)
  {
    goto LABEL_52;
  }

  while (1)
  {
    v11 = type metadata accessor for Logger();
    sub_100006654(v11, qword_100951B60);

    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.fault.getter();
    v1, v14, v15, v16, v17, v18, v19, v20;
    if (os_log_type_enabled(v12, v13))
    {
      break;
    }

LABEL_38:

LABEL_39:
    if (v10)
    {
      if (!_CocoaArrayWrapper.endIndex.getter())
      {
        goto LABEL_46;
      }
    }

    else if (!*v9->clientIdentity)
    {
LABEL_46:

      return 0;
    }

    if ((v9 & 0xC000000000000001) != 0)
    {
      v45 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      goto LABEL_44;
    }

    if (*v9->clientIdentity)
    {
      v45 = *&v9->clientIdentity[16];
LABEL_44:
      v46 = v45;

      return v46;
    }

    __break(1u);
LABEL_52:
    swift_once();
  }

  v21 = swift_slowAlloc();
  v22 = swift_slowAlloc();
  v50 = v22;
  *v21 = 136446210;
  if (v49)
  {
    v23 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v23 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v23)
  {
LABEL_37:
    sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
    v29 = Array.description.getter();
    v31 = v30;
    &_swiftEmptyArrayStorage, v30, v32, v33, v34, v35, v36, v37;
    v1 = sub_10000668C(v29, v31, &v50);
    v31, v38, v39, v40, v41, v42, v43, v44;
    *(v21 + 4) = v1;
    _os_log_impl(&_mh_execute_header, v12, v13, "RDDatabaseSaver: Found more than 1 primary cloudkit account storage in array {accountIDs: %{public}s}", v21, 0xCu);
    sub_10000607C(v22);

    goto LABEL_38;
  }

  v47 = v22;
  v48 = v21;
  v49 = v12;
  result = specialized ContiguousArray.reserveCapacity(_:)();
  if ((v23 & 0x8000000000000000) == 0)
  {
    v25 = 0;
    do
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v26 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v26 = *(v1 + 8 * v25 + 32);
      }

      v27 = v26;
      ++v25;
      v28 = [v26 remObjectID];

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
    }

    while (v23 != v25);
    v22 = v47;
    v21 = v48;
    goto LABEL_37;
  }

  __break(1u);
  return result;
}

_TtC7remindd19RDXPCStorePerformer *sub_100758700(unint64_t a1)
{
  if (a1 >> 62)
  {
    goto LABEL_16;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v3 = 0;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v3 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_15;
        }

        v4 = *(a1 + 8 * v3 + 32);
      }

      v5 = v4;
      v6 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        break;
      }

      v7 = [v4 accountTypeHost];
      v8 = [v7 isNonPrimaryCloudKit];

      if (v8)
      {
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
      }

      else
      {
      }

      ++v3;
      if (v6 == i)
      {
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    ;
  }

LABEL_17:
  v9 = sub_1007582BC(a1);
  if (v9)
  {
    v10 = v9;
    sub_1000F5104(&unk_100939D60, &unk_1007959E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1007953F0;
    *(inited + 32) = v10;
    sub_100272530(inited);
  }

  return &_swiftEmptyArrayStorage;
}

void sub_1007588AC(_TtC7remindd19RDXPCStorePerformer *a1, uint64_t a2, unint64_t a3)
{
  if (a1 >> 62)
  {
LABEL_33:
    v56 = a3;
    v57 = a2;
    v58 = _CocoaArrayWrapper.endIndex.getter();
    a2 = v57;
    a3 = v56;
    v4 = v58;
    if (!v58)
    {
      return;
    }
  }

  else
  {
    v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v4)
    {
      return;
    }
  }

  v60 = a2;
  v61 = a3;
  v5 = 0;
  v63 = v4;
  do
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v5 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_32;
      }

      v6 = *&a1->clientIdentity[8 * v5 + 16];
    }

    v7 = v6;
    v8 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      __break(1u);
LABEL_32:
      __break(1u);
      goto LABEL_33;
    }

    if ([v6 inactive] & 1) != 0 || (objc_msgSend(v7, "markedForRemoval"))
    {
    }

    else
    {
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v4 = v63;
    }

    ++v5;
  }

  while (v8 != v4);
  if ((&_swiftEmptyArrayStorage & 0x8000000000000000) != 0 || (&_swiftEmptyArrayStorage & 0x4000000000000000) != 0)
  {
    v9 = v62;
    if (_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_17;
    }
  }

  else
  {
    v9 = v62;
    if (*_swiftEmptyArrayStorage.clientIdentity)
    {
LABEL_17:
      v10 = sub_1007582BC(&_swiftEmptyArrayStorage);
      if (v10)
      {
        v11 = v10;
        if (([v10 _isAddingExtraPrimaryCKAccountForTesting] & 1) == 0)
        {
          sub_1003AAB98(v11);
        }
      }

      v12 = sub_100758700(&_swiftEmptyArrayStorage);

      v20 = v12;
      if (v12 >> 62)
      {
        v59 = v12;
        v21 = _CocoaArrayWrapper.endIndex.getter();
        v20 = v59;
      }

      else
      {
        v21 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v20, v13, v14, v15, v16, v17, v18, v19;
      if (v21)
      {
        sub_1003AB484(1);
      }

      sub_1000F5104(&qword_100936EB0, &unk_1007954A0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_100791340;
      *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
      *(inited + 72) = &type metadata for String;
      v24 = 0x68747561206F6E28;
      if (v61)
      {
        v24 = v60;
      }

      v25 = 0xEB0000000029726FLL;
      if (v61)
      {
        v25 = v61;
      }

      *(inited + 40) = v23;
      *(inited + 48) = v24;
      *(inited + 56) = v25;
      *(inited + 80) = static String._unconditionallyBridgeFromObjectiveC(_:)();
      *(inited + 88) = v26;

      v28 = sub_1001A6C10(v27);
      a1, v29, v30, v31, v32, v33, v34, v35;
      *(inited + 120) = sub_1000F5104(&qword_1009472C0, &qword_1007AA0E0);
      *(inited + 96) = v28;
      v36 = sub_1001F67C8(inited);
      swift_setDeallocating();
      sub_1000F5104(&unk_100939260, &unk_100797220);
      swift_arrayDestroy();
      v37 = [objc_opt_self() defaultCenter];
      v38 = *(v9 + 24);
      sub_10045CA90(v36);
      v40 = v39;
      v36, v41, v42, v43, v44, v45, v46, v47;
      isa = Dictionary._bridgeToObjectiveC()().super.isa;
      v40, v49, v50, v51, v52, v53, v54, v55;
      [v37 postNotificationName:@"RDStoreControllerDidEnableAccountsNotification" object:v38 userInfo:isa];

      return;
    }
  }
}

uint64_t sub_100758CB8()
{

  return swift_deallocClassInstance();
}

void sub_100758D1C(void *a1, id *a2, uint64_t a3)
{
  v5 = *a2;
  v6 = [*a2 remObjectID];
  v7 = v6;
  if (!*(a3 + 16) || (v8 = sub_10002B924(v6), (v9 & 1) == 0))
  {

    return;
  }

  v10 = *(*(a3 + 56) + 8 * v8);

  v11 = [v5 markedForRemoval];
  if (sub_100240BDC(0x6576697463616E69, 0xE800000000000000, v10))
  {
    v12 = [v5 inactive];
  }

  else
  {
    v12 = 0;
  }

  v13 = sub_100240BDC(0x44497463656A626FLL, 0xE800000000000000, v10);
  v14 = sub_100240BDC(0x6576697463616E69, 0xE800000000000000, v10);
  v10, v15, v16, v17, v18, v19, v20, v21;
  if (v14)
  {
    v22 = v13 | [v5 inactive] ^ 1;
    if (v11)
    {
      if (v13)
      {
        v23 = &selRef_validationErrorRemoveAccountBeingInserted_;
      }

      else
      {
        v23 = &selRef_validationErrorRemoveAccountBeingActivated_;
      }

      if ((v22 & 1) == 0)
      {
        goto LABEL_26;
      }

LABEL_18:
      v24 = objc_opt_self();
      v25 = [v5 objectID];
      [v24 *v23];

      swift_willThrow();
      return;
    }

    if ((v22 & 1) == 0)
    {
LABEL_25:
      if (!v12)
      {
        return;
      }

      goto LABEL_26;
    }

LABEL_22:
    v26 = v5;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((*a1 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*a1 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    goto LABEL_25;
  }

  if (!v11)
  {
    if ((v13 & 1) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_22;
  }

  if (v13)
  {
    v23 = &selRef_validationErrorRemoveAccountBeingInserted_;
    goto LABEL_18;
  }

LABEL_26:
  v27 = v5;
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((a1[1] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((a1[1] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
}

void sub_100758FE0(unint64_t a1)
{
  v3 = v1;
  v72 = type metadata accessor for UUID();
  v5 = *(v72 - 8);
  __chkstk_darwin(v72, v6);
  v71 = v68 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 >> 62)
  {
    goto LABEL_41;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v70 = v5;
    v9 = 0;
    v75 = &_swiftEmptyArrayStorage;
    v5 = a1 & 0xFFFFFFFFFFFFFF8;
    v73 = &_swiftEmptyArrayStorage;
LABEL_4:
    v10 = v9;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v11 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v10 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_40;
        }

        v11 = *(a1 + 8 * v10 + 32);
      }

      v12 = v11;
      v9 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (![v11 markedForRemoval])
      {
        v20 = v12;
        sub_1005E37E8([v20 remObjectID]);
        if (v2)
        {
          v73, v21, v22, v23, v24, v25, v26, v27;

          goto LABEL_36;
        }

        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*v75->clientIdentity >= *&v75->clientIdentity[8] >> 1)
        {
          v69 = v3;
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          v3 = v69;
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v73 = v75;
        if (v9 == i)
        {
LABEL_17:
          v28 = v73;
          v29 = *v73->clientIdentity;
          if (v29)
          {
            v68[1] = v2;
            v69 = v3;
            v75 = &_swiftEmptyArrayStorage;
            sub_100026EF4(0, v29, 0);
            v30 = v75;
            v31 = (v70 + 8);
            v32 = 32;
            do
            {
              v33 = *(&v28->super.isa + v32);
              v34 = [v33 uuid];
              v35 = v71;
              static UUID._unconditionallyBridgeFromObjectiveC(_:)();

              v36 = UUID.uuidString.getter();
              v38 = v37;

              (*v31)(v35, v72);
              v75 = v30;
              v47 = *v30->clientIdentity;
              v46 = *&v30->clientIdentity[8];
              if (v47 >= v46 >> 1)
              {
                sub_100026EF4((v46 > 1), v47 + 1, 1);
                v30 = v75;
              }

              *v30->clientIdentity = v47 + 1;
              v48 = v30 + 16 * v47;
              *(v48 + 4) = v36;
              *(v48 + 5) = v38;
              v32 += 8;
              --v29;
              v28 = v73;
            }

            while (v29);
            v73, v39, v40, v41, v42, v43, v44, v45;
            v3 = v69;
          }

          else
          {
            v73, v13, v14, v15, v16, v17, v18, v19;
            v30 = &_swiftEmptyArrayStorage;
          }

          v74 = 0;
          v49 = *(v3 + 24);
          isa = Array._bridgeToObjectiveC()().super.isa;
          v30, v51, v52, v53, v54, v55, v56, v57;
          v75 = 0;
          v58 = [v49 createAccountStoresWithIdentifiers:isa didAddNewStores:&v74 error:&v75];

          if ((v58 & 1) == 0)
          {
            v66 = v75;
            _convertNSErrorToError(_:)();

            swift_willThrow();
            return;
          }

          v59 = v74;
          v60 = qword_100936850;
          v61 = v75;
          if (v59 == 1)
          {
            if (v60 != -1)
            {
              swift_once();
            }

            v62 = type metadata accessor for Logger();
            sub_100006654(v62, qword_100951B60);
            v20 = Logger.logObject.getter();
            v63 = static os_log_type_t.default.getter();
            if (os_log_type_enabled(v20, v63))
            {
              v64 = swift_slowAlloc();
              *v64 = 0;
              v65 = "RDDatabaseSaver: createMissingAccountStores did add some new stores.";
              goto LABEL_35;
            }
          }

          else
          {
            if (v60 != -1)
            {
              swift_once();
            }

            v67 = type metadata accessor for Logger();
            sub_100006654(v67, qword_100951B60);
            v20 = Logger.logObject.getter();
            v63 = static os_log_type_t.info.getter();
            if (os_log_type_enabled(v20, v63))
            {
              v64 = swift_slowAlloc();
              *v64 = 0;
              v65 = "RDDatabaseSaver: createMissingAccountStores did not add any new store because stores for all accounts are already present.";
LABEL_35:
              _os_log_impl(&_mh_execute_header, v20, v63, v65, v64, 2u);
            }
          }

LABEL_36:

          return;
        }

        goto LABEL_4;
      }

      ++v10;
      if (v9 == i)
      {
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    ;
  }
}

void sub_100759518(unint64_t a1, uint64_t a2)
{
  v170[0] = a2;
  v176 = type metadata accessor for UUID();
  v3 = *(v176 - 8);
  __chkstk_darwin(v176, v4);
  v175 = v170 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 >> 62)
  {
    goto LABEL_21;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v14 = 0;
    v177 = 0;
    v15 = a1 & 0xC000000000000001;
    v171 = a1 & 0xFFFFFFFFFFFFFF8;
    v172 = (v3 + 1);
    v16 = &_swiftEmptyArrayStorage;
    v3 = &selRef_isEmpty;
    v173 = a1 & 0xC000000000000001;
    v174 = i;
    while (1)
    {
      if (v15)
      {
        v17 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v14 >= *(v171 + 16))
        {
          goto LABEL_20;
        }

        v17 = *(a1 + 8 * v14 + 32);
      }

      v18 = v17;
      v19 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if ([v17 v3[246]])
      {
        v20 = v18;
        v21 = [v20 remObjectID];
        v22 = v177;
        v23 = sub_1005E37E8(v21);
        v177 = v22;
        if (v22)
        {
          v16, v24, v25, v26, v27, v28, v29, v30;

          goto LABEL_39;
        }

        v31 = v23;
        v32 = a1;

        v33 = [v31 uuid];
        v34 = v175;
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        v35 = UUID.uuidString.getter();
        v37 = v36;
        (*v172)(v34, v176);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v16 = sub_100365788(0, *v16->clientIdentity + 1, 1, v16, v38, v39, v40, v41);
        }

        v43 = *v16->clientIdentity;
        v42 = *&v16->clientIdentity[8];
        if (v43 >= v42 >> 1)
        {
          v16 = sub_100365788((v42 > 1), v43 + 1, 1, v16, v38, v39, v40, v41);
        }

        *v16->clientIdentity = v43 + 1;
        v44 = v16 + 16 * v43;
        *(v44 + 4) = v35;
        *(v44 + 5) = v37;
        a1 = v32;
        v15 = v173;
        i = v174;
        v3 = &selRef_isEmpty;
      }

      else
      {
      }

      ++v14;
      if (v19 == i)
      {
        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    ;
  }

  v16 = &_swiftEmptyArrayStorage;
LABEL_23:
  if (*v16->clientIdentity)
  {
    v45 = sub_100008E70();
    if (v46)
    {
      v47 = v45;
    }

    else
    {
      v47 = 7104878;
    }

    if (v46)
    {
      v48 = v46;
    }

    else
    {
      v48 = 0xE300000000000000;
    }

    if (qword_100936850 != -1)
    {
      swift_once();
    }

    v49 = type metadata accessor for Logger();
    sub_100006654(v49, qword_100951B60);

    v50 = Logger.logObject.getter();
    v51 = static os_log_type_t.default.getter();
    v48, v52, v53, v54, v55, v56, v57, v58;
    if (os_log_type_enabled(v50, v51))
    {
      v59 = swift_slowAlloc();
      v178 = swift_slowAlloc();
      *v59 = 136446466;
      *(v59 + 4) = sub_10000668C(v47, v48, &v178);
      *(v59 + 12) = 2082;

      v60 = Array.description.getter();
      v62 = v61;
      v16, v61, v63, v64, v65, v66, v67, v68;
      v69 = sub_10000668C(v60, v62, &v178);
      v62, v70, v71, v72, v73, v74, v75, v76;
      *(v59 + 14) = v69;
      _os_log_impl(&_mh_execute_header, v50, v51, "RDDatabaseSaver: These accounts are marked for removal {clientIdentity: %{public}s, accountIdentifiers: %{public}s}", v59, 0x16u);
      swift_arrayDestroy();
    }

    v77 = *(v170[1] + 24);

    isa = Array._bridgeToObjectiveC()().super.isa;
    v16, v79, v80, v81, v82, v83, v84, v85;
    v178 = 0;
    v86 = [v77 removeAccountStoresWithIdentifiers:isa error:&v178];

    v87 = v178;
    if (v86)
    {

      v88 = v87;
      v89 = Logger.logObject.getter();
      v90 = static os_log_type_t.default.getter();
      v48, v91, v92, v93, v94, v95, v96, v97;
      if (os_log_type_enabled(v89, v90))
      {
        v105 = swift_slowAlloc();
        v178 = swift_slowAlloc();
        *v105 = 136446466;
        v106 = sub_10000668C(v47, v48, &v178);
        v48, v107, v108, v109, v110, v111, v112, v113;
        *(v105 + 4) = v106;
        *(v105 + 12) = 2082;

        v114 = Array.description.getter();
        v116 = v115;
        v16, v115, v117, v118, v119, v120, v121, v122;
        v123 = sub_10000668C(v114, v116, &v178);
        v116, v124, v125, v126, v127, v128, v129, v130;
        *(v105 + 14) = v123;
        _os_log_impl(&_mh_execute_header, v89, v90, "RDDatabaseSaver: Removed account stores {clientIdentity: %{public}s, accountIdentifiers: %{public}s}", v105, 0x16u);
        swift_arrayDestroy();

        v138 = v16;
      }

      else
      {
        v16, v98, v99, v100, v101, v102, v103, v104;
        v138 = v48;
      }

      v138, v131, v132, v133, v134, v135, v136, v137;
    }

    else
    {
      v139 = v178;
      v48, v140, v141, v142, v143, v144, v145, v146;
      v177 = _convertNSErrorToError(_:)();

      swift_willThrow();
      v16, v147, v148, v149, v150, v151, v152, v153;
LABEL_39:
      if (qword_100936850 != -1)
      {
        swift_once();
      }

      v154 = type metadata accessor for Logger();
      sub_100006654(v154, qword_100951B60);
      swift_errorRetain();
      v155 = Logger.logObject.getter();
      v156 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v155, v156))
      {
        v157 = swift_slowAlloc();
        v158 = swift_slowAlloc();
        v178 = v158;
        *v157 = 136446210;
        swift_getErrorValue();
        v159 = Error.rem_errorDescription.getter();
        v161 = v160;
        v162 = sub_10000668C(v159, v160, &v178);
        v161, v163, v164, v165, v166, v167, v168, v169;
        *(v157 + 4) = v162;
        _os_log_impl(&_mh_execute_header, v155, v156, "RDDatabaseSaver: Error performing removeAccountStores(withIdentifiers:). {error: %{public}s}", v157, 0xCu);
        sub_10000607C(v158);
      }

      else
      {
      }
    }
  }

  else
  {
    v16, v5, v6, v7, v8, v9, v10, v11;
  }
}

uint64_t sub_100759CCC()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_100951C50);
  v1 = sub_100006654(v0, qword_100951C50);
  if (qword_100936460 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_100975068);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

char *sub_100759D94(NSObject *a1, void (*a2)(char *, uint64_t), uint64_t a3, uint64_t a4)
{
  v48 = a3;
  v49 = a4;
  v52 = a1;
  v53 = a2;
  v5 = type metadata accessor for REMAnalyticsEvent();
  v50 = *(v5 - 8);
  __chkstk_darwin(v5, v6);
  v8 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for REMTrialNamespace();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9, v11);
  v13 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = type metadata accessor for Date();
  v14 = *(v55 - 8);
  __chkstk_darwin(v55, v15);
  v17 = &v43 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18, v19);
  v54 = &v43 - v20;
  Date.init()();
  type metadata accessor for REMTrialClient();
  swift_allocObject();
  v21 = REMTrialClient.init()();
  if (v4)
  {
    v22 = *(v14 + 8);
    (v22)(v54, v55);
  }

  else
  {
    v23 = v21;
    (*(v10 + 104))(v13, enum case for REMTrialNamespace.grocery(_:), v9);
    v51 = v23;
    v24 = dispatch thunk of REMTrialClient.deploymentId(for:)();
    v25 = v51;
    v46 = v24;
    v47 = v26;
    (*(v10 + 8))(v13, v9);

    v22 = sub_10025A4E4(v52, v53, v25);

    v28 = REMGroceryClassifier.modelTypesDescription.getter();
    v43 = v29;
    v44 = v28;
    Date.init()();
    Date.timeIntervalSince(_:)();
    v31 = v30;
    v45 = *(v14 + 8);
    v45(v17, v55);
    v32 = v5;
    if (qword_100936858 != -1)
    {
      swift_once();
    }

    v33 = type metadata accessor for Logger();
    sub_100006654(v33, qword_100951C50);
    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.info.getter();
    v36 = os_log_type_enabled(v34, v35);
    v37 = v50;
    if (v36)
    {
      v38 = swift_slowAlloc();
      *v38 = 134217984;
      *(v38 + 4) = v31;
      _os_log_impl(&_mh_execute_header, v34, v35, "REMGroceryClassifier model loading time: %f", v38, 0xCu);
    }

    type metadata accessor for REMAnalyticsManager();
    static REMAnalyticsManager.shared.getter();
    *v8 = v31;
    v39 = v43;
    *(v8 + 1) = v44;
    *(v8 + 2) = v39;
    *(v8 + 12) = 513;
    *(v8 + 26) = v56;
    *(v8 + 15) = v57;
    v40 = v47;
    *(v8 + 4) = v46;
    *(v8 + 5) = v40;
    v41 = v53;
    *(v8 + 6) = v52;
    *(v8 + 7) = v41;
    v42 = v49;
    *(v8 + 8) = v48;
    *(v8 + 9) = v42;
    *(v8 + 10) = 0;
    *(v8 + 11) = 0;
    (*(v37 + 104))(v8, enum case for REMAnalyticsEvent.loadGroceryModel(_:), v32);

    REMAnalyticsManager.post(event:)();

    (*(v37 + 8))(v8, v32);
    v45(v54, v55);
  }

  return v22;
}

uint64_t sub_10075A404(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v5 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  v3(v5, v7);
  sub_10001BBA0(v5, v7);
}

uint64_t sub_10075A48C()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_100951C70);
  v1 = sub_100006654(v0, qword_100951C70);
  if (qword_100936440 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_100975008);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

char *sub_10075A554()
{
  type metadata accessor for RDDataAccess(0);
  swift_allocObject();
  result = sub_10075A74C();
  qword_1009753A0 = result;
  return result;
}

uint64_t sub_10075A594()
{
  result = sub_10075A5B8();
  byte_1009753A9 = result & 1;
  return result;
}

id sub_10075A5B8()
{
  v0 = [objc_allocWithZone(REMDataAccessBehaviorManager) init];
  v1 = [v0 isDataAccessEnabled];

  if (v1)
  {
    if (qword_100936860 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_100006654(v2, qword_100951C70);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      v6 = "Did query DataAccess Enabled status {dataAccessEnabled: true}";
LABEL_10:
      _os_log_impl(&_mh_execute_header, v3, v4, v6, v5, 2u);
    }
  }

  else
  {
    if (qword_100936860 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_100006654(v7, qword_100951C70);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      v6 = "BehaviorManager says dataAccess is not enabled {dataAccessEnabled: false}";
      goto LABEL_10;
    }
  }

  return v1;
}

char *sub_10075A74C()
{
  *(v0 + 2) = 0;
  *(v0 + 5) = 0;
  v1 = OBJC_IVAR____TtC7remindd12RDDataAccess_storeControllerNotificationCenterToken;
  v2 = type metadata accessor for RDStoreControllerNotificationCenter.Token(0);
  (*(*(v2 - 8) + 56))(&v0[v1], 1, 1, v2);
  v3 = qword_100951C88;
  if (qword_100951C88 && off_100951C90 && qword_100951C98 && (v4 = *(off_100951C90 + 2), (v5 = swift_dynamicCastObjCProtocolConditional()) != 0))
  {
    v6 = v5;
    type metadata accessor for RDDataAccessREMStoreProvider();
    v7 = swift_allocObject();
    *(v7 + 16) = v3;
    *(v7 + 24) = v4;
    *(v0 + 3) = v7;
    type metadata accessor for RDDataAccessUserNotificationPresentingProvider();
    v8 = swift_allocObject();
    *(v8 + 16) = v6;
    *(v0 + 4) = v8;
    v9 = v3;
    v10 = v4;
    swift_unknownObjectRetain();
    return v0;
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t sub_10075A930()
{
  v1 = sub_1000F5104(&qword_100942CA0, &qword_1007A3810);
  __chkstk_darwin(v1 - 8, v2);
  v4 = &v18[-v3];
  v5 = type metadata accessor for RDStoreControllerNotificationCenter.Token(0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5, v7);
  v9 = &v18[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = *(v0 + 40);
  if (!v10)
  {
    goto LABEL_6;
  }

  v11 = OBJC_IVAR____TtC7remindd12RDDataAccess_storeControllerNotificationCenterToken;
  swift_beginAccess();
  sub_10014D7CC(v0 + v11, v4);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_10034EE48(v4);
LABEL_6:

    sub_10034EE48(v0 + OBJC_IVAR____TtC7remindd12RDDataAccess_storeControllerNotificationCenterToken);
    return v0;
  }

  sub_10014D83C(v4, v9, type metadata accessor for RDStoreControllerNotificationCenter.Token);
  v12 = *(v10 + 40);

  os_unfair_lock_lock(v12);
  __chkstk_darwin(v13, v14);
  *&v18[-16] = v9;
  swift_beginAccess();
  v15 = sub_1002601AC(sub_10014D8A4, &v18[-32]);
  v16 = *(*(v10 + 48) + 16);
  if (v16 >= v15)
  {
    sub_100260C60(v15, v16);
    swift_endAccess();
    os_unfair_lock_unlock(v12);

    sub_10014D8C4(v9, type metadata accessor for RDStoreControllerNotificationCenter.Token);
    goto LABEL_6;
  }

  __break(1u);
  result = swift_endAccess();
  __break(1u);
  return result;
}

uint64_t sub_10075ABC0()
{
  sub_10075A930();

  return swift_deallocClassInstance();
}

void sub_10075AC18(uint64_t a1, uint64_t a2)
{
  if (qword_100936860 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100006654(v4, qword_100951C70);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "RDDataAccess is starting...", v7, 2u);
  }

  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v8, v9, "os_transaction INIT {name: com.apple.remindd.dataaccess.launch}", v10, 2u);
  }

  v11 = os_transaction_create();
  setDAIsRunningInDataAccessD();
  v12 = objc_opt_self();
  sub_1000060C8(0, &qword_100952108, DADaemonPowerAssertionManager_ptr);
  [v12 vendDaemons:swift_getObjCClassFromMetadata()];
  v13 = [objc_opt_self() sharedMain];
  if (v13)
  {
    v14 = v13;
    v15 = swift_allocObject();
    v15[2] = v14;
    v15[3] = a1;
    v15[4] = a2;
    v15[5] = v11;
    v19[4] = sub_10075CB3C;
    v19[5] = v15;
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 1107296256;
    v19[2] = sub_100019200;
    v19[3] = &unk_1008FE5E0;
    v16 = _Block_copy(v19);
    v17 = v14;

    swift_unknownObjectRetain();

    sub_1000060C8(0, &qword_10093E6E0, OS_dispatch_queue_ptr);
    v18 = static OS_dispatch_queue.main.getter();
    [v17 waitForSystemAvailabilityWithCompletionBlock:v16 completionQueue:v18];

    swift_unknownObjectRelease();
    _Block_release(v16);
  }

  else
  {
    swift_unknownObjectRelease();
  }
}

uint64_t sub_10075AF14(void *a1, uint64_t a2, uint64_t a3)
{
  if (qword_100936860 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_100006654(v6, qword_100951C70);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "RDDataAccess has done waitForSystemAvailability, now adding to operation queue to bootstrap DADAgentManager", v9, 2u);
  }

  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v10, v11, "os_transaction INIT {name: com.apple.remindd.dataaccess.agentManager.load}", v12, 2u);
  }

  v13 = os_transaction_create();
  if (a1)
  {
    v14 = swift_allocObject();
    v14[2] = a2;
    v14[3] = a3;
    v14[4] = v13;
    v23[4] = sub_10075CB48;
    v23[5] = v14;
    v23[0] = _NSConcreteStackBlock;
    v23[1] = 1107296256;
    v23[2] = sub_100019200;
    v23[3] = &unk_1008FE630;
    v15 = _Block_copy(v23);

    swift_unknownObjectRetain();

    [a1 addToOperationsQueueDisabledCheckAndGoBlock:0 wrappedBlock:v15];
    _Block_release(v15);
  }

  result = gDADHighAvailabilityQueue;
  if (gDADHighAvailabilityQueue)
  {
    dispatch_resume(gDADHighAvailabilityQueue);
    byte_1009753A8 = 1;
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&_mh_execute_header, v17, v18, "RDDataAccess finished starting (note that DADAgentManager may not have done loading up yet)", v19, 2u);
    }

    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&_mh_execute_header, v20, v21, "os_transaction RELEASE {name: com.apple.remindd.dataaccess.launch}", v22, 2u);
    }

    return swift_unknownObjectRelease();
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_10075B258(void *a1, uint64_t a2)
{
  v4 = [objc_opt_self() sharedManager];
  [v4 setRem_storeProvider:a1[3]];
  v5 = [objc_opt_self() sharedDBWatcher];
  [v4 setRem_localDBWatcher:v5];

  [v4 setRem_userNotificationPresentingProvider:a1[4]];
  v18[4] = j___s7remindd28RDLaunchAnalyticsPostNotifydyySo13OS_xpc_object_pF;
  v18[5] = 0;
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 1107296256;
  v18[2] = sub_1000EBA84;
  v18[3] = &unk_1008FE658;
  v6 = _Block_copy(v18);
  [v4 setRem_xpcEventHandler:v6];
  _Block_release(v6);
  [v4 _loadAndStartMonitoringAgents:1];
  if (qword_100936860 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_100006654(v7, qword_100951C70);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v8, v9, "RDDataAccess has done _loadAndStartMonitoringAgents on DADAgentManager", v10, 2u);
  }

  v11 = [v4 rem_localDBWatcher];
  if (v11)
  {
    v12 = v11;
    v13 = gDADHighAvailabilityQueue;
    v14 = gDADHighAvailabilityQueue;
    sub_10075B56C(v12, v13);

    a1[2] = a2;

    *(a2 + 48) = &off_1008FE418;
    swift_unknownObjectWeakAssign();
    sub_100050DF8(a2);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&_mh_execute_header, v15, v16, "os_transaction RELEASE {name: com.apple.remindd.dataaccess.agentManager.load}", v17, 2u);
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_10075B56C(uint64_t a1, void *a2)
{
  v5 = type metadata accessor for RDStoreControllerNotificationCenter.Observer(0);
  v6 = *(v5 - 1);
  __chkstk_darwin(v5, v7);
  v9 = v67 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10, v11);
  v13 = v67 - v12;
  v14 = sub_1000F5104(&qword_100942CA0, &qword_1007A3810);
  __chkstk_darwin(v14 - 8, v15);
  v17 = v67 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18, v19);
  v21 = v67 - v20;
  v22 = off_100951C90;
  if (off_100951C90 && a2)
  {
    v69 = v6;
    sub_1000F5104(&unk_100936FD0, &unk_100795D40);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100791320;
    v24 = objc_opt_self();

    v68 = a2;
    v70 = v9;
    v25 = [v24 cdEntityName];
    v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v67[1] = a1;
    v28 = v27;

    *(inited + 32) = v26;
    *(inited + 40) = v28;
    v29 = [objc_opt_self() cdEntityName];
    v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v32 = v31;

    *(inited + 48) = v30;
    *(inited + 56) = v32;
    v33 = [objc_opt_self() cdEntityName];
    v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v36 = v35;

    *(inited + 64) = v34;
    *(inited + 72) = v36;
    *(v2 + 40) = v22;

    v37 = sub_1001A5660(inited);
    inited, v38, v39, v40, v41, v42, v43, v44;
    v45 = swift_allocObject();
    swift_unknownObjectWeakInit();

    UUID.init()();
    sub_100026CD8(v21, v13, type metadata accessor for RDStoreControllerNotificationCenter.Token);
    *&v13[v5[5]] = v37;
    *&v13[v5[6]] = v68;
    v46 = &v13[v5[7]];
    *v46 = sub_10002AE54;
    v46[1] = v45;
    v47 = *(v22 + 5);

    os_unfair_lock_lock(v47);
    sub_100026CD8(v13, v70, type metadata accessor for RDStoreControllerNotificationCenter.Observer);
    swift_beginAccess();
    v48 = *(v22 + 6);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v22 + 6) = v48;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v48 = sub_100365714(0, *v48->clientIdentity + 1, 1, v48);
      *(v22 + 6) = v48;
    }

    v51 = *v48->clientIdentity;
    v50 = *&v48->clientIdentity[8];
    if (v51 >= v50 >> 1)
    {
      v48 = sub_100365714((v50 > 1), v51 + 1, 1, v48);
    }

    *v48->clientIdentity = v51 + 1;
    sub_10014D83C(v70, v48 + ((*(v69 + 80) + 32) & ~*(v69 + 80)) + *(v69 + 72) * v51, type metadata accessor for RDStoreControllerNotificationCenter.Observer);
    *(v22 + 6) = v48;
    swift_endAccess();
    os_unfair_lock_unlock(v47);
    v37, v52, v53, v54, v55, v56, v57, v58;

    sub_10014D8C4(v13, type metadata accessor for RDStoreControllerNotificationCenter.Observer);

    v59 = type metadata accessor for RDStoreControllerNotificationCenter.Token(0);
    (*(*(v59 - 8) + 56))(v21, 0, 1, v59);
    v60 = OBJC_IVAR____TtC7remindd12RDDataAccess_storeControllerNotificationCenterToken;
    swift_beginAccess();
    sub_10014D740(v21, v2 + v60);
    swift_endAccess();
  }

  else
  {
    *(v2 + 40) = 0;

    v61 = type metadata accessor for RDStoreControllerNotificationCenter.Token(0);
    (*(*(v61 - 8) + 56))(v17, 1, 1, v61);
    v62 = OBJC_IVAR____TtC7remindd12RDDataAccess_storeControllerNotificationCenterToken;
    swift_beginAccess();
    sub_10014D740(v17, v2 + v62);
    swift_endAccess();
    if (qword_100936860 != -1)
    {
      swift_once();
    }

    v63 = type metadata accessor for Logger();
    sub_100006654(v63, qword_100951C70);
    v64 = Logger.logObject.getter();
    v65 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v64, v65))
    {
      v66 = swift_slowAlloc();
      *v66 = 0;
      _os_log_impl(&_mh_execute_header, v64, v65, "You should set up a RDStoreControllerNotificationCenter and work queue before starting RDDataAccess in order to observe reminders database.", v66, 2u);
    }
  }
}

id sub_10075BCA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(v5 + 24);
  v18 = a2;
  v19 = a3;
  v14 = _NSConcreteStackBlock;
  v15 = 1107296256;
  v16 = sub_10075A404;
  v17 = &unk_1008FE450;
  v10 = _Block_copy(&v14);

  v18 = a4;
  v19 = a5;
  v14 = _NSConcreteStackBlock;
  v15 = 1107296256;
  v16 = sub_10056A480;
  v17 = &unk_1008FE478;
  v11 = _Block_copy(&v14);

  v12 = [v9 observePrimaryCloudKitAccountPersonIDSaltChangesOnQueue:a1 successHandler:v10 errorHandler:v11];
  _Block_release(v11);
  _Block_release(v10);
  return v12;
}

void RDUserNotificationCenter.showNotification(withIdentifier:content:completion:)(uint64_t a1, _TtC7remindd19RDXPCStorePerformer *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v11 = type metadata accessor for UUID();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11, v13);
  v15 = &v85 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v16 = a2;
  }

  else
  {
    UUID.init()();
    a1 = UUID.uuidString.getter();
    v16 = v17;
    (*(v12 + 8))(v15, v11);
  }

  objc_opt_self();
  v18 = swift_dynamicCastObjCClass();
  if (v18)
  {
    v19 = v18;
    v20 = qword_100936860;

    swift_unknownObjectRetain();
    if (v20 != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    sub_100006654(v21, qword_100951C70);
    swift_unknownObjectRetain();

    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.default.getter();
    swift_unknownObjectRelease();
    v16, v24, v25, v26, v27, v28, v29, v30;
    if (os_log_type_enabled(v22, v23))
    {
      v31 = swift_slowAlloc();
      v89 = a4;
      v32 = v31;
      v87 = swift_slowAlloc();
      v92 = v87;
      *v32 = 136446722;
      v88 = a1;
      *(v32 + 4) = sub_10000668C(a1, v16, &v92);
      *(v32 + 12) = 2082;
      v33 = [v19 categoryIdentifier];
      v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v90 = a5;
      v91 = v6;
      v35 = v34;
      v37 = v36;

      v38 = sub_10000668C(v35, v37, &v92);
      v37, v39, v40, v41, v42, v43, v44, v45;
      *(v32 + 14) = v38;
      *(v32 + 22) = 2080;
      v46 = [v19 userInfo];
      v47 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
      v86 = v23;
      v48 = v47;

      a5 = v90;
      v49 = Dictionary.description.getter();
      v51 = v50;
      v48, v50, v52, v53, v54, v55, v56, v57;
      v58 = sub_10000668C(v49, v51, &v92);
      v51, v59, v60, v61, v62, v63, v64, v65;
      *(v32 + 24) = v58;
      _os_log_impl(&_mh_execute_header, v22, v86, "DADREMUserNotificationPresenting: show notification for DA {identifier: %{public}s, category: %{public}s, content.userInfo: %s}", v32, 0x20u);
      swift_arrayDestroy();

      a4 = v89;

      v66 = v88;
    }

    else
    {

      v66 = a1;
    }

    sub_10052554C(v66, v16, v19, a4, a5);
    v16, v78, v79, v80, v81, v82, v83, v84;
    swift_unknownObjectRelease();
  }

  else
  {

    v16, v67, v68, v69, v70, v71, v72, v73;
    if (qword_100936860 != -1)
    {
      swift_once();
    }

    v74 = type metadata accessor for Logger();
    sub_100006654(v74, qword_100951C70);
    v75 = Logger.logObject.getter();
    v76 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v75, v76))
    {
      v77 = swift_slowAlloc();
      *v77 = 0;
      _os_log_impl(&_mh_execute_header, v75, v76, "DADREMUserNotificationPresenting: content must be kind of UNMutableNotificationContent", v77, 2u);
    }
  }
}

id RDUserNotificationCenter.calDAVSharedListNotificationContent(with:)(void *a1)
{
  v2 = type metadata accessor for RDUserNotificationType();
  v3 = *(v2 - 8);
  *&v5 = __chkstk_darwin(v2, v4).n128_u64[0];
  v7 = (&v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v7 = [a1 objectID];
  (*(v3 + 104))(v7, enum case for RDUserNotificationType.caldavSharedList(_:), v2);
  v8 = sub_1002D833C(0, a1, 0);
  (*(v3 + 8))(v7, v2);
  return v8;
}

uint64_t type metadata accessor for RDDataAccess(uint64_t a1)
{
  result = qword_100951CD0;
  if (!qword_100951CD0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10075C998(uint64_t a1)
{
  sub_1001490E0(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_10075CA8C()
{
  v1 = *(v0 + 16);
  isa = Data._bridgeToObjectiveC()().super.isa;
  (*(v1 + 16))(v1, isa);
}

void sub_10075CAE4(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = _convertErrorToNSError(_:)();
  (*(v2 + 16))(v2, v3);
}

void sub_10075CB80(uint64_t a1, void **a2)
{
  v2 = *a2;
  isa = UUID._bridgeToObjectiveC()().super.isa;
  [v2 setReminderIdentifier:isa];
}

void sub_10075CBE8(id *a1, uint64_t a2, uint64_t a3, SEL *a4)
{
  v4 = [*a1 *a4];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
}

void sub_10075CC44(uint64_t a1, void **a2)
{
  v2 = *a2;
  isa = UUID._bridgeToObjectiveC()().super.isa;
  [v2 setIdentifier:isa];
}

id static REMCDDueDateDeltaAlert.objectID(with:)()
{
  sub_1000F5104(&unk_100950F40, &qword_1007AE990);
  String.init<A>(describing:)();
  v1 = v0;
  v2 = objc_allocWithZone(REMObjectID);
  isa = UUID._bridgeToObjectiveC()().super.isa;
  v4 = String._bridgeToObjectiveC()();
  v1, v5, v6, v7, v8, v9, v10, v11;
  v12 = [v2 initWithUUID:isa entityName:v4];

  return v12;
}

void sub_10075CDCC(uint64_t a1)
{
  v2 = *v1;
  v3 = 0xE800000000000000;
  v4 = 0xEC00000065746144;
  v5 = 0x80000001007B81E0;
  if (v2 != 4)
  {
    v5 = 0x80000001007B8190;
  }

  if (v2 != 3)
  {
    v4 = v5;
  }

  v6 = 0x80000001007B82E0;
  if (v2 != 1)
  {
    v6 = 0xEC00000061746C65;
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
}

unint64_t sub_10075CEDC@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10075E8D0(*a1);
  *a2 = result;
  return result;
}

void sub_10075CF0C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE800000000000000;
  v4 = 0x44497463656A626FLL;
  v5 = 0xEC00000065746144;
  v6 = 0x6E6F697461657263;
  v7 = 0x80000001007B81E0;
  v8 = 0xD00000000000001ALL;
  if (v2 == 4)
  {
    v8 = 0xD000000000000010;
  }

  else
  {
    v7 = 0x80000001007B8190;
  }

  if (v2 != 3)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0x80000001007B82E0;
  v10 = 0xD000000000000012;
  if (v2 != 1)
  {
    v10 = 0x4465746144657564;
    v9 = 0xEC00000061746C65;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  if (*v1 <= 2u)
  {
    v11 = v4;
  }

  else
  {
    v11 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v11;
  a1[1] = v3;
}

unint64_t sub_10075CFF4@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_10075E8D0(a1);
  *a2 = result;
  return result;
}

uint64_t sub_10075D01C()
{
  v1 = *v0;
  v2 = 0x44497463656A626FLL;
  v3 = 0x6E6F697461657263;
  v4 = 0xD00000000000001ALL;
  if (v1 == 4)
  {
    v4 = 0xD000000000000010;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0xD000000000000012;
  if (v1 != 1)
  {
    v5 = 0x4465746144657564;
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

void sub_10075D0F0(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v3._countAndFlagsBits = *a1;
  v4 = a1[1];
  v3._object = v4;
  v5 = _findStringSwitchCase(cases:string:)(&off_1008E4540, v3);
  v4, v6, v7, v8, v9, v10, v11, v12;
  *a2 = v5 != 0;
}

void sub_10075D154(Swift::String string@<0:X0, 8:X1>, BOOL *a2@<X8>)
{
  object = string._object;
  v3._countAndFlagsBits = string._countAndFlagsBits;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&off_1008E19B0, v3);
  object, v6, v7, v8, v9, v10, v11, v12;
  *a2 = v5 != 0;
}

uint64_t REMCDDueDateDeltaAlert.ingestableObjectIdentifier.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = [v1 identifier];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v4 = type metadata accessor for UUID();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, 0, 1, v4);
}

uint64_t REMCDDueDateDeltaAlert.ingestableObjectIdentifier.setter(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4, v6);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000F5104(&unk_100939D90, "8\n\r");
  Optional.tryUnwrap(_:file:line:)();
  isa = UUID._bridgeToObjectiveC()().super.isa;
  (*(v5 + 8))(v8, v4);
  [v2 setIdentifier:isa];

  return sub_1001A4F9C(a1);
}

void (*REMCDDueDateDeltaAlert.ingestableObjectIdentifier.modify(void *a1))(uint64_t a1, char a2)
{
  *a1 = v1;
  v3 = *(*(sub_1000F5104(&unk_100939D90, "8\n\r") - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    a1[1] = swift_coroFrameAlloc();
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    a1[1] = malloc(v3);
    v4 = malloc(v3);
  }

  v5 = v4;
  a1[2] = v4;
  v6 = [v1 identifier];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v7 = type metadata accessor for UUID();
  (*(*(v7 - 8) + 56))(v5, 0, 1, v7);
  return sub_10075D60C;
}

void sub_10075D60C(uint64_t a1, char a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (a2)
  {
    sub_100010364(*(a1 + 16), v2, &unk_100939D90, "8\n\r");
    REMCDDueDateDeltaAlert.ingestableObjectIdentifier.setter(v2);
    sub_1001A4F9C(v3);
  }

  else
  {
    REMCDDueDateDeltaAlert.ingestableObjectIdentifier.setter(*(a1 + 16));
  }

  free(v3);

  free(v2);
}

id REMCDDueDateDeltaAlert.remObjectID.getter()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  *&v6 = __chkstk_darwin(v3, v5).n128_u64[0];
  v8 = v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [v1 identifier];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v24[1] = ObjectType;
  sub_1000F5104(&unk_100950F40, &qword_1007AE990);
  String.init<A>(describing:)();
  v11 = v10;
  v12 = objc_allocWithZone(REMObjectID);
  isa = UUID._bridgeToObjectiveC()().super.isa;
  v14 = String._bridgeToObjectiveC()();
  v11, v15, v16, v17, v18, v19, v20, v21;
  v22 = [v12 initWithUUID:isa entityName:v14];

  (*(v4 + 8))(v8, v3);
  return v22;
}

void REMCDDueDateDeltaAlert.checkedREMObjectID()()
{
  v0 = REMCDDueDateDeltaAlert.remObjectID.getter();
  sub_1000F5104(&unk_10093AF40, &unk_100795790);
  Optional.tryUnwrap(_:file:line:)();
}

void sub_10075DB30(uint64_t a1, void **a2, uint64_t a3, uint64_t a4, SEL *a5)
{
  v8 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  __chkstk_darwin(v8 - 8, v9);
  v11 = &v16 - v10;
  sub_100010364(a1, &v16 - v10, &unk_100938850, qword_100795AE0);
  v12 = *a2;
  v13 = type metadata accessor for Date();
  v14 = *(v13 - 8);
  isa = 0;
  if ((*(v14 + 48))(v11, 1, v13) != 1)
  {
    isa = Date._bridgeToObjectiveC()().super.isa;
    (*(v14 + 8))(v11, v13);
  }

  [v12 *a5];
}

id sub_10075DC6C(void *a1)
{
  ObjectType = swift_getObjectType();
  v2 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  __chkstk_darwin(v2 - 8, v3);
  v5 = &v117 - v4;
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  v123 = v6;
  v124 = v7;
  __chkstk_darwin(v6, v8);
  v126 = &v117 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10, v11);
  v127 = &v117 - v12;
  v13 = type metadata accessor for UUID();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13, v15);
  v17 = &v117 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18, v19);
  v125 = &v117 - v20;
  __chkstk_darwin(v21, v22);
  v24 = &v117 - v23;
  *&v27 = __chkstk_darwin(v25, v26).n128_u64[0];
  v29 = &v117 - v28;
  v30 = [a1 identifier];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v31 = [a1 reminderIdentifier];
  v129 = v24;
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v32 = [a1 account];
  v130 = v29;
  if (v32 && (v33 = v32, v34 = [v32 remObjectID], v33, v34))
  {
    v35 = [a1 creationDate];
    if (v35)
    {
      v122 = v34;
      ObjectType = v13;
      v36 = v35;
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      v37 = [objc_allocWithZone(REMDueDateDeltaInterval) initWithUnitInteger:objc_msgSend(a1 count:{"dueDateDeltaUnit"), objc_msgSend(a1, "dueDateDeltaCount")}];
      v38 = v14;
      if (v37)
      {
        v121 = v37;
        (*(v14 + 16))(v125, v130, ObjectType);
        v39 = objc_opt_self();
        isa = UUID._bridgeToObjectiveC()().super.isa;
        v41 = [v39 objectIDWithUUID:isa];

        v43 = v123;
        v42 = v124;
        (*(v124 + 16))(v126, v127, v123);
        v44 = [a1 acknowledgedDate];
        v45 = v38;
        if (v44)
        {
          v46 = v44;
          static Date._unconditionallyBridgeFromObjectiveC(_:)();

          v47 = 0;
        }

        else
        {
          v47 = 1;
        }

        (*(v42 + 56))(v5, v47, 1, v43);
        v118 = [a1 minimumSupportedAppVersion];
        v104.super.isa = UUID._bridgeToObjectiveC()().super.isa;
        v119 = Date._bridgeToObjectiveC()().super.isa;
        v105 = (*(v42 + 48))(v5, 1, v43);
        v120 = v45;
        if (v105 == 1)
        {
          v106 = 0;
        }

        else
        {
          v106 = Date._bridgeToObjectiveC()().super.isa;
          (*(v42 + 8))(v5, v43);
        }

        v107 = objc_allocWithZone(REMDueDateDeltaAlert);
        v108 = v41;
        v109 = v41;
        v111 = v121;
        v110 = v122;
        v112 = v119;
        v66 = [v107 initWithIdentifier:v104.super.isa reminderID:v108 accountID:v122 dueDateDelta:v121 creationDate:v119 acknowledgedDate:v106 minimumSupportedAppVersion:v118];

        v113 = *(v124 + 8);
        v113(v126, v43);
        v114 = *(v120 + 8);
        v115 = ObjectType;
        v114(v125, ObjectType);
        v113(v127, v43);
        v114(v129, v115);
        v114(v130, v115);
      }

      else
      {
        v72 = objc_opt_self();
        v131 = 0;
        v132 = 0xE000000000000000;
        _StringGuts.grow(_:)(55);
        v73._object = 0x8000000100800DC0;
        v73._countAndFlagsBits = 0xD000000000000026;
        String.append(_:)(v73);
        v133 = [a1 dueDateDeltaUnit];
        v74._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
        object = v74._object;
        String.append(_:)(v74);
        object, v76, v77, v78, v79, v80, v81, v82;
        v83._countAndFlagsBits = 0x756F6320726F2029;
        v83._object = 0xEC0000002820746ELL;
        String.append(_:)(v83);
        v133 = [a1 dueDateDeltaCount];
        v84._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
        v85 = v84._object;
        String.append(_:)(v84);
        v85, v86, v87, v88, v89, v90, v91, v92;
        v93._countAndFlagsBits = 41;
        v93._object = 0xE100000000000000;
        String.append(_:)(v93);
        v94 = v132;
        v95 = String._bridgeToObjectiveC()();
        v94, v96, v97, v98, v99, v100, v101, v102;
        [v72 internalErrorWithDebugDescription:v95];

        swift_willThrow();
        (*(v124 + 8))(v127, v123);
        v103 = *(v38 + 8);
        v66 = ObjectType;
        v103(v129, ObjectType);
        v103(v130, v66);
      }
    }

    else
    {
      v66 = objc_opt_self();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v70 = String._bridgeToObjectiveC()();
      [v66 unexpectedNilPropertyWithClass:ObjCClassFromMetadata property:v70];

      swift_willThrow();
      v71 = *(v14 + 8);
      v71(v129, v13);
      v71(v130, v13);
    }
  }

  else
  {
    if (qword_100936880 != -1)
    {
      swift_once();
    }

    v48 = type metadata accessor for Logger();
    sub_100006654(v48, qword_100952128);
    v49 = v14;
    (*(v14 + 16))(v17, v29, v13);
    v50 = Logger.logObject.getter();
    v51 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      v127 = swift_slowAlloc();
      v131 = v127;
      *v52 = 136446210;
      sub_1001B397C();
      v53 = dispatch thunk of CustomStringConvertible.description.getter();
      v55 = v54;
      v56 = *(v49 + 8);
      v57 = v13;
      v56(v17, v13);
      v58 = sub_10000668C(v53, v55, &v131);
      v55, v59, v60, v61, v62, v63, v64, v65;
      *(v52 + 4) = v58;
      _os_log_impl(&_mh_execute_header, v50, v51, "REMDueDateDeltaAlertCDIngestor: cdDueDateDeltaAlert.account is nil {cdDueDateDeltaAlert.identifier: %{public}s}", v52, 0xCu);
      sub_10000607C(v127);
    }

    else
    {

      v56 = *(v49 + 8);
      v57 = v13;
      v56(v17, v13);
    }

    v66 = objc_opt_self();
    v67 = swift_getObjCClassFromMetadata();
    v68 = String._bridgeToObjectiveC()();
    [v66 unexpectedNilPropertyWithClass:v67 property:v68];

    swift_willThrow();
    v56(v129, v57);
    v56(v130, v57);
  }

  return v66;
}

uint64_t sub_10075E638()
{
  v0 = 0;
  v1 = &_swiftEmptyArrayStorage;
  v12 = &_swiftEmptyArrayStorage;
  while (1)
  {
    if (*(&off_1008DD240 + v0 + 32) > 2u || !*(&off_1008DD240 + v0 + 32) || *(&off_1008DD240 + v0 + 32) == 1)
    {
      swift_getKeyPath();
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v1 = v12;
      goto LABEL_5;
    }

    sub_1000F5104(&unk_100939D60, &unk_1007959E0);
    inited = swift_initStackObject();
    *(inited + 32) = swift_getKeyPath();
    *(inited + 40) = swift_getKeyPath();
    v3 = v1 >> 62;
    if (v1 >> 62)
    {
      v11 = _CocoaArrayWrapper.endIndex.getter();
      v5 = v11 + 2;
      if (__OFADD__(v11, 2))
      {
LABEL_25:
        __break(1u);
        return v1;
      }
    }

    else
    {
      v4 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v5 = v4 + 2;
      if (__OFADD__(v4, 2))
      {
        goto LABEL_25;
      }
    }

    result = swift_isUniquelyReferenced_nonNull_bridgeObject();
    if (result)
    {
      if (!v3)
      {
        v7 = v1 & 0xFFFFFFFFFFFFFF8;
        if (v5 <= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          goto LABEL_20;
        }

        goto LABEL_19;
      }

LABEL_18:
      _CocoaArrayWrapper.endIndex.getter();
      goto LABEL_19;
    }

    if (v3)
    {
      goto LABEL_18;
    }

LABEL_19:
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
    v1 = result;
    v7 = result & 0xFFFFFFFFFFFFFF8;
LABEL_20:
    if (((*(v7 + 24) >> 1) - *(v7 + 16)) < 2)
    {
      break;
    }

    sub_1000F5104(&qword_10093F560, &qword_10079C0F0);
    swift_arrayInitWithCopy();
    swift_setDeallocating();
    result = swift_arrayDestroy();
    v8 = *(v7 + 16);
    v9 = __OFADD__(v8, 2);
    v10 = v8 + 2;
    if (v9)
    {
      goto LABEL_28;
    }

    *(v7 + 16) = v10;
    v12 = v1;
LABEL_5:
    if (++v0 == 6)
    {
      return v1;
    }
  }

  __break(1u);
LABEL_28:
  __break(1u);
  return result;
}

unint64_t sub_10075E8D0(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1008E0E80, v2);
  object, v4, v5, v6, v7, v8, v9, v10;
  if (v3 >= 6)
  {
    return 6;
  }

  else
  {
    return v3;
  }
}

void sub_10075E91C(void *a1, void *a2, uint64_t a3)
{
  v39 = type metadata accessor for Date();
  v6 = *(v39 - 8);
  __chkstk_darwin(v39, v7);
  v37 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9, v10);
  v38 = &v36 - v11;
  v40 = type metadata accessor for UUID();
  *&v14 = __chkstk_darwin(v40, v12).n128_u64[0];
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(a3 + 16);
  if (!v17)
  {
    return;
  }

  v18 = (a3 + 32);
  v19 = (v6 + 8);
  v20 = (v13 + 8);
  while (1)
  {
    v24 = *v18++;
    v23 = v24;
    if (v24 > 2)
    {
      if (v23 == 3)
      {
        v30 = [a1 creationDate];
        v31 = v38;
        static Date._unconditionallyBridgeFromObjectiveC(_:)();

        v22.super.isa = Date._bridgeToObjectiveC()().super.isa;
        (*v19)(v31, v39);
        [a2 setCreationDate:v22.super.isa];
      }

      else
      {
        if (v23 != 4)
        {
          [a2 setMinimumSupportedAppVersion:{objc_msgSend(a1, "minimumSupportedAppVersion", v14)}];
          goto LABEL_5;
        }

        v27 = [a1 acknowledgedDate];
        if (v27)
        {
          v28 = v37;
          v29 = v27;
          static Date._unconditionallyBridgeFromObjectiveC(_:)();

          v22.super.isa = Date._bridgeToObjectiveC()().super.isa;
          (*v19)(v28, v39);
        }

        else
        {
          v22.super.isa = 0;
        }

        [a2 setAcknowledgedDate:v22.super.isa];
      }

      goto LABEL_4;
    }

    if (!v23)
    {
      v21 = [a1 identifier];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v22.super.isa = UUID._bridgeToObjectiveC()().super.isa;
      (*v20)(v16, v40);
      [a2 setIdentifier:v22.super.isa];
LABEL_4:

      goto LABEL_5;
    }

    if (v23 == 1)
    {
      v25 = [a1 reminderID];
      v26 = [v25 uuid];

      static UUID._unconditionallyBridgeFromObjectiveC(_:)();
      v22.super.isa = UUID._bridgeToObjectiveC()().super.isa;
      (*v20)(v16, v40);
      [a2 setReminderIdentifier:v22.super.isa];
      goto LABEL_4;
    }

    v32 = [a1 dueDateDelta];
    v33 = [v32 unit];

    if (v33 < -32768)
    {
      break;
    }

    if (v33 >= 0x8000)
    {
      goto LABEL_25;
    }

    [a2 setDueDateDeltaUnit:v33];
    v34 = [a1 dueDateDelta];
    v35 = [v34 count];

    if (v35 < -32768)
    {
      goto LABEL_26;
    }

    if (v35 >= 0x8000)
    {
      goto LABEL_27;
    }

    [a2 setDueDateDeltaCount:v35];
LABEL_5:
    if (!--v17)
    {
      return;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
}

id _s7remindd22REMCDDueDateDeltaAlertC11newObjectIDSo09REMObjectH0CyFZ_0()
{
  v0 = type metadata accessor for UUID();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0, v2);
  v4 = v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100936878 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_100006654(v5, qword_100952110);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.fault.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
  }

  UUID.init()();
  v23[1] = type metadata accessor for REMCDDueDateDeltaAlert();
  sub_1000F5104(&unk_100950F40, &qword_1007AE990);
  String.init<A>(describing:)();
  v10 = v9;
  v11 = objc_allocWithZone(REMObjectID);
  isa = UUID._bridgeToObjectiveC()().super.isa;
  v13 = String._bridgeToObjectiveC()();
  v10, v14, v15, v16, v17, v18, v19, v20;
  v21 = [v11 initWithUUID:isa entityName:v13];

  (*(v1 + 8))(v4, v0);
  return v21;
}

void sub_10075EFD4(uint64_t a1, void **a2, uint64_t a3, uint64_t a4, SEL *a5)
{
  v6 = *a2;
  isa = UUID._bridgeToObjectiveC()().super.isa;
  [v6 *a5];
}

unint64_t sub_10075F08C()
{
  result = qword_100952368;
  if (!qword_100952368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100952368);
  }

  return result;
}

unint64_t sub_10075F114()
{
  result = qword_100952380;
  if (!qword_100952380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100952380);
  }

  return result;
}

void sub_10075F438(uint64_t a1)
{
  v2 = type metadata accessor for URL();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2, v4);
  v6 = v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7, v8);
  v10 = v20 - v9;
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v12 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v13 = String._bridgeToObjectiveC()();
  v14 = String._bridgeToObjectiveC()();
  v15 = [v12 URLForResource:v13 withExtension:v14];

  if (v15)
  {
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    sub_10075F670();
    v16 = v2;
    (*(v3 + 16))(v6, v10, v2);
    v17 = v20[1];
    v18 = sub_1003F98D4(v6, a1);
    if (v17)
    {
      (*(v3 + 8))(v10, v2);
    }

    else
    {
      v19 = v18;
      (*(v3 + 8))(v10, v16);
      type metadata accessor for Recipe_CJK();
      *(swift_allocObject() + 16) = v19;
    }
  }

  else
  {
    __break(1u);
  }
}

unint64_t sub_10075F670()
{
  result = qword_100946230;
  if (!qword_100946230)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100946230);
  }

  return result;
}

void sub_10075F98C(uint64_t a1)
{
  v2 = type metadata accessor for URL();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2, v4);
  v6 = v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7, v8);
  v10 = v20 - v9;
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v12 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v13 = String._bridgeToObjectiveC()();
  v14 = String._bridgeToObjectiveC()();
  v15 = [v12 URLForResource:v13 withExtension:v14];

  if (v15)
  {
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    sub_10075F670();
    v16 = v2;
    (*(v3 + 16))(v6, v10, v2);
    v17 = v20[1];
    v18 = sub_1003F98D4(v6, a1);
    if (v17)
    {
      (*(v3 + 8))(v10, v2);
    }

    else
    {
      v19 = v18;
      (*(v3 + 8))(v10, v16);
      type metadata accessor for Recipe();
      *(swift_allocObject() + 16) = v19;
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_10075FBBC(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_fault_impl(&_mh_execute_header, a2, OS_LOG_TYPE_FAULT, "Failed to save delete batch. Migration error {deleteError: %@}", &v2, 0xCu);
}

void sub_10075FC98(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = 138412546;
  v4 = a1;
  v5 = 2114;
  v6 = a2;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "_applicationDocumentsURLForPersonaIdentifier:accountIdentifier: Failed to get group container url, probably simulator, will use fall back value {personaIdentifier: %@, accountIdentifier: %{public}@}", &v3, 0x16u);
}

void sub_10075FD20()
{
  v0 = +[REMLogStore utility];
  if (os_log_type_enabled(v0, OS_LOG_TYPE_FAULT))
  {
    v1 = +[NSThread callStackSymbols];
    v2 = 138412290;
    v3 = v1;
    _os_log_fault_impl(&_mh_execute_header, v0, OS_LOG_TYPE_FAULT, "rem_log_fault_if (![NSStringFromClass([REMCDAuxiliaryChangeInfo class]) isEqualToString:NSStringFromClass(self)]) -- A subclass of REMCDAuxiliaryChangeInfo called '- [REMCDAuxiliaryChangeInfo cdEntityName]'. The subclass should override this method. {callstack: %@}", &v2, 0xCu);
  }
}

void sub_10075FDE4(void *a1, NSObject *a2)
{
  v4 = NSStringFromSelector([a1 selector]);
  v5 = [a1 target];
  v6 = 138412546;
  v7 = v4;
  v8 = 2112;
  v9 = v5;
  _os_log_fault_impl(&_mh_execute_header, a2, OS_LOG_TYPE_FAULT, "Could not get method for selector %@ on target %@", &v6, 0x16u);
}

void sub_10075FEAC(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138543362;
  *(&v8 + 4) = a1;
  sub_1000699C4(&_mh_execute_header, a2, a3, "Store missing url. Failed to populate RDStoreControllerAccountIdentifier {store: %{public}@}", a5, a6, a7, a8, v8, DWORD2(v8));
}

void sub_10075FF18(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138543362;
  *(&v8 + 4) = *(a1 + 48);
  sub_1000699C4(&_mh_execute_header, a2, a3, "No account found in store {store: %{public}@}", a5, a6, a7, a8, v8, DWORD2(v8));
}

void sub_10075FF88(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138543362;
  *(&v8 + 4) = a1;
  sub_1000699C4(&_mh_execute_header, a2, a3, "Account has nil identifier. Failed to populate RDStoreControllerAccountIdentifier {account: %{public}@}", a5, a6, a7, a8, v8, DWORD2(v8));
}

void sub_10075FFF4(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138543362;
  *(&v8 + 4) = a1;
  sub_1000699C4(&_mh_execute_header, a2, a3, "Error fetching accounts. Failed to populate RDStoreControllerAccountIdentifier {error: %{public}@}", a5, a6, a7, a8, v8, DWORD2(v8));
}

void sub_100760060()
{
  sub_100042850();
  sub_10004230C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10076016C()
{
  sub_10009DB90();
  v2 = objc_opt_class();
  NSStringFromClass(v2);
  objc_claimAutoreleasedReturnValue();
  v3 = sub_10009DBEC();
  NSStringFromSelector(v3);
  objc_claimAutoreleasedReturnValue();
  sub_10009DC08();
  v9 = [NSString stringWithFormat:@"%@.%@"];
  sub_10009DB80();
  _os_log_fault_impl(v4, v5, v6, v7, v8, 0xCu);
}

void sub_10076023C()
{
  sub_10009DB90();
  v3 = objc_opt_class();
  NSStringFromClass(v3);
  objc_claimAutoreleasedReturnValue();
  v4 = sub_10009DBEC();
  NSStringFromSelector(v4);
  objc_claimAutoreleasedReturnValue();
  sub_10009DC08();
  v5 = [NSString stringWithFormat:@"%@.%@"];
  *buf = 138543362;
  v7 = v5;
  _os_log_error_impl(&_mh_execute_header, v0, OS_LOG_TYPE_ERROR, "[%{public}@] Cannot proceed because account.identifier is nil", buf, 0xCu);
}

void sub_100760314()
{
  sub_10009DC14();
  [v1 hasPassedBuddy];
  [v0 isSystemAvailableForSyncing];
  sub_10009DCB4();
  sub_10009DADC();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xEu);
}

void sub_1007603A8()
{
  sub_100042850();
  sub_10004230C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1007603E4()
{
  sub_100042850();
  sub_10004230C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100760488()
{
  sub_10009DB74();
  sub_10004230C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1007604F8()
{
  sub_10009DB74();
  sub_10004230C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100760568()
{
  sub_10009DB74();
  sub_10004230C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1007605EC()
{
  sub_10009DB74();
  sub_10009DBB8();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10076065C()
{
  sub_10009DB74();
  sub_10009DBB8();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1007606E0()
{
  sub_10009DB90();
  v2 = objc_opt_class();
  NSStringFromClass(v2);
  objc_claimAutoreleasedReturnValue();
  v3 = sub_10009DBEC();
  NSStringFromSelector(v3);
  objc_claimAutoreleasedReturnValue();
  sub_10009DC08();
  v4 = [NSString stringWithFormat:@"%@.%@"];
  sub_10009DB0C();
  sub_10009DB80();
  _os_log_fault_impl(v5, v6, v7, v8, v9, 0x16u);
}

void sub_1007607EC()
{
  sub_10009DC14();
  v0 = +[NSProcessInfo processInfo];
  v1 = [v0 operatingSystemVersionString];
  sub_10009DAB0();
  sub_10009DADC();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_100760910()
{
  sub_10009DD18(__stack_chk_guard);
  sub_10009DB44();
  sub_10009DCA8();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_100760988()
{
  sub_10009DD18(__stack_chk_guard);
  sub_10009DBC4();
  sub_10009DBB8();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1007609F8()
{
  sub_10009DB90();
  [v1 ic_loggingDescription];
  objc_claimAutoreleasedReturnValue();
  v2 = [sub_10009DCD8() ic_loggingDescription];
  sub_10009DA80();
  sub_10009DADC();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
}

void sub_100760A9C()
{
  sub_10009DB90();
  [v1 ic_loggingDescription];
  objc_claimAutoreleasedReturnValue();
  v2 = [sub_10009DCD8() ic_loggingDescription];
  sub_10009DA80();
  sub_10009DADC();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
}

void sub_100760B40()
{
  sub_100042850();
  sub_10004230C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100760B7C()
{
  sub_100042850();
  sub_10004230C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100760BB8()
{
  sub_100042850();
  sub_10004230C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100760BF4(void *a1)
{
  v1 = [a1 readinessLoggingDescription];
  sub_10009DB74();
  sub_10009DADC();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_100760C80()
{
  sub_100042850();
  sub_10004230C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100760CBC(uint64_t a1, uint64_t a2)
{
  v2 = [sub_10009DBDC(a1 a2)];
  sub_10009DA80();
  sub_10009DAEC();
  _os_log_fault_impl(v3, v4, v5, v6, v7, 0x16u);
}

void sub_100760D50(uint64_t a1, uint64_t a2)
{
  v2 = [sub_10009DBDC(a1 a2)];
  sub_10009DA80();
  sub_10009DADC();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
}

void sub_100760DE4()
{
  sub_10009DC4C(__stack_chk_guard);
  sub_10009DBC4();
  sub_10004230C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100760E54()
{
  sub_10009DA98();
  sub_10009DB58();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_100760EC8()
{
  sub_10009DB74();
  sub_10004230C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100760F38()
{
  sub_10009DB74();
  sub_10004230C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100760FA8(void *a1)
{
  v1 = [a1 firstObject];
  sub_10009DB74();
  sub_10009DADC();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_100761034()
{
  sub_100042850();
  sub_10004230C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1007610A4()
{
  sub_10009DB44();
  sub_10009DB58();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_100761184()
{
  sub_10009DD18(__stack_chk_guard);
  sub_10009DBC4();
  sub_10009DB58();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_100761204()
{
  sub_10009DB74();
  sub_10004230C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100761274()
{
  sub_10009DB74();
  sub_10004230C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10076134C()
{
  sub_10009DB90();
  v1 = [v0 ic_loggingDescription];
  sub_10009DB74();
  sub_10009DADC();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_1007613EC(uint64_t a1, const char *a2)
{
  v3 = objc_msgSend_cloudkit(REMLog);
  if (sub_10009DC70(v3))
  {
    sub_10009DAEC();
    _os_log_fault_impl(v4, v5, v6, v7, v8, 0x16u);
  }
}

void sub_1007614A4(uint64_t a1, char *a2)
{
  v4 = objc_msgSend_cloudkit(REMLog);
  if (sub_10009DC70(v4))
  {
    v5 = [a2 ic_loggingDescription];
    sub_10009DC58();
    sub_10009DAFC();
    sub_10009DAEC();
    _os_log_fault_impl(v6, v7, v8, v9, v10, 0x16u);
  }
}

void sub_1007615CC()
{
  sub_10009DB90();
  v1 = [sub_10009DBD0(v0) ic_loggingDescription];
  sub_10009DAB0();
  sub_10009DAEC();
  _os_log_fault_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_100761660()
{
  sub_10009DC14();
  v2 = [*(v1 + 56) ic_loggingDescription];
  v3 = [*(v0 + 72) ic_loggingDescription];
  sub_10009DD24();
  sub_10009DCF0();
  sub_10009DB68();
  _os_log_debug_impl(v4, v5, OS_LOG_TYPE_DEBUG, v6, v7, 0x20u);
}

void sub_100761724()
{
  sub_10009DB90();
  [sub_10009DCCC(v1) ic_loggingDescription];
  objc_claimAutoreleasedReturnValue();
  sub_10009DC20();
  sub_10009DA98();
  sub_10009DADC();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_1007617B8(void *a1)
{
  v1 = [a1 recordID];
  v2 = [v1 ic_loggingDescription];
  sub_10009DB74();
  sub_10009DADC();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0xCu);
}

void sub_10076185C(void *a1)
{
  v1 = [a1 recordID];
  v2 = [v1 ic_loggingDescription];
  sub_10009DB74();
  sub_10009DAEC();
  _os_log_fault_impl(v3, v4, v5, v6, v7, 0xCu);
}

void sub_100761900(uint64_t a1, void *a2)
{
  v2 = [a2 ic_loggingDescription];
  sub_10009DC58();
  sub_10009DAFC();
  sub_10009DADC();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
}

void sub_1007619A0()
{
  sub_10009DBC4();
  sub_10004230C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100761A14(uint8_t *buf, uint64_t a2, os_log_t log)
{
  *buf = 134217984;
  *(buf + 4) = a2;
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "Grouping modify operations into %ld batches", buf, 0xCu);
}

void sub_100761A90(uint64_t a1, uint64_t a2)
{
  v2 = [sub_10009DB20(a1 a2)];
  sub_10009DC64(v2, 5.7779e-34);
  sub_10009DC2C(&_mh_execute_header, v3, v4, "Ending batch because record does not fit: %@");
}

void sub_100761AE8(uint64_t a1, uint64_t a2)
{
  v4 = [sub_10009DB20(a1 a2)];
  sub_10009DC64(v4, 5.8381e-34);
  _os_log_error_impl(&_mh_execute_header, v2, OS_LOG_TYPE_ERROR, "Ending batch because an impossible batch was detected ICCloudContext: %{public}@", v3, 0xCu);
}

void sub_100761B50(uint64_t a1, uint64_t a2)
{
  v2 = [sub_10009DB20(a1 a2)];
  sub_10009DC64(v2, 5.7779e-34);
  sub_10009DC2C(&_mh_execute_header, v3, v4, "Adding record to save batch: %@");
}

void sub_100761C80(void *a1)
{
  v1 = [a1 ic_loggingDescription];
  sub_10009DB74();
  sub_10009DB68();
  _os_log_debug_impl(v2, v3, OS_LOG_TYPE_DEBUG, v4, v5, 0x12u);
}

void sub_100761D28()
{
  sub_10009DCE4();
  v1 = [v0 ic_loggingDescription];
  sub_10009DAC8();
  sub_10009DAEC();
  _os_log_fault_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_100761DC4()
{
  sub_10009DB90();
  v1 = [v0 ic_loggingDescription];
  sub_10009DAB0();
  sub_10009DAEC();
  _os_log_fault_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_100761E58()
{
  sub_10009DB90();
  v3 = [sub_10009DC98(v1 v2)];
  v4 = [*(v0 + 64) ic_loggingDescription];
  sub_10009DD24();
  sub_10009DB34();
  sub_10009DCF0();
  sub_10009DB68();
  _os_log_debug_impl(v5, v6, OS_LOG_TYPE_DEBUG, v7, v8, 0x20u);
}

void sub_100761F0C()
{
  sub_10009DB90();
  v3 = [sub_10009DC98(v1 v2)];
  v4 = [*(v0 + 64) ic_loggingDescription];
  sub_10009DD24();
  sub_10009DB34();
  sub_10009DCF0();
  sub_10009DADC();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x20u);
}

void sub_100761FBC()
{
  sub_10009DB90();
  v3 = [sub_10009DC98(v1 v2)];
  v4 = [*(v0 + 64) ic_loggingDescription];
  sub_10009DD24();
  sub_10009DB34();
  sub_10009DCF0();
  sub_10009DADC();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x20u);
}

void sub_10076206C(uint64_t a1)
{
  v1 = [sub_10009DBD0(a1) ic_loggingDescription];
  sub_10009DB74();
  sub_10009DADC();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_1007620F8()
{
  sub_10009DB90();
  [sub_10009DBD0(v1) ic_loggingDescription];
  objc_claimAutoreleasedReturnValue();
  sub_10009DC20();
  sub_10009DA98();
  sub_10009DADC();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_10076218C()
{
  sub_10009DB90();
  [sub_10009DBD0(v1) ic_loggingDescription];
  objc_claimAutoreleasedReturnValue();
  sub_10009DC20();
  sub_10009DA98();
  sub_10009DADC();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_100762220()
{
  sub_10009DB90();
  v1 = [sub_10009DBD0(v0) ic_loggingDescription];
  sub_10009DAB0();
  sub_10009DAEC();
  _os_log_fault_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_1007622B4()
{
  sub_10009DCE4();
  v1 = [v0 ic_loggingDescription];
  sub_10009DAC8();
  sub_10009DAEC();
  _os_log_fault_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_100762350()
{
  sub_10009DB74();
  sub_10004230C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1007623C0()
{
  sub_10009DB74();
  sub_10004230C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100762430()
{
  sub_10009DB74();
  sub_10004230C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1007624A0()
{
  sub_10009DC14();
  v1 = objc_opt_class();
  v2 = [sub_10009DBEC() identifier];
  sub_10009DA80();
  sub_10009DADC();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
}

void sub_100762550(_BYTE *a1, _BYTE *a2)
{
  sub_10009DBF8(a1, a2);
  sub_10009DCA8();
  _os_log_fault_impl(v2, v3, v4, v5, v6, 2u);
}

void sub_100762584(uint64_t a1, uint64_t a2)
{
  v2 = [sub_10009DB20(a1 a2)];
  sub_10009DC64(v2, 5.8381e-34);
  sub_10009DC2C(&_mh_execute_header, v3, v4, "Trying to modify two instances of the same object %{public}@");
}

void sub_1007625DC()
{
  sub_10009DB74();
  sub_10004230C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10076264C(uint64_t a1, const char *a2)
{
  v3 = objc_msgSend_cloudkit(REMLog, a2);
  if (sub_10009DC70(v3))
  {
    sub_10009DAEC();
    _os_log_fault_impl(v4, v5, v6, v7, v8, 2u);
  }
}

void sub_1007626B0()
{
  sub_10009DB74();
  sub_10009DBB8();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100762720()
{
  sub_10009DB74();
  sub_10004230C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1007627C4()
{
  sub_10009DB90();
  [sub_10009DCCC(v1) ic_loggingDescription];
  objc_claimAutoreleasedReturnValue();
  sub_10009DC20();
  sub_10009DA98();
  sub_10009DADC();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_100762858(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  sub_10009DB74();
  sub_10009DB68();
  _os_log_debug_impl(v2, v3, OS_LOG_TYPE_DEBUG, v4, v5, 0xCu);
}

void sub_1007628E8()
{
  sub_100042850();
  sub_10004230C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100762924(void *a1)
{
  v1 = [a1 readinessLoggingDescription];
  sub_10009DB74();
  sub_10009DADC();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_1007629B0(void *a1, NSObject *a2)
{
  v4 = [a1 objectIDsToProcess];
  v5 = [v4 count];
  v6 = [a1 objectIDsToRetry];
  v7 = [v6 count];
  v8 = [a1 readinessLoggingDescription];
  v9[0] = 67109634;
  v9[1] = v5;
  v10 = 1024;
  v11 = v7;
  v12 = 2114;
  v13 = v8;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "SYNC[COREDATA] ERROR - is pendingAccountInitializerCompleteOnLaunch {idsToProc.count: %d, idsToRetry.count: %d, readinessDescription: %{public}@}", v9, 0x18u);
}

void sub_100762AAC()
{
  sub_100042850();
  sub_10004230C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100762AE8()
{
  sub_100042850();
  sub_10004230C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100762B24()
{
  sub_100042850();
  sub_10004230C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100762B60()
{
  sub_10009DB44();
  sub_10009DB58();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x20u);
}

void sub_100762BE0()
{
  sub_10009DB90();
  v2 = v1;
  v3 = +[NSDate date];
  [v3 timeIntervalSinceDate:v2[4]];
  [v0 firstObject];
  objc_claimAutoreleasedReturnValue();
  [sub_10009DCD8() count];
  sub_10009DB34();
  sub_10009DCF0();
  sub_10009DADC();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x20u);
}

void sub_100762CBC()
{
  sub_10009DC14();
  [v1 hasPassedBuddy];
  [v0 isSystemAvailableForSyncing];
  sub_10009DCB4();
  sub_10009DAEC();
  _os_log_fault_impl(v2, v3, v4, v5, v6, 0xEu);
}

void sub_100762D50()
{
  sub_10009DC4C(__stack_chk_guard);
  sub_10009DBC4();
  sub_10004230C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100762DF4()
{
  sub_10009DC4C(__stack_chk_guard);
  sub_10009DBC4();
  sub_10004230C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100762E64()
{
  sub_10009DC4C(__stack_chk_guard);
  sub_10009DBC4();
  sub_10004230C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100762ED4(uint64_t a1, uint64_t a2)
{
  v2 = [sub_10009DB20(a1 a2)];
  sub_10009DC64(v2, 5.7779e-34);
  sub_10009DD30(&_mh_execute_header, v3, v4, "Not syncing object because it's missing mandatory fields: %@");
}

void sub_100762F2C(uint64_t a1)
{
  v1 = objc_opt_class();
  objc_opt_class();
  sub_10009DC58();
  sub_10009DAFC();
  v3 = v2;
  sub_10009DAEC();
  _os_log_fault_impl(v4, v5, v6, v7, v8, 0x16u);
}

void sub_100762FE4()
{
  sub_10009DC14();
  v1 = [v0 subscriptionOwnerUserRecordID];
  sub_10009DC58();
  sub_10009DAFC();
  sub_10009DADC();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_10076307C(void *a1)
{
  v1 = [a1 readinessLoggingDescription];
  sub_10009DB74();
  sub_10009DADC();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_100763108(uint64_t a1, const char *a2)
{
  v3 = objc_msgSend_cloudkit(REMLog, a2);
  if (sub_10009DC70(v3))
  {
    sub_10009DAEC();
    _os_log_fault_impl(v4, v5, v6, v7, v8, 2u);
  }
}

void sub_1007631A0(void *a1)
{
  v1 = [a1 localizedDescription];
  sub_10009DB74();
  sub_10009DADC();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_10076322C(void *a1)
{
  v1 = [a1 localizedDescription];
  sub_10009DB74();
  sub_10009DADC();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_1007632B8(void *a1)
{
  v1 = [a1 firstObject];
  sub_10009DB74();
  sub_10009DADC();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_1007633AC(uint64_t a1, uint64_t a2)
{
  v2 = [sub_10009DB20(a1 a2)];
  sub_10009DC64(v2, 5.8381e-34);
  sub_10009DD30(&_mh_execute_header, v3, v4, "operationToFetchRecordZoneChangesForZoneIDs existingOperation %{public}@ with nil or empty accountID.");
}

void sub_100763404()
{
  sub_10009DB90();
  v1 = [sub_10009DBD0(v0) ic_loggingDescription];
  sub_10009DAB0();
  sub_10009DAEC();
  _os_log_fault_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_100763498()
{
  sub_10009DB90();
  v1 = [sub_10009DBD0(v0) ic_loggingDescription];
  sub_10009DAB0();
  sub_10009DAEC();
  _os_log_fault_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_10076352C()
{
  sub_10009DB90();
  v1 = [v0 ic_loggingDescription];
  sub_10009DAB0();
  sub_10009DAEC();
  _os_log_fault_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_1007635C0(uint64_t a1)
{
  v1 = [*(a1 + 48) ic_shortLoggingDescription];
  sub_10009DA80();
  sub_10009DADC();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_10076365C()
{
  sub_10009DB90();
  v1 = [v0 ic_loggingDescription];
  sub_10009DAB0();
  sub_10009DAEC();
  _os_log_fault_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_1007636F0(uint64_t a1, const char *a2)
{
  v3 = objc_msgSend_cloudkit(REMLog, a2);
  if (sub_10009DC70(v3))
  {
    sub_10009DC58();
    sub_10009DAEC();
    _os_log_fault_impl(v4, v5, v6, v7, v8, 0xCu);
  }
}

void sub_1007637F4()
{
  sub_10009DCE4();
  v1 = [v0 ic_loggingDescription];
  sub_10009DAC8();
  sub_10009DAEC();
  _os_log_fault_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_100763890(uint64_t a1, uint64_t a2)
{
  v2 = [sub_10009DC88(a1 a2)];
  sub_10009DA80();
  sub_10009DADC();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
}

void sub_100763924(uint64_t a1, uint64_t a2)
{
  v2 = [sub_10009DC88(a1 a2)];
  sub_10009DA80();
  sub_10009DADC();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
}

void sub_1007639B8(uint64_t a1, uint64_t a2)
{
  v2 = [sub_10009DC88(a1 a2)];
  sub_10009DA80();
  sub_10009DADC();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
}

void sub_100763A4C()
{
  sub_10009DB74();
  sub_10009DB58();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_100763AC8(uint64_t a1)
{
  v1 = [sub_10009DBD0(a1) ic_loggingDescription];
  sub_10009DB74();
  sub_10009DADC();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_100763B54()
{
  sub_10009DC14();
  v2 = [sub_10009DCCC(v1) ic_loggingDescription];
  v3 = [*(v0 + 48) ic_loggingDescription];
  sub_10009DA80();
  sub_10009DADC();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);
}

void sub_100763C10(char a1, char a2, uint8_t *buf, os_log_t log)
{
  *buf = 67109376;
  *(buf + 1) = a1 & 1;
  *(buf + 4) = 1024;
  *(buf + 10) = a2 & 1;
  _os_log_fault_impl(&_mh_execute_header, log, OS_LOG_TYPE_FAULT, "updateSubscriptions: Trying to get ACAccount appleAccountUtilities when system has not passed buddy or system-migrator {hasPassedBuddy: %d, isSystemAvailableForSyncing: %d}", buf, 0xEu);
}

void sub_100763C70()
{
  sub_10009DB90();
  [sub_10009DCCC(v1) ic_loggingDescription];
  objc_claimAutoreleasedReturnValue();
  sub_10009DC20();
  sub_10009DA98();
  sub_10009DADC();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_100763D04()
{
  sub_10009DCE4();
  v1 = [sub_10009DBD0(v0) ic_loggingDescription];
  sub_10009DAC8();
  sub_10009DAEC();
  _os_log_fault_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_100763DA0()
{
  sub_10009DB90();
  [sub_10009DCCC(v1) ic_loggingDescription];
  objc_claimAutoreleasedReturnValue();
  sub_10009DC20();
  sub_10009DA98();
  sub_10009DADC();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_100763E34(uint64_t a1, const char *a2)
{
  v3 = objc_msgSend_cloudkit(REMLog, a2);
  if (sub_10009DC70(v3))
  {
    sub_10009DAEC();
    _os_log_fault_impl(v4, v5, v6, v7, v8, 2u);
  }
}

void sub_100763E98(uint64_t a1, uint64_t a2)
{
  v2 = [sub_10009DBDC(a1 a2)];
  sub_10009DA80();
  sub_10009DAEC();
  _os_log_fault_impl(v3, v4, v5, v6, v7, 0x16u);
}

void sub_100763F2C(uint64_t a1, uint64_t a2)
{
  v2 = [sub_10009DBDC(a1 a2)];
  sub_10009DA80();
  sub_10009DADC();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
}

void sub_100763FC0()
{
  sub_100042850();
  sub_10004230C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100763FFC()
{
  sub_100042850();
  sub_10004230C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100764038(uint64_t a1)
{
  v1 = [sub_10009DBD0(a1) readinessLoggingDescription];
  sub_10009DB74();
  sub_10009DADC();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_1007640C8(void *a1)
{
  v1 = [a1 objectID];
  sub_10009DB74();
  sub_10009DADC();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_100764154()
{
  sub_10009DD18(__stack_chk_guard);
  sub_10009DB44();
  sub_10009DB58();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_1007641CC()
{
  sub_10009DA98();
  sub_10009DB58();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_100764240()
{
  sub_10009DB44();
  sub_10009DB58();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x20u);
}

void sub_1007642C0()
{
  sub_100042850();
  sub_10004230C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1007642FC(uint64_t a1)
{
  v1 = [sub_10009DBD0(a1) readinessLoggingDescription];
  sub_10009DB74();
  sub_10009DADC();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_10076438C()
{
  sub_100042850();
  sub_10004230C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1007643C8(uint64_t a1)
{
  v1 = [sub_10009DBD0(a1) readinessLoggingDescription];
  sub_10009DB74();
  sub_10009DADC();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_100764458()
{
  sub_10009DB74();
  sub_10004230C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1007644C8()
{
  sub_10009DB74();
  sub_10004230C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100764538()
{
  sub_10009DB74();
  sub_10004230C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1007645A8()
{
  sub_10009DB90();
  [v1 ic_loggingDescription];
  objc_claimAutoreleasedReturnValue();
  sub_10009DCD8();
  v2 = CKDatabaseScopeString();
  sub_10009DA80();
  sub_10009DADC();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
}

void sub_10076464C()
{
  sub_10009DCE4();
  v1 = [v0 ic_loggingDescription];
  v2 = CKDatabaseScopeString();
  sub_10009DC58();
  sub_10009DAFC();
  sub_10009DADC();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
}

void sub_1007646FC()
{
  sub_10009DC4C(__stack_chk_guard);
  sub_10009DBC4();
  sub_10004230C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10076476C()
{
  sub_10009DB90();
  [v1 ic_loggingDescription];
  objc_claimAutoreleasedReturnValue();
  sub_10009DCD8();
  v2 = CKDatabaseScopeString();
  sub_10009DA80();
  sub_10009DADC();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
}

void sub_100764810()
{
  sub_10009DC4C(__stack_chk_guard);
  sub_10009DBC4();
  sub_10004230C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1007648B4()
{
  sub_10009DBC4();
  sub_10004230C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100764928()
{
  sub_10009DB74();
  sub_10004230C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100764998(uint64_t a1, const char *a2)
{
  v3 = objc_msgSend_cloudkit(REMLog, a2);
  if (sub_10009DC70(v3))
  {
    sub_10009DAEC();
    _os_log_fault_impl(v4, v5, v6, v7, v8, 2u);
  }
}

void sub_1007649FC()
{
  sub_10009DB74();
  sub_10004230C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100764A6C()
{
  sub_10009DB74();
  sub_10004230C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100764ADC(void *a1, uint64_t a2)
{
  *a2 = 138543362;
  *(a2 + 4) = a1;
  sub_10009DCA8();
  _os_log_fault_impl(v3, v4, v5, v6, v7, 0xCu);
}

void sub_100764B30(void *a1, uint64_t a2)
{
  *a2 = 138543362;
  *(a2 + 4) = a1;
  sub_10009DCA8();
  _os_log_fault_impl(v3, v4, v5, v6, v7, 0xCu);
}

void sub_100764B84(uint64_t a1)
{
  v1 = [sub_10009DBD0(a1) waiterID];
  sub_10009DB74();
  sub_10009DAEC();
  _os_log_fault_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_100764C10()
{
  sub_10009DB74();
  sub_10004230C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100764C80()
{
  sub_100042850();
  sub_10004230C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100764CBC()
{
  sub_100042850();
  sub_10004230C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100764CF8()
{
  sub_100042850();
  sub_10004230C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100764D34()
{
  sub_10009DB74();
  sub_10004230C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100764DA4()
{
  sub_10009DB74();
  sub_10009DBB8();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100764E14()
{
  sub_10009DB90();
  v2 = objc_opt_class();
  NSStringFromClass(v2);
  objc_claimAutoreleasedReturnValue();
  v3 = sub_10009DBEC();
  NSStringFromSelector(v3);
  objc_claimAutoreleasedReturnValue();
  sub_10009DC08();
  v4 = [NSString stringWithFormat:@"%@.%@"];
  sub_10009DB0C();
  sub_10009DB80();
  _os_log_fault_impl(v5, v6, v7, v8, v9, 0x16u);
}

void sub_100764EEC()
{
  sub_10009DB90();
  v2 = objc_opt_class();
  NSStringFromClass(v2);
  objc_claimAutoreleasedReturnValue();
  v3 = sub_10009DBEC();
  NSStringFromSelector(v3);
  objc_claimAutoreleasedReturnValue();
  sub_10009DC08();
  v4 = [NSString stringWithFormat:@"%@.%@"];
  sub_10009DB0C();
  sub_10009DB80();
  _os_log_fault_impl(v5, v6, v7, v8, v9, 0x16u);
}

void sub_100764FC4(void *a1)
{
  v1 = [a1 accountIdentifier];
  sub_10009DB74();
  sub_10009DADC();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_100765050(uint64_t a1, const char *a2)
{
  v3 = objc_msgSend_cloudkit(REMLog, a2);
  if (sub_10009DC70(v3))
  {
    sub_10009DAEC();
    _os_log_fault_impl(v4, v5, v6, v7, v8, 2u);
  }
}

void sub_1007650B4(uint64_t a1, const char *a2)
{
  v3 = objc_msgSend_cloudkit(REMLog, a2);
  if (sub_10009DC70(v3))
  {
    sub_10009DAEC();
    _os_log_fault_impl(v4, v5, v6, v7, v8, 2u);
  }
}

void sub_100765118()
{
  sub_10009DB90();
  v2 = objc_opt_class();
  NSStringFromClass(v2);
  objc_claimAutoreleasedReturnValue();
  v3 = sub_10009DBEC();
  NSStringFromSelector(v3);
  objc_claimAutoreleasedReturnValue();
  sub_10009DC08();
  v4 = [NSString stringWithFormat:@"%@.%@"];
  sub_10009DB0C();
  sub_10009DB80();
  _os_log_fault_impl(v5, v6, v7, v8, v9, 0x16u);
}

void sub_1007651F0()
{
  sub_10009DB90();
  v2 = objc_opt_class();
  NSStringFromClass(v2);
  objc_claimAutoreleasedReturnValue();
  v3 = sub_10009DBEC();
  NSStringFromSelector(v3);
  objc_claimAutoreleasedReturnValue();
  sub_10009DC08();
  v4 = [NSString stringWithFormat:@"%@.%@"];
  sub_10009DB0C();
  sub_10009DB80();
  _os_log_fault_impl(v5, v6, v7, v8, v9, 0x16u);
}

void sub_1007652C8()
{
  sub_10009DB90();
  v2 = objc_opt_class();
  NSStringFromClass(v2);
  objc_claimAutoreleasedReturnValue();
  v3 = sub_10009DBEC();
  NSStringFromSelector(v3);
  objc_claimAutoreleasedReturnValue();
  sub_10009DC08();
  v4 = [NSString stringWithFormat:@"%@.%@"];
  sub_10009DB0C();
  sub_10009DB80();
  _os_log_fault_impl(v5, v6, v7, v8, v9, 0x16u);
}

void sub_1007653A0()
{
  v0 = +[REMLogStore utility];
  if (os_log_type_enabled(v0, OS_LOG_TYPE_FAULT))
  {
    v1 = +[NSThread callStackSymbols];
    v2 = 138412290;
    v3 = v1;
    _os_log_fault_impl(&_mh_execute_header, v0, OS_LOG_TYPE_FAULT, "rem_log_fault_if (![NSStringFromClass([REMCDAlarmTrigger class]) isEqualToString:NSStringFromClass(self)]) -- A subclass of REMCDAlarmTrigger called '- [REMCDAlarmTrigger cdEntityName]'. The subclass should override this method. {callstack: %@}", &v2, 0xCu);
  }
}

void sub_100765464(void *a1, NSObject *a2)
{
  v3 = [a1 remObjectID];
  v4 = 138543362;
  v5 = v3;
  _os_log_fault_impl(&_mh_execute_header, a2, OS_LOG_TYPE_FAULT, "Should not unset the tombstone field .reminderIdentifier of an REMCDHashtag {cdHashtag: %{public}@}", &v4, 0xCu);
}

void sub_100765510(void *a1)
{
  [a1 unsignedIntegerValue];
  sub_10009DB74();
  sub_10009DADC();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_10076563C(void *a1)
{
  v1 = [a1 localizedDescription];
  sub_10009DB74();
  sub_10009DADC();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_1007656C8(void *a1)
{
  v1 = +[NSHTTPURLResponse localizedStringForStatusCode:](NSHTTPURLResponse, "localizedStringForStatusCode:", [a1 statusCode]);
  sub_10009DB74();
  sub_10009DADC();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_100765768(void *a1)
{
  v1 = [a1 localizedDescription];
  sub_10009DB74();
  sub_10009DADC();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_100765A5C(void *a1)
{
  v2 = [a1 previousList];
  v3 = [v2 identifier];
  v4 = [a1 list];
  v5 = [v4 identifier];
  v6 = [a1 account];
  v7 = [v6 identifier];
  sub_1000A58E4();
  sub_1000A5904();
  _os_log_error_impl(v8, v9, v10, v11, v12, 0x20u);
}

void sub_100765B5C(void *a1)
{
  v2 = [a1 previousList];
  v3 = [v2 identifier];
  v4 = [a1 list];
  v5 = [v4 identifier];
  v6 = [a1 account];
  v7 = [v6 identifier];
  sub_1000A58E4();
  sub_1000A5904();
  _os_log_error_impl(v8, v9, v10, v11, v12, 0x20u);
}

void sub_100765C5C(void *a1, NSObject *a2)
{
  v4 = [a1 list];
  v5 = [v4 identifier];
  v6 = [a1 parentReminder];
  v7 = [v6 identifier];
  v8 = [a1 identifier];
  sub_1000A58E4();
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Validation Failure: Tried to create nested subtasks {list.identifier: %{public}@, parentReminder.identifier: %{public}@, reminder.identifier: %{public}@}", v9, 0x20u);
}

void sub_100765D4C(void *a1, NSObject *a2)
{
  v4 = [a1 parentReminder];
  v5 = [v4 list];
  v6 = [v5 identifier];
  v7 = [a1 list];
  v8 = [v7 identifier];
  v9 = [a1 parentReminder];
  v10 = [v9 identifier];
  v11 = [a1 identifier];
  v12 = 138544130;
  v13 = v6;
  v14 = 2114;
  v15 = v8;
  v16 = 2114;
  v17 = v10;
  v18 = 2114;
  v19 = v11;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Validation Failure: Tried to set a subtask on a different list to its parent reminder {parentList.identifier: %{public}@, list.identifier: %{public}@, parentReminder.identifier: %{public}@, reminder.identifier: %{public}@}", &v12, 0x2Au);
}

void sub_100765EA0(void *a1, void *a2)
{
  v4 = [a1 list];
  v5 = [v4 identifier];
  v6 = [a2 list];
  v7 = [v6 identifier];
  v8 = [a1 identifier];
  v14 = [a2 identifier];
  sub_1000A5904();
  _os_log_error_impl(v9, v10, v11, v12, v13, 0x2Au);
}

void sub_100765FC8(void *a1, NSObject *a2)
{
  v4 = [a1 identifier];
  v5 = [a1 previousList];
  v6 = [v5 identifier];
  v7 = [a1 list];
  v8 = [v7 identifier];
  v9 = [a1 account];
  v10 = [v9 identifier];
  v11 = 138544130;
  v12 = v4;
  v13 = 2114;
  v14 = v6;
  v15 = 2114;
  v16 = v8;
  v17 = 2114;
  v18 = v10;
  _os_log_fault_impl(&_mh_execute_header, a2, OS_LOG_TYPE_FAULT, "Validation WARNING: Attempt to move a reminder with assignments to a different list while supportsMoveAcrossSharedLists=NO {reminder.identifier: %{public}@, fromList.identifier: %{public}@, toList.identifier: %{public}@, account.identifier: %{public}@}", &v11, 0x2Au);
}

void sub_100766104(void *a1)
{
  v2 = +[REMLogStore write];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
  {
    v3 = [a1 remObjectID];
    v4 = 138543362;
    v5 = v3;
    _os_log_fault_impl(&_mh_execute_header, v2, OS_LOG_TYPE_FAULT, "rem_log_fault_if (self.willSave_handledUpdateDisplayDate) -- Unexpected case to have deleted alarms after markExtraneousAlarmsForDeletion() but already handled updateDisplayDate {remObjectID: %{public}@}", &v4, 0xCu);
  }
}

void sub_1007661C8(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Failed to check for free disk space: %@", &v2, 0xCu);
}

void sub_100766240(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 56);
  v5 = 138412802;
  v6 = v3;
  v7 = 2048;
  v8 = v4;
  v9 = 2048;
  v10 = a2;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Not enough free space at '%@': require %llu bytes, %llu bytes available", &v5, 0x20u);
}

void sub_1007662D8()
{
  v0 = +[REMLogStore utility];
  if (os_log_type_enabled(v0, OS_LOG_TYPE_FAULT))
  {
    v1 = +[NSThread callStackSymbols];
    v2 = 138412290;
    v3 = v1;
    _os_log_fault_impl(&_mh_execute_header, v0, OS_LOG_TYPE_FAULT, "rem_log_fault_if (![NSStringFromClass([REMCDAuxiliaryReminderChangeInfo class]) isEqualToString:NSStringFromClass(self)]) -- A subclass of REMCDAuxiliaryReminderChangeInfo called '- [REMCDAuxiliaryReminderChangeInfo cdEntityName]'. The subclass should override this method. {callstack: %@}", &v2, 0xCu);
  }
}

void sub_10076639C()
{
  v0 = +[REMLogStore utility];
  if (os_log_type_enabled(v0, OS_LOG_TYPE_FAULT))
  {
    v1 = +[NSThread callStackSymbols];
    v2 = 138412290;
    v3 = v1;
    _os_log_fault_impl(&_mh_execute_header, v0, OS_LOG_TYPE_FAULT, "rem_log_fault_if (![NSStringFromClass([REMCDRootEntityObject class]) isEqualToString:NSStringFromClass(self)]) -- A subclass of REMCDRootEntityObject called '- [REMCDRootEntityObject cdEntityName]'. The subclass should override this method. {callstack: %@}", &v2, 0xCu);
  }
}

void sub_100766460(NSObject *a1)
{
  v2 = +[NSThread callStackSymbols];
  v3 = 138543362;
  v4 = v2;
  _os_log_fault_impl(&_mh_execute_header, a1, OS_LOG_TYPE_FAULT, "Calling -isConnectedToAccountObject: on REMCDSharedToMeReminderPlaceholder is unexpected as this is not a class that should be updated or saved directly from a save request {callstack: %{public}@}", &v3, 0xCu);
}

void sub_100766500(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_fault_impl(&_mh_execute_header, a2, OS_LOG_TYPE_FAULT, "Error creating unarchiver: %@", &v2, 0xCu);
}

void sub_1007665BC(uint64_t a1, NSObject *a2)
{
  v2 = 138543362;
  v3 = a1;
  _os_log_fault_impl(&_mh_execute_header, a2, OS_LOG_TYPE_FAULT, "Error creating unarchiver: %{public}@", &v2, 0xCu);
}

void sub_100766634()
{
  sub_10009DB74();
  v3 = 2114;
  v4 = v0;
  _os_log_error_impl(&_mh_execute_header, v1, OS_LOG_TYPE_ERROR, "Error finding object from objectID: %{public}@, %{public}@", v2, 0x16u);
}

void sub_10076672C(NSObject *a1)
{
  v2 = +[NSThread callStackSymbols];
  sub_10009DB74();
  _os_log_fault_impl(&_mh_execute_header, a1, OS_LOG_TYPE_FAULT, "Trying to get an object from a nil object ID: %{public}@", v3, 0xCu);
}

void sub_10076683C(uint64_t a1, uint64_t a2, NSObject *a3)
{
  objc_opt_class();
  sub_10009DB74();
  v8 = 2114;
  v9 = a2;
  v6 = v5;
  _os_log_error_impl(&_mh_execute_header, a3, OS_LOG_TYPE_ERROR, "Error obtaining permanent object ID for %{public}@: %{public}@", v7, 0x16u);
}

void sub_1007668E0(uint64_t a1, NSObject *a2)
{
  v2 = 134217984;
  v3 = a1;
  _os_log_fault_impl(&_mh_execute_header, a2, OS_LOG_TYPE_FAULT, "ICCloudSchemaCatchUpSyncContext: Initiated with an invalid scheduling state value (%ld), assume shouldPerformCloudSchemaCatchUpSync=YES", &v2, 0xCu);
}

void sub_100766958()
{
  v0 = +[NSThread callStackSymbols];
  sub_10009DB74();
  sub_10009DAEC();
  _os_log_fault_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_1007669EC(void *a1, const char *a2, NSObject *a3)
{
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  v8 = NSStringFromSelector(a2);
  v9 = [NSString stringWithFormat:@"%@.%@", v7, v8];
  v10 = [a1 remObjectID];
  sub_1000ABBB0();
  _os_log_fault_impl(&_mh_execute_header, a3, OS_LOG_TYPE_FAULT, "[%{public}@] Model type is not supposed to use or set resolutionTokenMap {objectID: %{public}@}", buf, 0x16u);
}

void sub_100766AEC(void *a1, const char *a2, NSObject *a3)
{
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  v8 = NSStringFromSelector(a2);
  v9 = [NSString stringWithFormat:@"%@.%@", v7, v8];
  v10 = [a1 remObjectID];
  sub_1000ABBB0();
  _os_log_debug_impl(&_mh_execute_header, a3, OS_LOG_TYPE_DEBUG, "[%{public}@] Model type does allow setResolutionTokenMap, you are good {objectID: %{public}@}", buf, 0x16u);
}

void sub_100766BEC()
{
  sub_10009DC14();
  v1 = objc_opt_class();
  NSStringFromClass(v1);
  objc_claimAutoreleasedReturnValue();
  v2 = [sub_10009DCD8() objectID];
  sub_1000ABBA4();
  sub_10009DAFC();
  sub_10009DAEC();
  _os_log_fault_impl(v3, v4, v5, v6, v7, 0x16u);
}

void sub_100766C98(void *a1, NSObject *a2)
{
  v4 = [a1 entity];
  v5 = [v4 name];
  v6 = [a1 identifier];
  v7 = [v6 UUIDString];
  v8 = 138543618;
  v9 = v5;
  sub_10009DAFC();
  _os_log_fault_impl(&_mh_execute_header, a2, OS_LOG_TYPE_FAULT, "Validation Failure: We have a REMCDObject that is not a REMCDAccount and is missing an account relationship {entity: %{public}@, identifier: %{public}@}", &v8, 0x16u);
}

void sub_100766DF0(void *a1, NSObject *a2)
{
  v4 = [a1 previousAccount];
  v5 = [v4 identifier];
  v6 = [a1 account];
  v7 = [v6 identifier];
  v8 = 138543618;
  v9 = v5;
  sub_10009DAFC();
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Validation Failure: Tried to move lists accross accounts {fromAccount.identifier: %{public}@, toAccount.identifier: %{public}@}", &v8, 0x16u);
}

void sub_100766F48(void *a1)
{
  v1 = [a1 remObjectID];
  sub_10009DB74();
  sub_1000ABB94();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_100766FD4(void *a1)
{
  v1 = [a1 remObjectID];
  sub_10009DB74();
  sub_10009DAEC();
  _os_log_fault_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_100767078(void *a1)
{
  v1 = [a1 objectID];
  sub_10009DB74();
  sub_10009DAEC();
  _os_log_fault_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_10076711C(unsigned __int8 *a1, uint64_t a2)
{
  v3 = [NSNumber numberWithBool:*a1];
  v4 = [*(a2 + 32) remObjectID];
  sub_1000ABBA4();
  sub_1000ABB94();
  _os_log_debug_impl(v5, v6, v7, v8, v9, 0x16u);
}

void sub_1007671E4(uint64_t a1, void *a2)
{
  v2 = [a2 className];
  sub_10009DAFC();
  sub_10009DAEC();
  _os_log_fault_impl(v3, v4, v5, v6, v7, 0x16u);
}

void sub_100767288()
{
  sub_10009DC14();
  v1 = objc_opt_class();
  NSStringFromClass(v1);
  objc_claimAutoreleasedReturnValue();
  v2 = [sub_10009DCD8() identifier];
  sub_1000ABBA4();
  sub_10009DAFC();
  sub_10009DAEC();
  _os_log_fault_impl(v3, v4, v5, v6, v7, 0x16u);
}

void sub_100767334()
{
  sub_10009DC14();
  v1 = objc_opt_class();
  NSStringFromClass(v1);
  objc_claimAutoreleasedReturnValue();
  v2 = [sub_10009DCD8() identifier];
  sub_1000ABBA4();
  sub_10009DAFC();
  sub_10009DAEC();
  _os_log_fault_impl(v3, v4, v5, v6, v7, 0x16u);
}

void sub_1007673E0(uint64_t a1)
{
  v1 = objc_opt_class();
  v2 = NSStringFromClass(v1);
  v3 = +[NSThread callStackSymbols];
  sub_10009DAFC();
  sub_10009DAEC();
  _os_log_fault_impl(v4, v5, v6, v7, v8, 0x16u);
}

void sub_100767498(uint64_t a1)
{
  v1 = objc_opt_class();
  v2 = NSStringFromClass(v1);
  v3 = +[NSThread callStackSymbols];
  sub_10009DAFC();
  sub_10009DAEC();
  _os_log_fault_impl(v4, v5, v6, v7, v8, 0x16u);
}

void sub_100767550(void *a1)
{
  v2 = +[REMLogStore write];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
  {
    v3 = [a1 storeControllerManagedObjectContext];
    v4 = [v3 ic_loggingDescription];
    sub_10009DB74();
    sub_10009DAEC();
    _os_log_fault_impl(v5, v6, v7, v8, v9, 0xCu);
  }
}

void sub_100767620()
{
  sub_10009DC14();
  v1 = objc_opt_class();
  NSStringFromClass(v1);
  objc_claimAutoreleasedReturnValue();
  v2 = [sub_10009DCD8() identifier];
  sub_1000ABBA4();
  sub_10009DAFC();
  sub_1000ABB94();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x16u);
}

void sub_1007676CC()
{
  v0 = +[NSThread callStackSymbols];
  sub_10009DB74();
  sub_10009DAEC();
  _os_log_fault_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_100767760(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = 138543618;
  v4 = a1;
  v5 = 2114;
  v6 = a2;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Missing requirements to get alarmDateTrigger {accountID: %{public}@, alarmID: %{public}@}", &v3, 0x16u);
}

void sub_100767860(uint64_t a1, const char *a2)
{
  v2 = objc_msgSend_cloudkit(REMLog, a2);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
  {
    *v3 = 0;
    _os_log_fault_impl(&_mh_execute_header, v2, OS_LOG_TYPE_FAULT, "rem_log_fault_if (!entityName) -- Unexpected error: found entity with no name", v3, 2u);
  }
}

void sub_1007678D4(void *a1, uint64_t a2, NSObject *a3)
{
  v5 = 134218242;
  v6 = [a1 count];
  v7 = 2114;
  v8 = a2;
  _os_log_error_impl(&_mh_execute_header, a3, OS_LOG_TYPE_ERROR, "Error fetching objects from (%ld) object IDs: %{public}@", &v5, 0x16u);
}

void sub_1007679C8(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = 138543874;
  v4 = a1;
  v5 = 2048;
  v6 = a2;
  v7 = 2048;
  v8 = 20250728;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "ICCSCU: cloudSchemaCatchUpSyncDidComplete: persistenceCloudSchemaVersion is already >= kRuntimeCloudSchemaVersion, stopping {accountIdentifier: %{public}@, persistence: %lld, runtime: %lld}", &v3, 0x20u);
}

void sub_100767A60(uint64_t a1, NSObject *a2)
{
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "ICCSCU: cloudSchemaCatchUpSyncDidComplete: Update ckAccount.persistenceCloudSchemaVersion FAILED {accountID: %{public}@}", &v2, 0xCu);
}

void sub_100767AD8(uint64_t a1, const char *a2)
{
  v3 = objc_msgSend_cloudkit(REMLog, a2);
  if (sub_10009DC70(v3))
  {
    sub_10009DAEC();
    _os_log_fault_impl(v4, v5, v6, v7, v8, 2u);
  }
}

void sub_100767B3C()
{
  sub_10009DC14();
  v1 = objc_opt_class();
  v2 = [sub_10009DBEC() ckIdentifier];
  sub_1000B6F28();
  sub_10009DB68();
  _os_log_error_impl(v3, v4, OS_LOG_TYPE_ERROR, v5, v6, 0x16u);
}

void sub_100767BE8()
{
  sub_10009DC14();
  v2 = objc_opt_class();
  NSStringFromClass(v2);
  objc_claimAutoreleasedReturnValue();
  [sub_10009DCD8() objectID];
  objc_claimAutoreleasedReturnValue();
  v3 = [sub_10009DBEC() identifier];
  sub_1000B6F14();
  sub_1000B6F5C();
  sub_10009DAEC();
  _os_log_fault_impl(v4, v5, v6, v7, v8, 0x20u);
}

void sub_100767CA4()
{
  sub_10009DC14();
  v2 = objc_opt_class();
  NSStringFromClass(v2);
  objc_claimAutoreleasedReturnValue();
  [sub_10009DCD8() objectID];
  objc_claimAutoreleasedReturnValue();
  v3 = [sub_10009DBEC() identifier];
  sub_1000B6F14();
  sub_1000B6F5C();
  sub_10009DAEC();
  _os_log_fault_impl(v4, v5, v6, v7, v8, 0x20u);
}

void sub_100767D60()
{
  sub_10009DAC8();
  v3 = v0;
  _os_log_error_impl(&_mh_execute_header, v1, OS_LOG_TYPE_ERROR, "objectWithRecordID: (object.ckIdentifier: %{public}@, accountID: %{public}@) has nil account even after fixed up", v2, 0x16u);
}

void sub_100767E04()
{
  sub_100042850();
  sub_10009DBB8();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100767E40()
{
  sub_100042850();
  sub_10009DBB8();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100767E90()
{
  sub_100042850();
  sub_10009DBB8();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100767ECC()
{
  sub_100042850();
  sub_10009DBB8();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100767F08()
{
  sub_10009DC14();
  v1 = objc_opt_class();
  NSStringFromClass(v1);
  objc_claimAutoreleasedReturnValue();
  [sub_10009DCD8() failedToSyncCount];
  v6 = [sub_10009DBEC() loggingDescription];
  sub_10009DB68();
  _os_log_error_impl(v2, v3, OS_LOG_TYPE_ERROR, v4, v5, 0x1Cu);
}

void sub_100767FD8()
{
  sub_10009DC14();
  v2 = objc_opt_class();
  NSStringFromClass(v2);
  objc_claimAutoreleasedReturnValue();
  [sub_10009DCD8() objectID];
  objc_claimAutoreleasedReturnValue();
  v3 = [sub_10009DBEC() identifier];
  sub_1000B6F14();
  sub_1000B6F5C();
  sub_10009DAEC();
  _os_log_fault_impl(v4, v5, v6, v7, v8, 0x20u);
}

void sub_100768094()
{
  sub_10009DC14();
  v1 = objc_opt_class();
  NSStringFromClass(v1);
  objc_claimAutoreleasedReturnValue();
  v2 = [sub_10009DCD8() objectID];
  sub_10009DA80();
  sub_10009DAEC();
  _os_log_fault_impl(v3, v4, v5, v6, v7, 0x16u);
}

void sub_10076813C()
{
  sub_10009DC14();
  v1 = objc_opt_class();
  NSStringFromClass(v1);
  objc_claimAutoreleasedReturnValue();
  v2 = [sub_10009DCD8() objectID];
  sub_10009DA80();
  sub_10009DAEC();
  _os_log_fault_impl(v3, v4, v5, v6, v7, 0x16u);
}

void sub_1007681E4()
{
  sub_10009DC14();
  v1 = objc_opt_class();
  NSStringFromClass(v1);
  objc_claimAutoreleasedReturnValue();
  v2 = [sub_10009DCD8() objectID];
  sub_10009DA80();
  sub_10009DAEC();
  _os_log_fault_impl(v3, v4, v5, v6, v7, 0x16u);
}

void sub_10076828C()
{
  sub_10009DC14();
  v1 = objc_opt_class();
  NSStringFromClass(v1);
  objc_claimAutoreleasedReturnValue();
  v2 = [sub_10009DCD8() objectID];
  sub_10009DA80();
  sub_10009DAEC();
  _os_log_fault_impl(v3, v4, v5, v6, v7, 0x16u);
}

void sub_100768334()
{
  sub_100042850();
  sub_10009DBB8();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100768370(NSObject *a1)
{
  if (sub_10009DC70(a1))
  {
    sub_10009DAEC();
    _os_log_fault_impl(v2, v3, v4, v5, v6, 2u);
  }
}

void sub_1007683C4(uint64_t a1, const char *a2, void *a3)
{
  v5 = objc_msgSend_cloudkit(REMLog);
  if (sub_10009DC70(v5))
  {
    v6 = [a3 ckIdentifier];
    sub_1000B6F14();
    sub_10009DAEC();
    _os_log_fault_impl(v7, v8, v9, v10, v11, 0x20u);
  }
}

void sub_100768494()
{
  sub_10009DB74();
  sub_10009DBB8();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100768504(uint64_t a1, const char *a2)
{
  v3 = objc_msgSend_cloudkit(REMLog, a2);
  if (sub_10009DC70(v3))
  {
    sub_10009DAEC();
    _os_log_fault_impl(v4, v5, v6, v7, v8, 2u);
  }
}

void sub_100768568(objc_class *a1)
{
  v1 = NSStringFromClass(a1);
  sub_10009DAC8();
  sub_10009DAEC();
  _os_log_fault_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_100768608(objc_class *a1)
{
  v1 = NSStringFromClass(a1);
  sub_10009DAC8();
  sub_10009DAEC();
  _os_log_fault_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_1007686A8()
{
  sub_10009DB74();
  sub_10009DBB8();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100768718(objc_class *a1)
{
  v1 = NSStringFromClass(a1);
  sub_10009DAC8();
  sub_10009DB68();
  _os_log_error_impl(v2, v3, OS_LOG_TYPE_ERROR, v4, v5, 0x16u);
}

void sub_1007687BC()
{
  v0 = +[NSThread callStackSymbols];
  sub_10009DB74();
  sub_10009DAEC();
  _os_log_fault_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_100768850(void *a1)
{
  v1 = [a1 shortLoggingDescription];
  sub_10009DB74();
  sub_10009DAEC();
  _os_log_fault_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_100768944(void *a1, const char *a2)
{
  v4 = objc_msgSend_cloudkit(REMLog);
  if (sub_10009DC70(v4))
  {
    [a1 recordType];
    objc_claimAutoreleasedReturnValue();
    v5 = [sub_10009DCD8() recordType];
    sub_10009DA80();
    sub_10009DAEC();
    _os_log_fault_impl(v6, v7, v8, v9, v10, 0x16u);
  }
}

void sub_100768A10()
{
  sub_10009DC14();
  v1 = objc_opt_class();
  NSStringFromClass(v1);
  objc_claimAutoreleasedReturnValue();
  v2 = [sub_10009DCD8() identifier];
  sub_10009DA80();
  sub_10009DAEC();
  _os_log_fault_impl(v3, v4, v5, v6, v7, 0x16u);
}

void sub_100768AB8()
{
  sub_10009DC14();
  v1 = objc_opt_class();
  NSStringFromClass(v1);
  objc_claimAutoreleasedReturnValue();
  v2 = [sub_10009DCD8() identifier];
  sub_1000B6F28();
  sub_10009DB68();
  _os_log_debug_impl(v3, v4, OS_LOG_TYPE_DEBUG, v5, v6, 0x16u);
}

void sub_100768B64(void *a1)
{
  v1 = [a1 ic_loggingDescription];
  sub_10009DAC8();
  sub_10009DAEC();
  _os_log_fault_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_100768C00(void *a1)
{
  v1 = [a1 recordID];
  v2 = [v1 recordName];
  sub_10009DB74();
  sub_10009DAEC();
  _os_log_fault_impl(v3, v4, v5, v6, v7, 0xCu);
}

void sub_100768CA4(void *a1)
{
  v1 = [a1 ic_loggingDescription];
  sub_10009DB74();
  sub_10009DB68();
  _os_log_error_impl(v2, v3, OS_LOG_TYPE_ERROR, v4, v5, 0xCu);
}

void sub_100768FB8(void *a1, NSObject *a2)
{
  v4 = [a1 objectID];
  v5 = [a1 identifier];
  v6 = [a1 parentCloudObject];
  v7 = [a1 parentCloudObject];
  v8 = [v7 objectID];
  v9 = [a1 parentCloudObject];
  v10 = [v9 identifier];
  v11 = 138544386;
  v12 = v4;
  v13 = 2114;
  v14 = v5;
  v15 = 2114;
  v16 = v6;
  v17 = 2114;
  v18 = v8;
  v19 = 2114;
  v20 = v10;
  _os_log_fault_impl(&_mh_execute_header, a2, OS_LOG_TYPE_FAULT, "updateParentReferenceIfNecessary: self.parentCloudObject.recordID is nil %{public}@ %{public}@ %{public}@ %{public}@ %{public}@", &v11, 0x34u);
}

void sub_100769100(void *a1)
{
  v1 = [a1 shortLoggingDescription];
  sub_10009DB74();
  sub_10009DB68();
  _os_log_error_impl(v2, v3, OS_LOG_TYPE_ERROR, v4, v5, 0xCu);
}

void sub_1007691E0()
{
  sub_10009DC14();
  v1 = objc_opt_class();
  v2 = [sub_10009DBEC() ckIdentifier];
  sub_1000B6F28();
  sub_10009DAEC();
  _os_log_fault_impl(v3, v4, v5, v6, v7, 0x16u);
}

void sub_100769288()
{
  sub_10009DC14();
  v1 = objc_opt_class();
  v2 = [sub_10009DBEC() ckIdentifier];
  sub_1000B6F28();
  sub_10009DAEC();
  _os_log_fault_impl(v3, v4, v5, v6, v7, 0x16u);
}

void sub_100769330()
{
  sub_10009DC14();
  v1 = objc_opt_class();
  v2 = [sub_10009DBEC() ckIdentifier];
  sub_1000B6F28();
  sub_10009DAEC();
  _os_log_fault_impl(v3, v4, v5, v6, v7, 0x16u);
}

void sub_1007693D8()
{
  sub_10009DB74();
  sub_10009DBB8();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100769448()
{
  sub_10009DC14();
  v2 = [v1 objectID];
  [v0 ckServerRecord];
  objc_claimAutoreleasedReturnValue();
  v3 = [sub_100042318() numberWithInt:?];
  sub_10009DA80();
  sub_10009DB68();
  _os_log_debug_impl(v4, v5, OS_LOG_TYPE_DEBUG, v6, v7, 0x16u);
}

void sub_10076950C()
{
  sub_10009DC14();
  v2 = [v1 objectID];
  [v0 ckServerRecord];
  objc_claimAutoreleasedReturnValue();
  v3 = [sub_100042318() numberWithInt:?];
  sub_10009DA80();
  sub_10009DB68();
  _os_log_debug_impl(v4, v5, OS_LOG_TYPE_DEBUG, v6, v7, 0x16u);
}

void sub_100769628(void *a1, NSObject *a2)
{
  v4 = [a1 objectID];
  v5 = [a1 name];
  v6 = [a1 uuidForChangeTracking];
  v7 = [a1 accountIdentifier];
  v8 = 138544130;
  v9 = v4;
  v10 = 2112;
  v11 = v5;
  v12 = 2114;
  v13 = v6;
  v14 = 2114;
  v15 = v7;
  _os_log_fault_impl(&_mh_execute_header, a2, OS_LOG_TYPE_FAULT, "REMCDHashtagLabel.validateForInsert: { id: %{public}@, name: %@, uuidForChangeTracking: %{public}@ } with invalid nil or empty accountIdentifier: %{public}@", &v8, 0x2Au);
}

void sub_100769730(void *a1, uint64_t *a2, NSObject *a3)
{
  v6 = [a1 objectID];
  v7 = [a1 name];
  v8 = [a1 uuidForChangeTracking];
  v9 = *a2;
  v10 = 138544130;
  v11 = v6;
  v12 = 2112;
  v13 = v7;
  v14 = 2114;
  v15 = v8;
  v16 = 2114;
  v17 = v9;
  _os_log_error_impl(&_mh_execute_header, a3, OS_LOG_TYPE_ERROR, "REMCDHashtagLabel.validateForInsert_Swift: { id: %{public}@, name: %@, uuidForTracking: %{public}@, error: %{public}@ }", &v10, 0x2Au);
}

void sub_10076982C(void *a1, NSObject *a2)
{
  v3 = [a1 objectID];
  v4 = 138543362;
  v5 = v3;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Cannot return an -remChangedObjectID because this REMCDHashtagLabel object has no UUID {mid: %{public}@}", &v4, 0xCu);
}

void sub_1007698C4(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Failed to fetch objects. Migration failed {error: %@}", &v2, 0xCu);
}

void sub_10076993C(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_fault_impl(&_mh_execute_header, a2, OS_LOG_TYPE_FAULT, "Failed to save last object. Migration error {error: %@}", &v2, 0xCu);
}

void sub_100769B54(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "cdList missing account. Skipping reminderListOrdering migration {cdList: %@}", &v2, 0xCu);
}

void sub_100769BCC(void *a1)
{
  v1 = [a1 transactionAuthor];
  sub_10009DB74();
  sub_10009DADC();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_100769C70(void *a1)
{
  v1 = [a1 transactionAuthor];
  sub_10009DB74();
  sub_10009DADC();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_100769D88()
{
  sub_10009DB74();
  v3 = 2114;
  v4 = v0;
  _os_log_debug_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEBUG, "CT Implementation: saveTrackingState {state: %@, clientID: %{public}@}", v2, 0x16u);
}

void sub_100769E74(uint64_t a1, void *a2)
{
  v2 = [a2 localizedDescription];
  sub_1000BD430();
  sub_10009DADC();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
}

void sub_100769F18(void *a1)
{
  v1 = [a1 localizedDescription];
  sub_10009DB74();
  sub_10009DADC();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_100769FA4()
{
  v1 = +[REMLog changeTracking];
  if (sub_10009DC70(v1))
  {
    sub_10009DAEC();
    _os_log_fault_impl(v2, v3, v4, v5, v6, 2u);
  }
}

void sub_10076A008(uint64_t *a1)
{
  v2 = +[REMLog changeTracking];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
  {
    *v4 = 0;
    _os_log_fault_impl(&_mh_execute_header, v2, OS_LOG_TYPE_FAULT, "rem_log_fault_if (!error) -- Attempting to get errorChangeSet with nil error.", v4, 2u);
  }

  v3 = [REMError internalErrorWithDebugDescription:@"Attempting to get errorChangeSet with nil error."];
  *a1 = [REMChangeSet errorChangeSetWithError:v3];
}

void sub_10076A0C4()
{
  v1 = +[REMLog changeTracking];
  if (sub_10009DC70(v1))
  {
    sub_10009DAEC();
    _os_log_fault_impl(v2, v3, v4, v5, v6, 0xCu);
  }
}

void sub_10076A164(uint64_t a1, uint64_t a2)
{
  v4 = [sub_10009DB20(a1 a2)];
  *v3 = 138412290;
  *v2 = v4;
  sub_1000BD440(&_mh_execute_header, v5, v6, "REMNSPersistentHistoryTracking resultChangeSet: Skipped generating changeSet for a transaction. Failed to get account objectID from storeID {storeID: %@}");
}

void sub_10076A1C0(uint64_t a1, uint64_t a2)
{
  v4 = [sub_10009DB20(a1 a2)];
  *v3 = 138412290;
  *v2 = v4;
  sub_1000BD440(&_mh_execute_header, v5, v6, "REMNSPersistentHistoryTracking resultChangeSet: Skipped generating changeSet for a transaction. REMNSPersistentHistoryTransaction has no storeID {transaction: %@}");
}

void sub_10076A21C()
{
  v1 = +[REMLog changeTracking];
  if (sub_10009DC70(v1))
  {
    sub_10009DAEC();
    _os_log_fault_impl(v2, v3, v4, v5, v6, 0xCu);
  }
}

void sub_10076A2C0(uint64_t a1, void *a2)
{
  v2 = [a2 localizedDescription];
  sub_1000BD430();
  sub_10009DADC();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
}

void sub_10076A364()
{
  v1 = +[REMLog changeTracking];
  if (sub_10009DC70(v1))
  {
    sub_10009DAEC();
    _os_log_fault_impl(v2, v3, v4, v5, v6, 0xCu);
  }
}

void sub_10076A408(void *a1, void *a2)
{
  v4 = [a1 clientName];
  v5 = [a1 accountIdentifier];
  v11 = [a2 localizedDescription];
  sub_10009DADC();
  _os_log_error_impl(v6, v7, v8, v9, v10, 0x20u);
}

void sub_10076A4E4(void *a1)
{
  v2 = [a1 clientName];
  v3 = [a1 accountIdentifier];
  sub_1000BD430();
  sub_10009DADC();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);
}

void sub_10076A598(uint64_t a1, void *a2)
{
  v2 = [a2 localizedDescription];
  sub_1000BD430();
  sub_10009DADC();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
}

void sub_10076A6B8(uint64_t a1, NSObject *a2)
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = 138543362;
  v6 = v4;
  _os_log_fault_impl(&_mh_execute_header, a2, OS_LOG_TYPE_FAULT, "[REMCDObjectTreeProcessorDelegate preprocessTreeNode:] Unknown node type {type: %{public}@}", &v5, 0xCu);
}

void sub_10076A754(uint64_t a1, const char *a2)
{
  v2 = objc_msgSend_cloudkit(REMLog, a2);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
  {
    v3 = 138412290;
    v4 = qword_100952AD8;
    _os_log_fault_impl(&_mh_execute_header, v2, OS_LOG_TYPE_FAULT, "rem_log_fault_if (sharedSettings != nil) -- Sync settings have already been initialized. {sharedSettings: %@}", &v3, 0xCu);
  }
}

void sub_10076A808()
{
  sub_1000BE754();
  v2 = objc_opt_class();
  v3 = NSStringFromClass(v2);
  v4 = NSStringFromSelector(v0);
  v5 = [NSString stringWithFormat:@"%@.%@", v3, v4];
  v6 = [v1 remObjectID];
  sub_1000ABBB0();
  sub_1000BE734(&_mh_execute_header, v7, v8, "[%{public}@] Cannot obtain account identifier from attachment {attachmentID: %{public}@}", v9, v10, v11, v12, v13, v14);
}

void sub_10076A8F0()
{
  sub_1000BE754();
  v2 = objc_opt_class();
  v3 = NSStringFromClass(v2);
  v4 = NSStringFromSelector(v0);
  v5 = [NSString stringWithFormat:@"%@.%@", v3, v4];
  v6 = [v1 objectID];
  sub_1000ABBB0();
  sub_1000BE734(&_mh_execute_header, v7, v8, "[%{public}@] Cannot obtain identifier from attachment {moid: %{public}@}", v9, v10, v11, v12, v13, v14);
}

void sub_10076A9D8()
{
  sub_1000BE754();
  v2 = objc_opt_class();
  v3 = NSStringFromClass(v2);
  v4 = NSStringFromSelector(v0);
  v5 = [NSString stringWithFormat:@"%@.%@", v3, v4];
  v6 = [v1 remObjectID];
  sub_1000ABBB0();
  sub_1000BE734(&_mh_execute_header, v7, v8, "[%{public}@] Cannot obtain RDStoreControllerManagedObjectContext from attachment {attachmentID: %{public}@}", v9, v10, v11, v12, v13, v14);
}

void sub_10076AAC0()
{
  v0 = +[REMLogStore write];
  if (os_log_type_enabled(v0, OS_LOG_TYPE_FAULT))
  {
    LODWORD(v7) = 136315138;
    *(&v7 + 4) = "backingCDObject";
    sub_1000BF158(&_mh_execute_header, v1, v2, "rem_log_fault_if (!backingCDObject) -- invalid nil value for '%s'", v3, v4, v5, v6, v7, DWORD2(v7));
  }
}

void sub_10076AB64(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v7 = 138543618;
  v8 = a1;
  v9 = 2114;
  v10 = v6;
  _os_log_error_impl(&_mh_execute_header, a3, OS_LOG_TYPE_ERROR, "REMCDObjectEffectiveVersionValidationDelegateImpl.preprocessTreeNode: Unexpected non-REMCDObject {mid: %{public}@, managedObject.class: %{public}@}", &v7, 0x16u);
}

void sub_10076AC1C()
{
  sub_10009DB74();
  v3 = 2114;
  v4 = v0;
  _os_log_error_impl(&_mh_execute_header, v1, OS_LOG_TYPE_ERROR, "REMCDObjectEffectiveVersionValidationDelegateImpl.preprocessTreeNode: Failed to fetch managed object {mid: %{public}@, error: %{public}@}", v2, 0x16u);
}

void sub_10076AD14(uint64_t a1)
{
  v1 = objc_opt_class();
  v2 = NSStringFromClass(v1);
  sub_10009DB74();
  sub_1000BF158(&_mh_execute_header, v3, v4, "REMCDObjectEffectiveVersionValidationDelegateImpl.preprocessTreeNode: Incorrect node type passed to REMCDObjectEffectiveVersionValidationDelegateImpl {type: %{public}@}", v5, v6, v7, v8);
}

void sub_10076AD9C(void *a1)
{
  v1 = [a1 identifier];
  sub_10009DB74();
  sub_1000BF158(&_mh_execute_header, v2, v3, "[REMCDObjectTreeProcessorDelegate processBatchOfTreeNodes:] Unexpectedly processes a node with nil REMCDObject {node: %{public}@}", v4, v5, v6, v7);
}

void sub_10076AE20(NSObject *a1)
{
  v2 = +[NSThread callStackSymbols];
  v3 = 138412290;
  v4 = v2;
  _os_log_fault_impl(&_mh_execute_header, a1, OS_LOG_TYPE_FAULT, "Called fetchRequest on REMCDObject. This will only fetch objects in SQLite table named 'ZREMCDOBJECT', but not those in other SQLite tables. {callstack: %@}", &v3, 0xCu);
}

void sub_10076AEE8(void *a1, uint64_t a2, NSObject *a3)
{
  v4 = 134218240;
  v5 = a2;
  v6 = 2048;
  v7 = [a1 count];
  _os_log_fault_impl(&_mh_execute_header, a3, OS_LOG_TYPE_FAULT, "Trying to insert object in mutableArray at index (%ld) greater than count (%ld)", &v4, 0x16u);
}

void sub_10076AF84(uint64_t a1, NSObject *a2)
{
  v2 = 134217984;
  v3 = a1;
  _os_log_fault_impl(&_mh_execute_header, a2, OS_LOG_TYPE_FAULT, "Trying to insert object in mutableArray at negative index %ld", &v2, 0xCu);
}

void sub_10076AFFC(uint64_t a1)
{
  v2 = +[REMLog changeTracking];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
  {
    v3 = 138412290;
    v4 = a1;
    _os_log_fault_impl(&_mh_execute_header, v2, OS_LOG_TYPE_FAULT, "rem_log_fault_if (!entityName) -- Nil NSManagedObject.entity.name {mangedObject: %@}", &v3, 0xCu);
  }
}

void sub_10076B0AC(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Error fetching server change tokens: %@", &v2, 0xCu);
}

void sub_10076B124(void *a1)
{
  v1 = [a1 shortLoggingDescription];
  sub_10009DB74();
  sub_10009DADC();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_10076B1B0(void *a1, void *a2)
{
  v3 = [a1 ic_loggingDescription];
  v4 = [a2 shortLoggingDescription];
  sub_1000C64E0();
  sub_10009DAEC();
  _os_log_fault_impl(v5, v6, v7, v8, v9, 0x16u);
}

void sub_10076B260(uint8_t *a1, void *a2, void *a3, NSObject *a4)
{
  v7 = [a2 shortLoggingDescription];
  *a1 = 138412290;
  *a3 = v7;
  _os_log_error_impl(&_mh_execute_header, a4, OS_LOG_TYPE_ERROR, "Have a share that wasn't persisted for %@", a1, 0xCu);
}

void sub_10076B2D8()
{
  v0 = +[REMLog cloudkitCollaboration];
  if (os_log_type_enabled(v0, OS_LOG_TYPE_FAULT))
  {
    sub_10009DAEC();
    _os_log_fault_impl(v1, v2, v3, v4, v5, 0xCu);
  }
}

void sub_10076B388(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138412290;
  *(buf + 4) = a1;
  _os_log_fault_impl(&_mh_execute_header, log, OS_LOG_TYPE_FAULT, "No root record for %@", buf, 0xCu);
}

void sub_10076B3E0(uint64_t a1)
{
  v2 = [*(a1 + 40) shortLoggingDescription];
  v3 = [*(a1 + 48) ic_loggingDescription];
  sub_1000C64E0();
  sub_10009DADC();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);
}

void sub_10076B494(id *a1, uint64_t *a2, NSObject *a3)
{
  v6 = [a1[9] ic_loggingDescription];
  v7 = [a1[5] shortLoggingDescription];
  v8 = [a1[6] ic_loggingDescription];
  v9 = *a2;
  v10 = 138413058;
  v11 = v6;
  v12 = 2112;
  v13 = v7;
  v14 = 2112;
  v15 = v8;
  v16 = 2112;
  v17 = v9;
  _os_log_error_impl(&_mh_execute_header, a3, OS_LOG_TYPE_ERROR, "Error saving share %@ for %@ %@: %@", &v10, 0x2Au);
}

void sub_10076B590(uint64_t a1)
{
  v2 = [*(a1 + 40) shortLoggingDescription];
  v3 = [*(a1 + 48) ic_loggingDescription];
  sub_1000C64E0();
  sub_10009DADC();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);
}

void sub_10076B644(void *a1, uint64_t a2)
{
  v3 = [a1 ic_loggingDescription];
  v4 = [*(a2 + 40) ic_loggingDescription];
  sub_1000C64E0();
  sub_10009DAEC();
  _os_log_fault_impl(v5, v6, v7, v8, v9, 0x16u);
}

void sub_10076B6F4(void *a1, uint64_t a2)
{
  v3 = [a1 ic_loggingDescription];
  v4 = [*(a2 + 32) shortLoggingDescription];
  v5 = [*(a2 + 40) ic_loggingDescription];
  sub_1000C64E0();
  sub_10009DADC();
  _os_log_error_impl(v6, v7, v8, v9, v10, 0x20u);
}

void sub_10076B7C0(void *a1)
{
  v1 = [a1 ckIdentifier];
  sub_10009DB74();
  sub_10009DADC();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_10076B850(void *a1)
{
  v1 = [a1 ic_loggingDescription];
  sub_10009DB74();
  sub_10009DAEC();
  _os_log_fault_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_10076B8DC(void *a1)
{
  v1 = [a1 ic_loggingDescription];
  sub_10009DB74();
  sub_10009DAEC();
  _os_log_fault_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_10076BA94()
{
  v0 = +[REMLog cloudkitCollaboration];
  if (os_log_type_enabled(v0, OS_LOG_TYPE_FAULT))
  {
    sub_10009DAEC();
    _os_log_fault_impl(v1, v2, v3, v4, v5, 0xCu);
  }
}

void sub_10076BB44(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v6 = [*(a1 + 32) share];
  v7 = [v6 URL];
  WeakRetained = objc_loadWeakRetained((a1 + 72));
  v9 = [WeakRetained ic_loggingDescription];
  v10 = 138412802;
  v11 = v7;
  v12 = 2112;
  v13 = v9;
  v14 = 2112;
  v15 = a2;
  _os_log_error_impl(&_mh_execute_header, a3, OS_LOG_TYPE_ERROR, "Error accepting share at URL %@ %@: %@", &v10, 0x20u);
}

void sub_10076BC40(uint64_t a1)
{
  v1 = [*(a1 + 32) ic_loggingDescription];
  sub_10009DB74();
  sub_10009DADC();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_10076BD24(void *a1)
{
  v1 = [a1 transactionAuthor];
  sub_1000C965C();
  sub_1000C9670(&_mh_execute_header, v2, v3, "COREDATA REQUEST {author: %{public}@, request: %@}", v4, v5, v6, v7);
}

void sub_10076BDB8(void *a1)
{
  v1 = [a1 transactionAuthor];
  sub_1000C965C();
  sub_1000C9670(&_mh_execute_header, v2, v3, "FETCH COREDATA REQUEST {author: %{public}@, request: %@}", v4, v5, v6, v7);
}

void sub_10076BE84(void *a1)
{
  v1 = [a1 transactionAuthor];
  sub_1000C965C();
  sub_1000C9670(&_mh_execute_header, v2, v3, "FETCH COUNT COREDATA REQUEST {author: %{public}@, request: %@}", v4, v5, v6, v7);
}

void sub_10076BF18(void *a1, NSObject *a2)
{
  v3 = [a1 debugDescription];
  v4 = 138543362;
  v5 = v3;
  _os_log_fault_impl(&_mh_execute_header, a2, OS_LOG_TYPE_FAULT, "Entity has nil name {entity: %{public}@}", &v4, 0xCu);
}

void sub_10076BFB0(os_log_t log)
{
  v1 = 138543362;
  v2 = qword_100952B08;
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "sTopologicallyWeightedEntities = %{public}@", &v1, 0xCu);
}

void sub_10076C034(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = 138543618;
  v4 = a1;
  v5 = 2114;
  v6 = a2;
  _os_log_fault_impl(&_mh_execute_header, log, OS_LOG_TYPE_FAULT, "Failed to fetch dirty object for effectiveMinimumSupportedVersion validation {managedObjectID: %{public}@, error: %{public}@}", &v3, 0x16u);
}

void sub_10076C0BC(uint64_t a1, NSObject *a2)
{
  v2 = 138543362;
  v3 = a1;
  _os_log_fault_impl(&_mh_execute_header, a2, OS_LOG_TYPE_FAULT, "Dirty object for effectiveMinimumSupportedVersion validation is not REMCDObject {managedObjectID: %{public}@}", &v2, 0xCu);
}

void sub_10076C134()
{
  sub_1000C965C();
  v3 = v0;
  _os_log_error_impl(&_mh_execute_header, v1, OS_LOG_TYPE_ERROR, "[%{public}@] missing persistentStoreCoordinator -- Can't get REMFetchResultToken {managedObjectContext: %@}", v2, 0x16u);
}

void sub_10076C1B0(uint64_t a1, NSObject *a2)
{
  v2 = *(*a1 + 40);
  v3 = 138543362;
  v4 = v2;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "[%{public}@] Failed to obtain fileIOWorkerQueue", &v3, 0xCu);
}

void sub_10076C230(uint64_t a1, NSObject *a2)
{
  v2 = *(*a1 + 40);
  v3 = 138543362;
  v4 = v2;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "[%{public}@] Failed to obtain RDStoreController", &v3, 0xCu);
}

void sub_10076C380(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = *(a2 + 32);
  v4 = *(a2 + 40);
  v5 = 138412802;
  v6 = a1;
  v7 = 2112;
  v8 = v3;
  v9 = 2112;
  v10 = v4;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Failed to remove Spotlight indices for store {error: %@, store: %@, coordinator: %@}", &v5, 0x20u);
}

void sub_10076C49C(void *a1, NSObject *a2)
{
  v3 = [a1 identifier];
  v4 = 138412290;
  v5 = v3;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "Trying to unset didChooseToMigrate and didFinishMigration on ACAccount (%@)", &v4, 0xCu);
}

void sub_10076C534(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Error saving migration state to ACAccount: %@", &v2, 0xCu);
}

void sub_10076C5AC()
{
  v0 = +[REMLogStore utility];
  if (os_log_type_enabled(v0, OS_LOG_TYPE_FAULT))
  {
    v1 = +[NSThread callStackSymbols];
    v2 = 138412290;
    v3 = v1;
    _os_log_fault_impl(&_mh_execute_header, v0, OS_LOG_TYPE_FAULT, "rem_log_fault_if (![NSStringFromClass([REMCDAttachment class]) isEqualToString:NSStringFromClass(self)]) -- A subclass of REMCDAttachment called '- [REMCDAttachment cdEntityName]'. The subclass should override this method. {callstack: %@}", &v2, 0xCu);
  }
}

void sub_10076C7B4()
{
  sub_10009DB74();
  WORD2(v3) = 2048;
  HIWORD(v3) = v0;
  sub_1000B95CC(&_mh_execute_header, v0, v1, "[loadAccountStoresFromDisk] Number of PSC loaded stores is not the same as our account store map entry count! {pscStoresCount: %ld, accountStoreMapCount: %ld}", v2, v3);
}

void sub_10076C890(void *a1)
{
  v1 = [a1 absoluteString];
  sub_10009DB74();
  sub_10009DB68();
  _os_log_debug_impl(v2, v3, OS_LOG_TYPE_DEBUG, v4, v5, 0xCu);
}

void sub_10076C920(void *a1, void *a2)
{
  v3 = [a1 absoluteString];
  [a2 count];
  sub_1000E2000();
  sub_10009DB68();
  _os_log_debug_impl(v4, v5, OS_LOG_TYPE_DEBUG, v6, v7, 0x16u);
}

void sub_10076CA3C(void *a1)
{
  v1 = [a1 absoluteString];
  sub_10009DB74();
  sub_10009DADC();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_10076CAE0(uint64_t a1, uint64_t a2)
{
  v4 = [sub_10009DB20(a1 a2)];
  *v3 = 138412290;
  *v2 = v4;
  sub_10009DC2C(&_mh_execute_header, v5, v6, "[loadAccountStoresFromDisk] Added store URL to pending batch {url: %@}");
}

void sub_10076CCB8(void *a1)
{
  [a1 isolated];
  sub_10009DB68();
  _os_log_fault_impl(v1, v2, OS_LOG_TYPE_FAULT, v3, v4, 8u);
}

void sub_10076CDA8(uint64_t a1, uint64_t a2)
{
  v5 = [sub_10009DB20(a1 a2)];
  *v4 = 138543362;
  *v3 = v5;
  _os_log_error_impl(&_mh_execute_header, v2, OS_LOG_TYPE_ERROR, "RDStoreControllerMigrator: [MIGRATE STORE] Store URL is nil {identifier: %{public}@}", v4, 0xCu);
}

void sub_10076CE8C()
{
  sub_1000E1FE0();
  v1 = [v0 identifier];
  sub_1000C965C();
  sub_1000E1FF0();
  sub_10009DADC();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x20u);
}

void sub_10076CF24()
{
  sub_1000E1FE0();
  v1 = [v0 identifier];
  sub_1000C965C();
  sub_1000E1FF0();
  sub_10009DADC();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x20u);
}

void sub_10076CFBC()
{
  sub_1000E1FE0();
  v1 = [v0 identifier];
  sub_1000C965C();
  sub_1000E1FF0();
  sub_10009DADC();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x20u);
}

void sub_10076D054()
{
  sub_1000C965C();
  v2 = 0;
  _os_log_error_impl(&_mh_execute_header, v0, OS_LOG_TYPE_ERROR, "[addValidatedStoresToAccountStoreMapWithStores] invalidStoreBackupURL is nil {storeURL: %@, backupURL: %@}", v1, 0x16u);
}

void sub_10076D134()
{
  sub_1000E1FE0();
  v1 = [v0 valueForKey:@"lastPathComponent"];
  sub_1000C965C();
  sub_10009DADC();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x20u);
}

void sub_10076D1E0()
{
  v1 = 138412546;
  v2 = 0;
  sub_1000E2000();
  _os_log_error_impl(&_mh_execute_header, v0, OS_LOG_TYPE_ERROR, "Cannot obtain a valid container directory path from storeURL {reminderDataContainerURL: %@, storeURL: %@}", &v1, 0x16u);
}

void sub_10076D2D8()
{
  v1 = 134218240;
  v2 = 15;
  sub_1000E2000();
  _os_log_fault_impl(&_mh_execute_header, v0, OS_LOG_TYPE_FAULT, "[createOrLoadAccountStores] Trying to load more stores than the maximum we allow. Bailing. {limit: %ld, loaded.count: %ld}", &v1, 0x16u);
}

void sub_10076D3D4(uint64_t a1, uint64_t a2, NSObject *a3)
{
  *v3 = 138543618;
  *&v3[4] = *(*a1 + 40);
  *&v3[12] = 2112;
  *&v3[14] = a2;
  sub_1000B95CC(&_mh_execute_header, a2, a3, "[markAccountStoreDeleted] Failed to obtain accountIdentifier from store {accountIdentifier: %{public}@, store: %@}", *v3, *&v3[8], *&v3[16]);
}

void sub_10076D454(void *a1, uint64_t a2, NSObject *a3)
{
  *v3 = 138412546;
  *&v3[4] = *a1;
  *&v3[12] = 2114;
  *&v3[14] = *(*(*a2 + 8) + 40);
  sub_1000B95CC(&_mh_execute_header, a2, a3, "[markAccountStoreDeleted] Failed to mark account store as deleted {store: %@, error: %{public}@}", *v3, *&v3[8], *&v3[16]);
}

void sub_10076D564(void *a1)
{
  v1 = [a1 ic_loggingDescription];
  sub_10009DB74();
  sub_10009DADC();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_10076D5F0(void *a1)
{
  v1 = [a1 ic_loggingDescription];
  sub_10009DB74();
  sub_10009DADC();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_10076D6E4(void *a1)
{
  v2 = [a1 className];
  v3 = [a1 recordID];
  v4 = [v3 recordName];
  sub_1000E2000();
  sub_10009DB68();
  _os_log_debug_impl(v5, v6, OS_LOG_TYPE_DEBUG, v7, v8, 0x16u);
}

void sub_10076D82C(uint64_t a1, uint64_t a2)
{
  v4 = [sub_10009DB20(a1 a2)];
  *v3 = 138412290;
  *v2 = v4;
  sub_10009DC2C(&_mh_execute_header, v5, v6, "Deleting object from database because it's marked for deletion and its deletion has synced: %@");
}

void sub_10076D8F0(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = *(a2 + 64);
  v4 = *(a2 + 72);
  v5 = 138412802;
  v6 = a1;
  v7 = 2112;
  v8 = v3;
  v9 = 2112;
  v10 = v4;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "PopulateDefaultValues ERROR {updateError: %@, entity: %@, attributeName: %@}", &v5, 0x20u);
}

void sub_10076D984(uint64_t a1, const char *a2)
{
  v2 = objc_msgSend_cloudkit(REMLog, a2);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
  {
    LODWORD(v9) = 136315138;
    *(&v9 + 4) = "ckIdentifier";
    sub_1000BF158(&_mh_execute_header, v3, v4, "rem_log_fault_if (!ckIdentifier) -- invalid nil value for '%s'", v5, v6, v7, v8, v9, DWORD2(v9));
  }
}

void sub_10076DA28(uint64_t a1, const char *a2)
{
  v2 = objc_msgSend_cloudkit(REMLog, a2);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
  {
    LODWORD(v9) = 136315138;
    *(&v9 + 4) = "accountIdentifier";
    sub_1000BF158(&_mh_execute_header, v3, v4, "rem_log_fault_if (!accountIdentifier) -- invalid nil value for '%s'", v5, v6, v7, v8, v9, DWORD2(v9));
  }
}

void sub_10076DACC()
{
  sub_10009DB74();
  v3 = 2114;
  v4 = v0;
  _os_log_fault_impl(&_mh_execute_header, v1, OS_LOG_TYPE_FAULT, "Cannot obtain permanent ID for %{public}@ with error: %{public}@", v2, 0x16u);
}

void sub_10076DC04()
{
  sub_10009DB74();
  v3 = 2114;
  v4 = v0;
  _os_log_error_impl(&_mh_execute_header, v1, OS_LOG_TYPE_ERROR, "ICBatchFetchHelper: existingObjectWithID %{public}@ with error %{public}@", v2, 0x16u);
}

void sub_10076DD60(uint8_t *a1, void *a2, void *a3, NSObject *a4)
{
  v7 = [a2 identifier];
  *a1 = 138543362;
  *a3 = v7;
  _os_log_error_impl(&_mh_execute_header, a4, OS_LOG_TYPE_ERROR, "REMCDObjectTreeProcessor: \tCYCLIC REFERENCE in object tree detected! Tail node has already been flushed before {tailNode: %{public}@}", a1, 0xCu);
}

void sub_10076DDD8(void *a1, NSObject *a2)
{
  v3 = 134217984;
  v4 = [a1 count];
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "REMCDObjectTreeProcessor: \tFLUSHING {count: %ld}", &v3, 0xCu);
}

void sub_10076DE64(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = 138543618;
  v4 = a1;
  v5 = 2114;
  v6 = a2;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Error saving context (%{public}@): %{public}@", &v3, 0x16u);
}

void sub_10076DEEC(uint64_t a1, NSObject *a2)
{
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Error saving context: %{public}@", &v2, 0xCu);
}

void sub_10076DF64(uint64_t a1, NSObject *a2)
{
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "CKParentReminderIdentifierMigration ERROR {updateError: %{public}@}", &v2, 0xCu);
}

void sub_10076DFDC(void *a1, uint64_t a2, NSObject *a3)
{
  *a2 = 138412290;
  *(a2 + 4) = a1;
  sub_1000E84C4(&_mh_execute_header, a3, a3, "PersonIDSaltGenerator failed to generate random salt with exception: %@.", a2);
}

void sub_10076E138(void *a1, void *a2)
{
  [a1 count];
  v7 = [a2 identifier];
  sub_10009DB68();
  _os_log_fault_impl(v3, v4, OS_LOG_TYPE_FAULT, v5, v6, 0x16u);
}

void sub_10076E2C0(uint64_t a1, const char *a2)
{
  v2 = objc_msgSend_cloudkit(REMLog, a2);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
  {
    sub_10009DB68();
    _os_log_fault_impl(v3, v4, OS_LOG_TYPE_FAULT, v5, v6, 2u);
  }
}

void sub_10076E330(void *a1)
{
  v2 = [a1 identifier];
  v3 = [v2 UUIDString];
  v8 = [a1 personIDSalt];
  sub_10009DB68();
  _os_log_debug_impl(v4, v5, OS_LOG_TYPE_DEBUG, v6, v7, 0x16u);
}

void sub_10076E400(void *a1)
{
  v1 = [a1 remObjectID];
  sub_10009DB74();
  sub_10009DB68();
  _os_log_error_impl(v2, v3, OS_LOG_TYPE_ERROR, v4, v5, 0x16u);
}

void sub_10076E4A8(void *a1)
{
  v1 = [a1 remObjectID];
  sub_10009DB74();
  sub_10009DB68();
  sub_1000E84C4(v2, v3, v4, v5, v6);
}

void sub_10076E530(uint8_t *a1, void *a2, void *a3, NSObject *a4)
{
  v7 = [a2 ic_loggingDescription];
  *a1 = 138543362;
  *a3 = v7;
  _os_log_error_impl(&_mh_execute_header, a4, OS_LOG_TYPE_ERROR, "Found cloudKit account without ckIdentifier: %{public}@", a1, 0xCu);
}

Swift::String __swiftcall NSLocalizedString(_:tableName:bundle:value:comment:)(Swift::String _, Swift::String_optional tableName, NSBundle bundle, Swift::String value, Swift::String comment)
{
  v5 = NSLocalizedString(_:tableName:bundle:value:comment:)(_._countAndFlagsBits, _._object, tableName.value._countAndFlagsBits, tableName.value._object, bundle.super.isa, value._countAndFlagsBits, value._object, comment._countAndFlagsBits);
  result._object = v6;
  result._countAndFlagsBits = v5;
  return result;
}

Swift::String __swiftcall URL.path(percentEncoded:)(Swift::Bool percentEncoded)
{
  v1 = URL.path(percentEncoded:)(percentEncoded);
  result._object = v2;
  result._countAndFlagsBits = v1;
  return result;
}

Swift::String __swiftcall Locale.Components.rem_languageAndScriptWithRegion()()
{
  v0 = Locale.Components.rem_languageAndScriptWithRegion()();
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

Swift::tuple_inserted_Bool_memberAfterInsert_Int __swiftcall IndexSet.insert(_:)(Swift::Int a1)
{
  v1 = IndexSet.insert(_:)(a1);
  result.memberAfterInsert = v2;
  result.inserted = v1;
  return result;
}

uint64_t TokenGenerator.init(model:configuration:useCaseIdentifier:onBehalfOf:parentOfOnBehalfOf:)()
{
  return TokenGenerator.init(model:configuration:useCaseIdentifier:onBehalfOf:parentOfOnBehalfOf:)();
}

{
  return TokenGenerator.init(model:configuration:useCaseIdentifier:onBehalfOf:parentOfOnBehalfOf:)();
}

uint64_t type metadata accessor for Prompt()
{
  return type metadata accessor for Prompt();
}

{
  return type metadata accessor for Prompt();
}

uint64_t throwingCast<A>(_:as:failureMessage:)()
{
  return throwingCast<A>(_:as:failureMessage:)();
}

{
  return throwingCast<A>(_:as:failureMessage:)();
}

uint64_t PartialOverride.subscript.getter()
{
  return PartialOverride.subscript.getter();
}

{
  return PartialOverride.subscript.getter();
}

{
  return PartialOverride.subscript.getter();
}

uint64_t dispatch thunk of Decoder.decodeSingularStringField(value:)()
{
  return dispatch thunk of Decoder.decodeSingularStringField(value:)();
}

{
  return dispatch thunk of Decoder.decodeSingularStringField(value:)();
}

uint64_t + infix(_:_:)()
{
  return + infix(_:_:)();
}

{
  return + infix(_:_:)();
}

{
  return + infix(_:_:)();
}

Swift::String __swiftcall String.lowercased()()
{
  v0 = String.lowercased()();
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

Swift::String __swiftcall String.uppercased()()
{
  v0 = String.uppercased()();
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

uint64_t String.base64EncodedHMACString(using:)()
{
  return String.base64EncodedHMACString(using:)();
}

{
  return String.base64EncodedHMACString(using:)();
}

uint64_t String.subscript.getter()
{
  return String.subscript.getter();
}

{
  return String.subscript.getter();
}

Swift::OpaquePointer_optional __swiftcall NLEmbedding.vector(for:)(Swift::String a1)
{
  v1 = NLEmbedding.vector(for:)(a1._countAndFlagsBits, a1._object);
  result.value._rawValue = v1;
  result.is_nil = v2;
  return result;
}

CNContact_optional __swiftcall CNContactStore.contactFrom(emailAddresses:phoneNumbers:keysToFetch:)(Swift::OpaquePointer emailAddresses, Swift::OpaquePointer phoneNumbers, Swift::OpaquePointer keysToFetch)
{
  v3 = CNContactStore.contactFrom(emailAddresses:phoneNumbers:keysToFetch:)(emailAddresses._rawValue, phoneNumbers._rawValue, keysToFetch._rawValue);
  result.value.super.isa = v3;
  result.is_nil = v4;
  return result;
}

__C::REMSmartListType_optional __swiftcall REMSmartListType.init(stringValue:)(Swift::String stringValue)
{
  v1 = REMSmartListType.init(stringValue:)(stringValue._countAndFlagsBits, stringValue._object);
  result.value._rawValue = v1;
  result.is_nil = v2;
  return result;
}

uint64_t static OS_dispatch_queue.SchedulerTimeType.Stride.seconds(_:)()
{
  return static OS_dispatch_queue.SchedulerTimeType.Stride.seconds(_:)();
}

{
  return static OS_dispatch_queue.SchedulerTimeType.Stride.seconds(_:)();
}

uint64_t NSManagedObjectContext.rem_performAndWait<A>(_:)()
{
  return NSManagedObjectContext.rem_performAndWait<A>(_:)();
}

{
  return NSManagedObjectContext.rem_performAndWait<A>(_:)();
}

uint64_t CKRecordKeyValueSetting.subscript.getter()
{
  return CKRecordKeyValueSetting.subscript.getter();
}

{
  return CKRecordKeyValueSetting.subscript.getter();
}

uint64_t REMOrderedIdentifierMap.reorder<A>(objects:)()
{
  return REMOrderedIdentifierMap.reorder<A>(objects:)();
}

{
  return REMOrderedIdentifierMap.reorder<A>(objects:)();
}

Swift::String __swiftcall REMReminderNextThirdsHour.stringForSnoozingUntil()()
{
  Thirds = REMReminderNextThirdsHour.stringForSnoozingUntil()();
  result._object = v1;
  result._countAndFlagsBits = Thirds;
  return result;
}

Swift::String __swiftcall REMReminderNextThirdsHour.systemImageStringForSnoozingUntil()()
{
  Thirds = REMReminderNextThirdsHour.systemImageStringForSnoozingUntil()();
  result._object = v1;
  result._countAndFlagsBits = Thirds;
  return result;
}

uint64_t Substring.subscript.getter()
{
  return Substring.subscript.getter();
}

{
  return Substring.subscript.getter();
}

uint64_t __CocoaDictionary.lookup(_:)()
{
  return __CocoaDictionary.lookup(_:)();
}

{
  return __CocoaDictionary.lookup(_:)();
}

uint64_t KeyedDecodingContainer.decodeIfPresent(_:forKey:)()
{
  return KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
}

{
  return KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
}

{
  return KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
}

{
  return KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
}

uint64_t KeyedDecodingContainer.decode(_:forKey:)()
{
  return KeyedDecodingContainer.decode(_:forKey:)();
}

{
  return KeyedDecodingContainer.decode(_:forKey:)();
}

{
  return KeyedDecodingContainer.decode(_:forKey:)();
}

{
  return KeyedDecodingContainer.decode(_:forKey:)();
}

{
  return KeyedDecodingContainer.decode(_:forKey:)();
}

{
  return KeyedDecodingContainer.decode(_:forKey:)();
}

uint64_t KeyedEncodingContainer.encodeIfPresent(_:forKey:)()
{
  return KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
}

{
  return KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
}

{
  return KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
}

{
  return KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
}

uint64_t KeyedEncodingContainer.encode(_:forKey:)()
{
  return KeyedEncodingContainer.encode(_:forKey:)();
}

{
  return KeyedEncodingContainer.encode(_:forKey:)();
}

{
  return KeyedEncodingContainer.encode(_:forKey:)();
}

{
  return KeyedEncodingContainer.encode(_:forKey:)();
}

{
  return KeyedEncodingContainer.encode(_:forKey:)();
}

uint64_t DefaultStringInterpolation.appendInterpolation<A>(_:)()
{
  return DefaultStringInterpolation.appendInterpolation<A>(_:)();
}

{
  return DefaultStringInterpolation.appendInterpolation<A>(_:)();
}

CLLocationCoordinate2D CLLocationCoordinate2DMake(CLLocationDegrees latitude, CLLocationDegrees longitude)
{
  v4 = _CLLocationCoordinate2DMake(latitude, longitude);
  v3 = v4.longitude;
  v2 = v4.latitude;
  result.longitude = v3;
  result.latitude = v2;
  return result;
}