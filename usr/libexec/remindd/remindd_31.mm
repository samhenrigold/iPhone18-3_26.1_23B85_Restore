void sub_10030BB78(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for REMRemindersListDataView.HashtagLabelPredicate();
  v35 = *(v3 - 8);
  v36 = v3;
  __chkstk_darwin(v3, v4);
  v6 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000F5104(&qword_100941B80, &unk_1007A1E50);
  __chkstk_darwin(v7 - 8, v8);
  v10 = &v35 - v9;
  v11 = type metadata accessor for REMHashtagLabelSpecifier();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11, v13);
  v15 = &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (REMRemindersListDataView.TaggedInvocation.Parameters.shouldFetchManualOrderingID.getter())
  {
    if (qword_1009367D8 != -1)
    {
      swift_once();
    }

    v16 = sub_100013674(qword_1009752E8);
    if (v16)
    {
      v17 = v16;
      REMRemindersListDataView.TaggedInvocation.Parameters.hashtagLabelPredicate.getter();
      sub_10030C040(v6, v10);
      if ((*(v12 + 48))(v10, 1, v11) == 1)
      {
        sub_1000050A4(v10, &qword_100941B80, &unk_1007A1E50);
        v18 = objc_opt_self();
        v37 = 0;
        v38 = 0xE000000000000000;
        _StringGuts.grow(_:)(84);
        v19._object = 0x80000001007F4AC0;
        v19._countAndFlagsBits = 0xD000000000000051;
        String.append(_:)(v19);
        REMRemindersListDataView.TaggedInvocation.Parameters.hashtagLabelPredicate.getter();
        v20 = v36;
        _print_unlocked<A, B>(_:_:)();
        (*(v35 + 8))(v6, v20);
        v21._countAndFlagsBits = 125;
        v21._object = 0xE100000000000000;
        String.append(_:)(v21);
        v22 = v38;
        v23 = v17;
        v24 = String._bridgeToObjectiveC()();
        v22, v25, v26, v27, v28, v29, v30, v31;
        [v18 invalidParameterErrorWithDescription:v24];

        swift_willThrow();
      }

      else
      {
        (*(v12 + 32))(v15, v10, v11);
        sub_1000060C8(0, &qword_100941B88, REMManualOrdering_ptr);
        v33 = v39;
        sub_10030C3B8(v15, v17);
        (*(v12 + 8))(v15, v11);

        if (!v33)
        {
          v34 = type metadata accessor for REMManualOrdering.ManualOrderingID();
          (*(*(v34 - 8) + 56))(a1, 0, 1, v34);
        }
      }
    }

    else
    {
      [objc_opt_self() noPrimaryActiveCloudKitAccountError];
      swift_willThrow();
    }
  }

  else
  {
    v32 = type metadata accessor for REMManualOrdering.ManualOrderingID();
    (*(*(v32 - 8) + 56))(a1, 1, 1, v32);
  }
}

void sub_10030BFF4(uint64_t *a2@<X8>)
{
  v3 = REMRemindersListDataView.ReminderLite.objectID.getter();
  v4 = REMObjectID.codable.getter();

  *a2 = v4;
}

uint64_t sub_10030C040@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for REMRemindersListDataView.HashtagLabelPredicate();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5, v7);
  v9 = (&v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = type metadata accessor for REMHashtagLabelSpecifier();
  v11 = *(v10 - 8);
  v13 = __chkstk_darwin(v10, v12);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v9, a1, v5, v13);
  v16 = (*(v6 + 88))(v9, v5);
  if (v16 == enum case for REMRemindersListDataView.HashtagLabelPredicate.and(_:))
  {
    (*(v6 + 8))(a1, v5);
    (*(v6 + 96))(v9, v5);
    v17 = *(sub_1000F5104(&qword_100941120, &qword_1007A0A78) + 64);
    *v15 = *v9;
    v18 = &enum case for REMHashtagLabelSpecifier.Operation.and(_:);
LABEL_5:
    v19 = *v18;
    v20 = type metadata accessor for REMHashtagLabelSpecifier.Operation();
    (*(*(v20 - 8) + 104))(&v15[v17], v19, v20);
    v21 = &enum case for REMHashtagLabelSpecifier.labels(_:);
LABEL_6:
    (*(v11 + 104))(v15, *v21, v10);
    (*(v11 + 32))(a2, v15, v10);
    return (*(v11 + 56))(a2, 0, 1, v10);
  }

  if (v16 == enum case for REMRemindersListDataView.HashtagLabelPredicate.or(_:))
  {
    (*(v6 + 8))(a1, v5);
    (*(v6 + 96))(v9, v5);
    v17 = *(sub_1000F5104(&qword_100941120, &qword_1007A0A78) + 64);
    *v15 = *v9;
    v18 = &enum case for REMHashtagLabelSpecifier.Operation.or(_:);
    goto LABEL_5;
  }

  if (v16 == enum case for REMRemindersListDataView.HashtagLabelPredicate.allLabels(_:))
  {
    (*(v6 + 8))(a1, v5);
    v21 = &enum case for REMHashtagLabelSpecifier.allLabels(_:);
    goto LABEL_6;
  }

  if (v16 == enum case for REMRemindersListDataView.HashtagLabelPredicate.noLabels(_:))
  {
    (*(v6 + 8))(a1, v5);
    v21 = &enum case for REMHashtagLabelSpecifier.noLabels(_:);
    goto LABEL_6;
  }

  result = _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
  return result;
}

void sub_10030C3B8(uint64_t a1, id a2)
{
  v4 = [a2 storeControllerManagedObjectContext];
  if (v4)
  {
    v5 = v4;
    v6 = [a2 remObjectID];
    if (v6)
    {
      v7 = v6;
      sub_10059EB10(&v19);
      if (v20)
      {
        sub_100054B6C(&v19, v21);
        v8 = sub_1002D7E80(a1, v21);
        sub_10053F868(3, v8, v9, v7, v5);
        if (!v10)
        {
          v10 = [objc_opt_self() newObjectID];
        }

        v11 = v10;
        REMObjectID.codable.getter();
        REMManualOrdering.ManualOrderingID.init(objectID:listType:listID:)();

        sub_10000607C(v21);
      }

      else
      {
        sub_1000050A4(&v19, &qword_100947E90, &qword_10079B250);
        v17 = objc_opt_self();
        v18 = String._bridgeToObjectiveC()();
        [v17 invalidParameterErrorWithDescription:v18];

        swift_willThrow();
      }
    }

    else
    {
      v14 = objc_opt_self();
      sub_1000060C8(0, &qword_1009399F0, off_1008D4120);
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v16 = String._bridgeToObjectiveC()();
      [v14 unexpectedNilPropertyWithClass:ObjCClassFromMetadata property:v16];

      swift_willThrow();
    }
  }

  else
  {
    v12 = objc_opt_self();
    v13 = String._bridgeToObjectiveC()();
    [v12 internalErrorWithDebugDescription:v13];

    swift_willThrow();
  }
}

uint64_t sub_10030C664(uint64_t a1)
{
  result = sub_10030D7F0(&qword_100941B58, &type metadata accessor for REMRemindersListDataView.TaggedInvocation, &protocol conformance descriptor for REMRemindersListDataView.TaggedInvocation);
  *(a1 + 8) = result;
  return result;
}

void sub_10030C6BC()
{
  v1 = type metadata accessor for REMHashtagLabelDataView.AllHashtagLabelsInvocation.SortingStyle();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1, v3);
  v5 = &v49 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000F5104(&qword_100941B98, qword_1007ACBD0);
  __chkstk_darwin(v6 - 8, v7);
  v9 = &v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10, v11);
  v13 = &v49 - v12;
  v14 = type metadata accessor for REMHashtagLabelDataView.AllHashtagLabelsInvocation.Parameters();
  v52 = *(v14 - 8);
  __chkstk_darwin(v14, v15);
  v17 = &v49 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for REMHashtagLabelDataView.AllHashtagLabelsInvocation();
  v51 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  (*(v2 + 56))(v13, 1, 1, v1);
  REMHashtagLabelDataView.AllHashtagLabelsInvocation.Parameters.init(sortingStyle:)();
  REMHashtagLabelDataView.AllHashtagLabelsInvocation.Parameters.sortingStyle.getter();
  if ((*(v2 + 48))(v9, 1, v1) == 1)
  {
    sub_1000050A4(v9, &qword_100941B98, qword_1007ACBD0);
    v18 = 0;
  }

  else
  {
    (*(v2 + 16))(v5, v9, v1);
    v19 = (*(v2 + 88))(v5, v1);
    v18 = v19 != enum case for REMHashtagLabelDataView.AllHashtagLabelsInvocation.SortingStyle.alphabetical(_:);
    if (v19 != enum case for REMHashtagLabelDataView.AllHashtagLabelsInvocation.SortingStyle.alphabetical(_:) && v19 != enum case for REMHashtagLabelDataView.AllHashtagLabelsInvocation.SortingStyle.recencyDate(_:))
    {
      _diagnoseUnexpectedEnumCase<A>(type:)();
      __break(1u);
      return;
    }

    (*(v2 + 8))(v9, v1);
  }

  sub_1000131E0(0, 2, v18);
  if (v0)
  {
    (*(v52 + 8))(v17, v14);
  }

  else
  {
    v21 = v20;
    v22 = *(v20 + 16);
    if (v22)
    {
      v50 = v14;
      v53 = &_swiftEmptyArrayStorage;
      specialized ContiguousArray.reserveCapacity(_:)();
      v23 = type metadata accessor for REMHashtagLabel_Codable();
      v49 = v21;
      v24 = &v21->clientIdentity[24];
      do
      {
        v25 = *v24;
        v26 = objc_allocWithZone(v23);

        v27 = String._bridgeToObjectiveC()();
        v25, v28, v29, v30, v31, v32, v33, v34;
        [v26 initWithName:v27];

        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        v24 += 2;
        --v22;
      }

      while (v22);

      v49, v35, v36, v37, v38, v39, v40, v41;
      (*(v52 + 8))(v17, v50);
    }

    else
    {

      v21, v42, v43, v44, v45, v46, v47, v48;
      (*(v52 + 8))(v17, v14);
    }
  }
}

unint64_t sub_10030CB0C()
{
  result = qword_100941B68;
  if (!qword_100941B68)
  {
    sub_1000F514C(&qword_100941B60, &qword_1007A1E48);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100941B68);
  }

  return result;
}

id sub_10030CB70(void *a1, uint64_t a2, __n128 a3)
{
  v6 = REMSmartListTypeTagged;
  if (qword_1009367E0 != -1)
  {
    swift_once();
  }

  v7 = sub_100717244(v6, 0, a1, qword_1009752F0, a3);
  if (v3)
  {
    if (qword_100935EA0 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    sub_100006654(v9, qword_100941B20);
    swift_errorRetain();
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v34 = v33;
      *v12 = 136315138;
      swift_getErrorValue();
      v13 = Error.localizedDescription.getter();
      v15 = v14;
      v16 = v6;
      v17 = a2;
      v18 = sub_10000668C(v13, v14, &v34);
      v15, v19, v20, v21, v22, v23, v24, v25;
      *(v12 + 4) = v18;
      a2 = v17;
      v6 = v16;
      _os_log_impl(&_mh_execute_header, v10, v11, "Creating tagged smart list with empty storage because tagged smart list not found due to error {error: %s}", v12, 0xCu);
      sub_10000607C(v33);
    }

    v26 = sub_10003A1B8();
    if (v26)
    {
      v27 = v26;
      v28 = sub_10022F65C(v6, v26);
      v31 = [objc_allocWithZone(type metadata accessor for REMSmartList_Codable()) initWithStore:a2 storage:v28];
    }

    else
    {

      return 0;
    }
  }

  else
  {
    v8 = v7;
    v29 = sub_10022EB6C(v7);
    [objc_allocWithZone(REMSmartList) initWithStore:a2 storage:v29];
    v30 = objc_allocWithZone(type metadata accessor for REMSmartList_Codable());
    v31 = REMSmartList_Codable.init(_:)();
  }

  return v31;
}

_TtC7remindd19RDXPCStorePerformer *sub_10030CE70(uint64_t a1, void *a2, uint64_t a3)
{
  v93 = a2;
  Subtasks = type metadata accessor for REMRemindersListDataView.FetchSubtasks();
  v81 = *(Subtasks - 8);
  v82 = Subtasks;
  __chkstk_darwin(Subtasks, v6);
  v78 = &v71 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = type metadata accessor for REMRemindersListDataView.ShowCompleted();
  v79 = *(v80 - 8);
  __chkstk_darwin(v80, v8);
  v77 = &v71 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for REMRemindersListDataView.HashtagLabelPredicate();
  __chkstk_darwin(v10 - 8, v11);
  v72 = &v71 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1000F5104(&qword_100941B80, &unk_1007A1E50);
  __chkstk_darwin(v13 - 8, v14);
  *&v76 = &v71 - v15;
  *&v75 = type metadata accessor for REMHashtagLabelSpecifier();
  v74 = *(v75 - 8);
  __chkstk_darwin(v75, v16);
  v73 = &v71 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for REMRemindersListDataView.SortingStyle();
  __chkstk_darwin(v18 - 8, v19);
  v21 = &v71 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = _s9UtilitiesO12SortingStyleOMa(0);
  __chkstk_darwin(v22, v23);
  v25 = &v71 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26, v27);
  v29 = &v71 - v28;
  __chkstk_darwin(v30, v31);
  v33 = &v71 - v32;
  v34 = _s10PredicatesOMa(0);
  __chkstk_darwin(v34, v35);
  v37 = (&v71 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1000F5104(&qword_100941B90, &unk_1007A7560);
  *v37 = a1;

  REMRemindersListDataView.TaggedInvocation.Parameters.showCompleted.getter();
  swift_storeEnumTagMultiPayload();
  v83 = a3;
  REMRemindersListDataView.TaggedInvocation.Parameters.sortingStyle.getter();
  v38 = enum case for REMRemindersListDataView.SortingDirection.ascending(_:);
  v39 = type metadata accessor for REMRemindersListDataView.SortingDirection();
  (*(*(v39 - 8) + 104))(v29, v38, v39);
  swift_storeEnumTagMultiPayload();
  sub_1005368D8(v21, v29, v33);
  sub_1001A4ED8(v33, v25, v40);
  LODWORD(v38) = swift_getEnumCaseMultiPayload();
  sub_1001A4F3C(v25, _s9UtilitiesO12SortingStyleOMa);
  if (v38 != 5)
  {
    goto LABEL_15;
  }

  if (qword_1009367D8 != -1)
  {
    swift_once();
  }

  v41 = sub_100013674(qword_1009752E8);
  v42 = v76;
  if (!v41)
  {
    sub_1001A4F3C(v33, _s9UtilitiesO12SortingStyleOMa);
LABEL_13:
    v52 = 0;
    v53 = 0uLL;
    v54 = 0uLL;
LABEL_14:
    *v33 = v53;
    *(v33 + 1) = v54;
    *(v33 + 4) = v52;
    *(v33 + 5) = 0;
    swift_storeEnumTagMultiPayload();
LABEL_15:
    v55 = sub_100043AA8();
    v56 = v77;
    REMRemindersListDataView.TaggedInvocation.Parameters.showCompleted.getter();
    v58 = v81;
    v57 = v82;
    v59 = v78;
    (*(v81 + 104))(v78, enum case for REMRemindersListDataView.FetchSubtasks.count(_:), v82);
    v60 = sub_100536D54(v93, v55, v33, v56, v59, &_swiftEmptyArrayStorage, 0);

    (*(v58 + 8))(v59, v57);
    (*(v79 + 8))(v56, v80);
    sub_1001A4F3C(v33, _s9UtilitiesO12SortingStyleOMa);
    sub_1001A4F3C(v37, _s10PredicatesOMa);
    return v60;
  }

  v43 = v41;
  v44 = [v41 remObjectID];
  if (!v44)
  {
    sub_1001A4F3C(v33, _s9UtilitiesO12SortingStyleOMa);

    goto LABEL_13;
  }

  v45 = v44;
  sub_10059EB10(&aBlock);
  if (!v86)
  {
    sub_1001A4F3C(v33, _s9UtilitiesO12SortingStyleOMa);

    v49 = &qword_100947E90;
    v50 = &qword_10079B250;
    p_aBlock = &aBlock;
    goto LABEL_12;
  }

  sub_100054B6C(&aBlock, v92);
  v46 = v72;
  REMRemindersListDataView.TaggedInvocation.Parameters.hashtagLabelPredicate.getter();
  sub_10030C040(v46, v42);
  v47 = v74;
  v48 = v75;
  if ((*(v74 + 48))(v42, 1, v75) == 1)
  {

    sub_10000607C(v92);
    sub_1001A4F3C(v33, _s9UtilitiesO12SortingStyleOMa);
    v49 = &qword_100941B80;
    v50 = &unk_1007A1E50;
    p_aBlock = v42;
LABEL_12:
    sub_1000050A4(p_aBlock, v49, v50);
    goto LABEL_13;
  }

  v62 = v73;
  (*(v47 + 32))(v73, v42, v48);
  v63 = sub_1002D7E80(v62, v92);
  v65 = v64;
  v91 = 0;
  v89 = 0u;
  v90 = 0u;
  v66 = swift_allocObject();
  *(v66 + 16) = 3;
  *(v66 + 24) = v63;
  *(v66 + 32) = v65;
  *(v66 + 40) = v45;
  *&v76 = v45;
  v67 = v93;
  *(v66 + 48) = v93;
  *(v66 + 56) = &v89;
  v68 = swift_allocObject();
  *(v68 + 16) = sub_10026A4B4;
  *(v68 + 24) = v66;
  v87 = sub_1000529DC;
  v88 = v68;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  v85 = sub_10000F160;
  v86 = &unk_1008EDB88;
  v69 = _Block_copy(&aBlock);
  *&v76 = v76;
  v70 = v67;

  [v70 performBlockAndWait:v69];
  _Block_release(v69);

  (*(v74 + 8))(v73, v75);
  sub_10000607C(v92);
  sub_1001A4F3C(v33, _s9UtilitiesO12SortingStyleOMa);
  LOBYTE(v69) = swift_isEscapingClosureAtFileLocation();

  if ((v69 & 1) == 0)
  {
    v76 = v89;
    v75 = v90;
    v52 = v91;

    v54 = v75;
    v53 = v76;
    goto LABEL_14;
  }

  __break(1u);
  return result;
}

