void sub_100248FDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_4;
  }

  v4 = Strong;
  v5 = [Strong view];

  if (!v5)
  {
    __break(1u);
    return;
  }

  v6 = [v5 traitCollection];

  v7 = [v6 _backlightLuminance];
  if (v7 != 2)
  {
LABEL_4:
    if (qword_1003A9308 != -1)
    {
      swift_once();
    }

    sub_1002455CC(0);
  }
}

id sub_100249580(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_1002495DC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

double sub_10024963C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

void sub_100249654()
{
  v1 = v0;
  v2 = type metadata accessor for LiveActivityView(0);
  v3 = v2 - 8;
  __chkstk_darwin(v2);
  v5 = (v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  *(v0 + OBJC_IVAR____TtC17SequoiaTranslator46SpeechTranslationApertureElementViewController_currentActivity) = 0;
  *(v0 + OBJC_IVAR____TtC17SequoiaTranslator46SpeechTranslationApertureElementViewController_activeLayoutMode) = 0;
  *(v0 + OBJC_IVAR____TtC17SequoiaTranslator46SpeechTranslationApertureElementViewController_contentRole) = 2;
  *(v0 + OBJC_IVAR____TtC17SequoiaTranslator46SpeechTranslationApertureElementViewController_preferredLayoutMode) = 4;
  *(v0 + OBJC_IVAR____TtC17SequoiaTranslator46SpeechTranslationApertureElementViewController_presentationBehaviors) = 8;
  *(v0 + OBJC_IVAR____TtC17SequoiaTranslator46SpeechTranslationApertureElementViewController_maximumLayoutMode) = 4;
  v6 = (v0 + OBJC_IVAR____TtC17SequoiaTranslator46SpeechTranslationApertureElementViewController_associatedScenePersistenceIdentifier);
  *v6 = 0;
  v6[1] = 0;
  v7 = OBJC_IVAR____TtC17SequoiaTranslator46SpeechTranslationApertureElementViewController_leadingView;
  type metadata accessor for EmptyActivityPlaceholderView();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  *(v1 + v7) = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v9 = OBJC_IVAR____TtC17SequoiaTranslator46SpeechTranslationApertureElementViewController_trailingView;
  *(v1 + v9) = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v10 = OBJC_IVAR____TtC17SequoiaTranslator46SpeechTranslationApertureElementViewController_minimalView;
  *(v1 + v10) = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v11 = OBJC_IVAR____TtC17SequoiaTranslator46SpeechTranslationApertureElementViewController_hostingController;
  type metadata accessor for LiveActivityViewModel(0);
  swift_allocObject();
  v15[1] = sub_10015A1D8();
  State.init(wrappedValue:)();
  v12 = v15[3];
  *v5 = v15[2];
  v5[1] = v12;
  v13 = *(v3 + 28);
  *(v5 + v13) = swift_getKeyPath();
  sub_100005AD4(&qword_1003BA370, &unk_1002DFA90);
  swift_storeEnumTagMultiPayload();
  v14 = objc_allocWithZone(sub_100005AD4(&qword_1003BA378, &qword_1002EB498));
  *(v1 + v11) = SecureHostingController.init(rootView:)();
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void sub_100249878()
{
  v1 = [v0 view];
  if (!v1)
  {
    __break(1u);
    goto LABEL_9;
  }

  v2 = v1;
  v13 = [v1 window];

  if (!v13)
  {
    return;
  }

  v3 = [*&v0[OBJC_IVAR____TtC17SequoiaTranslator46SpeechTranslationApertureElementViewController_hostingController] view];
  if (!v3)
  {
LABEL_9:
    __break(1u);
    return;
  }

  v4 = v3;
  [v13 bounds];
  v6 = v5;
  v8 = v7;
  LODWORD(v5) = 1148846080;
  LODWORD(v7) = 1112014848;
  [v4 systemLayoutSizeFittingSize:v6 withHorizontalFittingPriority:v8 verticalFittingPriority:{v5, v7}];
  v10 = v9;
  v12 = v11;

  [v0 setPreferredContentSize:{v10, v12}];
}

uint64_t sub_1002499A4()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24);
}

id sub_1002499EC()
{
  *&v0[OBJC_IVAR____TtC17SequoiaTranslator32SpeechTranslationInstrumentation_localePair] = 0;
  v1 = OBJC_IVAR____TtC17SequoiaTranslator32SpeechTranslationInstrumentation_sourceLocale;
  v2 = type metadata accessor for Locale();
  (*(*(v2 - 8) + 56))(&v0[v1], 1, 1, v2);
  Date.init()();
  v3 = OBJC_IVAR____TtC17SequoiaTranslator32SpeechTranslationInstrumentation_firstResult;
  v4 = type metadata accessor for Date();
  v5 = *(*(v4 - 8) + 56);
  v5(&v0[v3], 1, 1, v4);
  v5(&v0[OBJC_IVAR____TtC17SequoiaTranslator32SpeechTranslationInstrumentation_firstTranslation], 1, 1, v4);
  v5(&v0[OBJC_IVAR____TtC17SequoiaTranslator32SpeechTranslationInstrumentation_firstTTS], 1, 1, v4);
  v5(&v0[OBJC_IVAR____TtC17SequoiaTranslator32SpeechTranslationInstrumentation_firstLID], 1, 1, v4);
  *&v0[OBJC_IVAR____TtC17SequoiaTranslator32SpeechTranslationInstrumentation_inputTokenCount] = 0;
  *&v0[OBJC_IVAR____TtC17SequoiaTranslator32SpeechTranslationInstrumentation_inputSubtokenCount] = 0;
  v0[OBJC_IVAR____TtC17SequoiaTranslator32SpeechTranslationInstrumentation_airplaneModeEnabled] = 0;
  v0[OBJC_IVAR____TtC17SequoiaTranslator32SpeechTranslationInstrumentation_onDeviceModeEnabled] = 0;
  v0[OBJC_IVAR____TtC17SequoiaTranslator32SpeechTranslationInstrumentation_offline] = 0;
  v0[OBJC_IVAR____TtC17SequoiaTranslator32SpeechTranslationInstrumentation_censorSpeech] = 0;
  v0[OBJC_IVAR____TtC17SequoiaTranslator32SpeechTranslationInstrumentation_senseDisambiguation] = 0;
  v0[OBJC_IVAR____TtC17SequoiaTranslator32SpeechTranslationInstrumentation_lidTriggered] = 0;
  v0[OBJC_IVAR____TtC17SequoiaTranslator32SpeechTranslationInstrumentation_lowQualityMT] = 0;
  v0[OBJC_IVAR____TtC17SequoiaTranslator32SpeechTranslationInstrumentation_nBestDisplay] = 0;
  v7.receiver = v0;
  v7.super_class = type metadata accessor for SpeechTranslationInstrumentation(0);
  return objc_msgSendSuper2(&v7, "init");
}

id sub_100249BF4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SpeechTranslationInstrumentation(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for SpeechTranslationInstrumentation(uint64_t a1)
{
  result = qword_1003BA3B0;
  if (!qword_1003BA3B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100249D88(uint64_t a1)
{
  sub_100249EFC(319, &qword_1003B3410, &type metadata accessor for Locale);
  if (v1 <= 0x3F)
  {
    type metadata accessor for Date();
    if (v2 <= 0x3F)
    {
      sub_100249EFC(319, &qword_1003AE370, &type metadata accessor for Date);
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_100249EFC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
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

uint64_t sub_100249F50()
{
  v1 = v0;
  v2 = sub_100005AD4(&qword_1003B5130, &unk_1002E4220);
  v3 = __chkstk_darwin(v2 - 8);
  v96 = &v89 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __chkstk_darwin(v3);
  v95 = &v89 - v6;
  v7 = __chkstk_darwin(v5);
  v94 = &v89 - v8;
  __chkstk_darwin(v7);
  v93 = &v89 - v9;
  v10 = type metadata accessor for Date();
  v97 = *(v10 - 8);
  v11 = __chkstk_darwin(v10);
  v92 = &v89 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v91 = &v89 - v14;
  v15 = __chkstk_darwin(v13);
  v90 = &v89 - v16;
  __chkstk_darwin(v15);
  v89 = &v89 - v17;
  v18 = sub_100005AD4(&qword_1003AFCE0, &qword_1002D5B00);
  __chkstk_darwin(v18 - 8);
  v20 = &v89 - v19;
  v21 = type metadata accessor for Locale();
  v22 = *(v21 - 8);
  __chkstk_darwin(v21);
  v24 = &v89 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = *(v0 + OBJC_IVAR____TtC17SequoiaTranslator32SpeechTranslationInstrumentation_localePair);
  v26 = &_swiftEmptyDictionarySingleton;
  if (v25)
  {
    v27 = v25;
    sub_100003754();
    v28 = String._bridgeToObjectiveC()();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v103 = &_swiftEmptyDictionarySingleton;
    sub_10029163C(v28, 0x6150656C61636F6CLL, 0xEA00000000007269, isUniquelyReferenced_nonNull_native);

    v26 = v103;
  }

  v30 = OBJC_IVAR____TtC17SequoiaTranslator32SpeechTranslationInstrumentation_sourceLocale;
  swift_beginAccess();
  sub_10001F620(v1 + v30, v20, &qword_1003AFCE0, &qword_1002D5B00);
  if ((*(v22 + 48))(v20, 1, v21) == 1)
  {
    sub_100009EBC(v20, &qword_1003AFCE0, &qword_1002D5B00);
  }

  else
  {
    (*(v22 + 32))(v24, v20, v21);
    Locale.ltIdentifier.getter();
    v31 = String._bridgeToObjectiveC()();

    v32 = swift_isUniquelyReferenced_nonNull_native();
    v102 = v26;
    sub_10029163C(v31, 0x6F4C656372756F73, 0xEC000000656C6163, v32);
    v26 = v102;
    (*(v22 + 8))(v24, v21);
  }

  isa = Bool._bridgeToObjectiveC()().super.super.isa;
  v34 = swift_isUniquelyReferenced_nonNull_native();
  v102 = v26;
  sub_10029163C(isa, 0x6563697665446E6FLL, 0xEC00000065646F4DLL, v34);
  v35 = v102;
  v36 = Bool._bridgeToObjectiveC()().super.super.isa;
  v37 = swift_isUniquelyReferenced_nonNull_native();
  v102 = v35;
  sub_10029163C(v36, 0x656E696C66666FLL, 0xE700000000000000, v37);
  v38 = v102;
  v39 = Bool._bridgeToObjectiveC()().super.super.isa;
  v40 = swift_isUniquelyReferenced_nonNull_native();
  v102 = v38;
  sub_10029163C(v39, 0x7053726F736E6563, 0xEC00000068636565, v40);
  v41 = v102;
  v42 = Bool._bridgeToObjectiveC()().super.super.isa;
  v43 = swift_isUniquelyReferenced_nonNull_native();
  v102 = v41;
  sub_10029163C(v42, 0xD000000000000013, 0x80000001002FBCB0, v43);
  v44 = v102;
  v45 = Bool._bridgeToObjectiveC()().super.super.isa;
  v46 = swift_isUniquelyReferenced_nonNull_native();
  v102 = v44;
  sub_10029163C(v45, 0x676769725444494CLL, 0xEC00000064657265, v46);
  v47 = v102;
  v48 = Bool._bridgeToObjectiveC()().super.super.isa;
  v49 = swift_isUniquelyReferenced_nonNull_native();
  v102 = v47;
  sub_10029163C(v48, 0x696C617551776F6CLL, 0xEC000000544D7974, v49);
  v50 = v102;
  v51 = Bool._bridgeToObjectiveC()().super.super.isa;
  v52 = swift_isUniquelyReferenced_nonNull_native();
  v102 = v50;
  sub_10029163C(v51, 0x736944747365426ELL, 0xEC00000079616C70, v52);
  v53 = v102;
  v54 = OBJC_IVAR____TtC17SequoiaTranslator32SpeechTranslationInstrumentation_firstResult;
  swift_beginAccess();
  v55 = v1 + v54;
  v56 = v93;
  sub_10001F620(v55, v93, &qword_1003B5130, &unk_1002E4220);
  v57 = v97;
  v58 = *(v97 + 48);
  if (v58(v56, 1, v10) == 1)
  {
    sub_100009EBC(v56, &qword_1003B5130, &unk_1002E4220);
  }

  else
  {
    v59 = v89;
    (*(v57 + 32))(v89, v56, v10);
    Date.timeIntervalSince(_:)();
    v60 = Double._bridgeToObjectiveC()().super.super.isa;
    v61 = swift_isUniquelyReferenced_nonNull_native();
    v101 = v53;
    sub_10029163C(v60, 0xD000000000000011, 0x80000001002FBD10, v61);
    v53 = v101;
    (*(v57 + 8))(v59, v10);
  }

  v62 = OBJC_IVAR____TtC17SequoiaTranslator32SpeechTranslationInstrumentation_firstTranslation;
  swift_beginAccess();
  v63 = v1 + v62;
  v64 = v94;
  sub_10001F620(v63, v94, &qword_1003B5130, &unk_1002E4220);
  if (v58(v64, 1, v10) == 1)
  {
    sub_100009EBC(v64, &qword_1003B5130, &unk_1002E4220);
  }

  else
  {
    v65 = v90;
    (*(v57 + 32))(v90, v64, v10);
    Date.timeIntervalSince(_:)();
    v66 = Double._bridgeToObjectiveC()().super.super.isa;
    v67 = swift_isUniquelyReferenced_nonNull_native();
    v100 = v53;
    sub_10029163C(v66, 0xD00000000000001CLL, 0x80000001002FBCF0, v67);
    v53 = v100;
    (*(v57 + 8))(v65, v10);
  }

  v68 = OBJC_IVAR____TtC17SequoiaTranslator32SpeechTranslationInstrumentation_firstTTS;
  swift_beginAccess();
  v69 = v1 + v68;
  v70 = v95;
  sub_10001F620(v69, v95, &qword_1003B5130, &unk_1002E4220);
  if (v58(v70, 1, v10) == 1)
  {
    sub_100009EBC(v70, &qword_1003B5130, &unk_1002E4220);
    sub_1000B0530();
    v71 = NSNumber.init(floatLiteral:)(-1.0).super.super.isa;
    v72 = swift_isUniquelyReferenced_nonNull_native();
    v99 = v53;
    sub_10029163C(v71, 0x69466F54656D6974, 0xEE00535454747372, v72);
    v73 = v99;
  }

  else
  {
    v74 = v91;
    (*(v57 + 32))(v91, v70, v10);
    Date.timeIntervalSince(_:)();
    v75 = Double._bridgeToObjectiveC()().super.super.isa;
    v76 = swift_isUniquelyReferenced_nonNull_native();
    v99 = v53;
    sub_10029163C(v75, 0x69466F54656D6974, 0xEE00535454747372, v76);
    v73 = v99;
    (*(v57 + 8))(v74, v10);
  }

  v77 = OBJC_IVAR____TtC17SequoiaTranslator32SpeechTranslationInstrumentation_firstLID;
  swift_beginAccess();
  v78 = v1 + v77;
  v79 = v96;
  sub_10001F620(v78, v96, &qword_1003B5130, &unk_1002E4220);
  if (v58(v79, 1, v10) == 1)
  {
    sub_100009EBC(v79, &qword_1003B5130, &unk_1002E4220);
  }

  else
  {
    v80 = v92;
    (*(v57 + 32))(v92, v79, v10);
    Date.timeIntervalSince(_:)();
    v81 = Double._bridgeToObjectiveC()().super.super.isa;
    v82 = swift_isUniquelyReferenced_nonNull_native();
    v98 = v73;
    sub_10029163C(v81, 0x494C6F74656D6974, 0xE900000000000044, v82);
    v73 = v98;
    (*(v57 + 8))(v80, v10);
  }

  v83 = Int._bridgeToObjectiveC()().super.super.isa;
  v84 = swift_isUniquelyReferenced_nonNull_native();
  v98 = v73;
  sub_10029163C(v83, 0xD000000000000012, 0x80000001002FBC60, v84);
  v85 = v98;
  v86 = Int._bridgeToObjectiveC()().super.super.isa;
  v87 = swift_isUniquelyReferenced_nonNull_native();
  v98 = v85;
  sub_10029163C(v86, 0x6B6F547475706E69, 0xEF746E756F436E65, v87);
  return v98;
}

uint64_t sub_10024AB0C(uint64_t a1, unint64_t a2)
{
  v5 = sub_100005AD4(&qword_1003B7A08, &qword_1002E78E8);
  __chkstk_darwin(v5 - 8);
  v7 = &v20 - v6;
  v8 = type metadata accessor for CharacterSet();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtC17SequoiaTranslator21StableStringExtractor_segmentationCharacters;
  swift_beginAccess();
  sub_10001F620(v2 + v12, v7, &qword_1003B7A08, &qword_1002E78E8);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_100009EBC(v7, &qword_1003B7A08, &qword_1002E78E8);
LABEL_9:
    v18 = 1;
    return v18 & 1;
  }

  (*(v9 + 32))(v11, v7, v8);
  v13 = sub_10025F730(a1, a2);
  if (!v14)
  {
    goto LABEL_8;
  }

  v15 = v14;
  v16 = v13;
  if ((sub_10024B340(v13, v14) & 0x100000000) != 0)
  {

    goto LABEL_8;
  }

  v17 = sub_10024B490(v16, v15);

  if (v17 != 1)
  {
LABEL_8:
    (*(v9 + 8))(v11, v8);
    goto LABEL_9;
  }

  v18 = CharacterSet.contains(_:)();
  (*(v9 + 8))(v11, v8);
  return v18 & 1;
}

uint64_t sub_10024AD50(uint64_t a1, char a2)
{
  v3 = v2;
  sub_10001F620(a1, v30, &unk_1003B9EC0, &qword_1002D7480);
  if (v31)
  {
    sub_1000085CC(v30, v31);
    v6 = dispatch thunk of TranslationResult.alternatives.getter();
    if (*(v6 + 16))
    {
      sub_100031DD8(v6 + 32, v32);

      sub_1000085CC(v32, v33);
      v7 = dispatch thunk of TranslationAlternative.stableString.getter();
      v9 = v8;
      sub_100008664(v32);
      sub_100008664(v30);
      if (v9)
      {
        goto LABEL_8;
      }
    }

    else
    {

      sub_100008664(v30);
    }
  }

  else
  {
    sub_100009EBC(v30, &unk_1003B9EC0, &qword_1002D7480);
  }

  v7 = 0;
  v9 = 0xE000000000000000;
LABEL_8:
  if (qword_1003A92B0 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  sub_1000078E8(v10, qword_1003D2920);

  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v32[0] = v14;
    *v13 = 136642819;
    *(v13 + 4) = sub_10028D78C(v7, v9, v32);
    _os_log_impl(&_mh_execute_header, v11, v12, "TTS: current full stable string from: %{sensitive}s", v13, 0xCu);
    sub_100008664(v14);
  }

  v15 = HIBYTE(v9) & 0xF;
  if ((v9 & 0x2000000000000000) == 0)
  {
    v15 = v7 & 0xFFFFFFFFFFFFLL;
  }

  if (!v15)
  {
    goto LABEL_21;
  }

  v16 = String.count.getter();

  sub_10024BA98(v16, v7, v9);

  v17 = static String._fromSubstring(_:)();
  v19 = v18;

  v20 = HIBYTE(v19) & 0xF;
  if ((v19 & 0x2000000000000000) == 0)
  {
    v20 = v17 & 0xFFFFFFFFFFFFLL;
  }

  if (!v20 || (sub_10024AB0C(v17, v19) & 1) == 0 && (a2 & 1) == 0)
  {

LABEL_21:
    v17 = 0;
    v19 = 0xE000000000000000;
    goto LABEL_22;
  }

  *(v3 + 16) = v7;
  *(v3 + 24) = v9;
LABEL_22:

  if ((a2 & 1) == 0)
  {
    goto LABEL_35;
  }

  v21 = *(v3 + 24);
  v22 = *(v3 + 16) & 0xFFFFFFFFFFFFLL;
  if ((v21 & 0x2000000000000000) != 0)
  {
    v22 = HIBYTE(v21) & 0xF;
  }

  if (!v22)
  {
    sub_10001F620(a1, v32, &unk_1003B9EC0, &qword_1002D7480);
    if (v33)
    {
      sub_1000085CC(v32, v33);
      v23 = dispatch thunk of TranslationResult.disambiguableResult.getter();
      if (v23)
      {
        v24 = v23;
        v25 = [v23 targetText];

        v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v27 = v26;

        sub_100008664(v32);
LABEL_33:

        v19 = v27;
        goto LABEL_34;
      }

      sub_100008664(v32);
    }

    else
    {
      sub_100009EBC(v32, &unk_1003B9EC0, &qword_1002D7480);
    }

    v17 = 0;
    v27 = 0xE000000000000000;
    goto LABEL_33;
  }

LABEL_34:
  *(v3 + 16) = 0;
  *(v3 + 24) = 0xE000000000000000;

LABEL_35:
  v28 = HIBYTE(v19) & 0xF;
  if ((v19 & 0x2000000000000000) == 0)
  {
    v28 = v17 & 0xFFFFFFFFFFFFLL;
  }

  if (!v28)
  {

    return 0;
  }

  return v17;
}

uint64_t sub_10024B17C()
{

  sub_100009EBC(v0 + OBJC_IVAR____TtC17SequoiaTranslator21StableStringExtractor_segmentationCharacters, &qword_1003B7A08, &qword_1002E78E8);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for StableStringExtractor(uint64_t a1)
{
  result = qword_1003BA3F0;
  if (!qword_1003BA3F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10024B24C(uint64_t a1)
{
  sub_10024B2E8(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_10024B2E8(uint64_t a1)
{
  if (!qword_1003BA400)
  {
    type metadata accessor for CharacterSet();
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_1003BA400);
    }
  }
}

unint64_t sub_10024B340(unint64_t a1, unint64_t a2)
{
  if ((a2 & 0x2000000000000000) != 0)
  {
    v2 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v2)
  {
    v5 = sub_10024B6E0(0xFuLL, a1, a2);
    if ((a2 & 0x1000000000000000) != 0)
    {
      v8 = _StringGuts.foreignErrorCorrectedScalar(startingAt:)();
    }

    else
    {
      v6 = v5 >> 16;
      if ((a2 & 0x2000000000000000) != 0)
      {
        v16[0] = a1;
        v16[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        v7 = v16 + v6;
      }

      else if ((a1 & 0x1000000000000000) != 0)
      {
        v7 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32 + v6);
      }

      else
      {
        v7 = (_StringObject.sharedUTF8.getter() + v6);
      }

      v8 = *v7;
      if (*v7 < 0)
      {
        v9 = (__clz(v8 ^ 0xFF) - 24);
        if (v9 > 2)
        {
          if (v9 == 3)
          {
            v10 = v7[1];
            v11 = v7[2];
            v12 = ((v8 & 0xF) << 12) | ((v10 & 0x3F) << 6);
          }

          else
          {
            v13 = v7[1];
            v14 = v7[2];
            v11 = v7[3];
            v12 = ((v8 & 0xF) << 18) | ((v13 & 0x3F) << 12) | ((v14 & 0x3F) << 6);
          }

          v8 = v12 & 0xFFFFFFC0 | v11 & 0x3F;
        }

        else if (v9 != 1)
        {
          v8 = v7[1] & 0x3F | ((v8 & 0x1F) << 6);
        }
      }
    }
  }

  else
  {
    v8 = 0;
  }

  LOBYTE(v16[0]) = v2 == 0;
  return v8 | ((v2 == 0) << 32);
}

unint64_t sub_10024B490(unint64_t a1, unint64_t a2)
{
  v4 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v4 = a1;
  }

  v5 = 7;
  if (((a2 >> 60) & ((a1 & 0x800000000000000) == 0)) != 0)
  {
    v5 = 11;
  }

  v6 = v5 | (v4 << 16);
  v7 = sub_10024B778(0xFuLL, a1, a2);
  v8 = sub_10024B778(v6, a1, a2);
  result = v7;
  v10 = v7 >> 14;
  v11 = v8 >> 14;
  if (v10 >= v8 >> 14)
  {
    if (v11 >= v10)
    {
      return 0;
    }

    v13 = 0;
    while (1)
    {
      while (1)
      {
        if (__OFSUB__(v13--, 1))
        {
          goto LABEL_41;
        }

        if ((a2 & 0x1000000000000000) == 0)
        {
          break;
        }

        result = String.UnicodeScalarView._foreignIndex(before:)();
        if (v11 >= result >> 14)
        {
          return v13;
        }
      }

      v20 = result >> 16;
      if ((a2 & 0x2000000000000000) != 0)
      {
        v29 = a1;
        v30 = a2 & 0xFFFFFFFFFFFFFFLL;
        if ((*(&v28 + v20 + 7) & 0xC0) == 0x80)
        {
          v26 = -2;
          do
          {
            v27 = *(&v29 + v20 + v26--) & 0xC0;
          }

          while (v27 == 128);
          v25 = v26 + 1;
          goto LABEL_36;
        }
      }

      else
      {
        v21 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
        if ((a1 & 0x1000000000000000) == 0)
        {
          v28 = result;
          v21 = _StringObject.sharedUTF8.getter();
          result = v28;
        }

        v22 = v21 + v20;
        if ((*(v22 - 1) & 0xC0) == 0x80)
        {
          v23 = -2;
          do
          {
            v24 = *(v22 + v23--) & 0xC0;
          }

          while (v24 == 128);
          v25 = v23 + 1;
          goto LABEL_36;
        }
      }

      v25 = -1;
LABEL_36:
      result = (result + (v25 << 16)) & 0xFFFFFFFFFFFF0000 | 5;
      if (v11 >= result >> 14)
      {
        return v13;
      }
    }
  }

  for (i = 0; ; ++i)
  {
    v13 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if ((a2 & 0x1000000000000000) != 0)
    {
      result = String.UnicodeScalarView._foreignIndex(after:)();
    }

    else
    {
      v14 = result >> 16;
      if ((a2 & 0x2000000000000000) != 0)
      {
        v29 = a1;
        v30 = a2 & 0xFFFFFFFFFFFFFFLL;
        v16 = *(&v29 + v14);
      }

      else
      {
        v15 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
        if ((a1 & 0x1000000000000000) == 0)
        {
          v15 = _StringObject.sharedUTF8.getter();
        }

        v16 = *(v15 + v14);
      }

      v17 = v16;
      v18 = __clz(v16 ^ 0xFF) - 24;
      if (v17 >= 0)
      {
        LOBYTE(v18) = 1;
      }

      result = ((v14 + v18) << 16) | 5;
    }

    if (v11 <= result >> 14)
    {
      return v13;
    }
  }

  __break(1u);
LABEL_41:
  __break(1u);
  return result;
}

unint64_t sub_10024B6E0(unint64_t result, unint64_t a2, unint64_t a3)
{
  v3 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v3) = 1;
  }

  if ((result & 1) == 0 || (result & 0xC) == 4 << v3)
  {
    goto LABEL_9;
  }

  v4 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v4 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v4 <= result >> 16)
  {
    __break(1u);
LABEL_9:
    result = sub_10024BA24(result, a2, a3);
    if ((result & 1) == 0)
    {
      return result & 0xC | sub_10024B884(result, a2, a3) & 0xFFFFFFFFFFFFFFF3 | 1;
    }
  }

  return result;
}

unint64_t sub_10024B778(unint64_t result, unint64_t a2, unint64_t a3)
{
  v3 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v3) = 1;
  }

  if ((result & 1) == 0 || (result & 0xC) == 4 << v3)
  {
    goto LABEL_9;
  }

  v4 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v4 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v4 < result >> 16)
  {
    __break(1u);
LABEL_9:
    result = sub_10024B810(result, a2, a3);
    if ((result & 1) == 0)
    {
      return result & 0xC | sub_10024B884(result, a2, a3) & 0xFFFFFFFFFFFFFFF3 | 1;
    }
  }

  return result;
}

unint64_t sub_10024B810(unint64_t result, unint64_t a2, unint64_t a3)
{
  v3 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v3) = 1;
  }

  if ((result & 0xC) == 4 << v3)
  {
    v5 = a2;
    v6 = a3;
    result = sub_10024B9A8(result, a2, a3);
    a2 = v5;
    a3 = v6;
  }

  v4 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v4 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v4 < result >> 16)
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_10024B884(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0xC000) != 0 || result < 0x10000)
  {
    result &= 0xFFFFFFFFFFFF0000;
  }

  else
  {
    v5 = result >> 16;
    if ((a3 & 0x1000000000000000) == 0)
    {
      v13[2] = v3;
      v13[3] = v4;
      if ((a3 & 0x2000000000000000) != 0)
      {
        v13[0] = a2;
        v13[1] = a3 & 0xFFFFFFFFFFFFFFLL;
        if (v5 != (HIBYTE(a3) & 0xF) && (*(v13 + v5) & 0xC0) == 0x80)
        {
          do
          {
            v7 = v5 - 1;
            v11 = *(&v12 + v5-- + 7) & 0xC0;
          }

          while (v11 == 128);
          return v7 << 16;
        }

        goto LABEL_14;
      }

      if ((a2 & 0x1000000000000000) != 0)
      {
        v6 = (a3 & 0xFFFFFFFFFFFFFFFLL) + 32;
        if (v5 == (a2 & 0xFFFFFFFFFFFFLL))
        {
          goto LABEL_14;
        }
      }

      else
      {
        v12 = result >> 16;
        v6 = _StringObject.sharedUTF8.getter();
        v5 = v12;
        if (v12 == v10)
        {
          goto LABEL_14;
        }
      }

      if ((*(v6 + v5) & 0xC0) == 0x80)
      {
        do
        {
          v7 = v5 - 1;
          v8 = *(v6 - 1 + v5--) & 0xC0;
        }

        while (v8 == 128);
        return v7 << 16;
      }

LABEL_14:
      v7 = v5;
      return v7 << 16;
    }

    v9 = HIBYTE(a3) & 0xF;
    if ((a3 & 0x2000000000000000) == 0)
    {
      v9 = a2 & 0xFFFFFFFFFFFFLL;
    }

    if (v5 != v9)
    {

      return _StringGuts.foreignScalarAlign(_:)();
    }
  }

  return result;
}

unint64_t sub_10024B9A8(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = String.UTF16View.index(_:offsetBy:)();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = String.UTF8View._foreignIndex(_:offsetBy:)();
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

unint64_t sub_10024BA24(unint64_t result, unint64_t a2, unint64_t a3)
{
  v3 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v3) = 1;
  }

  if ((result & 0xC) == 4 << v3)
  {
    v5 = a2;
    v6 = a3;
    result = sub_10024B9A8(result, a2, a3);
    a2 = v5;
    a3 = v6;
  }

  v4 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v4 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v4 <= result >> 16)
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_10024BA98(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_14:
    __break(1u);
    return result;
  }

  if ((a3 & 0x2000000000000000) != 0)
  {
    v3 = HIBYTE(a3) & 0xF;
  }

  else
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  v4 = 7;
  if (((a3 >> 60) & ((a2 & 0x800000000000000) == 0)) != 0)
  {
    v4 = 11;
  }

  v5 = v4 | (v3 << 16);
  result = String.index(_:offsetBy:limitedBy:)();
  if (v6)
  {
    result = v5;
  }

  if (4 * v3 < result >> 14)
  {
    goto LABEL_14;
  }

  return String.subscript.getter();
}

uint64_t sub_10024BB48(uint64_t a1, unsigned int a2)
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

uint64_t sub_10024BB90(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_10024BC04(uint64_t a1, char a2, uint64_t a3, char a4)
{
  if (a2)
  {
    if (a2 == 1)
    {
      if (a4 == 1)
      {
LABEL_4:
        sub_10024BC84();
        return static NSObject.== infix(_:_:)() & 1;
      }
    }

    else if (a4 == 2)
    {
      goto LABEL_4;
    }
  }

  else if (!a4)
  {
    goto LABEL_4;
  }

  return 0;
}

unint64_t sub_10024BC84()
{
  result = qword_1003B2A60;
  if (!qword_1003B2A60)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1003B2A60);
  }

  return result;
}

