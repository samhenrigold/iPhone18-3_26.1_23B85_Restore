NSObject *sub_10070299C(uint64_t a1, unint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, unint64_t a7)
{
  v77 = a6;
  v76 = a5;
  v71 = a3;
  v70 = a2;
  v73 = a1;
  v69 = type metadata accessor for REMHashtagLabelDataView.HashtagLabelsReferencedByCustomSmartListFiltersInvocation.Result();
  v68 = *(v69 - 8);
  __chkstk_darwin(v69, v10);
  v12 = &v67 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  Style = type metadata accessor for REMHashtagLabelDataView.HashtagLabelInFilterFetchStyle();
  v13 = *(Style - 8);
  __chkstk_darwin(Style, v14);
  v16 = &v67 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17, v18);
  v74 = &v67 - v19;
  v20 = type metadata accessor for CodingUserInfoKey();
  __chkstk_darwin(v20 - 8, v21);
  v23 = &v67 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for PropertyListDecoder();
  swift_allocObject();
  v81 = PropertyListDecoder.init()();
  v72 = v12;
  v75 = v7;
  if (!a7)
  {
    sub_10003B2E4(&_swiftEmptyArrayStorage);
  }

  v24 = type metadata accessor for REMStoreObjectsContainer();
  swift_allocObject();

  v25 = a4;
  v26 = REMStoreObjectsContainer.init(store:storages:)();
  static CodingUserInfoKey.remStoragesContainer.getter();
  v85 = v24;
  v84[0] = v26;
  v79 = v26;

  v27 = dispatch thunk of PropertyListDecoder.userInfo.modify();
  sub_10000E350(v84, v23);
  v27(v83, 0);
  sub_10000F85C(&qword_100950708, &type metadata accessor for REMHashtagLabelDataView.HashtagLabelInFilterFetchStyle, &protocol conformance descriptor for REMHashtagLabelDataView.HashtagLabelInFilterFetchStyle);
  v28 = Style;
  v29 = v78;
  dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
  if (v29)
  {
    if (qword_100936760 != -1)
    {
      swift_once();
    }

    v30 = type metadata accessor for Logger();
    sub_100006654(v30, qword_100950598);
    swift_errorRetain();
    v31 = v75;
    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v84[0] = swift_slowAlloc();
      *v34 = 136315394;
      swift_getErrorValue();
      v35 = Error.rem_errorDescription.getter();
      v37 = v36;
      v38 = sub_10000668C(v35, v36, v84);
      v37, v39, v40, v41, v42, v43, v44, v45;
      *(v34 + 4) = v38;
      *(v34 + 12) = 2080;
      v83[0] = swift_getObjectType();
      sub_1000F5104(&qword_100950710, &qword_1007B6760);
      v46 = String.init<A>(describing:)();
      v48 = v47;
      v49 = sub_10000668C(v46, v47, v84);
      v48, v50, v51, v52, v53, v54, v55, v56;
      *(v34 + 14) = v49;
      _os_log_impl(&_mh_execute_header, v32, v33, "Failed to decode the parameters of RDSwiftInvocable {error: %s, invocation: %s}", v34, 0x16u);
      swift_arrayDestroy();
    }

    swift_willThrow();
  }

  else
  {
    v57 = v13;
    v58 = v74;
    (*(v13 + 32))(v74, v16, v28);
    type metadata accessor for RDXPCStorePerformer();
    throwingCast<A>(_:as:failureMessage:)();
    v60 = [objc_opt_self() daemonUserDefaults];
    sub_100035608(v70, v60, &off_1008F7C98, v71, v58, v72);

    type metadata accessor for PropertyListEncoder();
    swift_allocObject();
    v61 = PropertyListEncoder.init()();
    sub_10003B2E4(&_swiftEmptyArrayStorage);
    swift_allocObject();
    v62 = v25;
    v63 = REMStoreObjectsContainer.init(store:storages:)();
    static CodingUserInfoKey.remStoragesContainer.getter();
    v85 = v24;
    v84[0] = v63;

    v64 = dispatch thunk of PropertyListEncoder.userInfo.modify();
    sub_10000E350(v84, v23);
    v64(v83, 0);
    sub_10000F85C(&qword_100950718, &type metadata accessor for REMHashtagLabelDataView.HashtagLabelsReferencedByCustomSmartListFiltersInvocation.Result, &protocol conformance descriptor for REMHashtagLabelDataView.HashtagLabelsReferencedByCustomSmartListFiltersInvocation.Result);
    v65 = v72;
    v66 = v69;
    v78 = v61;
    v32 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
    dispatch thunk of REMStoreObjectsContainer.storages.getter();

    (*(v68 + 8))(v65, v66);

    (*(v57 + 8))(v74, v28);
  }

  return v32;
}

NSObject *sub_100703370(uint64_t a1, _TtC7remindd19RDXPCStorePerformer *a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, unint64_t a7, __n128 a8)
{
  v76 = a6;
  v75 = a5;
  v70 = a3;
  v69 = a2;
  v72 = a1;
  v68 = type metadata accessor for REMRemindersListDataView.CustomSmartListInvocation.Result();
  v67 = *(v68 - 8);
  __chkstk_darwin(v68, v11);
  v71 = &v66 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = type metadata accessor for REMRemindersListDataView.CustomSmartListInvocation.Parameters();
  v13 = *(v79 - 8);
  __chkstk_darwin(v79, v14);
  v16 = &v66 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17, v18);
  v73 = &v66 - v19;
  v20 = type metadata accessor for CodingUserInfoKey();
  __chkstk_darwin(v20 - 8, v21);
  v23 = &v66 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for PropertyListDecoder();
  swift_allocObject();
  v80 = PropertyListDecoder.init()();
  v74 = v8;
  if (!a7)
  {
    sub_10003B2E4(&_swiftEmptyArrayStorage);
  }

  v24 = type metadata accessor for REMStoreObjectsContainer();
  swift_allocObject();

  v25 = a4;
  v26 = REMStoreObjectsContainer.init(store:storages:)();
  static CodingUserInfoKey.remStoragesContainer.getter();
  v84 = v24;
  v83[0] = v26;
  v78 = v26;

  v27 = dispatch thunk of PropertyListDecoder.userInfo.modify();
  sub_10000E350(v83, v23);
  v27(v82, 0);
  sub_10000F85C(&qword_100950690, &type metadata accessor for REMRemindersListDataView.CustomSmartListInvocation.Parameters, &protocol conformance descriptor for REMRemindersListDataView.CustomSmartListInvocation.Parameters);
  v28 = v79;
  v29 = v77;
  dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
  if (v29)
  {
    if (qword_100936760 != -1)
    {
      swift_once();
    }

    v30 = type metadata accessor for Logger();
    sub_100006654(v30, qword_100950598);
    swift_errorRetain();
    v31 = v74;
    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v83[0] = swift_slowAlloc();
      *v34 = 136315394;
      swift_getErrorValue();
      v35 = Error.rem_errorDescription.getter();
      v37 = v36;
      v38 = sub_10000668C(v35, v36, v83);
      v37, v39, v40, v41, v42, v43, v44, v45;
      *(v34 + 4) = v38;
      *(v34 + 12) = 2080;
      v82[0] = swift_getObjectType();
      sub_1000F5104(&qword_100950698, &qword_1007B6730);
      v46 = String.init<A>(describing:)();
      v48 = v47;
      v49 = sub_10000668C(v46, v47, v83);
      v48, v50, v51, v52, v53, v54, v55, v56;
      *(v34 + 14) = v49;
      _os_log_impl(&_mh_execute_header, v32, v33, "Failed to decode the parameters of RDSwiftInvocable {error: %s, invocation: %s}", v34, 0x16u);
      swift_arrayDestroy();
    }

    swift_willThrow();
  }

  else
  {
    v57 = v13;
    v58 = *(v13 + 32);
    v59 = v73;
    v58(v73, v16, v28);
    type metadata accessor for RDXPCStorePerformer();
    throwingCast<A>(_:as:failureMessage:)();
    v61 = v81;
    sub_1005B86C8(v69, v70, v25, v59, v71);
    v77 = v61;
    type metadata accessor for PropertyListEncoder();
    swift_allocObject();
    PropertyListEncoder.init()();
    sub_10003B2E4(&_swiftEmptyArrayStorage);
    swift_allocObject();
    v62 = v25;
    v63 = REMStoreObjectsContainer.init(store:storages:)();
    static CodingUserInfoKey.remStoragesContainer.getter();
    v84 = v24;
    v83[0] = v63;

    v64 = dispatch thunk of PropertyListEncoder.userInfo.modify();
    sub_10000E350(v83, v23);
    v64(v82, 0);
    sub_10000F85C(&qword_1009506A0, &type metadata accessor for REMRemindersListDataView.CustomSmartListInvocation.Result, &protocol conformance descriptor for REMRemindersListDataView.CustomSmartListInvocation.Result);
    v65 = v68;
    v32 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
    dispatch thunk of REMStoreObjectsContainer.storages.getter();

    (*(v67 + 8))(v71, v65);
    (*(v57 + 8))(v73, v28);
  }

  return v32;
}

NSObject *sub_100703D04(uint64_t a1, _TtC7remindd19RDXPCStorePerformer *a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, unint64_t a7)
{
  v75 = a6;
  v74 = a5;
  v69 = a3;
  v68 = a2;
  v71 = a1;
  v67 = sub_1000F5104(&qword_100950618, &qword_1007B66F0);
  v66 = *(v67 - 8);
  __chkstk_darwin(v67, v10);
  v70 = &v65 - v11;
  v78 = type metadata accessor for REMRemindersListDataView.ListSectionsInvocation.Parameters();
  v12 = *(v78 - 8);
  __chkstk_darwin(v78, v13);
  v15 = &v65 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16, v17);
  v72 = &v65 - v18;
  v19 = type metadata accessor for CodingUserInfoKey();
  __chkstk_darwin(v19 - 8, v20);
  v22 = &v65 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for PropertyListDecoder();
  swift_allocObject();
  v79 = PropertyListDecoder.init()();
  v73 = v7;
  if (!a7)
  {
    sub_10003B2E4(&_swiftEmptyArrayStorage);
  }

  v23 = type metadata accessor for REMStoreObjectsContainer();
  swift_allocObject();

  v24 = a4;
  v25 = REMStoreObjectsContainer.init(store:storages:)();
  static CodingUserInfoKey.remStoragesContainer.getter();
  v83 = v23;
  v82[0] = v25;
  v77 = v25;

  v26 = dispatch thunk of PropertyListDecoder.userInfo.modify();
  sub_10000E350(v82, v22);
  v26(v81, 0);
  sub_10000F85C(&qword_1009506A8, &type metadata accessor for REMRemindersListDataView.ListSectionsInvocation.Parameters, &protocol conformance descriptor for REMRemindersListDataView.ListSectionsInvocation.Parameters);
  v27 = v78;
  v28 = v76;
  dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
  if (v28)
  {
    if (qword_100936760 != -1)
    {
      swift_once();
    }

    v29 = type metadata accessor for Logger();
    sub_100006654(v29, qword_100950598);
    swift_errorRetain();
    v30 = v73;
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v82[0] = swift_slowAlloc();
      *v33 = 136315394;
      swift_getErrorValue();
      v34 = Error.rem_errorDescription.getter();
      v36 = v35;
      v37 = sub_10000668C(v34, v35, v82);
      v36, v38, v39, v40, v41, v42, v43, v44;
      *(v33 + 4) = v37;
      *(v33 + 12) = 2080;
      v81[0] = swift_getObjectType();
      sub_1000F5104(&qword_1009506B0, &qword_1007B6738);
      v45 = String.init<A>(describing:)();
      v47 = v46;
      v48 = sub_10000668C(v45, v46, v82);
      v47, v49, v50, v51, v52, v53, v54, v55;
      *(v33 + 14) = v48;
      _os_log_impl(&_mh_execute_header, v31, v32, "Failed to decode the parameters of RDSwiftInvocable {error: %s, invocation: %s}", v33, 0x16u);
      swift_arrayDestroy();
    }

    swift_willThrow();
  }

  else
  {
    v56 = v12;
    v57 = v72;
    (*(v12 + 32))(v72, v15, v27);
    type metadata accessor for RDXPCStorePerformer();
    throwingCast<A>(_:as:failureMessage:)();
    v59 = v80;
    sub_1005B1AA0(v68, v69, v24, v57, v70);
    v76 = v59;
    type metadata accessor for PropertyListEncoder();
    swift_allocObject();
    PropertyListEncoder.init()();
    sub_10003B2E4(&_swiftEmptyArrayStorage);
    swift_allocObject();
    v60 = v24;
    v61 = REMStoreObjectsContainer.init(store:storages:)();
    static CodingUserInfoKey.remStoragesContainer.getter();
    v83 = v23;
    v82[0] = v61;

    v62 = dispatch thunk of PropertyListEncoder.userInfo.modify();
    sub_10000E350(v82, v22);
    v62(v81, 0);
    sub_10000CB48(&qword_100950630, &qword_100950618, &qword_1007B66F0, &protocol conformance descriptor for REMRemindersListDataView.DefaultInvocationResult<A>);
    v63 = v70;
    v64 = v67;
    v31 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
    dispatch thunk of REMStoreObjectsContainer.storages.getter();

    (*(v66 + 8))(v63, v64);
    (*(v56 + 8))(v72, v78);
  }

  return v31;
}

uint64_t sub_1007046A8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, unint64_t a7)
{
  v100 = a6;
  v90 = a3;
  v95 = a2;
  v96 = a1;
  v88 = type metadata accessor for REMRemindersListDataView.Diff();
  v84 = *(v88 - 8);
  __chkstk_darwin(v88, v9);
  v83 = &v82 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11, v12);
  v93 = &v82 - v13;
  v92 = type metadata accessor for REMRemindersListDataView.ListsModel();
  v91 = *(v92 - 8);
  __chkstk_darwin(v92, v14);
  v87 = &v82 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16, v17);
  v94 = &v82 - v18;
  v19 = sub_1000F5104(&qword_1009506B8, &qword_1007B6740);
  v85 = *(v19 - 8);
  __chkstk_darwin(v19, v20);
  v89 = &v82 - v21;
  v103 = type metadata accessor for REMRemindersListDataView.SearchInvocation.Parameters();
  v97 = *(v103 - 8);
  __chkstk_darwin(v103, v22);
  v24 = &v82 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25, v26);
  v98 = &v82 - v27;
  v28 = type metadata accessor for CodingUserInfoKey();
  __chkstk_darwin(v28 - 8, v29);
  v31 = &v82 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for PropertyListDecoder();
  swift_allocObject();
  v104 = PropertyListDecoder.init()();
  v86 = v19;
  if (!a7)
  {
    sub_10003B2E4(&_swiftEmptyArrayStorage);
  }

  v32 = type metadata accessor for REMStoreObjectsContainer();
  swift_allocObject();

  v33 = a4;
  v34 = REMStoreObjectsContainer.init(store:storages:)();
  static CodingUserInfoKey.remStoragesContainer.getter();
  v108 = v32;
  v107 = v34;
  v102 = v34;

  v35 = dispatch thunk of PropertyListDecoder.userInfo.modify();
  sub_10000E350(&v107, v31);
  v35(v106, 0);
  sub_10000F85C(&qword_1009506C0, &type metadata accessor for REMRemindersListDataView.SearchInvocation.Parameters, &protocol conformance descriptor for REMRemindersListDataView.SearchInvocation.Parameters);
  v36 = v103;
  v37 = v101;
  dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
  if (v37)
  {
    if (qword_100936760 != -1)
    {
      swift_once();
    }

    v38 = type metadata accessor for Logger();
    sub_100006654(v38, qword_100950598);
    swift_errorRetain();
    v39 = v99;
    v40 = Logger.logObject.getter();
    v41 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v107 = swift_slowAlloc();
      *v42 = 136315394;
      swift_getErrorValue();
      v43 = Error.rem_errorDescription.getter();
      v45 = v44;
      v46 = sub_10000668C(v43, v44, &v107);
      v45, v47, v48, v49, v50, v51, v52, v53;
      *(v42 + 4) = v46;
      *(v42 + 12) = 2080;
      v106[0] = swift_getObjectType();
      sub_1000F5104(&qword_1009506C8, &qword_1007B6748);
      v54 = String.init<A>(describing:)();
      v56 = v55;
      v57 = sub_10000668C(v54, v55, &v107);
      v56, v58, v59, v60, v61, v62, v63, v64;
      *(v42 + 14) = v57;
      _os_log_impl(&_mh_execute_header, v40, v41, "Failed to decode the parameters of RDSwiftInvocable {error: %s, invocation: %s}", v42, 0x16u);
      swift_arrayDestroy();
    }

    swift_willThrow();
  }

  else
  {
    v101 = v33;
    v65 = v97;
    v66 = v98;
    (*(v97 + 32))(v98, v24, v36);
    type metadata accessor for RDXPCStorePerformer();
    throwingCast<A>(_:as:failureMessage:)();
    v68 = v95;
    sub_1005A2B88(v95, v66);
    v69 = v99;
    sub_1005A3E80(v68);
    REMRemindersListDataView.ListsModel.init(groups:completedRemindersCount:hasCompletedReminders:prefetchedReminders:prefetchedDueReminders:)();
    v70 = [v69 fetchResultTokenToDiffAgainst];
    v71 = v93;
    sub_100534D44(v70, v93);

    v72 = v71;
    v73 = v91;
    v74 = v92;
    (*(v91 + 16))(v87, v94, v92);
    v75 = v84;
    (*(v84 + 16))(v83, v72, v88);
    v100 = sub_10000F85C(&qword_10094C3B0, &type metadata accessor for REMRemindersListDataView.ListsModel, &protocol conformance descriptor for REMRemindersListDataView.ListsModel);
    sub_10000F85C(&qword_10094C3B8, &type metadata accessor for REMRemindersListDataView.ListsModel, &protocol conformance descriptor for REMRemindersListDataView.ListsModel);
    REMRemindersListDataView.DefaultInvocationResult.init(model:diff:)();
    (*(v75 + 8))(v93, v88);
    (*(v73 + 8))(v94, v74);
    type metadata accessor for PropertyListEncoder();
    swift_allocObject();
    PropertyListEncoder.init()();
    sub_10003B2E4(&_swiftEmptyArrayStorage);
    swift_allocObject();
    v76 = v101;
    v77 = REMStoreObjectsContainer.init(store:storages:)();
    static CodingUserInfoKey.remStoragesContainer.getter();
    v108 = v32;
    v107 = v77;

    v78 = dispatch thunk of PropertyListEncoder.userInfo.modify();
    v79 = v31;
    v80 = v89;
    sub_10000E350(&v107, v79);
    v78(v106, 0);
    sub_10000CB48(&qword_1009506D0, &qword_1009506B8, &qword_1007B6740, &protocol conformance descriptor for REMRemindersListDataView.DefaultInvocationResult<A>);
    v81 = v86;
    v41 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
    dispatch thunk of REMStoreObjectsContainer.storages.getter();

    (*(v85 + 8))(v80, v81);
    (*(v65 + 8))(v98, v103);
  }

  return v41;
}

NSObject *sub_100705394(uint64_t a1, _TtC7remindd19RDXPCStorePerformer *a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, unint64_t a7)
{
  v75 = a6;
  v74 = a5;
  v69 = a3;
  v68 = a2;
  v71 = a1;
  v67 = sub_1000F5104(&qword_1009505B0, &qword_1007B66B0);
  v66 = *(v67 - 8);
  __chkstk_darwin(v67, v10);
  v70 = (&v65 - v11);
  v78 = type metadata accessor for REMRemindersListDataView.AssignedInvocation.Parameters();
  v12 = *(v78 - 8);
  __chkstk_darwin(v78, v13);
  v15 = &v65 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16, v17);
  v72 = &v65 - v18;
  v19 = type metadata accessor for CodingUserInfoKey();
  __chkstk_darwin(v19 - 8, v20);
  v22 = &v65 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for PropertyListDecoder();
  swift_allocObject();
  v79 = PropertyListDecoder.init()();
  v73 = v7;
  if (!a7)
  {
    sub_10003B2E4(&_swiftEmptyArrayStorage);
  }

  v23 = type metadata accessor for REMStoreObjectsContainer();
  swift_allocObject();

  v24 = a4;
  v25 = REMStoreObjectsContainer.init(store:storages:)();
  static CodingUserInfoKey.remStoragesContainer.getter();
  v83 = v23;
  v82[0] = v25;
  v77 = v25;

  v26 = dispatch thunk of PropertyListDecoder.userInfo.modify();
  sub_10000E350(v82, v22);
  v26(v81, 0);
  sub_10000F85C(&qword_1009505B8, &type metadata accessor for REMRemindersListDataView.AssignedInvocation.Parameters, &protocol conformance descriptor for REMRemindersListDataView.AssignedInvocation.Parameters);
  v27 = v78;
  v28 = v76;
  dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
  if (v28)
  {
    if (qword_100936760 != -1)
    {
      swift_once();
    }

    v29 = type metadata accessor for Logger();
    sub_100006654(v29, qword_100950598);
    swift_errorRetain();
    v30 = v73;
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v82[0] = swift_slowAlloc();
      *v33 = 136315394;
      swift_getErrorValue();
      v34 = Error.rem_errorDescription.getter();
      v36 = v35;
      v37 = sub_10000668C(v34, v35, v82);
      v36, v38, v39, v40, v41, v42, v43, v44;
      *(v33 + 4) = v37;
      *(v33 + 12) = 2080;
      v81[0] = swift_getObjectType();
      sub_1000F5104(&qword_1009505C0, &unk_1007B66B8);
      v45 = String.init<A>(describing:)();
      v47 = v46;
      v48 = sub_10000668C(v45, v46, v82);
      v47, v49, v50, v51, v52, v53, v54, v55;
      *(v33 + 14) = v48;
      _os_log_impl(&_mh_execute_header, v31, v32, "Failed to decode the parameters of RDSwiftInvocable {error: %s, invocation: %s}", v33, 0x16u);
      swift_arrayDestroy();
    }

    swift_willThrow();
  }

  else
  {
    v56 = v12;
    v57 = v72;
    (*(v12 + 32))(v72, v15, v27);
    type metadata accessor for RDXPCStorePerformer();
    throwingCast<A>(_:as:failureMessage:)();
    v59 = v80;
    sub_10074F2D4(v68, v69, v24, v57, v70);
    v76 = v59;
    type metadata accessor for PropertyListEncoder();
    swift_allocObject();
    PropertyListEncoder.init()();
    sub_10003B2E4(&_swiftEmptyArrayStorage);
    swift_allocObject();
    v60 = v24;
    v61 = REMStoreObjectsContainer.init(store:storages:)();
    static CodingUserInfoKey.remStoragesContainer.getter();
    v83 = v23;
    v82[0] = v61;

    v62 = dispatch thunk of PropertyListEncoder.userInfo.modify();
    sub_10000E350(v82, v22);
    v62(v81, 0);
    sub_10000CB48(&qword_1009505C8, &qword_1009505B0, &qword_1007B66B0, &protocol conformance descriptor for REMRemindersListDataView.DefaultInvocationResult<A>);
    v63 = v70;
    v64 = v67;
    v31 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
    dispatch thunk of REMStoreObjectsContainer.storages.getter();

    (*(v66 + 8))(v63, v64);
    (*(v56 + 8))(v72, v78);
  }

  return v31;
}

_DWORD *sub_100705D38(void *a1, _TtC7remindd19RDXPCStorePerformer *a2, _TtC7remindd19RDXPCStorePerformer *a3, void *a4, uint64_t a5, void *a6, unint64_t a7)
{
  v277 = a6;
  v8 = v7;
  v276 = a5;
  v271 = a2;
  v272 = a1;
  v254 = type metadata accessor for REMRemindersListDataView.GroupSectionsModel();
  __chkstk_darwin(v254, v12);
  v252 = &v238 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v262 = type metadata accessor for REMRemindersListDataView.ListsSectionsModel();
  v253 = *(v262 - 8);
  __chkstk_darwin(v262, v14);
  v250 = &v238 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16, v17);
  v251 = &v238 - v18;
  v19 = sub_1000F5104(&qword_10094B8E0, &unk_1007AABD0);
  __chkstk_darwin(v19 - 8, v20);
  v244 = &v238 - v21;
  v270 = type metadata accessor for REMRemindersListDataView.ListsSectionsModel.List();
  v245 = *(v270 - 8);
  __chkstk_darwin(v270, v22);
  v265 = &v238 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24, v25);
  v269 = &v238 - v26;
  v261 = type metadata accessor for REMRemindersListDataView.RemindersPrefetch();
  v260 = *(v261 - 8);
  __chkstk_darwin(v261, v27);
  v257 = (&v238 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v29, v30);
  v263 = &v238 - v31;
  Configuration = type metadata accessor for REMRemindersListDataView.FetchConfiguration();
  v266 = *(Configuration - 8);
  __chkstk_darwin(Configuration, v32);
  v246 = &v238 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v34, v35);
  v256 = &v238 - v36;
  v249 = type metadata accessor for REMRemindersListDataView.Diff();
  v248 = *(v249 - 8);
  __chkstk_darwin(v249, v37);
  v247 = &v238 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v39, v40);
  v267 = &v238 - v41;
  v258 = sub_1000F5104(&qword_1009505D0, &qword_1007B66C8);
  v255 = *(v258 - 8);
  __chkstk_darwin(v258, v42);
  v44 = &v238 - v43;
  v279 = type metadata accessor for REMRemindersListDataView.GroupSectionsInvocation.Parameters();
  v273 = *(v279 - 8);
  __chkstk_darwin(v279, v45);
  v47 = &v238 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v48, v49);
  v274 = &v238 - v50;
  v51 = type metadata accessor for CodingUserInfoKey();
  __chkstk_darwin(v51 - 8, v52);
  v54 = &v238 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for PropertyListDecoder();
  swift_allocObject();
  v280 = PropertyListDecoder.init()();
  v259 = v44;
  v268 = a3;
  if (!a7)
  {
    sub_10003B2E4(&_swiftEmptyArrayStorage);
  }

  v55 = type metadata accessor for REMStoreObjectsContainer();
  swift_allocObject();

  v56 = a4;
  v57 = REMStoreObjectsContainer.init(store:storages:)();
  static CodingUserInfoKey.remStoragesContainer.getter();
  v284 = v55;
  v283 = v57;
  v275 = v57;

  v58 = dispatch thunk of PropertyListDecoder.userInfo.modify();
  sub_10000E350(&v283, v54);
  v58(&ObjectType, 0);
  sub_10000F85C(&qword_1009505D8, &type metadata accessor for REMRemindersListDataView.GroupSectionsInvocation.Parameters, &protocol conformance descriptor for REMRemindersListDataView.GroupSectionsInvocation.Parameters);
  v59 = v278;
  v60 = v279;
  dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
  if (v59)
  {
    if (qword_100936760 != -1)
    {
      swift_once();
    }

    v61 = type metadata accessor for Logger();
    sub_100006654(v61, qword_100950598);
    swift_errorRetain();
    v62 = v7;
    v63 = Logger.logObject.getter();
    v64 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v63, v64))
    {
      v56 = swift_slowAlloc();
      v283 = swift_slowAlloc();
      *v56 = 136315394;
      swift_getErrorValue();
      v65 = Error.rem_errorDescription.getter();
      v67 = v66;
      v68 = sub_10000668C(v65, v66, &v283);
      v67, v69, v70, v71, v72, v73, v74, v75;
      *(v56 + 1) = v68;
      *(v56 + 6) = 2080;
      ObjectType = swift_getObjectType();
      sub_1000F5104(&qword_1009505E0, &unk_1007B66D0);
      v76 = String.init<A>(describing:)();
      v78 = v77;
      v79 = sub_10000668C(v76, v77, &v283);
      v78, v80, v81, v82, v83, v84, v85, v86;
      *(v56 + 14) = v79;
      _os_log_impl(&_mh_execute_header, v63, v64, "Failed to decode the parameters of RDSwiftInvocable {error: %s, invocation: %s}", v56, 0x16u);
      swift_arrayDestroy();
    }

    swift_willThrow();

    return v56;
  }

  v242 = v55;
  v243 = v56;
  v278 = v54;
  v87 = v274;
  (*(v273 + 32))(v274, v47, v60);
  type metadata accessor for RDXPCStorePerformer();
  throwingCast<A>(_:as:failureMessage:)();
  v277 = v281;
  v89 = REMRemindersListDataView.GroupSectionsInvocation.Parameters.group.getter();
  v90 = v271;
  v91 = v243;
  v272 = sub_10074C5B4(v271, v243, v89);

  v92 = sub_10074D280(v277, v90, v268, v91, v87);
  v241 = v93;
  v94 = v92;
  v95 = [v8 fetchResultTokenToDiffAgainst];
  v96 = v267;
  sub_100534D44(v95, v267);
  v276 = 0;
  v240 = v94;
  v239 = v8;

  v97 = v256;
  REMRemindersListDataView.GroupSectionsInvocation.Parameters.configuration.getter();
  v98 = v263;
  REMRemindersListDataView.FetchConfiguration.remindersPrefetch.getter();
  v99 = *(v266 + 8);
  v266 += 8;
  v99(v97, Configuration);
  v100 = v260;
  v101 = v257;
  v102 = v261;
  (*(v260 + 16))(v257, v98, v261);
  v103 = (*(v100 + 88))(v101, v102);
  if (v103 == enum case for REMRemindersListDataView.RemindersPrefetch.initial(_:))
  {
    v256 = v99;
    (*(v100 + 96))(v101, v102);
    v257 = *v101;
    v104 = *v240->clientIdentity;
    v105 = v243;
    if (v104)
    {
      v268 = *(v245 + 16);
      v106 = v240 + ((*(v245 + 80) + 32) & ~*(v245 + 80));
      v265 = *(v245 + 72);
      v107 = (v245 + 8);
      v108 = &_swiftEmptyArrayStorage;
      while (1)
      {
        v109 = v269;
        v110 = v270;
        (v268)(v269, v106, v270);
        v111 = REMRemindersListDataView.ListsSectionsModel.List.sections.getter();
        (*v107)(v109, v110);
        v112 = *(v111 + 16);
        v113 = *v108->clientIdentity;
        v114 = v113 + v112;
        if (__OFADD__(v113, v112))
        {
          break;
        }

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if (!isUniquelyReferenced_nonNull_native || v114 > *&v108->clientIdentity[8] >> 1)
        {
          if (v113 <= v114)
          {
            v123 = v113 + v112;
          }

          else
          {
            v123 = v113;
          }

          v108 = sub_100365A4C(isUniquelyReferenced_nonNull_native, v123, 1, v108);
        }

        if (*(v111 + 16))
        {
          v124 = (*&v108->clientIdentity[8] >> 1) - *v108->clientIdentity;
          type metadata accessor for REMRemindersListDataView.SectionLite();
          if (v124 < v112)
          {
            goto LABEL_63;
          }

          swift_arrayInitWithCopy();
          v111, v125, v126, v127, v128, v129, v130, v131;
          v105 = v243;
          if (v112)
          {
            v132 = *v108->clientIdentity;
            v133 = __OFADD__(v132, v112);
            v134 = v132 + v112;
            if (v133)
            {
              goto LABEL_64;
            }

            *v108->clientIdentity = v134;
          }
        }

        else
        {
          v111, v116, v117, v118, v119, v120, v121, v122;
          v105 = v243;
          if (v112)
          {
            goto LABEL_62;
          }
        }

        v106 += v265;
        if (!--v104)
        {
          goto LABEL_48;
        }
      }

      __break(1u);
LABEL_62:
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
      goto LABEL_69;
    }

    v108 = &_swiftEmptyArrayStorage;
LABEL_48:
    v166 = Array<A>.reminders.getter();
    v108, v167, v168, v169, v170, v171, v172, v173;
    sub_10053DB98(v257, v166, v271, v105, 0);
    v166, v174, v175, v176, v177, v178, v179, v180;
    (*(v260 + 8))(v263, v261);
LABEL_49:
    v181 = v246;
    v99 = v256;
    goto LABEL_53;
  }

  v135 = v271;
  v136 = v243;
  if (v103 == enum case for REMRemindersListDataView.RemindersPrefetch.updatedInserted(_:))
  {
    (*(v100 + 96))(v101, v102);
    sub_10053E698(*v101, v96, v135, v136, 0);
    (*(v100 + 8))(v263, v102);
LABEL_52:
    v181 = v246;
LABEL_53:
    REMRemindersListDataView.GroupSectionsInvocation.Parameters.configuration.getter();
    REMRemindersListDataView.FetchConfiguration.countCompleted.getter();
    v99(v181, Configuration);
    v182 = v251;
    REMRemindersListDataView.ListsSectionsModel.init(lists:completedRemindersCount:hasCompletedReminders:prefetchedReminders:prefetchedDueReminders:)();
    v183 = v253;
    (*(v253 + 16))(v250, v182, v262);
    v184 = v272;
    REMRemindersListDataView.GroupSectionsModel.init(listSections:group:)();
    v185 = v248;
    v186 = v249;
    (*(v248 + 16))(v247, v267, v249);
    sub_10000F85C(&qword_1009505E8, &type metadata accessor for REMRemindersListDataView.GroupSectionsModel, &protocol conformance descriptor for REMRemindersListDataView.GroupSectionsModel);
    sub_10000F85C(&qword_1009505F0, &type metadata accessor for REMRemindersListDataView.GroupSectionsModel, &protocol conformance descriptor for REMRemindersListDataView.GroupSectionsModel);
    v187 = v259;
    REMRemindersListDataView.DefaultInvocationResult.init(model:diff:)();

    (*(v183 + 8))(v182, v262);
    (*(v185 + 8))(v267, v186);
    type metadata accessor for PropertyListEncoder();
    swift_allocObject();
    PropertyListEncoder.init()();
    sub_10003B2E4(&_swiftEmptyArrayStorage);
    v188 = v242;
    swift_allocObject();
    v189 = v243;
    v190 = REMStoreObjectsContainer.init(store:storages:)();
    v191 = v278;
    static CodingUserInfoKey.remStoragesContainer.getter();
    v284 = v188;
    v283 = v190;

    v192 = dispatch thunk of PropertyListEncoder.userInfo.modify();
    sub_10000E350(&v283, v191);
    v192(&ObjectType, 0);
    sub_10000CB48(&qword_1009505F8, &qword_1009505D0, &qword_1007B66C8, &protocol conformance descriptor for REMRemindersListDataView.DefaultInvocationResult<A>);
    v104 = v258;
    v193 = v276;
    v194 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
    if (!v193)
    {
      v56 = v194;
      dispatch thunk of REMStoreObjectsContainer.storages.getter();

      (*(v255 + 8))(v187, v104);
      (*(v273 + 8))(v274, v279);

      return v56;
    }

    if (qword_100936760 == -1)
    {
LABEL_55:
      v195 = type metadata accessor for Logger();
      sub_100006654(v195, qword_100950598);
      v196 = v239;
      swift_errorRetain();
      v56 = Logger.logObject.getter();
      v197 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v56, v197))
      {
        v198 = swift_slowAlloc();
        v278 = swift_slowAlloc();
        v283 = v278;
        *v198 = 136315394;
        swift_getErrorValue();
        v199 = Error.rem_errorDescription.getter();
        v201 = v200;
        v202 = sub_10000668C(v199, v200, &v283);
        v201, v203, v204, v205, v206, v207, v208, v209;
        *(v198 + 4) = v202;
        *(v198 + 12) = 2080;
        ObjectType = swift_getObjectType();
        sub_1000F5104(&qword_1009505E0, &unk_1007B66D0);
        v210 = String.init<A>(describing:)();
        v212 = v211;
        v213 = sub_10000668C(v210, v211, &v283);
        v212, v214, v215, v216, v217, v218, v219, v220;
        *(v198 + 14) = v213;
        _os_log_impl(&_mh_execute_header, v56, v197, "Failed to encode the result of RDSwiftInvocable {error: %s, invocation: %s}", v198, 0x16u);
        swift_arrayDestroy();

        v104 = v258;
      }

      swift_willThrow();

      (*(v255 + 8))(v259, v104);
      (*(v273 + 8))(v274, v279);

      return v56;
    }