uint64_t sub_10030D7F0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10030D838(uint64_t a1)
{
  result = dispatch thunk of AnyKeyPath._kvcKeyPathString.getter();
  if (!v2)
  {
    _StringGuts.grow(_:)(46);
    v3._object = 0x80000001007EC120;
    v3._countAndFlagsBits = 0xD00000000000002CLL;
    String.append(_:)(v3);
    sub_1000F5104(&qword_100941DD8, &qword_1007A1FC0);
    _print_unlocked<A, B>(_:_:)();
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

double sub_10030D980(uint64_t a1)
{
  v2 = *v1;
  v3 = 0xE800000000000000;
  v4 = 0x80000001007A1EA0;
  v5 = 0x80000001007E8B40;
  if (v2 != 4)
  {
    v5 = 0x80000001007E8B60;
  }

  if (v2 != 3)
  {
    v4 = v5;
  }

  v6 = 0xEC00000065746144;
  if (v2 != 1)
  {
    v6 = 0xE600000000000000;
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

unint64_t sub_10030DA80@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10030E1BC(*a1);
  *a2 = result;
  return result;
}

void sub_10030DAB0(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE800000000000000;
  v4 = 0x44497463656A626FLL;
  v5 = 0xD000000000000014;
  v6 = 0x80000001007A1EA0;
  v7 = 0x80000001007E8B40;
  v8 = 0xD000000000000016;
  if (v2 != 4)
  {
    v8 = 0xD000000000000018;
    v7 = 0x80000001007E8B60;
  }

  if (v2 != 3)
  {
    v5 = v8;
    v6 = v7;
  }

  v9 = 0xEC00000065746144;
  v10 = 0x64656E6769737361;
  if (v2 != 1)
  {
    v10 = 0x737574617473;
    v9 = 0xE600000000000000;
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
    v11 = v5;
  }

  if (*v1 > 2u)
  {
    v3 = v6;
  }

  *a1 = v11;
  a1[1] = v3;
}

unint64_t sub_10030DB88@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_10030E1BC(a1);
  *a2 = result;
  return result;
}

unint64_t sub_10030DBB0()
{
  v1 = *v0;
  v2 = 0x44497463656A626FLL;
  v3 = 0xD000000000000014;
  v4 = 0xD000000000000016;
  if (v1 != 4)
  {
    v4 = 0xD000000000000018;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x64656E6769737361;
  if (v1 != 1)
  {
    v5 = 0x737574617473;
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

Swift::Int sub_10030DC80()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  v2 = 0xE900000000000044;
  v3 = 0xEA00000000004449;
  if (v1 != 2)
  {
    v3 = 0xEC0000004449726FLL;
  }

  if (v1)
  {
    v2 = 0xEA00000000004449;
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

double sub_10030DD58(uint64_t a1)
{
  v2 = 0xE900000000000044;
  v3 = 0xEA00000000004449;
  if (*v1 != 2)
  {
    v3 = 0xEC0000004449726FLL;
  }

  if (*v1)
  {
    v2 = 0xEA00000000004449;
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

Swift::Int sub_10030DE1C(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  v3 = 0xE900000000000044;
  v4 = 0xEA00000000004449;
  if (v2 != 2)
  {
    v4 = 0xEC0000004449726FLL;
  }

  if (v2)
  {
    v3 = 0xEA00000000004449;
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

unint64_t sub_10030DEF0@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10030E208(*a1);
  *a2 = result;
  return result;
}

void sub_10030DF20(uint64_t *a1@<X8>)
{
  v2 = 0xE900000000000044;
  v3 = 0x49746E756F636361;
  v4 = 0x65656E6769737361;
  v5 = 0xEA00000000004449;
  if (*v1 != 2)
  {
    v4 = 0x74616E696769726FLL;
    v5 = 0xEC0000004449726FLL;
  }

  if (*v1)
  {
    v3 = 0x7265646E696D6572;
    v2 = 0xEA00000000004449;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v4;
  }

  if (*v1 > 1u)
  {
    v2 = v5;
  }

  *a1 = v6;
  a1[1] = v2;
}

unint64_t sub_10030DFC4@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_10030E208(a1);
  *a2 = result;
  return result;
}

uint64_t sub_10030DFEC()
{
  v1 = 0x49746E756F636361;
  v2 = 0x65656E6769737361;
  if (*v0 != 2)
  {
    v2 = 0x74616E696769726FLL;
  }

  if (*v0)
  {
    v1 = 0x7265646E696D6572;
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

void sub_10030E07C(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 ckAssigneeIdentifier];
  if (v3)
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

void sub_10030E0E4(uint64_t a1, void **a2)
{
  v2 = *a2;
  if (*(a1 + 8))
  {
    v3 = String._bridgeToObjectiveC()();
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  [v2 setCkAssigneeIdentifier:?];
}

unint64_t sub_10030E1BC(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1008E0A28, v2);
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

unint64_t sub_10030E208(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1008E12E8, v2);
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

void sub_10030E254(void *a1, SEL *a2, const char *a3, const char *a4)
{
  v157 = a4;
  v8 = sub_1000F5104(&unk_100939D90, "8\n\r");
  __chkstk_darwin(v8 - 8, v9);
  v11 = &v150 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12, v13);
  v15 = &v150 - v14;
  v16 = type metadata accessor for UUID();
  v161 = *(v16 - 8);
  __chkstk_darwin(v16, v17);
  v19 = &v150 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20, v21);
  v158 = &v150 - v22;
  *&v25 = __chkstk_darwin(v23, v24).n128_u64[0];
  v160 = &v150 - v26;
  v27 = [a1 *a2];
  if (!v27)
  {
    return;
  }

  v28 = v27;
  v159 = v4;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v30 = v29;

  v31 = [a1 managedObjectContext];
  if (v31)
  {
    v156 = v31;
    UUID.init(uuidString:)();
    v30, v39, v40, v41, v42, v43, v44, v45;
    v46 = v161;
    if ((*(v161 + 48))(v15, 1, v16) == 1)
    {

      sub_1000050A4(v15, &unk_100939D90, "8\n\r");
      return;
    }

    v153 = a3;
    v51 = v160;
    (*(v46 + 32))(v160, v15, v16);
    KeyPath = swift_getKeyPath();
    v154 = *(v46 + 16);
    v154(v11, v51, v16);
    (*(v46 + 56))(v11, 0, 1, v16);
    v53 = sub_10039239C(KeyPath, v11);
    v155 = v16;
    v54 = v53;

    sub_1000060C8(0, &qword_100939D80, off_1008D41B8);
    v55 = [objc_allocWithZone(NSFetchRequest) init];
    v56 = [swift_getObjCClassFromMetadata() entity];
    [v55 setEntity:v56];

    [v55 setAffectedStores:0];
    [v55 setPredicate:v54];
    v57 = v156;
    v58 = v159;
    v59 = NSManagedObjectContext.fetch<A>(_:)();
    if (v58)
    {
      (*(v46 + 8))(v160, v155);

      return;
    }

    v60 = v59;
    v151 = v55;
    v152 = v54;
    v62 = v154;
    v61 = v155;
    v162[3] = sub_1000F5104(&qword_10093F5C0, &qword_1007A1FB0);
    v162[0] = v60;
    sub_1000F5104(&unk_10094F110, &qword_1007A1FB8);
    throwingCast<A>(_:as:failureMessage:)();
    sub_10000607C(v162);
    v70 = v163;
    if (v163 >> 62)
    {
      v71 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v71 = *((v163 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v72 = v158;
    v159 = 0;
    if (v71)
    {
      if ((v70 & 0xC000000000000001) != 0)
      {
        v73 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        goto LABEL_20;
      }

      if (*((v70 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v73 = *(v70 + 32);
LABEL_20:
        v81 = v73;
        v70, v74, v75, v76, v77, v78, v79, v80;
        if (qword_100935EA8 != -1)
        {
          swift_once();
        }

        v82 = type metadata accessor for Logger();
        sub_100006654(v82, qword_100941BA0);
        v62(v72, v160, v61);
        v83 = v81;
        v84 = a1;
        v85 = Logger.logObject.getter();
        v86 = static os_log_type_t.default.getter();

        v158 = v83;
        if (os_log_type_enabled(v85, v86))
        {
          v87 = swift_slowAlloc();
          v88 = swift_slowAlloc();
          v157 = swift_slowAlloc();
          v162[0] = v157;
          *v87 = 136446722;
          LODWORD(v154) = v86;
          v89 = UUID.uuidString.getter();
          v91 = v90;
          v161 = *(v161 + 8);
          (v161)(v72, v61);
          v92 = sub_10000668C(v89, v91, v162);
          v91, v93, v94, v95, v96, v97, v98, v99;
          *(v87 + 4) = v92;
          *(v87 + 12) = 2112;
          v100 = v158;
          *(v87 + 14) = v158;
          *v88 = v100;
          v101 = v88;
          *(v87 + 22) = 2080;
          v102 = v100;
          v103 = [v84 loggingDescription];
          v104 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v106 = v105;

          v107 = sub_10000668C(v104, v106, v162);
          v106, v108, v109, v110, v111, v112, v113, v114;
          *(v87 + 24) = v107;
          _os_log_impl(&_mh_execute_header, v85, v154, v153, v87, 0x20u);
          sub_1000050A4(v101, &unk_100938E70, &unk_100797230);

          swift_arrayDestroy();

          (v161)(v160, v155);
        }

        else
        {

          v148 = *(v161 + 8);
          v148(v72, v61);
          v148(v160, v61);
        }

        return;
      }

      __break(1u);
    }

    else
    {
      v70, v63, v64, v65, v66, v67, v68, v69;
      if (qword_100935EA8 == -1)
      {
        goto LABEL_25;
      }
    }

    swift_once();
LABEL_25:
    v115 = type metadata accessor for Logger();
    sub_100006654(v115, qword_100941BA0);
    v116 = v160;
    v117 = v61;
    v62(v19, v160, v61);
    v118 = a1;
    v119 = Logger.logObject.getter();
    v120 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v119, v120))
    {
      v121 = swift_slowAlloc();
      v158 = swift_slowAlloc();
      v162[0] = v158;
      *v121 = 136446466;
      v122 = UUID.uuidString.getter();
      LODWORD(v154) = v120;
      v123 = v122;
      v125 = v124;
      v126 = *(v161 + 8);
      v126(v19, v117);
      v127 = v126;
      v128 = sub_10000668C(v123, v125, v162);
      v125, v129, v130, v131, v132, v133, v134, v135;
      *(v121 + 4) = v128;
      *(v121 + 12) = 2080;
      v136 = [v118 loggingDescription];
      v137 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v139 = v138;

      v140 = sub_10000668C(v137, v139, v162);
      v139, v141, v142, v143, v144, v145, v146, v147;
      *(v121 + 14) = v140;
      _os_log_impl(&_mh_execute_header, v119, v154, v157, v121, 0x16u);
      swift_arrayDestroy();

      v127(v160, v117);
    }

    else
    {

      v149 = *(v161 + 8);
      v149(v19, v61);
      v149(v116, v61);
    }

    return;
  }

  v30, v32, v33, v34, v35, v36, v37, v38;
  if (qword_100935EA8 != -1)
  {
    swift_once();
  }

  v47 = type metadata accessor for Logger();
  sub_100006654(v47, qword_100941BA0);
  v48 = Logger.logObject.getter();
  v49 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v48, v49))
  {
    v50 = swift_slowAlloc();
    *v50 = 0;
    _os_log_impl(&_mh_execute_header, v48, v49, "Cannot get managedObjectContext from the given REMCDAssignment", v50, 2u);
  }
}

_TtC7remindd19RDXPCStorePerformer *sub_10030ED04(void *a1, int a2, int a3)
{
  LODWORD(v414) = a3;
  v6 = type metadata accessor for Date();
  v410 = *(v6 - 8);
  v411 = v6;
  __chkstk_darwin(v6, v7);
  v409 = &v397 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9, v10);
  v408 = (&v397 - v11);
  v416 = type metadata accessor for UUID();
  v12 = *(v416 - 8);
  __chkstk_darwin(v416, v13);
  v412 = &v397 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15, v16);
  v18 = &v397 - v17;
  v19 = sub_1000F5104(&unk_100939D90, "8\n\r");
  __chkstk_darwin(v19 - 8, v20);
  v22 = &v397 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23, v24);
  v26 = &v397 - v25;
  __chkstk_darwin(v27, v28);
  v30 = &v397 - v29;
  *&v33 = __chkstk_darwin(v31, v32).n128_u64[0];
  v35 = &v397 - v34;
  v417 = a1;
  v418 = 0;
  v415 = [a1 remObjectIDWithError:{&v418, v33}];
  if (!v415)
  {
    v44 = v418;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    return v44;
  }

  v36 = v418;
  LODWORD(v413) = a2;
  v407 = v3;
  if ((a2 & 1) != 0 && [v417 markedForDeletion])
  {
    v37 = [v417 owningReminderIdentifier];
    if (v37)
    {
      v38 = v37;
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v39 = 0;
    }

    else
    {
      v39 = 1;
    }

    (*(v12 + 56))(v30, v39, 1, v416);
    sub_100100FB4(v30, v35);
  }

  else
  {
    v40 = [v417 reminder];
    if (v40 && (v41 = v40, v42 = [v40 remObjectID], v41, v42))
    {
      v43 = [v42 uuid];

      static UUID._unconditionallyBridgeFromObjectiveC(_:)();
      (*(v12 + 56))(v35, 0, 1, v416);
    }

    else
    {
      (*(v12 + 56))(v35, 1, 1, v416);
    }
  }

  v45 = [v417 account];
  if (!v45)
  {
    goto LABEL_17;
  }

  v46 = v45;
  v47 = [v45 remObjectID];

  v406 = v47;
  if (!v47)
  {
    goto LABEL_17;
  }

  v404 = v35;
  v405 = v18;
  sub_10018E470(v35, v26);
  v48 = v12;
  v49 = *(v12 + 48);
  v50 = v416;
  if (v49(v26, 1, v416) == 1)
  {

    sub_1000050A4(v26, &unk_100939D90, "8\n\r");
    v35 = v404;
LABEL_17:
    v51 = v417;
    v52 = [v417 account];
    if (v52)
    {
      v53 = v52;
      v44 = 0xE900000000000029;
      v54 = v415;
    }

    else
    {
      v54 = v415;
      if (qword_100935EB0 != -1)
      {
        swift_once();
      }

      v55 = type metadata accessor for Logger();
      sub_100006654(v55, qword_100941BB8);
      v56 = v54;
      v53 = Logger.logObject.getter();
      v57 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v53, v57))
      {
        v58 = swift_slowAlloc();
        v59 = swift_slowAlloc();
        *v58 = 138412290;
        *(v58 + 4) = v56;
        *v59 = v54;
        v60 = v56;
        _os_log_impl(&_mh_execute_header, v53, v57, "REMAssignmentCDIngestor: cdAssignment.account is nil {cdAssignment.remObjectID: %@}", v58, 0xCu);
        sub_1000050A4(v59, &unk_100938E70, &unk_100797230);
      }

      v44 = 0xE700000000000000;
    }

    v61 = v413;

    if ((v61 & 1) != 0 && [v51 markedForDeletion])
    {
      v44, v62, v63, v64, v65, v66, v67, v68;
      if (qword_100935EB0 != -1)
      {
        swift_once();
      }

      v69 = type metadata accessor for Logger();
      sub_100006654(v69, qword_100941BB8);
      v70 = v54;
      v71 = Logger.logObject.getter();
      v72 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v71, v72))
      {
        v73 = swift_slowAlloc();
        v74 = swift_slowAlloc();
        *v73 = 138412290;
        *(v73 + 4) = v70;
        *v74 = v54;
        v75 = v70;
        _os_log_impl(&_mh_execute_header, v71, v72, "REMAssignmentCDIngestor: cdAssignment.owningReminderIdentifier of this markedForDeletion assignment is nil {cdAssignment.remObjectID: %@}", v73, 0xCu);
        sub_1000050A4(v74, &unk_100938E70, &unk_100797230);
      }

      v44 = 0xE800000000000000;
    }

    else
    {
      v76 = [v51 reminder];
      if (v76)
      {
      }

      else
      {
        v44, v77, v78, v79, v80, v81, v82, v83;
        if (qword_100935EB0 != -1)
        {
          swift_once();
        }

        v84 = type metadata accessor for Logger();
        sub_100006654(v84, qword_100941BB8);
        v85 = v54;
        v86 = Logger.logObject.getter();
        v87 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v86, v87))
        {
          v88 = swift_slowAlloc();
          v89 = swift_slowAlloc();
          *v88 = 138412290;
          *(v88 + 4) = v85;
          *v89 = v54;
          v90 = v85;
          _os_log_impl(&_mh_execute_header, v86, v87, "REMAssignmentCDIngestor: cdAssignment.reminder is nil {cdAssignment.remObjectID: %@}", v88, 0xCu);
          sub_1000050A4(v89, &unk_100938E70, &unk_100797230);
        }

        KeyPath = swift_getKeyPath();
        sub_10030D838(KeyPath);
        v44 = v92;
      }
    }

    v93 = objc_opt_self();
    sub_1000060C8(0, &unk_10093F790, off_1008D4158);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v95 = String._bridgeToObjectiveC()();
    v44, v96, v97, v98, v99, v100, v101, v102;
    [v93 unexpectedNilPropertyWithClass:ObjCClassFromMetadata property:v95];

    swift_willThrow();
    goto LABEL_39;
  }

  v403 = v48;
  v105 = *(v48 + 32);
  v105(v405, v26, v50);
  v106 = objc_opt_self();
  isa = UUID._bridgeToObjectiveC()().super.isa;
  v108 = [v106 objectIDWithUUID:isa];

  v109 = v417;
  v44 = [v417 status];
  if ((v414 & 1) == 0)
  {
    v135 = [v109 assignee];
    if (v135)
    {
      v136 = v135;
      v137 = v404;
      v125 = v405;
      v138 = v407;
    }

    else
    {
      v177 = v407;
      sub_10030E254(v109, &selRef_ckAssigneeIdentifier, "FETCH COREDATA assigneeIDFromCKAssigneeIdentifier() fetched sharee {uuid: %{public}s, result: %@, assignment: %s}", "FETCH COREDATA assigneeIDFromCKAssigneeIdentifier() sharee not found {uuid: %{public}s, assignment: %s}");
      v138 = v177;
      v137 = v404;
      if (v177)
      {

        (*(v403 + 8))(v405, v50);
LABEL_68:
        v103 = v137;
        goto LABEL_40;
      }

      v136 = v178;
      v125 = v405;
      if (!v178)
      {
        goto LABEL_78;
      }
    }

    v139 = [v136 remObjectID];
    if (v139)
    {
      v140 = v139;
      v141 = [objc_opt_self() isShareeActivelyParticipatingWithSharee:v136];
      v412 = v140;
      if ((v141 & 1) == 0)
      {
        if (qword_100935EB0 != -1)
        {
          swift_once();
        }

        v35 = v137;
        v225 = type metadata accessor for Logger();
        sub_100006654(v225, qword_100941BB8);
        v226 = v415;
        v227 = v415;
        v228 = v136;
        v229 = v108;
        v230 = Logger.logObject.getter();
        v231 = static os_log_type_t.info.getter();

        if (os_log_type_enabled(v230, v231))
        {
          v232 = swift_slowAlloc();
          v233 = swift_slowAlloc();
          *v232 = 138543874;
          *(v232 + 4) = v227;
          *(v232 + 12) = 2114;
          *(v232 + 14) = v229;
          *v233 = v226;
          v233[1] = v229;
          *(v232 + 22) = 512;
          v234 = v227;
          v235 = v229;
          *(v232 + 24) = [v228 status];

          _os_log_impl(&_mh_execute_header, v230, v231, "REMAssignmentCDIngestor: assignee status is disallowed {assignmentID: %{public}@, reminderID: %{public}@}, assignee.status: %hd", v232, 0x1Au);
          sub_1000F5104(&unk_100938E70, &unk_100797230);
          swift_arrayDestroy();
        }

        else
        {

          v230 = v228;
        }

        v238 = objc_opt_self();
        v239 = swift_getKeyPath();
        sub_10030D838(v239);
        v241 = v240;

        v44 = String._bridgeToObjectiveC()();
        v241, v242, v243, v244, v245, v246, v247, v248;
        [v238 nullifiedRelationshipErrorWithRelationshipName:v44];

        swift_willThrow();
        (*(v403 + 8))(v405, v416);
        goto LABEL_39;
      }

      v413 = v108;
      v142 = [v136 list];
      if (!v142)
      {
        goto LABEL_127;
      }

      v143 = v142;
      v144 = [v417 reminder];
      if (v144)
      {
        v145 = v144;
        v146 = [v144 list];

        if (v146)
        {
          v147 = [v143 remObjectID];
          v148 = [v146 remObjectID];
          v149 = v146;
          v150 = v148;
          v407 = v147;
          if (!v147)
          {

            if (!v150)
            {
              v153 = v140;
              v407 = v138;

              v116 = v416;
              v137 = v404;
              goto LABEL_70;
            }

            goto LABEL_126;
          }

          v402 = v149;
          if (v148)
          {
            sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
            v401 = v44;
            v151 = v407;
            v152 = static NSObject.== infix(_:_:)();
            v44 = v401;
            LODWORD(v400) = v152;

            v137 = v404;
            if (v400)
            {
              v153 = v140;
              v407 = v138;

              v116 = v416;
              goto LABEL_70;
            }

LABEL_127:
            if (qword_100935EB0 != -1)
            {
              swift_once();
            }

            v298 = type metadata accessor for Logger();
            sub_100006654(v298, qword_100941BB8);
            v299 = v415;
            v300 = v415;
            v301 = v136;
            v302 = v417;
            v303 = Logger.logObject.getter();
            v304 = static os_log_type_t.error.getter();

            v305 = os_log_type_enabled(v303, v304);
            v414 = v301;
            if (!v305)
            {

              v317 = v405;
              v35 = v137;
LABEL_142:
              v343 = v412;
              v344 = objc_opt_self();
              v345 = swift_getKeyPath();
              sub_10030D838(v345);
              v347 = v346;

              v44 = String._bridgeToObjectiveC()();
              v347, v348, v349, v350, v351, v352, v353, v354;
              [v344 nullifiedRelationshipErrorWithRelationshipName:v44];

              swift_willThrow();
              (*(v403 + 8))(v317, v416);
LABEL_39:
              v103 = v35;
LABEL_40:
              sub_1000050A4(v103, &unk_100939D90, "8\n\r");
              return v44;
            }

            v306 = swift_slowAlloc();
            v307 = swift_slowAlloc();
            v417 = swift_slowAlloc();
            v418 = v417;
            *v306 = 138543874;
            *(v306 + 4) = v300;
            v411 = v307;
            *v307 = v299;
            *(v306 + 12) = 2082;
            v308 = v300;
            v309 = [v301 list];
            if (v309)
            {
              v310 = v309;
              v311 = [v309 remObjectID];
              if (v311)
              {
                v312 = v311;
                v313 = [v311 description];

                v314 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                v316 = v315;

                goto LABEL_136;
              }
            }

            v316 = 0xE300000000000000;
            v314 = 7104878;
LABEL_136:
            v318 = sub_10000668C(v314, v316, &v418);
            v316, v319, v320, v321, v322, v323, v324, v325;
            *(v306 + 14) = v318;
            *(v306 + 22) = 2082;
            v326 = [v302 reminder];
            if (v326 && (v327 = v326, v328 = [v326 list], v327, v328))
            {
              v329 = [v328 remObjectID];
              v330 = 7104878;
              if (v329)
              {
                v331 = v329;
                v332 = [v329 description];

                v330 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                v334 = v333;
              }

              else
              {

                v334 = 0xE300000000000000;
              }
            }

            else
            {
              v334 = 0xE300000000000000;
              v330 = 7104878;
            }

            v335 = sub_10000668C(v330, v334, &v418);
            v334, v336, v337, v338, v339, v340, v341, v342;
            *(v306 + 24) = v335;
            _os_log_impl(&_mh_execute_header, v303, v304, "REMAssignmentCDIngestor: assignee not belongs to the same list to the reminder's {assignmentID: %{public}@, candidateAssignee.list: %{public}s, assignment.reminder.list: %{public}s}", v306, 0x20u);
            sub_1000050A4(v411, &unk_100938E70, &unk_100797230);

            swift_arrayDestroy();

            v35 = v404;
            v317 = v405;
            goto LABEL_142;
          }
        }
      }

      v150 = v143;
LABEL_126:

      v137 = v404;
      goto LABEL_127;
    }

LABEL_78:
    v203 = v137;
    if (qword_100935EB0 != -1)
    {
      swift_once();
    }

    v204 = type metadata accessor for Logger();
    sub_100006654(v204, qword_100941BB8);
    v205 = v415;
    v206 = v415;
    v207 = v108;
    v208 = Logger.logObject.getter();
    v209 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v208, v209))
    {
      v210 = swift_slowAlloc();
      v211 = swift_slowAlloc();
      *v210 = 138543618;
      *(v210 + 4) = v206;
      *(v210 + 12) = 2114;
      *(v210 + 14) = v207;
      *v211 = v205;
      v211[1] = v207;
      v212 = v206;
      v213 = v207;
      _os_log_impl(&_mh_execute_header, v208, v209, "REMAssignmentCDIngestor: nullifiedRelationship assignee {assignmentID: %{public}@, reminderID: %{public}@}", v210, 0x16u);
      sub_1000F5104(&unk_100938E70, &unk_100797230);
      swift_arrayDestroy();
    }

    v214 = objc_opt_self();
    v215 = swift_getKeyPath();
    sub_10030D838(v215);
    v217 = v216;

    v44 = String._bridgeToObjectiveC()();
    v217, v218, v219, v220, v221, v222, v223, v224;
    [v214 nullifiedRelationshipErrorWithRelationshipName:v44];

    swift_willThrow();
    (*(v403 + 8))(v125, v416);
    v103 = v203;
    goto LABEL_40;
  }

  v110 = [v109 ckAssigneeIdentifier];
  if (!v110)
  {
    v154 = v405;
    if (qword_100935EB0 != -1)
    {
      swift_once();
    }

    v155 = v108;
    v156 = type metadata accessor for Logger();
    sub_100006654(v156, qword_100941BB8);
    v157 = v415;
    v158 = v415;
    v159 = Logger.logObject.getter();
    v160 = static os_log_type_t.error.getter();

    v161 = os_log_type_enabled(v159, v160);
    v137 = v404;
    if (v161)
    {
      v162 = swift_slowAlloc();
      v163 = swift_slowAlloc();
      *v162 = 138412290;
      *(v162 + 4) = v158;
      *v163 = v157;
      v164 = v158;
      _os_log_impl(&_mh_execute_header, v159, v160, "REMAssignmentCDIngestor: cdAssignment.ckAssigneeIdentifier is nil {cdAssignment.remObjectID: %@}", v162, 0xCu);
      sub_1000050A4(v163, &unk_100938E70, &unk_100797230);
    }

    v165 = objc_opt_self();
    sub_1000060C8(0, &unk_10093F790, off_1008D4158);
    v166 = swift_getObjCClassFromMetadata();
    v167 = swift_getKeyPath();
    sub_10030D838(v167);
    v169 = v168;

    v44 = String._bridgeToObjectiveC()();
    v169, v170, v171, v172, v173, v174, v175, v176;
    [v165 unexpectedNilPropertyWithClass:v166 property:v44];

    swift_willThrow();
    (*(v403 + 8))(v154, v416);
    goto LABEL_68;
  }

  v111 = v44;
  v413 = v108;
  v112 = v110;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v114 = v113;

  UUID.init(uuidString:)();
  v115 = v114;
  v116 = v416;
  v115, v117, v118, v119, v120, v121, v122, v123;
  v124 = v49(v22, 1, v116);
  v125 = v405;
  if (v124 == 1)
  {
    sub_1000050A4(v22, &unk_100939D90, "8\n\r");
    v126 = v403;
    v127 = v404;
    if (qword_100935EB0 != -1)
    {
      swift_once();
    }

    v128 = type metadata accessor for Logger();
    sub_100006654(v128, qword_100941BB8);
    v129 = v415;
    v130 = v415;
    v44 = Logger.logObject.getter();
    v131 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(&v44->super, v131))
    {
      v132 = swift_slowAlloc();
      v133 = swift_slowAlloc();
      *v132 = 138412290;
      *(v132 + 4) = v130;
      *v133 = v129;
      v134 = v130;
      _os_log_impl(&_mh_execute_header, &v44->super, v131, "REMAssignmentCDIngestor: Can't create UUID from ckAssigneeIdentifier {cdAssignment.remObjectID: %@}", v132, 0xCu);
      sub_1000050A4(v133, &unk_100938E70, &unk_100797230);
      v116 = v416;

      v126 = v403;
    }

    [objc_opt_self() unexpectedError];
    swift_willThrow();

    (*(v126 + 8))(v125, v116);
    v103 = v127;
    goto LABEL_40;
  }

  v179 = v105;
  v180 = v412;
  v179(v412, v22, v116);
  v181 = objc_opt_self();
  v182 = UUID._bridgeToObjectiveC()().super.isa;
  v153 = [v181 objectIDWithUUID:v182];

  (*(v403 + 8))(v180, v116);
  v137 = v404;
  v44 = v111;
LABEL_70:
  v402 = v44;
  v183 = v417;
  v184 = [v417 originator];
  v185 = v406;
  if (v184)
  {
    v186 = v184;
  }

  else
  {
    v236 = v407;
    sub_10030E254(v183, &selRef_ckOriginatorIdentifier, "FETCH COREDATA originatorIDFromCKOriginatorIdentifier() fetched sharee {uuid: %{public}s, result: %@, assignment: %s}", "FETCH COREDATA originatorIDFromCKOriginatorIdentifier() sharee not found {uuid: %{public}s, assignment: %s}");
    v407 = v236;
    if (v236)
    {

      (*(v403 + 8))(v125, v116);
      sub_1000050A4(v137, &unk_100939D90, "8\n\r");
      return v44;
    }

    v186 = v237;
    if (!v237)
    {
      goto LABEL_94;
    }
  }

  v187 = [v186 remObjectID];
  if (!v187)
  {

LABEL_94:
    v249 = v413;
    v188 = v153;
    v191 = v403;
    goto LABEL_155;
  }

  v188 = v153;
  if ((v414 & 1) == 0)
  {
    v414 = v187;
    LODWORD(v412) = [objc_opt_self() isShareeActivelyParticipatingWithSharee:v186];
    if ((v412 & 1) == 0)
    {
      v250 = v153;
      if (qword_100935EB0 != -1)
      {
        swift_once();
      }

      v251 = type metadata accessor for Logger();
      sub_100006654(v251, qword_100941BB8);
      v252 = v186;
      v253 = v415;
      v254 = v415;
      v255 = v413;
      v256 = v252;
      v257 = Logger.logObject.getter();
      v258 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v257, v258))
      {
        v259 = swift_slowAlloc();
        v260 = swift_slowAlloc();
        *v259 = 138543874;
        *(v259 + 4) = v254;
        *(v259 + 12) = 2114;
        *(v259 + 14) = v255;
        *v260 = v253;
        v260[1] = v255;
        *(v259 + 22) = 512;
        v261 = v254;
        v262 = v255;
        v263 = [v256 status];

        *(v259 + 24) = v263;
        _os_log_impl(&_mh_execute_header, v257, v258, "REMAssignmentCDIngestor: originator status is disallowed {assignmentID: %{public}@, reminderID: %{public}@, originator.status: %hd}", v259, 0x1Au);
        sub_1000F5104(&unk_100938E70, &unk_100797230);
        swift_arrayDestroy();
      }

      else
      {

        v257 = v256;
      }

      v188 = v250;
      v137 = v404;
    }

    v270 = [v186 list];
    v191 = v403;
    if (!v270)
    {
      goto LABEL_117;
    }

    v271 = v270;
    v272 = [v417 reminder];
    if (v272 && (v273 = v272, v274 = [v272 list], v273, v274))
    {
      v275 = [v271 remObjectID];
      v276 = [v274 remObjectID];
      v277 = v276;
      if (v275)
      {
        if (v276)
        {
          sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
          v278 = static NSObject.== infix(_:_:)();

          v116 = v416;
          v137 = v404;
          if ((v278 & 1) == 0)
          {
            goto LABEL_117;
          }

LABEL_169:

          v185 = v406;
          v190 = v414;
          if (v412)
          {
            goto LABEL_75;
          }

          goto LABEL_154;
        }

        v277 = v271;
        v137 = v404;
      }

      else
      {

        v116 = v416;
        v137 = v404;
        if (!v277)
        {
          goto LABEL_169;
        }
      }
    }

    else
    {
      v277 = v271;
    }

LABEL_117:
    v412 = v188;
    if (qword_100935EB0 != -1)
    {
      swift_once();
    }

    v279 = type metadata accessor for Logger();
    sub_100006654(v279, qword_100941BB8);
    v280 = v415;
    v281 = v415;
    v282 = v417;
    v283 = v186;
    v284 = Logger.logObject.getter();
    v285 = static os_log_type_t.error.getter();
    v400 = v282;

    LODWORD(v401) = v285;
    v408 = v284;
    if (os_log_type_enabled(v284, v285))
    {
      v286 = v283;
      v287 = swift_slowAlloc();
      v288 = swift_slowAlloc();
      v418 = swift_slowAlloc();
      *v287 = 138543874;
      *(v287 + 4) = v281;
      *v288 = v280;
      *(v287 + 12) = 2080;
      v289 = v281;
      v399 = v286;
      v290 = [v286 list];
      v188 = v412;
      if (v290)
      {
        v291 = v290;
        v292 = [v290 remObjectID];
        if (v292)
        {
          v293 = v292;
          v294 = [v292 description];

          v295 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v297 = v296;

          goto LABEL_146;
        }
      }

      v297 = 0xE300000000000000;
      v295 = 7104878;
LABEL_146:
      v355 = sub_10000668C(v295, v297, &v418);
      v297, v356, v357, v358, v359, v360, v361, v362;
      *(v287 + 14) = v355;
      *(v287 + 22) = 2080;
      v363 = [v400 reminder];
      v398 = v288;
      if (v363)
      {
        v364 = v363;
        v365 = [v363 list];

        v191 = v403;
        v137 = v404;
        if (v365)
        {
          v366 = [v365 remObjectID];
          v367 = 7104878;
          if (v366)
          {
            v368 = v366;
            v369 = [v366 description];

            v367 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v371 = v370;

            v191 = v403;
          }

          else
          {

            v371 = 0xE300000000000000;
          }

          goto LABEL_153;
        }

        v371 = 0xE300000000000000;
      }

      else
      {
        v371 = 0xE300000000000000;
        v191 = v403;
        v137 = v404;
      }

      v367 = 7104878;
LABEL_153:
      v372 = sub_10000668C(v367, v371, &v418);
      v371, v373, v374, v375, v376, v377, v378, v379;
      *(v287 + 24) = v372;
      v380 = v408;
      _os_log_impl(&_mh_execute_header, v408, v401, "REMAssignmentCDIngestor: originator not belongs to the same list to the reminder's {cdAssignment.remObjectID: %{public}@, candidateOriginator.list: %s, assignment.reminder.list: %s}", v287, 0x20u);
      sub_1000050A4(v398, &unk_100938E70, &unk_100797230);

      swift_arrayDestroy();

      v185 = v406;
LABEL_154:
      v249 = v413;
      goto LABEL_155;
    }

    v185 = v406;
    v188 = v412;
    v249 = v413;
LABEL_155:
    if (qword_100935EB0 != -1)
    {
      swift_once();
    }

    v381 = type metadata accessor for Logger();
    sub_100006654(v381, qword_100941BB8);
    v382 = v415;
    v269 = v249;
    v383 = v249;
    v384 = Logger.logObject.getter();
    v385 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v384, v385))
    {
      v386 = swift_slowAlloc();
      v387 = swift_slowAlloc();
      *v386 = 138543618;
      *(v386 + 4) = v382;
      *(v386 + 12) = 2114;
      *(v386 + 14) = v383;
      *v387 = v415;
      v387[1] = v383;
      v388 = v382;
      v389 = v383;
      _os_log_impl(&_mh_execute_header, v384, v385, "storage(from cdAssignment:): originator of this assignment was nullified {objectID: %{public}@, reminderID: %{public}@}", v386, 0x16u);
      sub_1000F5104(&unk_100938E70, &unk_100797230);
      swift_arrayDestroy();
      v185 = v406;

      v191 = v403;
    }

    v390 = [v417 assignedDate];
    if (v390)
    {
      v391 = v409;
      v392 = v390;
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      v202.super.isa = Date._bridgeToObjectiveC()().super.isa;
      (*(v410 + 8))(v391, v411);
    }

    else
    {
      v202.super.isa = 0;
    }

    v116 = v416;
    v268 = [objc_opt_self() nullifiedOriginatorAssignmentWithObjectID:v382 accountID:v185 reminderID:v383 assigneeID:v188 status:v402 assignedDate:v202.super.isa];
    v192 = 0;
    goto LABEL_163;
  }

  v189 = v187;

  v190 = v189;
  v191 = v403;
LABEL_75:
  v192 = v190;
  v193 = [v417 assignedDate];
  if (v193)
  {
    v194 = v408;
    v195 = v193;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v196 = v415;
    v197 = v415;
    v198 = v413;
    v199 = v413;
    v200 = v185;
    v201 = v188;
    v202.super.isa = Date._bridgeToObjectiveC()().super.isa;
    (*(v410 + 8))(v194, v411);
  }

  else
  {
    v196 = v415;
    v264 = v415;
    v198 = v413;
    v265 = v413;
    v266 = v185;
    v267 = v188;
    v202.super.isa = 0;
  }

  v268 = [objc_allocWithZone(REMAssignment) initWithObjectID:v196 accountID:v185 reminderID:v198 assigneeID:v188 originatorID:v192 status:v402 assignedDate:v202.super.isa];

  v269 = v198;
  v137 = v404;
LABEL_163:

  v44 = v268;
  v393 = [v417 assignee];
  v394 = v393;
  if (v393)
  {
  }

  [(RDXPCStorePerformer *)v44 set_debug_cdAssigneeLinked:v394 != 0];
  v395 = [v417 originator];
  v396 = v395;
  if (v395)
  {
  }

  [(RDXPCStorePerformer *)v44 set_debug_cdOriginatorLinked:v396 != 0];

  (*(v191 + 8))(v405, v116);
  sub_1000050A4(v137, &unk_100939D90, "8\n\r");
  return v44;
}

void sub_10031109C(void *a1, void *a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6, v8);
  v10 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = type metadata accessor for Date();
  *&v13 = __chkstk_darwin(v52, v11).n128_u64[0];
  v51 = &v49 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(a3 + 16);
  if (!v15)
  {
    return;
  }

  v16 = (a3 + 32);
  v17 = (v7 + 8);
  v50 = (v12 + 8);
  while (1)
  {
    v22 = *v16++;
    v21 = v22;
    if (v22 > 2)
    {
      if (v21 == 3)
      {
        v37 = [a1 assigneeID];
        v38 = [v37 uuid];

        static UUID._unconditionallyBridgeFromObjectiveC(_:)();
        UUID.uuidString.getter();
        v40 = v39;
        (*v17)(v10, v6);
        v20.super.isa = String._bridgeToObjectiveC()();
        v40, v41, v42, v43, v44, v45, v46, v47;
        [a2 setCkAssigneeIdentifier:v20.super.isa];
      }

      else
      {
        if (v21 != 4 || ([a1 isOriginatorNullified] & 1) != 0)
        {
          goto LABEL_5;
        }

        v26 = [a1 originatorID];
        v27 = [v26 uuid];

        static UUID._unconditionallyBridgeFromObjectiveC(_:)();
        UUID.uuidString.getter();
        v29 = v28;
        (*v17)(v10, v6);
        v20.super.isa = String._bridgeToObjectiveC()();
        v29, v30, v31, v32, v33, v34, v35, v36;
        [a2 setCkOriginatorIdentifier:v20.super.isa];
      }

      goto LABEL_4;
    }

    if (!v21)
    {
      v18 = [a1 objectID];
      v19 = [v18 uuid];

      static UUID._unconditionallyBridgeFromObjectiveC(_:)();
      v20.super.isa = UUID._bridgeToObjectiveC()().super.isa;
      (*v17)(v10, v6);
      [a2 setIdentifier:v20.super.isa];
LABEL_4:

      goto LABEL_5;
    }

    if (v21 == 1)
    {
      v23 = [a1 assignedDate];
      if (v23)
      {
        v24 = v51;
        v25 = v23;
        static Date._unconditionallyBridgeFromObjectiveC(_:)();

        v20.super.isa = Date._bridgeToObjectiveC()().super.isa;
        (*v50)(v24, v52);
      }

      else
      {
        v20.super.isa = 0;
      }

      [a2 setAssignedDate:v20.super.isa];
      goto LABEL_4;
    }

    v48 = [a1 status];
    if (v48 < -32768)
    {
      break;
    }

    if (v48 >= 0x8000)
    {
      goto LABEL_23;
    }

    [a2 setStatus:v48];
LABEL_5:
    if (!--v15)
    {
      return;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
}

_TtC7remindd19RDXPCStorePerformer *sub_1003114A0(void *a1, unsigned __int8 a2)
{
  if (a2 > 1u)
  {
    if (a2 == 2)
    {
      sub_1000F5104(&unk_100939D60, &unk_1007959E0);
      v7 = swift_allocObject();
      *(v7 + 16) = xmmword_1007953F0;
      v8 = [a1 assigneeID];
    }

    else
    {
      if ([a1 isOriginatorNullified])
      {
        return &_swiftEmptyArrayStorage;
      }

      sub_1000F5104(&unk_100939D60, &unk_1007959E0);
      v7 = swift_allocObject();
      *(v7 + 16) = xmmword_1007953F0;
      v8 = [a1 originatorID];
    }

    v12 = v8;
    result = v7;
    *(v7 + 32) = v12;
  }

  else
  {
    if (a2)
    {
      sub_1000F5104(&unk_100939D60, &unk_1007959E0);
      v3 = swift_allocObject();
      v4 = v3;
      *(v3 + 16) = xmmword_1007953F0;
      v5 = *(v2 + 24);
    }

    else
    {
      sub_1000F5104(&unk_100939D60, &unk_1007959E0);
      v3 = swift_allocObject();
      v4 = v3;
      *(v3 + 16) = xmmword_1007953F0;
      v5 = *(v2 + 16);
    }

    *(v3 + 32) = v5;
    v9 = v5;
    return v4;
  }

  return result;
}

unint64_t sub_100311670()
{
  result = qword_100941DF0;
  if (!qword_100941DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100941DF0);
  }

  return result;
}

unint64_t sub_1003116F8()
{
  result = qword_100941E08;
  if (!qword_100941E08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100941E08);
  }

  return result;
}

