Class sub_10014BDDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  if (a8)
  {
    if (a5 == 1 && a6 == 1)
    {

      v13 = _REMGetLocalizedString();
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v15 = v14;

      v16 = _REMGetLocalizedString();
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v119 = v17;

      sub_1000F5104(&qword_100939EB0, &qword_1007989A0);
      v18 = swift_allocObject();
      *(v18 + 16) = xmmword_100791300;
      *(v18 + 56) = &type metadata for String;
      v19 = sub_100006600();
      *(v18 + 64) = v19;
      *(v18 + 32) = a7;
      *(v18 + 40) = a8;
      isa = static String.localizedStringWithFormat(_:_:)();
      v15, v21, v22, v23, v24, v25, v26, v27;
      v18, v28, v29, v30, v31, v32, v33, v34;
      v35 = swift_allocObject();
      *(v35 + 16) = xmmword_100791340;
      *(v35 + 56) = &type metadata for String;
      *(v35 + 64) = v19;
      *(v35 + 32) = a3;
      *(v35 + 40) = a4;
      *(v35 + 96) = &type metadata for String;
      *(v35 + 104) = v19;
      v36 = v119;
      *(v35 + 72) = a1;
      *(v35 + 80) = a2;

LABEL_15:
      static String.localizedStringWithFormat(_:_:)();
      v35, v87, v88, v89, v90, v91, v92, v93;
      v36, v94, v95, v96, v97, v98, v99, v100;
      return isa;
    }

    if (a5 >= 2 && a6 == 1)
    {

      v41 = _REMGetLocalizedString();
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v43 = v42;

      v44 = _REMGetLocalizedString();
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v36 = v45;

      sub_1000F5104(&qword_100939EB0, &qword_1007989A0);
      v46 = swift_allocObject();
      *(v46 + 16) = xmmword_100791340;
      *(v46 + 56) = &type metadata for String;
      v47 = sub_100006600();
      *(v46 + 32) = a7;
      *(v46 + 40) = a8;
      *(v46 + 96) = &type metadata for Int;
      *(v46 + 104) = &protocol witness table for Int;
      *(v46 + 64) = v47;
      *(v46 + 72) = a5;
      v48 = static String.localizedStringWithFormat(_:_:)();
      v43, v49, v50, v51, v52, v53, v54, v55;
      v56 = v46;
      isa = v48;
      v56, v57, v58, v59, v60, v61, v62, v63;
      v35 = swift_allocObject();
      *(v35 + 16) = xmmword_100791300;
      *(v35 + 56) = &type metadata for String;
      *(v35 + 64) = v47;
      *(v35 + 32) = a1;
      *(v35 + 40) = a2;

      goto LABEL_15;
    }

    if (a5 >= 2 && a6 >= 2)
    {
      goto LABEL_14;
    }
  }

  else
  {
    if (a5 >= 2 && a6 >= 2)
    {
      goto LABEL_14;
    }

    if (a5 == 1)
    {
      v37 = _REMGetLocalizedString();
      isa = static String._unconditionallyBridgeFromObjectiveC(_:)();

      v38 = _REMGetLocalizedString();
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v36 = v39;

      sub_1000F5104(&qword_100939EB0, &qword_1007989A0);
      v35 = swift_allocObject();
      *(v35 + 16) = xmmword_100791340;
      *(v35 + 56) = &type metadata for String;
      v40 = sub_100006600();
      *(v35 + 32) = a3;
      *(v35 + 40) = a4;
      *(v35 + 96) = &type metadata for String;
      *(v35 + 104) = v40;
      *(v35 + 64) = v40;
      *(v35 + 72) = a1;
      *(v35 + 80) = a2;

      goto LABEL_15;
    }

    if (a5 >= 2)
    {
LABEL_14:
      v64 = _REMGetLocalizedString();
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v66 = v65;

      v67 = _REMGetLocalizedString();
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v69 = v68;

      sub_1000F5104(&qword_100939EB0, &qword_1007989A0);
      v70 = swift_allocObject();
      *(v70 + 16) = xmmword_100791300;
      *(v70 + 56) = &type metadata for Int;
      *(v70 + 64) = &protocol witness table for Int;
      *(v70 + 32) = a5;
      v36 = v69;
      v71 = static String.localizedStringWithFormat(_:_:)();
      v66, v72, v73, v74, v75, v76, v77, v78;
      v79 = v70;
      isa = v71;
      v79, v80, v81, v82, v83, v84, v85, v86;
      v35 = swift_allocObject();
      *(v35 + 16) = xmmword_100791300;
      *(v35 + 56) = &type metadata for String;
      *(v35 + 64) = sub_100006600();
      *(v35 + 32) = a1;
      *(v35 + 40) = a2;

      goto LABEL_15;
    }
  }

  v102 = a5 | a6;
  v103 = REMErrorDomain;
  sub_1000F5104(&qword_100936EB0, &unk_1007954A0);
  v104 = v102 == 0;
  if (v102)
  {
    v105 = "Posted Assignment Notification";
  }

  else
  {
    v105 = " assignments and orignators.";
  }

  if (v104)
  {
    v106 = 0xD000000000000035;
  }

  else
  {
    v106 = 0xD00000000000003CLL;
  }

  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100791300;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 72) = &type metadata for String;
  *(inited + 40) = v108;
  *(inited + 48) = v106;
  *(inited + 56) = v105 | 0x8000000000000000;
  v109 = v103;
  v110 = sub_1001F67C8(inited);
  swift_setDeallocating();
  sub_1000050A4(inited + 32, &unk_100939260, &unk_100797220);
  v111 = objc_allocWithZone(NSError);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  v110, v112, v113, v114, v115, v116, v117, v118;
  [v111 initWithDomain:v109 code:-1 userInfo:isa];

  swift_willThrow();
  return isa;
}

void sub_10014C4B8(void *a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v7 = a2;
  v8 = a3;
  v66 = [v8 list];
  v9 = [v8 titleAsString];
  if (v9)
  {
    v10 = v9;
    v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = v12;
  }

  else
  {
    v11 = 0;
    v13 = 0xE000000000000000;
  }

  v14 = sub_10014B888(v7, v8);
  v16 = v15;
  v17 = [v66 groceryContext];
  v65 = v7;
  if (v17)
  {
    v18 = v17;
    v19 = [v17 shouldCategorizeGroceryItems];
  }

  else
  {
    v19 = 0;
  }

  v20 = [v66 name];
  v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v23 = v22;

  sub_10014BDDC(v21, v23, v11, v13, a4, a5, v14, v16, v19);
  v25 = v24;
  v27 = v26;
  v23, v24, v28, v26, v29, v30, v31, v32;
  v13, v33, v34, v35, v36, v37, v38, v39;
  v16, v40, v41, v42, v43, v44, v45, v46;
  v47 = String._bridgeToObjectiveC()();
  v25, v48, v49, v50, v51, v52, v53, v54;
  [a1 setTitle:v47];

  v55 = String._bridgeToObjectiveC()();
  v27, v56, v57, v58, v59, v60, v61, v62;
  [a1 setBody:v55];
}

uint64_t sub_10014C898(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t a5)
{
  v6 = v5;
  v206 = a5;
  v207 = a4;
  v203 = a3;
  v208 = a1;
  v8 = type metadata accessor for RDUserNotificationAction();
  v204 = *(v8 - 1);
  v205 = v8;
  __chkstk_darwin(v8, v9);
  v202 = &v200 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11, v12);
  v14 = &v200 - v13;
  v15 = type metadata accessor for RDUserNotificationType();
  v16 = *(v15 - 1);
  __chkstk_darwin(v15, v17);
  v19 = &v200 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20, v21);
  v23 = &v200 - v22;
  v26 = __chkstk_darwin(v24, v25);
  v28 = &v200 - v27;
  v29 = (v16 + 16);
  v30 = *(v16 + 16);
  (v30)(&v200 - v27, a2, v15, v26);
  v31 = (*(v16 + 88))(v28, v15);
  if (v31 == enum case for RDUserNotificationType.reminderAlarm(_:) || v31 == enum case for RDUserNotificationType.todayNotificationForSingleReminder(_:) || v31 == enum case for RDUserNotificationType.caldavSharedList(_:))
  {
    goto LABEL_9;
  }

  if (v31 != enum case for RDUserNotificationType.assignmentNotification(_:))
  {
    if (v31 != enum case for RDUserNotificationType.sharedListAddedReminderNotification(_:) && v31 != enum case for RDUserNotificationType.dueDateDeltaAlarm(_:))
    {
      if (v31 != enum case for RDUserNotificationType.todayNotification(_:) && v31 != enum case for RDUserNotificationType.todayNotificationBadge(_:) && v31 != enum case for RDUserNotificationType.beforeFirstUnlock(_:))
      {
        v88 = _diagnoseUnexpectedEnumCase<A>(type:)();
        __break(1u);
        goto LABEL_46;
      }

      goto LABEL_10;
    }

LABEL_9:
    (*(v16 + 8))(v28, v15);
LABEL_10:
    if (qword_100935AC0 != -1)
    {
      swift_once();
    }

    v34 = type metadata accessor for Logger();
    sub_100006654(v34, qword_100938E90);
    (v30)(v23, a2, v15);
    v35 = v208;
    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v205 = swift_slowAlloc();
      v208 = swift_slowAlloc();
      aBlock[0] = v208;
      *v38 = 136315394;
      (v30)(v19, v23, v15);
      v39 = String.init<A>(describing:)();
      v41 = v40;
      (*(v16 + 8))(v23, v15);
      v42 = sub_10000668C(v39, v41, aBlock);
      v41, v43, v44, v45, v46, v47, v48, v49;
      *(v38 + 4) = v42;
      *(v38 + 12) = 2112;
      *(v38 + 14) = v35;
      v50 = v205;
      *v205 = v35;
      v51 = v35;
      _os_log_impl(&_mh_execute_header, v36, v37, "RDAssignmentNotificationEngine doesn't expect to receive actions of this type. {type: %s, response: %@}", v38, 0x16u);
      sub_1000050A4(v50, &unk_100938E70, &unk_100797230);

      sub_10000607C(v208);
    }

    else
    {

      (*(v16 + 8))(v23, v15);
    }

    goto LABEL_29;
  }

  v201 = v6;
  (*(v16 + 96))(v28, v15);
  v30 = *v28;
  if (qword_100935AC0 != -1)
  {
    goto LABEL_67;
  }

  while (1)
  {
    v52 = type metadata accessor for Logger();
    sub_100006654(v52, qword_100938E90);
    v53 = v208;

    v54 = Logger.logObject.getter();
    v55 = static os_log_type_t.default.getter();
    v30, v56, v57, v58, v59, v60, v61, v62;

    v63 = os_log_type_enabled(v54, v55);
    v29 = v205;
    v208 = v53;
    if (v63)
    {
      v64 = swift_slowAlloc();
      aBlock[0] = swift_slowAlloc();
      *v64 = 136315394;
      v65 = [v53 actionIdentifier];
      v66 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v68 = v67;

      v69 = sub_10000668C(v66, v68, aBlock);
      v68, v70, v71, v72, v73, v74, v75, v76;
      *(v64 + 4) = v69;
      *(v64 + 12) = 2080;
      sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
      v77 = Array.description.getter();
      v79 = v78;
      v80 = sub_10000668C(v77, v78, aBlock);
      v79, v81, v82, v83, v84, v85, v86, v87;
      *(v64 + 14) = v80;
      _os_log_impl(&_mh_execute_header, v54, v55, "RDAssignmentNotificationEngine: Processing assignment notification response {actionIdentifier:%s, reminderIDs: %s}", v64, 0x16u);
      swift_arrayDestroy();
      v29 = v205;
    }

    v6 = v203;
    v23 = v204;
    v15 = *(v204 + 2);
    (v15)(v14, v203, v29);
    v88 = (*(v23 + 11))(v14, v29);
    v96 = v201;
    if (v88 == enum case for RDUserNotificationAction.defaultDismiss(_:) || v88 == enum case for RDUserNotificationAction.debugDismiss(_:) || v88 == enum case for RDUserNotificationAction.markAsCompleted(_:) || v88 == enum case for RDUserNotificationAction.snoozeForOneHour(_:) || v88 == enum case for RDUserNotificationAction.snoozeForOneDay(_:) || v88 == enum case for RDUserNotificationAction.snoozeToNextThirds(_:) || v88 == enum case for RDUserNotificationAction.snoozeToNextWeekend(_:) || v88 == enum case for RDUserNotificationAction.addToReminders(_:))
    {
      break;
    }

    if (v88 == enum case for RDUserNotificationAction.viewAssignmentInList(_:))
    {
      v30, v89, v90, v91, v92, v93, v94, v95;
      goto LABEL_29;
    }

LABEL_46:
    if (v88 != enum case for RDUserNotificationAction.declineAssignment(_:))
    {
      if (v88 != enum case for RDUserNotificationAction.viewRemindersInList(_:))
      {
        result = _diagnoseUnexpectedEnumCase<A>(type:)();
        __break(1u);
        return result;
      }

      break;
    }

    v105 = [objc_allocWithZone(REMStore) initWithDaemonController:*(v96 + 104)];
    sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
    isa = Array._bridgeToObjectiveC()().super.isa;
    aBlock[0] = 0;
    v107 = [v105 fetchRemindersWithObjectIDs:isa error:aBlock];

    v108 = aBlock[0];
    if (!v107)
    {
      v148 = aBlock[0];
      _convertNSErrorToError(_:)();

      swift_willThrow();

      swift_errorRetain();
      v149 = Logger.logObject.getter();
      v150 = static os_log_type_t.error.getter();
      v30, v151, v152, v153, v154, v155, v156, v157;

      if (os_log_type_enabled(v149, v150))
      {
        v165 = swift_slowAlloc();
        aBlock[0] = swift_slowAlloc();
        *v165 = 136315394;
        v166 = Array.description.getter();
        v168 = v167;
        v30, v167, v169, v170, v171, v172, v173, v174;
        v175 = sub_10000668C(v166, v168, aBlock);
        v168, v176, v177, v178, v179, v180, v181, v182;
        *(v165 + 4) = v175;
        *(v165 + 12) = 2080;
        swift_getErrorValue();
        v183 = Error.localizedDescription.getter();
        v185 = v184;
        v186 = sub_10000668C(v183, v184, aBlock);
        v185, v187, v188, v189, v190, v191, v192, v193;
        *(v165 + 14) = v186;
        _os_log_impl(&_mh_execute_header, v149, v150, "RDAssignmentNotificationEngine: Error trying to retrieve reminder {reminderIDs: %s, error: %s}", v165, 0x16u);
        swift_arrayDestroy();
      }

      else
      {
        v30, v158, v159, v160, v161, v162, v163, v164;
      }

      goto LABEL_29;
    }

    sub_1000060C8(0, &unk_100942FB0, REMReminder_ptr);
    sub_10000CDE4(&qword_1009391F0, &qword_1009391E0, REMObjectID_ptr, &protocol conformance descriptor for NSObject);
    v109 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
    v110 = v108;

    v111 = [objc_allocWithZone(REMSaveRequest) initWithStore:v105];
    sub_10014B21C(v109, v111);
    v113 = v112;
    v109, v114, v115, v116, v117, v118, v119, v120;
    v200 = v30;
    v204 = v111;
    v205 = v105;
    if (v113 >> 62)
    {
      v14 = _CocoaArrayWrapper.endIndex.getter();
      if (!v14)
      {
LABEL_69:
        v113, v121, v122, v123, v124, v125, v126, v127;
        v194 = *(v201 + 72);
        v195 = swift_allocObject();
        v196 = v208;
        v195[2] = v200;
        v195[3] = v196;
        aBlock[4] = sub_10014D6BC;
        aBlock[5] = v195;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_100042968;
        aBlock[3] = &unk_1008E6178;
        v197 = _Block_copy(aBlock);
        v198 = v196;

        v199 = v204;
        [v204 saveWithQueue:v194 completion:v197];
        _Block_release(v197);

        goto LABEL_29;
      }
    }

    else
    {
      v14 = *((v113 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v14)
      {
        goto LABEL_69;
      }
    }

    v128 = 0;
    while (1)
    {
      if ((v113 & 0xC000000000000001) != 0)
      {
        v129 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v128 >= *((v113 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_66;
        }

        v129 = *&v113->clientIdentity[8 * v128 + 16];
      }

      v130 = v129;
      v30 = (v128 + 1);
      if (__OFADD__(v128, 1))
      {
        break;
      }

      v131 = [v129 assignmentContext];
      [v131 removeAllAssignments];

      ++v128;
      if (v30 == v14)
      {
        goto LABEL_69;
      }
    }

    __break(1u);
LABEL_66:
    __break(1u);
LABEL_67:
    swift_once();
  }

  v30, v89, v90, v91, v92, v93, v94, v95;
  v132 = v202;
  (v15)(v202, v6, v29);
  v133 = Logger.logObject.getter();
  v134 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v133, v134))
  {
    v135 = swift_slowAlloc();
    v136 = swift_slowAlloc();
    aBlock[0] = v136;
    *v135 = 136315138;
    v137 = RDUserNotificationAction.rawValue.getter();
    v139 = v138;
    (*(v23 + 1))(v132, v29);
    v140 = sub_10000668C(v137, v139, aBlock);
    v139, v141, v142, v143, v144, v145, v146, v147;
    *(v135 + 4) = v140;
    _os_log_impl(&_mh_execute_header, v133, v134, "RDAssignmentNotificationEngine: Unexpected action %s for notification type .assignmentNotification", v135, 0xCu);
    sub_10000607C(v136);
  }

  else
  {

    (*(v23 + 1))(v132, v29);
  }

LABEL_29:
  if (qword_100935AC0 != -1)
  {
    swift_once();
  }

  v97 = type metadata accessor for Logger();
  sub_100006654(v97, qword_100938E90);
  v98 = Logger.logObject.getter();
  v99 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v98, v99))
  {
    v100 = swift_slowAlloc();
    *v100 = 0;
    _os_log_impl(&_mh_execute_header, v98, v99, "RDAssignmentNotificationEngine: Completing action handler by calling completionHandler now.", v100, 2u);
  }

  return v207();
}

uint64_t sub_10014D6C4()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    return v1(1);
  }

  return result;
}

uint64_t sub_10014D704()
{
  v1 = *(v0 + 24);
  if (v1)
  {
    return v1(1);
  }

  return result;
}

uint64_t sub_10014D740(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000F5104(&qword_100942CA0, &qword_1007A3810);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_10014D7CC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000F5104(&qword_100942CA0, &qword_1007A3810);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10014D83C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10014D8C4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_10014D938(uint64_t a1, _TtC7remindd19RDXPCStorePerformer *a2, uint64_t a3, void *a4)
{

  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  a2, v9, v10, v11, v12, v13, v14, v15;
  if (os_log_type_enabled(v7, v8))
  {
    v16 = a4;
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v31 = v18;
    *v17 = 136315138;
    *(v17 + 4) = sub_10000668C(a1, a2, &v31);
    _os_log_impl(&_mh_execute_header, v7, v8, "os_transaction INIT {name: %s}", v17, 0xCu);
    sub_10000607C(v18);

    a4 = v16;
  }

  String.utf8CString.getter();
  v19 = os_transaction_create();

  sub_100431DE0(v19, a4);
  swift_unknownObjectRelease();

  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.default.getter();
  a2, v22, v23, v24, v25, v26, v27, v28;
  if (os_log_type_enabled(v20, v21))
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v31 = v30;
    *v29 = 136315138;
    *(v29 + 4) = sub_10000668C(a1, a2, &v31);
    _os_log_impl(&_mh_execute_header, v20, v21, "os_transaction RELEASE {name: %s}", v29, 0xCu);
    sub_10000607C(v30);
  }
}

uint64_t sub_10014DB78()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_100939348);
  v1 = sub_100006654(v0, qword_100939348);
  if (qword_100936450 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_100975038);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_10014DC40(uint64_t a1, double a2)
{
  v5 = sub_1000F5104(&qword_100939638, &qword_100795F00);
  __chkstk_darwin(v5 - 8, v6);
  v8 = &v19 - v7;
  v9 = sub_1000F5104(&unk_1009472D0, &unk_1007AA0F0);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9, v11);
  v13 = &v19 - v12;
  v14 = OBJC_IVAR____TtCC7remindd12RDDebouncing10LoadFactor_lastFire;
  v15 = type metadata accessor for DispatchTime();
  v16 = *(*(v15 - 8) + 56);
  v16(v2 + v14, 1, 1, v15);
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  *(v2 + 32) = 0;
  *(v2 + 40) = 0;
  DoubleStacksQueue.init()();
  (*(v10 + 32))(v2 + OBJC_IVAR____TtCC7remindd12RDDebouncing10LoadFactor_measurements, v13, v9);
  v16(v8, 1, 1, v15);
  v17 = OBJC_IVAR____TtCC7remindd12RDDebouncing10LoadFactor_lastFire;
  swift_beginAccess();
  sub_10014F54C(v8, v2 + v17);
  swift_endAccess();
  return v2;
}