id sub_10024BCD0()
{
  v1 = *v0;
  if (*v0)
  {
    v2 = *(v0 + 64);
    v36[0] = *(v0 + 48);
    *v35 = v2;
    *&v35[9] = *(v0 + 73);
    sub_10001F620(v36, &v33, &qword_1003BA588, &unk_1002EB860);
    v3 = v1;
    sub_100005AD4(&qword_1003B12A0, &qword_1002DE3D0);
    Binding.wrappedValue.getter();
    v4 = v33;
    v5 = BYTE8(v33);
    *v35 = *(v0 + 96);
    v35[16] = *(v0 + 112);
    sub_100005AD4(&qword_1003BA760, &qword_1002DC950);
    Binding.projectedValue.getter();
    v6 = *(v0 + 16);
    if (v6)
    {
      v30 = v33;
      v28 = v34;
      v33 = *(v0 + 120);
      sub_10001F620(&v33, v35, &qword_1003BA590, &qword_1002EB870);

      sub_100005AD4(&qword_1003BA598, &qword_1002EB878);
      UIViewControllerRepresentableContext.coordinator.getter();
      v7 = *(v0 + 32);
      if (v7)
      {
        v8 = *(&v36[0] + 1);
        v26 = *(&v33 + 1);
        *v35 = *(v0 + 192);
        *&v35[16] = *(v0 + 208);
        v29 = v7;
        sub_100005AD4(&qword_1003B40D8, &qword_1002EB880);
        Binding.wrappedValue.getter();
        v27 = v32;
        v9 = type metadata accessor for StaticImageViewController();
        v10 = objc_allocWithZone(v9);
        v11 = &v10[OBJC_IVAR____TtC17SequoiaTranslator25StaticImageViewController_image];
        *v11 = 0;
        v11[8] = -1;
        v12 = &v10[OBJC_IVAR____TtC17SequoiaTranslator25StaticImageViewController_narrowViewport];
        *v12 = 0u;
        *(v12 + 1) = 0u;
        v12[32] = 1;
        *&v10[OBJC_IVAR____TtC17SequoiaTranslator25StaticImageViewController_scrollView] = 0;
        *&v10[OBJC_IVAR____TtC17SequoiaTranslator25StaticImageViewController_imageView] = 0;
        *&v10[OBJC_IVAR____TtC17SequoiaTranslator25StaticImageViewController_currentTranslationView] = 0;
        *&v10[OBJC_IVAR____TtC17SequoiaTranslator25StaticImageViewController_retranslateSubscription] = 0;
        *&v10[OBJC_IVAR____TtC17SequoiaTranslator25StaticImageViewController_visualTranslationLocaleSubscription] = 0;
        *&v10[OBJC_IVAR____TtC17SequoiaTranslator25StaticImageViewController_targetLocaleSubscription] = 0;
        v10[OBJC_IVAR____TtC17SequoiaTranslator25StaticImageViewController_availability] = 0;
        *&v10[OBJC_IVAR____TtC17SequoiaTranslator25StaticImageViewController_availabilitySubscription] = 0;
        v10[OBJC_IVAR____TtC17SequoiaTranslator25StaticImageViewController_showErrorOnNextEvent] = 0;
        v10[OBJC_IVAR____TtC17SequoiaTranslator25StaticImageViewController_pendingRetranslation] = 0;
        v13 = &v10[OBJC_IVAR____TtC17SequoiaTranslator25StaticImageViewController_delegate];
        *&v10[OBJC_IVAR____TtC17SequoiaTranslator25StaticImageViewController_delegate + 8] = 0;
        swift_unknownObjectWeakInit();
        *&v10[OBJC_IVAR____TtC17SequoiaTranslator25StaticImageViewController_translationHostingController] = 0;
        *&v10[OBJC_IVAR____TtC17SequoiaTranslator25StaticImageViewController_conversation] = v3;
        *&v10[OBJC_IVAR____TtC17SequoiaTranslator25StaticImageViewController_translationOverlayModel] = v8;
        *&v10[OBJC_IVAR____TtC17SequoiaTranslator25StaticImageViewController_context] = v6;
        v14 = *v11;
        *v11 = v4;
        v15 = v4;
        v16 = v11[8];
        v11[8] = v5;
        sub_10001F620(v36, v35, &qword_1003BA588, &unk_1002EB860);
        v25 = v3;

        sub_10011C910(v15, v5);
        sub_10011C8FC(v14, v16);
        *&v10[OBJC_IVAR____TtC17SequoiaTranslator25StaticImageViewController_configuration] = v26;
        v17 = &v10[OBJC_IVAR____TtC17SequoiaTranslator25StaticImageViewController__hasTranslatedText];
        *v17 = v30;
        v17[16] = v28;
        type metadata accessor for ChromeBar();
        v18 = objc_allocWithZone(swift_getObjCClassFromMetadata());
        sub_10001F620(&v33, v35, &qword_1003BA590, &qword_1002EB870);

        v19 = [v18 init];
        *&v10[OBJC_IVAR____TtC17SequoiaTranslator25StaticImageViewController_materialView] = v19;
        *(v13 + 1) = &off_10038B020;
        swift_unknownObjectWeakAssign();

        *&v10[OBJC_IVAR____TtC17SequoiaTranslator25StaticImageViewController_favoritesImporter] = v29;
        *&v10[OBJC_IVAR____TtC17SequoiaTranslator25StaticImageViewController_selfLoggingInvocation] = v27;
        v31.receiver = v10;
        v31.super_class = v9;
        v20 = objc_msgSendSuper2(&v31, "initWithNibName:bundle:", 0, 0);
        sub_100009EBC(&v33, &qword_1003BA590, &qword_1002EB870);

        sub_10011C8FC(v15, v5);
        sub_100009EBC(v36, &qword_1003BA588, &unk_1002EB860);

        sub_10024FC8C();
        return v20;
      }

      type metadata accessor for FavoritesImporter();
      v22 = &qword_1003B1508;
      v23 = type metadata accessor for FavoritesImporter;
      v24 = &unk_1002DD894;
    }

    else
    {
      type metadata accessor for ConversationContext(0);
      v22 = &unk_1003BC490;
      v23 = type metadata accessor for ConversationContext;
      v24 = &unk_1002D86C0;
    }
  }

  else
  {
    type metadata accessor for ConversationManager(0);
    v22 = &qword_1003B1368;
    v23 = type metadata accessor for ConversationManager;
    v24 = &unk_1002DA0B4;
  }

  sub_10024CB0C(v22, v23, v24);
  result = EnvironmentObject.error()();
  __break(1u);
  return result;
}

void sub_10024C214(uint64_t a1)
{
  v2 = a1 + OBJC_IVAR____TtC17SequoiaTranslator25StaticImageViewController_image;
  v3 = *(a1 + OBJC_IVAR____TtC17SequoiaTranslator25StaticImageViewController_image);
  v4 = *(a1 + OBJC_IVAR____TtC17SequoiaTranslator25StaticImageViewController_image + 8);
  sub_10011C910(v3, v4);
  sub_100005AD4(&qword_1003B12A0, &qword_1002DE3D0);
  Binding.wrappedValue.getter();
  v5 = v13;
  v6 = v14;
  if (v4 == 255)
  {
    if (v14 == 255)
    {
      goto LABEL_18;
    }

    goto LABEL_16;
  }

  if (v14 == 255)
  {
    v5 = v3;
    v6 = v4;
    goto LABEL_16;
  }

  if (!v4)
  {
    if (v14)
    {
      sub_10011C8FC(v13, v14);
      v5 = v3;
      v6 = 0;
      goto LABEL_16;
    }

    sub_10024BC84();
    v7 = static NSObject.== infix(_:_:)();
    sub_10011C8FC(v13, 0);
    v8 = v3;
    v9 = 0;
LABEL_24:
    sub_10011C8FC(v8, v9);
    if (v7)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  if (v4 != 1)
  {
    if (v14 != 2)
    {
      sub_10011C8FC(v13, v14);
      v5 = v3;
      v6 = 2;
      goto LABEL_16;
    }

    sub_10024BC84();
    v7 = static NSObject.== infix(_:_:)();
    sub_10011C8FC(v13, 2);
    v8 = v3;
    v9 = 2;
    goto LABEL_24;
  }

  if (v14 == 1)
  {
    sub_10024BC84();
    v7 = static NSObject.== infix(_:_:)();
    sub_10011C8FC(v13, 1);
    v8 = v3;
    v9 = 1;
    goto LABEL_24;
  }

  sub_10011C8FC(v13, v14);
  v5 = v3;
  v6 = 1;
LABEL_16:
  sub_10011C8FC(v5, v6);
LABEL_17:
  Binding.wrappedValue.getter();
  v10 = *v2;
  *v2 = *&v13;
  v11 = *(v2 + 8);
  *(v2 + 8) = v14;
  sub_10011C910(v13, v14);
  sub_10011C8FC(v10, v11);
  sub_10024DD94();
  sub_10011C8FC(v13, v14);
LABEL_18:
  sub_100005AD4(&qword_1003AEDD0, &unk_1002E1C90);
  Binding.wrappedValue.getter();
  if (*&v13 > 0.0)
  {
    Binding.wrappedValue.getter();
    Binding.wrappedValue.getter();
    Binding.wrappedValue.getter();
    Binding.wrappedValue.getter();
    v12 = a1 + OBJC_IVAR____TtC17SequoiaTranslator25StaticImageViewController_narrowViewport;
    if ((*(a1 + OBJC_IVAR____TtC17SequoiaTranslator25StaticImageViewController_narrowViewport + 32) & 1) != 0 || (v15.origin.x = 0.0, v15.size.width = 0.0, *&v15.origin.y = v13, v15.size.height = *&v13 - *&v13, !CGRectEqualToRect(*v12, v15)))
    {
      *v12 = 0;
      *(v12 + 8) = *&v13;
      *(v12 + 16) = 0;
      *(v12 + 24) = *&v13 - *&v13;
      *(v12 + 32) = 0;
      sub_100252370();
      sub_10024D348();
    }
  }
}

void sub_10024C590(uint64_t a1, char a2)
{
  v2 = a1;
  sub_10010C2EC(a1, a2);
  if (qword_1003A91F8 != -1)
  {
    swift_once();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if ((v5 == 5 || (sub_10010BA50(v2, v5) & 1) == 0) && UIAccessibilityIsVoiceOverRunning())
  {
    v3 = UIAccessibilityAnnouncementNotification;
    sub_10010BBD4(v2);
    v4 = String._bridgeToObjectiveC()();

    UIAccessibilityPostNotification(v3, v4);
  }
}

uint64_t sub_10024C69C()
{
  v1 = *(v0 + 192);
  v8[10] = *(v0 + 176);
  v8[11] = v1;
  v8[12] = *(v0 + 208);
  v9 = *(v0 + 224);
  v2 = *(v0 + 128);
  v8[6] = *(v0 + 112);
  v8[7] = v2;
  v3 = *(v0 + 160);
  v8[8] = *(v0 + 144);
  v8[9] = v3;
  v4 = *(v0 + 64);
  v8[2] = *(v0 + 48);
  v8[3] = v4;
  v5 = *(v0 + 96);
  v8[4] = *(v0 + 80);
  v8[5] = v5;
  v6 = *(v0 + 32);
  v8[0] = *(v0 + 16);
  v8[1] = v6;
  sub_10024CBB0(v8);
  return swift_deallocClassInstance();
}

__n128 sub_10024C734(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 144);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 144) = v8;
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  result = *(a2 + 160);
  v10 = *(a2 + 176);
  v11 = *(a2 + 192);
  *(a1 + 208) = *(a2 + 208);
  *(a1 + 176) = v10;
  *(a1 + 192) = v11;
  *(a1 + 160) = result;
  return result;
}

uint64_t sub_10024C778(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 216))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 56);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10024C7C0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 216) = 1;
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
      *(result + 56) = (a2 - 1);
      return result;
    }

    *(result + 216) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

double sub_10024C898(uint64_t a1)
{
  *(a1 + OBJC_IVAR____TtC17SequoiaTranslator25StaticImageViewController_availabilitySubscription) = 0;

  *(a1 + OBJC_IVAR____TtC17SequoiaTranslator25StaticImageViewController_retranslateSubscription) = 0;

  *(a1 + OBJC_IVAR____TtC17SequoiaTranslator25StaticImageViewController_visualTranslationLocaleSubscription) = 0;

  *(a1 + OBJC_IVAR____TtC17SequoiaTranslator25StaticImageViewController_targetLocaleSubscription) = 0;

  return result;
}

uint64_t sub_10024C914@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 176);
  v18[10] = *(v1 + 160);
  v18[11] = v3;
  v18[12] = *(v1 + 192);
  v19 = *(v1 + 208);
  v4 = *(v1 + 112);
  v18[6] = *(v1 + 96);
  v18[7] = v4;
  v5 = *(v1 + 144);
  v18[8] = *(v1 + 128);
  v18[9] = v5;
  v6 = *(v1 + 48);
  v18[2] = *(v1 + 32);
  v18[3] = v6;
  v7 = *(v1 + 80);
  v18[4] = *(v1 + 64);
  v18[5] = v7;
  v8 = *(v1 + 16);
  v18[0] = *v1;
  v18[1] = v8;
  type metadata accessor for StaticImageView.Coordinator();
  v9 = swift_allocObject();
  v10 = *(v1 + 176);
  *(v9 + 176) = *(v1 + 160);
  *(v9 + 192) = v10;
  *(v9 + 208) = *(v1 + 192);
  *(v9 + 224) = *(v1 + 208);
  v11 = *(v1 + 112);
  *(v9 + 112) = *(v1 + 96);
  *(v9 + 128) = v11;
  v12 = *(v1 + 144);
  *(v9 + 144) = *(v1 + 128);
  *(v9 + 160) = v12;
  v13 = *(v1 + 48);
  *(v9 + 48) = *(v1 + 32);
  *(v9 + 64) = v13;
  v14 = *(v1 + 80);
  *(v9 + 80) = *(v1 + 64);
  *(v9 + 96) = v14;
  v15 = *(v1 + 16);
  *(v9 + 16) = *v1;
  *(v9 + 32) = v15;
  *a1 = v9;
  return sub_10024CAD4(v18, v17);
}

uint64_t sub_10024C9E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10024CB54();

  return static UIViewControllerRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_10024CA44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10024CB54();

  return static UIViewControllerRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_10024CAA8(uint64_t a1)
{
  sub_10024CB54();
  UIViewControllerRepresentable.body.getter();
  __break(1u);
}

uint64_t sub_10024CB0C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_10024CB54()
{
  result = qword_1003BA5A0;
  if (!qword_1003BA5A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003BA5A0);
  }

  return result;
}

double sub_10024CBE0@<D0>(_OWORD *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  result = *&v4;
  *a2 = v4;
  return result;
}

uint64_t sub_10024CC60(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  swift_getKeyPath();
  swift_getKeyPath();
  sub_100233170(v2, v3);

  return static Published.subscript.setter();
}

void sub_10024CEA0(void *a1, double a2, double a3)
{
  v7 = [objc_opt_self() sharedApplication];
  v8 = [v7 applicationState];

  if (v8 != 2)
  {
    v9 = [v3 view];
    if (v9)
    {
      v10 = v9;
      [v9 frame];
      v12 = v11;
      v14 = v13;
      v16 = v15;
      v18 = v17;

      v40.origin.x = v12;
      v40.origin.y = v14;
      v40.size.width = v16;
      v40.size.height = v18;
      Width = CGRectGetWidth(v40);
      v20 = [v3 view];
      if (v20)
      {
        v21 = v20;
        v22 = a2 / a3 > 1.0;
        [v20 frame];
        v24 = v23;
        v26 = v25;
        v28 = v27;
        v30 = v29;

        v41.origin.x = v24;
        v41.origin.y = v26;
        v41.size.width = v28;
        v41.size.height = v30;
        if (((v22 ^ (Width / CGRectGetHeight(v41) <= 1.0)) & 1) == 0)
        {
          v38 = nullsub_1;
          v39 = 0;
          v34 = _NSConcreteStackBlock;
          v35 = 1107296256;
          v36 = sub_1002A39AC;
          v37 = &unk_10038B1A8;
          v31 = _Block_copy(&v34);
          v32 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v38 = sub_100256650;
          v39 = v32;
          v34 = _NSConcreteStackBlock;
          v35 = 1107296256;
          v36 = sub_1002A39AC;
          v37 = &unk_10038B1D0;
          v33 = _Block_copy(&v34);

          [a1 animateAlongsideTransition:v31 completion:v33];
          _Block_release(v33);
          _Block_release(v31);
        }

        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }
}

void sub_10024D114(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_100252370();
  }

  swift_beginAccess();
  v4 = swift_unknownObjectWeakLoadStrong();
  if (v4)
  {
    v5 = v4;
    sub_10024D4C0();
  }
}

uint64_t sub_10024D214(uint64_t a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for StaticImageViewController();
  objc_msgSendSuper2(&v5, "applicationWillSuspend");
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  result = v3;
  if (v4 <= 2)
  {
    if (v4 == 1)
    {
      sub_10000A948(v3, 1uLL);
      return sub_100252A0C();
    }

    return sub_10000A948(v3, v4);
  }

  if (v4 <= 5 || v4 != 6)
  {
    return sub_10000A948(v3, v4);
  }

  return result;
}

void sub_10024D348()
{
  v1 = (v0 + OBJC_IVAR____TtC17SequoiaTranslator25StaticImageViewController_narrowViewport);
  if (*(v0 + OBJC_IVAR____TtC17SequoiaTranslator25StaticImageViewController_narrowViewport + 32))
  {
    return;
  }

  v2 = *(v0 + OBJC_IVAR____TtC17SequoiaTranslator25StaticImageViewController_imageView);
  if (!v2)
  {
    return;
  }

  v3 = *(v0 + OBJC_IVAR____TtC17SequoiaTranslator25StaticImageViewController_scrollView);
  if (!v3)
  {
    return;
  }

  v5 = v1[2];
  v4 = v1[3];
  v7 = *v1;
  v6 = v1[1];
  v8 = v2;
  v17 = v3;
  [v8 frame];
  v10 = v9;
  v12 = v11;
  [v17 bounds];
  v14 = v13;
  v19.origin.x = v7;
  v19.origin.y = v6;
  v19.size.width = v5;
  v19.size.height = v4;
  if (v12 < CGRectGetHeight(v19))
  {
    v20.origin.x = v7;
    v20.origin.y = v6;
    v20.size.width = v5;
    v20.size.height = v4;
    v15 = vabdd_f64(CGRectGetHeight(v20), v12) * 0.5;
    v16 = 0.0;
    if (v10 >= v14)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  v15 = 0.0;
  v16 = 0.0;
  if (v10 < v14)
  {
LABEL_9:
    v16 = (v14 - v10) * 0.5;
  }

LABEL_10:
  [v17 setContentOffset:{-v16, -v6 - v15}];
}

void sub_10024D4C0()
{
  v1 = *(v0 + OBJC_IVAR____TtC17SequoiaTranslator25StaticImageViewController_imageView);
  if (v1)
  {
    v2 = *(v0 + OBJC_IVAR____TtC17SequoiaTranslator25StaticImageViewController_scrollView);
    if (v2)
    {
      v21 = v1;
      v3 = v2;
      [v21 frame];
      v5 = v4;
      v7 = v6;
      v8 = v3;
      [v8 bounds];
      if (v7 >= v10)
      {
        v11 = 0.0;
      }

      else
      {
        v11 = (v10 - v7) * 0.5;
      }

      if (v5 >= v9)
      {
        v12 = 0.0;
      }

      else
      {
        v12 = (v9 - v5) * 0.5;
      }

      v13 = (v0 + OBJC_IVAR____TtC17SequoiaTranslator25StaticImageViewController_narrowViewport);
      if (*(v0 + OBJC_IVAR____TtC17SequoiaTranslator25StaticImageViewController_narrowViewport + 32))
      {

        v14 = v11;
      }

      else
      {
        v16 = v13[2];
        v15 = v13[3];
        v18 = *v13;
        v17 = v13[1];
        [v8 frame];
        v20 = v19;

        v23.origin.x = v18;
        v23.origin.y = v17;
        v23.size.width = v16;
        v23.size.height = v15;
        v14 = v11 + v20 - (v17 + CGRectGetHeight(v23));
        v11 = v11 + v17;
      }

      [v8 setContentInset:{v11, v12, v14, v12}];
    }
  }
}

void sub_10024D64C()
{
  v1 = OBJC_IVAR____TtC17SequoiaTranslator25StaticImageViewController_scrollView;
  if (*&v0[OBJC_IVAR____TtC17SequoiaTranslator25StaticImageViewController_scrollView])
  {
    return;
  }

  v2 = [objc_allocWithZone(UIScrollView) init];
  [v2 setShowsVerticalScrollIndicator:0];
  [v2 setShowsHorizontalScrollIndicator:0];
  [v2 setDelaysContentTouches:0];
  [v2 setScrollIndicatorInsets:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];
  v3 = v2;
  v4 = String._bridgeToObjectiveC()();
  [v3 setAccessibilityIdentifier:v4];

  v5 = [v0 view];
  if (!v5)
  {
    __break(1u);
    goto LABEL_16;
  }

  v6 = v5;
  v7 = v3;
  [v6 addSubview:v7];

  [v7 setTranslatesAutoresizingMaskIntoConstraints:0];
  sub_100005AD4(&unk_1003AFCC0, &unk_1002D54E0);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1002D53E0;
  v9 = [v7 topAnchor];

  v10 = [v0 view];
  if (!v10)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v11 = v10;
  v12 = [v10 topAnchor];

  v13 = [v9 constraintEqualToAnchor:v12];
  *(v8 + 32) = v13;
  v14 = [v7 leadingAnchor];

  v15 = [v0 view];
  if (!v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v16 = v15;
  v17 = [v15 leadingAnchor];

  v18 = [v14 constraintEqualToAnchor:v17];
  *(v8 + 40) = v18;
  v19 = [v7 bottomAnchor];

  v20 = [v0 view];
  if (!v20)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v21 = v20;
  v22 = [v20 bottomAnchor];

  v23 = [v19 constraintEqualToAnchor:v22];
  *(v8 + 48) = v23;
  v24 = [v7 trailingAnchor];

  v25 = [v0 view];
  if (!v25)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v26 = v25;
  v27 = objc_opt_self();
  v28 = [v26 trailingAnchor];

  v29 = [v24 constraintEqualToAnchor:v28];
  *(v8 + 56) = v29;
  sub_10000A2CC(0, &qword_1003B3480, NSLayoutConstraint_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v57 = v27;
  [v27 activateConstraints:isa];

  [v7 layoutIfNeeded];
  v31 = *&v0[v1];
  *&v0[v1] = v7;
  v32 = v7;

  v33 = OBJC_IVAR____TtC17SequoiaTranslator25StaticImageViewController_materialView;
  [*&v0[OBJC_IVAR____TtC17SequoiaTranslator25StaticImageViewController_materialView] setTranslatesAutoresizingMaskIntoConstraints:0];
  [*&v0[v33] setHidden:1];
  v34 = [v0 view];
  if (!v34)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v35 = v34;
  [v34 insertSubview:*&v0[v33] aboveSubview:v32];

  v36 = swift_allocObject();
  *(v36 + 16) = xmmword_1002D53E0;
  v37 = [*&v0[v33] topAnchor];
  v38 = [v0 view];
  if (!v38)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v39 = v38;
  v40 = [v38 topAnchor];

  v41 = [v37 constraintEqualToAnchor:v40];
  *(v36 + 32) = v41;
  v42 = [*&v0[v33] leadingAnchor];
  v43 = [v0 view];
  if (!v43)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v44 = v43;
  v45 = [v43 leadingAnchor];

  v46 = [v42 constraintEqualToAnchor:v45];
  *(v36 + 40) = v46;
  v47 = [*&v0[v33] bottomAnchor];
  v48 = [v0 view];
  if (!v48)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v49 = v48;
  v50 = [v48 bottomAnchor];

  v51 = [v47 constraintEqualToAnchor:v50];
  *(v36 + 48) = v51;
  v52 = [*&v0[v33] trailingAnchor];
  v53 = [v0 view];
  if (!v53)
  {
LABEL_24:
    __break(1u);
    return;
  }

  v54 = v53;
  v55 = [v53 trailingAnchor];

  v56 = [v52 constraintEqualToAnchor:v55];
  *(v36 + 56) = v56;
  v58.super.isa = Array._bridgeToObjectiveC()().super.isa;

  [v57 activateConstraints:v58.super.isa];
}

void sub_10024DD94()
{
  v1 = v0;
  v2 = sub_100005AD4(&qword_1003AA3B8, &unk_1002D3EF0);
  __chkstk_darwin(v2 - 8);
  v4 = &v151 - v3;
  v5 = type metadata accessor for VisualTranslationOptions();
  __chkstk_darwin(v5);
  v7 = (&v151 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = type metadata accessor for VisualTranslationView();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v151 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100005AD4(&unk_1003BA7C0, &unk_1002EBBE0);
  v13 = __chkstk_darwin(v12);
  __chkstk_darwin(v13);
  v17 = &v151 - v16;
  v18 = v1[OBJC_IVAR____TtC17SequoiaTranslator25StaticImageViewController_image + 8];
  if (v18 == 255)
  {
    return;
  }

  v170 = v7;
  v19 = *&v1[OBJC_IVAR____TtC17SequoiaTranslator25StaticImageViewController_image];
  v20 = *&v1[OBJC_IVAR____TtC17SequoiaTranslator25StaticImageViewController_scrollView];
  if (!v20)
  {
    v31 = qword_1003A9218;
    v32 = v19;
    if (v31 != -1)
    {
      swift_once();
    }

    v33 = type metadata accessor for Logger();
    sub_1000078E8(v33, qword_1003D2758);
    v170 = Logger.logObject.getter();
    v34 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v170, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 0;
      _os_log_impl(&_mh_execute_header, v170, v34, "Illegal attempt to set an image with no scroll view in place", v35, 2u);
    }

    sub_10011C8FC(v19, v18);
    goto LABEL_15;
  }

  v159 = v5;
  v160 = v15;
  v161 = v11;
  v162 = v9;
  v163 = v8;
  v168 = v14;
  v21 = OBJC_IVAR____TtC17SequoiaTranslator25StaticImageViewController_imageView;
  v22 = *&v1[OBJC_IVAR____TtC17SequoiaTranslator25StaticImageViewController_imageView];
  v23 = v20;
  sub_10011C910(v19, v18);
  v24 = [v22 image];
  if (v24)
  {
    v25 = v24;
    sub_10000A2CC(0, &qword_1003AB350, UIImage_ptr);
    sub_10011C910(v19, v18);
    v26 = v19;
    v27 = static NSObject.== infix(_:_:)();

    sub_10011C8FC(v19, v18);
    if (v27)
    {
      sub_10011C8FC(v19, v18);
      if (qword_1003A9218 != -1)
      {
        swift_once();
      }

      v28 = type metadata accessor for Logger();
      sub_1000078E8(v28, qword_1003D2758);
      v170 = Logger.logObject.getter();
      v29 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v170, v29))
      {
        v30 = swift_slowAlloc();
        *v30 = 0;
        _os_log_impl(&_mh_execute_header, v170, v29, "Calling updateImage when the image has not changed", v30, 2u);
      }

      sub_10011C8FC(v19, v18);

LABEL_15:
      v36 = v170;

      return;
    }
  }

  else
  {
    v37 = v19;
  }

  if (v1[OBJC_IVAR____TtC17SequoiaTranslator25StaticImageViewController_showErrorOnNextEvent] == 1)
  {
    v1[OBJC_IVAR____TtC17SequoiaTranslator25StaticImageViewController_showErrorOnNextEvent] = 0;
  }

  v164 = v17;
  v165 = v23;
  v154 = v4;
  if (qword_1003A9218 != -1)
  {
    swift_once();
  }

  v38 = type metadata accessor for Logger();
  v39 = sub_1000078E8(v38, qword_1003D2758);
  v40 = v1;
  v169 = v39;
  v41 = Logger.logObject.getter();
  v42 = static os_log_type_t.debug.getter();

  v43 = os_log_type_enabled(v41, v42);
  v166 = v21;
  v167 = v1;
  if (v43)
  {
    v44 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    *v44 = 138412546;
    v46 = *&v40[OBJC_IVAR____TtC17SequoiaTranslator25StaticImageViewController_currentTranslationView];
    *(v44 + 4) = v46;
    *(v44 + 12) = 2112;
    v47 = *&v167[v166];
    *(v44 + 14) = v47;
    *v45 = v46;
    v45[1] = v47;
    v48 = v46;
    v49 = v47;
    v1 = v167;
    _os_log_impl(&_mh_execute_header, v41, v42, "Removing translationView %@ and image view %@", v44, 0x16u);
    sub_100005AD4(&unk_1003AECA0, &unk_1002D3F10);
    swift_arrayDestroy();
    v21 = v166;
  }

  v50 = OBJC_IVAR____TtC17SequoiaTranslator25StaticImageViewController_currentTranslationView;
  [*&v40[OBJC_IVAR____TtC17SequoiaTranslator25StaticImageViewController_currentTranslationView] removeFromSuperview];
  v51 = *&v40[v50];
  *&v40[v50] = 0;

  v52 = *&v1[v21];
  v153 = v50;
  if (v52)
  {
    [v52 removeFromSuperview];
    v53 = *&v1[v21];
  }

  else
  {
    v53 = 0;
  }

  *&v1[v21] = 0;

  v152 = OBJC_IVAR____TtC17SequoiaTranslator25StaticImageViewController_translationHostingController;
  [*&v40[OBJC_IVAR____TtC17SequoiaTranslator25StaticImageViewController_translationHostingController] removeFromParentViewController];
  [v19 size];
  v55 = v54;
  v57 = v56;
  v58 = Logger.logObject.getter();
  v59 = static os_log_type_t.debug.getter();
  v60 = os_log_type_enabled(v58, v59);
  v158 = v40;
  if (v60)
  {
    v61 = swift_slowAlloc();
    v62 = swift_slowAlloc();
    v171[0] = v62;
    *v61 = 136446210;
    v173.width = v55;
    v173.height = v57;
    v63 = NSStringFromCGSize(v173);
    v64 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v65 = v12;
    v66 = v19;
    v67 = v18;
    v69 = v68;

    v70 = sub_10028D78C(v64, v69, v171);
    v18 = v67;
    v19 = v66;
    v12 = v65;
    v71 = v168;

    *(v61 + 4) = v70;
    v40 = v158;
    _os_log_impl(&_mh_execute_header, v58, v59, "Updating image with size %{public}s", v61, 0xCu);
    sub_100008664(v62);

    v72 = v165;
  }

  else
  {

    v72 = v165;
    v71 = v168;
  }

  v73 = [objc_allocWithZone(UIImageView) initWithImage:v19];
  v157 = v18;
  sub_10011C8FC(v19, v18);
  v74 = v73;
  [v72 addSubview:v74];
  [v72 setDelegate:v40];
  [v72 setContentSize:{v55, v57}];
  nullsub_1();
  [v72 setContentOffset:?];
  v75 = [v40 view];
  if (!v75)
  {
    __break(1u);
    goto LABEL_44;
  }

  v76 = v75;
  v155 = v74;
  v156 = v19;
  [v75 setClipsToBounds:1];

  v77 = [v40 view];
  if (!v77)
  {
LABEL_44:
    __break(1u);
    return;
  }

  v78 = v77;
  v79 = [v77 layer];

  [v79 setMasksToBounds:1];
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v171[0] = _swiftEmptyArrayStorage;
  sub_100255FD4(&qword_1003B18C8, &type metadata accessor for VisualTranslationOptions, &protocol conformance descriptor for VisualTranslationOptions);

  sub_100005AD4(&unk_1003BA7D0, &qword_1002DED78);
  sub_10001BAEC(&qword_1003B18D0, &unk_1003BA7D0, &qword_1002DED78, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v80 = v161;
  VisualTranslationView.init(observable:options:systemTranslationDismissHandler:)();

  sub_100255FD4(&qword_1003BA7E0, &type metadata accessor for VisualTranslationView, &protocol conformance descriptor for VisualTranslationView);
  v82 = v163;
  v81 = v164;
  View.navigationBarHidden(_:)();
  v162[1](v80, v82);
  (*(v71 + 16))(v160, v81, v12);
  v83 = objc_allocWithZone(sub_100005AD4(&qword_1003BA7E8, &qword_1002EBBF0));
  v84 = UIHostingController.init(rootView:)();
  v85 = [v84 view];
  if (v85)
  {
    v86 = v85;
    v163 = v12;
    v87 = [objc_opt_self() clearColor];
    [v86 setBackgroundColor:v87];

    [v86 setTranslatesAutoresizingMaskIntoConstraints:0];
    v162 = v86;
    v88 = v86;
    v89 = String._bridgeToObjectiveC()();
    [v88 setAccessibilityIdentifier:v89];

    v90 = v155;
    v91 = String._bridgeToObjectiveC()();
    [v90 setAccessibilityIdentifier:v91];

    [v90 addSubview:v88];
    v92 = objc_opt_self();
    sub_100005AD4(&unk_1003AFCC0, &unk_1002D54E0);
    v93 = swift_allocObject();
    *(v93 + 16) = xmmword_1002D53E0;
    v94 = [v88 topAnchor];
    v95 = [v90 topAnchor];

    v96 = [v94 constraintEqualToAnchor:v95];
    *(v93 + 32) = v96;
    v97 = [v88 leadingAnchor];
    v98 = [v90 leadingAnchor];

    v99 = [v97 constraintEqualToAnchor:v98];
    *(v93 + 40) = v99;
    v100 = [v88 bottomAnchor];
    v101 = [v90 bottomAnchor];

    v102 = [v100 constraintEqualToAnchor:v101];
    *(v93 + 48) = v102;
    v103 = [v88 trailingAnchor];
    v104 = [v90 trailingAnchor];

    v105 = [v103 constraintEqualToAnchor:v104];
    *(v93 + 56) = v105;
    sub_10000A2CC(0, &qword_1003B3480, NSLayoutConstraint_ptr);
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v92 activateConstraints:isa];

    v107 = v158;
    v170 = v84;
    [v158 addChildViewController:v84];
    v108 = v165;
    v109 = Logger.logObject.getter();
    v110 = static os_log_type_t.debug.getter();

    v111 = os_log_type_enabled(v109, v110);
    v165 = v108;
    if (v111)
    {
      v112 = swift_slowAlloc();
      v171[0] = swift_slowAlloc();
      *v112 = 136446466;
      [v108 frame];
      v174.width = v113;
      v174.height = v114;
      v115 = NSStringFromCGSize(v174);
      v116 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v118 = v117;

      v119 = sub_10028D78C(v116, v118, v171);

      *(v112 + 4) = v119;
      *(v112 + 12) = 2082;
      [v108 contentSize];
      v120 = NSStringFromCGSize(v175);
      v121 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v123 = v122;

      v124 = v121;
      v107 = v158;
      v125 = sub_10028D78C(v124, v123, v171);

      *(v112 + 14) = v125;
      _os_log_impl(&_mh_execute_header, v109, v110, "Scroll view size: %{public}s content view size: %{public}s", v112, 0x16u);
      swift_arrayDestroy();
    }

    [v90 setUserInteractionEnabled:1];
    v127 = v166;
    v126 = v167;
    v128 = *&v167[v166];
    *&v167[v166] = v90;
    v161 = v90;

    v129 = v153;
    v130 = *&v107[v153];
    *&v107[v153] = v162;
    v131 = v88;

    v132 = *&v107[v152];
    *&v107[v152] = v170;

    v133 = v107;
    v134 = Logger.logObject.getter();
    v135 = static os_log_type_t.debug.getter();

    v136 = os_log_type_enabled(v134, v135);
    v137 = v157;
    if (v136)
    {
      v138 = swift_slowAlloc();
      v139 = swift_slowAlloc();
      *v138 = 138412546;
      v140 = *&v107[v129];
      *(v138 + 4) = v140;
      *(v138 + 12) = 2112;
      v141 = *&v126[v127];
      *(v138 + 14) = v141;
      *v139 = v140;
      v139[1] = v141;
      v142 = v140;
      v143 = v141;
      _os_log_impl(&_mh_execute_header, v134, v135, "Created translation view %@ and image view %@", v138, 0x16u);
      sub_100005AD4(&unk_1003AECA0, &unk_1002D3F10);
      swift_arrayDestroy();
    }

    sub_100252370();
    v144 = v164;
    if ((v133[OBJC_IVAR____TtC17SequoiaTranslator25StaticImageViewController_narrowViewport + 32] & 1) == 0)
    {
      sub_10024D348();
    }

    v145 = type metadata accessor for TaskPriority();
    v146 = v154;
    (*(*(v145 - 8) + 56))(v154, 1, 1, v145);
    v147 = swift_allocObject();
    swift_unknownObjectWeakInit();
    type metadata accessor for MainActor();

    v148 = static MainActor.shared.getter();
    v149 = swift_allocObject();
    v149[2] = v148;
    v149[3] = &protocol witness table for MainActor;
    v149[4] = v147;

    sub_10005E36C(0, 0, v146, &unk_1002EBC00, v149);

    sub_10011C8FC(v156, v137);
    (*(v168 + 8))(v144, v163);
  }

  else
  {
    sub_10011C8FC(v156, v157);

    v150 = v155;
    (*(v71 + 8))(v81, v12);
  }
}

void sub_10024F004(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = *(Strong + OBJC_IVAR____TtC17SequoiaTranslator25StaticImageViewController_favoritesImporter);
    sub_1000FF6CC();
  }
}

uint64_t sub_10024F070(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a4;
  type metadata accessor for MainActor();
  v4[6] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[7] = v6;
  v4[8] = v5;

  return _swift_task_switch(sub_10024F108, v6, v5);
}

uint64_t sub_10024F108()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[9] = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    v0[10] = v2;
    *v2 = v0;
    v2[1] = sub_10024F1F8;

    return sub_1002512CC();
  }

  else
  {

    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_10024F1F8(char a1)
{
  v2 = *v1;
  *(*v1 + 88) = a1;

  v3 = *(v2 + 64);
  v4 = *(v2 + 56);

  return _swift_task_switch(sub_10024F320, v4, v3);
}

uint64_t sub_10024F320()
{
  v1 = *(v0 + 88);

  v2 = *(v0 + 72);
  if (v1 == 1)
  {
    sub_10024F3AC();
  }

  else
  {
    v2[OBJC_IVAR____TtC17SequoiaTranslator25StaticImageViewController_pendingRetranslation] = 1;
  }

  v3 = *(v0 + 8);

  return v3();
}

void sub_10024F3AC()
{
  v1 = v0;
  v2 = sub_100005AD4(&qword_1003AA3B8, &unk_1002D3EF0);
  __chkstk_darwin(v2 - 8);
  v73 = &v62 - v3;
  v4 = sub_100005AD4(&qword_1003AAE10, &unk_1002DE700);
  v5 = __chkstk_darwin(v4 - 8);
  v70 = &v62 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v8 = &v62 - v7;
  v9 = type metadata accessor for Locale();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v72 = &v62 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v12);
  v74 = &v62 - v14;
  v15 = __chkstk_darwin(v13);
  v75 = &v62 - v16;
  __chkstk_darwin(v15);
  v18 = &v62 - v17;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v19 = sub_10025318C(v18);
  v71 = v10;
  v22 = *(v10 + 8);
  v21 = v10 + 8;
  v20 = v22;
  v22(v18, v9);
  if (v19)
  {
    v23 = *(v1 + OBJC_IVAR____TtC17SequoiaTranslator25StaticImageViewController_image);
    v24 = *(v1 + OBJC_IVAR____TtC17SequoiaTranslator25StaticImageViewController_image + 8);
    if (v24 >= 2)
    {
      if (v24 != 2)
      {
        return;
      }

      v66 = 1;
    }

    else
    {
      v66 = 0;
    }

    v65 = v23;
    v25 = [v65 CGImage];
    if (v25)
    {
      v63 = v25;
      v64 = v20;
      v67 = v23;
      v68 = v24;
      v69 = v9;
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      v26 = sub_100097D4C();
      isa = Locale._bridgeToObjectiveC()().super.isa;
      v28 = [v26 oppositeToLocale:isa];

      if (v28)
      {
        v62 = v21;
        static Locale._unconditionallyBridgeFromObjectiveC(_:)();

        v29 = *(v1 + OBJC_IVAR____TtC17SequoiaTranslator25StaticImageViewController__hasTranslatedText + 8);
        v30 = *(v1 + OBJC_IVAR____TtC17SequoiaTranslator25StaticImageViewController__hasTranslatedText + 16);
        v77 = *(v1 + OBJC_IVAR____TtC17SequoiaTranslator25StaticImageViewController__hasTranslatedText);
        v78 = v29;
        v79 = v30;
        v76 = 0;
        sub_100005AD4(&qword_1003BA760, &qword_1002DC950);
        Binding.wrappedValue.setter();
        swift_getKeyPath();
        swift_getKeyPath();
        static Published.subscript.getter();

        if (v77 == 1)
        {
          v31 = v67;
          sub_10011C910(v67, v68);
          v32 = sub_100292C40(_swiftEmptyArrayStorage);
          v33 = type metadata accessor for CameraConfiguration.StaticImage(0);
          v34 = *(v33 + 24);
          v35 = type metadata accessor for URL();
          (*(*(v35 - 8) + 56))(&v8[v34], 1, 1, v35);
          *v8 = v31;
          *(v8 + 1) = v32;
          (*(*(v33 - 8) + 56))(v8, 0, 1, v33);
          swift_getKeyPath();
          swift_getKeyPath();
          sub_10001F620(v8, v70, &qword_1003AAE10, &unk_1002DE700);

          static Published.subscript.setter();
          sub_100009EBC(v8, &qword_1003AAE10, &unk_1002DE700);
        }

        v36 = objc_allocWithZone(_LTLocalePair);
        v37 = Locale._bridgeToObjectiveC()().super.isa;
        v38 = Locale._bridgeToObjectiveC()().super.isa;
        v39 = [v36 initWithSourceLocale:v37 targetLocale:v38];

        swift_getKeyPath();
        swift_getKeyPath();
        static Published.subscript.getter();

        LODWORD(v70) = v77;
        [v65 imageOrientation];
        LODWORD(v65) = vk_cgImagePropertyOrientationFromVKOrientation();
        v40 = type metadata accessor for TaskPriority();
        (*(*(v40 - 8) + 56))(v73, 1, 1, v40);
        v41 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v42 = v71;
        v43 = *(v71 + 16);
        v44 = v69;
        v43(v18, v75, v69);
        v43(v72, v74, v44);
        type metadata accessor for MainActor();
        v45 = v41;

        v46 = v63;
        v47 = v39;
        v48 = static MainActor.shared.getter();
        v49 = *(v42 + 80);
        v50 = (v49 + 65) & ~v49;
        v51 = (v11 + v49 + v50) & ~v49;
        v52 = swift_allocObject();
        *(v52 + 16) = v48;
        *(v52 + 24) = &protocol witness table for MainActor;
        *(v52 + 32) = v45;
        *(v52 + 40) = v46;
        *(v52 + 48) = v65;
        *(v52 + 56) = v47;
        *(v52 + 64) = v70;
        v53 = *(v42 + 32);
        v54 = v52 + v50;
        v55 = v69;
        v53(v54, v18, v69);
        v53(v52 + v51, v72, v55);
        *(v52 + v51 + v11) = v66;

        sub_10005E36C(0, 0, v73, &unk_1002EBB50, v52);

        sub_10011C8FC(v67, v68);

        v56 = v64;
        v64(v74, v55);
        v56(v75, v55);
      }

      else
      {
        v57 = v69;
        if (qword_1003A9218 != -1)
        {
          swift_once();
        }

        v58 = type metadata accessor for Logger();
        sub_1000078E8(v58, qword_1003D2758);
        v59 = Logger.logObject.getter();
        v60 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v59, v60))
        {
          v61 = swift_slowAlloc();
          *v61 = 0;
          _os_log_impl(&_mh_execute_header, v59, v60, "Unable to configure source and target locales for static image translation", v61, 2u);

          sub_10011C8FC(v67, v68);
        }

        else
        {
          sub_10011C8FC(v67, v68);
        }

        v64(v75, v57);
      }
    }

    else
    {
      sub_10011C8FC(v23, v24);
    }
  }
}