id sub_10031174C(uint64_t *a1, void *a2, void *a3, void *a4)
{
  v115 = a2;
  v116 = a3;
  v117 = a4;
  v5 = type metadata accessor for Date();
  v111 = *(v5 - 8);
  __chkstk_darwin(v5, v6);
  v8 = &v107 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a1;
  if (*a1)
  {
    v10 = *(v9 + 16);
    v11 = &_swiftEmptyArrayStorage;
    if (v10)
    {
      v118 = &_swiftEmptyArrayStorage;
      specialized ContiguousArray.reserveCapacity(_:)();
      v12 = (v9 + 32);
      do
      {
        v13 = *v12++;
        [objc_allocWithZone(NSNumber) initWithInteger:v13];
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        --v10;
      }

      while (v10);
      v11 = v118;
    }

    v113 = v11;
    v14 = a1[1];
    if (v14)
    {
LABEL_7:
      v15 = *(v14 + 16);
      v16 = &_swiftEmptyArrayStorage;
      if (v15)
      {
        v118 = &_swiftEmptyArrayStorage;
        specialized ContiguousArray.reserveCapacity(_:)();
        v17 = objc_opt_self();
        v18 = (v14 + 40);
        do
        {
          v19 = [v17 dayOfWeek:*(v18 - 1) weekNumber:*v18];
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
          v18 += 2;
          --v15;
        }

        while (v15);
        v16 = v118;
      }

      v20 = a1[2];
      if (v20)
      {
        goto LABEL_12;
      }

LABEL_18:
      v22 = 0;
      goto LABEL_19;
    }
  }

  else
  {
    v113 = 0;
    v14 = a1[1];
    if (v14)
    {
      goto LABEL_7;
    }
  }

  v16 = 0;
  v20 = a1[2];
  if (!v20)
  {
    goto LABEL_18;
  }

LABEL_12:
  v21 = *(v20 + 16);
  v22 = &_swiftEmptyArrayStorage;
  if (v21)
  {
    v112 = v5;
    v118 = &_swiftEmptyArrayStorage;
    specialized ContiguousArray.reserveCapacity(_:)();
    v23 = (v20 + 32);
    do
    {
      v24 = *v23++;
      [objc_allocWithZone(NSNumber) initWithInteger:v24];
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      --v21;
    }

    while (v21);
    v22 = v118;
    v5 = v112;
  }

LABEL_19:
  v25 = *(a1 + 32);
  v108 = v16;
  if (v25)
  {
    v112 = 0;
  }

  else
  {
    Date.init(timeIntervalSinceReferenceDate:)();
    isa = Date._bridgeToObjectiveC()().super.isa;
    v112 = [objc_opt_self() recurrenceEndWithEndDate:isa];

    (*(v111 + 8))(v8, v5);
  }

  v27 = a1[5];
  v110 = a1[6];
  v111 = v27;
  v28 = a1[8];
  v109 = a1[7];
  if (v28)
  {
    v29 = *(v28 + 16);
    v30 = &_swiftEmptyArrayStorage;
    if (v29)
    {
      v118 = &_swiftEmptyArrayStorage;
      specialized ContiguousArray.reserveCapacity(_:)();
      v31 = (v28 + 32);
      do
      {
        v32 = *v31++;
        [objc_allocWithZone(NSNumber) initWithInteger:v32];
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        --v29;
      }

      while (v29);
      v30 = v118;
    }

    v33 = a1[9];
    if (v33)
    {
LABEL_28:
      v34 = *(v33 + 16);
      v35 = &_swiftEmptyArrayStorage;
      if (v34)
      {
        v107 = v22;
        v118 = &_swiftEmptyArrayStorage;
        specialized ContiguousArray.reserveCapacity(_:)();
        v36 = (v33 + 32);
        do
        {
          v37 = *v36++;
          [objc_allocWithZone(NSNumber) initWithInteger:v37];
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
          --v34;
        }

        while (v34);
        v35 = v118;
        v22 = v107;
      }

      v38 = a1[10];
      if (v38)
      {
        goto LABEL_33;
      }

LABEL_39:
      sub_100311E40(a1);
      v42 = 0;
      goto LABEL_41;
    }
  }

  else
  {
    v30 = 0;
    v33 = a1[9];
    if (v33)
    {
      goto LABEL_28;
    }
  }

  v35 = 0;
  v38 = a1[10];
  if (!v38)
  {
    goto LABEL_39;
  }

LABEL_33:
  v39 = *(v38 + 16);
  if (v39)
  {
    v107 = v22;
    v118 = &_swiftEmptyArrayStorage;
    specialized ContiguousArray.reserveCapacity(_:)();
    v40 = (v38 + 32);
    do
    {
      v41 = *v40++;
      [objc_allocWithZone(NSNumber) initWithInteger:v41];
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      --v39;
    }

    while (v39);
    sub_100311E40(a1);
    v42 = v118;
    v22 = v107;
  }

  else
  {
    sub_100311E40(a1);
    v42 = &_swiftEmptyArrayStorage;
  }

LABEL_41:
  v43 = v113;
  v44 = v108;
  if (v108)
  {
    sub_1000060C8(0, &qword_100941E10, REMRecurrenceDayOfWeek_ptr);
    v45.super.isa = Array._bridgeToObjectiveC()().super.isa;
    v44, v46, v47, v48, v49, v50, v51, v52;
    if (v43)
    {
      goto LABEL_43;
    }
  }

  else
  {
    v45.super.isa = 0;
    if (v113)
    {
LABEL_43:
      sub_1000060C8(0, &qword_100938DE0, NSNumber_ptr);
      v53.super.isa = Array._bridgeToObjectiveC()().super.isa;
      v43, v54, v55, v56, v57, v58, v59, v60;
      if (v30)
      {
        goto LABEL_44;
      }

      goto LABEL_50;
    }
  }

  v53.super.isa = 0;
  if (v30)
  {
LABEL_44:
    sub_1000060C8(0, &qword_100938DE0, NSNumber_ptr);
    v61.super.isa = Array._bridgeToObjectiveC()().super.isa;
    v30, v62, v63, v64, v65, v66, v67, v68;
    if (v42)
    {
      goto LABEL_45;
    }

    goto LABEL_51;
  }

LABEL_50:
  v61.super.isa = 0;
  if (v42)
  {
LABEL_45:
    sub_1000060C8(0, &qword_100938DE0, NSNumber_ptr);
    v69.super.isa = Array._bridgeToObjectiveC()().super.isa;
    v42, v70, v71, v72, v73, v74, v75, v76;
    if (v22)
    {
      goto LABEL_46;
    }

LABEL_52:
    v77.super.isa = 0;
    if (v35)
    {
      goto LABEL_47;
    }

LABEL_53:
    v85.super.isa = 0;
    goto LABEL_54;
  }

LABEL_51:
  v69.super.isa = 0;
  if (!v22)
  {
    goto LABEL_52;
  }

LABEL_46:
  sub_1000060C8(0, &qword_100938DE0, NSNumber_ptr);
  v77.super.isa = Array._bridgeToObjectiveC()().super.isa;
  v22, v78, v79, v80, v81, v82, v83, v84;
  if (!v35)
  {
    goto LABEL_53;
  }

LABEL_47:
  sub_1000060C8(0, &qword_100938DE0, NSNumber_ptr);
  v85.super.isa = Array._bridgeToObjectiveC()().super.isa;
  v35, v86, v87, v88, v89, v90, v91, v92;
LABEL_54:
  v93 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v94 = v112;
  v105 = v69.super.isa;
  v106 = v77.super.isa;
  v104 = v53.super.isa;
  v114 = v77.super.isa;
  v95 = v69.super.isa;
  v96 = v53.super.isa;
  v97 = v45.super.isa;
  v103 = v45.super.isa;
  v99 = v115;
  v98 = v116;
  v100 = v117;
  v101 = [v93 initRecurrenceRuleWithObjectID:v115 accountID:v116 reminderID:v117 frequency:v110 interval:v109 firstDayOfTheWeek:v111 daysOfTheWeek:v103 daysOfTheMonth:v104 monthsOfTheYear:v61.super.isa weeksOfTheYear:v105 daysOfTheYear:v106 setPositions:v85.super.isa end:v112];

  return v101;
}

uint64_t sub_100311E94(uint64_t a1)
{
  v24[0] = a1;
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v2 = *(v1 - 8);
  v28 = v1;
  v29 = v2;
  __chkstk_darwin(v1, v3);
  v25 = v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v5, v6);
  v7 = type metadata accessor for DispatchQoS();
  v26 = *(v7 - 8);
  v27 = v7;
  __chkstk_darwin(v7, v8);
  v10 = v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11, v13);
  v15 = v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000060C8(0, &qword_10093E6E0, OS_dispatch_queue_ptr);
  (*(v12 + 104))(v15, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v11);
  static DispatchQoS.unspecified.getter();
  aBlock[0] = &_swiftEmptyArrayStorage;
  sub_10031D8C4(&qword_100936EE0, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_1000F5104(&unk_10093FEE0, &qword_100791B00);
  sub_10000CB90(&qword_100936EF0, &unk_10093FEE0, &qword_100791B00);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v16 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v17 = swift_allocObject();
  v18 = v24[0];
  *(v17 + 16) = v24[1];
  *(v17 + 24) = v18;
  aBlock[4] = sub_10031D90C;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100019200;
  aBlock[3] = &unk_1008EE090;
  v19 = _Block_copy(aBlock);
  v20 = v18;
  static DispatchQoS.unspecified.getter();
  v30 = &_swiftEmptyArrayStorage;
  sub_10031D8C4(&qword_100936E90, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1000F5104(&unk_100939E50, &unk_100791AD0);
  sub_10000CB90(&qword_100936EA0, &unk_100939E50, &unk_100791AD0);
  v21 = v25;
  v22 = v28;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v19);

  (*(v29 + 8))(v21, v22);
  (*(v26 + 8))(v10, v27);
}

_TtC7remindd19RDXPCStorePerformer *sub_100312328(uint64_t a1)
{
  v35 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v2 = __CocoaSet.count.getter();
  }

  else
  {
    v2 = *(a1 + 16);
  }

  result = &_swiftEmptyArrayStorage;
  if (v2)
  {
    v42 = &_swiftEmptyArrayStorage;
    sub_100010D04(0, v2 & ~(v2 >> 63), 0);
    v36 = &_swiftEmptyArrayStorage;
    if (v35)
    {
      v4 = __CocoaSet.startIndex.getter();
    }

    else
    {
      v4 = _HashTable.startBucket.getter();
      v5 = *(a1 + 36);
    }

    v39 = v4;
    v40 = v5;
    v41 = v35 != 0;
    if ((v2 & 0x8000000000000000) == 0)
    {
      v6 = 0;
      while (v6 < v2)
      {
        if (__OFADD__(v6++, 1))
        {
          goto LABEL_36;
        }

        v15 = v39;
        v14 = v40;
        v16 = v41;
        sub_100411DBC(v39, v40, v41, a1);
        v17 = dispatch thunk of AnyKeyPath._kvcKeyPathString.getter();
        if (!v18)
        {
          goto LABEL_43;
        }

        v19 = v17;
        v20 = v18;
        v38 = &type metadata for String;

        *&v37 = v19;
        *(&v37 + 1) = v20;
        v21 = v36;
        v42 = v36;
        v23 = *v36->clientIdentity;
        v22 = *&v36->clientIdentity[8];
        if (v23 >= v22 >> 1)
        {
          sub_100010D04((v22 > 1), v23 + 1, 1);
          v21 = v42;
        }

        *v21->clientIdentity = v23 + 1;
        v36 = v21;
        sub_100005EE0(&v37, &v21->clientIdentity[32 * v23 + 16]);
        if (v35)
        {
          if (!v16)
          {
            goto LABEL_41;
          }

          if (__CocoaSet.Index.handleBitPattern.getter())
          {
            swift_isUniquelyReferenced_nonNull_native();
          }

          sub_1000F5104(&qword_100941FA8, &qword_1007A2418);
          v7 = Set.Index._asCocoa.modify();
          __CocoaSet.formIndex(after:isUnique:)();
          v7(&v37, 0);
          if (v6 == v2)
          {
LABEL_33:
            sub_100010E34(v39, v40, v41, v8, v9, v10, v11, v12);
            return v36;
          }
        }

        else
        {
          if (v16)
          {
            goto LABEL_42;
          }

          if ((v15 & 0x8000000000000000) != 0)
          {
            goto LABEL_37;
          }

          v24 = (1 << *(a1 + 32));
          if (v15 >= v24)
          {
            goto LABEL_37;
          }

          v25 = v15 >> 6;
          v26 = *(a1 + 56 + 8 * (v15 >> 6));
          if (((v26 >> v15) & 1) == 0)
          {
            goto LABEL_38;
          }

          if (*(a1 + 36) != v14)
          {
            goto LABEL_39;
          }

          v27 = v26 & (-2 << (v15 & 0x3F));
          if (v27)
          {
            v24 = (__clz(__rbit64(v27)) | v15 & 0x7FFFFFFFFFFFFFC0);
          }

          else
          {
            v28 = v25 << 6;
            v29 = v25 + 1;
            v30 = (a1 + 64 + 8 * v25);
            while (v29 < &v24->storeProvider[1] >> 6)
            {
              v32 = *v30++;
              v31 = v32;
              v28 += 64;
              ++v29;
              if (v32)
              {
                sub_100010E34(v15, v14, 0, v8, v9, v10, v11, v12);
                v24 = (__clz(__rbit64(v31)) + v28);
                goto LABEL_32;
              }
            }

            sub_100010E34(v15, v14, 0, v8, v9, v10, v11, v12);
          }

LABEL_32:
          v33 = *(a1 + 36);
          v39 = v24;
          v40 = v33;
          v41 = 0;
          if (v6 == v2)
          {
            goto LABEL_33;
          }
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
      __break(1u);
    }

    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    *&v37 = 0;
    *(&v37 + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(46);
    v34._object = 0x80000001007EC120;
    v34._countAndFlagsBits = 0xD00000000000002CLL;
    String.append(_:)(v34);
    sub_1000F5104(&qword_1009431E0, &qword_1007A2410);
    _print_unlocked<A, B>(_:_:)();
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t sub_100312738(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v64 = a1;
  v5 = type metadata accessor for UnmigrateRequest(0);
  __chkstk_darwin(v5, v6);
  v8 = (v63 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = type metadata accessor for UUID();
  v66 = *(v9 - 8);
  v67 = v9;
  __chkstk_darwin(v9, v10);
  v65 = v63 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10031512C();
  v13 = String._bridgeToObjectiveC()();
  v14 = [v12 codeServiceWithName:v13 databaseScope:2];

  type metadata accessor for TantorMigrationAPIAsyncOperationClient();
  inited = swift_initStackObject();
  v69 = v14;
  *(inited + 16) = v14;
  if (qword_100935EB8 != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  v16 = sub_100006654(v15, qword_100941E18);

  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v63[1] = v5;
    v20 = v19;
    v21 = swift_slowAlloc();
    v63[0] = v16;
    v22 = v21;
    v70 = v21;
    *v20 = 136446210;
    v23 = [*(v3 + 24) uuid];
    v24 = v65;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v25 = v3;
    v26 = UUID.uuidString.getter();
    v27 = v8;
    v28 = a2;
    v30 = v29;
    (*(v66 + 8))(v24, v67);
    v31 = v26;
    v3 = v25;
    v32 = sub_10000668C(v31, v30, &v70);
    v33 = v30;
    a2 = v28;
    v8 = v27;
    v33, v34, v35, v36, v37, v38, v39, v40;
    *(v20 + 4) = v32;
    _os_log_impl(&_mh_execute_header, v17, v18, "Setting up unmigration service call {accountID: %{public}s}", v20, 0xCu);
    sub_10000607C(v22);
  }

  *v8 = 0;
  UnknownStorage.init()();

  v41 = Logger.logObject.getter();
  v42 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v41, v42))
  {
    v43 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    v70 = v44;
    *v43 = 136446210;
    v45 = [*(v3 + 24) uuid];
    v46 = v65;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v47 = UUID.uuidString.getter();
    v49 = v48;
    (*(v66 + 8))(v46, v67);
    v50 = sub_10000668C(v47, v49, &v70);
    v49, v51, v52, v53, v54, v55, v56, v57;
    *(v43 + 4) = v50;
    _os_log_impl(&_mh_execute_header, v41, v42, "Making request to inverness for unmigration {accountID: %{public}s}", v43, 0xCu);
    sub_10000607C(v44);
  }

  v58 = swift_allocObject();
  *(v58 + 16) = v64;
  *(v58 + 24) = a2;

  v59 = TantorMigrationAPIAsyncOperationClient.unmigrate(_:completion:)(v8, sub_10031D7EC, v58);

  v60 = sub_1003152A4();
  sub_10031D370(v59, v60, v61, &unk_1008EDFC8);

  return sub_10031D85C(v8, type metadata accessor for UnmigrateRequest);
}

void sub_100312C34(char a1, char a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = type metadata accessor for REMMigrationResultState();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10, v12);
  v14 = &v50 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v5 + 48);
  os_unfair_lock_lock(v15);
  *(v5 + 91) = a1;
  v16 = swift_allocObject();
  *(v16 + 16) = a3;
  *(v16 + 24) = a4;
  swift_beginAccess();
  v17 = *(v5 + 40);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v5 + 40) = v17;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v17 = sub_1003667AC(0, (*v17->clientIdentity + 1), 1, v17);
    *(v5 + 40) = v17;
  }

  v20 = *v17->clientIdentity;
  v19 = *&v17->clientIdentity[8];
  if (v20 >= v19 >> 1)
  {
    v17 = sub_1003667AC((v19 > 1), (v20 + 1), 1, v17);
  }

  *v17->clientIdentity = v20 + 1;
  v21 = v17 + 16 * v20;
  *(v21 + 4) = sub_10031D7A0;
  *(v21 + 5) = v16;
  *(v5 + 40) = v17;
  swift_endAccess();
  if ((*(v5 + 89) & 1) == 0)
  {
    sub_10031571C(sub_10031D994, v5);
  }

  v22 = *(v5 + 32);
  if (v22 > 1)
  {
    if (v22 == 2)
    {
      v23 = *(v5 + 56);
      v24 = *(v5 + 64);
      if (v24 == 255)
      {
        (*(v11 + 104))(v14, enum case for REMMigrationResultState.complete(_:), v10);
        REMMigrationResultState.rawValue.getter();
        v31 = v30;
        (*(v11 + 8))(v14, v10);
        v32 = objc_allocWithZone(REMMigrationResult);
        v33 = String._bridgeToObjectiveC()();
        v31, v34, v35, v36, v37, v38, v39, v40;
        v41 = String._bridgeToObjectiveC()();
        v25 = [v32 initWithState:v33 IsObserver:0 timeElapsed:0 listsMigrated:0 remindersMigrated:v41 log:0.0];

        v42 = *(v5 + 56);
        *(v5 + 56) = v25;
        LOBYTE(v41) = *(v5 + 64);
        *(v5 + 64) = 0;
        v43 = v25;
        sub_10031D788(v42, v41);
        v26 = 0;
      }

      else
      {
        v25 = *(v5 + 56);
        v26 = *(v5 + 64);
      }

      sub_10031D7D4(v23, v24);
      sub_10031D7D4(v23, v24);
      sub_100317644(v25, v26 & 1);
      sub_100067078(v25, v26 & 1);
      v44 = v26 & 1;
      goto LABEL_24;
    }
  }

  else if (*(v5 + 32))
  {
    goto LABEL_25;
  }

  if (v22 == 3 && (a2 & 1) == 0)
  {
    v27 = *(v5 + 56);
    v28 = *(v5 + 64);
    if (v28 == 255)
    {
      v45 = objc_opt_self();
      v46 = String._bridgeToObjectiveC()();
      v25 = [v45 internalErrorWithDebugDescription:v46];

      v47 = *(v5 + 56);
      *(v5 + 56) = v25;
      v48 = *(v5 + 64);
      v29 = 1;
      *(v5 + 64) = 1;
      v49 = v25;
      sub_10031D788(v47, v48);
    }

    else
    {
      v25 = *(v5 + 56);
      v29 = *(v5 + 64);
    }

    sub_10031D7D4(v27, v28);
    sub_10031D7D4(v27, v28);
    sub_100317644(v25, v29 & 1);
    sub_100067078(v25, v29 & 1);
    v44 = v29 & 1;
LABEL_24:
    sub_100067078(v25, v44);
    goto LABEL_25;
  }

  *(v5 + 32) = 1;
  if (*(v5 + 88) == 1)
  {
    *(v5 + 72) = 0;
    *(v5 + 80) = 0;
    *(v5 + 88) = 0;
    sub_10031571C(sub_10031D990, v5);
    sub_100316840();
  }

  sub_100314078(a2 & 1);
LABEL_25:
  os_unfair_lock_unlock(v15);
}

uint64_t sub_100313098()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_100941E18);
  v1 = sub_100006654(v0, qword_100941E18);
  if (qword_100936438 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_100974FF0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

Swift::Int sub_100313160()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_1003131D4(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

uint64_t sub_100313218@<X0>(unsigned __int16 *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10031D598(*a1);
  *a2 = result;
  return result;
}

void *sub_100313250()
{
  result = sub_10038EB8C(&_swiftEmptyArrayStorage);
  off_100941E30 = result;
  return result;
}

_DWORD *sub_100313278()
{
  result = swift_slowAlloc();
  *result = 0;
  qword_100941E38 = result;
  return result;
}

void sub_1003132A4(void *a1)
{
  v2 = v1;
  if (qword_100935EB8 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100006654(v4, qword_100941E18);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "Resume all uncompleted migration processes", v7, 2u);
  }

  if (qword_100935EC8 != -1)
  {
    swift_once();
  }

  v8 = qword_100941E38;
  os_unfair_lock_lock(qword_100941E38);
  v9 = String._bridgeToObjectiveC()();
  v10 = [a1 newBackgroundContextWithAuthor:v9];

  KeyPath = swift_getKeyPath();
  v12 = sub_100392664(KeyPath, 1);

  v13 = swift_getKeyPath();
  v14 = sub_100392678(v13, 0);

  sub_1000F5104(&qword_100941FA0, &unk_1007A2400);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100791340;
  *(inited + 32) = v12;
  *(inited + 40) = v14;
  v16 = v14;
  v17 = v12;
  v18 = sub_10000C2B0();
  v19 = swift_allocObject();
  v19[2] = v10;
  v19[3] = v18;
  v19[4] = v2;
  v19[5] = a1;
  v20 = swift_allocObject();
  *(v20 + 16) = sub_10031D94C;
  *(v20 + 24) = v19;
  v25[4] = sub_1000FDA90;
  v25[5] = v20;
  v25[0] = _NSConcreteStackBlock;
  v25[1] = 1107296256;
  v25[2] = sub_10000F160;
  v25[3] = &unk_1008EE108;
  v21 = _Block_copy(v25);
  v22 = v18;
  v23 = a1;

  v24 = v10;

  [v24 performBlockAndWait:v21];
  _Block_release(v21);
  LOBYTE(v10) = swift_isEscapingClosureAtFileLocation();

  if (v10)
  {
    __break(1u);
  }

  else
  {
    os_unfair_lock_unlock(v8);
  }
}

void sub_1003135FC(uint64_t (**a1)(char *, uint64_t, uint64_t), uint64_t a2, uint64_t a3, void *a4)
{
  v115 = a4;
  v119 = a1;
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  v116 = v5;
  v117 = v6;
  __chkstk_darwin(v5, v7);
  v9 = &v107 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10, v11);
  v13 = &v107 - v12;
  __chkstk_darwin(v14, v15);
  v17 = &v107 - v16;
  sub_1000F5104(&unk_100939D60, &unk_1007959E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1007953F0;
  *(inited + 32) = swift_getKeyPath();
  sub_1000060C8(0, &qword_100941F60, off_1008D41B0);
  v19 = [objc_allocWithZone(NSFetchRequest) init];
  v20 = [swift_getObjCClassFromMetadata() entity];
  [v19 setEntity:v20];

  [v19 setAffectedStores:0];
  [v19 setPredicate:a2];
  v121 = _swiftEmptySetSingleton;

  sub_1003928CC(v21);
  inited, v22, v23, v24, v25, v26, v27, v28;
  v29 = v121;
  v30 = sub_100312328(v121);
  v29, v31, v32, v33, v34, v35, v36, v37;
  isa = Array._bridgeToObjectiveC()().super.isa;
  v30, v39, v40, v41, v42, v43, v44, v45;
  [v19 setPropertiesToFetch:isa];

  swift_setDeallocating();
  swift_arrayDestroy();
  v46 = NSManagedObjectContext.fetch<A>(_:)();
  v47 = v117;
  v113 = v17;
  v114 = v13;
  v112 = v9;

  if (v46 >> 62)
  {
    v56 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v56 = *((v46 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v57 = v116;
  v58 = v113;
  v59 = v114;
  if (!v56)
  {
LABEL_25:
    v46, v48, v49, v50, v51, v52, v53, v54;
    return;
  }

  if (v56 >= 1)
  {
    v60 = 0;
    v61 = v46 & 0xC000000000000001;
    v62 = (v47 + 8);
    v119 = (v47 + 16);
    *&v55 = 136446210;
    v107 = v55;
    v110 = v56;
    v111 = v46;
    v109 = v46 & 0xC000000000000001;
    v118 = (v47 + 8);
    do
    {
      if (v61)
      {
        v63 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v63 = *(v46 + 8 * v60 + 32);
      }

      v64 = v63;
      v65 = [v63 accountIdentifier];
      if (v65)
      {
        v66 = v65;
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        if (qword_100935EC0 != -1)
        {
          swift_once();
        }

        swift_beginAccess();
        if (*(off_100941E30 + 2) && (sub_100363F20(v58), (v67 & 1) != 0))
        {
          swift_endAccess();

          (*v62)(v58, v57);
        }

        else
        {
          swift_endAccess();
          v68 = *v119;
          (*v119)(v59, v58, v57);
          sub_1000060C8(0, &qword_1009399F0, off_1008D4120);
          v69 = v58;
          v70 = [swift_getObjCClassFromMetadata() cdEntityName];
          if (!v70)
          {
            static String._unconditionallyBridgeFromObjectiveC(_:)();
            v72 = v71;
            v70 = String._bridgeToObjectiveC()();
            v72, v73, v74, v75, v76, v77, v78, v79;
          }

          v80 = objc_allocWithZone(REMObjectID);
          v81 = UUID._bridgeToObjectiveC()().super.isa;
          v82 = [v80 initWithUUID:v81 entityName:v70];

          v117 = *v118;
          v117(v59, v57);
          type metadata accessor for RDMigrationClient();
          swift_allocObject();
          v83 = v115;
          v84 = sub_10031C608(v82, v83);

          sub_100313FF4(v64);
          swift_beginAccess();

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v120 = off_100941E30;
          off_100941E30 = 0x8000000000000000;
          sub_1002C86E0(v84, v69, isUniquelyReferenced_nonNull_native);
          off_100941E30 = v120;
          swift_endAccess();
          if (qword_100935EB8 != -1)
          {
            swift_once();
          }

          v86 = type metadata accessor for Logger();
          sub_100006654(v86, qword_100941E18);
          v87 = v112;
          v68(v112, v69, v57);
          v88 = Logger.logObject.getter();
          v89 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v88, v89))
          {
            v90 = swift_slowAlloc();
            v91 = swift_slowAlloc();
            v121 = v91;
            *v90 = v107;
            v92 = UUID.uuidString.getter();
            v94 = v93;
            v95 = v87;
            v96 = v118;
            v108 = v64;
            v97 = v117;
            v117(v95, v116);
            v98 = sub_10000668C(v92, v94, &v121);
            v94, v99, v100, v101, v102, v103, v104, v105;
            *(v90 + 4) = v98;
            _os_log_impl(&_mh_execute_header, v88, v89, "Wake up migration client {accountID: %{public}s}", v90, 0xCu);
            sub_10000607C(v91);
            v57 = v116;

            v62 = v96;

            v106 = v97;
            v64 = v108;
          }

          else
          {

            v106 = v117;
            v62 = v118;
            v117(v87, v57);
          }

          v56 = v110;
          sub_100314078(0);

          v58 = v113;
          v106(v113, v57);
          v59 = v114;
          v46 = v111;
          v61 = v109;
        }
      }

      else
      {
      }

      ++v60;
    }

    while (v56 != v60);
    goto LABEL_25;
  }

  __break(1u);
}

uint64_t sub_100313E14@<X0>(id *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = [*a1 accountIdentifier];
  if (v3)
  {
    v4 = v3;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = type metadata accessor for UUID();
  v7 = *(*(v6 - 8) + 56);

  return v7(a2, v5, 1, v6);
}

void sub_100313EB8(uint64_t a1, void **a2)
{
  v4 = sub_1000F5104(&unk_100939D90, "8\n\r");
  __chkstk_darwin(v4 - 8, v5);
  v7 = &v12 - v6;
  sub_100010364(a1, &v12 - v6, &unk_100939D90, "8\n\r");
  v8 = *a2;
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  isa = 0;
  if ((*(v10 + 48))(v7, 1, v9) != 1)
  {
    isa = UUID._bridgeToObjectiveC()().super.isa;
    (*(v10 + 8))(v7, v9);
  }

  [v8 setAccountIdentifier:isa];
}

id sub_100313FF4(void *a1)
{
  v3 = [a1 state];
  if (v3 <= 3)
  {
    *(v1 + 32) = v3;
  }

  *(v1 + 72) = [a1 retryCount];
  *(v1 + 80) = [a1 failureCount];
  result = [a1 isTerminated];
  *(v1 + 88) = result;
  *(v1 + 89) = 1;
  return result;
}

void sub_100314078(int a1)
{
  v2 = v1;
  v312 = a1;
  v3 = type metadata accessor for MigrateRequest(0);
  __chkstk_darwin(v3, v4);
  v6 = &v299 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for MigrateRequest.User(0);
  __chkstk_darwin(v7, v8);
  v10 = &v299 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for UUID();
  v12 = *(v11 - 8);
  *&v14 = __chkstk_darwin(v11, v13).n128_u64[0];
  v16 = &v299 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(v2 + 24);
  v18 = [v17 uuid];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v311 = UUID.uuidString.getter();
  v20 = v19;
  (*(v12 + 8))(v16, v11);
  if (![objc_opt_self() isInternetReachable])
  {
    if (qword_100935EB8 != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    sub_100006654(v21, qword_100941E18);

    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.default.getter();
    v20, v24, v25, v26, v27, v28, v29, v30;
    if (os_log_type_enabled(v22, v23))
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v316[0] = v39;
      *v38 = 136446210;
      v40 = sub_10000668C(v311, v20, v316);
      v20, v41, v42, v43, v44, v45, v46, v47;
      *(v38 + 4) = v40;
      _os_log_impl(&_mh_execute_header, v22, v23, "Internet is not available. Will resume migration when we have reachability {accountID: %{public}s}", v38, 0xCu);
      sub_10000607C(v39);
    }

    else
    {
      v20, v31, v32, v33, v34, v35, v36, v37;
    }

    *(v2 + 92) = 1;
    *(v2 + 93) = (*(v2 + 93) | v312) & 1;
    return;
  }

  v310 = v6;
  v316[0] = 0xD000000000000010;
  v316[1] = 0x80000001007F4D40;
  v316[3] = 0;
  v317[0] = 0;
  v316[2] = 0;
  *(v317 + 6) = 0;
  v48 = sub_10040001C(v316, sub_10031B1B4, 0);
  v314 = v17;
  __chkstk_darwin(v48, v49);
  *(&v299 - 2) = &v314;

  v50 = sub_10032DE90(sub_10031D63C, (&v299 - 4), v48);
  v48, v51, v52, v53, v54, v55, v56, v57;
  if ((v50 & 1) == 0)
  {
    v20, v58, v59, v60, v61, v62, v63, v64;
    v119 = objc_opt_self();
    v314 = 0;
    v315 = 0xE000000000000000;
    _StringGuts.grow(_:)(148);
    v120._countAndFlagsBits = 0xD000000000000073;
    v120._object = 0x80000001007F4D60;
    String.append(_:)(v120);
    v121 = [v17 description];
    v122 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v124 = v123;

    v125._countAndFlagsBits = v122;
    v125._object = v124;
    String.append(_:)(v125);
    v124, v126, v127, v128, v129, v130, v131, v132;
    v133._countAndFlagsBits = 0xD00000000000001CLL;
    v133._object = 0x80000001007F4DE0;
    String.append(_:)(v133);
    v313 = v48;
    sub_1000F5104(&qword_100941F68, &qword_1007A2360);
    v134._countAndFlagsBits = String.init<A>(describing:)();
    object = v134._object;
    String.append(_:)(v134);
    object, v136, v137, v138, v139, v140, v141, v142;
    v143._countAndFlagsBits = 125;
    v143._object = 0xE100000000000000;
    String.append(_:)(v143);
    v144 = v315;
    v145 = String._bridgeToObjectiveC()();
    v144, v146, v147, v148, v149, v150, v151, v152;
    v153 = [v119 internalErrorWithDebugDescription:v145];

    v154 = v153;
    sub_100317644(v153, 1);

    return;
  }

  v308 = 0;
  v48, v58, v59, v60, v61, v62, v63, v64;
  v65 = sub_10031512C();
  v66 = String._bridgeToObjectiveC()();
  v67 = [v65 codeServiceWithName:v66 databaseScope:2];

  type metadata accessor for TantorMigrationAPIAsyncOperationClient();
  inited = swift_initStackObject();
  v307 = v67;
  *(inited + 16) = v67;
  if (qword_100935EB8 != -1)
  {
    swift_once();
  }

  v68 = type metadata accessor for Logger();
  v69 = sub_100006654(v68, qword_100941E18);

  v309 = v69;
  v70 = Logger.logObject.getter();
  v71 = static os_log_type_t.default.getter();
  v20, v72, v73, v74, v75, v76, v77, v78;
  if (os_log_type_enabled(v70, v71))
  {
    v79 = swift_slowAlloc();
    v80 = v10;
    v81 = swift_slowAlloc();
    v314 = v81;
    *v79 = 136446210;
    *(v79 + 4) = sub_10000668C(v311, v20, &v314);
    _os_log_impl(&_mh_execute_header, v70, v71, "Setting up migration service call {accountID: %{public}s}", v79, 0xCu);
    sub_10000607C(v81);
    v10 = v80;
  }

  v82 = v308;
  *v10 = 0;
  *(v10 + 2) = 0;
  UnknownStorage.init()();
  v308 = [objc_opt_self() sharedInstance];
  v83 = [v308 unsafeUntilSystemReady_iCloudAccountCalDavServiceWithAccountID:v17];
  if (!v83)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v85 = v84;
    v83 = String._bridgeToObjectiveC()();
    v85, v86, v87, v88, v89, v90, v91, v92;
  }

  v93 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v95 = v94;
  v96 = objc_allocWithZone(NSRegularExpression);
  v97 = sub_10031B768(0xD000000000000013, 0x80000001007F4E20, 0);
  if (v82)
  {

    v20, v105, v106, v107, v108, v109, v110, v111;
    v95, v112, v113, v114, v115, v116, v117, v118;

LABEL_27:
    v188 = Logger.logObject.getter();
    v189 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v188, v189))
    {
      v190 = swift_slowAlloc();
      *v190 = 0;
      _os_log_impl(&_mh_execute_header, v188, v189, "Failed to determine user CalDAV partition", v190, 2u);
    }

    v191 = objc_opt_self();
    v192 = String._bridgeToObjectiveC()();
    v193 = [v191 internalErrorWithDebugDescription:v192];

    sub_100317644(v193, 1);
    goto LABEL_30;
  }

  if (!v97)
  {
    v20, v98, v99, v100, v101, v102, v103, v104;
    v95, v174, v175, v176, v177, v178, v179, v180;

    goto LABEL_27;
  }

  v155 = v93;
  v156 = v97;

  v305 = v155;
  v157 = String.UTF16View.count.getter();
  v95, v158, v159, v160, v161, v162, v163, v164;
  v165 = [v156 firstMatchInString:v83 options:0 range:{0, v157}];

  if (!v165)
  {

    goto LABEL_26;
  }

  v304 = v156;
  if ([v165 numberOfRanges] < 2 || (objc_msgSend(v165, "rangeAtIndex:", 1), Range<>.init(_:in:)(), (v166 & 1) != 0))
  {

LABEL_26:
    v20, v167, v168, v169, v170, v171, v172, v173;
    v95, v181, v182, v183, v184, v185, v186, v187;
    goto LABEL_27;
  }

  v303 = v165;
  v194 = String.subscript.getter();
  if (!((v194 ^ v195) >> 14))
  {
    v197, v195, v196, v197, v198, v199, v200, v201;
LABEL_44:
    v20, v214, v215, v216, v217, v218, v219, v220;
    v95, v292, v293, v294, v295, v296, v297, v298;

    goto LABEL_27;
  }

  v202 = v194;
  v203 = v195;
  v302 = v196;
  v204 = v197;
  v205 = sub_10031BDCC(v194, v195, v196, v197, 10);
  if ((v205 & 0x10000000000) != 0)
  {
    sub_10031B844(v202, v203, v302, v204, 10);
  }

  v213 = v205;
  v204, v206, v207, v208, v209, v210, v211, v212;
  if ((v213 & 0x100000000) != 0)
  {
    goto LABEL_44;
  }

  v221 = v213;
  v302 = 0;

  v222 = Logger.logObject.getter();
  v223 = static os_log_type_t.default.getter();
  v20, v224, v225, v226, v227, v228, v229, v230;
  v95, v231, v232, v233, v234, v235, v236, v237;
  v301 = v222;
  if (os_log_type_enabled(v222, v223))
  {
    v245 = swift_slowAlloc();
    v300 = swift_slowAlloc();
    v314 = v300;
    *v245 = 67109634;
    v246 = v221;
    *(v245 + 4) = v221;
    *(v245 + 8) = 2082;
    v247 = sub_10000668C(v305, v95, &v314);
    v95, v248, v249, v250, v251, v252, v253, v254;
    *(v245 + 10) = v247;
    *(v245 + 18) = 2082;
    *(v245 + 20) = sub_10000668C(v311, v20, &v314);
    v255 = v301;
    _os_log_impl(&_mh_execute_header, v301, v223, "Migration call will use {partition: %u, serviceURLPrefix: %{public}s, accountID: %{public}s}", v245, 0x1Cu);
    swift_arrayDestroy();
  }

  else
  {
    v95, v238, v239, v240, v241, v242, v243, v244;

    v246 = v221;
  }

  *(v10 + 2) = v246;
  __chkstk_darwin(v256, v257);
  *(&v299 - 16) = v312 & 1;
  *(&v299 - 1) = v10;
  sub_10031D8C4(&qword_100937680, type metadata accessor for MigrateRequest, &protocol conformance descriptor for MigrateRequest);
  v258 = v310;
  static Message.with(_:)();

  v259 = Logger.logObject.getter();
  v260 = static os_log_type_t.default.getter();
  v20, v261, v262, v263, v264, v265, v266, v267;
  if (os_log_type_enabled(v259, v260))
  {
    v275 = swift_slowAlloc();
    v276 = v10;
    v277 = swift_slowAlloc();
    v314 = v277;
    *v275 = 136446210;
    v278 = sub_10000668C(v311, v20, &v314);
    v20, v279, v280, v281, v282, v283, v284, v285;
    *(v275 + 4) = v278;
    _os_log_impl(&_mh_execute_header, v259, v260, "Making request to inverness for migration {accountID: %{public}s}", v275, 0xCu);
    sub_10000607C(v277);
    v10 = v276;
    v258 = v310;
  }

  else
  {
    v20, v268, v269, v270, v271, v272, v273, v274;
  }

  v286 = *(v2 + 72);
  v287 = __OFADD__(v286, 1);
  v288 = v286 + 1;
  if (!v287)
  {
    *(v2 + 72) = v288;
    sub_10031571C(sub_10031D67C, v2);

    v289 = TantorMigrationAPIAsyncOperationClient.migrate(_:completion:)(v258, sub_10031D684, v2);

    v290 = sub_1003152A4();
    sub_10031D370(v289, v290, v291, &unk_1008EDE38);

    sub_10031D85C(v258, type metadata accessor for MigrateRequest);
LABEL_30:
    sub_10031D85C(v10, type metadata accessor for MigrateRequest.User);
    return;
  }

  __break(1u);
}