uint64_t sub_10014DE3C()
{
  v1 = OBJC_IVAR____TtCC7remindd12RDDebouncing10LoadFactor_measurements;
  v2 = sub_1000F5104(&unk_1009472D0, &unk_1007AA0F0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_1000050A4(v0 + OBJC_IVAR____TtCC7remindd12RDDebouncing10LoadFactor_lastFire, &qword_100939638, &qword_100795F00);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for RDDebouncing.LoadFactor(uint64_t a1)
{
  result = qword_1009393B0;
  if (!qword_1009393B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10014DFD4(uint64_t a1)
{
  sub_10014E0B4();
  if (v1 <= 0x3F)
  {
    sub_10014E104(319);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_10014E0B4()
{
  if (!qword_1009393C0)
  {
    v0 = type metadata accessor for DoubleStacksQueue();
    if (!v1)
    {
      atomic_store(v0, &qword_1009393C0);
    }
  }
}

void sub_10014E104(uint64_t a1)
{
  if (!qword_1009393C8)
  {
    type metadata accessor for DispatchTime();
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_1009393C8);
    }
  }
}

void sub_10014E23C()
{

  sub_10014F334(*(v0 + qword_1009394E0), *(v0 + qword_1009394E0 + 8), *(v0 + qword_1009394E0 + 16), *(v0 + qword_1009394E0 + 24), *(v0 + qword_1009394E0 + 32));

  *(v0 + qword_1009394F0 + 8), v1, v2, v3, v4, v5, v6, v7;

  *(v0 + qword_100939508), v8, v9, v10, v11, v12, v13, v14;
  v22 = *(v0 + qword_100939510);

  v22, v15, v16, v17, v18, v19, v20, v21;
}

void sub_10014E2F0(uint64_t a1)
{

  sub_10014F334(*(a1 + qword_1009394E0), *(a1 + qword_1009394E0 + 8), *(a1 + qword_1009394E0 + 16), *(a1 + qword_1009394E0 + 24), *(a1 + qword_1009394E0 + 32));

  *(a1 + qword_1009394F0 + 8), v2, v3, v4, v5, v6, v7, v8;

  *(a1 + qword_100939508), v9, v10, v11, v12, v13, v14, v15;
  v23 = *(a1 + qword_100939510);

  v23, v16, v17, v18, v19, v20, v21, v22;
}

void sub_10014E558(uint64_t a1, uint64_t a2)
{
  sub_10014F63C();
  sub_10014F688(&qword_100944230, 255, sub_10014F63C);
  isa = Set._bridgeToObjectiveC()().super.isa;
  (*(a2 + 16))(a2, isa);
}

void sub_10014E704(char a1, uint64_t a2, uint64_t a3)
{
  sub_10014F63C();
  sub_10014F688(&qword_100944230, 255, sub_10014F63C);
  isa = Set._bridgeToObjectiveC()().super.isa;
  (*(a3 + 16))(a3, a1 & 1, isa);
}

uint64_t sub_10014E960(uint64_t a1)
{
  sub_10014F5CC(a1, v6);
  if (!v7)
  {
    sub_1000050A4(v6, &qword_100939ED0, &qword_100791B10);
    goto LABEL_11;
  }

  type metadata accessor for RDDebounceableCKDatabaseNotification();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_11:
    v3 = 0;
    return v3 & 1;
  }

  if (*(v1 + OBJC_IVAR____TtC7remindd36RDDebounceableCKDatabaseNotification_databaseScope) != *&v5[OBJC_IVAR____TtC7remindd36RDDebounceableCKDatabaseNotification_databaseScope])
  {

    goto LABEL_11;
  }

  if (*(v1 + OBJC_IVAR____TtC7remindd36RDDebounceableCKDatabaseNotification_subscriptionOwnerUserRecordName) == *&v5[OBJC_IVAR____TtC7remindd36RDDebounceableCKDatabaseNotification_subscriptionOwnerUserRecordName] && *(v1 + OBJC_IVAR____TtC7remindd36RDDebounceableCKDatabaseNotification_subscriptionOwnerUserRecordName + 8) == *&v5[OBJC_IVAR____TtC7remindd36RDDebounceableCKDatabaseNotification_subscriptionOwnerUserRecordName + 8])
  {

    v3 = 1;
  }

  else
  {
    v3 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v3 & 1;
}

uint64_t sub_10014EBB8()
{
  v1 = v0;
  _StringGuts.grow(_:)(55);
  v2._object = 0x80000001007ECDC0;
  v2._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v2);
  v3 = CKDatabaseScopeString();
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;

  v7._countAndFlagsBits = v4;
  v7._object = v6;
  String.append(_:)(v7);
  v6, v8, v9, v10, v11, v12, v13, v14;
  v15._countAndFlagsBits = 0xD000000000000023;
  v15._object = 0x80000001007ECDE0;
  String.append(_:)(v15);
  v16 = v1 + OBJC_IVAR____TtC7remindd36RDDebounceableCKDatabaseNotification_subscriptionOwnerUserRecordName;
  v17 = *(v1 + OBJC_IVAR____TtC7remindd36RDDebounceableCKDatabaseNotification_subscriptionOwnerUserRecordName);
  v18 = *(v16 + 8);

  v19._countAndFlagsBits = v17;
  v19._object = v18;
  String.append(_:)(v19);
  v18, v20, v21, v22, v23, v24, v25, v26;
  return 0;
}

uint64_t sub_10014EDF4(void *a1, double a2)
{
  v5 = type metadata accessor for DispatchPredicate();
  v6 = *(v5 - 8);
  v8 = __chkstk_darwin(v5, v7);
  v10 = (&v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = *(v2 + *a1);
  v12 = *(v11 + qword_1009394D0);
  *v10 = v12;
  (*(v6 + 104))(v10, enum case for DispatchPredicate.onQueue(_:), v5, v8);
  v13 = v12;
  LOBYTE(v12) = _dispatchPreconditionTest(_:)();
  result = (*(v6 + 8))(v10, v5);
  if (v12)
  {
    v15 = v11 + qword_1009394E0;
    v16 = *(v11 + qword_1009394E0 + 33);
    v17 = *(v11 + qword_1009394E0);
    v18 = *(v11 + qword_1009394E0 + 8);
    v19 = *(v11 + qword_1009394E0 + 16);
    v20 = *(v11 + qword_1009394E0 + 24);
    v21 = *(v11 + qword_1009394E0 + 32);
    *v15 = a2;
    *(v15 + 16) = 0;
    *(v15 + 24) = 0;
    *(v15 + 8) = 0;
    *(v15 + 32) = 0;
    *(v15 + 33) = v16;
    return sub_10014F334(v17, v18, v19, v20, v21);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_10014F034(uint64_t a1, uint64_t a2)
{
  type metadata accessor for RDDebounceableCKDatabaseNotification();
  sub_10014F688(&unk_100943CF0, v3, type metadata accessor for RDDebounceableCKDatabaseNotification);
  isa = Set._bridgeToObjectiveC()().super.isa;
  (*(a2 + 16))(a2, isa);
}

void sub_10014F1D0(char a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for RDDebounceableCKDatabaseNotification();
  sub_10014F688(&unk_100943CF0, v5, type metadata accessor for RDDebounceableCKDatabaseNotification);
  isa = Set._bridgeToObjectiveC()().super.isa;
  (*(a3 + 16))(a3, a1 & 1, isa);
}

id sub_10014F2B8(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_10014F324(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5)
  {
  }

  return result;
}

uint64_t sub_10014F334(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5)
  {
  }

  return result;
}

uint64_t initializeWithCopy for RDDebouncing.Policy(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  v8 = *(a2 + 32);
  sub_10014F324(*a2, v5, v6, v7, v8);
  *a1 = v4;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  *(a1 + 32) = v8;
  *(a1 + 33) = *(a2 + 33);
  return a1;
}

uint64_t assignWithCopy for RDDebouncing.Policy(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  v8 = *(a2 + 32);
  sub_10014F324(*a2, v5, v6, v7, v8);
  v9 = *a1;
  v10 = *(a1 + 8);
  v11 = *(a1 + 16);
  v12 = *(a1 + 24);
  v13 = *(a1 + 32);
  *a1 = v4;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  *(a1 + 32) = v8;
  sub_10014F334(v9, v10, v11, v12, v13);
  *(a1 + 33) = *(a2 + 33);
  return a1;
}

__n128 initializeWithTake for RDDebouncing.Policy(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t assignWithTake for RDDebouncing.Policy(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *a1;
  v6 = *(a1 + 8);
  v7 = *(a1 + 16);
  v8 = *(a1 + 24);
  v9 = *(a1 + 32);
  v10 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v10;
  *(a1 + 32) = v4;
  sub_10014F334(v5, v6, v7, v8, v9);
  *(a1 + 33) = *(a2 + 33);
  return a1;
}

uint64_t getEnumTagSinglePayload for RDDebouncing.Policy(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 34))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 32);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for RDDebouncing.Policy(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 34) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 34) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

uint64_t sub_10014F54C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000F5104(&qword_100939638, &qword_100795F00);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_10014F5CC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000F5104(&qword_100939ED0, &qword_100791B10);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_10014F63C()
{
  result = qword_100938DE0;
  if (!qword_100938DE0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100938DE0);
  }

  return result;
}

uint64_t sub_10014F688(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t))
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

uint64_t initializeWithCopy for RDDebouncing.Policy.Interval(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  v7 = *(a2 + 32);
  sub_10014F324(*a2, v4, v5, v6, v7);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  *(a1 + 32) = v7;
  return a1;
}

uint64_t assignWithCopy for RDDebouncing.Policy.Interval(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  v7 = *(a2 + 32);
  sub_10014F324(*a2, v4, v5, v6, v7);
  v8 = *a1;
  v9 = *(a1 + 8);
  v10 = *(a1 + 16);
  v11 = *(a1 + 24);
  v12 = *(a1 + 32);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  *(a1 + 32) = v7;
  sub_10014F334(v8, v9, v10, v11, v12);
  return a1;
}

__n128 initializeWithTake for RDDebouncing.Policy.Interval(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t assignWithTake for RDDebouncing.Policy.Interval(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 32);
  v4 = *a1;
  v6 = *(a1 + 8);
  v5 = *(a1 + 16);
  v7 = *(a1 + 24);
  v8 = *(a1 + 32);
  v9 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v9;
  *(a1 + 32) = v3;
  sub_10014F334(v4, v6, v5, v7, v8);
  return a1;
}

uint64_t getEnumTagSinglePayload for RDDebouncing.Policy.Interval(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 33))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 32);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for RDDebouncing.Policy.Interval(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

uint64_t sub_10014F954()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_100939640);
  v1 = sub_100006654(v0, qword_100939640);
  if (qword_1009364D8 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_1009751D0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_10014FA1C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v17 = a3;
  v18 = a5;
  v9 = sub_1000F5104(&qword_100939778, &qword_100796298);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9, v11);
  v13 = &v16 - v12;
  sub_10000F61C(a1, a1[3]);
  sub_1001537D0();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v20 = a2;
  v19 = 0;
  sub_1000F5104(&qword_100939718, &qword_100796278);
  sub_100153B84();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v5)
  {
    v14 = v18;
    v20 = v17;
    v19 = 1;
    sub_1000F5104(&qword_100939730, &qword_100796280);
    sub_100153C5C();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v20 = a4;
    v19 = 2;
    sub_1000F5104(&qword_100939748, &qword_100796288);
    sub_100153D34();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v20 = v14;
    v19 = 3;
    sub_1000F5104(&qword_100939760, &qword_100796290);
    sub_100153E0C();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v10 + 8))(v13, v9);
}

unint64_t sub_10014FC84(unsigned __int8 a1)
{
  if (a1 <= 4u)
  {
    v6 = 0x73736572646461;
    v7 = 0x656475746974616CLL;
    v8 = 0x6E6F697461636F6CLL;
    if (a1 != 3)
    {
      v8 = 0x64757469676E6F6CLL;
    }

    if (a1 != 2)
    {
      v7 = v8;
    }

    if (a1)
    {
      v6 = 0x4C746361746E6F63;
    }

    if (a1 <= 1u)
    {
      return v6;
    }

    else
    {
      return v7;
    }
  }

  else
  {
    v1 = 0xD000000000000014;
    v2 = 0x676E6974756F72;
    if (a1 != 9)
    {
      v2 = 0x656C746974;
    }

    if (a1 != 8)
    {
      v1 = v2;
    }

    v3 = 0x614874694B70616DLL;
    v4 = 0x74696D69786F7270;
    if (a1 != 6)
    {
      v4 = 0x737569646172;
    }

    if (a1 != 5)
    {
      v3 = v4;
    }

    if (a1 <= 7u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_10014FE00(void *a1)
{
  v3 = v1;
  v5 = sub_1000F5104(&qword_1009396F8, &qword_100796268);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5, v7);
  v9 = &v12[-v8 - 8];
  sub_10000F61C(a1, a1[3]);
  sub_100153728();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v13) = 0;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  if (!v2)
  {
    LOBYTE(v13) = 1;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v13) = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v13) = 3;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v13) = 4;
    KeyedEncodingContainer.encode(_:forKey:)();
    v13 = *(v3 + 64);
    v14 = v13;
    v12[23] = 5;
    sub_1001516A8(&v14, v12);
    sub_10015377C();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    sub_100031A14(v13, *(&v13 + 1));
    LOBYTE(v13) = 6;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v13) = 7;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v13) = 8;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v13) = 9;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v13) = 10;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_1001500F4()
{
  v1 = 0x6769725465746164;
  v2 = 0xD000000000000014;
  if (*v0 != 2)
  {
    v2 = 0x54656C6369686576;
  }

  if (*v0)
  {
    v1 = 0xD000000000000010;
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

uint64_t sub_100150190@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, _TtC7remindd19RDXPCStorePerformer *a3@<X1>, void *a4@<X2>, void *a5@<X3>, void *a6@<X4>, void *a7@<X5>, void *a8@<X6>, void *a9@<X7>)
{
  result = sub_100151EB4(a2, a3, a4, a5, a6, a7, a8, a9);
  *a1 = result;
  return result;
}

uint64_t sub_1001501C4(uint64_t a1)
{
  v2 = sub_1001537D0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100150200(uint64_t a1)
{
  v2 = sub_1001537D0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10015023C@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_100152030(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
    a1[2] = v6;
    a1[3] = v7;
  }

  return result;
}

uint64_t sub_10015028C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 24);
  v4 = *(a2 + 8);
  v5 = *(a2 + 24);
  if ((sub_1003B0A38() & 1) == 0 || (sub_1003AE6C8(v2, v4) & 1) == 0 || (sub_1003B0A38() & 1) == 0)
  {
    return 0;
  }

  return sub_1003AE66C(v3, v5);
}

void sub_100150344(uint64_t a1@<X0>, _TtC7remindd19RDXPCStorePerformer *a2@<X1>, _BYTE *a3@<X8>, void *a4@<X3>, void *a5@<X4>, void *a6@<X5>, void *a7@<X6>, void *a8@<X7>)
{
  if (a1 == 0xD000000000000010 && 0x80000001007ED0A0 == a2)
  {
    a2, 0x80000001007ED0A0, 0xD000000000000010, a4, a5, a6, a7, a8;
    v10 = 0;
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
    a2, v12, v13, v14, v15, v16, v17, v18;
    v10 = v11 ^ 1;
  }

  *a3 = v10 & 1;
}

uint64_t sub_1001503D8(uint64_t a1)
{
  v2 = sub_1001536D4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100150414(uint64_t a1)
{
  v2 = sub_1001536D4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1001504E0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, _TtC7remindd19RDXPCStorePerformer *a3@<X1>, void *a4@<X2>, void *a5@<X3>, void *a6@<X4>, void *a7@<X5>, void *a8@<X6>, void *a9@<X7>)
{
  result = sub_100152378(a2, a3, a4, a5, a6, a7, a8, a9);
  *a1 = result;
  return result;
}

uint64_t sub_100150514(uint64_t a1)
{
  v2 = sub_100153728();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100150550(uint64_t a1)
{
  v2 = sub_100153728();

  return CodingKey.debugDescription.getter(a1, v2);
}

__n128 sub_10015058C@<Q0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_100152708(a2, v8);
  if (!v2)
  {
    v5 = v8[7];
    *(a1 + 96) = v8[6];
    *(a1 + 112) = v5;
    *(a1 + 128) = v8[8];
    v6 = v8[3];
    *(a1 + 32) = v8[2];
    *(a1 + 48) = v6;
    v7 = v8[5];
    *(a1 + 64) = v8[4];
    *(a1 + 80) = v7;
    result = v8[1];
    *a1 = v8[0];
    *(a1 + 16) = result;
  }

  return result;
}

uint64_t sub_100150600(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[7];
  v11[6] = a1[6];
  v11[7] = v2;
  v11[8] = a1[8];
  v3 = a1[3];
  v11[2] = a1[2];
  v11[3] = v3;
  v4 = a1[5];
  v11[4] = a1[4];
  v11[5] = v4;
  v5 = a1[1];
  v11[0] = *a1;
  v11[1] = v5;
  v6 = a2[7];
  v12[6] = a2[6];
  v12[7] = v6;
  v12[8] = a2[8];
  v7 = a2[3];
  v12[2] = a2[2];
  v12[3] = v7;
  v8 = a2[5];
  v12[4] = a2[4];
  v12[5] = v8;
  v9 = a2[1];
  v12[0] = *a2;
  v12[1] = v9;
  return sub_100151354(v11, v12) & 1;
}

void sub_1001506A4(void *a1@<X0>, _TtC7remindd19RDXPCStorePerformer *a2@<X1>, _BYTE *a3@<X8>, void *a4@<X3>, void *a5@<X4>, void *a6@<X5>, void *a7@<X6>, void *a8@<X7>)
{
  if (a1 == 0x65746E49656D6974 && a2 == 0xEC0000006C617672)
  {
    a2, 0xEC0000006C617672, a1, a4, a5, a6, a7, a8;
    v19 = 0;
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
    a2, v12, v13, v14, v15, v16, v17, v18;
    v19 = v11 ^ 1;
  }

  *a3 = v19 & 1;
}

uint64_t sub_100150730(uint64_t a1)
{
  v2 = sub_100153680();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10015076C(uint64_t a1)
{
  v2 = sub_100153680();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1001507EC@<X0>(void *a1@<X0>, uint64_t *a2@<X3>, uint64_t *a3@<X4>, uint64_t (*a4)(void)@<X5>, double *a6@<X8>)
{
  v17 = a6;
  v9 = sub_1000F5104(a2, a3);
  v18 = *(v9 - 8);
  __chkstk_darwin(v9, v10);
  v12 = &v17 - v11;
  sub_10000F61C(a1, a1[3]);
  a4();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v6)
  {
    return sub_10000607C(a1);
  }

  v13 = v17;
  KeyedDecodingContainer.decode(_:forKey:)();
  v15 = v14;
  (*(v18 + 8))(v12, v9);
  result = sub_10000607C(a1);
  *v13 = v15;
  return result;
}

uint64_t sub_1001509A4(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, uint64_t (*a6)(void), uint64_t a7)
{
  v9 = sub_1000F5104(a4, a5);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9, v11);
  v13 = &v15 - v12;
  sub_10000F61C(a1, a1[3]);
  a6();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  KeyedEncodingContainer.encode(_:forKey:)();
  return (*(v10 + 8))(v13, v9);
}

void sub_100150AFC(void *a1@<X0>, _TtC7remindd19RDXPCStorePerformer *a2@<X1>, _BYTE *a3@<X8>, void *a4@<X3>, void *a5@<X4>, void *a6@<X5>, void *a7@<X6>, void *a8@<X7>)
{
  if (a1 == 0x746E657665 && a2 == 0xE500000000000000)
  {
    a2, a2, a1, a4, a5, a6, a7, a8;
    v19 = 0;
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
    a2, v12, v13, v14, v15, v16, v17, v18;
    v19 = v11 ^ 1;
  }

  *a3 = v19 & 1;
}

uint64_t sub_100150B80(uint64_t a1)
{
  v2 = sub_10015362C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100150BBC(uint64_t a1)
{
  v2 = sub_10015362C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100150BF8@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_1000F5104(&qword_100939698, &qword_100796230);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5, v7);
  v9 = &v12 - v8;
  sub_10000F61C(a1, a1[3]);
  sub_10015362C();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_10000607C(a1);
  }

  v10 = KeyedDecodingContainer.decode(_:forKey:)();
  (*(v6 + 8))(v9, v5);
  result = sub_10000607C(a1);
  *a2 = v10;
  return result;
}

uint64_t sub_100150D58(void *a1)
{
  v2 = sub_1000F5104(&qword_1009396A8, &qword_100796238);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2, v4);
  v6 = &v8 - v5;
  sub_10000F61C(a1, a1[3]);
  sub_10015362C();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  KeyedEncodingContainer.encode(_:forKey:)();
  return (*(v3 + 8))(v6, v2);
}

void sub_100150E90(id *a1, _TtC7remindd19RDXPCStorePerformer **a2, _TtC7remindd19RDXPCStorePerformer **a3, _TtC7remindd19RDXPCStorePerformer **a4, _TtC7remindd19RDXPCStorePerformer **a5)
{
  v10 = *a1;
  v11 = [*a1 trigger];
  objc_opt_self();
  v12 = swift_dynamicCastObjCClass();
  if (v12)
  {
    v13 = v12;
    v14 = v11;
    v15 = sub_100151718(v13);

    if (v5)
    {
    }

    else
    {
      v34 = *a2;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *a2 = v34;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v34 = sub_1003660D0(0, *v34->clientIdentity + 1, 1, v34, v36, v37, v38, v39);
        *a2 = v34;
      }

      v41 = *v34->clientIdentity;
      v40 = *&v34->clientIdentity[8];
      if (v41 >= v40 >> 1)
      {
        *a2 = sub_1003660D0((v40 > 1), v41 + 1, 1, v34, v36, v37, v38, v39);
      }

      v42 = *a2;
      *v42->clientIdentity = v41 + 1;
      *&v42->clientIdentity[8 * v41 + 16] = v15;
    }
  }

  else
  {

    v16 = [v10 trigger];
    objc_opt_self();
    v17 = swift_dynamicCastObjCClass();
    if (v17)
    {
      v18 = v17;
      v19 = v16;
      sub_100151B30(v18, v89);
      v20 = *a3;
      v21 = swift_isUniquelyReferenced_nonNull_native();
      *a3 = v20;
      if ((v21 & 1) == 0)
      {
        v20 = sub_100365FA8(0, *v20->clientIdentity + 1, 1, v20, v22, v23, v24, v25);
        *a3 = v20;
      }

      v27 = *v20->clientIdentity;
      v26 = *&v20->clientIdentity[8];
      if (v27 >= v26 >> 1)
      {
        *a3 = sub_100365FA8((v26 > 1), v27 + 1, 1, v20, v22, v23, v24, v25);
      }

      v28 = *a3;
      *v28->clientIdentity = v27 + 1;
      v29 = (v28 + 144 * v27);
      v30 = v89[7];
      v29[8] = v89[6];
      v29[9] = v30;
      v29[10] = v89[8];
      v31 = v89[3];
      v29[4] = v89[2];
      v29[5] = v31;
      v32 = v89[5];
      v29[6] = v89[4];
      v29[7] = v32;
      v33 = v89[1];
      v29[2] = v89[0];
      v29[3] = v33;
    }

    else
    {

      v43 = [v10 trigger];
      objc_opt_self();
      v44 = swift_dynamicCastObjCClass();
      if (v44)
      {
        [v44 timeInterval];
        v46 = v45;
        v47 = *a4;
        v48 = swift_isUniquelyReferenced_nonNull_native();
        *a4 = v47;
        if ((v48 & 1) == 0)
        {
          v47 = sub_100365F94(0, *v47->clientIdentity + 1, 1, v47, v49, v50, v51, v52);
          *a4 = v47;
        }

        v54 = *v47->clientIdentity;
        v53 = *&v47->clientIdentity[8];
        if (v54 >= v53 >> 1)
        {
          *a4 = sub_100365F94((v53 > 1), v54 + 1, 1, v47, v49, v50, v51, v52);
        }

        v55 = *a4;
        *v55->clientIdentity = v54 + 1;
        *&v55->clientIdentity[8 * v54 + 16] = v46;
      }

      else
      {

        v56 = [v10 trigger];
        objc_opt_self();
        v57 = swift_dynamicCastObjCClass();
        if (v57)
        {
          v58 = [v57 event];
          v59 = *a5;
          v60 = swift_isUniquelyReferenced_nonNull_native();
          *a5 = v59;
          if ((v60 & 1) == 0)
          {
            v59 = sub_100365E90(0, *v59->clientIdentity + 1, 1, v59, v61, v62, v63, v64);
            *a5 = v59;
          }

          v66 = *v59->clientIdentity;
          v65 = *&v59->clientIdentity[8];
          if (v66 >= v65 >> 1)
          {
            *a5 = sub_100365E90((v65 > 1), v66 + 1, 1, v59, v61, v62, v63, v64);
          }

          v67 = *a5;
          *v67->clientIdentity = v66 + 1;
          *&v67->clientIdentity[8 * v66 + 16] = v58;
        }

        else
        {

          _StringGuts.grow(_:)(74);
          v68._object = 0x80000001007ED010;
          v68._countAndFlagsBits = 0xD000000000000047;
          String.append(_:)(v68);
          v69 = [v10 trigger];
          swift_getObjectType();

          v70._countAndFlagsBits = _typeName(_:qualified:)();
          object = v70._object;
          String.append(_:)(v70);
          object, v72, v73, v74, v75, v76, v77, v78;
          v79._countAndFlagsBits = 125;
          v79._object = 0xE100000000000000;
          String.append(_:)(v79);
          v80 = objc_opt_self();
          v81 = String._bridgeToObjectiveC()();
          0xE000000000000000, v82, v83, v84, v85, v86, v87, v88;
          [v80 internalErrorWithDebugDescription:v81];

          swift_willThrow();
        }
      }
    }
  }
}

