uint64_t sub_1002BDD14(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for AddToQueueEpisodeContextAction(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id sub_1002BDD58(uint64_t a1, uint64_t a2, int a3)
{
  v34 = a3;
  sub_100168088(&unk_100575AE0, &unk_100405E80);
  __chkstk_darwin();
  v6 = v33 - v5;
  sub_100168088(&unk_100578410, &qword_100402DB0);
  __chkstk_darwin();
  v8 = v33 - v7;
  sub_100168088(&unk_100578C10, &qword_100400B60);
  __chkstk_darwin();
  v10 = v33 - v9;
  sub_100168088(&qword_10057CF40, qword_100405ED0);
  __chkstk_darwin();
  v12 = v33 - v11;
  v13 = type metadata accessor for FlowDestination();
  v14 = *(v13 - 8);
  __chkstk_darwin();
  v35 = v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  dispatch thunk of LegacyLockup.clickAction.getter();
  if (!v37)
  {
    sub_100009104(aBlock, &qword_100578C20, &unk_100403D30);
    goto LABEL_8;
  }

  v33[2] = v3;
  sub_100168088(&unk_10057BB70, &qword_100401CB0);
  type metadata accessor for FlowAction();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_8:
    (*(v14 + 56))(v12, 1, 1, v13);
    goto LABEL_9;
  }

  dispatch thunk of FlowAction.destination.getter();

  if ((*(v14 + 48))(v12, 1, v13) != 1)
  {
    (*(v14 + 32))(v35, v12, v13);
    type metadata accessor for CarPlayPageLoadCoordinator(0);
    BaseObjectGraph.inject<A>(_:)();
    v33[1] = aBlock[0];
    LegacyLockup.titleAccessibilityLabel.getter();
    v17 = v16;
    v33[0] = a1;
    sub_1002BE498();
    v19 = v18;
    if (v17)
    {
      v20 = String._bridgeToObjectiveC()();

      if (v19)
      {
LABEL_6:
        v21 = String._bridgeToObjectiveC()();

LABEL_13:
        v22 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithText:v20 detailText:v21 image:0 accessoryImage:0 accessoryType:0];

        LegacyLockup.artwork.getter();
        CarPlayPageLoadCoordinator.loadImage(for:into:)(v10, v22);
        sub_100009104(v10, &unk_100578C10, &qword_100400B60);
        v24 = sub_100168088(&unk_100575B10, &qword_100402DC8);
        v25 = *(v24 + 48);
        v26 = &v6[*(v24 + 64)];
        v27 = v35;
        FlowDestination.pageDestinationURL.getter();
        *&v6[v25] = FlowDestination.pageDestinationPage.getter();
        *v26 = LegacyLockup.adamId.getter();
        v26[8] = 0;
        v28 = type metadata accessor for CarPlayTemplateInfo.TemplateType(0);
        swift_storeEnumTagMultiPayload();
        v29 = *(*(v28 - 8) + 56);
        v29(v6, 0, 1, v28);
        v29(v8, 1, 1, v28);
        v30 = type metadata accessor for CarPlayTemplateInfo(0);
        v31 = *(v30 + 20);
        sub_1001FBB44(v6, v8);
        v8[v31] = v34;
        (*(*(v30 - 8) + 56))(v8, 0, 1, v30);
        sub_1001D2AD4(v8);
        v38 = sub_1002BE690;
        v39 = v33[0];
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_100372F30;
        v37 = &unk_1004EA500;
        v32 = _Block_copy(aBlock);

        [v22 setHandler:v32];
        _Block_release(v32);

        (*(v14 + 8))(v27, v13);
        return v22;
      }
    }

    else
    {
      v20 = 0;
      if (v18)
      {
        goto LABEL_6;
      }
    }

    v21 = 0;
    goto LABEL_13;
  }

LABEL_9:
  sub_100009104(v12, &qword_10057CF40, qword_100405ED0);
  return 0;
}

uint64_t sub_1002BE344(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_100168088(&qword_100578010, &qword_100401F60);
  __chkstk_darwin();
  v9 = &v14 - v8;
  static TaskPriority.userInitiated.getter();
  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v9, 0, 1, v10);
  type metadata accessor for MainActor();

  swift_unknownObjectRetain();

  v11 = static MainActor.shared.getter();
  v12 = swift_allocObject();
  v12[2] = v11;
  v12[3] = &protocol witness table for MainActor;
  v12[4] = a4;
  v12[5] = a1;
  v12[6] = a2;
  v12[7] = a3;
  sub_10023EE80(0, 0, v9, &unk_100409EB0, v12);
}

uint64_t sub_1002BE498()
{
  type metadata accessor for ExplicitContentPresenter();
  BaseObjectGraph.inject<A>(_:)();
  v0 = LegacyLockup.genreNames.getter();
  if (!v0)
  {
    goto LABEL_10;
  }

  if (!v0[2])
  {
    goto LABEL_9;
  }

  v2 = v0[4];
  v1 = v0[5];

  v3 = HIBYTE(v1) & 0xF;
  if ((v1 & 0x2000000000000000) == 0)
  {
    v3 = v2 & 0xFFFFFFFFFFFFLL;
  }

  if (!v3)
  {
LABEL_9:

LABEL_10:
    v4 = _swiftEmptyArrayStorage;
    goto LABEL_11;
  }

  v4 = sub_100243134(0, 1, 1, _swiftEmptyArrayStorage);
  v5 = *(v4 + 2);
  v6 = *(v4 + 3);
  v7 = v5 + 1;
  if (v5 >= v6 >> 1)
  {
    v17 = v4;
    v18 = *(v4 + 2);
    v19 = sub_100243134((v6 > 1), v5 + 1, 1, v17);
    v5 = v18;
    v4 = v19;
  }

  *(v4 + 2) = v7;
  v8 = &v4[16 * v5];
  *(v8 + 4) = v2;
  *(v8 + 5) = v1;
LABEL_11:
  if (LegacyLockup.isExplicit.getter())
  {
    v9 = ExplicitContentPresenter.symbol.getter();
    v11 = v10;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v4 = sub_100243134(0, *(v4 + 2) + 1, 1, v4);
    }

    v13 = *(v4 + 2);
    v12 = *(v4 + 3);
    if (v13 >= v12 >> 1)
    {
      v4 = sub_100243134((v12 > 1), v13 + 1, 1, v4);
    }

    *(v4 + 2) = v13 + 1;
    v14 = &v4[16 * v13];
    *(v14 + 4) = v9;
    *(v14 + 5) = v11;
  }

  static String.eyebrowSeparatorSymbol.getter();
  sub_100168088(&qword_10057C9C0, &qword_100403E20);
  sub_1001A4604();
  v15 = BidirectionalCollection<>.joined(separator:)();

  return v15;
}

uint64_t sub_1002BE698(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_10001C51C;

  return sub_1001FB128(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_1002BE76C()
{
  v1 = OBJC_IVAR____TtC8Podcasts22PreferencesWindowState__toolbarItemType;
  v2 = sub_100168088(&qword_10057CAD0, qword_10040A010);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for PreferencesWindowState(uint64_t a1)
{
  result = qword_10057C9F8;
  if (!qword_10057C9F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1002BE868(uint64_t a1)
{
  sub_1002BE8F8();
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1002BE8F8()
{
  if (!qword_10057CA08)
  {
    v0 = type metadata accessor for Published();
    if (!v1)
    {
      atomic_store(v0, &qword_10057CA08);
    }
  }
}

unint64_t sub_1002BE95C()
{
  result = qword_10057CAB8;
  if (!qword_10057CAB8)
  {
    sub_100168310(&qword_10057CAC0, qword_100409EF8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10057CAB8);
  }

  return result;
}

uint64_t sub_1002BE9C0@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for PreferencesWindowState(0);
  result = ObservableObject<>.objectWillChange.getter();
  *a2 = result;
  return result;
}

uint64_t sub_1002BEA00(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x6B63616279616C70;
  if (v2 != 1)
  {
    v3 = 0x6465636E61766461;
  }

  if (*a1)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0x6C6172656E6567;
  }

  if (v2)
  {
    v5 = 0xE800000000000000;
  }

  else
  {
    v5 = 0xE700000000000000;
  }

  v6 = 0x6B63616279616C70;
  if (*a2 != 1)
  {
    v6 = 0x6465636E61766461;
  }

  if (*a2)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0x6C6172656E6567;
  }

  if (*a2)
  {
    v8 = 0xE800000000000000;
  }

  else
  {
    v8 = 0xE700000000000000;
  }

  if (v4 == v7 && v5 == v8)
  {
    v9 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v9 & 1;
}

Swift::Int sub_1002BEB04()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1002BEBA8(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int sub_1002BEC38(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_1002BECD8@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1002BEDDC(*a1);
  *a2 = result;
  return result;
}

void sub_1002BED08(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x6B63616279616C70;
  if (v2 != 1)
  {
    v4 = 0x6465636E61766461;
  }

  v5 = v2 == 0;
  if (*v1)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0x6C6172656E6567;
  }

  if (!v5)
  {
    v3 = 0xE800000000000000;
  }

  *a1 = v6;
  a1[1] = v3;
}

unint64_t sub_1002BED7C()
{
  result = qword_10057CAC8;
  if (!qword_10057CAC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10057CAC8);
  }

  return result;
}

unint64_t sub_1002BEDDC(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1004DF0D0, v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_1002BEE28()
{
  v1 = v0;
  v2 = type metadata accessor for URL();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for MoveOperationError(0);
  __chkstk_darwin();
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1002C0300(v1, v7);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v9 = 0xD000000000000012;
      sub_1002C0364(v7);
    }

    else
    {
      v16 = 0;
      v17 = 0xE000000000000000;
      _StringGuts.grow(_:)(22);

      v16 = 0xD000000000000013;
      v17 = 0x800000010046D860;
      swift_getErrorValue();
      v12._countAndFlagsBits = Error.localizedDescription.getter();
      String.append(_:)(v12);

      v13._countAndFlagsBits = 46;
      v13._object = 0xE100000000000000;
      String.append(_:)(v13);

      return v16;
    }
  }

  else
  {
    (*(v3 + 32))(v5, v7, v2);
    v16 = 0;
    v17 = 0xE000000000000000;
    _StringGuts.grow(_:)(45);

    v16 = 0xD00000000000002ALL;
    v17 = 0x800000010046D8A0;
    v10._countAndFlagsBits = URL.path.getter();
    String.append(_:)(v10);

    v11._countAndFlagsBits = 46;
    v11._object = 0xE100000000000000;
    String.append(_:)(v11);
    v9 = v16;
    (*(v3 + 8))(v5, v2);
  }

  return v9;
}

void sub_1002BF0A4()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC8Podcasts17MoveFileOperation_source;
  v3 = OBJC_IVAR____TtC8Podcasts17MoveFileOperation_destination;
  v4 = type metadata accessor for URL();
  sub_1002C01FC(&qword_10057CB68, &type metadata accessor for URL, &protocol conformance descriptor for URL);
  if (dispatch thunk of static Equatable.== infix(_:_:)())
  {
    v5 = *(v0 + OBJC_IVAR____TtC8Podcasts13BaseOperation_resultHandler);
    if (!v5)
    {
LABEL_5:
      sub_10003172C();
      return;
    }

    v6 = *(v0 + OBJC_IVAR____TtC8Podcasts13BaseOperation_resultHandler + 8);
    v120 = sub_100168088(&qword_100578BE0, &unk_100405DA0);
    v118 = 0;
    v119 = 0;

    v5(&v118);
    v7 = v5;
    v8 = v6;
LABEL_4:
    sub_100037470(v7, v8);
    sub_100004590(&v118);
    goto LABEL_5;
  }

  v117 = 0;
  if (!URL.isPackagedMedia()())
  {
    v27 = [objc_opt_self() defaultManager];
    URL.path.getter();
    v28 = String._bridgeToObjectiveC()();

    v29 = [v27 fileExistsAtPath:v28 isDirectory:&v117];

    if (!v29 || (v117 & 1) != 0)
    {
      v30 = static os_log_type_t.error.getter();
      v31 = *(v1 + OBJC_IVAR____TtC8Podcasts17MoveFileOperation_log);
      sub_100168088(&unk_100574670, &qword_100400AB0);
      v32 = swift_allocObject();
      *(v32 + 16) = xmmword_100400790;
      v33 = URL.path.getter();
      v35 = v34;
      *(v32 + 56) = &type metadata for String;
      *(v32 + 64) = sub_100022C18();
      *(v32 + 32) = v33;
      *(v32 + 40) = v35;
      os_log(_:dso:log:_:_:)(v30, &_mh_execute_header, v31, "Serious error. URLSession returned a directory instead of file %{public}s", 73, 2, v32);

      type metadata accessor for MoveOperationError(0);
      sub_1002C01FC(&qword_10057CB70, type metadata accessor for MoveOperationError, &unk_10040A0DC);
      v36 = swift_allocError();
      (*(*(v4 - 8) + 16))(v37, v1 + v2, v4);
      swift_storeEnumTagMultiPayload();
      v38 = v1 + OBJC_IVAR____TtC8Podcasts13BaseOperation_resultHandler;
      v39 = *(v1 + OBJC_IVAR____TtC8Podcasts13BaseOperation_resultHandler);
      if (!v39)
      {
LABEL_27:
        v82 = OBJC_IVAR____TtC8Podcasts13BaseOperation_lock;
        v83 = *(v1 + OBJC_IVAR____TtC8Podcasts13BaseOperation_lock);
        swift_errorRetain();
        [v83 lock];
        *(v1 + OBJC_IVAR____TtC8Podcasts13BaseOperation__error) = v36;
        swift_errorRetain();

        [*(v1 + v82) unlock];

        sub_10003172C();
        goto LABEL_33;
      }

LABEL_26:
      v81 = *(v38 + 8);
      v120 = sub_100168088(&qword_100578BE0, &unk_100405DA0);
      v118 = v36;
      v119 = 1;
      sub_100013CB4(v39, v81);
      swift_errorRetain();
      v39(&v118);
      sub_100037470(v39, v81);
      sub_100004590(&v118);
      goto LABEL_27;
    }
  }

  v9 = objc_opt_self();
  v10 = [v9 defaultManager];
  URL.path.getter();
  v11 = String._bridgeToObjectiveC()();

  v12 = [v10 fileExistsAtPath:v11];

  v116 = v2;
  v114 = v9;
  v115 = v3;
  if (v12)
  {
    v13 = static os_log_type_t.error.getter();
    v14 = *(v1 + OBJC_IVAR____TtC8Podcasts17MoveFileOperation_log);
    sub_100168088(&unk_100574670, &qword_100400AB0);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_100400790;
    v16 = URL.path.getter();
    v18 = v17;
    *(v15 + 56) = &type metadata for String;
    v19 = sub_100022C18();
    *(v15 + 64) = v19;
    *(v15 + 32) = v16;
    *(v15 + 40) = v18;
    os_log(_:dso:log:_:_:)(v13, &_mh_execute_header, v14, "Invalid state. File already exists at the destination %{public}s", 64, 2, v15);

    v20 = static os_log_type_t.default.getter();
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_100400790;
    v22 = URL.path.getter();
    *(v21 + 56) = &type metadata for String;
    *(v21 + 64) = v19;
    *(v21 + 32) = v22;
    *(v21 + 40) = v23;
    os_log(_:dso:log:_:_:)(v20, &_mh_execute_header, v14, "Attempt to delete existing file at %{public}s", 45, 2, v21);

    v24 = [v9 defaultManager];
    URL.path.getter();
    v25 = String._bridgeToObjectiveC()();

    v118 = 0;
    LODWORD(v18) = [v24 removeItemAtPath:v25 error:&v118];

    if (v18)
    {
      v26 = v118;
    }

    else
    {
      v40 = v118;
      _convertNSErrorToError(_:)();

      swift_willThrow();
      v41 = static os_log_type_t.error.getter();
      v42 = swift_allocObject();
      *(v42 + 16) = xmmword_100400790;
      v43 = URL.path.getter();
      *(v42 + 56) = &type metadata for String;
      *(v42 + 64) = v19;
      *(v42 + 32) = v43;
      *(v42 + 40) = v44;
      os_log(_:dso:log:_:_:)(v41, &_mh_execute_header, v14, "Failed to delete existing file at %{public}s", 44, 2, v42);
    }

    v2 = v116;
  }

  v45 = static os_log_type_t.default.getter();
  v46 = *(v1 + OBJC_IVAR____TtC8Podcasts17MoveFileOperation_log);
  if (os_log_type_enabled(v46, v45))
  {
    v47 = swift_slowAlloc();
    v118 = swift_slowAlloc();
    *v47 = 136315394;
    v48 = URL.description.getter();
    v50 = sub_1000153E0(v48, v49, &v118);

    *(v47 + 4) = v50;
    *(v47 + 12) = 2080;
    v51 = URL.description.getter();
    v53 = sub_1000153E0(v51, v52, &v118);

    *(v47 + 14) = v53;
    v2 = v116;
    _os_log_impl(&_mh_execute_header, v46, v45, "Copy file from %s to destination %s.", v47, 0x16u);
    swift_arrayDestroy();
  }

  v54 = sub_100173980();
  if (v55)
  {
    v74 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v46, v74))
    {
      v75 = swift_slowAlloc();
      v76 = swift_slowAlloc();
      v118 = v76;
      *v75 = 136446210;
      v77 = URL.description.getter();
      v79 = sub_1000153E0(v77, v78, &v118);

      *(v75 + 4) = v79;
      _os_log_impl(&_mh_execute_header, v46, v74, "Failed to copy file to destination %{public}s", v75, 0xCu);
      sub_100004590(v76);
    }

    type metadata accessor for MoveOperationError(0);
    sub_1002C01FC(&qword_10057CB70, type metadata accessor for MoveOperationError, &unk_10040A0DC);
    v36 = swift_allocError();
    (*(*(v4 - 8) + 16))(v80, v1 + v2, v4);
    swift_storeEnumTagMultiPayload();
    v38 = v1 + OBJC_IVAR____TtC8Podcasts13BaseOperation_resultHandler;
    v39 = *(v1 + OBJC_IVAR____TtC8Podcasts13BaseOperation_resultHandler);
    if (!v39)
    {
      goto LABEL_27;
    }

    goto LABEL_26;
  }

  v95 = v54;
  v96 = static os_log_type_t.default.getter();
  sub_100168088(&unk_100574670, &qword_100400AB0);
  v97 = swift_allocObject();
  *(v97 + 16) = xmmword_100400790;
  *(v97 + 56) = &type metadata for UInt64;
  *(v97 + 64) = &protocol witness table for UInt64;
  *(v97 + 32) = v95;
  os_log(_:dso:log:_:_:)(v96, &_mh_execute_header, v46, "File of size %{iec-bytes}d to be copied.", 40, 2, v97);

  v98 = [v114 defaultManager];
  URL._bridgeToObjectiveC()(v99);
  v101 = v100;
  URL._bridgeToObjectiveC()(v115);
  v103 = v102;
  v118 = 0;
  v104 = [v98 moveItemAtURL:v101 toURL:v102 error:&v118];

  v105 = v118;
  if (v104)
  {
    v106 = *(v1 + OBJC_IVAR____TtC8Podcasts13BaseOperation_resultHandler);
    if (!v106)
    {
      v111 = v118;
      goto LABEL_5;
    }

    v107 = *(v1 + OBJC_IVAR____TtC8Podcasts13BaseOperation_resultHandler + 8);
    v120 = sub_100168088(&qword_100578BE0, &unk_100405DA0);
    v118 = 0;
    v119 = 0;
    v108 = v105;
    sub_100013CB4(v106, v107);
    v106(&v118);
    v7 = v106;
    v8 = v107;
    goto LABEL_4;
  }

  v109 = v118;
  v110 = _convertNSErrorToError(_:)();

  swift_willThrow();
  v113 = v110;
  swift_getErrorValue();
  v56 = Error.localizedDescription.getter();
  v58 = v57;
  v112 = static os_log_type_t.error.getter();
  sub_100168088(&unk_100574670, &qword_100400AB0);
  v59 = swift_allocObject();
  *(v59 + 16) = xmmword_1004007E0;
  v60 = URL.path.getter();
  v61 = v46;
  v63 = v62;
  *(v59 + 56) = &type metadata for String;
  v64 = sub_100022C18();
  *(v59 + 64) = v64;
  *(v59 + 32) = v60;
  *(v59 + 40) = v63;
  v65 = URL.path.getter();
  *(v59 + 96) = &type metadata for String;
  *(v59 + 104) = v64;
  *(v59 + 72) = v65;
  *(v59 + 80) = v66;
  *(v59 + 136) = &type metadata for String;
  *(v59 + 144) = v64;
  *(v59 + 112) = v56;
  *(v59 + 120) = v58;
  os_log(_:dso:log:_:_:)(v112, &_mh_execute_header, v61, "Failed to copy file from %{public}s to %{public}s error: %{public}s", 67, 2, v59);

  v67 = static os_log_type_t.default.getter();
  v68 = swift_allocObject();
  *(v68 + 16) = xmmword_100400790;
  v69 = URL.description.getter();
  *(v68 + 56) = &type metadata for String;
  *(v68 + 64) = v64;
  *(v68 + 32) = v69;
  *(v68 + 40) = v70;
  os_log(_:dso:log:_:_:)(v67, &_mh_execute_header, v61, "Delete file from source %@", 26, 2, v68);

  v71 = [v114 defaultManager];
  URL.path.getter();
  v72 = String._bridgeToObjectiveC()();

  v118 = 0;
  LODWORD(v68) = [v71 removeItemAtPath:v72 error:&v118];

  if (v68)
  {
    v73 = v118;
  }

  else
  {
    v84 = v118;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    v85 = static os_log_type_t.error.getter();
    v86 = swift_allocObject();
    *(v86 + 16) = xmmword_100400790;
    v87 = URL.path.getter();
    *(v86 + 56) = &type metadata for String;
    *(v86 + 64) = v64;
    *(v86 + 32) = v87;
    *(v86 + 40) = v88;
    os_log(_:dso:log:_:_:)(v85, &_mh_execute_header, v61, "Failed to delete existing from source %{public}s", 48, 2, v86);
  }

  type metadata accessor for MoveOperationError(0);
  sub_1002C01FC(&qword_10057CB70, type metadata accessor for MoveOperationError, &unk_10040A0DC);
  v89 = swift_allocError();
  *v90 = v113;
  swift_storeEnumTagMultiPayload();
  v91 = *(v1 + OBJC_IVAR____TtC8Podcasts13BaseOperation_resultHandler);
  if (v91)
  {
    v92 = *(v1 + OBJC_IVAR____TtC8Podcasts13BaseOperation_resultHandler + 8);
    v120 = sub_100168088(&qword_100578BE0, &unk_100405DA0);
    v118 = v89;
    v119 = 1;
    swift_errorRetain();
    sub_100013CB4(v91, v92);
    swift_errorRetain();
    v91(&v118);
    sub_100037470(v91, v92);
    sub_100004590(&v118);
  }

  else
  {
    swift_errorRetain();
  }

  v93 = OBJC_IVAR____TtC8Podcasts13BaseOperation_lock;
  v94 = *(v1 + OBJC_IVAR____TtC8Podcasts13BaseOperation_lock);
  swift_errorRetain();
  [v94 lock];
  *(v1 + OBJC_IVAR____TtC8Podcasts13BaseOperation__error) = v89;
  swift_errorRetain();

  [*(v1 + v93) unlock];

  sub_10003172C();

LABEL_33:
}

void sub_1002BFF64()
{
  sub_10003163C(*(v0 + OBJC_IVAR____TtC8Podcasts17MoveFileOperation_input), *(v0 + OBJC_IVAR____TtC8Podcasts17MoveFileOperation_input + 8));
  v1 = OBJC_IVAR____TtC8Podcasts17MoveFileOperation_destination;
  v2 = type metadata accessor for URL();
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + OBJC_IVAR____TtC8Podcasts17MoveFileOperation_source, v2);
  v4 = *(v0 + OBJC_IVAR____TtC8Podcasts17MoveFileOperation_log);
}

uint64_t sub_1002C0110(uint64_t a1)
{
  result = type metadata accessor for URL();
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

uint64_t sub_1002C01BC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1 + OBJC_IVAR____TtC8Podcasts17MoveFileOperation_input;
  v3 = *(v1 + OBJC_IVAR____TtC8Podcasts17MoveFileOperation_input);
  *a1 = v3;
  v4 = *(v2 + 8);
  *(a1 + 8) = v4;
  return sub_1000314A0(v3, v4);
}