double sub_10024FC8C()
{
  v70 = type metadata accessor for NSNotificationCenter.Publisher();
  v69 = *(v70 - 8);
  __chkstk_darwin(v70);
  v68 = &v55 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_100005AD4(&unk_1003BA6A0, &unk_1002EBA10);
  v72 = *(v2 - 8);
  v73 = v2;
  __chkstk_darwin(v2);
  v71 = &v55 - v3;
  v77 = sub_100005AD4(&qword_1003AD858, &qword_1002DCB90);
  v82 = *(v77 - 8);
  __chkstk_darwin(v77);
  v76 = &v55 - v4;
  v78 = sub_100005AD4(&qword_1003BA6B0, &qword_1002EBA20);
  v83 = *(v78 - 8);
  __chkstk_darwin(v78);
  v64 = &v55 - v5;
  v79 = sub_100005AD4(&qword_1003BA6B8, &qword_1002EBA28);
  v84 = *(v79 - 8);
  __chkstk_darwin(v79);
  v65 = &v55 - v6;
  v67 = sub_100005AD4(&unk_1003BA6C0, &unk_1002EBA30);
  v85 = *(v67 - 8);
  __chkstk_darwin(v67);
  v66 = &v55 - v7;
  v8 = sub_100005AD4(&qword_1003B23F0, &unk_1002D7900);
  __chkstk_darwin(v8 - 8);
  v10 = &v55 - v9;
  v11 = sub_100005AD4(&qword_1003BA6D0, &qword_1002EBA40);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v55 - v13;
  v61 = sub_100005AD4(&qword_1003BA6D8, &qword_1002EBA48);
  v15 = *(v61 - 8);
  __chkstk_darwin(v61);
  v17 = &v55 - v16;
  v81 = v0;
  v75 = *(v0 + OBJC_IVAR____TtC17SequoiaTranslator25StaticImageViewController_conversation);
  v89 = sub_100199B00(v75, *(v0 + OBJC_IVAR____TtC17SequoiaTranslator25StaticImageViewController_context));
  sub_100005AD4(&unk_1003BA6E0, &unk_1002EBA50);
  sub_10001BAEC(&qword_1003B40F0, &unk_1003BA6E0, &unk_1002EBA50, &protocol conformance descriptor for AnyPublisher<A, B>);
  sub_100198F60();
  Publisher<>.removeDuplicates()();

  v74 = sub_10000A2CC(0, &qword_1003A9C40, OS_dispatch_queue_ptr);
  v18 = static OS_dispatch_queue.main.getter();
  v89 = v18;
  v88 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  v19 = *(v88 - 8);
  v20 = *(v19 + 56);
  v86 = v19 + 56;
  v87 = v20;
  v20(v10, 1, 1, v88);
  v63 = &protocol conformance descriptor for Publishers.RemoveDuplicates<A>;
  sub_10001BAEC(&unk_1003BA700, &qword_1003BA6D0, &qword_1002EBA40, &protocol conformance descriptor for Publishers.RemoveDuplicates<A>);
  v80 = sub_100051450();
  Publisher.receive<A>(on:options:)();
  sub_100009EBC(v10, &qword_1003B23F0, &unk_1002D7900);

  (*(v12 + 8))(v14, v11);
  swift_allocObject();
  v21 = v81;
  swift_unknownObjectWeakInit();
  v62 = &protocol conformance descriptor for Publishers.ReceiveOn<A, B>;
  sub_10001BAEC(&unk_1003BA710, &qword_1003BA6D8, &qword_1002EBA48, &protocol conformance descriptor for Publishers.ReceiveOn<A, B>);
  v22 = v61;
  v23 = Publisher<>.sink(receiveValue:)();

  (*(v15 + 8))(v17, v22);
  *(v21 + OBJC_IVAR____TtC17SequoiaTranslator25StaticImageViewController_availabilitySubscription) = v23;

  swift_beginAccess();
  v61 = sub_100005AD4(&qword_1003AED90, &unk_1002D7970);
  v24 = v76;
  Published.projectedValue.getter();
  swift_endAccess();
  v60 = sub_10001BAEC(&qword_1003BA720, &qword_1003AD858, &qword_1002DCB90, &protocol conformance descriptor for Published<A>.Publisher);
  v25 = v64;
  v26 = v77;
  Publisher.dropFirst(_:)();
  v27 = *(v82 + 8);
  v82 += 8;
  v59 = v27;
  v27(v24, v26);
  v57 = sub_10001BAEC(&unk_1003BA728, &qword_1003BA6B0, &qword_1002EBA20, &protocol conformance descriptor for Publishers.Drop<A>);
  v58 = sub_100255FD4(&unk_1003B06F0, &type metadata accessor for Locale, &protocol conformance descriptor for Locale);
  v28 = v65;
  v29 = v78;
  Publisher<>.removeDuplicates()();
  v30 = *(v83 + 8);
  v83 += 8;
  v56 = v30;
  v30(v25, v29);
  v31 = static OS_dispatch_queue.main.getter();
  v89 = v31;
  v87(v10, 1, 1, v88);
  v63 = sub_10001BAEC(&qword_1003BA738, &qword_1003BA6B8, &qword_1002EBA28, v63);
  v32 = v66;
  v33 = v79;
  Publisher.receive<A>(on:options:)();
  sub_100009EBC(v10, &qword_1003B23F0, &unk_1002D7900);

  v34 = *(v84 + 8);
  v84 += 8;
  v55 = v34;
  v35 = v28;
  v34(v28, v33);
  swift_allocObject();
  v36 = v81;
  swift_unknownObjectWeakInit();
  sub_10001BAEC(&unk_1003BA740, &unk_1003BA6C0, &unk_1002EBA30, v62);
  v37 = v67;
  v38 = Publisher<>.sink(receiveValue:)();

  v39 = *(v85 + 8);
  v85 += 8;
  v39(v32, v37);
  *(v36 + OBJC_IVAR____TtC17SequoiaTranslator25StaticImageViewController_visualTranslationLocaleSubscription) = v38;

  swift_beginAccess();
  v40 = v76;
  Published.projectedValue.getter();
  swift_endAccess();
  v41 = v77;
  Publisher.dropFirst(_:)();
  v59(v40, v41);
  v42 = v78;
  Publisher<>.removeDuplicates()();
  v56(v25, v42);
  v43 = static OS_dispatch_queue.main.getter();
  v89 = v43;
  v87(v10, 1, 1, v88);
  v44 = v79;
  Publisher.receive<A>(on:options:)();
  sub_100009EBC(v10, &qword_1003B23F0, &unk_1002D7900);

  v55(v35, v44);
  v45 = v81;
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v46 = Publisher<>.sink(receiveValue:)();

  v39(v32, v37);
  *(v45 + OBJC_IVAR____TtC17SequoiaTranslator25StaticImageViewController_targetLocaleSubscription) = v46;

  v47 = [objc_opt_self() defaultCenter];
  if (qword_1003A92C8 != -1)
  {
    swift_once();
  }

  v48 = v68;
  NSNotificationCenter.publisher(for:object:)();

  v49 = static OS_dispatch_queue.main.getter();
  v89 = v49;
  v87(v10, 1, 1, v88);
  sub_100255FD4(&qword_1003AE428, &type metadata accessor for NSNotificationCenter.Publisher, &protocol conformance descriptor for NSNotificationCenter.Publisher);
  v50 = v71;
  v51 = v70;
  Publisher.receive<A>(on:options:)();
  sub_100009EBC(v10, &qword_1003B23F0, &unk_1002D7900);

  (*(v69 + 8))(v48, v51);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_10001BAEC(&unk_1003BA750, &unk_1003BA6A0, &unk_1002EBA10, &protocol conformance descriptor for Publishers.ReceiveOn<A, B>);
  v52 = v73;
  v53 = Publisher<>.sink(receiveValue:)();

  (*(v72 + 8))(v50, v52);
  *(v45 + OBJC_IVAR____TtC17SequoiaTranslator25StaticImageViewController_retranslateSubscription) = v53;

  return result;
}

double sub_100250AD8(unsigned __int8 *a1, uint64_t a2)
{
  v3 = sub_100005AD4(&qword_1003AA3B8, &unk_1002D3EF0);
  __chkstk_darwin(v3 - 8);
  v5 = &v18 - v4;
  v6 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    if (Strong[OBJC_IVAR____TtC17SequoiaTranslator25StaticImageViewController_availability] == v6)
    {
    }

    else
    {
      Strong[OBJC_IVAR____TtC17SequoiaTranslator25StaticImageViewController_availability] = v6;
      if (v6)
      {
        Strong[OBJC_IVAR____TtC17SequoiaTranslator25StaticImageViewController_showErrorOnNextEvent] = 1;
      }

      else
      {
        Strong[OBJC_IVAR____TtC17SequoiaTranslator25StaticImageViewController_showErrorOnNextEvent] = 0;
        if (Strong[OBJC_IVAR____TtC17SequoiaTranslator25StaticImageViewController_pendingRetranslation] == 1)
        {
          Strong[OBJC_IVAR____TtC17SequoiaTranslator25StaticImageViewController_pendingRetranslation] = 0;
          v10 = type metadata accessor for TaskPriority();
          (*(*(v10 - 8) + 56))(v5, 1, 1, v10);
          v11 = swift_allocObject();
          swift_unknownObjectWeakInit();
          type metadata accessor for MainActor();

          v12 = static MainActor.shared.getter();
          v13 = swift_allocObject();
          v13[2] = v12;
          v13[3] = &protocol witness table for MainActor;
          v13[4] = v11;

          sub_10005E36C(0, 0, v5, &unk_1002EBBD8, v13);
        }
      }

      v14 = type metadata accessor for TaskPriority();
      (*(*(v14 - 8) + 56))(v5, 1, 1, v14);
      type metadata accessor for MainActor();
      v15 = v9;
      v16 = static MainActor.shared.getter();
      v17 = swift_allocObject();
      v17[2] = v16;
      v17[3] = &protocol witness table for MainActor;
      v17[4] = v15;
      sub_10005E36C(0, 0, v5, &unk_1002EBBD0, v17);
    }
  }

  return result;
}

uint64_t sub_100250D68()
{
  v0[2] = type metadata accessor for MainActor();
  v0[3] = static MainActor.shared.getter();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_100151E9C;

  return sub_1002512CC();
}

void sub_100250E14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_100005AD4(&qword_1003AA3B8, &unk_1002D3EF0);
  __chkstk_darwin(v5 - 8);
  v7 = &v14 - v6;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    if (*(Strong + OBJC_IVAR____TtC17SequoiaTranslator25StaticImageViewController_showErrorOnNextEvent) == 1)
    {
      *(Strong + OBJC_IVAR____TtC17SequoiaTranslator25StaticImageViewController_showErrorOnNextEvent) = 0;
    }

    v10 = type metadata accessor for TaskPriority();
    (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
    v11 = swift_allocObject();
    swift_unknownObjectWeakInit();
    type metadata accessor for MainActor();

    v12 = static MainActor.shared.getter();
    v13 = swift_allocObject();
    v13[2] = v12;
    v13[3] = &protocol witness table for MainActor;
    v13[4] = v11;

    sub_10005E36C(0, 0, v7, a4, v13);
  }
}

void sub_100250FA8(uint64_t a1, uint64_t a2)
{
  v2 = sub_100005AD4(&qword_1003AA3B8, &unk_1002D3EF0);
  __chkstk_darwin(v2 - 8);
  v4 = &v19[-v3];
  v5 = sub_100005AD4(&qword_1003AFCE0, &qword_1002D5B00);
  __chkstk_darwin(v5 - 8);
  v7 = &v19[-v6];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    v10 = *(Strong + OBJC_IVAR____TtC17SequoiaTranslator25StaticImageViewController_conversation);

    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v11 = type metadata accessor for Locale();
    if ((*(*(v11 - 8) + 48))(v7, 1, v11) != 1)
    {
      sub_100009EBC(v7, &qword_1003AFCE0, &qword_1002D5B00);
      return;
    }
  }

  else
  {
    v12 = type metadata accessor for Locale();
    (*(*(v12 - 8) + 56))(v7, 1, 1, v12);
  }

  sub_100009EBC(v7, &qword_1003AFCE0, &qword_1002D5B00);
  swift_beginAccess();
  v13 = swift_unknownObjectWeakLoadStrong();
  if (v13)
  {
    v14 = v13;
    if (*(v13 + OBJC_IVAR____TtC17SequoiaTranslator25StaticImageViewController_showErrorOnNextEvent) == 1)
    {
      *(v13 + OBJC_IVAR____TtC17SequoiaTranslator25StaticImageViewController_showErrorOnNextEvent) = 0;
    }

    v15 = type metadata accessor for TaskPriority();
    (*(*(v15 - 8) + 56))(v4, 1, 1, v15);
    v16 = swift_allocObject();
    swift_unknownObjectWeakInit();
    type metadata accessor for MainActor();

    v17 = static MainActor.shared.getter();
    v18 = swift_allocObject();
    v18[2] = v17;
    v18[3] = &protocol witness table for MainActor;
    v18[4] = v16;

    sub_10005E36C(0, 0, v4, &unk_1002EBAB0, v18);
  }
}

uint64_t sub_1002512CC()
{
  v1[97] = v0;
  sub_100005AD4(&unk_1003BA690, &unk_1002E1DF8);
  v1[103] = swift_task_alloc();
  v1[104] = swift_task_alloc();
  v1[105] = swift_task_alloc();
  v2 = type metadata accessor for Locale();
  v1[106] = v2;
  v1[107] = *(v2 - 8);
  v1[108] = swift_task_alloc();
  v1[109] = swift_task_alloc();
  v3 = type metadata accessor for LocalePair();
  v1[110] = v3;
  v4 = *(v3 - 8);
  v1[111] = v4;
  v1[112] = *(v4 + 64);
  v1[113] = swift_task_alloc();
  v1[114] = swift_task_alloc();
  v1[115] = swift_task_alloc();
  type metadata accessor for MainActor();
  v1[116] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[117] = v6;
  v1[118] = v5;

  return _swift_task_switch(sub_10025149C, v6, v5);
}

uint64_t sub_10025149C()
{
  v31 = v0;
  if (*(v0[97] + OBJC_IVAR____TtC17SequoiaTranslator25StaticImageViewController_showErrorOnNextEvent))
  {

    v1 = v0[1];

    return v1(1);
  }

  else
  {
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    LocalePair.init(sourceLocale:targetLocale:)();
    if (qword_1003A9218 != -1)
    {
      swift_once();
    }

    v3 = v0[115];
    v4 = v0[114];
    v5 = v0[111];
    v6 = v0[110];
    v7 = type metadata accessor for Logger();
    v0[119] = sub_1000078E8(v7, qword_1003D2758);
    v8 = *(v5 + 16);
    v8(v4, v3, v6);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.info.getter();
    v11 = os_log_type_enabled(v9, v10);
    v12 = v0[114];
    v13 = v0[111];
    v14 = v0[110];
    if (v11)
    {
      buf = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v30 = v29;
      *buf = 136446210;
      sub_100255FD4(&qword_1003B4150, &type metadata accessor for LocalePair, &protocol conformance descriptor for LocalePair);
      v15 = v8;
      v16 = dispatch thunk of CustomStringConvertible.description.getter();
      v18 = v17;
      v27 = v10;
      v19 = *(v13 + 8);
      v19(v12, v14);
      v20 = v16;
      v8 = v15;
      v21 = sub_10028D78C(v20, v18, &v30);

      *(buf + 4) = v21;
      _os_log_impl(&_mh_execute_header, v9, v27, "Checking error state check for pair: %{public}s", buf, 0xCu);
      sub_100008664(v29);
    }

    else
    {

      v19 = *(v13 + 8);
      v19(v12, v14);
    }

    v0[120] = v19;
    v22 = v0[113];
    v23 = v0[111];
    v24 = v0[110];
    v8(v22, v0[115], v24);
    v25 = (*(v23 + 80) + 16) & ~*(v23 + 80);
    v26 = swift_allocObject();
    v0[121] = v26;
    (*(v23 + 32))(v26 + v25, v22, v24);
    swift_asyncLet_begin();

    return _swift_asyncLet_get(v0 + 2, v0 + 122, sub_10025190C, v0 + 82);
  }
}

uint64_t sub_100251928(uint64_t a1)
{
  v41 = v1;
  v2 = *(v1 + 976);
  if (v2 > 2)
  {
    if (v2 == 3)
    {
      v18 = *(v1 + 840);
      sub_1000E7224(*(*(v1 + 776) + OBJC_IVAR____TtC17SequoiaTranslator25StaticImageViewController_context));
      v4 = type metadata accessor for UIContentUnavailableConfiguration();
      (*(*(v4 - 8) + 56))(v18, 0, 1, v4);
      v5 = 0x80000001002FBFB0;
      v6 = 0xD000000000000015;
    }

    else if (v2 == 4)
    {
      v7 = *(v1 + 872);
      v8 = *(v1 + 864);
      v9 = *(v1 + 856);
      v10 = *(v1 + 848);
      v11 = *(v1 + 840);
      LocalePair.sourceLocale.getter();
      LocalePair.targetLocale.getter();
      v12 = objc_allocWithZone(_LTLocalePair);
      isa = Locale._bridgeToObjectiveC()().super.isa;
      v14 = Locale._bridgeToObjectiveC()().super.isa;
      v15 = [v12 initWithSourceLocale:isa targetLocale:v14];

      v16 = *(v9 + 8);
      v16(v8, v10);
      v16(v7, v10);
      sub_1000E6C4C(v15, v11);
      v4 = type metadata accessor for UIContentUnavailableConfiguration();
      (*(*(v4 - 8) + 56))(v11, 0, 1, v4);
      _StringGuts.grow(_:)(37);

      v40[0] = 0xD000000000000023;
      v40[1] = 0x80000001002FBF80;
      sub_100255FD4(&qword_1003B4150, &type metadata accessor for LocalePair, &protocol conformance descriptor for LocalePair);
      v17._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v17);

      v6 = 0xD000000000000023;
      v5 = 0x80000001002FBF80;
    }

    else
    {
      v6 = 0xD000000000000013;
      v19 = *(v1 + 840);
      sub_1000E7A90(a1);
      v4 = type metadata accessor for UIContentUnavailableConfiguration();
      (*(*(v4 - 8) + 56))(v19, 0, 1, v4);
      v5 = 0x80000001002FBF60;
    }
  }

  else
  {
    v3 = *(v1 + 840);
    v4 = type metadata accessor for UIContentUnavailableConfiguration();
    (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
    v5 = 0xE800000000000000;
    v6 = 0x726F727265206F6ELL;
  }

  v20 = *(v1 + 832);
  sub_10001F620(*(v1 + 840), v20, &unk_1003BA690, &unk_1002E1DF8);
  type metadata accessor for UIContentUnavailableConfiguration();
  v21 = *(v4 - 8);
  v22 = *(v21 + 48);
  v23 = v22(v20, 1, v4);
  v24 = *(v1 + 832);
  if (v23 == 1)
  {
    sub_100009EBC(*(v1 + 832), &unk_1003BA690, &unk_1002E1DF8);
    *(v1 + 696) = 0u;
    *(v1 + 712) = 0u;
    *(v1 + 728) = 0;
  }

  else
  {
    *(v1 + 720) = v4;
    *(v1 + 728) = &protocol witness table for UIContentUnavailableConfiguration;
    v25 = sub_100050D60((v1 + 696));
    (*(v21 + 32))(v25, v24, v4);
  }

  UIViewController.contentUnavailableConfiguration.setter();

  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v40[0] = v29;
    *v28 = 136446210;
    v30 = sub_10028D78C(v6, v5, v40);

    *(v28 + 4) = v30;
    _os_log_impl(&_mh_execute_header, v26, v27, "Updated error state to: %{public}s", v28, 0xCu);
    sub_100008664(v29);
  }

  else
  {
  }

  v31 = *(v1 + 824);
  v32 = *(v1 + 776);
  sub_10001F620(*(v1 + 840), v31, &unk_1003BA690, &unk_1002E1DF8);
  v33 = v22(v31, 1, v4);
  sub_100009EBC(v31, &unk_1003BA690, &unk_1002E1DF8);
  v34 = *(v32 + OBJC_IVAR____TtC17SequoiaTranslator25StaticImageViewController_materialView);
  if (v33 == 1)
  {
    [v34 setHidden:1];
    v35 = sub_100251F28;
    v36 = v1 + 16;
    v37 = v1 + 976;
    v38 = v1 + 736;
  }

  else
  {
    [v34 setHidden:0];
    v35 = sub_10025206C;
    v36 = v1 + 16;
    v37 = v1 + 976;
    v38 = v1 + 784;
  }

  return _swift_asyncLet_finish(v36, v37, v35, v38);
}

uint64_t sub_100251F44()
{
  v1 = v0[120];
  v2 = v0[115];
  v3 = v0[110];
  v4 = v0[105];

  sub_100009EBC(v4, &unk_1003BA690, &unk_1002E1DF8);
  v1(v2, v3);

  v5 = v0[1];

  return v5(1);
}

uint64_t sub_100252088()
{
  v1 = v0[120];
  v2 = v0[115];
  v3 = v0[110];
  v4 = v0[105];

  sub_100009EBC(v4, &unk_1003BA690, &unk_1002E1DF8);
  v1(v2, v3);

  v5 = v0[1];

  return v5(0);
}

uint64_t sub_1002521B0(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_10025224C;

  return static LanguagesStatusService.languagePairPath(_:)(a2);
}

uint64_t sub_10025224C(char a1)
{
  *(*v1 + 32) = a1;

  return _swift_task_switch(sub_10025234C, 0, 0);
}

void sub_100252370()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC17SequoiaTranslator25StaticImageViewController_scrollView;
  v3 = *&v0[OBJC_IVAR____TtC17SequoiaTranslator25StaticImageViewController_scrollView];
  if (!v3 || (v4 = *&v1[OBJC_IVAR____TtC17SequoiaTranslator25StaticImageViewController_imageView]) == 0)
  {
    if (qword_1003A9218 != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    sub_1000078E8(v10, qword_1003D2758);
    v11 = v1;
    v19 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v19, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      *v13 = 138543618;
      v15 = *&v1[v2];
      *(v13 + 4) = v15;
      *v14 = v15;
      *(v13 + 12) = 2114;
      v16 = *&v11[OBJC_IVAR____TtC17SequoiaTranslator25StaticImageViewController_imageView];
      *(v13 + 14) = v16;
      v14[1] = v16;
      v17 = v15;
      v18 = v16;
      _os_log_impl(&_mh_execute_header, v19, v12, "Can't set zoom scale because scrollView or imageView is nil; scrollView: %{public}@; imageView: %{public}@", v13, 0x16u);
      sub_100005AD4(&unk_1003AECA0, &unk_1002D3F10);
      swift_arrayDestroy();
    }

    goto LABEL_10;
  }

  v19 = v4;
  v5 = v3;
  v6 = [v19 image];
  if (!v6)
  {
    __break(1u);
    goto LABEL_14;
  }

  v7 = v6;
  [v6 size];

  sub_1002525E4();
  [v5 setMinimumZoomScale:?];
  v8 = [v19 image];
  if (!v8)
  {
LABEL_14:
    __break(1u);
    return;
  }

  v9 = v8;
  [v8 size];

  sub_1002525E4();
  [v5 setZoomScale:?];

LABEL_10:
}