uint64_t sub_100151354(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  if (v2)
  {
    if (!v3)
    {
      return 0;
    }

    if (*a1 != *a2 || v2 != v3)
    {
      v5 = a1;
      v6 = a2;
      v7 = _stringCompareWithSmolCheck(_:_:expecting:)();
      a2 = v6;
      v8 = v7;
      a1 = v5;
      if ((v8 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v3)
  {
    return 0;
  }

  v9 = *(a1 + 24);
  v10 = *(a2 + 24);
  if (v9)
  {
    if (!v10)
    {
      return 0;
    }

    if (*(a1 + 16) != *(a2 + 16) || v9 != v10)
    {
      v11 = a1;
      v12 = a2;
      v13 = _stringCompareWithSmolCheck(_:_:expecting:)();
      a2 = v12;
      v14 = v13;
      a1 = v11;
      if ((v14 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v10)
  {
    return 0;
  }

  if (*(a1 + 32) != *(a2 + 32))
  {
    return 0;
  }

  v15 = *(a1 + 48);
  v16 = *(a2 + 48);
  if (v15)
  {
    if (!v16)
    {
      return 0;
    }

    if (*(a1 + 40) != *(a2 + 40) || v15 != v16)
    {
      v17 = a1;
      v18 = a2;
      v19 = _stringCompareWithSmolCheck(_:_:expecting:)();
      a2 = v18;
      v20 = v19;
      a1 = v17;
      if ((v20 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v16)
  {
    return 0;
  }

  if (*(a1 + 56) != *(a2 + 56))
  {
    return 0;
  }

  v21 = *(a1 + 64);
  v41 = *(a2 + 64);
  v42 = v21;
  v22 = v21;
  v23 = v41;
  if (*(&v21 + 1) >> 60 != 15)
  {
    if (*(&v41 + 1) >> 60 != 15)
    {
      v24 = a1;
      v25 = a2;
      sub_1001516A8(&v42, v40);
      sub_1001516A8(&v41, v40);
      v26 = sub_1001CA5EC(v22, *(&v22 + 1), v23, *(&v23 + 1));
      sub_100031A14(v23, *(&v23 + 1));
      sub_100031A14(v22, *(&v22 + 1));
      if (!v26)
      {
        return 0;
      }

      goto LABEL_32;
    }

LABEL_30:
    sub_1001516A8(&v42, v40);
    sub_1001516A8(&v41, v40);
    sub_100031A14(v22, *(&v22 + 1));
    sub_100031A14(v23, *(&v23 + 1));
    return 0;
  }

  if (*(&v41 + 1) >> 60 != 15)
  {
    goto LABEL_30;
  }

  v24 = a1;
  v25 = a2;
  sub_1001516A8(&v42, v40);
  sub_1001516A8(&v41, v40);
  sub_100031A14(v22, *(&v22 + 1));
LABEL_32:
  if (*(v24 + 80) != *(v25 + 80))
  {
    return 0;
  }

  v27 = v24;
  v28 = v25;
  if (*(v24 + 88) != *(v25 + 88))
  {
    return 0;
  }

  v29 = *(v24 + 104);
  v30 = *(v25 + 104);
  if (v29)
  {
    if (!v30)
    {
      return 0;
    }

    if (*(v24 + 96) != *(v25 + 96) || v29 != v30)
    {
      v31 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v28 = v25;
      v27 = v24;
      if ((v31 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v30)
  {
    return 0;
  }

  v32 = v27[15];
  v33 = v28[15];
  if (v32)
  {
    if (!v33)
    {
      return 0;
    }

    if (v27[14] != v28[14] || v32 != v33)
    {
      v34 = v27;
      v35 = v28;
      v36 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v28 = v35;
      v27 = v34;
      if ((v36 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v33)
  {
    return 0;
  }

  v37 = v27[17];
  v38 = v28[17];
  if (v37)
  {
    if (v38 && (v27[16] == v28[16] && v37 == v38 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
    {
      return 1;
    }
  }

  else if (!v38)
  {
    return 1;
  }

  return 0;
}

uint64_t sub_1001516A8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000F5104(&qword_100938C10, &unk_100795F30);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

double sub_100151718(void *a1)
{
  v60 = type metadata accessor for TimeZone();
  v3 = *(v60 - 8);
  __chkstk_darwin(v60, v4);
  v6 = v55 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DateComponents();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7, v9);
  v11 = v55 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Date();
  v58 = *(v12 - 8);
  v59 = v12;
  __chkstk_darwin(v12, v13);
  v57 = v55 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15, v16);
  v18 = v55 - v17;
  v19 = objc_opt_self();
  v55[0] = a1;
  v20 = [a1 dateComponents];
  static DateComponents._unconditionallyBridgeFromObjectiveC(_:)();

  isa = DateComponents._bridgeToObjectiveC()().super.isa;
  v22 = *(v8 + 8);
  v55[1] = (v8 + 8);
  v56 = v7;
  v22(v11, v7);
  v23 = v22;
  static TimeZone.current.getter();
  v24 = TimeZone._bridgeToObjectiveC()().super.isa;
  (*(v3 + 8))(v6, v60);
  v25 = [v19 rem_dateWithDateComponents:isa timeZone:v24];

  if (v25)
  {
    v26 = v57;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v27 = v58;
    v28 = v26;
    v29 = v59;
    (*(v58 + 32))(v18, v28, v59);
    Date.timeIntervalSinceReferenceDate.getter();
    v1 = v30;
    (*(v27 + 8))(v18, v29);
  }

  else
  {
    v61 = 0;
    v62 = 0xE000000000000000;
    _StringGuts.grow(_:)(64);
    v31._object = 0x80000001007ED060;
    v31._countAndFlagsBits = 0xD00000000000003DLL;
    String.append(_:)(v31);
    v32 = [v55[0] dateComponents];
    static DateComponents._unconditionallyBridgeFromObjectiveC(_:)();

    sub_100152E68();
    v33 = v56;
    v34._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    object = v34._object;
    String.append(_:)(v34);
    object, v36, v37, v38, v39, v40, v41, v42;
    v23(v11, v33);
    v43._countAndFlagsBits = 125;
    v43._object = 0xE100000000000000;
    String.append(_:)(v43);
    v44 = v62;
    v45 = objc_opt_self();
    v46 = String._bridgeToObjectiveC()();
    v44, v47, v48, v49, v50, v51, v52, v53;
    [v45 internalErrorWithDebugDescription:v46];

    swift_willThrow();
  }

  return v1;
}

void sub_100151B30(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = [a1 structuredLocation];
  v5 = [v4 address];

  if (v5)
  {
    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v53 = v7;
    v54 = v6;
  }

  else
  {
    v53 = 0;
    v54 = 0;
  }

  v8 = [a1 structuredLocation];
  v9 = [v8 contactLabel];

  if (v9)
  {
    v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v51 = v11;
    v52 = v10;
  }

  else
  {
    v51 = 0;
    v52 = 0;
  }

  v12 = [a1 structuredLocation];
  [v12 latitude];
  v14 = v13;

  v15 = [a1 structuredLocation];
  v16 = [v15 locationUID];

  if (v16)
  {
    v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v49 = v18;
    v50 = v17;
  }

  else
  {
    v49 = 0;
    v50 = 0;
  }

  v19 = [a1 structuredLocation];
  [v19 longitude];
  v21 = v20;

  v22 = [a1 structuredLocation];
  v23 = [v22 mapKitHandle];

  if (v23)
  {
    v24 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v45 = v25;
    v47 = v24;
  }

  else
  {
    v45 = 0xF000000000000000;
    v47 = 0;
  }

  v26 = [a1 proximity];
  v27 = [a1 structuredLocation];
  [v27 radius];
  v29 = v28;

  v30 = [a1 structuredLocation];
  v31 = [v30 referenceFrameString];

  if (v31)
  {
    v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v34 = v33;
  }

  else
  {
    v32 = 0;
    v34 = 0;
  }

  v35 = [a1 structuredLocation];
  v36 = [v35 routing];

  if (v36)
  {
    v37 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v39 = v38;
  }

  else
  {
    v37 = 0;
    v39 = 0;
  }

  v40 = [a1 structuredLocation];
  v41 = [v40 title];

  if (v41)
  {
    v42 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v44 = v43;
  }

  else
  {

    v42 = 0;
    v44 = 0;
  }

  *a2 = v54;
  a2[1] = v53;
  a2[2] = v52;
  a2[3] = v51;
  a2[4] = v14;
  a2[5] = v50;
  a2[6] = v49;
  a2[7] = v21;
  a2[8] = v48;
  a2[9] = v46;
  a2[10] = v26;
  a2[11] = v29;
  a2[12] = v32;
  a2[13] = v34;
  a2[14] = v37;
  a2[15] = v39;
  a2[16] = v42;
  a2[17] = v44;
}

uint64_t sub_100151EB4(uint64_t a1, _TtC7remindd19RDXPCStorePerformer *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v10 = 0xEC00000073726567;
  v11 = a1 == 0x6769725465746164 && a2 == 0xEC00000073726567;
  if (v11 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    a2, v10, a3, a4, a5, a6, a7, a8;
    return 0;
  }

  else
  {
    v13 = 0x80000001007ED0E0;
    if (a1 == 0xD000000000000010 && 0x80000001007ED0E0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      a2, v13, a3, a4, a5, a6, a7, a8;
      return 1;
    }

    else
    {
      v14 = 0x80000001007ED100;
      if (a1 == 0xD000000000000014 && 0x80000001007ED100 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        a2, v14, a3, a4, a5, a6, a7, a8;
        return 2;
      }

      else if (a1 == 0x54656C6369686576 && a2 == 0xEF73726567676972)
      {
        0xEF73726567676972, 0xEF73726567676972, a3, a4, a5, a6, a7, a8;
        return 3;
      }

      else
      {
        v15 = _stringCompareWithSmolCheck(_:_:expecting:)();
        a2, v16, v17, v18, v19, v20, v21, v22;
        if (v15)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

uint64_t sub_100152030(void *a1)
{
  v3 = sub_1000F5104(&qword_100939708, &qword_100796270);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3, v5);
  v7 = &v10 - v6;
  v8 = a1[3];
  sub_10000F61C(a1, v8);
  sub_1001537D0();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v1)
  {
    sub_1000F5104(&qword_100939718, &qword_100796278);
    v11 = 0;
    sub_100153824();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v8 = v12;
    sub_1000F5104(&qword_100939730, &qword_100796280);
    v11 = 1;
    sub_1001538FC();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    sub_1000F5104(&qword_100939748, &qword_100796288);
    v11 = 2;
    sub_1001539D4();
    v10 = 0;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    sub_1000F5104(&qword_100939760, &qword_100796290);
    v11 = 3;
    sub_100153AAC();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v4 + 8))(v7, v3);
  }

  sub_10000607C(a1);
  return v8;
}

uint64_t sub_100152378(uint64_t a1, _TtC7remindd19RDXPCStorePerformer *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v10 = a1 == 0x73736572646461 && a2 == 0xE700000000000000;
  if (v10 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    a2, a2, a3, a4, a5, a6, a7, a8;
    return 0;
  }

  else
  {
    v12 = 0xEC0000006C656261;
    if (a1 == 0x4C746361746E6F63 && a2 == 0xEC0000006C656261 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      a2, v12, a3, a4, a5, a6, a7, a8;
      return 1;
    }

    else if (a1 == 0x656475746974616CLL && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      a2, v12, a3, a4, a5, a6, a7, a8;
      return 2;
    }

    else
    {
      v13 = 0xEB00000000444955;
      if (a1 == 0x6E6F697461636F6CLL && a2 == 0xEB00000000444955 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        a2, v13, a3, a4, a5, a6, a7, a8;
        return 3;
      }

      else if (a1 == 0x64757469676E6F6CLL && a2 == 0xE900000000000065 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        a2, v13, a3, a4, a5, a6, a7, a8;
        return 4;
      }

      else
      {
        v14 = 0xEC000000656C646ELL;
        if (a1 == 0x614874694B70616DLL && a2 == 0xEC000000656C646ELL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          a2, v14, a3, a4, a5, a6, a7, a8;
          return 5;
        }

        else
        {
          v15 = 0xE900000000000079;
          if (a1 == 0x74696D69786F7270 && a2 == 0xE900000000000079 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {
            a2, v15, a3, a4, a5, a6, a7, a8;
            return 6;
          }

          else if (a1 == 0x737569646172 && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {
            a2, v15, a3, a4, a5, a6, a7, a8;
            return 7;
          }

          else
          {
            v16 = 0x80000001007ED0C0;
            if (a1 == 0xD000000000000014 && 0x80000001007ED0C0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {
              a2, v16, a3, a4, a5, a6, a7, a8;
              return 8;
            }

            else if (a1 == 0x676E6974756F72 && a2 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {
              a2, v16, a3, a4, a5, a6, a7, a8;
              return 9;
            }

            else if (a1 == 0x656C746974 && a2 == 0xE500000000000000)
            {
              0xE500000000000000, v16, a3, a4, a5, a6, a7, a8;
              return 10;
            }

            else
            {
              v17 = _stringCompareWithSmolCheck(_:_:expecting:)();
              a2, v18, v19, v20, v21, v22, v23, v24;
              if (v17)
              {
                return 10;
              }

              else
              {
                return 11;
              }
            }
          }
        }
      }
    }
  }
}

void sub_100152708(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v48 = sub_1000F5104(&qword_1009396E0, &qword_100796260);
  v5 = *(v48 - 8);
  __chkstk_darwin(v48, v6);
  v8 = &v36 - v7;
  sub_10000F61C(a1, a1[3]);
  sub_100153728();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    sub_10000607C(a1);
  }

  else
  {
    v9 = v5;
    v47 = a2;
    LOBYTE(v58) = 0;
    v10 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v46 = v11;
    LOBYTE(v58) = 1;
    v12 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v45 = v13;
    v42 = v12;
    LOBYTE(v58) = 2;
    KeyedDecodingContainer.decode(_:forKey:)();
    v15 = v14;
    LOBYTE(v58) = 3;
    v41 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v43 = v16;
    LOBYTE(v58) = 4;
    KeyedDecodingContainer.decode(_:forKey:)();
    v18 = v17;
    LOBYTE(v49) = 5;
    sub_1000318F4();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v19 = v59;
    v44 = v58;
    LOBYTE(v58) = 6;
    v20 = KeyedDecodingContainer.decode(_:forKey:)();
    LOBYTE(v58) = 7;
    KeyedDecodingContainer.decode(_:forKey:)();
    v38 = v21;
    LOBYTE(v58) = 8;
    v39 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v40 = 0;
    v23 = v22;
    LOBYTE(v58) = 9;
    *&v37 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    *(&v37 + 1) = v24;
    v40 = 0;
    v75[0] = 10;
    v25 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v36 = v26;
    v40 = 0;
    v27 = v25;
    (*(v9 + 8))(v8, v48);
    v28 = v45;
    *&v49 = v10;
    *(&v49 + 1) = v46;
    *&v50 = v42;
    *(&v50 + 1) = v45;
    *&v51 = v15;
    v29 = v43;
    *(&v51 + 1) = v41;
    *&v52 = v43;
    *(&v52 + 1) = v18;
    *&v53 = v44;
    *(&v53 + 1) = v19;
    *&v54 = v20;
    v30 = v38;
    *(&v54 + 1) = v38;
    *&v55 = v39;
    *(&v55 + 1) = v23;
    v56 = v37;
    *&v57 = v27;
    *(&v57 + 1) = v36;
    sub_1000FE280(&v49, &v58);
    sub_10000607C(a1);
    v58 = v10;
    v59 = v46;
    v60 = v42;
    v61 = v28;
    v62 = v15;
    v63 = v41;
    v64 = v29;
    v65 = v18;
    v66 = v44;
    v67 = v19;
    v68 = v20;
    v69 = v30;
    v70 = v39;
    v71 = v23;
    v72 = v37;
    v73 = v27;
    v74 = v36;
    sub_1000FE2DC(&v58);
    v31 = v56;
    v32 = v47;
    v47[6] = v55;
    v32[7] = v31;
    v32[8] = v57;
    v33 = v52;
    v32[2] = v51;
    v32[3] = v33;
    v34 = v54;
    v32[4] = v53;
    v32[5] = v34;
    v35 = v50;
    *v32 = v49;
    v32[1] = v35;
  }
}

_TtC7remindd19RDXPCStorePerformer *sub_100152CF4(_TtC7remindd19RDXPCStorePerformer *a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v54 = &_swiftEmptyArrayStorage;
  v55 = &_swiftEmptyArrayStorage;
  v52 = &_swiftEmptyArrayStorage;
  v53 = &_swiftEmptyArrayStorage;
  if (a1 >> 62)
  {
    goto LABEL_15;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v11 = 0;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v12 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v11 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_14;
        }

        v12 = *&a1->clientIdentity[8 * v11 + 16];
      }

      v13 = v12;
      v14 = (v11 + 1);
      if (__OFADD__(v11, 1))
      {
        break;
      }

      v51 = v12;
      sub_100150E90(&v51, &v55, &v54, &v53, &v52);
      if (v8)
      {
        a1, v15, v16, v17, v18, v19, v20, v21;

        v52, v22, v23, v24, v25, v26, v27, v28;
        v53, v29, v30, v31, v32, v33, v34, v35;
        v54, v36, v37, v38, v39, v40, v41, v42;
        v55, v43, v44, v45, v46, v47, v48, v49;
        return i;
      }

      ++v11;
      if (v14 == i)
      {
        i = v55;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    ;
  }

  i = &_swiftEmptyArrayStorage;
LABEL_17:
  a1, a2, a3, a4, a5, a6, a7, a8;
  return i;
}

unint64_t sub_100152E68()
{
  result = qword_100939690;
  if (!qword_100939690)
  {
    type metadata accessor for DateComponents();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100939690);
  }

  return result;
}

void destroy for RDSavedAlarmLocationTrigger(void *a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  a1[1], a2, a3, a4, a5, a6, a7, a8;
  a1[3], v9, v10, v11, v12, v13, v14, v15;
  a1[6], v16, v17, v18, v19, v20, v21, v22;
  v29 = a1[9];
  if (v29 >> 60 != 15)
  {
    sub_10001BBA0(a1[8], v29);
  }

  a1[13], v29, v23, v24, v25, v26, v27, v28;
  a1[15], v30, v31, v32, v33, v34, v35, v36;
  v44 = a1[17];

  v44, v37, v38, v39, v40, v41, v42, v43;
}

uint64_t initializeWithCopy for RDSavedAlarmLocationTrigger(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;
  v5 = *(a2 + 24);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = v5;
  *(a1 + 32) = *(a2 + 32);
  v6 = *(a2 + 56);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = v6;
  v7 = *(a2 + 72);

  if (v7 >> 60 == 15)
  {
    *(a1 + 64) = *(a2 + 64);
  }

  else
  {
    v8 = *(a2 + 64);
    sub_100029344(v8, v7);
    *(a1 + 64) = v8;
    *(a1 + 72) = v7;
  }

  *(a1 + 80) = *(a2 + 80);
  v9 = *(a2 + 104);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 104) = v9;
  v10 = *(a2 + 120);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 120) = v10;
  v11 = *(a2 + 128);
  v12 = *(a2 + 136);
  *(a1 + 128) = v11;
  *(a1 + 136) = v12;

  return a1;
}

void *assignWithCopy for RDSavedAlarmLocationTrigger(void *a1, void *a2)
{
  *a1 = *a2;
  v4 = a1[1];
  a1[1] = a2[1];

  v4, v5, v6, v7, v8, v9, v10, v11;
  a1[2] = a2[2];
  v12 = a1[3];
  a1[3] = a2[3];

  v12, v13, v14, v15, v16, v17, v18, v19;
  a1[4] = a2[4];
  a1[5] = a2[5];
  v20 = a1[6];
  a1[6] = a2[6];

  v20, v21, v22, v23, v24, v25, v26, v27;
  a1[7] = a2[7];
  v28 = a2[9];
  if (a1[9] >> 60 != 15)
  {
    if (v28 >> 60 != 15)
    {
      v30 = a2[8];
      sub_100029344(v30, a2[9]);
      v31 = a1[8];
      v32 = a1[9];
      a1[8] = v30;
      a1[9] = v28;
      sub_10001BBA0(v31, v32);
      goto LABEL_8;
    }

    sub_1001531B8((a1 + 8));
    goto LABEL_6;
  }

  if (v28 >> 60 == 15)
  {
LABEL_6:
    *(a1 + 4) = *(a2 + 4);
    goto LABEL_8;
  }

  v29 = a2[8];
  sub_100029344(v29, a2[9]);
  a1[8] = v29;
  a1[9] = v28;
LABEL_8:
  a1[10] = a2[10];
  a1[11] = a2[11];
  a1[12] = a2[12];
  v33 = a1[13];
  a1[13] = a2[13];

  v33, v34, v35, v36, v37, v38, v39, v40;
  a1[14] = a2[14];
  v41 = a1[15];
  a1[15] = a2[15];

  v41, v42, v43, v44, v45, v46, v47, v48;
  a1[16] = a2[16];
  v49 = a2[17];
  v50 = a1[17];
  a1[17] = v49;

  v50, v51, v52, v53, v54, v55, v56, v57;
  return a1;
}

__n128 initializeWithTake for RDSavedAlarmLocationTrigger(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  result = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 128);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = v7;
  *(a1 + 80) = result;
  *(a1 + 96) = v6;
  return result;
}

void *assignWithTake for RDSavedAlarmLocationTrigger(void *a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v10 = *(a2 + 1);
  v11 = a1[1];
  *a1 = *a2;
  a1[1] = v10;
  v11, a2, a3, a4, a5, a6, a7, a8;
  v12 = *(a2 + 3);
  v13 = a1[3];
  a1[2] = *(a2 + 2);
  a1[3] = v12;
  v13, v14, v15, v16, v17, v18, v19, v20;
  a1[4] = *(a2 + 4);
  v21 = *(a2 + 6);
  v22 = a1[6];
  a1[5] = *(a2 + 5);
  a1[6] = v21;
  v22, v23, v24, v25, v26, v27, v28, v29;
  a1[7] = *(a2 + 7);
  v36 = a1[9];
  if (v36 >> 60 != 15)
  {
    v37 = *(a2 + 9);
    if (v37 >> 60 != 15)
    {
      v38 = a1[8];
      a1[8] = *(a2 + 8);
      a1[9] = v37;
      sub_10001BBA0(v38, v36);
      goto LABEL_6;
    }

    sub_1001531B8((a1 + 8));
  }

  *(a1 + 4) = *(a2 + 4);
LABEL_6:
  a1[10] = *(a2 + 10);
  a1[11] = *(a2 + 11);
  v39 = *(a2 + 13);
  v40 = a1[13];
  a1[12] = *(a2 + 12);
  a1[13] = v39;
  v40, v36, v30, v31, v32, v33, v34, v35;
  v41 = *(a2 + 15);
  v42 = a1[15];
  a1[14] = *(a2 + 14);
  a1[15] = v41;
  v42, v43, v44, v45, v46, v47, v48, v49;
  v50 = *(a2 + 17);
  v51 = a1[17];
  a1[16] = *(a2 + 16);
  a1[17] = v50;
  v51, v52, v53, v54, v55, v56, v57, v58;
  return a1;
}

uint64_t getEnumTagSinglePayload for RDSavedAlarmLocationTrigger(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 144))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for RDSavedAlarmLocationTrigger(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 136) = 0;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 144) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 144) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

void destroy for RDSavedAlarmTriggers(_TtC7remindd19RDXPCStorePerformer **a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  *a1, a2, a3, a4, a5, a6, a7, a8;
  a1[1], v9, v10, v11, v12, v13, v14, v15;
  a1[2], v16, v17, v18, v19, v20, v21, v22;
  v30 = a1[3];

  v30, v23, v24, v25, v26, v27, v28, v29;
}

uint64_t *initializeWithCopy for RDSavedAlarmTriggers(uint64_t *a1, uint64_t *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  a1[1] = v3;
  v4 = a2[3];
  a1[2] = a2[2];
  a1[3] = v4;

  return a1;
}

_TtC7remindd19RDXPCStorePerformer **assignWithCopy for RDSavedAlarmTriggers(_TtC7remindd19RDXPCStorePerformer **a1, _TtC7remindd19RDXPCStorePerformer **a2)
{
  v4 = *a1;
  *a1 = *a2;

  v4, v5, v6, v7, v8, v9, v10, v11;
  v12 = a1[1];
  a1[1] = a2[1];

  v12, v13, v14, v15, v16, v17, v18, v19;
  v20 = a1[2];
  a1[2] = a2[2];

  v20, v21, v22, v23, v24, v25, v26, v27;
  v28 = a2[3];
  v29 = a1[3];
  a1[3] = v28;

  v29, v30, v31, v32, v33, v34, v35, v36;
  return a1;
}

void *assignWithTake for RDSavedAlarmTriggers(void *a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  *a1, a2, a3, a4, a5, a6, a7, a8;
  v10 = a1[1];
  *a1 = *a2;
  v10, v11, v12, v13, v14, v15, v16, v17;
  a1[2], v18, v19, v20, v21, v22, v23, v24;
  v25 = a1[3];
  *(a1 + 1) = *(a2 + 1);
  v25, v26, v27, v28, v29, v30, v31, v32;
  return a1;
}

uint64_t getEnumTagSinglePayload for RDSavedAlarmTriggers(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t storeEnumTagSinglePayload for RDSavedAlarmTriggers(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

unint64_t sub_10015362C()
{
  result = qword_1009396A0;
  if (!qword_1009396A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009396A0);
  }

  return result;
}

unint64_t sub_100153680()
{
  result = qword_1009396B8;
  if (!qword_1009396B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009396B8);
  }

  return result;
}

unint64_t sub_1001536D4()
{
  result = qword_1009396D0;
  if (!qword_1009396D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009396D0);
  }

  return result;
}

unint64_t sub_100153728()
{
  result = qword_1009396E8;
  if (!qword_1009396E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009396E8);
  }

  return result;
}

unint64_t sub_10015377C()
{
  result = qword_100939700;
  if (!qword_100939700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100939700);
  }

  return result;
}

unint64_t sub_1001537D0()
{
  result = qword_100939710;
  if (!qword_100939710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100939710);
  }

  return result;
}

unint64_t sub_100153824()
{
  result = qword_100939720;
  if (!qword_100939720)
  {
    sub_1000F514C(&qword_100939718, &qword_100796278);
    sub_1001538A8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100939720);
  }

  return result;
}

unint64_t sub_1001538A8()
{
  result = qword_100939728;
  if (!qword_100939728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100939728);
  }

  return result;
}

unint64_t sub_1001538FC()
{
  result = qword_100939738;
  if (!qword_100939738)
  {
    sub_1000F514C(&qword_100939730, &qword_100796280);
    sub_100153980();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100939738);
  }

  return result;
}

unint64_t sub_100153980()
{
  result = qword_100939740;
  if (!qword_100939740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100939740);
  }

  return result;
}

unint64_t sub_1001539D4()
{
  result = qword_100939750;
  if (!qword_100939750)
  {
    sub_1000F514C(&qword_100939748, &qword_100796288);
    sub_100153A58();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100939750);
  }

  return result;
}

unint64_t sub_100153A58()
{
  result = qword_100939758;
  if (!qword_100939758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100939758);
  }

  return result;
}

unint64_t sub_100153AAC()
{
  result = qword_100939768;
  if (!qword_100939768)
  {
    sub_1000F514C(&qword_100939760, &qword_100796290);
    sub_100153B30();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100939768);
  }

  return result;
}

unint64_t sub_100153B30()
{
  result = qword_100939770;
  if (!qword_100939770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100939770);
  }

  return result;
}

unint64_t sub_100153B84()
{
  result = qword_100939780;
  if (!qword_100939780)
  {
    sub_1000F514C(&qword_100939718, &qword_100796278);
    sub_100153C08();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100939780);
  }

  return result;
}

unint64_t sub_100153C08()
{
  result = qword_100939788;
  if (!qword_100939788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100939788);
  }

  return result;
}

unint64_t sub_100153C5C()
{
  result = qword_100939790;
  if (!qword_100939790)
  {
    sub_1000F514C(&qword_100939730, &qword_100796280);
    sub_100153CE0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100939790);
  }

  return result;
}

unint64_t sub_100153CE0()
{
  result = qword_100939798;
  if (!qword_100939798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100939798);
  }

  return result;
}

unint64_t sub_100153D34()
{
  result = qword_1009397A0;
  if (!qword_1009397A0)
  {
    sub_1000F514C(&qword_100939748, &qword_100796288);
    sub_100153DB8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009397A0);
  }

  return result;
}

unint64_t sub_100153DB8()
{
  result = qword_1009397A8;
  if (!qword_1009397A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009397A8);
  }

  return result;
}

unint64_t sub_100153E0C()
{
  result = qword_1009397B0;
  if (!qword_1009397B0)
  {
    sub_1000F514C(&qword_100939760, &qword_100796290);
    sub_100153E90();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009397B0);
  }

  return result;
}

unint64_t sub_100153E90()
{
  result = qword_1009397B8;
  if (!qword_1009397B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009397B8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for RDSavedAlarmLocationTrigger.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF6)
  {
    goto LABEL_17;
  }

  if (a2 + 10 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 10) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 10;
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

      return (*a1 | (v4 << 8)) - 10;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 10;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xB;
  v8 = v6 - 11;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for RDSavedAlarmLocationTrigger.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 10 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 10) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF6)
  {
    v4 = 0;
  }

  if (a2 > 0xF5)
  {
    v5 = ((a2 - 246) >> 8) + 1;
    *result = a2 + 10;
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
    *result = a2 + 10;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_100154078()
{
  result = qword_1009397C0;
  if (!qword_1009397C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009397C0);
  }

  return result;
}

unint64_t sub_1001540D0()
{
  result = qword_1009397C8;
  if (!qword_1009397C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009397C8);
  }

  return result;
}

unint64_t sub_100154128()
{
  result = qword_1009397D0;
  if (!qword_1009397D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009397D0);
  }

  return result;
}

unint64_t sub_100154180()
{
  result = qword_1009397D8;
  if (!qword_1009397D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009397D8);
  }

  return result;
}

unint64_t sub_1001541D8()
{
  result = qword_1009397E0;
  if (!qword_1009397E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009397E0);
  }

  return result;
}

unint64_t sub_100154230()
{
  result = qword_1009397E8;
  if (!qword_1009397E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009397E8);
  }

  return result;
}

unint64_t sub_100154288()
{
  result = qword_1009397F0;
  if (!qword_1009397F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009397F0);
  }

  return result;
}

unint64_t sub_1001542E0()
{
  result = qword_1009397F8;
  if (!qword_1009397F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009397F8);
  }

  return result;
}

unint64_t sub_100154338()
{
  result = qword_100939800;
  if (!qword_100939800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100939800);
  }

  return result;
}

unint64_t sub_100154390()
{
  result = qword_100939808;
  if (!qword_100939808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100939808);
  }

  return result;
}

unint64_t sub_1001543E8()
{
  result = qword_100939810;
  if (!qword_100939810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100939810);
  }

  return result;
}

unint64_t sub_100154440()
{
  result = qword_100939818;
  if (!qword_100939818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100939818);
  }

  return result;
}

unint64_t sub_100154498()
{
  result = qword_100939820;
  if (!qword_100939820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100939820);
  }

  return result;
}

unint64_t sub_1001544F0()
{
  result = qword_100939828;
  if (!qword_100939828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100939828);
  }

  return result;
}

unint64_t sub_100154548()
{
  result = qword_100939830;
  if (!qword_100939830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100939830);
  }

  return result;
}

