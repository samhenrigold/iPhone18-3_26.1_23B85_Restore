double sub_1001DF69C(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  sub_1001F6DA0(&qword_1003AE978, type metadata accessor for DeviceHelper, &unk_1002DBFC0);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return result;
}

double sub_1001DF734(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = sub_100005AD4(&qword_1003AA3B8, &unk_1002D3EF0);
  __chkstk_darwin(v6 - 8);
  v8 = &v15 - v7;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    withObservationTracking<A>(_:onChange:)();
    v12 = type metadata accessor for TaskPriority();
    (*(*(v12 - 8) + 56))(v8, 1, 1, v12);
    type metadata accessor for MainActor();

    v13 = static MainActor.shared.getter();
    v14 = swift_allocObject();
    v14[2] = v13;
    v14[3] = &protocol witness table for MainActor;
    v14[4] = v11;
    sub_10005E36C(0, 0, v8, a5, v14);
  }

  return result;
}

uint64_t sub_1001DF8B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  type metadata accessor for MainActor();
  *(v4 + 24) = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1001DF94C, v6, v5);
}

uint64_t sub_1001DF94C()
{

  sub_1001DC2DC();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1001DF9B0()
{
  v1 = v0;
  v37 = *v0;
  v2 = sub_100005AD4(&qword_1003AA3B8, &unk_1002D3EF0);
  __chkstk_darwin(v2 - 8);
  v39 = &v32 - v3;
  v4 = type metadata accessor for Locale();
  v36 = *(v4 - 8);
  v5 = *(v36 + 64);
  v6 = __chkstk_darwin(v4);
  v38 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v32 - v7;
  v9 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v9 - 8);
  if (qword_1003A92B0 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  sub_1000078E8(v10, qword_1003D2920);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&_mh_execute_header, v11, v12, "Playing degraded experience message", v13, 2u);
  }

  swift_getKeyPath();
  *&v46[0] = v1;
  sub_1001F6DA0(&qword_1003B4900, type metadata accessor for PersonalTranslatorViewModel, &unk_1002E7508);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *(*(v1 + OBJC_IVAR____TtC17SequoiaTranslator27PersonalTranslatorViewModel__sessionMetrics) + OBJC_IVAR____TtC17SequoiaTranslator16PTSessionMetrics_coachingPrompts) = 1;
  if (*(v1 + OBJC_IVAR____TtC17SequoiaTranslator27PersonalTranslatorViewModel__willPlayTTSMessage) == 1)
  {
    *(v1 + OBJC_IVAR____TtC17SequoiaTranslator27PersonalTranslatorViewModel__willPlayTTSMessage) = 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    *(&v32 - 2) = v1;
    *(&v32 - 8) = 1;
    *&v46[0] = v1;
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v34 = String.init(localized:table:bundle:locale:comment:)();
  v33 = v15;
  v16 = v8;
  v35 = v8;
  static Locale.current.getter();
  v47 = 0;
  memset(v46, 0, sizeof(v46));
  v17 = type metadata accessor for TaskPriority();
  memset(v44, 0, sizeof(v44));
  v45 = 0;
  (*(*(v17 - 8) + 56))(v39, 1, 1, v17);
  v18 = v36;
  (*(v36 + 16))(v38, v16, v4);
  sub_10001F620(v46, v42, &unk_1003AECE0, &unk_1002DA2D0);
  sub_10001F620(v44, v40, &unk_1003B9EC0, &qword_1002D7480);
  type metadata accessor for MainActor();

  v19 = static MainActor.shared.getter();
  v20 = (*(v18 + 80) + 48) & ~*(v18 + 80);
  v21 = (v5 + v20 + 7) & 0xFFFFFFFFFFFFFFF8;
  v22 = v1;
  v23 = (v21 + 15) & 0xFFFFFFFFFFFFFFF8;
  v24 = (v23 + 47) & 0xFFFFFFFFFFFFFFF8;
  v25 = swift_allocObject();
  *(v25 + 2) = v19;
  *(v25 + 3) = &protocol witness table for MainActor;
  v26 = v33;
  *(v25 + 4) = v34;
  *(v25 + 5) = v26;
  (*(v18 + 32))(&v25[v20], v38, v4);
  *&v25[v21] = v22;
  v27 = &v25[v23];
  *(v27 + 4) = v43;
  v28 = v42[1];
  *v27 = v42[0];
  *(v27 + 1) = v28;
  v29 = &v25[v24];
  v30 = v40[1];
  *v29 = v40[0];
  *(v29 + 1) = v30;
  *(v29 + 4) = v41;
  *&v25[(v24 + 47) & 0xFFFFFFFFFFFFFFF8] = v37;
  sub_10005E36C(0, 0, v39, &unk_1002E7B58, v25);

  sub_100009EBC(v44, &unk_1003B9EC0, &qword_1002D7480);
  sub_100009EBC(v46, &unk_1003AECE0, &unk_1002DA2D0);
  return (*(v18 + 8))(v35, v4);
}

void sub_1001DFFFC()
{
  v1 = v0;
  v94 = *v0;
  v2 = sub_100005AD4(&qword_1003AA3B8, &unk_1002D3EF0);
  __chkstk_darwin(v2 - 8);
  v98 = v82 - v3;
  v91 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v90 = *(v91 - 8);
  __chkstk_darwin(v91);
  v92 = v82 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v5 - 8);
  v89 = v82 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for String.LocalizationValue.StringInterpolation();
  __chkstk_darwin(v7 - 8);
  v86 = v82 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = type metadata accessor for LocalizedStringResource();
  v93 = *(v97 - 8);
  v9 = __chkstk_darwin(v97);
  v87 = v82 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v96 = v82 - v11;
  v12 = sub_100005AD4(&qword_1003AFCE0, &qword_1002D5B00);
  v13 = __chkstk_darwin(v12 - 8);
  v99 = v82 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v16 = v82 - v15;
  v102 = type metadata accessor for Locale();
  v17 = *(v102 - 8);
  v18 = __chkstk_darwin(v102);
  v95 = v82 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v18);
  v22 = v82 - v21;
  v88 = v23;
  __chkstk_darwin(v20);
  v25 = v82 - v24;
  if (qword_1003A92B0 != -1)
  {
    swift_once();
  }

  v100 = v22;
  v101 = v25;
  v26 = type metadata accessor for Logger();
  v27 = sub_1000078E8(v26, qword_1003D2920);
  v28 = Logger.logObject.getter();
  v29 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    *v30 = 0;
    _os_log_impl(&_mh_execute_header, v28, v29, "Playing start message", v30, 2u);
  }

  swift_getKeyPath();
  v31 = OBJC_IVAR____TtC17SequoiaTranslator27PersonalTranslatorViewModel___observationRegistrar;
  *&v109[0] = v1;
  v32 = sub_1001F6DA0(&qword_1003B4900, type metadata accessor for PersonalTranslatorViewModel, &unk_1002E7508);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v33 = OBJC_IVAR____TtC17SequoiaTranslator27PersonalTranslatorViewModel__environmentLocale;
  swift_beginAccess();
  sub_10001F620(v1 + v33, v16, &qword_1003AFCE0, &qword_1002D5B00);
  v34 = v17;
  v35 = *(v17 + 48);
  v36 = v102;
  if (v35(v16, 1, v102) == 1)
  {
    sub_100009EBC(v16, &qword_1003AFCE0, &qword_1002D5B00);
LABEL_13:
    v51 = Logger.logObject.getter();
    v52 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      *v53 = 0;
      _os_log_impl(&_mh_execute_header, v51, v52, "Couldn't play start message because couldn't get environment locale display name localized in device owner locale", v53, 2u);
    }

    return;
  }

  v84 = v27;
  v37 = v34 + 32;
  v38 = v101;
  v85 = *(v34 + 32);
  v85(v101, v16, v36);
  swift_getKeyPath();
  *&v109[0] = v1;
  v82[1] = v31;
  v82[0] = v32;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v39 = OBJC_IVAR____TtC17SequoiaTranslator27PersonalTranslatorViewModel__deviceOwnerLocale;
  swift_beginAccess();
  v83 = v1;
  v40 = v1 + v39;
  v41 = v102;
  v42 = v99;
  sub_10001F620(v40, v99, &qword_1003AFCE0, &qword_1002D5B00);
  if (v35(v42, 1, v41) == 1)
  {
    (*(v34 + 8))(v38, v41);
    sub_100009EBC(v42, &qword_1003AFCE0, &qword_1002D5B00);
    goto LABEL_13;
  }

  v43 = v34;
  v44 = v100;
  v85(v100, v42, v41);
  v45 = Locale.sqDisplayName(context:in:)();
  if (!v46)
  {
    v50 = *(v34 + 8);
    v50(v44, v41);
    v50(v38, v41);
    goto LABEL_13;
  }

  v47 = v45;
  v48 = v46;
  v99 = v37;
  v49 = v83;
  if (*(v83 + OBJC_IVAR____TtC17SequoiaTranslator27PersonalTranslatorViewModel__willPlayTTSMessage))
  {
    *(v83 + OBJC_IVAR____TtC17SequoiaTranslator27PersonalTranslatorViewModel__willPlayTTSMessage) = 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    *&v109[0] = v49;
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  v55 = v43;
  String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v56._countAndFlagsBits = 0x74616C736E617254;
  v56._object = 0xEC00000020676E69;
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v56);
  v57._countAndFlagsBits = v47;
  v57._object = v48;
  String.LocalizationValue.StringInterpolation.appendInterpolation(_:)(v57);

  v58._countAndFlagsBits = 0;
  v58._object = 0xE000000000000000;
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v58);
  String.LocalizationValue.init(stringInterpolation:)();
  v59 = *(v43 + 16);
  v60 = v95;
  v61 = v100;
  v62 = v102;
  v59(v95, v100, v102);
  (*(v90 + 104))(v92, enum case for LocalizedStringResource.BundleDescription.main(_:), v91);
  v63 = v96;
  LocalizedStringResource.init(_:defaultValue:table:locale:bundle:comment:)();
  v64 = v93;
  (*(v93 + 16))(v87, v63, v97);
  v92 = String.init(localized:)();
  v91 = v65;
  v110 = 0;
  memset(v109, 0, sizeof(v109));
  v66 = type metadata accessor for TaskPriority();
  memset(v107, 0, sizeof(v107));
  v108 = 0;
  (*(*(v66 - 8) + 56))(v98, 1, 1, v66);
  v59(v60, v61, v62);
  sub_10001F620(v109, v105, &unk_1003AECE0, &unk_1002DA2D0);
  sub_10001F620(v107, v103, &unk_1003B9EC0, &qword_1002D7480);
  type metadata accessor for MainActor();
  v67 = v83;

  v68 = static MainActor.shared.getter();
  v69 = (*(v55 + 80) + 48) & ~*(v55 + 80);
  v70 = v55;
  v71 = (v88 + v69 + 7) & 0xFFFFFFFFFFFFFFF8;
  v72 = (v71 + 15) & 0xFFFFFFFFFFFFFFF8;
  v73 = (v72 + 47) & 0xFFFFFFFFFFFFFFF8;
  v74 = swift_allocObject();
  *(v74 + 2) = v68;
  *(v74 + 3) = &protocol witness table for MainActor;
  v75 = v91;
  *(v74 + 4) = v92;
  *(v74 + 5) = v75;
  v76 = v102;
  v85(&v74[v69], v95, v102);
  *&v74[v71] = v67;
  v77 = &v74[v72];
  *(v77 + 4) = v106;
  v78 = v105[1];
  *v77 = v105[0];
  *(v77 + 1) = v78;
  v79 = &v74[v73];
  v80 = v103[1];
  *v79 = v103[0];
  *(v79 + 1) = v80;
  *(v79 + 4) = v104;
  *&v74[(v73 + 47) & 0xFFFFFFFFFFFFFFF8] = v94;
  sub_10005E36C(0, 0, v98, &unk_1002E7B50, v74);

  sub_100009EBC(v107, &unk_1003B9EC0, &qword_1002D7480);
  sub_100009EBC(v109, &unk_1003AECE0, &unk_1002DA2D0);
  (*(v64 + 8))(v96, v97);
  v81 = *(v70 + 8);
  v81(v100, v76);
  v81(v101, v76);
}

uint64_t sub_1001E0C74()
{
  v1[2] = v0;
  v2 = type metadata accessor for Locale();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  type metadata accessor for String.LocalizationValue();
  v1[6] = swift_task_alloc();

  return _swift_task_switch(sub_1001E0D60, 0, 0);
}

uint64_t sub_1001E0D60()
{
  if (qword_1003A92B0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[7] = sub_1000078E8(v1, qword_1003D2920);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Playing download languages message", v4, 2u);
  }

  v5 = v0[5];
  v6 = v0[3];
  v7 = v0[4];

  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  v0[8] = v8;
  static Locale.current.getter();
  v9 = Locale.identifier.getter();
  v11 = v10;
  (*(v7 + 8))(v5, v6);
  sub_1001F5660(v9, v11);
  v13 = v12;

  v14 = objc_allocWithZone(type metadata accessor for SpeechRequest());

  v15 = v13;
  v16 = SpeechRequest.init(text:voice:)();
  v0[9] = v16;
  SynthesizingRequestProtocol.privacySensitive.setter();
  SynthesizingRequestProtocol.synthesisPriority.setter();

  v17 = swift_task_alloc();
  v0[10] = v17;
  *v17 = v0;
  v17[1] = sub_1001E0FE0;

  return sub_1001F6158(v16);
}

uint64_t sub_1001E0FE0(uint64_t a1)
{
  *(*v1 + 88) = a1;

  return _swift_task_switch(sub_1001E1100, 0, 0);
}

uint64_t sub_1001E1100()
{
  if (*(v0 + 88))
  {
    swift_errorRetain();
    v1 = Logger.logObject.getter();
    v2 = static os_log_type_t.error.getter();

    v3 = os_log_type_enabled(v1, v2);
    v4 = *(v0 + 72);
    if (v3)
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      *v5 = 138412290;
      swift_errorRetain();
      v7 = _swift_stdlib_bridgeErrorToNSError();
      *(v5 + 4) = v7;
      *v6 = v7;
      _os_log_impl(&_mh_execute_header, v1, v2, "TTS: Download languages message error: %@", v5, 0xCu);
      sub_100009EBC(v6, &unk_1003AECA0, &unk_1002D3F10);
    }

    else
    {
    }
  }

  else
  {
  }

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_1001E1288()
{
  v1[2] = v0;
  v2 = type metadata accessor for Locale();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  type metadata accessor for String.LocalizationValue();
  v1[6] = swift_task_alloc();

  return _swift_task_switch(sub_1001E1374, 0, 0);
}

uint64_t sub_1001E1374()
{
  if (qword_1003A92B0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[7] = sub_1000078E8(v1, qword_1003D2920);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Playing onboarding needed message", v4, 2u);
  }

  v5 = v0[5];
  v6 = v0[3];
  v7 = v0[4];

  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  v0[8] = v8;
  static Locale.current.getter();
  v9 = Locale.identifier.getter();
  v11 = v10;
  (*(v7 + 8))(v5, v6);
  sub_1001F5660(v9, v11);
  v13 = v12;

  v14 = objc_allocWithZone(type metadata accessor for SpeechRequest());

  v15 = v13;
  v16 = SpeechRequest.init(text:voice:)();
  v0[9] = v16;
  SynthesizingRequestProtocol.privacySensitive.setter();
  SynthesizingRequestProtocol.synthesisPriority.setter();

  v17 = swift_task_alloc();
  v0[10] = v17;
  *v17 = v0;
  v17[1] = sub_1001E15F4;

  return sub_1001F6158(v16);
}

uint64_t sub_1001E15F4(uint64_t a1)
{
  *(*v1 + 88) = a1;

  return _swift_task_switch(sub_1001E1714, 0, 0);
}

uint64_t sub_1001E1714()
{
  if (*(v0 + 88))
  {
    swift_errorRetain();
    v1 = Logger.logObject.getter();
    v2 = static os_log_type_t.error.getter();

    v3 = os_log_type_enabled(v1, v2);
    v4 = *(v0 + 72);
    if (v3)
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      *v5 = 138412290;
      swift_errorRetain();
      v7 = _swift_stdlib_bridgeErrorToNSError();
      *(v5 + 4) = v7;
      *v6 = v7;
      _os_log_impl(&_mh_execute_header, v1, v2, "TTS: Onboarding needed message error: %@", v5, 0xCu);
      sub_100009EBC(v6, &unk_1003AECA0, &unk_1002D3F10);
    }

    else
    {
    }
  }

  else
  {
  }

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_1001E189C(uint64_t a1)
{
  v17 = a1;
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v20 = *(v1 - 8);
  __chkstk_darwin(v1);
  v3 = &v17 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for DispatchQoS();
  v18 = *(v4 - 8);
  v19 = v4;
  __chkstk_darwin(v4);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Notification();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000A2CC(0, &qword_1003A9C40, OS_dispatch_queue_ptr);
  v11 = static OS_dispatch_queue.main.getter();
  v12 = swift_allocObject();
  swift_weakInit();
  (*(v8 + 16))(v10, v17, v7);
  v13 = (*(v8 + 80) + 24) & ~*(v8 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = v12;
  (*(v8 + 32))(v14 + v13, v10, v7);
  aBlock[4] = sub_1001F7990;
  aBlock[5] = v14;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100096948;
  aBlock[3] = &unk_100388FA8;
  v15 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_1001F6DA0(&qword_1003AB990, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100005AD4(&unk_1003A9C50, &unk_1002D61C0);
  sub_10001BAEC(&qword_1003AB9A0, &unk_1003A9C50, &unk_1002D61C0, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v15);

  (*(v20 + 8))(v3, v1);
  return (*(v18 + 8))(v6, v19);
}

void sub_1001E1C70(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v2 = Strong;
  swift_getKeyPath();
  v97 = v2;
  sub_1001F6DA0(&qword_1003B4900, type metadata accessor for PersonalTranslatorViewModel, &unk_1002E7508);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*(v2 + OBJC_IVAR____TtC17SequoiaTranslator27PersonalTranslatorViewModel__isAudioSessionRunning) != 1)
  {
    if (qword_1003A92B0 != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    sub_1000078E8(v16, qword_1003D2920);
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v17, v18))
    {
      goto LABEL_27;
    }

    v19 = swift_slowAlloc();
    *v19 = 0;
    v20 = "Received Route change notification before audio session started";
LABEL_26:
    _os_log_impl(&_mh_execute_header, v17, v18, v20, v19, 2u);

LABEL_27:

    return;
  }

  swift_getKeyPath();
  v97 = v2;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*(v2 + OBJC_IVAR____TtC17SequoiaTranslator27PersonalTranslatorViewModel__isActive) != 1)
  {

    return;
  }

  Notification.object.getter();
  if (!v99)
  {
    sub_100009EBC(&v97, &unk_1003AB9C0, &unk_1002D36F0);
    goto LABEL_23;
  }

  sub_10000A2CC(0, &qword_1003AED38, AVAudioSession_ptr);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_23:
    if (qword_1003A92B0 != -1)
    {
LABEL_97:
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    sub_1000078E8(v21, qword_1003D2920);
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v17, v18))
    {
      goto LABEL_27;
    }

    v19 = swift_slowAlloc();
    *v19 = 0;
    v20 = "Audio route changed but no session was found";
    goto LABEL_26;
  }

  v3 = v100;
  v4 = Notification.userInfo.getter();
  if (!v4)
  {
    goto LABEL_30;
  }

  v5 = v4;
  v96 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  AnyHashable.init<A>(_:)();
  if (!*(v5 + 16) || (v6 = sub_10028DF68(&v97), (v7 & 1) == 0))
  {

    sub_100078028(&v97);
    goto LABEL_30;
  }

  sub_10000A37C(*(v5 + 56) + 32 * v6, &v100);
  sub_100078028(&v97);

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_30:
    if (qword_1003A92B0 != -1)
    {
      swift_once();
    }

    v22 = type metadata accessor for Logger();
    sub_1000078E8(v22, qword_1003D2920);
    v10 = Logger.logObject.getter();
    v23 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v10, v23))
    {
      goto LABEL_35;
    }

    v24 = swift_slowAlloc();
    *v24 = 0;
    _os_log_impl(&_mh_execute_header, v10, v23, "Audio route change reason: No reason provided", v24, 2u);
    goto LABEL_34;
  }

  v8 = v96;
  if (qword_1003A92B0 != -1)
  {
    goto LABEL_104;
  }

  while (1)
  {
    v9 = type metadata accessor for Logger();
    sub_1000078E8(v9, qword_1003D2920);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v10, v11))
    {
      goto LABEL_35;
    }

    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v97 = v13;
    *v12 = 136315138;
    if (v8 > 3)
    {
      if (v8 > 6)
      {
        if (v8 == 7)
        {
          v15 = 0x80000001002F3760;
          v14 = 0xD00000000000001ALL;
          goto LABEL_95;
        }

        if (v8 == 8)
        {
          v15 = 0x80000001002F3740;
          v14 = 0xD000000000000018;
          goto LABEL_95;
        }
      }

      else
      {
        if (v8 == 4)
        {
          v15 = 0xE800000000000000;
          v14 = 0x656469727265766FLL;
          goto LABEL_95;
        }

        if (v8 == 6)
        {
          v15 = 0xED00007065656C53;
          v14 = 0x6D6F7246656B6177;
          goto LABEL_95;
        }
      }

      goto LABEL_94;
    }

    if (v8 <= 1)
    {
      if (!v8)
      {
        v15 = 0xE700000000000000;
        v14 = 0x6E776F6E6B6E75;
        goto LABEL_95;
      }

      if (v8 == 1)
      {
        v14 = 0xD000000000000012;
        v15 = 0x80000001002F37A0;
        goto LABEL_95;
      }

LABEL_94:
      v15 = 0xEE006E6F69747069;
      v14 = 0x7263736564206F6ELL;
      goto LABEL_95;
    }

    if (v8 == 2)
    {
      v15 = 0x80000001002F3780;
      v14 = 0xD000000000000014;
    }

    else
    {
      v15 = 0xEE0065676E616843;
      v14 = 0x79726F6765746163;
    }

LABEL_95:
    v85 = sub_10028D78C(v14, v15, &v97);

    *(v12 + 4) = v85;
    _os_log_impl(&_mh_execute_header, v10, v11, "Audio route change reason: %s", v12, 0xCu);
    sub_100008664(v13);

LABEL_34:

LABEL_35:

    v8 = &selRef_optionButtonPressedWithSender_;
    v25 = [v3 opaqueSessionID];
    v26 = *(v2 + 32);
    v27 = *(*&v26[OBJC_IVAR____TtC17SequoiaTranslator13SpeechManager_recordingHelper] + OBJC_IVAR____TtC17SequoiaTranslator15RecordingHelper_auxiliaryAudioSession);
    v28 = v26;
    if (v27)
    {
      v29 = [v27 opaqueSessionID];
    }

    else
    {
      v29 = 0;
    }

    if (qword_1003A9170 != -1)
    {
      swift_once();
    }

    v30 = qword_1003D2470;
    swift_getKeyPath();
    v97 = v30;
    sub_1001F6DA0(&qword_1003AA3A0, type metadata accessor for AudioRouteManager, &unk_1002D3BF4);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v31 = *(v30 + 32);

    if (v31)
    {
      v32 = v29;
    }

    else
    {
      v32 = 0;
    }

    if (qword_1003A92B0 != -1)
    {
      swift_once();
    }

    v33 = type metadata accessor for Logger();
    sub_1000078E8(v33, qword_1003D2920);
    v34 = v3;
    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v35, v36))
    {
      v94 = v25;
      v37 = swift_slowAlloc();
      v97 = swift_slowAlloc();
      *v37 = 67109890;
      *(v37 + 4) = [v34 opaqueSessionID];

      *(v37 + 8) = 1024;
      *(v37 + 10) = v25 != v32;
      *(v37 + 14) = 2080;
      v38 = [v34 currentRoute];
      v39 = [v38 inputs];

      sub_10000A2CC(0, &unk_1003AED40, AVAudioSessionPortDescription_ptr);
      static Array._unconditionallyBridgeFromObjectiveC(_:)();
      v95 = v32;
      v40 = v34;

      v41 = Array.description.getter();
      v43 = v42;

      v44 = sub_10028D78C(v41, v43, &v97);

      *(v37 + 16) = v44;
      *(v37 + 24) = 2080;
      v45 = [v34 currentRoute];
      v46 = [v45 outputs];

      static Array._unconditionallyBridgeFromObjectiveC(_:)();
      v47 = Array.description.getter();
      v49 = v48;

      v8 = sub_10028D78C(v47, v49, &v97);
      v34 = v40;

      *(v37 + 26) = v8;
      _os_log_impl(&_mh_execute_header, v35, v36, "Audio route changed for session: %u. IsDefaultSession: %{BOOL}d\nInputs: %s\nOutputs: %s", v37, 0x22u);
      swift_arrayDestroy();

      if (v94 == v95)
      {
        goto LABEL_47;
      }
    }

    else
    {

      if (v25 == v32)
      {
LABEL_47:

        return;
      }
    }

    v50 = [v34 currentRoute];
    v3 = [v50 outputs];

    sub_10000A2CC(0, &unk_1003AED40, AVAudioSessionPortDescription_ptr);
    v51 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v51 >> 62)
    {
      if (!_CocoaArrayWrapper.endIndex.getter())
      {
        goto LABEL_99;
      }
    }

    else if (!*((v51 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_99;
    }

    if ((v51 & 0xC000000000000001) != 0)
    {
      break;
    }

    if (*((v51 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v52 = *(v51 + 32);
      goto LABEL_54;
    }

    __break(1u);
LABEL_104:
    swift_once();
  }

  v52 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_54:
  v53 = v52;

  v54 = [v53 UID];

  v55 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v57 = v56;

  v97 = v55;
  v98 = v57;
  v100 = 45;
  v101 = 0xE100000000000000;
  v58 = sub_10001F278();
  v59 = StringProtocol.components<A>(separatedBy:)();

  if (!v59[2])
  {
LABEL_99:

    v86 = Logger.logObject.getter();
    v87 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v86, v87))
    {
      v88 = swift_slowAlloc();
      *v88 = 0;
      _os_log_impl(&_mh_execute_header, v86, v87, "Audio route change. Cannot get output ID", v88, 2u);
    }

    return;
  }

  v89 = v34;
  v90 = v59[4];
  v91 = v59[5];

  v60 = *(v2 + 72);
  swift_getKeyPath();
  v97 = v60;
  sub_1001F6DA0(&qword_1003AE978, type metadata accessor for DeviceHelper, &unk_1002DBFC0);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v61 = *(v60 + OBJC_IVAR____TtC17SequoiaTranslator12DeviceHelper__audioDevices);
  v62 = *(v61 + 16);

  if (!v62)
  {
LABEL_69:

    v79 = Logger.logObject.getter();
    v80 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v79, v80))
    {
      v81 = swift_slowAlloc();
      *v81 = 0;
      _os_log_impl(&_mh_execute_header, v79, v80, "Audio route changed output to a device not found in deviceHelper device list, inactivating", v81, 2u);
    }

    sub_1001DA594(2, 1);

    goto LABEL_80;
  }

  v63 = 0;
  v64 = 0;
  v93 = v61;
  while (2)
  {
    if (v64 >= *(v61 + 16))
    {
      __break(1u);
      goto LABEL_97;
    }

    v65 = v61 + v63;
    v66 = *(v61 + v63 + 72);
    if (!v66)
    {
      goto LABEL_59;
    }

    v67 = v58;
    v68 = *(v65 + 120);
    v69 = *(v65 + 128);
    v92 = *(v65 + 136);
    v97 = *(v65 + 64);
    v98 = v66;
    v100 = 45;
    v101 = 0xE100000000000000;

    v70 = v68;
    v71 = v69;
    v58 = v67;
    v72 = v71;
    v73 = StringProtocol.components<A>(separatedBy:)();
    if (!v73[2])
    {

      goto LABEL_58;
    }

    v74 = v58;
    v76 = v73[4];
    v75 = v73[5];

    if (v76 == v90 && v75 == v91)
    {

      goto LABEL_74;
    }

    v78 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v78 & 1) == 0)
    {

      v58 = v74;
LABEL_58:
      v61 = v93;
LABEL_59:
      ++v64;
      v63 += 112;
      if (v62 == v64)
      {
        goto LABEL_69;
      }

      continue;
    }

    break;
  }

LABEL_74:
  if (v92)
  {
  }

  else
  {
    v82 = Logger.logObject.getter();
    v83 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v82, v83))
    {
      v84 = swift_slowAlloc();
      *v84 = 0;
      _os_log_impl(&_mh_execute_header, v82, v83, "Audio route changed output to device not supporting PT, inactivating", v84, 2u);
    }

    sub_1001DA594(2, 1);
  }

LABEL_80:
}

id *sub_1001E2D9C()
{

  sub_100009EBC(v0 + OBJC_IVAR____TtC17SequoiaTranslator27PersonalTranslatorViewModel__firstEnvironmentPartialArrivalTime, &qword_1003B5130, &unk_1002E4220);

  sub_100009EBC(v0 + OBJC_IVAR____TtC17SequoiaTranslator27PersonalTranslatorViewModel__deviceOwnerLocale, &qword_1003AFCE0, &qword_1002D5B00);
  sub_100009EBC(v0 + OBJC_IVAR____TtC17SequoiaTranslator27PersonalTranslatorViewModel__environmentLocale, &qword_1003AFCE0, &qword_1002D5B00);

  swift_unknownObjectRelease();
  sub_10008765C(*(v0 + OBJC_IVAR____TtC17SequoiaTranslator27PersonalTranslatorViewModel__partialTranslation), *(v0 + OBJC_IVAR____TtC17SequoiaTranslator27PersonalTranslatorViewModel__partialTranslation + 8), *(v0 + OBJC_IVAR____TtC17SequoiaTranslator27PersonalTranslatorViewModel__partialTranslation + 16), *(v0 + OBJC_IVAR____TtC17SequoiaTranslator27PersonalTranslatorViewModel__partialTranslation + 24), *(v0 + OBJC_IVAR____TtC17SequoiaTranslator27PersonalTranslatorViewModel__partialTranslation + 32));

  v1 = OBJC_IVAR____TtC17SequoiaTranslator27PersonalTranslatorViewModel_appleIntelligenceAvailbility;
  v2 = type metadata accessor for GenerativeModelsAvailability();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = OBJC_IVAR____TtC17SequoiaTranslator27PersonalTranslatorViewModel___observationRegistrar;
  v4 = type metadata accessor for ObservationRegistrar();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  return v0;
}