void sub_1002525E4()
{
  v1 = [v0 view];
  if (v1)
  {
    v2 = v1;
    [v1 bounds];
    v4 = v3;
    v6 = v5;
    v8 = v7;
    v10 = v9;

    v26.origin.x = v4;
    v26.origin.y = v6;
    v26.size.width = v8;
    v26.size.height = v10;
    CGRectGetWidth(v26);
    v11 = &v0[OBJC_IVAR____TtC17SequoiaTranslator25StaticImageViewController_narrowViewport];
    if ((v0[OBJC_IVAR____TtC17SequoiaTranslator25StaticImageViewController_narrowViewport + 32] & 1) == 0)
    {
      v24 = *(v11 + 2);
      v25 = *(v11 + 3);
      v22 = *v11;
      v23 = *(v11 + 1);
      goto LABEL_6;
    }

    v12 = [v0 view];
    if (v12)
    {
      v13 = v12;
      [v12 bounds];
      v15 = v14;
      v17 = v16;
      v19 = v18;
      v21 = v20;

      v22 = v15;
      v23 = v17;
      v24 = v19;
      v25 = v21;
LABEL_6:
      CGRectGetHeight(*&v22);
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_100252714()
{
  v1 = *(v0 + OBJC_IVAR____TtC17SequoiaTranslator25StaticImageViewController_imageView);
  if (v1)
  {
    v2 = *(v0 + OBJC_IVAR____TtC17SequoiaTranslator25StaticImageViewController_scrollView);
    if (v2)
    {
      v17 = v1;
      v3 = v2;
      [v17 frame];
      v5 = v4;
      v7 = v6;
      [v3 bounds];
      if (v7 >= v9)
      {
        v10 = 0.0;
      }

      else
      {
        v10 = (v9 - v7) * 0.5;
      }

      if (v5 >= v8)
      {
        v11 = 0.0;
      }

      else
      {
        v11 = (v8 - v5) * 0.5;
      }

      v12 = Notification.userInfo.getter();
      if (v12)
      {
        v13 = v12;
        *&v18.origin.x = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v18.origin.y = v14;
        AnyHashable.init<A>(_:)();
        if (*(v13 + 16) && (v15 = sub_10028DF68(v19), (v16 & 1) != 0))
        {
          sub_10000A37C(*(v13 + 56) + 32 * v15, v20);
          sub_100078028(v19);

          type metadata accessor for CGRect(0);
          if (swift_dynamicCast())
          {
            [v3 setContentInset:{v10, v11, v10 + CGRectGetHeight(v18), v11}];
            [v3 contentInset];
            [v3 setScrollIndicatorInsets:?];
          }

          else
          {
          }
        }

        else
        {

          sub_100078028(v19);
        }
      }

      else
      {
      }
    }
  }
}

uint64_t sub_100252A0C()
{
  v0 = type metadata accessor for Locale();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v6 = &v16 - v5;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v7 = sub_100097D4C();
  isa = Locale._bridgeToObjectiveC()().super.isa;
  v9 = [v7 oppositeToLocale:isa];

  if (v9)
  {
    static Locale._unconditionallyBridgeFromObjectiveC(_:)();

    sub_100225618(0, 0, v6, v4);
    v10 = *(v1 + 8);
    v10(v4, v0);
    return (v10)(v6, v0);
  }

  else
  {
    if (qword_1003A9218 != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    sub_1000078E8(v12, qword_1003D2758);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v13, v14, "Unable to get source and target locales for SELF logging for static image translation", v15, 2u);
    }

    return (*(v1 + 8))(v6, v0);
  }
}

id sub_100252CCC(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for StaticImageViewController();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_100252EDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a4;
  type metadata accessor for MainActor();
  v4[6] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[7] = v6;
  v4[8] = v5;

  return _swift_task_switch(sub_100252F74, v6, v5);
}

uint64_t sub_100252F74()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[9] = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    v0[10] = v2;
    *v2 = v0;
    v2[1] = sub_100253064;

    return sub_1002512CC();
  }

  else
  {

    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_100253064(char a1)
{
  v2 = *v1;
  *(*v1 + 88) = a1;

  v3 = *(v2 + 64);
  v4 = *(v2 + 56);

  return _swift_task_switch(sub_1002568F4, v4, v3);
}

uint64_t sub_10025318C(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for Locale();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v31 - v9;
  Locale.languageIdentifier.getter();
  Locale.init(identifier:)();
  type metadata accessor for VisualTranslationService();
  LODWORD(v11) = static VisualTranslationService.isOCRLocale(_:)();
  v12 = *(v5 + 8);
  v12(v10, v4);
  if (v11)
  {
    v13 = v1 + OBJC_IVAR____TtC17SequoiaTranslator25StaticImageViewController_delegate;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v14 = *(v13 + 8);
      ObjectType = swift_getObjectType();
      (*(v14 + 16))(2, ObjectType, v14);
LABEL_11:
      swift_unknownObjectRelease();
    }
  }

  else
  {
    if (qword_1003A9218 != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    sub_1000078E8(v16, qword_1003D2758);
    (*(v5 + 16))(v8, a1, v4);
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v33 = v11;
      v11 = v20;
      v35[0] = v20;
      *v19 = 136446210;
      v21 = Locale.identifier.getter();
      v32 = v2;
      v23 = v22;
      v12(v8, v4);
      v24 = sub_10028D78C(v21, v23, v35);
      v2 = v32;

      *(v19 + 4) = v24;
      _os_log_impl(&_mh_execute_header, v17, v18, "OCR unavailable for source visual translation locale (%{public}s); clearing overlays and showing guidance", v19, 0xCu);
      sub_100008664(v11);
      LOBYTE(v11) = v33;
    }

    else
    {

      v12(v8, v4);
    }

    dispatch thunk of VisualTranslationObservable.removeAll()();

    v25 = *(v2 + OBJC_IVAR____TtC17SequoiaTranslator25StaticImageViewController__hasTranslatedText + 8);
    v26 = *(v2 + OBJC_IVAR____TtC17SequoiaTranslator25StaticImageViewController__hasTranslatedText + 16);
    v35[0] = *(v2 + OBJC_IVAR____TtC17SequoiaTranslator25StaticImageViewController__hasTranslatedText);
    v35[1] = v25;
    v36 = v26;
    v34 = 0;
    sub_100005AD4(&qword_1003BA760, &qword_1002DC950);
    Binding.wrappedValue.setter();
    v27 = v2 + OBJC_IVAR____TtC17SequoiaTranslator25StaticImageViewController_delegate;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v28 = *(v27 + 8);
      v29 = swift_getObjectType();
      (*(v28 + 8))(2, 0, v29, v28);
      goto LABEL_11;
    }
  }

  return v11 & 1;
}

uint64_t sub_10025352C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, char a8)
{
  *(v8 + 81) = v18;
  *(v8 + 120) = v16;
  *(v8 + 128) = v17;
  *(v8 + 59) = a8;
  *(v8 + 104) = a5;
  *(v8 + 112) = a7;
  *(v8 + 60) = a6;
  *(v8 + 96) = a4;
  v9 = type metadata accessor for TaskHint();
  *(v8 + 136) = v9;
  *(v8 + 144) = *(v9 - 8);
  *(v8 + 152) = swift_task_alloc();
  sub_100005AD4(&qword_1003AFCE0, &qword_1002D5B00);
  *(v8 + 160) = swift_task_alloc();
  *(v8 + 168) = swift_task_alloc();
  v10 = type metadata accessor for Locale();
  *(v8 + 176) = v10;
  *(v8 + 184) = *(v10 - 8);
  *(v8 + 192) = swift_task_alloc();
  *(v8 + 200) = swift_task_alloc();
  *(v8 + 208) = swift_task_alloc();
  *(v8 + 216) = swift_task_alloc();
  *(v8 + 224) = type metadata accessor for SELFLoggingInvocationWrapper.Parameters(0);
  *(v8 + 232) = swift_task_alloc();
  v11 = type metadata accessor for UUID();
  *(v8 + 240) = v11;
  *(v8 + 248) = *(v11 - 8);
  *(v8 + 256) = swift_task_alloc();
  *(v8 + 264) = type metadata accessor for MainActor();
  *(v8 + 272) = static MainActor.shared.getter();
  v13 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v8 + 280) = v13;
  *(v8 + 288) = v12;

  return _swift_task_switch(sub_100253794, v13, v12);
}

uint64_t sub_100253794()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[37] = Strong;
  if (Strong)
  {
    v0[38] = static MainActor.shared.getter();
    v3 = dispatch thunk of Actor.unownedExecutor.getter();
    v0[39] = v3;
    v0[40] = v2;

    return _swift_task_switch(sub_100253900, v3, v2);
  }

  else
  {

    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_100253900(uint64_t a1)
{
  v2 = *(v1 + 59);
  v3 = *(v1 + 60);
  v5 = *(v1 + 104);
  v4 = *(v1 + 112);
  v6 = static MainActor.shared.getter();
  *(v1 + 328) = v6;
  v7 = swift_task_alloc();
  *(v1 + 336) = v7;
  *(v7 + 16) = v5;
  *(v7 + 24) = v3;
  *(v7 + 32) = v4;
  *(v7 + 40) = v2;
  v8 = swift_task_alloc();
  *(v1 + 344) = v8;
  v9 = sub_100005AD4(&qword_1003BA768, &qword_1002EBBA0);
  *v8 = v1;
  v8[1] = sub_100253A40;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v1 + 88, v6, &protocol witness table for MainActor, 0xD000000000000044, 0x80000001002FBFD0, sub_100256468, v7, v9);
}

uint64_t sub_100253A40()
{
  v2 = *v1;
  *(*v1 + 352) = v0;

  if (v0)
  {
    v3 = *(v2 + 312);
    v4 = *(v2 + 320);
    v5 = sub_1002541E0;
  }

  else
  {

    v3 = *(v2 + 312);
    v4 = *(v2 + 320);
    v5 = sub_100253B64;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_100253B64()
{

  v0[45] = v0[11];
  v1 = v0[35];
  v2 = v0[36];

  return _swift_task_switch(sub_100253BD0, v1, v2);
}

void *sub_100253BD0()
{
  v1 = *(v0 + 360);
  *(v0 + 368) = v1;
  if (v1 >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_3;
    }
  }

  else if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_3:
    if (qword_1003A9218 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    *(v0 + 376) = sub_1000078E8(v2, qword_1003D2758);

    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.debug.getter();
    v55 = v1;
    v42 = v1 >> 62;
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 134217984;
      if (v1 >> 62)
      {
        v6 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v6 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      *(v5 + 4) = v6;

      _os_log_impl(&_mh_execute_header, v3, v4, "Static image: will translate %ld observations", v5, 0xCu);
    }

    else
    {
    }

    v7 = *(v0 + 296);
    v8 = *(v0 + 248);
    v52 = *(v0 + 240);
    v10 = *(v0 + 224);
    v9 = *(v0 + 232);
    v11 = *(v0 + 216);
    v12 = *(v0 + 176);
    v13 = *(v0 + 184);
    v50 = *(v0 + 81);
    v46 = *(v0 + 128);
    v48 = *(v0 + 208);
    v44 = *(v0 + 120);
    v14 = OBJC_IVAR____TtC17SequoiaTranslator25StaticImageViewController_selfLoggingInvocation;

    sub_100225A0C();

    v54 = *(v7 + v14);
    v15 = *(v13 + 16);
    v15(v11, v44, v12);
    v15(v48, v46, v12);
    if (v50)
    {
      v16 = 3;
    }

    else
    {
      v16 = 4;
    }

    (*(v8 + 56))(v9 + v10[14], 1, 1, v52);
    v17 = *(v13 + 32);
    v17(v9, v11, v12);
    v51 = v17;
    v17(v9 + v10[5], v48, v12);
    *(v9 + v10[6]) = v16;
    *(v9 + v10[7]) = 3;
    *(v9 + v10[8]) = 0;
    *(v9 + v10[9]) = 0;
    v18 = v9 + v10[10];
    *v18 = 0;
    *(v18 + 8) = 1;
    *(v9 + v10[11]) = 0;
    *(v9 + v10[12]) = 0;
    v19 = v9 + v10[13];
    *v19 = 0;
    *(v19 + 8) = 1;
    sub_10022520C(v9);
    result = *(v54 + 16);
    if (result)
    {
      v21 = *(v0 + 296);
      v22 = *(v0 + 232);
      v23 = [result invocationId];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      sub_10016EBCC(v22);
      *(v0 + 384) = *(v21 + OBJC_IVAR____TtC17SequoiaTranslator25StaticImageViewController_translationOverlayModel);
      if (v42)
      {
        sub_10000A2CC(0, &unk_1003BA770, VNRecognizedTextObservation_ptr);

        v25 = _bridgeCocoaArray<A>(_:)();

        v24 = v25;
      }

      else
      {
        v24 = v55;

        dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
        sub_10000A2CC(0, &unk_1003BA770, VNRecognizedTextObservation_ptr);
      }

      v56 = v24;
      *(v0 + 392) = v24;
      v26 = *(v0 + 200);
      v27 = *(v0 + 176);
      v28 = *(v0 + 184);
      v29 = *(v0 + 168);
      v43 = *(v0 + 192);
      v45 = *(v0 + 160);
      v30 = *(v0 + 144);
      v47 = *(v0 + 136);
      v49 = *(v0 + 152);
      v31 = *(v0 + 112);
      v32 = [v31 sourceLocale];
      static Locale._unconditionallyBridgeFromObjectiveC(_:)();

      v51(v29, v26, v27);
      v33 = *(v28 + 56);
      v33(v29, 0, 1, v27);
      v34 = [v31 targetLocale];
      static Locale._unconditionallyBridgeFromObjectiveC(_:)();

      v51(v45, v43, v27);
      v33(v45, 0, 1, v27);
      (*(v30 + 104))(v49, enum case for TaskHint.app(_:), v47);
      v53 = (&async function pointer to dispatch thunk of VisualTranslationObservable.translate(_:sourceLocale:targetLocale:taskHint:selfLoggingInvocationId:) + async function pointer to dispatch thunk of VisualTranslationObservable.translate(_:sourceLocale:targetLocale:taskHint:selfLoggingInvocationId:));
      v35 = swift_task_alloc();
      *(v0 + 400) = v35;
      *v35 = v0;
      v35[1] = sub_1002549B4;
      v36 = *(v0 + 256);
      v38 = *(v0 + 160);
      v37 = *(v0 + 168);
      v39 = *(v0 + 152);

      return v53(v56, v37, v38, v39, v36);
    }

    else
    {
      __break(1u);
    }

    return result;
  }

  v40 = *(v0 + 296);

  v41 = *(v0 + 8);

  return v41();
}

uint64_t sub_1002541E0()
{

  v1 = *(v0 + 280);
  v2 = *(v0 + 288);

  return _swift_task_switch(sub_100254258, v1, v2);
}

void *sub_100254258()
{
  if (qword_1003A9218 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000078E8(v1, qword_1003D2758);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 138412290;
    v6 = _convertErrorToNSError(_:)();
    *(v4 + 4) = v6;
    *v5 = v6;
    _os_log_impl(&_mh_execute_header, v2, v3, "Failed to get text blocks from image: %@", v4, 0xCu);
    sub_100009EBC(v5, &unk_1003AECA0, &unk_1002D3F10);
  }

  else
  {
  }

  *(v0 + 368) = _swiftEmptyArrayStorage;
  if (_swiftEmptyArrayStorage >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_8;
    }
  }

  else if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_8:
    if (qword_1003A9218 != -1)
    {
      swift_once();
    }

    *(v0 + 376) = sub_1000078E8(v1, qword_1003D2758);

    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 134217984;
      if (_swiftEmptyArrayStorage >> 62)
      {
        v10 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v10 = *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      *(v9 + 4) = v10;

      _os_log_impl(&_mh_execute_header, v7, v8, "Static image: will translate %ld observations", v9, 0xCu);
    }

    else
    {
    }

    v11 = *(v0 + 296);
    v12 = *(v0 + 248);
    v55 = *(v0 + 240);
    v14 = *(v0 + 224);
    v13 = *(v0 + 232);
    v15 = *(v0 + 216);
    v16 = *(v0 + 176);
    v17 = *(v0 + 184);
    v53 = *(v0 + 81);
    v49 = *(v0 + 128);
    v51 = *(v0 + 208);
    v47 = *(v0 + 120);
    v18 = OBJC_IVAR____TtC17SequoiaTranslator25StaticImageViewController_selfLoggingInvocation;

    sub_100225A0C();

    v57 = *(v11 + v18);
    v19 = *(v17 + 16);
    v19(v15, v47, v16);
    v19(v51, v49, v16);
    if (v53)
    {
      v20 = 3;
    }

    else
    {
      v20 = 4;
    }

    (*(v12 + 56))(v13 + v14[14], 1, 1, v55);
    v21 = *(v17 + 32);
    v21(v13, v15, v16);
    v54 = v21;
    v21(v13 + v14[5], v51, v16);
    *(v13 + v14[6]) = v20;
    *(v13 + v14[7]) = 3;
    *(v13 + v14[8]) = 0;
    *(v13 + v14[9]) = 0;
    v22 = v13 + v14[10];
    *v22 = 0;
    *(v22 + 8) = 1;
    *(v13 + v14[11]) = 0;
    *(v13 + v14[12]) = 0;
    v23 = v13 + v14[13];
    *v23 = 0;
    *(v23 + 8) = 1;
    sub_10022520C(v13);
    result = *(v57 + 16);
    if (result)
    {
      v25 = *(v0 + 296);
      v26 = *(v0 + 232);
      v27 = [result invocationId];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      sub_10016EBCC(v26);
      *(v0 + 384) = *(v25 + OBJC_IVAR____TtC17SequoiaTranslator25StaticImageViewController_translationOverlayModel);
      if (_swiftEmptyArrayStorage >> 62)
      {
        sub_10000A2CC(0, &unk_1003BA770, VNRecognizedTextObservation_ptr);

        v28 = _bridgeCocoaArray<A>(_:)();
      }

      else
      {

        dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
        sub_10000A2CC(0, &unk_1003BA770, VNRecognizedTextObservation_ptr);
        v28 = _swiftEmptyArrayStorage;
      }

      *(v0 + 392) = v28;
      v29 = *(v0 + 200);
      v31 = *(v0 + 176);
      v30 = *(v0 + 184);
      v32 = *(v0 + 168);
      v45 = *(v0 + 192);
      v46 = *(v0 + 160);
      v33 = *(v0 + 144);
      v50 = *(v0 + 152);
      v52 = v28;
      v48 = *(v0 + 136);
      v34 = *(v0 + 112);
      v35 = [v34 sourceLocale];
      static Locale._unconditionallyBridgeFromObjectiveC(_:)();

      v54(v32, v29, v31);
      v36 = *(v30 + 56);
      v36(v32, 0, 1, v31);
      v37 = [v34 targetLocale];
      static Locale._unconditionallyBridgeFromObjectiveC(_:)();

      v54(v46, v45, v31);
      v36(v46, 0, 1, v31);
      (*(v33 + 104))(v50, enum case for TaskHint.app(_:), v48);
      v56 = &async function pointer to dispatch thunk of VisualTranslationObservable.translate(_:sourceLocale:targetLocale:taskHint:selfLoggingInvocationId:) + async function pointer to dispatch thunk of VisualTranslationObservable.translate(_:sourceLocale:targetLocale:taskHint:selfLoggingInvocationId:);
      v38 = swift_task_alloc();
      *(v0 + 400) = v38;
      *v38 = v0;
      v38[1] = sub_1002549B4;
      v39 = *(v0 + 256);
      v41 = *(v0 + 160);
      v40 = *(v0 + 168);
      v42 = *(v0 + 152);

      return (v56)(v52, v40, v41, v42, v39);
    }

    else
    {
      __break(1u);
    }

    return result;
  }

  v43 = *(v0 + 296);

  v44 = *(v0 + 8);

  return v44();
}

uint64_t sub_1002549B4(uint64_t a1)
{
  v3 = *v2;
  v3[51] = a1;
  v3[52] = v1;

  if (v1)
  {
    v5 = v3[20];
    v4 = v3[21];
    v7 = v3[18];
    v6 = v3[19];
    v8 = v3[17];

    (*(v7 + 8))(v6, v8);
    sub_100009EBC(v5, &qword_1003AFCE0, &qword_1002D5B00);
    sub_100009EBC(v4, &qword_1003AFCE0, &qword_1002D5B00);
    v9 = v3[35];
    v10 = v3[36];
    v11 = sub_100255098;
  }

  else
  {
    v13 = v3[20];
    v12 = v3[21];
    v15 = v3[18];
    v14 = v3[19];
    v16 = v3[17];

    (*(v15 + 8))(v14, v16);
    sub_100009EBC(v13, &qword_1003AFCE0, &qword_1002D5B00);
    sub_100009EBC(v12, &qword_1003AFCE0, &qword_1002D5B00);
    v9 = v3[35];
    v10 = v3[36];
    v11 = sub_100254BDC;
  }

  return _swift_task_switch(v11, v9, v10);
}

uint64_t sub_100254BDC()
{
  v1 = *(v0 + 296);

  v2 = v1;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();

  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 368);
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 134218242;
    if (v6 >> 62)
    {
      v9 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v9 = *((*(v0 + 368) & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v10 = *(v0 + 296);

    *(v7 + 4) = v9;

    *(v7 + 12) = 2112;
    v12 = *(v10 + OBJC_IVAR____TtC17SequoiaTranslator25StaticImageViewController_currentTranslationView);
    if (!v12)
    {
      __break(1u);
      return result;
    }

    *(v7 + 14) = v12;
    *v8 = v12;
    v13 = v12;
    _os_log_impl(&_mh_execute_header, v3, v4, "Static image: did translate %ld observations in view %@", v7, 0x16u);
    sub_100009EBC(v8, &unk_1003AECA0, &unk_1002D3F10);
  }

  else
  {
    swift_bridgeObjectRelease_n();
  }

  v14 = *(v0 + 408);
  if (v14 >> 62)
  {
    v15 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v15 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v16 = *(v0 + 296);
  if (v15)
  {
    v17 = *(v16 + OBJC_IVAR____TtC17SequoiaTranslator25StaticImageViewController__hasTranslatedText + 8);
    v18 = *(v16 + OBJC_IVAR____TtC17SequoiaTranslator25StaticImageViewController__hasTranslatedText + 16);
    *(v0 + 40) = *(v16 + OBJC_IVAR____TtC17SequoiaTranslator25StaticImageViewController__hasTranslatedText);
    *(v0 + 48) = v17;
    *(v0 + 56) = v18;
    *(v0 + 57) = 1;
    sub_100005AD4(&qword_1003BA760, &qword_1002DC950);
    Binding.wrappedValue.setter();

    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 134217984;
      if (v14 >> 62)
      {
        v22 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v22 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v37 = *(v0 + 296);
      v39 = *(v0 + 248);
      v38 = *(v0 + 256);
      v40 = *(v0 + 240);

      *(v21 + 4) = v22;

      _os_log_impl(&_mh_execute_header, v19, v20, "Static image: did get %ld translations", v21, 0xCu);

      (*(v39 + 8))(v38, v40);
    }

    else
    {
      v33 = *(v0 + 296);
      v35 = *(v0 + 248);
      v34 = *(v0 + 256);
      v36 = *(v0 + 240);
      swift_bridgeObjectRelease_n();

      (*(v35 + 8))(v34, v36);
    }
  }

  else
  {

    v23 = *(v16 + OBJC_IVAR____TtC17SequoiaTranslator25StaticImageViewController__hasTranslatedText + 8);
    v24 = *(v16 + OBJC_IVAR____TtC17SequoiaTranslator25StaticImageViewController__hasTranslatedText + 16);
    *(v0 + 64) = *(v16 + OBJC_IVAR____TtC17SequoiaTranslator25StaticImageViewController__hasTranslatedText);
    *(v0 + 72) = v23;
    *(v0 + 80) = v24;
    *(v0 + 58) = 0;
    sub_100005AD4(&qword_1003BA760, &qword_1002DC950);
    Binding.wrappedValue.setter();
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.debug.getter();
    v27 = os_log_type_enabled(v25, v26);
    v28 = *(v0 + 296);
    v30 = *(v0 + 248);
    v29 = *(v0 + 256);
    v31 = *(v0 + 240);
    if (v27)
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&_mh_execute_header, v25, v26, "Static image: did not get any translation", v32, 2u);
    }

    else
    {
    }

    (*(v30 + 8))(v29, v31);
  }

  v41 = *(v0 + 8);

  return v41();
}

uint64_t sub_100255098()
{
  v2 = v0[31];
  v1 = v0[32];
  v3 = v0[30];

  (*(v2 + 8))(v1, v3);
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[37];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = _convertErrorToNSError(_:)();
    *(v8 + 4) = v10;
    *v9 = v10;
    _os_log_impl(&_mh_execute_header, v4, v5, "Failed to translate overlay model: %@", v8, 0xCu);
    sub_100009EBC(v9, &unk_1003AECA0, &unk_1002D3F10);
  }

  else
  {
  }

  v11 = v0[1];

  return v11();
}

void sub_100255288(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, char a5)
{
  v41 = a1;
  v9 = type metadata accessor for Locale();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100292D54(_swiftEmptyArrayStorage);
  v13 = objc_allocWithZone(VNImageRequestHandler);
  type metadata accessor for VNImageOption(0);
  sub_100255FD4(&qword_1003A98D0, type metadata accessor for VNImageOption, &unk_1002D2C1C);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v15 = [v13 initWithCGImage:a2 orientation:a3 options:isa];

  v16 = [objc_allocWithZone(VNRecognizeDocumentsRequest) init];
  [v16 setMaximumCandidateCount:1];
  [v16 setRecognitionLevel:0];
  sub_100005AD4(&unk_1003BA780, &qword_1002D6240);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_1002D3160;
  v18 = [a4 sourceLocale];
  static Locale._unconditionallyBridgeFromObjectiveC(_:)();

  v19 = Locale.identifier.getter();
  v21 = v20;
  (*(v10 + 8))(v12, v9);
  *(v17 + 32) = v19;
  *(v17 + 40) = v21;
  v22 = Array._bridgeToObjectiveC()().super.isa;

  [v16 setRecognitionLanguages:v22];

  [v16 setUsesAlternateLineGrouping:a5 & 1];
  [v16 setUsesLanguageCorrection:1];
  sub_100005AD4(&unk_1003AFCC0, &unk_1002D54E0);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_1002D95A0;
  *(v23 + 32) = v16;
  sub_10000A2CC(0, &qword_1003BA790, VNRequest_ptr);
  v24 = v16;
  v25 = Array._bridgeToObjectiveC()().super.isa;

  v42 = 0;
  LODWORD(v17) = [v15 performRequests:v25 error:&v42];

  if (v17)
  {
    v26 = v42;
    v27 = [v24 results];
    if (v27)
    {
      v28 = v27;
      sub_10000A2CC(0, &qword_1003BA7A0, VNDocumentObservation_ptr);
      v29 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      v30 = sub_100255838(v29);

      v42 = _swiftEmptyArrayStorage;
      if (v30 >> 62)
      {
LABEL_26:
        v31 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v31 = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v39 = v24;
      v40 = v15;
      if (v31)
      {
        v24 = 0;
        v32 = _swiftEmptyArrayStorage;
        do
        {
          v38 = v32;
          v15 = v24;
          while (1)
          {
            if ((v30 & 0xC000000000000001) != 0)
            {
              v33 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              if (v15 >= *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_25;
              }

              v33 = *(v30 + 8 * v15 + 32);
            }

            v34 = v33;
            v24 = (v15 + 1);
            if (__OFADD__(v15, 1))
            {
              __break(1u);
LABEL_25:
              __break(1u);
              goto LABEL_26;
            }

            objc_opt_self();
            if (swift_dynamicCastObjCClass())
            {
              break;
            }

            ++v15;
            if (v24 == v31)
            {
              v32 = v38;
              goto LABEL_23;
            }
          }

          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          if (*((v42 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v42 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          v32 = v42;
        }

        while (v24 != v31);
      }

      else
      {
        v32 = _swiftEmptyArrayStorage;
      }

LABEL_23:

      v42 = v32;
      sub_100005AD4(&qword_1003BA798, &qword_1002EBBA8);
      CheckedContinuation.resume(returning:)();
    }

    else
    {
    }
  }

  else
  {
    v35 = v42;
    v36 = _convertNSErrorToError(_:)();

    swift_willThrow();
    v42 = v36;
    swift_errorRetain();
    sub_100005AD4(&qword_1003BA798, &qword_1002EBBA8);
    CheckedContinuation.resume(throwing:)();
  }
}

void *sub_100255838(unint64_t isUniquelyReferenced_nonNull_bridgeObject)
{
  if (isUniquelyReferenced_nonNull_bridgeObject >> 62)
  {
    goto LABEL_45;
  }

  v1 = *((isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (v1)
  {
    v2 = 0;
    v28 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
    v29 = isUniquelyReferenced_nonNull_bridgeObject & 0xC000000000000001;
    v27 = isUniquelyReferenced_nonNull_bridgeObject + 32;
    v3 = _swiftEmptyArrayStorage;
    v26 = v1;
    while (1)
    {
      if (v29)
      {
        isUniquelyReferenced_nonNull_bridgeObject = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v2 >= *(v28 + 16))
        {
          goto LABEL_40;
        }

        isUniquelyReferenced_nonNull_bridgeObject = *(v27 + 8 * v2);
      }

      v4 = isUniquelyReferenced_nonNull_bridgeObject;
      v5 = __OFADD__(v2, 1);
      v6 = v2 + 1;
      if (v5)
      {
        break;
      }

      v7 = [isUniquelyReferenced_nonNull_bridgeObject blocksWithTypes:2 inRegion:{0.0, 0.0, 1.0, 1.0}];
      sub_10000A2CC(0, &qword_1003BA7A8, VNObservation_ptr);
      v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      v9 = v8 >> 62;
      if (v8 >> 62)
      {
        v10 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v10 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v11 = v3 >> 62;
      if (v3 >> 62)
      {
        isUniquelyReferenced_nonNull_bridgeObject = _CocoaArrayWrapper.endIndex.getter();
        v12 = isUniquelyReferenced_nonNull_bridgeObject + v10;
        if (__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v10))
        {
LABEL_38:
          __break(1u);
          break;
        }
      }

      else
      {
        isUniquelyReferenced_nonNull_bridgeObject = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v12 = isUniquelyReferenced_nonNull_bridgeObject + v10;
        if (__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v10))
        {
          goto LABEL_38;
        }
      }

      isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
      v30 = v6;
      if (isUniquelyReferenced_nonNull_bridgeObject)
      {
        if (!v11)
        {
          v13 = v3 & 0xFFFFFFFFFFFFFF8;
          if (v12 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            goto LABEL_21;
          }

          goto LABEL_20;
        }

LABEL_19:
        _CocoaArrayWrapper.endIndex.getter();
        goto LABEL_20;
      }

      if (v11)
      {
        goto LABEL_19;
      }

LABEL_20:
      isUniquelyReferenced_nonNull_bridgeObject = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v3 = isUniquelyReferenced_nonNull_bridgeObject;
      v13 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
LABEL_21:
      v32 = v3;
      v14 = *(v13 + 16);
      v15 = *(v13 + 24);
      if (v9)
      {
        isUniquelyReferenced_nonNull_bridgeObject = _CocoaArrayWrapper.endIndex.getter();
        v16 = isUniquelyReferenced_nonNull_bridgeObject;
        if (isUniquelyReferenced_nonNull_bridgeObject)
        {
LABEL_25:
          if (((v15 >> 1) - v14) < v10)
          {
            goto LABEL_42;
          }

          v17 = v13 + 8 * v14 + 32;
          if (v9)
          {
            if (v16 < 1)
            {
              goto LABEL_44;
            }

            sub_10001BAEC(&qword_1003BA7B8, &qword_1003BA7B0, &qword_1002EBBB0, &protocol conformance descriptor for [A]);
            for (i = 0; i != v16; ++i)
            {
              sub_100005AD4(&qword_1003BA7B0, &qword_1002EBBB0);
              v19 = sub_1000A39A8(v31, i, v8);
              v21 = *v20;
              (v19)(v31, 0);
              *(v17 + 8 * i) = v21;
            }
          }

          else
          {
            swift_arrayInitWithCopy();
          }

          v1 = v26;
          v3 = v32;
          if (v10 >= 1)
          {
            v22 = *(v13 + 16);
            v5 = __OFADD__(v22, v10);
            v23 = v22 + v10;
            if (v5)
            {
              goto LABEL_43;
            }

            *(v13 + 16) = v23;
          }

          goto LABEL_5;
        }
      }

      else
      {
        v16 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v16)
        {
          goto LABEL_25;
        }
      }

      v3 = v32;
      if (v10 > 0)
      {
        goto LABEL_41;
      }

LABEL_5:
      v2 = v30;
      if (v30 == v1)
      {
        return v3;
      }
    }

    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    v24 = isUniquelyReferenced_nonNull_bridgeObject;
    v1 = _CocoaArrayWrapper.endIndex.getter();
    isUniquelyReferenced_nonNull_bridgeObject = v24;
  }

  return _swiftEmptyArrayStorage;
}

double sub_100255C30()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return result;
}

uint64_t sub_100255CB0(uint64_t a1, void **a2)
{
  v4 = type metadata accessor for Locale();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v15 - v9;
  v11 = *(v5 + 16);
  v11(&v15 - v9, a1, v4);
  v12 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v11(v8, v10, v4);
  v13 = v12;
  static Published.subscript.setter();
  return (*(v5 + 8))(v10, v4);
}

uint64_t sub_100255E30()
{
  v1 = type metadata accessor for LocalePair();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v3 + v4);
}

uint64_t sub_100255EB8(uint64_t a1)
{
  v4 = *(type metadata accessor for LocalePair() - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10001B16C;

  return sub_1002521B0(a1, v1 + v5);
}

uint64_t sub_100255F94()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_100255FD4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10025609C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10001B558;

  return sub_100252EDC(a1, v4, v5, v6);
}

uint64_t sub_1002561F0()
{
  v1 = type metadata accessor for Locale();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 65) & ~v3;
  v5 = *(v2 + 64);
  v6 = (v5 + v3 + v4) & ~v3;
  v7 = v5 + v6;
  swift_unknownObjectRelease();

  v8 = *(v2 + 8);
  v8(v0 + v4, v1);
  v8(v0 + v6, v1);

  return _swift_deallocObject(v0, v7 + 1);
}

