double sub_100038DC4(uint64_t a1, char *a2)
{
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v24[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v24[-1] - v9;
  swift_beginAccess();
  if (*(*(a1 + 16) + 16))
  {
    static Logger.Application.getter();

    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v25 = v14;
      *v13 = 136315394;
      *(v13 + 4) = sub_100005D28(0xD00000000000002ALL, 0x8000000100075A80, &v25);
      *(v13 + 12) = 2048;
      swift_beginAccess();
      *(v13 + 14) = *(*(a1 + 16) + 16);

      _os_log_impl(&_mh_execute_header, v11, v12, "%s: imported %ld urls. Revealing with selection.", v13, 0x16u);
      sub_100034948(v14);
    }

    else
    {
    }

    (*(v5 + 8))(v10, v4);
    v20 = *&a2[OBJC_IVAR____TtC5Files20BrowserSceneDelegate_viewController];
    if (v20)
    {

      v21 = a2;
      v22 = v20;
      sub_10005ED10(1, v22, v21, 2, a1);
    }
  }

  else
  {
    static Logger.Application.getter();
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v24[0] = v18;
      *v17 = 136315138;
      *(v17 + 4) = sub_100005D28(0xD00000000000002ALL, 0x8000000100075A80, v24);
      _os_log_impl(&_mh_execute_header, v15, v16, "%s: imported 0 urls. Nothing to do.", v17, 0xCu);
      sub_100034948(v18);
    }

    (*(v5 + 8))(v8, v4);
  }

  return result;
}

double sub_100039130(char *a1, uint64_t a2, uint64_t a3)
{
  v3 = *&a1[OBJC_IVAR____TtC5Files20BrowserSceneDelegate_viewController];
  if (v3)
  {
    v7 = swift_allocObject();
    v7[2] = a2;
    v7[3] = a3;
    v7[4] = a1;
    v8 = v3;

    v9 = a1;
    DOCTabbedBrowserViewController.performGoToNamedLocation(_:completion:)();
  }

  return result;
}

uint64_t sub_1000391FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for Logger();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.Application.getter();
  swift_retain_n();
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v23[1] = a4;
    v14 = v13;
    v24[0] = swift_slowAlloc();
    *v14 = 136315650;
    *(v14 + 4) = sub_100005D28(0xD00000000000002ALL, 0x8000000100075A80, v24);
    *(v14 + 12) = 2080;
    v23[2] = a2;
    type metadata accessor for DOCNamedLocation(0);
    v15 = String.init<A>(describing:)();
    v17 = sub_100005D28(v15, v16, v24);

    *(v14 + 14) = v17;
    *(v14 + 22) = 2048;
    swift_beginAccess();
    v18 = *(*(a3 + 16) + 16);

    *(v14 + 24) = v18;

    _os_log_impl(&_mh_execute_header, v11, v12, "%s: revealed %s. Selecting %ld items.", v14, 0x20u);
    swift_arrayDestroy();
  }

  else
  {
  }

  (*(v8 + 8))(v10, v7);
  swift_beginAccess();

  sub_10003BDC8(v19, v20, v21);
}

void sub_100039484(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.Application.getter();
  v8 = a1;
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.debug.getter();

  v11 = os_log_type_enabled(v9, v10);
  v27 = v8;
  if (v11)
  {
    v12 = swift_slowAlloc();
    v26 = v2;
    v13 = v12;
    v28 = swift_slowAlloc();
    *v13 = 136315394;
    *(v13 + 4) = sub_100005D28(0xD000000000000015, 0x8000000100075950, &v28);
    *(v13 + 12) = 2080;
    v14 = v8;
    v15 = [v14 description];
    v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v25 = v4;
    v17 = v16;
    v19 = v18;

    v20 = sub_100005D28(v17, v19, &v28);

    *(v13 + 14) = v20;
    _os_log_impl(&_mh_execute_header, v9, v10, "%s shortcutItem: %s", v13, 0x16u);
    swift_arrayDestroy();

    v2 = v26;

    (*(v5 + 8))(v7, v25);
  }

  else
  {

    (*(v5 + 8))(v7, v4);
  }

  v21 = *&v2[OBJC_IVAR____TtC5Files20BrowserSceneDelegate_viewController];
  if (v21)
  {
    v22 = v27;
    v23 = v2;
    v24 = v21;
    sub_10005E6EC(1, 0, 0, v24, v23, v22);
  }
}

void sub_10003971C(uint64_t a1, void *a2)
{
  v4 = OBJC_IVAR____TtC5Files20BrowserSceneDelegate_viewController;
  v5 = *(a1 + OBJC_IVAR____TtC5Files20BrowserSceneDelegate_viewController);
  if (v5)
  {
    v6 = [v5 effectiveFullBrowser];
    [v6 dismissSearch];

    v7 = *(a1 + v4);
    if (v7)
    {
      v8 = [v7 effectiveFullBrowser];
      [v8 setEditing:0 animated:0];
    }
  }

  sub_1000397D4(a2, a1);
}

void sub_1000397D4(void *a1, uint64_t a2)
{
  v57 = a2;
  v58 = type metadata accessor for Logger();
  v3 = *(v58 - 8);
  v4 = __chkstk_darwin(v58);
  v6 = &v56 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v4);
  v9 = &v56 - v8;
  v10 = __chkstk_darwin(v7);
  v12 = &v56 - v11;
  __chkstk_darwin(v10);
  v14 = &v56 - v13;
  v15 = [a1 type];
  v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v18 = v17;

  v19 = v16 == 0xD000000000000026 && 0x8000000100075970 == v18;
  if (v19 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    static Logger.Application.getter();
    v20 = a1;
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v59 = v25;
      *v23 = 136315394;
      *(v23 + 4) = sub_100005D28(0xD000000000000016, 0x8000000100075A00, &v59);
      *(v23 + 12) = 2112;
      *(v23 + 14) = v20;
      *v24 = v20;
      v26 = v20;
      _os_log_impl(&_mh_execute_header, v21, v22, "%s scan document %@", v23, 0x16u);
      sub_100005A04(v24, &qword_1000937D0, &unk_1000743F0);

      sub_100034948(v25);
    }

    (*(v3 + 8))(v14, v58);
    v27 = *(v57 + OBJC_IVAR____TtC5Files20BrowserSceneDelegate_viewController);
    if (v27)
    {
      v28 = v27;
      sub_10005D364(1, 0, 0, v28, v28);
LABEL_10:
    }
  }

  else
  {
    if (v16 == 0xD000000000000020 && 0x80000001000759A0 == v18 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      static Logger.Application.getter();
      v29 = a1;
      v30 = Logger.logObject.getter();
      v31 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        v33 = swift_slowAlloc();
        v34 = swift_slowAlloc();
        v59 = v34;
        *v32 = 136315394;
        *(v32 + 4) = sub_100005D28(0xD000000000000016, 0x8000000100075A00, &v59);
        *(v32 + 12) = 2112;
        *(v32 + 14) = v29;
        *v33 = v29;
        v35 = v29;
        _os_log_impl(&_mh_execute_header, v30, v31, "%s search %@", v32, 0x16u);
        sub_100005A04(v33, &qword_1000937D0, &unk_1000743F0);

        sub_100034948(v34);
      }

      (*(v3 + 8))(v12, v58);
      v36 = *(v57 + OBJC_IVAR____TtC5Files20BrowserSceneDelegate_viewController);
      if (v36)
      {
        v37 = [v36 effectiveFullBrowser];
        DOCFullDocumentManagerViewController.search(forQuery:completion:)();
      }

      return;
    }

    if (v16 == 0xD000000000000020 && 0x80000001000759D0 == v18)
    {
    }

    else
    {
      v38 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v38 & 1) == 0)
      {
        static Logger.Application.getter();
        v49 = a1;
        v50 = Logger.logObject.getter();
        v51 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v50, v51))
        {
          v52 = swift_slowAlloc();
          v53 = swift_slowAlloc();
          v54 = swift_slowAlloc();
          v59 = v54;
          *v52 = 136315394;
          *(v52 + 4) = sub_100005D28(0xD000000000000016, 0x8000000100075A00, &v59);
          *(v52 + 12) = 2112;
          *(v52 + 14) = v49;
          *v53 = v49;
          v55 = v49;
          _os_log_impl(&_mh_execute_header, v50, v51, "%s Encountered unknown shortcut item type: %@", v52, 0x16u);
          sub_100005A04(v53, &qword_1000937D0, &unk_1000743F0);

          sub_100034948(v54);
        }

        (*(v3 + 8))(v6, v58);
        return;
      }
    }

    static Logger.Application.getter();
    v39 = a1;
    v40 = Logger.logObject.getter();
    v41 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v59 = v44;
      *v42 = 136315394;
      *(v42 + 4) = sub_100005D28(0xD000000000000016, 0x8000000100075A00, &v59);
      *(v42 + 12) = 2112;
      *(v42 + 14) = v39;
      *v43 = v39;
      v45 = v39;
      _os_log_impl(&_mh_execute_header, v40, v41, "%s domain %@", v42, 0x16u);
      sub_100005A04(v43, &qword_1000937D0, &unk_1000743F0);

      sub_100034948(v44);
    }

    (*(v3 + 8))(v9, v58);
    v46 = [v39 userInfo];
    if (v46)
    {
      v47 = v46;
      sub_10000DB4C(&qword_100093C08, &qword_100074460);
      v48 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      v28 = sub_10003A004(v48);

      if (v28)
      {
        sub_1000419F8(v28, 0, 0);
        goto LABEL_10;
      }
    }
  }
}

void *sub_10003A004(uint64_t a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v5 = __chkstk_darwin(v4);
  v7 = &v39 - v6;
  v8 = __chkstk_darwin(v5);
  v10 = &v39 - v9;
  __chkstk_darwin(v8);
  v12 = &v39 - v11;
  v13 = DOCUserActivityLocationKey.getter();
  if (!*(a1 + 16))
  {

LABEL_6:
    static Logger.Application.getter();
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v41[0] = v24;
      *v23 = 136315138;
      *(v23 + 4) = sub_100005D28(0xD000000000000014, 0x8000000100075A20, v41);
      _os_log_impl(&_mh_execute_header, v21, v22, "%s Location data not found in user info", v23, 0xCu);
      sub_100034948(v24);
    }

    (*(v3 + 8))(v7, v2);
    return 0;
  }

  v15 = sub_100009C94(v13, v14);
  v17 = v16;

  if ((v17 & 1) == 0)
  {
    goto LABEL_6;
  }

  v42 = *(*(a1 + 56) + 8 * v15);
  swift_unknownObjectRetain();
  sub_10000DB4C(&qword_100093C08, &qword_100074460);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_6;
  }

  v40 = v2;
  v19 = v41[0];
  v18 = v41[1];
  sub_100002B84(0, &qword_100093C10, NSKeyedUnarchiver_ptr);
  sub_10000DB4C(&qword_100093C18, &qword_100074468);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_100073FE0;
  *(v20 + 32) = sub_100002B84(0, &qword_100093BD8, DOCConcreteLocation_ptr);
  static NSKeyedUnarchiver.unarchivedObject(ofClasses:from:)();

  if (!v41[3])
  {
    sub_100005A04(v41, &qword_100093498, &qword_100074430);
    goto LABEL_17;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_17:
    v34 = v40;
    static Logger.Application.getter();
    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v41[0] = v38;
      *v37 = 136315138;
      *(v37 + 4) = sub_100005D28(0xD000000000000014, 0x8000000100075A20, v41);
      _os_log_impl(&_mh_execute_header, v35, v36, "%s Could not unarchive location", v37, 0xCu);
      sub_100034948(v38);
    }

    sub_10000A0F8(v19, v18);

    (*(v3 + 8))(v10, v34);
    return 0;
  }

  v26 = v42;
  static Logger.Application.getter();
  v39 = v26;
  v27 = v26;
  v28 = Logger.logObject.getter();
  v29 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v41[0] = v32;
    *v30 = 136315394;
    *(v30 + 4) = sub_100005D28(0xD000000000000014, 0x8000000100075A20, v41);
    *(v30 + 12) = 2112;
    *(v30 + 14) = v27;
    *v31 = v39;
    v33 = v27;
    _os_log_impl(&_mh_execute_header, v28, v29, "%s Success! Unarchived location: %@. Restoring to it now.", v30, 0x16u);
    sub_100005A04(v31, &qword_1000937D0, &unk_1000743F0);

    sub_100034948(v32);
  }

  sub_10000A0F8(v19, v18);

  (*(v3 + 8))(v12, v40);
  return v39;
}

uint64_t sub_10003A72C(uint64_t a1, void *a2, int a3, int a4, unsigned int a5)
{
  v80 = a5;
  v85 = a4;
  v86 = a3;
  v83 = a2;
  v6 = type metadata accessor for Logger();
  v88 = *(v6 - 8);
  v89 = v6;
  v7 = __chkstk_darwin(v6);
  v87 = &v79 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v81 = &v79 - v9;
  v10 = type metadata accessor for URL();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v14 = &v79 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v17 = &v79 - v16;
  __chkstk_darwin(v15);
  v84 = &v79 - v18;
  v19 = sub_10000DB4C(&qword_100093F50, &qword_100074090);
  __chkstk_darwin(v19 - 8);
  v79 = &v79 - v20;
  v21 = sub_10000DB4C(&qword_100093BF0, &qword_100074440);
  __chkstk_darwin(v21 - 8);
  v23 = &v79 - v22;
  v24 = type metadata accessor for UTType();
  v25 = *(v24 - 8);
  __chkstk_darwin(v24);
  v27 = &v79 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((URL.isFileURL.getter() & 1) == 0)
  {
    v34 = v87;
    static Logger.Application.getter();
    (*(v11 + 16))(v14, a1, v10);
    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      aBlock = swift_slowAlloc();
      *v37 = 136315394;
      *(v37 + 4) = sub_100005D28(0xD000000000000056, 0x80000001000758F0, &aBlock);
      *(v37 + 12) = 2080;
      sub_10004DC20(&unk_1000937B0, &type metadata accessor for URL, &protocol conformance descriptor for URL);
      v38 = dispatch thunk of CustomStringConvertible.description.getter();
      v40 = v39;
      (*(v11 + 8))(v14, v10);
      v41 = sub_100005D28(v38, v40, &aBlock);

      *(v37 + 14) = v41;
      _os_log_impl(&_mh_execute_header, v35, v36, "%s: aborting attempt to open a non-file URL: %s", v37, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      (*(v11 + 8))(v14, v10);
    }

    (*(v88 + 8))(v34, v89);
    return 0;
  }

  v82 = a1;
  v87 = v10;
  v28 = *&v90[OBJC_IVAR____TtC5Files20BrowserSceneDelegate_viewController];
  if (!v28)
  {
    v43 = v81;
    static Logger.Application.getter();
    v44 = v11;
    v45 = v87;
    (*(v11 + 16))(v17, v82, v87);
    v46 = Logger.logObject.getter();
    v47 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      aBlock = swift_slowAlloc();
      *v48 = 136315394;
      *(v48 + 4) = sub_100005D28(0xD000000000000056, 0x80000001000758F0, &aBlock);
      *(v48 + 12) = 2080;
      sub_10004DC20(&unk_1000937B0, &type metadata accessor for URL, &protocol conformance descriptor for URL);
      v49 = v43;
      v50 = dispatch thunk of CustomStringConvertible.description.getter();
      v52 = v51;
      (*(v44 + 8))(v17, v45);
      v53 = sub_100005D28(v50, v52, &aBlock);

      *(v48 + 14) = v53;
      _os_log_impl(&_mh_execute_header, v46, v47, "%s: could not reveal, invalid scene. URL: %s", v48, 0x16u);
      swift_arrayDestroy();

      (*(v88 + 8))(v49, v89);
    }

    else
    {

      (*(v11 + 8))(v17, v45);
      (*(v88 + 8))(v43, v89);
    }

    return 0;
  }

  v29 = v28;
  v30 = v82;
  LODWORD(v89) = URL.startAccessingSecurityScopedResource()();
  URL.promisedContentType.getter();
  if ((*(v25 + 48))(v23, 1, v24) == 1)
  {
    sub_100005A04(v23, &qword_100093BF0, &qword_100074440);
    LODWORD(v88) = 0;
    v32 = 1;
    v33 = v83;
    if (!v83)
    {
      goto LABEL_19;
    }

LABEL_14:
    v55 = [v33 sourceApplication];
    if (v55)
    {
      v56 = v55;
      v57 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v59 = v58;

      aBlock = v57;
      v92 = v59;
      __chkstk_darwin(v60);
      *(&v79 - 2) = &aBlock;
      v61 = sub_10000AF3C(sub_1000062A0, (&v79 - 4), &off_1000898E0);
      swift_arrayDestroy();

      if (v32 & v61)
      {
        v62 = [objc_opt_self() quickLookInSeparateProcess];
        v63 = v79;
        v30 = v82;
        v64 = v87;
        (*(v11 + 16))(v79, v82, v87);
        (*(v11 + 56))(v63, 0, 1, v64);
        sub_100056B0C(v63, 0, v62, 0, 0);
        sub_100005A04(v63, &qword_100093F50, &qword_100074090);
        LOBYTE(v32) = 0;
      }

      else
      {
        v31 = (v61 ^ 1u);
        LOBYTE(v32) = v32 & (v61 ^ 1);
        v30 = v82;
      }
    }

    goto LABEL_19;
  }

  (*(v25 + 32))(v27, v23, v24);
  v54 = UTType.isFolderUTI.getter();
  (*(v25 + 8))(v27, v24);
  v32 = v54 ^ 1;
  v31 = (v54 & v80);
  LODWORD(v88) = v54 & v80;
  v33 = v83;
  if (v83)
  {
    goto LABEL_14;
  }

LABEL_19:
  URL._bridgeToObjectiveC()(v31);
  v66 = v65;
  v67 = v11;
  v68 = *(v11 + 16);
  v69 = v84;
  v70 = v30;
  v71 = v87;
  v68(v84, v70, v87);
  v72 = (*(v67 + 80) + 40) & ~*(v67 + 80);
  v73 = swift_allocObject();
  *(v73 + 16) = v29;
  v74 = v85 & 1;
  *(v73 + 24) = v74 & v32;
  *(v73 + 25) = v86 & 1;
  v75 = v90;
  *(v73 + 32) = v90;
  (*(v67 + 32))(v73 + v72, v69, v71);
  v95 = sub_1000521B0;
  v96 = v73;
  aBlock = _NSConcreteStackBlock;
  v92 = 1107296256;
  v93 = sub_1000526E0;
  v94 = &unk_10008EBF0;
  v76 = _Block_copy(&aBlock);
  v77 = v29;
  v78 = v75;

  [v77 revealDocumentAtURL:v66 importIfNeeded:0 openDocument:v74 revealContents:v88 & 1 updateLastUsedDate:1 completion:v76];
  _Block_release(v76);

  if (v89)
  {
    URL.stopAccessingSecurityScopedResource()();
  }

  return 1;
}

void sub_10003B160(uint64_t a1, uint64_t a2, void *a3, int a4, int a5, uint64_t a6, uint64_t a7)
{
  v70 = a7;
  v73 = a6;
  v66 = a4;
  v67 = a3;
  v78 = a1;
  v69 = type metadata accessor for URLResourceValues();
  v68 = *(v69 - 8);
  __chkstk_darwin(v69);
  v10 = &v62 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10000DB4C(&qword_100093F50, &qword_100074090);
  v12 = __chkstk_darwin(v11 - 8);
  v64 = &v62 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v15 = &v62 - v14;
  v16 = type metadata accessor for URL();
  v17 = *(v16 - 8);
  v18 = __chkstk_darwin(v16);
  v75 = &v62 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v21 = &v62 - v20;
  v22 = type metadata accessor for Logger();
  v23 = *(v22 - 8);
  v24 = __chkstk_darwin(v22);
  v65 = &v62 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __chkstk_darwin(v24);
  v77 = &v62 - v27;
  __chkstk_darwin(v26);
  v29 = &v62 - v28;
  if (a2)
  {
    v71 = a5;
    v72 = v10;
    v74 = v21;
    swift_errorRetain();
    static Logger.Application.getter();
    swift_errorRetain();
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v63 = v17;
      v33 = v32;
      v34 = swift_slowAlloc();
      v76 = v22;
      v62 = v34;
      v79 = v34;
      *v33 = 136315394;
      *(v33 + 4) = sub_100005D28(0xD000000000000056, 0x80000001000758F0, &v79);
      *(v33 + 12) = 2080;
      swift_getErrorValue();
      v35 = Error.localizedDescription.getter();
      v37 = v16;
      v38 = v23;
      v39 = sub_100005D28(v35, v36, &v79);

      *(v33 + 14) = v39;
      v23 = v38;
      v16 = v37;
      _os_log_impl(&_mh_execute_header, v30, v31, "%s: failed to reveal the item. Error: %s", v33, 0x16u);
      swift_arrayDestroy();
      v22 = v76;

      v17 = v63;
    }

    else
    {
    }

    (*(v23 + 8))(v29, v22);
    v21 = v74;
    v10 = v72;
    LOBYTE(a5) = v71;
  }

  sub_100034850(v78, v15, &qword_100093F50, &qword_100074090);
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
    sub_100005A04(v15, &qword_100093F50, &qword_100074090);
    if (a5)
    {
      v40 = OBJC_IVAR____TtC5Files20BrowserSceneDelegate_fileImportController;
      v41 = v73;
      v42 = *(v73 + OBJC_IVAR____TtC5Files20BrowserSceneDelegate_fileImportController);
      if (v42)
      {
        goto LABEL_26;
      }

      v43 = v65;
      static Logger.Application.getter();
      v44 = Logger.logObject.getter();
      v45 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v44, v45))
      {
        v46 = v22;
        v47 = swift_slowAlloc();
        v48 = v23;
        v49 = swift_slowAlloc();
        v79 = v49;
        *v47 = 136315138;
        *(v47 + 4) = sub_100005D28(0xD000000000000056, 0x80000001000758F0, &v79);
        _os_log_impl(&_mh_execute_header, v44, v45, "%s: fileImportController was nil, creating a new one.", v47, 0xCu);
        sub_100034948(v49);

        (*(v48 + 8))(v43, v46);
      }

      else
      {

        (*(v23 + 8))(v43, v22);
      }

      v58 = [objc_allocWithZone(type metadata accessor for DOCImportFileController()) init];
      v59 = *(v41 + v40);
      *(v41 + v40) = v58;
      v60 = v58;

      if (v60)
      {
        *&v60[OBJC_IVAR____TtC5Files23DOCImportFileController_delegate + 8] = &off_10008E4F8;
        swift_unknownObjectWeakAssign();
      }

      v42 = *(v41 + v40);
      if (v42)
      {
LABEL_26:
        v61 = v42;
        sub_10006E500(v70);
      }

      else
      {
        __break(1u);
      }
    }

    return;
  }

  v78 = v23;
  v76 = v22;
  (*(v17 + 32))(v21, v15, v16);
  v50 = URL.startAccessingSecurityScopedResource()();
  sub_10000DB4C(&qword_100093BF8, &qword_100074448);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1000736D0;
  *(inited + 32) = NSURLIsDirectoryKey;
  *(inited + 40) = NSURLIsPackageKey;
  v52 = NSURLIsDirectoryKey;
  v53 = NSURLIsPackageKey;
  sub_1000503F4(inited);
  swift_setDeallocating();
  type metadata accessor for URLResourceKey(0);
  swift_arrayDestroy();
  URL.promisedItemResourceValues(forKeys:)();

  v54 = URLResourceValues.isDirectory.getter();
  v55 = URLResourceValues.isPackage.getter();
  if (v55 == 2)
  {
    if ((v54 & 1) == 0)
    {
      goto LABEL_18;
    }
  }

  else if (v54 & 1) == 0 || (v55)
  {
LABEL_18:
    if (v66)
    {
      v56 = [objc_opt_self() quickLookInSeparateProcess];
      v57 = v64;
      (*(v17 + 16))(v64, v21, v16);
      (*(v17 + 56))(v57, 0, 1, v16);
      sub_100056B0C(v57, 0, v56, 0, 0);
      sub_100005A04(v57, &qword_100093F50, &qword_100074090);
    }

    goto LABEL_20;
  }

  sub_100052AB0(1, v67);
LABEL_20:
  (*(v68 + 8))(v10, v69);
  if (v50)
  {
    URL.stopAccessingSecurityScopedResource()();
  }

  (*(v17 + 8))(v21, v16);
}