uint64_t sub_1001545D0()
{
  v1 = v0;
  v2 = _s10PredicatesOMa_1(0);
  __chkstk_darwin(v2, v2);
  v4 = &v178 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_storeEnumTagMultiPayload();
  v5 = sub_10001F6F4();
  sub_1000060C8(0, &unk_100938880, off_1008D41A8);
  v6 = [objc_allocWithZone(NSFetchRequest) init];
  v7 = [swift_getObjCClassFromMetadata() entity];
  [v6 setEntity:v7];

  [v6 setAffectedStores:0];
  [v6 setPredicate:v5];

  if (qword_100936520 != -1)
  {
    goto LABEL_128;
  }

  while (2)
  {
    sub_1000060C8(0, &qword_10093C980, NSSortDescriptor_ptr);
    isa = Array._bridgeToObjectiveC()().super.isa;
    [v6 setSortDescriptors:isa];

    v9 = NSManagedObjectContext.fetch<A>(_:)();
    if (v1)
    {
      sub_1001555B4(v4);

      return v1;
    }

    v180 = 0;
    v213 = v9;
    v1 = v9;
    sub_1000F5104(&qword_10093F6F0, qword_10079A300);
    sub_100155610();
    v10 = Sequence.elements<A>(ofType:)();
    v1, v11, v12, v13, v14, v15, v16, v17;

    v213 = &_swiftEmptyArrayStorage;
    if (v10 >> 62)
    {
LABEL_131:
      v25 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v25 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v181 = v4;
    if (!v25)
    {
      v185 = &_swiftEmptyArrayStorage;
LABEL_122:
      v10, v18, v19, v20, v21, v22, v23, v24;
      v167 = objc_allocWithZone(REMFamilyChecklistSharedGroceryListInvocationResult);
      sub_1000060C8(0, &qword_100939838, REMFamilyChecklistSharedGroceryList_ptr);
      v168 = v185;
      v169 = Array._bridgeToObjectiveC()().super.isa;
      v168, v170, v171, v172, v173, v174, v175, v176;
      v1 = [v167 initWithSharedGroceryLists:v169];

      sub_1001555B4(v181);
      return v1;
    }

    v26 = 0;
    v6 = (v10 & 0xC000000000000001);
    v187 = v10 & 0xFFFFFFFFFFFFFF8;
    v186 = v10 + 32;
    v185 = &_swiftEmptyArrayStorage;
    v189 = v10;
    v188 = v25;
    v190 = v10 & 0xC000000000000001;
    while (1)
    {
      if (v6)
      {
        v27 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v26 >= *(v187 + 16))
        {
          goto LABEL_127;
        }

        v27 = *(v186 + 8 * v26);
      }

      v28 = v27;
      v29 = __OFADD__(v26++, 1);
      if (v29)
      {
        goto LABEL_125;
      }

      v30 = [v27 remObjectID];
      if (!v30)
      {
        goto LABEL_9;
      }

      v31 = v30;
      v32 = [v28 sharees];
      if (v32)
      {
        break;
      }

LABEL_9:
LABEL_10:
      if (v26 == v25)
      {
        goto LABEL_122;
      }
    }

    v33 = v32;
    v192 = v31;
    v199 = v28;
    v34 = sub_1000060C8(0, &qword_100942E50, off_1008D41E0);
    sub_10000CE28(&qword_100939840, &qword_100942E50, off_1008D41E0);
    v35 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

    v36 = v35;
    v193 = v26;
    v200 = v34;
    if ((v35 & 0xC000000000000001) != 0)
    {
      __CocoaSet.makeIterator()();
      Set.Iterator.init(_cocoa:)();
      v36 = v208;
      v37 = v209;
      v38 = v210;
      v39 = v211;
      v40 = v212;
    }

    else
    {
      v39 = 0;
      v41 = -1 << *(v35 + 32);
      v37 = v35 + 56;
      v38 = ~v41;
      v42 = -v41;
      if (v42 < 64)
      {
        v43 = ~(-1 << v42);
      }

      else
      {
        v43 = -1;
      }

      v40 = v43 & *(v35 + 56);
    }

    v197 = v40;
    v191 = v38;
    v44 = (v38 + 64) >> 6;
    v4 = _swiftEmptySetSingleton;
    v45 = _swiftEmptySetSingleton;
    v202 = v37;
    v203 = v36;
LABEL_25:
    v1 = v39;
    v46 = v197;
LABEL_28:
    if (v36 < 0)
    {
      v58 = __CocoaSet.Iterator.next()();
      if (v58)
      {
        v206 = v58;
        swift_dynamicCast();
        v57 = v207;
        v39 = v1;
        v56 = v46;
        if (v207)
        {
          goto LABEL_37;
        }

LABEL_119:
        v36 = v203;
      }

      else
      {
        v36 = v203;
      }

LABEL_112:
      sub_10001B860(v36);
      v10 = v189;
      v25 = v188;
      v26 = v193;
      if ((v4 & 0xC000000000000001) != 0)
      {
        v157 = __CocoaSet.count.getter();
        v1 = v199;
        if (!v157)
        {
          goto LABEL_118;
        }
      }

      else
      {
        v1 = v199;
        if (!*(v4 + 16))
        {
LABEL_118:
          v4, v150, v151, v152, v153, v154, v155, v156;

          goto LABEL_10;
        }
      }

      v158 = objc_allocWithZone(REMFamilyChecklistSharedGroceryList);
      sub_1000060C8(0, &unk_10093C970, REMContactRepresentation_ptr);
      sub_10000CE28(&qword_100939848, &unk_10093C970, REMContactRepresentation_ptr);
      v1 = v192;
      v159 = Set._bridgeToObjectiveC()().super.isa;
      v4, v160, v161, v162, v163, v164, v165, v166;
      [v158 initWithListID:v1 participants:v159];

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v213 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v213 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

      v185 = v213;
      v6 = v190;
      goto LABEL_10;
    }

    v54 = v1;
    v55 = v46;
    v39 = v1;
    if (!v46)
    {
      while (1)
      {
        v39 = v54 + 1;
        if (__OFADD__(v54, 1))
        {
          break;
        }

        if (v39 >= v44)
        {
          goto LABEL_112;
        }

        v55 = *(v37 + 8 * v39);
        ++v54;
        if (v55)
        {
          goto LABEL_33;
        }
      }

      __break(1u);
LABEL_125:
      __break(1u);
LABEL_126:
      __break(1u);
LABEL_127:
      __break(1u);
LABEL_128:
      swift_once();
      continue;
    }

    break;
  }

LABEL_33:
  v56 = (v55 - 1) & v55;
  v57 = *(*(v36 + 48) + ((v39 << 9) | (8 * __clz(__rbit64(v55)))));
  if (!v57)
  {
    goto LABEL_119;
  }

LABEL_37:
  v205 = v57;
  v59 = [v57 address];
  if (!v59 || (v60 = v59, static String._unconditionallyBridgeFromObjectiveC(_:)(), v60, v61 = sub_1000060C8(0, &unk_10093C970, REMContactRepresentation_ptr), (v62 = REMContactRepresentation.init(address:)()) == 0))
  {
LABEL_27:

    v1 = v39;
    v46 = v56;
    v37 = v202;
    v36 = v203;
    goto LABEL_28;
  }

  v201 = v62;
  v63 = [v198 commonSharees];
  v204 = v61;
  v64 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v64 >> 62)
  {
    v65 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v65 = *((v64 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v1 = v4;
  v66 = v201;
  if (!v65)
  {

    v64, v47, v48, v49, v50, v51, v52, v53;
    goto LABEL_27;
  }

  if (v65 >= 1)
  {
    v4 = 0;
    v196 = v64 & 0xC000000000000001;
    v183 = v64 + 32;
    v197 = v56;
    v10 = v45;
    v194 = v65;
    v195 = v64;
    while (1)
    {
      v68 = v196 ? specialized _ArrayBuffer._getElementSlowPath(_:)() : *(v183 + 8 * v4);
      v69 = v68;
      if (![v68 matchesContactRepresentation:v66])
      {
        break;
      }

      if ((v1 & 0xC000000000000001) == 0)
      {
        v184 = v4;
        v182 = v10;
        v80 = NSObject._rawHashValue(seed:)(*(v1 + 40));
        v81 = v1 + 56;
        v82 = v1;
        v83 = -1 << *(v1 + 32);
        v1 = v80 & ~v83;
        if ((*(v81 + ((v1 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v1))
        {
          v84 = ~v83;
          while (1)
          {
            v85 = *(*(v82 + 48) + 8 * v1);
            v86 = static NSObject.== infix(_:_:)();

            if (v86)
            {
              break;
            }

            v1 = (v1 + 1) & v84;
            if (((*(v81 + ((v1 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v1) & 1) == 0)
            {
              goto LABEL_63;
            }
          }

          v6 = v190;
          v1 = v82;
          v10 = v182;
          v66 = v201;
          v67 = v195;
          v4 = v184;
          goto LABEL_48;
        }

LABEL_63:
        v10 = v182;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v207 = v10;
        v88 = *(v10 + 16);
        if (*(v10 + 24) <= v88)
        {
          if (isUniquelyReferenced_nonNull_native)
          {
            sub_100380E50(v88 + 1);
          }

          else
          {
            sub_10038B97C(v88 + 1);
          }

          v4 = v184;
          v134 = v207;
          v135 = NSObject._rawHashValue(seed:)(v207[5]);
          v136 = v134 + 7;
          v10 = v134;
          v137 = -1 << *(v134 + 32);
          v1 = v135 & ~v137;
          if ((*(v136 + ((v1 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v1))
          {
            v138 = ~v137;
            while (1)
            {
              v139 = *(*(v10 + 48) + 8 * v1);
              v140 = static NSObject.== infix(_:_:)();

              if (v140)
              {
                goto LABEL_134;
              }

              v1 = (v1 + 1) & v138;
              if (((*(v136 + ((v1 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v1) & 1) == 0)
              {
                v6 = v190;
                v66 = v201;
                goto LABEL_104;
              }
            }
          }

          v6 = v190;
          v66 = v201;
        }

        else
        {
          v6 = v190;
          v66 = v201;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_1000F5104(&qword_100943FD0, &qword_100796890);
            v89 = static _SetStorage.copy(original:)();
            if (*(v10 + 16))
            {
              v97 = v89;
              v98 = (v89 + 56);
              v99 = ((1 << *(v97 + 32)) + 63) >> 6;
              v100 = v97;
              if (v97 != v10 || v98 >= v10 + 56 + 8 * v99)
              {
                memmove(v98, (v10 + 56), 8 * v99);
              }

              v179 = v10 + 56;
              v101 = 0;
              *(v100 + 16) = *(v10 + 16);
              v102 = 1 << *(v10 + 32);
              v103 = *(v10 + 56);
              if (v102 < 64)
              {
                v104 = ~(-1 << v102);
              }

              else
              {
                v104 = -1;
              }

              v105 = v104 & v103;
              v106 = (v102 + 63) >> 6;
              if ((v104 & v103) != 0)
              {
                do
                {
                  v107 = __clz(__rbit64(v105));
                  v105 &= v105 - 1;
LABEL_79:
                  v110 = v107 | (v101 << 6);
                  v111 = *(*(v10 + 48) + 8 * v110);
                  *(*(v100 + 48) + 8 * v110) = v111;
                  v112 = v111;
                }

                while (v105);
              }

              v108 = v101;
              while (1)
              {
                v101 = v108 + 1;
                if (__OFADD__(v108, 1))
                {
                  goto LABEL_133;
                }

                if (v101 >= v106)
                {
                  v6 = v190;
                  goto LABEL_110;
                }

                v109 = *(v179 + 8 * v101);
                ++v108;
                if (v109)
                {
                  v107 = __clz(__rbit64(v109));
                  v105 = (v109 - 1) & v109;
                  goto LABEL_79;
                }
              }
            }

            v100 = v89;
LABEL_110:
            v66 = v201;
            v10, v90, v91, v92, v93, v94, v95, v96;
            v10 = v100;
          }

LABEL_104:
          v4 = v184;
        }

        *(v10 + ((v1 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) |= 1 << v1;
        *(*(v10 + 48) + 8 * v1) = v69;
        v141 = *(v10 + 16);
        v29 = __OFADD__(v141, 1);
        v142 = v141 + 1;
        if (v29)
        {
          __break(1u);
LABEL_130:
          __break(1u);
          goto LABEL_131;
        }

        v1 = v10;
        *(v10 + 16) = v142;
        goto LABEL_47;
      }

      if ((v1 & 0x8000000000000000) != 0)
      {
        v70 = v1;
      }

      else
      {
        v70 = v1 & 0xFFFFFFFFFFFFFF8;
      }

      v71 = v69;

      v72 = __CocoaSet.member(for:)();

      if (v72)
      {
        v1, v73, v74, v75, v76, v77, v78, v79;

        v206 = v72;
        swift_dynamicCast();

        v66 = v201;
        goto LABEL_47;
      }

      v113 = __CocoaSet.count.getter();
      if (__OFADD__(v113, 1))
      {
        goto LABEL_130;
      }

      v10 = sub_10037FBC0(v70, v113 + 1);
      v207 = v10;
      v114 = *(v10 + 16);
      if (*(v10 + 24) <= v114)
      {
        sub_100380E50(v114 + 1);
        v10 = v207;
      }

      v115 = *(v10 + 40);
      v116 = v71;
      v117 = NSObject._rawHashValue(seed:)(v115);
      v118 = v10 + 56;
      v119 = -1 << *(v10 + 32);
      v120 = v117 & ~v119;
      v121 = v120 >> 6;
      if (((-1 << v120) & ~*(v10 + 56 + 8 * (v120 >> 6))) == 0)
      {
        v123 = 0;
        v124 = (63 - v119) >> 6;
        v67 = v195;
        while (++v121 != v124 || (v123 & 1) == 0)
        {
          v125 = v121 == v124;
          if (v121 == v124)
          {
            v121 = 0;
          }

          v123 |= v125;
          v126 = *(v118 + 8 * v121);
          if (v126 != -1)
          {
            v122 = __clz(__rbit64(~v126)) + (v121 << 6);
            goto LABEL_97;
          }
        }

        goto LABEL_126;
      }

      v122 = __clz(__rbit64((-1 << v120) & ~*(v10 + 56 + 8 * (v120 >> 6)))) | v120 & 0x7FFFFFFFFFFFFFC0;
      v67 = v195;
LABEL_97:
      *(v118 + ((v122 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v122;
      *(*(v10 + 48) + 8 * v122) = v116;
      ++*(v10 + 16);

      v1, v127, v128, v129, v130, v131, v132, v133;
      v1 = v10;
      v66 = v201;
LABEL_48:
      if (++v4 == v194)
      {
        v45 = v10;
        v4 = v1;

        v67, v143, v144, v145, v146, v147, v148, v149;
        v37 = v202;
        v36 = v203;
        goto LABEL_25;
      }
    }

LABEL_47:
    v67 = v195;
    goto LABEL_48;
  }

  __break(1u);
LABEL_133:
  __break(1u);
LABEL_134:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void sub_1001553C8(uint64_t a1)
{
  v4 = objc_opt_self();
  v5 = [objc_opt_self() sharedInstance];
  v6 = [v4 unsafeUntilSystemReady_primaryCloudKitAccountInContext:a1 appleAccountUtilities:v5];

  if (v6 && [v6 didChooseToMigrate])
  {
    v7 = [v6 didFinishMigration] ^ 1;
  }

  else
  {
    v7 = 1;
  }

  v8 = [v1 localeIdentifier];
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;

  type metadata accessor for REMGroceryDummyModel();
  v11 = static REMGroceryDummyModel.isSupported(localeIdentifier:)();
  if (v2)
  {
    v10, v12, v13, v14, v15, v16, v17, v18;

    return;
  }

  v19 = v11;
  v10, v12, v13, v14, v15, v16, v17, v18;
  if ((v19 & 1) == 0)
  {
    if (v6)
    {
      v20 = 272;
    }

    else
    {
      v20 = 20;
    }

    if ((v7 & 1) == 0)
    {
      v21 = 0;
      v20 = 16;
      goto LABEL_19;
    }

    goto LABEL_17;
  }

  if (v6)
  {
    v20 = 256;
  }

  else
  {
    v20 = 4;
  }

  if (v7)
  {
LABEL_17:
    v21 = 0;
    goto LABEL_19;
  }

  v20 = 0;
  v21 = 1;
LABEL_19:
  v22 = [objc_allocWithZone(REMFamilyChecklistFamilyGroceryListEligibility) initWithIsEligible:v21 ineligibilityReasons:v20];
  [objc_allocWithZone(REMFamilyChecklistFamilyGroceryListEligibilityInvocationResult) initWithFamilyGroceryListEligibility:v22];
}

uint64_t sub_1001555B4(uint64_t a1)
{
  v2 = _s10PredicatesOMa_1(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_100155610()
{
  result = qword_100945210;
  if (!qword_100945210)
  {
    sub_1000F514C(&qword_10093F6F0, qword_10079A300);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100945210);
  }

  return result;
}

void sub_100155674(unint64_t a1, void *a2, void *a3)
{
  if (a1 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    for (j = 0; ; ++j)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (j >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v8 = *(a1 + 8 * j + 32);
      }

      v9 = v8;
      v10 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      v11 = [v8 completed];
      v12 = v9;
      if (v11)
      {
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((*a2 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*a2 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }
      }

      else
      {
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((*a3 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*a3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

      if (v10 == i)
      {
        return;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }
}

unint64_t sub_100155828(unint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v8 = type metadata accessor for REMRemindersListDataView.ShowCompleted();
  v9 = *(v8 - 8);
  v11 = __chkstk_darwin(v8, v10);
  v13 = (&v67 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v9 + 16))(v13, a2, v8, v11);
  v14 = (*(v9 + 88))(v13, v8);
  if (v14 == enum case for REMRemindersListDataView.ShowCompleted.after(_:))
  {
    (*(v9 + 8))(v13, v8);
LABEL_10:
    v24 = _swiftEmptySetSingleton;
    goto LABEL_11;
  }

  if (v14 != enum case for REMRemindersListDataView.ShowCompleted.allowlist(_:))
  {
    if (v14 != enum case for REMRemindersListDataView.ShowCompleted.off(_:) && v14 != enum case for REMRemindersListDataView.ShowCompleted.on(_:))
    {
      result = _diagnoseUnexpectedEnumCase<A>(type:)();
      __break(1u);
      return result;
    }

    goto LABEL_10;
  }

  (*(v9 + 96))(v13, v8);
  v22 = *v13;
  sub_100393DD8(*v13);
  v24 = v23;
  v22, v25, v26, v27, v28, v29, v30, v31;
LABEL_11:
  v69 = a3;
  v76 = &_swiftEmptyArrayStorage;
  if (a4 >> 62)
  {
    goto LABEL_39;
  }

  for (i = *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v67 = a1;
    v68 = a4;
    a1 = 0;
    v74 = a4 & 0xFFFFFFFFFFFFFF8;
    v75 = a4 & 0xC000000000000001;
    v34 = v24 & 0xFFFFFFFFFFFFFF8;
    if (v24 < 0)
    {
      v34 = v24;
    }

    v70 = v34;
    v71 = v24 & 0xC000000000000001;
    v72 = v24 + 56;
    v73 = a4 + 32;
    while (1)
    {
      if (v75)
      {
        v35 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (a1 >= *(v74 + 16))
        {
          goto LABEL_38;
        }

        v35 = *(v73 + 8 * a1);
      }

      v36 = v35;
      if (__OFADD__(a1++, 1))
      {
        break;
      }

      v38 = [v35 remObjectID];
      if (!v38)
      {
        goto LABEL_16;
      }

      v39 = v38;
      if (([v36 completed] & 1) == 0)
      {
        goto LABEL_33;
      }

      if (v71)
      {
        v40 = v39;
        v41 = __CocoaSet.contains(_:)();

        if (v41)
        {
          goto LABEL_34;
        }

LABEL_16:

        goto LABEL_17;
      }

      if (*(v24 + 16))
      {
        sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
        v42 = NSObject._rawHashValue(seed:)(*(v24 + 40));
        v43 = -1 << *(v24 + 32);
        v44 = v42 & ~v43;
        if ((*(v72 + ((v44 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v44))
        {
          v45 = ~v43;
          while (1)
          {
            a4 = *(*(v24 + 48) + 8 * v44);
            v46 = static NSObject.== infix(_:_:)();

            if (v46)
            {
              break;
            }

            v44 = (v44 + 1) & v45;
            if (((*(v72 + ((v44 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v44) & 1) == 0)
            {
              goto LABEL_32;
            }
          }

LABEL_33:

LABEL_34:
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
          goto LABEL_17;
        }
      }

LABEL_32:

LABEL_17:
      if (a1 == i)
      {
        v47 = v76;
        a1 = v67;
        a4 = v68;
        goto LABEL_41;
      }
    }

    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    ;
  }

  v47 = &_swiftEmptyArrayStorage;
LABEL_41:
  v24, v15, v16, v17, v18, v19, v20, v21;
  v48 = sub_1001A574C(v47);

  sub_1002143F0(v48);
  v50 = v49;
  v48, v51, v52, v53, v54, v55, v56, v57;
  v58 = sub_1002672EC(a1, v50, a4);
  v50, v59, v60, v61, v62, v63, v64, v65;
  return v58;
}

_TtC7remindd19RDXPCStorePerformer *sub_100155C54(uint64_t a1, void *a2, unint64_t a3)
{
  v55 = a2;
  v46 = type metadata accessor for REMCustomSmartListFilterDescriptor.PostFetchPredicate.FilterableReminder();
  v5 = *(v46 - 8);
  __chkstk_darwin(v46, v6);
  v45 = v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for UUID();
  v40 = *(v8 - 8);
  __chkstk_darwin(v8, v9);
  v11 = v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12, v13);
  v42 = v39 - v14;
  __chkstk_darwin(v15, v16);
  v54 = v39 - v17;
  v47 = a1;
  if (*(a1 + 16))
  {
    v58 = &_swiftEmptyArrayStorage;
    if (a3 >> 62)
    {
      goto LABEL_27;
    }

    for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
    {
      v19 = 0;
      v50 = a3 & 0xFFFFFFFFFFFFFF8;
      v51 = a3 & 0xC000000000000001;
      v39[1] = a3;
      v48 = a3 + 32;
      v49 = i;
      v41 = (v40 + 32);
      v52 = v40 + 16;
      v53 = v55 + 7;
      a3 = v40 + 8;
      v44 = (v5 + 8);
      while (1)
      {
        if (v51)
        {
          v20 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v19 >= *(v50 + 16))
          {
            goto LABEL_26;
          }

          v20 = *(v48 + 8 * v19);
        }

        v21 = v20;
        if (__OFADD__(v19++, 1))
        {
          break;
        }

        if (v55[2])
        {
          v23 = [v20 identifier];
          if (v23)
          {
            v43 = v21;
            v24 = v42;
            v25 = v23;
            static UUID._unconditionallyBridgeFromObjectiveC(_:)();

            (*v41)(v54, v24, v8);
            if (v55[2])
            {
              v26 = v55;
              sub_100157B5C(&qword_10093B410, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
              v27 = dispatch thunk of Hashable._rawHashValue(seed:)();
              v28 = -1 << *(v26 + 32);
              v29 = v27 & ~v28;
              if ((*(v53 + ((v29 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v29))
              {
                v30 = ~v28;
                v31 = *(v40 + 72);
                v32 = *(v40 + 16);
                while (1)
                {
                  v32(v11, v55[6] + v31 * v29, v8);
                  sub_100157B5C(&qword_10093A3E0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
                  v33 = dispatch thunk of static Equatable.== infix(_:_:)();
                  v34 = *a3;
                  (*a3)(v11, v8);
                  if (v33)
                  {
                    break;
                  }

                  v29 = (v29 + 1) & v30;
                  if (((*(v53 + ((v29 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v29) & 1) == 0)
                  {
                    goto LABEL_19;
                  }
                }

                v34(v54, v8);
                goto LABEL_6;
              }
            }

LABEL_19:
            (*a3)(v54, v8);
            v21 = v43;
          }
        }

        v56 = v47;
        v57 = v47;
        v35 = v21;
        sub_1000F5104(&qword_100949370, &unk_100797770);
        sub_10000CB48(&qword_100939850, &qword_100949370, &unk_100797770, &protocol conformance descriptor for [A]);
        Predicate = Sequence<>.postFetchPredicateTypes.getter();
        v37 = v45;
        sub_10059062C(v35, Predicate, v45);
        v5 = Sequence<>.evaluate(with:)();
        (*v44)(v37, v46);
        if ((v5 & 1) == 0)
        {

          goto LABEL_7;
        }

LABEL_6:
        v5 = &v58;
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
LABEL_7:
        if (v19 == v49)
        {
          return v58;
        }
      }

      __break(1u);
LABEL_26:
      __break(1u);
LABEL_27:
      ;
    }

    return &_swiftEmptyArrayStorage;
  }

  else
  {
  }

  return a3;
}

_TtC7remindd19RDXPCStorePerformer *sub_1001561A0(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v6 = type metadata accessor for REMRemindersListDataView.ShowCompleted();
  v7 = *(v6 - 8);
  v9 = __chkstk_darwin(v6, v8);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v11, a2, v6, v9);
  v12 = (*(v7 + 88))(v11, v6);
  if (v12 == enum case for REMRemindersListDataView.ShowCompleted.after(_:))
  {
    (*(v7 + 8))(v11, v6);
LABEL_3:
    v33 = &_swiftEmptyArrayStorage;
    v34 = &_swiftEmptyArrayStorage;
    sub_100155674(a3, &v33, &v34);
    v14 = v33;
    v13 = v34;
    v15 = sub_1001566AC(a1, v34);
    v13, v16, v17, v18, v19, v20, v21, v22;
    v23 = sub_1001566AC(a1, v14);
    v14, v24, v25, v26, v27, v28, v29, v30;
    v34 = v15;
    sub_100271930(v23);
    return v34;
  }

  if (v12 == enum case for REMRemindersListDataView.ShowCompleted.allowlist(_:))
  {
    (*(v7 + 8))(v11, v6);
    return sub_1001566AC(a1, a3);
  }

  if (v12 == enum case for REMRemindersListDataView.ShowCompleted.off(_:))
  {
    return sub_1001566AC(a1, a3);
  }

  if (v12 == enum case for REMRemindersListDataView.ShowCompleted.on(_:))
  {
    goto LABEL_3;
  }

  result = _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
  return result;
}

_TtC7remindd19RDXPCStorePerformer *sub_1001563A0(uint64_t a1)
{
  v2 = sub_1000F5104(&qword_100939860, &unk_10079D480);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2, v4);
  v41 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6, v7);
  v40 = &v33 - v8;
  v11 = __chkstk_darwin(v9, v10);
  v13 = &v33 - v12;
  v14 = *(a1 + 16);
  if (!v14)
  {
    return &_swiftEmptyArrayStorage;
  }

  v17 = *(v3 + 16);
  v15 = v3 + 16;
  v16 = v17;
  v37 = (*(v15 + 64) + 32) & ~*(v15 + 64);
  v18 = a1 + v37;
  v19 = *(v15 + 56);
  v35 = (v15 + 16);
  v36 = v19;
  v34 = (v15 - 8);
  v20 = &_swiftEmptyArrayStorage;
  v21 = &_swiftEmptyArrayStorage;
  v38 = v17;
  v39 = v15;
  (v17)(v13, v18, v2, v11);
  while (1)
  {
    REMSortableElement.element.getter();
    v27 = v42;
    v28 = [v42 completed];

    if (v28)
    {
      v16(v40, v13, v2);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v21 = sub_100365A00(0, *v21->clientIdentity + 1, 1, v21);
      }

      v30 = *v21->clientIdentity;
      v29 = *&v21->clientIdentity[8];
      v31 = v30 + 1;
      if (v30 >= v29 >> 1)
      {
        v23 = sub_100365A00((v29 > 1), v30 + 1, 1, v21);
        v24 = v40;
        v21 = v23;
      }

      else
      {
        v23 = v21;
        v24 = v40;
      }
    }

    else
    {
      v16(v41, v13, v2);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v20 = sub_100365A00(0, *v20->clientIdentity + 1, 1, v20);
      }

      v30 = *v20->clientIdentity;
      v32 = *&v20->clientIdentity[8];
      v31 = v30 + 1;
      if (v30 >= v32 >> 1)
      {
        v23 = sub_100365A00((v32 > 1), v30 + 1, 1, v20);
        v24 = v41;
        v20 = v23;
      }

      else
      {
        v23 = v20;
        v24 = v41;
      }
    }

    *v23->clientIdentity = v31;
    v25 = v36;
    (*v35)(v23 + v37 + v30 * v36, v24, v2);
    (*v34)(v13, v2);
    v18 += v25;
    --v14;
    v16 = v38;
    if (!v14)
    {
      break;
    }

    (v38)(v13, v18, v2, v26);
  }

  return v20;
}

_TtC7remindd19RDXPCStorePerformer *sub_1001566AC(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for REMRemindersListDataView.SortingDirection();
  v3 = *(v2 - 8);
  v5 = __chkstk_darwin(v2, v4);
  v7 = v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 104))(v7, enum case for REMRemindersListDataView.SortingDirection.ascending(_:), v2, v5);
  sub_100157B5C(&qword_100939858, &type metadata accessor for REMRemindersListDataView.SortingDirection, &protocol conformance descriptor for REMRemindersListDataView.SortingDirection);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  (*(v3 + 8))(v7, v2);
  if (v12 == v11[2])
  {
    v8 = -1;
  }

  else
  {
    v8 = 1;
  }

  v12 = sub_10043630C(v9);
  sub_100156BC4(&v12, v8);
  return v12;
}

BOOL sub_100156848(id *a1, void **a2, uint64_t a3)
{
  v4 = *a2;
  v5 = [*a1 title];
  if (v5)
  {
    v6 = v5;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;
  }

  else
  {
    v8 = 0xE000000000000000;
  }

  v9 = [v4 title];
  if (v9)
  {
    v10 = v9;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = v11;
  }

  else
  {
    v12 = 0xE000000000000000;
  }

  sub_10013BCF4();
  v13 = StringProtocol.localizedStandardCompare<A>(_:)();
  v8, v14, v15, v16, v17, v18, v19, v20;
  v12, v21, v22, v23, v24, v25, v26, v27;
  return v13 == a3;
}

uint64_t sub_100156950(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for REMRemindersListDataView.ShowCompleted();
  v6 = *(v5 - 8);
  v8 = __chkstk_darwin(v5, v7);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v10, a2, v5, v8);
  v11 = (*(v6 + 88))(v10, v5);
  if (v11 == enum case for REMRemindersListDataView.ShowCompleted.after(_:))
  {
    (*(v6 + 8))(v10, v5);
LABEL_3:
    v12 = sub_1001563A0(a3);
    v14 = v13;
    sub_1000F5104(&qword_100939860, &unk_10079D480);
    sub_10000CB48(&qword_100939868, &qword_100939860, &unk_10079D480, &protocol conformance descriptor for REMSortableElement<A>);
    v15 = Array<A>.sorted(by:)();
    v12, v16, v17, v18, v19, v20, v21, v22;
    v25 = v15;
    sub_100271948(v14);
    return v25;
  }

  if (v11 == enum case for REMRemindersListDataView.ShowCompleted.allowlist(_:))
  {
    (*(v6 + 8))(v10, v5);
LABEL_7:
    sub_1000F5104(&qword_100939860, &unk_10079D480);
    sub_10000CB48(&qword_100939868, &qword_100939860, &unk_10079D480, &protocol conformance descriptor for REMSortableElement<A>);
    return Array<A>.sorted(by:)();
  }

  if (v11 == enum case for REMRemindersListDataView.ShowCompleted.off(_:))
  {
    goto LABEL_7;
  }

  if (v11 == enum case for REMRemindersListDataView.ShowCompleted.on(_:))
  {
    goto LABEL_3;
  }

  result = _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
  return result;
}

uint64_t sub_100156BC4(uint64_t *a1, void *a2)
{
  v4 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v4;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v4 = sub_10043653C(v4);
    *a1 = v4;
  }

  v6 = *(v4 + 16);
  v8[0] = v4 + 32;
  v8[1] = v6;
  sub_100156C48(v8, a2);
  return specialized ContiguousArray._endMutation()();
}

void sub_100156C48(uint64_t *a1, void *a2)
{
  v4 = a1[1];
  v5 = _minimumMergeRunLength(_:)(v4);
  if (v5 < v4)
  {
    if (v4 >= -1)
    {
      v9 = v5;
      v10 = v4 / 2;
      if (v4 <= 1)
      {
        v11 = &_swiftEmptyArrayStorage;
      }

      else
      {
        sub_1000060C8(0, &qword_100939EE0, off_1008D41D0);
        v11 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10) = v10;
      }

      v12 = v11 & 0xFFFFFFFFFFFFFF8;
      v21[0] = ((v11 & 0xFFFFFFFFFFFFFF8) + 32);
      v21[1] = v10;
      v13 = v11;
      sub_100156F08(v21, v22, a1, v9, a2, v6, v7, v8);
      *(v12 + 16) = 0;
      v13, v14, v15, v16, v17, v18, v19, v20;
      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v4 < 0)
  {
    goto LABEL_12;
  }

  if (v4)
  {
    sub_100156D68(0, v4, 1, a1, a2);
  }
}

void sub_100156D68(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  if (a3 != a2)
  {
    v43 = *a4;
    v5 = *a4 + 8 * a3 - 8;
    v6 = result - a3;
    v7 = &selRef_setRecordZoneChangeTokensUpdatedBlock_;
LABEL_5:
    v41 = a3;
    v8 = *(v43 + 8 * a3);
    v39 = v6;
    v40 = v5;
    while (1)
    {
      v9 = *v5;
      v10 = v8;
      v11 = v9;
      v12 = [v10 v7[250]];
      if (v12)
      {
        v13 = v12;
        static String._unconditionallyBridgeFromObjectiveC(_:)();
        v15 = v14;
      }

      else
      {
        v15 = 0xE000000000000000;
      }

      v16 = v7;
      v17 = [v11 v7[250]];
      if (v17)
      {
        v18 = v17;
        static String._unconditionallyBridgeFromObjectiveC(_:)();
        v20 = v19;
      }

      else
      {
        v20 = 0xE000000000000000;
      }

      sub_10013BCF4();
      v21 = StringProtocol.localizedStandardCompare<A>(_:)();

      v15, v22, v23, v24, v25, v26, v27, v28;
      v20, v29, v30, v31, v32, v33, v34, v35;
      v7 = v16;
      if (v21 != a5)
      {
LABEL_4:
        a3 = v41 + 1;
        v5 = v40 + 8;
        v6 = v39 - 1;
        if (v41 + 1 == a2)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v43)
      {
        break;
      }

      v36 = *v5;
      v8 = *(v5 + 8);
      *v5 = v8;
      *(v5 + 8) = v36;
      v5 -= 8;
      if (__CFADD__(v6++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_100156F08(_TtC7remindd19RDXPCStorePerformer **a1, const char *a2, uint64_t *a3, char *a4, void *a5, void *a6, void *a7, void *a8)
{
  v10 = v8;
  v11 = a3;
  v12 = a3[1];
  if (v12 < 1)
  {
    v14 = &_swiftEmptyArrayStorage;
LABEL_4:
    v9 = v14;
    v14 = *a1;
    if (!*a1)
    {
      goto LABEL_147;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      goto LABEL_141;
    }

    goto LABEL_6;
  }

  v13 = 0;
  v14 = &_swiftEmptyArrayStorage;
  while (1)
  {
    v20 = v13;
    if (v13 + 1 >= v12)
    {
      v52 = v13 + 1;
    }

    else
    {
      v163 = v12;
      v21 = *v11;
      v168 = *(*v11 + 8 * (v13 + 1));
      v166 = *(v21 + 8 * v13);
      v22 = v166;
      v23 = v168;
      v24 = v22;
      v161 = sub_100156848(&v168, &v166, a5);
      if (v10)
      {
        v14, v25, v26, v27, v28, v29, v30, v31;

        return;
      }

      v32 = v20;
      v33 = v20 + 2;
      v153 = v32;
      v11 = (8 * v32);
      v10 = (v21 + 8 * v32 + 16);
      v159 = v14;
      while (1)
      {
        v52 = v163;
        if (v163 == v33)
        {
          break;
        }

        v53 = *(v10 - 1);
        v54 = *v10;
        v55 = v53;
        v56 = [v54 title];
        if (v56)
        {
          v57 = v56;
          v58 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v60 = v59;
        }

        else
        {
          v58 = 0;
          v60 = 0xE000000000000000;
        }

        v168 = v58;
        v169 = v60;
        v61 = [v55 title];
        if (v61)
        {
          v34 = v61;
          v35 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v9 = v36;
        }

        else
        {
          v35 = 0;
          v9 = 0xE000000000000000;
        }

        v166 = v35;
        v167 = v9;
        sub_10013BCF4();
        v37 = StringProtocol.localizedStandardCompare<A>(_:)();

        v60, v38, v39, v40, v41, v42, v43, v44;
        v9, v45, v46, v47, v48, v49, v50, v51;
        ++v33;
        ++v10;
        v14 = v159;
        if (((v161 ^ (v37 != a5)) & 1) == 0)
        {
          v52 = v33 - 1;
          break;
        }
      }

      v20 = v153;
      if (!v161)
      {
        goto LABEL_37;
      }

      if (v52 < v153)
      {
        goto LABEL_140;
      }

      if (v153 < v52)
      {
        v62 = 8 * v52 - 8;
        v63 = v52;
        v64 = v153;
        do
        {
          if (v64 != --v63)
          {
            v65 = *a3;
            if (!*a3)
            {
              goto LABEL_144;
            }

            v66 = *(v11 + v65);
            *(v11 + v65) = *(v65 + v62);
            *(v65 + v62) = v66;
          }

          ++v64;
          v62 -= 8;
          ++v11;
        }

        while (v64 < v63);
        v10 = 0;
        v11 = a3;
      }

      else
      {
LABEL_37:
        v10 = 0;
        v11 = a3;
      }
    }

    v67 = v11[1];
    if (v52 >= v67)
    {
      goto LABEL_50;
    }

    if (__OFSUB__(v52, v20))
    {
      goto LABEL_137;
    }

    v68 = v52;
    if (v52 - v20 >= a4)
    {
LABEL_50:
      if (v52 < v20)
      {
        goto LABEL_136;
      }

      goto LABEL_51;
    }

    if (__OFADD__(v20, a4))
    {
      goto LABEL_138;
    }

    if (&a4[v20] >= v67)
    {
      v69 = v11[1];
    }

    else
    {
      v69 = &a4[v20];
    }

    if (v69 < v20)
    {
LABEL_139:
      __break(1u);
LABEL_140:
      __break(1u);
LABEL_141:
      v9 = sub_1004361F4(v9, a2, a3, a4, a5, a6, a7, a8);
LABEL_6:
      v170 = v9;
      v15 = *(v9 + 16);
      if (v15 >= 2)
      {
        while (*v11)
        {
          v16 = *(v9 + 16 * v15);
          v17 = *(v9 + 16 * (v15 - 1) + 40);
          sub_100157718((*v11 + 8 * v16), (*v11 + 8 * *(v9 + 16 * (v15 - 1) + 32)), (*v11 + 8 * v17), &v14->super.isa, a5);
          if (v10)
          {
            goto LABEL_14;
          }

          if (v17 < v16)
          {
            goto LABEL_134;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v9 = sub_1004361F4(v9, a2, a3, a4, a5, a6, a7, a8);
          }

          if (v15 - 2 >= *(v9 + 16))
          {
            goto LABEL_135;
          }

          v18 = (v9 + 16 * v15);
          *v18 = v16;
          v18[1] = v17;
          v170 = v9;
          sub_100436168(v15 - 1);
          v9 = v170;
          v15 = *(v170 + 16);
          if (v15 <= 1)
          {
            goto LABEL_14;
          }
        }

        goto LABEL_145;
      }

LABEL_14:
      v19 = v9;
LABEL_118:
      v19, a2, a3, a4, a5, a6, a7, a8;
      return;
    }

    v70 = v68;
    if (v68 != v69)
    {
      break;
    }

    v52 = v68;
    if (v68 < v20)
    {
      goto LABEL_136;
    }

LABEL_51:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v14 = sub_1003658B8(0, *v14->clientIdentity + 1, 1, v14, a5, a6, a7, a8);
    }

    v72 = *v14->clientIdentity;
    v71 = *&v14->clientIdentity[8];
    v73 = v72 + 1;
    if (v72 >= v71 >> 1)
    {
      v150 = sub_1003658B8((v71 > 1), v72 + 1, 1, v14, a5, a6, a7, a8);
      v13 = v52;
      v14 = v150;
    }

    else
    {
      v13 = v52;
    }

    *v14->clientIdentity = v73;
    v74 = v14 + 16 * v72;
    *(v74 + 4) = v20;
    *(v74 + 5) = v13;
    v75 = *a1;
    if (!*a1)
    {
      goto LABEL_146;
    }

    if (v72)
    {
      while (1)
      {
        v9 = v73 - 1;
        if (v73 >= 4)
        {
          break;
        }

        if (v73 == 3)
        {
          v76 = *&v14->clientIdentity[16];
          v77 = *&v14->clientIdentity[24];
          v86 = __OFSUB__(v77, v76);
          v78 = v77 - v76;
          v79 = v86;
LABEL_70:
          if (v79)
          {
            goto LABEL_125;
          }

          v92 = &v14->super.isa + 2 * v73;
          v94 = *v92;
          v93 = v92[1];
          v95 = __OFSUB__(v93, v94);
          v96 = v93 - v94;
          v97 = v95;
          if (v95)
          {
            goto LABEL_128;
          }

          v98 = &v14->clientIdentity[16 * v9 + 16];
          v100 = *v98;
          v99 = *(v98 + 1);
          v86 = __OFSUB__(v99, v100);
          v101 = v99 - v100;
          if (v86)
          {
            goto LABEL_131;
          }

          if (__OFADD__(v96, v101))
          {
            goto LABEL_132;
          }

          if (v96 + v101 >= v78)
          {
            if (v78 < v101)
            {
              v9 = v73 - 2;
            }

            goto LABEL_91;
          }

          goto LABEL_84;
        }

        v102 = &v14->super.isa + 2 * v73;
        v104 = *v102;
        v103 = v102[1];
        v86 = __OFSUB__(v103, v104);
        v96 = v103 - v104;
        v97 = v86;
LABEL_84:
        if (v97)
        {
          goto LABEL_127;
        }

        v105 = v14 + 16 * v9;
        v107 = *(v105 + 4);
        v106 = *(v105 + 5);
        v86 = __OFSUB__(v106, v107);
        v108 = v106 - v107;
        if (v86)
        {
          goto LABEL_130;
        }

        if (v108 < v96)
        {
          v13 = v52;
          goto LABEL_15;
        }

LABEL_91:
        v113 = v9 - 1;
        if (v9 - 1 >= v73)
        {
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
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
          goto LABEL_139;
        }

        if (!*v11)
        {
          goto LABEL_143;
        }

        v114 = *&v14->clientIdentity[16 * v113 + 16];
        v115 = *&v14->clientIdentity[16 * v9 + 24];
        sub_100157718((*v11 + 8 * v114), (*v11 + 8 * *&v14->clientIdentity[16 * v9 + 16]), (*v11 + 8 * v115), v75, a5);
        if (v10)
        {
          v19 = v14;
          goto LABEL_118;
        }

        if (v115 < v114)
        {
          goto LABEL_121;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v14 = sub_1004361F4(v14, a2, a3, a4, a5, a6, a7, a8);
        }

        if (v113 >= *v14->clientIdentity)
        {
          goto LABEL_122;
        }

        v116 = v14 + 16 * v113;
        *(v116 + 4) = v114;
        *(v116 + 5) = v115;
        v170 = v14;
        sub_100436168(v9);
        v14 = v170;
        v73 = *(v170 + 16);
        v13 = v52;
        if (v73 <= 1)
        {
          goto LABEL_15;
        }
      }

      v80 = &v14->clientIdentity[16 * v73 + 16];
      v81 = *(v80 - 64);
      v82 = *(v80 - 56);
      v86 = __OFSUB__(v82, v81);
      v83 = v82 - v81;
      if (v86)
      {
        goto LABEL_123;
      }

      v85 = *(v80 - 48);
      v84 = *(v80 - 40);
      v86 = __OFSUB__(v84, v85);
      v78 = v84 - v85;
      v79 = v86;
      if (v86)
      {
        goto LABEL_124;
      }

      v87 = &v14->super.isa + 2 * v73;
      v89 = *v87;
      v88 = v87[1];
      v86 = __OFSUB__(v88, v89);
      v90 = v88 - v89;
      if (v86)
      {
        goto LABEL_126;
      }

      v86 = __OFADD__(v78, v90);
      v91 = v78 + v90;
      if (v86)
      {
        goto LABEL_129;
      }

      if (v91 >= v83)
      {
        v109 = &v14->clientIdentity[16 * v9 + 16];
        v111 = *v109;
        v110 = *(v109 + 1);
        v86 = __OFSUB__(v110, v111);
        v112 = v110 - v111;
        if (v86)
        {
          goto LABEL_133;
        }

        if (v78 < v112)
        {
          v9 = v73 - 2;
        }

        goto LABEL_91;
      }

      goto LABEL_70;
    }

LABEL_15:
    v12 = v11[1];
    if (v13 >= v12)
    {
      goto LABEL_4;
    }
  }

  v160 = v14;
  v152 = v10;
  v154 = v20;
  v117 = *v11;
  v118 = v20 - v68;
  v119 = v117 + 8 * v68 - 8;
  v157 = v69;
LABEL_102:
  v162 = v119;
  v164 = v70;
  v120 = *(v117 + 8 * v70);
  v158 = v118;
  while (1)
  {
    v121 = *v119;
    v9 = v120;
    v122 = v121;
    v123 = [v9 title];
    if (v123)
    {
      v124 = v123;
      v125 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v127 = v126;
    }

    else
    {
      v125 = 0;
      v127 = 0xE000000000000000;
    }

    v168 = v125;
    v169 = v127;
    v128 = [v122 title];
    if (v128)
    {
      v129 = v128;
      v130 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v132 = v131;
    }

    else
    {
      v130 = 0;
      v132 = 0xE000000000000000;
    }

    v166 = v130;
    v167 = v132;
    sub_10013BCF4();
    v133 = StringProtocol.localizedStandardCompare<A>(_:)();

    v127, v134, v135, v136, v137, v138, v139, v140;
    v132, v141, v142, v143, v144, v145, v146, v147;
    if (v133 != a5)
    {
LABEL_101:
      v70 = v164 + 1;
      v119 = v162 + 8;
      v52 = v157;
      v118 = v158 - 1;
      if (v164 + 1 != v157)
      {
        goto LABEL_102;
      }

      v10 = v152;
      v20 = v154;
      v11 = a3;
      v14 = v160;
      if (v157 < v154)
      {
        goto LABEL_136;
      }

      goto LABEL_51;
    }

    if (!v117)
    {
      break;
    }

    v148 = *v119;
    v120 = *(v119 + 8);
    *v119 = v120;
    *(v119 + 8) = v148;
    v119 -= 8;
    if (__CFADD__(v118++, 1))
    {
      goto LABEL_101;
    }
  }

  __break(1u);
LABEL_143:
  __break(1u);
LABEL_144:
  __break(1u);
LABEL_145:
  __break(1u);
LABEL_146:
  __break(1u);
LABEL_147:
  __break(1u);
}

uint64_t sub_100157718(void **__src, id *a2, id *a3, void **a4, uint64_t a5)
{
  v5 = a3;
  v6 = a2;
  v7 = __src;
  v8 = a2 - __src;
  v9 = a2 - __src + 7;
  if (a2 - __src >= 0)
  {
    v9 = a2 - __src;
  }

  v10 = v9 >> 3;
  v11 = a3 - a2;
  v12 = a3 - a2 + 7;
  if (a3 - a2 >= 0)
  {
    v12 = a3 - a2;
  }

  v13 = v12 >> 3;
  if (v10 >= v12 >> 3)
  {
    v16 = a4;
    if (a4 != a2 || &a2[v13] <= a4)
    {
      memmove(a4, a2, 8 * v13);
      v6 = a2;
    }

    v87 = &v16[v13];
    if (v11 < 8 || v6 <= v7)
    {
      v46 = v6;
    }

    else
    {
      v48 = &selRef_setRecordZoneChangeTokensUpdatedBlock_;
      v80 = v7;
      v86 = v16;
      do
      {
        __dsta = v6;
        v49 = v6 - 1;
        --v5;
        v50 = v87;
        v81 = v49;
        while (1)
        {
          v51 = *--v50;
          v52 = *v49;
          v53 = v51;
          v54 = v52;
          v55 = [v53 v48[250]];
          if (v55)
          {
            v56 = v55;
            static String._unconditionallyBridgeFromObjectiveC(_:)();
            v58 = v57;
          }

          else
          {
            v58 = 0xE000000000000000;
          }

          v59 = v48;
          v60 = [v54 v48[250]];
          if (v60)
          {
            v61 = v60;
            static String._unconditionallyBridgeFromObjectiveC(_:)();
            v63 = v62;
          }

          else
          {
            v63 = 0xE000000000000000;
          }

          sub_10013BCF4();
          v64 = StringProtocol.localizedStandardCompare<A>(_:)();

          v58, v65, v66, v67, v68, v69, v70, v71;
          v63, v72, v73, v74, v75, v76, v77, v78;
          if (v64 == a5)
          {
            break;
          }

          v48 = v59;
          if (v5 + 1 != v87)
          {
            *v5 = *v50;
          }

          --v5;
          v87 = v50;
          v49 = v81;
          if (v50 <= v86)
          {
            v87 = v50;
            v16 = v86;
            v46 = __dsta;
            goto LABEL_50;
          }
        }

        v46 = v81;
        v48 = v59;
        if (v5 + 1 != __dsta)
        {
          *v5 = *v81;
        }

        v16 = v86;
        if (v87 <= v86)
        {
          break;
        }

        v6 = v81;
      }

      while (v81 > v80);
    }
  }

  else
  {
    if (a4 != __src || &__src[v10] <= a4)
    {
      v14 = a4;
      memmove(a4, __src, 8 * v10);
      v6 = a2;
      a4 = v14;
    }

    v87 = &a4[v10];
    v16 = a4;
    if (v8 >= 8 && v6 < v5)
    {
      v17 = &selRef_setRecordZoneChangeTokensUpdatedBlock_;
      while (1)
      {
        __dst = v6;
        v85 = v16;
        v18 = *v16;
        v19 = *v6;
        v20 = v18;
        v21 = [v19 v17[250]];
        if (v21)
        {
          v22 = v21;
          static String._unconditionallyBridgeFromObjectiveC(_:)();
          v24 = v23;
        }

        else
        {
          v24 = 0xE000000000000000;
        }

        v25 = v17;
        v26 = [v20 v17[250]];
        if (v26)
        {
          v27 = v26;
          static String._unconditionallyBridgeFromObjectiveC(_:)();
          v29 = v28;
        }

        else
        {
          v29 = 0xE000000000000000;
        }

        sub_10013BCF4();
        v30 = StringProtocol.localizedStandardCompare<A>(_:)();

        v24, v31, v32, v33, v34, v35, v36, v37;
        v29, v38, v39, v40, v41, v42, v43, v44;
        if (v30 != a5)
        {
          break;
        }

        v45 = __dst;
        v6 = __dst + 1;
        v17 = v25;
        v16 = v85;
        if (v7 != __dst)
        {
          goto LABEL_22;
        }

LABEL_23:
        ++v7;
        if (v16 >= v87 || v6 >= v5)
        {
          goto LABEL_25;
        }
      }

      v45 = v85;
      v16 = v85 + 1;
      v6 = __dst;
      v17 = v25;
      if (v7 == v85)
      {
        goto LABEL_23;
      }

LABEL_22:
      *v7 = *v45;
      goto LABEL_23;
    }

LABEL_25:
    v46 = v7;
  }

LABEL_50:
  if (v46 != v16 || v46 >= (v16 + ((v87 - v16 + (v87 - v16 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(v46, v16, 8 * (v87 - v16));
  }

  return 1;
}

uint64_t sub_100157B5C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100157BA4()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_100939870);
  v1 = sub_100006654(v0, qword_100939870);
  if (qword_100936470 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_100975098);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void *sub_100157C6C(void *a1, uint64_t a2, void *a3, void *a4)
{
  v99 = a4;
  v106 = a2;
  v107 = a3;
  v105 = a1;
  v101 = *v4;
  v90 = sub_1000F5104(&unk_100936F50, &unk_100791B40);
  v89 = *(v90 - 8);
  __chkstk_darwin(v90, v5);
  v88 = v76 - v6;
  v7 = sub_1000F5104(&unk_100939970, &unk_10079ADB0);
  v93 = *(v7 - 8);
  v94 = v7;
  __chkstk_darwin(v7, v8);
  v91 = v76 - v9;
  v10 = sub_1000F5104(&unk_100936F60, &unk_100791B50);
  v95 = *(v10 - 8);
  v96 = v10;
  __chkstk_darwin(v10, v11);
  v92 = v76 - v12;
  v13 = sub_1000F5104(&qword_100939980, &unk_10079ADA0);
  __chkstk_darwin(v13 - 8, v14);
  v87 = v76 - v15;
  v83 = sub_1000F5104(&qword_100939988, &qword_1007969D0);
  v82 = *(v83 - 1);
  __chkstk_darwin(v83, v16);
  v81 = v76 - v17;
  v86 = sub_1000F5104(&qword_100939990, &unk_1007969D8);
  v85 = *(v86 - 8);
  __chkstk_darwin(v86, v18);
  v84 = v76 - v19;
  v20 = type metadata accessor for NSNotificationCenter.Publisher();
  v103 = *(v20 - 8);
  v104 = v20;
  __chkstk_darwin(v20, v21);
  v80 = v76 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23, v24);
  v102 = v76 - v25;
  v100 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v98 = *(v100 - 8);
  __chkstk_darwin(v100, v26);
  v28 = v76 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v29, v30);
  v31 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v31 - 8, v32);
  v4[2] = 0xD000000000000033;
  v4[3] = 0x80000001007ED260;
  swift_unknownObjectWeakInit();
  v4[6] = 0;
  swift_unknownObjectWeakInit();
  v4[7] = 0;
  v33 = sub_1000060C8(0, &qword_10093E6E0, OS_dispatch_queue_ptr);
  v97 = "tSetPersonID.author";
  static DispatchQoS.utility.getter();
  v108 = &_swiftEmptyArrayStorage;
  sub_10000D338(&qword_100936EE0, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_1000F5104(&unk_10093FEE0, &qword_100791B00);
  sub_10000CB48(&qword_100936EF0, &unk_10093FEE0, &qword_100791B00, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (v98)[13](v28, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v100);
  v100 = v33;
  v34 = v99;
  v4[11] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  swift_unknownObjectWeakAssign();
  v4[6] = v107;
  v107 = v4;
  swift_unknownObjectWeakAssign();
  if (v34)
  {
    v35 = v34;
  }

  else
  {
    v35 = [objc_opt_self() sharedInstance];
  }

  v36 = v107;
  v107[9] = &_swiftEmptyArrayStorage;
  v37 = v36 + 9;
  v37[3] = v35;
  *(v37 - 8) = 1;
  v37[1] = &_swiftEmptyArrayStorage;
  v38 = qword_100935AD8;
  v39 = v34;
  v41 = v103;
  v40 = v104;
  v42 = v102;
  if (v38 != -1)
  {
    swift_once();
  }

  v43 = type metadata accessor for Logger();
  sub_100006654(v43, qword_100939870);
  v44 = Logger.logObject.getter();
  v45 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v44, v45))
  {
    v46 = swift_slowAlloc();
    *v46 = 0;
    _os_log_impl(&_mh_execute_header, v44, v45, "os_transaction INIT {name: com.apple.remindd.ExchACS.launch.pendingSystemAvailable}", v46, 2u);
  }

  v47 = os_transaction_create();
  if (v47)
  {
    v99 = v47;
    sub_1000060C8(0, &qword_100939998, DADSystemAvailabilityChecker_ptr);
    v48 = v107[11];
    v49 = sub_1005B3DA0(v48);

    sub_1000060C8(0, &qword_1009399A0, DADBuddyStateObserver_ptr);
    v50 = sub_1005B3E28();
    v52 = v51;
    v53 = [objc_opt_self() defaultCenter];
    if (qword_1009361C0 != -1)
    {
      swift_once();
    }

    v97 = (v37 + 1);
    v98 = v39;
    NSNotificationCenter.publisher(for:object:)();

    v108 = v49;
    v109 = v50;
    (*(v41 + 16))(v80, v42, v40);

    v79 = v49;
    sub_1000F5104(&qword_1009399A8, &qword_1007969E8);
    v78 = v50;
    sub_10000CB48(&unk_1009399B0, &qword_1009399A8, &qword_1007969E8, &protocol conformance descriptor for Future<A, B>);
    sub_10000D338(&qword_100936F00, &type metadata accessor for NSNotificationCenter.Publisher, &protocol conformance descriptor for NSNotificationCenter.Publisher);
    v54 = v81;
    Publishers.Zip3.init(_:_:_:)();
    if (qword_100935D30 != -1)
    {
      swift_once();
    }

    v55 = qword_100974CC8;
    v108 = qword_100974CC8;
    v56 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
    v57 = *(v56 - 8);
    v77 = *(v57 + 56);
    v80 = (v57 + 56);
    v58 = v87;
    v77(v87, 1, 1, v56);
    sub_10000CB48(&unk_1009399C0, &qword_100939988, &qword_1007969D0, &protocol conformance descriptor for Publishers.Zip3<A, B, C>);
    v76[1] = sub_100006CA4();
    v76[0] = v55;
    v59 = v84;
    v60 = v83;
    Publisher.receive<A>(on:options:)();
    sub_1000050A4(v58, &qword_100939980, &unk_10079ADA0);
    v82[1](v54, v60);
    v61 = swift_allocObject();
    v62 = v99;
    *(v61 + 16) = v52;
    *(v61 + 24) = v62;
    v82 = &protocol conformance descriptor for Publishers.ReceiveOn<A, B>;
    sub_10000CB48(&unk_1009399D0, &qword_100939990, &unk_1007969D8, &protocol conformance descriptor for Publishers.ReceiveOn<A, B>);
    v83 = v52;
    swift_unknownObjectRetain();
    v63 = v86;
    Publisher.sink<A>(weakTarget:receiveValue:receiveCompletion:)();

    (*(v85 + 8))(v59, v63);
    swift_beginAccess();
    v86 = sub_1000F5104(&unk_10093D1B0, &unk_10079ADC0);
    sub_10000CB48(&qword_100936FA0, &unk_10093D1B0, &unk_10079ADC0, &protocol conformance descriptor for [A]);
    AnyCancellable.store<A>(in:)();
    swift_endAccess();

    v108 = sub_100441A9C(0x53434168637845, 0xE700000000000000, 0);
    v64 = swift_allocObject();
    *(v64 + 16) = sub_100158F14;
    *(v64 + 24) = 0;
    sub_1000F5104(&unk_10093D140, qword_1007969F0);
    sub_1000F5104(&unk_100936F70, &unk_100791B60);
    sub_10000CB48(&unk_10093D150, &unk_10093D140, qword_1007969F0, &protocol conformance descriptor for AnyPublisher<A, B>);
    v65 = v88;
    Publisher.map<A>(_:)();

    sub_10000CB48(&unk_100936F80, &unk_100936F50, &unk_100791B40, &protocol conformance descriptor for Publishers.Map<A, B>);
    v66 = v91;
    v67 = v90;
    Publisher.filter(_:)();

    (*(v89 + 8))(v65, v67);
    v68 = v76[0];
    v108 = v76[0];
    v77(v58, 1, 1, v56);
    sub_10000CB48(&unk_10093D160, &unk_100939970, &unk_10079ADB0, &protocol conformance descriptor for Publishers.Filter<A>);
    v69 = v92;
    v70 = v94;
    Publisher.receive<A>(on:options:)();
    sub_1000050A4(v58, &qword_100939980, &unk_10079ADA0);

    (*(v93 + 8))(v66, v70);
    sub_10000CB48(&unk_100936F90, &unk_100936F60, &unk_100791B50, v82);
    v71 = v96;
    Publisher.sink<A>(weakTarget:receiveValue:receiveCompletion:)();
    (*(v95 + 8))(v69, v71);
    swift_beginAccess();
    AnyCancellable.store<A>(in:)();
    swift_endAccess();

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    (*(v103 + 8))(v102, v104);
  }

  else
  {
    v72 = Logger.logObject.getter();
    v73 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v72, v73))
    {
      v74 = swift_slowAlloc();
      *v74 = 0;
      _os_log_impl(&_mh_execute_header, v72, v73, "ExchACS: Couldn't create os_transaction_t for waiting pendingSystemAvailable", v74, 2u);
    }

    swift_unknownObjectRelease();
  }

  return v107;
}

void sub_100158CD4()
{
  sub_100158DC4();
  if (qword_100935AD8 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_100006654(v0, qword_100939870);
  oslog = Logger.logObject.getter();
  v1 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, oslog, v1, "os_transaction RELEASE {name: com.apple.remindd.ExchACS.launch.pendingSystemAvailable}", v2, 2u);
  }
}

uint64_t sub_100158DC4()
{
  v1 = v0;
  *(v0 + 64) = 0;
  if (qword_100935AD8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100006654(v2, qword_100939870);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "ExchACS: Done waiting for system to become available upon daemon launch, now trying to observe for primary CK account PersonIDSalt changes", v5, 2u);
  }

  sub_1001591E4();
  swift_beginAccess();
  v6 = *(v1 + 72);
  *(v1 + 72) = &_swiftEmptyArrayStorage;
  v6, v7, v8, v9, v10, v11, v12, v13;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v15 = *(v1 + 48);
    ObjectType = swift_getObjectType();
    (*(v15 + 16))(ObjectType, v15);
    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_100158F58()
{
  v1 = v0;
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2, v4);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v0 + 64) & 1) == 0)
  {
    v8 = v5;
    if (qword_100935AD8 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    sub_100006654(v9, qword_100939870);

    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v31 = v13;
      *v12 = 136446210;
      v14 = *(v0 + 56);
      if (v14)
      {
        (*(v3 + 16))(v7, v14 + OBJC_IVAR___RDAccountPersonIDSaltObserver_uuid, v8);
        v15 = UUID.uuidString.getter();
        v17 = v16;
        (*(v3 + 8))(v7, v8);
      }

      else
      {
        v17 = 0xE300000000000000;
        v15 = 7104878;
      }

      v18 = sub_10000668C(v15, v17, &v31);
      v17, v19, v20, v21, v22, v23, v24, v25;
      *(v12 + 4) = v18;
      _os_log_impl(&_mh_execute_header, v10, v11, "ExchACS: Received 'ExchangeAccountDidChange', gonna reset the personIDSaltObserver {observer: %{public}s}", v12, 0xCu);
      sub_10000607C(v13);
    }

    v26 = *(v1 + 56);
    if (v26)
    {
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v28 = Strong;
        [Strong unobservePrimaryCloudKitAccountPersonIDSaltChanges:v26];
      }

      v29 = *(v1 + 56);
      *(v1 + 56) = 0;
    }

    sub_100159F90();
  }
}

void sub_1001591E4()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1, v4);
  v5 = v117 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6, v7);
  v9 = v117 - v8;
  __chkstk_darwin(v10, v11);
  v13 = v117 - v12;
  __chkstk_darwin(v14, v15);
  v17 = v117 - v16;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    if (qword_100935AD8 != -1)
    {
      swift_once();
    }

    v24 = type metadata accessor for Logger();
    sub_100006654(v24, qword_100939870);
    v127 = Logger.logObject.getter();
    v25 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v127, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&_mh_execute_header, v127, v25, "ExchACS: StoreController is nil when observePrimaryCloudKitAccountPersonIDSaltChanges() is invoked", v26, 2u);
    }

    goto LABEL_30;
  }

  v19 = *(v0 + 64);
  v127 = Strong;
  if (v19)
  {
    if (qword_100935AD8 != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for Logger();
    sub_100006654(v20, qword_100939870);
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&_mh_execute_header, v21, v22, "ExchACS: Trying to call observePrimaryCloudKitAccountPersonIDSaltChanges() while still pending system to be available", v23, 2u);
    }

    goto LABEL_30;
  }

  if (*(v0 + 56))
  {
    if (qword_100935AD8 != -1)
    {
      swift_once();
    }

    v27 = type metadata accessor for Logger();
    sub_100006654(v27, qword_100939870);

    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      aBlock = v31;
      *v30 = 136446210;
      v32 = *(v0 + 56);
      if (v32)
      {
        (*(v2 + 16))(v13, v32 + OBJC_IVAR___RDAccountPersonIDSaltObserver_uuid, v1);
        v33 = UUID.uuidString.getter();
        v35 = v34;
        (*(v2 + 8))(v13, v1);
      }

      else
      {
        v33 = 7104878;
        v35 = 0xE300000000000000;
      }

      v76 = sub_10000668C(v33, v35, &aBlock);
      v35, v77, v78, v79, v80, v81, v82, v83;
      *(v30 + 4) = v76;
      _os_log_impl(&_mh_execute_header, v28, v29, "ExchACS is already observing personIDSalt changes with RDAccountPersonIDSaltObserver {observer: %{public}s}", v30, 0xCu);
      sub_10000607C(v31);

LABEL_35:
      return;
    }

LABEL_30:
    v75 = v127;

    return;
  }

  v36 = swift_unknownObjectWeakLoadStrong();
  if (!v36)
  {
    goto LABEL_30;
  }

  v37 = v36;
  v126 = v2;
  v38 = String._bridgeToObjectiveC()();
  v39 = [v37 newBackgroundContextWithAuthor:v38];

  if (!v39)
  {
    goto LABEL_30;
  }

  v134 = 0;
  v40 = swift_allocObject();
  v40[2] = &v134;
  v40[3] = v0;
  v40[4] = v39;
  v41 = swift_allocObject();
  *(v41 + 16) = sub_10015CBCC;
  *(v41 + 24) = v40;
  v124 = v40;
  v132 = sub_1000529DC;
  v133 = v41;
  aBlock = _NSConcreteStackBlock;
  v129 = 1107296256;
  v130 = sub_10000F160;
  v131 = &unk_1008E6AF0;
  v42 = _Block_copy(&aBlock);
  v125 = v133;

  v43 = v39;

  [v43 performBlockAndWait:v42];
  _Block_release(v42);
  LOBYTE(v42) = swift_isEscapingClosureAtFileLocation();

  if (v42)
  {
    __break(1u);
LABEL_51:
    swift_once();
    goto LABEL_23;
  }

  v41 = v126;
  if (v134 != 1)
  {
    if (qword_100935AD8 != -1)
    {
      swift_once();
    }

    v84 = type metadata accessor for Logger();
    sub_100006654(v84, qword_100939870);
    v85 = Logger.logObject.getter();
    v86 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v85, v86))
    {
      v87 = swift_slowAlloc();
      *v87 = 0;
      _os_log_impl(&_mh_execute_header, v85, v86, "ExchACS is not observing primary CK account personIDSalt changes this time as we have no exchange account right now", v87, 2u);
    }

    goto LABEL_35;
  }

  v117[0] = v43;
  UUID.init()();
  if (qword_100935D30 != -1)
  {
    goto LABEL_51;
  }

LABEL_23:
  v121 = qword_100974CC8;
  v44 = swift_allocObject();
  swift_weakInit();
  v45 = *(v41 + 16);
  v125 = v41 + 16;
  v123 = v45;
  v45(v13, v17, v1);
  v119 = *(v41 + 80);
  v122 = ((v119 + 24) & ~v119);
  v46 = swift_allocObject();
  *(v46 + 16) = v44;
  v118 = *(v41 + 32);
  v118(&v122[v46], v13, v1);
  v132 = sub_10015CBD8;
  v133 = v46;
  aBlock = _NSConcreteStackBlock;
  v129 = 1107296256;
  v117[1] = &v130;
  v130 = sub_10075A404;
  v131 = &unk_1008E6B68;
  v120 = _Block_copy(&aBlock);

  v47 = swift_allocObject();
  swift_weakInit();
  v123(v13, v17, v1);
  v48 = v122;
  v49 = swift_allocObject();
  *(v49 + 16) = v47;
  v118(v48 + v49, v13, v1);
  v132 = sub_10015CD20;
  v133 = v49;
  aBlock = _NSConcreteStackBlock;
  v129 = 1107296256;
  v130 = sub_10056A480;
  v131 = &unk_1008E6BB8;
  v50 = _Block_copy(&aBlock);

  v51 = v120;
  v52 = [v127 observePrimaryCloudKitAccountPersonIDSaltChangesOnQueue:v121 successHandler:v120 errorHandler:v50];
  _Block_release(v50);
  _Block_release(v51);
  v53 = *(v0 + 56);
  *(v0 + 56) = v52;

  if (*(v0 + 56))
  {
    if (qword_100935AD8 != -1)
    {
      swift_once();
    }

    v54 = type metadata accessor for Logger();
    sub_100006654(v54, qword_100939870);
    v123(v5, v17, v1);

    v55 = Logger.logObject.getter();
    v56 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v55, v56))
    {
      LODWORD(v121) = v56;
      v122 = v55;
      v57 = swift_slowAlloc();
      v120 = swift_slowAlloc();
      aBlock = v120;
      *v57 = 136446466;
      v58 = v0;
      v59 = UUID.uuidString.getter();
      v61 = v60;
      v62 = *(v126 + 8);
      v62(v5, v1);
      v63 = sub_10000668C(v59, v61, &aBlock);
      v61, v64, v65, v66, v67, v68, v69, v70;
      *(v57 + 4) = v63;
      *(v57 + 12) = 2082;
      v71 = *(v58 + 56);
      if (v71)
      {
        v123(v13, (v71 + OBJC_IVAR___RDAccountPersonIDSaltObserver_uuid), v1);
        v72 = UUID.uuidString.getter();
        v74 = v73;
        v62(v13, v1);
      }

      else
      {
        v72 = 7104878;
        v74 = 0xE300000000000000;
      }

      v108 = sub_10000668C(v72, v74, &aBlock);
      v74, v109, v110, v111, v112, v113, v114, v115;
      *(v57 + 14) = v108;
      v116 = v122;
      _os_log_impl(&_mh_execute_header, v122, v121, "ExchACS is now observing primary CK account personIDSalt changes {debugTrackingUUID: %{public}s, observer: %{public}s}", v57, 0x16u);
      swift_arrayDestroy();

      v62(v17, v1);
    }

    else
    {

      v106 = *(v126 + 8);
      v106(v5, v1);
      v106(v17, v1);
    }
  }

  else
  {
    if (qword_100935AD8 != -1)
    {
      swift_once();
    }

    v88 = type metadata accessor for Logger();
    sub_100006654(v88, qword_100939870);
    v123(v9, v17, v1);
    v89 = Logger.logObject.getter();
    v90 = static os_log_type_t.error.getter();
    v91 = os_log_type_enabled(v89, v90);
    v92 = v126;
    if (v91)
    {
      v93 = swift_slowAlloc();
      v94 = swift_slowAlloc();
      aBlock = v94;
      *v93 = 136446210;
      v125 = UUID.uuidString.getter();
      v96 = v95;
      v97 = *(v92 + 8);
      v97(v9, v1);
      v98 = sub_10000668C(v125, v96, &aBlock);
      v96, v99, v100, v101, v102, v103, v104, v105;
      *(v93 + 4) = v98;
      _os_log_impl(&_mh_execute_header, v89, v90, "ExchACS failed to start observing primary CK account personIDSalt changes {debugTrackingUUID: %{public}s}", v93, 0xCu);
      sub_10000607C(v94);

      v97(v17, v1);
    }

    else
    {

      v107 = *(v92 + 8);
      v107(v9, v1);
      v107(v17, v1);
    }
  }
}

uint64_t sub_100159F90()
{
  v22 = *v0;
  v1 = sub_1000F5104(&qword_100939980, &unk_10079ADA0);
  __chkstk_darwin(v1 - 8, v2);
  v4 = &v20 - v3;
  v5 = type metadata accessor for NSNotificationCenter.Publisher();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5, v7);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1000F5104(&unk_100936ED0, &unk_100791AF0);
  v20 = *(v10 - 8);
  v21 = v10;
  __chkstk_darwin(v10, v11);
  v13 = &v20 - v12;
  v14 = [objc_opt_self() defaultCenter];
  if (qword_1009361C0 != -1)
  {
    swift_once();
  }

  NSNotificationCenter.publisher(for:object:)();

  if (qword_100935D30 != -1)
  {
    swift_once();
  }

  v15 = qword_100974CC8;
  v23 = qword_100974CC8;
  v16 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  (*(*(v16 - 8) + 56))(v4, 1, 1, v16);
  sub_1000060C8(0, &qword_10093E6E0, OS_dispatch_queue_ptr);
  sub_10000D338(&qword_100936F00, &type metadata accessor for NSNotificationCenter.Publisher, &protocol conformance descriptor for NSNotificationCenter.Publisher);
  sub_100006CA4();
  v17 = v15;
  Publisher.receive<A>(on:options:)();
  sub_1000050A4(v4, &qword_100939980, &unk_10079ADA0);

  (*(v6 + 8))(v9, v5);
  sub_10000CB48(&qword_100936F10, &unk_100936ED0, &unk_100791AF0, &protocol conformance descriptor for Publishers.ReceiveOn<A, B>);
  v18 = v21;
  Publisher.sink<A>(weakTarget:receiveValue:receiveCompletion:)();
  (*(v20 + 8))(v13, v18);
  swift_beginAccess();
  sub_1000F5104(&unk_10093D1B0, &unk_10079ADC0);
  sub_10000CB48(&qword_100936FA0, &unk_10093D1B0, &unk_10079ADC0, &protocol conformance descriptor for [A]);
  AnyCancellable.store<A>(in:)();
  swift_endAccess();
}

void sub_10015A3E8()
{
  if (qword_100935AD8 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_100006654(v0, qword_100939870);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "ExchACS: Received DidCompleteInitializeAllAccountsNotification", v3, 2u);
  }

  sub_1001591E4();
}

void sub_10015A4CC(BOOL *a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_10015CFA4();
  if (v4 >> 62)
  {
    v13 = v4;
    v12 = _CocoaArrayWrapper.endIndex.getter();
    v4 = v13;
  }

  else
  {
    v12 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4, v5, v6, v7, v8, v9, v10, v11;
  *a1 = v12 != 0;
}

void sub_10015A540(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7, v9);
  v11 = v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    if (qword_100935AD8 != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    sub_100006654(v12, qword_100939870);
    (*(v8 + 16))(v11, a4, v7);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v30[0] = a1;
      v16 = v15;
      v17 = swift_slowAlloc();
      v31 = v17;
      *v16 = 136446210;
      v18 = UUID.uuidString.getter();
      v30[1] = a2;
      v20 = v19;
      (*(v8 + 8))(v11, v7);
      v21 = sub_10000668C(v18, v20, &v31);
      v20, v22, v23, v24, v25, v26, v27, v28;
      *(v16 + 4) = v21;
      _os_log_impl(&_mh_execute_header, v13, v14, "ExchACS received a primary CK account personIDSalt change or initial value {debugTrackingUUID: %{public}s}", v16, 0xCu);
      sub_10000607C(v17);
    }

    else
    {

      (*(v8 + 8))(v11, v7);
    }

    isa = Data._bridgeToObjectiveC()().super.isa;
    sub_10015A7D8(isa);
  }
}

void sub_10015A7D8(void *a1)
{
  v2 = v1;
  v4 = NSData.startIndex.getter();
  if (v4 != NSData.endIndex.getter())
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v6 = Strong;
      v7 = String._bridgeToObjectiveC()();
      v8 = [v6 newBackgroundContextWithAuthor:v7];

      if (v8)
      {
        v9 = swift_allocObject();
        v9[2] = v2;
        v9[3] = v8;
        v9[4] = a1;
        v10 = swift_allocObject();
        *(v10 + 16) = sub_10015D340;
        *(v10 + 24) = v9;
        v14[4] = sub_1000FDA90;
        v14[5] = v10;
        v14[0] = _NSConcreteStackBlock;
        v14[1] = 1107296256;
        v14[2] = sub_10000F160;
        v14[3] = &unk_1008E6CA8;
        v11 = _Block_copy(v14);

        v12 = v8;
        v13 = a1;

        [v12 performBlockAndWait:v11];

        _Block_release(v11);
        LOBYTE(v12) = swift_isEscapingClosureAtFileLocation();

        if (v12)
        {
          __break(1u);
        }
      }
    }
  }
}

void sub_10015A9A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4, v6);
  v8 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_1000060C8(0, &qword_100945FC0, NSObject_ptr);
    v9 = _convertErrorToNSError(_:)();
    if (qword_1009365C0 != -1)
    {
      swift_once();
    }

    v10 = static NSObject.== infix(_:_:)();

    if (v10)
    {
    }

    else
    {
      if (qword_100935AD8 != -1)
      {
        swift_once();
      }

      v11 = type metadata accessor for Logger();
      sub_100006654(v11, qword_100939870);
      (*(v5 + 16))(v8, a3, v4);
      swift_errorRetain();
      v12 = Logger.logObject.getter();
      v13 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        v39 = swift_slowAlloc();
        v40 = v39;
        *v14 = 136446466;
        v15 = UUID.uuidString.getter();
        v17 = v16;
        (*(v5 + 8))(v8, v4);
        v18 = sub_10000668C(v15, v17, &v40);
        v17, v19, v20, v21, v22, v23, v24, v25;
        *(v14 + 4) = v18;
        *(v14 + 12) = 2082;
        swift_getErrorValue();
        v26 = Error.rem_errorDescription.getter();
        v28 = v27;
        v29 = sub_10000668C(v26, v27, &v40);
        v28, v30, v31, v32, v33, v34, v35, v36;
        *(v14 + 14) = v29;
        _os_log_impl(&_mh_execute_header, v12, v13, "ExchACS received a primary CK account personIDSalt error {debugTrackingUUID: %{public}s, saltError: %{public}s}", v14, 0x16u);
        swift_arrayDestroy();
      }

      else
      {

        (*(v5 + 8))(v8, v4);
      }

      v37 = _convertErrorToNSError(_:)();
      sub_10015AD04(v37);
    }
  }
}

void sub_10015AD04(void *a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = String._bridgeToObjectiveC()();
    v6 = [v4 newBackgroundContextWithAuthor:v5];

    if (v6)
    {
      v7 = swift_allocObject();
      v7[2] = v1;
      v7[3] = v6;
      v7[4] = a1;
      v8 = swift_allocObject();
      *(v8 + 16) = sub_10015CD94;
      *(v8 + 24) = v7;
      v13[4] = sub_1000FDA90;
      v13[5] = v8;
      v13[0] = _NSConcreteStackBlock;
      v13[1] = 1107296256;
      v13[2] = sub_10000F160;
      v13[3] = &unk_1008E6C30;
      v9 = _Block_copy(v13);

      v10 = v6;
      v11 = a1;

      [v10 performBlockAndWait:v9];

      _Block_release(v9);
      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      if (isEscapingClosureAtFileLocation)
      {
        __break(1u);
      }
    }
  }
}

void sub_10015AEB8(uint64_t a1, void *a2, void *a3)
{
  v6 = sub_10015CFA4();
  v115 = &_swiftEmptyArrayStorage;

  v7 = a3;
  sub_10015CDA0(v6, a1, v7, &v115);
  v6, v8, v9, v10, v11, v12, v13, v14;

  v116[0] = 0;
  if ([a2 save:v116])
  {
    v15 = v115;
    v16 = *v115->clientIdentity;
    v17 = v116[0];
    v110 = v15;

    v109 = v16;
    if (!v16)
    {
LABEL_19:
      swift_bridgeObjectRelease_n();
      return;
    }

    v18 = 0;
    v19 = &v15->clientIdentity[32];
    while (v18 < *v110->clientIdentity)
    {
      v21 = *(v19 - 2);
      v20 = *(v19 - 1);
      v22 = *v19;
      if (swift_unknownObjectWeakLoadStrong())
      {
        v113 = v20;
        v23 = a1;
        v24 = *(a1 + 48);
        ObjectType = swift_getObjectType();
        v26 = *(v24 + 24);
        v112 = v21;

        v27 = v24;
        a1 = v23;
        v26(v21, v113, v22, v7, ObjectType, v27);
        v22, v28, v29, v30, v31, v32, v33, v34;

        swift_unknownObjectRelease();
      }

      ++v18;
      v19 += 3;
      if (v109 == v18)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
  }

  else
  {
    v35 = v116[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();
    if (qword_100935AD8 == -1)
    {
      goto LABEL_9;
    }
  }

  swift_once();
LABEL_9:
  v36 = type metadata accessor for Logger();
  sub_100006654(v36, qword_100939870);
  swift_errorRetain();
  v37 = Logger.logObject.getter();
  v38 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    v117 = swift_slowAlloc();
    *v39 = 136446466;
    swift_beginAccess();
    v40 = v115;
    v41 = *v115->clientIdentity;
    if (v41)
    {
      v111 = v38;
      v114 = v37;

      sub_100026EF4(0, v41, 0);
      v108 = v40;
      v49 = &v40->clientIdentity[32];
      do
      {
        v50 = *(v49 - 2);
        if (v50)
        {
          v51 = *v49;

          v52 = v50;
          v53 = [v52 description];
          v54 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v56 = v55;
          v51, v55, v57, v58, v59, v60, v61, v62;
        }

        else
        {
          v56 = 0xE300000000000000;
          v54 = 7104878;
        }

        v64 = *_swiftEmptyArrayStorage.clientIdentity;
        v63 = *&_swiftEmptyArrayStorage.clientIdentity[8];
        if (v64 >= v63 >> 1)
        {
          sub_100026EF4((v63 > 1), v64 + 1, 1);
        }

        *_swiftEmptyArrayStorage.clientIdentity = v64 + 1;
        v65 = &_swiftEmptyArrayStorage + 16 * v64;
        *(v65 + 4) = v54;
        *(v65 + 5) = v56;
        v49 += 3;
        --v41;
      }

      while (v41);
      v40 = v108;
      v108, v42, v43, v44, v45, v46, v47, v48;
      v37 = v114;
      v38 = v111;
    }

    v73 = Array.description.getter();
    v75 = v74;
    &_swiftEmptyArrayStorage, v74, v76, v77, v78, v79, v80, v81;
    v82 = sub_10000668C(v73, v75, &v117);
    v75, v83, v84, v85, v86, v87, v88, v89;
    *(v39 + 4) = v82;
    *(v39 + 12) = 2080;
    swift_getErrorValue();
    v90 = Error.rem_errorDescription.getter();
    v92 = v91;
    v93 = sub_10000668C(v90, v91, &v117);
    v92, v94, v95, v96, v97, v98, v99, v100;
    *(v39 + 14) = v93;
    _os_log_impl(&_mh_execute_header, v37, v38, "ExchACS failed to saved account personID {accountIDs: %{public}s, saveError: %s}", v39, 0x16u);
    swift_arrayDestroy();

    v40, v101, v102, v103, v104, v105, v106, v107;
  }

  else
  {

    v115, v66, v67, v68, v69, v70, v71, v72;
  }
}

void sub_10015B394(id *a1, uint64_t a2, uint64_t a3, _TtC7remindd19RDXPCStorePerformer **a4)
{
  v6 = *a1;
  v7 = [*a1 personID];
  if (v7)
  {
    v8 = v7;
    v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v10;
  }

  else
  {
    v9 = 0;
    v11 = 0;
  }

  v12 = sub_10015B92C(v6, a3);
  if (v13)
  {
    v20 = v12;
    v21 = v13;
    v22 = (v13 >> 56) & 0xF;
    if ((v13 & 0x2000000000000000) == 0)
    {
      v22 = v12 & 0xFFFFFFFFFFFFLL;
    }

    if (v22)
    {
      if (v11 && (v9 == v12 && v11 == v13 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
      {
        v21, v13, v14, v15, v16, v17, v18, v19;
        v11, v23, v24, v25, v26, v27, v28, v29;
      }

      else
      {
        v42 = String._bridgeToObjectiveC()();
        [v6 setPersonID:v42];

        v43 = [v6 remObjectID];
        v44 = *a4;

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *a4 = v44;
        v127 = v9;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v44 = sub_1003661E0(0, (*v44->clientIdentity + 1), 1, v44, v46, v47, v48, v49);
          *a4 = v44;
        }

        v51 = *v44->clientIdentity;
        v50 = *&v44->clientIdentity[8];
        if (v51 >= v50 >> 1)
        {
          v44 = sub_1003661E0((v50 > 1), (v51 + 1), 1, v44, v46, v47, v48, v49);
          *a4 = v44;
        }

        *v44->clientIdentity = v51 + 1;
        v52 = &v44->super.isa + 3 * v51;
        v52[4] = v43;
        v52[5] = v20;
        v52[6] = v21;
        if (qword_100935AD8 != -1)
        {
          swift_once();
        }

        v53 = type metadata accessor for Logger();
        sub_100006654(v53, qword_100939870);

        v54 = v6;
        v55 = Logger.logObject.getter();
        v56 = static os_log_type_t.default.getter();
        v11, v57, v58, v59, v60, v61, v62, v63;
        v21, v64, v65, v66, v67, v68, v69, v70;

        if (os_log_type_enabled(v55, v56))
        {
          v78 = swift_slowAlloc();
          v128 = swift_slowAlloc();
          *v78 = 136446722;
          v79 = [v54 remObjectID];
          if (v79)
          {
            v80 = v79;
            v81 = v56;
            v82 = [v79 description];

            v83 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v85 = v84;

            v56 = v81;
          }

          else
          {
            v83 = 7104878;
            v85 = 0xE300000000000000;
          }

          v101 = sub_10000668C(v83, v85, &v128);
          v85, v102, v103, v104, v105, v106, v107, v108;
          *(v78 + 4) = v101;
          *(v78 + 12) = 2080;
          v109 = sub_10000668C(v20, v21, &v128);
          v21, v110, v111, v112, v113, v114, v115, v116;
          *(v78 + 14) = v109;
          *(v78 + 22) = 2080;
          if (v11)
          {
            v117 = v127;
          }

          else
          {
            v117 = 7104878;
          }

          if (v11)
          {
            v118 = v11;
          }

          else
          {
            v118 = 0xE300000000000000;
          }

          v119 = sub_10000668C(v117, v118, &v128);
          v118, v120, v121, v122, v123, v124, v125, v126;
          *(v78 + 24) = v119;
          _os_log_impl(&_mh_execute_header, v55, v56, "ExchACS will save update to account personID {accountIDs: %{public}s, newPersonID: %s, oldPersonID: %s}", v78, 0x20u);
          swift_arrayDestroy();
        }

        else
        {
          v11, v71, v72, v73, v74, v75, v76, v77;
          v21, v94, v95, v96, v97, v98, v99, v100;
        }
      }

      return;
    }

    v13, v13, v14, v15, v16, v17, v18, v19;
  }

  v11, v13, v14, v15, v16, v17, v18, v19;
  if (qword_100935AD8 != -1)
  {
    swift_once();
  }

  v30 = type metadata accessor for Logger();
  sub_100006654(v30, qword_100939870);
  v31 = v6;
  v32 = Logger.logObject.getter();
  v33 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v128 = v35;
    *v34 = 136446210;
    v36 = [v31 remObjectID];
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

    v86 = sub_10000668C(v39, v41, &v128);
    v41, v87, v88, v89, v90, v91, v92, v93;
    *(v34 + 4) = v86;
    _os_log_impl(&_mh_execute_header, v32, v33, "ExchACS failed to generate a hashed personID from the salt {accountID: %{public}s}", v34, 0xCu);
    sub_10000607C(v35);
  }
}

id sub_10015B92C(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6, v8);
  v10 = &v169 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1000F5104(&unk_100939D90, "8\n\r");
  __chkstk_darwin(v11 - 8, v12);
  v14 = &v169 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v17 = __chkstk_darwin(v15, v16).n128_u64[0];
  v19 = &v169 - v18;
  v20 = [a1 remObjectID];
  if (v20)
  {
    v21 = v20;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v22 = *(v3 + 48);
      ObjectType = swift_getObjectType();
      v24 = (*(v22 + 40))(v21, ObjectType, v22);
      v26 = v25;
      swift_unknownObjectRelease();

LABEL_4:
      if (qword_100935AD8 != -1)
      {
        swift_once();
      }

      v27 = type metadata accessor for Logger();
      sub_100006654(v27, qword_100939870);
      v28 = a1;

      v29 = Logger.logObject.getter();
      v30 = static os_log_type_t.info.getter();
      v26, v31, v32, v33, v34, v35, v36, v37;

      if (os_log_type_enabled(v29, v30))
      {
        v169 = a2;
        v38 = swift_slowAlloc();
        v170 = swift_slowAlloc();
        *v38 = 136315394;
        v39 = [v28 remObjectID];
        if (v39)
        {
          v40 = v39;
          v41 = [v39 description];

          v42 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v44 = v43;
        }

        else
        {
          v44 = 0xE300000000000000;
          v42 = 7104878;
        }

        v82 = sub_10000668C(v42, v44, &v170);
        v44, v83, v84, v85, v86, v87, v88, v89;
        *(v38 + 4) = v82;
        *(v38 + 12) = 2080;
        *(v38 + 14) = sub_10000668C(v24, v26, &v170);
        _os_log_impl(&_mh_execute_header, v29, v30, "ExchACS: hashedAccountPersonID: account: %s, nonNilUsername = %s", v38, 0x16u);
        swift_arrayDestroy();
      }

      else
      {
      }

      v90 = [objc_opt_self() daemonUserDefaults];
      v91 = [v90 enableHashingUserIdentifiablesWithPersonIDSalt];

      if (v91)
      {
        Strong = swift_unknownObjectWeakLoadStrong();
        if (Strong)
        {
          v93 = *(v3 + 48);
          v94 = Strong;
          v95 = swift_getObjectType();
          v170 = v94;
          v96 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
          v98 = v97;
          v24 = (*(*(v93 + 8) + 8))(v24, v26, v96, v97, v95);
          v26, v99, v100, v101, v102, v103, v104, v105;
          sub_10001BBA0(v96, v98);
          swift_unknownObjectRelease();
        }

        else
        {
          v106 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
          v108 = v107;
          v24 = String.base64EncodedHMACString(using:)();
          sub_10001BBA0(v106, v108);
          v26, v109, v110, v111, v112, v113, v114, v115;
        }
      }

      return v24;
    }
  }

  v45 = [a1 identifier];
  if (v45)
  {
    v46 = v45;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    (*(v7 + 56))(v14, 0, 1, v6);
  }

  else
  {
    (*(v7 + 56))(v14, 1, 1, v6);
  }

  sub_100100FB4(v14, v19);
  if ((*(v7 + 48))(v19, 1, v6))
  {
    sub_1000050A4(v19, &unk_100939D90, "8\n\r");
    return 0;
  }

  (*(v7 + 16))(v10, v19, v6);
  sub_1000050A4(v19, &unk_100939D90, "8\n\r");
  UUID.uuidString.getter();
  v48 = v47;
  (*(v7 + 8))(v10, v6);
  v49 = [*(v3 + 96) accountStore];
  v50 = String._bridgeToObjectiveC()();
  v51 = [v49 accountWithIdentifier:v50];

  if (!v51)
  {
    v48, v52, v53, v54, v55, v56, v57, v58;
    return 0;
  }

  v59 = &selRef_setPublicLinkLastModifiedDate_;
  result = [v51 accountType];
  if (!result)
  {
    __break(1u);
    goto LABEL_52;
  }

  v61 = result;
  v62 = [result identifier];

  if (!v62)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v74 = v67;
LABEL_33:
    v74, v67, v68, v69, v70, v71, v72, v73;
    goto LABEL_34;
  }

  v63 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v65 = v64;

  v66 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v74 = v67;
  if (!v65)
  {
    v59 = &selRef_setPublicLinkLastModifiedDate_;
    goto LABEL_33;
  }

  if (v63 == v66 && v65 == v67)
  {
    v48, v67, v66, v69, v70, v71, v72, v73;
LABEL_39:
    a2 = v169;
    v65, v75, v76, v77, v78, v79, v80, v81;
    v48 = v74;
LABEL_44:
    v48, v129, v130, v131, v132, v133, v134, v135;
    goto LABEL_45;
  }

  v136 = _stringCompareWithSmolCheck(_:_:expecting:)();
  v65, v137, v138, v139, v140, v141, v142, v143;
  v74, v144, v145, v146, v147, v148, v149, v150;
  v59 = &selRef_setPublicLinkLastModifiedDate_;
  if (v136)
  {
    a2 = v169;
    goto LABEL_44;
  }