uint64_t sub_1002C01FC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1002C0244(uint64_t a1)
{
  result = type metadata accessor for URL();
  if (v2 <= 0x3F)
  {
    result = sub_10001206C();
    if (v3 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1002C0300(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MoveOperationError(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1002C0364(uint64_t a1)
{
  v2 = type metadata accessor for MoveOperationError(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1002C0400(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *((swift_isaMask & *v4) + 0x180);
  v6 = type metadata accessor for OperationResult(0, *((swift_isaMask & *v4) + 0x170), a3, a4);
  (*(*(v6 - 8) + 8))(&v4[v5], v6);
}

void sub_1002C04F8()
{
  v1 = v0;
  type metadata accessor for InteractionContext.Page();
  __chkstk_darwin();
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for InteractionContext();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v8 = *(v0 + 64);
  if (v8)
  {

    dispatch thunk of ContextActionsConfiguration.context.getter();

    InteractionContext.page.getter();
    (*(v5 + 8))(v7, v4);
    LOBYTE(v8) = InteractionContext.Page.isShowPage.getter();
    sub_1002AF030(v3, &type metadata accessor for InteractionContext.Page);
  }

  *(v1 + 72) = v8 & 1;
}

uint64_t sub_1002C0674()
{
  type metadata accessor for PodcastContextActionDataType(0);
  __chkstk_darwin();
  v2 = &v12 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v0 + 72) == 1 && (v3 = *(v0 + 56)) != 0)
  {
    v4 = OBJC_IVAR____TtC8Podcasts24PodcastContextActionData_type;
    swift_beginAccess();
    sub_1001A1560(v3 + v4, v2, v5);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v6 = type metadata accessor for PodcastContextActionDataType;
    }

    else
    {
      type metadata accessor for PodcastContextActionDataType.Kind(0);
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        v8 = objc_opt_self();
        v9 = String._bridgeToObjectiveC()();

        v10 = [v8 predicateForAllEpisodesOnPodcastUuid:v9];

        sub_1000044A0((v0 + 16), *(v0 + 40));
        v7 = dispatch thunk of LibraryActionControllerProtocol.hasEpisodesThatAre(visuallyPlayed:baseEpisodesPredicate:)();

        return v7 & 1;
      }

      v6 = type metadata accessor for PodcastContextActionDataType.Kind;
    }

    sub_1002AF030(v2, v6);
    v7 = 0;
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

void sub_1002C0828()
{
  sub_100168088(&unk_10057BB90, &unk_100402D60);
  __chkstk_darwin();
  v2 = &v17[-v1];
  v3 = type metadata accessor for PresentationSource();
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v17[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  type metadata accessor for PodcastContextActionDataType(0);
  __chkstk_darwin();
  v8 = &v17[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (*(v0 + 72) == 1)
  {
    v9 = *(v0 + 56);
    if (v9)
    {
      v10 = OBJC_IVAR____TtC8Podcasts24PodcastContextActionData_type;
      swift_beginAccess();
      sub_1001A1560(v9 + v10, v8, v11);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v12 = type metadata accessor for PodcastContextActionDataType;
      }

      else
      {
        type metadata accessor for PodcastContextActionDataType.Kind(0);
        if (swift_getEnumCaseMultiPayload() != 1)
        {
          swift_beginAccess();
          if (*(v0 + 64))
          {
            v13 = v0;

            dispatch thunk of ContextActionsConfiguration.presentationSource.getter();

            if ((*(v4 + 48))(v2, 1, v3) != 1)
            {
              (*(v4 + 32))(v6, v2, v3);
              v14 = objc_opt_self();
              v15 = String._bridgeToObjectiveC()();

              v16 = [v14 predicateForAllEpisodesOnPodcastUuid:v15];

              sub_1000044A0((v13 + 16), *(v13 + 40));
              dispatch thunk of LibraryActionControllerProtocol.handleMarkingEpisodesAsUnplayed(source:baseEpisodesPredicate:)();

              (*(v4 + 8))(v6, v3);
              return;
            }
          }

          else
          {

            (*(v4 + 56))(v2, 1, 1, v3);
          }

          sub_100009104(v2, &unk_10057BB90, &unk_100402D60);
          return;
        }

        v12 = type metadata accessor for PodcastContextActionDataType.Kind;
      }

      sub_1002AF030(v8, v12);
    }
  }
}

uint64_t sub_1002C0B88()
{
  sub_100004590((v0 + 16));

  v1 = OBJC_IVAR____TtC8Podcasts30MarkAllAsUnplayedContextAction_metricsLabel;
  v2 = type metadata accessor for MetricsLabel();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_100009104(v0 + OBJC_IVAR____TtC8Podcasts30MarkAllAsUnplayedContextAction_contextActionType, &qword_100575870, &unk_100402BE0);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for MarkAllAsUnplayedContextAction(uint64_t a1)
{
  result = qword_10057CD08;
  if (!qword_10057CD08)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1002C0CC0(uint64_t a1)
{
  type metadata accessor for MetricsLabel();
  if (v1 <= 0x3F)
  {
    sub_1001C25E8(319);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_1002C0DCC()
{
  v1 = *(v0 + 80);

  return v1;
}

uint64_t sub_1002C0DFC()
{
  v1 = *(v0 + 104);

  return v1;
}

uint64_t sub_1002C0E2C@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC8Podcasts30MarkAllAsUnplayedContextAction_metricsLabel;
  v4 = type metadata accessor for MetricsLabel();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_1002C0EC0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return sub_10023276C(a1, a2, WitnessTable);
}

uint64_t sub_1002C0F20(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return sub_100232848(a1, a2, WitnessTable);
}

id sub_1002C0F80(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return sub_100232ADC(a1, a2, WitnessTable);
}

uint64_t sub_1002C0FE4(uint64_t a1)
{
  result = sub_1002C106C(&unk_1005822A0, &unk_10040A298);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1002C1028(uint64_t a1)
{
  result = sub_1002C106C(&qword_10057CE30, &unk_10040A2F0);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1002C106C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for MarkAllAsUnplayedContextAction(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t RunOnceAsyncMigrationStep.migrationKey.getter(uint64_t a1, uint64_t a2)
{
  (*(*(a2 + 8) + 8))(a1);

  return StaticString.description.getter();
}

uint64_t RunOnceMigrationStep.requiresMigration.getter(uint64_t a1, uint64_t a2)
{
  v4 = [objc_opt_self() standardUserDefaults];
  (*(a2 + 16))(a1, a2);
  v5 = String._bridgeToObjectiveC()();

  LODWORD(a2) = [v4 BOOLForKey:v5];

  return a2 ^ 1;
}

void sub_1002C11BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v13 = StaticString.description.getter();
  v14 = v3;

  v4._countAndFlagsBits = 0x726F7272652ELL;
  v4._object = 0xE600000000000000;
  String.append(_:)(v4);

  v5 = [objc_opt_self() sharedInstance];
  v6 = [v5 privateQueueContext];

  v17 = sub_100184D14;
  v18 = 0;
  v13 = _NSConcreteStackBlock;
  v14 = 1107296256;
  v15 = sub_10000F038;
  v16 = &unk_1004EA7D0;
  v7 = _Block_copy(&v13);
  [v6 performBlockAndWaitWithSave:v7];
  _Block_release(v7);

  v8 = objc_opt_self();
  v9 = [v8 standardUserDefaults];
  StaticString.description.getter();
  v10 = String._bridgeToObjectiveC()();

  [v9 setBool:1 forKey:v10];

  v11 = [v8 standardUserDefaults];
  v12 = String._bridgeToObjectiveC()();

  [v11 removeObjectForKey:v12];
}

void sub_1002C13C8(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t), uint64_t a5)
{
  v37 = a5;
  v7 = a3;
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  __chkstk_darwin();
  v38 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39[0] = StaticString.description.getter();
  v39[1] = v11;

  v12._countAndFlagsBits = 0x726F7272652ELL;
  v12._object = 0xE600000000000000;
  String.append(_:)(v12);

  a4(v13);
  if (v5)
  {
    v35 = v9;
    v36 = v8;
    v14 = objc_opt_self();
    v15 = [v14 standardUserDefaults];
    StaticString.description.getter();
    v16 = String._bridgeToObjectiveC()();

    [v15 setBool:0 forKey:v16];

    v17 = [v14 standardUserDefaults];
    v39[0] = v5;
    swift_errorRetain();
    sub_100168088(&qword_100575C50, &unk_100402650);
    String.init<A>(describing:)();
    v18 = String._bridgeToObjectiveC()();

    v19 = String._bridgeToObjectiveC()();

    [v17 setObject:v18 forKey:v19];

    if ((v7 & 0x100) != 0)
    {
      v25 = v38;
      static Logger.database.getter();
      swift_errorRetain();
      v26 = Logger.logObject.getter();
      v27 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        v39[0] = swift_slowAlloc();
        *v28 = 136315394;
        v29 = _typeName(_:qualified:)();
        v31 = sub_1000153E0(v29, v30, v39);

        *(v28 + 4) = v31;
        *(v28 + 12) = 2080;
        v39[3] = v5;
        swift_errorRetain();
        v32 = String.init<A>(describing:)();
        v34 = sub_1000153E0(v32, v33, v39);

        *(v28 + 14) = v34;
        _os_log_impl(&_mh_execute_header, v26, v27, "Failed migration step silently: %s: %s.", v28, 0x16u);
        swift_arrayDestroy();
      }

      else
      {
      }

      (*(v35 + 8))(v25, v36);
    }

    else
    {
      swift_willThrow();
    }
  }

  else
  {
    v20 = objc_opt_self();
    v21 = [v20 standardUserDefaults];
    StaticString.description.getter();
    v22 = String._bridgeToObjectiveC()();

    [v21 setBool:1 forKey:v22];

    v23 = [v20 standardUserDefaults];
    v24 = String._bridgeToObjectiveC()();

    [v23 removeObjectForKey:v24];
  }
}

void sub_1002C1840(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v15 = StaticString.description.getter();
  v16 = v3;

  v4._countAndFlagsBits = 0x726F7272652ELL;
  v4._object = 0xE600000000000000;
  String.append(_:)(v4);

  v5 = [objc_opt_self() sharedInstance];
  v6 = [v5 privateQueueContext];

  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  v19 = sub_1002C22AC;
  v20 = v7;
  v15 = _NSConcreteStackBlock;
  v16 = 1107296256;
  v17 = sub_10000F038;
  v18 = &unk_1004EA7A8;
  v8 = _Block_copy(&v15);
  v9 = v6;

  [v9 performBlockAndWaitWithSave:v8];
  _Block_release(v8);

  v10 = objc_opt_self();
  v11 = [v10 standardUserDefaults];
  StaticString.description.getter();
  v12 = String._bridgeToObjectiveC()();

  [v11 setBool:1 forKey:v12];

  v13 = [v10 standardUserDefaults];
  v14 = String._bridgeToObjectiveC()();

  [v13 removeObjectForKey:v14];
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> RunOnceMigrationStep.performMigration()()
{
  v3 = v1;
  v4 = v0;
  v48 = *(v0 - 8);
  __chkstk_darwin();
  v47 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin();
  v49 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v3 + 16);
  v53 = v10(v4, v3, v8);
  v54 = v11;

  v12._countAndFlagsBits = 0x726F7272652ELL;
  v12._object = 0xE600000000000000;
  String.append(_:)(v12);

  v50 = v53;
  v51 = v54;
  v13 = *(v3 + 32);
  v14 = v52;
  v52 = v4;
  v13(v4, v3);
  if (v14)
  {
    v45 = v7;
    v46 = v6;
    v15 = objc_opt_self();
    v16 = [v15 standardUserDefaults];
    v17 = v52;
    (v10)(v52, v3);
    v18 = String._bridgeToObjectiveC()();

    [v16 setBool:0 forKey:v18];

    v19 = [v15 standardUserDefaults];
    v53 = v14;
    swift_errorRetain();
    v20 = sub_100168088(&qword_100575C50, &unk_100402650);
    String.init<A>(describing:)();
    v21 = String._bridgeToObjectiveC()();

    v22 = String._bridgeToObjectiveC()();

    [v19 setObject:v21 forKey:v22];

    if ((*(v3 + 24))(v17, v3))
    {
      v23 = v49;
      static Logger.database.getter();
      v25 = v47;
      v24 = v48;
      (*(v48 + 16))(v47, v2, v52);
      swift_errorRetain();
      v26 = Logger.logObject.getter();
      v27 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        v50 = v20;
        v29 = v28;
        v51 = swift_slowAlloc();
        v53 = v51;
        *v29 = 136315394;
        v30 = v52;
        swift_getDynamicType();
        v31 = _typeName(_:qualified:)();
        v32 = v25;
        v33 = v31;
        v35 = v34;
        (*(v24 + 8))(v32, v30);
        v36 = sub_1000153E0(v33, v35, &v53);

        *(v29 + 4) = v36;
        *(v29 + 12) = 2080;
        v55 = v14;
        swift_errorRetain();
        v37 = String.init<A>(describing:)();
        v39 = sub_1000153E0(v37, v38, &v53);

        *(v29 + 14) = v39;
        _os_log_impl(&_mh_execute_header, v26, v27, "Failed migration step silently: %s: %s.", v29, 0x16u);
        swift_arrayDestroy();

        (*(v45 + 8))(v23, v46);
      }

      else
      {

        (*(v45 + 8))(v23, v46);
        (*(v24 + 8))(v25, v52);
      }
    }

    else
    {
      swift_willThrow();
    }
  }

  else
  {
    v40 = objc_opt_self();
    v41 = [v40 standardUserDefaults];
    (v10)(v52, v3);
    v42 = String._bridgeToObjectiveC()();

    [v41 setBool:1 forKey:v42];

    v43 = [v40 standardUserDefaults];
    v44 = String._bridgeToObjectiveC()();

    [v43 removeObjectForKey:v44];
  }
}

id RunOnceAsyncMigrationStep.userDefaults.getter()
{
  v0 = [objc_opt_self() standardUserDefaults];

  return v0;
}

void sub_1002C20C0(uint64_t a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4)
{
  if (*(v4 + 17))
  {
    v5 = 256;
  }

  else
  {
    v5 = 0;
  }

  sub_1002C13C8(*v4, *(v4 + 8), v5 | *(v4 + 16), a3, a4);
}

uint64_t sub_1002C2190(uint64_t a1, uint64_t a2, uint64_t (*a3)(void, void, void))
{
  if (*(v3 + 17))
  {
    v4 = 256;
  }

  else
  {
    v4 = 0;
  }

  return a3(*v3, *(v3 + 8), v4 | *(v3 + 16));
}

uint64_t sub_1002C21CC(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

uint64_t sub_1002C2204(unint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(unint64_t **, uint64_t))
{
  v6 = a4(a1, a2);
  v8 = sub_1000153E0(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

_BYTE **sub_1002C2260(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

uint64_t sub_1002C2270(uint64_t (*a1)(void))
{
  a1();

  return _typeName(_:qualified:)();
}

void sub_1002C22B8(void *a1, uint64_t a2)
{
  v3 = v2;
  *(v3 + 32) = 0;
  *(v3 + 40) = 0;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = objc_allocWithZone(MTPropertyChangeQueryObserver);
  v6 = a1;
  v7 = String._bridgeToObjectiveC()();

  v8 = [v5 initWithEntityName:v7 predicate:v6];

  if (v8)
  {
    *(v3 + 16) = v8;
    sub_100168088(&qword_100574690, &unk_100401BA0);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_1004007E0;
    *(v9 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(v9 + 40) = v10;
    *(v9 + 48) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(v9 + 56) = v11;
    *(v9 + 64) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(v9 + 72) = v12;
    aBlock[6] = v9;

    sub_1001C3B80(v13);
    v14 = *(v3 + 16);
    isa = Array._bridgeToObjectiveC()().super.isa;
    [v14 setPropertyKeys:isa];

    [*(v3 + 16) startObserving];
    v16 = [*(v3 + 16) uuids];
    if (v16)
    {
      v17 = v16;

      v18 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

      v19 = *(v18 + 16);

      *(v3 + 24) = v19;
      v20 = *(v3 + 16);
      v21 = swift_allocObject();
      swift_weakInit();
      aBlock[4] = sub_1002C2958;
      aBlock[5] = v21;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1001D3764;
      aBlock[3] = &unk_1004EA8E8;
      v22 = _Block_copy(aBlock);
      v23 = v20;

      v24 = [v23 addResultsChangedHandler:v22];

      _Block_release(v22);
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_1002C2588(unint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (a1)
    {
      if (a1 >> 62)
      {
        v7 = result;
        v8 = _CocoaArrayWrapper.endIndex.getter();
        if (v8 < 0)
        {
          __break(1u);
        }

        a1 = v8;
        result = v7;
      }

      else
      {
        a1 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }
    }

    if (a1 == *(result + 24))
    {
    }

    *(result + 24) = a1;
    v4 = result;
    swift_beginAccess();
    v5 = *(v4 + 32);
    if (!v5)
    {
    }

    else
    {
      v6 = *(v4 + 40);

      v5(a1);

      return sub_1000112B4(v5, v6);
    }
  }

  return result;
}

uint64_t (*sub_1002C26A0())(void *a1)
{
  v1 = *v0;
  swift_beginAccess();
  v2 = *(v1 + 32);
  v3 = *(v1 + 40);
  if (v2)
  {
    v4 = swift_allocObject();
    *(v4 + 16) = v2;
    *(v4 + 24) = v3;
    v5 = sub_1002ABF4C;
  }

  else
  {
    v5 = 0;
  }

  sub_100013CB4(v2, v3);
  return v5;
}

uint64_t sub_1002C273C(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = a1;
    *(v5 + 24) = a2;
    v6 = sub_1002ABF48;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *v2;
  swift_beginAccess();
  v8 = *(v7 + 32);
  v9 = *(v7 + 40);
  *(v7 + 32) = v6;
  *(v7 + 40) = v5;
  return sub_1000112B4(v8, v9);
}

void (*sub_1002C27D4(uint64_t *a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = *v1;
  *(v3 + 40) = *v1;
  swift_beginAccess();
  v6 = *(v5 + 32);
  if (v6)
  {
    v7 = *(v5 + 40);
    v8 = swift_allocObject();
    *(v8 + 16) = v6;
    *(v8 + 24) = v7;
    v9 = sub_1002ABF40;
  }

  else
  {
    v9 = 0;
    v8 = 0;
  }

  *(v4 + 24) = v9;
  *(v4 + 32) = v8;
  return sub_1002C28A0;
}

void sub_1002C28A0(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 24);
  if (v3)
  {
    if (a2)
    {
      v4 = sub_1002ABF38;
    }

    else
    {
      v4 = sub_1002ABF48;
    }

    v5 = v2[4];
    v6 = swift_allocObject();
    *(v6 + 16) = v3;
    *(v6 + 24) = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  v7 = v2[5];
  *(v7 + 32) = v4;
  *(v7 + 40) = v6;
  swift_endAccess();

  free(v2);
}

unint64_t sub_1002C2960(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return sub_1002C29B4(a1, WitnessTable);
}

unint64_t sub_1002C29B4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin();
  v12 = aBlock - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = (*(a2 + 16))(a1, a2, v10) & 1;
  result = sub_1002C445C(v13, a1, a2);
  if (result)
  {
    sub_10002BD04();
    v15 = static OS_dispatch_queue.main.getter();
    v16 = swift_allocObject();
    *(v16 + 16) = v13;
    aBlock[4] = sub_1002C4D20;
    aBlock[5] = v16;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10000F038;
    aBlock[3] = &unk_1004EA9B0;
    v17 = _Block_copy(aBlock);

    static DispatchQoS.unspecified.getter();
    aBlock[0] = _swiftEmptyArrayStorage;
    sub_1001D293C();
    sub_100168088(&unk_100575CD0, &unk_100400B50);
    sub_100182E30();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v17);

    (*(v5 + 8))(v7, v4);
    return (*(v9 + 8))(v12, v8);
  }

  return result;
}

uint64_t sub_1002C2C68(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return sub_1002C2CBC(a1, WitnessTable);
}

uint64_t sub_1002C2CBC(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for PreviewingPresentationHint();
  v55 = *(v5 - 8);
  __chkstk_darwin();
  v7 = v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for EpisodeOffer();
  v56 = *(v8 - 8);
  __chkstk_darwin();
  v10 = v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for EpisodeContextActionDataType(0);
  __chkstk_darwin();
  v54 = (v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = __chkstk_darwin();
  v15 = (v46 - v14);
  v16 = *(a2 + 8);
  result = (*(v16 + 16))(a1, v16, v13);
  if (result)
  {
    v18 = result;
    v53 = a1;
    v19 = OBJC_IVAR____TtC8Podcasts24EpisodeContextActionData_type;
    swift_beginAccess();
    sub_1001EAFE4(v18 + v19, v15, v20);
    v52 = v11;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v47 = v16;
      v48 = v18;
      v49 = v7;
      v50 = v5;
      v21 = *v15;
      v57 = _swiftEmptyArrayStorage;
      v22 = *(v21 + 16);
      v51 = v2;
      if (v22)
      {
        v23 = v56 + 16;
        v56 = *(v56 + 16);
        v24 = *(v23 + 64);
        v46[1] = v21;
        v25 = v21 + ((v24 + 32) & ~v24);
        v26 = *(v23 + 56);
        v27 = (v23 - 8);
        v28 = _swiftEmptyArrayStorage;
        (v56)(v10, v25, v8);
        while (1)
        {
          v29 = sub_100294534();
          (*v27)(v10, v8);
          if (v29)
          {
            v30 = v29;
            specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
            if (*((v57 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v57 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            }

            specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

            v28 = v57;
          }

          v25 += v26;
          if (!--v22)
          {
            break;
          }

          (v56)(v10, v25, v8);
        }
      }

      else
      {

        v28 = _swiftEmptyArrayStorage;
      }

      v33 = v54;
      v32 = v55;
      *v54 = v28;
      swift_storeEnumTagMultiPayload();
      v34 = *(v32 + 16);
      v36 = v48;
      v35 = v49;
      v37 = v50;
      v34(v49, v48 + OBJC_IVAR____TtC8Podcasts24EpisodeContextActionData_presentationHint, v50);
      v38 = *(v36 + OBJC_IVAR____TtC8Podcasts24EpisodeContextActionData_hasHeaderChevron);
      type metadata accessor for EpisodeContextActionData(0);
      v39 = swift_allocObject();
      v40 = OBJC_IVAR____TtC8Podcasts24EpisodeContextActionData_mangedContextProvider;
      *(v39 + v40) = [objc_opt_self() sharedInstance];
      sub_1001EAFE4(v33, v39 + OBJC_IVAR____TtC8Podcasts24EpisodeContextActionData_type, v41);
      v34((v39 + OBJC_IVAR____TtC8Podcasts24EpisodeContextActionData_presentationHint), v35, v37);
      *(v39 + OBJC_IVAR____TtC8Podcasts24EpisodeContextActionData_hasHeaderChevron) = v38;
      sub_100399908();
      v42.n128_f64[0] = (*(v32 + 8))(v35, v37);
      sub_1001EDA30(v33, v42);
      v43 = v47;
      v44 = *(v47 + 24);

      v44(v45, v53, v43);
    }

    else
    {

      return sub_1001EDA30(v15, v31);
    }
  }

  return result;
}

BOOL sub_1002C3150(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return sub_1002C31A4(a1, WitnessTable);
}

BOOL sub_1002C31A4(uint64_t a1, unint64_t a2)
{
  v4 = (*(a2 + 16))();
  (*(a2 + 24))(a1, a2);
  dispatch thunk of PlaybackController.queueController.getter();

  v5 = dispatch thunk of PlaybackController.QueueController.hasHardQueue.getter();

  if ((v4 & 1) == 0)
  {
    if (v5)
    {
      goto LABEL_3;
    }

    return 0;
  }

  if (v5)
  {
    return 0;
  }

LABEL_3:
  v7 = *(sub_1002C3574(a1, a2, v6) + 2);

  if (v7)
  {
    return 1;
  }

  v9 = sub_1002C39D0(a1, a2, v8);
  v10 = v9 >> 62 ? _CocoaArrayWrapper.endIndex.getter() : *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);

  if (v10 > 0)
  {
    return 1;
  }

  v13 = sub_1002C3C74(a1, a2, v11);
  if (v13 >> 62)
  {
    v14 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return v14 > 0;
}

BOOL sub_1002C3310(uint64_t a1, unint64_t a2)
{
  if (((*(a2 + 16))() & 1) == 0)
  {
    (*(a2 + 24))(a1, a2);
    dispatch thunk of PlaybackController.queueController.getter();

    v5 = dispatch thunk of PlaybackController.QueueController.hasHardQueue.getter();

    if ((v5 & 1) == 0)
    {
      return 0;
    }
  }

  v6 = *(sub_1002C3574(a1, a2, v4) + 2);

  if (v6)
  {
    return 1;
  }

  v8 = sub_1002C39D0(a1, a2, v7);
  v9 = v8 >> 62 ? _CocoaArrayWrapper.endIndex.getter() : *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);

  if (v9 > 0)
  {
    return 1;
  }

  v12 = sub_1002C3C74(a1, a2, v10);
  if (v12 >> 62)
  {
    v13 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return v13 > 0;
}

unint64_t sub_1002C3478(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return sub_1002C29B4(a1, WitnessTable);
}

uint64_t sub_1002C34CC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return sub_1002C2CBC(a1, WitnessTable);
}

BOOL sub_1002C3520(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return sub_1002C31A4(a1, WitnessTable);
}

char *sub_1002C3574(uint64_t a1, uint64_t a2, __n128 a3)
{
  type metadata accessor for EpisodeContextActionDataType(0);
  __chkstk_darwin();
  v6 = (v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin();
  v8 = v41 - v7;
  v9 = __chkstk_darwin();
  v11 = v41 - v10;
  v12 = (*(*(a2 + 8) + 16))(a1, v9);
  if (!v12)
  {
    return _swiftEmptyArrayStorage;
  }

  v13 = OBJC_IVAR____TtC8Podcasts24EpisodeContextActionData_type;
  v14 = v12;
  swift_beginAccess();
  sub_1001EAFE4(v14 + v13, v8, v15);

  sub_1002288DC(v8, v11, v16);
  sub_1001EAFE4(v11, v6, v17);
  if (swift_getEnumCaseMultiPayload())
  {
    sub_1001EDA30(v11, v18);
    sub_1001EDA30(v6, v19);
    return _swiftEmptyArrayStorage;
  }

  v42 = v11;
  v21 = *v6;

  v22 = *(v21 + 16);
  v41[1] = v21;
  if (v22)
  {
    v23 = objc_opt_self();
    v24 = 0;
    v25 = 0;
    v44 = v47;
    v45 = v23;
    v43 = _swiftEmptyArrayStorage;
    v26 = (v21 + 40);
    while (1)
    {
      v27 = v25;
      v28 = *(v26 - 1);
      v29 = *v26;

      v30 = [v45 sharedInstance];
      v31 = [v30 mainOrPrivateContext];

      v50 = 1;
      v49 = 1;
      v48 = 0;
      v25 = swift_allocObject();
      v25[2] = v31;
      v25[3] = v28;
      v25[4] = v29;
      v25[5] = &v50;
      v25[6] = &v49;
      v25[7] = &v48;

      v32 = v31;
      sub_1000112B4(v24, v27);
      v33 = swift_allocObject();
      *(v33 + 16) = sub_1002C4D10;
      *(v33 + 24) = v25;
      v47[2] = sub_10002D7F0;
      v47[3] = v33;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      v47[0] = sub_10002D904;
      v47[1] = &unk_1004EA960;
      v34 = _Block_copy(aBlock);

      [v32 performBlockAndWait:v34];
      _Block_release(v34);
      LOBYTE(v34) = swift_isEscapingClosureAtFileLocation();

      if (v34)
      {
        break;
      }

      if ((v50 & 1) != 0 || v49 == 1 || (v48 & 1) == 0)
      {
      }

      else
      {
        v35 = v43;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v35 = sub_100243134(0, *(v35 + 2) + 1, 1, v35);
        }

        v37 = *(v35 + 2);
        v36 = *(v35 + 3);
        v43 = v35;
        if (v37 >= v36 >> 1)
        {
          v43 = sub_100243134((v36 > 1), v37 + 1, 1, v43);
        }

        v38 = v43;
        *(v43 + 2) = v37 + 1;
        v39 = &v38[16 * v37];
        *(v39 + 4) = v28;
        *(v39 + 5) = v29;
      }

      v26 += 2;
      v24 = sub_1002C4D10;
      if (!--v22)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
  }

  else
  {
    v24 = 0;
    v25 = 0;
    v43 = _swiftEmptyArrayStorage;
LABEL_19:

    sub_1001EDA30(v42, v40);
    sub_1000112B4(v24, v25);
    return v43;
  }

  return result;
}

void *sub_1002C39D0(uint64_t a1, uint64_t a2, __n128 a3)
{
  type metadata accessor for EpisodeContextActionDataType(0);
  __chkstk_darwin();
  v6 = &v28[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v8 = &v28[-v7];
  v9 = __chkstk_darwin();
  v11 = &v28[-v10];
  v12 = _swiftEmptyArrayStorage;
  v29 = _swiftEmptyArrayStorage;
  v13 = (*(*(a2 + 8) + 16))(a1, v9);
  if (!v13)
  {
    return v12;
  }

  v14 = OBJC_IVAR____TtC8Podcasts24EpisodeContextActionData_type;
  v15 = v13;
  swift_beginAccess();
  sub_1001EAFE4(v15 + v14, v8, v16);

  sub_1002288DC(v8, v11, v17);
  sub_1001EAFE4(v11, v6, v18);
  if (swift_getEnumCaseMultiPayload() != 2)
  {
    sub_1001EDA30(v11, v19);
    v11 = v6;
LABEL_21:
    sub_1001EDA30(v11, v27);
    return v12;
  }

  v20 = *v6;
  if (!(v20 >> 62))
  {
    v21 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v21)
    {
      goto LABEL_5;
    }

LABEL_20:

    goto LABEL_21;
  }

  v21 = _CocoaArrayWrapper.endIndex.getter();
  if (!v21)
  {
    goto LABEL_20;
  }

LABEL_5:
  result = type metadata accessor for RestrictionsController();
  if (v21 >= 1)
  {
    for (i = 0; i != v21; ++i)
    {
      if ((v20 & 0xC000000000000001) != 0)
      {
        v24 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v24 = *(v20 + 8 * i + 32);
      }

      v25 = v24;
      if ((static RestrictionsController.isExplicitContentAllowed.getter() & 1) != 0 || ([v25 isExplicit] & 1) == 0) && (objc_msgSend(v25, "isEntitled"))
      {
        v26 = v25;
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v29 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v29 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

        v12 = v29;
      }

      else
      {
      }
    }

    goto LABEL_20;
  }

  __break(1u);
  return result;
}

void *sub_1002C3C74(uint64_t a1, unint64_t a2, __n128 a3)
{
  type metadata accessor for EpisodeContextActionDataType(0);
  __chkstk_darwin();
  v7 = (&v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = __chkstk_darwin();
  v10 = &v52 - v9;
  v11 = *(*(a2 + 8) + 16);
  v54 = a1;
  v55 = v3;
  v12 = v11(a1, v8);
  if (!v12)
  {
    return _swiftEmptyArrayStorage;
  }

  v13 = v12;
  v53 = a2;
  v14 = OBJC_IVAR____TtC8Podcasts24EpisodeContextActionData_type;
  swift_beginAccess();
  sub_1001EAFE4(v13 + v14, v10, v15);
  if (swift_getEnumCaseMultiPayload() == 3)
  {
    sub_1001EDA30(v10, v16);
    sub_1001EAFE4(v13 + v14, v7, v17);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v52 = v13;
    if (EnumCaseMultiPayload == 3)
    {
      v20 = *v7;
      v57 = _swiftEmptyArrayStorage;
      v21 = v53;
      if (v20 >> 62)
      {
        goto LABEL_26;
      }

      for (i = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
      {
        v23 = 0;
        v21 = v20 & 0xC000000000000001;
        while (1)
        {
          if (v21)
          {
            v24 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v23 >= *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_25;
            }

            v24 = *(v20 + 8 * v23 + 32);
          }

          v25 = v24;
          v26 = v23 + 1;
          if (__OFADD__(v23, 1))
          {
            break;
          }

          v27 = MPCPlayerResponseItem.podcastEpisode.getter();
          if (v27)
          {
            v28 = v27;
            if (([v27 isExplicitEpisode] & 1) == 0)
            {

LABEL_18:
              specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
              specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
              specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
              specialized ContiguousArray._endMutation()();
              goto LABEL_8;
            }

            type metadata accessor for RestrictionsController();
            v29 = static RestrictionsController.isExplicitContentAllowed.getter();

            if (v29)
            {
              goto LABEL_18;
            }
          }

LABEL_8:
          ++v23;
          if (v26 == i)
          {
            v30 = v57;
            v21 = v53;
            goto LABEL_28;
          }
        }

        __break(1u);
LABEL_25:
        __break(1u);
LABEL_26:
        ;
      }

      v30 = _swiftEmptyArrayStorage;
LABEL_28:
    }

    else
    {
      sub_1001EDA30(v7, v19);
      v30 = _swiftEmptyArrayStorage;
      v21 = v53;
    }

    v32 = v54;
    if (((*(v21 + 16))(v54, v21) & 1) == 0)
    {
      v57 = _swiftEmptyArrayStorage;
      if (v30 >> 62)
      {
        goto LABEL_65;
      }

      v45 = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v46 = v54;
      if (v45)
      {
        goto LABEL_50;
      }

LABEL_66:

      return v57;
    }

    (*(v21 + 24))(v32, v21);
    v21 = dispatch thunk of PlaybackController.queueController.getter();

    ItemContent = dispatch thunk of PlaybackController.QueueController.hardQueueFirstItemContentID.getter();
    v35 = v34;

    if (v35)
    {
      v57 = _swiftEmptyArrayStorage;
      if (v30 >> 62)
      {
        v36 = _CocoaArrayWrapper.endIndex.getter();
        if (v36)
        {
LABEL_33:
          v37 = 0;
          v54 = v30 & 0xFFFFFFFFFFFFFF8;
          v55 = v30 & 0xC000000000000001;
          while (1)
          {
            if (v55)
            {
              v38 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              if (v37 >= *(v54 + 16))
              {
                goto LABEL_64;
              }

              v38 = *(v30 + 8 * v37 + 32);
            }

            v39 = v38;
            v40 = v37 + 1;
            if (__OFADD__(v37, 1))
            {
              break;
            }

            v21 = [v38 contentItemIdentifier];
            v41 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v43 = v42;

            if (v41 == ItemContent && v35 == v43)
            {
            }

            else
            {
              v21 = _stringCompareWithSmolCheck(_:_:expecting:)();

              if (v21)
              {
              }

              else
              {
                specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
                v21 = v57[2];
                specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
                specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
                specialized ContiguousArray._endMutation()();
              }
            }

            ++v37;
            if (v40 == v36)
            {
              goto LABEL_68;
            }
          }

          while (1)
          {
            __break(1u);
LABEL_64:
            __break(1u);
LABEL_65:
            v45 = _CocoaArrayWrapper.endIndex.getter();
            v46 = v54;
            if (!v45)
            {
              goto LABEL_66;
            }

LABEL_50:
            v47 = 0;
            while (1)
            {
              if ((v30 & 0xC000000000000001) != 0)
              {
                v48 = specialized _ArrayBuffer._getElementSlowPath(_:)();
              }

              else
              {
                if (v47 >= *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  goto LABEL_62;
                }

                v48 = *(v30 + 8 * v47 + 32);
              }

              v49 = v48;
              v50 = v47 + 1;
              if (__OFADD__(v47, 1))
              {
                break;
              }

              v56 = v48;
              if (sub_1002C42FC(&v56, v55, v46, v21))
              {
                specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
                specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
                v21 = v53;
                specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
                specialized ContiguousArray._endMutation()();
                v46 = v54;
              }

              else
              {
              }

              ++v47;
              if (v50 == v45)
              {
                goto LABEL_66;
              }
            }

            __break(1u);
LABEL_62:
            __break(1u);
          }
        }
      }

      else
      {
        v36 = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v36)
        {
          goto LABEL_33;
        }
      }

LABEL_68:

      return v57;
    }
  }

  else
  {

    sub_1001EDA30(v10, v31);
    return _swiftEmptyArrayStorage;
  }

  return v30;
}

void sub_1002C4228(void *a1, uint64_t a2, uint64_t a3, unsigned __int8 *a4, _BYTE *a5, unsigned __int8 *a6)
{
  v10 = String._bridgeToObjectiveC()();
  v11 = [a1 episodeForUuid:v10];

  if (v11)
  {
    type metadata accessor for RestrictionsController();
    if (static RestrictionsController.isExplicitContentAllowed.getter())
    {
      v12 = 0;
    }

    else
    {
      v12 = [v11 isExplicit];
    }

    *a4 = v12;
    *a5 = [v11 isExternalType];
    v13 = [v11 isEntitled];

    *a6 = v13;
  }
}

BOOL sub_1002C42FC(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for QueueModelSection();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin();
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(a4 + 24))(a3, a4, v8);
  dispatch thunk of PlaybackController.queueController.getter();

  (*(v7 + 104))(v10, enum case for QueueModelSection.hardQueue(_:), v6);
  v11 = dispatch thunk of PlaybackController.QueueController.queueSectionContainsItem(queueSection:item:)();

  (*(v7 + 8))(v10, v6);
  return (v11 & 1) == 0;
}

unint64_t sub_1002C445C(int a1, uint64_t a2, uint64_t a3)
{
  v76 = a1;
  v6 = type metadata accessor for PlaybackController.QueueCommand.Location();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = &v72 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v11 = &v72 - v10;
  __chkstk_darwin();
  v13 = &v72 - v12;
  type metadata accessor for EpisodeContextActionDataType(0);
  v14 = __chkstk_darwin();
  v16 = &v72 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = v3;
  v79 = a3;
  v17 = *(*(a3 + 8) + 16);
  v77 = a2;
  result = v17(a2, v14);
  if (!result)
  {
    return result;
  }

  v19 = result;
  v20 = OBJC_IVAR____TtC8Podcasts24EpisodeContextActionData_type;
  swift_beginAccess();
  sub_1001EAFE4(v19 + v20, v16, v21);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 3)
  {
    sub_1001EDA30(v16, v23);
    result = sub_1002C3C74(v77, v79, v44);
    v80 = result;
    v72 = v9;
    if (result >> 62)
    {
      result = _CocoaArrayWrapper.endIndex.getter();
      v45 = result;
    }

    else
    {
      v45 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v46 = *(v79 + 24);
    v74 = v7;
    v75 = v6;
    v73 = v19;
    if (v45)
    {
      if (v45 < 1)
      {
        __break(1u);
        return result;
      }

      v47 = 0;
      v32 = v80;
      v48 = v80 & 0xC000000000000001;
      do
      {
        if (v48)
        {
          v49 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v49 = *(v32 + 8 * v47 + 32);
        }

        v50 = v49;
        ++v47;
        v46(v77, v79);
        dispatch thunk of PlaybackController.queueController.getter();

        v51 = [v50 contentItemIdentifier];
        v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();

        dispatch thunk of PlaybackController.QueueController.removeItemFromQueue(identifier:)();

        v32 = v80;
      }

      while (v45 != v47);
    }

    else
    {
      v32 = v80;
      v48 = v80 & 0xC000000000000001;
    }

    v46(v77, v79);
    v79 = dispatch thunk of PlaybackController.queueController.getter();

    if (!v45)
    {
      goto LABEL_55;
    }

    v11 = 0;
    v56 = v32 & 0xFFFFFFFFFFFFFF8;
    v57 = _swiftEmptyArrayStorage;
    while (1)
    {
      v58 = v11;
      while (1)
      {
        if (v48)
        {
          v59 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v58 >= *(v56 + 16))
          {
            goto LABEL_63;
          }

          v59 = *(v32 + 8 * v58 + 32);
        }

        v60 = v59;
        v11 = v58 + 1;
        if (__OFADD__(v58, 1))
        {
LABEL_62:
          __break(1u);
LABEL_63:
          __break(1u);
          goto LABEL_64;
        }

        v61 = MPCPlayerResponseItem.podcastEpisode.getter();
        if (v61)
        {
          break;
        }

LABEL_41:
        ++v58;
        if (v11 == v45)
        {
          goto LABEL_55;
        }
      }

      v62 = v61;
      v63 = MPModelObject.adamID.getter();
      v6 = v64;

      v32 = v80;
      if (v6)
      {
        goto LABEL_41;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v57 = sub_1002433B0(0, *(v57 + 2) + 1, 1, v57);
      }

      v67 = *(v57 + 2);
      v66 = *(v57 + 3);
      if (v67 >= v66 >> 1)
      {
        v57 = sub_1002433B0((v66 > 1), v67 + 1, 1, v57);
      }

      *(v57 + 2) = v67 + 1;
      *&v57[8 * v67 + 32] = v63;
      if (v11 == v45)
      {
LABEL_55:

        v69 = v74;
        v68 = v75;
        v70 = &enum case for PlaybackController.QueueCommand.Location.queueHead(_:);
        if ((v76 & 1) == 0)
        {
          v70 = &enum case for PlaybackController.QueueCommand.Location.queueTail(_:);
        }

        v71 = v72;
        (*(v74 + 104))(v72, *v70, v75);
        dispatch thunk of PlaybackController.QueueController.addToQueue(adamIds:location:)();

        (*(v69 + 8))(v71, v68);
        return 0;
      }
    }
  }

  if (EnumCaseMultiPayload == 2)
  {
    v73 = v19;
    v74 = v7;
    v75 = v6;
    sub_1001EDA30(v16, v23);
    v28 = v79;
    v29 = v77;
    (*(v79 + 24))(v77, v79);
    v72 = dispatch thunk of PlaybackController.queueController.getter();

    v31 = sub_1002C39D0(v29, v28, v30);
    v32 = v31;
    v6 = v31 & 0xFFFFFFFFFFFFFF8;
    if (v31 >> 62)
    {
LABEL_64:
      v33 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v33 = *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v34 = 0;
    v80 = _swiftEmptyArrayStorage;
    while (v33 != v34)
    {
      if ((v32 & 0xC000000000000001) != 0)
      {
        v35 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v34 >= *(v6 + 16))
        {
          goto LABEL_61;
        }

        v35 = *(v32 + 8 * v34 + 32);
      }

      v36 = v35;
      v37 = v34 + 1;
      if (__OFADD__(v34, 1))
      {
        __break(1u);
LABEL_61:
        __break(1u);
        goto LABEL_62;
      }

      v38 = IMPlayerItem.adamID.getter();
      v40 = v39;

      ++v34;
      if ((v40 & 1) == 0)
      {
        v41 = v80;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v41 = sub_1002433B0(0, *(v41 + 2) + 1, 1, v41);
        }

        v43 = *(v41 + 2);
        v42 = *(v41 + 3);
        if (v43 >= v42 >> 1)
        {
          v41 = sub_1002433B0((v42 > 1), v43 + 1, 1, v41);
        }

        *(v41 + 2) = v43 + 1;
        v80 = v41;
        *&v41[8 * v43 + 32] = v38;
        v34 = v37;
      }
    }

    v54 = v74;
    v53 = v75;
    v55 = &enum case for PlaybackController.QueueCommand.Location.queueHead(_:);
    if ((v76 & 1) == 0)
    {
      v55 = &enum case for PlaybackController.QueueCommand.Location.queueTail(_:);
    }

    (*(v74 + 104))(v11, *v55, v75);
    dispatch thunk of PlaybackController.QueueController.addToQueue(adamIds:location:)();

    (*(v54 + 8))(v11, v53);
    return 1;
  }

  else
  {
    if (EnumCaseMultiPayload)
    {

      sub_1001EDA30(v16, v52);
      return 0;
    }

    sub_1001EDA30(v16, v23);
    v24 = v79;
    v25 = v77;
    (*(v79 + 24))(v77, v79);
    dispatch thunk of PlaybackController.queueController.getter();

    sub_1002C3574(v25, v24, v26);
    v27 = &enum case for PlaybackController.QueueCommand.Location.queueHead(_:);
    if ((v76 & 1) == 0)
    {
      v27 = &enum case for PlaybackController.QueueCommand.Location.queueTail(_:);
    }

    (*(v7 + 104))(v13, *v27, v6);
    dispatch thunk of PlaybackController.QueueController.addToQueue(uuids:location:)();

    (*(v7 + 8))(v13, v6);
    return 1;
  }
}

void sub_1002C4C1C(char a1)
{
  type metadata accessor for HUDViewController.HUDType();
  v4 = __chkstk_darwin();
  v5 = &enum case for HUDViewController.HUDType.playNext(_:);
  if ((a1 & 1) == 0)
  {
    v5 = &enum case for HUDViewController.HUDType.addToQueue(_:);
  }

  (*(v3 + 104))(&v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0), *v5, v4);
  v6 = objc_allocWithZone(type metadata accessor for HUDViewController());
  v7 = HUDViewController.init(type:)();
  dispatch thunk of HUDViewController.present()();
}

id sub_1002C4D28(uint64_t a1, uint64_t a2, int a3)
{
  v44 = a1;
  v43 = a3;
  sub_100168088(&unk_100575AE0, &unk_100405E80);
  __chkstk_darwin();
  v4 = v42 - v3;
  sub_100168088(&unk_100578410, &qword_100402DB0);
  __chkstk_darwin();
  v6 = v42 - v5;
  sub_100168088(&qword_10057CF40, qword_100405ED0);
  __chkstk_darwin();
  v8 = v42 - v7;
  v9 = type metadata accessor for FlowDestination();
  v45 = *(v9 - 8);
  v46 = v9;
  __chkstk_darwin();
  v11 = v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100168088(&unk_100578C10, &qword_100400B60);
  __chkstk_darwin();
  v13 = v42 - v12;
  v14 = type metadata accessor for ArtworkModel();
  v15 = *(v14 - 8);
  __chkstk_darwin();
  v17 = v42 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  Showcase.showArtwork.getter();
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    sub_100009104(v13, &unk_100578C10, &qword_100400B60);
    return 0;
  }

  sub_1001FBAE0(v13, v17);
  Showcase.clickAction.getter();
  if (!v48)
  {
    sub_1001A0664(v17);
    sub_100009104(aBlock, &qword_100578C20, &unk_100403D30);
    return 0;
  }

  sub_100168088(&unk_10057BB70, &qword_100401CB0);
  type metadata accessor for FlowAction();
  if ((swift_dynamicCast() & 1) == 0)
  {
    sub_1001A0664(v17);
    return 0;
  }

  v18 = v51;

  v19 = Action.title.getter();
  v21 = v20;

  if (!v21)
  {
    sub_1001A0664(v17);

    return 0;
  }

  v22 = HIBYTE(v21) & 0xF;
  if ((v21 & 0x2000000000000000) == 0)
  {
    v22 = v19 & 0xFFFFFFFFFFFFLL;
  }

  if (!v22)
  {
    sub_1001A0664(v17);

    return 0;
  }

  dispatch thunk of FlowAction.destination.getter();
  v42[1] = v18;
  v24 = v45;
  v23 = v46;
  if ((*(v45 + 48))(v8, 1, v46) == 1)
  {
    sub_1001A0664(v17);

    sub_100009104(v8, &qword_10057CF40, qword_100405ED0);
    return 0;
  }

  (*(v24 + 32))(v11, v8, v23);
  type metadata accessor for CarPlayPageLoadCoordinator(0);
  BaseObjectGraph.inject<A>(_:)();
  v26 = aBlock[0];
  sub_1002C5564();
  v28 = v27;
  v29 = String._bridgeToObjectiveC()();

  if (v28)
  {
    v30 = String._bridgeToObjectiveC()();
  }

  else
  {
    v30 = 0;
  }

  v31 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithText:v29 detailText:v30 image:0 accessoryImage:0 accessoryType:0];

  CarPlayPageLoadCoordinator.loadImage(for:into:)(v17, v31);
  v32 = sub_100168088(&unk_100575B10, &qword_100402DC8);
  v33 = *(v32 + 48);
  v34 = *(v32 + 64);
  v42[0] = v26;
  v35 = &v4[v34];
  FlowDestination.pageDestinationURL.getter();
  *&v4[v33] = FlowDestination.pageDestinationPage.getter();
  *v35 = Showcase.showAdamId.getter();
  v35[8] = v36 & 1;
  v37 = type metadata accessor for CarPlayTemplateInfo.TemplateType(0);
  swift_storeEnumTagMultiPayload();
  v38 = *(*(v37 - 8) + 56);
  v38(v4, 0, 1, v37);
  v38(v6, 1, 1, v37);
  v39 = type metadata accessor for CarPlayTemplateInfo(0);
  v40 = *(v39 + 20);
  sub_1001FBB44(v4, v6);
  v6[v40] = v43;
  (*(*(v39 - 8) + 56))(v6, 0, 1, v39);
  sub_1001D2AD4(v6);
  v49 = sub_1002C58C0;
  v50 = v44;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100372F30;
  v48 = &unk_1004EA9D8;
  v41 = _Block_copy(aBlock);

  [v31 setHandler:v41];
  _Block_release(v41);

  (*(v45 + 8))(v11, v46);
  sub_1001A0664(v17);
  return v31;
}

uint64_t sub_1002C5410(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_100168088(&qword_100578010, &qword_100401F60);
  __chkstk_darwin();
  v9 = &v14 - v8;
  static TaskPriority.userInitiated.getter();
  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v9, 0, 1, v10);
  type metadata accessor for MainActor();

  swift_unknownObjectRetain();

  v11 = static MainActor.shared.getter();
  v12 = swift_allocObject();
  v12[2] = v11;
  v12[3] = &protocol witness table for MainActor;
  v12[4] = a4;
  v12[5] = a1;
  v12[6] = a2;
  v12[7] = a3;
  sub_10023EE80(0, 0, v9, &unk_10040A450, v12);
}

uint64_t sub_1002C5564()
{
  v0 = type metadata accessor for HeaderModel.MetadataComponent();
  v1 = *(v0 - 8);
  __chkstk_darwin();
  v3 = (&v26 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for ExplicitContentPresenter();
  BaseObjectGraph.inject<A>(_:)();
  v28 = v35;
  v4 = Showcase.showMetadata.getter();
  v5 = *(v4 + 16);
  if (v5)
  {
    v7 = *(v1 + 16);
    v6 = v1 + 16;
    v8 = (*(v6 + 64) + 32) & ~*(v6 + 64);
    v26 = v4;
    v9 = v4 + v8;
    v33 = *(v6 + 56);
    v34 = v7;
    v10 = (v6 + 72);
    v32 = enum case for HeaderModel.MetadataComponent.category(_:);
    v30 = enum case for HeaderModel.MetadataComponent.explicit(_:);
    v27 = (v6 - 8);
    v29 = (v6 + 80);
    v11 = _swiftEmptyArrayStorage;
    v31 = v6;
    v7(v3, v4 + v8, v0);
    while (1)
    {
      v13 = (*v10)(v3, v0);
      if (v13 == v32)
      {
        (*v29)(v3, v0);
        v14 = *v3;
        v15 = v3[1];
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v11 = sub_100243134(0, *(v11 + 2) + 1, 1, v11);
        }

        v17 = *(v11 + 2);
        v16 = *(v11 + 3);
        if (v17 >= v16 >> 1)
        {
          v11 = sub_100243134((v16 > 1), v17 + 1, 1, v11);
        }

        *(v11 + 2) = v17 + 1;
        v12 = &v11[16 * v17];
        *(v12 + 4) = v14;
        *(v12 + 5) = v15;
      }

      else if (v13 == v30)
      {
        v18 = ExplicitContentPresenter.symbol.getter();
        v20 = v19;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v11 = sub_100243134(0, *(v11 + 2) + 1, 1, v11);
        }

        v22 = *(v11 + 2);
        v21 = *(v11 + 3);
        if (v22 >= v21 >> 1)
        {
          v11 = sub_100243134((v21 > 1), v22 + 1, 1, v11);
        }

        *(v11 + 2) = v22 + 1;
        v23 = &v11[16 * v22];
        *(v23 + 4) = v18;
        *(v23 + 5) = v20;
      }

      else
      {
        (*v27)(v3, v0);
      }

      v9 += v33;
      if (!--v5)
      {
        break;
      }

      v34(v3, v9, v0);
    }
  }

  else
  {

    v11 = _swiftEmptyArrayStorage;
  }

  v35 = v11;
  static String.eyebrowSeparatorSymbol.getter();
  sub_100168088(&qword_10057C9C0, &qword_100403E20);
  sub_1001A4604();
  v24 = BidirectionalCollection<>.joined(separator:)();

  return v24;
}

uint64_t sub_1002C58C8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_10001C51C;

  return sub_1001FB128(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_1002C599C()
{
  sub_100168088(&unk_10057A0B0, &unk_100401C70);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1004007A0;
  *(inited + 32) = static AdamID.parse(_:)();
  *(inited + 40) = static AdamID.parse(_:)();
  *(inited + 48) = static AdamID.parse(_:)();
  *(inited + 56) = static AdamID.parse(_:)();
  *(inited + 64) = static AdamID.parse(_:)();
  v1 = sub_10016B7DC(inited);
  result = swift_setDeallocating();
  qword_10057CF48 = v1;
  return result;
}

uint64_t sub_1002C5B24()
{
  v1 = OBJC_IVAR____TtC8Podcasts21FavoriteContextAction_configuration;
  swift_beginAccess();
  v2 = *(v0 + v1);
  if (!v2 || (v15[0] = v2, type metadata accessor for ContextActionsConfiguration(), , sub_100168088(&qword_10057D070, &qword_10040A5A0), (swift_dynamicCast() & 1) == 0))
  {
    v14 = 0;
    v12 = 0u;
    v13 = 0u;
    return sub_100009104(&v12, &qword_10057D068, qword_10040B250);
  }

  if (!*(&v13 + 1))
  {
    return sub_100009104(&v12, &qword_10057D068, qword_10040B250);
  }

  v3 = v0;
  sub_1000109E4(&v12, v15);
  v4 = v16;
  sub_1000044A0(v15, v16);
  v5 = sub_1001ED800(v4);
  if ((v6 & 1) == 0)
  {
    v7 = v5;
    sub_100004428(v15, &v12);
    type metadata accessor for ChannelContextActionConfiguration(0);
    if (swift_dynamicCast())
    {

      v8 = 1;
    }

    else
    {
      v8 = 5;
    }

    *(v3 + OBJC_IVAR____TtC8Podcasts21FavoriteContextAction_interestContentKind) = v8;
    v10 = v3 + OBJC_IVAR____TtC8Podcasts21FavoriteContextAction_adamID;
    *v10 = v7;
    *(v10 + 8) = 0;
    InterestStateController.stateMachine(for:)();
    v11 = InterestStateMachine.currentState.getter();

    *(v3 + OBJC_IVAR____TtC8Podcasts21FavoriteContextAction_interestState) = v11;
  }

  return sub_100004590(v15);
}

uint64_t sub_1002C5CCC()
{
  if (*(v0 + OBJC_IVAR____TtC8Podcasts21FavoriteContextAction_adamID + 8))
  {
    goto LABEL_20;
  }

  if (*(v0 + OBJC_IVAR____TtC8Podcasts21FavoriteContextAction_interestState) == 4)
  {
    goto LABEL_20;
  }

  v1 = *(v0 + OBJC_IVAR____TtC8Podcasts21FavoriteContextAction_adamID);
  v2 = OBJC_IVAR____TtC8Podcasts21FavoriteContextAction_configuration;
  swift_beginAccess();
  if (*(v0 + v2))
  {
    type metadata accessor for PodcastContextActionConfiguration(0);
    if (swift_dynamicCastClass())
    {
      goto LABEL_20;
    }
  }

  v3 = ContentKind.rawValue.getter();
  v5 = v4;
  if (v3 == ContentKind.rawValue.getter() && v5 == v6)
  {
    goto LABEL_16;
  }

  v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v8)
  {
    goto LABEL_17;
  }

  v9 = ContentKind.rawValue.getter();
  v11 = v10;
  if (v9 == ContentKind.rawValue.getter() && v11 == v12)
  {
LABEL_16:

LABEL_17:
    if (qword_100572808 != -1)
    {
      swift_once();
    }

    if (!sub_1002D4890(v1, qword_10057CF48))
    {
      goto LABEL_22;
    }

LABEL_20:
    v15 = 0;
    return v15 & 1;
  }

  v14 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v14)
  {
    goto LABEL_17;
  }

LABEL_22:
  v17 = InterestState.rawValue.getter();
  v19 = v18;
  v15 = 1;
  if (v17 != InterestState.rawValue.getter() || v19 != v20)
  {
    v21 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v21)
    {
      v15 = 1;
      return v15 & 1;
    }

    v22 = InterestState.rawValue.getter();
    v24 = v23;
    if (v22 == InterestState.rawValue.getter() && v24 == v25)
    {
      v15 = 1;
    }

    else
    {
      v15 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

  return v15 & 1;
}

void sub_1002C5F58(__n128 a1)
{
  type metadata accessor for ScalarDictionary();
  __chkstk_darwin();
  v3 = v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for MetricsFieldInclusionRequest();
  v34 = *(v4 - 8);
  v35 = v4;
  __chkstk_darwin();
  v6 = v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100168088(&qword_100574040, &unk_100400AD0);
  __chkstk_darwin();
  v8 = v24 - v7;
  v32 = type metadata accessor for MetricsData();
  v9 = *(v32 - 8);
  __chkstk_darwin();
  v11 = v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ActionMetrics();
  __chkstk_darwin();
  v13 = v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = type metadata accessor for FavoriteInterestAction();
  v33 = *(v31 - 8);
  __chkstk_darwin();
  v15 = v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = OBJC_IVAR____TtC8Podcasts21FavoriteContextAction_configuration;
  swift_beginAccess();
  if (*(v1 + v16))
  {
    if ((*(v1 + OBJC_IVAR____TtC8Podcasts21FavoriteContextAction_adamID + 8) & 1) == 0)
    {
      v29 = *(v1 + OBJC_IVAR____TtC8Podcasts21FavoriteContextAction_adamID);
      v17 = v29;
      v30 = *(v1 + OBJC_IVAR____TtC8Podcasts21FavoriteContextAction_interestContentKind);
      sub_100168088(&unk_10057DC50, &unk_10040A590);
      v28 = (*(v9 + 80) + 32) & ~*(v9 + 80);
      v27 = swift_allocObject();
      *(v27 + 16) = xmmword_100400790;
      *&v37 = v17;
      sub_1000366D8();

      v24[3] = BinaryInteger.description.getter();
      v25 = v6;
      v18 = static MetricsTargetType.button.getter();
      v26 = v3;
      v24[2] = v18;
      v24[1] = static MetricsActionType.favorite.getter();
      v24[4] = v13;
      static MetricsActionContext.contextual.getter();
      v19 = type metadata accessor for URL();
      (*(*(v19 - 8) + 56))(v8, 1, 1, v19);
      static MetricsDataConfiguration.default.getter();
      static MetricsData.clickData(targetID:targetType:actionType:actionContext:actionResult:actionURL:fields:configuration:)();
      v44 = v37;
      sub_100009104(&v44, &unk_100574650, &unk_1004023C0);
      v43 = v38;
      sub_100009104(&v43, &unk_100573A90, &unk_100401170);
      v42 = v39;
      sub_100009104(&v42, &unk_100574660, &unk_1004023D0);
      sub_100037470(v40, v41);

      sub_100009104(v8, &qword_100574040, &unk_100400AD0);
      v20 = v25;
      static MetricsFieldInclusionRequest.impressionsSnapshot.getter();
      MetricsData.removingIncludedField(_:)();
      (*(v34 + 8))(v20, v35);
      (*(v9 + 8))(v11, v32);
      ScalarDictionary.init()();
      ActionMetrics.init(data:custom:)();
      FavoriteInterestAction.init(adamID:interestContentKind:actionMetrics:)();
      v21 = v31;
      v36[3] = v31;
      v36[4] = sub_1002C6AF0(&qword_10057D060, &type metadata accessor for FavoriteInterestAction, &protocol conformance descriptor for FavoriteInterestAction);
      v22 = sub_10000E680(v36);
      v23 = v33;
      (*(v33 + 16))(v22, v15, v21);
      ContextActionsConfiguration.perform(_:)();

      (*(v23 + 8))(v15, v21);
      sub_100004590(v36);
    }
  }
}

uint64_t sub_1002C6584()
{

  v1 = OBJC_IVAR____TtC8Podcasts21FavoriteContextAction_metricsLabel;
  v2 = type metadata accessor for MetricsLabel();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_100009104(v0 + OBJC_IVAR____TtC8Podcasts21FavoriteContextAction_contextActionType, &qword_100575870, &unk_100402BE0);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for FavoriteContextAction(uint64_t a1)
{
  result = qword_10057CF90;
  if (!qword_10057CF90)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1002C66CC(uint64_t a1)
{
  type metadata accessor for MetricsLabel();
  if (v1 <= 0x3F)
  {
    sub_1001C25E8(319);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_1002C67E4()
{
  v0 = [objc_opt_self() mainBundle];
  v5._object = 0xE800000000000000;
  v5._countAndFlagsBits = 0x657469726F766146;
  v1._object = 0x8000000100468360;
  v1._countAndFlagsBits = 0xD000000000000015;
  v2._countAndFlagsBits = 0;
  v2._object = 0xE000000000000000;
  countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v1, 0, v0, v2, v5)._countAndFlagsBits;

  return countAndFlagsBits;
}

uint64_t sub_1002C6890@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC8Podcasts21FavoriteContextAction_metricsLabel;
  v4 = type metadata accessor for MetricsLabel();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_1002C6924(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8Podcasts21FavoriteContextAction_configuration;
  swift_beginAccess();
  *(v1 + v3) = a1;

  return sub_1002C5B24();
}

uint64_t sub_1002C69D4(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8Podcasts21FavoriteContextAction_configuration;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_1002C6A98(uint64_t a1)
{
  result = sub_1002C6AF0(&unk_1005822D0, type metadata accessor for FavoriteContextAction, &unk_10040A510);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1002C6AF0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

Swift::Int sub_1002C6B44()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1002C6C08(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int sub_1002C6CB8(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_1002C6D78@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1002CA468(*a1);
  *a2 = result;
  return result;
}

void sub_1002C6DA8(unint64_t *a1@<X8>)
{
  v2 = 0xE800000000000000;
  v3 = 0x6465776F6C6C6F66;
  v4 = 0x80000001004643E0;
  v5 = 0xD000000000000012;
  if (*v1 != 2)
  {
    v5 = 0x65726F7473;
    v4 = 0xE500000000000000;
  }

  if (*v1)
  {
    v3 = 0x7972617262696CLL;
    v2 = 0xE700000000000000;
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

uint64_t sub_1002C6E28(uint64_t a1)
{
  v2 = sub_1002CA1F4();

  return EnumStringConvertible<>.description.getter(a1, v2);
}

void sub_1002C6E64(uint64_t a1, Swift::UInt a2, unsigned __int8 a3)
{
  v3 = a2;
  if (a3 <= 1u)
  {
    v4 = a3 != 0;
    goto LABEL_8;
  }

  if (a3 == 2)
  {
    v4 = 2;
    goto LABEL_8;
  }

  if (a3 == 3)
  {
    v4 = 3;
LABEL_8:
    Hasher._combine(_:)(v4);
    goto LABEL_9;
  }

  v3 = a2 + 4;
LABEL_9:
  Hasher._combine(_:)(v3);
}

Swift::Int sub_1002C6ED8()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  Hasher.init(_seed:)();
  sub_1002C6E64(v4, v1, v2);
  return Hasher._finalize()();
}

Swift::Int sub_1002C6F34(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  Hasher.init(_seed:)();
  sub_1002C6E64(v5, v2, v3);
  return Hasher._finalize()();
}

uint64_t sub_1002C6F98(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0xD000000000000011;
  }

  else
  {
    v3 = 0xD000000000000012;
  }

  if (v2)
  {
    v4 = "implicitlyFollowed";
  }

  else
  {
    v4 = "hasLibraryEpisodes";
  }

  if (*a2)
  {
    v5 = 0xD000000000000011;
  }

  else
  {
    v5 = 0xD000000000000012;
  }

  if (*a2)
  {
    v6 = "hasLibraryEpisodes";
  }

  else
  {
    v6 = "implicitlyFollowed";
  }

  if (v3 == v5 && (v4 | 0x8000000000000000) == (v6 | 0x8000000000000000))
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int sub_1002C7040()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1002C70BC(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int sub_1002C7124(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

void sub_1002C71A8(unint64_t *a1@<X8>)
{
  v2 = "hasLibraryEpisodes";
  v3 = 0xD000000000000011;
  if (!*v1)
  {
    v3 = 0xD000000000000012;
    v2 = "implicitlyFollowed";
  }

  *a1 = v3;
  a1[1] = v2 | 0x8000000000000000;
}

uint64_t sub_1002C71E4(uint64_t a1)
{
  v2 = sub_1002CA248();

  return EnumStringConvertible<>.description.getter(a1, v2);
}

uint64_t sub_1002C7220(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0xD000000000000010;
  }

  else
  {
    v3 = 0xD000000000000011;
  }

  if (v2)
  {
    v4 = "noLibraryEpisodes";
  }

  else
  {
    v4 = "hasPlayedEpisodes";
  }

  if (*a2)
  {
    v5 = 0xD000000000000010;
  }

  else
  {
    v5 = 0xD000000000000011;
  }

  if (*a2)
  {
    v6 = "hasPlayedEpisodes";
  }

  else
  {
    v6 = "noLibraryEpisodes";
  }

  if (v3 == v5 && (v4 | 0x8000000000000000) == (v6 | 0x8000000000000000))
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int sub_1002C72C8()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1002C7344(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int sub_1002C73AC(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1002C7430@<X0>(Swift::OpaquePointer cases@<0:X3>, Swift::String *a2@<X0>, char *a3@<X8>)
{
  v4 = _findStringSwitchCase(cases:string:)(cases, *a2);

  if (v4 == 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = 2;
  }

  if (!v4)
  {
    v6 = 0;
  }

  *a3 = v6;
  return result;
}

void sub_1002C748C(unint64_t *a1@<X8>)
{
  v2 = "hasPlayedEpisodes";
  v3 = 0xD000000000000010;
  if (!*v1)
  {
    v3 = 0xD000000000000011;
    v2 = "noLibraryEpisodes";
  }

  *a1 = v3;
  a1[1] = v2 | 0x8000000000000000;
}

uint64_t sub_1002C74C8(uint64_t a1)
{
  v2 = sub_1002CA29C();

  return EnumStringConvertible<>.description.getter(a1, v2);
}

uint64_t sub_1002C7504(uint64_t a1, uint64_t a2, char a3)
{
  v4 = 0x697469736E617254;
  if (a3)
  {
    v4 = 0x3A6E6F28706F6F6CLL;
  }

  v16 = v4;
  v5 = 0xE100000000000000;
  sub_1001F8788();
  v6._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v6);

  v7._countAndFlagsBits = 46;
  v7._object = 0xE100000000000000;
  String.append(_:)(v7);

  if (a2)
  {

    v8 = Array.description.getter();
    v10 = v9;

    v11._countAndFlagsBits = v8;
    v11._object = v10;
    String.append(_:)(v11);

    v12._countAndFlagsBits = 41;
    v12._object = 0xE100000000000000;
    String.append(_:)(v12);
    v13 = 0x746365666665202CLL;
    v5 = 0xEB00000000203A73;
  }

  else
  {
    v13 = 41;
  }

  v14 = v5;
  String.append(_:)(*&v13);

  return v16;
}

uint64_t sub_1002C7674()
{
  sub_100004590((v0 + 16));

  sub_100004590((v0 + 64));
  sub_100004590((v0 + 104));

  return swift_deallocClassInstance();
}

uint64_t sub_1002C76C4(void *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v5 = v4;
  v79 = a3;
  v9 = type metadata accessor for Logger();
  v80 = *(v9 - 8);
  v81 = v9;
  __chkstk_darwin();
  v78 = &v74 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v12 = &v74 - v11;
  sub_100168088(&unk_100575CE0, &unk_100402E80);
  __chkstk_darwin();
  v14 = &v74 - v13;
  v15 = type metadata accessor for PodcastStateModel();
  v16 = *(v15 - 8);
  __chkstk_darwin();
  v18 = &v74 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = a1;
  PodcastStateModel.init(podcast:)();
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    sub_100009104(v14, &unk_100575CE0, &unk_100402E80);
    goto LABEL_6;
  }

  (*(v16 + 32))(v18, v14, v15);
  v20 = [v19 managedObjectContext];
  if (v20)
  {
    v21 = v20;
    v76 = v15;
    v22 = *(v5 + 40);
    v23 = *(v5 + 48);
    sub_1000044A0((v5 + 16), v22);
    v24 = *(v23 + 8);
    v77 = v18;
    v25 = v24(v18, v21, a2, v79, a4, v22, v23);
    v56 = v55;
    sub_1002C97F0(v19, v25);
    if (v56)
    {
      v57 = *(v56 + 16);
      v58 = v77;
      if (v57)
      {
        v75 = v21;
        swift_beginAccess();
        v59 = (v56 + 40);
        while (1)
        {
          v61 = *(v59 - 1);
          if (*v59)
          {
            if (*v59 == 1)
            {
              v60 = *(v5 + 56);
              SyncKeysRepository.markBookmarksSyncDirty(_:for:)();
            }

            else
            {
              if (v61 > 1)
              {
                if (v61 == 2)
                {
                  v64 = *(v5 + 128);
                  v65 = *(v5 + 136);
                  sub_1000044A0((v5 + 104), v64);
                  (*(v65 + 8))(v19, v64, v65);
                }

                else if (v61 == 3)
                {
                  v62 = *(v5 + 128);
                  v63 = *(v5 + 136);
                  sub_1000044A0((v5 + 104), v62);
                  (*(v63 + 16))(v19, 1, v62, v63);
                }

                else
                {
                  [v19 setIsTransitioningFromImplicit:1];
                }

                goto LABEL_23;
              }

              if (v61)
              {
                v66 = *(v5 + 88);
                v67 = *(v5 + 96);
                sub_1000044A0((v5 + 64), v66);
                v81 = &v74;
                v68 = *(v66 - 8);
                v69 = __chkstk_darwin();
                v71 = &v74 - ((v70 + 15) & 0xFFFFFFFFFFFFFFF0);
                (*(v68 + 16))(v71, v69);
                (*(v67 + 8))(v66, v67);
                (*(v68 + 8))(v71, v66);
                v58 = v77;
                PassthroughSubject.send(_:)();

                goto LABEL_23;
              }

              v60 = *(v5 + 56);
              SyncKeysRepository.isNonFollowedShowsSyncDirty.setter();
            }
          }

          else
          {
            v60 = *(v5 + 56);
            SyncKeysRepository.markSubscriptionSyncDirty(_:for:)();
          }

LABEL_23:
          v59 += 16;
          if (!--v57)
          {

            goto LABEL_39;
          }
        }
      }

LABEL_39:
      v72 = *(v16 + 8);
      v73 = v58;
    }

    else
    {

      v72 = *(v16 + 8);
      v73 = v77;
    }

    return v72(v73, v76);
  }

  (*(v16 + 8))(v18, v15);
LABEL_6:
  static Logger.podcastsStatesCoordination.getter();
  v26 = v19;
  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v82[0] = swift_slowAlloc();
    *v29 = 136381699;
    v30 = [v26 title];
    if (v30)
    {
      v31 = v30;
      v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v34 = v33;
    }

    else
    {
      v32 = 0x6C746974206F6E3CLL;
      v34 = 0xEA00000000003E65;
    }

    v36 = 0x3E7974706D653CLL;
    v37 = sub_1000153E0(v32, v34, v82);

    *(v29 + 4) = v37;
    *(v29 + 12) = 2080;
    v38 = [v26 uuid];
    if (v38)
    {
      v39 = v38;
      v40 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v42 = v41;

      v36 = 0x3E7974706D653CLL;
    }

    else
    {
      v42 = 0xE700000000000000;
      v40 = 0x3E7974706D653CLL;
    }

    v43 = sub_1000153E0(v40, v42, v82);

    *(v29 + 14) = v43;
    *(v29 + 22) = 2080;
    v82[4] = [v26 managedObjectContext];
    sub_100168088(&qword_1005737C8, &qword_100400FD0);
    v44 = String.init<A>(describing:)();
    v46 = sub_1000153E0(v44, v45, v82);

    *(v29 + 24) = v46;
    *(v29 + 32) = 2049;
    v47 = [v26 storeCollectionId];

    *(v29 + 34) = v47;
    *(v29 + 42) = 2081;
    v48 = [v26 feedURL];
    if (v48)
    {
      v49 = v48;
      v36 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v51 = v50;
    }

    else
    {
      v51 = 0xE700000000000000;
    }

    v53 = v80;
    v52 = v81;
    v54 = sub_1000153E0(v36, v51, v82);

    *(v29 + 44) = v54;
    _os_log_impl(&_mh_execute_header, v27, v28, "Unable to create PodcastStateModel from Podcast, or Podcast without a valid managedObjectContext. Podcast: %{private}s, uuid: %s, MOC: %s, adamID: %{private}lld, feedURL: %{private}s.", v29, 0x34u);
    swift_arrayDestroy();

    return (*(v53 + 8))(v12, v52);
  }

  else
  {

    return (*(v80 + 8))(v12, v81);
  }
}

void sub_1002C82C8(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, int a5, NSObject *a6)
{
  v102 = a6;
  LODWORD(v101) = a5;
  v100 = a4;
  v8 = type metadata accessor for PodcastStateModel();
  v9 = *(v8 - 8);
  __chkstk_darwin();
  v98 = &v90 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  __chkstk_darwin();
  v105 = &v90 - v11;
  __chkstk_darwin();
  v104 = &v90 - v12;
  __chkstk_darwin();
  __chkstk_darwin();
  v96 = &v90 - v13;
  __chkstk_darwin();
  v95 = &v90 - v14;
  __chkstk_darwin();
  v94 = &v90 - v15;
  __chkstk_darwin();
  v17 = &v90 - v16;
  __chkstk_darwin();
  v103 = &v90 - v18;
  v19 = type metadata accessor for Logger();
  v20 = *(v19 - 8);
  __chkstk_darwin();
  v99 = &v90 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v97 = &v90 - v22;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v24 = Strong;
  v93 = v9;
  v91 = v20;
  v27 = PodcastStateModel.id.getter();
  v92 = v19;
  if (v26)
  {
    v28 = v25;
    if (v26 == 1)
    {
      v29 = String._bridgeToObjectiveC()();
      sub_1001F876C(v27, v28, 1u);
      v30 = [a3 podcastForUuid:v29];
    }

    else
    {
      v29 = String._bridgeToObjectiveC()();
      sub_1001F876C(v27, v28, 2u);
      v30 = [a3 podcastForFeedUrl:v29];
    }

    v31 = v30;

    if (v31)
    {
      goto LABEL_11;
    }

LABEL_6:
    v105 = v24;
    v32 = v97;
    static Logger.podcastsStatesCoordination.getter();
    v33 = v93;
    v34 = *(v93 + 16);
    v34(v103, a2, v8);
    v34(v17, a2, v8);
    v104 = v17;
    v35 = v94;
    v34(v94, a2, v8);
    v36 = v95;
    v34(v95, a2, v8);
    v37 = v96;
    v34(v96, a2, v8);
    v38 = a3;
    v39 = Logger.logObject.getter();
    v40 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v39, v40))
    {
      v102 = v39;
      v41 = v104;
      v42 = swift_slowAlloc();
      v100 = swift_slowAlloc();
      v106[0] = v100;
      *v42 = 136316419;
      v43 = [v38 name];
      LODWORD(v101) = v40;
      if (v43)
      {
        v44 = v43;
        v45 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v47 = v46;
      }

      else
      {
        v47 = 0xE500000000000000;
        v45 = 0x3E6C696E3CLL;
      }

      v70 = v94;
      v71 = v103;
      v72 = sub_1000153E0(v45, v47, v106);

      *(v42 + 4) = v72;
      *(v42 + 12) = 2081;
      v73 = PodcastStateModel.id.getter();
      v75 = v74;
      v77 = v76;
      v78 = PodcastIdentifier.description.getter();
      v80 = v79;
      sub_1001F876C(v73, v75, v77);
      v81 = *(v93 + 8);
      v81(v71, v8);
      v82 = sub_1000153E0(v78, v80, v106);

      *(v42 + 14) = v82;
      *(v42 + 22) = 2080;
      v83 = PodcastStateModel.uuid.getter();
      v85 = v84;
      v81(v41, v8);
      v86 = sub_1000153E0(v83, v85, v106);

      *(v42 + 24) = v86;
      *(v42 + 32) = 1024;
      LODWORD(v86) = PodcastStateModel.isHidden.getter() & 1;
      v81(v70, v8);
      *(v42 + 34) = v86;
      *(v42 + 38) = 1024;
      v87 = v95;
      LODWORD(v86) = PodcastStateModel.isFollowed.getter() & 1;
      v81(v87, v8);
      *(v42 + 40) = v86;
      *(v42 + 44) = 1024;
      v88 = v96;
      LODWORD(v86) = PodcastStateModel.isImplicitlyFollowed.getter() & 1;
      v81(v88, v8);
      *(v42 + 46) = v86;
      v89 = v102;
      _os_log_impl(&_mh_execute_header, v102, v101, "Unable to find corresponding MTPodcast in context %s for PodcastStateModel with ID: %{private}s, uuid: %s, isHidden: %{BOOL}d, isFollowed: %{BOOL}d, isImplicitlyFollowed: %{BOOL}d.", v42, 0x32u);
      swift_arrayDestroy();

      (*(v91 + 8))(v97, v92);
    }

    else
    {
      v69 = *(v33 + 8);
      v69(v37, v8);
      v69(v36, v8);
      v69(v35, v8);

      v69(v104, v8);
      v69(v103, v8);
      (*(v91 + 8))(v32, v92);
    }

    return;
  }

  v31 = [a3 podcastForStoreId:v27];
  if (!v31)
  {
    goto LABEL_6;
  }

LABEL_11:
  v103 = v31;
  v48 = *(v24 + 5);
  v49 = *(v24 + 6);
  sub_1000044A0(v24 + 2, v48);
  v50 = (*(v49 + 8))(a2, a3, v100, v101, v102, v48, v49);
  v102 = 0;
  v52 = v51;
  v53 = v103;
  sub_1002C97F0(v103, v50);
  if (v52)
  {
    v54 = *(v52 + 16);
    if (v54)
    {
      swift_beginAccess();
      for (i = (v52 + 40); ; i += 16)
      {
        v57 = *(i - 1);
        if (*i)
        {
          if (*i != 1)
          {
            if (v57 <= 1)
            {
              if (v57)
              {
                v63 = *(v24 + 11);
                v64 = *(v24 + 12);
                sub_1000044A0(v24 + 8, v63);
                v65 = *(v63 - 8);
                v66 = __chkstk_darwin();
                v68 = &v90 - ((v67 + 15) & 0xFFFFFFFFFFFFFFF0);
                (*(v65 + 16))(v68, v66);
                (*(v64 + 8))(v63, v64);
                (*(v65 + 8))(v68, v63);
                PassthroughSubject.send(_:)();
              }

              else
              {
                v60 = *(v24 + 7);
                SyncKeysRepository.isNonFollowedShowsSyncDirty.setter();
              }
            }

            else if (v57 == 2)
            {
              v61 = *(v24 + 16);
              v62 = *(v24 + 17);
              sub_1000044A0(v24 + 13, v61);
              (*(v62 + 8))(v103, v61, v62);
            }

            else if (v57 == 3)
            {
              v58 = *(v24 + 16);
              v59 = *(v24 + 17);
              sub_1000044A0(v24 + 13, v58);
              (*(v59 + 16))(v103, 1, v58, v59);
            }

            else
            {
              [v103 setIsTransitioningFromImplicit:1];
            }

            goto LABEL_16;
          }

          v56 = *(v24 + 7);
          SyncKeysRepository.markBookmarksSyncDirty(_:for:)();
        }

        else
        {
          v56 = *(v24 + 7);
          SyncKeysRepository.markSubscriptionSyncDirty(_:for:)();
        }

LABEL_16:
        if (!--v54)
        {

          return;
        }
      }
    }
  }
}

uint64_t sub_1002C90F8@<X0>(void *a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, char *a4@<X8>)
{
  v41 = a4;
  v7 = type metadata accessor for Logger();
  v39 = *(v7 - 8);
  v40 = v7;
  __chkstk_darwin();
  v9 = v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v11 = v36 - v10;
  __chkstk_darwin();
  v36[4] = v36 - v12;
  sub_100168088(&unk_100575CE0, &unk_100402E80);
  __chkstk_darwin();
  v14 = v36 - v13;
  v15 = type metadata accessor for PodcastStateModel();
  v16 = *(v15 - 8);
  __chkstk_darwin();
  v36[3] = v36 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v19 = v36 - v18;
  __chkstk_darwin();
  v21 = v36 - v20;
  v37 = a2;
  v38 = a3;
  v22 = String._bridgeToObjectiveC()();
  v23 = [a1 podcastForUuid:v22];

  if (v23)
  {
    v24 = v23;
    PodcastStateModel.init(podcast:)();
    if ((*(v16 + 48))(v14, 1, v15) == 1)
    {
      sub_100009104(v14, &unk_100575CE0, &unk_100402E80);
      static Logger.podcastsStatesCoordination.getter();
      v25 = static os_log_type_t.error.getter();
      v26 = Logger.logObject.getter();
      if (os_log_type_enabled(v26, v25))
      {
        v27 = swift_slowAlloc();
        v28 = swift_slowAlloc();
        v42 = v28;
        *v27 = 136315138;
        *(v27 + 4) = sub_1000153E0(v37, v38, &v42);
        _os_log_impl(&_mh_execute_header, v26, v25, "Failed to create PodcastStateModel from show %s for current podcast state lookup.", v27, 0xCu);
        sub_100004590(v28);
      }

      else
      {
      }

      result = (*(v39 + 8))(v11, v40);
      v34 = 4;
    }

    else
    {
      (*(v16 + 32))(v21, v14, v15);
      (*(v16 + 16))(v19, v21, v15);
      v34 = PodcastStateModel.sanitizedState()();

      v35 = *(v16 + 8);
      v35(v19, v15);
      result = (v35)(v21, v15);
    }
  }

  else
  {
    static Logger.podcastsStatesCoordination.getter();
    v29 = static os_log_type_t.error.getter();
    v30 = Logger.logObject.getter();
    if (os_log_type_enabled(v30, v29))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v42 = v32;
      *v31 = 136315138;
      *(v31 + 4) = sub_1000153E0(v37, v38, &v42);
      _os_log_impl(&_mh_execute_header, v30, v29, "Failed to locate show %s for current podcast state lookup.", v31, 0xCu);
      sub_100004590(v32);
    }

    result = (*(v39 + 8))(v9, v40);
    v34 = 3;
  }

  *v41 = v34;
  return result;
}

id sub_1002C97F0(void *a1, unsigned __int8 a2)
{
  if (a2 > 1u)
  {
    if (a2 != 2)
    {
      [a1 setSubscribed:0];
      [a1 setIsImplicitlyFollowed:0];
      v5 = v2[16];
      v6 = v2[17];
      sub_1000044A0(v2 + 13, v5);
      return (*(v6 + 24))(a1, v5, v6);
    }

    [a1 setSubscribed:0];
    [a1 setIsImplicitlyFollowed:1];
  }

  else
  {
    [a1 setSubscribed:a2 == 0];
    [a1 setIsImplicitlyFollowed:0];
  }

  return [a1 setHidden:0];
}

void sub_1002C98FC(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62)
  {
    v3 = _CocoaArrayWrapper.endIndex.getter();
    if (!v3)
    {
      return;
    }
  }

  else
  {
    v3 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v3)
    {
      return;
    }
  }

  if (v3 < 1)
  {
    __break(1u);
  }

  else
  {
    for (i = 0; i != v3; ++i)
    {
      if ((a2 & 0xC000000000000001) != 0)
      {
        v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v5 = *(a2 + 8 * i + 32);
      }

      v6 = v5;
      sub_1002C76C4(v5, 4, 4u, 3);
    }
  }
}

uint64_t sub_1002C99B4(uint64_t a1, unsigned __int8 a2)
{
  if (a2 <= 1u)
  {
    if (a2)
    {
      v3 = 0x776F6C6C6F666E75;
    }

    else
    {
      v3 = 0x28776F6C6C6F66;
    }

    v11 = v3;
    v4 = MTSubscriptionSyncType.description.getter();
    goto LABEL_16;
  }

  if (a2 == 2)
  {
    v2 = 0x6B72616D6B6F6F62;
    goto LABEL_8;
  }

  if (a2 == 3)
  {
    v2 = 0x616D6B6F6F626E75;
LABEL_8:
    v11 = v2;
    v4 = MTBookmarksSyncType.description.getter();
LABEL_16:
    String.append(_:)(*&v4);

    v9._countAndFlagsBits = 41;
    v9._object = 0xE100000000000000;
    String.append(_:)(v9);
    return v11;
  }

  if (a1 > 4)
  {
    if (a1 > 6)
    {
      v6 = 0xD000000000000015;
      v7 = 0xD000000000000017;
      if (a1 == 8)
      {
        v7 = 0xD000000000000029;
      }

      v8 = a1 == 7;
      goto LABEL_21;
    }

    if (a1 == 5)
    {
      return 0xD00000000000001CLL;
    }

    else
    {
      return 0xD000000000000013;
    }
  }

  else
  {
    if (a1 > 1)
    {
      v6 = 0xD000000000000016;
      v7 = 0xD000000000000010;
      if (a1 != 3)
      {
        v7 = 0xD000000000000014;
      }

      v8 = a1 == 2;
LABEL_21:
      if (v8)
      {
        return v6;
      }

      else
      {
        return v7;
      }
    }

    if (a1)
    {
      return 0x6F4465766F6D6572;
    }

    else
    {
      return 0x64616F6C6E776F64;
    }
  }
}

unint64_t sub_1002C9C04(uint64_t a1, char a2)
{
  if (!a2)
  {
    _StringGuts.grow(_:)(21);

    v9[0] = 0xD000000000000012;
    v9[1] = 0x800000010046DC60;
    v2 = MTSubscriptionSyncType.description.getter();
    goto LABEL_5;
  }

  if (a2 == 1)
  {
    _StringGuts.grow(_:)(17);

    strcpy(v9, "syncBookmarks(");
    HIBYTE(v9[1]) = -18;
    v2 = MTBookmarksSyncType.description.getter();
LABEL_5:
    String.append(_:)(*&v2);

    v4._countAndFlagsBits = 41;
    v4._object = 0xE100000000000000;
    String.append(_:)(v4);
    return v9[0];
  }

  v6 = 0x6546657461647075;
  v7 = 0xD000000000000016;
  if (a1 != 3)
  {
    v7 = 0xD00000000000001FLL;
  }

  if (a1 != 2)
  {
    v6 = v7;
  }

  v8 = 0xD000000000000019;
  if (!a1)
  {
    v8 = 0xD000000000000014;
  }

  if (a1 <= 1)
  {
    return v8;
  }

  else
  {
    return v6;
  }
}

uint64_t initializeBufferWithCopyOfBuffer for PodcastsStateTransitions.Event(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for PodcastsStateTransitions.Event(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && *(a1 + 9))
  {
    return (*a1 + 252);
  }

  v3 = *(a1 + 8);
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

uint64_t storeEnumTagSinglePayload for PodcastsStateTransitions.Event(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 8) = 0;
    *result = a2 - 252;
    if (a3 >= 0xFC)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_1002C9E74(uint64_t a1)
{
  if (*(a1 + 8) <= 3u)
  {
    return *(a1 + 8);
  }

  else
  {
    return (*a1 + 4);
  }
}

uint64_t sub_1002C9E8C(uint64_t result, unsigned int a2)
{
  if (a2 >= 4)
  {
    *result = a2 - 4;
    LOBYTE(a2) = 4;
  }

  *(result + 8) = a2;
  return result;
}

uint64_t getEnumTagSinglePayload for PodcastsStateTransitions.Effect(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 9))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 8);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for PodcastsStateTransitions.Effect(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_1002C9F40(uint64_t a1)
{
  if (*(a1 + 8) <= 1u)
  {
    return *(a1 + 8);
  }

  else
  {
    return (*a1 + 2);
  }
}

uint64_t sub_1002C9F58(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 8) = a2;
  return result;
}

unint64_t sub_1002C9F84()
{
  result = qword_10057D130;
  if (!qword_10057D130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10057D130);
  }

  return result;
}

unint64_t sub_1002C9FE0()
{
  result = qword_10057D138;
  if (!qword_10057D138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10057D138);
  }

  return result;
}

unint64_t sub_1002CA038()
{
  result = qword_10057D140;
  if (!qword_10057D140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10057D140);
  }

  return result;
}

unint64_t sub_1002CA094()
{
  result = qword_10057D148;
  if (!qword_10057D148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10057D148);
  }

  return result;
}

unint64_t sub_1002CA0EC()
{
  result = qword_10057D150;
  if (!qword_10057D150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10057D150);
  }

  return result;
}

unint64_t sub_1002CA148()
{
  result = qword_10057D158;
  if (!qword_10057D158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10057D158);
  }

  return result;
}

unint64_t sub_1002CA1A0()
{
  result = qword_10057D160;
  if (!qword_10057D160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10057D160);
  }

  return result;
}

unint64_t sub_1002CA1F4()
{
  result = qword_10057D168;
  if (!qword_10057D168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10057D168);
  }

  return result;
}

unint64_t sub_1002CA248()
{
  result = qword_10057D170;
  if (!qword_10057D170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10057D170);
  }

  return result;
}

unint64_t sub_1002CA29C()
{
  result = qword_10057D178;
  if (!qword_10057D178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10057D178);
  }

  return result;
}