LABEL_69:
    swift_once();
    goto LABEL_55;
  }

  if (v103 == enum case for REMRemindersListDataView.RemindersPrefetch.initialAndDateRange(_:))
  {
    v256 = v99;
    (*(v100 + 96))(v101, v102);
    v238 = *v101;
    v137 = sub_1000F5104(&qword_100938A78, &qword_1007AABE0);
    sub_100031B58(v101 + *(v137 + 48), v244, &qword_10094B8E0, &unk_1007AABD0);
    v104 = *v240->clientIdentity;
    if (v104)
    {
      v269 = *(v245 + 16);
      v138 = v240 + ((*(v245 + 80) + 32) & ~*(v245 + 80));
      v268 = *(v245 + 72);
      v139 = (v245 + 8);
      v140 = &_swiftEmptyArrayStorage;
      while (1)
      {
        v141 = v265;
        v142 = v270;
        (v269)(v265, v138, v270);
        v143 = REMRemindersListDataView.ListsSectionsModel.List.sections.getter();
        (*v139)(v141, v142);
        v144 = *(v143 + 16);
        v145 = *v140->clientIdentity;
        v146 = v145 + v144;
        if (__OFADD__(v145, v144))
        {
          goto LABEL_65;
        }

        v147 = swift_isUniquelyReferenced_nonNull_native();
        if (!v147 || v146 > *&v140->clientIdentity[8] >> 1)
        {
          if (v145 <= v146)
          {
            v155 = v145 + v144;
          }

          else
          {
            v155 = v145;
          }

          v140 = sub_100365A4C(v147, v155, 1, v140);
        }

        if (*(v143 + 16))
        {
          v156 = (*&v140->clientIdentity[8] >> 1) - *v140->clientIdentity;
          type metadata accessor for REMRemindersListDataView.SectionLite();
          if (v156 < v144)
          {
            goto LABEL_67;
          }

          swift_arrayInitWithCopy();
          v143, v157, v158, v159, v160, v161, v162, v163;
          v136 = v243;
          if (v144)
          {
            v164 = *v140->clientIdentity;
            v133 = __OFADD__(v164, v144);
            v165 = v164 + v144;
            if (v133)
            {
              goto LABEL_68;
            }

            *v140->clientIdentity = v165;
          }
        }

        else
        {
          v143, v148, v149, v150, v151, v152, v153, v154;
          v136 = v243;
          if (v144)
          {
            goto LABEL_66;
          }
        }

        v138 += v268;
        if (!--v104)
        {
          goto LABEL_60;
        }
      }
    }

    v140 = &_swiftEmptyArrayStorage;
LABEL_60:
    v221 = Array<A>.reminders.getter();
    v140, v222, v223, v224, v225, v226, v227, v228;
    v229 = v271;
    sub_10053DB98(v238, v221, v271, v136, 0);
    v230 = v244;
    sub_10053EBE4(v244, v221, v229, v136, 0);
    v221, v231, v232, v233, v234, v235, v236, v237;
    sub_1000050A4(v230, &qword_10094B8E0, &unk_1007AABD0);
    (*(v260 + 8))(v263, v261);
    goto LABEL_49;
  }

  if (v103 == enum case for REMRemindersListDataView.RemindersPrefetch.none(_:))
  {
    (*(v100 + 8))(v263, v102);
    goto LABEL_52;
  }

  result = _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
  return result;
}

NSObject *sub_10070754C(uint64_t a1, _TtC7remindd19RDXPCStorePerformer *a2, _TtC7remindd19RDXPCStorePerformer *a3, void *a4, uint64_t a5, uint64_t a6, unint64_t a7)
{
  v75 = a6;
  v74 = a5;
  v69 = a3;
  v68 = a2;
  v71 = a1;
  v67 = sub_1000F5104(&qword_100950638, &qword_1007B6700);
  v66 = *(v67 - 8);
  __chkstk_darwin(v67, v10);
  v70 = &v65 - v11;
  v78 = type metadata accessor for REMRemindersListDataView.ScheduledByDateBucketsInvocation.Parameters();
  v12 = *(v78 - 8);
  __chkstk_darwin(v78, v13);
  v15 = &v65 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16, v17);
  v72 = &v65 - v18;
  v19 = type metadata accessor for CodingUserInfoKey();
  __chkstk_darwin(v19 - 8, v20);
  v22 = &v65 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for PropertyListDecoder();
  swift_allocObject();
  v79 = PropertyListDecoder.init()();
  v73 = v7;
  if (!a7)
  {
    sub_10003B2E4(&_swiftEmptyArrayStorage);
  }

  v23 = type metadata accessor for REMStoreObjectsContainer();
  swift_allocObject();

  v24 = a4;
  v25 = REMStoreObjectsContainer.init(store:storages:)();
  static CodingUserInfoKey.remStoragesContainer.getter();
  v83 = v23;
  v82[0] = v25;
  v77 = v25;

  v26 = dispatch thunk of PropertyListDecoder.userInfo.modify();
  sub_10000E350(v82, v22);
  v26(v81, 0);
  sub_10000F85C(&qword_100950640, &type metadata accessor for REMRemindersListDataView.ScheduledByDateBucketsInvocation.Parameters, &protocol conformance descriptor for REMRemindersListDataView.ScheduledByDateBucketsInvocation.Parameters);
  v27 = v78;
  v28 = v76;
  dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
  if (v28)
  {
    if (qword_100936760 != -1)
    {
      swift_once();
    }

    v29 = type metadata accessor for Logger();
    sub_100006654(v29, qword_100950598);
    swift_errorRetain();
    v30 = v73;
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v82[0] = swift_slowAlloc();
      *v33 = 136315394;
      swift_getErrorValue();
      v34 = Error.rem_errorDescription.getter();
      v36 = v35;
      v37 = sub_10000668C(v34, v35, v82);
      v36, v38, v39, v40, v41, v42, v43, v44;
      *(v33 + 4) = v37;
      *(v33 + 12) = 2080;
      v81[0] = swift_getObjectType();
      sub_1000F5104(&qword_100950648, &qword_1007B6708);
      v45 = String.init<A>(describing:)();
      v47 = v46;
      v48 = sub_10000668C(v45, v46, v82);
      v47, v49, v50, v51, v52, v53, v54, v55;
      *(v33 + 14) = v48;
      _os_log_impl(&_mh_execute_header, v31, v32, "Failed to decode the parameters of RDSwiftInvocable {error: %s, invocation: %s}", v33, 0x16u);
      swift_arrayDestroy();
    }

    swift_willThrow();
  }

  else
  {
    v56 = v12;
    v57 = v72;
    (*(v12 + 32))(v72, v15, v27);
    type metadata accessor for RDXPCStorePerformer();
    throwingCast<A>(_:as:failureMessage:)();
    v59 = v80;
    sub_1005C4F74(v68, v69, v24, v57, v70);
    v76 = v59;
    type metadata accessor for PropertyListEncoder();
    swift_allocObject();
    PropertyListEncoder.init()();
    sub_10003B2E4(&_swiftEmptyArrayStorage);
    swift_allocObject();
    v60 = v24;
    v61 = REMStoreObjectsContainer.init(store:storages:)();
    static CodingUserInfoKey.remStoragesContainer.getter();
    v83 = v23;
    v82[0] = v61;

    v62 = dispatch thunk of PropertyListEncoder.userInfo.modify();
    sub_10000E350(v82, v22);
    v62(v81, 0);
    sub_10000CB48(&qword_100950650, &qword_100950638, &qword_1007B6700, &protocol conformance descriptor for REMRemindersListDataView.DefaultInvocationResult<A>);
    v63 = v70;
    v64 = v67;
    v31 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
    dispatch thunk of REMStoreObjectsContainer.storages.getter();

    (*(v66 + 8))(v63, v64);
    (*(v56 + 8))(v72, v78);
  }

  return v31;
}

NSObject *sub_100707EF0(uint64_t a1, _TtC7remindd19RDXPCStorePerformer *a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, unint64_t a7)
{
  v75 = a6;
  v74 = a5;
  v69 = a3;
  v68 = a2;
  v71 = a1;
  v67 = type metadata accessor for REMRemindersListBatchDeleteInvocation.OldestCompletionDateInvocation.Result();
  v66 = *(v67 - 8);
  __chkstk_darwin(v67, v10);
  v70 = &v65 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = type metadata accessor for REMRemindersListBatchDeleteInvocation.ListType();
  v12 = *(v78 - 8);
  __chkstk_darwin(v78, v13);
  v15 = &v65 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16, v17);
  v72 = &v65 - v18;
  v19 = type metadata accessor for CodingUserInfoKey();
  __chkstk_darwin(v19 - 8, v20);
  v22 = &v65 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for PropertyListDecoder();
  swift_allocObject();
  v79 = PropertyListDecoder.init()();
  v73 = v7;
  if (!a7)
  {
    sub_10003B2E4(&_swiftEmptyArrayStorage);
  }

  v23 = type metadata accessor for REMStoreObjectsContainer();
  swift_allocObject();

  v24 = a4;
  v25 = REMStoreObjectsContainer.init(store:storages:)();
  static CodingUserInfoKey.remStoragesContainer.getter();
  v83 = v23;
  v82[0] = v25;
  v77 = v25;

  v26 = dispatch thunk of PropertyListDecoder.userInfo.modify();
  sub_10000E350(v82, v22);
  v26(v81, 0);
  sub_10000F85C(&qword_100950658, &type metadata accessor for REMRemindersListBatchDeleteInvocation.ListType, &protocol conformance descriptor for REMRemindersListBatchDeleteInvocation.ListType);
  v27 = v78;
  v28 = v76;
  dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
  if (v28)
  {
    if (qword_100936760 != -1)
    {
      swift_once();
    }

    v29 = type metadata accessor for Logger();
    sub_100006654(v29, qword_100950598);
    swift_errorRetain();
    v30 = v73;
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v82[0] = swift_slowAlloc();
      *v33 = 136315394;
      swift_getErrorValue();
      v34 = Error.rem_errorDescription.getter();
      v36 = v35;
      v37 = sub_10000668C(v34, v35, v82);
      v36, v38, v39, v40, v41, v42, v43, v44;
      *(v33 + 4) = v37;
      *(v33 + 12) = 2080;
      v81[0] = swift_getObjectType();
      sub_1000F5104(&qword_100950660, &unk_1007B6710);
      v45 = String.init<A>(describing:)();
      v47 = v46;
      v48 = sub_10000668C(v45, v46, v82);
      v47, v49, v50, v51, v52, v53, v54, v55;
      *(v33 + 14) = v48;
      _os_log_impl(&_mh_execute_header, v31, v32, "Failed to decode the parameters of RDSwiftInvocable {error: %s, invocation: %s}", v33, 0x16u);
      swift_arrayDestroy();
    }

    swift_willThrow();
  }

  else
  {
    v56 = v12;
    v57 = *(v12 + 32);
    v58 = v72;
    v57(v72, v15, v27);
    type metadata accessor for RDXPCStorePerformer();
    throwingCast<A>(_:as:failureMessage:)();
    v60 = v80;
    sub_1005C0538(v68, v58, v70);
    v76 = v60;
    type metadata accessor for PropertyListEncoder();
    swift_allocObject();
    PropertyListEncoder.init()();
    sub_10003B2E4(&_swiftEmptyArrayStorage);
    swift_allocObject();
    v61 = v24;
    v62 = REMStoreObjectsContainer.init(store:storages:)();
    static CodingUserInfoKey.remStoragesContainer.getter();
    v83 = v23;
    v82[0] = v62;

    v63 = dispatch thunk of PropertyListEncoder.userInfo.modify();
    sub_10000E350(v82, v22);
    v63(v81, 0);
    sub_10000F85C(&qword_100950668, &type metadata accessor for REMRemindersListBatchDeleteInvocation.OldestCompletionDateInvocation.Result, &protocol conformance descriptor for REMRemindersListBatchDeleteInvocation.OldestCompletionDateInvocation.Result);
    v64 = v67;
    v31 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
    dispatch thunk of REMStoreObjectsContainer.storages.getter();

    (*(v66 + 8))(v70, v64);
    (*(v56 + 8))(v72, v27);
  }

  return v31;
}

NSObject *sub_100708884(uint64_t a1, unint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, unint64_t a7)
{
  v75 = a6;
  v74 = a5;
  v69 = a3;
  v68 = a2;
  v71 = a1;
  v67 = type metadata accessor for REMSuggestedAttributesFeatureExtractor.Result();
  v66 = *(v67 - 8);
  __chkstk_darwin(v67, v10);
  v70 = &v65 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = type metadata accessor for REMSuggestedAttributesFeatureExtractor.Parameters();
  v12 = *(v78 - 8);
  __chkstk_darwin(v78, v13);
  v15 = &v65 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16, v17);
  v72 = &v65 - v18;
  v19 = type metadata accessor for CodingUserInfoKey();
  __chkstk_darwin(v19 - 8, v20);
  v22 = &v65 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for PropertyListDecoder();
  swift_allocObject();
  v79 = PropertyListDecoder.init()();
  v73 = v7;
  if (!a7)
  {
    sub_10003B2E4(&_swiftEmptyArrayStorage);
  }

  v23 = type metadata accessor for REMStoreObjectsContainer();
  swift_allocObject();

  v24 = a4;
  v25 = REMStoreObjectsContainer.init(store:storages:)();
  static CodingUserInfoKey.remStoragesContainer.getter();
  v83 = v23;
  v82[0] = v25;
  v77 = v25;

  v26 = dispatch thunk of PropertyListDecoder.userInfo.modify();
  sub_10000E350(v82, v22);
  v26(v81, 0);
  sub_10000F85C(&qword_1009506D8, &type metadata accessor for REMSuggestedAttributesFeatureExtractor.Parameters, &protocol conformance descriptor for REMSuggestedAttributesFeatureExtractor.Parameters);
  v27 = v78;
  v28 = v76;
  dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
  if (v28)
  {
    if (qword_100936760 != -1)
    {
      swift_once();
    }

    v29 = type metadata accessor for Logger();
    sub_100006654(v29, qword_100950598);
    swift_errorRetain();
    v30 = v73;
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v82[0] = swift_slowAlloc();
      *v33 = 136315394;
      swift_getErrorValue();
      v34 = Error.rem_errorDescription.getter();
      v36 = v35;
      v37 = sub_10000668C(v34, v35, v82);
      v36, v38, v39, v40, v41, v42, v43, v44;
      *(v33 + 4) = v37;
      *(v33 + 12) = 2080;
      v81[0] = swift_getObjectType();
      sub_1000F5104(&qword_1009506E0, &qword_1007B6750);
      v45 = String.init<A>(describing:)();
      v47 = v46;
      v48 = sub_10000668C(v45, v46, v82);
      v47, v49, v50, v51, v52, v53, v54, v55;
      *(v33 + 14) = v48;
      _os_log_impl(&_mh_execute_header, v31, v32, "Failed to decode the parameters of RDSwiftInvocable {error: %s, invocation: %s}", v33, 0x16u);
      swift_arrayDestroy();
    }

    swift_willThrow();
  }

  else
  {
    v56 = v12;
    v57 = *(v12 + 32);
    v58 = v72;
    v57(v72, v15, v27);
    type metadata accessor for RDXPCSuggestedAttributesPerformer(0);
    throwingCast<A>(_:as:failureMessage:)();
    v60 = v80;
    sub_100585A5C(v68, v58, v70);
    v76 = v60;
    type metadata accessor for PropertyListEncoder();
    swift_allocObject();
    PropertyListEncoder.init()();
    sub_10003B2E4(&_swiftEmptyArrayStorage);
    swift_allocObject();
    v61 = v24;
    v62 = REMStoreObjectsContainer.init(store:storages:)();
    static CodingUserInfoKey.remStoragesContainer.getter();
    v83 = v23;
    v82[0] = v62;

    v63 = dispatch thunk of PropertyListEncoder.userInfo.modify();
    sub_10000E350(v82, v22);
    v63(v81, 0);
    sub_10000F85C(&qword_1009506E8, &type metadata accessor for REMSuggestedAttributesFeatureExtractor.Result, &protocol conformance descriptor for REMSuggestedAttributesFeatureExtractor.Result);
    v64 = v67;
    v31 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
    dispatch thunk of REMStoreObjectsContainer.storages.getter();

    (*(v66 + 8))(v70, v64);
    (*(v56 + 8))(v72, v27);
  }

  return v31;
}

NSObject *sub_100709288(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, unint64_t a7)
{
  result = sub_1006F1CF0(a1, a2, a3, a4, a5, a6, a7, &type metadata accessor for REMRemindersListDataView.TodayNotificationInvocation.Parameters, &qword_100950AC0, &type metadata accessor for REMRemindersListDataView.TodayNotificationInvocation.Parameters, &protocol conformance descriptor for REMRemindersListDataView.TodayNotificationInvocation.Parameters, sub_1001B3E0C, &qword_100950AC8, &qword_1007B6920);
  if (v7)
  {
    return v9;
  }

  return result;
}

NSObject *sub_100709448(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, unint64_t a7)
{
  result = sub_1006F1CF0(a1, a2, a3, a4, a5, a6, a7, &type metadata accessor for REMRemindersListDataView.SiriFoundInAppsInvocation.Parameters, &qword_100950A40, &type metadata accessor for REMRemindersListDataView.SiriFoundInAppsInvocation.Parameters, &protocol conformance descriptor for REMRemindersListDataView.SiriFoundInAppsInvocation.Parameters, sub_1002A81EC, &qword_100950A48, &qword_1007B68D0);
  if (v7)
  {
    return v9;
  }

  return result;
}