uint64_t sub_1001E303C()
{
  sub_1001E2D9C();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for PersonalTranslatorViewModel(uint64_t a1)
{
  result = qword_1003B6F10;
  if (!qword_1003B6F10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1001E30E8(uint64_t a1)
{
  sub_1001E3340(319, &qword_1003AE370, &type metadata accessor for Date);
  if (v1 <= 0x3F)
  {
    sub_1001E3340(319, &qword_1003B3410, &type metadata accessor for Locale);
    if (v2 <= 0x3F)
    {
      type metadata accessor for GenerativeModelsAvailability();
      if (v3 <= 0x3F)
      {
        type metadata accessor for ObservationRegistrar();
        if (v4 <= 0x3F)
        {
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

void sub_1001E3340(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
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

unint64_t sub_1001E33B8()
{
  result = qword_1003B79E0;
  if (!qword_1003B79E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B79E0);
  }

  return result;
}

void sub_1001E340C(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_100005AD4(&qword_1003B5130, &unk_1002E4220);
  v7 = __chkstk_darwin(v6 - 8);
  v71 = &v67 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v72 = &v67 - v9;
  v10 = type metadata accessor for Locale();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v67 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000085CC(a1, a1[3]);
  v74 = AnnotatedResult.displayString.getter();
  v15 = v14;
  v70 = a2;
  sub_10001F620(a2, v77, &unk_1003B9EC0, &qword_1002D7480);
  if (!v78)
  {
    sub_100009EBC(v77, &unk_1003B9EC0, &qword_1002D7480);
LABEL_6:
    v73 = 0;
    v75 = 0xE000000000000000;
    goto LABEL_7;
  }

  sub_1000085CC(v77, v78);
  v16 = dispatch thunk of TranslationResult.alternatives.getter();
  if (!*(v16 + 16))
  {

    sub_100008664(v77);
    goto LABEL_6;
  }

  sub_100031DD8(v16 + 32, v79);

  sub_1000085CC(v79, v80);
  v73 = TranslationAlternative.displayString.getter();
  v75 = v17;
  sub_100008664(v79);
  sub_100008664(v77);
LABEL_7:
  sub_1000085CC(a1, a1[3]);
  dispatch thunk of AnnotatedResult.locale.getter();
  v18 = Locale.identifier.getter();
  v20 = v19;
  (*(v11 + 8))(v13, v10);
  v21 = sub_1001D1A94(v18, v20);

  swift_getKeyPath();
  v79[0] = v3;
  sub_1001F6DA0(&qword_1003B4900, type metadata accessor for PersonalTranslatorViewModel, &unk_1002E7508);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v22 = OBJC_IVAR____TtC17SequoiaTranslator27PersonalTranslatorViewModel__currentSide;
  v23 = *(v3 + OBJC_IVAR____TtC17SequoiaTranslator27PersonalTranslatorViewModel__currentSide);
  v24 = v23 & 1;
  if (v23 != 2 && v24 != v21)
  {
    swift_getKeyPath();
    v79[0] = v3;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v25 = *(v3 + OBJC_IVAR____TtC17SequoiaTranslator27PersonalTranslatorViewModel__sessionMetrics);
    v26 = *(v25 + OBJC_IVAR____TtC17SequoiaTranslator16PTSessionMetrics_languageSwitches);
    v27 = __OFADD__(v26, 1);
    v28 = v26 + 1;
    if (v27)
    {
      __break(1u);
      goto LABEL_42;
    }

    *(v25 + OBJC_IVAR____TtC17SequoiaTranslator16PTSessionMetrics_languageSwitches) = v28;
    v23 = *(v3 + v22);
    v24 = v23 & 1;
  }

  if (v23 == 2 || v24 != v21)
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    *(&v67 - 2) = v3;
    *(&v67 - 8) = v21;
    v79[0] = v3;
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    if ((v21 & 1) == 0)
    {
      goto LABEL_14;
    }
  }

  else
  {
    *(v3 + v22) = v21;
    if ((v21 & 1) == 0)
    {
LABEL_14:
      sub_1001F4FDC();
      goto LABEL_15;
    }
  }

  v67 = 0;
  v68 = v21;
  v69 = v15;
  swift_getKeyPath();
  v79[0] = v3;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  sub_100200D54();

  swift_getKeyPath();
  v79[0] = v3;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v39 = OBJC_IVAR____TtC17SequoiaTranslator27PersonalTranslatorViewModel__firstEnvironmentPartialArrivalTime;
  swift_beginAccess();
  v40 = v72;
  sub_10001F620(v3 + v39, v72, &qword_1003B5130, &unk_1002E4220);
  v41 = type metadata accessor for Date();
  v42 = *(v41 - 8);
  v43 = (*(v42 + 48))(v40, 1, v41);
  sub_100009EBC(v40, &qword_1003B5130, &unk_1002E4220);
  if (v43 == 1)
  {
    v44 = v71;
    static Date.now.getter();
    (*(v42 + 56))(v44, 0, 1, v41);
    sub_1001D2344(v44);
  }

  swift_getKeyPath();
  v79[0] = v3;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v15 = v69;
  if (*(v3 + 80) == 1)
  {

    if (qword_1003A92B0 != -1)
    {
      swift_once();
    }

    v45 = type metadata accessor for Logger();
    sub_1000078E8(v45, qword_1003D2920);
    v46 = Logger.logObject.getter();
    v47 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      *v48 = 0;
      _os_log_impl(&_mh_execute_header, v46, v47, "Skipping handling of the environment partial since OVAD is active", v48, 2u);
    }

    return;
  }

  v58 = sub_1001F4FDC();
  LOBYTE(v21) = v68;
  if (v58)
  {
    sub_1001E4068(a1, v70);
  }

LABEL_15:
  if (sub_1001F5528())
  {
    if (qword_1003A92B0 == -1)
    {
LABEL_17:
      v29 = type metadata accessor for Logger();
      sub_1000078E8(v29, qword_1003D2920);
      v30 = Logger.logObject.getter();
      v31 = static os_log_type_t.default.getter();
      v32 = os_log_type_enabled(v30, v31);
      v33 = v74;
      if (v32)
      {
        v34 = swift_slowAlloc();
        *v34 = 0;
        _os_log_impl(&_mh_execute_header, v30, v31, "In LockScreen dimmed mode, debouncing", v34, 2u);
      }

      swift_getKeyPath();
      v79[0] = v3;
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v35 = swift_allocObject();
      swift_weakInit();
      v36 = swift_allocObject();
      *(v36 + 16) = v35;
      *(v36 + 24) = v21;
      *(v36 + 32) = v33;
      *(v36 + 40) = v15;
      v37 = v75;
      *(v36 + 48) = v73;
      *(v36 + 56) = v37;

      goto LABEL_39;
    }

LABEL_42:
    swift_once();
    goto LABEL_17;
  }

  v49 = [objc_opt_self() standardUserDefaults];
  v50 = String._bridgeToObjectiveC()();
  v51 = [v49 BOOLForKey:v50];

  swift_getKeyPath();
  if (v51)
  {
    v79[0] = v3;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v52 = *(v3 + OBJC_IVAR____TtC17SequoiaTranslator27PersonalTranslatorViewModel__lowPowerLockScreenDebouncer);
    v53 = v52[4];
    v54 = v52[5];
    v52[4] = 0;
    v52[5] = 0;

    sub_10001ABE4(v53, v54);
    if (v52[6])
    {

      Task.cancel()();
    }

    v56 = v73;
    v55 = v74;
    v52[6] = 0;

    v79[0] = v21;
    v79[1] = v55;
    v79[2] = v15;
    v80 = v56;
    v81 = v75;
    v57 = swift_getKeyPath();
    __chkstk_darwin(v57);
    *(&v67 - 2) = v3;
    *(&v67 - 1) = v79;
    v76 = v3;
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  else
  {
    v79[0] = v3;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v59 = *(v3 + OBJC_IVAR____TtC17SequoiaTranslator27PersonalTranslatorViewModel__lowPowerLockScreenDebouncer);
    v60 = v59[4];
    v61 = v59[5];
    v59[4] = 0;
    v59[5] = 0;

    sub_10001ABE4(v60, v61);
    if (v59[6])
    {

      Task.cancel()();
    }

    v62 = v74;
    v59[6] = 0;

    swift_getKeyPath();
    v79[0] = v3;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    if (*(v3 + OBJC_IVAR____TtC17SequoiaTranslator27PersonalTranslatorViewModel__partialTranslation + 16))
    {
      swift_getKeyPath();
      v79[0] = v3;
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v63 = swift_allocObject();
      swift_weakInit();
      v36 = swift_allocObject();
      *(v36 + 16) = v63;
      *(v36 + 24) = v21;
      *(v36 + 32) = v62;
      *(v36 + 40) = v15;
      v64 = v75;
      *(v36 + 48) = v73;
      *(v36 + 56) = v64;

LABEL_39:
      sub_10017DA74(sub_1001F7124, v36);

      return;
    }

    v65 = static Animation.linear.getter();
    __chkstk_darwin(v65);
    *(&v67 - 6) = v3;
    *(&v67 - 40) = v21;
    *(&v67 - 4) = v62;
    *(&v67 - 3) = v15;
    v66 = v75;
    *(&v67 - 2) = v73;
    *(&v67 - 1) = v66;
    withAnimation<A>(_:_:)();
  }
}

uint64_t sub_1001E4068(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = *v2;
  v53 = a1;
  v54 = v5;
  v6 = sub_100005AD4(&qword_1003AA3B8, &unk_1002D3EF0);
  __chkstk_darwin(v6 - 8);
  v57 = v50 - v7;
  v8 = sub_100005AD4(&qword_1003AFCE0, &qword_1002D5B00);
  __chkstk_darwin(v8 - 8);
  v10 = v50 - v9;
  v11 = type metadata accessor for Locale();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(v11);
  v55 = v50 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v56 = v50 - v15;
  if (qword_1003A92B0 != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  sub_1000078E8(v16, qword_1003D2920);
  sub_10001F620(a2, v63, &unk_1003B9EC0, &qword_1002D7480);
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.default.getter();
  v19 = os_log_type_enabled(v17, v18);
  v58 = v10;
  if (v19)
  {
    v20 = swift_slowAlloc();
    v52 = a2;
    v21 = v20;
    v51 = swift_slowAlloc();
    *&v59[0] = v51;
    *v21 = 136642819;
    sub_10001F620(v63, v61, &unk_1003B9EC0, &qword_1002D7480);
    sub_100005AD4(&unk_1003B9EC0, &qword_1002D7480);
    v22 = String.init<A>(describing:)();
    v23 = v13;
    v24 = v3;
    v25 = v12;
    v27 = v26;
    sub_100009EBC(v63, &unk_1003B9EC0, &qword_1002D7480);
    v28 = sub_10028D78C(v22, v27, v59);
    v12 = v25;
    v3 = v24;
    v13 = v23;

    *(v21 + 4) = v28;
    _os_log_impl(&_mh_execute_header, v17, v18, "TTS: enqueue stable string from: %{sensitive}s", v21, 0xCu);
    sub_100008664(v51);

    a2 = v52;
  }

  else
  {

    sub_100009EBC(v63, &unk_1003B9EC0, &qword_1002D7480);
  }

  result = sub_10024AD50(a2, 0);
  if (v30)
  {
    v31 = result;
    v32 = v30;
    sub_10001F620(a2, v63, &unk_1003B9EC0, &qword_1002D7480);
    if (!v64)
    {

      sub_100009EBC(v63, &unk_1003B9EC0, &qword_1002D7480);
      v33 = v58;
      (*(v12 + 56))(v58, 1, 1, v11);
      return sub_100009EBC(v33, &qword_1003AFCE0, &qword_1002D5B00);
    }

    v52 = v31;
    sub_1000085CC(v63, v64);
    v33 = v58;
    dispatch thunk of TranslationResult.locale.getter();
    (*(v12 + 56))(v33, 0, 1, v11);
    sub_100008664(v63);
    if ((*(v12 + 48))(v33, 1, v11) == 1)
    {

      return sub_100009EBC(v33, &qword_1003AFCE0, &qword_1002D5B00);
    }

    v34 = *(v12 + 32);
    v50[1] = v12 + 32;
    v51 = v34;
    v35 = v56;
    v34(v56, v33, v11);
    sub_100031DD8(v53, v63);
    v36 = type metadata accessor for TaskPriority();
    (*(*(v36 - 8) + 56))(v57, 1, 1, v36);
    (*(v12 + 16))(v55, v35, v11);
    sub_10001F620(v63, v61, &unk_1003AECE0, &unk_1002DA2D0);
    sub_10001F620(a2, v59, &unk_1003B9EC0, &qword_1002D7480);
    type metadata accessor for MainActor();

    v37 = static MainActor.shared.getter();
    v38 = *(v12 + 80);
    v58 = v11;
    v39 = (v38 + 48) & ~v38;
    v40 = (v13 + v39 + 7) & 0xFFFFFFFFFFFFFFF8;
    v41 = (v40 + 15) & 0xFFFFFFFFFFFFFFF8;
    v42 = v3;
    v43 = (v41 + 47) & 0xFFFFFFFFFFFFFFF8;
    v44 = swift_allocObject();
    *(v44 + 2) = v37;
    *(v44 + 3) = &protocol witness table for MainActor;
    *(v44 + 4) = v52;
    *(v44 + 5) = v32;
    v45 = v58;
    v51(&v44[v39], v55, v58);
    *&v44[v40] = v42;
    v46 = &v44[v41];
    *(v46 + 4) = v62;
    v47 = v61[1];
    *v46 = v61[0];
    *(v46 + 1) = v47;
    v48 = &v44[v43];
    v49 = v59[1];
    *v48 = v59[0];
    *(v48 + 1) = v49;
    *(v48 + 4) = v60;
    *&v44[(v43 + 47) & 0xFFFFFFFFFFFFFFF8] = v54;
    sub_10005E36C(0, 0, v57, &unk_1002E78B8, v44);

    sub_100009EBC(v63, &unk_1003AECE0, &unk_1002DA2D0);
    return (*(v12 + 8))(v56, v45);
  }

  return result;
}

double sub_1001E4740(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_getKeyPath();
  sub_1001F6DA0(&qword_1003B4900, type metadata accessor for PersonalTranslatorViewModel, &unk_1002E7508);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  return result;
}

double sub_1001E4828(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1001F6DA0(&qword_1003B4900, type metadata accessor for PersonalTranslatorViewModel, &unk_1002E7508);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return result;
}

void sub_1001E4970(char *a1, void *a2)
{
  v3 = v2;
  v49 = a2;
  v5 = sub_100005AD4(&qword_1003B5130, &unk_1002E4220);
  v6 = __chkstk_darwin(v5 - 8);
  v48 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v9 = &v45 - v8;
  v47 = type metadata accessor for Date();
  v10 = *(v47 - 8);
  v11 = __chkstk_darwin(v47);
  v13 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v46 = &v45 - v14;
  v15 = type metadata accessor for Locale();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v45 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000085CC(a1, *(a1 + 3));
  dispatch thunk of AnnotatedResult.locale.getter();
  v19 = Locale.identifier.getter();
  v21 = v20;
  (*(v16 + 8))(v18, v15);
  LOBYTE(v19) = sub_1001D1A94(v19, v21);

  if ((v19 & 1) == 0)
  {
    sub_1001F4FDC();
    goto LABEL_15;
  }

  swift_getKeyPath();
  *&v51 = v3;
  sub_1001F6DA0(&qword_1003B4900, type metadata accessor for PersonalTranslatorViewModel, &unk_1002E7508);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  sub_1002010A8();

  swift_getKeyPath();
  *&v51 = v3;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v22 = v10;
  v23 = v47;
  if (*(v3 + 80) != 1)
  {
LABEL_13:
    v34 = v48;
    (*(v22 + 56))(v48, 1, 1, v23);
    sub_1001D2344(v34);
    if (sub_1001F4FDC())
    {
      v35 = v49;
      sub_1001E517C(a1, v49);
      v36 = 0;
      goto LABEL_16;
    }

LABEL_15:
    v35 = v49;
    sub_1001DE554(a1, v49);
    v36 = 1;
LABEL_16:
    *(&v52 + 1) = &type metadata for TranslateFeatures;
    v53 = sub_100009DF8();
    LOBYTE(v51) = 11;
    v37 = isFeatureEnabled(_:)();
    sub_100008664(&v51);
    if ((v36 & 1) == 0 && (v37 & 1) == 0)
    {
      sub_1001DE554(a1, v35);
    }

    swift_getKeyPath();
    *&v51 = v3;
    sub_1001F6DA0(&qword_1003B4900, type metadata accessor for PersonalTranslatorViewModel, &unk_1002E7508);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v38 = *(v3 + OBJC_IVAR____TtC17SequoiaTranslator27PersonalTranslatorViewModel__mainDebouncer);
    v39 = v38[4];
    v40 = v38[5];
    v38[4] = 0;
    v38[5] = 0;

    sub_10001ABE4(v39, v40);
    if (v38[6])
    {

      Task.cancel()();
    }

    v38[6] = 0;

    swift_getKeyPath();
    *&v51 = v3;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v41 = *(v3 + OBJC_IVAR____TtC17SequoiaTranslator27PersonalTranslatorViewModel__lowPowerLockScreenDebouncer);
    v42 = v41[4];
    v43 = v41[5];
    v41[4] = 0;
    v41[5] = 0;

    sub_10001ABE4(v42, v43);
    if (v41[6])
    {

      Task.cancel()();
    }

    v41[6] = 0;

    v53 = 0;
    v51 = 0u;
    v52 = 0u;
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    *(&v45 - 2) = v3;
    *(&v45 - 1) = &v51;
    v50 = v3;
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    return;
  }

  swift_getKeyPath();
  *&v51 = v3;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v24 = OBJC_IVAR____TtC17SequoiaTranslator27PersonalTranslatorViewModel__firstEnvironmentPartialArrivalTime;
  swift_beginAccess();
  sub_10001F620(v3 + v24, v9, &qword_1003B5130, &unk_1002E4220);
  if ((*(v22 + 48))(v9, 1, v23) == 1)
  {
    sub_100009EBC(v9, &qword_1003B5130, &unk_1002E4220);
    goto LABEL_13;
  }

  v25 = v46;
  (*(v22 + 32))(v46, v9, v23);
  static Date.now.getter();
  Date.timeIntervalSince(_:)();
  v27 = v26;
  v28 = *(v22 + 8);
  v28(v13, v23);
  if (v27 >= 0.75)
  {
    v28(v25, v23);
    goto LABEL_13;
  }

  if (qword_1003A92B0 != -1)
  {
    swift_once();
  }

  v29 = type metadata accessor for Logger();
  sub_1000078E8(v29, qword_1003D2920);
  v30 = Logger.logObject.getter();
  v31 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    *v32 = 0;
    _os_log_impl(&_mh_execute_header, v30, v31, "Skipping handling of the environment final since OVAD is active", v32, 2u);
  }

  v28(v25, v23);
  v33 = v48;
  (*(v22 + 56))(v48, 1, 1, v23);
  sub_1001D2344(v33);
}

uint64_t sub_1001E517C(char *a1, void *a2)
{
  v3 = v2;
  v44 = a1;
  v45 = *v2;
  v5 = sub_100005AD4(&qword_1003AA3B8, &unk_1002D3EF0);
  __chkstk_darwin(v5 - 8);
  v48 = &v42 - v6;
  v7 = type metadata accessor for Locale();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v7);
  v47 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v42 - v11;
  if (qword_1003A92B0 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  sub_1000078E8(v13, qword_1003D2920);
  sub_100031DD8(a2, v54);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();
  v16 = os_log_type_enabled(v14, v15);
  v46 = v3;
  if (v16)
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v43 = v7;
    v19 = v18;
    *&v51[0] = v18;
    *v17 = 136642819;
    sub_100031DD8(v54, v53);
    sub_100005AD4(&qword_1003AC710, &unk_1002E7640);
    v20 = v12;
    v21 = String.init<A>(describing:)();
    v23 = v22;
    sub_100008664(v54);
    v24 = sub_10028D78C(v21, v23, v51);

    *(v17 + 4) = v24;
    v12 = v20;
    _os_log_impl(&_mh_execute_header, v14, v15, "TTS: enqueue final stable string from: %{sensitive}s followed by the string extractor reset", v17, 0xCu);
    sub_100008664(v19);
    v7 = v43;
  }

  else
  {

    sub_100008664(v54);
  }

  sub_1000085CC(a2, a2[3]);
  dispatch thunk of TranslationResult.locale.getter();
  sub_100031DD8(a2, v54);
  v25 = sub_10024AD50(v54, 1);
  v27 = v26;
  sub_100009EBC(v54, &unk_1003B9EC0, &qword_1002D7480);
  if (!v27)
  {
    return (*(v8 + 8))(v12, v7);
  }

  sub_100031DD8(v44, v54);
  sub_100031DD8(a2, v53);
  v28 = type metadata accessor for TaskPriority();
  (*(*(v28 - 8) + 56))(v48, 1, 1, v28);
  (*(v8 + 16))(v47, v12, v7);
  sub_10001F620(v54, v51, &unk_1003AECE0, &unk_1002DA2D0);
  sub_10001F620(v53, v49, &unk_1003B9EC0, &qword_1002D7480);
  type metadata accessor for MainActor();
  v43 = v27;

  v29 = static MainActor.shared.getter();
  v30 = v7;
  v31 = (*(v8 + 80) + 48) & ~*(v8 + 80);
  v44 = v12;
  v32 = (v9 + v31 + 7) & 0xFFFFFFFFFFFFFFF8;
  v33 = (v32 + 15) & 0xFFFFFFFFFFFFFFF8;
  v34 = (v33 + 47) & 0xFFFFFFFFFFFFFFF8;
  v35 = swift_allocObject();
  *(v35 + 2) = v29;
  *(v35 + 3) = &protocol witness table for MainActor;
  v36 = v43;
  *(v35 + 4) = v25;
  *(v35 + 5) = v36;
  (*(v8 + 32))(&v35[v31], v47, v30);
  *&v35[v32] = v46;
  v37 = &v35[v33];
  *(v37 + 4) = v52;
  v38 = v51[1];
  *v37 = v51[0];
  *(v37 + 1) = v38;
  v39 = &v35[v34];
  v40 = v49[1];
  *v39 = v49[0];
  *(v39 + 1) = v40;
  *(v39 + 4) = v50;
  *&v35[(v34 + 47) & 0xFFFFFFFFFFFFFFF8] = v45;
  sub_10005E36C(0, 0, v48, &unk_1002E7638, v35);

  sub_100009EBC(v53, &unk_1003B9EC0, &qword_1002D7480);
  sub_100009EBC(v54, &unk_1003AECE0, &unk_1002DA2D0);
  return (*(v8 + 8))(v44, v30);
}

void sub_1001E5718(uint64_t a1)
{
  if (qword_1003A92B0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_1000078E8(v2, qword_1003D2920);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    swift_errorRetain();
    v7 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v7;
    *v6 = v7;
    _os_log_impl(&_mh_execute_header, v3, v4, "Speech manager failed to translate: %@", v5, 0xCu);
    sub_100009EBC(v6, &unk_1003AECA0, &unk_1002D3F10);
  }

  sub_1001DEB90(a1);
}

double sub_1001E587C(char a1)
{
  if (*(v1 + 80) == (a1 & 1))
  {
    *(v1 + 80) = a1 & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1001F6DA0(&qword_1003B4900, type metadata accessor for PersonalTranslatorViewModel, &unk_1002E7508);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  swift_getKeyPath();
  sub_1001F6DA0(&qword_1003B4900, type metadata accessor for PersonalTranslatorViewModel, &unk_1002E7508);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  sub_1002016B8(a1 & 1);

  return result;
}

double sub_1001E5A3C()
{
  v1 = v0;
  swift_getKeyPath();
  sub_1001F6DA0(&qword_1003B4900, type metadata accessor for PersonalTranslatorViewModel, &unk_1002E7508);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v2 = OBJC_IVAR____TtC17SequoiaTranslator27PersonalTranslatorViewModel__enqueuedTranslationCount;
  v3 = *(v0 + OBJC_IVAR____TtC17SequoiaTranslator27PersonalTranslatorViewModel__enqueuedTranslationCount);
  swift_getKeyPath();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = OBJC_IVAR____TtC17SequoiaTranslator27PersonalTranslatorViewModel__lowDelayTTSTranslationResults;
  swift_beginAccess();
  v5 = *(*(v0 + v4) + 16);
  swift_getKeyPath();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v6 = OBJC_IVAR____TtC17SequoiaTranslator27PersonalTranslatorViewModel__currentSpeechRequestForTTS;
  v7 = *(v0 + OBJC_IVAR____TtC17SequoiaTranslator27PersonalTranslatorViewModel__currentSpeechRequestForTTS);
  if (v7)
  {
    v25 = v3;
    v26 = v5;
    v8 = qword_1003A92B0;
    v5 = v7;
    if (v8 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    sub_1000078E8(v9, qword_1003D2920);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 134218240;
      *(v12 + 4) = v25;
      *(v12 + 12) = 2048;
      *(v12 + 14) = v26;
      _os_log_impl(&_mh_execute_header, v10, v11, "TTS: Speaker: cancelling current speech request prior to speaker playback, enqueued request count: %ld, total: %ld", v12, 0x16u);
    }

    v13 = sub_1001D3DD0();
    dispatch thunk of DaemonSession.cancel(request:)();

    if (*(v1 + v6))
    {
      KeyPath = swift_getKeyPath();
      __chkstk_darwin(KeyPath);
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
    }

    swift_getKeyPath();
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v15 = *(*(v1 + v4) + 16);
    swift_getKeyPath();
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v16 = *(v1 + v2);
    v17 = v15 - v16;
    if (!__OFSUB__(v15, v16))
    {
      swift_getKeyPath();
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      swift_getKeyPath();
      ObservationRegistrar.willSet<A, B>(_:keyPath:)();

      swift_beginAccess();
      sub_1001E6064(v17);
      swift_endAccess();
      swift_getKeyPath();
      ObservationRegistrar.didSet<A, B>(_:keyPath:)();

      return result;
    }

    __break(1u);
LABEL_19:
    swift_once();
    goto LABEL_12;
  }

  swift_getKeyPath();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*(v0 + v2) < 1)
  {
    return result;
  }

  if (qword_1003A92B0 != -1)
  {
    goto LABEL_19;
  }

LABEL_12:
  v19 = type metadata accessor for Logger();
  sub_1000078E8(v19, qword_1003D2920);
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 134217984;
    *(v22 + 4) = v5;
    _os_log_impl(&_mh_execute_header, v20, v21, "TTS: Speaker: no current speech request prior to speaker playback but the queue has entires, count: %ld. Reseting the queue", v22, 0xCu);
  }

  if (*(v1 + v2))
  {
    v23 = swift_getKeyPath();
    __chkstk_darwin(v23);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  v24 = swift_getKeyPath();
  __chkstk_darwin(v24);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  return result;
}

unint64_t sub_1001E6064(unint64_t result)
{
  if (result)
  {
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      v2 = *(*v1 + 16);
      v3 = v2 >= result;
      result = v2 - result;
      if (v3)
      {
        return sub_1002B56C0(result, v2);
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1001E608C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[33] = a7;
  v8[34] = a8;
  v8[31] = a5;
  v8[32] = a6;
  v8[30] = a4;
  v9 = type metadata accessor for ContinuousClock();
  v8[35] = v9;
  v8[36] = *(v9 - 8);
  v8[37] = swift_task_alloc();
  v10 = type metadata accessor for Locale();
  v8[38] = v10;
  v8[39] = *(v10 - 8);
  v8[40] = swift_task_alloc();
  type metadata accessor for MainActor();
  v8[41] = static MainActor.shared.getter();
  v12 = dispatch thunk of Actor.unownedExecutor.getter();
  v8[42] = v12;
  v8[43] = v11;

  return _swift_task_switch(sub_1001E61E8, v12, v11);
}

uint64_t sub_1001E61E8()
{
  if (sub_1001DC0E8())
  {
    v1 = v0[31];

    v1(0);

    v2 = v0[1];

    return v2();
  }

  else
  {
    v4 = v0[30];
    v5 = OBJC_IVAR____TtC17SequoiaTranslator27PersonalTranslatorViewModel__inLoudspeakerTTSPlayback;
    v0[44] = OBJC_IVAR____TtC17SequoiaTranslator27PersonalTranslatorViewModel__inLoudspeakerTTSPlayback;
    if (*(v4 + v5) == 1)
    {
      *(v4 + v5) = 1;
    }

    else
    {
      swift_getKeyPath();
      v6 = swift_task_alloc();
      *(v6 + 16) = v4;
      *(v6 + 24) = 1;
      v0[10] = v4;
      sub_1001F6DA0(&qword_1003B4900, type metadata accessor for PersonalTranslatorViewModel, &unk_1002E7508);
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
    }

    sub_1001E5A3C();
    if (qword_1003A92B0 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    v0[45] = sub_1000078E8(v7, qword_1003D2920);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v8, v9, "TTS: Speaker: prepare for a new user initiated speaker playback", v10, 2u);
    }

    v0[5] = &type metadata for TranslateFeatures;
    v0[6] = sub_100009DF8();
    *(v0 + 16) = 11;
    v11 = isFeatureEnabled(_:)();
    sub_100008664(v0 + 2);
    if (v11)
    {
      v12 = v0[30];
      swift_getKeyPath();
      v0[28] = v12;
      sub_1001F6DA0(&qword_1003B4900, type metadata accessor for PersonalTranslatorViewModel, &unk_1002E7508);
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v13 = OBJC_IVAR____TtC17SequoiaTranslator27PersonalTranslatorViewModel__currentSynthesisSpeechRequestForTTS;
      v14 = *(v12 + OBJC_IVAR____TtC17SequoiaTranslator27PersonalTranslatorViewModel__currentSynthesisSpeechRequestForTTS);
      if (v14)
      {
        v15 = v14;
        v16 = sub_1001D3DD0();
        dispatch thunk of DaemonSession.cancel(request:)();

        if (*(v12 + v13))
        {
          v17 = v0[30];
          swift_getKeyPath();
          v18 = swift_task_alloc();
          *(v18 + 16) = v17;
          *(v18 + 24) = 0;
          v0[29] = v17;
          ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
        }

        else
        {
        }
      }
    }

    v0[46] = 0;
    v19 = v0[39];
    v20 = v0[40];
    v21 = v0[38];
    v22 = v0[34];
    ObjectType = swift_getObjectType();
    v0[47] = ObjectType;
    v24 = *(v22 + 72);
    v0[48] = v24;
    v0[49] = (v22 + 72) & 0xFFFFFFFFFFFFLL | 0x3CC1000000000000;
    v25 = v24();
    v27 = sub_1001F68EC(v25, v26);
    v29 = v28;

    v0[50] = v27;
    v0[51] = v29;
    v30 = *(v22 + 40);
    v0[52] = v30;
    v0[53] = (v22 + 40) & 0xFFFFFFFFFFFFLL | 0x48DE000000000000;
    v30(ObjectType, v22);
    v31 = Locale.identifier.getter();
    v33 = v32;
    v34 = *(v19 + 8);
    v0[54] = v34;
    v0[55] = (v19 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v34(v20, v21);
    sub_1001F5660(v31, v33);
    v36 = v35;

    v37 = objc_allocWithZone(type metadata accessor for SynthesisRequest());

    v38 = v36;
    v39 = SynthesisRequest.init(text:voice:)();
    v0[56] = v39;
    SynthesizingRequestProtocol.privacySensitive.setter();
    SynthesizingRequestProtocol.synthesisPriority.setter();

    v40 = v39;
    sub_1001D379C(v39);
    v41 = swift_task_alloc();
    v0[57] = v41;
    *v41 = v0;
    v41[1] = sub_1001E675C;

    return sub_1001E7FB0(v40);
  }
}

uint64_t sub_1001E675C(uint64_t a1, uint64_t a2, char a3)
{
  v4 = *v3;
  v5 = *v3;
  *(v5 + 464) = a1;
  *(v5 + 472) = a2;
  *(v5 + 592) = a3;

  v6 = *(v4 + 344);
  v7 = *(v4 + 336);

  return _swift_task_switch(sub_1001E6888, v7, v6);
}

uint64_t sub_1001E6888()
{
  v1 = *(v0 + 240);
  swift_getKeyPath();
  *(v0 + 88) = v1;
  *(v0 + 480) = OBJC_IVAR____TtC17SequoiaTranslator27PersonalTranslatorViewModel___observationRegistrar;
  *(v0 + 488) = sub_1001F6DA0(&qword_1003B4900, type metadata accessor for PersonalTranslatorViewModel, &unk_1002E7508);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v2 = OBJC_IVAR____TtC17SequoiaTranslator27PersonalTranslatorViewModel__currentSynthesisSpeechRequestForTTS;
  if (!*(v1 + OBJC_IVAR____TtC17SequoiaTranslator27PersonalTranslatorViewModel__currentSynthesisSpeechRequestForTTS))
  {

    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v12, v13, "TTS: Speaker: nil SynthesisSpeechRequest for speaker playback, most likely cancelled", v14, 2u);
    }

    v16 = *(v0 + 464);
    v15 = *(v0 + 472);
    v17 = *(v0 + 352);
    v18 = *(v0 + 240);
    v19 = *(v0 + 592);

    sub_1001F6BC4(v16, v15, v19 & 1);
    if (*(v18 + v17) != 1)
    {
      *(*(v0 + 240) + *(v0 + 352)) = 0;
LABEL_21:

      v55 = *(v0 + 8);

      return v55();
    }

    v20 = *(v0 + 240);
    swift_getKeyPath();
    v21 = swift_task_alloc();
    *(v21 + 16) = v20;
    *(v21 + 24) = 0;
    *(v0 + 96) = v20;
LABEL_19:
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    goto LABEL_21;
  }

  if (*(v0 + 592))
  {

    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, v4, "TTS: Speaker: synthesis speech request for speaker playback was not successful", v5, 2u);
    }

    v6 = *(v1 + v2);
    v8 = *(v0 + 464);
    v7 = *(v0 + 472);
    v9 = *(v0 + 448);
    if (v6)
    {
      v10 = *(v0 + 240);
      swift_getKeyPath();
      v11 = swift_task_alloc();
      *(v11 + 16) = v10;
      *(v11 + 24) = 0;
      *(v0 + 112) = v10;
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

      sub_1001F6BC4(v8, v7, 1);
    }

    else
    {
      sub_1001F6BC4(*(v0 + 464), *(v0 + 472), 1);
    }

    v52 = *(v0 + 352);
    v53 = *(v0 + 240);
    if ((*(v53 + v52) & 1) == 0)
    {
      *(v53 + v52) = 0;
      goto LABEL_21;
    }

    swift_getKeyPath();
    v54 = swift_task_alloc();
    *(v54 + 16) = v53;
    *(v54 + 24) = 0;
    *(v0 + 104) = v53;
    goto LABEL_19;
  }

  v22 = *(v0 + 472);
  v62 = *(v0 + 464);
  v23 = *(v0 + 368);
  v60 = *(v0 + 376);
  v61 = *(v0 + 384);
  v59 = *(v0 + 272);
  v63 = *(v0 + 248);
  v24 = *(v0 + 240);
  swift_getKeyPath();
  v25 = swift_task_alloc();
  *(v25 + 16) = v24;
  *(v25 + 24) = 0;
  *(v0 + 120) = v24;

  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  v66 = v23;

  v26 = v61(v60, v59);
  v28 = v27;
  type metadata accessor for PlaybackRenderingSegment();
  v29 = swift_allocObject();
  *(v29 + 144) = 1;
  *(v29 + 16) = v26;
  *(v29 + 24) = v28;
  *(v29 + 32) = v22;
  *(v29 + 40) = v62;
  *(v29 + 48) = 0u;
  *(v29 + 64) = 0u;
  *(v29 + 80) = 0u;
  *(v29 + 96) = 0u;
  *(v29 + 112) = 0u;
  *(v29 + 128) = xmmword_1002E7260;

  v63(v29);

  v30 = Logger.logObject.getter();
  v31 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    *v32 = 0;
    _os_log_impl(&_mh_execute_header, v30, v31, "TTS: Speaker: scheduling speaker TTS playback", v32, 2u);
  }

  v33 = *(v0 + 432);
  v34 = *(v0 + 416);
  v35 = *(v0 + 376);
  v64 = v35;
  v36 = *(v0 + 320);
  v37 = *(v0 + 304);
  v38 = *(v0 + 264);
  v39 = *(v0 + 272);
  v65 = *(v0 + 240);

  v40 = v38;
  v34(v35, v39);
  v41 = Locale.identifier.getter();
  v43 = v42;
  v33(v36, v37);
  sub_1001F5660(v41, v43);
  v45 = v44;

  v46 = objc_allocWithZone(type metadata accessor for SpeechRequest());

  v47 = v45;
  v48 = SpeechRequest.init(text:voice:)();
  *(v0 + 496) = v48;
  SynthesizingRequestProtocol.privacySensitive.setter();
  SynthesizingRequestProtocol.synthesisPriority.setter();

  v49 = dispatch thunk of SpeechRequest.synthesisContext.getter();
  (*(v39 + 96))(v64, v39);
  dispatch thunk of SynthesisContext.rate.setter();

  v48;
  sub_1001D3958(v48);
  swift_getKeyPath();
  v50 = swift_task_alloc();
  v50[2] = v65;
  v50[3] = v40;
  v50[4] = v39;
  *(v0 + 128) = v65;
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  v51 = *(*(*(v65 + 32) + OBJC_IVAR____TtC17SequoiaTranslator13SpeechManager_recordingHelper) + OBJC_IVAR____TtC17SequoiaTranslator15RecordingHelper_auxiliaryAudioSession);
  if (v51)
  {
    [v51 opaqueSessionID];
  }

  if (qword_1003A9170 != -1)
  {
    swift_once();
  }

  v57 = qword_1003D2470;
  *(v0 + 504) = qword_1003D2470;
  swift_getKeyPath();
  *(v0 + 512) = OBJC_IVAR____TtC17SequoiaTranslator17AudioRouteManager___observationRegistrar;
  *(v0 + 136) = v57;
  *(v0 + 520) = sub_1001F6DA0(&qword_1003AA3A0, type metadata accessor for AudioRouteManager, &unk_1002D3BF4);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  AudibleRequestProtocol.audioSessionId.setter();
  if (*(v57 + 88) == 1)
  {
    sub_100018B30(1);
    *(v57 + 88) = 1;
  }

  else
  {
    swift_getKeyPath();
    v58 = swift_task_alloc();
    *(v58 + 16) = v57;
    *(v58 + 24) = 1;
    *(v0 + 144) = v57;
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  *(v0 + 528) = v66;
  *(v0 + 536) = sub_1001D3DD0();

  return _swift_task_switch(sub_1001E71F0, 0, 0);
}

uint64_t sub_1001E71F0()
{
  v1 = v0[67];
  v2 = v0[62];
  v3 = swift_task_alloc();
  v0[68] = v3;
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;
  v4 = swift_task_alloc();
  v0[69] = v4;
  v5 = sub_100005AD4(&unk_1003AECD0, &qword_1002DA230);
  *v4 = v0;
  v4[1] = sub_1001E72FC;

  return withCheckedContinuation<A>(isolation:function:_:)(v0 + 19, 0, 0, 0xD000000000000015, 0x80000001002F96C0, sub_1001F8C7C, v3, v5);
}

uint64_t sub_1001E72FC()
{

  return _swift_task_switch(sub_1001E7414, 0, 0);
}

uint64_t sub_1001E7414()
{
  *(v0 + 560) = *(v0 + 152);
  v1 = *(v0 + 336);
  v2 = *(v0 + 344);

  return _swift_task_switch(sub_1001E7480, v1, v2);
}

uint64_t sub_1001E7480()
{
  v40 = v0;
  v1 = v0[30];
  v2 = OBJC_IVAR____TtC17SequoiaTranslator27PersonalTranslatorViewModel__currentLoudspeakerSpeechRequestForTTS;
  v0[71] = OBJC_IVAR____TtC17SequoiaTranslator27PersonalTranslatorViewModel__currentLoudspeakerSpeechRequestForTTS;
  if (*(v1 + v2))
  {
    swift_getKeyPath();
    v3 = swift_task_alloc();
    *(v3 + 16) = v1;
    *(v3 + 24) = 0;
    v0[27] = v1;
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    v1 = v0[30];
  }

  v37 = v0[70];
  v5 = v0[58];
  v4 = v0[59];
  swift_getKeyPath();
  v6 = swift_task_alloc();
  v6[3] = 0;
  v6[4] = 0;
  v6[2] = v1;
  v0[20] = v1;
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  sub_1001F6BC4(v5, v4, 0);

  if (v37)
  {
    swift_errorRetain();
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v39 = v10;
      *v9 = 136315138;

      swift_getErrorValue();
      v11 = Error.localizedDescription.getter();
      v13 = sub_10028D78C(v11, v12, &v39);

      *(v9 + 4) = v13;
      _os_log_impl(&_mh_execute_header, v7, v8, "TTS: Speaker: finished speaker TTS playback with error: %s", v9, 0xCu);
      sub_100008664(v10);
    }

    else
    {
    }

    v23 = static Duration.seconds(_:)();
    v25 = v24;
    static Clock<>.continuous.getter();
    v26 = swift_task_alloc();
    v0[72] = v26;
    *v26 = v0;
    v26[1] = sub_1001E7A18;

    return sub_1001F2A0C(v23, v25, 1000000000000000, 0, 0);
  }

  else
  {

    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&_mh_execute_header, v14, v15, "TTS: Speaker: finished speaker TTS playback", v16, 2u);
    }

    v17 = v0[63];

    if (*(v17 + 88))
    {
      v18 = v0[63];
      v19 = v0[62];
      v21 = v0[58];
      v20 = v0[59];
      v38 = v0[56];
      swift_getKeyPath();
      v22 = swift_task_alloc();
      *(v22 + 16) = v18;
      *(v22 + 24) = 0;
      v0[22] = v18;
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

      sub_1001F6BC4(v21, v20, 0);
    }

    else
    {
      v29 = v0[62];
      v28 = v0[63];
      v31 = v0[58];
      v30 = v0[59];
      v32 = v0[56];
      sub_100018B30(0);

      sub_1001F6BC4(v31, v30, 0);
      *(v28 + 88) = 0;
    }

    v33 = v0[44];
    v34 = v0[30];
    if (*(v34 + v33) == 1)
    {
      swift_getKeyPath();
      v35 = swift_task_alloc();
      *(v35 + 16) = v34;
      *(v35 + 24) = 0;
      v0[21] = v34;
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
    }

    else
    {
      *(v34 + v33) = 0;
    }

    v36 = v0[1];

    return v36();
  }
}

uint64_t sub_1001E7A18()
{
  v2 = *v1;
  *(*v1 + 584) = v0;

  (*(v2[36] + 8))(v2[37], v2[35]);
  v3 = v2[43];
  v4 = v2[42];
  if (v0)
  {
    v5 = sub_1001E7E4C;
  }

  else
  {
    v5 = sub_1001E7BA0;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_1001E7BA0()
{
  v1 = *(v0 + 568);
  v2 = *(v0 + 240);

  swift_getKeyPath();
  *(v0 + 192) = v2;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*(v2 + v1))
  {
    v3 = *(v0 + 496);
    v5 = *(v0 + 464);
    v4 = *(v0 + 472);

    sub_1001F6BC4(v5, v4, 0);
  }

  else
  {
    v6 = *(v0 + 504);
    if (*(v6 + 88))
    {
      v7 = *(v0 + 496);
      v18 = *(v0 + 464);
      v19 = *(v0 + 472);
      v20 = *(v0 + 448);
      swift_getKeyPath();
      v8 = swift_task_alloc();
      *(v8 + 16) = v6;
      *(v8 + 24) = 0;
      *(v0 + 200) = v6;
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

      sub_1001F6BC4(v18, v19, 0);
    }

    else
    {
      v9 = *(v0 + 496);
      v11 = *(v0 + 464);
      v10 = *(v0 + 472);
      v12 = *(v0 + 448);
      sub_100018B30(0);

      sub_1001F6BC4(v11, v10, 0);
      *(v6 + 88) = 0;
    }
  }

  v13 = *(v0 + 352);
  v14 = *(v0 + 240);
  if (*(v14 + v13) == 1)
  {
    swift_getKeyPath();
    v15 = swift_task_alloc();
    *(v15 + 16) = v14;
    *(v15 + 24) = 0;
    *(v0 + 168) = v14;
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  else
  {
    *(v14 + v13) = 0;
  }

  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_1001E7E4C()
{
  v1 = *(v0 + 496);
  v3 = *(v0 + 464);
  v2 = *(v0 + 472);
  v4 = *(v0 + 352);
  v5 = *(v0 + 240);

  sub_1001F6BC4(v3, v2, 0);

  if (*(v5 + v4) == 1)
  {
    v6 = *(v0 + 240);
    swift_getKeyPath();
    v7 = swift_task_alloc();
    *(v7 + 16) = v6;
    *(v7 + 24) = 0;
    *(v0 + 184) = v6;
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  else
  {
    *(*(v0 + 240) + *(v0 + 352)) = 0;
  }

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_1001E7FB0(uint64_t a1)
{
  *(v2 + 128) = a1;
  *(v2 + 136) = v1;
  return _swift_task_switch(sub_1001E7FD0, 0, 0);
}

uint64_t sub_1001E7FD0()
{
  v1 = v0[16];
  v2 = swift_allocObject();
  v0[18] = v2;
  *(v2 + 16) = 0;
  v3 = swift_allocObject();
  v0[19] = v3;
  *(v3 + 16) = _swiftEmptyArrayStorage;
  type metadata accessor for SynthesisRequest();

  SynthesizingRequestProtocol.didGenerateAudio.setter();

  SynthesizingRequestProtocol.didGenerateWordTimings.setter();
  v4 = sub_1001D3DD0();
  v0[20] = v4;
  v5 = swift_task_alloc();
  v0[21] = v5;
  *(v5 + 16) = v4;
  *(v5 + 24) = v1;
  v6 = swift_task_alloc();
  v0[22] = v6;
  v7 = sub_100005AD4(&unk_1003AECD0, &qword_1002DA230);
  *v6 = v0;
  v6[1] = sub_1001E8198;

  return withCheckedContinuation<A>(isolation:function:_:)(v0 + 14, 0, 0, 0xD000000000000014, 0x80000001002F96A0, sub_1001F6C84, v5, v7);
}

uint64_t sub_1001E8198()
{

  return _swift_task_switch(sub_1001E82B0, 0, 0);
}

uint64_t sub_1001E82B0()
{
  v24 = v0;

  v1 = *(v0 + 112);
  if (v1)
  {
    if (qword_1003A92B0 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_1000078E8(v2, qword_1003D2920);
    swift_errorRetain();
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v23 = v6;
      *v5 = 136315138;

      swift_getErrorValue();
      v7 = Error.localizedDescription.getter();
      v9 = sub_10028D78C(v7, v8, &v23);

      *(v5 + 4) = v9;
      _os_log_impl(&_mh_execute_header, v3, v4, "TTS: playback error: %s", v5, 0xCu);
      sub_100008664(v6);
    }

    else
    {
    }

    v17 = 0;
    v18 = v1;
  }

  else
  {
    if (qword_1003A92B0 != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    sub_1000078E8(v10, qword_1003D2920);

    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.info.getter();
    v13 = os_log_type_enabled(v11, v12);
    v14 = *(v0 + 144);
    if (v13)
    {
      v15 = swift_slowAlloc();
      *v15 = 134217984;
      swift_beginAccess();
      v16 = *(v14 + 16);

      *(v15 + 4) = v16;
      _os_log_impl(&_mh_execute_header, v11, v12, "TTS: synthesizeTTSAudio totalDuration: %f", v15, 0xCu);
    }

    else
    {
    }

    v20 = *(v0 + 144);
    v19 = *(v0 + 152);

    swift_beginAccess();
    v18 = *(v20 + 16);
    swift_beginAccess();
    v17 = *(v19 + 16);
  }

  v21 = *(v0 + 8);

  return v21(v18, v17, v1 != 0);
}

uint64_t sub_1001E85F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[127] = v15;
  v8[126] = a8;
  v8[125] = a7;
  v8[124] = a6;
  v8[123] = a5;
  v8[122] = a4;
  sub_100005AD4(&qword_1003B79F0, &qword_1002EEC90);
  v8[128] = swift_task_alloc();
  v9 = sub_100005AD4(&qword_1003BBDA0, &qword_1002E7650);
  v8[129] = v9;
  v8[130] = *(v9 - 8);
  v8[131] = swift_task_alloc();
  v8[132] = swift_task_alloc();
  v8[133] = swift_task_alloc();
  v8[134] = sub_100005AD4(&qword_1003B79F8, &qword_1002E7658);
  v8[135] = swift_task_alloc();
  v8[136] = swift_task_alloc();
  v8[137] = swift_task_alloc();
  v10 = type metadata accessor for Locale();
  v8[138] = v10;
  v8[139] = *(v10 - 8);
  v8[140] = swift_task_alloc();
  v8[141] = swift_task_alloc();
  v8[142] = swift_task_alloc();
  v8[143] = swift_task_alloc();
  type metadata accessor for MainActor();
  v8[144] = static MainActor.shared.getter();
  v12 = dispatch thunk of Actor.unownedExecutor.getter();
  v8[145] = v12;
  v8[146] = v11;

  return _swift_task_switch(sub_1001E8834, v12, v11);
}

void sub_1001E8834()
{
  v301 = v0;
  if (qword_1003A92B0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 1144);
  v2 = *(v0 + 1112);
  v3 = *(v0 + 1104);
  v4 = *(v0 + 992);
  v5 = type metadata accessor for Logger();
  *(v0 + 1176) = sub_1000078E8(v5, qword_1003D2920);
  v6 = *(v2 + 16);
  *(v0 + 1184) = v6;
  *(v0 + 1192) = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v287 = v6;
  v6(v1, v4, v3);

  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();

  v9 = os_log_type_enabled(v7, v8);
  v10 = *(v0 + 1144);
  v11 = *(v0 + 1112);
  v12 = *(v0 + 1104);
  if (v9)
  {
    v13 = *(v0 + 984);
    v14 = *(v0 + 976);
    v15 = swift_slowAlloc();
    v300[0] = swift_slowAlloc();
    *v15 = 136643075;
    *(v15 + 4) = sub_10028D78C(v14, v13, v300);
    *(v15 + 12) = 2080;
    v16 = Locale.debugDescription.getter();
    v18 = v17;
    v19 = *(v11 + 8);
    v19(v10, v12);
    v20 = sub_10028D78C(v16, v18, v300);

    *(v15 + 14) = v20;
    _os_log_impl(&_mh_execute_header, v7, v8, "TTS: FarField: appending new low delay TTS translationResult: %{sensitive}s. Locale: %s", v15, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    v19 = *(v11 + 8);
    v19(v10, v12);
  }

  *(v0 + 1200) = v19;
  v21 = *(v0 + 1000);
  swift_getKeyPath();
  *(v0 + 1208) = OBJC_IVAR____TtC17SequoiaTranslator27PersonalTranslatorViewModel___observationRegistrar;
  *(v0 + 584) = v21;
  *(v0 + 1216) = sub_1001F6DA0(&qword_1003B4900, type metadata accessor for PersonalTranslatorViewModel, &unk_1002E7508);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*(v21 + OBJC_IVAR____TtC17SequoiaTranslator27PersonalTranslatorViewModel__inLoudspeakerTTSPlayback))
  {
    v22 = *(v0 + 1120);
    v23 = *(v0 + 1104);
    v24 = *(v0 + 992);

    v287(v22, v24, v23);

    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.default.getter();

    v27 = os_log_type_enabled(v25, v26);
    v28 = *(v0 + 1120);
    v29 = *(v0 + 1104);
    if (v27)
    {
      v30 = *(v0 + 984);
      v296 = v19;
      v31 = *(v0 + 976);
      v32 = swift_slowAlloc();
      v300[0] = swift_slowAlloc();
      *v32 = 136643075;
      *(v32 + 4) = sub_10028D78C(v31, v30, v300);
      *(v32 + 12) = 2080;
      v33 = Locale.debugDescription.getter();
      v35 = v34;
      v296(v28, v29);
      v36 = sub_10028D78C(v33, v35, v300);

      *(v32 + 14) = v36;
      _os_log_impl(&_mh_execute_header, v25, v26, "TTS: FarField: speaker request in progress. Drop new low delay TTS translationResult: %{sensitive}s. Locale: %s", v32, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      v19(v28, v29);
    }

LABEL_25:

    v100 = *(v0 + 8);

    v100();
    return;
  }

  v37 = *(v0 + 1096);
  v38 = *(v0 + 1072);
  v279 = *(v0 + 1016);
  v276 = *(v0 + 1104);
  v277 = *(v0 + 1008);
  v39 = *(v0 + 1000);
  v40 = *(v0 + 992);
  v41 = *(v0 + 984);
  v42 = *(v0 + 976);
  swift_getKeyPath();
  *(v0 + 960) = v39;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v43 = OBJC_IVAR____TtC17SequoiaTranslator27PersonalTranslatorViewModel__lowDelayTTSTranslationResults;
  *(v0 + 1224) = OBJC_IVAR____TtC17SequoiaTranslator27PersonalTranslatorViewModel__lowDelayTTSTranslationResults;
  swift_beginAccess();
  v285 = v43;
  v275 = *(*(v39 + v43) + 16);
  v44 = v38[12];
  v45 = v38[16];
  v46 = v38[20];
  *v37 = v42;
  v37[1] = v41;
  v287(v37 + v44, v40, v276);
  sub_10001F620(v277, v37 + v45, &unk_1003AECE0, &unk_1002DA2D0);
  sub_10001F620(v279, v37 + v46, &unk_1003B9EC0, &qword_1002D7480);
  swift_getKeyPath();
  *(v0 + 904) = v39;

  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v47 = OBJC_IVAR____TtC17SequoiaTranslator27PersonalTranslatorViewModel__willPlayTTSMessage;
  *(v0 + 1232) = OBJC_IVAR____TtC17SequoiaTranslator27PersonalTranslatorViewModel__willPlayTTSMessage;
  v288 = v39;
  if (*(v39 + v47) == 1 && (v48 = *(v0 + 1000), swift_getKeyPath(), *(v0 + 920) = v48, ObservationRegistrar.access<A, B>(_:keyPath:)(), , v49 = OBJC_IVAR____TtC17SequoiaTranslator27PersonalTranslatorViewModel__enqueuedTranslationCount, v50 = *(v48 + OBJC_IVAR____TtC17SequoiaTranslator27PersonalTranslatorViewModel__enqueuedTranslationCount), swift_getKeyPath(), *(v0 + 928) = v48, ObservationRegistrar.access<A, B>(_:keyPath:)(), , *(*(v288 + v285) + 16) >= v50))
  {
    v76 = *(v0 + 1112);
    v77 = *(v0 + 1088);
    v78 = *(v0 + 1064);
    v79 = *(v0 + 1032);
    v278 = *(v0 + 1000);
    v281 = *(v0 + 1104);
    sub_10001F620(*(v0 + 1096), v77, &qword_1003B79F8, &qword_1002E7658);
    v80 = *(v77 + 1);
    v81 = v38[12];
    v82 = &v77[v38[16]];
    v83 = &v77[v38[20]];
    v84 = v79[12];
    v85 = &v78[v79[16]];
    v86 = &v78[v79[20]];
    *v78 = *v77;
    *(v78 + 1) = v80;
    v87 = v281;
    v282 = *(v76 + 32);
    v282(&v78[v84], &v77[v81], v87);
    v88 = *(v82 + 4);
    v89 = *(v82 + 1);
    *v85 = *v82;
    *(v85 + 1) = v89;
    *(v85 + 4) = v88;
    v91 = *v83;
    v90 = *(v83 + 1);
    *(v86 + 4) = *(v83 + 4);
    *v86 = v91;
    *(v86 + 1) = v90;
    swift_getKeyPath();
    *(v0 + 936) = v278;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v92 = *(v48 + v49);
    swift_getKeyPath();
    *(v0 + 944) = v278;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    *(v0 + 952) = v278;
    swift_getKeyPath();
    ObservationRegistrar.willSet<A, B>(_:keyPath:)();

    swift_beginAccess();
    if (*(*(v288 + v285) + 16) < v92)
    {
LABEL_92:
      __break(1u);
      goto LABEL_93;
    }

    if (v92 < 0)
    {
LABEL_93:
      __break(1u);
      goto LABEL_94;
    }

    v93 = *(v0 + 1024);
    v94 = *(v0 + 1000);
    sub_100023BD4(*(v0 + 1064), v93, &qword_1003BBDA0, &qword_1002E7650);
    sub_1002B4738(v92, v92, v93);
    swift_endAccess();
    *(v0 + 592) = v94;
    v75 = v282;
  }

  else
  {
    v51 = *(v0 + 1112);
    v52 = *(v0 + 1104);
    v53 = *(v0 + 1080);
    v54 = *(v0 + 1056);
    v55 = *(v0 + 1032);
    v56 = *(v0 + 1000);
    sub_10001F620(*(v0 + 1096), v53, &qword_1003B79F8, &qword_1002E7658);
    v57 = *(v53 + 1);
    v58 = v38[12];
    v59 = &v53[v38[16]];
    v60 = &v53[v38[20]];
    v61 = v55[12];
    v62 = &v54[v55[16]];
    v63 = &v54[v55[20]];
    *v54 = *v53;
    *(v54 + 1) = v57;
    v280 = *(v51 + 32);
    v280(&v54[v61], &v53[v58], v52);
    v64 = *(v59 + 4);
    v65 = *(v59 + 1);
    *v62 = *v59;
    *(v62 + 1) = v65;
    *(v62 + 4) = v64;
    v67 = *v60;
    v66 = *(v60 + 1);
    *(v63 + 4) = *(v60 + 4);
    *v63 = v67;
    *(v63 + 1) = v66;
    swift_getKeyPath();
    *(v0 + 800) = v56;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    *(v0 + 792) = v56;
    swift_getKeyPath();
    ObservationRegistrar.willSet<A, B>(_:keyPath:)();

    swift_beginAccess();
    v68 = *(v288 + v285);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v288 + v285) = v68;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v68 = sub_10028D010(0, v68[2] + 1, 1, v68);
      *(v288 + v285) = v68;
    }

    v71 = v68[2];
    v70 = v68[3];
    if (v71 >= v70 >> 1)
    {
      v68 = sub_10028D010((v70 > 1), v71 + 1, 1, v68);
    }

    v72 = *(v0 + 1056);
    v73 = *(v0 + 1040);
    v74 = *(v0 + 1000);
    v68[2] = v71 + 1;
    sub_100023BD4(v72, v68 + ((*(v73 + 80) + 32) & ~*(v73 + 80)) + *(v73 + 72) * v71, &qword_1003BBDA0, &qword_1002E7650);
    *(v288 + v285) = v68;
    swift_endAccess();
    *(v0 + 784) = v74;
    v75 = v280;
  }

  swift_getKeyPath();
  ObservationRegistrar.didSet<A, B>(_:keyPath:)();

  *(v0 + 1240) = v75;

  v95 = Logger.logObject.getter();
  v96 = static os_log_type_t.debug.getter();
  v97 = os_log_type_enabled(v95, v96);
  v98 = *(v0 + 1000);
  if (v97)
  {
    v99 = swift_slowAlloc();
    *v99 = 134217984;
    swift_getKeyPath();
    *(v0 + 912) = v98;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    *(v99 + 4) = *(v98 + OBJC_IVAR____TtC17SequoiaTranslator27PersonalTranslatorViewModel__enqueuedTranslationCount);

    _os_log_impl(&_mh_execute_header, v95, v96, "TTS: FarField: enqueuedTranslations before loop: %ld", v99, 0xCu);
  }

  else
  {
  }

  if (v275)
  {
    sub_100009EBC(*(v0 + 1096), &qword_1003B79F8, &qword_1002E7658);

    goto LABEL_25;
  }

  v101 = *(v0 + 1000);
  *(v0 + 1248) = OBJC_IVAR____TtC17SequoiaTranslator27PersonalTranslatorViewModel__enqueuedTranslationCount;
  *(v0 + 1256) = OBJC_IVAR____TtC17SequoiaTranslator27PersonalTranslatorViewModel__currentSynthesisSpeechRequestForTTS;
  *(v0 + 1264) = OBJC_IVAR____TtC17SequoiaTranslator27PersonalTranslatorViewModel__sessionMetrics;
  *(v0 + 1272) = OBJC_IVAR____TtC17SequoiaTranslator27PersonalTranslatorViewModel__currentSpeechRequestForTTS;
  v102 = *(v0 + 1224);
  *(v0 + 568) = 0;
  *(v0 + 576) = 0xE000000000000000;
  swift_getKeyPath();
  *(v0 + 776) = v101;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v103 = *(v101 + v102);
  if (!*(v103 + 16))
  {
    __break(1u);
    goto LABEL_90;
  }

  v104 = *(v0 + 1240);
  v292 = *(v0 + 1224);
  v105 = *(v0 + 1136);
  v106 = *(v0 + 1104);
  v107 = *(v0 + 1064);
  v108 = *(v0 + 1032);
  v109 = *(v0 + 1000);
  v110 = *(*(v0 + 1040) + 80);
  v297 = (v110 + 32) & ~v110;
  sub_10001F620(v103 + v297, v107, &qword_1003BBDA0, &qword_1002E7650);

  v111 = v108[12];
  v112 = v108[16];
  v113 = v108[20];
  v104(v105, v107 + v111, v106);
  sub_100009EBC(v107 + v113, &unk_1003B9EC0, &qword_1002D7480);
  sub_100009EBC(v107 + v112, &unk_1003AECE0, &unk_1002DA2D0);
  swift_getKeyPath();
  *(v0 + 768) = v109;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v114 = *(v109 + v292);
  if (!*(v114 + 16))
  {
LABEL_90:
    __break(1u);
    goto LABEL_91;
  }

  v293 = *(v0 + 1224);
  v115 = *(v0 + 1200);
  v116 = *(v0 + 1104);
  v117 = *(v0 + 1064);
  v118 = *(v0 + 1032);
  v119 = *(v0 + 1000);
  v120 = *(v0 + 1112) + 8;
  sub_10001F620(v114 + v297, v117, &qword_1003BBDA0, &qword_1002E7650);

  v121 = v118[12];
  v122 = v117 + v118[16];
  v123 = v118[20];
  v124 = *v122;
  v125 = *(v122 + 16);
  *(v0 + 208) = *(v122 + 32);
  *(v0 + 176) = v124;
  *(v0 + 192) = v125;
  sub_100009EBC(v117 + v123, &unk_1003B9EC0, &qword_1002D7480);
  *(v0 + 1280) = v120 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v115(v117 + v121, v116);
  swift_getKeyPath();
  *(v0 + 712) = v119;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v126 = *(v119 + v293);
  if (!*(v126 + 16))
  {
LABEL_91:
    __break(1u);
    goto LABEL_92;
  }

  v294 = *(v0 + 1232);
  v127 = *(v0 + 1200);
  v128 = *(v0 + 1104);
  v129 = *(v0 + 1064);
  v130 = *(v0 + 1032);
  v131 = *(v0 + 1000);
  sub_10001F620(v126 + v297, v129, &qword_1003BBDA0, &qword_1002E7650);

  v132 = v130[12];
  v133 = v130[16];
  v134 = v129 + v130[20];
  v135 = *v134;
  v136 = *(v134 + 16);
  *(v0 + 248) = *(v134 + 32);
  *(v0 + 232) = v136;
  *(v0 + 216) = v135;
  sub_100009EBC(v129 + v133, &unk_1003AECE0, &unk_1002DA2D0);
  v127(v129 + v132, v128);
  swift_getKeyPath();
  *(v0 + 656) = v131;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  LODWORD(v128) = *(v131 + v294);
  swift_getKeyPath();
  v295 = v0;
  if (v128 == 1)
  {
    v137 = *(v0 + 1224);
    v138 = *(v0 + 1000);
    *(v0 + 880) = v138;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    if (!*(*(v138 + v137) + 16))
    {

      v168 = Logger.logObject.getter();
      v169 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v168, v169))
      {
        v170 = swift_slowAlloc();
        *v170 = 0;
        _os_log_impl(&_mh_execute_header, v168, v169, "TTS: FarField: lowDelayTTSTranslationResults was emptied", v170, 2u);
      }

      v171 = *(v0 + 1200);
      v172 = *(v0 + 1136);
      v173 = *(v0 + 1104);
      v174 = *(v0 + 1096);

      sub_100009EBC(v0 + 216, &unk_1003B9EC0, &qword_1002D7480);
      sub_100009EBC(v0 + 176, &unk_1003AECE0, &unk_1002DA2D0);
      v171(v172, v173);
      sub_100009EBC(v174, &qword_1003B79F8, &qword_1002E7658);
      goto LABEL_25;
    }

    v139 = *(v0 + 1000);
    if (*(v139 + *(v0 + 1248)) != 1)
    {
      swift_getKeyPath();
      v175 = swift_task_alloc();
      *(v175 + 16) = v139;
      *(v175 + 24) = 1;
      *(v0 + 888) = v139;
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

      v139 = *(v0 + 1000);
    }

    v176 = *(v0 + 1224);
    swift_getKeyPath();
    *(v0 + 896) = v139;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v177 = *(v139 + v176);
    if (*(v177 + 16))
    {
      v178 = *(v0 + 1200);
      v179 = *(v0 + 1104);
      v180 = *(v0 + 1064);
      v181 = *(v0 + 1032);
      sub_10001F620(v177 + v297, v180, &qword_1003BBDA0, &qword_1002E7650);
      v165 = *v180;
      v167 = v180[1];
      v182 = v181[12];
      v183 = v181[16];
      v184 = v181[20];
      swift_beginAccess();
      *(v0 + 568) = v165;
      *(v0 + 576) = v167;
      sub_100009EBC(v180 + v184, &unk_1003B9EC0, &qword_1002D7480);
      sub_100009EBC(v180 + v183, &unk_1003AECE0, &unk_1002DA2D0);
      v178(v180 + v182, v179);
      goto LABEL_50;
    }

LABEL_94:
    __break(1u);
LABEL_95:
    __break(1u);
    goto LABEL_96;
  }

  v140 = *(v0 + 1248);
  v141 = *(v0 + 1224);
  v142 = *(v0 + 1000);
  *(v0 + 648) = v142;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v143 = *(*(v142 + v141) + 16);
  if (*(v142 + v140) != v143)
  {
    v144 = *(v0 + 1000);
    swift_getKeyPath();
    v145 = swift_task_alloc();
    *(v145 + 16) = v144;
    *(v145 + 24) = v143;
    *(v0 + 640) = v144;
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  v146 = *(v0 + 1224);
  v147 = *(v0 + 1000);
  swift_getKeyPath();
  *(v0 + 624) = v147;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v148 = *(v147 + v146);
  v149 = *(v148 + 16);
  v150 = _swiftEmptyArrayStorage;
  if (v149)
  {
    v151 = *(v0 + 1040);
    *(v0 + 600) = _swiftEmptyArrayStorage;

    v283 = (v0 + 600);
    sub_1000C4B4C(0, v149, 0);
    v150 = *(v0 + 600);
    v152 = v148 + v297;
    v289 = *(v151 + 72);
    do
    {
      v153 = *(v0 + 1200);
      v154 = *(v0 + 1104);
      v155 = *(v0 + 1064);
      v156 = *(v0 + 1048);
      v157 = *(v0 + 1032);
      sub_10001F620(v152, v155, &qword_1003BBDA0, &qword_1002E7650);
      sub_100023BD4(v155, v156, &qword_1003BBDA0, &qword_1002E7650);
      v158 = *v156;
      v298 = v156[1];
      v159 = v157[12];
      v160 = v157[16];
      sub_100009EBC(v156 + v157[20], &unk_1003B9EC0, &qword_1002D7480);
      sub_100009EBC(v156 + v160, &unk_1003AECE0, &unk_1002DA2D0);
      v161 = v156 + v159;
      v0 = v295;
      v153(v161, v154);
      *(v295 + 600) = v150;
      v163 = v150[2];
      v162 = v150[3];
      if (v163 >= v162 >> 1)
      {
        sub_1000C4B4C((v162 > 1), v163 + 1, 1);
        v150 = *v283;
      }

      v150[2] = v163 + 1;
      v164 = &v150[2 * v163];
      v164[4] = v158;
      v164[5] = v298;
      v152 += v289;
      --v149;
    }

    while (v149);
  }

  *(v0 + 968) = v150;
  sub_100005AD4(&qword_1003A95C0, &qword_1002D1A10);
  sub_10001BAEC(&qword_1003A95C8, &qword_1003A95C0, &qword_1002D1A10, &protocol conformance descriptor for [A]);
  v165 = BidirectionalCollection<>.joined(separator:)();
  v167 = v166;

  swift_beginAccess();
  *(v0 + 568) = v165;
  *(v0 + 576) = v167;
LABEL_50:
  *(v0 + 1296) = v165;
  *(v0 + 1288) = v167;

  v185 = Logger.logObject.getter();
  v186 = static os_log_type_t.debug.getter();
  v299 = v167;
  if (os_log_type_enabled(v185, v186))
  {
    v187 = *(v295 + 1248);
    v188 = *(v295 + 1000);
    v189 = swift_slowAlloc();
    *v189 = 134217984;
    swift_getKeyPath();
    *(v295 + 872) = v188;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v190 = *(v188 + v187);
    v0 = v295;
    *(v189 + 4) = v190;

    _os_log_impl(&_mh_execute_header, v185, v186, "TTS: FarField: enqueuedTranslations in loop: %ld", v189, 0xCu);
  }

  else
  {
  }

  (*(v0 + 1184))(*(v0 + 1128), *(v0 + 992), *(v0 + 1104));

  v191 = Logger.logObject.getter();
  v192 = static os_log_type_t.debug.getter();
  v291 = v165;
  if (os_log_type_enabled(v191, v192))
  {
    v284 = *(v0 + 1232);
    v290 = *(v0 + 1200);
    v193 = *(v0 + 1128);
    v286 = *(v0 + 1104);
    v194 = *(v0 + 1000);
    v195 = swift_slowAlloc();
    v300[0] = swift_slowAlloc();
    *v195 = 136643331;

    v196 = sub_10028D78C(v165, v299, v300);

    *(v195 + 4) = v196;
    *(v195 + 12) = 1024;
    swift_getKeyPath();
    *(v0 + 864) = v194;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    *(v195 + 14) = *(v194 + v284);

    *(v195 + 18) = 2080;
    v197 = Locale.debugDescription.getter();
    v199 = v198;
    v290(v193, v286);
    v200 = sub_10028D78C(v197, v199, v300);

    *(v195 + 20) = v200;
    _os_log_impl(&_mh_execute_header, v191, v192, "TTS: FarField: start and waiting for low delay TTS translationResult to finish playback: %{sensitive}s, willPlayTTSMessage: %{BOOL}d. Locale: %s", v195, 0x1Cu);
    swift_arrayDestroy();
  }

  else
  {
    v201 = *(v295 + 1200);
    v202 = *(v295 + 1128);
    v203 = *(v295 + 1104);

    v201(v202, v203);
    v0 = v295;
  }

  v204 = v0;
  v205 = *(v0 + 1232);
  v206 = *(v204 + 1000);
  swift_getKeyPath();
  *(v204 + 608) = v206;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *(v204 + 1384) = *(v206 + v205);
  swift_getKeyPath();
  *(v204 + 616) = v206;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*(v206 + v205) == 1)
  {
    v207 = *(v204 + 1000);
    swift_getKeyPath();
    v208 = swift_task_alloc();
    *(v208 + 16) = v207;
    *(v208 + 24) = 0;
    *(v204 + 856) = v207;
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  *(v204 + 1304) = 0;
  sub_100005AD4(&qword_1003BBD80, &qword_1002E7708);
  v209 = swift_allocObject();
  *(v209 + 16) = xmmword_1002D3160;
  *(v209 + 32) = _swiftEmptyArrayStorage;
  *(v204 + 360) = &type metadata for TranslateFeatures;
  *(v204 + 368) = sub_100009DF8();
  *(v204 + 336) = 11;
  v210 = isFeatureEnabled(_:)();
  sub_100008664((v204 + 336));
  if (v210)
  {

    v211 = Logger.logObject.getter();
    v212 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v211, v212))
    {
      v213 = swift_slowAlloc();
      v214 = swift_slowAlloc();
      v300[0] = v214;
      *v213 = 136315138;

      v215 = sub_10028D78C(v291, v299, v300);

      *(v213 + 4) = v215;
      _os_log_impl(&_mh_execute_header, v211, v212, "TTS: FarField: synthesis request begins for: %s", v213, 0xCu);
      sub_100008664(v214);
    }

    v219 = Locale.identifier.getter();
    v221 = v220;

    sub_1001F5660(v219, v221);
    v223 = v222;

    objc_allocWithZone(type metadata accessor for SynthesisRequest());
    v224 = v223;
    v225 = SynthesisRequest.init(text:voice:)();
    *(v204 + 1312) = v225;
    SynthesizingRequestProtocol.privacySensitive.setter();
    SynthesizingRequestProtocol.synthesisPriority.setter();

    v226 = v225;
    sub_1001D379C(v225);
    v227 = swift_task_alloc();
    *(v204 + 1320) = v227;
    *v227 = v204;
    v227[1] = sub_1001EAAA0;

    sub_1001E7FB0(v226);
    return;
  }

  *(v204 + 1344) = 0;
  v216 = *(v204 + 1248);
  v217 = *(v204 + 1000);
  swift_getKeyPath();
  *(v204 + 632) = v217;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*(v217 + v216) < 1)
  {

    v228 = Logger.logObject.getter();
    v229 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v228, v229))
    {
      v230 = swift_slowAlloc();
      *v230 = 0;
      _os_log_impl(&_mh_execute_header, v228, v229, "TTS: FarField: enqueued request count = 0. Most likely canceled by user initiated loudspeaker TTS. Skipping playback", v230, 2u);
    }

    v231 = *(v295 + 1200);
    v232 = *(v295 + 1136);
    v233 = *(v295 + 1104);
    v234 = *(v295 + 1096);

    sub_100009EBC(v295 + 216, &unk_1003B9EC0, &qword_1002D7480);
    sub_100009EBC(v295 + 176, &unk_1003AECE0, &unk_1002DA2D0);
    v231(v232, v233);
    v0 = v295;
    sub_100009EBC(v234, &qword_1003B79F8, &qword_1002E7658);

    goto LABEL_25;
  }

  v218 = v204;
  if (*(v204 + 1384))
  {

    goto LABEL_76;
  }

  sub_10001F620(v204 + 176, v204 + 256, &unk_1003AECE0, &unk_1002DA2D0);
  if (*(v204 + 280))
  {
    sub_100051124((v204 + 256), v204 + 296);
    sub_10001F620(v204 + 216, v204 + 96, &unk_1003B9EC0, &qword_1002D7480);
    if (*(v204 + 120))
    {
      v235 = *(v295 + 1296);
      v236 = *(v295 + 1288);
      sub_100051124((v295 + 96), v295 + 136);
      sub_100031DD8(v295 + 296, v295 + 56);
      sub_100031DD8(v295 + 136, v295 + 16);
      type metadata accessor for PlaybackRenderingSegment();
      v237 = swift_allocObject();
      *(v237 + 128) = xmmword_1002E7260;
      v238 = *(v295 + 72);
      *(v237 + 48) = *(v295 + 56);
      *(v237 + 64) = v238;
      v239 = *(v295 + 32);
      *(v237 + 88) = *(v295 + 16);
      *(v237 + 144) = 1;
      *(v237 + 16) = v235;
      *(v237 + 24) = v236;
      v218 = v295;
      *(v237 + 32) = v209;
      *(v237 + 40) = 0;
      *(v237 + 80) = *(v295 + 88);
      *(v237 + 104) = v239;
      *(v237 + 120) = *(v295 + 48);

      sub_1001ED7A8(v237);

      sub_100008664((v295 + 136));
      sub_100008664((v295 + 296));
      goto LABEL_76;
    }

    sub_100008664((v204 + 296));

    v240 = &unk_1003B9EC0;
    v241 = &qword_1002D7480;
    v242 = v204 + 96;
  }

  else
  {

    v240 = &unk_1003AECE0;
    v241 = &unk_1002DA2D0;
    v242 = v204 + 256;
  }

  sub_100009EBC(v242, v240, v241);