BOOL sub_1002CA2F0(uint64_t a1, unsigned __int8 a2, uint64_t a3, char a4)
{
  if (a2 <= 1u)
  {
    if (a2)
    {
      if (a4 != 1)
      {
        return 0;
      }
    }

    else if (a4)
    {
      return 0;
    }

    return a1 == a3;
  }

  if (a2 == 2)
  {
    if (a4 != 2)
    {
      return 0;
    }

    return a1 == a3;
  }

  if (a2 != 3)
  {
    if (a1 > 4)
    {
      if (a1 <= 6)
      {
        if (a1 == 5)
        {
          if (a4 != 4 || a3 != 5)
          {
            return 0;
          }
        }

        else if (a4 != 4 || a3 != 6)
        {
          return 0;
        }
      }

      else if (a1 == 7)
      {
        if (a4 != 4 || a3 != 7)
        {
          return 0;
        }
      }

      else if (a1 == 8)
      {
        if (a4 != 4 || a3 != 8)
        {
          return 0;
        }
      }

      else if (a4 != 4 || a3 != 9)
      {
        return 0;
      }
    }

    else if (a1 <= 1)
    {
      if (a1)
      {
        if (a4 != 4 || a3 != 1)
        {
          return 0;
        }
      }

      else if (a4 != 4 || a3)
      {
        return 0;
      }
    }

    else if (a1 == 2)
    {
      if (a4 != 4 || a3 != 2)
      {
        return 0;
      }
    }

    else if (a1 == 3)
    {
      if (a4 != 4 || a3 != 3)
      {
        return 0;
      }
    }

    else if (a4 != 4 || a3 != 4)
    {
      return 0;
    }

    return 1;
  }

  if (a4 == 3)
  {
    return a1 == a3;
  }

  return 0;
}