void sub_100314EAC(void *a1)
{
  v2 = [objc_opt_self() fetchRequest];
  v3 = [objc_allocWithZone(NSBatchDeleteRequest) initWithFetchRequest:v2];
  v23 = 0;
  v4 = [a1 executeRequest:v3 error:&v23];
  if (v4)
  {
    v5 = v4;
    v6 = v23;

LABEL_7:
    return;
  }

  v7 = v23;
  _convertNSErrorToError(_:)();

  swift_willThrow();
  if (qword_100935EB8 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_100006654(v8, qword_100941E18);
  swift_errorRetain();
  v5 = Logger.logObject.getter();
  v9 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v5, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v23 = v11;
    *v10 = 136446210;
    swift_errorRetain();
    sub_1000F5104(&unk_1009399E0, &qword_100795D00);
    v12 = String.init<A>(describing:)();
    v14 = v13;
    v15 = sub_10000668C(v12, v13, &v23);
    v14, v16, v17, v18, v19, v20, v21, v22;
    *(v10 + 4) = v15;
    _os_log_impl(&_mh_execute_header, v5, v9, "Failed to delete migration state entities from the database {error: %{public}s}", v10, 0xCu);
    sub_10000607C(v11);

    goto LABEL_7;
  }
}

id sub_10031512C()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1, v3);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v0 + 96);
  if (v6)
  {
    v7 = *(v0 + 96);
  }

  else
  {
    v8 = objc_opt_self();
    v9 = [*(v0 + 24) uuid];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v10 = v0;
    UUID.uuidString.getter();
    v12 = v11;
    (*(v2 + 8))(v5, v1);
    v13 = String._bridgeToObjectiveC()();
    v12, v14, v15, v16, v17, v18, v19, v20;
    v21 = [v8 newCloudContainerForAccountID:v13];

    v22 = *(v10 + 96);
    *(v10 + 96) = v21;
    v7 = v21;

    v6 = 0;
  }

  v23 = v6;
  return v7;
}

void (*sub_1003152A4())(void *a1)
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 112);
  if (v1)
  {
    v3 = *(v0 + 104);
  }

  else
  {
    v4 = swift_allocObject();
    swift_weakInit();
    v5 = *(v0 + 104);
    v6 = *(v0 + 112);
    v3 = sub_10031D68C;
    *(v0 + 104) = sub_10031D68C;
    *(v0 + 112) = v4;

    sub_10003E114(v5, v6);
  }

  sub_10003E124(v1, v2);
  return v3;
}

void sub_100315354(void *a1, uint64_t a2)
{
  if (a1)
  {
    v2 = [a1 requestUUID];
    v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v5 = v4;

    if (qword_100935EB8 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_100006654(v6, qword_100941E18);

    oslog = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();

    v5, v8, v9, v10, v11, v12, v13, v14;
    if (os_log_type_enabled(oslog, v7))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v37 = v24;
      *v22 = 136446466;
      v25 = sub_10000668C(v3, v5, &v37);
      v5, v26, v27, v28, v29, v30, v31, v32;
      *(v22 + 4) = v25;
      *(v22 + 12) = 2114;
      swift_beginAccess();
      Strong = swift_weakLoadStrong();
      if (Strong)
      {
        v34 = *(Strong + 24);

        v35 = v34;
      }

      else
      {
        v34 = 0;
        v35 = 0;
      }

      *(v22 + 14) = v34;
      *v23 = v35;
      _os_log_impl(&_mh_execute_header, oslog, v7, "Completed MigrationClient request {requestUUID: %{public}s, accountID: %{public}@}", v22, 0x16u);
      sub_1000050A4(v23, &unk_100938E70, &unk_100797230);

      sub_10000607C(v24);
    }

    else
    {
      v5, v15, v16, v17, v18, v19, v20, v21;
    }
  }
}

uint64_t sub_100315600()
{

  *(v0 + 40), v1, v2, v3, v4, v5, v6, v7;
  sub_10031D788(*(v0 + 56), *(v0 + 64));

  sub_10003E114(*(v0 + 104), *(v0 + 112));
  return v0;
}

uint64_t sub_10031565C()
{
  sub_100315600();

  return swift_deallocClassInstance();
}

unint64_t sub_1003156C8()
{
  result = qword_100941F58;
  if (!qword_100941F58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100941F58);
  }

  return result;
}

uint64_t sub_10031571C(uint64_t a1, uint64_t a2)
{
  v5 = sub_1000F5104(&unk_100939D90, "8\n\r");
  __chkstk_darwin(v5 - 8, v6);
  v8 = aBlock - v7;
  v9 = *(v2 + 16);
  v10 = String._bridgeToObjectiveC()();
  v11 = [v9 newBackgroundContextWithAuthor:v10];

  KeyPath = swift_getKeyPath();
  v13 = [*(v2 + 24) uuid];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v14 = type metadata accessor for UUID();
  (*(*(v14 - 8) + 56))(v8, 0, 1, v14);
  v15 = sub_1003923C0(KeyPath, v8);

  v16 = swift_allocObject();
  v16[2] = v11;
  v16[3] = v15;
  v16[4] = a1;
  v16[5] = a2;
  v17 = swift_allocObject();
  *(v17 + 16) = sub_10031D5B4;
  *(v17 + 24) = v16;
  aBlock[4] = sub_1000529DC;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000F160;
  aBlock[3] = &unk_1008EDE10;
  v18 = _Block_copy(aBlock);
  v19 = v15;

  v20 = v11;

  [v20 performBlockAndWait:v18];

  _Block_release(v18);
  LOBYTE(v20) = swift_isEscapingClosureAtFileLocation();

  if (v20)
  {
    __break(1u);
  }

  return result;
}

void sub_1003159B0(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  sub_1000060C8(0, &qword_100941F60, off_1008D41B0);
  v6 = [objc_allocWithZone(NSFetchRequest) init];
  v7 = [swift_getObjCClassFromMetadata() entity];
  [v6 setEntity:v7];

  [v6 setAffectedStores:0];
  [v6 setPredicate:a2];
  v8 = NSManagedObjectContext.fetch<A>(_:)();

  if (v8 >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_3;
    }

LABEL_11:
    v8, v9, v10, v11, v12, v13, v14, v15;
    v24 = 0;
    goto LABEL_7;
  }

  if (!*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_11;
  }

LABEL_3:
  if ((v8 & 0xC000000000000001) != 0)
  {
    v16 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return;
    }

    v16 = *(v8 + 32);
  }

  v25 = v16;
  v8, v17, v18, v19, v20, v21, v22, v23;
  v24 = v25;
LABEL_7:
  v26 = v24;
  a3(a1);
}

void sub_100315B60(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    sub_100313FF4(v2);
  }
}

void sub_100315BB0(void *a1, void *a2, uint64_t a3)
{
  v123 = sub_1000F5104(&unk_10093A3D0, &qword_100795770);
  __chkstk_darwin(v123, v6);
  v8 = &v116 - v7;
  v9 = sub_1000F5104(&unk_100939D90, "8\n\r");
  __chkstk_darwin(v9 - 8, v10);
  v122 = &v116 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12, v13);
  v15 = &v116 - v14;
  __chkstk_darwin(v16, v17);
  v127 = &v116 - v18;
  v19 = type metadata accessor for UUID();
  v20 = *(v19 - 8);
  __chkstk_darwin(v19, v21);
  v23 = &v116 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = &selRef_setRecordZoneChangeTokensUpdatedBlock_;
  v128 = a3;
  v129 = v20;
  v126 = v23;
  if (a2)
  {
    v25 = a2;
    v26 = v127;
    goto LABEL_12;
  }

  v125 = 0;
  v25 = [objc_allocWithZone(REMCDMigrationState) initWithContext:a1];
  v27 = *(a3 + 16);
  v120 = *(a3 + 24);
  v121 = v27;
  v28 = [v120 uuid];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  UUID.uuidString.getter();
  v29 = v23;
  v30 = a1;
  v32 = v31;
  v33 = *(v20 + 8);
  v33(v29, v19);
  v34 = String._bridgeToObjectiveC()();
  v32, v35, v36, v37, v38, v39, v40, v41;
  v42 = [v121 storeForAccountIdentifier:v34];

  if (v42)
  {
    [v30 assignObject:v25 toPersistentStore:v42];

    a1 = v30;
    a3 = v128;
LABEL_10:
    v24 = &selRef_setRecordZoneChangeTokensUpdatedBlock_;
    goto LABEL_11;
  }

  v119 = v33;
  v43 = v120;
  a1 = v30;
  if (qword_100935EB8 != -1)
  {
    swift_once();
  }

  v44 = type metadata accessor for Logger();
  sub_100006654(v44, qword_100941E18);
  a3 = v128;

  v45 = Logger.logObject.getter();
  v46 = static os_log_type_t.error.getter();

  v118 = v46;
  v121 = v45;
  v47 = os_log_type_enabled(v45, v46);
  v48 = v126;
  if (!v47)
  {

    goto LABEL_10;
  }

  v49 = v43;
  v50 = swift_slowAlloc();
  v116 = v50;
  v117 = swift_slowAlloc();
  v130 = v117;
  *v50 = 136446210;
  v51 = [v49 uuid];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v52 = UUID.uuidString.getter();
  v54 = v53;
  v119(v48, v19);
  v55 = sub_10000668C(v52, v54, &v130);
  v54, v56, v57, v58, v59, v60, v61, v62;
  v63 = v116;
  *(v116 + 1) = v55;
  v24 = &selRef_setRecordZoneChangeTokensUpdatedBlock_;
  v64 = v121;
  _os_log_impl(&_mh_execute_header, v121, v118, "Can't find CoreData store for saving CloudKit account migration state {accountID: %{public}s}", v63, 0xCu);
  sub_10000607C(v117);

LABEL_11:
  v26 = v127;
  a2 = v125;
LABEL_12:
  v65 = a2;
  v66 = [v25 accountIdentifier];
  v124 = a1;
  v125 = v25;
  if (v66)
  {
    v67 = v66;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v68 = 0;
  }

  else
  {
    v68 = 1;
  }

  v69 = v129;
  v70 = *(v129 + 56);
  v70(v26, v68, 1, v19);
  v71 = *(a3 + 24);
  v72 = [v71 v24[318]];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v70(v15, 0, 1, v19);
  v73 = *(v123 + 48);
  sub_100010364(v26, v8, &unk_100939D90, "8\n\r");
  sub_100010364(v15, &v8[v73], &unk_100939D90, "8\n\r");
  v74 = *(v69 + 48);
  if (v74(v8, 1, v19) == 1)
  {
    sub_1000050A4(v15, &unk_100939D90, "8\n\r");
    sub_1000050A4(v26, &unk_100939D90, "8\n\r");
    v75 = v74(&v8[v73], 1, v19);
    v76 = v125;
    v77 = v128;
    v78 = v129;
    if (v75 == 1)
    {
      sub_1000050A4(v8, &unk_100939D90, "8\n\r");
      goto LABEL_22;
    }

    goto LABEL_20;
  }

  v79 = v122;
  sub_100010364(v8, v122, &unk_100939D90, "8\n\r");
  if (v74(&v8[v73], 1, v19) == 1)
  {
    sub_1000050A4(v15, &unk_100939D90, "8\n\r");
    sub_1000050A4(v26, &unk_100939D90, "8\n\r");
    v78 = v129;
    (*(v129 + 8))(v79, v19);
    v76 = v125;
    v77 = v128;
LABEL_20:
    sub_1000050A4(v8, &unk_10093A3D0, &qword_100795770);
LABEL_21:
    v80 = [v71 uuid];
    v81 = v126;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    isa = UUID._bridgeToObjectiveC()().super.isa;
    (*(v78 + 8))(v81, v19);
    [v76 setAccountIdentifier:isa];

    goto LABEL_22;
  }

  v78 = v129;
  v87 = v126;
  (*(v129 + 32))(v126, &v8[v73], v19);
  sub_10031D8C4(&qword_10093A3E0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v88 = dispatch thunk of static Equatable.== infix(_:_:)();
  v89 = *(v78 + 8);
  v89(v87, v19);
  sub_1000050A4(v15, &unk_100939D90, "8\n\r");
  sub_1000050A4(v127, &unk_100939D90, "8\n\r");
  v89(v122, v19);
  sub_1000050A4(v8, &unk_100939D90, "8\n\r");
  v76 = v125;
  v77 = v128;
  if ((v88 & 1) == 0)
  {
    goto LABEL_21;
  }

LABEL_22:
  if ([v76 state] != *(v77 + 32))
  {
    [v76 setState:?];
  }

  v83 = *(v77 + 72);
  if (v83 < -32768)
  {
    LOWORD(v83) = 0x8000;
  }

  else
  {
    if (v83 < 0x8000)
    {
      goto LABEL_26;
    }

    LOWORD(v83) = 0x7FFF;
  }

  if (qword_100935EB8 != -1)
  {
    swift_once();
  }

  v108 = type metadata accessor for Logger();
  sub_100006654(v108, qword_100941E18);

  v109 = Logger.logObject.getter();
  v110 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v109, v110))
  {
    v111 = swift_slowAlloc();
    *v111 = 134217984;
    *(v111 + 4) = *(v77 + 72);

    _os_log_impl(&_mh_execute_header, v109, v110, "RDMigrationClient.saveState() clamping invocationCount: %ld", v111, 0xCu);
  }

  else
  {
  }

LABEL_26:
  if ([v76 retryCount] != v83)
  {
    [v76 setRetryCount:v83];
  }

  v84 = *(v77 + 80);
  if (v84 < -32768)
  {
    LOWORD(v84) = 0x8000;
  }

  else
  {
    if (v84 < 0x8000)
    {
      goto LABEL_30;
    }

    LOWORD(v84) = 0x7FFF;
  }

  if (qword_100935EB8 != -1)
  {
    swift_once();
  }

  v112 = type metadata accessor for Logger();
  sub_100006654(v112, qword_100941E18);

  v113 = Logger.logObject.getter();
  v114 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v113, v114))
  {
    v115 = swift_slowAlloc();
    *v115 = 134217984;
    *(v115 + 4) = *(v77 + 80);

    _os_log_impl(&_mh_execute_header, v113, v114, "RDMigrationClient.saveState() clamping failureCount: %ld", v115, 0xCu);
  }

  else
  {
  }

LABEL_30:
  if ([v76 failureCount] != v84)
  {
    [v76 setFailureCount:v84];
  }

  if ([v76 isTerminated] != *(v77 + 88))
  {
    [v76 setIsTerminated:?];
  }

  v85 = v124;
  if (![v124 hasChanges])
  {
    goto LABEL_37;
  }

  v130 = 0;
  if ([v85 save:&v130])
  {
    v86 = v130;
LABEL_37:

    return;
  }

  v90 = v130;
  _convertNSErrorToError(_:)();

  swift_willThrow();
  if (qword_100935EB8 != -1)
  {
    swift_once();
  }

  v91 = type metadata accessor for Logger();
  sub_100006654(v91, qword_100941E18);
  swift_errorRetain();
  v92 = Logger.logObject.getter();
  v93 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v92, v93))
  {
    v94 = swift_slowAlloc();
    v95 = swift_slowAlloc();
    v130 = v95;
    *v94 = 136446210;
    swift_getErrorValue();
    v96 = Error.localizedDescription.getter();
    v98 = v97;
    v99 = v76;
    v100 = sub_10000668C(v96, v97, &v130);
    v98, v101, v102, v103, v104, v105, v106, v107;
    *(v94 + 4) = v100;
    _os_log_impl(&_mh_execute_header, v92, v93, "Failed saving migration state {error: %{public}s}", v94, 0xCu);
    sub_10000607C(v95);
  }

  else
  {
  }
}

void sub_100316840()
{
  v1 = v0;
  v2 = type metadata accessor for UUID();
  v183 = *(v2 - 8);
  v184 = v2;
  __chkstk_darwin(v2, v3);
  v5 = v180 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6, v7);
  v9 = v180 - v8;
  if (*(v0 + 88) == 1)
  {
    type metadata accessor for Analytics();
    static Analytics.postEvent(_:payload:duration:)();
    v10 = "t and delete CalDAV account";
    v11 = 0xD000000000000039;
  }

  else
  {
    v11 = 0xD00000000000003BLL;
    v10 = "d migration after ";
  }

  v12 = (v10 | 0x8000000000000000);
  if (qword_100935EB8 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  v14 = sub_100006654(v13, qword_100941E18);

  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();

  v12, v17, v18, v19, v20, v21, v22, v23;
  v24 = os_log_type_enabled(v15, v16);
  v182 = v11;
  if (v24)
  {
    v32 = swift_slowAlloc();
    v181 = v13;
    v33 = v32;
    v34 = swift_slowAlloc();
    v180[0] = v5;
    v180[1] = v14;
    aBlock[0] = v34;
    *v33 = 136446466;
    v35 = sub_10000668C(v11, v12, aBlock);
    v12, v36, v37, v38, v39, v40, v41, v42;
    *(v33 + 4) = v35;
    *(v33 + 12) = 2082;
    v43 = [*(v1 + 24) uuid];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v44 = UUID.uuidString.getter();
    v46 = v45;
    v183[1](v9, v184);
    v47 = sub_10000668C(v44, v46, aBlock);
    v46, v48, v49, v50, v51, v52, v53, v54;
    *(v33 + 14) = v47;
    _os_log_impl(&_mh_execute_header, v15, v16, "RDAccountUtils will %{public}s {accountID: %{public}s}", v33, 0x16u);
    swift_arrayDestroy();
    v5 = v180[0];

    v13 = v181;
  }

  else
  {
    v12, v25, v26, v27, v28, v29, v30, v31;
  }

  v55 = [*(v1 + 16) accountUtils];
  if (!v55)
  {

    v98 = Logger.logObject.getter();
    v99 = static os_log_type_t.fault.getter();
    v12, v100, v101, v102, v103, v104, v105, v106;
    if (os_log_type_enabled(v98, v99))
    {
      v114 = swift_slowAlloc();
      v115 = swift_slowAlloc();
      aBlock[0] = v115;
      *v114 = 136446210;
      v116 = sub_10000668C(v182, v12, aBlock);
      v12, v117, v118, v119, v120, v121, v122, v123;
      *(v114 + 4) = v116;
      _os_log_impl(&_mh_execute_header, v98, v99, "No RDAccountUtils is found. Unable to %{public}s", v114, 0xCu);
      sub_10000607C(v115);
    }

    else
    {
      v12, v107, v108, v109, v110, v111, v112, v113;
    }

    return;
  }

  v56 = v55;
  v57 = *(v1 + 24);
  v58 = [v57 uuid];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v181 = UUID.uuidString.getter();
  v60 = v59;
  v183[1](v5, v184);
  LODWORD(v184) = *(v1 + 88);
  if (qword_100935D30 != -1)
  {
    swift_once();
  }

  v61 = qword_100974CC8;
  v62 = swift_allocObject();
  v62[2] = v182;
  v62[3] = v12;
  v62[4] = v57;
  v63 = qword_1009366E8;
  v64 = v57;
  if (v63 != -1)
  {
    swift_once();
  }

  sub_100006654(v13, qword_10094FB70);
  v65 = Logger.logObject.getter();
  v66 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v65, v66))
  {
    v67 = swift_slowAlloc();
    *v67 = 0;
    _os_log_impl(&_mh_execute_header, v65, v66, "RDAccountUtils: Process migration state change", v67, 2u);
  }

  v68 = swift_allocObject();
  v68[2] = v61;
  v68[3] = sub_10031D694;
  v68[4] = v62;
  v69 = objc_opt_self();
  v70 = v61;

  v71 = [v69 sharedInstance];
  v72 = [v71 accountStore];

  v73 = String._bridgeToObjectiveC()();
  v74 = [v72 accountWithIdentifier:v73];

  if (!v74)
  {
    goto LABEL_30;
  }

  v183 = v56;
  v75 = v72;
  v76 = [v74 accountType];
  if (!v76)
  {
    __break(1u);
    return;
  }

  v77 = v76;
  v78 = [v76 identifier];

  if (v78)
  {
    v79 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v81 = v80;

    v82 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v90 = v83;
    if (v81)
    {
      if (v79 == v82 && v81 == v83)
      {
        v81, v83, v82, v85, v86, v87, v88, v89;
        v90, v91, v92, v93, v94, v95, v96, v97;
        goto LABEL_34;
      }

      v142 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v81, v143, v144, v145, v146, v147, v148, v149;
      v90, v150, v151, v152, v153, v154, v155, v156;
      if (v142)
      {
LABEL_34:
        v157 = v75;
        v158 = v183;
        if ((v184 & 1) == 0 && ([v74 rem_didChooseToMigrate] & 1) == 0)
        {
          v159 = sub_1006BFC1C(v74);
          if (v160)
          {
            v161 = v160;
            sub_1006BC500(v159, v160);
            v161, v162, v163, v164, v165, v166, v167, v168;
          }
        }

        v169 = [v69 sharedInstance];
        v170 = swift_allocObject();
        *(v170 + 16) = v74;
        *(v170 + 24) = 1;
        *(v170 + 32) = v158;
        *(v170 + 40) = sub_10031D6A0;
        *(v170 + 48) = v68;
        aBlock[4] = sub_10031D6AC;
        aBlock[5] = v170;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_100007688;
        aBlock[3] = &unk_1008EDF00;
        v171 = _Block_copy(aBlock);
        v172 = v74;

        [v169 saveDidChooseToMigrate:v184 ^ 1 didFinishMigration:0 toACAccount:v172 inStore:v157 completionHandler:v171];
        _Block_release(v171);
        v60, v173, v174, v175, v176, v177, v178, v179;

        return;
      }

      goto LABEL_29;
    }
  }

  else
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v90 = v83;
  }

  v90, v83, v84, v85, v86, v87, v88, v89;
LABEL_29:

  v72 = v75;
LABEL_30:

  v124 = Logger.logObject.getter();
  v125 = static os_log_type_t.error.getter();
  v60, v126, v127, v128, v129, v130, v131, v132;
  if (os_log_type_enabled(v124, v125))
  {
    v140 = swift_slowAlloc();
    v141 = swift_slowAlloc();
    aBlock[0] = v141;
    *v140 = 136446210;
    *(v140 + 4) = sub_10000668C(v181, v60, aBlock);
    _os_log_impl(&_mh_execute_header, v124, v125, "RDAccountUtils: No ACAccount is found for updating migration state {acAccountID: %{public}s}", v140, 0xCu);
    sub_10000607C(v141);
  }

  v60, v133, v134, v135, v136, v137, v138, v139;
}