LABEL_76:
  v243 = v218[162];
  v244 = v218[161];

  v245 = sub_1001F68EC(v243, v244);
  v247 = v246;

  v218[169] = v247;
  swift_beginAccess();
  v218[71] = v245;
  v218[72] = v247;

  v248 = Logger.logObject.getter();
  v249 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v248, v249))
  {
    v250 = swift_slowAlloc();
    v251 = swift_slowAlloc();
    v300[0] = v251;
    *v250 = 136642819;

    v252 = sub_10028D78C(v245, v247, v300);

    *(v250 + 4) = v252;
    _os_log_impl(&_mh_execute_header, v248, v249, "TTS: FarField: stable translation playback playback for: %{sensitive}s", v250, 0xCu);
    sub_100008664(v251);
  }

  v253 = v218;
  v254 = v218[158];
  v255 = v253[125];
  swift_getKeyPath();
  v253[83] = v255;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v256 = *(v255 + v254);

  v257 = String.count.getter();
  if (v257 < 1)
  {

    v263 = v295;
    goto LABEL_86;
  }

  v258 = *(v256 + OBJC_IVAR____TtC17SequoiaTranslator16PTSessionMetrics_characterSum);
  v259 = __OFADD__(v258, v257);
  v260 = v258 + v257;
  if (v259)
  {
    goto LABEL_95;
  }

  *(v256 + OBJC_IVAR____TtC17SequoiaTranslator16PTSessionMetrics_characterSum) = v260;
  v261 = *(v256 + OBJC_IVAR____TtC17SequoiaTranslator16PTSessionMetrics_bufferCount);
  v259 = __OFADD__(v261, 1);
  v262 = v261 + 1;
  v263 = v295;
  if (v259)
  {
LABEL_96:
    __break(1u);
    goto LABEL_97;
  }

  *(v256 + OBJC_IVAR____TtC17SequoiaTranslator16PTSessionMetrics_bufferCount) = v262;
  if (!v262)
  {
LABEL_97:
    __break(1u);
LABEL_98:
    __break(1u);
    return;
  }

  if (v260 == 0x8000000000000000 && v262 == -1)
  {
    goto LABEL_98;
  }

  *(v256 + OBJC_IVAR____TtC17SequoiaTranslator16PTSessionMetrics_averageTTSCharacterCount) = v260 / v262;

