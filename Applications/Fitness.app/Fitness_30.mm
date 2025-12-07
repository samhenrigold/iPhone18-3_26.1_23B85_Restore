void sub_100396C7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v29 = a2;
  v30 = a3;
  v7 = sub_100140278(&unk_1008DB8A0, qword_1006DBA20);
  v28 = *(v7 - 8);
  v8 = *(v28 + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v27 - v9;
  v11 = objc_opt_self();
  sub_100140278(&qword_1008DE3E8, &unk_1006E33C0);
  v12 = type metadata accessor for UUID();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1006D46C0;
  (*(v13 + 16))(v15 + v14, a1, v12);
  sub_10029D44C(v15);
  swift_setDeallocating();
  (*(v13 + 8))(v15 + v14, v12);
  swift_deallocClassInstance();
  sub_10039D820(&qword_1008E4E10, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  isa = Set._bridgeToObjectiveC()().super.isa;

  v17 = [v11 predicateForObjectsWithUUIDs:isa];

  sub_1000059F8(0, &unk_1008E4E30, HKSampleType_ptr);
  v18 = [swift_getObjCClassFromMetadata() workoutType];
  sub_10001B104(v29, v10, &unk_1008DB8A0, qword_1006DBA20);
  v19 = (*(v28 + 80) + 16) & ~*(v28 + 80);
  v20 = (v8 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
  v21 = swift_allocObject();
  sub_100315E0C(v10, v21 + v19);
  *(v21 + v20) = v4;
  v22 = (v21 + ((v20 + 15) & 0xFFFFFFFFFFFFFFF8));
  *v22 = v30;
  v22[1] = a4;
  v23 = objc_allocWithZone(HKSampleQuery);
  aBlock[4] = sub_10039EA5C;
  aBlock[5] = v21;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000DEE0;
  aBlock[3] = &unk_100855058;
  v24 = _Block_copy(aBlock);

  v25 = v4;
  v26 = [v23 initWithSampleType:v18 predicate:v17 limit:1 sortDescriptors:0 resultsHandler:v24];

  _Block_release(v24);

  [*(*&v25[OBJC_IVAR____TtC10FitnessApp31ActivityDashboardViewController_context] + OBJC_IVAR____TtC10FitnessApp24ActivityDashboardContext_healthStore) executeQuery:v26];
}

void sub_100397060(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  v12 = type metadata accessor for DispatchWorkItemFlags();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v16);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    if (a2 >> 62)
    {
      v43 = v13;
      v46 = v17;
      v37 = a6;
      v38 = v18;
      v39 = _CocoaArrayWrapper.endIndex.getter();
      v18 = v38;
      a6 = v37;
      v40 = v39;
      v17 = v46;
      v13 = v43;
      if (!v40)
      {
        return;
      }
    }

    else if (!*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      return;
    }

    v45 = v18;
    v46 = v17;
    v44 = a6;
    if ((a2 & 0xC000000000000001) != 0)
    {
      v21 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (!*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        return;
      }

      v21 = *(a2 + 32);
    }

    v47 = v21;
    objc_opt_self();
    v22 = swift_dynamicCastObjCClass();
    if (v22)
    {
      v23 = v22;
      v43 = v13;
      v24 = type metadata accessor for UUID();
      v25 = 0;
      if ((*(*(v24 - 8) + 48))(a4, 1, v24) != 1)
      {
        v26 = [v23 workoutActivities];
        sub_1000059F8(0, &qword_1008EAF90, HKWorkoutActivity_ptr);
        v27 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        v42 = &v41;
        __chkstk_darwin(v28);
        *(&v41 - 2) = a4;
        v25 = sub_10042C650(sub_10039EB5C, (&v41 - 4), v27);
      }

      sub_1000059F8(0, &qword_1008E3FD0, OS_dispatch_queue_ptr);
      v42 = static OS_dispatch_queue.main.getter();
      v29 = swift_allocObject();
      v29[2] = a5;
      v29[3] = v23;
      v30 = v44;
      v29[4] = v25;
      v29[5] = v30;
      v29[6] = a7;
      aBlock[4] = sub_10039EB2C;
      aBlock[5] = v29;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1000449A8;
      aBlock[3] = &unk_1008550A8;
      v31 = _Block_copy(aBlock);

      v32 = a5;
      v33 = v47;
      v34 = v25;

      static DispatchQoS.unspecified.getter();
      aBlock[0] = _swiftEmptyArrayStorage;
      sub_10039D820(&qword_1008E33B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
      sub_100140278(&unk_1008E7F50, &qword_1006D8190);
      sub_100282B7C(&qword_1008E33C0, &unk_1008E7F50, &qword_1006D8190);
      dispatch thunk of SetAlgebra.init<A>(_:)();
      v35 = v42;
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v31);

      (*(v43 + 8))(v15, v12);
      (*(v45 + 8))(v20, v46);
    }

    else
    {
      v36 = v47;
    }
  }
}

uint64_t sub_100397550(id *a1, uint64_t a2)
{
  v25 = a2;
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v24 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100140278(&unk_1008E4E40, &unk_1006E33D0);
  v7 = v6 - 8;
  __chkstk_darwin(v6);
  v9 = &v24 - v8;
  v10 = sub_100140278(&unk_1008DB8A0, qword_1006DBA20);
  __chkstk_darwin(v10 - 8);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v14 = __chkstk_darwin(v13).n128_u64[0];
  v16 = &v24 - v15;
  v17 = [*a1 UUID];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  (*(v4 + 56))(v16, 0, 1, v3);
  v18 = *(v7 + 56);
  sub_10001B104(v16, v9, &unk_1008DB8A0, qword_1006DBA20);
  sub_10001B104(v25, &v9[v18], &unk_1008DB8A0, qword_1006DBA20);
  v19 = *(v4 + 48);
  if (v19(v9, 1, v3) != 1)
  {
    sub_10001B104(v9, v12, &unk_1008DB8A0, qword_1006DBA20);
    if (v19(&v9[v18], 1, v3) != 1)
    {
      v21 = v24;
      (*(v4 + 32))(v24, &v9[v18], v3);
      sub_10039D820(&qword_1008EAFA0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v20 = dispatch thunk of static Equatable.== infix(_:_:)();
      v22 = *(v4 + 8);
      v22(v21, v3);
      sub_10000EA04(v16, &unk_1008DB8A0, qword_1006DBA20);
      v22(v12, v3);
      sub_10000EA04(v9, &unk_1008DB8A0, qword_1006DBA20);
      return v20 & 1;
    }

    sub_10000EA04(v16, &unk_1008DB8A0, qword_1006DBA20);
    (*(v4 + 8))(v12, v3);
    goto LABEL_6;
  }

  sub_10000EA04(v16, &unk_1008DB8A0, qword_1006DBA20);
  if (v19(&v9[v18], 1, v3) != 1)
  {
LABEL_6:
    sub_10000EA04(v9, &unk_1008E4E40, &unk_1006E33D0);
    v20 = 0;
    return v20 & 1;
  }

  sub_10000EA04(v9, &unk_1008DB8A0, qword_1006DBA20);
  v20 = 1;
  return v20 & 1;
}

void sub_100397B04(char a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC10FitnessApp31ActivityDashboardViewController_context);
  v3 = *(v2 + OBJC_IVAR____TtC10FitnessApp24ActivityDashboardContext_historyDataProvider);
  v117 = *(v2 + OBJC_IVAR____TtC10FitnessApp24ActivityDashboardContext_fitnessAppContext);
  v4 = *(v2 + OBJC_IVAR____TtC10FitnessApp24ActivityDashboardContext_fiuiFormattingManager);
  v120 = *(v2 + OBJC_IVAR____TtC10FitnessApp24ActivityDashboardContext_workoutFormattingManager);
  v5 = *(v2 + OBJC_IVAR____TtC10FitnessApp24ActivityDashboardContext_healthStore);
  v6 = *(v2 + OBJC_IVAR____TtC10FitnessApp24ActivityDashboardContext_fiuiModel);
  v123 = *(v2 + OBJC_IVAR____TtC10FitnessApp24ActivityDashboardContext_badgeImageFactory);
  v7 = *(v2 + OBJC_IVAR____TtC10FitnessApp24ActivityDashboardContext_friendListManager);
  v8 = *(v2 + OBJC_IVAR____TtC10FitnessApp24ActivityDashboardContext_achievementLocalizationProvider);
  v9 = *(v2 + OBJC_IVAR____TtC10FitnessApp24ActivityDashboardContext_pauseRingsCoordinator);
  v10 = *(v2 + OBJC_IVAR____TtC10FitnessApp24ActivityDashboardContext_achievementResourceProvider);
  v11 = *(v2 + OBJC_IVAR____TtC10FitnessApp24ActivityDashboardContext_chAwardsDataProvider);
  v129 = *(v2 + OBJC_IVAR____TtC10FitnessApp24ActivityDashboardContext_mindfulnessSessionFormattingManager);
  v126 = *(v2 + OBJC_IVAR____TtC10FitnessApp24ActivityDashboardContext_stackFormattingManager);
  v12 = type metadata accessor for HistoryListViewController();
  v13 = objc_allocWithZone(v12);
  *&v13[OBJC_IVAR____TtC10FitnessApp25HistoryListViewController_dataSource] = 0;
  v14 = &v13[OBJC_IVAR____TtC10FitnessApp25HistoryListViewController_filterValue];
  *v14 = 0;
  *(v14 + 4) = 512;
  *&v13[OBJC_IVAR____TtC10FitnessApp25HistoryListViewController_allHistoryItems] = _swiftEmptyArrayStorage;
  *&v13[OBJC_IVAR____TtC10FitnessApp25HistoryListViewController_workoutStatistics] = &_swiftEmptyDictionarySingleton;
  *&v13[OBJC_IVAR____TtC10FitnessApp25HistoryListViewController_filterViewController] = 0;
  *&v13[OBJC_IVAR____TtC10FitnessApp25HistoryListViewController_observers] = _swiftEmptyArrayStorage;
  v15 = &v13[OBJC_IVAR____TtC10FitnessApp25HistoryListViewController_awaitingDataLoadFilter];
  *v15 = 0;
  *(v15 + 4) = 1792;
  *&v13[OBJC_IVAR____TtC10FitnessApp25HistoryListViewController_dataProvider] = v3;
  *&v13[OBJC_IVAR____TtC10FitnessApp25HistoryListViewController_fitnessAppContext] = v117;
  *&v13[OBJC_IVAR____TtC10FitnessApp25HistoryListViewController_fiuiFormattingManager] = v4;
  *&v13[OBJC_IVAR____TtC10FitnessApp25HistoryListViewController_workoutFormattingManager] = v120;
  *&v13[OBJC_IVAR____TtC10FitnessApp25HistoryListViewController_healthStore] = v5;
  *&v13[OBJC_IVAR____TtC10FitnessApp25HistoryListViewController_model] = v6;
  *&v13[OBJC_IVAR____TtC10FitnessApp25HistoryListViewController_friendListManager] = v7;
  *&v13[OBJC_IVAR____TtC10FitnessApp25HistoryListViewController_badgeImageFactory] = v123;
  *&v13[OBJC_IVAR____TtC10FitnessApp25HistoryListViewController_achievementLocalizationProvider] = v8;
  *&v13[OBJC_IVAR____TtC10FitnessApp25HistoryListViewController_pauseRingsCoordinator] = v9;
  *&v13[OBJC_IVAR____TtC10FitnessApp25HistoryListViewController_achievementResourceProvider] = v10;
  *&v13[OBJC_IVAR____TtC10FitnessApp25HistoryListViewController_awardsDataProvider] = v11;
  *&v13[OBJC_IVAR____TtC10FitnessApp25HistoryListViewController_mindfulnessSessionFormattingManager] = v129;
  *&v13[OBJC_IVAR____TtC10FitnessApp25HistoryListViewController_stackFormattingManager] = v126;
  v135.receiver = v13;
  v135.super_class = v12;
  v115 = v3;
  v118 = v117;
  v113 = v4;
  v121 = v120;
  v111 = v5;
  v109 = v6;
  v16 = v123;
  v17 = v7;
  v18 = v8;
  v19 = v9;
  v20 = v10;
  v21 = v11;
  v130 = v129;
  v127 = v126;
  v22 = v115;
  v124 = v118;
  v119 = v113;
  v23 = v121;
  v24 = v111;
  v122 = v109;
  v25 = v17;
  v110 = v16;
  v116 = v18;
  v114 = v19;
  v112 = v20;
  v106 = v21;
  v131 = v130;
  v128 = v127;
  v26 = objc_msgSendSuper2(&v135, "initWithNibName:bundle:", 0, 0);
  v27 = *&v26[OBJC_IVAR____TtC10FitnessApp25HistoryListViewController_filterValue];
  v28 = *&v26[OBJC_IVAR____TtC10FitnessApp25HistoryListViewController_filterValue + 8];
  v29 = v26;
  sub_100448AF0(v27, v28);
  v31 = v30;
  *&v29[OBJC_IVAR____TtC10FitnessApp25HistoryListViewController_allHistoryItems] = v32;

  *&v29[OBJC_IVAR____TtC10FitnessApp25HistoryListViewController_workoutStatistics] = v31;

  v33 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v34 = objc_allocWithZone(type metadata accessor for HistoryFilterUIViewController());
  v35 = sub_1002586AC(sub_100282934, v33);
  v36 = OBJC_IVAR____TtC10FitnessApp25HistoryListViewController_filterViewController;
  v37 = *&v29[OBJC_IVAR____TtC10FitnessApp25HistoryListViewController_filterViewController];
  *&v29[OBJC_IVAR____TtC10FitnessApp25HistoryListViewController_filterViewController] = v35;

  v38 = *&v22[OBJC_IVAR___CHHistoryDataProvider_lock];
  v39 = v22;
  v40 = v35;
  os_unfair_lock_lock(v38 + 4);
  sub_1001DF0A8(v132);
  os_unfair_lock_unlock(v38 + 4);
  if (*(v132[0] + 16))
  {
    *&v40[OBJC_IVAR____TtC10FitnessApp29HistoryFilterUIViewController_historyTypes] = v132[0];

    sub_100258840();
  }

  else
  {
  }

  v41 = [objc_opt_self() mainBundle];
  v42 = String._bridgeToObjectiveC()();
  v43 = [v41 localizedStringForKey:v42 value:0 table:0];

  if (!v43)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v43 = String._bridgeToObjectiveC()();
  }

  [v29 setTitle:v43];
  v44 = [v29 tableView];
  if (!v44)
  {
    __break(1u);
    goto LABEL_30;
  }

  v45 = v44;
  [v44 setSectionHeaderTopPadding:0.0];

  v46 = [v29 tableView];
  if (!v46)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v47 = v46;
  [v46 setSeparatorStyle:0];

  v48 = [v29 tableView];
  if (!v48)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v49 = v48;
  v50 = *&v29[v36];
  if (!v50)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v51 = [v50 view];
  if (!v51)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v52 = v51;
  [v51 frame];
  v54 = v53;
  v56 = v55;
  v58 = v57;
  v60 = v59;

  v61 = [objc_allocWithZone(UIView) initWithFrame:{v54, v56, v58, v60}];
  [v49 setTableHeaderView:v61];

  v62 = [v29 tableView];
  if (!v62)
  {
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v63 = v62;
  v64 = [v62 tableHeaderView];

  if (v64)
  {
    v65 = *&v29[v36];
    if (!v65)
    {
LABEL_40:
      __break(1u);
      goto LABEL_41;
    }

    v66 = [v65 view];
    if (!v66)
    {
LABEL_41:
      __break(1u);
      return;
    }

    v67 = v66;
    [v64 addSubview:v66];
  }

  v125 = v24;
  v68 = [v29 tableView];
  if (!v68)
  {
    goto LABEL_35;
  }

  v69 = v68;
  v70 = v25;
  sub_1000059F8(0, &unk_1008E4DF0, off_100832810);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v72 = String._bridgeToObjectiveC()();
  [v69 registerClass:ObjCClassFromMetadata forHeaderFooterViewReuseIdentifier:v72];

  v73 = [v29 tableView];
  if (!v73)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v74 = v73;
  sub_1000059F8(0, &unk_1008EAF80, off_100832808);
  v75 = swift_getObjCClassFromMetadata();
  v76 = String._bridgeToObjectiveC()();
  [v74 registerClass:v75 forCellReuseIdentifier:v76];

  v77 = [v29 tableView];
  if (!v77)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v78 = v77;
  type metadata accessor for MindfulnessSessionListTableViewCell();
  v79 = swift_getObjCClassFromMetadata();
  v80 = String._bridgeToObjectiveC()();
  [v78 registerClass:v79 forCellReuseIdentifier:v80];

  v81 = [v29 tableView];
  if (!v81)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  v82 = v81;
  type metadata accessor for WorkoutsListTableViewCell();
  v83 = swift_getObjCClassFromMetadata();
  v84 = String._bridgeToObjectiveC()();
  [v82 registerClass:v83 forCellReuseIdentifier:v84];

  v85 = [v29 tableView];
  if (!v85)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  type metadata accessor for StackListTableViewCell(0);
  v86 = swift_getObjCClassFromMetadata();
  v87 = String._bridgeToObjectiveC()();
  [v85 registerClass:v86 forCellReuseIdentifier:v87];

  v88 = type metadata accessor for WorkoutFeatures();
  v133 = v88;
  v89 = sub_10039D820(&qword_1008E4E00, &type metadata accessor for WorkoutFeatures, &protocol conformance descriptor for WorkoutFeatures);
  v134 = v89;
  v90 = sub_100005994(v132);
  v91 = *(*(v88 - 8) + 104);
  v91(v90, enum case for WorkoutFeatures.Kahana(_:), v88);
  v92 = isFeatureEnabled(_:)();
  sub_100005A40(v132);
  v93 = v29;
  if (v92)
  {
    v133 = v88;
    v134 = v89;
    v94 = sub_100005994(v132);
    v91(v94, enum case for WorkoutFeatures.ManualLogging(_:), v88);
    v95 = isFeatureEnabled(_:)();
    sub_100005A40(v132);
    v93 = v29;
    if (v95)
    {
      v96 = [v29 navigationItem];
      v93 = [objc_allocWithZone(UIBarButtonItem) initWithBarButtonSystemItem:7 target:v29 action:"presentManualLoggingViewController"];

      [v96 setRightBarButtonItem:v93];
    }
  }

  sub_10059D990();
  v97 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v98 = swift_allocObject();
  *(v98 + 16) = sub_100282958;
  *(v98 + 24) = v97;
  v99 = OBJC_IVAR___CHHistoryDataProvider_onChangeHandlers;
  swift_beginAccess();
  v100 = *&v39[v99];
  swift_retain_n();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v39[v99] = v100;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v100 = sub_1001A1E7C(0, v100[2] + 1, 1, v100);
    *&v39[v99] = v100;
  }

  v103 = v100[2];
  v102 = v100[3];
  if (v103 >= v102 >> 1)
  {
    v100 = sub_1001A1E7C((v102 > 1), v103 + 1, 1, v100);
  }

  v100[2] = v103 + 1;
  v104 = &v100[2 * v103];
  v104[4] = sub_10039ECDC;
  v104[5] = v98;
  *&v39[v99] = v100;
  swift_endAccess();

  sub_10059CE6C();

  sub_10059D320(0, 1280);
  v105 = [v107 navigationController];
  [v105 pushViewController:v29 animated:a1 & 1];
}

void sub_10039885C(uint64_t a1)
{
  v2 = v1;
  v4 = objc_opt_self();
  sub_100140278(&qword_1008DE3E8, &unk_1006E33C0);
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  v7 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1006D46C0;
  (*(v6 + 16))(v8 + v7, a1, v5);
  sub_10029D44C(v8);
  swift_setDeallocating();
  (*(v6 + 8))(v8 + v7, v5);
  swift_deallocClassInstance();
  sub_10039D820(&qword_1008E4E10, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  isa = Set._bridgeToObjectiveC()().super.isa;

  v10 = [v4 predicateForObjectsWithUUIDs:isa];

  sub_1000059F8(0, &unk_1008E4060, HKCategoryType_ptr);
  v11 = HKCategoryType.init(_:)(HKCategoryTypeIdentifierMindfulSession).super.super.super.isa;
  v12 = swift_allocObject();
  *(v12 + 16) = v2;
  v13 = objc_allocWithZone(HKSampleQuery);
  v17[4] = sub_10039EA2C;
  v17[5] = v12;
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 1107296256;
  v17[2] = sub_10000DEE0;
  v17[3] = &unk_100854F68;
  v14 = _Block_copy(v17);
  v15 = v2;
  v16 = [v13 initWithSampleType:v11 predicate:v10 limit:1 sortDescriptors:0 resultsHandler:v14];

  _Block_release(v14);

  [*(*&v15[OBJC_IVAR____TtC10FitnessApp31ActivityDashboardViewController_context] + OBJC_IVAR____TtC10FitnessApp24ActivityDashboardContext_healthStore) executeQuery:v16];
}

void sub_100398B54(uint64_t a1, unint64_t a2, uint64_t a3, void *a4)
{
  v42 = a4;
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchQoS();
  v43 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Date();
  __chkstk_darwin(v12 - 8);
  __chkstk_darwin(v13);
  v14 = type metadata accessor for UUID();
  __chkstk_darwin(v14 - 8);
  if (a2)
  {
    if (a2 >> 62)
    {
      if (!_CocoaArrayWrapper.endIndex.getter())
      {
        return;
      }
    }

    else if (!*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      return;
    }

    if ((a2 & 0xC000000000000001) != 0)
    {
      v15 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (!*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        return;
      }

      v15 = *(a2 + 32);
    }

    v41 = v15;
    objc_opt_self();
    v16 = swift_dynamicCastObjCClass();
    if (v16)
    {
      v17 = v16;
      v38 = v9;
      v39 = v6;
      v40 = v5;
      v18 = v41;
      v19 = [v17 UUID];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v20 = v18;
      v21 = [v17 startDate];
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      v22 = [v17 endDate];
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      v23 = [v17 metadata];
      if (v23)
      {
        v24 = v23;
        v41 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
      }

      else
      {
        v41 = 0;
      }

      v26 = [v17 sourceRevision];

      sub_100140278(&unk_1008E4E20, &qword_1006D5040);
      v27 = swift_allocObject();
      *(v27 + 16) = xmmword_1006D4E70;
      *(v27 + 32) = v17;
      v28 = objc_allocWithZone(type metadata accessor for MindfulnessSessionViewModel());
      v29 = v20;
      v30 = MindfulnessSessionViewModel.init(uuid:startDate:endDate:duration:metadata:sourceRevision:mindfulnessSessions:)();
      sub_1000059F8(0, &qword_1008E3FD0, OS_dispatch_queue_ptr);
      v31 = static OS_dispatch_queue.main.getter();
      v32 = swift_allocObject();
      v33 = v42;
      *(v32 + 16) = v42;
      *(v32 + 24) = v30;
      aBlock[4] = sub_10039EA34;
      aBlock[5] = v32;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1000449A8;
      aBlock[3] = &unk_100854FB8;
      v34 = _Block_copy(aBlock);
      v35 = v33;
      v36 = v30;

      static DispatchQoS.unspecified.getter();
      aBlock[0] = _swiftEmptyArrayStorage;
      sub_10039D820(&qword_1008E33B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
      sub_100140278(&unk_1008E7F50, &qword_1006D8190);
      sub_100282B7C(&qword_1008E33C0, &unk_1008E7F50, &qword_1006D8190);
      v37 = v40;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v34);

      (*(v39 + 8))(v8, v37);
      (*(v43 + 8))(v11, v38);
    }

    else
    {
      v25 = v41;
    }
  }
}

uint64_t sub_100399214(uint64_t a1, uint64_t a2)
{
  v61 = a2;
  v3 = type metadata accessor for Date();
  v64 = *(v3 - 8);
  v65 = v3;
  __chkstk_darwin(v3);
  v60 = &v49 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100140278(&unk_1008EAEF0, &unk_1006E9510);
  __chkstk_darwin(v5 - 8);
  v54 = &v49 - v6;
  v7 = sub_100140278(&unk_1008EB5B0, &unk_1006D2BF0);
  __chkstk_darwin(v7 - 8);
  v51 = &v49 - v8;
  v9 = sub_100140278(&qword_1008E4DB0, &qword_1006E3370);
  __chkstk_darwin(v9 - 8);
  v11 = &v49 - v10;
  v12 = type metadata accessor for MetricPage();
  v62 = *(v12 - 8);
  v63 = v12;
  __chkstk_darwin(v12);
  v50 = &v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_100140278(&unk_1008E4DA0, &unk_1006E3360);
  __chkstk_darwin(v14 - 8);
  v16 = &v49 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v49 - v18;
  v20 = type metadata accessor for MetricClickElement();
  v21 = *(v20 - 8);
  v56 = v20;
  v57 = v21;
  __chkstk_darwin(v20);
  v23 = &v49 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = v23;
  v24 = type metadata accessor for MetricClickAction();
  v25 = *(v24 - 8);
  v58 = v24;
  v59 = v25;
  v26 = __chkstk_darwin(v24);
  v28 = &v49 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = v2;
  (*(v29 + 104))(v28, enum case for MetricClickAction.navigate(_:), v26);
  (*(v21 + 104))(v23, enum case for MetricClickElement.lockup(_:), v20);
  v30 = CatalogLockup.identifier.getter();
  v52 = v31;
  v53 = v30;
  v32 = enum case for MetricClickDestination.workout(_:);
  v33 = type metadata accessor for MetricClickDestination();
  v34 = *(v33 - 8);
  (*(v34 + 104))(v19, v32, v33);
  v35 = *(v34 + 56);
  v35(v19, 0, 1, v33);
  v36 = enum case for MetricPageCategory.summary(_:);
  v37 = type metadata accessor for MetricPageCategory();
  v38 = *(v37 - 8);
  (*(v38 + 104))(v11, v36, v37);
  (*(v38 + 56))(v11, 0, 1, v37);
  v39 = type metadata accessor for URL();
  (*(*(v39 - 8) + 56))(v51, 1, 1, v39);
  v35(v16, 1, 1, v33);
  v40 = type metadata accessor for MetricPlaybackEntitlement();
  (*(*(v40 - 8) + 56))(v54, 1, 1, v40);
  v41 = v50;
  MetricPage.init(pageIdentifier:pageType:pageContext:pageUrl:pageName:contentType:entitlementRequired:)();
  sub_100140278(&unk_1008EAF00, &qword_1006E3400);
  v42 = type metadata accessor for MetricLocation();
  v43 = *(v42 - 8);
  v44 = (*(v43 + 80) + 32) & ~*(v43 + 80);
  v45 = swift_allocObject();
  *(v45 + 16) = xmmword_1006D46C0;
  (*(v43 + 16))(v45 + v44, v61, v42);
  v66 = *(v49 + OBJC_IVAR____TtC10FitnessApp31ActivityDashboardViewController_impressionsTracker);

  v46 = v60;
  Date.init()();
  type metadata accessor for ActivityDashboardImpressionsTracker();
  sub_10039D820(&unk_1008EE690, type metadata accessor for ActivityDashboardImpressionsTracker, &unk_1006F50B4);
  MetricImpressionConsuming.snapshotOnScreenImpressions(on:)();
  (*(v64 + 8))(v46, v65);

  type metadata accessor for ActivityDashboardViewController(0);
  sub_10039D820(&unk_1008EAF10, type metadata accessor for ActivityDashboardViewController, &unk_1006F2890);
  v47 = v55;
  MetricClickPublishing.publishClick(actionType:targetType:targetIdentifier:targetIdentifierType:metricPage:locations:impressions:topicRoutingBehavior:)();

  (*(v62 + 8))(v41, v63);
  sub_10000EA04(v19, &unk_1008E4DA0, &unk_1006E3360);
  (*(v57 + 8))(v47, v56);
  return (*(v59 + 8))(v28, v58);
}

void sub_100399A2C()
{
  ObjectType = swift_getObjectType();
  v1 = sub_100140278(&qword_1008E4E80, &qword_100700A40);
  __chkstk_darwin(v1 - 8);
  v3 = &ObjectType - v2;
  v4 = type metadata accessor for CatalogTipSection(0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &ObjectType - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(*(*(v0 + OBJC_IVAR____TtC10FitnessApp31ActivityDashboardViewController_context) + OBJC_IVAR____TtC10FitnessApp24ActivityDashboardContext_catalogTipDataProvider) + 32);
  v9 = *(*v8 + class metadata base offset for ManagedBuffer + 16);
  v10 = (*(*v8 + 48) + 3) & 0x1FFFFFFFCLL;

  os_unfair_lock_lock((v8 + v10));
  v11 = type metadata accessor for CatalogTipActivityTileDataModel.State(0);
  sub_10001B104(v8 + *(v11 + 20) + v9, v3, &qword_1008E4E80, &qword_100700A40);
  os_unfair_lock_unlock((v8 + v10));

  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_10000EA04(v3, &qword_1008E4E80, &qword_100700A40);
    v12 = static os_log_type_t.default.getter();
    v13 = HKLogActivity;
    if (os_log_type_enabled(HKLogActivity, v12))
    {
      v14 = v13;
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v21 = v16;
      *v15 = 136315138;
      v17 = _typeName(_:qualified:)();
      v19 = sub_10000AFDC(v17, v18, &v21);

      *(v15 + 4) = v19;
      _os_log_impl(&_mh_execute_header, v14, v12, "%s No tip section identified. Unable to present CatalogTipPlayerPresenter.", v15, 0xCu);
      sub_100005A40(v16);
    }

    *(v0 + OBJC_IVAR____TtC10FitnessApp31ActivityDashboardViewController_awaitingPushForCardTypeFamily) = 4;
  }

  else
  {
    sub_100282AA8(v3, v7, type metadata accessor for CatalogTipSection);
    sub_100399D60(v7);
    sub_10039E9CC(v7, type metadata accessor for CatalogTipSection);
  }
}

uint64_t sub_100399D60(uint64_t a1)
{
  v32 = a1;
  v2 = sub_100140278(&unk_1008E4E70, &qword_1006EC9D0);
  __chkstk_darwin(v2 - 8);
  v41 = v29 - v3;
  v4 = type metadata accessor for URL();
  v39 = *(v4 - 8);
  v40 = v4;
  __chkstk_darwin(v4);
  v38 = v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100140278(&unk_1008EAF20, &unk_1006E33E0);
  __chkstk_darwin(v6 - 8);
  v35 = v29 - v7;
  v8 = type metadata accessor for CatalogTipPlayerOptions();
  v31 = *(v8 - 8);
  __chkstk_darwin(v8);
  v29[2] = v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = type metadata accessor for CatalogTipSummaryNavigationHandlers();
  v42 = *(v37 - 8);
  __chkstk_darwin(v37);
  v11 = v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for CatalogTipSection(0);
  v13 = v12 - 8;
  v14 = *(v12 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v12);
  sub_10039E0C4(a1, v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for CatalogTipSection);
  v16 = (*(v14 + 80) + 16) & ~*(v14 + 80);
  v17 = swift_allocObject();
  sub_100282AA8(v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), v17 + v16, type metadata accessor for CatalogTipSection);
  v36 = v17;

  v30 = v11;
  CatalogTipSummaryNavigationHandlers.init(onLearnMoreTapped:onSeeMoreTipsTapped:)();
  v34 = type metadata accessor for CatalogTipPlayerPresenter();
  v33 = *(*(*&v43[OBJC_IVAR____TtC10FitnessApp31ActivityDashboardViewController_context] + OBJC_IVAR____TtC10FitnessApp24ActivityDashboardContext_fitnessAppContext) + OBJC_IVAR___CHFitnessAppContext_dependencies);
  sub_100140278(&qword_1008E4E88, &qword_1006E33F0);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_1006D1F70;

  static CatalogTipPlayerOptions.summary.getter();
  static CatalogTipPlayerOptions.catalogSync.getter();
  v44 = v18;
  sub_10039D820(&qword_1008E4E90, &type metadata accessor for CatalogTipPlayerOptions, &protocol conformance descriptor for CatalogTipPlayerOptions);
  sub_100140278(&qword_1008E4E98, &qword_1006E33F8);
  sub_100282B7C(&unk_1008E4EA0, &qword_1008E4E98, &qword_1006E33F8);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v19 = v32 + *(v13 + 44);
  v20 = type metadata accessor for CatalogTipSectionItem(0);
  sub_10001B104(v19 + v20[8], v35, &unk_1008EAF20, &unk_1006E33E0);
  v21 = *(v19 + v20[9]);
  v31 = *(v19 + v20[10]);
  v32 = v21;
  v22 = v20[12];
  v29[1] = *(v19 + v20[11]);
  (*(v39 + 16))(v38, v19 + v22, v40);
  v24 = v41;
  v23 = v42;
  v25 = v37;
  (*(v42 + 16))(v41, v11, v37);
  (*(v23 + 56))(v24, 0, 1, v25);

  CatalogTipPlayerPresenter.__allocating_init(dependencies:metricTopicRoutingBehavior:options:pageContext:streamingArtwork:streamingArtworkCropCode:streamingSubtitle:streamingTitle:streamingURL:summaryNavigationHandlers:tipIdentifier:)();
  v26 = objc_allocWithZone(type metadata accessor for CatalogTipPlayerViewController());

  v27 = CatalogTipPlayerViewController.init(presenter:)();
  [v43 presentViewController:v27 animated:1 completion:0];

  return (*(v42 + 8))(v30, v25);
}