uint64_t sub_1002562F8(uint64_t a1)
{
  type metadata accessor for Locale();
  v3 = *(v1 + 24);
  v11 = *(v1 + 16);
  v4 = *(v1 + 32);
  v5 = *(v1 + 40);
  v6 = *(v1 + 48);
  v7 = *(v1 + 56);
  v8 = *(v1 + 64);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10001B558;

  return sub_10025352C(a1, v11, v3, v4, v5, v6, v7, v8);
}

uint64_t sub_100256480()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40);
}

uint64_t sub_1002564C0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10001B558;

  return sub_100250D68();
}

uint64_t sub_10025657C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10001B16C;

  return sub_10024F070(a1, v4, v5, v6);
}

double sub_100256638(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

void sub_100256658()
{
  v1 = v0 + OBJC_IVAR____TtC17SequoiaTranslator25StaticImageViewController_image;
  *v1 = 0;
  *(v1 + 8) = -1;
  v2 = v0 + OBJC_IVAR____TtC17SequoiaTranslator25StaticImageViewController_narrowViewport;
  *v2 = 0u;
  *(v2 + 16) = 0u;
  *(v2 + 32) = 1;
  *(v0 + OBJC_IVAR____TtC17SequoiaTranslator25StaticImageViewController_scrollView) = 0;
  *(v0 + OBJC_IVAR____TtC17SequoiaTranslator25StaticImageViewController_imageView) = 0;
  *(v0 + OBJC_IVAR____TtC17SequoiaTranslator25StaticImageViewController_currentTranslationView) = 0;
  *(v0 + OBJC_IVAR____TtC17SequoiaTranslator25StaticImageViewController_retranslateSubscription) = 0;
  *(v0 + OBJC_IVAR____TtC17SequoiaTranslator25StaticImageViewController_visualTranslationLocaleSubscription) = 0;
  *(v0 + OBJC_IVAR____TtC17SequoiaTranslator25StaticImageViewController_targetLocaleSubscription) = 0;
  *(v0 + OBJC_IVAR____TtC17SequoiaTranslator25StaticImageViewController_availability) = 0;
  *(v0 + OBJC_IVAR____TtC17SequoiaTranslator25StaticImageViewController_availabilitySubscription) = 0;
  *(v0 + OBJC_IVAR____TtC17SequoiaTranslator25StaticImageViewController_showErrorOnNextEvent) = 0;
  *(v0 + OBJC_IVAR____TtC17SequoiaTranslator25StaticImageViewController_pendingRetranslation) = 0;
  *(v0 + OBJC_IVAR____TtC17SequoiaTranslator25StaticImageViewController_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC17SequoiaTranslator25StaticImageViewController_translationHostingController) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void sub_100256784(void *a1)
{
  v2 = [a1 horizontalSizeClass];
  v3 = [v1 traitCollection];
  v4 = [v3 horizontalSizeClass];

  if (v2 == v4)
  {
    if (qword_1003A9218 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_1000078E8(v5, qword_1003D2758);
    oslog = Logger.logObject.getter();
    v6 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(oslog, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v6, "Ignoring trait collection change: size classes are the same", v7, 2u);
    }
  }

  else
  {

    sub_10024D4C0();
  }
}

uint64_t sub_1002568F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, _BYTE *a7, void *a8, uint64_t a9, uint64_t a10)
{
  v12 = String.subscript.getter();
  v14 = v13;
  v16 = v15;
  v18 = v17;
  swift_beginAccess();
  a8[2] = v12;
  a8[3] = v14;
  a8[4] = v16;
  a8[5] = v18;

  *a7 = 1;
  return result;
}

id sub_100256988(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = (*(a3 + 16))(a3, a1, a2);

  return v3;
}

id sub_1002569CC()
{
  v1 = OBJC_IVAR____TtC17SequoiaTranslator28SwipableCollectionViewLayout____lazy_storage___swipeController;
  v2 = *(v0 + OBJC_IVAR____TtC17SequoiaTranslator28SwipableCollectionViewLayout____lazy_storage___swipeController);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC17SequoiaTranslator28SwipableCollectionViewLayout____lazy_storage___swipeController);
  }

  else
  {
    v4 = [objc_allocWithZone(UISwipeActionController) initWithSwipeActionHost:v0 style:0];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

void sub_100256AF8(void *a1, uint64_t a2, void *a3, char a4)
{
  v9.receiver = a1;
  v9.super_class = type metadata accessor for SwipableCollectionViewLayout();
  v6 = a3;
  v7 = v9.receiver;
  objc_msgSendSuper2(&v9, "prepareForTransitionFromLayout:", v6);
  v8 = sub_1002569CC();
  [v8 setSwipeEnabled:{a4 & 1, v9.receiver, v9.super_class}];
}

id sub_100256F7C(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for SwipableCollectionViewLayout();
  return objc_msgSendSuper2(&v4, "dealloc");
}

void sub_1002572D8(uint64_t a1@<X8>, double a2@<D0>, double a3@<D1>)
{
  v4 = v3;
  v8 = type metadata accessor for IndexPath();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = [v4 collectionView];
  if (v12)
  {
    v17 = v12;
    v13 = [v12 indexPathForItemAtPoint:{a2, a3}];
    if (v13)
    {
      v14 = v13;
      static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();

      (*(v9 + 32))(a1, v11, v8);
    }

    else
    {
      IndexPath.init()();
      v15 = v17;
    }
  }

  else
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }
}

id sub_1002576B0(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t (*a5)(char *))
{
  v8 = type metadata accessor for IndexPath();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = a3;
  v13 = a1;
  v14 = a5(v11);

  (*(v9 + 8))(v11, v8);

  return v14;
}

void sub_1002578A4()
{
  v1 = [v0 collectionView];
  if (v1)
  {
    v2 = v1;
    isa = IndexPath._bridgeToObjectiveC()().super.isa;
    v4 = [v2 cellForItemAtIndexPath:isa];

    if (v4 && (type metadata accessor for CardCollectionViewCell(), swift_dynamicCastClass()))
    {
      v5 = v4;
      v6 = sub_100032204();
      [v6 safeAreaInsets];
    }

    else
    {
      if (qword_1003A92A8 != -1)
      {
        swift_once();
      }

      v7 = type metadata accessor for Logger();
      sub_1000078E8(v7, qword_1003D2908);
      v8 = v4;
      v9 = Logger.logObject.getter();
      v10 = static os_log_type_t.fault.getter();

      if (os_log_type_enabled(v9, v10))
      {
        v11 = swift_slowAlloc();
        v12 = swift_slowAlloc();
        *v11 = 138412290;
        *(v11 + 4) = v8;
        *v12 = v4;
        v13 = v8;
        _os_log_impl(&_mh_execute_header, v9, v10, "Unexpected cell in swipeable collection view: %@; returning zero insets", v11, 0xCu);
        sub_100009EBC(v12, &unk_1003AECA0, &unk_1002D3F10);
      }

      else
      {
      }
    }
  }

  else
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }
}

uint64_t sub_100257B38(uint64_t a1)
{
  sub_100257C14(v1 + OBJC_IVAR____TtC17SequoiaTranslator28SwipableCollectionViewLayout_swipeDelegate, v10);
  if (v11)
  {
    sub_100031DD8(v10, v7);
    sub_100009EBC(v10, &qword_1003BA828, qword_1002EBCC0);
    v3 = v8;
    v4 = v9;
    sub_1000085CC(v7, v8);
    v5 = (*(v4 + 8))(v1, a1, v3, v4);
    sub_100008664(v7);
  }

  else
  {
    sub_100009EBC(v10, &qword_1003BA828, qword_1002EBCC0);
    return 0;
  }

  return v5;
}

uint64_t sub_100257C14(uint64_t a1, uint64_t a2)
{
  v4 = sub_100005AD4(&qword_1003BA828, qword_1002EBCC0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100257C84()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24);
}

id sub_100257CBC()
{
  v1 = (*(*(v0 + 16) + 16))();

  return v1;
}

double sub_100257CFC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_100257D34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = type metadata accessor for UIButton.Configuration();
  __chkstk_darwin(v9 - 8);
  v10 = objc_opt_self();
  v11 = [objc_opt_self() currentTraitCollection];
  v12 = [v10 sbui_systemApertureTextButtonConfigurationCompatibleWithTraitCollection:v11];

  v13 = v12;
  v14 = String._bridgeToObjectiveC()();
  [v13 setTitle:v14];

  sub_10000A2CC(0, &qword_1003B0608, UIButton_ptr);
  static UIButton.Configuration._unconditionallyBridgeFromObjectiveC(_:)();

  sub_10000A2CC(0, &qword_1003A9940, UIAction_ptr);
  v15 = swift_allocObject();
  v15[2] = a2;
  v15[3] = a3;
  v15[4] = a4;
  v15[5] = a5;

  UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  v16 = UIButton.init(configuration:primaryAction:)();

  return v16;
}

uint64_t sub_100257F38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1002580E8();

  return static UIViewRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_100257F9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1002580E8();

  return static UIViewRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_100258000(uint64_t a1)
{
  sub_1002580E8();
  UIViewRepresentable.body.getter();
  __break(1u);
}

unint64_t sub_10025802C()
{
  result = qword_1003BA830;
  if (!qword_1003BA830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003BA830);
  }

  return result;
}

uint64_t sub_100258080()
{

  return _swift_deallocObject(v0, 48);
}

unint64_t sub_1002580E8()
{
  result = qword_1003BA838;
  if (!qword_1003BA838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003BA838);
  }

  return result;
}