void sub_1003171E8(uint64_t a1, uint64_t a2, _TtC7remindd19RDXPCStorePerformer *a3, void *a4)
{
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8, v10);
  v12 = &v66 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    if (qword_100935EB8 != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    sub_100006654(v13, qword_100941E18);
    v14 = a4;

    swift_errorRetain();
    v67 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();
    a3, v16, v17, v18, v19, v20, v21, v22;

    if (os_log_type_enabled(v67, v15))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v66 = v8;
      v69 = v24;
      *v23 = 136446722;
      *(v23 + 4) = sub_10000668C(a2, a3, &v69);
      *(v23 + 12) = 2082;
      v68 = a1;
      swift_errorRetain();
      sub_1000F5104(&qword_10093B608, &unk_1007B20D0);
      v25 = String.init<A>(describing:)();
      v27 = v26;
      v28 = sub_10000668C(v25, v26, &v69);
      v27, v29, v30, v31, v32, v33, v34, v35;
      *(v23 + 14) = v28;
      *(v23 + 22) = 2082;
      v36 = [v14 uuid];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v37 = UUID.uuidString.getter();
      v39 = v38;
      (*(v9 + 8))(v12, v66);
      v40 = sub_10000668C(v37, v39, &v69);
      v39, v41, v42, v43, v44, v45, v46, v47;
      *(v23 + 24) = v40;
      _os_log_impl(&_mh_execute_header, v67, v15, "Failed to %{public}s {error: %{public}s, accountID: %{public}s}", v23, 0x20u);
      swift_arrayDestroy();

LABEL_10:

      return;
    }
  }

  else
  {
    if (qword_100935EB8 != -1)
    {
      swift_once();
    }

    v48 = type metadata accessor for Logger();
    sub_100006654(v48, qword_100941E18);
    v49 = a4;
    v67 = Logger.logObject.getter();
    v50 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v67, v50))
    {
      v51 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      v69 = v52;
      *v51 = 136446210;
      v53 = [v49 uuid];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v54 = UUID.uuidString.getter();
      v56 = v55;
      (*(v9 + 8))(v12, v8);
      v57 = sub_10000668C(v54, v56, &v69);
      v56, v58, v59, v60, v61, v62, v63, v64;
      *(v51 + 4) = v57;
      _os_log_impl(&_mh_execute_header, v67, v50, "Reloaded accounts succesfully {accountID: %{public}s}", v51, 0xCu);
      sub_10000607C(v52);

      goto LABEL_10;
    }
  }

  v65 = v67;
}

double sub_100317644(void *a1, int a2)
{
  v3 = v2;
  LODWORD(v4) = a2;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6, v8);
  v10 = &v76 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v2 + 56);
  *(v2 + 56) = a1;
  v12 = *(v2 + 64);
  *(v2 + 64) = v4 & 1;
  sub_10031D788(v11, v12);
  if (v4)
  {
    swift_errorRetain();
    if (qword_100935EB8 != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    sub_100006654(v13, qword_100941E18);
    sub_100066F20(a1, 1);

    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.default.getter();

    sub_100067078(a1, 1);
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v78 = v4;
      v4 = v16;
      v81[0] = swift_slowAlloc();
      *v4 = 136446466;
      v17 = [*(v2 + 24) uuid];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v18 = UUID.uuidString.getter();
      v19 = v6;
      v21 = v20;
      (*(v7 + 8))(v10, v19);
      v22 = sub_10000668C(v18, v21, v81);
      v21, v23, v24, v25, v26, v27, v28, v29;
      *(v4 + 4) = v22;
      *(v4 + 12) = 2082;
      swift_getErrorValue();
      v30 = Error.rem_errorDescription.getter();
      v32 = v31;
      v33 = sub_10000668C(v30, v31, v81);
      v32, v34, v35, v36, v37, v38, v39, v40;
      *(v4 + 14) = v33;
      _os_log_impl(&_mh_execute_header, v14, v15, "Completing migration {accountID: %{public}s, error: %{public}s}", v4, 0x16u);
      swift_arrayDestroy();

      LOBYTE(v4) = v78;
    }

    v41 = 3;
  }

  else
  {
    v42 = qword_100935EB8;
    v43 = a1;
    if (v42 != -1)
    {
      swift_once();
    }

    v44 = type metadata accessor for Logger();
    sub_100006654(v44, qword_100941E18);
    sub_100066F20(a1, 0);

    v45 = Logger.logObject.getter();
    v46 = static os_log_type_t.default.getter();

    sub_100067078(a1, 0);
    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      v78 = v4;
      v4 = v47;
      v48 = swift_slowAlloc();
      v76 = v6;
      v49 = v48;
      v77 = swift_slowAlloc();
      v81[0] = v77;
      *v4 = 136446466;
      v50 = [*(v3 + 24) uuid];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v51 = UUID.uuidString.getter();
      v52 = v7;
      v54 = v53;
      (*(v52 + 8))(v10, v76);
      v55 = sub_10000668C(v51, v54, v81);
      v54, v56, v57, v58, v59, v60, v61, v62;
      *(v4 + 4) = v55;
      *(v4 + 12) = 2114;
      *(v4 + 14) = v43;
      *v49 = a1;
      v63 = v43;
      _os_log_impl(&_mh_execute_header, v45, v46, "Completing migration {accountID: %{public}s, result: %{public}@}", v4, 0x16u);
      sub_1000050A4(v49, &unk_100938E70, &unk_100797230);

      sub_10000607C(v77);

      LOBYTE(v4) = v78;
    }

    v41 = 2;
  }

  *(v3 + 32) = v41;
  sub_10031571C(sub_10031D990, v3);
  swift_beginAccess();
  v71 = *(v3 + 40);
  *(v3 + 40) = &_swiftEmptyArrayStorage;
  v72 = *(v71 + 16);
  if (v72)
  {
    v73 = v71 + 40;
    do
    {
      v74 = *(v73 - 8);
      v79 = a1;
      v80 = v4 & 1;

      v74(&v79);

      v73 += 16;
      --v72;
    }

    while (v72);
  }

  v71, v64, v65, v66, v67, v68, v69, v70;
  return result;
}

uint64_t sub_100317B94(uint64_t a1, void (*a2)(uint64_t, uint64_t, double))
{
  v4 = type metadata accessor for UnmigrateResponse.Error(0);
  __chkstk_darwin(v4 - 8, v5);
  v51 = (&v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = type metadata accessor for UnmigrateResponse.Details(0);
  __chkstk_darwin(v7 - 8, v8);
  v10 = (&v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = sub_1000F5104(&qword_100937510, &qword_100792E00);
  __chkstk_darwin(v11 - 8, v12);
  v14 = &v50 - v13;
  v15 = type metadata accessor for UnmigrateResponse(0);
  __chkstk_darwin(v15 - 8, v16);
  v18 = &v50 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1000F5104(&qword_100941F88, &unk_1007A2388);
  __chkstk_darwin(v19, v20);
  v22 = (&v50 - v21);
  sub_100010364(a1, &v50 - v21, &qword_100941F88, &unk_1007A2388);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v23 = *v22;
    swift_errorRetain();
    a2(0, v23, 0.0);
  }

  else
  {
    sub_10031D7F4(v22, v18, type metadata accessor for UnmigrateResponse);
    sub_100010364(v18, v14, &qword_100937510, &qword_100792E00);
    v25 = type metadata accessor for UnmigrateResponse.OneOf_Result(0);
    if ((*(*(v25 - 8) + 48))(v14, 1, v25) == 1)
    {
      v26 = objc_opt_self();
      v27 = String._bridgeToObjectiveC()();
      v28 = [v26 internalErrorWithDebugDescription:v27];

      a2(0, v28, 0.0);
    }

    else
    {
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v29 = v51;
        sub_10031D7F4(v14, v51, type metadata accessor for UnmigrateResponse.Error);
        v30 = objc_opt_self();
        v52 = 0;
        v53 = 0xE000000000000000;
        _StringGuts.grow(_:)(38);
        v53, v31, v32, v33, v34, v35, v36, v37;
        v52 = 0xD000000000000024;
        v53 = 0x80000001007F5090;
        String.append(_:)(*v29);
        v38 = v53;
        v39 = String._bridgeToObjectiveC()();
        v38, v40, v41, v42, v43, v44, v45, v46;
        v47 = [v30 internalErrorWithDebugDescription:v39];

        a2(0, v47, 0.0);
        v48 = type metadata accessor for UnmigrateResponse.Error;
        v49 = v29;
      }

      else
      {
        sub_10031D7F4(v14, v10, type metadata accessor for UnmigrateResponse.Details);
        a2(1, 0, *v10);
        v48 = type metadata accessor for UnmigrateResponse.Details;
        v49 = v10;
      }

      sub_10031D85C(v49, v48);
    }

    return sub_10031D85C(v18, type metadata accessor for UnmigrateResponse);
  }
}

void sub_100318024(void *a1, char a2)
{
  v5 = *(v2 + 48);
  os_unfair_lock_lock(v5);
  v6 = Int._bridgeToObjectiveC()().super.super.isa;
  v7 = Int._bridgeToObjectiveC()().super.super.isa;
  sub_100317644(a1, a2 & 1);
  os_unfair_lock_unlock(v5);
  sub_1000F5104(&unk_100939240, &unk_100798990);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100791340;
  strcpy((inited + 32), "failureCount");
  *(inited + 45) = 0;
  *(inited + 46) = -5120;
  *(inited + 48) = v7;
  *(inited + 56) = 0x697461636F766E69;
  *(inited + 64) = 0xEF746E756F436E6FLL;
  *(inited + 72) = v6;
  v9 = sub_10038D880(inited);
  swift_setDeallocating();
  sub_1000F5104(&unk_100939250, &unk_100795D30);
  swift_arrayDestroy();
  if (a2)
  {
    sub_100066F20(a1, 1);
    swift_errorRetain();
LABEL_5:
    type metadata accessor for Analytics();
    static Analytics.postEvent(_:payload:duration:error:performAutoBugCaptureOnError:)();

    v9, v20, v21, v22, v23, v24, v25, v26;
    return;
  }

  [a1 remindersMigrated];
  isa = UInt._bridgeToObjectiveC()().super.super.isa;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_1002C8F74(isa, 0xD000000000000011, 0x80000001007F4EC0, isUniquelyReferenced_nonNull_native);
  v12 = v9;
  [a1 listsMigrated];
  v13 = UInt._bridgeToObjectiveC()().super.super.isa;
  v14 = swift_isUniquelyReferenced_nonNull_native();
  sub_1002C8F74(v13, 0x67694D737473696CLL, 0xED00006465746172, v14);
  [a1 isObserver];
  v15 = Bool._bridgeToObjectiveC()().super.super.isa;
  v16 = swift_isUniquelyReferenced_nonNull_native();
  sub_1002C8F74(v15, 0x76726573624F7369, 0xEA00000000007265, v16);
  v17 = [a1 state];
  if (v17)
  {
    v18 = v17;
    v19 = swift_isUniquelyReferenced_nonNull_native();
    sub_1002C8F74(v18, 0x6574617473, 0xE500000000000000, v19);
    v9 = v12;
    [a1 timeElapsed];
    goto LABEL_5;
  }

  __break(1u);
}

BOOL sub_100318344()
{
  sub_1000060C8(0, &qword_100936EB8, REMDaemonUserDefaults_ptr);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = [ObjCClassFromMetadata daemonUserDefaults];
  v3 = [v2 cloudKitMigrationMaxNumInvocations];

  if (v3)
  {
    v4 = [v3 integerValue];
  }

  else
  {
    v4 = 50;
  }

  v5 = [ObjCClassFromMetadata daemonUserDefaults];
  v6 = [v5 cloudKitMigrationMaxNumFailures];

  if (v6)
  {
    v7 = [v6 integerValue];
  }

  else
  {
    v7 = 10;
  }

  return *(v0 + 72) >= v4 || *(v0 + 80) >= v7;
}

void sub_10031845C(uint64_t a1, char a2)
{
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5, v7);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchQoS();
  v37 = *(v10 - 8);
  v38 = v10;
  __chkstk_darwin(v10, v11);
  v13 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for DispatchTime();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14, v16);
  v18 = &v32 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19, v20);
  v23 = &v32 - v22;
  if (a2)
  {
    v24 = *(v2 + 48);
    os_unfair_lock_lock(v24);
    sub_100314078(0);

    os_unfair_lock_unlock(v24);
  }

  else
  {
    v35 = v5;
    v36 = v6;
    v25 = v21;
    v26 = *(v2 + 24);
    if (qword_100935D18 != -1)
    {
      swift_once();
    }

    v32 = qword_100974CB0;
    static DispatchTime.now()();
    + infix(_:_:)();
    v27 = *(v15 + 8);
    v33 = v25;
    v34 = v27;
    v27(v18, v25);
    v28 = swift_allocObject();
    v28[2] = v2;
    v28[3] = v26;
    v28[4] = a1;
    aBlock[4] = sub_10031D6C0;
    aBlock[5] = v28;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100019200;
    aBlock[3] = &unk_1008EDF50;
    v29 = _Block_copy(aBlock);

    v30 = v26;
    static DispatchQoS.unspecified.getter();
    v39 = &_swiftEmptyArrayStorage;
    sub_10031D8C4(&qword_100936E90, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_1000F5104(&unk_100939E50, &unk_100791AD0);
    sub_10000CB90(&qword_100936EA0, &unk_100939E50, &unk_100791AD0);
    v31 = v35;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
    _Block_release(v29);
    (*(v36 + 8))(v9, v31);
    (*(v37 + 8))(v13, v38);
    v34(v23, v33);
  }
}

void sub_1003188A0(uint64_t a1, void *a2, double a3)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6, v8);
  v10 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + 90) == 1)
  {
    if (qword_100935EB8 != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    sub_100006654(v11, qword_100941E18);
    v12 = a2;
    v48 = Logger.logObject.getter();
    v13 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v48, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v49 = v15;
      *v14 = 136446210;
      v16 = [v12 uuid];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v17 = UUID.uuidString.getter();
      v19 = v18;
      (*(v7 + 8))(v10, v6);
      v20 = sub_10000668C(v17, v19, &v49);
      v19, v21, v22, v23, v24, v25, v26, v27;
      *(v14 + 4) = v20;
      _os_log_impl(&_mh_execute_header, v48, v13, "Cancel delayed retry becaue migration client was dismissed {accountID: %{public}s}", v14, 0xCu);
      sub_10000607C(v15);
    }

    else
    {
      v47 = v48;
    }
  }

  else
  {
    if (qword_100935EB8 != -1)
    {
      swift_once();
    }

    v28 = type metadata accessor for Logger();
    sub_100006654(v28, qword_100941E18);
    v29 = a2;
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v49 = v33;
      *v32 = 134349314;
      *(v32 + 4) = a3;
      *(v32 + 12) = 2082;
      v34 = [v29 uuid];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v35 = UUID.uuidString.getter();
      v37 = v36;
      (*(v7 + 8))(v10, v6);
      v38 = sub_10000668C(v35, v37, &v49);
      v37, v39, v40, v41, v42, v43, v44, v45;
      *(v32 + 14) = v38;
      _os_log_impl(&_mh_execute_header, v30, v31, "Retry migration after delay {delay: %{public}f, accountID: %{public}s}", v32, 0x16u);
      sub_10000607C(v33);
    }

    v46 = *(a1 + 48);
    os_unfair_lock_lock(v46);
    sub_100314078(0);
    os_unfair_lock_unlock(v46);
  }
}

void sub_100318CB0(uint64_t a1, uint64_t a2, unsigned int a3, int a4)
{
  v248 = a4;
  v249 = a3;
  v250 = a2;
  v6 = sub_1000F5104(&qword_100937508, &qword_100792DF8);
  __chkstk_darwin(v6 - 8, v7);
  v9 = &v243 - v8;
  Step = type metadata accessor for MigrateResponse.NextStep(0);
  v11 = *(Step - 8);
  __chkstk_darwin(Step, v12);
  v247 = &v243 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14, v15);
  v246 = &v243 - v16;
  __chkstk_darwin(v17, v18);
  v245 = &v243 - v19;
  __chkstk_darwin(v20, v21);
  v244 = &v243 - v22;
  __chkstk_darwin(v23, v24);
  v243 = &v243 - v25;
  __chkstk_darwin(v26, v27);
  v29 = (&v243 - v28);
  v30 = type metadata accessor for UUID();
  v31 = *(v30 - 8);
  *&v33 = __chkstk_darwin(v30, v32).n128_u64[0];
  v35 = &v243 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v251 = v4;
  v36 = [*(v4 + 24) uuid];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v37 = UUID.uuidString.getter();
  v252 = v38;
  (*(v31 + 8))(v35, v30);
  sub_100010364(a1, v9, &qword_100937508, &qword_100792DF8);
  if ((*(v11 + 48))(v9, 1, Step) == 1)
  {
    sub_1000050A4(v9, &qword_100937508, &qword_100792DF8);
    if (qword_100935EB8 != -1)
    {
      swift_once();
    }

    v39 = type metadata accessor for Logger();
    sub_100006654(v39, qword_100941E18);
    v40 = v252;

    v41 = Logger.logObject.getter();
    v42 = static os_log_type_t.default.getter();
    v40, v43, v44, v45, v46, v47, v48, v49;
    v50 = os_log_type_enabled(v41, v42);
    v51 = v251;
    v52 = v37;
    v53 = v249;
    if (v50)
    {
      v40 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      v254 = v54;
      LODWORD(v40->super.isa) = 136446210;
      *(&v40->super.isa + 4) = sub_10000668C(v37, v252, &v254);
      _os_log_impl(&_mh_execute_header, v41, v42, "No next-step info from Server. Client will fallback to handle retry by itself {accountID: %{public}s}", v40, 0xCu);
      sub_10000607C(v54);
    }

    v55 = v250;
    if ((v248 & 1) == 0)
    {
      goto LABEL_9;
    }

    v56 = *(v51 + 80);
    v57 = __OFADD__(v56, 1);
    v58 = v56 + 1;
    if (!v57)
    {
      *(v51 + 80) = v58;
      sub_10031571C(sub_10031D990, v51);
LABEL_9:
      v59 = sub_100318344();

      v60 = Logger.logObject.getter();
      if (v59)
      {
        v61 = static os_log_type_t.error.getter();
        v252, v62, v63, v64, v65, v66, v67, v68;
        if (os_log_type_enabled(v60, v61))
        {
          v69 = swift_slowAlloc();
          v70 = swift_slowAlloc();
          v254 = v70;
          *v69 = 134349570;
          v71 = *(v51 + 80);
          *(v69 + 4) = *(v51 + 72);
          *(v69 + 12) = 2050;
          *(v69 + 14) = v71;

          *(v69 + 22) = 2082;
          *(v69 + 24) = sub_10000668C(v52, v252, &v254);
          _os_log_impl(&_mh_execute_header, v60, v61, "Client terminated migration after too many retries {invocationCount: %{public}ld, failureCount: %{public}ld, accountID: %{public}s}", v69, 0x20u);
          sub_10000607C(v70);
        }

        else
        {
        }

        v201 = objc_opt_self();
        v254 = 0;
        v255 = 0xE000000000000000;
        _StringGuts.grow(_:)(94);
        v202._countAndFlagsBits = 0xD000000000000022;
        v202._object = 0x80000001007F4EE0;
        String.append(_:)(v202);
        v253 = *(v51 + 72);
        v203._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
        object = v203._object;
        String.append(_:)(v203);
        object, v205, v206, v207, v208, v209, v210, v211;
        v212._object = 0x80000001007F4F10;
        v212._countAndFlagsBits = 0xD000000000000011;
        String.append(_:)(v212);
        v253 = *(v51 + 80);
        v213._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
        v214 = v213._object;
        String.append(_:)(v213);
        v214, v215, v216, v217, v218, v219, v220, v221;
        v222._countAndFlagsBits = 0xD000000000000024;
        v222._object = 0x80000001007F4F30;
        String.append(_:)(v222);
        v223._countAndFlagsBits = v52;
        v224 = v252;
        v223._object = v252;
        String.append(_:)(v223);
        v224, v225, v226, v227, v228, v229, v230, v231;
        v232._countAndFlagsBits = 46;
        v232._object = 0xE100000000000000;
        String.append(_:)(v232);
        v233 = v255;
        v234 = String._bridgeToObjectiveC()();
        v233, v235, v236, v237, v238, v239, v240, v241;
        v242 = [v201 internalErrorWithDebugDescription:v234];

        *(v51 + 88) = 1;
        sub_10031571C(sub_10031D990, v51);
        sub_100318024(v242, 1);
        sub_100316840();
      }

      else
      {
        v123 = static os_log_type_t.default.getter();
        v252, v124, v125, v126, v127, v128, v129, v130;
        if (os_log_type_enabled(v60, v123))
        {
          v138 = swift_slowAlloc();
          v139 = swift_slowAlloc();
          v254 = v139;
          *v138 = 134349826;
          v140 = *&v55;
          if (v53)
          {
            v140 = 0.0;
          }

          *(v138 + 4) = v140;
          v141 = *(v51 + 80);
          *(v138 + 14) = *(v51 + 72);
          *(v138 + 12) = 2050;
          *(v138 + 22) = 2050;
          *(v138 + 24) = v141;

          *(v138 + 32) = 2082;
          v142 = v252;
          v143 = sub_10000668C(v52, v252, &v254);
          v142, v144, v145, v146, v147, v148, v149, v150;
          *(v138 + 34) = v143;
          _os_log_impl(&_mh_execute_header, v60, v123, "Client will retry migration {delay: %{public}f, invocationCount: %{public}ld, failureCount: %{public}ld, accountID: %{public}s}", v138, 0x2Au);
          sub_10000607C(v139);
        }

        else
        {
          v252, v131, v132, v133, v134, v135, v136, v137;
        }

        sub_10031845C(v55, v53 & 1);
      }

      return;
    }

    __break(1u);
    goto LABEL_33;
  }

  sub_10031D7F4(v9, v29, type metadata accessor for MigrateResponse.NextStep);
  v40 = v29;
  if (BYTE1(v29->super.isa) == 1)
  {
    v53 = v37;
    if (qword_100935EB8 == -1)
    {
LABEL_14:
      v72 = type metadata accessor for Logger();
      sub_100006654(v72, qword_100941E18);
      v73 = v243;
      sub_10031D6CC(v40, v243, type metadata accessor for MigrateResponse.NextStep);
      v74 = v244;
      sub_10031D6CC(v40, v244, type metadata accessor for MigrateResponse.NextStep);
      v75 = v252;

      v76 = Logger.logObject.getter();
      v77 = static os_log_type_t.error.getter();
      v75, v78, v79, v80, v81, v82, v83, v84;
      if (os_log_type_enabled(v76, v77))
      {
        v85 = swift_slowAlloc();
        v86 = v40;
        v87 = swift_slowAlloc();
        v254 = v87;
        *v85 = 136446722;
        *(v85 + 4) = sub_10000668C(v53, v252, &v254);
        *(v85 + 12) = 1026;
        v88 = *(v73 + 8);
        sub_10031D85C(v73, type metadata accessor for MigrateResponse.NextStep);
        *(v85 + 14) = v88;
        *(v85 + 18) = 1026;
        v89 = v74;
        v90 = *(v74 + 12);
        sub_10031D85C(v89, type metadata accessor for MigrateResponse.NextStep);
        *(v85 + 20) = v90;
        _os_log_impl(&_mh_execute_header, v76, v77, "Server terminated migration after too many retries {accountID: %{public}s, invocationCount: %{public}d, failureCount: %{public}d}", v85, 0x18u);
        sub_10000607C(v87);
        v40 = v86;
      }

      else
      {
        sub_10031D85C(v74, type metadata accessor for MigrateResponse.NextStep);
        sub_10031D85C(v73, type metadata accessor for MigrateResponse.NextStep);
      }

      v151 = objc_opt_self();
      v254 = 0;
      v255 = 0xE000000000000000;
      _StringGuts.grow(_:)(94);
      v152._countAndFlagsBits = 0xD000000000000022;
      v152._object = 0x80000001007F4F60;
      String.append(_:)(v152);
      LODWORD(v253) = *v40->storeController;
      v153._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      v154 = v153._object;
      String.append(_:)(v153);
      v154, v155, v156, v157, v158, v159, v160, v161;
      v162._object = 0x80000001007F4F10;
      v162._countAndFlagsBits = 0xD000000000000011;
      String.append(_:)(v162);
      LODWORD(v253) = *&v40->storeController[4];
      v163._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      v164 = v163._object;
      String.append(_:)(v163);
      v164, v165, v166, v167, v168, v169, v170, v171;
      v172._countAndFlagsBits = 0xD000000000000024;
      v172._object = 0x80000001007F4F30;
      String.append(_:)(v172);
      v173._countAndFlagsBits = v53;
      v174 = v252;
      v173._object = v252;
      String.append(_:)(v173);
      v174, v175, v176, v177, v178, v179, v180, v181;
      v182._countAndFlagsBits = 46;
      v182._object = 0xE100000000000000;
      String.append(_:)(v182);
      v183 = v255;
      v184 = String._bridgeToObjectiveC()();
      v183, v185, v186, v187, v188, v189, v190, v191;
      v192 = [v151 internalErrorWithDebugDescription:v184];

      v193 = v251;
      *(v251 + 88) = 1;
      sub_10031571C(sub_10031D990, v193);
      sub_100318024(v192, 1);
      sub_100316840();

      sub_10031D85C(v40, type metadata accessor for MigrateResponse.NextStep);
      return;
    }

LABEL_33:
    swift_once();
    goto LABEL_14;
  }

  v91 = v37;
  if (qword_100935EB8 != -1)
  {
    swift_once();
  }

  v92 = type metadata accessor for Logger();
  sub_100006654(v92, qword_100941E18);
  v93 = v245;
  sub_10031D6CC(v29, v245, type metadata accessor for MigrateResponse.NextStep);
  v94 = v29;
  v95 = v246;
  sub_10031D6CC(v94, v246, type metadata accessor for MigrateResponse.NextStep);
  v96 = v247;
  sub_10031D6CC(v40, v247, type metadata accessor for MigrateResponse.NextStep);
  v97 = v252;

  v98 = Logger.logObject.getter();
  v99 = static os_log_type_t.default.getter();
  v97, v100, v101, v102, v103, v104, v105, v106;
  if (os_log_type_enabled(v98, v99))
  {
    v107 = swift_slowAlloc();
    v108 = swift_slowAlloc();
    v254 = v108;
    *v107 = 67240962;
    v109 = v40;
    v110 = *(v93 + 4);
    sub_10031D85C(v93, type metadata accessor for MigrateResponse.NextStep);
    *(v107 + 4) = v110;
    *(v107 + 8) = 1026;
    v111 = v95;
    v112 = *(v95 + 8);
    sub_10031D85C(v111, type metadata accessor for MigrateResponse.NextStep);
    *(v107 + 10) = v112;
    *(v107 + 14) = 1026;
    v113 = *(v96 + 12);
    sub_10031D85C(v96, type metadata accessor for MigrateResponse.NextStep);
    *(v107 + 16) = v113;
    *(v107 + 20) = 2082;
    v114 = v252;
    v115 = sub_10000668C(v91, v252, &v254);
    v114, v116, v117, v118, v119, v120, v121, v122;
    *(v107 + 22) = v115;
    v40 = v109;
    _os_log_impl(&_mh_execute_header, v98, v99, "Server instructed to retry migration {delay: %{public}d, invocationCount: %{public}d, failureCount: %{public}d, accountID: %{public}s}", v107, 0x1Eu);
    sub_10000607C(v108);
  }

  else
  {
    sub_10031D85C(v96, type metadata accessor for MigrateResponse.NextStep);
    sub_10031D85C(v95, type metadata accessor for MigrateResponse.NextStep);
    sub_10031D85C(v93, type metadata accessor for MigrateResponse.NextStep);
    v252, v194, v195, v196, v197, v198, v199, v200;
  }

  sub_10031845C(COERCE__INT64(SHIDWORD(v40->super.isa)), 0);
  sub_10031D85C(v40, type metadata accessor for MigrateResponse.NextStep);
}