LABEL_86:

  v264 = Locale.identifier.getter();
  v266 = v265;

  sub_1001F5660(v264, v266);
  v268 = v267;

  v269 = objc_allocWithZone(type metadata accessor for SpeechRequest());
  v270 = v268;
  v271 = SpeechRequest.init(text:voice:)();
  *(v263 + 1360) = v271;
  SynthesizingRequestProtocol.privacySensitive.setter();
  SynthesizingRequestProtocol.synthesisPriority.setter();

  v272 = dispatch thunk of SpeechRequest.synthesisContext.getter();

  sub_1001ED9BC(v245, v247);

  dispatch thunk of SynthesisContext.rate.setter();

  v273 = v271;
  sub_1001D374C(v271);

  v274 = swift_task_alloc();
  *(v263 + 1368) = v274;
  *v274 = v263;
  v274[1] = sub_1001EB858;

  sub_1001F6158(v273);
}

uint64_t sub_1001EAAA0(uint64_t a1, uint64_t a2, char a3)
{
  v4 = *v3;
  v5 = *v3;
  *(v5 + 1328) = a1;
  *(v5 + 1336) = a2;
  *(v5 + 1385) = a3;

  v6 = *(v4 + 1168);
  v7 = *(v4 + 1160);

  return _swift_task_switch(sub_1001EABD0, v7, v6);
}

uint64_t sub_1001EABD0()
{
  v92 = v0;
  v1 = *(v0 + 1256);
  v2 = *(v0 + 1000);
  swift_getKeyPath();
  *(v0 + 808) = v2;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (!*(v2 + v1))
  {

    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v12, v13, "TTS: FarField: nil synthesis speech request most likely cancelled", v14, 2u);
    }

    v15 = *(v0 + 1248);
    v16 = *(v0 + 1000);

    if (*(v16 + v15))
    {
      v17 = *(v0 + 1000);
      swift_getKeyPath();
      v18 = swift_task_alloc();
      *(v18 + 16) = v17;
      *(v18 + 24) = 0;
      *(v0 + 816) = v17;
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
    }

    v19 = *(v0 + 1336);
    v20 = *(v0 + 1328);
    v86 = *(v0 + 1136);
    v88 = *(v0 + 1200);
    v82 = *(v0 + 1312);
    v84 = *(v0 + 1104);
    v90 = *(v0 + 1096);
    v21 = *(v0 + 1000);
    v22 = *(v0 + 1385);
    swift_getKeyPath();
    v23 = swift_task_alloc();
    *(v23 + 16) = v21;
    *(v23 + 24) = _swiftEmptyArrayStorage;
    *(v0 + 824) = v21;
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    sub_1001F6BC4(v20, v19, v22 & 1);

    sub_100009EBC(v0 + 216, &unk_1003B9EC0, &qword_1002D7480);
    sub_100009EBC(v0 + 176, &unk_1003AECE0, &unk_1002DA2D0);
    v88(v86, v84);
    sub_100009EBC(v90, &qword_1003B79F8, &qword_1002E7658);

    goto LABEL_19;
  }

  if (*(v0 + 1385))
  {
    v3 = *(v0 + 1248);
    v4 = *(v0 + 1000);

    if (*(v4 + v3))
    {
      v5 = *(v0 + 1000);
      swift_getKeyPath();
      v6 = swift_task_alloc();
      *(v6 + 16) = v5;
      *(v6 + 24) = 0;
      *(v0 + 832) = v5;
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
    }

    v7 = *(v0 + 1336);
    v8 = *(v0 + 1328);
    v9 = *(v0 + 1312);
    v85 = *(v0 + 1136);
    v87 = *(v0 + 1200);
    v83 = *(v0 + 1104);
    v89 = *(v0 + 1096);
    v10 = *(v0 + 1000);
    swift_getKeyPath();
    v11 = swift_task_alloc();
    *(v11 + 16) = v10;
    *(v11 + 24) = _swiftEmptyArrayStorage;
    *(v0 + 840) = v10;
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    sub_1001F6BC4(v8, v7, 1);

    sub_100009EBC(v0 + 216, &unk_1003B9EC0, &qword_1002D7480);
    sub_100009EBC(v0 + 176, &unk_1003AECE0, &unk_1002DA2D0);
    v87(v85, v83);
    sub_100009EBC(v89, &qword_1003B79F8, &qword_1002E7658);

LABEL_19:

    v43 = *(v0 + 8);

    return v43();
  }

  v24 = *(v0 + 1336);
  v25 = *(v0 + 1328);
  v26 = *(v0 + 1304);
  v27 = *(v0 + 1000);
  swift_getKeyPath();
  v28 = swift_task_alloc();
  *(v28 + 16) = v27;
  *(v28 + 24) = 0;
  *(v0 + 848) = v27;

  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  v29 = Logger.logObject.getter();
  v30 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    *v31 = 0;
    _os_log_impl(&_mh_execute_header, v29, v30, "TTS: FarField: synthesis request ends", v31, 2u);
  }

  v32 = *(v0 + 1336);
  v33 = *(v0 + 1328);

  sub_1001F6BC4(v33, v32, 0);
  *(v0 + 1344) = v26;
  v34 = *(v0 + 1248);
  v35 = *(v0 + 1000);
  swift_getKeyPath();
  *(v0 + 632) = v35;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*(v35 + v34) < 1)
  {

    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      *v38 = 0;
      _os_log_impl(&_mh_execute_header, v36, v37, "TTS: FarField: enqueued request count = 0. Most likely canceled by user initiated loudspeaker TTS. Skipping playback", v38, 2u);
    }

    v39 = *(v0 + 1200);
    v40 = *(v0 + 1136);
    v41 = *(v0 + 1104);
    v42 = *(v0 + 1096);

    sub_100009EBC(v0 + 216, &unk_1003B9EC0, &qword_1002D7480);
    sub_100009EBC(v0 + 176, &unk_1003AECE0, &unk_1002DA2D0);
    v39(v40, v41);
    sub_100009EBC(v42, &qword_1003B79F8, &qword_1002E7658);

    goto LABEL_19;
  }

  if (*(v0 + 1384))
  {

    goto LABEL_28;
  }

  sub_10001F620(v0 + 176, v0 + 256, &unk_1003AECE0, &unk_1002DA2D0);
  if (*(v0 + 280))
  {
    sub_100051124((v0 + 256), v0 + 296);
    sub_10001F620(v0 + 216, v0 + 96, &unk_1003B9EC0, &qword_1002D7480);
    if (*(v0 + 120))
    {
      v45 = *(v0 + 1296);
      v46 = *(v0 + 1288);
      sub_100051124((v0 + 96), v0 + 136);
      sub_100031DD8(v0 + 296, v0 + 56);
      sub_100031DD8(v0 + 136, v0 + 16);
      type metadata accessor for PlaybackRenderingSegment();
      v47 = swift_allocObject();
      *(v47 + 128) = xmmword_1002E7260;
      *(v47 + 144) = 1;
      *(v47 + 16) = v45;
      *(v47 + 24) = v46;
      *(v47 + 32) = v24;
      *(v47 + 40) = v25;
      v48 = *(v0 + 72);
      *(v47 + 48) = *(v0 + 56);
      *(v47 + 64) = v48;
      *(v47 + 80) = *(v0 + 88);
      v49 = *(v0 + 32);
      *(v47 + 88) = *(v0 + 16);
      *(v47 + 104) = v49;
      *(v47 + 120) = *(v0 + 48);

      sub_1001ED7A8(v47);

      sub_100008664((v0 + 136));
      sub_100008664((v0 + 296));
      goto LABEL_28;
    }

    sub_100008664((v0 + 296));

    v50 = &unk_1003B9EC0;
    v51 = &qword_1002D7480;
    v52 = v0 + 96;
  }

  else
  {

    v50 = &unk_1003AECE0;
    v51 = &unk_1002DA2D0;
    v52 = v0 + 256;
  }

  sub_100009EBC(v52, v50, v51);
LABEL_28:
  v53 = *(v0 + 1296);
  v54 = *(v0 + 1288);

  v55 = sub_1001F68EC(v53, v54);
  v57 = v56;

  *(v0 + 1352) = v57;
  swift_beginAccess();
  *(v0 + 568) = v55;
  *(v0 + 576) = v57;

  v58 = Logger.logObject.getter();
  v59 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v58, v59))
  {
    v60 = swift_slowAlloc();
    v61 = swift_slowAlloc();
    v91 = v61;
    *v60 = 136642819;

    v62 = sub_10028D78C(v55, v57, &v91);

    *(v60 + 4) = v62;
    _os_log_impl(&_mh_execute_header, v58, v59, "TTS: FarField: stable translation playback playback for: %{sensitive}s", v60, 0xCu);
    sub_100008664(v61);
  }

  v63 = *(v0 + 1264);
  v64 = *(v0 + 1000);
  swift_getKeyPath();
  *(v0 + 664) = v64;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v65 = *(v64 + v63);

  result = String.count.getter();
  if (result < 1)
  {
    goto LABEL_37;
  }

  v66 = *(v65 + OBJC_IVAR____TtC17SequoiaTranslator16PTSessionMetrics_characterSum);
  v67 = __OFADD__(v66, result);
  v68 = v66 + result;
  if (v67)
  {
    __break(1u);
    goto LABEL_41;
  }

  *(v65 + OBJC_IVAR____TtC17SequoiaTranslator16PTSessionMetrics_characterSum) = v68;
  v69 = *(v65 + OBJC_IVAR____TtC17SequoiaTranslator16PTSessionMetrics_bufferCount);
  v67 = __OFADD__(v69, 1);
  v70 = v69 + 1;
  if (v67)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  *(v65 + OBJC_IVAR____TtC17SequoiaTranslator16PTSessionMetrics_bufferCount) = v70;
  if (!v70)
  {
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
    return result;
  }

  if (v68 == 0x8000000000000000 && v70 == -1)
  {
    goto LABEL_43;
  }

  *(v65 + OBJC_IVAR____TtC17SequoiaTranslator16PTSessionMetrics_averageTTSCharacterCount) = v68 / v70;
LABEL_37:

  v71 = Locale.identifier.getter();
  v73 = v72;

  sub_1001F5660(v71, v73);
  v75 = v74;

  v76 = objc_allocWithZone(type metadata accessor for SpeechRequest());
  v77 = v75;
  v78 = SpeechRequest.init(text:voice:)();
  *(v0 + 1360) = v78;
  SynthesizingRequestProtocol.privacySensitive.setter();
  SynthesizingRequestProtocol.synthesisPriority.setter();

  v79 = dispatch thunk of SpeechRequest.synthesisContext.getter();

  sub_1001ED9BC(v55, v57);

  dispatch thunk of SynthesisContext.rate.setter();

  v80 = v78;
  sub_1001D374C(v78);

  v81 = swift_task_alloc();
  *(v0 + 1368) = v81;
  *v81 = v0;
  v81[1] = sub_1001EB858;

  return sub_1001F6158(v80);
}

uint64_t sub_1001EB858(uint64_t a1)
{
  v2 = *v1;
  *(*v1 + 1376) = a1;

  v3 = *(v2 + 1168);
  v4 = *(v2 + 1160);

  return _swift_task_switch(sub_1001EB9A4, v4, v3);
}

void sub_1001EB9A4(uint64_t a1)
{
  v237 = v1;
  if (v1[172])
  {
    swift_errorRetain();
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      v5 = swift_slowAlloc();
      v236[0] = v5;
      *v4 = 136315138;
      swift_getErrorValue();
      v6 = Error.localizedDescription.getter();
      v8 = sub_10028D78C(v6, v7, v236);

      *(v4 + 4) = v8;
      _os_log_impl(&_mh_execute_header, v2, v3, "TTS: FarField: finished stable translation playback with error: %s", v4, 0xCu);
      sub_100008664(v5);
    }

    else
    {
    }
  }

  else
  {
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v9, v10, "TTS: FarField: finished stable translation playback", v11, 2u);
    }
  }

  v12 = v1[125];
  v13 = v1[168];
  if (*(v12 + v1[159]))
  {
    swift_getKeyPath();
    v14 = swift_task_alloc();
    *(v14 + 16) = v12;
    *(v14 + 24) = 0;
    v1[94] = v12;
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
    v224 = v13;

    v12 = v1[125];
  }

  else
  {
    v224 = v1[168];
  }

  v15 = v1[156];
  v16 = v1[153];
  swift_getKeyPath();
  v1[84] = v12;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v17 = *(*(v12 + v16) + 16);
  swift_getKeyPath();
  v1[85] = v12;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v235 = v1;
  if (v17 >= *(v12 + v15))
  {

    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = v1[156];
      v30 = v1[125];
      v31 = swift_slowAlloc();
      *v31 = 134217984;
      swift_getKeyPath();
      v1[93] = v30;
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      *(v31 + 4) = *(v30 + v29);

      _os_log_impl(&_mh_execute_header, v27, v28, "TTS: FarField: enqueuedTranslations in loop removing: %ld", v31, 0xCu);
    }

    else
    {
    }

    v32 = v1[156];
    v33 = v1[125];
    swift_getKeyPath();
    v1[86] = v33;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v34 = *(v33 + v32);
    swift_getKeyPath();
    v1[87] = v33;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v1[88] = v33;
    swift_getKeyPath();
    v22 = v1;
    ObservationRegistrar.willSet<A, B>(_:keyPath:)();

    swift_beginAccess();
    if (v34)
    {
      if ((v34 & 0x8000000000000000) != 0)
      {
LABEL_94:
        __break(1u);
        goto LABEL_95;
      }

      if (*(*(v1[125] + v1[153]) + 16) < v34)
      {
LABEL_95:
        __break(1u);
        goto LABEL_96;
      }

      sub_1002B56C0(0, v34);
    }

    v35 = v1[156];
    v36 = v235[125];
    swift_endAccess();
    v235[90] = v36;
    swift_getKeyPath();
    ObservationRegistrar.didSet<A, B>(_:keyPath:)();

    v37 = v235[170];
    if (*(v36 + v35))
    {
      v228 = v235[142];
      v229 = v235[150];
      v38 = v235[138];
      v39 = v235[125];
      swift_getKeyPath();
      v40 = swift_task_alloc();
      *(v40 + 16) = v39;
      *(v40 + 24) = 0;
      v235[91] = v39;
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

      sub_100009EBC((v235 + 27), &unk_1003B9EC0, &qword_1002D7480);
      sub_100009EBC((v235 + 22), &unk_1003AECE0, &unk_1002DA2D0);
      v229(v228, v38);

      goto LABEL_26;
    }

    v41 = v235[156];
    v42 = v235[150];
    v43 = v235[142];
    v44 = v235[138];
    v45 = v235[125];

    sub_100009EBC((v235 + 27), &unk_1003B9EC0, &qword_1002D7480);
    sub_100009EBC((v235 + 22), &unk_1003AECE0, &unk_1002DA2D0);
    v42(v43, v44);
    *(v45 + v41) = 0;
  }

  else
  {
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.error.getter();
    v20 = os_log_type_enabled(v18, v19);
    v21 = v1[170];
    v22 = v1;
    v23 = v1[150];
    v24 = v22[142];
    v25 = v22[138];
    if (v20)
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&_mh_execute_header, v18, v19, "TTS: FarField: enqueuedTranslations in loop cannot remove given count", v26, 2u);
    }

    sub_100009EBC((v22 + 27), &unk_1003B9EC0, &qword_1002D7480);
    sub_100009EBC((v22 + 22), &unk_1003AECE0, &unk_1002DA2D0);
    v23(v24, v25);
  }

