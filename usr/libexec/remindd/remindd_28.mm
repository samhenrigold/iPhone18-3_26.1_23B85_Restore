uint64_t sub_1002CB3B8(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  v11 = *(v10 + 32);
  v12 = *(v10 + 72) * a1;
  v11(v8 + v12, a2, v9);
  result = (v11)(a4[7] + v12, a3, v9);
  v14 = a4[2];
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (v15)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v16;
  }

  return result;
}

_OWORD *sub_1002CB494(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_100005EE0(a4, (a5[7] + 32 * a1));
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

unint64_t sub_1002CB500(unint64_t result, uint64_t a2, uint64_t a3, __int128 *a4, void *a5)
{
  v5 = *a4;
  v6 = a4[1];
  v7 = *(a4 + 4);
  v8 = *(a4 + 5);
  a5[(result >> 6) + 8] |= 1 << result;
  v9 = (a5[6] + 16 * result);
  *v9 = a2;
  v9[1] = a3;
  v10 = a5[7] + 48 * result;
  *v10 = v5;
  *(v10 + 16) = v6;
  *(v10 + 32) = v7;
  *(v10 + 40) = v8;
  v11 = a5[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v13;
  }

  return result;
}

uint64_t sub_1002CB55C(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v8 = (a5[6] + 16 * a1);
  *v8 = a2;
  v8[1] = a3;
  v9 = a5[7];
  v10 = type metadata accessor for Date();
  result = (*(*(v10 - 8) + 32))(v9 + *(*(v10 - 8) + 72) * a1, a4, v10);
  v12 = a5[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v14;
  }

  return result;
}

uint64_t sub_1002CB60C(unint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_100054B6C(a4, a5[7] + 40 * a1);
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

uint64_t sub_1002CB67C(unint64_t a1, uint64_t a2, __int128 *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = type metadata accessor for UUID();
  (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  result = sub_100054B6C(a3, a4[7] + 40 * a1);
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

uint64_t sub_1002CB740(unint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t (*a5)(void))
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v9 = a4[6];
  v10 = a5(0);
  result = (*(*(v10 - 8) + 32))(v9 + *(*(v10 - 8) + 72) * a1, a2, v10);
  *(a4[7] + 8 * a1) = a3;
  v12 = a4[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v14;
  }

  return result;
}

uint64_t sub_1002CB7FC(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = type metadata accessor for UUID();
  (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  v10 = a4[7];
  v11 = type metadata accessor for RDSavedReminder(0);
  result = sub_10013FE70(a3, v10 + *(*(v11 - 8) + 72) * a1);
  v13 = a4[2];
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v15;
  }

  return result;
}

uint64_t sub_1002CB8D8(uint64_t a1)
{
  v2 = sub_1000F5104(&qword_100940EE8, &qword_1007A0880);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1002CB94C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RDSavedReminder(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_1002CB9D4()
{
  v1 = sub_10029B198(1, 160);
  v2 = sub_10040582C(0, 0, 0, v1);
  [(RDXPCStorePerformer *)v2 setFetchLimit:1];
  sub_1000060C8(0, &qword_100940360, off_1008D4138);
  NSManagedObjectContext.count<A>(for:)();
  if (!v0)
  {
    REMPrivacyPermissionsDataView.IncompleteRemindersCountWithLocationInvocation.Result.init(hasLocationAlarms:)();
  }
}

uint64_t sub_1002CBA90(uint64_t a1)
{
  result = sub_1002CBC5C(&qword_100940F20, &type metadata accessor for REMPrivacyPermissionsDataView.IncompleteRemindersCountWithLocationInvocation, &protocol conformance descriptor for REMPrivacyPermissionsDataView.IncompleteRemindersCountWithLocationInvocation);
  *(a1 + 8) = result;
  return result;
}

void sub_1002CBAE8()
{
  v1 = _s10PredicatesOMa(0);
  __chkstk_darwin(v1, v1);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_storeEnumTagMultiPayload();
  v4 = sub_100043AA8();
  sub_1000513B4(v3);
  v5 = sub_100050654(0, 0, 0, v4);
  [(RDXPCStorePerformer *)v5 setFetchLimit:1];
  sub_1000060C8(0, &qword_100939EE0, off_1008D41D0);
  NSManagedObjectContext.count<A>(for:)();
  if (!v0)
  {
    REMPrivacyPermissionsDataView.IncompleteRemindersCountWithDueDateInvocation.Result.init(hasRemindersWithDueDate:)();
  }
}

uint64_t sub_1002CBC04(uint64_t a1)
{
  result = sub_1002CBC5C(&qword_100940F48, &type metadata accessor for REMPrivacyPermissionsDataView.IncompleteRemindersCountWithDueDateInvocation, &protocol conformance descriptor for REMPrivacyPermissionsDataView.IncompleteRemindersCountWithDueDateInvocation);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1002CBC5C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1002CBCA4(uint64_t a1)
{
  v3 = sub_1000F5104(&qword_100940F50, &qword_1007A0930);
  __chkstk_darwin(v3, v4);
  v6 = &v13 - v5;
  v7 = *(a1 + 16);
  updated = type metadata accessor for RDSharedListActivityNotificationsEngine.JournalEntryUpdateItem(0);
  v10 = *(updated - 8);
  v11 = v10;
  if (v7)
  {
    sub_1002CDE74(a1 + ((*(v10 + 80) + 32) & ~*(v10 + 80)), v6, v9);
    (*(v11 + 56))(v6, 0, 1, updated);
  }

  else
  {
    (*(v10 + 56))(v6, 1, 1, updated);
  }

  Optional.tryUnwrap(_:file:line:)();
  return sub_1002CE63C(v6);
}

void sub_1002CBE1C(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v194 = a1;
  v5 = type metadata accessor for RDUserNotificationCategory();
  v6 = *(v5 - 1);
  __chkstk_darwin(v5, v7);
  v9 = v179 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  updated = type metadata accessor for RDSharedListActivityNotificationsEngine.JournalEntryUpdateItem(0);
  __chkstk_darwin(updated, v10);
  v12 = v179 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13, v14);
  v191 = v179 - v15;
  __chkstk_darwin(v16, v17);
  v19 = (v179 - v18);
  __chkstk_darwin(v20, v21);
  v23 = v179 - v22;
  if (a2 >> 62)
  {
    v190 = _CocoaArrayWrapper.endIndex.getter();
    v24 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v190 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v24 = v190;
  }

  v187 = v9;
  v188 = v6;
  v189 = v12;
  v192 = v24;
  if (v24)
  {
    if ((a2 & 0xC000000000000001) != 0)
    {
      v25 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (!*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_27;
      }

      v25 = *(a2 + 32);
    }

    v26 = v25;
  }

  else
  {
    v26 = 0;
  }

  v195 = v26;
  sub_1000F5104(&unk_100943E10, &qword_1007A0928);
  Optional.tryUnwrap(_:file:line:)();
  if (v2)
  {

    return;
  }

  v185 = v5;

  v186 = v197;
  v27 = [v197 title];
  if (v27)
  {
    v28 = v27;
    v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v31 = v30;
  }

  else
  {
    v29 = 0;
    v31 = 0;
  }

  v195 = v29;
  v196 = v31;
  v32 = sub_1000F5104(&unk_100939E40, &qword_100791BD0);
  Optional.tryUnwrap(_:file:line:)();
  v184 = v32;
  v31, v33, v34, v35, v36, v37, v38, v39;
  v41 = v197;
  v40 = v198;
  v42 = v194;
  sub_1002CBCA4(v194);
  v182 = v41;
  v183 = v40;
  sub_1002CDA5C(v23, v43);
  v3 = 0;
  v45 = v44;
  sub_1002CDED8(v23, v46);
  if (v45)
  {
    v47 = [v45 shortName];

    if (v47)
    {
      v48 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v50 = v49;
    }

    else
    {
      v48 = 0;
      v50 = 0;
    }

    v42 = v194;
  }

  else
  {
    v48 = 0;
    v50 = 0;
  }

  sub_1002CBCA4(v42);
  v180 = v48;
  v181 = v50;
  v51 = [*(&v19->super.isa + *(updated + 28)) list];
  v199 = v51;
  v52 = sub_1000F5104(&unk_100943240, &qword_10079A3B8);
  Optional.tryUnwrap(_:file:line:)();
  v179[0] = "tle from reminder";
  v179[1] = v52;

  v60 = v195;
  sub_1002CDED8(v19, v61);
  v62 = [v60 name];

  if (v62)
  {
    v63 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v65 = v64;
  }

  else
  {
    v63 = 0;
    v65 = 0;
  }

  v66 = v180;
  v195 = v63;
  v196 = v65;
  Optional.tryUnwrap(_:file:line:)();
  v12 = v66;
  v65, v67, v68, v69, v70, v71, v72, v73;
  v5 = v197;
  v19 = v198;
  v9 = v191;
  sub_1002CBCA4(v194);
  v6 = [*&v9[*(updated + 28)] list];
  v195 = v6;
  Optional.tryUnwrap(_:file:line:)();
LABEL_27:

  v74 = v197;
  sub_1002CDED8(v9, v75);
  v76 = [v74 shouldCategorizeGroceryItems];

  v77 = [objc_allocWithZone(UNMutableNotificationContent) init];
  v78 = v12;
  v79 = v181;
  v80 = v183;
  sub_1002CE198(v78, v181, v182, v183, v190, v5, v19, v76);
  if (v3)
  {

    v80, v88, v89, v90, v91, v92, v93, v94;
    v19, v95, v96, v97, v98, v99, v100, v101;

    v79, v53, v54, v55, v56, v57, v58, v59;
  }

  else
  {
    v102 = v81;
    v180 = v5;
    v182 = v19;
    v80, v81, v82, v83, v84, v85, v86, v87;
    v79, v103, v104, v105, v106, v107, v108, v109;
    v110 = String._bridgeToObjectiveC()();
    v102, v111, v112, v113, v114, v115, v116, v117;
    [v77 setBody:v110];

    v119 = 0;
    v184 = &_swiftEmptyArrayStorage;
    v197 = &_swiftEmptyArrayStorage;
    v191 = (a2 & 0xC000000000000001);
    while (v192 != v119)
    {
      if (v191)
      {
        v120 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v119 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_44;
        }

        v120 = *(a2 + 8 * v119 + 32);
      }

      v121 = v120;
      v122 = v119 + 1;
      if (__OFADD__(v119, 1))
      {
        __break(1u);
LABEL_44:
        __break(1u);
        return;
      }

      v123 = [v120 remObjectID];

      ++v119;
      if (v123)
      {
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v197 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v197 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v184 = v197;
        v119 = v122;
      }
    }

    v124 = v184;
    v118.value._rawValue = v184;
    UNMutableNotificationContent.setReminderIDs(_:)(v118);
    v124, v125, v126, v127, v128, v129, v130, v131;
    sub_1002CBCA4(v194);
    v132 = [*&v189[*(updated + 28)] list];
    v195 = v132;
    Optional.tryUnwrap(_:file:line:)();

    v133 = v197;
    sub_1002CDED8(v189, v134);
    v135 = [v133 remObjectID];

    UNMutableNotificationContent.setListID(_:)();
    v137 = v187;
    v136 = v188;
    v138 = &enum case for RDUserNotificationCategory.sharedListSingleReminderAddedNotification(_:);
    if (v190 != 1)
    {
      v138 = &enum case for RDUserNotificationCategory.sharedListMultipleRemindersAddedNotification(_:);
    }

    v139 = v185;
    v188[13](v187, *v138, v185);
    v140 = RDUserNotificationCategory.rawValue.getter();
    v142 = v141;
    (v136[1])(v137, v139);
    v143 = String._bridgeToObjectiveC()();
    [v77 setCategoryIdentifier:v143];

    v197 = v140;
    v198 = v142;

    v144._countAndFlagsBits = 45;
    v144._object = 0xE100000000000000;
    String.append(_:)(v144);
    v142, v145, v146, v147, v148, v149, v150, v151;
    v152 = v198;

    v153._countAndFlagsBits = v180;
    v154 = v182;
    v153._object = v182;
    String.append(_:)(v153);
    v152, v155, v156, v157, v158, v159, v160, v161;
    v154, v162, v163, v164, v165, v166, v167, v168;
    v169 = v198;
    v170 = String._bridgeToObjectiveC()();
    v169, v171, v172, v173, v174, v175, v176, v177;
    [v77 setThreadIdentifier:v170];

    v178 = [objc_opt_self() soundWithAlertType:11];
    [v77 setSound:v178];
  }
}

void sub_1002CC8F4(_TtC7remindd19RDXPCStorePerformer **a1, __n128 a2)
{
  v3 = *(type metadata accessor for RDSharedListActivityNotificationsEngine.JournalEntryUpdateItem(0) - 8);
  v4 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v4 = sub_100436478(v4);
  }

  v5 = *v4->clientIdentity;
  v6[0] = v4 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
  v6[1] = v5;
  sub_1002CC99C(v6);
  *a1 = v4;
}

void sub_1002CC99C(uint64_t *a1)
{
  v2 = a1[1];
  v3 = _minimumMergeRunLength(_:)(v2);
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v5 = v3;
      v6 = v2 / 2;
      if (v2 <= 1)
      {
        v7 = &_swiftEmptyArrayStorage;
      }

      else
      {
        type metadata accessor for RDSharedListActivityNotificationsEngine.JournalEntryUpdateItem(0);
        v7 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *v7->clientIdentity = v6;
      }

      v8 = *(type metadata accessor for RDSharedListActivityNotificationsEngine.JournalEntryUpdateItem(0) - 8);
      v17[0] = v7 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
      v17[1] = v6;
      sub_1002CCCE4(v17, v9, v18, a1, v5);
      *v7->clientIdentity = 0;
      v7, v10, v11, v12, v13, v14, v15, v16;
      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_1002CCAC8(0, v2, 1, a1, v4);
  }
}

void sub_1002CCAC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, __n128 a5)
{
  updated = type metadata accessor for RDSharedListActivityNotificationsEngine.JournalEntryUpdateItem(0);
  v9 = *(updated - 8);
  __chkstk_darwin(updated, v10);
  v12 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13, v14);
  v16 = &v36 - v15;
  __chkstk_darwin(v17, v18);
  v20 = &v36 - v19;
  v38 = a2;
  if (a3 != a2)
  {
    v21 = *a4;
    type metadata accessor for Date();
    v23 = *(v9 + 72);
    v24 = v21 + v23 * (a3 - 1);
    v25 = -v23;
    v26 = a1 - a3;
    v43 = v21;
    v37 = v23;
    v27 = v21 + v23 * a3;
LABEL_5:
    v41 = v24;
    v42 = a3;
    v39 = v27;
    v40 = v26;
    v28 = v26;
    v29 = v24;
    while (1)
    {
      sub_1002CDE74(v27, v20, v22);
      sub_1002CDE74(v29, v16, v30);
      sub_1002CDF34();
      v31 = dispatch thunk of static Comparable.< infix(_:_:)();
      sub_1002CDED8(v16, v32);
      sub_1002CDED8(v20, v33);
      if ((v31 & 1) == 0)
      {
LABEL_4:
        a3 = v42 + 1;
        v24 = v41 + v37;
        v26 = v40 - 1;
        v27 = v39 + v37;
        if (v42 + 1 == v38)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v43)
      {
        break;
      }

      sub_1002CDF8C(v27, v12, v22);
      swift_arrayInitWithTakeFrontToBack();
      sub_1002CDF8C(v12, v29, v34);
      v29 += v25;
      v27 += v25;
      if (__CFADD__(v28++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_1002CCCE4(int64_t *a1, __n128 a2, uint64_t a3, uint64_t *a4, int64_t a5)
{
  v123 = a1;
  updated = type metadata accessor for RDSharedListActivityNotificationsEngine.JournalEntryUpdateItem(0);
  v132 = *(updated - 8);
  __chkstk_darwin(updated, v8);
  v126 = &v121 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10, v11);
  v135 = &v121 - v12;
  __chkstk_darwin(v13, v14);
  v16 = &v121 - v15;
  v25 = __chkstk_darwin(v17, v18);
  v27 = &v121 - v26;
  v134 = a4;
  v28 = a4[1];
  if (v28 < 1)
  {
    v30 = &_swiftEmptyArrayStorage;
LABEL_96:
    v5 = *v123;
    if (!*v123)
    {
      goto LABEL_137;
    }

    a5 = v30;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v46 = v124;
    if (isUniquelyReferenced_nonNull_native)
    {
      v116 = a5;
    }

    else
    {
LABEL_131:
      v116 = sub_1004361F4(a5, v19, v20, v30, v21, v22, v23, v24);
    }

    v137 = v116;
    v117 = *v116->clientIdentity;
    if (v117 >= 2)
    {
      while (*v134)
      {
        a5 = v117 - 1;
        v118 = *(&v116->super.isa + 2 * v117);
        v94 = v116;
        v119 = *&v116->clientIdentity[16 * v117 + 8];
        sub_1002CD568(*v134 + *(v132 + 72) * v118, *v134 + *(v132 + 72) * *&v116->clientIdentity[16 * v117], *v134 + *(v132 + 72) * v119, v5, v115);
        if (v46)
        {
          goto LABEL_108;
        }

        if (v119 < v118)
        {
          goto LABEL_124;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v94 = sub_1004361F4(v94, v19, v20, v30, v21, v22, v23, v24);
        }

        if (v117 - 2 >= *v94->clientIdentity)
        {
          goto LABEL_125;
        }

        v120 = &v94->super.isa + 2 * v117;
        *v120 = v118;
        v120[1] = v119;
        v137 = v94;
        sub_100436168(a5);
        v116 = v137;
        v117 = *v137->clientIdentity;
        if (v117 <= 1)
        {
          goto LABEL_109;
        }
      }

      goto LABEL_135;
    }

LABEL_109:
    v116, v19, v20, v30, v21, v22, v23, v24;
    return;
  }

  v29 = 0;
  v30 = &_swiftEmptyArrayStorage;
  v122 = a5;
  while (1)
  {
    v31 = v29;
    v32 = v29 + 1;
    v127 = v30;
    if (v32 >= v28)
    {
      v45 = v32;
      v46 = v124;
    }

    else
    {
      v33 = *v134;
      v130 = v33;
      v34 = *(v132 + 72);
      v5 = v33 + v34 * v32;
      sub_1002CDE74(v5, v27, v25);
      sub_1002CDE74(v33 + v34 * v31, v16, v35);
      type metadata accessor for Date();
      sub_1002CDF34();
      LODWORD(v131) = dispatch thunk of static Comparable.< infix(_:_:)();
      sub_1002CDED8(v16, v36);
      sub_1002CDED8(v27, v37);
      v121 = v31;
      v39 = v31 + 2;
      v133 = v34;
      v40 = v130 + v34 * (v31 + 2);
      while (v28 != v39)
      {
        sub_1002CDE74(v40, v27, v38);
        sub_1002CDE74(v5, v16, v41);
        v42 = dispatch thunk of static Comparable.< infix(_:_:)() & 1;
        sub_1002CDED8(v16, v43);
        sub_1002CDED8(v27, v44);
        ++v39;
        v40 += v133;
        v5 += v133;
        if ((v131 & 1) != v42)
        {
          v45 = v39 - 1;
          goto LABEL_11;
        }
      }

      v45 = v28;
LABEL_11:
      v30 = v127;
      v31 = v121;
      a5 = v122;
      v46 = v124;
      if (v131)
      {
        if (v45 < v121)
        {
          goto LABEL_128;
        }

        if (v121 < v45)
        {
          v47 = v133 * (v45 - 1);
          v5 = v45 * v133;
          v131 = v45;
          v48 = v121;
          v49 = v121 * v133;
          do
          {
            if (v48 != --v45)
            {
              v51 = *v134;
              if (!*v134)
              {
                goto LABEL_134;
              }

              sub_1002CDF8C(v51 + v49, v126, v38);
              if (v49 < v47 || v51 + v49 >= (v51 + v5))
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v49 != v47)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              sub_1002CDF8C(v126, v51 + v47, v50);
              v30 = v127;
            }

            ++v48;
            v47 -= v133;
            v5 -= v133;
            v49 += v133;
          }

          while (v48 < v45);
          v46 = v124;
          v31 = v121;
          a5 = v122;
          v45 = v131;
        }
      }
    }

    v52 = v134[1];
    if (v45 < v52)
    {
      if (__OFSUB__(v45, v31))
      {
        goto LABEL_127;
      }

      if (v45 - v31 < a5)
      {
        if (__OFADD__(v31, a5))
        {
          goto LABEL_129;
        }

        if (v31 + a5 >= v52)
        {
          v5 = v134[1];
        }

        else
        {
          v5 = v31 + a5;
        }

        if (v5 < v31)
        {
LABEL_130:
          __break(1u);
          goto LABEL_131;
        }

        if (v45 != v5)
        {
          break;
        }
      }
    }

    v5 = v45;
    if (v45 < v31)
    {
      goto LABEL_126;
    }

LABEL_35:
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v30 = v127;
    }

    else
    {
      v30 = sub_1003658B8(0, *v127->clientIdentity + 1, 1, v127, v21, v22, v23, v24);
    }

    a5 = *v30->clientIdentity;
    v53 = *&v30->clientIdentity[8];
    v54 = a5 + 1;
    if (a5 >= v53 >> 1)
    {
      v30 = sub_1003658B8((v53 > 1), a5 + 1, 1, v30, v21, v22, v23, v24);
    }

    *v30->clientIdentity = v54;
    v55 = v30 + 16 * a5;
    *(v55 + 4) = v31;
    *(v55 + 5) = v5;
    v56 = *v123;
    if (!*v123)
    {
      goto LABEL_136;
    }

    v128 = v5;
    if (a5)
    {
      while (1)
      {
        v5 = v54 - 1;
        if (v54 >= 4)
        {
          break;
        }

        if (v54 == 3)
        {
          v57 = *&v30->clientIdentity[16];
          v58 = *&v30->clientIdentity[24];
          v67 = __OFSUB__(v58, v57);
          v59 = v58 - v57;
          v60 = v67;
LABEL_54:
          if (v60)
          {
            goto LABEL_115;
          }

          v73 = &v30->super.isa + 2 * v54;
          v75 = *v73;
          v74 = v73[1];
          v76 = __OFSUB__(v74, v75);
          v77 = v74 - v75;
          v78 = v76;
          if (v76)
          {
            goto LABEL_118;
          }

          v79 = &v30->clientIdentity[16 * v5 + 16];
          v81 = *v79;
          v80 = *(v79 + 1);
          v67 = __OFSUB__(v80, v81);
          v82 = v80 - v81;
          if (v67)
          {
            goto LABEL_121;
          }

          if (__OFADD__(v77, v82))
          {
            goto LABEL_122;
          }

          if (v77 + v82 >= v59)
          {
            if (v59 < v82)
            {
              v5 = v54 - 2;
            }

            goto LABEL_75;
          }

          goto LABEL_68;
        }

        v83 = &v30->super.isa + 2 * v54;
        v85 = *v83;
        v84 = v83[1];
        v67 = __OFSUB__(v84, v85);
        v77 = v84 - v85;
        v78 = v67;
LABEL_68:
        if (v78)
        {
          goto LABEL_117;
        }

        v86 = v30 + 16 * v5;
        v88 = *(v86 + 4);
        v87 = *(v86 + 5);
        v67 = __OFSUB__(v87, v88);
        v89 = v87 - v88;
        if (v67)
        {
          goto LABEL_120;
        }

        if (v89 < v77)
        {
          goto LABEL_3;
        }

LABEL_75:
        a5 = v5 - 1;
        if (v5 - 1 >= v54)
        {
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
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
          goto LABEL_130;
        }

        if (!*v134)
        {
          goto LABEL_133;
        }

        v94 = v30;
        v95 = *&v30->clientIdentity[16 * a5 + 16];
        v96 = *&v30->clientIdentity[16 * v5 + 24];
        sub_1002CD568(*v134 + *(v132 + 72) * v95, *v134 + *(v132 + 72) * *&v30->clientIdentity[16 * v5 + 16], *v134 + *(v132 + 72) * v96, v56, v25);
        if (v46)
        {
LABEL_108:
          v116 = v94;
          goto LABEL_109;
        }

        if (v96 < v95)
        {
          goto LABEL_111;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v94 = sub_1004361F4(v94, v19, v20, v30, v21, v22, v23, v24);
        }

        if (a5 >= *v94->clientIdentity)
        {
          goto LABEL_112;
        }

        v97 = v94 + 16 * a5;
        *(v97 + 4) = v95;
        *(v97 + 5) = v96;
        v137 = v94;
        sub_100436168(v5);
        v30 = v137;
        v54 = *v137->clientIdentity;
        if (v54 <= 1)
        {
          goto LABEL_3;
        }
      }

      v61 = &v30->clientIdentity[16 * v54 + 16];
      v62 = *(v61 - 64);
      v63 = *(v61 - 56);
      v67 = __OFSUB__(v63, v62);
      v64 = v63 - v62;
      if (v67)
      {
        goto LABEL_113;
      }

      v66 = *(v61 - 48);
      v65 = *(v61 - 40);
      v67 = __OFSUB__(v65, v66);
      v59 = v65 - v66;
      v60 = v67;
      if (v67)
      {
        goto LABEL_114;
      }

      v68 = &v30->super.isa + 2 * v54;
      v70 = *v68;
      v69 = v68[1];
      v67 = __OFSUB__(v69, v70);
      v71 = v69 - v70;
      if (v67)
      {
        goto LABEL_116;
      }

      v67 = __OFADD__(v59, v71);
      v72 = v59 + v71;
      if (v67)
      {
        goto LABEL_119;
      }

      if (v72 >= v64)
      {
        v90 = &v30->clientIdentity[16 * v5 + 16];
        v92 = *v90;
        v91 = *(v90 + 1);
        v67 = __OFSUB__(v91, v92);
        v93 = v91 - v92;
        if (v67)
        {
          goto LABEL_123;
        }

        if (v59 < v93)
        {
          v5 = v54 - 2;
        }

        goto LABEL_75;
      }

      goto LABEL_54;
    }

LABEL_3:
    v124 = v46;
    v28 = v134[1];
    v29 = v128;
    a5 = v122;
    if (v128 >= v28)
    {
      goto LABEL_96;
    }
  }

  v124 = v46;
  v98 = v31;
  v99 = *v134;
  type metadata accessor for Date();
  v101 = *(v132 + 72);
  v102 = v99 + v101 * (v45 - 1);
  v103 = -v101;
  v121 = v98;
  v104 = v98 - v45;
  v125 = v101;
  a5 = v99 + v45 * v101;
  v128 = v5;
LABEL_86:
  v130 = v104;
  v131 = v45;
  v129 = a5;
  v105 = v104;
  v133 = v102;
  v106 = v102;
  while (1)
  {
    sub_1002CDE74(a5, v27, v100);
    sub_1002CDE74(v106, v16, v107);
    sub_1002CDF34();
    v108 = dispatch thunk of static Comparable.< infix(_:_:)();
    sub_1002CDED8(v16, v109);
    sub_1002CDED8(v27, v110);
    if ((v108 & 1) == 0)
    {
LABEL_85:
      v45 = v131 + 1;
      v102 = v133 + v125;
      v104 = v130 - 1;
      v5 = v128;
      a5 = v129 + v125;
      if (v131 + 1 != v128)
      {
        goto LABEL_86;
      }

      v46 = v124;
      v30 = v127;
      v31 = v121;
      if (v128 < v121)
      {
        goto LABEL_126;
      }

      goto LABEL_35;
    }

    if (!v99)
    {
      break;
    }

    v111 = v135;
    sub_1002CDF8C(a5, v135, v100);
    swift_arrayInitWithTakeFrontToBack();
    sub_1002CDF8C(v111, v106, v112);
    v106 += v103;
    a5 += v103;
    if (__CFADD__(v105++, 1))
    {
      goto LABEL_85;
    }
  }

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
}

void sub_1002CD568(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, __n128 a5)
{
  updated = type metadata accessor for RDSharedListActivityNotificationsEngine.JournalEntryUpdateItem(0);
  __chkstk_darwin(updated, v10);
  v60 = &v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v12, v13);
  v59 = &v52 - v15;
  v17 = *(v16 + 72);
  if (!v17)
  {
    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
    return;
  }

  if (a2 - a1 == 0x8000000000000000 && v17 == -1)
  {
    goto LABEL_62;
  }

  v18 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v17 == -1)
  {
    goto LABEL_63;
  }

  v19 = (a2 - a1) / v17;
  v63 = a1;
  v62 = a4;
  if (v19 >= v18 / v17)
  {
    v21 = v18 / v17 * v17;
    if (a4 < a2 || a2 + v21 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v34 = a4 + v21;
    if (v21 >= 1)
    {
      v35 = -v17;
      v36 = v34;
      v55 = updated;
      v56 = a4;
      v54 = v35;
      do
      {
        v53 = v34;
        v37 = a2;
        v38 = a2 + v35;
        v58 = a2;
        while (1)
        {
          if (v37 <= a1)
          {
            v63 = v37;
            v61 = v53;
            goto LABEL_60;
          }

          v40 = a3;
          v57 = v34;
          v41 = a3 + v35;
          v42 = v36 + v35;
          v43 = v59;
          sub_1002CDE74(v42, v59, v14);
          v44 = v38;
          v45 = v38;
          v46 = v60;
          sub_1002CDE74(v45, v60, v47);
          type metadata accessor for Date();
          sub_1002CDF34();
          v48 = dispatch thunk of static Comparable.< infix(_:_:)();
          sub_1002CDED8(v46, v49);
          sub_1002CDED8(v43, v50);
          if (v48)
          {
            break;
          }

          v34 = v42;
          a3 = v41;
          if (v40 < v36 || v41 >= v36)
          {
            swift_arrayInitWithTakeFrontToBack();
            v38 = v44;
          }

          else
          {
            v38 = v44;
            if (v40 != v36)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v36 = v42;
          v39 = v42 > v56;
          v35 = v54;
          v37 = v58;
          if (!v39)
          {
            a2 = v58;
            goto LABEL_59;
          }
        }

        a3 = v41;
        if (v40 < v58 || v41 >= v58)
        {
          a2 = v44;
          swift_arrayInitWithTakeFrontToBack();
          v35 = v54;
        }

        else
        {
          v51 = v40 == v58;
          v35 = v54;
          a2 = v44;
          if (!v51)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v34 = v57;
      }

      while (v36 > v56);
    }

LABEL_59:
    v63 = a2;
    v61 = v34;
  }

  else
  {
    v20 = v19 * v17;
    if (a4 < a1 || a1 + v20 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v58 = a4 + v20;
    v61 = a4 + v20;
    if (v20 >= 1 && a2 < a3)
    {
      v57 = a3;
      do
      {
        v23 = updated;
        v24 = v17;
        v25 = v59;
        sub_1002CDE74(a2, v59, v14);
        v26 = v60;
        sub_1002CDE74(a4, v60, v27);
        type metadata accessor for Date();
        sub_1002CDF34();
        v28 = dispatch thunk of static Comparable.< infix(_:_:)();
        sub_1002CDED8(v26, v29);
        sub_1002CDED8(v25, v30);
        v17 = v24;
        if (v28)
        {
          v31 = a2 + v24;
          if (a1 < a2 || a1 >= v31)
          {
            updated = v23;
            swift_arrayInitWithTakeFrontToBack();
            a2 = v31;
            v32 = v57;
          }

          else
          {
            v32 = v57;
            updated = v23;
            if (a1 != a2)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            a2 = v31;
          }
        }

        else
        {
          v33 = a4 + v24;
          if (a1 < a4 || a1 >= v33)
          {
            updated = v23;
            swift_arrayInitWithTakeFrontToBack();
            v32 = v57;
          }

          else
          {
            v32 = v57;
            updated = v23;
            if (a1 != a4)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v62 = v33;
          a4 = v33;
        }

        a1 += v17;
        v63 = a1;
      }

      while (a4 < v58 && a2 < v32);
    }
  }

LABEL_60:
  sub_1005589F8(&v63, &v62, &v61);
}

void sub_1002CDA5C(uint64_t a1, __n128 a2)
{
  sub_100337974(a2);
  if (v4)
  {
    v6 = v4;
    sub_100337E80(v5);
    if (v2)
    {
    }

    else
    {
      v8 = v7;
      v9 = [v7 remObjectID];

      sub_1000F5104(&unk_10093AF40, &unk_100795790);
      Optional.tryUnwrap(_:file:line:)();

      v10 = [*(a1 + *(type metadata accessor for RDSharedListActivityNotificationsEngine.JournalEntryUpdateItem(0) + 28)) list];
      sub_1000F5104(&unk_100943240, &qword_10079A3B8);
      Optional.tryUnwrap(_:file:line:)();

      v11 = [v9 remObjectID];
      Optional.tryUnwrap(_:file:line:)();

      v12 = v14;
      v13 = v14;
      sub_10047B110(v6);
    }
  }
}

_TtC7remindd19RDXPCStorePerformer *sub_1002CDCD0(_TtC7remindd19RDXPCStorePerformer *a1, __n128 a2)
{
  updated = type metadata accessor for RDSharedListActivityNotificationsEngine.JournalEntryUpdateItem(0);
  v4 = *(updated - 8);
  __chkstk_darwin(updated, v5);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = a1;

  sub_1002CC8F4(&v18, v8);
  v9 = v18;
  v10 = *v18->clientIdentity;
  if (v10)
  {
    v18 = &_swiftEmptyArrayStorage;
    specialized ContiguousArray.reserveCapacity(_:)();
    v12 = v9 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v13 = *(v4 + 72);
    do
    {
      sub_1002CDE74(v12, v7, v11);
      v14 = *&v7[*(updated + 28)];
      sub_1002CDED8(v7, v15);
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v12 += v13;
      --v10;
    }

    while (v10);
  }

  return a1;
}

uint64_t sub_1002CDE74(uint64_t a1, uint64_t a2, __n128 a3)
{
  updated = type metadata accessor for RDSharedListActivityNotificationsEngine.JournalEntryUpdateItem(0);
  (*(*(updated - 8) + 16))(a2, a1, updated);
  return a2;
}

uint64_t sub_1002CDED8(uint64_t a1, __n128 a2)
{
  updated = type metadata accessor for RDSharedListActivityNotificationsEngine.JournalEntryUpdateItem(0);
  (*(*(updated - 8) + 8))(a1, updated);
  return a1;
}

unint64_t sub_1002CDF34()
{
  result = qword_1009464D0;
  if (!qword_1009464D0)
  {
    type metadata accessor for Date();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009464D0);
  }

  return result;
}

uint64_t sub_1002CDF8C(uint64_t a1, uint64_t a2, __n128 a3)
{
  updated = type metadata accessor for RDSharedListActivityNotificationsEngine.JournalEntryUpdateItem(0);
  (*(*(updated - 8) + 32))(a2, a1, updated);
  return a2;
}

double destroy for RDAddedReminderNotificationContent(_TtC7remindd19RDXPCStorePerformer **a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  *a1, a2, a3, a4, a5, a6, a7, a8;
  v16 = a1[1];

  v16, v9, v10, v11, v12, v13, v14, v15;
  return result;
}

uint64_t *sub_1002CE02C(uint64_t *a1, uint64_t *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  a1[1] = v3;

  return a1;
}

_TtC7remindd19RDXPCStorePerformer **assignWithCopy for RDAddedReminderNotificationContent(_TtC7remindd19RDXPCStorePerformer **a1, _TtC7remindd19RDXPCStorePerformer **a2)
{
  v4 = *a1;
  *a1 = *a2;

  v4, v5, v6, v7, v8, v9, v10, v11;
  v12 = a2[1];
  v13 = a1[1];
  a1[1] = v12;

  v13, v14, v15, v16, v17, v18, v19, v20;
  return a1;
}

_TtC7remindd19RDXPCStorePerformer **assignWithTake for RDAddedReminderNotificationContent(_TtC7remindd19RDXPCStorePerformer **a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  *a1, a2, a3, a4, a5, a6, a7, a8;
  v10 = a1[1];
  *a1 = *a2;
  v10, v11, v12, v13, v14, v15, v16, v17;
  return a1;
}

uint64_t getEnumTagSinglePayload for RDAddedReminderNotificationContent(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t storeEnumTagSinglePayload for RDAddedReminderNotificationContent(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1002CE198(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  if (a2)
  {
    if (a5 == 1)
    {

      v14 = _REMGetLocalizedString();
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v16 = v15;

      sub_1000F5104(&qword_100939EB0, &qword_1007989A0);
      v17 = swift_allocObject();
      *(v17 + 16) = xmmword_100791320;
      *(v17 + 56) = &type metadata for String;
      v18 = sub_100006600();
      *(v17 + 32) = a1;
      *(v17 + 40) = a2;
      *(v17 + 96) = &type metadata for String;
      *(v17 + 104) = v18;
      *(v17 + 64) = v18;
      *(v17 + 72) = a3;
      *(v17 + 80) = a4;
      *(v17 + 136) = &type metadata for String;
      *(v17 + 144) = v18;
      *(v17 + 112) = a6;
      *(v17 + 120) = a7;

      v19 = static String.localizedStringWithFormat(_:_:)();
      v16, v20, v21, v22, v23, v24, v25, v26;
      v17, v27, v28, v29, v30, v31, v32, v33;
      return v19;
    }

    if (a8)
    {
      if (a5 >= 2)
      {
        goto LABEL_13;
      }
    }

    else if (a5 >= 2)
    {
LABEL_13:

      v57 = _REMGetLocalizedString();
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v59 = v58;

      sub_1000F5104(&qword_100939EB0, &qword_1007989A0);
      v60 = swift_allocObject();
      *(v60 + 16) = xmmword_100791320;
      *(v60 + 56) = &type metadata for String;
      v61 = sub_100006600();
      *(v60 + 32) = a1;
      *(v60 + 40) = a2;
      *(v60 + 96) = &type metadata for Int;
      *(v60 + 104) = &protocol witness table for Int;
      *(v60 + 64) = v61;
      *(v60 + 72) = a5;
      *(v60 + 136) = &type metadata for String;
      *(v60 + 144) = v61;
      *(v60 + 112) = a6;
      *(v60 + 120) = a7;

      v40 = static String.localizedStringWithFormat(_:_:)();
      v59, v62, v63, v64, v65, v66, v67, v68;
      v55 = v60;
      goto LABEL_16;
    }

LABEL_15:
    v69 = objc_opt_self();
    _StringGuts.grow(_:)(84);
    v70._object = 0x80000001007F3BC0;
    v70._countAndFlagsBits = 0xD000000000000052;
    String.append(_:)(v70);
    v71._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    object = v71._object;
    String.append(_:)(v71);
    object, v73, v74, v75, v76, v77, v78, v79;
    v80 = String._bridgeToObjectiveC()();
    0xE000000000000000, v81, v82, v83, v84, v85, v86, v87;
    [v69 internalErrorWithDebugDescription:v80];

    return swift_willThrow();
  }

  if (a5 == 1)
  {
    v35 = _REMGetLocalizedString();
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v37 = v36;

    sub_1000F5104(&qword_100939EB0, &qword_1007989A0);
    v38 = swift_allocObject();
    *(v38 + 16) = xmmword_100791340;
    *(v38 + 56) = &type metadata for String;
    v39 = sub_100006600();
    *(v38 + 32) = a3;
    *(v38 + 40) = a4;
    *(v38 + 96) = &type metadata for String;
    *(v38 + 104) = v39;
    *(v38 + 64) = v39;
    *(v38 + 72) = a6;
    *(v38 + 80) = a7;

    v40 = static String.localizedStringWithFormat(_:_:)();
    v37, v41, v42, v43, v44, v45, v46, v47;
    v55 = v38;
  }

  else
  {
    if (a8)
    {
      if (a5 < 2)
      {
        goto LABEL_15;
      }
    }

    else if (a5 < 2)
    {
      goto LABEL_15;
    }

    v88 = _REMGetLocalizedString();
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v90 = v89;

    sub_1000F5104(&qword_100939EB0, &qword_1007989A0);
    v91 = swift_allocObject();
    *(v91 + 16) = xmmword_100791340;
    *(v91 + 56) = &type metadata for Int;
    *(v91 + 64) = &protocol witness table for Int;
    *(v91 + 32) = a5;
    *(v91 + 96) = &type metadata for String;
    *(v91 + 104) = sub_100006600();
    *(v91 + 72) = a6;
    *(v91 + 80) = a7;

    v40 = static String.localizedStringWithFormat(_:_:)();
    v90, v92, v93, v94, v95, v96, v97, v98;
    v55 = v91;
  }

LABEL_16:
  v55, v48, v49, v50, v51, v52, v53, v54;
  return v40;
}

uint64_t sub_1002CE63C(uint64_t a1)
{
  v2 = sub_1000F5104(&qword_100940F50, &qword_1007A0930);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1002CE6A8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  if (v4)
  {
    v5 = *(a1 + 16);
    v6 = *(a1 + 24);
  }

  else
  {
    v7._countAndFlagsBits = UUID.uuidString.getter();
    object = v7._object;
    String.append(_:)(v7);
    object, v9, v10, v11, v12, v13, v14, v15;
    v5 = 0x7C6C61636F6CLL;
    v6 = 0xE600000000000000;
  }

  v16 = *(a2 + 16);

  if (v16)
  {
    sub_100005F4C(v5, v6);
    v25 = v24;
    v6, v24, v26, v27, v28, v29, v30, v31;
    if (v25)
    {
LABEL_6:

      return;
    }

    if (!v4)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v6, v17, v18, v19, v20, v21, v22, v23;
    if (!v4)
    {
LABEL_10:
      v33._countAndFlagsBits = UUID.uuidString.getter();
      v34 = v33._object;
      String.append(_:)(v33);
      v34, v35, v36, v37, v38, v39, v40, v41;
      v3 = 0x7C6C61636F6CLL;
      v32 = 0xE600000000000000;
      goto LABEL_11;
    }
  }

  v32 = v4;
LABEL_11:

  v42._countAndFlagsBits = UUID.uuidString.getter();
  v43 = v42._object;
  String.append(_:)(v42);
  v43, v44, v45, v46, v47, v48, v49, v50;
  if (v3 == 0x7C6C61636F6CLL && v32 == 0xE600000000000000)
  {
    0xE600000000000000, v51, 0x7C6C61636F6CLL, v52, v53, v54, v55, v56;
LABEL_14:
    0xE600000000000000, v57, v58, v59, v60, v61, v62, v63;
    return;
  }

  v64 = _stringCompareWithSmolCheck(_:_:expecting:)();
  v32, v65, v66, v67, v68, v69, v70, v71;
  0xE600000000000000, v72, v73, v74, v75, v76, v77, v78;
  if ((v64 & 1) == 0)
  {
    v79._countAndFlagsBits = UUID.uuidString.getter();
    v80 = v79._object;
    String.append(_:)(v79);
    v80, v81, v82, v83, v84, v85, v86, v87;
    if (!*(a2 + 16))
    {
      goto LABEL_14;
    }

    sub_100005F4C(0x7C6C61636F6CLL, 0xE600000000000000);
    v89 = v88;
    0xE600000000000000, v88, v90, v91, v92, v93, v94, v95;
    if (v89)
    {
      goto LABEL_6;
    }
  }
}

uint64_t sub_1002CE8B4()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_100940F58);
  v1 = sub_100006654(v0, qword_100940F58);
  if (qword_1009364B0 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_100975158);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1002CE97C(uint64_t a1, double a2)
{
  *(v2 + 96) = a2;
  *(v2 + 88) = a1;
  v3 = type metadata accessor for REMAnalyticsEvent();
  *(v2 + 104) = v3;
  *(v2 + 112) = *(v3 - 8);
  *(v2 + 120) = swift_task_alloc();
  sub_1000F5104(&qword_100940F70, &qword_1007A0978);
  *(v2 + 128) = swift_task_alloc();
  v4 = type metadata accessor for SuggestedRemindersAdapterType();
  *(v2 + 136) = v4;
  *(v2 + 144) = *(v4 - 8);
  *(v2 + 152) = swift_task_alloc();
  v5 = type metadata accessor for DispatchTime();
  *(v2 + 160) = v5;
  *(v2 + 168) = *(v5 - 8);
  *(v2 + 176) = swift_task_alloc();
  v6 = type metadata accessor for Prompt();
  *(v2 + 184) = v6;
  *(v2 + 192) = *(v6 - 8);
  *(v2 + 200) = swift_task_alloc();
  v7 = type metadata accessor for REMGenerativeModelsFeature();
  *(v2 + 208) = v7;
  *(v2 + 216) = *(v7 - 8);
  *(v2 + 224) = swift_task_alloc();
  v8 = type metadata accessor for URL();
  *(v2 + 232) = v8;
  *(v2 + 240) = *(v8 - 8);
  *(v2 + 248) = swift_task_alloc();
  *(v2 + 256) = swift_task_alloc();

  return _swift_task_switch(sub_1002CEC50, 0, 0);
}

Swift::Int sub_1002CEC50()
{
  v124 = v0;
  if (qword_100935E48 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  *(v0 + 264) = sub_100006654(v1, qword_100940F58);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "RDReminderExtractor: extractReminderSuggestions() START", v4, 2u);
  }

  v5 = *(v0 + 88);

  v6 = [v5 text];
  if (v6)
  {
    v7 = v6;
    v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = v9;

    *(v0 + 304) = 1415071060;
    *(v0 + 312) = 0xE400000000000000;
    swift_bridgeObjectRetain_n();

    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.default.getter();
    0xE400000000000000, v13, v14, v15, v16, v17, v18, v19;
    if (os_log_type_enabled(v11, v12))
    {
      v27 = swift_slowAlloc();
      v123[0] = swift_slowAlloc();
      *v27 = 136446723;
      *(v27 + 4) = sub_10000668C(1415071060, 0xE400000000000000, v123);
      *(v27 + 12) = 2048;
      *(v27 + 14) = String.count.getter();
      v10, v28, v29, v30, v31, v32, v33, v34;
      *(v27 + 22) = 2081;
      *(v27 + 24) = sub_10000668C(v8, v10, v123);
      _os_log_impl(&_mh_execute_header, v11, v12, "RDReminderExtractor: input type: %{public}s, characterCount: %ld, input: %{private}s", v27, 0x20u);
      swift_arrayDestroy();
    }

    else
    {
      v10, v20, v21, v22, v23, v24, v25, v26;
    }

    v44 = Logger.logObject.getter();
    v45 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = *(v0 + 96);
      v47 = swift_slowAlloc();
      *v47 = 134217984;
      *(v47 + 4) = v46;
      _os_log_impl(&_mh_execute_header, v44, v45, "RDReminderExtractor: Starting recipe classification with required confidence threshold: %f", v47, 0xCu);
    }

    v48 = sub_1006DEB84(v8, v10);
    v117 = v8;
    v118 = v10;
    v50 = v49;
    v51 = v48;
    v53 = v52;
    v55 = v54;
    v56 = *(v0 + 96);
    v10, v52, v54, v57, v58, v59, v60, v61;
    v119 = v53 & 1;
    v120 = v50 & 1;
    v122 = v55;
    if ((v50 & 1) != 0 && v51 > v56)
    {
      v62 = *(v0 + 216);
      v63 = *(v0 + 224);
      v64 = *(v0 + 200);
      v65 = *(v0 + 208);
      v66 = *(v0 + 192);
      v115 = *(v0 + 184);
      v113 = type metadata accessor for RDExtractIngredientsSession();
      v67 = swift_allocObject();
      (*(v62 + 104))(v63, enum case for REMGenerativeModelsFeature.intelligentReminderExtraction(_:), v65);
      v114 = v55;
      v68 = REMGenerativeModelsFeature.useCaseIdentifier.getter();
      v70 = v69;
      (*(v62 + 8))(v63, v65);
      v71 = sub_10038E004(&_swiftEmptyArrayStorage);
      type metadata accessor for RDExtractIngredientsSession._ClientInfo(0);
      swift_allocObject();
      v72 = 1;
      sub_1002F5720(v68, v70, 0, 1, v71);
      *(v67 + 16) = v73;
      *(v0 + 40) = v113;
      *(v0 + 48) = &off_1008ED460;
      *(v0 + 16) = v67;
      Prompt.init(_:)();
      v74 = Prompt.overestimatedTokenCount()();

      result = (*(v66 + 8))(v64, v115);
    }

    else
    {
      v76 = *(v0 + 216);
      v75 = *(v0 + 224);
      v77 = *(v0 + 200);
      v78 = *(v0 + 208);
      v79 = *(v0 + 192);
      v116 = *(v0 + 184);
      v80 = type metadata accessor for RDExtractActionItemsSession();
      v81 = swift_allocObject();
      (*(v76 + 104))(v75, enum case for REMGenerativeModelsFeature.intelligentReminderExtraction(_:), v78);
      v82 = REMGenerativeModelsFeature.useCaseIdentifier.getter();
      v84 = v83;
      (*(v76 + 8))(v75, v78);
      v85 = sub_10038E004(&_swiftEmptyArrayStorage);
      type metadata accessor for RDExtractActionItemsSession._ClientInfo(0);
      swift_allocObject();
      sub_10054935C(v82, v84, 0, 1, v85);
      *(v81 + 16) = v86;
      *(v0 + 40) = v80;
      *(v0 + 48) = &off_1008F69E8;
      *(v0 + 16) = v81;
      Prompt.init(_:)();
      v74 = Prompt.overestimatedTokenCount()();
      result = (*(v79 + 8))(v77, v116);
      v72 = 0;
    }

    *(v0 + 336) = v119;
    *(v0 + 344) = v122;
    *(v0 + 328) = v51;
    *(v0 + 320) = v120;
    *(v0 + 408) = v72;
    if (__OFSUB__(4096, v74))
    {
      __break(1u);
    }

    else
    {
      result = 3896 - v74;
      if (!__OFSUB__(4096 - v74, 200))
      {
        v87 = sub_1002F2F9C(result, v117, v118);
        v89 = v88;
        v91 = v90;
        v93 = v92;
        v118, v88, v90, v92, v94, v95, v96, v97;
        *(v0 + 352) = v89;
        *(v0 + 360) = v91;
        *(v0 + 368) = v93;
        v98 = Logger.logObject.getter();
        v99 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v98, v99))
        {
          v100 = swift_slowAlloc();
          *v100 = 0;
          _os_log_impl(&_mh_execute_header, v98, v99, "RDReminderExtractor: prewarm extraction session", v100, 2u);
        }

        v101 = *(v0 + 40);
        v102 = *(v0 + 48);
        sub_10000F61C((v0 + 16), v101);
        (*(v102 + 8))(v101, v102);
        v103 = Logger.logObject.getter();
        v104 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v103, v104))
        {
          v105 = swift_slowAlloc();
          *v105 = 67109120;
          *(v105 + 4) = v72;
          _os_log_impl(&_mh_execute_header, v103, v104, "RDReminderExtractor: prewarm finished, start actual extraction, usingIngredientAdapter: %{BOOL}d", v105, 8u);
        }

        static DispatchTime.now()();
        v106 = *(v0 + 40);
        v107 = *(v0 + 48);
        sub_10000F61C((v0 + 16), v106);
        v108 = *(v107 + 16);

        v121 = (v108 + *v108);
        v109 = swift_task_alloc();
        *(v0 + 376) = v109;
        *v109 = v0;
        v109[1] = sub_1002D0200;

        return v121(v87, v89, v106, v107);
      }
    }

    __break(1u);
    return result;
  }

  v35 = [*(v0 + 88) url];
  if (v35)
  {
    v36 = *(v0 + 248);
    v37 = *(v0 + 256);
    v38 = *(v0 + 232);
    v39 = *(v0 + 240);
    v40 = v35;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    (*(v39 + 32))(v37, v36, v38);
    v41 = swift_task_alloc();
    *(v0 + 272) = v41;
    *v41 = v0;
    v41[1] = sub_1002CF774;
    v42 = *(v0 + 256);

    return sub_1002F2584(v42);
  }

  else
  {
    v110 = objc_opt_self();
    v111 = String._bridgeToObjectiveC()();
    [v110 internalErrorWithDebugDescription:v111];

    swift_willThrow();

    v112 = *(v0 + 8);

    return v112();
  }
}