void sub_1007094F0(uint64_t a1)
{
  v1 = a1;
  v2 = a1 + 64;
  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = 0;
  v70 = &_swiftEmptyArrayStorage;
  v65 = v6;
  v66 = a1 + 64;

  while (v5)
  {
LABEL_10:
    v9 = __clz(__rbit64(v5)) | (v7 << 6);
    v10 = *(*(v1 + 48) + 16 * v9 + 8);
    v11 = *(*(v1 + 56) + 8 * v9);

    v13 = sub_1006EC1D0(v12);
    v11, v14, v15, v16, v17, v18, v19, v20;
    v10, v21, v22, v23, v24, v25, v26, v27;
    v28 = v13 >> 62;
    v29 = v13;
    if (v13 >> 62)
    {
      v30 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v30 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v31 = v70 >> 62;
    if (v70 >> 62)
    {
      v32 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v32 = *((v70 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v68 = v30;
    v33 = __OFADD__(v32, v30);
    v34 = v32 + v30;
    if (v33)
    {
      goto LABEL_39;
    }

    if (!swift_isUniquelyReferenced_nonNull_bridgeObject())
    {
      if (v31)
      {
LABEL_20:
        _CocoaArrayWrapper.endIndex.getter();
      }

LABEL_21:
      v40 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v41 = v40 & 0xFFFFFFFFFFFFFF8;
      goto LABEL_22;
    }

    if (v31)
    {
      goto LABEL_20;
    }

    v40 = v70;
    v41 = v70 & 0xFFFFFFFFFFFFFF8;
    if (v34 > *((v70 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      goto LABEL_21;
    }

LABEL_22:
    v42 = *(v41 + 16);
    v43 = *(v41 + 24);
    v70 = v40;
    if (v28)
    {
      v45 = v41;
      v46 = _CocoaArrayWrapper.endIndex.getter();
      v41 = v45;
      v44 = v46;
    }

    else
    {
      v44 = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v5 &= v5 - 1;
    if (v44)
    {
      if (((v43 >> 1) - v42) < v68)
      {
        goto LABEL_41;
      }

      v67 = v5;
      v47 = v41 + 8 * v42 + 32;
      v64 = v41;
      if (v28)
      {
        if (v44 < 1)
        {
          goto LABEL_43;
        }

        sub_10000CB48(&qword_10093F5A0, &qword_10093F598, &qword_1007A2640, &protocol conformance descriptor for [A]);
        v56 = 0;
        v48 = v29;
        do
        {
          sub_1000F5104(&qword_10093F598, &qword_1007A2640);
          v57 = sub_10038D6F8(v69, v56, v48);
          v59 = v44;
          v60 = *v58;
          (v57)(v69, 0);
          *(v47 + 8 * v56) = v60;
          v44 = v59;
          ++v56;
        }

        while (v59 != v56);
      }

      else
      {
        v48 = v29;
        type metadata accessor for REMObjectID_Codable();
        swift_arrayInitWithCopy();
      }

      v48, v49, v50, v51, v52, v53, v54, v55;
      v1 = v63;
      v6 = v65;
      v2 = v66;
      v5 = v67;
      if (v68 >= 1)
      {
        v61 = *(v64 + 16);
        v33 = __OFADD__(v61, v68);
        v62 = v61 + v68;
        if (v33)
        {
          goto LABEL_42;
        }

        *(v64 + 16) = v62;
      }
    }

    else
    {
      v29, &qword_10093F598, v35, v40, v36, v37, v38, v39;
      v6 = v65;
      v2 = v66;
      if (v68 > 0)
      {
        goto LABEL_40;
      }
    }
  }

  while (1)
  {
    v8 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v8 >= v6)
    {

      return;
    }

    v5 = *(v2 + 8 * v8);
    ++v7;
    if (v5)
    {
      v7 = v8;
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
}

uint64_t sub_100709BD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t (*a10)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  result = a10(a1, a4, a5, a6, a7);
  if (v10)
  {
    return v12;
  }

  return result;
}

uint64_t sub_10070A15C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t (*a10)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  result = a10(a1, a2, a4, a5, a6, a7);
  if (v10)
  {
    return v12;
  }

  return result;
}

uint64_t sub_10070A1A8()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_100950598);
  v1 = sub_100006654(v0, qword_100950598);
  if (qword_1009364D8 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_1009751D0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_10070A318(_TtC7remindd19RDXPCStorePerformer *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  v65 = a2;
  v66 = a1;
  v8 = type metadata accessor for CodingUserInfoKey();
  __chkstk_darwin(v8 - 8, v9);
  v11 = &v65 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for PropertyListDecoder();
  swift_allocObject();
  v70 = PropertyListDecoder.init()();
  if (!a6)
  {
    sub_10003B2E4(&_swiftEmptyArrayStorage);
  }

  v12 = type metadata accessor for REMStoreObjectsContainer();
  swift_allocObject();

  v13 = a3;
  v14 = REMStoreObjectsContainer.init(store:storages:)();
  static CodingUserInfoKey.remStoragesContainer.getter();
  v75 = v12;
  v74[0] = v14;
  v69 = v14;

  v15 = dispatch thunk of PropertyListDecoder.userInfo.modify();
  sub_10000E350(v74, v11);
  v15(v73, 0);
  sub_1000F5104(&qword_100944F78, qword_1007AABF0);
  sub_1007151E8(&qword_100950A60, &qword_100942188, &protocol conformance descriptor for REMObjectID_Codable, &protocol conformance descriptor for <> Set<A>);
  v16 = v68;
  dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
  if (v16)
  {
    if (qword_100936760 != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    sub_100006654(v17, qword_100950598);
    swift_errorRetain();
    v18 = v67;
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v74[0] = swift_slowAlloc();
      *v21 = 136315394;
      swift_getErrorValue();
      v22 = Error.rem_errorDescription.getter();
      v24 = v23;
      v25 = sub_10000668C(v22, v23, v74);
      v24, v26, v27, v28, v29, v30, v31, v32;
      *(v21 + 4) = v25;
      *(v21 + 12) = 2080;
      v73[0] = swift_getObjectType();
      sub_1000F5104(&qword_100950A68, &unk_1007B68E0);
      v33 = String.init<A>(describing:)();
      v35 = v34;
      v36 = sub_10000668C(v33, v34, v74);
      v35, v37, v38, v39, v40, v41, v42, v43;
      *(v21 + 14) = v36;
      _os_log_impl(&_mh_execute_header, v19, v20, "Failed to decode the parameters of RDSwiftInvocable {error: %s, invocation: %s}", v21, 0x16u);
      swift_arrayDestroy();
    }

    swift_willThrow();
  }

  else
  {
    v44 = v74[0];
    type metadata accessor for RDXPCStorePerformer();
    throwingCast<A>(_:as:failureMessage:)();
    v45 = v72;
    sub_10026EC90(v65, v13, v44);
    v66 = v44;
    v68 = v47;
    v71 = v47;
    type metadata accessor for PropertyListEncoder();
    swift_allocObject();
    PropertyListEncoder.init()();
    sub_10003B2E4(&_swiftEmptyArrayStorage);
    swift_allocObject();
    v48 = v13;
    v49 = REMStoreObjectsContainer.init(store:storages:)();
    static CodingUserInfoKey.remStoragesContainer.getter();
    v75 = v12;
    v74[0] = v49;

    v50 = dispatch thunk of PropertyListEncoder.userInfo.modify();
    sub_10000E350(v74, v11);
    v50(v73, 0);
    sub_1000F5104(&qword_10093F480, qword_10079DF40);
    sub_100715284();
    v20 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
    dispatch thunk of REMStoreObjectsContainer.storages.getter();

    v68, v51, v52, v53, v54, v55, v56, v57;

    v66, v58, v59, v60, v61, v62, v63, v64;
  }

  return v20;
}

NSObject *sub_10070AA9C(_TtC7remindd19RDXPCStorePerformer *a1, _TtC7remindd19RDXPCStorePerformer *a2, void *a3, uint64_t a4, _TtC7remindd19RDXPCStorePerformer *a5, unint64_t a6)
{
  v94 = a5;
  v90[0] = a2;
  v90[1] = a1;
  v97 = type metadata accessor for REMSiriSearchDataView.RemindersByCriteriaInvocation.Parameters();
  v91 = *(v97 - 8);
  __chkstk_darwin(v97, v8);
  v10 = v90 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11, v12);
  v92 = v90 - v13;
  v14 = type metadata accessor for CodingUserInfoKey();
  __chkstk_darwin(v14 - 8, v15);
  v17 = v90 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for PropertyListDecoder();
  swift_allocObject();
  v98 = PropertyListDecoder.init()();
  if (!a6)
  {
    sub_10003B2E4(&_swiftEmptyArrayStorage);
  }

  v18 = type metadata accessor for REMStoreObjectsContainer();
  swift_allocObject();

  v19 = a3;
  v20 = REMStoreObjectsContainer.init(store:storages:)();
  static CodingUserInfoKey.remStoragesContainer.getter();
  v103 = v18;
  v102[0] = v20;
  v96 = v20;

  v21 = dispatch thunk of PropertyListDecoder.userInfo.modify();
  sub_10000E350(v102, v17);
  v21(v101, 0);
  sub_10000F85C(&qword_100950940, &type metadata accessor for REMSiriSearchDataView.RemindersByCriteriaInvocation.Parameters, &protocol conformance descriptor for REMSiriSearchDataView.RemindersByCriteriaInvocation.Parameters);
  v22 = v97;
  v23 = v95;
  dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
  if (v23)
  {
    if (qword_100936760 != -1)
    {
      swift_once();
    }

    v24 = type metadata accessor for Logger();
    sub_100006654(v24, qword_100950598);
    swift_errorRetain();
    v25 = v93;
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v102[0] = swift_slowAlloc();
      *v28 = 136315394;
      swift_getErrorValue();
      v29 = Error.rem_errorDescription.getter();
      v31 = v30;
      v32 = sub_10000668C(v29, v30, v102);
      v31, v33, v34, v35, v36, v37, v38, v39;
      *(v28 + 4) = v32;
      *(v28 + 12) = 2080;
      v101[0] = swift_getObjectType();
      sub_1000F5104(&qword_100950948, &qword_1007B6870);
      v40 = String.init<A>(describing:)();
      v42 = v41;
      v43 = sub_10000668C(v40, v41, v102);
      v42, v44, v45, v46, v47, v48, v49, v50;
      *(v28 + 14) = v43;
      _os_log_impl(&_mh_execute_header, v26, v27, "Failed to decode the parameters of RDSwiftInvocable {error: %s, invocation: %s}", v28, 0x16u);
      swift_arrayDestroy();
    }

    swift_willThrow();
  }

  else
  {
    v95 = v19;
    (*(v91 + 32))(v92, v10, v22);
    type metadata accessor for RDXPCStorePerformer();
    throwingCast<A>(_:as:failureMessage:)();
    v52 = REMSiriSearchDataView.RemindersByCriteriaInvocation.Parameters.criteria.getter();
    v53 = REMSiriSearchDataView.RemindersByCriteriaInvocation.Parameters.fetchOffset.getter();
    if (v54)
    {
      v55 = 0;
    }

    else
    {
      v55 = v53;
    }

    v56 = REMSiriSearchDataView.RemindersByCriteriaInvocation.Parameters.fetchLimit.getter();
    if (v57)
    {
      v58 = 0;
    }

    else
    {
      v58 = v56;
    }

    v59 = v90[0];
    sub_1003C93D0(v52, v55, v58, v90[0]);
    v61 = v60;
    v52, v62, v63, v64, v65, v66, v67, v68;
    v69 = REMSiriSearchDataView.RemindersByCriteriaInvocation.Parameters.reminderFetchOptions.getter();
    v70 = v59;
    v71 = v95;
    sub_1003ED1A4(v61, v69, v70, v95);
    v94 = v72;
    v61, v73, v74, v75, v76, v77, v78, v79;

    v99 = v94;
    type metadata accessor for PropertyListEncoder();
    swift_allocObject();
    PropertyListEncoder.init()();
    sub_10003B2E4(&_swiftEmptyArrayStorage);
    swift_allocObject();
    v80 = v71;
    v81 = REMStoreObjectsContainer.init(store:storages:)();
    static CodingUserInfoKey.remStoragesContainer.getter();
    v103 = v18;
    v102[0] = v81;

    v82 = dispatch thunk of PropertyListEncoder.userInfo.modify();
    sub_10000E350(v102, v17);
    v82(v101, 0);
    sub_1000F5104(&qword_100950950, &qword_1007B6878);
    sub_100715134();
    v26 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
    dispatch thunk of REMStoreObjectsContainer.storages.getter();
    v94, v83, v84, v85, v86, v87, v88, v89;

    (*(v91 + 8))(v92, v22);
  }

  return v26;
}

NSObject *sub_10070B3D8(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  v101 = a5;
  v96 = a2;
  v97 = a1;
  v94 = _s10PredicatesOMa_3(0);
  __chkstk_darwin(v94, v8);
  v95 = (&v91 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v93 = type metadata accessor for REMSiriSearchDataView.ListsResult_Codable();
  v91 = *(v93 - 8);
  __chkstk_darwin(v93, v10);
  v12 = &v91 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v104 = type metadata accessor for REMSiriSearchDataView.ListsByCriteriaInvocation.Parameters();
  v98 = *(v104 - 8);
  __chkstk_darwin(v104, v13);
  v15 = &v91 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16, v17);
  v99 = &v91 - v18;
  v19 = type metadata accessor for CodingUserInfoKey();
  __chkstk_darwin(v19 - 8, v20);
  v22 = &v91 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for PropertyListDecoder();
  swift_allocObject();
  v105 = PropertyListDecoder.init()();
  v92 = v12;
  if (!a6)
  {
    sub_10003B2E4(&_swiftEmptyArrayStorage);
  }

  v23 = type metadata accessor for REMStoreObjectsContainer();
  swift_allocObject();

  v24 = a3;
  v25 = REMStoreObjectsContainer.init(store:storages:)();
  static CodingUserInfoKey.remStoragesContainer.getter();
  v109 = v23;
  v108[0] = v25;
  v103 = v25;

  v26 = dispatch thunk of PropertyListDecoder.userInfo.modify();
  sub_10000E350(v108, v22);
  v26(v107, 0);
  sub_10000F85C(&qword_100950928, &type metadata accessor for REMSiriSearchDataView.ListsByCriteriaInvocation.Parameters, &protocol conformance descriptor for REMSiriSearchDataView.ListsByCriteriaInvocation.Parameters);
  v27 = v104;
  v28 = v102;
  dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
  if (v28)
  {
    if (qword_100936760 != -1)
    {
      swift_once();
    }

    v29 = type metadata accessor for Logger();
    sub_100006654(v29, qword_100950598);
    swift_errorRetain();
    v30 = v100;
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v108[0] = swift_slowAlloc();
      *v33 = 136315394;
      swift_getErrorValue();
      v34 = Error.rem_errorDescription.getter();
      v36 = v35;
      v37 = sub_10000668C(v34, v35, v108);
      v36, v38, v39, v40, v41, v42, v43, v44;
      *(v33 + 4) = v37;
      *(v33 + 12) = 2080;
      v107[0] = swift_getObjectType();
      sub_1000F5104(&qword_100950930, &qword_1007B6868);
      v45 = String.init<A>(describing:)();
      v47 = v46;
      v48 = sub_10000668C(v45, v46, v108);
      v47, v49, v50, v51, v52, v53, v54, v55;
      *(v33 + 14) = v48;
      _os_log_impl(&_mh_execute_header, v31, v32, "Failed to decode the parameters of RDSwiftInvocable {error: %s, invocation: %s}", v33, 0x16u);
      swift_arrayDestroy();
    }

    swift_willThrow();
  }

  else
  {
    (*(v98 + 32))(v99, v15, v27);
    type metadata accessor for RDXPCStorePerformer();
    throwingCast<A>(_:as:failureMessage:)();
    v57 = REMSiriSearchDataView.ListsByCriteriaInvocation.Parameters.criteria.getter();
    v58 = v96;
    v102 = sub_1003CA60C(v57, v96);
    v57, v59, v60, v61, v62, v63, v64, v65;
    v66 = REMSiriSearchDataView.ListsByCriteriaInvocation.Parameters.criteria.getter();
    v67 = v58;
    v68 = v95;
    *v95 = v66;
    swift_storeEnumTagMultiPayload();
    v69 = sub_100717C9C(v68, v67, 0);
    sub_100715370(v68, _s10PredicatesOMa_3);
    v70 = v102;
    sub_1000271D0(v102, v24);
    v70, v71, v72, v73, v74, v75, v76, v77;
    sub_1000303FC(v69, v24);
    v69, v78, v79, v80, v81, v82, v83, v84;
    v85 = v92;
    REMSiriSearchDataView.ListsResult_Codable.init(lists:smartLists:)();
    type metadata accessor for PropertyListEncoder();
    swift_allocObject();
    PropertyListEncoder.init()();
    sub_10003B2E4(&_swiftEmptyArrayStorage);
    swift_allocObject();
    v86 = v24;
    v87 = REMStoreObjectsContainer.init(store:storages:)();
    static CodingUserInfoKey.remStoragesContainer.getter();
    v109 = v23;
    v88 = v85;
    v108[0] = v87;

    v89 = dispatch thunk of PropertyListEncoder.userInfo.modify();
    sub_10000E350(v108, v22);
    v89(v107, 0);
    sub_10000F85C(&qword_100950938, &type metadata accessor for REMSiriSearchDataView.ListsResult_Codable, &protocol conformance descriptor for REMSiriSearchDataView.ListsResult_Codable);
    v90 = v93;
    v31 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
    dispatch thunk of REMStoreObjectsContainer.storages.getter();

    (*(v91 + 8))(v88, v90);
    (*(v98 + 8))(v99, v27);
  }

  return v31;
}

uint64_t sub_10070BF10(uint64_t a1, void *a2, uint64_t (**a3)(_BYTE *, uint64_t), uint64_t a4, unint64_t a5)
{
  v180 = a4;
  v176 = a3;
  v175 = a2;
  v184 = type metadata accessor for REMSuggestedAttributeOutput.Pipeline();
  v179 = *(v184 - 8);
  __chkstk_darwin(v184, v9);
  v182 = &v152[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v11, v12);
  v177 = &v152[-v13];
  v14 = sub_1000F5104(&qword_1009467C8, &qword_1007A8A58);
  __chkstk_darwin(v14 - 8, v15);
  v178 = &v152[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v17, v18);
  v181 = &v152[-v19];
  v20 = type metadata accessor for REMSuggestedAttributeOutput.Source();
  v21 = *(v20 - 8);
  __chkstk_darwin(v20, v22);
  v166 = &v152[-((v23 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v163 = type metadata accessor for REMSuggestedAttributesHarvester.BooleanResponse();
  v161 = *(v163 - 8);
  __chkstk_darwin(v163, v24);
  v164 = &v152[-((v25 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v26 = type metadata accessor for REMSuggestedAttributesHarvester.FeedbackRequest();
  v165 = *(v26 - 8);
  __chkstk_darwin(v26, v27);
  v174 = &v152[-((v28 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v29, v30);
  v32 = &v152[-v31];
  v33 = type metadata accessor for CodingUserInfoKey();
  __chkstk_darwin(v33 - 8, v34);
  v171 = &v152[-((v35 + 15) & 0xFFFFFFFFFFFFFFF0)];
  type metadata accessor for PropertyListDecoder();
  swift_allocObject();
  v172 = PropertyListDecoder.init()();
  v169 = v32;
  v168 = v5;
  v173 = a1;
  v170 = v20;
  v167 = v21;
  v183 = v6;
  if (!a5)
  {
    sub_10003B2E4(&_swiftEmptyArrayStorage);
  }

  v36 = type metadata accessor for REMStoreObjectsContainer();
  swift_allocObject();

  v37 = v175;
  v38 = REMStoreObjectsContainer.init(store:storages:)();
  v39 = v171;
  static CodingUserInfoKey.remStoragesContainer.getter();
  v189 = v36;
  *&v188 = v38;
  v40 = v38;

  v41 = dispatch thunk of PropertyListDecoder.userInfo.modify();
  sub_10000E350(&v188, v39);
  v41(&ObjectType, 0);
  sub_10000F85C(&qword_1009508D0, &type metadata accessor for REMSuggestedAttributesHarvester.FeedbackRequest, &protocol conformance descriptor for REMSuggestedAttributesHarvester.FeedbackRequest);
  v42 = v174;
  v43 = v183;
  dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
  if (v43)
  {
    if (qword_100936760 != -1)
    {
      goto LABEL_47;
    }

    goto LABEL_5;
  }

  v159 = v37;
  v180 = v36;
  (*(v165 + 32))(v169, v42, v26);
  type metadata accessor for RDXPCSuggestedAttributesPerformer(0);
  throwingCast<A>(_:as:failureMessage:)();
  v155 = v26;
  v156 = v40;
  v157 = 0;
  v154 = v192;
  sub_100247474(&v188);
  v187 = 0;
  v71 = v166;
  REMSuggestedAttributesHarvester.FeedbackRequest.source.getter();
  v72 = REMSuggestedAttributeOutput.Source.predictors.getter();
  (*(v167 + 8))(v71, v170);
  v73 = 0;
  v74 = *(v72 + 64);
  v167 = v72 + 64;
  v174 = v72;
  v75 = 1 << *(v72 + 32);
  v76 = -1;
  if (v75 < 64)
  {
    v76 = ~(-1 << v75);
  }

  v77 = v76 & v74;
  v166 = ((v75 + 63) >> 6);
  v173 = v179 + 16;
  v183 = (v179 + 32);
  v176 = (v179 + 88);
  LODWORD(v175) = enum case for REMSuggestedAttributeOutput.Pipeline.nlQueryParser(_:);
  LODWORD(v170) = enum case for REMSuggestedAttributeOutput.Pipeline.kNN(_:);
  v162 = enum case for REMSuggestedAttributeOutput.Pipeline.coreBehavior(_:);
  v160 = enum case for REMSuggestedAttributeOutput.Pipeline.heuristic(_:);
  v158 = enum case for REMSuggestedAttributeOutput.Pipeline.anchoredBubble(_:);
  v153 = enum case for REMSuggestedAttributeOutput.Pipeline.spotlight(_:);
  v40 = v178;
  v78 = v181;
  while (v77)
  {
    v79 = v73;
LABEL_24:
    v82 = __clz(__rbit64(v77));
    v77 &= v77 - 1;
    v83 = v82 | (v79 << 6);
    v84 = v174;
    v85 = v179;
    v86 = v177;
    v87 = v184;
    (*(v179 + 16))(v177, *(v174 + 6) + *(v179 + 72) * v83, v184);
    v88 = *(*(v84 + 7) + 8 * v83);
    v89 = sub_1000F5104(&qword_1009467D0, &unk_1007A8A60);
    v90 = *(v89 + 48);
    v91 = *(v85 + 32);
    v40 = v178;
    v91(v178, v86, v87);
    *(v40 + v90) = v88;
    (*(*(v89 - 8) + 56))(v40, 0, 1, v89);

    v81 = v79;
    v78 = v181;
LABEL_25:
    sub_100031B58(v40, v78, &qword_1009467C8, &qword_1007A8A58);
    v92 = sub_1000F5104(&qword_1009467D0, &unk_1007A8A60);
    v93 = (*(*(v92 - 8) + 48))(v78, 1, v92);
    v94 = v180;
    if (v93 == 1)
    {
      goto LABEL_35;
    }

    v95 = *(v78 + *(v92 + 48));
    v96 = v182;
    v94 = v184;
    (*v183)(v182, v78, v184);
    v97 = (*v176)(v96, v94);
    if (v97 == v175 || v97 == v170)
    {
      goto LABEL_13;
    }

    if (v97 != v162)
    {
      if (v97 != v160 && v97 != v158 && v97 != v153)
      {
        _diagnoseUnexpectedEnumCase<A>(type:)();
        __break(1u);
LABEL_35:

        v117 = v163;
        v118 = v164;
        v119 = v171;
        if (v187)
        {
          if (qword_100935D08 != -1)
          {
            swift_once();
          }

          sub_1000F5104(&unk_10093E978, &qword_1007A1070);
          sub_10000CB48(&qword_100941350, &unk_10093E978, &qword_1007A1070, &protocol conformance descriptor for PassthroughSubject<A, B>);
          Subject<>.send()();
          v94 = v180;
        }

        REMSuggestedAttributesHarvester.BooleanResponse.init(result:)();
        sub_1002497E0(&v188);
        type metadata accessor for PropertyListEncoder();
        swift_allocObject();
        PropertyListEncoder.init()();
        sub_10003B2E4(&_swiftEmptyArrayStorage);
        swift_allocObject();
        v120 = v159;
        v121 = REMStoreObjectsContainer.init(store:storages:)();
        static CodingUserInfoKey.remStoragesContainer.getter();
        v189 = v94;
        *&v188 = v121;

        v122 = dispatch thunk of PropertyListEncoder.userInfo.modify();
        sub_10000E350(&v188, v119);
        v122(&ObjectType, 0);
        sub_10000F85C(&qword_1009508B8, &type metadata accessor for REMSuggestedAttributesHarvester.BooleanResponse, &protocol conformance descriptor for REMSuggestedAttributesHarvester.BooleanResponse);
        v123 = v157;
        v124 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
        if (v123)
        {
          if (qword_100936760 != -1)
          {
            swift_once();
          }

          v125 = type metadata accessor for Logger();
          sub_100006654(v125, qword_100950598);
          v126 = v168;
          swift_errorRetain();
          v40 = Logger.logObject.getter();
          v127 = static os_log_type_t.error.getter();

          if (os_log_type_enabled(v40, v127))
          {
            v128 = swift_slowAlloc();
            v184 = swift_slowAlloc();
            *&v188 = v184;
            *v128 = 136315394;
            swift_getErrorValue();
            v129 = Error.rem_errorDescription.getter();
            v131 = v130;
            v132 = sub_10000668C(v129, v130, &v188);
            v131, v133, v134, v135, v136, v137, v138, v139;
            *(v128 + 4) = v132;
            *(v128 + 12) = 2080;
            ObjectType = swift_getObjectType();
            sub_1000F5104(&qword_1009508D8, &unk_1007B6840);
            v140 = String.init<A>(describing:)();
            v142 = v141;
            v143 = sub_10000668C(v140, v141, &v188);
            v142, v144, v145, v146, v147, v148, v149, v150;
            *(v128 + 14) = v143;
            _os_log_impl(&_mh_execute_header, v40, v127, "Failed to encode the result of RDSwiftInvocable {error: %s, invocation: %s}", v128, 0x16u);
            swift_arrayDestroy();

            v117 = v163;
          }

          v151 = v161;
          swift_willThrow();

          (*(v151 + 8))(v164, v117);
          (*(v165 + 8))(v169, v155);
        }

        else
        {
          v40 = v124;
          dispatch thunk of REMStoreObjectsContainer.storages.getter();

          (*(v161 + 8))(v118, v117);
          (*(v165 + 8))(v169, v155);
        }

        return v40;
      }

LABEL_13:
      v95, v98, v99, v100, v101, v102, v103, v104;
      goto LABEL_14;
    }

    v105 = v190;
    v106 = v191;
    v185 = v190;
    v186 = v191;
    __chkstk_darwin(v97, v98);
    v107 = v169;
    *&v152[-32] = v95;
    *&v152[-24] = v107;
    *&v152[-16] = &v187;
    sub_1002490E8(v105, v106);
    sub_1000F5104(&qword_10093E9A8, &qword_1007A8A70);
    Result<>.tryMap<A>(transform:)();
    v95, v108, v109, v110, v111, v112, v113, v114;
    v115 = v106;
    v78 = v181;
    sub_100249154(v105, v115);
    sub_100138D4C(ObjectType, v194);
LABEL_14:
    v73 = v81;
  }

  if (v166 <= v73 + 1)
  {
    v80 = (v73 + 1);
  }

  else
  {
    v80 = v166;
  }

  v81 = v80 - 1;
  while (1)
  {
    v79 = v73 + 1;
    if (__OFADD__(v73, 1))
    {
      break;
    }

    if (v79 >= v166)
    {
      v116 = sub_1000F5104(&qword_1009467D0, &unk_1007A8A60);
      (*(*(v116 - 8) + 56))(v40, 1, 1, v116);
      v77 = 0;
      goto LABEL_25;
    }

    v77 = *(v167 + 8 * v79);
    ++v73;
    if (v77)
    {
      goto LABEL_24;
    }
  }

  __break(1u);
LABEL_47:
  swift_once();
LABEL_5:
  v44 = type metadata accessor for Logger();
  sub_100006654(v44, qword_100950598);
  swift_errorRetain();
  v45 = v168;
  v46 = Logger.logObject.getter();
  v47 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v46, v47))
  {
    v40 = swift_slowAlloc();
    *&v188 = swift_slowAlloc();
    *v40 = 136315394;
    swift_getErrorValue();
    v48 = Error.rem_errorDescription.getter();
    v50 = v49;
    v51 = sub_10000668C(v48, v49, &v188);
    v50, v52, v53, v54, v55, v56, v57, v58;
    *(v40 + 4) = v51;
    *(v40 + 12) = 2080;
    ObjectType = swift_getObjectType();
    sub_1000F5104(&qword_1009508D8, &unk_1007B6840);
    v59 = String.init<A>(describing:)();
    v61 = v60;
    v62 = sub_10000668C(v59, v60, &v188);
    v61, v63, v64, v65, v66, v67, v68, v69;
    *(v40 + 14) = v62;
    _os_log_impl(&_mh_execute_header, v46, v47, "Failed to decode the parameters of RDSwiftInvocable {error: %s, invocation: %s}", v40, 0x16u);
    swift_arrayDestroy();
  }

  swift_willThrow();

  return v40;
}

NSObject *sub_10070D0CC(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v76 = a4;
  v72 = a1;
  v71 = sub_1000F5104(&qword_1009467C0, &qword_1007A8A50);
  v66 = *(v71 - 8);
  __chkstk_darwin(v71, v7);
  v70 = &v66 - v8;
  v69 = type metadata accessor for REMSuggestedAttributesHarvester.BooleanResponse();
  v67 = *(v69 - 8);
  __chkstk_darwin(v69, v9);
  v68 = &v66 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = type metadata accessor for REMSuggestedAttributesHarvester.PostSuggestionAnalyticsRequest();
  v74 = *(v79 - 8);
  __chkstk_darwin(v79, v11);
  v13 = &v66 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14, v15);
  v73 = &v66 - v16;
  v17 = type metadata accessor for CodingUserInfoKey();
  __chkstk_darwin(v17 - 8, v18);
  v20 = &v66 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for PropertyListDecoder();
  swift_allocObject();
  v80 = PropertyListDecoder.init()();
  if (!a5)
  {
    sub_10003B2E4(&_swiftEmptyArrayStorage);
  }

  v21 = type metadata accessor for REMStoreObjectsContainer();
  swift_allocObject();

  v22 = a2;
  v23 = REMStoreObjectsContainer.init(store:storages:)();
  static CodingUserInfoKey.remStoragesContainer.getter();
  v84 = v21;
  v83[0] = v23;
  v78 = v23;

  v24 = dispatch thunk of PropertyListDecoder.userInfo.modify();
  sub_10000E350(v83, v20);
  v24(v82, 0);
  sub_10000F85C(&qword_1009508C0, &type metadata accessor for REMSuggestedAttributesHarvester.PostSuggestionAnalyticsRequest, &protocol conformance descriptor for REMSuggestedAttributesHarvester.PostSuggestionAnalyticsRequest);
  v25 = v79;
  v26 = v77;
  dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
  if (v26)
  {
    if (qword_100936760 != -1)
    {
      swift_once();
    }

    v27 = type metadata accessor for Logger();
    sub_100006654(v27, qword_100950598);
    swift_errorRetain();
    v28 = v75;
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v83[0] = swift_slowAlloc();
      *v31 = 136315394;
      swift_getErrorValue();
      v32 = Error.rem_errorDescription.getter();
      v34 = v33;
      v35 = sub_10000668C(v32, v33, v83);
      v34, v36, v37, v38, v39, v40, v41, v42;
      *(v31 + 4) = v35;
      *(v31 + 12) = 2080;
      v82[0] = swift_getObjectType();
      sub_1000F5104(&qword_1009508C8, &unk_1007B6830);
      v43 = String.init<A>(describing:)();
      v45 = v44;
      v46 = sub_10000668C(v43, v44, v83);
      v45, v47, v48, v49, v50, v51, v52, v53;
      *(v31 + 14) = v46;
      _os_log_impl(&_mh_execute_header, v29, v30, "Failed to decode the parameters of RDSwiftInvocable {error: %s, invocation: %s}", v31, 0x16u);
      swift_arrayDestroy();
    }

    swift_willThrow();
  }

  else
  {
    (*(v74 + 32))(v73, v13, v25);
    type metadata accessor for RDXPCSuggestedAttributesPerformer(0);
    throwingCast<A>(_:as:failureMessage:)();
    if (qword_1009360C8 != -1)
    {
      swift_once();
    }

    v55 = qword_100974E40;
    v56 = REMSuggestedAttributesHarvester.PostSuggestionAnalyticsRequest.reminder.getter();
    v57 = v66;
    (*(v66 + 104))(v70, enum case for REMCache.ExecutionMode.asynchronously<A, B>(_:), v71);
    v58 = swift_allocObject();
    *(v58 + 16) = v56;
    *(v58 + 24) = v55;

    dispatch thunk of REMCache.performReadOnly(_:operations:)();

    (*(v57 + 8))(v70, v71);
    v59 = v68;
    REMSuggestedAttributesHarvester.BooleanResponse.init(result:)();
    type metadata accessor for PropertyListEncoder();
    swift_allocObject();
    PropertyListEncoder.init()();
    sub_10003B2E4(&_swiftEmptyArrayStorage);
    swift_allocObject();
    v60 = v22;
    v61 = REMStoreObjectsContainer.init(store:storages:)();
    static CodingUserInfoKey.remStoragesContainer.getter();
    v84 = v21;
    v83[0] = v61;

    v62 = dispatch thunk of PropertyListEncoder.userInfo.modify();
    v63 = v20;
    v64 = v59;
    sub_10000E350(v83, v63);
    v62(v82, 0);
    sub_10000F85C(&qword_1009508B8, &type metadata accessor for REMSuggestedAttributesHarvester.BooleanResponse, &protocol conformance descriptor for REMSuggestedAttributesHarvester.BooleanResponse);
    v65 = v69;
    v29 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
    dispatch thunk of REMStoreObjectsContainer.storages.getter();

    (*(v67 + 8))(v64, v65);

    (*(v74 + 8))(v73, v79);
  }

  return v29;
}

NSObject *sub_10070DB7C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v210 = a4;
  v209 = a3;
  v199 = a1;
  v198 = sub_1000F5104(&qword_1009467C0, &qword_1007A8A50);
  v197 = *(v198 - 8);
  __chkstk_darwin(v198, v7);
  v196 = &v176[-v8];
  v204 = type metadata accessor for REMSuggestedAttributeOutput.Pipeline();
  v9 = *(v204 - 8);
  __chkstk_darwin(v204, v10);
  v195 = &v176[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v12, v13);
  v193 = &v176[-v14];
  v189 = v15;
  __chkstk_darwin(v16, v17);
  v203 = &v176[-v18];
  v207 = type metadata accessor for REMSuggestedAttributesHarvester.CachedSuggestionType();
  v19 = *(v207 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v207, v21);
  v194 = &v176[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v22, v23);
  v188 = &v176[-v24];
  __chkstk_darwin(v25, v26);
  v201 = &v176[-v27];
  v28 = type metadata accessor for REMSuggestedAttributesHarvester.BooleanResponse();
  v190 = *(v28 - 8);
  __chkstk_darwin(v28, v29);
  v191 = &v176[-((v30 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v214 = type metadata accessor for REMSuggestedAttributesHarvester.RecordSuggestionRequest();
  v206 = *(v214 - 8);
  __chkstk_darwin(v214, v31);
  v33 = &v176[-((v32 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v34, v35);
  v205 = &v176[-v36];
  v37 = type metadata accessor for CodingUserInfoKey();
  __chkstk_darwin(v37 - 8, v38);
  v213 = &v176[-((v39 + 15) & 0xFFFFFFFFFFFFFFF0)];
  type metadata accessor for PropertyListDecoder();
  swift_allocObject();
  v215 = PropertyListDecoder.init()();
  v192 = v28;
  v202 = v9;
  v200 = v19;
  if (!a5)
  {
    sub_10003B2E4(&_swiftEmptyArrayStorage);
  }

  v40 = type metadata accessor for REMStoreObjectsContainer();
  swift_allocObject();

  v41 = a2;
  v42 = REMStoreObjectsContainer.init(store:storages:)();
  v43 = v213;
  static CodingUserInfoKey.remStoragesContainer.getter();
  v219 = v40;
  v218 = v42;
  v212 = v42;

  v44 = v215;
  v45 = dispatch thunk of PropertyListDecoder.userInfo.modify();
  sub_10000E350(&v218, v43);
  v45(&ObjectType, 0);
  sub_10000F85C(&qword_1009508A8, &type metadata accessor for REMSuggestedAttributesHarvester.RecordSuggestionRequest, &protocol conformance descriptor for REMSuggestedAttributesHarvester.RecordSuggestionRequest);
  v46 = v214;
  v47 = v211;
  dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
  if (v47)
  {
    if (qword_100936760 != -1)
    {
      swift_once();
    }

    v48 = type metadata accessor for Logger();
    sub_100006654(v48, qword_100950598);
    swift_errorRetain();
    v49 = v208;
    v50 = Logger.logObject.getter();
    v51 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      v218 = swift_slowAlloc();
      *v52 = 136315394;
      swift_getErrorValue();
      v53 = Error.rem_errorDescription.getter();
      v55 = v54;
      v56 = sub_10000668C(v53, v54, &v218);
      v55, v57, v58, v59, v60, v61, v62, v63;
      *(v52 + 4) = v56;
      *(v52 + 12) = 2080;
      ObjectType = swift_getObjectType();
      sub_1000F5104(&qword_1009508B0, &qword_1007B6828);
      v64 = String.init<A>(describing:)();
      v66 = v65;
      v67 = sub_10000668C(v64, v65, &v218);
      v66, v68, v69, v70, v71, v72, v73, v74;
      *(v52 + 14) = v67;
      _os_log_impl(&_mh_execute_header, v50, v51, "Failed to decode the parameters of RDSwiftInvocable {error: %s, invocation: %s}", v52, 0x16u);
      swift_arrayDestroy();

      v44 = v215;
    }

    swift_willThrow();
  }

  else
  {
    v211 = v41;
    (*(v206 + 32))(v205, v33, v46);
    type metadata accessor for RDXPCSuggestedAttributesPerformer(0);
    throwingCast<A>(_:as:failureMessage:)();
    if (qword_1009360C8 != -1)
    {
      swift_once();
    }

    v209 = qword_100974E40;
    v210 = REMSuggestedAttributesHarvester.RecordSuggestionRequest.suggestionValue.getter();
    v77 = v76;
    v78 = v201;
    REMSuggestedAttributesHarvester.RecordSuggestionRequest.suggestionType.getter();
    v79 = v203;
    REMSuggestedAttributesHarvester.RecordSuggestionRequest.pipeline.getter();
    v199 = REMSuggestedAttributesHarvester.RecordSuggestionRequest.reminderID.getter();
    (*(v197 + 104))(v196, enum case for REMCache.ExecutionMode.asynchronously<A, B>(_:), v198);
    v80 = v207;
    if (qword_1009360C0 != -1)
    {
      swift_once();
    }

    v180 = type metadata accessor for Logger();
    sub_100006654(v180, qword_100946628);
    v81 = *(v200 + 16);
    v82 = v188;
    v186 = v200 + 16;
    v184 = v81;
    v81(v188, v78, v80);
    v83 = v204;
    v183 = *(v202 + 16);
    v183(v193, v79, v204);

    v84 = Logger.logObject.getter();
    v85 = static os_log_type_t.default.getter();
    v77, v86, v87, v88, v89, v90, v91, v92;
    v93 = os_log_type_enabled(v84, v85);
    v187 = 0;
    v181 = v77;
    if (v93)
    {
      v94 = swift_slowAlloc();
      v179 = swift_slowAlloc();
      v218 = v179;
      *v94 = 136446722;
      v178 = v84;
      v95 = REMSuggestedAttributesHarvester.CachedSuggestionType.rawValue.getter();
      v96 = v82;
      v97 = v193;
      v177 = v85;
      v99 = v98;
      v100 = *(v200 + 8);
      v185 = (v200 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v188 = v100;
      (v100)(v96, v207);
      v101 = sub_10000668C(v95, v99, &v218);
      v99, v102, v103, v104, v105, v106, v107, v108;
      *(v94 + 4) = v101;
      *(v94 + 12) = 2082;
      v109 = REMSuggestedAttributeOutput.Pipeline.rawValue.getter();
      v111 = v110;
      v112 = *(v202 + 8);
      v182 = (v202 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v193 = v112;
      (v112)(v97, v204);
      v113 = sub_10000668C(v109, v111, &v218);
      v114 = v201;
      v115 = v203;
      v111, v116, v117, v118, v119, v120, v121, v122;
      *(v94 + 14) = v113;
      *(v94 + 22) = 2080;
      *(v94 + 24) = sub_10000668C(v210, v77, &v218);
      v123 = v178;
      _os_log_impl(&_mh_execute_header, v178, v177, "RDSuggestedAttributeCache: Recording %{public}s suggestion from %{public}s with value: %s", v94, 0x20u);
      swift_arrayDestroy();

      v83 = v204;
    }

    else
    {

      v124 = *(v202 + 8);
      v182 = (v202 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v125 = v193;
      v193 = v124;
      (v124)(v125, v83);
      v126 = *(v200 + 8);
      v185 = (v200 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v188 = v126;
      (v126)(v82, v207);
      v115 = v203;
      v114 = v201;
    }

    v184(v194, v114, v207);
    v183(v195, v115, v83);
    v127 = v200;
    v128 = (*(v200 + 80) + 24) & ~*(v200 + 80);
    v129 = (v20 + v128 + 7) & 0xFFFFFFFFFFFFFFF8;
    v130 = v202;
    v131 = (*(v202 + 80) + v129 + 16) & ~*(v202 + 80);
    v132 = (v189 + v131 + 7) & 0xFFFFFFFFFFFFFFF8;
    v133 = swift_allocObject();
    v134 = v199;
    *(v133 + 16) = v199;
    (*(v127 + 32))(v133 + v128, v194, v207);
    v135 = (v133 + v129);
    v136 = v181;
    *v135 = v210;
    v135[1] = v136;
    v137 = v204;
    (*(v130 + 32))(v133 + v131, v195, v204);
    v138 = (v133 + v132);
    *v138 = REMCDList.cleanUpAfterLocalObjectMerge();
    v138[1] = 0;
    v139 = v134;
    v140 = v196;
    dispatch thunk of REMCache.performReadAndWrite(_:operations:)();

    (*(v197 + 8))(v140, v198);
    (v193)(v203, v137);
    (v188)(v201, v207);
    v141 = v191;
    REMSuggestedAttributesHarvester.BooleanResponse.init(result:)();
    type metadata accessor for PropertyListEncoder();
    swift_allocObject();
    PropertyListEncoder.init()();
    sub_10003B2E4(&_swiftEmptyArrayStorage);
    swift_allocObject();
    v142 = v211;
    v143 = REMStoreObjectsContainer.init(store:storages:)();
    v144 = v213;
    static CodingUserInfoKey.remStoragesContainer.getter();
    v219 = v40;
    v218 = v143;

    v145 = dispatch thunk of PropertyListEncoder.userInfo.modify();
    sub_10000E350(&v218, v144);
    v145(&ObjectType, 0);
    sub_10000F85C(&qword_1009508B8, &type metadata accessor for REMSuggestedAttributesHarvester.BooleanResponse, &protocol conformance descriptor for REMSuggestedAttributesHarvester.BooleanResponse);
    v146 = v192;
    v147 = v187;
    v148 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
    if (v147)
    {
      v149 = v141;
      if (qword_100936760 != -1)
      {
        swift_once();
      }

      sub_100006654(v180, qword_100950598);
      v150 = v208;
      swift_errorRetain();
      v44 = Logger.logObject.getter();
      v151 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v44, v151))
      {
        v152 = swift_slowAlloc();
        v213 = swift_slowAlloc();
        v218 = v213;
        *v152 = 136315394;
        swift_getErrorValue();
        v153 = Error.rem_errorDescription.getter();
        v155 = v154;
        v156 = sub_10000668C(v153, v154, &v218);
        v155, v157, v158, v159, v160, v161, v162, v163;
        *(v152 + 4) = v156;
        *(v152 + 12) = 2080;
        ObjectType = swift_getObjectType();
        sub_1000F5104(&qword_1009508B0, &qword_1007B6828);
        v164 = String.init<A>(describing:)();
        v166 = v165;
        v167 = sub_10000668C(v164, v165, &v218);
        v166, v168, v169, v170, v171, v172, v173, v174;
        *(v152 + 14) = v167;
        v149 = v191;
        _os_log_impl(&_mh_execute_header, v44, v151, "Failed to encode the result of RDSwiftInvocable {error: %s, invocation: %s}", v152, 0x16u);
        swift_arrayDestroy();

        v146 = v192;
      }

      v175 = v206;
      swift_willThrow();

      (*(v190 + 8))(v149, v146);
      (*(v175 + 8))(v205, v214);
    }

    else
    {
      v44 = v148;
      dispatch thunk of REMStoreObjectsContainer.storages.getter();

      (*(v190 + 8))(v141, v146);
      (*(v206 + 8))(v205, v214);
    }
  }

  return v44;
}

char *sub_10070ED38(void *a1, uint64_t a2, void *a3, uint64_t a4, void *a5, unint64_t a6)
{
  v132 = a5;
  v127 = a2;
  v128 = a1;
  v120 = sub_1000F5104(&unk_10093F420, &unk_100797AE0);
  __chkstk_darwin(v120, v8);
  v121 = &v120 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10, v11);
  v122 = &v120 - v12;
  __chkstk_darwin(v13, v14);
  v16 = &v120 - v15;
  v17 = type metadata accessor for REMGroceryDataView.SecondaryGroceryLocaleInvocation.Result();
  v124 = *(v17 - 8);
  __chkstk_darwin(v17, v18);
  v126 = &v120 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v135 = type metadata accessor for REMGroceryDataView.SecondaryGroceryLocaleInvocation.Parameters();
  v129 = *(v135 - 8);
  __chkstk_darwin(v135, v20);
  v22 = &v120 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23, v24);
  v130 = &v120 - v25;
  v26 = type metadata accessor for CodingUserInfoKey();
  __chkstk_darwin(v26 - 8, v27);
  v29 = &v120 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for PropertyListDecoder();
  swift_allocObject();
  v136 = PropertyListDecoder.init()();
  v125 = v17;
  v123 = v16;
  if (!a6)
  {
    sub_10003B2E4(&_swiftEmptyArrayStorage);
  }

  v30 = type metadata accessor for REMStoreObjectsContainer();
  swift_allocObject();

  v31 = a3;
  v32 = REMStoreObjectsContainer.init(store:storages:)();
  static CodingUserInfoKey.remStoragesContainer.getter();
  v140 = v30;
  v139[0] = v32;
  v134 = v32;

  v33 = dispatch thunk of PropertyListDecoder.userInfo.modify();
  sub_10000E350(v139, v29);
  v33(v138, 0);
  sub_10000F85C(&qword_100950890, &type metadata accessor for REMGroceryDataView.SecondaryGroceryLocaleInvocation.Parameters, &protocol conformance descriptor for REMGroceryDataView.SecondaryGroceryLocaleInvocation.Parameters);
  v34 = v135;
  v35 = v133;
  dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
  if (v35)
  {
    if (qword_100936760 != -1)
    {
      swift_once();
    }

    v36 = type metadata accessor for Logger();
    sub_100006654(v36, qword_100950598);
    swift_errorRetain();
    v37 = v131;
    v38 = Logger.logObject.getter();
    v22 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v38, v22))
    {
      v39 = swift_slowAlloc();
      v139[0] = swift_slowAlloc();
      *v39 = 136315394;
      swift_getErrorValue();
      v40 = Error.rem_errorDescription.getter();
      v42 = v41;
      v43 = sub_10000668C(v40, v41, v139);
      v42, v44, v45, v46, v47, v48, v49, v50;
      *(v39 + 4) = v43;
      *(v39 + 12) = 2080;
      v138[0] = swift_getObjectType();
      sub_1000F5104(&qword_100950898, &unk_1007B6818);
      v51 = String.init<A>(describing:)();
      v53 = v52;
      v54 = sub_10000668C(v51, v52, v139);
      v53, v55, v56, v57, v58, v59, v60, v61;
      *(v39 + 14) = v54;
      _os_log_impl(&_mh_execute_header, v38, v22, "Failed to decode the parameters of RDSwiftInvocable {error: %s, invocation: %s}", v39, 0x16u);
      swift_arrayDestroy();
    }

    swift_willThrow();
  }

  else
  {
    v133 = v31;
    v62 = v129;
    v63 = v130;
    (*(v129 + 32))(v130, v22, v34);
    type metadata accessor for RDXPCStorePerformer();
    throwingCast<A>(_:as:failureMessage:)();
    if (qword_1009367D8 != -1)
    {
      swift_once();
    }

    v65 = sub_100013674(qword_1009752E8);
    if (v65)
    {
      v66 = v65;
      v67 = [v65 secondaryGroceryLocalesInfoAsData];
      if (v67)
      {
        v132 = v66;
        v68 = v67;
        v69 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
        v71 = v70;

        type metadata accessor for RDSecondaryGroceryLocalesInfo(0);
        sub_10000F85C(&unk_100950C60, type metadata accessor for RDSecondaryGroceryLocalesInfo, &unk_1007B16F8);
        static REMJSONRepresentable.fromJSONData(_:)();
        sub_10001BBA0(v69, v71);
        v78 = *(v139[0] + OBJC_IVAR____TtC7remindd29RDSecondaryGroceryLocalesInfo_secondaryGroceryLocales);

        v79 = v122;
        sub_100448B78(v78, v122);
        if (qword_100936178 != -1)
        {
          swift_once();
        }

        v80 = type metadata accessor for Logger();
        sub_100006654(v80, qword_100947608);
        v81 = v121;
        sub_100010364(v79, v121, &unk_10093F420, &unk_100797AE0);
        swift_bridgeObjectRetain_n();
        v82 = Logger.logObject.getter();
        v83 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v82, v83))
        {
          v84 = swift_slowAlloc();
          v128 = swift_slowAlloc();
          v139[0] = v128;
          *v84 = 136446466;
          LODWORD(v127) = v83;
          v85 = v123;
          sub_100010364(v81, v123, &unk_10093F420, &unk_100797AE0);
          v86 = String.init<A>(describing:)();
          v87 = v81;
          v89 = v88;
          sub_1000050A4(v87, &unk_10093F420, &unk_100797AE0);
          v90 = sub_10000668C(v86, v89, v139);
          v89, v91, v92, v93, v94, v95, v96, v97;
          *(v84 + 4) = v90;
          v62 = v129;
          *(v84 + 12) = 1024;
          v78, v98, v99, v100, v101, v102, v103, v104;
          *(v84 + 14) = v78 == 0;
          v78, v105, v106, v107, v108, v109, v110, v111;
          _os_log_impl(&_mh_execute_header, v82, v127, "REMGroceryDataView.SecondaryGroceryLocaleInvocation: %{public}s, isAutomatic: %{BOOL}d", v84, 0x12u);
          sub_10000607C(v128);
        }

        else
        {

          swift_bridgeObjectRelease_n();
          sub_1000050A4(v81, &unk_10093F420, &unk_100797AE0);
          v85 = v123;
        }

        v112 = v122;
        sub_100010364(v122, v85, &unk_10093F420, &unk_100797AE0);
        v78, v113, v114, v115, v116, v117, v118, v119;
        REMGroceryDataView.SecondaryGroceryLocaleInvocation.Result.init(locale:isAutomatic:)();

        sub_1000050A4(v112, &unk_10093F420, &unk_100797AE0);
      }

      else
      {
        v72 = type metadata accessor for Locale();
        (*(*(v72 - 8) + 56))(v123, 1, 1, v72);
        REMGroceryDataView.SecondaryGroceryLocaleInvocation.Result.init(locale:isAutomatic:)();
      }

      type metadata accessor for PropertyListEncoder();
      swift_allocObject();
      PropertyListEncoder.init()();
      sub_10003B2E4(&_swiftEmptyArrayStorage);
      swift_allocObject();
      v73 = v133;
      v74 = REMStoreObjectsContainer.init(store:storages:)();
      static CodingUserInfoKey.remStoragesContainer.getter();
      v140 = v30;
      v139[0] = v74;

      v75 = dispatch thunk of PropertyListEncoder.userInfo.modify();
      sub_10000E350(v139, v29);
      v75(v138, 0);
      sub_10000F85C(&qword_1009508A0, &type metadata accessor for REMGroceryDataView.SecondaryGroceryLocaleInvocation.Result, &protocol conformance descriptor for REMGroceryDataView.SecondaryGroceryLocaleInvocation.Result);
      v76 = v126;
      v77 = v125;
      v22 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
      dispatch thunk of REMStoreObjectsContainer.storages.getter();

      (*(v124 + 8))(v76, v77);
      (*(v62 + 8))(v130, v135);
    }

    else
    {
      [objc_opt_self() noPrimaryActiveCloudKitAccountError];
      swift_willThrow();

      (*(v62 + 8))(v63, v34);
    }
  }

  return v22;
}

NSObject *sub_10070FB9C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5, unint64_t a6)
{
  v102 = a5;
  v98[0] = a2;
  v98[1] = a1;
  v105 = type metadata accessor for REMHashtagLabelDataView.HashtagIDsWithHashtagLabelNamesInvocation.Parameters();
  v99 = *(v105 - 8);
  __chkstk_darwin(v105, v8);
  v10 = v98 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11, v12);
  v100 = v98 - v13;
  v14 = type metadata accessor for CodingUserInfoKey();
  __chkstk_darwin(v14 - 8, v15);
  v17 = v98 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for PropertyListDecoder();
  swift_allocObject();
  v106 = PropertyListDecoder.init()();
  if (!a6)
  {
    sub_10003B2E4(&_swiftEmptyArrayStorage);
  }

  v18 = type metadata accessor for REMStoreObjectsContainer();
  swift_allocObject();

  v19 = a3;
  v20 = REMStoreObjectsContainer.init(store:storages:)();
  static CodingUserInfoKey.remStoragesContainer.getter();
  v111 = v18;
  v110[0] = v20;
  v104 = v20;

  v21 = dispatch thunk of PropertyListDecoder.userInfo.modify();
  sub_10000E350(v110, v17);
  v21(v109, 0);
  sub_10000F85C(&qword_1009506F0, &type metadata accessor for REMHashtagLabelDataView.HashtagIDsWithHashtagLabelNamesInvocation.Parameters, &protocol conformance descriptor for REMHashtagLabelDataView.HashtagIDsWithHashtagLabelNamesInvocation.Parameters);
  v22 = v105;
  v23 = v103;
  dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
  if (v23)
  {
    if (qword_100936760 != -1)
    {
      swift_once();
    }

    v24 = type metadata accessor for Logger();
    sub_100006654(v24, qword_100950598);
    swift_errorRetain();
    v25 = v101;
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v110[0] = swift_slowAlloc();
      *v28 = 136315394;
      swift_getErrorValue();
      v29 = Error.rem_errorDescription.getter();
      v31 = v30;
      v32 = sub_10000668C(v29, v30, v110);
      v31, v33, v34, v35, v36, v37, v38, v39;
      *(v28 + 4) = v32;
      *(v28 + 12) = 2080;
      v109[0] = swift_getObjectType();
      sub_1000F5104(&qword_1009506F8, &qword_1007B6758);
      v40 = String.init<A>(describing:)();
      v42 = v41;
      v43 = sub_10000668C(v40, v41, v110);
      v42, v44, v45, v46, v47, v48, v49, v50;
      *(v28 + 14) = v43;
      _os_log_impl(&_mh_execute_header, v26, v27, "Failed to decode the parameters of RDSwiftInvocable {error: %s, invocation: %s}", v28, 0x16u);
      swift_arrayDestroy();
    }

    swift_willThrow();
  }

  else
  {
    v103 = v17;
    v102 = v19;
    v51 = v99;
    (*(v99 + 32))(v100, v10, v22);
    type metadata accessor for RDXPCStorePerformer();
    throwingCast<A>(_:as:failureMessage:)();
    v53 = REMHashtagLabelDataView.HashtagIDsWithHashtagLabelNamesInvocation.Parameters.hashtagLabelNamesToSearch.getter();
    v110[0] = v53;
    sub_1000F5104(&unk_100945240, &qword_1007A0A70);
    sub_10000CB48(&qword_100941118, &unk_100945240, &qword_1007A0A70, &protocol conformance descriptor for Set<A>);
    v54 = Sequence.compactMapToSet<A>(_:)();
    v53, v55, v56, v57, v58, v59, v60, v61;
    v62 = sub_10042EC14(v54, 0, v98[0]);
    v54, v63, v64, v65, v66, v67, v68, v69;
    sub_1007094F0(v62);
    v71 = v70;
    v62, v72, v73, v74, v75, v76, v77, v78;
    v110[0] = v71;
    sub_1000F5104(&qword_10093F598, &qword_1007A2640);
    type metadata accessor for REMObjectID_Codable();
    sub_10000CB48(&qword_10094CBE0, &qword_10093F598, &qword_1007A2640, &protocol conformance descriptor for [A]);
    sub_10000F85C(&qword_100943E80, &type metadata accessor for REMObjectID_Codable, &protocol conformance descriptor for NSObject);
    v79 = Sequence.mapToSet<A>(_:)();
    v71, v80, v81, v82, v83, v84, v85, v86;
    v107 = v79;
    type metadata accessor for PropertyListEncoder();
    swift_allocObject();
    PropertyListEncoder.init()();
    sub_10003B2E4(&_swiftEmptyArrayStorage);
    swift_allocObject();
    v87 = v102;
    v88 = REMStoreObjectsContainer.init(store:storages:)();
    v89 = v103;
    static CodingUserInfoKey.remStoragesContainer.getter();
    v111 = v18;
    v110[0] = v88;

    v90 = dispatch thunk of PropertyListEncoder.userInfo.modify();
    sub_10000E350(v110, v89);
    v90(v109, 0);
    sub_1000F5104(&qword_100944F78, qword_1007AABF0);
    sub_1007151E8(&qword_100950700, &qword_100942170, &protocol conformance descriptor for REMObjectID_Codable, &protocol conformance descriptor for <> Set<A>);
    v26 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
    dispatch thunk of REMStoreObjectsContainer.storages.getter();
    v79, v91, v92, v93, v94, v95, v96, v97;

    (*(v51 + 8))(v100, v105);
  }

  return v26;
}

NSObject *sub_100710640(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, unint64_t a6, __n128 a7)
{
  v94 = a5;
  v86 = a2;
  v90 = a1;
  v89 = type metadata accessor for REMHashtagLabelDataView.Operation();
  v88 = *(v89 - 8);
  __chkstk_darwin(v89, v9);
  v11 = &v85 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = type metadata accessor for REMHashtagLabelDataView.ReminderIDsIncludeExcludeOperationInvocation.Parameters();
  v92 = *(v97 - 8);
  __chkstk_darwin(v97, v12);
  v14 = &v85 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15, v16);
  v91 = &v85 - v17;
  v18 = type metadata accessor for CodingUserInfoKey();
  __chkstk_darwin(v18 - 8, v19);
  v21 = &v85 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for PropertyListDecoder();
  swift_allocObject();
  v98 = PropertyListDecoder.init()();
  v87 = v11;
  if (!a6)
  {
    sub_10003B2E4(&_swiftEmptyArrayStorage);
  }

  v22 = type metadata accessor for REMStoreObjectsContainer();
  swift_allocObject();

  v23 = a3;
  v24 = REMStoreObjectsContainer.init(store:storages:)();
  static CodingUserInfoKey.remStoragesContainer.getter();
  v103 = v22;
  v102[0] = v24;
  v96 = v24;

  v25 = dispatch thunk of PropertyListDecoder.userInfo.modify();
  sub_10000E350(v102, v21);
  v25(v101, 0);
  sub_10000F85C(&qword_100950720, &type metadata accessor for REMHashtagLabelDataView.ReminderIDsIncludeExcludeOperationInvocation.Parameters, &protocol conformance descriptor for REMHashtagLabelDataView.ReminderIDsIncludeExcludeOperationInvocation.Parameters);
  v26 = v97;
  v27 = v95;
  dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
  if (v27)
  {
    if (qword_100936760 != -1)
    {
      swift_once();
    }

    v28 = type metadata accessor for Logger();
    sub_100006654(v28, qword_100950598);
    swift_errorRetain();
    v29 = v93;
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v102[0] = swift_slowAlloc();
      *v32 = 136315394;
      swift_getErrorValue();
      v33 = Error.rem_errorDescription.getter();
      v35 = v34;
      v36 = sub_10000668C(v33, v34, v102);
      v35, v37, v38, v39, v40, v41, v42, v43;
      *(v32 + 4) = v36;
      *(v32 + 12) = 2080;
      v101[0] = swift_getObjectType();
      sub_1000F5104(&qword_100950728, &unk_1007B6768);
      v44 = String.init<A>(describing:)();
      v46 = v45;
      v47 = sub_10000668C(v44, v45, v102);
      v46, v48, v49, v50, v51, v52, v53, v54;
      *(v32 + 14) = v47;
      _os_log_impl(&_mh_execute_header, v30, v31, "Failed to decode the parameters of RDSwiftInvocable {error: %s, invocation: %s}", v32, 0x16u);
      swift_arrayDestroy();
    }

    swift_willThrow();
  }

  else
  {
    (*(v92 + 32))(v91, v14, v26);
    type metadata accessor for RDXPCStorePerformer();
    throwingCast<A>(_:as:failureMessage:)();
    v56 = REMHashtagLabelDataView.ReminderIDsIncludeExcludeOperationInvocation.Parameters.include.getter();
    v57 = REMHashtagLabelDataView.ReminderIDsIncludeExcludeOperationInvocation.Parameters.exclude.getter();
    v58 = v87;
    REMHashtagLabelDataView.ReminderIDsIncludeExcludeOperationInvocation.Parameters.operation.getter();
    v60 = sub_100584A24(v56, v57, v58, v86, v59);
    (*(v88 + 8))(v58, v89);
    v56, v61, v62, v63, v64, v65, v66, v67;
    v57, v68, v69, v70, v71, v72, v73, v74;
    v99 = v60;
    type metadata accessor for PropertyListEncoder();
    swift_allocObject();
    PropertyListEncoder.init()();
    sub_10003B2E4(&_swiftEmptyArrayStorage);
    swift_allocObject();
    v75 = v23;
    v76 = REMStoreObjectsContainer.init(store:storages:)();
    static CodingUserInfoKey.remStoragesContainer.getter();
    v103 = v22;
    v102[0] = v76;

    v77 = dispatch thunk of PropertyListEncoder.userInfo.modify();
    sub_10000E350(v102, v21);
    v77(v101, 0);
    sub_1000F5104(&qword_100944F78, qword_1007AABF0);
    sub_1007151E8(&qword_100950700, &qword_100942170, &protocol conformance descriptor for REMObjectID_Codable, &protocol conformance descriptor for <> Set<A>);
    v30 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
    dispatch thunk of REMStoreObjectsContainer.storages.getter();
    v60, v78, v79, v80, v81, v82, v83, v84;

    (*(v92 + 8))(v91, v26);
  }

  return v30;
}

uint64_t sub_100711040(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, _TtC7remindd19RDXPCStorePerformer *a5, unint64_t a6)
{
  v118 = a5;
  v117 = a4;
  v113 = a1;
  v112 = type metadata accessor for REMHashtagLabelDataView.AllHashtagLabelsInvocation.SortingStyle();
  v111 = *(v112 - 8);
  __chkstk_darwin(v112, v10);
  v12 = v110 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1000F5104(&qword_100941B98, qword_1007ACBD0);
  __chkstk_darwin(v13 - 8, v14);
  v16 = v110 - v15;
  v121 = type metadata accessor for REMHashtagLabelDataView.AllHashtagLabelsInvocation.Parameters();
  v114 = *(v121 - 8);
  __chkstk_darwin(v121, v17);
  v19 = v110 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20, v21);
  v115 = v110 - v22;
  v23 = type metadata accessor for CodingUserInfoKey();
  __chkstk_darwin(v23 - 8, v24);
  v26 = v110 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for PropertyListDecoder();
  swift_allocObject();
  v122 = PropertyListDecoder.init()();
  v116 = v6;
  v110[1] = a2;
  v110[0] = v12;
  if (!a6)
  {
    sub_10003B2E4(&_swiftEmptyArrayStorage);
  }

  v27 = type metadata accessor for REMStoreObjectsContainer();
  swift_allocObject();

  v28 = a3;
  v29 = REMStoreObjectsContainer.init(store:storages:)();
  static CodingUserInfoKey.remStoragesContainer.getter();
  v127 = v27;
  v126[0] = v29;
  v120 = v29;

  v30 = dispatch thunk of PropertyListDecoder.userInfo.modify();
  sub_10000E350(v126, v26);
  v30(v125, 0);
  sub_10000F85C(&qword_100950758, &type metadata accessor for REMHashtagLabelDataView.AllHashtagLabelsInvocation.Parameters, &protocol conformance descriptor for REMHashtagLabelDataView.AllHashtagLabelsInvocation.Parameters);
  v31 = v121;
  v32 = v119;
  dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
  if (v32)
  {
    if (qword_100936760 != -1)
    {
      swift_once();
    }

    v33 = type metadata accessor for Logger();
    sub_100006654(v33, qword_100950598);
    swift_errorRetain();
    v34 = v116;
    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v126[0] = swift_slowAlloc();
      *v37 = 136315394;
      swift_getErrorValue();
      v38 = Error.rem_errorDescription.getter();
      v40 = v39;
      v41 = sub_10000668C(v38, v39, v126);
      v40, v42, v43, v44, v45, v46, v47, v48;
      *(v37 + 4) = v41;
      *(v37 + 12) = 2080;
      v125[0] = swift_getObjectType();
      sub_1000F5104(&qword_100950760, &qword_1007B6788);
      v49 = String.init<A>(describing:)();
      v51 = v50;
      v52 = sub_10000668C(v49, v50, v126);
      v51, v53, v54, v55, v56, v57, v58, v59;
      *(v37 + 14) = v52;
      _os_log_impl(&_mh_execute_header, v35, v36, "Failed to decode the parameters of RDSwiftInvocable {error: %s, invocation: %s}", v37, 0x16u);
      swift_arrayDestroy();
    }

    v60 = v120;
    swift_willThrow();

    return v60;
  }

  v119 = v28;
  v61 = v114;
  v62 = v115;
  (*(v114 + 32))(v115, v19, v31);
  type metadata accessor for RDXPCStorePerformer();
  throwingCast<A>(_:as:failureMessage:)();
  REMHashtagLabelDataView.AllHashtagLabelsInvocation.Parameters.sortingStyle.getter();
  v64 = v111;
  v65 = v112;
  if ((*(v111 + 48))(v16, 1, v112) == 1)
  {
    sub_1000050A4(v16, &qword_100941B98, qword_1007ACBD0);
    v66 = 0;
    v67 = v119;
LABEL_16:
    sub_1000131E0(0, 2, v66);
    v78 = *(v70 + 16);
    if (v78)
    {
      v126[0] = &_swiftEmptyArrayStorage;
      v79 = v70;
      specialized ContiguousArray.reserveCapacity(_:)();
      v80 = type metadata accessor for REMHashtagLabel_Codable();
      v118 = v79;
      v81 = &v79->clientIdentity[24];
      do
      {
        v82 = *v81;
        v83 = objc_allocWithZone(v80);

        v84 = String._bridgeToObjectiveC()();
        v82, v85, v86, v87, v88, v89, v90, v91;
        [v83 initWithName:v84];

        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        v81 += 2;
        --v78;
      }

      while (v78);
      v118, v92, v93, v94, v95, v96, v97, v98;
      v99 = v126[0];
      v61 = v114;
      v62 = v115;
      v67 = v119;
    }

    else
    {
      v70, v71, v72, v73, v74, v75, v76, v77;
      v99 = &_swiftEmptyArrayStorage;
    }

    v119 = v99;
    v123 = v99;
    type metadata accessor for PropertyListEncoder();
    swift_allocObject();
    PropertyListEncoder.init()();
    sub_10003B2E4(&_swiftEmptyArrayStorage);
    swift_allocObject();
    v100 = v67;
    v101 = REMStoreObjectsContainer.init(store:storages:)();
    static CodingUserInfoKey.remStoragesContainer.getter();
    v127 = v27;
    v126[0] = v101;

    v102 = dispatch thunk of PropertyListEncoder.userInfo.modify();
    sub_10000E350(v126, v26);
    v102(v125, 0);
    sub_1000F5104(&qword_100950768, &qword_1007B6790);
    sub_100715080();
    v60 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
    dispatch thunk of REMStoreObjectsContainer.storages.getter();
    v119, v103, v104, v105, v106, v107, v108, v109;

    (*(v61 + 8))(v62, v121);

    return v60;
  }

  v68 = v110[0];
  (*(v64 + 16))(v110[0], v16, v65);
  v69 = (*(v64 + 88))(v68, v65);
  v66 = v69 != enum case for REMHashtagLabelDataView.AllHashtagLabelsInvocation.SortingStyle.alphabetical(_:);
  v67 = v119;
  if (v69 == enum case for REMHashtagLabelDataView.AllHashtagLabelsInvocation.SortingStyle.alphabetical(_:) || v69 == enum case for REMHashtagLabelDataView.AllHashtagLabelsInvocation.SortingStyle.recencyDate(_:))
  {
    (*(v111 + 8))(v16, v112);
    v62 = v115;
    goto LABEL_16;
  }

  result = _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
  return result;
}