LABEL_26:
  v46 = v22[153];
  v47 = v22[125];
  swift_getKeyPath();
  v22[92] = v47;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (!*(*(v47 + v46) + 16))
  {
    sub_100009EBC(v22[137], &qword_1003B79F8, &qword_1002E7658);

    goto LABEL_70;
  }

  v48 = v22[153];
  v49 = v22[125];
  v22[71] = 0;
  v22[72] = 0xE000000000000000;
  swift_getKeyPath();
  v22[97] = v49;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v50 = *(v49 + v48);
  if (!*(v50 + 16))
  {
    __break(1u);
    goto LABEL_92;
  }

  v51 = v22[155];
  v230 = v22[153];
  v52 = v22[142];
  v53 = v22[138];
  v54 = v22[133];
  v55 = v22[129];
  v56 = v22[125];
  v57 = *(v22[130] + 80);
  v58 = (v57 + 32) & ~v57;
  sub_10001F620(v50 + v58, v54, &qword_1003BBDA0, &qword_1002E7650);

  v59 = v55[12];
  v60 = v55[16];
  v61 = v55[20];
  v51(v52, v54 + v59, v53);
  sub_100009EBC(v54 + v61, &unk_1003B9EC0, &qword_1002D7480);
  sub_100009EBC(v54 + v60, &unk_1003AECE0, &unk_1002DA2D0);
  swift_getKeyPath();
  v22[96] = v56;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v62 = *(v56 + v230);
  if (!*(v62 + 16))
  {
LABEL_92:
    __break(1u);
    goto LABEL_93;
  }

  v231 = v22[153];
  v63 = v22[150];
  v64 = v22[138];
  v65 = v22[133];
  v66 = v22[129];
  v67 = v22[125];
  v68 = v22[139] + 8;
  sub_10001F620(v62 + v58, v65, &qword_1003BBDA0, &qword_1002E7650);

  v69 = v66[12];
  v70 = v65 + v66[16];
  v71 = v66[20];
  v72 = *v70;
  v73 = *(v70 + 16);
  v22[26] = *(v70 + 32);
  *(v22 + 11) = v72;
  *(v22 + 12) = v73;
  sub_100009EBC(v65 + v71, &unk_1003B9EC0, &qword_1002D7480);
  v22[160] = v68 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v63(v65 + v69, v64);
  swift_getKeyPath();
  v22[89] = v67;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v74 = *(v67 + v231);
  if (!*(v74 + 16))
  {
LABEL_93:
    __break(1u);
    goto LABEL_94;
  }

  v232 = v22[154];
  v75 = v22[150];
  v76 = v22[138];
  v77 = v22[133];
  v78 = v22[129];
  v79 = v22[125];
  v225 = v58;
  sub_10001F620(v74 + v58, v77, &qword_1003BBDA0, &qword_1002E7650);

  v80 = v78[12];
  v81 = v78[16];
  v82 = v77 + v78[20];
  v83 = *v82;
  v84 = *(v82 + 16);
  v235[31] = *(v82 + 32);
  *(v235 + 29) = v84;
  *(v235 + 27) = v83;
  sub_100009EBC(v77 + v81, &unk_1003AECE0, &unk_1002DA2D0);
  v85 = v77 + v80;
  v22 = v235;
  v75(v85, v76);
  swift_getKeyPath();
  v235[82] = v79;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  LODWORD(v76) = *(v79 + v232);
  swift_getKeyPath();
  if (v76 != 1)
  {
    v101 = v235[156];
    v102 = v235[153];
    v103 = v235[125];
    v235[81] = v103;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v104 = *(*(v103 + v102) + 16);
    if (*(v103 + v101) != v104)
    {
      v105 = v235[125];
      swift_getKeyPath();
      v106 = swift_task_alloc();
      *(v106 + 16) = v105;
      *(v106 + 24) = v104;
      v235[80] = v105;
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
    }

    v107 = v235[153];
    v108 = v235[125];
    swift_getKeyPath();
    v235[78] = v108;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v109 = *(v108 + v107);
    v110 = *(v109 + 16);
    v111 = _swiftEmptyArrayStorage;
    if (v110)
    {
      v112 = v235[130];
      v235[75] = _swiftEmptyArrayStorage;

      sub_1000C4B4C(0, v110, 0);
      v111 = v235[75];
      v113 = v109 + v225;
      v226 = *(v112 + 72);
      do
      {
        v114 = v22[150];
        v115 = v22[138];
        v116 = v22[133];
        v117 = v22[131];
        v118 = v235[129];
        sub_10001F620(v113, v116, &qword_1003BBDA0, &qword_1002E7650);
        sub_100023BD4(v116, v117, &qword_1003BBDA0, &qword_1002E7650);
        v119 = *v117;
        v233 = v117[1];
        v120 = v118[12];
        v121 = v118[16];
        v122 = v118[20];
        v22 = v235;
        sub_100009EBC(v117 + v122, &unk_1003B9EC0, &qword_1002D7480);
        sub_100009EBC(v117 + v121, &unk_1003AECE0, &unk_1002DA2D0);
        v114(v117 + v120, v115);
        v235[75] = v111;
        v124 = v111[2];
        v123 = v111[3];
        if (v124 >= v123 >> 1)
        {
          sub_1000C4B4C((v123 > 1), v124 + 1, 1);
          v111 = v235[75];
        }

        v111[2] = v124 + 1;
        v125 = &v111[2 * v124];
        v125[4] = v119;
        v125[5] = v233;
        v113 += v226;
        --v110;
      }

      while (v110);
    }

    v22[121] = v111;
    sub_100005AD4(&qword_1003A95C0, &qword_1002D1A10);
    sub_10001BAEC(&qword_1003A95C8, &qword_1003A95C0, &qword_1002D1A10, &protocol conformance descriptor for [A]);
    v96 = BidirectionalCollection<>.joined(separator:)();
    v97 = v126;

    swift_beginAccess();
    v22[71] = v96;
    v22[72] = v97;
    goto LABEL_46;
  }

  v86 = v235[153];
  v87 = v235[125];
  v235[110] = v87;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (!*(*(v87 + v86) + 16))
  {

    v168 = Logger.logObject.getter();
    v169 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v168, v169))
    {
      v170 = swift_slowAlloc();
      *v170 = 0;
      _os_log_impl(&_mh_execute_header, v168, v169, "TTS: FarField: lowDelayTTSTranslationResults was emptied", v170, 2u);
    }

    v171 = v235[150];
    v172 = v235[142];
    v173 = v235[138];
    v174 = v235[137];

    sub_100009EBC((v235 + 27), &unk_1003B9EC0, &qword_1002D7480);
    sub_100009EBC((v235 + 22), &unk_1003AECE0, &unk_1002DA2D0);
    v171(v172, v173);
    sub_100009EBC(v174, &qword_1003B79F8, &qword_1002E7658);
    goto LABEL_70;
  }

  v88 = v235[125];
  if (*(v88 + v235[156]) != 1)
  {
    swift_getKeyPath();
    v89 = swift_task_alloc();
    *(v89 + 16) = v88;
    *(v89 + 24) = 1;
    v235[111] = v88;
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    v88 = v235[125];
  }

  v90 = v235[153];
  swift_getKeyPath();
  v235[112] = v88;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v91 = *(v88 + v90);
  if (!*(v91 + 16))
  {
LABEL_96:
    __break(1u);
    goto LABEL_97;
  }

  v92 = v235[150];
  v93 = v235[138];
  v94 = v235[133];
  v95 = v235[129];
  sub_10001F620(v91 + v225, v94, &qword_1003BBDA0, &qword_1002E7650);
  v96 = *v94;
  v97 = v94[1];
  v98 = v95[12];
  v99 = v95[16];
  v100 = v95[20];
  swift_beginAccess();
  v235[71] = v96;
  v235[72] = v97;
  sub_100009EBC(v94 + v100, &unk_1003B9EC0, &qword_1002D7480);
  sub_100009EBC(v94 + v99, &unk_1003AECE0, &unk_1002DA2D0);
  v92(v94 + v98, v93);
LABEL_46:
  v22[162] = v96;
  v22[161] = v97;

  v127 = Logger.logObject.getter();
  v128 = static os_log_type_t.debug.getter();
  v227 = v96;
  v234 = v97;
  if (os_log_type_enabled(v127, v128))
  {
    v129 = v22[156];
    v130 = v22[125];
    v131 = swift_slowAlloc();
    *v131 = 134217984;
    swift_getKeyPath();
    v22[109] = v130;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    *(v131 + 4) = *(v130 + v129);

    _os_log_impl(&_mh_execute_header, v127, v128, "TTS: FarField: enqueuedTranslations in loop: %ld", v131, 0xCu);
  }

  else
  {
  }

  (v22[148])(v22[141], v22[124], v22[138]);

  v132 = Logger.logObject.getter();
  v133 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v132, v133))
  {
    v221 = v22[154];
    v134 = v22[141];
    v222 = v22[138];
    v223 = v22[150];
    v135 = v22[125];
    v136 = swift_slowAlloc();
    v236[0] = swift_slowAlloc();
    *v136 = 136643331;

    v137 = sub_10028D78C(v227, v234, v236);

    *(v136 + 4) = v137;
    *(v136 + 12) = 1024;
    swift_getKeyPath();
    v235[108] = v135;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    *(v136 + 14) = *(v135 + v221);

    *(v136 + 18) = 2080;
    v138 = Locale.debugDescription.getter();
    v140 = v139;
    v223(v134, v222);
    v141 = sub_10028D78C(v138, v140, v236);

    *(v136 + 20) = v141;
    _os_log_impl(&_mh_execute_header, v132, v133, "TTS: FarField: start and waiting for low delay TTS translationResult to finish playback: %{sensitive}s, willPlayTTSMessage: %{BOOL}d. Locale: %s", v136, 0x1Cu);
    swift_arrayDestroy();
    v22 = v235;
  }

  else
  {
    v142 = v22[150];
    v143 = v22[141];
    v144 = v22[138];

    v142(v143, v144);
  }

  v145 = v22[154];
  v146 = v22[125];
  swift_getKeyPath();
  v22[76] = v146;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *(v22 + 1384) = *(v146 + v145);
  swift_getKeyPath();
  v22[77] = v146;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*(v146 + v145) == 1)
  {
    v147 = v22[125];
    swift_getKeyPath();
    v148 = swift_task_alloc();
    *(v148 + 16) = v147;
    *(v148 + 24) = 0;
    v22[107] = v147;
    v149 = v224;
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  else
  {
    v149 = v224;
  }

  v22[163] = v149;
  sub_100005AD4(&qword_1003BBD80, &qword_1002E7708);
  v150 = swift_allocObject();
  *(v150 + 16) = xmmword_1002D3160;
  *(v150 + 32) = _swiftEmptyArrayStorage;
  v22[45] = &type metadata for TranslateFeatures;
  v22[46] = sub_100009DF8();
  *(v22 + 336) = 11;
  v151 = isFeatureEnabled(_:)();
  sub_100008664(v22 + 42);
  if (v151)
  {

    v152 = Logger.logObject.getter();
    v153 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v152, v153))
    {
      v154 = swift_slowAlloc();
      v155 = swift_slowAlloc();
      v236[0] = v155;
      *v154 = 136315138;

      v156 = sub_10028D78C(v227, v234, v236);

      *(v154 + 4) = v156;
      _os_log_impl(&_mh_execute_header, v152, v153, "TTS: FarField: synthesis request begins for: %s", v154, 0xCu);
      sub_100008664(v155);
    }

    v159 = Locale.identifier.getter();
    v161 = v160;

    sub_1001F5660(v159, v161);
    v163 = v162;

    objc_allocWithZone(type metadata accessor for SynthesisRequest());
    v164 = v163;
    v165 = SynthesisRequest.init(text:voice:)();
    v22[164] = v165;
    SynthesizingRequestProtocol.privacySensitive.setter();
    SynthesizingRequestProtocol.synthesisPriority.setter();

    v166 = v165;
    sub_1001D379C(v165);
    v167 = swift_task_alloc();
    v22[165] = v167;
    *v167 = v22;
    v167[1] = sub_1001EAAA0;

    sub_1001E7FB0(v166);
    return;
  }

  v22[168] = v149;
  v157 = v22[156];
  v158 = v22[125];
  swift_getKeyPath();
  v22[79] = v158;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*(v158 + v157) >= 1)
  {
    if (v22[173])
    {

      goto LABEL_79;
    }

    sub_10001F620((v22 + 22), (v22 + 32), &unk_1003AECE0, &unk_1002DA2D0);
    if (v22[35])
    {
      sub_100051124(v22 + 16, (v22 + 37));
      sub_10001F620((v22 + 27), (v22 + 12), &unk_1003B9EC0, &qword_1002D7480);
      if (v22[15])
      {
        v183 = v22[162];
        v184 = v22[161];
        sub_100051124(v22 + 6, (v22 + 17));
        sub_100031DD8((v22 + 37), (v22 + 7));
        sub_100031DD8((v22 + 17), (v22 + 2));
        type metadata accessor for PlaybackRenderingSegment();
        v185 = swift_allocObject();
        *(v185 + 128) = xmmword_1002E7260;
        v186 = *(v22 + 9);
        *(v185 + 48) = *(v22 + 7);
        *(v185 + 64) = v186;
        v187 = *(v22 + 2);
        *(v185 + 88) = *(v22 + 1);
        *(v185 + 144) = 1;
        *(v185 + 16) = v183;
        *(v185 + 24) = v184;
        *(v185 + 32) = v150;
        *(v185 + 40) = 0;
        *(v185 + 80) = v22[11];
        *(v185 + 104) = v187;
        *(v185 + 120) = v22[6];

        sub_1001ED7A8(v185);

        sub_100008664(v22 + 17);
        sub_100008664(v22 + 37);
        goto LABEL_79;
      }

      sub_100008664(v22 + 37);

      v188 = &unk_1003B9EC0;
      v189 = &qword_1002D7480;
      v190 = (v22 + 12);
    }

    else
    {

      v188 = &unk_1003AECE0;
      v189 = &unk_1002DA2D0;
      v190 = (v22 + 32);
    }

    sub_100009EBC(v190, v188, v189);
LABEL_79:
    v191 = v22[162];
    v192 = v22[161];

    v193 = sub_1001F68EC(v191, v192);
    v195 = v194;

    v22[169] = v195;
    swift_beginAccess();
    v22[71] = v193;
    v22[72] = v195;

    v196 = Logger.logObject.getter();
    v197 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v196, v197))
    {
      v198 = swift_slowAlloc();
      v199 = swift_slowAlloc();
      v236[0] = v199;
      *v198 = 136642819;

      v200 = sub_10028D78C(v193, v195, v236);

      *(v198 + 4) = v200;
      _os_log_impl(&_mh_execute_header, v196, v197, "TTS: FarField: stable translation playback playback for: %{sensitive}s", v198, 0xCu);
      sub_100008664(v199);
    }

    v201 = v22[158];
    v202 = v22[125];
    swift_getKeyPath();
    v22[83] = v202;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v203 = *(v202 + v201);

    v204 = String.count.getter();
    if (v204 < 1)
    {
      goto LABEL_88;
    }

    v205 = *(v203 + OBJC_IVAR____TtC17SequoiaTranslator16PTSessionMetrics_characterSum);
    v206 = __OFADD__(v205, v204);
    v207 = v205 + v204;
    if (!v206)
    {
      *(v203 + OBJC_IVAR____TtC17SequoiaTranslator16PTSessionMetrics_characterSum) = v207;
      v208 = *(v203 + OBJC_IVAR____TtC17SequoiaTranslator16PTSessionMetrics_bufferCount);
      v206 = __OFADD__(v208, 1);
      v209 = v208 + 1;
      if (!v206)
      {
        *(v203 + OBJC_IVAR____TtC17SequoiaTranslator16PTSessionMetrics_bufferCount) = v209;
        if (v209)
        {
          if (v207 != 0x8000000000000000 || v209 != -1)
          {
            *(v203 + OBJC_IVAR____TtC17SequoiaTranslator16PTSessionMetrics_averageTTSCharacterCount) = v207 / v209;
LABEL_88:

            v210 = Locale.identifier.getter();
            v212 = v211;

            sub_1001F5660(v210, v212);
            v214 = v213;

            v215 = objc_allocWithZone(type metadata accessor for SpeechRequest());
            v216 = v214;
            v217 = SpeechRequest.init(text:voice:)();
            v22[170] = v217;
            SynthesizingRequestProtocol.privacySensitive.setter();
            SynthesizingRequestProtocol.synthesisPriority.setter();

            v218 = dispatch thunk of SpeechRequest.synthesisContext.getter();

            sub_1001ED9BC(v193, v195);

            dispatch thunk of SynthesisContext.rate.setter();

            v219 = v217;
            sub_1001D374C(v217);

            v220 = swift_task_alloc();
            v22[171] = v220;
            *v220 = v22;
            v220[1] = sub_1001EB858;

            sub_1001F6158(v219);
            return;
          }

LABEL_100:
          __break(1u);
          return;
        }

LABEL_99:
        __break(1u);
        goto LABEL_100;
      }

LABEL_98:
      __break(1u);
      goto LABEL_99;
    }

LABEL_97:
    __break(1u);
    goto LABEL_98;
  }

  v175 = Logger.logObject.getter();
  v176 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v175, v176))
  {
    v177 = swift_slowAlloc();
    *v177 = 0;
    _os_log_impl(&_mh_execute_header, v175, v176, "TTS: FarField: enqueued request count = 0. Most likely canceled by user initiated loudspeaker TTS. Skipping playback", v177, 2u);
  }

  v178 = v22[150];
  v179 = v22[142];
  v180 = v22[138];
  v181 = v22[137];

  sub_100009EBC((v22 + 27), &unk_1003B9EC0, &qword_1002D7480);
  sub_100009EBC((v22 + 22), &unk_1003AECE0, &unk_1002DA2D0);
  v178(v179, v180);
  sub_100009EBC(v181, &qword_1003B79F8, &qword_1002E7658);

LABEL_70:

  v182 = v22[1];

  v182();
}

void sub_1001ED7A8(uint64_t a1)
{
  swift_getKeyPath();
  sub_1001F6DA0(&qword_1003B4900, type metadata accessor for PersonalTranslatorViewModel, &unk_1002E7508);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v2 = OBJC_IVAR____TtC17SequoiaTranslator27PersonalTranslatorViewModel__renderingSegments;
  swift_beginAccess();
  v3 = *(v1 + v2);
  if (v3 >> 62)
  {
    v4 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  swift_getKeyPath();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  swift_beginAccess();

  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((*(v1 + v2) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v1 + v2) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  swift_endAccess();
  swift_getKeyPath();
  ObservationRegistrar.didSet<A, B>(_:keyPath:)();

  if (!v4)
  {
    sub_1001EFCCC();
  }
}

float sub_1001ED9BC(uint64_t a1, unint64_t a2)
{
  v3 = [objc_allocWithZone(NLTokenizer) initWithUnit:0];
  [v3 setLanguage:NLLanguageUndetermined];
  v4 = String._bridgeToObjectiveC()();
  [v3 setString:v4];

  v18 = v3;
  NLTokenizer.enumerateTokens(in:using:)();
  if (*(v2 + OBJC_IVAR____TtC17SequoiaTranslator27PersonalTranslatorViewModel__idealTTSRate))
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1001F6DA0(&qword_1003B4900, type metadata accessor for PersonalTranslatorViewModel, &unk_1002E7508);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  swift_getKeyPath();
  sub_1001F6DA0(&qword_1003B4900, type metadata accessor for PersonalTranslatorViewModel, &unk_1002E7508);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v6 = OBJC_IVAR____TtC17SequoiaTranslator27PersonalTranslatorViewModel__idealTTSRate;
  v7 = *(v2 + OBJC_IVAR____TtC17SequoiaTranslator27PersonalTranslatorViewModel__idealTTSRate);
  swift_getKeyPath();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v8 = *(v2 + v6);
  swift_getKeyPath();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v19 = OBJC_IVAR____TtC17SequoiaTranslator27PersonalTranslatorViewModel__lastUsedTTSRate;
  v9 = *(v2 + OBJC_IVAR____TtC17SequoiaTranslator27PersonalTranslatorViewModel__lastUsedTTSRate);
  if (v8 <= 1)
  {
    if (!v8 || *(v2 + OBJC_IVAR____TtC17SequoiaTranslator27PersonalTranslatorViewModel__lastUsedTTSRate))
    {
      goto LABEL_6;
    }

LABEL_17:
    swift_getKeyPath();
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    if (*(v2 + v6) >= 3u)
    {
      swift_getKeyPath();
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      if (*(v2 + v19) >= 2u)
      {
        v7 = v7;
      }

      else
      {
        v7 = 2;
      }
    }

    goto LABEL_29;
  }

  if (v8 == 2)
  {
    if (v9 < 2)
    {
      goto LABEL_17;
    }
  }

  else if (v9 != 3)
  {
    goto LABEL_17;
  }

LABEL_6:
  swift_getKeyPath();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v10 = *(v2 + v6);
  swift_getKeyPath();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*(v2 + v19) > 1u)
  {
    if (*(v2 + v19) == 2)
    {
      if (v10 >= 2)
      {
        goto LABEL_29;
      }
    }

    else if (v10 == 3)
    {
      goto LABEL_29;
    }
  }

  else if (!*(v2 + v19) || v10)
  {
    goto LABEL_29;
  }

  swift_getKeyPath();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*(v2 + v19) < 3u || (swift_getKeyPath(), ObservationRegistrar.access<A, B>(_:keyPath:)(), , *(v2 + v6) >= 2u))
  {
    swift_getKeyPath();
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    if (*(v2 + v19) == 2)
    {
      swift_getKeyPath();
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      if (*(v2 + v6))
      {
        v7 = v7;
      }

      else
      {
        v7 = 1;
      }
    }
  }

  else
  {
    v7 = 2;
  }

LABEL_29:
  sub_1001D5F50(v7);
  v11 = OBJC_IVAR____TtC17SequoiaTranslator27PersonalTranslatorViewModel__lastWordCount;
  if (*(v2 + OBJC_IVAR____TtC17SequoiaTranslator27PersonalTranslatorViewModel__lastWordCount))
  {
    v12 = swift_getKeyPath();
    __chkstk_darwin(v12);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  if (qword_1003A92B0 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  sub_1000078E8(v13, qword_1003D2920);

  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 134218496;
    swift_getKeyPath();
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    *(v16 + 4) = *(v2 + v11);

    *(v16 + 12) = 2048;
    swift_getKeyPath();
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    *(v16 + 14) = qword_1002E7E90[*(v2 + v6)];
    *(v16 + 22) = 2048;
    swift_getKeyPath();
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    *(v16 + 24) = qword_1002E7E90[*(v2 + v19)];
    _os_log_impl(&_mh_execute_header, v14, v15, "TTS: Environment WordCount=%ld IdealRate=%f LastUsed=%f", v16, 0x20u);
  }

  else
  {
  }

  return flt_1002E5C00[v7];
}

uint64_t sub_1001EE374(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[57] = a4;
  v5[58] = a5;
  v6 = type metadata accessor for Locale();
  v5[59] = v6;
  v5[60] = *(v6 - 8);
  v5[61] = swift_task_alloc();
  type metadata accessor for MainActor();
  v5[62] = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[63] = v8;
  v5[64] = v7;

  return _swift_task_switch(sub_1001EE468, v8, v7);
}

uint64_t sub_1001EE468()
{
  v70 = v0;
  v2 = v0[57];
  v1 = v0[58];
  swift_getKeyPath();
  v0[65] = OBJC_IVAR____TtC17SequoiaTranslator27PersonalTranslatorViewModel___observationRegistrar;
  v0[44] = v2;
  v0[66] = sub_1001F6DA0(&qword_1003B4900, type metadata accessor for PersonalTranslatorViewModel, &unk_1002E7508);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  p_base_props = OBJC_IVAR____TtC17SequoiaTranslator27PersonalTranslatorViewModel__ttsTranslationResults;
  v0[67] = OBJC_IVAR____TtC17SequoiaTranslator27PersonalTranslatorViewModel__ttsTranslationResults;
  swift_beginAccess();
  KeyPath = (*(p_base_props + v2))[2];
  sub_100031DD8(v1, (v0 + 2));
  swift_getKeyPath();
  v0[45] = v2;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v0[46] = v2;
  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  swift_beginAccess();
  v5 = *(p_base_props + v2);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(p_base_props + v2) = v5;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
LABEL_36:
    v5 = sub_10028CD00(0, *&v5[2] + 1, 1, v5);
    *(p_base_props + v2) = v5;
  }

  v8 = v5[2];
  v7 = v5[3];
  v67 = KeyPath;
  if (v8 >= v7 >> 1)
  {
    v5 = sub_10028CD00((v7 > 1), v8 + 1, 1, v5);
    *(p_base_props + v2) = v5;
  }

  v66 = v0[57];
  v9 = v0[5];
  v10 = v0[6];
  v11 = sub_1000E859C((v0 + 2), v9);
  v12 = *(v9 - 8);
  v13 = swift_task_alloc();
  (*(v12 + 16))(v13, v11, v9);
  sub_1001F3D94(v8, v13, (p_base_props + v2), v9, v10);
  sub_100008664(v0 + 2);

  *(p_base_props + v2) = v5;
  swift_endAccess();
  v0[47] = v66;
  swift_getKeyPath();
  ObservationRegistrar.didSet<A, B>(_:keyPath:)();

  if (v67)
  {
LABEL_5:

    v14 = v0[1];

    return v14();
  }

  v0[68] = OBJC_IVAR____TtC17SequoiaTranslator27PersonalTranslatorViewModel__currentSpeechRequestForTTS;
  p_base_props = &WaveformUIKitView.base_props;
  while (1)
  {
    v22 = v0[67];
    v23 = v0[65];
    v24 = v0[57];
    KeyPath = swift_getKeyPath();
    v0[48] = v24;
    v5 = (v24 + v23);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v25 = *(v24 + v22);
    if (!*(v25 + 16))
    {
      __break(1u);
LABEL_34:
      __break(1u);
LABEL_35:
      __break(1u);
      goto LABEL_36;
    }

    sub_100031DD8(v25 + 32, (v0 + 7));
    if (qword_1003A92B0 != -1)
    {
      swift_once();
    }

    v26 = v0[58];
    v27 = type metadata accessor for Logger();
    v0[69] = sub_1000078E8(v27, qword_1003D2920);
    sub_100031DD8(v26, (v0 + 12));
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v69 = v31;
      *v30 = 136315138;
      sub_100031DD8((v0 + 12), (v0 + 27));
      sub_100005AD4(&qword_1003AC710, &unk_1002E7640);
      v32 = String.init<A>(describing:)();
      v2 = v33;
      sub_100008664(v0 + 12);
      v34 = sub_10028D78C(v32, v2, &v69);

      *(v30 + 4) = v34;
      _os_log_impl(&_mh_execute_header, v28, v29, "TTS: start and waiting for translationResult to finish TTS playback: %s", v30, 0xCu);
      sub_100008664(v31);
    }

    else
    {

      sub_100008664(v0 + 12);
    }

    sub_1000085CC(v0 + 7, v0[10]);
    v35 = dispatch thunk of TranslationResult.alternatives.getter();
    if (*(v35 + 16))
    {
      break;
    }

    v36 = v0[67];
    v37 = v0[57];
    swift_getKeyPath();
    v0[50] = v37;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    if (*(*(v37 + v36) + 16))
    {
      v38 = v0[67];
      v2 = v0[57];
      swift_getKeyPath();
      v0[51] = v2;
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v0[52] = v2;
      KeyPath = swift_getKeyPath();
      ObservationRegistrar.willSet<A, B>(_:keyPath:)();

      swift_beginAccess();
      v5 = *(v2 + v38);
      if (!*&v5[2])
      {
        goto LABEL_34;
      }

      sub_100031DD8(&v5[4], (v0 + 22));
      sub_100009EBC((v0 + 22), &unk_1003B9EC0, &qword_1002D7480);
      v39 = v5[2];
      if (!v39)
      {
        goto LABEL_35;
      }

      v40 = v0[67];
      v41 = v0[57];
      v42 = swift_isUniquelyReferenced_nonNull_native();
      *(v41 + v40) = v5;
      if (!v42 || (v39 - 1) > *&v5[3] >> 1)
      {
        v16 = v0[67];
        v17 = v0[57];
        v5 = sub_10028CD00(v42, v39, 1, v5);
        *(v17 + v16) = v5;
      }

      v18 = v0[67];
      v19 = v0[57];
      sub_100008664(&v5[4]);
      v2 = v5[2];
      memmove(&v5[4], &v5[9], 40 * v2 - 40);
      v5[2] = (v2 - 1);
      *(v19 + v18) = v5;
      swift_endAccess();
      v0[53] = v19;
      swift_getKeyPath();
      ObservationRegistrar.didSet<A, B>(_:keyPath:)();
    }

    sub_100008664(v0 + 7);
    v20 = v0[67];
    v21 = v0[57];
    swift_getKeyPath();
    v0[54] = v21;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    if (!*(*(v21 + v20) + 16))
    {
      goto LABEL_5;
    }
  }

  v68 = v0[68];
  v44 = v0[60];
  v43 = v0[61];
  v45 = v0[59];
  v46 = v0[57];
  sub_100031DD8(v35 + 32, (v0 + 17));

  sub_1000085CC(v0 + 17, v0[20]);
  TranslationAlternative.displayString.getter();
  v0[70] = v47;
  sub_100008664(v0 + 17);
  sub_1000085CC(v0 + 7, v0[10]);
  dispatch thunk of TranslationResult.locale.getter();
  v48 = Locale.identifier.getter();
  v50 = v49;
  (*(v44 + 8))(v43, v45);
  sub_1001F5660(v48, v50);
  v52 = v51;

  objc_allocWithZone(type metadata accessor for SpeechRequest());

  v53 = v52;
  v54 = SpeechRequest.init(text:voice:)();
  v0[71] = v54;
  SynthesizingRequestProtocol.privacySensitive.setter();
  SynthesizingRequestProtocol.synthesisPriority.setter();

  v55 = *(v46 + v68);
  if (!v55)
  {
    v62 = v54;
    goto LABEL_29;
  }

  v56 = v54;
  v57 = v55;
  v58 = static NSObject.== infix(_:_:)();

  if ((v58 & 1) == 0)
  {
LABEL_29:
    v63 = v0[57];
    swift_getKeyPath();
    v64 = swift_task_alloc();
    *(v64 + 16) = v63;
    *(v64 + 24) = v54;
    v0[49] = v63;
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    goto LABEL_30;
  }

  v59 = v0[68];
  v60 = v0[57];
  v61 = *(v60 + v59);
  *(v60 + v59) = v54;

LABEL_30:
  v0[72] = 0;
  v65 = swift_task_alloc();
  v0[73] = v65;
  *v65 = v0;
  v65[1] = sub_1001EEE1C;

  return sub_1001F6158(v54);
}