double sub_10039A3D8()
{
  v0 = sub_100140278(&qword_1008E1760, &qword_1006D4490);
  __chkstk_darwin(v0 - 8);
  v2 = &v7 - v1;
  v3 = type metadata accessor for TaskPriority();
  (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
  type metadata accessor for MainActor();
  v4 = static MainActor.shared.getter();
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = &protocol witness table for MainActor;
  sub_10026E198(0, 0, v2, &unk_1006EC9F8, v5);

  return result;
}

uint64_t sub_10039A4E4()
{
  v1 = type metadata accessor for URLComponents();
  v0[18] = v1;
  v0[19] = *(v1 - 8);
  v0[20] = swift_task_alloc();
  sub_100140278(&unk_1008EB5B0, &unk_1006D2BF0);
  v0[21] = swift_task_alloc();
  sub_100140278(&unk_1008EAF30, &qword_1006DE210);
  v0[22] = swift_task_alloc();
  type metadata accessor for MainActor();
  v0[23] = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  v0[24] = v3;
  v0[25] = v2;

  return _swift_task_switch(sub_10039A644, v3, v2);
}

uint64_t sub_10039A644()
{
  v1 = v0[22];
  v2 = v0[18];
  v3 = v0[19];
  URLComponents.init(string:)();
  v4 = *(v3 + 48);
  if (!v4(v1, 1, v2))
  {
    sub_100140278(&unk_1008EAF40, &unk_1006D6990);
    type metadata accessor for URLQueryItem();
    *(swift_allocObject() + 16) = xmmword_1006D46C0;
    URLQueryItem.init(name:value:)();
    URLComponents.queryItems.setter();
  }

  v5 = v0[22];
  v6 = v0[18];
  v7 = [objc_opt_self() sharedApplication];
  v0[26] = v7;
  if (v4(v5, 1, v6))
  {
    v8 = v0[21];
    v9 = type metadata accessor for URL();
    (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
    v10 = 0;
  }

  else
  {
    v11 = v0[21];
    v13 = v0[19];
    v12 = v0[20];
    v14 = v0[18];
    (*(v13 + 16))(v12, v0[22], v14);
    URLComponents.url.getter();
    (*(v13 + 8))(v12, v14);
    v15 = type metadata accessor for URL();
    v16 = *(v15 - 8);
    v10 = 0;
    if ((*(v16 + 48))(v11, 1, v15) != 1)
    {
      v18 = v0[21];
      URL._bridgeToObjectiveC()(v17);
      v10 = v19;
      (*(v16 + 8))(v18, v15);
    }
  }

  v0[27] = v10;
  v0[2] = v0;
  v0[7] = v0 + 28;
  v0[3] = sub_10039A9E4;
  v20 = swift_continuation_init();
  v0[17] = sub_100140278(&qword_1008E45C8, &unk_1006E2160);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_10039070C;
  v0[13] = &unk_100854E78;
  v0[14] = v20;
  [v7 openURL:v10 withCompletionHandler:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_10039A9E4()
{
  v1 = *(*v0 + 200);
  v2 = *(*v0 + 192);

  return _swift_task_switch(sub_10039AAEC, v2, v1);
}

uint64_t sub_10039AAEC()
{
  v2 = v0[26];
  v1 = v0[27];
  v3 = v0[22];

  sub_10000EA04(v3, &unk_1008EAF30, &qword_1006DE210);

  v4 = v0[1];

  return v4();
}

double sub_10039AB9C(uint64_t a1)
{
  v2 = type metadata accessor for CatalogTipSection(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100140278(&qword_1008E1760, &qword_1006D4490);
  __chkstk_darwin(v6 - 8);
  v8 = &v14 - v7;
  v9 = type metadata accessor for TaskPriority();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  sub_10039E0C4(a1, v5, type metadata accessor for CatalogTipSection);
  type metadata accessor for MainActor();
  v10 = static MainActor.shared.getter();
  v11 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = v10;
  *(v12 + 24) = &protocol witness table for MainActor;
  sub_100282AA8(v5, v12 + v11, type metadata accessor for CatalogTipSection);
  sub_10026E198(0, 0, v8, &unk_1006EC9E0, v12);

  return result;
}

uint64_t sub_10039AD7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[18] = a4;
  v5 = type metadata accessor for URLComponents();
  v4[19] = v5;
  v4[20] = *(v5 - 8);
  v4[21] = swift_task_alloc();
  sub_100140278(&unk_1008EB5B0, &unk_1006D2BF0);
  v4[22] = swift_task_alloc();
  sub_100140278(&unk_1008EAF30, &qword_1006DE210);
  v4[23] = swift_task_alloc();
  type metadata accessor for MainActor();
  v4[24] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[25] = v7;
  v4[26] = v6;

  return _swift_task_switch(sub_10039AEE0, v7, v6);
}

uint64_t sub_10039AEE0()
{
  v1 = v0 + 29;
  v2 = v0[23];
  v3 = v0[19];
  v4 = v0[20];
  URLComponents.init(string:)();
  v5 = *(v4 + 48);
  if (!v5(v2, 1, v3))
  {
    sub_100140278(&unk_1008EAF40, &unk_1006D6990);
    type metadata accessor for URLQueryItem();
    *(swift_allocObject() + 16) = xmmword_1006D64F0;
    URLQueryItem.init(name:value:)();
    ShelfDisplayStyle.rawValue.getter();
    URLQueryItem.init(name:value:)();

    type metadata accessor for CatalogTipSection(0);
    v1 = v0 + 29;
    URLQueryItem.init(name:value:)();
    URLComponents.queryItems.setter();
  }

  v6 = v0[23];
  v7 = v0[19];
  v8 = [objc_opt_self() sharedApplication];
  v0[27] = v8;
  if (v5(v6, 1, v7))
  {
    v9 = v0[22];
    v10 = type metadata accessor for URL();
    (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
    v11 = 0;
  }

  else
  {
    v12 = v0[22];
    v14 = v0[20];
    v13 = v0[21];
    v15 = v0[19];
    (*(v14 + 16))(v13, v0[23], v15);
    URLComponents.url.getter();
    (*(v14 + 8))(v13, v15);
    v16 = type metadata accessor for URL();
    v17 = *(v16 - 8);
    v11 = 0;
    if ((*(v17 + 48))(v12, 1, v16) != 1)
    {
      v19 = v0[22];
      URL._bridgeToObjectiveC()(v18);
      v11 = v20;
      (*(v17 + 8))(v19, v16);
    }
  }

  v0[28] = v11;
  v0[2] = v0;
  v0[7] = v1;
  v0[3] = sub_10039B30C;
  v21 = swift_continuation_init();
  v0[17] = sub_100140278(&qword_1008E45C8, &unk_1006E2160);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_10039070C;
  v0[13] = &unk_100854E28;
  v0[14] = v21;
  [v8 openURL:v11 withCompletionHandler:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_10039B30C()
{
  v1 = *(*v0 + 208);
  v2 = *(*v0 + 200);

  return _swift_task_switch(sub_10039B414, v2, v1);
}

uint64_t sub_10039B414()
{
  v2 = v0[27];
  v1 = v0[28];
  v3 = v0[23];

  sub_10000EA04(v3, &unk_1008EAF30, &qword_1006DE210);

  v4 = v0[1];

  return v4();
}

uint64_t sub_10039B4C4(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for Date();
  v70 = *(v3 - 8);
  v71 = v3;
  __chkstk_darwin(v3);
  v67 = &v53 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100140278(&unk_1008EAEF0, &unk_1006E9510);
  __chkstk_darwin(v5 - 8);
  v66 = &v53 - v6;
  v7 = sub_100140278(&unk_1008EB5B0, &unk_1006D2BF0);
  __chkstk_darwin(v7 - 8);
  v64 = &v53 - v8;
  v9 = sub_100140278(&qword_1008E4DB0, &qword_1006E3370);
  __chkstk_darwin(v9 - 8);
  v61 = &v53 - v10;
  v11 = type metadata accessor for MetricPage();
  v68 = *(v11 - 8);
  v69 = v11;
  __chkstk_darwin(v11);
  v63 = &v53 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_100140278(&unk_1008E4DA0, &unk_1006E3360);
  __chkstk_darwin(v13 - 8);
  v57 = &v53 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v72 = &v53 - v16;
  v17 = type metadata accessor for MetricClickAction();
  v75 = *(v17 - 8);
  v76 = v17;
  __chkstk_darwin(v17);
  v74 = &v53 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for MetricClickElement();
  v65 = *(v19 - 8);
  v20 = v65;
  __chkstk_darwin(v19);
  v22 = &v53 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = type metadata accessor for MetricLocation();
  v55 = *(v60 - 8);
  v56 = v60 - 8;
  v73 = v55;
  __chkstk_darwin(v60 - 8);
  v54 = &v53 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = a1 + *(type metadata accessor for CatalogTipSection(0) + 36);
  v25 = (v24 + *(type metadata accessor for CatalogTipSectionItem(0) + 28));
  v26 = v25[1];
  v59 = *v25;
  v58 = v26;

  v27 = ShelfLockupAttributedTagStrings.detail.getter();
  v28 = [v27 string];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v29 = enum case for MetricClickElement.button(_:);
  v30 = *(v20 + 104);
  v62 = v19;
  v30(v22, enum case for MetricClickElement.button(_:), v19);
  sub_1004A8614(_swiftEmptyArrayStorage);
  v31 = v22;
  MetricLocation.init(identifier:identifierType:index:name:elementType:entitlementRequired:contentType:metadata:)();
  v79 = v77;
  (*(v75 + 104))(v74, enum case for MetricClickAction.navigate(_:), v76);
  v30(v22, v29, v19);
  v32 = enum case for MetricClickDestination.trainerTip(_:);
  v33 = type metadata accessor for MetricClickDestination();
  v34 = *(v33 - 8);
  v35 = v72;
  (*(v34 + 104))(v72, v32, v33);
  v36 = *(v34 + 56);
  v36(v35, 0, 1, v33);
  v37 = enum case for MetricPageCategory.summary(_:);
  v38 = type metadata accessor for MetricPageCategory();
  v39 = *(v38 - 8);
  v40 = v61;
  (*(v39 + 104))(v61, v37, v38);
  (*(v39 + 56))(v40, 0, 1, v38);
  v41 = type metadata accessor for URL();
  (*(*(v41 - 8) + 56))(v64, 1, 1, v41);
  v36(v57, 1, 1, v33);
  v42 = type metadata accessor for MetricPlaybackEntitlement();
  (*(*(v42 - 8) + 56))(v66, 1, 1, v42);
  v43 = v63;
  MetricPage.init(pageIdentifier:pageType:pageContext:pageUrl:pageName:contentType:entitlementRequired:)();
  sub_100140278(&unk_1008EAF00, &qword_1006E3400);
  v44 = v73;
  v45 = (*(v73 + 80) + 32) & ~*(v73 + 80);
  v46 = swift_allocObject();
  *(v46 + 16) = xmmword_1006D46C0;
  v47 = v54;
  v48 = v60;
  (*(v44 + 16))(v46 + v45, v54, v60);
  v78 = *(v77 + OBJC_IVAR____TtC10FitnessApp31ActivityDashboardViewController_impressionsTracker);

  v49 = v67;
  Date.init()();
  type metadata accessor for ActivityDashboardImpressionsTracker();
  sub_10039D820(&unk_1008EE690, type metadata accessor for ActivityDashboardImpressionsTracker, &unk_1006F50B4);
  MetricImpressionConsuming.snapshotOnScreenImpressions(on:)();
  (*(v70 + 8))(v49, v71);

  type metadata accessor for ActivityDashboardViewController(0);
  sub_10039D820(&unk_1008EAF10, type metadata accessor for ActivityDashboardViewController, &unk_1006F2890);
  v50 = v74;
  v51 = v72;
  MetricClickPublishing.publishClick(actionType:targetType:targetIdentifier:targetIdentifierType:metricPage:locations:impressions:topicRoutingBehavior:)();

  (*(v68 + 8))(v43, v69);
  sub_10000EA04(v51, &unk_1008E4DA0, &unk_1006E3360);
  (*(v65 + 8))(v31, v62);
  (*(v75 + 8))(v50, v76);
  return (*(v73 + 8))(v47, v48);
}

void sub_10039BE54(char a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC10FitnessApp31ActivityDashboardViewController_context);
  v3 = *(v2 + OBJC_IVAR____TtC10FitnessApp24ActivityDashboardContext_healthStore);
  v4 = objc_opt_self();
  v66 = v3;
  v5 = [v4 sharedInstance];
  v6 = *(v2 + OBJC_IVAR____TtC10FitnessApp24ActivityDashboardContext_fiuiFormattingManager);
  v7 = *(v2 + OBJC_IVAR____TtC10FitnessApp24ActivityDashboardContext_trendsDataProvider);
  v8 = *(v2 + OBJC_IVAR____TtC10FitnessApp24ActivityDashboardContext_trendsFormattingManager);
  v9 = *(v2 + OBJC_IVAR____TtC10FitnessApp24ActivityDashboardContext_activityDataProvider);
  v63 = *(v2 + OBJC_IVAR____TtC10FitnessApp24ActivityDashboardContext_trendsUserFirstName);
  v57 = *(v2 + OBJC_IVAR____TtC10FitnessApp24ActivityDashboardContext_trendsUserFirstName + 8);
  v60 = *(v2 + OBJC_IVAR____TtC10FitnessApp24ActivityDashboardContext_trendsUserCharacteristics + 8);
  v61 = *(v2 + OBJC_IVAR____TtC10FitnessApp24ActivityDashboardContext_trendsUserCharacteristics);
  v58 = *(v2 + OBJC_IVAR____TtC10FitnessApp24ActivityDashboardContext_trendsUserCharacteristics + 16);
  v56 = *(*(v2 + OBJC_IVAR____TtC10FitnessApp24ActivityDashboardContext_fitnessAppContext) + OBJC_IVAR___CHFitnessAppContext_pregnancyStateProvider);

  v10 = v6;
  v11 = v7;
  v55 = v8;
  v12 = v9;
  v59 = v56;

  v65 = type metadata accessor for TrendsListViewController();
  v13 = objc_allocWithZone(v65);
  v13[OBJC_IVAR____TtC10FitnessApp24TrendsListViewController_initialAppearance] = 1;
  v14 = OBJC_IVAR____TtC10FitnessApp24TrendsListViewController_tableView;
  type metadata accessor for TrendListTableView();
  v15 = objc_opt_self();
  v16 = [v15 mainScreen];
  [v16 bounds];
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;

  v71.origin.x = v18;
  v71.origin.y = v20;
  v71.size.width = v22;
  v71.size.height = v24;
  Width = CGRectGetWidth(v71);
  v26 = [v15 mainScreen];
  [v26 bounds];
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v34 = v33;

  v72.origin.x = v28;
  v72.origin.y = v30;
  v72.size.width = v32;
  v72.size.height = v34;
  Height = CGRectGetHeight(v72);
  *&v13[v14] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithFrame:{0.0, 0.0, Width, Height}];
  v36 = OBJC_IVAR____TtC10FitnessApp24TrendsListViewController_isWheelchairUser;
  v13[OBJC_IVAR____TtC10FitnessApp24TrendsListViewController_isWheelchairUser] = 0;
  v37 = OBJC_IVAR____TtC10FitnessApp24TrendsListViewController_spinner;
  *&v13[v37] = [objc_allocWithZone(UIActivityIndicatorView) initWithActivityIndicatorStyle:101];
  v13[OBJC_IVAR____TtC10FitnessApp24TrendsListViewController_awaitingPushForTrendType] = 9;
  v13[OBJC_IVAR____TtC10FitnessApp24TrendsListViewController_dataDidLoad] = 0;
  *&v13[OBJC_IVAR____TtC10FitnessApp24TrendsListViewController_metricsByTrendType] = &_swiftEmptyDictionarySingleton;
  *&v13[OBJC_IVAR____TtC10FitnessApp24TrendsListViewController_dataProvider] = v11;
  *&v13[OBJC_IVAR____TtC10FitnessApp24TrendsListViewController_formattingManager] = v10;
  *&v13[OBJC_IVAR____TtC10FitnessApp24TrendsListViewController_trendsFormattingManager] = v55;
  *&v13[OBJC_IVAR____TtC10FitnessApp24TrendsListViewController_activityDataProvider] = v12;
  v38 = &v13[OBJC_IVAR____TtC10FitnessApp24TrendsListViewController_userFirstName];
  *v38 = v63;
  v38[1] = v57;
  v39 = &v13[OBJC_IVAR____TtC10FitnessApp24TrendsListViewController_userCharacteristics];
  *v39 = v61;
  *(v39 + 1) = v60;
  v39[16] = v58;
  v13[v36] = v12[OBJC_IVAR____TtC10FitnessApp20ActivityDataProvider_isWheelchairUser];
  *&v13[OBJC_IVAR____TtC10FitnessApp24TrendsListViewController_pregnancyStateProvider] = v56;
  v64 = v10;
  v62 = v11;
  v40 = v55;
  v41 = v12;
  v42 = v59;
  v43 = [v42 currentModel];
  v44 = v43;
  if (v43)
  {
    v45 = [v43 state];
  }

  else
  {
    v45 = 0;
  }

  v46 = &v13[OBJC_IVAR____TtC10FitnessApp24TrendsListViewController_pregnancyState];
  *v46 = v45;
  v46[8] = v44 == 0;
  v70.receiver = v13;
  v70.super_class = v65;
  v47 = objc_msgSendSuper2(&v70, "initWithNibName:bundle:", 0, 0);
  sub_1003B4194();
  v48 = *&v47[OBJC_IVAR____TtC10FitnessApp24TrendsListViewController_dataProvider];
  v49 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v50 = swift_allocObject();
  *(v50 + 16) = sub_10028317C;
  *(v50 + 24) = v49;
  v51 = OBJC_IVAR____TtC10FitnessApp18TrendsDataProvider_observers;
  swift_beginAccess();
  v52 = v48;
  swift_retain_n();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v69 = *&v48[v51];
  *&v48[v51] = 0x8000000000000000;
  sub_10048FCBC(sub_1002831F4, v50, v47, isUniquelyReferenced_nonNull_native);
  *&v48[v51] = v69;
  swift_endAccess();

  v54 = [v67 navigationController];
  [v54 pushViewController:v47 animated:a1 & 1];
}

void sub_10039C45C(uint64_t a1)
{
  v3 = *&v1[OBJC_IVAR____TtC10FitnessApp31ActivityDashboardViewController_context];
  [*(v3 + OBJC_IVAR____TtC10FitnessApp24ActivityDashboardContext_wheelchairUseCache) isWheelchairUser];
  v4 = [v1 navigationController];
  if (!v4)
  {
    return;
  }

  v5 = v4;
  v6 = [v4 viewControllers];

  sub_1000059F8(0, &qword_1008E4DD0, UIViewController_ptr);
  v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v7 >> 62)
  {
    v8 = _CocoaArrayWrapper.endIndex.getter();
    if (v8)
    {
LABEL_4:
      v9 = __OFSUB__(v8, 1);
      v10 = v8 - 1;
      if (v9)
      {
        __break(1u);
      }

      else if ((v7 & 0xC000000000000001) == 0)
      {
        if ((v10 & 0x8000000000000000) != 0)
        {
          __break(1u);
        }

        else if (v10 < *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          v11 = *(v7 + 8 * v10 + 32);
LABEL_9:
          v12 = v11;

          v13 = v1;
          v14 = static NSObject.== infix(_:_:)();

          if (v14)
          {
            v15 = *(v3 + OBJC_IVAR____TtC10FitnessApp24ActivityDashboardContext_trendsFormattingManager);
            v16 = *(v3 + OBJC_IVAR____TtC10FitnessApp24ActivityDashboardContext_trendsDataProvider);
            v17 = v15;
            sub_100351600(a1);
            v21 = v18;

            if (v21)
            {
              v19 = [v13 navigationController];
              if (v19)
              {
                v20 = v19;
                [v19 pushViewController:v21 animated:1];
              }
            }
          }

          return;
        }

        __break(1u);
        return;
      }

      v11 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      goto LABEL_9;
    }
  }

  else
  {
    v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v8)
    {
      goto LABEL_4;
    }
  }
}

void sub_10039C700(unint64_t a1, char a2)
{
  v4 = sub_10058431C(a1);
  if (v4 != 9)
  {
    v71 = a2;
    v72 = v4;
    v70 = v2;
    v5 = *&v2[OBJC_IVAR____TtC10FitnessApp31ActivityDashboardViewController_context];
    v6 = *(v5 + OBJC_IVAR____TtC10FitnessApp24ActivityDashboardContext_healthStore);
    v7 = objc_opt_self();
    v69 = v6;
    v8 = [v7 sharedInstance];
    v9 = *(v5 + OBJC_IVAR____TtC10FitnessApp24ActivityDashboardContext_fiuiFormattingManager);
    v10 = *(v5 + OBJC_IVAR____TtC10FitnessApp24ActivityDashboardContext_trendsDataProvider);
    v11 = *(v5 + OBJC_IVAR____TtC10FitnessApp24ActivityDashboardContext_trendsFormattingManager);
    v12 = *(v5 + OBJC_IVAR____TtC10FitnessApp24ActivityDashboardContext_activityDataProvider);
    v66 = *(v5 + OBJC_IVAR____TtC10FitnessApp24ActivityDashboardContext_trendsUserFirstName);
    v60 = *(v5 + OBJC_IVAR____TtC10FitnessApp24ActivityDashboardContext_trendsUserFirstName + 8);
    v63 = *(v5 + OBJC_IVAR____TtC10FitnessApp24ActivityDashboardContext_trendsUserCharacteristics + 8);
    v64 = *(v5 + OBJC_IVAR____TtC10FitnessApp24ActivityDashboardContext_trendsUserCharacteristics);
    v61 = *(v5 + OBJC_IVAR____TtC10FitnessApp24ActivityDashboardContext_trendsUserCharacteristics + 16);
    v59 = *(*(v5 + OBJC_IVAR____TtC10FitnessApp24ActivityDashboardContext_fitnessAppContext) + OBJC_IVAR___CHFitnessAppContext_pregnancyStateProvider);

    v13 = v9;
    v14 = v10;
    v58 = v11;
    v15 = v12;
    v62 = v59;

    v68 = type metadata accessor for TrendsListViewController();
    v16 = objc_allocWithZone(v68);
    v16[OBJC_IVAR____TtC10FitnessApp24TrendsListViewController_initialAppearance] = 1;
    v17 = OBJC_IVAR____TtC10FitnessApp24TrendsListViewController_tableView;
    type metadata accessor for TrendListTableView();
    v18 = objc_opt_self();
    v19 = [v18 mainScreen];
    [v19 bounds];
    v21 = v20;
    v23 = v22;
    v25 = v24;
    v27 = v26;

    v75.origin.x = v21;
    v75.origin.y = v23;
    v75.size.width = v25;
    v75.size.height = v27;
    Width = CGRectGetWidth(v75);
    v29 = [v18 mainScreen];
    [v29 bounds];
    v31 = v30;
    v33 = v32;
    v35 = v34;
    v37 = v36;

    v76.origin.x = v31;
    v76.origin.y = v33;
    v76.size.width = v35;
    v76.size.height = v37;
    Height = CGRectGetHeight(v76);
    *&v16[v17] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithFrame:{0.0, 0.0, Width, Height}];
    v39 = OBJC_IVAR____TtC10FitnessApp24TrendsListViewController_isWheelchairUser;
    v16[OBJC_IVAR____TtC10FitnessApp24TrendsListViewController_isWheelchairUser] = 0;
    v40 = OBJC_IVAR____TtC10FitnessApp24TrendsListViewController_spinner;
    *&v16[v40] = [objc_allocWithZone(UIActivityIndicatorView) initWithActivityIndicatorStyle:101];
    v16[OBJC_IVAR____TtC10FitnessApp24TrendsListViewController_awaitingPushForTrendType] = 9;
    v16[OBJC_IVAR____TtC10FitnessApp24TrendsListViewController_dataDidLoad] = 0;
    *&v16[OBJC_IVAR____TtC10FitnessApp24TrendsListViewController_metricsByTrendType] = &_swiftEmptyDictionarySingleton;
    *&v16[OBJC_IVAR____TtC10FitnessApp24TrendsListViewController_dataProvider] = v14;
    *&v16[OBJC_IVAR____TtC10FitnessApp24TrendsListViewController_formattingManager] = v13;
    *&v16[OBJC_IVAR____TtC10FitnessApp24TrendsListViewController_trendsFormattingManager] = v58;
    *&v16[OBJC_IVAR____TtC10FitnessApp24TrendsListViewController_activityDataProvider] = v15;
    v41 = &v16[OBJC_IVAR____TtC10FitnessApp24TrendsListViewController_userFirstName];
    *v41 = v66;
    v41[1] = v60;
    v42 = &v16[OBJC_IVAR____TtC10FitnessApp24TrendsListViewController_userCharacteristics];
    *v42 = v64;
    *(v42 + 1) = v63;
    v42[16] = v61;
    v16[v39] = v15[OBJC_IVAR____TtC10FitnessApp20ActivityDataProvider_isWheelchairUser];
    *&v16[OBJC_IVAR____TtC10FitnessApp24TrendsListViewController_pregnancyStateProvider] = v59;
    v67 = v13;
    v65 = v14;
    v43 = v58;
    v44 = v15;
    v45 = v62;
    v46 = [v45 currentModel];
    v47 = v46;
    if (v46)
    {
      v48 = [v46 state];
    }

    else
    {
      v48 = 0;
    }

    v49 = &v16[OBJC_IVAR____TtC10FitnessApp24TrendsListViewController_pregnancyState];
    *v49 = v48;
    v49[8] = v47 == 0;
    v74.receiver = v16;
    v74.super_class = v68;
    v50 = objc_msgSendSuper2(&v74, "initWithNibName:bundle:", 0, 0);
    sub_1003B4194();
    v51 = *&v50[OBJC_IVAR____TtC10FitnessApp24TrendsListViewController_dataProvider];
    v52 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v53 = swift_allocObject();
    *(v53 + 16) = sub_10028292C;
    *(v53 + 24) = v52;
    v54 = OBJC_IVAR____TtC10FitnessApp18TrendsDataProvider_observers;
    swift_beginAccess();
    v55 = v51;
    swift_retain_n();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v73 = *&v51[v54];
    *&v51[v54] = 0x8000000000000000;
    sub_10048FCBC(sub_10007BD60, v53, v50, isUniquelyReferenced_nonNull_native);
    *&v51[v54] = v73;
    swift_endAccess();

    v57 = [v70 navigationController];
    [v57 pushViewController:v50 animated:v71 & 1];

    sub_1003B2BB4(v72);
  }
}

double sub_10039CD30()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC10FitnessApp31ActivityDashboardViewController_context];
  type metadata accessor for LoadDetailViewControllerCoordinator(0);
  v3 = swift_allocObject();
  *(v3 + 24) = 0;
  v4 = OBJC_IVAR____TtC10FitnessApp35LoadDetailViewControllerCoordinator____lazy_storage___loadDetailView;
  DetailsView = type metadata accessor for LoadDetailsView(0);
  (*(*(DetailsView - 8) + 56))(v3 + v4, 1, 1, DetailsView);
  *(v3 + 16) = v2;
  v6 = v2;
  v7 = [v1 navigationController];
  if (v7)
  {
    v8 = v7;
    v9 = sub_10043B420();
    [v8 pushViewController:v9 animated:1];
  }

  return result;
}

void sub_10039CE78(uint64_t a1)
{
  v3 = type metadata accessor for URL();
  v4 = *(v3 - 8);
  *&v7 = __chkstk_darwin(a1).n128_u64[0];
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v5 > 9u)
  {
    if (v5 - 11 < 8)
    {
LABEL_7:

      sub_10038FF78(v5, 0, 0x100u);
      return;
    }

    if (v5 == 10)
    {
      v10 = [v1 navigateToTrophyCaseAnimated:1 initialAchievement:0 shouldShowCelebration:0 forModalPresentation:{0, v7}];
      goto LABEL_15;
    }

    sub_1005D4C54();
  }

  else
  {
    if (v5 > 4u)
    {
      if (v5 <= 7u)
      {
        if (v5 - 5 < 2)
        {
          v20 = *(*&v1[OBJC_IVAR____TtC10FitnessApp31ActivityDashboardViewController_context] + OBJC_IVAR____TtC10FitnessApp24ActivityDashboardContext_fitnessAppContext);
          sub_1005CE9AC();
          v11 = v20;
LABEL_16:

          return;
        }

        v12 = "showLoad";
        v13 = v1;

LABEL_25:
        [v13 v12];
        return;
      }

      if (v5 != 8)
      {
        v14 = ASActivityAppLaunchURLForSharingFriendList();
        static URL._unconditionallyBridgeFromObjectiveC(_:)();

        v15 = [objc_opt_self() sharedApplication];
        URL._bridgeToObjectiveC()(v16);
        v18 = v17;
        sub_1004C9534(_swiftEmptyArrayStorage);
        type metadata accessor for OpenExternalURLOptionsKey(0);
        sub_10039D820(&qword_1008F7990, type metadata accessor for OpenExternalURLOptionsKey, &unk_1006D3BFC);
        isa = Dictionary._bridgeToObjectiveC()().super.isa;

        [v15 openURL:v18 options:isa completionHandler:0];

        (*(v4 + 8))(v9, v3);
        return;
      }

      v12 = "showAllTrendsAnimated:";
LABEL_23:
      v13 = v1;
      v6 = 1;

      goto LABEL_25;
    }

    if (v5 <= 2u)
    {
      if (v5 - 1 >= 2)
      {
        v10 = [v1 showTodayAndShareImmediately:0 animated:1 forGoalCompleteNotification:0 goalRecommendation:{0, v7}];
LABEL_15:
        v11 = v10;
        goto LABEL_16;
      }

      goto LABEL_7;
    }

    if (v5 == 3)
    {
      v12 = "navigateToHistoryAnimated:";
      goto LABEL_23;
    }

    sub_100399A2C();
  }
}

void sub_10039D2D4(char a1, uint64_t a2)
{
  v3 = v2;
  v5 = type metadata accessor for Date();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v33[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  Date.init()();
  v9 = *&v3[OBJC_IVAR____TtC10FitnessApp31ActivityDashboardViewController_context];
  v10 = *(v9 + OBJC_IVAR____TtC10FitnessApp24ActivityDashboardContext_activityDataProvider);
  v11 = sub_1001E9F44();
  v12 = *&v10[OBJC_IVAR____TtC10FitnessApp20ActivityDataProvider_summaryCache];
  v13 = [v12 activitySummaryForCacheIndex:v11];

  if (v13)
  {
    v14 = &selRef__isStandalonePhoneSummary;
  }

  else
  {
    v15 = [objc_opt_self() sharedBehavior];
    if (!v15)
    {
      goto LABEL_10;
    }

    v13 = v15;
    v14 = &selRef_isStandalonePhoneFitnessMode;
  }

  v16 = [v13 *v14];

  v17 = [*(v9 + OBJC_IVAR____TtC10FitnessApp24ActivityDashboardContext_wheelchairUseCache) isWheelchairUser];
  v18 = *(v9 + OBJC_IVAR____TtC10FitnessApp24ActivityDashboardContext_pauseRingsCoordinator);
  v19 = type metadata accessor for PauseRingsViewController();
  v20 = objc_allocWithZone(v19);
  *&v20[OBJC_IVAR____TtC10FitnessApp24PauseRingsViewController_hostingController] = 0;
  v21 = &v20[OBJC_IVAR____TtC10FitnessApp24PauseRingsViewController____lazy_storage___pauseRingsView];
  *v21 = 0u;
  *(v21 + 1) = 0u;
  *(v21 + 2) = 0u;
  *(v21 + 6) = 0;
  *&v20[OBJC_IVAR____TtC10FitnessApp24PauseRingsViewController_pauseRingsCoordinator] = v18;
  v20[OBJC_IVAR____TtC10FitnessApp24PauseRingsViewController_isStandalone] = v16;
  v20[OBJC_IVAR____TtC10FitnessApp24PauseRingsViewController_isWheelchair] = v17;
  v20[OBJC_IVAR____TtC10FitnessApp24PauseRingsViewController_shouldShowEditFlow] = a1 & 1;
  v34.receiver = v20;
  v34.super_class = v19;
  v22 = v18;
  v23 = objc_msgSendSuper2(&v34, "initWithNibName:bundle:", 0, 0);
  sub_1003BFF20(v33);
  v24 = objc_allocWithZone(sub_100140278(&qword_1008EAF78, &qword_1006ECA18));
  v25 = UIHostingController.init(rootView:)();
  v26 = *&v23[OBJC_IVAR____TtC10FitnessApp24PauseRingsViewController_hostingController];
  *&v23[OBJC_IVAR____TtC10FitnessApp24PauseRingsViewController_hostingController] = v25;
  v27 = v25;

  v28 = v23;
  v29 = v27;
  [v28 addChildViewController:v29];
  v30 = [v28 view];

  if (v30)
  {
    v31 = [v29 view];

    if (v31)
    {
      [v30 addSubview:v31];

      [v3 presentViewController:v28 animated:1 completion:0];
      (*(v6 + 8))(v8, v5);
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
LABEL_10:
  __break(1u);
}

uint64_t sub_10039D820(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10039D868(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v33 = a4;
  v7 = sub_100140278(&qword_1008E1760, &qword_1006D4490);
  __chkstk_darwin(v7 - 8);
  v9 = &v32[-v8];
  v10 = type metadata accessor for AppStoreQuery();
  v39[4] = &off_10084CB18;
  v39[3] = v10;
  v39[0] = a1;
  v37 = &type metadata for RecentWorkoutAppQuery;
  v38 = &off_1008624B8;
  v36[0] = a2;
  type metadata accessor for AppRecommendationDataProvider();
  v11 = swift_allocObject();
  v12 = sub_1001DF03C(v39, v10);
  v13 = __chkstk_darwin(v12);
  v15 = &v32[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v16 + 16))(v15, v13);
  v17 = sub_1001DF03C(v36, v37);
  v18 = __chkstk_darwin(v17);
  v20 = &v32[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v21 + 16))(v20, v18);
  v22 = *v15;
  v23 = *v20;
  v35[3] = v10;
  v35[4] = &off_10084CB18;
  v34[4] = &off_1008624B8;
  v35[0] = v22;
  v34[3] = &type metadata for RecentWorkoutAppQuery;
  v34[0] = v23;
  swift_defaultActor_initialize();
  *(v11 + 112) = sub_1004CAB40(_swiftEmptyArrayStorage);
  sub_100007C5C(v35, v11 + 120);
  sub_100007C5C(v34, v11 + 160);
  *(v11 + 216) = 0;
  *(v11 + 224) = 0;
  *(v11 + 232) = 2;
  *(v11 + 200) = a3;
  *(v11 + 208) = v33 & 1;
  v24 = type metadata accessor for TaskPriority();
  (*(*(v24 - 8) + 56))(v9, 1, 1, v24);
  v25 = swift_allocObject();
  swift_weakInit();
  v26 = swift_allocObject();
  v26[2] = 0;
  v26[3] = 0;
  v26[4] = v25;
  v27 = sub_100653FFC(0, 0, v9, &unk_1006ECA20, v26);
  sub_100005A40(v34);
  sub_100005A40(v35);
  v28 = *(v11 + 216);
  v29 = *(v11 + 224);
  *(v11 + 216) = v27;
  *(v11 + 224) = 0;
  v30 = *(v11 + 232);
  *(v11 + 232) = 0;
  sub_10039EC30(v28, v29, v30);
  sub_100005A40(v36);
  sub_100005A40(v39);
  return v11;
}

uint64_t sub_10039DBCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_100140278(&qword_1008E0BC0, &qword_1006DC7C0);
  __chkstk_darwin(v7 - 8);
  v9 = &v19 - v8;
  v10 = type metadata accessor for FitnessPlusStackViewModel(0);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22[3] = a3;
  v22[4] = a4;
  v14 = sub_100005994(v22);
  (*(*(a3 - 8) + 16))(v14, a1, a3);
  sub_100007C5C(v22, v21);
  sub_100140278(&unk_1008E4E60, &qword_1006D8F30);
  sub_1000059F8(0, &qword_1008ED7C0, HKWorkout_ptr);
  if (swift_dynamicCast())
  {
    v15 = v20;
    sub_100394F20(v20, 0, 0, 0);
LABEL_5:

    return sub_100005A40(v22);
  }

  sub_100007C5C(v22, v21);
  type metadata accessor for MindfulnessSessionViewModel();
  if (swift_dynamicCast())
  {
    v15 = v20;
    sub_100395388(v20);
    goto LABEL_5;
  }

  sub_100007C5C(v22, v21);
  v17 = swift_dynamicCast();
  v18 = *(v11 + 56);
  if (v17)
  {
    v18(v9, 0, 1, v10);
    sub_100282AA8(v9, v13, type metadata accessor for FitnessPlusStackViewModel);
    sub_100395478(v13);
    sub_10039E9CC(v13, type metadata accessor for FitnessPlusStackViewModel);
  }

  else
  {
    v18(v9, 1, 1, v10);
    sub_10000EA04(v9, &qword_1008E0BC0, &qword_1006DC7C0);
  }

  return sub_100005A40(v22);
}

double sub_10039DE9C()
{
  v1 = *(type metadata accessor for CatalogTipSection(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_10039AB9C(v2);
}

uint64_t sub_10039DEFC(uint64_t a1)
{
  v4 = *(type metadata accessor for CatalogTipSection(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10002BACC;

  return sub_10039AD7C(a1, v6, v7, v1 + v5);
}

uint64_t sub_10039E018()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10002BBC0;

  return sub_10039A4E4();
}

uint64_t sub_10039E0C4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_10039E12C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = sub_100140278(&qword_1008E7F80, &qword_1006E86F0);
  __chkstk_darwin(v9 - 8);
  v11 = &v61 - v10;
  v12 = type metadata accessor for AAUIAwardsDataProviderSection();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v61 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v76 = &v61 - v17;

  v18 = sub_100074048(a1, a2);
  if (v18 == 8)
  {
    goto LABEL_13;
  }

  sub_1005C85CC(v18, v11);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_10000EA04(v11, &qword_1008E7F80, &qword_1006E86F0);
LABEL_13:

    return;
  }

  v19 = v13;
  v20 = *(v13 + 32);
  v21 = v76;
  v20(v76, v11, v12);
  v22 = [v4 navigateToTrophyCaseAnimated:0 initialAchievement:0 shouldShowCelebration:0 forModalPresentation:0];
  if (!v22)
  {
    (*(v19 + 8))(v21, v12);
    goto LABEL_13;
  }

  v23 = v22;
  if (!a4)
  {
    goto LABEL_11;
  }

  if (qword_1008DAC48 != -1)
  {
    swift_once();
  }

  v24 = sub_1004AD914(a3, a4);
  if (v24)
  {
    v75 = v24;
    v25 = [v24 unearned];
    v69 = v19;
    if (v25)
    {
      LODWORD(v73) = 0;
    }

    else
    {
      (*(v19 + 104))(v15, enum case for AAUIAwardsDataProviderSection.goForIt(_:), v12);
      sub_10039D820(&unk_1008E4DE0, &type metadata accessor for AAUIAwardsDataProviderSection, &protocol conformance descriptor for AAUIAwardsDataProviderSection);
      v26 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v19 + 8))(v15, v12);
      LODWORD(v73) = v26 ^ 1;
    }

    v72 = type metadata accessor for TrophyCaseAwardDetailViewController();
    v27 = *&v23[OBJC_IVAR____TtC10FitnessApp24TrophyCaseViewController_healthStore];
    v28 = *&v23[OBJC_IVAR____TtC10FitnessApp24TrophyCaseViewController_friendListManager];
    sub_100007C5C(&v23[OBJC_IVAR____TtC10FitnessApp24TrophyCaseViewController_achievementDataProvider], v77);
    v29 = *&v23[OBJC_IVAR____TtC10FitnessApp24TrophyCaseViewController_badgeImageFactory];
    v30 = *&v23[OBJC_IVAR____TtC10FitnessApp24TrophyCaseViewController_resourceProvider];
    v31 = *&v23[OBJC_IVAR____TtC10FitnessApp24TrophyCaseViewController_formattingManager];
    v32 = *&v23[OBJC_IVAR____TtC10FitnessApp24TrophyCaseViewController_pauseRingsCoordinator];
    v65 = *&v23[OBJC_IVAR____TtC10FitnessApp24TrophyCaseViewController_localizationProvider];
    v66 = v32;
    v33 = *&v23[OBJC_IVAR____TtC10FitnessApp24TrophyCaseViewController_workoutFormattingManager];
    v67 = *&v23[OBJC_IVAR____TtC10FitnessApp24TrophyCaseViewController_fitnessAppContext];
    v68 = v33;
    v34 = v78;
    v70 = *&v23[OBJC_IVAR____TtC10FitnessApp24TrophyCaseViewController_workoutDataProvider];
    v71 = v79;
    v35 = sub_1001DF03C(v77, v78);
    v74 = &v61;
    v36 = __chkstk_darwin(v35);
    v38 = &v61 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v39 + 16))(v38, v36);
    v64 = v27;
    v63 = v28;
    v62 = v29;
    v40 = v30;
    v61 = v31;
    v41 = v65;
    v42 = v66;
    v66 = v42;
    v43 = v67;
    v67 = v43;
    v44 = v68;
    v68 = v44;
    v45 = v70;
    v46 = v75;
    v60 = v34;
    v59 = v44;
    v57 = v42;
    v58 = v43;
    v48 = v63;
    v47 = v64;
    v49 = v38;
    v50 = v46;
    v51 = v61;
    v52 = v62;
    sub_1006524C4(v46, v64, v63, v49, v62, v40, v61, v41, v57, v58, v59, v45, 1, 0, v73 & 1, 1, 0, v72, v60, v71);
    v75 = v53;
    v73 = v50;

    sub_100005A40(v77);
    v54 = [v23 navigationController];
    if (v54)
    {
      v55 = v54;
      v56 = v75;
      [v54 pushViewController:v75 animated:0];

      (*(v69 + 8))(v76, v12);
    }

    else
    {
      (*(v69 + 8))(v76, v12);
    }
  }

  else
  {
LABEL_11:
    sub_100300064(v21);

    (*(v19 + 8))(v21, v12);
  }
}