uint64_t sub_100711BDC(uint64_t a1, uint64_t a2, void *a3, _TtC7remindd19RDXPCStorePerformer *a4, unint64_t a5, unint64_t a6)
{
  v105 = a5;
  v104 = a4;
  v99 = a1;
  v96 = type metadata accessor for REMHashtagLabelDataView.AllHashtagLabelsInvocation.SortingStyle();
  v98 = *(v96 - 8);
  __chkstk_darwin(v96, v10);
  v12 = &v94 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1000F5104(&qword_100941B98, qword_1007ACBD0);
  __chkstk_darwin(v13 - 8, v14);
  v16 = &v94 - v15;
  v107 = type metadata accessor for REMHashtagLabelDataView.AllHashtagLabelsDetailedInvocation.Parameters();
  v100 = *(v107 - 8);
  __chkstk_darwin(v107, v17);
  v19 = &v94 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20, v21);
  v101 = &v94 - v22;
  v23 = type metadata accessor for CodingUserInfoKey();
  __chkstk_darwin(v23 - 8, v24);
  v26 = &v94 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for PropertyListDecoder();
  swift_allocObject();
  v108 = PropertyListDecoder.init()();
  v102 = v6;
  v97 = a2;
  v95 = v12;
  if (!a6)
  {
    sub_10003B2E4(&_swiftEmptyArrayStorage);
  }

  v27 = type metadata accessor for REMStoreObjectsContainer();
  swift_allocObject();

  v28 = a3;
  v29 = REMStoreObjectsContainer.init(store:storages:)();
  static CodingUserInfoKey.remStoragesContainer.getter();
  v112 = v27;
  v111[0] = v29;
  v103 = v29;

  v30 = dispatch thunk of PropertyListDecoder.userInfo.modify();
  sub_10000E350(v111, v26);
  v30(v110, 0);
  sub_10000F85C(&qword_100950730, &type metadata accessor for REMHashtagLabelDataView.AllHashtagLabelsDetailedInvocation.Parameters, &protocol conformance descriptor for REMHashtagLabelDataView.AllHashtagLabelsDetailedInvocation.Parameters);
  v31 = v106;
  v32 = v107;
  dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
  if (v31)
  {
    if (qword_100936760 == -1)
    {
LABEL_5:
      v33 = type metadata accessor for Logger();
      sub_100006654(v33, qword_100950598);
      swift_errorRetain();
      v34 = v102;
      v35 = Logger.logObject.getter();
      v36 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v35, v36))
      {
        v37 = swift_slowAlloc();
        v111[0] = swift_slowAlloc();
        *v37 = 136315394;
        swift_getErrorValue();
        v38 = Error.rem_errorDescription.getter();
        v40 = v39;
        v41 = sub_10000668C(v38, v39, v111);
        v40, v42, v43, v44, v45, v46, v47, v48;
        *(v37 + 4) = v41;
        *(v37 + 12) = 2080;
        v110[0] = swift_getObjectType();
        sub_1000F5104(&qword_100950738, &qword_1007B6778);
        v49 = String.init<A>(describing:)();
        v51 = v50;
        v52 = sub_10000668C(v49, v50, v111);
        v51, v53, v54, v55, v56, v57, v58, v59;
        *(v37 + 14) = v52;
        _os_log_impl(&_mh_execute_header, v35, v36, "Failed to decode the parameters of RDSwiftInvocable {error: %s, invocation: %s}", v37, 0x16u);
        swift_arrayDestroy();
      }

      v60 = v103;
      swift_willThrow();

      return v60;
    }

LABEL_30:
    swift_once();
    goto LABEL_5;
  }

  v106 = v28;
  v94 = v26;
  (*(v100 + 32))(v101, v19, v32);
  type metadata accessor for RDXPCStorePerformer();
  throwingCast<A>(_:as:failureMessage:)();
  REMHashtagLabelDataView.AllHashtagLabelsDetailedInvocation.Parameters.sortingStyle.getter();
  v62 = v98;
  v63 = v96;
  if ((*(v98 + 48))(v16, 1, v96) == 1)
  {
    sub_1000050A4(v16, &qword_100941B98, qword_1007ACBD0);
    v64 = 0;
    goto LABEL_15;
  }

  (*(v62 + 16))(v95, v16, v63);
  v65 = (*(v62 + 88))(v95, v63);
  v64 = v65 != enum case for REMHashtagLabelDataView.AllHashtagLabelsInvocation.SortingStyle.alphabetical(_:);
  if (v65 == enum case for REMHashtagLabelDataView.AllHashtagLabelsInvocation.SortingStyle.alphabetical(_:) || v65 == enum case for REMHashtagLabelDataView.AllHashtagLabelsInvocation.SortingStyle.recencyDate(_:))
  {
    (*(v98 + 8))(v16, v63);
LABEL_15:
    v66 = sub_10042F0DC(v64);
    v74 = v66;
    v111[0] = &_swiftEmptyArrayStorage;
    if (v66 >> 62)
    {
      v75 = _CocoaArrayWrapper.endIndex.getter();
      v76 = v106;
      if (v75)
      {
LABEL_17:
        v77 = 0;
        v105 = v74 & 0xC000000000000001;
        v104 = &_swiftEmptyArrayStorage;
        while (1)
        {
          if (v105)
          {
            v79 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v77 >= *((v74 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_29;
            }

            v79 = *(v74 + 8 * v77 + 32);
          }

          v80 = v79;
          v81 = v77 + 1;
          if (__OFADD__(v77, 1))
          {
            break;
          }

          v110[0] = v79;
          sub_100582A84(v110, v109);

          if (v109[0])
          {
            specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
            if (*((v111[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v111[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              v104 = *((v111[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
              specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            }

            specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            v104 = v111[0];
          }

          ++v77;
          v78 = v81 == v75;
          v76 = v106;
          if (v78)
          {
            goto LABEL_33;
          }
        }

        __break(1u);
LABEL_29:
        __break(1u);
        goto LABEL_30;
      }
    }

    else
    {
      v75 = *((v66 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v76 = v106;
      if (v75)
      {
        goto LABEL_17;
      }
    }

    v104 = &_swiftEmptyArrayStorage;
LABEL_33:
    v74, v67, v68, v69, v70, v71, v72, v73;
    v82 = v104;
    v109[1] = v104;
    type metadata accessor for PropertyListEncoder();
    swift_allocObject();
    PropertyListEncoder.init()();
    sub_10003B2E4(&_swiftEmptyArrayStorage);
    swift_allocObject();
    v83 = v76;
    v84 = REMStoreObjectsContainer.init(store:storages:)();
    v85 = v94;
    static CodingUserInfoKey.remStoragesContainer.getter();
    v112 = v27;
    v111[0] = v84;

    v86 = dispatch thunk of PropertyListEncoder.userInfo.modify();
    sub_10000E350(v111, v85);
    v86(v110, 0);
    sub_1000F5104(&qword_100950740, &qword_1007B6780);
    sub_100714FCC();
    v60 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
    dispatch thunk of REMStoreObjectsContainer.storages.getter();
    v82, v87, v88, v89, v90, v91, v92, v93;

    (*(v100 + 8))(v101, v107);

    return v60;
  }

  result = _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
  return result;
}

uint64_t sub_10071281C(void *a1, void *a2, void *a3, uint64_t a4, void *a5, unint64_t a6)
{
  v98 = a5;
  v93 = a2;
  v94 = a1;
  v8 = sub_1000F5104(&qword_100938A70, &qword_1007ACC60);
  __chkstk_darwin(v8 - 8, v9);
  v84 = &v80 - v10;
  v11 = type metadata accessor for REMRemindersListDataView.SectionsModel();
  __chkstk_darwin(v11 - 8, v12);
  v83 = &v80 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = type metadata accessor for REMRemindersListDataView.ListSectionsModel();
  __chkstk_darwin(v88, v14);
  v85 = &v80 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = type metadata accessor for REMRemindersListDataView.Diff();
  v86 = *(v87 - 8);
  __chkstk_darwin(v87, v16);
  v82 = &v80 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18, v19);
  v92 = &v80 - v20;
  v90 = sub_1000F5104(&qword_100950618, &qword_1007B66F0);
  v89 = *(v90 - 8);
  __chkstk_darwin(v90, v21);
  v91 = &v80 - v22;
  v101 = type metadata accessor for REMRemindersListDataView.PublicTemplateInvocation.Parameters();
  v96 = *(v101 - 8);
  __chkstk_darwin(v101, v23);
  v25 = &v80 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26, v27);
  v95 = &v80 - v28;
  v29 = type metadata accessor for CodingUserInfoKey();
  __chkstk_darwin(v29 - 8, v30);
  v32 = &v80 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for PropertyListDecoder();
  swift_allocObject();
  v102 = PropertyListDecoder.init()();
  if (!a6)
  {
    sub_10003B2E4(&_swiftEmptyArrayStorage);
  }

  v33 = type metadata accessor for REMStoreObjectsContainer();
  swift_allocObject();

  v34 = a3;
  v35 = REMStoreObjectsContainer.init(store:storages:)();
  static CodingUserInfoKey.remStoragesContainer.getter();
  v106 = v33;
  v105 = v35;
  v100 = v35;

  v36 = dispatch thunk of PropertyListDecoder.userInfo.modify();
  sub_10000E350(&v105, v32);
  v36(v104, 0);
  sub_10000F85C(&qword_100950620, &type metadata accessor for REMRemindersListDataView.PublicTemplateInvocation.Parameters, &protocol conformance descriptor for REMRemindersListDataView.PublicTemplateInvocation.Parameters);
  v37 = v101;
  v38 = v99;
  dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
  if (v38)
  {
    if (qword_100936760 != -1)
    {
      swift_once();
    }

    v39 = type metadata accessor for Logger();
    sub_100006654(v39, qword_100950598);
    swift_errorRetain();
    v40 = v97;
    v41 = Logger.logObject.getter();
    v42 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      v105 = swift_slowAlloc();
      *v43 = 136315394;
      swift_getErrorValue();
      v44 = Error.rem_errorDescription.getter();
      v46 = v45;
      v47 = sub_10000668C(v44, v45, &v105);
      v46, v48, v49, v50, v51, v52, v53, v54;
      *(v43 + 4) = v47;
      *(v43 + 12) = 2080;
      v104[0] = swift_getObjectType();
      sub_1000F5104(&qword_100950628, &qword_1007B66F8);
      v55 = String.init<A>(describing:)();
      v57 = v56;
      v58 = sub_10000668C(v55, v56, &v105);
      v57, v59, v60, v61, v62, v63, v64, v65;
      *(v43 + 14) = v58;
      _os_log_impl(&_mh_execute_header, v41, v42, "Failed to decode the parameters of RDSwiftInvocable {error: %s, invocation: %s}", v43, 0x16u);
      swift_arrayDestroy();
    }

    swift_willThrow();
  }

  else
  {
    v99 = v34;
    (*(v96 + 32))(v95, v25, v37);
    type metadata accessor for RDXPCStorePerformer();
    throwingCast<A>(_:as:failureMessage:)();
    v67 = REMRemindersListDataView.PublicTemplateInvocation.Parameters.publicTemplateObjectID.getter();
    v98 = sub_1006DF640(v67, v93, v99);
    v94 = v67;
    if (&_swiftEmptyArrayStorage >> 62)
    {
      if (_CocoaArrayWrapper.endIndex.getter())
      {
        sub_1003915C4(&_swiftEmptyArrayStorage);
        v93 = v78;
      }

      else
      {
        v93 = _swiftEmptySetSingleton;
      }

      if (_CocoaArrayWrapper.endIndex.getter())
      {
        sub_1003915C4(&_swiftEmptyArrayStorage);
        v81 = v79;
      }

      else
      {
        v81 = _swiftEmptySetSingleton;
      }

      if (_CocoaArrayWrapper.endIndex.getter())
      {
        sub_1003915C4(&_swiftEmptyArrayStorage);
      }

      if (_CocoaArrayWrapper.endIndex.getter())
      {
        sub_1003915C4(&_swiftEmptyArrayStorage);
      }
    }

    v68 = v92;
    REMRemindersListDataView.Diff.init(updatedReminderObjectIDs:insertedReminderObjectIDs:updatedListObjectIDs:updatedSectionObjectIDs:newReminderMembershipsViaAutomation:)();
    v69 = type metadata accessor for REMRemindersListDataView.CountByCompleted();
    (*(*(v69 - 8) + 56))(v84, 1, 1, v69);
    REMRemindersListDataView.SectionsModel.init(sections:remindersCount:hasIncompleteOrCompletedReminders:prefetchedReminders:prefetchedDueReminders:)();
    REMList.codable.getter();
    REMRemindersListDataView.ListSectionsModel.init(sectionsModel:list:)();
    v70 = v86;
    v71 = v87;
    (*(v86 + 16))(v82, v68, v87);
    sub_10000F85C(&qword_10094DB28, &type metadata accessor for REMRemindersListDataView.ListSectionsModel, &protocol conformance descriptor for REMRemindersListDataView.ListSectionsModel);
    sub_10000F85C(&qword_10094DB30, &type metadata accessor for REMRemindersListDataView.ListSectionsModel, &protocol conformance descriptor for REMRemindersListDataView.ListSectionsModel);
    v72 = v91;
    REMRemindersListDataView.DefaultInvocationResult.init(model:diff:)();

    (*(v70 + 8))(v92, v71);
    type metadata accessor for PropertyListEncoder();
    swift_allocObject();
    PropertyListEncoder.init()();
    sub_10003B2E4(&_swiftEmptyArrayStorage);
    swift_allocObject();
    v73 = v99;
    v74 = REMStoreObjectsContainer.init(store:storages:)();
    static CodingUserInfoKey.remStoragesContainer.getter();
    v106 = v33;
    v105 = v74;

    v75 = dispatch thunk of PropertyListEncoder.userInfo.modify();
    sub_10000E350(&v105, v32);
    v75(v104, 0);
    v76 = v72;
    sub_10000CB48(&qword_100950630, &qword_100950618, &qword_1007B66F0, &protocol conformance descriptor for REMRemindersListDataView.DefaultInvocationResult<A>);
    v77 = v90;
    v42 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
    dispatch thunk of REMStoreObjectsContainer.storages.getter();

    (*(v89 + 8))(v76, v77);
    (*(v96 + 8))(v95, v101);
  }

  return v42;
}

NSObject *sub_1007135F8(uint64_t a1, _TtC7remindd19RDXPCStorePerformer *a2, void *a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  v89 = a5;
  v88 = a4;
  v80 = a2;
  v85 = a1;
  v8 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  __chkstk_darwin(v8 - 8, v9);
  v82 = &v77 - v10;
  v84 = type metadata accessor for REMRemindersListBatchDeleteInvocation.ListType();
  v83 = *(v84 - 8);
  __chkstk_darwin(v84, v11);
  v13 = &v77 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = type metadata accessor for REMRemindersListBatchDeleteInvocation.DeleteInvocation.Result();
  v77 = *(v78 - 8);
  __chkstk_darwin(v78, v14);
  v79 = &v77 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = type metadata accessor for REMRemindersListBatchDeleteInvocation.DeleteInvocation.Parameters();
  v86 = *(v92 - 8);
  __chkstk_darwin(v92, v16);
  v18 = &v77 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19, v20);
  v22 = &v77 - v21;
  v23 = type metadata accessor for CodingUserInfoKey();
  __chkstk_darwin(v23 - 8, v24);
  v26 = &v77 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for PropertyListDecoder();
  swift_allocObject();
  v93 = PropertyListDecoder.init()();
  v81 = v13;
  if (!a6)
  {
    sub_10003B2E4(&_swiftEmptyArrayStorage);
  }

  v27 = type metadata accessor for REMStoreObjectsContainer();
  swift_allocObject();

  v28 = a3;
  v29 = REMStoreObjectsContainer.init(store:storages:)();
  static CodingUserInfoKey.remStoragesContainer.getter();
  v97 = v27;
  v96[0] = v29;
  v91 = v29;

  v30 = dispatch thunk of PropertyListDecoder.userInfo.modify();
  sub_10000E350(v96, v26);
  v30(v95, 0);
  sub_10000F85C(&qword_100950670, &type metadata accessor for REMRemindersListBatchDeleteInvocation.DeleteInvocation.Parameters, &protocol conformance descriptor for REMRemindersListBatchDeleteInvocation.DeleteInvocation.Parameters);
  v31 = v92;
  v32 = v90;
  dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
  if (v32)
  {
    if (qword_100936760 != -1)
    {
      swift_once();
    }

    v33 = type metadata accessor for Logger();
    sub_100006654(v33, qword_100950598);
    swift_errorRetain();
    v34 = v87;
    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v96[0] = swift_slowAlloc();
      *v37 = 136315394;
      swift_getErrorValue();
      v38 = Error.rem_errorDescription.getter();
      v40 = v39;
      v41 = sub_10000668C(v38, v39, v96);
      v40, v42, v43, v44, v45, v46, v47, v48;
      *(v37 + 4) = v41;
      *(v37 + 12) = 2080;
      v95[0] = swift_getObjectType();
      sub_1000F5104(&qword_100950688, &qword_1007B6728);
      v49 = String.init<A>(describing:)();
      v51 = v50;
      v52 = sub_10000668C(v49, v50, v96);
      v51, v53, v54, v55, v56, v57, v58, v59;
      *(v37 + 14) = v52;
      _os_log_impl(&_mh_execute_header, v35, v36, "Failed to decode the parameters of RDSwiftInvocable {error: %s, invocation: %s}", v37, 0x16u);
      swift_arrayDestroy();
    }

    swift_willThrow();
  }

  else
  {
    v60 = v22;
    (*(v86 + 32))(v22, v18, v31);
    type metadata accessor for RDXPCStorePerformer();
    throwingCast<A>(_:as:failureMessage:)();
    v62 = v81;
    REMRemindersListBatchDeleteInvocation.DeleteInvocation.Parameters.list.getter();
    v63 = v82;
    REMRemindersListBatchDeleteInvocation.DeleteInvocation.Parameters.completedBeforeDate.getter();
    v64 = sub_1005BEC40(v80, v63);
    sub_1000050A4(v63, &unk_100938850, qword_100795AE0);
    (*(v83 + 8))(v62, v84);
    sub_1005C2B64(v64, v28);
    v90 = v60;
    v64, v65, v66, v67, v68, v69, v70, v71;
    REMRemindersListBatchDeleteInvocation.DeleteInvocation.Result.init(deletedReminderIDs:accounts:)();
    type metadata accessor for PropertyListEncoder();
    swift_allocObject();
    PropertyListEncoder.init()();
    sub_10003B2E4(&_swiftEmptyArrayStorage);
    swift_allocObject();
    v72 = v28;
    v73 = REMStoreObjectsContainer.init(store:storages:)();
    static CodingUserInfoKey.remStoragesContainer.getter();
    v97 = v27;
    v96[0] = v73;

    v74 = dispatch thunk of PropertyListEncoder.userInfo.modify();
    v75 = v79;
    sub_10000E350(v96, v26);
    v74(v95, 0);
    sub_10000F85C(&qword_100950680, &type metadata accessor for REMRemindersListBatchDeleteInvocation.DeleteInvocation.Result, &protocol conformance descriptor for REMRemindersListBatchDeleteInvocation.DeleteInvocation.Result);
    v76 = v78;
    v35 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
    dispatch thunk of REMStoreObjectsContainer.storages.getter();

    (*(v77 + 8))(v75, v76);
    (*(v86 + 8))(v90, v31);
  }

  return v35;
}

_TtC7remindd19RDXPCStorePerformer *sub_100714148(uint64_t a1, _TtC7remindd19RDXPCStorePerformer *a2, void *a3, uint64_t a4, void *a5, unint64_t a6)
{
  v185 = a5;
  v180 = a1;
  v9 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  __chkstk_darwin(v9 - 8, v10);
  v176 = &v172 - v11;
  v178 = type metadata accessor for REMRemindersListBatchDeleteInvocation.ListType();
  v177 = *&v178[-1].shareRecordIDToRootRecordIDLock[2];
  __chkstk_darwin(v178, v12);
  v14 = &v172 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v174 = type metadata accessor for REMRemindersListBatchDeleteInvocation.DeleteInvocation.Result();
  v172 = *(v174 - 8);
  __chkstk_darwin(v174, v15);
  v173 = &v172 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v187 = type metadata accessor for REMRemindersListBatchDeleteInvocation.DeleteInvocation.Parameters();
  v181 = *(v187 - 8);
  __chkstk_darwin(v187, v17);
  v19 = &v172 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20, v21);
  v182 = &v172 - v22;
  v23 = type metadata accessor for CodingUserInfoKey();
  __chkstk_darwin(v23 - 8, v24);
  v26 = &v172 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for PropertyListDecoder();
  swift_allocObject();
  v188 = PropertyListDecoder.init()();
  v179 = a2;
  v175 = v14;
  if (!a6)
  {
    sub_10003B2E4(&_swiftEmptyArrayStorage);
  }

  v27 = type metadata accessor for REMStoreObjectsContainer();
  swift_allocObject();

  v28 = a3;
  v29 = REMStoreObjectsContainer.init(store:storages:)();
  static CodingUserInfoKey.remStoragesContainer.getter();
  v192 = v27;
  v191 = v29;
  v184 = v29;

  v30 = dispatch thunk of PropertyListDecoder.userInfo.modify();
  sub_10000E350(&v191, v26);
  v30(v190, 0);
  sub_10000F85C(&qword_100950670, &type metadata accessor for REMRemindersListBatchDeleteInvocation.DeleteInvocation.Parameters, &protocol conformance descriptor for REMRemindersListBatchDeleteInvocation.DeleteInvocation.Parameters);
  v31 = v187;
  v32 = v186;
  dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
  if (!v32)
  {
    v185 = v28;
    (*(v181 + 32))(v182, v19, v31);
    type metadata accessor for RDXPCStorePerformer();
    throwingCast<A>(_:as:failureMessage:)();
    v61 = v175;
    REMRemindersListBatchDeleteInvocation.DeleteInvocation.Parameters.list.getter();
    v62 = v176;
    REMRemindersListBatchDeleteInvocation.DeleteInvocation.Parameters.completedBeforeDate.getter();
    v63 = sub_1005BEC40(v179, v62);
    sub_1000050A4(v62, &unk_100938850, qword_100795AE0);
    (*(v177 + 8))(v61, v178);
    sub_1005C2B64(v63, v185);
    v66 = v64;
    v178 = v65;
    type metadata accessor for ReminderIDsMergeableOrderingHelper();
    inited = swift_initStackObject();
    *(inited + 16) = _swiftEmptyDictionarySingleton;
    *(inited + 24) = &_swiftEmptyArrayStorage;
    v180 = inited;
    sub_1005C3014(v63, v66, inited, v68);
    v186 = [objc_allocWithZone(NSMutableDictionary) init];
    v177 = v66;
    if (v63 >> 62)
    {
      v76 = _CocoaArrayWrapper.endIndex.getter();
      if (!v76)
      {
        goto LABEL_20;
      }
    }

    else
    {
      v76 = *((v63 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v76)
      {
        goto LABEL_20;
      }
    }

    if (v76 < 1)
    {
      __break(1u);
      swift_once();
      v115 = type metadata accessor for Logger();
      sub_100006654(v115, qword_100950598);
      v116 = v183;
      swift_errorRetain();
      v117 = Logger.logObject.getter();
      v118 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v117, v118))
      {
        v119 = swift_slowAlloc();
        v191 = swift_slowAlloc();
        *v119 = 136315394;
        swift_getErrorValue();
        v120 = Error.rem_errorDescription.getter();
        v122 = v121;
        v123 = sub_10000668C(v120, v121, &v191);
        v122, v124, v125, v126, v127, v128, v129, v130;
        *(v119 + 4) = v123;
        v26 = v173;
        *(v119 + 12) = 2080;
        v190[0] = swift_getObjectType();
        sub_1000F5104(&qword_100950678, &qword_1007B6720);
        v131 = String.init<A>(describing:)();
        v133 = v132;
        v134 = sub_10000668C(v131, v132, &v191);
        v133, v135, v136, v137, v138, v139, v140, v141;
        *(v119 + 14) = v134;
        _os_log_impl(&_mh_execute_header, v117, v118, "Failed to encode the result of RDSwiftInvocable {error: %s, invocation: %s}", v119, 0x16u);
        swift_arrayDestroy();
        v91 = v182;

        v61 = v174;

        v35 = v186;
      }

      else
      {

        v35 = v186;
        v91 = v182;
      }

      swift_willThrow();

      (*(v172 + 8))(v26, v61);
      goto LABEL_27;
    }

    for (i = 0; i != v76; ++i)
    {
      if ((v63 & 0xC000000000000001) != 0)
      {
        v78 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v78 = *(v63 + 8 * i + 32);
      }

      v79 = v78;
      [v78 updateDeletedFlagAccordingToOrphanState:v186];
    }

LABEL_20:
    v63, v69, v70, v71, v72, v73, v74, v75;
    v80 = v177;
    sub_100393DD8(v177);
    v82 = v81;
    sub_1005BF7F8(v81);
    v82, v83, v84, v85, v86, v87, v88, v89;
    sub_1005BFAC0();
    v191 = 0;
    v90 = [(RDXPCStorePerformer *)v179 save:&v191];
    v91 = v182;
    if (v90)
    {
      v92 = v191;
      v93 = v173;
      REMRemindersListBatchDeleteInvocation.DeleteInvocation.Result.init(deletedReminderIDs:accounts:)();

      v94 = v180;
      swift_setDeallocating();
      *(v94 + 16), v95, v96, v97, v98, v99, v100, v101;
      *(v94 + 24), v102, v103, v104, v105, v106, v107, v108;
      type metadata accessor for PropertyListEncoder();
      swift_allocObject();
      PropertyListEncoder.init()();
      sub_10003B2E4(&_swiftEmptyArrayStorage);
      swift_allocObject();
      v109 = v185;
      v110 = REMStoreObjectsContainer.init(store:storages:)();
      static CodingUserInfoKey.remStoragesContainer.getter();
      v192 = v27;
      v191 = v110;

      v111 = dispatch thunk of PropertyListEncoder.userInfo.modify();
      v112 = v26;
      v113 = v93;
      sub_10000E350(&v191, v112);
      v111(v190, 0);
      sub_10000F85C(&qword_100950680, &type metadata accessor for REMRemindersListBatchDeleteInvocation.DeleteInvocation.Result, &protocol conformance descriptor for REMRemindersListBatchDeleteInvocation.DeleteInvocation.Result);
      v114 = v174;
      v35 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
      dispatch thunk of REMStoreObjectsContainer.storages.getter();

      (*(v172 + 8))(v113, v114);
      (*(v181 + 8))(v182, v187);

      return v35;
    }

    v142 = v191;
    v178, v143, v144, v145, v146, v147, v148, v149;
    v80, v150, v151, v152, v153, v154, v155, v156;
    _convertNSErrorToError(_:)();

    swift_willThrow();

    v157 = v180;
    swift_setDeallocating();
    *(v157 + 16), v158, v159, v160, v161, v162, v163, v164;
    v35 = *(v157 + 24);

    v35, v165, v166, v167, v168, v169, v170, v171;
LABEL_27:
    (*(v181 + 8))(v91, v187);

    return v35;
  }

  if (qword_100936760 != -1)
  {
    swift_once();
  }

  v33 = type metadata accessor for Logger();
  sub_100006654(v33, qword_100950598);
  swift_errorRetain();
  v34 = v183;
  v35 = Logger.logObject.getter();
  v36 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(&v35->super, v36))
  {
    v37 = swift_slowAlloc();
    v191 = swift_slowAlloc();
    *v37 = 136315394;
    swift_getErrorValue();
    v38 = Error.rem_errorDescription.getter();
    v40 = v39;
    v41 = sub_10000668C(v38, v39, &v191);
    v40, v42, v43, v44, v45, v46, v47, v48;
    *(v37 + 4) = v41;
    *(v37 + 12) = 2080;
    v190[0] = swift_getObjectType();
    sub_1000F5104(&qword_100950678, &qword_1007B6720);
    v49 = String.init<A>(describing:)();
    v51 = v50;
    v52 = sub_10000668C(v49, v50, &v191);
    v51, v53, v54, v55, v56, v57, v58, v59;
    *(v37 + 14) = v52;
    _os_log_impl(&_mh_execute_header, &v35->super, v36, "Failed to decode the parameters of RDSwiftInvocable {error: %s, invocation: %s}", v37, 0x16u);
    swift_arrayDestroy();
  }

  swift_willThrow();

  return v35;
}

unint64_t sub_100714FCC()
{
  result = qword_100950748;
  if (!qword_100950748)
  {
    sub_1000F514C(&qword_100950740, &qword_1007B6780);
    sub_10000F85C(&qword_100950750, &type metadata accessor for REMHashtagLabelDetailed_Codable, &protocol conformance descriptor for REMHashtagLabelDetailed_Codable);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100950748);
  }

  return result;
}