void sub_100319AC0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v354 = a2;
  v348 = a1;
  v4 = type metadata accessor for MigrateResponse.Error(0);
  __chkstk_darwin(v4 - 8, v5);
  v336 = (&ObjCClassFromMetadata - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v7, v8);
  v337 = &ObjCClassFromMetadata - v9;
  v333 = type metadata accessor for REMMigrationResultState();
  v332 = *(v333 - 8);
  __chkstk_darwin(v333, v10);
  v331 = &ObjCClassFromMetadata - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for MigrateResponse.Details(0);
  __chkstk_darwin(v12 - 8, v13);
  v338 = &ObjCClassFromMetadata - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  Step = type metadata accessor for MigrateResponse.NextStep(0);
  v351 = *(Step - 8);
  __chkstk_darwin(Step, v15);
  v340 = (&ObjCClassFromMetadata - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = sub_1000F5104(&qword_100937508, &qword_100792DF8);
  __chkstk_darwin(v17 - 8, v18);
  v350 = &ObjCClassFromMetadata - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20, v21);
  v334 = &ObjCClassFromMetadata - v22;
  __chkstk_darwin(v23, v24);
  v335 = (&ObjCClassFromMetadata - v25);
  __chkstk_darwin(v26, v27);
  v339 = &ObjCClassFromMetadata - v28;
  __chkstk_darwin(v29, v30);
  v343 = &ObjCClassFromMetadata - v31;
  v32 = sub_1000F5104(&qword_100937500, &qword_100792DF0);
  __chkstk_darwin(v32 - 8, v33);
  v35 = &ObjCClassFromMetadata - v34;
  v345 = type metadata accessor for MigrateResponse.OneOf_Result(0);
  v342 = *(v345 - 8);
  __chkstk_darwin(v345, v36);
  v341 = &ObjCClassFromMetadata - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v38, v39);
  v344 = &ObjCClassFromMetadata - v40;
  v41 = type metadata accessor for JSONEncodingOptions();
  v346 = *(v41 - 8);
  __chkstk_darwin(v41, v42);
  v44 = &ObjCClassFromMetadata - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = sub_1000F5104(&qword_100941F70, &qword_1007A2368);
  __chkstk_darwin(v45 - 8, v46);
  v48 = &ObjCClassFromMetadata - v47;
  v349 = type metadata accessor for MigrateResponse(0);
  v49 = *(v349 - 8);
  __chkstk_darwin(v349, v50);
  v347 = (&ObjCClassFromMetadata - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0));
  v52 = type metadata accessor for UUID();
  v53 = *(v52 - 8);
  *&v55 = __chkstk_darwin(v52, v54).n128_u64[0];
  v57 = &ObjCClassFromMetadata - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = [v3[3] uuid];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v352 = UUID.uuidString.getter();
  v60 = v59;
  (*(v53 + 8))(v57, v52);
  if (*(v3 + 90) == 1)
  {
    if (qword_100935EB8 != -1)
    {
      swift_once();
    }

    v61 = type metadata accessor for Logger();
    sub_100006654(v61, qword_100941E18);

    v62 = Logger.logObject.getter();
    v63 = static os_log_type_t.default.getter();
    v60, v64, v65, v66, v67, v68, v69, v70;
    if (os_log_type_enabled(v62, v63))
    {
      v78 = swift_slowAlloc();
      v79 = swift_slowAlloc();
      v355[0] = v79;
      *v78 = 136446210;
      v80 = sub_10000668C(v352, v60, v355);
      v60, v81, v82, v83, v84, v85, v86, v87;
      *(v78 + 4) = v80;
      _os_log_impl(&_mh_execute_header, v62, v63, "Migration client is told to dismiss. Ignore server response. {accountID: %{public}s}", v78, 0xCu);
      sub_10000607C(v79);
    }

    else
    {
      v60, v71, v72, v73, v74, v75, v76, v77;
    }

    return;
  }

  v88 = v3;
  sub_1000060C8(0, &qword_100936EB8, REMDaemonUserDefaults_ptr);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v89 = [ObjCClassFromMetadata daemonUserDefaults];
  v90 = [v89 cloudKitMigrationDelayAfterError];

  if (v90)
  {
    [v90 doubleValue];
    v92 = v91;

    v93 = v92;
    v94 = Step;
    if (v354)
    {
LABEL_9:
      if (qword_100935EB8 != -1)
      {
        swift_once();
      }

      v95 = type metadata accessor for Logger();
      sub_100006654(v95, qword_100941E18);

      swift_errorRetain();
      v96 = Logger.logObject.getter();
      v97 = static os_log_type_t.error.getter();

      v60, v98, v99, v100, v101, v102, v103, v104;
      if (os_log_type_enabled(v96, v97))
      {
        v112 = swift_slowAlloc();
        v113 = swift_slowAlloc();
        v114 = swift_slowAlloc();
        v355[0] = v114;
        *v112 = 138543618;
        v115 = _convertErrorToNSError(_:)();
        *(v112 + 4) = v115;
        *v113 = v115;
        *(v112 + 12) = 2082;
        v116 = v93;
        v117 = sub_10000668C(v352, v60, v355);
        v60, v118, v119, v120, v121, v122, v123, v124;
        *(v112 + 14) = v117;
        v93 = v116;
        _os_log_impl(&_mh_execute_header, v96, v97, "Migrate request failed {error: %{public}@, accountID: %{public}s}", v112, 0x16u);
        sub_1000050A4(v113, &unk_100938E70, &unk_100797230);

        sub_10000607C(v114);
      }

      else
      {
        v60, v105, v106, v107, v108, v109, v110, v111;
      }

      v126 = v350;
      (*(v351 + 56))(v350, 1, 1, v94);
LABEL_27:
      sub_100318CB0(v126, v93, 0, 1);
      sub_1000050A4(v126, &qword_100937508, &qword_100792DF8);
      return;
    }
  }

  else
  {
    v93 = 0x3FF0000000000000;
    v94 = Step;
    if (v354)
    {
      goto LABEL_9;
    }
  }

  sub_100010364(v348, v48, &qword_100941F70, &qword_1007A2368);
  v125 = v349;
  if ((*(v49 + 48))(v48, 1, v349) == 1)
  {
    sub_1000050A4(v48, &qword_100941F70, &qword_1007A2368);
LABEL_21:
    v139 = Step;
    if (qword_100935EB8 != -1)
    {
      swift_once();
    }

    v140 = type metadata accessor for Logger();
    sub_100006654(v140, qword_100941E18);

    v141 = Logger.logObject.getter();
    v142 = static os_log_type_t.error.getter();
    v60, v143, v144, v145, v146, v147, v148, v149;
    if (os_log_type_enabled(v141, v142))
    {
      v157 = v93;
      v158 = swift_slowAlloc();
      v159 = swift_slowAlloc();
      v355[0] = v159;
      *v158 = 136446210;
      v160 = sub_10000668C(v352, v60, v355);
      v60, v161, v162, v163, v164, v165, v166, v167;
      *(v158 + 4) = v160;
      _os_log_impl(&_mh_execute_header, v141, v142, "Invalid response from migrate request {accountID: %{public}s}", v158, 0xCu);
      sub_10000607C(v159);

      v93 = v157;
    }

    else
    {
      v60, v150, v151, v152, v153, v154, v155, v156;
    }

    v126 = v350;
    (*(v351 + 56))(v350, 1, 1, v139);
    goto LABEL_27;
  }

  v354 = v93;
  v127 = v347;
  sub_10031D7F4(v48, v347, type metadata accessor for MigrateResponse);
  JSONEncodingOptions.init()();
  sub_10031D8C4(&qword_1009376B0, type metadata accessor for MigrateResponse, &protocol conformance descriptor for MigrateResponse);
  v128 = Message.jsonString(options:)();
  v130 = v129;
  v131 = v128;
  (*(v346 + 8))(v44, v41);
  sub_100010364(v127 + *(v125 + 20), v35, &qword_100937500, &qword_100792DF0);
  if ((*(v342 + 48))(v35, 1, v345) == 1)
  {
    v130, v132, v133, v134, v135, v136, v137, v138;
    sub_10031D85C(v127, type metadata accessor for MigrateResponse);
    sub_1000050A4(v35, &qword_100937500, &qword_100792DF0);
    v93 = v354;
    goto LABEL_21;
  }

  sub_10031D7F4(v35, v344, type metadata accessor for MigrateResponse.OneOf_Result);
  v168 = Step;
  if (qword_100935EB8 != -1)
  {
    swift_once();
  }

  v169 = type metadata accessor for Logger();
  v170 = sub_100006654(v169, qword_100941E18);

  v348 = v170;
  v171 = Logger.logObject.getter();
  v172 = static os_log_type_t.default.getter();
  v60, v173, v174, v175, v176, v177, v178, v179;
  v130, v180, v181, v182, v183, v184, v185, v186;
  v187 = os_log_type_enabled(v171, v172);
  v350 = v88;
  if (v187)
  {
    v195 = swift_slowAlloc();
    v355[0] = swift_slowAlloc();
    *v195 = 136446466;
    v196 = sub_10000668C(v131, v130, v355);
    v130, v197, v198, v199, v200, v201, v202, v203;
    *(v195 + 4) = v196;
    *(v195 + 12) = 2082;
    *(v195 + 14) = sub_10000668C(v352, v60, v355);
    _os_log_impl(&_mh_execute_header, v171, v172, "Migration service response received {json: %{public}s, accountID: %{public}s}", v195, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
    v130, v188, v189, v190, v191, v192, v193, v194;
  }

  v204 = v351;
  v205 = v339;
  v206 = *(v351 + 56);
  v206(v343, 1, 1, v168);
  v207 = *(v349 + 32);
  sub_100010364(v347 + v207, v205, &qword_100937508, &qword_100792DF8);
  v208 = *(v204 + 48);
  if (v208(v205, 1, v168) == 1)
  {
    v209 = v340;
    *v340 = 0;
    *(v209 + 1) = 0;
    *(v209 + 1) = 0;
    UnknownStorage.init()();
    if (v208(v205, 1, v168) != 1)
    {
      sub_1000050A4(v205, &qword_100937508, &qword_100792DF8);
    }
  }

  else
  {
    v209 = v340;
    sub_10031D7F4(v205, v340, type metadata accessor for MigrateResponse.NextStep);
  }

  v210 = v209;
  v211 = *v209;
  sub_10031D85C(v210, type metadata accessor for MigrateResponse.NextStep);
  if (v211)
  {
    v212 = v334;
    sub_100010364(v347 + v207, v334, &qword_100937508, &qword_100792DF8);
    v213 = v208(v212, 1, v168);
    v214 = v343;
    if (v213 == 1)
    {
      v215 = v335;
      *v335 = 0;
      *(v215 + 1) = 0;
      *(v215 + 1) = 0;
      UnknownStorage.init()();
      sub_1000050A4(v214, &qword_100937508, &qword_100792DF8);
      if (v208(v212, 1, v168) != 1)
      {
        sub_1000050A4(v212, &qword_100937508, &qword_100792DF8);
      }
    }

    else
    {
      sub_1000050A4(v343, &qword_100937508, &qword_100792DF8);
      v215 = v335;
      sub_10031D7F4(v212, v335, type metadata accessor for MigrateResponse.NextStep);
    }

    v206(v215, 0, 1, v168);
    sub_100031B58(v215, v214, &qword_100937508, &qword_100792DF8);
  }

  v216 = v344;
  v217 = v341;
  sub_10031D6CC(v344, v341, type metadata accessor for MigrateResponse.OneOf_Result);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v218 = v337;
    sub_10031D7F4(v217, v337, type metadata accessor for MigrateResponse.Error);
    v219 = v336;
    sub_10031D6CC(v218, v336, type metadata accessor for MigrateResponse.Error);

    v220 = Logger.logObject.getter();
    v221 = static os_log_type_t.error.getter();
    v60, v222, v223, v224, v225, v226, v227, v228;
    if (os_log_type_enabled(v220, v221))
    {
      v229 = swift_slowAlloc();
      v355[0] = swift_slowAlloc();
      *v229 = 136446466;
      v230 = *v219;
      v231 = v219[1];

      sub_10031D85C(v219, type metadata accessor for MigrateResponse.Error);
      v232 = sub_10000668C(v230, v231, v355);
      v231, v233, v234, v235, v236, v237, v238, v239;
      *(v229 + 4) = v232;
      *(v229 + 12) = 2082;
      v240 = sub_10000668C(v352, v60, v355);
      v60, v241, v242, v243, v244, v245, v246, v247;
      *(v229 + 14) = v240;
      _os_log_impl(&_mh_execute_header, v220, v221, "Migration server error {error: %{public}s, accountID: %{public}s}", v229, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      v60, v260, v261, v262, v263, v264, v265, v266;
      sub_10031D85C(v219, type metadata accessor for MigrateResponse.Error);
    }

    v267 = v343;
    sub_100318CB0(v343, v354, 0, 1);
    sub_10031D85C(v218, type metadata accessor for MigrateResponse.Error);
    sub_1000050A4(v267, &qword_100937508, &qword_100792DF8);
    v268 = v344;
    goto LABEL_64;
  }

  v248 = v338;
  sub_10031D7F4(v217, v338, type metadata accessor for MigrateResponse.Details);
  if (*(v248 + 8) == 1)
  {
    v256 = [ObjCClassFromMetadata daemonUserDefaults];
    v257 = [v256 cloudKitMigrationObserverPollingInterval];

    if (v257)
    {
      [v257 doubleValue];
      v259 = v258;
    }

    else
    {
      v259 = 5.0;
    }

    v301 = Logger.logObject.getter();
    v302 = static os_log_type_t.default.getter();
    v60, v303, v304, v305, v306, v307, v308, v309;
    if (os_log_type_enabled(v301, v302))
    {
      v317 = swift_slowAlloc();
      v318 = swift_slowAlloc();
      v355[0] = v318;
      *v317 = 134349314;
      *(v317 + 4) = v259;
      *(v317 + 12) = 2082;
      v319 = sub_10000668C(v352, v60, v355);
      v60, v320, v321, v322, v323, v324, v325, v326;
      *(v317 + 14) = v319;
      v248 = v338;
      _os_log_impl(&_mh_execute_header, v301, v302, "We are an observer and will poll again in a %{public}f seconds {accountID: %{public}s}", v317, 0x16u);
      sub_10000607C(v318);
    }

    else
    {
      v60, v310, v311, v312, v313, v314, v315, v316;
    }

    v327 = *&v259;
    v328 = v343;
    v329 = v343;
    goto LABEL_63;
  }

  v60, v249, v250, v251, v252, v253, v254, v255;
  v269 = *v347;
  v270 = v347[1];
  v271 = v332;
  v272 = v331;
  v273 = v333;
  (*(v332 + 104))(v331, enum case for REMMigrationResultState.complete(_:), v333);
  v274 = REMMigrationResultState.rawValue.getter();
  v276 = v275;
  (*(v271 + 8))(v272, v273);
  if (v269 == v274 && v270 == v276)
  {
    v276, v277, v278, v279, v280, v281, v282, v283;
  }

  else
  {
    v284 = _stringCompareWithSmolCheck(_:_:expecting:)();
    v276, v285, v286, v287, v288, v289, v290, v291;
    if ((v284 & 1) == 0)
    {
      v328 = v343;
      v329 = v343;
      v327 = 0x3FF0000000000000;
LABEL_63:
      sub_100318CB0(v329, v327, 0, 0);
      sub_10031D85C(v248, type metadata accessor for MigrateResponse.Details);
      sub_1000050A4(v328, &qword_100937508, &qword_100792DF8);
      v268 = v216;
LABEL_64:
      sub_10031D85C(v268, type metadata accessor for MigrateResponse.OneOf_Result);
      sub_10031D85C(v347, type metadata accessor for MigrateResponse);
      return;
    }
  }

  v292 = *(v248 + 12);
  if ((v292 & 0x80000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v293 = *(v248 + 16);
    if ((v293 & 0x80000000) == 0)
    {
      v294 = *v248;
      v295 = v347;
      v296 = objc_allocWithZone(REMMigrationResult);
      v297 = String._bridgeToObjectiveC()();
      v298 = String._bridgeToObjectiveC()();
      v299 = [v296 initWithState:v297 IsObserver:0 timeElapsed:v292 listsMigrated:v293 remindersMigrated:v298 log:v294];

      v300 = v299;
      sub_100318024(v299, 0);

      sub_10031D85C(v248, type metadata accessor for MigrateResponse.Details);
      sub_1000050A4(v343, &qword_100937508, &qword_100792DF8);
      sub_10031D85C(v216, type metadata accessor for MigrateResponse.OneOf_Result);
      sub_10031D85C(v295, type metadata accessor for MigrateResponse);
      return;
    }
  }

  __break(1u);
}

void *sub_10031B1B4@<X0>(void *a2@<X8>)
{
  sub_1000F5104(&qword_10093A578, &qword_1007A1E10);
  result = NSManagedObjectContext.rem_performAndWait<A>(_:)();
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

void sub_10031B23C(uint64_t a1, char a2, uint64_t a3)
{
  v6 = type metadata accessor for MigrateRequest.User(0);
  __chkstk_darwin(v6 - 8, v7);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000060C8(0, &qword_100936EB8, REMDaemonUserDefaults_ptr);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v11 = [ObjCClassFromMetadata daemonUserDefaults];
  v12 = [v11 cloudKitMigrationSimulatedError];

  if (v12)
  {
    v13 = [v12 integerValue];

    if (v13 >= 1)
    {
      if (v13 >> 31)
      {
        __break(1u);
        return;
      }

      *(a1 + *(type metadata accessor for MigrateRequest(0) + 28)) = v13;
    }
  }

  v14 = [ObjCClassFromMetadata daemonUserDefaults];
  v15 = [v14 cloudKitMigrationDisableCleanUp];

  if (a2)
  {
    v16 = 8;
  }

  else
  {
    v16 = 0;
  }

  if (v15)
  {
    v17 = v16 | 0x10;
  }

  else
  {
    v17 = v16;
  }

  *(a1 + *(type metadata accessor for MigrateRequest(0) + 20)) = v17;
  sub_10031D6CC(a3, v9, type metadata accessor for MigrateRequest.User);
  sub_1000050A4(a1, &qword_1009374F0, &qword_1007A2380);
  sub_10031D7F4(v9, a1, type metadata accessor for MigrateRequest.User);
  v18 = type metadata accessor for MigrateRequest.OneOf_Source(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v18 - 8) + 56))(a1, 0, 1, v18);
}

uint64_t sub_10031B468(uint64_t a1)
{
  v2 = sub_1000F5104(&qword_100941F70, &qword_1007A2368);
  __chkstk_darwin(v2 - 8, v3);
  v5 = &v17 - v4;
  v6 = type metadata accessor for MigrateResponse(0);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6, v8);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1000F5104(&qword_100941F78, &unk_1007A2370);
  __chkstk_darwin(v11, v12);
  v14 = (&v17 - v13);
  sub_100010364(a1, &v17 - v13, &qword_100941F78, &unk_1007A2370);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = *v14;
    (*(v7 + 56))(v5, 1, 1, v6);
    swift_errorRetain();
    sub_100319AC0(v5, v15);

    return sub_1000050A4(v5, &qword_100941F70, &qword_1007A2368);
  }

  else
  {
    sub_10031D7F4(v14, v10, type metadata accessor for MigrateResponse);
    sub_10031D6CC(v10, v5, type metadata accessor for MigrateResponse);
    (*(v7 + 56))(v5, 0, 1, v6);
    sub_100319AC0(v5, 0);
    sub_1000050A4(v5, &qword_100941F70, &qword_1007A2368);
    return sub_10031D85C(v10, type metadata accessor for MigrateResponse);
  }
}

void sub_10031B6FC(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

id sub_10031B768(uint64_t a1, _TtC7remindd19RDXPCStorePerformer *a2, uint64_t a3)
{
  v6 = String._bridgeToObjectiveC()();
  a2, v7, v8, v9, v10, v11, v12, v13;
  v18 = 0;
  v14 = [v3 initWithPattern:v6 options:a3 error:&v18];

  if (v14)
  {
    v15 = v18;
  }

  else
  {
    v16 = v18;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return v14;
}

void sub_10031B844(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v89 = a1;
  v90 = a2;
  v91 = a3;
  v92 = a4;
  sub_10031D734();

  v6 = String.init<A>(_:)();
  v14 = v6;
  if ((v7 & 0x1000000000000000) != 0)
  {
    v48 = v7;
    v14 = sub_1002F6844(v6, v7);
    v50 = v49;
    v48, v49, v51, v52, v53, v54, v55, v56;
    v7 = v50;
    if ((v50 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v7 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v14 & 0x1000000000000000) != 0)
    {
      v15 = ((v7 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v16 = v14 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      v87 = v7;
      v15 = _StringObject.sharedUTF8.getter();
      v16 = v88;
      v7 = v87;
    }

    v17 = *v15;
    if (v17 == 43)
    {
      if (v16 >= 1)
      {
        v30 = v16 - 1;
        if (v30)
        {
          v31 = a5 + 48;
          v32 = a5 + 55;
          v33 = a5 + 87;
          if (a5 > 10)
          {
            v31 = 58;
          }

          else
          {
            v33 = 97;
            v32 = 65;
          }

          if (v15)
          {
            v34 = 0;
            v35 = v15 + 1;
            v24 = 1;
            do
            {
              v36 = *v35;
              if (v36 < 0x30 || v36 >= v31)
              {
                if (v36 < 0x41 || v36 >= v32)
                {
                  if (v36 < 0x61 || v36 >= v33)
                  {
                    goto LABEL_129;
                  }

                  v37 = -87;
                }

                else
                {
                  v37 = -55;
                }
              }

              else
              {
                v37 = -48;
              }

              v38 = v34 * a5;
              if ((v38 & 0xFFFFFFFF00000000) != 0)
              {
                goto LABEL_128;
              }

              v39 = v36 + v37;
              v29 = __CFADD__(v38, v39);
              v34 = v38 + v39;
              if (v29)
              {
                goto LABEL_128;
              }

              ++v35;
              --v30;
            }

            while (v30);
LABEL_47:
            v24 = 0;
            goto LABEL_129;
          }

          goto LABEL_67;
        }

LABEL_128:
        v24 = 1;
        goto LABEL_129;
      }

      goto LABEL_133;
    }

    if (v17 != 45)
    {
      if (v16)
      {
        v40 = a5 + 48;
        v41 = a5 + 55;
        v42 = a5 + 87;
        if (a5 > 10)
        {
          v40 = 58;
        }

        else
        {
          v42 = 97;
          v41 = 65;
        }

        if (v15)
        {
          v43 = 0;
          v24 = 1;
          do
          {
            v44 = *v15;
            if (v44 < 0x30 || v44 >= v40)
            {
              if (v44 < 0x41 || v44 >= v41)
              {
                if (v44 < 0x61 || v44 >= v42)
                {
                  goto LABEL_129;
                }

                v45 = -87;
              }

              else
              {
                v45 = -55;
              }
            }

            else
            {
              v45 = -48;
            }

            v46 = v43 * a5;
            if ((v46 & 0xFFFFFFFF00000000) != 0)
            {
              goto LABEL_128;
            }

            v47 = v44 + v45;
            v29 = __CFADD__(v46, v47);
            v43 = v46 + v47;
            if (v29)
            {
              goto LABEL_128;
            }

            ++v15;
            --v16;
          }

          while (v16);
          v24 = 0;
          goto LABEL_129;
        }

        goto LABEL_67;
      }

      goto LABEL_128;
    }

    if (v16 >= 1)
    {
      v18 = v16 - 1;
      if (v18)
      {
        v19 = a5 + 48;
        v20 = a5 + 55;
        v21 = a5 + 87;
        if (a5 > 10)
        {
          v19 = 58;
        }

        else
        {
          v21 = 97;
          v20 = 65;
        }

        if (v15)
        {
          v22 = 0;
          v23 = v15 + 1;
          v24 = 1;
          while (1)
          {
            v25 = *v23;
            if (v25 < 0x30 || v25 >= v19)
            {
              if (v25 < 0x41 || v25 >= v20)
              {
                if (v25 < 0x61 || v25 >= v21)
                {
                  goto LABEL_129;
                }

                v26 = -87;
              }

              else
              {
                v26 = -55;
              }
            }

            else
            {
              v26 = -48;
            }

            v27 = v22 * a5;
            if ((v27 & 0xFFFFFFFF00000000) != 0)
            {
              goto LABEL_128;
            }

            v28 = v25 + v26;
            v29 = v27 >= v28;
            v22 = v27 - v28;
            if (!v29)
            {
              goto LABEL_128;
            }

            ++v23;
            if (!--v18)
            {
              goto LABEL_47;
            }
          }
        }

LABEL_67:
        v24 = 0;
LABEL_129:
        v7, v7, v8, v9, v10, v11, v12, v13;
        LOBYTE(v89) = v24;
        return;
      }

      goto LABEL_128;
    }

    __break(1u);
LABEL_132:
    __break(1u);
LABEL_133:
    __break(1u);
    goto LABEL_134;
  }

  v57 = HIBYTE(v7) & 0xF;
  v89 = v14;
  v90 = v7 & 0xFFFFFFFFFFFFFFLL;
  if (v14 != 43)
  {
    if (v14 != 45)
    {
      if (v57)
      {
        v78 = 0;
        v79 = a5 + 48;
        v80 = a5 + 55;
        v81 = a5 + 87;
        if (a5 > 10)
        {
          v79 = 58;
        }

        else
        {
          v81 = 97;
          v80 = 65;
        }

        v82 = &v89;
        v24 = 1;
        while (1)
        {
          v83 = *v82;
          if (v83 < 0x30 || v83 >= v79)
          {
            if (v83 < 0x41 || v83 >= v80)
            {
              if (v83 < 0x61 || v83 >= v81)
              {
                goto LABEL_129;
              }

              v84 = -87;
            }

            else
            {
              v84 = -55;
            }
          }

          else
          {
            v84 = -48;
          }

          v85 = v78 * a5;
          if ((v85 & 0xFFFFFFFF00000000) != 0)
          {
            goto LABEL_128;
          }

          v86 = v83 + v84;
          v29 = __CFADD__(v85, v86);
          v78 = v85 + v86;
          if (v29)
          {
            goto LABEL_128;
          }

          v82 = (v82 + 1);
          if (!--v57)
          {
            goto LABEL_127;
          }
        }
      }

      goto LABEL_128;
    }

    if (v57)
    {
      v58 = v57 - 1;
      if (v58)
      {
        v59 = 0;
        v60 = a5 + 48;
        v61 = a5 + 55;
        v62 = a5 + 87;
        if (a5 > 10)
        {
          v60 = 58;
        }

        else
        {
          v62 = 97;
          v61 = 65;
        }

        v63 = &v89 + 1;
        v24 = 1;
        while (1)
        {
          v64 = *v63;
          if (v64 < 0x30 || v64 >= v60)
          {
            if (v64 < 0x41 || v64 >= v61)
            {
              if (v64 < 0x61 || v64 >= v62)
              {
                goto LABEL_129;
              }

              v65 = -87;
            }

            else
            {
              v65 = -55;
            }
          }

          else
          {
            v65 = -48;
          }

          v66 = v59 * a5;
          if ((v66 & 0xFFFFFFFF00000000) != 0)
          {
            goto LABEL_128;
          }

          v67 = v64 + v65;
          v29 = v66 >= v67;
          v59 = v66 - v67;
          if (!v29)
          {
            goto LABEL_128;
          }

          ++v63;
          if (!--v58)
          {
            goto LABEL_127;
          }
        }
      }

      goto LABEL_128;
    }

    goto LABEL_132;
  }

  if (v57)
  {
    v68 = v57 - 1;
    if (v68)
    {
      v69 = 0;
      v70 = a5 + 48;
      v71 = a5 + 55;
      v72 = a5 + 87;
      if (a5 > 10)
      {
        v70 = 58;
      }

      else
      {
        v72 = 97;
        v71 = 65;
      }

      v73 = &v89 + 1;
      v24 = 1;
      do
      {
        v74 = *v73;
        if (v74 < 0x30 || v74 >= v70)
        {
          if (v74 < 0x41 || v74 >= v71)
          {
            if (v74 < 0x61 || v74 >= v72)
            {
              goto LABEL_129;
            }

            v75 = -87;
          }

          else
          {
            v75 = -55;
          }
        }

        else
        {
          v75 = -48;
        }

        v76 = v69 * a5;
        if ((v76 & 0xFFFFFFFF00000000) != 0)
        {
          goto LABEL_128;
        }

        v77 = v74 + v75;
        v29 = __CFADD__(v76, v77);
        v69 = v76 + v77;
        if (v29)
        {
          goto LABEL_128;
        }

        ++v73;
        --v68;
      }

      while (v68);
LABEL_127:
      v24 = 0;
      goto LABEL_129;
    }

    goto LABEL_128;
  }

LABEL_134:
  __break(1u);
}

uint64_t sub_10031BDCC(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v13 = 0;
    return v13 | (((a4 >> 60) & 1) << 40);
  }

  if ((a4 & 0x2000000000000000) != 0)
  {
    v14[0] = a3;
    v14[1] = a4 & 0xFFFFFFFFFFFFFFLL;
    v11 = v14;
  }

  else if ((a3 & 0x1000000000000000) != 0)
  {
    v11 = ((a4 & 0xFFFFFFFFFFFFFFFLL) + 32);
  }

  else
  {
    v11 = _StringObject.sharedUTF8.getter();
  }

  result = sub_10031CF04(v11, a1, a2, a3, a4, a5);
  if (!v5)
  {
    v15 = BYTE4(result) & 1;
    v13 = result | ((BYTE4(result) & 1) << 32);
    return v13 | (((a4 >> 60) & 1) << 40);
  }

  return result;
}

void sub_10031BE94()
{
  v55 = type metadata accessor for UUID();
  v53 = *(v55 - 8);
  __chkstk_darwin(v55, v0);
  v51 = &v43 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_1000F5104(&qword_100941F90, &qword_1007A2398);
  __chkstk_darwin(v2 - 8, v3);
  v5 = &v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6, v7);
  v9 = &v43 - v8;
  if (qword_100935EB8 != -1)
  {
    goto LABEL_26;
  }

  while (1)
  {
    v10 = type metadata accessor for Logger();
    sub_100006654(v10, qword_100941E18);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v11, v12, "Notify all migration clients to dismiss", v13, 2u);
    }

    if (qword_100935EC8 != -1)
    {
      swift_once();
    }

    v44 = qword_100941E38;
    os_unfair_lock_lock(qword_100941E38);
    if (qword_100935EC0 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v14 = *(off_100941E30 + 8);
    v46 = off_100941E30 + 64;
    v15 = 1 << *(off_100941E30 + 32);
    v16 = -1;
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    v17 = v16 & v14;
    v45 = (v15 + 63) >> 6;
    v47 = v53 + 32;
    v48 = v53 + 16;
    v54 = (v53 + 8);
    v52 = off_100941E30;

    v18 = 0;
    v49 = v9;
    v50 = v5;
    v19 = v55;
    if (v17)
    {
      break;
    }

LABEL_12:
    if (v45 <= v18 + 1)
    {
      v21 = v18 + 1;
    }

    else
    {
      v21 = v45;
    }

    v22 = v21 - 1;
    while (1)
    {
      v20 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v20 >= v45)
      {
        v33 = sub_1000F5104(&qword_100941F98, &unk_1007A23A0);
        (*(*(v33 - 8) + 56))(v5, 1, 1, v33);
        v17 = 0;
        goto LABEL_20;
      }

      v17 = *&v46[8 * v20];
      ++v18;
      if (v17)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_26:
    swift_once();
  }

  while (1)
  {
    v20 = v18;
LABEL_19:
    v23 = __clz(__rbit64(v17));
    v17 &= v17 - 1;
    v24 = v23 | (v20 << 6);
    v25 = v52;
    v26 = v53;
    v27 = v51;
    (*(v53 + 16))(v51, v52[6] + *(v53 + 72) * v24, v19);
    v28 = *(v25[7] + 8 * v24);
    v29 = sub_1000F5104(&qword_100941F98, &unk_1007A23A0);
    v30 = *(v29 + 48);
    v31 = *(v26 + 32);
    v5 = v50;
    v31(v50, v27, v19);
    *&v5[v30] = v28;
    (*(*(v29 - 8) + 56))(v5, 0, 1, v29);

    v22 = v20;
    v9 = v49;
LABEL_20:
    sub_100031B58(v5, v9, &qword_100941F90, &qword_1007A2398);
    v32 = sub_1000F5104(&qword_100941F98, &unk_1007A23A0);
    if ((*(*(v32 - 8) + 48))(v9, 1, v32) == 1)
    {
      break;
    }

    *(*&v9[*(v32 + 48)] + 90) = 1;

    (*v54)(v9, v55);
    v18 = v22;
    if (!v17)
    {
      goto LABEL_12;
    }
  }

  v34 = sub_10038EB8C(&_swiftEmptyArrayStorage);
  v35 = off_100941E30;
  off_100941E30 = v34;
  v35, v36, v37, v38, v39, v40, v41, v42;
  os_unfair_lock_unlock(v44);
}

uint64_t sub_10031C3BC(void *a1)
{
  if (qword_100935EB8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100006654(v2, qword_100941E18);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Purge all migration clients' states", v5, 2u);
  }

  v6 = String._bridgeToObjectiveC()();
  v7 = [a1 newBackgroundContextWithAuthor:v6];

  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  v9 = swift_allocObject();
  *(v9 + 16) = sub_10031D8BC;
  *(v9 + 24) = v8;
  v13[4] = sub_1000FDA90;
  v13[5] = v9;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 1107296256;
  v13[2] = sub_10000F160;
  v13[3] = &unk_1008EE040;
  v10 = _Block_copy(v13);
  v11 = v7;

  [v11 performBlockAndWait:v10];

  _Block_release(v10);
  LOBYTE(v11) = swift_isEscapingClosureAtFileLocation();

  if (v11)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10031C608(void *a1, void *a2)
{
  v5 = swift_slowAlloc();
  *(v2 + 56) = 0;
  *(v2 + 64) = -1;
  *(v2 + 104) = 0;
  *(v2 + 112) = 0;
  *(v2 + 96) = 0;
  *(v2 + 16) = a2;
  *(v2 + 24) = a1;
  *(v2 + 32) = 0;
  *(v2 + 40) = &_swiftEmptyArrayStorage;
  *(v2 + 48) = v5;
  *v5 = 0;
  *(v2 + 72) = 0;
  *(v2 + 80) = 0;
  *(v2 + 86) = 0;
  v6 = objc_opt_self();
  v7 = a2;
  v8 = a1;
  v9 = [v6 defaultCenter];
  v10 = kReachabilityChangedNotification;
  v11 = objc_opt_self();

  v12 = [v11 sharedReachabilityForInternetConnection];
  [v9 addObserver:v2 selector:"reachabilityChangedWithNotification:" name:v10 object:v12];

  return v2;
}

void sub_10031C72C(void *a1, void *a2)
{
  v73 = a2;
  v3 = sub_1000F5104(&unk_100939D90, "8\n\r");
  __chkstk_darwin(v3 - 8, v4);
  v6 = &v72 - v5;
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7, v9);
  v74 = &v72 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11, v12);
  v14 = &v72 - v13;
  __chkstk_darwin(v15, v16);
  v18 = &v72 - v17;
  v19 = [objc_opt_self() sharedInstance];
  v20 = [v19 accountStore];

  v21 = [a1 uuid];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  UUID.uuidString.getter();
  v23 = v22;
  v76 = *(v8 + 8);
  v77 = v7;
  v76(v18, v7);
  v24 = String._bridgeToObjectiveC()();
  v23, v25, v26, v27, v28, v29, v30, v31;
  v75 = v20;
  v32 = [v20 accountWithIdentifier:v24];

  if (!v32)
  {
    __break(1u);
    goto LABEL_26;
  }

  v33 = [v32 displayAccount];

  if (!v33)
  {
LABEL_26:
    __break(1u);
    return;
  }

  v34 = [v33 identifier];

  if (!v34)
  {
LABEL_6:
    if (qword_100935EB8 != -1)
    {
      swift_once();
    }

    v45 = type metadata accessor for Logger();
    sub_100006654(v45, qword_100941E18);
    v46 = a1;
    v47 = Logger.logObject.getter();
    v48 = static os_log_type_t.error.getter();

    v49 = os_log_type_enabled(v47, v48);
    v50 = v74;
    if (v49)
    {
      v51 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      *v51 = 138543362;
      *(v51 + 4) = v46;
      *v52 = v46;
      v46 = v46;
      _os_log_impl(&_mh_execute_header, v47, v48, "Migration: account ID not found in the ACAccount store, will try to migrate anyway but expect failure {accountID: %{public}@}", v51, 0xCu);
      sub_1000050A4(v52, &unk_100938E70, &unk_100797230);
    }

    v53 = v46;
    v54 = v77;
    goto LABEL_12;
  }

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v36 = v35;
  UUID.init(uuidString:)();
  v36, v37, v38, v39, v40, v41, v42, v43;
  v44 = v77;
  if ((*(v8 + 48))(v6, 1, v77) == 1)
  {

    sub_1000050A4(v6, &unk_100939D90, "8\n\r");
    goto LABEL_6;
  }

  (*(v8 + 32))(v14, v6, v44);
  sub_1000060C8(0, &qword_1009399F0, off_1008D4120);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  isa = UUID._bridgeToObjectiveC()().super.isa;
  v53 = [ObjCClassFromMetadata objectIDWithUUID:isa];

  v76(v14, v44);
  v54 = v44;
  v50 = v74;
LABEL_12:
  if (qword_100935EC8 != -1)
  {
    swift_once();
  }

  v57 = qword_100941E38;
  os_unfair_lock_lock(qword_100941E38);
  if (qword_100935EC0 != -1)
  {
    swift_once();
  }

  v58 = [v53 uuid];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  swift_beginAccess();
  if (*(off_100941E30 + 2) && (sub_100363F20(v50), (v59 & 1) != 0))
  {
    swift_endAccess();

    v76(v50, v54);
  }

  else
  {
    swift_endAccess();
    v76(v50, v54);
    if (qword_100935EB8 != -1)
    {
      swift_once();
    }

    v60 = type metadata accessor for Logger();
    sub_100006654(v60, qword_100941E18);
    v61 = v53;
    v62 = Logger.logObject.getter();
    v63 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v62, v63))
    {
      v64 = swift_slowAlloc();
      v65 = swift_slowAlloc();
      *v64 = 138543362;
      *(v64 + 4) = v61;
      *v65 = v61;
      v66 = v61;
      _os_log_impl(&_mh_execute_header, v62, v63, "Creating new migration client {accountID: %{public}@}", v64, 0xCu);
      sub_1000050A4(v65, &unk_100938E70, &unk_100797230);
    }

    type metadata accessor for RDMigrationClient();
    swift_allocObject();
    v67 = v61;
    v68 = v73;
    v69 = sub_10031C608(v67, v68);

    swift_retain_n();
    sub_10031571C(sub_10031D5AC, v69);

    v70 = [v67 uuid];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v78 = off_100941E30;
    off_100941E30 = 0x8000000000000000;
    sub_1002C86E0(v69, v18, isUniquelyReferenced_nonNull_native);
    v76(v18, v77);
    off_100941E30 = v78;
    swift_endAccess();
  }

  os_unfair_lock_unlock(v57);
}