unint64_t sub_1002CA468(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1004DF160, v2);

  if (v3 >= 4)
  {
    return 4;
  }

  else
  {
    return v3;
  }
}

uint64_t getEnumTagSinglePayload for PodcastsStateTransitions.EpisodesState(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 65281 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 65281 < 0xFF0000)
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
      return (*a1 | (v4 << 16)) - 65281;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 16)) - 65281;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 65281;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

_WORD *storeEnumTagSinglePayload for PodcastsStateTransitions.EpisodesState(_WORD *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65281 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65281 < 0xFF0000)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 16) + 1;
    *result = a2 - 255;
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

    result[1] = 0;
  }

  else if (v4)
  {
    *(result + 2) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

id sub_1002CA624(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1001AA70C();
  result = sub_1002BBF0C(a1, a2, a3);
  if (result)
  {
    v7 = result;
    v8 = sub_1002CA7A8(a1, a2);
    if (v9)
    {
      v10 = HIBYTE(v9) & 0xF;
      if ((v9 & 0x2000000000000000) == 0)
      {
        v10 = v8 & 0xFFFFFFFFFFFFLL;
      }

      if (v10)
      {
        sub_100168088(&unk_100574680, &qword_100401740);
        v11 = swift_allocObject();
        *(v11 + 16) = xmmword_1004007B0;
        *(v11 + 32) = v7;
        v12 = objc_allocWithZone(swift_getObjCClassFromMetadata());
        v13 = v7;
        sub_100168088(&unk_100574A00, &unk_100401EC0);
        isa = Array._bridgeToObjectiveC()().super.isa;

        v15 = String._bridgeToObjectiveC()();

        v16 = [v12 initWithItems:isa header:v15 headerSubtitle:0 headerImage:0 headerButton:0 sectionIndexTitle:0];

        return v16;
      }
    }

    return 0;
  }

  return result;
}

uint64_t sub_1002CA7A8(uint64_t a1, uint64_t a2)
{
  sub_100168088(&qword_100578FE0, &unk_100408A60);
  __chkstk_darwin();
  v3 = &v10 - v2;
  v4 = type metadata accessor for EpisodePlayState();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1002CA950(v3);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_1002CAB7C(v3);
    return 0;
  }

  else
  {
    sub_100239BE4(v3, v7);
    type metadata accessor for SmartPlayButtonController();
    BaseObjectGraph.inject<A>(_:)();
    dispatch thunk of SmartPlayButtonController.apply(model:)();
    v9 = dispatch thunk of SmartPlayButtonController.buttonTitle(for:)();

    sub_10021F0A0(v7);
    return v9;
  }
}