uint64_t sub_10003BC74(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = sub_10000DB4C(&qword_100093F50, &qword_100074090);
  __chkstk_darwin(v6 - 8);
  v8 = &v14 - v7;
  v9 = *(a1 + 32);
  if (a2)
  {
    static URL._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = type metadata accessor for URL();
    (*(*(v10 - 8) + 56))(v8, 0, 1, v10);
  }

  else
  {
    v11 = type metadata accessor for URL();
    (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  }

  v12 = a3;
  v9(v8, a3);

  return sub_100005A04(v8, &qword_100093F50, &qword_100074090);
}

void sub_10003BDC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v39 = *(v4 - 8);
  __chkstk_darwin(v4);
  v57 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = type metadata accessor for DispatchQoS();
  v38 = *(v55 - 8);
  __chkstk_darwin(v55);
  v7 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for URL();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v11 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DispatchQoS.QoSClass();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v54 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = swift_allocObject();
  *(v15 + 16) = &_swiftEmptyArrayStorage;
  v56 = dispatch_group_create();
  v60 = *(a1 + 16);
  if (v60)
  {
    v52 = sub_100002B84(0, &qword_100093A70, OS_dispatch_queue_ptr);
    v16 = *(v9 + 80);
    v17 = v13;
    v18 = a1 + ((v16 + 32) & ~v16);
    v50 = (v17 + 104);
    v49 = *(v9 + 72);
    v48 = (v17 + 8);
    v47 = (v9 + 16);
    v46 = enum case for DispatchQoS.QoSClass.userInitiated(_:);
    v51 = v16;
    v45 = (v16 + 24) & ~v16;
    v44 = (v10 + v45 + 7) & 0xFFFFFFFFFFFFFFF8;
    v43 = (v9 + 32);
    v42 = &v64;
    v41 = (v39 + 8);
    v40 = (v38 + 8);
    v53 = v12;
    do
    {
      v19 = v56;
      dispatch_group_enter(v56);
      v20 = v54;
      (*v50)(v54, v46, v12);
      v58 = static OS_dispatch_queue.global(qos:)();
      (*v48)(v20, v12);
      v21 = *v47;
      v59 = v18;
      v21(v11, v18, v8);
      v22 = v44;
      v23 = swift_allocObject();
      *(v23 + 16) = v19;
      (*v43)(v23 + v45, v11, v8);
      *(v23 + v22) = v15;
      v66 = sub_100052190;
      v67 = v23;
      aBlock = _NSConcreteStackBlock;
      v63 = 1107296256;
      v64 = sub_100002DB0;
      v65 = &unk_10008EB28;
      v24 = _Block_copy(&aBlock);
      v25 = v19;

      static DispatchQoS.unspecified.getter();
      v61 = &_swiftEmptyArrayStorage;
      sub_10004DC20(&unk_100093410, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
      sub_10000DB4C(&unk_100093A80, &qword_1000736E0);
      sub_100002D44(&qword_100093420, &unk_100093A80, &qword_1000736E0, &protocol conformance descriptor for [A]);
      v26 = v57;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      v27 = v58;
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      v28 = v24;
      v12 = v53;
      _Block_release(v28);

      v29 = v55;
      (*v41)(v26, v4);
      (*v40)(v7, v29);

      v18 = v59 + v49;
      --v60;
    }

    while (v60);
  }

  sub_100002B84(0, &qword_100093A70, OS_dispatch_queue_ptr);
  v30 = static OS_dispatch_queue.main.getter();
  v31 = swift_allocObject();
  v32 = v37;
  *(v31 + 16) = v15;
  *(v31 + 24) = v32;
  v66 = sub_1000521A8;
  v67 = v31;
  aBlock = _NSConcreteStackBlock;
  v63 = 1107296256;
  v64 = sub_100002DB0;
  v65 = &unk_10008EB78;
  v33 = _Block_copy(&aBlock);

  v34 = v32;
  static DispatchQoS.unspecified.getter();
  v61 = &_swiftEmptyArrayStorage;
  sub_10004DC20(&unk_100093410, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10000DB4C(&unk_100093A80, &qword_1000736E0);
  sub_100002D44(&qword_100093420, &unk_100093A80, &qword_1000736E0, &protocol conformance descriptor for [A]);
  v35 = v57;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v36 = v56;
  OS_dispatch_group.notify(qos:flags:queue:execute:)();
  _Block_release(v33);

  (*(v39 + 8))(v35, v4);
  (*(v38 + 8))(v7, v55);
}

void sub_10003C5B8(NSObject *a1, uint64_t a2, uint64_t a3)
{
  v31 = a1;
  v5 = type metadata accessor for URL();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v28 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Logger();
  v29 = *(v8 - 8);
  __chkstk_darwin(v8);
  v30 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10000DB4C(&qword_100093F50, &qword_100074090);
  __chkstk_darwin(v10 - 8);
  v12 = &v27 - v11;
  sub_100002B84(0, &qword_100093BE8, FINode_ptr);
  v13 = *(v6 + 16);
  v13(v12, a2, v5);
  (*(v6 + 56))(v12, 0, 1, v5);
  v14 = static FINode.docNode(from:)();
  sub_100005A04(v12, &qword_100093F50, &qword_100074090);
  if (v14)
  {
    swift_beginAccess();
    v15 = v14;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((*(a3 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a3 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    swift_endAccess();
  }

  else
  {
    v27 = v8;
    static Logger.UI.getter();
    v16 = v28;
    v13(v28, a2, v5);
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v32[0] = v20;
      *v19 = 136315138;
      sub_10004DC20(&unk_1000937B0, &type metadata accessor for URL, &protocol conformance descriptor for URL);
      v21 = dispatch thunk of CustomStringConvertible.description.getter();
      v22 = v16;
      v23 = v21;
      v25 = v24;
      (*(v6 + 8))(v22, v5);
      v26 = sub_100005D28(v23, v25, v32);

      *(v19 + 4) = v26;
      _os_log_impl(&_mh_execute_header, v17, v18, "Failed to fetch FINode to reveal from URL: %s", v19, 0xCu);
      sub_100034948(v20);
    }

    else
    {

      (*(v6 + 8))(v16, v5);
    }

    (*(v29 + 8))(v30, v27);
  }

  dispatch_group_leave(v31);
}

void sub_10003C9E8(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = *(a1 + 16);
  if (v4 >> 62)
  {
    if (!_CocoaArrayWrapper.endIndex.getter())
    {
      return;
    }
  }

  else if (!*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    return;
  }

  v5 = *(a2 + OBJC_IVAR____TtC5Files20BrowserSceneDelegate_viewController);
  if (v5)
  {
    v6 = [v5 splitBrowserViewController];
    v7 = [v6 fullDocumentManagerViewController];

    v8 = [v7 effectiveBrowserViewController];
    if (v8)
    {
      swift_beginAccess();

      sub_10000DB4C(&unk_100093BB0, &qword_100074428);
      isa = Array._bridgeToObjectiveC()().super.isa;

      v11[4] = nullsub_1;
      v11[5] = 0;
      v11[0] = _NSConcreteStackBlock;
      v11[1] = 1107296256;
      v11[2] = sub_10003CBA4;
      v11[3] = &unk_10008EBA0;
      v10 = _Block_copy(v11);
      [v8 revealWithNodes:isa selectEvenIfVisible:1 completionBlock:v10];
      _Block_release(v10);
    }
  }
}

double sub_10003CBA4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);

  return result;
}

void sub_10003CBF8(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for URL();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v5);
  v9 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v12 = &v47 - v11;
  __chkstk_darwin(v10);
  v14 = &v47 - v13;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v16 = Strong;
  if (a1 >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_4;
    }

LABEL_10:
    sub_100034850(a2, aBlock, &qword_100093498, &qword_100074430);
    if (!v53)
    {

      sub_100005A04(aBlock, &qword_100093498, &qword_100074430);
      return;
    }

    type metadata accessor for DOCActionContext();
    if ((swift_dynamicCast() & 1) == 0)
    {

      return;
    }

    v30 = v50;
    v31 = DOCActionContext.userInfo.getter();
    v32 = UIDocumentBrowserActionUserInfoLocationKey.getter();
    if (*(v31 + 16))
    {
      v34 = sub_100009C94(v32, v33);
      v36 = v35;

      if (v36)
      {
        sub_100005CC8(*(v31 + 56) + 32 * v34, aBlock);

        sub_100002B84(0, &qword_100093BD8, DOCConcreteLocation_ptr);
        if ((swift_dynamicCast() & 1) == 0)
        {

          return;
        }

        v37 = v50;
        v38 = DOCActionContext.userInfo.getter();
        v39 = UIDocumentBrowserActionUserInfoTagNameKey.getter();
        if (*(v38 + 16))
        {
          v41 = sub_100009C94(v39, v40);
          v43 = v42;

          if (v43)
          {
            sub_100005CC8(*(v38 + 56) + 32 * v41, aBlock);

            v44 = swift_dynamicCast();
            if (v44)
            {
              v45 = v50;
            }

            else
            {
              v45 = 0;
            }

            if (v44)
            {
              v46 = v51;
            }

            else
            {
              v46 = 0;
            }

            goto LABEL_30;
          }
        }

        else
        {
        }

        v45 = 0;
        v46 = 0;
LABEL_30:
        sub_10003DB38(v37, v45, v46);

        return;
      }
    }

    else
    {
    }

    return;
  }

  if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_10;
  }

LABEL_4:
  v49 = v16;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v17 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return;
    }

    v17 = *(a1 + 32);
  }

  v18 = v17;
  v19 = [v17 fileURL];

  static URL._unconditionallyBridgeFromObjectiveC(_:)();
  v20 = *(v6 + 32);
  v20(v14, v12, v5);
  v48 = [objc_opt_self() defaultManager];
  URL._bridgeToObjectiveC()(v21);
  v47 = v22;
  v23 = swift_allocObject();
  v24 = v49;
  swift_unknownObjectWeakInit();
  (*(v6 + 16))(v9, v14, v5);
  v25 = (*(v6 + 80) + 24) & ~*(v6 + 80);
  v26 = swift_allocObject();
  *(v26 + 16) = v23;
  v20((v26 + v25), v9, v5);
  v54 = sub_100051E0C;
  v55 = v26;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10001D16C;
  v53 = &unk_10008E948;
  v27 = _Block_copy(aBlock);

  v29 = v47;
  v28 = v48;
  [v48 fetchItemForURL:v47 completionHandler:v27];
  _Block_release(v27);

  (*(v6 + 8))(v14, v5);
}

void sub_10003D134(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v40 = a2;
  v6 = type metadata accessor for Logger();
  v41 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v35[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = type metadata accessor for URL();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v13 = &v35[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v12);
  v15 = &v35[-v14];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v17 = Strong;
    v39 = v6;
    if (a1)
    {
      (*(v10 + 16))(v15, a4, v9);
      v18 = (*(v10 + 80) + 32) & ~*(v10 + 80);
      v19 = swift_allocObject();
      *(v19 + 16) = a1;
      *(v19 + 24) = v17;
      (*(v10 + 32))(v19 + v18, v15, v9);
      v20 = a1;
      v21 = v17;
      DOCRunInMainThread(_:)();
    }

    else
    {
      v22 = v8;
      static Logger.Application.getter();
      (*(v10 + 16))(v13, a4, v9);
      v23 = v40;
      swift_errorRetain();
      v24 = Logger.logObject.getter();
      v25 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        v38 = v22;
        v27 = v26;
        v37 = swift_slowAlloc();
        v43 = v37;
        *v27 = 136315650;
        *(v27 + 4) = sub_100005D28(0xD000000000000017, 0x80000001000758B0, &v43);
        v36 = v25;
        *(v27 + 12) = 2080;
        sub_10004DC20(&unk_1000937B0, &type metadata accessor for URL, &protocol conformance descriptor for URL);
        v28 = dispatch thunk of CustomStringConvertible.description.getter();
        v30 = v29;
        (*(v10 + 8))(v13, v9);
        v31 = sub_100005D28(v28, v30, &v43);

        *(v27 + 14) = v31;
        *(v27 + 22) = 2080;
        v42 = v23;
        swift_errorRetain();
        sub_10000DB4C(&unk_100093B40, qword_100074410);
        v32 = String.init<A>(describing:)();
        v34 = sub_100005D28(v32, v33, &v43);

        *(v27 + 24) = v34;
        _os_log_impl(&_mh_execute_header, v24, v36, "%s item was nil for URL: %s error: %s", v27, 0x20u);
        swift_arrayDestroy();

        (*(v41 + 8))(v38, v39);
      }

      else
      {

        (*(v10 + 8))(v13, v9);
        (*(v41 + 8))(v22, v39);
      }
    }
  }
}

void sub_10003D5AC(void *a1, uint64_t a2, uint64_t a3)
{
  if ([a1 isFolder])
  {
    sub_10003D6B8(a3);
    return;
  }

  sub_10005A36C(a3);
  if (!v6)
  {
    sub_10005B100(a1);
    if (!v9)
    {
      sub_10003D920(a3, 0);
      return;
    }

    v7 = v9;
    v8 = *(a2 + OBJC_IVAR____TtC5Files20BrowserSceneDelegate_window);
    if (v8)
    {
      goto LABEL_8;
    }

LABEL_9:
    v10 = 0;
    goto LABEL_10;
  }

  v7 = v6;
  v8 = *(a2 + OBJC_IVAR____TtC5Files20BrowserSceneDelegate_window);
  if (!v8)
  {
    goto LABEL_9;
  }

LABEL_8:
  v10 = [v8 windowScene];
LABEL_10:
  v11 = v10;
  sub_1000620FC(v7, v10);
}

void sub_10003D6B8(uint64_t a1)
{
  v3 = type metadata accessor for URL();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v6 = [objc_allocWithZone(UIWindowSceneActivationRequestOptions) init];
  v7 = *(v1 + OBJC_IVAR____TtC5Files20BrowserSceneDelegate_window);
  v8 = v6;
  if (v7)
  {
    v7 = [v7 windowScene];
  }

  [v6 setRequestingScene:v7];

  v9 = [objc_opt_self() defaultManager];
  URL._bridgeToObjectiveC()(v10);
  v12 = v11;
  (*(v4 + 16))(aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  v13 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = v6;
  (*(v4 + 32))(v14 + v13, aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v3);
  aBlock[4] = sub_100051F14;
  aBlock[5] = v14;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10001D16C;
  aBlock[3] = &unk_10008EA38;
  v15 = _Block_copy(aBlock);
  v16 = v6;

  [v9 fetchItemForURL:v12 completionHandler:v15];
  _Block_release(v15);
}

void sub_10003D920(uint64_t a1, char a2)
{
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v7 = [objc_opt_self() defaultManager];
  URL._bridgeToObjectiveC()(v8);
  v10 = v9;
  v11 = swift_allocObject();
  swift_unknownObjectWeakInit();
  (*(v5 + 16))(aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v4);
  v12 = (*(v5 + 80) + 25) & ~*(v5 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = v11;
  *(v13 + 24) = a2;
  (*(v5 + 32))(v13 + v12, aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v4);
  aBlock[4] = sub_1000509F8;
  aBlock[5] = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10001D16C;
  aBlock[3] = &unk_10008E628;
  v14 = _Block_copy(aBlock);

  [v7 fetchItemForURL:v10 completionHandler:v14];
  _Block_release(v14);
}

uint64_t sub_10003DB38(void *a1, uint64_t a2, unint64_t a3)
{
  v7 = type metadata accessor for Logger();
  v51 = *(v7 - 8);
  v52 = v7;
  __chkstk_darwin(v7);
  v9 = &v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DOCUserActivityIdentifier();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = [objc_allocWithZone(UIWindowSceneActivationRequestOptions) init];
  v15 = *(v3 + OBJC_IVAR____TtC5Files20BrowserSceneDelegate_window);
  v16 = v14;
  if (v15)
  {
    v15 = [v15 windowScene];
  }

  [v14 setRequestingScene:v15];

  v17 = objc_opt_self();
  v53 = 0;
  v18 = [v17 archivedDataWithRootObject:a1 requiringSecureCoding:1 error:&v53];
  v19 = v53;
  if (v18)
  {
    v20 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v51 = a2;
    v21 = v20;
    v23 = v22;

    (*(v11 + 104))(v13, enum case for DOCUserActivityIdentifier.location(_:), v10);
    DOCUserActivityIdentifier.rawValue.getter();
    v52 = a1;
    (*(v11 + 8))(v13, v10);
    v24 = objc_allocWithZone(NSUserActivity);
    v25 = String._bridgeToObjectiveC()();

    v26 = [v24 initWithActivityType:v25];

    sub_10000DB4C(&qword_100093A28, qword_100074AD0);
    inited = swift_initStackObject();
    v50 = xmmword_1000736D0;
    *(inited + 16) = xmmword_1000736D0;
    *(inited + 32) = DOCUserActivityLocationKey.getter();
    *(inited + 40) = v28;
    *(inited + 48) = DOCUserActivityTagNameKey.getter();
    *(inited + 56) = v29;
    sub_10004CDFC(inited);
    swift_setDeallocating();
    swift_arrayDestroy();
    isa = Set._bridgeToObjectiveC()().super.isa;

    [v26 setRequiredUserInfoKeys:isa];

    sub_10000DB4C(&qword_100093A30, &qword_1000743B0);
    v31 = swift_initStackObject();
    *(v31 + 16) = v50;
    v53 = DOCUserActivityLocationKey.getter();
    v54 = v32;
    AnyHashable.init<A>(_:)();
    *(v31 + 96) = &type metadata for Data;
    *(v31 + 72) = v21;
    *(v31 + 80) = v23;
    sub_10000AEE8(v21, v23);
    v53 = DOCUserActivityTagNameKey.getter();
    v54 = v33;
    AnyHashable.init<A>(_:)();
    *(v31 + 168) = &type metadata for String;
    v34 = v51;
    if (!a3)
    {
      v34 = 0;
    }

    v35 = 0xE000000000000000;
    if (a3)
    {
      v35 = a3;
    }

    *(v31 + 144) = v34;
    *(v31 + 152) = v35;

    sub_10004CBBC(v31);
    swift_setDeallocating();
    sub_10000DB4C(&qword_100093A38, &qword_1000743B8);
    swift_arrayDestroy();
    v36 = Dictionary._bridgeToObjectiveC()().super.isa;

    [v26 addUserInfoEntriesFromDictionary:v36];

    v37 = swift_allocObject();
    v37[2] = v26;
    v37[3] = v14;
    v38 = v52;
    v37[4] = v52;
    v39 = v14;
    v40 = v26;
    v41 = v38;
    DOCRunInMainThread(_:)();

    return sub_10000A0F8(v21, v23);
  }

  else
  {
    v43 = v19;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    static Logger.Application.getter();
    swift_errorRetain();
    v44 = Logger.logObject.getter();
    v45 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      *v46 = 136315394;
      *(v46 + 4) = sub_100005D28(0xD00000000000001BLL, 0x8000000100075890, &v53);
      *(v46 + 12) = 2080;
      swift_getErrorValue();
      v47 = Error.localizedDescription.getter();
      v49 = sub_100005D28(v47, v48, &v53);

      *(v46 + 14) = v49;
      _os_log_impl(&_mh_execute_header, v44, v45, "%s: Failed to encode DOCConcrete Location in to data. Error: %s", v46, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
    }

    return (*(v51 + 8))(v9, v52);
  }
}

BOOL sub_10003E1E0(unint64_t a1, SEL *a2)
{
  v4 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
LABEL_15:
    v5 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v6 = 0;
  do
  {
    v7 = v6;
    if (v5 == v6)
    {
      break;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      if (__OFADD__(v7, 1))
      {
LABEL_12:
        __break(1u);
        return v5 != v7;
      }
    }

    else
    {
      if (v6 >= *(v4 + 16))
      {
        __break(1u);
        goto LABEL_15;
      }

      v8 = *(a1 + 8 * v6 + 32);
      swift_unknownObjectRetain();
      if (__OFADD__(v7, 1))
      {
        goto LABEL_12;
      }
    }

    v9 = [v8 *a2];
    swift_unknownObjectRelease();
    v6 = v7 + 1;
  }

  while ((v9 & 1) != 0);
  return v5 != v7;
}

void sub_10003E2C8(unint64_t a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10000DB4C(&qword_100093F50, &qword_100074090);
  __chkstk_darwin(v6 - 8);
  v8 = aBlock - v7;
  if (a1 >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_3;
    }

LABEL_13:
    static Logger.Application.getter();
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      aBlock[0] = v25;
      *v24 = 136446210;
      *(v24 + 4) = sub_100005D28(0xD000000000000017, 0x8000000100075770, aBlock);
      _os_log_impl(&_mh_execute_header, v22, v23, "%{public}s: nodes was empty.", v24, 0xCu);
      sub_100034948(v25);
    }

    (*(v3 + 8))(v5, v2);
    return;
  }

  if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_13;
  }

LABEL_3:
  if ((a1 & 0xC000000000000001) != 0)
  {
    v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return;
    }

    v9 = *(a1 + 32);
    swift_unknownObjectRetain();
  }

  v10 = swift_allocObject();
  swift_unknownObjectWeakInit();
  objc_opt_self();
  v11 = swift_dynamicCastObjCClass();
  if (v11)
  {
    v12 = v11;
    swift_unknownObjectRetain();
    v13 = [v12 fileURL];
    if (v13)
    {
      v14 = v13;
      static URL._unconditionallyBridgeFromObjectiveC(_:)();

      v15 = type metadata accessor for URL();
      (*(*(v15 - 8) + 56))(v8, 0, 1, v15);
    }

    else
    {
      v21 = type metadata accessor for URL();
      (*(*(v21 - 8) + 56))(v8, 1, 1, v21);
    }

    sub_10003E790(v8, 0, v9, v10);
    swift_unknownObjectRelease_n();
    sub_100005A04(v8, &qword_100093F50, &qword_100074090);
  }

  else
  {
    v16 = [objc_opt_self() defaultManager];
    objc_opt_self();
    v17 = swift_dynamicCastObjCClassUnconditional();
    v18 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v19 = swift_allocObject();
    v19[2] = v18;
    v19[3] = v9;
    v19[4] = v10;
    aBlock[4] = sub_100051CD0;
    aBlock[5] = v19;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1000526E0;
    aBlock[3] = &unk_10008E8A8;
    v20 = _Block_copy(aBlock);
    swift_unknownObjectRetain_n();

    [v16 fetchURLForItem:v17 completionHandler:v20];
    swift_unknownObjectRelease();
    _Block_release(v20);

    swift_unknownObjectRelease();
  }
}

uint64_t sub_10003E790(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v37 = a4;
  v38 = a3;
  v39 = a2;
  v5 = type metadata accessor for Logger();
  v40 = *(v5 - 8);
  v41 = v5;
  __chkstk_darwin(v5);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10000DB4C(&qword_100093F50, &qword_100074090);
  __chkstk_darwin(v8 - 8);
  v10 = &v36 - v9;
  v11 = type metadata accessor for URL();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(v11);
  v15 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v17 = &v36 - v16;
  sub_100034850(a1, v10, &qword_100093F50, &qword_100074090);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_100005A04(v10, &qword_100093F50, &qword_100074090);
    v18 = v7;
    static Logger.Application.getter();
    v19 = v38;
    swift_unknownObjectRetain();
    v20 = v39;
    swift_errorRetain();
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.error.getter();
    swift_unknownObjectRelease();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      *v23 = 136446722;
      *(v23 + 4) = sub_100005D28(0xD000000000000013, 0x80000001000757E0, &v43);
      *(v23 + 12) = 2082;
      v24 = [v19 description];
      v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v27 = v26;

      v28 = sub_100005D28(v25, v27, &v43);

      *(v23 + 14) = v28;
      *(v23 + 22) = 2080;
      v42 = v20;
      swift_errorRetain();
      sub_10000DB4C(&unk_100093B40, qword_100074410);
      v29 = String.init<A>(describing:)();
      v31 = sub_100005D28(v29, v30, &v43);

      *(v23 + 24) = v31;
      _os_log_impl(&_mh_execute_header, v21, v22, "%{public}s: got nil URL for node: %{public}s. Error: %s", v23, 0x20u);
      swift_arrayDestroy();
    }

    return (*(v40 + 8))(v18, v41);
  }

  else
  {
    v33 = *(v12 + 32);
    v33(v17, v10, v11);
    (*(v12 + 16))(v15, v17, v11);
    v34 = (*(v12 + 80) + 24) & ~*(v12 + 80);
    v35 = swift_allocObject();
    *(v35 + 16) = v37;
    v33((v35 + v34), v15, v11);

    DOCRunInMainThread(_:)();

    return (*(v12 + 8))(v17, v11);
  }
}