uint64_t sub_1002CF774(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(*v3 + 280) = v2;

  if (v2)
  {
    v7 = sub_1002D0120;
  }

  else
  {
    *(v6 + 288) = a2;
    *(v6 + 296) = a1;
    v7 = sub_1002CF8A8;
  }

  return _swift_task_switch(v7, 0, 0);
}

Swift::Int sub_1002CF8A8()
{
  v121 = v0;
  (*(*(v0 + 240) + 8))(*(v0 + 256), *(v0 + 232));
  v1 = *(v0 + 288);
  v2 = *(v0 + 296);
  v3 = *(v0 + 280);
  *(v0 + 304) = 5001813;
  *(v0 + 312) = 0xE300000000000000;
  swift_bridgeObjectRetain_n();

  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  0xE300000000000000, v6, v7, v8, v9, v10, v11, v12;
  if (os_log_type_enabled(v4, v5))
  {
    v20 = swift_slowAlloc();
    v120[0] = swift_slowAlloc();
    *v20 = 136446723;
    *(v20 + 4) = sub_10000668C(5001813, 0xE300000000000000, v120);
    *(v20 + 12) = 2048;
    *(v20 + 14) = String.count.getter();
    v1, v21, v22, v23, v24, v25, v26, v27;
    *(v20 + 22) = 2081;
    *(v20 + 24) = sub_10000668C(v2, v1, v120);
    _os_log_impl(&_mh_execute_header, v4, v5, "RDReminderExtractor: input type: %{public}s, characterCount: %ld, input: %{private}s", v20, 0x20u);
    swift_arrayDestroy();
  }

  else
  {
    v1, v13, v14, v15, v16, v17, v18, v19;
  }

  v28 = Logger.logObject.getter();
  v29 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = *(v0 + 96);
    v31 = swift_slowAlloc();
    *v31 = 134217984;
    *(v31 + 4) = v30;
    _os_log_impl(&_mh_execute_header, v28, v29, "RDReminderExtractor: Starting recipe classification with required confidence threshold: %f", v31, 0xCu);
  }

  v40 = sub_1006DEB84(v2, v1);
  v117 = v2;
  v119 = v1;
  if (v3)
  {
    v1, v33, v34, v35, v36, v37, v38, v39;
    swift_errorRetain();
    v41 = Logger.logObject.getter();
    v42 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v120[0] = v44;
      *v43 = 136446210;
      swift_getErrorValue();
      v45 = Error.rem_errorDescription.getter();
      v47 = v46;
      v48 = sub_10000668C(v45, v46, v120);
      v47, v49, v50, v51, v52, v53, v54, v55;
      *(v43 + 4) = v48;
      _os_log_impl(&_mh_execute_header, v41, v42, "RDReminderExtractor: use action items adapter because recipe classifier failed {error: %{public}s}", v43, 0xCu);
      sub_10000607C(v44);
    }

    else
    {
    }

    v114 = 0;
    v115 = 0;
    v57 = 0.0;
    v116 = 1;
  }

  else
  {
    v56 = v32;
    v57 = v40;
    v58 = v33;
    v59 = v34;
    v60 = *(v0 + 96);
    v1, v33, v34, v35, v36, v37, v38, v39;
    v114 = v58 & 1;
    v115 = v56 & 1;
    v116 = v59;
    if ((v56 & 1) != 0 && v57 > v60)
    {
      v61 = *(v0 + 216);
      v62 = *(v0 + 224);
      v63 = *(v0 + 208);
      v64 = *(v0 + 192);
      v111 = *(v0 + 200);
      v112 = *(v0 + 184);
      v65 = type metadata accessor for RDExtractIngredientsSession();
      v66 = swift_allocObject();
      (*(v61 + 104))(v62, enum case for REMGenerativeModelsFeature.intelligentReminderExtraction(_:), v63);
      v110 = v59;
      v67 = REMGenerativeModelsFeature.useCaseIdentifier.getter();
      v69 = v68;
      (*(v61 + 8))(v62, v63);
      v70 = sub_10038E004(&_swiftEmptyArrayStorage);
      type metadata accessor for RDExtractIngredientsSession._ClientInfo(0);
      swift_allocObject();
      v71 = 1;
      sub_1002F5720(v67, v69, 0, 1, v70);
      *(v66 + 16) = v72;
      *(v0 + 40) = v65;
      *(v0 + 48) = &off_1008ED460;
      *(v0 + 16) = v66;
      Prompt.init(_:)();
      v73 = Prompt.overestimatedTokenCount()();

      result = (*(v64 + 8))(v111, v112);
      goto LABEL_15;
    }
  }

  v76 = *(v0 + 216);
  v75 = *(v0 + 224);
  v77 = *(v0 + 200);
  v78 = *(v0 + 208);
  v79 = *(v0 + 192);
  v113 = *(v0 + 184);
  v80 = type metadata accessor for RDExtractActionItemsSession();
  v81 = swift_allocObject();
  (*(v76 + 104))(v75, enum case for REMGenerativeModelsFeature.intelligentReminderExtraction(_:), v78);
  v82 = REMGenerativeModelsFeature.useCaseIdentifier.getter();
  v84 = v83;
  (*(v76 + 8))(v75, v78);
  v85 = sub_10038E004(&_swiftEmptyArrayStorage);
  type metadata accessor for RDExtractActionItemsSession._ClientInfo(0);
  swift_allocObject();
  sub_10054935C(v82, v84, 0, 1, v85);
  *(v81 + 16) = v86;
  *(v0 + 40) = v80;
  *(v0 + 48) = &off_1008F69E8;
  *(v0 + 16) = v81;
  Prompt.init(_:)();
  v73 = Prompt.overestimatedTokenCount()();
  result = (*(v79 + 8))(v77, v113);
  v71 = 0;
LABEL_15:
  *(v0 + 336) = v114;
  *(v0 + 344) = v116;
  *(v0 + 328) = v57;
  *(v0 + 320) = v115;
  *(v0 + 408) = v71;
  if (__OFSUB__(4096, v73))
  {
    __break(1u);
    goto LABEL_25;
  }

  result = 3896 - v73;
  if (__OFSUB__(4096 - v73, 200))
  {
LABEL_25:
    __break(1u);
    return result;
  }

  v87 = sub_1002F2F9C(result, v117, v119);
  v89 = v88;
  v91 = v90;
  v93 = v92;
  v119, v88, v90, v92, v94, v95, v96, v97;
  *(v0 + 352) = v89;
  *(v0 + 360) = v91;
  *(v0 + 368) = v93;
  v98 = Logger.logObject.getter();
  v99 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v98, v99))
  {
    v100 = swift_slowAlloc();
    *v100 = 0;
    _os_log_impl(&_mh_execute_header, v98, v99, "RDReminderExtractor: prewarm extraction session", v100, 2u);
  }

  v101 = *(v0 + 40);
  v102 = *(v0 + 48);
  sub_10000F61C((v0 + 16), v101);
  (*(v102 + 8))(v101, v102);
  v103 = Logger.logObject.getter();
  v104 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v103, v104))
  {
    v105 = swift_slowAlloc();
    *v105 = 67109120;
    *(v105 + 4) = v71;
    _os_log_impl(&_mh_execute_header, v103, v104, "RDReminderExtractor: prewarm finished, start actual extraction, usingIngredientAdapter: %{BOOL}d", v105, 8u);
  }

  static DispatchTime.now()();
  v106 = *(v0 + 40);
  v107 = *(v0 + 48);
  sub_10000F61C((v0 + 16), v106);
  v108 = *(v107 + 16);

  v118 = (v108 + *v108);
  v109 = swift_task_alloc();
  *(v0 + 376) = v109;
  *v109 = v0;
  v109[1] = sub_1002D0200;

  return v118(v87, v89, v106, v107);
}

uint64_t sub_1002D0120()
{
  (*(v0[30] + 8))(v0[32], v0[29]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1002D0200(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *v3;
  *(v5 + 384) = a1;
  *(v5 + 392) = a2;
  *(v5 + 400) = v2;

  v13 = *(v4 + 352);
  if (v2)
  {
    *(v5 + 312), v6, v7, v8, v9, v10, v11, v12;
    swift_bridgeObjectRelease_n();
    v14 = sub_1002D0A9C;
  }

  else
  {
    v13, v6, v7, v8, v9, v10, v11, v12;
    v14 = sub_1002D0358;
  }

  return _swift_task_switch(v14, 0, 0);
}

uint64_t sub_1002D0358()
{
  v145 = v0;
  v1 = *(v0 + 392);
  v2 = *(v0 + 400);
  v3 = *(v0 + 384);
  static DispatchTime.secondsElapsed(since:)();
  v5 = v4;
  sub_10013B7F8(v3, v1);
  v7 = *(v0 + 392);
  if (v2)
  {
    v9 = *(v0 + 344);
    v8 = *(v0 + 352);
    v11 = *(v0 + 328);
    v10 = *(v0 + 336);
    v13 = *(v0 + 312);
    v12 = *(v0 + 320);
    (*(*(v0 + 168) + 8))(*(v0 + 176), *(v0 + 160));
    v13, v14, v15, v16, v17, v18, v19, v20;
    v7, v21, v22, v23, v24, v25, v26, v27;
    v8, v28, v29, v30, v31, v32, v33, v34;
    sub_1002D0B98(v12, v11, v10, v9);
    sub_10000607C((v0 + 16));

    v35 = *(v0 + 8);

    return v35();
  }

  else
  {
    v37 = v6;

    v38 = Logger.logObject.getter();
    v39 = static os_log_type_t.default.getter();
    v40 = os_log_type_enabled(v38, v39);
    v41 = *(v0 + 392);
    if (v40)
    {
      v42 = *(v0 + 384);
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v144[0] = v44;
      *v43 = 134218755;
      *(v43 + 4) = *(v37 + 16);
      v37, v45, v46, v47, v48, v49, v50, v51;
      *(v43 + 12) = 2048;
      *(v43 + 14) = v5;
      *(v43 + 22) = 2048;
      *(v43 + 24) = String.count.getter();
      v41, v52, v53, v54, v55, v56, v57, v58;
      *(v43 + 32) = 2081;
      v59 = sub_10000668C(v42, v41, v144);
      v41, v60, v61, v62, v63, v64, v65, v66;
      *(v43 + 34) = v59;
      _os_log_impl(&_mh_execute_header, v38, v39, "RDReminderExtractor: extracted %ld suggestions, in %f seconds, output text characterCount: %ld output text: %{private}s", v43, 0x2Au);
      sub_10000607C(v44);
    }

    else
    {
      swift_bridgeObjectRelease_n();
      v37, v67, v68, v69, v70, v71, v72, v73;
    }

    v74 = *(v0 + 344);
    v142 = *(v37 + 16);
    if (*(v0 + 408))
    {
      v75 = &enum case for SuggestedRemindersAdapterType.recipeItems(_:);
    }

    else
    {
      v75 = &enum case for SuggestedRemindersAdapterType.actionItems(_:);
    }

    (*(*(v0 + 144) + 104))(*(v0 + 152), *v75, *(v0 + 136));
    v143 = v37;
    if (v74 == 1)
    {
      v76 = *(v0 + 128);
      v77 = type metadata accessor for SuggestedRemindersRecipeClassifierType();
      (*(*(v77 - 8) + 56))(v76, 1, 1, v77);
      v141 = 0;
      v138 = 0;
      v139 = 0;
      v137 = 2;
    }

    else
    {
      v78 = *(v0 + 344);
      v79 = *(v0 + 336);
      v80 = *(v0 + 128);
      v81 = *(v0 + 320);
      v82 = type metadata accessor for SuggestedRemindersRecipeClassifierType();
      v83 = *(v82 - 8);
      v84 = &enum case for SuggestedRemindersRecipeClassifierType.chineseJapaneseKorean(_:);
      if ((v79 & 1) == 0)
      {
        v84 = &enum case for SuggestedRemindersRecipeClassifierType.otherLanguages(_:);
      }

      (*(*(v82 - 8) + 104))(v80, *v84, v82);
      (*(v83 + 56))(v80, 0, 1, v82);
      v137 = v81;
      if (v78)
      {
        v85 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v138 = v86;
        v139 = v85;
      }

      else
      {
        v138 = 0;
        v139 = 0;
      }

      v141 = *(v0 + 328);
    }

    v129 = v74 == 1;
    v133 = *(v0 + 360);
    v135 = *(v0 + 368);
    v140 = *(v0 + 352);
    v130 = *(v0 + 304);
    v131 = *(v0 + 312);
    v87 = *(v0 + 144);
    v88 = *(v0 + 128);
    v127 = *(v0 + 136);
    v128 = *(v0 + 152);
    v89 = *(v0 + 112);
    v90 = *(v0 + 120);
    v132 = *(v0 + 104);
    type metadata accessor for REMAnalyticsManager();
    static REMAnalyticsManager.shared.getter();
    v91 = sub_1000F5104(&qword_100940F78, &unk_1007A0980);
    v92 = v91[20];
    v93 = v91[24];
    v94 = v90 + v91[28];
    v95 = v91[32];
    v96 = (v90 + v91[40]);
    v97 = v91[44];
    v125 = v91[48];
    v126 = v91[36];
    *v90 = v142;
    *(v90 + 8) = 0;
    *(v90 + 16) = 0;
    *(v90 + 24) = 1;
    *(v90 + 32) = v139;
    *(v90 + 40) = v138;
    sub_1002D0BA8(v88, v90 + v92);
    *(v90 + v93) = v137;
    *v94 = v141;
    *(v94 + 8) = v129;
    (*(v87 + 16))(v90 + v95, v128, v127);
    *(v90 + v126) = v5;
    *v96 = v130;
    v96[1] = v131;
    *(v90 + v97) = v133;
    *(v90 + v125) = v135;
    (*(v89 + 104))(v90, enum case for REMAnalyticsEvent.suggestedRemindersSession(_:), v132);
    REMAnalyticsManager.post(event:)();

    v140, v98, v99, v100, v101, v102, v103, v104;
    (*(v89 + 8))(v90, v132);
    sub_1002D0C18(v88);
    (*(v87 + 8))(v128, v127);
    v105 = Logger.logObject.getter();
    v106 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v105, v106))
    {
      v107 = swift_slowAlloc();
      *v107 = 0;
      _os_log_impl(&_mh_execute_header, v105, v106, "RDReminderExtractor: extractReminderSuggestions() END", v107, 2u);
    }

    v134 = *(v0 + 336);
    v136 = *(v0 + 344);
    v109 = *(v0 + 320);
    v108 = *(v0 + 328);
    v110 = *(v0 + 408);
    v111 = *(v0 + 168);
    v112 = *(v0 + 176);
    v113 = *(v0 + 160);

    v114 = objc_allocWithZone(REMReminderExtractionOutput);
    isa = Array._bridgeToObjectiveC()().super.isa;
    v143, v116, v117, v118, v119, v120, v121, v122;
    v123 = [v114 initWithSuggestedTitles:isa isClassifiedAsRecipe:v110];

    sub_1002D0B98(v109, v108, v134, v136);
    (*(v111 + 8))(v112, v113);
    sub_10000607C((v0 + 16));

    v124 = *(v0 + 8);

    return v124(v123);
  }
}

