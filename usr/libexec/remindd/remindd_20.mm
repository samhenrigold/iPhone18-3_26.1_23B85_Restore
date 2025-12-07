uint64_t sub_1002238F0(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  *(v8 + 24), a2, a3, a4, a5, a6, a7, a8;

  sub_10000607C((v8 + 40));

  return swift_deallocClassInstance();
}

uint64_t sub_10022395C()
{
  v1 = *(*v0 + 16);

  return v1;
}

BOOL sub_100223990()
{
  v1 = v0;
  v2 = &v0[OBJC_IVAR____TtC7remindd37RDStaledFileAttachmentCleanupActivity_configurations];
  v3 = *&v0[OBJC_IVAR____TtC7remindd37RDStaledFileAttachmentCleanupActivity_configurations + 24];
  v4 = *&v0[OBJC_IVAR____TtC7remindd37RDStaledFileAttachmentCleanupActivity_configurations + 32];
  sub_10000F61C(v2, v3);
  v5 = (*(*(v4 + 8) + 8))(v3);
  if (!v5)
  {
    if (qword_100935C30 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_100006654(v6, qword_10093D610);
    v7 = v1;
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v24 = v11;
      *v10 = 136446210;
      v12 = &v7[OBJC_IVAR____TtC7remindd37RDStaledFileAttachmentCleanupActivity_identifier];
      v13 = *&v7[OBJC_IVAR____TtC7remindd37RDStaledFileAttachmentCleanupActivity_identifier];
      v14 = *(v12 + 1);

      v15 = sub_10000668C(v13, v14, &v24);
      v14, v16, v17, v18, v19, v20, v21, v22;
      *(v10 + 4) = v15;
      _os_log_impl(&_mh_execute_header, v8, v9, "[%{public}s] configuration validation fail - cannot execute because configurations.staledFileAttachmentCleanupPerRunDeleteLimit is 0", v10, 0xCu);
      sub_10000607C(v11);
    }
  }

  return v5 != 0;
}

char *sub_100223B44@<X0>(uint64_t *a1@<X8>)
{
  ObjectType = swift_getObjectType();
  v3 = *&v14[OBJC_IVAR____TtC7remindd37RDStaledFileAttachmentCleanupActivity_states + 24];
  v4 = *&v14[OBJC_IVAR____TtC7remindd37RDStaledFileAttachmentCleanupActivity_states + 32];
  sub_10000F61C(&v14[OBJC_IVAR____TtC7remindd37RDStaledFileAttachmentCleanupActivity_states], v3);
  v5 = (*(v4 + 32))(v3, v4);
  v6 = *&v14[OBJC_IVAR____TtC7remindd37RDStaledFileAttachmentCleanupActivity_configurations + 24];
  v7 = *&v14[OBJC_IVAR____TtC7remindd37RDStaledFileAttachmentCleanupActivity_configurations + 32];
  sub_10000F61C(&v14[OBJC_IVAR____TtC7remindd37RDStaledFileAttachmentCleanupActivity_configurations], v6);
  v8 = *(v7 + 24);
  if (v5)
  {
    (*(v8 + 16))(v6);
  }

  else
  {
    v9 = (*(v8 + 8))(v6);
  }

  v10 = v9;
  v16 = ObjectType;
  v17 = &off_1008EAC50;
  *&v15 = v14;
  v11 = type metadata accessor for RDExecutionIntervalThrottlingPolicy();
  v12 = swift_allocObject();
  sub_100054B6C(&v15, v12 + 16);
  *(v12 + 56) = v10;
  a1[3] = v11;
  a1[4] = &off_1008F5B28;
  *a1 = v12;

  return v14;
}

unint64_t sub_100223C98()
{
  _StringGuts.grow(_:)(31);
  0xE000000000000000, v1, v2, v3, v4, v5, v6, v7;
  v8 = *(v0 + OBJC_IVAR____TtC7remindd37RDStaledFileAttachmentCleanupActivity_identifier);
  v9 = *(v0 + OBJC_IVAR____TtC7remindd37RDStaledFileAttachmentCleanupActivity_identifier + 8);

  v10._countAndFlagsBits = v8;
  v10._object = v9;
  String.append(_:)(v10);
  v9, v11, v12, v13, v14, v15, v16, v17;
  v18._countAndFlagsBits = 0x746973796261622ELL;
  v18._object = 0xEB00000000726574;
  String.append(_:)(v18);
  return 0xD000000000000012;
}

double sub_100223DC0()
{
  v1 = v0[3];
  v2 = v0[4];
  sub_10000F61C(v0, v1);
  v3 = (*(v2 + 8))(v1, v2);
  [v3 doubleValue];
  v5 = v4;

  return v5;
}

uint64_t sub_100223E38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_10000A87C(a1, v30);
  sub_1000F5104(&qword_10093D900, &qword_10079B610);
  type metadata accessor for RDStaledFileAttachmentCleanupActivity();
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
    if (qword_100935C30 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_100006654(v8, qword_10093D610);
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
      _os_log_impl(&_mh_execute_header, v9, v10, "RDStaledFileAttachmentCleanupExecutionDateStorage.lastExecutedDate(for:) must work with RDStaledFileAttachmentCleanupActivity only {executable: %{public}s}", v11, 0xCu);
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

uint64_t sub_1002240C0(uint64_t a1, uint64_t a2)
{
  v5 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  __chkstk_darwin(v5 - 8, v6);
  v8 = v30 - v7;
  sub_10000A87C(a1, v33);
  sub_1000F5104(&qword_10093D900, &qword_10079B610);
  type metadata accessor for RDStaledFileAttachmentCleanupActivity();
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
    if (qword_100935C30 != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    sub_100006654(v13, qword_10093D610);
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
      _os_log_impl(&_mh_execute_header, v14, v15, "RDStaledFileAttachmentCleanupExecutionDateStorage.updateLastExecutedDate(for:) must work with RDStaledFileAttachmentCleanupActivity only {executable: %{public}s}", v16, 0xCu);
      sub_10000607C(v17);
    }

    else
    {

      sub_10000607C(v32);
    }
  }

  return sub_10000607C(v33);
}

uint64_t sub_1002243C8()
{
  sub_10000607C((v0 + 16));

  return swift_deallocClassInstance();
}

uint64_t sub_100224548@<X0>(void *a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC7remindd37RDStaledFileAttachmentCleanupActivity_executable);
  a1[3] = type metadata accessor for RDStaledFileAttachmentCleanupActivity.RDStaledFileAttachmentCleanupActivityExecutable();
  a1[4] = &off_1008EAC00;
  a1[5] = &off_1008EAC10;
  *a1 = v3;
}

uint64_t sub_1002245AC()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC7remindd37RDStaledFileAttachmentCleanupActivity_states + 24);
  v3 = *(v0 + OBJC_IVAR____TtC7remindd37RDStaledFileAttachmentCleanupActivity_states + 32);
  sub_10000F61C((v0 + OBJC_IVAR____TtC7remindd37RDStaledFileAttachmentCleanupActivity_states), v2);
  v4 = (*(v3 + 32))(v2, v3);
  v5 = (v1 + OBJC_IVAR____TtC7remindd37RDStaledFileAttachmentCleanupActivity_configurations);
  v6 = *(v1 + OBJC_IVAR____TtC7remindd37RDStaledFileAttachmentCleanupActivity_configurations + 24);
  v7 = v5[4];
  sub_10000F61C(v5, v6);
  v8 = *(v7 + 24);
  if (v4)
  {
    return (*(v8 + 16))(v6);
  }

  else
  {
    return (*(v8 + 8))(v6);
  }
}

uint64_t sub_1002246A4@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC7remindd37RDStaledFileAttachmentCleanupActivity_babysitter;
  swift_beginAccess();
  return sub_100010364(v1 + v3, a1, &unk_10093D8F0, &unk_10079B600);
}

uint64_t sub_100224730()
{
  v1 = *(*v0 + OBJC_IVAR____TtC7remindd37RDStaledFileAttachmentCleanupActivity_identifier);

  return v1;
}

uint64_t sub_10022479C@<X0>(uint64_t a1@<X8>)
{
  v3 = [*v1 staledFileAttachmentCleanupLastExecutionDate];
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

void sub_100224840(uint64_t a1)
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
  [v3 setStaledFileAttachmentCleanupLastExecutionDate:?];
}

id sub_1002249A0()
{
  v1 = [*v0 staledFileAttachmentCleanupRateReduceFactor];

  return v1;
}

unint64_t sub_100224A60()
{
  result = qword_10093B410;
  if (!qword_10093B410)
  {
    type metadata accessor for UUID();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10093B410);
  }

  return result;
}

unint64_t sub_100224AD8()
{
  result = qword_10093D910;
  if (!qword_10093D910)
  {
    sub_1000F514C(&qword_10093D908, &qword_10079B678);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10093D910);
  }

  return result;
}

uint64_t initializeWithCopy for RDStaledFileAttachmentCleanupActivity.RDStaledFileAttachmentCleanupRateReducer(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  *(a1 + 24) = v3;
  (**(v3 - 8))();
  return a1;
}