uint64_t sub_1002CA950@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for EpisodeOffer();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100168088(&unk_10057A4A0, &qword_100409850);
  BaseObjectGraph.inject<A>(_:)();
  if (!ShowHeader.episodeToPlay.getter())
  {
    if (ShowHeader.primaryButtonAction.getter())
    {
      type metadata accessor for PlayAction();
      if (swift_dynamicCastClass())
      {
        PlayAction.episodeOffer.getter();
        EpisodeOffer.contentId.getter();
        (*(v3 + 8))(v5, v2);
        dispatch thunk of EpisodeStateController.stateMachine(for:)();
        dispatch thunk of EpisodeStateMachine.currentState.getter();

        goto LABEL_3;
      }
    }

    v6 = 1;
    goto LABEL_10;
  }

  Episode.uuid.getter();
  dispatch thunk of EpisodeStateController.stateMachine(for:)();

  dispatch thunk of EpisodeStateMachine.currentState.getter();

LABEL_3:

  v6 = 0;
LABEL_10:
  v7 = type metadata accessor for EpisodePlayState();
  return (*(*(v7 - 8) + 56))(a1, v6, 1, v7);
}

uint64_t sub_1002CAB7C(uint64_t a1)
{
  v2 = sub_100168088(&qword_100578FE0, &unk_100408A60);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1002CABF4()
{

  sub_10023A524(v0 + 48);

  return swift_deallocClassInstance();
}

id sub_1002CAC68(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v4 = v3;
  v6 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v6 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v6)
  {
    v7 = OBJC_IVAR___MTSwiftEpisodeListManifest_settings;
    v8 = type metadata accessor for EpisodeListSettings();
    v9 = *(v8 - 8);
    (*(v9 + 16))(v4 + v7, a3, v8);
    v10 = [objc_allocWithZone(NSFetchRequest) initWithEntityName:kMTEpisodeEntityName];
    v11 = v4;
    v12 = EpisodeListSettings.playPredicate.getter();
    [v10 setPredicate:v12];

    EpisodeListSettings.sort.getter();
    EpisodeSortType.playDescriptors.getter();
    sub_100029528();
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v10 setSortDescriptors:isa];

    v14 = String._bridgeToObjectiveC()();

    v18.receiver = v11;
    v18.super_class = type metadata accessor for EpisodeListManifest(0);
    v15 = objc_msgSendSuper2(&v18, "initWithInitialEpisodeUuid:fetchRequest:", v14, v10);

    (*(v9 + 8))(a3, v8);
  }

  else
  {
    v16 = type metadata accessor for EpisodeListSettings();
    (*(*(v16 - 8) + 8))(a3, v16);

    type metadata accessor for EpisodeListManifest(0);
    swift_deallocPartialClassInstance();
    return 0;
  }

  return v15;
}

id sub_1002CAF04()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for EpisodeListManifest(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

void *sub_1002CAFF4()
{
  v1 = v0;
  type metadata accessor for JSONEncoder();
  swift_allocObject();
  JSONEncoder.init()();
  type metadata accessor for EpisodeListSettings();
  sub_1002CBB9C(&qword_10057D2F0, &protocol conformance descriptor for EpisodeListSettings);
  v2 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v4 = v3;

  v24.receiver = v0;
  v24.super_class = type metadata accessor for EpisodeListManifest(0);
  v5 = objc_msgSendSuper2(&v24, "activity");
  v6 = v5;
  if (v5)
  {
    v7 = v5;
    isa = Data._bridgeToObjectiveC()().super.isa;
    v9 = String._bridgeToObjectiveC()();
    [v7 setValue:isa forKey:v9];
  }

  v10 = [v1 explicitSortOrder];
  if (v10)
  {

    swift_allocObject();
    JSONEncoder.init()();
    v11 = [v1 explicitSortOrder];
    if (v11)
    {
      v12 = v11;
      v13 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    }

    else
    {
      v13 = 0;
    }

    v23 = v13;
    sub_100168088(&qword_100582CD0, &unk_10040AA70);
    sub_1002CBBE0();
    v16 = dispatch thunk of JSONEncoder.encode<A>(_:)();
    v18 = v17;

    if (v6)
    {
      v19 = v6;
      v20 = Data._bridgeToObjectiveC()().super.isa;
      v21 = String._bridgeToObjectiveC()();
      [v19 setValue:v20 forKey:{v21, v23}];
      sub_1001F6D74(v2, v4);
      sub_1001F6D74(v16, v18);

      return v6;
    }

    sub_1001F6D74(v2, v4);
    v14 = v16;
    v15 = v18;
  }

  else
  {
    v14 = v2;
    v15 = v4;
  }

  sub_1001F6D74(v14, v15);
  return v6;
}

uint64_t sub_1002CB2F0(uint64_t a1, unint64_t a2, void *a3, void (*a4)(void *))
{
  sub_100168088(&unk_100573A80, &unk_100401160);
  __chkstk_darwin();
  v9 = &v41 - v8;
  v10 = type metadata accessor for EpisodeListSettings();
  v11 = *(v10 - 8);
  __chkstk_darwin();
  v13 = &v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin();
  v16 = &v41 - v15;
  if (a2)
  {

    v17 = [a3 userInfo];
    if (v17)
    {
      v44 = a1;
      v45 = v11;
      v46 = a4;
      v18 = v17;
      v19 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      v47 = 0xD00000000000001ELL;
      v48 = 0x800000010046DD50;
      AnyHashable.init<A>(_:)();
      if (*(v19 + 16) && (v20 = sub_100202028(&v49), (v21 & 1) != 0))
      {
        sub_10001B944(*(v19 + 56) + 32 * v20, &v51);
        sub_10016BE9C(&v49);

        if (*(&v52 + 1))
        {
          if ((swift_dynamicCast() & 1) == 0)
          {

            return (v46)(0, v24);
          }

          v22 = v50;
          v43 = v49;
          type metadata accessor for JSONDecoder();
          swift_allocObject();
          JSONDecoder.init()();
          sub_1002CBB9C(&qword_10057D2E8, &protocol conformance descriptor for EpisodeListSettings);
          v42 = v22;
          dispatch thunk of JSONDecoder.decode<A>(_:from:)();

          v25 = v45;
          (*(v45 + 56))(v9, 0, 1, v10);
          (*(v25 + 32))(v16, v9, v10);
          (*(v25 + 16))(v13, v16, v10);
          v26 = objc_allocWithZone(type metadata accessor for EpisodeListManifest(0));
          v27 = sub_1002CAC68(v44, a2, v13);
          v28 = [a3 userInfo];
          if (v28)
          {
            v29 = v28;
            v30 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

            v47 = 0xD000000000000014;
            v48 = 0x800000010046DD70;
            AnyHashable.init<A>(_:)();
            v31 = v42;
            v32 = v43;
            if (*(v30 + 16) && (v33 = sub_100202028(&v49), (v34 & 1) != 0))
            {
              sub_10001B944(*(v30 + 56) + 32 * v33, &v51);
              sub_10016BE9C(&v49);

              if (*(&v52 + 1))
              {
                if (swift_dynamicCast())
                {
                  v36 = v49;
                  v35 = v50;
                  swift_allocObject();
                  JSONDecoder.init()();
                  sub_100168088(&qword_10057C9C0, &qword_100403E20);
                  sub_1001F93CC(&qword_100576B38, &protocol witness table for String, &protocol conformance descriptor for <A> [A]);
                  dispatch thunk of JSONDecoder.decode<A>(_:from:)();

                  if (!v27)
                  {
                    sub_1001F6D74(v36, v35);

                    v37 = 0;
                    v31 = v42;
                    goto LABEL_27;
                  }

                  v39 = v27;
                  isa = Array._bridgeToObjectiveC()().super.isa;

                  [v39 setExplicitSortOrder:isa];
                  sub_1001F6D74(v36, v35);

                  v31 = v42;
                  goto LABEL_25;
                }

LABEL_24:
                if (!v27)
                {
                  v37 = 0;
                  goto LABEL_27;
                }

LABEL_25:
                v37 = v27;
LABEL_27:
                v38 = v27;
                v46(v37);
                sub_1001F6D74(v32, v31);

                return (*(v45 + 8))(v16, v10);
              }
            }

            else
            {

              sub_10016BE9C(&v49);
              v51 = 0u;
              v52 = 0u;
            }
          }

          else
          {
            v51 = 0u;
            v52 = 0u;
            v31 = v42;
            v32 = v43;
          }

          sub_100009104(&v51, &unk_1005783D0, &qword_1004031E0);
          goto LABEL_24;
        }
      }

      else
      {

        sub_10016BE9C(&v49);
        v51 = 0u;
        v52 = 0u;
      }

      a4 = v46;
    }

    else
    {

      v51 = 0u;
      v52 = 0u;
    }

    sub_100009104(&v51, &unk_1005783D0, &qword_1004031E0);
  }

  return (a4)(0, v14);
}

uint64_t sub_1002CB9C4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  if (a2)
  {
    v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v5 = v4;
  }

  else
  {
    v3 = 0;
    v5 = 0;
  }

  v2(v3, v5);
}

uint64_t sub_1002CBB9C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for EpisodeListSettings();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1002CBBE0()
{
  result = qword_10057D2F8;
  if (!qword_10057D2F8)
  {
    sub_100168310(&qword_100582CD0, &unk_10040AA70);
    sub_1001F93CC(&qword_100576B20, &protocol witness table for String, &protocol conformance descriptor for <A> [A]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10057D2F8);
  }

  return result;
}

uint64_t sub_1002CBC88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X8>)
{
  sub_100168088(&qword_100578E88, &qword_100406128);
  __chkstk_darwin();
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v9 = &v23 - v8;
  v10 = type metadata accessor for URLComponents();
  v11 = *(v10 - 8);
  __chkstk_darwin();
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v15 = &v23 - v14;
  if (!a1)
  {
    goto LABEL_24;
  }

  type metadata accessor for ChannelContextActionConfiguration(0);
  if (swift_dynamicCastClass())
  {

    sub_1002CC154(a2, a3);
LABEL_4:
  }

  type metadata accessor for EpisodeContextActionConfiguration(0);
  if (swift_dynamicCastClass())
  {

    v17 = sub_1002CDDE8();

    if (v17)
    {
      URLComponents.init(url:resolvingAgainstBaseURL:)();
      if ((*(v11 + 48))(v9, 1, v10) != 1)
      {
        (*(v11 + 32))(v15, v9, v10);

        URLComponents.queryItems.setter();
        URLComponents.url.getter();

        return (*(v11 + 8))(v15, v10);
      }

      v18 = v9;
LABEL_11:
      sub_100009104(v18, &qword_100578E88, &qword_100406128);
      v19 = type metadata accessor for URL();
      return (*(*(v19 - 8) + 56))(a3, 1, 1, v19);
    }

LABEL_23:

    goto LABEL_24;
  }

  type metadata accessor for PodcastContextActionConfiguration(0);
  if (swift_dynamicCastClass())
  {

    sub_1002CC71C(a2, a3);
    goto LABEL_4;
  }

  type metadata accessor for NowPlayingContextActionConfiguration();
  if (swift_dynamicCastClass())
  {

    sub_1002CD39C(a2, a3);
    goto LABEL_4;
  }

  type metadata accessor for TranscriptSelectionContextActionConfiguration(0);
  v20 = swift_dynamicCastClass();
  if (v20 && *(v20 + qword_1005766C8))
  {

    if (sub_1002CDDE8())
    {
      URLComponents.init(url:resolvingAgainstBaseURL:)();
      if ((*(v11 + 48))(v7, 1, v10) != 1)
      {
        (*(v11 + 32))(v13, v7, v10);

        URLComponents.queryItems.setter();
        URLComponents.url.getter();

        return (*(v11 + 8))(v13, v10);
      }

      v18 = v7;
      goto LABEL_11;
    }

    goto LABEL_23;
  }

LABEL_24:
  v21 = type metadata accessor for URL();
  v22 = *(*(v21 - 8) + 56);

  return v22(a3, 1, 1, v21);
}

void sub_1002CC154(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v36 = a1;
  v39 = a2;
  sub_100168088(&qword_100578E88, &qword_100406128);
  __chkstk_darwin();
  v4 = v31 - v3;
  v38 = type metadata accessor for URLComponents();
  v37 = *(v38 - 8);
  __chkstk_darwin();
  v35 = v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = type metadata accessor for URLQueryItem();
  v6 = *(v33 - 8);
  __chkstk_darwin();
  v34 = v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v2 + qword_1005932C8 + 16);
  v9 = *(v2 + qword_1005932C8 + 24);
  v40 = *(v2 + qword_1005932C8 + 8);
  sub_1000366D8();

  v10 = BinaryInteger.description.getter();
  v12 = v11;
  sub_100168088(&qword_100578E90, &unk_100406130);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100401B10;
  *(inited + 32) = 0x4E65646F73697065;
  *(inited + 40) = 0xEB00000000656D61;
  *(inited + 48) = 0;
  *(inited + 56) = 0;
  *(inited + 64) = 0x4965646F73697065;
  *(inited + 72) = 0xE900000000000064;
  *(inited + 80) = 0;
  *(inited + 88) = 0;
  *(inited + 96) = 0x4E74736163646F70;
  *(inited + 104) = 0xEB00000000656D61;
  *(inited + 112) = 0;
  *(inited + 120) = 0;
  *(inited + 128) = 0x4974736163646F70;
  *(inited + 136) = 0xE900000000000064;
  *(inited + 144) = 0;
  *(inited + 152) = 0;
  *(inited + 160) = 0x4E6C656E6E616863;
  *(inited + 168) = 0xEB00000000656D61;
  *(inited + 176) = v8;
  *(inited + 184) = v9;
  *(inited + 192) = 0x496C656E6E616863;
  *(inited + 200) = 0xE900000000000064;
  *(inited + 208) = v10;
  *(inited + 216) = v12;
  v14 = sub_10016A870(inited);
  swift_setDeallocating();
  sub_100168088(&qword_100578E98, &unk_100406140);
  swift_arrayDestroy();
  v15 = 1 << *(v14 + 32);
  v16 = -1;
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  v17 = v16 & *(v14 + 64);
  v18 = (v15 + 63) >> 6;
  v32 = v6;

  v19 = 0;
  v20 = _swiftEmptyArrayStorage;
  if (!v17)
  {
    goto LABEL_6;
  }

  do
  {
LABEL_4:
    while (1)
    {
      v21 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
      v22 = v21 | (v19 << 6);
      v23 = (*(v14 + 56) + 16 * v22);
      if (v23[1])
      {
        break;
      }

      if (!v17)
      {
        goto LABEL_6;
      }
    }

    v31[1] = *v23;
    v31[0] = *(*(v14 + 48) + 16 * v22);

    URLQueryItem.init(name:value:)();

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v20 = sub_100243BD4(0, v20[2] + 1, 1, v20);
    }

    v26 = v20[2];
    v25 = v20[3];
    if (v26 >= v25 >> 1)
    {
      v20 = sub_100243BD4((v25 > 1), v26 + 1, 1, v20);
    }

    v20[2] = v26 + 1;
    (*(v32 + 32))(v20 + ((*(v32 + 80) + 32) & ~*(v32 + 80)) + *(v32 + 72) * v26, v34, v33);
  }

  while (v17);
  while (1)
  {
LABEL_6:
    v24 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      __break(1u);
      return;
    }

    if (v24 >= v18)
    {
      break;
    }

    v17 = *(v14 + 64 + 8 * v24);
    ++v19;
    if (v17)
    {
      v19 = v24;
      goto LABEL_4;
    }
  }

  URLComponents.init(url:resolvingAgainstBaseURL:)();
  v27 = v37;
  v28 = v38;
  if ((*(v37 + 48))(v4, 1, v38) == 1)
  {

    sub_100009104(v4, &qword_100578E88, &qword_100406128);
    v29 = type metadata accessor for URL();
    (*(*(v29 - 8) + 56))(v39, 1, 1, v29);
  }

  else
  {
    v30 = v35;
    (*(v27 + 32))(v35, v4, v28);
    URLComponents.queryItems.setter();
    URLComponents.url.getter();
    (*(v27 + 8))(v30, v28);
  }
}