void sub_10003EC28(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v38 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v8 = &v35 - v7;
  v9 = type metadata accessor for URL();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10000DB4C(&qword_100093F50, &qword_100074090);
  v14 = __chkstk_darwin(v13 - 8);
  v16 = &v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = &v35 - v17;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v20 = Strong;
    v37 = v4;
    v21 = *&Strong[OBJC_IVAR____TtC5Files20BrowserSceneDelegate_viewController];
    if (v21)
    {
      v36 = v3;
      (*(v10 + 16))(v18, a2, v9);
      (*(v10 + 56))(v18, 0, 1, v9);
      v22 = objc_opt_self();
      v23 = v21;
      [v22 supportsQuickLookInSharedWindow];
      sub_100034850(v18, v16, &qword_100093F50, &qword_100074090);
      if ((*(v10 + 48))(v16, 1, v9) == 1)
      {
        sub_100005A04(v16, &qword_100093F50, &qword_100074090);
        static Logger.Application.getter();
        v24 = Logger.logObject.getter();
        v25 = static os_log_type_t.debug.getter();
        v26 = os_log_type_enabled(v24, v25);
        v27 = v36;
        if (v26)
        {
          v28 = swift_slowAlloc();
          *v28 = 0;
          _os_log_impl(&_mh_execute_header, v24, v25, "[Interaction] Attempted to quick look a nil url. Ignoring", v28, 2u);
        }

        (*(v37 + 8))(v8, v27);
      }

      else
      {
        (*(v10 + 32))(v12, v16, v9);
        v29 = v38;
        static Logger.Application.getter();
        v30 = Logger.logObject.getter();
        v31 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v30, v31))
        {
          v32 = swift_slowAlloc();
          v33 = v23;
          v34 = swift_slowAlloc();
          v39 = v34;
          *v32 = 136315138;
          *(v32 + 4) = sub_100005D28(0xD000000000000041, 0x8000000100075790, &v39);
          _os_log_impl(&_mh_execute_header, v30, v31, "[Interaction] %s preview", v32, 0xCu);
          sub_100034948(v34);
          v23 = v33;

          (*(v37 + 8))(v38, v36);
        }

        else
        {

          (*(v37 + 8))(v29, v36);
        }

        sub_100054CE4(v12, 0, 0);
        (*(v10 + 8))(v12, v9);
      }

      sub_100005A04(v18, &qword_100093F50, &qword_100074090);
    }

    else
    {
    }
  }
}

void *sub_10003F118(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {

    return sub_10003E790(a1, a2, a4, a5);
  }

  return result;
}

double sub_10003F198(void *a1)
{
  v2 = type metadata accessor for Logger();
  v121 = *(v2 - 8);
  v3 = __chkstk_darwin(v2);
  v122 = v103 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __chkstk_darwin(v3);
  v114 = v103 - v6;
  __chkstk_darwin(v5);
  v113 = v103 - v7;
  v8 = sub_10000DB4C(&qword_100093F50, &qword_100074090);
  v9 = __chkstk_darwin(v8);
  v115 = v103 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v117 = v103 - v12;
  __chkstk_darwin(v11);
  v119 = v103 - v13;
  v125 = type metadata accessor for URL();
  v128 = *(v125 - 8);
  v14 = __chkstk_darwin(v125);
  v112 = v103 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v120 = v103 - v16;
  v17 = type metadata accessor for DispatchTime();
  v124 = *(v17 - 8);
  v18 = __chkstk_darwin(v17);
  v20 = v103 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v22 = v103 - v21;
  v129 = type metadata accessor for DispatchTimeInterval();
  v126 = *(v129 - 8);
  v23 = __chkstk_darwin(v129);
  v116 = v103 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __chkstk_darwin(v23);
  v118 = v103 - v26;
  __chkstk_darwin(v25);
  v127 = v103 - v27;
  v28 = type metadata accessor for DispatchQoS.QoSClass();
  v123 = *(v28 - 8);
  __chkstk_darwin(v28);
  v30 = v103 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = type metadata accessor for DispatchWorkItemFlags();
  __chkstk_darwin(v31);
  if (a1)
  {
    v110 = v2;
    v33 = a1;
    v34 = [v33 userInfo];
    if (v34)
    {
      v35 = v34;
      v111 = v33;
      v36 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      v37 = *(v130 + OBJC_IVAR____TtC5Files20BrowserSceneDelegate_stateRestorationURLKey + 8);
      v131 = *(v130 + OBJC_IVAR____TtC5Files20BrowserSceneDelegate_stateRestorationURLKey);
      v132 = v37;

      AnyHashable.init<A>(_:)();
      if (*(v36 + 16) && (v38 = sub_10000A60C(&aBlock), (v39 & 1) != 0))
      {
        sub_100005CC8(*(v36 + 56) + 32 * v38, &v139);
        sub_10000A774(&aBlock);

        if (*(&v140 + 1))
        {
          if ((swift_dynamicCast() & 1) == 0)
          {

            return result;
          }

          v40 = aBlock;
          v41 = v134;
          v42 = swift_allocBox();
          v43 = *(v128 + 56);
          v104 = v44;
          v103[1] = v128 + 56;
          v103[0] = v43;
          v43(v44, 1, 1, v125);
          v45 = swift_allocObject();
          v45[2] = v40;
          v45[3] = v41;
          v45[4] = v42;
          v137 = sub_100051CC4;
          v138 = v45;
          aBlock = _NSConcreteStackBlock;
          v134 = 1107296256;
          v135 = sub_100002DB0;
          v136 = &unk_10008E858;
          v106 = _Block_copy(&aBlock);
          *&v139 = &_swiftEmptyArrayStorage;
          v107 = v40;
          v108 = v41;
          sub_10000AEE8(v40, v41);
          v105 = sub_10004DC20(&unk_100093410, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
          v109 = v42;

          sub_10000DB4C(&unk_100093A80, &qword_1000736E0);
          sub_100002D44(&qword_100093420, &unk_100093A80, &qword_1000736E0, &protocol conformance descriptor for [A]);
          dispatch thunk of SetAlgebra.init<A>(_:)();
          type metadata accessor for DispatchWorkItem();
          swift_allocObject();
          v46 = DispatchWorkItem.init(flags:block:)();

          sub_100002B84(0, &qword_100093A70, OS_dispatch_queue_ptr);
          v47 = v123;
          (*(v123 + 104))(v30, enum case for DispatchQoS.QoSClass.userInitiated(_:), v28);
          v48 = static OS_dispatch_queue.global(qos:)();
          (*(v47 + 8))(v30, v28);
          OS_dispatch_queue.async(execute:)();

          v49 = v126;
          v50 = v127;
          *v127 = 2;
          (*(v49 + 104))(v50, enum case for DispatchTimeInterval.seconds(_:), v129);
          static DispatchTime.now()();
          + infix(_:_:)();
          v51 = *(v124 + 8);
          v51(v20, v17);
          v124 = v46;
          dispatch thunk of DispatchWorkItem.wait(timeout:)();
          v51(v22, v17);
          if ((static DispatchTimeoutResult.== infix(_:_:)() & 1) == 0)
          {
            v60 = v122;
            static Logger.Application.getter();
            v61 = *(v49 + 16);
            v62 = v118;
            v61(v118, v50, v129);
            v63 = Logger.logObject.getter();
            v64 = static os_log_type_t.error.getter();
            v65 = os_log_type_enabled(v63, v64);
            v66 = v110;
            if (v65)
            {
              v67 = swift_slowAlloc();
              aBlock = swift_slowAlloc();
              *v67 = 136315394;
              *(v67 + 4) = sub_100005D28(0xD000000000000017, 0x8000000100075770, &aBlock);
              *(v67 + 12) = 2080;
              v68 = v129;
              v61(v116, v62, v129);
              v69 = String.init<A>(describing:)();
              v71 = v70;
              v72 = *(v126 + 8);
              v72(v62, v68);
              v73 = sub_100005D28(v69, v71, &aBlock);

              *(v67 + 14) = v73;
              _os_log_impl(&_mh_execute_header, v63, v64, "%s: Bookmark data resolution has timed out (max %s", v67, 0x16u);
              swift_arrayDestroy();

              sub_10000A0F8(v107, v108);
              (*(v121 + 8))(v122, v110);
              v72(v127, v68);
            }

            else
            {

              sub_10000A0F8(v107, v108);
              v83 = *(v49 + 8);
              v84 = v129;
              v83(v62, v129);
              (*(v121 + 8))(v60, v66);
              v83(v50, v84);
            }

            goto LABEL_39;
          }

          v52 = v104;
          swift_beginAccess();
          v53 = v52;
          v54 = v119;
          sub_100034850(v53, v119, &qword_100093F50, &qword_100074090);
          v55 = v128;
          v56 = *(v128 + 48);
          v57 = v125;
          v58 = v56(v54, 1, v125);
          v59 = v110;
          if (v58 == 1)
          {
            (*(v49 + 8))(v127, v129);

            sub_10000A0F8(v107, v108);

            sub_100005A04(v54, &qword_100093F50, &qword_100074090);
LABEL_39:

            return result;
          }

          v74 = *(v55 + 32);
          v74(v120, v54, v57);
          v75 = v111;
          v76 = [v111 userInfo];
          if (v76)
          {
            v77 = v76;
            v78 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

            *&v139 = DOCUserActivityQuickLookStateRestorationUserInfoKey.getter();
            *(&v139 + 1) = v79;
            AnyHashable.init<A>(_:)();
            if (*(v78 + 16) && (v80 = sub_10000A60C(&aBlock), (v81 & 1) != 0))
            {
              sub_100005CC8(*(v78 + 56) + 32 * v80, &v139);
              sub_10000A774(&aBlock);

              v75 = v111;
              if (*(&v140 + 1))
              {
                sub_10000DB4C(&qword_100093A40, &qword_1000743C0);
                if (swift_dynamicCast())
                {
                  v82 = aBlock;
                }

                else
                {
                  v82 = 0;
                }

LABEL_29:
                v85 = *(v130 + OBJC_IVAR____TtC5Files20BrowserSceneDelegate_viewController);
                if (v85)
                {
                  v86 = v117;
                  (*(v128 + 16))(v117, v120, v57);
                  (v103[0])(v86, 0, 1, v57);
                  v87 = objc_opt_self();
                  v88 = v85;
                  [v87 supportsQuickLookInSharedWindow];
                  v89 = v115;
                  sub_100034850(v86, v115, &qword_100093F50, &qword_100074090);
                  if (v56(v89, 1, v57) == 1)
                  {
                    sub_100005A04(v89, &qword_100093F50, &qword_100074090);
                    v90 = v113;
                    static Logger.Application.getter();
                    v91 = Logger.logObject.getter();
                    v92 = static os_log_type_t.debug.getter();
                    if (os_log_type_enabled(v91, v92))
                    {
                      v93 = swift_slowAlloc();
                      *v93 = 0;
                      _os_log_impl(&_mh_execute_header, v91, v92, "[Interaction] Attempted to quick look a nil url. Ignoring", v93, 2u);
                    }

                    (*(v121 + 8))(v90, v59);
                    v94 = v126;
                    v95 = v127;
                    v96 = v128;
                  }

                  else
                  {
                    v97 = v112;
                    v74(v112, v89, v57);
                    v98 = v114;
                    static Logger.Application.getter();
                    v99 = Logger.logObject.getter();
                    v100 = static os_log_type_t.debug.getter();
                    if (os_log_type_enabled(v99, v100))
                    {
                      v101 = swift_slowAlloc();
                      v102 = swift_slowAlloc();
                      aBlock = v102;
                      *v101 = 136315138;
                      *(v101 + 4) = sub_100005D28(0xD000000000000041, 0x8000000100075790, &aBlock);
                      _os_log_impl(&_mh_execute_header, v99, v100, "[Interaction] %s preview", v101, 0xCu);
                      sub_100034948(v102);
                    }

                    (*(v121 + 8))(v98, v59);
                    v94 = v126;
                    v95 = v127;
                    sub_100054CE4(v97, 0, v82);
                    v96 = v128;
                    (*(v128 + 8))(v97, v57);
                  }

                  sub_10000A0F8(v107, v108);
                  sub_100005A04(v117, &qword_100093F50, &qword_100074090);
                  (*(v96 + 8))(v120, v57);
                  (*(v94 + 8))(v95, v129);
                }

                else
                {

                  sub_10000A0F8(v107, v108);
                  (*(v128 + 8))(v120, v57);
                  (*(v126 + 8))(v127, v129);
                }

                goto LABEL_39;
              }
            }

            else
            {

              sub_10000A774(&aBlock);
              v139 = 0u;
              v140 = 0u;
              v75 = v111;
            }
          }

          else
          {
            v139 = 0u;
            v140 = 0u;
          }

          sub_100005A04(&v139, &qword_100093498, &qword_100074430);
          v82 = 0;
          goto LABEL_29;
        }
      }

      else
      {

        sub_10000A774(&aBlock);
        v139 = 0u;
        v140 = 0u;
      }
    }

    else
    {

      v139 = 0u;
      v140 = 0u;
    }

    sub_100005A04(&v139, &qword_100093498, &qword_100074430);
  }

  return result;
}

uint64_t sub_100040334(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for Logger();
  v37 = *(v5 - 8);
  v38 = v5;
  __chkstk_darwin(v5);
  v36 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10000DB4C(&qword_100093F50, &qword_100074090);
  v8 = __chkstk_darwin(v7 - 8);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v34 - v11;
  v13 = type metadata accessor for URL();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = swift_projectBox();
  v40 = 0;
  v18 = *(v14 + 56);
  v18(v12, 1, 1, v13);
  v35 = a1;
  v19 = a2;
  URL.init(resolvingBookmarkData:options:relativeTo:bookmarkDataIsStale:)();
  sub_100005A04(v12, &qword_100093F50, &qword_100074090);
  URL.checkResourceIsReachable()();
  if (v20)
  {
    (*(v14 + 8))(v16, v13);
    v21 = v36;
    static Logger.Application.getter();
    v22 = v35;
    v23 = v19;
    sub_10000AEE8(v35, v19);
    swift_errorRetain();
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.error.getter();
    sub_10000A0F8(v22, v23);

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v39[0] = swift_slowAlloc();
      *v26 = 136315650;
      *(v26 + 4) = sub_100005D28(0xD000000000000017, 0x8000000100075770, v39);
      *(v26 + 12) = 2080;
      v27 = Data.description.getter();
      v29 = sub_100005D28(v27, v28, v39);

      *(v26 + 14) = v29;
      *(v26 + 22) = 2080;
      swift_getErrorValue();
      v30 = Error.localizedDescription.getter();
      v32 = sub_100005D28(v30, v31, v39);

      *(v26 + 24) = v32;
      _os_log_impl(&_mh_execute_header, v24, v25, "%s: Failed to create document URL from bookmark data or document is unreachable: %s, error: %s", v26, 0x20u);
      swift_arrayDestroy();
    }

    else
    {
    }

    return (*(v37 + 8))(v21, v38);
  }

  else
  {
    (*(v14 + 32))(v10, v16, v13);
    v18(v10, 0, 1, v13);
    swift_beginAccess();
    return sub_1000091C8(v10, v17);
  }
}

id sub_100040790(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.Application.getter();
  v8 = a1;
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.debug.getter();

  v11 = os_log_type_enabled(v9, v10);
  v23 = v8;
  if (v11)
  {
    v12 = swift_slowAlloc();
    v22 = v4;
    v13 = v12;
    v24 = swift_slowAlloc();
    *v13 = 136315394;
    *(v13 + 4) = sub_100005D28(0xD000000000000022, 0x8000000100075740, &v24);
    *(v13 + 12) = 2080;
    v14 = [v8 shortDescription];
    v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v16 = v2;
    v18 = v17;

    v19 = sub_100005D28(v15, v18, &v24);
    v2 = v16;

    *(v13 + 14) = v19;
    _os_log_impl(&_mh_execute_header, v9, v10, "%s: Restore concrete location: %s", v13, 0x16u);
    swift_arrayDestroy();

    (*(v5 + 8))(v7, v22);
  }

  else
  {

    (*(v5 + 8))(v7, v4);
  }

  result = *(v2 + OBJC_IVAR____TtC5Files20BrowserSceneDelegate_viewController);
  if (result)
  {
    return [result switchToLocation:v23];
  }

  return result;
}

void sub_1000409EC(void *a1, uint64_t a2, unint64_t a3)
{
  v4 = v3;
  v8 = type metadata accessor for Logger();
  v59 = *(v8 - 8);
  v9 = __chkstk_darwin(v8);
  v11 = &v56 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v56 - v12;
  static Logger.Application.getter();
  v14 = a1;

  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v58 = v11;
    v18 = v17;
    v19 = swift_slowAlloc();
    v56 = v4;
    v61 = v19;
    *v18 = 136315650;
    *(v18 + 4) = sub_100005D28(0xD000000000000031, 0x8000000100075700, &v61);
    v57 = v8;
    *(v18 + 12) = 2080;
    v60 = v14;
    type metadata accessor for DOCIntentLocationType(0);
    v20 = v14;
    v21 = String.init<A>(describing:)();
    v23 = a3;
    v24 = sub_100005D28(v21, v22, &v61);

    *(v18 + 14) = v24;
    a3 = v23;
    *(v18 + 22) = 2080;
    v25 = v59;
    v8 = v57;
    *(v18 + 24) = sub_100005D28(a2, a3, &v61);
    _os_log_impl(&_mh_execute_header, v15, v16, "%s: Restore semantic location type: %s ID: %s", v18, 0x20u);
    swift_arrayDestroy();
    v4 = v56;

    v11 = v58;

    v26 = v25;
  }

  else
  {

    v26 = v59;
  }

  v27 = *(v26 + 8);
  v27(v13, v8);
  v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v30 = v29;
  if (v28 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v30 == v31)
  {

LABEL_13:
    v39 = *(v4 + OBJC_IVAR____TtC5Files20BrowserSceneDelegate_viewController);
    if (v39)
    {
      [v39 switchToTab:0];
    }

    return;
  }

  v33 = v14;
  v34 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v34)
  {
    goto LABEL_13;
  }

  v35 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v37 = v36;
  if (v35 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v37 == v38)
  {

    goto LABEL_17;
  }

  v40 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v40)
  {
LABEL_17:
    v41 = *(v4 + OBJC_IVAR____TtC5Files20BrowserSceneDelegate_viewController);
    if (v41)
    {
      v42 = objc_opt_self();
      v43 = v41;
      v44 = [v42 sharedItemsLocation];
      [v43 switchToLocation:v44];
    }

    return;
  }

  v56 = a2;
  static Logger.Application.getter();
  v45 = v33;

  v46 = Logger.logObject.getter();
  v47 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v46, v47))
  {
    v48 = swift_slowAlloc();
    v58 = v11;
    v49 = v48;
    v61 = swift_slowAlloc();
    *v49 = 136315650;
    *(v49 + 4) = sub_100005D28(0xD000000000000031, 0x8000000100075700, &v61);
    v57 = v8;
    *(v49 + 12) = 2080;
    v60 = v45;
    type metadata accessor for DOCIntentLocationType(0);
    v50 = v45;
    v51 = String.init<A>(describing:)();
    v53 = sub_100005D28(v51, v52, &v61);

    *(v49 + 14) = v53;
    *(v49 + 22) = 2080;
    *(v49 + 24) = sub_100005D28(v56, a3, &v61);
    _os_log_impl(&_mh_execute_header, v46, v47, "%s: Unexpected location type: %s ID: %s", v49, 0x20u);
    swift_arrayDestroy();

    v54 = v58;
    v55 = v57;
  }

  else
  {

    v54 = v11;
    v55 = v8;
  }

  v27(v54, v55);
}

void sub_100040F98(uint64_t a1, unint64_t a2)
{
  v39 = type metadata accessor for Logger();
  v4 = *(v39 - 8);
  v5 = __chkstk_darwin(v39);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v5);
  v10 = &v35 - v9;
  __chkstk_darwin(v8);
  v12 = &v35 - v11;
  static Logger.Application.getter();

  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.debug.getter();

  v15 = os_log_type_enabled(v13, v14);
  v38 = v4;
  if (v15)
  {
    v16 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    *v16 = 136315394;
    *(v16 + 4) = sub_100005D28(0xD00000000000001ALL, 0x80000001000756E0, &v40);
    *(v16 + 12) = 2080;
    *(v16 + 14) = sub_100005D28(a1, a2, &v40);
    _os_log_impl(&_mh_execute_header, v13, v14, "%s: Tag ID: %s", v16, 0x16u);
    swift_arrayDestroy();
  }

  v17 = *(v4 + 8);
  v17(v12, v39);
  v18 = [objc_opt_self() sharedInstance];
  v19 = String._bridgeToObjectiveC()();
  v20 = [v18 tagForName:v19];

  if (v20)
  {
    static Logger.Application.getter();

    v21 = v20;
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v36 = v17;
      v26 = a1;
      v27 = v25;
      v40 = swift_slowAlloc();
      *v24 = 136315650;
      *(v24 + 4) = sub_100005D28(0xD00000000000001ALL, 0x80000001000756E0, &v40);
      *(v24 + 12) = 2112;
      *(v24 + 14) = v21;
      *v27 = v20;
      *(v24 + 22) = 2080;
      v28 = v21;
      *(v24 + 24) = sub_100005D28(v26, a2, &v40);
      _os_log_impl(&_mh_execute_header, v22, v23, "%s: Found tag: %@ using ID: %s", v24, 0x20u);
      sub_100005A04(v27, &qword_1000937D0, &unk_1000743F0);

      swift_arrayDestroy();

      v36(v10, v39);
    }

    else
    {

      v17(v10, v39);
    }

    v32 = [objc_allocWithZone(DOCConcreteLocation) initWithTaggedItemsSourceRepresentedTag:v21];
    v33 = *(v37 + OBJC_IVAR____TtC5Files20BrowserSceneDelegate_viewController);
    if (v33)
    {
      v34 = v33;
      [v34 switchToLocation:v32];
    }
  }

  else
  {
    static Logger.Application.getter();

    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      *v31 = 136315394;
      *(v31 + 4) = sub_100005D28(0xD00000000000001ALL, 0x80000001000756E0, &v40);
      *(v31 + 12) = 2080;
      *(v31 + 14) = sub_100005D28(a1, a2, &v40);
      _os_log_impl(&_mh_execute_header, v29, v30, "%s: Error! Can not find tag by ID: %s", v31, 0x16u);
      swift_arrayDestroy();
    }

    v17(v7, v39);
  }
}

void sub_100041580(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = *(Strong + OBJC_IVAR____TtC5Files20BrowserSceneDelegate_viewController);
    if (v6)
    {
      v7 = v6;
      URL._bridgeToObjectiveC()(v8);
      v10 = v9;
      v11 = swift_allocObject();
      *(v11 + 16) = a3;
      aBlock[4] = sub_1000522C0;
      aBlock[5] = v11;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1000526E0;
      aBlock[3] = &unk_10008ED58;
      v12 = _Block_copy(aBlock);
      swift_unknownObjectRetain();

      [v7 revealDocumentAtURL:v10 importIfNeeded:0 openDocument:0 revealContents:1 updateLastUsedDate:1 completion:v12];

      _Block_release(v12);
      v5 = v10;
    }
  }
}

uint64_t sub_1000416D4(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  result = __chkstk_darwin(v5);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    swift_errorRetain();
    static Logger.Application.getter();
    swift_errorRetain();
    swift_unknownObjectRetain();
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();
    swift_unknownObjectRelease();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v22 = v21;
      *v12 = 136315650;
      *(v12 + 4) = sub_100005D28(0xD000000000000018, 0x8000000100075B90, &v22);
      *(v12 + 12) = 2080;
      v13 = [a3 description];
      v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v16 = v15;

      v17 = sub_100005D28(v14, v16, &v22);

      *(v12 + 14) = v17;
      *(v12 + 22) = 2080;
      swift_getErrorValue();
      v18 = Error.localizedDescription.getter();
      v20 = sub_100005D28(v18, v19, &v22);

      *(v12 + 24) = v20;
      _os_log_impl(&_mh_execute_header, v10, v11, "%s: Failed to reveal folder for item: %s. Error: %s", v12, 0x20u);
      swift_arrayDestroy();
    }

    else
    {
    }

    return (*(v6 + 8))(v9, v5);
  }

  return result;
}

void *sub_10004196C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {

    swift_getObjectType();
    return sub_10004C708(a1, a2, a4, a5);
  }

  return result;
}

void sub_1000419F8(void *a1, uint64_t a2, unint64_t a3)
{
  v6 = [a1 sourceIdentifier];
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;
  if (v7 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v9 == v10)
  {

    goto LABEL_8;
  }

  v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v12)
  {

LABEL_8:
    v13 = &DOCIntentLocationTypeRecents;
LABEL_9:
    v14 = *v13;

    sub_1000409EC(v14, 0, 0xE000000000000000);
    return;
  }

  v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v17 = v16;
  if (v15 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v17 == v18)
  {

    goto LABEL_19;
  }

  v20 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v20)
  {

LABEL_19:
    v13 = &DOCIntentLocationTypeShared;
    goto LABEL_9;
  }

  v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v23 = v22;
  if (v21 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v23 == v24)
  {

    goto LABEL_24;
  }

  v25 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v25)
  {
LABEL_24:
    if (a3)
    {

      sub_100040F98(a2, a3);
    }

    return;
  }

  sub_100040790(a1);
}