uint64_t sub_1002D0A9C()
{
  v2 = v0[21];
  v1 = v0[22];
  v3 = v0[20];
  sub_1002D0B98(v0[40], v0[41], v0[42], v0[43]);
  (*(v2 + 8))(v1, v3);
  sub_10000607C(v0 + 2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1002D0B98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 != 1)
  {
    return _objc_release_x3(a1, a2, a3);
  }

  return a1;
}

uint64_t sub_1002D0BA8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000F5104(&qword_100940F70, &qword_1007A0978);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1002D0C18(uint64_t a1)
{
  v2 = sub_1000F5104(&qword_100940F70, &qword_1007A0978);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1002D0C80()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_100940F80);
  v1 = sub_100006654(v0, qword_100940F80);
  if (qword_100936490 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_1009750F8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1002D0D48(void *a1)
{
  v2 = v1;
  v41 = *v2;
  v4 = sub_1000F5104(&qword_100939980, &unk_10079ADA0);
  __chkstk_darwin(v4 - 8, v5);
  v7 = &v35 - v6;
  v8 = sub_1000F5104(&qword_100941058, &qword_1007A09F8);
  v9 = *(v8 - 8);
  v35 = v8;
  v36 = v9;
  __chkstk_darwin(v8, v10);
  v12 = &v35 - v11;
  v13 = sub_1000F5104(&qword_100941060, &qword_1007A0A00);
  v14 = *(v13 - 8);
  v37 = v13;
  v38 = v14;
  __chkstk_darwin(v13, v15);
  v17 = &v35 - v16;
  v18 = sub_1000F5104(&qword_100941068, &qword_1007A0A08);
  v19 = *(v18 - 8);
  v39 = v18;
  v40 = v19;
  __chkstk_darwin(v18, v20);
  v22 = &v35 - v21;
  v23 = v2[8];
  v42 = a1;
  v24 = swift_allocObject();
  *(v24 + 16) = v23;
  *(v24 + 24) = 1;
  swift_retain_n();
  sub_1000F5104(&qword_100941070, &qword_1007A0A10);
  sub_10000CB48(&qword_100941078, &qword_100941070, &qword_1007A0A10, &protocol conformance descriptor for AnyPublisher<A, B>);
  Publisher.handleEvents(receiveSubscription:receiveOutput:receiveCompletion:receiveCancel:receiveRequest:)();

  v42 = v2[6];
  v25 = v42;
  v26 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  (*(*(v26 - 8) + 56))(v7, 1, 1, v26);
  sub_1000060C8(0, &qword_10093E6E0, OS_dispatch_queue_ptr);
  sub_10000CB48(&qword_100941080, &qword_100941058, &qword_1007A09F8, &protocol conformance descriptor for Publishers.HandleEvents<A>);
  sub_100006CA4();
  v27 = v25;
  v28 = v35;
  Publisher.receive<A>(on:options:)();
  sub_1000050A4(v7, &qword_100939980, &unk_10079ADA0);

  (*(v36 + 8))(v12, v28);
  swift_allocObject();
  swift_weakInit();
  sub_1000F5104(&qword_100941088, &qword_1007A0A18);
  sub_10000CB48(&qword_100941090, &qword_100941060, &qword_1007A0A00, &protocol conformance descriptor for Publishers.ReceiveOn<A, B>);
  v29 = v37;
  Publisher.map<A>(_:)();

  (*(v38 + 8))(v17, v29);
  v30 = v2[8];
  v31 = swift_allocObject();
  v31[2] = sub_1002D2594;
  v31[3] = 0;
  v31[4] = v30;
  sub_10000CB48(&qword_100941098, &qword_100941068, &qword_1007A0A08, &protocol conformance descriptor for Publishers.Map<A, B>);
  swift_retain_n();
  v32 = v39;
  v33 = Publisher.sink<A>(weakTarget:receiveValue:receiveCompletion:)();

  (*(v40 + 8))(v22, v32);
  v2[7] = v33;
}

uint64_t sub_1002D1308@<X0>(uint64_t *a1@<X0>, _TtC7remindd19RDXPCStorePerformer **a3@<X8>)
{
  v5 = type metadata accessor for Date();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5, v7);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v12 = sub_1002C3740(v10);
    Date.init()();
    v13 = sub_1002D1488(v12, v9);
    v12, v14, v15, v16, v17, v18, v19, v20;
    (*(v6 + 8))(v9, v5);
    v21 = sub_1002C3B0C(v10);
    v22 = sub_1002D20A4(v21);
    v21, v23, v24, v25, v26, v27, v28, v29;
    v31 = v13;
    sub_1002723E4(v22);

    v30 = v31;
  }

  else
  {
    v30 = &_swiftEmptyArrayStorage;
  }

  *a3 = v30;
  return result;
}

_TtC7remindd19RDXPCStorePerformer *sub_1002D1488(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v137 = sub_1000F5104(&qword_1009410B0, &qword_1007A0A30);
  __chkstk_darwin(v137, v6);
  v140 = &v129 - v7;
  v8 = sub_1000F5104(&qword_10094B8E0, &unk_1007AABD0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8, v10);
  v132 = &v129 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12, v13);
  v150 = &v129 - v14;
  v149 = type metadata accessor for RDIntentsRelevantShortcutsHandlerItem(0);
  v15 = *(v149 - 8);
  __chkstk_darwin(v149, v16);
  v148 = &v129 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18, v19);
  v141 = &v129 - v20;
  __chkstk_darwin(v21, v22);
  v24 = &v129 - v23;
  v25 = sub_1000F5104(&qword_1009410B8, &qword_1007A0A38);
  __chkstk_darwin(v25 - 8, v26);
  v133 = &v129 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28, v29);
  v142 = &v129 - v30;
  __chkstk_darwin(v31, v32);
  v151 = &v129 - v33;
  __chkstk_darwin(v34, v35);
  v37 = &v129 - v36;
  v157 = a2;
  v38 = sub_10024D43C(sub_1002D6240, v156, a1);
  v154 = a2;
  v155 = v5;
  v39 = sub_1003DFAC8(sub_1002D6260, v153, v38);
  v38, v40, v41, v42, v43, v44, v45, v46;
  v158 = v39;

  sub_1002D383C(&v158, v47);
  v39, v48, v49, v50, v51, v52, v53, v54;
  v55 = v158;
  v56 = *(v9 + 56);
  v138 = v8;
  v136 = v9 + 56;
  v135 = v56;
  v56(v37, 1, 1, v8);
  v57 = *v55->clientIdentity;
  v139 = v37;
  if (v57)
  {
    v130 = a1;
    v58 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    v129 = v55;
    v143 = v58;
    v59 = v55 + v58;
    v147 = (v9 + 48);
    v60 = &_swiftEmptyArrayStorage;
    v61 = *(v15 + 72);
    v62 = &qword_1009410B8;
    v63 = &qword_1007A0A38;
    v64 = v138;
    v65 = v151;
    v66 = v139;
    v146 = v61;
    v134 = v24;
    while (1)
    {
      v152 = v57;
      sub_1002D6320(v59, v24, type metadata accessor for RDIntentsRelevantShortcutsHandlerItem);
      sub_100010364(v66, v65, v62, v63);
      v71 = *v147;
      if ((*v147)(v65, 1, v64) != 1)
      {
        break;
      }

      sub_1000050A4(v66, v62, v63);
      sub_1000050A4(v65, v62, v63);
      sub_100010364(&v24[*(v149 + 24)], v66, v62, v63);
      sub_1002D6320(v24, v148, type metadata accessor for RDIntentsRelevantShortcutsHandlerItem);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v60 = sub_100367980(0, *v60->clientIdentity + 1, 1, v60);
      }

      v73 = *v60->clientIdentity;
      v72 = *&v60->clientIdentity[8];
      v62 = &qword_1009410B8;
      v63 = &qword_1007A0A38;
      if (v73 >= v72 >> 1)
      {
        v60 = sub_100367980((v72 > 1), v73 + 1, 1, v60);
      }

      sub_1002D627C(v24, type metadata accessor for RDIntentsRelevantShortcutsHandlerItem);
      *v60->clientIdentity = v73 + 1;
      v68 = v146;
      v69 = v60 + v143 + v73 * v146;
      v70 = v148;
LABEL_4:
      sub_1002D61DC(v70, v69, v67);
      v65 = v151;
LABEL_5:
      v59 += v68;
      v57 = v152 - 1;
      if (v152 == 1)
      {

        a1 = v130;
        goto LABEL_30;
      }
    }

    v144 = v59;
    v145 = v60;
    v74 = v65;
    v75 = v150;
    sub_100031B58(v74, v150, &qword_10094B8E0, &unk_1007AABD0);
    v76 = *(v149 + 24);
    v77 = v142;
    sub_100010364(v75, v142, &qword_10094B8E0, &unk_1007AABD0);
    v135(v77, 0, 1, v64);
    v78 = *(v137 + 48);
    v79 = &v24[v76];
    v80 = v140;
    sub_100010364(v79, v140, v62, v63);
    sub_100010364(v77, v80 + v78, v62, v63);
    if (v71(v80, 1, v64) == 1)
    {
      sub_1000050A4(v77, v62, v63);
      v81 = v71(v80 + v78, 1, v64);
      v66 = v139;
      v24 = v134;
      if (v81 == 1)
      {
        sub_1000050A4(v80, v62, v63);
        v64 = v138;
        v65 = v151;
        v59 = v144;
        v60 = v145;
LABEL_14:
        sub_1000050A4(v150, &qword_10094B8E0, &unk_1007AABD0);
        sub_1002D627C(v24, type metadata accessor for RDIntentsRelevantShortcutsHandlerItem);
        v68 = v146;
        goto LABEL_5;
      }
    }

    else
    {
      v82 = v63;
      v83 = v62;
      v84 = v133;
      sub_100010364(v80, v133, v83, v82);
      if (v71(v80 + v78, 1, v64) != 1)
      {
        v87 = v132;
        sub_100031B58(v80 + v78, v132, &qword_10094B8E0, &unk_1007AABD0);
        type metadata accessor for Date();
        sub_1002D62DC(&qword_100938DB0, &protocol conformance descriptor for Date);
        v88 = dispatch thunk of static Equatable.== infix(_:_:)();
        v89 = v139;
        v24 = v134;
        if (v88)
        {
          v90 = v138;
          v91 = dispatch thunk of static Equatable.== infix(_:_:)();
          sub_1000050A4(v87, &qword_10094B8E0, &unk_1007AABD0);
          v63 = &qword_1007A0A38;
          sub_1000050A4(v142, &qword_1009410B8, &qword_1007A0A38);
          v92 = v84;
          v62 = &qword_1009410B8;
          v64 = v90;
          sub_1000050A4(v92, &qword_10094B8E0, &unk_1007AABD0);
          sub_1000050A4(v140, &qword_1009410B8, &qword_1007A0A38);
          v65 = v151;
          v59 = v144;
          v60 = v145;
          v66 = v89;
          if (v91)
          {
            goto LABEL_14;
          }

          goto LABEL_19;
        }

        sub_1000050A4(v87, &qword_10094B8E0, &unk_1007AABD0);
        v63 = &qword_1007A0A38;
        sub_1000050A4(v142, &qword_1009410B8, &qword_1007A0A38);
        v93 = v84;
        v62 = &qword_1009410B8;
        sub_1000050A4(v93, &qword_10094B8E0, &unk_1007AABD0);
        sub_1000050A4(v80, &qword_1009410B8, &qword_1007A0A38);
        v64 = v138;
        v60 = v145;
        v66 = v89;
LABEL_18:
        v59 = v144;
LABEL_19:
        sub_1002D6320(v24, v141, type metadata accessor for RDIntentsRelevantShortcutsHandlerItem);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v60 = sub_100367980(0, *v60->clientIdentity + 1, 1, v60);
        }

        v86 = *v60->clientIdentity;
        v85 = *&v60->clientIdentity[8];
        if (v86 >= v85 >> 1)
        {
          v60 = sub_100367980((v85 > 1), v86 + 1, 1, v60);
        }

        sub_1000050A4(v150, &qword_10094B8E0, &unk_1007AABD0);
        sub_1002D627C(v24, type metadata accessor for RDIntentsRelevantShortcutsHandlerItem);
        *v60->clientIdentity = v86 + 1;
        v68 = v146;
        v69 = v60 + v143 + v86 * v146;
        v70 = v141;
        goto LABEL_4;
      }

      sub_1000050A4(v142, v83, v82);
      sub_1000050A4(v84, &qword_10094B8E0, &unk_1007AABD0);
      v24 = v134;
      v62 = v83;
      v63 = v82;
      v66 = v139;
    }

    sub_1000050A4(v80, &qword_1009410B0, &qword_1007A0A30);
    v64 = v138;
    v60 = v145;
    goto LABEL_18;
  }

  v60 = &_swiftEmptyArrayStorage;
  v66 = v139;
LABEL_30:
  v94 = v131;
  if (qword_100935E50 != -1)
  {
    swift_once();
  }

  v95 = type metadata accessor for Logger();
  sub_100006654(v95, qword_100940F80);

  v96 = Logger.logObject.getter();
  v97 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v96, v97))
  {
    v98 = swift_slowAlloc();
    v99 = swift_slowAlloc();
    v158 = v99;
    *v98 = 136446722;
    *(v98 + 4) = sub_10000668C(*(v94 + 16), *(v94 + 24), &v158);
    *(v98 + 12) = 2048;
    *(v98 + 14) = *(a1 + 16);
    a1, v100, v101, v102, v103, v104, v105, v106;
    *(v98 + 22) = 2048;
    *(v98 + 24) = *v60->clientIdentity;
    v60, v107, v108, v109, v110, v111, v112, v113;
    _os_log_impl(&_mh_execute_header, v96, v97, "%{public}s filtered %ld reminders down to %ld", v98, 0x20u);
    sub_10000607C(v99);

    sub_1000050A4(v66, &qword_1009410B8, &qword_1007A0A38);
  }

  else
  {

    a1, v114, v115, v116, v117, v118, v119, v120;
    sub_1000050A4(v66, &qword_1009410B8, &qword_1007A0A38);
    v60, v121, v122, v123, v124, v125, v126, v127;
  }

  return v60;
}

_TtC7remindd19RDXPCStorePerformer *sub_1002D20A4(_TtC7remindd19RDXPCStorePerformer *a1)
{
  v80 = type metadata accessor for RDTimelineEngineLocationReminder(0);
  v2 = *(v80 - 8);
  __chkstk_darwin(v80, v3);
  v5 = &v75 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for RDIntentsRelevantShortcutsHandlerItem(0);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6, v8);
  v10 = &v75 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = a1;
  sub_1000F5104(&qword_1009410A0, &unk_1007A0A20);
  sub_10000CB48(&qword_1009410A8, &qword_1009410A0, &unk_1007A0A20, &protocol conformance descriptor for [A]);
  v11 = Sequence.unique<A>(by:)();
  v19 = v11;
  v20 = *(v11 + 16);
  if (v20)
  {
    v76 = a1;
    v81 = &_swiftEmptyArrayStorage;
    sub_100253A50(0, v20, 0);
    v21 = v81;
    v22 = objc_opt_self();
    v23 = *(v2 + 80);
    v75 = v19;
    v24 = v19 + ((v23 + 32) & ~v23);
    v78 = *(v2 + 72);
    v79 = v22;
    do
    {
      sub_1002D6320(v24, v5, type metadata accessor for RDTimelineEngineLocationReminder);
      isa = UUID._bridgeToObjectiveC()().super.isa;
      v26 = [v79 objectIDWithUUID:isa];

      v27 = *(v6 + 24);
      v28 = sub_1000F5104(&qword_10094B8E0, &unk_1007AABD0);
      (*(*(v28 - 8) + 56))(&v10[v27], 1, 1, v28);
      v29 = *&v5[*(v80 + 24)];
      sub_1002D627C(v5, type metadata accessor for RDTimelineEngineLocationReminder);
      *v10 = v26;
      *(v10 + 1) = 0;
      *(v10 + 2) = 0xE000000000000000;
      *&v10[*(v6 + 28)] = v29;
      v81 = v21;
      v32 = *v21->clientIdentity;
      v31 = *&v21->clientIdentity[8];
      if (v32 >= v31 >> 1)
      {
        sub_100253A50((v31 > 1), v32 + 1, 1);
        v21 = v81;
      }

      *v21->clientIdentity = v32 + 1;
      sub_1002D61DC(v10, v21 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v32, v30);
      v24 += v78;
      --v20;
    }

    while (v20);
    v75, v33, v34, v35, v36, v37, v38, v39;
    a1 = v76;
  }

  else
  {
    v11, v12, v13, v14, v15, v16, v17, v18;
    v21 = &_swiftEmptyArrayStorage;
  }

  v40 = v77;
  if (qword_100935E50 != -1)
  {
    swift_once();
  }

  v41 = type metadata accessor for Logger();
  sub_100006654(v41, qword_100940F80);

  v42 = Logger.logObject.getter();
  v43 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v42, v43))
  {
    v44 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    v81 = v45;
    *v44 = 136446722;
    *(v44 + 4) = sub_10000668C(*(v40 + 16), *(v40 + 24), &v81);
    *(v44 + 12) = 2048;
    *(v44 + 14) = *a1->clientIdentity;
    a1, v46, v47, v48, v49, v50, v51, v52;
    *(v44 + 22) = 2048;
    *(v44 + 24) = *v21->clientIdentity;
    v21, v53, v54, v55, v56, v57, v58, v59;
    _os_log_impl(&_mh_execute_header, v42, v43, "%{public}s filtered %ld LOCATION reminders down to %ld", v44, 0x20u);
    sub_10000607C(v45);
  }

  else
  {

    a1, v60, v61, v62, v63, v64, v65, v66;
    v21, v67, v68, v69, v70, v71, v72, v73;
  }

  return v21;
}

void sub_1002D2594(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = objc_autoreleasePoolPush();
  sub_1005176BC(v2);

  objc_autoreleasePoolPop(v3);
}

void sub_1002D25E8(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v100 = a3;
  v6 = sub_1000F5104(&qword_10093F970, &unk_1007A7670);
  __chkstk_darwin(v6 - 8, v7);
  v91 = &v77 - v8;
  v9 = type metadata accessor for TimeZone();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9, v11);
  v94 = &v77 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  __chkstk_darwin(v13 - 8, v14);
  v92 = &v77 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16, v17);
  v19 = &v77 - v18;
  __chkstk_darwin(v20, v21);
  v23 = &v77 - v22;
  __chkstk_darwin(v24, v25);
  v98 = &v77 - v26;
  __chkstk_darwin(v27, v28);
  v95 = &v77 - v29;
  v30 = type metadata accessor for Date();
  v99 = *(v30 - 8);
  __chkstk_darwin(v30, v31);
  v33 = &v77 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v34, v35);
  v93 = &v77 - v36;
  v37 = type metadata accessor for RDTimelineEngineDueReminder(0);
  v96 = *(a1 + *(v37 + 32));
  if (!v96)
  {
    goto LABEL_15;
  }

  v97 = v37;
  if ((static Date.< infix(_:_:)() & 1) == 0)
  {
    goto LABEL_15;
  }

  v88 = v3;
  v89 = v33;
  v82 = a2;
  v83 = v10;
  v85 = v9;
  v38 = v97[7];
  v39 = v99;
  v41 = v99 + 56;
  v40 = *(v99 + 56);
  v42 = v23;
  v43 = v98;
  v40(v98, 1, 1, v30);
  v84 = a1;
  sub_1004F20E4(v42);
  sub_1004F2344(v43, v42, v19);
  v86 = *(v39 + 48);
  v87 = v39 + 48;
  v44 = v86(v19, 1, v30);
  v90 = v38;
  if (v44 == 1)
  {
    sub_1000050A4(v42, &unk_100938850, qword_100795AE0);
    sub_1000050A4(v43, &unk_100938850, qword_100795AE0);
    sub_1000050A4(v19, &unk_100938850, qword_100795AE0);
    v45 = v95;
    v40(v95, 1, 1, v30);
    a1 = v84;
  }

  else
  {
    v80 = v40;
    v78 = v42;
    (*(v39 + 32))(v89, v19, v30);
    a1 = v84;
    v46 = v91;
    DateComponents.timeZone.getter();
    v47 = v83;
    v48 = *(v83 + 48);
    v49 = v85;
    v50 = v48(v46, 1, v85);
    v81 = v41;
    v79 = v30;
    if (v50 == 1)
    {
      static TimeZone.current.getter();
      v51 = v48(v46, 1, v49) == 1;
      v52 = v47;
      v53 = v46;
      v54 = v78;
      if (!v51)
      {
        sub_1000050A4(v53, &qword_10093F970, &unk_1007A7670);
      }
    }

    else
    {
      (*(v47 + 32))(v94, v46, v49);
      v52 = v47;
      v54 = v78;
    }

    isa = DateComponents._bridgeToObjectiveC()().super.isa;
    v56 = [(objc_class *)isa rem_isAllDayDateComponents];

    v91 = objc_opt_self();
    v57 = Date._bridgeToObjectiveC()().super.isa;
    v58 = Date._bridgeToObjectiveC()().super.isa;
    v59 = TimeZone._bridgeToObjectiveC()().super.isa;
    sub_1000060C8(0, &unk_100940C70, REMRecurrenceRule_ptr);
    v60 = Array._bridgeToObjectiveC()().super.isa;
    v61 = [v91 nextRecurrentDueDateAfter:v57 dueDate:v58 timeZone:v59 allDay:v56 recurrenceRules:v60];

    v62 = v80;
    if (v61)
    {
      v63 = v92;
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      v64 = 0;
      v65 = v99;
    }

    else
    {
      v64 = 1;
      v65 = v99;
      v63 = v92;
    }

    (*(v52 + 8))(v94, v85);
    v66 = *(v65 + 8);
    v30 = v79;
    v66(v89, v79);
    sub_1000050A4(v54, &unk_100938850, qword_100795AE0);
    sub_1000050A4(v98, &unk_100938850, qword_100795AE0);
    v62(v63, v64, 1, v30);
    v45 = v95;
    sub_100031B58(v63, v95, &unk_100938850, qword_100795AE0);
  }

  v67 = v86(v45, 1, v30);
  v68 = v90;
  if (v67 == 1)
  {
    sub_1000050A4(v45, &unk_100938850, qword_100795AE0);
LABEL_15:
    sub_1002D6320(a1, v100, type metadata accessor for RDTimelineEngineDueReminder);
    return;
  }

  v69 = *(v99 + 32);
  v70 = v93;
  v69(v93, v45, v30);
  v71 = type metadata accessor for UUID();
  v72 = v100;
  (*(*(v71 - 8) + 16))(v100, a1, v71);
  v73 = v97;
  v69((v72 + v97[5]), v70, v30);
  v74 = v73[7];
  v75 = *(a1 + v73[6]);
  v76 = type metadata accessor for DateComponents();
  (*(*(v76 - 8) + 16))(v72 + v74, a1 + v68, v76);
  *(v72 + v73[6]) = v75;
  *(v72 + v73[8]) = v96;
}

uint64_t sub_1002D2D8C@<X0>(uint64_t a1@<X1>, char *a2@<X8>)
{
  v47 = a2;
  v46 = a1;
  v45 = sub_1000F5104(&qword_1009410C0, &unk_1007A0A40);
  __chkstk_darwin(v45, v2);
  v43 = &v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4, v5);
  v44 = &v37 - v6;
  v7 = type metadata accessor for Date();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7, v9);
  v11 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12, v13);
  v15 = &v37 - v14;
  v16 = sub_1000F5104(&qword_10094B8E0, &unk_1007AABD0);
  v38 = *(v16 - 8);
  __chkstk_darwin(v16, v17);
  v48 = &v37 - v18;
  type metadata accessor for RDTimelineEngineDueReminder(0);
  v19 = objc_opt_self();
  isa = UUID._bridgeToObjectiveC()().super.isa;
  v21 = [v19 objectIDWithUUID:isa];

  Date.addingTimeInterval(_:)();
  Date.addingTimeInterval(_:)();
  v22 = sub_1002D62DC(&qword_1009464D0, &protocol conformance descriptor for Date);
  result = dispatch thunk of static Comparable.<= infix(_:_:)();
  if (result)
  {
    v40 = v22;
    v41 = v21;
    v24 = *(v8 + 32);
    v25 = v44;
    v24(v44, v15, v7);
    v42 = v16;
    v26 = v45;
    v24((v25 + *(v45 + 48)), v11, v7);
    v27 = v43;
    sub_100010364(v25, v43, &qword_1009410C0, &unk_1007A0A40);
    v39 = *(v26 + 48);
    v28 = v7;
    v29 = v48;
    v24(v48, v27, v28);
    v30 = *(v8 + 8);
    v30(v27 + v39, v28);
    sub_100031B58(v25, v27, &qword_1009410C0, &unk_1007A0A40);
    v31 = *(v26 + 48);
    v32 = v42;
    v24((v29 + *(v42 + 36)), (v27 + v31), v28);
    v30(v27, v28);
    if (dispatch thunk of static Comparable.< infix(_:_:)())
    {
      sub_1000050A4(v48, &qword_10094B8E0, &unk_1007AABD0);

      v33 = type metadata accessor for RDIntentsRelevantShortcutsHandlerItem(0);
      return (*(*(v33 - 8) + 56))(v47, 1, 1, v33);
    }

    else
    {
      v34 = type metadata accessor for RDIntentsRelevantShortcutsHandlerItem(0);
      v35 = *(v34 + 24);
      v36 = v47;
      sub_100031B58(v48, &v47[v35], &qword_10094B8E0, &unk_1007AABD0);
      (*(v38 + 56))(&v36[v35], 0, 1, v32);
      *v36 = v41;
      *(v36 + 1) = 0;
      *(v36 + 2) = 0xE000000000000000;
      *&v36[*(v34 + 28)] = 0;
      return (*(*(v34 - 8) + 56))(v36, 0, 1, v34);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1002D3254(id *a1, id *a2)
{
  v79 = a2;
  v3 = type metadata accessor for UUID();
  v77 = *(v3 - 8);
  v78 = v3;
  __chkstk_darwin(v3, v4);
  v76 = &v74 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6, v7);
  v9 = &v74 - v8;
  v10 = sub_1000F5104(&qword_1009410B8, &qword_1007A0A38);
  __chkstk_darwin(v10 - 8, v11);
  v13 = &v74 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14, v15);
  v17 = &v74 - v16;
  v18 = sub_1000F5104(&qword_10094B8E0, &unk_1007AABD0);
  v19 = *(v18 - 8);
  __chkstk_darwin(v18, v20);
  v22 = &v74 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23, v24);
  v26 = &v74 - v25;
  v27 = type metadata accessor for RDIntentsRelevantShortcutsHandlerItem(0);
  v28 = *(v27 + 24);
  v75 = a1;
  sub_100010364(a1 + v28, v17, &qword_1009410B8, &qword_1007A0A38);
  v29 = *(v19 + 48);
  if (v29(v17, 1, v18) == 1)
  {
    v30 = v79;
    v13 = v17;
  }

  else
  {
    sub_100031B58(v17, v26, &qword_10094B8E0, &unk_1007AABD0);
    v31 = *(v27 + 24);
    v32 = v79;
    sub_100010364(v79 + v31, v13, &qword_1009410B8, &qword_1007A0A38);
    if (v29(v13, 1, v18) != 1)
    {
      sub_100031B58(v13, v22, &qword_10094B8E0, &unk_1007AABD0);
      v58 = static Date.< infix(_:_:)();
      sub_1000050A4(v22, &qword_10094B8E0, &unk_1007AABD0);
      sub_1000050A4(v26, &qword_10094B8E0, &unk_1007AABD0);
      return v58 & 1;
    }

    v30 = v32;
    sub_1000050A4(v26, &qword_10094B8E0, &unk_1007AABD0);
  }

  sub_1000050A4(v13, &qword_1009410B8, &qword_1007A0A38);
  v33 = [*v75 uuid];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v34 = UUID.uuidString.getter();
  v36 = v35;
  v37 = v78;
  v38 = *(v77 + 8);
  v38(v9, v78);
  v39 = [*v30 uuid];
  v40 = v76;
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v41 = UUID.uuidString.getter();
  v43 = v42;
  v38(v40, v37);
  if (v34 == v41 && v36 == v43)
  {
    v43, v44, v45, v46, v47, v48, v49, v50;
    v36, v51, v52, v53, v54, v55, v56, v57;
    v58 = 0;
  }

  else
  {
    v58 = _stringCompareWithSmolCheck(_:_:expecting:)();
    v43, v59, v60, v61, v62, v63, v64, v65;
    v36, v66, v67, v68, v69, v70, v71, v72;
  }

  return v58 & 1;
}

void sub_1002D3698(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(a1 + *(type metadata accessor for RDTimelineEngineLocationReminder(0) + 24));
  objc_opt_self();
  v4 = swift_dynamicCastObjCClass();
  if (v4)
  {
    v5 = v4;
    v6 = v3;
    [v5 center];
    Double.write<A>(to:)();
    v7._countAndFlagsBits = 44;
    v7._object = 0xE100000000000000;
    String.append(_:)(v7);
    [v5 center];
    Double.write<A>(to:)();

    v8 = 0;
    v9 = 0xE000000000000000;
  }

  else
  {
    v10 = [v3 identifier];
    v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = v11;
  }

  *a2 = v8;
  a2[1] = v9;
}

uint64_t sub_1002D37C0(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  *(v8 + 24), a2, a3, a4, a5, a6, a7, a8;
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

void sub_1002D383C(_TtC7remindd19RDXPCStorePerformer **a1, __n128 a2)
{
  v3 = *(type metadata accessor for RDIntentsRelevantShortcutsHandlerItem(0) - 8);
  v4 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v4 = sub_10043648C(v4);
  }

  v5 = *v4->clientIdentity;
  v6[0] = v4 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
  v6[1] = v5;
  sub_1002D38E4(v6);
  *a1 = v4;
}

void sub_1002D38E4(uint64_t *a1)
{
  v2 = a1[1];
  v3 = _minimumMergeRunLength(_:)(v2);
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = &_swiftEmptyArrayStorage;
      }

      else
      {
        type metadata accessor for RDIntentsRelevantShortcutsHandlerItem(0);
        v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *v6->clientIdentity = v5;
      }

      v7 = *(type metadata accessor for RDIntentsRelevantShortcutsHandlerItem(0) - 8);
      v15[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v15[1] = v5;
      sub_1002D40D4(v15, v16, a1, v4);
      *v6->clientIdentity = 0;
      v6, v8, v9, v10, v11, v12, v13, v14;
      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_1002D3A10(0, v2, 1, a1);
  }
}