LABEL_34:
  result = [v51 v59[81]];
  if (result)
  {
    v123 = result;
    v48, v116, v117, v118, v119, v120, v121, v122;
    v124 = [v123 identifier];

    if (v124)
    {
      v125 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v65 = v126;

      v127 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v74 = v75;
      if (v65)
      {
        v76 = v127;
        if (v125 == v127 && v65 == v75)
        {
          goto LABEL_39;
        }

        v154 = _stringCompareWithSmolCheck(_:_:expecting:)();
        v65, v155, v156, v157, v158, v159, v160, v161;
        v74, v162, v163, v164, v165, v166, v167, v168;
        a2 = v169;
        if (v154)
        {
LABEL_45:
          v151 = [v51 username];
          if (v151)
          {
            v152 = v151;
            v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v26 = v153;

            goto LABEL_4;
          }
        }

LABEL_48:

        return 0;
      }
    }

    else
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v74 = v75;
    }

    v74, v75, v128, v77, v78, v79, v80, v81;
    goto LABEL_48;
  }

LABEL_52:
  __break(1u);
  return result;
}

void sub_10015C12C(uint64_t a1, void *a2, void *a3)
{
  v6 = sub_10015CFA4();
  v131 = &_swiftEmptyArrayStorage;
  v7 = a3;
  sub_10015CEA4(v6, &v131, v7);
  v6, v8, v9, v10, v11, v12, v13, v14;
  v123 = v7;

  v132[0] = 0;
  if ([a2 save:v132])
  {
    v15 = v131;
    v16 = *v131->clientIdentity;
    v17 = v132[0];
    v127 = v15;

    v125 = v16;
    if (!v16)
    {
LABEL_19:
      swift_bridgeObjectRelease_n();
      return;
    }

    v18 = 0;
    v19 = &v15->clientIdentity[32];
    v122 = a1;
    while (v18 < *v127->clientIdentity)
    {
      v21 = *(v19 - 2);
      v20 = *(v19 - 1);
      v22 = *v19;
      if (swift_unknownObjectWeakLoadStrong())
      {
        v23 = *(a1 + 48);
        ObjectType = swift_getObjectType();
        v25 = *(v23 + 32);
        v129 = v21;

        v25(v21, v20, v22, v123, ObjectType, v23);
        a1 = v122;
        v22, v26, v27, v28, v29, v30, v31, v32;

        swift_unknownObjectRelease();
      }

      ++v18;
      v19 += 3;
      if (v125 == v18)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
  }

  else
  {
    v33 = v132[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();
    if (qword_100935AD8 == -1)
    {
      goto LABEL_9;
    }
  }

  swift_once();
LABEL_9:
  v34 = type metadata accessor for Logger();
  sub_100006654(v34, qword_100939870);
  v35 = v123;
  swift_errorRetain();
  v36 = Logger.logObject.getter();
  v37 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v36, v37))
  {
    v130 = v35;
    v38 = swift_slowAlloc();
    v133 = swift_slowAlloc();
    *v38 = 136446722;
    swift_beginAccess();
    v39 = v131;
    v40 = *v131->clientIdentity;
    if (v40)
    {
      v124 = v38;
      v126 = v37;
      v128 = v36;

      sub_100026EF4(0, v40, 0);
      v121 = v39;
      v48 = &v39->clientIdentity[32];
      do
      {
        v49 = *(v48 - 2);
        if (v49)
        {
          v50 = *v48;

          v51 = v49;
          v52 = [v51 description];
          v53 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v55 = v54;
          v50, v54, v56, v57, v58, v59, v60, v61;
        }

        else
        {
          v55 = 0xE300000000000000;
          v53 = 7104878;
        }

        v63 = *_swiftEmptyArrayStorage.clientIdentity;
        v62 = *&_swiftEmptyArrayStorage.clientIdentity[8];
        if (v63 >= v62 >> 1)
        {
          sub_100026EF4((v62 > 1), v63 + 1, 1);
        }

        *_swiftEmptyArrayStorage.clientIdentity = v63 + 1;
        v64 = &_swiftEmptyArrayStorage + 16 * v63;
        *(v64 + 4) = v53;
        *(v64 + 5) = v55;
        v48 += 3;
        --v40;
      }

      while (v40);
      v72 = v121;
      v121, v41, v42, v43, v44, v45, v46, v47;
      v36 = v128;
      v37 = v126;
      v38 = v124;
    }

    else
    {
      v72 = v131;
    }

    v73 = Array.description.getter();
    v75 = v74;
    &_swiftEmptyArrayStorage, v74, v76, v77, v78, v79, v80, v81;
    v82 = sub_10000668C(v73, v75, &v133);
    v75, v83, v84, v85, v86, v87, v88, v89;
    *(v38 + 4) = v82;
    *(v38 + 12) = 2082;
    v90 = v130;
    v91 = [v90 description];
    v92 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v94 = v93;

    v95 = sub_10000668C(v92, v94, &v133);
    v94, v96, v97, v98, v99, v100, v101, v102;
    *(v38 + 14) = v95;
    *(v38 + 22) = 2080;
    swift_errorRetain();
    sub_1000F5104(&unk_1009399E0, &qword_100795D00);
    v103 = String.init<A>(describing:)();
    v105 = v104;
    v106 = sub_10000668C(v103, v104, &v133);
    v105, v107, v108, v109, v110, v111, v112, v113;
    *(v38 + 24) = v106;
    _os_log_impl(&_mh_execute_header, v36, v37, "ExchACS failed to reset account personID to nil {accountIDs: %{public}s, saltError: %{public}s, saveError: %s}", v38, 0x20u);
    swift_arrayDestroy();

    v72, v114, v115, v116, v117, v118, v119, v120;
  }

  else
  {

    v131, v65, v66, v67, v68, v69, v70, v71;
  }
}