uint64_t sub_100041C70(uint64_t a1, uint64_t a2, void *a3)
{
  v98 = a1;
  v5 = type metadata accessor for Logger();
  v95 = *(v5 - 8);
  v96 = v5;
  v6 = __chkstk_darwin(v5);
  v91 = &v86 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v9 = &v86 - v8;
  v10 = sub_10000DB4C(&qword_100093F50, &qword_100074090);
  v11 = __chkstk_darwin(v10 - 8);
  v13 = &v86 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v86 - v14;
  v16 = type metadata accessor for URL();
  v17 = *(v16 - 8);
  v18 = __chkstk_darwin(v16);
  v90 = &v86 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v18);
  v89 = &v86 - v21;
  v22 = __chkstk_darwin(v20);
  v97 = &v86 - v23;
  __chkstk_darwin(v22);
  v24 = *(v17 + 16);
  v99 = &v86 - v25;
  v88 = v17 + 16;
  v87 = v24;
  v24();
  v26 = *(v17 + 56);
  v94 = a2;
  v26(a2, 1, 1, v16);
  v92 = objc_opt_self();
  v27 = [v92 defaultManager];
  v93 = a3;
  URL._bridgeToObjectiveC()(v28);
  v30 = v29;
  v100 = 0;
  v31 = [v27 URLForDirectory:99 inDomain:1 appropriateForURL:v29 create:1 error:&v100];

  v32 = v100;
  if (!v31)
  {
    v94 = v17;
    v53 = v16;
    v54 = v100;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    static Logger.Application.getter();
    swift_errorRetain();
    v55 = Logger.logObject.getter();
    v56 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v55, v56))
    {
      v57 = swift_slowAlloc();
      v100 = swift_slowAlloc();
      *v57 = 136315394;
      *(v57 + 4) = sub_100005D28(0xD00000000000001FLL, 0x8000000100075AF0, &v100);
      *(v57 + 12) = 2080;
      swift_getErrorValue();
      v58 = Error.localizedDescription.getter();
      v60 = sub_100005D28(v58, v59, &v100);

      *(v57 + 14) = v60;
      _os_log_impl(&_mh_execute_header, v55, v56, "%s: could create temporary directory. Error: %s", v57, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
    }

    (*(v95 + 8))(v9, v96);
    v36 = v53;
    v37 = v94;
    goto LABEL_12;
  }

  static URL._unconditionallyBridgeFromObjectiveC(_:)();
  v33 = v32;

  v34 = v94;
  sub_100005A04(v94, &qword_100093F50, &qword_100074090);
  v26(v15, 0, 1, v16);
  sub_10000B2A8(v15, v34);
  sub_100034850(v34, v13, &qword_100093F50, &qword_100074090);
  result = (*(v17 + 48))(v13, 1, v16);
  if (result != 1)
  {
    v36 = v16;
    v37 = v17;
    v38 = v93;
    URL.lastPathComponent.getter();
    v39 = v97;
    URL.appendingPathComponent(_:)();

    v40 = v13;
    v41 = *(v37 + 8);
    v41(v40, v36);
    v42 = [v92 defaultManager];
    URL._bridgeToObjectiveC()(v43);
    v45 = v44;
    URL._bridgeToObjectiveC()(v46);
    v48 = v47;
    v100 = 0;
    v49 = [v42 moveItemAtURL:v45 toURL:v47 error:&v100];

    if (v49)
    {
      v50 = v100;
      v51 = v99;
      v41(v99, v36);
      (*(v37 + 32))(v51, v39, v36);
      v52 = v51;
      return (*(v37 + 32))(v98, v52, v36);
    }

    v92 = v41;
    v61 = v100;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    v62 = v91;
    static Logger.Application.getter();
    v63 = v89;
    v64 = v87;
    (v87)(v89, v38, v36);
    v65 = v90;
    (v64)(v90, v39, v36);
    swift_errorRetain();
    v66 = Logger.logObject.getter();
    v67 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v66, v67))
    {
      v68 = swift_slowAlloc();
      LODWORD(v88) = v67;
      v69 = v63;
      v70 = v68;
      v93 = swift_slowAlloc();
      v100 = v93;
      *v70 = 136315906;
      *(v70 + 4) = sub_100005D28(0xD00000000000001FLL, 0x8000000100075AF0, &v100);
      *(v70 + 12) = 2080;
      sub_10004DC20(&unk_1000937B0, &type metadata accessor for URL, &protocol conformance descriptor for URL);
      v94 = v37;
      v71 = v36;
      v72 = dispatch thunk of CustomStringConvertible.description.getter();
      v74 = v73;
      v75 = v69;
      v76 = v92;
      (v92)(v75, v36);
      v77 = sub_100005D28(v72, v74, &v100);

      *(v70 + 14) = v77;
      *(v70 + 22) = 2080;
      v78 = dispatch thunk of CustomStringConvertible.description.getter();
      v80 = v79;
      v76(v65, v71);
      v81 = sub_100005D28(v78, v80, &v100);

      *(v70 + 24) = v81;
      *(v70 + 32) = 2080;
      swift_getErrorValue();
      v82 = Error.localizedDescription.getter();
      v84 = sub_100005D28(v82, v83, &v100);

      *(v70 + 34) = v84;
      v36 = v71;
      v37 = v94;
      _os_log_impl(&_mh_execute_header, v66, v88, "%s: could not move file in at: %s to: %s. Error: %s", v70, 0x2Au);
      swift_arrayDestroy();

      (*(v95 + 8))(v91, v96);
      v76(v97, v36);
    }

    else
    {

      v85 = v92;
      (v92)(v65, v36);
      v85(v63, v36);
      (*(v95 + 8))(v62, v96);
      v85(v39, v36);
    }

LABEL_12:
    v52 = v99;
    return (*(v37 + 32))(v98, v52, v36);
  }

  __break(1u);
  return result;
}

id sub_100042640()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BrowserSceneDelegate();
  return objc_msgSendSuper2(&v2, "dealloc");
}

__n128 sub_10004271C(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_100042738(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 49))
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

uint64_t sub_100042780(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 49) = 1;
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

    *(result + 49) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 sub_1000427E0(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1000427F4(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 41))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100042814(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 41) = v3;
  return result;
}

uint64_t sub_10004285C()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10000DB4C(&qword_100093F50, &qword_100074090);
  __chkstk_darwin(v5 - 8);
  v7 = &v20 - v6;
  v8 = *(v0 + OBJC_IVAR____TtC5Files20BrowserSceneDelegate_viewController);
  if (!v8)
  {
    return 0;
  }

  v9 = OBJC_IVAR____TtC5Files21DRIMainViewController_currentQuickLookURL;
  swift_beginAccess();
  sub_100034850(v8 + v9, v7, &qword_100093F50, &qword_100074090);
  if ((*(v2 + 48))(v7, 1, v1))
  {
    v10 = v8;
    sub_100005A04(v7, &qword_100093F50, &qword_100074090);
    v11 = [v10 effectiveFullBrowser];
    v12 = DOCFullDocumentManagerViewController.topMostItemCollectionViewController.getter();

    if (v12)
    {
      v13 = DOCItemCollectionViewController.getCurrentLocation()();

      if (v13)
      {
        v14 = [v13 fileProviderItem];

        if (v14)
        {
          v15 = [v14 itemID];
          v16 = FPItemID.identifierString.getter();

          return v16;
        }
      }
    }

    return 0;
  }

  (*(v2 + 16))(v4, v7, v1);
  v18 = v8;
  sub_100005A04(v7, &qword_100093F50, &qword_100074090);
  v19 = URL.absoluteString.getter();

  (*(v2 + 8))(v4, v1);
  return v19;
}

uint64_t sub_100042B0C(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5, void *a6, void *a7)
{
  v36 = a6;
  v37 = a7;
  v34 = a4;
  v35 = a5;
  v39 = type metadata accessor for DispatchWorkItemFlags();
  v42 = *(v39 - 8);
  __chkstk_darwin(v39);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchQoS();
  v40 = *(v11 - 8);
  v41 = v11;
  __chkstk_darwin(v11);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10000DB4C(&qword_100093F50, &qword_100074090);
  v15 = *(v14 - 8);
  __chkstk_darwin(v14 - 8);
  v17 = &v33 - v16;
  sub_100002B84(0, &qword_100093A70, OS_dispatch_queue_ptr);
  v38 = static OS_dispatch_queue.main.getter();
  sub_100034850(a1, v17, &qword_100093F50, &qword_100074090);
  v18 = (*(v15 + 80) + 56) & ~*(v15 + 80);
  v19 = swift_allocObject();
  v21 = v34;
  v20 = v35;
  v19[2] = a3;
  v19[3] = v21;
  v23 = v36;
  v22 = v37;
  v19[4] = v20;
  v19[5] = v23;
  v19[6] = v22;
  sub_10000B2A8(v17, v19 + v18);
  aBlock[4] = sub_10004DBA8;
  aBlock[5] = v19;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100002DB0;
  aBlock[3] = &unk_10008E588;
  v24 = _Block_copy(aBlock);
  v25 = a3;
  v26 = v21;
  v27 = v20;
  v28 = v23;
  v29 = v22;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = &_swiftEmptyArrayStorage;
  sub_10004DC20(&unk_100093410, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10000DB4C(&unk_100093A80, &qword_1000736E0);
  sub_100002D44(&qword_100093420, &unk_100093A80, &qword_1000736E0, &protocol conformance descriptor for [A]);
  v30 = v39;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v31 = v38;
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v24);

  (*(v42 + 8))(v10, v30);
  return (*(v40 + 8))(v13, v41);
}

void sub_100042EE0(void *a1, char *a2, void *a3, void *a4, void *a5, uint64_t a6)
{
  v66 = a6;
  v61 = a4;
  v62 = a5;
  v60 = a3;
  v64 = sub_10000DB4C(&qword_100093F50, &qword_100074090);
  v8 = __chkstk_darwin(v64);
  v10 = &v58[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v8);
  v12 = &v58[-v11];
  v13 = type metadata accessor for Logger();
  v14 = *(v13 - 8);
  v15 = __chkstk_darwin(v13);
  v17 = &v58[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v15);
  v19 = &v58[-v18];
  v20 = OBJC_IVAR____TtC5Files21DRIMainViewController_currentQuickLookPreviewController;
  v67 = a2;
  v21 = *&a2[OBJC_IVAR____TtC5Files21DRIMainViewController_currentQuickLookPreviewController];
  if (!v21 || ![v21 currentPreviewItem])
  {
    goto LABEL_9;
  }

  v65 = v14;
  objc_opt_self();
  if (!swift_dynamicCastObjCClass())
  {
    swift_unknownObjectRelease();
    v14 = v65;
LABEL_9:
    static Logger.Application.getter();
    sub_100034850(v66, v12, &qword_100093F50, &qword_100074090);
    v45 = v67;
    v46 = v67;
    v47 = Logger.logObject.getter();
    v48 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      v65 = v14;
      v50 = v49;
      v69 = swift_slowAlloc();
      *v50 = 136315650;
      *(v50 + 4) = sub_100005D28(0xD000000000000021, 0x80000001000754D0, &v69);
      v63 = v13;
      *(v50 + 12) = 2080;
      v68 = [*&v45[v20] currentPreviewItem];
      sub_10000DB4C(&qword_100093AF0, &qword_1000743E8);
      v51 = String.init<A>(describing:)();
      v53 = sub_100005D28(v51, v52, &v69);

      *(v50 + 14) = v53;
      *(v50 + 22) = 2080;
      sub_100034850(v12, v10, &qword_100093F50, &qword_100074090);
      v54 = String.init<A>(describing:)();
      v56 = v55;
      sub_100005A04(v12, &qword_100093F50, &qword_100074090);
      v57 = sub_100005D28(v54, v56, &v69);

      *(v50 + 24) = v57;
      _os_log_impl(&_mh_execute_header, v47, v48, "[Interaction] 2.3 %s previewItem: %s not longer equal to currentPreviewItem: %s. Skipping update.", v50, 0x20u);
      swift_arrayDestroy();

      (*(v65 + 8))(v17, v63);
    }

    else
    {

      sub_100005A04(v12, &qword_100093F50, &qword_100074090);
      (*(v14 + 8))(v17, v13);
    }

    return;
  }

  sub_100002B84(0, &unk_100093AF8, QLItem_ptr);
  v22 = a1;
  v23 = static NSObject.== infix(_:_:)();
  swift_unknownObjectRelease();

  v14 = v65;
  if ((v23 & 1) == 0)
  {
    goto LABEL_9;
  }

  v63 = v13;
  static Logger.Application.getter();
  v24 = v22;
  v25 = v60;
  v26 = v61;
  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v60 = swift_slowAlloc();
    v61 = swift_slowAlloc();
    v69 = v61;
    *v29 = 136315906;
    *(v29 + 4) = sub_100005D28(0xD000000000000021, 0x80000001000754D0, &v69);
    *(v29 + 12) = 2080;
    v30 = v25;
    v64 = v25;
    v31 = v30;
    v59 = v28;
    v32 = [v30 description];
    v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v35 = v34;

    v36 = sub_100005D28(v33, v35, &v69);

    *(v29 + 14) = v36;
    *(v29 + 22) = 2080;
    v37 = v26;
    v38 = [v37 description];
    v39 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v41 = v40;

    v42 = sub_100005D28(v39, v41, &v69);

    *(v29 + 24) = v42;
    v25 = v64;
    *(v29 + 32) = 2112;
    *(v29 + 34) = v24;
    v43 = v60;
    *v60 = v24;
    v44 = v24;
    _os_log_impl(&_mh_execute_header, v27, v59, "[Interaction] 2.2 %s on: %s for QLVC: %s with previewItem: %@", v29, 0x2Au);
    sub_100005A04(v43, &qword_1000937D0, &unk_1000743F0);

    swift_arrayDestroy();
  }

  (*(v65 + 8))(v19, v63);
  sub_100008480(v66, v25, v67, v62);
}

uint64_t sub_100043580()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtC5Files20BrowserSceneDelegate_window;
  v7 = *&v0[OBJC_IVAR____TtC5Files20BrowserSceneDelegate_window];
  if (v7)
  {
    v8 = [v7 windowScene];
    if (v8)
    {
      v9 = v8;
      v10 = [v8 session];
      v11 = sub_10004CFD4();
      [v10 setStateRestorationActivity:v11];
    }
  }

  static Logger.Application.getter();
  v12 = v1;
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    *v15 = 136315394;
    *(v15 + 4) = sub_100005D28(0xD00000000000001DLL, 0x8000000100075470, &v26);
    *(v15 + 12) = 2080;
    v16 = *&v1[v6];
    if (v16 && (v17 = [v16 windowScene]) != 0)
    {
      v18 = v17;
      v19 = [v17 session];

      v20 = [v19 stateRestorationActivity];
    }

    else
    {
      v20 = 0;
    }

    v25 = v20;
    sub_10000DB4C(&qword_100093A20, &qword_1000743A8);
    v21 = String.init<A>(describing:)();
    v23 = sub_100005D28(v21, v22, &v26);

    *(v15 + 14) = v23;
    _os_log_impl(&_mh_execute_header, v13, v14, "[Interaction] %s to: %s", v15, 0x16u);
    swift_arrayDestroy();
  }

  return (*(v3 + 8))(v5, v2);
}

void sub_1000438AC(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v50 = a4;
  v51 = a3;
  v5 = type metadata accessor for Logger();
  *&v47 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = type metadata accessor for URL();
  v8 = *(v49 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v49);
  v48 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DOCUserActivityIdentifier();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = objc_opt_self();
  v52[0] = a1;
  sub_10000DB4C(&qword_100093BE0, &qword_100074438);
  v15 = Optional._bridgeToObjectiveC()();
  v52[0] = 0;
  v16 = [v14 archivedDataWithRootObject:v15 requiringSecureCoding:1 error:v52];
  swift_unknownObjectRelease();
  v17 = v52[0];
  if (v16)
  {
    v18 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v20 = v19;

    (*(v11 + 104))(v13, enum case for DOCUserActivityIdentifier.folderDrag(_:), v10);
    DOCUserActivityIdentifier.rawValue.getter();
    (*(v11 + 8))(v13, v10);
    v21 = objc_allocWithZone(NSUserActivity);
    v22 = String._bridgeToObjectiveC()();

    v23 = [v21 initWithActivityType:v22];

    sub_10000DB4C(&qword_100093A28, qword_100074AD0);
    inited = swift_initStackObject();
    v47 = xmmword_100073FE0;
    *(inited + 16) = xmmword_100073FE0;
    *(inited + 32) = DOCUserActivityDOCNodeKey.getter();
    *(inited + 40) = v25;
    sub_10004CDFC(inited);
    swift_setDeallocating();
    sub_10004DB44(inited + 32);
    isa = Set._bridgeToObjectiveC()().super.isa;

    [v23 setRequiredUserInfoKeys:isa];

    sub_10000DB4C(&qword_100093A30, &qword_1000743B0);
    v27 = swift_initStackObject();
    *(v27 + 16) = v47;
    v52[0] = DOCUserActivityDOCNodeKey.getter();
    v52[1] = v28;
    AnyHashable.init<A>(_:)();
    *(v27 + 96) = &type metadata for Data;
    v29 = v18;
    *(v27 + 72) = v18;
    *(v27 + 80) = v20;
    sub_10000AEE8(v18, v20);
    sub_10004CBBC(v27);
    swift_setDeallocating();
    sub_100005A04(v27 + 32, &qword_100093A38, &qword_1000743B8);
    v30 = Dictionary._bridgeToObjectiveC()().super.isa;

    [v23 addUserInfoEntriesFromDictionary:v30];

    v31 = v48;
    v32 = v49;
    (*(v8 + 16))(v48, v50, v49);
    v33 = (*(v8 + 80) + 32) & ~*(v8 + 80);
    v34 = swift_allocObject();
    v35 = v51;
    *(v34 + 16) = v23;
    *(v34 + 24) = v35;
    (*(v8 + 32))(v34 + v33, v31, v32);
    v36 = v23;
    v37 = v35;
    DOCRunInMainThread(_:)();
    sub_10000A0F8(v29, v20);
  }

  else
  {
    v38 = v17;
    v39 = v47;
    v40 = v5;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    static Logger.Application.getter();
    swift_errorRetain();
    v41 = Logger.logObject.getter();
    v42 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      v52[0] = swift_slowAlloc();
      *v43 = 136315394;
      *(v43 + 4) = sub_100005D28(0xD000000000000013, 0x80000001000758D0, v52);
      *(v43 + 12) = 2080;
      swift_getErrorValue();
      v44 = Error.localizedDescription.getter();
      v46 = sub_100005D28(v44, v45, v52);

      *(v43 + 14) = v46;
      _os_log_impl(&_mh_execute_header, v41, v42, "%s: Failed to encode FPItem in to data. Error: %s", v43, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
    }

    (*(v39 + 8))(v7, v40);
  }
}

void sub_100043FB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v9 = [objc_opt_self() sharedApplication];
  (*(v7 + 16))(aBlock - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), a3, v6);
  v10 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v11 = swift_allocObject();
  (*(v7 + 32))(v11 + v10, aBlock - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v6);
  aBlock[4] = sub_100052120;
  aBlock[5] = v11;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000639C4;
  aBlock[3] = &unk_10008EAB0;
  v12 = _Block_copy(aBlock);

  [v9 requestSceneSessionActivation:0 userActivity:a1 options:a2 errorHandler:v12];
  _Block_release(v12);
}

uint64_t sub_100044198(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for URL();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Logger();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.Application.getter();
  (*(v4 + 16))(v6, a2, v3);
  swift_errorRetain();
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v25 = v8;
    v14 = v13;
    v24 = swift_slowAlloc();
    v26 = v24;
    *v14 = 136315650;
    *(v14 + 4) = sub_100005D28(0xD000000000000013, 0x80000001000758D0, &v26);
    *(v14 + 12) = 2080;
    sub_10004DC20(&unk_1000937B0, &type metadata accessor for URL, &protocol conformance descriptor for URL);
    v15 = dispatch thunk of CustomStringConvertible.description.getter();
    v23 = v7;
    v17 = v16;
    (*(v4 + 8))(v6, v3);
    v18 = sub_100005D28(v15, v17, &v26);

    *(v14 + 14) = v18;
    *(v14 + 22) = 2080;
    swift_getErrorValue();
    v19 = Error.localizedDescription.getter();
    v21 = sub_100005D28(v19, v20, &v26);

    *(v14 + 24) = v21;
    _os_log_impl(&_mh_execute_header, v11, v12, "%s: Failed to create new scene for URL: %s Error: %s", v14, 0x20u);
    swift_arrayDestroy();

    return (*(v25 + 8))(v10, v23);
  }

  else
  {

    (*(v4 + 8))(v6, v3);
    return (*(v8 + 8))(v10, v7);
  }
}

void sub_100044510(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = [objc_opt_self() sharedApplication];
  v7 = swift_allocObject();
  *(v7 + 16) = a3;
  v10[4] = sub_100051E30;
  v10[5] = v7;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 1107296256;
  v10[2] = sub_1000639C4;
  v10[3] = &unk_10008E9C0;
  v8 = _Block_copy(v10);
  v9 = a3;

  [v6 requestSceneSessionActivation:0 userActivity:a1 options:a2 errorHandler:v8];
  _Block_release(v8);
}

uint64_t sub_10004462C(uint64_t a1, void *a2)
{
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.Application.getter();
  v7 = a2;
  swift_errorRetain();
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v20 = v19;
    *v10 = 136315650;
    *(v10 + 4) = sub_100005D28(0xD00000000000001BLL, 0x8000000100075890, &v20);
    *(v10 + 12) = 2112;
    *(v10 + 14) = v7;
    *v11 = v7;
    *(v10 + 22) = 2080;
    swift_getErrorValue();
    v18 = v3;
    v12 = v7;
    v13 = Error.localizedDescription.getter();
    v15 = sub_100005D28(v13, v14, &v20);

    *(v10 + 24) = v15;
    _os_log_impl(&_mh_execute_header, v8, v9, "%s: Failed to create new scene for Location: %@ Error: %s", v10, 0x20u);
    sub_100005A04(v11, &qword_1000937D0, &unk_1000743F0);

    swift_arrayDestroy();

    return (*(v4 + 8))(v6, v18);
  }

  else
  {

    return (*(v4 + 8))(v6, v3);
  }
}

void sub_1000448B4(void *a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  v9 = type metadata accessor for URL();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v31[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = type metadata accessor for Logger();
  v35 = *(v13 - 8);
  __chkstk_darwin(v13);
  v15 = &v31[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v17 = Strong;
    if (a1)
    {
      v18 = swift_allocObject();
      *(v18 + 16) = v17;
      *(v18 + 24) = a1;
      *(v18 + 32) = a4 & 1;
      v19 = a1;
      v20 = v17;
      DOCRunInMainThread(_:)();
    }

    else
    {
      static Logger.Application.getter();
      (*(v10 + 16))(v12, a5, v9);
      swift_errorRetain();
      v21 = Logger.logObject.getter();
      v22 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        v34 = swift_slowAlloc();
        v37 = v34;
        *v23 = 136315650;
        *(v23 + 4) = sub_100005D28(0xD000000000000027, 0x8000000100075590, &v37);
        *(v23 + 12) = 2080;
        sub_10004DC20(&unk_1000937B0, &type metadata accessor for URL, &protocol conformance descriptor for URL);
        v32 = v22;
        v24 = dispatch thunk of CustomStringConvertible.description.getter();
        v33 = v13;
        v26 = v25;
        (*(v10 + 8))(v12, v9);
        v27 = sub_100005D28(v24, v26, &v37);

        *(v23 + 14) = v27;
        *(v23 + 22) = 2080;
        v36 = a2;
        swift_errorRetain();
        sub_10000DB4C(&unk_100093B40, qword_100074410);
        v28 = String.init<A>(describing:)();
        v30 = sub_100005D28(v28, v29, &v37);

        *(v23 + 24) = v30;
        _os_log_impl(&_mh_execute_header, v21, v32, "%s item was nil for URL: %s error: %s", v23, 0x20u);
        swift_arrayDestroy();

        (*(v35 + 8))(v15, v33);
      }

      else
      {

        (*(v10 + 8))(v12, v9);
        (*(v35 + 8))(v15, v13);
      }
    }
  }
}