void sub_1002D3A10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v121 = type metadata accessor for UUID();
  v8 = *(v121 - 8);
  __chkstk_darwin(v121, v9);
  v120 = &v109[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v11, v12);
  v119 = &v109[-v13];
  v14 = sub_1000F5104(&qword_1009410B8, &qword_1007A0A38);
  __chkstk_darwin(v14 - 8, v15);
  v117 = &v109[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v17, v18);
  v127 = &v109[-v19];
  v126 = sub_1000F5104(&qword_10094B8E0, &unk_1007AABD0);
  v20 = *(v126 - 8);
  __chkstk_darwin(v126, v21);
  v116 = &v109[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v23, v24);
  v26 = &v109[-v25];
  v27 = type metadata accessor for RDIntentsRelevantShortcutsHandlerItem(0);
  __chkstk_darwin(v27, v28);
  v124 = &v109[-((v29 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v30, v31);
  v128 = &v109[-v32];
  __chkstk_darwin(v33, v34);
  v133 = &v109[-v37];
  v111 = a2;
  if (a3 != a2)
  {
    v38 = v35;
    v39 = *a4;
    v40 = *(v36 + 72);
    v129 = (v20 + 48);
    v118 = (v8 + 8);
    v41 = v39 + v40 * (a3 - 1);
    v122 = -v40;
    v123 = v39;
    v42 = a1 - a3;
    v110 = v40;
    v43 = v39 + v40 * a3;
    v125 = v35;
    v130 = v26;
LABEL_6:
    v114 = v41;
    v115 = a3;
    v112 = v43;
    v113 = v42;
    v51 = v42;
    v52 = v128;
    while (1)
    {
      v131 = v43;
      v132 = v51;
      v53 = v133;
      sub_1002D6320(v43, v133, type metadata accessor for RDIntentsRelevantShortcutsHandlerItem);
      sub_1002D6320(v41, v52, type metadata accessor for RDIntentsRelevantShortcutsHandlerItem);
      v54 = v127;
      v55 = v52;
      sub_100010364(v53 + *(v38 + 24), v127, &qword_1009410B8, &qword_1007A0A38);
      v56 = *v129;
      v57 = v126;
      v58 = (*v129)(v54, 1, v126);
      v59 = v54;
      v60 = v130;
      v61 = v58;
      v62 = v59;
      if (v61 != 1)
      {
        sub_100031B58(v59, v130, &qword_10094B8E0, &unk_1007AABD0);
        v63 = v52 + *(v38 + 24);
        v64 = v117;
        sub_100010364(v63, v117, &qword_1009410B8, &qword_1007A0A38);
        if (v56(v64, 1, v57) != 1)
        {
          v100 = v116;
          sub_100031B58(v64, v116, &qword_10094B8E0, &unk_1007AABD0);
          v85 = static Date.< infix(_:_:)();
          v101 = v100;
          v102 = v130;
          v52 = v128;
          sub_1000050A4(v101, &qword_10094B8E0, &unk_1007AABD0);
          sub_1000050A4(v102, &qword_10094B8E0, &unk_1007AABD0);
          goto LABEL_14;
        }

        sub_1000050A4(v60, &qword_10094B8E0, &unk_1007AABD0);
        v62 = v64;
        v53 = v133;
        v55 = v128;
      }

      sub_1000050A4(v62, &qword_1009410B8, &qword_1007A0A38);
      v65 = [*v53 uuid];
      v66 = v119;
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v67 = UUID.uuidString.getter();
      v68 = v55;
      v70 = v69;
      v71 = *v118;
      v72 = v121;
      (*v118)(v66, v121);
      v73 = [*v68 uuid];
      v74 = v120;
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v75 = UUID.uuidString.getter();
      v77 = v76;
      v71(v74, v72);
      if (v67 == v75 && v70 == v77)
      {
        v77, v78, v79, v80, v81, v82, v83, v84;
        v70, v44, v45, v46, v47, v48, v49, v50;
        sub_1002D627C(v128, type metadata accessor for RDIntentsRelevantShortcutsHandlerItem);
        sub_1002D627C(v133, type metadata accessor for RDIntentsRelevantShortcutsHandlerItem);
        v38 = v125;
LABEL_5:
        a3 = v115 + 1;
        v41 = v114 + v110;
        v42 = v113 - 1;
        v43 = v112 + v110;
        if (v115 + 1 == v111)
        {
          return;
        }

        goto LABEL_6;
      }

      v85 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v77, v86, v87, v88, v89, v90, v91, v92;
      v70, v93, v94, v95, v96, v97, v98, v99;
      v52 = v128;
LABEL_14:
      sub_1002D627C(v52, type metadata accessor for RDIntentsRelevantShortcutsHandlerItem);
      sub_1002D627C(v133, type metadata accessor for RDIntentsRelevantShortcutsHandlerItem);
      v38 = v125;
      v104 = v131;
      v105 = v132;
      if ((v85 & 1) == 0)
      {
        goto LABEL_5;
      }

      if (!v123)
      {
        __break(1u);
        return;
      }

      v106 = v124;
      sub_1002D61DC(v131, v124, v103);
      swift_arrayInitWithTakeFrontToBack();
      sub_1002D61DC(v106, v41, v107);
      v41 += v122;
      v43 = v104 + v122;
      v108 = __CFADD__(v105, 1);
      v51 = v105 + 1;
      if (v108)
      {
        goto LABEL_5;
      }
    }
  }
}

void sub_1002D40D4(unint64_t *a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v5 = v4;
  v264 = a1;
  v290 = type metadata accessor for UUID();
  v8 = *(v290 - 8);
  __chkstk_darwin(v290, v9);
  v288 = &v260 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11, v12);
  v287 = &v260 - v13;
  __chkstk_darwin(v14, v15);
  v273 = &v260 - v16;
  __chkstk_darwin(v17, v18);
  v272 = &v260 - v19;
  v20 = sub_1000F5104(&qword_1009410B8, &qword_1007A0A38);
  __chkstk_darwin(v20 - 8, v21);
  v286 = &v260 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23, v24);
  v299 = &v260 - v25;
  __chkstk_darwin(v26, v27);
  v29 = &v260 - v28;
  __chkstk_darwin(v30, v31);
  v280 = &v260 - v32;
  v33 = sub_1000F5104(&qword_10094B8E0, &unk_1007AABD0);
  v34 = *(v33 - 8);
  __chkstk_darwin(v33, v35);
  v281 = &v260 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v37, v38);
  v285 = &v260 - v39;
  __chkstk_darwin(v40, v41);
  v265 = &v260 - v42;
  __chkstk_darwin(v43, v44);
  v269 = &v260 - v45;
  v295 = type metadata accessor for RDIntentsRelevantShortcutsHandlerItem(0);
  v278 = *(v295 - 8);
  __chkstk_darwin(v295, v46);
  v270 = &v260 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v48, v49);
  v294 = &v260 - v50;
  __chkstk_darwin(v51, v52);
  v297 = (&v260 - v53);
  __chkstk_darwin(v54, v55);
  v296 = (&v260 - v56);
  __chkstk_darwin(v57, v58);
  __chkstk_darwin(v59, v60);
  v284 = (&v260 - v61);
  __chkstk_darwin(v62, v63);
  v261 = (&v260 - v64);
  __chkstk_darwin(v65, v66);
  v282 = a3;
  if (*(a3 + 8) < 1)
  {
    v77 = &_swiftEmptyArrayStorage;
LABEL_115:
    a3 = *v264;
    if (!*v264)
    {
      goto LABEL_157;
    }

    v8 = v77;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      goto LABEL_151;
    }

    v255 = v8;
LABEL_118:
    v303 = v255;
    v8 = *v255->clientIdentity;
    if (v8 >= 2)
    {
      while (*v282)
      {
        v256 = *(&v255->super.isa + 2 * v8);
        v257 = v255;
        v258 = *&v255->clientIdentity[16 * v8 + 8];
        sub_1002D5378(*v282 + *(v278 + 72) * v256, *v282 + *(v278 + 72) * *&v255->clientIdentity[16 * v8], (*v282 + *(v278 + 72) * v258), a3);
        if (v5)
        {
          v255 = v257;
          goto LABEL_129;
        }

        if (v258 < v256)
        {
          goto LABEL_144;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v257 = sub_1004361F4(v257, v67, v68, v77, v69, v70, v71, v72);
        }

        if (v8 - 2 >= *v257->clientIdentity)
        {
          goto LABEL_145;
        }

        v259 = &v257->super.isa + 2 * v8;
        *v259 = v256;
        v259[1] = v258;
        v303 = v257;
        sub_100436168(v8 - 1);
        v255 = v303;
        v8 = *v303->clientIdentity;
        if (v8 <= 1)
        {
          goto LABEL_129;
        }
      }

      goto LABEL_155;
    }

LABEL_129:
    v255, v67, v68, v77, v69, v70, v71, v72;
    return;
  }

  v75 = *(a3 + 8);
  v260 = (&v260 - v73);
  v76 = 0;
  v300 = (v34 + 48);
  v77 = &_swiftEmptyArrayStorage;
  v289 = (v8 + 8);
  v263 = a4;
  v267 = v29;
  v291 = v33;
  v78 = v74;
  v279 = v74;
  while (1)
  {
    v271 = v77;
    if (v76 + 1 >= v75)
    {
      v140 = v76 + 1;
      v141 = v76;
      goto LABEL_35;
    }

    v283 = v75;
    v79 = *v282;
    v80 = *(v278 + 72);
    v302 = *v282 + v80 * (v76 + 1);
    v81 = v260;
    sub_1002D6320(v302, v260, type metadata accessor for RDIntentsRelevantShortcutsHandlerItem);
    v82 = v261;
    sub_1002D6320(v79 + v80 * v76, v261, type metadata accessor for RDIntentsRelevantShortcutsHandlerItem);
    LODWORD(v293) = sub_1002D3254(v81, v82);
    if (v5)
    {
      sub_1002D627C(v82, type metadata accessor for RDIntentsRelevantShortcutsHandlerItem);
      sub_1002D627C(v81, type metadata accessor for RDIntentsRelevantShortcutsHandlerItem);
      v255 = v271;
      goto LABEL_129;
    }

    a3 = type metadata accessor for RDIntentsRelevantShortcutsHandlerItem;
    sub_1002D627C(v82, type metadata accessor for RDIntentsRelevantShortcutsHandlerItem);
    sub_1002D627C(v81, type metadata accessor for RDIntentsRelevantShortcutsHandlerItem);
    v262 = v76;
    v84 = v76 + 2;
    v292 = v80;
    v85 = v79 + v80 * (v76 + 2);
    v277 = 0;
    v86 = v295;
    v87 = v302;
    do
    {
      v8 = v284;
      if (v283 == v84)
      {
        v140 = v283;
        goto LABEL_21;
      }

      v301 = v84;
      sub_1002D6320(v85, v284, type metadata accessor for RDIntentsRelevantShortcutsHandlerItem);
      v302 = v87;
      sub_1002D6320(v87, v78, type metadata accessor for RDIntentsRelevantShortcutsHandlerItem);
      v104 = v8 + *(v86 + 24);
      v105 = v8;
      v106 = v280;
      v107 = v78;
      sub_100010364(v104, v280, &qword_1009410B8, &qword_1007A0A38);
      v108 = *v300;
      v109 = v291;
      if ((*v300)(v106, 1, v291) != 1)
      {
        v298 = v85;
        v110 = v269;
        sub_100031B58(v280, v269, &qword_10094B8E0, &unk_1007AABD0);
        v111 = v78 + *(v86 + 24);
        v112 = v267;
        sub_100010364(v111, v267, &qword_1009410B8, &qword_1007A0A38);
        if (v108(v112, 1, v109) != 1)
        {
          v138 = v265;
          sub_100031B58(v112, v265, &qword_10094B8E0, &unk_1007AABD0);
          v139 = v110;
          v8 = static Date.< infix(_:_:)();
          sub_1000050A4(v138, &qword_10094B8E0, &unk_1007AABD0);
          sub_1000050A4(v139, &qword_10094B8E0, &unk_1007AABD0);
          v5 = v277;
          v102 = v292;
          v78 = v279;
          v103 = v302;
          v85 = v298;
          goto LABEL_9;
        }

        sub_1000050A4(v110, &qword_10094B8E0, &unk_1007AABD0);
        v106 = v112;
        v105 = v284;
        v107 = v279;
        v85 = v298;
      }

      sub_1000050A4(v106, &qword_1009410B8, &qword_1007A0A38);
      v113 = [*v105 uuid];
      v114 = v272;
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v298 = UUID.uuidString.getter();
      v116 = v115;
      v117 = v290;
      v118 = *v289;
      (*v289)(v114, v290);
      v119 = [*v107 uuid];
      v120 = v273;
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v121 = UUID.uuidString.getter();
      v123 = v122;
      v118(v120, v117);
      if (v298 == v121 && v116 == v123)
      {
        v123, v124, v125, v126, v127, v128, v129, v130;
        v116, v131, v132, v133, v134, v135, v136, v137;
        v8 = 0;
      }

      else
      {
        v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
        v123, v88, v89, v90, v91, v92, v93, v94;
        v116, v95, v96, v97, v98, v99, v100, v101;
      }

      v5 = v277;
      v78 = v279;
      v102 = v292;
      v103 = v302;
LABEL_9:
      a3 = type metadata accessor for RDIntentsRelevantShortcutsHandlerItem;
      sub_1002D627C(v78, type metadata accessor for RDIntentsRelevantShortcutsHandlerItem);
      sub_1002D627C(v284, type metadata accessor for RDIntentsRelevantShortcutsHandlerItem);
      v84 = v301 + 1;
      v85 += v102;
      v87 = v103 + v102;
      v86 = v295;
    }

    while (((v293 ^ v8) & 1) == 0);
    v140 = v301;
LABEL_21:
    a4 = v263;
    v77 = v271;
    v141 = v262;
    if (v293)
    {
      if (v140 >= v262)
      {
        if (v262 < v140)
        {
          v142 = v140;
          v8 = v292 * (v140 - 1);
          v143 = v140 * v292;
          v144 = v262;
          v145 = v262 * v292;
          v146 = v292;
          do
          {
            if (v144 != --v142)
            {
              v148 = *v282;
              if (!*v282)
              {
                goto LABEL_154;
              }

              a3 = v148 + v145;
              sub_1002D61DC(v148 + v145, v270, v83);
              if (v145 < v8 || a3 >= v148 + v143)
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v145 != v8)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              sub_1002D61DC(v270, v148 + v8, v147);
              v77 = v271;
            }

            ++v144;
            v8 -= v146;
            v143 -= v146;
            v145 += v146;
          }

          while (v144 < v142);
          v5 = v277;
          a4 = v263;
          v141 = v262;
        }

        goto LABEL_35;
      }

LABEL_150:
      __break(1u);
LABEL_151:
      v255 = sub_1004361F4(v8, v67, v68, v77, v69, v70, v71, v72);
      goto LABEL_118;
    }

LABEL_35:
    v149 = v282[1];
    if (v140 >= v149)
    {
      goto LABEL_43;
    }

    if (__OFSUB__(v140, v141))
    {
      goto LABEL_147;
    }

    if (v140 - v141 >= a4)
    {
      goto LABEL_43;
    }

    if (__OFADD__(v141, a4))
    {
      goto LABEL_148;
    }

    if (v141 + a4 < v149)
    {
      v149 = v141 + a4;
    }

    v150 = v291;
    if (v149 < v141)
    {
LABEL_149:
      __break(1u);
      goto LABEL_150;
    }

    v268 = v149;
    if (v140 == v149)
    {
LABEL_43:
      v76 = v140;
      if (v140 < v141)
      {
        goto LABEL_146;
      }

      goto LABEL_44;
    }

    v277 = v5;
    v196 = *v282;
    v197 = *(v278 + 72);
    v198 = *v282 + v197 * (v140 - 1);
    v292 = -v197;
    v262 = v141;
    v199 = v141 - v140;
    v293 = v196;
    v266 = v197;
    v200 = v196 + v140 * v197;
    v202 = v296;
    v201 = v297;
    v203 = v295;
LABEL_97:
    v283 = v140;
    v274 = v200;
    v275 = v199;
    v8 = v199;
    v276 = v198;
LABEL_98:
    v301 = v8;
    v302 = v200;
    sub_1002D6320(v200, v202, type metadata accessor for RDIntentsRelevantShortcutsHandlerItem);
    sub_1002D6320(v198, v201, type metadata accessor for RDIntentsRelevantShortcutsHandlerItem);
    v211 = v299;
    v212 = v201;
    sub_100010364(v202 + *(v203 + 24), v299, &qword_1009410B8, &qword_1007A0A38);
    v213 = *v300;
    if ((*v300)(v211, 1, v150) != 1)
    {
      break;
    }

LABEL_101:
    sub_1000050A4(v211, &qword_1009410B8, &qword_1007A0A38);
    v217 = [*v202 uuid];
    v218 = v287;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v298 = UUID.uuidString.getter();
    v220 = v219;
    v221 = v290;
    v222 = *v289;
    (*v289)(v218, v290);
    v223 = [*v212 uuid];
    v8 = v288;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v224 = UUID.uuidString.getter();
    v226 = v225;
    v222(v8, v221);
    if (v298 != v224 || v220 != v226)
    {
      v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v226, v234, v235, v236, v237, v238, v239, v240;
      v220, v241, v242, v243, v244, v245, v246, v247;
      v150 = v291;
      v203 = v295;
      v202 = v296;
      goto LABEL_105;
    }

    v226, v227, v228, v229, v230, v231, v232, v233;
    v220, v204, v205, v206, v207, v208, v209, v210;
    a3 = type metadata accessor for RDIntentsRelevantShortcutsHandlerItem;
    v201 = v297;
    sub_1002D627C(v297, type metadata accessor for RDIntentsRelevantShortcutsHandlerItem);
    v202 = v296;
    sub_1002D627C(v296, type metadata accessor for RDIntentsRelevantShortcutsHandlerItem);
    v150 = v291;
    v203 = v295;
LABEL_96:
    v140 = v283 + 1;
    v198 = v276 + v266;
    v199 = v275 - 1;
    v200 = v274 + v266;
    if (v283 + 1 != v268)
    {
      goto LABEL_97;
    }

    v5 = v277;
    v77 = v271;
    v141 = v262;
    v76 = v268;
    if (v268 < v262)
    {
      goto LABEL_146;
    }

LABEL_44:
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v77 = v271;
    }

    else
    {
      v77 = sub_1003658B8(0, *v271->clientIdentity + 1, 1, v271, v69, v70, v71, v72);
    }

    a3 = *v77->clientIdentity;
    v151 = *&v77->clientIdentity[8];
    v8 = a3 + 1;
    if (a3 >= v151 >> 1)
    {
      v77 = sub_1003658B8((v151 > 1), a3 + 1, 1, v77, v69, v70, v71, v72);
    }

    *v77->clientIdentity = v8;
    v152 = v77 + 16 * a3;
    *(v152 + 4) = v141;
    *(v152 + 5) = v76;
    v153 = *v264;
    if (!*v264)
    {
      goto LABEL_156;
    }

    if (a3)
    {
      while (2)
      {
        v154 = v8 - 1;
        if (v8 >= 4)
        {
          v159 = &v77->clientIdentity[16 * v8 + 16];
          v160 = *(v159 - 64);
          v161 = *(v159 - 56);
          v165 = __OFSUB__(v161, v160);
          v162 = v161 - v160;
          if (v165)
          {
            goto LABEL_133;
          }

          v164 = *(v159 - 48);
          v163 = *(v159 - 40);
          v165 = __OFSUB__(v163, v164);
          v157 = v163 - v164;
          v158 = v165;
          if (v165)
          {
            goto LABEL_134;
          }

          v166 = &v77->super.isa + 2 * v8;
          v168 = *v166;
          v167 = v166[1];
          v165 = __OFSUB__(v167, v168);
          v169 = v167 - v168;
          if (v165)
          {
            goto LABEL_136;
          }

          v165 = __OFADD__(v157, v169);
          v170 = v157 + v169;
          if (v165)
          {
            goto LABEL_139;
          }

          if (v170 >= v162)
          {
            v188 = &v77->clientIdentity[16 * v154 + 16];
            v190 = *v188;
            v189 = *(v188 + 1);
            v165 = __OFSUB__(v189, v190);
            v191 = v189 - v190;
            if (v165)
            {
              goto LABEL_143;
            }

            if (v157 < v191)
            {
              v154 = v8 - 2;
            }
          }

          else
          {
LABEL_63:
            if (v158)
            {
              goto LABEL_135;
            }

            v171 = &v77->super.isa + 2 * v8;
            v173 = *v171;
            v172 = v171[1];
            v174 = __OFSUB__(v172, v173);
            v175 = v172 - v173;
            v176 = v174;
            if (v174)
            {
              goto LABEL_138;
            }

            v177 = &v77->clientIdentity[16 * v154 + 16];
            v179 = *v177;
            v178 = *(v177 + 1);
            v165 = __OFSUB__(v178, v179);
            v180 = v178 - v179;
            if (v165)
            {
              goto LABEL_141;
            }

            if (__OFADD__(v175, v180))
            {
              goto LABEL_142;
            }

            if (v175 + v180 < v157)
            {
              goto LABEL_77;
            }

            if (v157 < v180)
            {
              v154 = v8 - 2;
            }
          }
        }

        else
        {
          if (v8 == 3)
          {
            v155 = *&v77->clientIdentity[16];
            v156 = *&v77->clientIdentity[24];
            v165 = __OFSUB__(v156, v155);
            v157 = v156 - v155;
            v158 = v165;
            goto LABEL_63;
          }

          v181 = &v77->super.isa + 2 * v8;
          v183 = *v181;
          v182 = v181[1];
          v165 = __OFSUB__(v182, v183);
          v175 = v182 - v183;
          v176 = v165;
LABEL_77:
          if (v176)
          {
            goto LABEL_137;
          }

          v184 = v77 + 16 * v154;
          v186 = *(v184 + 4);
          v185 = *(v184 + 5);
          v165 = __OFSUB__(v185, v186);
          v187 = v185 - v186;
          if (v165)
          {
            goto LABEL_140;
          }

          if (v187 < v175)
          {
            break;
          }
        }

        a3 = v154 - 1;
        if (v154 - 1 >= v8)
        {
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
LABEL_145:
          __break(1u);
LABEL_146:
          __break(1u);
LABEL_147:
          __break(1u);
LABEL_148:
          __break(1u);
          goto LABEL_149;
        }

        if (!*v282)
        {
          goto LABEL_153;
        }

        v192 = v77;
        v8 = *&v77->clientIdentity[16 * a3 + 16];
        v193 = *&v77->clientIdentity[16 * v154 + 24];
        sub_1002D5378(*v282 + *(v278 + 72) * v8, *v282 + *(v278 + 72) * *&v77->clientIdentity[16 * v154 + 16], (*v282 + *(v278 + 72) * v193), v153);
        if (v5)
        {
          v255 = v192;
          goto LABEL_129;
        }

        if (v193 < v8)
        {
          goto LABEL_131;
        }

        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v194 = v192;
        }

        else
        {
          v194 = sub_1004361F4(v192, v67, v68, v77, v69, v70, v71, v72);
        }

        if (a3 >= *v194->clientIdentity)
        {
          goto LABEL_132;
        }

        v195 = v194 + 16 * a3;
        *(v195 + 4) = v8;
        *(v195 + 5) = v193;
        v303 = v194;
        sub_100436168(v154);
        v77 = v303;
        v8 = *v303->clientIdentity;
        if (v8 <= 1)
        {
          break;
        }

        continue;
      }
    }

    v75 = v282[1];
    a4 = v263;
    v78 = v279;
    if (v76 >= v75)
    {
      goto LABEL_115;
    }
  }

  v214 = v285;
  sub_100031B58(v299, v285, &qword_10094B8E0, &unk_1007AABD0);
  v215 = v201 + *(v203 + 24);
  v216 = v286;
  sub_100010364(v215, v286, &qword_1009410B8, &qword_1007A0A38);
  if (v213(v216, 1, v150) == 1)
  {
    sub_1000050A4(v214, &qword_10094B8E0, &unk_1007AABD0);
    v211 = v216;
    v202 = v296;
    v212 = v297;
    goto LABEL_101;
  }

  v248 = v281;
  sub_100031B58(v216, v281, &qword_10094B8E0, &unk_1007AABD0);
  v249 = v214;
  v8 = static Date.< infix(_:_:)();
  sub_1000050A4(v248, &qword_10094B8E0, &unk_1007AABD0);
  v202 = v296;
  sub_1000050A4(v249, &qword_10094B8E0, &unk_1007AABD0);
  v203 = v295;
LABEL_105:
  v201 = v297;
  a3 = type metadata accessor for RDIntentsRelevantShortcutsHandlerItem;
  sub_1002D627C(v297, type metadata accessor for RDIntentsRelevantShortcutsHandlerItem);
  sub_1002D627C(v202, type metadata accessor for RDIntentsRelevantShortcutsHandlerItem);
  v251 = v302;
  if ((v8 & 1) == 0)
  {
    goto LABEL_96;
  }

  v252 = v301;
  if (v293)
  {
    a3 = v294;
    sub_1002D61DC(v302, v294, v250);
    swift_arrayInitWithTakeFrontToBack();
    sub_1002D61DC(a3, v198, v253);
    v198 += v292;
    v200 = v251 + v292;
    v254 = __CFADD__(v252, 1);
    v8 = v252 + 1;
    if (v254)
    {
      goto LABEL_96;
    }

    goto LABEL_98;
  }

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
}