uint64_t sub_1001EEE1C(uint64_t a1)
{
  v2 = *v1;
  *(*v1 + 592) = a1;

  v3 = *(v2 + 512);
  v4 = *(v2 + 504);

  return _swift_task_switch(sub_1001EEF68, v4, v3);
}

void sub_1001EEF68()
{
  v70 = v0;
  if (*(v0 + 592))
  {
    swift_errorRetain();
    v1 = Logger.logObject.getter();
    v2 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v1, v2))
    {
      v3 = swift_slowAlloc();
      v4 = swift_slowAlloc();
      v69[0] = v4;
      *v3 = 136315138;
      swift_getErrorValue();
      v5 = Error.localizedDescription.getter();
      v7 = sub_10028D78C(v5, v6, v69);

      *(v3 + 4) = v7;
      _os_log_impl(&_mh_execute_header, v1, v2, "TTS: translation playback error: %s", v3, 0xCu);
      sub_100008664(v4);
    }

    else
    {
    }
  }

  v8 = *(v0 + 456);
  if (*(v8 + *(v0 + 544)))
  {
    v9 = *(v0 + 576);
    v10 = *(v0 + 568);
    swift_getKeyPath();
    v11 = swift_task_alloc();
    *(v11 + 16) = v8;
    *(v11 + 24) = 0;
    *(v0 + 440) = v8;
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
    v67 = v9;
  }

  else
  {

    v67 = *(v0 + 576);
  }

  while (1)
  {
    v12 = *(v0 + 536);
    v13 = *(v0 + 456);
    swift_getKeyPath();
    *(v0 + 400) = v13;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    if (*(*(v13 + v12) + 16))
    {
      v14 = *(v0 + 536);
      v15 = *(v0 + 456);
      swift_getKeyPath();
      *(v0 + 408) = v15;
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      *(v0 + 416) = v15;
      swift_getKeyPath();
      ObservationRegistrar.willSet<A, B>(_:keyPath:)();

      swift_beginAccess();
      v16 = *(v15 + v14);
      if (!v16[2])
      {
        goto LABEL_36;
      }

      sub_100031DD8((v16 + 4), v0 + 176);
      sub_100009EBC(v0 + 176, &unk_1003B9EC0, &qword_1002D7480);
      v17 = v16[2];
      if (!v17)
      {
        goto LABEL_37;
      }

      v18 = *(v0 + 536);
      v19 = *(v0 + 456);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v19 + v18) = v16;
      if (!isUniquelyReferenced_nonNull_native || (v17 - 1) > v16[3] >> 1)
      {
        v21 = *(v0 + 536);
        v22 = *(v0 + 456);
        v16 = sub_10028CD00(isUniquelyReferenced_nonNull_native, v17, 1, v16);
        *(v22 + v21) = v16;
      }

      v23 = *(v0 + 536);
      v24 = *(v0 + 456);
      sub_100008664(v16 + 4);
      v25 = v16[2];
      memmove(v16 + 4, v16 + 9, 40 * v25 - 40);
      v16[2] = v25 - 1;
      *(v24 + v23) = v16;
      swift_endAccess();
      *(v0 + 424) = v24;
      swift_getKeyPath();
      ObservationRegistrar.didSet<A, B>(_:keyPath:)();
    }

    sub_100008664((v0 + 56));
    v26 = *(v0 + 536);
    v27 = *(v0 + 456);
    swift_getKeyPath();
    *(v0 + 432) = v27;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    if (!*(*(v27 + v26) + 16))
    {
      break;
    }

    v28 = *(v0 + 536);
    v29 = *(v0 + 456);
    swift_getKeyPath();
    *(v0 + 384) = v29;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v30 = *(v29 + v28);
    if (!*(v30 + 16))
    {
      __break(1u);
LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
      return;
    }

    sub_100031DD8(v30 + 32, v0 + 56);
    if (qword_1003A92B0 != -1)
    {
      swift_once();
    }

    v31 = *(v0 + 464);
    v32 = type metadata accessor for Logger();
    *(v0 + 552) = sub_1000078E8(v32, qword_1003D2920);
    sub_100031DD8(v31, v0 + 96);
    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v69[0] = v36;
      *v35 = 136315138;
      sub_100031DD8(v0 + 96, v0 + 216);
      sub_100005AD4(&qword_1003AC710, &unk_1002E7640);
      v37 = String.init<A>(describing:)();
      v39 = v38;
      sub_100008664((v0 + 96));
      v40 = sub_10028D78C(v37, v39, v69);

      *(v35 + 4) = v40;
      _os_log_impl(&_mh_execute_header, v33, v34, "TTS: start and waiting for translationResult to finish TTS playback: %s", v35, 0xCu);
      sub_100008664(v36);
    }

    else
    {

      sub_100008664((v0 + 96));
    }

    sub_1000085CC((v0 + 56), *(v0 + 80));
    v41 = dispatch thunk of TranslationResult.alternatives.getter();
    if (*(v41 + 16))
    {
      v68 = *(v0 + 544);
      v44 = *(v0 + 480);
      v43 = *(v0 + 488);
      v45 = *(v0 + 472);
      v46 = *(v0 + 456);
      sub_100031DD8(v41 + 32, v0 + 136);

      sub_1000085CC((v0 + 136), *(v0 + 160));
      TranslationAlternative.displayString.getter();
      *(v0 + 560) = v47;
      sub_100008664((v0 + 136));
      sub_1000085CC((v0 + 56), *(v0 + 80));
      dispatch thunk of TranslationResult.locale.getter();
      v48 = Locale.identifier.getter();
      v50 = v49;
      (*(v44 + 8))(v43, v45);
      sub_1001F5660(v48, v50);
      v52 = v51;

      objc_allocWithZone(type metadata accessor for SpeechRequest());

      v53 = v52;
      v54 = SpeechRequest.init(text:voice:)();
      *(v0 + 568) = v54;
      SynthesizingRequestProtocol.privacySensitive.setter();
      SynthesizingRequestProtocol.synthesisPriority.setter();

      v55 = *(v46 + v68);
      if (v55)
      {
        v56 = v54;
        v57 = v55;
        v58 = static NSObject.== infix(_:_:)();

        if (v58)
        {
          v59 = *(v0 + 544);
          v60 = *(v0 + 456);
          v61 = *(v60 + v59);
          *(v60 + v59) = v54;

          v62 = v67;
LABEL_32:
          *(v0 + 576) = v62;
          v66 = swift_task_alloc();
          *(v0 + 584) = v66;
          *v66 = v0;
          v66[1] = sub_1001EEE1C;

          sub_1001F6158(v54);
          return;
        }
      }

      else
      {
        v63 = v54;
      }

      v64 = *(v0 + 456);
      swift_getKeyPath();
      v65 = swift_task_alloc();
      *(v65 + 16) = v64;
      *(v65 + 24) = v54;
      *(v0 + 392) = v64;
      v62 = v67;
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

      goto LABEL_32;
    }
  }

  v42 = *(v0 + 8);

  v42();
}

void sub_1001EF834(void *a1, uint64_t a2)
{
  v4 = dispatch thunk of AudioData.packetCount.getter();
  if ((v4 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  v5 = v4;
  if (HIDWORD(v4))
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  dispatch thunk of AudioData.asbd.getter();
  v6 = v5 * v15;
  if ((v6 & 0xFFFFFFFF00000000) == 0)
  {
    v7 = v6;
    dispatch thunk of AudioData.asbd.getter();
    swift_beginAccess();
    *(a2 + 16) = v7 / v16 + *(a2 + 16);
    if (qword_1003A92B0 == -1)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_10:
  __break(1u);
LABEL_11:
  swift_once();
LABEL_5:
  v8 = type metadata accessor for Logger();
  sub_1000078E8(v8, qword_1003D2920);
  v9 = a1;
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v12 = 138412290;
    *(v12 + 4) = v9;
    *v13 = v9;
    v14 = v9;
    _os_log_impl(&_mh_execute_header, v10, v11, "TTS: didGenerateAudio: %@", v12, 0xCu);
    sub_100009EBC(v13, &unk_1003AECA0, &unk_1002D3F10);
  }
}

void sub_1001EF9F8(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = *(a2 + 16);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a2 + 16) = v4;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v4 = sub_10028D21C(0, v4[2] + 1, 1, v4);
    *(a2 + 16) = v4;
  }

  v7 = v4[2];
  v6 = v4[3];
  if (v7 >= v6 >> 1)
  {
    v4 = sub_10028D21C((v6 > 1), v7 + 1, 1, v4);
  }

  v4[2] = v7 + 1;
  v4[v7 + 4] = a1;
  *(a2 + 16) = v4;
  swift_endAccess();
  if (qword_1003A92B0 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_1000078E8(v8, qword_1003D2920);

  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v16[0] = v12;
    *v11 = 136315138;
    type metadata accessor for WordTimingInfo();
    v13 = Array.description.getter();
    v15 = sub_10028D78C(v13, v14, v16);

    *(v11 + 4) = v15;
    _os_log_impl(&_mh_execute_header, v9, v10, "TTS: didGenerateWordTimings: %s", v11, 0xCu);
    sub_100008664(v12);
  }
}

unint64_t sub_1001EFBF8()
{
  result = qword_1003B79E8;
  if (!qword_1003B79E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B79E8);
  }

  return result;
}

double sub_1001EFCCC()
{
  v1 = v0;
  v2 = sub_100005AD4(&qword_1003AA3B8, &unk_1002D3EF0);
  __chkstk_darwin(v2 - 8);
  v4 = &v14 - v3;
  if (qword_1003A92B0 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_1000078E8(v5, qword_1003D2920);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, v7, "Rendering segments started", v8, 2u);
  }

  v9 = type metadata accessor for TaskPriority();
  (*(*(v9 - 8) + 56))(v4, 1, 1, v9);
  type metadata accessor for MainActor();

  v10 = static MainActor.shared.getter();
  v11 = swift_allocObject();
  v11[2] = v10;
  v11[3] = &protocol witness table for MainActor;
  v11[4] = v1;
  v12 = sub_10005E36C(0, 0, v4, &unk_1002E77A8, v11);
  return sub_1001D4EBC(v12);
}

uint64_t sub_1001EFEB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[63] = a4;
  v5 = type metadata accessor for ContinuousClock.Instant();
  v4[64] = v5;
  v4[65] = *(v5 - 8);
  v4[66] = swift_task_alloc();
  v4[67] = swift_task_alloc();
  v6 = type metadata accessor for ContinuousClock();
  v4[68] = v6;
  v4[69] = *(v6 - 8);
  v4[70] = swift_task_alloc();
  type metadata accessor for MainActor();
  v4[71] = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[72] = v8;
  v4[73] = v7;

  return _swift_task_switch(sub_1001F0010, v8, v7);
}

uint64_t sub_1001F0010()
{
  v1 = (v0 + 216);
  *(v0 + 592) = OBJC_IVAR____TtC17SequoiaTranslator27PersonalTranslatorViewModel___observationRegistrar;
  *(v0 + 600) = OBJC_IVAR____TtC17SequoiaTranslator27PersonalTranslatorViewModel__renderingSegments;
  *(v0 + 608) = OBJC_IVAR____TtC17SequoiaTranslator27PersonalTranslatorViewModel__groupedRenderingSegmentsDisplayText;
  swift_beginAccess();
  swift_beginAccess();
  while (1)
  {
    v2 = *(v0 + 600);
    v3 = *(v0 + 504);
    swift_getKeyPath();
    *(v0 + 480) = v3;
    *(v0 + 616) = sub_1001F6DA0(&qword_1003B4900, type metadata accessor for PersonalTranslatorViewModel, &unk_1002E7508);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v4 = *(v3 + v2);
    if (v4 >> 62)
    {
      if (!_CocoaArrayWrapper.endIndex.getter())
      {
LABEL_61:

        goto LABEL_66;
      }
    }

    else if (!*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_61;
    }

    v5 = *(v0 + 600);
    v6 = *(v0 + 504);
    swift_getKeyPath();
    *(v0 + 472) = v6;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v7 = *(v6 + v5);
    if (v7 >> 62)
    {
      break;
    }

    if (!*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_62;
    }

LABEL_7:
    if ((v7 & 0xC000000000000001) != 0)
    {

      v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (!*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
LABEL_75:
        __break(1u);
LABEL_76:
        __break(1u);
LABEL_77:
        __break(1u);
        goto LABEL_78;
      }

      v8 = *(v7 + 32);
    }

    *(v0 + 624) = v8;
    if (qword_1003A92B0 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    *(v0 + 632) = sub_1000078E8(v9, qword_1003D2920);

    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = *(v0 + 600);
      v13 = *(v0 + 504);
      v14 = swift_slowAlloc();
      *v14 = 134217984;
      swift_getKeyPath();
      *(v0 + 496) = v13;
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v15 = *(v13 + v12);
      if (v15 >> 62)
      {
        v16 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v16 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      *(v14 + 4) = v16;

      _os_log_impl(&_mh_execute_header, v10, v11, "In rendering segments loop. Count: %ld", v14, 0xCu);

      v1 = (v0 + 216);
    }

    else
    {
    }

    v17 = sub_1001FC270();
    v18 = v17;
    *(v0 + 432) = v17;
    if (*(v17 + 2))
    {
      *(v0 + 648) = v17;
      *(v0 + 640) = v17 + 16;
      *(v0 + 656) = *(v17 + 4);
      *(v0 + 664) = *(v17 + 5);
      v50 = *(v17 + 6);
      *(v0 + 361) = v17[56];
      swift_bridgeObjectRetain_n();
      v51 = Logger.logObject.getter();
      v52 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v51, v52))
      {
        v53 = swift_slowAlloc();
        *v53 = 134218240;
        *(v53 + 4) = *(v18 + 2);
        *(v53 + 12) = 2048;
        *(v53 + 14) = v50;
        _os_log_impl(&_mh_execute_header, v51, v52, "In rendering word intervals loop. Count: %ld. timeSinceLastWord: %f", v53, 0x16u);
      }

      v54 = static Duration.seconds(_:)();
      v56 = v55;
      static Clock<>.continuous.getter();
      *(v0 + 400) = v54;
      *(v0 + 408) = v56;
      *(v0 + 344) = 1000000000000000;
      *(v0 + 352) = 0;
      *(v0 + 360) = 0;
      v41 = sub_1001F0AD4;
      v42 = 0;
      v43 = 0;

      return _swift_task_switch(v41, v42, v43);
    }

    sub_10001F620(*(v0 + 624) + 88, v0 + 176, &unk_1003B9EC0, &qword_1002D7480);
    if (*(v0 + 200))
    {
      v19 = *(v0 + 624);
      sub_100051124((v0 + 176), v0 + 16);
      sub_10001F620(v19 + 48, v0 + 96, &unk_1003AECE0, &unk_1002DA2D0);
      if (*(v0 + 120))
      {
        sub_100051124((v0 + 96), v0 + 136);
        sub_1000085CC((v0 + 16), *(v0 + 40));
        if (dispatch thunk of TranslationResult.isFinal.getter())
        {
          *(v0 + 80) = &type metadata for TranslateFeatures;
          *(v0 + 88) = sub_100009DF8();
          *(v0 + 56) = 11;
          v20 = isFeatureEnabled(_:)();
          sub_100008664((v0 + 56));
          if (v20)
          {
            v21 = Logger.logObject.getter();
            v22 = static os_log_type_t.default.getter();
            if (os_log_type_enabled(v21, v22))
            {
              v23 = swift_slowAlloc();
              *v23 = 0;
              _os_log_impl(&_mh_execute_header, v21, v22, "In rendering loop, finalizing translation", v23, 2u);
            }

            sub_1001DE554((v0 + 136), (v0 + 16));
          }

          v24 = *(v0 + 504);
          v25 = (v24 + *(v0 + 608));
          if (v25[1])
          {
            swift_getKeyPath();
            v26 = swift_task_alloc();
            v26[3] = 0;
            v26[4] = 0;
            v26[2] = v24;
            *(v0 + 488) = v24;
            ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
          }

          else
          {
            *v25 = 0;
            v25[1] = 0;
          }

          sub_100008664((v0 + 136));
          sub_100008664((v0 + 16));
          goto LABEL_36;
        }

        sub_100008664((v0 + 136));
      }

      else
      {
        sub_100009EBC(v0 + 96, &unk_1003AECE0, &unk_1002DA2D0);
      }

      sub_100008664((v0 + 16));
    }

    else
    {
      sub_100009EBC(v0 + 176, &unk_1003B9EC0, &qword_1002D7480);
    }

    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&_mh_execute_header, v27, v28, "In rendering loop continuing to next segment in the same speech result", v29, 2u);
    }

    v30 = sub_1001D550C(v1);
    if (*(v31 + 8))
    {
      v32._countAndFlagsBits = 32;
      v32._object = 0xE100000000000000;
      String.append(_:)(v32);
    }

    (v30)(v1, 0);