unint64_t sub_100715080()
{
  result = qword_100950770;
  if (!qword_100950770)
  {
    sub_1000F514C(&qword_100950768, &qword_1007B6790);
    sub_10000F85C(&qword_100950778, &type metadata accessor for REMHashtagLabel_Codable, &protocol conformance descriptor for REMHashtagLabel_Codable);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100950770);
  }

  return result;
}

unint64_t sub_100715134()
{
  result = qword_100950958;
  if (!qword_100950958)
  {
    sub_1000F514C(&qword_100950950, &qword_1007B6878);
    sub_10000F85C(&qword_100950960, &type metadata accessor for REMReminder_Codable, &protocol conformance descriptor for REMReminder_Codable);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100950958);
  }

  return result;
}

uint64_t sub_1007151E8(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1000F514C(&qword_100944F78, qword_1007AABF0);
    sub_10000F85C(a2, &type metadata accessor for REMObjectID_Codable, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100715284()
{
  result = qword_100950A70;
  if (!qword_100950A70)
  {
    sub_1000F514C(&qword_10093F480, qword_10079DF40);
    sub_10000F85C(&qword_100942170, &type metadata accessor for REMObjectID_Codable, &protocol conformance descriptor for REMObjectID_Codable);
    sub_10000F85C(&qword_100948C20, &type metadata accessor for REMList_Codable, &protocol conformance descriptor for REMList_Codable);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100950A70);
  }

  return result;
}

uint64_t sub_100715370(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1007153DC(uint64_t a1, void **a2, uint64_t a3, uint64_t a4, SEL *a5)
{
  v8 = sub_1000F5104(&unk_100939D90, "8\n\r");
  __chkstk_darwin(v8 - 8, v9);
  v11 = &v16 - v10;
  sub_100010364(a1, &v16 - v10, &unk_100939D90, "8\n\r");
  v12 = *a2;
  v13 = type metadata accessor for UUID();
  v14 = *(v13 - 8);
  isa = 0;
  if ((*(v14 + 48))(v11, 1, v13) != 1)
  {
    isa = UUID._bridgeToObjectiveC()().super.isa;
    (*(v14 + 8))(v11, v13);
  }

  [v12 *a5];
}

uint64_t sub_100715518()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_100950B28);
  v1 = sub_100006654(v0, qword_100950B28);
  if (qword_1009364D8 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_1009751D0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void sub_1007155E0(uint64_t a1, void **a2)
{
  v4 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  __chkstk_darwin(v4 - 8, v5);
  v7 = &v12 - v6;
  sub_100010364(a1, &v12 - v6, &unk_100938850, qword_100795AE0);
  v8 = *a2;
  v9 = type metadata accessor for Date();
  v10 = *(v9 - 8);
  isa = 0;
  if ((*(v10 + 48))(v7, 1, v9) != 1)
  {
    isa = Date._bridgeToObjectiveC()().super.isa;
    (*(v10 + 8))(v7, v9);
  }

  [v8 setPinnedDate:isa];
}

uint64_t sub_10071571C()
{
  sub_1000F5104(&unk_100939D60, &unk_1007959E0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_100799D70;
  *(v0 + 32) = swift_getKeyPath();
  *(v0 + 40) = swift_getKeyPath();
  result = swift_getKeyPath();
  *(v0 + 48) = result;
  qword_1009752D8 = v0;
  return result;
}

uint64_t sub_1007157A0()
{
  sub_1000F5104(&unk_100939D60, &unk_1007959E0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1007953F0;
  sub_1000060C8(0, &qword_10093C980, NSSortDescriptor_ptr);
  swift_getKeyPath();
  result = NSSortDescriptor.init<A, B>(keyPath:ascending:)();
  *(v0 + 32) = result;
  qword_1009752E0 = v0;
  return result;
}

void sub_100715828(NSObject *a1, id *a2)
{
  v110 = a1;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4, v6);
  v8 = &v107 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000F5104(&unk_100939D90, "8\n\r");
  __chkstk_darwin(v9 - 8, v10);
  v12 = &v107 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v15 = __chkstk_darwin(v13, v14).n128_u64[0];
  v17 = &v107 - v16;
  v18 = *a2;
  v19 = [*a2 smartListType];
  if (!v19)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v32 = v25;
    goto LABEL_10;
  }

  v109 = v5;
  v111 = v2;
  v20 = v19;
  v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v23 = v22;

  v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v32 = v25;
  if (!v23)
  {
LABEL_10:
    v32, v25, v26, v27, v28, v29, v30, v31;
    return;
  }

  if (v21 == v24 && v23 == v25)
  {
    v23, v25, v24, v27, v28, v29, v30, v31;
    v32, v49, v50, v51, v52, v53, v54, v55;
  }

  else
  {
    v34 = _stringCompareWithSmolCheck(_:_:expecting:)();
    v23, v35, v36, v37, v38, v39, v40, v41;
    v32, v42, v43, v44, v45, v46, v47, v48;
    if ((v34 & 1) == 0)
    {
      return;
    }
  }

  v56 = [v18 remObjectID];
  if (v56)
  {
    v57 = v56;
    v58 = [v18 parentList];
    if (!v58)
    {
LABEL_38:

      return;
    }

    v59 = v58;
    if ([v58 isDeleted])
    {
      if (qword_100936768 != -1)
      {
        swift_once();
      }

      v60 = type metadata accessor for Logger();
      sub_100006654(v60, qword_100950B28);
      v61 = v18;
      v62 = Logger.logObject.getter();
      v63 = static os_log_type_t.fault.getter();

      if (os_log_type_enabled(v62, v63))
      {
        v110 = v62;
        v64 = swift_slowAlloc();
        v107 = swift_slowAlloc();
        v113 = v107;
        v108 = v64;
        *v64 = 136446210;
        v65 = [v61 identifier];
        if (v65)
        {
          v66 = v65;
          static UUID._unconditionallyBridgeFromObjectiveC(_:)();

          v67 = v109;
          (*(v109 + 56))(v12, 0, 1, v4);
        }

        else
        {
          v67 = v109;
          (*(v109 + 56))(v12, 1, 1, v4);
        }

        LODWORD(v109) = v63;
        sub_100100FB4(v12, v17);
        if ((*(v67 + 48))(v17, 1, v4))
        {
          sub_1000050A4(v17, &unk_100939D90, "8\n\r");
          v92 = 0xE300000000000000;
          v93 = 7104878;
        }

        else
        {
          (*(v67 + 16))(v8, v17, v4);
          sub_1000050A4(v17, &unk_100939D90, "8\n\r");
          v94 = UUID.uuidString.getter();
          v92 = v95;
          (*(v67 + 8))(v8, v4);
          v93 = v94;
        }

        v96 = sub_10000668C(v93, v92, &v113);
        v92, v97, v98, v99, v100, v101, v102, v103;
        v104 = v108;
        *(v108 + 1) = v96;
        v62 = v110;
        _os_log_impl(&_mh_execute_header, v110, v109, "REMSmartCDList's parentList is unexpectedly deleted {identifier: %{public}s}", v104, 0xCu);
        sub_10000607C(v107);
      }

      goto LABEL_38;
    }

    v68 = v111;
    v69 = sub_100027664(v59);
    if (!v68)
    {
      v86 = v110;
      isa = v110->isa;
      if ((v110->isa & 0xC000000000000001) != 0)
      {
        if (isa < 0)
        {
          v88 = v110->isa;
        }

        else
        {
          v88 = isa & 0xFFFFFFFFFFFFFF8;
        }

        v89 = v69;
        v90 = v69;
        v91 = __CocoaDictionary.count.getter();
        if (__OFADD__(v91, 1))
        {
          __break(1u);
          return;
        }

        v86->isa = sub_10021E744(v88, v91 + 1);
      }

      else
      {
        v89 = v69;
        v105 = v69;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v113 = v86->isa;
      sub_1002CA950(v89, v57, isUniquelyReferenced_nonNull_native);

      v86->isa = v113;
      return;
    }

    if (qword_100936768 != -1)
    {
      swift_once();
    }

    v70 = type metadata accessor for Logger();
    sub_100006654(v70, qword_100950B28);
    swift_errorRetain();
    v71 = Logger.logObject.getter();
    v72 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v71, v72))
    {
      v73 = swift_slowAlloc();
      v74 = swift_slowAlloc();
      v113 = v74;
      *v73 = 136315138;
      v112 = v68;
      swift_errorRetain();
      sub_1000F5104(&unk_1009399E0, &qword_100795D00);
      v75 = String.init<A>(describing:)();
      v77 = v76;
      v78 = sub_10000668C(v75, v76, &v113);
      v77, v79, v80, v81, v82, v83, v84, v85;
      *(v73 + 4) = v78;
      _os_log_impl(&_mh_execute_header, v71, v72, "Error ingesting cdSmartList.parentList into list storage {error: %s}", v73, 0xCu);
      sub_10000607C(v74);
    }

    else
    {
    }
  }
}

void *sub_100715EFC(void *a1, void *a2)
{
  v4 = sub_1000F5104(&qword_100938C48, &qword_1007957D0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4, v6);
  v8 = &v28 - v7;
  v9 = sub_1000F5104(&qword_10093E088, &qword_10079BC18);
  __chkstk_darwin(v9 - 8, v10);
  v12 = &v28 - v11;
  v13 = a1;
  REMSmartList.NonCustom.init(smartListType:)();
  v14 = type metadata accessor for REMSmartList.NonCustom();
  v15 = *(v14 - 8);
  if ((*(v15 + 48))(v12, 1, v14) == 1)
  {
    sub_1000050A4(v12, &qword_10093E088, &qword_10079BC18);
    return 0;
  }

  else
  {
    v17 = REMSmartList.NonCustom.remObjectID.getter();
    (*(v15 + 8))(v12, v14);
    v18 = type metadata accessor for RDPredefinedObjectKey();
    v19 = objc_allocWithZone(v18);
    *&v19[OBJC_IVAR____TtC7remindd21RDPredefinedObjectKey_accountID] = a2;
    *&v19[OBJC_IVAR____TtC7remindd21RDPredefinedObjectKey_objectID] = v17;
    v29.receiver = v19;
    v29.super_class = v18;
    v20 = v17;
    v21 = a2;
    v22 = objc_msgSendSuper2(&v29, "init");
    v23 = swift_allocObject();
    *(v23 + 16) = 0;
    (*(v5 + 104))(v8, enum case for REMCache.ExecutionMode.synchronously<A, B>(_:), v4);
    v24 = swift_allocObject();
    *(v24 + 16) = v23;
    *(v24 + 24) = v22;

    v25 = v22;
    dispatch thunk of REMCache.performReadOnly(_:operations:)();

    (*(v5 + 8))(v8, v4);
    swift_beginAccess();
    v16 = *(v23 + 16);
    v26 = v16;
  }

  return v16;
}

_TtC7remindd19RDXPCStorePerformer *sub_10071620C(void *a1, void *a2, uint64_t a3)
{
  v4 = v3;
  v148 = a2;
  v7 = sub_1000F5104(&qword_100938C48, &qword_1007957D0);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7, v9);
  v11 = &v136 - v10;
  v12 = _s10PredicatesOMa_3(0);
  __chkstk_darwin(v12, v13);
  v15 = &v136 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((REMSmartListType.hasPredefinedObjectID.getter() & 1) == 0)
  {
    goto LABEL_13;
  }

  v144 = v15;
  v145 = a3;
  v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v18 = v17;
  v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v27 = v20;
  if (v16 == v19 && v18 == v20)
  {
    v18, v20, v21, v22, v23, v24, v25, v26;
    v27, v53, v54, v55, v56, v57, v58, v59;
    goto LABEL_13;
  }

  v29 = _stringCompareWithSmolCheck(_:_:expecting:)();
  v18, v30, v31, v32, v33, v34, v35, v36;
  v27, v37, v38, v39, v40, v41, v42, v43;
  if (v29)
  {
LABEL_13:
    if (qword_100936768 != -1)
    {
LABEL_56:
      swift_once();
    }

    v60 = type metadata accessor for Logger();
    sub_100006654(v60, qword_100950B28);
    v61 = a1;
    v62 = Logger.logObject.getter();
    v63 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v62, v63))
    {
      v64 = swift_slowAlloc();
      v65 = swift_slowAlloc();
      v152[0] = v65;
      *v64 = 136446210;
      v66 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v68 = v67;
      v69 = sub_10000668C(v66, v67, v152);
      v68, v70, v71, v72, v73, v74, v75, v76;
      *(v64 + 4) = v69;
      _os_log_impl(&_mh_execute_header, v62, v63, "Unexpected smart list type to fetch by predefined objectIDs {smartListType: %{public}s}", v64, 0xCu);
      sub_10000607C(v65);
    }

    v77 = objc_opt_self();
    v78 = String._bridgeToObjectiveC()();
    [v77 internalErrorWithDebugDescription:v78];

    swift_willThrow();
    return v8;
  }

  v44 = sub_10003A1B8();
  if (!v44)
  {
    return &_swiftEmptyArrayStorage;
  }

  v45 = v44;
  v142 = v11;
  v46 = sub_100715EFC(a1, v44);
  if (v46)
  {
    v47 = v46;
    v152[0] = 0;
    v48 = [v148 existingObjectWithID:v46 error:v152];
    if (v48)
    {
      v49 = v48;
      v147 = v152[0];
      objc_opt_self();
      v50 = swift_dynamicCastObjCClass();
      if (v50)
      {
        v51 = v50;
        sub_1000F5104(&unk_100939D60, &unk_1007959E0);
        v8 = swift_allocObject();
        *(v8 + 16) = xmmword_1007953F0;
        *(v8 + 32) = v51;
        v52 = v147;

        return v8;
      }

      v81 = v147;
    }

    else
    {
      v80 = v152[0];
      _convertNSErrorToError(_:)();

      swift_willThrow();

      v4 = 0;
    }
  }

  v82 = v144;
  *v144 = a1;
  v82[1] = v45;
  swift_storeEnumTagMultiPayload();
  v83 = a1;
  v139 = v45;
  v84 = [v148 persistentStoreOfAccountWithAccountID:?];
  if (v84)
  {
    v85 = v84;
    sub_1000F5104(&unk_100939D60, &unk_1007959E0);
    v86 = swift_allocObject();
    *(v86 + 16) = xmmword_1007953F0;
    *(v86 + 32) = v85;
  }

  else
  {
    v86 = 0;
  }

  v87 = sub_10002DDAC();
  v88 = sub_1000060C8(0, &unk_10093F770, off_1008D41E8);
  v89 = [objc_allocWithZone(NSFetchRequest) init];
  v140 = v88;
  v90 = [swift_getObjCClassFromMetadata() entity];
  [v89 setEntity:v90];

  if (v86)
  {
    sub_1000060C8(0, &qword_10093F430, NSPersistentStore_ptr);
    v91.super.isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v91.super.isa = 0;
  }

  [v89 setAffectedStores:v91.super.isa];

  [v89 setPredicate:v87];
  v86, v92, v93, v94, v95, v96, v97, v98;
  if (qword_100936770 != -1)
  {
LABEL_58:
    swift_once();
  }

  v99 = qword_1009752D8;
  v141 = v89;
  if (qword_1009752D8 >> 62)
  {
    v133 = qword_1009752D8;
    v134 = _CocoaArrayWrapper.endIndex.getter();
    v99 = v133;
    v89 = v134;
  }

  else
  {
    v89 = *((qword_1009752D8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v100 = &_swiftEmptyArrayStorage;
  v136 = v8;
  v137 = v7;
  if (!v89)
  {
LABEL_43:
    isa = Array._bridgeToObjectiveC()().super.isa;
    v100, v110, v111, v112, v113, v114, v115, v116;
    v100 = v141;
    [(RDXPCStorePerformer *)v141 setRelationshipKeyPathsForPrefetching:isa];

    if (qword_100936778 != -1)
    {
      swift_once();
    }

    sub_1000060C8(0, &qword_10093C980, NSSortDescriptor_ptr);
    v117 = Array._bridgeToObjectiveC()().super.isa;
    [(RDXPCStorePerformer *)v100 setSortDescriptors:v117];

    v118 = NSManagedObjectContext.fetch<A>(_:)();
    v7 = v142;
    if (v4)
    {
      sub_10003AF64(v144);

      return v8;
    }

    v8 = v118;
    if (!(v118 >> 62))
    {
      if (*((v118 & 0xFFFFFFFFFFFFFF8) + 0x10) == 1)
      {
LABEL_49:
        if ((v8 & 0xC000000000000001) != 0)
        {
          v119 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (!*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
          }

          v119 = *(v8 + 32);
        }

        v120 = v119;
        v121 = [v119 remObjectID];
        if (v121)
        {
          v122 = v121;
          v123 = [v120 objectID];
          v124 = type metadata accessor for RDPredefinedObjectKey();
          v125 = objc_allocWithZone(v124);
          v126 = v139;
          *&v125[OBJC_IVAR____TtC7remindd21RDPredefinedObjectKey_accountID] = v139;
          *&v125[OBJC_IVAR____TtC7remindd21RDPredefinedObjectKey_objectID] = v122;
          v149.receiver = v125;
          v149.super_class = v124;
          v147 = v126;
          v148 = v122;
          v127 = objc_msgSendSuper2(&v149, "init");
          v128 = v136;
          v129 = v7;
          (*(v136 + 104))(v7, enum case for REMCache.ExecutionMode.asynchronously<A, B>(_:), v137);
          v130 = swift_allocObject();
          *(v130 + 16) = v123;
          *(v130 + 24) = v127;
          v131 = v123;
          v132 = v127;
          dispatch thunk of REMCache.performReadAndWrite(_:operations:)();

          (*(v128 + 8))(v129, v137);
          sub_10003AF64(v144);
          return v8;
        }

        sub_10003AF64(v144);

LABEL_65:
        return v8;
      }

LABEL_64:
      sub_10003AF64(v144);

      goto LABEL_65;
    }

LABEL_61:
    if (_CocoaArrayWrapper.endIndex.getter() == 1)
    {
      if (!_CocoaArrayWrapper.endIndex.getter())
      {
        sub_10003AF64(v144);

        return v8;
      }

      goto LABEL_49;
    }

    goto LABEL_64;
  }

  v101 = v99;
  v138 = v4;
  v151 = &_swiftEmptyArrayStorage;
  sub_100026EF4(0, v89 & ~(v89 >> 63), 0);
  if (v89 < 0)
  {
    __break(1u);
    goto LABEL_61;
  }

  v8 = 0;
  v100 = v151;
  v102 = v101;
  v146 = v101;
  v147 = (v101 & 0xC000000000000001);
  v143 = v101 & 0xFFFFFFFFFFFFFF8;
  v4 = v89;
  while (1)
  {
    a1 = (v8 + 1);
    if (__OFADD__(v8, 1))
    {
      __break(1u);
      goto LABEL_56;
    }

    if (v147)
    {
      v103 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v8 >= *(v143 + 16))
      {
        __break(1u);
        goto LABEL_58;
      }

      v103 = *(v102 + 8 * v8 + 32);
    }

    v104 = dispatch thunk of AnyKeyPath._kvcKeyPathString.getter();
    if (!v105)
    {
      break;
    }

    v89 = v104;
    v7 = v105;

    v151 = v100;
    v107 = *v100->clientIdentity;
    v106 = *&v100->clientIdentity[8];
    if (v107 >= v106 >> 1)
    {
      sub_100026EF4((v106 > 1), v107 + 1, 1);
      v100 = v151;
    }

    *v100->clientIdentity = v107 + 1;
    v108 = v100 + 16 * v107;
    *(v108 + 4) = v89;
    *(v108 + 5) = v7;
    ++v8;
    v102 = v146;
    if (a1 == v4)
    {
      v4 = v138;
      goto LABEL_43;
    }
  }

  v152[0] = 0;
  v152[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(46);
  v135._object = 0x80000001007EC120;
  v135._countAndFlagsBits = 0xD00000000000002CLL;
  String.append(_:)(v135);
  v150 = v103;
  sub_1000F5104(&qword_100946530, &qword_10079B260);
  _print_unlocked<A, B>(_:_:)();
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

NSString sub_100716D1C(void *a1, void *a2)
{
  v5 = _s10PredicatesOMa_3(0);
  __chkstk_darwin(v5, v6);
  v8 = (&v90 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (REMSmartListType.hasPredefinedObjectID.getter())
  {
    if (qword_100936768 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    sub_100006654(v9, qword_100950B28);
    v10 = a1;
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v96 = v14;
      *v13 = 136446210;
      v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v17 = v16;
      v18 = sub_10000668C(v15, v16, &v96);
      v17, v19, v20, v21, v22, v23, v24, v25;
      *(v13 + 4) = v18;
      _os_log_impl(&_mh_execute_header, v11, v12, "Smart list type with predefined objectIDs should not be fetched by cdSmartListsHavingCustomObjectID() {smartListType: %{public}s}", v13, 0xCu);
      sub_10000607C(v14);
    }

    v26 = objc_opt_self();
    v27 = String._bridgeToObjectiveC()();
    [v26 internalErrorWithDebugDescription:v27];

    swift_willThrow();
  }

  else
  {
    v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v30 = v29;
    v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v39 = v32;
    v40 = v28 == v31 && v30 == v32;
    v95 = v2;
    if (v40)
    {
      v30, v32, v33, v34, v35, v36, v37, v38;
      v39, v77, v78, v79, v80, v81, v82, v83;
    }

    else
    {
      v41 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v30, v42, v43, v44, v45, v46, v47, v48;
      v39, v49, v50, v51, v52, v53, v54, v55;
      if ((v41 & 1) == 0)
      {
        if (qword_100936768 != -1)
        {
          swift_once();
        }

        v56 = type metadata accessor for Logger();
        sub_100006654(v56, qword_100950B28);
        v57 = a1;
        v58 = a2;
        v59 = Logger.logObject.getter();
        v60 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v59, v60))
        {
          v61 = swift_slowAlloc();
          v93 = swift_slowAlloc();
          v94 = swift_slowAlloc();
          v96 = v94;
          *v61 = 136446466;
          v62 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v92 = v60;
          v64 = v63;
          v65 = sub_10000668C(v62, v63, &v96);
          v91 = v59;
          v66 = v65;
          v64, v67, v68, v69, v70, v71, v72, v73;
          *(v61 + 4) = v66;
          *(v61 + 12) = 2114;
          *(v61 + 14) = v58;
          v74 = v93;
          *v93 = v58;
          v75 = v58;
          v76 = v91;
          _os_log_impl(&_mh_execute_header, v91, v92, "BOGUS! Practically cdSmartListsHavingCustomObjectID(...) is meant to be used for fetching CSLs only {smartListType: %{public}s, objectID: %{public}@}", v61, 0x16u);
          sub_1000050A4(v74, &unk_100938E70, &unk_100797230);

          sub_10000607C(v94);
        }

        else
        {
        }
      }
    }

    *v8 = a1;
    v8[1] = a2;
    swift_storeEnumTagMultiPayload();
    v84 = a1;
    v85 = a2;
    v86 = sub_10002DDAC();
    sub_1000060C8(0, &unk_10093F770, off_1008D41E8);
    v87 = [objc_allocWithZone(NSFetchRequest) init];
    v88 = [swift_getObjCClassFromMetadata() entity];
    [v87 setEntity:v88];

    [v87 setAffectedStores:0];
    [v87 setPredicate:v86];

    v27 = NSManagedObjectContext.fetch<A>(_:)();
    sub_10003AF64(v8);
  }

  return v27;
}

NSString sub_100717244(NSString a1, void *a2, void *a3, uint64_t a4, __n128 a5)
{
  if (REMSmartListType.hasPredefinedObjectID.getter())
  {
    v10 = sub_10071620C(a1, a3, a4);
    if (!v5)
    {
      v18 = v10;
      goto LABEL_6;
    }
  }

  else
  {
    if (!a2)
    {
      if (qword_100936768 == -1)
      {
LABEL_19:
        v77 = type metadata accessor for Logger();
        sub_100006654(v77, qword_100950B28);
        v78 = a1;
        v79 = Logger.logObject.getter();
        v80 = static os_log_type_t.fault.getter();

        if (os_log_type_enabled(v79, v80))
        {
          v81 = swift_slowAlloc();
          v82 = swift_slowAlloc();
          v98 = v82;
          *v81 = 136446210;
          v83 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v85 = v84;
          v86 = sub_10000668C(v83, v84, &v98);
          v85, v87, v88, v89, v90, v91, v92, v93;
          *(v81 + 4) = v86;
          _os_log_impl(&_mh_execute_header, v79, v80, "Unexpected usage of cdSmartList(smartListType:objectID:in:...) - you must either fetch smart list of a type which hasPredefinedObjectID, or specify an objectID to match {smartListType: %{public}s}", v81, 0xCu);
          sub_10000607C(v82);
        }

        v94 = objc_opt_self();
        a1 = String._bridgeToObjectiveC()();
        [v94 invalidParameterErrorWithDescription:a1];

LABEL_22:
        swift_willThrow();
        return a1;
      }

LABEL_32:
      swift_once();
      goto LABEL_19;
    }

    v19 = a2;
    v18 = sub_100716D1C(a1, v19);

    if (!v5)
    {
LABEL_6:
      if (v18 >> 62)
      {
        if (_CocoaArrayWrapper.endIndex.getter())
        {
          if (_CocoaArrayWrapper.endIndex.getter() >= 2)
          {
            goto LABEL_9;
          }

          goto LABEL_14;
        }
      }

      else
      {
        v20 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v20)
        {
          if (v20 >= 2)
          {
LABEL_9:
            if (qword_100936768 != -1)
            {
              swift_once();
            }

            v21 = type metadata accessor for Logger();
            v22 = sub_100006654(v21, qword_100950B28);
            v23 = a2;
            v24 = a1;

            a1 = v22;
            v25 = Logger.logObject.getter();
            v26 = static os_log_type_t.error.getter();
            v18, v27, v28, v29, v30, v31, v32, v33;

            if (os_log_type_enabled(v25, v26))
            {
              v34 = swift_slowAlloc();
              v97 = swift_slowAlloc();
              v98 = v97;
              *v34 = 136315650;
              type metadata accessor for REMSmartListType(0);
              v35 = v24;
              v36 = String.init<A>(describing:)();
              v38 = v37;
              v39 = sub_10000668C(v36, v37, &v98);
              v38, v40, v41, v42, v43, v44, v45, v46;
              *(v34 + 4) = v39;
              *(v34 + 12) = 2080;
              sub_1000F5104(&unk_10093AF40, &unk_100795790);
              v47 = Optional.descriptionOrNil.getter();
              v49 = v48;
              v50 = sub_10000668C(v47, v48, &v98);
              v49, v51, v52, v53, v54, v55, v56, v57;
              *(v34 + 14) = v50;
              *(v34 + 22) = 2080;
              sub_10013A058();
              v58 = BinaryInteger.description.getter();
              v60 = v59;
              v61 = sub_10000668C(v58, v59, &v98);
              v60, v62, v63, v64, v65, v66, v67, v68;
              *(v34 + 24) = v61;
              _os_log_impl(&_mh_execute_header, v25, v26, "fetching smart list returned more than one result {type: %s objectID: %s, count: %s}", v34, 0x20u);
              a1 = v97;
              swift_arrayDestroy();
            }
          }

LABEL_14:
          if ((v18 & 0xC000000000000001) != 0)
          {
            v69 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            goto LABEL_17;
          }

          if (*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            v69 = *(v18 + 32);
LABEL_17:
            a1 = v69;
            v18, v70, v71, v72, v73, v74, v75, v76;
            return a1;
          }

          __break(1u);
          goto LABEL_32;
        }
      }

      v18, v11, v12, v13, v14, v15, v16, v17;
      if (a2)
      {
        v95 = objc_opt_self();
        a1 = a2;
        [v95 noSuchObjectErrorWithObjectID:a1];
        swift_willThrow();

        return a1;
      }

      [objc_opt_self() noSuchSmartListErrorWithSmartListType:a1];
      goto LABEL_22;
    }
  }

  return a1;
}

void sub_100717764(unint64_t a1)
{
  v16.isa = _swiftEmptyDictionarySingleton;
  if (a1 >> 62)
  {
LABEL_14:
    v3 = _CocoaArrayWrapper.endIndex.getter();
    if (!v3)
    {
      return;
    }
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v3)
    {
      return;
    }
  }

  for (i = 0; ; ++i)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_13;
      }

      v5 = *(a1 + 8 * i + 32);
    }

    v6 = v5;
    v7 = i + 1;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    v15 = v5;
    sub_100715828(&v16, &v15);
    if (v1)
    {
      break;
    }

    if (v7 == v3)
    {
      return;
    }
  }

  v16.isa, v8, v9, v10, v11, v12, v13, v14;
  __break(1u);
}