void sub_1002D5378(unint64_t a1, unint64_t a2, _BYTE *a3, unint64_t a4)
{
  v201 = a4;
  v192 = type metadata accessor for UUID();
  v7 = *(v192 - 8);
  __chkstk_darwin(v192, v8);
  v184 = &v178[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v10, v11);
  v183 = &v178[-v12];
  __chkstk_darwin(v13, v14);
  v188 = &v178[-v15];
  __chkstk_darwin(v16, v17);
  v187 = &v178[-v18];
  v19 = sub_1000F5104(&qword_1009410B8, &qword_1007A0A38);
  __chkstk_darwin(v19 - 8, v20);
  v182 = &v178[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v22, v23);
  v189 = &v178[-v24];
  __chkstk_darwin(v25, v26);
  v28 = &v178[-v27];
  __chkstk_darwin(v29, v30);
  v32 = &v178[-v31];
  v198 = sub_1000F5104(&qword_10094B8E0, &unk_1007AABD0);
  v33 = *(v198 - 8);
  __chkstk_darwin(v198, v34);
  v179 = &v178[-((v35 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v36, v37);
  v181 = &v178[-v38];
  __chkstk_darwin(v39, v40);
  v180 = &v178[-v41];
  __chkstk_darwin(v42, v43);
  v185 = &v178[-v44];
  v45 = type metadata accessor for RDIntentsRelevantShortcutsHandlerItem(0);
  __chkstk_darwin(v45, v46);
  v194 = &v178[-((v47 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v48, v49);
  __chkstk_darwin(v50, v51);
  v200 = &v178[-v52];
  __chkstk_darwin(v53, v54);
  v197 = &v178[-v56];
  v193 = *(v57 + 72);
  if (!v193)
  {
    __break(1u);
LABEL_78:
    __break(1u);
LABEL_79:
    __break(1u);
    return;
  }

  if (a2 - a1 == 0x8000000000000000 && v193 == -1)
  {
    goto LABEL_78;
  }

  v58 = &a3[-a2];
  if (&a3[-a2] == 0x8000000000000000 && v193 == -1)
  {
    goto LABEL_79;
  }

  v59 = (a2 - a1) / v193;
  v204 = a1;
  v203 = v201;
  v195 = v45;
  if (v59 >= v58 / v193)
  {
    v61 = a2;
    v62 = v58 / v193 * v193;
    v200 = v55;
    if (v201 < v61 || v61 + v62 <= v201)
    {
      v63 = v61;
      swift_arrayInitWithTakeFrontToBack();
    }

    else
    {
      v63 = v61;
      if (v201 != v61)
      {
        swift_arrayInitWithTakeBackToFront();
      }
    }

    if (v62 < 1)
    {
      v120 = (v201 + v62);
      goto LABEL_74;
    }

    v117 = -v193;
    v188 = (v33 + 48);
    v185 = (v7 + 8);
    v118 = v201 + v62;
    v119 = v195;
    v120 = (v201 + v62);
    v196 = a1;
    v197 = -v193;
    while (1)
    {
      v180 = v120;
      v121 = v63 + v117;
      v199 = v63 + v117;
      v187 = v63;
      while (1)
      {
        if (v63 <= a1)
        {
          v204 = v63;
          v202 = v180;
          goto LABEL_76;
        }

        v186 = v120;
        v193 = v118;
        v122 = v118 + v117;
        v190 = a3;
        v191 = (v118 + v117);
        v123 = v200;
        sub_1002D6320(v122, v200, type metadata accessor for RDIntentsRelevantShortcutsHandlerItem);
        v124 = v194;
        sub_1002D6320(v121, v194, type metadata accessor for RDIntentsRelevantShortcutsHandlerItem);
        v125 = v189;
        sub_100010364(v123 + *(v119 + 24), v189, &qword_1009410B8, &qword_1007A0A38);
        v126 = *v188;
        if ((*v188)(v125, 1, v198) != 1)
        {
          v127 = v181;
          sub_100031B58(v189, v181, &qword_10094B8E0, &unk_1007AABD0);
          v128 = v124 + *(v119 + 24);
          v129 = v182;
          sub_100010364(v128, v182, &qword_1009410B8, &qword_1007A0A38);
          if (v126(v129, 1, v198) != 1)
          {
            v172 = v129;
            v173 = v179;
            sub_100031B58(v172, v179, &qword_10094B8E0, &unk_1007AABD0);
            v157 = static Date.< infix(_:_:)();
            sub_1000050A4(v173, &qword_10094B8E0, &unk_1007AABD0);
            sub_1000050A4(v127, &qword_10094B8E0, &unk_1007AABD0);
            goto LABEL_61;
          }

          sub_1000050A4(v127, &qword_10094B8E0, &unk_1007AABD0);
          v125 = v129;
          v124 = v194;
          v123 = v200;
        }

        sub_1000050A4(v125, &qword_1009410B8, &qword_1007A0A38);
        v130 = [*v123 uuid];
        v131 = v183;
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        v132 = UUID.uuidString.getter();
        v134 = v133;
        v135 = *v185;
        v136 = v131;
        v137 = v192;
        (*v185)(v136, v192);
        v138 = [*v124 uuid];
        v139 = v184;
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        v140 = UUID.uuidString.getter();
        v142 = v141;
        v135(v139, v137);
        if (v132 == v140 && v134 == v142)
        {
          v142, v143, v144, v145, v146, v147, v148, v149;
          v134, v150, v151, v152, v153, v154, v155, v156;
          v157 = 0;
        }

        else
        {
          v157 = _stringCompareWithSmolCheck(_:_:expecting:)();
          v142, v158, v159, v160, v161, v162, v163, v164;
          v134, v165, v166, v167, v168, v169, v170, v171;
        }

        v119 = v195;
        a1 = v196;
LABEL_61:
        v174 = v190;
        v175 = &v190[v197];
        sub_1002D627C(v194, type metadata accessor for RDIntentsRelevantShortcutsHandlerItem);
        sub_1002D627C(v200, type metadata accessor for RDIntentsRelevantShortcutsHandlerItem);
        v176 = v191;
        if (v157)
        {
          break;
        }

        v120 = v191;
        a3 = v175;
        if (v174 < v193 || v175 >= v193)
        {
          swift_arrayInitWithTakeFrontToBack();
          v117 = v197;
        }

        else
        {
          v117 = v197;
          if (v174 != v193)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v118 = v176;
        v121 = v199;
        v63 = v187;
        if (v176 <= v201)
        {
          goto LABEL_74;
        }
      }

      a3 = v175;
      if (v174 < v187 || v175 >= v187)
      {
        v63 = v199;
        swift_arrayInitWithTakeFrontToBack();
        v120 = v186;
        v117 = v197;
      }

      else
      {
        v177 = v174 == v187;
        v63 = v199;
        v120 = v186;
        v117 = v197;
        if (!v177)
        {
          swift_arrayInitWithTakeBackToFront();
        }
      }

      v118 = v193;
      if (v193 <= v201)
      {
LABEL_74:
        v204 = v63;
        v202 = v120;
        goto LABEL_76;
      }
    }
  }

  v184 = v28;
  v191 = a3;
  v60 = v59 * v193;
  if (v201 < a1 || a1 + v60 <= v201)
  {
    swift_arrayInitWithTakeFrontToBack();
  }

  else if (v201 != a1)
  {
    swift_arrayInitWithTakeBackToFront();
  }

  v190 = (v201 + v60);
  v202 = (v201 + v60);
  if (v60 >= 1 && a2 < v191)
  {
    v194 = (v33 + 48);
    v189 = (v7 + 8);
    v186 = v32;
    do
    {
      v65 = v197;
      sub_1002D6320(a2, v197, type metadata accessor for RDIntentsRelevantShortcutsHandlerItem);
      sub_1002D6320(v201, v200, type metadata accessor for RDIntentsRelevantShortcutsHandlerItem);
      sub_100010364(v65 + *(v45 + 24), v32, &qword_1009410B8, &qword_1007A0A38);
      v66 = *v194;
      v67 = (*v194)(v32, 1, v198);
      v68 = v32;
      v199 = a2;
      if (v67 != 1)
      {
        v69 = v185;
        sub_100031B58(v32, v185, &qword_10094B8E0, &unk_1007AABD0);
        v70 = v184;
        sub_100010364(v200 + *(v45 + 24), v184, &qword_1009410B8, &qword_1007A0A38);
        if (v66(v70, 1, v198) != 1)
        {
          v112 = v70;
          v113 = v180;
          sub_100031B58(v112, v180, &qword_10094B8E0, &unk_1007AABD0);
          v97 = static Date.< infix(_:_:)();
          sub_1000050A4(v113, &qword_10094B8E0, &unk_1007AABD0);
          sub_1000050A4(v69, &qword_10094B8E0, &unk_1007AABD0);
          a2 = v199;
          v45 = v195;
          goto LABEL_29;
        }

        sub_1000050A4(v69, &qword_10094B8E0, &unk_1007AABD0);
        v68 = v70;
        v65 = v197;
      }

      v196 = a1;
      sub_1000050A4(v68, &qword_1009410B8, &qword_1007A0A38);
      v71 = [*v65 uuid];
      v72 = v187;
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v73 = UUID.uuidString.getter();
      v75 = v74;
      v76 = *v189;
      v77 = v192;
      (*v189)(v72, v192);
      v78 = [*v200 uuid];
      v79 = v188;
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v80 = UUID.uuidString.getter();
      v82 = v81;
      v76(v79, v77);
      if (v73 == v80 && v75 == v82)
      {
        v82, v83, v84, v85, v86, v87, v88, v89;
        v75, v90, v91, v92, v93, v94, v95, v96;
        sub_1002D627C(v200, type metadata accessor for RDIntentsRelevantShortcutsHandlerItem);
        sub_1002D627C(v197, type metadata accessor for RDIntentsRelevantShortcutsHandlerItem);
        a2 = v199;
        v45 = v195;
        a1 = v196;
        v32 = v186;
        goto LABEL_34;
      }

      v97 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v82, v98, v99, v100, v101, v102, v103, v104;
      v75, v105, v106, v107, v108, v109, v110, v111;
      a2 = v199;
      v45 = v195;
      a1 = v196;
      v32 = v186;
LABEL_29:
      sub_1002D627C(v200, type metadata accessor for RDIntentsRelevantShortcutsHandlerItem);
      sub_1002D627C(v197, type metadata accessor for RDIntentsRelevantShortcutsHandlerItem);
      if (v97)
      {
        v114 = v193;
        v115 = v191;
        if (a1 < a2 || a1 >= a2 + v193)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (a1 != a2)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        a2 += v114;
        goto LABEL_42;
      }

LABEL_34:
      v114 = v193;
      v116 = v201 + v193;
      v115 = v191;
      if (a1 < v201 || a1 >= v116)
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else if (a1 != v201)
      {
        swift_arrayInitWithTakeBackToFront();
      }

      v203 = v116;
      v201 = v116;
LABEL_42:
      a1 += v114;
      v204 = a1;
    }

    while (v201 < v190 && a2 < v115);
  }

LABEL_76:
  sub_100558A10(&v204, &v203, &v202);
}

uint64_t sub_1002D611C(uint64_t a1, uint64_t *a2, void (*a3)(uint64_t, uint64_t *), uint64_t a4, uint64_t a5)
{
  v6 = *a2;
  a3(a1, &v6);
  type metadata accessor for UnfairLock();

  Lock.sync<A>(_:)();
}

uint64_t sub_1002D61DC(uint64_t a1, uint64_t a2, __n128 a3)
{
  v5 = type metadata accessor for RDIntentsRelevantShortcutsHandlerItem(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1002D627C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1002D62DC(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for Date();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1002D6320(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_1002D6388(uint64_t a1)
{
  v3 = sub_1000F5104(&unk_10093F420, &unk_100797AE0);
  __chkstk_darwin(v3 - 8, v4);
  v48 = &v44 - v5;
  v6 = *(a1 + 16);
  if (v6)
  {
    v44 = v1;
    v54 = &_swiftEmptyArrayStorage;
    sub_100026EF4(0, v6, 0);
    v51 = v54;
    v7 = a1 + 56;
    v8 = _HashTable.startBucket.getter();
    v9 = 0;
    v45 = a1 + 64;
    v46 = v6;
    v47 = a1 + 56;
    while ((v8 & 0x8000000000000000) == 0 && v8 < 1 << *(a1 + 32))
    {
      v12 = v8 >> 6;
      if ((*(v7 + 8 * (v8 >> 6)) & (1 << v8)) == 0)
      {
        goto LABEL_21;
      }

      v13 = *(a1 + 36);
      v49 = v9;
      v50 = v13;
      v14 = (*(a1 + 48) + 16 * v8);
      v15 = v14[1];
      v52 = *v14;
      v53 = v15;

      v16 = v48;
      static Locale.current.getter();
      v17 = type metadata accessor for Locale();
      (*(*(v17 - 8) + 56))(v16, 0, 1, v17);
      sub_10013BCF4();
      v18 = StringProtocol.foldedStringForWriting(locale:)();
      v20 = v19;
      sub_1000050A4(v16, &unk_10093F420, &unk_100797AE0);
      v15, v21, v22, v23, v24, v25, v26, v27;
      v33 = v51;
      v54 = v51;
      v35 = *v51->clientIdentity;
      v34 = *&v51->clientIdentity[8];
      if (v35 >= v34 >> 1)
      {
        sub_100026EF4((v34 > 1), v35 + 1, 1);
        v33 = v54;
      }

      *v33->clientIdentity = v35 + 1;
      v36 = v33 + 16 * v35;
      *(v36 + 4) = v18;
      *(v36 + 5) = v20;
      v10 = 1 << *(a1 + 32);
      if (v8 >= v10)
      {
        goto LABEL_22;
      }

      v7 = v47;
      v37 = *(v47 + 8 * v12);
      if ((v37 & (1 << v8)) == 0)
      {
        goto LABEL_23;
      }

      v51 = v33;
      if (v50 != *(a1 + 36))
      {
        goto LABEL_24;
      }

      v38 = v37 & (-2 << (v8 & 0x3F));
      if (v38)
      {
        v10 = __clz(__rbit64(v38)) | v8 & 0x7FFFFFFFFFFFFFC0;
        v11 = v46;
      }

      else
      {
        v39 = v12 << 6;
        v40 = v12 + 1;
        v11 = v46;
        v41 = (v45 + 8 * v12);
        while (v40 < (v10 + 63) >> 6)
        {
          v43 = *v41++;
          v42 = v43;
          v39 += 64;
          ++v40;
          if (v43)
          {
            sub_100010E34(v8, v50, 0, v28, v29, v30, v31, v32);
            v10 = __clz(__rbit64(v42)) + v39;
            goto LABEL_4;
          }
        }

        sub_100010E34(v8, v50, 0, v28, v29, v30, v31, v32);
      }

LABEL_4:
      v9 = v49 + 1;
      v8 = v10;
      if (v49 + 1 == v11)
      {
        return;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
  }
}

uint64_t sub_1002D669C()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_1009410C8);
  v1 = sub_100006654(v0, qword_1009410C8);
  if (qword_1009364E0 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_1009751E8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void sub_1002D678C(uint64_t a1, SEL *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v10 = v8;
  if (*(a1 + 16))
  {
    sub_1000F5104(&unk_100945240, &qword_1007A0A70);
    sub_10000CB48(&qword_100941118, &unk_100945240, &qword_1007A0A70, &protocol conformance descriptor for Set<A>);
    sub_10013BCF4();
    Sequence<>.joined(separator:)();
    v13 = v12;
    a1, v12, v14, v15, v16, v17, v18, v19;
    v20 = String._bridgeToObjectiveC()();
    v13, v21, v22, v23, v24, v25, v26, v27;
    [v10 *a2];
  }

  else
  {
    a1, a2, a3, a4, a5, a6, a7, a8;
    v28 = *a2;

    [v8 v28];
  }
}

uint64_t sub_1002D68D0(uint64_t a1)
{
  v2 = v1;
  v3 = a1;
  v4 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  __chkstk_darwin(v4 - 8, v5);
  v7 = &v42 - v6;
  v8 = type metadata accessor for Date();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8, v10);
  v12 = &v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13, v14);
  v16 = &v42 - v15;
  sub_1002D6CCC(v3, v7);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_1000050A4(v7, &unk_100938850, qword_100795AE0);
    return 0;
  }

  (*(v9 + 32))(v16, v7, v8);
  [v2 lastAccessedSinceReferenceDate];
  Date.init(timeIntervalSinceReferenceDate:)();
  sub_1002D81D8();
  v17 = dispatch thunk of static Equatable.== infix(_:_:)();
  v18 = *(v9 + 8);
  v18(v12, v8);
  if (v17)
  {
    v18(v16, v8);
    return 0;
  }

  (*(v9 + 16))(v12, v16, v8);
  Date.timeIntervalSinceReferenceDate.getter();
  [v2 setLastAccessedSinceReferenceDate:Int32.init(timeIntervalSinceReferenceDate:)(v20)];
  v18(v12, v8);
  if (qword_100935E58 != -1)
  {
    swift_once();
  }

  v21 = type metadata accessor for Logger();
  sub_100006654(v21, qword_1009410C8);
  v22 = v2;
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v43 = v26;
    *v25 = 136315138;
    v27 = [v22 remObjectID];
    if (v27)
    {
      v28 = v27;
      v29 = [v27 description];
      v42 = v26;
      v30 = v29;

      v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v33 = v32;

      v26 = v42;
    }

    else
    {
      v33 = 0xE300000000000000;
      v31 = 7104878;
    }

    v34 = sub_10000668C(v31, v33, &v43);
    v33, v35, v36, v37, v38, v39, v40, v41;
    *(v25 + 4) = v34;
    _os_log_impl(&_mh_execute_header, v23, v24, "Updated lastAccessed in REMCDManualSortHint {objectID: %s}", v25, 0xCu);
    sub_10000607C(v26);
  }

  v18(v16, v8);
  return 1;
}

uint64_t sub_1002D6CCC@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for DateComponents();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4, v6);
  v8 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Calendar();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9, v11);
  v13 = &v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Date();
  v18 = __chkstk_darwin(v14, v15);
  v20 = &v46 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v47 = v17;
    v48 = v10;
    v49 = v16;
    v50 = v9;
    v51 = a2;
    v52 = v5;
    v53 = v4;
    Date.init()();
    static Calendar.current.getter();
    sub_1000F5104(&qword_100940900, &unk_1007A0220);
    if (a1 == 1)
    {
      v21 = type metadata accessor for Calendar.Component();
      v22 = *(v21 - 8);
      v23 = *(v22 + 72);
      v24 = (*(v22 + 80) + 32) & ~*(v22 + 80);
      v25 = swift_allocObject();
      *(v25 + 16) = xmmword_100791320;
      v26 = v25 + v24;
      v27 = *(v22 + 104);
      v27(v26, enum case for Calendar.Component.year(_:), v21);
      v27(v26 + v23, enum case for Calendar.Component.month(_:), v21);
      v27(v26 + 2 * v23, enum case for Calendar.Component.day(_:), v21);
      v28 = sub_100391E24(v25);
      swift_setDeallocating();
      swift_arrayDestroy();
      swift_deallocClassInstance();
      Calendar.dateComponents(_:from:)();
      v36 = v28;
    }

    else
    {
      v39 = type metadata accessor for Calendar.Component();
      v40 = *(v39 - 8);
      v41 = *(v40 + 72);
      v42 = (*(v40 + 80) + 32) & ~*(v40 + 80);
      v43 = swift_allocObject();
      *(v43 + 16) = xmmword_100791340;
      v44 = *(v40 + 104);
      v44(v43 + v42, enum case for Calendar.Component.year(_:), v39);
      v44(v43 + v42 + v41, enum case for Calendar.Component.month(_:), v39);
      v45 = sub_100391E24(v43);
      swift_setDeallocating();
      swift_arrayDestroy();
      swift_deallocClassInstance();
      Calendar.dateComponents(_:from:)();
      v36 = v45;
    }

    v36, v29, v30, v31, v32, v33, v34, v35;
    Calendar.date(from:)();
    (*(v52 + 8))(v8, v53);
    (*(v48 + 8))(v13, v50);
    return (*(v47 + 8))(v20, v49);
  }

  else
  {
    v37 = *(v17 + 56);

    return v37(a2, 1, 1, v18);
  }
}

void sub_1002D71DC(uint64_t a1, char a2, uint64_t a3, _TtC7remindd19RDXPCStorePerformer *a4)
{
  if (a2)
  {
    if (qword_100935E58 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_100006654(v7, qword_1009410C8);

    sub_100138D40(a1, 1);
    oslog = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();
    a4, v9, v10, v11, v12, v13, v14, v15;
    sub_100138D4C(a1, 1);
    if (os_log_type_enabled(oslog, v8))
    {
      v16 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      *v16 = 136315394;
      *(v16 + 4) = sub_10000668C(a3, a4, &v40);
      *(v16 + 12) = 2080;
      swift_getErrorValue();
      v17 = Error.localizedDescription.getter();
      v19 = v18;
      v20 = sub_10000668C(v17, v18, &v40);
      v19, v21, v22, v23, v24, v25, v26, v27;
      *(v16 + 14) = v20;
      _os_log_impl(&_mh_execute_header, oslog, v8, "Failed to update lastAccessed in REMCDManualSortHint {objectID: %s, error: %s}", v16, 0x16u);
      swift_arrayDestroy();

LABEL_11:

      return;
    }
  }

  else
  {
    if ((a1 & 1) == 0)
    {
      return;
    }

    if (qword_100935E58 != -1)
    {
      swift_once();
    }

    v28 = type metadata accessor for Logger();
    sub_100006654(v28, qword_1009410C8);

    oslog = Logger.logObject.getter();
    v29 = static os_log_type_t.default.getter();
    a4, v30, v31, v32, v33, v34, v35, v36;
    if (os_log_type_enabled(oslog, v29))
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v40 = v38;
      *v37 = 136315138;
      *(v37 + 4) = sub_10000668C(a3, a4, &v40);
      _os_log_impl(&_mh_execute_header, oslog, v29, "Updated lastAccessed in REMCDManualSortHint {objectID: %s}", v37, 0xCu);
      sub_10000607C(v38);

      goto LABEL_11;
    }
  }
}

uint64_t sub_1002D74D4(int a1, char a2, void (*a3)(void, void), uint64_t a4)
{
  v5 = v4;
  v46 = a1;
  v9 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  __chkstk_darwin(v9 - 8, v10);
  v12 = &v40 - v11;
  v13 = type metadata accessor for Date();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13, v16);
  v17 = &v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18, v19);
  v21 = &v40 - v20;
  sub_1002D6CCC(a2, v12);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_1000050A4(v12, &unk_100938850, qword_100795AE0);
    return (a3)(0, 0);
  }

  v47 = a4;
  v44 = *(v14 + 32);
  v45 = a3;
  v44(v21, v12, v13);
  [v5 lastAccessedSinceReferenceDate];
  Date.init(timeIntervalSinceReferenceDate:)();
  sub_1002D81D8();
  v22 = dispatch thunk of static Equatable.== infix(_:_:)();
  v23 = *(v14 + 8);
  v23(v17, v13);
  if (v22)
  {
    v23(v21, v13);
    a3 = v45;
    return (a3)(0, 0);
  }

  v43 = v23;
  v25 = [v5 storeControllerManagedObjectContext];
  if (v25)
  {
    v42 = v25;
    v26 = [v5 objectID];
    v40 = v26;
    v27 = [v5 remObjectID];
    v41 = v27;
    (*(v14 + 16))(v17, v21, v13);
    v28 = (*(v14 + 80) + 56) & ~*(v14 + 80);
    v29 = v28 + v15;
    v30 = swift_allocObject();
    *(v30 + 2) = v42;
    *(v30 + 3) = v26;
    v31 = v45;
    *(v30 + 4) = v27;
    *(v30 + 5) = v31;
    *(v30 + 6) = v47;
    v44(&v30[v28], v17, v13);
    v30[v29] = v46 & 1;
    aBlock[4] = sub_1002D8230;
    aBlock[5] = v30;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100019200;
    aBlock[3] = &unk_1008ED2C0;
    v32 = _Block_copy(aBlock);
    v33 = v42;
    v34 = v40;
    v35 = v41;

    [v33 performBlock:v32];
    _Block_release(v32);
  }

  else
  {
    v36 = objc_opt_self();
    type metadata accessor for REMCDManualSortHint();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v38 = String._bridgeToObjectiveC()();
    v39 = [v36 unexpectedNilPropertyWithClass:ObjCClassFromMetadata property:v38];

    v45(v39, 1);
  }

  return v43(v21, v13);
}

void sub_1002D7960(void *a1, uint64_t a2, uint64_t a3, void (*a4)(id, uint64_t), uint64_t a5, uint64_t a6, char a7)
{
  v32[1] = a5;
  v33 = a4;
  v12 = type metadata accessor for Date();
  v13 = *(v12 - 8);
  *&v15 = __chkstk_darwin(v12, v14).n128_u64[0];
  v17 = v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = 0;
  v18 = [a1 existingObjectWithID:a2 error:{&v34, v15}];
  v19 = v34;
  if (v18)
  {
    v20 = v18;
    type metadata accessor for REMCDManualSortHint();
    v21 = swift_dynamicCastClass();
    if (!v21)
    {
      v28 = v19;

      if (a3)
      {
        v29 = [objc_opt_self() noSuchObjectErrorWithObjectID:a3];
      }

      else
      {
        v29 = [objc_opt_self() unexpectedError];
      }

      v31 = v29;
      swift_errorRetain();
      v33(v31, 1);

      goto LABEL_14;
    }

    v22 = v21;
    (*(v13 + 16))(v17, a6, v12);
    v23 = v19;
    Date.timeIntervalSinceReferenceDate.getter();
    [v22 setLastAccessedSinceReferenceDate:Int32.init(timeIntervalSinceReferenceDate:)(v24)];
    (*(v13 + 8))(v17, v12);
    if ((a7 & 1) == 0)
    {
LABEL_6:
      v33(1, 0);

      return;
    }

    v34 = 0;
    if ([a1 save:&v34])
    {
      v25 = v34;
      goto LABEL_6;
    }

    v30 = v34;
    v27 = _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  else
  {
    v26 = v34;
    v27 = _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  swift_errorRetain();
  v33(v27, 1);

LABEL_14:
}

id sub_1002D7DCC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for REMCDManualSortHint();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1002D7E80(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for REMHashtagLabelSpecifier();
  v5 = *(v4 - 8);
  v7 = __chkstk_darwin(v4, v6);
  v9 = &v69 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v9, a1, v4, v7);
  v10 = (*(v5 + 88))(v9, v4);
  if (v10 == enum case for REMHashtagLabelSpecifier.labels(_:))
  {
    (*(v5 + 96))(v9, v4);
    v11 = *v9;
    *(v9 + 1), v12, v13, v14, v15, v16, v17, v18;
    sub_1002D6388(v11);
    v20 = v19;
    v11, v21, v22, v23, v24, v25, v26, v27;
    v70 = v20;

    sub_1004C7D34(&v70);
    v20, v28, v29, v30, v31, v32, v33, v34;
    v35 = sub_1000F5104(&qword_100941120, &qword_1007A0A78);
    v36 = *(v35 + 64);
    v37 = v70;
    __chkstk_darwin(v35, v38);
    *(&v69 - 2) = a2;
    v39 = sub_1003DED2C(sub_1002D82BC, (&v69 - 4), v37);

    v70 = v39;
    sub_1000F5104(&unk_10093B300, &unk_100797780);
    sub_10000CB48(&qword_10093D0F0, &unk_10093B300, &unk_100797780, &protocol conformance descriptor for [A]);
    v40 = BidirectionalCollection<>.joined(separator:)();
    v42 = v41;
    v39, v41, v43, v44, v45, v46, v47, v48;
    v70 = 9406690;
    v71 = 0xA300000000000000;
    v49._countAndFlagsBits = v40;
    v49._object = v42;
    String.append(_:)(v49);
    v42, v50, v51, v52, v53, v54, v55, v56;
    v57 = v71;

    v58._countAndFlagsBits = 9406690;
    v58._object = 0xA300000000000000;
    String.append(_:)(v58);
    v57, v59, v60, v61, v62, v63, v64, v65;
    v66 = v70;
    v67 = type metadata accessor for REMHashtagLabelSpecifier.Operation();
    (*(*(v67 - 8) + 8))(&v9[v36], v67);
    return v66;
  }

  if (v10 == enum case for REMHashtagLabelSpecifier.allLabels(_:))
  {
    return 0;
  }

  if (v10 == enum case for REMHashtagLabelSpecifier.noLabels(_:))
  {
    return 0x6174687361486F6ELL;
  }

  result = _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
  return result;
}

unint64_t sub_1002D81D8()
{
  result = qword_100938DB0;
  if (!qword_100938DB0)
  {
    type metadata accessor for Date();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100938DB0);
  }

  return result;
}

void sub_1002D8230()
{
  v1 = *(type metadata accessor for Date() - 8);
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = v0 + ((*(v1 + 80) + 56) & ~*(v1 + 80));
  v8 = *(v7 + *(v1 + 64));

  sub_1002D7960(v2, v3, v4, v5, v6, v7, v8);
}

uint64_t sub_1002D82BC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(v2 + 16);
  v5 = *a1;
  v6 = a1[1];
  v7 = v4[3];
  v8 = v4[4];
  sub_10000F61C(v4, v7);
  result = (*(v8 + 16))(v5, v6, v7, v8);
  *a2 = result;
  a2[1] = v10;
  return result;
}

id sub_1002D833C(void *a1, void *a2, unint64_t a3)
{
  v576 = a3;
  v578 = a2;
  v5 = type metadata accessor for RDUserNotificationCategory();
  v6 = *(v5 - 8);
  v581 = v5;
  v582 = v6;
  __chkstk_darwin(v5, v7);
  v580 = &v572 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000F5104(&qword_1009511D0, &qword_1007A0A90);
  __chkstk_darwin(v9 - 8, v10);
  v12 = &v572 - v11;
  v13 = type metadata accessor for REMNotificationIdentifier();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13, v15);
  v573 = &v572 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17, v18);
  v574 = &v572 - v19;
  __chkstk_darwin(v20, v21);
  v575 = &v572 - v22;
  __chkstk_darwin(v23, v24);
  v579 = &v572 - v25;
  __chkstk_darwin(v26, v27);
  v577 = &v572 - v28;
  __chkstk_darwin(v29, v30);
  v32 = &v572 - v31;
  __chkstk_darwin(v33, v34);
  v36 = &v572 - v35;
  v37 = type metadata accessor for RDUserNotificationType();
  v38 = *(v37 - 8);
  __chkstk_darwin(v37, v39);
  v41 = (&v572 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0));
  v583 = [objc_allocWithZone(UNMutableNotificationContent) init];
  (*(v38 + 16))(v41, v3, v37);
  v42 = (*(v38 + 88))(v41, v37);
  if (v42 == enum case for RDUserNotificationType.reminderAlarm(_:))
  {
    (*(v38 + 96))(v41, v37);
    (*(v14 + 32))(v36, v41, v13);
    v43 = v13;
    v44 = v36;
    if (a1)
    {
      v45 = a1;
      REMNotificationIdentifier.init(reminder:)();
      (*(v14 + 56))(v12, 0, 1, v13);
      v46 = v583;
      UNMutableNotificationContent.setNotificationIdentifier(_:)();
      sub_1000050A4(v12, &qword_1009511D0, &qword_1007A0A90);
      v47 = [v45 legacyNotificationIdentifier];
      if (v47)
      {
        v48 = v47;
        v49 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v51 = v50;

        sub_1002DA5BC(v49, v51);
        v51, v52, v53, v54, v55, v56, v57, v58;
      }

      [v46 setInterruptionLevel:2];
      v59 = [v45 titleDocument];
      if (v59)
      {
        v60 = v59;
        v61 = [v59 string];

        static String._unconditionallyBridgeFromObjectiveC(_:)();
        v63 = v62;
      }

      else
      {
        v63 = 0xE000000000000000;
      }

      v139 = String._bridgeToObjectiveC()();
      v63, v140, v141, v142, v143, v144, v145, v146;
      [v46 setTitle:v139];

      v148 = v581;
      v147 = v582;
      v149 = v580;
      (*(v582 + 13))(v580, enum case for RDUserNotificationCategory.reminderAlarm(_:), v581);
      RDUserNotificationCategory.rawValue.getter();
      v151 = v150;
      (*(v147 + 1))(v149, v148);
      v152 = String._bridgeToObjectiveC()();
      v151, v153, v154, v155, v156, v157, v158, v159;
      [v46 setThreadIdentifier:v152];

      sub_1002DEB24(v45);
      v161 = v160;
      v162 = String._bridgeToObjectiveC()();
      v161, v163, v164, v165, v166, v167, v168, v169;
      [v46 setCategoryIdentifier:v162];

      [v46 setShouldPreventNotificationDismissalAfterDefaultAction:1];
      v170 = [objc_opt_self() soundWithAlertType:11];
      [v46 setSound:v170];

      sub_1002DF450(v46, v45);
      goto LABEL_28;
    }

    if (qword_100935E60 != -1)
    {
      swift_once();
    }

    v101 = type metadata accessor for Logger();
    sub_100006654(v101, qword_100941128);
    v102 = *(v14 + 16);
    v102(v32, v36, v13);
    v103 = Logger.logObject.getter();
    v104 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v103, v104))
    {
      v105 = swift_slowAlloc();
      v582 = v36;
      v106 = v105;
      v107 = swift_slowAlloc();
      v585 = v107;
      *v106 = 136315138;
      v102(v577, v32, v43);
      v108 = String.init<A>(describing:)();
      v110 = v109;
      v111 = *(v14 + 8);
      v111(v32, v43);
      v112 = sub_10000668C(v108, v110, &v585);
      v110, v113, v114, v115, v116, v117, v118, v119;
      *(v106 + 4) = v112;
      _os_log_impl(&_mh_execute_header, v103, v104, "Trying to create a notificationContent without a reminder. Returning empty content. {notificationIdentifier: %s}", v106, 0xCu);
      sub_10000607C(v107);

      v111(v582, v43);
      return v583;
    }

    v190 = *(v14 + 8);
    v190(v32, v13);
    goto LABEL_43;
  }

  v64 = a1;
  if (v42 == enum case for RDUserNotificationType.todayNotificationForSingleReminder(_:))
  {
    (*(v38 + 96))(v41, v37);
    v44 = v579;
    v65 = v41;
    v43 = v13;
    (*(v14 + 32))(v579, v65, v13);
    if (a1)
    {
      v66 = a1;
      REMNotificationIdentifier.init(reminder:)();
      (*(v14 + 56))(v12, 0, 1, v13);
      v46 = v583;
      UNMutableNotificationContent.setNotificationIdentifier(_:)();
      sub_1000050A4(v12, &qword_1009511D0, &qword_1007A0A90);
      v68 = v581;
      v67 = v582;
      v69 = v580;
      (*(v582 + 13))(v580, enum case for RDUserNotificationCategory.todayNotificationForSingleReminder(_:), v581);
      RDUserNotificationCategory.rawValue.getter();
      v71 = v70;
      (*(v67 + 1))(v69, v68);
      v72 = String._bridgeToObjectiveC()();
      v71, v73, v74, v75, v76, v77, v78, v79;
      [v46 setCategoryIdentifier:v72];

      [v46 setShouldPreventNotificationDismissalAfterDefaultAction:1];
      v80 = [objc_opt_self() soundWithAlertType:11];
      [v46 setSound:v80];

      sub_1002DF450(v46, v66);
LABEL_28:
      (*(v14 + 8))(v44, v43);
      return v46;
    }

    if (qword_100935E60 != -1)
    {
      swift_once();
    }

    v171 = type metadata accessor for Logger();
    sub_100006654(v171, qword_100941128);
    v172 = *(v14 + 16);
    v173 = v575;
    v36 = v579;
    v172(v575, v579, v13);
    v174 = Logger.logObject.getter();
    v175 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v174, v175))
    {
      v176 = swift_slowAlloc();
      v177 = swift_slowAlloc();
      v585 = v177;
      *v176 = 136315138;
      v172(v577, v173, v43);
      v178 = String.init<A>(describing:)();
      v180 = v179;
      v181 = *(v14 + 8);
      v181(v173, v43);
      v182 = sub_10000668C(v178, v180, &v585);
      v180, v183, v184, v185, v186, v187, v188, v189;
      *(v176 + 4) = v182;
      _os_log_impl(&_mh_execute_header, v174, v175, "Trying to create a todayNotificationForSingleReminder content without a reminder. Returning empty content. {notificationIdentifier: %s}", v176, 0xCu);
      sub_10000607C(v177);

      v181(v579, v43);
      return v583;
    }

    v190 = *(v14 + 8);
    v190(v173, v13);