__n128 initializeWithTake for RDSavedHashtag(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t assignWithTake for RDStaledFileAttachmentCleanupActivity.RDStaledFileAttachmentCleanupRateReducer(uint64_t a1, uint64_t a2)
{
  sub_10000607C(a1);
  v4 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v4;
  *(a1 + 32) = *(a2 + 32);
  return a1;
}

uint64_t getEnumTagSinglePayload for RDStaledFileAttachmentCleanupActivity.RDStaledFileAttachmentCleanupRateReducer(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t storeEnumTagSinglePayload for RDStaledFileAttachmentCleanupActivity.RDStaledFileAttachmentCleanupRateReducer(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

uint64_t sub_100224CC4(void *a1)
{
  v2 = sub_1000F5104(&unk_100939D90, "8\n\r");
  __chkstk_darwin(v2 - 8, v3);
  v5 = &v12[-v4];
  v13 = &_swiftEmptyArrayStorage;
  sub_1000F5104(&qword_10093D930, qword_10079B6D8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100791300;
  KeyPath = swift_getKeyPath();
  v8 = [a1 uuid];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v9 = type metadata accessor for UUID();
  (*(*(v9 - 8) + 56))(v5, 0, 1, v9);
  v10 = sub_10039262C(KeyPath, v5);

  *(inited + 32) = v10;
  sub_10027238C(inited);
  return sub_10000C2B0();
}

void sub_100224E20(_TtC7remindd19RDXPCStorePerformer *a1@<X1>, uint64_t a2@<X2>, void *a3@<X3>, _TtC7remindd19RDXPCStorePerformer *a4@<X4>, uint64_t a5@<X8>)
{
  v95 = a2;
  v97 = a4;
  v87 = a3;
  v91 = a5;
  v6 = sub_1000F5104(&qword_100938A70, &qword_1007ACC60);
  __chkstk_darwin(v6 - 8, v7);
  v86 = &v74[-v8];
  v9 = type metadata accessor for REMRemindersListDataView.FlatModel();
  v89 = *(v9 - 8);
  v90 = v9;
  __chkstk_darwin(v9, v10);
  v85 = &v74[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v12, v13);
  v88 = &v74[-v14];
  v15 = sub_1000F5104(&qword_10094B8E0, &unk_1007AABD0);
  __chkstk_darwin(v15 - 8, v16);
  v83 = &v74[-v17];
  v18 = type metadata accessor for REMRemindersListDataView.RemindersPrefetch();
  v92 = *(v18 - 8);
  v93 = v18;
  __chkstk_darwin(v18, v19);
  v96 = &v74[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v21, v22);
  v24 = &v74[-v23];
  Configuration = type metadata accessor for REMRemindersListDataView.FetchConfiguration();
  v84 = *(Configuration - 8);
  __chkstk_darwin(Configuration, v26);
  v28 = &v74[-((v27 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v29 = type metadata accessor for REMRemindersListDataView.Diff();
  v30 = *(v29 - 8);
  __chkstk_darwin(v29, v31);
  v33 = &v74[-((v32 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v34, v35);
  v37 = &v74[-v36];
  v38 = a1;
  v39 = v98;
  v40 = sub_10022574C(a1, v97);
  if (v39)
  {
    return;
  }

  v76 = v28;
  v77 = Configuration;
  v78 = v33;
  v41 = v96;
  v98 = v40;
  v79 = v30;
  v80 = v24;
  v81 = v29;
  v82 = v37;
  sub_1002262A8(a1);
  v75 = v42;
  v44 = v43;
  v45 = [v94 fetchResultTokenToDiffAgainst];
  v46 = v82;
  sub_100534D44(v45, v82);

  v95 = 0;
  v94 = v44;
  v47 = v76;
  REMRemindersListDataView.SearchFlatInvocation.Parameters.configuration.getter();
  v48 = v80;
  REMRemindersListDataView.FetchConfiguration.remindersPrefetch.getter();
  (*(v84 + 8))(v47, v77);
  v49 = v92;
  v50 = v41;
  v51 = v48;
  v52 = v93;
  (*(v92 + 16))(v41, v51, v93);
  v53 = (*(v49 + 88))(v41, v52);
  if (v53 == enum case for REMRemindersListDataView.RemindersPrefetch.initial(_:))
  {
    (*(v49 + 96))(v41, v52);
    v54 = sub_10053DB98(*v41, v98, a1, v87, 0);
LABEL_6:
    v97 = v54;
    v58 = v89;
    v59 = v90;
    v60 = v88;
    v61 = v86;
    goto LABEL_7;
  }

  v55 = v87;
  if (v53 == enum case for REMRemindersListDataView.RemindersPrefetch.updatedInserted(_:))
  {
    v56 = v93;
    (*(v49 + 96))(v41, v93);
    v57 = v55;
    v52 = v56;
    v54 = sub_10053E698(*v41, v46, v38, v57, 0);
    goto LABEL_6;
  }

  v61 = v86;
  if (v53 != enum case for REMRemindersListDataView.RemindersPrefetch.initialAndDateRange(_:))
  {
    v62 = v81;
    if (v53 != enum case for REMRemindersListDataView.RemindersPrefetch.none(_:))
    {
      _diagnoseUnexpectedEnumCase<A>(type:)();
      __break(1u);
      return;
    }

    v97 = &_swiftEmptyArrayStorage;
    v58 = v89;
    v59 = v90;
    v60 = v88;
    v63 = v79;
    v49 = v92;
    v52 = v93;
    goto LABEL_8;
  }

  v67 = v93;
  (*(v49 + 96))(v50, v93);
  v68 = *v50;
  v69 = sub_1000F5104(&qword_100938A78, &qword_1007AABE0);
  v70 = v83;
  sub_100226AD8(v50 + *(v69 + 48), v83);
  v71 = v68;
  v72 = v98;
  v97 = sub_10053DB98(v71, v98, v38, v55, 0);
  v73 = v55;
  v52 = v67;
  sub_10053EBE4(v70, v72, v38, v73, 0);
  sub_100226B48(v70);
  v58 = v89;
  v59 = v90;
  v60 = v88;
LABEL_7:
  v62 = v81;
  v63 = v79;
LABEL_8:
  (*(v49 + 8))(v80, v52);
  if (v75)
  {
    v64 = 1;
  }

  else
  {
    REMRemindersListDataView.CountByCompleted.init(completed:incomplete:)();
    v64 = 0;
  }

  v65 = type metadata accessor for REMRemindersListDataView.CountByCompleted();
  (*(*(v65 - 8) + 56))(v61, v64, 1, v65);
  REMRemindersListDataView.FlatModel.init(reminders:remindersCount:hasIncompleteOrCompletedReminders:prefetchedReminders:prefetchedDueReminders:)();
  (*(v58 + 16))(v85, v60, v59);
  v66 = v82;
  (*(v63 + 16))(v78, v82, v62);
  sub_100226BB0(&qword_10093AF78, &type metadata accessor for REMRemindersListDataView.FlatModel, &protocol conformance descriptor for REMRemindersListDataView.FlatModel);
  sub_100226BB0(&unk_10093AF80, &type metadata accessor for REMRemindersListDataView.FlatModel, &protocol conformance descriptor for REMRemindersListDataView.FlatModel);
  REMRemindersListDataView.DefaultInvocationResult.init(model:diff:)();
  (*(v58 + 8))(v60, v59);
  (*(v63 + 8))(v66, v81);
}

uint64_t sub_100225604(id *a1)
{
  v1 = [*a1 entityName];
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = v3;

  v5 = [objc_opt_self() cdEntityName];
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;

  if (v2 == v6 && v4 == v8)
  {
    v17 = 1;
  }

  else
  {
    v17 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  v4, v9, v10, v11, v12, v13, v14, v15;
  v8, v18, v19, v20, v21, v22, v23, v24;
  return v17 & 1;
}

uint64_t sub_1002256F4(uint64_t a1)
{
  result = sub_100226BB0(&qword_10093D958, &type metadata accessor for REMRemindersListDataView.SearchFlatInvocation, &protocol conformance descriptor for REMRemindersListDataView.SearchFlatInvocation);
  *(a1 + 8) = result;
  return result;
}

_TtC7remindd19RDXPCStorePerformer *sub_10022574C(uint64_t a1, uint64_t a2)
{
  v199 = a1;
  Subtasks = type metadata accessor for REMRemindersListDataView.FetchSubtasks();
  v4 = *(Subtasks - 8);
  __chkstk_darwin(Subtasks, v5);
  v7 = &v181 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for REMRemindersListDataView.ShowCompleted();
  v201 = *(v8 - 8);
  v202 = v8;
  __chkstk_darwin(v8, v9);
  v198 = &v181 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for REMRemindersListDataView.SortingStyle();
  __chkstk_darwin(v11 - 8, v12);
  v196 = &v181 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = _s9UtilitiesO12SortingStyleOMa(0);
  __chkstk_darwin(v14, v15);
  v17 = &v181 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18, v19);
  v206 = &v181 - v20;
  Configuration = type metadata accessor for REMRemindersListDataView.FetchConfiguration();
  v194 = *(Configuration - 8);
  v195 = Configuration;
  __chkstk_darwin(Configuration, v22);
  v191 = &v181 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24, v25);
  v190 = &v181 - v26;
  __chkstk_darwin(v27, v28);
  v189 = &v181 - v29;
  v187 = _s10PredicatesOMa(0);
  __chkstk_darwin(v187, v30);
  v188 = (&v181 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0));
  v197 = a2;
  v32 = REMRemindersListDataView.SearchFlatInvocation.Parameters.objectIDs.getter();
  v33 = v32;
  v200 = v7;
  v203 = v4;
  v204 = Subtasks;
  v192 = v17;
  v193 = v14;
  if ((v32 & 0xC000000000000001) != 0)
  {
    v34 = _swiftEmptySetSingleton;
    v210 = _swiftEmptySetSingleton;
    __CocoaSet.makeIterator()();
    v35 = __CocoaSet.Iterator.next()();
    if (v35)
    {
      v36 = v35;
      type metadata accessor for REMObjectID_Codable();
      v37 = v36;
      while (1)
      {
        v208 = v37;
        swift_dynamicCast();
        v44 = [v209 entityName];
        v45 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v47 = v46;

        v48 = [objc_opt_self() cdEntityName];
        v49 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v51 = v50;

        if (v45 == v49 && v47 == v51)
        {
          break;
        }

        v60 = _stringCompareWithSmolCheck(_:_:expecting:)();
        v47, v61, v62, v63, v64, v65, v66, v67;
        v51, v68, v69, v70, v71, v72, v73, v74;
        if (v60)
        {
          goto LABEL_15;
        }

LABEL_7:
        v37 = __CocoaSet.Iterator.next()();
        if (!v37)
        {
          goto LABEL_25;
        }
      }

      v47, v52, v53, v54, v55, v56, v57, v58;
      v51, v75, v76, v77, v78, v79, v80, v81;
LABEL_15:
      v82 = v209;
      v83 = v34[2];
      if (v34[3] <= v83)
      {
        sub_1003800CC(v83 + 1);
      }

      v34 = v210;
      v38 = NSObject._rawHashValue(seed:)(v210[5]);
      v39 = v34 + 7;
      v40 = -1 << *(v34 + 32);
      v41 = v38 & ~v40;
      v42 = v41 >> 6;
      if (((-1 << v41) & ~v34[(v41 >> 6) + 7]) != 0)
      {
        v43 = __clz(__rbit64((-1 << v41) & ~v34[(v41 >> 6) + 7])) | v41 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v84 = 0;
        v85 = (63 - v40) >> 6;
        do
        {
          if (++v42 == v85 && (v84 & 1) != 0)
          {
            __break(1u);
            goto LABEL_52;
          }

          v86 = v42 == v85;
          if (v42 == v85)
          {
            v42 = 0;
          }

          v84 |= v86;
          v87 = v39[v42];
        }

        while (v87 == -1);
        v43 = __clz(__rbit64(~v87)) + (v42 << 6);
      }

      *(v39 + ((v43 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v43;
      *(v34[6] + 8 * v43) = v82;
      ++v34[2];
      goto LABEL_7;
    }

LABEL_25:

LABEL_48:
    v145 = sub_1000436E4(v34);

    if (v145 < 0 || (v145 & 0x4000000000000000) != 0)
    {
      goto LABEL_53;
    }

    dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
    sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
    v146 = v145;
    goto LABEL_51;
  }

  v88 = *(v32 + 32);
  v89 = v88 & 0x3F;
  v90 = (1 << v88) + 63;
  v91 = v90 >> 6;
  v92 = 8 * (v90 >> 6);
  if (v89 > 0xD)
  {
    v163 = 8 * (v90 >> 6);

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v171 = swift_slowAlloc();
      v172 = v205;
      v173 = sub_10026EC00(v171, v91, v33, sub_100226BF8, 0);
      v205 = v172;
      if (v172)
      {
        v33, v174, v175, v176, v177, v178, v179, v180;

        __break(1u);
        return result;
      }

      v34 = v173;
      v33, v174, v175, v176, v177, v178, v179, v180;

      goto LABEL_48;
    }

    v33, v164, v165, v166, v167, v168, v169, v170;
    v92 = v163;
  }

  v182 = v91;
  v181 = &v181;
  __chkstk_darwin(v32, v92);
  v183 = &v181 - ((v93 + 15) & 0x3FFFFFFFFFFFFFF0);
  bzero(v183, v93);
  v184 = 0;
  v94 = 0;
  v95 = v33 + 56;
  v96 = 1 << *(v33 + 32);
  v97 = -1;
  if (v96 < 64)
  {
    v97 = ~(-1 << v96);
  }

  v98 = v97 & *(v33 + 56);
  v99 = (v96 + 63) >> 6;
  v186 = v33;
  while (v98)
  {
    v100 = __clz(__rbit64(v98));
    v207 = (v98 - 1) & v98;
LABEL_37:
    v103 = v100 | (v94 << 6);
    v104 = *(v33 + 48);
    v185 = v103;
    v105 = *(v104 + 8 * v103);
    v106 = [v105 entityName];
    v107 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v109 = v108;

    v110 = [objc_opt_self() cdEntityName];
    v111 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v113 = v112;

    if (v107 == v111 && v109 == v113)
    {

      v109, v130, v131, v132, v133, v134, v135, v136;
      v113, v137, v138, v139, v140, v141, v142, v143;
      v33 = v186;
      v98 = v207;
LABEL_44:
      *&v183[(v185 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v185;
      if (__OFADD__(v184++, 1))
      {
        __break(1u);
LABEL_47:
        v34 = sub_1001A0DF0(v183, v182, v184, v33);
        goto LABEL_48;
      }
    }

    else
    {
      v115 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v109, v116, v117, v118, v119, v120, v121, v122;
      v113, v123, v124, v125, v126, v127, v128, v129;
      v33 = v186;
      v98 = v207;
      if (v115)
      {
        goto LABEL_44;
      }
    }
  }

  v101 = v94;
  while (1)
  {
    v94 = v101 + 1;
    if (__OFADD__(v101, 1))
    {
      break;
    }

    if (v94 >= v99)
    {
      goto LABEL_47;
    }

    v102 = *(v95 + 8 * v94);
    ++v101;
    if (v102)
    {
      v100 = __clz(__rbit64(v102));
      v207 = (v102 - 1) & v102;
      goto LABEL_37;
    }
  }

LABEL_52:
  __break(1u);
LABEL_53:
  sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);

  v146 = _bridgeCocoaArray<A>(_:)();

LABEL_51:

  sub_1000F5104(&qword_10093A560, &qword_100797768);
  v147 = v188;
  *v188 = v146;
  v148 = v189;
  REMRemindersListDataView.SearchFlatInvocation.Parameters.configuration.getter();
  REMRemindersListDataView.FetchConfiguration.showCompleted.getter();
  v149 = v195;
  v150 = *(v194 + 8);
  v150(v148, v195);
  swift_storeEnumTagMultiPayload();
  v151 = sub_100043AA8();
  sub_1001A4F3C(v147, _s10PredicatesOMa);
  REMRemindersListDataView.SearchFlatInvocation.Parameters.configuration.getter();
  v152 = v196;
  REMRemindersListDataView.FetchConfiguration.sortingStyle.getter();
  v150(v148, v149);
  v153 = enum case for REMRemindersListDataView.SortingDirection.ascending(_:);
  v154 = type metadata accessor for REMRemindersListDataView.SortingDirection();
  v155 = v192;
  (*(*(v154 - 8) + 104))(v192, v153, v154);
  swift_storeEnumTagMultiPayload();
  v156 = v206;
  sub_1005368D8(v152, v155, v206);
  v157 = v190;
  REMRemindersListDataView.SearchFlatInvocation.Parameters.configuration.getter();
  v158 = v198;
  REMRemindersListDataView.FetchConfiguration.showCompleted.getter();
  v150(v157, v149);
  v159 = v191;
  REMRemindersListDataView.SearchFlatInvocation.Parameters.configuration.getter();
  v160 = v200;
  REMRemindersListDataView.FetchConfiguration.fetchSubtasks.getter();
  v150(v159, v149);
  v161 = sub_100536D54(v199, v151, v156, v158, v160, &_swiftEmptyArrayStorage, 0);

  (*(v203 + 8))(v160, v204);
  (*(v201 + 8))(v158, v202);
  sub_1001A4F3C(v206, _s9UtilitiesO12SortingStyleOMa);
  return v161;
}

void sub_1002262A8(uint64_t a1)
{
  v2 = v1;
  v157 = a1;
  v155 = _s10PredicatesOMa(0);
  __chkstk_darwin(v155, v3);
  v156 = (&v147 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  Configuration = type metadata accessor for REMRemindersListDataView.FetchConfiguration();
  v6 = *(Configuration - 8);
  __chkstk_darwin(Configuration, v7);
  v9 = &v147 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  REMRemindersListDataView.SearchFlatInvocation.Parameters.configuration.getter();
  v10 = REMRemindersListDataView.FetchConfiguration.countCompleted.getter();
  (*(v6 + 8))(v9, Configuration);
  if ((v10 & 1) == 0)
  {
    return;
  }

  v151 = v10;
  v11 = REMRemindersListDataView.SearchFlatInvocation.Parameters.objectIDs.getter();
  v12 = v11;
  v154 = v1;
  if ((v11 & 0xC000000000000001) != 0)
  {
    v13 = _swiftEmptySetSingleton;
    v161 = _swiftEmptySetSingleton;
    __CocoaSet.makeIterator()();
    v14 = __CocoaSet.Iterator.next()();
    if (v14)
    {
      v15 = v14;
      type metadata accessor for REMObjectID_Codable();
      v16 = v15;
      while (1)
      {
        v159 = v16;
        swift_dynamicCast();
        v23 = [v160 entityName];
        v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v26 = v25;

        v27 = [objc_opt_self() cdEntityName];
        v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v30 = v29;

        if (v24 == v28 && v26 == v30)
        {
          break;
        }

        v39 = _stringCompareWithSmolCheck(_:_:expecting:)();
        v26, v40, v41, v42, v43, v44, v45, v46;
        v30, v47, v48, v49, v50, v51, v52, v53;
        if (v39)
        {
          goto LABEL_16;
        }

LABEL_8:
        v16 = __CocoaSet.Iterator.next()();
        if (!v16)
        {
          goto LABEL_27;
        }
      }

      v26, v31, v32, v33, v34, v35, v36, v37;
      v30, v54, v55, v56, v57, v58, v59, v60;
LABEL_16:
      v61 = v160;
      v62 = v13[2];
      if (v13[3] <= v62)
      {
        sub_1003800CC(v62 + 1);
      }

      v13 = v161;
      v17 = NSObject._rawHashValue(seed:)(v161[5]);
      v18 = v13 + 7;
      v19 = -1 << *(v13 + 32);
      v20 = v17 & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~v13[(v20 >> 6) + 7]) != 0)
      {
        v22 = __clz(__rbit64((-1 << v20) & ~v13[(v20 >> 6) + 7])) | v20 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v63 = 0;
        v64 = (63 - v19) >> 6;
        do
        {
          if (++v21 == v64 && (v63 & 1) != 0)
          {
            __break(1u);
            goto LABEL_54;
          }

          v65 = v21 == v64;
          if (v21 == v64)
          {
            v21 = 0;
          }

          v63 |= v65;
          v66 = v18[v21];
        }

        while (v66 == -1);
        v22 = __clz(__rbit64(~v66)) + (v21 << 6);
      }

      *(v18 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      *(v13[6] + 8 * v22) = v61;
      ++v13[2];
      goto LABEL_8;
    }

LABEL_27:

LABEL_50:
    v124 = sub_1000436E4(v13);

    if (v124 < 0 || (v124 & 0x4000000000000000) != 0)
    {
      goto LABEL_55;
    }

    dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
    sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
    v125 = v124;
    goto LABEL_53;
  }

  v67 = *(v11 + 32);
  v68 = v67 & 0x3F;
  v69 = (1 << v67) + 63;
  v70 = v69 >> 6;
  v71 = 8 * (v69 >> 6);
  if (v68 > 0xD)
  {
    v130 = 8 * (v69 >> 6);

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v138 = swift_slowAlloc();
      v139 = sub_10026EC00(v138, v70, v12, sub_100226BF8, 0);
      v154 = v2;
      if (v2)
      {
        v12, v140, v141, v142, v143, v144, v145, v146;

        __break(1u);
        return;
      }

      v13 = v139;
      v12, v140, v141, v142, v143, v144, v145, v146;

      goto LABEL_50;
    }

    v12, v131, v132, v133, v134, v135, v136, v137;
    v71 = v130;
  }

  v147 = &v147;
  v148 = v70;
  __chkstk_darwin(v11, v71);
  v149 = &v147 - ((v72 + 15) & 0x3FFFFFFFFFFFFFF0);
  bzero(v149, v72);
  v150 = 0;
  v73 = 0;
  v74 = v12 + 56;
  v75 = 1 << *(v12 + 32);
  v76 = -1;
  if (v75 < 64)
  {
    v76 = ~(-1 << v75);
  }

  v77 = v76 & *(v12 + 56);
  v78 = (v75 + 63) >> 6;
  v153 = v12;
  while (v77)
  {
    v79 = __clz(__rbit64(v77));
    v158 = (v77 - 1) & v77;
LABEL_39:
    v82 = v79 | (v73 << 6);
    v83 = *(v12 + 48);
    v152 = v82;
    v84 = *(v83 + 8 * v82);
    v85 = [v84 entityName];
    v86 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v88 = v87;

    v89 = [objc_opt_self() cdEntityName];
    v90 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v92 = v91;

    if (v86 == v90 && v88 == v92)
    {

      v88, v109, v110, v111, v112, v113, v114, v115;
      v92, v116, v117, v118, v119, v120, v121, v122;
      v12 = v153;
      v77 = v158;
LABEL_46:
      *&v149[(v152 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v152;
      if (__OFADD__(v150++, 1))
      {
        __break(1u);
LABEL_49:
        v13 = sub_1001A0DF0(v149, v148, v150, v12);
        goto LABEL_50;
      }
    }

    else
    {
      v94 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v88, v95, v96, v97, v98, v99, v100, v101;
      v92, v102, v103, v104, v105, v106, v107, v108;
      v12 = v153;
      v77 = v158;
      if (v94)
      {
        goto LABEL_46;
      }
    }
  }

  v80 = v73;
  while (1)
  {
    v73 = v80 + 1;
    if (__OFADD__(v80, 1))
    {
      break;
    }

    if (v73 >= v78)
    {
      goto LABEL_49;
    }

    v81 = *(v74 + 8 * v73);
    ++v80;
    if (v81)
    {
      v79 = __clz(__rbit64(v81));
      v158 = (v81 - 1) & v81;
      goto LABEL_39;
    }
  }

LABEL_54:
  __break(1u);
LABEL_55:
  sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);

  v125 = _bridgeCocoaArray<A>(_:)();

LABEL_53:

  v126 = v156;
  *v156 = v125;
  swift_storeEnumTagMultiPayload();
  v127 = sub_100043AA8();
  sub_1001A4F3C(v126, _s10PredicatesOMa);
  sub_1000060C8(0, &qword_100939EE0, off_1008D41D0);
  v128 = [objc_allocWithZone(NSFetchRequest) init];
  v129 = [swift_getObjCClassFromMetadata() entity];
  [v128 setEntity:v129];

  [v128 setAffectedStores:0];
  [v128 setPredicate:v127];
  NSManagedObjectContext.count<A>(for:)();
}

uint64_t sub_100226AD8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000F5104(&qword_10094B8E0, &unk_1007AABD0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100226B48(uint64_t a1)
{
  v2 = sub_1000F5104(&qword_10094B8E0, &unk_1007AABD0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100226BB0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

id sub_100226C14@<X0>(uint64_t a1@<X8>)
{
  v3 = v1;
  result = [v3 hintData];
  if (!result)
  {
    v16 = 0;
    v14 = 0uLL;
    v15 = 0uLL;
LABEL_6:
    *a1 = v14;
    *(a1 + 16) = v15;
    *(a1 + 32) = v16;
    return result;
  }

  v6 = result;
  v7 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;

  v10 = [v3 serializationVersion];
  if (v10 == 1)
  {
    result = sub_10015E2E4(v7, v9, v23);
    if (v2)
    {
      return result;
    }

    v14 = v23[0];
    v15 = v23[1];
    v16 = v24;
    goto LABEL_6;
  }

  v17 = v10;
  sub_100226D24(0, v11, v12, v13);
  sub_100226D6C(v18, v19, v20, v21);
  swift_allocError();
  *v22 = v17;
  swift_willThrow();
  return sub_10001BBA0(v7, v9);
}

void sub_100226D24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!qword_10093D960)
  {
    v4 = _s22DataSerializationErrorOMa(0, a2, a3, a4);
    if (!v5)
    {
      atomic_store(v4, &qword_10093D960);
    }
  }
}

unint64_t sub_100226D6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = qword_10093D968;
  if (!qword_10093D968)
  {
    sub_100226D24(255, a2, a3, a4);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10093D968);
  }

  return result;
}

uint64_t sub_100226DC4()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_10093D970);
  v1 = sub_100006654(v0, qword_10093D970);
  if (qword_1009364A8 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_100975140);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_100226E8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[12] = a3;
  v4[13] = v3;
  v4[10] = a1;
  v4[11] = a2;
  v4[14] = *v3;
  v5 = sub_1000F5104(&qword_10093DB08, &qword_1007A1720);
  v4[15] = v5;
  v4[16] = *(v5 - 8);
  v4[17] = swift_task_alloc();
  v6 = type metadata accessor for Locale();
  v4[18] = v6;
  v4[19] = *(v6 - 8);
  v4[20] = swift_task_alloc();
  v4[21] = swift_task_alloc();
  sub_1000F5104(&qword_10093DB10, &qword_10079B870);
  v4[22] = swift_task_alloc();
  v7 = type metadata accessor for PromptTemplate();
  v4[23] = v7;
  v4[24] = *(v7 - 8);
  v4[25] = swift_task_alloc();
  v8 = type metadata accessor for Prompt();
  v4[26] = v8;
  v4[27] = *(v8 - 8);
  v4[28] = swift_task_alloc();

  return _swift_task_switch(sub_1002270DC, 0, 0);
}

uint64_t sub_1002270DC()
{
  v73 = v0;
  v2 = v0[27];
  v1 = v0[28];
  v3 = v0[26];
  v4 = v0[12];
  p_class_meths = v0[10];
  static String._fromUTF8Repairing(_:)();
  Prompt.init(_:)();
  v6 = Prompt.overestimatedTokenCount()();
  v7 = *(v2 + 8);
  v7(v1, v3);

  Prompt.init(_:)();
  v8 = Prompt.overestimatedTokenCount()();
  v7(v1, v3);
  v9 = *(v4 + 16);
  v10 = (v9 * 126) >> 64;
  v11 = 126 * v9;
  if (v10 != v11 >> 63)
  {
    __break(1u);
    goto LABEL_20;
  }

  v12 = v6 + v8;
  if (__OFADD__(v6, v8))
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v13 = v12 + v11;
  if (__OFADD__(v12, v11))
  {
LABEL_21:
    __break(1u);
LABEL_22:
    swift_once();
    goto LABEL_11;
  }

  p_class_meths = &OBJC_PROTOCOL___ICCloudConfigurationExtraneousAlarm.class_meths;
  if (v13 > 0x4000)
  {
    if (qword_100935C40 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    sub_100006654(v14, qword_10093D970);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 134218240;
      *(v17 + 4) = v13;
      *(v17 + 12) = 2048;
      *(v17 + 14) = 0x4000;
      _os_log_impl(&_mh_execute_header, v15, v16, "RDAutoCategorizerSession: {warning: prompt overestimated token count {%ld} is too large {> %ld}}. Response may be truncated.", v17, 0x16u);
    }
  }

  v19 = v0[10];
  v18 = v0[11];
  _StringGuts.grow(_:)(42);
  0xE000000000000000, v20, v21, v22, v23, v24, v25, v26;
  v72[0] = 0xD000000000000027;
  v72[1] = 0x80000001007F12F0;
  v27._countAndFlagsBits = v19;
  v27._object = v18;
  String.append(_:)(v27);
  v28._countAndFlagsBits = 125;
  v28._object = 0xE100000000000000;
  String.append(_:)(v28);
  sub_100445784(0xD000000000000027, 0x80000001007F12F0);
  0x80000001007F12F0, v29, v30, v31, v32, v33, v34, v35;
  static Catalog.ResourceBundle.TokenGeneration.LLM.RemindersAutoCategorizeListID.getter();
  if (qword_100935C48 != -1)
  {
    goto LABEL_22;
  }

LABEL_11:
  v36 = v0[21];

  PromptTemplate.init(modelBundleID:templateID:fallbackPromptTemplateCatalog:)();
  sub_100227CA8(v36);
  if (p_class_meths[392] != -1)
  {
    swift_once();
  }

  v37 = v0[20];
  v38 = v0[21];
  v39 = v0[18];
  v40 = v0[19];
  v41 = type metadata accessor for Logger();
  sub_100006654(v41, qword_10093D970);
  (*(v40 + 16))(v37, v38, v39);
  v42 = Logger.logObject.getter();
  v43 = static os_log_type_t.default.getter();
  v44 = os_log_type_enabled(v42, v43);
  v46 = v0[19];
  v45 = v0[20];
  v47 = v0[18];
  if (v44)
  {
    v48 = swift_slowAlloc();
    v71 = swift_slowAlloc();
    v72[0] = v71;
    *v48 = 136315138;
    sub_10022A514(&qword_10093DB30, &type metadata accessor for Locale, &protocol conformance descriptor for Locale);
    v49 = dispatch thunk of CustomStringConvertible.description.getter();
    v51 = v50;
    v52 = *(v46 + 8);
    v52(v45, v47);
    v53 = sub_10000668C(v49, v51, v72);
    v51, v54, v55, v56, v57, v58, v59, v60;
    *(v48 + 4) = v53;
    _os_log_impl(&_mh_execute_header, v42, v43, "RDAutoCategorizerSession: {promptLocale: %s}", v48, 0xCu);
    sub_10000607C(v71);
  }

  else
  {

    v52 = *(v46 + 8);
    v52(v45, v47);
  }

  v0[29] = v52;
  v62 = v0[10];
  v61 = v0[11];
  sub_1000F5104(&qword_10093DB18, &qword_10079B878);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100791300;
  *(inited + 32) = 0x746E6F4372657375;
  *(inited + 40) = 0xEB00000000746E65;
  *(inited + 48) = v62;
  *(inited + 56) = v61;

  v64 = sub_10038E004(inited);
  v0[30] = v64;
  swift_setDeallocating();
  sub_1000050A4(inited + 32, &qword_10093DB20, &qword_10079B880);
  v65 = swift_task_alloc();
  v0[31] = v65;
  *v65 = v0;
  v65[1] = sub_100227678;
  v66 = v0[25];
  v67 = v0[21];
  v68 = v0[17];
  v69 = v0[13];

  return sub_100227F94(v68, v66, v67, v64, v69);
}

uint64_t sub_100227678()
{
  v2 = *(*v1 + 240);
  v3 = *v1;
  v3[32] = v0;

  v2, v4, v5, v6, v7, v8, v9, v10;
  if (v0)
  {

    return _swift_task_switch(sub_1002279DC, 0, 0);
  }

  else
  {
    v11 = swift_task_alloc();
    v3[33] = v11;
    v12 = sub_10022A514(&qword_10093DB28, &type metadata accessor for TokenGenerator, &protocol conformance descriptor for TokenGenerator);
    *v11 = v3;
    v11[1] = sub_100227850;
    v13 = v3[15];

    return GenerativeConfigurationRunnable<>.run(returning:)(v13, v12);
  }
}

uint64_t sub_100227850(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v6[34] = v2;

  v7 = v6[17];
  v8 = v6[16];
  v9 = v6[15];
  if (v2)
  {
    (*(v8 + 8))(v7, v9);
    v10 = sub_100227BB8;
  }

  else
  {
    v6[35] = a2;
    v6[36] = a1;
    (*(v8 + 8))(v7, v9);
    v10 = sub_100227ACC;
  }

  return _swift_task_switch(v10, 0, 0);
}

uint64_t sub_1002279DC()
{
  v2 = *(v0 + 192);
  v1 = *(v0 + 200);
  v3 = *(v0 + 184);
  (*(v0 + 232))(*(v0 + 168), *(v0 + 144));
  (*(v2 + 8))(v1, v3);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_100227ACC()
{
  v2 = *(v0 + 192);
  v1 = *(v0 + 200);
  v3 = *(v0 + 184);
  (*(v0 + 232))(*(v0 + 168), *(v0 + 144));
  (*(v2 + 8))(v1, v3);

  v4 = *(v0 + 8);
  v6 = *(v0 + 280);
  v5 = *(v0 + 288);

  return v4(v5, v6);
}

uint64_t sub_100227BB8()
{
  v2 = *(v0 + 192);
  v1 = *(v0 + 200);
  v3 = *(v0 + 184);
  (*(v0 + 232))(*(v0 + 168), *(v0 + 144));
  (*(v2 + 8))(v1, v3);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_100227CA8@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for Locale();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2, v4);
  v6 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Locale.Components();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7, v9);
  v11 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Locale.current.getter();
  Locale.identifier.getter();
  (*(v3 + 8))(v6, v2);
  Locale.Components.init(identifier:)();
  v12 = Locale.Components.rem_languageAndScriptWithRegion()();
  v53 = v12;
  v50 = &v53;
  if (sub_100040A74(sub_100040B20, v49, &off_1008DEB80))
  {
    Locale.init(identifier:)();
  }

  else
  {
    v46 = v8;
    v47 = v7;
    v48 = a1;
    v12._object, v13, v14, v15, v16, v17, v18, v19;
    v45 = v11;
    rawValue = Locale.Components.rem_language()()._rawValue;
    v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v23 = v22;

    v24 = &unk_1008DEBA8;
    v25 = 23;
    do
    {
      v26 = *v24;
      v53._countAndFlagsBits = *(v24 - 1);
      v53._object = v26;
      v51 = v21;
      v52 = v23;

      v27._countAndFlagsBits = 95;
      v27._object = 0xE100000000000000;
      String.append(_:)(v27);
      v28 = v52;
      sub_10022A55C();
      sub_10022A5B0();
      v29 = BidirectionalCollection<>.starts<A>(with:)();
      v28, v30, v31, v32, v33, v34, v35, v36;
      if (v29)
      {
        break;
      }

      v26, v37, v38, v39, v40, v41, v42, v43;
      v24 += 2;
      --v25;
    }

    while (v25);
    v23, v37, v38, v39, v40, v41, v42, v43;
    Locale.init(identifier:)();
    v8 = v46;
    v7 = v47;
    v11 = v45;
  }

  return (*(v8 + 8))(v11, v7);
}

uint64_t sub_100227F94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[42] = a4;
  v5[43] = a5;
  v5[40] = a2;
  v5[41] = a3;
  v5[39] = a1;
  sub_1000F5104(&qword_10093DB38, &qword_10079B890);
  v5[44] = swift_task_alloc();
  v5[45] = sub_1000F5104(&qword_10093DB40, &qword_10079B898);
  v5[46] = swift_task_alloc();
  v6 = type metadata accessor for _GenerativeFunctionInternals_Metadata();
  v5[47] = v6;
  v5[48] = *(v6 - 8);
  v5[49] = swift_task_alloc();
  v7 = type metadata accessor for _GenerativeFunctionOverridableInternals_ChatMessagesPrompt();
  v5[50] = v7;
  v5[51] = *(v7 - 8);
  v5[52] = swift_task_alloc();
  sub_1000F5104(&qword_10093DB48, &unk_10079B8A0);
  v5[53] = swift_task_alloc();
  v8 = type metadata accessor for FunctionIdentifier();
  v5[54] = v8;
  v5[55] = *(v8 - 8);
  v5[56] = swift_task_alloc();
  v5[57] = swift_task_alloc();
  v9 = type metadata accessor for _ClientInfoSessionTrackingConfig();
  v5[58] = v9;
  v5[59] = *(v9 - 8);
  v5[60] = swift_task_alloc();
  type metadata accessor for StringResponseSanitizer.Guardrails();
  v5[61] = swift_task_alloc();
  v10 = type metadata accessor for StringResponseSanitizer();
  v5[62] = v10;
  v5[63] = *(v10 - 8);
  v5[64] = swift_task_alloc();
  type metadata accessor for SensitiveContentSettings();
  v5[65] = swift_task_alloc();
  type metadata accessor for StringRenderedPromptSanitizer.Guardrails();
  v5[66] = swift_task_alloc();
  v11 = type metadata accessor for StringRenderedPromptSanitizer();
  v5[67] = v11;
  v5[68] = *(v11 - 8);
  v5[69] = swift_task_alloc();
  sub_1000F5104(&unk_10093F420, &unk_100797AE0);
  v5[70] = swift_task_alloc();
  sub_1000F5104(&qword_10093DB50, &qword_10079B8B0);
  v5[71] = swift_task_alloc();
  v5[72] = swift_task_alloc();
  v12 = type metadata accessor for SamplingParameters();
  v5[73] = v12;
  v5[74] = *(v12 - 8);
  v5[75] = swift_task_alloc();
  v13 = type metadata accessor for ChatMessagesPrompt();
  v5[76] = v13;
  v5[77] = *(v13 - 8);
  v5[78] = swift_task_alloc();
  v5[79] = swift_task_alloc();
  v5[80] = swift_task_alloc();
  v5[81] = swift_task_alloc();
  v5[82] = swift_task_alloc();
  v5[83] = swift_task_alloc();
  v5[84] = swift_task_alloc();
  v5[85] = swift_task_alloc();

  return _swift_task_switch(sub_1002284EC, 0, 0);
}

uint64_t sub_1002284EC()
{
  v55 = *(v0 + 672);
  v53 = *(v0 + 664);
  v62 = *(v0 + 648);
  v63 = *(v0 + 656);
  v46 = *(v0 + 640);
  v1 = *(v0 + 632);
  v2 = *(v0 + 624);
  v64 = *(v0 + 616);
  v43 = *(v0 + 608);
  v3 = *(v0 + 600);
  v4 = *(v0 + 592);
  v60 = *(v0 + 584);
  v5 = *(v0 + 576);
  v6 = *(v0 + 568);
  v7 = *(v0 + 560);
  v47 = *(v0 + 552);
  v48 = *(v0 + 544);
  v50 = *(v0 + 512);
  v51 = *(v0 + 504);
  v52 = *(v0 + 496);
  v49 = *(v0 + 536);
  v56 = *(v0 + 472);
  v57 = *(v0 + 464);
  v58 = *(v0 + 480);
  v59 = *(v0 + 424);
  v54 = *(v0 + 344);
  v8 = *(v0 + 320);
  v44 = *(v0 + 328);
  v45 = *(v0 + 336);
  *(swift_task_alloc() + 16) = v8;
  ChatMessagesPrompt.init(_:)();

  v9 = type metadata accessor for SamplingStrategy();
  *(v0 + 688) = v9;
  v10 = *(v9 - 8);
  v11 = *(v10 + 56);
  *(v0 + 696) = v11;
  *(v0 + 704) = (v10 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v11(v5, 1, 1, v9);
  sub_10022A4A4(v5, v6);
  SamplingParameters.init(strategy:temperature:frequencyPenalty:lengthPenalty:maximumTokens:stopSequences:randomSeed:timeout:)();
  SamplingParameters.promptLookupDraftSteps.setter();
  SamplingParameters.speculativeSampling.setter();
  SamplingParameters.tokenHealing.setter();
  sub_1000050A4(v5, &qword_10093DB50, &qword_10079B8B0);
  *(v0 + 712) = sub_10022A514(&qword_10093DB58, &type metadata accessor for ChatMessagesPrompt, &protocol conformance descriptor for ChatMessagesPrompt);
  GenerativeConfigurationProtocol.samplingParameters(_:)();
  v12 = *(v4 + 8);
  *(v0 + 720) = v12;
  *(v0 + 728) = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v12(v3, v60);
  v13 = *(v64 + 8);
  *(v0 + 736) = v13;
  *(v0 + 744) = (v64 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v13(v2, v43);
  v14 = v13;
  v61 = v13;
  v15 = type metadata accessor for Locale();
  v16 = *(v15 - 8);
  (*(v16 + 16))(v7, v44, v15);
  (*(v16 + 56))(v7, 0, 1, v15);
  ChatMessagesPrompt.locale(_:)();
  sub_1000050A4(v7, &unk_10093F420, &unk_100797AE0);
  v14(v1, v43);
  sub_10045C388(v45);
  v18 = v17;
  GenerativeConfigurationProtocol.bindVariables(_:)();
  v18, v19, v20, v21, v22, v23, v24, v25;
  v14(v46, v43);
  *(v0 + 752) = sub_1000F5104(&qword_10093DB60, &qword_10079B8B8);
  v26 = *(type metadata accessor for SensitiveContentSettings.Sanitizer() - 8);
  *(v0 + 760) = *(v26 + 72);
  *(v0 + 824) = *(v26 + 80);
  *(swift_allocObject() + 16) = xmmword_100791340;
  static SensitiveContentSettings.Sanitizer.offensiveVulgarSensitive.getter();
  static SensitiveContentSettings.Sanitizer.textSanitization.getter();
  SensitiveContentSettings.init(sanitizers:)();
  StringRenderedPromptSanitizer.Guardrails.init(sensitiveContentSettings:)();
  StringRenderedPromptSanitizer.init(guardrails:)();
  GenerativeConfigurationProtocol.renderedPromptSanitizer(_:)();
  v27 = *(v48 + 8);
  *(v0 + 768) = v27;
  *(v0 + 776) = (v48 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v27(v47, v49);
  v61(v62, v43);
  *(swift_allocObject() + 16) = xmmword_100791340;
  static SensitiveContentSettings.Sanitizer.offensiveVulgarSensitive.getter();
  static SensitiveContentSettings.Sanitizer.textSanitization.getter();
  SensitiveContentSettings.init(sanitizers:)();
  StringResponseSanitizer.Guardrails.init(sensitiveContentSettings:)();
  StringResponseSanitizer.init(guardrails:)();
  GenerativeConfigurationProtocol.responseSanitizer(_:)();
  v28 = *(v51 + 8);
  *(v0 + 784) = v28;
  *(v0 + 792) = (v51 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v28(v50, v52);
  v61(v63, v43);
  v29 = sub_10038E004(&_swiftEmptyArrayStorage);
  GenerativeConfigurationProtocol._internalTrackingConfig(_:)();
  v29, v30, v31, v32, v33, v34, v35, v36;
  v61(v53, v43);
  v37 = *(v54 + 16);
  *(v0 + 800) = v37;
  v38 = OBJC_IVAR____TtCC7remindd24RDAutoCategorizerSessionP33_715EFDDC6429123E11FE4FA9276D121411_ClientInfo_trackingConfig;
  swift_beginAccess();
  (*(v56 + 16))(v58, v37 + v38, v57);
  GenerativeConfigurationProtocol._internalSessionTrackingConfig(_:)();
  (*(v56 + 8))(v58, v57);
  v61(v55, v43);
  v39 = type metadata accessor for FunctionIdentifier.ResourceInformation();
  (*(*(v39 - 8) + 56))(v59, 1, 1, v39);
  FunctionIdentifier.init(identifier:resourceInformation:)();
  v40 = swift_task_alloc();
  *(v0 + 808) = v40;
  *v40 = v0;
  v40[1] = sub_100228C90;
  v41 = *(v0 + 352);

  return static _GenerativeModelOverrideHelpers._generativeFunctionOverridesWithMetadataChatMessagesPrompt(_:)(v41, 0xD00000000000001CLL, 0x80000001007F1320);
}

uint64_t sub_100228C90()
{
  *(*v1 + 816) = v0;

  if (v0)
  {
    v2 = sub_100229700;
  }

  else
  {
    v2 = sub_100228DA4;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100228DA4()
{
  v1 = v0[44];
  v2 = sub_1000F5104(&qword_10093DB68, &qword_10079B8C0);
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    sub_1000050A4(v1, &qword_10093DB38, &qword_10079B890);
  }

  else
  {
    v63 = v0[98];
    v52 = v0[96];
    v75 = v0[92];
    v66 = v0[90];
    v61 = v0[86];
    v62 = v0[87];
    v71 = v0[84];
    v72 = v0[85];
    v73 = v0[76];
    v74 = v0[77];
    v64 = v0[75];
    v65 = v0[73];
    v57 = v0[72];
    v59 = v0[71];
    v50 = v0[69];
    v51 = v0[67];
    v55 = v0[64];
    v56 = v0[62];
    v46 = *(v2 + 48);
    v53 = v0[57];
    v47 = v0[56];
    v48 = v0[55];
    v49 = v0[54];
    v3 = v0[50];
    v76 = v0[52];
    v77 = v0[49];
    v4 = v0[48];
    v69 = v4;
    v70 = v0[51];
    v78 = v0[47];
    v6 = v0[45];
    v5 = v0[46];
    v67 = v0[40];
    v68 = v3;
    v7 = *(v6 + 48);
    v8 = *(v70 + 32);
    v8(v5, v1, v3);
    v9 = *(v4 + 32);
    v9(v5 + v7, v1 + v46, v78);
    v10 = *(v6 + 48);
    v8(v76, v5, v3);
    v9(v77, v5 + v10, v78);
    _GenerativeFunctionInternals_Metadata.functionIdentifier.getter();
    (*(v48 + 8))(v53, v49);
    (*(v48 + 32))(v53, v47, v49);
    v54 = sub_10038F2FC(&_swiftEmptyArrayStorage);
    sub_1000F5104(&qword_100936EB0, &unk_1007954A0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100791320;
    *(inited + 32) = 0xD0000000000000BFLL;
    *(inited + 40) = 0x80000001007F1340;
    *(swift_allocObject() + 16) = xmmword_100791340;
    static SensitiveContentSettings.Sanitizer.offensiveVulgarSensitive.getter();
    static SensitiveContentSettings.Sanitizer.textSanitization.getter();
    SensitiveContentSettings.init(sanitizers:)();
    StringRenderedPromptSanitizer.Guardrails.init(sensitiveContentSettings:)();
    StringRenderedPromptSanitizer.init(guardrails:)();
    *(inited + 72) = v51;
    sub_1000103CC((inited + 48));
    static _OverrideConfigurationHelper.renderedPromptSanitizer(_:)();
    v52(v50, v51);
    *(inited + 80) = 0xD0000000000000B3;
    *(inited + 88) = 0x80000001007F1400;
    *(swift_allocObject() + 16) = xmmword_100791340;
    static SensitiveContentSettings.Sanitizer.offensiveVulgarSensitive.getter();
    static SensitiveContentSettings.Sanitizer.textSanitization.getter();
    SensitiveContentSettings.init(sanitizers:)();
    StringResponseSanitizer.Guardrails.init(sensitiveContentSettings:)();
    StringResponseSanitizer.init(guardrails:)();
    *(inited + 120) = v56;
    sub_1000103CC((inited + 96));
    static _OverrideConfigurationHelper.responseSanitizer(_:)();
    v63(v55, v56);
    *(inited + 128) = 0xD000000000000055;
    *(inited + 136) = 0x80000001007F14C0;
    v62(v57, 1, 1, v61);
    sub_10022A4A4(v57, v59);
    SamplingParameters.init(strategy:temperature:frequencyPenalty:lengthPenalty:maximumTokens:stopSequences:randomSeed:timeout:)();
    SamplingParameters.promptLookupDraftSteps.setter();
    SamplingParameters.speculativeSampling.setter();
    SamplingParameters.tokenHealing.setter();
    sub_1000050A4(v57, &qword_10093DB50, &qword_10079B8B0);
    *(inited + 168) = v65;
    sub_1000103CC((inited + 144));
    static _OverrideConfigurationHelper.samplingParameters(_:)();
    v66(v64, v65);
    v12 = sub_1001F67C8(inited);
    swift_setDeallocating();
    sub_1000F5104(&unk_100939260, &unk_100797220);
    swift_arrayDestroy();
    sub_1000F5104(&qword_10093DB70, &qword_10079B8C8);
    v13 = swift_initStackObject();
    *(v13 + 16) = xmmword_100791300;
    strcpy((v13 + 32), "promptTemplate");
    *(v13 + 47) = -18;
    v14 = type metadata accessor for PromptTemplate();
    *(v13 + 72) = v14;
    *(v13 + 80) = sub_10022A514(&qword_10093DB78, &type metadata accessor for PromptTemplate, &protocol conformance descriptor for PromptTemplate);
    v15 = sub_1000103CC((v13 + 48));
    (*(*(v14 - 8) + 16))(v15, v67, v14);
    v16 = sub_10038F430(v13);
    swift_setDeallocating();
    sub_1000050A4(v13 + 32, &qword_100942EF0, &qword_10079B8D0);
    static _GenerativeFunctionOverrideHelpers._configurePrompt(_:withOverride:bindingChatMessagesPrompts:bindingVariables:bindingConfigurations:)();
    v16, v17, v18, v19, v20, v21, v22, v23;
    v54, v24, v25, v26, v27, v28, v29, v30;
    v12, v31, v32, v33, v34, v35, v36, v37;
    (*(v69 + 8))(v77, v78);
    (*(v70 + 8))(v76, v68);
    v75(v72, v73);
    (*(v74 + 32))(v72, v71, v73);
  }

  v58 = v0[100];
  v38 = v0[92];
  v39 = v0[85];
  v40 = v0[84];
  v41 = v0[76];
  v42 = v0[57];
  v43 = v0[55];
  v60 = v0[54];
  GenerativeConfigurationProtocol.functionIdentifier(_:)();
  v0[38] = *(v58 + OBJC_IVAR____TtCC7remindd24RDAutoCategorizerSessionP33_715EFDDC6429123E11FE4FA9276D121411_ClientInfo__model);
  type metadata accessor for TokenGenerator();
  GenerativeConfigurationProtocol.with<A>(model:modelType:)();
  v38(v40, v41);
  (*(v43 + 8))(v42, v60);
  v38(v39, v41);

  v44 = v0[1];

  return v44();
}

uint64_t sub_100229700()
{
  v1 = v0[92];
  v2 = v0[85];
  v3 = v0[76];
  (*(v0[55] + 8))(v0[57], v0[54]);
  v1(v2, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1002298F4(uint64_t a1)
{
  v1 = type metadata accessor for ChatMessagesPrompt();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1, v3);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for PromptTemplate();
  sub_10022A514(&qword_10093DB78, &type metadata accessor for PromptTemplate, &protocol conformance descriptor for PromptTemplate);
  static ChatMessagesPromptBuilder.buildExpression<A>(_:)();
  sub_1000F5104(&qword_10093DB80, &qword_10079B8D8);
  v6 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_100791300;
  (*(v2 + 16))(v7 + v6, v5, v1);
  static ChatMessagesPromptBuilder.buildBlock(_:)();
  v7, v8, v9, v10, v11, v12, v13, v14;
  return (*(v2 + 8))(v5, v1);
}

uint64_t sub_100229AAC()
{
  v0 = sub_10038F1E8(&off_1008DEB38);
  result = sub_1000050A4(&unk_1008DEB58, &qword_10093DB98, &unk_10079B8E0);
  qword_10093D988 = v0;
  return result;
}

void sub_100229AFC(uint64_t a1, uint64_t a2, uint64_t a3, int a4, unint64_t a5)
{
  v6 = v5;
  v11 = type metadata accessor for CachePolicy();
  __chkstk_darwin(v11 - 8, v12);
  v13 = type metadata accessor for GenerativeModelSessionConfiguration();
  __chkstk_darwin(v13 - 8, v14);
  v74 = &v72 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1000F5104(&qword_10093DB10, &qword_10079B870);
  __chkstk_darwin(v16 - 8, v17);
  v72 = &v72 - v18;
  v19 = type metadata accessor for _ClientInfoSessionTrackingConfig();
  v20 = *(v19 - 8);
  __chkstk_darwin(v19, v21);
  v23 = &v72 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;

  sub_10038E004(&_swiftEmptyArrayStorage);
  _ClientInfoSessionTrackingConfig.init(sessionTrackingConifg:_internalSessionTrackingConfig:)();
  v24 = *(v20 + 32);
  v73 = v6;
  v24(v6 + OBJC_IVAR____TtCC7remindd24RDAutoCategorizerSessionP33_715EFDDC6429123E11FE4FA9276D121411_ClientInfo_trackingConfig, v23, v19);
  v32 = *(a5 + 16);
  v76 = a4;
  v75 = a1;
  if (!v32 || (v33 = sub_100005F4C(0xD000000000000015, 0x80000001007F1520), (v25 & 1) == 0))
  {
    v52 = a5;
LABEL_23:
    v52, v25, v26, v27, v28, v29, v30, v31;
LABEL_68:
    type metadata accessor for TokenGenerator();
    static Catalog.ResourceBundle.TokenGeneration.LLM.RemindersAutoCategorizeListID.getter();
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    static CachePolicy.inMemory.getter();
    GenerativeModelSessionConfiguration.init(identifier:handlesSensitiveData:cachePolicy:)();
    *(v73 + OBJC_IVAR____TtCC7remindd24RDAutoCategorizerSessionP33_715EFDDC6429123E11FE4FA9276D121411_ClientInfo__model) = TokenGenerator.init(model:configuration:useCaseIdentifier:onBehalfOf:parentOfOnBehalfOf:)();
    return;
  }

  v34 = (*(a5 + 56) + 16 * v33);
  v36 = *v34;
  v35 = v34[1];

  a5, v37, v38, v39, v40, v41, v42, v43;
  v44 = HIBYTE(v35) & 0xF;
  v25 = v36 & 0xFFFFFFFFFFFFLL;
  if ((v35 & 0x2000000000000000) != 0)
  {
    v45 = HIBYTE(v35) & 0xF;
  }

  else
  {
    v45 = v36 & 0xFFFFFFFFFFFFLL;
  }

  if (!v45)
  {
    v52 = v35;
    goto LABEL_23;
  }

  if ((v35 & 0x1000000000000000) != 0)
  {
    sub_1002F62B8(v36, v35, 10);
    goto LABEL_67;
  }

  if ((v35 & 0x2000000000000000) == 0)
  {
    if ((v36 & 0x1000000000000000) != 0)
    {
      v46 = ((v35 & 0xFFFFFFFFFFFFFFFLL) + 32);
    }

    else
    {
      v46 = _StringObject.sharedUTF8.getter();
    }

    v47 = *v46;
    if (v47 == 43)
    {
      if (v25 >= 1)
      {
        v44 = v25 - 1;
        if (v25 != 1)
        {
          v57 = 0;
          if (v46)
          {
            v58 = v46 + 1;
            while (1)
            {
              v59 = *v58 - 48;
              if (v59 > 9)
              {
                goto LABEL_65;
              }

              v60 = 10 * v57;
              if ((v57 * 10) >> 64 != (10 * v57) >> 63)
              {
                goto LABEL_65;
              }

              v57 = v60 + v59;
              if (__OFADD__(v60, v59))
              {
                goto LABEL_65;
              }

              ++v58;
              if (!--v44)
              {
                goto LABEL_66;
              }
            }
          }

          goto LABEL_57;
        }

        goto LABEL_65;
      }

      goto LABEL_74;
    }

    if (v47 != 45)
    {
      if (v25)
      {
        v65 = 0;
        if (v46)
        {
          while (1)
          {
            v66 = *v46 - 48;
            if (v66 > 9)
            {
              goto LABEL_65;
            }

            v67 = 10 * v65;
            if ((v65 * 10) >> 64 != (10 * v65) >> 63)
            {
              goto LABEL_65;
            }

            v65 = v67 + v66;
            if (__OFADD__(v67, v66))
            {
              goto LABEL_65;
            }

            ++v46;
            if (!--v25)
            {
              goto LABEL_57;
            }
          }
        }

        goto LABEL_57;
      }

LABEL_65:
      LOBYTE(v44) = 1;
      goto LABEL_66;
    }

    if (v25 >= 1)
    {
      v44 = v25 - 1;
      if (v25 != 1)
      {
        v48 = 0;
        if (v46)
        {
          v49 = v46 + 1;
          while (1)
          {
            v50 = *v49 - 48;
            if (v50 > 9)
            {
              goto LABEL_65;
            }

            v51 = 10 * v48;
            if ((v48 * 10) >> 64 != (10 * v48) >> 63)
            {
              goto LABEL_65;
            }

            v48 = v51 - v50;
            if (__OFSUB__(v51, v50))
            {
              goto LABEL_65;
            }

            ++v49;
            if (!--v44)
            {
              goto LABEL_66;
            }
          }
        }

LABEL_57:
        LOBYTE(v44) = 0;
LABEL_66:
        v78 = v44;
LABEL_67:
        v35, v25, v26, v27, v28, v29, v30, v31;
        goto LABEL_68;
      }

      goto LABEL_65;
    }

    __break(1u);
LABEL_73:
    __break(1u);
LABEL_74:
    __break(1u);
    goto LABEL_75;
  }

  v77[0] = v36;
  v77[1] = v35 & 0xFFFFFFFFFFFFFFLL;
  if (v36 != 43)
  {
    if (v36 != 45)
    {
      if (v44)
      {
        v68 = 0;
        v69 = v77;
        while (1)
        {
          v70 = *v69 - 48;
          if (v70 > 9)
          {
            break;
          }

          v71 = 10 * v68;
          if ((v68 * 10) >> 64 != (10 * v68) >> 63)
          {
            break;
          }

          v68 = v71 + v70;
          if (__OFADD__(v71, v70))
          {
            break;
          }

          ++v69;
          if (!--v44)
          {
            goto LABEL_66;
          }
        }
      }

      goto LABEL_65;
    }

    if (v44)
    {
      if (--v44)
      {
        v53 = 0;
        v54 = v77 + 1;
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
          if (!--v44)
          {
            goto LABEL_66;
          }
        }
      }

      goto LABEL_65;
    }

    goto LABEL_73;
  }

  if (v44)
  {
    if (--v44)
    {
      v61 = 0;
      v62 = v77 + 1;
      while (1)
      {
        v63 = *v62 - 48;
        if (v63 > 9)
        {
          break;
        }

        v64 = 10 * v61;
        if ((v61 * 10) >> 64 != (10 * v61) >> 63)
        {
          break;
        }

        v61 = v64 + v63;
        if (__OFADD__(v64, v63))
        {
          break;
        }

        ++v62;
        if (!--v44)
        {
          goto LABEL_66;
        }
      }
    }

    goto LABEL_65;
  }

LABEL_75:
  __break(1u);
}

uint64_t sub_10022A0CC(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  *(v8 + 24), a2, a3, a4, a5, a6, a7, a8;
  v9 = OBJC_IVAR____TtCC7remindd24RDAutoCategorizerSessionP33_715EFDDC6429123E11FE4FA9276D121411_ClientInfo_trackingConfig;
  v10 = type metadata accessor for _ClientInfoSessionTrackingConfig();
  (*(*(v10 - 8) + 8))(v8 + v9, v10);

  return swift_deallocClassInstance();
}

uint64_t sub_10022A180@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtCC7remindd24RDAutoCategorizerSessionP33_715EFDDC6429123E11FE4FA9276D121411_ClientInfo_trackingConfig;
  swift_beginAccess();
  v5 = type metadata accessor for _ClientInfoSessionTrackingConfig();
  return (*(*(v5 - 8) + 16))(a1, v3 + v4, v5);
}

uint64_t sub_10022A20C(uint64_t a1)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtCC7remindd24RDAutoCategorizerSessionP33_715EFDDC6429123E11FE4FA9276D121411_ClientInfo_trackingConfig;
  swift_beginAccess();
  v5 = type metadata accessor for _ClientInfoSessionTrackingConfig();
  (*(*(v5 - 8) + 40))(v3 + v4, a1, v5);
  return swift_endAccess();
}

uint64_t sub_10022A318()
{

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for RDAutoCategorizerSession._ClientInfo(uint64_t a1)
{
  result = qword_10093DA68;
  if (!qword_10093DA68)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10022A3C8(uint64_t a1)
{
  result = type metadata accessor for _ClientInfoSessionTrackingConfig();
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

uint64_t sub_10022A4A4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000F5104(&qword_10093DB50, &qword_10079B8B0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10022A514(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_10022A55C()
{
  result = qword_10093DB88;
  if (!qword_10093DB88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10093DB88);
  }

  return result;
}

unint64_t sub_10022A5B0()
{
  result = qword_10093DB90;
  if (!qword_10093DB90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10093DB90);
  }

  return result;
}

uint64_t sub_10022A604()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_10093DBA0);
  v1 = sub_100006654(v0, qword_10093DBA0);
  if (qword_1009364E0 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_1009751E8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_10022A6CC(_BYTE *a1, const char *a2, uint64_t a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v8 = *a1 == 0;
  if (*a1)
  {
    v9 = 6911093;
  }

  else
  {
    v9 = 0x44497463656A626FLL;
  }

  if (v8)
  {
    v10 = 0xE800000000000000;
  }

  else
  {
    v10 = 0xE300000000000000;
  }

  if (*a2)
  {
    v11 = 6911093;
  }

  else
  {
    v11 = 0x44497463656A626FLL;
  }

  if (*a2)
  {
    v12 = 0xE300000000000000;
  }

  else
  {
    v12 = 0xE800000000000000;
  }

  if (v9 == v11 && v10 == v12)
  {
    v14 = 1;
  }

  else
  {
    v14 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  v10, a2, v11, a4, a5, a6, a7, a8;
  v12, v15, v16, v17, v18, v19, v20, v21;
  return v14 & 1;
}

Swift::Int sub_10022A76C()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  if (v1)
  {
    v2 = 0xE300000000000000;
  }

  else
  {
    v2 = 0xE800000000000000;
  }

  String.hash(into:)();
  v2, v3, v4, v5, v6, v7, v8, v9;
  return Hasher._finalize()();
}

double sub_10022A7E8(uint64_t a1)
{
  if (*v1)
  {
    v2 = 0xE300000000000000;
  }

  else
  {
    v2 = 0xE800000000000000;
  }

  String.hash(into:)();

  v2, v3, v4, v5, v6, v7, v8, v9;
  return result;
}

Swift::Int sub_10022A850(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  if (v2)
  {
    v3 = 0xE300000000000000;
  }

  else
  {
    v3 = 0xE800000000000000;
  }

  String.hash(into:)();
  v3, v4, v5, v6, v7, v8, v9, v10;
  return Hasher._finalize()();
}

void sub_10022A8D4(uint64_t *a1@<X8>)
{
  v2 = 6911093;
  if (!*v1)
  {
    v2 = 0x44497463656A626FLL;
  }

  v3 = 0xE800000000000000;
  if (*v1)
  {
    v3 = 0xE300000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_10022A928()
{
  if (*v0)
  {
    return 6911093;
  }

  else
  {
    return 0x44497463656A626FLL;
  }
}

void sub_10022A984(void *a1, void *a2)
{
  v6 = *v2;
  v7 = type metadata accessor for Date();
  v8 = *(v7 - 8);
  *&v10 = __chkstk_darwin(v7, v9).n128_u64[0];
  v12 = &v97 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = [a2 storeControllerManagedObjectContext];
  if (!v13)
  {
    v21 = objc_opt_self();
    type metadata accessor for REMCDSavedAttachment();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v23 = String._bridgeToObjectiveC()();
    [v21 unexpectedNilPropertyWithClass:ObjCClassFromMetadata property:v23];

    swift_willThrow();
    return;
  }

  v14 = v13;
  v15 = [v13 storeController];
  if (!v15)
  {
    v24 = objc_opt_self();
    type metadata accessor for REMCDSavedAttachment();
    v25 = swift_getObjCClassFromMetadata();
    v26 = String._bridgeToObjectiveC()();
    [v24 unexpectedNilPropertyWithClass:v25 property:v26];

    swift_willThrow();
    return;
  }

  v16 = v15;
  v101 = v14;
  objc_opt_self();
  v17 = swift_dynamicCastObjCClass();
  v100 = v8;
  if (v17)
  {
    v18 = v17;
    v99 = v6;
    v104 = sub_10022B240();
    v105 = &off_1008F2C88;
    v102 = v16;
    v19 = a1;
    v20 = v16;
    sub_1004735D8(a2, &v102, v18, 0);
    if (v3)
    {

LABEL_16:
      sub_10000607C(&v102);
      return;
    }

    v98 = v16;
    goto LABEL_18;
  }

  objc_opt_self();
  v27 = swift_dynamicCastObjCClass();
  if (!v27)
  {
    objc_opt_self();
    v31 = swift_dynamicCastObjCClass();
    v98 = v16;
    if (!v31)
    {
      if (qword_100935C50 != -1)
      {
        swift_once();
      }

      v53 = type metadata accessor for Logger();
      sub_100006654(v53, qword_10093DBA0);
      v54 = a1;
      v55 = Logger.logObject.getter();
      v56 = static os_log_type_t.fault.getter();

      if (os_log_type_enabled(v55, v56))
      {
        v57 = swift_slowAlloc();
        v58 = swift_slowAlloc();
        v59 = swift_slowAlloc();
        v102 = v59;
        *v57 = 136446466;
        v60 = sub_1001424F8(v6);
        v62 = v61;
        v63 = sub_10000668C(v60, v61, &v102);
        v62, v64, v65, v66, v67, v68, v69, v70;
        *(v57 + 4) = v63;
        *(v57 + 12) = 2114;
        *(v57 + 14) = v54;
        *v58 = v54;
        v71 = v54;
        _os_log_impl(&_mh_execute_header, v55, v56, "%{public}s: Failed to merge storage into cdSavedAttachment because storage is an unhandled type of attachment {storage: %{public}@}", v57, 0x16u);
        sub_100039860(v58);

        sub_10000607C(v59);
      }

      v72 = v101;
      v73 = objc_opt_self();
      v102 = 0;
      v103 = 0xE000000000000000;
      _StringGuts.grow(_:)(111);
      v74._countAndFlagsBits = 0xD00000000000006CLL;
      v74._object = 0x80000001007F15B0;
      String.append(_:)(v74);
      v75 = [v54 description];
      v76 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v78 = v77;

      v79._countAndFlagsBits = v76;
      v79._object = v78;
      String.append(_:)(v79);
      v78, v80, v81, v82, v83, v84, v85, v86;
      v87._countAndFlagsBits = 125;
      v87._object = 0xE100000000000000;
      String.append(_:)(v87);
      v88 = v103;
      v89 = String._bridgeToObjectiveC()();
      v88, v90, v91, v92, v93, v94, v95, v96;
      [v73 invalidParameterErrorWithDescription:v89];

      swift_willThrow();
      goto LABEL_24;
    }

    v32 = v31;
    v104 = sub_10022B240();
    v105 = &off_1008F2C88;
    v102 = v16;
    v33 = a1;
    v30 = v16;
    sub_1004735D8(a2, &v102, v32, 1);

    if (!v3)
    {
      sub_10000607C(&v102);
      goto LABEL_19;
    }

LABEL_15:
    goto LABEL_16;
  }

  v28 = v27;
  v99 = v6;
  v104 = sub_10022B240();
  v105 = &off_1008F2C88;
  v102 = v16;
  v19 = a1;
  v29 = v16;
  v30 = v16;
  sub_1004735D8(a2, &v102, v28, 2);
  if (v3)
  {

    goto LABEL_15;
  }

  v98 = v29;
LABEL_18:

  sub_10000607C(&v102);
  v6 = v99;
LABEL_19:
  [a2 setMinimumSupportedVersion:kREMSupportedVersionFor2022];
  static Date.now.getter();
  isa = Date._bridgeToObjectiveC()().super.isa;
  (v100[1])(v12, v7);
  [a2 setLastModifiedDate:isa];

  if (qword_100935C50 != -1)
  {
    swift_once();
  }

  v35 = type metadata accessor for Logger();
  sub_100006654(v35, qword_10093DBA0);
  v36 = a1;
  v37 = Logger.logObject.getter();
  v38 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    v100 = swift_slowAlloc();
    v106 = v100;
    *v39 = 136446466;
    v102 = v6;
    swift_getMetatypeMetadata();
    v41 = String.init<A>(describing:)();
    v43 = v42;
    v44 = sub_10000668C(v41, v42, &v106);
    v43, v45, v46, v47, v48, v49, v50, v51;
    *(v39 + 4) = v44;
    *(v39 + 12) = 2114;
    *(v39 + 14) = v36;
    *v40 = v36;
    v52 = v36;
    _os_log_impl(&_mh_execute_header, v37, v38, "%{public}s: Merged storage into cdSavedAttachment {storage: %{public}@}", v39, 0x16u);
    sub_100039860(v40);

    sub_10000607C(v100);
  }

LABEL_24:
}

uint64_t sub_10022B1B0(void **a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  sub_1000F5104(&unk_100939D60, &unk_1007959E0);
  v4 = swift_allocObject();
  v5 = &selRef_reminderID;
  *(v4 + 16) = xmmword_1007953F0;
  if (!v3)
  {
    v5 = &selRef_accountID;
  }

  *(v4 + 32) = [v2 *v5];
  return v4;
}

unint64_t sub_10022B240()
{
  result = qword_10093DD58;
  if (!qword_10093DD58)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10093DD58);
  }

  return result;
}

unint64_t sub_10022B2E0()
{
  result = qword_10093DD70;
  if (!qword_10093DD70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10093DD70);
  }

  return result;
}

unint64_t sub_10022B368()
{
  result = qword_10093DD88;
  if (!qword_10093DD88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10093DD88);
  }

  return result;
}

uint64_t sub_10022B3BC()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_10093DD90);
  v1 = sub_100006654(v0, qword_10093DD90);
  if (qword_100936410 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_100974F78);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_10022B484(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  *(v8 + 24), a2, a3, a4, a5, a6, a7, a8;

  sub_1000536E0(v8 + 40);

  *(v8 + 64), v9, v10, v11, v12, v13, v14, v15;

  return swift_deallocClassInstance();
}

unint64_t sub_10022B558(char a1)
{
  result = 0x44497463656A626FLL;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000017;
      break;
    case 2:
      result = 0x73694C7472616D73;
      break;
    case 3:
      result = 0x53676E6974726F73;
      break;
    case 4:
      result = 0x614464656E6E6970;
      break;
    case 5:
      result = 0x724F6C61756E616DLL;
      break;
    case 6:
      result = 1701667182;
      break;
    case 7:
      result = 0x726F6C6F63;
      break;
    case 8:
      result = 0x626D456567646162;
      break;
    case 9:
      result = 0x61447265746C6966;
      break;
    case 10:
      result = 0xD000000000000017;
      break;
    case 11:
      result = 0xD00000000000001CLL;
      break;
    case 12:
      result = 0xD000000000000019;
      break;
    case 13:
      result = 0xD000000000000027;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_10022B70C(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_10022B558(*a1);
  v5 = v4;
  v6 = sub_10022B558(v2);
  v14 = v7;
  if (v3 == v6 && v5 == v7)
  {
    v16 = 1;
  }

  else
  {
    v16 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  v5, v7, v8, v9, v10, v11, v12, v13;
  v14, v17, v18, v19, v20, v21, v22, v23;
  return v16 & 1;
}

Swift::Int sub_10022B794()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  sub_10022B558(v1);
  v3 = v2;
  String.hash(into:)();
  v3, v4, v5, v6, v7, v8, v9, v10;
  return Hasher._finalize()();
}

double sub_10022B7F8(uint64_t a1)
{
  sub_10022B558(*v1);
  v3 = v2;
  String.hash(into:)();

  v3, v4, v5, v6, v7, v8, v9, v10;
  return result;
}

Swift::Int sub_10022B84C(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  sub_10022B558(v2);
  v4 = v3;
  String.hash(into:)();
  v4, v5, v6, v7, v8, v9, v10, v11;
  return Hasher._finalize()();
}

unint64_t sub_10022B8AC@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10022F7F4(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_10022B8DC@<X0>(unint64_t *a1@<X8>)
{
  result = sub_10022B558(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_10022B908@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_10022F7F4(a1);
  *a2 = result;
  return result;
}

Swift::Int sub_10022B954()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  v2 = 0xE900000000000044;
  v3 = 0xEC00000044497473;
  if (v1 != 2)
  {
    v3 = 0x80000001007E9FD0;
  }

  if (v1)
  {
    v2 = 0xEF4449746E756F63;
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

double sub_10022BA34(uint64_t a1)
{
  v2 = 0xE900000000000044;
  v3 = 0xEC00000044497473;
  if (*v1 != 2)
  {
    v3 = 0x80000001007E9FD0;
  }

  if (*v1)
  {
    v2 = 0xEF4449746E756F63;
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

Swift::Int sub_10022BB00(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  v3 = 0xE900000000000044;
  v4 = 0xEC00000044497473;
  if (v2 != 2)
  {
    v4 = 0x80000001007E9FD0;
  }

  if (v2)
  {
    v3 = 0xEF4449746E756F63;
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

unint64_t sub_10022BBDC@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10022F840(*a1);
  *a2 = result;
  return result;
}

void sub_10022BC0C(unint64_t *a1@<X8>)
{
  v2 = 0xE900000000000044;
  v3 = 0x49746E756F636361;
  v4 = 0xEC00000044497473;
  v5 = 0x694C746E65726170;
  if (*v1 != 2)
  {
    v5 = 0xD000000000000014;
    v4 = 0x80000001007E9FD0;
  }

  if (*v1)
  {
    v3 = 0x6341746E65726170;
    v2 = 0xEF4449746E756F63;
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

unint64_t sub_10022BCA8@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_10022F840(a1);
  *a2 = result;
  return result;
}

unint64_t sub_10022BCD0()
{
  v1 = 0x49746E756F636361;
  v2 = 0x694C746E65726170;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000014;
  }

  if (*v0)
  {
    v1 = 0x6341746E65726170;
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

void sub_10022BD84(Swift::String string@<0:X0, 8:X1>, BOOL *a2@<X8>)
{
  object = string._object;
  v3._countAndFlagsBits = string._countAndFlagsBits;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&off_1008E1940, v3);
  object, v6, v7, v8, v9, v10, v11, v12;
  *a2 = v5 != 0;
}

void sub_10022BDF8(Swift::String string@<0:X0, 8:X1>, BOOL *a2@<X8>)
{
  object = string._object;
  v3._countAndFlagsBits = string._countAndFlagsBits;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&off_1008E1978, v3);
  object, v6, v7, v8, v9, v10, v11, v12;
  *a2 = v5 != 0;
}

void *sub_10022BE60()
{
  result = sub_10022BE80();
  qword_100974C80 = result;
  return result;
}

void *sub_10022BE80()
{
  v0 = 0;
  while (1)
  {
    v11 = *(&off_1008E20F8 + v0 + 32);
    if (v11 > 6)
    {
      if (*(&off_1008E20F8 + v0 + 32) <= 9u)
      {
        v20 = 0x626D456567646162;
        if (v11 != 8)
        {
          v20 = 0x61447265746C6966;
        }

        v21 = 0xEB000000006D656CLL;
        if (v11 != 8)
        {
          v21 = 0xEA00000000006174;
        }

        v18 = v11 == 7 ? 0x726F6C6F63 : v20;
        v19 = (v11 == 7 ? 0xE500000000000000 : v21);
      }

      else
      {
        if (v11 - 11 < 3)
        {
          goto LABEL_3;
        }

        v18 = 0xD000000000000017;
        v19 = 0x80000001007E8D40;
      }
    }

    else
    {
      v12 = 0x724F6C61756E616DLL;
      if (v11 != 5)
      {
        v12 = 1701667182;
      }

      v13 = 0xEE00676E69726564;
      if (v11 != 5)
      {
        v13 = 0xE400000000000000;
      }

      v14 = 0xEA00000000006574;
      v15 = 0x53676E6974726F73;
      if (v11 == 3)
      {
        v14 = 0xEC000000656C7974;
      }

      else
      {
        v15 = 0x614464656E6E6970;
      }

      if (*(&off_1008E20F8 + v0 + 32) <= 4u)
      {
        v12 = v15;
        v13 = v14;
      }

      v16 = 0xD000000000000017;
      if (v11 != 1)
      {
        v16 = 0x73694C7472616D73;
      }

      v17 = 0xED00006570795474;
      if (v11 == 1)
      {
        v17 = 0x80000001007E8C60;
      }

      if (!*(&off_1008E20F8 + v0 + 32))
      {
        v16 = 0x44497463656A626FLL;
        v17 = 0xE800000000000000;
      }

      v18 = *(&off_1008E20F8 + v0 + 32) <= 2u ? v16 : v12;
      v19 = (*(&off_1008E20F8 + v0 + 32) <= 2u ? v17 : v13);
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = sub_100005F4C(v18, v19);
    v31 = _swiftEmptyDictionarySingleton[2];
    v32 = (v24 & 1) == 0;
    v33 = __OFADD__(v31, v32);
    v34 = v31 + v32;
    if (v33)
    {
      break;
    }

    v35 = v24;
    if (_swiftEmptyDictionarySingleton[3] >= v34)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v40 = v23;
        sub_100373664();
        v23 = v40;
        if ((v35 & 1) == 0)
        {
LABEL_45:
          _swiftEmptyDictionarySingleton[(v23 >> 6) + 8] |= 1 << v23;
          v36 = (_swiftEmptyDictionarySingleton[6] + 16 * v23);
          *v36 = v18;
          v36[1] = v19;
          v37 = (_swiftEmptyDictionarySingleton[7] + 16 * v23);
          *v37 = v18;
          v37[1] = v19;
          v38 = _swiftEmptyDictionarySingleton[2];
          v33 = __OFADD__(v38, 1);
          v39 = v38 + 1;
          if (v33)
          {
            goto LABEL_87;
          }

          _swiftEmptyDictionarySingleton[2] = v39;
          goto LABEL_3;
        }

        goto LABEL_2;
      }
    }

    else
    {
      sub_10036A8F0(v34, isUniquelyReferenced_nonNull_native);
      v23 = sub_100005F4C(v18, v19);
      if ((v35 & 1) != (v24 & 1))
      {
        goto LABEL_88;
      }
    }

    if ((v35 & 1) == 0)
    {
      goto LABEL_45;
    }

LABEL_2:
    v1 = v23;
    v19, v24, v25, v26, v27, v28, v29, v30;
    v2 = (_swiftEmptyDictionarySingleton[7] + 16 * v1);
    v3 = v2[1];
    *v2 = v18;
    v2[1] = v19;
    v3, v4, v5, v6, v7, v8, v9, v10;
LABEL_3:
    if (++v0 == 14)
    {
      v41 = 0;
      while (1)
      {
        v52 = &off_1008E2128 + v41++;
        v53 = v52[32];
        v54 = 0x694C746E65726170;
        if (v53 != 2)
        {
          v54 = 0xD000000000000014;
        }

        v55 = 0xEC00000044497473;
        if (v53 != 2)
        {
          v55 = 0x80000001007E9FD0;
        }

        v56 = 0xEA00000000007473;
        if (v53 != 2)
        {
          v56 = 0x80000001007E9FD0;
        }

        v57 = 0x49746E756F636361;
        if (v53)
        {
          v57 = 0x6341746E65726170;
        }

        v58 = 0xEF4449746E756F63;
        if (!v53)
        {
          v58 = 0xE900000000000044;
        }

        v59 = 0xED0000746E756F63;
        if (!v53)
        {
          v59 = 0xE900000000000044;
        }

        if (v53 <= 1)
        {
          v60 = v57;
        }

        else
        {
          v60 = v54;
        }

        if (v53 <= 1)
        {
          v61 = v58;
        }

        else
        {
          v61 = v55;
        }

        if (v53 <= 1)
        {
          v62 = v59;
        }

        else
        {
          v62 = v56;
        }

        v63 = swift_isUniquelyReferenced_nonNull_native();
        v64 = sub_100005F4C(v60, v61);
        v72 = _swiftEmptyDictionarySingleton[2];
        v73 = (v65 & 1) == 0;
        v33 = __OFADD__(v72, v73);
        v74 = v72 + v73;
        if (v33)
        {
          __break(1u);
          goto LABEL_85;
        }

        v75 = v65;
        if (_swiftEmptyDictionarySingleton[3] >= v74)
        {
          if (v63)
          {
            goto LABEL_77;
          }

          v80 = v64;
          sub_100373664();
          v64 = v80;
          if ((v75 & 1) == 0)
          {
            goto LABEL_78;
          }

LABEL_50:
          v42 = v64;
          v61, v65, v66, v67, v68, v69, v70, v71;
          v43 = (_swiftEmptyDictionarySingleton[7] + 16 * v42);
          v44 = v43[1];
          *v43 = v60;
          v43[1] = v62;
          v44, v45, v46, v47, v48, v49, v50, v51;
          if (v41 == 4)
          {
            return _swiftEmptyDictionarySingleton;
          }
        }

        else
        {
          sub_10036A8F0(v74, v63);
          v64 = sub_100005F4C(v60, v61);
          if ((v75 & 1) != (v65 & 1))
          {
            goto LABEL_88;
          }

LABEL_77:
          if (v75)
          {
            goto LABEL_50;
          }

LABEL_78:
          _swiftEmptyDictionarySingleton[(v64 >> 6) + 8] |= 1 << v64;
          v76 = (_swiftEmptyDictionarySingleton[6] + 16 * v64);
          *v76 = v60;
          v76[1] = v61;
          v77 = (_swiftEmptyDictionarySingleton[7] + 16 * v64);
          *v77 = v60;
          v77[1] = v62;
          v78 = _swiftEmptyDictionarySingleton[2];
          v33 = __OFADD__(v78, 1);
          v79 = v78 + 1;
          if (v33)
          {
            goto LABEL_86;
          }

          _swiftEmptyDictionarySingleton[2] = v79;
          if (v41 == 4)
          {
            return _swiftEmptyDictionarySingleton;
          }
        }
      }
    }
  }

LABEL_85:
  __break(1u);
LABEL_86:
  __break(1u);
LABEL_87:
  __break(1u);
LABEL_88:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void sub_10022C398(void *a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v5 = v4;
  v389 = a4;
  isa = *v5;
  v385 = type metadata accessor for Date();
  v400 = *(v385 - 8);
  __chkstk_darwin(v385, v10);
  v384 = &v379 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v403 = type metadata accessor for UUID();
  v12 = *(v403 - 8);
  __chkstk_darwin(v403, v13);
  v402 = &v379 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_10022EA04();
  [a1 setParentAccountID:v15];

  v397 = [a2 createResolutionTokenMapIfNecessary];
  v16 = [a1 resolutionTokenMap];
  if (v16)
  {
    v383 = v16;
    v395 = sub_100694F3C(v16, a3);
    if (qword_100935C60 != -1)
    {
      goto LABEL_194;
    }

    while (1)
    {
      v394 = type metadata accessor for Logger();
      v17 = sub_100006654(v394, qword_10093DE68);
      v18 = a1;

      v386 = v17;
      v19 = Logger.logObject.getter();
      v20 = static os_log_type_t.default.getter();
      a3, v21, v22, v23, v24, v25, v26, v27;

      v28 = os_log_type_enabled(v19, v20);
      v29 = &selRef_setRecordZoneChangeTokensUpdatedBlock_;
      v390 = a2;
      v382 = isa;
      v396 = v18;
      if (v28)
      {
        v30 = swift_slowAlloc();
        v31 = swift_slowAlloc();
        v401 = swift_slowAlloc();
        v406 = v401;
        *v30 = 136446722;
        v32 = [v396 smartListType];
        v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v404 = v12;
        v35 = v34;

        v36 = sub_10000668C(v33, v35, &v406);
        v35, v37, v38, v39, v40, v41, v42, v43;
        *(v30 + 4) = v36;
        *(v30 + 12) = 2114;
        v44 = [v396 objectID];
        *(v30 + 14) = v44;
        *v31 = v44;
        *(v30 + 22) = 2082;
        v45 = Array.description.getter();
        v47 = v46;
        v48 = sub_10000668C(v45, v46, &v406);
        v47, v49, v50, v51, v52, v53, v54, v55;
        *(v30 + 24) = v48;
        v12 = v404;
        _os_log_impl(&_mh_execute_header, v19, v20, "Ingesting smart list storage {storage.smartListType: %{public}s, storage.objectID: %{public}@, changedValueKeys: %{public}s}", v30, 0x20u);
        sub_1000050A4(v31, &unk_100938E70, &unk_100797230);
        a2 = v390;

        isa = v401;
        swift_arrayDestroy();

        v29 = &selRef_setRecordZoneChangeTokensUpdatedBlock_;
      }

      v404 = *(a3 + 16);
      if (!v404)
      {
        break;
      }

      v57 = 0;
      v58 = a3 + 32;
      v401 = (v12 + 8);
      v379 = "TemplateIdentifier";
      v388 = 0x80000001007E8D40;
      v380 = (v400 + 8);
      v387 = 0x80000001007E8C60;
      *&v56 = 136315138;
      v391 = v56;
      *&v56 = 136446722;
      v381 = v56;
      v59 = &selRef_hack_willSaveHandled;
      v392 = a3 + 32;
      while (2)
      {
        v60 = *(&v57->isa + v58);
        v57 = (v57 + 1);
        switch(v60)
        {
          case 1:
            v400 = v57;
            if (qword_100935C70 != -1)
            {
              swift_once();
            }

            v93 = qword_100974C80;
            if (*(qword_100974C80 + 16) && (v94 = sub_100005F4C(0xD000000000000017, v387), (v95 & 1) != 0))
            {
              v96 = *(*(v93 + 56) + 16 * v94 + 8);
            }

            else
            {
              if (qword_100936128 != -1)
              {
                swift_once();
              }

              sub_100006654(v394, qword_100946C50);
              v162 = Logger.logObject.getter();
              v163 = static os_log_type_t.error.getter();
              if (os_log_type_enabled(v162, v163))
              {
                v164 = swift_slowAlloc();
                v165 = swift_slowAlloc();
                v406 = v165;
                *v164 = v391;
                v166 = a2;
                v167 = v387;
                *(v164 + 4) = sub_10000668C(0xD000000000000017, v387, &v406);
                _os_log_impl(&_mh_execute_header, v162, v163, "Unknown ingestable key {key: %s}", v164, 0xCu);
                sub_10000607C(v165);

                v29 = &selRef_setRecordZoneChangeTokensUpdatedBlock_;

                v96 = v167;
                a2 = v166;
              }

              else
              {

                v96 = v387;
              }
            }

            v214 = String._bridgeToObjectiveC()();
            v96, v215, v216, v217, v218, v219, v220, v221;
            isa = [v397 mergeWithMap:v395 forKey:v214];

            if (isa)
            {
              [a2 setMinimumSupportedVersion:{objc_msgSend(v396, "minimumSupportedVersion")}];
            }

            goto LABEL_8;
          case 2:
            v400 = v57;
            if (qword_100935C70 != -1)
            {
              swift_once();
            }

            v97 = qword_100974C80;
            if (*(qword_100974C80 + 16) && (v98 = sub_100005F4C(0x73694C7472616D73, 0xED00006570795474), (v99 & 1) != 0))
            {
              v100 = *(*(v97 + 56) + 16 * v98 + 8);
            }

            else
            {
              if (qword_100936128 != -1)
              {
                swift_once();
              }

              sub_100006654(v394, qword_100946C50);
              v168 = Logger.logObject.getter();
              v169 = static os_log_type_t.error.getter();
              if (os_log_type_enabled(v168, v169))
              {
                v170 = swift_slowAlloc();
                v171 = swift_slowAlloc();
                v406 = v171;
                *v170 = v391;
                *(v170 + 4) = sub_10000668C(0x73694C7472616D73, 0xED00006570795474, &v406);
                _os_log_impl(&_mh_execute_header, v168, v169, "Unknown ingestable key {key: %s}", v170, 0xCu);
                sub_10000607C(v171);

                v29 = &selRef_setRecordZoneChangeTokensUpdatedBlock_;

                v100 = 0xED00006570795474;
                v58 = v392;
              }

              else
              {

                v100 = 0xED00006570795474;
              }
            }

            v222 = String._bridgeToObjectiveC()();
            v100, v223, v224, v225, v226, v227, v228, v229;
            isa = [v397 mergeWithMap:v395 forKey:v222];

            if ((isa & 1) == 0)
            {
              goto LABEL_8;
            }

            isa = [v396 v29[133]];
            [a2 setSmartListType:{isa, v379}];
            goto LABEL_7;
          case 3:
            v400 = v57;
            if (qword_100935C70 != -1)
            {
              swift_once();
            }

            v70 = qword_100974C80;
            if (*(qword_100974C80 + 16) && (v71 = sub_100005F4C(0x53676E6974726F73, 0xEC000000656C7974), (v72 & 1) != 0))
            {
              v73 = *(*(v70 + 56) + 16 * v71 + 8);
            }

            else
            {
              if (qword_100936128 != -1)
              {
                swift_once();
              }

              sub_100006654(v394, qword_100946C50);
              v154 = Logger.logObject.getter();
              v155 = static os_log_type_t.error.getter();
              if (os_log_type_enabled(v154, v155))
              {
                v156 = swift_slowAlloc();
                v157 = swift_slowAlloc();
                v406 = v157;
                *v156 = v391;
                *(v156 + 4) = sub_10000668C(0x53676E6974726F73, 0xEC000000656C7974, &v406);
                _os_log_impl(&_mh_execute_header, v154, v155, "Unknown ingestable key {key: %s}", v156, 0xCu);
                sub_10000607C(v157);

                v29 = &selRef_setRecordZoneChangeTokensUpdatedBlock_;

                v73 = 0xEC000000656C7974;
                v58 = v392;
              }

              else
              {

                v73 = 0xEC000000656C7974;
              }
            }

            v198 = String._bridgeToObjectiveC()();
            v73, v199, v200, v201, v202, v203, v204, v205;
            isa = [v397 mergeWithMap:v395 forKey:v198];

            if ((isa & 1) == 0)
            {
              goto LABEL_8;
            }

            isa = [v396 sortingStyle];
            [a2 setSortingStyle:{isa, v379}];
            goto LABEL_7;
          case 4:
            v101 = v57;
            if (qword_100935C70 != -1)
            {
              swift_once();
            }

            v106 = qword_100974C80;
            if (*(qword_100974C80 + 16) && (v107 = sub_100005F4C(0x614464656E6E6970, 0xEA00000000006574), (v108 & 1) != 0))
            {
              v109 = *(*(v106 + 56) + 16 * v107 + 8);
            }

            else
            {
              if (qword_100936128 != -1)
              {
                swift_once();
              }

              sub_100006654(v394, qword_100946C50);
              v176 = Logger.logObject.getter();
              v177 = static os_log_type_t.error.getter();
              if (os_log_type_enabled(v176, v177))
              {
                v178 = swift_slowAlloc();
                v179 = swift_slowAlloc();
                v406 = v179;
                *v178 = v391;
                v109 = 0xEA00000000006574;
                *(v178 + 4) = sub_10000668C(0x614464656E6E6970, 0xEA00000000006574, &v406);
                _os_log_impl(&_mh_execute_header, v176, v177, "Unknown ingestable key {key: %s}", v178, 0xCu);
                sub_10000607C(v179);
                v58 = v392;
                v180 = v390;

                a2 = v180;
              }

              else
              {

                v109 = 0xEA00000000006574;
              }

              v29 = &selRef_setRecordZoneChangeTokensUpdatedBlock_;
            }

            isa = String._bridgeToObjectiveC()();
            v109, v238, v239, v240, v241, v242, v243, v244;
            v245 = [v397 mergeWithMap:v395 forKey:isa];

            if ((v245 & 1) == 0)
            {
              goto LABEL_146;
            }

            v246 = [v396 pinnedDate];
            if (v246)
            {
              v247 = v384;
              v248 = v246;
              static Date._unconditionallyBridgeFromObjectiveC(_:)();

              isa = Date._bridgeToObjectiveC()().super.isa;
              (*v380)(v247, v385);
            }

            else
            {
              isa = 0;
            }

            [a2 setPinnedDate:{isa, v379}];
            goto LABEL_154;
          case 5:
            sub_10022F88C(v396);
            goto LABEL_9;
          case 6:
            v101 = v57;
            if (qword_100935C70 != -1)
            {
              swift_once();
            }

            v102 = qword_100974C80;
            if (*(qword_100974C80 + 16) && (v103 = sub_100005F4C(1701667182, 0xE400000000000000), (v104 & 1) != 0))
            {
              v105 = *(*(v102 + 56) + 16 * v103 + 8);
            }

            else
            {
              if (qword_100936128 != -1)
              {
                swift_once();
              }

              sub_100006654(v394, qword_100946C50);
              v172 = Logger.logObject.getter();
              v173 = static os_log_type_t.error.getter();
              if (os_log_type_enabled(v172, v173))
              {
                v174 = swift_slowAlloc();
                v175 = swift_slowAlloc();
                v406 = v175;
                *v174 = v391;
                v105 = 0xE400000000000000;
                *(v174 + 4) = sub_10000668C(1701667182, 0xE400000000000000, &v406);
                _os_log_impl(&_mh_execute_header, v172, v173, "Unknown ingestable key {key: %s}", v174, 0xCu);
                sub_10000607C(v175);
                v58 = v392;
                a2 = v390;
              }

              else
              {

                v105 = 0xE400000000000000;
              }

              v29 = &selRef_setRecordZoneChangeTokensUpdatedBlock_;
            }

            isa = String._bridgeToObjectiveC()();
            v105, v230, v231, v232, v233, v234, v235, v236;
            v237 = [v397 mergeWithMap:v395 forKey:isa];

            if ((v237 & 1) == 0)
            {
              goto LABEL_146;
            }

            isa = [v396 name];
            [a2 setName:{isa, v379}];
            goto LABEL_154;
          case 7:
            v101 = v57;
            if (qword_100935C70 != -1)
            {
              swift_once();
            }

            v144 = qword_100974C80;
            if (*(qword_100974C80 + 16) && (v145 = sub_100005F4C(0x726F6C6F63, 0xE500000000000000), (v146 & 1) != 0))
            {
              v147 = *(*(v144 + 56) + 16 * v145 + 8);
            }

            else
            {
              if (qword_100936128 != -1)
              {
                swift_once();
              }

              sub_100006654(v394, qword_100946C50);
              v185 = Logger.logObject.getter();
              v186 = static os_log_type_t.error.getter();
              if (os_log_type_enabled(v185, v186))
              {
                v187 = swift_slowAlloc();
                v188 = swift_slowAlloc();
                v406 = v188;
                *v187 = v391;
                v147 = 0xE500000000000000;
                *(v187 + 4) = sub_10000668C(0x726F6C6F63, 0xE500000000000000, &v406);
                _os_log_impl(&_mh_execute_header, v185, v186, "Unknown ingestable key {key: %s}", v187, 0xCu);
                sub_10000607C(v188);
                v58 = v392;
                v189 = v390;

                a2 = v189;
              }

              else
              {

                v147 = 0xE500000000000000;
              }

              v29 = &selRef_setRecordZoneChangeTokensUpdatedBlock_;
            }

            isa = String._bridgeToObjectiveC()();
            v147, v263, v264, v265, v266, v267, v268, v269;
            v270 = [v397 mergeWithMap:v395 forKey:{isa, v379}];

            if ((v270 & 1) == 0)
            {
              goto LABEL_146;
            }

            isa = [v396 color];
            [a2 setColor:{isa, v379}];
            goto LABEL_154;
          case 8:
            v400 = v57;
            if (qword_100935C70 != -1)
            {
              swift_once();
            }

            v89 = qword_100974C80;
            if (*(qword_100974C80 + 16) && (v90 = sub_100005F4C(0x626D456567646162, 0xEB000000006D656CLL), (v91 & 1) != 0))
            {
              v92 = *(*(v89 + 56) + 16 * v90 + 8);
            }

            else
            {
              if (qword_100936128 != -1)
              {
                swift_once();
              }

              sub_100006654(v394, qword_100946C50);
              v158 = Logger.logObject.getter();
              v159 = static os_log_type_t.error.getter();
              if (os_log_type_enabled(v158, v159))
              {
                v160 = swift_slowAlloc();
                v161 = swift_slowAlloc();
                v406 = v161;
                *v160 = v391;
                *(v160 + 4) = sub_10000668C(0x626D456567646162, 0xEB000000006D656CLL, &v406);
                _os_log_impl(&_mh_execute_header, v158, v159, "Unknown ingestable key {key: %s}", v160, 0xCu);
                sub_10000607C(v161);

                v29 = &selRef_setRecordZoneChangeTokensUpdatedBlock_;

                v92 = 0xEB000000006D656CLL;
                v58 = v392;
              }

              else
              {

                v92 = 0xEB000000006D656CLL;
              }
            }

            v206 = String._bridgeToObjectiveC()();
            v92, v207, v208, v209, v210, v211, v212, v213;
            isa = [v397 mergeWithMap:v395 forKey:v206];

            if ((isa & 1) == 0)
            {
              goto LABEL_8;
            }

            isa = [v396 badgeEmblem];
            [a2 setBadgeEmblem:{isa, v379}];
            goto LABEL_7;
          case 9:
            v101 = v57;
            if (qword_100935C70 != -1)
            {
              swift_once();
            }

            v140 = qword_100974C80;
            if (*(qword_100974C80 + 16) && (v141 = sub_100005F4C(0x61447265746C6966, 0xEA00000000006174), (v142 & 1) != 0))
            {
              v143 = *(*(v140 + 56) + 16 * v141 + 8);
            }

            else
            {
              if (qword_100936128 != -1)
              {
                swift_once();
              }

              sub_100006654(v394, qword_100946C50);
              v181 = Logger.logObject.getter();
              v182 = static os_log_type_t.error.getter();
              if (os_log_type_enabled(v181, v182))
              {
                v183 = swift_slowAlloc();
                v184 = swift_slowAlloc();
                v406 = v184;
                *v183 = v391;
                *(v183 + 4) = sub_10000668C(0x61447265746C6966, 0xEA00000000006174, &v406);
                _os_log_impl(&_mh_execute_header, v181, v182, "Unknown ingestable key {key: %s}", v183, 0xCu);
                sub_10000607C(v184);

                v29 = &selRef_setRecordZoneChangeTokensUpdatedBlock_;

                v58 = v392;
              }

              else
              {
              }

              v143 = 0xEA00000000006174;
            }

            v249 = String._bridgeToObjectiveC()();
            v143, v250, v251, v252, v253, v254, v255, v256;
            isa = [v397 mergeWithMap:v395 forKey:v249];

            if (isa)
            {
              v257 = [v396 filterData];
              if (v257)
              {
                v258 = v257;
                v259 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
                v261 = v260;

                isa = Data._bridgeToObjectiveC()().super.isa;
                v262 = v261;
                v29 = &selRef_setRecordZoneChangeTokensUpdatedBlock_;
                sub_10001BBA0(v259, v262);
              }

              else
              {
                isa = 0;
              }

              [a2 setFilterData:{isa, v379}];
LABEL_154:

              v57 = v101;
            }

            else
            {
LABEL_146:
              v57 = v101;
            }

            goto LABEL_9;
          case 10:
            v400 = v57;
            if (qword_100935C70 != -1)
            {
              swift_once();
            }

            v66 = qword_100974C80;
            if (*(qword_100974C80 + 16) && (v67 = sub_100005F4C(0xD000000000000017, v388), (v68 & 1) != 0))
            {
              v69 = *(*(v66 + 56) + 16 * v67 + 8);
            }

            else
            {
              if (qword_100936128 != -1)
              {
                swift_once();
              }

              sub_100006654(v394, qword_100946C50);
              v148 = Logger.logObject.getter();
              v149 = static os_log_type_t.error.getter();
              if (os_log_type_enabled(v148, v149))
              {
                v150 = swift_slowAlloc();
                v151 = swift_slowAlloc();
                v406 = v151;
                *v150 = v391;
                v152 = a2;
                v153 = v388;
                *(v150 + 4) = sub_10000668C(0xD000000000000017, v388, &v406);
                _os_log_impl(&_mh_execute_header, v148, v149, "Unknown ingestable key {key: %s}", v150, 0xCu);
                sub_10000607C(v151);

                v29 = &selRef_setRecordZoneChangeTokensUpdatedBlock_;

                v69 = v153;
                a2 = v152;
              }

              else
              {

                v69 = v388;
              }
            }

            v190 = String._bridgeToObjectiveC()();
            v69, v191, v192, v193, v194, v195, v196, v197;
            isa = [v397 mergeWithMap:v395 forKey:v190];

            if (isa)
            {
              [a2 setShowingLargeAttachments:{objc_msgSend(v396, "showingLargeAttachments")}];
            }

            goto LABEL_8;
          case 11:
            goto LABEL_9;
          case 12:
            v400 = v57;
            v74 = [v396 unsavedSectionIDsOrdering];
            if (!v74)
            {
              goto LABEL_8;
            }

            a1 = v74;
            sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
            a3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

            if (!(a3 >> 62))
            {
              v12 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
              if (v12)
              {
                goto LABEL_25;
              }

              goto LABEL_156;
            }

            v12 = _CocoaArrayWrapper.endIndex.getter();
            if (!v12)
            {
LABEL_156:
              v76 = &_swiftEmptyArrayStorage;
LABEL_157:
              v271 = objc_allocWithZone(REMOrderedIdentifierMap);
              v272 = Array._bridgeToObjectiveC()().super.isa;
              v273 = [v271 initWithOrderedIdentifiers:v272];
              v76, v274, v275, v276, v277, v278, v279, v280;

              v406 = v273;
              sub_1000060C8(0, &qword_10093C660, REMOrderedIdentifierMap_ptr);
              v281 = v273;
              v282 = v393;
              v283 = REMJSONRepresentable.toJSONData()();
              if (v282)
              {
                a3, v284, v285, v286, v287, v288, v289, v290;

                v291 = v396;
                swift_errorRetain();
                isa = Logger.logObject.getter();
                v292 = static os_log_type_t.fault.getter();

                if (os_log_type_enabled(isa, v292))
                {
                  v293 = swift_slowAlloc();
                  v294 = swift_slowAlloc();
                  v405 = swift_slowAlloc();
                  *v293 = v381;
                  v406 = v382;
                  swift_getMetatypeMetadata();
                  v295 = String.init<A>(describing:)();
                  v297 = v296;
                  v298 = sub_10000668C(v295, v296, &v405);
                  v297, v299, v300, v301, v302, v303, v304, v305;
                  *(v293 + 4) = v298;
                  *(v293 + 12) = 2114;
                  v306 = [v291 objectID];
                  *(v293 + 14) = v306;
                  *v294 = v306;
                  *(v293 + 22) = 2082;
                  swift_getErrorValue();
                  v307 = Error.rem_errorDescription.getter();
                  v309 = v308;
                  v310 = sub_10000668C(v307, v308, &v405);
                  v309, v311, v312, v313, v314, v315, v316, v317;
                  *(v293 + 24) = v310;
                  _os_log_impl(&_mh_execute_header, isa, v292, "%{public}s#merge(storage:into:changedValueKeys:coordinator:): Failed to merge 'storage.unsavedSectionIDsOrdering' into 'cdSmartList' {storage.objectID: %{public}@, error: %{public}s}", v293, 0x20u);
                  sub_1000050A4(v294, &unk_100938E70, &unk_100797230);
                  v59 = &selRef_hack_willSaveHandled;

                  swift_arrayDestroy();
                }

                else
                {
                }

                v393 = 0;
                a2 = v390;
              }

              else
              {
                v393 = 0;
                v318 = v283;
                v319 = v284;
                sub_100029344(v283, v284);
                v320 = Data._bridgeToObjectiveC()().super.isa;
                sub_10001BBA0(v318, v319);
                isa = v390;
                [v390 setSectionIDsOrderingAsData:v320];

                v321 = [isa createResolutionTokenMapIfNecessary];
                v322 = String._bridgeToObjectiveC()();
                [v321 updateForKey:v322];

                a2 = isa;
                v59 = &selRef_hack_willSaveHandled;
                a3, v323, v324, v325, v326, v327, v328, v329;

                sub_10001BBA0(v318, v319);
              }

              v29 = &selRef_setRecordZoneChangeTokensUpdatedBlock_;
LABEL_164:
              v57 = v400;
              v58 = v392;
LABEL_9:
              if (v57 == v404)
              {
                goto LABEL_165;
              }

              continue;
            }

LABEL_25:
            v75 = 0;
            v398 = a3 & 0xFFFFFFFFFFFFFF8;
            v399 = (a3 & 0xC000000000000001);
            v76 = &_swiftEmptyArrayStorage;
            while (1)
            {
              if (v399)
              {
                v77 = specialized _ArrayBuffer._getElementSlowPath(_:)();
              }

              else
              {
                if (v75 >= *(v398 + 16))
                {
                  goto LABEL_193;
                }

                v77 = *(a3 + 8 * v75 + 32);
              }

              v78 = v77;
              isa = v75 + 1;
              if (__OFADD__(v75, 1))
              {
                break;
              }

              v79 = [v77 uuid];
              v80 = v402;
              static UUID._unconditionallyBridgeFromObjectiveC(_:)();

              a1 = UUID.uuidString.getter();
              v82 = v81;

              (*v401)(v80, v403);
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v76 = sub_100365788(0, *v76->clientIdentity + 1, 1, v76, v83, v84, v85, v86);
              }

              a2 = *v76->clientIdentity;
              v87 = *&v76->clientIdentity[8];
              if (a2 >= v87 >> 1)
              {
                v76 = sub_100365788((v87 > 1), a2 + 1, 1, v76, v83, v84, v85, v86);
              }

              *v76->clientIdentity = a2 + 1;
              v88 = v76 + 16 * a2;
              *(v88 + 4) = a1;
              *(v88 + 5) = v82;
              ++v75;
              v59 = &selRef_hack_willSaveHandled;
              if (isa == v12)
              {
                goto LABEL_157;
              }
            }

            __break(1u);
LABEL_193:
            __break(1u);
LABEL_194:
            swift_once();
            break;
          case 13:
            v110 = [v396 unsavedMembershipsOfRemindersInSections];
            if (!v110)
            {
              goto LABEL_9;
            }

            isa = v110;
            v400 = v57;
            v111 = v393;
            sub_1005EB85C(v110);
            if (v111)
            {
              v112 = v396;
              swift_errorRetain();
              v113 = Logger.logObject.getter();
              v114 = static os_log_type_t.fault.getter();

              if (os_log_type_enabled(v113, v114))
              {
                v115 = swift_slowAlloc();
                v116 = swift_slowAlloc();
                v399 = swift_slowAlloc();
                v405 = v399;
                *v115 = v381;
                v406 = v382;
                swift_getMetatypeMetadata();
                v117 = String.init<A>(describing:)();
                v119 = v118;
                v120 = sub_10000668C(v117, v118, &v405);
                v119, v121, v122, v123, v124, v125, v126, v127;
                *(v115 + 4) = v120;
                *(v115 + 12) = 2114;
                v128 = [v112 objectID];
                *(v115 + 14) = v128;
                *v116 = v128;
                *(v115 + 22) = 2082;
                swift_getErrorValue();
                v129 = Error.rem_errorDescription.getter();
                v131 = v130;
                v132 = sub_10000668C(v129, v130, &v405);
                v131, v133, v134, v135, v136, v137, v138, v139;
                *(v115 + 24) = v132;
                v59 = &selRef_hack_willSaveHandled;
                _os_log_impl(&_mh_execute_header, v113, v114, "%{public}s#merge(storage:into:changedValueKeys:coordinator:): Failed to merge 'storage.unsavedMembershipsOfRemindersInSections' into 'cdSmartList' {storage.objectID: %{public}@, error: %{public}s}", v115, 0x20u);
                sub_1000050A4(v116, &unk_100938E70, &unk_100797230);

                swift_arrayDestroy();

                v29 = &selRef_setRecordZoneChangeTokensUpdatedBlock_;
              }

              else
              {
              }

              v393 = 0;
              a2 = v390;
              goto LABEL_164;
            }

            v393 = 0;
LABEL_7:

LABEL_8:
            v57 = v400;
            goto LABEL_9;
          default:
            v61 = [v396 v59[433]];
            v62 = v57;
            v63 = [v61 uuid];

            v64 = v402;
            static UUID._unconditionallyBridgeFromObjectiveC(_:)();

            v57 = v62;
            isa = UUID._bridgeToObjectiveC()().super.isa;
            v65 = v64;
            v29 = &selRef_setRecordZoneChangeTokensUpdatedBlock_;
            (*v401)(v65, v403);
            [a2 setIdentifier:isa];

            goto LABEL_9;
        }

        break;
      }
    }

LABEL_165:
  }

  else
  {
    if (qword_100935C60 != -1)
    {
      swift_once();
    }

    v330 = type metadata accessor for Logger();
    sub_100006654(v330, qword_10093DE68);
    v331 = a1;

    v332 = Logger.logObject.getter();
    v333 = static os_log_type_t.fault.getter();
    a3, v334, v335, v336, v337, v338, v339, v340;

    if (os_log_type_enabled(v332, v333))
    {
      v341 = swift_slowAlloc();
      v342 = swift_slowAlloc();
      v343 = swift_slowAlloc();
      v406 = v343;
      *v341 = 138543618;
      v344 = [v331 objectID];
      *(v341 + 4) = v344;
      *v342 = v344;
      *(v341 + 12) = 2082;
      v345 = *(a3 + 16);
      v346 = &_swiftEmptyArrayStorage;
      if (v345)
      {
        v401 = v342;
        v402 = v343;
        LODWORD(v403) = v333;
        v404 = v332;
        v405 = &_swiftEmptyArrayStorage;
        sub_100026EF4(0, v345, 0);
        v347 = (a3 + 32);
        v346 = v405;
        v348 = 0x80000001007EA260;
        v349 = 0x80000001007EA240;
        v350 = 0x80000001007EA010;
        v351 = 0x80000001007E8D40;
        v352 = 0x80000001007E8C60;
        do
        {
          v353 = *v347++;
          v354 = 0xE800000000000000;
          v355 = 0x44497463656A626FLL;
          switch(v353)
          {
            case 1:
              v355 = 0xD000000000000017;
              v354 = v352;
              break;
            case 2:
              v355 = 0x73694C7472616D73;
              v354 = 0xED00006570795474;
              break;
            case 3:
              v355 = 0x53676E6974726F73;
              v354 = 0xEC000000656C7974;
              break;
            case 4:
              v354 = 0xEA00000000006574;
              v355 = 0x614464656E6E6970;
              break;
            case 5:
              v355 = 0x724F6C61756E616DLL;
              v354 = 0xEE00676E69726564;
              break;
            case 6:
              v354 = 0xE400000000000000;
              v355 = 1701667182;
              break;
            case 7:
              v354 = 0xE500000000000000;
              v355 = 0x726F6C6F63;
              break;
            case 8:
              v355 = 0x626D456567646162;
              v354 = 0xEB000000006D656CLL;
              break;
            case 9:
              v355 = 0x61447265746C6966;
              v354 = 0xEA00000000006174;
              break;
            case 10:
              v355 = 0xD000000000000017;
              v354 = v351;
              break;
            case 11:
              v355 = 0xD00000000000001CLL;
              v354 = v350;
              break;
            case 12:
              v355 = 0xD000000000000019;
              v354 = v349;
              break;
            case 13:
              v355 = 0xD000000000000027;
              v354 = v348;
              break;
            default:
              break;
          }

          v405 = v346;
          v357 = *v346->clientIdentity;
          v356 = *&v346->clientIdentity[8];
          if (v357 >= v356 >> 1)
          {
            v399 = v349;
            v400 = v348;
            v398 = v350;
            v395 = v352;
            v396 = v351;
            sub_100026EF4((v356 > 1), v357 + 1, 1);
            v352 = v395;
            v351 = v396;
            v350 = v398;
            v349 = v399;
            v348 = v400;
            v346 = v405;
          }

          *v346->clientIdentity = v357 + 1;
          v358 = v346 + 16 * v357;
          *(v358 + 4) = v355;
          *(v358 + 5) = v354;
          --v345;
        }

        while (v345);
        v332 = v404;
        LOBYTE(v333) = v403;
        v342 = v401;
        v343 = v402;
      }

      v359 = Array.description.getter();
      v361 = v360;
      v346, v360, v362, v363, v364, v365, v366, v367;
      v368 = sub_10000668C(v359, v361, &v406);
      v361, v369, v370, v371, v372, v373, v374, v375;
      *(v341 + 14) = v368;
      _os_log_impl(&_mh_execute_header, v332, v333, "REMSmartListStorageCDIngestor: merge(storage:into cdSmartList:...) cannot proceed because storage.resolutionTokenMap is nil {objectID: %{public}@, keys: %{public}s}", v341, 0x16u);
      sub_1000050A4(v342, &unk_100938E70, &unk_100797230);

      sub_10000607C(v343);
    }

    v376 = objc_opt_self();
    sub_1000060C8(0, &qword_10093A228, REMSmartListStorage_ptr);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v378 = String._bridgeToObjectiveC()();
    [v376 unexpectedNilPropertyWithClass:ObjCClassFromMetadata property:v378];

    swift_willThrow();
  }
}

id sub_10022EA04()
{
  v1 = [v0 smartListType];
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = v3;
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;
  if (v2 == v5 && v4 == v6)
  {

    v4, v25, v26, v27, v28, v29, v30, v31;
    v7, v32, v33, v34, v35, v36, v37, v38;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v4, v10, v11, v12, v13, v14, v15, v16;
    v7, v17, v18, v19, v20, v21, v22, v23;
    if ((v9 & 1) == 0)
    {
      v24 = &selRef_accountID;
      return [v0 *v24];
    }
  }

  result = [v0 parentAccountID];
  if (!result)
  {
    return result;
  }

  v24 = &selRef_parentAccountID;
  return [v0 *v24];
}

_TtC7remindd19RDXPCStorePerformer *sub_10022EB6C(void *a1)
{
  v2 = type metadata accessor for UUID();
  v3 = *&v2[-1].shareRecordIDToRootRecordIDLock[2];
  __chkstk_darwin(v2, v4);
  v6 = &v107 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Date();
  v113 = *(v7 - 8);
  *&v9 = __chkstk_darwin(v7, v8).n128_u64[0];
  v11 = &v107 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v114 = 0;
  v12 = [a1 remObjectIDWithError:{&v114, v9}];
  if (v12)
  {
    v13 = v12;
    v111 = v6;
    v112 = v3;
    v14 = v114;
    v15 = [a1 account];
    if (v15 && (v16 = v15, v17 = [v15 remObjectID], v16, v17))
    {
      v18 = [a1 smartListType];
      if (v18)
      {
        v19 = v18;
        v110 = v2;
        v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v2 = v21;

        v22._countAndFlagsBits = v20;
        v22._object = v2;
        v116 = REMSmartListType.init(stringValue:)(v22);
        if (v116.value._rawValue)
        {
          rawValue = v116.value._rawValue;
          v2, *&v116.is_nil, v24, v25, v26, v27, v28, v29;
          v31 = objc_allocWithZone(REMSmartListStorage);
          v108 = v17;
          v109 = v13;
          v107 = rawValue;
          v2 = [v31 initWithObjectID:v13 accountID:v17 smartListType:rawValue];
          v32 = [a1 name];
          [(RDXPCStorePerformer *)v2 setName:v32];

          v33 = [a1 color];
          [(RDXPCStorePerformer *)v2 setColor:v33];

          v34 = [a1 badgeEmblem];
          [(RDXPCStorePerformer *)v2 setBadgeEmblem:v34];

          -[RDXPCStorePerformer setShowingLargeAttachments:](v2, "setShowingLargeAttachments:", [a1 showingLargeAttachments]);
          v35 = [a1 filterData];
          if (v35)
          {
            v36 = v35;
            v37 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
            v39 = v38;

            v40.super.isa = Data._bridgeToObjectiveC()().super.isa;
            sub_10001BBA0(v37, v39);
          }

          else
          {
            v40.super.isa = 0;
          }

          [(RDXPCStorePerformer *)v2 setFilterData:v40.super.isa];

          [(RDXPCStorePerformer *)v2 setIsPersisted:1];
          v82 = [a1 sortingStyle];
          if (v82)
          {
            v83 = v82;
            static String._unconditionallyBridgeFromObjectiveC(_:)();

            v84 = REMSortingStyle.init(stringValue:)();
            v86 = v108;
            v85 = v109;
            if (!v84)
            {
              v84 = REMSortingStyleDefault;
            }

            v87 = v84;
            [(RDXPCStorePerformer *)v2 setSortingStyle:v84];
          }

          else
          {
            [(RDXPCStorePerformer *)v2 setSortingStyle:REMSortingStyleDefault];
            v86 = v108;
            v85 = v109;
          }

          v88 = [a1 pinnedDate];
          if (v88)
          {
            v89 = v88;
            static Date._unconditionallyBridgeFromObjectiveC(_:)();

            v90.super.isa = Date._bridgeToObjectiveC()().super.isa;
            (*(v113 + 8))(v11, v7);
          }

          else
          {
            v90.super.isa = 0;
          }

          [(RDXPCStorePerformer *)v2 setPinnedDate:v90.super.isa];

          v91 = [a1 mostRecentTargetTemplateIdentifier];
          if (v91)
          {
            v92 = v111;
            v93 = v91;
            static UUID._unconditionallyBridgeFromObjectiveC(_:)();

            v94.super.isa = UUID._bridgeToObjectiveC()().super.isa;
            (*(v112 + 8))(v92, v110);
          }

          else
          {
            v94.super.isa = 0;
          }

          [(RDXPCStorePerformer *)v2 setMostRecentTargetTemplateIdentifier:v94.super.isa];

          [(RDXPCStorePerformer *)v2 setResolutionTokenMap:0];
          v95 = [a1 resolutionTokenMapData];
          if (v95)
          {
            v96 = v95;
            v97 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
            v99 = v98;

            v100.super.isa = Data._bridgeToObjectiveC()().super.isa;
            sub_10001BBA0(v97, v99);
          }

          else
          {
            v100.super.isa = 0;
          }

          [(RDXPCStorePerformer *)v2 setResolutionTokenMapData:v100.super.isa];

          v101 = [a1 parentAccount];
          if (v101)
          {
            v102 = v101;
            v103 = [v101 remObjectID];
          }

          else
          {
            v103 = 0;
          }

          [(RDXPCStorePerformer *)v2 setParentAccountID:v103];

          v104 = [a1 parentList];
          if (v104)
          {
            v105 = v104;
            v106 = [v104 remObjectID];
          }

          else
          {
            v106 = 0;
          }

          [(RDXPCStorePerformer *)v2 setParentListID:v106];

          -[RDXPCStorePerformer setMinimumSupportedVersion:](v2, "setMinimumSupportedVersion:", [a1 minimumSupportedVersion]);
          -[RDXPCStorePerformer setEffectiveMinimumSupportedVersion:](v2, "setEffectiveMinimumSupportedVersion:", [a1 effectiveMinimumSupportedVersion]);
          [(RDXPCStorePerformer *)v2 setShouldUpdateSectionsOrdering:0];
          [(RDXPCStorePerformer *)v2 setUnsavedSectionIDsOrdering:0];
          [(RDXPCStorePerformer *)v2 setUnsavedMembershipsOfRemindersInSections:0];
        }

        else
        {
          v63 = objc_opt_self();
          v114 = 0;
          v115 = 0xE000000000000000;
          _StringGuts.grow(_:)(57);
          v64._object = 0x80000001007F16C0;
          v64._countAndFlagsBits = 0xD000000000000037;
          String.append(_:)(v64);
          v65._countAndFlagsBits = v20;
          v65._object = v2;
          String.append(_:)(v65);
          v2, v66, v67, v68, v69, v70, v71, v72;
          v73 = v115;
          v74 = String._bridgeToObjectiveC()();
          v73, v75, v76, v77, v78, v79, v80, v81;
          [v63 internalErrorWithDebugDescription:v74];

          swift_willThrow();
        }
      }

      else
      {
        if (qword_100935C68 != -1)
        {
          swift_once();
        }

        v53 = type metadata accessor for Logger();
        sub_100006654(v53, qword_10093DE80);
        v54 = v13;
        v55 = Logger.logObject.getter();
        v56 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v55, v56))
        {
          v57 = swift_slowAlloc();
          v58 = swift_slowAlloc();
          *v57 = 138543362;
          *(v57 + 4) = v54;
          *v58 = v13;
          v59 = v54;
          _os_log_impl(&_mh_execute_header, v55, v56, "REMSmartListStorageCDIngestor: cdSmartList.smartListType is nil {cdSmartList.remObjectID: %{public}@}", v57, 0xCu);
          sub_1000050A4(v58, &unk_100938E70, &unk_100797230);
        }

        v60 = objc_opt_self();
        sub_1000060C8(0, &unk_10093F770, off_1008D41E8);
        ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
        v62 = String._bridgeToObjectiveC()();
        [v60 unexpectedNilPropertyWithClass:ObjCClassFromMetadata property:v62];

        swift_willThrow();
      }
    }

    else
    {
      if (qword_100935C68 != -1)
      {
        swift_once();
      }

      v41 = type metadata accessor for Logger();
      sub_100006654(v41, qword_10093DE80);
      v42 = v13;
      v43 = Logger.logObject.getter();
      v44 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v43, v44))
      {
        v45 = swift_slowAlloc();
        v46 = swift_slowAlloc();
        *v45 = 138543362;
        *(v45 + 4) = v42;
        *v46 = v13;
        v47 = v42;
        _os_log_impl(&_mh_execute_header, v43, v44, "REMSmartListStorageCDIngestor: cdSmartList.account is nil {cdSmartList.remObjectID: %{public}@}", v45, 0xCu);
        sub_1000050A4(v46, &unk_100938E70, &unk_100797230);
      }

      v48 = objc_opt_self();
      sub_1000060C8(0, &unk_10093F770, off_1008D41E8);
      v49 = swift_getObjCClassFromMetadata();
      v50 = String._bridgeToObjectiveC()();
      [v48 unexpectedNilPropertyWithClass:v49 property:v50];

      swift_willThrow();
    }
  }

  else
  {
    v51 = v114;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return v2;
}

id sub_10022F65C(void *a1, uint64_t a2)
{
  v4 = sub_1000F5104(&qword_10093E088, &qword_10079BC18);
  __chkstk_darwin(v4 - 8, v5);
  v7 = &v14 - v6;
  v8 = a1;
  REMSmartList.NonCustom.init(smartListType:)();
  v9 = type metadata accessor for REMSmartList.NonCustom();
  v10 = *(v9 - 8);
  if ((*(v10 + 48))(v7, 1, v9) == 1)
  {
    sub_1000050A4(v7, &qword_10093E088, &qword_10079BC18);
    v11 = [objc_opt_self() newObjectID];
  }

  else
  {
    v11 = REMSmartList.NonCustom.remObjectID.getter();
    (*(v10 + 8))(v7, v9);
  }

  v12 = [objc_allocWithZone(REMSmartListStorage) initWithObjectID:v11 accountID:a2 smartListType:v8];
  [v12 setParentAccountID:a2];

  return v12;
}

unint64_t sub_10022F7F4(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1008E0090, v2);
  object, v4, v5, v6, v7, v8, v9, v10;
  if (v3 >= 0xE)
  {
    return 14;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_10022F840(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1008E18C0, v2);
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

void sub_10022F88C(void *a1)
{
  v2 = [a1 remObjectID];
  v3 = [a1 smartListType];
  v4 = [a1 manualOrdering];
  if (v4)
  {
    v5 = v4;
    if (qword_100935C60 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_100006654(v6, qword_10093DE68);
    v7 = v5;
    v68 = v2;
    v8 = v3;
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v69 = v13;
      *v11 = 138543874;
      *(v11 + 4) = v68;
      *v12 = v68;
      *(v11 + 12) = 2082;
      v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v16 = v15;
      v17 = v68;
      v18 = sub_10000668C(v14, v16, &v69);
      v16, v19, v20, v21, v22, v23, v24, v25;
      *(v11 + 14) = v18;
      *(v11 + 22) = 2048;
      v26 = [v7 topLevelElementIDs];
      sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
      v27 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      if (v27 >> 62)
      {
        v28 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v28 = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v27, v29, v30, v31, v32, v33, v34, v35;
      *(v11 + 24) = v28;

      _os_log_impl(&_mh_execute_header, v9, v10, "ingesting manual ordering {smart list: %{public}@, smart list type: %{public}s, top-level elements count: %ld}", v11, 0x20u);
      sub_1000050A4(v12, &unk_100938E70, &unk_100797230);

      sub_10000607C(v13);
    }

    else
    {
    }

    v55 = [a1 accountID];
    v56 = [objc_opt_self() defaultCenter];
    type metadata accessor for REMManualOrderingCDIngestor();
    v57 = swift_allocObject();
    *(v57 + 16) = v55;
    *(v57 + 24) = v56;
    sub_1000F5104(&unk_100939D60, &unk_1007959E0);
    v58 = swift_allocObject();
    *(v58 + 16) = xmmword_1007953F0;
    *(v58 + 32) = v7;
    v59 = v7;
    sub_1005F9E88(v58, v57);

    v58, v60, v61, v62, v63, v64, v65, v66;
  }

  else
  {
    if (qword_100935C60 != -1)
    {
      swift_once();
    }

    v36 = type metadata accessor for Logger();
    sub_100006654(v36, qword_10093DE68);
    v37 = v2;
    v38 = v3;
    v68 = Logger.logObject.getter();
    v39 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v68, v39))
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v69 = v42;
      *v40 = 138543618;
      *(v40 + 4) = v37;
      *v41 = v37;
      *(v40 + 12) = 2082;
      v43 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v45 = v44;
      v67 = v37;
      v46 = sub_10000668C(v43, v45, &v69);
      v45, v47, v48, v49, v50, v51, v52, v53;
      *(v40 + 14) = v46;
      sub_1000050A4(v41, &unk_100938E70, &unk_100797230);

      sub_10000607C(v42);

      v54 = v67;
      goto LABEL_16;
    }
  }

  v54 = v68;
LABEL_16:
}

_TtC7remindd19RDXPCStorePerformer *sub_10022FDD4(id a1, unsigned __int8 a2)
{
  if (a2 > 1u)
  {
    if (a2 != 2)
    {
      v30 = [a1 sectionIDsToUndelete];
      sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
      sub_10018BA8C();
      v31 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

      v3 = sub_100277EBC(v31);
      v31, v32, v33, v34, v35, v36, v37, v38;
      return v3;
    }

    v4 = [a1 smartListType];
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;
    v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = v9;
    if (v5 == v8 && v7 == v9)
    {

      v7, v39, v40, v41, v42, v43, v44, v45;
      v10, v46, v47, v48, v49, v50, v51, v52;
    }

    else
    {
      v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v7, v13, v14, v15, v16, v17, v18, v19;
      v10, v20, v21, v22, v23, v24, v25, v26;
      if ((v12 & 1) == 0)
      {
        v58 = 0;
        v3 = &_swiftEmptyArrayStorage;
LABEL_22:
        v29 = &v58;
LABEL_23:
        sub_1000050A4(v29, &unk_10093AF40, &unk_100795790);
        return v3;
      }
    }

    v53 = [a1 parentListID];
    v58 = v53;
    v3 = &_swiftEmptyArrayStorage;
    v57 = &_swiftEmptyArrayStorage;
    if (v53)
    {
      v54 = v53;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v57 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v57 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v3 = v57;
    }

    goto LABEL_22;
  }

  if (a2)
  {
    v27 = sub_10022EA04();
    v56 = v27;
    v3 = &_swiftEmptyArrayStorage;
    v57 = &_swiftEmptyArrayStorage;
    if (v27)
    {
      v28 = v27;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v57 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v57 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v3 = v57;
    }

    v29 = &v56;
    goto LABEL_23;
  }

  sub_1000F5104(&unk_100939D60, &unk_1007959E0);
  v3 = swift_allocObject();
  *v3->clientIdentity = xmmword_1007953F0;
  *&v3->clientIdentity[16] = [a1 accountID];
  return v3;
}

void sub_1002300BC(NSObject *a1, id a2, void *a3, uint64_t a4)
{
  v6 = v4;
  v7 = a2;
  v8 = a1;
  if (a3 - 1 < 2)
  {
    LOBYTE(v5) = a3;
    v9 = [a2 createResolutionTokenMapIfNecessary];
    v10 = [v8 resolutionTokenMap];
    if (!v10)
    {
      if (qword_100935C60 != -1)
      {
        goto LABEL_88;
      }

      goto LABEL_14;
    }

    v11 = v10;
    v12 = v7;
    sub_1000F5104(&qword_100943600, &qword_10079BC10);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100791300;
    *(inited + 32) = v5;
    v14 = sub_1006952B0(v11, inited);
    swift_setDeallocating();
    sub_100693168(v5, v15, v16, v17, v18, v19, v20, v21);
    v23 = v22;
    v24 = String._bridgeToObjectiveC()();
    v23, v25, v26, v27, v28, v29, v30, v31;
    LODWORD(v23) = [v9 mergeWithMap:v14 forKey:v24];

    if (!v23)
    {
      goto LABEL_82;
    }

    if (v5 == 1)
    {
      v32 = sub_10022EA04();
      if (v32)
      {
        sub_100686250(1, v32, a4);
        if (v4)
        {
LABEL_85:

          goto LABEL_86;
        }

        v34 = v33;
        v35 = v33;
      }

      else
      {
        v34 = 0;
      }

      if (qword_100935C60 != -1)
      {
        swift_once();
      }

      v162 = type metadata accessor for Logger();
      sub_100006654(v162, qword_10093DE68);
      v163 = v34;
      v164 = v12;
      v165 = Logger.logObject.getter();
      v166 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v165, v166))
      {
        v225 = v166;
        v221 = v163;
        v234 = v32;
        v167 = swift_slowAlloc();
        v244 = swift_slowAlloc();
        *v167 = 136446466;
        v231 = v164;
        v237 = [v164 remObjectID];
        sub_1000F5104(&unk_10093AF40, &unk_100795790);
        v168 = Optional.descriptionOrNil.getter();
        v170 = v169;

        v171 = sub_10000668C(v168, v170, &v244);
        v170, v172, v173, v174, v175, v176, v177, v178;
        *(v167 + 4) = v171;
        *(v167 + 12) = 2082;
        v163 = v221;
        if (v34)
        {
          v34 = [v221 remObjectID];
        }

        v209 = Optional.descriptionOrNil.getter();
        v211 = v210;

        v212 = sub_10000668C(v209, v211, &v244);
        v211, v213, v214, v215, v216, v217, v218, v219;
        *(v167 + 14) = v212;
        _os_log_impl(&_mh_execute_header, v165, v225, "Updating smartList.parentAccount {smartList: %{public}s, parentAccount: %{public}s}", v167, 0x16u);
        swift_arrayDestroy();

        v164 = v231;
        v32 = v234;
      }

      else
      {
      }

      [v164 setParentAccount:v163];

      goto LABEL_85;
    }

    v123 = [v8 smartListType];
    v124 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v126 = v125;
    v127 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v129 = v128;
    if (v124 == v127 && v126 == v128)
    {

      v126, v130, v131, v132, v133, v134, v135, v136;
      v129, v137, v138, v139, v140, v141, v142, v143;
    }

    else
    {
      v144 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v126, v145, v146, v147, v148, v149, v150, v151;
      v129, v152, v153, v154, v155, v156, v157, v158;
      if ((v144 & 1) == 0)
      {
        goto LABEL_63;
      }
    }

    v159 = [v8 parentListID];
    if (v159)
    {
      v32 = v159;
      sub_100686A70(2, v32, a4);
      if (v4)
      {

LABEL_86:
        return;
      }

      v161 = v160;

      goto LABEL_73;
    }

LABEL_63:
    v161 = 0;
    v32 = 0;
LABEL_73:
    if (qword_100935C60 != -1)
    {
      swift_once();
    }

    v179 = type metadata accessor for Logger();
    sub_100006654(v179, qword_10093DE68);
    v180 = v161;
    v181 = v12;
    v182 = Logger.logObject.getter();
    v183 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v182, v183))
    {
      v223 = v183;
      v226 = v180;
      loga = v182;
      v235 = v32;
      v184 = v161;
      v185 = swift_slowAlloc();
      v244 = swift_slowAlloc();
      *v185 = 136315394;
      v232 = v181;
      v238 = [v181 remObjectID];
      sub_1000F5104(&unk_10093AF40, &unk_100795790);
      v186 = Optional.descriptionOrNil.getter();
      v188 = v187;

      v189 = sub_10000668C(v186, v188, &v244);
      v188, v190, v191, v192, v193, v194, v195, v196;
      *(v185 + 4) = v189;
      *(v185 + 12) = 2080;
      if (v184)
      {
        v180 = v226;
        v197 = [v226 remObjectID];
      }

      else
      {
        v197 = 0;
        v180 = v226;
      }

      v198 = Optional.descriptionOrNil.getter();
      v200 = v199;

      v201 = sub_10000668C(v198, v200, &v244);
      v200, v202, v203, v204, v205, v206, v207, v208;
      *(v185 + 14) = v201;
      _os_log_impl(&_mh_execute_header, loga, v223, "Updating smartList.parentList {smartList: %s, parentList: %s}", v185, 0x16u);
      swift_arrayDestroy();

      v181 = v232;
      v32 = v235;
    }

    else
    {
    }

    [v181 setParentList:v180];

LABEL_82:
    return;
  }

  if (!a3)
  {
    v36 = [a1 accountID];
    sub_100686250(0, v36, a4);
    if (v4)
    {
    }

    else
    {
      v65 = qword_100935C60;
      v66 = v37;
      if (v65 != -1)
      {
        swift_once();
      }

      v67 = type metadata accessor for Logger();
      sub_100006654(v67, qword_10093DE68);
      v68 = v66;
      v69 = v7;
      v70 = Logger.logObject.getter();
      v71 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v70, v71))
      {
        v72 = swift_slowAlloc();
        v244 = swift_slowAlloc();
        *v72 = 136446466;
        v73 = [v69 remObjectID];
        sub_1000F5104(&unk_10093AF40, &unk_100795790);
        v74 = Optional.descriptionOrNil.getter();
        v229 = v71;
        v75 = v69;
        v77 = v76;

        v78 = sub_10000668C(v74, v77, &v244);
        v77, v79, v80, v81, v82, v83, v84, v85;
        *(v72 + 4) = v78;
        *(v72 + 12) = 2082;
        v236 = [v68 remObjectID];
        v86 = Optional.descriptionOrNil.getter();
        v88 = v87;

        v69 = v75;
        v89 = sub_10000668C(v86, v88, &v244);
        v88, v90, v91, v92, v93, v94, v95, v96;
        *(v72 + 14) = v89;
        _os_log_impl(&_mh_execute_header, v70, v229, "Updating smartList.account {smartList: %{public}s, account: %{public}s}", v72, 0x16u);
        swift_arrayDestroy();
      }

      [v69 setAccount:v68];
    }

    return;
  }

  v38 = [a1 sectionIDsToUndelete];
  sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
  v8 = sub_10018BA8C();
  v39 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  if ((v39 & 0xC000000000000001) != 0)
  {
    __CocoaSet.makeIterator()();
    Set.Iterator.init(_cocoa:)();
    v39 = v239;
    v40 = v240;
    v41 = v241;
    v42 = v242;
    v43 = v243;
  }

  else
  {
    v42 = 0;
    v97 = -1 << *(v39 + 32);
    v40 = (v39 + 56);
    v98 = ~v97;
    v99 = -v97;
    if (v99 < 64)
    {
      v100 = ~(-1 << v99);
    }

    else
    {
      v100 = -1;
    }

    v43 = v100 & *(v39 + 56);
    v41 = v98;
  }

  v101 = (v41 + 64) >> 6;
  v224 = v40;
  log = v39;
  v220 = v7;
  v222 = v101;
  while (v39 < 0)
  {
    if (!__CocoaSet.Iterator.next()() || (swift_dynamicCast(), v5 = v244, v9 = v42, v113 = v43, !v244))
    {
LABEL_55:
      sub_10001B860(v39);
      return;
    }

LABEL_45:
    sub_100686278(3u, v5, a4);
    if (v6)
    {
      sub_10001B860(v39);

      return;
    }

    v230 = v113;
    v115 = v114;
    [v115 setSmartList:v7];
    v116 = [v115 createResolutionTokenMapIfNecessary];
    if (qword_100936350 != -1)
    {
      swift_once();
    }

    v8 = qword_100974F28;
    if (*(qword_100974F28 + 16) && (v117 = sub_100005F4C(0x4449746E65726170, 0xE800000000000000), (v118 & 1) != 0))
    {
      v102 = *(v8[7].isa + 2 * v117 + 1);
    }

    else
    {
      if (qword_100936128 != -1)
      {
        swift_once();
      }

      v119 = type metadata accessor for Logger();
      sub_100006654(v119, qword_100946C50);
      v8 = Logger.logObject.getter();
      v120 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v8, v120))
      {
        v121 = swift_slowAlloc();
        v122 = swift_slowAlloc();
        v244 = v122;
        *v121 = 136315138;
        v102 = 0xE800000000000000;
        *(v121 + 4) = sub_10000668C(0x4449746E65726170, 0xE800000000000000, &v244);
        _os_log_impl(&_mh_execute_header, v8, v120, "Unknown ingestable key {key: %s}", v121, 0xCu);
        sub_10000607C(v122);
        v6 = 0;
      }

      else
      {

        v102 = 0xE800000000000000;
      }

      v7 = v220;
    }

    v103 = String._bridgeToObjectiveC()();
    v102, v104, v105, v106, v107, v108, v109, v110;
    [v116 updateForKey:v103];

    v42 = v9;
    v43 = v230;
    v40 = v224;
    v39 = log;
    v101 = v222;
  }

  v111 = v42;
  v112 = v43;
  v9 = v42;
  if (v43)
  {
LABEL_41:
    v113 = (v112 - 1) & v112;
    v5 = *(*(v39 + 48) + ((v9 << 9) | (8 * __clz(__rbit64(v112)))));
    if (!v5)
    {
      goto LABEL_55;
    }

    goto LABEL_45;
  }

  while (1)
  {
    v9 = v111 + 1;
    if (__OFADD__(v111, 1))
    {
      break;
    }

    if (v9 >= v101)
    {
      goto LABEL_55;
    }

    v112 = *(v40 + v9);
    ++v111;
    if (v112)
    {
      goto LABEL_41;
    }
  }

  __break(1u);
LABEL_88:
  swift_once();
LABEL_14:
  v44 = type metadata accessor for Logger();
  sub_100006654(v44, qword_10093DE68);
  v45 = v8;
  v46 = Logger.logObject.getter();
  v47 = static os_log_type_t.fault.getter();

  if (os_log_type_enabled(v46, v47))
  {
    v48 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    v50 = swift_slowAlloc();
    v244 = v50;
    *v48 = 138543618;
    v51 = [v45 objectID];
    *(v48 + 4) = v51;
    *v49 = v51;
    *(v48 + 12) = 2082;
    if (v5 == 2)
    {
      v52 = 0x694C746E65726170;
    }

    else
    {
      v52 = 0x6341746E65726170;
    }

    if (v5 == 2)
    {
      v53 = 0xEC00000044497473;
    }

    else
    {
      v53 = 0xEF4449746E756F63;
    }

    v54 = sub_10000668C(v52, v53, &v244);
    v53, v55, v56, v57, v58, v59, v60, v61;
    *(v48 + 14) = v54;
    _os_log_impl(&_mh_execute_header, v46, v47, "REMSmartListStorageCDIngestor: establishRelationship(onStorage:into cdSmartList:...) cannot proceed because storage.resolutionTokenMap is nil {objectID: %{public}@, key: %{public}s}", v48, 0x16u);
    sub_1000050A4(v49, &unk_100938E70, &unk_100797230);

    sub_10000607C(v50);
  }

  v62 = objc_opt_self();
  sub_1000060C8(0, &qword_10093A228, REMSmartListStorage_ptr);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v64 = String._bridgeToObjectiveC()();
  [v62 unexpectedNilPropertyWithClass:ObjCClassFromMetadata property:v64];

  swift_willThrow();
}

void sub_10023108C(void *a1, void *a2)
{
  v5 = type metadata accessor for REMJSONDeserializationError();
  if ([a2 shouldUpdateSectionsOrdering])
  {
    v7 = [a1 storeControllerManagedObjectContext];
    if (v7)
    {
      v51 = v7;
      v50 = a1;
      v8 = [a2 objectID];
      if (qword_100935D68 != -1)
      {
        swift_once();
      }

      v9 = sub_10024B964(v8, 0);
      type metadata accessor for REMCDSmartListSection();
      v10 = [objc_allocWithZone(NSFetchRequest) init];
      v11 = [swift_getObjCClassFromMetadata() entity];
      [v10 setEntity:v11];

      [v10 setAffectedStores:0];
      [v10 setPredicate:v9];

      [v10 setPropertiesToFetch:0];
      [v10 setRelationshipKeyPathsForPrefetching:0];
      sub_1000060C8(0, &qword_10093C980, NSSortDescriptor_ptr);
      isa = Array._bridgeToObjectiveC()().super.isa;
      [v10 setSortDescriptors:isa];

      v13 = NSManagedObjectContext.fetch<A>(_:)();
      if (v2)
      {
      }

      else
      {
        v14 = v13;
        v49 = v8;

        v15 = v50;
        v16 = [v50 sectionIDsOrderingAsData];
        if (v16)
        {
          v17 = v14;
          v18 = v16;
          v19 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
          v21 = v20;

          sub_1000060C8(0, &qword_10093C660, REMOrderedIdentifierMap_ptr);
          static REMJSONRepresentable.fromJSONData(_:)();
          sub_10001BBA0(v19, v21);
          v22 = REMOrderedIdentifierMap.reorder<A>(objects:)();
          v17, v23, v24, v25, v26, v27, v28, v29;

          v14 = v22;
          v15 = v50;
        }

        v30 = sub_100271000(v14);
        v31 = v14;
        v32 = v30;
        v31, v31, v33, v34, v35, v36, v37, v38;
        v39 = objc_allocWithZone(NSMutableOrderedSet);
        v40 = Array._bridgeToObjectiveC()().super.isa;
        v32, v41, v42, v43, v44, v45, v46, v47;
        v48 = [v39 initWithArray:v40];

        [v15 setSections:v48];
      }
    }
  }
}

unint64_t sub_100231990()
{
  result = qword_10093E0A0;
  if (!qword_10093E0A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10093E0A0);
  }

  return result;
}

unint64_t sub_100231A18()
{
  result = qword_10093E0B8;
  if (!qword_10093E0B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10093E0B8);
  }

  return result;
}