uint64_t sub_10031CF04(uint64_t result, unint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, uint64_t a6)
{
  v8 = result;
  v9 = (a4 >> 59) & 1;
  if ((a5 & 0x1000000000000000) == 0)
  {
    LOBYTE(v9) = 1;
  }

  v10 = 4 << v9;
  v11 = a2 & 0xC;
  v12 = a2;
  if (v11 == v10)
  {
    v14 = a2;
    v15 = a3;
    v16 = a5;
    result = sub_1002F6C3C(a2, a4, a5);
    a2 = v14;
    a3 = v15;
    a5 = v16;
    v12 = result;
    if ((v16 & 0x1000000000000000) == 0)
    {
LABEL_5:
      v13 = v12 >> 16;
      if (v11 != v10)
      {
        goto LABEL_6;
      }

      goto LABEL_14;
    }
  }

  else if ((a5 & 0x1000000000000000) == 0)
  {
    goto LABEL_5;
  }

  v17 = a4 & 0xFFFFFFFFFFFFLL;
  if ((a5 & 0x2000000000000000) != 0)
  {
    v17 = HIBYTE(a5) & 0xF;
  }

  if (v17 < v12 >> 16)
  {
    goto LABEL_104;
  }

  v18 = a2;
  v19 = a3;
  v20 = a5;
  result = String.UTF8View._foreignDistance(from:to:)();
  a5 = v20;
  v13 = result;
  a3 = v19;
  a2 = v18;
  if (v11 == v10)
  {
LABEL_14:
    v21 = a3;
    v22 = a5;
    result = sub_1002F6C3C(a2, a4, a5);
    a3 = v21;
    a5 = v22;
    a2 = result;
  }

LABEL_6:
  if ((a3 & 0xC) == v10)
  {
    v23 = a2;
    v24 = a5;
    result = sub_1002F6C3C(a3, a4, a5);
    a2 = v23;
    a5 = v24;
    a3 = result;
    if ((v24 & 0x1000000000000000) == 0)
    {
      goto LABEL_8;
    }
  }

  else if ((a5 & 0x1000000000000000) == 0)
  {
LABEL_8:
    result = (a3 >> 16) - (a2 >> 16);
    goto LABEL_21;
  }

  v25 = HIBYTE(a5) & 0xF;
  if ((a5 & 0x2000000000000000) == 0)
  {
    v25 = a4 & 0xFFFFFFFFFFFFLL;
  }

  if (v25 < a2 >> 16)
  {
    goto LABEL_100;
  }

  if (v25 < a3 >> 16)
  {
LABEL_101:
    __break(1u);
    goto LABEL_102;
  }

  result = String.UTF8View._foreignDistance(from:to:)();
LABEL_21:
  v26 = v13 + result;
  if (__OFADD__(v13, result))
  {
    __break(1u);
    goto LABEL_99;
  }

  if (v26 < v13)
  {
LABEL_99:
    __break(1u);
LABEL_100:
    __break(1u);
    goto LABEL_101;
  }

  v27 = (v13 + v8);
  if (!v8)
  {
    v27 = 0;
  }

  v28 = *v27;
  if (v28 == 43)
  {
    if (result >= 1)
    {
      if (result != 1)
      {
        v41 = a6 + 87;
        if (a6 > 10)
        {
          v42 = a6 + 55;
        }

        else
        {
          v41 = 97;
          v42 = 65;
        }

        if (a6 <= 10)
        {
          v43 = a6 + 48;
        }

        else
        {
          v43 = 58;
        }

        if (v27)
        {
          v32 = 0;
          v44 = v27 + 1;
          v45 = result - 1;
          do
          {
            v46 = *v44;
            if (v46 < 0x30 || v46 >= v43)
            {
              if (v46 < 0x41 || v46 >= v42)
              {
                v37 = 0;
                v38 = 1;
                if (v46 < 0x61 || v46 >= v41)
                {
                  return v37 | (v38 << 32);
                }

                v47 = -87;
              }

              else
              {
                v47 = -55;
              }
            }

            else
            {
              v47 = -48;
            }

            v48 = v32 * a6;
            if ((v48 & 0xFFFFFFFF00000000) != 0)
            {
              goto LABEL_96;
            }

            v49 = v46 + v47;
            v32 = v48 + v49;
            if (__CFADD__(v48, v49))
            {
              goto LABEL_96;
            }

            ++v44;
            --v45;
          }

          while (v45);
LABEL_94:
          v38 = 0;
          v37 = v32;
          return v37 | (v38 << 32);
        }

        goto LABEL_95;
      }

      goto LABEL_96;
    }

    goto LABEL_103;
  }

  if (v28 != 45)
  {
    if (v26 != v13)
    {
      v50 = a6 + 87;
      if (a6 > 10)
      {
        v51 = a6 + 55;
      }

      else
      {
        v50 = 97;
        v51 = 65;
      }

      if (a6 <= 10)
      {
        v52 = a6 + 48;
      }

      else
      {
        v52 = 58;
      }

      if (v27)
      {
        v32 = 0;
        while (1)
        {
          v53 = *v27;
          if (v53 < 0x30 || v53 >= v52)
          {
            if (v53 < 0x41 || v53 >= v51)
            {
              v37 = 0;
              v38 = 1;
              if (v53 < 0x61 || v53 >= v50)
              {
                return v37 | (v38 << 32);
              }

              v54 = -87;
            }

            else
            {
              v54 = -55;
            }
          }

          else
          {
            v54 = -48;
          }

          v55 = v32 * a6;
          if ((v55 & 0xFFFFFFFF00000000) != 0)
          {
            goto LABEL_96;
          }

          v56 = v53 + v54;
          v32 = v55 + v56;
          if (__CFADD__(v55, v56))
          {
            goto LABEL_96;
          }

          ++v27;
          if (!--result)
          {
            goto LABEL_94;
          }
        }
      }

      goto LABEL_95;
    }

LABEL_96:
    v37 = 0;
    v38 = 1;
    return v37 | (v38 << 32);
  }

  if (result >= 1)
  {
    if (result != 1)
    {
      v29 = a6 + 87;
      if (a6 > 10)
      {
        v30 = a6 + 55;
      }

      else
      {
        v29 = 97;
        v30 = 65;
      }

      if (a6 <= 10)
      {
        v31 = a6 + 48;
      }

      else
      {
        v31 = 58;
      }

      if (v27)
      {
        v32 = 0;
        v33 = v27 + 1;
        v34 = result - 1;
        while (1)
        {
          v35 = *v33;
          if (v35 < 0x30 || v35 >= v31)
          {
            if (v35 < 0x41 || v35 >= v30)
            {
              v37 = 0;
              v38 = 1;
              if (v35 < 0x61 || v35 >= v29)
              {
                return v37 | (v38 << 32);
              }

              v36 = -87;
            }

            else
            {
              v36 = -55;
            }
          }

          else
          {
            v36 = -48;
          }

          v39 = v32 * a6;
          if ((v39 & 0xFFFFFFFF00000000) != 0)
          {
            goto LABEL_96;
          }

          v40 = v35 + v36;
          v32 = v39 - v40;
          if (v39 < v40)
          {
            goto LABEL_96;
          }

          ++v33;
          if (!--v34)
          {
            goto LABEL_94;
          }
        }
      }

LABEL_95:
      v37 = 0;
      v38 = 0;
      return v37 | (v38 << 32);
    }

    goto LABEL_96;
  }

LABEL_102:
  __break(1u);
LABEL_103:
  __break(1u);
LABEL_104:
  __break(1u);
  return result;
}

void sub_10031D370(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  [a1 setQueuePriority:-4];
  [a1 setQualityOfService:17];
  if (a2)
  {
    v26[4] = a2;
    v26[5] = a3;
    v26[0] = _NSConcreteStackBlock;
    v26[1] = 1107296256;
    v26[2] = sub_10031B6FC;
    v26[3] = a4;
    v8 = _Block_copy(v26);
  }

  else
  {
    v8 = 0;
  }

  [a1 setRequestCompletedBlock:v8];
  _Block_release(v8);
  v9 = dispatch thunk of CKCodeOperation.codeService.getter();
  if (v9)
  {
    v10 = v9;
    CKCodeService.add<A, B>(_:)();
  }

  else
  {
    swift_getObjectType();
    if (qword_100935EB8 != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    sub_100006654(v11, qword_100941E18);
    v10 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v10, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v26[0] = v14;
      *v13 = 136315138;
      v15 = _typeName(_:qualified:)();
      v17 = v16;
      v18 = sub_10000668C(v15, v16, v26);
      v17, v19, v20, v21, v22, v23, v24, v25;
      *(v13 + 4) = v18;
      _os_log_impl(&_mh_execute_header, v10, v12, "TantorMigrationAPIAsyncOperationClient.perform %s: codeService is nil", v13, 0xCu);
      sub_10000607C(v14);
    }
  }
}

uint64_t sub_10031D598(uint64_t result)
{
  if ((result & 0xFFFC) != 0)
  {
    return 4;
  }

  else
  {
    return result;
  }
}

void sub_10031D5C0()
{
  if ([objc_opt_self() isInternetReachable])
  {
    v1 = *(v0 + 48);
    os_unfair_lock_lock(v1);
    if (*(v0 + 92) == 1)
    {
      v2 = *(v0 + 93);
      *(v0 + 92) = 0;
      sub_100314078(v2);
    }

    os_unfair_lock_unlock(v1);
  }
}

uint64_t sub_10031D6CC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_10031D734()
{
  result = qword_100941F80;
  if (!qword_100941F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100941F80);
  }

  return result;
}

void sub_10031D788(void *a1, char a2)
{
  if (a2 != -1)
  {
    sub_100067078(a1, a2 & 1);
  }
}

id sub_10031D7D4(id result, char a2)
{
  if (a2 != -1)
  {
    return sub_100066F20(result, a2 & 1);
  }

  return result;
}

uint64_t sub_10031D7F4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10031D85C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10031D8C4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_10031D9C4(uint64_t a1, uint64_t a2, uint64_t a3, _TtC7remindd19RDXPCStorePerformer *a4)
{
  v5 = v4;
  if (a2)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v43 = *v4;
    sub_1002C72CC(a1, a2, a3, a4, isUniquelyReferenced_nonNull_native);
    a4, v11, v12, v13, v14, v15, v16, v17;
    *v4 = v43;
  }

  else
  {
    v18 = sub_100005F4C(a3, a4);
    v20 = v19;
    a4, v19, v21, v22, v23, v24, v25, v26;
    if (v20)
    {
      v27 = swift_isUniquelyReferenced_nonNull_native();
      v35 = *v5;
      v44 = *v5;
      if (!v27)
      {
        sub_100373664();
        v35 = v44;
      }

      *(*(v35 + 48) + 16 * v18 + 8), v28, v29, v30, v31, v32, v33, v34;
      *(*(v35 + 56) + 16 * v18 + 8), v36, v37, v38, v39, v40, v41, v42;
      sub_1003328B8(v18, v35);
      *v5 = v35;
    }
  }
}

void sub_10031DB24(uint64_t a1, uint64_t a2, _TtC7remindd19RDXPCStorePerformer *a3, void (*a4)(uint64_t, uint64_t, uint64_t, uint64_t), void (*a5)(void))
{
  v6 = v5;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v45 = *v5;
    a4(a1, a2, a3, isUniquelyReferenced_nonNull_native);
    a3, v12, v13, v14, v15, v16, v17, v18;
    *v5 = v45;
  }

  else
  {
    v20 = sub_100005F4C(a2, a3);
    v22 = v21;
    a3, v21, v23, v24, v25, v26, v27, v28;
    if (v22)
    {
      v29 = swift_isUniquelyReferenced_nonNull_native();
      v37 = *v6;
      v46 = *v6;
      if (!v29)
      {
        a5();
        v37 = v46;
      }

      *(*(v37 + 48) + 16 * v20 + 8), v30, v31, v32, v33, v34, v35, v36;
      *(*(v37 + 56) + 8 * v20), v38, v39, v40, v41, v42, v43, v44;
      sub_100332708(v20, v37);
      *v6 = v37;
    }
  }
}

uint64_t sub_10031DC2C(uint64_t a1, uint64_t a2)
{
  v5 = sub_1000F5104(&unk_100939D90, "8\n\r");
  __chkstk_darwin(v5 - 8, v6);
  v8 = &v17 - v7;
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  v12 = __chkstk_darwin(v9, v11);
  v14 = &v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v10 + 48))(a1, 1, v9, v12) == 1)
  {
    sub_1000050A4(a1, &unk_100939D90, "8\n\r");
    sub_10036922C(a2, v8);
    (*(v10 + 8))(a2, v9);
    return sub_1000050A4(v8, &unk_100939D90, "8\n\r");
  }

  else
  {
    (*(v10 + 32))(v14, a1, v9);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v2;
    sub_1002C81B4(v14, a2, isUniquelyReferenced_nonNull_native);
    result = (*(v10 + 8))(a2, v9);
    *v2 = v18;
  }

  return result;
}

void sub_10031DE1C(uint64_t a1, uint64_t a2, _TtC7remindd19RDXPCStorePerformer *a3)
{
  if (*(a1 + 24))
  {
    sub_100005EE0(a1, v22);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v21 = *v3;
    sub_1002C88F0(v22, a2, a3, isUniquelyReferenced_nonNull_native);
    a3, v7, v8, v9, v10, v11, v12, v13;
    *v3 = v21;
  }

  else
  {
    sub_1000050A4(a1, &qword_100939ED0, &qword_100791B10);
    sub_1003693C4(a2, a3, v22);
    a3, v14, v15, v16, v17, v18, v19, v20;
    sub_1000050A4(v22, &qword_100939ED0, &qword_100791B10);
  }
}

void sub_10031DEEC(uint64_t a1, uint64_t a2, _TtC7remindd19RDXPCStorePerformer *a3, void (*a4)(uint64_t, uint64_t, uint64_t, uint64_t), void (*a5)(void))
{
  v6 = v5;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v38 = *v5;
    a4(a1, a2, a3, isUniquelyReferenced_nonNull_native);
    a3, v12, v13, v14, v15, v16, v17, v18;
    *v5 = v38;
  }

  else
  {
    v20 = sub_100005F4C(a2, a3);
    v22 = v21;
    a3, v21, v23, v24, v25, v26, v27, v28;
    if (v22)
    {
      v29 = swift_isUniquelyReferenced_nonNull_native();
      v37 = *v6;
      v39 = *v6;
      if (!v29)
      {
        a5();
        v37 = v39;
      }

      *(*(v37 + 48) + 16 * v20 + 8), v30, v31, v32, v33, v34, v35, v36;

      sub_100332708(v20, v37);
      *v6 = v37;
    }
  }
}

void sub_10031DFF4(uint64_t a1, uint64_t a2, _TtC7remindd19RDXPCStorePerformer *a3)
{
  if (*(a1 + 24))
  {
    sub_100054B6C(a1, v22);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v21 = *v3;
    sub_1002C92F0(v22, a2, a3, isUniquelyReferenced_nonNull_native);
    a3, v7, v8, v9, v10, v11, v12, v13;
    *v3 = v21;
  }

  else
  {
    sub_1000050A4(a1, &qword_100942150, &qword_1007A25D0);
    sub_1003697B4(a2, a3, v22);
    a3, v14, v15, v16, v17, v18, v19, v20;
    sub_1000050A4(v22, &qword_100942150, &qword_1007A25D0);
  }
}

void sub_10031E0C4(uint64_t a1, char a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v5 = sub_10002B924(a3);
    if (v6)
    {
      v7 = v5;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v9 = *v3;
      v13 = *v4;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_100376430();
        v9 = v13;
      }

      sub_100333718(v7, v9);
      *v4 = v9;
    }

    else
    {
    }
  }

  else
  {
    v11 = swift_isUniquelyReferenced_nonNull_native();
    v14 = *v3;
    sub_1002C95FC(a1, a3, v11);

    *v3 = v14;
  }
}

void sub_10031E1BC(uint64_t a1, uint64_t a2, _TtC7remindd19RDXPCStorePerformer *a3)
{
  v4 = v3;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v34 = *v3;
    sub_1002C9B04(a1, a2, a3, isUniquelyReferenced_nonNull_native);
    a3, v9, v10, v11, v12, v13, v14, v15;
    *v3 = v34;
  }

  else
  {
    v16 = sub_100005F4C(a2, a3);
    v18 = v17;
    a3, v17, v19, v20, v21, v22, v23, v24;
    if (v18)
    {
      v25 = swift_isUniquelyReferenced_nonNull_native();
      v33 = *v4;
      v35 = *v4;
      if (!v25)
      {
        sub_100376878();
        v33 = v35;
      }

      *(*(v33 + 48) + 16 * v16 + 8), v26, v27, v28, v29, v30, v31, v32;

      sub_100332708(v16, v33);
      *v4 = v33;
    }
  }
}

uint64_t sub_10031E2B4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v2;
    sub_1002C9FE4(a1, a2, isUniquelyReferenced_nonNull_native);
    v7 = type metadata accessor for UUID();
    result = (*(*(v7 - 8) + 8))(a2, v7);
    *v2 = v20;
  }

  else
  {
    v9 = sub_100363F20(a2);
    if (v10)
    {
      v11 = v9;
      v12 = swift_isUniquelyReferenced_nonNull_native();
      v13 = *v2;
      v21 = *v3;
      if (!v12)
      {
        sub_100376A38();
        v13 = v21;
      }

      v14 = *(v13 + 48);
      v15 = type metadata accessor for UUID();
      v16 = *(v15 - 8);
      v17 = *(v16 + 8);
      v17(v14 + *(v16 + 72) * v11, v15);

      sub_1003338A4(v11, v13);
      result = (v17)(a2, v15);
      *v3 = v13;
    }

    else
    {
      v18 = type metadata accessor for UUID();
      v19 = *(*(v18 - 8) + 8);

      return v19(a2, v18);
    }
  }

  return result;
}

uint64_t sub_10031E474(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24))
  {
    sub_100054B6C(a1, v9);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v8 = *v2;
    sub_1002CA1DC(v9, a2, isUniquelyReferenced_nonNull_native);
    v5 = type metadata accessor for UUID();
    result = (*(*(v5 - 8) + 8))(a2, v5);
    *v2 = v8;
  }

  else
  {
    sub_1000050A4(a1, &qword_100940AC8, &qword_1007A0510);
    sub_100369A64(a2, v9);
    v7 = type metadata accessor for UUID();
    (*(*(v7 - 8) + 8))(a2, v7);
    return sub_1000050A4(v9, &qword_100940AC8, &qword_1007A0510);
  }

  return result;
}

uint64_t sub_10031E590(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = *v2;
    sub_1002CA5B0(a1, a2, isUniquelyReferenced_nonNull_native);
    v7 = type metadata accessor for UUID();
    result = (*(*(v7 - 8) + 8))(a2, v7);
    *v2 = v27;
  }

  else
  {
    v9 = sub_100363F20(a2);
    if (v10)
    {
      v11 = v9;
      v12 = swift_isUniquelyReferenced_nonNull_native();
      v13 = *v2;
      v28 = *v3;
      if (!v12)
      {
        sub_100376F7C();
        v13 = v28;
      }

      v14 = *(v13 + 48);
      v15 = type metadata accessor for UUID();
      v16 = *(v15 - 8);
      v17 = *(v16 + 8);
      v17(v14 + *(v16 + 72) * v11, v15);
      *(*(v13 + 56) + 8 * v11), v18, v19, v20, v21, v22, v23, v24;
      sub_1003338A4(v11, v13);
      result = (v17)(a2, v15);
      *v3 = v13;
    }

    else
    {
      v25 = type metadata accessor for UUID();
      v26 = *(*(v25 - 8) + 8);

      return v26(a2, v25);
    }
  }

  return result;
}

void sub_10031E750(uint64_t a1, void *a2)
{
  v3 = v2;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = *v2;
    sub_1002CA7C4(a1, a2, isUniquelyReferenced_nonNull_native);

    *v2 = v19;
  }

  else
  {
    v6 = sub_10002B924(a2);
    if (v7)
    {
      v8 = v6;
      v9 = swift_isUniquelyReferenced_nonNull_native();
      v10 = *v2;
      v20 = *v3;
      if (!v9)
      {
        sub_100377574();
        v10 = v20;
      }

      *(*(v10 + 56) + 8 * v8), v11, v12, v13, v14, v15, v16, v17;
      sub_100333718(v8, v10);

      *v3 = v10;
    }

    else
    {
    }
  }
}

void *sub_10031E854(uint64_t a1)
{
  v2 = _HashTable.startBucket.getter();
  if (v2 == 1 << *(a1 + 32))
  {
    return 0;
  }

  v4 = sub_100334068(v2, *(a1 + 36), 0, a1);
  v5 = v4;
  return v4;
}

uint64_t sub_10031E8F4(uint64_t a1)
{
  v2 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v3 = __CocoaDictionary.startIndex.getter();
    v5 = v4;
    v6 = __CocoaDictionary.endIndex.getter();
    v8 = v7;
    v9 = static __CocoaDictionary.Index.== infix(_:_:)();
    sub_100010E34(v6, v8, 1, v10, v11, v12, v13, v14);
    if (v9)
    {
LABEL_3:
      sub_100010E34(v3, v5, (v2 != 0), v15, v16, v17, v18, v19);
      return 0;
    }
  }

  else
  {
    v3 = _HashTable.startBucket.getter();
    v5 = *(a1 + 36);
    if (v3 == (1 << *(a1 + 32)))
    {
      goto LABEL_3;
    }
  }

  sub_10014ABC4(&v28, v3, v5, v2 != 0, a1);
  v22 = v21;
  sub_100010E34(v3, v5, (v2 != 0), v23, v24, v25, v26, v27);
  return v22;
}

uint64_t sub_10031EA3C(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, BOOL, uint64_t))
{
  v4 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v5 = __CocoaSet.startIndex.getter();
    v7 = v6;
    v8 = __CocoaSet.endIndex.getter();
    v10 = v9;
    v11 = static __CocoaSet.Index.== infix(_:_:)();
    sub_100010E34(v8, v10, 1, v12, v13, v14, v15, v16);
    if (v11)
    {
LABEL_3:
      sub_100010E34(v5, v7, (v4 != 0), v17, v18, v19, v20, v21);
      return 0;
    }
  }

  else
  {
    v5 = _HashTable.startBucket.getter();
    v7 = *(a1 + 36);
    if (v5 == (1 << *(a1 + 32)))
    {
      goto LABEL_3;
    }
  }

  v23 = a2(v5, v7, v4 != 0, a1);
  sub_100010E34(v5, v7, (v4 != 0), v24, v25, v26, v27, v28);
  return v23;
}

double sub_10031EB60(uint64_t a1)
{
  v2 = _HashTable.startBucket.getter();
  if (v2 != 1 << *(a1 + 32))
  {
    sub_1003340B8(v2, *(a1 + 36), 0, a1);
  }

  return result;
}

void *sub_10031EBC8(uint64_t a1)
{
  v2 = _HashTable.startBucket.getter();
  if (v2 == 1 << *(a1 + 32))
  {
    return 0;
  }

  else
  {
    return sub_10014ADD8(&v4, v2, *(a1 + 36), 0, a1);
  }
}

uint64_t sub_10031EC48(uint64_t a1)
{
  v2 = _HashTable.startBucket.getter();
  if (v2 == 1 << *(a1 + 32))
  {
    return 0;
  }

  v4 = sub_100411E50(v2, *(a1 + 36), 0, a1);

  return v4;
}

uint64_t sub_10031ECC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = _HashTable.startBucket.getter();
  if (result == 1 << *(a1 + 32))
  {
    *(a2 + 32) = 0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  else
  {
    v5 = *(a1 + 36);

    return sub_100411DD0(result, v5, a1, a2);
  }

  return result;
}

void *sub_10031ED4C(uint64_t a1)
{
  v2 = _HashTable.startBucket.getter();
  if (v2 == 1 << *(a1 + 32))
  {
    return 0;
  }

  else
  {
    return sub_10014AE5C(&v4, v2, *(a1 + 36), 0, a1);
  }
}

void sub_10031EDCC(_TtC7remindd19RDXPCStorePerformer *a1, void (*a2)(_TtC7remindd19RDXPCStorePerformer **, id *), uint64_t a3, uint64_t a4)
{
  v39 = a1;
  v6 = a4 + 64;
  v7 = 1 << *(a4 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a4 + 64);
  v10 = (v7 + 63) >> 6;

  v11 = 0;
  if (v9)
  {
    while (1)
    {
      v12 = v11;
LABEL_8:
      v13 = (v12 << 9) | (8 * __clz(__rbit64(v9)));
      v14 = *(*(a4 + 56) + v13);
      v38[0] = *(*(a4 + 48) + v13);
      v38[1] = v14;
      v15 = v38[0];

      a2(&v39, v38);
      if (v4)
      {
        break;
      }

      v9 &= v9 - 1;
      v14, v16, v17, v18, v19, v20, v21, v22;

      v11 = v12;
      if (!v9)
      {
        goto LABEL_5;
      }
    }

    v14, v23, v24, v25, v26, v27, v28, v29;

    v39, v30, v31, v32, v33, v34, v35, v36;
  }

  else
  {
LABEL_5:
    while (1)
    {
      v12 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v12 >= v10)
      {

        return;
      }

      v9 = *(v6 + 8 * v12);
      ++v11;
      if (v9)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }
}

void sub_10031EF28(_TtC7remindd19RDXPCStorePerformer *a1, void (*a2)(uint64_t *, void *, __n128), uint64_t a3, uint64_t a4)
{
  v54 = a1;
  v6 = a4 + 64;
  v7 = 1 << *(a4 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a4 + 64);
  v10 = (v7 + 63) >> 6;

  v11 = 0;
  if (v9)
  {
    while (1)
    {
      v12 = v11;
LABEL_8:
      v13 = __clz(__rbit64(v9)) | (v12 << 6);
      v14 = (*(a4 + 48) + 16 * v13);
      v15 = v14[1];
      v16 = *(*(a4 + 56) + 8 * v13);
      v53[0] = *v14;
      v53[1] = v15;
      v53[2] = v16;

      (a2)(&v54, v53);
      if (v4)
      {
        break;
      }

      v9 &= v9 - 1;
      v16, v17, v18, v19, v20, v21, v22, v23;
      v15, v24, v25, v26, v27, v28, v29, v30;
      v11 = v12;
      if (!v9)
      {
        goto LABEL_5;
      }
    }

    v16, v31, v32, v33, v34, v35, v36, v37;
    v15, v38, v39, v40, v41, v42, v43, v44;
    v54, v45, v46, v47, v48, v49, v50, v51;
  }

  else
  {
LABEL_5:
    while (1)
    {
      v12 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v12 >= v10)
      {

        return;
      }

      v9 = *(v6 + 8 * v12);
      ++v11;
      if (v9)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }
}