LABEL_36:
    v33 = *(v0 + 600);
    v34 = *(v0 + 504);
    swift_getKeyPath();
    *(v0 + 440) = v34;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v35 = *(v34 + v33);
    if (!(v35 >> 62))
    {
      if (!*((v35 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_2;
      }

LABEL_38:
      v36 = *(v0 + 600);
      v37 = *(v0 + 504);
      swift_getKeyPath();
      *(v0 + 448) = v37;
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      *(v0 + 456) = v37;
      swift_getKeyPath();
      ObservationRegistrar.willSet<A, B>(_:keyPath:)();

      swift_beginAccess();
      v38 = *(v37 + v36);
      v39 = v38 >> 62;
      if (v38 >> 62)
      {
        v41 = _CocoaArrayWrapper.endIndex.getter();
        if (!v41)
        {
          __break(1u);
LABEL_80:
          __break(1u);
          return _swift_task_switch(v41, v42, v43);
        }

        v41 = _CocoaArrayWrapper.endIndex.getter();
        if (!v41)
        {
          goto LABEL_80;
        }
      }

      else if (!*((v38 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_75;
      }

      if ((v38 & 0xC000000000000001) != 0)
      {
        specialized _ArrayBuffer._getElementSlowPath(_:)();
        swift_unknownObjectRelease();
        if (!v39)
        {
          if (!*((v38 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_77;
          }

          goto LABEL_44;
        }
      }

      else
      {
        if (!*((v38 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_76;
        }

        if (!v39)
        {
LABEL_44:
          v40 = *(v0 + 504);
          sub_1002B57F0(0, 1);
          swift_endAccess();
          *(v0 + 464) = v40;
          swift_getKeyPath();
          ObservationRegistrar.didSet<A, B>(_:keyPath:)();

          goto LABEL_2;
        }
      }

      if (!_CocoaArrayWrapper.endIndex.getter())
      {
        goto LABEL_77;
      }

      goto LABEL_44;
    }

    if (_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_38;
    }

LABEL_2:
  }

  if (_CocoaArrayWrapper.endIndex.getter())
  {
    goto LABEL_7;
  }

LABEL_62:

  if (qword_1003A92B0 == -1)
  {
    goto LABEL_63;
  }

LABEL_78:
  swift_once();
LABEL_63:
  v44 = type metadata accessor for Logger();
  sub_1000078E8(v44, qword_1003D2920);
  v45 = Logger.logObject.getter();
  v46 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v45, v46))
  {
    v47 = swift_slowAlloc();
    *v47 = 0;
    _os_log_impl(&_mh_execute_header, v45, v46, "No segment in the rendering loop", v47, 2u);
  }

LABEL_66:

  v48 = *(v0 + 8);

  return v48();
}

uint64_t sub_1001F0AD4()
{
  v1 = v0[66];
  v2 = v0[65];
  v3 = v0[64];
  v4 = sub_1001F6DA0(&qword_1003B48E8, &type metadata accessor for ContinuousClock, &protocol conformance descriptor for ContinuousClock);
  dispatch thunk of Clock.now.getter();
  sub_1001F6DA0(&qword_1003B48F0, &type metadata accessor for ContinuousClock.Instant, &protocol conformance descriptor for ContinuousClock.Instant);
  dispatch thunk of InstantProtocol.advanced(by:)();
  v5 = *(v2 + 8);
  v0[84] = v5;
  v0[85] = (v2 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v5(v1, v3);
  v6 = swift_task_alloc();
  v0[86] = v6;
  *v6 = v0;
  v6[1] = sub_1001F0C68;
  v7 = v0[68];
  v8 = v0[67];

  return dispatch thunk of Clock.sleep(until:tolerance:)(v8, v0 + 43, v7, v4);
}

uint64_t sub_1001F0C68()
{
  v2 = *v1;
  *(*v1 + 696) = v0;

  if (v0)
  {
    (*(v2 + 672))(*(v2 + 536), *(v2 + 512));
    v3 = sub_1001F1BD4;
    v4 = 0;
    v5 = 0;
  }

  else
  {
    v6 = *(v2 + 560);
    v7 = *(v2 + 552);
    v8 = *(v2 + 544);
    (*(v2 + 672))(*(v2 + 536), *(v2 + 512));
    (*(v7 + 8))(v6, v8);
    v5 = *(v2 + 584);
    v4 = *(v2 + 576);
    v3 = sub_1001F0DDC;
  }

  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_1001F0DDC()
{
  v86 = v0;
  v1 = *(v0 + 504);
  v2 = v1 + *(v0 + 608);
  swift_getKeyPath();
  *(v0 + 416) = v1;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*(v2 + 8))
  {
    v3 = *(*(v0 + 504) + *(v0 + 608));
    v4 = *(v2 + 8);
  }

  else
  {
    v3 = 0;
    v4 = 0xE000000000000000;
  }

  v5 = *(v0 + 361);
  v6 = *(v0 + 664);
  v7 = *(v0 + 656);
  *(v0 + 368) = v3;
  *(v0 + 376) = v4;
  *(v0 + 384) = v7;
  *(v0 + 392) = v6;

  if (v5 == 1)
  {
    v8._countAndFlagsBits = 32;
    v8._object = 0xE100000000000000;
    String.append(_:)(v8);
    v7 = *(v0 + 384);
    v6 = *(v0 + 392);
  }

  v9 = (*(v0 + 504) + *(v0 + 608));
  v10._countAndFlagsBits = v7;
  v10._object = v6;
  String.append(_:)(v10);

  v12 = *(v0 + 368);
  v11 = *(v0 + 376);
  v13 = v9[1];
  if (v13 && (*v9 == v12 && v13 == v11 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
  {
    v14 = (*(v0 + 504) + *(v0 + 608));
    *v14 = v12;
    v14[1] = v11;
  }

  else
  {
    v15 = *(v0 + 504);
    swift_getKeyPath();
    v16 = swift_task_alloc();
    v16[2] = v15;
    v16[3] = v12;
    v16[4] = v11;
    *(v0 + 424) = v15;
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = *(v0 + 361);
    v20 = *(v0 + 664);
    v21 = *(v0 + 656);
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v85 = v23;
    *v22 = 134218499;
    *(v22 + 4) = String.count.getter();
    *(v22 + 12) = 2085;
    *(v22 + 14) = sub_10028D78C(v21, v20, &v85);
    *(v22 + 22) = 1024;

    *(v22 + 24) = v19;

    _os_log_impl(&_mh_execute_header, v17, v18, "Rendered word. Word length: %ld Word: %{sensitive}s. Has space after: %{BOOL}d", v22, 0x1Cu);
    sub_100008664(v23);
  }

  else
  {
    swift_bridgeObjectRelease_n();
  }

  v24 = *(v0 + 640);
  if (*v24)
  {
    swift_beginAccess();
    v25 = *v24;
    if (!v25)
    {
LABEL_99:
      __break(1u);
LABEL_100:
      swift_once();
LABEL_88:
      v79 = type metadata accessor for Logger();
      sub_1000078E8(v79, qword_1003D2920);
      v80 = Logger.logObject.getter();
      v81 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v80, v81))
      {
        v82 = swift_slowAlloc();
        *v82 = 0;
        _os_log_impl(&_mh_execute_header, v80, v81, "No segment in the rendering loop", v82, 2u);
      }

LABEL_91:

      v83 = *(v0 + 8);

      return v83();
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = *(v0 + 648);
    if (!isUniquelyReferenced_nonNull_native || (v25 - 1) > *(v27 + 3) >> 1)
    {
      v27 = sub_10028D350(isUniquelyReferenced_nonNull_native, v25, 1, *(v0 + 648));
    }

    sub_1001F6E4C((v27 + 32));
    v28 = *(v27 + 2);
    memmove(v27 + 32, v27 + 64, 32 * v28 - 32);
    *(v27 + 2) = v28 - 1;
    *(v0 + 432) = v27;
    swift_endAccess();
  }

  else
  {
    v27 = *(v0 + 648);
  }

  v29 = v27 + 16;
  if (*(v27 + 2))
  {
LABEL_23:
    *(v0 + 648) = v27;
    *(v0 + 640) = v29;
    *(v0 + 656) = *(v27 + 4);
    *(v0 + 664) = *(v27 + 5);
    v30 = *(v27 + 6);
    *(v0 + 361) = v27[56];
    swift_bridgeObjectRetain_n();
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 134218240;
      *(v33 + 4) = *v29;
      *(v33 + 12) = 2048;
      *(v33 + 14) = v30;
      _os_log_impl(&_mh_execute_header, v31, v32, "In rendering word intervals loop. Count: %ld. timeSinceLastWord: %f", v33, 0x16u);
    }

    v34 = static Duration.seconds(_:)();
    v36 = v35;
    static Clock<>.continuous.getter();
    *(v0 + 400) = v34;
    *(v0 + 408) = v36;
    *(v0 + 344) = 1000000000000000;
    *(v0 + 352) = 0;
    *(v0 + 360) = 0;
    v37 = sub_1001F0AD4;
    v38 = 0;
    v39 = 0;

    return _swift_task_switch(v37, v38, v39);
  }

  v40 = (v0 + 216);
  while (1)
  {
    sub_10001F620(*(v0 + 624) + 88, v0 + 176, &unk_1003B9EC0, &qword_1002D7480);
    if (*(v0 + 200))
    {
      v42 = *(v0 + 624);
      sub_100051124((v0 + 176), v0 + 16);
      sub_10001F620(v42 + 48, v0 + 96, &unk_1003AECE0, &unk_1002DA2D0);
      if (*(v0 + 120))
      {
        sub_100051124((v0 + 96), v0 + 136);
        sub_1000085CC((v0 + 16), *(v0 + 40));
        if (dispatch thunk of TranslationResult.isFinal.getter())
        {
          *(v0 + 80) = &type metadata for TranslateFeatures;
          *(v0 + 88) = sub_100009DF8();
          *(v0 + 56) = 11;
          v43 = isFeatureEnabled(_:)();
          sub_100008664((v0 + 56));
          if (v43)
          {
            v44 = Logger.logObject.getter();
            v45 = static os_log_type_t.default.getter();
            if (os_log_type_enabled(v44, v45))
            {
              v46 = swift_slowAlloc();
              *v46 = 0;
              _os_log_impl(&_mh_execute_header, v44, v45, "In rendering loop, finalizing translation", v46, 2u);
            }

            sub_1001DE554((v0 + 136), (v0 + 16));
          }

          v47 = *(v0 + 504);
          v48 = (v47 + *(v0 + 608));
          if (v48[1])
          {
            swift_getKeyPath();
            v49 = swift_task_alloc();
            v49[3] = 0;
            v49[4] = 0;
            v49[2] = v47;
            *(v0 + 488) = v47;
            ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
          }

          else
          {
            *v48 = 0;
            v48[1] = 0;
          }

          sub_100008664((v0 + 136));
          sub_100008664((v0 + 16));
          goto LABEL_49;
        }

        sub_100008664((v0 + 136));
      }

      else
      {
        sub_100009EBC(v0 + 96, &unk_1003AECE0, &unk_1002DA2D0);
      }

      sub_100008664((v0 + 16));
    }

    else
    {
      sub_100009EBC(v0 + 176, &unk_1003B9EC0, &qword_1002D7480);
    }

    v50 = Logger.logObject.getter();
    v51 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      *v52 = 0;
      _os_log_impl(&_mh_execute_header, v50, v51, "In rendering loop continuing to next segment in the same speech result", v52, 2u);
    }

    v53 = sub_1001D550C(v40);
    if (*(v54 + 8))
    {
      v55._countAndFlagsBits = 32;
      v55._object = 0xE100000000000000;
      String.append(_:)(v55);
    }

    (v53)(v40, 0);
LABEL_49:
    v56 = *(v0 + 600);
    v57 = *(v0 + 504);
    swift_getKeyPath();
    *(v0 + 440) = v57;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v58 = *(v57 + v56);
    if (!(v58 >> 62))
    {
      break;
    }

    if (_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_51;
    }

LABEL_61:

    v64 = *(v0 + 600);
    v65 = *(v0 + 504);
    swift_getKeyPath();
    *(v0 + 480) = v65;
    *(v0 + 616) = sub_1001F6DA0(&qword_1003B4900, type metadata accessor for PersonalTranslatorViewModel, &unk_1002E7508);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v66 = *(v65 + v64);
    if (v66 >> 62)
    {
      if (!_CocoaArrayWrapper.endIndex.getter())
      {
LABEL_86:

        goto LABEL_91;
      }
    }

    else if (!*((v66 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_86;
    }

    v67 = *(v0 + 600);
    v68 = *(v0 + 504);
    swift_getKeyPath();
    *(v0 + 472) = v68;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v69 = *(v68 + v67);
    if (v69 >> 62)
    {
      if (!_CocoaArrayWrapper.endIndex.getter())
      {
LABEL_87:

        if (qword_1003A92B0 != -1)
        {
          goto LABEL_100;
        }

        goto LABEL_88;
      }
    }

    else if (!*((v69 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_87;
    }

    if ((v69 & 0xC000000000000001) != 0)
    {

      v70 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (!*((v69 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
LABEL_96:
        __break(1u);
LABEL_97:
        __break(1u);
LABEL_98:
        __break(1u);
        goto LABEL_99;
      }

      v70 = *(v69 + 32);
    }

    *(v0 + 624) = v70;
    if (qword_1003A92B0 != -1)
    {
      swift_once();
    }

    v71 = type metadata accessor for Logger();
    *(v0 + 632) = sub_1000078E8(v71, qword_1003D2920);

    v72 = Logger.logObject.getter();
    v73 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v72, v73))
    {
      v74 = *(v0 + 600);
      v75 = *(v0 + 504);
      v76 = swift_slowAlloc();
      *v76 = 134217984;
      swift_getKeyPath();
      *(v0 + 496) = v75;
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v77 = *(v75 + v74);
      if (v77 >> 62)
      {
        v78 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v78 = *((v77 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v40 = (v0 + 216);
      *(v76 + 4) = v78;

      _os_log_impl(&_mh_execute_header, v72, v73, "In rendering segments loop. Count: %ld", v76, 0xCu);
    }

    else
    {
    }

    v41 = sub_1001FC270();
    v27 = v41;
    *(v0 + 432) = v41;
    if (*(v41 + 2))
    {
      v29 = v41 + 16;
      goto LABEL_23;
    }
  }

  if (!*((v58 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_61;
  }

LABEL_51:
  v59 = *(v0 + 600);
  v60 = *(v0 + 504);
  swift_getKeyPath();
  *(v0 + 448) = v60;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *(v0 + 456) = v60;
  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  swift_beginAccess();
  v61 = *(v60 + v59);
  v62 = v61 >> 62;
  if (!(v61 >> 62))
  {
    if (!*((v61 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_96;
    }

    goto LABEL_53;
  }

  v37 = _CocoaArrayWrapper.endIndex.getter();
  if (v37)
  {
    v37 = _CocoaArrayWrapper.endIndex.getter();
    if (!v37)
    {
      goto LABEL_102;
    }

LABEL_53:
    if ((v61 & 0xC000000000000001) != 0)
    {
      specialized _ArrayBuffer._getElementSlowPath(_:)();
      swift_unknownObjectRelease();
      if (v62)
      {
LABEL_56:
        if (!_CocoaArrayWrapper.endIndex.getter())
        {
          goto LABEL_98;
        }
      }

      else if (!*((v61 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_98;
      }
    }

    else
    {
      if (!*((v61 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_97;
      }

      if (v62)
      {
        goto LABEL_56;
      }
    }

    v63 = *(v0 + 504);
    sub_1002B57F0(0, 1);
    swift_endAccess();
    *(v0 + 464) = v63;
    swift_getKeyPath();
    ObservationRegistrar.didSet<A, B>(_:keyPath:)();

    goto LABEL_61;
  }

  __break(1u);
LABEL_102:
  __break(1u);
  return _swift_task_switch(v37, v38, v39);
}

uint64_t sub_1001F1BD4()
{
  (*(v0[69] + 8))(v0[70], v0[68]);

  v1 = v0[73];
  v2 = v0[72];

  return _swift_task_switch(sub_1001F1C5C, v2, v1);
}

uint64_t sub_1001F1C5C()
{

  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    *v3 = 138412290;
    swift_errorRetain();
    v5 = _swift_stdlib_bridgeErrorToNSError();
    *(v3 + 4) = v5;
    *v4 = v5;
    _os_log_impl(&_mh_execute_header, v1, v2, "Rendering task cancelled: %@", v3, 0xCu);
    sub_100009EBC(v4, &unk_1003AECA0, &unk_1002D3F10);
  }

  else
  {
  }

  v6 = *(v0 + 8);

  return v6();
}

double sub_1001F1E0C()
{
  if (qword_1003A9170 != -1)
  {
    swift_once();
  }

  swift_getKeyPath();
  sub_1001F6DA0(&qword_1003AA3A0, type metadata accessor for AudioRouteManager, &unk_1002D3BF4);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return result;
}

double sub_1001F1EDC(uint64_t a1)
{
  v1 = sub_100005AD4(&qword_1003AA3B8, &unk_1002D3EF0);
  __chkstk_darwin(v1 - 8);
  v3 = &v10 - v2;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    withObservationTracking<A>(_:onChange:)();
    v7 = type metadata accessor for TaskPriority();
    (*(*(v7 - 8) + 56))(v3, 1, 1, v7);
    type metadata accessor for MainActor();

    v8 = static MainActor.shared.getter();
    v9 = swift_allocObject();
    v9[2] = v8;
    v9[3] = &protocol witness table for MainActor;
    v9[4] = v6;
    sub_10005E36C(0, 0, v3, &unk_1002E7A10, v9);
  }

  return result;
}

uint64_t sub_1001F2070(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  type metadata accessor for MainActor();
  v4[3] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[4] = v6;
  v4[5] = v5;

  return _swift_task_switch(sub_1001F2108, v6, v5);
}

uint64_t sub_1001F2108()
{
  if (qword_1003A9170 != -1)
  {
    swift_once();
  }

  if (sub_1000191E0())
  {

    return _swift_task_switch(sub_1001F21E0, 0, 0);
  }

  else
  {

    v1 = *(v0 + 8);

    return v1();
  }
}

uint64_t sub_1001F21E0()
{
  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  *(v1 + 16) = 4;
  v2 = swift_task_alloc();
  *(v0 + 56) = v2;
  *v2 = v0;
  v2[1] = sub_1001F22CC;

  return withCheckedContinuation<A>(isolation:function:_:)(v2, 0, 0, 0xD000000000000017, 0x80000001002F6AB0, sub_1001854FC, v1, &type metadata for () + 8);
}

uint64_t sub_1001F22CC()
{

  return _swift_task_switch(sub_1001F23E4, 0, 0);
}

uint64_t sub_1001F23FC()
{

  sub_1001DF9B0();
  v1 = *(v0 + 8);

  return v1();
}

void sub_1001F2460(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for GenerativeModelsAvailability.Availability();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v33 - v8;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    if (qword_1003A92B0 != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    v13 = sub_1000078E8(v12, qword_1003D2920);
    v38 = *(v4 + 16);
    v39 = a1;
    v38(v9, a1, v3);
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v37 = v13;
      v17 = v16;
      v34 = swift_slowAlloc();
      v40 = v34;
      *v17 = 136315138;
      sub_1001F6DA0(&qword_1003B7A10, &type metadata accessor for GenerativeModelsAvailability.Availability, &protocol conformance descriptor for GenerativeModelsAvailability.Availability);
      v18 = dispatch thunk of CustomStringConvertible.description.getter();
      v35 = v11;
      v36 = v7;
      v19 = v4;
      v21 = v20;
      v22 = *(v19 + 8);
      v22(v9, v3);
      v23 = sub_10028D78C(v18, v21, &v40);
      v4 = v19;
      v7 = v36;

      *(v17 + 4) = v23;
      v24 = v22;
      v11 = v35;
      _os_log_impl(&_mh_execute_header, v14, v15, "appleIntelligenceAvailbilityChanged to: %s.", v17, 0xCu);
      sub_100008664(v34);
    }

    else
    {

      v24 = *(v4 + 8);
      v24(v9, v3);
    }

    v38(v7, v39, v3);
    v25 = (*(v4 + 88))(v7, v3);
    if (v25 == enum case for GenerativeModelsAvailability.Availability.restricted(_:))
    {
      v24(v7, v3);
    }

    else if (v25 == enum case for GenerativeModelsAvailability.Availability.unavailable(_:) || v25 != enum case for GenerativeModelsAvailability.Availability.available(_:))
    {
      v24(v7, v3);
      v27 = 0;
      v28 = (v11 + OBJC_IVAR____TtC17SequoiaTranslator27PersonalTranslatorViewModel__appleIntelligenceEnabled);
      if (*(v11 + OBJC_IVAR____TtC17SequoiaTranslator27PersonalTranslatorViewModel__appleIntelligenceEnabled))
      {
LABEL_16:
        KeyPath = swift_getKeyPath();
        __chkstk_darwin(KeyPath);
        *(&v33 - 2) = v11;
        *(&v33 - 8) = v27;
        v40 = v11;
        sub_1001F6DA0(&qword_1003B4900, type metadata accessor for PersonalTranslatorViewModel, &unk_1002E7508);
        ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

LABEL_17:
        sub_1001DC2DC();

        v30 = Logger.logObject.getter();
        v31 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v30, v31))
        {
          v32 = swift_slowAlloc();
          *v32 = 67109120;
          swift_getKeyPath();
          v40 = v11;
          sub_1001F6DA0(&qword_1003B4900, type metadata accessor for PersonalTranslatorViewModel, &unk_1002E7508);
          ObservationRegistrar.access<A, B>(_:keyPath:)();

          *(v32 + 4) = *v28;

          _os_log_impl(&_mh_execute_header, v30, v31, "appleIntelligenceOptedIn %{BOOL}d.", v32, 8u);
        }

        else
        {
        }

        return;
      }

LABEL_14:
      *v28 = v27;
      sub_1001DF1B0();
      goto LABEL_17;
    }

    v28 = (v11 + OBJC_IVAR____TtC17SequoiaTranslator27PersonalTranslatorViewModel__appleIntelligenceEnabled);
    v27 = 1;
    if (*(v11 + OBJC_IVAR____TtC17SequoiaTranslator27PersonalTranslatorViewModel__appleIntelligenceEnabled) != 1)
    {
      goto LABEL_16;
    }

    goto LABEL_14;
  }
}

uint64_t sub_1001F2A0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 56) = v5;
  v12 = type metadata accessor for ContinuousClock.Instant();
  *(v6 + 64) = v12;
  *(v6 + 72) = *(v12 - 8);
  *(v6 + 80) = swift_task_alloc();
  *(v6 + 88) = swift_task_alloc();
  *(v6 + 40) = a1;
  *(v6 + 48) = a2;
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  *(v6 + 32) = a5 & 1;

  return _swift_task_switch(sub_1001F2B0C, 0, 0);
}

uint64_t sub_1001F2B0C()
{
  v1 = v0[10];
  v2 = v0[8];
  v3 = v0[9];
  v4 = type metadata accessor for ContinuousClock();
  v5 = sub_1001F6DA0(&qword_1003B48E8, &type metadata accessor for ContinuousClock, &protocol conformance descriptor for ContinuousClock);
  dispatch thunk of Clock.now.getter();
  sub_1001F6DA0(&qword_1003B48F0, &type metadata accessor for ContinuousClock.Instant, &protocol conformance descriptor for ContinuousClock.Instant);
  dispatch thunk of InstantProtocol.advanced(by:)();
  v6 = *(v3 + 8);
  v0[12] = v6;
  v0[13] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v1, v2);
  v7 = swift_task_alloc();
  v0[14] = v7;
  *v7 = v0;
  v7[1] = sub_1001F2C9C;
  v8 = v0[11];

  return dispatch thunk of Clock.sleep(until:tolerance:)(v8, v0 + 2, v4, v5);
}

uint64_t sub_1001F2C9C()
{
  v2 = *(*v1 + 96);
  v3 = *(*v1 + 88);
  v4 = *(*v1 + 64);
  v5 = *v1;
  *(v5 + 120) = v0;

  v2(v3, v4);
  if (v0)
  {

    return _swift_task_switch(sub_1001F2E58, 0, 0);
  }

  else
  {

    v6 = *(v5 + 8);

    return v6();
  }
}

uint64_t sub_1001F2E58()
{

  v1 = *(v0 + 8);

  return v1();
}

Swift::Int sub_1001F2EC4(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1002C11B8(v2);
  }

  v3 = v2[2];
  v5[0] = (v2 + 4);
  v5[1] = v3;
  result = sub_1001F2F30(v5);
  *a1 = v2;
  return result;
}

Swift::Int sub_1001F2F30(uint64_t *a1)
{
  v2 = a1[1];
  result = _minimumMergeRunLength(_:)(v2);
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = _swiftEmptyArrayStorage;
      }

      else
      {
        sub_100005AD4(&qword_1003AF400, &unk_1002E7C20);
        v5 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        v5[2] = v2 / 2;
      }

      v7[0] = v5 + 4;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_1001F311C(v7, v8, a1, v4);
      v6[2] = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_1001F3038(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1001F3038(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 24 * a3 - 24;
    v8 = result - a3;
LABEL_5:
    v9 = (v6 + 24 * v4);
    result = *v9;
    v10 = v9[1];
    v11 = v8;
    v12 = v7;
    while (1)
    {
      v13 = result == *v12 && v10 == *(v12 + 8);
      if (v13 || (result = _stringCompareWithSmolCheck(_:_:expecting:)(), (result & 1) == 0))
      {
LABEL_4:
        ++v4;
        v7 += 24;
        --v8;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v6)
      {
        break;
      }

      v14 = *(v12 + 32);
      v15 = *(v12 + 16);
      result = *(v12 + 24);
      *(v12 + 24) = *v12;
      *(v12 + 40) = v15;
      *v12 = result;
      *(v12 + 8) = v14;
      v10 = v14;
      v12 -= 24;
      if (__CFADD__(v11++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1001F311C(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = a3;
  v101 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = _swiftEmptyArrayStorage;
LABEL_105:
    v101 = *v101;
    if (!v101)
    {
      goto LABEL_143;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_137:
      result = sub_1002C08D4(v8);
      v8 = result;
    }

    v92 = v8 + 16;
    v93 = *(v8 + 2);
    if (v93 >= 2)
    {
      while (1)
      {
        v94 = *v5;
        if (!*v5)
        {
          goto LABEL_141;
        }

        v95 = &v8[16 * v93];
        v5 = *v95;
        v96 = &v92[2 * v93];
        v97 = v96[1];
        sub_1001F3728((v94 + 24 * *v95), (v94 + 24 * *v96), v94 + 24 * v97, v101);
        if (v4)
        {
        }

        if (v97 < v5)
        {
          goto LABEL_129;
        }

        if (v93 - 2 >= *v92)
        {
          goto LABEL_130;
        }

        *v95 = v5;
        *(v95 + 1) = v97;
        v98 = *v92 - v93;
        if (*v92 < v93)
        {
          goto LABEL_131;
        }

        v93 = *v92 - 1;
        result = memmove(v96, v96 + 2, 16 * v98);
        *v92 = v93;
        v5 = a3;
        if (v93 <= 1)
        {
        }
      }
    }
  }

  v7 = 0;
  v8 = _swiftEmptyArrayStorage;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *v5;
      v11 = (*v5 + 24 * v7);
      result = *v11;
      v12 = v11[1];
      v13 = (*v5 + 24 * v9);
      if (result == *v13 && v12 == v13[1])
      {
        v15 = 0;
      }

      else
      {
        result = _stringCompareWithSmolCheck(_:_:expecting:)();
        v15 = result;
      }

      v7 = v9 + 2;
      if (v9 + 2 < v6)
      {
        v16 = (v10 + 24 * v9 + 32);
        v17 = v16;
        do
        {
          result = v16[2];
          v19 = v17[3];
          v17 += 3;
          v18 = v19;
          if (result == *(v16 - 1) && v18 == *v16)
          {
            if (v15)
            {
              goto LABEL_24;
            }
          }

          else
          {
            result = _stringCompareWithSmolCheck(_:_:expecting:)();
            if ((v15 ^ result))
            {
              goto LABEL_23;
            }
          }

          ++v7;
          v16 = v17;
        }

        while (v6 != v7);
        v7 = v6;
      }

LABEL_23:
      if (v15)
      {
LABEL_24:
        if (v7 < v9)
        {
          goto LABEL_134;
        }

        if (v9 < v7)
        {
          v21 = 0;
          v22 = 24 * v7;
          v23 = 24 * v9;
          v24 = v9;
          do
          {
            if (v24 != v7 + v21 - 1)
            {
              v30 = *v5;
              if (!*v5)
              {
                goto LABEL_140;
              }

              v25 = v30 + v23;
              v26 = v30 + v22;
              v27 = *v25;
              v28 = *(v25 + 8);
              v29 = *(v26 - 24);
              *(v25 + 16) = *(v26 - 8);
              *v25 = v29;
              *(v26 - 24) = v27;
              *(v26 - 16) = v28;
            }

            ++v24;
            --v21;
            v22 -= 24;
            v23 += 24;
          }

          while (v24 < v7 + v21);
        }
      }
    }

    v31 = v5[1];
    if (v7 < v31)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_133;
      }

      if (v7 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_135;
        }

        if (v9 + a4 >= v31)
        {
          v32 = v5[1];
        }

        else
        {
          v32 = v9 + a4;
        }

        if (v32 < v9)
        {
LABEL_136:
          __break(1u);
          goto LABEL_137;
        }

        if (v7 != v32)
        {
          break;
        }
      }
    }

LABEL_54:
    if (v7 < v9)
    {
      goto LABEL_132;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_10028C748(0, *(v8 + 2) + 1, 1, v8);
      v8 = result;
    }

    v46 = *(v8 + 2);
    v45 = *(v8 + 3);
    v47 = v46 + 1;
    if (v46 >= v45 >> 1)
    {
      result = sub_10028C748((v45 > 1), v46 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 2) = v47;
    v48 = &v8[16 * v46];
    *(v48 + 4) = v9;
    *(v48 + 5) = v7;
    v49 = *v101;
    if (!*v101)
    {
      goto LABEL_142;
    }

    if (v46)
    {
      while (1)
      {
        v50 = v47 - 1;
        if (v47 >= 4)
        {
          break;
        }

        if (v47 == 3)
        {
          v51 = *(v8 + 4);
          v52 = *(v8 + 5);
          v61 = __OFSUB__(v52, v51);
          v53 = v52 - v51;
          v54 = v61;
LABEL_74:
          if (v54)
          {
            goto LABEL_120;
          }

          v67 = &v8[16 * v47];
          v69 = *v67;
          v68 = *(v67 + 1);
          v70 = __OFSUB__(v68, v69);
          v71 = v68 - v69;
          v72 = v70;
          if (v70)
          {
            goto LABEL_123;
          }

          v73 = &v8[16 * v50 + 32];
          v75 = *v73;
          v74 = *(v73 + 1);
          v61 = __OFSUB__(v74, v75);
          v76 = v74 - v75;
          if (v61)
          {
            goto LABEL_126;
          }

          if (__OFADD__(v71, v76))
          {
            goto LABEL_127;
          }

          if (v71 + v76 >= v53)
          {
            if (v53 < v76)
            {
              v50 = v47 - 2;
            }

            goto LABEL_95;
          }

          goto LABEL_88;
        }

        v77 = &v8[16 * v47];
        v79 = *v77;
        v78 = *(v77 + 1);
        v61 = __OFSUB__(v78, v79);
        v71 = v78 - v79;
        v72 = v61;
LABEL_88:
        if (v72)
        {
          goto LABEL_122;
        }

        v80 = &v8[16 * v50];
        v82 = *(v80 + 4);
        v81 = *(v80 + 5);
        v61 = __OFSUB__(v81, v82);
        v83 = v81 - v82;
        if (v61)
        {
          goto LABEL_125;
        }

        if (v83 < v71)
        {
          goto LABEL_3;
        }

LABEL_95:
        v88 = v50 - 1;
        if (v50 - 1 >= v47)
        {
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
          goto LABEL_136;
        }

        if (!*v5)
        {
          goto LABEL_139;
        }

        v89 = *&v8[16 * v88 + 32];
        v90 = *&v8[16 * v50 + 40];
        sub_1001F3728((*v5 + 24 * v89), (*v5 + 24 * *&v8[16 * v50 + 32]), *v5 + 24 * v90, v49);
        if (v4)
        {
        }

        if (v90 < v89)
        {
          goto LABEL_116;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_1002C08D4(v8);
        }

        if (v88 >= *(v8 + 2))
        {
          goto LABEL_117;
        }

        v91 = &v8[16 * v88];
        *(v91 + 4) = v89;
        *(v91 + 5) = v90;
        result = sub_1002C0848(v50);
        v47 = *(v8 + 2);
        if (v47 <= 1)
        {
          goto LABEL_3;
        }
      }

      v55 = &v8[16 * v47 + 32];
      v56 = *(v55 - 64);
      v57 = *(v55 - 56);
      v61 = __OFSUB__(v57, v56);
      v58 = v57 - v56;
      if (v61)
      {
        goto LABEL_118;
      }

      v60 = *(v55 - 48);
      v59 = *(v55 - 40);
      v61 = __OFSUB__(v59, v60);
      v53 = v59 - v60;
      v54 = v61;
      if (v61)
      {
        goto LABEL_119;
      }

      v62 = &v8[16 * v47];
      v64 = *v62;
      v63 = *(v62 + 1);
      v61 = __OFSUB__(v63, v64);
      v65 = v63 - v64;
      if (v61)
      {
        goto LABEL_121;
      }

      v61 = __OFADD__(v53, v65);
      v66 = v53 + v65;
      if (v61)
      {
        goto LABEL_124;
      }

      if (v66 >= v58)
      {
        v84 = &v8[16 * v50 + 32];
        v86 = *v84;
        v85 = *(v84 + 1);
        v61 = __OFSUB__(v85, v86);
        v87 = v85 - v86;
        if (v61)
        {
          goto LABEL_128;
        }

        if (v53 < v87)
        {
          v50 = v47 - 2;
        }

        goto LABEL_95;
      }

      goto LABEL_74;
    }

LABEL_3:
    v6 = v5[1];
    if (v7 >= v6)
    {
      goto LABEL_105;
    }
  }

  v33 = *v5;
  v34 = *v5 + 24 * v7 - 24;
  v99 = v9;
  v35 = v9 - v7;
LABEL_43:
  v36 = (v33 + 24 * v7);
  v37 = *v36;
  v38 = v36[1];
  v39 = v35;
  v40 = v34;
  while (1)
  {
    v41 = v37 == *v40 && v38 == *(v40 + 8);
    if (v41 || (result = _stringCompareWithSmolCheck(_:_:expecting:)(), (result & 1) == 0))
    {
LABEL_42:
      ++v7;
      v34 += 24;
      --v35;
      if (v7 != v32)
      {
        goto LABEL_43;
      }

      v7 = v32;
      v5 = a3;
      v9 = v99;
      goto LABEL_54;
    }

    if (!v33)
    {
      break;
    }

    v42 = *(v40 + 32);
    v43 = *(v40 + 16);
    v37 = *(v40 + 24);
    *(v40 + 24) = *v40;
    *(v40 + 40) = v43;
    *v40 = v37;
    *(v40 + 8) = v42;
    v38 = v42;
    v40 -= 24;
    if (__CFADD__(v39++, 1))
    {
      goto LABEL_42;
    }
  }

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
  return result;
}

uint64_t sub_1001F3728(char *__dst, char *__src, unint64_t a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = (__src - __dst) / 24;
  v10 = a3 - __src;
  v11 = (a3 - __src) / 24;
  if (v9 < v11)
  {
    if (a4 != __dst || &__dst[24 * v9] <= a4)
    {
      memmove(a4, __dst, 24 * v9);
    }

    v12 = &v4[24 * v9];
    if (v8 < 24)
    {
LABEL_6:
      v6 = v7;
      goto LABEL_39;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_6;
      }

      v15 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
      if (!v15 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        break;
      }

      v13 = v4;
      v15 = v7 == v4;
      v4 += 24;
      if (!v15)
      {
        goto LABEL_8;
      }

LABEL_9:
      v7 += 24;
      if (v4 >= v12)
      {
        goto LABEL_6;
      }
    }

    v13 = v6;
    v15 = v7 == v6;
    v6 += 24;
    if (v15)
    {
      goto LABEL_9;
    }

LABEL_8:
    v14 = *v13;
    *(v7 + 2) = *(v13 + 2);
    *v7 = v14;
    goto LABEL_9;
  }

  if (a4 != __src || &__src[24 * v11] <= a4)
  {
    memmove(a4, __src, 24 * v11);
  }

  v12 = &v4[24 * v11];
  if (v10 >= 24 && v6 > v7)
  {
LABEL_24:
    v16 = v6 - 24;
    v5 -= 24;
    v17 = v12;
    do
    {
      v18 = *(v17 - 24);
      v19 = *(v17 - 16);
      v17 -= 24;
      v20 = v18 == *(v6 - 3) && v19 == *(v6 - 2);
      if (!v20 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        if ((v5 + 24) != v6)
        {
          v22 = *v16;
          *(v5 + 16) = *(v6 - 1);
          *v5 = v22;
        }

        if (v12 <= v4 || (v6 -= 24, v16 <= v7))
        {
          v6 = v16;
          goto LABEL_39;
        }

        goto LABEL_24;
      }

      if ((v5 + 24) != v12)
      {
        v21 = *v17;
        *(v5 + 16) = *(v17 + 16);
        *v5 = v21;
      }

      v5 -= 24;
      v12 = v17;
    }

    while (v17 > v4);
    v12 = v17;
  }

LABEL_39:
  v23 = (v12 - v4) / 24;
  if (v6 != v4 || v6 >= &v4[24 * v23])
  {
    memmove(v6, v4, 24 * v23);
  }

  return 1;
}

void *sub_1001F3988(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_25:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v25 = -1 << *(a4 + 32);
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9)) | (v12 << 6);
      v18 = (*(a4 + 48) + 16 * v17);
      v19 = v18[1];
      v20 = *(*(a4 + 56) + 8 * v17);
      v9 &= v9 - 1;
      *v11 = *v18;
      v11[1] = v19;
      v11[2] = v20;
      if (v14 == v10)
      {

        v24 = v20;
        goto LABEL_23;
      }

      v11 += 3;

      v21 = v20;
      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= v12 + 1)
    {
      v23 = v12 + 1;
    }

    else
    {
      v23 = v13;
    }

    v12 = v23 - 1;
    v10 = result;
LABEL_23:
    v7 = v25;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

void *sub_1001F3AFC(void *result, char *__dst, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
  if (!__dst)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = __dst;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v18 = (*(a4 + 48) + 112 * (v17 | (v12 << 6)));
      v20 = v18[1];
      v19 = v18[2];
      v27[0] = *v18;
      v27[1] = v20;
      v27[2] = v19;
      v22 = v18[4];
      v21 = v18[5];
      v23 = v18[3];
      *&v28[9] = *(v18 + 89);
      v27[4] = v22;
      *v28 = v21;
      v27[3] = v23;
      memmove(v11, v18, 0x69uLL);
      if (v14 == v10)
      {
        sub_10001F5C4(v27, v26);
        goto LABEL_24;
      }

      v11 += 112;
      sub_10001F5C4(v27, v26);
      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v25 = v12 + 1;
    }

    else
    {
      v25 = (63 - v7) >> 6;
    }

    v12 = v25 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

void *sub_1001F3C98(void *result, _BYTE *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 + 56;
  v5 = -1;
  v6 = -1 << *(a4 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(a4 + 56);
  if (!a2)
  {
LABEL_17:
    v9 = 0;
    a3 = 0;
LABEL_23:
    *result = a4;
    result[1] = v4;
    result[2] = ~v6;
    result[3] = v9;
    result[4] = v7;
    return a3;
  }

  if (!a3)
  {
    v9 = 0;
    goto LABEL_23;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v9 = 0;
    v10 = (63 - v6) >> 6;
    v11 = 1;
    while (v7)
    {
LABEL_13:
      v14 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      *a2 = *(*(a4 + 48) + (v14 | (v9 << 6)));
      if (v11 == a3)
      {
        goto LABEL_23;
      }

      ++a2;
      v8 = v11;
      if (__OFADD__(v11++, 1))
      {
        __break(1u);
        goto LABEL_17;
      }
    }

    v12 = v9;
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        goto LABEL_25;
      }

      if (v13 >= v10)
      {
        break;
      }

      v7 = *(v4 + 8 * v13);
      ++v12;
      if (v7)
      {
        v9 = v13;
        goto LABEL_13;
      }
    }

    v7 = 0;
    if (v10 <= (v9 + 1))
    {
      v16 = v9 + 1;
    }

    else
    {
      v16 = (63 - v6) >> 6;
    }

    v9 = v16 - 1;
    a3 = v8;
    goto LABEL_23;
  }

LABEL_25:
  __break(1u);
  return result;
}

uint64_t sub_1001F3D94(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v13 = a4;
  v14 = a5;
  v9 = sub_100050D60(&v12);
  (*(*(a4 - 8) + 32))(v9, a2, a4);
  v10 = *a3;
  *(v10 + 16) = a1 + 1;
  return sub_100051124(&v12, v10 + 40 * a1 + 32);
}

char *sub_1001F3E2C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6)
{
  v7 = v6;
  v74 = a4;
  v75 = a6;
  v73 = a5;
  v70 = a1;
  v71 = a2;
  v9 = type metadata accessor for GenerativeModelsAvailability.Availability();
  v78 = *(v9 - 8);
  v79 = v9;
  v10 = __chkstk_darwin(v9);
  v76 = &v65 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v77 = &v65 - v12;
  v13 = sub_100005AD4(&qword_1003AFCE0, &qword_1002D5B00);
  __chkstk_darwin(v13 - 8);
  v72 = &v65 - v14;
  v69 = type metadata accessor for GenerativeModelsAvailability.LanguageOption();
  v67 = *(v69 - 8);
  __chkstk_darwin(v69);
  v65 = &v65 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = type metadata accessor for GenerativeModelsAvailability.Parameters();
  v66 = *(v68 - 8);
  __chkstk_darwin(v68);
  v17 = &v65 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_100005AD4(&qword_1003B7A08, &qword_1002E78E8);
  __chkstk_darwin(v18 - 8);
  v20 = &v65 - v19;
  *(v6 + 16) = 0x3FE8000000000000;
  type metadata accessor for AudioAccessoryAssetDownLoadService();
  swift_allocObject();
  *(v6 + 48) = AudioAccessoryAssetDownLoadService.init()();
  *(v6 + 80) = 0;
  v21 = OBJC_IVAR____TtC17SequoiaTranslator27PersonalTranslatorViewModel__firstEnvironmentPartialArrivalTime;
  v22 = type metadata accessor for Date();
  (*(*(v22 - 8) + 56))(&v7[v21], 1, 1, v22);
  v23 = OBJC_IVAR____TtC17SequoiaTranslator27PersonalTranslatorViewModel_feedbackManager;
  *&v7[v23] = [objc_allocWithZone(type metadata accessor for FeedbackManager()) init];
  type metadata accessor for MainActorDebouncer();
  v24 = swift_allocObject();
  *(v24 + 40) = 0;
  *(v24 + 48) = 0;
  *(v24 + 32) = 0;
  *(v24 + 56) = 0;
  *(v24 + 16) = xmmword_1002E7270;
  *&v7[OBJC_IVAR____TtC17SequoiaTranslator27PersonalTranslatorViewModel__lowPowerLockScreenDebouncer] = v24;
  v25 = swift_allocObject();
  *(v25 + 40) = 0;
  *(v25 + 48) = 0;
  *(v25 + 32) = 0;
  *(v25 + 56) = 0;
  *(v25 + 16) = xmmword_1002E7280;
  *&v7[OBJC_IVAR____TtC17SequoiaTranslator27PersonalTranslatorViewModel__mainDebouncer] = v25;
  v7[OBJC_IVAR____TtC17SequoiaTranslator27PersonalTranslatorViewModel__isAudioSessionRunning] = 0;
  v26 = OBJC_IVAR____TtC17SequoiaTranslator27PersonalTranslatorViewModel__deviceOwnerLocale;
  v27 = type metadata accessor for Locale();
  v28 = *(*(v27 - 8) + 56);
  v28(&v7[v26], 1, 1, v27);
  v28(&v7[OBJC_IVAR____TtC17SequoiaTranslator27PersonalTranslatorViewModel__environmentLocale], 1, 1, v27);
  *&v7[OBJC_IVAR____TtC17SequoiaTranslator27PersonalTranslatorViewModel__ttsTranslationResults] = _swiftEmptyArrayStorage;
  *&v7[OBJC_IVAR____TtC17SequoiaTranslator27PersonalTranslatorViewModel__lowDelayTTSTranslationResults] = _swiftEmptyArrayStorage;
  v29 = OBJC_IVAR____TtC17SequoiaTranslator27PersonalTranslatorViewModel_stableStringExtractor;
  v30 = type metadata accessor for CharacterSet();
  v31 = *(*(v30 - 8) + 56);
  v31(v20, 1, 1, v30);
  type metadata accessor for StableStringExtractor(0);
  v32 = swift_allocObject();
  *(v32 + 16) = 0;
  *(v32 + 24) = 0xE000000000000000;
  v33 = OBJC_IVAR____TtC17SequoiaTranslator21StableStringExtractor_segmentationCharacters;
  v31((v32 + OBJC_IVAR____TtC17SequoiaTranslator21StableStringExtractor_segmentationCharacters), 1, 1, v30);
  swift_beginAccess();
  sub_10003BD84(v20, v32 + v33, &qword_1003B7A08, &qword_1002E78E8);
  swift_endAccess();
  *&v7[v29] = v32;
  *&v7[OBJC_IVAR____TtC17SequoiaTranslator27PersonalTranslatorViewModel__currentSpeechRequestForTTS] = 0;
  *&v7[OBJC_IVAR____TtC17SequoiaTranslator27PersonalTranslatorViewModel__currentSynthesisSpeechRequestForTTS] = 0;
  *&v7[OBJC_IVAR____TtC17SequoiaTranslator27PersonalTranslatorViewModel__currentLoudspeakerSpeechRequestForTTS] = 0;
  v34 = &v7[OBJC_IVAR____TtC17SequoiaTranslator27PersonalTranslatorViewModel__currentLoudspeakerTranslationForTTS];
  *v34 = 0;
  *(v34 + 1) = 0;
  v7[OBJC_IVAR____TtC17SequoiaTranslator27PersonalTranslatorViewModel__willPlayTTSMessage] = 0;
  v7[OBJC_IVAR____TtC17SequoiaTranslator27PersonalTranslatorViewModel__inLoudspeakerTTSPlayback] = 0;
  *&v7[OBJC_IVAR____TtC17SequoiaTranslator27PersonalTranslatorViewModel____lazy_storage___daemonSession] = 0;
  v7[OBJC_IVAR____TtC17SequoiaTranslator27PersonalTranslatorViewModel__isActive] = 0;
  v7[OBJC_IVAR____TtC17SequoiaTranslator27PersonalTranslatorViewModel__isListening] = 0;
  v35 = &v7[OBJC_IVAR____TtC17SequoiaTranslator27PersonalTranslatorViewModel__partialTranslation];
  *v35 = 0u;
  *(v35 + 1) = 0u;
  *(v35 + 4) = 0;
  *&v7[OBJC_IVAR____TtC17SequoiaTranslator27PersonalTranslatorViewModel__renderingSegmentsTask] = 0;
  *&v7[OBJC_IVAR____TtC17SequoiaTranslator27PersonalTranslatorViewModel__renderingSegments] = _swiftEmptyArrayStorage;
  v36 = &v7[OBJC_IVAR____TtC17SequoiaTranslator27PersonalTranslatorViewModel__groupedRenderingSegmentsDisplayText];
  type metadata accessor for SELFLoggingInvocationWrapper(0);
  *v36 = 0;
  *(v36 + 1) = 0;
  v37 = swift_allocObject();
  *(v37 + 16) = 0;
  v38 = OBJC_IVAR____TtC17SequoiaTranslator28SELFLoggingInvocationWrapper_parameters;
  v39 = type metadata accessor for SELFLoggingInvocationWrapper.Parameters(0);
  (*(*(v39 - 8) + 56))(v37 + v38, 1, 1, v39);
  UUID.init()();
  *(v37 + OBJC_IVAR____TtC17SequoiaTranslator28SELFLoggingInvocationWrapper_hasLoggedGenderCoreAnalytics) = 0;
  *(v37 + OBJC_IVAR____TtC17SequoiaTranslator28SELFLoggingInvocationWrapper_tabName) = 5;
  *&v7[OBJC_IVAR____TtC17SequoiaTranslator27PersonalTranslatorViewModel__currentSelfLoggingInvocation] = v37;
  v7[OBJC_IVAR____TtC17SequoiaTranslator27PersonalTranslatorViewModel__isStartButtonEnabled] = 0;
  *&v7[OBJC_IVAR____TtC17SequoiaTranslator27PersonalTranslatorViewModel__enqueuedTranslationCount] = 0;
  *&v7[OBJC_IVAR____TtC17SequoiaTranslator27PersonalTranslatorViewModel__lastWordCount] = 0;
  v7[OBJC_IVAR____TtC17SequoiaTranslator27PersonalTranslatorViewModel__lastUsedTTSRate] = 0;
  v7[OBJC_IVAR____TtC17SequoiaTranslator27PersonalTranslatorViewModel__idealTTSRate] = 0;
  v7[OBJC_IVAR____TtC17SequoiaTranslator27PersonalTranslatorViewModel__shouldShowPersonalTranslatorTab] = 0;
  *&v7[OBJC_IVAR____TtC17SequoiaTranslator27PersonalTranslatorViewModel__appleIntelligenceAvailbilityNotification] = 0;
  (*(v67 + 104))(v65, enum case for GenerativeModelsAvailability.LanguageOption.any(_:), v69);
  GenerativeModelsAvailability.Parameters.init(useCaseIdentifiers:language:)();
  static GenerativeModelsAvailability.current(parameters:)();
  (*(v66 + 8))(v17, v68);
  *&v7[OBJC_IVAR____TtC17SequoiaTranslator27PersonalTranslatorViewModel__tryStartingSpeechTranslationTask] = 0;
  *&v7[OBJC_IVAR____TtC17SequoiaTranslator27PersonalTranslatorViewModel__playStartToneAndMessageTask] = 0;
  *&v7[OBJC_IVAR____TtC17SequoiaTranslator27PersonalTranslatorViewModel__audioDeviceTakenOutOfEarsGracePeriodTask] = 0;
  type metadata accessor for PTSessionMetrics(0);
  swift_allocObject();
  *&v7[OBJC_IVAR____TtC17SequoiaTranslator27PersonalTranslatorViewModel__sessionMetrics] = sub_100201C4C();
  v7[OBJC_IVAR____TtC17SequoiaTranslator27PersonalTranslatorViewModel__currentSide] = 2;
  v7[OBJC_IVAR____TtC17SequoiaTranslator27PersonalTranslatorViewModel__isDualPressGestureIntentInitiated] = 0;
  ObservationRegistrar.init()();
  v41 = v70;
  v40 = v71;
  *(v7 + 3) = v70;
  *(v7 + 5) = v40;
  sub_1000085CC((a3 + OBJC_IVAR____TtC17SequoiaTranslator21TranslationSession_RD_store), *(a3 + OBJC_IVAR____TtC17SequoiaTranslator21TranslationSession_RD_store + 24));
  swift_getKeyPath();
  swift_getKeyPath();
  v42 = v41;

  static Published.subscript.getter();

  dispatch thunk of TranslationStore.clearHistory(sessionID:completion:)();

  swift_getKeyPath();
  swift_getKeyPath();
  v80 = _swiftEmptyArrayStorage;

  static Published.subscript.setter();
  *(a3 + OBJC_IVAR____TtC17SequoiaTranslator21TranslationSession_RD_lidDisambiguationCounter) = 0;
  *(v7 + 7) = a3;
  v43 = objc_allocWithZone(type metadata accessor for SpeechManager());
  v44 = v42;

  *(v7 + 4) = sub_10023B92C(v44, v73);
  v46 = v74;
  v45 = v75;
  *(v7 + 8) = v75;
  *(v7 + 9) = v46;
  v47 = v45;

  v48 = v72;
  sub_100228BB0(v72);
  v49 = OBJC_IVAR____TtC17SequoiaTranslator27PersonalTranslatorViewModel__environmentLocale;
  sub_100009EBC(&v7[OBJC_IVAR____TtC17SequoiaTranslator27PersonalTranslatorViewModel__environmentLocale], &qword_1003AFCE0, &qword_1002D5B00);
  sub_100023BD4(v48, &v7[v49], &qword_1003AFCE0, &qword_1002D5B00);
  sub_100228E78(v48);
  v50 = OBJC_IVAR____TtC17SequoiaTranslator27PersonalTranslatorViewModel__deviceOwnerLocale;
  sub_100009EBC(&v7[OBJC_IVAR____TtC17SequoiaTranslator27PersonalTranslatorViewModel__deviceOwnerLocale], &qword_1003AFCE0, &qword_1002D5B00);
  sub_100023BD4(v48, &v7[v50], &qword_1003AFCE0, &qword_1002D5B00);
  v51 = objc_opt_self();
  v52 = [v51 standardUserDefaults];
  v53 = String._bridgeToObjectiveC()();
  LOBYTE(v48) = [v52 BOOLForKey:v53];

  v7[OBJC_IVAR____TtC17SequoiaTranslator27PersonalTranslatorViewModel__showSourceText] = v48;
  v54 = v76;
  v55 = [v51 standardUserDefaults];
  v56 = String._bridgeToObjectiveC()();
  LOBYTE(v53) = [v55 BOOLForKey:v56];

  v7[OBJC_IVAR____TtC17SequoiaTranslator27PersonalTranslatorViewModel__disableAutoplayTTSOnLoudspeaker] = v53;
  v58 = v78;
  v57 = v79;
  v59 = v77;
  GenerativeModelsAvailability.availability.getter();
  (*(v58 + 32))(v54, v59, v57);
  v60 = (*(v58 + 88))(v54, v57);
  v61 = v60 == enum case for GenerativeModelsAvailability.Availability.restricted(_:);
  if (v60 == enum case for GenerativeModelsAvailability.Availability.restricted(_:) || v60 == enum case for GenerativeModelsAvailability.Availability.unavailable(_:) || v60 != enum case for GenerativeModelsAvailability.Availability.available(_:))
  {
    (*(v58 + 8))(v54, v57);
  }

  else
  {
    v61 = 1;
  }

  v7[OBJC_IVAR____TtC17SequoiaTranslator27PersonalTranslatorViewModel__appleIntelligenceEnabled] = v61;
  sub_1001DF1B0();
  *(*(v7 + 4) + OBJC_IVAR____TtC17SequoiaTranslator13SpeechManager_delegate + 8) = &off_100388D88;
  v62 = swift_unknownObjectWeakAssign();
  sub_1001DF048(v62);
  withObservationTracking<A>(_:onChange:)();
  withObservationTracking<A>(_:onChange:)();
  withObservationTracking<A>(_:onChange:)();
  sub_1001D703C();
  v63 = [objc_opt_self() defaultCenter];
  [v63 addObserver:v7 selector:"handleRouteChangeWithNotification:" name:AVAudioSessionRouteChangeNotification object:0];

  return v7;
}

uint64_t sub_1001F4A60(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100005AD4(&qword_1003B5130, &unk_1002E4220);
  __chkstk_darwin(v8 - 8);
  v10 = &v21 - v9;
  v11 = sub_100005AD4(&qword_1003B1FD0, &qword_1002E7E20);
  v12 = __chkstk_darwin(v11 - 8);
  v14 = &v21 - v13;
  v15 = *(v12 + 56);
  sub_10001F620(a1, &v21 - v13, &qword_1003B5130, &unk_1002E4220);
  sub_10001F620(a2, &v14[v15], &qword_1003B5130, &unk_1002E4220);
  v16 = *(v5 + 48);
  if (v16(v14, 1, v4) != 1)
  {
    sub_10001F620(v14, v10, &qword_1003B5130, &unk_1002E4220);
    if (v16(&v14[v15], 1, v4) != 1)
    {
      (*(v5 + 32))(v7, &v14[v15], v4);
      sub_1001F6DA0(&qword_1003AFAF8, &type metadata accessor for Date, &protocol conformance descriptor for Date);
      v18 = dispatch thunk of static Equatable.== infix(_:_:)();
      v19 = *(v5 + 8);
      v19(v7, v4);
      v19(v10, v4);
      sub_100009EBC(v14, &qword_1003B5130, &unk_1002E4220);
      v17 = v18 ^ 1;
      return v17 & 1;
    }

    (*(v5 + 8))(v10, v4);
    goto LABEL_6;
  }

  if (v16(&v14[v15], 1, v4) != 1)
  {
LABEL_6:
    sub_100009EBC(v14, &qword_1003B1FD0, &qword_1002E7E20);
    v17 = 1;
    return v17 & 1;
  }

  sub_100009EBC(v14, &qword_1003B5130, &unk_1002E4220);
  v17 = 0;
  return v17 & 1;
}

void sub_1001F4D80(int a1, char a2)
{
  v3 = v2;
  if (qword_1003A92B0 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_1000078E8(v6, qword_1003D2920);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 67109376;
    *(v9 + 4) = a1 & 1;
    *(v9 + 8) = 1024;
    *(v9 + 10) = a2 & 1;
    _os_log_impl(&_mh_execute_header, v7, v8, "Listening status changed: isListening: %{BOOL}d, wasInterrupted: %{BOOL}d", v9, 0xEu);
  }

  swift_getKeyPath();
  sub_1001F6DA0(&qword_1003B4900, type metadata accessor for PersonalTranslatorViewModel, &unk_1002E7508);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v10 = OBJC_IVAR____TtC17SequoiaTranslator27PersonalTranslatorViewModel__isListening;
  v11 = *(v3 + OBJC_IVAR____TtC17SequoiaTranslator27PersonalTranslatorViewModel__isListening);
  if (v11 == 1 && (a1 & 1) == 0)
  {
    if (a2)
    {
      v12 = 3;
    }

    else
    {
      v12 = 2;
    }

    sub_1001DA594(v12, 0);
    v11 = *(v3 + v10);
  }

  if ((v11 ^ a1))
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  else
  {
    *(v3 + v10) = a1 & 1;
  }
}

id sub_1001F4FDC()
{
  v10 = &type metadata for TranslateFeatures;
  v0 = sub_100009DF8();
  v11 = v0;
  LOBYTE(v9[0]) = 10;
  v1 = isFeatureEnabled(_:)();
  sub_100008664(v9);
  if ((v1 & 1) == 0)
  {
    goto LABEL_7;
  }

  result = MobileGestalt_get_current_device();
  if (result)
  {
    v3 = result;
    deviceSupportsPersonalTranslator = MobileGestalt_get_deviceSupportsPersonalTranslator();

    if ((deviceSupportsPersonalTranslator & 1) != 0 || _LTIsInternalInstall() && (v6 = [objc_opt_self() standardUserDefaults], v7 = String._bridgeToObjectiveC()(), v8 = objc_msgSend(v6, "BOOLForKey:", v7), v6, v7, v8))
    {
      v10 = &type metadata for TranslateFeatures;
      v11 = v0;
      LOBYTE(v9[0]) = 14;
      v5 = isFeatureEnabled(_:)();
      sub_100008664(v9);
      return (v5 & 1);
    }

LABEL_7:
    v5 = 0;
    return (v5 & 1);
  }

  __break(1u);
  return result;
}

uint64_t sub_1001F525C(uint64_t a1)
{
  v3 = *(type metadata accessor for Locale() - 8);
  v4 = (*(v3 + 80) + 48) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = v1[3];
  v13 = v1[2];
  v8 = *(v1 + v5);
  v9 = v1[4];
  v10 = v1[5];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_10001B558;

  return sub_1001E85F0(a1, v13, v7, v9, v10, v1 + v4, v8, v1 + v6);
}

BOOL sub_1001F5528()
{
  v0 = objc_opt_self();
  v1 = [v0 sharedApplication];
  v2 = sub_1002BF214();

  if (!v2)
  {
    return 0;
  }

  v3 = [v2 rootViewController];

  if (!v3)
  {
    return 0;
  }

  type metadata accessor for PersonalTranslatorLockScreenViewController();
  v4 = swift_dynamicCastClass();

  if (!v4)
  {
    return 0;
  }

  v5 = [v0 sharedApplication];
  v6 = sub_1002BF214();

  if (!v6)
  {
    return 0;
  }

  v7 = [v6 windowScene];

  if (!v7)
  {
    return 0;
  }

  v8 = [v7 traitCollection];
  v9 = [v8 _backlightLuminance];

  return v9 == 1;
}

void sub_1001F5660(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Locale();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v86[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v6);
  v10 = &v86[-v9];
  v11 = [objc_allocWithZone(AFPreferences) init];
  v12 = [v11 assistantIsEnabled];

  if (v12)
  {
    v13 = _AFPreferencesOutputVoice();
    if (v13)
    {
      v14 = v13;
      if (qword_1003A92B0 != -1)
      {
        swift_once();
      }

      v15 = type metadata accessor for Logger();
      v16 = sub_1000078E8(v15, qword_1003D2920);
      v17 = v14;
      v88 = v16;
      v18 = Logger.logObject.getter();
      v19 = static os_log_type_t.default.getter();
      v20 = os_log_type_enabled(v18, v19);
      v89 = a1;
      v90 = a2;
      if (v20)
      {
        v87 = v19;
        v21 = swift_slowAlloc();
        v91 = swift_slowAlloc();
        v94[0] = v91;
        *v21 = 136315394;
        v22 = [v17 name];

        if (!v22)
        {
          goto LABEL_44;
        }

        v23 = v17;
        v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v26 = v25;

        v27 = sub_10028D78C(v24, v26, v94);

        *(v21 + 4) = v27;
        *(v21 + 12) = 2080;
        v92 = [v23 gender];
        type metadata accessor for AFVoiceGender(0);
        v28 = String.init<A>(describing:)();
        v30 = sub_10028D78C(v28, v29, v94);

        *(v21 + 14) = v30;
        _os_log_impl(&_mh_execute_header, v18, v87, "TTS: Siri voice configured with name: %s gender: %s", v21, 0x16u);
        swift_arrayDestroy();

        v17 = v23;
      }

      else
      {
      }

      Locale.init(identifier:)();
      v36 = Locale.ltIdentifier.getter();
      v38 = v37;
      v39 = *(v5 + 8);
      v39(v10, v4);
      v91 = v17;
      v40 = [v17 languageCode];
      if (v40)
      {
        v41 = v40;
        static String._unconditionallyBridgeFromObjectiveC(_:)();

        Locale.init(identifier:)();
        v42 = Locale.ltIdentifier.getter();
        v44 = v43;
        v39(v8, v4);
        if (v36 == v42 && v38 == v44 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          v45 = [v91 name];
          if (v45)
          {
            v46 = v45;
            static String._unconditionallyBridgeFromObjectiveC(_:)();
          }

          objc_allocWithZone(type metadata accessor for SynthesisVoice());

          v47 = SynthesisVoice.init(language:name:)();
          if (v47)
          {
            goto LABEL_35;
          }

          goto LABEL_34;
        }

        v48 = Logger.logObject.getter();
        v49 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v48, v49))
        {
          v50 = swift_slowAlloc();
          *v50 = 0;
          _os_log_impl(&_mh_execute_header, v48, v49, "TTS: requested locale for TTS playback differs from the one in voiceInfo", v50, 2u);
        }

        v94[0] = v36;
        v94[1] = v38;
        v92 = 95;
        v93 = 0xE100000000000000;
        sub_10001F278();
        v94[0] = StringProtocol.components<A>(separatedBy:)();
        sub_100005AD4(&qword_1003A95C0, &qword_1002D1A10);
        sub_10001BAEC(&qword_1003A95C8, &qword_1003A95C0, &qword_1002D1A10, &protocol conformance descriptor for [A]);
        BidirectionalCollection<>.joined(separator:)();

        v51 = [objc_allocWithZone(AFLocalization) init];
        v52 = v91;
        v53 = String._bridgeToObjectiveC()();
        v54 = [v51 voiceSimilarToVoice:v52 inSiriSessionLanguage:v53];

        if (!v54)
        {

          v59 = Logger.logObject.getter();
          v60 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v59, v60))
          {
            v61 = swift_slowAlloc();
            *v61 = 0;
            _os_log_impl(&_mh_execute_header, v59, v60, "TTS: could not find voice similar to Siri voice, using nil voice name for synthesis voice", v61, 2u);
          }

          goto LABEL_34;
        }

        v55 = [v54 languageCode];
        if (v55)
        {
          v56 = v55;

          static String._unconditionallyBridgeFromObjectiveC(_:)();

          v57 = [v54 name];
          if (v57)
          {
            v58 = v57;
            static String._unconditionallyBridgeFromObjectiveC(_:)();
          }

          v62 = objc_allocWithZone(type metadata accessor for SynthesisVoice());
          v63 = SynthesisVoice.init(language:name:)();
          v64 = v54;
          v65 = Logger.logObject.getter();
          v66 = static os_log_type_t.default.getter();
          if (!os_log_type_enabled(v65, v66))
          {

            if (!v63)
            {
              goto LABEL_34;
            }

            goto LABEL_42;
          }

          v67 = swift_slowAlloc();
          v94[0] = swift_slowAlloc();
          *v67 = 136315394;
          v68 = [v64 name];

          if (v68)
          {
            v69 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v71 = v70;

            v72 = sub_10028D78C(v69, v71, v94);

            *(v67 + 4) = v72;
            *(v67 + 12) = 2080;
            v92 = [v64 gender];
            type metadata accessor for AFVoiceGender(0);
            v73 = String.init<A>(describing:)();
            v75 = sub_10028D78C(v73, v74, v94);

            *(v67 + 14) = v75;
            _os_log_impl(&_mh_execute_header, v65, v66, "TTS: found voice similar to Siri voice with: %s gender: %s", v67, 0x16u);
            swift_arrayDestroy();

            if (!v63)
            {
LABEL_34:
              v76 = objc_allocWithZone(type metadata accessor for SynthesisVoice());

              v47 = SynthesisVoice.init(language:name:)();
              goto LABEL_35;
            }

LABEL_42:
            v47 = v63;
LABEL_35:
            v77 = v47;
            v78 = Logger.logObject.getter();
            v79 = static os_log_type_t.default.getter();
            if (os_log_type_enabled(v78, v79))
            {
              v80 = swift_slowAlloc();
              v81 = swift_slowAlloc();
              v94[0] = v81;
              *v80 = 136315138;
              v82 = dispatch thunk of SynthesisVoice.name.getter();
              if (v83)
              {
                v84 = v83;
              }

              else
              {
                v82 = 0x656D616E206F6ELL;
                v84 = 0xE700000000000000;
              }

              v85 = sub_10028D78C(v82, v84, v94);

              *(v80 + 4) = v85;
              _os_log_impl(&_mh_execute_header, v78, v79, "TTS: using voice with name: %s", v80, 0xCu);
              sub_100008664(v81);
            }

            else
            {
            }

            return;
          }

LABEL_46:
          __break(1u);
          return;
        }

LABEL_45:
        __break(1u);
        goto LABEL_46;
      }

      __break(1u);
LABEL_44:
      __break(1u);
      goto LABEL_45;
    }
  }

  if (qword_1003A92B0 != -1)
  {
    swift_once();
  }

  v31 = type metadata accessor for Logger();
  sub_1000078E8(v31, qword_1003D2920);
  v32 = Logger.logObject.getter();
  v33 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    *v34 = 0;
    _os_log_impl(&_mh_execute_header, v32, v33, "TTS: no Siri voice configured, using nil voice name", v34, 2u);
  }

  v35 = objc_allocWithZone(type metadata accessor for SynthesisVoice());

  SynthesisVoice.init(language:name:)();
}