void sub_1002CC71C(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v99 = a1;
  v103 = a2;
  sub_100168088(&qword_100578E88, &qword_100406128);
  __chkstk_darwin();
  v98 = &v92 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v97 = &v92 - v4;
  v5 = type metadata accessor for URLComponents();
  v100 = *(v5 - 8);
  v101 = v5;
  __chkstk_darwin();
  v96 = &v92 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v95 = &v92 - v7;
  v93 = type metadata accessor for URLQueryItem();
  v102 = *(v93 - 8);
  __chkstk_darwin();
  v94 = &v92 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v92 = &v92 - v9;
  type metadata accessor for PodcastContextActionDataType(0);
  __chkstk_darwin();
  v11 = &v92 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v13 = &v92 - v12;
  v14 = type metadata accessor for ShowOffer();
  v15 = *(v14 - 8);
  __chkstk_darwin();
  v17 = &v92 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = qword_100576738;
  v19 = *(v2 + qword_100576738);
  v20 = OBJC_IVAR____TtC8Podcasts24PodcastContextActionData_type;
  swift_beginAccess();
  sub_1002CF334(v19 + v20, v13, type metadata accessor for PodcastContextActionDataType);
  type metadata accessor for PodcastContextActionDataType.Kind(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v15 + 32))(v17, v13, v14);
    v21 = ShowOffer.title.getter();
    v23 = v22;
    v24 = ShowOffer.adamId.getter();
    (*(v15 + 8))(v17, v14);
    v105[0] = v24;
    sub_1000366D8();
    v25 = BinaryInteger.description.getter();
    v27 = v26;
    sub_100168088(&qword_100578E90, &unk_100406130);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100401B10;
    *(inited + 32) = 0x4E65646F73697065;
    *(inited + 40) = 0xEB00000000656D61;
    *(inited + 48) = 0;
    *(inited + 56) = 0;
    *(inited + 64) = 0x4965646F73697065;
    *(inited + 72) = 0xE900000000000064;
    *(inited + 80) = 0;
    *(inited + 88) = 0;
    *(inited + 96) = 0x4E74736163646F70;
    *(inited + 104) = 0xEB00000000656D61;
    *(inited + 112) = v21;
    *(inited + 120) = v23;
    *(inited + 128) = 0x4974736163646F70;
    *(inited + 136) = 0xE900000000000064;
    *(inited + 144) = v25;
    *(inited + 152) = v27;
    *(inited + 160) = 0x4E6C656E6E616863;
    *(inited + 168) = 0xEB00000000656D61;
    *(inited + 176) = 0;
    *(inited + 184) = 0;
    *(inited + 192) = 0x496C656E6E616863;
    *(inited + 208) = 0;
    *(inited + 216) = 0;
    *(inited + 200) = 0xE900000000000064;
    v29 = sub_10016A870(inited);
    swift_setDeallocating();
    sub_100168088(&qword_100578E98, &unk_100406140);
    swift_arrayDestroy();
    v30 = 1 << *(v29 + 32);
    v31 = -1;
    if (v30 < 64)
    {
      v31 = ~(-1 << v30);
    }

    v32 = v31 & *(v29 + 64);
    v33 = (v30 + 63) >> 6;
    v34 = (v102 + 32);

    v35 = 0;
    v36 = _swiftEmptyArrayStorage;
    if (!v32)
    {
      goto LABEL_7;
    }

    do
    {
LABEL_5:
      while (1)
      {
        v37 = __clz(__rbit64(v32));
        v32 &= v32 - 1;
        v38 = v37 | (v35 << 6);
        v39 = (*(v29 + 56) + 16 * v38);
        if (v39[1])
        {
          break;
        }

        if (!v32)
        {
          goto LABEL_7;
        }
      }

      v95 = *v39;
      v92 = *(*(v29 + 48) + 16 * v38);

      URLQueryItem.init(name:value:)();

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v97 = v34;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v36 = sub_100243BD4(0, v36[2] + 1, 1, v36);
      }

      v43 = v36[2];
      v42 = v36[3];
      v44 = v102;
      if (v43 >= v42 >> 1)
      {
        v36 = sub_100243BD4((v42 > 1), v43 + 1, 1, v36);
      }

      v36[2] = v43 + 1;
      v45 = v36 + ((*(v44 + 80) + 32) & ~*(v44 + 80)) + *(v44 + 72) * v43;
      v34 = v97;
      (*(v44 + 32))(v45, v94, v93);
    }

    while (v32);
    while (1)
    {
LABEL_7:
      v40 = v35 + 1;
      if (__OFADD__(v35, 1))
      {
        __break(1u);
        goto LABEL_52;
      }

      if (v40 >= v33)
      {
        break;
      }

      v32 = *(v29 + 64 + 8 * v40);
      ++v35;
      if (v32)
      {
        v35 = v40;
        goto LABEL_5;
      }
    }

    v55 = v98;
    URLComponents.init(url:resolvingAgainstBaseURL:)();
    v57 = v100;
    v56 = v101;
    if ((*(v100 + 48))(v55, 1, v101) == 1)
    {

      goto LABEL_48;
    }

    v58 = v96;
    (*(v57 + 32))(v96, v55, v56);
    URLComponents.queryItems.setter();
    URLComponents.url.getter();
    (*(v57 + 8))(v58, v56);
  }

  else
  {
    sub_1002CF40C(v13, type metadata accessor for PodcastContextActionDataType.Kind);
    v46 = *(v2 + v18);
    v47 = OBJC_IVAR____TtC8Podcasts24PodcastContextActionData_type;
    swift_beginAccess();
    sub_1002CF334(v46 + v47, v11, type metadata accessor for PodcastContextActionDataType);
    v49 = sub_100215D14(v48);
    sub_1002CF40C(v11, type metadata accessor for PodcastContextActionDataType);
    if (v49)
    {
      v50 = [v49 title];
      if (v50)
      {
        v51 = v50;
        v52 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v54 = v53;
      }

      else
      {
        v52 = 0;
        v54 = 0;
      }

      [v49 storeCollectionId];
      v104 = AdamID.init(rawValue:)();
      sub_1000366D8();
      v96 = BinaryInteger.description.getter();
      v98 = v59;
      v60 = [v49 channel];
      if (v60 && (v61 = v60, v62 = [v60 name], v61, v62))
      {
        v63 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v65 = v64;
      }

      else
      {
        v63 = 0;
        v65 = 0;
      }

      v66 = [v49 channel];
      if (v66)
      {
        v67 = v66;
        [v66 storeId];

        v104 = AdamID.init(rawValue:)();
        v68 = BinaryInteger.description.getter();
        v70 = v69;
      }

      else
      {
        v68 = 0;
        v70 = 0;
      }

      sub_100168088(&qword_100578E90, &unk_100406130);
      v71 = swift_initStackObject();
      *(v71 + 16) = xmmword_100401B10;
      *(v71 + 32) = 0x4E65646F73697065;
      *(v71 + 40) = 0xEB00000000656D61;
      *(v71 + 48) = 0;
      *(v71 + 56) = 0;
      *(v71 + 64) = 0x4965646F73697065;
      *(v71 + 72) = 0xE900000000000064;
      *(v71 + 80) = 0;
      *(v71 + 88) = 0;
      *(v71 + 96) = 0x4E74736163646F70;
      *(v71 + 104) = 0xEB00000000656D61;
      *(v71 + 112) = v52;
      *(v71 + 120) = v54;
      *(v71 + 128) = 0x4974736163646F70;
      v72 = v96;
      *(v71 + 136) = 0xE900000000000064;
      *(v71 + 144) = v72;
      *(v71 + 152) = v98;
      *(v71 + 160) = 0x4E6C656E6E616863;
      *(v71 + 168) = 0xEB00000000656D61;
      *(v71 + 176) = v63;
      *(v71 + 184) = v65;
      *(v71 + 192) = 0x496C656E6E616863;
      *(v71 + 200) = 0xE900000000000064;
      *(v71 + 208) = v68;
      *(v71 + 216) = v70;
      v73 = sub_10016A870(v71);
      swift_setDeallocating();
      sub_100168088(&qword_100578E98, &unk_100406140);
      swift_arrayDestroy();
      v74 = 1 << *(v73 + 32);
      v75 = -1;
      if (v74 < 64)
      {
        v75 = ~(-1 << v74);
      }

      v76 = v75 & *(v73 + 64);
      v77 = (v74 + 63) >> 6;
      v78 = (v102 + 32);

      v79 = 0;
      v80 = _swiftEmptyArrayStorage;
      if (!v76)
      {
        goto LABEL_36;
      }

      do
      {
LABEL_34:
        while (1)
        {
          v81 = __clz(__rbit64(v76));
          v76 &= v76 - 1;
          v82 = v81 | (v79 << 6);
          v83 = (*(v73 + 56) + 16 * v82);
          if (v83[1])
          {
            break;
          }

          if (!v76)
          {
            goto LABEL_36;
          }
        }

        v98 = v78;
        v96 = *v83;
        v94 = *(*(v73 + 48) + 16 * v82);

        URLQueryItem.init(name:value:)();

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v80 = sub_100243BD4(0, v80[2] + 1, 1, v80);
        }

        v86 = v80[2];
        v85 = v80[3];
        if (v86 >= v85 >> 1)
        {
          v80 = sub_100243BD4((v85 > 1), v86 + 1, 1, v80);
        }

        v80[2] = v86 + 1;
        v87 = v80 + ((*(v102 + 80) + 32) & ~*(v102 + 80)) + *(v102 + 72) * v86;
        v78 = v98;
        (*(v102 + 32))(v87, v92, v93);
      }

      while (v76);
      while (1)
      {
LABEL_36:
        v84 = v79 + 1;
        if (__OFADD__(v79, 1))
        {
LABEL_52:
          __break(1u);
          return;
        }

        if (v84 >= v77)
        {
          break;
        }

        v76 = *(v73 + 64 + 8 * v84);
        ++v79;
        if (v76)
        {
          v79 = v84;
          goto LABEL_34;
        }
      }

      v55 = v97;
      URLComponents.init(url:resolvingAgainstBaseURL:)();
      v89 = v100;
      v88 = v101;
      if ((*(v100 + 48))(v55, 1, v101) != 1)
      {
        v91 = v95;
        (*(v89 + 32))(v95, v55, v88);
        URLComponents.queryItems.setter();
        URLComponents.url.getter();

        (*(v89 + 8))(v91, v88);
        return;
      }

LABEL_48:
      sub_100009104(v55, &qword_100578E88, &qword_100406128);
    }

    v90 = type metadata accessor for URL();
    (*(*(v90 - 8) + 56))(v103, 1, 1, v90);
  }
}

uint64_t sub_1002CD39C@<X0>(uint64_t a1@<X0>, unint64_t a2@<X8>)
{
  sub_100168088(&qword_100578E88, &qword_100406128);
  __chkstk_darwin();
  v5 = v56 - v4;
  v6 = type metadata accessor for URLComponents();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = type metadata accessor for URLQueryItem();
  v68 = *(v61 - 8);
  __chkstk_darwin();
  v59 = v56 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v58 = v56 - v11;
  v12 = dispatch thunk of NowPlayingContextActionConfiguration.modelObject.getter();
  v13 = [v12 author];

  v66 = v6;
  v65 = v5;
  v64 = v7;
  v63 = a1;
  v60 = v9;
  if (v13 && (v14 = [v13 name], v13, v14))
  {
    v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v17 = v16;
  }

  else
  {
    v15 = 0;
    v17 = 0;
  }

  type metadata accessor for NowPlayingTranscriptSelectionContextActionConfiguration();
  v18 = swift_dynamicCastClass();
  if (v18)
  {
  }

  v19 = dispatch thunk of NowPlayingContextActionConfiguration.modelObject.getter();
  v20 = [v19 title];

  if (v20)
  {
    v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v23 = v22;
  }

  else
  {
    v21 = 0;
    v23 = 0;
  }

  v24 = dispatch thunk of NowPlayingContextActionConfiguration.modelObject.getter();
  v25 = [v24 podcast];

  if (v25 && (v26 = MPModelObject.adamID.getter(), v28 = v27, v25, (v28 & 1) == 0))
  {
    v69 = v26;
    sub_1000366D8();
    v29 = BinaryInteger.description.getter();
    v30 = v31;
  }

  else
  {
    v29 = 0;
    v30 = 0;
  }

  v67 = a2;
  if (v18)
  {

    started = NowPlayingTranscriptSelectionContextActionConfiguration.referenceStartTime.getter();
    v62 = v33;

    v34 = *&started;
  }

  else
  {
    v62 = 1;
    v34 = 0.0;
  }

  sub_100168088(&qword_100578E90, &unk_100406130);
  inited = swift_initStackObject();
  *(inited + 32) = 0x4E65646F73697065;
  *(inited + 16) = xmmword_100401B10;
  *(inited + 40) = 0xEB00000000656D61;
  *(inited + 48) = v21;
  *(inited + 56) = v23;
  *(inited + 64) = 0x4965646F73697065;
  *(inited + 72) = 0xE900000000000064;
  *(inited + 80) = 0;
  *(inited + 88) = 0;
  *(inited + 96) = 0x4E74736163646F70;
  *(inited + 104) = 0xEB00000000656D61;
  *(inited + 112) = v15;
  *(inited + 120) = v17;
  *(inited + 128) = 0x4974736163646F70;
  *(inited + 136) = 0xE900000000000064;
  *(inited + 144) = v29;
  v36 = 0xE900000000000064;
  *(inited + 152) = v30;
  *(inited + 160) = 0x4E6C656E6E616863;
  *(inited + 168) = 0xEB00000000656D61;
  *(inited + 176) = 0;
  *(inited + 184) = 0;
  *(inited + 192) = 0x496C656E6E616863;
  *(inited + 208) = 0;
  *(inited + 216) = 0;
  *(inited + 200) = 0xE900000000000064;
  v37 = sub_10016A870(inited);
  swift_setDeallocating();
  sub_100168088(&qword_100578E98, &unk_100406140);
  swift_arrayDestroy();
  v38 = 1 << *(v37 + 32);
  v39 = -1;
  if (v38 < 64)
  {
    v39 = ~(-1 << v38);
  }

  v40 = v39 & *(v37 + 64);
  v41 = (v38 + 63) >> 6;
  v42 = v68 + 32;

  v43 = 0;
  v44 = _swiftEmptyArrayStorage;
  if (!v40)
  {
    goto LABEL_22;
  }

  do
  {
LABEL_20:
    while (1)
    {
      v45 = __clz(__rbit64(v40));
      v40 &= v40 - 1;
      v46 = (*(v37 + 56) + 16 * (v45 | (v43 << 6)));
      if (v46[1])
      {
        break;
      }

      if (!v40)
      {
        goto LABEL_22;
      }
    }

    v57 = v42;
    v56[1] = *v46;

    URLQueryItem.init(name:value:)();

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v44 = sub_100243BD4(0, v44[2] + 1, 1, v44);
    }

    v49 = v44[2];
    v48 = v44[3];
    v42 = v57;
    if (v49 >= v48 >> 1)
    {
      v44 = sub_100243BD4((v48 > 1), v49 + 1, 1, v44);
    }

    v44[2] = v49 + 1;
    (*(v68 + 32))(v44 + ((*(v68 + 80) + 32) & ~*(v68 + 80)) + *(v68 + 72) * v49, v58, v61);
    v36 = 0xE900000000000064;
  }

  while (v40);
  while (1)
  {
LABEL_22:
    v47 = v43 + 1;
    if (__OFADD__(v43, 1))
    {
      __break(1u);
LABEL_42:
      v44 = sub_100243BD4(0, v44[2] + 1, 1, v44);
      goto LABEL_35;
    }

    if (v47 >= v41)
    {
      break;
    }

    v40 = *(v37 + 64 + 8 * v47);
    ++v43;
    if (v40)
    {
      v43 = v47;
      goto LABEL_20;
    }
  }

  if (v62 & 1 | (v34 == 0.0))
  {
    v36 = v67;
    v40 = v66;
    v42 = v65;
    v37 = v64;
    goto LABEL_38;
  }

  Double.description.getter();
  v41 = v59;
  URLQueryItem.init(name:value:)();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v36 = v67;
  v40 = v66;
  v42 = v65;
  v37 = v64;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_42;
  }

LABEL_35:
  v52 = v44[2];
  v51 = v44[3];
  if (v52 >= v51 >> 1)
  {
    v44 = sub_100243BD4((v51 > 1), v52 + 1, 1, v44);
  }

  v44[2] = v52 + 1;
  (*(v68 + 32))(v44 + ((*(v68 + 80) + 32) & ~*(v68 + 80)) + *(v68 + 72) * v52, v41, v61);
LABEL_38:
  URLComponents.init(url:resolvingAgainstBaseURL:)();
  if ((*(v37 + 48))(v42, 1, v40) == 1)
  {

    sub_100009104(v42, &qword_100578E88, &qword_100406128);
    v53 = type metadata accessor for URL();
    return (*(*(v53 - 8) + 56))(v36, 1, 1, v53);
  }

  else
  {
    v55 = v60;
    (*(v37 + 32))(v60, v42, v40);
    URLComponents.queryItems.setter();
    URLComponents.url.getter();

    return (*(v37 + 8))(v55, v40);
  }
}

uint64_t sub_1002CDC38(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  sub_100168088(&qword_100574040, &unk_100400AD0);
  __chkstk_darwin();
  v7 = &v13 - v6;
  v8 = type metadata accessor for URL();
  v9 = *(v8 - 8);
  __chkstk_darwin();
  v11 = &v13 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1002CBC88(a2, a1, v7);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_100009104(v7, &qword_100574040, &unk_100400AD0);
    return a3(a1);
  }

  else
  {
    (*(v9 + 32))(v11, v7, v8);
    a3(v11);
    return (*(v9 + 8))(v11, v8);
  }
}