unint64_t sub_100231AA0()
{
  result = qword_10093E0D0;
  if (!qword_10093E0D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10093E0D0);
  }

  return result;
}

unint64_t sub_100231B28()
{
  result = qword_10093E0E8;
  if (!qword_10093E0E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10093E0E8);
  }

  return result;
}

uint64_t sub_100231B7C(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x80) == 0)
  {
    if (a1)
    {
      goto LABEL_10;
    }

    goto LABEL_7;
  }

  v3 = a2;
  KeyPath = swift_getKeyPath();
  sub_1002322A0(a1, v3);
  sub_1003EBD24(KeyPath, a1);

  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*_swiftEmptyArrayStorage.clientIdentity >= *&_swiftEmptyArrayStorage.clientIdentity[8] >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  if ((v3 & 1) == 0)
  {
LABEL_7:
    v5 = rem_currentRuntimeVersion();
    v6 = swift_getKeyPath();
    sub_1003EBD48(v6, v5);

    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*_swiftEmptyArrayStorage.clientIdentity >= *&_swiftEmptyArrayStorage.clientIdentity[8] >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  }

LABEL_10:

  return sub_10000C2B0();
}

id sub_100231CEC@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 sortOrder];
  *a2 = result;
  return result;
}

uint64_t sub_100231D34()
{
  sub_1000F5104(&unk_100939D60, &unk_1007959E0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1007953F0;
  sub_10012DF40();
  swift_getKeyPath();
  result = NSSortDescriptor.init<A, B>(keyPath:ascending:)();
  *(v0 + 32) = result;
  qword_100974C88 = v0;
  return result;
}

void sub_100231DAC(unint64_t *a1@<X0>, _TtC7remindd19RDXPCStorePerformer **a2@<X8>)
{
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5, v7);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a1;
  v11 = *a1 >> 62;
  if (v11)
  {
    v15 = _CocoaArrayWrapper.endIndex.getter();
    v40 = v6;
    v41 = v11;
    if (v15)
    {
      goto LABEL_3;
    }

LABEL_8:
    v14 = 0;
    goto LABEL_9;
  }

  v12 = *((*a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v40 = v6;
  v41 = 0;
  if (!v12)
  {
    goto LABEL_8;
  }

LABEL_3:
  if ((v10 & 0xC000000000000001) != 0)
  {
    goto LABEL_28;
  }

  if (!*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
  }

  for (i = *(v10 + 32); ; i = specialized _ArrayBuffer._getElementSlowPath(_:)())
  {
    v14 = i;
LABEL_9:
    v43 = v14;
    sub_1000F5104(&qword_10093E108, qword_10079C120);
    Optional.tryUnwrap(_:file:line:)();
    if (v2)
    {

      return;
    }

    v39 = a2;

    v16 = v42;
    v17 = [(RDXPCStorePerformer *)v42 account];
    v43 = v17;
    sub_1000F5104(&unk_100939D70, &qword_10079C100);
    Optional.tryUnwrap(_:file:line:)();

    v18 = v42;
    v42 = 0;
    v19 = [(RDXPCStorePerformer *)v18 remObjectIDWithError:&v42];
    v20 = v42;
    if (!v19)
    {
      v33 = v42;
      _convertNSErrorToError(_:)();

      swift_willThrow();
      return;
    }

    v21 = v19;
    v38 = v18;
    v22 = objc_opt_self();
    v23 = v20;
    v24 = [(RDXPCStorePerformer *)v16 reminderIdentifier];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    isa = UUID._bridgeToObjectiveC()().super.isa;
    (*v40->storeController)(v9, v5);
    v26 = [v22 objectIDWithUUID:isa];

    type metadata accessor for REMDueDateDeltaAlertCDIngestor();
    inited = swift_initStackObject();
    *(inited + 16) = v21;
    *(inited + 24) = v26;
    if (v41)
    {
      break;
    }

    v28 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v28)
    {
      goto LABEL_25;
    }

LABEL_14:
    v35 = inited;
    v40 = v16;
    v42 = &_swiftEmptyArrayStorage;
    v37 = v21;
    v36 = v26;
    specialized ContiguousArray.reserveCapacity(_:)();
    if (v28 < 0)
    {
      goto LABEL_31;
    }

    a2 = 0;
    v5 = v10 & 0xC000000000000001;
    v41 = v10 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      v29 = a2 + 1;
      if (__OFADD__(a2, 1))
      {
        break;
      }

      if (v5)
      {
        v30 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (a2 >= *(v41 + 16))
        {
          goto LABEL_30;
        }

        v30 = *(v10 + 8 * a2 + 32);
      }

      v31 = v30;
      v9 = sub_10075DC6C(v30);

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      a2 = (a2 + 1);
      if (v29 == v28)
      {

        v32 = v42;
        goto LABEL_26;
      }
    }

    __break(1u);
LABEL_28:
    ;
  }

  v34 = inited;
  v28 = _CocoaArrayWrapper.endIndex.getter();
  inited = v34;
  if (v28)
  {
    goto LABEL_14;
  }

LABEL_25:

  v32 = &_swiftEmptyArrayStorage;
LABEL_26:
  *v39 = v32;
}