uint64_t sub_1001F6158(uint64_t a1)
{
  *(v2 + 56) = a1;
  *(v2 + 64) = v1;
  return _swift_task_switch(sub_1001F6178, 0, 0);
}

uint64_t sub_1001F6178()
{
  v1 = v0[7];
  v2 = sub_1001D3DD0();
  v0[9] = v2;
  v3 = swift_task_alloc();
  v0[10] = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  v4 = swift_task_alloc();
  v0[11] = v4;
  v5 = sub_100005AD4(&unk_1003AECD0, &qword_1002DA230);
  *v4 = v0;
  v4[1] = sub_1001F628C;

  return withCheckedContinuation<A>(isolation:function:_:)(v0 + 5, 0, 0, 0xD000000000000015, 0x80000001002F96C0, sub_1001F6EC4, v3, v5);
}

uint64_t sub_1001F628C()
{

  return _swift_task_switch(sub_1001F63A4, 0, 0);
}

uint64_t sub_1001F63A4()
{
  v13 = v0;

  v1 = *(v0 + 40);
  if (v1)
  {
    if (qword_1003A92B0 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_1000078E8(v2, qword_1003D2920);
    swift_errorRetain();
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v12 = v6;
      *v5 = 136315138;

      swift_getErrorValue();
      v7 = Error.localizedDescription.getter();
      v9 = sub_10028D78C(v7, v8, &v12);

      *(v5 + 4) = v9;
      _os_log_impl(&_mh_execute_header, v3, v4, "TTS: playback error: %s", v5, 0xCu);
      sub_100008664(v6);
    }

    else
    {
    }
  }

  v10 = *(v0 + 8);

  return v10(v1);
}

uint64_t sub_1001F6568(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Locale();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100005AD4(&qword_1003AFCE0, &qword_1002D5B00);
  __chkstk_darwin(v8 - 8);
  v10 = &v21 - v9;
  v11 = sub_100005AD4(&qword_1003B2A58, &qword_1002DFE18);
  v12 = __chkstk_darwin(v11 - 8);
  v14 = &v21 - v13;
  v15 = *(v12 + 56);
  sub_10001F620(a1, &v21 - v13, &qword_1003AFCE0, &qword_1002D5B00);
  sub_10001F620(a2, &v14[v15], &qword_1003AFCE0, &qword_1002D5B00);
  v16 = *(v5 + 48);
  if (v16(v14, 1, v4) != 1)
  {
    sub_10001F620(v14, v10, &qword_1003AFCE0, &qword_1002D5B00);
    if (v16(&v14[v15], 1, v4) != 1)
    {
      (*(v5 + 32))(v7, &v14[v15], v4);
      sub_1001F6DA0(&unk_1003B06F0, &type metadata accessor for Locale, &protocol conformance descriptor for Locale);
      v18 = dispatch thunk of static Equatable.== infix(_:_:)();
      v19 = *(v5 + 8);
      v19(v7, v4);
      v19(v10, v4);
      sub_100009EBC(v14, &qword_1003AFCE0, &qword_1002D5B00);
      v17 = v18 ^ 1;
      return v17 & 1;
    }

    (*(v5 + 8))(v10, v4);
    goto LABEL_6;
  }

  if (v16(&v14[v15], 1, v4) != 1)
  {
LABEL_6:
    sub_100009EBC(v14, &qword_1003B2A58, &qword_1002DFE18);
    v17 = 1;
    return v17 & 1;
  }

  sub_100009EBC(v14, &qword_1003AFCE0, &qword_1002D5B00);
  v17 = 0;
  return v17 & 1;
}

uint64_t sub_1001F6888(float a1)
{
  if (a1 == 1.05)
  {
    return 0;
  }

  if (a1 == 1.35)
  {
    v2 = 3;
  }

  else
  {
    v2 = 4;
  }

  if (a1 == 1.25)
  {
    v3 = 2;
  }

  else
  {
    v3 = v2;
  }

  if (a1 == 1.15)
  {
    return 1;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1001F68EC(uint64_t a1, uint64_t a2)
{
  if (byte_1003D2A90 == 1)
  {
    v3 = objc_opt_self();
    v4 = String._bridgeToObjectiveC()();
    v5 = [v3 stringReplacingRedactionsWithBeepMarker:v4];

    a1 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;

    if (qword_1003A92B0 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_1000078E8(v8, qword_1003D2920);

    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v14 = v12;
      *v11 = 136642819;
      *(v11 + 4) = sub_10028D78C(a1, v7, &v14);
      _os_log_impl(&_mh_execute_header, v9, v10, "TTS: Censor profanity is enabled. Sanitized string: %{sensitive}s", v11, 0xCu);
      sub_100008664(v12);
    }
  }

  else
  {
  }

  return a1;
}

void sub_1001F6AD8(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_1001D374C(v1);
}

void sub_1001F6B08()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + OBJC_IVAR____TtC17SequoiaTranslator27PersonalTranslatorViewModel__currentSpeechRequestForTTS);
  *(v1 + OBJC_IVAR____TtC17SequoiaTranslator27PersonalTranslatorViewModel__currentSpeechRequestForTTS) = v2;
  v4 = v2;
}

void sub_1001F6B70(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_1001D379C(v1);
}

uint64_t sub_1001F6BC4(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

void sub_1001F6BD4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + OBJC_IVAR____TtC17SequoiaTranslator27PersonalTranslatorViewModel__currentSynthesisSpeechRequestForTTS);
  *(v1 + OBJC_IVAR____TtC17SequoiaTranslator27PersonalTranslatorViewModel__currentSynthesisSpeechRequestForTTS) = v2;
  v4 = v2;
}

uint64_t sub_1001F6C3C()
{

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_1001F6CEC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10001B558;

  return sub_1001EFEB0(a1, v4, v5, v6);
}

uint64_t sub_1001F6DA0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1001F6DEC(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return sub_1001D5328(v1, v2);
}

uint64_t sub_1001F6ECC()
{
  v1 = *(v0 + 16);
  if (__OFADD__(*v1, 1))
  {
    __break(1u);
  }

  else
  {
    ++*v1;
    return 1;
  }

  return result;
}

uint64_t sub_1001F70E8()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_1001F713C()
{

  return _swift_deallocObject(v0, 64);
}

uint64_t sub_1001F71B0()
{
  v1 = type metadata accessor for Locale();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 48) & ~*(v2 + 80);
  v4 = (((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 47) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v3, v1);

  if (*(v0 + v4 + 24))
  {
    sub_100008664((v0 + v4));
  }

  if (*(v0 + v5 + 24))
  {
    sub_100008664((v0 + v5));
  }

  return _swift_deallocObject(v0, ((v5 + 47) & 0xFFFFFFFFFFFFFFF8) + 8);
}

double (*sub_1001F736C())()
{
  swift_allocObject();
  swift_weakInit();
  return sub_1001F77B0;
}

double (*sub_1001F73C4())()
{
  swift_allocObject();
  swift_weakInit();
  return sub_1001F76C8;
}

double (*sub_1001F7440())()
{
  swift_allocObject();
  swift_weakInit();
  return sub_1001F75AC;
}

uint64_t sub_1001F760C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10001B558;

  return sub_1001DF8B4(a1, v4, v5, v6);
}

uint64_t sub_1001F76D0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10001B558;

  return sub_1001F2070(a1, v4, v5, v6);
}

uint64_t sub_1001F7810(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10001B16C;

  return sub_1001DEF48(a1, v4, v5, v6);
}

uint64_t sub_1001F78CC()
{
  v1 = type metadata accessor for Notification();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v2 + 64);

  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v3 + v4);
}

void sub_1001F7990()
{
  type metadata accessor for Notification();
  v1 = *(v0 + 16);

  sub_1001E1C70(v1);
}

double sub_1001F79F4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_1001F7B8C()
{
  swift_unknownObjectRelease();

  sub_100008664((v0 + 40));

  return _swift_deallocObject(v0, 88);
}

uint64_t sub_1001F7BD4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10001B558;

  return sub_1001EE374(a1, v4, v5, v6, (v1 + 5));
}

uint64_t sub_1001F7D1C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PTSessionSummary(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001F7D80()
{
  v1 = (type metadata accessor for PTSessionSummary(0) - 8);
  v2 = (*(*v1 + 80) + 16) & ~*(*v1 + 80);
  v3 = *(*v1 + 64);
  v4 = type metadata accessor for Locale();
  v5 = *(*(v4 - 8) + 8);
  v5(v0 + v2, v4);
  v5(v0 + v2 + v1[7], v4);

  return _swift_deallocObject(v0, v2 + v3);
}

uint64_t sub_1001F7E94(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PTSessionSummary(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1001F7EF8()
{
  type metadata accessor for PTSessionSummary(0);

  sub_100202D74();
}