int64_t sub_1002CDDE8()
{
  v110 = type metadata accessor for URLQueryItem();
  v113 = *(v110 - 8);
  __chkstk_darwin();
  v108 = &v102[-((v1 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v109 = &v102[-v2];
  __chkstk_darwin();
  v107 = &v102[-v3];
  v4 = type metadata accessor for EpisodeContextActionDataType.Reference(0);
  __chkstk_darwin();
  v111 = &v102[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = type metadata accessor for EpisodeOffer();
  v112 = *(v6 - 8);
  __chkstk_darwin();
  v8 = &v102[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v10 = &v102[-v9];
  type metadata accessor for EpisodeContextActionDataType(0);
  __chkstk_darwin();
  v12 = &v102[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v14 = &v102[-v13];
  v121 = 0;
  v119 = 0u;
  v120 = 0u;
  v15 = OBJC_IVAR____TtC8Podcasts24EpisodeContextActionData_type;
  swift_beginAccess();
  sub_1002CF334(v0 + v15, v14, type metadata accessor for EpisodeContextActionDataType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v0 = *v14;
      if (!(*v14 >> 62))
      {
        if (!*((v0 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_42;
        }

LABEL_16:
        if ((v0 & 0xC000000000000001) != 0)
        {
LABEL_70:
          v26 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (!*((v0 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_73;
          }

          v26 = *(v0 + 32);
        }

        v27 = v26;

        v28 = sub_100009F1C(0, &qword_10057A130, off_1004D1B30);
        sub_100009104(&v119, &unk_10057D300, qword_10040AB20);
        *&v119 = v27;
        *(&v120 + 1) = v28;
        v121 = &off_1004EAEF0;
        goto LABEL_43;
      }
    }

    else
    {
      if (EnumCaseMultiPayload == 3)
      {
        v17 = *v14;
        if (*v14 >> 62)
        {
          if (_CocoaArrayWrapper.endIndex.getter())
          {
            goto LABEL_6;
          }
        }

        else if (*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
LABEL_6:
          if ((v17 & 0xC000000000000001) != 0)
          {
            v18 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_9:
            v19 = v18;

            v20 = MPCPlayerResponseItem.podcastEpisode.getter();

            if (v20)
            {
              v21 = sub_100009F1C(0, &qword_10057A058, MPModelPodcastEpisode_ptr);
              sub_100009104(&v119, &unk_10057D300, qword_10040AB20);
              *&v119 = v20;
              *(&v120 + 1) = v21;
              v121 = &off_1004EAF30;
            }

            goto LABEL_43;
          }

          if (*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            v18 = *(v17 + 32);
            goto LABEL_9;
          }

LABEL_73:
          __break(1u);
LABEL_74:
          v0 = sub_100243BD4(0, *(v0 + 16) + 1, 1, v0);
          goto LABEL_66;
        }

LABEL_42:

        goto LABEL_43;
      }

      v29 = v111;
      sub_100200004(v14, v111);
      v30 = (v29 + *(v4 + 24));
      v32 = *v30;
      v31 = v30[1];
      *&v116 = *v29;
      sub_1000366D8();

      v33 = BinaryInteger.description.getter();
      v35 = v34;
      sub_100168088(&qword_100578E90, &unk_100406130);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_100401B10;
      *(inited + 32) = 0x4E65646F73697065;
      *(inited + 40) = 0xEB00000000656D61;
      *(inited + 48) = v32;
      *(inited + 56) = v31;
      *(inited + 64) = 0x4965646F73697065;
      *(inited + 72) = 0xE900000000000064;
      *(inited + 80) = v33;
      *(inited + 88) = v35;
      *(inited + 96) = 0x4E74736163646F70;
      *(inited + 104) = 0xEB00000000656D61;
      *(inited + 112) = 0;
      *(inited + 120) = 0;
      *(inited + 128) = 0x4974736163646F70;
      *(inited + 136) = 0xE900000000000064;
      *(inited + 144) = 0;
      *(inited + 152) = 0;
      *(inited + 160) = 0x4E6C656E6E616863;
      *(inited + 168) = 0xEB00000000656D61;
      *(inited + 176) = 0;
      *(inited + 184) = 0;
      *(inited + 192) = 0x496C656E6E616863;
      *(inited + 208) = 0;
      *(inited + 216) = 0;
      *(inited + 200) = 0xE900000000000064;
      v8 = sub_10016A870(inited);
      swift_setDeallocating();
      sub_100168088(&qword_100578E98, &unk_100406140);
      swift_arrayDestroy();
      v37 = 1 << v8[32];
      v38 = -1;
      if (v37 < 64)
      {
        v38 = ~(-1 << v37);
      }

      v39 = v38 & *(v8 + 8);
      v40 = (v37 + 63) >> 6;
      *&v41 = v113 + 32;

      v42 = 0;
      v0 = _swiftEmptyArrayStorage;
      if (!v39)
      {
        goto LABEL_25;
      }

      do
      {
LABEL_23:
        while (1)
        {
          v43 = __clz(__rbit64(v39));
          v39 &= v39 - 1;
          v44 = *(v8 + 7) + 16 * (v43 | (v42 << 6));
          if (*(v44 + 8))
          {
            break;
          }

          if (!v39)
          {
            goto LABEL_25;
          }
        }

        v112 = v41;
        v109 = *v44;

        URLQueryItem.init(name:value:)();

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v0 = sub_100243BD4(0, *(v0 + 16) + 1, 1, v0);
        }

        v47 = *(v0 + 16);
        v46 = *(v0 + 24);
        if (v47 >= v46 >> 1)
        {
          v0 = sub_100243BD4((v46 > 1), v47 + 1, 1, v0);
        }

        *(v0 + 16) = v47 + 1;
        v48 = v0 + ((*(v113 + 80) + 32) & ~*(v113 + 80)) + *(v113 + 72) * v47;
        v41 = v112;
        (*(v113 + 32))(v48, v107, v110);
      }

      while (v39);
LABEL_25:
      while (1)
      {
        v45 = v42 + 1;
        if (__OFADD__(v42, 1))
        {
          break;
        }

        if (v45 >= v40)
        {

          sub_1002CF40C(v111, type metadata accessor for EpisodeContextActionDataType.Reference);
          sub_100009104(&v119, &unk_10057D300, qword_10040AB20);
          return v0;
        }

        v39 = *&v8[8 * v45 + 64];
        ++v42;
        if (v39)
        {
          v42 = v45;
          goto LABEL_23;
        }
      }

      __break(1u);
    }

    if (!_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_42;
    }

    goto LABEL_16;
  }

  v22 = v112;
  if (EnumCaseMultiPayload)
  {
    if (*(*v14 + 16))
    {
      (*(*&v112 + 16))(v8, *v14 + ((*(*&v112 + 80) + 32) & ~*(*&v112 + 80)), v6);

      v49 = *(*&v22 + 32);
      v49(v10, v8, v6);
      *(&v117 + 1) = v6;
      v118 = &off_1004EAEB0;
      v50 = sub_10000E680(&v116);
      v49(v50, v10, v6);
      sub_100009104(&v119, &unk_10057D300, qword_10040AB20);
      v119 = v116;
      v120 = v117;
      v121 = v118;
      goto LABEL_43;
    }

    goto LABEL_42;
  }

  sub_1002CF40C(v14, type metadata accessor for EpisodeContextActionDataType);
  sub_1002CF334(v0 + v15, v12, type metadata accessor for EpisodeContextActionDataType);
  v24 = sub_100398A94(v23);
  sub_1002CF40C(v12, type metadata accessor for EpisodeContextActionDataType);
  if (v24)
  {
    v25 = sub_100009F1C(0, &qword_100573660, MTEpisode_ptr);
    sub_100009104(&v119, &unk_10057D300, qword_10040AB20);
    *&v119 = v24;
    *(&v120 + 1) = v25;
    v121 = &off_1004EAE70;
  }

LABEL_43:
  sub_1002CF39C(&v119, &v114);
  if (!v115)
  {
    sub_100009104(&v119, &unk_10057D300, qword_10040AB20);
    sub_100009104(&v114, &unk_10057D300, qword_10040AB20);
    return 0;
  }

  sub_1000109E4(&v114, &v116);
  v51 = *(&v117 + 1);
  v52 = v118;
  sub_1000044A0(&v116, *(&v117 + 1));
  v111 = (v52[1])(v51, v52);
  v112 = v53;
  v54 = *(&v117 + 1);
  v55 = v118;
  sub_1000044A0(&v116, *(&v117 + 1));
  v106 = (v55[2])(v54, v55);
  v107 = v56;
  v57 = *(&v117 + 1);
  v58 = v118;
  sub_1000044A0(&v116, *(&v117 + 1));
  v104 = (v58[3])(v57, v58);
  v105 = v59;
  v60 = *(&v117 + 1);
  v61 = v118;
  sub_1000044A0(&v116, *(&v117 + 1));
  v62 = (v61[4])(v60, v61);
  v64 = v63;
  v65 = *(&v117 + 1);
  v66 = v118;
  sub_1000044A0(&v116, *(&v117 + 1));
  v67 = (v66[5])(v65, v66);
  v69 = v68;
  v70 = *(&v117 + 1);
  v71 = v118;
  sub_1000044A0(&v116, *(&v117 + 1));
  v72 = (v71[6])(v70, v71);
  v74 = v73;
  v75 = *(&v117 + 1);
  v76 = v118;
  sub_1000044A0(&v116, *(&v117 + 1));
  v77 = COERCE_DOUBLE((v76[7])(v75, v76));
  v103 = v78;
  sub_100168088(&qword_100578E90, &unk_100406130);
  v79 = swift_initStackObject();
  *(v79 + 32) = 0x4E65646F73697065;
  *(v79 + 16) = xmmword_100401B10;
  v80 = v111;
  v81 = v112;
  *(v79 + 40) = 0xEB00000000656D61;
  *(v79 + 48) = v80;
  *(v79 + 56) = v81;
  *(v79 + 64) = 0x4965646F73697065;
  v82 = v106;
  v83 = v107;
  *(v79 + 72) = 0xE900000000000064;
  *(v79 + 80) = v82;
  *(v79 + 88) = v83;
  *(v79 + 96) = 0x4E74736163646F70;
  v84 = v104;
  v85 = v105;
  *(v79 + 104) = 0xEB00000000656D61;
  *(v79 + 112) = v84;
  *(v79 + 120) = v85;
  *(v79 + 128) = 0x4974736163646F70;
  *(v79 + 136) = 0xE900000000000064;
  *(v79 + 144) = v62;
  *(v79 + 152) = v64;
  *(v79 + 160) = 0x4E6C656E6E616863;
  *(v79 + 168) = 0xEB00000000656D61;
  *(v79 + 176) = v67;
  *(v79 + 184) = v69;
  *(v79 + 192) = 0x496C656E6E616863;
  *(v79 + 200) = 0xE900000000000064;
  *(v79 + 208) = v72;
  *(v79 + 216) = v74;
  v86 = sub_10016A870(v79);
  swift_setDeallocating();
  sub_100168088(&qword_100578E98, &unk_100406140);
  swift_arrayDestroy();
  v87 = 1 << *(v86 + 32);
  v88 = -1;
  if (v87 < 64)
  {
    v88 = ~(-1 << v87);
  }

  v89 = v88 & *(v86 + 64);
  v90 = (v87 + 63) >> 6;
  v91 = (v113 + 32);

  v92 = 0;
  v0 = _swiftEmptyArrayStorage;
  if (!v89)
  {
    goto LABEL_49;
  }

  do
  {
LABEL_47:
    while (1)
    {
      v93 = __clz(__rbit64(v89));
      v89 &= v89 - 1;
      v94 = *(v86 + 56) + 16 * (v93 | (v92 << 6));
      if (*(v94 + 8))
      {
        break;
      }

      if (!v89)
      {
        goto LABEL_49;
      }
    }

    v111 = v91;
    v112 = v77;
    v107 = *v94;

    URLQueryItem.init(name:value:)();

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v0 = sub_100243BD4(0, *(v0 + 16) + 1, 1, v0);
    }

    v97 = *(v0 + 16);
    v96 = *(v0 + 24);
    v77 = v112;
    if (v97 >= v96 >> 1)
    {
      v0 = sub_100243BD4((v96 > 1), v97 + 1, 1, v0);
    }

    *(v0 + 16) = v97 + 1;
    v98 = v0 + ((*(v113 + 80) + 32) & ~*(v113 + 80)) + *(v113 + 72) * v97;
    v91 = v111;
    (*(v113 + 32))(v98, v109, v110);
  }

  while (v89);
  while (1)
  {
LABEL_49:
    v95 = v92 + 1;
    if (__OFADD__(v92, 1))
    {
      __break(1u);
      goto LABEL_70;
    }

    if (v95 >= v90)
    {
      break;
    }

    v89 = *(v86 + 64 + 8 * v95);
    ++v92;
    if (v89)
    {
      v92 = v95;
      goto LABEL_47;
    }
  }

  if ((v103 & 1) != 0 || v77 == 0.0)
  {
    sub_100009104(&v119, &unk_10057D300, qword_10040AB20);
    goto LABEL_62;
  }

  Double.description.getter();
  v8 = v108;
  URLQueryItem.init(name:value:)();

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_74;
  }

LABEL_66:
  v101 = *(v0 + 16);
  v100 = *(v0 + 24);
  if (v101 >= v100 >> 1)
  {
    v0 = sub_100243BD4((v100 > 1), v101 + 1, 1, v0);
  }

  sub_100009104(&v119, &unk_10057D300, qword_10040AB20);
  *(v0 + 16) = v101 + 1;
  (*(v113 + 32))(v0 + ((*(v113 + 80) + 32) & ~*(v113 + 80)) + *(v113 + 72) * v101, v8, v110);
LABEL_62:
  sub_100004590(&v116);
  return v0;
}

id sub_1002CEC8C()
{
  result = [v0 podcast];
  if (result)
  {
    v2 = result;
    v3 = [result channel];

    if (v3)
    {
      [v3 storeId];

      AdamID.init(rawValue:)();
      sub_1000366D8();
      return BinaryInteger.description.getter();
    }

    else
    {
      return 0;
    }
  }

  return result;
}

id sub_1002CED58()
{
  result = [*v0 podcast];
  if (result)
  {
    v2 = result;
    [result storeCollectionId];

    AdamID.init(rawValue:)();
    sub_1000366D8();
    return BinaryInteger.description.getter();
  }

  return result;
}

uint64_t sub_1002CEE58(uint64_t a1)
{
  EpisodeOffer.contentId.getter();
  sub_1000366D8();
  return BinaryInteger.description.getter();
}

uint64_t sub_1002CEE9C()
{
  v0 = type metadata accessor for ShowOffer();
  v1 = *(v0 - 8);
  __chkstk_darwin();
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  EpisodeOffer.showOffer.getter();
  v4 = ShowOffer.title.getter();
  (*(v1 + 8))(v3, v0);
  return v4;
}

uint64_t sub_1002CEF7C()
{
  v0 = type metadata accessor for ShowOffer();
  v1 = *(v0 - 8);
  __chkstk_darwin();
  v3 = v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  EpisodeOffer.showOffer.getter();
  v4 = ShowOffer.adamId.getter();
  (*(v1 + 8))(v3, v0);
  v6[1] = v4;
  sub_1000366D8();
  return BinaryInteger.description.getter();
}

uint64_t sub_1002CF0CC()
{
  [*v0 channelStoreId];
  AdamID.init(rawValue:)();
  sub_1000366D8();
  return BinaryInteger.description.getter();
}

uint64_t sub_1002CF150()
{
  v1 = [*v0 title];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t sub_1002CF1B8(uint64_t a1)
{
  MPModelObject.adamID.getter();
  if (v1)
  {
    return 0;
  }

  sub_1000366D8();
  return BinaryInteger.description.getter();
}

id sub_1002CF224(uint64_t a1, uint64_t a2, SEL *a3, SEL *a4)
{
  result = [*v4 *a3];
  if (result)
  {
    v7 = result;
    v8 = [result *a4];

    if (v8)
    {
      v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();

      return v9;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

id sub_1002CF2AC()
{
  result = [*v0 podcast];
  if (result)
  {
    v2 = result;
    MPModelObject.adamID.getter();
    v4 = v3;

    if (v4)
    {
      return 0;
    }

    else
    {
      sub_1000366D8();
      return BinaryInteger.description.getter();
    }
  }

  return result;
}

uint64_t sub_1002CF334(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1002CF39C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100168088(&unk_10057D300, qword_10040AB20);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1002CF40C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1002CF488(uint64_t a1, const char *a2, ...)
{
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    sub_1001FE728();
    swift_errorRetain();
    static OS_os_log.classKit.getter();
    swift_errorRetain();
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v17 = a2;
      v11 = v10;
      v12 = swift_slowAlloc();
      v18 = a1;
      v19 = v12;
      *v11 = 136315138;
      swift_errorRetain();
      sub_100168088(&qword_100575C50, &unk_100402650);
      v13 = String.init<A>(describing:)();
      v15 = sub_1000153E0(v13, v14, &v19);

      *(v11 + 4) = v15;
      _os_log_impl(&_mh_execute_header, v8, v9, v17, v11, 0xCu);
      sub_100004590(v12);
    }

    else
    {
    }

    (*(v5 + 8))(v7, v4);
  }
}

id UIAppSettingsBridge.open(destination:)(char a1, id a2)
{
  if (a1)
  {
    return [a2 openGlobalSettings];
  }

  else
  {
    return _sSo13UIApplicationC8PodcastsE18openGlobalSettings19deepLinkDestinationy0B2UI0de4DeepG5StateC0H0O_tF_0();
  }
}

id sub_1002CF6B0(char a1)
{
  if (a1)
  {
    return [*v1 openGlobalSettings];
  }

  else
  {
    return _sSo13UIApplicationC8PodcastsE18openGlobalSettings19deepLinkDestinationy0B2UI0de4DeepG5StateC0H0O_tF_0();
  }
}

void sub_1002CF6D8(__n128 a1)
{
  v2 = *v1;
  PerformanceTestCase.name.getter();
  v3 = String._bridgeToObjectiveC()();

  [v2 finishedTest:v3];
}

void sub_1002CF744(__n128 a1)
{
  v2 = *v1;
  PerformanceTestCase.name.getter();
  v3 = String._bridgeToObjectiveC()();

  v4 = String._bridgeToObjectiveC()();
  [v2 failedTest:v3 withFailure:v4];
}

void sub_1002CF7E0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v48 = *(v7 - 8);
  __chkstk_darwin();
  v46 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = type metadata accessor for DispatchQoS();
  v45 = *(v47 - 8);
  __chkstk_darwin();
  v44 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = type metadata accessor for DispatchTime();
  v43 = *(v51 - 8);
  __chkstk_darwin();
  v11 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v50 = &v38 - v12;
  sub_100168088(&unk_10057D370, &unk_10040ABF0);
  __chkstk_darwin();
  v14 = &v38 - v13;
  v15 = type metadata accessor for PerformanceTestCase();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin();
  __chkstk_darwin();
  v52 = &v38 - v19;
  if (!a3)
  {
    __break(1u);
    goto LABEL_10;
  }

  v42 = v18;
  if (!a4)
  {
LABEL_10:
    __break(1u);
LABEL_11:
    __break(1u);
    return;
  }

  PerformanceTestCase.init(name:options:)();
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    sub_100009104(v14, &unk_10057D370, &unk_10040ABF0);
    return;
  }

  v40 = v7;
  v39 = *(v16 + 32);
  v39(v52, v14, v15);
  if (!a1)
  {
    goto LABEL_11;
  }

  v20 = objc_opt_self();
  v41 = a1;
  v21 = [v20 standardUserDefaults];
  v22 = String._bridgeToObjectiveC()();
  v23 = [v21 stringForKey:v22];

  if (v23)
  {

    sub_10002BD04();
    v24 = v49;
    v38 = static OS_dispatch_queue.main.getter();
    static DispatchTime.now()();
    + infix(_:_:)();
    v43 = *(v43 + 8);
    (v43)(v11, v51);
    v25 = v42;
    (*(v16 + 16))(v42, v52, v15);
    v26 = (*(v16 + 80) + 24) & ~*(v16 + 80);
    v27 = swift_allocObject();
    *(v27 + 16) = v24;
    v39(v27 + v26, v25, v15);
    v28 = v41;
    *(v27 + ((v17 + v26 + 7) & 0xFFFFFFFFFFFFFFF8)) = v41;
    aBlock[4] = sub_1002D0220;
    aBlock[5] = v27;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10000F038;
    aBlock[3] = &unk_1004EAFC0;
    v29 = _Block_copy(aBlock);
    v42 = v28;
    v30 = v24;

    v31 = v44;
    static DispatchQoS.unspecified.getter();
    aBlock[0] = _swiftEmptyArrayStorage;
    sub_1001D293C();
    sub_100168088(&unk_100575CD0, &unk_100400B50);
    sub_100182E30();
    v32 = v46;
    v33 = v40;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v34 = v50;
    v35 = v38;
    OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
    _Block_release(v29);

    (*(v48 + 8))(v32, v33);
    (*(v45 + 8))(v31, v47);
    (v43)(v34, v51);
    (*(v16 + 8))(v52, v15);
  }

  else
  {
    v36 = v52;
    v37 = v41;
    sub_1002CFF34(v52, v41, v49);

    (*(v16 + 8))(v36, v15);
  }
}

uint64_t sub_1002CFF34(uint64_t a1, void *a2, uint64_t a3)
{
  sub_100168088(&qword_10057D398, &qword_10040AC00);
  __chkstk_darwin();
  v6 = &v16 - v5;
  v23[3] = &type metadata for UIAppPerformanceTestRunner;
  v23[4] = sub_1002D02B0();
  v23[0] = a2;
  v7 = OBJC_IVAR____TtC8Podcasts11AppDelegate_pptViewHierarchyProxy;
  swift_beginAccess();
  sub_100010430(a3 + v7, v6, &qword_10057D398, &qword_10040AC00);
  v8 = type metadata accessor for PPTViewControllerProxy();
  v9 = *(v8 - 8);
  result = (*(v9 + 48))(v6, 1, v8);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v11 = a2;
    PPTViewControllerProxy.prepareForTesting(testCase:)();
    (*(v9 + 8))(v6, v8);
    sub_100010430(v22, &v17, &qword_10057D3A8, &qword_10040AC08);
    if (v18)
    {
      sub_1000109E4(&v17, &v19);
      sub_1000044A0(&v19, v21);
      dispatch thunk of PerformanceTestable.perform(testCase:runner:)();
      sub_100009104(v22, &qword_10057D3A8, &qword_10040AC08);
      sub_100004590(&v19);
    }

    else
    {
      sub_100009104(&v17, &qword_10057D3A8, &qword_10040AC08);
      v19 = 0;
      v20 = 0xE000000000000000;
      _StringGuts.grow(_:)(37);

      sub_100010430(v22, &v19, &qword_10057D3A8, &qword_10040AC08);
      sub_100168088(&qword_10057D3A8, &qword_10040AC08);
      v19 = String.init<A>(describing:)();
      v20 = v12;
      v13._object = 0x800000010046DE00;
      v13._countAndFlagsBits = 0xD000000000000023;
      String.append(_:)(v13);
      PerformanceTestCase.name.getter();
      v14 = String._bridgeToObjectiveC()();

      v15 = String._bridgeToObjectiveC()();

      [v11 failedTest:v14 withFailure:v15];

      sub_100009104(v22, &qword_10057D3A8, &qword_10040AC08);
    }

    return sub_100004590(v23);
  }

  return result;
}

uint64_t sub_1002D0220()
{
  v1 = *(type metadata accessor for PerformanceTestCase() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v0 + 16);
  v4 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1002CFF34(v0 + v2, v4, v3);
}

unint64_t sub_1002D02B0()
{
  result = qword_10057D3A0;
  if (!qword_10057D3A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10057D3A0);
  }

  return result;
}

uint64_t sub_1002D0314()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v12 = *(v1 - 8);
  __chkstk_darwin();
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchQoS();
  v4 = *(v11 - 8);
  __chkstk_darwin();
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v0 + 16);
  v7 = swift_allocObject();
  swift_weakInit();
  aBlock[4] = sub_1002D0C48;
  aBlock[5] = v7;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000F038;
  aBlock[3] = &unk_1004EB060;
  v8 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v13 = _swiftEmptyArrayStorage;
  sub_10000E4F4(&qword_10057D380, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100168088(&unk_100575CD0, &unk_100400B50);
  sub_100015E58(&qword_10057D390, &unk_100575CD0, &unk_100400B50);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v8);
  (*(v12 + 8))(v3, v1);
  (*(v4 + 8))(v6, v11);
}

uint64_t sub_1002D05E8(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v2 = *(Strong + OBJC_IVAR____TtC8Podcasts9Debouncer_worker);

    if (v2)
    {
      dispatch thunk of DispatchWorkItem.cancel()();
    }
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1002D0698(v4);
  }

  return result;
}

uint64_t sub_1002D0698(__n128 a1)
{
  v2 = type metadata accessor for DispatchTime();
  v14 = *(v2 - 8);
  v15 = v2;
  __chkstk_darwin();
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v6 = &v13 - v5;
  type metadata accessor for DispatchWorkItemFlags();
  __chkstk_darwin();
  v7 = swift_allocObject();
  swift_weakInit();
  aBlock[4] = sub_1002D0C40;
  aBlock[5] = v7;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000F038;
  aBlock[3] = &unk_1004EB038;
  v13 = _Block_copy(aBlock);
  v16 = _swiftEmptyArrayStorage;
  sub_10000E4F4(&qword_10057D380, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);

  sub_100168088(&unk_100575CD0, &unk_100400B50);
  sub_100015E58(&qword_10057D390, &unk_100575CD0, &unk_100400B50);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  type metadata accessor for DispatchWorkItem();
  swift_allocObject();
  v8 = DispatchWorkItem.init(flags:block:)();

  *(v1 + OBJC_IVAR____TtC8Podcasts9Debouncer_worker) = v8;

  static DispatchTime.now()();
  + infix(_:_:)();
  v9 = *(v14 + 8);
  v10 = v4;
  v11 = v15;
  v9(v10, v15);
  OS_dispatch_queue.asyncAfter(deadline:execute:)();

  return (v9)(v6, v11);
}

uint64_t sub_1002D09AC(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    *(Strong + OBJC_IVAR____TtC8Podcasts9Debouncer_worker) = 0;
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v3 = *(result + OBJC_IVAR____TtC8Podcasts9Debouncer_action);

    v3(v4);
  }

  return result;
}

uint64_t sub_1002D0A6C()
{
  v1 = OBJC_IVAR____TtC8Podcasts9Debouncer_delay;
  v2 = type metadata accessor for DispatchTimeInterval();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for Debouncer(uint64_t a1)
{
  result = qword_10057D3E8;
  if (!qword_10057D3E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1002D0B88(uint64_t a1)
{
  result = type metadata accessor for DispatchTimeInterval();
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

uint64_t sub_1002D0C50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v18 = a2;
  v19 = a3;
  v20 = a1;
  v17 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v5 = *(v17 - 8);
  __chkstk_darwin();
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin();
  type metadata accessor for DispatchQoS();
  __chkstk_darwin();
  v16 = sub_10002BD04();
  static DispatchQoS.unspecified.getter();
  v21 = _swiftEmptyArrayStorage;
  sub_10000E4F4(&qword_1005743B0, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_100168088(&unk_1005729E0, &unk_1003FEB50);
  sub_100015E58(&qword_1005743C0, &unk_1005729E0, &unk_1003FEB50);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v5 + 104))(v7, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v17);
  *(v3 + 16) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  *(v3 + OBJC_IVAR____TtC8Podcasts9Debouncer_worker) = 0;
  v8 = (v3 + OBJC_IVAR____TtC8Podcasts9Debouncer_action);
  v9 = v19;
  *v8 = v18;
  v8[1] = v9;
  v10 = OBJC_IVAR____TtC8Podcasts9Debouncer_delay;
  v11 = type metadata accessor for DispatchTimeInterval();
  v12 = *(v11 - 8);
  v13 = v20;
  (*(v12 + 16))(v4 + v10, v20, v11);

  sub_1002D0698(v14);
  (*(v12 + 8))(v13, v11);
  return v4;
}

uint64_t AppDownloadedEffectApplicator.init(library:podcastsStateCoordinator:)(uint64_t a1)
{
  v2 = [objc_opt_self() sharedInstance];
  v3 = [v2 privateQueueContext];

  return a1;
}

uint64_t AppDownloadedEffectApplicator.apply(effect:to:)(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v29 = a4;
  v30 = a5;
  v27 = a3;
  v28 = a2;
  v7 = type metadata accessor for DownloadEnvironment();
  v26 = v7;
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin();
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DownloadedAssetEffect();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin();
  v15 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 16))(v15, a1, v11, v14);
  (*(v8 + 16))(v10, v28, v7);
  v16 = (*(v12 + 80) + 40) & ~*(v12 + 80);
  v17 = (v13 + *(v8 + 80) + v16) & ~*(v8 + 80);
  v18 = swift_allocObject();
  *(v18 + 2) = a3;
  v19 = v29;
  v20 = v30;
  *(v18 + 3) = v29;
  *(v18 + 4) = v20;
  (*(v12 + 32))(&v18[v16], v15, v11);
  (*(v8 + 32))(&v18[v17], v10, v26);
  sub_100168088(&qword_10057D4B0, &qword_10040ACC0);
  swift_allocObject();
  v21 = v27;
  v22 = v19;
  v23 = v20;
  v31 = Future.init(_:)();
  sub_1002D13E0();
  v24 = Publisher.eraseToAnyPublisher()();

  return v24;
}

uint64_t sub_1002D1268(uint64_t a1, uint64_t a2, char *a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  v19[0] = a1;
  sub_100168088(&qword_10057D4C0, &unk_10040AD60);
  __chkstk_darwin();
  v13 = (v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin();
  v15 = v19 - v14;
  __chkstk_darwin();
  v17 = v19 - v16;
  sub_1002D1444(a6, a7, a3, a4, a5, v13);
  swift_storeEnumTagMultiPayload();
  sub_1002D223C(v13, v15);
  sub_1002D223C(v15, v17);
  (v19[0])(v17);
  return sub_1002D22AC(v17);
}

unint64_t sub_1002D13E0()
{
  result = qword_10057D4B8;
  if (!qword_10057D4B8)
  {
    sub_100168310(&qword_10057D4B0, &qword_10040ACC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10057D4B8);
  }

  return result;
}

uint64_t sub_1002D1444@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, void *a6@<X8>)
{
  v80 = a5;
  v81 = a4;
  v85 = a3;
  v79[1] = a2;
  v86 = a6;
  v7 = type metadata accessor for URL();
  v83 = *(v7 - 8);
  v84 = v7;
  __chkstk_darwin();
  v9 = v79 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v82 = v79 - v10;
  v11 = type metadata accessor for Logger();
  v12 = *(v11 - 8);
  v88 = v11;
  v89 = v12;
  __chkstk_darwin();
  v14 = v79 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v79[0] = v79 - v15;
  __chkstk_darwin();
  v17 = v79 - v16;
  __chkstk_darwin();
  v19 = v79 - v18;
  v20 = *(type metadata accessor for DownloadedAssetEffect() - 8);
  __chkstk_darwin();
  v22 = v79 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v24 = v79 - v23;
  v25 = __chkstk_darwin();
  v27 = (v79 - v26);
  v28 = *(v20 + 16);
  v90 = a1;
  v91 = v28;
  v29 = a1;
  v31 = v30;
  v92[7] = v20 + 16;
  (v28)(v79 - v26, v29, v30, v25);
  v32 = (*(v20 + 88))(v27, v31);
  if (v32 == enum case for DownloadedAssetEffect.removeDownload(_:))
  {
    (*(v20 + 96))(v27, v31);
    v34 = *v27;
    v33 = v27[1];
    static Logger.database.getter();

    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v92[0] = v38;
      *v37 = 136315138;
      *(v37 + 4) = sub_1000153E0(v34, v33, v92);
      _os_log_impl(&_mh_execute_header, v35, v36, "Removing download for episode %s", v37, 0xCu);
      sub_100004590(v38);
    }

    (*(v89 + 8))(v17, v88);
    v39 = v91;
    sub_100168088(&qword_100574690, &unk_100401BA0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100400790;
    *(inited + 32) = v34;
    v41 = inited + 32;
    *(inited + 40) = v33;
    sub_10016B918(inited);
    swift_setDeallocating();
    sub_1002D23B8(v41);
    isa = Set._bridgeToObjectiveC()().super.isa;

    [v85 removeDownloadAssetsForEpisodeUuids:isa];

    return v39(v86, v90, v31);
  }

  if (v32 == enum case for DownloadedAssetEffect.download(_:))
  {
    (*(v20 + 96))(v27, v31);
    v45 = *v27;
    v44 = v27[1];
    static Logger.database.getter();

    v46 = Logger.logObject.getter();
    v47 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      v92[0] = v49;
      *v48 = 136315138;
      *(v48 + 4) = sub_1000153E0(v45, v44, v92);
      _os_log_impl(&_mh_execute_header, v46, v47, "Downloading episode %s", v48, 0xCu);
      sub_100004590(v49);
    }

    (*(v89 + 8))(v19, v88);
    PodcastsStateCoordinator.downloadEpisode(withUUID:isFromSaving:from:in:)(v45, v44, 0, 3, v80);

    v50 = v91;
    return v50(v86, v90, v31);
  }

  if (v32 == enum case for DownloadedAssetEffect.delete(_:))
  {
    (*(v20 + 96))(v27, v31);
    v51 = v82;
    v52 = v83;
    v53 = v84;
    (*(v83 + 32))(v82, v27, v84);
    v54 = v79[0];
    static Logger.database.getter();
    (*(v52 + 16))(v9, v51, v53);
    v55 = Logger.logObject.getter();
    v56 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v55, v56))
    {
      v57 = swift_slowAlloc();
      v58 = swift_slowAlloc();
      v92[0] = v58;
      *v57 = 136315138;
      v59 = URL.path.getter();
      v60 = v52;
      v61 = v31;
      v63 = v62;
      v85 = *(v60 + 8);
      (v85)(v9, v84);
      v64 = sub_1000153E0(v59, v63, v92);
      v31 = v61;

      *(v57 + 4) = v64;
      _os_log_impl(&_mh_execute_header, v55, v56, "Removing asset at path: %s", v57, 0xCu);
      sub_100004590(v58);
      v53 = v84;
    }

    else
    {

      v85 = *(v52 + 8);
      (v85)(v9, v53);
    }

    (*(v89 + 8))(v54, v88);
    v75 = v87;
    DownloadEnvironment.fileStorage.getter();
    sub_1000044A0(v92, v92[3]);
    v76 = v82;
    dispatch thunk of FileManaging.removeItem(at:)();
    v50 = v91;
    if (v75)
    {
      (v85)(v76, v53);
      return sub_100004590(v92);
    }

    (v85)(v76, v53);
    sub_100004590(v92);
    return v50(v86, v90, v31);
  }

  static Logger.database.getter();
  v65 = v91;
  v91(v24, v90, v31);
  v87 = v14;
  v66 = Logger.logObject.getter();
  v67 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v66, v67))
  {
    v68 = swift_slowAlloc();
    v85 = v68;
    v86 = swift_slowAlloc();
    v92[0] = v86;
    *v68 = 136315138;
    v65(v22, v24, v31);
    v84 = String.init<A>(describing:)();
    v70 = v69;
    v71 = *(v20 + 8);
    v71(v24, v31);
    v72 = v71;
    v73 = sub_1000153E0(v84, v70, v92);

    v74 = v85;
    *(v85 + 4) = v73;
    _os_log_impl(&_mh_execute_header, v66, v67, "An uncovered recovery case for download state was encountered: %s", v74, 0xCu);
    sub_100004590(v86);
  }

  else
  {

    v77 = *(v20 + 8);
    v77(v24, v31);
    v72 = v77;
  }

  (*(v89 + 8))(v87, v88);
  type metadata accessor for ApplicationDownloadEffectApplicatorError(0);
  sub_1002D2360();
  swift_allocError();
  v91(v78, v90, v31);
  swift_storeEnumTagMultiPayload();
  swift_willThrow();
  return v72(v27, v31);
}

uint64_t sub_1002D1EB0(uint64_t a1, uint64_t a2)
{
  v27 = a2;
  v25 = a1;
  v28 = type metadata accessor for DownloadEnvironment();
  v3 = *(v28 - 8);
  v26 = *(v3 + 64);
  __chkstk_darwin();
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = v5;
  v6 = type metadata accessor for DownloadedAssetEffect();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin();
  v10 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v2 + 8);
  v13 = *(v2 + 16);
  v23 = *v2;
  v11 = v23;
  v24 = v13;
  (*(v7 + 16))(v10, v25, v6, v9);
  (*(v3 + 16))(v5, v27, v28);
  v14 = (*(v7 + 80) + 40) & ~*(v7 + 80);
  v15 = (v8 + *(v3 + 80) + v14) & ~*(v3 + 80);
  v16 = swift_allocObject();
  *(v16 + 2) = v11;
  *(v16 + 3) = v12;
  *(v16 + 4) = v13;
  (*(v7 + 32))(&v16[v14], v10, v6);
  (*(v3 + 32))(&v16[v15], v22, v28);
  sub_100168088(&qword_10057D4B0, &qword_10040ACC0);
  swift_allocObject();
  v17 = v23;
  v18 = v12;
  v19 = v24;
  v29 = Future.init(_:)();
  sub_1002D13E0();
  v20 = Publisher.eraseToAnyPublisher()();

  return v20;
}

uint64_t sub_1002D2150(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for DownloadedAssetEffect() - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for DownloadEnvironment() - 8);
  v9 = v2[2];
  v10 = v2[3];
  v11 = v2[4];
  v12 = v2 + ((v6 + v7 + *(v8 + 80)) & ~*(v8 + 80));

  return sub_1002D1268(a1, a2, v9, v10, v11, v2 + v6, v12);
}