void *sub_100717888(uint64_t a1, uint64_t a2)
{
  sub_1000F5104(&qword_100943D68, &qword_1007A4530);
  result = static _DictionaryStorage.copy(original:)();
  v4 = result;
  v5 = 0;
  v25 = a1;
  v8 = *(a1 + 64);
  v7 = a1 + 64;
  v6 = v8;
  v9 = 1 << *(v7 - 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & v6;
  v12 = (v9 + 63) >> 6;
  v24 = result + 8;
  if ((v10 & v6) != 0)
  {
    while (1)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_10:
      v16 = v13 | (v5 << 6);
      v17 = *(*(v25 + 48) + 8 * v16);
      v18 = *(*(v25 + 56) + 8 * v16);
      v19 = objc_allocWithZone(REMAccount);
      v20 = v17;
      result = [v19 initWithStore:a2 storage:v18];
      *(v24 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(v4[6] + 8 * v16) = v20;
      *(v4[7] + 8 * v16) = result;
      v21 = v4[2];
      v22 = __OFADD__(v21, 1);
      v23 = v21 + 1;
      if (v22)
      {
        break;
      }

      v4[2] = v23;
      if (!v11)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v14 = v5;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v5 >= v12)
      {
        return v4;
      }

      v15 = *(v7 + 8 * v5);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v11 = (v15 - 1) & v15;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

Swift::Int sub_100717A18(uint64_t a1, uint64_t a2)
{
  if (__CocoaDictionary.count.getter())
  {
    sub_1000F5104(&qword_100943D68, &qword_1007A4530);
    v3 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v3 = _swiftEmptyDictionarySingleton;
  }

  v21 = v3;
  __CocoaDictionary.makeIterator()();
  swift_unknownObjectRetain();
  v4 = __CocoaDictionary.Iterator.next()();
  if (v4)
  {
    v5 = v4;
    sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
    v6 = v5;
    do
    {
      v19 = v6;
      swift_dynamicCast();
      sub_1000060C8(0, &unk_10093F580, REMAccountStorage_ptr);
      swift_dynamicCast();
      v13 = [objc_allocWithZone(REMAccount) initWithStore:a2 storage:v19];

      v14 = v3[2];
      if (v3[3] <= v14)
      {
        sub_10036A1FC(v14 + 1, 1);
      }

      v3 = v21;
      result = NSObject._rawHashValue(seed:)(v21[5]);
      v8 = v21 + 8;
      v9 = -1 << *(v21 + 32);
      v10 = result & ~v9;
      v11 = v10 >> 6;
      if (((-1 << v10) & ~v21[(v10 >> 6) + 8]) != 0)
      {
        v12 = __clz(__rbit64((-1 << v10) & ~v21[(v10 >> 6) + 8])) | v10 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v15 = 0;
        v16 = (63 - v9) >> 6;
        do
        {
          if (++v11 == v16 && (v15 & 1) != 0)
          {
            __break(1u);
            return result;
          }

          v17 = v11 == v16;
          if (v11 == v16)
          {
            v11 = 0;
          }

          v15 |= v17;
          v18 = v8[v11];
        }

        while (v18 == -1);
        v12 = __clz(__rbit64(~v18)) + (v11 << 6);
      }

      *(v8 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(v21[6] + 8 * v12) = v20;
      *(v21[7] + 8 * v12) = v13;
      ++v21[2];
      v6 = __CocoaDictionary.Iterator.next()();
    }

    while (v6);
  }

  return v3;
}

uint64_t sub_100717C9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = sub_10002DDAC();
  sub_1000060C8(0, &unk_10093F770, off_1008D41E8);
  v8 = [objc_allocWithZone(NSFetchRequest) init];
  v9 = [swift_getObjCClassFromMetadata() entity];
  [v8 setEntity:v9];

  if (a3)
  {
    sub_1000060C8(0, &qword_10093F430, NSPersistentStore_ptr);
    v10.super.isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v10.super.isa = 0;
  }

  [v8 setAffectedStores:v10.super.isa];

  [v8 setPredicate:v7];
  if (qword_100936770 != -1)
  {
    goto LABEL_28;
  }

  while (1)
  {
    v11 = qword_1009752D8;
    if (qword_1009752D8 >> 62)
    {
      v43 = qword_1009752D8;
      v44 = _CocoaArrayWrapper.endIndex.getter();
      v11 = v43;
      v12 = v44;
    }

    else
    {
      v12 = *((qword_1009752D8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (!v12)
    {
LABEL_21:
      isa = Array._bridgeToObjectiveC()().super.isa;
      &_swiftEmptyArrayStorage, v24, v25, v26, v27, v28, v29, v30;
      [v8 setRelationshipKeyPathsForPrefetching:isa];

      if (qword_100936778 != -1)
      {
        swift_once();
      }

      sub_1000060C8(0, &qword_10093C980, NSSortDescriptor_ptr);
      v31 = Array._bridgeToObjectiveC()().super.isa;
      [v8 setSortDescriptors:v31];

      v32 = a2;
      v33 = NSManagedObjectContext.fetch<A>(_:)();
      if (!v4)
      {
        v34 = v33;
        sub_1000F5104(&qword_1009405B0, &unk_1007B4EC0);
        sub_100718124();
        v32 = Sequence.elements<A>(ofType:)();
        v34, v35, v36, v37, v38, v39, v40, v41;
      }

      return v32;
    }

    v13 = v11;
    sub_100026EF4(0, v12 & ~(v12 >> 63), 0);
    if (v12 < 0)
    {
      break;
    }

    v46 = a2;
    v47 = v4;
    v48 = v8;
    v14 = 0;
    v50 = v13 & 0xC000000000000001;
    v49 = v13 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      v8 = v12;
      v15 = (v14 + 1);
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v50)
      {
        specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v14 >= *(v49 + 16))
        {
          goto LABEL_27;
        }
      }

      v16 = dispatch thunk of AnyKeyPath._kvcKeyPathString.getter();
      if (!v17)
      {
        goto LABEL_31;
      }

      a2 = v16;
      v18 = v17;

      v20 = *_swiftEmptyArrayStorage.clientIdentity;
      v19 = *&_swiftEmptyArrayStorage.clientIdentity[8];
      v4 = v20 + 1;
      if (v20 >= v19 >> 1)
      {
        sub_100026EF4((v19 > 1), v20 + 1, 1);
      }

      *_swiftEmptyArrayStorage.clientIdentity = v4;
      v21 = &_swiftEmptyArrayStorage + 16 * v20;
      *(v21 + 4) = a2;
      *(v21 + 5) = v18;
      ++v14;
      v22 = v15 == v8;
      v12 = v8;
      if (v22)
      {
        v8 = v48;
        a2 = v46;
        v4 = v47;
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    swift_once();
  }

  __break(1u);
LABEL_31:
  _StringGuts.grow(_:)(46);
  v45._object = 0x80000001007EC120;
  v45._countAndFlagsBits = 0xD00000000000002CLL;
  String.append(_:)(v45);
  sub_1000F5104(&qword_100946530, &qword_10079B260);
  _print_unlocked<A, B>(_:_:)();
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

unint64_t sub_100718124()
{
  result = qword_1009405B8;
  if (!qword_1009405B8)
  {
    sub_1000F514C(&qword_1009405B0, &unk_1007B4EC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009405B8);
  }

  return result;
}

char *sub_100718188(char *a1, _BYTE *a2, uint64_t a3)
{
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v12 = *a2;
    *a1 = *a2;
    a1 = (v12 + ((v5 + 16) & ~v5));

    return a1;
  }

  v6 = *(a3 - 8);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 3)
  {
    if (EnumCaseMultiPayload > 5)
    {
      if (EnumCaseMultiPayload == 6)
      {
        v17 = type metadata accessor for UUID();
        (*(*(v17 - 8) + 16))(a1, a2, v17);
        goto LABEL_18;
      }

      if (EnumCaseMultiPayload != 7)
      {
        goto LABEL_20;
      }
    }

    else if (EnumCaseMultiPayload == 4)
    {
      v15 = *a2;
      *a1 = *a2;
      a1[8] = a2[8];
      v16 = v15;
      goto LABEL_18;
    }

LABEL_14:
    v13 = *a2;
    *a1 = *a2;
    v14 = v13;
    goto LABEL_18;
  }

  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      *a1 = *a2;

      goto LABEL_18;
    }

    goto LABEL_14;
  }

  if (EnumCaseMultiPayload <= 1)
  {
    v8 = *a2;
    v9 = *(a2 + 1);
    *a1 = v8;
    *(a1 + 1) = v9;
    v10 = v8;
    v11 = v9;
LABEL_18:
    swift_storeEnumTagMultiPayload();
    return a1;
  }

LABEL_20:
  v19 = *(v6 + 64);

  return memcpy(a1, a2, v19);
}

_BYTE *sub_1007183B8(_BYTE *a1, _BYTE *a2, uint64_t a3)
{
  if (a1 == a2)
  {
    return a1;
  }

  sub_10003AF64(a1);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 3)
  {
    if (EnumCaseMultiPayload > 5)
    {
      if (EnumCaseMultiPayload == 6)
      {
        v15 = type metadata accessor for UUID();
        (*(*(v15 - 8) + 16))(a1, a2, v15);
        goto LABEL_17;
      }

      if (EnumCaseMultiPayload != 7)
      {
        goto LABEL_19;
      }
    }

    else if (EnumCaseMultiPayload == 4)
    {
      v13 = *a2;
      *a1 = *a2;
      a1[8] = a2[8];
      v14 = v13;
      goto LABEL_17;
    }

LABEL_13:
    v11 = *a2;
    *a1 = *a2;
    v12 = v11;
    goto LABEL_17;
  }

  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      *a1 = *a2;

      goto LABEL_17;
    }

    goto LABEL_13;
  }

  if (EnumCaseMultiPayload <= 1)
  {
    v7 = *a2;
    *a1 = *a2;
    v8 = *(a2 + 1);
    *(a1 + 1) = v8;
    v9 = v7;
    v10 = v8;
LABEL_17:
    swift_storeEnumTagMultiPayload();
    return a1;
  }

LABEL_19:
  v17 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v17);
}

void *sub_1007185C8(void *a1, const void *a2, uint64_t a3)
{
  if (swift_getEnumCaseMultiPayload() == 6)
  {
    v6 = type metadata accessor for UUID();
    (*(*(v6 - 8) + 32))(a1, a2, v6);
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  else
  {
    v8 = *(*(a3 - 8) + 64);

    return memcpy(a1, a2, v8);
  }
}

void *sub_100718698(void *a1, const void *a2, uint64_t a3)
{
  if (a1 == a2)
  {
    return a1;
  }

  sub_10003AF64(a1);
  if (swift_getEnumCaseMultiPayload() == 6)
  {
    v6 = type metadata accessor for UUID();
    (*(*(v6 - 8) + 32))(a1, a2, v6);
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  v8 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v8);
}

uint64_t sub_100718778(uint64_t a1)
{
  result = type metadata accessor for UUID();
  if (v2 <= 0x3F)
  {
    swift_initEnumMetadataMultiPayload();
    return 0;
  }

  return result;
}

uint64_t sub_100718834(uint64_t a1)
{
  v3 = [v1 secondaryGroceryLocalesInfoAsData];
  if (!v3)
  {
LABEL_9:

    goto LABEL_10;
  }

  v4 = v3;
  v5 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  type metadata accessor for RDSecondaryGroceryLocalesInfo(0);
  sub_10072509C(&unk_100950C60, type metadata accessor for RDSecondaryGroceryLocalesInfo, &unk_1007B16F8);
  static REMJSONRepresentable.fromJSONData(_:)();
  if (v2)
  {
    sub_10001BBA0(v5, v7);
    if (qword_100935B98 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_100006654(v8, qword_10093C470);
    swift_errorRetain();
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      *v11 = 136446466;
      sub_1000060C8(0, &qword_1009399F0, off_1008D4120);
      sub_1000F5104(&qword_100946A28, &qword_1007A9338);
      v12 = String.init<A>(describing:)();
      v14 = v13;
      v15 = sub_10000668C(v12, v13, &v36);
      v14, v16, v17, v18, v19, v20, v21, v22;
      *(v11 + 4) = v15;
      *(v11 + 12) = 2082;
      swift_getErrorValue();
      v23 = Error.rem_errorDescription.getter();
      v25 = v24;
      v26 = sub_10000668C(v23, v24, &v36);
      v25, v27, v28, v29, v30, v31, v32, v33;
      *(v11 + 14) = v26;
      _os_log_impl(&_mh_execute_header, v9, v10, "%{public}s#mergeSecondaryGroceryLocalesInfo(_:): Failed to deserialize 'secondaryGroceryLocalesInfoAsData' due to unexpected error. It will be overwritten. { error: %{public}s}", v11, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
    }

    goto LABEL_9;
  }

  sub_10001BBA0(v5, v7);

  static Date.> infix(_:_:)();

LABEL_10:

  sub_100566694(v34);
}

void sub_100718B64()
{
  v1 = [v0 smartLists];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 count];

    if (v3 >= 1)
    {
      v4 = sub_10071B498();
      if (v4)
      {
        v10 = v4;
        v5 = [v0 lists];
        v6 = sub_100722B48(v10);
        v7 = v6;
        if (v5)
        {
          if (v6)
          {
            v8 = sub_100724C50();
            sub_100723984(v5, v8, v10);
          }

          v9 = v10;
        }

        else
        {

          v9 = v7;
        }
      }
    }
  }
}

void sub_100718C70(void *a1, void *a2, void *a3, void *a4)
{
  v87 = a4;
  v93 = a3;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 1);
  __chkstk_darwin(v6, v8);
  v94 = &v83 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1000F5104(&unk_100939D90, "8\n\r");
  __chkstk_darwin(v10 - 8, v11);
  v13 = &v83 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14, v15);
  v95 = &v83 - v16;
  v17 = type metadata accessor for NSFastEnumerationIterator();
  v85 = *(v17 - 8);
  *&v19 = __chkstk_darwin(v17, v18).n128_u64[0];
  v96 = &v83 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = [a1 count];
  v22 = [a2 count];
  v23 = [objc_allocWithZone(NSMutableOrderedSet) initWithOrderedSet:a1];
  isa = [a2 array];
  if (!isa)
  {
    v25 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    isa = Array._bridgeToObjectiveC()().super.isa;
    v25, v26, v27, v28, v29, v30, v31, v32;
  }

  [v23 addObjectsFromArray:isa];

  if (v21 && v22)
  {
    v33 = swift_allocObject();
    *(v33 + 16) = _swiftEmptyDictionarySingleton;
    v34 = (v33 + 16);
    v102 = sub_1002FF4BC;
    v103 = v33;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    v100 = sub_1002FFDC4;
    v101 = &unk_1008FD290;
    v35 = _Block_copy(&aBlock);

    [v93 enumerateObjectsUsingBlock:v35];
    _Block_release(v35);
    swift_beginAccess();
    v36 = *v34;

    sub_1000FEA70(v23, v36, 0);

    v36, v37, v38, v39, v40, v41, v42, v43;
  }

  v44 = v96;
  v84 = v23;
  NSOrderedSet.makeIterator()();
  sub_10072509C(&qword_10093F7A0, &type metadata accessor for NSFastEnumerationIterator, &protocol conformance descriptor for NSFastEnumerationIterator);
  dispatch thunk of IteratorProtocol.next()();
  if (v101)
  {
    v45 = (v7 + 56);
    v46 = v7;
    v47 = (v7 + 48);
    v90 = (v46 + 16);
    v48 = &_swiftEmptyArrayStorage;
    v89 = (v46 + 8);
    v93 = v6;
    v92 = v13;
    v91 = v17;
    do
    {
      sub_100005EE0(&aBlock, v98);
      sub_100005EF0(v98, v97);
      sub_1000060C8(0, &qword_100939D80, off_1008D41B8);
      if (swift_dynamicCast())
      {
        v49 = v104;
        v50 = [v104 identifier];
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

        (*v45)(v13, v52, 1, v6);
        v53 = v95;
        sub_100100FB4(v13, v95);
        if ((*v47)(v53, 1, v6))
        {
          sub_10000607C(v98);

          sub_1000050A4(v53, &unk_100939D90, "8\n\r");
        }

        else
        {
          v54 = v53;
          v55 = v94;
          (*v90)(v94, v54, v6);
          sub_1000050A4(v54, &unk_100939D90, "8\n\r");
          v56 = UUID.uuidString.getter();
          v58 = v57;

          (*v89)(v55, v6);
          sub_10000607C(v98);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v48 = sub_100365788(0, *v48->clientIdentity + 1, 1, v48, v59, v60, v61, v62);
          }

          v64 = *v48->clientIdentity;
          v63 = *&v48->clientIdentity[8];
          if (v64 >= v63 >> 1)
          {
            v48 = sub_100365788((v63 > 1), v64 + 1, 1, v48, v59, v60, v61, v62);
          }

          *v48->clientIdentity = v64 + 1;
          v65 = v48 + 16 * v64;
          *(v65 + 4) = v56;
          *(v65 + 5) = v58;
          v6 = v93;
          v13 = v92;
          v17 = v91;
        }

        v44 = v96;
      }

      else
      {
        sub_10000607C(v98);
      }

      dispatch thunk of IteratorProtocol.next()();
    }

    while (v101);
  }

  else
  {
    v48 = &_swiftEmptyArrayStorage;
  }

  (*(v85 + 8))(v44, v17);
  v66 = v88;
  v67 = sub_10047717C(v48, v86, v87);
  if (v66)
  {

    v48, v68, v69, v70, v71, v72, v73, v74;
  }

  else
  {
    v75 = v67;

    v48, v76, v77, v78, v79, v80, v81, v82;
  }
}

void sub_100719350()
{
  v1 = [v0 lists];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 count];

    if (v3 >= 1)
    {
      v4 = sub_10071B498();
      if (v4)
      {
        v10 = v4;
        v5 = sub_100721ECC(v4);
        v6 = v5;
        v7 = [v0 smartLists];
        if (v5)
        {
          if (v7)
          {
            v8 = v7;
            v9 = sub_100724C50();
            sub_100723984(v6, v9, v10);
          }
        }

        else
        {
          v6 = v7;
        }
      }
    }
  }
}

void sub_100719450(unint64_t a1, int a2)
{
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5, v7);
  v128 = &v120 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000F5104(&unk_100939D90, "8\n\r");
  __chkstk_darwin(v9 - 8, v10);
  v12 = &v120 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13, v14);
  v16 = &v120 - v15;
  v129 = sub_10071B280();
  if (v129)
  {
    v135 = &_swiftEmptyArrayStorage;
    v134 = _swiftEmptySetSingleton;
    v122 = a2;
    if (a1 >> 62)
    {
      v25 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v25 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v121 = v2;
    if (v25)
    {
      if (v25 >= 1)
      {
        v26 = 0;
        v131 = (v6 + 56);
        v132 = (a1 & 0xC000000000000001);
        v130 = (v6 + 48);
        v126 = (v6 + 8);
        v127 = (v6 + 16);
        v123 = &_swiftEmptyArrayStorage;
        *&v24 = 138412290;
        v124 = v24;
        v125 = v16;
        while (1)
        {
          v27 = v132 ? specialized _ArrayBuffer._getElementSlowPath(_:)() : *(a1 + 8 * v26 + 32);
          v28 = v27;
          v29 = [v27 identifier];
          if (v29)
          {
            v30 = v29;
            static UUID._unconditionallyBridgeFromObjectiveC(_:)();

            v31 = 0;
          }

          else
          {
            v31 = 1;
          }

          (*v131)(v12, v31, 1, v5);
          sub_100100FB4(v12, v16);
          if (!(*v130)(v16, 1, v5))
          {
            break;
          }

          sub_1000050A4(v16, &unk_100939D90, "8\n\r");
          if (qword_100936780 != -1)
          {
            swift_once();
          }

          v32 = type metadata accessor for Logger();
          sub_100006654(v32, qword_100950BF0);
          v33 = v28;
          v34 = Logger.logObject.getter();
          v35 = static os_log_type_t.fault.getter();

          if (os_log_type_enabled(v34, v35))
          {
            v36 = swift_slowAlloc();
            v37 = v12;
            v38 = v5;
            v39 = v25;
            v40 = a1;
            v41 = swift_slowAlloc();
            *v36 = v124;
            *(v36 + 4) = v33;
            *v41 = v33;
            v28 = v33;
            _os_log_impl(&_mh_execute_header, v34, v35, "Tried to update listIDsMergableOrdering for missing list but list has no identifier {list: %@}", v36, 0xCu);
            sub_1000050A4(v41, &unk_100938E70, &unk_100797230);
            a1 = v40;
            v25 = v39;
            v5 = v38;
            v12 = v37;
            v16 = v125;

LABEL_26:
            goto LABEL_8;
          }

LABEL_8:
          if (v25 == ++v26)
          {
            goto LABEL_34;
          }
        }

        v42 = v128;
        (*v127)(v128, v16, v5);
        sub_1000050A4(v16, &unk_100939D90, "8\n\r");
        UUID.uuidString.getter();
        v44 = v43;
        (*v126)(v42, v5);
        v45 = String._bridgeToObjectiveC()();
        v44, v46, v47, v48, v49, v50, v51, v52;
        v53 = [v129 indexOfEqualObject:v45];
        v54 = NSNotFound.getter();
        if ((v54 & 0x8000000000000000) == 0 && v53 == v54)
        {
          v55 = v45;
          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          if (*((v135 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v135 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

          v123 = v135;
          goto LABEL_8;
        }

        sub_10037D9FC(&v133, v53);

        goto LABEL_26;
      }

      __break(1u);
      goto LABEL_58;
    }

    v123 = &_swiftEmptyArrayStorage;
LABEL_34:
    v133 = &_swiftEmptyArrayStorage;
    if (v122)
    {
      v60 = [v129 count];
      if (v60)
      {
        v61 = v60;
        v62 = 0;
        v63 = v134;
        v64 = &v134->clientIdentity[40];
        v65 = &_swiftEmptyArrayStorage;
        do
        {
          if (*v63->clientIdentity && (v66 = static Hasher._hash(seed:_:)(), v67 = -1 << v63->clientIdentity[16], v68 = v66 & ~v67, ((*&v64[(v68 >> 3) & 0xFFFFFFFFFFFFFF8] >> v68) & 1) != 0))
          {
            v69 = ~v67;
            while (*(*&v63->clientIdentity[32] + 8 * v68) != v62)
            {
              v68 = (v68 + 1) & v69;
              if (((*&v64[(v68 >> 3) & 0xFFFFFFFFFFFFFF8] >> v68) & 1) == 0)
              {
                goto LABEL_44;
              }
            }
          }

          else
          {
LABEL_44:
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v65 = sub_100367DB8(0, *v65->clientIdentity + 1, 1, v65, v70, v71, v72, v73);
            }

            v75 = *v65->clientIdentity;
            v74 = *&v65->clientIdentity[8];
            if (v75 >= v74 >> 1)
            {
              v65 = sub_100367DB8((v74 > 1), v75 + 1, 1, v65, v70, v71, v72, v73);
            }

            *v65->clientIdentity = v75 + 1;
            *&v65->clientIdentity[8 * v75 + 16] = v62;
            v133 = v65;
          }

          ++v62;
        }

        while (v62 != v61);
      }

      sub_10071F124();
    }

    v76 = v123;
    if (v123 >> 62)
    {
      if (_CocoaArrayWrapper.endIndex.getter())
      {
        goto LABEL_51;
      }
    }

    else if (*((v123 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_51:
      v134, v17, v18, v19, v20, v21, v22, v23;
      goto LABEL_55;
    }

    v77 = v133;
    v78 = *v133->clientIdentity;
    v134, v17, v18, v19, v20, v21, v22, v23;
    if (!v78)
    {
      v76, v79, v80, v81, v82, v83, v84, v85;
      v77, v113, v114, v115, v116, v117, v118, v119;

      return;
    }

LABEL_55:
    v86 = v129;
    v87 = [v129 mutableOrderedSet];
    v88 = [objc_allocWithZone(_REMDefaultReplicaManagerProvider) initWithStore:0];
    [v87 setReplicaManagerProvider:v88];

    sub_10071F1DC(v87, &v133, &v135);
    v89 = [v87 immutableOrderedSet];

    v90 = [v89 serializedData];
    v91 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v93 = v92;

    isa = Data._bridgeToObjectiveC()().super.isa;
    sub_10001BBA0(v91, v93);
    v95 = v121;
    [v121 setListIDsMergeableOrdering:isa];

    v96 = [v95 createResolutionTokenMapIfNecessary];
    v97 = String._bridgeToObjectiveC()();
    [v96 updateForKey:v97];

    [v95 updateChangeCount];
    v98 = v133;
    v76, v99, v100, v101, v102, v103, v104, v105;
    v98, v106, v107, v108, v109, v110, v111, v112;
    return;
  }

  if (qword_100936780 != -1)
  {
LABEL_58:
    swift_once();
  }

  v56 = type metadata accessor for Logger();
  sub_100006654(v56, qword_100950BF0);
  v132 = Logger.logObject.getter();
  v57 = static os_log_type_t.fault.getter();
  if (os_log_type_enabled(v132, v57))
  {
    v58 = swift_slowAlloc();
    *v58 = 0;
    _os_log_impl(&_mh_execute_header, v132, v57, "Failed to create a new listIDsMergeableOrdering when trying to update listIDsMergableOrdering for missing list(s)", v58, 2u);
  }

  v59 = v132;
}

uint64_t sub_100719D48(uint64_t a1)
{
  v4 = [v1 recentlyDeletedInfoAsData];
  if (!v4)
  {
LABEL_9:

    goto LABEL_10;
  }

  v5 = v4;
  v6 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;

  type metadata accessor for RDRecentlyDeletedInfo(0);
  sub_10072509C(&unk_100950C50, type metadata accessor for RDRecentlyDeletedInfo, &unk_1007B7EC8);
  static REMJSONRepresentable.fromJSONData(_:)();
  if (v2)
  {
    sub_10001BBA0(v6, v8);
    if (qword_100936180 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    sub_100006654(v9, qword_100947700);
    swift_errorRetain();
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      *v12 = 136446466;
      sub_1000060C8(0, &qword_1009399F0, off_1008D4120);
      sub_1000F5104(&qword_100946A28, &qword_1007A9338);
      v13 = String.init<A>(describing:)();
      v15 = v14;
      v16 = sub_10000668C(v13, v14, &v37);
      v15, v17, v18, v19, v20, v21, v22, v23;
      *(v12 + 4) = v16;
      *(v12 + 12) = 2082;
      swift_getErrorValue();
      v24 = Error.rem_errorDescription.getter();
      v26 = v25;
      v27 = sub_10000668C(v24, v25, &v37);
      v26, v28, v29, v30, v31, v32, v33, v34;
      *(v12 + 14) = v27;
      _os_log_impl(&_mh_execute_header, v10, v11, "%{public}s#mergeRecentlyDeletedInfo(_:): Failed to deserialize 'recentlyDeletedInfoAsData' due to unexpected error. It will be overwritten. { error: %{public}s}", v12, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
    }

    goto LABEL_9;
  }

  sub_10001BBA0(v6, v8);

  sub_10059B844(a1);

LABEL_10:

  sub_100566968(v35, 1);
}

unint64_t sub_10071A064(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v3 = 0xD000000000000019;
    v4 = 0xD00000000000001BLL;
    if (a1 == 8)
    {
      v4 = 0xD000000000000019;
    }

    if (a1 != 7)
    {
      v3 = v4;
    }

    v5 = 0xD000000000000023;
    if (a1 == 5)
    {
      v5 = 0xD000000000000021;
    }

    if (a1 <= 6u)
    {
      return v5;
    }

    else
    {
      return v3;
    }
  }

  else
  {
    v1 = 0x44496E6F73726570;
    if (a1 == 3)
    {
      v1 = 0xD00000000000001DLL;
    }

    if (a1 == 2)
    {
      v1 = 0xD000000000000018;
    }

    if (a1 <= 1u)
    {
      return 0xD000000000000012;
    }

    else
    {
      return v1;
    }
  }
}

void sub_10071A1C0(_TtC7remindd19RDXPCStorePerformer **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_100436518(v2);
  }

  v3 = *v2->clientIdentity;
  v29[0] = &v2->clientIdentity[16];
  v29[1] = v3;
  v4 = _minimumMergeRunLength(_:)(v3);
  if (v4 >= v3)
  {
    if (v3 >= 2)
    {
      v12 = -1;
      v13 = 1;
      v14 = &v2->clientIdentity[16];
      do
      {
        v15 = *&v2->clientIdentity[8 * v13 + 16];
        v16 = v12;
        v17 = v14;
        do
        {
          v18 = *v17;
          if (v15 >= *v17)
          {
            break;
          }

          *v17 = v15;
          *(v17 + 1) = v18;
          v17 -= 8;
        }

        while (!__CFADD__(v16++, 1));
        ++v13;
        v14 += 8;
        --v12;
      }

      while (v13 != v3);
    }
  }

  else
  {
    v9 = v4;
    v10 = (v3 >> 1);
    if (v3 >= 2)
    {
      v11 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      *v11->clientIdentity = v10;
    }

    else
    {
      v11 = &_swiftEmptyArrayStorage;
    }

    v27[0] = &v11->clientIdentity[16];
    v27[1] = v10;
    sub_1007241B8(v27, v28, v29, v9, v5, v6, v7, v8);
    *v11->clientIdentity = 0;
    v11, v20, v21, v22, v23, v24, v25, v26;
  }

  *a1 = v2;
}

uint64_t sub_10071A2F4()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_100950BF0);
  v1 = sub_100006654(v0, qword_100950BF0);
  if (qword_100936430 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_100974FD8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_10071A3C4(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = sub_10071A064(*a1);
  v5 = v4;
  v6 = sub_10071A064(v2);
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

Swift::Int sub_10071A44C()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  sub_10071A064(v1);
  v3 = v2;
  String.hash(into:)();
  v3, v4, v5, v6, v7, v8, v9, v10;
  return Hasher._finalize()();
}

void sub_10071A4B0(uint64_t a1)
{
  sub_10071A064(*v1);
  v3 = v2;
  String.hash(into:)();

  v3, v4, v5, v6, v7, v8, v9, v10;
}

Swift::Int sub_10071A504(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  sub_10071A064(v2);
  v4 = v3;
  String.hash(into:)();
  v4, v5, v6, v7, v8, v9, v10, v11;
  return Hasher._finalize()();
}

unint64_t sub_10071A564@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100724F20(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_10071A594@<X0>(unint64_t *a1@<X8>)
{
  result = sub_10071A064(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

Swift::String __swiftcall REMCDAccount.recordName()()
{
  v1 = [v0 ckUserRecordName];
  if (v1)
  {
    v2 = v1;
    v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v5 = v4;

    v6 = [v0 recordType];
    v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = v8;

    v10._countAndFlagsBits = 47;
    v10._object = 0xE100000000000000;
    String.append(_:)(v10);
    v11._countAndFlagsBits = v3;
    v11._object = v5;
    String.append(_:)(v11);
    v5, v12, v13, v14, v15, v16, v17, v18;
    v19 = v7;
    v20 = v9;
  }

  else
  {
    if (qword_100936780 != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    sub_100006654(v21, qword_100950BF0);
    v22 = v0;
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v42 = v26;
      *v25 = 136446210;
      v27 = [v22 remObjectID];
      if (v27)
      {
        v28 = v27;
        v29 = [v27 description];

        v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v32 = v31;
      }

      else
      {
        v32 = 0xE300000000000000;
        v30 = 7104878;
      }

      v33 = sub_10000668C(v30, v32, &v42);
      v32, v34, v35, v36, v37, v38, v39, v40;
      *(v25 + 4) = v33;
      _os_log_impl(&_mh_execute_header, v23, v24, "REMCDAccount.recordName() cannot be determined because it is called before .ckUserRecordName is initialized {account: %{public}s}", v25, 0xCu);
      sub_10000607C(v26);
    }

    v19 = 0;
    v20 = 0xE000000000000000;
  }

  result._object = v20;
  result._countAndFlagsBits = v19;
  return result;
}

Swift::String __swiftcall REMCDAccount.recordType()()
{
  v0 = 0x746E756F636341;
  v1 = 0xE700000000000000;
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

uint64_t static REMCDAccount.existingCloudObject(for:accountID:managedObjectContext:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = [a1 recordName];
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;

  v9._countAndFlagsBits = 0x2F746E756F636341;
  v9._object = 0xE800000000000000;
  LOBYTE(v6) = String.hasPrefix(_:)(v9);
  v8, v10, v11, v12, v13, v14, v15, v16;
  if ((v6 & 1) == 0)
  {
    v17 = [a1 recordName];
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v19 = v18;

    v20._countAndFlagsBits = 95;
    v20._object = 0xE100000000000000;
    LOBYTE(v17) = String.hasPrefix(_:)(v20);
    v19, v21, v22, v23, v24, v25, v26, v27;
    if ((v17 & 1) == 0)
    {
      return 0;
    }
  }

  v28 = objc_opt_self();
  v29 = String._bridgeToObjectiveC()();
  v30 = [v28 cloudKitAccountWithCKIdentifier:v29 context:a4];

  if (!v30)
  {
    return 0;
  }

  v31 = [a1 recordName];
  if (!v31)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v33 = v32;
    v31 = String._bridgeToObjectiveC()();
    v33, v34, v35, v36, v37, v38, v39, v40;
  }

  v41 = [v30 ckIdentifierFromRecordName:v31];

  v42 = v41;
  if (!v41)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v44 = v43;
    v42 = String._bridgeToObjectiveC()();
    v44, v45, v46, v47, v48, v49, v50, v51;
  }

  v52 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v54 = v53;
  v55 = [v30 ckUserRecordName];
  if (v55)
  {
    v56 = v55;

    v42 = v56;
  }

  else
  {
    [v30 setCkUserRecordName:v42];
  }

  v57 = [v30 ckUserRecordName];
  if (v57)
  {
    v65 = v57;
    v66 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v68 = v67;

    if (v66 == v52 && v68 == v54)
    {
      v68, v69, v70, v71, v72, v73, v74, v75;
      v54, v76, v77, v78, v79, v80, v81, v82;
      goto LABEL_17;
    }

    v83 = _stringCompareWithSmolCheck(_:_:expecting:)();
    v68, v84, v85, v86, v87, v88, v89, v90;
    v54, v91, v92, v93, v94, v95, v96, v97;
    if (v83)
    {
LABEL_17:
      result = swift_dynamicCastUnknownClass();
      if (result)
      {
        return result;
      }
    }
  }

  else
  {
    v54, v58, v59, v60, v61, v62, v63, v64;
  }

  return 0;
}

_TtC7remindd19RDXPCStorePerformer *static REMCDAccount.allCloudObjects(in:)(uint64_t a1)
{
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [ObjCClassFromMetadata predicateForCloudKitAccountsWithKeyPathPrefix:0];
  isa = Array._bridgeToObjectiveC()().super.isa;
  v5 = [ObjCClassFromMetadata ic_objectsMatchingPredicate:v3 sortDescriptors:0 propertiesToFetch:0 relationshipKeyPathsForPrefetching:isa context:a1];

  sub_1000060C8(0, &qword_1009388B0, NSManagedObject_ptr);
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v7 = sub_100271440(v6);
  v6, v8, v9, v10, v11, v12, v13, v14;
  return v7;
}

uint64_t static REMCDAccount.allCloudObjectIDs(in:)(uint64_t a1)
{
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [ObjCClassFromMetadata predicateForCloudKitAccountsWithKeyPathPrefix:0];
  v4 = [ObjCClassFromMetadata ic_objectIDsMatchingPredicate:v3 context:a1];
  sub_1000060C8(0, &qword_100943230, NSManagedObjectID_ptr);
  v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  return v5;
}

void static REMCDAccount.newCloudObject(for:accountID:managedObjectContext:)(void *a1, uint64_t a2, _TtC7remindd19RDXPCStorePerformer *a3, uint64_t a4)
{
  if (qword_100936780 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_100006654(v8, qword_100950BF0);

  v9 = a1;
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.fault.getter();
  a3, v12, v13, v14, v15, v16, v17, v18;
  if (os_log_type_enabled(v10, v11))
  {
    v19 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    *v19 = 136446466;
    *(v19 + 4) = sub_10000668C(a2, a3, &v47);
    *(v19 + 12) = 2082;
    v20 = [v9 ic_loggingDescription];

    if (!v20)
    {
      __break(1u);
      return;
    }

    v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v23 = v22;

    v24 = sub_10000668C(v21, v23, &v47);
    v23, v25, v26, v27, v28, v29, v30, v31;
    *(v19 + 14) = v24;
    _os_log_impl(&_mh_execute_header, v10, v11, "We aren't supposed to call REMCDAccount.newCloudObject(for:accountID:context:) on sync down, as CloudKit accounts creation is always managed internally by RDAccountUtils {accountID: %{public}s, recordID: %{public}s}", v19, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }

  v32 = [v9 recordID];
  v33 = [v32 recordName];

  if (!v33)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v35 = v34;
    v33 = String._bridgeToObjectiveC()();
    v35, v36, v37, v38, v39, v40, v41, v42;
  }

  v43 = [swift_getObjCClassFromMetadata() newObjectWithCKRecordName:v33 context:a4 account:0];

  if (v43)
  {
    v44 = v43;
    v45 = [v44 ckIdentifier];
    if (v45)
    {
      v46 = v45;
      [v44 mergeDataFromRecord:v9 accountID:v45];

      [v44 setCkServerRecord:v9];
      [v44 setInCloud:1];
    }

    else
    {
    }
  }
}

id sub_10071B280()
{
  result = sub_10071B498();
  if (!result)
  {
    v2 = sub_1004D6FC8();
    if (v2)
    {
      v3 = v2;
      v4 = [objc_allocWithZone(NSOrderedSet) init];
      v5 = [objc_allocWithZone(REMCRMergeableOrderedSet) initWithReplicaIDSource:v3 orderedSet:v4];

      return v5;
    }

    else
    {
      if (qword_100936780 != -1)
      {
        swift_once();
      }

      v6 = type metadata accessor for Logger();
      sub_100006654(v6, qword_100950BF0);
      v7 = v0;
      v8 = Logger.logObject.getter();
      v9 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v8, v9))
      {
        v10 = swift_slowAlloc();
        v11 = swift_slowAlloc();
        v12 = swift_slowAlloc();
        v14 = v12;
        *v10 = 136446466;
        *(v10 + 4) = sub_10000668C(0xD000000000000018, 0x80000001007E9180, &v14);
        *(v10 + 12) = 2112;
        *(v10 + 14) = v7;
        *v11 = v7;
        v13 = v7;
        _os_log_impl(&_mh_execute_header, v8, v9, "Unable to create new listIDsMergeableOrdering because replicaIDSource isn't available {key: %{public}s, cdObject: %@}", v10, 0x16u);
        sub_1000050A4(v11, &unk_100938E70, &unk_100797230);

        sub_10000607C(v12);
      }

      return 0;
    }
  }

  return result;
}

id sub_10071B498()
{
  if (qword_100936780 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100006654(v1, qword_100950BF0);
  v2 = v0;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v28 = v6;
    *v5 = 136315138;
    v7 = [v2 remObjectID];
    if (v7)
    {
      v8 = v7;
      v9 = [v7 description];

      v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v12 = v11;
    }

    else
    {
      v12 = 0xE300000000000000;
      v10 = 7104878;
    }

    v13 = sub_10000668C(v10, v12, &v28);
    v12, v14, v15, v16, v17, v18, v19, v20;
    *(v5 + 4) = v13;
    _os_log_impl(&_mh_execute_header, v3, v4, "Deserializing listIDsMergeableOrdering from cdAccount listIDsMergeableOrdering data {recordID: %s}", v5, 0xCu);
    sub_10000607C(v6);
  }

  v21 = [v2 listIDsMergeableOrdering];
  if (v21)
  {
    v22 = v21;
    v23 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v25 = v24;
  }

  else
  {
    v23 = 0;
    v25 = 0xF000000000000000;
  }

  v26 = sub_1003A4078(v23, v25, 0xD000000000000018, 0x80000001007E9180);
  sub_100031A14(v23, v25);
  return v26;
}

Swift::Void __swiftcall REMCDAccount.sortChildrenObjects()()
{
  if (qword_100936780 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100006654(v1, qword_100950BF0);
  v2 = v0;
  oslog = Logger.logObject.getter();
  v3 = static os_log_type_t.fault.getter();

  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v21 = v5;
    *v4 = 136446210;
    v6 = [v2 remObjectID];
    if (v6)
    {
      v7 = v6;
      v8 = [v6 description];

      v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v11 = v10;
    }

    else
    {
      v11 = 0xE300000000000000;
      v9 = 7104878;
    }

    v12 = sub_10000668C(v9, v11, &v21);
    v11, v13, v14, v15, v16, v17, v18, v19;
    *(v4 + 4) = v12;
    _os_log_impl(&_mh_execute_header, oslog, v3, "REMCDAccount.sortChildrenObjects() Not expected to be called practically {account: %{public}s}", v4, 0xCu);
    sub_10000607C(v5);
  }
}

Swift::Bool __swiftcall REMCDAccount.mergeMigrationState(fromRecord:)(CKRecord fromRecord)
{
  v2 = v1;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4, v6);
  v8 = &v387 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000F5104(&unk_100939D90, "8\n\r");
  __chkstk_darwin(v9 - 8, v10);
  v407 = &v387 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12, v13);
  v15 = &v387 - v14;
  __chkstk_darwin(v16, v17);
  v19 = &v387 - v18;
  *&v22 = __chkstk_darwin(v20, v21).n128_u64[0];
  v24 = &v387 - v23;
  v25 = &selRef_hack_willSaveHandled;
  v26 = [v2 identifier];
  if (v26)
  {
    v27 = v26;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v28 = *(v5 + 56);
    v29 = v19;
    v30 = 0;
  }

  else
  {
    v28 = *(v5 + 56);
    v29 = v19;
    v30 = 1;
  }

  v406 = v28;
  v28(v29, v30, 1, v4);
  sub_100100FB4(v19, v24);
  v404 = *(v5 + 48);
  v405 = (v5 + 48);
  if (v404(v24, 1, v4))
  {
    v403 = 7104878;
    sub_1000050A4(v24, &unk_100939D90, "8\n\r");
    v31 = 0xE300000000000000;
  }

  else
  {
    (*(v5 + 16))(v8, v24, v4);
    sub_1000050A4(v24, &unk_100939D90, "8\n\r");
    v403 = UUID.uuidString.getter();
    v31 = v32;
    (*(v5 + 8))(v8, v4);
  }

  if (CKRecord.recordType.getter() == 0x746E756F636341 && v33 == 0xE700000000000000)
  {
    0xE700000000000000, 0xE700000000000000, v34, v35, v36, v37, v38, v39;
    v408 = 1;
  }

  else
  {
    v40 = v33;
    v408 = _stringCompareWithSmolCheck(_:_:expecting:)();
    v40, v41, v42, v43, v44, v45, v46, v47;
  }

  v48 = CKRecord.subscript.getter();
  if (v48)
  {
    aBlock[0] = v48;
    sub_1000F5104(&qword_100938860, &unk_1007A4830);
    if (swift_dynamicCast())
    {
      v49 = v409;
      if (v49 != [v2 didChooseToMigrate])
      {
        goto LABEL_18;
      }

      goto LABEL_16;
    }
  }

  if (v408)
  {
LABEL_16:
    v50 = 0;
    goto LABEL_19;
  }

  v49 = 0;
  v50 = 0;
  if ([v2 didChooseToMigrate])
  {
LABEL_18:
    [v2 setDidChooseToMigrate:v49];
    v50 = 1;
  }

LABEL_19:
  v51 = CKRecord.subscript.getter();
  if (v51)
  {
    aBlock[0] = v51;
    sub_1000F5104(&qword_100938860, &unk_1007A4830);
    if (swift_dynamicCast())
    {
      v59 = v409;
      if (v59 != [v2 didFinishMigration])
      {
        if (v59)
        {
          v31, v60, v61, v62, v63, v64, v65, v66;
          v67 = 1;
          goto LABEL_58;
        }

LABEL_28:
        v401 = v15;
        v402 = v50;
        if (v50 && ([v2 didChooseToMigrate] & 1) == 0)
        {
          if (qword_100936780 != -1)
          {
            swift_once();
          }

          v122 = type metadata accessor for Logger();
          sub_100006654(v122, qword_100950BF0);

          v123 = v2;
          v124 = Logger.logObject.getter();
          v125 = static os_log_type_t.default.getter();
          v31, v126, v127, v128, v129, v130, v131, v132;
          LODWORD(v399) = v125;
          if (os_log_type_enabled(v124, v125))
          {
            v140 = swift_slowAlloc();
            v398 = swift_slowAlloc();
            aBlock[0] = v398;
            *v140 = 67109890;
            *(v140 + 4) = v408 & 1;
            *(v140 + 8) = 2082;
            v141 = v123;
            v142 = v8;
            v143 = sub_10000668C(v403, v31, aBlock);
            v31, v144, v145, v146, v147, v148, v149, v150;
            *(v140 + 10) = v143;
            v8 = v142;
            *(v140 + 18) = 1024;
            v400 = 1;
            *(v140 + 20) = 1;
            *(v140 + 24) = 1024;
            *(v140 + 26) = [v141 didChooseToMigrate];

            _os_log_impl(&_mh_execute_header, v124, v399, "mergeMigrationState(fromRecord:) - Toggling didFinishMigration->FALSE {isAccountRecord: %{BOOL}d, accountID: %{public}s, didChooseToMigrateChanged: %{BOOL}d, didChooseToMigrate: %{BOOL}d}", v140, 0x1Eu);
            sub_10000607C(v398);
          }

          else
          {
            v31, v133, v134, v135, v136, v137, v138, v139;

            v400 = 1;
          }
        }

        else
        {
          if (qword_100936780 != -1)
          {
            swift_once();
          }

          v69 = type metadata accessor for Logger();
          sub_100006654(v69, qword_100950BF0);

          v70 = Logger.logObject.getter();
          v71 = static os_log_type_t.error.getter();
          v31, v72, v73, v74, v75, v76, v77, v78;
          if (os_log_type_enabled(v70, v71))
          {
            v86 = swift_slowAlloc();
            v395 = v8;
            v87 = v86;
            v88 = swift_slowAlloc();
            aBlock[0] = v88;
            *v87 = 67109378;
            *(v87 + 4) = v408 & 1;
            *(v87 + 8) = 2082;
            v89 = sub_10000668C(v403, v31, aBlock);
            v31, v90, v91, v92, v93, v94, v95, v96;
            *(v87 + 10) = v89;
            _os_log_impl(&_mh_execute_header, v70, v71, "ERROR mergeMigrationState(fromRecord:) - Trying to merge account record that toggles didFinishMigration->FALSE after finishing migration {isAccountRecord: %{BOOL}d, accountID: %{public}s}", v87, 0x12u);
            sub_10000607C(v88);

            v8 = v395;
          }

          else
          {
            v31, v79, v80, v81, v82, v83, v84, v85;
          }

          v400 = 0;
        }

        v97 = [v2 getResolutionTokenMapFromRecord:fromRecord.super.isa];
        v399 = v97;
        if (v97)
        {
          v98 = v97;
          v99 = String._bridgeToObjectiveC()();
          v100 = [v98 getTokenForKey:v99];

          v101 = v98;
          v102 = String._bridgeToObjectiveC()();
          v403 = [v101 getTokenForKey:v102];
        }

        else
        {
          v403 = 0;
          v100 = 0;
        }

        v396 = v5;
        v397 = v100;
        v103 = [v2 createResolutionTokenMapIfNecessary];
        v104 = String._bridgeToObjectiveC()();
        v105 = [v103 getTokenForKey:v104];

        v106 = String._bridgeToObjectiveC()();
        v398 = v103;
        v107 = [v103 getTokenForKey:v106];

        if (qword_100936780 != -1)
        {
          swift_once();
        }

        v108 = type metadata accessor for Logger();
        sub_100006654(v108, qword_100950BF0);
        v109 = v403;
        v394 = v107;
        v110 = v107;
        v111 = v397;
        v112 = v397;
        v392 = v105;
        v113 = v105;
        v114 = Logger.logObject.getter();
        v115 = static os_log_type_t.default.getter();

        v393 = v115;
        v116 = os_log_type_enabled(v114, v115);
        v15 = v401;
        if (v116)
        {
          v388 = v110;
          v389 = v113;
          v391 = v109;
          v395 = v8;
          v117 = swift_slowAlloc();
          v387 = swift_slowAlloc();
          aBlock[0] = v387;
          *v117 = 136315906;
          v390 = v112;
          if (v111)
          {
            v118 = [v112 debugDescription];
            v119 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v121 = v120;
          }

          else
          {
            v121 = 0xE300000000000000;
            v119 = 7104878;
          }

          v151 = sub_10000668C(v119, v121, aBlock);
          v121, v152, v153, v154, v155, v156, v157, v158;
          *(v117 + 4) = v151;
          *(v117 + 12) = 2080;
          v409 = v392;
          sub_1000F5104(&unk_100950C10, &unk_1007AAB68);
          v159 = Optional.debugDescription.getter();
          v161 = v160;
          v162 = sub_10000668C(v159, v160, aBlock);
          v161, v163, v164, v165, v166, v167, v168, v169;
          *(v117 + 14) = v162;
          *(v117 + 22) = 2080;
          v170 = v114;
          if (v403)
          {
            v171 = [v391 debugDescription];
            v172 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v174 = v173;

            v25 = &selRef_hack_willSaveHandled;
          }

          else
          {
            v174 = 0xE300000000000000;
            v25 = &selRef_hack_willSaveHandled;
            v172 = 7104878;
          }

          v5 = v396;
          v175 = sub_10000668C(v172, v174, aBlock);
          v174, v176, v177, v178, v179, v180, v181, v182;
          *(v117 + 24) = v175;
          *(v117 + 32) = 2080;
          v409 = v394;
          v183 = Optional.debugDescription.getter();
          v185 = v184;
          v186 = sub_10000668C(v183, v184, aBlock);
          v185, v187, v188, v189, v190, v191, v192, v193;
          *(v117 + 34) = v186;
          _os_log_impl(&_mh_execute_header, v170, v393, "mergeMigrationState(fromRecord:) - Printing resolution tokens for debugging upon toggling didFinishMigration->FALSE - {didChooseToMigrate: (record=%s, CD=%s), didFinishMigration: (record=%s, CD=%s)}", v117, 0x2Au);
          swift_arrayDestroy();

          v8 = v395;
          v15 = v401;
        }

        else
        {

          v25 = &selRef_hack_willSaveHandled;
          v5 = v396;
        }

        v50 = v402;
        if (!v400)
        {
          goto LABEL_60;
        }

        v67 = 0;
LABEL_58:
        [v2 setDidFinishMigration:{v67, v387}];
        if (!(v408 & 1 | ((v67 & 1) == 0)))
        {
          [v2 setCkNeedsInitialFetchFromCloud:1];
        }

LABEL_60:
        LODWORD(v68) = [v2 didFinishMigration];
        goto LABEL_61;
      }

      goto LABEL_34;
    }
  }

  if ((v408 & 1) == 0)
  {
    if ([v2 didFinishMigration])
    {
      goto LABEL_28;
    }

LABEL_34:
    v31, v60, v61, v62, v63, v64, v65, v66;
    LODWORD(v68) = 0;
    if ((v50 & 1) == 0)
    {
      goto LABEL_100;
    }

    goto LABEL_61;
  }

  v31, v52, v53, v54, v55, v56, v57, v58;
  LODWORD(v68) = 0;
  if (!v50)
  {
    goto LABEL_100;
  }

LABEL_61:
  v194 = [v2 v25[64]];
  if (v194)
  {
    v195 = v407;
    v196 = v194;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v197 = 0;
  }

  else
  {
    v197 = 1;
    v195 = v407;
  }

  v406(v195, v197, 1, v4);
  sub_100100FB4(v195, v15);
  if (!v404(v15, 1, v4))
  {
    v408 = v68;
    v402 = v50;
    (*(v5 + 16))(v8, v15, v4);
    sub_1000050A4(v15, &unk_100939D90, "8\n\r");
    v198 = UUID.uuidString.getter();
    v200 = v199;
    (*(v5 + 8))(v8, v4);
    if (qword_100936780 != -1)
    {
      swift_once();
    }

    v201 = type metadata accessor for Logger();
    sub_100006654(v201, qword_100950BF0);
    v202 = v2;

    v203 = Logger.logObject.getter();
    v204 = static os_log_type_t.default.getter();
    v200, v205, v206, v207, v208, v209, v210, v211;
    if (os_log_type_enabled(v203, v204))
    {
      v212 = swift_slowAlloc();
      v213 = swift_slowAlloc();
      aBlock[0] = v213;
      *v212 = 136446722;
      *(v212 + 4) = sub_10000668C(v198, v200, aBlock);
      *(v212 + 12) = 1024;
      *(v212 + 14) = [v202 didChooseToMigrate];
      *(v212 + 18) = 1024;
      *(v212 + 20) = [v202 didFinishMigration];

      _os_log_impl(&_mh_execute_header, v203, v204, "Migration state did change {accountID: %{public}s, didChooseMigration: %{BOOL}d, didFinishMigration: %{BOOL}d}", v212, 0x18u);
      sub_10000607C(v213);
    }

    else
    {
    }

    v214 = [v202 storeControllerManagedObjectContext];
    if (v214 && (v215 = v214, v216 = [v214 storeController], v215, v216))
    {
      v217 = [v216 cloudContext];
      if (v217)
      {
        v218 = v217;
        [v217 migrationStateDidChange:objc_msgSend(v202 didFinishMigration:{"didChooseToMigrate"), objc_msgSend(v202, "didFinishMigration")}];
        v219 = [v216 accountUtils];
        if (v219)
        {
          v407 = v219;
          LODWORD(v403) = [v202 didChooseToMigrate];
          v220 = [v202 didFinishMigration];
          if (qword_100935D30 != -1)
          {
            swift_once();
          }

          v221 = qword_100974CC8;
          if (qword_1009366E8 != -1)
          {
            swift_once();
          }

          v406 = v218;
          sub_100006654(v201, qword_10094FB70);
          v68 = Logger.logObject.getter();
          v222 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v68, v222))
          {
            v223 = swift_slowAlloc();
            *v223 = 0;
            _os_log_impl(&_mh_execute_header, v68, v222, "RDAccountUtils: Process migration state change", v223, 2u);
          }

          v224 = swift_allocObject();
          v224[2] = v221;
          v224[3] = sub_10071D088;
          v405 = v224;
          v224[4] = 0;
          v225 = objc_opt_self();
          v226 = v221;
          v227 = v225;
          v228 = [v225 sharedInstance];
          v229 = [v228 accountStore];

          v230 = String._bridgeToObjectiveC()();
          v404 = v229;
          v231 = [v229 accountWithIdentifier:v230];

          LOBYTE(v68) = v408;
          if (!v231)
          {
            goto LABEL_107;
          }

          v232 = [v231 accountType];
          if (!v232)
          {
            __break(1u);
            return v232;
          }

          v233 = v232;
          v234 = [v232 identifier];

          if (v234)
          {
            LODWORD(v401) = v220;
            v235 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v237 = v236;

            v238 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v246 = v239;
            if (v237)
            {
              if (v235 == v238 && v237 == v239)
              {
                v237, v239, v238, v241, v242, v243, v244, v245;
                v246, v247, v248, v249, v250, v251, v252, v253;
                LOBYTE(v68) = v408;
                goto LABEL_111;
              }

              v349 = _stringCompareWithSmolCheck(_:_:expecting:)();
              v237, v350, v351, v352, v353, v354, v355, v356;
              v246, v357, v358, v359, v360, v361, v362, v363;
              LOBYTE(v68) = v408;
              if (v349)
              {
LABEL_111:
                if (v403)
                {
                  if (([v231 rem_didChooseToMigrate] & 1) == 0)
                  {
                    v364 = sub_1006BFC1C(v231);
                    if (v365)
                    {
                      v366 = v365;
                      sub_1006BC500(v364, v365);
                      v366, v367, v368, v369, v370, v371, v372, v373;
                    }
                  }
                }

                v374 = [v227 sharedInstance];
                v375 = swift_allocObject();
                *(v375 + 16) = v231;
                *(v375 + 24) = v402;
                *(v375 + 32) = v407;
                *(v375 + 40) = sub_10031D6A0;
                *(v375 + 48) = v405;
                aBlock[4] = sub_10031D6AC;
                aBlock[5] = v375;
                aBlock[0] = _NSConcreteStackBlock;
                aBlock[1] = 1107296256;
                aBlock[2] = sub_100007688;
                aBlock[3] = &unk_1008FD240;
                v376 = _Block_copy(aBlock);
                v377 = v231;

                v378 = v404;
                [v374 saveDidChooseToMigrate:v403 didFinishMigration:v401 toACAccount:v377 inStore:v404 completionHandler:v376];
                _Block_release(v376);
                v200, v379, v380, v381, v382, v383, v384, v385;

                goto LABEL_100;
              }

              goto LABEL_106;
            }

            LOBYTE(v68) = v408;
          }

          else
          {
            static String._unconditionallyBridgeFromObjectiveC(_:)();
            v246 = v239;
          }

          v246, v239, v240, v241, v242, v243, v244, v245;
LABEL_106:

LABEL_107:

          v331 = Logger.logObject.getter();
          v332 = static os_log_type_t.error.getter();
          v200, v333, v334, v335, v336, v337, v338, v339;
          if (os_log_type_enabled(v331, v332))
          {
            v340 = swift_slowAlloc();
            v341 = swift_slowAlloc();
            aBlock[0] = v341;
            *v340 = 136446210;
            *(v340 + 4) = sub_10000668C(v198, v200, aBlock);
            _os_log_impl(&_mh_execute_header, v331, v332, "RDAccountUtils: No ACAccount is found for updating migration state {acAccountID: %{public}s}", v340, 0xCu);
            sub_10000607C(v341);
          }

          v200, v342, v343, v344, v345, v346, v347, v348;
          goto LABEL_100;
        }

        v305 = Logger.logObject.getter();
        v306 = static os_log_type_t.error.getter();
        v200, v307, v308, v309, v310, v311, v312, v313;
        if (os_log_type_enabled(v305, v306))
        {
          v321 = swift_slowAlloc();
          v322 = swift_slowAlloc();
          aBlock[0] = v322;
          *v321 = 136446210;
          v323 = sub_10000668C(v198, v200, aBlock);
          v200, v324, v325, v326, v327, v328, v329, v330;
          *(v321 + 4) = v323;
          _os_log_impl(&_mh_execute_header, v305, v306, "Missing account utils for processing migration state change {accountID: %{public}s}", v321, 0xCu);
          sub_10000607C(v322);
        }

        else
        {
          v200, v314, v315, v316, v317, v318, v319, v320;
        }

LABEL_99:
        LOBYTE(v68) = v408;
        goto LABEL_100;
      }

      v279 = Logger.logObject.getter();
      v280 = static os_log_type_t.error.getter();
      v200, v281, v282, v283, v284, v285, v286, v287;
      if (os_log_type_enabled(v279, v280))
      {
        v295 = swift_slowAlloc();
        v296 = swift_slowAlloc();
        aBlock[0] = v296;
        *v295 = 136446210;
        v297 = sub_10000668C(v198, v200, aBlock);
        v200, v298, v299, v300, v301, v302, v303, v304;
        *(v295 + 4) = v297;
        _os_log_impl(&_mh_execute_header, v279, v280, "Missing cloud context for processing migration state change {accountID: %{public}s}", v295, 0xCu);
        sub_10000607C(v296);
      }

      else
      {
        v200, v288, v289, v290, v291, v292, v293, v294;
      }
    }

    else
    {

      v216 = Logger.logObject.getter();
      v254 = static os_log_type_t.error.getter();
      v200, v255, v256, v257, v258, v259, v260, v261;
      if (os_log_type_enabled(v216, v254))
      {
        v269 = swift_slowAlloc();
        v270 = swift_slowAlloc();
        aBlock[0] = v270;
        *v269 = 136446210;
        v271 = sub_10000668C(v198, v200, aBlock);
        v200, v272, v273, v274, v275, v276, v277, v278;
        *(v269 + 4) = v271;
        _os_log_impl(&_mh_execute_header, v216, v254, "Missing store controller for processing migration state change {accountID: %{public}s}", v269, 0xCu);
        sub_10000607C(v270);
      }

      else
      {
        v200, v262, v263, v264, v265, v266, v267, v268;
      }
    }

    goto LABEL_99;
  }

  sub_1000050A4(v15, &unk_100939D90, "8\n\r");
LABEL_100:
  LOBYTE(v232) = v68;
  return v232;
}