uint64_t sub_100258150(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_100005AD4(&qword_1003B2300, &unk_1002D95B0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 40);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_100005AD4(&qword_1003B0A08, &unk_1002DDB80);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 44);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_1002582A0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = sub_100005AD4(&qword_1003B2300, &unk_1002D95B0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 40);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_100005AD4(&qword_1003B0A08, &unk_1002DDB80);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 44);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t type metadata accessor for TabBarLayoutView(uint64_t a1)
{
  result = qword_1003BA898;
  if (!qword_1003BA898)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100258428(uint64_t a1)
{
  sub_100258594(319, &unk_1003BA8A8, &qword_1003ADCC8, &unk_1002D8550, &type metadata accessor for Binding);
  if (v1 <= 0x3F)
  {
    type metadata accessor for TranslationStoreCoreData();
    if (v2 <= 0x3F)
    {
      type metadata accessor for TTSManager(319);
      if (v3 <= 0x3F)
      {
        type metadata accessor for ComposeTranslationViewModel(319);
        if (v4 <= 0x3F)
        {
          type metadata accessor for ConversationViewModel(319);
          if (v5 <= 0x3F)
          {
            type metadata accessor for PersonalTranslatorStartViewModel(319);
            if (v6 <= 0x3F)
            {
              sub_100258594(319, &qword_1003B2380, &qword_1003AC848, &qword_1002D66A0, &type metadata accessor for Environment);
              if (v7 <= 0x3F)
              {
                sub_1002585F8(319);
                if (v8 <= 0x3F)
                {
                  swift_cvw_initStructMetadataWithLayoutString();
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_100258594(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_100005EA8(a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_1002585F8(uint64_t a1)
{
  if (!qword_1003B0A88)
  {
    type metadata accessor for PersistedTranslation();
    Request = type metadata accessor for FetchRequest();
    if (!v2)
    {
      atomic_store(Request, &qword_1003B0A88);
    }
  }
}

BOOL sub_10025866C()
{
  sub_100005AD4(&qword_1003B98C8, &qword_1002E9EB0);
  Binding.wrappedValue.getter();
  if (v3 == 6)
  {
    return 0;
  }

  v0 = v3 == 1;
  sub_10000A948(v2, v3);
  return v0;
}

uint64_t sub_1002586EC@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for EnvironmentValues();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100005AD4(&qword_1003B23E0, &qword_1002D6770);
  __chkstk_darwin(v7);
  v9 = &v13 - v8;
  v10 = type metadata accessor for TabBarLayoutView(0);
  sub_10001F620(v1 + *(v10 + 40), v9, &qword_1003B23E0, &qword_1002D6770);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_100023BD4(v9, a1, &qword_1003AC848, &qword_1002D66A0);
  }

  static os_log_type_t.fault.getter();
  v12 = static Log.runtimeIssuesLog.getter();
  os_log(_:dso:log:_:_:)();

  EnvironmentValues.init()();
  swift_getAtKeyPath();

  return (*(v4 + 8))(v6, v3);
}

void *sub_1002588D4()
{
  v0 = sub_100005AD4(&qword_1003B0B30, &qword_1002DDC90);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v19 - v2;
  type metadata accessor for TabBarLayoutView(0);
  sub_100005AD4(&qword_1003B0A08, &unk_1002DDB80);
  FetchRequest.wrappedValue.getter();
  sub_10001BAEC(&qword_1003B0B38, &qword_1003B0B30, &qword_1002DDC90, &protocol conformance descriptor for FetchedResults<A>);
  v4 = dispatch thunk of Collection.count.getter();
  if (!v4)
  {
    (*(v1 + 8))(v3, v0);
    v6 = _swiftEmptyArrayStorage;
LABEL_9:
    v20 = &_swiftEmptySetSingleton;
    v18 = sub_10025EA7C(v6);

    return v18;
  }

  v5 = v4;
  v21 = _swiftEmptyArrayStorage;
  sub_1000C4B4C(0, v4 & ~(v4 >> 63), 0);
  v6 = v21;
  result = dispatch thunk of Collection.startIndex.getter();
  if ((v5 & 0x8000000000000000) == 0)
  {
    v19 = v1;
    do
    {
      v8 = dispatch thunk of Collection.subscript.read();
      v10 = *v9;
      v8(&v20, 0);
      v11 = [v10 displayLocalePairText];
      v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v14 = v13;

      v21 = v6;
      v16 = v6[2];
      v15 = v6[3];
      if (v16 >= v15 >> 1)
      {
        sub_1000C4B4C((v15 > 1), v16 + 1, 1);
        v6 = v21;
      }

      v6[2] = v16 + 1;
      v17 = &v6[2 * v16];
      v17[4] = v12;
      v17[5] = v14;
      dispatch thunk of Collection.formIndex(after:)();
      --v5;
    }

    while (v5);
    (*(v19 + 8))(v3, v0);
    goto LABEL_9;
  }

  __break(1u);
  return result;
}

double sub_100258B98@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_100005AD4(&qword_1003A9400, &qword_1002D13C0);
  v5 = v4 - 8;
  __chkstk_darwin(v4);
  v7 = &v17 - v6;
  v8 = *(a1[6] + OBJC_IVAR____TtC17SequoiaTranslator27ComposeTranslationViewModel_session);
  v9 = *(a1[7] + OBJC_IVAR____TtC17SequoiaTranslator21ConversationViewModel_session);
  v11 = a1[4];
  v10 = a1[5];
  KeyPath = swift_getKeyPath();
  *&v7[*(type metadata accessor for FavoritesView(0) + 32)] = KeyPath;
  sub_100005AD4(&qword_1003B23E0, &qword_1002D6770);
  swift_storeEnumTagMultiPayload();
  *v7 = v11;
  *(v7 + 1) = v8;
  *(v7 + 2) = v9;
  *(v7 + 3) = v10;
  v13 = *(v5 + 44);
  v14 = type metadata accessor for ColorScheme();
  (*(*(v14 - 8) + 56))(&v7[v13], 1, 1, v14);
  sub_100023BD4(v7, a2, &qword_1003A9400, &qword_1002D13C0);
  v15 = a2 + *(sub_100005AD4(&qword_1003A9408, &qword_1002D13C8) + 36);
  *v15 = xmmword_1002D3320;
  *(v15 + 16) = 1;

  return result;
}

double sub_100258D54@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, char *a4@<X8>)
{
  v7 = *(a3[6] + OBJC_IVAR____TtC17SequoiaTranslator27ComposeTranslationViewModel_session);
  v9 = a3[4];
  v8 = a3[5];
  v10 = *(a3[7] + OBJC_IVAR____TtC17SequoiaTranslator21ConversationViewModel_session);
  KeyPath = swift_getKeyPath();
  *&a4[*(type metadata accessor for FavoritesDetailView(0) + 36)] = KeyPath;
  sub_100005AD4(&qword_1003B23E0, &qword_1002D6770);
  swift_storeEnumTagMultiPayload();
  *a4 = a1;
  *(a4 + 1) = a2;
  *(a4 + 2) = v9;
  *(a4 + 3) = v8;
  *(a4 + 4) = v7;
  *(a4 + 5) = v10;
  v12 = *(sub_100005AD4(&qword_1003BAAD0, &qword_1002EC0B8) + 36);
  v13 = type metadata accessor for ColorScheme();
  (*(*(v13 - 8) + 56))(&a4[v12], 1, 1, v13);

  return result;
}

uint64_t sub_100258EA0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v35 = a1;
  v3 = type metadata accessor for SidebarAdaptableTabViewStyle();
  v36 = *(v3 - 8);
  v37 = v3;
  __chkstk_darwin(v3);
  v34 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100005AD4(&qword_1003B97A0, &unk_1002E9DF8);
  __chkstk_darwin(v5 - 8);
  v33 = &v28 - v6;
  v7 = type metadata accessor for TabBarLayoutView(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7 - 8);
  v10 = sub_100005AD4(&qword_1003BA8F0, &qword_1002EBE80);
  v31 = *(v10 - 8);
  v32 = v10;
  __chkstk_darwin(v10);
  v12 = &v28 - v11;
  v30 = sub_100005AD4(&qword_1003BA8F8, &unk_1002EBE88);
  __chkstk_darwin(v30);
  v29 = &v28 - v13;
  sub_10025D5F4(v1, &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for MainActor();
  v14 = static MainActor.shared.getter();
  v15 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = v14;
  *(v16 + 24) = &protocol witness table for MainActor;
  sub_10025E304(&v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + v15, type metadata accessor for TabBarLayoutView);
  sub_10025D5F4(v1, &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = static MainActor.shared.getter();
  v18 = swift_allocObject();
  *(v18 + 16) = v17;
  *(v18 + 24) = &protocol witness table for MainActor;
  sub_10025E304(&v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v18 + v15, type metadata accessor for TabBarLayoutView);
  Binding.init(get:set:)();
  v39 = v42;
  v40 = v43;
  v41 = v44;
  v38 = v2;
  sub_100005AD4(&qword_1003BA900, &qword_1002EBE98);
  sub_10000C564();
  sub_10001BAEC(&qword_1003BA908, &qword_1003BA900, &qword_1002EBE98, &protocol conformance descriptor for _TupleTabContent<A, B>);
  TabView.init<A>(selection:content:)();
  if (sub_10025866C())
  {
    v19 = enum case for ColorScheme.dark(_:);
    v20 = type metadata accessor for ColorScheme();
    v21 = *(v20 - 8);
    v22 = v33;
    (*(v21 + 104))(v33, v19, v20);
    (*(v21 + 56))(v22, 0, 1, v20);
  }

  else
  {
    v23 = type metadata accessor for ColorScheme();
    v22 = v33;
    (*(*(v23 - 8) + 56))(v33, 1, 1, v23);
  }

  v24 = v29;
  sub_100023BD4(v22, &v29[*(v30 + 36)], &qword_1003B97A0, &unk_1002E9DF8);
  (*(v31 + 32))(v24, v12, v32);
  v25 = v34;
  SidebarAdaptableTabViewStyle.init()();
  sub_10025D95C();
  v26 = v37;
  View.tabViewStyle<A>(_:)();
  (*(v36 + 8))(v25, v26);
  return sub_100009EBC(v24, &qword_1003BA8F8, &unk_1002EBE88);
}

void *sub_100259424@<X0>(void *a2@<X8>)
{
  sub_100005AD4(&qword_1003B98C8, &qword_1002E9EB0);
  result = Binding.wrappedValue.getter();
  v4 = v6;
  v5 = v7;
  if (v7 == 6)
  {
    v4 = 0;
    v5 = 0;
  }

  *a2 = v4;
  a2[1] = v5;
  return result;
}

uint64_t sub_100259490(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_100005B2C(*a1, a1[1]);
  sub_100005AD4(&qword_1003B98C8, &qword_1002E9EB0);
  return Binding.wrappedValue.setter();
}

id sub_1002594F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v148 = a2;
  v3 = sub_100005AD4(&qword_1003BA920, &qword_1002EBEA0);
  __chkstk_darwin(v3 - 8);
  v5 = &v108 - v4;
  v146 = sub_100005AD4(&qword_1003BA928, &qword_1002EBEA8);
  v145 = *(v146 - 8);
  __chkstk_darwin(v146);
  v144 = &v108 - v6;
  v126 = sub_100005AD4(&qword_1003BA930, &qword_1002EBEB0);
  v118 = *(v126 - 8);
  __chkstk_darwin(v126);
  v117 = &v108 - v7;
  v123 = sub_100005AD4(&qword_1003BA938, &qword_1002EBEB8);
  __chkstk_darwin(v123);
  v125 = &v108 - v8;
  v122 = sub_100005AD4(&qword_1003BA940, &qword_1002EBEC0);
  v113 = *(v122 - 8);
  __chkstk_darwin(v122);
  v112 = &v108 - v9;
  v124 = sub_100005AD4(&qword_1003BA948, &unk_1002EBEC8);
  v115 = *(v124 - 8);
  __chkstk_darwin(v124);
  v114 = &v108 - v10;
  v120 = type metadata accessor for UserInterfaceSizeClass();
  v127 = *(v120 - 8);
  __chkstk_darwin(v120);
  v109 = &v108 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v119 = sub_100005AD4(&qword_1003AC998, &qword_1002D6950);
  __chkstk_darwin(v119);
  v13 = &v108 - v12;
  v14 = sub_100005AD4(&qword_1003AC848, &qword_1002D66A0);
  v15 = __chkstk_darwin(v14 - 8);
  v116 = &v108 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v15);
  v19 = &v108 - v18;
  __chkstk_darwin(v17);
  v149 = &v108 - v20;
  v131 = sub_100005AD4(&qword_1003BA950, &qword_1002EBED8);
  v130 = *(v131 - 8);
  __chkstk_darwin(v131);
  v121 = &v108 - v21;
  v137 = sub_100005AD4(&qword_1003BA958, &qword_1002EBEE0);
  __chkstk_darwin(v137);
  v129 = &v108 - v22;
  v133 = sub_100005AD4(&qword_1003BA960, &qword_1002EBEE8);
  __chkstk_darwin(v133);
  v134 = &v108 - v23;
  v135 = sub_100005AD4(&qword_1003BA968, &qword_1002EBEF0);
  v111 = *(v135 - 8);
  __chkstk_darwin(v135);
  v110 = &v108 - v24;
  v143 = sub_100005AD4(&qword_1003BA970, &qword_1002EBEF8);
  __chkstk_darwin(v143);
  v142 = &v108 - v25;
  v141 = sub_100005AD4(&qword_1003BA978, &qword_1002EBF00);
  v140 = *(v141 - 8);
  __chkstk_darwin(v141);
  v154 = &v108 - v26;
  v153 = sub_100005AD4(&qword_1003BA980, &qword_1002EBF08);
  v27 = *(v153 - 8);
  __chkstk_darwin(v153);
  v128 = &v108 - v28;
  v29 = sub_100005AD4(&qword_1003BA988, &qword_1002EBF10);
  v30 = __chkstk_darwin(v29 - 8);
  v132 = &v108 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30);
  v33 = &v108 - v32;
  v139 = sub_100005AD4(&qword_1003BA990, &qword_1002EBF18);
  v138 = *(v139 - 8);
  __chkstk_darwin(v139);
  v35 = &v108 - v34;
  v158 = 0uLL;
  v155 = a1;
  v156 = a1;
  sub_100005AD4(&qword_1003BA998, &qword_1002EBF20);
  v36 = sub_100005AD4(&qword_1003B0B00, &qword_1002DDC38);
  v37 = sub_10000C564();
  sub_10001BAEC(&qword_1003BA9A0, &qword_1003BA998, &qword_1002EBF20, &protocol conformance descriptor for NavigationStack<A, B>);
  v150 = sub_1001072CC();
  v151 = v35;
  v38 = Tab<>.init(value:content:label:)();
  v40 = sub_100003688(v38, v39);
  v147 = v5;
  if (v40 && (v160 = &type metadata for TranslateFeatures, v161 = sub_100009DF8(), LOBYTE(v158) = 0, v41 = isFeatureEnabled(_:)(), sub_100008664(&v158), (v41 & 1) != 0))
  {
    v157 = xmmword_1002D32F0;
    sub_100005AD4(&qword_1003BAA50, &unk_1002EBFC0);
    v42 = sub_100005EA8(&qword_1003A9420, &qword_1002D13E0);
    v43 = sub_10025E078();
    *&v158 = v42;
    *(&v158 + 1) = &type metadata for AppSection;
    v159 = v43;
    v160 = v37;
    swift_getOpaqueTypeConformance2();
    v44 = v128;
    Tab<>.init(value:content:label:)();
    v45 = v44;
    v46 = v153;
    (*(v27 + 32))(v33, v45, v153);
    v47 = v46;
    v48 = 0;
  }

  else
  {
    v48 = 1;
    v47 = v153;
  }

  v136 = v27;
  v49 = *(v27 + 56);
  v152 = v33;
  v50 = v49(v33, v48, 1, v47);
  v158 = xmmword_1002D3300;
  __chkstk_darwin(v50);
  sub_100005AD4(&qword_1003BA9A8, &qword_1002EBF28);
  sub_10001BAEC(&qword_1003BA9B0, &qword_1003BA9A8, &qword_1002EBF28, &protocol conformance descriptor for NavigationStack<A, B>);
  Tab<>.init(value:content:label:)();
  v160 = &type metadata for TranslateFeatures;
  v161 = sub_100009DF8();
  LOBYTE(v158) = 10;
  v51 = isFeatureEnabled(_:)();
  sub_100008664(&v158);
  v52 = v149;
  if ((v51 & 1) == 0)
  {
    goto LABEL_12;
  }

  result = MobileGestalt_get_current_device();
  if (!result)
  {
    __break(1u);
    return result;
  }

  if ((v54 = result, deviceSupportsPersonalTranslator = MobileGestalt_get_deviceSupportsPersonalTranslator(), v54, (deviceSupportsPersonalTranslator & 1) == 0) && (!_LTIsInternalInstall() || (v68 = [objc_opt_self() standardUserDefaults], v69 = String._bridgeToObjectiveC()(), v70 = objc_msgSend(v68, "BOOLForKey:", v69), v68, v69, !v70)) || (v56 = *(v155 + 64), swift_getKeyPath(), *&v158 = v56, sub_10025EFC8(&qword_1003B3270, type metadata accessor for PersonalTranslatorStartViewModel, &unk_1002E6B6C), ObservationRegistrar.access<A, B>(_:keyPath:)(), , v57 = *(v56 + 16), swift_getKeyPath(), *&v158 = v57, sub_10025EFC8(&qword_1003B4900, type metadata accessor for PersonalTranslatorViewModel, &unk_1002E7508), , ObservationRegistrar.access<A, B>(_:keyPath:)(), , v58 = *(v57 + OBJC_IVAR____TtC17SequoiaTranslator27PersonalTranslatorViewModel__shouldShowPersonalTranslatorTab), v59 = , v58 != 1))
  {
LABEL_12:
    v71 = [objc_opt_self() currentDevice];
    v72 = [v71 userInterfaceIdiom];

    if (v72 != 1)
    {
      v80 = 1;
      v64 = v147;
      v65 = v144;
      v63 = v142;
      v66 = v139;
      v67 = v136;
      v81 = v129;
LABEL_24:
      (*(v130 + 56))(v81, v80, 1, v131);
      sub_10001F620(v81, v134, &qword_1003BA958, &qword_1002EBEE0);
      swift_storeEnumTagMultiPayload();
      sub_10025DA50();
      sub_10025DB1C();
      _ConditionalContent<>.init(storage:)();
      sub_100009EBC(v81, &qword_1003BA958, &qword_1002EBEE0);
      goto LABEL_25;
    }

    v111 = v36;
    sub_1002586EC(v52);
    v73 = v127;
    v74 = v52;
    v75 = v120;
    (*(v127 + 104))(v19, enum case for UserInterfaceSizeClass.compact(_:), v120);
    (*(v73 + 56))(v19, 0, 1, v75);
    v76 = *(v119 + 48);
    sub_10001F620(v74, v13, &qword_1003AC848, &qword_1002D66A0);
    sub_10001F620(v19, &v13[v76], &qword_1003AC848, &qword_1002D66A0);
    v77 = *(v73 + 48);
    v78 = v77(v13, 1, v75);
    v67 = v136;
    v108 = v37;
    if (v78 == 1)
    {
      sub_100009EBC(v19, &qword_1003AC848, &qword_1002D66A0);
      sub_100009EBC(v74, &qword_1003AC848, &qword_1002D66A0);
      if (v77(&v13[v76], 1, v75) == 1)
      {
        v79 = sub_100009EBC(v13, &qword_1003AC848, &qword_1002D66A0);
LABEL_22:
        v158 = xmmword_1002D3320;
        __chkstk_darwin(v79);
        sub_100005AD4(&qword_1003BA9F0, &qword_1002EBF38);
        sub_10001BAEC(&qword_1003BA9E8, &qword_1003BA9F0, &qword_1002EBF38, &protocol conformance descriptor for NavigationStack<A, B>);
        v92 = v112;
        Tab<>.init(value:content:label:)();
        v93 = sub_10025DC68();
        v94 = v114;
        v95 = v122;
        TabContent.accessibilityIdentifier(_:isEnabled:)();
        (*(v113 + 8))(v92, v95);
        v96 = v115;
        v97 = v124;
        (*(v115 + 16))(v125, v94, v124);
        swift_storeEnumTagMultiPayload();
        *&v158 = v95;
        *(&v158 + 1) = v93;
        swift_getOpaqueTypeConformance2();
        sub_10025DD34();
        v87 = v121;
        _ConditionalContent<>.init(storage:)();
        (*(v96 + 8))(v94, v97);
        goto LABEL_23;
      }
    }

    else
    {
      v82 = v116;
      sub_10001F620(v13, v116, &qword_1003AC848, &qword_1002D66A0);
      if (v77(&v13[v76], 1, v75) != 1)
      {
        v88 = v127;
        v89 = &v13[v76];
        v90 = v109;
        (*(v127 + 32))(v109, v89, v75);
        sub_10025EFC8(&qword_1003AC9D0, &type metadata accessor for UserInterfaceSizeClass, &protocol conformance descriptor for UserInterfaceSizeClass);
        LODWORD(v119) = dispatch thunk of static Equatable.== infix(_:_:)();
        v91 = *(v88 + 8);
        v91(v90, v75);
        sub_100009EBC(v19, &qword_1003AC848, &qword_1002D66A0);
        sub_100009EBC(v149, &qword_1003AC848, &qword_1002D66A0);
        v91(v82, v75);
        v79 = sub_100009EBC(v13, &qword_1003AC848, &qword_1002D66A0);
        if (v119)
        {
          goto LABEL_22;
        }

LABEL_20:
        __chkstk_darwin(v79);
        sub_100005AD4(&qword_1003BAA08, &qword_1002EBF40);
        sub_10001BAEC(&qword_1003BAA00, &qword_1003BAA08, &qword_1002EBF40, &protocol conformance descriptor for _TupleTabContent<A, B>);
        v83 = v117;
        TabSection<>.init<>(content:header:)();
        v84 = v118;
        v85 = v126;
        (*(v118 + 16))(v125, v83, v126);
        swift_storeEnumTagMultiPayload();
        v86 = sub_10025DC68();
        *&v158 = v122;
        *(&v158 + 1) = v86;
        swift_getOpaqueTypeConformance2();
        sub_10025DD34();
        v87 = v121;
        _ConditionalContent<>.init(storage:)();
        (*(v84 + 8))(v83, v85);
LABEL_23:
        v81 = v129;
        sub_100023BD4(v87, v129, &qword_1003BA950, &qword_1002EBED8);
        v80 = 0;
        v64 = v147;
        v65 = v144;
        v63 = v142;
        v66 = v139;
        goto LABEL_24;
      }

      sub_100009EBC(v19, &qword_1003AC848, &qword_1002D66A0);
      sub_100009EBC(v149, &qword_1003AC848, &qword_1002D66A0);
      (*(v127 + 8))(v82, v75);
    }

    v79 = sub_100009EBC(v13, &qword_1003AC998, &qword_1002D6950);
    goto LABEL_20;
  }

  v158 = xmmword_1002D3310;
  __chkstk_darwin(v59);
  sub_100005AD4(&qword_1003BA9C8, &qword_1002EBF30);
  sub_10001BAEC(&qword_1003BA9C0, &qword_1003BA9C8, &qword_1002EBF30, &protocol conformance descriptor for NavigationStack<A, B>);
  v60 = v110;
  Tab<>.init(value:content:label:)();
  v61 = v111;
  v62 = v135;
  (*(v111 + 16))(v134, v60, v135);
  swift_storeEnumTagMultiPayload();
  sub_10025DA50();
  sub_10025DB1C();
  v63 = v142;
  _ConditionalContent<>.init(storage:)();
  (*(v61 + 8))(v60, v62);
  v64 = v147;
  v65 = v144;
  v66 = v139;
  v67 = v136;
LABEL_25:
  sub_10025DDF8();
  dispatch thunk of TabContent._identifiedView.getter();
  v98 = v132;
  sub_10001F620(v152, v132, &qword_1003BA988, &qword_1002EBF10);
  v99 = 1;
  v100 = v153;
  if ((*(v67 + 48))(v98, 1, v153) != 1)
  {
    v101 = v128;
    (*(v67 + 32))(v128, v98, v100);
    sub_10025DF90();
    dispatch thunk of TabContent._identifiedView.getter();
    (*(v67 + 8))(v101, v100);
    v99 = 0;
  }

  v102 = sub_100005AD4(&qword_1003BAA18, &qword_1002EBF48);
  (*(*(v102 - 8) + 56))(v64, v99, 1, v102);
  v103 = sub_100005AD4(&qword_1003BAA20, &unk_1002EBF50);
  sub_10025DEC4();
  v104 = v148;
  v105 = v154;
  v106 = v141;
  dispatch thunk of TabContent._identifiedView.getter();
  sub_10025DA50();
  sub_10025DB1C();
  _ConditionalContent<>._identifiedView.getter();
  sub_100009EBC(v63, &qword_1003BA970, &qword_1002EBEF8);
  (*(v140 + 8))(v105, v106);
  sub_100009EBC(v152, &qword_1003BA988, &qword_1002EBF10);
  (*(v138 + 8))(v151, v66);
  v107 = *(v103 + 48);
  (*(v145 + 32))(v104, v65, v146);
  return sub_100023BD4(v64, v104 + v107, &qword_1003BA920, &qword_1002EBEA0);
}

uint64_t sub_10025AF18(uint64_t a1)
{
  sub_100005AD4(&qword_1003BAB20, &unk_1002EC0F0);
  sub_100005EA8(&qword_1003A9410, &unk_1002D13D0);
  sub_10025EEE0();
  sub_10000C564();
  swift_getOpaqueTypeConformance2();
  return NavigationStack.init<>(root:)();
}

uint64_t sub_10025AFE0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v3 = sub_100005AD4(&qword_1003A9410, &unk_1002D13D0);
  v4 = v3 - 8;
  __chkstk_darwin(v3);
  v6 = (&v23 - v5);
  v8 = a1[4];
  v7 = a1[5];
  v9 = a1[7];
  type metadata accessor for ConversationContext(0);
  sub_10025EFC8(&unk_1003BC490, type metadata accessor for ConversationContext, &unk_1002D86C0);

  v23 = v9;
  v10 = EnvironmentObject.init()();
  v12 = v11;
  KeyPath = swift_getKeyPath();
  v14 = type metadata accessor for TranslateContentView(0);
  *(v6 + v14[6]) = KeyPath;
  sub_100005AD4(&qword_1003B23E0, &qword_1002D6770);
  swift_storeEnumTagMultiPayload();
  *v6 = v10;
  v6[1] = v12;
  type metadata accessor for ComposeTranslationViewModel(0);
  sub_10025EFC8(&unk_1003BC4A0, type metadata accessor for ComposeTranslationViewModel, &unk_1002D73F8);
  v6[2] = ObservedObject.init(wrappedValue:)();
  v6[3] = v15;
  v16 = (v6 + v14[7]);
  type metadata accessor for SceneContext(0);
  sub_10025EFC8(&qword_1003AC860, type metadata accessor for SceneContext, &unk_1002E8C28);
  *v16 = EnvironmentObject.init()();
  v16[1] = v17;
  *(v6 + v14[8]) = v8;
  *(v6 + v14[9]) = v7;
  *(v6 + v14[10]) = v23;
  v18 = *(v4 + 44);
  v19 = type metadata accessor for ColorScheme();
  (*(*(v19 - 8) + 56))(v6 + v18, 1, 1, v19);
  v20 = v24;
  sub_100023BD4(v6, v24, &qword_1003A9410, &unk_1002D13D0);
  result = sub_100005AD4(&qword_1003A9418, &unk_1002EC100);
  v22 = v20 + *(result + 36);
  *v22 = 0;
  *(v22 + 8) = 0;
  *(v22 + 16) = 1;
  return result;
}

double sub_10025B2D4@<D0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for ImageTranslationView(0);
  __chkstk_darwin(v2);
  v4 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100005AD4(&qword_1003A9420, &qword_1002D13E0);
  v6 = v5 - 8;
  __chkstk_darwin(v5);
  v8 = &v20 - v7;
  sub_10011C1DC(v4);
  sub_100005AD4(&qword_1003AEFD0, &qword_1002E6520);
  type metadata accessor for ToolbarPlacement();
  *(swift_allocObject() + 16) = xmmword_1002D3160;
  static ToolbarPlacement.tabBar.getter();
  sub_10025EFC8(&qword_1003B9868, type metadata accessor for ImageTranslationView, &unk_1002DE430);
  View.toolbarBackground(_:for:)();

  sub_10025E298(v4);
  v9 = static Color.appBackgroundColor.getter();
  LOBYTE(v4) = static Edge.Set.all.getter();
  v10 = static Alignment.center.getter();
  v12 = v11;
  v13 = &v8[*(sub_100005AD4(&qword_1003BAA48, &unk_1002EBF60) + 36)];
  *v13 = v9;
  v13[8] = v4;
  *(v13 + 2) = v10;
  *(v13 + 3) = v12;
  v14 = *(v6 + 44);
  v15 = enum case for ColorScheme.dark(_:);
  v16 = type metadata accessor for ColorScheme();
  v17 = *(v16 - 8);
  (*(v17 + 104))(&v8[v14], v15, v16);
  (*(v17 + 56))(&v8[v14], 0, 1, v16);
  sub_100023BD4(v8, a1, &qword_1003A9420, &qword_1002D13E0);
  v18 = a1 + *(sub_100005AD4(&qword_1003A9428, &qword_1002D13E8) + 36);
  result = 0.0;
  *v18 = xmmword_1002D32F0;
  *(v18 + 16) = 1;
  return result;
}

uint64_t sub_10025B5E8@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a5@<X8>)
{
  v19[1] = a5;
  v7 = sub_100005AD4(&qword_1003B0B28, &qword_1002DDC88);
  __chkstk_darwin(v7);
  v9 = v19 - v8;
  v10 = sub_100005AD4(&qword_1003A93D8, &unk_1002D3FC0);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v19 - v12;
  v14 = [objc_opt_self() mainBundle];
  v21._object = 0xE000000000000000;
  v15._countAndFlagsBits = a1;
  v15._object = a2;
  v16._countAndFlagsBits = 0;
  v16._object = 0xE000000000000000;
  v21._countAndFlagsBits = 0;
  v17 = NSLocalizedString(_:tableName:bundle:value:comment:)(v15, 0, v14, v16, v21);

  v20 = v17;
  sub_10001F278();
  Label<>.init<A>(_:systemImage:)();
  (*(v11 + 16))(v9, v13, v10);
  swift_storeEnumTagMultiPayload();
  sub_10001BAEC(&qword_1003AA3C8, &qword_1003A93D8, &unk_1002D3FC0, &protocol conformance descriptor for Label<A, B>);
  _ConditionalContent<>.init(storage:)();
  return (*(v11 + 8))(v13, v10);
}

uint64_t sub_10025B830(uint64_t a1)
{
  sub_100005AD4(&qword_1003BAAE0, &qword_1002EC0C0);
  sub_10025EBE4();
  return NavigationStack.init<>(root:)();
}

uint64_t sub_10025B8A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v77 = a2;
  v75 = sub_100005AD4(&qword_1003A9440, &unk_1002D1400);
  __chkstk_darwin(v75);
  v4 = (&v68 - v3);
  v76 = sub_100005AD4(&qword_1003BAB08, &qword_1002EC0C8);
  v5 = *(v76 - 8);
  __chkstk_darwin(v76);
  v7 = &v68 - v6;
  v71 = sub_100005AD4(&qword_1003BAB10, &qword_1002EC0D0);
  __chkstk_darwin(v71);
  v74 = &v68 - v8;
  v72 = sub_100005AD4(&qword_1003A9430, &qword_1002D13F0);
  __chkstk_darwin(v72);
  v10 = (&v68 - v9);
  v73 = sub_100005AD4(&qword_1003BAB18, &qword_1002EC0D8);
  v11 = *(v73 - 8);
  __chkstk_darwin(v73);
  v13 = &v68 - v12;
  if (qword_1003A91F0 != -1)
  {
    swift_once();
  }

  v14 = *(a1 + 56);
  v15 = *&v14[OBJC_IVAR____TtC17SequoiaTranslator21ConversationViewModel_deviceHelper];
  v16 = *&v14[OBJC_IVAR____TtC17SequoiaTranslator21ConversationViewModel_session];
  if (byte_1003D26A0 == 1)
  {
    type metadata accessor for ConversationContext(0);
    sub_10025EFC8(&unk_1003BC490, type metadata accessor for ConversationContext, &unk_1002D86C0);
    v69 = v14;

    v17 = EnvironmentObject.init()();
    v70 = v16;
    v18 = v17;
    v20 = v19;
    KeyPath = swift_getKeyPath();
    v22 = type metadata accessor for ConversationView_v1(0);
    *(v10 + v22[7]) = KeyPath;
    sub_100005AD4(&qword_1003B23E0, &qword_1002D6770);
    swift_storeEnumTagMultiPayload();
    *(v10 + v22[8]) = swift_getKeyPath();
    sub_100005AD4(&qword_1003AEFE0, &qword_1002DA710);
    swift_storeEnumTagMultiPayload();
    type metadata accessor for SharedTranslationOptions(0);
    sub_10025EFC8(&qword_1003AE918, type metadata accessor for SharedTranslationOptions, &unk_1002E997C);
    *v10 = EnvironmentObject.init()();
    v10[1] = v23;
    type metadata accessor for SceneContext(0);
    sub_10025EFC8(&qword_1003AC860, type metadata accessor for SceneContext, &unk_1002E8C28);
    v10[2] = EnvironmentObject.init()();
    v10[3] = v24;
    v10[4] = v18;
    v10[5] = v20;
    v25 = (v10 + v22[9]);
    type metadata accessor for ConversationViewModel(0);
    sub_10025EFC8(&qword_1003AE4F8, type metadata accessor for ConversationViewModel, &unk_1002DB3D0);
    *v25 = ObservedObject.init(wrappedValue:)();
    v25[1] = v26;
    *(v10 + v22[10]) = v15;
    v27 = (v10 + v22[11]);
    type metadata accessor for LanguagesService();
    sub_10025EFC8(&unk_1003ABC30, &type metadata accessor for LanguagesService, &protocol conformance descriptor for LanguagesService);
    *v27 = ObservedObject.init(wrappedValue:)();
    v27[1] = v28;
    v29 = (v10 + v22[12]);
    type metadata accessor for TranslationSession_RD(0);
    sub_10025EFC8(&qword_1003AEF10, type metadata accessor for TranslationSession_RD, "ݷ\b");
    *v29 = ObservedObject.init(wrappedValue:)();
    v29[1] = v30;
    v31 = v10 + v22[13];
    LOBYTE(v81) = 0;
    State.init(wrappedValue:)();
    v32 = *(&v78 + 1);
    *v31 = v78;
    *(v31 + 1) = v32;
    v33 = v22[14];
    v81 = 0;
    State.init(wrappedValue:)();
    *(v10 + v33) = v78;
    v34 = v72;
    v35 = *(v72 + 36);
    v36 = type metadata accessor for ColorScheme();
    (*(*(v36 - 8) + 56))(v10 + v35, 1, 1, v36);
    sub_100023BD4(v10, v13, &qword_1003A9430, &qword_1002D13F0);
    v37 = &v13[*(sub_100005AD4(&qword_1003A9438, &qword_1002D13F8) + 36)];
    *v37 = xmmword_1002D3300;
    v37[16] = 1;
    v38 = v73;
    (*(v11 + 16))(v74, v13, v73);
    swift_storeEnumTagMultiPayload();
    v39 = sub_10025ED08();
    v40 = sub_10000C564();
    *&v78 = v34;
    *(&v78 + 1) = &type metadata for AppSection;
    v79 = v39;
    v80 = v40;
    swift_getOpaqueTypeConformance2();
    v41 = sub_10025EDF0();
    *&v78 = v75;
    *(&v78 + 1) = &type metadata for AppSection;
    v79 = v41;
    v80 = v40;
    swift_getOpaqueTypeConformance2();
    _ConditionalContent<>.init(storage:)();
    return (*(v11 + 8))(v13, v38);
  }

  else
  {
    v43 = swift_getKeyPath();
    v70 = v5;
    v44 = v43;
    v45 = type metadata accessor for ConversationView(0);
    *(v4 + v45[6]) = v44;
    sub_100005AD4(&qword_1003B23E0, &qword_1002D6770);
    swift_storeEnumTagMultiPayload();
    *(v4 + v45[7]) = swift_getKeyPath();
    sub_100005AD4(&qword_1003AEFE0, &qword_1002DA710);
    swift_storeEnumTagMultiPayload();
    type metadata accessor for SharedTranslationOptions(0);
    v69 = v7;
    sub_10025EFC8(&qword_1003AE918, type metadata accessor for SharedTranslationOptions, &unk_1002E997C);
    v46 = v14;

    *v4 = EnvironmentObject.init()();
    v4[1] = v47;
    type metadata accessor for SceneContext(0);
    sub_10025EFC8(&qword_1003AC860, type metadata accessor for SceneContext, &unk_1002E8C28);
    v4[2] = EnvironmentObject.init()();
    v4[3] = v48;
    v49 = (v4 + v45[8]);
    type metadata accessor for ConversationViewModel(0);
    sub_10025EFC8(&qword_1003AE4F8, type metadata accessor for ConversationViewModel, &unk_1002DB3D0);
    *v49 = ObservedObject.init(wrappedValue:)();
    v49[1] = v50;
    *(v4 + v45[9]) = v15;
    v51 = (v4 + v45[10]);
    type metadata accessor for LanguagesService();
    sub_10025EFC8(&unk_1003ABC30, &type metadata accessor for LanguagesService, &protocol conformance descriptor for LanguagesService);
    *v51 = ObservedObject.init(wrappedValue:)();
    v51[1] = v52;
    v53 = (v4 + v45[11]);
    type metadata accessor for TranslationSession_RD(0);
    sub_10025EFC8(&qword_1003AEF10, type metadata accessor for TranslationSession_RD, "ݷ\b");
    *v53 = ObservedObject.init(wrappedValue:)();
    v53[1] = v54;
    v55 = v4 + v45[12];
    LOBYTE(v81) = 0;
    State.init(wrappedValue:)();
    v56 = *(&v78 + 1);
    *v55 = v78;
    *(v55 + 1) = v56;
    v57 = v45[13];
    v81 = 0;
    State.init(wrappedValue:)();
    *(v4 + v57) = v78;
    v58 = v75;
    v59 = *(v75 + 36);
    v60 = type metadata accessor for ColorScheme();
    (*(*(v60 - 8) + 56))(v4 + v59, 1, 1, v60);
    v61 = v69;
    sub_100023BD4(v4, v69, &qword_1003A9440, &unk_1002D1400);
    v62 = &v61[*(sub_100005AD4(&qword_1003A9448, &unk_1002EC0E0) + 36)];
    *v62 = xmmword_1002D3300;
    v62[16] = 1;
    v63 = v70;
    v64 = v76;
    (*(v70 + 16))(v74, v61, v76);
    swift_storeEnumTagMultiPayload();
    v65 = sub_10025ED08();
    v66 = sub_10000C564();
    *&v78 = v72;
    *(&v78 + 1) = &type metadata for AppSection;
    v79 = v65;
    v80 = v66;
    swift_getOpaqueTypeConformance2();
    v67 = sub_10025EDF0();
    *&v78 = v58;
    *(&v78 + 1) = &type metadata for AppSection;
    v79 = v67;
    v80 = v66;
    swift_getOpaqueTypeConformance2();
    _ConditionalContent<>.init(storage:)();
    return (*(v63 + 8))(v61, v64);
  }
}

uint64_t sub_10025C43C(uint64_t a1)
{
  sub_100005AD4(&qword_1003BAA58, &qword_1002EBFD0);
  type metadata accessor for PersonalTranslatorLaunchView(255);
  sub_10025EFC8(&qword_1003BAA60, type metadata accessor for PersonalTranslatorLaunchView, "A7\t");
  sub_10000C564();
  swift_getOpaqueTypeConformance2();
  return NavigationStack.init<>(root:)();
}

double sub_10025C528@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for PersonalTranslatorLaunchView(0);
  v5 = v4 - 8;
  __chkstk_darwin(v4);
  v7 = (&v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *(a1 + 64);
  type metadata accessor for SceneContext(0);
  sub_10025EFC8(&qword_1003AC860, type metadata accessor for SceneContext, &unk_1002E8C28);

  v9 = EnvironmentObject.init()();
  v11 = v10;
  *(v7 + *(v5 + 32)) = swift_getKeyPath();
  sub_100005AD4(&qword_1003AEFE0, &qword_1002DA710);
  swift_storeEnumTagMultiPayload();
  *v7 = v8;
  v7[1] = v9;
  v7[2] = v11;
  sub_10025E304(v7, a2, type metadata accessor for PersonalTranslatorLaunchView);
  v12 = a2 + *(sub_100005AD4(&qword_1003A9450, &qword_1002D1410) + 36);
  result = 0.0;
  *v12 = xmmword_1002D3310;
  *(v12 + 16) = 1;
  return result;
}

uint64_t sub_10025C69C()
{
  v0 = sub_100005AD4(&qword_1003B0B28, &qword_1002DDC88);
  __chkstk_darwin(v0);
  v2 = &v13 - v1;
  v3 = sub_100005AD4(&qword_1003A93D8, &unk_1002D3FC0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v13 - v5;
  v7 = [objc_opt_self() mainBundle];
  v14._object = 0xE000000000000000;
  v8.value._object = 0x80000001002F0080;
  v9._countAndFlagsBits = 1163282764;
  v9._object = 0xE400000000000000;
  v8.value._countAndFlagsBits = 0xD000000000000012;
  v10._countAndFlagsBits = 0;
  v10._object = 0xE000000000000000;
  v14._countAndFlagsBits = 0;
  v11 = NSLocalizedString(_:tableName:bundle:value:comment:)(v9, v8, v7, v10, v14);

  v13 = v11;
  sub_10001F278();
  Label<>.init<A>(_:systemImage:)();
  (*(v4 + 16))(v2, v6, v3);
  swift_storeEnumTagMultiPayload();
  sub_10001BAEC(&qword_1003AA3C8, &qword_1003A93D8, &unk_1002D3FC0, &protocol conformance descriptor for Label<A, B>);
  _ConditionalContent<>.init(storage:)();
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_10025C8FC(uint64_t a1, uint64_t a2)
{
  sub_100005AD4(&qword_1003BAA68, &unk_1002EC008);
  sub_100005EA8(&qword_1003A9400, &qword_1002D13C0);
  sub_10025E374();
  sub_10000C564();
  swift_getOpaqueTypeConformance2();
  return NavigationStack.init<>(root:)();
}

uint64_t sub_10025C9C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a1;
  v34 = a2;
  v3 = type metadata accessor for TabBarLayoutView(0);
  v28 = *(v3 - 8);
  v4 = *(v28 + 64);
  __chkstk_darwin(v3 - 8);
  v27 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100005AD4(&qword_1003BAA78, &qword_1002EC050);
  v6 = *(v5 - 8);
  v32 = v5;
  v33 = v6;
  __chkstk_darwin(v5);
  v30 = &v25 - v7;
  v8 = sub_100005AD4(&qword_1003BAA80, &qword_1002EC058);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v25 - v10;
  v29 = sub_100005AD4(&qword_1003BAA88, qword_1002EC060);
  v31 = *(v29 - 8);
  __chkstk_darwin(v29);
  v13 = &v25 - v12;
  v37 = xmmword_1002D3320;
  v35 = a1;
  sub_100005AD4(&qword_1003BA9F0, &qword_1002EBF38);
  sub_100005AD4(&qword_1003B0AF0, &unk_1002DDC28);
  sub_10000C564();
  sub_10001BAEC(&qword_1003BA9E8, &qword_1003BA9F0, &qword_1002EBF38, &protocol conformance descriptor for NavigationStack<A, B>);
  sub_100107214();
  Tab<>.init(value:content:label:)();
  v14 = sub_10025E494();
  TabContent.accessibilityIdentifier(_:isEnabled:)();
  (*(v9 + 8))(v11, v8);
  v15 = v26;
  v36 = sub_1002588D4();
  swift_getKeyPath();
  v16 = v27;
  sub_10025D5F4(v15, v27);
  v17 = (*(v28 + 80) + 16) & ~*(v28 + 80);
  v18 = swift_allocObject();
  sub_10025E304(v16, v18 + v17, type metadata accessor for TabBarLayoutView);
  sub_100005AD4(&qword_1003A95C0, &qword_1002D1A10);
  sub_100005AD4(&qword_1003BAA98, &qword_1002EC098);
  sub_10001BAEC(&qword_1003B0B10, &qword_1003A95C0, &qword_1002D1A10, &protocol conformance descriptor for [A]);
  v19 = sub_100005EA8(&qword_1003BAAA0, &qword_1002EC0A0);
  v20 = sub_10025E7E8();
  *&v37 = v19;
  *(&v37 + 1) = v20;
  swift_getOpaqueTypeConformance2();
  v21 = v30;
  ForEach<>.init<A>(_:id:content:)();
  *&v37 = v8;
  *(&v37 + 1) = v14;
  swift_getOpaqueTypeConformance2();
  v22 = v29;
  dispatch thunk of TabContent._identifiedView.getter();
  sub_100005AD4(&qword_1003BAAC0, &qword_1002EC0B0);
  sub_10025E8B4();
  v23 = v32;
  dispatch thunk of TabContent._identifiedView.getter();
  (*(v33 + 8))(v21, v23);
  return (*(v31 + 8))(v13, v22);
}

uint64_t sub_10025CF38()
{
  v0 = sub_100005AD4(&qword_1003B0B40, &qword_1002DDC98);
  __chkstk_darwin(v0);
  v2 = &v8 - v1;
  v3 = sub_100005AD4(&qword_1003A93D8, &unk_1002D3FC0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v8 - v5;
  LocalizedStringKey.init(stringLiteral:)();
  Label<>.init(_:systemImage:)();
  (*(v4 + 16))(v2, v6, v3);
  swift_storeEnumTagMultiPayload();
  sub_100005AD4(&qword_1003B0B00, &qword_1002DDC38);
  sub_10001BAEC(&qword_1003AA3C8, &qword_1003A93D8, &unk_1002D3FC0, &protocol conformance descriptor for Label<A, B>);
  sub_1001072CC();
  _ConditionalContent<>.init(storage:)();
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_10025D138@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v13[1] = a3;
  v5 = sub_100005AD4(&qword_1003BAAA0, &qword_1002EC0A0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v13 - v7;
  v10 = *a1;
  v9 = a1[1];
  v14 = v10;
  v15 = v9;
  v13[8] = a2;
  v13[9] = v10;
  v13[10] = v9;
  v13[4] = v10;
  v13[5] = v9;

  sub_100005AD4(&qword_1003BAAB8, &qword_1002EC0A8);
  sub_100005AD4(&qword_1003B0B00, &qword_1002DDC38);
  sub_10000C564();
  sub_10001BAEC(&qword_1003BAAB0, &qword_1003BAAB8, &qword_1002EC0A8, &protocol conformance descriptor for NavigationStack<A, B>);
  sub_1001072CC();
  Tab<>.init(value:content:label:)();
  v14 = v10;
  v15 = v9;

  v11._countAndFlagsBits = 0x6F74747542626154;
  v11._object = 0xE90000000000006ELL;
  String.append(_:)(v11);
  sub_10025E7E8();
  TabContent.accessibilityIdentifier(_:isEnabled:)();

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_10025D364(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_100005AD4(&qword_1003BAAD0, &qword_1002EC0B8);
  sub_10025E994();
  return NavigationStack.init<>(root:)();
}

uint64_t sub_10025D3D8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100005AD4(&qword_1003B0B28, &qword_1002DDC88);
  __chkstk_darwin(v4);
  v6 = v12 - v5;
  v7 = sub_100005AD4(&qword_1003A93D8, &unk_1002D3FC0);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v12 - v9;
  v12[0] = a1;
  v12[1] = a2;
  sub_10001F278();

  Label<>.init<A>(_:systemImage:)();
  (*(v8 + 16))(v6, v10, v7);
  swift_storeEnumTagMultiPayload();
  sub_10001BAEC(&qword_1003AA3C8, &qword_1003A93D8, &unk_1002D3FC0, &protocol conformance descriptor for Label<A, B>);
  _ConditionalContent<>.init(storage:)();
  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_10025D5F4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TabBarLayoutView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void *sub_10025D65C@<X0>(void *a1@<X8>)
{
  type metadata accessor for TabBarLayoutView(0);

  return sub_100259424(a1);
}

uint64_t sub_10025D6D0()
{
  v1 = type metadata accessor for TabBarLayoutView(0);
  v2 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v3 = *(*(v1 - 8) + 64);
  swift_unknownObjectRelease();
  v4 = v0 + v2;

  if (*(v0 + v2 + 24) >= 7uLL)
  {
  }

  v5 = *(v1 + 40);
  sub_100005AD4(&qword_1003B23E0, &qword_1002D6770);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = type metadata accessor for UserInterfaceSizeClass();
    v7 = *(v6 - 8);
    if (!(*(v7 + 48))(v4 + v5, 1, v6))
    {
      (*(v7 + 8))(v4 + v5, v6);
    }
  }

  else
  {
  }

  v8 = *(v1 + 44);
  v9 = sub_100005AD4(&qword_1003B0A08, &unk_1002DDB80);
  (*(*(v9 - 8) + 8))(v4 + v8, v9);

  return _swift_deallocObject(v0, v2 + v3);
}

uint64_t sub_10025D8E0(uint64_t *a1)
{
  v3 = *(type metadata accessor for TabBarLayoutView(0) - 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));

  return sub_100259490(a1, v4, v5, v6);
}

unint64_t sub_10025D95C()
{
  result = qword_1003BA910;
  if (!qword_1003BA910)
  {
    sub_100005EA8(&qword_1003BA8F8, &unk_1002EBE88);
    sub_10001BAEC(&qword_1003BA918, &qword_1003BA8F0, &qword_1002EBE80, &protocol conformance descriptor for TabView<A, B>);
    sub_10001BAEC(&qword_1003B6708, &qword_1003B6710, &unk_1002E9F90, &protocol conformance descriptor for _PreferenceWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003BA910);
  }

  return result;
}

unint64_t sub_10025DA50()
{
  result = qword_1003BA9B8;
  if (!qword_1003BA9B8)
  {
    sub_100005EA8(&qword_1003BA968, &qword_1002EBEF0);
    sub_10000C564();
    sub_10001BAEC(&qword_1003BA9C0, &qword_1003BA9C8, &qword_1002EBF30, &protocol conformance descriptor for NavigationStack<A, B>);
    sub_1001072CC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003BA9B8);
  }

  return result;
}

unint64_t sub_10025DB1C()
{
  result = qword_1003BA9D0;
  if (!qword_1003BA9D0)
  {
    sub_100005EA8(&qword_1003BA958, &qword_1002EBEE0);
    sub_10025DBA0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003BA9D0);
  }

  return result;
}

unint64_t sub_10025DBA0()
{
  result = qword_1003BA9D8;
  if (!qword_1003BA9D8)
  {
    sub_100005EA8(&qword_1003BA950, &qword_1002EBED8);
    sub_100005EA8(&qword_1003BA940, &qword_1002EBEC0);
    sub_10025DC68();
    swift_getOpaqueTypeConformance2();
    sub_10025DD34();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003BA9D8);
  }

  return result;
}

unint64_t sub_10025DC68()
{
  result = qword_1003BA9E0;
  if (!qword_1003BA9E0)
  {
    sub_100005EA8(&qword_1003BA940, &qword_1002EBEC0);
    sub_10000C564();
    sub_10001BAEC(&qword_1003BA9E8, &qword_1003BA9F0, &qword_1002EBF38, &protocol conformance descriptor for NavigationStack<A, B>);
    sub_1001072CC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003BA9E0);
  }

  return result;
}

unint64_t sub_10025DD34()
{
  result = qword_1003BA9F8;
  if (!qword_1003BA9F8)
  {
    sub_100005EA8(&qword_1003BA930, &qword_1002EBEB0);
    sub_1001072CC();
    sub_10001BAEC(&qword_1003BAA00, &qword_1003BAA08, &qword_1002EBF40, &protocol conformance descriptor for _TupleTabContent<A, B>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003BA9F8);
  }

  return result;
}

unint64_t sub_10025DDF8()
{
  result = qword_1003BAA10;
  if (!qword_1003BAA10)
  {
    sub_100005EA8(&qword_1003BA990, &qword_1002EBF18);
    sub_10000C564();
    sub_10001BAEC(&qword_1003BA9A0, &qword_1003BA998, &qword_1002EBF20, &protocol conformance descriptor for NavigationStack<A, B>);
    sub_1001072CC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003BAA10);
  }

  return result;
}

unint64_t sub_10025DEC4()
{
  result = qword_1003BAA28;
  if (!qword_1003BAA28)
  {
    sub_100005EA8(&qword_1003BA978, &qword_1002EBF00);
    sub_10000C564();
    sub_10001BAEC(&qword_1003BA9B0, &qword_1003BA9A8, &qword_1002EBF28, &protocol conformance descriptor for NavigationStack<A, B>);
    sub_1001072CC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003BAA28);
  }

  return result;
}

unint64_t sub_10025DF90()
{
  result = qword_1003BAA30;
  if (!qword_1003BAA30)
  {
    sub_100005EA8(&qword_1003BA980, &qword_1002EBF08);
    sub_10000C564();
    sub_100005EA8(&qword_1003A9420, &qword_1002D13E0);
    sub_10025E078();
    swift_getOpaqueTypeConformance2();
    sub_1001072CC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003BAA30);
  }

  return result;
}

unint64_t sub_10025E078()
{
  result = qword_1003BAA38;
  if (!qword_1003BAA38)
  {
    sub_100005EA8(&qword_1003A9420, &qword_1002D13E0);
    sub_10025E130();
    sub_10001BAEC(&qword_1003B6708, &qword_1003B6710, &unk_1002E9F90, &protocol conformance descriptor for _PreferenceWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003BAA38);
  }

  return result;
}

unint64_t sub_10025E130()
{
  result = qword_1003BAA40;
  if (!qword_1003BAA40)
  {
    sub_100005EA8(&qword_1003BAA48, &unk_1002EBF60);
    type metadata accessor for ImageTranslationView(255);
    sub_10025EFC8(&qword_1003B9868, type metadata accessor for ImageTranslationView, &unk_1002DE430);
    swift_getOpaqueTypeConformance2();
    sub_10001BAEC(&qword_1003AA7E8, &qword_1003AA7F0, &qword_1002D4508, &protocol conformance descriptor for _BackgroundModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003BAA40);
  }

  return result;
}

uint64_t sub_10025E298(uint64_t a1)
{
  v2 = type metadata accessor for ImageTranslationView(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10025E304(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_10025E374()
{
  result = qword_1003BAA70;
  if (!qword_1003BAA70)
  {
    sub_100005EA8(&qword_1003A9400, &qword_1002D13C0);
    sub_10025EFC8(&qword_1003B9888, type metadata accessor for FavoritesView, &unk_1002DDCC8);
    sub_10001BAEC(&qword_1003B6708, &qword_1003B6710, &unk_1002E9F90, &protocol conformance descriptor for _PreferenceWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003BAA70);
  }

  return result;
}

unint64_t sub_10025E494()
{
  result = qword_1003BAA90;
  if (!qword_1003BAA90)
  {
    sub_100005EA8(&qword_1003BAA80, &qword_1002EC058);
    sub_10000C564();
    sub_10001BAEC(&qword_1003BA9E8, &qword_1003BA9F0, &qword_1002EBF38, &protocol conformance descriptor for NavigationStack<A, B>);
    sub_100107214();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003BAA90);
  }

  return result;
}

uint64_t sub_10025E560()
{
  v1 = type metadata accessor for TabBarLayoutView(0);
  v2 = (*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80);
  v3 = *(*(v1 - 8) + 64);
  v4 = v0 + v2;

  if (*(v0 + v2 + 24) >= 7uLL)
  {
  }

  v5 = *(v1 + 40);
  sub_100005AD4(&qword_1003B23E0, &qword_1002D6770);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = type metadata accessor for UserInterfaceSizeClass();
    v7 = *(v6 - 8);
    if (!(*(v7 + 48))(v4 + v5, 1, v6))
    {
      (*(v7 + 8))(v4 + v5, v6);
    }
  }

  else
  {
  }

  v8 = *(v1 + 44);
  v9 = sub_100005AD4(&qword_1003B0A08, &unk_1002DDB80);
  (*(*(v9 - 8) + 8))(v4 + v8, v9);

  return _swift_deallocObject(v0, v2 + v3);
}

uint64_t sub_10025E768@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for TabBarLayoutView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_10025D138(a1, v6, a2);
}