LABEL_43:
    v190(v36, v43);
    return v583;
  }

  if (v42 == enum case for RDUserNotificationType.caldavSharedList(_:))
  {
    (*(v38 + 96))(v41, v37);
    v81 = *v41;
    v82 = v578;
    if (v578)
    {
      sub_1000060C8(0, &qword_100945FC0, NSObject_ptr);
      v83 = v82;
      v84 = [v83 objectID];
      v85 = static NSObject.== infix(_:_:)();

      if (v85)
      {
        v86 = v81;
        v46 = v583;
        UNMutableNotificationContent.setListID(_:)();

        v88 = v581;
        v87 = v582;
        v89 = v580;
        (*(v582 + 13))(v580, enum case for RDUserNotificationCategory.caldavSharedList(_:), v581);
        RDUserNotificationCategory.rawValue.getter();
        v91 = v90;
        (*(v87 + 1))(v89, v88);
        v92 = String._bridgeToObjectiveC()();
        v91, v93, v94, v95, v96, v97, v98, v99;
        [v46 setCategoryIdentifier:v92];

        v100 = [objc_opt_self() soundWithAlertType:11];
        [v46 setSound:v100];

LABEL_106:
        return v46;
      }
    }

    if (qword_100935E60 != -1)
    {
      swift_once();
    }

    v209 = type metadata accessor for Logger();
    sub_100006654(v209, qword_100941128);
    v210 = v82;
    v211 = v81;
    v212 = Logger.logObject.getter();
    v213 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v212, v213))
    {
      v214 = swift_slowAlloc();
      v215 = swift_slowAlloc();
      v216 = swift_slowAlloc();
      v585 = v216;
      *v214 = 136315394;
      if (v82)
      {
        v217 = [v210 objectID];
      }

      else
      {
        v217 = 0;
      }

      v584 = v217;
      sub_1000F5104(&unk_10093AF40, &unk_100795790);
      v289 = Optional.descriptionOrNil.getter();
      v291 = v290;

      v292 = sub_10000668C(v289, v291, &v585);
      v291, v293, v294, v295, v296, v297, v298, v299;
      *(v214 + 4) = v292;
      *(v214 + 12) = 2112;
      *(v214 + 14) = v211;
      *v215 = v211;
      v300 = v211;
      _os_log_impl(&_mh_execute_header, v212, v213, "(caldavSharedList) Trying to create a notificationContent with a list whose objectID doesn't match with the listID in the enum. Returning empty content. {list.objectID: %s, enum.listID: %@}", v214, 0x16u);
      sub_1000050A4(v215, &unk_100938E70, &unk_100797230);

      sub_10000607C(v216);
    }

    else
    {
    }

    return v583;
  }

  if (v42 == enum case for RDUserNotificationType.assignmentNotification(_:))
  {
    (*(v38 + 96))(v41, v37);
    v120 = *v41;
    if (v576)
    {
      v121 = sub_1003AF444(v576, *v41);
      v46 = v583;
      if (v121)
      {
        if (v120 >> 62)
        {
          v519 = _CocoaArrayWrapper.endIndex.getter();
          v122 = v578;
          if (v519)
          {
LABEL_23:
            if (v122)
            {
              v83 = v122;

              UNMutableNotificationContent.setReminderIDs(_:)(v586);
              v120, v123, v124, v125, v126, v127, v128, v129;
              v130 = [v83 objectID];
              UNMutableNotificationContent.setListID(_:)();

              if (v120 >> 62)
              {
                v138 = _CocoaArrayWrapper.endIndex.getter();
              }

              else
              {
                v138 = *((v120 & 0xFFFFFFFFFFFFFF8) + 0x10);
              }

              v120, v131, v132, v133, v134, v135, v136, v137;
              v444 = &enum case for RDUserNotificationCategory.singleAssignmentNotification(_:);
              if (v138 != 1)
              {
                v444 = &enum case for RDUserNotificationCategory.multipleAssignmentsNotification(_:);
              }

LABEL_105:
              v507 = v581;
              v506 = v582;
              v508 = v580;
              (*(v582 + 13))(v580, *v444, v581);
              RDUserNotificationCategory.rawValue.getter();
              v510 = v509;
              (*(v506 + 1))(v508, v507);
              v511 = String._bridgeToObjectiveC()();
              v510, v512, v513, v514, v515, v516, v517, v518;
              [v46 setCategoryIdentifier:v511];

              v100 = [objc_opt_self() soundWithAlertType:11];
              [v46 setSound:v100];
              goto LABEL_106;
            }

            if (qword_100935E60 != -1)
            {
              swift_once();
            }

            v397 = type metadata accessor for Logger();
            sub_100006654(v397, qword_100941128);

            v228 = Logger.logObject.getter();
            v229 = static os_log_type_t.fault.getter();
            v120, v398, v399, v400, v401, v402, v403, v404;
            if (os_log_type_enabled(v228, v229))
            {
              v244 = swift_slowAlloc();
              v245 = swift_slowAlloc();
              v585 = v245;
              *v244 = 136315138;
              sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
              v405 = Array.description.getter();
              v407 = v406;
              v120, v406, v408, v409, v410, v411, v412, v413;
              v414 = sub_10000668C(v405, v407, &v585);
              v407, v415, v416, v417, v418, v419, v420, v421;
              *(v244 + 4) = v414;
              v263 = "Trying to create an assignment notification content without a list. Returning empty content. {reminderIDs: %s}";
              goto LABEL_117;
            }

LABEL_118:
            v120, v237, v238, v239, v240, v241, v242, v243;
            goto LABEL_119;
          }
        }

        else
        {
          v122 = v578;
          if (*((v120 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_23;
          }
        }

        if (qword_100935E60 != -1)
        {
          swift_once();
        }

        v520 = type metadata accessor for Logger();
        sub_100006654(v520, qword_100941128);

        v228 = Logger.logObject.getter();
        v229 = static os_log_type_t.fault.getter();
        v120, v521, v522, v523, v524, v525, v526, v527;
        if (os_log_type_enabled(v228, v229))
        {
          v244 = swift_slowAlloc();
          v245 = swift_slowAlloc();
          v585 = v245;
          *v244 = 136315138;
          sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
          v528 = Array.description.getter();
          v530 = v529;
          v120, v529, v531, v532, v533, v534, v535, v536;
          v537 = sub_10000668C(v528, v530, &v585);
          v530, v538, v539, v540, v541, v542, v543, v544;
          *(v244 + 4) = v537;
          v263 = "Trying to create an assignment notification content with 0 reminderIDs. Returning empty content. {reminderIDs: %s}";
          goto LABEL_117;
        }

        goto LABEL_118;
      }

      if (qword_100935E60 != -1)
      {
        swift_once();
      }

      v264 = type metadata accessor for Logger();
      sub_100006654(v264, qword_100941128);

      v228 = Logger.logObject.getter();
      v229 = static os_log_type_t.fault.getter();
      v120, v265, v266, v267, v268, v269, v270, v271;
      if (!os_log_type_enabled(v228, v229))
      {
        goto LABEL_118;
      }

      v244 = swift_slowAlloc();
      v245 = swift_slowAlloc();
      v585 = v245;
      *v244 = 136315138;
      sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
      v272 = Array.description.getter();
      v274 = v273;
      v120, v273, v275, v276, v277, v278, v279, v280;
      v281 = sub_10000668C(v272, v274, &v585);
      v274, v282, v283, v284, v285, v286, v287, v288;
      *(v244 + 4) = v281;
      v263 = "Trying to create an assignment notification content with inconsistent reminderIDs in parameters. Returning empty content. {reminderIDs: %s}";
    }

    else
    {
      v46 = v583;
      if (qword_100935E60 != -1)
      {
        swift_once();
      }

      v227 = type metadata accessor for Logger();
      sub_100006654(v227, qword_100941128);

      v228 = Logger.logObject.getter();
      v229 = static os_log_type_t.fault.getter();
      v120, v230, v231, v232, v233, v234, v235, v236;
      if (!os_log_type_enabled(v228, v229))
      {
        goto LABEL_118;
      }

      v244 = swift_slowAlloc();
      v245 = swift_slowAlloc();
      v585 = v245;
      *v244 = 136315138;
      sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
      v246 = Array.description.getter();
      v248 = v247;
      v120, v247, v249, v250, v251, v252, v253, v254;
      v255 = sub_10000668C(v246, v248, &v585);
      v248, v256, v257, v258, v259, v260, v261, v262;
      *(v244 + 4) = v255;
      v263 = "Trying to create an assignment notification content without reminderIDs. Returning empty content. {reminderIDs: %s}";
    }

LABEL_117:
    _os_log_impl(&_mh_execute_header, v228, v229, v263, v244, 0xCu);
    sub_10000607C(v245);

    goto LABEL_119;
  }

  if (v42 == enum case for RDUserNotificationType.sharedListAddedReminderNotification(_:))
  {
    (*(v38 + 96))(v41, v37);
    v120 = *v41;
    if (!v576)
    {
      v46 = v583;
      if (qword_100935E60 != -1)
      {
        swift_once();
      }

      v314 = type metadata accessor for Logger();
      sub_100006654(v314, qword_100941128);

      v228 = Logger.logObject.getter();
      v229 = static os_log_type_t.fault.getter();
      v120, v315, v316, v317, v318, v319, v320, v321;
      if (!os_log_type_enabled(v228, v229))
      {
        goto LABEL_118;
      }

      v244 = swift_slowAlloc();
      v245 = swift_slowAlloc();
      v585 = v245;
      *v244 = 136315138;
      sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
      v322 = Array.description.getter();
      v324 = v323;
      v120, v323, v325, v326, v327, v328, v329, v330;
      v331 = sub_10000668C(v322, v324, &v585);
      v324, v332, v333, v334, v335, v336, v337, v338;
      *(v244 + 4) = v331;
      v263 = "Trying to create a shared list update notification without reminderIDs. Returning empty content. {reminderIDs: %s}";
      goto LABEL_117;
    }

    v191 = sub_1003AF444(v576, *v41);
    v46 = v583;
    if ((v191 & 1) == 0)
    {
      if (qword_100935E60 != -1)
      {
        swift_once();
      }

      v339 = type metadata accessor for Logger();
      sub_100006654(v339, qword_100941128);

      v228 = Logger.logObject.getter();
      v229 = static os_log_type_t.fault.getter();
      v120, v340, v341, v342, v343, v344, v345, v346;
      if (!os_log_type_enabled(v228, v229))
      {
        goto LABEL_118;
      }

      v244 = swift_slowAlloc();
      v245 = swift_slowAlloc();
      v585 = v245;
      *v244 = 136315138;
      sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
      v347 = Array.description.getter();
      v349 = v348;
      v120, v348, v350, v351, v352, v353, v354, v355;
      v356 = sub_10000668C(v347, v349, &v585);
      v349, v357, v358, v359, v360, v361, v362, v363;
      *(v244 + 4) = v356;
      v263 = "Trying to create a shared list update notification with inconsistent reminderIDs in parameters. Returning empty content. {reminderIDs: %s}";
      goto LABEL_117;
    }

    if (v120 >> 62)
    {
      v545 = _CocoaArrayWrapper.endIndex.getter();
      v192 = v578;
      if (v545)
      {
LABEL_39:
        if (v192)
        {
          v83 = v192;

          UNMutableNotificationContent.setReminderIDs(_:)(v587);
          v120, v193, v194, v195, v196, v197, v198, v199;
          v200 = [v83 objectID];
          UNMutableNotificationContent.setListID(_:)();

          if (v120 >> 62)
          {
            v208 = _CocoaArrayWrapper.endIndex.getter();
          }

          else
          {
            v208 = *((v120 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          v120, v201, v202, v203, v204, v205, v206, v207;
          v444 = &enum case for RDUserNotificationCategory.sharedListSingleReminderAddedNotification(_:);
          if (v208 != 1)
          {
            v444 = &enum case for RDUserNotificationCategory.sharedListMultipleRemindersAddedNotification(_:);
          }

          goto LABEL_105;
        }

        if (qword_100935E60 != -1)
        {
          swift_once();
        }

        v481 = type metadata accessor for Logger();
        sub_100006654(v481, qword_100941128);

        v228 = Logger.logObject.getter();
        v229 = static os_log_type_t.fault.getter();
        v120, v482, v483, v484, v485, v486, v487, v488;
        if (os_log_type_enabled(v228, v229))
        {
          v244 = swift_slowAlloc();
          v245 = swift_slowAlloc();
          v585 = v245;
          *v244 = 136315138;
          sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
          v489 = Array.description.getter();
          v491 = v490;
          v120, v490, v492, v493, v494, v495, v496, v497;
          v498 = sub_10000668C(v489, v491, &v585);
          v491, v499, v500, v501, v502, v503, v504, v505;
          *(v244 + 4) = v498;
          v263 = "Trying to create a shared list update notification content without a list. Returning empty content. {reminderIDs: %s}";
          goto LABEL_117;
        }

        goto LABEL_118;
      }
    }

    else
    {
      v192 = v578;
      if (*((v120 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_39;
      }
    }

    if (qword_100935E60 != -1)
    {
      swift_once();
    }

    v546 = type metadata accessor for Logger();
    sub_100006654(v546, qword_100941128);

    v228 = Logger.logObject.getter();
    v229 = static os_log_type_t.fault.getter();
    v120, v547, v548, v549, v550, v551, v552, v553;
    if (os_log_type_enabled(v228, v229))
    {
      v244 = swift_slowAlloc();
      v245 = swift_slowAlloc();
      v585 = v245;
      *v244 = 136315138;
      sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
      v554 = Array.description.getter();
      v556 = v555;
      v120, v555, v557, v558, v559, v560, v561, v562;
      v563 = sub_10000668C(v554, v556, &v585);
      v556, v564, v565, v566, v567, v568, v569, v570;
      *(v244 + 4) = v563;
      v263 = "Trying to create a shared list update notification with 0 reminderIDs. Returning empty content. {reminderIDs: %s}";
      goto LABEL_117;
    }

    goto LABEL_118;
  }

  if (v42 == enum case for RDUserNotificationType.dueDateDeltaAlarm(_:))
  {
    (*(v38 + 96))(v41, v37);
    v218 = v574;
    v219 = v13;
    (*(v14 + 32))(v574, v41, v13);
    if (v64)
    {
      v220 = v64;
      REMNotificationIdentifier.init(reminder:)();
      v221 = *(v14 + 56);
      v579 = v219;
      v221(v12, 0, 1, v219);
      v46 = v583;
      UNMutableNotificationContent.setNotificationIdentifier(_:)();
      sub_1000050A4(v12, &qword_1009511D0, &qword_1007A0A90);
      [v46 setInterruptionLevel:2];
      v578 = v220;
      v222 = [v220 titleDocument];
      if (v222)
      {
        v223 = v222;
        v224 = [v222 string];

        static String._unconditionallyBridgeFromObjectiveC(_:)();
        v226 = v225;
      }

      else
      {
        v226 = 0xE000000000000000;
      }

      v445 = String._bridgeToObjectiveC()();
      v226, v446, v447, v448, v449, v450, v451, v452;
      [v46 setTitle:v445];

      v453 = v581;
      v454 = v582;
      v455 = *(v582 + 13);
      v456 = v580;
      v455(v580, enum case for RDUserNotificationCategory.reminderAlarm(_:), v581);
      RDUserNotificationCategory.rawValue.getter();
      v458 = v457;
      v459 = *(v454 + 1);
      v459(v456, v453);
      v460 = String._bridgeToObjectiveC()();
      v458, v461, v462, v463, v464, v465, v466, v467;
      [v46 setThreadIdentifier:v460];

      v455(v456, enum case for RDUserNotificationCategory.dueDateDeltaAlarm(_:), v453);
      RDUserNotificationCategory.rawValue.getter();
      v469 = v468;
      v459(v456, v453);
      v470 = String._bridgeToObjectiveC()();
      v469, v471, v472, v473, v474, v475, v476, v477;
      [v46 setCategoryIdentifier:v470];

      [v46 setShouldPreventNotificationDismissalAfterDefaultAction:1];
      v478 = [objc_opt_self() soundWithAlertType:11];
      [v46 setSound:v478];

      v479 = v578;
      sub_1002DF450(v46, v578);

      (*(v14 + 8))(v574, v579);
    }

    else
    {
      if (qword_100935E60 != -1)
      {
        swift_once();
      }

      v376 = type metadata accessor for Logger();
      sub_100006654(v376, qword_100941128);
      v377 = v14;
      v378 = *(v14 + 16);
      v379 = v573;
      v380 = v13;
      v378(v573, v218, v13);
      v381 = Logger.logObject.getter();
      v382 = static os_log_type_t.fault.getter();
      if (os_log_type_enabled(v381, v382))
      {
        v383 = swift_slowAlloc();
        v384 = swift_slowAlloc();
        v585 = v384;
        *v383 = 136315138;
        v378(v577, v379, v13);
        v385 = String.init<A>(describing:)();
        v387 = v386;
        v388 = *(v377 + 8);
        v388(v379, v13);
        v389 = sub_10000668C(v385, v387, &v585);
        v387, v390, v391, v392, v393, v394, v395, v396;
        *(v383 + 4) = v389;
        _os_log_impl(&_mh_execute_header, v381, v382, "Trying to create a notificationContent without a reminder. Returning empty content. {notificationIdentifier: %s}", v383, 0xCu);
        sub_10000607C(v384);

        v388(v574, v380);
      }

      else
      {

        v480 = *(v377 + 8);
        v480(v379, v13);
        v480(v218, v13);
      }

      return v583;
    }

    return v46;
  }

  if (v42 == enum case for RDUserNotificationType.todayNotification(_:))
  {
    v302 = v581;
    v301 = v582;
    v303 = v580;
    (*(v582 + 13))(v580, enum case for RDUserNotificationCategory.todayNotification(_:), v581);
    RDUserNotificationCategory.rawValue.getter();
    v305 = v304;
    (*(v301 + 1))(v303, v302);
    v306 = String._bridgeToObjectiveC()();
    v305, v307, v308, v309, v310, v311, v312, v313;
    v46 = v583;
    [v583 setCategoryIdentifier:v306];

    v228 = [objc_opt_self() soundWithAlertType:11];
    [v46 setSound:v228];
LABEL_119:

    return v46;
  }

  if (v42 == enum case for RDUserNotificationType.todayNotificationBadge(_:))
  {
    v365 = v581;
    v364 = v582;
    v366 = v580;
    (*(v582 + 13))(v580, enum case for RDUserNotificationCategory.todayNotificationBadge(_:), v581);
    RDUserNotificationCategory.rawValue.getter();
    v368 = v367;
    (*(v364 + 1))(v366, v365);
    v228 = String._bridgeToObjectiveC()();
    v368, v369, v370, v371, v372, v373, v374, v375;
    v46 = v583;
    [v583 setCategoryIdentifier:v228];
    goto LABEL_119;
  }

  if (v42 == enum case for RDUserNotificationType.beforeFirstUnlock(_:))
  {
    v422 = _REMGetLocalizedString();
    if (!v422)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v424 = v423;
      v422 = String._bridgeToObjectiveC()();
      v424, v425, v426, v427, v428, v429, v430, v431;
    }

    v46 = v583;
    [v583 setBody:v422];

    v433 = v581;
    v432 = v582;
    v434 = v580;
    (*(v582 + 13))(v580, enum case for RDUserNotificationCategory.beforeFirstUnlock(_:), v581);
    RDUserNotificationCategory.rawValue.getter();
    v436 = v435;
    (*(v432 + 1))(v434, v433);
    v228 = String._bridgeToObjectiveC()();
    v436, v437, v438, v439, v440, v441, v442, v443;
    [v46 setCategoryIdentifier:v228];
    goto LABEL_119;
  }

  result = _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
  return result;
}

uint64_t sub_1002DA4F4()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_100941128);
  v1 = sub_100006654(v0, qword_100941128);
  if (qword_100936448 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_100975020);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void sub_1002DA5BC(uint64_t a1, _TtC7remindd19RDXPCStorePerformer *a2)
{
  v3 = v2;
  if (qword_100935E60 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_100006654(v6, qword_100941128);

  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.debug.getter();
  a2, v9, v10, v11, v12, v13, v14, v15;
  if (os_log_type_enabled(v7, v8))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v36[0] = v17;
    *v16 = 136315138;
    *(v16 + 4) = sub_10000668C(a1, a2, v36);
    _os_log_impl(&_mh_execute_header, v7, v8, "Setting BLTBulletinContextKeyWatchLegacyMapKey to %s", v16, 0xCu);
    sub_10000607C(v17);
  }

  sub_1000F5104(&qword_100941160, &qword_1007A0A98);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100791300;
  *(inited + 32) = [objc_allocWithZone(NSNumber) initWithUnsignedInt:393216];
  *(inited + 40) = a1;
  *(inited + 48) = a2;

  v19 = sub_10038E980(inited);
  swift_setDeallocating();
  sub_1000050A4(inited + 32, &qword_100941168, &qword_1007A0AA0);
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(&v34 + 1) = v20;
  AnyHashable.init<A>(_:)();
  v35 = sub_1000F5104(&qword_100941170, &qword_1007A0AA8);
  *&v34 = v19;
  v21 = [v3 userInfo];
  v22 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v33 = v22;
  if (v35)
  {
    sub_100005EE0(&v34, v32);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_1002C7E48(v32, v36, isUniquelyReferenced_nonNull_native);
    sub_10001B2CC(v36);
  }

  else
  {
    sub_1000050A4(&v34, &qword_100939ED0, &qword_100791B10);
    sub_1003690E0(v36, v32);
    sub_1000050A4(v32, &qword_100939ED0, &qword_100791B10);
    sub_10001B2CC(v36);
    v22 = v33;
  }

  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  v22, v25, v26, v27, v28, v29, v30, v31;
  [v3 setUserInfo:isa];
}

void sub_1002DA8FC(void *a1, uint64_t a2, void (*a3)(char *, id))
{
  v349 = a3;
  v351 = a1;
  v4 = type metadata accessor for DateComponents();
  v344 = *(v4 - 8);
  v345 = v4;
  __chkstk_darwin(v4, v5);
  v342 = &v333 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7, v8);
  v343 = &v333 - v9;
  v10 = sub_1000F5104(&qword_10093F970, &unk_1007A7670);
  __chkstk_darwin(v10 - 8, v11);
  v348 = (&v333 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v13, v14);
  v341 = &v333 - v15;
  __chkstk_darwin(v16, v17);
  v19 = &v333 - v18;
  __chkstk_darwin(v20, v21);
  v23 = (&v333 - v22);
  v24 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  __chkstk_darwin(v24 - 8, v25);
  v27 = &v333 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28, v29);
  v346 = &v333 - v30;
  __chkstk_darwin(v31, v32);
  v347 = &v333 - v33;
  __chkstk_darwin(v34, v35);
  v37 = &v333 - v36;
  __chkstk_darwin(v38, v39);
  v41 = &v333 - v40;
  __chkstk_darwin(v42, v43);
  v45 = &v333 - v44;
  v350 = type metadata accessor for Date();
  __chkstk_darwin(v350, v46);
  __chkstk_darwin(v47, v48);
  __chkstk_darwin(v49, v50);
  v52 = &v333 - v51;
  __chkstk_darwin(v53, v54);
  __chkstk_darwin(v56, &v333 - v55);
  v58 = &v333 - v57;
  __chkstk_darwin(v59, v60);
  __chkstk_darwin(v61, v62);
  *&v71 = __chkstk_darwin(v63, v64).n128_u64[0];
  v73 = &v333 - v72;
  v75 = *(a2 + 8);
  v74 = *(a2 + 16);
  v76 = *(a2 + 24);
  v77 = *(a2 + 32);
  if (v77 <= 1)
  {
    v348 = v23;
    if (v77)
    {
      v154 = v74;
      v155 = v76;
      v156 = v75;
      v350 = [v75 trigger];
      objc_opt_self();
      v157 = swift_dynamicCastObjCClass();
      if (v157)
      {
        v158 = v157;
        v159 = [v157 structuredLocation];
        v160 = [v159 displayName];

        if (!v160)
        {
          sub_1001A39AC(v156, v154, v155, 1u);
LABEL_45:
          v196 = v350;
LABEL_59:

          return;
        }

        v161 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v163 = v162;

        v164 = [v158 proximity];
        if (v164)
        {
          v172 = v351;
          if (v164 == 1 || v164 == 2)
          {
            v235 = _REMGetLocalizedString();
            static String._unconditionallyBridgeFromObjectiveC(_:)();
            v237 = v236;

            sub_1000F5104(&qword_100939EB0, &qword_1007989A0);
            v238 = swift_allocObject();
            *(v238 + 16) = xmmword_100791300;
            *(v238 + 56) = &type metadata for String;
            *(v238 + 64) = sub_100006600();
            *(v238 + 32) = v161;
            *(v238 + 40) = v163;
            String.init(format:_:)();
            v240 = v239;
            v237, v239, v241, v242, v243, v244, v245, v246;
          }

          else
          {
            v163, v165, v166, v167, v168, v169, v170, v171;
            v240 = 0xE000000000000000;
          }
        }

        else
        {
          v163, v165, v166, v167, v168, v169, v170, v171;
          v240 = 0xE000000000000000;
          v172 = v351;
        }

        v351 = String._bridgeToObjectiveC()();
        v240, v247, v248, v249, v250, v251, v252, v253;
        [v172 setBody:v351];

        v207 = v156;
        v208 = v154;
        v209 = v155;
        v210 = 1;
LABEL_58:
        sub_1001A39AC(v207, v208, v209, v210);
        v196 = v351;
        goto LABEL_59;
      }

      v173 = v156;
      v174 = v154;
      v175 = v155;
      v176 = 1;
      goto LABEL_36;
    }

    v347 = v67;
    v100 = v69;
    v340 = v68;
    v101 = *a2;
    v102 = [*a2 displayDate];
    if (v102)
    {
      v103 = v102;
      v104 = [objc_allocWithZone(NSDateFormatter) init];
      [v104 setDoesRelativeDateFormatting:1];
      [v104 setDateStyle:1];
      [v104 setTimeStyle:1];
      v105 = [v101 isOverdue];
      v106 = v350;
      if (v105)
      {
        v107 = [v103 date];
        static Date._unconditionallyBridgeFromObjectiveC(_:)();

        v108 = v340;
        (*(v340 + 56))(v41, 0, 1, v106);
        sub_1004F153C(v101, v349, v41, v45);
        sub_1000050A4(v41, &unk_100938850, qword_100795AE0);
        if ((*(v108 + 48))(v45, 1, v106) != 1)
        {
          v224 = v45;
          v225 = v106;
          (*(v108 + 32))(v73, v224, v106);
          isa = Date._bridgeToObjectiveC()().super.isa;
          v227 = [v104 stringFromDate:isa];

          v228 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v230 = v229;

          v352 = v228;
          v353 = v230;
          v231 = [v103 timeZone];
          if (v231)
          {
            v232 = v348;
            v233 = v231;
            static TimeZone._unconditionallyBridgeFromObjectiveC(_:)();

            v234 = 0;
            v121 = v351;
          }

          else
          {
            v234 = 1;
            v121 = v351;
            v232 = v348;
          }

          v291 = type metadata accessor for TimeZone();
          (*(*(v291 - 8) + 56))(v232, v234, 1, v291);
          v292 = sub_1002DFB64(v73, v232);
          v294 = v293;
          sub_1000050A4(v232, &qword_10093F970, &unk_1007A7670);
          v295._countAndFlagsBits = v292;
          v295._object = v294;
          String.append(_:)(v295);

          v294, v296, v297, v298, v299, v300, v301, v302;
          (*(v340 + 8))(v73, v225);
          goto LABEL_72;
        }

        sub_1000050A4(v45, &unk_100938850, qword_100795AE0);
      }

      v109 = [v103 date];
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      v110 = Date._bridgeToObjectiveC()().super.isa;
      v111 = *(v340 + 8);
      v340 += 8;
      v111(v100, v106);
      v112 = [v104 stringFromDate:v110];

      v113 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v115 = v114;

      v352 = v113;
      v353 = v115;
      v116 = [v103 date];
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      v117 = [v103 timeZone];
      if (v117)
      {
        v118 = v19;
        v119 = v117;
        static TimeZone._unconditionallyBridgeFromObjectiveC(_:)();

        v120 = 0;
        v121 = v351;
      }

      else
      {
        v120 = 1;
        v121 = v351;
        v118 = v19;
      }

      v211 = type metadata accessor for TimeZone();
      (*(*(v211 - 8) + 56))(v118, v120, 1, v211);
      v212 = v347;
      v213 = sub_1002DFB64(v347, v118);
      v215 = v214;
      sub_1000050A4(v118, &qword_10093F970, &unk_1007A7670);
      v111(v212, v106);
      v216._countAndFlagsBits = v213;
      v216._object = v215;
      String.append(_:)(v216);
      v215, v217, v218, v219, v220, v221, v222, v223;
    }

    else
    {
      v352 = 0;
      v353 = 0xE000000000000000;
      v121 = v351;
    }

LABEL_72:
    v303 = v353;
    v304 = String._bridgeToObjectiveC()();
    v303, v305, v306, v307, v308, v309, v310, v311;
    [v121 setBody:v304];
LABEL_76:

    return;
  }

  if (v77 != 2)
  {
    if (v77 == 3)
    {
      v78 = *(a2 + 16);

      if (!v79)
      {
        return;
      }

      v80 = v79;
      v81 = _REMGetLocalizedString();
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v83 = v82;

      sub_1000F5104(&qword_100939EB0, &qword_1007989A0);
      v84 = swift_allocObject();
      *(v84 + 16) = xmmword_100791300;
      *(v84 + 56) = &type metadata for String;
      *(v84 + 64) = sub_100006600();
      *(v84 + 32) = v78;
      *(v84 + 40) = v80;
      String.init(format:_:)();
      v86 = v85;
      v83, v85, v87, v88, v89, v90, v91, v92;
      v350 = String._bridgeToObjectiveC()();
      v86, v93, v94, v95, v96, v97, v98, v99;
      [v351 setBody:v350];
      goto LABEL_45;
    }

    v334 = v65;
    v335 = v66;
    v338 = v69;
    v339 = v70;
    v340 = v68;
    v129 = *a2;
    v130 = [*a2 displayDate];
    if (!v130)
    {
      v352 = 0;
      v353 = 0xE000000000000000;
      v136 = v351;
      goto LABEL_75;
    }

    v131 = v130;
    v132 = [objc_allocWithZone(NSDateFormatter) init];
    [v132 setDoesRelativeDateFormatting:1];
    [v132 setDateStyle:1];
    v336 = v132;
    [v132 setTimeStyle:1];
    v337 = v131;
    if (![v131 isAllDay])
    {
      v177 = [v129 isOverdue];
      v178 = v350;
      v179 = v337;
      if (v177)
      {
        v180 = [v337 date];
        static Date._unconditionallyBridgeFromObjectiveC(_:)();

        v181 = v340;
        (*(v340 + 56))(v41, 0, 1, v178);
        sub_1004F1A8C(v129, v349, v41, v27);
        sub_1000050A4(v41, &unk_100938850, qword_100795AE0);
        if ((*(v181 + 48))(v27, 1, v178) != 1)
        {
          (*(v181 + 32))(v335, v27, v178);
          v281 = Date._bridgeToObjectiveC()().super.isa;
          v282 = v336;
          v283 = [v336 stringFromDate:v281];

          v284 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v286 = v285;

          v352 = v284;
          v353 = v286;
          v287 = [v179 timeZone];
          v136 = v351;
          if (v287)
          {
            v288 = v341;
            v289 = v287;
            static TimeZone._unconditionallyBridgeFromObjectiveC(_:)();

            v290 = 0;
          }

          else
          {
            v290 = 1;
            v288 = v341;
          }

          v312 = type metadata accessor for TimeZone();
          (*(*(v312 - 8) + 56))(v288, v290, 1, v312);
          v313 = v335;
          v314 = sub_1002DFB64(v335, v288);
          v316 = v315;
          sub_1000050A4(v288, &qword_10093F970, &unk_1007A7670);
          v317._countAndFlagsBits = v314;
          v317._object = v316;
          String.append(_:)(v317);

          v316, v318, v319, v320, v321, v322, v323, v324;
          (*(v340 + 8))(v313, v178);
          goto LABEL_75;
        }

        sub_1000050A4(v27, &unk_100938850, qword_100795AE0);
      }

      v182 = [v179 date];
      v183 = v338;
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      v184 = Date._bridgeToObjectiveC()().super.isa;
      v185 = *(v340 + 8);
      v185(v183, v178);
      v186 = v336;
      v187 = [v336 stringFromDate:v184];

      v188 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v190 = v189;

      v352 = v188;
      v353 = v190;
      v191 = [v179 date];
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      v192 = [v179 timeZone];
      if (v192)
      {
        v193 = v348;
        v194 = v192;
        static TimeZone._unconditionallyBridgeFromObjectiveC(_:)();

        v195 = 0;
        v136 = v351;
      }

      else
      {
        v195 = 1;
        v136 = v351;
        v193 = v348;
      }

      v263 = type metadata accessor for TimeZone();
      (*(*(v263 - 8) + 56))(v193, v195, 1, v263);
      v264 = v339;
      v265 = sub_1002DFB64(v339, v193);
      v267 = v266;
      sub_1000050A4(v193, &qword_10093F970, &unk_1007A7670);
      v185(v264, v178);
      v268._countAndFlagsBits = v265;
      v268._object = v267;
      String.append(_:)(v268);
      v267, v269, v270, v271, v272, v273, v274, v275;

LABEL_75:
      v325 = v353;
      v304 = String._bridgeToObjectiveC()();
      v325, v326, v327, v328, v329, v330, v331, v332;
      [v136 setBody:v304];
      goto LABEL_76;
    }

    v133 = [objc_allocWithZone(NSDateFormatter) init];
    [v133 setDoesRelativeDateFormatting:1];
    [v133 setDateStyle:1];
    [v133 setTimeStyle:0];
    v134 = [v129 isOverdue];
    v135 = v350;
    v136 = v351;
    if (v134)
    {
      sub_1004F1548(v129, v349, v37);
      v137 = v340;
      if ((*(v340 + 48))(v37, 1, v135) != 1)
      {
        (*(v137 + 32))(v58, v37, v135);
        v276 = Date._bridgeToObjectiveC()().super.isa;
        v277 = [v133 stringFromDate:v276];

        v278 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v280 = v279;

        (*(v137 + 8))(v58, v135);
        v352 = v278;
        v353 = v280;
        goto LABEL_75;
      }

      sub_1000050A4(v37, &unk_100938850, qword_100795AE0);
    }

    v138 = [v129 dueDateComponents];
    if (v138)
    {
      v139 = v342;
      v140 = v138;
      static DateComponents._unconditionallyBridgeFromObjectiveC(_:)();

      v142 = v343;
      v141 = v344;
      v143 = v345;
      (*(v344 + 32))(v343, v139, v345);
      v144 = v346;
      sub_1004F20E4(v346);
      (*(v141 + 8))(v142, v143);
      v145 = v340;
      v146 = *(v340 + 48);
      if (v146(v144, 1, v135) != 1)
      {
        v348 = *(v145 + 32);
        v348(v52, v144, v135);
        v147 = v347;
        sub_1004F2BFC(v52, v347);
        v349 = *(v145 + 8);
        v349(v52, v135);
        if (v146(v147, 1, v135) != 1)
        {
          v148 = v334;
          v348(v334, v147, v135);
          v149 = Date._bridgeToObjectiveC()().super.isa;
          v150 = [v133 stringFromDate:v149];

          v151 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v153 = v152;

          v349(v148, v135);
          v352 = v151;
          v353 = v153;
          goto LABEL_75;
        }

LABEL_64:
        sub_1000050A4(v147, &unk_100938850, qword_100795AE0);
        v254 = v337;
        v255 = [v337 date];
        v256 = v338;
        static Date._unconditionallyBridgeFromObjectiveC(_:)();

        v257 = Date._bridgeToObjectiveC()().super.isa;
        (*(v145 + 8))(v256, v135);
        v258 = v336;
        v259 = [v336 stringFromDate:v257];

        v260 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v262 = v261;

        v352 = v260;
        v353 = v262;
        goto LABEL_75;
      }
    }

    else
    {
      v145 = v340;
      v144 = v346;
      (*(v340 + 56))(v346, 1, 1, v135);
    }

    sub_1000050A4(v144, &unk_100938850, qword_100795AE0);
    v147 = v347;
    (*(v145 + 56))(v347, 1, 1, v135);
    goto LABEL_64;
  }

  v122 = *(a2 + 16);
  v123 = *(a2 + 24);
  v124 = *(a2 + 8);
  v125 = [v75 trigger];
  objc_opt_self();
  v126 = swift_dynamicCastObjCClass();
  if (v126)
  {
    v127 = [v126 event];
    if (v127 == 1)
    {
      v128 = v351;
    }

    else
    {
      v128 = v351;
      if (v127 != 2)
      {
        v199 = 0xE000000000000000;
        goto LABEL_49;
      }
    }

    v197 = _REMGetLocalizedString();
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v199 = v198;

LABEL_49:
    v351 = String._bridgeToObjectiveC()();
    v199, v200, v201, v202, v203, v204, v205, v206;
    [v128 setBody:v351];

    v207 = v124;
    v208 = v122;
    v209 = v123;
    v210 = 2;
    goto LABEL_58;
  }

  v173 = v124;
  v174 = v122;
  v175 = v123;
  v176 = 2;
LABEL_36:

  sub_1001A39AC(v173, v174, v175, v176);
}

id sub_1002DBEC0(uint64_t a1, _TtC7remindd19RDXPCStorePerformer *a2, uint64_t a3, _TtC7remindd19RDXPCStorePerformer *a4)
{
  v7 = String._bridgeToObjectiveC()();
  a2, v8, v9, v10, v11, v12, v13, v14;
  URL._bridgeToObjectiveC()(v15);
  v17 = v16;
  if (a4)
  {
    v18.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
    a4, v19, v20, v21, v22, v23, v24, v25;
  }

  else
  {
    v18.super.isa = 0;
  }

  v34 = 0;
  v26 = [swift_getObjCClassFromMetadata() attachmentWithIdentifier:v7 URL:v17 options:v18.super.isa error:&v34];

  v27 = v34;
  if (v26)
  {
    v28 = type metadata accessor for URL();
    v29 = *(*(v28 - 8) + 8);
    v30 = v27;
    v29(a3, v28);
  }

  else
  {
    v31 = v34;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    v32 = type metadata accessor for URL();
    (*(*(v32 - 8) + 8))(a3, v32);
  }

  return v26;
}

uint64_t sub_1002DC07C(uint64_t a1, char a2)
{
  v4 = 0x726F4D7478656E2ELL;
  v5 = type metadata accessor for RDUserNotificationCategory();
  v6 = *(v5 - 8);
  v8 = __chkstk_darwin(v5, v7);
  v10 = v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = 0xEC000000676E696ELL;
  if (a1 > 1)
  {
    if (a1 == 2)
    {
      v11 = 0xE800000000000000;
      v4 = 0x746867696E6F742ELL;
      goto LABEL_8;
    }

    if (a1 == 3)
    {
      goto LABEL_8;
    }

    goto LABEL_15;
  }

  if (a1)
  {
    if (a1 == 1)
    {
      v11 = 0xEE006E6F6F6E7265;
      v4 = 0x746641736968742ELL;
      goto LABEL_8;
    }

LABEL_15:
    type metadata accessor for REMReminderNextThirdsHour(0);
    v34[0] = a1;
    result = _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
    __break(1u);
    return result;
  }

LABEL_8:
  if (a2)
  {
    v12 = 0x646E656B6565772ELL;
  }

  else
  {
    v12 = 0;
  }

  if (a2)
  {
    v13 = 0xE800000000000000;
  }

  else
  {
    v13 = 0xE000000000000000;
  }

  (*(v6 + 104))(v10, enum case for RDUserNotificationCategory.reminderAlarm(_:), v5, v8);
  v14 = RDUserNotificationCategory.rawValue.getter();
  v16 = v15;
  (*(v6 + 8))(v10, v5);
  v34[0] = v14;
  v34[1] = v16;
  v17._countAndFlagsBits = v4;
  v17._object = v11;
  String.append(_:)(v17);
  v11, v18, v19, v20, v21, v22, v23, v24;
  v25._countAndFlagsBits = v12;
  v25._object = v13;
  String.append(_:)(v25);
  v13, v26, v27, v28, v29, v30, v31, v32;
  return v34[0];
}

_TtC7remindd19RDXPCStorePerformer *sub_1002DC288()
{
  v0 = type metadata accessor for RDUserNotificationAction();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0, v2);
  v4 = &v660 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5, v6);
  v8 = &v660 - v7;
  __chkstk_darwin(v9, v10);
  v12 = &v660 - v11;
  __chkstk_darwin(v13, v14);
  v16 = &v660 - v15;
  __chkstk_darwin(v17, v18);
  v679 = &v660 - v19;
  __chkstk_darwin(v20, v21);
  v707 = &v660 - v22;
  __chkstk_darwin(v23, v24);
  v713 = &v660 - v25;
  __chkstk_darwin(v26, v27);
  v692 = &v660 - v28;
  __chkstk_darwin(v29, v30);
  v691 = &v660 - v31;
  __chkstk_darwin(v32, v33);
  v690 = &v660 - v34;
  v705 = type metadata accessor for RDUserNotificationCategory();
  v35 = *(v705 - 8);
  __chkstk_darwin(v705, v36);
  v38 = &v660 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v39, v40);
  v677 = &v660 - v41;
  __chkstk_darwin(v42, v43);
  v701 = &v660 - v44;
  __chkstk_darwin(v45, v46);
  v693 = &v660 - v47;
  __chkstk_darwin(v48, v49);
  v689 = &v660 - v50;
  __chkstk_darwin(v51, v52);
  v700 = &v660 - v53;
  v54 = &_swiftEmptyArrayStorage;
  v728 = &_swiftEmptyArrayStorage;
  v62 = static RDUserNotificationCategory.allCases.getter();
  v694 = *v62->clientIdentity;
  if (!v694)
  {
LABEL_111:
    v63 = v54;
LABEL_112:
    v62, v55, v56, v57, v58, v59, v60, v61;
    return v63;
  }

  v663 = v38;
  v660 = v4;
  v59 = 0;
  v703 = v35 + 16;
  v698 = enum case for RDUserNotificationCategory.reminderAlarm(_:);
  v683 = enum case for RDUserNotificationCategory.todayNotification(_:);
  v678 = enum case for RDUserNotificationCategory.todayNotificationForSingleReminder(_:);
  v675 = enum case for RDUserNotificationCategory.todayNotificationBadge(_:);
  v717 = (v1 + 104);
  v721 = (v1 + 8);
  v674 = enum case for RDUserNotificationCategory.caldavSharedList(_:);
  v688 = "sWithLocalElementIDPrefix";
  v676 = xmmword_1007953F0;
  v682 = xmmword_100796900;
  v673 = enum case for RDUserNotificationCategory.beforeFirstUnlock(_:);
  v685 = enum case for RDUserNotificationCategory.singleAssignmentNotification(_:);
  v671 = enum case for RDUserNotificationCategory.multipleAssignmentsNotification(_:);
  v670 = enum case for RDUserNotificationCategory.sharedListSingleReminderAddedNotification(_:);
  v669 = enum case for RDUserNotificationCategory.sharedListMultipleRemindersAddedNotification(_:);
  v664 = enum case for RDUserNotificationCategory.sharedListSingleReminderCompletedNotification(_:);
  v662 = enum case for RDUserNotificationCategory.sharedListMultipleRemindersCompletedNotification(_:);
  v661 = enum case for RDUserNotificationCategory.dueDateDeltaAlarm(_:);
  v687 = enum case for RDUserNotificationAction.markAsCompleted(_:);
  v666 = enum case for RDUserNotificationAction.viewAssignmentInList(_:);
  v665 = enum case for RDUserNotificationAction.declineAssignment(_:);
  v681 = enum case for RDUserNotificationAction.snoozeForOneHour(_:);
  v680 = enum case for RDUserNotificationAction.snoozeForOneDay(_:);
  v708 = enum case for RDUserNotificationAction.snoozeToNextThirds(_:);
  v706 = enum case for RDUserNotificationAction.snoozeToNextWeekend(_:);
  v696 = v35 + 88;
  v695 = (v35 + 104);
  v702 = (v35 + 8);
  v63 = &_swiftEmptyArrayStorage;
  v718 = v0;
  v668 = v8;
  v667 = v12;
  v672 = v16;
  v64 = v705;
  v684 = v35;
  v686 = v62;
  while (v59 < *v62->clientIdentity)
  {
    v65 = (*(v35 + 80) + 32) & ~*(v35 + 80);
    v66 = *(v35 + 72);
    v699 = v59;
    v67 = v62 + v65 + v66 * v59;
    v68 = v35;
    v69 = *(v35 + 16);
    v70 = v700;
    v69(v700, v67, v64);
    v71 = (*(v68 + 88))(v70, v64);
    if (v71 == v698)
    {
      v72 = v690;
      v720 = *v717;
      v720(v690, v687, v0);
      RDUserNotificationAction.rawValue.getter();
      v74 = v73;
      v719 = *v721;
      (v719)(v72, v0);
      v75 = _REMGetLocalizedString();
      if (!v75)
      {
        static String._unconditionallyBridgeFromObjectiveC(_:)();
        v77 = v76;
        v75 = String._bridgeToObjectiveC()();
        v77, v78, v79, v80, v81, v82, v83, v84;
      }

      v85 = String._bridgeToObjectiveC()();
      v86 = objc_opt_self();
      v87 = [v86 iconWithSystemImageName:v85];

      v88 = String._bridgeToObjectiveC()();
      v74, v89, v90, v91, v92, v93, v94, v95;
      v96 = objc_opt_self();
      v712 = [v96 actionWithIdentifier:v88 title:v75 options:0 icon:v87];

      v97 = v691;
      v720(v691, v681, v0);
      RDUserNotificationAction.rawValue.getter();
      v99 = v98;
      (v719)(v97, v0);
      v100 = _REMGetLocalizedString();
      if (!v100)
      {
        static String._unconditionallyBridgeFromObjectiveC(_:)();
        v102 = v101;
        v100 = String._bridgeToObjectiveC()();
        v102, v103, v104, v105, v106, v107, v108, v109;
      }

      v110 = String._bridgeToObjectiveC()();
      v111 = [v86 iconWithSystemImageName:v110];

      v112 = String._bridgeToObjectiveC()();
      v99, v113, v114, v115, v116, v117, v118, v119;
      v711 = [v96 actionWithIdentifier:v112 title:v100 options:0 icon:v111];

      v120 = v692;
      v720(v692, v680, v0);
      RDUserNotificationAction.rawValue.getter();
      v122 = v121;
      (v719)(v120, v0);
      v123 = _REMGetLocalizedString();
      if (!v123)
      {
        static String._unconditionallyBridgeFromObjectiveC(_:)();
        v125 = v124;
        v123 = String._bridgeToObjectiveC()();
        v125, v126, v127, v128, v129, v130, v131, v132;
      }

      v133 = String._bridgeToObjectiveC()();
      v716 = v86;
      v134 = [v86 iconWithSystemImageName:v133];

      v135 = String._bridgeToObjectiveC()();
      v122, v136, v137, v138, v139, v140, v141, v142;
      v715 = v96;
      v710 = [v96 actionWithIdentifier:v135 title:v123 options:0 icon:v134];

      v709 = objc_opt_self();
      v143 = 0;
      v144 = v720;
      while (2)
      {
        v145 = 0;
        v146 = 0;
        v714 = *(&off_1008DCF80 + v143 + 4);
        v704 = v143 + 1;
        do
        {
          LODWORD(v722) = v145;
          v147 = *(&off_1008DCFB8 + v146 + 32);
          v723 = sub_1002DC07C(v714, *(&off_1008DCFB8 + v146 + 32));
          v149 = v148;
          object = REMReminderNextThirdsHour.stringForSnoozingUntil()()._object;
          v151 = REMReminderNextThirdsHour.systemImageStringForSnoozingUntil()()._object;
          v152 = v713;
          v153 = v718;
          v144(v713, v708, v718);
          RDUserNotificationAction.rawValue.getter();
          v155 = v154;
          (v719)(v152, v153);
          v156 = String._bridgeToObjectiveC()();
          v151, v157, v158, v159, v160, v161, v162, v163;
          v164 = [v716 iconWithSystemImageName:v156];

          v165 = String._bridgeToObjectiveC()();
          v155, v166, v167, v168, v169, v170, v171, v172;
          v173 = String._bridgeToObjectiveC()();
          object, v174, v175, v176, v177, v178, v179, v180;
          v181 = [v715 actionWithIdentifier:v165 title:v173 options:0 icon:v164];

          v182 = 0;
          if (v147 == 1)
          {
            v183 = v707;
            v184 = v718;
            v720(v707, v706, v718);
            RDUserNotificationAction.rawValue.getter();
            v186 = v185;
            (v719)(v183, v184);
            v187 = _REMGetLocalizedString();
            if (!v187)
            {
              static String._unconditionallyBridgeFromObjectiveC(_:)();
              v189 = v188;
              v187 = String._bridgeToObjectiveC()();
              v189, v190, v191, v192, v193, v194, v195, v196;
            }

            v197 = String._bridgeToObjectiveC()();
            v198 = [v716 iconWithSystemImageName:v197];

            v199 = String._bridgeToObjectiveC()();
            v186, v200, v201, v202, v203, v204, v205, v206;
            v182 = [v715 actionWithIdentifier:v199 title:v187 options:0 icon:v198];
          }

          v207 = String._bridgeToObjectiveC()();
          v149, v208, v209, v210, v211, v212, v213, v214;
          sub_1000060C8(0, &qword_100941140, UNNotificationAction_ptr);
          v215 = &_swiftEmptyArrayStorage;
          isa = Array._bridgeToObjectiveC()().super.isa;
          v217 = Array._bridgeToObjectiveC()().super.isa;
          v54 = [v709 categoryWithIdentifier:v207 actions:isa intentIdentifiers:v217 options:3];

          [(RDXPCStorePerformer *)v54 addPrivateOptions:8519680];
          v218 = v712;
          v219 = v711;
          v724[0] = v712;
          v724[1] = v711;
          v220 = v710;
          v724[2] = v181;
          v724[3] = v710;
          v724[4] = v182;
          v724[5] = 0;
          v726 = &_swiftEmptyArrayStorage;
          v221 = v182;
          v723 = v218;
          v222 = v219;
          v223 = v181;
          v62 = v220;
          v224 = 0;
LABEL_19:
          v225 = 6;
          if (v224 > 6)
          {
            v225 = v224;
          }

          while (v224 != 6)
          {
            if (v225 == v224)
            {
              __break(1u);
              goto LABEL_111;
            }

            v226 = v724[v224++];
            if (v226)
            {
              v227 = v226;
              specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
              if (*((v726 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v726 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
              {
                specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
              }

              specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
              v215 = v726;
              goto LABEL_19;
            }
          }

          sub_1000F5104(&qword_100941158, &qword_1007A0A88);
          swift_arrayDestroy();
          v228 = Array._bridgeToObjectiveC()().super.isa;
          v215, v229, v230, v231, v232, v233, v234, v235;
          [(RDXPCStorePerformer *)v54 setActions:v228];

          v236 = _REMGetLocalizedString();
          if (!v236)
          {
            static String._unconditionallyBridgeFromObjectiveC(_:)();
            v238 = v237;
            v236 = String._bridgeToObjectiveC()();
            v238, v239, v240, v241, v242, v243, v244, v245;
          }

          [(RDXPCStorePerformer *)v54 setCategorySummaryFormat:v236, v660];

          v246 = _REMGetLocalizedString();
          if (!v246)
          {
            static String._unconditionallyBridgeFromObjectiveC(_:)();
            v248 = v247;
            v246 = String._bridgeToObjectiveC()();
            v248, v249, v250, v251, v252, v253, v254, v255;
          }

          [(RDXPCStorePerformer *)v54 setHiddenPreviewsBodyPlaceholder:v246];

          v256 = v54;
          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          if (*((v728 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v728 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

          v145 = 1;
          v146 = &_mh_execute_header.magic + 1;
          v144 = v720;
        }

        while ((v722 & 1) == 0);
        v143 = v704;
        if (v704 != 3)
        {
          continue;
        }

        break;
      }

      v63 = v728;

      v0 = v718;
      v16 = v672;
      v64 = v705;
      goto LABEL_90;
    }

    v55 = v683;
    if (v71 == v683)
    {
      v257 = v689;
      (*v695)(v689);
      RDUserNotificationCategory.rawValue.getter();
      v259 = v258;
      (*v702)(v257, v64);
      v260 = String._bridgeToObjectiveC()();
      v259, v261, v262, v263, v264, v265, v266, v267;
      sub_1000060C8(0, &qword_100941140, UNNotificationAction_ptr);
      v268 = Array._bridgeToObjectiveC()().super.isa;
      v269 = Array._bridgeToObjectiveC()().super.isa;
      v270 = [objc_opt_self() categoryWithIdentifier:v260 actions:v268 intentIdentifiers:v269 options:3];

      v271 = _REMGetLocalizedString();
      v62 = v686;
      if (!v271)
      {
        goto LABEL_37;
      }
    }

    else
    {
      v62 = v686;
      if (v71 == v678)
      {
        v282 = v679;
        (*v717)(v679, v687, v0);
        RDUserNotificationAction.rawValue.getter();
        v284 = v283;
        (*v721)(v282, v0);
        v285 = _REMGetLocalizedString();
        if (!v285)
        {
          static String._unconditionallyBridgeFromObjectiveC(_:)();
          v287 = v286;
          v285 = String._bridgeToObjectiveC()();
          v287, v288, v289, v290, v291, v292, v293, v294;
        }

        v295 = String._bridgeToObjectiveC()();
        v296 = [objc_opt_self() iconWithSystemImageName:v295];

        v297 = String._bridgeToObjectiveC()();
        v284, v298, v299, v300, v301, v302, v303, v304;
        v305 = [objc_opt_self() actionWithIdentifier:v297 title:v285 options:0 icon:v296];

        v306 = v689;
        v307 = v705;
        (*v695)(v689, v678, v705);
        RDUserNotificationCategory.rawValue.getter();
        v309 = v308;
        (*v702)(v306, v307);
        sub_1000F5104(&unk_100939D60, &unk_1007959E0);
        v310 = swift_allocObject();
        *(v310 + 16) = v676;
        *(v310 + 32) = v305;
        v311 = v305;
        v312 = String._bridgeToObjectiveC()();
        v309, v313, v314, v315, v316, v317, v318, v319;
        sub_1000060C8(0, &qword_100941140, UNNotificationAction_ptr);
        v320 = Array._bridgeToObjectiveC()().super.isa;
        v310, v321, v322, v323, v324, v325, v326, v327;
        v328 = Array._bridgeToObjectiveC()().super.isa;
        v329 = [objc_opt_self() categoryWithIdentifier:v312 actions:v320 intentIdentifiers:v328 options:3];

        v330 = _REMGetLocalizedString();
LABEL_45:
        v331 = v330;
        if (!v331)
        {
          static String._unconditionallyBridgeFromObjectiveC(_:)();
          v333 = v332;
          v331 = String._bridgeToObjectiveC()();
          v333, v334, v335, v336, v337, v338, v339, v340;
        }

        [v329 setHiddenPreviewsBodyPlaceholder:{v331, v660}];

        v341 = v329;
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v728 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v728 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

        v63 = v728;
        v0 = v718;
        goto LABEL_50;
      }

      if (v71 == v675)
      {
        goto LABEL_51;
      }

      v342 = v699;
      if (v71 == v674)
      {
        goto LABEL_52;
      }

      if (v71 != v673)
      {
        if (v71 == v685 || v71 == v671)
        {
          v403 = *v717;
          (*v717)(v16, v666, v0);
          RDUserNotificationAction.rawValue.getter();
          v405 = v404;
          v722 = *v721;
          (v722)(v16, v0);
          v406 = _REMGetLocalizedString();
          if (!v406)
          {
            static String._unconditionallyBridgeFromObjectiveC(_:)();
            v407 = v403;
            v409 = v408;
            v406 = String._bridgeToObjectiveC()();
            v410 = v409;
            v403 = v407;
            v410, v411, v412, v413, v414, v415, v416, v417;
          }

          v715 = v403;
          v418 = String._bridgeToObjectiveC()();
          v719 = objc_opt_self();
          v419 = [v719 iconWithSystemImageName:v418];

          v420 = String._bridgeToObjectiveC()();
          v405, v421, v422, v423, v424, v425, v426, v427;
          v716 = objc_opt_self();
          v720 = [v716 actionWithIdentifier:v420 title:v406 options:4 icon:v419];

          v428 = v667;
          v429 = v665;
          v430 = v718;
          (v403)(v667, v665, v718);
          RDUserNotificationAction.rawValue.getter();
          v432 = v431;
          (v722)(v428, v430);
          v433 = _REMGetLocalizedString();
          if (!v433)
          {
            static String._unconditionallyBridgeFromObjectiveC(_:)();
            v435 = v434;
            v433 = String._bridgeToObjectiveC()();
            v435, v436, v437, v438, v439, v440, v441, v442;
          }

          v443 = String._bridgeToObjectiveC()();
          v444 = [v719 iconWithSystemImageName:v443];

          v445 = String._bridgeToObjectiveC()();
          v432, v446, v447, v448, v449, v450, v451, v452;
          v723 = [v716 actionWithIdentifier:v445 title:v433 options:0 icon:v444];

          v453 = v668;
          v454 = v429;
          v455 = v718;
          (v715)(v668, v454, v718);
          RDUserNotificationAction.rawValue.getter();
          v457 = v456;
          (v722)(v453, v455);
          v458 = _REMGetLocalizedString();
          if (!v458)
          {
            static String._unconditionallyBridgeFromObjectiveC(_:)();
            v460 = v459;
            v458 = String._bridgeToObjectiveC()();
            v460, v461, v462, v463, v464, v465, v466, v467;
          }

          v468 = String._bridgeToObjectiveC()();
          v469 = [v719 iconWithSystemImageName:v468];

          v470 = String._bridgeToObjectiveC()();
          v457, v471, v472, v473, v474, v475, v476, v477;
          v715 = [v716 actionWithIdentifier:v470 title:v458 options:0 icon:v469];

          sub_1000F5104(&qword_100941148, &qword_1007A0A80);
          v714 = swift_allocObject();
          v478 = (v714 + v65);
          v479 = *v695;
          v64 = v705;
          (*v695)(v714 + v65, v685, v705);
          v722 = v478;
          v719 = v479;
          (v479)(&v478[v66], v671, v64);
          v716 = objc_opt_self();
          v480 = 0;
          v481 = 0;
          v482 = v693;
          do
          {
            v483 = v480;
            v69(v482, &v722[v481 * v66], v64);
            RDUserNotificationCategory.rawValue.getter();
            v484 = v64;
            v486 = v485;
            v487 = String._bridgeToObjectiveC()();
            v486, v488, v489, v490, v491, v492, v493, v494;
            sub_1000060C8(0, &qword_100941140, UNNotificationAction_ptr);
            v495 = Array._bridgeToObjectiveC()().super.isa;
            v496 = Array._bridgeToObjectiveC()().super.isa;
            v497 = [v716 categoryWithIdentifier:v487 actions:v495 intentIdentifiers:v496 options:0];

            v498 = _REMGetLocalizedString();
            if (!v498)
            {
              static String._unconditionallyBridgeFromObjectiveC(_:)();
              v500 = v499;
              v498 = String._bridgeToObjectiveC()();
              v500, v501, v502, v503, v504, v505, v506, v507;
            }

            [v497 setHiddenPreviewsBodyPlaceholder:{v498, v660}];

            (v719)(v701, v685, v484);
            sub_1002DEACC();
            dispatch thunk of RawRepresentable.rawValue.getter();
            dispatch thunk of RawRepresentable.rawValue.getter();
            v508 = v727;
            v509 = v725;
            if (v726 != v724[6] || (v510 = v723, v727 != v725))
            {
              if (_stringCompareWithSmolCheck(_:_:expecting:)())
              {
                v510 = v723;
              }

              else
              {
                v510 = v715;
              }
            }

            v511 = *v702;
            (*v702)(v701, v705);
            v508, v512, v513, v514, v515, v516, v517, v518;
            v509, v519, v520, v521, v522, v523, v524, v525;
            sub_1000F5104(&unk_100939D60, &unk_1007959E0);
            v526 = swift_allocObject();
            *(v526 + 16) = v682;
            v527 = v720;
            *(v526 + 32) = v720;
            *(v526 + 40) = v510;
            v528 = v510;
            v529 = v527;
            v530 = Array._bridgeToObjectiveC()().super.isa;
            v526, v531, v532, v533, v534, v535, v536, v537;
            [v497 setActions:v530];

            v538 = _REMGetLocalizedString();
            if (!v538)
            {
              static String._unconditionallyBridgeFromObjectiveC(_:)();
              v540 = v539;
              v538 = String._bridgeToObjectiveC()();
              v540, v541, v542, v543, v544, v545, v546, v547;
            }

            [v497 setCategorySummaryFormat:v538];

            v548 = v497;
            specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
            if (*((v728 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v728 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            }

            specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

            v482 = v693;
            v64 = v705;
            v511(v693, v705);
            v480 = 1;
            v481 = 1;
          }

          while ((v483 & 1) == 0);
          v63 = v728;
          swift_setDeallocating();
          swift_arrayDestroy();
          swift_deallocClassInstance();

          v0 = v718;
          v16 = v672;
LABEL_90:
          v62 = v686;
          goto LABEL_51;
        }

        if (v71 == v670 || v71 == v669)
        {
          sub_1000F5104(&qword_100941148, &qword_1007A0A80);
          v723 = swift_allocObject();
          v549 = &v723[v65];
          v550 = v64;
          v551 = *v695;
          (*v695)(&v723[v65], v670, v550);
          (v551)(&v549[v66], v669, v550);
          v552 = objc_opt_self();
          v69(v677, v549, v550);
          RDUserNotificationCategory.rawValue.getter();
          v554 = v553;
          v555 = String._bridgeToObjectiveC()();
          v554, v556, v557, v558, v559, v560, v561, v562;
          sub_1000060C8(0, &qword_100941140, UNNotificationAction_ptr);
          v563 = Array._bridgeToObjectiveC()().super.isa;
          v564 = Array._bridgeToObjectiveC()().super.isa;
          v565 = [v552 categoryWithIdentifier:v555 actions:v563 intentIdentifiers:v564 options:0];

          v566 = _REMGetLocalizedString();
          if (!v566)
          {
            static String._unconditionallyBridgeFromObjectiveC(_:)();
            v568 = v567;
            v566 = String._bridgeToObjectiveC()();
            v568, v569, v570, v571, v572, v573, v574, v575;
          }

          [v565 setHiddenPreviewsBodyPlaceholder:{v566, v660}];

          v576 = v565;
          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          v62 = v686;
          if (*((v728 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v728 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

          v577 = *v702;
          v578 = v677;
          v579 = v705;
          (*v702)(v677, v705);
          v69(v578, &v549[v66], v579);
          RDUserNotificationCategory.rawValue.getter();
          v581 = v580;
          v582 = String._bridgeToObjectiveC()();
          v581, v583, v584, v585, v586, v587, v588, v589;
          v590 = Array._bridgeToObjectiveC()().super.isa;
          v591 = Array._bridgeToObjectiveC()().super.isa;
          v592 = [v552 categoryWithIdentifier:v582 actions:v590 intentIdentifiers:v591 options:0];

          v593 = _REMGetLocalizedString();
          if (!v593)
          {
            static String._unconditionallyBridgeFromObjectiveC(_:)();
            v595 = v594;
            v593 = String._bridgeToObjectiveC()();
            v595, v596, v597, v598, v599, v600, v601, v602;
          }

          [v592 setHiddenPreviewsBodyPlaceholder:v593];

          v603 = v592;
          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          v0 = v718;
          if (*((v728 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v728 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

          v604 = &v710;
          goto LABEL_109;
        }

        if (v71 == v664 || v71 == v662)
        {
          sub_1000F5104(&qword_100941148, &qword_1007A0A80);
          v723 = swift_allocObject();
          v605 = &v723[v65];
          v606 = v64;
          v607 = *v695;
          (*v695)(&v723[v65], v664, v606);
          (v607)(&v605[v66], v662, v606);
          v608 = objc_opt_self();
          v69(v663, v605, v606);
          RDUserNotificationCategory.rawValue.getter();
          v610 = v609;
          v611 = String._bridgeToObjectiveC()();
          v610, v612, v613, v614, v615, v616, v617, v618;
          sub_1000060C8(0, &qword_100941140, UNNotificationAction_ptr);
          v619 = Array._bridgeToObjectiveC()().super.isa;
          v620 = Array._bridgeToObjectiveC()().super.isa;
          v621 = [v608 categoryWithIdentifier:v611 actions:v619 intentIdentifiers:v620 options:0];

          v622 = _REMGetLocalizedString();
          if (!v622)
          {
            static String._unconditionallyBridgeFromObjectiveC(_:)();
            v624 = v623;
            v622 = String._bridgeToObjectiveC()();
            v624, v625, v626, v627, v628, v629, v630, v631;
          }

          [v621 setHiddenPreviewsBodyPlaceholder:{v622, v660}];

          v632 = v621;
          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          v62 = v686;
          if (*((v728 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v728 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

          v577 = *v702;
          v633 = v663;
          v634 = v705;
          (*v702)(v663, v705);
          v69(v633, &v605[v66], v634);
          RDUserNotificationCategory.rawValue.getter();
          v636 = v635;
          v637 = String._bridgeToObjectiveC()();
          v636, v638, v639, v640, v641, v642, v643, v644;
          v645 = Array._bridgeToObjectiveC()().super.isa;
          v646 = Array._bridgeToObjectiveC()().super.isa;
          v647 = [v608 categoryWithIdentifier:v637 actions:v645 intentIdentifiers:v646 options:0];

          v648 = _REMGetLocalizedString();
          if (!v648)
          {
            static String._unconditionallyBridgeFromObjectiveC(_:)();
            v650 = v649;
            v648 = String._bridgeToObjectiveC()();
            v650, v651, v652, v653, v654, v655, v656, v657;
          }

          [v647 setHiddenPreviewsBodyPlaceholder:v648];

          v658 = v647;
          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          v0 = v718;
          if (*((v728 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v728 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

          v604 = &v697;
LABEL_109:
          v64 = v705;
          v577(*(v604 - 32), v705);
          v63 = v728;
          swift_setDeallocating();
          swift_arrayDestroy();
          swift_deallocClassInstance();
          v16 = v672;
          goto LABEL_51;
        }

        if (v71 != v661)
        {
          goto LABEL_114;
        }

        v356 = v660;
        (*v717)(v660, v687, v0);
        RDUserNotificationAction.rawValue.getter();
        v358 = v357;
        (*v721)(v356, v0);
        v359 = _REMGetLocalizedString();
        if (!v359)
        {
          static String._unconditionallyBridgeFromObjectiveC(_:)();
          v361 = v360;
          v359 = String._bridgeToObjectiveC()();
          v361, v362, v363, v364, v365, v366, v367, v368;
        }

        v369 = String._bridgeToObjectiveC()();
        v370 = [objc_opt_self() iconWithSystemImageName:v369];

        v371 = String._bridgeToObjectiveC()();
        v358, v372, v373, v374, v375, v376, v377, v378;
        v379 = [objc_opt_self() actionWithIdentifier:v371 title:v359 options:0 icon:v370];

        v380 = v689;
        v381 = v705;
        (*v695)(v689, v661, v705);
        RDUserNotificationCategory.rawValue.getter();
        v383 = v382;
        (*v702)(v380, v381);
        v384 = String._bridgeToObjectiveC()();
        v383, v385, v386, v387, v388, v389, v390, v391;
        sub_1000060C8(0, &qword_100941140, UNNotificationAction_ptr);
        v392 = Array._bridgeToObjectiveC()().super.isa;
        v393 = Array._bridgeToObjectiveC()().super.isa;
        v329 = [objc_opt_self() categoryWithIdentifier:v384 actions:v392 intentIdentifiers:v393 options:3];

        sub_1000F5104(&unk_100939D60, &unk_1007959E0);
        v394 = swift_allocObject();
        *(v394 + 16) = v676;
        *(v394 + 32) = v379;
        v311 = v379;
        v395 = Array._bridgeToObjectiveC()().super.isa;
        v394, v396, v397, v398, v399, v400, v401, v402;
        [v329 setActions:v395];

        v330 = _REMGetLocalizedString();
        goto LABEL_45;
      }

      v343 = v689;
      (*v695)(v689);
      RDUserNotificationCategory.rawValue.getter();
      v345 = v344;
      (*v702)(v343, v64);
      v346 = String._bridgeToObjectiveC()();
      v345, v347, v348, v349, v350, v351, v352, v353;
      sub_1000060C8(0, &qword_100941140, UNNotificationAction_ptr);
      v354 = Array._bridgeToObjectiveC()().super.isa;
      v355 = Array._bridgeToObjectiveC()().super.isa;
      v270 = [objc_opt_self() categoryWithIdentifier:v346 actions:v354 intentIdentifiers:v355 options:3];

      v271 = _REMGetLocalizedString();
      if (!v271)
      {
LABEL_37:
        static String._unconditionallyBridgeFromObjectiveC(_:)();
        v273 = v272;
        v271 = String._bridgeToObjectiveC()();
        v273, v274, v275, v276, v277, v278, v279, v280;
      }
    }

    [v270 setHiddenPreviewsBodyPlaceholder:{v271, v660}];

    v281 = v270;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v728 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v728 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

    v63 = v728;
LABEL_50:
    v64 = v705;
LABEL_51:
    v342 = v699;
LABEL_52:
    v59 = v342 + 1;
    v35 = v684;
    if (v59 == v694)
    {
      goto LABEL_112;
    }
  }

  __break(1u);
LABEL_114:
  result = _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
  return result;
}

unint64_t sub_1002DEACC()
{
  result = qword_100941150;
  if (!qword_100941150)
  {
    type metadata accessor for RDUserNotificationCategory();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100941150);
  }

  return result;
}

uint64_t sub_1002DEB24(void *a1)
{
  v37 = a1;
  v1 = type metadata accessor for Date();
  v35 = *(v1 - 8);
  v36 = v1;
  __chkstk_darwin(v1, v2);
  v4 = &v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = type metadata accessor for Calendar();
  v5 = *(v34 - 8);
  __chkstk_darwin(v34, v6);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = type metadata accessor for DateComponents();
  v9 = *(v33 - 8);
  __chkstk_darwin(v33, v10);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Calendar.current.getter();
  sub_1000F5104(&qword_100940900, &unk_1007A0220);
  v13 = type metadata accessor for Calendar.Component();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_100791300;
  (*(v14 + 104))(v16 + v15, enum case for Calendar.Component.hour(_:), v13);
  v17 = sub_100391E24(v16);
  swift_setDeallocating();
  (*(v14 + 8))(v16 + v15, v13);
  swift_deallocClassInstance();
  Date.init()();
  Calendar.dateComponents(_:from:)();
  v17, v18, v19, v20, v21, v22, v23, v24;
  (*(v35 + 8))(v4, v36);
  (*(v5 + 8))(v8, v34);
  v25 = DateComponents.hour.getter();
  LOBYTE(v5) = v26;
  (*(v9 + 8))(v12, v33);
  if (v5)
  {
    v25 = 0;
  }

  v27 = [objc_opt_self() nextThirdsHourFromHour:v25];
  v28 = [v37 dueDateComponents];
  if (v28)
  {
    v29 = v28;
    v30 = [v28 rem_isWeekendDateComponents];
  }

  else
  {
    v30 = 0;
  }

  return sub_1002DC07C(v27, v30);
}

id sub_1002DEEB8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v79 = a3;
  v80 = a4;
  v8 = type metadata accessor for URL();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8, v10);
  v78 = &v76 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12, v13);
  v15 = &v76 - v14;
  __chkstk_darwin(v16, v17);
  v19 = &v76 - v18;
  __chkstk_darwin(v20, v21);
  v23 = &v76 - v22;
  v24 = [objc_opt_self() defaultManager];
  v82 = 0;
  v25 = [v24 rem_createProtectedTemporaryDirectoryIfNeededWithError:&v82];
  v26 = v82;
  if (v25)
  {
    v77 = a5;
    v81 = v8;
    v27 = v25;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();
    v28 = v26;

    v29 = [objc_opt_self() processInfo];
    v30 = [v29 globallyUniqueString];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v32 = v31;

    URL.appendingPathComponent(_:isDirectory:)();
    v32, v33, v34, v35, v36, v37, v38, v39;
    URL._bridgeToObjectiveC()(v40);
    v42 = v41;
    v82 = 0;
    LODWORD(v32) = [v24 createDirectoryAtURL:v41 withIntermediateDirectories:1 attributes:0 error:&v82];

    v43 = v82;
    if (v32)
    {
      v82 = a1;
      v83 = a2;
      v44 = v43;

      v45._countAndFlagsBits = 1735290926;
      v45._object = 0xE400000000000000;
      String.append(_:)(v45);
      v47 = v82;
      v46 = v83;
      URL.appendingPathComponent(_:)();
      Data.write(to:options:)();
      v52 = v78;
      (*(v9 + 16))(v78, v15, v81);
      if (v77)
      {
        sub_10045BA24(v77);
        v54 = v53;
      }

      else
      {
        v54 = 0;
      }

      sub_1000060C8(0, &qword_100941178, UNNotificationAttachment_ptr);
      v71 = sub_1002DBEC0(v47, v46, v52, v54);

      v72 = *(v9 + 8);
      v73 = v15;
      v74 = v81;
      v72(v73, v81);
      v72(v19, v74);
      v72(v23, v74);
      return v71;
    }

    v49 = v82;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    v50 = *(v9 + 8);
    v51 = v81;
    v50(v19, v81);
    v50(v23, v51);
  }

  else
  {
    v48 = v82;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  if (qword_100935E60 != -1)
  {
    swift_once();
  }

  v55 = type metadata accessor for Logger();
  sub_100006654(v55, qword_100941128);
  swift_errorRetain();
  v56 = Logger.logObject.getter();
  v57 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v56, v57))
  {
    v58 = swift_slowAlloc();
    v59 = swift_slowAlloc();
    v82 = v59;
    *v58 = 136315138;
    swift_getErrorValue();
    v60 = Error.localizedDescription.getter();
    v62 = v61;
    v63 = sub_10000668C(v60, v61, &v82);
    v62, v64, v65, v66, v67, v68, v69, v70;
    *(v58 + 4) = v63;
    _os_log_impl(&_mh_execute_header, v56, v57, "Error creating UNNotificationAttachment from UIImage {error: %s}", v58, 0xCu);
    sub_10000607C(v59);
  }

  else
  {
  }

  return 0;
}

void sub_1002DF450(void *a1, void *a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4, v6);
  v8 = &v64 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for REMApplicationIconFormat();
  v10 = *(v9 - 8);
  *&v12 = __chkstk_darwin(v9, v11).n128_u64[0];
  v14 = &v64 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = [a2 userActivity];
  if (v15)
  {
    v16 = v15;
    v65 = a1;
    (*(v10 + 104))(v14, enum case for REMApplicationIconFormat.notificationShortLook(_:), v9);
    v17 = REMUserActivity.appIconAndName(format:scale:)();
    v19 = v18;
    (*(v10 + 8))(v14, v9);
    if (v17)
    {
      v19, v20, v21, v22, v23, v24, v25, v26;
      v27 = [objc_allocWithZone(UIImage) initWithCGImage:v17 scale:0 orientation:3.0];
      v28 = UIImagePNGRepresentation(v27);
      if (v28)
      {
        v29 = v28;
        v30 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
        v32 = v31;

        v33 = [a2 objectID];
        v34 = [v33 uuid];

        static UUID._unconditionallyBridgeFromObjectiveC(_:)();
        v35 = UUID.uuidString.getter();
        v37 = v36;
        (*(v5 + 8))(v8, v4);
        v38 = sub_10038EA80(&_swiftEmptyArrayStorage);
        v39 = sub_1002DEEB8(v35, v37, v30, v32, v38);
        v37, v40, v41, v42, v43, v44, v45, v46;
        v38, v47, v48, v49, v50, v51, v52, v53;
        if (v39)
        {
          sub_1000F5104(&unk_100939D60, &unk_1007959E0);
          v54 = swift_allocObject();
          *(v54 + 16) = xmmword_1007953F0;
          *(v54 + 32) = v39;
          sub_1000060C8(0, &qword_100941178, UNNotificationAttachment_ptr);
          v55 = v39;
          isa = Array._bridgeToObjectiveC()().super.isa;
          v54, v57, v58, v59, v60, v61, v62, v63;
          [v65 setAttachments:isa];
          sub_10001BBA0(v30, v32);

          v16 = v55;
        }

        else
        {
          sub_10001BBA0(v30, v32);
        }
      }

      else
      {

        v16 = v17;
      }
    }
  }
}

BOOL sub_1002DF7D8(uint64_t a1)
{
  v40 = a1;
  v41 = type metadata accessor for Date();
  v1 = *(v41 - 8);
  __chkstk_darwin(v41, v2);
  v4 = &v38 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1000F5104(&qword_10093F970, &unk_1007A7670);
  __chkstk_darwin(v5 - 8, v6);
  v8 = &v38 - v7;
  v9 = type metadata accessor for TimeZone();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9, v11);
  v39 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13, v14);
  v16 = &v38 - v15;
  v17 = objc_opt_self();
  v18 = [v17 daemonUserDefaults];
  v19 = [v18 timeZoneOverrideEnabled];

  if (v19 && (v20 = [v17 daemonUserDefaults], v21 = objc_msgSend(v20, "timeZoneOverride"), v20, v21))
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v23 = v22;

    TimeZone.init(identifier:)();
    v23, v24, v25, v26, v27, v28, v29, v30;
    v31 = *(v10 + 48);
    if (v31(v8, 1, v9) == 1)
    {
      v32 = v39;
      static TimeZone.current.getter();
      if (v31(v8, 1, v9) != 1)
      {
        sub_1000050A4(v8, &qword_10093F970, &unk_1007A7670);
      }
    }

    else
    {
      v32 = v39;
      (*(v10 + 32))(v39, v8, v9);
    }

    (*(v10 + 32))(v16, v32, v9);
  }

  else
  {
    static TimeZone.current.getter();
  }

  Date.init()();
  v33 = TimeZone.secondsFromGMT(for:)();
  v34 = *(v1 + 8);
  v35 = v41;
  v34(v4, v41);
  Date.init()();
  v36 = TimeZone.secondsFromGMT(for:)();
  v34(v4, v35);
  (*(v10 + 8))(v16, v9);
  return v33 == v36;
}

uint64_t sub_1002DFB64(uint64_t a1, uint64_t a2)
{
  v3 = sub_1000F5104(&qword_10093F970, &unk_1007A7670);
  __chkstk_darwin(v3 - 8, v4);
  v6 = v57 - v5;
  v7 = type metadata accessor for TimeZone();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7, v9);
  v11 = v57 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for REMFeatureFlags();
  v13 = *(v12 - 8);
  v15 = __chkstk_darwin(v12, v14);
  v17 = v57 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 104))(v17, enum case for REMFeatureFlags.timeZoneSupport(_:), v12, v15);
  v18 = REMFeatureFlags.isEnabled.getter();
  (*(v13 + 8))(v17, v12);
  if (v18)
  {
    sub_1002DFF48(a2, v6);
    if ((*(v8 + 48))(v6, 1, v7) == 1)
    {
      sub_1000050A4(v6, &qword_10093F970, &unk_1007A7670);
    }

    else
    {
      (*(v8 + 32))(v11, v6, v7);
      v19 = TimeZone.abbreviation(for:)();
      if (v20)
      {
        v21 = v20;
        v22 = v19;
        if (!sub_1002DF7D8(v11))
        {
          v31 = [objc_allocWithZone(NSDateFormatter) init];
          [v31 setDoesRelativeDateFormatting:1];
          [v31 setDateStyle:0];
          [v31 setTimeStyle:1];
          isa = TimeZone._bridgeToObjectiveC()().super.isa;
          [v31 setTimeZone:isa];

          v57[0] = 10272;
          v57[1] = 0xE200000000000000;
          v33 = Date._bridgeToObjectiveC()().super.isa;
          v34 = [v31 stringFromDate:v33];

          v35 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v37 = v36;

          v38._countAndFlagsBits = v35;
          v38._object = v37;
          String.append(_:)(v38);
          v37, v39, v40, v41, v42, v43, v44, v45;
          v46._countAndFlagsBits = 32;
          v46._object = 0xE100000000000000;
          String.append(_:)(v46);
          v47._countAndFlagsBits = v22;
          v47._object = v21;
          String.append(_:)(v47);
          v21, v48, v49, v50, v51, v52, v53, v54;
          v55._countAndFlagsBits = 41;
          v55._object = 0xE100000000000000;
          String.append(_:)(v55);

          v56 = v57[0];
          (*(v8 + 8))(v11, v7);
          return v56;
        }

        (*(v8 + 8))(v11, v7);
        v21, v23, v24, v25, v26, v27, v28, v29;
      }

      else
      {
        (*(v8 + 8))(v11, v7);
      }
    }
  }

  return 0;
}

uint64_t sub_1002DFF48(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000F5104(&qword_10093F970, &unk_1007A7670);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1002DFFB8()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_100941180);
  v1 = sub_100006654(v0, qword_100941180);
  if (qword_1009364D8 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_1009751D0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void sub_1002E0080(unint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v3 = v2;
  v182 = a2;
  v186 = type metadata accessor for UUID();
  v181 = *(v186 - 8);
  __chkstk_darwin(v186, v5);
  v185 = &v180 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for RDPermanentlyHiddenReminder(0);
  v184 = *(v7 - 8);
  __chkstk_darwin(v7 - 8, v8);
  v183 = &v180 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = _s10PredicatesOMa(0);
  __chkstk_darwin(v10, v11);
  v13 = &v180 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = REMPermanentlyHiddenDataView.PermanentlyHiddenInvocation.Parameters.reminderID.getter();
  sub_1000F5104(&unk_100939D60, &unk_1007959E0);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1007953F0;
  *(v15 + 32) = v14;
  *v13 = v15;
  v13[8] = 1;
  swift_storeEnumTagMultiPayload();
  v16 = sub_1000060C8(0, &qword_100939EE0, off_1008D41D0);
  v17 = qword_100936080;
  v18 = v14;
  if (v17 != -1)
  {
LABEL_19:
    swift_once();
  }

  v191 = qword_100974E30;
  v19 = sub_100043AA8();
  v20 = [objc_allocWithZone(NSFetchRequest) init];
  v193 = v16;
  v21 = [swift_getObjCClassFromMetadata() entity];
  [(RDXPCStorePerformer *)v20 setEntity:v21];

  [(RDXPCStorePerformer *)v20 setAffectedStores:0];
  [(RDXPCStorePerformer *)v20 setPredicate:v19];

  [(RDXPCStorePerformer *)v20 setFetchLimit:0];
  v192 = v20;
  [(RDXPCStorePerformer *)v20 setFetchOffset:0];
  v16 = &_swiftEmptyArrayStorage;
  v197 = &_swiftEmptyArrayStorage;
  sub_1000F5104(&qword_100949370, &unk_100797770);
  sub_1002E0F3C();
  Predicate = Sequence<>.postFetchPredicateTypes.getter();
  v197 = sub_1003EBAD0();
  sub_100271EA8(&_swiftEmptyArrayStorage);
  v200 = v197;
  v23 = sub_100235FA0(Predicate);
  Predicate, v24, v25, v26, v27, v28, v29, v30;
  v31 = sub_100277CC0(v23);
  v23, v32, v33, v34, v35, v36, v37, v38;
  if ((v31 & 0x8000000000000000) == 0 && (v31 & 0x4000000000000000) == 0)
  {
    v39 = *v31->clientIdentity;
    if (v39)
    {
      goto LABEL_5;
    }

LABEL_21:

LABEL_22:
    sub_100271EA8(v16);
    sub_1000F5104(&unk_10093B300, &unk_100797780);
    Array<A>.removeDuplicates()();
    v47 = v200;
    isa = Array._bridgeToObjectiveC()().super.isa;
    v47, v49, v50, v51, v52, v53, v54, v55;
    v56 = v192;
    [(RDXPCStorePerformer *)v192 setRelationshipKeyPathsForPrefetching:isa];

    sub_1000060C8(0, &qword_10093C980, NSSortDescriptor_ptr);
    v57 = Array._bridgeToObjectiveC()().super.isa;
    [(RDXPCStorePerformer *)v56 setSortDescriptors:v57];

    v58 = NSManagedObjectContext.fetch<A>(_:)();
    v16 = v3;
    if (v3)
    {
      sub_1002E0FE8(v13, _s10PredicatesOMa);
    }

    else
    {
      v59 = v58;
      v40 = sub_100155C54(&_swiftEmptyArrayStorage, _swiftEmptySetSingleton, v58);
      v59, v60, v61, v62, v63, v64, v65, v66;

      if (v40 >> 62)
      {
        goto LABEL_57;
      }

      if (*((v40 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        while (1)
        {
          v190 = v18;
          if ((v40 & 0xC000000000000001) != 0)
          {
            v74 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (!*((v40 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              __break(1u);
              goto LABEL_65;
            }

            v74 = *(v40 + 32);
          }

          v82 = v74;
          v40, v75, v76, v77, v78, v79, v80, v81;
          v83 = [v82 account];
          if (!v83)
          {
            if (qword_100935E68 != -1)
            {
              swift_once();
            }

            v90 = type metadata accessor for Logger();
            sub_100006654(v90, qword_100941180);
            v91 = v190;
            v92 = Logger.logObject.getter();
            v93 = static os_log_type_t.error.getter();

            if (os_log_type_enabled(v92, v93))
            {
              v94 = swift_slowAlloc();
              v95 = swift_slowAlloc();
              *v94 = 138412290;
              *(v94 + 4) = v91;
              *v95 = v91;
              v96 = v91;
              _os_log_impl(&_mh_execute_header, v92, v93, "permanentlyHiddenReminders: Failed to get account of reminderID: %@.", v94, 0xCu);
              sub_100039860(v95);
            }

            v97 = objc_opt_self();
            v197 = 0;
            v198 = 0xE000000000000000;
            _StringGuts.grow(_:)(70);
            v98._countAndFlagsBits = 0xD000000000000043;
            v98._object = 0x80000001007F4470;
            String.append(_:)(v98);
            v99 = [v91 description];
            v100 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v102 = v101;

            v103._countAndFlagsBits = v100;
            v103._object = v102;
            String.append(_:)(v103);
            v102, v104, v105, v106, v107, v108, v109, v110;
            v111._countAndFlagsBits = 46;
            v111._object = 0xE100000000000000;
            String.append(_:)(v111);
            v112 = v198;
            v113 = String._bridgeToObjectiveC()();
            v112, v114, v115, v116, v117, v118, v119, v120;
            [v97 internalErrorWithDebugDescription:v113];

            swift_willThrow();
            goto LABEL_62;
          }

          v84 = v83;
          v85 = [(RDXPCStorePerformer *)v83 recentlyDeletedInfoAsData];
          if (!v85)
          {
            break;
          }

          v86 = v85;
          v87 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
          v89 = v88;

          v40 = type metadata accessor for RDRecentlyDeletedInfo(0);
          sub_1002E0FA0(&unk_100950C50, type metadata accessor for RDRecentlyDeletedInfo, &unk_1007B7EC8);
          static REMJSONRepresentable.fromJSONData(_:)();
          if (v16)
          {
            sub_1002E0FE8(v13, _s10PredicatesOMa);
            sub_10001BBA0(v87, v89);

            return;
          }

          v193 = v84;
          v194 = v82;
          v189 = v13;
          sub_10001BBA0(v87, v89);
          v192 = v197;
          v128 = *v197->clientIdentity;
          v131 = *(v128 + 56);
          v130 = v128 + 56;
          v129 = v131;
          v132 = 1 << *(*v197->clientIdentity + 32);
          v133 = -1;
          if (v132 < 64)
          {
            v133 = ~(-1 << v132);
          }

          v134 = v133 & v129;
          v135 = (v132 + 63) >> 6;
          v13 = (v181 + 8);
          v195 = *v197->clientIdentity;
          swift_bridgeObjectRetain_n();
          v18 = 0;
          while (v134)
          {
            v136 = v18;
LABEL_52:
            v137 = __clz(__rbit64(v134));
            v134 &= v134 - 1;
            v40 = v183;
            sub_1001A3A2C(*(v195 + 48) + *(v184 + 72) * (v137 | (v136 << 6)), v183);
            v138 = [v190 uuid];
            v139 = v185;
            static UUID._unconditionallyBridgeFromObjectiveC(_:)();

            LOBYTE(v138) = static UUID.== infix(_:_:)();
            (*v13)(v139, v186);
            sub_1002E0FE8(v40, type metadata accessor for RDPermanentlyHiddenReminder);
            if (v138)
            {
LABEL_53:
              v140 = v195;

              v140, v141, v142, v143, v144, v145, v146, v147;
              v13 = v189;
              v84 = v193;
              v82 = v194;
              goto LABEL_54;
            }
          }

          while (1)
          {
            v136 = v18 + 1;
            if (__OFADD__(v18, 1))
            {
              break;
            }

            if (v136 >= v135)
            {
              goto LABEL_53;
            }

            v134 = *(v130 + 8 * v136);
            ++v18;
            if (v134)
            {
              v18 = v136;
              goto LABEL_52;
            }
          }

          __break(1u);
LABEL_56:
          __break(1u);
LABEL_57:
          if (!_CocoaArrayWrapper.endIndex.getter())
          {
            goto LABEL_58;
          }
        }

        if (qword_100935E68 != -1)
        {
          swift_once();
        }

        v121 = type metadata accessor for Logger();
        sub_100006654(v121, qword_100941180);
        v122 = v190;
        v123 = Logger.logObject.getter();
        v124 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v123, v124))
        {
          v125 = swift_slowAlloc();
          v126 = swift_slowAlloc();
          *v125 = 138412290;
          *(v125 + 4) = v122;
          *v126 = v122;
          v127 = v122;
          _os_log_impl(&_mh_execute_header, v123, v124, "permanentlyHiddenReminders: No recentlyDeletedInfo for account of reminderID: %@.", v125, 0xCu);
          sub_100039860(v126);
        }

LABEL_54:
        REMPermanentlyHiddenDataView.PermanentlyHiddenInvocation.Result.init(isPermanentlyHidden:)();
      }

      else
      {
LABEL_58:
        v40, v67, v68, v69, v70, v71, v72, v73;
        if (qword_100935E68 != -1)
        {
LABEL_65:
          swift_once();
        }

        v148 = type metadata accessor for Logger();
        sub_100006654(v148, qword_100941180);
        v149 = v18;
        v150 = Logger.logObject.getter();
        v151 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v150, v151))
        {
          v152 = swift_slowAlloc();
          v153 = swift_slowAlloc();
          *v152 = 138412290;
          *(v152 + 4) = v149;
          *v153 = v149;
          v154 = v149;
          _os_log_impl(&_mh_execute_header, v150, v151, "permanentlyHiddenReminders: Failed to get reminder of reminderID: %@.", v152, 0xCu);
          sub_100039860(v153);
        }

        v155 = objc_opt_self();
        v197 = 0;
        v198 = 0xE000000000000000;
        _StringGuts.grow(_:)(71);
        v156._countAndFlagsBits = 0xD000000000000044;
        v156._object = 0x80000001007F44C0;
        String.append(_:)(v156);
        v157 = [v149 description];
        v158 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v160 = v159;

        v161._countAndFlagsBits = v158;
        v161._object = v160;
        String.append(_:)(v161);
        v160, v162, v163, v164, v165, v166, v167, v168;
        v169._countAndFlagsBits = 46;
        v169._object = 0xE100000000000000;
        String.append(_:)(v169);
        v170 = v198;
        v171 = String._bridgeToObjectiveC()();
        v170, v172, v173, v174, v175, v176, v177, v178;
        [v155 internalErrorWithDebugDescription:v171];

        swift_willThrow();
      }

LABEL_62:
      sub_1002E0FE8(v13, _s10PredicatesOMa);
    }

    return;
  }

  v39 = _CocoaArrayWrapper.endIndex.getter();
  if (!v39)
  {
    goto LABEL_21;
  }

LABEL_5:
  v199 = &_swiftEmptyArrayStorage;
  v40 = &v199;
  sub_100026EF4(0, v39 & ~(v39 >> 63), 0);
  if (v39 < 0)
  {
    goto LABEL_56;
  }

  v187 = a1;
  v188 = v3;
  v189 = v13;
  v190 = v18;
  a1 = 0;
  v16 = v199;
  v194 = v39;
  v195 = v31 & 0xC000000000000001;
  while (1)
  {
    v13 = (a1 + 1);
    if (__OFADD__(a1, 1))
    {
      __break(1u);
LABEL_18:
      __break(1u);
      goto LABEL_19;
    }

    if (v195)
    {
      v41 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (a1 >= *v31->clientIdentity)
      {
        goto LABEL_18;
      }

      v41 = *&v31->clientIdentity[8 * a1 + 16];
    }

    v42 = dispatch thunk of AnyKeyPath._kvcKeyPathString.getter();
    if (!v43)
    {
      break;
    }

    v3 = v42;
    v44 = v43;

    v199 = v16;
    v18 = *v16->clientIdentity;
    v45 = *&v16->clientIdentity[8];
    if (v18 >= v45 >> 1)
    {
      sub_100026EF4((v45 > 1), v18 + 1, 1);
      v16 = v199;
    }

    *v16->clientIdentity = v18 + 1;
    v46 = v16 + 16 * v18;
    *(v46 + 4) = v3;
    *(v46 + 5) = v44;
    ++a1;
    if (v13 == v194)
    {

      v13 = v189;
      v18 = v190;
      v3 = v188;
      goto LABEL_22;
    }
  }

  v197 = 0;
  v198 = 0xE000000000000000;
  _StringGuts.grow(_:)(46);
  v179._object = 0x80000001007EC120;
  v179._countAndFlagsBits = 0xD00000000000002CLL;
  String.append(_:)(v179);
  v196 = v41;
  sub_1000F5104(&unk_100939F10, &qword_100797F30);
  _print_unlocked<A, B>(_:_:)();
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_1002E0EE4(uint64_t a1)
{
  result = sub_1002E0FA0(&qword_1009411B8, &type metadata accessor for REMPermanentlyHiddenDataView.PermanentlyHiddenInvocation, &protocol conformance descriptor for REMPermanentlyHiddenDataView.PermanentlyHiddenInvocation);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1002E0F3C()
{
  result = qword_100939850;
  if (!qword_100939850)
  {
    sub_1000F514C(&qword_100949370, &unk_100797770);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100939850);
  }

  return result;
}

uint64_t sub_1002E0FA0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1002E0FE8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1002E1048(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = a1;
    sub_100026EF4(0, v1, 0);
    v3 = v2 + 64;
    v4 = _HashTable.startBucket.getter();
    v5 = 0;
    v64 = *(v2 + 36);
    v56 = v2 + 72;
    v57 = v2;
    v58 = v1;
    v59 = v2 + 64;
    while ((v4 & 0x8000000000000000) == 0 && v4 < 1 << *(v2 + 32))
    {
      if ((*(v3 + 8 * (v4 >> 6)) & (1 << v4)) == 0)
      {
        goto LABEL_30;
      }

      if (v64 != *(v2 + 36))
      {
        goto LABEL_31;
      }

      v63 = v4 >> 6;
      v62 = v5;
      v8 = *(*(v2 + 48) + 16 * v4 + 8);
      v9 = *(*(v2 + 56) + 8 * v4);
      v10 = *(v9 + 16);
      if (v10)
      {
        v61 = *(*(v2 + 48) + 16 * v4 + 8);

        sub_100026EF4(0, v10, 0);
        v60 = v9;
        v11 = (v9 + 40);
        do
        {
          v13 = *(v11 - 1);
          v12 = *v11;
          v15 = *_swiftEmptyArrayStorage.clientIdentity;
          v14 = *&_swiftEmptyArrayStorage.clientIdentity[8];

          if (v15 >= v14 >> 1)
          {
            sub_100026EF4((v14 > 1), v15 + 1, 1);
          }

          *_swiftEmptyArrayStorage.clientIdentity = v15 + 1;
          v16 = &_swiftEmptyArrayStorage + 16 * v15;
          *(v16 + 4) = v13;
          *(v16 + 5) = v12;
          v11 += 4;
          --v10;
        }

        while (v10);
        v2 = v57;
        v17 = v60;
        v8 = v61;
      }

      else
      {

        v17 = v9;
      }

      sub_1000F5104(&unk_10093B300, &unk_100797780);
      sub_10000CB48(&qword_10093D0F0, &unk_10093B300, &unk_100797780, &protocol conformance descriptor for [A]);
      v18 = BidirectionalCollection<>.joined(separator:)();
      v20 = v19;
      v17, v19, v21, v22, v23, v24, v25, v26;
      v8, v27, v28, v29, v30, v31, v32, v33;
      &_swiftEmptyArrayStorage, v34, v35, v36, v37, v38, v39, v40;
      v47 = *_swiftEmptyArrayStorage.clientIdentity;
      v46 = *&_swiftEmptyArrayStorage.clientIdentity[8];
      if (v47 >= v46 >> 1)
      {
        sub_100026EF4((v46 > 1), v47 + 1, 1);
      }

      *_swiftEmptyArrayStorage.clientIdentity = v47 + 1;
      v48 = &_swiftEmptyArrayStorage + 16 * v47;
      *(v48 + 4) = v18;
      *(v48 + 5) = v20;
      v6 = 1 << *(v2 + 32);
      if (v4 >= v6)
      {
        goto LABEL_32;
      }

      v3 = v59;
      v49 = *(v59 + 8 * v63);
      if ((v49 & (1 << v4)) == 0)
      {
        goto LABEL_33;
      }

      if (v64 != *(v2 + 36))
      {
        goto LABEL_34;
      }

      v50 = v49 & (-2 << (v4 & 0x3F));
      if (v50)
      {
        v6 = __clz(__rbit64(v50)) | v4 & 0x7FFFFFFFFFFFFFC0;
        v7 = v58;
      }

      else
      {
        v51 = v63 << 6;
        v52 = v63 + 1;
        v53 = (v56 + 8 * v63);
        v7 = v58;
        while (v52 < (v6 + 63) >> 6)
        {
          v55 = *v53++;
          v54 = v55;
          v51 += 64;
          ++v52;
          if (v55)
          {
            sub_100010E34(v4, v64, 0, v41, v42, v43, v44, v45);
            v6 = __clz(__rbit64(v54)) + v51;
            goto LABEL_4;
          }
        }

        sub_100010E34(v4, v64, 0, v41, v42, v43, v44, v45);
      }

LABEL_4:
      v5 = v62 + 1;
      v4 = v6;
      if (v62 + 1 == v7)
      {
        return;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
  }
}

_TtC7remindd19RDXPCStorePerformer *sub_1002E13F0(void (*a1)(uint64_t *__return_ptr, uint64_t *))
{
  v3 = v2;
  sub_1000F5104(&qword_100941340, &qword_1007A1068);
  sub_10000CB48(&qword_100941370, &qword_100941340, &qword_1007A1068, &protocol conformance descriptor for Series<A>);
  v4 = dispatch thunk of Sequence.underestimatedCount.getter();
  v22 = &_swiftEmptyArrayStorage;
  sub_100026EF4(0, v4 & ~(v4 >> 63), 0);
  v5 = &_swiftEmptyArrayStorage;
  v20 = v1;

  dispatch thunk of Sequence.makeIterator()();
  if (v4 < 0)
  {
    __break(1u);
  }

  else
  {
    if (!v4)
    {
      goto LABEL_8;
    }

    while (1)
    {
      dispatch thunk of _AnyIteratorBoxBase.next()();
      v19 = v18;
      if (!v18)
      {
        break;
      }

      a1(&v20, &v19);
      if (v3)
      {
        goto LABEL_16;
      }

      v3 = 0;

      v7 = v20;
      v6 = v21;
      v22 = v5;
      v9 = *v5->clientIdentity;
      v8 = *&v5->clientIdentity[8];
      if (v9 >= v8 >> 1)
      {
        sub_100026EF4((v8 > 1), v9 + 1, 1);
        v5 = v22;
      }

      *v5->clientIdentity = v9 + 1;
      v10 = v5 + 16 * v9;
      *(v10 + 4) = v7;
      *(v10 + 5) = v6;
      if (!--v4)
      {
LABEL_8:
        while (1)
        {
          dispatch thunk of _AnyIteratorBoxBase.next()();
          if (!v20)
          {
            break;
          }

          v19 = v20;
          a1(&v20, &v19);
          if (v3)
          {
            goto LABEL_17;
          }

          v3 = 0;

          v11 = v20;
          v12 = v21;
          v22 = v5;
          v14 = *v5->clientIdentity;
          v13 = *&v5->clientIdentity[8];
          if (v14 >= v13 >> 1)
          {
            sub_100026EF4((v13 > 1), v14 + 1, 1);
            v5 = v22;
          }

          *v5->clientIdentity = v14 + 1;
          v15 = v5 + 16 * v14;
          *(v15 + 4) = v11;
          *(v15 + 5) = v12;
        }

        return v5;
      }
    }
  }

  __break(1u);
LABEL_16:

  __break(1u);
LABEL_17:

  __break(1u);
  return result;
}

_TtC7remindd19RDXPCStorePerformer *sub_1002E165C(uint64_t a1)
{
  sub_1000F5104(&qword_100941388, &qword_1007A1200);
  sub_10000CB48(&qword_1009413A8, &qword_100941388, &qword_1007A1200, &protocol conformance descriptor for Series<A>);
  v2 = dispatch thunk of Sequence.underestimatedCount.getter();
  sub_100026EF4(0, v2 & ~(v2 >> 63), 0);
  v16 = a1;

  result = dispatch thunk of Sequence.makeIterator()();
  if (v2 < 0)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    return result;
  }

  if (v2)
  {
    do
    {
      result = dispatch thunk of _AnyIteratorBoxBase.next()();
      if (!a1)
      {
        goto LABEL_13;
      }

      v4 = REMSuggestedList.listIdentifier.getter();
      v6 = v5;

      v8 = *_swiftEmptyArrayStorage.clientIdentity;
      v7 = *&_swiftEmptyArrayStorage.clientIdentity[8];
      if (v8 >= v7 >> 1)
      {
        sub_100026EF4((v7 > 1), v8 + 1, 1);
      }

      *_swiftEmptyArrayStorage.clientIdentity = v8 + 1;
      v9 = &_swiftEmptyArrayStorage + 16 * v8;
      *(v9 + 4) = v4;
      *(v9 + 5) = v6;
    }

    while (--v2);
  }

  while (1)
  {
    dispatch thunk of _AnyIteratorBoxBase.next()();
    if (!v16)
    {
      break;
    }

    v10 = REMSuggestedList.listIdentifier.getter();
    v12 = v11;

    v14 = *_swiftEmptyArrayStorage.clientIdentity;
    v13 = *&_swiftEmptyArrayStorage.clientIdentity[8];
    if (v14 >= v13 >> 1)
    {
      sub_100026EF4((v13 > 1), v14 + 1, 1);
    }

    *_swiftEmptyArrayStorage.clientIdentity = v14 + 1;
    v15 = &_swiftEmptyArrayStorage + 16 * v14;
    *(v15 + 4) = v10;
    *(v15 + 5) = v12;
  }

  return &_swiftEmptyArrayStorage;
}

_TtC7remindd19RDXPCStorePerformer *sub_1002E1854(uint64_t (*a1)(uint64_t *), uint64_t a2)
{
  v21 = a1;
  v4 = sub_1000F5104(&qword_10094A360, &unk_1007A12E0);
  v5 = v4 - 8;
  __chkstk_darwin(v4, v6);
  v8 = v20 - v7;
  v9 = sub_1000F5104(&qword_10093EDF8, &qword_10079D5B0);
  sub_10000CB48(&qword_1009413B0, &qword_10093EDF8, &qword_10079D5B0, &protocol conformance descriptor for OrderedSet<A>);
  dispatch thunk of Sequence.makeIterator()();
  v10 = *(v5 + 44);
  sub_10000CB48(&qword_10093EE00, &qword_10093EDF8, &qword_10079D5B0, &protocol conformance descriptor for OrderedSet<A>);
  dispatch thunk of Collection.endIndex.getter();
  v11 = &_swiftEmptyArrayStorage;
  if (*&v8[v10] == v22[0])
  {
LABEL_2:
    sub_1000050A4(v8, &qword_10094A360, &unk_1007A12E0);
  }

  else
  {
    v20[0] = v9;
    v20[1] = a2;
    while (1)
    {
      v14 = dispatch thunk of Collection.subscript.read();
      v16 = *v15;
      v14(v22, 0);
      dispatch thunk of Collection.formIndex(after:)();
      v23 = v16;
      v17 = v21(&v23);
      if (v2)
      {
        break;
      }

      if (v17)
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v24 = v11;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_100253830(0, *v11->clientIdentity + 1, 1);
          v11 = v24;
        }

        v13 = *v11->clientIdentity;
        v12 = *&v11->clientIdentity[8];
        if (v13 >= v12 >> 1)
        {
          sub_100253830((v12 > 1), v13 + 1, 1);
          v11 = v24;
        }

        *v11->clientIdentity = v13 + 1;
        *&v11->clientIdentity[8 * v13 + 16] = v16;
      }

      dispatch thunk of Collection.endIndex.getter();
      if (*&v8[v10] == v22[0])
      {
        goto LABEL_2;
      }
    }

    sub_1000050A4(v8, &qword_10094A360, &unk_1007A12E0);
  }

  return v11;
}

void sub_1002E1AFC(uint64_t (*a1)(id *), uint64_t a2, uint64_t a3)
{
  v4 = a3;
  v5 = 0;
  v16[2] = &_swiftEmptyArrayStorage;
  v6 = a3 + 64;
  v7 = 1 << *(a3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a3 + 64);
  v10 = (v7 + 63) >> 6;
  if (v9)
  {
    goto LABEL_6;
  }

  do
  {
LABEL_7:
    v11 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      __break(1u);
      return;
    }

    if (v11 >= v10)
    {

      return;
    }

    v9 = *(v6 + 8 * v11);
    ++v5;
  }

  while (!v9);
  while (1)
  {
    v16[0] = *(*(v4 + 56) + ((v11 << 9) | (8 * __clz(__rbit64(v9)))));
    v12 = v16[0];
    v13 = a1(v16);
    if (v3)
    {
      break;
    }

    v9 &= v9 - 1;
    if (v13)
    {
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      v4 = a3;
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v5 = v11;
      if (!v9)
      {
        goto LABEL_7;
      }
    }

    else
    {

      v5 = v11;
      if (!v9)
      {
        goto LABEL_7;
      }
    }

LABEL_6:
    v11 = v5;
  }
}