void sub_10071D088(uint64_t a1)
{
  if (a1)
  {
    if (qword_100936780 != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    sub_100006654(v1, qword_100950BF0);
    swift_errorRetain();
    oslog = Logger.logObject.getter();
    v2 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(oslog, v2))
    {
      v3 = swift_slowAlloc();
      v4 = swift_slowAlloc();
      v20 = v4;
      *v3 = 136315138;
      swift_getErrorValue();
      v5 = Error.localizedDescription.getter();
      v7 = v6;
      v8 = sub_10000668C(v5, v6, &v20);
      v7, v9, v10, v11, v12, v13, v14, v15;
      *(v3 + 4) = v8;
      _os_log_impl(&_mh_execute_header, oslog, v2, "Failed to process migration state change after merging CK user record {error: %s}", v3, 0xCu);
      sub_10000607C(v4);

      return;
    }
  }

  else
  {
    if (qword_100936780 != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    sub_100006654(v16, qword_100950BF0);
    oslog = Logger.logObject.getter();
    v17 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(oslog, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v17, "Succesfully processed migration state change after merging CK user record", v18, 2u);
    }
  }
}

Swift::Void __swiftcall REMCDAccount.mergeData(from:accountID:)(CKRecord from, Swift::String accountID)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v6 = String._bridgeToObjectiveC()();
  v30.receiver = v3;
  v30.super_class = REMCDAccount;
  objc_msgSendSuper2(&v30, "mergeDataFromRecord:accountID:", from.super.isa, v6);

  v7 = [(objc_class *)from.super.isa recordID];
  v8 = [v7 recordName];

  if (!v8)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = v9;
    v8 = String._bridgeToObjectiveC()();
    v10, v11, v12, v13, v14, v15, v16, v17;
  }

  v18 = [v3 ckIdentifierFromRecordName:v8];

  if (!v18)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v20 = v19;
    v18 = String._bridgeToObjectiveC()();
    v20, v21, v22, v23, v24, v25, v26, v27;
  }

  [v3 setCkUserRecordName:v18];

  v28 = v3;
  v29 = from.super.isa;
  sub_1004D6E98(v29, 0, 0, v28, v28, v29, ObjectType);
  if (([v28 mergeMigrationStateFromRecord:v29] & 1) != 0 || objc_msgSend(v28, "ckNeedsInitialFetchFromCloud"))
  {
    sub_10071EE80(0);
  }
}

void sub_10071D4BC(unsigned __int8 *a1, void *a2, id a3)
{
  v5 = *a1;
  if (v5 <= 4)
  {
    if (*a1 > 2u)
    {
      if (v5 != 3)
      {
        v19 = [a3 encryptedValues];
        swift_getObjectType();
        CKRecordKeyValueSetting.subscript.getter();
        swift_unknownObjectRelease();
        if (*(&v260[0] + 1) >> 60 == 15)
        {
          isa = 0;
        }

        else
        {
          isa = Data._bridgeToObjectiveC()().super.isa;
          sub_100031A14(*&v260[0], *(&v260[0] + 1));
        }

        [a2 setPersonIDSalt:isa];

        v65 = [a2 personIDSalt];
        if (v65)
        {
          v66 = v65;
          v67 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
          v69 = v68;

          v259 = &type metadata for Data;
          *&v258 = v67;
          *(&v258 + 1) = v69;
          sub_100005EE0(&v258, v260);
        }

        else
        {
          memset(v260, 0, sizeof(v260));
        }

        v109 = @"personIDSalt_v1";
        sub_1000F5104(&qword_100939ED0, &qword_100791B10);
        v110 = [a2 postAccountPropertyChangeNotificationWithKey:v109 changedValue:Optional._bridgeToObjectiveC()()];

        swift_unknownObjectRelease();
        if (v110)
        {
          if (qword_100936780 != -1)
          {
            swift_once();
          }

          v111 = type metadata accessor for Logger();
          sub_100006654(v111, qword_100950BF0);
          v112 = a2;
          v113 = Logger.logObject.getter();
          v114 = static os_log_type_t.default.getter();

          if (os_log_type_enabled(v113, v114))
          {
            v115 = swift_slowAlloc();
            v116 = swift_slowAlloc();
            *&v258 = v116;
            *v115 = 136446210;
            v117 = [v112 remObjectID];
            if (v117)
            {
              v118 = v117;
              v119 = [v117 description];

              v120 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v122 = v121;
            }

            else
            {
              v120 = 7104878;
              v122 = 0xE300000000000000;
            }

            v213 = sub_10000668C(v120, v122, &v258);
            v122, v214, v215, v216, v217, v218, v219, v220;
            *(v115 + 4) = v213;
            _os_log_impl(&_mh_execute_header, v113, v114, "REMCDAccount.mergeData(from): Synced and merged account .personIDSalt change from CloudKit record {accountID: %{public}s}", v115, 0xCu);
            sub_10000607C(v116);
          }

          sub_1000050A4(v260, &qword_100939ED0, &qword_100791B10);
        }

        else
        {
          if (qword_100936780 != -1)
          {
            swift_once();
          }

          v123 = type metadata accessor for Logger();
          sub_100006654(v123, qword_100950BF0);
          sub_10014F5CC(v260, &v258);
          v124 = a2;
          v125 = Logger.logObject.getter();
          v126 = static os_log_type_t.error.getter();

          if (os_log_type_enabled(v125, v126))
          {
            v127 = swift_slowAlloc();
            v257 = swift_slowAlloc();
            *v127 = 136446466;
            v128 = [v124 remObjectID];
            if (v128)
            {
              v129 = v128;
              v130 = [v128 description];

              v131 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v133 = v132;
            }

            else
            {
              v131 = 7104878;
              v133 = 0xE300000000000000;
            }

            v221 = sub_10000668C(v131, v133, &v257);
            v133, v222, v223, v224, v225, v226, v227, v228;
            *(v127 + 4) = v221;
            *(v127 + 12) = 2080;
            sub_10014F5CC(&v258, v256);
            v229 = String.init<A>(describing:)();
            v231 = v230;
            sub_1000050A4(&v258, &qword_100939ED0, &qword_100791B10);
            v232 = sub_10000668C(v229, v231, &v257);
            v231, v233, v234, v235, v236, v237, v238, v239;
            *(v127 + 14) = v232;
            _os_log_impl(&_mh_execute_header, v125, v126, "REMCDAccount.mergeData(from): Could not post RDStoreControllerREMAccountPropertiesDidUpdate due to unexpected values {accountID: %{public}s, changedValue: %s}", v127, 0x16u);
            swift_arrayDestroy();

            sub_1000050A4(v260, &qword_100939ED0, &qword_100791B10);
          }

          else
          {

            sub_1000050A4(&v258, &qword_100939ED0, &qword_100791B10);
            sub_1000050A4(v260, &qword_100939ED0, &qword_100791B10);
          }
        }
      }
    }

    else if (v5 >= 2)
    {
      sub_1004DD52C(a3, 0xD00000000000001DLL, 0, v260);
      v6 = *(&v260[0] + 1);
      v7 = *&v260[0];
      if ([a2 didChooseToMigrate] && objc_msgSend(a2, "didFinishMigration") && (objc_msgSend(a2, "ckNeedsInitialFetchFromCloud") & 1) == 0 && (v8 = objc_msgSend(a2, "listIDsMergeableOrdering")) != 0)
      {
        v9 = v8;
        v10 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
        v12 = v11;
      }

      else
      {
        v10 = 0;
        v12 = 0xF000000000000000;
      }

      v255 = v12;
      if (qword_100936780 != -1)
      {
        swift_once();
      }

      v27 = type metadata accessor for Logger();
      sub_100006654(v27, qword_100950BF0);
      v28 = a3;
      v29 = Logger.logObject.getter();
      v30 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        v251 = swift_slowAlloc();
        *&v260[0] = v251;
        *v31 = 136315138;
        v32 = [v28 recordID];
        v33 = [v32 ckShortDescription];

        v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v35 = a2;
        v36 = v10;
        v37 = v7;
        v38 = v6;
        v40 = v39;

        v41 = sub_10000668C(v34, v40, v260);
        v42 = v40;
        v6 = v38;
        v7 = v37;
        v10 = v36;
        a2 = v35;
        v42, v43, v44, v45, v46, v47, v48, v49;
        *(v31 + 4) = v41;
        _os_log_impl(&_mh_execute_header, v29, v30, "Deserializing listIDsMergeableOrdering from account record listIDsMergeableOrdering data {recordID: %s}", v31, 0xCu);
        sub_10000607C(v251);
      }

      v50 = sub_1004DD4B8(v260, v10, v255, v7, v6, 0xD000000000000018, 0x80000001007E9180, a2);
      v58 = v50;
      v59 = v51;
      v60 = *&v260[0];
      if (!*&v260[0])
      {
        v60 = sub_1003A4078(v50, v51, 0xD000000000000018, 0x80000001007E9180);
      }

      0x80000001007E9180, v51, v52, v53, v54, v55, v56, v57;
      if (v59 >> 60 == 15)
      {
        v61 = 0;
      }

      else
      {
        sub_100029344(v58, v59);
        v61 = Data._bridgeToObjectiveC()().super.isa;
        sub_100031A14(v58, v59);
      }

      [a2 setListIDsMergeableOrdering:v61];

      if (v60)
      {
        v62 = sub_100721ECC(v60);
        v252 = v62;
        v63 = sub_100722B48(v60);
        if (v62)
        {
          if (v63)
          {
            v248 = v63;
            v64 = sub_100724C50();
            sub_100723984(v252, v64, v60);
            sub_100031A14(v10, v255);
            sub_100031A14(v7, v6);

            sub_100031A14(v58, v59);
          }

          else
          {
            sub_100031A14(v10, v255);
            sub_100031A14(v7, v6);

            sub_100031A14(v58, v59);
          }

          v134 = v252;
        }

        else
        {
          v249 = v63;
          sub_100031A14(v10, v255);
          sub_100031A14(v7, v6);

          sub_100031A14(v58, v59);
          v134 = v249;
        }
      }

      else
      {
        sub_100031A14(v58, v59);
        sub_100031A14(v10, v255);

        sub_100031A14(v7, v6);
      }
    }

    return;
  }

  if (*a1 <= 6u)
  {
    if (v5 == 5)
    {
      return;
    }

    v21 = [a3 encryptedValues];
    v22 = String._bridgeToObjectiveC()();
    v23 = [v21 objectForKeyedSubscript:v22];
    swift_unknownObjectRelease();

    if (v23)
    {
      *&v258 = v23;
      sub_1000F5104(&qword_100938860, &unk_1007A4830);
      v24 = swift_dynamicCast();
      if (v24)
      {
        v25 = *&v260[0];
      }

      else
      {
        v25 = 0;
      }

      if (v24)
      {
        v26 = *(&v260[0] + 1);
      }

      else
      {
        v26 = 0;
      }
    }

    else
    {
      v25 = 0;
      v26 = 0;
    }

    v89 = [a2 secondaryGroceryLocalesInfoChecksum];
    v90 = &selRef_isEmpty;
    if (v89)
    {
      v91 = v89;
      v92 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v94 = v93;

      if (v26)
      {
        if (v92 == v25 && v26 == v94)
        {
          v26, v95, v96, v97, v98, v99, v100, v101;
          v94, v102, v103, v104, v105, v106, v107, v108;
          v90 = &selRef_isEmpty;
          goto LABEL_126;
        }

        v161 = _stringCompareWithSmolCheck(_:_:expecting:)();
        v94, v162, v163, v164, v165, v166, v167, v168;
        v90 = &selRef_isEmpty;
        if (v161)
        {
          v26, v169, v170, v171, v172, v173, v174, v175;
          goto LABEL_126;
        }
      }

      else
      {
        v94, v95, v96, v97, v98, v99, v100, v101;
      }
    }

    else if (!v26)
    {
      goto LABEL_126;
    }

    v176 = [a2 secondaryGroceryLocalesInfoChecksum];
    v177 = [a2 secondaryGroceryLocalesInfoAsData];
    if (v177)
    {
      v178 = v177;
      v179 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v254 = v180;
    }

    else
    {
      v179 = 0;
      v254 = 0xF000000000000000;
    }

    v181 = [a2 secondaryGroceryLocalesInfoAsData];
    if (v181)
    {
      v250 = v179;
      v182 = v181;
      v183 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v185 = v184;

      type metadata accessor for RDSecondaryGroceryLocalesInfo(0);
      sub_10072509C(&unk_100950C60, type metadata accessor for RDSecondaryGroceryLocalesInfo, &unk_1007B16F8);
      static REMJSONRepresentable.fromJSONData(_:)();
      sub_10001BBA0(v183, v185);
      v195 = *&v260[0];
      v179 = v250;
    }

    else
    {
      v195 = 0;
    }

    if (v26)
    {
      v196 = String._bridgeToObjectiveC()();
      v26, v197, v198, v199, v200, v201, v202, v203;
    }

    else
    {
      v196 = 0;
    }

    [a2 setSecondaryGroceryLocalesInfoChecksum:v196];

    v210 = [a3 encryptedValues];
    swift_getObjectType();
    CKRecordKeyValueSetting.subscript.getter();
    swift_unknownObjectRelease();
    if (*(&v260[0] + 1) >> 60 == 15)
    {
      v211 = 0;
    }

    else
    {
      v211 = Data._bridgeToObjectiveC()().super.isa;
      sub_100031A14(*&v260[0], *(&v260[0] + 1));
    }

    [a2 setSecondaryGroceryLocalesInfoAsData:v211];

    if (v195)
    {

      sub_100718834(v212);

      sub_100031A14(v179, v254);
    }

    else
    {

      sub_100031A14(v179, v254);
    }

    v90 = &selRef_isEmpty;
LABEL_126:
    v240 = [a2 v90[383]];
    if (v240)
    {
      v241 = v240;
      v242 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v244 = v243;

      sub_10001BBA0(v242, v244);
      if (([a2 markedForDeletion] & 1) == 0)
      {
        v245 = [a2 storeControllerManagedObjectContext];
        if (v245)
        {
          v246 = v245;
          sub_1000F5104(&unk_100939E10, &qword_1007970D0);
          v247 = sub_100015620(0, 0, 128, a2, v246);
        }
      }
    }

    return;
  }

  if (v5 - 7 < 2)
  {
    return;
  }

  v13 = [a3 encryptedValues];
  v14 = String._bridgeToObjectiveC()();
  v15 = [v13 objectForKeyedSubscript:v14];
  swift_unknownObjectRelease();

  if (v15)
  {
    *&v258 = v15;
    sub_1000F5104(&qword_100938860, &unk_1007A4830);
    v16 = swift_dynamicCast();
    if (v16)
    {
      v17 = *&v260[0];
    }

    else
    {
      v17 = 0;
    }

    if (v16)
    {
      v18 = *(&v260[0] + 1);
    }

    else
    {
      v18 = 0;
    }
  }

  else
  {
    v17 = 0;
    v18 = 0;
  }

  v70 = [a2 recentlyDeletedInfoChecksum];
  if (v70)
  {
    v71 = v70;
    v72 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v74 = v73;

    if (v18)
    {
      if (v72 == v17 && v18 == v74)
      {
        v18, v75, v76, v77, v78, v79, v80, v81;
        v74, v82, v83, v84, v85, v86, v87, v88;
        return;
      }

      v135 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v74, v136, v137, v138, v139, v140, v141, v142;
      if (v135)
      {
        v18, v143, v144, v145, v146, v147, v148, v149;
        return;
      }
    }

    else
    {
      v74, v75, v76, v77, v78, v79, v80, v81;
    }
  }

  else if (!v18)
  {
    return;
  }

  v253 = [a2 recentlyDeletedInfoChecksum];
  v150 = [a2 recentlyDeletedInfoAsData];
  if (v150)
  {
    v151 = v150;
    v152 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v154 = v153;
  }

  else
  {
    v152 = 0;
    v154 = 0xF000000000000000;
  }

  v155 = [a2 recentlyDeletedInfoAsData];
  if (v155)
  {
    v156 = v152;
    v157 = v155;
    v158 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v160 = v159;

    type metadata accessor for RDRecentlyDeletedInfo(0);
    sub_10072509C(&unk_100950C50, type metadata accessor for RDRecentlyDeletedInfo, &unk_1007B7EC8);
    static REMJSONRepresentable.fromJSONData(_:)();
    sub_10001BBA0(v158, v160);
    v186 = *&v260[0];
    v152 = v156;
  }

  else
  {
    v186 = 0;
  }

  if (v18)
  {
    v187 = String._bridgeToObjectiveC()();
    v18, v188, v189, v190, v191, v192, v193, v194;
  }

  else
  {
    v187 = 0;
  }

  [a2 setRecentlyDeletedInfoChecksum:v187];

  v204 = sub_1004E183C(a3, 0xD000000000000019, 0x80000001007FF6D0);
  if (v205 >> 60 == 15)
  {
    v206 = 0;
  }

  else
  {
    v207 = v204;
    v208 = v205;
    v206 = Data._bridgeToObjectiveC()().super.isa;
    sub_100031A14(v207, v208);
  }

  [a2 setRecentlyDeletedInfoAsData:v206];

  if (v186)
  {

    sub_100719D48(v209);

    sub_100031A14(v152, v154);
  }

  else
  {

    sub_100031A14(v152, v154);
  }
}