unint64_t sub_10025E7E8()
{
  result = qword_1003BAAA8;
  if (!qword_1003BAAA8)
  {
    sub_100005EA8(&qword_1003BAAA0, &qword_1002EC0A0);
    sub_10000C564();
    sub_10001BAEC(&qword_1003BAAB0, &qword_1003BAAB8, &qword_1002EC0A8, &protocol conformance descriptor for NavigationStack<A, B>);
    sub_1001072CC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003BAAA8);
  }

  return result;
}

unint64_t sub_10025E8B4()
{
  result = qword_1003BAAC8;
  if (!qword_1003BAAC8)
  {
    sub_100005EA8(&qword_1003BAA78, &qword_1002EC050);
    sub_100005EA8(&qword_1003BAAA0, &qword_1002EC0A0);
    sub_10025E7E8();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003BAAC8);
  }

  return result;
}

unint64_t sub_10025E994()
{
  result = qword_1003BAAD8;
  if (!qword_1003BAAD8)
  {
    sub_100005EA8(&qword_1003BAAD0, &qword_1002EC0B8);
    sub_10025EFC8(&qword_1003B98A0, type metadata accessor for FavoritesDetailView, &unk_1002DD7F0);
    sub_10001BAEC(&qword_1003B6708, &qword_1003B6710, &unk_1002E9F90, &protocol conformance descriptor for _PreferenceWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003BAAD8);
  }

  return result;
}

uint64_t sub_10025EA7C(uint64_t result)
{
  v1 = *(result + 16);
  if (!v1)
  {
    return _swiftEmptyArrayStorage;
  }

  v2 = 0;
  v3 = result + 40;
  v4 = _swiftEmptyArrayStorage;
  v13 = result + 40;
  do
  {
    v5 = (v3 + 16 * v2);
    for (i = v2; ; ++i)
    {
      if (i >= v1)
      {
        __break(1u);
LABEL_18:
        __break(1u);
        return result;
      }

      v2 = i + 1;
      if (__OFADD__(i, 1))
      {
        goto LABEL_18;
      }

      v8 = *(v5 - 1);
      v7 = *v5;
      swift_bridgeObjectRetain_n();
      v9 = sub_10021A60C(&v14, v8, v7);

      if (v9)
      {
        break;
      }

      v5 += 2;
      if (v2 == v1)
      {
        return v4;
      }
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    v15 = v4;
    if ((result & 1) == 0)
    {
      result = sub_1000C4B4C(0, v4[2] + 1, 1);
      v4 = v15;
    }

    v11 = v4[2];
    v10 = v4[3];
    if (v11 >= v10 >> 1)
    {
      result = sub_1000C4B4C((v10 > 1), v11 + 1, 1);
      v4 = v15;
    }

    v4[2] = v11 + 1;
    v12 = &v4[2 * v11];
    v12[4] = v8;
    v12[5] = v7;
    v3 = v13;
  }

  while (v2 != v1);
  return v4;
}

unint64_t sub_10025EBE4()
{
  result = qword_1003BAAE8;
  if (!qword_1003BAAE8)
  {
    sub_100005EA8(&qword_1003BAAE0, &qword_1002EC0C0);
    sub_100005EA8(&qword_1003A9430, &qword_1002D13F0);
    sub_10025ED08();
    sub_10000C564();
    swift_getOpaqueTypeConformance2();
    sub_100005EA8(&qword_1003A9440, &unk_1002D1400);
    sub_10025EDF0();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003BAAE8);
  }

  return result;
}

unint64_t sub_10025ED08()
{
  result = qword_1003BAAF0;
  if (!qword_1003BAAF0)
  {
    sub_100005EA8(&qword_1003A9430, &qword_1002D13F0);
    sub_10025EFC8(&qword_1003BAAF8, type metadata accessor for ConversationView_v1, &unk_1002DAD00);
    sub_10001BAEC(&qword_1003B6708, &qword_1003B6710, &unk_1002E9F90, &protocol conformance descriptor for _PreferenceWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003BAAF0);
  }

  return result;
}

unint64_t sub_10025EDF0()
{
  result = qword_1003BAB00;
  if (!qword_1003BAB00)
  {
    sub_100005EA8(&qword_1003A9440, &unk_1002D1400);
    sub_10025EFC8(&qword_1003B9880, type metadata accessor for ConversationView, &unk_1002DA650);
    sub_10001BAEC(&qword_1003B6708, &qword_1003B6710, &unk_1002E9F90, &protocol conformance descriptor for _PreferenceWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003BAB00);
  }

  return result;
}

unint64_t sub_10025EEE0()
{
  result = qword_1003BAB28;
  if (!qword_1003BAB28)
  {
    sub_100005EA8(&qword_1003A9410, &unk_1002D13D0);
    sub_10025EFC8(&qword_1003B9850, type metadata accessor for TranslateContentView, &unk_1002ED230);
    sub_10001BAEC(&qword_1003B6708, &qword_1003B6710, &unk_1002E9F90, &protocol conformance descriptor for _PreferenceWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003BAB28);
  }

  return result;
}

uint64_t sub_10025EFC8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10025F010()
{
  sub_100005EA8(&qword_1003BA8F8, &unk_1002EBE88);
  type metadata accessor for SidebarAdaptableTabViewStyle();
  sub_10025D95C();
  return swift_getOpaqueTypeConformance2();
}

id sub_10025F098(uint64_t a1, uint64_t a2)
{
  *&v2[OBJC_IVAR____TtC17SequoiaTranslator17TempOptInReprompt_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v3 = String._bridgeToObjectiveC()();
  v30.receiver = v2;
  v30.super_class = type metadata accessor for TempOptInReprompt();
  v4 = objc_msgSendSuper2(&v30, "initWithTitle:", v3);

  v5 = v4;
  result = [v5 view];
  if (result)
  {
    v7 = result;

    v8 = String._bridgeToObjectiveC()();
    v9 = objc_opt_self();
    v10 = [v9 colorNamed:v8];

    [v7 setTintColor:v10];
    v11 = [objc_opt_self() boldButton];
    v12 = v5;
    v13 = [v12 headerView];
    v14 = objc_opt_self();
    v15 = [v14 mainBundle];
    v31._object = 0x80000001002FC290;
    v16._countAndFlagsBits = 0xD00000000000001BLL;
    v16._object = 0x80000001002FC270;
    v31._countAndFlagsBits = 0xD000000000000035;
    v17._countAndFlagsBits = 0;
    v17._object = 0xE000000000000000;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v16, 0, v15, v17, v31);

    v18 = String._bridgeToObjectiveC()();

    [v13 setDetailText:v18];

    v19 = v12;
    v20 = [v19 buttonTray];
    isa = Array._bridgeToObjectiveC()().super.isa;
    [v20 setPrivacyLinkForBundles:isa];

    [v11 addTarget:v19 action:"continueButtonPressed" forControlEvents:0x2000];
    v22 = [v14 mainBundle];
    v32._object = 0x80000001002F7500;
    v23._countAndFlagsBits = 0x45554E49544E4F43;
    v32._countAndFlagsBits = 0xD000000000000015;
    v23._object = 0xE800000000000000;
    v24._countAndFlagsBits = 0;
    v24._object = 0xE000000000000000;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v23, 0, v22, v24, v32);

    v25 = String._bridgeToObjectiveC()();

    [v11 setTitle:v25 forState:0];

    v26 = [v9 whiteColor];
    [v11 setTitleColor:v26 forState:0];

    v27 = v11;
    v28 = String._bridgeToObjectiveC()();
    [v27 setAccessibilityIdentifier:v28];

    v29 = [v19 buttonTray];
    [v29 addButton:v27];

    return v19;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_10025F67C(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for TempOptInReprompt();
  return objc_msgSendSuper2(&v3, "dealloc");
}

unint64_t sub_10025F6E4()
{
  result = qword_1003BB710;
  if (!qword_1003BB710)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1003BB710);
  }

  return result;
}

uint64_t sub_10025F730(uint64_t a1, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v2)
  {
    return 0;
  }

  String.index(before:)();
  return String.subscript.getter();
}

uint64_t sub_10025F7B0(uint64_t a1)
{
  v3 = type metadata accessor for CharacterSet();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for StreamingRequestInfo(0);
  v8 = Locale.ltIdentifier.getter();
  v10 = v9;
  if (v8 == Locale.ltIdentifier.getter() && v10 == v11)
  {
  }

  else
  {
    v13 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v13 & 1) == 0)
    {
      goto LABEL_15;
    }
  }

  v14 = Locale.ltIdentifier.getter();
  v16 = v15;
  if (v14 == Locale.ltIdentifier.getter() && v16 == v17)
  {
  }

  else
  {
    v18 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v18 & 1) == 0)
    {
LABEL_15:
      v29 = 0;
      return v29 & 1;
    }
  }

  v19 = (a1 + *(v7 + 20));
  v20 = v19[1];
  v33 = *v19;
  v34 = v20;

  static CharacterSet.whitespacesAndNewlines.getter();
  sub_10001F278();
  v32 = StringProtocol.trimmingCharacters(in:)();
  v22 = v21;
  v23 = *(v4 + 8);
  v23(v6, v3);

  v24 = (v1 + *(v7 + 20));
  v25 = v24[1];
  v33 = *v24;
  v34 = v25;

  static CharacterSet.whitespacesAndNewlines.getter();
  v26 = StringProtocol.trimmingCharacters(in:)();
  v28 = v27;
  v23(v6, v3);

  if (v32 == v26 && v22 == v28)
  {
    v29 = 1;
  }

  else
  {
    v29 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v29 & 1;
}

uint64_t sub_10025FA7C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x74616C736E617274;
  v4 = 0xEB00000000676E69;
  if (v2 != 1)
  {
    v3 = 0x726F727265;
    v4 = 0xE500000000000000;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 1701602409;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xE400000000000000;
  }

  v7 = 0x74616C736E617274;
  v8 = 0xEB00000000676E69;
  if (*a2 != 1)
  {
    v7 = 0x726F727265;
    v8 = 0xE500000000000000;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 1701602409;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xE400000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v11 & 1;
}

Swift::Int sub_10025FB80()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_10025FC20(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int sub_10025FCAC(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_10025FD48@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10026CB50(*a1);
  *a2 = result;
  return result;
}

void sub_10025FD78(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 0xEB00000000676E69;
  v5 = 0x74616C736E617274;
  if (v2 != 1)
  {
    v5 = 0x726F727265;
    v4 = 0xE500000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 1701602409;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

double sub_10025FDF8(int a1)
{
  v2 = v1;
  v39 = a1;
  v3 = sub_100005AD4(&qword_1003AA3B8, &unk_1002D3EF0);
  __chkstk_darwin(v3 - 8);
  v38 = &v37 - v4;
  v37 = type metadata accessor for UUID();
  v5 = *(v37 - 8);
  __chkstk_darwin(v37);
  v7 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100005AD4(&qword_1003AD830, &qword_1002D7788);
  __chkstk_darwin(v8 - 8);
  v10 = &v37 - v9;
  v11 = sub_100005AD4(&qword_1003AFCE0, &qword_1002D5B00);
  __chkstk_darwin(v11 - 8);
  v13 = &v37 - v12;
  v14 = type metadata accessor for Date();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Date.now.getter();
  v18 = OBJC_IVAR____TtC17SequoiaTranslator31TextStreamingTranslationManager_lastSubmittedTimestamp;
  swift_beginAccess();
  (*(v15 + 40))(v2 + v18, v17, v14);
  swift_endAccess();
  v19 = (v2 + OBJC_IVAR____TtC17SequoiaTranslator31TextStreamingTranslationManager_lastSubmittedText);
  *v19 = 0;
  v19[1] = 0xE000000000000000;

  v20 = type metadata accessor for Locale();
  v21 = *(*(v20 - 8) + 56);
  v21(v13, 1, 1, v20);
  v22 = OBJC_IVAR____TtC17SequoiaTranslator31TextStreamingTranslationManager_lastSourceLocale;
  swift_beginAccess();
  sub_10003BD84(v13, v2 + v22, &qword_1003AFCE0, &qword_1002D5B00);
  swift_endAccess();
  v21(v13, 1, 1, v20);
  v23 = OBJC_IVAR____TtC17SequoiaTranslator31TextStreamingTranslationManager_lastTargetLocale;
  swift_beginAccess();
  sub_10003BD84(v13, v2 + v23, &qword_1003AFCE0, &qword_1002D5B00);
  swift_endAccess();
  v41 = 0;
  memset(v40, 0, sizeof(v40));
  v24 = OBJC_IVAR____TtC17SequoiaTranslator31TextStreamingTranslationManager_lastTranslation;
  swift_beginAccess();
  sub_10003BD84(v40, v2 + v24, &unk_1003B9EC0, &qword_1002D7480);
  swift_endAccess();
  v25 = type metadata accessor for StreamingRequestInfo(0);
  v26 = *(*(v25 - 8) + 56);
  v26(v10, 1, 1, v25);
  v27 = OBJC_IVAR____TtC17SequoiaTranslator31TextStreamingTranslationManager_lastTranslatedRequest;
  swift_beginAccess();
  sub_10003BD84(v10, v2 + v27, &qword_1003AD830, &qword_1002D7788);
  swift_endAccess();
  [*(v2 + 24) invalidate];
  v28 = *(v2 + 24);
  *(v2 + 24) = 0;

  [*(v2 + 40) invalidate];
  v29 = *(v2 + 40);
  *(v2 + 40) = 0;

  UUID.init()();
  v30 = OBJC_IVAR____TtC17SequoiaTranslator31TextStreamingTranslationManager_currentRequestId;
  swift_beginAccess();
  (*(v5 + 40))(v2 + v30, v7, v37);
  swift_endAccess();
  v26(v10, 1, 1, v25);
  v31 = OBJC_IVAR____TtC17SequoiaTranslator31TextStreamingTranslationManager_partialTranslationRequest;
  swift_beginAccess();
  sub_10003BD84(v10, v2 + v31, &qword_1003AD830, &qword_1002D7788);
  swift_endAccess();
  v32 = type metadata accessor for TaskPriority();
  v33 = v38;
  (*(*(v32 - 8) + 56))(v38, 1, 1, v32);
  type metadata accessor for MainActor();

  v34 = static MainActor.shared.getter();
  v35 = swift_allocObject();
  *(v35 + 16) = v34;
  *(v35 + 24) = &protocol witness table for MainActor;
  *(v35 + 32) = v39;
  *(v35 + 40) = v2;
  sub_10005E36C(0, 0, v33, &unk_1002EC398, v35);

  return result;
}

uint64_t sub_1002603BC(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v4[2] = type metadata accessor for MainActor();
  v4[3] = static MainActor.shared.getter();
  v6 = swift_task_alloc();
  v4[4] = v6;
  *v6 = v4;
  v6[1] = sub_100151E9C;
  if (a4)
  {
    v7 = 2;
  }

  else
  {
    v7 = 0;
  }

  return sub_100265B8C(v7);
}

void sub_100260484(void *a1)
{
  v3 = sub_100005AD4(&qword_1003AA3B8, &unk_1002D3EF0);
  __chkstk_darwin(v3 - 8);
  v5 = &v15 - v4;
  if (a1)
  {
    v6 = type metadata accessor for TaskPriority();
    (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
    type metadata accessor for MainActor();
    v7 = a1;

    v8 = v1;
    v9 = static MainActor.shared.getter();
    v10 = swift_allocObject();
    v10[2] = v9;
    v10[3] = &protocol witness table for MainActor;
    v10[4] = v7;
    v10[5] = v8;
    sub_10005E36C(0, 0, v5, &unk_1002EC388, v10);
  }

  else
  {
    if (qword_1003A9288 != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    sub_1000078E8(v11, qword_1003D28A8);
    v16 = Logger.logObject.getter();
    v12 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v16, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v16, v12, "Cannot set text streaming config because given config is nil", v13, 2u);
    }

    v14 = v16;
  }
}

uint64_t sub_1002606AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  type metadata accessor for MainActor();
  v5[4] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100260744, v7, v6);
}

uint64_t sub_100260744()
{
  v21 = v0;

  if (qword_1003A9288 != -1)
  {
    swift_once();
  }

  v1 = v0[2];
  v2 = type metadata accessor for Logger();
  sub_1000078E8(v2, qword_1003D28A8);
  v3 = v1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[2];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v20 = v8;
    *v7 = 136446210;
    v9 = [v6 description];
    v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = v11;

    v13 = sub_10028D78C(v10, v12, &v20);

    *(v7 + 4) = v13;
    _os_log_impl(&_mh_execute_header, v4, v5, "Setting manager's text streaming config to %{public}s", v7, 0xCu);
    sub_100008664(v8);
  }

  v14 = v0[2];
  v15 = v0[3];
  v16 = *(v15 + 16);
  *(v15 + 16) = v14;
  v17 = v14;

  sub_10026091C();
  v18 = v0[1];

  return v18();
}

void sub_10026091C()
{
  v1 = v0;
  v2 = objc_opt_self();
  v3 = [v2 standardUserDefaults];
  v4 = String._bridgeToObjectiveC()();
  v5 = [v3 BOOLForKey:v4];

  if (v5)
  {
    v6 = [v2 standardUserDefaults];
    v7 = String._bridgeToObjectiveC()();
    [v6 doubleForKey:v7];
    v9 = v8;

    v10 = [v2 standardUserDefaults];
    v11 = String._bridgeToObjectiveC()();
    [v10 doubleForKey:v11];
    v13 = v12;

    v14 = [v2 standardUserDefaults];
    v15 = String._bridgeToObjectiveC()();
    [v14 doubleForKey:v15];
    v17 = v16;

    if (qword_1003A9288 != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    sub_1000078E8(v18, qword_1003D28A8);
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 134349568;
      *(v21 + 4) = v9;
      *(v21 + 12) = 2050;
      *(v21 + 14) = v13;
      *(v21 + 22) = 2050;
      *(v21 + 24) = v17;
      _os_log_impl(&_mh_execute_header, v19, v20, "Updating text streaming config values; minTime: %{public}f, maxTime: %{public}f, userIdleTime: %{public}f", v21, 0x20u);
    }

    v22 = *(v1 + 16);

    [v22 updateMinTimeBetweenTranslations:v9 maxTimeBetweenTranslations:v13 userIdleTime:v17];
  }

  else
  {
    if (qword_1003A9288 != -1)
    {
      swift_once();
    }

    v23 = type metadata accessor for Logger();
    sub_1000078E8(v23, qword_1003D28A8);
    oslog = Logger.logObject.getter();
    v24 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(oslog, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v24, "Not updating text streaming config values because overrides enabled", v25, 2u);
    }
  }
}

uint64_t sub_100260CBC(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v109 = a4;
  v110 = a3;
  v107 = a1;
  v108 = a2;
  v104 = type metadata accessor for Date();
  v106 = *(v104 - 8);
  __chkstk_darwin(v104);
  v105 = &v99 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Locale();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v99 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100005AD4(&qword_1003AFCE0, &qword_1002D5B00);
  v12 = __chkstk_darwin(v11 - 8);
  v14 = &v99 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v99 - v15;
  v17 = OBJC_IVAR____TtC17SequoiaTranslator31TextStreamingTranslationManager_lastSourceLocale;
  swift_beginAccess();
  sub_10001F620(v5 + v17, v16, &qword_1003AFCE0, &qword_1002D5B00);
  v18 = v8[6];
  if (v18(v16, 1, v7))
  {
    goto LABEL_2;
  }

  v102 = v14;
  v103 = v5;
  v24 = v8[2];
  v101 = v8 + 2;
  v100 = v24;
  v24(v10, v16, v7);
  sub_100009EBC(v16, &qword_1003AFCE0, &qword_1002D5B00);
  v25 = Locale.ltIdentifier.getter();
  v27 = v26;
  v28 = v8[1];
  v28(v10, v7);
  v29 = Locale.ltIdentifier.getter();
  if (!v27)
  {
    goto LABEL_3;
  }

  if (v25 == v29 && v27 == v30)
  {
  }

  else
  {
    v32 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v32 & 1) == 0)
    {
      goto LABEL_4;
    }
  }

  v33 = OBJC_IVAR____TtC17SequoiaTranslator31TextStreamingTranslationManager_lastTargetLocale;
  v34 = v103;
  swift_beginAccess();
  v35 = v34 + v33;
  v16 = v102;
  sub_10001F620(v35, v102, &qword_1003AFCE0, &qword_1002D5B00);
  if (v18(v16, 1, v7))
  {
LABEL_2:
    sub_100009EBC(v16, &qword_1003AFCE0, &qword_1002D5B00);
    Locale.ltIdentifier.getter();
LABEL_3:

LABEL_4:
    if (qword_1003A9288 != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    sub_1000078E8(v19, qword_1003D28A8);
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&_mh_execute_header, v20, v21, "Translation request conditions satisfied; source or target locale changed", v22, 2u);
    }

    return 1;
  }

  v100(v10, v16, v7);
  sub_100009EBC(v16, &qword_1003AFCE0, &qword_1002D5B00);
  v36 = Locale.ltIdentifier.getter();
  v38 = v37;
  v28(v10, v7);
  v39 = Locale.ltIdentifier.getter();
  if (!v38)
  {
    goto LABEL_3;
  }

  if (v36 == v39 && v38 == v40)
  {
  }

  else
  {
    v41 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v41 & 1) == 0)
    {
      goto LABEL_4;
    }
  }

  v43 = v107;
  v42 = v108;
  v44 = sub_10025F730(v107, v108);
  v46 = v45;
  v47 = OBJC_IVAR____TtC17SequoiaTranslator31TextStreamingTranslationManager_lastSubmittedTimestamp;
  v48 = v103;
  swift_beginAccess();
  v49 = v106;
  v50 = v48 + v47;
  v51 = v105;
  v52 = v104;
  (*(v106 + 16))(v105, v50, v104);
  Date.timeIntervalSinceNow.getter();
  v54 = v53;
  (*(v49 + 8))(v51, v52);
  if (v46)
  {
    if (v44 == 32 && v46 == 0xE100000000000000)
    {
      v55 = 1;
    }

    else
    {
      v55 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

  else
  {
    v55 = 0;
  }

  v56 = v103;
  [*(v103 + 16) maxTimeBetweenTranslations];
  v58 = -v57;
  [*(v56 + 16) minTimeBetweenTranslations];
  v60 = -v59;
  if (*(v56 + OBJC_IVAR____TtC17SequoiaTranslator31TextStreamingTranslationManager_lastSubmittedText) == v43 && *(v56 + OBJC_IVAR____TtC17SequoiaTranslator31TextStreamingTranslationManager_lastSubmittedText + 8) == v42)
  {
    v61 = 1;
  }

  else
  {
    v61 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  v110 = String.count.getter();
  v62 = [*(v56 + 16) minNumberOfCharactersForTranslation];
  v111 = 0;
  v112 = 0xE000000000000000;
  _StringGuts.grow(_:)(133);
  v63._object = 0x80000001002FC480;
  v63._countAndFlagsBits = 0xD000000000000015;
  String.append(_:)(v63);
  if (v55)
  {
    v64 = 1702195828;
  }

  else
  {
    v64 = 0x65736C6166;
  }

  if (v55)
  {
    v65 = 0xE400000000000000;
  }

  else
  {
    v65 = 0xE500000000000000;
  }

  v66 = v65;
  String.append(_:)(*&v64);

  v67._countAndFlagsBits = 0xD00000000000001FLL;
  v67._object = 0x80000001002FC4A0;
  String.append(_:)(v67);
  LODWORD(v109) = v55;
  LODWORD(v108) = v54 <= v58;
  if (v54 > v58)
  {
    v68 = 0x65736C6166;
  }

  else
  {
    v68 = 1702195828;
  }

  if (v54 > v58)
  {
    v69 = 0xE500000000000000;
  }

  else
  {
    v69 = 0xE400000000000000;
  }

  v70 = v69;
  String.append(_:)(*&v68);

  v71._countAndFlagsBits = 0xD000000000000017;
  v71._object = 0x80000001002FC4C0;
  String.append(_:)(v71);
  if (v54 <= v60)
  {
    v72 = 1702195828;
  }

  else
  {
    v72 = 0x65736C6166;
  }

  if (v54 <= v60)
  {
    v73 = 0xE400000000000000;
  }

  else
  {
    v73 = 0xE500000000000000;
  }

  v74 = v73;
  String.append(_:)(*&v72);

  v75._object = 0x80000001002FC4E0;
  v75._countAndFlagsBits = 0xD000000000000015;
  String.append(_:)(v75);
  v76 = v61;
  if (v61)
  {
    v77 = 0x65736C6166;
  }

  else
  {
    v77 = 1702195828;
  }

  if (v61)
  {
    v78 = 0xE500000000000000;
  }

  else
  {
    v78 = 0xE400000000000000;
  }

  v79 = v78;
  String.append(_:)(*&v77);

  v80._countAndFlagsBits = 0xD00000000000001BLL;
  v80._object = 0x80000001002FC500;
  String.append(_:)(v80);
  v81 = v110;
  if (v110 >= v62)
  {
    v82 = 1702195828;
  }

  else
  {
    v82 = 0x65736C6166;
  }

  if (v110 >= v62)
  {
    v83 = 0xE400000000000000;
  }

  else
  {
    v83 = 0xE500000000000000;
  }

  v84 = v83;
  String.append(_:)(*&v82);

  v86 = v111;
  v85 = v112;
  if (((v109 | v108) & 1) != 0 && v54 <= v60 && (v76 & 1) == 0 && v81 >= v62)
  {
    if (qword_1003A9288 != -1)
    {
      swift_once();
    }

    v87 = type metadata accessor for Logger();
    sub_1000078E8(v87, qword_1003D28A8);

    v88 = Logger.logObject.getter();
    v89 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v88, v89))
    {
      v90 = swift_slowAlloc();
      v91 = swift_slowAlloc();
      v111 = v91;
      *v90 = 136446210;
      v92 = sub_10028D78C(v86, v85, &v111);

      *(v90 + 4) = v92;
      _os_log_impl(&_mh_execute_header, v88, v89, "Translation request conditions satisfied; conditions:\n%{public}s", v90, 0xCu);
      sub_100008664(v91);
    }

    else
    {
    }

    return 1;
  }

  if (qword_1003A9288 != -1)
  {
    swift_once();
  }

  v93 = type metadata accessor for Logger();
  sub_1000078E8(v93, qword_1003D28A8);

  v94 = Logger.logObject.getter();
  v95 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v94, v95))
  {
    v96 = swift_slowAlloc();
    v97 = swift_slowAlloc();
    v111 = v97;
    *v96 = 136446210;
    v98 = sub_10028D78C(v86, v85, &v111);

    *(v96 + 4) = v98;
    _os_log_impl(&_mh_execute_header, v94, v95, "Translation request conditions NOT satisfied; conditions:\n%{public}s", v96, 0xCu);
    sub_100008664(v97);
  }

  else
  {
  }

  return 0;
}

id sub_10026172C()
{
  v1 = v0;
  if (qword_1003A9288 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_1000078E8(v2, qword_1003D28A8);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Invalidating idle timers", v5, 2u);
  }

  [*(v1 + 24) invalidate];
  v6 = *(v1 + 40);

  return [v6 invalidate];
}

void sub_100261830(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for StreamingRequestInfo(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v40 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v7);
  v10 = &v37 - v9;
  __chkstk_darwin(v8);
  v12 = &v37 - v11;
  if (qword_1003A9288 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  sub_1000078E8(v13, qword_1003D28A8);
  sub_1000C88BC(a1, v12);
  sub_1000C88BC(a1, v10);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v39 = v1;
    v17 = v16;
    v18 = swift_slowAlloc();
    v38 = a1;
    aBlock[0] = v18;
    *v17 = 136446467;
    type metadata accessor for UUID();
    v37 = v5;
    sub_10026CD5C(&qword_1003AC7D0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v19 = dispatch thunk of CustomStringConvertible.description.getter();
    v21 = v20;
    sub_10026CB9C(v12);
    v22 = sub_10028D78C(v19, v21, aBlock);

    *(v17 + 4) = v22;
    *(v17 + 12) = 2085;
    v23 = &v10[*(v4 + 20)];
    v24 = *v23;
    v25 = v23[1];

    sub_10026CB9C(v10);
    v26 = sub_10028D78C(v24, v25, aBlock);
    v5 = v37;

    *(v17 + 14) = v26;
    _os_log_impl(&_mh_execute_header, v14, v15, "Setting up idle timer for streaming request; id: %{public}s, sourceText: %{sensitive}s", v17, 0x16u);
    swift_arrayDestroy();
    a1 = v38;

    v2 = v39;
  }

  else
  {

    sub_10026CB9C(v10);
    sub_10026CB9C(v12);
  }

  v27 = objc_opt_self();
  [*(v2 + 16) userIdleTime];
  v29 = v28;
  v30 = swift_allocObject();
  swift_weakInit();
  v31 = v40;
  sub_1000C88BC(a1, v40);
  v32 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v33 = swift_allocObject();
  *(v33 + 16) = v30;
  sub_1000C8AD4(v31, v33 + v32);
  aBlock[4] = sub_10026D5FC;
  aBlock[5] = v33;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000CF44C;
  aBlock[3] = &unk_10038B560;
  v34 = _Block_copy(aBlock);

  v35 = [v27 scheduledTimerWithTimeInterval:0 repeats:v34 block:v29];
  _Block_release(v34);
  v36 = *(v2 + 24);
  *(v2 + 24) = v35;
}

double sub_100261C78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = type metadata accessor for StreamingRequestInfo(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4 - 8);
  v7 = sub_100005AD4(&qword_1003AA3B8, &unk_1002D3EF0);
  __chkstk_darwin(v7 - 8);
  v9 = &v16 - v8;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    v13 = type metadata accessor for TaskPriority();
    (*(*(v13 - 8) + 56))(v9, 1, 1, v13);
    sub_1000C88BC(a3, &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
    v14 = (*(v5 + 80) + 40) & ~*(v5 + 80);
    v15 = swift_allocObject();
    v15[2] = 0;
    v15[3] = 0;
    v15[4] = v12;
    sub_1000C8AD4(&v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v15 + v14);
    sub_10005E36C(0, 0, v9, &unk_1002EC378, v15);
  }

  return result;
}

uint64_t sub_100261E44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[7] = type metadata accessor for StreamingRequestInfo(0);
  v5[8] = swift_task_alloc();
  v5[9] = swift_task_alloc();
  v5[10] = swift_task_alloc();
  v5[11] = swift_task_alloc();
  v6 = type metadata accessor for Date();
  v5[12] = v6;
  v5[13] = *(v6 - 8);
  v5[14] = swift_task_alloc();

  return _swift_task_switch(sub_100261F58, 0, 0);
}

uint64_t sub_100261F58()
{
  *(v0 + 120) = type metadata accessor for MainActor();
  *(v0 + 128) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100261FF0, v2, v1);
}

uint64_t sub_100261FF0()
{
  v2 = v0[13];
  v1 = v0[14];
  v3 = v0[12];
  v4 = v0[5];

  v5 = OBJC_IVAR____TtC17SequoiaTranslator31TextStreamingTranslationManager_lastSubmittedTimestamp;
  swift_beginAccess();
  (*(v2 + 16))(v1, v4 + v5, v3);

  return _swift_task_switch(sub_1002620AC, 0, 0);
}

uint64_t sub_1002620AC(uint64_t a1)
{
  v2 = v1[14];
  v3 = v1[12];
  v4 = v1[13];
  Date.timeIntervalSinceNow.getter();
  v1[17] = v5;
  (*(v4 + 8))(v2, v3);
  v1[18] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100262164, v7, v6);
}

uint64_t sub_100262164()
{
  v1 = v0[5];

  v2 = v1 + OBJC_IVAR____TtC17SequoiaTranslator31TextStreamingTranslationManager_lastSubmittedText;
  v0[19] = *(v1 + OBJC_IVAR____TtC17SequoiaTranslator31TextStreamingTranslationManager_lastSubmittedText);
  v0[20] = *(v2 + 8);

  return _swift_task_switch(sub_1002621F4, 0, 0);
}

uint64_t sub_1002621F4(uint64_t a1)
{
  *(v1 + 168) = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100262280, v3, v2);
}

uint64_t sub_100262280()
{
  v1 = *(v0 + 40);

  v2 = *(v1 + 16);
  *(v0 + 176) = v2;
  v3 = v2;

  return _swift_task_switch(sub_1002622FC, 0, 0);
}