void *sub_10039E7B4(void *result, void *a2, void *a3)
{
  if (result)
  {
    if (result == 2)
    {
      v9 = *(v3 + OBJC_IVAR____TtC10FitnessApp31ActivityDashboardViewController_transitionAnimatorFromViewController);
      if (!v9)
      {
        return 0;
      }

      v10 = v3;
      sub_1000059F8(0, &qword_1008E4DD0, UIViewController_ptr);
      v11 = v9;
      v12 = a3;
      v13 = static NSObject.== infix(_:_:)();

      if ((v13 & 1) == 0)
      {
        return 0;
      }

      v8 = *(v10 + OBJC_IVAR____TtC10FitnessApp31ActivityDashboardViewController_achievementTransitionAnimator);
      if (!v8)
      {
        return 0;
      }
    }

    else
    {
      if (result != 1)
      {
        v16 = static os_log_type_t.fault.getter();
        v17 = HKLogActivity;
        if (os_log_type_enabled(HKLogActivity, v16))
        {
          v18 = v17;
          v19 = swift_slowAlloc();
          v20 = swift_slowAlloc();
          v21 = v20;
          *v19 = 136315138;
          *(v19 + 4) = sub_10000AFDC(0xD000000000000037, 0x8000000100750B90, &v21);
          _os_log_impl(&_mh_execute_header, v18, v16, "%s found unexpected UINavigationController.Operation; skipping transition", v19, 0xCu);
          sub_100005A40(v20);
        }

        return 0;
      }

      type metadata accessor for TrophyCaseAwardDetailViewController();
      if (![a3 isKindOfClass:swift_getObjCClassFromMetadata()])
      {
        return 0;
      }

      type metadata accessor for ActivityDashboardViewController(0);
      if (![a2 isKindOfClass:swift_getObjCClassFromMetadata()])
      {
        return 0;
      }

      v6 = *(v3 + OBJC_IVAR____TtC10FitnessApp31ActivityDashboardViewController_transitionAnimatorFromViewController);
      *(v3 + OBJC_IVAR____TtC10FitnessApp31ActivityDashboardViewController_transitionAnimatorFromViewController) = a2;
      v7 = a2;

      v8 = *(v3 + OBJC_IVAR____TtC10FitnessApp31ActivityDashboardViewController_achievementTransitionAnimator);
      if (!v8)
      {
        return 0;
      }
    }

    v14 = v8;
    v15 = v8;
    return v14;
  }

  return result;
}

uint64_t sub_10039E9CC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_10039EA5C(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v7 = *(sub_100140278(&unk_1008DB8A0, qword_1006DBA20) - 8);
  v8 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v9 = (*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = *(v3 + v9);
  v11 = (v3 + ((v9 + 15) & 0xFFFFFFFFFFFFFFF8));
  v12 = *v11;
  v13 = v11[1];

  sub_100397060(a1, a2, a3, v3 + v8, v10, v12, v13);
}

uint64_t sub_10039EB7C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10002BACC;

  return sub_10052BED8(a1, v4, v5, v6);
}

void sub_10039EC30(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 == 1)
  {
  }

  else if (!a3)
  {
  }
}

uint64_t sub_10039ED48()
{
  v3 = (&async function pointer to dispatch thunk of WorkoutVoiceAvailabilityProvider.setupAvailabilityObservation() + async function pointer to dispatch thunk of WorkoutVoiceAvailabilityProvider.setupAvailabilityObservation());
  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_100223AEC;

  return v3();
}

id sub_10039EF70()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WorkoutVoiceAvailabilityProviderBridge();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_10039EFC8@<X0>(void *a1@<X8>)
{
  v2 = *(*v1 + OBJC_IVAR___CHWorkoutVoiceAvailabilityProvider_bridgedValue);
  *a1 = v2;
  return v2;
}

uint64_t sub_10039EFE0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10002BACC;

  return sub_10039ED28(a1, v4, v5, v6);
}

id sub_10039F094(uint64_t a1)
{
  v3 = type metadata accessor for SnapshotClient();
  __chkstk_darwin(v3 - 8);
  v4 = type metadata accessor for FitnessIntelligenceConnection();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for InferenceClient();
  v9 = __chkstk_darwin(v8 - 8);
  v10 = OBJC_IVAR___CHFitnessIntelligenceConnection_bridgedValue;
  v11 = *(v5 + 16);
  v11(v7, a1 + OBJC_IVAR___CHFitnessIntelligenceConnection_bridgedValue, v4, v9);
  InferenceClient.init(connection:)();
  (v11)(v7, a1 + v10, v4);
  SnapshotClient.init(connection:)();
  v12 = objc_allocWithZone(type metadata accessor for WorkoutVoiceAvailabilityProvider());
  *&v1[OBJC_IVAR___CHWorkoutVoiceAvailabilityProvider_bridgedValue] = WorkoutVoiceAvailabilityProvider.init(inferenceClient:snapshotClient:)();
  v13 = type metadata accessor for WorkoutVoiceAvailabilityProviderBridge();
  v15.receiver = v1;
  v15.super_class = v13;
  return objc_msgSendSuper2(&v15, "init");
}

id sub_10039F28C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *&v3[OBJC_IVAR___CHWorkoutVoiceOutroTableViewCell_hostingController] = 0;
  *&v3[OBJC_IVAR___CHWorkoutVoiceOutroTableViewCell_cellPadding] = 0x4028000000000000;
  *&v3[OBJC_IVAR___CHWorkoutVoiceOutroTableViewCell_cellInset] = 0x4030000000000000;
  if (a3)
  {
    v5 = String._bridgeToObjectiveC()();
  }

  else
  {
    v5 = 0;
  }

  v15.receiver = v3;
  v15.super_class = type metadata accessor for WorkoutVoiceOutroTableViewCell();
  v6 = objc_msgSendSuper2(&v15, "initWithStyle:reuseIdentifier:", a1, v5);

  v7 = objc_opt_self();
  sub_100140278(&unk_1008E4E20, &qword_1006D5040);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1006D4E70;
  v9 = v6;
  v10 = [v9 contentView];
  v11 = [v10 heightAnchor];

  v12 = [v11 constraintGreaterThanOrEqualToConstant:44.0];
  *(v8 + 32) = v12;
  sub_10019EC5C();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v7 activateConstraints:isa];

  return v9;
}

void sub_10039F4FC(uint64_t a1, void *a2)
{
  v3 = v2;
  v79 = a2;
  ObjectType = swift_getObjectType();
  v80 = type metadata accessor for Logger();
  v4 = *(v80 - 8);
  __chkstk_darwin(v80);
  v6 = &ObjectType - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for SummaryWorkoutVoiceOutroView();
  v81 = *(v7 - 8);
  v82 = v7;
  __chkstk_darwin(v7);
  v9 = &ObjectType - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &ObjectType - v11;
  v13 = type metadata accessor for WorkoutVoiceOutroState();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &ObjectType - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &ObjectType - v18;
  dispatch thunk of WorkoutSummaryDataSource.workoutVoiceOutroState.getter();
  v20 = (*(v14 + 104))(v16, enum case for WorkoutVoiceOutroState.unavailable(_:), v13);
  sub_10039FED8(v20, v21);
  v22 = dispatch thunk of static Equatable.== infix(_:_:)();
  v83 = *(v14 + 8);
  v84 = v14 + 8;
  v83(v16, v13);
  if (v22)
  {
    v78 = v19;
    static WOLog.workoutVoice.getter();
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v85[0] = v26;
      *v25 = 136315138;
      v85[1] = ObjectType;
      swift_getMetatypeMetadata();
      v27 = String.init<A>(describing:)();
      v29 = sub_10000AFDC(v27, v28, v85);

      *(v25 + 4) = v29;
      _os_log_impl(&_mh_execute_header, v23, v24, "[%s] No transcript due to unavailable state", v25, 0xCu);
      sub_100005A40(v26);
    }

    (*(v4 + 8))(v6, v80);
    v30 = v78;
    goto LABEL_18;
  }

  (*(v14 + 16))(v16, v19, v13);
  SummaryWorkoutVoiceOutroView.init(state:)();
  v31 = OBJC_IVAR___CHWorkoutVoiceOutroTableViewCell_hostingController;
  v32 = *&v3[OBJC_IVAR___CHWorkoutVoiceOutroTableViewCell_hostingController];
  if (v32)
  {
    v34 = v81;
    v33 = v82;
    (*(v81 + 16))(v9, v12, v82);
    v35 = v32;
    dispatch thunk of UIHostingController.rootView.setter();
    v36 = [v35 view];
    if (v36)
    {
      v37 = v36;
LABEL_17:
      [v37 layoutIfNeeded];

      (*(v34 + 8))(v12, v33);
      v30 = v19;
LABEL_18:
      v83(v30, v13);
      return;
    }

    __break(1u);
    goto LABEL_20;
  }

  (*(v81 + 16))(v9, v12, v82);
  v38 = objc_allocWithZone(sub_100140278(&qword_1008EB020, "fj\v"));
  v39 = UIHostingController.init(rootView:)();
  v40 = *&v3[v31];
  *&v3[v31] = v39;
  v41 = v39;

  v35 = v41;
  v42 = [v35 view];
  if (!v42)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v43 = v42;
  [v42 setTranslatesAutoresizingMaskIntoConstraints:0];

  v44 = [v35 view];
  if (!v44)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v45 = v44;
  v46 = [objc_opt_self() clearColor];
  [v45 setBackgroundColor:v46];

  v47 = [v3 contentView];
  v48 = [v35 view];
  if (!v48)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v49 = v48;
  v80 = v13;
  ObjectType = v12;
  v78 = v19;
  [v47 addSubview:v48];

  [v79 addChildViewController:v35];
  sub_100140278(&unk_1008E4E20, &qword_1006D5040);
  v50 = swift_allocObject();
  *(v50 + 16) = xmmword_1006D5300;
  v51 = [v35 view];
  if (!v51)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v52 = v51;
  v53 = [v51 topAnchor];

  v54 = [v3 contentView];
  v55 = [v54 topAnchor];

  v56 = [v53 constraintEqualToAnchor:v55 constant:12.0];
  *(v50 + 32) = v56;
  v57 = [v35 view];
  if (!v57)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v58 = v57;
  v59 = [v57 leadingAnchor];

  v60 = [v3 contentView];
  v61 = [v60 leadingAnchor];

  v62 = [v59 constraintEqualToAnchor:v61 constant:12.0];
  *(v50 + 40) = v62;
  v63 = [v35 view];
  if (!v63)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v64 = v63;
  v65 = [v63 trailingAnchor];

  v66 = [v3 contentView];
  v67 = [v66 trailingAnchor];

  v68 = [v65 constraintEqualToAnchor:v67 constant:-12.0];
  *(v50 + 48) = v68;
  v69 = [v35 view];
  if (!v69)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v70 = v69;
  v71 = objc_opt_self();
  v72 = [v70 bottomAnchor];

  v73 = [v3 contentView];
  v74 = [v73 bottomAnchor];

  v75 = [v72 constraintEqualToAnchor:v74 constant:-12.0];
  *(v50 + 56) = v75;
  sub_10019EC5C();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v71 activateConstraints:isa];

  [v35 didMoveToParentViewController:v79];
  v37 = [v35 view];

  if (v37)
  {
    v12 = ObjectType;
    v19 = v78;
    v34 = v81;
    v33 = v82;
    v13 = v80;
    goto LABEL_17;
  }

LABEL_27:
  __break(1u);
}

id sub_10039FE70(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for WorkoutVoiceOutroTableViewCell();
  return objc_msgSendSuper2(&v3, "dealloc");
}

unint64_t sub_10039FED8(uint64_t a1, uint64_t a2)
{
  result = qword_1008EB018;
  if (!qword_1008EB018)
  {
    type metadata accessor for WorkoutVoiceOutroState();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008EB018);
  }

  return result;
}

void sub_10039FF30()
{
  v0 = objc_opt_self();
  v1 = UIFontTextStyleBody;
  v2 = [v0 preferredFontForTextStyle:v1];

  qword_1008EB028 = v2;
}

uint64_t sub_10039FF9C()
{
  result = FIUICurrentLanguageRequiresTallScript();
  v1 = 0.0;
  if (result)
  {
    v1 = 5.0;
  }

  qword_1008EB030 = *&v1;
  return result;
}

char *sub_10039FFCC()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC10FitnessApp19StackDetailItemView_titleLabel;
  v3 = [objc_allocWithZone(UILabel) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  if (qword_1008DA998 != -1)
  {
    swift_once();
  }

  v4 = UILabel.withFont(_:)();

  [v4 setLineBreakMode:0];
  [v4 setNumberOfLines:0];
  v5 = [objc_opt_self() whiteColor];
  v6 = UILabel.withTextColor(_:)();

  [v6 setTranslatesAutoresizingMaskIntoConstraints:0];
  *&v1[v2] = v6;
  v7 = OBJC_IVAR____TtC10FitnessApp19StackDetailItemView_subtitleLabel;
  v8 = [objc_allocWithZone(UILabel) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  [v8 setTranslatesAutoresizingMaskIntoConstraints:0];
  *&v1[v7] = v8;
  v13.receiver = v1;
  v13.super_class = type metadata accessor for StackDetailItemView();
  v9 = objc_msgSendSuper2(&v13, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v10 = *&v9[OBJC_IVAR____TtC10FitnessApp19StackDetailItemView_titleLabel];
  v11 = v9;
  [v11 addSubview:v10];
  [v11 addSubview:*&v11[OBJC_IVAR____TtC10FitnessApp19StackDetailItemView_subtitleLabel]];
  sub_1003A01C0();

  return v11;
}

void sub_1003A01C0()
{
  v1 = v0;
  v26 = objc_opt_self();
  sub_100140278(&unk_1008E4E20, &qword_1006D5040);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1006D9800;
  v3 = *&v1[OBJC_IVAR____TtC10FitnessApp19StackDetailItemView_titleLabel];
  v4 = [v3 topAnchor];
  v5 = [v1 topAnchor];
  if (qword_1008DA9A0 != -1)
  {
    swift_once();
  }

  v6 = [v4 constraintEqualToAnchor:v5 constant:{*&qword_1008EB030, v26}];

  *(v2 + 32) = v6;
  v7 = [v3 leadingAnchor];
  v8 = [v1 leadingAnchor];
  v9 = [v7 constraintEqualToAnchor:v8];

  *(v2 + 40) = v9;
  v10 = [v3 trailingAnchor];
  v11 = [v1 trailingAnchor];
  v12 = [v10 constraintEqualToAnchor:v11];

  *(v2 + 48) = v12;
  v13 = *&v1[OBJC_IVAR____TtC10FitnessApp19StackDetailItemView_subtitleLabel];
  v14 = [v13 topAnchor];
  v15 = [v3 bottomAnchor];
  v16 = [v14 constraintEqualToAnchor:v15];

  *(v2 + 56) = v16;
  v17 = [v13 leadingAnchor];
  v18 = [v1 leadingAnchor];
  v19 = [v17 constraintEqualToAnchor:v18];

  *(v2 + 64) = v19;
  v20 = [v13 trailingAnchor];
  v21 = [v1 trailingAnchor];
  v22 = [v20 constraintEqualToAnchor:v21];

  *(v2 + 72) = v22;
  v23 = [v13 bottomAnchor];
  v24 = [v1 bottomAnchor];
  v25 = [v23 constraintEqualToAnchor:v24];

  *(v2 + 80) = v25;
  sub_10019EC5C();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v27 activateConstraints:isa];
}

void sub_1003A05B8(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(double))
{
  v8 = *(v5 + OBJC_IVAR____TtC10FitnessApp19StackDetailItemView_titleLabel);
  v9 = [objc_opt_self() mainBundle];
  v10 = String._bridgeToObjectiveC()();
  v11 = [v9 localizedStringForKey:v10 value:0 table:0];

  if (!v11)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = String._bridgeToObjectiveC()();
  }

  [v8 setText:v11];
  v12 = *(v5 + OBJC_IVAR____TtC10FitnessApp19StackDetailItemView_subtitleLabel);
  v13 = a5(a1);
  [v12 setAttributedText:v13];
}

id sub_1003A0758(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for StackDetailItemView();
  return objc_msgSendSuper2(&v3, "dealloc");
}

void sub_1003A07FC()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC10FitnessApp19StackDetailItemView_titleLabel;
  v3 = [objc_allocWithZone(UILabel) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  if (qword_1008DA998 != -1)
  {
    swift_once();
  }

  v4 = UILabel.withFont(_:)();

  [v4 setLineBreakMode:0];
  [v4 setNumberOfLines:0];
  v5 = [objc_opt_self() whiteColor];
  v6 = UILabel.withTextColor(_:)();

  [v6 setTranslatesAutoresizingMaskIntoConstraints:0];
  *(v1 + v2) = v6;
  v7 = OBJC_IVAR____TtC10FitnessApp19StackDetailItemView_subtitleLabel;
  v8 = [objc_allocWithZone(UILabel) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  [v8 setTranslatesAutoresizingMaskIntoConstraints:0];
  *(v1 + v7) = v8;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void sub_1003A09AC()
{
  v0 = objc_opt_self();
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 __systemImageNamedSwift:v1];

  if (v2)
  {
    if (qword_1008DA9B0 != -1)
    {
      swift_once();
    }

    v3 = qword_1008EB078;
    v4 = [v2 imageWithSymbolConfiguration:v3];
  }

  else
  {
    v4 = 0;
  }

  qword_1008EB070 = v4;
}

id sub_1003A0ACC(uint64_t *a1, SEL *a2)
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = *(v2 + *a1);
  }

  else
  {
    v6 = [*(v2 + OBJC_IVAR____TtC10FitnessApp43AppStoreAppRecommendationCollectionViewCell_iconImageView) *a2];
    v7 = [v6 constraintEqualToConstant:46.0];

    v8 = *(v2 + v3);
    *(v2 + v3) = v7;
    v5 = v7;

    v4 = 0;
  }

  v9 = v4;
  return v5;
}

id sub_1003A0B70()
{
  result = [objc_opt_self() _configurationWithPointSize:13.0];
  qword_1008EB078 = result;
  return result;
}

void sub_1003A0BB0()
{
  v0 = objc_opt_self();
  v1 = UIFontTextStyleBody;
  v2 = [v0 defaultFontForTextStyle:v1];

  if (v2)
  {
    v3 = [v2 fu_fontWithSize:13.0];

    qword_1008EB080 = v3;
  }

  else
  {
    __break(1u);
  }
}

void sub_1003A0C48()
{
  sub_1000059F8(0, &qword_1008F73C0, UIFont_ptr);
  v0 = UIFontDescriptorSystemDesignRounded;
  v1 = static UIFont.systemFont(ofSize:weight:design:)();

  qword_1008EB088 = v1;
}