void sub_10071EE80(int a1)
{
  v3 = type metadata accessor for NSFastEnumerationIterator();
  v4 = *(v3 - 8);
  *&v6 = __chkstk_darwin(v3, v5).n128_u64[0];
  v8 = v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [v1 lists];
  if (v9)
  {
    v10 = v9;
    v22 = a1;
    v23 = v1;
    v11 = &_swiftEmptyArrayStorage;
    v28 = &_swiftEmptyArrayStorage;
    NSOrderedSet.makeIterator()();
    NSFastEnumerationIterator.next()();
    while (v27)
    {
      sub_100005EE0(&v26, &v25);
      sub_1000060C8(0, &unk_100938880, off_1008D41A8);
      if (swift_dynamicCast())
      {
        v12 = v24;
        if ([v24 markedForDeletion])
        {
        }

        else
        {
          v13 = v12;
          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          if (*((v28 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v28 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v21[1] = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

          v11 = v28;
        }
      }

      NSFastEnumerationIterator.next()();
    }

    (*(v4 + 8))(v8, v3);
    sub_100719450(v11, v22 & 1);
    v11, v14, v15, v16, v17, v18, v19, v20;
  }
}

void sub_10071F124()
{
  v1 = *v0;
  v2 = *(*v0)->clientIdentity;
  if (v2)
  {
    v3 = v2 == 1;
  }

  else
  {
    v3 = 1;
  }

  if (!v3)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_16:
      v1 = sub_100260BD4(v1, v4, v5, v6, v7, v8, v9, v10);
    }

    v11 = 0;
    v12 = v2 + 3;
    do
    {
      if (v11 != v12 - 4)
      {
        v14 = *v1->clientIdentity;
        if (v11 >= v14)
        {
          __break(1u);
LABEL_15:
          __break(1u);
          goto LABEL_16;
        }

        if (v12 - 4 >= v14)
        {
          goto LABEL_15;
        }

        v15 = &v1->super.isa + v11;
        v16 = v15[4];
        v15[4] = *(&v1->super.isa + v12);
        *(&v1->super.isa + v12) = v16;
      }

      ++v11;
      v13 = v12 - 5;
      --v12;
    }

    while (v11 < v13);
    *v0 = v1;
  }
}

void sub_10071F1DC(void *a1, _TtC7remindd19RDXPCStorePerformer **a2, _TtC7remindd19RDXPCStorePerformer **a3)
{
  v5 = *a2;
  v6 = *(*a2)->clientIdentity;
  if (v6)
  {

    v7 = 32;
    do
    {

      v7 += 8;
      --v6;
    }

    while (v6);
    v5, v8, v9, v10, v11, v12, v13, v14;
  }

  v15 = *a3;
  if (v15 >> 62)
  {
    v16 = _CocoaArrayWrapper.endIndex.getter();
    if (!v16)
    {
      return;
    }
  }

  else
  {
    v16 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v16)
    {
      return;
    }
  }

  if (v16 < 1)
  {
    __break(1u);
  }

  else
  {

    v17 = 0;
    do
    {
      if ((v15 & 0xC000000000000001) != 0)
      {
        v18 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v18 = *&v15->clientIdentity[8 * v17 + 16];
      }

      v19 = v18;
      ++v17;
      v20 = [a1 addObject:v18];
    }

    while (v16 != v17);

    v15, v21, v22, v23, v24, v25, v26, v27;
  }
}

void sub_10071F338(void *a1)
{
  v3 = type metadata accessor for String.Encoding();
  *&v5 = __chkstk_darwin(v3 - 8, v4).n128_u64[0];
  v7 = &v147 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [v1 ckSharedObjectOwnerNames];
  if (!v8)
  {
    v17 = [a1 encryptedValues];
    v157 = String._bridgeToObjectiveC()();
    [v17 setObject:0 forKeyedSubscript:?];
    swift_unknownObjectRelease();
    v18 = v157;

    return;
  }

  v9 = v8;
  v10 = sub_1000060C8(0, &qword_100950C38, off_1008D4200);
  sub_10000CDE4(&unk_100950C40, &qword_100950C38, off_1008D4200, &protocol conformance descriptor for NSObject);
  v11 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  v150 = a1;
  v149 = v7;
  if ((v11 & 0xC000000000000001) != 0)
  {
    __CocoaSet.makeIterator()();
    Set.Iterator.init(_cocoa:)();
    v11 = v159[5];
    v13 = v159[6];
    v14 = v159[7];
    v15 = v159[8];
    v16 = v159[9];
  }

  else
  {
    v15 = 0;
    v19 = -1 << *(v11 + 32);
    v13 = (v11 + 56);
    v14 = ~v19;
    v20 = -v19;
    if (v20 < 64)
    {
      v21 = ~(-1 << v20);
    }

    else
    {
      v21 = -1;
    }

    v16 = (v21 & *(v11 + 56));
  }

  v151 = v14;
  v22 = (v14 + 64) >> 6;
  v152 = _swiftEmptyDictionarySingleton;
  v23 = &qword_100936000;
  *&v12 = 136315394;
  v153 = v12;
  v155 = v11;
  v156 = v13;
  v154 = v10;
LABEL_12:
  v24 = v15;
  if ((v11 & 0x8000000000000000) == 0)
  {
    while (1)
    {
      v28 = v24;
      v29 = v16;
      v15 = v24;
      if (!v16)
      {
        while (1)
        {
          v15 = v28 + 1;
          if (__OFADD__(v28, 1))
          {
            break;
          }

          if (v15 >= v22)
          {
            goto LABEL_49;
          }

          v29 = v13[v15];
          ++v28;
          if (v29)
          {
            goto LABEL_22;
          }
        }

        __break(1u);
        goto LABEL_59;
      }

LABEL_22:
      v27 = (v29 - 1) & v29;
      v26 = *(*(v11 + 48) + ((v15 << 9) | (8 * __clz(__rbit64(v29)))));
      if (!v26)
      {
        goto LABEL_49;
      }

LABEL_23:
      v157 = v27;
      v30 = [v26 objectIdentifier];
      if (v30)
      {
        v31 = v30;
        v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v34 = v33;

        v35 = [v26 ownerName];
        if (v35)
        {
          v74 = v35;
          v147 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v148 = v75;

          v76 = v152;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v159[0] = v76;
          v85 = sub_100005F4C(v32, v34);
          v86 = *v76->clientIdentity;
          v87 = (v78 & 1) == 0;
          v88 = v86 + v87;
          if (__OFADD__(v86, v87))
          {
            __break(1u);
LABEL_61:
            __break(1u);
          }

          if (*&v76->clientIdentity[8] >= v88)
          {
            if (isUniquelyReferenced_nonNull_native)
            {
              if ((v78 & 1) == 0)
              {
                goto LABEL_46;
              }
            }

            else
            {
              v102 = v78;
              sub_100373664();
              v78 = v102;
              if ((v102 & 1) == 0)
              {
                goto LABEL_46;
              }
            }

LABEL_44:
            v34, v78, v79, v80, v81, v82, v83, v84;
            v152 = v159[0];
            v92 = (*(v159[0] + 7) + 16 * v85);
            v93 = v92[1];
            v94 = v148;
            *v92 = v147;
            v92[1] = v94;

            v93, v95, v96, v97, v98, v99, v100, v101;
            goto LABEL_48;
          }

          LODWORD(v152) = v78;
          sub_10036A8F0(v88, isUniquelyReferenced_nonNull_native);
          v89 = sub_100005F4C(v32, v34);
          v91 = v90 & 1;
          v78 = v152;
          if ((v152 & 1) != v91)
          {
            KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
            __break(1u);
            return;
          }

          v85 = v89;
          if (v152)
          {
            goto LABEL_44;
          }

LABEL_46:
          v103 = v159[0];
          *(v159[0] + (v85 >> 6) + 8) |= 1 << v85;
          v104 = (*&v103->clientIdentity[32] + 16 * v85);
          *v104 = v32;
          v104[1] = v34;
          v105 = (*&v103->clientIdentity[40] + 16 * v85);
          v106 = v148;
          *v105 = v147;
          v105[1] = v106;

          v107 = *v103->clientIdentity;
          v108 = __OFADD__(v107, 1);
          v109 = v107 + 1;
          if (v108)
          {
            goto LABEL_61;
          }

          v152 = v103;
          *v103->clientIdentity = v109;
LABEL_48:
          v11 = v155;
          v13 = v156;
          v16 = v157;
          goto LABEL_12;
        }

        v34, v36, v37, v38, v39, v40, v41, v42;
        v13 = v156;
      }

      if (v23[240] != -1)
      {
        swift_once();
      }

      v43 = type metadata accessor for Logger();
      sub_100006654(v43, qword_100950BF0);
      v44 = v26;
      v45 = Logger.logObject.getter();
      v46 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v45, v46))
      {
        v47 = swift_slowAlloc();
        v159[0] = swift_slowAlloc();
        *v47 = v153;
        v48 = [v44 objectIdentifier];
        if (v48)
        {
          v49 = v48;
          v50 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v52 = v51;
        }

        else
        {
          v52 = 0xE300000000000000;
          v50 = 7104878;
        }

        v53 = sub_10000668C(v50, v52, v159);
        v52, v54, v55, v56, v57, v58, v59, v60;
        *(v47 + 4) = v53;
        *(v47 + 12) = 2080;
        v61 = [v44 ownerName];
        if (v61)
        {
          v62 = v61;
          v63 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v65 = v64;
        }

        else
        {
          v65 = 0xE300000000000000;
          v63 = 7104878;
        }

        v66 = sub_10000668C(v63, v65, v159);
        v65, v67, v68, v69, v70, v71, v72, v73;
        *(v47 + 14) = v66;
        _os_log_impl(&_mh_execute_header, v45, v46, "Invalid ckSharedObjectOwnerName entry {objectIdentifier: %s, ownerName: %s}", v47, 0x16u);
        swift_arrayDestroy();

        v24 = v15;
        v13 = v156;
        v16 = v157;
        v11 = v155;
        v23 = &qword_100936000;
        if (v155 < 0)
        {
          break;
        }
      }

      else
      {

        v24 = v15;
        v16 = v157;
        if (v11 < 0)
        {
          break;
        }
      }
    }
  }

  v25 = __CocoaSet.Iterator.next()();
  if (v25)
  {
    v158 = v25;
    swift_dynamicCast();
    v26 = v159[0];
    v15 = v24;
    v27 = v16;
    if (v159[0])
    {
      goto LABEL_23;
    }
  }

LABEL_49:
  sub_10001B860(v11);
  v110 = objc_opt_self();
  v111 = v152;
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  v111, v113, v114, v115, v116, v117, v118, v119;
  v159[0] = 0;
  v120 = [v110 dataWithJSONObject:isa options:0 error:v159];

  v121 = v159[0];
  if (v120)
  {
    v122 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v124 = v123;

    v125 = [v150 encryptedValues];
    static String.Encoding.utf8.getter();
    v126 = String.init(data:encoding:)();
    if (v127)
    {
      v128 = &protocol witness table for String;
      v129 = &type metadata for String;
    }

    else
    {
      v126 = 0;
      v129 = 0;
      v128 = 0;
      v159[2] = 0;
    }

    v159[0] = v126;
    v159[1] = v127;
    v159[3] = v129;
    v159[4] = v128;
    swift_getObjectType();
    CKRecordKeyValueSetting.subscript.setter();
    swift_unknownObjectRelease();
    sub_10001BBA0(v122, v124);
  }

  else
  {
    v130 = v121;
    v15 = _convertNSErrorToError(_:)();

    swift_willThrow();
    if (v23[240] != -1)
    {
LABEL_59:
      swift_once();
    }

    v131 = type metadata accessor for Logger();
    sub_100006654(v131, qword_100950BF0);
    swift_errorRetain();
    v132 = Logger.logObject.getter();
    v133 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v132, v133))
    {
      v134 = swift_slowAlloc();
      v135 = swift_slowAlloc();
      v159[0] = v135;
      *v134 = 136315138;
      v158 = v15;
      swift_errorRetain();
      sub_1000F5104(&unk_1009399E0, &qword_100795D00);
      v136 = String.init<A>(describing:)();
      v138 = v137;
      v139 = sub_10000668C(v136, v137, v159);
      v138, v140, v141, v142, v143, v144, v145, v146;
      *(v134 + 4) = v139;
      _os_log_impl(&_mh_execute_header, v132, v133, "Failed to encode ckSharedObjectOwnerNames in JSON {error: %s}", v134, 0xCu);
      sub_10000607C(v135);
    }

    else
    {
    }
  }
}

CKRecord_optional __swiftcall REMCDAccount.newlyCreatedRecord()()
{
  v1 = v0;
  v48.super_class = REMCDAccount;
  v3 = objc_msgSendSuper2(&v48, "newlyCreatedRecord");
  if (v3)
  {
    v4 = [v0 listIDsMergeableOrdering];
    if (!v4)
    {
      v6 = 0;
      v8 = 0xF000000000000000;
      goto LABEL_8;
    }

    v5 = v4;
    v6 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;

    if (v8 >> 60 == 15)
    {
LABEL_8:
      CKRecord.subscript.setter();
      sub_1001CB4B8(v6, v8);
      sub_1000060C8(0, &qword_10093A360, CKRecord_ptr);
      CKRecordKeyValueSetting.subscript.setter();
LABEL_9:
      sub_100031A14(v6, v8);
      v12 = [v3 encryptedValues];
      v13 = [v1 personIDSalt];
      if (v13)
      {
        v14 = v13;
        v15 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
        v17 = v16;
      }

      else
      {
        v15 = 0;
        v17 = 0;
      }

      swift_getObjectType();
      CKRecordKeyValueSetting.subscript.setter();
      swift_unknownObjectRelease();
      v18 = [v1 recentlyDeletedInfoAsData];
      if (v18)
      {
        v19 = v18;
        v20 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
        v22 = v21;

        v23 = objc_opt_self();
        sub_100029344(v20, v22);
        isa = Data._bridgeToObjectiveC()().super.isa;
        v25 = [v23 assetForData:isa];

        CKRecord.subscript.setter();
        sub_10001BBA0(v20, v22);
        sub_10001BBA0(v20, v22);
      }

      else
      {
        CKRecord.subscript.setter();
      }

      v26 = [v3 encryptedValues];
      v27 = [v1 recentlyDeletedInfoChecksum];
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

      swift_getObjectType();
      CKRecordKeyValueSetting.subscript.setter();
      swift_unknownObjectRelease();
      v32 = [v3 encryptedValues];
      v33 = [v1 secondaryGroceryLocalesInfoAsData];
      if (v33)
      {
        v34 = v33;
        v35 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
        v37 = v36;
      }

      else
      {
        v35 = 0;
        v37 = 0;
      }

      swift_getObjectType();
      CKRecordKeyValueSetting.subscript.setter();
      swift_unknownObjectRelease();
      v38 = [v3 encryptedValues];
      v39 = [v1 secondaryGroceryLocalesInfoChecksum];
      if (v39)
      {
        v40 = v39;
        static String._unconditionallyBridgeFromObjectiveC(_:)();
      }

      swift_getObjectType();
      CKRecordKeyValueSetting.subscript.setter();
      swift_unknownObjectRelease();
      sub_10071F338(v3);
      goto LABEL_24;
    }

    v10 = v8 >> 62;
    if ((v8 >> 62) > 1)
    {
      if (v10 != 2)
      {
        v11 = 0;
        goto LABEL_31;
      }

      v42 = *(v6 + 16);
      v41 = *(v6 + 24);
      v11 = v41 - v42;
      if (!__OFSUB__(v41, v42))
      {
        goto LABEL_31;
      }

      __break(1u);
    }

    else
    {
      if (!v10)
      {
        v11 = BYTE6(v8);
LABEL_31:
        v43 = [objc_opt_self() sharedConfiguration];
        v44 = [v43 maxInlineAssetSizeBytes];

        if (v11 >= 1 && v44 < v11)
        {
          v45 = objc_opt_self();
          v46 = Data._bridgeToObjectiveC()().super.isa;
          v47 = [v45 assetForData:v46];

          CKRecord.subscript.setter();
          CKRecord.subscript.setter();
          goto LABEL_9;
        }

        goto LABEL_8;
      }

      if (!__OFSUB__(HIDWORD(v6), v6))
      {
        v11 = HIDWORD(v6) - v6;
        goto LABEL_31;
      }
    }

    __break(1u);
    goto LABEL_37;
  }

LABEL_24:
  v9 = v3;
LABEL_37:
  result.value.super.isa = v9;
  result.is_nil = v2;
  return result;
}

Swift::Bool __swiftcall REMCDAccount.needsToBePushedToCloud()()
{
  v1 = [v0 ckUserRecordName];
  if (v1)
  {
    v2 = v1;
    v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v5 = v4;

    v5, v6, v7, v8, v9, v10, v11, v12;
    v13 = (v5 >> 56) & 0xF;
    if ((v5 & 0x2000000000000000) == 0)
    {
      v13 = v3 & 0xFFFFFFFFFFFFLL;
    }

    if (v13)
    {
      LODWORD(v1) = [v0 didChooseToMigrate];
      if (v1)
      {
        LODWORD(v1) = [v0 didFinishMigration];
        if (v1)
        {
          v15.receiver = v0;
          v15.super_class = REMCDAccount;
          LOBYTE(v1) = objc_msgSendSuper2(&v15, "needsToBePushedToCloud");
        }
      }
    }

    else
    {
      LOBYTE(v1) = 0;
    }
  }

  return v1;
}

Swift::Void __swiftcall REMCDAccount.cleanUpAfterLocalObjectMerge()()
{
  v1 = v0;
  v2 = type metadata accessor for UUID();
  v362 = *(v2 - 8);
  __chkstk_darwin(v2, v3);
  v5 = v342 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000F5104(&unk_100939D90, "8\n\r");
  __chkstk_darwin(v6 - 8, v7);
  v9 = v342 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10, v11);
  v13 = v342 - v12;
  __chkstk_darwin(v14, v15);
  v356 = v342 - v16;
  __chkstk_darwin(v17, v18);
  v355 = v342 - v19;
  __chkstk_darwin(v20, v21);
  v23 = v342 - v22;
  __chkstk_darwin(v24, v25);
  v27 = v342 - v26;
  __chkstk_darwin(v28, v29);
  v31 = v342 - v30;
  *&v34 = __chkstk_darwin(v32, v33).n128_u64[0];
  v36 = v342 - v35;
  v37 = [v1 remObjectID];
  if (!v37)
  {
    if (qword_100936780 == -1)
    {
      goto LABEL_25;
    }

    goto LABEL_144;
  }

  v38 = v37;
  v39 = [v1 lists];
  if (v39)
  {
    v358 = v23;
    v352 = v5;
    v353 = v38;
    v365[0] = v39;
    v40 = v39;
    sub_1000060C8(0, &unk_100938880, off_1008D41A8);
    v354 = v1;
    v41 = sub_1000060C8(0, &unk_100939E90, NSOrderedSet_ptr);
    v42 = sub_10000CDE4(&qword_100940C60, &unk_100939E90, NSOrderedSet_ptr, &protocol conformance descriptor for NSOrderedSet);
    v43 = Sequence.elements<A>(ofType:)();

    v44 = [v354 listIDsMergeableOrdering];
    if (!v44)
    {
      v43, v45, v46, v47, v48, v49, v50, v51;
      v114 = v353;
      if (qword_100936780 != -1)
      {
        swift_once();
      }

      v115 = type metadata accessor for Logger();
      sub_100006654(v115, qword_100950BF0);
      v116 = v114;
      v117 = Logger.logObject.getter();
      v118 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v117, v118))
      {
        v119 = swift_slowAlloc();
        v120 = swift_slowAlloc();
        v121 = v114;
        v122 = v120;
        *v119 = 138543362;
        *(v119 + 4) = v116;
        *v120 = v121;
        v123 = v116;
        _os_log_impl(&_mh_execute_header, v117, v118, "MERGE.LOCAL: cleanUpAfterLocalObjectMerge: This REMCDAccount has no listIDsMergeableOrdering (accountID: %{public}@).", v119, 0xCu);
        sub_1000050A4(v122, &unk_100938E70, &unk_100797230);

        return;
      }

      goto LABEL_135;
    }

    v357 = v9;
    v363 = v43;
    v52 = v44;
    v53 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v348 = v42;
    v54 = v53;
    v349 = v41;
    v56 = v55;

    v57 = objc_opt_self();
    v58 = v353;
    v59 = [v57 listIDsMergeableOrderingReplicaIDSourceWithAccountID:v353];
    sub_100029344(v54, v56);
    v342[1] = "didFinishMigration";
    v343 = v59;
    v60 = sub_1002FF534(v54, v56, v59, 0xD000000000000018, 0x80000001007E9180, v58);
    v344 = v56;
    sub_10001BBA0(v54, v56);
    v61 = [v60 orderedSet];
    v365[0] = v61;
    v342[2] = sub_1000060C8(0, &unk_10093F610, NSString_ptr);
    v62 = Sequence.elements<A>(ofType:)();

    v63 = sub_1001A6BB0(v62);
    v62, v64, v65, v66, v67, v68, v69, v70;
    v366 = v63;
    v365[0] = &_swiftEmptyArrayStorage;
    v71 = v363;
    v345 = v54;
    v346 = v60;
    v360 = v363 & 0xFFFFFFFFFFFFFF8;
    if (v363 >> 62)
    {
      v72 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v72 = *((v363 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v359 = v13;
    v361 = (v71 & 0xC000000000000001);
    v1 = (v362 + 56);
    v73 = (v362 + 48);
    v351 = (v362 + 16);
    v350 = (v362 + 8);
    v362 = v72;
    if (v72)
    {
      v74 = 0;
      countAndFlagsBits = &_swiftEmptyArrayStorage;
      do
      {
        v75 = v74;
        while (1)
        {
          if (v361)
          {
            v76 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v75 >= *(v360 + 16))
            {
              goto LABEL_137;
            }

            v76 = *(v71 + 8 * v75 + 32);
          }

          v77 = v76;
          v74 = (v75 + 1);
          if (__OFADD__(v75, 1))
          {
            __break(1u);
LABEL_137:
            __break(1u);
            goto LABEL_138;
          }

          v78 = [v76 identifier];
          if (v78)
          {
            v79 = v78;
            static UUID._unconditionallyBridgeFromObjectiveC(_:)();

            v80 = 0;
          }

          else
          {
            v80 = 1;
          }

          v72 = v362;
          (*v1)(v31, v80, 1, v2);
          sub_100100FB4(v31, v36);
          if (!(*v73)(v36, 1, v2))
          {
            break;
          }

          sub_1000050A4(v36, &unk_100939D90, "8\n\r");
          ++v75;
          v71 = v363;
          if (v74 == v72)
          {
            goto LABEL_42;
          }
        }

        v81 = v352;
        (*v351)(v352, v36, v2);
        sub_1000050A4(v36, &unk_100939D90, "8\n\r");
        countAndFlagsBits = UUID.uuidString.getter();
        v83 = v82;
        (*v350)(v81, v2);
        v84 = String.uppercased()();
        countAndFlagsBits = v84._countAndFlagsBits;
        v83, v84._object, v85, v86, v87, v88, v89, v90;
        String._bridgeToObjectiveC()();
        v84._object, v91, v92, v93, v94, v95, v96, v97;

        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v365[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v365[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        countAndFlagsBits = v365[0];
        v72 = v362;
        v71 = v363;
      }

      while (v74 != v362);
    }

    else
    {
      countAndFlagsBits = &_swiftEmptyArrayStorage;
    }

LABEL_42:
    v124 = countAndFlagsBits;
    sub_100721D7C(countAndFlagsBits);
    v124, v125, v126, v127, v128, v129, v130, v131;
    v365[0] = &_swiftEmptyArrayStorage;
    if (v72)
    {
      v139 = 0;
      countAndFlagsBits = &_swiftEmptyArrayStorage;
LABEL_44:
      v140 = v139;
      while (1)
      {
        if (v361)
        {
          v141 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v140 >= *(v360 + 16))
          {
            goto LABEL_139;
          }

          v141 = *(v71 + 8 * v140 + 32);
        }

        v142 = v141;
        v139 = (v140 + 1);
        if (__OFADD__(v140, 1))
        {
          break;
        }

        v143 = [v141 identifier];
        if (v143)
        {
          v144 = v143;
          v145 = v358;
          static UUID._unconditionallyBridgeFromObjectiveC(_:)();

          v146 = 0;
        }

        else
        {
          v146 = 1;
          v145 = v358;
        }

        (*v1)(v145, v146, 1, v2);
        sub_100100FB4(v145, v27);
        if (!(*v73)(v27, 1, v2))
        {
          v147 = v352;
          (*v351)(v352, v27, v2);
          sub_1000050A4(v27, &unk_100939D90, "8\n\r");
          UUID.uuidString.getter();
          v149 = v148;
          (*v350)(v147, v2);
          object = String.lowercased()()._object;
          v149, object, v151, v152, v153, v154, v155, v156;
          String._bridgeToObjectiveC()();
          object, v157, v158, v159, v160, v161, v162, v163;

          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          v71 = v363;
          if (*((v365[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v365[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          countAndFlagsBits = v365[0];
          if (v139 != v362)
          {
            goto LABEL_44;
          }

          goto LABEL_61;
        }

        sub_1000050A4(v27, &unk_100939D90, "8\n\r");
        ++v140;
        v71 = v363;
        if (v139 == v362)
        {
          goto LABEL_61;
        }
      }

LABEL_138:
      __break(1u);
LABEL_139:
      __break(1u);
      goto LABEL_140;
    }

    countAndFlagsBits = &_swiftEmptyArrayStorage;
LABEL_61:
    v71, v132, v133, v134, v135, v136, v137, v138;
    v164 = countAndFlagsBits;
    sub_100721D7C(countAndFlagsBits);
    v164, v165, v166, v167, v168, v169, v170, v171;
    v172 = [v354 smartLists];
    if (v172)
    {
      v365[0] = v172;
      v173 = v172;
      sub_1000060C8(0, &unk_10093F770, off_1008D41E8);
      v174 = Sequence.elements<A>(ofType:)();

      v365[0] = &_swiftEmptyArrayStorage;
      v362 = (v174 & 0xFFFFFFFFFFFFFF8);
      if (v174 >> 62)
      {
        v175 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v175 = *((v174 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v176 = v359;
      v178 = v355;
      v177 = v356;
      v363 = v174 & 0xC000000000000001;
      if (v175)
      {
        v179 = 0;
        v361 = &_swiftEmptyArrayStorage;
LABEL_66:
        v180 = v179;
        while (1)
        {
          if (v363)
          {
            v181 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v180 >= *(v362 + 2))
            {
              goto LABEL_141;
            }

            v181 = *(v174 + 8 * v180 + 32);
          }

          v182 = v181;
          v179 = v180 + 1;
          if (__OFADD__(v180, 1))
          {
            break;
          }

          v183 = [v181 identifier];
          if (v183)
          {
            v184 = v183;
            static UUID._unconditionallyBridgeFromObjectiveC(_:)();

            v178 = v355;
            v177 = v356;
            v185 = 0;
          }

          else
          {
            v185 = 1;
          }

          (*v1)(v177, v185, 1, v2);
          sub_100100FB4(v177, v178);
          if (!(*v73)(v178, 1, v2))
          {
            v186 = v352;
            (*v351)(v352, v178, v2);
            sub_1000050A4(v178, &unk_100939D90, "8\n\r");
            UUID.uuidString.getter();
            v188 = v187;
            (*v350)(v186, v2);
            v189 = String.uppercased()()._object;
            v188, v189, v190, v191, v192, v193, v194, v195;
            String._bridgeToObjectiveC()();
            v189, v196, v197, v198, v199, v200, v201, v202;

            specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
            if (*((v365[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v365[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            }

            specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            v361 = v365[0];
            v176 = v359;
            v178 = v355;
            v177 = v356;
            if (v179 != v175)
            {
              goto LABEL_66;
            }

            goto LABEL_89;
          }

          sub_1000050A4(v178, &unk_100939D90, "8\n\r");
          ++v180;
          v176 = v359;
          if (v179 == v175)
          {
            goto LABEL_89;
          }
        }

LABEL_140:
        __break(1u);
LABEL_141:
        __break(1u);
        goto LABEL_142;
      }

      v361 = &_swiftEmptyArrayStorage;
LABEL_89:
      v223 = v361;
      sub_100721D7C(v361);
      v223, v224, v225, v226, v227, v228, v229, v230;
      v365[0] = &_swiftEmptyArrayStorage;
      if (v175)
      {
        v238 = 0;
        v361 = &_swiftEmptyArrayStorage;
LABEL_91:
        v239 = v238;
        while (1)
        {
          if (v363)
          {
            v240 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v239 >= *(v362 + 2))
            {
              goto LABEL_143;
            }

            v240 = *(v174 + 8 * v239 + 32);
          }

          v241 = v240;
          v238 = v239 + 1;
          if (__OFADD__(v239, 1))
          {
            break;
          }

          v242 = [v240 identifier];
          if (v242)
          {
            v243 = v357;
            v244 = v242;
            static UUID._unconditionallyBridgeFromObjectiveC(_:)();

            v176 = v359;
            v245 = 0;
          }

          else
          {
            v245 = 1;
            v243 = v357;
          }

          (*v1)(v243, v245, 1, v2);
          sub_100100FB4(v243, v176);
          if (!(*v73)(v176, 1, v2))
          {
            v246 = v352;
            (*v351)(v352, v176, v2);
            sub_1000050A4(v176, &unk_100939D90, "8\n\r");
            UUID.uuidString.getter();
            v248 = v247;
            (*v350)(v246, v2);
            v249 = String.lowercased()()._object;
            v248, v249, v250, v251, v252, v253, v254, v255;
            String._bridgeToObjectiveC()();
            v249, v256, v257, v258, v259, v260, v261, v262;

            specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
            if (*((v365[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v365[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            }

            specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            v361 = v365[0];
            v176 = v359;
            if (v238 != v175)
            {
              goto LABEL_91;
            }

            goto LABEL_108;
          }

          sub_1000050A4(v176, &unk_100939D90, "8\n\r");
          ++v239;
          if (v238 == v175)
          {
            goto LABEL_108;
          }
        }

LABEL_142:
        __break(1u);
LABEL_143:
        __break(1u);
LABEL_144:
        swift_once();
LABEL_25:
        v98 = type metadata accessor for Logger();
        sub_100006654(v98, qword_100950BF0);
        v99 = v1;
        v363 = Logger.logObject.getter();
        v100 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v363, v100))
        {
          v101 = 7104878;
          v102 = swift_slowAlloc();
          v365[0] = swift_slowAlloc();
          *v102 = 136446466;
          v103 = [v99 ckIdentifier];
          if (v103)
          {
            v104 = v103;
            v105 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v107 = v106;
          }

          else
          {
            v107 = 0xE300000000000000;
            v105 = 7104878;
          }

          v203 = sub_10000668C(v105, v107, v365);
          v107, v204, v205, v206, v207, v208, v209, v210;
          *(v102 + 4) = v203;
          *(v102 + 12) = 2082;
          v211 = [v99 externalIdentifier];
          if (v211)
          {
            v212 = v211;
            v101 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v214 = v213;
          }

          else
          {
            v214 = 0xE300000000000000;
          }

          v215 = sub_10000668C(v101, v214, v365);
          v214, v216, v217, v218, v219, v220, v221, v222;
          *(v102 + 14) = v215;
          _os_log_impl(&_mh_execute_header, v363, v100, "MERGE.LOCAL: cleanUpAfterLocalObjectMerge: This REMCDAccount has no remObjectID (ckIdentifier: %{public}s, externalIdentifier: %{public}s).", v102, 0x16u);
          swift_arrayDestroy();

          return;
        }

        goto LABEL_37;
      }

      v361 = &_swiftEmptyArrayStorage;
LABEL_108:
      v174, v231, v232, v233, v234, v235, v236, v237;
      v263 = v361;
      sub_100721D7C(v361);
      v263, v264, v265, v266, v267, v268, v269, v270;
    }

    if (qword_100936780 != -1)
    {
      swift_once();
    }

    v271 = type metadata accessor for Logger();
    sub_100006654(v271, qword_100950BF0);
    v272 = Logger.logObject.getter();
    v273 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v272, v273))
    {
      v274 = swift_slowAlloc();
      v275 = swift_slowAlloc();
      v365[0] = v275;
      *v274 = 136315138;
      swift_beginAccess();
      v276 = v366;
      sub_10000CDE4(&unk_10093AA40, &unk_10093F610, NSString_ptr, &protocol conformance descriptor for NSObject);

      v277 = Set.description.getter();
      v279 = v278;
      v276, v278, v280, v281, v282, v283, v284, v285;
      v286 = sub_10000668C(v277, v279, v365);
      v279, v287, v288, v289, v290, v291, v292, v293;
      *(v274 + 4) = v286;
      _os_log_impl(&_mh_execute_header, v272, v273, "MERGE.LOCAL: Clean up account.listIDsOrdering {listIDs.to.remove: %s}", v274, 0xCu);
      sub_10000607C(v275);
    }

    swift_beginAccess();
    v294 = v366;
    v117 = v346;

    sub_1007248F8(v295, v117);
    v297 = v296;
    v294, v298, v299, v300, v301, v302, v303, v304;

    v364 = v297;

    sub_10071A1C0(&v364);
    v297, v305, v306, v307, v308, v309, v310, v311;
    p_super = &v364->super;
    if (*v364->clientIdentity)
    {
      v313 = [v117 mutableOrderedSet];
      v314 = v313;
      isa = p_super[2].isa;
      if (isa)
      {
        while (isa <= p_super[2].isa)
        {
          v316 = p_super[isa + 3].isa;
          v313 = NSNotFound.getter();
          if (v313 < 0 || v316 != v313)
          {
          }

          isa = (isa - 1);
          if (!isa)
          {
            goto LABEL_125;
          }
        }

        __break(1u);
        goto LABEL_129;
      }

LABEL_125:

      v321 = [v314 immutableOrderedSet];
      v322 = [v321 serializedData];
      v323 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v325 = v324;

      v326 = Data._bridgeToObjectiveC()().super.isa;
      sub_10001BBA0(v323, v325);
      v327 = v354;
      [v354 setListIDsMergeableOrdering:v326];

      v328 = [v327 createResolutionTokenMapIfNecessary];
      v329 = String._bridgeToObjectiveC()();
      v330 = [v328 getTokenForKey:v329];

      [v330 update];
      p_super = v321;
      v331 = sub_100721ECC(p_super);
      v332 = v331;
      v333 = sub_100722B48(p_super);
      v317 = v333;
      if (!v331)
      {

        goto LABEL_133;
      }

      if (!v333)
      {

        v317 = p_super;
        goto LABEL_133;
      }

      v334 = sub_100724C50();
      v320 = v354;
      sub_100723984(v332, v334, p_super);

      v317 = p_super;
    }

    else
    {

      p_super = sub_100721ECC(v117);
      v317 = p_super;
      v313 = sub_100722B48(v117);
      if (!p_super)
      {
LABEL_129:
        v317 = v313;
LABEL_133:
        v320 = v354;
        goto LABEL_134;
      }

      if (!v313)
      {

        p_super = 0;
        goto LABEL_133;
      }

      v318 = v313;
      v319 = sub_100724C50();
      v320 = v354;
      sub_100723984(v317, v319, v117);

      p_super = 0;
    }

LABEL_134:

    [v320 updateChangeCount];
    sub_10001BBA0(v345, v344);
    v294, v335, v336, v337, v338, v339, v340, v341;

LABEL_135:
    return;
  }

  if (qword_100936780 != -1)
  {
    swift_once();
  }

  v108 = type metadata accessor for Logger();
  sub_100006654(v108, qword_100950BF0);
  v109 = v38;
  v363 = Logger.logObject.getter();
  v110 = static os_log_type_t.error.getter();

  if (!os_log_type_enabled(v363, v110))
  {

LABEL_37:
    v113 = v363;
    goto LABEL_38;
  }

  v111 = swift_slowAlloc();
  v112 = swift_slowAlloc();
  *v111 = 138543362;
  *(v111 + 4) = v109;
  *v112 = v38;
  v362 = v109;
  _os_log_impl(&_mh_execute_header, v363, v110, "MERGE.LOCAL: cleanUpAfterLocalObjectMerge: This REMCDAccount has nil lists (accountID: %{public}@).", v111, 0xCu);
  sub_1000050A4(v112, &unk_100938E70, &unk_100797230);

  v113 = v362;
LABEL_38:
}