uint64_t sub_1002622FC()
{
  v55 = v0;
  v1 = *(v0 + 22);
  [v1 minTimeBetweenTranslations];
  v3 = v2;

  if (qword_1003A9288 != -1)
  {
    swift_once();
  }

  v5 = *(v0 + 10);
  v4 = *(v0 + 11);
  v6 = *(v0 + 6);
  v7 = type metadata accessor for Logger();
  sub_1000078E8(v7, qword_1003D28A8);
  sub_1000C88BC(v6, v4);
  sub_1000C88BC(v6, v5);

  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v52 = *(v0 + 19);
    v53 = *(v0 + 20);
    v10 = *(v0 + 17);
    v12 = *(v0 + 10);
    v11 = *(v0 + 11);
    v51 = *(v0 + 7);
    v13 = swift_slowAlloc();
    v54 = swift_slowAlloc();
    *v13 = 136447235;
    type metadata accessor for UUID();
    sub_10026CD5C(&qword_1003AC7D0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    v16 = v15;
    sub_10026CB9C(v11);
    v17 = sub_10028D78C(v14, v16, &v54);

    *(v13 + 4) = v17;
    *(v13 + 12) = 2085;
    v18 = (v12 + *(v51 + 20));
    v19 = *v18;
    v20 = v18[1];

    sub_10026CB9C(v12);
    v21 = sub_10028D78C(v19, v20, &v54);

    *(v13 + 14) = v21;
    *(v13 + 22) = 2050;
    *(v13 + 24) = v10;
    *(v13 + 32) = 2050;
    *(v13 + 34) = v3;
    *(v13 + 42) = 2085;
    *(v13 + 44) = sub_10028D78C(v52, v53, &v54);
    _os_log_impl(&_mh_execute_header, v8, v9, "Idle timer for partial result fired; id: %{public}s, sourceText: %{sensitive}s, timeIntervalSinceLastSubmission: %{public}f,  minTimeBetweenTranslations: %{public}f, lastTranslatedText: %{sensitive}s", v13, 0x34u);
    swift_arrayDestroy();
  }

  else
  {
    v23 = *(v0 + 10);
    v22 = *(v0 + 11);

    sub_10026CB9C(v23);
    sub_10026CB9C(v22);
  }

  if (v0[17] <= -v3)
  {
  }

  else
  {
    v24 = (*(v0 + 6) + *(*(v0 + 7) + 20));
    if (*v24 == *(v0 + 19) && v24[1] == *(v0 + 20))
    {

LABEL_21:
      sub_1000C88BC(*(v0 + 6), *(v0 + 8));
      v40 = Logger.logObject.getter();
      v41 = static os_log_type_t.info.getter();
      v42 = os_log_type_enabled(v40, v41);
      v43 = *(v0 + 8);
      if (v42)
      {
        v44 = swift_slowAlloc();
        v45 = swift_slowAlloc();
        v54 = v45;
        *v44 = 136446210;
        type metadata accessor for UUID();
        sub_10026CD5C(&qword_1003AC7D0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v46 = dispatch thunk of CustomStringConvertible.description.getter();
        v48 = v47;
        sub_10026CB9C(v43);
        v49 = sub_10028D78C(v46, v48, &v54);

        *(v44 + 4) = v49;
        _os_log_impl(&_mh_execute_header, v40, v41, "Idle timer for partial result fired, but conditions don't allow for re-triggering a translation; id: %{public}s", v44, 0xCu);
        sub_100008664(v45);
      }

      else
      {

        sub_10026CB9C(v43);
      }

      v50 = *(v0 + 1);

      return v50();
    }

    v26 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v26)
    {
      goto LABEL_21;
    }
  }

  sub_1000C88BC(*(v0 + 6), *(v0 + 9));
  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.info.getter();
  v29 = os_log_type_enabled(v27, v28);
  v30 = *(v0 + 9);
  if (v29)
  {
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v54 = v32;
    *v31 = 136446210;
    type metadata accessor for UUID();
    sub_10026CD5C(&qword_1003AC7D0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v33 = dispatch thunk of CustomStringConvertible.description.getter();
    v35 = v34;
    sub_10026CB9C(v30);
    v36 = sub_10028D78C(v33, v35, &v54);

    *(v31 + 4) = v36;
    _os_log_impl(&_mh_execute_header, v27, v28, "Idle timer for partial result fired, performing another partial translation. id: %{public}s", v31, 0xCu);
    sub_100008664(v32);
  }

  else
  {

    sub_10026CB9C(v30);
  }

  *(v0 + 23) = static MainActor.shared.getter();
  v37 = swift_task_alloc();
  *(v0 + 24) = v37;
  *v37 = v0;
  v37[1] = sub_10026298C;
  v38 = *(v0 + 6);

  return sub_1002660D4(v38, 0);
}

uint64_t sub_10026298C()
{
  v1 = *v0;
  v2 = *v0;

  v3 = swift_task_alloc();
  *(v1 + 200) = v3;
  *v3 = v2;
  v3[1] = sub_100262ACC;

  return sub_100268CFC();
}

uint64_t sub_100262ACC()
{

  v1 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100262C08, v1, v0);
}

uint64_t sub_100262C08()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_100262CA0(uint64_t a1)
{
  v2 = v1;
  v37 = type metadata accessor for StreamingRequestInfo(0);
  v4 = *(v37 - 8);
  v5 = *(v4 + 64);
  v6 = __chkstk_darwin(v37);
  v7 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v6);
  v10 = &v34 - v9;
  __chkstk_darwin(v8);
  v12 = &v34 - v11;
  if (qword_1003A9288 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  sub_1000078E8(v13, qword_1003D28A8);
  sub_1000C88BC(a1, v12);
  sub_1000C88BC(a1, v10);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v34 = v4;
    v17 = v16;
    v18 = swift_slowAlloc();
    v36 = v1;
    aBlock[0] = v18;
    *v17 = 136446467;
    type metadata accessor for UUID();
    v35 = a1;
    sub_10026CD5C(&qword_1003AC7D0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v19 = dispatch thunk of CustomStringConvertible.description.getter();
    v21 = v20;
    sub_10026CB9C(v12);
    v22 = sub_10028D78C(v19, v21, aBlock);

    *(v17 + 4) = v22;
    *(v17 + 12) = 2085;
    v23 = &v10[*(v37 + 20)];
    v24 = *v23;
    v25 = v23[1];

    sub_10026CB9C(v10);
    v26 = sub_10028D78C(v24, v25, aBlock);
    a1 = v35;

    *(v17 + 14) = v26;
    _os_log_impl(&_mh_execute_header, v14, v15, "Setting up final timer for streaming request; id: %{public}s, sourceText: %{sensitive}s", v17, 0x16u);
    swift_arrayDestroy();
    v2 = v36;

    v4 = v34;
  }

  else
  {

    sub_10026CB9C(v10);
    sub_10026CB9C(v12);
  }

  v27 = objc_opt_self();
  v28 = swift_allocObject();
  swift_weakInit();
  sub_1000C88BC(a1, v7);
  v29 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v30 = swift_allocObject();
  *(v30 + 16) = v28;
  sub_1000C8AD4(v7, v30 + v29);
  aBlock[4] = sub_10026D178;
  aBlock[5] = v30;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000CF44C;
  aBlock[3] = &unk_10038B4E8;
  v31 = _Block_copy(aBlock);

  v32 = [v27 scheduledTimerWithTimeInterval:0 repeats:v31 block:1.5];
  _Block_release(v31);
  v33 = *(v2 + 40);
  *(v2 + 40) = v32;
}

double sub_1002630C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = type metadata accessor for StreamingRequestInfo(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4 - 8);
  v7 = sub_100005AD4(&qword_1003AA3B8, &unk_1002D3EF0);
  __chkstk_darwin(v7 - 8);
  v9 = &v16 - v8;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    v13 = type metadata accessor for TaskPriority();
    (*(*(v13 - 8) + 56))(v9, 1, 1, v13);
    sub_1000C88BC(a3, &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
    v14 = (*(v5 + 80) + 32) & ~*(v5 + 80);
    v15 = swift_allocObject();
    *(v15 + 16) = 0;
    *(v15 + 24) = 0;
    sub_1000C8AD4(&v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v15 + v14);
    *(v15 + ((v6 + v14 + 7) & 0xFFFFFFFFFFFFFFF8)) = v12;
    sub_10005E36C(0, 0, v9, &unk_1002EC368, v15);
  }

  return result;
}

uint64_t sub_1002632A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v5[4] = type metadata accessor for StreamingRequestInfo(0);
  v5[5] = swift_task_alloc();
  v5[6] = swift_task_alloc();
  v5[7] = swift_task_alloc();

  return _swift_task_switch(sub_10026334C, 0, 0);
}

uint64_t sub_10026334C()
{
  v37 = v0;
  if (qword_1003A9288 != -1)
  {
    swift_once();
  }

  v1 = v0[6];
  v2 = v0[7];
  v3 = v0[2];
  v4 = type metadata accessor for Logger();
  sub_1000078E8(v4, qword_1003D28A8);
  sub_1000C88BC(v3, v2);
  sub_1000C88BC(v3, v1);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.info.getter();
  v7 = os_log_type_enabled(v5, v6);
  v9 = v0[6];
  v8 = v0[7];
  if (v7)
  {
    v10 = v0[4];
    v11 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    *v11 = 136446467;
    type metadata accessor for UUID();
    sub_10026CD5C(&qword_1003AC7D0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v12 = dispatch thunk of CustomStringConvertible.description.getter();
    v14 = v13;
    sub_10026CB9C(v8);
    v15 = sub_10028D78C(v12, v14, &v36);

    *(v11 + 4) = v15;
    *(v11 + 12) = 2085;
    v16 = (v9 + *(v10 + 20));
    v17 = *v16;
    v18 = v16[1];

    sub_10026CB9C(v9);
    v19 = sub_10028D78C(v17, v18, &v36);

    *(v11 + 14) = v19;
    _os_log_impl(&_mh_execute_header, v5, v6, "Idle timer for final result fired, performing final translation with streaming request; id: %{public}s, sourceText: %{sensitive}s.", v11, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    sub_10026CB9C(v9);
    sub_10026CB9C(v8);
  }

  v21 = v0[4];
  v20 = v0[5];
  v22 = v0[2];
  v23 = type metadata accessor for UUID();
  v35 = *(*(v23 - 8) + 16);
  v35(v20, v22, v23);
  v24 = v21[6];
  v25 = (v22 + v21[5]);
  v33 = v25[1];
  v34 = *v25;
  v26 = type metadata accessor for Locale();
  v27 = *(*(v26 - 8) + 16);
  v27(v20 + v24, v22 + v24, v26);
  v27(v20 + v21[7], v22 + v21[7], v26);
  v35(v20 + v21[10], v22 + v21[10], v23);
  v28 = (v20 + v21[5]);
  *v28 = v34;
  v28[1] = v33;
  v29 = v20 + v21[8];
  *v29 = 257;
  *(v29 + 8) = 0;
  *(v20 + v21[9]) = 0;
  *(v20 + v21[11]) = 1;
  v0[8] = type metadata accessor for MainActor();

  v0[9] = static MainActor.shared.getter();
  v30 = swift_task_alloc();
  v0[10] = v30;
  *v30 = v0;
  v30[1] = sub_100263734;
  v31 = v0[5];

  return sub_1002660D4(v31, 0);
}

uint64_t sub_100263734()
{
  v1 = *v0;
  v2 = *v0;

  v3 = swift_task_alloc();
  *(v1 + 88) = v3;
  *v3 = v2;
  v3[1] = sub_100263874;

  return sub_100268CFC();
}

uint64_t sub_100263874()
{

  v1 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1002639B0, v1, v0);
}

uint64_t sub_1002639B0()
{

  return _swift_task_switch(sub_100263A18, 0, 0);
}

uint64_t sub_100263A18()
{
  sub_10026CB9C(*(v0 + 40));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100263AA0(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v62 = a5;
  v70 = a3;
  v71 = a4;
  v9 = type metadata accessor for Locale();
  v69 = *(v9 - 8);
  v10 = __chkstk_darwin(v9);
  v74 = &v57 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = v11;
  __chkstk_darwin(v10);
  v72 = &v57 - v12;
  v13 = sub_100005AD4(&qword_1003AA3B8, &unk_1002D3EF0);
  __chkstk_darwin(v13 - 8);
  v73 = &v57 - v14;
  v15 = type metadata accessor for StreamingRequestInfo(0);
  v63 = *(v15 - 1);
  v16 = __chkstk_darwin(v15);
  v64 = v17;
  v65 = &v57 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v19 = &v57 - v18;
  if (qword_1003A9288 != -1)
  {
    swift_once();
  }

  v20 = type metadata accessor for Logger();
  sub_1000078E8(v20, qword_1003D28A8);

  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.info.getter();

  v23 = os_log_type_enabled(v21, v22);
  v68 = a1;
  if (v23)
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v75[0] = v25;
    *v24 = 136642819;
    *(v24 + 4) = sub_10028D78C(a1, a2, v75);
    _os_log_impl(&_mh_execute_header, v21, v22, "Starting partial translation; sourceText: %{sensitive}s", v24, 0xCu);
    sub_100008664(v25);
  }

  v26 = OBJC_IVAR____TtC17SequoiaTranslator31TextStreamingTranslationManager_currentRequestId;
  swift_beginAccess();
  v27 = type metadata accessor for UUID();
  v28 = *(v27 - 8);
  v59 = *(v28 + 16);
  v60 = v28 + 16;
  v59(v19, v6 + v26, v27);
  v29 = v15[6];
  v61 = v6;
  v30 = *(v69 + 16);
  v30(&v19[v29], v70, v9);
  v30(&v19[v15[7]], v71, v9);
  v31 = objc_opt_self();

  v32 = [v31 standardUserDefaults];
  v58 = v9;
  v33 = String._bridgeToObjectiveC()();
  v34 = [v32 BOOLForKey:v33];
  v67 = a2;
  v35 = v34;

  LOBYTE(v33) = v35 ^ 1;
  v36 = [v31 standardUserDefaults];
  v37 = String._bridgeToObjectiveC()();
  v38 = [v36 BOOLForKey:v37];

  v59(&v19[v15[10]], v62, v27);
  v39 = &v19[v15[5]];
  v40 = v67;
  *v39 = v68;
  v39[1] = v40;
  v41 = &v19[v15[8]];
  *v41 = v33;
  v41[1] = v38 ^ 1;
  *(v41 + 1) = 0;
  v19[v15[9]] = 0;
  *&v19[v15[11]] = 1;
  v42 = type metadata accessor for TaskPriority();
  (*(*(v42 - 8) + 56))(v73, 1, 1, v42);
  v43 = v58;
  v30(v72, v70, v58);
  v30(v74, v71, v43);
  v44 = v65;
  sub_1000C88BC(v19, v65);
  type metadata accessor for MainActor();

  v45 = v61;

  v46 = static MainActor.shared.getter();
  v47 = v69;
  v48 = *(v69 + 80);
  v49 = (v48 + 56) & ~v48;
  v50 = (v66 + v48 + v49) & ~v48;
  v51 = (v66 + *(v63 + 80) + v50) & ~*(v63 + 80);
  v52 = swift_allocObject();
  *(v52 + 2) = v46;
  *(v52 + 3) = &protocol witness table for MainActor;
  v53 = v67;
  v54 = v68;
  *(v52 + 4) = v45;
  *(v52 + 5) = v54;
  *(v52 + 6) = v53;
  v55 = *(v47 + 32);
  v55(&v52[v49], v72, v43);
  v55(&v52[v50], v74, v43);
  sub_1000C8AD4(v44, &v52[v51]);
  sub_10005E36C(0, 0, v73, &unk_1002EC358, v52);

  return sub_10026CB9C(v19);
}

uint64_t sub_1002640F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[6] = a8;
  v8[7] = v13;
  v8[4] = a6;
  v8[5] = a7;
  v8[2] = a4;
  v8[3] = a5;
  v8[8] = type metadata accessor for MainActor();
  v8[9] = static MainActor.shared.getter();
  v10 = dispatch thunk of Actor.unownedExecutor.getter();
  v8[10] = v10;
  v8[11] = v9;

  return _swift_task_switch(sub_10026419C, v10, v9);
}

uint64_t sub_10026419C()
{
  v2 = v0[5];
  v1 = v0[6];
  v4 = v0[3];
  v3 = v0[4];
  sub_10026172C();
  if (sub_100260CBC(v4, v3, v2, v1))
  {
    v0[12] = static MainActor.shared.getter();
    v5 = swift_task_alloc();
    v0[13] = v5;
    *v5 = v0;
    v5[1] = sub_10026433C;
    v6 = v0[7];

    return sub_1002660D4(v6, 0);
  }

  else
  {

    sub_100261830(v0[7]);
    v8 = [objc_opt_self() standardUserDefaults];
    v9 = String._bridgeToObjectiveC()();
    v10 = [v8 BOOLForKey:v9];

    if (v10)
    {
      sub_100262CA0(v0[7]);
    }

    v11 = v0[1];

    return v11();
  }
}

uint64_t sub_10026433C()
{
  v1 = *v0;
  v2 = *v0;

  v3 = swift_task_alloc();
  *(v1 + 112) = v3;
  *v3 = v2;
  v3[1] = sub_10026447C;

  return sub_100268CFC();
}

uint64_t sub_10026447C()
{

  v1 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1002645B8, v1, v0);
}

uint64_t sub_1002645B8()
{

  v1 = *(v0 + 80);
  v2 = *(v0 + 88);

  return _swift_task_switch(sub_10026461C, v1, v2);
}

uint64_t sub_10026461C()
{

  sub_100261830(*(v0 + 56));
  v1 = [objc_opt_self() standardUserDefaults];
  v2 = String._bridgeToObjectiveC()();
  v3 = [v1 BOOLForKey:v2];

  if (v3)
  {
    sub_100262CA0(*(v0 + 56));
  }

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_100264704(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 144) = v13;
  *(v8 + 72) = a8;
  *(v8 + 80) = v14;
  *(v8 + 56) = a6;
  *(v8 + 64) = a7;
  *(v8 + 40) = a4;
  *(v8 + 48) = a5;
  *(v8 + 88) = type metadata accessor for StreamingRequestInfo(0);
  *(v8 + 96) = swift_task_alloc();
  type metadata accessor for MainActor();
  *(v8 + 104) = static MainActor.shared.getter();
  v10 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v8 + 112) = v10;
  *(v8 + 120) = v9;

  return _swift_task_switch(sub_1002647E4, v10, v9);
}

uint64_t sub_1002647E4()
{
  v2 = *(v0 + 88);
  v1 = *(v0 + 96);
  v20 = *(v0 + 144);
  v16 = *(v0 + 72);
  v17 = *(v0 + 80);
  v15 = *(v0 + 64);
  v3 = *(v0 + 40);
  v18 = *(v0 + 48);
  v19 = *(v0 + 56);
  v4 = OBJC_IVAR____TtC17SequoiaTranslator31TextStreamingTranslationManager_currentRequestId;
  swift_beginAccess();
  v5 = type metadata accessor for UUID();
  v6 = *(*(v5 - 8) + 16);
  v6(v1, v3 + v4, v5);
  v7 = v2[6];
  v8 = type metadata accessor for Locale();
  v9 = *(*(v8 - 8) + 16);
  v9(v1 + v7, v15, v8);
  v9(v1 + v2[7], v16, v8);
  v6(v1 + v2[10], v17, v5);
  v10 = (v1 + v2[5]);
  *v10 = v18;
  v10[1] = v19;
  v11 = v1 + v2[8];
  *v11 = 257;
  *(v11 + 8) = 0;
  *(v1 + v2[9]) = v20;
  *(v1 + v2[11]) = 1;

  v12 = swift_task_alloc();
  *(v0 + 128) = v12;
  *v12 = v0;
  v12[1] = sub_1002649DC;
  v13 = *(v0 + 96);

  return sub_1002669C4(v13);
}

uint64_t sub_1002649DC()
{
  v1 = *v0;
  v2 = *v0;

  v3 = swift_task_alloc();
  *(v1 + 136) = v3;
  *v3 = v2;
  v3[1] = sub_100264B1C;

  return sub_100268CFC();
}

uint64_t sub_100264B1C()
{
  v1 = *v0;

  v2 = *(v1 + 120);
  v3 = *(v1 + 112);

  return _swift_task_switch(sub_100264C3C, v3, v2);
}

uint64_t sub_100264C3C()
{
  v1 = *(v0 + 96);

  sub_10026CB9C(v1);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100264CAC(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for StreamingRequestInfo(0);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v70 = &v58 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100005AD4(&qword_1003AD830, &qword_1002D7788);
  v10 = __chkstk_darwin(v9 - 8);
  v65 = &v58 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v13 = &v58 - v12;
  v14 = type metadata accessor for CharacterSet();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v58 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v18 = a1;
  }

  else
  {
    v18 = 0;
  }

  if (a2)
  {
    v19 = a2;
  }

  else
  {
    v19 = 0xE000000000000000;
  }

  v63 = v18;
  v75[1] = v18;
  v75[2] = v19;
  v71 = a2;

  static CharacterSet.whitespacesAndNewlines.getter();
  v20 = sub_10001F278();
  v21 = v17;
  v68 = StringProtocol.trimmingCharacters(in:)();
  v69 = v22;
  v25 = *(v15 + 8);
  v24 = v15 + 8;
  v23 = v25;
  (v25)(v21, v14);
  v64 = v19;

  v26 = OBJC_IVAR____TtC17SequoiaTranslator31TextStreamingTranslationManager_lastTranslatedRequest;
  swift_beginAccess();
  v72 = v3;
  v62 = v26;
  sub_10001F620(v3 + v26, v13, &qword_1003AD830, &qword_1002D7788);
  v27 = *(v7 + 48);
  v66 = v7 + 48;
  v61 = v27;
  v28 = v27(v13, 1, v6);
  v67 = v6;
  v59 = v21;
  v60 = v14;
  if (v28)
  {
    sub_100009EBC(v13, &qword_1003AD830, &qword_1002D7788);
    v29 = 0;
    v30 = 0xE000000000000000;
    v31 = v70;
  }

  else
  {
    v32 = v70;
    sub_1000C88BC(v13, v70);
    sub_100009EBC(v13, &qword_1003AD830, &qword_1002D7788);
    v33 = &v32[*(v6 + 20)];
    v34 = *(v33 + 1);
    v73 = *v33;
    v74 = v34;

    static CharacterSet.whitespacesAndNewlines.getter();
    v35 = v21;
    v29 = StringProtocol.trimmingCharacters(in:)();
    v30 = v36;
    (v23)(v35, v14);
    sub_10026CB9C(v32);

    v31 = v32;
  }

  v37 = v24;
  v38 = v72;
  if (v68 == v29 && v69 == v30)
  {
    v39 = 1;
  }

  else
  {
    v39 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  v70 = v23;

  if (qword_1003A9288 != -1)
  {
    swift_once();
  }

  v40 = type metadata accessor for Logger();
  sub_1000078E8(v40, qword_1003D28A8);

  v41 = Logger.logObject.getter();
  v42 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v41, v42))
  {
    v68 = v37;
    v69 = v20;
    v43 = swift_slowAlloc();
    v75[0] = swift_slowAlloc();
    *v43 = 136643331;

    v44 = sub_10028D78C(v63, v64, v75);

    *(v43 + 4) = v44;
    *(v43 + 12) = 2085;
    v45 = v38 + v62;
    v46 = v65;
    sub_10001F620(v45, v65, &qword_1003AD830, &qword_1002D7788);
    v47 = v67;
    if (v61(v46, 1, v67))
    {
      sub_100009EBC(v46, &qword_1003AD830, &qword_1002D7788);
      v48 = 0;
      v49 = 0xE000000000000000;
    }

    else
    {
      v50 = v31;
      sub_1000C88BC(v46, v31);
      sub_100009EBC(v46, &qword_1003AD830, &qword_1002D7788);
      v51 = &v31[*(v47 + 20)];
      v52 = *(v51 + 1);
      v73 = *v51;
      v74 = v52;

      v53 = v59;
      static CharacterSet.whitespacesAndNewlines.getter();
      v54 = StringProtocol.trimmingCharacters(in:)();
      v49 = v55;
      (v70)(v53, v60);
      sub_10026CB9C(v50);

      v48 = v54;
    }

    v56 = sub_10028D78C(v48, v49, v75);

    *(v43 + 14) = v56;
    *(v43 + 22) = 1024;
    *(v43 + 24) = v39 & 1;
    _os_log_impl(&_mh_execute_header, v41, v42, "Streaming translation up to date with input: %{sensitive}s, compared to translation: %{sensitive}s, %{BOOL}d", v43, 0x1Cu);
    swift_arrayDestroy();
  }

  return v39 & 1;
}

void sub_1002652DC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v5 = v4;
  v70 = a2;
  v71 = a4;
  v8 = sub_100005AD4(&qword_1003AD830, &qword_1002D7788);
  __chkstk_darwin(v8 - 8);
  v65 = &v62 - v9;
  v68 = type metadata accessor for StreamingRequestInfo(0);
  v64 = *(v68 - 8);
  v10 = __chkstk_darwin(v68);
  v12 = &v62 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v10);
  v15 = &v62 - v14;
  v16 = __chkstk_darwin(v13);
  v67 = &v62 - v17;
  __chkstk_darwin(v16);
  v19 = &v62 - v18;
  v20 = type metadata accessor for UUID();
  v21 = *(v20 - 8);
  __chkstk_darwin(v20);
  v23 = &v62 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = a3;
  if (a3 & 1) != 0 || (v24 = OBJC_IVAR____TtC17SequoiaTranslator31TextStreamingTranslationManager_currentRequestId, swift_beginAccess(), (*(v21 + 16))(v23, v4 + v24, v20), sub_10026CD5C(&qword_1003AFF88, &type metadata accessor for UUID, &protocol conformance descriptor for UUID), v25 = dispatch thunk of static Equatable.== infix(_:_:)(), (*(v21 + 8))(v23, v20), (v25))
  {
    v66 = v21;
    v67 = v5;
    if (qword_1003A9288 != -1)
    {
      swift_once();
    }

    v26 = type metadata accessor for Logger();
    sub_1000078E8(v26, qword_1003D28A8);
    sub_1000C88BC(a1, v15);
    sub_1000C88BC(a1, v12);
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v63 = a1;
      *&v74[0] = v30;
      *v29 = 136446467;
      sub_10026CD5C(&qword_1003AC7D0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v31 = dispatch thunk of CustomStringConvertible.description.getter();
      v33 = v32;
      sub_10026CB9C(v15);
      v34 = sub_10028D78C(v31, v33, v74);

      *(v29 + 4) = v34;
      *(v29 + 12) = 2085;
      v35 = &v12[*(v68 + 20)];
      v36 = *v35;
      v37 = v35[1];

      sub_10026CB9C(v12);
      v38 = sub_10028D78C(v36, v37, v74);

      *(v29 + 14) = v38;
      _os_log_impl(&_mh_execute_header, v27, v28, "Sending translation to delegate; id: %{public}s, sourceText: %{sensitive}s", v29, 0x16u);
      swift_arrayDestroy();
      a1 = v63;
    }

    else
    {

      sub_10026CB9C(v12);
      sub_10026CB9C(v15);
    }

    v40 = v70;
    v39 = v71;
    v41 = v67;
    sub_10001F620(v70, &v72, &unk_1003B9EC0, &qword_1002D7480);
    v42 = v66;
    if (v73)
    {
      sub_100051DB8(&v72, v74);
      if (v39 || (v43 = OBJC_IVAR____TtC17SequoiaTranslator31TextStreamingTranslationManager_currentRequestId, swift_beginAccess(), (*(v42 + 16))(v23, v41 + v43, v20), LOBYTE(v43) = static UUID.== infix(_:_:)(), (*(v42 + 8))(v23, v20), (v43 & 1) == 0))
      {
        sub_100008664(v74);
      }

      else
      {
        sub_100051DB8(v74, &v72);
        v44 = OBJC_IVAR____TtC17SequoiaTranslator31TextStreamingTranslationManager_lastTranslation;
        swift_beginAccess();
        sub_10003BD84(&v72, v41 + v44, &unk_1003B9EC0, &qword_1002D7480);
        swift_endAccess();
        v45 = v65;
        sub_1000C88BC(a1, v65);
        (*(v64 + 56))(v45, 0, 1, v68);
        v46 = OBJC_IVAR____TtC17SequoiaTranslator31TextStreamingTranslationManager_lastTranslatedRequest;
        swift_beginAccess();
        sub_10003BD84(v45, v41 + v46, &qword_1003AD830, &qword_1002D7788);
        swift_endAccess();
      }
    }

    else
    {
      sub_100009EBC(&v72, &unk_1003B9EC0, &qword_1002D7480);
    }

    v47 = *(v41 + OBJC_IVAR____TtC17SequoiaTranslator31TextStreamingTranslationManager_delegate + 24);
    v48 = *(v41 + OBJC_IVAR____TtC17SequoiaTranslator31TextStreamingTranslationManager_delegate + 32);
    sub_1000085CC((v41 + OBJC_IVAR____TtC17SequoiaTranslator31TextStreamingTranslationManager_delegate), v47);
    (*(v48 + 8))(a1, v40, v69 & 1, v39, v47, v48);
  }

  else
  {
    if (qword_1003A9288 != -1)
    {
      swift_once();
    }

    v49 = type metadata accessor for Logger();
    sub_1000078E8(v49, qword_1003D28A8);
    sub_1000C88BC(a1, v19);
    v50 = v67;
    sub_1000C88BC(a1, v67);
    v51 = Logger.logObject.getter();
    v52 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      *&v74[0] = swift_slowAlloc();
      *v53 = 136446467;
      sub_10026CD5C(&qword_1003AC7D0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v54 = dispatch thunk of CustomStringConvertible.description.getter();
      v56 = v55;
      sub_10026CB9C(v19);
      v57 = sub_10028D78C(v54, v56, v74);

      *(v53 + 4) = v57;
      *(v53 + 12) = 2085;
      v58 = (v50 + *(v68 + 20));
      v59 = *v58;
      v60 = v58[1];

      sub_10026CB9C(v50);
      v61 = sub_10028D78C(v59, v60, v74);

      *(v53 + 14) = v61;
      _os_log_impl(&_mh_execute_header, v51, v52, "Not sending translation to delegate because partial translation is outdated; id: %{public}s, sourceText: %{sensitive}s", v53, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      sub_10026CB9C(v50);
      sub_10026CB9C(v19);
    }
  }
}

uint64_t sub_100265B8C(char a1)
{
  *(v2 + 16) = v1;
  *(v2 + 32) = a1;
  type metadata accessor for MainActor();
  *(v2 + 24) = static MainActor.shared.getter();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100265C28, v4, v3);
}

uint64_t sub_100265C28()
{
  v42 = v0;
  v1 = *(v0 + 16);

  v2 = OBJC_IVAR____TtC17SequoiaTranslator31TextStreamingTranslationManager_streamingManagerState;
  v3 = 0x74616C736E617274;
  v4 = 0xEB00000000676E69;
  if (*(v1 + OBJC_IVAR____TtC17SequoiaTranslator31TextStreamingTranslationManager_streamingManagerState) != 1)
  {
    v3 = 0x726F727265;
    v4 = 0xE500000000000000;
  }

  if (*(v1 + OBJC_IVAR____TtC17SequoiaTranslator31TextStreamingTranslationManager_streamingManagerState))
  {
    v5 = v3;
  }

  else
  {
    v5 = 1701602409;
  }

  if (*(v1 + OBJC_IVAR____TtC17SequoiaTranslator31TextStreamingTranslationManager_streamingManagerState))
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xE400000000000000;
  }

  v7 = 0x74616C736E617274;
  v8 = 0xEB00000000676E69;
  if (*(v0 + 32) != 1)
  {
    v7 = 0x726F727265;
    v8 = 0xE500000000000000;
  }

  if (*(v0 + 32))
  {
    v9 = v7;
  }

  else
  {
    v9 = 1701602409;
  }

  if (*(v0 + 32))
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xE400000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {

LABEL_21:
    if (qword_1003A9288 != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    sub_1000078E8(v12, qword_1003D28A8);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = *(v0 + 32);
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v41 = v17;
      *v16 = 136446210;
      v18 = 0x74616C736E617274;
      v19 = 0xEB00000000676E69;
      if (v15 != 1)
      {
        v18 = 0x726F727265;
        v19 = 0xE500000000000000;
      }

      if (v15)
      {
        v20 = v18;
      }

      else
      {
        v20 = 1701602409;
      }

      if (v15)
      {
        v21 = v19;
      }

      else
      {
        v21 = 0xE400000000000000;
      }

      v22 = sub_10028D78C(v20, v21, &v41);

      *(v16 + 4) = v22;
      _os_log_impl(&_mh_execute_header, v13, v14, "Not changing state because it's the same, %{public}s", v16, 0xCu);
      sub_100008664(v17);
    }

    v23 = 0;
    goto LABEL_52;
  }

  v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v11)
  {
    goto LABEL_21;
  }

  if (qword_1003A9288 != -1)
  {
    swift_once();
  }

  v24 = type metadata accessor for Logger();
  sub_1000078E8(v24, qword_1003D28A8);

  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    *v27 = 136446466;
    v29 = *(v1 + v2);
    v41 = v28;
    if (v29)
    {
      if (v29 == 1)
      {
        v30 = 0x74616C736E617274;
        v31 = 0xEB00000000676E69;
      }

      else
      {
        v31 = 0xE500000000000000;
        v30 = 0x726F727265;
      }
    }

    else
    {
      v31 = 0xE400000000000000;
      v30 = 1701602409;
    }

    v32 = *(v0 + 32);
    v33 = sub_10028D78C(v30, v31, &v41);

    *(v27 + 4) = v33;
    *(v27 + 12) = 2082;
    v34 = 0x74616C736E617274;
    v35 = 0xEB00000000676E69;
    if (v32 != 1)
    {
      v34 = 0x726F727265;
      v35 = 0xE500000000000000;
    }

    if (v32)
    {
      v36 = v34;
    }

    else
    {
      v36 = 1701602409;
    }

    if (v32)
    {
      v37 = v35;
    }

    else
    {
      v37 = 0xE400000000000000;
    }

    v38 = sub_10028D78C(v36, v37, &v41);

    *(v27 + 14) = v38;
    _os_log_impl(&_mh_execute_header, v25, v26, "Changing state from %{public}s to %{public}s", v27, 0x16u);
    swift_arrayDestroy();
  }

  *(v1 + v2) = *(v0 + 32);
  v23 = 1;
LABEL_52:
  v39 = *(v0 + 8);

  return v39(v23);
}