void sub_10015C678(id *a1, _TtC7remindd19RDXPCStorePerformer **a2, void *a3)
{
  v5 = *a1;
  v6 = [*a1 personID];
  if (v6)
  {
    v7 = v6;
    v76 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = v8;

    [v5 setPersonID:0];
    v10 = [v5 remObjectID];
    v11 = *a2;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *a2 = v11;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v11 = sub_1003661E0(0, (*v11->clientIdentity + 1), 1, v11, v13, v14, v15, v16);
      *a2 = v11;
    }

    v18 = *v11->clientIdentity;
    v17 = *&v11->clientIdentity[8];
    if (v18 >= v17 >> 1)
    {
      v11 = sub_1003661E0((v17 > 1), (v18 + 1), 1, v11, v13, v14, v15, v16);
      *a2 = v11;
    }

    *v11->clientIdentity = v18 + 1;
    v19 = &v11->super.isa + 3 * v18;
    v19[4] = v10;
    v19[5] = v76;
    v19[6] = v9;
    if (qword_100935AD8 != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for Logger();
    sub_100006654(v20, qword_100939870);

    v21 = v5;
    v22 = a3;
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.default.getter();

    v9, v25, v26, v27, v28, v29, v30, v31;
    if (os_log_type_enabled(v23, v24))
    {
      v39 = swift_slowAlloc();
      v77 = swift_slowAlloc();
      *v39 = 136446722;
      v40 = [v21 remObjectID];
      v41 = &selRef_accountStatusWithCompletionHandler_;
      if (v40)
      {
        v42 = v40;
        v43 = [v40 description];

        v44 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v46 = v45;

        v41 = &selRef_accountStatusWithCompletionHandler_;
      }

      else
      {
        v46 = 0xE300000000000000;
        v44 = 7104878;
      }

      v47 = sub_10000668C(v44, v46, &v77);
      v46, v48, v49, v50, v51, v52, v53, v54;
      *(v39 + 4) = v47;
      *(v39 + 12) = 2080;
      v55 = sub_10000668C(v76, v9, &v77);
      v9, v56, v57, v58, v59, v60, v61, v62;
      *(v39 + 14) = v55;
      *(v39 + 22) = 2082;
      v63 = v22;
      v64 = [v63 v41[332]];
      v65 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v67 = v66;

      v68 = sub_10000668C(v65, v67, &v77);
      v67, v69, v70, v71, v72, v73, v74, v75;
      *(v39 + 24) = v68;
      _os_log_impl(&_mh_execute_header, v23, v24, "ExchACS will reset account personID to nil {accountID: %{public}s, origPersonID: %s, saltError: %{public}s}", v39, 0x20u);
      swift_arrayDestroy();
    }

    else
    {
      v9, v32, v33, v34, v35, v36, v37, v38;
    }
  }
}