void sub_10031F090(_TtC7remindd19RDXPCStorePerformer *a1, void (*a2)(id *, id *), uint64_t a3, unint64_t a4)
{
  v20 = a1;
  if (a4 >> 62)
  {
    goto LABEL_16;
  }

  for (i = *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10); i; a1 = v17)
  {
    for (j = 0; ; ++j)
    {
      if ((a4 & 0xC000000000000001) != 0)
      {
        a1 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (j >= *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_15;
        }

        a1 = *(a4 + 8 * j + 32);
      }

      v8 = a1;
      v9 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      v19 = a1;
      a2(&v20, &v19);

      if (v4)
      {
        v20, v10, v11, v12, v13, v14, v15, v16;
        return;
      }

      if (v9 == i)
      {
        return;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    v17 = a1;
    i = _CocoaArrayWrapper.endIndex.getter();
  }
}

uint64_t sub_10031F1B8(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  *(v6 + 632) = v5;
  *(v6 + 624) = a5;
  *(v6 + 616) = a4;
  *(v6 + 73) = a3;
  *(v6 + 608) = a2;
  *(v6 + 600) = a1;
  *(v6 + 640) = *v5;
  v7 = type metadata accessor for Date();
  *(v6 + 648) = v7;
  v8 = *(v7 - 8);
  *(v6 + 656) = v8;
  *(v6 + 664) = *(v8 + 64);
  *(v6 + 672) = swift_task_alloc();
  *(v6 + 680) = swift_task_alloc();
  *(v6 + 688) = sub_1000F5104(&unk_100939D90, "8\n\r");
  *(v6 + 696) = swift_task_alloc();
  *(v6 + 704) = swift_task_alloc();
  *(v6 + 712) = swift_task_alloc();
  *(v6 + 720) = swift_task_alloc();
  sub_1000F5104(&qword_1009420F8, &unk_1007A2508);
  *(v6 + 728) = swift_task_alloc();
  v9 = type metadata accessor for UUID();
  *(v6 + 736) = v9;
  *(v6 + 744) = *(v9 - 8);
  *(v6 + 752) = swift_task_alloc();
  *(v6 + 760) = swift_task_alloc();
  *(v6 + 768) = swift_task_alloc();
  *(v6 + 776) = swift_task_alloc();
  *(v6 + 784) = swift_task_alloc();
  *(v6 + 792) = swift_task_alloc();
  v10 = type metadata accessor for DispatchTime();
  *(v6 + 800) = v10;
  *(v6 + 808) = *(v10 - 8);
  *(v6 + 816) = swift_task_alloc();
  v11 = type metadata accessor for REMTrialNamespace();
  *(v6 + 824) = v11;
  *(v6 + 832) = *(v11 - 8);
  *(v6 + 840) = swift_task_alloc();
  v12 = type metadata accessor for NSManagedObjectContext.ScheduledTaskType();
  *(v6 + 848) = v12;
  *(v6 + 856) = *(v12 - 8);
  *(v6 + 864) = swift_task_alloc();
  *(v6 + 872) = swift_task_alloc();
  v13 = *(sub_1000F5104(&unk_10093F420, &unk_100797AE0) - 8);
  *(v6 + 880) = v13;
  *(v6 + 888) = *(v13 + 64);
  *(v6 + 896) = swift_task_alloc();
  *(v6 + 904) = swift_task_alloc();

  return _swift_task_switch(sub_10031F590, 0, 0);
}

uint64_t sub_10031F590()
{
  v1 = *(v0 + 608);
  v2 = swift_allocObject();
  *(v0 + 912) = v2;
  v45 = v2;
  *(v2 + 16) = 0;
  v3 = swift_allocObject();
  *(v0 + 920) = v3;
  v47 = v3;
  *(v3 + 16) = _swiftEmptyDictionarySingleton;
  v4 = swift_allocObject();
  *(v0 + 928) = v4;
  v48 = v4;
  *(v4 + 16) = 0;
  v5 = swift_allocObject();
  *(v0 + 936) = v5;
  v44 = v5;
  *(v5 + 16) = &_swiftEmptyArrayStorage;
  v6 = swift_allocObject();
  *(v0 + 944) = v6;
  v43 = v6;
  *(v6 + 16) = &_swiftEmptyArrayStorage;
  v7 = swift_allocObject();
  *(v0 + 952) = v7;
  v42 = v7;
  *(v7 + 16) = _swiftEmptyDictionarySingleton;
  v8 = *(v1 + 40);
  *(v0 + 960) = v8;
  v9 = *(v1 + 48);
  *(v0 + 968) = v9;
  v38 = v8;
  v39 = v9;
  if (v9)
  {

    Locale.init(identifier:)();
    v10 = 0;
    v41 = *(v0 + 608);
    v11 = v9;
  }

  else
  {
    v11 = 0;
    v10 = 1;
    v41 = v1;
  }

  *(v0 + 976) = v11;
  v12 = *(v0 + 904);
  v13 = *(v0 + 896);
  v14 = *(v0 + 888);
  v15 = *(v0 + 880);
  v37 = *(v0 + 856);
  v40 = *(v0 + 872);
  v16 = *(v0 + 624);
  v35 = v13;
  v36 = *(v0 + 73);
  v46 = *(v0 + 600);
  v17 = type metadata accessor for Locale();
  (*(*(v17 - 8) + 56))(v12, v10, 1, v17);
  v18 = swift_allocObject();
  swift_weakInit();
  sub_100010364(v12, v13, &unk_10093F420, &unk_100797AE0);
  v19 = *(v15 + 80);
  *(v0 + 76) = v19;
  v20 = (v19 + 128) & ~v19;
  v21 = v20 + v14;
  v22 = (v20 + v14) & 0xFFFFFFFFFFFFFFF8;
  v23 = (v22 + 23) & 0xFFFFFFFFFFFFFFF8;
  v24 = (v23 + 15) & 0xFFFFFFFFFFFFFFF8;
  v25 = swift_allocObject();
  *(v0 + 984) = v25;
  *(v25 + 16) = v18;
  *(v25 + 24) = v16;
  v26 = *v41;
  v27 = v41[1];
  v28 = v41[2];
  *(v25 + 73) = *(v41 + 41);
  *(v25 + 48) = v27;
  *(v25 + 64) = v28;
  *(v25 + 32) = v26;
  *(v25 + 96) = v45;
  *(v25 + 104) = v47;
  *(v25 + 112) = v48;
  *(v25 + 120) = v46;
  sub_100031B58(v35, v25 + v20, &unk_10093F420, &unk_100797AE0);
  *(v25 + v21) = v36;
  *(v25 + v22 + 8) = v43;
  *(v25 + v23) = v42;
  v29 = (v25 + v24);
  *v29 = v38;
  v29[1] = v39;
  *(v25 + ((v24 + 23) & 0xFFFFFFFFFFFFFFF8)) = v44;
  *(v0 + 140) = enum case for NSManagedObjectContext.ScheduledTaskType.immediate(_:);
  v30 = *(v37 + 104);
  *(v0 + 992) = v30;
  *(v0 + 1000) = (v37 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v30(v40);

  v31 = v16;
  sub_10033251C(v41, v0 + 16);

  v32 = swift_task_alloc();
  *(v0 + 1008) = v32;
  *v32 = v0;
  v32[1] = sub_10031F9B8;
  v33 = *(v0 + 872);

  return NSManagedObjectContext.perform<A>(schedule:_:)(v32, v33, sub_1003324F0, v25, &type metadata for () + 1);
}

uint64_t sub_10031F9B8()
{
  v2 = *v1;
  v2[127] = v0;

  v3 = v2[109];
  v4 = v2[107];
  v5 = v2[106];
  if (v0)
  {

    (*(v4 + 8))(v3, v5);
    v6 = sub_100320134;
  }

  else
  {
    v7 = *(v4 + 8);
    v2[128] = v7;
    v2[129] = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v7(v3, v5);

    v6 = sub_10031FB84;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_10031FB84()
{
  v68 = v0;
  if (!*(v0 + 968))
  {
    v62 = *(v0 + 992);
    v61 = *(v0 + 140);
    v3 = *(v0 + 76);
    v64 = *(v0 + 952);
    v65 = *(v0 + 944);
    v57 = *(v0 + 912);
    v58 = *(v0 + 928);
    v4 = *(v0 + 904);
    v5 = *(v0 + 896);
    v52 = *(v0 + 888);
    v59 = *(v0 + 864);
    v60 = *(v0 + 848);
    v6 = *(v0 + 672);
    v56 = v6;
    v7 = *(v0 + 656);
    v8 = *(v0 + 648);
    v54 = v5;
    v55 = v8;
    v63 = *(v0 + 624);
    v9 = *(v0 + 616);
    v10 = *(v0 + 608);
    v53 = swift_allocObject();
    swift_weakInit();
    sub_100010364(v4, v5, &unk_10093F420, &unk_100797AE0);
    (*(v7 + 16))(v6, v9, v8);
    v11 = (v3 + 104) & ~v3;
    v12 = (v11 + v52 + 7) & 0xFFFFFFFFFFFFFFF8;
    v13 = (v12 + 15) & 0xFFFFFFFFFFFFFFF8;
    v14 = (v13 + 15) & 0xFFFFFFFFFFFFFFF8;
    v15 = (v14 + 15) & 0xFFFFFFFFFFFFFFF8;
    v16 = (v15 + *(v7 + 80) + 8) & ~*(v7 + 80);
    v17 = swift_allocObject();
    *(v0 + 1088) = v17;
    *(v17 + 16) = v53;
    *(v17 + 24) = v63;
    v18 = *v10;
    v19 = v10[1];
    v20 = v10[2];
    *(v17 + 73) = *(v10 + 41);
    *(v17 + 48) = v19;
    *(v17 + 64) = v20;
    *(v17 + 32) = v18;
    *(v17 + 96) = _swiftEmptyDictionarySingleton;
    sub_100031B58(v54, v17 + v11, &unk_10093F420, &unk_100797AE0);
    *(v17 + v12) = v65;
    *(v17 + v13) = v57;
    *(v17 + v14) = v64;
    *(v17 + v15) = v58;
    (*(v7 + 32))(v17 + v16, v56, v55);
    v62(v59, v61, v60);
    v21 = v63;
    sub_10033251C(v10, v0 + 80);

    v22 = swift_task_alloc();
    *(v0 + 1096) = v22;
    *v22 = v0;
    v22[1] = sub_100322FDC;
    v23 = *(v0 + 864);
    v24 = sub_100332578;
    v25 = &type metadata for () + 1;
    v26 = v17;

    return NSManagedObjectContext.perform<A>(schedule:_:)(v22, v23, v24, v26, v25);
  }

  v1 = *(v0 + 1016);
  type metadata accessor for REMTrialClient();
  swift_allocObject();
  REMTrialClient.init()();
  if (v1)
  {

    v2 = 0;
  }

  else
  {
    v27 = *(v0 + 840);
    v28 = *(v0 + 832);
    v29 = *(v0 + 824);
    (*(v28 + 104))(v27, enum case for REMTrialNamespace.grocery(_:), v29);
    dispatch thunk of REMTrialClient.deploymentId(for:)();
    v2 = v30;

    (*(v28 + 8))(v27, v29);
  }

  *(v0 + 1040) = v2;
  v31 = *(v0 + 936);
  v32 = *(v0 + 920);
  swift_beginAccess();
  v33 = *(v31 + 16);
  *(v0 + 512) = v33;

  sub_1000F5104(&qword_1009420F0, &qword_1007A24F0);
  sub_10000CB48(&qword_100942100, &qword_1009420F0, &qword_1007A24F0, &protocol conformance descriptor for [A]);
  v34 = Sequence.mapToSet<A>(_:)();
  *(v0 + 1048) = v34;
  v33, v35, v36, v37, v38, v39, v40, v41;
  swift_beginAccess();
  v42 = *(v32 + 16);
  v43 = *(v42 + 16);
  if (!v43)
  {
    v44 = &_swiftEmptyArrayStorage;
    goto LABEL_12;
  }

  v66 = v34;
  v44 = sub_100368C88(v43, 0);
  v45 = *(_s9UtilitiesO47REMCDListSectionThreadSafePartialRepresentationVMa(0) - 8);
  sub_100279EBC(v67, v44 + ((*(v45 + 80) + 32) & ~*(v45 + 80)), v43, v42);
  v47 = v46;
  v48 = v67[0];

  v22 = sub_10001B860(v48);
  if (v47 != v43)
  {
    __break(1u);
    return NSManagedObjectContext.perform<A>(schedule:_:)(v22, v23, v24, v26, v25);
  }

  v34 = v66;
LABEL_12:
  *(v0 + 1056) = v44;
  static DispatchTime.now()();
  v49 = swift_task_alloc();
  *(v0 + 1064) = v49;
  *v49 = v0;
  v49[1] = sub_10032030C;
  v50 = *(v0 + 608);

  return sub_100334108(v34, v50);
}

uint64_t sub_100320134()
{
  sub_1000050A4(*(v0 + 904), &unk_10093F420, &unk_100797AE0);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10032030C(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 1072) = a1;
  *(v4 + 1080) = v1;

  *(v3 + 1048), v5, v6, v7, v8, v9, v10, v11;

  if (v1)
  {
    v12 = sub_100321830;
  }

  else
  {
    v12 = sub_100320468;
  }

  return _swift_task_switch(v12, 0, 0);
}

uint64_t sub_100320468()
{
  v394 = v0;
  v1 = *(v0 + 1072);
  if (!v1)
  {
    v1 = sub_10038E004(&_swiftEmptyArrayStorage);
  }

  v2 = *(v0 + 816);
  v3 = *(v0 + 808);
  v4 = *(v0 + 800);
  static DispatchTime.secondsElapsed(since:)();

  sub_1001A5080(v5);
  v6, v7, v8, v9, v10, v11, v12, v13;
  (*(v3 + 8))(v2, v4);
  v14 = *(*(v0 + 936) + 16);
  v15 = *(v14 + 16);

  swift_beginAccess();
  v16 = swift_beginAccess();
  v375 = v15;
  if (v15)
  {
    v24 = 0;
    v25 = *(v0 + 744);
    v355 = (v25 + 32);
    v381 = (v25 + 8);
    v354 = (v25 + 56);
    v351 = (*(v0 + 656) + 8);
    v352 = (v25 + 48);
    v359 = *(v0 + 608);
    v356 = v25;
    v377 = (v25 + 16);
    v26 = (v14 + 48);
    v27 = _swiftEmptyDictionarySingleton;
    v373 = v1;
    v372 = v14;
    while (1)
    {
      if (v24 >= *(v14 + 16))
      {
        __break(1u);
LABEL_61:
        __break(1u);
LABEL_62:
        __break(1u);
        return NSManagedObjectContext.perform<A>(schedule:_:)(v16, v17, v18, v19, v20);
      }

      v389 = v27;
      v36 = *(v0 + 912);
      v37 = *(v26 - 1);
      v386 = v26;
      v38 = *v26;
      v39 = *(v26 - 2);

      v388 = v39;
      v40 = [(RDXPCStorePerformer *)v39 uuid];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v41 = *(v36 + 16);
      v391 = v38;
      if (!v41)
      {
        break;
      }

      v42 = [v41 membershipByMemberIdentifier];
      sub_1000060C8(0, &qword_10093B450, REMMembership_ptr);
      sub_100334878(&qword_10093B410, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v43 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      if (!*(v43 + 16) || (v51 = sub_100363F20(*(v0 + 792)), (v44 & 1) == 0))
      {
        v43, v44, v45, v46, v47, v48, v49, v50;
        goto LABEL_18;
      }

      v383 = v24;
      v52 = *(v0 + 920);
      v53 = *(*(v43 + 56) + 8 * v51);
      v43, v54, v55, v56, v57, v58, v59, v60;
      if (!v53)
      {
        v69 = 0;
LABEL_37:
        v24 = v383;
        if (!*(v1 + 16))
        {
LABEL_38:
          v379 = v69;
          v114 = v1;
          v38, v61, v62, v63, v64, v65, v66, v67;
          v98 = *v377;
LABEL_39:
          v159 = *(v0 + 608);
          v98(*(v0 + 760), *(v0 + 792), *(v0 + 736));
          sub_10033251C(v159, v0 + 272);
          v160 = Logger.logObject.getter();
          v161 = static os_log_type_t.default.getter();
          sub_100332478(v159);
          v162 = os_log_type_enabled(v160, v161);
          v163 = *(v0 + 792);
          v164 = *(v0 + 760);
          v165 = *(v0 + 736);
          if (v162)
          {
            v384 = v24;
            v166 = *(v0 + 640);
            v167 = swift_slowAlloc();
            v168 = swift_slowAlloc();
            v393[0] = swift_slowAlloc();
            *v167 = 136446978;
            *(v0 + 496) = v166;
            sub_1000F5104(&qword_100942108, &unk_1007A2520);
            v169 = String.init<A>(describing:)();
            v367 = v163;
            v171 = v170;
            v172 = sub_10000668C(v169, v170, v393);
            v171, v173, v174, v175, v176, v177, v178, v179;
            *(v167 + 4) = v172;
            *(v167 + 12) = 2048;
            *(v167 + 14) = v384;
            *(v167 + 22) = 2114;
            v180 = *(v359 + 8);
            *(v0 + 536) = v180;
            *(v167 + 24) = v180;
            *v168 = v180;
            *(v167 + 32) = 2082;
            sub_100010364(v0 + 536, v0 + 504, &unk_10093AF40, &unk_100795790);
            sub_100334878(&qword_10093F2A0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
            v181 = dispatch thunk of CustomStringConvertible.description.getter();
            v183 = v182;
            v184 = *v381;
            (*v381)(v164, v165);
            v185 = v181;
            v24 = v384;
            v186 = sub_10000668C(v185, v183, v393);
            v183, v187, v188, v189, v190, v191, v192, v193;
            *(v167 + 34) = v186;
            _os_log_impl(&_mh_execute_header, v160, v161, "%{public}s: Did not auto-categorize reminder due to auto-categorizer having 0 predication for reminder title {index: %ld, listObjectID: %{public}@, reminderIdentifier: %{public}s}", v167, 0x2Au);
            sub_1000050A4(v168, &unk_100938E70, &unk_100797230);
            v14 = v372;

            swift_arrayDestroy();

            v391, v194, v195, v196, v197, v198, v199, v200;
            v16 = (v184)(v367, v165);
            v1 = v373;
            v27 = v389;
          }

          else
          {

            v391, v28, v29, v30, v31, v32, v33, v34;
            v35 = *v381;
            (*v381)(v164, v165);
            v16 = (v35)(v163, v165);
            v27 = v389;
            v1 = v114;
          }

          goto LABEL_6;
        }

        goto LABEL_19;
      }

      v68 = *(v52 + 16);

      v69 = v53;
      v70 = [v69 groupIdentifier];
      if (!v70)
      {
        v151 = *(v0 + 73);

        v68, v152, v153, v154, v155, v156, v157, v158;
        if ((v151 & 1) == 0)
        {
          goto LABEL_41;
        }

        goto LABEL_37;
      }

      v71 = *(v0 + 784);
      v72 = *(v0 + 776);
      v73 = *(v0 + 736);
      v74 = v70;
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      (*v355)(v71, v72, v73);
      if (*(v68 + 16))
      {
        v75 = sub_100363F20(*(v0 + 784));
        if (v76)
        {
          v77 = v75;
          v362 = *(v0 + 736);
          v366 = *(v0 + 784);
          v78 = *(v0 + 728);
          v79 = *(v68 + 56);
          v80 = _s9UtilitiesO47REMCDListSectionThreadSafePartialRepresentationVMa(0);
          v81 = *(v80 - 8);
          sub_100193AB0(v79 + *(v81 + 72) * v77, v78);

          (*v381)(v366, v362);
          (*(v81 + 56))(v78, 0, 1, v80);
          sub_1000050A4(v78, &qword_1009420F8, &unk_1007A2508);
          v68, v82, v83, v84, v85, v86, v87, v88;
          v14 = v372;
LABEL_41:
          v201 = [v69 groupIdentifier];
          if (v201)
          {
            v202 = v201;
            static UUID._unconditionallyBridgeFromObjectiveC(_:)();

            v203 = 0;
          }

          else
          {
            v203 = 1;
          }

          v204 = *(v0 + 928);
          v205 = *(v0 + 920);
          v206 = *(v0 + 904);
          v207 = *(v0 + 720);
          v208 = *(v0 + 712);
          (*v354)(v208, v203, 1, *(v0 + 736));
          sub_100031B58(v208, v207, &unk_100939D90, "8\n\r");
          v209 = *(v204 + 16);
          v210 = *(v205 + 16);
          v211 = v209;

          LOBYTE(v206) = sub_100192E28(v209, v373, v53, v210, v206, v37, v391);
          v210, v212, v213, v214, v215, v216, v217, v218;

          v353 = v206;
          if (v206)
          {
            v226 = *(v0 + 736);
            v227 = *(v0 + 720);
            v228 = *(v0 + 704);
            *(v0 + 480) = v37;
            *(v0 + 488) = v391;
            sub_10013BCF4();
            v229 = StringProtocol.lowercased(with:)();
            v363 = v230;
            v368 = v229;
            sub_100010364(v227, v228, &unk_100939D90, "8\n\r");
            static Date.now.getter();
            if ((*v352)(v228, 1, v226) == 1)
            {
              isa = 0;
            }

            else
            {
              v232 = *(v0 + 736);
              v233 = *(v0 + 704);
              isa = UUID._bridgeToObjectiveC()().super.isa;
              (*v381)(v233, v232);
            }

            v348 = *(v0 + 960);
            v349 = *(v0 + 976);
            v234 = *(v0 + 920);
            v235 = *(v0 + 680);
            v236 = *(v0 + 648);
            v346 = *(v0 + 720);
            v237 = objc_allocWithZone(REMTimestampedUUID);
            v238 = Date._bridgeToObjectiveC()().super.isa;
            v239 = [v237 initWithIdentifier:isa modifiedOn:v238];

            (*v351)(v235, v236);
            swift_beginAccess();
            sub_10031DEEC(v239, v368, v363, sub_1002C8FA0, sub_10037572C);
            swift_endAccess();
            v240 = *(v234 + 16);

            sub_1003348C0(v37, v391, v53, v240, v346, v348, v349);
            v240, v241, v242, v243, v244, v245, v246, v247;
            v14 = v372;
          }

          v248 = *(v0 + 792);
          v249 = *(v0 + 752);
          v250 = *(v0 + 736);
          v251 = *(v0 + 720);
          v252 = *(v0 + 696);
          v253 = *(v0 + 608);
          v391, v219, v220, v221, v222, v223, v224, v225;
          (*v377)(v249, v248, v250);
          sub_100010364(v251, v252, &unk_100939D90, "8\n\r");
          sub_10033251C(v253, v0 + 144);
          v254 = Logger.logObject.getter();
          LOBYTE(v248) = static os_log_type_t.default.getter();
          sub_100332478(v253);
          v255 = v248;
          v256 = os_log_type_enabled(v254, v248);
          v257 = *(v0 + 792);
          v258 = *(v0 + 752);
          v364 = *(v0 + 720);
          v369 = *(v0 + 736);
          v259 = *(v0 + 696);
          if (v256)
          {
            v260 = *(v0 + 640);
            v261 = swift_slowAlloc();
            v345 = swift_slowAlloc();
            v393[0] = swift_slowAlloc();
            *v261 = 136447234;
            *(v0 + 520) = v260;
            sub_1000F5104(&qword_100942108, &unk_1007A2520);
            v262 = String.init<A>(describing:)();
            v264 = v263;
            v350 = v257;
            v265 = sub_10000668C(v262, v263, v393);
            v264, v266, v267, v268, v269, v270, v271, v272;
            *(v261 + 4) = v265;
            *(v261 + 12) = 2114;
            v273 = *(v359 + 8);
            *(v0 + 544) = v273;
            *(v261 + 14) = v273;
            *v345 = v273;
            type = v255;
            *(v261 + 22) = 2082;
            sub_100010364(v0 + 544, v0 + 528, &unk_10093AF40, &unk_100795790);
            sub_100334878(&qword_10093F2A0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
            v274 = dispatch thunk of CustomStringConvertible.description.getter();
            v276 = v275;
            v347 = *v381;
            (*v381)(v258, v369);
            v277 = sub_10000668C(v274, v276, v393);
            v276, v278, v279, v280, v281, v282, v283, v284;
            *(v261 + 24) = v277;
            *(v261 + 32) = 2082;
            v285 = Optional.descriptionOrNil.getter();
            v287 = v286;
            sub_1000050A4(v259, &unk_100939D90, "8\n\r");
            v288 = sub_10000668C(v285, v287, v393);
            v287, v289, v290, v291, v292, v293, v294, v295;
            *(v261 + 34) = v288;
            *(v261 + 42) = 1026;
            *(v261 + 44) = v353 & 1;
            _os_log_impl(&_mh_execute_header, v254, type, "%{public}s: Skipped auto-categorizing reminder while checking local correction  {listObjectID: %{public}@, reminderIdentifier: %{public}s, sectionIdentifier: %{public}s, shouldUpdateAutoCategorizationLocalCorrections: %{BOOL,public}d}", v261, 0x30u);
            sub_1000050A4(v345, &unk_100938E70, &unk_100797230);

            swift_arrayDestroy();

            v391, v296, v297, v298, v299, v300, v301, v302;
            sub_1000050A4(v364, &unk_100939D90, "8\n\r");
            v16 = (v347)(v350, v369);
            v14 = v372;
          }

          else
          {

            v391, v303, v304, v305, v306, v307, v308, v309;
            sub_1000050A4(v259, &unk_100939D90, "8\n\r");
            v310 = *v381;
            (*v381)(v258, v369);
            sub_1000050A4(v364, &unk_100939D90, "8\n\r");
            v16 = (v310)(v257, v369);
          }

          v27 = v389;
          goto LABEL_32;
        }
      }

      v140 = *(v0 + 784);
      v141 = *(v0 + 736);
      v142 = *(v0 + 728);

      (*v381)(v140, v141);
      v143 = _s9UtilitiesO47REMCDListSectionThreadSafePartialRepresentationVMa(0);
      (*(*(v143 - 8) + 56))(v142, 1, 1, v143);
      sub_1000050A4(v142, &qword_1009420F8, &unk_1007A2508);
      v68, v144, v145, v146, v147, v148, v149, v150;
      v14 = v372;
      v24 = v383;
      v1 = v373;
      if (!*(v373 + 16))
      {
        goto LABEL_38;
      }

LABEL_19:
      v89 = sub_100005F4C(v37, v38);
      v91 = v90;
      v38, v90, v92, v93, v94, v95, v96, v97;
      v98 = *v377;
      if ((v91 & 1) == 0)
      {
        v379 = v69;
        v114 = v1;
        goto LABEL_39;
      }

      v99 = v1;
      v100 = *(v0 + 768);
      v101 = (*(v99 + 56) + 16 * v89);
      v103 = *v101;
      v102 = v101[1];
      v98(v100, *(v0 + 792), *(v0 + 736));

      v27 = v389;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v393[0] = v389;
      v16 = sub_100363F20(v100);
      v108 = *(v389 + 16);
      v109 = (v17 & 1) == 0;
      v110 = __OFADD__(v108, v109);
      v111 = v108 + v109;
      if (v110)
      {
        goto LABEL_61;
      }

      v112 = v17;
      v383 = v24;
      if (*(v389 + 24) >= v111)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v311 = v16;
          sub_100375740();
          v16 = v311;
          v27 = v393[0];
        }
      }

      else
      {
        v113 = *(v0 + 768);
        sub_10036E938(v111, isUniquelyReferenced_nonNull_native);
        v27 = v393[0];
        v16 = sub_100363F20(v113);
        if ((v112 & 1) != (v17 & 1))
        {

          return KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        }
      }

      v115 = *(v0 + 792);
      v116 = *(v0 + 768);
      v117 = *(v0 + 736);
      if (v112)
      {
        v118 = (v27[7] + 16 * v16);
        v119 = v118[1];
        *v118 = v103;
        v118[1] = v102;
        v119, v17, v18, v19, v20, v105, v106, v107;

        v391, v120, v121, v122, v123, v124, v125, v126;
        v127 = *v381;
        (*v381)(v116, v117);
        v16 = (v127)(v115, v117);
      }

      else
      {
        v27[(v16 >> 6) + 8] |= 1 << v16;
        v128 = v16;
        v98(v27[6] + *(v356 + 72) * v16, v116, v117);
        v129 = (v27[7] + 16 * v128);
        *v129 = v103;
        v129[1] = v102;

        v391, v130, v131, v132, v133, v134, v135, v136;
        v137 = *(v356 + 8);
        v137(v116, v117);
        v16 = (v137)(v115, v117);
        v138 = v27[2];
        v110 = __OFADD__(v138, 1);
        v139 = v138 + 1;
        if (v110)
        {
          goto LABEL_62;
        }

        v27[2] = v139;
      }

      v14 = v372;
LABEL_32:
      v24 = v383;
      v1 = v373;
LABEL_6:
      ++v24;
      v26 = v386 + 3;
      if (v375 == v24)
      {
        goto LABEL_54;
      }
    }

LABEL_18:
    v69 = 0;
    if (!*(v1 + 16))
    {
      goto LABEL_38;
    }

    goto LABEL_19;
  }

  v27 = _swiftEmptyDictionarySingleton;
LABEL_54:
  v312 = *(v0 + 1040);
  v14, v17, v18, v19, v20, v21, v22, v23;
  v312, v313, v314, v315, v316, v317, v318, v319;
  v1, v320, v321, v322, v323, v324, v325, v326;
  v387 = *(v0 + 992);
  v385 = *(v0 + 140);
  v327 = *(v0 + 76);
  v390 = *(v0 + 952);
  v392 = *(v0 + 944);
  v376 = *(v0 + 912);
  v378 = *(v0 + 928);
  v357 = *(v0 + 904);
  v328 = *(v0 + 896);
  v370 = v328;
  v360 = *(v0 + 888);
  v380 = *(v0 + 864);
  v382 = *(v0 + 848);
  v329 = *(v0 + 672);
  v330 = *(v0 + 656);
  v331 = *(v0 + 648);
  v371 = v331;
  v374 = *(v0 + 624);
  v332 = *(v0 + 616);
  v333 = *(v0 + 608);
  v365 = swift_allocObject();
  swift_weakInit();
  sub_100010364(v357, v328, &unk_10093F420, &unk_100797AE0);
  (*(v330 + 16))(v329, v332, v331);
  v334 = (v327 + 104) & ~v327;
  v361 = (v334 + v360 + 7) & 0xFFFFFFFFFFFFFFF8;
  v358 = (v361 + 15) & 0xFFFFFFFFFFFFFFF8;
  v335 = (v358 + 15) & 0xFFFFFFFFFFFFFFF8;
  v336 = (v335 + 15) & 0xFFFFFFFFFFFFFFF8;
  v337 = (v336 + *(v330 + 80) + 8) & ~*(v330 + 80);
  v338 = swift_allocObject();
  *(v0 + 1088) = v338;
  *(v338 + 16) = v365;
  *(v338 + 24) = v374;
  v339 = *v333;
  v340 = v333[1];
  v341 = v333[2];
  *(v338 + 73) = *(v333 + 41);
  *(v338 + 48) = v340;
  *(v338 + 64) = v341;
  *(v338 + 32) = v339;
  *(v338 + 96) = v27;
  sub_100031B58(v370, v338 + v334, &unk_10093F420, &unk_100797AE0);
  *(v338 + v361) = v392;
  *(v338 + v358) = v376;
  *(v338 + v335) = v390;
  *(v338 + v336) = v378;
  (*(v330 + 32))(v338 + v337, v329, v371);
  v387(v380, v385, v382);
  v342 = v374;
  sub_10033251C(v333, v0 + 80);

  v16 = swift_task_alloc();
  *(v0 + 1096) = v16;
  *v16 = v0;
  *(v16 + 8) = sub_100322FDC;
  v17 = *(v0 + 864);
  v18 = sub_100332578;
  v20 = &type metadata for () + 1;
  v19 = v338;

  return NSManagedObjectContext.perform<A>(schedule:_:)(v16, v17, v18, v19, v20);
}