double sub_1002322A0(uint64_t a1, char a2)
{
  if (a2 < 0)
  {
  }

  return result;
}

void *sub_1002322AC(unint64_t a1)
{
  v35 = type metadata accessor for UUID();
  v2 = *(v35 - 8);
  __chkstk_darwin(v35, v3);
  v34 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = _swiftEmptyDictionarySingleton;
  if (a1 >> 62)
  {
LABEL_24:
    v5 = _CocoaArrayWrapper.endIndex.getter();
    if (v5)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5)
    {
LABEL_3:
      v6 = 0;
      v32 = a1 & 0xFFFFFFFFFFFFFF8;
      v33 = a1 & 0xC000000000000001;
      v31 = v2 + 1;
      v7 = _swiftEmptyDictionarySingleton;
      v30 = xmmword_1007953F0;
      while (1)
      {
        if (v33)
        {
          v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v6 >= *(v32 + 16))
          {
            goto LABEL_21;
          }

          v9 = *(a1 + 8 * v6 + 32);
        }

        v10 = v9;
        v11 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
          __break(1u);
LABEL_21:
          __break(1u);
LABEL_22:
          __break(1u);
LABEL_23:
          __break(1u);
          goto LABEL_24;
        }

        v12 = a1;
        v13 = [v9 reminderIdentifier];
        v14 = v34;
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        v15 = objc_opt_self();
        isa = UUID._bridgeToObjectiveC()().super.isa;
        v2 = [v15 objectIDWithUUID:isa];

        (*v31)(v14, v35);
        a1 = sub_100393C74();
        v18 = v7[2];
        v19 = (v17 & 1) == 0;
        v20 = v18 + v19;
        if (__OFADD__(v18, v19))
        {
          goto LABEL_22;
        }

        v21 = v17;
        if (v7[3] < v20)
        {
          sub_10036A24C(v20, 1);
          v7 = v36;
          v22 = sub_100393C74();
          if ((v21 & 1) != (v23 & 1))
          {
            sub_1000F5104(&unk_1009436D0, &unk_100797F90);
            result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
            __break(1u);
            return result;
          }

          a1 = v22;
        }

        if (v21)
        {

          v8 = (v7[7] + 8 * a1);
          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          if (*((*v8 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v8 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v2 = *((*v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        }

        else
        {
          sub_1000F5104(&unk_100939D60, &unk_1007959E0);
          v24 = swift_allocObject();
          *(v24 + 16) = v30;
          *(v24 + 32) = v10;
          v7[(a1 >> 6) + 8] |= 1 << a1;
          *(v7[6] + 8 * a1) = v2;
          *(v7[7] + 8 * a1) = v24;
          v25 = v7[2];
          v26 = __OFADD__(v25, 1);
          v27 = v25 + 1;
          if (v26)
          {
            goto LABEL_23;
          }

          v7[2] = v27;
        }

        a1 = v12;
        ++v6;
        if (v11 == v5)
        {
          return v7;
        }
      }
    }
  }

  return _swiftEmptyDictionarySingleton;
}

unint64_t sub_100232618(unint64_t inited, int64_t a2, _TtC7remindd19RDXPCStorePerformer *a3)
{
  v6 = v3;
  v183 = type metadata accessor for UUID();
  v10 = *&v183[-1].shareRecordIDToRootRecordIDLock[2];
  __chkstk_darwin(v183, v11);
  v13 = (&v175 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = (inited >> 62);
  if (inited >> 62)
  {
    goto LABEL_79;
  }

  if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    do
    {
      v182 = (inited & 0xC000000000000001);
      if ((inited & 0xC000000000000001) != 0)
      {
        v15 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (!*((inited & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
LABEL_84:
          __break(1u);
LABEL_85:
          swift_once();
          goto LABEL_29;
        }

        v15 = *(inited + 32);
      }

      v179 = v15;
      if (v14)
      {
        v4 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v4 = *((inited & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v5 = &_swiftEmptyArrayStorage;
      v181 = v4;
      v178 = a3;
      LODWORD(v177) = a2;
      if (v4)
      {
        v185[0] = &_swiftEmptyArrayStorage;
        v14 = v185;
        specialized ContiguousArray.reserveCapacity(_:)();
        if ((v4 & 0x8000000000000000) == 0)
        {
          a2 = 0;
          v180 = (inited & 0xFFFFFFFFFFFFFF8);
          while (1)
          {
            a3 = (a2 + 1);
            if (__OFADD__(a2, 1))
            {
              break;
            }

            if (v182)
            {
              v16 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              if (a2 >= *v180->clientIdentity)
              {
                goto LABEL_78;
              }

              v16 = *(inited + 8 * a2 + 32);
            }

            v14 = v16;
            v186 = 0;
            v17 = [v16 remObjectIDWithError:&v186];
            if (!v17)
            {
              v122 = v186;
              _convertNSErrorToError(_:)();

              swift_willThrow();
LABEL_52:

              goto LABEL_53;
            }

            v18 = v17;
            v19 = v186;
            v20 = sub_1005E2A38(v18);
            if (v6)
            {
              goto LABEL_52;
            }

            v4 = v20;

            v14 = v185;
            specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
            v5 = *(v185[0] + 2);
            specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
            specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            specialized ContiguousArray._endMutation()();
            ++a2;
            if (a3 == v181)
            {
              v5 = v185[0];
              LOBYTE(a2) = v177;
              goto LABEL_21;
            }
          }

          __break(1u);
LABEL_76:

          v165 = v178;
          inited, v166, v167, v168, v169, v170, v171, v172;

LABEL_53:

          return v14;
        }

        goto LABEL_84;
      }

LABEL_21:
      v21 = *(v5 + 16);
      v4 = &_swiftEmptyArrayStorage;
      v182 = v5;
      if (v21)
      {
        v180 = v6;
        v185[0] = &_swiftEmptyArrayStorage;
        sub_100253258(0, v21, 0);
        v22 = v185[0];
        v23 = (v5 + 32);
        do
        {
          v24 = *v23;
          v25 = [v24 uuid];
          static UUID._unconditionallyBridgeFromObjectiveC(_:)();

          v185[0] = v22;
          v27 = *v22->clientIdentity;
          v26 = *&v22->clientIdentity[8];
          if (v27 >= v26 >> 1)
          {
            sub_100253258((v26 > 1), v27 + 1, 1);
            v22 = v185[0];
          }

          *v22->clientIdentity = v27 + 1;
          (*(v10 + 32))(v22 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v27, v13, v183);
          ++v23;
          --v21;
        }

        while (v21);
        v6 = v180;
        v4 = &_swiftEmptyArrayStorage;
        LOBYTE(a2) = v177;
      }

      else
      {
        v22 = &_swiftEmptyArrayStorage;
      }

      a3 = sub_100231B7C(v22, a2 & 1 | 0xFFFFFF80);
      v22, v28, v29, v30, v31, v32, v33, v34;
      v35 = sub_10075E638();
      v5 = type metadata accessor for REMCDDueDateDeltaAlert();
      a2 = [objc_allocWithZone(NSFetchRequest) init];
      v36 = [swift_getObjCClassFromMetadata() entity];
      [a2 setEntity:v36];

      [a2 setAffectedStores:0];
      v177 = a3;
      [a2 setPredicate:a3];
      v185[0] = _swiftEmptySetSingleton;

      sub_100391890(v37);
      v35, v38, v39, v40, v41, v42, v43, v44;
      v45 = v185[0];
      v46 = sub_1003FE04C(v185[0]);
      v183 = v6;
      v45, v47, v48, v49, v50, v51, v52, v53;
      isa = Array._bridgeToObjectiveC()().super.isa;
      v46, v55, v56, v57, v58, v59, v60, v61;
      [a2 setPropertiesToFetch:isa];
      v35, v62, v63, v64, v65, v66, v67, v68;

      if (qword_100935C78 != -1)
      {
        goto LABEL_85;
      }

LABEL_29:
      sub_10012DF40();
      v69 = Array._bridgeToObjectiveC()().super.isa;
      [a2 setSortDescriptors:v69];

      sub_1000F5104(&unk_100939D60, &unk_1007959E0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1007953F0;
      *(inited + 32) = swift_getKeyPath();
      v10 = inited + 32;
      v186 = v4;
      v14 = &v186;
      sub_100026EF4(0, 1, 0);
      v70 = v186;
      if ((inited & 0xC000000000000001) != 0)
      {
        v71 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (!*((inited & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_87;
        }

        v71 = *v10;
      }

      v180 = v5;
      v72 = dispatch thunk of AnyKeyPath._kvcKeyPathString.getter();
      if (!v73)
      {
        v185[0] = 0;
        v185[1] = 0xE000000000000000;
        _StringGuts.grow(_:)(46);
        v174._countAndFlagsBits = 0xD00000000000002CLL;
        v174._object = 0x80000001007EC120;
        String.append(_:)(v174);
        v184 = v71;
        sub_1000F5104(&qword_10093F560, &qword_10079C0F0);
        _print_unlocked<A, B>(_:_:)();
        result = _assertionFailure(_:_:file:line:flags:)();
        __break(1u);
        return result;
      }

      v4 = v72;
      v74 = v73;

      v76 = *v70->clientIdentity;
      v75 = *&v70->clientIdentity[8];
      if (v76 >= v75 >> 1)
      {
        sub_100026EF4((v75 > 1), v76 + 1, 1);
        v70 = v186;
      }

      *v70->clientIdentity = v76 + 1;
      v77 = v70 + 16 * v76;
      *(v77 + 4) = v4;
      *(v77 + 5) = v74;
      swift_setDeallocating();
      swift_arrayDestroy();
      v78 = Array._bridgeToObjectiveC()().super.isa;

      [a2 setRelationshipKeyPathsForPrefetching:v78];

      v14 = v178;
      v79 = v183;
      v80 = NSManagedObjectContext.fetch<A>(_:)();
      v6 = v79;
      if (v79)
      {

        v182, v88, v89, v90, v91, v92, v93, v94;
        return v14;
      }

      inited = v80;
      v95 = v182;
      if (v181 < 2)
      {
        if (*v182->clientIdentity)
        {
          v123 = *&v182->clientIdentity[16];
          v124 = v182;
          v125 = v123;
          v95 = v124;
        }

        else
        {
          v123 = 0;
        }

        v95, v81, v82, v83, v84, v85, v86, v87;
        v186 = v123;
        sub_1000F5104(&qword_10093E0F0, &qword_10079C0F8);
        Optional.tryUnwrap(_:file:line:)();
        v181 = a2;

        v10 = v185[0];
        v133 = [v179 account];
        v186 = v133;
        sub_1000F5104(&unk_100939D70, &qword_10079C100);
        Optional.tryUnwrap(_:file:line:)();
        a2 = 0;

        a3 = v185[0];
        v185[0] = 0;
        v134 = [(RDXPCStorePerformer *)a3 remObjectIDWithError:v185];
        v14 = v185[0];
        if (v134)
        {
          v5 = v134;
          if (inited >> 62)
          {
            goto LABEL_90;
          }

          v135 = *((inited & 0xFFFFFFFFFFFFFF8) + 0x10);
          goto LABEL_61;
        }

        v146 = v185[0];
        inited, v147, v148, v149, v150, v151, v152, v153;
        _convertNSErrorToError(_:)();

        swift_willThrow();
        return v14;
      }

      v181 = a2;
      v182, v81, v82, v83, v84, v85, v86, v87;
      v13 = sub_1002322AC(inited);
      inited, v96, v97, v98, v99, v100, v101, v102;
      sub_1000F5104(&qword_100943C90, &qword_10079C118);
      v103 = static _DictionaryStorage.copy(original:)();
      v14 = v103;
      inited = 0;
      v104 = 1 << v13->clientIdentity[16];
      v105 = -1;
      if (v104 < 64)
      {
        v105 = ~(-1 << v104);
      }

      a3 = &v13->storeProvider[2];
      v5 = v105 & *&v13->storeProvider[2];
      a2 = (v104 + 63) >> 6;
      v182 = (v103 + 64);
      v183 = v13;
      if (v5)
      {
        while (1)
        {
          v13 = 0;
          v106 = __clz(__rbit64(v5));
          v5 &= v5 - 1;
LABEL_48:
          v10 = v106 | (inited << 6);
          v109 = *(*&v183->clientIdentity[32] + 8 * v10);
          v185[0] = *(*&v183->clientIdentity[40] + 8 * v10);
          v110 = v185[0];
          v4 = v109;

          sub_100231DAC(v185, &v186);
          v111 = v110;
          v6 = 0;
          v111, v112, v113, v114, v115, v116, v117, v118;
          *(&v182->super.isa + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) = (*(&v182->super.isa + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) | (1 << v10));
          *(&v14[6]->super.isa + v10) = v4;
          *(&v14[7]->super.isa + v10) = v186;
          v119 = v14[2];
          v120 = __OFADD__(v119, 1);
          v121 = (&v119->super.isa + 1);
          if (v120)
          {
            break;
          }

          v14[2] = v121;
          if (!v5)
          {
            goto LABEL_43;
          }
        }

        __break(1u);
LABEL_87:
        __break(1u);
        while (1)
        {
          __break(1u);
LABEL_89:
          __break(1u);
LABEL_90:
          v135 = _CocoaArrayWrapper.endIndex.getter();
LABEL_61:
          if (!v135)
          {
            break;
          }

          v180 = v5;
          v182 = a3;
          v185[0] = &_swiftEmptyArrayStorage;
          v136 = v14;
          v176 = v10;
          v178 = v10;
          v14 = v185;
          specialized ContiguousArray.reserveCapacity(_:)();
          if (v135 < 0)
          {
            __break(1u);
          }

          v10 = 0;
          a3 = (inited & 0xC000000000000001);
          v183 = (inited & 0xFFFFFFFFFFFFFF8);
          while (1)
          {
            v5 = v10 + 1;
            if (__OFADD__(v10, 1))
            {
              break;
            }

            v137 = a2;
            if (a3)
            {
              v14 = specialized _ArrayBuffer._getElementSlowPath(_:)();
              a2 = v181;
            }

            else
            {
              a2 = v181;
              if (v10 >= *v183->clientIdentity)
              {
                goto LABEL_89;
              }

              v14 = *(inited + 8 * v10 + 32);
            }

            sub_10075DC6C(v14);
            if (v137)
            {
              goto LABEL_76;
            }

            a2 = 0;

            v14 = v185;
            specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
            specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
            specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            specialized ContiguousArray._endMutation()();
            ++v10;
            if (v5 == v135)
            {
              inited, v138, v139, v140, v141, v142, v143, v144;
              v145 = v185[0];
              v10 = v176;
              a3 = v182;
              v5 = v180;
              goto LABEL_74;
            }
          }
        }

        v154 = v14;
        v155 = v10;
        inited, v156, v157, v158, v159, v160, v161, v162;
        v145 = &_swiftEmptyArrayStorage;
LABEL_74:
        sub_1000F5104(&qword_10093E0F8, &qword_10079C108);
        v163 = swift_initStackObject();
        *(v163 + 16) = xmmword_100791300;
        *(v163 + 32) = v10;
        *(v163 + 40) = v145;
        v164 = v10;
        v14 = sub_10038DD24(v163);
        swift_setDeallocating();
        sub_1002333D4(v163 + 32);

        return v14;
      }

LABEL_43:
      v107 = inited;
      while (1)
      {
        inited = v107 + 1;
        if (__OFADD__(v107, 1))
        {
          break;
        }

        if (inited >= a2)
        {

          v183, v126, v127, v128, v129, v130, v131, v132;
          return v14;
        }

        v108 = *(&a3->super.isa + inited);
        ++v107;
        if (v108)
        {
          v13 = 0;
          v106 = __clz(__rbit64(v108));
          v5 = (v108 - 1) & v108;
          goto LABEL_48;
        }
      }

      __break(1u);
LABEL_78:
      __break(1u);
LABEL_79:
      ;
    }

    while (_CocoaArrayWrapper.endIndex.getter());
  }

  return sub_10038DD24(&_swiftEmptyArrayStorage);
}

uint64_t sub_1002333D4(uint64_t a1)
{
  v2 = sub_1000F5104(&qword_10093E100, &qword_10079C110);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10023343C(uint64_t a1)
{
  v288 = a1;
  v321 = sub_1000F5104(&unk_100939D90, "8\n\r");
  __chkstk_darwin(v321, v2);
  *&v319 = &v286 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4, v5);
  *&v320 = &v286 - v6;
  v7 = sub_1000F5104(&qword_10093E160, &qword_10079C168);
  __chkstk_darwin(v7 - 8, v8);
  v305 = &v286 - v9;
  v311 = type metadata accessor for REMCustomSmartListFilterDescriptor.FilterLists();
  v310 = *(v311 - 8);
  __chkstk_darwin(v311, v10);
  v296 = &v286 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12, v13);
  v300 = &v286 - v14;
  v15 = sub_1000F5104(&qword_10093E168, &qword_10079C170);
  __chkstk_darwin(v15 - 8, v16);
  v315 = &v286 - v17;
  v307 = type metadata accessor for REMCustomSmartListFilterDescriptor.FilterHashtags();
  v314 = *(v307 - 8);
  __chkstk_darwin(v307, v18);
  v295 = (&v286 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v20, v21);
  v304 = &v286 - v22;
  v23 = sub_1000F5104(&qword_10093E170, &qword_10079C178);
  __chkstk_darwin(v23 - 8, v24);
  v306 = &v286 - v25;
  v313 = type metadata accessor for REMCustomSmartListFilterDescriptor.FilterLocation();
  v312 = *(v313 - 8);
  __chkstk_darwin(v313, v26);
  v297 = &v286 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28, v29);
  v303 = &v286 - v30;
  v308 = type metadata accessor for REMCustomSmartListFilterDescriptor.FilterDate.OptionalDateRange();
  *&v318 = *(v308 - 8);
  __chkstk_darwin(v308, v31);
  v289 = &v286 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_1000F5104(&qword_10093E178, &qword_10079C180);
  __chkstk_darwin(v33 - 8, v34);
  v291 = &v286 - v35;
  v36 = sub_1000F5104(&qword_10093E180, &qword_10079C188);
  __chkstk_darwin(v36, v37);
  v301 = &v286 - v38;
  v39 = sub_1000F5104(&qword_10093E188, &qword_10079C190);
  __chkstk_darwin(v39 - 8, v40);
  v42 = &v286 - v41;
  v43 = sub_1000F5104(&qword_10093E190, &unk_10079C198);
  __chkstk_darwin(v43 - 8, v44);
  v287 = &v286 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v46, v47);
  v290 = &v286 - v48;
  __chkstk_darwin(v49, v50);
  v293 = &v286 - v51;
  __chkstk_darwin(v52, v53);
  v55 = &v286 - v54;
  v56 = type metadata accessor for REMCustomSmartListFilterDescriptor.Operation();
  v57 = *(v56 - 8);
  __chkstk_darwin(v56, v58);
  v299 = &v286 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v60, v61);
  v63 = &v286 - v62;
  v64 = _s16DateFilterActionOMa(0);
  __chkstk_darwin(v64 - 8, v65);
  v302 = &v286 - ((v66 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v67, v68);
  v316 = &v286 - v69;
  v323 = &_swiftEmptyArrayStorage;
  REMCustomSmartListFilterDescriptor.operation.getter();
  REMCustomSmartListFilterDescriptor.date.getter();
  v70 = type metadata accessor for REMCustomSmartListFilterDescriptor.FilterDate();
  v292 = *(v70 - 8);
  v71 = *(v292 + 48);
  v294 = v70;
  v298 = v71;
  v72 = (v71)(v55, 1);
  sub_1000050A4(v55, &qword_10093E190, &unk_10079C198);
  v317 = v1;
  REMCustomSmartListFilterDescriptor.time.getter();
  v73 = type metadata accessor for REMCustomSmartListFilterDescriptor.FilterTime();
  v74 = (*(*(v73 - 8) + 48))(v42, 1, v73);
  sub_1000050A4(v42, &qword_10093E188, &qword_10079C190);
  v75 = *(v36 + 48);
  v286 = v36;
  v76 = *(v36 + 64);
  v77 = v301;
  (*(v57 + 32))(v301, v63, v56);
  v77[v75] = v72 != 1;
  v78 = v318;
  v77[v76] = v74 != 1;
  v309 = v57;
  if (v72 != 1)
  {
    v79 = (*(v57 + 88))(v77, v56);
    v301 = v56;
    v80 = v307;
    v81 = v306;
    v82 = v302;
    v83 = v294;
    v84 = v293;
    if (v79 != enum case for REMCustomSmartListFilterDescriptor.Operation.and(_:))
    {
      if (v79 != enum case for REMCustomSmartListFilterDescriptor.Operation.or(_:))
      {
        goto LABEL_151;
      }

      if (v74 != 1)
      {
        v85 = v287;
        REMCustomSmartListFilterDescriptor.date.getter();
        if (v298(v85, 1, v83) == 1)
        {
          sub_1000050A4(v85, &qword_10093E190, &unk_10079C198);
          v86 = v80;
          v87 = v316;
        }

        else
        {
          v104 = v292;
          v105 = (*(v292 + 88))(v85, v83);
          v106 = v85;
          v107 = v105;
          v108 = enum case for REMCustomSmartListFilterDescriptor.FilterDate.noDate(_:);
          (*(v104 + 8))(v106, v83);
          v102 = v107 == v108;
          v86 = v80;
          v87 = v316;
          if (v102)
          {
            v94 = v318;
            v109 = *(v318 + 56);
            v110 = v316;
            v111 = 4;
LABEL_25:
            v91 = v308;
            v109(v110, v111, 4, v308);
            v93 = v315;
            goto LABEL_26;
          }
        }

        v94 = v318;
        v109 = *(v318 + 56);
        v110 = v87;
        v111 = 3;
        goto LABEL_25;
      }
    }

    REMCustomSmartListFilterDescriptor.date.getter();
    if (v298(v84, 1, v83) == 1)
    {
      sub_1000050A4(v84, &qword_10093E190, &unk_10079C198);
      v90 = v291;
      v91 = v308;
      (*(v318 + 56))(v291, 1, 1, v308);
    }

    else
    {
      v95 = v291;
      REMCustomSmartListFilterDescriptor.FilterDate.range(now:)();
      v90 = v95;
      (*(v292 + 8))(v84, v83);
      v94 = v318;
      v96 = v95;
      v91 = v308;
      if ((*(v318 + 48))(v96, 1, v308) != 1)
      {
        v103 = v90;
        v87 = v316;
        (*(v94 + 32))(v316, v103, v91);
        (*(v94 + 56))(v87, 0, 4, v91);
        v93 = v315;
        v86 = v80;
        goto LABEL_26;
      }
    }

    sub_1000050A4(v90, &qword_10093E178, &qword_10079C180);
    v97 = v290;
    REMCustomSmartListFilterDescriptor.date.getter();
    v98 = v298(v97, 1, v83);
    v93 = v315;
    if (v98 == 1)
    {
      sub_1000050A4(v97, &qword_10093E190, &unk_10079C198);
      v86 = v80;
    }

    else
    {
      v99 = v292;
      v100 = (*(v292 + 88))(v97, v83);
      v101 = enum case for REMCustomSmartListFilterDescriptor.FilterDate.noDate(_:);
      (*(v99 + 8))(v97, v83);
      v102 = v100 == v101;
      v91 = v308;
      v86 = v80;
      if (v102)
      {
        v94 = v318;
        v87 = v316;
        (*(v318 + 56))(v316, 2, 4, v308);
LABEL_26:
        v92 = v301;
        goto LABEL_27;
      }
    }

    v94 = v318;
    v87 = v316;
    (*(v318 + 56))(v316, 3, 4, v91);
    goto LABEL_26;
  }

  v88 = v316;
  if (v74 == 1)
  {
    v89 = 1;
  }

  else
  {
    v89 = 3;
  }

  v91 = v308;
  (*(v78 + 56))(v316, v89, 4, v308);
  v92 = v56;
  (*(v57 + 8))(v77, v56);
  v87 = v88;
  v86 = v307;
  v93 = v315;
  v81 = v306;
  v94 = v318;
  v82 = v302;
LABEL_27:
  sub_100237038(v87, v82);
  v112 = (*(v94 + 48))(v82, 4, v91);
  if (v112 > 1)
  {
    if (v112 == 2)
    {
      KeyPath = swift_getKeyPath();
      sub_1003F71EC(KeyPath);
    }

    else
    {
      if (v112 != 3)
      {
        v122 = [objc_opt_self() predicateWithValue:1];
        goto LABEL_36;
      }

      v113 = swift_getKeyPath();
      sub_1003EA620(v113);
    }

LABEL_36:
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*v323->clientIdentity >= *&v323->clientIdentity[8] >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      v93 = v315;
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v87 = v316;
    goto LABEL_39;
  }

  if (!v112)
  {
    v114 = v318;
    v115 = v86;
    v116 = v81;
    v117 = v92;
    v118 = v289;
    (*(v318 + 32))(v289, v82, v91);
    v119 = sub_10023662C();
    sub_100271454(v119);
    v87 = v316;
    v120 = v118;
    v92 = v117;
    v81 = v116;
    v86 = v115;
    (*(v114 + 8))(v120, v91);
  }

LABEL_39:
  sub_10023709C(v87);
  v123 = REMCustomSmartListFilterDescriptor.priorities.getter();
  v131 = v311;
  if (v123)
  {
    v132 = *(v123 + 16);
    v133 = 32;
    v134 = v132;
    do
    {
      v135 = v134;
      if (!v134)
      {
        break;
      }

      v136 = *(v123 + v133);
      v133 += 8;
      --v134;
    }

    while (v136);
    v137 = 32;
    v138 = *(v123 + 16);
    do
    {
      v139 = v138;
      if (!v138)
      {
        break;
      }

      v140 = *(v123 + v137);
      v137 += 8;
      --v138;
    }

    while (v140 != 1);
    v141 = 32;
    v142 = *(v123 + 16);
    do
    {
      v143 = v142;
      if (!v142)
      {
        break;
      }

      v144 = *(v123 + v141);
      v141 += 8;
      --v142;
    }

    while (v144 != 2);
    v145 = 32;
    while (v132)
    {
      v146 = *(v123 + v145);
      v145 += 8;
      --v132;
      if (v146 == 3)
      {
        v123, v124, v125, v126, v127, v128, v129, v130;
        if (v139)
        {
          if (v143)
          {
            v147 = swift_getKeyPath();
            v148 = 1;
            goto LABEL_63;
          }

          v229 = v92;
          sub_1000F5104(&qword_10093B980, qword_10079A3D0);
          inited = swift_initStackObject();
          v318 = xmmword_100791340;
          *(inited + 16) = xmmword_100791340;
          v231 = swift_getKeyPath();
          v232 = sub_1003EA64C(v231, 6);

          *(inited + 32) = v232;
          v233 = swift_initStackObject();
          *(v233 + 16) = v318;
          v234 = swift_getKeyPath();
          v235 = sub_1003EA64C(v234, 1);

          *(v233 + 32) = v235;
          v236 = swift_getKeyPath();
          v237 = sub_1003EAA60(v236, 4);

          *(v233 + 40) = v237;
          *(inited + 40) = sub_10000C2B0();
          sub_100025060(inited);
          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          v92 = v229;
          if (*v323->clientIdentity < *&v323->clientIdentity[8] >> 1)
          {
LABEL_109:
            v86 = v307;
            v93 = v315;
            v81 = v306;
            goto LABEL_66;
          }

LABEL_116:
          v86 = v307;
          v81 = v306;
LABEL_117:
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
LABEL_65:
          v93 = v315;
LABEL_66:
          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          goto LABEL_67;
        }

        if (!v143)
        {
          v240 = v92;
          sub_1000F5104(&qword_10093B980, qword_10079A3D0);
          v241 = swift_initStackObject();
          *(v241 + 16) = xmmword_100791340;
          v242 = swift_getKeyPath();
          v243 = sub_1003EA64C(v242, 1);

          *(v241 + 32) = v243;
          v244 = swift_getKeyPath();
          v245 = sub_1003EAA60(v244, 4);

          *(v241 + 40) = v245;
          sub_10000C2B0();
          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          v92 = v240;
          if (*v323->clientIdentity < *&v323->clientIdentity[8] >> 1)
          {
            goto LABEL_109;
          }

          goto LABEL_116;
        }

        v150 = swift_getKeyPath();
        sub_100236DCC(v150, 1, 5);
LABEL_64:

        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*v323->clientIdentity >= *&v323->clientIdentity[8] >> 1)
        {
          goto LABEL_117;
        }

        goto LABEL_65;
      }
    }

    v123, v124, v125, v126, v127, v128, v129, v130;
    if (v139)
    {
      v147 = swift_getKeyPath();
      if (v143)
      {
        v148 = 5;
      }

      else
      {
        v148 = 6;
      }

LABEL_63:
      sub_1003EA64C(v147, v148);
      goto LABEL_64;
    }

    if (v143)
    {
      v149 = swift_getKeyPath();
      sub_100390F14(v149, 5);
      goto LABEL_64;
    }

    v93 = v315;
    if (v135)
    {
      v239 = swift_getKeyPath();
      sub_100390F14(v239, 0);

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*v323->clientIdentity < *&v323->clientIdentity[8] >> 1)
      {
        goto LABEL_66;
      }

      goto LABEL_117;
    }
  }

LABEL_67:
  v151 = REMCustomSmartListFilterDescriptor.flagged.getter();
  if (v151 != 2)
  {
    v152 = v151;
    v153 = swift_getKeyPath();
    if (v152)
    {
      sub_1003EA64C(v153, 1);
    }

    else
    {
      sub_100390F14(v153, 0);
    }

    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*v323->clientIdentity >= *&v323->clientIdentity[8] >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      v93 = v315;
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  }

  REMCustomSmartListFilterDescriptor.location.getter();
  v154 = v312;
  v155 = v313;
  if ((*(v312 + 48))(v81, 1, v313) != 1)
  {
    v157 = v310;
    v158 = v92;
    v159 = v303;
    (*(v154 + 32))(v303, v81, v155);
    v160 = v297;
    (*(v154 + 16))(v297, v159, v155);
    v161 = (*(v154 + 88))(v160, v155);
    if (v161 != enum case for REMCustomSmartListFilterDescriptor.FilterLocation.vehicle(_:))
    {
      if (v161 == enum case for REMCustomSmartListFilterDescriptor.FilterLocation.location(_:))
      {
        (*(v154 + 8))(v297, v155);
      }

      else if (v161 != enum case for REMCustomSmartListFilterDescriptor.FilterLocation.any(_:))
      {
        if (v161 != enum case for REMCustomSmartListFilterDescriptor.FilterLocation.noLocation(_:))
        {
          goto LABEL_151;
        }

        v238 = [objc_opt_self() predicateWithValue:1];
        goto LABEL_81;
      }
    }

    v162 = swift_getKeyPath();
    sub_1003F7214(v162, 0);

LABEL_81:
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    v92 = v158;
    if (*v323->clientIdentity >= *&v323->clientIdentity[8] >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      v93 = v315;
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    (*(v312 + 8))(v303, v313);
    v156 = v157;
    goto LABEL_84;
  }

  sub_1000050A4(v81, &qword_10093E170, &qword_10079C178);
  v156 = v310;
LABEL_84:
  REMCustomSmartListFilterDescriptor.hashtags.getter();
  v163 = v314;
  if ((*(v314 + 48))(v93, 1, v86) == 1)
  {
    sub_1000050A4(v93, &qword_10093E168, &qword_10079C170);
    goto LABEL_95;
  }

  (*(v163 + 32))(v304, v93, v86);
  v164 = v295;
  (*(v163 + 16))();
  v165 = (*(v163 + 88))(v164, v86);
  if (v165 == enum case for REMCustomSmartListFilterDescriptor.FilterHashtags.hashtags(_:))
  {
    (*(v163 + 96))(v164, v86);
    *v164, v166, v167, v168, v169, v170, v171, v172;
    v164[1], v173, v174, v175, v176, v177, v178, v179;
    v180 = sub_1000F5104(&qword_10093E198, qword_10079C1A8);
    (*(v309 + 8))(v164 + *(v180 + 64), v92);
    goto LABEL_91;
  }

  if (v165 == enum case for REMCustomSmartListFilterDescriptor.FilterHashtags.untagged(_:))
  {
    v181 = swift_getKeyPath();
    sub_1003F7218(v181, 0);
LABEL_92:

    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*v323->clientIdentity >= *&v323->clientIdentity[8] >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    (*(v314 + 8))(v304, v86);
LABEL_95:
    v183 = v305;
    REMCustomSmartListFilterDescriptor.lists.getter();
    if ((*(v156 + 48))(v183, 1, v131) == 1)
    {
      sub_1000050A4(v183, &qword_10093E160, &qword_10079C168);
LABEL_124:
      v246 = v299;
      goto LABEL_125;
    }

    v184 = v300;
    (*(v156 + 32))(v300, v183, v131);
    v185 = v296;
    (*(v156 + 16))(v296, v184, v131);
    if ((*(v156 + 88))(v185, v131) != enum case for REMCustomSmartListFilterDescriptor.FilterLists.lists(_:))
    {
      _diagnoseUnexpectedEnumCase<A>(type:)();
      __break(1u);
LABEL_148:
      _diagnoseUnexpectedEnumCase<A>(type:)();
      __break(1u);
      goto LABEL_151;
    }

    (*(v156 + 96))(v185, v131);
    v193 = *v185;
    v194 = *(v185 + 1);
    if (*v185 >> 62)
    {
      if (_CocoaArrayWrapper.endIndex.getter())
      {
        v194, v186, v187, v188, v189, v190, v191, v192;
        v194 = _CocoaArrayWrapper.endIndex.getter();
        if (v194)
        {
          goto LABEL_101;
        }

        goto LABEL_120;
      }
    }

    else if (*((v193 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      *(v185 + 1), v186, v187, v188, v189, v190, v191, v192;
      v194 = *((v193 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v194)
      {
LABEL_101:
        v301 = v92;
        v322 = &_swiftEmptyArrayStorage;
        specialized ContiguousArray.reserveCapacity(_:)();
        if ((v194 & 0x8000000000000000) == 0)
        {
          v202 = objc_opt_self();
          v203 = 0;
          v319 = xmmword_100791340;
          v204 = v320;
          do
          {
            if ((v193 & 0xC000000000000001) != 0)
            {
              v205 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              v205 = *&v193->clientIdentity[8 * v203 + 16];
            }

            v206 = v205;
            v207 = [v205 uuid];
            static UUID._unconditionallyBridgeFromObjectiveC(_:)();

            v208 = type metadata accessor for UUID();
            (*(*(v208 - 8) + 56))(v204, 0, 1, v208);
            sub_1000F5104(&unk_100938E80, &unk_1007959D0);
            v209 = swift_allocObject();
            *(v209 + 16) = v319;
            ++v203;
            *(v209 + 56) = &type metadata for String;
            *(v209 + 32) = 0x6564692E7473696CLL;
            *(v209 + 40) = 0xEF7265696669746ELL;
            *(v209 + 88) = v321;
            v210 = sub_1000103CC((v209 + 64));
            sub_10018E470(v204, v210);
            v211 = String._bridgeToObjectiveC()();
            isa = Array._bridgeToObjectiveC()().super.isa;
            v209, v213, v214, v215, v216, v217, v218, v219;
            v220 = [v202 predicateWithFormat:v211 argumentArray:isa];

            sub_1000050A4(v204, &unk_100939D90, "8\n\r");
            specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
            specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
            specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            specialized ContiguousArray._endMutation()();
          }

          while (v194 != v203);
          v193, v221, v222, v223, v224, v225, v226, v227;
          v228 = v322;
          v131 = v311;
          v156 = v310;
          v92 = v301;
          goto LABEL_121;
        }

        __break(1u);
        goto LABEL_141;
      }

LABEL_120:
      v193, v195, v196, v197, v198, v199, v200, v201;
      v228 = &_swiftEmptyArrayStorage;
LABEL_121:
      sub_100025060(v228);
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*v323->clientIdentity >= *&v323->clientIdentity[8] >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      (*(v156 + 8))(v300, v131);
      goto LABEL_124;
    }

    v193, v186, v187, v188, v189, v190, v191, v192;
    if (!(v194 >> 62))
    {
      v249 = *((v194 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v249)
      {
        v301 = v92;
        v322 = &_swiftEmptyArrayStorage;
        specialized ContiguousArray.reserveCapacity(_:)();
        goto LABEL_132;
      }

LABEL_145:
      (*(v156 + 8))(v300, v131);
      v194, v279, v280, v281, v282, v283, v284, v285;
      goto LABEL_124;
    }

LABEL_141:
    if (_CocoaArrayWrapper.endIndex.getter())
    {
      v301 = v92;
      v278 = _CocoaArrayWrapper.endIndex.getter();
      if (!v278)
      {
LABEL_137:
        v194, v269, v270, v271, v272, v273, v274, v275;
        sub_10000C2B0();
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        v276 = v311;
        v277 = v310;
        v246 = v299;
        if (*v323->clientIdentity >= *&v323->clientIdentity[8] >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        (*(v277 + 8))(v300, v276);
        v92 = v301;
LABEL_125:
        REMCustomSmartListFilterDescriptor.operation.getter();
        v247 = (*(v309 + 88))(v246, v92);
        if (v247 == enum case for REMCustomSmartListFilterDescriptor.Operation.and(_:))
        {
          return sub_10000C2B0();
        }

        if (v247 == enum case for REMCustomSmartListFilterDescriptor.Operation.or(_:))
        {
          return sub_100025060(v323);
        }

        goto LABEL_148;
      }

      v249 = v278;
      v322 = &_swiftEmptyArrayStorage;
      specialized ContiguousArray.reserveCapacity(_:)();
      if (v249 < 0)
      {
        __break(1u);
        goto LABEL_145;
      }

LABEL_132:
      v250 = objc_opt_self();
      v251 = 0;
      v320 = xmmword_100791340;
      v252 = v319;
      do
      {
        if ((v194 & 0xC000000000000001) != 0)
        {
          v253 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v253 = *(v194 + 8 * v251 + 32);
        }

        v254 = v253;
        v255 = [v253 uuid];
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        v256 = type metadata accessor for UUID();
        (*(*(v256 - 8) + 56))(v252, 0, 1, v256);
        sub_1000F5104(&unk_100938E80, &unk_1007959D0);
        v257 = swift_allocObject();
        *(v257 + 16) = v320;
        ++v251;
        *(v257 + 56) = &type metadata for String;
        *(v257 + 32) = 0x6564692E7473696CLL;
        *(v257 + 40) = 0xEF7265696669746ELL;
        *(v257 + 88) = v321;
        v258 = sub_1000103CC((v257 + 64));
        sub_10018E470(v252, v258);
        v259 = String._bridgeToObjectiveC()();
        v260 = Array._bridgeToObjectiveC()().super.isa;
        v257, v261, v262, v263, v264, v265, v266, v267;
        v268 = [v250 predicateWithFormat:v259 argumentArray:v260];

        sub_1000050A4(v252, &unk_100939D90, "8\n\r");
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
      }

      while (v249 != v251);
      goto LABEL_137;
    }

    goto LABEL_145;
  }

  if (v165 == enum case for REMCustomSmartListFilterDescriptor.FilterHashtags.any(_:))
  {
LABEL_91:
    v182 = swift_getKeyPath();
    sub_1003F7214(v182, 0);
    goto LABEL_92;
  }

  _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
LABEL_151:
  result = _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
  return result;
}

id sub_1002353EC@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 priority];
  *a2 = result;
  return result;
}

id sub_100235434@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 displayDateIsAllDay];
  *a2 = result;
  return result;
}

void *sub_10023547C()
{
  v1 = v0;
  PredicateType = type metadata accessor for REMCustomSmartListFilterDescriptor.PostFetchPredicateType();
  v3 = *(PredicateType - 8);
  __chkstk_darwin(PredicateType, v4);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7, v8);
  v11 = &v24 - v10;
  (*(v3 + 16))(&v24 - v10, v1, PredicateType, v9);
  static REMCustomSmartListFilterDescriptor.PostFetchPredicateType.priorities.getter();
  sub_100237128();
  v12 = dispatch thunk of static Equatable.== infix(_:_:)();
  v13 = *(v3 + 8);
  v13(v6, PredicateType);
  if ((v12 & 1) == 0)
  {
    static REMCustomSmartListFilterDescriptor.PostFetchPredicateType.flagged.getter();
    v14 = dispatch thunk of static Equatable.== infix(_:_:)();
    v13(v6, PredicateType);
    if ((v14 & 1) == 0)
    {
      static REMCustomSmartListFilterDescriptor.PostFetchPredicateType.date.getter();
      v17 = dispatch thunk of static Equatable.== infix(_:_:)();
      v13(v6, PredicateType);
      if (v17)
      {
        v13(v11, PredicateType);
        if (qword_100935C80 != -1)
        {
          swift_once();
        }

        v16 = qword_10093E110;
      }

      else
      {
        static REMCustomSmartListFilterDescriptor.PostFetchPredicateType.partOfDay.getter();
        v18 = dispatch thunk of static Equatable.== infix(_:_:)();
        v13(v6, PredicateType);
        if (v18)
        {
          v13(v11, PredicateType);
          if (qword_100935C90 != -1)
          {
            swift_once();
          }

          v16 = qword_10093E120;
        }

        else
        {
          static REMCustomSmartListFilterDescriptor.PostFetchPredicateType.location.getter();
          v19 = dispatch thunk of static Equatable.== infix(_:_:)();
          v13(v6, PredicateType);
          if (v19)
          {
            v13(v11, PredicateType);
            if (qword_100935CA0 != -1)
            {
              swift_once();
            }

            v16 = qword_10093E130;
          }

          else
          {
            static REMCustomSmartListFilterDescriptor.PostFetchPredicateType.hashtags.getter();
            v20 = dispatch thunk of static Equatable.== infix(_:_:)();
            v13(v6, PredicateType);
            if (v20)
            {
              v13(v11, PredicateType);
              if (qword_100935CB0 != -1)
              {
                swift_once();
              }

              v16 = qword_10093E140;
            }

            else
            {
              static REMCustomSmartListFilterDescriptor.PostFetchPredicateType.lists.getter();
              v21 = dispatch thunk of static Equatable.== infix(_:_:)();
              v13(v6, PredicateType);
              if ((v21 & 1) == 0)
              {
                static REMCustomSmartListFilterDescriptor.PostFetchPredicateType.completed.getter();
                v23 = dispatch thunk of static Equatable.== infix(_:_:)();
                v13(v6, PredicateType);
                if ((v23 & 1) == 0)
                {
                  static REMCustomSmartListFilterDescriptor.PostFetchPredicateType.account.getter();
                  dispatch thunk of static Equatable.== infix(_:_:)();
                  v13(v6, PredicateType);
                  v13(v11, PredicateType);
                  return _swiftEmptySetSingleton;
                }

                goto LABEL_3;
              }

              v13(v11, PredicateType);
              if (qword_100935CC0 != -1)
              {
                swift_once();
              }

              v16 = qword_10093E150;
            }
          }
        }
      }

      return v16;
    }
  }

LABEL_3:
  v13(v11, PredicateType);
  sub_1000F5104(&unk_100939D60, &unk_1007959E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1007953F0;
  *(inited + 32) = swift_getKeyPath();
  v16 = sub_1001A61EC(inited);
  swift_setDeallocating();
  swift_arrayDestroy();
  return v16;
}

void sub_100235A44()
{
  v1 = v0;
  PredicateType = type metadata accessor for REMCustomSmartListFilterDescriptor.PostFetchPredicateType();
  v3 = *(PredicateType - 8);
  __chkstk_darwin(PredicateType, v4);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7, v8);
  v11 = &v23 - v10;
  (*(v3 + 16))(&v23 - v10, v1, PredicateType, v9);
  static REMCustomSmartListFilterDescriptor.PostFetchPredicateType.priorities.getter();
  sub_100237128();
  v12 = dispatch thunk of static Equatable.== infix(_:_:)();
  v13 = *(v3 + 8);
  v13(v6, PredicateType);
  if (v12 & 1) != 0 || (static REMCustomSmartListFilterDescriptor.PostFetchPredicateType.flagged.getter(), v14 = dispatch thunk of static Equatable.== infix(_:_:)(), v13(v6, PredicateType), (v14) || (static REMCustomSmartListFilterDescriptor.PostFetchPredicateType.completed.getter(), v15 = dispatch thunk of static Equatable.== infix(_:_:)(), v13(v6, PredicateType), (v15))
  {
    v13(v11, PredicateType);
    return;
  }

  static REMCustomSmartListFilterDescriptor.PostFetchPredicateType.date.getter();
  v16 = dispatch thunk of static Equatable.== infix(_:_:)();
  v13(v6, PredicateType);
  if (v16)
  {
    v13(v11, PredicateType);
    if (qword_100935C88 == -1)
    {
      goto LABEL_20;
    }

    goto LABEL_23;
  }

  static REMCustomSmartListFilterDescriptor.PostFetchPredicateType.partOfDay.getter();
  v17 = dispatch thunk of static Equatable.== infix(_:_:)();
  v13(v6, PredicateType);
  if (v17)
  {
    v13(v11, PredicateType);
    if (qword_100935C98 == -1)
    {
      goto LABEL_20;
    }

    goto LABEL_23;
  }

  static REMCustomSmartListFilterDescriptor.PostFetchPredicateType.location.getter();
  v18 = dispatch thunk of static Equatable.== infix(_:_:)();
  v13(v6, PredicateType);
  if (v18)
  {
    v13(v11, PredicateType);
    if (qword_100935CA8 == -1)
    {
      goto LABEL_20;
    }

    goto LABEL_23;
  }

  static REMCustomSmartListFilterDescriptor.PostFetchPredicateType.hashtags.getter();
  v19 = dispatch thunk of static Equatable.== infix(_:_:)();
  v13(v6, PredicateType);
  if (v19)
  {
    v13(v11, PredicateType);
    if (qword_100935CB8 == -1)
    {
      goto LABEL_20;
    }

    goto LABEL_23;
  }

  static REMCustomSmartListFilterDescriptor.PostFetchPredicateType.lists.getter();
  v20 = dispatch thunk of static Equatable.== infix(_:_:)();
  v13(v6, PredicateType);
  if (v20)
  {
    v13(v11, PredicateType);
    if (qword_100935CC8 == -1)
    {
LABEL_20:

      return;
    }

LABEL_23:
    swift_once();
    goto LABEL_20;
  }

  static REMCustomSmartListFilterDescriptor.PostFetchPredicateType.account.getter();
  v21 = dispatch thunk of static Equatable.== infix(_:_:)();
  v13(v6, PredicateType);
  v13(v11, PredicateType);
  if (v21)
  {
    sub_1000F5104(&unk_100939D60, &unk_1007959E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1007953F0;
    *(inited + 32) = swift_getKeyPath();
    sub_1001A61EC(inited);
    swift_setDeallocating();
    swift_arrayDestroy();
  }
}

void *sub_100235FB8(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v20 = a2;
  PredicateType = type metadata accessor for REMCustomSmartListFilterDescriptor.PostFetchPredicateType();
  v4 = *(PredicateType - 8);
  __chkstk_darwin(PredicateType, v5);
  v7 = v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!(&_swiftEmptyArrayStorage >> 62))
  {
    goto LABEL_2;
  }

LABEL_15:
  if (!_CocoaArrayWrapper.endIndex.getter())
  {
LABEL_2:
    v8 = _swiftEmptySetSingleton;
    goto LABEL_3;
  }

  v8 = sub_100391354(&_swiftEmptyArrayStorage);
LABEL_3:
  v21 = v8;
  v9 = 1 << *(a1 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(a1 + 56);
  v12 = (v9 + 63) >> 6;
  v19[1] = v4 + 16;

  v13 = 0;
  if (v11)
  {
    while (1)
    {
      v14 = v13;
LABEL_11:
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v16 = (*(v4 + 16))(v7, *(a1 + 48) + *(v4 + 72) * (v15 | (v14 << 6)), PredicateType);
      v17 = v20(v16);
      sub_10035585C(v17);
      (*(v4 + 8))(v7, PredicateType);
      if (!v11)
      {
        goto LABEL_7;
      }
    }
  }

  while (1)
  {
LABEL_7:
    v14 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      __break(1u);
      goto LABEL_15;
    }

    if (v14 >= v12)
    {
      break;
    }

    v11 = *(a1 + 56 + 8 * v14);
    ++v13;
    if (v11)
    {
      v13 = v14;
      goto LABEL_11;
    }
  }

  return v21;
}

uint64_t sub_1002361DC(uint64_t a1, uint64_t *a2)
{
  sub_1000F5104(&unk_100939D60, &unk_1007959E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100796900;
  *(inited + 32) = swift_getKeyPath();
  *(inited + 40) = swift_getKeyPath();
  v4 = sub_1001A61EC(inited);
  swift_setDeallocating();
  result = swift_arrayDestroy();
  *a2 = v4;
  return result;
}

uint64_t sub_100236318(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  sub_1000F5104(&unk_100939D60, &unk_1007959E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1007953F0;
  *(inited + 32) = swift_getKeyPath();
  v5 = sub_1001A61EC(inited);
  swift_setDeallocating();
  result = swift_arrayDestroy();
  *a3 = v5;
  return result;
}

_TtC7remindd19RDXPCStorePerformer *sub_1002363B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v22 = a1;
  v23 = a2;
  v5 = type metadata accessor for REMCustomSmartListFilterDescriptor.Operation();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5, v7);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for REMHashtagLabelDataView.Operation();
  v11 = *(v10 - 8);
  v13 = __chkstk_darwin(v10, v12);
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *v3;
  (*(v6 + 16))(v9, a3, v5, v13);
  v17 = (*(v6 + 88))(v9, v5);
  if (v17 == enum case for REMCustomSmartListFilterDescriptor.Operation.and(_:))
  {
    v18 = &enum case for REMHashtagLabelDataView.Operation.all(_:);
LABEL_5:
    v19.n128_f64[0] = (*(v11 + 104))(v15, *v18, v10);
    v20 = sub_100584A24(v22, v23, v15, v16, v19);
    (*(v11 + 8))(v15, v10);
    return v20;
  }

  if (v17 == enum case for REMCustomSmartListFilterDescriptor.Operation.or(_:))
  {
    v18 = &enum case for REMHashtagLabelDataView.Operation.some(_:);
    goto LABEL_5;
  }

  result = _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
  return result;
}

void sub_1002365DC()
{
  sub_10058478C(*v0);
  if (!v1)
  {
    v3 = v2;
    sub_1005841B8(v2);
    v3, v4, v5, v6, v7, v8, v9, v10;
  }
}

_TtC7remindd19RDXPCStorePerformer *sub_10023662C()
{
  v0 = type metadata accessor for Date();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0, v2);
  *&v71 = v66 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4, v5);
  v7 = v66 - v6;
  v8 = sub_1000F5104(&qword_100938C18, &qword_1007957A0);
  v9 = v8 - 8;
  __chkstk_darwin(v8, v10);
  v12 = v66 - v11;
  v13 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  __chkstk_darwin(v13 - 8, v14);
  v16 = v66 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17, v18);
  v20 = v66 - v19;
  __chkstk_darwin(v21, v22);
  v24 = v66 - v23;
  REMCustomSmartListFilterDescriptor.FilterDate.OptionalDateRange.lowerBound.getter();
  REMCustomSmartListFilterDescriptor.FilterDate.OptionalDateRange.upperBound.getter();
  v25 = *(v9 + 56);
  sub_10012F7FC(v24, v12);
  sub_10012F7FC(v20, &v12[v25]);
  v26 = *(v1 + 48);
  LODWORD(v9) = v26(v12, 1, v0);
  v27 = v26(&v12[v25], 1, v0);
  v28 = v27;
  if (v9 == 1)
  {
    if (v27 == 1)
    {
      return &_swiftEmptyArrayStorage;
    }

    else
    {
      (*(v1 + 32))(v7, &v12[v25], v0);
      sub_1000F5104(&qword_10093B980, qword_10079A3D0);
      v29 = swift_allocObject();
      *(v29 + 16) = xmmword_100791300;
      KeyPath = swift_getKeyPath();
      (*(v1 + 16))(v16, v7, v0);
      (*(v1 + 56))(v16, 0, 1, v0);
      v44 = sub_1003EA414(KeyPath, v16);

      *(v29 + 32) = v44;
      (*(v1 + 8))(v7, v0);
    }
  }

  else
  {
    v30 = *(v1 + 32);
    v30(v7, v12, v0);
    v70 = v7;
    if (v28 == 1)
    {
      sub_1000F5104(&qword_10093B980, qword_10079A3D0);
      inited = swift_initStackObject();
      v71 = xmmword_100791340;
      *(inited + 16) = xmmword_100791340;
      v32 = swift_getKeyPath();
      v33 = sub_1003EAA4C(v32);

      *(inited + 32) = v33;
      v34 = swift_getKeyPath();
      Date.startOfDay.getter();
      v35 = *(v1 + 56);
      v35(v16, 0, 1, v0);
      v36 = sub_100390EF0(v34, v16);

      *(inited + 40) = v36;
      v37 = sub_10000C2B0();
      v29 = swift_allocObject();
      *(v29 + 16) = xmmword_100791300;
      v38 = swift_initStackObject();
      *(v38 + 16) = v71;
      *(v38 + 32) = v37;
      v39 = swift_getKeyPath();
      v40 = v70;
      (*(v1 + 16))(v16, v70, v0);
      v35(v16, 0, 1, v0);
      v41 = v37;
      v42 = sub_1003EA208(v39, v16);

      *(v38 + 40) = v42;
      *(v29 + 32) = sub_100025060(v38);

      (*(v1 + 8))(v40, v0);
    }

    else
    {
      v30(v71, &v12[v25], v0);
      sub_1000F5104(&qword_10093B980, qword_10079A3D0);
      v45 = swift_initStackObject();
      v69 = xmmword_100791340;
      *(v45 + 16) = xmmword_100791340;
      v46 = swift_getKeyPath();
      v47 = sub_1003EAA4C(v46);

      *(v45 + 32) = v47;
      v48 = swift_getKeyPath();
      Date.startOfDay.getter();
      v49 = *(v1 + 56);
      v66[1] = v1 + 56;
      v67 = v49;
      v49(v16, 0, 1, v0);
      v50 = sub_100390EF0(v48, v16);

      *(v45 + 40) = v50;
      v51 = sub_10000C2B0();
      v29 = swift_allocObject();
      *(v29 + 16) = xmmword_100791300;
      v52 = swift_initStackObject();
      v68 = v52;
      *(v52 + 16) = v69;
      *(v52 + 32) = v51;
      v53 = swift_initStackObject();
      *(v53 + 16) = v69;
      v54 = swift_getKeyPath();
      v55 = v7;
      v56 = v54;
      v66[0] = *(v1 + 16);
      (v66[0])(v16, v55, v0);
      v57 = v67;
      v67(v16, 0, 1, v0);
      *&v69 = v51;
      v58 = sub_1003EA208(v56, v16);

      *(v53 + 32) = v58;
      v59 = swift_getKeyPath();
      v60 = v71;
      (v66[0])(v16, v71, v0);
      v57(v16, 0, 1, v0);
      v61 = sub_1003EA414(v59, v16);

      *(v53 + 40) = v61;
      v62 = sub_10000C2B0();
      v63 = v68;
      *(v68 + 40) = v62;
      *(v29 + 32) = sub_100025060(v63);

      v64 = *(v1 + 8);
      v64(v60, v0);
      v64(v70, v0);
    }
  }

  return v29;
}

id sub_100236DCC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1000F5104(&unk_100938E80, &unk_1007959D0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_100791340;

  v6 = dispatch thunk of AnyKeyPath._kvcKeyPathString.getter();
  if (v7)
  {
    v8 = v6;
    v9 = v7;

    *(v5 + 56) = &type metadata for String;
    *(v5 + 32) = v8;
    *(v5 + 40) = v9;
    sub_1000F5104(&qword_10093E1A0, &qword_10079D450);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_100791340;
    *(v10 + 32) = a2;
    *(v10 + 40) = a3;
    *(v5 + 88) = sub_1000F5104(&qword_10093E1A8, qword_10079C310);
    *(v5 + 64) = v10;
    v11 = String._bridgeToObjectiveC()();
    isa = Array._bridgeToObjectiveC()().super.isa;
    v5, v13, v14, v15, v16, v17, v18, v19;
    v20 = [objc_opt_self() predicateWithFormat:v11 argumentArray:isa];

    return v20;
  }

  else
  {
    _StringGuts.grow(_:)(46);
    v22._object = 0x80000001007EC120;
    v22._countAndFlagsBits = 0xD00000000000002CLL;
    String.append(_:)(v22);
    sub_1000F5104(&unk_100939F10, &qword_100797F30);
    _print_unlocked<A, B>(_:_:)();
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t _s16DateFilterActionOMa(uint64_t a1)
{
  result = qword_10093E220;
  if (!qword_10093E220)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100237038(uint64_t a1, uint64_t a2)
{
  v4 = _s16DateFilterActionOMa(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10023709C(uint64_t a1)
{
  v2 = _s16DateFilterActionOMa(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_100237128()
{
  result = qword_100943DD0;
  if (!qword_100943DD0)
  {
    type metadata accessor for REMCustomSmartListFilterDescriptor.PostFetchPredicateType();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100943DD0);
  }

  return result;
}

uint64_t *sub_100237190(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v11 = *a2;
    *a1 = *a2;
    a1 = (v11 + ((v5 + 16) & ~v5));

    return a1;
  }

  v6 = *(a3 - 8);
  v7 = type metadata accessor for REMCustomSmartListFilterDescriptor.FilterDate.OptionalDateRange();
  v8 = *(v7 - 8);
  if (!(*(v8 + 48))(a2, 4, v7))
  {
    (*(v8 + 16))(a1, a2, v7);
    (*(v8 + 56))(a1, 0, 4, v7);
    return a1;
  }

  v9 = *(v6 + 64);

  return memcpy(a1, a2, v9);
}

uint64_t sub_1002372F8(uint64_t a1)
{
  v2 = type metadata accessor for REMCustomSmartListFilterDescriptor.FilterDate.OptionalDateRange();
  v5 = *(v2 - 8);
  result = (*(v5 + 48))(a1, 4, v2);
  if (!result)
  {
    v4 = *(v5 + 8);

    return v4(a1, v2);
  }

  return result;
}

void *sub_1002373C8(void *a1, const void *a2, uint64_t a3)
{
  v6 = type metadata accessor for REMCustomSmartListFilterDescriptor.FilterDate.OptionalDateRange();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a2, 4, v6))
  {
    v8 = *(*(a3 - 8) + 64);

    return memcpy(a1, a2, v8);
  }

  else
  {
    (*(v7 + 16))(a1, a2, v6);
    (*(v7 + 56))(a1, 0, 4, v6);
    return a1;
  }
}

void *sub_1002374F4(void *a1, void *a2, uint64_t a3)
{
  v6 = type metadata accessor for REMCustomSmartListFilterDescriptor.FilterDate.OptionalDateRange();
  v7 = *(v6 - 8);
  v8 = *(v7 + 48);
  v9 = v8(a1, 4, v6);
  v10 = v8(a2, 4, v6);
  if (v9)
  {
    if (!v10)
    {
      (*(v7 + 16))(a1, a2, v6);
      (*(v7 + 56))(a1, 0, 4, v6);
      return a1;
    }
  }

  else
  {
    if (!v10)
    {
      (*(v7 + 24))(a1, a2, v6);
      return a1;
    }

    (*(v7 + 8))(a1, v6);
  }

  v11 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v11);
}

void *sub_100237688(void *a1, const void *a2, uint64_t a3)
{
  v6 = type metadata accessor for REMCustomSmartListFilterDescriptor.FilterDate.OptionalDateRange();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a2, 4, v6))
  {
    v8 = *(*(a3 - 8) + 64);

    return memcpy(a1, a2, v8);
  }

  else
  {
    (*(v7 + 32))(a1, a2, v6);
    (*(v7 + 56))(a1, 0, 4, v6);
    return a1;
  }
}

void *sub_1002377B4(void *a1, void *a2, uint64_t a3)
{
  v6 = type metadata accessor for REMCustomSmartListFilterDescriptor.FilterDate.OptionalDateRange();
  v7 = *(v6 - 8);
  v8 = *(v7 + 48);
  v9 = v8(a1, 4, v6);
  v10 = v8(a2, 4, v6);
  if (v9)
  {
    if (!v10)
    {
      (*(v7 + 32))(a1, a2, v6);
      (*(v7 + 56))(a1, 0, 4, v6);
      return a1;
    }
  }

  else
  {
    if (!v10)
    {
      (*(v7 + 40))(a1, a2, v6);
      return a1;
    }

    (*(v7 + 8))(a1, v6);
  }

  v11 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v11);
}

uint64_t sub_100237970(uint64_t a1)
{
  v2 = type metadata accessor for REMCustomSmartListFilterDescriptor.FilterDate.OptionalDateRange();
  v3 = *(*(v2 - 8) + 48);

  return v3(a1, 4, v2);
}

uint64_t sub_1002379D8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for REMCustomSmartListFilterDescriptor.FilterDate.OptionalDateRange();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, 4, v4);
}

uint64_t sub_100237A48(uint64_t a1)
{
  result = type metadata accessor for REMCustomSmartListFilterDescriptor.FilterDate.OptionalDateRange();
  if (v2 <= 0x3F)
  {
    swift_initEnumMetadataSinglePayload();
    return 0;
  }

  return result;
}

Swift::Int sub_100237AC0()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1 + 1);
  return Hasher._finalize()();
}