char *sub_1003A0CCC(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v10 = OBJC_IVAR____TtC10FitnessApp43AppStoreAppRecommendationCollectionViewCell_insetContentView;
  v11 = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v12 = sub_100046170();
  [v11 setBackgroundColor:v12];

  [v11 setTranslatesAutoresizingMaskIntoConstraints:0];
  *&v5[v10] = v11;
  v13 = OBJC_IVAR____TtC10FitnessApp43AppStoreAppRecommendationCollectionViewCell_iconImageView;
  v14 = [objc_allocWithZone(UIImageView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v15 = UIView.withContentMode(_:)();

  v16 = [v15 layer];
  [v16 setCornerRadius:8.0];

  [v15 setClipsToBounds:1];
  [v15 setTranslatesAutoresizingMaskIntoConstraints:0];
  *&v5[v13] = v15;
  v17 = OBJC_IVAR____TtC10FitnessApp43AppStoreAppRecommendationCollectionViewCell_labelStackView;
  v18 = [objc_allocWithZone(UIStackView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  [v18 setAxis:1];
  [v18 setDistribution:3];
  [v18 setTranslatesAutoresizingMaskIntoConstraints:0];
  *&v5[v17] = v18;
  v19 = OBJC_IVAR____TtC10FitnessApp43AppStoreAppRecommendationCollectionViewCell_titleLabel;
  v20 = [objc_allocWithZone(UILabel) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  LODWORD(v21) = 1148846080;
  [v20 setContentCompressionResistancePriority:1 forAxis:v21];
  [v20 setLineBreakMode:0];
  [v20 setNumberOfLines:2];
  [v20 setTranslatesAutoresizingMaskIntoConstraints:0];
  if (qword_1008DA9B8 != -1)
  {
    swift_once();
  }

  [v20 setFont:qword_1008EB080];
  v22 = objc_opt_self();
  v23 = [v22 labelColor];
  v24 = UILabel.withTextColor(_:)();

  *&v5[v19] = v24;
  v25 = OBJC_IVAR____TtC10FitnessApp43AppStoreAppRecommendationCollectionViewCell_subtitleLabel;
  v26 = [objc_allocWithZone(UILabel) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  [v26 setTranslatesAutoresizingMaskIntoConstraints:0];
  if (qword_1008DA9C0 != -1)
  {
    swift_once();
  }

  v27 = UILabel.withFont(_:)();

  v28 = [v22 secondaryLabelColor];
  v29 = UILabel.withTextColor(_:)();

  *&v5[v25] = v29;
  v30 = OBJC_IVAR____TtC10FitnessApp43AppStoreAppRecommendationCollectionViewCell_chevronImageView;
  v31 = [objc_allocWithZone(UIImageView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v32 = [v22 tertiaryLabelColor];
  [v31 setTintColor:v32];

  if (qword_1008DA9A8 != -1)
  {
    swift_once();
  }

  [v31 setImage:qword_1008EB070];
  [v31 setTranslatesAutoresizingMaskIntoConstraints:0];

  *&v5[v30] = v31;
  *&v5[OBJC_IVAR____TtC10FitnessApp43AppStoreAppRecommendationCollectionViewCell____lazy_storage___imageViewWidthConstraint] = 0;
  *&v5[OBJC_IVAR____TtC10FitnessApp43AppStoreAppRecommendationCollectionViewCell____lazy_storage___imageViewHeightConstraint] = 0;
  v41.receiver = v5;
  v41.super_class = type metadata accessor for AppStoreAppRecommendationCollectionViewCell();
  v33 = objc_msgSendSuper2(&v41, "initWithFrame:", a1, a2, a3, a4);
  v34 = OBJC_IVAR____TtC10FitnessApp43AppStoreAppRecommendationCollectionViewCell_labelStackView;
  v35 = *&v33[OBJC_IVAR____TtC10FitnessApp43AppStoreAppRecommendationCollectionViewCell_labelStackView];
  v36 = *&v33[OBJC_IVAR____TtC10FitnessApp43AppStoreAppRecommendationCollectionViewCell_titleLabel];
  v37 = v33;
  [v35 addArrangedSubview:v36];
  [*&v33[v34] addArrangedSubview:*&v37[OBJC_IVAR____TtC10FitnessApp43AppStoreAppRecommendationCollectionViewCell_subtitleLabel]];
  v38 = OBJC_IVAR____TtC10FitnessApp43AppStoreAppRecommendationCollectionViewCell_insetContentView;
  [*&v37[OBJC_IVAR____TtC10FitnessApp43AppStoreAppRecommendationCollectionViewCell_insetContentView] addSubview:*&v33[v34]];
  [*&v37[v38] addSubview:*&v37[OBJC_IVAR____TtC10FitnessApp43AppStoreAppRecommendationCollectionViewCell_chevronImageView]];
  [*&v37[v38] addSubview:*&v37[OBJC_IVAR____TtC10FitnessApp43AppStoreAppRecommendationCollectionViewCell_iconImageView]];
  v39 = [v37 contentView];
  [v39 addSubview:*&v37[v38]];

  sub_1003A1254();
  return v37;
}

void sub_1003A1254()
{
  v49 = objc_opt_self();
  sub_100140278(&unk_1008E4E20, &qword_1006D5040);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1006E1300;
  v2 = *&v0[OBJC_IVAR____TtC10FitnessApp43AppStoreAppRecommendationCollectionViewCell_insetContentView];
  v3 = [v2 topAnchor];
  v4 = [v0 contentView];
  v5 = [v4 topAnchor];

  v6 = [v3 constraintEqualToAnchor:v5 constant:0.0];
  *(v1 + 32) = v6;
  v7 = [v2 leadingAnchor];
  v8 = [v0 contentView];
  v9 = [v8 leadingAnchor];

  v10 = [v7 constraintEqualToAnchor:v9 constant:0.0];
  *(v1 + 40) = v10;
  v11 = [v2 trailingAnchor];
  v12 = [v0 contentView];
  v13 = [v12 trailingAnchor];

  v14 = [v11 constraintEqualToAnchor:v13 constant:0.0];
  *(v1 + 48) = v14;
  v15 = [v2 bottomAnchor];
  v16 = [v0 contentView];
  v17 = [v16 bottomAnchor];

  v18 = [v15 constraintEqualToAnchor:v17 constant:0.0];
  *(v1 + 56) = v18;
  v19 = *&v0[OBJC_IVAR____TtC10FitnessApp43AppStoreAppRecommendationCollectionViewCell_iconImageView];
  v20 = [v19 leadingAnchor];
  v21 = [v2 leadingAnchor];
  v22 = [v20 constraintEqualToAnchor:v21 constant:16.0];

  *(v1 + 64) = v22;
  v23 = [v19 centerYAnchor];
  v24 = *&v0[OBJC_IVAR____TtC10FitnessApp43AppStoreAppRecommendationCollectionViewCell_labelStackView];
  v25 = [v24 centerYAnchor];
  v26 = [v23 constraintEqualToAnchor:v25];

  *(v1 + 72) = v26;
  *(v1 + 80) = sub_1003A0AA4();
  *(v1 + 88) = sub_1003A0AB8();
  v27 = [v24 topAnchor];
  v28 = [v2 topAnchor];
  v29 = [v27 constraintEqualToAnchor:v28 constant:19.0];

  *(v1 + 96) = v29;
  v30 = [v24 leadingAnchor];
  v31 = [v19 trailingAnchor];
  v32 = [v30 constraintEqualToAnchor:v31 constant:9.0];

  *(v1 + 104) = v32;
  v33 = [v24 trailingAnchor];
  v34 = [v2 trailingAnchor];
  v35 = [v33 constraintLessThanOrEqualToAnchor:v34 constant:-16.0];

  *(v1 + 112) = v35;
  v36 = [v24 bottomAnchor];
  v37 = [v2 bottomAnchor];
  v38 = [v36 constraintEqualToAnchor:v37 constant:-19.0];

  *(v1 + 120) = v38;
  v39 = [*&v0[OBJC_IVAR____TtC10FitnessApp43AppStoreAppRecommendationCollectionViewCell_subtitleLabel] topAnchor];
  v40 = [*&v0[OBJC_IVAR____TtC10FitnessApp43AppStoreAppRecommendationCollectionViewCell_titleLabel] bottomAnchor];
  v41 = [v39 constraintEqualToAnchor:v40];

  *(v1 + 128) = v41;
  v42 = *&v0[OBJC_IVAR____TtC10FitnessApp43AppStoreAppRecommendationCollectionViewCell_chevronImageView];
  v43 = [v42 trailingAnchor];
  v44 = [v2 trailingAnchor];
  v45 = [v43 constraintEqualToAnchor:v44 constant:-16.0];

  *(v1 + 136) = v45;
  v46 = [v42 centerYAnchor];
  v47 = [v2 centerYAnchor];
  v48 = [v46 constraintEqualToAnchor:v47];

  *(v1 + 144) = v48;
  sub_1000059F8(0, &qword_1008DC980, NSLayoutConstraint_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v49 activateConstraints:isa];
}

uint64_t sub_1003A18D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  type metadata accessor for MainActor();
  v6[5] = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  v6[6] = v8;
  v6[7] = v7;

  return _swift_task_switch(sub_1003A196C, v8, v7);
}

uint64_t sub_1003A196C()
{
  v1 = v0[3];
  v2 = *(v0[2] + OBJC_IVAR____TtC10FitnessApp43AppStoreAppRecommendationCollectionViewCell_iconImageView);
  v0[8] = v2;
  [v2 size];
  v4 = v3;
  v6 = v5;
  v7 = [objc_opt_self() mainScreen];
  v8 = [v7 traitCollection];

  [v8 displayScale];
  v10 = v9;

  sub_1000066AC(v1, v1[3]);
  v11 = swift_task_alloc();
  v0[9] = v11;
  *v11 = v0;
  v11[1] = sub_1003A1AAC;
  v12 = v0[4];

  return sub_10052CCC8(v12, v4, v6, v10);
}

uint64_t sub_1003A1AAC(uint64_t a1)
{
  v4 = *v2;

  if (v1)
  {

    v5 = v4[6];
    v6 = v4[7];
    v7 = sub_1003A1C58;
  }

  else
  {
    v4[10] = a1;
    v5 = v4[6];
    v6 = v4[7];
    v7 = sub_1003A1BD8;
  }

  return _swift_task_switch(v7, v5, v6);
}

uint64_t sub_1003A1BD8()
{
  v1 = v0[10];
  v2 = v0[8];

  [v2 setImage:v1];

  v3 = v0[1];

  return v3();
}

uint64_t sub_1003A1C58()
{

  v1 = *(v0 + 8);

  return v1();
}

id sub_1003A1D98(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for AppStoreAppRecommendationCollectionViewCell();
  return objc_msgSendSuper2(&v4, "dealloc");
}

void sub_1003A1E9C()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC10FitnessApp43AppStoreAppRecommendationCollectionViewCell_insetContentView;
  v3 = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v4 = sub_100046170();
  [v3 setBackgroundColor:v4];

  [v3 setTranslatesAutoresizingMaskIntoConstraints:0];
  *(v1 + v2) = v3;
  v5 = OBJC_IVAR____TtC10FitnessApp43AppStoreAppRecommendationCollectionViewCell_iconImageView;
  v6 = [objc_allocWithZone(UIImageView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v7 = UIView.withContentMode(_:)();

  v8 = [v7 layer];
  [v8 setCornerRadius:8.0];

  [v7 setClipsToBounds:1];
  [v7 setTranslatesAutoresizingMaskIntoConstraints:0];
  *(v1 + v5) = v7;
  v9 = OBJC_IVAR____TtC10FitnessApp43AppStoreAppRecommendationCollectionViewCell_labelStackView;
  v10 = [objc_allocWithZone(UIStackView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  [v10 setAxis:1];
  [v10 setDistribution:3];
  [v10 setTranslatesAutoresizingMaskIntoConstraints:0];
  *(v1 + v9) = v10;
  v11 = OBJC_IVAR____TtC10FitnessApp43AppStoreAppRecommendationCollectionViewCell_titleLabel;
  v12 = [objc_allocWithZone(UILabel) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  LODWORD(v13) = 1148846080;
  [v12 setContentCompressionResistancePriority:1 forAxis:v13];
  [v12 setLineBreakMode:0];
  [v12 setNumberOfLines:2];
  [v12 setTranslatesAutoresizingMaskIntoConstraints:0];
  if (qword_1008DA9B8 != -1)
  {
    swift_once();
  }

  [v12 setFont:qword_1008EB080];
  v14 = objc_opt_self();
  v15 = [v14 labelColor];
  v16 = UILabel.withTextColor(_:)();

  *(v1 + v11) = v16;
  v17 = OBJC_IVAR____TtC10FitnessApp43AppStoreAppRecommendationCollectionViewCell_subtitleLabel;
  v18 = [objc_allocWithZone(UILabel) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  [v18 setTranslatesAutoresizingMaskIntoConstraints:0];
  if (qword_1008DA9C0 != -1)
  {
    swift_once();
  }

  v19 = UILabel.withFont(_:)();

  v20 = [v14 secondaryLabelColor];
  v21 = UILabel.withTextColor(_:)();

  *(v1 + v17) = v21;
  v22 = OBJC_IVAR____TtC10FitnessApp43AppStoreAppRecommendationCollectionViewCell_chevronImageView;
  v23 = [objc_allocWithZone(UIImageView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v24 = [v14 tertiaryLabelColor];
  [v23 setTintColor:v24];

  if (qword_1008DA9A8 != -1)
  {
    swift_once();
  }

  [v23 setImage:qword_1008EB070];
  [v23 setTranslatesAutoresizingMaskIntoConstraints:0];

  *(v1 + v22) = v23;
  *(v1 + OBJC_IVAR____TtC10FitnessApp43AppStoreAppRecommendationCollectionViewCell____lazy_storage___imageViewWidthConstraint) = 0;
  *(v1 + OBJC_IVAR____TtC10FitnessApp43AppStoreAppRecommendationCollectionViewCell____lazy_storage___imageViewHeightConstraint) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

Swift::Int sub_1003A230C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v65 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100140278(&unk_1008F73A0, &unk_1006DB450);
  __chkstk_darwin(v8 - 8);
  v10 = &v65 - v9;
  Hasher.init()();
  v11 = type metadata accessor for ActivityRingsCard(0);
  v12 = (v2 + v11[5]);
  v13 = *v12;
  v14 = *(v12 + 16);
  sub_100035B30(*v12, *(v12 + 16));
  String.hash(into:)();

  if (!v14 || v14 == 2)
  {
    Hasher._combine(_:)(v13);
  }

  else if (v14 == 1)
  {
    String.hash(into:)();
  }

  Hasher._combine(_:)(*(v3 + v11[6]));
  Hasher._combine(_:)(*(v3 + v11[7]));
  sub_1001CE7A0(v3 + v11[10], v10);
  if ((*(v5 + 48))(v10, 1, v4) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    (*(v5 + 32))(v7, v10, v4);
    Hasher._combine(_:)(1u);
    sub_10008192C(&qword_1008DEF18, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    dispatch thunk of Hashable.hash(into:)();
    (*(v5 + 8))(v7, v4);
  }

  v15 = *(v3 + v11[9]);
  v16 = &selRef_initWithLayer_;
  if (!v15)
  {
    Hasher._combine(_:)(0);
    Hasher._combine(_:)(0);
    Hasher._combine(_:)(0);
    Hasher._combine(_:)(0);
    Hasher._combine(_:)(0);
    Hasher._combine(_:)(0);
    Hasher._combine(_:)(0);
    Hasher._combine(_:)(0);
    Hasher._combine(_:)(0);
    Hasher._combine(_:)(0);
LABEL_40:
    Hasher._combine(_:)(0);
    v62 = *(v3 + v11[12]);
    if (v62 != 2)
    {
      goto LABEL_44;
    }

    if (!v15)
    {
      goto LABEL_43;
    }

    goto LABEL_42;
  }

  v17 = [v15 _activitySummaryIndex];
  Hasher._combine(_:)(1u);
  Hasher._combine(_:)(v17);
  v18 = [v15 _wheelchairUse];
  Hasher._combine(_:)(1u);
  Hasher._combine(_:)(v18);
  LOBYTE(v18) = [v15 paused];
  Hasher._combine(_:)(1u);
  Hasher._combine(_:)(v18);
  v19 = [v15 activeEnergyBurned];
  v20 = objc_opt_self();
  v21 = [v20 largeCalorieUnit];
  [v19 doubleValueForUnit:v21];
  v23 = v22;

  Hasher._combine(_:)(1u);
  if (v23 == 0.0)
  {
    v24 = 0.0;
  }

  else
  {
    v24 = v23;
  }

  Hasher._combine(_:)(*&v24);
  v25 = [v15 appleMoveTime];
  v26 = [v20 minuteUnit];
  [v25 doubleValueForUnit:v26];
  v28 = v27;

  Hasher._combine(_:)(1u);
  if (v28 == 0.0)
  {
    v29 = 0.0;
  }

  else
  {
    v29 = v28;
  }

  Hasher._combine(_:)(*&v29);
  v30 = [v15 appleExerciseTime];
  v31 = [v20 minuteUnit];
  [v30 doubleValueForUnit:v31];
  v33 = v32;

  Hasher._combine(_:)(1u);
  if (v33 == 0.0)
  {
    v34 = 0.0;
  }

  else
  {
    v34 = v33;
  }

  Hasher._combine(_:)(*&v34);
  v35 = [v15 appleStandHours];
  v36 = [v20 countUnit];
  [v35 doubleValueForUnit:v36];
  v38 = v37;

  Hasher._combine(_:)(1u);
  if (v38 == 0.0)
  {
    v39 = 0.0;
  }

  else
  {
    v39 = v38;
  }

  Hasher._combine(_:)(*&v39);
  v40 = [v15 activeEnergyBurnedGoal];
  v41 = [v20 largeCalorieUnit];
  [v40 doubleValueForUnit:v41];
  v43 = v42;

  Hasher._combine(_:)(1u);
  if (v43 == 0.0)
  {
    v44 = 0.0;
  }

  else
  {
    v44 = v43;
  }

  Hasher._combine(_:)(*&v44);
  v45 = [v15 appleMoveTimeGoal];
  v46 = [v20 minuteUnit];
  [v45 doubleValueForUnit:v46];
  v48 = v47;

  Hasher._combine(_:)(1u);
  if (v48 == 0.0)
  {
    v49 = 0.0;
  }

  else
  {
    v49 = v48;
  }

  Hasher._combine(_:)(*&v49);
  v50 = [v15 exerciseTimeGoal];
  if (v50)
  {
    v51 = v50;
    v52 = [v20 minuteUnit];
    [v51 doubleValueForUnit:v52];
    v54 = v53;

    Hasher._combine(_:)(1u);
    if (v54 == 0.0)
    {
      v55 = 0.0;
    }

    else
    {
      v55 = v54;
    }

    Hasher._combine(_:)(*&v55);
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  v56 = [v15 standHoursGoal];
  v16 = &selRef_initWithLayer_;
  if (!v56)
  {
    goto LABEL_40;
  }

  v57 = v56;
  v58 = [objc_opt_self() countUnit];
  [v57 doubleValueForUnit:v58];
  v60 = v59;

  Hasher._combine(_:)(1u);
  v61 = 0.0;
  if (v60 != 0.0)
  {
    v61 = v60;
  }

  Hasher._combine(_:)(*&v61);
  v62 = *(v3 + v11[12]);
  if (v62 != 2)
  {
LABEL_44:
    if (v62)
    {
      goto LABEL_45;
    }

    goto LABEL_43;
  }

LABEL_42:
  if ([v15 v16[39]] == 2)
  {
LABEL_45:
    v63 = 1;
    goto LABEL_46;
  }

LABEL_43:
  v63 = 0;
LABEL_46:
  Hasher._combine(_:)(v63);
  return Hasher.finalize()();
}

void sub_1003A2A78(uint64_t a1)
{
  type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    sub_10006DAB0(319, &qword_1008E3090, &qword_1008E3098, HKActivitySummary_ptr);
    if (v2 <= 0x3F)
    {
      sub_1001F3724(319, v2);
      if (v3 <= 0x3F)
      {
        sub_10006DAB0(319, &qword_1008E30A0, &qword_1008F24B0, FIUIFormattingManager_ptr);
        if (v4 <= 0x3F)
        {
          sub_10019C0F4();
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1003A2BA0(uint64_t a1, char *a2)
{
  v3 = sub_100140278(&unk_1008F73A0, &unk_1006DB450);
  __chkstk_darwin(v3 - 8);
  v5 = &v116 - v4;
  v6 = sub_100140278(&qword_1008DD010, &qword_1006D5898);
  __chkstk_darwin(v6 - 8);
  v8 = &v116 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v116 - v10;
  v12 = type metadata accessor for ActivityRingsCard(0);
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v117 = &v116 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v116 - v16;
  v116 = objc_opt_self();
  v18 = [v116 sharedBehavior];
  if (!v18)
  {
    goto LABEL_56;
  }

  v19 = v18;
  v20 = [v18 features];

  if (!v20)
  {
LABEL_57:
    __break(1u);
    goto LABEL_58;
  }

  v21 = [v20 pauseRings];

  v118 = a2;
  v22 = *&a2[OBJC_IVAR____TtC10FitnessApp31ActivityDashboardViewController_summaryCoordinator];
  v23 = IndexPath.row.getter();
  v24 = OBJC_IVAR____TtC10FitnessApp18SummaryCoordinator_activeCards;
  swift_beginAccess();
  if ((v23 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_55;
  }

  v25 = *(v22 + v24);
  if (v23 >= *(v25 + 16))
  {
LABEL_55:
    __break(1u);
LABEL_56:
    __break(1u);
    goto LABEL_57;
  }

  sub_100007C5C(v25 + 40 * v23 + 32, v120);
  v27 = v121;
  v26 = v122;
  sub_1000066AC(v120, v121);
  v28 = (*(v26 + 16))(v27, v26);
  if (v30 != 3 || v28 | v29)
  {
    sub_10001D4F8(v28, v29, v30);
    sub_1000059F8(0, &qword_1008E0C88, UIAction_ptr);
    v38 = objc_opt_self();
    v39 = [v38 mainBundle];
    v124._object = 0xE000000000000000;
    v40._countAndFlagsBits = 0x5241435F54494445;
    v40._object = 0xE900000000000044;
    v41._countAndFlagsBits = 0;
    v41._object = 0xE000000000000000;
    v124._countAndFlagsBits = 0;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v40, 0, v39, v41, v124);

    v42 = String._bridgeToObjectiveC()();
    v43 = objc_opt_self();
    v44 = [v43 systemImageNamed:v42];

    sub_100007C5C(v120, v119);
    v45 = swift_allocObject();
    v46 = v118;
    *(v45 + 16) = v118;
    sub_100006260(v119, v45 + 24);
    v47 = v46;
    v48 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
    v49 = [v38 mainBundle];
    v125._object = 0xE000000000000000;
    v50._countAndFlagsBits = 0x5241435F45444948;
    v50._object = 0xE900000000000044;
    v51._countAndFlagsBits = 0;
    v51._object = 0xE000000000000000;
    v125._countAndFlagsBits = 0;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v50, 0, v49, v51, v125);

    v52 = String._bridgeToObjectiveC()();
    v53 = [v43 systemImageNamed:v52];

    sub_100007C5C(v120, v119);
    v54 = swift_allocObject();
    *(v54 + 16) = v47;
    sub_100006260(v119, v54 + 24);
    v55 = v47;
    v56 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
    sub_100140278(&unk_1008E4E20, &qword_1006D5040);
    v57 = swift_allocObject();
    *(v57 + 16) = xmmword_1006D68D0;
    *(v57 + 32) = v48;
    *(v57 + 40) = v56;
LABEL_52:

    dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
    sub_1000059F8(0, &qword_1008EAA38, UIMenuElement_ptr);

    sub_1000059F8(0, &qword_1008EB650, UIMenu_ptr);
    v114._countAndFlagsBits = 0;
    v114._object = 0xE000000000000000;
    v123.value.super.isa = 0;
    v123.is_nil = 0;
    UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v114, 0, v123, 0, 0xFFFFFFFFFFFFFFFFLL, v57, v115);
    goto LABEL_53;
  }

  sub_100007C5C(v120, v119);
  sub_100140278(&unk_1008EE6B0, &qword_1006D58A0);
  v31 = swift_dynamicCast();
  v32 = *(v13 + 56);
  if ((v31 & 1) == 0)
  {
    v32(v11, 1, 1, v12);
    sub_10000EA04(v11, &qword_1008DD010, &qword_1006D5898);
    goto LABEL_17;
  }

  v32(v11, 0, 1, v12);
  sub_1003A40C0(v11, v17);
  sub_1001CE7A0(&v17[*(v12 + 40)], v5);
  v33 = type metadata accessor for Date();
  v34 = (*(*(v33 - 8) + 48))(v5, 1, v33);
  sub_10000EA04(v5, &unk_1008F73A0, &unk_1006DB450);
  if (v34 == 1 && ((v35 = *&v17[*(v12 + 36)]) == 0 || ![v35 paused]) || !v21)
  {
    sub_1003A4124(v17);
LABEL_17:
    sub_100007C5C(v120, v119);
    if (swift_dynamicCast())
    {
      v32(v8, 0, 1, v12);
      v58 = v117;
      sub_1003A40C0(v8, v117);
      if (v21)
      {
        v59 = *(v58 + *(v12 + 36));
        if (v59)
        {
          v60 = [v59 _isStandalonePhoneSummary];
LABEL_25:
          if (v60)
          {
            v64 = 0x4F4D5F4553554150;
          }

          else
          {
            v64 = 0x49525F4553554150;
          }

          if (v60)
          {
            v65 = 0xEF474E49525F4556;
          }

          else
          {
            v65 = 0xEB0000000053474ELL;
          }

          sub_1000059F8(0, &qword_1008E0C88, UIAction_ptr);
          v66 = objc_opt_self();
          v67 = [v66 mainBundle];
          v126._object = 0xE000000000000000;
          v68._countAndFlagsBits = v64;
          v68._object = v65;
          v69._countAndFlagsBits = 0;
          v69._object = 0xE000000000000000;
          v126._countAndFlagsBits = 0;
          NSLocalizedString(_:tableName:bundle:value:comment:)(v68, 0, v67, v69, v126);

          v70 = String._bridgeToObjectiveC()();
          v71 = objc_opt_self();
          v72 = [v71 smm_systemImageNamed:v70];

          v73 = swift_allocObject();
          v74 = v118;
          *(v73 + 16) = v118;
          v75 = v74;
          v76 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
          if (v59)
          {
            v77 = [v59 _isStandalonePhoneSummary];
LABEL_35:
            if (v77)
            {
              v81 = 0xD000000000000010;
            }

            else
            {
              v81 = 0x475F45474E414843;
            }

            if (v77)
            {
              v82 = 0x8000000100759930;
            }

            else
            {
              v82 = 0xEC000000534C414FLL;
            }

            v83 = [v66 mainBundle];
            v127._object = 0xE000000000000000;
            v84._countAndFlagsBits = v81;
            v84._object = v82;
            v85._countAndFlagsBits = 0;
            v85._object = 0xE000000000000000;
            v127._countAndFlagsBits = 0;
            NSLocalizedString(_:tableName:bundle:value:comment:)(v84, 0, v83, v85, v127);

            v86 = String._bridgeToObjectiveC()();
            v87 = [v71 smm_systemImageNamed:v86];

            *(swift_allocObject() + 16) = v75;
            v88 = v75;
            v89 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
            sub_100140278(&unk_1008E4E20, &qword_1006D5040);
            v57 = swift_allocObject();
            *(v57 + 16) = xmmword_1006D68D0;
            *(v57 + 32) = v76;
            *(v57 + 40) = v89;
            v90 = v117;
            goto LABEL_51;
          }

          v78 = [v116 sharedBehavior];
          if (v78)
          {
            v79 = v78;
            v80 = [v78 isStandalonePhoneFitnessMode];

            v77 = v80;
            goto LABEL_35;
          }

LABEL_59:
          __break(1u);
          goto LABEL_60;
        }

        v61 = [v116 sharedBehavior];
        if (v61)
        {
          v62 = v61;
          v63 = [v61 isStandalonePhoneFitnessMode];

          v60 = v63;
          goto LABEL_25;
        }

LABEL_58:
        __break(1u);
        goto LABEL_59;
      }

      sub_1003A4124(v58);
    }

    else
    {
      v32(v8, 1, 1, v12);
      sub_10000EA04(v8, &qword_1008DD010, &qword_1006D5898);
    }

LABEL_53:
    sub_100005A40(v120);
    return;
  }

  v36 = *&v17[*(v12 + 36)];
  if (v36)
  {
    v37 = [v36 _isStandalonePhoneSummary];
LABEL_44:
    if (v37)
    {
      v94 = 0xD000000000000010;
    }

    else
    {
      v94 = 0x525F454D55534552;
    }

    if (v37)
    {
      v95 = 0x8000000100759970;
    }

    else
    {
      v95 = 0xEC00000053474E49;
    }

    sub_1000059F8(0, &qword_1008E0C88, UIAction_ptr);
    v96 = objc_opt_self();
    v97 = [v96 mainBundle];
    v128._object = 0xE000000000000000;
    v98._countAndFlagsBits = v94;
    v98._object = v95;
    v99._countAndFlagsBits = 0;
    v99._object = 0xE000000000000000;
    v128._countAndFlagsBits = 0;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v98, 0, v97, v99, v128);

    v100 = String._bridgeToObjectiveC()();
    v101 = objc_opt_self();
    v102 = [v101 smm_systemImageNamed:v100];

    v103 = swift_allocObject();
    v104 = v118;
    *(v103 + 16) = v118;
    v105 = v104;
    v106 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
    v107 = [v96 mainBundle];
    v129._object = 0xE000000000000000;
    v108._object = 0x8000000100759950;
    v108._countAndFlagsBits = 0xD000000000000010;
    v109._countAndFlagsBits = 0;
    v109._object = 0xE000000000000000;
    v129._countAndFlagsBits = 0;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v108, 0, v107, v109, v129);

    v110 = String._bridgeToObjectiveC()();
    v111 = [v101 smm_systemImageNamed:v110];

    *(swift_allocObject() + 16) = v105;
    v112 = v105;
    v113 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
    sub_100140278(&unk_1008E4E20, &qword_1006D5040);
    v57 = swift_allocObject();
    *(v57 + 16) = xmmword_1006D68D0;
    *(v57 + 32) = v106;
    *(v57 + 40) = v113;
    v90 = v17;
LABEL_51:
    sub_1003A4124(v90);
    goto LABEL_52;
  }

  v91 = [v116 sharedBehavior];
  if (v91)
  {
    v92 = v91;
    v93 = [v91 isStandalonePhoneFitnessMode];

    v37 = v93;
    goto LABEL_44;
  }

LABEL_60:
  __break(1u);
}

void sub_1003A3A84(uint64_t a1, void *a2)
{
  v3 = [objc_allocWithZone(CHASActivitySetupViewController) initWithPresentationContext:6];
  v4 = [objc_allocWithZone(UINavigationController) initWithRootViewController:v3];
  [a2 presentViewController:v4 animated:1 completion:0];
}

id sub_1003A3C30(uint64_t a1)
{
  v2 = v1;
  swift_getObjectType();
  v4 = type metadata accessor for IndexPath();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  if (IndexPath.section.getter() == 1)
  {
    v7 = IndexPath.row.getter();
    v8 = *&v2[OBJC_IVAR____TtC10FitnessApp31ActivityDashboardViewController_summaryCoordinator];
    v9 = OBJC_IVAR____TtC10FitnessApp18SummaryCoordinator_activeCards;
    swift_beginAccess();
    if (v7 >= *(*(v8 + v9) + 16))
    {
      v18 = static os_log_type_t.default.getter();
      v19 = HKLogActivity;
      if (os_log_type_enabled(HKLogActivity, v18))
      {
        v20 = v19;
        v21 = swift_slowAlloc();
        v22 = swift_slowAlloc();
        aBlock[0] = v22;
        *v21 = 136315138;
        v23 = _typeName(_:qualified:)();
        v25 = sub_10000AFDC(v23, v24, aBlock);

        *(v21 + 4) = v25;
        _os_log_impl(&_mh_execute_header, v20, v18, "%s Index out of range for context menu", v21, 0xCu);
        sub_100005A40(v22);
      }
    }

    else if ((*(v8 + OBJC_IVAR____TtC10FitnessApp18SummaryCoordinator_editMode) & 1) == 0)
    {
      isa = IndexPath._bridgeToObjectiveC()().super.isa;
      (*(v5 + 16))(&aBlock[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v4);
      v11 = (*(v5 + 80) + 24) & ~*(v5 + 80);
      v12 = swift_allocObject();
      *(v12 + 16) = v2;
      (*(v5 + 32))(v12 + v11, &aBlock[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v4);
      v13 = objc_opt_self();
      aBlock[4] = sub_1003A3F7C;
      aBlock[5] = v12;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1005A1EE0;
      aBlock[3] = &unk_100855338;
      v14 = _Block_copy(aBlock);
      v15 = v2;

      v16 = [v13 configurationWithIdentifier:isa previewProvider:0 actionProvider:v14];

      _Block_release(v14);
      return v16;
    }
  }

  return 0;
}

void sub_1003A3F7C(uint64_t a1)
{
  type metadata accessor for IndexPath();
  v3 = *(v1 + 16);

  sub_1003A2BA0(a1, v3);
}

void sub_1003A3FF0()
{
  v1 = v0[2];
  v2 = v0[6];
  v3 = v0[7];
  v4 = sub_1000066AC(v0 + 3, v2);

  sub_100475448(v4, v1, v2, v3);
}

uint64_t sub_1003A4044()
{
  sub_100005A40((v0 + 24));

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_1003A40C0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ActivityRingsCard(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1003A4124(uint64_t a1)
{
  v2 = type metadata accessor for ActivityRingsCard(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_1003A424C(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for WorkoutConfigurationViewer();
  return objc_msgSendSuper2(&v4, "dealloc");
}

unint64_t sub_1003A42A8()
{
  result = qword_1008EB1D0;
  if (!qword_1008EB1D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008EB1D0);
  }

  return result;
}

unint64_t sub_1003A4300()
{
  result = qword_1008EB1D8;
  if (!qword_1008EB1D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008EB1D8);
  }

  return result;
}

uint64_t sub_1003A4358(uint64_t a1, uint64_t a2)
{
  v2[3] = a1;
  v2[4] = a2;
  v3 = sub_100140278(&qword_1008EB1F8, &qword_1006ECD98);
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();
  v4 = sub_100140278(&qword_1008EB200, &qword_1006ECDA0);
  v2[8] = v4;
  v2[9] = *(v4 - 8);
  v2[10] = swift_task_alloc();

  return _swift_task_switch(sub_1003A448C, 0, 0);
}

uint64_t sub_1003A448C()
{
  v1 = v0[9];
  v2 = v0[10];
  v3 = v0[8];
  v4 = objc_opt_self();

  sub_1001AA77C(v5);

  type metadata accessor for UUID();
  sub_1001447C0();
  isa = Set._bridgeToObjectiveC()().super.isa;

  v7 = [v4 predicateForObjectsWithUUIDs:isa];
  v0[11] = v7;

  sub_1000059F8(0, &unk_1008E4060, HKCategoryType_ptr);
  v8 = HKCategoryType.init(_:)(HKCategoryTypeIdentifierMindfulSession).super.super.super.isa;
  sub_1000059F8(0, &qword_1008E04D0, HKSample_ptr);
  v9 = v7;
  static HKSamplePredicate.categorySample(type:predicate:)();

  sub_100140278(&qword_1008EB208, &qword_1006ECDA8);
  v10 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1006D46C0;
  (*(v1 + 16))(v11 + v10, v2, v3);
  sub_1000059F8(0, &qword_1008EB220, HKCategorySample_ptr);
  HKSampleQueryDescriptor.init(predicates:sortDescriptors:limit:)();
  AppDependency.wrappedValue.getter();
  v12 = v0[2];
  v0[12] = v12;
  v13 = swift_task_alloc();
  v0[13] = v13;
  *v13 = v0;
  v13[1] = sub_1003A46F4;
  v14 = v0[5];

  return HKSampleQueryDescriptor.result(for:)(v12, v14);
}

uint64_t sub_1003A46F4(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 96);
  *(v3 + 112) = a1;
  *(v3 + 120) = v1;

  if (v1)
  {
    v5 = sub_1003A4A20;
  }

  else
  {
    v5 = sub_1003A4824;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1003A4824()
{
  v1 = v0[14];
  if (v1 >> 62)
  {
    v2 = _CocoaArrayWrapper.endIndex.getter();
    if (!v2)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v2)
    {
      goto LABEL_11;
    }
  }

  result = specialized ContiguousArray.reserveCapacity(_:)();
  if (v2 < 0)
  {
    __break(1u);
    return result;
  }

  v4 = 0;
  v5 = v0[14] + 32;
  do
  {
    if ((v1 & 0xC000000000000001) != 0)
    {
      v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v6 = *(v5 + 8 * v4);
    }

    ++v4;
    sub_10028AE34(v6, v7);
    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    specialized ContiguousArray._endMutation()();
  }

  while (v2 != v4);
LABEL_11:
  v8 = v0[10];
  v9 = v0[11];
  v10 = v0[8];
  v11 = v0[9];
  v13 = v0[6];
  v12 = v0[7];
  v14 = v0[5];

  (*(v13 + 8))(v12, v14);
  (*(v11 + 8))(v8, v10);

  v15 = v0[1];

  return v15(_swiftEmptyArrayStorage);
}

uint64_t sub_1003A4A20()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 64);
  v3 = *(v0 + 72);
  v5 = *(v0 + 48);
  v4 = *(v0 + 56);
  v6 = *(v0 + 40);

  (*(v5 + 8))(v4, v6);
  (*(v3 + 8))(v1, v2);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_1003A4AE0(uint64_t a1)
{
  v1[3] = a1;
  v2 = sub_100140278(&qword_1008EB1F8, &qword_1006ECD98);
  v1[4] = v2;
  v1[5] = *(v2 - 8);
  v1[6] = swift_task_alloc();
  v3 = sub_100140278(&qword_1008EB200, &qword_1006ECDA0);
  v1[7] = v3;
  v1[8] = *(v3 - 8);
  v1[9] = swift_task_alloc();

  return _swift_task_switch(sub_1003A4C14, 0, 0);
}

uint64_t sub_1003A4C14()
{
  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[7];
  sub_1000059F8(0, &unk_1008E4060, HKCategoryType_ptr);
  isa = HKCategoryType.init(_:)(HKCategoryTypeIdentifierMindfulSession).super.super.super.isa;
  sub_1000059F8(0, &qword_1008E04D0, HKSample_ptr);
  static HKSamplePredicate.categorySample(type:predicate:)();

  sub_100140278(&qword_1008EB208, &qword_1006ECDA8);
  v5 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1006D46C0;
  (*(v2 + 16))(v6 + v5, v1, v3);
  sub_100140278(&qword_1008EB210, &qword_1006ECDB0);
  sub_100140278(&qword_1008EB218, &unk_1006ECDB8);
  *(swift_allocObject() + 16) = xmmword_1006D46C0;
  swift_getKeyPath();
  SortDescriptor.init<A>(_:order:)();
  sub_1000059F8(0, &qword_1008EB220, HKCategorySample_ptr);
  HKSampleQueryDescriptor.init(predicates:sortDescriptors:limit:)();
  AppDependency.wrappedValue.getter();
  v7 = v0[2];
  v0[10] = v7;
  v8 = swift_task_alloc();
  v0[11] = v8;
  *v8 = v0;
  v8[1] = sub_1003A4E8C;
  v9 = v0[4];

  return HKSampleQueryDescriptor.result(for:)(v7, v9);
}

uint64_t sub_1003A4E8C(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 80);
  *(v3 + 96) = a1;
  *(v3 + 104) = v1;

  if (v1)
  {
    v5 = sub_1003A51A8;
  }

  else
  {
    v5 = sub_1003A4FBC;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1003A4FBC()
{
  v1 = v0[12];
  if (v1 >> 62)
  {
    v2 = _CocoaArrayWrapper.endIndex.getter();
    if (!v2)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v2)
    {
      goto LABEL_11;
    }
  }

  result = specialized ContiguousArray.reserveCapacity(_:)();
  if (v2 < 0)
  {
    __break(1u);
    return result;
  }

  v4 = 0;
  v5 = v0[12] + 32;
  do
  {
    if ((v1 & 0xC000000000000001) != 0)
    {
      v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v6 = *(v5 + 8 * v4);
    }

    ++v4;
    sub_10028AE34(v6, v7);
    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    specialized ContiguousArray._endMutation()();
  }

  while (v2 != v4);
LABEL_11:
  v9 = v0[8];
  v8 = v0[9];
  v11 = v0[6];
  v10 = v0[7];
  v12 = v0[4];
  v13 = v0[5];

  (*(v13 + 8))(v11, v12);
  (*(v9 + 8))(v8, v10);

  v14 = v0[1];

  return v14(_swiftEmptyArrayStorage);
}

uint64_t sub_1003A51A8()
{
  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[7];
  (*(v0[5] + 8))(v0[6], v0[4]);
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1003A5254@<X0>(uint64_t *a1@<X8>)
{
  sub_100140278(&qword_1008DD148, &unk_1006D5CD0);
  type metadata accessor for AppDependencyManager();
  static AppDependencyManager.shared.getter();
  result = AppDependency.__allocating_init(key:manager:)();
  *a1 = result;
  return result;
}

uint64_t sub_1003A52CC(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100202054;

  return sub_1003A4358(a1, v4);
}

uint64_t sub_1003A5368(uint64_t a1)
{
  *(v2 + 16) = a1;
  v3 = *v1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_10016200C;

  return sub_1003A4AE0(v3);
}

unint64_t sub_1003A5404()
{
  result = qword_1008EB1E0;
  if (!qword_1008EB1E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008EB1E0);
  }

  return result;
}

unint64_t sub_1003A5460()
{
  result = qword_1008EB1E8;
  if (!qword_1008EB1E8)
  {
    sub_100141EEC(&qword_1008EB1F0, qword_1006ECC78);
    sub_10028AAE0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008EB1E8);
  }

  return result;
}

uint64_t sub_1003A54E4(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_100289F98();
  *v5 = v2;
  v5[1] = sub_10002BACC;

  return EntityQuery.results()(a1, a2, v6);
}

void sub_1003A55A8(uint64_t a1, uint64_t *a2)
{
  v29 = a2;
  v25 = type metadata accessor for CatalogModality();
  __chkstk_darwin(v25);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = a1;
  v6 = *(a1 + 16);
  if (v6)
  {
    v7 = 0;
    v24 = (v3 + 8);
    v27 = _swiftEmptyArrayStorage;
    do
    {
      v8 = v7;
      while (1)
      {
        if (v8 >= v6)
        {
          __break(1u);
LABEL_26:
          __break(1u);
          return;
        }

        type metadata accessor for CatalogWorkout();
        v7 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
          goto LABEL_26;
        }

        CatalogWorkout.modality.getter();
        v9 = CatalogModality.name.getter();
        v11 = v10;
        (*v24)(v5, v25);
        v12 = *v29;
        if (!*(*v29 + 16))
        {
          break;
        }

        Hasher.init(_seed:)();

        String.hash(into:)();
        v13 = Hasher._finalize()();
        v14 = -1 << *(v12 + 32);
        v15 = v13 & ~v14;
        if (((*(v12 + 56 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
        {
LABEL_16:

          break;
        }

        v16 = ~v14;
        while (1)
        {
          v17 = (*(v12 + 48) + 16 * v15);
          v18 = *v17 == v9 && v17[1] == v11;
          if (v18 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {
            break;
          }

          v15 = (v15 + 1) & v16;
          if (((*(v12 + 56 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
          {
            goto LABEL_16;
          }
        }

        v8 = v7;
        if (v7 == v6)
        {
          return;
        }
      }

      sub_1001A45BC(&v28, v9, v11);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v27 = sub_100042744(0, *(v27 + 2) + 1, 1, v27);
      }

      v20 = *(v27 + 2);
      v19 = *(v27 + 3);
      if (v20 >= v19 >> 1)
      {
        v27 = sub_100042744((v19 > 1), v20 + 1, 1, v27);
      }

      v21 = v27;
      *(v27 + 2) = v20 + 1;
      v22 = &v21[16 * v20];
      *(v22 + 4) = v9;
      *(v22 + 5) = v11;
    }

    while (v7 != v6);
  }

  else
  {
    v27 = _swiftEmptyArrayStorage;
  }
}

uint64_t sub_1003A58B4(uint64_t a1, unint64_t a2, unsigned __int8 a3, uint64_t a4)
{
  if (!*(a4 + 16))
  {
    return 0;
  }

  Hasher.init(_seed:)();
  v48._countAndFlagsBits = a1;
  v48._object = a2;
  sub_100035B30(v48, a3);
  String.hash(into:)();

  if (!a3 || a3 == 2)
  {
    Hasher._combine(_:)(a1);
  }

  else if (a3 == 1)
  {
    String.hash(into:)();
  }

  v9 = Hasher._finalize()();
  v10 = a4 + 56;
  v11 = -1 << *(a4 + 32);
  v12 = v9 & ~v11;
  if ((*(a4 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v13 = ~v11;
    v14 = *(a4 + 48);
    v15 = a1 != 9;
    v16 = a1 != 8;
    v17 = a1 != 7;
    v18 = a1 != 6;
    v19 = a1 != 5;
    v20 = a1 != 4;
    v21 = a1 != 3;
    v22 = a1 == 2;
    v23 = a1 == 1;
    if (a2)
    {
      v15 = 1;
      v16 = 1;
      v17 = 1;
      v18 = 1;
      v19 = 1;
      v20 = 1;
      v21 = 1;
      v22 = 0;
      v23 = 0;
    }

    v24 = a3 == 3;
    v25 = a3 == 3 && v22;
    v26 = a3 == 3 && v23;
    v46 = v26;
    v47 = v25;
    if (a3 != 3)
    {
      v15 = 1;
    }

    v45 = v15;
    v27 = a3 != 3 || v16;
    v44 = v27;
    v28 = a3 != 3 || v17;
    v29 = a3 != 3 || v18;
    v42 = v29;
    v43 = v28;
    v30 = a3 != 3 || v19;
    v31 = a3 != 3 || v20;
    v40 = v31;
    v41 = v30;
    v32 = a3 != 3 || v21;
    if (a2 | a1)
    {
      v24 = 0;
    }

    v38 = v24;
    v39 = v32;
    do
    {
      v33 = v14 + 24 * v12;
      v34 = *v33;
      v35 = *(v33 + 8);
      v36 = *(v33 + 16);
      if (v36 > 1)
      {
        if (v36 == 2)
        {
          if (a3 != 2)
          {
            goto LABEL_42;
          }

LABEL_41:
          if (v34 == a1)
          {
            return 1;
          }

          goto LABEL_42;
        }

        if (v34 > 4)
        {
          if (v34 <= 6)
          {
            if (v34 ^ 5 | v35)
            {
              if ((v42 & 1) == 0)
              {
                return 1;
              }
            }

            else if ((v41 & 1) == 0)
            {
              return 1;
            }
          }

          else if (v34 ^ 7 | v35)
          {
            if (v34 ^ 8 | v35)
            {
              if (!v45)
              {
                return 1;
              }
            }

            else if ((v44 & 1) == 0)
            {
              return 1;
            }
          }

          else if ((v43 & 1) == 0)
          {
            return 1;
          }
        }

        else if (v34 <= 1)
        {
          if (v34 | v35)
          {
            if (v46)
            {
              return 1;
            }
          }

          else if (v38)
          {
            return 1;
          }
        }

        else if (v34 ^ 2 | v35)
        {
          if (v34 ^ 3 | v35)
          {
            if ((v40 & 1) == 0)
            {
              return 1;
            }
          }

          else if ((v39 & 1) == 0)
          {
            return 1;
          }
        }

        else if (v47)
        {
          return 1;
        }
      }

      else
      {
        if (!v36)
        {
          if (a3)
          {
            goto LABEL_42;
          }

          goto LABEL_41;
        }

        if (a3 == 1)
        {
          v37 = v34 == a1 && v35 == a2;
          if (v37 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {
            return 1;
          }
        }
      }

LABEL_42:
      v12 = (v12 + 1) & v13;
    }

    while (((*(v10 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) != 0);
  }

  return 0;
}

BOOL sub_1003A5C1C(unsigned __int8 a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v3 = a1;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v3);
  v4 = Hasher._finalize()();
  v5 = -1 << *(a2 + 32);
  v6 = v4 & ~v5;
  if (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
  {
    return 0;
  }

  v7 = ~v5;
  do
  {
    v8 = *(*(a2 + 48) + v6);
    result = v8 == v3;
    if (v8 == v3)
    {
      break;
    }

    v6 = (v6 + 1) & v7;
  }

  while (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  return result;
}

uint64_t sub_1003A5CE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  Hasher.init(_seed:)();
  String.hash(into:)();
  v6 = Hasher._finalize()();
  v7 = -1 << *(a3 + 32);
  v8 = v6 & ~v7;
  if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  while (1)
  {
    v10 = (*(a3 + 48) + 16 * v8);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      break;
    }

    v8 = (v8 + 1) & v9;
    if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_1003A5DE0(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for Feature();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a2 + 16) && (sub_1003A7354(&qword_1008EB288, &type metadata accessor for Feature, &protocol conformance descriptor for Feature), v7 = dispatch thunk of Hashable._rawHashValue(seed:)(), v8 = -1 << *(a2 + 32), v9 = v7 & ~v8, v18 = a2 + 56, ((*(a2 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0))
  {
    v17 = a2;
    v10 = ~v8;
    v11 = v4 + 16;
    v12 = *(v4 + 16);
    v13 = *(v11 + 56);
    v14 = (v11 - 8);
    do
    {
      v12(v6, *(v17 + 48) + v13 * v9, v3);
      sub_1003A7354(&qword_1008EB290, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
      v15 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*v14)(v6, v3);
      if (v15)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(v18 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  else
  {
    v15 = 0;
  }

  return v15 & 1;
}

id sub_1003A6018(uint64_t a1, void *a2)
{
  v3 = v2;
  v6 = type metadata accessor for Artwork();
  v31 = *(v6 - 8);
  v32 = v6;
  __chkstk_darwin(v6);
  v29 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = type metadata accessor for StandardArtworkDescriptor();
  v28 = *(v30 - 8);
  __chkstk_darwin(v30);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for ArtworkDescriptor();
  __chkstk_darwin(v10 - 8);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000066AC(a2, a2[3]);
  v13 = CatalogLockup.titleTags.getter();
  isa = MediaTagStringBuilding.attributedString(for:)(v13).super.isa;

  *&v3[OBJC_IVAR___CHCatalogItemViewModel_title] = isa;
  sub_1000066AC(a2, a2[3]);
  v15 = CatalogLockup.subtitleTags.getter();
  v16 = MediaTagStringBuilding.attributedString(for:)(v15).super.isa;

  *&v3[OBJC_IVAR___CHCatalogItemViewModel_subtitle] = v16;
  CatalogLockup.artworkDescriptor.getter();
  ArtworkDescriptor.standardArtworkDescriptor.getter();
  sub_1003A7230(v12, v17);
  v18 = v29;
  StandardArtworkDescriptor.artwork.getter();
  (*(v28 + 8))(v9, v30);
  (*(v31 + 32))(&v3[OBJC_IVAR___CHCatalogItemViewModel_artwork], v18, v32);
  v19 = CatalogLockup.mediaType.getter();
  v20 = &v3[OBJC_IVAR___CHCatalogItemViewModel_mediaType];
  *v20 = v19;
  *(v20 + 1) = v21;
  v20[16] = v22;
  *&v3[OBJC_IVAR___CHCatalogItemViewModel_workouts] = _swiftEmptyArrayStorage;
  v23 = type metadata accessor for CatalogItemViewModel(0);
  v33.receiver = v3;
  v33.super_class = v23;
  v24 = objc_msgSendSuper2(&v33, "init");
  v25 = type metadata accessor for CatalogLockup();
  (*(*(v25 - 8) + 8))(a1, v25);
  sub_100005A40(a2);
  return v24;
}

uint64_t sub_1003A637C()
{
  v1 = (v0 + OBJC_IVAR___CHCatalogItemViewModel_mediaType);
  v2 = *(v0 + OBJC_IVAR___CHCatalogItemViewModel_mediaType + 16);
  if (v2 == 255)
  {
    v3 = 0;
  }

  else
  {
    v5 = *v1;
    v6 = v1[1];
    v7 = *(v0 + OBJC_IVAR___CHCatalogItemViewModel_mediaType + 16);
    sub_1003A728C(*v1, v6, v2 & 1);
    sub_1003A729C();
    sub_1003A72F0();
    v3 = static PortableEnum<>.== infix(_:_:)();
    sub_1003A7344(v5, v6, v7);
  }

  return v3 & 1;
}

uint64_t sub_1003A6458()
{
  v1 = (v0 + OBJC_IVAR___CHCatalogItemViewModel_mediaType);
  v2 = *(v0 + OBJC_IVAR___CHCatalogItemViewModel_mediaType + 16);
  if (v2 == 255)
  {
    v3 = 0;
  }

  else
  {
    v5 = *v1;
    v6 = v1[1];
    v7 = *(v0 + OBJC_IVAR___CHCatalogItemViewModel_mediaType + 16);
    sub_1003A728C(*v1, v6, v2 & 1);
    sub_1003A729C();
    sub_1003A72F0();
    v3 = static PortableEnum<>.== infix(_:_:)();
    sub_1003A7344(v5, v6, v7);
  }

  return v3 & 1;
}

BOOL sub_1003A6534()
{
  MediaDuration.duration.getter();
  v1 = v0;
  MediaDuration.lowerBuffer.getter();
  v3 = v1 - v2;
  MediaDuration.duration.getter();
  v5 = v4;
  MediaDuration.upperBuffer.getter();
  v7 = v6;
  CatalogWorkout.duration.getter();
  if (v3 > v8)
  {
    return 0;
  }

  CatalogWorkout.duration.getter();
  return v10 <= v5 + v7;
}

uint64_t sub_1003A662C()
{
  v1 = v0;
  *&v24 = 0;
  *(&v24 + 1) = 0xE000000000000000;
  _StringGuts.grow(_:)(53);
  v26 = v24;
  v25.receiver = v0;
  v25.super_class = type metadata accessor for CatalogItemViewModel(0);
  v2 = objc_msgSendSuper2(&v25, "description");
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;

  v6._countAndFlagsBits = v3;
  v6._object = v5;
  String.append(_:)(v6);

  v7._countAndFlagsBits = 0x203A656C74697420;
  v7._object = 0xE800000000000000;
  String.append(_:)(v7);
  v8 = [*&v1[OBJC_IVAR___CHCatalogItemViewModel_title] string];
  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;

  v12._countAndFlagsBits = v9;
  v12._object = v11;
  String.append(_:)(v12);

  v13._countAndFlagsBits = 0x746974627573202CLL;
  v13._object = 0xEB0000000020656CLL;
  String.append(_:)(v13);
  v14 = [*&v1[OBJC_IVAR___CHCatalogItemViewModel_subtitle] string];
  v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v17 = v16;

  v18._countAndFlagsBits = v15;
  v18._object = v17;
  String.append(_:)(v18);

  v19._countAndFlagsBits = 0x726F77747261202CLL;
  v19._object = 0xEB00000000203A6BLL;
  String.append(_:)(v19);
  type metadata accessor for Artwork();
  sub_1003A7354(&qword_1008EB2A8, &type metadata accessor for Artwork, &protocol conformance descriptor for Artwork);
  v20._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v20);

  v21._countAndFlagsBits = 0x54616964656D202CLL;
  v21._object = 0xED0000203A657079;
  String.append(_:)(v21);
  sub_100140278(&qword_1008EB2B0, qword_1006ECE60);
  v22._countAndFlagsBits = Optional.description.getter();
  String.append(_:)(v22);

  return v26;
}

id sub_1003A68DC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CatalogItemViewModel(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for CatalogItemViewModel(uint64_t a1)
{
  result = qword_1008EB260;
  if (!qword_1008EB260)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1003A6A1C(uint64_t a1)
{
  result = type metadata accessor for Artwork();
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

id sub_1003A6AD4(uint64_t a1, uint64_t a2)
{
  v4 = sub_100140278(&qword_1008EB280, &unk_1006ECE50);
  __chkstk_darwin(v4 - 8);
  v6 = v18 - v5;
  v7 = type metadata accessor for Playlist();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10001B104(a2, v6, &qword_1008EB280, &unk_1006ECE50);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_10000EA04(v6, &qword_1008EB280, &unk_1006ECE50);
    v19 = &_swiftEmptySetSingleton;
    sub_1003A55A8(a1, &v19);
    v18[1] = v11;
    sub_100140278(&unk_1008E99C0, &unk_1006D2070);
    sub_100020FC0();
    BidirectionalCollection<>.joined(separator:)();

    v12 = objc_allocWithZone(NSAttributedString);
    v13 = String._bridgeToObjectiveC()();

    v14 = [v12 initWithString:v13];
  }

  else
  {
    (*(v8 + 32))(v10, v6, v7);
    Playlist.name.getter();
    v15 = objc_allocWithZone(NSAttributedString);
    v16 = String._bridgeToObjectiveC()();

    v14 = [v15 initWithString:v16];

    (*(v8 + 8))(v10, v7);
  }

  return v14;
}

Class sub_1003A6D80(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = type metadata accessor for MediaDuration();
  v42 = *(v5 - 8);
  __chkstk_darwin(v5);
  v39 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100140278(&qword_1008EB270, &unk_1006ECE40);
  __chkstk_darwin(v7 - 8);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v35 - v11;
  v13 = type metadata accessor for CatalogWorkout();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = Configuration.filterDurations.getter();
  v18 = *(a1 + 16);
  if (v18)
  {
    v46 = v5;
    v47 = v17;
    v36 = a3;
    v20 = *(v14 + 16);
    v19 = v14 + 16;
    v21 = a1 + ((*(v19 + 64) + 32) & ~*(v19 + 64));
    v44 = *(v19 + 56);
    v45 = v20;
    v22 = v42;
    v37 = v42 + 1;
    v38 = (v42 + 4);
    v42 = (v19 - 8);
    v43 = (v22 + 6);
    v23 = 0.0;
    v40 = v19;
    v41 = v9;
    do
    {
      v24 = v13;
      v25 = v45(v16, v21, v13);
      __chkstk_darwin(v25);
      *(&v35 - 2) = v16;
      sub_1004155CC(sub_1003A7210, v47, v12);
      sub_10001B104(v12, v9, &qword_1008EB270, &unk_1006ECE40);
      v26 = v46;
      if ((*v43)(v9, 1, v46) == 1)
      {
        sub_10000EA04(v12, &qword_1008EB270, &unk_1006ECE40);
        sub_10000EA04(v9, &qword_1008EB270, &unk_1006ECE40);
      }

      else
      {
        v27 = v39;
        (*v38)(v39, v9, v26);
        MediaDuration.duration.getter();
        v29 = v28;
        (*v37)(v27, v26);
        sub_10000EA04(v12, &qword_1008EB270, &unk_1006ECE40);
        v23 = v23 + v29;
      }

      v13 = v24;
      (*v42)(v16, v24);
      v21 += v44;
      --v18;
      v9 = v41;
    }

    while (v18);

    a3 = v36;
  }

  else
  {

    v23 = 0.0;
  }

  sub_1000066AC(a3, a3[3]);
  sub_100140278(&qword_1008EB278, &unk_1006FE350);
  v30 = *(type metadata accessor for MediaTag() - 8);
  v31 = (*(v30 + 80) + 32) & ~*(v30 + 80);
  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_1006D46C0;
  *(v32 + v31) = v23;
  swift_storeEnumTagMultiPayload();
  isa = MediaTagStringBuilding.attributedString(for:)(v32).super.isa;

  return isa;
}

uint64_t sub_1003A7230(uint64_t a1, __n128 a2)
{
  v3 = type metadata accessor for ArtworkDescriptor();
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

double sub_1003A728C(uint64_t a1, uint64_t a2, char a3)
{
  if ((a3 & 1) == 0)
  {
  }

  return result;
}

unint64_t sub_1003A729C()
{
  result = qword_1008EB298;
  if (!qword_1008EB298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008EB298);
  }

  return result;
}

unint64_t sub_1003A72F0()
{
  result = qword_1008EB2A0;
  if (!qword_1008EB2A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008EB2A0);
  }

  return result;
}

uint64_t sub_1003A7344(uint64_t a1, uint64_t a2, char a3)
{
  if ((a3 & 1) == 0)
  {
  }

  return result;
}

uint64_t sub_1003A7354(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1003A739C(uint64_t result, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_1003A7344(result, a2, a3 & 1);
  }

  return result;
}

__n128 sub_1003A73E0@<Q0>(uint64_t a1@<X8>)
{
  v2 = sub_100140278(&qword_1008EB2B8, &qword_1006ECEE8);
  __chkstk_darwin(v2 - 8);
  v4 = v10 - v3;
  *v4 = static VerticalAlignment.center.getter();
  *(v4 + 1) = 0x4028000000000000;
  v4[16] = 0;
  v5 = sub_100140278(&qword_1008EB2C0, &qword_1006ECEF0);
  sub_1003A7518(&v4[*(v5 + 44)]);
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  sub_100094230(v4, a1);
  v6 = a1 + *(sub_100140278(&qword_1008EB2C8, &qword_1006ECEF8) + 36);
  v7 = v10[5];
  *(v6 + 64) = v10[4];
  *(v6 + 80) = v7;
  *(v6 + 96) = v10[6];
  v8 = v10[1];
  *v6 = v10[0];
  *(v6 + 16) = v8;
  result = v10[3];
  *(v6 + 32) = v10[2];
  *(v6 + 48) = result;
  return result;
}

uint64_t sub_1003A7518@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_100140278(&qword_1008EB2D0, &qword_1006ECF00);
  v3 = v2 - 8;
  __chkstk_darwin(v2);
  v5 = &v23[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v6);
  v8 = &v23[-v7];
  *v8 = static Alignment.center.getter();
  v8[1] = v9;
  v10 = sub_100140278(&qword_1008EB2D8, &qword_1006ECF08);
  sub_1003A78C0(v8 + *(v10 + 44));
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v11 = (v8 + *(v3 + 44));
  v12 = v26;
  *v11 = v25;
  v11[1] = v12;
  v11[2] = v27;
  v13 = static HorizontalAlignment.leading.getter();
  v24 = 0;
  sub_1003A7CD0(&v41);
  v34 = *&v42[80];
  v35 = *&v42[96];
  v36 = *&v42[112];
  v37 = *&v42[128];
  v30 = *&v42[16];
  v31 = *&v42[32];
  v32 = *&v42[48];
  v33 = *&v42[64];
  v28 = v41;
  v29 = *v42;
  v38[6] = *&v42[80];
  v38[7] = *&v42[96];
  v38[8] = *&v42[112];
  v38[9] = *&v42[128];
  v38[2] = *&v42[16];
  v38[3] = *&v42[32];
  v38[4] = *&v42[48];
  v38[5] = *&v42[64];
  v38[0] = v41;
  v38[1] = *v42;
  sub_10001B104(&v28, &v39, &qword_1008EB2E0, &qword_1006ECF10);
  sub_10000EA04(v38, &qword_1008EB2E0, &qword_1006ECF10);
  *&v23[103] = v34;
  *&v23[119] = v35;
  *&v23[135] = v36;
  *&v23[151] = v37;
  *&v23[39] = v30;
  *&v23[55] = v31;
  *&v23[71] = v32;
  *&v23[87] = v33;
  *&v23[7] = v28;
  *&v23[23] = v29;
  v14 = v24;
  sub_10001B104(v8, v5, &qword_1008EB2D0, &qword_1006ECF00);
  sub_10001B104(v5, a1, &qword_1008EB2D0, &qword_1006ECF00);
  v15 = *(sub_100140278(&qword_1008EB2E8, &qword_1006ECF18) + 48);
  *&v40[113] = *&v23[112];
  *&v40[129] = *&v23[128];
  *&v40[145] = *&v23[144];
  *&v40[49] = *&v23[48];
  *&v40[65] = *&v23[64];
  *&v40[81] = *&v23[80];
  *&v40[97] = *&v23[96];
  *&v40[17] = *&v23[16];
  v16 = a1 + v15;
  v39 = v13;
  v40[0] = v14;
  *&v40[160] = *&v23[159];
  *&v40[33] = *&v23[32];
  *&v40[1] = *v23;
  v17 = *&v40[128];
  *(v16 + 128) = *&v40[112];
  *(v16 + 144) = v17;
  *(v16 + 160) = *&v40[144];
  *(v16 + 176) = *&v40[160];
  v18 = *&v40[64];
  *(v16 + 64) = *&v40[48];
  *(v16 + 80) = v18;
  v19 = *&v40[96];
  *(v16 + 96) = *&v40[80];
  *(v16 + 112) = v19;
  v20 = *v40;
  *v16 = v39;
  *(v16 + 16) = v20;
  v21 = *&v40[32];
  *(v16 + 32) = *&v40[16];
  *(v16 + 48) = v21;
  sub_10001B104(&v39, &v41, &qword_1008EB2F0, &qword_1006ECF20);
  sub_10000EA04(v8, &qword_1008EB2D0, &qword_1006ECF00);
  *&v42[113] = *&v23[112];
  *&v42[129] = *&v23[128];
  v43[0] = *&v23[144];
  *&v42[49] = *&v23[48];
  *&v42[65] = *&v23[64];
  *&v42[81] = *&v23[80];
  *&v42[97] = *&v23[96];
  *&v42[1] = *v23;
  *&v42[17] = *&v23[16];
  v41 = v13;
  v42[0] = v14;
  *(v43 + 15) = *&v23[159];
  *&v42[33] = *&v23[32];
  sub_10000EA04(&v41, &qword_1008EB2F0, &qword_1006ECF20);
  return sub_10000EA04(v5, &qword_1008EB2D0, &qword_1006ECF00);
}

uint64_t sub_1003A78C0@<X0>(uint64_t a1@<X8>)
{
  v40 = a1;
  Band = type metadata accessor for TrainingLoadBand();
  v1 = *(Band - 8);
  __chkstk_darwin(Band);
  v3 = &v36 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100140278(&qword_1008EB300, &qword_1006ECF90);
  v5 = v4 - 8;
  __chkstk_darwin(v4);
  v38 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v36 - v8;
  v10 = sub_100140278(&qword_1008E7B48, &unk_1006E8320);
  v11 = v10 - 8;
  __chkstk_darwin(v10);
  v37 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = (&v36 - v14);
  static Color.white.getter();
  v16 = Color.opacity(_:)();

  v17 = v15 + *(v11 + 44);
  v18 = *(type metadata accessor for RoundedRectangle() + 20);
  v19 = enum case for RoundedCornerStyle.continuous(_:);
  v20 = type metadata accessor for RoundedCornerStyle();
  (*(*(v20 - 8) + 104))(&v17[v18], v19, v20);
  __asm { FMOV            V0.2D, #4.0 }

  *v17 = _Q0;
  *&v17[*(sub_100140278(&qword_1008DE1E0, &unk_1006DC6E0) + 36)] = 256;
  *v15 = v16;
  v26 = Image.init(_internalSystemName:)();
  v27 = static Font.largeTitle.getter();
  KeyPath = swift_getKeyPath();
  v41 = v26;
  v42 = KeyPath;
  v43 = v27;
  sub_100140278(&qword_1008E2BE8, &unk_1006E1D00);
  sub_1002397DC();
  View.bold(_:)();

  v29 = Band;
  (*(v1 + 104))(v3, enum case for TrainingLoadBand.near(_:), Band);
  v30 = TrainingLoadBand.color.getter();
  (*(v1 + 8))(v3, v29);
  *&v9[*(v5 + 44)] = v30;
  v31 = v37;
  sub_10001B104(v15, v37, &qword_1008E7B48, &unk_1006E8320);
  v32 = v38;
  sub_10001B104(v9, v38, &qword_1008EB300, &qword_1006ECF90);
  v33 = v40;
  sub_10001B104(v31, v40, &qword_1008E7B48, &unk_1006E8320);
  v34 = sub_100140278(&qword_1008EB308, qword_1006ECF98);
  sub_10001B104(v32, v33 + *(v34 + 48), &qword_1008EB300, &qword_1006ECF90);
  sub_10000EA04(v9, &qword_1008EB300, &qword_1006ECF90);
  sub_10000EA04(v15, &qword_1008E7B48, &unk_1006E8320);
  sub_10000EA04(v32, &qword_1008EB300, &qword_1006ECF90);
  return sub_10000EA04(v31, &qword_1008E7B48, &unk_1006E8320);
}

uint64_t sub_1003A7CD0@<X0>(uint64_t a1@<X8>)
{
  v77 = a1;
  Band = type metadata accessor for TrainingLoadBand();
  v75 = *(Band - 8);
  v76 = Band;
  __chkstk_darwin(Band);
  v74 = &v64 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for Font.Leading();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v64 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = objc_opt_self();
  v8 = [v7 mainBundle];
  v9 = String._bridgeToObjectiveC()();
  v10 = [v8 localizedStringForKey:v9 value:0 table:0];

  v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;

  *&v93 = v11;
  *(&v93 + 1) = v13;
  sub_10000FCBC();
  v14 = Text.init<A>(_:)();
  v71 = v15;
  v72 = v14;
  LOBYTE(v8) = v16;
  v73 = v17;
  KeyPath = swift_getKeyPath();
  static Font.subheadline.getter();
  v68 = enum case for Font.Leading.tight(_:);
  v67 = *(v4 + 104);
  v65 = v3;
  v67(v6);
  v69 = Font.leading(_:)();

  v66 = *(v4 + 8);
  v66(v6, v3);
  v81 = swift_getKeyPath();
  v78 = v8 & 1;
  LOBYTE(v93) = v8 & 1;
  LOBYTE(v100[0]) = 0;
  v80 = static HierarchicalShapeStyle.secondary.getter();
  v79 = static Edge.Set.bottom.getter();
  EdgeInsets.init(_all:)();
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;
  LOBYTE(v93) = 0;
  v26 = [v7 mainBundle];
  v27 = String._bridgeToObjectiveC()();
  v28 = [v26 localizedStringForKey:v27 value:0 table:0];

  v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v31 = v30;

  *&v93 = v29;
  *(&v93 + 1) = v31;
  v32 = Text.init<A>(_:)();
  v34 = v33;
  LOBYTE(v26) = v35;
  static Font.footnote.getter();
  v36 = v65;
  (v67)(v6, v68, v65);
  Font.leading(_:)();

  v66(v6, v36);
  static Font.Weight.semibold.getter();
  Font.weight(_:)();

  v37 = Text.font(_:)();
  v39 = v38;
  LOBYTE(v29) = v40;

  sub_10004642C(v32, v34, v26 & 1);

  v42 = v74;
  v41 = v75;
  v43 = v76;
  (*(v75 + 104))(v74, enum case for TrainingLoadBand.near(_:), v76);
  v44 = TrainingLoadBand.color.getter();
  (*(v41 + 8))(v42, v43);
  *&v93 = v44;
  v45 = Text.foregroundStyle<A>(_:)();
  v47 = v46;
  LODWORD(v76) = v48;
  v50 = v49;
  sub_10004642C(v37, v39, v29 & 1);

  v51 = v71;
  v52 = v72;
  *&v86 = v72;
  *(&v86 + 1) = v71;
  LOBYTE(v87) = v78;
  *(&v87 + 1) = *v84;
  DWORD1(v87) = *&v84[3];
  v53 = v73;
  v55 = v69;
  v54 = KeyPath;
  *(&v87 + 1) = v73;
  *&v88 = KeyPath;
  *(&v88 + 1) = 8;
  LOBYTE(v89) = 0;
  *(&v89 + 1) = *v83;
  DWORD1(v89) = *&v83[3];
  *(&v89 + 1) = v81;
  *&v90 = v69;
  DWORD2(v90) = v80;
  LOBYTE(v91) = v79;
  DWORD1(v91) = *&v85[3];
  *(&v91 + 1) = *v85;
  *(&v91 + 1) = v19;
  *&v92[0] = v21;
  *(&v92[0] + 1) = v23;
  *&v92[1] = v25;
  BYTE8(v92[1]) = 0;
  v95 = v88;
  v96 = v89;
  v93 = v86;
  v94 = v87;
  *(v99 + 9) = *(v92 + 9);
  v98 = v91;
  v99[0] = v92[0];
  v97 = v90;
  LOBYTE(v13) = v76 & 1;
  v82 = v76 & 1;
  v56 = v86;
  v57 = v87;
  v58 = v89;
  v59 = v77;
  *(v77 + 32) = v88;
  *(v59 + 48) = v58;
  *v59 = v56;
  *(v59 + 16) = v57;
  v60 = v97;
  v61 = v98;
  v62 = v99[1];
  *(v59 + 96) = v99[0];
  *(v59 + 112) = v62;
  *(v59 + 64) = v60;
  *(v59 + 80) = v61;
  *(v59 + 128) = v45;
  *(v59 + 136) = v47;
  *(v59 + 144) = v13;
  *(v59 + 152) = v50;
  sub_10001B104(&v86, v100, &qword_1008EB2F8, &qword_1006ECF88);
  sub_10006965C(v45, v47, v13);

  sub_10004642C(v45, v47, v13);

  v100[0] = v52;
  v100[1] = v51;
  v101 = v78;
  *v102 = *v84;
  *&v102[3] = *&v84[3];
  v103 = v53;
  v104 = v54;
  v105 = 8;
  v106 = 0;
  *v107 = *v83;
  *&v107[3] = *&v83[3];
  v108 = v81;
  v109 = v55;
  v110 = v80;
  v111 = v79;
  *&v112[3] = *&v85[3];
  *v112 = *v85;
  v113 = v19;
  v114 = v21;
  v115 = v23;
  v116 = v25;
  v117 = 0;
  return sub_10000EA04(v100, &qword_1008EB2F8, &qword_1006ECF88);
}

unint64_t sub_1003A8378()
{
  result = qword_1008EB310;
  if (!qword_1008EB310)
  {
    sub_100141EEC(&qword_1008EB2C8, &qword_1006ECEF8);
    sub_10014A6B0(&qword_1008EB318, &qword_1008EB2B8, &qword_1006ECEE8, &protocol conformance descriptor for HStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008EB310);
  }

  return result;
}

void sub_1003A8430(uint64_t a1, void *a2, uint64_t a3, void *a4, uint64_t a5, unint64_t a6, uint64_t a7, unint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v71 = a7;
  v72 = a8;
  v70 = a6;
  v68 = a5;
  v73 = a4;
  v64 = a2;
  v75 = a11;
  v76 = a10;
  v66 = type metadata accessor for DispatchWorkItemFlags();
  v12 = *(v66 - 8);
  __chkstk_darwin(v66);
  v14 = &v60 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = type metadata accessor for DispatchQoS();
  v15 = *(v65 - 8);
  __chkstk_darwin(v65);
  v17 = &v60 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = type metadata accessor for DateComponents();
  v67 = *(v69 - 8);
  v18 = *(v67 + 64);
  __chkstk_darwin(v69);
  v78 = &v60 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v77 = &v60 - v20;
  v21 = type metadata accessor for Date();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  __chkstk_darwin(v21);
  __chkstk_darwin(v24);
  v27 = &v60 - v25;
  if (a3)
  {
    v66 = a9;
    v28 = HKLogActivity;
    v62 = &v60 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
    v61 = &v60 - v25;
    v74 = v26;
    swift_errorRetain();
    v29 = v28;
    LODWORD(v65) = static os_log_type_t.error.getter();
    sub_100140278(&unk_1008E4E50, &qword_1006D4A60);
    v30 = swift_allocObject();
    v63 = a3;
    v31 = v30;
    *(v30 + 16) = xmmword_1006D46C0;
    v32 = _convertErrorToNSError(_:)();
    v31[7] = sub_1000059F8(0, &qword_1008E56F0, NSError_ptr);
    v31[8] = sub_10025F118(&qword_1008E4030, &qword_1008E56F0, NSError_ptr);
    v31[4] = v32;
    os_log(_:dso:log:type:_:)("Retrying chart query after error: %@", 36, 2, &_mh_execute_header, v29, v65, v31);

    v33 = *(v22 + 16);
    v34 = v27;
    v35 = v74;
    v33(v34, v68, v74);
    v33(&v60 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0), v70, v35);
    v36 = v67;
    v37 = *(v67 + 16);
    v38 = v69;
    v37(v77, v71, v69);
    v37(v78, v72, v38);
    v39 = *(v22 + 80);
    v40 = (v39 + 24) & ~v39;
    v41 = (v23 + v39 + v40) & ~v39;
    v42 = *(v36 + 80);
    v43 = (v23 + v42 + v41) & ~v42;
    v71 = (v18 + v42 + v43) & ~v42;
    v72 = (v18 + v71 + 7) & 0xFFFFFFFFFFFFFFF8;
    v70 = (v72 + 15) & 0xFFFFFFFFFFFFFFF8;
    v44 = swift_allocObject();
    v45 = v73;
    *(v44 + 16) = v73;
    v46 = *(v22 + 32);
    v47 = v44 + v40;
    v49 = v74;
    v48 = v75;
    v46(v47, v61, v74);
    v46(v44 + v41, v62, v49);
    v50 = *(v36 + 32);
    v50(v44 + v43, v77, v38);
    v50(v44 + v71, v78, v38);
    *(v44 + v72) = v66;
    v51 = (v44 + v70);
    *v51 = v76;
    v51[1] = v48;
    v52 = v45;

    sub_1001B1314(sub_1003AAE10, v44, 0.15);
  }

  else
  {
    sub_1000059F8(0, &qword_1008E3FD0, OS_dispatch_queue_ptr);
    v53 = static OS_dispatch_queue.main.getter();
    v54 = swift_allocObject();
    v55 = v75;
    v54[2] = v76;
    v54[3] = v55;
    v56 = v64;
    v54[4] = v64;
    v54[5] = 0;
    aBlock[4] = sub_1003AADE0;
    aBlock[5] = v54;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1000449A8;
    aBlock[3] = &unk_1008554C0;
    v57 = _Block_copy(aBlock);
    v58 = v56;

    static DispatchQoS.unspecified.getter();
    aBlock[0] = _swiftEmptyArrayStorage;
    sub_1000261C4();
    sub_100140278(&unk_1008E7F50, &qword_1006D8190);
    sub_10002621C();
    v59 = v66;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v57);

    (*(v12 + 8))(v14, v59);
    (*(v15 + 8))(v17, v65);
  }
}

void sub_1003A8B04(char *a1, void *a2, void (*a3)(uint64_t, char *, uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v107 = a7;
  v114 = a5;
  v110 = a4;
  v112 = a3;
  v116 = a2;
  v113 = type metadata accessor for DateComponents();
  v11 = *(v113 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v113);
  v115 = &v86 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v86 - v14;
  v16 = type metadata accessor for Date();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v16);
  v111 = &v86 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v19);
  v109 = &v86 - v21;
  v22 = a6 + 1;
  if (__OFADD__(a6, 1))
  {
    __break(1u);
  }

  else
  {
    v23 = OBJC_IVAR____TtC10FitnessApp21ActivityQueryExecutor_chartQuery;
    if (*&a1[OBJC_IVAR____TtC10FitnessApp21ActivityQueryExecutor_chartQuery])
    {
      v24 = v22;
      [*&a1[OBJC_IVAR____TtC10FitnessApp21ActivityQueryExecutor_healthStore] stopQuery:v20.n128_f64[0]];
      v25 = *&a1[v23];
      *&a1[v23] = 0;

      v22 = v24;
    }

    if (v22 < 11)
    {
      v105 = a8;
      v28 = *(v17 + 16);
      v102 = v22;
      v28(v109, v116, v16, v20);
      v103 = v16;
      v97 = v17 + 16;
      v95 = v28;
      (v28)(v111, v112, v16);
      v106 = v23;
      v29 = *(v11 + 16);
      v30 = v113;
      v29(v15, v110, v113);
      v104 = v15;
      v108 = a1;
      v94 = v11 + 16;
      v92 = v29;
      v29(v115, v114, v30);
      v31 = *(v17 + 80);
      v32 = (v31 + 24) & ~v31;
      v33 = (v18 + v31 + v32) & ~v31;
      v34 = *(v11 + 80);
      v35 = (v18 + v34 + v33) & ~v34;
      v36 = (v12 + v34 + v35) & ~v34;
      v37 = (v12 + v36 + 7) & 0xFFFFFFFFFFFFFFF8;
      v89 = v31 | v34;
      v38 = swift_allocObject();
      *(v38 + 16) = v108;
      v39 = *(v17 + 32);
      v90 = v32;
      v40 = v38 + v32;
      v41 = v103;
      v39(v40, v109, v103);
      v91 = v33;
      v100 = v17 + 32;
      v88 = v39;
      v39(v38 + v33, v111, v41);
      v42 = *(v11 + 32);
      v93 = v35;
      v43 = v113;
      v42(v38 + v35, v104, v113);
      v96 = v36;
      v101 = v11 + 32;
      v42(v38 + v36, v115, v43);
      v99 = v37;
      *(v38 + v37) = v102;
      v98 = (v37 + 15) & 0xFFFFFFFFFFFFFFF8;
      v44 = (v38 + v98);
      v45 = v105;
      *v44 = v107;
      v44[1] = v45;
      v46 = objc_allocWithZone(_HKActivityStatisticsQuery);
      v47 = v108;

      isa = Date._bridgeToObjectiveC()().super.isa;
      v49 = Date._bridgeToObjectiveC()().super.isa;
      v50 = DateComponents._bridgeToObjectiveC()().super.isa;
      v51 = v108;
      v52 = DateComponents._bridgeToObjectiveC()().super.isa;
      v121 = sub_1001FB6E8;
      v122 = v38;
      aBlock = _NSConcreteStackBlock;
      v118 = 1107296256;
      v119 = sub_100018C74;
      v120 = &unk_100855538;
      v53 = _Block_copy(&aBlock);
      v54 = [v46 initWithStartDate:isa endDate:v49 moveIntervalComponents:v50 exerciseIntervalComponents:v52 initialQueryResultsHandler:v53];
      _Block_release(v53);

      v55 = v106;

      v56 = *&v51[v55];
      *&v51[v55] = v54;

      if (v54)
      {
        v57 = v54;
        v55 = v106;
        v58 = String._bridgeToObjectiveC()();
        [v57 setDebugIdentifier:v58];
      }

      if (*&v51[v55])
      {
        v59 = v109;
        v60 = v47;
        v61 = v103;
        v62 = v95;
        v87 = *&v51[v55];
        (v95)(v109, v116, v103);
        v63 = v111;
        (v62)(v111, v112, v61);
        v112 = v42;
        v64 = v104;
        v65 = v113;
        v66 = v92;
        v92(v104, v110, v113);
        v67 = v115;
        v66(v115, v114, v65);
        v68 = v98;
        v69 = swift_allocObject();
        *(v69 + 16) = v60;
        v70 = v60;
        v71 = v88;
        v88(v69 + v90, v59, v61);
        v71(v69 + v91, v63, v61);
        v72 = v64;
        v73 = v112;
        v112(v69 + v93, v72, v65);
        v73(v69 + v96, v67, v65);
        *(v69 + v99) = v102;
        v74 = (v69 + v68);
        v75 = v105;
        *v74 = v107;
        v74[1] = v75;
        v121 = sub_1003AB1DC;
        v122 = v69;
        aBlock = _NSConcreteStackBlock;
        v118 = 1107296256;
        v119 = sub_100018C74;
        v120 = &unk_100855588;
        v76 = _Block_copy(&aBlock);
        v77 = v70;

        v78 = v87;

        [v78 setQueryUpdateHandler:v76];
        _Block_release(v76);

        v79 = *&v108[v106];
        if (v79)
        {
          v80 = v79;
          v81 = static os_log_type_t.default.getter();
          v82 = HKLogActivity;
          sub_100140278(&unk_1008E4E50, &qword_1006D4A60);
          v83 = swift_allocObject();
          *(v83 + 16) = xmmword_1006D46C0;
          v84 = v82;
          v85 = Date._bridgeToObjectiveC()().super.isa;
          *(v83 + 56) = sub_1000059F8(0, &qword_1008E04E0, NSDate_ptr);
          *(v83 + 64) = sub_10025F118(&qword_1008E51E0, &qword_1008E04E0, NSDate_ptr);
          *(v83 + 32) = v85;
          os_log(_:dso:log:_:_:)(v81, &_mh_execute_header, v84, "Executing chart query for start date: %@", 40, 2, v83);

          [*&v77[OBJC_IVAR____TtC10FitnessApp21ActivityQueryExecutor_healthStore] executeQuery:v80];
        }
      }
    }

    else
    {
      v116 = HKLogActivity;
      v26 = static os_log_type_t.default.getter();
      os_log(_:dso:log:type:_:)("Reached maximum number of retries in chart query. Bailing.", 58, 2, &_mh_execute_header, v116, v26, _swiftEmptyArrayStorage);
      v27 = v116;
    }
  }
}

void sub_1003A9424(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchQoS();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v26 = v13;
    v16 = objc_opt_self();
    v17 = a1;
    v25 = v17;
    v18 = [v16 kilocalorieUnit];
    [v17 doubleValue];
    v20 = [objc_opt_self() quantityWithUnit:v18 doubleValue:v19];

    sub_1000059F8(0, &qword_1008E3FD0, OS_dispatch_queue_ptr);
    v21 = static OS_dispatch_queue.main.getter();
    v22 = swift_allocObject();
    v22[2] = a3;
    v22[3] = a4;
    v22[4] = v20;
    aBlock[4] = sub_1001FBD54;
    aBlock[5] = v22;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1000449A8;
    aBlock[3] = &unk_1008556F0;
    v23 = _Block_copy(aBlock);

    v24 = v20;

    static DispatchQoS.unspecified.getter();
    aBlock[0] = _swiftEmptyArrayStorage;
    sub_1000261C4();
    sub_100140278(&unk_1008E7F50, &qword_1006D8190);
    sub_10002621C();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v23);

    (*(v8 + 8))(v10, v7);
    (*(v12 + 8))(v15, v26);
  }
}

void sub_1003A9764(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v115 = a4;
  v117 = a3;
  v118 = a2;
  v120 = a1;
  v5 = type metadata accessor for Calendar.Component();
  v111 = *(v5 - 1);
  v112 = v5;
  __chkstk_darwin(v5);
  v7 = &v102 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100140278(&unk_1008F73A0, &unk_1006DB450);
  __chkstk_darwin(v8 - 8);
  v10 = &v102 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v102 - v12;
  v14 = type metadata accessor for Date();
  v15 = *(v14 - 8);
  v113 = v14;
  v114 = v15;
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v106 = &v102 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v105 = &v102 - v18;
  __chkstk_darwin(v19);
  v21 = &v102 - v20;
  v22 = type metadata accessor for Calendar();
  v116 = *(v22 - 8);
  __chkstk_darwin(v22);
  v24 = &v102 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_100140278(&unk_1008E3FB0, &unk_1006DCB80);
  __chkstk_darwin(v25 - 8);
  v27 = &v102 - v26;
  v28 = sub_100140278(&unk_1008E51A0, &unk_1006E09C0);
  __chkstk_darwin(v28 - 8);
  v30 = &v102 - v29;
  v31 = type metadata accessor for DateComponents();
  v109 = *(v31 - 8);
  v110 = v31;
  __chkstk_darwin(v31);
  v119 = &v102 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = [objc_opt_self() quantityTypeForIdentifier:HKQuantityTypeIdentifierBasalEnergyBurned];
  if (v33)
  {
    v108 = v22;
    v107 = v33;
    v34 = OBJC_IVAR____TtC10FitnessApp21ActivityQueryExecutor_basalEnergyQuery;
    if (*(v4 + OBJC_IVAR____TtC10FitnessApp21ActivityQueryExecutor_basalEnergyQuery))
    {
      [*(v4 + OBJC_IVAR____TtC10FitnessApp21ActivityQueryExecutor_healthStore) stopQuery:?];
      v35 = *(v4 + v34);
      *(v4 + v34) = 0;
    }

    v104 = v34;
    if (v118 < 11)
    {
      v103 = v4;
      (v116)[7](v30, 1, 1, v108);
      v43 = type metadata accessor for TimeZone();
      (*(*(v43 - 8) + 56))(v27, 1, 1, v43);
      DateComponents.init(calendar:timeZone:era:year:month:day:hour:minute:second:nanosecond:weekday:weekdayOrdinal:quarter:weekOfMonth:weekOfYear:yearForWeekOfYear:)();
      DateComponents.day.setter();
      static Calendar.autoupdatingCurrent.getter();
      Calendar.startOfDay(for:)();
      v45 = v111;
      v44 = v112;
      v111[13](v7, enum case for Calendar.Component.day(_:), v112);
      Calendar.date(byAdding:value:to:wrappingComponents:)();
      (v45[1])(v7, v44);
      v46.super.isa = Date._bridgeToObjectiveC()().super.isa;
      sub_1001CE7A0(v13, v10);
      v48 = v113;
      v47 = v114;
      isa = 0;
      if ((*(v114 + 48))(v10, 1, v113) != 1)
      {
        isa = Date._bridgeToObjectiveC()().super.isa;
        (*(v47 + 8))(v10, v48);
      }

      v50 = [objc_opt_self() predicateForSamplesWithStartDate:v46.super.isa endDate:isa options:0];

      sub_1001F145C(v13);
      (*(v47 + 8))(v21, v48);
      (v116[1])(v24, v108);
      v51 = [objc_opt_self() sharedBehavior];
      if (v51)
      {
        v52 = v51;
        v53 = [v51 isStandalonePhoneFitnessMode];

        v54 = v103;
        if ((v53 & 1) == 0)
        {
          sub_100140278(&unk_1008E4E20, &qword_1006D5040);
          v55 = swift_allocObject();
          *(v55 + 16) = xmmword_1006D68D0;
          v56 = *(v54 + OBJC_IVAR____TtC10FitnessApp21ActivityQueryExecutor_watchSourcePredicate);
          *(v55 + 32) = v56;
          *(v55 + 40) = v50;
          sub_1000059F8(0, &unk_1008E4070, NSPredicate_ptr);
          v57 = v56;
          v58 = v50;
          v59 = Array._bridgeToObjectiveC()().super.isa;

          v50 = [objc_opt_self() andPredicateWithSubpredicates:v59];
        }

        v60 = v104;
        v61 = objc_allocWithZone(HKStatisticsCollectionQuery);
        v62 = v50;
        v63 = v107;
        v64 = Date._bridgeToObjectiveC()().super.isa;
        v65 = DateComponents._bridgeToObjectiveC()().super.isa;
        v66 = [v61 initWithQuantityType:v63 quantitySamplePredicate:v62 options:16 anchorDate:v64 intervalComponents:v65];

        v67 = *(v54 + v60);
        *(v54 + v60) = v66;
        v68 = v66;

        if (v68)
        {
          v69 = String._bridgeToObjectiveC()();
          [v68 setDebugIdentifier:v69];
        }

        v70 = *(v54 + v60);
        if (v70)
        {
          v71 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v72 = v114;
          v73 = *(v114 + 16);
          v108 = v114 + 16;
          v111 = v73;
          v116 = v62;
          v74 = v105;
          (v73)(v105, v120, v48);
          v75 = *(v72 + 80);
          v76 = (v75 + 24) & ~v75;
          v107 = (v16 + 7);
          v77 = v16 + 7 + v76;
          v78 = v48;
          v79 = v77 & 0xFFFFFFFFFFFFFFF8;
          v112 = v63;
          v80 = ((v77 & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
          v81 = swift_allocObject();
          *(v81 + 16) = v71;
          v114 = *(v72 + 32);
          v82 = v74;
          v83 = v78;
          (v114)(v81 + v76, v82, v78);
          v84 = v117;
          *(v81 + v79) = v118;
          v85 = (v81 + v80);
          v86 = v115;
          *v85 = v84;
          v85[1] = v86;
          v125 = sub_1003AAF3C;
          v126 = v81;
          aBlock = _NSConcreteStackBlock;
          v122 = 1107296256;
          v118 = &v123;
          v123 = sub_100018C74;
          v124 = &unk_100855650;
          v87 = _Block_copy(&aBlock);

          v88 = v70;
          v105 = v88;

          sub_10000B210(sub_1003AAF3C, v81);

          [v88 setInitialResultsHandler:v87];
          _Block_release(v87);

          v89 = v106;
          v90 = v83;
          (v111)(v106, v120, v83);
          v91 = (v75 + 16) & ~v75;
          v92 = (v107 + v91) & 0xFFFFFFFFFFFFFFF8;
          v93 = swift_allocObject();
          (v114)(v93 + v91, v89, v90);
          v94 = (v93 + v92);
          *v94 = v117;
          v94[1] = v86;
          v125 = sub_1003AB004;
          v126 = v93;
          aBlock = _NSConcreteStackBlock;
          v122 = 1107296256;
          v123 = sub_1003AAC30;
          v124 = &unk_100855628;
          v95 = _Block_copy(&aBlock);

          sub_10000B210(sub_1003AB004, v93);

          v96 = v105;
          [v105 setStatisticsUpdateHandler:v95];
          _Block_release(v95);

          v97 = static os_log_type_t.default.getter();
          v98 = HKLogActivity;
          sub_100140278(&unk_1008E4E50, &qword_1006D4A60);
          v99 = swift_allocObject();
          *(v99 + 16) = xmmword_1006D46C0;
          v100 = v98;
          v101 = Date._bridgeToObjectiveC()().super.isa;
          *(v99 + 56) = sub_1000059F8(0, &qword_1008E04E0, NSDate_ptr);
          *(v99 + 64) = sub_10025F118(&qword_1008E51E0, &qword_1008E04E0, NSDate_ptr);
          *(v99 + 32) = v101;
          os_log(_:dso:log:_:_:)(v97, &_mh_execute_header, v100, "Executing basal stats query for date: %@", 40, 2, v99);

          [*(v103 + OBJC_IVAR____TtC10FitnessApp21ActivityQueryExecutor_healthStore) executeQuery:v96];

          (*(v109 + 8))(v119, v110);
        }

        else
        {
          (*(v109 + 8))(v119, v110);
        }
      }

      else
      {
        __break(1u);
      }
    }

    else
    {
      v36 = HKLogActivity;
      v37 = static os_log_type_t.default.getter();
      os_log(_:dso:log:type:_:)("Reached maximum number of retries in basal energy query. Executing raw calculation.", 83, 2, &_mh_execute_header, v36, v37, _swiftEmptyArrayStorage);

      v38 = *(v4 + OBJC_IVAR____TtC10FitnessApp21ActivityQueryExecutor_healthStore);
      v39 = Date._bridgeToObjectiveC()().super.isa;
      v40 = swift_allocObject();
      v41 = v115;
      *(v40 + 16) = v117;
      *(v40 + 24) = v41;
      v125 = sub_1003AB0CC;
      v126 = v40;
      aBlock = _NSConcreteStackBlock;
      v122 = 1107296256;
      v123 = sub_100212B08;
      v124 = &unk_1008556A0;
      v42 = _Block_copy(&aBlock);

      [v38 ch_calculateBMRForDate:v39 useEndOfDay:1 completion:v42];
      _Block_release(v42);
    }
  }
}

void sub_1003AA500(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v22 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchQoS();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  isa = Date._bridgeToObjectiveC()().super.isa;
  v15 = [a1 statisticsForDate:isa];

  if (v15)
  {
    v16 = [v15 sumQuantity];

    if (v16)
    {
      sub_1000059F8(0, &qword_1008E3FD0, OS_dispatch_queue_ptr);
      v17 = static OS_dispatch_queue.main.getter();
      v18 = swift_allocObject();
      v18[2] = a3;
      v18[3] = a4;
      v18[4] = v16;
      aBlock[4] = sub_1003AB1FC;
      aBlock[5] = v18;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1000449A8;
      aBlock[3] = &unk_100855740;
      v19 = _Block_copy(aBlock);

      v20 = v16;

      static DispatchQoS.unspecified.getter();
      aBlock[0] = _swiftEmptyArrayStorage;
      sub_1000261C4();
      sub_100140278(&unk_1008E7F50, &qword_1006D8190);
      sub_10002621C();
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v19);

      (*(v22 + 8))(v9, v7);
      (*(v11 + 8))(v13, v10);
    }
  }
}

void sub_1003AA80C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v38 = a5;
  v13 = type metadata accessor for Date();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v17 = Strong;
    if (a3)
    {
      v37 = a7;
      v18 = HKLogActivity;
      swift_errorRetain();
      v34 = v18;
      v33 = static os_log_type_t.default.getter();
      sub_100140278(&unk_1008E4E50, &qword_1006D4A60);
      v36 = a6;
      v19 = swift_allocObject();
      *(v19 + 16) = xmmword_1006D46C0;
      v20 = _convertErrorToNSError(_:)();
      v35 = a8;
      *(v19 + 56) = sub_1000059F8(0, &qword_1008E56F0, NSError_ptr);
      *(v19 + 64) = sub_10025F118(&qword_1008E4030, &qword_1008E56F0, NSError_ptr);
      *(v19 + 32) = v20;
      os_log(_:dso:log:type:_:)("Error encountered in basal energy calculation: %@", 49, 2, &_mh_execute_header, v34, v33, v19);

      (*(v14 + 16))(&v32[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)], v38, v13);
      v21 = (*(v14 + 80) + 24) & ~*(v14 + 80);
      v22 = (v15 + v21 + 7) & 0xFFFFFFFFFFFFFFF8;
      v23 = swift_allocObject();
      *(v23 + 16) = v17;
      (*(v14 + 32))(v23 + v21, &v32[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)], v13);
      v24 = v37;
      *(v23 + v22) = v36;
      v25 = (v23 + ((v22 + 15) & 0xFFFFFFFFFFFFFFF8));
      v26 = v35;
      *v25 = v24;
      v25[1] = v26;
      v17 = v17;

      sub_1001B1314(sub_1003AB114, v23, 0.15);
    }

    else if (a2)
    {
      v27 = a2;
      sub_1003AA500(v27, v38, a7, a8);
    }

    else
    {
      v28 = *(Strong + OBJC_IVAR____TtC10FitnessApp21ActivityQueryExecutor_healthStore);
      isa = Date._bridgeToObjectiveC()().super.isa;
      v30 = swift_allocObject();
      *(v30 + 16) = a7;
      *(v30 + 24) = a8;
      aBlock[4] = sub_1003AB1D8;
      aBlock[5] = v30;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100212B08;
      aBlock[3] = &unk_100855790;
      v31 = _Block_copy(aBlock);

      [v28 ch_calculateBMRForDate:isa useEndOfDay:1 completion:v31];
      _Block_release(v31);

      v17 = isa;
    }
  }
}

void sub_1003AABC4(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a3)
  {
    v10 = a3;
    sub_1003AA500(v10, a5, a6, a7);
  }
}

void sub_1003AAC30(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = *(a1 + 32);

  v13 = a2;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v9(v13, a3, a4, a5);
}

id sub_1003AAD1C(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for ActivityQueryExecutor();
  return objc_msgSendSuper2(&v3, "dealloc");
}

void sub_1003AAE10(uint64_t a1, uint64_t a2)
{
  v3 = *(type metadata accessor for Date() - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 24) & ~v4;
  v6 = *(v3 + 64);
  v7 = (v6 + v4 + v5) & ~v4;
  v8 = *(type metadata accessor for DateComponents() - 8);
  v9 = *(v8 + 80);
  v10 = (v7 + v6 + v9) & ~v9;
  v11 = *(v8 + 64);
  v12 = (v11 + v9 + v10) & ~v9;
  v13 = (v11 + v12 + 7) & 0xFFFFFFFFFFFFFFF8;
  v14 = *(v2 + v13);
  v15 = *(v2 + 16);
  v16 = (v2 + ((v13 + 15) & 0xFFFFFFFFFFFFFFF8));
  v17 = *v16;
  v18 = v16[1];

  sub_1003A8B04(v15, (v2 + v5), (v2 + v7), v2 + v10, v2 + v12, v14, v17, v18);
}

void sub_1003AAF3C(uint64_t a1, void *a2, uint64_t a3)
{
  v7 = *(type metadata accessor for Date() - 8);
  v8 = (*(v7 + 80) + 24) & ~*(v7 + 80);
  v9 = (*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = *(v3 + v9);
  v11 = *(v3 + 16);
  v12 = (v3 + ((v9 + 15) & 0xFFFFFFFFFFFFFFF8));
  v13 = *v12;
  v14 = v12[1];

  sub_1003AA80C(a1, a2, a3, v11, v3 + v8, v10, v13, v14);
}

void sub_1003AB004(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v9 = *(type metadata accessor for Date() - 8);
  v10 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v11 = (v4 + ((*(v9 + 64) + v10 + 7) & 0xFFFFFFFFFFFFFFF8));
  v12 = *v11;
  v13 = v11[1];

  sub_1003AABC4(a1, a2, a3, a4, v4 + v10, v12, v13);
}

uint64_t sub_1003AB0D4()
{

  return _swift_deallocObject(v0, 40, 7);
}

void sub_1003AB114(uint64_t a1, uint64_t a2)
{
  v3 = *(type metadata accessor for Date() - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v2 + v5);
  if (__OFADD__(v6, 1))
  {
    __break(1u);
  }

  else
  {
    sub_1003A9764(v2 + v4, v6 + 1, *(v2 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v2 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 8));
  }
}

void *sub_1003AB20C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v9 = __chkstk_darwin(v8).n128_u64[0];
  v11 = &v20 - v10;
  v12 = _swiftEmptyArrayStorage;
  v21 = _swiftEmptyArrayStorage;
  v13 = [v3 workoutEvents];
  if (v13)
  {
    v14 = v13;
    sub_1000059F8(0, &qword_1008DC000, HKWorkoutEvent_ptr);
    v15 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v16 = [v3 startDate];
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v17 = [v3 endDate];
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    sub_1003AB408(v11, v7, v15, &v21, sub_1003AC084);

    v18 = *(v5 + 8);
    v18(v7, v4);
    v18(v11, v4);
    return v21;
  }

  return v12;
}

uint64_t sub_1003AB408(uint64_t a1, uint64_t a2, unint64_t a3, size_t *a4, void (*a5)(char *, uint64_t, size_t *))
{
  v47 = a5;
  v52 = a4;
  v62 = type metadata accessor for DateInterval();
  v53 = *(v62 - 8);
  __chkstk_darwin(v62);
  v55 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v47 - v9;
  v11 = type metadata accessor for Date();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v51 = &v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v54 = &v47 - v15;
  __chkstk_darwin(v16);
  v18 = &v47 - v17;
  v20 = __chkstk_darwin(v19);
  v21 = *(v12 + 16);
  v60 = &v47 - v22;
  v63 = v23;
  v57 = v21;
  v58 = v12 + 16;
  result = v21(v20);
  if (!(a3 >> 62))
  {
    v25 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v25)
    {
      goto LABEL_3;
    }

    return (*(v12 + 8))(v60, v63);
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  v25 = result;
  if (!result)
  {
    return (*(v12 + 8))(v60, v63);
  }

LABEL_3:
  if (v25 >= 1)
  {
    v26 = 0;
    v64 = a3 & 0xC000000000000001;
    v61 = (v53 + 8);
    v48 = v12;
    v49 = v53 + 32;
    v27 = (v12 + 8);
    LODWORD(v59) = 1;
    v28 = v60;
    v56 = a2;
    v50 = v25;
    do
    {
      if (v64)
      {
        v29 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v29 = *(a3 + 8 * v26 + 32);
      }

      v30 = v29;
      if ([v29 type] == 1 || objc_msgSend(v30, "type") == 2)
      {
        v31 = [v30 dateInterval];
        static DateInterval._unconditionallyBridgeFromObjectiveC(_:)();

        DateInterval.start.getter();
        (*v61)(v10, v62);
        if (Date.compare(_:)() == -1 || Date.compare(_:)() == 1)
        {

          (*v27)(v18, v63);
        }

        else
        {
          if ((v59 & 1) == 0 && Date.compare(_:)() == 1)
          {
            v32 = v28;
            v33 = v63;
            v34 = v57;
            (v57)(v54, v32, v63);
            (v34)(v51, v18, v33);
            DateInterval.init(start:end:)();
            v35 = v52;
            v36 = *v52;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            *v35 = v36;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              v36 = sub_1001A1B60(0, v36[2] + 1, 1, v36);
              *v52 = v36;
            }

            v39 = v36[2];
            v38 = v36[3];
            v40 = v39 + 1;
            v28 = v60;
            v25 = v50;
            if (v39 >= v38 >> 1)
            {
              v59 = v39 + 1;
              v46 = sub_1001A1B60((v38 > 1), v39 + 1, 1, v36);
              v40 = v59;
              v36 = v46;
              *v52 = v46;
            }

            v36[2] = v40;
            (*(v53 + 32))(v36 + ((*(v53 + 80) + 32) & ~*(v53 + 80)) + *(v53 + 72) * v39, v55, v62);
          }

          v41 = *v27;
          v42 = v28;
          v43 = v63;
          (*v27)(v42, v63);
          (v57)(v60, v18, v43);
          v44 = [v30 type];

          v45 = v43;
          v28 = v60;
          v41(v18, v45);
          LODWORD(v59) = v44 == 2;
          a2 = v56;
        }
      }

      else
      {
      }

      ++v26;
    }

    while (v25 != v26);
    v12 = v48;
    if ((v59 & 1) == 0 && Date.compare(_:)() == 1)
    {
      v47(v60, a2, v52);
    }

    return (*(v12 + 8))(v60, v63);
  }

  __break(1u);
  return result;
}

uint64_t sub_1003AB9FC()
{
  result = static RaceMetadataKeys.averagePaceOnRoute.getter();
  qword_100925738 = result;
  unk_100925740 = v1;
  return result;
}

uint64_t sub_1003ABA48()
{
  result = static RaceMetadataKeys.referenceWorkoutUUID.getter();
  qword_100925748 = result;
  unk_100925750 = v1;
  return result;
}

uint64_t sub_1003ABB44(uint64_t a1, uint64_t (*a2)(void), uint64_t *a3, void *a4)
{
  type metadata accessor for IntervalWorkoutConfiguration();
  result = a2();
  *a3 = result;
  *a4 = v8;
  return result;
}

uint64_t sub_1003ABBB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v41 = a2;
  v5 = type metadata accessor for DateInterval();
  v39 = *(v5 - 8);
  v40 = v5;
  __chkstk_darwin(v5);
  v38 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100140278(&unk_1008F73A0, &unk_1006DB450);
  __chkstk_darwin(v7 - 8);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v36 - v11;
  v13 = type metadata accessor for Date();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v37 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v36 - v17;
  __chkstk_darwin(v19);
  v42 = &v36 - v20;
  __chkstk_darwin(v21);
  v23 = &v36 - v22;
  sub_10001B104(a1, v12, &unk_1008F73A0, &unk_1006DB450);
  v24 = *(v14 + 48);
  if (v24(v12, 1, v13) == 1)
  {
    return sub_10000EA04(v12, &unk_1008F73A0, &unk_1006DB450);
  }

  v36 = a3;
  v26 = *(v14 + 32);
  v26(v23, v12, v13);
  sub_10001B104(v41, v9, &unk_1008F73A0, &unk_1006DB450);
  if (v24(v9, 1, v13) == 1)
  {
    (*(v14 + 8))(v23, v13);
    return sub_10000EA04(v9, &unk_1008F73A0, &unk_1006DB450);
  }

  else
  {
    v27 = v42;
    v26(v42, v9, v13);
    v28 = *(v14 + 16);
    v28(v18, v23, v13);
    v28(v37, v27, v13);
    v29 = v38;
    DateInterval.init(start:end:)();
    v30 = v36;
    swift_beginAccess();
    v31 = *(v30 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v30 + 16) = v31;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v31 = sub_1001A1B60(0, v31[2] + 1, 1, v31);
      *(v30 + 16) = v31;
    }

    v34 = v31[2];
    v33 = v31[3];
    if (v34 >= v33 >> 1)
    {
      v31 = sub_1001A1B60((v33 > 1), v34 + 1, 1, v31);
    }

    v31[2] = v34 + 1;
    (*(v39 + 32))(v31 + ((*(v39 + 80) + 32) & ~*(v39 + 80)) + *(v39 + 72) * v34, v29, v40);
    *(v30 + 16) = v31;
    v35 = *(v14 + 8);
    v35(v42, v13);
    return (v35)(v23, v13);
  }
}

uint64_t sub_1003AC084(uint64_t a1, uint64_t a2, void *a3)
{
  v25 = a3;
  v5 = type metadata accessor for Date();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v24 - v10;
  v12 = type metadata accessor for DateInterval();
  v13 = *(v12 - 8);
  v14 = __chkstk_darwin(v12);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(v6 + 16);
  v17(v11, a1, v5, v14);
  (v17)(v8, a2, v5);
  v18 = v25;
  DateInterval.init(start:end:)();
  v19 = *v18;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v18 = v19;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v19 = sub_1001A1B60(0, v19[2] + 1, 1, v19);
    *v18 = v19;
  }

  v22 = v19[2];
  v21 = v19[3];
  if (v22 >= v21 >> 1)
  {
    v19 = sub_1001A1B60((v21 > 1), v22 + 1, 1, v19);
    *v18 = v19;
  }

  v19[2] = v22 + 1;
  return (*(v13 + 32))(v19 + ((*(v13 + 80) + 32) & ~*(v13 + 80)) + *(v13 + 72) * v22, v16, v12);
}

uint64_t sub_1003AC468()
{
  v1 = type metadata accessor for ConfigurationType();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v6 = __chkstk_darwin(v5).n128_u64[0];
  v8 = &v17 - v7;
  if ([v0 workoutActivityType] == 84)
  {
    LOBYTE(v9) = 1;
  }

  else
  {
    v10 = [v0 metadata];
    if (v10)
    {
      v11 = v10;
      static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
    }

    type metadata accessor for WorkoutConfiguration();
    type metadata accessor for BlastDoorConfigurationValidator();
    swift_allocObject();
    BlastDoorConfigurationValidator.init()();
    v9 = static WorkoutConfiguration.deserialize(from:requiringOccurrence:validator:)();

    if (v9)
    {
      dispatch thunk of WorkoutConfiguration.type.getter();

      (*(v2 + 32))(v8, v4, v1);
      sub_100140278(&unk_1008EB390, qword_1006ED068);
      v9 = *(v2 + 72);
      v12 = (*(v2 + 80) + 32) & ~*(v2 + 80);
      v13 = swift_allocObject();
      *(v13 + 16) = xmmword_1006D64F0;
      v14 = v13 + v12;
      v15 = *(v2 + 104);
      v15(v14, enum case for ConfigurationType.interval(_:), v1);
      v15(v14 + v9, enum case for ConfigurationType.pacer(_:), v1);
      v15(v14 + 2 * v9, enum case for ConfigurationType.race(_:), v1);
      LOBYTE(v9) = sub_100357518(v8, v13);
      swift_setDeallocating();
      swift_arrayDestroy();
      swift_deallocClassInstance();
      (*(v2 + 8))(v8, v1);
    }
  }

  return v9 & 1;
}

BOOL sub_1003AC770()
{
  v1 = type metadata accessor for ConfigurationType();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v35 = &v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100140278(&qword_1008EB380, &qword_1006ED058);
  __chkstk_darwin(v4);
  v6 = &v34 - v5;
  v7 = sub_100140278(&qword_1008EB388, &qword_1006ED060);
  __chkstk_darwin(v7 - 8);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v34 - v11;
  *&v14 = __chkstk_darwin(v13).n128_u64[0];
  v16 = &v34 - v15;
  v37 = v0;
  v17 = [v0 metadata];
  v36 = v9;
  if (v17)
  {
    v18 = v17;
    static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  type metadata accessor for WorkoutConfiguration();
  type metadata accessor for BlastDoorConfigurationValidator();
  swift_allocObject();
  BlastDoorConfigurationValidator.init()();
  v19 = static WorkoutConfiguration.deserialize(from:requiringOccurrence:validator:)();

  if (v19)
  {
    dispatch thunk of WorkoutConfiguration.type.getter();

    v20 = *(v2 + 56);
    v20(v16, 0, 1, v1);
  }

  else
  {
    v20 = *(v2 + 56);
    v20(v16, 1, 1, v1);
  }

  (*(v2 + 104))(v12, enum case for ConfigurationType.interval(_:), v1);
  v20(v12, 0, 1, v1);
  v21 = *(v4 + 48);
  sub_10001B104(v16, v6, &qword_1008EB388, &qword_1006ED060);
  sub_10001B104(v12, &v6[v21], &qword_1008EB388, &qword_1006ED060);
  v22 = *(v2 + 48);
  if (v22(v6, 1, v1) == 1)
  {
    sub_10000EA04(v12, &qword_1008EB388, &qword_1006ED060);
    sub_10000EA04(v16, &qword_1008EB388, &qword_1006ED060);
    if (v22(&v6[v21], 1, v1) == 1)
    {
      sub_10000EA04(v6, &qword_1008EB388, &qword_1006ED060);
      return 1;
    }

    goto LABEL_11;
  }

  v23 = v36;
  sub_10001B104(v6, v36, &qword_1008EB388, &qword_1006ED060);
  if (v22(&v6[v21], 1, v1) == 1)
  {
    sub_10000EA04(v12, &qword_1008EB388, &qword_1006ED060);
    sub_10000EA04(v16, &qword_1008EB388, &qword_1006ED060);
    (*(v2 + 8))(v23, v1);
LABEL_11:
    sub_10000EA04(v6, &qword_1008EB380, &qword_1006ED058);
    goto LABEL_12;
  }

  v29 = &v6[v21];
  v30 = v35;
  (*(v2 + 32))(v35, v29, v1);
  sub_1003B05C8();
  v31 = v23;
  v32 = dispatch thunk of static Equatable.== infix(_:_:)();
  v33 = *(v2 + 8);
  v33(v30, v1);
  sub_10000EA04(v12, &qword_1008EB388, &qword_1006ED060);
  sub_10000EA04(v16, &qword_1008EB388, &qword_1006ED060);
  v33(v31, v1);
  sub_10000EA04(v6, &qword_1008EB388, &qword_1006ED060);
  if (v32)
  {
    return 1;
  }

LABEL_12:
  v24 = v37;
  if ([v37 isMultiSportWorkout])
  {
    return 0;
  }

  v26 = [v24 workoutActivities];
  sub_1000059F8(0, &qword_1008EAF90, HKWorkoutActivity_ptr);
  v27 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v27 >> 62)
  {
    v28 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v28 = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return v28 > 1;
}

BOOL sub_1003ACD8C()
{
  v1 = v0;
  v2 = [v0 metadata];
  if (v2)
  {
    v3 = v2;
    static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  type metadata accessor for WorkoutConfiguration();
  type metadata accessor for BlastDoorConfigurationValidator();
  swift_allocObject();
  BlastDoorConfigurationValidator.init()();
  v4 = static WorkoutConfiguration.deserialize(from:requiringOccurrence:validator:)();

  if (!v4)
  {
    goto LABEL_8;
  }

  type metadata accessor for RaceWorkoutConfiguration();
  if (!swift_dynamicCastClass())
  {

LABEL_8:
    v8 = static os_log_type_t.default.getter();
    v9 = HKLogWorkouts;
    os_log(_:dso:log:_:_:)(v8, &_mh_execute_header, v9, "[race] unable to serialize race as race configuration", 53, 2, _swiftEmptyArrayStorage);

    return 0;
  }

  v5.value._rawValue = [v1 metadata];
  if (v5.value._rawValue)
  {
    rawValue = v5.value._rawValue;
    v7 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v7 = 0;
  }

  v5.value._rawValue = v7;
  v11 = RaceWorkoutConfiguration.shouldShowResultsRow(metadata:)(v5);

  return v11;
}

double sub_1003ACF7C()
{
  v1.super.super.super.isa = v0;
  v2 = [(objc_class *)v0 metadata];
  if (v2)
  {
    v3 = v2;
    static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  type metadata accessor for WorkoutConfiguration();
  type metadata accessor for BlastDoorConfigurationValidator();
  swift_allocObject();
  BlastDoorConfigurationValidator.init()();
  v4 = static WorkoutConfiguration.deserialize(from:requiringOccurrence:validator:)();

  if (!v4)
  {
    goto LABEL_7;
  }

  type metadata accessor for RaceWorkoutConfiguration();
  if (!swift_dynamicCastClass())
  {

LABEL_7:
    v6 = static os_log_type_t.default.getter();
    v4 = HKLogWorkouts;
    os_log(_:dso:log:_:_:)(v6, &_mh_execute_header, v4, "[race] unable to serialize race as race configuration", 53, 2, _swiftEmptyArrayStorage);
    v5 = 0.0;
    goto LABEL_8;
  }

  v5 = RaceWorkoutConfiguration.raceTimeFrom(_:)(v1);
LABEL_8:

  return v5;
}

uint64_t sub_1003AD0E0()
{
  v1.super.super.super.isa = v0;
  v2 = [(objc_class *)v0 metadata];
  if (v2)
  {
    v3 = v2;
    static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  type metadata accessor for WorkoutConfiguration();
  type metadata accessor for BlastDoorConfigurationValidator();
  swift_allocObject();
  BlastDoorConfigurationValidator.init()();
  v4 = static WorkoutConfiguration.deserialize(from:requiringOccurrence:validator:)();

  if (v4)
  {
    type metadata accessor for RaceWorkoutConfiguration();
    if (swift_dynamicCastClass())
    {
      v9 = RaceWorkoutConfiguration.secondsAheadFrom(_:)(v1);
      v5 = *&v9.is_nil;

      return v5;
    }
  }

  v7 = static os_log_type_t.default.getter();
  v8 = HKLogWorkouts;
  os_log(_:dso:log:_:_:)(v7, &_mh_execute_header, v8, "[race] unable to serialize race as race configuration", 53, 2, _swiftEmptyArrayStorage);

  return 0;
}

BOOL sub_1003AD280()
{
  v1 = v0;
  v2 = [v0 metadata];
  if (v2)
  {
    v3 = v2;
    static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  type metadata accessor for WorkoutConfiguration();
  type metadata accessor for BlastDoorConfigurationValidator();
  swift_allocObject();
  BlastDoorConfigurationValidator.init()();
  v4 = static WorkoutConfiguration.deserialize(from:requiringOccurrence:validator:)();

  if (!v4)
  {
    goto LABEL_7;
  }

  type metadata accessor for RaceWorkoutConfiguration();
  if (!swift_dynamicCastClass())
  {

LABEL_7:
    v8 = static os_log_type_t.default.getter();
    v4 = HKLogWorkouts;
    os_log(_:dso:log:_:_:)(v8, &_mh_execute_header, v4, "[race] unable to serialize race as race configuration", 53, 2, _swiftEmptyArrayStorage);
    v7 = 0;
    goto LABEL_8;
  }

  [v1 raceTime];
  v6 = v5;
  v10.is_nil = sub_1003AD0E0();
  v7 = RaceWorkoutConfiguration.raceTimeWouldWinRace(_:secondsAhead:)(v6, v10);
LABEL_8:

  return v7;
}

uint64_t sub_1003AD450(unsigned int *a1)
{
  v32 = a1;
  v2 = type metadata accessor for ConfigurationType();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v30 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100140278(&qword_1008EB380, &qword_1006ED058);
  __chkstk_darwin(v5);
  v7 = &v29 - v6;
  v8 = sub_100140278(&qword_1008EB388, &qword_1006ED060);
  __chkstk_darwin(v8 - 8);
  v31 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v29 - v11;
  *&v14 = __chkstk_darwin(v13).n128_u64[0];
  v16 = &v29 - v15;
  v17 = [v1 metadata];
  if (v17)
  {
    v18 = v17;
    static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  type metadata accessor for WorkoutConfiguration();
  type metadata accessor for BlastDoorConfigurationValidator();
  swift_allocObject();
  BlastDoorConfigurationValidator.init()();
  v19 = static WorkoutConfiguration.deserialize(from:requiringOccurrence:validator:)();

  if (v19)
  {
    dispatch thunk of WorkoutConfiguration.type.getter();

    v20 = *(v3 + 56);
    v20(v16, 0, 1, v2);
  }

  else
  {
    v20 = *(v3 + 56);
    v20(v16, 1, 1, v2);
  }

  (*(v3 + 104))(v12, *v32, v2);
  v20(v12, 0, 1, v2);
  v21 = *(v5 + 48);
  sub_10001B104(v16, v7, &qword_1008EB388, &qword_1006ED060);
  sub_10001B104(v12, &v7[v21], &qword_1008EB388, &qword_1006ED060);
  v22 = *(v3 + 48);
  if (v22(v7, 1, v2) != 1)
  {
    v24 = v31;
    sub_10001B104(v7, v31, &qword_1008EB388, &qword_1006ED060);
    if (v22(&v7[v21], 1, v2) != 1)
    {
      v25 = v30;
      (*(v3 + 32))(v30, &v7[v21], v2);
      sub_1003B05C8();
      v26 = v24;
      v23 = dispatch thunk of static Equatable.== infix(_:_:)();
      v27 = *(v3 + 8);
      v27(v25, v2);
      sub_10000EA04(v12, &qword_1008EB388, &qword_1006ED060);
      sub_10000EA04(v16, &qword_1008EB388, &qword_1006ED060);
      v27(v26, v2);
      sub_10000EA04(v7, &qword_1008EB388, &qword_1006ED060);
      return v23 & 1;
    }

    sub_10000EA04(v12, &qword_1008EB388, &qword_1006ED060);
    sub_10000EA04(v16, &qword_1008EB388, &qword_1006ED060);
    (*(v3 + 8))(v24, v2);
    goto LABEL_11;
  }

  sub_10000EA04(v12, &qword_1008EB388, &qword_1006ED060);
  sub_10000EA04(v16, &qword_1008EB388, &qword_1006ED060);
  if (v22(&v7[v21], 1, v2) != 1)
  {
LABEL_11:
    sub_10000EA04(v7, &qword_1008EB380, &qword_1006ED058);
    v23 = 0;
    return v23 & 1;
  }

  sub_10000EA04(v7, &qword_1008EB388, &qword_1006ED060);
  v23 = 1;
  return v23 & 1;
}

double sub_1003ADA48(double (*a1)(void))
{
  v3 = [v1 metadata];
  if (v3)
  {
    v4 = v3;
    static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  type metadata accessor for WorkoutConfiguration();
  type metadata accessor for BlastDoorConfigurationValidator();
  swift_allocObject();
  BlastDoorConfigurationValidator.init()();
  v5 = static WorkoutConfiguration.deserialize(from:requiringOccurrence:validator:)();

  if (!v5)
  {
    return 0.0;
  }

  type metadata accessor for RaceWorkoutConfiguration();
  if (swift_dynamicCastClass())
  {
    v6 = a1();
  }

  else
  {
    v6 = 0.0;
  }

  return v6;
}

uint64_t sub_1003ADB9C()
{
  v1 = [v0 sourceRevision];
  v2 = [v1 source];

  LOBYTE(v1) = [v2 _hasFirstPartyBundleID];
  if (v1)
  {
    return 1;
  }

  v4 = [v0 sourceRevision];
  v5 = [v4 source];

  v6 = [v5 _isAppleWatch];
  return v6;
}

id sub_1003ADCA4()
{
  if ([v0 workoutActivityType] != 37 && objc_msgSend(v0, "workoutActivityType") != 71)
  {
    return 0;
  }

  result = [v0 fiui_activityType];
  if (result)
  {
    v2 = result;
    v3 = [result isIndoor];

    if (v3)
    {
      return 0;
    }

    result = [v0 fiui_activityType];
    if (result)
    {
      v4 = result;
      v5 = [result isPartOfMultiSport];

      return (v5 ^ 1);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

id sub_1003ADE34()
{
  result = [v0 metadata];
  if (result)
  {
    v2 = result;
    v3 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    if (*(v3 + 16) && (v4 = sub_100066F20(0xD000000000000023, 0x800000010075A170), (v5 & 1) != 0))
    {
      sub_10000B1B4(*(v3 + 56) + 32 * v4, v7);

      sub_1000059F8(0, &qword_1008E1750, NSNumber_ptr);
      if (swift_dynamicCast())
      {
        return v6;
      }

      else
      {
        return 0;
      }
    }

    else
    {

      return 0;
    }
  }

  return result;
}

uint64_t sub_1003ADF34(char a1)
{
  v3 = sub_100140278(&qword_1008EB378, &qword_1006ED050);
  *&v4 = __chkstk_darwin(v3 - 8).n128_u64[0];
  v6 = &v13 - v5;
  v7 = [v1 metadata];
  if (v7)
  {
    v8 = v7;
    static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  type metadata accessor for WorkoutConfiguration();
  v9 = static WorkoutConfiguration.deserialize(from:)();

  if (!v9)
  {
    return 0;
  }

  if ((a1 & 1) == 0)
  {
    v10 = type metadata accessor for WorkoutPlan.Route();
    (*(*(v10 - 8) + 56))(v6, 1, 1, v10);
    dispatch thunk of WorkoutConfiguration.route.setter();
  }

  v11 = WorkoutConfiguration.serializedCompositionData.getter();

  return v11;
}

uint64_t sub_1003AE168()
{
  v1 = sub_100140278(&qword_1008EB378, &qword_1006ED050);
  *&v2 = __chkstk_darwin(v1 - 8).n128_u64[0];
  v4 = &v12 - v3;
  v5 = [v0 metadata];
  if (v5)
  {
    v6 = v5;
    static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  type metadata accessor for WorkoutConfiguration();
  v7 = static WorkoutConfiguration.deserialize(from:)();

  if (v7)
  {
    dispatch thunk of WorkoutConfiguration.route.getter();

    v8 = type metadata accessor for WorkoutPlan.Route();
    v9 = 1;
    if ((*(*(v8 - 8) + 48))(v4, 1, v8) != 1)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v10 = type metadata accessor for WorkoutPlan.Route();
    (*(*(v10 - 8) + 56))(v4, 1, 1, v10);
  }

  v9 = 0;
LABEL_8:
  sub_10000EA04(v4, &qword_1008EB378, &qword_1006ED050);
  return v9;
}

void *sub_1003AE38C()
{
  v1 = sub_100140278(&qword_1008EB378, &qword_1006ED050);
  *&v2 = __chkstk_darwin(v1 - 8).n128_u64[0];
  v4 = &v10 - v3;
  v5 = [v0 metadata];
  if (v5)
  {
    v6 = v5;
    static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  type metadata accessor for WorkoutConfiguration();
  v7 = static WorkoutConfiguration.deserialize(from:)();

  if (v7)
  {
    dispatch thunk of WorkoutConfiguration.route.getter();

    v8 = type metadata accessor for WorkoutPlan.Route();
    if ((*(*(v8 - 8) + 48))(v4, 1, v8))
    {
      v7 = 0;
    }

    else
    {
      v7 = WorkoutPlan.Route.snapshot.getter();
    }

    sub_10000EA04(v4, &qword_1008EB378, &qword_1006ED050);
  }

  return v7;
}

void *sub_1003AE504(void *a1, uint64_t a2, unint64_t a3)
{
  v42 = type metadata accessor for RoutePoint();
  v7 = *(v42 - 8);
  __chkstk_darwin(v42);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100140278(&qword_1008EB378, &qword_1006ED050);
  __chkstk_darwin(v10 - 8);
  v12 = &v35 - v11;
  if (!a1)
  {
    return 0;
  }

  v39 = v12;
  v40 = a2;
  v41 = a3;
  v13 = a1;
  v14 = [v13 allValidLocations];
  sub_1000059F8(0, &qword_1008E55D0, CLLocation_ptr);
  v15 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v15 >> 62)
  {
    v16 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v16 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v16)
  {
    goto LABEL_19;
  }

  v17 = [v3 metadata];
  if (v17)
  {
    v18 = v17;
    static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  type metadata accessor for WorkoutConfiguration();
  v19 = static WorkoutConfiguration.deserialize(from:)();

  if (!v19)
  {
LABEL_19:

    return 0;
  }

  v20 = [v13 allValidLocations];
  v21 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v38 = v21;
  if (v21 >> 62)
  {
    v22 = _CocoaArrayWrapper.endIndex.getter();
    if (v22)
    {
      goto LABEL_10;
    }

LABEL_22:

LABEL_23:
    sub_1003B05B4(v40, v41);
    v32 = v39;
    WorkoutPlan.Route.init(points:snapshot:)();
    v33 = type metadata accessor for WorkoutPlan.Route();
    (*(*(v33 - 8) + 56))(v32, 0, 1, v33);
    dispatch thunk of WorkoutConfiguration.route.setter();
    v34 = WorkoutConfiguration.serializedCompositionData.getter();

    return v34;
  }

  v22 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v22)
  {
    goto LABEL_22;
  }

LABEL_10:
  v36 = v19;
  v37 = v13;
  v43 = _swiftEmptyArrayStorage;
  result = sub_100186254(0, v22 & ~(v22 >> 63), 0);
  if ((v22 & 0x8000000000000000) == 0)
  {
    v24 = 0;
    v25 = v43;
    v26 = v38;
    v27 = v38 & 0xC000000000000001;
    do
    {
      if (v27)
      {
        v28 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v28 = *(v26 + 8 * v24 + 32);
      }

      v29 = v28;
      [v28 coordinate];
      [v29 altitude];
      RoutePoint.init(coordinate:altitude:)();

      v43 = v25;
      v31 = v25[2];
      v30 = v25[3];
      if (v31 >= v30 >> 1)
      {
        sub_100186254((v30 > 1), v31 + 1, 1);
        v26 = v38;
        v25 = v43;
      }

      ++v24;
      v25[2] = v31 + 1;
      (*(v7 + 32))(v25 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v31, v9, v42);
    }

    while (v22 != v24);

    v19 = v36;
    v13 = v37;
    goto LABEL_23;
  }

  __break(1u);
  return result;
}

id sub_1003AEA88()
{
  result = [v0 metadata];
  if (result)
  {
    v2 = result;
    v3 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    if (*(v3 + 16))
    {
      v6 = sub_100066F20(v4, v5);
      v8 = v7;

      if (v8)
      {
        sub_10000B1B4(*(v3 + 56) + 32 * v6, v10);

        if (swift_dynamicCast())
        {
          return v9;
        }

        return 0;
      }
    }

    else
    {
    }

    return 0;
  }

  return result;
}

uint64_t sub_1003AEE14(void *a1)
{
  v3 = v1;
  v5 = [v1 metadata];
  if (v5)
  {
    v6 = v5;
    static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  type metadata accessor for WorkoutConfiguration();
  type metadata accessor for BlastDoorConfigurationValidator();
  swift_allocObject();
  BlastDoorConfigurationValidator.init()();
  v7 = static WorkoutConfiguration.deserialize(from:requiringOccurrence:validator:)();

  if (!v7)
  {
    return 0;
  }

  type metadata accessor for GoalWorkoutConfiguration();
  if (swift_dynamicCastClass())
  {
    v8 = v7;
    v9 = GoalWorkoutConfiguration.goal.getter();
    v10 = [v9 goalTypeIdentifier];

    if (v10)
    {
      v11 = GoalWorkoutConfiguration.goal.getter();
      v12 = [v11 goalTypeIdentifier];

      v13 = GoalWorkoutConfiguration.goal.getter();
      [v13 doubleValue];
      v15 = v14;

      v16 = dispatch thunk of WorkoutConfiguration.activityType.getter();
      v17 = [a1 localizedGoalDescriptionForGoalType:v12 goalValue:v16 activityType:v15];

      if (v17)
      {
        v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();

        return v18;
      }
    }

    else
    {
    }

    return 0;
  }

  type metadata accessor for IntervalWorkoutConfiguration();
  if (swift_dynamicCastClass())
  {
    v20 = v7;
    v21 = IntervalWorkoutConfiguration.intervalWorkout.getter();
    v22 = IntervalWorkout.displayName.getter();

    return v22;
  }

  type metadata accessor for RaceWorkoutConfiguration();
  if (swift_dynamicCastClass())
  {
    RaceWorkoutConfiguration.referenceRouteLength.getter();
    v24 = v23;
    v25 = v7;
    v26 = dispatch thunk of WorkoutConfiguration.activityType.getter();
    v27 = FIUIDistanceTypeForActivityType();

    v28 = [a1 unitManager];
    if (v28)
    {
      v29 = v28;
      v30 = [v28 userDistanceUnitForDistanceType:v27];

      v31 = [a1 localizedStringWithDistanceInMeters:v30 distanceUnit:2 unitStyle:2 decimalPrecision:v24];
      v32 = 0xE000000000000000;
      if (v31)
      {
        v33 = v31;
        v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v36 = v35;

        v136 = v34;
        v137 = v36;
        v135[0] = 32;
        v135[1] = 0xE100000000000000;
        v134[0] = 0;
        v134[1] = 0xE000000000000000;
        v37 = sub_10000FCBC();
        v130 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(v135, v134, 0, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v37, v37, v37);
        v32 = v38;
      }

      else
      {
        v130 = 0;
      }

      RaceWorkoutConfiguration.referenceRouteDuration.getter();
      v49 = v48;
      v50 = [a1 stringWithDuration:2 durationFormat:?];
      if (v50)
      {
        v51 = v50;
        v52 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v128 = v53;
      }

      else
      {
        v52 = 0;
        v128 = 0xE000000000000000;
      }

      v54 = [objc_opt_self() meterUnit];
      v55 = [objc_opt_self() quantityWithUnit:v54 doubleValue:v24];

      v56 = dispatch thunk of WorkoutConfiguration.activityType.getter();
      v57 = FIUIPaceFormatForWorkoutActivityType();

      v127 = v55;
      v58 = [a1 localizedPaceStringWithDistance:v55 overDuration:v57 paceFormat:v27 distanceType:v49];
      v133 = v25;
      if (v58)
      {
        v59 = v58;
        v60 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v62 = v61;
      }

      else
      {
        v60 = 0;
        v62 = 0xE000000000000000;
      }

      v63 = &selRef_initWithFitnessAppContext_activitySharingClient_;
      if (v57 == 4)
      {
        v64 = [a1 localizedSpeedUnitStringForDistanceUnit:v30 unitStyle:1];
        if (v64)
        {
          v65 = v64;
          v66 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v68 = v67;

          v63 = &selRef_initWithFitnessAppContext_activitySharingClient_;
        }

        else
        {
          v66 = 0;
          v68 = 0xE000000000000000;
        }

        v136 = v60;
        v137 = v62;
        v81._countAndFlagsBits = v66;
        v81._object = v68;
        String.append(_:)(v81);

        v60 = v136;
        v62 = v137;
      }

      else
      {
        v126 = v52;
        v69 = [objc_opt_self() mainBundle];
        v70 = String._bridgeToObjectiveC()();
        v71 = [v69 localizedStringForKey:v70 value:0 table:0];

        static String._unconditionallyBridgeFromObjectiveC(_:)();
        v72 = [a1 localizedShortUnitStringForDistanceUnit:v30];
        if (v72)
        {
          v73 = v72;
          v74 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v76 = v75;

          sub_100140278(&unk_1008E4E50, &qword_1006D4A60);
          v77 = swift_allocObject();
          *(v77 + 16) = xmmword_1006D1F70;
          *(v77 + 56) = &type metadata for String;
          v78 = sub_10000A788();
          *(v77 + 32) = v60;
          *(v77 + 40) = v62;
          *(v77 + 96) = &type metadata for String;
          *(v77 + 104) = v78;
          *(v77 + 64) = v78;
          *(v77 + 72) = v74;
          *(v77 + 80) = v76;
          v60 = String.init(format:_:)();
          v62 = v79;
        }

        v52 = v126;
        v63 = &selRef_initWithFitnessAppContext_activitySharingClient_;
      }

      v82 = [objc_opt_self() mainBundle];
      v83 = String._bridgeToObjectiveC()();
      v84 = [v82 v63[265]];

      static String._unconditionallyBridgeFromObjectiveC(_:)();
      sub_100140278(&unk_1008E4E50, &qword_1006D4A60);
      v85 = swift_allocObject();
      *(v85 + 16) = xmmword_1006D64F0;
      *(v85 + 56) = &type metadata for String;
      v86 = sub_10000A788();
      *(v85 + 32) = v130;
      *(v85 + 40) = v32;
      *(v85 + 96) = &type metadata for String;
      *(v85 + 104) = v86;
      *(v85 + 64) = v86;
      *(v85 + 72) = v52;
      *(v85 + 80) = v128;
      *(v85 + 136) = &type metadata for String;
      *(v85 + 144) = v86;
      *(v85 + 112) = v60;
      *(v85 + 120) = v62;
      v87 = String.init(format:_:)();

      return v87;
    }

    __break(1u);
LABEL_51:

    goto LABEL_54;
  }

  type metadata accessor for PacerWorkoutConfiguration();
  if (!swift_dynamicCastClass())
  {
    type metadata accessor for MultiSportWorkoutConfiguration();
    if (swift_dynamicCastClass())
    {
      v80 = v7;
      v18 = MultiSportWorkoutConfiguration.displayName.getter();

      return v18;
    }

    _StringGuts.grow(_:)(49);

    v136 = 0xD00000000000002FLL;
    v137 = 0x800000010075A1D0;
    v121 = [v3 description];
    v122 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v124 = v123;

    v125._countAndFlagsBits = v122;
    v125._object = v124;
    String.append(_:)(v125);

    goto LABEL_54;
  }

  v39 = v7;
  v40 = PacerWorkoutConfiguration.distanceGoal.getter();
  v41 = [v40 goalTypeIdentifier];

  v42 = PacerWorkoutConfiguration.distanceGoal.getter();
  [v42 doubleValue];
  v44 = v43;

  v45 = dispatch thunk of WorkoutConfiguration.activityType.getter();
  v46 = [a1 localizedGoalDescriptionForGoalType:v41 goalValue:v45 activityType:v44];

  if (v46)
  {
    v131 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v132 = v47;
  }

  else
  {
    v131 = 11565;
    v132 = 0xE200000000000000;
  }

  v88 = PacerWorkoutConfiguration.timeGoal.getter();
  v89 = [v88 goalTypeIdentifier];

  v90 = PacerWorkoutConfiguration.timeGoal.getter();
  [v90 doubleValue];
  v92 = v91;

  v93 = dispatch thunk of WorkoutConfiguration.activityType.getter();
  v94 = [a1 localizedGoalDescriptionForGoalType:v89 goalValue:v93 activityType:v92];

  if (v94)
  {
    v95 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v129 = v96;
  }

  else
  {
    v129 = 0xE500000000000000;
    v95 = 0x2D2D3A2D2DLL;
  }

  v97 = dispatch thunk of WorkoutConfiguration.activityType.getter();
  v98 = FIUIPaceFormatForWorkoutActivityType();

  v99 = PacerWorkoutConfiguration.distanceGoal.getter();
  v2 = [v99 value];

  if (v2)
  {
    v100 = PacerWorkoutConfiguration.timeGoal.getter();
    v101 = [v100 value];

    if (v101)
    {
      v102 = [objc_opt_self() secondUnit];
      [v101 doubleValueForUnit:v102];
      v104 = v103;

      v105 = v39;
      v106 = dispatch thunk of WorkoutConfiguration.activityType.getter();

      v107 = FIUIDistanceTypeForActivityType();
      v108 = [a1 localizedPaceStringWithDistance:v2 overDuration:v98 paceFormat:v107 distanceType:v104];
      if (v108)
      {
        v109 = v108;
        v110 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v112 = v111;
      }

      else
      {
        v113 = [objc_opt_self() mainBundle];
        v114 = String._bridgeToObjectiveC()();
        v109 = [v113 localizedStringForKey:v114 value:0 table:0];

        v110 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v112 = v115;
      }

      v116 = [objc_opt_self() mainBundle];
      v117 = String._bridgeToObjectiveC()();
      v118 = [v116 localizedStringForKey:v117 value:0 table:0];

      static String._unconditionallyBridgeFromObjectiveC(_:)();
      sub_100140278(&unk_1008E4E50, &qword_1006D4A60);
      v119 = swift_allocObject();
      *(v119 + 16) = xmmword_1006D64F0;
      *(v119 + 56) = &type metadata for String;
      v120 = sub_10000A788();
      *(v119 + 32) = v131;
      *(v119 + 40) = v132;
      *(v119 + 96) = &type metadata for String;
      *(v119 + 104) = v120;
      *(v119 + 64) = v120;
      *(v119 + 72) = v95;
      *(v119 + 80) = v129;
      *(v119 + 136) = &type metadata for String;
      *(v119 + 144) = v120;
      *(v119 + 112) = v110;
      *(v119 + 120) = v112;
      v87 = String.init(format:_:)();

      return v87;
    }

    goto LABEL_51;
  }

LABEL_54:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

id sub_1003AFB2C(uint64_t a1, uint64_t a2, void *a3)
{
  v22 = a3;
  v4 = sub_100140278(&qword_1008EAC00, "N\t\v");
  __chkstk_darwin(v4 - 8);
  v6 = &v21 - v5;
  v7 = type metadata accessor for IntervalWorkoutKeyPath();
  v8 = *(v7 - 8);
  *&v9 = __chkstk_darwin(v7).n128_u64[0];
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = [v3 metadata];
  if (v12)
  {
    v13 = v12;
    static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  type metadata accessor for WorkoutConfiguration();
  type metadata accessor for BlastDoorConfigurationValidator();
  swift_allocObject();
  BlastDoorConfigurationValidator.init()();
  v14 = static WorkoutConfiguration.deserialize(from:requiringOccurrence:validator:)();

  if (!v14)
  {
    return 0;
  }

  type metadata accessor for IntervalWorkoutConfiguration();
  if (!swift_dynamicCastClass())
  {
    goto LABEL_10;
  }

  IntervalWorkoutKeyPath.init(serializedString:)();
  if ((*(v8 + 48))(v6, 1, v7) != 1)
  {
    (*(v8 + 32))(v11, v6, v7);
    v15 = IntervalWorkoutConfiguration.intervalWorkout.getter();
    IntervalWorkout.stepForKeyPath(_:)();

    v16 = WorkoutStep.goal.getter();
    v17 = [v16 goalTypeIdentifier];

    if (v17 == v22)
    {
      v18 = WorkoutStep.goal.getter();
      v19 = [v18 value];

      (*(v8 + 8))(v11, v7);
      return v19;
    }

    (*(v8 + 8))(v11, v7);

LABEL_10:

    return 0;
  }

  sub_10000EA04(v6, &qword_1008EAC00, "N\t\v");
  return 0;
}

id sub_1003AFF4C(uint64_t a1, uint64_t a2)
{
  v3 = sub_100140278(&qword_1008EAC00, "N\t\v");
  __chkstk_darwin(v3 - 8);
  v5 = &v20 - v4;
  v6 = type metadata accessor for IntervalWorkoutKeyPath();
  v7 = *(v6 - 8);
  *&v8 = __chkstk_darwin(v6).n128_u64[0];
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [v2 metadata];
  if (v11)
  {
    v12 = v11;
    static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  type metadata accessor for WorkoutConfiguration();
  type metadata accessor for BlastDoorConfigurationValidator();
  swift_allocObject();
  BlastDoorConfigurationValidator.init()();
  v13 = static WorkoutConfiguration.deserialize(from:requiringOccurrence:validator:)();

  if (!v13)
  {
    return 0;
  }

  type metadata accessor for IntervalWorkoutConfiguration();
  if (!swift_dynamicCastClass())
  {
    goto LABEL_10;
  }

  IntervalWorkoutKeyPath.init(serializedString:)();
  if ((*(v7 + 48))(v5, 1, v6) != 1)
  {
    (*(v7 + 32))(v10, v5, v6);
    v14 = IntervalWorkoutConfiguration.intervalWorkout.getter();
    IntervalWorkout.stepForKeyPath(_:)();

    v15 = WorkoutStep.goal.getter();
    v16 = [v15 goalTypeIdentifier];

    if (v16 == 2)
    {
      v17 = WorkoutStep.goal.getter();
      v18 = [v17 requiredDistance];

      (*(v7 + 8))(v10, v6);
      return v18;
    }

    (*(v7 + 8))(v10, v6);

LABEL_10:

    return 0;
  }

  sub_10000EA04(v5, &qword_1008EAC00, "N\t\v");
  return 0;
}

uint64_t sub_1003B02C8(uint64_t a1, uint64_t a2)
{
  v3 = sub_100140278(&qword_1008EAC00, "N\t\v");
  __chkstk_darwin(v3 - 8);
  v5 = &v17 - v4;
  v6 = type metadata accessor for IntervalWorkoutKeyPath();
  v7 = *(v6 - 8);
  *&v8 = __chkstk_darwin(v6).n128_u64[0];
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [v2 metadata];
  if (v11)
  {
    v12 = v11;
    static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  type metadata accessor for WorkoutConfiguration();
  type metadata accessor for BlastDoorConfigurationValidator();
  swift_allocObject();
  BlastDoorConfigurationValidator.init()();
  v13 = static WorkoutConfiguration.deserialize(from:requiringOccurrence:validator:)();

  result = 0;
  if (v13)
  {
    type metadata accessor for IntervalWorkoutConfiguration();
    if (swift_dynamicCastClass())
    {

      IntervalWorkoutKeyPath.init(serializedString:)();
      if ((*(v7 + 48))(v5, 1, v6) == 1)
      {

        sub_10000EA04(v5, &qword_1008EAC00, "N\t\v");
        return 0;
      }

      else
      {
        (*(v7 + 32))(v10, v5, v6);
        v15 = IntervalWorkoutConfiguration.intervalWorkout.getter();
        v16 = IntervalWorkout.stepForKeyPath(_:)();

        (*(v7 + 8))(v10, v6);
        return v16;
      }
    }

    else
    {

      return 0;
    }
  }

  return result;
}

uint64_t sub_1003B0560@<X0>(uint64_t *a2@<X8>)
{
  sub_1000059F8(0, &qword_1008ED7C0, HKWorkout_ptr);
  result = Identifiable<>.id.getter();
  *a2 = result;
  return result;
}

uint64_t sub_1003B05B4(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_100215414(result, a2);
  }

  return result;
}

unint64_t sub_1003B05C8()
{
  result = qword_1008EA088[0];
  if (!qword_1008EA088[0])
  {
    type metadata accessor for ConfigurationType();
    result = swift_getWitnessTable();
    atomic_store(result, qword_1008EA088);
  }

  return result;
}

id sub_1003B0754()
{
  v0 = sub_100140278(&unk_1008EB5B0, &unk_1006D2BF0);
  __chkstk_darwin(v0 - 8);
  v60 = v51 - v1;
  v59 = type metadata accessor for URL();
  v57 = *(v59 - 8);
  __chkstk_darwin(v59);
  v61 = v51 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for TrendsFooterTextView();
  v62 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v3 = [objc_opt_self() _preferredFontForTextStyle:UIFontTextStyleFootnote variant:256];
  v4 = objc_opt_self();
  v5 = [v4 mainBundle];
  v6 = String._bridgeToObjectiveC()();
  v7 = [v5 localizedStringForKey:v6 value:0 table:0];

  v8 = v7;
  v9 = v7;
  if (!v7)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = String._bridgeToObjectiveC()();

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = String._bridgeToObjectiveC()();
  }

  v56 = v9;
  v58 = v8;
  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;
  v13 = v7;

  v14 = [v4 mainBundle];
  v15 = String._bridgeToObjectiveC()();
  v16 = [v14 localizedStringForKey:v15 value:0 table:0];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_100140278(&unk_1008E4E50, &qword_1006D4A60);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_1006D46C0;
  *(v17 + 56) = &type metadata for String;
  *(v17 + 64) = sub_10000A788();
  *(v17 + 32) = v10;
  *(v17 + 40) = v12;
  static String.localizedStringWithFormat(_:_:)();

  v55 = sub_100140278(&unk_1008E7FB0, &unk_1006D6940);
  inited = swift_initStackObject();
  v54 = xmmword_1006D1F70;
  *(inited + 16) = xmmword_1006D1F70;
  *(inited + 32) = NSFontAttributeName;
  v19 = sub_100140278(&unk_1008EB5C8, &unk_1006EFAB0);
  *(inited + 40) = v3;
  v53 = v19;
  *(inited + 64) = v19;
  *(inited + 72) = NSForegroundColorAttributeName;
  v20 = objc_opt_self();
  v52 = NSFontAttributeName;
  v63 = v3;
  v21 = NSForegroundColorAttributeName;
  v22 = [v20 secondaryLabelColor];
  *(inited + 104) = sub_1000059F8(0, &qword_1008E7FC0, UIColor_ptr);
  *(inited + 80) = v22;
  sub_1004C9200(inited);
  swift_setDeallocating();
  v51[1] = sub_100140278(&unk_1008EE730, &unk_1006D8460);
  swift_arrayDestroy();
  v23 = objc_allocWithZone(NSMutableAttributedString);
  v24 = String._bridgeToObjectiveC()();
  type metadata accessor for Key(0);
  sub_10005FB54(&qword_1008E7FD0, type metadata accessor for Key, &unk_1006D3C84);
  v25 = v3;
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v27 = [v23 initWithString:v24 attributes:isa];

  v28 = v60;
  URL.init(string:)();
  v29 = v57;
  v30 = v59;
  if ((*(v57 + 48))(v28, 1, v59) == 1)
  {

    sub_10000EA04(v28, &unk_1008EB5B0, &unk_1006D2BF0);
  }

  else
  {
    v31 = v25;
    v32 = v61;
    (*(v29 + 32))();
    v33 = String._bridgeToObjectiveC()();

    v34 = v56;
    v60 = [v33 rangeOfString:v56];
    v35 = v30;
    v51[0] = v36;

    v37 = swift_initStackObject();
    *(v37 + 16) = v54;
    v38 = v52;
    *(v37 + 32) = v52;
    *(v37 + 40) = v31;
    *(v37 + 64) = v53;
    *(v37 + 72) = NSLinkAttributeName;
    *(v37 + 104) = v35;
    v39 = sub_100005994((v37 + 80));
    (*(v29 + 16))(v39, v32, v35);
    v40 = v38;
    v41 = v63;
    v42 = NSLinkAttributeName;
    sub_1004C9200(v37);
    swift_setDeallocating();
    swift_arrayDestroy();
    v43 = objc_allocWithZone(NSAttributedString);
    v44 = Dictionary._bridgeToObjectiveC()().super.isa;

    v45 = v43;
    v46 = v58;
    v47 = [v45 initWithString:v58 attributes:v44];

    [v27 replaceCharactersInRange:v60 withAttributedString:{v51[0], v47}];
    (*(v29 + 8))(v61, v35);
  }

  v48 = v62;
  [v48 setAttributedText:v27];
  LODWORD(v49) = 1148846080;
  [v48 setContentCompressionResistancePriority:1 forAxis:v49];

  return v48;
}

char *sub_1003B0F3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = OBJC_IVAR____TtC10FitnessApp15TrendListFooter_textView;
  *&v3[v6] = sub_1003B0754();
  if (a3)
  {
    v7 = String._bridgeToObjectiveC()();
  }

  else
  {
    v7 = 0;
  }

  v45.receiver = v3;
  v45.super_class = type metadata accessor for TrendListFooter();
  v8 = objc_msgSendSuper2(&v45, "initWithStyle:reuseIdentifier:", a1, v7);

  v9 = v8;
  v10 = [v9 contentView];
  v11 = OBJC_IVAR____TtC10FitnessApp15TrendListFooter_textView;
  [v10 addSubview:*&v9[OBJC_IVAR____TtC10FitnessApp15TrendListFooter_textView]];

  v12 = [objc_opt_self() mainScreen];
  [v12 bounds];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;

  v46.origin.x = v14;
  v46.origin.y = v16;
  v46.size.width = v18;
  v46.size.height = v20;
  [v9 setSeparatorInset:{0.0, CGRectGetWidth(v46), 0.0, 0.0}];
  v21 = [*&v9[v11] leadingAnchor];
  v22 = [v9 contentView];
  v23 = [v22 leadingAnchor];

  v24 = [v21 constraintEqualToAnchor:v23 constant:16.0];
  v25 = [*&v9[v11] topAnchor];
  v26 = [v9 contentView];
  v27 = [v26 topAnchor];

  v28 = [v25 constraintEqualToAnchor:v27 constant:4.0];
  v29 = [*&v9[v11] trailingAnchor];
  v30 = [v9 contentView];
  v31 = [v30 trailingAnchor];

  v32 = [v29 constraintEqualToAnchor:v31 constant:-16.0];
  v33 = [*&v9[v11] bottomAnchor];
  v34 = [v9 contentView];

  v35 = [v34 bottomAnchor];
  v36 = [v33 constraintEqualToAnchor:v35 constant:-20.0];

  v37 = objc_opt_self();
  sub_100140278(&unk_1008E4E20, &qword_1006D5040);
  v38 = swift_allocObject();
  *(v38 + 16) = xmmword_1006D5300;
  *(v38 + 32) = v24;
  *(v38 + 40) = v28;
  *(v38 + 48) = v32;
  *(v38 + 56) = v36;
  sub_1000059F8(0, &qword_1008DC980, NSLayoutConstraint_ptr);
  v39 = v24;
  v40 = v28;
  v41 = v32;
  v42 = v36;
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v37 activateConstraints:isa];

  return v9;
}

id sub_1003B142C(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_1003B1498@<X0>(uint64_t *a1@<X8>)
{
  sub_100140278(&qword_1008DE578, &unk_1006D8DE0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1006D46C0;
  *(v3 + 32) = *v1;
  v4 = Array.description.getter();
  v6 = v5;

  *a1 = v4;
  a1[1] = v6;
  return result;
}

uint64_t sub_1003B1518(uint64_t a1, uint64_t a2)
{
  if (a2 > 1)
  {
    if (a2 == 2)
    {
      v2 = 0xE400000000000000;
      v3 = 1701601613;
      goto LABEL_11;
    }

    if (a2 == 3)
    {
      v2 = 0xE500000000000000;
      v3 = 0x726568744FLL;
      goto LABEL_11;
    }

LABEL_8:
    v2 = 0xE900000000000044;
    v3 = 0x454C444E41484E55;
    goto LABEL_11;
  }

  if (!a2)
  {
    v2 = 0xE700000000000000;
    v3 = 0x74655320746F4ELL;
    goto LABEL_11;
  }

  if (a2 != 1)
  {
    goto LABEL_8;
  }

  v2 = 0xE600000000000000;
  v3 = 0x656C616D6546;
LABEL_11:
  _StringGuts.grow(_:)(19);

  v4._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v4);

  v5._countAndFlagsBits = 0x7265646E6567203BLL;
  v5._object = 0xEA0000000000203ALL;
  String.append(_:)(v5);
  v6._countAndFlagsBits = v3;
  v6._object = v2;
  String.append(_:)(v6);

  return 0x203A656761;
}

void sub_1003B1678(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    sub_1003B4194();
  }
}

uint64_t sub_1003B16CC(void *a1)
{
  *(v1 + OBJC_IVAR____TtC10FitnessApp24TrendsListViewController_initialAppearance) = 1;
  v3 = OBJC_IVAR____TtC10FitnessApp24TrendsListViewController_tableView;
  type metadata accessor for TrendListTableView();
  v4 = objc_opt_self();
  v5 = [v4 mainScreen];
  [v5 bounds];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  v28.origin.x = v7;
  v28.origin.y = v9;
  v28.size.width = v11;
  v28.size.height = v13;
  Width = CGRectGetWidth(v28);
  v15 = [v4 mainScreen];
  [v15 bounds];
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;

  v29.origin.x = v17;
  v29.origin.y = v19;
  v29.size.width = v21;
  v29.size.height = v23;
  Height = CGRectGetHeight(v29);
  *(v1 + v3) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithFrame:{0.0, 0.0, Width, Height}];
  *(v1 + OBJC_IVAR____TtC10FitnessApp24TrendsListViewController_isWheelchairUser) = 0;
  v25 = OBJC_IVAR____TtC10FitnessApp24TrendsListViewController_spinner;
  v26 = [objc_allocWithZone(UIActivityIndicatorView) initWithActivityIndicatorStyle:101];

  *(v1 + v25) = v26;
  *(v1 + OBJC_IVAR____TtC10FitnessApp24TrendsListViewController_awaitingPushForTrendType) = 9;
  *(v1 + OBJC_IVAR____TtC10FitnessApp24TrendsListViewController_dataDidLoad) = 0;
  *(v1 + OBJC_IVAR____TtC10FitnessApp24TrendsListViewController_metricsByTrendType) = &_swiftEmptyDictionarySingleton;

  type metadata accessor for TrendsListViewController();
  swift_deallocPartialClassInstance();
  return 0;
}

id sub_1003B18E0()
{
  v1 = *&v0[OBJC_IVAR____TtC10FitnessApp24TrendsListViewController_dataProvider];
  swift_beginAccess();
  v2 = v1;
  v3 = v0;
  sub_100559A44(0, 0, v3);
  swift_endAccess();

  v5.receiver = v3;
  v5.super_class = type metadata accessor for TrendsListViewController();
  return objc_msgSendSuper2(&v5, "dealloc");
}

void sub_1003B1AF0(uint64_t a1)
{
  v36.receiver = v1;
  v36.super_class = type metadata accessor for TrendsListViewController();
  objc_msgSendSuper2(&v36, "viewDidLoad");
  if ([objc_opt_self() isAppleInternalInstall])
  {
    if (qword_1008DAFA0 != -1)
    {
      swift_once();
    }

    if ((byte_1008F8688 & 1) == 0)
    {
      v2 = objc_opt_self();
      v3 = String._bridgeToObjectiveC()();
      v4 = [v2 __systemImageNamedSwift:v3];

      v5 = [objc_allocWithZone(UIBarButtonItem) initWithImage:v4 style:0 target:v1 action:"tapToRadar"];
      v6 = [v1 navigationItem];
      sub_100140278(&unk_1008E4E20, &qword_1006D5040);
      v7 = swift_allocObject();
      *(v7 + 16) = xmmword_1006D4E70;
      *(v7 + 32) = v5;
      sub_1000059F8(0, &qword_1008EB5C0, UIBarButtonItem_ptr);
      v8 = v5;
      isa = Array._bridgeToObjectiveC()().super.isa;

      [v6 setRightBarButtonItems:isa];
    }
  }

  v10 = [v1 navigationItem];
  v11 = [objc_opt_self() mainBundle];
  v12 = String._bridgeToObjectiveC()();
  v13 = [v11 localizedStringForKey:v12 value:0 table:0];

  if (!v13)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = String._bridgeToObjectiveC()();
  }

  [v10 setTitle:v13];
  v14 = *&v1[OBJC_IVAR____TtC10FitnessApp24TrendsListViewController_tableView];
  type metadata accessor for TrendsPregnancyDisclaimerCell();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v16 = String._bridgeToObjectiveC()();
  [v14 registerClass:ObjCClassFromMetadata forCellReuseIdentifier:v16];

  type metadata accessor for TrendPairTableViewCell(0);
  v17 = swift_getObjCClassFromMetadata();
  v18 = String._bridgeToObjectiveC()();
  [v14 registerClass:v17 forCellReuseIdentifier:v18];

  type metadata accessor for TrendingDownTableViewCell(0);
  v19 = swift_getObjCClassFromMetadata();
  v20 = String._bridgeToObjectiveC()();
  [v14 registerClass:v19 forCellReuseIdentifier:v20];

  type metadata accessor for TrendListFooter();
  v21 = swift_getObjCClassFromMetadata();
  v22 = String._bridgeToObjectiveC()();
  [v14 registerClass:v21 forCellReuseIdentifier:v22];

  [v14 setRowHeight:UITableViewAutomaticDimension];
  [v14 setEstimatedRowHeight:100.0];
  v23 = objc_opt_self();
  v24 = [v23 systemBackgroundColor];
  [v14 setBackgroundColor:v24];

  v25 = [v23 separatorColor];
  [v14 setSeparatorColor:v25];

  [v14 _setHeaderAndFooterViewsFloat:0];
  [v14 setSectionHeaderTopPadding:0.0];
  [v14 setAllowsSelection:0];
  [v14 contentInset];
  [v14 setContentInset:-13.0];
  v26 = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  [v14 setTableFooterView:v26];

  v27 = *(*&v1[OBJC_IVAR____TtC10FitnessApp24TrendsListViewController_activityDataProvider] + OBJC_IVAR____TtC10FitnessApp20ActivityDataProvider_isWheelchairUser);
  v1[OBJC_IVAR____TtC10FitnessApp24TrendsListViewController_isWheelchairUser] = v27;
  if (v27 == 1)
  {
    sub_1003B30BC();
  }

  v28 = [v1 view];
  if (!v28)
  {
    __break(1u);
    goto LABEL_18;
  }

  v29 = v28;
  [v28 addSubview:v14];

  [v14 setDataSource:v1];
  [v14 setDelegate:v1];
  if ((v1[OBJC_IVAR____TtC10FitnessApp24TrendsListViewController_dataDidLoad] & 1) == 0)
  {
    [v14 setHidden:1];
    v30 = *&v1[OBJC_IVAR____TtC10FitnessApp24TrendsListViewController_spinner];
    [v30 setHidesWhenStopped:1];
    v31 = [v1 view];
    if (v31)
    {
      v32 = v31;
      [v31 addSubview:v30];

      [v30 startAnimating];
      goto LABEL_14;
    }

LABEL_18:
    __break(1u);
    return;
  }

LABEL_14:
  v33 = objc_opt_self();
  v34 = [v33 defaultCenter];
  if (qword_1008DA5A0 != -1)
  {
    swift_once();
  }

  [v34 addObserver:v1 selector:? name:? object:?];

  v35 = [v33 defaultCenter];
  [v35 addObserver:v1 selector:"reloadForFontSizeChangeWithNote:" name:UIContentSizeCategoryDidChangeNotification object:0];
}

uint64_t sub_1003B2228(__n128 a1)
{
  v2 = v1;
  result = Notification.userInfo.getter();
  if (result)
  {
    v4 = result;
    AnyHashable.init<A>(_:)();
    if (*(v4 + 16) && (v5 = sub_1004C5BC0(v7), (v6 & 1) != 0))
    {
      sub_10000B1B4(*(v4 + 56) + 32 * v5, v8);
      sub_100282EF8(v7);

      result = swift_dynamicCast();
      if ((result & 1) != 0 && *(v2 + OBJC_IVAR____TtC10FitnessApp24TrendsListViewController_isWheelchairUser) != 16)
      {
        *(v2 + OBJC_IVAR____TtC10FitnessApp24TrendsListViewController_isWheelchairUser) = 16;
        return sub_1003B4194();
      }
    }

    else
    {

      return sub_100282EF8(v7);
    }
  }

  return result;
}

id sub_1003B2414(uint64_t a1)
{
  v24.receiver = v1;
  v24.super_class = type metadata accessor for TrendsListViewController();
  objc_msgSendSuper2(&v24, "viewWillLayoutSubviews");
  v2 = *&v1[OBJC_IVAR____TtC10FitnessApp24TrendsListViewController_tableView];
  result = [v1 view];
  if (result)
  {
    v4 = result;
    [result bounds];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;

    [v2 setFrame:{v6, v8, v10, v12}];
    v13 = *&v1[OBJC_IVAR____TtC10FitnessApp24TrendsListViewController_spinner];
    result = [v1 view];
    if (result)
    {
      v14 = result;
      [result bounds];
      v16 = v15;
      v18 = v17;
      v20 = v19;
      v22 = v21;

      v25.origin.x = v16;
      v25.origin.y = v18;
      v25.size.width = v20;
      v25.size.height = v22;
      MidX = CGRectGetMidX(v25);
      v26.origin.x = v16;
      v26.origin.y = v18;
      v26.size.width = v20;
      v26.size.height = v22;
      return [v13 setCenter:{MidX, CGRectGetMidY(v26)}];
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_1003B25BC(uint64_t a1)
{
  v2 = a1;
  v20.receiver = v1;
  v20.super_class = type metadata accessor for TrendsListViewController();
  objc_msgSendSuper2(&v20, "viewWillAppear:", v2 & 1);
  v3 = [v1 navigationController];
  if (v3)
  {
    v4 = v3;
    [v3 setNavigationBarHidden:0 animated:1];
  }

  if ((v2 & 1) == 0 || v1[OBJC_IVAR____TtC10FitnessApp24TrendsListViewController_initialAppearance] == 1)
  {
    v5 = [*&v1[OBJC_IVAR____TtC10FitnessApp24TrendsListViewController_tableView] visibleCells];
    sub_1000059F8(0, &qword_1008EB560, UITableViewCell_ptr);
    v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v6 >> 62)
    {
      v7 = _CocoaArrayWrapper.endIndex.getter();
      if (v7)
      {
        goto LABEL_7;
      }
    }

    else
    {
      v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v7)
      {
LABEL_7:
        if (v7 < 1)
        {
          __break(1u);
          return;
        }

        for (i = 0; i != v7; ++i)
        {
          if ((v6 & 0xC000000000000001) != 0)
          {
            v11 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            v11 = *(v6 + 8 * i + 32);
          }

          v16 = v11;
          v12 = v11;
          sub_100140278(&qword_1008EB568, &qword_1006ED190);
          if (swift_dynamicCast())
          {
            sub_100006260(v14, v17);
            v13 = v12;
            v9 = v18;
            v10 = v19;
            sub_1000066AC(v17, v18);
            (*(v10 + 8))(v9, v10);

            sub_100005A40(v17);
          }

          else
          {

            v15 = 0;
            memset(v14, 0, sizeof(v14));
            sub_10000EA04(v14, &unk_1008EB570, &unk_1006ED198);
          }
        }
      }
    }
  }
}

void sub_1003B2878(uint64_t a1)
{
  v2 = a1;
  v6.receiver = v1;
  v6.super_class = type metadata accessor for TrendsListViewController();
  objc_msgSendSuper2(&v6, "viewDidAppear:", v2 & 1);
  if (*(v1 + OBJC_IVAR____TtC10FitnessApp24TrendsListViewController_dataDidLoad) == 1 && ((v2 & 1) == 0 || *(v1 + OBJC_IVAR____TtC10FitnessApp24TrendsListViewController_initialAppearance) == 1))
  {
    sub_100140278(&qword_1008EB598, &qword_1006ED1A8);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1006D46C0;
    *(inited + 32) = 0x746E657665;
    *(inited + 40) = 0xE500000000000000;
    *(inited + 48) = String._bridgeToObjectiveC()();
    sub_1004C9668(inited);
    swift_setDeallocating();
    sub_10000EA04(inited + 32, &unk_1008EB5A0, &unk_1006ED1B0);
    v4 = String._bridgeToObjectiveC()();
    sub_1000059F8(0, &qword_1008DB898, NSObject_ptr);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    AnalyticsSendEvent();

    sub_1003B44F8();
  }

  *(v1 + OBJC_IVAR____TtC10FitnessApp24TrendsListViewController_initialAppearance) = 0;
}

void sub_1003B2BB4(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for TrendListMetric(0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4 - 8);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtC10FitnessApp24TrendsListViewController_awaitingPushForTrendType;
  *(v1 + OBJC_IVAR____TtC10FitnessApp24TrendsListViewController_awaitingPushForTrendType) = a1;
  if (*(v1 + OBJC_IVAR____TtC10FitnessApp24TrendsListViewController_dataDidLoad) == 1)
  {
    v9 = OBJC_IVAR____TtC10FitnessApp24TrendsListViewController_metricsByTrendType;
    swift_beginAccess();
    v10 = *(v2 + v9);
    if (*(v10 + 16))
    {
      v11 = sub_1004CD4B0(a1);
      if (v12)
      {
        sub_1003B6CDC(*(v10 + 56) + *(v5 + 72) * v11, v7, type metadata accessor for TrendListMetric);
        sub_1003B2EA0(v7);
        sub_1003B6DB4(v7, type metadata accessor for TrendListMetric);
        *(v2 + v8) = 9;
      }
    }
  }
}

void sub_1003B2D0C()
{
  v1 = type metadata accessor for TrendListMetric(0);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1 - 8);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v14 - v6;
  if (*(v0 + OBJC_IVAR____TtC10FitnessApp24TrendsListViewController_dataDidLoad) == 1)
  {
    v8 = OBJC_IVAR____TtC10FitnessApp24TrendsListViewController_awaitingPushForTrendType;
    v9 = *(v0 + OBJC_IVAR____TtC10FitnessApp24TrendsListViewController_awaitingPushForTrendType);
    if (v9 != 9)
    {
      v10 = OBJC_IVAR____TtC10FitnessApp24TrendsListViewController_metricsByTrendType;
      swift_beginAccess();
      v11 = *(v0 + v10);
      if (*(v11 + 16))
      {
        v12 = sub_1004CD4B0(v9);
        if (v13)
        {
          sub_1003B6CDC(*(v11 + 56) + *(v2 + 72) * v12, v4, type metadata accessor for TrendListMetric);
          sub_10025D2D0(v4, v7);
          sub_1003B2EA0(v7);
          sub_1003B6DB4(v7, type metadata accessor for TrendListMetric);
          *(v0 + v8) = 9;
        }
      }
    }
  }
}

void sub_1003B2EA0(uint64_t a1)
{
  v3 = [v1 navigationController];
  if (!v3)
  {
    return;
  }

  v4 = v3;
  v5 = [v3 viewControllers];

  sub_1000059F8(0, &qword_1008E4DD0, UIViewController_ptr);
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v6 >> 62)
  {
    v7 = _CocoaArrayWrapper.endIndex.getter();
    if (v7)
    {
LABEL_4:
      v8 = __OFSUB__(v7, 1);
      v9 = v7 - 1;
      if (v8)
      {
        __break(1u);
      }

      else if ((v6 & 0xC000000000000001) == 0)
      {
        if ((v9 & 0x8000000000000000) != 0)
        {
          __break(1u);
        }

        else if (v9 < *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          v10 = *(v6 + 8 * v9 + 32);
LABEL_9:
          v11 = v10;

          v12 = v1;
          v13 = static NSObject.== infix(_:_:)();

          if (v13)
          {
            sub_100351600(a1);
            if (v14)
            {
              v17 = v14;
              v15 = [v12 navigationController];
              if (v15)
              {
                v16 = v15;
                [v15 pushViewController:v17 animated:1];
              }
            }
          }

          return;
        }

        __break(1u);
        return;
      }

      v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      goto LABEL_9;
    }
  }

  else
  {
    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v7)
    {
      goto LABEL_4;
    }
  }
}

void sub_1003B30BC()
{
  v1 = v0;
  *&v139 = 0;
  v2 = sub_100140278(&unk_1008EE8E0, qword_1006E2D40);
  __chkstk_darwin(v2 - 8);
  v4 = &v102 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v102 - v6;
  v138 = type metadata accessor for AttributedString();
  v8 = *(v138 - 8);
  __chkstk_darwin(v138);
  v122 = &v102 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v134 = &v102 - v11;
  v12 = sub_100140278(&qword_1008E3D18, &unk_1006E1370);
  __chkstk_darwin(v12 - 8);
  v121 = &v102 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v113 = &v102 - v15;
  v16 = OBJC_IVAR____TtC10FitnessApp24TrendsListViewController_metricsByTrendType;
  swift_beginAccess();
  v130 = v16;
  *(v1 + v16) = &_swiftEmptyDictionarySingleton;

  v17 = *(v1 + OBJC_IVAR____TtC10FitnessApp24TrendsListViewController_dataProvider);
  v18 = OBJC_IVAR____TtC10FitnessApp18TrendsDataProvider_orderedValidUpTrends;
  swift_beginAccess();
  v19 = *(v17 + v18);
  swift_beginAccess();
  v137 = v17;
  v205[0] = v19;

  v21 = v4;
  sub_10019EDE4(v20);
  v22 = v205[0];
  v23 = *(v205[0] + 16);
  v135 = OBJC_IVAR____TtC10FitnessApp24TrendsListViewController_isWheelchairUser;
  v136 = OBJC_IVAR____TtC10FitnessApp24TrendsListViewController_trendsFormattingManager;
  v131 = v4;
  v112 = v23;
  if (v23)
  {
    v24 = 0;
    v120 = (v1 + OBJC_IVAR____TtC10FitnessApp24TrendsListViewController_userFirstName);
    v119 = v1 + OBJC_IVAR____TtC10FitnessApp24TrendsListViewController_userCharacteristics;
    v117 = OBJC_IVAR____TtC10FitnessApp18TrendsDataProvider_statisticsByTrendType90;
    v118 = &v161;
    v107 = (v8 + 32);
    v102 = (v8 + 16);
    v114 = OBJC_IVAR____TtC10FitnessApp18TrendsDataProvider_statisticsByTrendType365;
    v115 = v144;
    v108 = (v8 + 8);
    v109 = (v8 + 56);
    v111 = OBJC_IVAR____TtC10FitnessApp18TrendsDataProvider_mannKendallTestByTrendType90;
    v105 = OBJC_IVAR____TtC10FitnessApp18TrendsDataProvider_unitManager;
    v106 = OBJC_IVAR____TtC10FitnessApp18TrendsDataProvider_pregnancyStateProvider;
    v103 = v8;
    v104 = v1;
    v110 = v7;
    v116 = v205[0];
    do
    {
      if (v24 >= *(v22 + 16))
      {
        goto LABEL_37;
      }

      v123 = v24;
      v25 = *(v22 + v24 + 32);
      v133 = *(v1 + v136);
      v26 = *v120;
      v129 = v120[1];
      v126 = *v119;
      v127 = v26;
      v125 = *(v119 + 8);
      LODWORD(v128) = *(v119 + 16);
      LODWORD(v132) = *(v1 + v135);
      v27 = *(v137 + v117);
      sub_100011DA0(&v186);
      v183 = v196;
      v184 = v197;
      v185 = v198;
      v179 = v192;
      v180 = v193;
      v181 = v194;
      v182 = v195;
      v175 = v188;
      v176 = v189;
      v177 = v190;
      v178 = v191;
      v173 = v186;
      v174 = v187;
      v28 = *(v27 + 24);
      v29 = swift_allocObject();
      *(v29 + 16) = &v173;
      *(v29 + 24) = v27;
      *(v29 + 32) = v25;
      v30 = swift_allocObject();
      *(v30 + 16) = sub_10028E41C;
      *(v30 + 24) = v29;
      *&v162 = sub_10007BD60;
      *(&v162 + 1) = v30;
      *&v160 = _NSConcreteStackBlock;
      *(&v160 + 1) = 1107296256;
      *&v161 = sub_1003579C0;
      *(&v161 + 1) = &unk_100855928;
      v31 = _Block_copy(&v160);
      swift_retain_n();

      dispatch_sync(v28, v31);

      _Block_release(v31);
      LOBYTE(v27) = swift_isEscapingClosureAtFileLocation();

      if (v27)
      {
        goto LABEL_38;
      }

      v199[9] = v182;
      v199[10] = v183;
      v199[11] = v184;
      v199[5] = v178;
      v199[6] = v179;
      v199[7] = v180;
      v199[8] = v181;
      v199[1] = v174;
      v199[2] = v175;
      v199[3] = v176;
      v199[4] = v177;
      v199[0] = v173;
      v201[9] = v182;
      v201[10] = v183;
      v201[11] = v184;
      v201[5] = v178;
      v201[6] = v179;
      v201[7] = v180;
      v201[8] = v181;
      v201[1] = v174;
      v201[2] = v175;
      v201[3] = v176;
      v201[4] = v177;
      v200 = v185;
      v202 = v185;
      v201[0] = v173;
      if (sub_100013184(v201) == 1)
      {
        goto LABEL_30;
      }

      v32 = v137;
      v33 = *(v137 + v114);
      v124 = v25;
      v155 = v196;
      v156 = v197;
      v157 = v198;
      v151 = v192;
      v152 = v193;
      v153 = v194;
      v154 = v195;
      v147 = v188;
      v148 = v189;
      v149 = v190;
      v150 = v191;
      v145 = v186;
      v146 = v187;
      v34 = *(v33 + 24);
      v35 = swift_allocObject();
      *(v35 + 16) = &v145;
      *(v35 + 24) = v33;
      *(v35 + 32) = v25;
      v36 = swift_allocObject();
      *(v36 + 16) = sub_10028E444;
      *(v36 + 24) = v35;
      v144[2] = sub_1002831F4;
      v144[3] = v36;
      v143[0] = _NSConcreteStackBlock;
      v143[1] = 1107296256;
      v144[0] = sub_1003579C0;
      v144[1] = &unk_1008559A0;
      v37 = _Block_copy(v143);
      swift_retain_n();

      dispatch_sync(v34, v37);

      _Block_release(v37);
      LOBYTE(v33) = swift_isEscapingClosureAtFileLocation();

      if (v33)
      {
        goto LABEL_39;
      }

      v158[10] = v155;
      v158[11] = v156;
      v158[6] = v151;
      v158[7] = v152;
      v158[8] = v153;
      v158[9] = v154;
      v158[2] = v147;
      v158[3] = v148;
      v158[4] = v149;
      v158[5] = v150;
      v158[0] = v145;
      v158[1] = v146;
      v170 = v155;
      v171 = v156;
      v166 = v151;
      v167 = v152;
      v168 = v153;
      v169 = v154;
      v162 = v147;
      v163 = v148;
      v164 = v149;
      v165 = v150;
      v159 = v157;
      v172 = v157;
      v160 = v145;
      v161 = v146;
      if (sub_100013184(&v160) == 1)
      {
        sub_10000EA04(v199, &qword_1008E5710, &unk_1006E1760);
LABEL_30:

        goto LABEL_32;
      }

      v38 = v25;
      sub_100357B7C(v25, v203);

      if (v204)
      {

        sub_10000EA04(v158, &qword_1008E5710, &unk_1006E1760);
        sub_10000EA04(v199, &qword_1008E5710, &unk_1006E1760);
LABEL_32:
        sub_10006CB8C();
        *&v139 = swift_allocError();
        *v95 = 1;
LABEL_35:
        swift_willThrow();
        v97 = static os_log_type_t.error.getter();
        v98 = HKLogActivity;
        sub_100140278(&unk_1008E4E50, &qword_1006D4A60);
        v99 = swift_allocObject();
        *(v99 + 16) = xmmword_1006D46C0;
        v100 = v98;
        v101 = _convertErrorToNSError(_:)();
        *(v99 + 56) = sub_1000059F8(0, &qword_1008E56F0, NSError_ptr);
        *(v99 + 64) = sub_10028E1EC();
        *(v99 + 32) = v101;
        os_log(_:dso:log:_:_:)(v97, &_mh_execute_header, v100, "Error populating trend types: %@", 32, 2, v99);

        return;
      }

      v39 = *&v203[1];
      v40 = *&v203[4];
      sub_10000EA04(v199, &qword_1008E5710, &unk_1006E1760);
      v41 = *v201;
      v42 = sub_1003D2500(byte_1006ED27E[v124]);
      v43 = [objc_opt_self() quantityWithUnit:v42 doubleValue:{v41, v102}];

      v44 = v110;
      v45 = v25;
      v46 = v133;
      v47 = v139;
      sub_100603B5C(v43, v45, 2, v110);
      if (v47)
      {

        sub_10000EA04(v158, &qword_1008E5710, &unk_1006E1760);

        (*v109)(v44, 1, 1, v138);
        v94 = v44;
LABEL_34:
        sub_10000EA04(v94, &unk_1008EE8E0, qword_1006E2D40);
        sub_1002D8190();
        *&v139 = swift_allocError();
        *v96 = 0;
        goto LABEL_35;
      }

      v48 = v138;
      (*v109)(v44, 0, 1, v138);
      (*v107)(v134, v44, v48);
      v49 = [*(v32 + v106) currentModel];
      if (v49)
      {
        v50 = v49;
        v51 = [v49 state];

        v52 = v51 == 1;
      }

      else
      {
        v52 = 0;
      }

      v53 = v126;
      v54 = v125;
      LOBYTE(v143[0]) = v128;
      if (v128)
      {
        v53 = 0;
        v54 = 0;
      }

      v142 = v128;
      *&v206 = v127;
      *(&v206 + 1) = v129;
      v207 = v54;
      v208 = v128;
      v209 = v53;
      v210 = v128;
      v211 = v132;
      v212 = v52;
      v55 = *(v32 + v105);

      v56 = sub_1005831C0(v55, v38, v41);
      v57 = sub_1005831C0(v55, v38, *&v160) > v56;
      v58 = v161;
      v139 = v163;
      v132 = v162;
      v59 = v164;

      sub_10000EA04(v158, &qword_1008E5710, &unk_1006E1760);
      if (v40 >= 0.9)
      {
        if (v39 > 0.0)
        {
          v60 = 0;
          goto LABEL_21;
        }

        if (v39 < 0.0)
        {
          v60 = 2;
          goto LABEL_21;
        }
      }

      v60 = 1;
LABEL_21:
      v61 = 2 * v57;
      v141 = 1;
      v140 = 1;
      v213[0] = v58;
      v213[1] = v132;
      v213[2] = v139;
      v214 = v59;
      v215 = 2 * v57;
      v216 = v60;
      v217 = v38;
      v218 = 0x3FF199999999999ALL;
      v219 = 0;
      v220 = 1;
      v221 = 0;
      v222 = 1;
      sub_1001AAC54(&v206, v213, *(v46 + OBJC_IVAR____TtC10FitnessApp23TrendsFormattingManager_fiuiFormatter), v205);
      *&v139 = 0;
      v62 = v123 + 1;
      v133 = sub_10007C29C();
      *&v132 = v63;
      v64 = type metadata accessor for TrendListMetric(0);
      v65 = v113;
      v66 = v134;
      v67 = v138;
      (*v102)(&v113[*(v64 + 28)], v134, v138);
      v68 = sub_1001A0380(0, 0);
      v129 = v69;
      sub_1001AB3B0(v205);
      (*v108)(v66, v67);
      *v65 = v38;
      *(v65 + 1) = v61;
      v24 = v62;
      v70 = v132;
      *(v65 + 8) = v133;
      *(v65 + 16) = v70;
      v71 = (v65 + *(v64 + 32));
      v72 = v129;
      *v71 = v68;
      v71[1] = v72;
      (*(*(v64 - 8) + 56))(v65, 0, 1, v64);
      v1 = v104;
      swift_beginAccess();
      sub_10055A35C(v65, v38);
      swift_endAccess();
      v21 = v131;
      v8 = v103;
      v22 = v116;
    }

    while (v112 != v62);
  }

  v73 = OBJC_IVAR____TtC10FitnessApp18TrendsDataProvider_orderedInvalidTrends;
  v74 = v137;
  swift_beginAccess();
  v75 = *(v74 + v73);
  v76 = *(v75 + 16);

  v129 = v76;
  if (v76)
  {
    v77 = 0;
    v127 = v75;
    v128 = (v8 + 56);
    v126 = (v8 + 32);
    while (v77 < *(v75 + 16))
    {
      v78 = *(v75 + v77 + 32);
      v137 = sub_10007C29C();
      v80 = v79;
      v81 = v139;
      sub_10007B084(v78, 2u, v21);
      *&v139 = v81;
      if (v81)
      {

        (*v128)(v21, 1, 1, v138);
        v94 = v21;
        goto LABEL_34;
      }

      ++v77;
      v82 = v21;
      v83 = v21;
      v84 = v138;
      (*v128)(v82, 0, 1, v138);
      v134 = v80;
      v85 = *v126;
      v86 = v122;
      (*v126)(v122, v83, v84);
      v133 = sub_10007CA9C();
      *&v132 = v87;
      v88 = type metadata accessor for TrendListMetric(0);
      v89 = v121;
      v85(&v121[*(v88 + 28)], v86, v84);
      *v89 = v78;
      v89[1] = 1;
      v90 = v134;
      *(v89 + 1) = v137;
      *(v89 + 2) = v90;
      v91 = &v89[*(v88 + 32)];
      v21 = v131;
      v92 = v132;
      *v91 = v133;
      v91[1] = v92;
      (*(*(v88 - 8) + 56))(v89, 0, 1, v88);
      swift_beginAccess();
      v93 = v89;
      v75 = v127;
      sub_10055A35C(v93, v78);
      swift_endAccess();
      if (v129 == v77)
      {
        goto LABEL_27;
      }
    }

    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
  }

  else
  {
LABEL_27:
  }
}

uint64_t sub_1003B4194()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v15 = *(v1 - 8);
  __chkstk_darwin(v1);
  v3 = &v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for DispatchQoS();
  v4 = *(v14 - 8);
  *&v5 = __chkstk_darwin(v14).n128_u64[0];
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v0[OBJC_IVAR____TtC10FitnessApp24TrendsListViewController_dataDidLoad] = 1;
  v8 = *&v0[OBJC_IVAR____TtC10FitnessApp24TrendsListViewController_tableView];
  [v8 setSeparatorStyle:{0, v5}];
  [v8 setHidden:0];
  [*&v0[OBJC_IVAR____TtC10FitnessApp24TrendsListViewController_spinner] stopAnimating];
  sub_1003B30BC();
  [v8 reloadData];
  sub_1000059F8(0, &qword_1008E3FD0, OS_dispatch_queue_ptr);
  v9 = static OS_dispatch_queue.main.getter();
  v10 = swift_allocObject();
  *(v10 + 16) = v0;
  aBlock[4] = sub_1003B7480;
  aBlock[5] = v10;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000449A8;
  aBlock[3] = &unk_1008558B0;
  v11 = _Block_copy(aBlock);
  v12 = v0;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_10005FB54(&qword_1008E33B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100140278(&unk_1008E7F50, &qword_1006D8190);
  sub_10014A6B0(&qword_1008E33C0, &unk_1008E7F50, &qword_1006D8190, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v11);

  (*(v15 + 8))(v3, v1);
  return (*(v4 + 8))(v7, v14);
}

void sub_1003B44F8()
{
  v1 = [*(v0 + OBJC_IVAR____TtC10FitnessApp24TrendsListViewController_tableView) visibleCells];
  sub_1000059F8(0, &qword_1008EB560, UITableViewCell_ptr);
  v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v2 >> 62)
  {
    v3 = _CocoaArrayWrapper.endIndex.getter();
    if (v3)
    {
LABEL_3:
      if (v3 < 1)
      {
        __break(1u);
      }

      else
      {
        for (i = 0; i != v3; ++i)
        {
          if ((v2 & 0xC000000000000001) != 0)
          {
            v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            v7 = *(v2 + 8 * i + 32);
          }

          v8 = v7;
          sub_100140278(&qword_1008EB568, &qword_1006ED190);
          if (swift_dynamicCast())
          {
            v9 = *(&v13 + 1);
            v10 = v14;
            sub_1000066AC(&v12, *(&v13 + 1));
            (*(v10 + 8))(v9, v10);
            sub_100005A40(&v12);
          }

          else
          {
            v14 = 0;
            v12 = 0u;
            v13 = 0u;
            sub_10000EA04(&v12, &unk_1008EB570, &unk_1006ED198);
          }

          v11 = v8;
          if (swift_dynamicCast())
          {
            v5 = *(&v13 + 1);
            v6 = v14;
            sub_1000066AC(&v12, *(&v13 + 1));
            (*(v6 + 16))(v5, v6);

            sub_100005A40(&v12);
          }

          else
          {

            v14 = 0;
            v12 = 0u;
            v13 = 0u;
            sub_10000EA04(&v12, &unk_1008EB570, &unk_1006ED198);
          }
        }
      }

      return;
    }
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
      goto LABEL_3;
    }
  }
}

void sub_1003B476C(uint64_t a1, char a2)
{
  v3 = v2;
  if (IndexPath.section.getter() == 1)
  {
    if (a2)
    {
      v5 = IndexPath.row.getter();
      if (v5 + 0x4000000000000000 >= 0)
      {
        v6 = 2 * v5;
        v7 = (2 * v5) | 1;
        v8 = *(v3 + OBJC_IVAR____TtC10FitnessApp24TrendsListViewController_dataProvider);
        v9 = OBJC_IVAR____TtC10FitnessApp18TrendsDataProvider_orderedValidUpTrends;
        swift_beginAccess();
        v10 = *(v8 + v9);
        v11 = *(v10 + 16);
        sub_100140278(&qword_1008DE578, &unk_1006D8DE0);
        if (v7 >= v11)
        {
          v25 = swift_allocObject();
          *(v25 + 16) = xmmword_1006D46C0;
          if (v6 < v11)
          {
            *(v25 + 32) = *(v10 + v6 + 32);
            return;
          }

          goto LABEL_28;
        }

        v12 = swift_allocObject();
        *(v12 + 16) = xmmword_1006D1F70;
        if ((v6 & 0x8000000000000000) == 0)
        {
          *(v12 + 32) = *(v10 + 32 + v6);
          *(v12 + 33) = *(v10 + 32 + v7);
          return;
        }

        goto LABEL_26;
      }

      __break(1u);
      goto LABEL_22;
    }

LABEL_11:
    sub_100140278(&qword_1008DE578, &unk_1006D8DE0);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_1006D46C0;
    v17 = *(v3 + OBJC_IVAR____TtC10FitnessApp24TrendsListViewController_dataProvider);
    v18 = IndexPath.row.getter();
    v19 = OBJC_IVAR____TtC10FitnessApp18TrendsDataProvider_orderedValidUpTrends;
    swift_beginAccess();
    if ((v18 & 0x8000000000000000) == 0)
    {
      v20 = *(v17 + v19);
      if (v18 < *(v20 + 16))
      {
        *(v16 + 32) = *(v20 + v18 + 32);
        return;
      }

      goto LABEL_24;
    }

LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (IndexPath.section.getter() == 2)
  {
    v13 = *(v2 + OBJC_IVAR____TtC10FitnessApp24TrendsListViewController_dataProvider);
    v14 = OBJC_IVAR____TtC10FitnessApp18TrendsDataProvider_orderedValidDownTrends;
    swift_beginAccess();
    v3 = *(v13 + v14);

    v15 = IndexPath.row.getter();
    if ((v15 & 0x8000000000000000) != 0)
    {
LABEL_22:
      __break(1u);
      goto LABEL_23;
    }

    if (v15 >= *(v3 + 16))
    {
      __break(1u);
      goto LABEL_11;
    }

LABEL_17:
    v23 = *(v3 + v15 + 32);

    sub_100140278(&qword_1008DE578, &unk_1006D8DE0);
    v24 = swift_allocObject();
    *(v24 + 16) = xmmword_1006D46C0;
    *(v24 + 32) = v23;
    return;
  }

  if (IndexPath.section.getter() == 3)
  {
    v21 = *(v2 + OBJC_IVAR____TtC10FitnessApp24TrendsListViewController_dataProvider);
    v22 = OBJC_IVAR____TtC10FitnessApp18TrendsDataProvider_orderedInvalidTrends;
    swift_beginAccess();
    v3 = *(v21 + v22);

    v15 = IndexPath.row.getter();
    if ((v15 & 0x8000000000000000) != 0)
    {
LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
      goto LABEL_27;
    }

    if (v15 >= *(v3 + 16))
    {
LABEL_27:
      __break(1u);
LABEL_28:
      __break(1u);
      return;
    }

    goto LABEL_17;
  }
}