uint64_t sub_10015C9FC(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  *(v8 + 24), a2, a3, a4, a5, a6, a7, a8;
  swift_unknownObjectWeakDestroy();
  sub_1000536E0(v8 + 40);

  *(v8 + 72), v9, v10, v11, v12, v13, v14, v15;
  *(v8 + 80), v16, v17, v18, v19, v20, v21, v22;

  return v8;
}

uint64_t sub_10015CA54(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  sub_10015C9FC(a1, a2, a3, a4, a5, a6, a7, a8);

  return swift_deallocClassInstance();
}

unint64_t *sub_10015CAB4(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(id), uint64_t a5)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v8 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    sub_10015D34C(v8, a2, a3, a4);
    v10 = v9;

    return v10;
  }

  return result;
}

uint64_t sub_10015CB58@<X0>(uint64_t a2@<X2>, uint64_t *a3@<X8>, uint64_t (*x1_0)(id)@<X1>)
{

  v8 = sub_10015D4BC(v7, x1_0, a2);

  *a3 = v8;
  return result;
}

void sub_10015CBD8(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for UUID() - 8);
  v6 = *(v2 + 16);
  v7 = v2 + ((*(v5 + 80) + 24) & ~*(v5 + 80));

  sub_10015A540(a1, a2, v6, v7);
}

uint64_t sub_10015CC5C()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

void sub_10015CD20(uint64_t a1)
{
  v3 = *(type metadata accessor for UUID() - 8);
  v4 = *(v1 + 16);
  v5 = v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  sub_10015A9A4(a1, v4, v5);
}

void sub_10015CDA0(unint64_t a1, uint64_t a2, uint64_t a3, _TtC7remindd19RDXPCStorePerformer **a4)
{
  if (a1 >> 62)
  {
    goto LABEL_14;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v8 = 0;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v8 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_13;
        }

        v9 = *(a1 + 8 * v8 + 32);
      }

      v10 = v9;
      v11 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      v14 = v9;
      sub_10015B394(&v14, a2, a3, a4);

      if (!v4)
      {
        ++v8;
        if (v11 != i)
        {
          continue;
        }
      }

      return;
    }

    __break(1u);
LABEL_13:
    __break(1u);
LABEL_14:
    ;
  }
}

void sub_10015CEA4(unint64_t a1, _TtC7remindd19RDXPCStorePerformer **a2, void *a3)
{
  if (a1 >> 62)
  {
    goto LABEL_14;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v7 = 0;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v7 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_13;
        }

        v8 = *(a1 + 8 * v7 + 32);
      }

      v9 = v8;
      v10 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        break;
      }

      v12 = v8;
      sub_10015C678(&v12, a2, a3);

      if (!v3)
      {
        ++v7;
        if (v10 != i)
        {
          continue;
        }
      }

      return;
    }

    __break(1u);
LABEL_13:
    __break(1u);
LABEL_14:
    ;
  }
}

uint64_t sub_10015CFA4()
{
  v0 = sub_10000F8A4(1uLL, 0, 7u);
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
  v28 = NSManagedObjectContext.fetch<A>(_:)();

  return v28;
}

uint64_t sub_10015D2F8()
{

  return _swift_deallocObject(v0, 40, 7);
}

void sub_10015D34C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(id))
{
  v21 = 0;
  v4 = 0;
  v5 = a3 + 56;
  v6 = 1 << *(a3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a3 + 56);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
    v10 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
LABEL_11:
    v13 = v10 | (v4 << 6);
    v14 = *(a3 + 48) + 24 * v13;
    v15 = *(v14 + 16);
    v16 = *(v14 + 8);
    v17 = v15;
    LOBYTE(v15) = a4(v16);

    if (v15)
    {
      *(a1 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      if (__OFADD__(v21++, 1))
      {
        __break(1u);
LABEL_15:

        sub_1001A0644(a1, a2, v21, a3);
        return;
      }
    }
  }

  v11 = v4;
  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= v9)
    {
      goto LABEL_15;
    }

    v12 = *(v5 + 8 * v4);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v8 = (v12 - 1) & v12;
      goto LABEL_11;
    }
  }

  __break(1u);
}