uint64_t sub_1002D223C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100168088(&qword_10057D4C0, &unk_10040AD60);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1002D22AC(uint64_t a1)
{
  v2 = sub_100168088(&qword_10057D4C0, &unk_10040AD60);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata accessor for ApplicationDownloadEffectApplicatorError(uint64_t a1)
{
  result = qword_10057D540;
  if (!qword_10057D540)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1002D2360()
{
  result = qword_10057D4C8;
  if (!qword_10057D4C8)
  {
    type metadata accessor for ApplicationDownloadEffectApplicatorError(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10057D4C8);
  }

  return result;
}

void sub_1002D240C(uint64_t a1)
{
  type metadata accessor for DownloadedAssetEffect();
  if (v1 <= 0x3F)
  {
    sub_1002D2480(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_1002D2480(uint64_t a1)
{
  if (!qword_10057D550)
  {
    type metadata accessor for URL();
    sub_100168310(&qword_100575C50, &unk_100402650);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_10057D550);
    }
  }
}

void *sub_1002D2500(void *a1, uint64_t a2, uint64_t a3, int a4, unint64_t a5)
{
  v81 = a4;
  v85 = a3;
  v84 = a2;
  v86 = a1;
  sub_100168088(&unk_100575AE0, &unk_100405E80);
  __chkstk_darwin();
  v83 = &v80[-v6];
  sub_100168088(&unk_100578410, &qword_100402DB0);
  __chkstk_darwin();
  v82 = &v80[-v7];
  sub_100168088(&unk_100578C10, &qword_100400B60);
  __chkstk_darwin();
  v9 = &v80[-v8];
  v96 = type metadata accessor for ArtworkModel();
  v98 = *(v96 - 8);
  __chkstk_darwin();
  v11 = &v80[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v94 = &v80[-v12];
  v100 = _s16ShowImageRowItemVMa(0);
  v103 = *(v100 - 8);
  __chkstk_darwin();
  v14 = &v80[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v93 = &v80[-v15];
  __chkstk_darwin();
  v92 = &v80[-v16];
  __chkstk_darwin();
  v18 = &v80[-v17];
  if (a5 >> 62)
  {
    goto LABEL_25;
  }

  v19 = *((a5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  for (i = v11; v19; i = v11)
  {
    v11 = v19;
    v20 = 0;
    v101 = a5 & 0xFFFFFFFFFFFFFF8;
    v102 = a5 & 0xC000000000000001;
    v95 = (v98 + 48);
    v99 = _swiftEmptyArrayStorage;
    v91 = a5;
    v90 = v9;
    v89 = v14;
    v88 = v18;
    v87 = v19;
    while (v102)
    {
      specialized _ArrayBuffer._getElementSlowPath(_:)();
      v21 = (v20 + 1);
      if (__OFADD__(v20, 1))
      {
        goto LABEL_23;
      }

LABEL_10:
      v22 = LegacyLockup.title.getter();
      if (v23)
      {
        v24 = v22;
        v25 = v23;
        v26 = HIBYTE(v23) & 0xF;
        if ((v23 & 0x2000000000000000) == 0)
        {
          v26 = v22 & 0xFFFFFFFFFFFFLL;
        }

        if (v26)
        {
          LegacyLockup.artwork.getter();
          if ((*v95)(v9, 1, v96) == 1)
          {

            sub_100009104(v9, &unk_100578C10, &qword_100400B60);
          }

          else
          {
            v27 = v94;
            sub_1002D3154(v9, v94, &type metadata accessor for ArtworkModel);
            v28 = v93;
            *v93 = v24;
            v28[1] = v25;
            v29 = v100;
            v30 = v28 + *(v100 + 20);
            v31 = LibraryShowLockup.uuid.getter();
            v33 = v32;

            *v30 = v31;
            *(v30 + 1) = v33;
            v30[16] = 0;
            type metadata accessor for CarPlayTemplateInfo.TemplateType(0);
            swift_storeEnumTagMultiPayload();
            v34 = v27;
            v18 = v88;
            sub_1002D3154(v34, v28 + *(v29 + 24), &type metadata accessor for ArtworkModel);
            v35 = v92;
            sub_1002D3154(v28, v92, _s16ShowImageRowItemVMa);
            sub_1002D3154(v35, v18, _s16ShowImageRowItemVMa);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v99 = sub_100243DF8(0, v99[2] + 1, 1, v99);
            }

            v37 = v99[2];
            v36 = v99[3];
            a5 = v91;
            v9 = v90;
            v14 = v89;
            if (v37 >= v36 >> 1)
            {
              v99 = sub_100243DF8((v36 > 1), v37 + 1, 1, v99);
            }

            v38 = v99;
            v99[2] = v37 + 1;
            sub_1002D3154(v18, v38 + ((*(v103 + 80) + 32) & ~*(v103 + 80)) + *(v103 + 72) * v37, _s16ShowImageRowItemVMa);
            v11 = v87;
          }

          goto LABEL_6;
        }
      }

LABEL_6:
      ++v20;
      if (v21 == v11)
      {
        goto LABEL_27;
      }
    }

    if (v20 >= *(v101 + 16))
    {
      goto LABEL_24;
    }

    v21 = (v20 + 1);
    if (!__OFADD__(v20, 1))
    {
      goto LABEL_10;
    }

LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    v19 = _CocoaArrayWrapper.endIndex.getter();
  }

  v99 = _swiftEmptyArrayStorage;
LABEL_27:

  v39 = sub_10023E364(CPMaximumNumberOfGridImages, v99);
  v43 = v42 >> 1;
  if (v41 == v42 >> 1)
  {

    swift_unknownObjectRelease();
    return 0;
  }

  v45 = v40;
  v46 = v41;
  v94 = v42;
  v96 = v39;
  type metadata accessor for CarPlayPageLoadCoordinator(0);
  BaseObjectGraph.inject<A>(_:)();
  v95 = aBlock;
  v101 = String._bridgeToObjectiveC()();

  sub_100009F1C(0, &qword_100578C08, UIImage_ptr);
  result = Array._bridgeToObjectiveC()().super.isa;
  v47 = v43 - v46;
  if (__OFSUB__(v43, v46))
  {
    goto LABEL_55;
  }

  v99 = result;
  v102 = v46;
  v93 = (v47 & ~(v47 >> 63));
  if (v47)
  {
    aBlock = _swiftEmptyArrayStorage;
    result = sub_1001A7364(0, v47 & ~(v47 >> 63), 0);
    if (v47 < 0)
    {
LABEL_56:
      __break(1u);
      goto LABEL_57;
    }

    v92 = (v43 - v46);
    v48 = aBlock;
    if (v46 <= v43)
    {
      v49 = v43;
    }

    else
    {
      v49 = v46;
    }

    while (v49 != v46)
    {
      sub_1002D3AE0(v45 + *(v103 + 72) * v46, v14, _s16ShowImageRowItemVMa);
      v51 = *v14;
      v50 = v14[1];

      result = sub_1002D3B48(v14, _s16ShowImageRowItemVMa);
      aBlock = v48;
      v53 = v48[2];
      v52 = v48[3];
      if (v53 >= v52 >> 1)
      {
        result = sub_1001A7364((v52 > 1), v53 + 1, 1);
        v48 = aBlock;
      }

      v48[2] = (v53 + 1);
      v54 = &v48[2 * v53];
      v54[4] = v51;
      v54[5] = v50;
      if (v43 == ++v46)
      {
        v46 = v102;
        v47 = v92;
        goto LABEL_40;
      }
    }

    __break(1u);
    goto LABEL_54;
  }

LABEL_40:
  v55 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  isa = Array._bridgeToObjectiveC()().super.isa;

  v57 = v101;
  v58 = v99;
  v59 = [v55 initWithText:v101 images:v99 imageTitles:isa];

  if (v47)
  {
    aBlock = _swiftEmptyArrayStorage;
    v60 = v59;
    result = sub_1001A7650(0, v93, 0);
    if (v47 < 0)
    {
LABEL_57:
      __break(1u);
      return result;
    }

    v101 = v59;
    v61 = aBlock;
    if (v46 <= v43)
    {
      v62 = v43;
    }

    else
    {
      v62 = v46;
    }

    v63 = v46;
    while (v62 != v63)
    {
      sub_1002D3AE0(v45 + *(v103 + 72) * v63, v14, _s16ShowImageRowItemVMa);
      v64 = i;
      sub_1002D3AE0(v14 + *(v100 + 24), i, &type metadata accessor for ArtworkModel);
      sub_1002D3B48(v14, _s16ShowImageRowItemVMa);
      aBlock = v61;
      v66 = v61[2];
      v65 = v61[3];
      if (v66 >= v65 >> 1)
      {
        sub_1001A7650((v65 > 1), v66 + 1, 1);
        v61 = aBlock;
      }

      v61[2] = (v66 + 1);
      result = sub_1002D3154(v64, v61 + ((*(v98 + 80) + 32) & ~*(v98 + 80)) + *(v98 + 72) * v66, &type metadata accessor for ArtworkModel);
      if (v43 == ++v63)
      {
        v67 = v101;
        goto LABEL_52;
      }
    }

LABEL_54:
    __break(1u);
LABEL_55:
    __break(1u);
    goto LABEL_56;
  }

  v68 = v59;
  v67 = v59;
  v61 = _swiftEmptyArrayStorage;
LABEL_52:
  CarPlayPageLoadCoordinator.loadImages(for:into:)(v61, v67);

  v69 = v83;
  *v83 = v81;
  v70 = type metadata accessor for CarPlayTemplateInfo.TemplateType(0);
  swift_storeEnumTagMultiPayload();
  v71 = *(*(v70 - 8) + 56);
  v71(v69, 0, 1, v70);
  v72 = v82;
  v71(v82, 1, 1, v70);
  v73 = type metadata accessor for CarPlayTemplateInfo(0);
  v74 = *(v73 + 20);
  sub_1001FBB44(v69, v72);
  *(v72 + v74) = 0;
  (*(*(v73 - 8) + 56))(v72, 0, 1, v73);
  sub_1001D2AD4(v72);
  v75 = v86;
  v108 = sub_1002D39D4;
  v109 = v86;
  aBlock = _NSConcreteStackBlock;
  v105 = 1107296256;
  v106 = sub_100372F30;
  v107 = &unk_1004EB160;
  v76 = _Block_copy(&aBlock);

  [v67 setHandler:v76];
  _Block_release(v76);
  v77 = swift_allocObject();
  v77[2] = v96;
  v77[3] = v45;
  v78 = v94;
  v77[4] = v102;
  v77[5] = v78;
  v77[6] = v75;
  v108 = sub_1002D39DC;
  v109 = v77;
  aBlock = _NSConcreteStackBlock;
  v105 = 1107296256;
  v106 = sub_1002B1CD0;
  v107 = &unk_1004EB1B0;
  v79 = _Block_copy(&aBlock);

  swift_unknownObjectRetain();

  [v67 setListImageRowHandler:v79];
  _Block_release(v79);

  swift_unknownObjectRelease();

  return v67;
}

uint64_t _s16ShowImageRowItemVMa(uint64_t a1)
{
  result = qword_10057D5D8;
  if (!qword_10057D5D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1002D3154(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1002D31BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_100168088(&qword_100578010, &qword_100401F60);
  __chkstk_darwin();
  v9 = &v14 - v8;
  static TaskPriority.userInitiated.getter();
  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v9, 0, 1, v10);
  type metadata accessor for MainActor();

  swift_unknownObjectRetain();

  v11 = static MainActor.shared.getter();
  v12 = swift_allocObject();
  v12[2] = v11;
  v12[3] = &protocol witness table for MainActor;
  v12[4] = a4;
  v12[5] = a1;
  v12[6] = a2;
  v12[7] = a3;
  sub_10023EE80(0, 0, v9, &unk_10040AE10, v12);
}

void sub_1002D3310(uint64_t a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unint64_t a8, uint64_t a9)
{
  v50 = a6;
  v55 = a3;
  v56 = a4;
  v12 = type metadata accessor for Logger();
  v51 = *(v12 - 8);
  v52 = v12;
  __chkstk_darwin();
  v14 = &v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100168088(&qword_100578010, &qword_100401F60);
  __chkstk_darwin();
  v54 = &v49 - v15;
  v16 = type metadata accessor for CarPlayTemplateInfo(0);
  v53 = *(v16 - 8);
  __chkstk_darwin();
  v49 = &v49 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100168088(&unk_100575AE0, &unk_100405E80);
  __chkstk_darwin();
  v19 = &v49 - v18;
  sub_100168088(&unk_100578410, &qword_100402DB0);
  __chkstk_darwin();
  v21 = &v49 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v23 = &v49 - v22;
  v24 = _s16ShowImageRowItemVMa(0);
  __chkstk_darwin();
  v27 = &v49 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a8 >> 1) < a7)
  {
    __break(1u);
  }

  else if (a2 < a7 || (a8 >> 1) <= a2)
  {
    sub_100009F1C(0, &qword_1005748A0, OS_os_log_ptr);
    static OS_os_log.carPlay.getter();
    v45 = Logger.logObject.getter();
    v46 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      *v47 = 0;
      _os_log_impl(&_mh_execute_header, v45, v46, "Attempted to select list image row item with invalid index!", v47, 2u);
    }

    v48 = (*(v51 + 8))(v14, v52);
    v55(v48);
  }

  else
  {
    v52 = a9;
    sub_1002D3AE0(v50 + *(v25 + 72) * a2, &v49 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0), _s16ShowImageRowItemVMa);
    v28 = objc_allocWithZone(CPListImageRowItem);
    v29 = String._bridgeToObjectiveC()();
    sub_100009F1C(0, &qword_100578C08, UIImage_ptr);
    isa = Array._bridgeToObjectiveC()().super.isa;
    v31 = [v28 initWithText:v29 images:isa];

    sub_1002D3AE0(&v27[*(v24 + 20)], v19, type metadata accessor for CarPlayTemplateInfo.TemplateType);
    v32 = type metadata accessor for CarPlayTemplateInfo.TemplateType(0);
    v33 = *(*(v32 - 8) + 56);
    v33(v19, 0, 1, v32);
    v33(v23, 1, 1, v32);
    v34 = *(v16 + 20);
    sub_1001FBB44(v19, v23);
    v23[v34] = 0;
    v35 = v53;
    (*(v53 + 56))(v23, 0, 1, v16);
    sub_1001D2D08(v23, v21);
    v36 = (*(v35 + 48))(v21, 1, v16);
    v37 = 0;
    if (v36 != 1)
    {
      sub_1002D3AE0(v21, v49, type metadata accessor for CarPlayTemplateInfo);
      v37 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
      sub_1002D3B48(v21, type metadata accessor for CarPlayTemplateInfo);
    }

    [v31 setUserInfo:v37];
    swift_unknownObjectRelease();
    sub_100009104(v23, &unk_100578410, &qword_100402DB0);
    v38 = v54;
    static TaskPriority.userInitiated.getter();
    v39 = type metadata accessor for TaskPriority();
    (*(*(v39 - 8) + 56))(v38, 0, 1, v39);
    type metadata accessor for MainActor();
    v40 = v52;

    v41 = v31;
    v42 = v56;

    v43 = static MainActor.shared.getter();
    v44 = swift_allocObject();
    v44[2] = v43;
    v44[3] = &protocol witness table for MainActor;
    v44[4] = v40;
    v44[5] = v41;
    v44[6] = v55;
    v44[7] = v42;
    sub_10023EE80(0, 0, v38, &unk_10040ADF8, v44);

    sub_1002D3B48(v27, _s16ShowImageRowItemVMa);
  }
}

uint64_t sub_1002D3A0C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_10001C51C;

  return sub_10022CDC0(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_1002D3AE0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1002D3B48(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1002D3BA8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_10021A620;

  return sub_10022C4CC(a1, v4, v5, v6, v7, v9, v8);
}

void sub_1002D3CA4(uint64_t a1)
{
  v1 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    sub_100009F1C(0, &qword_100579A38, UIScene_ptr);
    sub_1002D44E4();
    Set.Iterator.init(_cocoa:)();
    v1 = v13;
    v2 = v14;
    v3 = v15;
    v4 = v16;
    v5 = v17;
  }

  else
  {
    v6 = -1 << *(a1 + 32);
    v2 = a1 + 56;
    v3 = ~v6;
    v7 = -v6;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v5 = v8 & *(a1 + 56);

    v4 = 0;
  }

  while (v1 < 0)
  {
    if (!__CocoaSet.Iterator.next()() || (sub_100009F1C(0, &qword_100579A38, UIScene_ptr), swift_dynamicCast(), (v11 = v12) == 0))
    {
LABEL_21:
      sub_1000319D8(v1);
      return;
    }

LABEL_16:
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    }

    else
    {
    }
  }

  v9 = v4;
  v10 = v5;
  if (v5)
  {
LABEL_12:
    v5 = (v10 - 1) & v10;
    v11 = *(*(v1 + 48) + ((v4 << 9) | (8 * __clz(__rbit64(v10)))));
    if (!v11)
    {
      goto LABEL_21;
    }

    goto LABEL_16;
  }

  while (1)
  {
    v4 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v4 >= ((v3 + 64) >> 6))
    {
      goto LABEL_21;
    }

    v10 = *(v2 + 8 * v4);
    ++v9;
    if (v10)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
}

void *sub_1002D3F10()
{
  v1 = [v0 connectedScenes];
  sub_100009F1C(0, &qword_100579A38, UIScene_ptr);
  sub_1002D44E4();
  v2 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  if ((v2 & 0xC000000000000001) == 0)
  {
    v17 = *(v2 + 32);
    v43 = ((1 << v17) + 63) >> 6;
    if ((v17 & 0x3Fu) <= 0xD)
    {
      goto LABEL_22;
    }

    goto LABEL_64;
  }

  v3 = &_swiftEmptySetSingleton;
  v46 = &_swiftEmptySetSingleton;
  v2 = __CocoaSet.makeIterator()();
  for (i = __CocoaSet.Iterator.next()(); i; i = __CocoaSet.Iterator.next()())
  {
    v44 = i;
    swift_dynamicCast();
    v5 = v45[0];
    if ([v45[0] activationState])
    {
    }

    else
    {
      v6 = v3[2];
      if (v3[3] <= v6)
      {
        sub_10038F1F4(v6 + 1);
      }

      v3 = v46;
      v7 = NSObject._rawHashValue(seed:)(v46[5]);
      v8 = (v46 + 7);
      v9 = -1 << *(v46 + 32);
      v10 = v7 & ~v9;
      v11 = v10 >> 6;
      if (((-1 << v10) & ~v46[(v10 >> 6) + 7]) != 0)
      {
        v12 = __clz(__rbit64((-1 << v10) & ~v46[(v10 >> 6) + 7])) | v10 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v13 = 0;
        v14 = (63 - v9) >> 6;
        do
        {
          if (++v11 == v14 && (v13 & 1) != 0)
          {
            __break(1u);
            goto LABEL_54;
          }

          v15 = v11 == v14;
          if (v11 == v14)
          {
            v11 = 0;
          }

          v13 |= v15;
          v16 = *&v8[8 * v11];
        }

        while (v16 == -1);
        v12 = __clz(__rbit64(~v16)) + (v11 << 6);
      }

      *&v8[(v12 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v12;
      *(v3[6] + 8 * v12) = v5;
      ++v3[2];
    }
  }

LABEL_37:
  sub_1002D3CA4(v3);
  v2 = v31;

  if (v2 >> 62)
  {
    while (1)
    {
      if (!_CocoaArrayWrapper.endIndex.getter())
      {
        goto LABEL_61;
      }

LABEL_39:
      if ((v2 & 0xC000000000000001) != 0)
      {
        break;
      }

      if (*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v32 = *(v2 + 32);
LABEL_42:
        v33 = v32;

        v34 = [v33 windows];

        sub_100009F1C(0, &unk_10057D620, UIWindow_ptr);
        v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        if (v2 >> 62)
        {
          v35 = _CocoaArrayWrapper.endIndex.getter();
          if (!v35)
          {
            goto LABEL_61;
          }
        }

        else
        {
          v35 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (!v35)
          {
            goto LABEL_61;
          }
        }

        v36 = 0;
        while (1)
        {
          if ((v2 & 0xC000000000000001) != 0)
          {
            v37 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v36 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_56;
            }

            v37 = *(v2 + 8 * v36 + 32);
          }

          v38 = v37;
          v39 = v36 + 1;
          if (__OFADD__(v36, 1))
          {
            goto LABEL_55;
          }

          if ([v37 isKeyWindow])
          {

            return v38;
          }

          ++v36;
          if (v39 == v35)
          {
            goto LABEL_61;
          }
        }
      }

      __break(1u);
LABEL_64:

      if (!swift_stdlib_isStackAllocationSafe())
      {
        v41 = swift_slowAlloc();
        v3 = sub_1002D46B8(v41, v43, v2, sub_1002D44A8);

        goto LABEL_37;
      }

LABEL_22:
      v42[1] = v42;
      __chkstk_darwin();
      v19 = v42 - ((v18 + 15) & 0x3FFFFFFFFFFFFFF0);
      bzero(v19, v18);
      v20 = 0;
      v21 = 0;
      v22 = 1 << *(v2 + 32);
      v23 = -1;
      if (v22 < 64)
      {
        v23 = ~(-1 << v22);
      }

      v24 = v23 & *(v2 + 56);
      v25 = (v22 + 63) >> 6;
      while (v24)
      {
        v26 = __clz(__rbit64(v24));
        v24 &= v24 - 1;
LABEL_32:
        v29 = v26 | (v21 << 6);
        if (![*(*(v2 + 48) + 8 * v29) activationState])
        {
          *&v19[(v29 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v29;
          if (__OFADD__(v20++, 1))
          {
            __break(1u);
LABEL_36:
            v3 = sub_10037000C(v19, v43, v20, v2);
            goto LABEL_37;
          }
        }
      }

      v27 = v21;
      while (1)
      {
        v21 = v27 + 1;
        if (__OFADD__(v27, 1))
        {
          break;
        }

        if (v21 >= v25)
        {
          goto LABEL_36;
        }

        v28 = *(v2 + 56 + 8 * v21);
        ++v27;
        if (v28)
        {
          v26 = __clz(__rbit64(v28));
          v24 = (v28 - 1) & v28;
          goto LABEL_32;
        }
      }

LABEL_54:
      __break(1u);
LABEL_55:
      __break(1u);
LABEL_56:
      __break(1u);
    }

    v32 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_42;
  }

  if (*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_39;
  }

LABEL_61:

  return 0;
}

unint64_t sub_1002D44E4()
{
  result = qword_100579A40;
  if (!qword_100579A40)
  {
    sub_100009F1C(255, &qword_100579A38, UIScene_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100579A40);
  }

  return result;
}

void sub_1002D454C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(id *))
{
  v20 = 0;
  v5 = 0;
  v6 = a3 + 56;
  v7 = 1 << *(a3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a3 + 56);
  v10 = (v7 + 63) >> 6;
  while (v9)
  {
    v11 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
LABEL_11:
    v14 = v11 | (v5 << 6);
    v23 = *(*(a3 + 48) + 8 * v14);
    v15 = v23;
    v16 = a4(&v23);

    if (v4)
    {
      return;
    }

    if (v16)
    {
      *(a1 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      if (__OFADD__(v20++, 1))
      {
        __break(1u);
LABEL_16:

        sub_10037000C(a1, a2, v20, a3);
        return;
      }
    }
  }

  v12 = v5;
  while (1)
  {
    v5 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v5 >= v10)
    {
      goto LABEL_16;
    }

    v13 = *(v6 + 8 * v5);
    ++v12;
    if (v13)
    {
      v11 = __clz(__rbit64(v13));
      v9 = (v13 - 1) & v13;
      goto LABEL_11;
    }
  }

  __break(1u);
}

void *sub_1002D46B8(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(id *))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v5 = result;
      v6 = a2;
      v7 = a4;
      bzero(result, 8 * a2);
      result = v5;
      a2 = v6;
      a4 = v7;
    }

    sub_1002D454C(result, a2, a3, a4);
    v9 = v8;

    return v9;
  }

  return result;
}

uint64_t *FeedManager.shared.unsafeMutableAddressor()
{
  if (qword_100572810 != -1)
  {
    swift_once();
  }

  return &static FeedManager.shared;
}

uint64_t sub_1002D4798(uint64_t a1, uint64_t a2, uint64_t a3)
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

BOOL sub_1002D4890(Swift::UInt64 a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1);
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
    v8 = *(*(a2 + 48) + 8 * v6);
    result = v8 == a1;
    if (v8 == a1)
    {
      break;
    }

    v6 = (v6 + 1) & v7;
  }

  while (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  return result;
}

uint64_t sub_1002D495C(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  if (*(a4 + 16) && (Hasher.init(_seed:)(), EpisodeStateIdentifier.hash(into:)(), v5 = Hasher._finalize()(), v6 = -1 << *(a4 + 32), v7 = v5 & ~v6, ((*(a4 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0))
  {
    v8 = ~v6;
    do
    {
      v9 = *(a4 + 48) + 24 * v7;
      v10 = *v9;
      v11 = *(v9 + 8);
      v12 = *(v9 + 16);
      sub_1001C1A3C(*v9, v11, v12);
      v13 = static EpisodeStateIdentifier.== infix(_:_:)();
      sub_1001C1A4C(v10, v11, v12);
      if (v13)
      {
        break;
      }

      v7 = (v7 + 1) & v8;
    }

    while (((*(a4 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
  }

  else
  {
    v13 = 0;
  }

  return v13 & 1;
}

BOOL sub_1002D4A94(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v4 = static Hasher._hash(seed:_:)();
  v5 = -1 << *(a2 + 32);
  v6 = v4 & ~v5;
  if (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
  {
    return 0;
  }

  v7 = ~v5;
  do
  {
    v8 = *(*(a2 + 48) + 8 * v6);
    result = v8 == a1;
    if (v8 == a1)
    {
      break;
    }

    v6 = (v6 + 1) & v7;
  }

  while (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  return result;
}

id static FeedManager.shared.getter()
{
  if (qword_100572810 != -1)
  {
    swift_once();
  }

  v1 = static FeedManager.shared;

  return v1;
}

uint64_t sub_1002D4B98(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for DispatchQoS();
  v9 = *(v17 - 8);
  __chkstk_darwin();
  v11 = v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16[1] = *&v2[OBJC_IVAR___MTFeedManager_queue];
  v12 = swift_allocObject();
  v12[2] = v2;
  v12[3] = a1;
  v12[4] = a2;
  aBlock[4] = sub_1002D6F9C;
  aBlock[5] = v12;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000F038;
  aBlock[3] = &unk_1004EB638;
  v13 = _Block_copy(aBlock);
  v14 = v2;

  static DispatchQoS.unspecified.getter();
  v18 = _swiftEmptyArrayStorage;
  sub_10000E53C(&qword_10057D380, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100168088(&unk_100575CD0, &unk_100400B50);
  sub_100009FAC(&qword_10057D390, &unk_100575CD0, &unk_100400B50, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v13);
  (*(v6 + 8))(v8, v5);
  (*(v9 + 8))(v11, v17);
}

uint64_t sub_1002D4E7C(uint64_t a1, void (*a2)(uint64_t, uint64_t, uint64_t), uint64_t a3)
{
  v5 = a1 + OBJC_IVAR___MTFeedManager__system;
  v6 = *(a1 + OBJC_IVAR___MTFeedManager__system);
  if (v6)
  {
    v8 = *(v5 + 8);
    v7 = *(v5 + 16);
    swift_unknownObjectRetain();

    a2(v6, v8, v7);

    return sub_10003F6FC(v6, v8, v7);
  }

  else
  {
    v11 = swift_allocObject();
    *(v11 + 16) = a2;
    *(v11 + 24) = a3;
    v12 = OBJC_IVAR___MTFeedManager__pendingBlocks;
    swift_beginAccess();
    v13 = *(a1 + v12);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(a1 + v12) = v13;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v13 = sub_100243E20(0, v13[2] + 1, 1, v13);
      *(a1 + v12) = v13;
    }

    v16 = v13[2];
    v15 = v13[3];
    if (v16 >= v15 >> 1)
    {
      v13 = sub_100243E20((v15 > 1), v16 + 1, 1, v13);
    }

    v13[2] = v16 + 1;
    v17 = &v13[2 * v16];
    v17[4] = sub_1002D6FA8;
    v17[5] = v11;
    *(a1 + v12) = v13;
    return swift_endAccess();
  }
}

uint64_t FeedManager.isUpdatingPublisher.getter()
{
  v0 = sub_100168088(&qword_10057D630, &qword_10040AE50);
  v1 = *(v0 - 8);
  __chkstk_darwin();
  v3 = &v6 - v2;
  v6 = static Subscribers.Demand.unlimited.getter();
  sub_100168088(&unk_10057D640, &unk_10040AE58);
  sub_100168088(&unk_1005783E0, &unk_100405860);
  sub_100009FAC(&unk_10057D650, &unk_10057D640, &unk_10040AE58, &protocol conformance descriptor for UninitializedCurrentValueSubject<A, B>);
  sub_100009FAC(&qword_10057DE80, &unk_1005783E0, &unk_100405860, &protocol conformance descriptor for AnyPublisher<A, B>);
  Publisher<>.flatMap<A>(maxPublishers:_:)();
  sub_100009FAC(&qword_10057D660, &qword_10057D630, &qword_10040AE50, &protocol conformance descriptor for Publishers.FlatMap<A, B>);
  v4 = Publisher.eraseToAnyPublisher()();
  (*(v1 + 8))(v3, v0);
  return v4;
}

void sub_1002D5204(char *a1, uint64_t a2)
{
  v2 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = OBJC_IVAR___MTFeedManager__wasUpdating;
    if ((v2 & 1) == 0 && *(Strong + OBJC_IVAR___MTFeedManager__wasUpdating) == 1)
    {
      sub_1002D5284();
      v5 = OBJC_IVAR___MTFeedManager__wasUpdating;
    }

    v4[v5] = v2;
  }
}