Swift::Int sub_100237B38(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v2 + 1);
  return Hasher._finalize()();
}

uint64_t sub_100237B7C@<X0>(unsigned __int16 *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1002387D8(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_100237BB8()
{
  v1 = 0xD000000000000020;
  v2 = *v0;
  v3 = 0xD000000000000028;
  if (v2 != 3)
  {
    v3 = 0xD000000000000020;
  }

  if (v2 == 2)
  {
    v4 = 0xD000000000000020;
  }

  else
  {
    v4 = v3;
  }

  if (*v0)
  {
    v1 = 0xD000000000000026;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_100237C40()
{
  v1 = [v0 operationTypeRawValue];
  if (v1 >= 6)
  {
    return 5;
  }

  else
  {
    return (0x40302010005uLL >> (8 * v1));
  }
}

id sub_100237C88()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1, v3);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v8 = __chkstk_darwin(v6, v7).n128_u64[0];
  v10 = &v16 - v9;
  result = [v0 listIdentifier];
  if (result)
  {
    v12 = result;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    (*(v2 + 32))(v10, v5, v1);
    if (sub_100237C40() < 4u)
    {
      v13 = objc_opt_self();
      isa = UUID._bridgeToObjectiveC()().super.isa;
      v15 = [v13 objectIDWithUUID:isa];

      (*(v2 + 8))(v10, v1);
      return v15;
    }

    else
    {
      (*(v2 + 8))(v10, v1);
      return 0;
    }
  }

  return result;
}

uint64_t sub_100237ED4()
{
  v1 = v0;
  v2 = type metadata accessor for UUID();
  v289 = *(v2 - 8);
  v290 = v2;
  __chkstk_darwin(v2, v3);
  v287 = &v286 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5, v6);
  v288 = &v286 - v7;
  v8 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  __chkstk_darwin(v8, v9);
  v11 = &v286 - v10;
  v292[0] = 0;
  v292[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(38);
  v292[1], v12, v13, v14, v15, v16, v17, v18;
  v292[0] = 0xD000000000000021;
  v292[1] = 0x80000001007F1A10;
  v19 = [v0 objectID];
  v20 = [v19 description];
  v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v23 = v22;

  v24._countAndFlagsBits = v21;
  v24._object = v23;
  String.append(_:)(v24);
  v23, v25, v26, v27, v28, v29, v30, v31;

  v32._countAndFlagsBits = 8069182;
  v32._object = 0xE300000000000000;
  String.append(_:)(v32);
  v33 = v292[0];
  v34 = v292[1];
  v292[0] = 0;
  v292[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(27);
  v292[1], v35, v36, v37, v38, v39, v40, v41;
  v292[0] = 0xD000000000000017;
  v292[1] = 0x80000001007F1A40;
  v42 = sub_100237C40();
  v43 = 0xE700000000000000;
  v44 = 0x6E776F6E6B6E75;
  if (v42 == 4)
  {
    v44 = 0xD000000000000020;
    v43 = 0x80000001007F1920;
  }

  if (v42 == 3)
  {
    v44 = 0xD000000000000028;
    v43 = 0x80000001007F1950;
  }

  v45 = 0x80000001007F19E0;
  v46 = 0x80000001007F19B0;
  v47 = 0xD000000000000026;
  if (v42 != 1)
  {
    v47 = 0xD000000000000020;
    v46 = 0x80000001007F1980;
  }

  if (v42)
  {
    v48 = v47;
  }

  else
  {
    v48 = 0xD000000000000020;
  }

  if (v42)
  {
    v45 = v46;
  }

  if (v42 <= 2)
  {
    v49 = v48;
  }

  else
  {
    v49 = v44;
  }

  if (v42 <= 2)
  {
    v50 = v45;
  }

  else
  {
    v50 = v43;
  }

  v51 = v50;
  String.append(_:)(*&v49);
  v50, v52, v53, v54, v55, v56, v57, v58;
  v59._countAndFlagsBits = 8236;
  v59._object = 0xE200000000000000;
  String.append(_:)(v59);
  v60 = v292[0];
  v61 = v292[1];
  v292[0] = v33;
  v292[1] = v34;

  v62._countAndFlagsBits = v60;
  v62._object = v61;
  String.append(_:)(v62);
  v34, v63, v64, v65, v66, v67, v68, v69;
  v61, v70, v71, v72, v73, v74, v75, v76;
  v77 = v292[0];
  v78 = v292[1];
  strcpy(v292, "priority: ");
  BYTE3(v292[1]) = 0;
  HIDWORD(v292[1]) = -369098752;
  v79 = [v1 priorityRawValue];
  if (v79 == 30)
  {
    v82 = 0xE700000000000000;
    v81 = 0x72656B636F6C62;
  }

  else
  {
    v80 = v79 == 20;
    if (v79 == 20)
    {
      v81 = 1751607656;
    }

    else
    {
      v81 = 0x6D756964656DLL;
    }

    if (v80)
    {
      v82 = 0xE400000000000000;
    }

    else
    {
      v82 = 0xE600000000000000;
    }
  }

  v83 = v82;
  String.append(_:)(*&v81);
  v82, v84, v85, v86, v87, v88, v89, v90;
  v91._countAndFlagsBits = 8236;
  v91._object = 0xE200000000000000;
  String.append(_:)(v91);
  v92 = v292[0];
  v93 = v292[1];
  v292[0] = v77;
  v292[1] = v78;

  v94._countAndFlagsBits = v92;
  v94._object = v93;
  String.append(_:)(v94);
  v78, v95, v96, v97, v98, v99, v100, v101;
  v93, v102, v103, v104, v105, v106, v107, v108;
  v110 = v292[0];
  v109 = v292[1];
  v292[0] = 0;
  v292[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(18);
  v292[1], v111, v112, v113, v114, v115, v116, v117;
  strcpy(v292, "creationDate: ");
  HIBYTE(v292[1]) = -18;
  v118 = [v1 creationDate];
  if (v118)
  {
    v119 = v118;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v120 = type metadata accessor for Date();
    (*(*(v120 - 8) + 56))(v11, 0, 1, v120);
  }

  else
  {
    v121 = type metadata accessor for Date();
    (*(*(v121 - 8) + 56))(v11, 1, 1, v121);
  }

  v122 = Optional.descriptionOrNil.getter();
  v124 = v123;
  sub_1001AAD5C(v11);
  v125._countAndFlagsBits = v122;
  v125._object = v124;
  String.append(_:)(v125);
  v124, v126, v127, v128, v129, v130, v131, v132;
  v133._countAndFlagsBits = 8236;
  v133._object = 0xE200000000000000;
  String.append(_:)(v133);
  v134 = v292[0];
  v135 = v292[1];
  v292[0] = v110;
  v292[1] = v109;

  v136._countAndFlagsBits = v134;
  v136._object = v135;
  String.append(_:)(v136);
  v109, v137, v138, v139, v140, v141, v142, v143;
  v135, v144, v145, v146, v147, v148, v149, v150;
  v151 = v292[0];
  v152 = v292[1];
  v292[0] = 0;
  v292[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(17);
  v292[1], v153, v154, v155, v156, v157, v158, v159;
  strcpy(v292, "isCompleted: ");
  HIWORD(v292[1]) = -4864;
  v160 = [v1 isCompleted];
  v161 = v160 == 0;
  if (v160)
  {
    v162 = 1702195828;
  }

  else
  {
    v162 = 0x65736C6166;
  }

  if (v161)
  {
    v163 = 0xE500000000000000;
  }

  else
  {
    v163 = 0xE400000000000000;
  }

  v164 = v163;
  String.append(_:)(*&v162);
  v163, v165, v166, v167, v168, v169, v170, v171;
  v172._countAndFlagsBits = 8236;
  v172._object = 0xE200000000000000;
  String.append(_:)(v172);
  v173 = v292[0];
  v174 = v292[1];
  v292[0] = v151;
  v292[1] = v152;

  v175._countAndFlagsBits = v173;
  v175._object = v174;
  String.append(_:)(v175);
  v152, v176, v177, v178, v179, v180, v181, v182;
  v174, v183, v184, v185, v186, v187, v188, v189;
  v191 = v292[0];
  v190 = v292[1];
  v292[0] = 0;
  v292[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(22);
  v292[1], v192, v193, v194, v195, v196, v197, v198;
  v292[0] = 0xD000000000000012;
  v292[1] = 0x80000001007F1A60;
  v199 = [v1 templateIdentifier];
  if (v199)
  {
    v200 = v287;
    v201 = v199;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v203 = v288;
    v202 = v289;
    v204 = v200;
    v205 = v290;
    (*(v289 + 32))(v288, v204, v290);
    v206 = objc_opt_self();
    isa = UUID._bridgeToObjectiveC()().super.isa;
    v208 = [v206 objectIDWithUUID:isa];

    (*(v202 + 8))(v203, v205);
  }

  else
  {
    v208 = 0;
  }

  v291 = v208;
  sub_1000F5104(&unk_10093AF40, &unk_100795790);
  v209 = Optional.descriptionOrNil.getter();
  v211 = v210;

  v212._countAndFlagsBits = v209;
  v212._object = v211;
  String.append(_:)(v212);
  v211, v213, v214, v215, v216, v217, v218, v219;
  v220._countAndFlagsBits = 8236;
  v220._object = 0xE200000000000000;
  String.append(_:)(v220);
  v221 = v292[0];
  v222 = v292[1];
  v292[0] = v191;
  v292[1] = v190;

  v223._countAndFlagsBits = v221;
  v223._object = v222;
  String.append(_:)(v223);
  v190, v224, v225, v226, v227, v228, v229, v230;
  v222, v231, v232, v233, v234, v235, v236, v237;
  v239 = v292[0];
  v238 = v292[1];
  v292[0] = 0;
  v292[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(16);
  v292[1], v240, v241, v242, v243, v244, v245, v246;
  strcpy(v292, "listObjectID: ");
  HIBYTE(v292[1]) = -18;
  v247 = sub_100237C88();
  v291 = v247;
  v248 = Optional.descriptionOrNil.getter();
  v250 = v249;

  v251._countAndFlagsBits = v248;
  v251._object = v250;
  String.append(_:)(v251);
  v250, v252, v253, v254, v255, v256, v257, v258;
  v259 = v292[0];
  v260 = v292[1];
  v292[0] = v239;
  v292[1] = v238;

  v261._countAndFlagsBits = v259;
  v261._object = v260;
  String.append(_:)(v261);
  v238, v262, v263, v264, v265, v266, v267, v268;
  v260, v269, v270, v271, v272, v273, v274, v275;
  v276 = v292[1];

  v277._countAndFlagsBits = 125;
  v277._object = 0xE100000000000000;
  String.append(_:)(v277);
  v276, v278, v279, v280, v281, v282, v283, v284;
  return v292[0];
}

unint64_t sub_100238784()
{
  result = qword_10093E258;
  if (!qword_10093E258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10093E258);
  }

  return result;
}

uint64_t sub_1002387D8(unsigned __int16 a1)
{
  if (a1 >= 6u)
  {
    return 5;
  }

  else
  {
    return (0x40302010005uLL >> (8 * a1));
  }
}

id REMCDSmartListSection.parentCDObject.getter()
{
  v1 = [v0 smartList];

  return v1;
}

uint64_t static REMCDSmartListSection.cdEntityName.getter(uint64_t a1, uint64_t a2)
{
  sub_100238948();
  v2 = [swift_getObjCClassFromMetadata() cdEntityName];
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

unint64_t sub_100238948()
{
  result = qword_10093CC10;
  if (!qword_10093CC10)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10093CC10);
  }

  return result;
}

Swift::Int __swiftcall REMCDSmartListSection.parentEffectiveMinimumSupportedVersion()()
{
  v1 = [v0 smartList];
  if (!v1)
  {
    return kREMSupportedVersionUnset;
  }

  v2 = v1;
  v3 = [v1 effectiveMinimumSupportedVersion];

  return v3;
}

uint64_t static REMCDSmartListSection.keyPathsForValuesAffectingEffectiveMinimumSupportedVersion()()
{
  v0 = sub_1001A5660(&off_1008E2790);
  sub_100034610(&unk_1008E27B0);
  return v0;
}

id REMCDSmartListSection.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = type metadata accessor for REMCDSmartListSection();
  v5 = objc_msgSendSuper2(&v7, "initWithEntity:insertIntoManagedObjectContext:", a1, a2);

  return v5;
}

id REMCDSmartListSection.__deallocating_deinit(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for REMCDSmartListSection();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_100238C34()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_10093E290);
  v1 = sub_100006654(v0, qword_10093E290);
  if (qword_100936428 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_100974FC0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

id sub_100238CFC()
{
  result = [objc_opt_self() housekeepingingActivityScheduler];
  qword_10093E2A8 = result;
  return result;
}

uint64_t sub_100238D38()
{
  v1 = v0;
  v2 = type metadata accessor for Date();
  v86 = *(v2 - 8);
  __chkstk_darwin(v2, v3);
  v83 = &v80 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5, v6);
  v8 = &v80 - v7;
  v9 = type metadata accessor for OSSignpostID();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9, v11);
  v13 = &v80 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  static os_signpost_type_t.begin.getter();
  if (qword_100935CD8 != -1)
  {
    swift_once();
  }

  v14 = qword_10093E2A8;
  static OSSignpostID.exclusive.getter();
  v88 = v14;
  os_signpost(_:dso:log:name:signpostID:)();
  v87 = *(v10 + 8);
  v89 = v10 + 8;
  v87(v13, v9);
  v15 = *(v1 + 24);
  v90 = *(v1 + 16);
  v16 = qword_100935CD0;

  if (v16 != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  v18 = sub_100006654(v17, qword_10093E290);

  v82 = v18;
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.default.getter();
  v15, v21, v22, v23, v24, v25, v26, v27;
  if (os_log_type_enabled(v19, v20))
  {
    v28 = swift_slowAlloc();
    v81 = v2;
    v84 = v8;
    v29 = v9;
    v30 = v28;
    v31 = swift_slowAlloc();
    v91 = v31;
    *v30 = 136446210;
    v32 = v90;
    *(v30 + 4) = sub_10000668C(v90, v15, &v91);
    _os_log_impl(&_mh_execute_header, v19, v20, "[%{public}s] start execute()", v30, 0xCu);
    sub_10000607C(v31);

    v9 = v29;
    v8 = v84;
    v2 = v81;
  }

  else
  {

    v32 = v90;
  }

  v33 = Date.init()();
  v92[0] = 0xD00000000000003ALL;
  v92[1] = 0x80000001007F1C10;
  memset(&v92[2], 0, 24);
  v93 = 0;
  v94 = 0x4000;
  __chkstk_darwin(v33, v34);
  *(&v80 - 4) = v1;
  *(&v80 - 3) = v32;
  *(&v80 - 2) = v15;
  *(&v80 - 1) = v8;
  v35 = v85;
  sub_100014A64(v92, sub_10023A638, (&v80 - 6));
  if (v35)
  {
    v15, v36, v37, v38, v39, v40, v41, v42;
    (*(v86 + 8))(v8, v2);
    static os_signpost_type_t.end.getter();
    static OSSignpostID.exclusive.getter();
    os_signpost(_:dso:log:name:signpostID:)();
    v43 = v13;
    v44 = v9;
  }

  else
  {
    v84 = v8;
    v85 = v9;
    v45 = v86;
    v46 = v83;
    (*(v86 + 16))(v83, v8, v2);

    v47 = v2;
    v48 = Logger.logObject.getter();
    v49 = static os_log_type_t.default.getter();
    v15, v50, v51, v52, v53, v54, v55, v56;
    if (os_log_type_enabled(v48, v49))
    {
      v57 = v46;
      v58 = v45;
      v59 = swift_slowAlloc();
      v82 = swift_slowAlloc();
      v91 = v82;
      *v59 = 136446466;
      v60 = sub_10000668C(v90, v15, &v91);
      LODWORD(v90) = v49;
      v61 = v60;
      v15, v62, v63, v64, v65, v66, v67, v68;
      *(v59 + 4) = v61;
      *(v59 + 12) = 2048;
      Date.rem_elapsedInMilliseconds.getter();
      v70 = v69;
      v71 = *(v58 + 8);
      v71(v57, v47);
      *(v59 + 14) = v70;
      _os_log_impl(&_mh_execute_header, v48, v90, "[%{public}s] end execute(), elapsedSeconds: %f ms", v59, 0x16u);
      sub_10000607C(v82);
    }

    else
    {

      v15, v72, v73, v74, v75, v76, v77, v78;
      v71 = *(v45 + 8);
      v71(v46, v2);
    }

    v71(v84, v47);
    static os_signpost_type_t.end.getter();
    static OSSignpostID.exclusive.getter();
    os_signpost(_:dso:log:name:signpostID:)();
    v43 = v13;
    v44 = v85;
  }

  return (v87)(v43, v44);
}

void sub_100239364(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v37 = a3;
  v38 = a4;
  v9 = type metadata accessor for Date();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9, v11);
  v13 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = objc_autoreleasePoolPush();
  v15 = a2[13];
  v14 = a2[14];
  sub_10000F61C(a2 + 10, v15);
  v16 = (*(*(v14 + 8) + 8))(v15) / 86400.0;
  if (COERCE__INT64(fabs(v16)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (v16 <= -1.0)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (v16 >= 1.84467441e19)
  {
LABEL_12:
    __break(1u);
LABEL_13:
    swift_once();
    goto LABEL_6;
  }

  v17 = sub_1003EFE4C(a1, v16);
  if (v5)
  {
    goto LABEL_9;
  }

  v36 = v17;
  if (qword_100935CD0 != -1)
  {
    goto LABEL_13;
  }

LABEL_6:
  v18 = type metadata accessor for Logger();
  sub_100006654(v18, qword_10093E290);
  (*(v10 + 16))(v13, a5, v9);
  v19 = v38;

  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.default.getter();
  v19, v22, v23, v24, v25, v26, v27, v28;
  if (os_log_type_enabled(v20, v21))
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v31 = v19;
    v32 = v30;
    v40 = v30;
    *v29 = 136446978;
    *(v29 + 4) = sub_10000668C(v37, v31, &v40);
    *(v29 + 12) = 2048;
    *(v29 + 14) = v36;
    *(v29 + 22) = 2048;
    *(v29 + 24) = v16;
    *(v29 + 32) = 2048;
    Date.rem_elapsedInMilliseconds.getter();
    v34 = v33;
    (*(v10 + 8))(v13, v9);
    *(v29 + 34) = v34;
    _os_log_impl(&_mh_execute_header, v20, v21, "[%{public}s] batch deleted %ld reminders that were deleted for over %f days, elapsedSeconds: %f ms.", v29, 0x2Au);
    sub_10000607C(v32);
  }

  else
  {

    (*(v10 + 8))(v13, v9);
  }

LABEL_9:
  objc_autoreleasePoolPop(v39);
}

uint64_t sub_10023967C(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  *(v8 + 24), a2, a3, a4, a5, a6, a7, a8;

  sub_10000607C((v8 + 40));
  sub_10000607C((v8 + 80));

  return swift_deallocClassInstance();
}

BOOL sub_1002396F0()
{
  v1 = v0;
  v2 = &v0[OBJC_IVAR____TtC7remindd37RDBatchDeleteExpiredRemindersActivity_configurations];
  v4 = *&v0[OBJC_IVAR____TtC7remindd37RDBatchDeleteExpiredRemindersActivity_configurations + 24];
  v3 = *&v0[OBJC_IVAR____TtC7remindd37RDBatchDeleteExpiredRemindersActivity_configurations + 32];
  sub_10000F61C(v2, v4);
  v5 = (*(*(v3 + 8) + 8))(v4);
  if (v5 <= 0.0)
  {
    if (qword_100935CD0 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_100006654(v6, qword_10093E290);
    v7 = v1;
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v24 = v11;
      *v10 = 136446210;
      v12 = &v7[OBJC_IVAR____TtC7remindd37RDBatchDeleteExpiredRemindersActivity_identifier];
      v13 = *&v7[OBJC_IVAR____TtC7remindd37RDBatchDeleteExpiredRemindersActivity_identifier];
      v14 = *(v12 + 1);

      v15 = sub_10000668C(v13, v14, &v24);
      v14, v16, v17, v18, v19, v20, v21, v22;
      *(v10 + 4) = v15;
      _os_log_impl(&_mh_execute_header, v8, v9, "[%{public}s] configuration validation fail - cannot execute because configurations.batchDeleteExpiredRemindersMinimumDeletionTimeInterval must be greater than 0", v10, 0xCu);
      sub_10000607C(v11);
    }
  }

  return v5 > 0.0;
}

unint64_t sub_1002398A8()
{
  _StringGuts.grow(_:)(31);
  0xE000000000000000, v1, v2, v3, v4, v5, v6, v7;
  v8 = *(v0 + OBJC_IVAR____TtC7remindd37RDBatchDeleteExpiredRemindersActivity_identifier);
  v9 = *(v0 + OBJC_IVAR____TtC7remindd37RDBatchDeleteExpiredRemindersActivity_identifier + 8);

  v10._countAndFlagsBits = v8;
  v10._object = v9;
  String.append(_:)(v10);
  v9, v11, v12, v13, v14, v15, v16, v17;
  v18._countAndFlagsBits = 0x746973796261622ELL;
  v18._object = 0xEB00000000726574;
  String.append(_:)(v18);
  return 0xD000000000000012;
}

double sub_1002399D0()
{
  v1 = v0[3];
  v2 = v0[4];
  sub_10000F61C(v0, v1);
  v3 = (*(v2 + 8))(v1, v2);
  [v3 doubleValue];
  v5 = v4;

  return v5;
}

uint64_t sub_100239A48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_10000A87C(a1, v30);
  sub_1000F5104(&qword_10093D900, &qword_10079B610);
  type metadata accessor for RDBatchDeleteExpiredRemindersActivity();
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
    if (qword_100935CD0 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_100006654(v8, qword_10093E290);
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
      _os_log_impl(&_mh_execute_header, v9, v10, "RDBatchDeleteExpiredRemindersExecutionDateStorage.lastExecutedDate(for:) must work with RDBatchDeleteExpiredRemindersActivity only {executable: %{public}s}", v11, 0xCu);
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

uint64_t sub_100239CD0(uint64_t a1, uint64_t a2)
{
  v5 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  __chkstk_darwin(v5 - 8, v6);
  v8 = v30 - v7;
  sub_10000A87C(a1, v33);
  sub_1000F5104(&qword_10093D900, &qword_10079B610);
  type metadata accessor for RDBatchDeleteExpiredRemindersActivity();
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
    if (qword_100935CD0 != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    sub_100006654(v13, qword_10093E290);
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
      _os_log_impl(&_mh_execute_header, v14, v15, "RDBatchDeleteExpiredRemindersExecutionDateStorage.updateLastExecutedDate(for:) must work with RDBatchDeleteExpiredRemindersActivity only {executable: %{public}s}", v16, 0xCu);
      sub_10000607C(v17);
    }

    else
    {

      sub_10000607C(v32);
    }
  }

  return sub_10000607C(v33);
}

uint64_t sub_10023A120@<X0>(void *a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC7remindd37RDBatchDeleteExpiredRemindersActivity_executable);
  a1[3] = type metadata accessor for RDBatchDeleteExpiredRemindersActivity.RDBatchDeleteExpiredRemindersActivityExecutable();
  a1[4] = &off_1008EB370;
  a1[5] = &off_1008EB380;
  *a1 = v3;
}

uint64_t sub_10023A184()
{
  v1 = (v0 + OBJC_IVAR____TtC7remindd37RDBatchDeleteExpiredRemindersActivity_configurations);
  v2 = *(v0 + OBJC_IVAR____TtC7remindd37RDBatchDeleteExpiredRemindersActivity_configurations + 24);
  v3 = *(v0 + OBJC_IVAR____TtC7remindd37RDBatchDeleteExpiredRemindersActivity_configurations + 32);
  sub_10000F61C(v1, v2);
  return (*(*(v3 + 24) + 8))(v2);
}

uint64_t sub_10023A214@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC7remindd37RDBatchDeleteExpiredRemindersActivity_babysitter;
  swift_beginAccess();
  return sub_100010364(v1 + v3, a1, &unk_10093D8F0, &unk_10079B600);
}

char *sub_10023A27C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v11 = *v2;
  v6 = *(*v2 + OBJC_IVAR____TtC7remindd37RDBatchDeleteExpiredRemindersActivity_configurations + 24);
  v5 = *(*v2 + OBJC_IVAR____TtC7remindd37RDBatchDeleteExpiredRemindersActivity_configurations + 32);
  sub_10000F61C(&v11[OBJC_IVAR____TtC7remindd37RDBatchDeleteExpiredRemindersActivity_configurations], *&v11[OBJC_IVAR____TtC7remindd37RDBatchDeleteExpiredRemindersActivity_configurations + 24]);
  v7 = (*(*(v5 + 24) + 8))(v6);
  v13 = a1;
  v14 = &off_1008EB3C0;
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

uint64_t sub_10023A360()
{
  v1 = *(*v0 + OBJC_IVAR____TtC7remindd37RDBatchDeleteExpiredRemindersActivity_identifier);

  return v1;
}

uint64_t sub_10023A3CC@<X0>(uint64_t a1@<X8>)
{
  v3 = [*v1 batchDeleteExpiredRemindersLastExecutionDate];
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

void sub_10023A470(uint64_t a1)
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
  [v3 setBatchDeleteExpiredRemindersLastExecutionDate:?];
}

id sub_10023A584()
{
  v1 = [*v0 batchDeleteExpiredRemindersRateReduceFactor];

  return v1;
}

uint64_t sub_10023A668()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_10093E500);
  v1 = sub_100006654(v0, qword_10093E500);
  if (qword_100936498 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_100975110);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_10023A730(_BYTE *a1, const char *a2, uint64_t a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v8 = *a1 == 0;
  if (*a1)
  {
    v9 = 0xD000000000000010;
  }

  else
  {
    v9 = 0x68636E75616CLL;
  }

  if (v8)
  {
    v10 = 0xE600000000000000;
  }

  else
  {
    v10 = 0x80000001007EA980;
  }

  if (*a2)
  {
    v11 = 0xD000000000000010;
  }

  else
  {
    v11 = 0x68636E75616CLL;
  }

  if (*a2)
  {
    v12 = 0x80000001007EA980;
  }

  else
  {
    v12 = 0xE600000000000000;
  }

  if (v9 == v11 && v10 == v12)
  {
    v14 = 1;
  }

  else
  {
    v14 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  v10, a2, v11, a4, a5, a6, a7, a8;
  v12, v15, v16, v17, v18, v19, v20, v21;
  return v14 & 1;
}