Swift::Int sub_10015D4BC(int64_t a1, uint64_t (*a2)(id), uint64_t a3)
{
  v4 = v3;
  v31 = a2;
  v6 = a1;
  v7 = *(a1 + 32);
  v8 = v7 & 0x3F;
  v28 = ((1 << v7) + 63) >> 6;
  v9 = 8 * v28;

  if (v8 > 0xD)
  {
    goto LABEL_19;
  }

  while (1)
  {
    v27[0] = v27;
    v27[1] = v4;
    __chkstk_darwin(v10, v11);
    v29 = v27 - ((v9 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v29, v9);
    v30 = 0;
    v9 = 0;
    v32 = v6;
    v4 = v6 + 56;
    v12 = 1 << *(v6 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v6 + 56);
    v6 = (v12 + 63) >> 6;
    while (v14)
    {
      v15 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_12:
      v18 = v15 | (v9 << 6);
      v19 = *(v32 + 48) + 24 * v18;
      v20 = *(v19 + 16);
      v21 = *(v19 + 8);
      v22 = v20;
      LOBYTE(v20) = v31(v21);

      if (v20)
      {
        *&v29[(v18 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v18;
        if (__OFADD__(v30++, 1))
        {
          __break(1u);
LABEL_16:
          v24 = sub_1001A0644(v29, v28, v30, v32);

          return v24;
        }
      }
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v6)
      {
        goto LABEL_16;
      }

      v17 = *(v4 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v14 = (v17 - 1) & v17;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_19:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v26 = swift_slowAlloc();

  v24 = sub_10015CAB4(v26, v28, v6, v31, a3);

  return v24;
}

Swift::Int sub_10015D784()
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(1u);
  return Hasher._finalize()();
}

Swift::Int sub_10015D7F0(uint64_t a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(1u);
  return Hasher._finalize()();
}

void *sub_10015D850()
{
  v1 = v0;
  v110 = *v0;
  v2 = v110;
  sub_100010364(&v110, v111, &unk_10093B300, &unk_100797780);
  v3 = sub_10038EB78(&_swiftEmptyArrayStorage);
  v107 = v3;
  v4 = *(v2 + 16);
  if (!v4)
  {
    v86 = v3;
    goto LABEL_29;
  }

  v5 = (v2 + 40);
  v106 = v0;
  do
  {
    v6 = v1[2];
    if (!*(v6 + 16))
    {
      goto LABEL_4;
    }

    v8 = *(v5 - 1);
    v7 = *v5;

    v9 = sub_100005F4C(v8, v7);
    if ((v10 & 1) == 0)
    {
      v7, v10, v11, v12, v13, v14, v15, v16;
      goto LABEL_4;
    }

    v17 = (*(v6 + 56) + 16 * v9);
    v19 = *v17;
    v18 = v17[1];
    v20 = v107[2];

    if (v20)
    {
      sub_100005F4C(v19, v18);
      if (v21)
      {
        v22 = sub_100261A6C(v111, v19, v18);
        v24 = *v23;
        if (*v23)
        {
          v25 = v23;
          v105 = v22;

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *v25 = v24;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v24 = sub_100365788(0, *v24->clientIdentity + 1, 1, v24, v27, v28, v29, v30);
            *v25 = v24;
          }

          v32 = *v24->clientIdentity;
          v31 = *&v24->clientIdentity[8];
          if (v32 >= v31 >> 1)
          {
            v24 = sub_100365788((v31 > 1), v32 + 1, 1, v24, v27, v28, v29, v30);
            *v25 = v24;
          }

          *v24->clientIdentity = v32 + 1;
          v33 = v24 + 16 * v32;
          *(v33 + 4) = v8;
          *(v33 + 5) = v7;
          (v105)(v111, 0);
        }

        else
        {
          (v22)(v111, 0);
        }

        v18, v34, v35, v36, v37, v38, v39, v40;
        v7, v74, v75, v76, v77, v78, v79, v80;
        v1 = v106;
        goto LABEL_4;
      }
    }

    sub_1000F5104(&unk_100936FD0, &unk_100795D40);
    v41 = swift_allocObject();
    *(v41 + 16) = xmmword_100791300;
    *(v41 + 32) = v8;
    *(v41 + 40) = v7;

    v42 = swift_isUniquelyReferenced_nonNull_native();
    v111[0] = v107;
    v43 = sub_100005F4C(v19, v18);
    v51 = v107[2];
    v52 = (v44 & 1) == 0;
    v53 = __OFADD__(v51, v52);
    v54 = v51 + v52;
    if (v53)
    {
      __break(1u);
LABEL_34:
      __break(1u);
    }

    v55 = v44;
    if (v107[3] >= v54)
    {
      if ((v42 & 1) == 0)
      {
        v81 = v43;
        sub_10037443C();
        v43 = v81;
        if (v55)
        {
LABEL_21:
          v56 = v43;
          v18, v44, v45, v46, v47, v48, v49, v50;
          v57 = v111[0];
          v58 = v111[0][7];
          v59 = *(v58 + 8 * v56);
          *(v58 + 8 * v56) = v41;
          v7, v60, v61, v62, v63, v64, v65, v66;
          v59, v67, v68, v69, v70, v71, v72, v73;
          v107 = v57;
          v1 = v106;
          goto LABEL_4;
        }

        goto LABEL_25;
      }
    }

    else
    {
      sub_10036C5F8(v54, v42);
      v43 = sub_100005F4C(v19, v18);
      if ((v55 & 1) != (v44 & 1))
      {
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }
    }

    if (v55)
    {
      goto LABEL_21;
    }

LABEL_25:
    v82 = v111[0];
    v111[0][(v43 >> 6) + 8] |= 1 << v43;
    v83 = (v82[6] + 16 * v43);
    *v83 = v19;
    v83[1] = v18;
    *(v82[7] + 8 * v43) = v41;
    v7, v44, v45, v46, v47, v48, v49, v50;
    v84 = v82[2];
    v53 = __OFADD__(v84, 1);
    v85 = v84 + 1;
    if (v53)
    {
      goto LABEL_34;
    }

    v82[2] = v85;
    v107 = v82;
    v1 = v106;
LABEL_4:
    v5 += 2;
    --v4;
  }

  while (v4);
  v86 = v107;
LABEL_29:
  sub_1000F5104(&qword_100936EB0, &unk_1007954A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100792CE0;
  *(inited + 32) = 0xD000000000000012;
  *(inited + 40) = 0x80000001007ED350;
  v88 = sub_1000F5104(&unk_10093B300, &unk_100797780);
  *(inited + 48) = v110;
  *(inited + 72) = v88;
  *(inited + 80) = 0xD00000000000002BLL;
  *(inited + 88) = 0x80000001007ED370;
  v109 = v1[1];
  v89 = sub_1000F5104(&qword_100939A08, &unk_100796A80);
  *(inited + 96) = v109;
  *(inited + 120) = v89;
  *(inited + 128) = 0xD00000000000001FLL;
  *(inited + 136) = 0x80000001007ED3A0;
  *(inited + 144) = v86;
  *(inited + 168) = v89;
  *(inited + 176) = 0xD000000000000019;
  *(inited + 184) = 0x80000001007ED3C0;
  v108 = v1[3];
  v90 = v108;
  *(inited + 216) = sub_1000F5104(&qword_10093E9C0, qword_100794F90);
  *(inited + 192) = v90;
  sub_100010364(&v109, v111, &qword_100939A08, &unk_100796A80);
  sub_100010364(&v108, v111, &qword_10093E9C0, qword_100794F90);
  v91 = sub_1001F67C8(inited);
  swift_setDeallocating();
  sub_1000F5104(&unk_100939260, &unk_100797220);
  swift_arrayDestroy();
  v92 = objc_opt_self();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  v91, v94, v95, v96, v97, v98, v99, v100;
  v111[0] = 0;
  v101 = [v92 dataWithJSONObject:isa options:0 error:v111];

  v102 = v111[0];
  if (v101)
  {
    v103 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v103 = v102;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return v103;
}

void sub_10015DE20(_TtC7remindd19RDXPCStorePerformer *a1@<X0>, _TtC7remindd19RDXPCStorePerformer *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, _TtC7remindd19RDXPCStorePerformer **a5@<X8>)
{
  v83 = a4;
  v84 = a2;
  v85 = a1;
  v82 = a5;
  v87 = sub_10038E004(&_swiftEmptyArrayStorage);
  v7 = 1 << *(a3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a3 + 64);
  v10 = (v7 + 63) >> 6;

  v13 = 0;
  if (v9)
  {
    while (1)
    {
      v14 = v13;
LABEL_9:
      v15 = __clz(__rbit64(v9)) | (v14 << 6);
      v16 = (*(a3 + 48) + 16 * v15);
      v17 = v16[1];
      v18 = *(*(a3 + 56) + 8 * v15);
      v9 &= v9 - 1;
      v86[0] = *v16;
      v86[1] = v17;
      __chkstk_darwin(v11, v12);
      v81[2] = &v87;
      v81[3] = v86;

      sub_1002A11E8(sub_10015E944, v81, v18);
      v17, v19, v20, v21, v22, v23, v24, v25;
      v18, v26, v27, v28, v29, v30, v31, v32;
      if (!v9)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v14 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      __break(1u);
      return;
    }

    if (v14 >= v10)
    {
      break;
    }

    v9 = *(a3 + 64 + 8 * v14);
    ++v13;
    if (v9)
    {
      v13 = v14;
      goto LABEL_9;
    }
  }

  a3, v33, v34, v35, v36, v37, v38, v39;
  v40 = v87;
  v41 = v83;

  v42 = sub_1001A6DC0();
  v43 = v85;
  sub_10015E0CC(v85, v40, v42);
  if (v5)
  {
    v42, v44, v45, v46, v47, v48, v49, v50;
    v41, v51, v52, v53, v54, v55, v56, v57;
    v40, v58, v59, v60, v61, v62, v63, v64;
    v84, v65, v66, v67, v68, v69, v70, v71;
    v43, v72, v73, v74, v75, v76, v77, v78;
  }

  else
  {
    v79 = v82;
    v80 = v84;
    *v82 = v43;
    v79[1] = v80;
    v79[2] = v40;
    v79[3] = v41;
    v79[4] = v42;
  }
}

void sub_10015E030(uint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = *a3;
  v7 = a3[1];

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *a2;
  *a2 = 0x8000000000000000;
  sub_1002C72CC(v6, v7, v4, v5, isUniquelyReferenced_nonNull_native);
  v5, v9, v10, v11, v12, v13, v14, v15;
  *a2 = v16;
}

void sub_10015E0CC(uint64_t result, uint64_t a2, uint64_t a3)
{
  v47 = *(result + 16);
  if (v47)
  {
    v4 = a2;
    v5 = 0;
    v6 = result + 32;
    v7 = a3 + 56;
    while (1)
    {
      v15 = (v6 + 16 * v5);
      v17 = *v15;
      v16 = v15[1];
      v18 = *(v4 + 16);

      if (!v18)
      {
        break;
      }

      v19 = sub_100005F4C(v17, v16);
      if ((v20 & 1) == 0)
      {
        break;
      }

      v21 = (*(v4 + 56) + 16 * v19);
      v23 = *v21;
      v22 = v21[1];
      if (!*(a3 + 16))
      {

LABEL_15:
        sub_1000F5104(&qword_100939A10, &unk_100796A90);
        sub_10015E960();
        swift_allocError();
        *v37 = v23;
        *(v37 + 8) = v22;
        *(v37 + 16) = 1;
        swift_willThrow();
        v16, v38, v39, v40, v41, v42, v43, v44;
        return;
      }

      Hasher.init(_seed:)();

      String.hash(into:)();
      v24 = Hasher._finalize()();
      v31 = -1 << *(a3 + 32);
      v32 = v24 & ~v31;
      if (((*(v7 + ((v32 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v32) & 1) == 0)
      {
        goto LABEL_15;
      }

      ++v5;
      v33 = ~v31;
      while (1)
      {
        v34 = (*(a3 + 48) + 16 * v32);
        v35 = v34[1];
        v36 = *v34 == v23 && v35 == v22;
        if (v36 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          break;
        }

        v32 = (v32 + 1) & v33;
        if (((*(v7 + ((v32 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v32) & 1) == 0)
        {
          goto LABEL_15;
        }
      }

      v16, v35, v25, v26, v27, v28, v29, v30;
      v22, v8, v9, v10, v11, v12, v13, v14;
      v4 = a2;
      if (v5 == v47)
      {
        return;
      }
    }

    sub_1000F5104(&qword_100939A10, &unk_100796A90);
    sub_10015E960();
    swift_allocError();
    *v45 = v17;
    *(v45 + 8) = v16;
    *(v45 + 16) = 0;
    swift_willThrow();
  }
}

uint64_t sub_10015E2E4@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = objc_opt_self();
  isa = Data._bridgeToObjectiveC()().super.isa;
  v107[0] = 0;
  v9 = [v7 JSONObjectWithData:isa options:0 error:v107];

  if (!v9)
  {
    v53 = v107[0];
    _convertNSErrorToError(_:)();

LABEL_20:
    swift_willThrow();
    return sub_10001BBA0(a1, a2);
  }

  v10 = v107[0];
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  sub_1000F5104(&unk_100938CB0, &unk_100796A70);
  if ((swift_dynamicCast() & 1) == 0)
  {
    sub_10015ECF8(0, &qword_1009399F8, _s24DataDeserializationErrorOMa);
    sub_10015ECB4(&qword_100939A00, &qword_1009399F8, _s24DataDeserializationErrorOMa, &unk_100796AF8);
    swift_allocError();
    *v54 = 0;
    v54[1] = 0;
    goto LABEL_20;
  }

  if (!*(v104 + 16) || (v18 = sub_100005F4C(0xD000000000000012, 0x80000001007ED350), (v11 & 1) == 0) || (sub_100005EF0(*(v104 + 56) + 32 * v18, v107), sub_1000F5104(&unk_10093B300, &unk_100797780), (swift_dynamicCast() & 1) == 0))
  {
    v104, v11, v12, v13, v14, v15, v16, v17;
    sub_10015ECF8(0, &qword_1009399F8, _s24DataDeserializationErrorOMa);
    sub_10015ECB4(&qword_100939A00, &qword_1009399F8, _s24DataDeserializationErrorOMa, &unk_100796AF8);
    swift_allocError();
    *v55 = 0xD000000000000012;
    v55[1] = 0x80000001007ED350;
    goto LABEL_20;
  }

  if (!*(v104 + 16) || (v19 = sub_100005F4C(0xD00000000000002BLL, 0x80000001007ED370), (v11 & 1) == 0) || (sub_100005EF0(*(v104 + 56) + 32 * v19, v107), sub_1000F5104(&qword_100939A08, &unk_100796A80), (swift_dynamicCast() & 1) == 0))
  {
    v104, v11, v12, v13, v14, v15, v16, v17;
    v104, v56, v57, v58, v59, v60, v61, v62;
    sub_10015ECF8(0, &qword_1009399F8, _s24DataDeserializationErrorOMa);
    sub_10015ECB4(&qword_100939A00, &qword_1009399F8, _s24DataDeserializationErrorOMa, &unk_100796AF8);
    swift_allocError();
    *v63 = 0xD00000000000002BLL;
    v63[1] = 0x80000001007ED370;
    goto LABEL_20;
  }

  v103 = 0x80000001007ED3A0;
  if (!*(v104 + 16))
  {
    v104, 0x80000001007ED3A0, v12, v13, v14, v15, v16, v17;
    v71 = v104;
LABEL_26:
    v71, v64, v65, v66, v67, v68, v69, v70;
    v79 = v104;
LABEL_27:
    v79, v72, v73, v74, v75, v76, v77, v78;
    sub_10015ECF8(0, &qword_1009399F8, _s24DataDeserializationErrorOMa);
    sub_10015ECB4(&qword_100939A00, &qword_1009399F8, _s24DataDeserializationErrorOMa, &unk_100796AF8);
    swift_allocError();
    v81 = 0xD00000000000001FLL;
LABEL_28:
    *v80 = v81;
    v80[1] = v103;
    goto LABEL_20;
  }

  v20 = sub_100005F4C(0xD00000000000001FLL, 0x80000001007ED3A0);
  if ((v21 & 1) == 0)
  {
    v104, v21, v22, v23, v24, v25, v26, v27;
    v71 = v104;
    goto LABEL_26;
  }

  sub_100005EF0(*(v104 + 56) + 32 * v20, v107);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v104, v28, v29, v30, v31, v32, v33, v34;
    v104, v82, v83, v84, v85, v86, v87, v88;
    v79 = v104;
    goto LABEL_27;
  }

  v35 = 0x80000001007ED3C0;
  v103 = 0x80000001007ED3C0;
  if (!*(v104 + 16) || (v36 = sub_100005F4C(0xD000000000000019, 0x80000001007ED3C0), (v35 & 1) == 0))
  {
    v104, v35, v29, v30, v31, v32, v33, v34;
    goto LABEL_31;
  }

  sub_100005EF0(*(v104 + 56) + 32 * v36, v107);
  v104, v37, v38, v39, v40, v41, v42, v43;
  sub_1000F5104(&qword_10093E9C0, qword_100794F90);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_31:
    v104, v44, v45, v46, v47, v48, v49, v50;
    v104, v89, v90, v91, v92, v93, v94, v95;
    v104, v96, v97, v98, v99, v100, v101, v102;
    sub_10015ECF8(0, &qword_1009399F8, _s24DataDeserializationErrorOMa);
    sub_10015ECB4(&qword_100939A00, &qword_1009399F8, _s24DataDeserializationErrorOMa, &unk_100796AF8);
    swift_allocError();
    v81 = 0xD000000000000019;
    goto LABEL_28;
  }

  sub_10015DE20(v104, v104, v104, v104, v105);
  result = sub_10001BBA0(a1, a2);
  if (!v3)
  {
    v52 = v105[1];
    *a3 = v105[0];
    *(a3 + 16) = v52;
    *(a3 + 32) = v106;
  }

  return result;
}

unint64_t sub_10015E960()
{
  result = qword_100939A18[0];
  if (!qword_100939A18[0])
  {
    sub_1000F514C(&qword_100939A10, &unk_100796A90);
    result = swift_getWitnessTable();
    atomic_store(result, qword_100939A18);
  }

  return result;
}

void *assignWithCopy for RDSavedTemplateSection(void *a1, void *a2)
{
  *a1 = *a2;
  v3 = a1[1];
  a1[1] = a2[1];

  v3, v4, v5, v6, v7, v8, v9, v10;
  return a1;
}

void *assignWithTake for RDSavedTemplateSection(void *a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v9 = *(a2 + 1);
  v10 = a1[1];
  *a1 = *a2;
  a1[1] = v9;
  v10, a2, a3, a4, a5, a6, a7, a8;
  return a1;
}

uint64_t sub_10015EA44(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10015EA94(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_10015EAE8(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *sub_10015EB00(void *result, int a2)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

uint64_t sub_10015EB2C(unsigned __int16 *a1, int a2)
{
  if (a2)
  {
    if ((a2 + 0xFFFF) <= 0xFFFEFFFF)
    {
      v2 = 2;
    }

    else
    {
      v2 = 4;
    }

    if ((a2 + 0xFFFF) < 0xFF0000)
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
        return (*a1 | (v4 << 16)) - 0xFFFF;
      }
    }

    else if (v3 == 2)
    {
      v4 = a1[1];
      if (a1[1])
      {
        return (*a1 | (v4 << 16)) - 0xFFFF;
      }
    }

    else
    {
      v4 = *(a1 + 2);
      if (*(a1 + 2))
      {
        return (*a1 | (v4 << 16)) - 0xFFFF;
      }
    }
  }

  return 0;
}

_WORD *sub_10015EB9C(_WORD *result, int a2, int a3)
{
  if ((a3 + 0xFFFF) <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if ((a3 + 0xFFFF) < 0xFF0000)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    v5 = ((a2 - 1) >> 16) + 1;
    *result = a2 - 1;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        result[1] = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 2) = v5;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      result[1] = 0;
    }

    else
    {
      *(result + 1) = 0;
    }
  }

  else if (v4)
  {
    *(result + 2) = 0;
  }

  return result;
}

uint64_t sub_10015ECB4(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_10015ECF8(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_10015ECF8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void))
{
  if (!*a2)
  {
    v4 = a3(0);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_10015ED4C()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_100939BB0);
  v1 = sub_100006654(v0, qword_100939BB0);
  if (qword_1009364D8 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_1009751D0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

id sub_10015EE14(uint64_t a1)
{
  v3 = [*v1 objectIDs];
  sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v5 = sub_10015F170(a1, v4, 64, 0);
  v4, v6, v7, v8, v9, v10, v11, v12;
  return v5;
}

id sub_10015EEB8(uint64_t a1)
{
  v3 = [*v1 listObjectID];
  if (qword_1009365A8 != -1)
  {
    swift_once();
  }

  v4 = sub_10015F170(a1, v3, 1, qword_100975240);

  return v4;
}

id sub_10015EF60()
{
  v2 = v1;
  v3 = [v0 listObjectID];
  v4 = sub_100596AB8(v3, 1u);
  type metadata accessor for REMCDListSection();
  v5 = [objc_allocWithZone(NSFetchRequest) init];
  v6 = [swift_getObjCClassFromMetadata() entity];
  [v5 setEntity:v6];

  [v5 setAffectedStores:0];
  [v5 setPredicate:v4];

  v7 = NSManagedObjectContext.count<A>(for:)();
  if (!v1)
  {
    v8 = v7;
    v2 = [objc_allocWithZone(REMStoreInvocationResult) init];
    v9 = [objc_allocWithZone(NSNumber) initWithInteger:v8];
    [v2 storeProperty:v9 forKey:REMListSectionsDataViewFetchSectionsCountResultKey];

    v3 = v5;
    v5 = v9;
  }

  return v2;
}

NSString sub_10015F10C@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *a1;
  type metadata accessor for REMListSectionStorageCDIngestor();
  swift_initStackObject();
  result = sub_1003B5350(v4);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

id sub_10015F170(uint64_t a1, unint64_t a2, uint64_t a3, Class a4)
{
  v5 = v4;
  v7 = a3;
  type metadata accessor for REMCDListSection();
  v9 = sub_100597524();
  v10 = sub_100597980();
  v11 = sub_100596AB8(a2, v7);
  v12 = [objc_allocWithZone(NSFetchRequest) init];
  v13 = [swift_getObjCClassFromMetadata() entity];
  [v12 setEntity:v13];

  [v12 setAffectedStores:0];
  [v12 setPredicate:v11];

  v14 = sub_10003450C(v9);
  isa = Array._bridgeToObjectiveC()().super.isa;
  v14, v16, v17, v18, v19, v20, v21, v22;
  [v12 setPropertiesToFetch:isa];

  v23 = Array._bridgeToObjectiveC()().super.isa;
  [v12 setRelationshipKeyPathsForPrefetching:v23];

  if (a4)
  {
    sub_1000060C8(0, &qword_10093C980, NSSortDescriptor_ptr);
    a4 = Array._bridgeToObjectiveC()().super.isa;
  }

  [v12 setSortDescriptors:a4];

  v24 = NSManagedObjectContext.fetch<A>(_:)();
  v25 = v4;
  v9, v26, v27, v28, v29, v30, v31, v32;
  v10, v33, v34, v35, v36, v37, v38, v39;

  if (!v4)
  {
    if (qword_100935AE0 != -1)
    {
LABEL_38:
      swift_once();
    }

    v40 = type metadata accessor for Logger();
    v41 = sub_100006654(v40, qword_100939BB0);
    v154 = v24;
    __chkstk_darwin(v41, v42);
    sub_1000F5104(&qword_100939BC8, &unk_100796D40);
    sub_1000060C8(0, &qword_100939BD0, REMListSectionStorage_ptr);
    sub_10000CB90(&qword_100939BD8, &qword_100939BC8, &unk_100796D40);
    v43 = Sequence.map<A>(skippingError:_:)();
    if (v25)
    {

      v150 = &_swiftEmptyArrayStorage;
    }

    else
    {
      v150 = v43;
    }

    v154 = &_swiftEmptyArrayStorage;
    v25 = v24 & 0xFFFFFFFFFFFFFF8;
    if (v24 >> 62)
    {
      v44 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v44 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v45 = 0;
    v46 = v24 & 0xC000000000000001;
    v152 = &_swiftEmptyArrayStorage;
    while (v44 != v45)
    {
      if (v46)
      {
        v47 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v45 >= *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_35;
        }

        v47 = *(v24 + 8 * v45 + 32);
      }

      v48 = v47;
      v49 = v45 + 1;
      if (__OFADD__(v45, 1))
      {
        __break(1u);
LABEL_35:
        __break(1u);
LABEL_36:
        __break(1u);
LABEL_37:
        __break(1u);
        goto LABEL_38;
      }

      v50 = [v47 list];

      ++v45;
      if (v50)
      {
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v154 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v154 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v152 = v154;
        v45 = v49;
      }
    }

    v154 = v152;
    sub_1000F5104(&qword_10093F6F0, qword_10079A300);
    sub_10000CB90(&qword_100945210, &qword_10093F6F0, qword_10079A300);
    sub_10000CE28(&qword_100939BE0, &unk_100938880, off_1008D41A8);
    v51 = Sequence<>.unique()();
    v152, v52, v53, v54, v55, v56, v57, v58;
    v154 = _swiftEmptyDictionarySingleton;
    sub_100011D74(&_swiftEmptyArrayStorage, v51, &v154);
    v151 = v59;
    v153 = _swiftEmptyDictionarySingleton;
    sub_10002BE2C(&_swiftEmptyArrayStorage, v51, &v153);
    v148 = v61;
    v153, v62, v63, v64, v65, v66, v67, v68;
    v69 = v154;
    v51, v70, v71, v72, v73, v74, v75, v76;
    v69, v77, v78, v79, v80, v81, v82, v83;
    v91 = 0;
    v149 = &_swiftEmptyArrayStorage;
    v154 = &_swiftEmptyArrayStorage;
    while (v44 != v91)
    {
      if (v46)
      {
        v92 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v91 >= *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_37;
        }

        v92 = *(v24 + 8 * v91 + 32);
      }

      v93 = v92;
      v94 = v91 + 1;
      if (__OFADD__(v91, 1))
      {
        goto LABEL_36;
      }

      v95 = [v92 list];

      ++v91;
      if (v95)
      {
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v154 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v154 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v149 = v154;
        v91 = v94;
      }
    }

    v24, v84, v85, v86, v87, v88, v89, v90;
    v154 = v149;
    v96 = Sequence<>.unique()();
    v149, v97, v98, v99, v100, v101, v102, v103;
    v154 = v96;
    __chkstk_darwin(v104, v105);
    sub_1000060C8(0, &unk_10094F0C0, REMListStorage_ptr);
    v106 = Sequence.map<A>(skippingError:_:)();
    v96, v107, v108, v109, v110, v111, v112, v113;
    v154 = v106;
    sub_100271FB4(v148);
    v114 = v154;
    sub_1000F5104(&qword_10093F640, &qword_100796D50);
    sub_10000CB90(&qword_100939BE8, &qword_10093F640, &qword_100796D50);
    sub_10000CE28(&unk_100939BF0, &unk_10094F0C0, REMListStorage_ptr);
    v115 = Sequence<>.unique()();
    v114, v116, v117, v118, v119, v120, v121, v122;
    v123 = objc_allocWithZone(REMListSectionsDataViewInvocationResult);
    sub_1000060C8(0, &unk_10093F580, REMAccountStorage_ptr);
    v124 = Array._bridgeToObjectiveC()().super.isa;
    v151, v125, v126, v127, v128, v129, v130, v131;
    v132 = Array._bridgeToObjectiveC()().super.isa;
    v115, v133, v134, v135, v136, v137, v138, v139;
    v140 = Array._bridgeToObjectiveC()().super.isa;
    v150, v141, v142, v143, v144, v145, v146, v147;
    v5 = [v123 initWithAccountStorages:v124 listStorages:v132 listSectionStorages:v140];
  }

  return v5;
}

_TtC7remindd19RDXPCStorePerformer *sub_10015F9F0(unint64_t a1, id *a2)
{
  if (a1 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
  {
    result = &_swiftEmptyArrayStorage;
    if (!i)
    {
      break;
    }

    v14 = &_swiftEmptyArrayStorage;
    result = specialized ContiguousArray.reserveCapacity(_:)();
    if (i < 0)
    {
      __break(1u);
      return result;
    }

    for (j = 0; ; ++j)
    {
      v7 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      if ((a1 & 0xC000000000000001) != 0)
      {
        v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (j >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v8 = *(a1 + 8 * j + 32);
      }

      v9 = v8;
      v12 = v8;
      sub_100170DAC(&v12, a2, &v11, &v13);

      if (v2)
      {
      }

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      if (v7 == i)
      {
        return v14;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  return result;
}