void sub_100044CDC(char *a1, char **a2, int a3)
{
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *&a1[OBJC_IVAR____TtC5Files20BrowserSceneDelegate_viewController];
  if (v11)
  {
    v47 = v11;
    v12 = [v47 effectiveFullBrowser];
    v13 = DOCFullDocumentManagerViewController.topMostItemCollectionViewController.getter();

    if (v13)
    {
      v14 = swift_allocObject();
      *(v14 + 16) = 0;
      v15 = dispatch thunk of DOCItemCollectionViewController.source.getter();
      v16 = dispatch thunk of DOCFileProviderSource.isSpotlightBacked.getter();

      v17 = [objc_opt_self() quickLookEntireFolderInWindow];
      v18 = [v17 isEnabled];

      if (!v18 || (v16 & 1) != 0)
      {
        v33 = swift_allocObject();
        *(v33 + 16) = v14;
        *(v33 + 24) = v13;
        *(v33 + 32) = a1;
        *(v33 + 40) = a2;
        *(v33 + 48) = a3 & 1;
        aBlock[4] = sub_100051644;
        aBlock[5] = v33;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_10004554C;
        aBlock[3] = &unk_10008E6C8;
        v34 = _Block_copy(aBlock);
        v35 = a2;
        v36 = a1;

        v37 = v13;

        [v37 getCellFor:v35 :v34];

        _Block_release(v34);
      }

      else
      {
        v45 = a3;
        v19 = dispatch thunk of DOCItemCollectionViewController.items.getter();
        v20 = v19;
        aBlock[0] = &_swiftEmptyArrayStorage;
        v21 = v19 & 0xFFFFFFFFFFFFFF8;
        if (v19 >> 62)
        {
LABEL_34:
          v22 = _CocoaArrayWrapper.endIndex.getter();
        }

        else
        {
          v22 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v43 = v14;
        v44 = v13;
        v46 = a2;
        if (v22)
        {
          v13 = 0;
          v14 = v20 & 0xC000000000000001;
          v23 = &_swiftEmptyArrayStorage;
          a2 = &off_100091000;
          do
          {
            v24 = v13;
            while (1)
            {
              if (v14)
              {
                v25 = specialized _ArrayBuffer._getElementSlowPath(_:)();
                v13 = (v24 + 1);
                if (__OFADD__(v24, 1))
                {
                  goto LABEL_32;
                }
              }

              else
              {
                if (v24 >= *(v21 + 16))
                {
                  goto LABEL_33;
                }

                v25 = *(v20 + 8 * v24 + 32);
                swift_unknownObjectRetain();
                v13 = (v24 + 1);
                if (__OFADD__(v24, 1))
                {
LABEL_32:
                  __break(1u);
LABEL_33:
                  __break(1u);
                  goto LABEL_34;
                }
              }

              if (![v25 isFolder])
              {
                break;
              }

              swift_unknownObjectRelease();
              ++v24;
              if (v13 == v22)
              {
                goto LABEL_29;
              }
            }

            specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
            if (*((aBlock[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((aBlock[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            }

            specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            v23 = aBlock[0];
          }

          while (v13 != v22);
        }

        else
        {
          v23 = &_swiftEmptyArrayStorage;
        }

LABEL_29:

        v38 = swift_allocObject();
        v39 = v46;
        *(v38 + 16) = v46;
        *(v38 + 24) = a1;
        *(v38 + 32) = v43;
        *(v38 + 40) = v45 & 1;
        v40 = v39;
        v41 = a1;

        sub_100051664(v23, sub_100051654, v38);

        v42 = v47;
      }
    }

    else
    {
      sub_10000DB4C(&qword_100093F90, &qword_100074650);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1000742D0;
      *(inited + 32) = a2;
      v32 = a2;
      sub_100050A8C(inited, a2, a3 & 1);

      swift_setDeallocating();
      swift_arrayDestroy();
    }
  }

  else
  {
    v26 = v8;
    static Logger.Application.getter();
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      aBlock[0] = v30;
      *v29 = 136315138;
      *(v29 + 4) = sub_100005D28(0xD000000000000027, 0x8000000100075590, aBlock);
      _os_log_impl(&_mh_execute_header, v27, v28, "%s: Unable to continue activity since main view controller not set, of search query string not is nil", v29, 0xCu);
      sub_100034948(v30);
    }

    (*(v7 + 8))(v10, v26);
  }
}

double sub_100045298(unint64_t a1, void *a2, void *a3, uint64_t a4, char a5)
{
  v9 = a1;
  if (a1 >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter() >= 1)
    {
      goto LABEL_3;
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 1)
  {
LABEL_3:

    goto LABEL_6;
  }

  sub_10000DB4C(&qword_100093F90, &qword_100074650);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1000742D0;
  *(v9 + 32) = a2;
  v10 = a2;
LABEL_6:
  v11 = swift_allocObject();
  *(v11 + 16) = a3;
  *(v11 + 24) = v9;
  *(v11 + 32) = a2;
  *(v11 + 40) = a4;
  *(v11 + 48) = a5 & 1;
  v12 = a2;
  v13 = a3;

  DOCRunInMainThread(_:)();

  return result;
}

void sub_1000453B4(uint64_t a1, unint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v5 = a5;
  swift_beginAccess();
  v9 = *(a4 + 16);
  sub_100050A8C(a2, a3, v5);
}

uint64_t sub_100045434(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, char a6)
{
  if (a1)
  {
    v9 = a1;
    v10 = DOCItemCollectionViewController.targetPreview(for:)();

    swift_beginAccess();
    v11 = *(a2 + 16);
    *(a2 + 16) = v10;
  }

  sub_10000DB4C(&qword_100093F90, &qword_100074650);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1000742D0;
  *(inited + 32) = a5;
  swift_beginAccess();
  v13 = *(a2 + 16);
  v14 = a5;
  sub_100050A8C(inited, a5, a6 & 1);

  swift_setDeallocating();
  return swift_arrayDestroy();
}

void sub_100045554(void *a1, NSObject *a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    swift_beginAccess();
    v12 = a1;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((*(a4 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a4 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    swift_endAccess();
  }

  else
  {
    static Logger.Application.getter();
    swift_unknownObjectRetain();
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v19[0] = swift_slowAlloc();
      *v15 = 136315394;
      *(v15 + 4) = sub_100005D28(0xD00000000000002ALL, 0x8000000100075610, v19);
      *(v15 + 12) = 2080;
      v19[3] = a3;
      swift_unknownObjectRetain();
      sub_10000DB4C(&unk_100093BB0, &qword_100074428);
      v16 = String.init<A>(describing:)();
      v18 = sub_100005D28(v16, v17, v19);

      *(v15 + 14) = v18;
      _os_log_impl(&_mh_execute_header, v13, v14, "%s failed to fetch item from node: %s", v15, 0x16u);
      swift_arrayDestroy();
    }

    (*(v9 + 8))(v11, v8);
  }

  dispatch_group_leave(a2);
}

uint64_t sub_1000457F8(uint64_t a1, void (*a2)(uint64_t), double a3)
{
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v20[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  Current = CFAbsoluteTimeGetCurrent();
  static Logger.Application.getter();

  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = Current - a3;
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v21[0] = v15;
    *v14 = 136315650;
    *(v14 + 4) = sub_100005D28(0xD00000000000002ALL, 0x8000000100075610, v21);
    *(v14 + 12) = 2048;
    swift_beginAccess();
    v16 = *(a1 + 16);
    if (v16 >> 62)
    {
      v17 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v17 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v14 + 14) = v17;

    *(v14 + 22) = 2048;
    *(v14 + 24) = v13;
    _os_log_impl(&_mh_execute_header, v11, v12, "%s finished preparing: %ld items. Took: %f", v14, 0x20u);
    sub_100034948(v15);
  }

  else
  {
  }

  (*(v7 + 8))(v9, v6);
  swift_beginAccess();

  a2(v18);
}

uint64_t sub_100045A64(uint64_t a1, void *a2)
{
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.Application.getter();
  v8 = a2;
  swift_errorRetain();
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v23 = v4;
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v26 = v22;
    *v11 = 136315650;
    *(v11 + 4) = sub_100005D28(0xD00000000000003BLL, 0x8000000100075640, &v26);
    *(v11 + 12) = 2112;
    *(v11 + 14) = v8;
    *v12 = v8;
    *(v11 + 22) = 2080;
    if (a1)
    {
      swift_getErrorValue();
      v13 = v8;
      v14 = Error.localizedDescription.getter();
    }

    else
    {
      v17 = v8;
      v14 = 0;
      v15 = 0;
    }

    v24 = v14;
    v25 = v15;
    sub_10000DB4C(&unk_100093A60, &unk_1000740C0);
    v18 = String.init<A>(describing:)();
    v20 = sub_100005D28(v18, v19, &v26);

    *(v11 + 24) = v20;
    _os_log_impl(&_mh_execute_header, v9, v10, "%s: Failed to create new scene for item: %@ Error: %s", v11, 0x20u);
    sub_100005A04(v12, &qword_1000937D0, &unk_1000743F0);

    swift_arrayDestroy();

    return (*(v5 + 8))(v7, v23);
  }

  else
  {

    return (*(v5 + 8))(v7, v4);
  }
}

void sub_100045D2C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

id sub_100045D9C()
{
  result = _DocumentManagerBundle();
  if (result)
  {
    v1 = result;
    v11._object = 0x8000000100075DF0;
    v2._countAndFlagsBits = 0x617A696C61636F4CLL;
    v2._object = 0xEB00000000656C62;
    v3._countAndFlagsBits = 0x636F44206E616353;
    v3._object = 0xEE0073746E656D75;
    v4._object = 0x8000000100075DC0;
    v11._countAndFlagsBits = 0xD00000000000004FLL;
    v4._countAndFlagsBits = 0xD000000000000023;
    DOCLocalizedString(_:tableName:bundle:value:comment:)(v4, v2, v1, v3, v11);

    v5 = String._bridgeToObjectiveC()();
    v6 = [objc_opt_self() iconWithSystemImageName:v5];

    v7 = objc_allocWithZone(UIApplicationShortcutItem);
    v8 = String._bridgeToObjectiveC()();
    v9 = String._bridgeToObjectiveC()();

    v10 = [v7 initWithType:v8 localizedTitle:v9 localizedSubtitle:0 icon:v6 userInfo:0];

    return v10;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_100045F40()
{
  result = _DocumentManagerBundle();
  if (result)
  {
    v1 = result;
    v11._object = 0x8000000100075D70;
    v2._countAndFlagsBits = 0x617A696C61636F4CLL;
    v2._object = 0xEB00000000656C62;
    v3._countAndFlagsBits = 0x686372616553;
    v4._countAndFlagsBits = 0xD000000000000025;
    v4._object = 0x8000000100075D40;
    v11._countAndFlagsBits = 0xD000000000000045;
    v3._object = 0xE600000000000000;
    DOCLocalizedString(_:tableName:bundle:value:comment:)(v4, v2, v1, v3, v11);

    v5 = String._bridgeToObjectiveC()();
    v6 = [objc_opt_self() iconWithSystemImageName:v5];

    v7 = objc_allocWithZone(UIApplicationShortcutItem);
    v8 = String._bridgeToObjectiveC()();
    v9 = String._bridgeToObjectiveC()();

    v10 = [v7 initWithType:v8 localizedTitle:v9 localizedSubtitle:0 icon:v6 userInfo:0];

    return v10;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1000460D8(void *a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = DOCFileProviderSource.appMenuIconPreferingSymbolImages.getter();
  v7 = [objc_opt_self() iconWithCustomImage:v6 isTemplate:0];
  v8 = sub_10004CCF8(&_swiftEmptyArrayStorage);
  v9 = [a1 identifier];
  v10 = [objc_allocWithZone(DOCConcreteLocation) initWithSourceIdentifier:v9 node:0];

  v11 = objc_opt_self();
  v43 = 0;
  v12 = [v11 archivedDataWithRootObject:v10 requiringSecureCoding:1 error:&v43];
  if (v12)
  {
    v13 = v12;
    v14 = v43;
    v15 = DOCUserActivityLocationKey.getter();
    v17 = v16;
    v18 = v13;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v43 = v8;
    sub_1000524E0(v18, v15, v17, isUniquelyReferenced_nonNull_native, &v43);
  }

  else
  {
    v42 = v7;
    v20 = v43;
    v21 = _convertNSErrorToError(_:)();

    v41 = v21;
    swift_willThrow();

    static Logger.Application.getter();
    v22 = a1;
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v39 = v3;
      v27 = v26;
      v28 = swift_slowAlloc();
      v40 = v6;
      v29 = v28;
      v43 = v28;
      *v25 = 136315394;
      *(v25 + 4) = sub_100005D28(0xD000000000000020, 0x8000000100075D10, &v43);
      *(v25 + 12) = 2112;
      *(v25 + 14) = v22;
      *v27 = v22;
      v30 = v22;
      _os_log_impl(&_mh_execute_header, v23, v24, "%s [App Shortcut] Failed to encode DOCConcreteLocation: %@", v25, 0x16u);
      sub_100005A04(v27, &qword_1000937D0, &unk_1000743F0);

      sub_100034948(v29);
      v6 = v40;

      (*(v39 + 8))(v5, v2);
    }

    else
    {

      (*(v3 + 8))(v5, v2);
    }

    v7 = v42;
  }

  v31 = [a1 displayName];
  v32 = objc_allocWithZone(UIApplicationShortcutItem);
  v33 = v7;
  v34 = String._bridgeToObjectiveC()();
  sub_10000DB4C(&qword_100093C08, &qword_100074460);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v36 = [v32 initWithType:v34 localizedTitle:v31 localizedSubtitle:0 icon:v33 userInfo:isa];

  return v36;
}

double sub_100046560(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = swift_allocObject();
  *(v10 + 16) = &_swiftEmptyArrayStorage;
  v11 = *(a3 + OBJC_IVAR____TtC5Files20BrowserSceneDelegate_viewController);
  if (v11)
  {
    v27 = v10;
    v12 = v11;
    static Logger.UI.getter();
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v26 = a1;
      v16 = v15;
      v17 = swift_slowAlloc();
      aBlock[0] = v17;
      *v16 = 136315138;
      *(v16 + 4) = sub_100005D28(0xD000000000000028, 0x8000000100075CE0, aBlock);
      _os_log_impl(&_mh_execute_header, v13, v14, "%s [App Shortcut] 3.1 Creating source observer", v16, 0xCu);
      sub_100034948(v17);

      a1 = v26;
    }

    (*(v7 + 8))(v9, v6);
    v18 = [v12 configuration];
    v19 = [v12 sourceObserver];
    v20 = swift_allocObject();
    v20[2] = v27;
    v20[3] = a1;
    v20[4] = a2;
    v21 = objc_allocWithZone(DOCSourceOrderObserver);
    aBlock[4] = sub_1000524C8;
    aBlock[5] = v20;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100047A04;
    aBlock[3] = &unk_10008EF60;
    v22 = _Block_copy(aBlock);

    v23 = [v21 initWithConfiguration:v18 sourceObserver:v19 updateBlock:v22];

    _Block_release(v22);

    v24 = *(a3 + OBJC_IVAR____TtC5Files20BrowserSceneDelegate_sourceOrderObserver);
    *(a3 + OBJC_IVAR____TtC5Files20BrowserSceneDelegate_sourceOrderObserver) = v23;
  }

  else
  {
  }

  return result;
}

double sub_1000468B8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v46 = a2;
  v47 = a4;
  v45 = a3;
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.Application.getter();
  v9 = a1;
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.debug.getter();

  v12 = &off_100091000;
  if (os_log_type_enabled(v10, v11))
  {
    v13 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    v48 = v44;
    *v13 = 136315650;
    *(v13 + 4) = sub_100005D28(0xD000000000000028, 0x8000000100075CE0, &v48);
    *(v13 + 12) = 2080;
    v14 = [v9 regularSources];
    v43 = v5;
    v15 = v14;
    sub_100002B84(0, &qword_100093880, DOCDocumentSource_ptr);
    static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v16 = Array.description.getter();
    v18 = v17;

    v19 = sub_100005D28(v16, v18, &v48);

    *(v13 + 14) = v19;
    *(v13 + 22) = 2080;
    v20 = [v9 sharedSources];
    static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v21 = Array.description.getter();
    v23 = v22;
    v12 = &off_100091000;

    v24 = sub_100005D28(v21, v23, &v48);

    *(v13 + 24) = v24;
    _os_log_impl(&_mh_execute_header, v10, v11, "%s [App Shortcut] 3.2. Ordered sources regularSources: %s sharedSources: %s", v13, 0x20u);
    swift_arrayDestroy();

    (*(v6 + 8))(v8, v43);
  }

  else
  {

    (*(v6 + 8))(v8, v5);
  }

  v25 = [v9 v12[459]];
  sub_100002B84(0, &qword_100093880, DOCDocumentSource_ptr);
  v26 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v48 = &_swiftEmptyArrayStorage;
  v27 = v26 & 0xFFFFFFFFFFFFFF8;
  if (v26 >> 62)
  {
    goto LABEL_40;
  }

  for (i = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
  {
    if (i)
    {
      v29 = 0;
      v30 = &_swiftEmptyArrayStorage;
      do
      {
        v31 = v29;
        while (1)
        {
          if ((v26 & 0xC000000000000001) != 0)
          {
            v32 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v31 >= *(v27 + 16))
            {
              goto LABEL_37;
            }

            v32 = *(v26 + 8 * v31 + 32);
          }

          v33 = v32;
          v29 = v31 + 1;
          if (__OFADD__(v31, 1))
          {
            __break(1u);
LABEL_37:
            __break(1u);
            goto LABEL_38;
          }

          type metadata accessor for DOCFileProviderSource();
          if (swift_dynamicCastClass())
          {
            break;
          }

          ++v31;
          if (v29 == i)
          {
            goto LABEL_22;
          }
        }

        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v48 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v48 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v30 = v48;
      }

      while (v29 != i);
    }

    else
    {
      v30 = &_swiftEmptyArrayStorage;
    }

LABEL_22:

    v48 = &_swiftEmptyArrayStorage;
    if (v30 >> 62)
    {
      break;
    }

    v26 = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v26)
    {
      goto LABEL_42;
    }

LABEL_24:
    v34 = 0;
    while (1)
    {
      if ((v30 & 0xC000000000000001) != 0)
      {
        v35 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v34 >= *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_39;
        }

        v35 = *(v30 + 8 * v34 + 32);
      }

      v36 = v35;
      v37 = v34 + 1;
      if (__OFADD__(v34, 1))
      {
        break;
      }

      if ((DOCDocumentSource.isEnabled.getter() & 1) != 0 && (v38 = DOCFileProviderSource.providerDomain.getter()) != 0)
      {

        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        v27 = *(v48 + 16);
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
      }

      else
      {
      }

      ++v34;
      if (v37 == v26)
      {
        v39 = v48;
        goto LABEL_43;
      }
    }

LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    ;
  }

  v26 = _CocoaArrayWrapper.endIndex.getter();
  if (v26)
  {
    goto LABEL_24;
  }

LABEL_42:
  v39 = &_swiftEmptyArrayStorage;
LABEL_43:

  v40 = swift_allocObject();
  v40[2] = v39;
  v41 = v45;
  v40[3] = v46;
  v40[4] = v41;
  v40[5] = v47;

  DOCRunInMainThread(_:)();

  return result;
}

void sub_100046E54(unint64_t a1, unint64_t a2, void (*a3)(void), char *a4)
{
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 >> 62)
  {
    goto LABEL_19;
  }

  v13 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (1)
  {
    v14 = &_swiftEmptyArrayStorage;
    v30 = v10;
    v31 = a4;
    v29 = v9;
    if (!v13)
    {
      break;
    }

    v33[0] = &_swiftEmptyArrayStorage;
    v9 = v33;
    v10 = specialized ContiguousArray.reserveCapacity(_:)();
    if (v13 < 0)
    {
      __break(1u);

      __break(1u);
      return;
    }

    v27[0] = v12;
    v27[1] = a2;
    v28 = a3;
    v12 = 0;
    a3 = (a1 & 0xC000000000000001);
    a2 = a1 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      a4 = (v12 + 1);
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (a3)
      {
        v15 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v12 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_18;
        }

        v15 = *(a1 + 8 * v12 + 32);
      }

      v16 = v15;
      v34 = v15;
      sub_10004723C(&v34, v32);

      v9 = v33;
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v10 = specialized ContiguousArray._endMutation()();
      ++v12;
      if (a4 == v13)
      {
        v14 = v33[0];
        a3 = v28;
        v12 = v27[0];
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    v26 = v10;
    v13 = _CocoaArrayWrapper.endIndex.getter();
    v10 = v26;
  }

LABEL_13:
  swift_beginAccess();
  sub_10004753C(v14);
  swift_endAccess();
  static Logger.Application.getter();

  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v33[0] = swift_slowAlloc();
    *v19 = 136315394;
    *(v19 + 4) = sub_100005D28(0xD000000000000028, 0x8000000100075CE0, v33);
    *(v19 + 12) = 2080;
    swift_beginAccess();
    sub_100002B84(0, &unk_100093C78, UIApplicationShortcutItem_ptr);

    v20 = Array.description.getter();
    v21 = v12;
    v23 = v22;

    v24 = sub_100005D28(v20, v23, v33);

    *(v19 + 14) = v24;
    _os_log_impl(&_mh_execute_header, v17, v18, "%s [App Shortcut] 3.4 Calling completion with %s", v19, 0x16u);
    swift_arrayDestroy();

    (v29[1])(v21, v30);
  }

  else
  {

    (v29[1])(v12, v30);
  }

  swift_beginAccess();

  a3(v25);
}

id sub_10004723C@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a1;
  static Logger.Application.getter();
  v10 = v9;
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v32 = v5;
    v14 = v13;
    v31 = swift_slowAlloc();
    v36 = v31;
    *v14 = 136315906;
    *(v14 + 4) = sub_100005D28(0xD000000000000028, 0x8000000100075CE0, &v36);
    *(v14 + 12) = 2080;
    v15 = [v10 displayName];
    v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v33 = a2;
    v34 = v2;
    v17 = v16;
    v19 = v18;

    v20 = sub_100005D28(v17, v19, &v36);

    *(v14 + 14) = v20;
    *(v14 + 22) = 2080;
    v21 = [v10 providerName];
    v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v24 = v23;

    v25 = sub_100005D28(v22, v24, &v36);
    a2 = v33;

    *(v14 + 24) = v25;
    *(v14 + 32) = 2080;
    v35 = DOCFileProviderSource.providerDomain.getter();
    sub_10000DB4C(&qword_100093C98, &qword_100074498);
    v26 = String.init<A>(describing:)();
    v28 = sub_100005D28(v26, v27, &v36);

    *(v14 + 34) = v28;
    _os_log_impl(&_mh_execute_header, v11, v12, "%s [App Shortcut] 3.3 Source %s providerName: %s providerDomain: %s", v14, 0x2Au);
    swift_arrayDestroy();

    (*(v6 + 8))(v8, v32);
  }

  else
  {

    (*(v6 + 8))(v8, v5);
  }

  result = sub_1000460D8(v10);
  *a2 = result;
  return result;
}

uint64_t sub_10004753C(unint64_t a1)
{
  if (a1 >> 62)
  {
    v3 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!(*v1 >> 62))
  {
    v4 = *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v5 = __OFADD__(v4, v3);
    result = v4 + v3;
    if (!v5)
    {
      goto LABEL_5;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v13 = _CocoaArrayWrapper.endIndex.getter();
  v5 = __OFADD__(v13, v3);
  result = v13 + v3;
  if (v5)
  {
    goto LABEL_13;
  }

LABEL_5:
  sub_10004B5D0(result, 1);
  v7 = *v1;
  v8 = *v1 & 0xFFFFFFFFFFFFFF8;
  sub_10004B6F8(v8 + 8 * *(v8 + 0x10) + 32, (*(v8 + 0x18) >> 1) - *(v8 + 0x10), a1);
  v10 = v9;

  if (v10 < v3)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v10 < 1)
  {
LABEL_9:
    *v1 = v7;
    return result;
  }

  v11 = *(v8 + 16);
  v5 = __OFADD__(v11, v10);
  v12 = v11 + v10;
  if (!v5)
  {
    *(v8 + 16) = v12;
    goto LABEL_9;
  }

LABEL_15:
  __break(1u);
  return result;
}

void sub_10004762C(uint64_t a1, uint64_t a2, void (*a3)(void), uint64_t a4, uint64_t a5)
{
  v7 = type metadata accessor for Logger();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();

  sub_10004753C(v11);
  swift_endAccess();
  static Logger.UI.getter();

  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v25 = v13;
    v15 = v14;
    v26 = swift_slowAlloc();
    v28[0] = v26;
    *v15 = 136315394;
    *(v15 + 4) = sub_100005D28(0xD000000000000015, 0x8000000100075CA0, v28);
    *(v15 + 12) = 2080;
    swift_beginAccess();
    v27 = a5;
    sub_100002B84(0, &unk_100093C78, UIApplicationShortcutItem_ptr);
    v16 = a3;

    v17 = Array.description.getter();
    v24 = v7;
    v19 = v18;

    v20 = v17;
    a3 = v16;
    v21 = sub_100005D28(v20, v19, v28);

    *(v15 + 14) = v21;
    a5 = v27;
    _os_log_impl(&_mh_execute_header, v12, v25, "%s [App Shortcut] 4. Calling completion with %s", v15, 0x16u);
    swift_arrayDestroy();

    (*(v8 + 8))(v10, v24);
  }

  else
  {

    (*(v8 + 8))(v10, v7);
  }

  swift_beginAccess();

  a3(v22);

  v23 = *(a5 + OBJC_IVAR____TtC5Files20BrowserSceneDelegate_sourceOrderObserver);
  *(a5 + OBJC_IVAR____TtC5Files20BrowserSceneDelegate_sourceOrderObserver) = 0;
}

uint64_t sub_100047930(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  sub_100002B84(0, &qword_100093BD0, DOCItemBookmark_ptr);
  v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  if (a3)
  {
    ObjectType = swift_getObjectType();
    *&v7 = a3;
    sub_100002B74(&v7, v9);
  }

  else
  {
    memset(v9, 0, sizeof(v9));
  }

  swift_unknownObjectRetain();
  v4(v5, v9);

  return sub_100005A04(v9, &qword_100093498, &qword_100074430);
}

void sub_100047A04(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

void *sub_100047ABC(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = &_swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_10000DB4C(&unk_100093C40, "&+");
  v10 = *(type metadata accessor for URL() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(type metadata accessor for URL() - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

char *sub_100047C94(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10000DB4C(&qword_100093B38, &qword_100074408);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

_BYTE **sub_100047DA0(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

uint64_t sub_100047DD8(unint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(unint64_t **, uint64_t))
{
  v6 = a4(a1, a2);
  v8 = sub_100005D28(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

char *sub_100047E34(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10000DB4C(&qword_100093A58, &unk_1000743D8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

void sub_100047F50(void **a1, void **a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = (a4)(a1, a2, a3);
  v7 = *a1;
  *v7 = v6;
  *a1 = v7 + 1;
  v8 = *a2;
  if (*a2)
  {
    *v8 = v6;
    *a2 = v8 + 1;
  }

  else
  {
  }
}

unint64_t sub_100047FC4(uint64_t a1)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v2 = Hasher._finalize()();

  return sub_100048058(a1, v2);
}

unint64_t sub_100048058(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v8 = v7;
      if (v6 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v8 == v9)
      {
        break;
      }

      v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v11 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

uint64_t sub_10004815C(Swift::Int *a1, Swift::Int a2, Swift::Int a3)
{
  v7 = *v3;
  Hasher.init(_seed:)();
  String.hash(into:)();
  v8 = Hasher._finalize()();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v16 = (*(v7 + 48) + 16 * v10);
    v17 = v16[1];
    *a1 = *v16;
    a1[1] = v17;

    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;

    sub_100048F60(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_1000482AC(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_10004DC20(&unk_100093B20, &type metadata accessor for URL, &protocol conformance descriptor for URL);
  v33 = a2;
  v11 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v12 = v10 + 56;
  v31 = v10 + 56;
  v32 = v10;
  v13 = -1 << *(v10 + 32);
  v14 = v11 & ~v13;
  if ((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v28 = v2;
    v29 = a1;
    v30 = ~v13;
    v27 = v7;
    v17 = *(v7 + 16);
    v16 = v7 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    v19 = (v16 - 8);
    v26[1] = v16 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v20 = v15;
      v15(v9, *(v32 + 48) + v18 * v14, v6);
      sub_10004DC20(&qword_100093F70, &type metadata accessor for URL, &protocol conformance descriptor for URL);
      v21 = dispatch thunk of static Equatable.== infix(_:_:)();
      v22 = *v19;
      (*v19)(v9, v6);
      if (v21)
      {
        break;
      }

      v14 = (v14 + 1) & v30;
      v15 = v20;
      if (((*(v31 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        v3 = v28;
        a1 = v29;
        v7 = v27;
        goto LABEL_7;
      }
    }

    v22(v33, v6);
    v20(v29, *(v32 + 48) + v18 * v14, v6);
    return 0;
  }

  else
  {
    v15 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = v33;
    v15(v9, v33, v6);
    v34 = *v3;
    sub_1000490E0(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

Swift::Int sub_10004858C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_10000DB4C(&qword_100093C30, &qword_100074470);
    v2 = static _SetStorage.convert(_:capacity:)();
    v15 = v2;
    __CocoaSet.makeIterator()();
    if (__CocoaSet.Iterator.next()())
    {
      sub_100002B84(0, &qword_100093C20, UIOpenURLContext_ptr);
      do
      {
        swift_dynamicCast();
        v9 = *(v2 + 16);
        if (*(v2 + 24) <= v9)
        {
          sub_10004877C(v9 + 1);
        }

        v2 = v15;
        result = NSObject._rawHashValue(seed:)(*(v15 + 40));
        v4 = v15 + 56;
        v5 = -1 << *(v15 + 32);
        v6 = result & ~v5;
        v7 = v6 >> 6;
        if (((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6))) != 0)
        {
          v8 = __clz(__rbit64((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v10 = 0;
          v11 = (63 - v5) >> 6;
          do
          {
            if (++v7 == v11 && (v10 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v12 = v7 == v11;
            if (v7 == v11)
            {
              v7 = 0;
            }

            v10 |= v12;
            v13 = *(v4 + 8 * v7);
          }

          while (v13 == -1);
          v8 = __clz(__rbit64(~v13)) + (v7 << 6);
        }

        *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
        *(*(v15 + 48) + 8 * v8) = v14;
        ++*(v15 + 16);
      }

      while (__CocoaSet.Iterator.next()());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return &_swiftEmptySetSingleton;
  }

  return v2;
}

void sub_10004877C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_10000DB4C(&qword_100093C30, &qword_100074470);
  v4 = static _SetStorage.resize(original:capacity:move:)();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = v4 + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v6 << 6)));
      v18 = NSObject._rawHashValue(seed:)(*(v5 + 40));
      v19 = -1 << *(v5 + 32);
      v20 = v18 & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v12 + 8 * v21);
          if (v25 != -1)
          {
            v13 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + 8 * v13) = v17;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v16 = v7[v6];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v26 = 1 << *(v3 + 32);
    if (v26 >= 64)
    {
      bzero((v3 + 56), ((v26 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v26;
    }

    *(v3 + 16) = 0;
  }

  *v2 = v5;
}

void sub_1000489A4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_10000DB4C(&qword_100093A48, &qword_1000743C8);
  v4 = static _SetStorage.resize(original:capacity:move:)();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = v4 + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = (*(v3 + 48) + 16 * (v15 | (v6 << 6)));
      v19 = *v18;
      v20 = v18[1];
      Hasher.init(_seed:)();
      String.hash(into:)();
      v21 = Hasher._finalize()();
      v22 = -1 << *(v5 + 32);
      v23 = v21 & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v12 + 8 * v24);
          if (v28 != -1)
          {
            v13 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v5 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v5 + 16);
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v17 = v7[v6];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v29 = 1 << *(v3 + 32);
    if (v29 >= 64)
    {
      bzero((v3 + 56), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v29;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
}

void sub_100048C04(uint64_t a1)
{
  v2 = v1;
  v37 = type metadata accessor for URL();
  v3 = *(v37 - 8);
  __chkstk_darwin(v37);
  v36 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  sub_10000DB4C(&qword_100093B30, &qword_100074400);
  v6 = static _SetStorage.resize(original:capacity:move:)();
  v7 = v6;
  if (*(v5 + 16))
  {
    v31 = v1;
    v32 = v5;
    v8 = 0;
    v9 = (v5 + 56);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v35 = v3 + 32;
    v14 = v6 + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v5 + 48) + *(v3 + 72) * (v16 | (v8 << 6));
      v20 = *(v3 + 32);
      v33 = *(v3 + 72);
      v34 = v20;
      v20(v36, v19, v37);
      sub_10004DC20(&unk_100093B20, &type metadata accessor for URL, &protocol conformance descriptor for URL);
      v21 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v22 = -1 << *(v7 + 32);
      v23 = v21 & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v34(*(v7 + 48) + v15 * v33, v36, v37);
      ++*(v7 + 16);
      v5 = v32;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    v29 = 1 << *(v5 + 32);
    if (v29 >= 64)
    {
      bzero(v9, ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    v2 = v31;
    *(v5 + 16) = 0;
  }

  *v2 = v7;
}

void sub_100048F60(Swift::Int result, Swift::Int a2, unint64_t a3, char a4)
{
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_1000489A4(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      sub_1000494D4();
      goto LABEL_16;
    }

    sub_100049868(v8 + 1);
  }

  v10 = *v4;
  Hasher.init(_seed:)();
  String.hash(into:)();
  v11 = Hasher._finalize()();
  v12 = -1 << *(v10 + 32);
  a3 = v11 & ~v12;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v13 = ~v12;
    do
    {
      v14 = (*(v10 + 48) + 16 * a3);
      v15 = *v14 == result && v14[1] == a2;
      if (v15 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v13;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v16 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v17 = (*(v16 + 48) + 16 * a3);
  *v17 = result;
  v17[1] = a2;
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    *(v16 + 16) = v20;
    return;
  }

  __break(1u);
LABEL_19:
  ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

uint64_t sub_1000490E0(uint64_t a1, unint64_t a2, char a3)
{
  v31 = a1;
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*v3 + 16);
  v11 = *(*v3 + 24);
  v28 = v3;
  v29 = v7;
  if (v11 > v10 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_100048C04(v10 + 1);
  }

  else
  {
    if (v11 > v10)
    {
      sub_100049630();
      goto LABEL_12;
    }

    sub_100049AA0(v10 + 1);
  }

  v12 = *v3;
  sub_10004DC20(&unk_100093B20, &type metadata accessor for URL, &protocol conformance descriptor for URL);
  v13 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v14 = v12 + 56;
  v30 = v12;
  v15 = -1 << *(v12 + 32);
  a2 = v13 & ~v15;
  if ((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v16 = ~v15;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    do
    {
      v17(v9, *(v30 + 48) + v20 * a2, v6);
      sub_10004DC20(&qword_100093F70, &type metadata accessor for URL, &protocol conformance descriptor for URL);
      v21 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v18 - 8))(v9, v6);
      if (v21)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v16;
    }

    while (((*(v14 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v22 = v29;
  v23 = *v28;
  *(v23 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v22 + 32))(*(v23 + 48) + *(v22 + 72) * a2, v31, v6);
  v25 = *(v23 + 16);
  v26 = __OFADD__(v25, 1);
  v27 = v25 + 1;
  if (!v26)
  {
    *(v23 + 16) = v27;
    return result;
  }

  __break(1u);
LABEL_15:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void sub_100049384()
{
  v1 = v0;
  sub_10000DB4C(&qword_100093C30, &qword_100074470);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 56 + 8 * v6)
    {
      memmove(v5, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        v19 = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }
}

void sub_1000494D4()
{
  v1 = v0;
  sub_10000DB4C(&qword_100093A48, &qword_1000743C8);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 56 + 8 * v6)
    {
      memmove(v5, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }
}

void sub_100049630()
{
  v1 = v0;
  v2 = type metadata accessor for URL();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000DB4C(&qword_100093B30, &qword_100074400);
  v6 = *v0;
  v7 = static _SetStorage.copy(original:)();
  v8 = v7;
  if (*(v6 + 16))
  {
    v22 = v1;
    v9 = (v7 + 56);
    v10 = v6 + 56;
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || v9 >= v10 + 8 * v11)
    {
      memmove(v9, (v6 + 56), 8 * v11);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v6 + 56);
    v16 = (v13 + 63) >> 6;
    v23 = v3 + 32;
    v24 = v3 + 16;
    while (v15)
    {
      v17 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_14:
      v20 = *(v3 + 72) * (v17 | (v12 << 6));
      (*(v3 + 16))(v5, *(v6 + 48) + v20, v2);
      (*(v3 + 32))(*(v8 + 48) + v20, v5, v2);
    }

    v18 = v12;
    while (1)
    {
      v12 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v12 >= v16)
      {

        v1 = v22;
        goto LABEL_18;
      }

      v19 = *(v10 + 8 * v12);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v8;
  }
}

void sub_100049868(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_10000DB4C(&qword_100093A48, &qword_1000743C8);
  v4 = static _SetStorage.resize(original:capacity:move:)();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = v4 + 56;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = (*(v3 + 48) + 16 * (v14 | (v6 << 6)));
      v18 = *v17;
      v19 = v17[1];
      Hasher.init(_seed:)();

      String.hash(into:)();
      v20 = Hasher._finalize()();
      v21 = -1 << *(v5 + 32);
      v22 = v20 & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v11 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v11 + 8 * v23);
          if (v27 != -1)
          {
            v12 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v22) & ~*(v11 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v5 + 48) + 16 * v12);
      *v13 = v18;
      v13[1] = v19;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v16 = *(v3 + 56 + 8 * v6);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }
}

void sub_100049AA0(uint64_t a1)
{
  v2 = v1;
  v34 = type metadata accessor for URL();
  v3 = *(v34 - 8);
  __chkstk_darwin(v34);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  sub_10000DB4C(&qword_100093B30, &qword_100074400);
  v7 = static _SetStorage.resize(original:capacity:move:)();
  v8 = v6;
  if (*(v6 + 16))
  {
    v29 = v1;
    v9 = 0;
    v10 = v6 + 56;
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 56);
    v14 = (v11 + 63) >> 6;
    v32 = v3 + 16;
    v33 = v3;
    v15 = v7 + 56;
    v30 = (v3 + 32);
    v31 = v8;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(v33 + 72);
      (*(v33 + 16))(v5, *(v8 + 48) + v20 * (v17 | (v9 << 6)), v34);
      sub_10004DC20(&unk_100093B20, &type metadata accessor for URL, &protocol conformance descriptor for URL);
      v21 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v22 = -1 << *(v7 + 32);
      v23 = v21 & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v15 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v15 + 8 * v24);
          if (v28 != -1)
          {
            v16 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v16 = __clz(__rbit64((-1 << v23) & ~*(v15 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      (*v30)(*(v7 + 48) + v16 * v20, v5, v34);
      ++*(v7 + 16);
      v8 = v31;
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v2 = v29;
        goto LABEL_26;
      }

      v19 = *(v10 + 8 * v9);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v7;
  }
}

void sub_100049DBC(uint64_t a1)
{
  if ((*v1 & 0xC000000000000001) != 0)
  {
    if (!__CocoaSet.count.getter())
    {
      return;
    }
  }

  else if (!*(*v1 + 16))
  {
    return;
  }

  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    sub_100002B84(0, &qword_100093C20, UIOpenURLContext_ptr);
    sub_100003A30(&qword_100093C28, &qword_100093C20, UIOpenURLContext_ptr);
    Set.Iterator.init(_cocoa:)();
    a1 = v18;
    v3 = v19;
    v4 = v20;
    v5 = v21;
    v6 = v22;
  }

  else
  {
    v7 = -1 << *(a1 + 32);
    v3 = a1 + 56;
    v4 = ~v7;
    v8 = -v7;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v6 = v9 & *(a1 + 56);

    v5 = 0;
  }

  v10 = (v4 + 64) >> 6;
  if (a1 < 0)
  {
    goto LABEL_18;
  }

  while (1)
  {
    v11 = v5;
    v12 = v6;
    v13 = v5;
    if (!v6)
    {
      break;
    }

LABEL_16:
    v14 = (v12 - 1) & v12;
    v15 = *(*(a1 + 48) + ((v13 << 9) | (8 * __clz(__rbit64(v12)))));
    if (!v15)
    {
LABEL_22:
      sub_100052240(a1);
      return;
    }

    while (1)
    {
      v16 = sub_10004A68C(v15);

      v5 = v13;
      v6 = v14;
      if ((a1 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_18:
      if (__CocoaSet.Iterator.next()())
      {
        sub_100002B84(0, &qword_100093C20, UIOpenURLContext_ptr);
        swift_dynamicCast();
        v15 = v17;
        v13 = v5;
        v14 = v6;
        if (v17)
        {
          continue;
        }
      }

      goto LABEL_22;
    }
  }

  while (1)
  {
    v13 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v13 >= v10)
    {
      goto LABEL_22;
    }

    v12 = *(v3 + 8 * v13);
    ++v11;
    if (v12)
    {
      goto LABEL_16;
    }
  }

  __break(1u);
}

void *sub_100049FF4(uint64_t a1, void *a2)
{
  v3 = a2;
  if (!a2[2])
  {

    return &_swiftEmptySetSingleton;
  }

  v4 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    sub_100002B84(0, &qword_100093C20, UIOpenURLContext_ptr);
    sub_100003A30(&qword_100093C28, &qword_100093C20, UIOpenURLContext_ptr);
    Set.Iterator.init(_cocoa:)();
    v4 = v79;
    v6 = v80;
    v7 = v81;
    v8 = v82;
    v9 = v83;
  }

  else
  {
    v10 = -1 << *(a1 + 32);
    v6 = a1 + 56;
    v7 = ~v10;
    v11 = -v10;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v9 = v12 & *(a1 + 56);

    v8 = 0;
  }

  v74 = v4;
  v75 = v6;
  v76 = v7;
  v77 = v8;
  v65 = v7;
  v13 = (v7 + 64) >> 6;
  v71 = v3 + 7;
  v78 = v9;
  v68 = v6;
  v69 = v4;
  for (i = v13; ; v13 = i)
  {
    if (v4 < 0)
    {
      v21 = __CocoaSet.Iterator.next()();
      if (!v21)
      {
        goto LABEL_65;
      }

      v72 = v21;
      sub_100002B84(0, &qword_100093C20, UIOpenURLContext_ptr);
      swift_dynamicCast();
      v19 = v73;
      v17 = v8;
      v2 = v9;
      if (!v73)
      {
        goto LABEL_65;
      }
    }

    else
    {
      v14 = v9;
      v15 = v8;
      if (v9)
      {
LABEL_20:
        v2 = (v14 - 1) & v14;
        v19 = *(*(v4 + 48) + ((v15 << 9) | (8 * __clz(__rbit64(v14)))));
        v20 = v19;
        v17 = v15;
      }

      else
      {
        if (v13 <= (v8 + 1))
        {
          v16 = v8 + 1;
        }

        else
        {
          v16 = v13;
        }

        v17 = v16 - 1;
        v18 = v8;
        while (1)
        {
          v15 = v18 + 1;
          if (__OFADD__(v18, 1))
          {
            goto LABEL_67;
          }

          if (v15 >= v13)
          {
            break;
          }

          v14 = *(v6 + 8 * v15);
          ++v18;
          if (v14)
          {
            goto LABEL_20;
          }
        }

        v19 = 0;
        v2 = 0;
      }

      v74 = v4;
      v75 = v6;
      v76 = v65;
      v77 = v17;
      v78 = v2;
      if (!v19)
      {
LABEL_65:
        v54 = v4;
        goto LABEL_63;
      }
    }

    v22 = v19;
    v23 = NSObject._rawHashValue(seed:)(v3[5]);
    v24 = -1 << *(v3 + 32);
    v8 = v23 & ~v24;
    v4 = v8 >> 6;
    v15 = 1 << v8;
    if (((1 << v8) & v71[v8 >> 6]) != 0)
    {
      break;
    }

LABEL_10:

    v8 = v17;
    v9 = v2;
    v6 = v68;
    v4 = v69;
  }

  v25 = ~v24;
  v26 = sub_100002B84(0, &qword_100093C20, UIOpenURLContext_ptr);
  v27 = *(v3[6] + 8 * v8);
  v70 = v26;
  while (1)
  {
    v28 = static NSObject.== infix(_:_:)();

    if (v28)
    {
      break;
    }

    v8 = (v8 + 1) & v25;
    v4 = v8 >> 6;
    v15 = 1 << v8;
    if (((1 << v8) & v71[v8 >> 6]) == 0)
    {
      goto LABEL_10;
    }

    v27 = *(v3[6] + 8 * v8);
  }

  v30 = *(v3 + 32);
  v62 = ((1 << v30) + 63) >> 6;
  v5 = 8 * v62;
  if ((v30 & 0x3Fu) > 0xD)
  {
    goto LABEL_68;
  }

  while (2)
  {
    v63 = &v61;
    __chkstk_darwin(v29);
    v32 = &v61 - ((v31 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v32, v71, v31);
    v33 = *&v32[8 * v4] & ~v15;
    v34 = v3[2];
    v64 = v32;
    *&v32[8 * v4] = v33;
    v4 = v34 - 1;
    v36 = v68;
    v35 = v69;
    v37 = i;
LABEL_33:
    v66 = v4;
    while (v35 < 0)
    {
      v38 = __CocoaSet.Iterator.next()();
      if (!v38)
      {
        goto LABEL_61;
      }

      v72 = v38;
      swift_dynamicCast();
      v39 = v73;
      if (!v73)
      {
        goto LABEL_61;
      }

LABEL_50:
      v44 = NSObject._rawHashValue(seed:)(v3[5]);
      v45 = v3;
      v46 = -1 << *(v3 + 32);
      v47 = v44 & ~v46;
      v48 = v47 >> 6;
      v49 = 1 << v47;
      if (((1 << v47) & v71[v47 >> 6]) != 0)
      {
        v50 = ~v46;
        while (1)
        {
          v8 = *(v45[6] + 8 * v47);
          v51 = static NSObject.== infix(_:_:)();

          if (v51)
          {
            break;
          }

          v47 = (v47 + 1) & v50;
          v48 = v47 >> 6;
          v49 = 1 << v47;
          if (((1 << v47) & v71[v47 >> 6]) == 0)
          {
            goto LABEL_34;
          }
        }

        v52 = v64[v48];
        v64[v48] = v52 & ~v49;
        v53 = (v52 & v49) == 0;
        v3 = v45;
        v36 = v68;
        v35 = v69;
        v4 = v66;
        v37 = i;
        if (!v53)
        {
          v4 = v66 - 1;
          if (__OFSUB__(v66, 1))
          {
            __break(1u);
          }

          if (v66 == 1)
          {

            v3 = &_swiftEmptySetSingleton;
            goto LABEL_62;
          }

          goto LABEL_33;
        }
      }

      else
      {
LABEL_34:

        v3 = v45;
        v36 = v68;
        v35 = v69;
        v4 = v66;
        v37 = i;
      }
    }

    if (v2)
    {
      v15 = v17;
LABEL_48:
      v42 = __clz(__rbit64(v2));
      v2 &= v2 - 1;
      v39 = *(*(v35 + 48) + ((v15 << 9) | (8 * v42)));
      v43 = v39;
      v41 = v15;
LABEL_49:
      v74 = v35;
      v75 = v36;
      v76 = v65;
      v77 = v41;
      v17 = v41;
      v78 = v2;
      if (!v39)
      {
LABEL_61:
        v3 = sub_10004AAC0(v64, v62, v4, v3);
        goto LABEL_62;
      }

      goto LABEL_50;
    }

    if (v37 <= (v17 + 1))
    {
      v40 = v17 + 1;
    }

    else
    {
      v40 = v37;
    }

    v41 = v40 - 1;
    while (1)
    {
      v15 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v15 >= v37)
      {
        v39 = 0;
        v2 = 0;
        goto LABEL_49;
      }

      v2 = *(v36 + 8 * v15);
      ++v17;
      if (v2)
      {
        goto LABEL_48;
      }
    }

    __break(1u);
LABEL_67:
    __break(1u);
LABEL_68:
    v56 = v5;

    v57 = v56;
    if (swift_stdlib_isStackAllocationSafe())
    {

      continue;
    }

    break;
  }

  v58 = swift_slowAlloc();
  memcpy(v58, v71, v57);
  sub_10004A824(v58, v62, v3, v8, &v74);
  v60 = v59;

  v3 = v60;
LABEL_62:
  v54 = v74;
LABEL_63:
  sub_100052240(v54);
  return v3;
}

uint64_t sub_10004A68C(void *a1)
{
  v3 = *v1;
  if ((*v1 & 0xC000000000000001) != 0)
  {
    if (v3 < 0)
    {
      v4 = *v1;
    }

    else
    {
      v4 = v3 & 0xFFFFFFFFFFFFFF8;
    }

    v5 = a1;
    v6 = __CocoaSet.contains(_:)();

    if (v6)
    {
      v7 = sub_10004ACB4(v4, v5);

      return v7;
    }

    return 0;
  }

  v9 = v1;
  sub_100002B84(0, &qword_100093C20, UIOpenURLContext_ptr);
  v10 = NSObject._rawHashValue(seed:)(*(v3 + 40));
  v11 = -1 << *(v3 + 32);
  v12 = v10 & ~v11;
  if (((*(v3 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
  {
    return 0;
  }

  v13 = ~v11;
  while (1)
  {
    v14 = *(*(v3 + 48) + 8 * v12);
    v15 = static NSObject.== infix(_:_:)();

    if (v15)
    {
      break;
    }

    v12 = (v12 + 1) & v13;
    if (((*(v3 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v17 = *v9;
  v19 = *v9;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_100049384();
    v17 = v19;
  }

  v18 = *(*(v17 + 48) + 8 * v12);
  sub_10004AE1C(v12);
  result = v18;
  *v9 = v19;
  return result;
}

void sub_10004A824(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v5 = a5;
  v7 = *(a3 + 16);
  *(a1 + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v8 = v7 - 1;
  v33 = a3 + 56;
  while (2)
  {
    v30 = v8;
    do
    {
      while (1)
      {
        if ((*v5 & 0x8000000000000000) != 0)
        {
          if (!__CocoaSet.Iterator.next()())
          {
            goto LABEL_30;
          }

          sub_100002B84(0, &qword_100093C20, UIOpenURLContext_ptr);
          swift_dynamicCast();
          v12 = v34;
          if (!v34)
          {
            goto LABEL_30;
          }
        }

        else
        {
          v9 = v5[3];
          v10 = v5[4];
          if (!v10)
          {
            v13 = (v5[2] + 64) >> 6;
            if (v13 <= v9 + 1)
            {
              v14 = v9 + 1;
            }

            else
            {
              v14 = (v5[2] + 64) >> 6;
            }

            v15 = v14 - 1;
            while (1)
            {
              v11 = v9 + 1;
              if (__OFADD__(v9, 1))
              {
                break;
              }

              if (v11 >= v13)
              {
                v12 = 0;
                v16 = 0;
                goto LABEL_18;
              }

              v10 = *(v5[1] + 8 * v11);
              ++v9;
              if (v10)
              {
                goto LABEL_17;
              }
            }

            __break(1u);
            goto LABEL_32;
          }

          v11 = v5[3];
LABEL_17:
          v16 = (v10 - 1) & v10;
          v12 = *(*(*v5 + 48) + ((v11 << 9) | (8 * __clz(__rbit64(v10)))));
          v17 = v12;
          v15 = v11;
LABEL_18:
          v5[3] = v15;
          v5[4] = v16;
          if (!v12)
          {
LABEL_30:

            sub_10004AAC0(a1, a2, v30, a3);
            return;
          }
        }

        v18 = NSObject._rawHashValue(seed:)(*(a3 + 40));
        v19 = -1 << *(a3 + 32);
        v20 = v18 & ~v19;
        v21 = v20 >> 6;
        v22 = 1 << v20;
        if (((1 << v20) & *(v33 + 8 * (v20 >> 6))) == 0)
        {
          goto LABEL_3;
        }

        sub_100002B84(0, &qword_100093C20, UIOpenURLContext_ptr);
        v23 = *(*(a3 + 48) + 8 * v20);
        v24 = static NSObject.== infix(_:_:)();

        if (v24)
        {
          break;
        }

        v25 = ~v19;
        while (1)
        {
          v20 = (v20 + 1) & v25;
          v21 = v20 >> 6;
          v22 = 1 << v20;
          if (((1 << v20) & *(v33 + 8 * (v20 >> 6))) == 0)
          {
            break;
          }

          v26 = *(*(a3 + 48) + 8 * v20);
          v27 = static NSObject.== infix(_:_:)();

          if (v27)
          {
            goto LABEL_24;
          }
        }

LABEL_3:

        v5 = a5;
      }

LABEL_24:

      v28 = a1[v21];
      a1[v21] = v28 & ~v22;
      v5 = a5;
    }

    while ((v28 & v22) == 0);
    v8 = v30 - 1;
    if (__OFSUB__(v30, 1))
    {
LABEL_32:
      __break(1u);
      return;
    }

    if (v30 != 1)
    {
      continue;
    }

    break;
  }
}

Swift::Int sub_10004AAC0(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = &_swiftEmptySetSingleton;
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  sub_10000DB4C(&qword_100093C30, &qword_100074470);
  result = static _SetStorage.allocate(capacity:)();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = v9[5];
    v17 = *(*(v4 + 48) + 8 * (v13 | (v11 << 6)));
    result = NSObject._rawHashValue(seed:)(v16);
    v18 = -1 << *(v9 + 32);
    v19 = result & ~v18;
    v20 = v19 >> 6;
    if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
    {
      v22 = 0;
      v23 = (63 - v18) >> 6;
      while (++v20 != v23 || (v22 & 1) == 0)
      {
        v24 = v20 == v23;
        if (v20 == v23)
        {
          v20 = 0;
        }

        v22 |= v24;
        v25 = *(v12 + 8 * v20);
        if (v25 != -1)
        {
          v21 = __clz(__rbit64(~v25)) + (v20 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v21 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
    *(v9[6] + 8 * v21) = v17;
    ++v9[2];
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_10004ACB4(uint64_t a1, uint64_t a2)
{
  v3 = v2;

  v4 = __CocoaSet.count.getter();
  v5 = swift_unknownObjectRetain();
  v6 = sub_10004858C(v5, v4);
  v16 = v6;
  v7 = *(v6 + 40);

  v8 = NSObject._rawHashValue(seed:)(v7);
  v9 = -1 << *(v6 + 32);
  v10 = v8 & ~v9;
  if ((*(v6 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    sub_100002B84(0, &qword_100093C20, UIOpenURLContext_ptr);
    while (1)
    {
      v12 = *(*(v6 + 48) + 8 * v10);
      v13 = static NSObject.== infix(_:_:)();

      if (v13)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v6 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:

    __break(1u);
  }

  v14 = *(*(v6 + 48) + 8 * v10);
  sub_10004AE1C(v10);
  result = static NSObject.== infix(_:_:)();
  if (result)
  {
    *v3 = v16;
    return v14;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_10004AE1C(unint64_t a1)
{
  v2 = a1;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (a1 + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = _HashTable.previousHole(before:)();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        v10 = *(v3 + 40);
        v11 = *(*(v3 + 48) + 8 * v6);
        v12 = NSObject._rawHashValue(seed:)(v10);

        v13 = v12 & v7;
        if (v2 >= v9)
        {
          if (v13 >= v9 && v2 >= v13)
          {
LABEL_16:
            v16 = *(v3 + 48);
            v17 = (v16 + 8 * v2);
            v18 = (v16 + 8 * v6);
            if (v2 != v6 || v17 >= v18 + 1)
            {
              *v17 = *v18;
              v2 = v6;
            }
          }
        }

        else if (v13 >= v9 || v2 >= v13)
        {
          goto LABEL_16;
        }

        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v19 = *(v3 + 16);
  v20 = __OFSUB__(v19, 1);
  v21 = v19 - 1;
  if (v20)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v21;
    ++*(v3 + 36);
  }
}

void sub_10004AFBC(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(id *))
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

        sub_10004AAC0(a1, a2, v20, a3);
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

void *sub_10004B128(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(id *))
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

    sub_10004AFBC(result, a2, a3, a4);
    v9 = v8;

    return v9;
  }

  return result;
}

void sub_10004B1B8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_10000DB4C(&qword_100093CA0, &qword_1000744A0);
  v35 = v4;
  v6 = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = v6;
  if (*(v5 + 16))
  {
    v34 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = v6 + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v35 & 1) == 0)
      {

        swift_unknownObjectRetain();
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      v25 = Hasher._finalize()();
      v26 = -1 << *(v7 + 32);
      v27 = v25 & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v34;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v35 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v2;
    if (v33 >= 64)
    {
      bzero(v9, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
}

void sub_10004B460()
{
  v1 = v0;
  sub_10000DB4C(&qword_100093CA0, &qword_1000744A0);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;

        swift_unknownObjectRetain();
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }
}

uint64_t sub_10004B5D0(uint64_t a1, char a2)
{
  v4 = *v2;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v2 = v4;
  if (result)
  {
    if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
    {
      if (a1 <= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  else if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
  {
    goto LABEL_9;
  }

  _CocoaArrayWrapper.endIndex.getter();
LABEL_9:
  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
  *v2 = result;
  return result;
}

void (*sub_10004B670(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_10004B6F0;
  }

  __break(1u);
  return result;
}

uint64_t sub_10004B6F8(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = _CocoaArrayWrapper.endIndex.getter();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = _CocoaArrayWrapper.endIndex.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_100002D44(&qword_100093C90, &qword_100093C88, &qword_100074490, &protocol conformance descriptor for [A]);
          for (i = 0; i != v6; ++i)
          {
            sub_10000DB4C(&qword_100093C88, &qword_100074490);
            v9 = sub_10004B670(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_100002B84(0, &unk_100093C78, UIApplicationShortcutItem_ptr);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

double sub_10004B8AC(void *a1, uint64_t a2)
{
  v4 = sub_10000DB4C(&qword_100093F50, &qword_100074090);
  __chkstk_darwin(v4 - 8);
  v6 = &v37 - v5;
  v7 = type metadata accessor for Logger();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.Application.getter();
  v11 = a1;
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v40 = v6;
    v15 = v14;
    v16 = swift_slowAlloc();
    v39 = a2;
    aBlock[0] = v16;
    *v15 = 136446466;
    *(v15 + 4) = sub_100005D28(0xD000000000000013, 0x8000000100075B70, aBlock);
    *(v15 + 12) = 2082;
    v17 = [v11 description];
    v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v38 = v7;
    v20 = v19;

    v21 = sub_100005D28(v18, v20, aBlock);

    *(v15 + 14) = v21;
    _os_log_impl(&_mh_execute_header, v12, v13, "%{public}s: location: %{public}s.", v15, 0x16u);
    swift_arrayDestroy();

    v6 = v40;

    (*(v8 + 8))(v10, v38);
  }

  else
  {

    (*(v8 + 8))(v10, v7);
  }

  v22 = swift_allocObject();
  swift_unknownObjectWeakInit();
  objc_opt_self();
  v23 = swift_dynamicCastObjCClass();
  if (v23)
  {
    v24 = v23;
    v25 = v11;
    v26 = [v24 fileURL];
    if (v26)
    {
      v27 = v26;
      static URL._unconditionallyBridgeFromObjectiveC(_:)();

      v28 = 0;
    }

    else
    {
      v28 = 1;
    }

    v36 = type metadata accessor for URL();
    (*(*(v36 - 8) + 56))(v6, v28, 1, v36);
    sub_10004C25C(v6, 0, v25, v22);

    sub_100005A04(v6, &qword_100093F50, &qword_100074090);
  }

  else
  {
    v29 = [objc_opt_self() defaultManager];
    objc_opt_self();
    v30 = swift_dynamicCastObjCClassUnconditional();
    v31 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v32 = swift_allocObject();
    v32[2] = v31;
    v32[3] = v11;
    v32[4] = v22;
    aBlock[4] = sub_10005269C;
    aBlock[5] = v32;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1000526E0;
    aBlock[3] = &unk_10008EE98;
    v33 = _Block_copy(aBlock);
    v34 = v11;

    [v29 fetchURLForItem:v30 completionHandler:v33];
    _Block_release(v33);
  }

  return result;
}

double sub_10004BD6C(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_10000DB4C(&qword_100093F50, &qword_100074090);
  __chkstk_darwin(v4 - 8);
  v6 = &v34[-v5];
  v7 = type metadata accessor for Logger();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v34[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  static Logger.Application.getter();
  swift_unknownObjectRetain();
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.debug.getter();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v38 = v6;
    v14 = v13;
    v37 = swift_slowAlloc();
    aBlock[0] = v37;
    *v14 = 136446466;
    *(v14 + 4) = sub_100005D28(0xD000000000000013, 0x8000000100075B70, aBlock);
    *(v14 + 12) = 2082;
    v15 = [a1 description];
    v36 = v7;
    v16 = v15;
    v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v35 = v12;
    v19 = v18;

    v20 = sub_100005D28(v17, v19, aBlock);

    *(v14 + 14) = v20;
    _os_log_impl(&_mh_execute_header, v11, v35, "%{public}s: location: %{public}s.", v14, 0x16u);
    swift_arrayDestroy();

    v6 = v38;

    (*(v8 + 8))(v10, v36);
  }

  else
  {

    (*(v8 + 8))(v10, v7);
  }

  v21 = swift_allocObject();
  swift_unknownObjectWeakInit();
  objc_opt_self();
  v22 = swift_dynamicCastObjCClass();
  if (v22)
  {
    v23 = v22;
    swift_unknownObjectRetain();
    v24 = [v23 fileURL];
    if (v24)
    {
      v25 = v24;
      static URL._unconditionallyBridgeFromObjectiveC(_:)();

      v26 = 0;
    }

    else
    {
      v26 = 1;
    }

    v33 = type metadata accessor for URL();
    (*(*(v33 - 8) + 56))(v6, v26, 1, v33);
    sub_10004C708(v6, 0, a1, v21);
    swift_unknownObjectRelease();
    sub_100005A04(v6, &qword_100093F50, &qword_100074090);
  }

  else
  {
    v27 = [objc_opt_self() defaultManager];
    objc_opt_self();
    v28 = swift_dynamicCastObjCClassUnconditional();
    v29 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v30 = swift_allocObject();
    v30[2] = v29;
    v30[3] = a1;
    v30[4] = v21;
    aBlock[4] = sub_10005229C;
    aBlock[5] = v30;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1000526E0;
    aBlock[3] = &unk_10008ECE0;
    v31 = _Block_copy(aBlock);
    swift_unknownObjectRetain();

    [v27 fetchURLForItem:v28 completionHandler:v31];
    _Block_release(v31);
  }

  return result;
}

uint64_t sub_10004C25C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v39 = a4;
  v42 = a2;
  v43 = a3;
  v5 = type metadata accessor for Logger();
  v40 = *(v5 - 8);
  v41 = v5;
  __chkstk_darwin(v5);
  v7 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10000DB4C(&qword_100093F50, &qword_100074090);
  __chkstk_darwin(v8 - 8);
  v10 = &v38 - v9;
  v11 = type metadata accessor for URL();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(v11);
  v15 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v17 = &v38 - v16;
  sub_100034850(a1, v10, &qword_100093F50, &qword_100074090);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_100005A04(v10, &qword_100093F50, &qword_100074090);
    v18 = v7;
    static Logger.Application.getter();
    v19 = v43;
    swift_errorRetain();
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      *v22 = 136315650;
      *(v22 + 4) = sub_100005D28(0xD000000000000018, 0x8000000100075B90, &v45);
      *(v22 + 12) = 2080;
      v23 = [v19 description];
      v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v26 = v25;

      v27 = sub_100005D28(v24, v26, &v45);

      *(v22 + 14) = v27;
      *(v22 + 22) = 2080;
      v44 = v42;
      swift_errorRetain();
      sub_10000DB4C(&unk_100093B40, qword_100074410);
      v28 = String.init<A>(describing:)();
      v30 = sub_100005D28(v28, v29, &v45);

      *(v22 + 24) = v30;
      _os_log_impl(&_mh_execute_header, v20, v21, "%s: got nil URL for item: %s. Error: %s", v22, 0x20u);
      swift_arrayDestroy();
    }

    return (*(v40 + 8))(v18, v41);
  }

  else
  {
    v32 = *(v12 + 32);
    v32(v17, v10, v11);
    (*(v12 + 16))(v15, v17, v11);
    v33 = (*(v12 + 80) + 24) & ~*(v12 + 80);
    v34 = (v13 + v33 + 7) & 0xFFFFFFFFFFFFFFF8;
    v35 = swift_allocObject();
    *(v35 + 16) = v39;
    v32((v35 + v33), v15, v11);
    v36 = v43;
    *(v35 + v34) = v43;

    v37 = v36;
    DOCRunInMainThread(_:)();

    return (*(v12 + 8))(v17, v11);
  }
}

uint64_t sub_10004C708(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v38 = a4;
  v39 = a2;
  v42 = a3;
  v5 = type metadata accessor for Logger();
  v40 = *(v5 - 8);
  v41 = v5;
  __chkstk_darwin(v5);
  v7 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10000DB4C(&qword_100093F50, &qword_100074090);
  __chkstk_darwin(v8 - 8);
  v10 = &v37 - v9;
  v11 = type metadata accessor for URL();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(v11);
  v15 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v17 = &v37 - v16;
  sub_100034850(a1, v10, &qword_100093F50, &qword_100074090);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_100005A04(v10, &qword_100093F50, &qword_100074090);
    v18 = v7;
    static Logger.Application.getter();
    v19 = v42;
    swift_unknownObjectRetain();
    v20 = v39;
    swift_errorRetain();
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.error.getter();
    swift_unknownObjectRelease();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      *v23 = 136315650;
      *(v23 + 4) = sub_100005D28(0xD000000000000018, 0x8000000100075B90, &v44);
      *(v23 + 12) = 2080;
      v24 = [v19 description];
      v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v27 = v26;

      v28 = sub_100005D28(v25, v27, &v44);

      *(v23 + 14) = v28;
      *(v23 + 22) = 2080;
      v43 = v20;
      swift_errorRetain();
      sub_10000DB4C(&unk_100093B40, qword_100074410);
      v29 = String.init<A>(describing:)();
      v31 = sub_100005D28(v29, v30, &v44);

      *(v23 + 24) = v31;
      _os_log_impl(&_mh_execute_header, v21, v22, "%s: got nil URL for item: %s. Error: %s", v23, 0x20u);
      swift_arrayDestroy();
    }

    return (*(v40 + 8))(v18, v41);
  }

  else
  {
    v33 = *(v12 + 32);
    v33(v17, v10, v11);
    (*(v12 + 16))(v15, v17, v11);
    v34 = (*(v12 + 80) + 24) & ~*(v12 + 80);
    v35 = (v13 + v34 + 7) & 0xFFFFFFFFFFFFFFF8;
    v36 = swift_allocObject();
    *(v36 + 16) = v38;
    v33((v36 + v34), v15, v11);
    *(v36 + v35) = v42;

    swift_unknownObjectRetain();
    DOCRunInMainThread(_:)();

    return (*(v12 + 8))(v17, v11);
  }
}

unint64_t sub_10004CBBC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10000DB4C(&qword_100093A50, &qword_1000743D0);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_100034850(v4, v13, &qword_100093A38, &qword_1000743B8);
      result = sub_10000A60C(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = sub_100002B74(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_10004CCF8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10000DB4C(&qword_100093CA0, &qword_1000744A0);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      swift_unknownObjectRetain();
      result = sub_100009C94(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

Swift::Int sub_10004CDFC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10000DB4C(&qword_100093A48, &qword_1000743C8);
    v3 = static _SetStorage.allocate(capacity:)();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (2)
    {
      v7 = (v6 + 16 * v4);
      v9 = *v7;
      v8 = v7[1];
      Hasher.init(_seed:)();

      String.hash(into:)();
      result = Hasher._finalize()();
      v11 = ~(-1 << *(v3 + 32));
      for (i = result & v11; ; i = (i + 1) & v11)
      {
        v13 = *(v5 + 8 * (i >> 6));
        if (((1 << i) & v13) == 0)
        {
          break;
        }

        v14 = (*(v3 + 48) + 16 * i);
        if (*v14 != v9 || v14[1] != v8)
        {
          result = _stringCompareWithSmolCheck(_:_:expecting:)();
          if ((result & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_4;
      }

      *(v5 + 8 * (i >> 6)) = (1 << i) | v13;
      v16 = (*(v3 + 48) + 16 * i);
      *v16 = v9;
      v16[1] = v8;
      v17 = *(v3 + 16);
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (!v18)
      {
        *(v3 + 16) = v19;
LABEL_4:
        if (++v4 == v1)
        {
          return v3;
        }

        continue;
      }

      break;
    }

    __break(1u);
  }

  else
  {
    return &_swiftEmptySetSingleton;
  }

  return result;
}

uint64_t sub_10004CF64(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    v2 = (result + 40);
    do
    {
      v4 = *(v2 - 1);
      v3 = *v2;

      sub_10004815C(&v5, v4, v3);

      v2 += 2;
      --v1;
    }

    while (v1);
  }

  return result;
}

uint64_t sub_10004CFD4()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v4 = sub_10000DB4C(&qword_100093F50, &qword_100074090);
  v5 = __chkstk_darwin(v4 - 8);
  v7 = &v61 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v61 - v8;
  v10 = type metadata accessor for URL();
  v11 = __chkstk_darwin(v10);
  __chkstk_darwin(v11);
  v14 = *(v1 + OBJC_IVAR____TtC5Files20BrowserSceneDelegate_viewController);
  if (v14)
  {
    *&v71 = v3;
    v72 = &v61 - v12;
    v73 = v13;
    v15 = OBJC_IVAR____TtC5Files21DRIMainViewController_currentQuickLookURL;
    swift_beginAccess();
    v16 = v14 + v15;
    v17 = v73;
    sub_100034850(v16, v9, &qword_100093F50, &qword_100074090);
    if ((*(v17 + 48))(v9, 1, v10) == 1)
    {
      sub_100005A04(v9, &qword_100093F50, &qword_100074090);
      return 0;
    }

    else
    {
      v68 = v2;
      (*(v17 + 32))(v72, v9, v10);
      v70 = v14;
      v69 = URL.startAccessingSecurityScopedResource()();
      (*(v17 + 56))(v7, 1, 1, v10);
      v18 = URL.bookmarkData(options:includingResourceValuesForKeys:relativeTo:)();
      v68 = v10;
      v20 = v19;
      v21 = v18;
      sub_100005A04(v7, &qword_100093F50, &qword_100074090);
      v22 = objc_allocWithZone(NSUserActivity);
      v23 = String._bridgeToObjectiveC()();
      v14 = [v22 initWithActivityType:v23];

      sub_10000DB4C(&qword_100093A28, qword_100074AD0);
      inited = swift_initStackObject();
      v71 = xmmword_100073FE0;
      *(inited + 16) = xmmword_100073FE0;
      v26 = *(v1 + OBJC_IVAR____TtC5Files20BrowserSceneDelegate_stateRestorationURLKey);
      v25 = *(v1 + OBJC_IVAR____TtC5Files20BrowserSceneDelegate_stateRestorationURLKey + 8);
      *(inited + 32) = v26;
      *(inited + 40) = v25;
      swift_bridgeObjectRetain_n();
      sub_10004CDFC(inited);
      swift_setDeallocating();
      sub_10004DB44(inited + 32);
      isa = Set._bridgeToObjectiveC()().super.isa;

      [v14 setRequiredUserInfoKeys:isa];

      v28 = sub_10000DB4C(&qword_100093A30, &qword_1000743B0);
      v29 = swift_initStackObject();
      *(v29 + 16) = v71;
      *&v79[0] = v26;
      *(&v79[0] + 1) = v25;
      AnyHashable.init<A>(_:)();
      *(v29 + 96) = &type metadata for Data;
      *(v29 + 72) = v21;
      *(v29 + 80) = v20;
      sub_10000AEE8(v21, v20);
      sub_10004CBBC(v29);
      swift_setDeallocating();
      sub_100005A04(v29 + 32, &qword_100093A38, &qword_1000743B8);
      v30 = Dictionary._bridgeToObjectiveC()().super.isa;

      [v14 setUserInfo:v30];

      v31 = *&v70[OBJC_IVAR____TtC5Files21DRIMainViewController_currentQuickLookPreviewController];
      v32 = v70;
      if (v31)
      {
        v66 = v21;
        v67 = v20;
        v33 = [v31 userActivity];
        v34 = v73;
        v35 = v68;
        if (v33 && (v36 = v33, v37 = [v33 userInfo], v36, v37))
        {
          v64 = v28;
          v38 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

          v39 = 1 << *(v38 + 32);
          v40 = -1;
          if (v39 < 64)
          {
            v40 = ~(-1 << v39);
          }

          v41 = v40 & *(v38 + 64);
          v42 = (v39 + 63) >> 6;
          result = swift_bridgeObjectRetain_n();
          v44 = 0;
          v65 = &_swiftEmptyArrayStorage;
          while (v41)
          {
LABEL_15:
            v46 = __clz(__rbit64(v41));
            v41 &= v41 - 1;
            sub_10000A718(*(v38 + 48) + 40 * (v46 | (v44 << 6)), v79);
            v74 = v79[0];
            v75 = v79[1];
            v76 = v80;
            result = swift_dynamicCast();
            if (result)
            {
              v47 = v78;
              if (v78)
              {
                v63 = v77;
                result = swift_isUniquelyReferenced_nonNull_native();
                if ((result & 1) == 0)
                {
                  result = sub_100006CC4(0, *(v65 + 2) + 1, 1, v65);
                  v65 = result;
                }

                v49 = *(v65 + 2);
                v48 = *(v65 + 3);
                v50 = v49 + 1;
                if (v49 >= v48 >> 1)
                {
                  v61 = *(v65 + 2);
                  v62 = v49 + 1;
                  result = sub_100006CC4((v48 > 1), v49 + 1, 1, v65);
                  v49 = v61;
                  v50 = v62;
                  v65 = result;
                }

                v51 = v65;
                *(v65 + 2) = v50;
                v52 = &v51[16 * v49];
                *(v52 + 4) = v63;
                *(v52 + 5) = v47;
              }
            }
          }

          while (1)
          {
            v45 = v44 + 1;
            if (__OFADD__(v44, 1))
            {
              __break(1u);
              return result;
            }

            if (v45 >= v42)
            {
              break;
            }

            v41 = *(v38 + 64 + 8 * v45);
            ++v44;
            if (v41)
            {
              v44 = v45;
              goto LABEL_15;
            }
          }

          v54 = [v14 requiredUserInfoKeys];
          if (v54)
          {
            v55 = v54;
            v56 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

            *&v79[0] = v56;
            sub_10004CF64(v65);

            v34 = v73;
            v32 = v70;
            if (*&v79[0])
            {
              v57.super.isa = Set._bridgeToObjectiveC()().super.isa;
            }

            else
            {
              v57.super.isa = 0;
            }

            [v14 setRequiredUserInfoKeys:v57.super.isa];
          }

          else
          {

            [v14 setRequiredUserInfoKeys:0];
            v34 = v73;
            v32 = v70;
          }

          v58 = swift_initStackObject();
          *(v58 + 16) = v71;
          *&v79[0] = DOCUserActivityQuickLookStateRestorationUserInfoKey.getter();
          *(&v79[0] + 1) = v59;
          AnyHashable.init<A>(_:)();
          *(v58 + 96) = sub_10000DB4C(&qword_100093A40, &qword_1000743C0);
          *(v58 + 72) = v38;
          sub_10004CBBC(v58);
          swift_setDeallocating();
          sub_100005A04(v58 + 32, &qword_100093A38, &qword_1000743B8);
          v60 = Dictionary._bridgeToObjectiveC()().super.isa;

          [v14 addUserInfoEntriesFromDictionary:v60];
          sub_10000A0F8(v66, v67);
        }

        else
        {
          sub_10000A0F8(v66, v67);
        }
      }

      else
      {
        sub_10000A0F8(v21, v20);
        v34 = v73;
        v35 = v68;
      }

      if (v69)
      {
        v53 = v72;
        URL.stopAccessingSecurityScopedResource()();

        (*(v34 + 8))(v53, v35);
      }

      else
      {
        (*(v34 + 8))(v72, v35);
      }
    }
  }

  return v14;
}

void sub_10004DBA8()
{
  v1 = *(sub_10000DB4C(&qword_100093F50, &qword_100074090) - 8);
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = v0 + ((*(v1 + 80) + 56) & ~*(v1 + 80));

  sub_100042EE0(v2, v3, v4, v5, v6, v7);
}

uint64_t sub_10004DC20(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_10004DC68(void *a1, uint64_t a2, int a3, void *a4, void *a5, uint64_t a6, NSObject *a7)
{
  v166 = a7;
  v149 = a6;
  v147 = a5;
  v148 = a4;
  v153 = a3;
  v167 = a2;
  v8 = sub_10000DB4C(&qword_100093F50, &qword_100074090);
  v9 = __chkstk_darwin(v8 - 8);
  v163 = &v142[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v9);
  v165 = &v142[-v11];
  v12 = type metadata accessor for Logger();
  v173 = *(v12 - 8);
  v174 = v12;
  v13 = __chkstk_darwin(v12);
  v157 = &v142[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = __chkstk_darwin(v13);
  v155 = &v142[-v16];
  v17 = __chkstk_darwin(v15);
  v145 = &v142[-v18];
  v19 = __chkstk_darwin(v17);
  v168 = &v142[-v20];
  __chkstk_darwin(v19);
  v162 = &v142[-v21];
  v22 = type metadata accessor for URL();
  v23 = *(v22 - 8);
  v24 = __chkstk_darwin(v22);
  v146 = &v142[-((v25 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v26 = __chkstk_darwin(v24);
  v154 = &v142[-v27];
  v28 = __chkstk_darwin(v26);
  v169 = &v142[-v29];
  v30 = __chkstk_darwin(v28);
  v159 = &v142[-v31];
  __chkstk_darwin(v30);
  v33 = &v142[-v32];
  v34 = sub_10000DB4C(&qword_100093C38, &unk_100074478);
  v35 = __chkstk_darwin(v34);
  v161 = &v142[-((v36 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v37 = __chkstk_darwin(v35);
  v151 = &v142[-v38];
  v39 = __chkstk_darwin(v37);
  v158 = &v142[-v40];
  v41 = __chkstk_darwin(v39);
  v43 = &v142[-v42];
  __chkstk_darwin(v41);
  v45 = &v142[-v44];
  v171 = URL.startAccessingSecurityScopedResource()();
  v46 = &v45[*(v34 + 48)];
  v170 = a1;
  sub_100041C70(v45, v46, a1);
  v164 = URL.startAccessingSecurityScopedResource()();
  v152 = objc_opt_self();
  v47 = [v152 defaultManager];
  sub_100034850(v45, v43, &qword_100093C38, &unk_100074478);
  v160 = v34;
  v48 = *(v34 + 48);
  URL._bridgeToObjectiveC()(&v177);
  v50 = v49;
  sub_100005A04(&v43[v48], &qword_100093F50, &qword_100074090);
  v51 = v23;
  v52 = *(v23 + 8);
  v53 = v22;
  v172 = v23 + 8;
  v175 = v52;
  v52(v43, v22);
  v176[0] = 0;
  v54 = [v47 _doc_importItemAtURL:v50 toDestination:1 error:v176];

  v55 = v176[0];
  if (v54)
  {
    static URL._unconditionallyBridgeFromObjectiveC(_:)();
    v56 = v55;

    v57 = v162;
    static Logger.Application.getter();
    v58 = v158;
    sub_100034850(v45, v158, &qword_100093C38, &unk_100074478);
    v59 = v51;
    v60 = v51 + 16;
    v61 = *(v51 + 16);
    v62 = v159;
    v168 = v33;
    v63 = v33;
    v64 = v53;
    v150 = v60;
    v156 = v61;
    v61(v159, v63, v53);
    v65 = Logger.logObject.getter();
    v66 = static os_log_type_t.debug.getter();
    v67 = os_log_type_enabled(v65, v66);
    v157 = v45;
    v167 = v59;
    if (v67)
    {
      v68 = swift_slowAlloc();
      v144 = swift_slowAlloc();
      v176[0] = v144;
      *v68 = 136315650;
      *(v68 + 4) = sub_100005D28(0xD000000000000031, 0x8000000100075AB0, v176);
      *(v68 + 12) = 2080;
      sub_100034850(v58, v43, &qword_100093C38, &unk_100074478);
      v69 = v160;
      v143 = v66;
      v70 = *(v160 + 48);
      v71 = v151;
      (*(v167 + 32))(v151, v43, v64);
      sub_10000B2A8(&v43[v70], &v71[v70]);
      v72 = String.init<A>(describing:)();
      v74 = v73;
      sub_100005A04(v58, &qword_100093C38, &unk_100074478);
      v75 = sub_100005D28(v72, v74, v176);

      *(v68 + 14) = v75;
      *(v68 + 22) = 2080;
      sub_10004DC20(&unk_1000937B0, &type metadata accessor for URL, &protocol conformance descriptor for URL);
      v76 = dispatch thunk of CustomStringConvertible.description.getter();
      v78 = v77;
      v79 = v175;
      v175(v62, v64);
      v80 = sub_100005D28(v76, v78, v176);

      *(v68 + 24) = v80;
      _os_log_impl(&_mh_execute_header, v65, v143, "%s: imported URL: %s to downloads at URL: %s", v68, 0x20u);
      swift_arrayDestroy();

      v59 = v167;
      v45 = v157;

      v162 = *(v173 + 8);
      (v162)(v57, v174);
      v81 = v64;
    }

    else
    {

      v79 = v175;
      v175(v62, v64);
      sub_100005A04(v58, &qword_100093C38, &unk_100074478);
      v162 = *(v173 + 8);
      (v162)(v57, v174);
      v81 = v64;
      v69 = v160;
    }

    v103 = v161;
    sub_100034850(v45, v161, &qword_100093C38, &unk_100074478);
    v104 = *(v69 + 48);
    v105 = *(v59 + 48);
    v106 = v105(&v103[v104], 1, v81);
    v107 = v168;
    v108 = v169;
    if (v106 == 1)
    {
      sub_100005A04(&v103[v104], &qword_100093F50, &qword_100074090);
      v79(v103, v81);
      v109 = v165;
    }

    else
    {
      (*(v59 + 32))(v169, &v103[v104], v81);
      v79(v103, v81);
      v110 = [v152 defaultManager];
      URL._bridgeToObjectiveC()(v111);
      v113 = v112;
      v176[0] = 0;
      v114 = [v110 removeItemAtURL:v112 error:v176];

      if (v114)
      {
        v115 = v176[0];
        v79(v108, v81);
        v109 = v165;
      }

      else
      {
        v161 = v81;
        v116 = v176[0];
        _convertNSErrorToError(_:)();

        swift_willThrow();
        v117 = v145;
        static Logger.Application.getter();
        swift_errorRetain();
        v118 = Logger.logObject.getter();
        v119 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v118, v119))
        {
          v120 = swift_slowAlloc();
          v176[0] = swift_slowAlloc();
          *v120 = 136315394;
          *(v120 + 4) = sub_100005D28(0xD000000000000031, 0x8000000100075AB0, v176);
          *(v120 + 12) = 2080;
          swift_getErrorValue();
          v121 = Error.localizedDescription.getter();
          v123 = sub_100005D28(v121, v122, v176);

          *(v120 + 14) = v123;
          _os_log_impl(&_mh_execute_header, v118, v119, "%s: Failed to delete temporary directory. Error: %s", v120, 0x16u);
          swift_arrayDestroy();

          (v162)(v117, v174);
          v81 = v161;
          v175(v169, v161);
        }

        else
        {

          (v162)(v117, v174);
          v81 = v161;
          v79(v169, v161);
        }

        v109 = v165;
        v107 = v168;
      }

      v59 = v167;
    }

    v156(v109, v107, v81);
    (*(v59 + 56))(v109, 0, 1, v81);
    v124 = v163;
    sub_100034850(v109, v163, &qword_100093F50, &qword_100074090);
    if (v105(v124, 1, v81) == 1)
    {
      sub_100005A04(v124, &qword_100093F50, &qword_100074090);
      v125 = v155;
      static Logger.Application.getter();
      v126 = Logger.logObject.getter();
      v127 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v126, v127))
      {
        v128 = swift_slowAlloc();
        v176[0] = swift_slowAlloc();
        *v128 = 136315394;
        *(v128 + 4) = sub_100005D28(0xD00000000000002ALL, 0x8000000100075A80, v176);
        *(v128 + 12) = 2080;
        v176[3] = 0;
        sub_10000DB4C(&unk_100093B40, qword_100074410);
        v129 = String.init<A>(describing:)();
        v131 = sub_100005D28(v129, v130, v176);
        v107 = v168;

        *(v128 + 14) = v131;
        _os_log_impl(&_mh_execute_header, v126, v127, "%s: could not import to Downloads or it was cancelled: %s", v128, 0x16u);
        swift_arrayDestroy();
      }

      (v162)(v125, v174);
    }

    else
    {
      v132 = *(v59 + 32);
      v133 = v154;
      v132(v154, v124, v81);
      if (v153)
      {
        v134 = [v147 options];
        sub_10003A72C(v133, v134, 1, 1, 1u);

        v175(v133, v81);
      }

      else
      {
        v135 = v146;
        v156(v146, v133, v81);
        v136 = v149;
        swift_beginAccess();
        v137 = *(v136 + 16);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(v136 + 16) = v137;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v137 = sub_100047ABC(0, v137[2] + 1, 1, v137);
          *(v136 + 16) = v137;
        }

        v140 = v137[2];
        v139 = v137[3];
        if (v140 >= v139 >> 1)
        {
          v137 = sub_100047ABC((v139 > 1), v140 + 1, 1, v137);
        }

        v137[2] = v140 + 1;
        v132(v137 + ((*(v167 + 80) + 32) & ~*(v167 + 80)) + *(v167 + 72) * v140, v135, v81);
        *(v136 + 16) = v137;
        v175(v133, v81);
        v107 = v168;
      }
    }

    dispatch_group_leave(v166);
    sub_100005A04(v109, &qword_100093F50, &qword_100074090);
    v141 = v157;
    if (v164)
    {
      URL.stopAccessingSecurityScopedResource()();
    }

    v175(v107, v81);
    sub_100005A04(v141, &qword_100093C38, &unk_100074478);
    if (v171)
    {
LABEL_38:
      URL.stopAccessingSecurityScopedResource()();
    }
  }

  else
  {
    v82 = v157;
    v83 = v167;
    v84 = v176[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();
    sub_100005A04(v45, &qword_100093C38, &unk_100074478);
    v85 = v168;
    static Logger.Application.getter();
    swift_errorRetain();
    v86 = Logger.logObject.getter();
    v87 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v86, v87))
    {
      v88 = swift_slowAlloc();
      v176[0] = swift_slowAlloc();
      *v88 = 136315394;
      *(v88 + 4) = sub_100005D28(0xD000000000000031, 0x8000000100075AB0, v176);
      *(v88 + 12) = 2080;
      swift_getErrorValue();
      v89 = Error.localizedDescription.getter();
      v91 = sub_100005D28(v89, v90, v176);

      *(v88 + 14) = v91;
      _os_log_impl(&_mh_execute_header, v86, v87, "%s: import to Downloads failed. Error: %s", v88, 0x16u);
      swift_arrayDestroy();
    }

    v92 = *(v173 + 8);
    v92(v85, v174);
    v93 = OBJC_IVAR____TtC5Files20BrowserSceneDelegate_fileImportController;
    v94 = *(v83 + OBJC_IVAR____TtC5Files20BrowserSceneDelegate_fileImportController);
    if (!v94)
    {
      static Logger.Application.getter();
      v95 = Logger.logObject.getter();
      v96 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v95, v96))
      {
        v97 = swift_slowAlloc();
        v98 = swift_slowAlloc();
        v176[0] = v98;
        *v97 = 136315138;
        *(v97 + 4) = sub_100005D28(0xD000000000000031, 0x8000000100075AB0, v176);
        _os_log_impl(&_mh_execute_header, v95, v96, "%s: fileImportController was nil, creating a new one.", v97, 0xCu);
        sub_100034948(v98);
      }

      v92(v82, v174);
      v99 = [objc_allocWithZone(type metadata accessor for DOCImportFileController()) init];
      v100 = *(v83 + v93);
      *(v83 + v93) = v99;
      v101 = v99;

      if (v101)
      {
        *&v101[OBJC_IVAR____TtC5Files23DOCImportFileController_delegate + 8] = &off_10008E4F8;
        swift_unknownObjectWeakAssign();
      }

      v94 = *(v83 + v93);
      if (!v94)
      {

        __break(1u);
        return;
      }
    }

    v102 = v94;
    sub_10006E500(v170);

    if (v171)
    {
      goto LABEL_38;
    }
  }
}

void sub_10004F004(void *a1)
{
  v2 = type metadata accessor for DOCUserActivityIdentifier();
  v112 = *(v2 - 8);
  v113 = v2;
  __chkstk_darwin(v2);
  v111 = &v108 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Logger();
  v117 = *(v4 - 8);
  v118 = v4;
  v5 = __chkstk_darwin(v4);
  v7 = &v108 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v5);
  v10 = &v108 - v9;
  v11 = __chkstk_darwin(v8);
  v110 = &v108 - v12;
  v13 = __chkstk_darwin(v11);
  v114 = &v108 - v14;
  __chkstk_darwin(v13);
  v16 = &v108 - v15;
  static Logger.Application.getter();
  v17 = a1;
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.debug.getter();

  v20 = &off_100091000;
  if (os_log_type_enabled(v18, v19))
  {
    v21 = swift_slowAlloc();
    v121 = swift_slowAlloc();
    *v21 = 136315394;
    *(v21 + 4) = sub_100005D28(0xD000000000000012, 0x8000000100075BB0, &v121);
    *(v21 + 12) = 2080;
    v22 = [v17 activityType];
    v109 = v10;
    v23 = v22;
    v24 = v7;
    v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v27 = v26;

    v28 = v25;
    v7 = v24;
    v29 = v118;
    v30 = sub_100005D28(v28, v27, &v121);

    *(v21 + 14) = v30;
    v31 = v117;
    v10 = v109;
    _os_log_impl(&_mh_execute_header, v18, v19, "%s: continue activity: %s", v21, 0x16u);
    swift_arrayDestroy();

    v32 = *(v31 + 8);
    v33 = v16;
    v34 = v29;
    v20 = &off_100091000;
  }

  else
  {

    v34 = v118;
    v32 = *(v117 + 8);
    v33 = v16;
  }

  v115 = v32;
  v32(v33, v34);
  v35 = [v17 v20[452]];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  LOBYTE(v35) = static DOCUserActivityIdentifier.identifierSupportsRestoration(_:)();

  if (v35)
  {
    type metadata accessor for DOCUserActivityController();
    v36 = swift_allocObject();
    v37 = v116;
    *(v36 + 16) = v116;
    *(v36 + 24) = v17;
    v38 = v17;
    v39 = v37;
    static DOCUserActivityController.fetchURLFrom(activity:completion:)();

    return;
  }

  v40 = [objc_opt_self() intentFromActivity:v17];
  if (!v40)
  {
    v56 = v20[452];
    v114 = v17;
    v57 = [v17 v56];
    v58 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v60 = v59;

    v61 = v111;
    v62 = v112;
    v63 = v113;
    (*(v112 + 104))(v111, enum case for DOCUserActivityIdentifier.folderDrag(_:), v113);
    v64 = DOCUserActivityIdentifier.rawValue.getter();
    v66 = v65;
    (*(v62 + 8))(v61, v63);
    if (v58 == v64 && v60 == v66)
    {

LABEL_14:
      v7 = v110;
      static Logger.Application.getter();
      v68 = v114;
      v69 = Logger.logObject.getter();
      v70 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v69, v70))
      {
        v71 = swift_slowAlloc();
        v121 = swift_slowAlloc();
        *v71 = 136315394;
        *(v71 + 4) = sub_100005D28(0xD000000000000012, 0x8000000100075BB0, &v121);
        *(v71 + 12) = 2080;
        v72 = [v68 activityType];
        v73 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v75 = v74;

        v76 = sub_100005D28(v73, v75, &v121);

        *(v71 + 14) = v76;
        _os_log_impl(&_mh_execute_header, v69, v70, "%s: Continue folder drop activity: %s", v71, 0x16u);
        swift_arrayDestroy();
      }

LABEL_17:
      v115(v7, v118);
      return;
    }

    v67 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v67)
    {
      goto LABEL_14;
    }

    v77 = v114;
    v78 = [v114 activityType];
    v79 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v81 = v80;

    if (v79 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v81 == v82)
    {
    }

    else
    {
      v83 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v83 & 1) == 0)
      {
        return;
      }
    }

    static Logger.Application.getter();
    v84 = v77;
    v85 = Logger.logObject.getter();
    v86 = static os_log_type_t.debug.getter();

    v87 = os_log_type_enabled(v85, v86);
    v114 = v84;
    if (v87)
    {
      v88 = swift_slowAlloc();
      v113 = swift_slowAlloc();
      v121 = v113;
      *v88 = 136315394;
      *(v88 + 4) = sub_100005D28(0xD000000000000012, 0x8000000100075BB0, &v121);
      *(v88 + 12) = 2080;
      v89 = [v84 activityType];
      v90 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v92 = v91;

      v93 = sub_100005D28(v90, v92, &v121);
      v94 = v115;

      *(v88 + 14) = v93;
      _os_log_impl(&_mh_execute_header, v85, v86, "%s: Continue Spotlight search activity: %s", v88, 0x16u);
      swift_arrayDestroy();

      v94(v10, v118);
    }

    else
    {

      v115(v10, v118);
    }

    v95 = *&v116[OBJC_IVAR____TtC5Files20BrowserSceneDelegate_viewController];
    if (v95)
    {
      v96 = v95;
      v97 = [v114 userInfo];
      if (v97)
      {
        v98 = v97;
        v99 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

        v119 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v120 = v100;
        AnyHashable.init<A>(_:)();
        if (*(v99 + 16) && (v101 = sub_10000A60C(&v121), (v102 & 1) != 0))
        {
          sub_100005CC8(*(v99 + 56) + 32 * v101, &v122);
          sub_10000A774(&v121);

          if (*(&v123 + 1))
          {
            if (swift_dynamicCast())
            {
              v103 = [v96 effectiveFullBrowser];
              DOCFullDocumentManagerViewController.search(forQuery:completion:)();

              return;
            }

            goto LABEL_36;
          }
        }

        else
        {

          sub_10000A774(&v121);
          v122 = 0u;
          v123 = 0u;
        }
      }

      else
      {

        v122 = 0u;
        v123 = 0u;
      }

      sub_100005A04(&v122, &qword_100093498, &qword_100074430);
    }

LABEL_36:
    static Logger.Application.getter();
    v104 = Logger.logObject.getter();
    v105 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v104, v105))
    {
      v106 = swift_slowAlloc();
      v107 = swift_slowAlloc();
      v121 = v107;
      *v106 = 136315138;
      *(v106 + 4) = sub_100005D28(0xD000000000000012, 0x8000000100075BB0, &v121);
      _os_log_impl(&_mh_execute_header, v104, v105, "%s: Unable to continue activity since main view controller not set, of search query string not is nil", v106, 0xCu);
      sub_100034948(v107);
    }

    goto LABEL_17;
  }

  v41 = v40;
  v42 = v114;
  static Logger.Application.getter();
  v43 = v17;
  v44 = Logger.logObject.getter();
  v45 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v44, v45))
  {
    v46 = swift_slowAlloc();
    v121 = swift_slowAlloc();
    *v46 = 136315394;
    *(v46 + 4) = sub_100005D28(0xD000000000000012, 0x8000000100075BB0, &v121);
    *(v46 + 12) = 2080;
    *&v122 = [v43 interaction];
    sub_10000DB4C(&qword_100093C70, &qword_100074488);
    v47 = String.init<A>(describing:)();
    v49 = sub_100005D28(v47, v48, &v121);

    *(v46 + 14) = v49;
    _os_log_impl(&_mh_execute_header, v44, v45, "%s: Handle Shortcuts open folder action: %s", v46, 0x16u);
    swift_arrayDestroy();
  }

  v115(v42, v118);
  type metadata accessor for DOCOpenLocationIntentActionResolver();
  swift_allocObject();
  v50 = v41;
  DOCOpenLocationIntentActionResolver.init(with:)();
  v51 = swift_allocObject();
  v52 = v116;
  *(v51 + 16) = v116;
  v53 = v52;
  dispatch thunk of DOCOpenLocationIntentActionResolver.semanticLocationResolutionHandler.setter();
  *(swift_allocObject() + 16) = v53;
  v54 = v53;
  dispatch thunk of DOCOpenLocationIntentActionResolver.urlLocationResolutionHandler.setter();
  *(swift_allocObject() + 16) = v54;
  v55 = v54;
  dispatch thunk of DOCOpenLocationIntentActionResolver.tagLocationResolutionHandler.setter();
  dispatch thunk of DOCOpenLocationIntentActionResolver.startResolving()();
}

uint64_t sub_10004FD50(uint64_t a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.Application.getter();

  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v16 = v2;
    v9 = v8;
    v15 = swift_slowAlloc();
    v17 = v15;
    *v9 = 136315394;
    *(v9 + 4) = sub_100005D28(0xD000000000000019, 0x8000000100075E80, &v17);
    *(v9 + 12) = 2080;
    sub_100002B84(0, &qword_100093C20, UIOpenURLContext_ptr);
    sub_100003A30(&qword_100093C28, &qword_100093C20, UIOpenURLContext_ptr);
    v10 = Set.description.getter();
    v12 = sub_100005D28(v10, v11, &v17);

    *(v9 + 14) = v12;
    _os_log_impl(&_mh_execute_header, v6, v7, "%s URLContexts: %s", v9, 0x16u);
    swift_arrayDestroy();

    (*(v3 + 8))(v5, v16);
  }

  else
  {

    (*(v3 + 8))(v5, v2);
  }

  return sub_1000373C0(a1);
}

uint64_t sub_10004FFAC(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.Application.getter();
  v9 = a1;
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v28 = v6;
    v13 = v12;
    v27 = swift_slowAlloc();
    v29 = v27;
    *v13 = 136315394;
    *(v13 + 4) = sub_100005D28(0xD000000000000032, 0x8000000100075E40, &v29);
    *(v13 + 12) = 2080;
    v14 = v9;
    v15 = [v14 description];
    v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v25 = v11;
    v17 = v9;
    v18 = a3;
    v19 = v16;
    v26 = v5;
    v21 = v20;

    v22 = sub_100005D28(v19, v21, &v29);

    *(v13 + 14) = v22;
    a3 = v18;
    v9 = v17;
    _os_log_impl(&_mh_execute_header, v10, v25, "%s shortcutItem: %s", v13, 0x16u);
    swift_arrayDestroy();

    (*(v28 + 8))(v8, v26);
  }

  else
  {

    (*(v6 + 8))(v8, v5);
  }

  sub_100039484(v9);
  return (*(a3 + 16))(a3, 1);
}