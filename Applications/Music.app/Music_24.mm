uint64_t sub_1002CB768()
{
  v1 = *v0;
  v2 = *(*v0 + 432);

  v3 = *(v1 + 344);
  v4 = *(v1 + 336);

  return _swift_task_switch(sub_1002CB8A8, v4, v3);
}

uint64_t sub_1002CB8A8()
{
  v1 = *(v0 + 416);

  sub_100014984(v0 + 16);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1002CB9C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[8] = a4;
  v5 = type metadata accessor for AppInterfaceContext.Activity(0);
  v4[9] = v5;
  v6 = *(v5 - 8);
  v4[10] = v6;
  v4[11] = *(v6 + 64);
  v4[12] = swift_task_alloc();
  v4[13] = swift_task_alloc();
  v4[14] = swift_task_alloc();
  type metadata accessor for Locale();
  v4[15] = swift_task_alloc();
  type metadata accessor for String.LocalizationValue();
  v4[16] = swift_task_alloc();
  type metadata accessor for MainActor();
  v4[17] = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1002CBB34, v8, v7);
}

uint64_t sub_1002CBB34()
{
  v1 = *(v0 + 64);

  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  v2 = String._bridgeToObjectiveC()();

  v3 = [objc_opt_self() alertControllerWithTitle:0 message:v2 preferredStyle:1];

  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  v4 = String._bridgeToObjectiveC()();

  v5 = [objc_opt_self() actionWithTitle:v4 style:0 handler:0];

  [v3 addAction:v5];
  v6 = [*(v1 + OBJC_IVAR____TtC5Music13LaunchOptions_windowScene) delegate];
  if (!v6)
  {

    *(v0 + 48) = 0;
    *(v0 + 16) = 0u;
    *(v0 + 32) = 0u;
LABEL_9:
    sub_1000095E8(v0 + 16, &unk_101184EA0, &unk_100EBFA20);
    goto LABEL_10;
  }

  *(v0 + 56) = v6;
  sub_10010FC20(&unk_101184050, &unk_100EBFA30);
  sub_10010FC20(&unk_101184EB0, &qword_100ED56D0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    *(v0 + 48) = 0;
    *(v0 + 16) = 0u;
    *(v0 + 32) = 0u;
    goto LABEL_8;
  }

  v7 = *(v0 + 40);
  if (!v7)
  {
LABEL_8:

    goto LABEL_9;
  }

  v8 = *(*sub_10000954C((v0 + 16), v7) + OBJC_IVAR____TtC5Music17MainSceneDelegate_interfaceContext);

  sub_10000959C((v0 + 16));
  if (v8)
  {
    v10 = *(v0 + 104);
    v9 = *(v0 + 112);
    v11 = *(v0 + 96);
    v12 = *(v0 + 80);
    *v9 = v3;
    *(v9 + 8) = 1;
    *(v9 + 16) = &_swiftEmptySetSingleton;
    swift_storeEnumTagMultiPayload();
    sub_1002CF480(v9, v10, type metadata accessor for AppInterfaceContext.Activity);
    sub_1002CF480(v10, v11, type metadata accessor for AppInterfaceContext.Activity);
    v13 = (*(v12 + 80) + 32) & ~*(v12 + 80);
    v14 = swift_allocObject();
    *(v14 + 16) = 0;
    *(v14 + 24) = 0;
    sub_1002CF4E8(v11, v14 + v13, type metadata accessor for AppInterfaceContext.Activity);
    v15 = v3;
    sub_100706900(v10, sub_100139B24, v14);

    sub_1002CF550(v10, type metadata accessor for AppInterfaceContext.Activity);
    sub_1002CF550(v9, type metadata accessor for AppInterfaceContext.Activity);
  }

  else
  {
  }

LABEL_10:

  v16 = *(v0 + 8);

  return v16();
}

double sub_1002CBF24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for URL();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin();
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&unk_101181520, &qword_100EBCC60);
  __chkstk_darwin();
  v10 = &v16 - v9;
  v11 = type metadata accessor for TaskPriority();
  (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  (*(v6 + 16))(v8, a3, v5);
  type metadata accessor for MainActor();

  v12 = static MainActor.shared.getter();
  v13 = (*(v6 + 80) + 40) & ~*(v6 + 80);
  v14 = swift_allocObject();
  *(v14 + 2) = v12;
  *(v14 + 3) = &protocol witness table for MainActor;
  *(v14 + 4) = a2;
  (*(v6 + 32))(&v14[v13], v8, v5);
  sub_1001F4CB8(0, 0, v10, &unk_100EC5AF8, v14);

  return result;
}

uint64_t sub_1002CC120(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[20] = a4;
  v5[21] = a5;
  sub_10010FC20(&unk_101181520, &qword_100EBCC60);
  v5[22] = swift_task_alloc();
  v6 = type metadata accessor for Logger();
  v5[23] = v6;
  v5[24] = *(v6 - 8);
  v5[25] = swift_task_alloc();
  v5[26] = swift_task_alloc();
  v5[27] = type metadata accessor for MainActor();
  v5[28] = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[29] = v8;
  v5[30] = v7;

  return _swift_task_switch(sub_1002CC25C, v8, v7);
}

uint64_t sub_1002CC25C()
{
  *(v0[20] + OBJC_IVAR____TtC5Music13LaunchOptions_subscriptionStatusObserver) = 0;

  v0[31] = *ApplicationCapabilities.Controller.shared.unsafeMutableAddressor();

  v1 = swift_task_alloc();
  v0[32] = v1;
  *v1 = v0;
  v1[1] = sub_1002CC324;

  return ApplicationCapabilities.Controller.updated()((v0 + 2));
}

uint64_t sub_1002CC324()
{
  v1 = *v0;

  v2 = *(v1 + 240);
  v3 = *(v1 + 232);

  return _swift_task_switch(sub_1002CC468, v3, v2);
}

uint64_t sub_1002CC468()
{
  v0[18] = v0[13];
  v1 = v0[24];
  sub_1000089F8((v0 + 18), (v0 + 19), &qword_10118A3E8, &qword_100EC5B00);
  sub_100014984((v0 + 2));
  v2 = (v1 + 16);
  if (v0[18])
  {
    v3 = v0[26];
    v4 = v0[23];
    sub_1000095E8((v0 + 18), &qword_10118A3E8, &qword_100EC5B00);
    v5 = Logger.sharePlayTogether.unsafeMutableAddressor();
    (*v2)(v3, v5, v4);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v6, v7, "Got subscription status, trying again", v8, 2u);
    }

    v9 = v0[26];
    v10 = v0[23];
    v11 = v0[24];

    (*(v11 + 8))(v9, v10);
    v12 = swift_task_alloc();
    v0[33] = v12;
    *v12 = v0;
    v12[1] = sub_1002CC7E4;
    v13 = v0[21];

    return sub_1002CA3D8(v13);
  }

  else
  {
    v15 = v0[25];
    v16 = v0[23];

    v17 = Logger.sharePlayTogether.unsafeMutableAddressor();
    (*v2)(v15, v17, v16);
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&_mh_execute_header, v18, v19, "Could not get subscription status, returning", v20, 2u);
    }

    v22 = v0[24];
    v21 = v0[25];
    v23 = v0[22];
    v24 = v0[23];
    v25 = v0[20];

    (*(v22 + 8))(v21, v24);
    v26 = type metadata accessor for TaskPriority();
    (*(*(v26 - 8) + 56))(v23, 1, 1, v26);

    v27 = static MainActor.shared.getter();
    v28 = swift_allocObject();
    v28[2] = v27;
    v28[3] = &protocol witness table for MainActor;
    v28[4] = v25;
    sub_1001F4CB8(0, 0, v23, &unk_100EC5B08, v28);

    v29 = v0[1];

    return v29();
  }
}

uint64_t sub_1002CC7E4()
{
  v1 = *v0;

  v2 = *(v1 + 240);
  v3 = *(v1 + 232);

  return _swift_task_switch(sub_1002CC904, v3, v2);
}

uint64_t sub_1002CC904()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1002CC980(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[8] = a4;
  v5 = type metadata accessor for AppInterfaceContext.Activity(0);
  v4[9] = v5;
  v6 = *(v5 - 8);
  v4[10] = v6;
  v4[11] = *(v6 + 64);
  v4[12] = swift_task_alloc();
  v4[13] = swift_task_alloc();
  v4[14] = swift_task_alloc();
  type metadata accessor for Locale();
  v4[15] = swift_task_alloc();
  type metadata accessor for String.LocalizationValue();
  v4[16] = swift_task_alloc();
  type metadata accessor for MainActor();
  v4[17] = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1002CCAEC, v8, v7);
}

uint64_t sub_1002CCAEC()
{
  v1 = *(v0 + 64);

  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  v2 = String._bridgeToObjectiveC()();

  v3 = String._bridgeToObjectiveC()();

  v4 = [objc_opt_self() alertControllerWithTitle:v2 message:v3 preferredStyle:1];

  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  v5 = String._bridgeToObjectiveC()();

  v6 = [objc_opt_self() actionWithTitle:v5 style:0 handler:0];

  [v4 addAction:v6];
  v7 = [*(v1 + OBJC_IVAR____TtC5Music13LaunchOptions_windowScene) delegate];
  if (!v7)
  {

    *(v0 + 48) = 0;
    *(v0 + 16) = 0u;
    *(v0 + 32) = 0u;
LABEL_9:
    sub_1000095E8(v0 + 16, &unk_101184EA0, &unk_100EBFA20);
    goto LABEL_10;
  }

  *(v0 + 56) = v7;
  sub_10010FC20(&unk_101184050, &unk_100EBFA30);
  sub_10010FC20(&unk_101184EB0, &qword_100ED56D0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    *(v0 + 48) = 0;
    *(v0 + 16) = 0u;
    *(v0 + 32) = 0u;
    goto LABEL_8;
  }

  v8 = *(v0 + 40);
  if (!v8)
  {
LABEL_8:

    goto LABEL_9;
  }

  v9 = *(*sub_10000954C((v0 + 16), v8) + OBJC_IVAR____TtC5Music17MainSceneDelegate_interfaceContext);

  sub_10000959C((v0 + 16));
  if (v9)
  {
    v11 = *(v0 + 104);
    v10 = *(v0 + 112);
    v12 = *(v0 + 96);
    v13 = *(v0 + 80);
    *v10 = v4;
    *(v10 + 8) = 1;
    *(v10 + 16) = &_swiftEmptySetSingleton;
    swift_storeEnumTagMultiPayload();
    sub_1002CF480(v10, v11, type metadata accessor for AppInterfaceContext.Activity);
    sub_1002CF480(v11, v12, type metadata accessor for AppInterfaceContext.Activity);
    v14 = (*(v13 + 80) + 32) & ~*(v13 + 80);
    v15 = swift_allocObject();
    *(v15 + 16) = 0;
    *(v15 + 24) = 0;
    sub_1002CF4E8(v12, v15 + v14, type metadata accessor for AppInterfaceContext.Activity);
    v16 = v4;
    sub_100706900(v11, sub_100139B24, v15);

    sub_1002CF550(v11, type metadata accessor for AppInterfaceContext.Activity);
    sub_1002CF550(v10, type metadata accessor for AppInterfaceContext.Activity);
  }

  else
  {
  }

LABEL_10:

  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_1002CCF58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[8] = a4;
  v5 = type metadata accessor for AppInterfaceContext.Activity(0);
  v4[9] = v5;
  v6 = *(v5 - 8);
  v4[10] = v6;
  v4[11] = *(v6 + 64);
  v4[12] = swift_task_alloc();
  v4[13] = swift_task_alloc();
  v4[14] = swift_task_alloc();
  type metadata accessor for Locale();
  v4[15] = swift_task_alloc();
  type metadata accessor for String.LocalizationValue();
  v4[16] = swift_task_alloc();
  type metadata accessor for MainActor();
  v4[17] = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1002CD0C4, v8, v7);
}

uint64_t sub_1002CD0C4()
{
  v1 = *(v0 + 64);

  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  v2 = String._bridgeToObjectiveC()();

  v3 = String._bridgeToObjectiveC()();

  v4 = [objc_opt_self() alertControllerWithTitle:v2 message:v3 preferredStyle:1];

  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  v5 = String._bridgeToObjectiveC()();

  v6 = [objc_opt_self() actionWithTitle:v5 style:0 handler:0];

  [v4 addAction:v6];
  v7 = [*(v1 + OBJC_IVAR____TtC5Music13LaunchOptions_windowScene) delegate];
  if (!v7)
  {

    *(v0 + 48) = 0;
    *(v0 + 16) = 0u;
    *(v0 + 32) = 0u;
LABEL_9:
    sub_1000095E8(v0 + 16, &unk_101184EA0, &unk_100EBFA20);
    goto LABEL_10;
  }

  *(v0 + 56) = v7;
  sub_10010FC20(&unk_101184050, &unk_100EBFA30);
  sub_10010FC20(&unk_101184EB0, &qword_100ED56D0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    *(v0 + 48) = 0;
    *(v0 + 16) = 0u;
    *(v0 + 32) = 0u;
    goto LABEL_8;
  }

  v8 = *(v0 + 40);
  if (!v8)
  {
LABEL_8:

    goto LABEL_9;
  }

  v9 = *(*sub_10000954C((v0 + 16), v8) + OBJC_IVAR____TtC5Music17MainSceneDelegate_interfaceContext);

  sub_10000959C((v0 + 16));
  if (v9)
  {
    v11 = *(v0 + 104);
    v10 = *(v0 + 112);
    v12 = *(v0 + 96);
    v13 = *(v0 + 80);
    *v10 = v4;
    *(v10 + 8) = 1;
    *(v10 + 16) = &_swiftEmptySetSingleton;
    swift_storeEnumTagMultiPayload();
    sub_1002CF480(v10, v11, type metadata accessor for AppInterfaceContext.Activity);
    sub_1002CF480(v11, v12, type metadata accessor for AppInterfaceContext.Activity);
    v14 = (*(v13 + 80) + 32) & ~*(v13 + 80);
    v15 = swift_allocObject();
    *(v15 + 16) = 0;
    *(v15 + 24) = 0;
    sub_1002CF4E8(v12, v15 + v14, type metadata accessor for AppInterfaceContext.Activity);
    v16 = v4;
    sub_100706900(v11, sub_100139B24, v15);

    sub_1002CF550(v11, type metadata accessor for AppInterfaceContext.Activity);
    sub_1002CF550(v10, type metadata accessor for AppInterfaceContext.Activity);
  }

  else
  {
  }

LABEL_10:

  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_1002CD534(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for URL();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v4 = type metadata accessor for Logger();
  v2[7] = v4;
  v2[8] = *(v4 - 8);
  v2[9] = swift_task_alloc();
  v2[10] = swift_task_alloc();
  type metadata accessor for MainActor();
  v2[11] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1002CD690, v6, v5);
}

uint64_t sub_1002CD690()
{
  v39 = v0;
  v1 = v0[10];
  v2 = v0[8];
  v3 = v0[5];
  v4 = v0[6];
  v5 = v0[4];
  v6 = v0[2];

  v7 = Logger.sharePlayTogether.unsafeMutableAddressor();
  v34 = *(v2 + 16);
  v35 = v7;
  v34(v1);
  (*(v3 + 16))(v4, v6, v5);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  v10 = os_log_type_enabled(v8, v9);
  v11 = v0[8];
  v36 = v0[7];
  v37 = v0[10];
  v13 = v0[5];
  v12 = v0[6];
  v14 = &stru_101148000;
  v15 = v0[4];
  if (v10)
  {
    v16 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v38 = v33;
    *v16 = 136315394;
    sub_1002CF674(&qword_1011A4850, &type metadata accessor for URL, &protocol conformance descriptor for URL);
    v17 = dispatch thunk of CustomStringConvertible.description.getter();
    v19 = v18;
    (*(v13 + 8))(v12, v15);
    v20 = sub_1000105AC(v17, v19, &v38);

    *(v16 + 4) = v20;
    *(v16 + 12) = 1024;
    v21 = [objc_opt_self() sharedPrivacyInfo];
    LODWORD(v17) = [v21 privacyAcknowledgementRequiredForMusic];

    *(v16 + 14) = v17;
    v14 = &stru_101148000;
    _os_log_impl(&_mh_execute_header, v8, v9, "Handling URL %s - privacyAcknowledgementRequiredForMusic:%{BOOL}d", v16, 0x12u);
    sub_10000959C(v33);

    v22 = *(v11 + 8);
    v22(v37, v36);
  }

  else
  {

    (*(v13 + 8))(v12, v15);
    v22 = *(v11 + 8);
    v22(v37, v36);
  }

  v23 = [objc_opt_self() v14[136].name];
  v24 = [v23 privacyAcknowledgementRequiredForMusic];

  if (v24)
  {
    (v34)(v0[9], v35, v0[7]);
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&_mh_execute_header, v25, v26, "Waiting for GDPR agreement to launch sing", v27, 2u);
    }

    v28 = v0[9];
    v29 = v0[7];
    v30 = v0[3];

    v22(v28, v29);
    type metadata accessor for PrivacyAcknowledgementObserver();
    swift_allocObject();

    *(v30 + OBJC_IVAR____TtC5Music13LaunchOptions_privacyAcknowledgementObserver) = PrivacyAcknowledgementObserver.init(dispatchOnMainThread:handler:)(1, sub_1002D0278, v30);
  }

  else
  {
    sub_1002CDA98();
  }

  v31 = v0[1];

  return v31();
}

uint64_t sub_1002CDA98()
{
  sub_10010FC20(&qword_101183A20, &unk_100EBCF80);
  __chkstk_darwin();
  v40 = &v35 - v0;
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  __chkstk_darwin();
  v4 = &v35 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for URLComponents();
  v41 = *(v5 - 8);
  v42 = v5;
  __chkstk_darwin();
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  __chkstk_darwin();
  v39 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v12 = &v35 - v11;
  v13 = Logger.sharePlayTogether.unsafeMutableAddressor();
  v37 = *(v9 + 16);
  v38 = v13;
  v37(v12);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v36 = v4;
    *v16 = 0;
    _os_log_impl(&_mh_execute_header, v14, v15, "Launch Sing", v16, 2u);
    v4 = v36;
  }

  v17 = *(v9 + 8);
  v17(v12, v8);
  URLComponents.init()();
  URLComponents.scheme.setter();
  URLComponents.host.setter();
  URLComponents.path.setter();
  v18 = v40;
  URLComponents.url.getter();
  if ((*(v2 + 48))(v18, 1, v1) == 1)
  {
    sub_1000095E8(v18, &qword_101183A20, &unk_100EBCF80);
    v19 = v39;
    (v37)(v39, v38, v8);
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v43 = v23;
      *v22 = 136315138;
      swift_beginAccess();
      sub_1002CF674(&qword_10118A3D8, &type metadata accessor for URLComponents, &protocol conformance descriptor for URLComponents);
      v40 = v8;
      v24 = v42;
      v25 = dispatch thunk of CustomStringConvertible.description.getter();
      v27 = sub_1000105AC(v25, v26, &v43);

      *(v22 + 4) = v27;
      _os_log_impl(&_mh_execute_header, v20, v21, "Unable to launch SingMic %s", v22, 0xCu);
      sub_10000959C(v23);

      v17(v39, v40);
      return (*(v41 + 8))(v7, v24);
    }

    v17(v19, v8);
  }

  else
  {
    (*(v2 + 32))(v4, v18, v1);
    v29 = [objc_opt_self() sharedApplication];
    URL._bridgeToObjectiveC()(v30);
    v32 = v31;
    sub_10010CD7C(_swiftEmptyArrayStorage);
    type metadata accessor for OpenExternalURLOptionsKey(0);
    v33 = v1;
    sub_1002CF674(&qword_10118A3E0, type metadata accessor for OpenExternalURLOptionsKey, &unk_100EBC3A0);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    [v29 openURL:v32 options:isa completionHandler:0];

    (*(v2 + 8))(v4, v33);
  }

  return (*(v41 + 8))(v7, v42);
}

double sub_1002CE0DC(char a1, uint64_t a2)
{
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  *&result = __chkstk_darwin().n128_u64[0];
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a1 & 1) == 0)
  {
    v9 = Logger.sharePlayTogether.unsafeMutableAddressor();
    (*(v5 + 16))(v8, v9, v4);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v10, v11, "GDPR has been accepted, launch sing.", v12, 2u);
    }

    (*(v5 + 8))(v8, v4);
    sub_1002CDA98();
    *(a2 + OBJC_IVAR____TtC5Music13LaunchOptions_privacyAcknowledgementObserver) = 0;
  }

  return result;
}

uint64_t sub_1002CE258()
{
  sub_1002CF550(v0 + OBJC_IVAR____TtC5Music13LaunchOptions_source, type metadata accessor for LaunchOptions.Source);
  sub_1002CF550(v0 + OBJC_IVAR____TtC5Music13LaunchOptions_kind, type metadata accessor for LaunchOptions.Kind);

  sub_100020438(*(v0 + OBJC_IVAR____TtC5Music13LaunchOptions_completionHandler), *(v0 + OBJC_IVAR____TtC5Music13LaunchOptions_completionHandler + 8));

  sub_1000095E8(v0 + OBJC_IVAR____TtC5Music13LaunchOptions_referrerURL, &qword_101183A20, &unk_100EBCF80);

  return v0;
}

uint64_t sub_1002CE330()
{
  sub_1002CE258();

  return swift_deallocClassInstance();
}

void sub_1002CE3B0(uint64_t a1, __n128 a2)
{
  type metadata accessor for LaunchOptions.Source(319);
  if (v2 <= 0x3F)
  {
    type metadata accessor for LaunchOptions.Kind(319);
    if (v3 <= 0x3F)
    {
      sub_100039B3C(319);
      if (v4 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_1002CE524(uint64_t a1)
{
  type metadata accessor for URL();
  if (v1 <= 0x3F)
  {
    sub_1002CE5E0();
    if (v2 <= 0x3F)
    {
      type metadata accessor for PlaybackIntentDescriptor(319);
      if (v3 <= 0x3F)
      {
        sub_1002CE628(319);
        if (v4 <= 0x3F)
        {
          sub_10005B724();
          if (v5 <= 0x3F)
          {
            swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1002CE5E0()
{
  if (!qword_10118A130)
  {
    v0 = sub_10001F7E8();
    if (!v1)
    {
      atomic_store(v0, &qword_10118A130);
    }
  }
}

void sub_1002CE628(uint64_t a1)
{
  if (!qword_10118A140)
  {
    sub_1001109D0(&qword_1011815E0, &qword_100EBD050);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_10118A140);
    }
  }
}

uint64_t sub_1002CE6B0(uint64_t a1)
{
  result = type metadata accessor for URL();
  if (v2 <= 0x3F)
  {
    result = sub_100009F78(319, qword_10118A200, UIApplicationShortcutItem_ptr);
    if (v3 <= 0x3F)
    {
      result = sub_100009F78(319, &qword_101190C20, NSUserActivity_ptr);
      if (v4 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_1002CE758()
{
  v0 = type metadata accessor for Logger();
  sub_100006080(v0, qword_101189E90);
  sub_1000060E4(v0, qword_101189E90);
  return static Logger.music(_:)(0x636E75614C4C5255, 0xEC000000676E6968);
}

void sub_1002CE7C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v65 = a1;
  v66 = a2;

  v4 = String.init<A>(_:)();
  v6 = v4;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_1002CED50(v4, v5);
    v36 = v35;

    v5 = v36;
    if ((v36 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      v7 = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v8 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      v7 = _StringObject.sharedUTF8.getter();
      v8 = v64;
    }

    v9 = *v7;
    if (v9 == 43)
    {
      if (v8 >= 1)
      {
        v19 = v8 - 1;
        if (v19)
        {
          v20 = a3 + 48;
          v21 = a3 + 55;
          v22 = a3 + 87;
          if (a3 > 10)
          {
            v20 = 58;
          }

          else
          {
            v22 = 97;
            v21 = 65;
          }

          if (v7)
          {
            v23 = 0;
            v24 = v7 + 1;
            while (1)
            {
              v25 = *v24;
              if (v25 < 0x30 || v25 >= v20)
              {
                if (v25 < 0x41 || v25 >= v21)
                {
                  if (v25 < 0x61 || v25 >= v22)
                  {
                    goto LABEL_125;
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

              v27 = v23 * a3;
              if ((v23 * a3) >> 64 == (v23 * a3) >> 63)
              {
                v23 = v27 + (v25 + v26);
                if (!__OFADD__(v27, (v25 + v26)))
                {
                  ++v24;
                  if (--v19)
                  {
                    continue;
                  }
                }
              }

              goto LABEL_125;
            }
          }
        }

        goto LABEL_125;
      }

      goto LABEL_129;
    }

    if (v9 != 45)
    {
      if (v8)
      {
        v28 = a3 + 48;
        v29 = a3 + 55;
        v30 = a3 + 87;
        if (a3 > 10)
        {
          v28 = 58;
        }

        else
        {
          v30 = 97;
          v29 = 65;
        }

        if (v7)
        {
          v31 = 0;
          while (1)
          {
            v32 = *v7;
            if (v32 < 0x30 || v32 >= v28)
            {
              if (v32 < 0x41 || v32 >= v29)
              {
                if (v32 < 0x61 || v32 >= v30)
                {
                  goto LABEL_125;
                }

                v33 = -87;
              }

              else
              {
                v33 = -55;
              }
            }

            else
            {
              v33 = -48;
            }

            v34 = v31 * a3;
            if ((v31 * a3) >> 64 == (v31 * a3) >> 63)
            {
              v31 = v34 + (v32 + v33);
              if (!__OFADD__(v34, (v32 + v33)))
              {
                ++v7;
                if (--v8)
                {
                  continue;
                }
              }
            }

            goto LABEL_125;
          }
        }
      }

      goto LABEL_125;
    }

    if (v8 >= 1)
    {
      v10 = v8 - 1;
      if (v10)
      {
        v11 = a3 + 48;
        v12 = a3 + 55;
        v13 = a3 + 87;
        if (a3 > 10)
        {
          v11 = 58;
        }

        else
        {
          v13 = 97;
          v12 = 65;
        }

        if (v7)
        {
          v14 = 0;
          v15 = v7 + 1;
          while (1)
          {
            v16 = *v15;
            if (v16 < 0x30 || v16 >= v11)
            {
              if (v16 < 0x41 || v16 >= v12)
              {
                if (v16 < 0x61 || v16 >= v13)
                {
                  break;
                }

                v17 = -87;
              }

              else
              {
                v17 = -55;
              }
            }

            else
            {
              v17 = -48;
            }

            v18 = v14 * a3;
            if ((v14 * a3) >> 64 == (v14 * a3) >> 63)
            {
              v14 = v18 - (v16 + v17);
              if (!__OFSUB__(v18, (v16 + v17)))
              {
                ++v15;
                if (--v10)
                {
                  continue;
                }
              }
            }

            break;
          }
        }
      }

LABEL_125:

      return;
    }

    __break(1u);
LABEL_128:
    __break(1u);
LABEL_129:
    __break(1u);
    goto LABEL_130;
  }

  v37 = HIBYTE(v5) & 0xF;
  v65 = v6;
  v66 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v37)
      {
        v56 = 0;
        v57 = a3 + 48;
        v58 = a3 + 55;
        v59 = a3 + 87;
        if (a3 > 10)
        {
          v57 = 58;
        }

        else
        {
          v59 = 97;
          v58 = 65;
        }

        v60 = &v65;
        while (1)
        {
          v61 = *v60;
          if (v61 < 0x30 || v61 >= v57)
          {
            if (v61 < 0x41 || v61 >= v58)
            {
              if (v61 < 0x61 || v61 >= v59)
              {
                goto LABEL_125;
              }

              v62 = -87;
            }

            else
            {
              v62 = -55;
            }
          }

          else
          {
            v62 = -48;
          }

          v63 = v56 * a3;
          if ((v56 * a3) >> 64 == (v56 * a3) >> 63)
          {
            v56 = v63 + (v61 + v62);
            if (!__OFADD__(v63, (v61 + v62)))
            {
              v60 = (v60 + 1);
              if (--v37)
              {
                continue;
              }
            }
          }

          goto LABEL_125;
        }
      }

      goto LABEL_125;
    }

    if (v37)
    {
      v38 = v37 - 1;
      if (v38)
      {
        v39 = 0;
        v40 = a3 + 48;
        v41 = a3 + 55;
        v42 = a3 + 87;
        if (a3 > 10)
        {
          v40 = 58;
        }

        else
        {
          v42 = 97;
          v41 = 65;
        }

        v43 = &v65 + 1;
        while (1)
        {
          v44 = *v43;
          if (v44 < 0x30 || v44 >= v40)
          {
            if (v44 < 0x41 || v44 >= v41)
            {
              if (v44 < 0x61 || v44 >= v42)
              {
                goto LABEL_125;
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

          v46 = v39 * a3;
          if ((v39 * a3) >> 64 == (v39 * a3) >> 63)
          {
            v39 = v46 - (v44 + v45);
            if (!__OFSUB__(v46, (v44 + v45)))
            {
              ++v43;
              if (--v38)
              {
                continue;
              }
            }
          }

          goto LABEL_125;
        }
      }

      goto LABEL_125;
    }

    goto LABEL_128;
  }

  if (v37)
  {
    v47 = v37 - 1;
    if (v47)
    {
      v48 = 0;
      v49 = a3 + 48;
      v50 = a3 + 55;
      v51 = a3 + 87;
      if (a3 > 10)
      {
        v49 = 58;
      }

      else
      {
        v51 = 97;
        v50 = 65;
      }

      v52 = &v65 + 1;
      while (1)
      {
        v53 = *v52;
        if (v53 < 0x30 || v53 >= v49)
        {
          if (v53 < 0x41 || v53 >= v50)
          {
            if (v53 < 0x61 || v53 >= v51)
            {
              goto LABEL_125;
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

        v55 = v48 * a3;
        if ((v48 * a3) >> 64 == (v48 * a3) >> 63)
        {
          v48 = v55 + (v53 + v54);
          if (!__OFADD__(v55, (v53 + v54)))
          {
            ++v52;
            if (--v47)
            {
              continue;
            }
          }
        }

        goto LABEL_125;
      }
    }

    goto LABEL_125;
  }

LABEL_130:
  __break(1u);
}

uint64_t sub_1002CED50(uint64_t a1, unint64_t a2)
{
  v2 = String.subscript.getter();
  v6 = sub_1002CEDD0(v2, v3, v4, v5);

  return v6;
}

uint64_t sub_1002CEDD0(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v9 = Substring.UTF8View.distance(from:to:)();
    if (!v9 || (v10 = v9, v11 = sub_10000DA5C(v9, 0), v12 = sub_1002CEF28(v14, (v11 + 4), v10, a1, a2, a3, a4), , , v12 == v10))
    {
      v13 = static String._uncheckedFromUTF8(_:)();

      return v13;
    }

    __break(1u);
  }

  else
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v14[0] = a3;
      v14[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return static String._uncheckedFromUTF8(_:)();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }
  }

  _StringObject.sharedUTF8.getter();
LABEL_4:

  return static String._uncheckedFromUTF8(_:)();
}

unint64_t sub_1002CEF28(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_34;
  }

  if (a3 < 0)
  {
    goto LABEL_38;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_34:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    v17 = v12 & 0xC;
    result = v12;
    if (v17 == v15)
    {
      result = sub_1002CF148(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = String.UTF8View._foreignSubscript(position:)();
      v19 = result;
      if (v17 != v15)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
        if (v17 != v15)
        {
          goto LABEL_23;
        }
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = _StringObject.sharedUTF8.getter();
        }

        v19 = *(result + v18);
        if (v17 != v15)
        {
LABEL_23:
          if ((a7 & 0x1000000000000000) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_27;
        }
      }
    }

    result = sub_1002CF148(v12, a6, a7);
    v12 = result;
    if ((a7 & 0x1000000000000000) == 0)
    {
LABEL_24:
      v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_29;
    }

LABEL_27:
    if (v23 <= v12 >> 16)
    {
      goto LABEL_37;
    }

    result = String.UTF8View._foreignIndex(after:)();
    v12 = result;
LABEL_29:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_34;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_36;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

unint64_t sub_1002CF148(unint64_t a1, uint64_t a2, uint64_t a3)
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

unint64_t sub_1002CF1C4(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_101099F20, v2);

  if (v3 >= 4)
  {
    return 4;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_1002CF218(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_101099FA0, v2);

  if (v3 >= 0xD)
  {
    return 13;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1002CF264(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    if (a1 == 0xD000000000000013 && 0x8000000100E45280 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 0;
    }

    if (a1 == 0xD000000000000014 && 0x8000000100E45260 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 4;
    }

    if (a1 == 0xD000000000000015 && 0x8000000100E45240 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 2;
    }

    if (a1 == 0xD000000000000019 && 0x8000000100E45220 == a2)
    {

      return 1;
    }

    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v5)
    {
      return 1;
    }
  }

  return 0;
}

BOOL sub_1002CF3F4(uint64_t a1)
{
  v3 = *(type metadata accessor for URL() - 8);
  v4 = *(v1 + 16);
  v5 = v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  return sub_1002C0E18(a1, v4, v5);
}

uint64_t sub_1002CF480(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1002CF4E8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1002CF550(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1002CF5B0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100008F30;

  return sub_1002BFAAC(a1, v4, v5, v6, v7, (v1 + 6));
}

uint64_t sub_1002CF674(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1002CF6BC(uint64_t a1)
{
  v4 = *(sub_10010FC20(&qword_10118A308, &qword_100EC5A18) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100008F30;

  return sub_1002C0324(a1, v7, v8, v1 + v5, v1 + v6);
}

uint64_t sub_1002CF7E4(uint64_t a1)
{
  v4 = *(type metadata accessor for URL() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100008F30;

  return sub_1002C1038(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_1002CF984(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10002F3F4;

  return sub_1002C45CC(a1, v4, v5, v6);
}

uint64_t sub_1002CFA38(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100008F30;

  return sub_1002C40C0(a1, v4, v5, v6);
}

uint64_t sub_1002CFAEC(void *a1, void *a2)
{
  v62 = a2;
  sub_10010FC20(&qword_101183A20, &unk_100EBCF80);
  __chkstk_darwin();
  v53 = &v51 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v5 = &v51 - v4;
  __chkstk_darwin();
  v7 = &v51 - v6;
  v8 = type metadata accessor for URL();
  v9 = *(v8 - 8);
  __chkstk_darwin();
  v11 = &v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v12 = __chkstk_darwin().n128_u64[0];
  v14 = &v51 - v13;
  v15 = [a1 options];
  v16 = [a1 URL];
  static URL._unconditionallyBridgeFromObjectiveC(_:)();

  v17 = sub_100734164();
  v19 = v18;
  v57 = *(v9 + 8);
  v58 = v9 + 8;
  v57(v14, v8);
  v63 = v15;
  v20 = [v15 sourceApplication];
  if (v20)
  {
    v21 = v20;
    v59 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v23 = v22;
  }

  else
  {
    v59 = v17;

    v23 = v19;
  }

  if ([v63 annotation])
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v65 = 0u;
    v66 = 0u;
  }

  v67[0] = v65;
  v67[1] = v66;
  v60 = v11;
  v56 = v19;
  if (*(&v66 + 1))
  {
    sub_10010FC20(&qword_101197BD0, &qword_100EC9700);
    if (swift_dynamicCast())
    {
      v24 = v64;
      goto LABEL_12;
    }
  }

  else
  {
    sub_1000095E8(v67, &unk_101183F30, qword_100EBF960);
  }

  v24 = 0;
LABEL_12:
  v61 = v9;
  v25 = *(v9 + 56);
  v25(v7, 1, 1, v8);
  if (!v24)
  {
    v25(v5, 1, 1, v8);
    sub_1000095E8(v5, &qword_101183A20, &unk_100EBCF80);
    v35 = v60;
    v36 = v57;
    v37 = v62;
    if (!v56)
    {
      goto LABEL_18;
    }

LABEL_32:

    v46 = [a1 URL];
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    sub_1007346B4(v35);
    v36(v14, v8);
    v39 = v61;
    goto LABEL_33;
  }

  v54 = a1;
  v55 = v23;
  v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v28 = v27;
  if (!*(v24 + 16))
  {

LABEL_21:
    v25(v5, 1, 1, v8);
    sub_1000095E8(v5, &qword_101183A20, &unk_100EBCF80);
    goto LABEL_22;
  }

  v29 = v26;
  v52 = v7;

  v30 = sub_100019C10(v29, v28);
  v32 = v31;

  if ((v32 & 1) == 0)
  {

    v7 = v52;
    goto LABEL_21;
  }

  sub_10000DD18(*(v24 + 56) + 32 * v30, v67);

  v33 = swift_dynamicCast();
  v25(v5, v33 ^ 1u, 1, v8);
  v34 = v61;
  if ((*(v61 + 48))(v5, 1, v8) != 1)
  {
    v7 = v52;
    sub_1000095E8(v52, &qword_101183A20, &unk_100EBCF80);

    (*(v34 + 32))(v7, v5, v8);
    v25(v7, 0, 1, v8);
    a1 = v54;
    v37 = v62;
    v35 = v60;
    goto LABEL_31;
  }

  sub_1000095E8(v5, &qword_101183A20, &unk_100EBCF80);
  v7 = v52;
LABEL_22:
  v37 = v62;
  v23 = v55;
  v40 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v35 = v60;
  if (!*(v24 + 16))
  {

    a1 = v54;
    v36 = v57;
    if (!v56)
    {
      goto LABEL_18;
    }

    goto LABEL_32;
  }

  v42 = sub_100019C10(v40, v41);
  v44 = v43;

  a1 = v54;
  if (v44)
  {
    sub_10000DD18(*(v24 + 56) + 32 * v42, v67);

    if (swift_dynamicCast())
    {
      v45 = v53;
      URL.init(string:)();

      sub_1000095E8(v7, &qword_101183A20, &unk_100EBCF80);
      sub_10003D17C(v45, v7, &qword_101183A20, &unk_100EBCF80);
    }
  }

  else
  {
  }

  v37 = v62;
LABEL_31:
  v36 = v57;
  v23 = v55;
  if (v56)
  {
    goto LABEL_32;
  }

LABEL_18:
  v38 = [a1 URL];
  static URL._unconditionallyBridgeFromObjectiveC(_:)();

  v39 = v61;
LABEL_33:
  (*(v39 + 16))(v14, v35, v8);
  type metadata accessor for LaunchOptions(0);
  v47 = swift_allocObject();
  sub_1002B8D68(v14, 0, v37);

  v36(v35, v8);
  v48 = (v47 + OBJC_IVAR____TtC5Music13LaunchOptions_sourceApplicationBundleIdentifier);
  *v48 = v59;
  v48[1] = v23;

  v49 = OBJC_IVAR____TtC5Music13LaunchOptions_referrerURL;
  swift_beginAccess();
  sub_10006B010(v7, v47 + v49, &qword_101183A20, &unk_100EBCF80);
  swift_endAccess();

  return v47;
}

double sub_1002D0280(uint64_t a1)
{
  v3 = *(type metadata accessor for URL() - 8);
  v4 = *(v1 + 16);
  v5 = v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  return sub_1002CBF24(a1, v4, v5);
}

uint64_t sub_1002D02F4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100008F30;

  return sub_1002CCF58(a1, v4, v5, v6);
}

uint64_t sub_1002D03A8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100008F30;

  return sub_1002CB9C8(a1, v4, v5, v6);
}

uint64_t sub_1002D045C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100008F30;

  return sub_1002CC980(a1, v4, v5, v6);
}

uint64_t sub_1002D0510(uint64_t a1)
{
  v4 = *(type metadata accessor for URL() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100008F30;

  return sub_1002CC120(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_1002D0610(uint64_t a1)
{
  v4 = *(type metadata accessor for URL() - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1002D0718;

  return sub_1002C6E24(a1, v1 + v5, v6);
}

uint64_t sub_1002D0718(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t sub_1002D081C(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for LaunchURL.Resolver(0) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for URL() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_100008F30;

  return sub_1002C7DDC(a1, v10, v11, v1 + v6, v1 + v9);
}

uint64_t sub_1002D096C(uint64_t a1)
{
  v4 = *(type metadata accessor for URL() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10002F3F4;

  return sub_1002C7630(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_1002D0A64(uint64_t a1)
{
  v4 = *(type metadata accessor for URL() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100008F30;

  return sub_1002C7574(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_1002D0B5C()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1002D0C28(uint64_t a1)
{
  v4 = *(type metadata accessor for URL() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100008F30;

  return sub_1002C74B8(a1, v6, v7, v8, v1 + v5);
}

unint64_t sub_1002D0D20()
{
  result = qword_10118A410;
  if (!qword_10118A410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10118A410);
  }

  return result;
}

unint64_t sub_1002D0D88()
{
  result = qword_10118A438;
  if (!qword_10118A438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10118A438);
  }

  return result;
}

double sub_1002D0E1C(uint64_t a1, void *aBlock)
{
  v2 = *(a1 + 32);
  v3 = _Block_copy(aBlock);
  v4 = swift_allocObject();
  *(v4 + 16) = v3;

  v2(sub_1002D2F88, v4);

  return result;
}

void sub_1002D0EB0(uint64_t a1, uint64_t a2)
{
  sub_100009F78(0, &qword_10118CDE0, UIMenuElement_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;
  (*(a2 + 16))(a2, isa);
}

void *sub_1002D0F2C(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v6 = type metadata accessor for Playlist();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin();
  v54 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3 >> 62)
  {
LABEL_27:
    v10 = _CocoaArrayWrapper.endIndex.getter();
    if (v10)
    {
      goto LABEL_3;
    }

    return 0;
  }

  v10 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v10)
  {
    return 0;
  }

LABEL_3:
  v11 = 0;
  v56 = a3 & 0xC000000000000001;
  v49 = a3 & 0xFFFFFFFFFFFFFF8;
  v53 = (v7 + 8);
  v8.n128_u64[0] = 136315138;
  v48 = v8;
  v46 = a2;
  v47 = a3;
  v55 = v10;
  while (1)
  {
    if (v56)
    {
      v14 = sub_1007E914C(v11, a3);
    }

    else
    {
      if (v11 >= *(v49 + 16))
      {
        goto LABEL_26;
      }

      v14 = *(a3 + 8 * v11 + 32);
    }

    v15 = v14;
    if (__OFADD__(v11, 1))
    {
      __break(1u);
LABEL_26:
      __break(1u);
      goto LABEL_27;
    }

    v57 = v11 + 1;
    _s11PlaylistTabCMa();
    v16 = swift_dynamicCastClass();
    if (v16)
    {
      break;
    }

LABEL_14:
    objc_opt_self();
    v19 = swift_dynamicCastObjCClass();
    if (v19)
    {
      v20 = v19;
      if (qword_10117F7A0 != -1)
      {
        swift_once();
      }

      v21 = type metadata accessor for Logger();
      sub_1000060E4(v21, qword_101218E00);
      v22 = v15;
      v23 = Logger.logObject.getter();
      v24 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        v51 = swift_slowAlloc();
        v58 = v51;
        *v25 = v48.n128_u32[0];
        v50 = v22;
        v26 = a1;
        v27 = [v20 description];
        v28 = v6;
        v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v52 = v22;
        v31 = v30;

        a1 = v26;
        v32 = v29;
        v6 = v28;
        v33 = sub_1000105AC(v32, v31, &v58);
        v22 = v52;

        *(v25 + 4) = v33;
        _os_log_impl(&_mh_execute_header, v23, v24, "[Tab Matching] 📁 Checking children for tab group: %s", v25, 0xCu);
        sub_10000959C(v51);
        a2 = v46;

        a3 = v47;
      }

      v12 = [v20 children];
      sub_100009F78(0, &qword_101181F70, UITab_ptr);
      v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      v13 = sub_1002D0F2C(a1, a2, v7);

      if (v13)
      {
        return v13;
      }
    }

    else
    {
    }

    ++v11;
    if (v57 == v55)
    {
      return 0;
    }
  }

  v13 = v16;
  v58 = v16;
  v17 = v15;
  v18 = v54;
  swift_getAtKeyPath();

  sub_1002D2F90(&unk_1011A4660, &type metadata accessor for Playlist, &protocol conformance descriptor for Playlist);
  v7 = static MusicItem<>.==~ infix(_:_:)();
  (*v53)(v18, v6);
  if ((v7 & 1) == 0)
  {

    goto LABEL_14;
  }

  if (qword_10117F7A0 != -1)
  {
    swift_once();
  }

  v34 = type metadata accessor for Logger();
  sub_1000060E4(v34, qword_101218E00);
  v35 = v17;
  v36 = Logger.logObject.getter();
  v37 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v58 = v39;
    *v38 = v48.n128_u32[0];
    v35 = v35;
    v40 = [v13 description];
    v41 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v43 = v42;

    v44 = sub_1000105AC(v41, v43, &v58);

    *(v38 + 4) = v44;
    _os_log_impl(&_mh_execute_header, v36, v37, "[Tab Matching] ✅ Found matching tab: %s", v38, 0xCu);
    sub_10000959C(v39);
  }

  return v13;
}

void *sub_1002D14D8(uint64_t a1, uint64_t a2, unint64_t a3, __n128 a4)
{
  v7 = type metadata accessor for MusicPin.Item();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin();
  v56 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3 >> 62)
  {
LABEL_27:
    v11 = _CocoaArrayWrapper.endIndex.getter();
    if (v11)
    {
      goto LABEL_3;
    }

    return 0;
  }

  v11 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v11)
  {
    return 0;
  }

LABEL_3:
  v12 = 0;
  v58 = a3 & 0xC000000000000001;
  v51 = a3 & 0xFFFFFFFFFFFFFF8;
  v55 = (v8 + 8);
  v9.n128_u64[0] = 136315138;
  v50 = v9;
  v48 = a2;
  v49 = a3;
  v57 = v11;
  while (1)
  {
    if (v58)
    {
      v16 = sub_1007E914C(v12, a3);
    }

    else
    {
      if (v12 >= *(v51 + 16))
      {
        goto LABEL_26;
      }

      v16 = *(a3 + 8 * v12 + 32);
    }

    v17 = v16;
    if (__OFADD__(v12, 1))
    {
      __break(1u);
LABEL_26:
      __break(1u);
      goto LABEL_27;
    }

    v59 = v12 + 1;
    _s6PinTabCMa(0);
    v18 = swift_dynamicCastClass();
    if (v18)
    {
      break;
    }

LABEL_14:
    objc_opt_self();
    v21 = swift_dynamicCastObjCClass();
    if (v21)
    {
      v22 = v21;
      if (qword_10117F7A0 != -1)
      {
        swift_once();
      }

      v23 = type metadata accessor for Logger();
      sub_1000060E4(v23, qword_101218E00);
      v24 = v17;
      v25 = Logger.logObject.getter();
      v26 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        v53 = swift_slowAlloc();
        v60 = v53;
        *v27 = v50.n128_u32[0];
        v52 = v24;
        v28 = a1;
        v29 = [v22 description];
        v30 = v7;
        v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v54 = v24;
        v33 = v32;

        a1 = v28;
        v34 = v31;
        v7 = v30;
        v35 = sub_1000105AC(v34, v33, &v60);
        v24 = v54;

        *(v27 + 4) = v35;
        _os_log_impl(&_mh_execute_header, v25, v26, "[Tab Matching] 📁 Checking children for tab group: %s", v27, 0xCu);
        sub_10000959C(v53);
        a2 = v48;

        a3 = v49;
      }

      v13 = [v22 children];
      sub_100009F78(0, &qword_101181F70, UITab_ptr);
      v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      v15 = sub_1002D14D8(a1, a2, v8, v14);

      if (v15)
      {
        return v15;
      }
    }

    else
    {
    }

    ++v12;
    if (v59 == v57)
    {
      return 0;
    }
  }

  v15 = v18;
  v60 = v18;
  v19 = v17;
  v20 = v56;
  swift_getAtKeyPath();

  sub_1002D2F90(&unk_10118A440, &type metadata accessor for MusicPin.Item, &protocol conformance descriptor for MusicPin.Item);
  v8 = dispatch thunk of static ApproximatelyEquatable.==~ infix(_:_:)();
  (*v55)(v20, v7);
  if ((v8 & 1) == 0)
  {

    goto LABEL_14;
  }

  if (qword_10117F7A0 != -1)
  {
    swift_once();
  }

  v36 = type metadata accessor for Logger();
  sub_1000060E4(v36, qword_101218E00);
  v37 = v19;
  v38 = Logger.logObject.getter();
  v39 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    v60 = v41;
    *v40 = v50.n128_u32[0];
    v37 = v37;
    v42 = [v15 description];
    v43 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v45 = v44;

    v46 = sub_1000105AC(v43, v45, &v60);

    *(v40 + 4) = v46;
    _os_log_impl(&_mh_execute_header, v38, v39, "[Tab Matching] ✅ Found matching tab: %s", v40, 0xCu);
    sub_10000959C(v41);
  }

  return v15;
}

void *sub_1002D1A7C(unsigned int a1, uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
LABEL_30:
    v3 = _CocoaArrayWrapper.endIndex.getter();
    if (v3)
    {
      goto LABEL_3;
    }

    return 0;
  }

  v3 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v3)
  {
    return 0;
  }

LABEL_3:
  v4 = 0;
  v46 = v3;
  while (1)
  {
    if ((a3 & 0xC000000000000001) != 0)
    {
      v8 = sub_1007E914C(v4, a3);
    }

    else
    {
      if (v4 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_29;
      }

      v8 = *(a3 + 8 * v4 + 32);
    }

    v9 = v8;
    v10 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      __break(1u);
LABEL_29:
      __break(1u);
      goto LABEL_30;
    }

    _s8FacetTabCMa();
    v11 = swift_dynamicCastClass();
    if (!v11)
    {
      goto LABEL_16;
    }

    v7 = v11;
    v51 = v11;
    v12 = v9;
    swift_getAtKeyPath();

    v13 = Library.Menu.Identifier.rawValue.getter(v50);
    v15 = v14;
    if (v13 == Library.Menu.Identifier.rawValue.getter(a1) && v15 == v16)
    {
      break;
    }

    v17 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v17)
    {
      goto LABEL_23;
    }

    v10 = v4 + 1;
LABEL_16:
    objc_opt_self();
    v18 = swift_dynamicCastObjCClass();
    if (v18)
    {
      v19 = v18;
      if (qword_10117F7A0 != -1)
      {
        swift_once();
      }

      v20 = type metadata accessor for Logger();
      sub_1000060E4(v20, qword_101218E00);
      v21 = v9;
      v22 = Logger.logObject.getter();
      v23 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        v45 = swift_slowAlloc();
        v51 = v45;
        *v24 = 136315138;
        v44 = v21;
        v25 = [v19 description];
        v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v27 = v21;
        v28 = v10;
        v30 = v29;

        v31 = sub_1000105AC(v26, v30, &v51);
        v10 = v28;
        v21 = v27;

        *(v24 + 4) = v31;
        _os_log_impl(&_mh_execute_header, v22, v23, "[Tab Matching] 📁 Checking children for tab group: %s", v24, 0xCu);
        sub_10000959C(v45);
      }

      v5 = [v19 children];
      sub_100009F78(0, &qword_101181F70, UITab_ptr);
      v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      v7 = sub_1002D1A7C(a1, a2, v6);

      v3 = v46;
      if (v7)
      {
        return v7;
      }
    }

    else
    {
    }

    ++v4;
    if (v10 == v3)
    {
      return 0;
    }
  }

LABEL_23:
  if (qword_10117F7A0 != -1)
  {
    swift_once();
  }

  v32 = type metadata accessor for Logger();
  sub_1000060E4(v32, qword_101218E00);
  v33 = v12;
  v34 = Logger.logObject.getter();
  v35 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v51 = v37;
    *v36 = 136315138;
    v33 = v33;
    v38 = [v7 description];
    v39 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v41 = v40;

    v42 = sub_1000105AC(v39, v41, &v51);

    *(v36 + 4) = v42;
    _os_log_impl(&_mh_execute_header, v34, v35, "[Tab Matching] ✅ Found matching tab: %s", v36, 0xCu);
    sub_10000959C(v37);
  }

  return v7;
}

uint64_t sub_1002D1F90()
{
  v2 = [v0 parent];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = &stru_101148000;
  v5 = [v2 children];
  v6 = sub_100009F78(0, &qword_101181F70, UITab_ptr);
  v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v8 = sub_1003FCB00(v0, v7);
  LOBYTE(v5) = v9;

  if (v5)
  {
LABEL_3:

    return 0;
  }

  v12 = [v3 children];
  v10 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v10 >> 62)
  {
    goto LABEL_65;
  }

  v13 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_8:

  if (__OFSUB__(v13, v8))
  {
    __break(1u);
LABEL_67:
    __break(1u);
    goto LABEL_68;
  }

  if ((v13 - v8) <= v8)
  {
    v14 = v8;
  }

  else
  {
    v14 = v13 - v8;
  }

  if (v14 < 1)
  {
    goto LABEL_67;
  }

  v15 = 1;
  while (1)
  {
    v1 = v8 + v15;
    if (__OFADD__(v8, v15))
    {
      __break(1u);
LABEL_60:
      __break(1u);
LABEL_61:
      __break(1u);
LABEL_62:
      __break(1u);
LABEL_63:
      __break(1u);
LABEL_64:
      __break(1u);
LABEL_65:
      v13 = _CocoaArrayWrapper.endIndex.getter();
      goto LABEL_8;
    }

    v10 = v8 - v15;
    if (__OFSUB__(v8, v15))
    {
      goto LABEL_60;
    }

    if ((v10 & 0x8000000000000000) == 0)
    {
      break;
    }

    v10 = 0;
    if (v1 < v13)
    {
      goto LABEL_21;
    }

LABEL_30:
    v25 = v10;
    v1 = 0;
    if (!v10)
    {
      goto LABEL_33;
    }

LABEL_31:
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {

      v1 = v10;
LABEL_33:

      goto LABEL_35;
    }

    v26 = [v10 isEnabled];

    v1 = v10;
    if (v26)
    {
LABEL_57:

      return v10;
    }

LABEL_35:

    if (v14 == v15)
    {
      v3 = v3;
      v28 = [v3 parent];
      if (v28)
      {

        v29 = sub_1002D1F90();
        return v29;
      }

      v10 = v8 + 1;
      if (!__OFADD__(v8, 1))
      {
        if (v10 >= v13)
        {
          goto LABEL_75;
        }

        v13 = [v3 v4[155].name];
        v1 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        if ((v1 & 0xC000000000000001) == 0)
        {
          if ((v10 & 0x8000000000000000) != 0)
          {
            __break(1u);
          }

          else if (v10 < *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            v30 = *(v1 + 8 * v10 + 32);
            goto LABEL_49;
          }

          __break(1u);
          goto LABEL_72;
        }

LABEL_69:
        v30 = sub_1007E914C(v10, v1);
LABEL_49:
        v13 = v30;

        objc_opt_self();
        v31 = swift_dynamicCastObjCClass();
        if (!v31)
        {
          goto LABEL_74;
        }

        v32 = [v31 v4[155].name];
        v1 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        if (!(v1 >> 62))
        {
          result = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (result)
          {
LABEL_52:
            if ((v1 & 0xC000000000000001) != 0)
            {
              goto LABEL_96;
            }

            if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              __break(1u);
              return result;
            }

            for (i = *(v1 + 32); ; i = sub_1007E914C(0, v1))
            {
              v10 = i;

              objc_opt_self();
              if (!swift_dynamicCastObjCClass())
              {
                goto LABEL_57;
              }

              v13 = v10;
LABEL_74:

LABEL_75:
              v27 = __OFSUB__(v8--, 1);
              if (v27)
              {
                break;
              }

              if ((v8 & 0x8000000000000000) != 0)
              {
                goto LABEL_3;
              }

              v34 = [v3 v4[155].name];
              v13 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

              if ((v13 & 0xC000000000000001) != 0)
              {
                goto LABEL_90;
              }

              if (v8 >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                __break(1u);
                goto LABEL_92;
              }

              v35 = *(v13 + 8 * v8 + 32);
LABEL_80:
              v8 = v35;

              objc_opt_self();
              v36 = swift_dynamicCastObjCClass();
              if (!v36)
              {

                return 0;
              }

              v13 = [v36 v4[155].name];
              v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

              if (!(v6 >> 62))
              {
                if (!*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  goto LABEL_93;
                }

                goto LABEL_83;
              }

LABEL_92:
              if (!_CocoaArrayWrapper.endIndex.getter())
              {
LABEL_93:

                goto LABEL_3;
              }

LABEL_83:
              if ((v6 & 0xC000000000000001) != 0)
              {
                v37 = sub_1007E914C(0, v6);
                goto LABEL_86;
              }

              if (*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                v37 = *(v6 + 32);
LABEL_86:
                v10 = v37;

                objc_opt_self();
                if (!swift_dynamicCastObjCClass())
                {
                  return v10;
                }

                return 0;
              }

              __break(1u);
LABEL_96:
              ;
            }

            __break(1u);
LABEL_90:
            v35 = sub_1007E914C(v8, v13);
            goto LABEL_80;
          }

LABEL_73:

          goto LABEL_74;
        }

LABEL_72:
        result = _CocoaArrayWrapper.endIndex.getter();
        if (result)
        {
          goto LABEL_52;
        }

        goto LABEL_73;
      }

LABEL_68:
      __break(1u);
      goto LABEL_69;
    }

    v27 = __OFADD__(v15++, 1);
    if (v27)
    {
      goto LABEL_61;
    }
  }

  v4 = [v3 v4[155].name];
  v16 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if ((v16 & 0xC000000000000001) != 0)
  {
    v17 = sub_1007E914C(v8 - v15, v16);
  }

  else
  {
    if (v10 >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_62;
    }

    v17 = *(v16 + 8 * v10 + 32);
  }

  v10 = v17;

  v4 = &stru_101148000;
  if (v1 >= v13)
  {
    goto LABEL_30;
  }

LABEL_21:
  v4 = [v3 v4[155].name];
  v18 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if ((v18 & 0xC000000000000001) != 0)
  {
    v19 = sub_1007E914C(v8 + v15, v18);
  }

  else
  {
    if ((v1 & 0x8000000000000000) != 0)
    {
      goto LABEL_63;
    }

    if (v1 >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_64;
    }

    v19 = *(v18 + 8 * v1 + 32);
  }

  v20 = v19;

  objc_opt_self();
  v21 = swift_dynamicCastObjCClass();
  v22 = v10;
  v23 = v20;
  v1 = v23;
  if (v21 || (v1 = v23, v24 = [v1 isEnabled], v1, !v24))
  {
    v4 = &stru_101148000;
    if (!v10)
    {
      goto LABEL_33;
    }

    goto LABEL_31;
  }

  return v1;
}

id sub_1002D2600()
{
  v1 = [v0 defaultChildIdentifier];
  if (v1)
  {
    v2 = v1;
    v3 = [v0 tabForIdentifier:v1];

    return v3;
  }

  v5 = [v0 children];
  sub_100009F78(0, &qword_101181F70, UITab_ptr);
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!(v6 >> 62))
  {
    result = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_6;
    }

LABEL_12:

    return 0;
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  if (!result)
  {
    goto LABEL_12;
  }

LABEL_6:
  if ((v6 & 0xC000000000000001) != 0)
  {
    v7 = sub_1007E914C(0, v6);
  }

  else
  {
    if (!*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v7 = *(v6 + 32);
  }

  v3 = v7;

  objc_opt_self();
  if (!swift_dynamicCastObjCClass())
  {
    return v3;
  }

  v8 = v3;
  v9 = sub_1002D2600();

  return v9;
}

uint64_t sub_1002D276C()
{
  v0 = type metadata accessor for UIButton.Configuration.Size();
  v1 = *(v0 - 8);
  __chkstk_darwin();
  v3 = &v17 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for UIButton.Configuration.CornerStyle();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UIButton.Configuration.borderless()();
  v8 = [objc_opt_self() currentTraitCollection];
  v9 = [v8 userInterfaceIdiom];

  if (v9 == 6)
  {
    v10 = objc_opt_self();
    v11 = [v10 configurationWithTextStyle:UIFontTextStyleTitle3];
    v12 = [v10 configurationWithWeight:5];
    v13 = [v11 configurationByApplyingConfiguration:v12];

    UIButton.Configuration.preferredSymbolConfigurationForImage.setter();
    v14 = [objc_opt_self() labelColor];
    UIButton.Configuration.baseForegroundColor.setter();
    (*(v5 + 104))(v7, enum case for UIButton.Configuration.CornerStyle.capsule(_:), v4);
    UIButton.Configuration.cornerStyle.setter();
    (*(v1 + 104))(v3, enum case for UIButton.Configuration.Size.small(_:), v0);
    return UIButton.Configuration.buttonSize.setter();
  }

  else
  {
    v16 = [objc_opt_self() configurationWithTextStyle:UIFontTextStyleSubheadline scale:3];
    return UIButton.Configuration.preferredSymbolConfigurationForImage.setter();
  }
}

void sub_1002D2A20(uint64_t a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4, uint64_t a5, void *a6)
{
  v9 = type metadata accessor for UITabBarControllerSidebar.ScrollTarget();
  v10 = *(v9 - 8);
  __chkstk_darwin();
  v12 = (&v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_6;
  }

  v14 = Strong;
  v15 = [Strong sidebar];
  v16 = [v15 isHidden];

  if ((v16 & 1) != 0 || (v17 = *(a1 + 48), v17 == 255) || (v18 = *(a1 + 56), v19 = *(a1 + 40), v20 = *(a1 + 24), v46 = *(a1 + 8), v47 = v20, v48 = v19, v49 = v17, v50 = v18, PresentationSource.Position.canPresent(from:)(v14)))
  {

LABEL_6:
    (a3)();
    return;
  }

  if (qword_10117F7A0 != -1)
  {
    swift_once();
  }

  v21 = type metadata accessor for Logger();
  sub_1000060E4(v21, qword_101218E00);
  v22 = a6;
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v42 = v25;
    v43 = swift_slowAlloc();
    v45 = v43;
    *v25 = 136446210;
    v26 = v22;
    v44 = v22;
    v27 = v26;
    v28 = [v26 description];
    v41 = v24;
    v29 = v28;
    v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v40 = v23;
    v32 = v31;

    v22 = v44;
    v33 = sub_1000105AC(v30, v32, &v45);

    v34 = v42;
    *(v42 + 1) = v33;
    v35 = v40;
    _os_log_impl(&_mh_execute_header, v40, v41, "Attempted to present popover on tab=%{public}s that is no longer visible in the sidebar — Attempting scroll to tab.", v34, 0xCu);
    sub_10000959C(v43);
  }

  else
  {
  }

  v36 = [v14 sidebar];
  *v12 = v22;
  (*(v10 + 104))(v12, enum case for UITabBarControllerSidebar.ScrollTarget.tab(_:), v9);
  v37 = v22;
  UITabBarControllerSidebar.scroll(to:animated:)();

  v38 = (*(v10 + 8))(v12, v9);
  a3(v38);
}

uint64_t UITab.commandIssuingIdentifier.getter()
{
  swift_getObjectType();
  v9 = _typeName(_:qualified:)();
  v1._countAndFlagsBits = 0x203A646928;
  v1._object = 0xE500000000000000;
  String.append(_:)(v1);
  v2 = [v0 identifier];
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;

  v6._countAndFlagsBits = v3;
  v6._object = v5;
  String.append(_:)(v6);

  v7._countAndFlagsBits = 41;
  v7._object = 0xE100000000000000;
  String.append(_:)(v7);
  return v9;
}

uint64_t sub_1002D2E40()
{
  v1 = *v0;
  swift_getObjectType();
  v10 = _typeName(_:qualified:)();
  v2._countAndFlagsBits = 0x203A646928;
  v2._object = 0xE500000000000000;
  String.append(_:)(v2);
  v3 = [v1 identifier];
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;

  v7._countAndFlagsBits = v4;
  v7._object = v6;
  String.append(_:)(v7);

  v8._countAndFlagsBits = 41;
  v8._object = 0xE100000000000000;
  String.append(_:)(v8);
  return v10;
}

unint64_t sub_1002D2EF4()
{
  result = qword_101181558;
  if (!qword_101181558)
  {
    sub_1001109D0(&qword_101181550, &unk_100EBCFF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101181558);
  }

  return result;
}

uint64_t sub_1002D2F90(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

id sub_1002D2FD8()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  type metadata accessor for Locale();
  __chkstk_darwin();
  type metadata accessor for String.LocalizationValue();
  __chkstk_darwin();
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_100009F78(0, &unk_101184750, UICollectionViewCell_ptr);
  UICollectionView.SupplementaryRegistration.init(elementKind:handler:)();
  v3 = OBJC_IVAR____TtC5Music32LibraryDownloadingViewController____lazy_storage___actionCellRegistration;
  v4 = sub_10010FC20(&qword_10118A4E8, &qword_100EC5CB8);
  (*(*(v4 - 8) + 56))(&v1[v3], 1, 1, v4);
  v5 = OBJC_IVAR____TtC5Music32LibraryDownloadingViewController____lazy_storage___listCellRegistration;
  v6 = sub_10010FC20(&unk_1011A4510, &qword_100EC5CC0);
  (*(*(v6 - 8) + 56))(&v1[v5], 1, 1, v6);
  *&v1[OBJC_IVAR____TtC5Music32LibraryDownloadingViewController____lazy_storage___collectionView] = 0;
  v7 = OBJC_IVAR____TtC5Music32LibraryDownloadingViewController_prefetchingController;
  v8 = objc_allocWithZone(type metadata accessor for ArtworkPrefetchingController());
  *&v1[v7] = sub_10003AAD8(0xD00000000000001BLL, 0x8000000100E45520);
  *&v1[OBJC_IVAR____TtC5Music32LibraryDownloadingViewController____lazy_storage___downloadsController] = 0;
  type metadata accessor for Track();
  MusicItemCollection.init(arrayLiteral:)();
  *&v1[OBJC_IVAR____TtC5Music32LibraryDownloadingViewController_updateTimer] = 0;
  *&v1[OBJC_IVAR____TtC5Music32LibraryDownloadingViewController_sections] = &off_10109A1C0;
  v16.receiver = v1;
  v16.super_class = ObjectType;
  v9 = objc_msgSendSuper2(&v16, "initWithNibName:bundle:", 0, 0);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  v10 = String._bridgeToObjectiveC()();

  [v9 setTitle:v10];

  v11 = [v9 traitCollection];
  v12 = UITraitCollection.preferredLargeTitleDisplayMode.getter();
  LOBYTE(ObjectType) = v13;

  if ((ObjectType & 1) == 0)
  {
    v14 = [v9 navigationItem];
    [v14 setLargeTitleDisplayMode:v12];
  }

  return v9;
}

uint64_t sub_1002D3384()
{
  ObjectType = swift_getObjectType();
  v35.receiver = v0;
  v35.super_class = ObjectType;
  objc_msgSendSuper2(&v35, "viewDidLoad");
  v1 = sub_1002D378C();
  v2 = OBJC_IVAR____TtC5Music32LibraryDownloadingViewController____lazy_storage___collectionView;
  v3 = *&v0[OBJC_IVAR____TtC5Music32LibraryDownloadingViewController____lazy_storage___collectionView];
  v4 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v5 = objc_allocWithZone(UICollectionViewCompositionalLayoutConfiguration);
  v6 = v3;

  v7 = [v5 init];
  v8 = swift_allocObject();
  *(v8 + 16) = 0;
  v9 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = sub_1002D8EC0;
  *(v10 + 32) = v4;
  *(v10 + 40) = 0u;
  *(v10 + 56) = 0u;
  *(v10 + 72) = static MPCPlayerCommandRequest.isAvailable(in:);
  *(v10 + 80) = 0;
  *(v10 + 88) = v8;
  v11 = objc_allocWithZone(UICollectionViewCompositionalLayout);
  aBlock[4] = sub_1002193FC;
  aBlock[5] = v10;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1005A63A8;
  aBlock[3] = &unk_1010A4E50;
  v12 = _Block_copy(aBlock);

  v13 = [v11 initWithSectionProvider:v12 configuration:v7];

  _Block_release(v12);

  [v1 setCollectionViewLayout:v13];

  v14 = *&v0[OBJC_IVAR____TtC5Music32LibraryDownloadingViewController_prefetchingController];
  [*&v0[v2] setPrefetchDataSource:v14];
  v15 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v16 = swift_allocObject();
  *(v16 + 16) = v15;
  *(v16 + 24) = ObjectType;
  v17 = (v14 + OBJC_IVAR____TtC5Music28ArtworkPrefetchingController_defaultArtworkMetricsProvider);
  v18 = *(v14 + OBJC_IVAR____TtC5Music28ArtworkPrefetchingController_defaultArtworkMetricsProvider);
  v19 = *(v14 + OBJC_IVAR____TtC5Music28ArtworkPrefetchingController_defaultArtworkMetricsProvider + 8);
  *v17 = sub_1002D8EC8;
  v17[1] = v16;

  sub_100020438(v18, v19);

  v20 = (v14 + OBJC_IVAR____TtC5Music28ArtworkPrefetchingController_artworkProvider);
  v21 = *(v14 + OBJC_IVAR____TtC5Music28ArtworkPrefetchingController_artworkProvider);
  v22 = *(v14 + OBJC_IVAR____TtC5Music28ArtworkPrefetchingController_artworkProvider + 8);
  *v20 = sub_1002D3EBC;
  v20[1] = 0;
  sub_100020438(v21, v22);
  v23 = sub_1002D41E4();
  v24 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v25 = (v23 + OBJC_IVAR____TtC5Music26LibraryDownloadsController_didUpdateDownloadQueue);
  v26 = *(v23 + OBJC_IVAR____TtC5Music26LibraryDownloadsController_didUpdateDownloadQueue);
  v27 = *(v23 + OBJC_IVAR____TtC5Music26LibraryDownloadsController_didUpdateDownloadQueue + 8);
  *v25 = sub_1002D8ED0;
  v25[1] = v24;

  sub_100020438(v26, v27);

  v32[3] = sub_10010FC20(&qword_10118A4E8, &qword_100EC5CB8);
  v28 = sub_10001C8B8(v32);
  sub_1002D5798(v28);
  v33[3] = sub_10010FC20(&unk_1011A4510, &qword_100EC5CC0);
  v29 = sub_10001C8B8(v33);
  sub_1002D5A08(v29);
  return swift_arrayDestroy();
}

id sub_1002D378C()
{
  v1 = v0;
  v2 = type metadata accessor for UICollectionLayoutListConfiguration.Appearance();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for UICollectionLayoutListConfiguration();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = OBJC_IVAR____TtC5Music32LibraryDownloadingViewController____lazy_storage___collectionView;
  v11 = *&v1[OBJC_IVAR____TtC5Music32LibraryDownloadingViewController____lazy_storage___collectionView];
  if (v11)
  {
    v12 = *&v1[OBJC_IVAR____TtC5Music32LibraryDownloadingViewController____lazy_storage___collectionView];
LABEL_6:
    v45 = v11;
    return v12;
  }

  sub_100009F78(0, &qword_101184600, UICollectionViewCompositionalLayout_ptr);
  (*(v3 + 104))(v5, enum case for UICollectionLayoutListConfiguration.Appearance.plain(_:), v2);
  UICollectionLayoutListConfiguration.init(appearance:)();
  v13 = static UICollectionViewCompositionalLayout.list(using:)();
  (*(v7 + 8))(v9, v6);
  v14 = type metadata accessor for HIMetricsCollectionView();
  objc_allocWithZone(v14);
  v15 = v13;
  v16 = sub_100188F30(v15, 1, 0);
  result = [v1 view];
  if (result)
  {
    v18 = result;
    [result bounds];
    v20 = v19;
    v22 = v21;
    v24 = v23;
    v26 = v25;

    v47.receiver = v16;
    v47.super_class = v14;
    v27 = v16;
    objc_msgSendSuper2(&v47, "frame");
    v29 = v28;
    v31 = v30;
    v33 = v32;
    v35 = v34;
    v46.receiver = v27;
    v46.super_class = v14;
    objc_msgSendSuper2(&v46, "setFrame:", v20, v22, v24, v26);
    sub_1001891B4(v29, v31, v33, v35);
    [v27 setAutoresizingMask:18];

    result = [v1 view];
    if (result)
    {
      v36 = result;
      [result addSubview:v27];

      v37 = v27;
      [v37 _setShouldPrefetchCellsWhenPerformingReloadData:1];
      [v37 setDataSource:v1];
      [v37 setDelegate:v1];
      [v37 setKeyboardDismissMode:1];
      [v37 setAllowsFocus:1];
      [v37 setRemembersLastFocusedIndexPath:1];

      v38 = AccessibilityIdentifier.libraryDownloadingView.unsafeMutableAddressor();
      v39 = *v38;
      v40 = v38[1];
      v41 = v38[2];
      v42 = v38[3];

      v43 = UIView.withAccessibilityIdentifier(_:)(v39, v40, v41, v42);

      v44 = *&v1[v10];
      *&v1[v10] = v43;
      v12 = v43;

      v11 = 0;
      goto LABEL_6;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_1002D3B84(uint64_t a1@<X1>, uint64_t a3@<X8>)
{
  v5 = sub_10010FC20(&unk_1011841D0, &qword_100EC5DB0);
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = v18 - v7;
  v9 = type metadata accessor for UIListSeparatorConfiguration.Visibility();
  v10 = *(v9 - 8);
  __chkstk_darwin();
  v12 = v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for UIListSeparatorConfiguration();
  (*(*(v13 - 8) + 16))(a3, a1, v13);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v15 = OBJC_IVAR____TtC5Music32LibraryDownloadingViewController_items;
    v16 = Strong;
    swift_beginAccess();
    (*(v6 + 16))(v8, &v16[v15], v5);
    sub_100020674(&qword_1011913B0, &unk_1011841D0, &qword_100EC5DB0, &protocol conformance descriptor for MusicItemCollection<A>);
    dispatch thunk of Collection.startIndex.getter();
    dispatch thunk of Collection.endIndex.getter();
    (*(v6 + 8))(v8, v5);
    if (v18[1] == v18[0])
    {
      v17 = &enum case for UIListSeparatorConfiguration.Visibility.hidden(_:);
    }

    else
    {
      v17 = &enum case for UIListSeparatorConfiguration.Visibility.automatic(_:);
    }

    (*(v10 + 104))(v12, *v17, v9);
    UIListSeparatorConfiguration.bottomSeparatorVisibility.setter();
  }
}

double sub_1002D3E1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = [Strong traitCollection];

    [v5 displayScale];
  }

  return 48.0;
}

uint64_t sub_1002D3EBC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for Track();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v17[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_10010FC20(&unk_1011842D0, &qword_100ECBF00);
  __chkstk_darwin();
  v9 = &v17[-v8];
  v10 = sub_10010FC20(&unk_1011841D0, &qword_100EC5DB0);
  v11 = *(v10 - 8);
  __chkstk_darwin();
  v13 = &v17[-v12];
  sub_1000089F8(a1, v17, &unk_101183F30, qword_100EBF960);
  if (v18)
  {
    v14 = swift_dynamicCast();
    (*(v11 + 56))(v9, v14 ^ 1u, 1, v10);
    if ((*(v11 + 48))(v9, 1, v10) != 1)
    {
      (*(v11 + 32))(v13, v9, v10);
      IndexPath.item.getter();
      MusicItemCollection.subscript.getter();
      Track.artwork.getter();
      (*(v5 + 8))(v7, v4);
      return (*(v11 + 8))(v13, v10);
    }
  }

  else
  {
    sub_1000095E8(v17, &unk_101183F30, qword_100EBF960);
    (*(v11 + 56))(v9, 1, 1, v10);
  }

  sub_1000095E8(v9, &unk_1011842D0, &qword_100ECBF00);
  v16 = type metadata accessor for Artwork();
  return (*(*(v16 - 8) + 56))(a2, 1, 1, v16);
}

uint64_t sub_1002D41E4()
{
  v1 = OBJC_IVAR____TtC5Music32LibraryDownloadingViewController____lazy_storage___downloadsController;
  if (*(v0 + OBJC_IVAR____TtC5Music32LibraryDownloadingViewController____lazy_storage___downloadsController))
  {
    v2 = *(v0 + OBJC_IVAR____TtC5Music32LibraryDownloadingViewController____lazy_storage___downloadsController);
  }

  else
  {
    type metadata accessor for LibraryDownloadsController(0);
    v2 = swift_allocObject();
    type metadata accessor for Track();
    MusicItemCollection.init(arrayLiteral:)();
    v3 = (v2 + OBJC_IVAR____TtC5Music26LibraryDownloadsController_didUpdateDownloadQueue);
    *v3 = 0;
    v3[1] = 0;
    *(v2 + OBJC_IVAR____TtC5Music26LibraryDownloadsController_isAutomaticReloadingEnabled) = 0;
    *(v2 + OBJC_IVAR____TtC5Music26LibraryDownloadsController_viewModel) = 0;
    v4 = v2 + OBJC_IVAR____TtC5Music26LibraryDownloadsController_downloadQueueSubscription;
    *v4 = 0u;
    *(v4 + 16) = 0u;
    *(v4 + 32) = 0;
    *(v2 + OBJC_IVAR____TtC5Music26LibraryDownloadsController_itemStateCache) = _swiftEmptyDictionarySingleton;
    *(v0 + v1) = v2;
  }

  return v2;
}

void sub_1002D42E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_10010FC20(&unk_1011841D0, &qword_100EC5DB0);
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v25 - v6;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    v10 = *(Strong + OBJC_IVAR____TtC5Music32LibraryDownloadingViewController_sections);
    v11 = *(v10 + 16);
    if (v11)
    {
      v26 = v5;
      v27 = a2;

      v12 = 0;
      while (1)
      {
        if (v12 >= *(v10 + 16))
        {
          __break(1u);
          return;
        }

        if (*(v10 + v12 + 32) == 1)
        {
          break;
        }

        v13 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v13)
        {
          goto LABEL_10;
        }

        if (v11 == ++v12)
        {

          return;
        }
      }

LABEL_10:

      sub_100020674(&qword_1011913B0, &unk_1011841D0, &qword_100EC5DB0, &protocol conformance descriptor for MusicItemCollection<A>);
      v14 = v27;
      dispatch thunk of Collection.startIndex.getter();
      dispatch thunk of Collection.endIndex.getter();
      v15 = OBJC_IVAR____TtC5Music32LibraryDownloadingViewController_updateTimer;
      v16 = *&v9[OBJC_IVAR____TtC5Music32LibraryDownloadingViewController_updateTimer];
      if (aBlock[0] == aBlock[7])
      {
        *&v9[OBJC_IVAR____TtC5Music32LibraryDownloadingViewController_updateTimer] = 0;

        sub_1002D46CC(v9, v14);
      }

      else if (!v16)
      {
        v17 = OBJC_IVAR____TtC5Music32LibraryDownloadingViewController_items;
        swift_beginAccess();
        v18 = v26;
        (*(v26 + 16))(v7, &v9[v17], v4);
        dispatch thunk of Collection.startIndex.getter();
        dispatch thunk of Collection.endIndex.getter();
        (*(v18 + 8))(v7, v4);
        if (aBlock[0] == aBlock[6])
        {
          sub_1002D46CC(v9, v14);
        }

        v19 = objc_opt_self();
        v20 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v21 = swift_allocObject();
        *(v21 + 16) = v20;
        *(v21 + 24) = v12;
        aBlock[4] = sub_1002D8ED8;
        aBlock[5] = v21;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_10027D328;
        aBlock[3] = &unk_1010A4EC8;
        v22 = _Block_copy(aBlock);

        v23 = [v19 scheduledTimerWithTimeInterval:0 repeats:v22 block:1.0];
        _Block_release(v22);
        v24 = *&v9[v15];
        *&v9[v15] = v23;
      }

      sub_1002D53A8();
    }
  }
}

id sub_1002D46CC(char *a1, uint64_t a2)
{
  v4 = sub_10010FC20(&unk_1011841D0, &qword_100EC5DB0);
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin();
  v8 = v18 - v7;
  v9 = *(v5 + 16);
  v9(v18 - v7, a2, v4, v6);
  v10 = OBJC_IVAR____TtC5Music32LibraryDownloadingViewController_items;
  swift_beginAccess();
  (*(v5 + 24))(&a1[v10], v8, v4);
  swift_endAccess();
  v11 = *&a1[OBJC_IVAR____TtC5Music32LibraryDownloadingViewController_prefetchingController];
  v19[3] = v4;
  v12 = sub_10001C8B8(v19);
  (v9)(v12, &a1[v10], v4);
  (*(v5 + 8))(v8, v4);
  v13 = OBJC_IVAR____TtC5Music28ArtworkPrefetchingController_context;
  swift_beginAccess();
  sub_10006B010(v19, v11 + v13, &unk_101183F30, qword_100EBF960);
  swift_endAccess();
  v14 = sub_1002D378C();
  [v14 reloadData];

  sub_100020674(&qword_1011913B0, &unk_1011841D0, &qword_100EC5DB0, &protocol conformance descriptor for MusicItemCollection<A>);
  dispatch thunk of Collection.startIndex.getter();
  dispatch thunk of Collection.endIndex.getter();
  v15 = v19[0] != v18[1];
  [a1 setNeedsUpdateContentUnavailableConfiguration];
  v16 = OBJC_IVAR____TtC5Music32LibraryDownloadingViewController____lazy_storage___collectionView;
  [*&a1[OBJC_IVAR____TtC5Music32LibraryDownloadingViewController____lazy_storage___collectionView] setBouncesVertically:v15];
  return [*&a1[v16] setAlwaysBounceVertical:v15];
}

void sub_1002D4948(uint64_t a1, uint64_t a2, double (**a3)(uint64_t, uint64_t *, NSObject *, __n128))
{
  v4 = sub_10010FC20(&unk_1011841D0, &qword_100EC5DB0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin();
  __chkstk_darwin();
  v8 = &v28 - v7;
  __chkstk_darwin();
  v10 = &v28 - v9;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    v13 = sub_1002D41E4();
    v28 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
    v29 = v8;
    v14 = v8;
    v15 = OBJC_IVAR____TtC5Music26LibraryDownloadsController_downloadQueue;
    swift_beginAccess();
    v30 = a3;
    v16 = *(v5 + 16);
    v16(v10, v13 + v15, v4);

    v17 = sub_1002D378C();
    v18 = OBJC_IVAR____TtC5Music32LibraryDownloadingViewController_items;
    swift_beginAccess();
    v16(v14, &v12[v18], v4);
    v19 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v20 = v28;
    v16(v28, v10, v4);
    v21 = (*(v5 + 80) + 24) & ~*(v5 + 80);
    v22 = swift_allocObject();
    *(v22 + 16) = v19;
    (*(v5 + 32))(v22 + v21, v20, v4);
    v23 = sub_100020674(&qword_1011913B0, &unk_1011841D0, &qword_100EC5DB0, &protocol conformance descriptor for MusicItemCollection<A>);
    sub_1002D8F50(&qword_10118A618, &type metadata accessor for Track, &protocol conformance descriptor for Track);

    *(&v27 + 1) = v23;
    *&v27 = v4;
    v24 = v29;
    UICollectionView.performAIDiff<A>(oldItems:newItems:sectionIndex:animated:modelUpdateHandler:identityComparator:visualComparator:completion:)(v29, v10, v30, 1, sub_1002D8EE0, v22, sub_1002D5318, 0, 0, 0, 0, 0, v27);

    v25 = *(v5 + 8);
    v25(v24, v4);
    v25(v10, v4);

    v26 = *&v12[OBJC_IVAR____TtC5Music32LibraryDownloadingViewController_updateTimer];
    *&v12[OBJC_IVAR____TtC5Music32LibraryDownloadingViewController_updateTimer] = 0;
  }
}

void sub_1002D4CCC(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for IndexSet();
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10010FC20(&unk_1011841D0, &qword_100EC5DB0);
  v8 = *(v7 - 8);
  __chkstk_darwin();
  v10 = v38 - v9;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    v41 = v6;
    v42 = v4;
    v43 = v3;
    v13 = OBJC_IVAR____TtC5Music32LibraryDownloadingViewController_items;
    swift_beginAccess();
    v14 = (v8 + 16);
    v47 = *(v8 + 16);
    v47(v10, &v12[v13], v7);
    v15 = sub_100020674(&qword_1011913B0, &unk_1011841D0, &qword_100EC5DB0, &protocol conformance descriptor for MusicItemCollection<A>);
    dispatch thunk of Collection.startIndex.getter();
    dispatch thunk of Collection.endIndex.getter();
    v16 = dispatch thunk of Collection.distance(from:to:)();
    v45 = v8;
    v18 = *(v8 + 8);
    v17 = (v8 + 8);
    v44 = v18;
    v18(v10, v7);
    dispatch thunk of Collection.startIndex.getter();
    dispatch thunk of Collection.endIndex.getter();
    v46 = v15;
    v19 = v16 == dispatch thunk of Collection.distance(from:to:)();
    v20 = v47;
    if (v19 || (v21 = *&v12[OBJC_IVAR____TtC5Music32LibraryDownloadingViewController_sections], (v22 = *(v21 + 16)) == 0))
    {
LABEL_13:
      v20(v10, a2, v7);
      swift_beginAccess();
      (*(v45 + 24))(&v12[v13], v10, v7);
      swift_endAccess();
      v32 = *&v12[OBJC_IVAR____TtC5Music32LibraryDownloadingViewController_prefetchingController];
      v49[3] = v7;
      v33 = sub_10001C8B8(v49);
      v20(v33, &v12[v13], v7);
      v34 = v44;
      v44(v10, v7);
      v35 = OBJC_IVAR____TtC5Music28ArtworkPrefetchingController_context;
      swift_beginAccess();
      sub_10006B010(v49, v32 + v35, &unk_101183F30, qword_100EBF960);
      swift_endAccess();
      v20(v10, &v12[v13], v7);
      dispatch thunk of Collection.startIndex.getter();
      dispatch thunk of Collection.endIndex.getter();
      v34(v10, v7);
      v36 = v49[0] != v48;
      [v12 setNeedsUpdateContentUnavailableConfiguration];
      v37 = sub_1002D378C();
      [v37 setBouncesVertically:v36];

      [*&v12[OBJC_IVAR____TtC5Music32LibraryDownloadingViewController____lazy_storage___collectionView] setAlwaysBounceVertical:v36];
    }

    else
    {
      v38[1] = v17;
      v38[2] = v14;
      v39 = v13;
      v40 = a2;

      v23 = 0;
      while (v23 < *(v21 + 16))
      {
        if ((*(v21 + v23 + 32) & 1) == 0)
        {

LABEL_11:

          v38[0] = sub_1002D378C();
          sub_10010FC20(&unk_101191400, &qword_100ED5CE0);
          v25 = swift_allocObject();
          *(v25 + 16) = xmmword_100EBC6B0;
          *(v25 + 32) = v23;
          v49[0] = v25;
          sub_1002D8F50(&unk_10118A630, &type metadata accessor for IndexSet, &protocol conformance descriptor for IndexSet);
          sub_10010FC20(&unk_101191410, &unk_100EC5EC0);
          sub_100020674(&unk_10118A640, &unk_101191410, &unk_100EC5EC0, &protocol conformance descriptor for [A]);
          v26 = v41;
          v27 = v43;
          dispatch thunk of SetAlgebra.init<A>(_:)();
          IndexSet._bridgeToObjectiveC()(v28);
          v30 = v29;
          (*(v42 + 8))(v26, v27);
          v31 = v38[0];
          [v38[0] reloadSections:v30];

LABEL_12:
          a2 = v40;
          v13 = v39;
          v20 = v47;
          goto LABEL_13;
        }

        v24 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v24)
        {
          goto LABEL_11;
        }

        if (v22 == ++v23)
        {

          goto LABEL_12;
        }
      }

      __break(1u);
    }
  }
}

uint64_t sub_1002D5318(uint64_t a1, uint64_t a2)
{
  type metadata accessor for Track();
  sub_1002D8F50(&unk_10118A620, &type metadata accessor for Track, &protocol conformance descriptor for Track);
  return static MusicItem<>.==~ infix(_:_:)() & 1;
}

void sub_1002D53A8()
{
  v1 = v0;
  v2 = sub_10010FC20(&unk_1011841D0, &qword_100EC5DB0);
  v3 = *(v2 - 8);
  *&v4 = __chkstk_darwin().n128_u64[0];
  v6 = v25 - v5;
  v7 = [v0 navigationController];
  if (!v7)
  {
    return;
  }

  v25[0] = v7;
  v8 = [v7 viewControllers];
  sub_100009F78(0, &qword_101183D40, UIViewController_ptr);
  v9 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v9 >> 62)
  {
    v10 = _CocoaArrayWrapper.endIndex.getter();
    if (v10)
    {
LABEL_4:
      v11 = __OFSUB__(v10, 1);
      v12 = v10 - 1;
      if (v11)
      {
        __break(1u);
      }

      else if ((v9 & 0xC000000000000001) == 0)
      {
        if ((v12 & 0x8000000000000000) != 0)
        {
          __break(1u);
        }

        else if (v12 < *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          v13 = *(v9 + 8 * v12 + 32);
          goto LABEL_9;
        }

        __break(1u);
        goto LABEL_27;
      }

      v13 = sub_10004056C(v12, v9);
LABEL_9:
      v14 = v13;

      v1 = v0;
      v15 = static NSObject.== infix(_:_:)();

      if ((v15 & 1) == 0)
      {
LABEL_16:
        v21 = v25[0];

        return;
      }

      v16 = [v25[0] viewControllers];
      v9 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      if (!(v9 >> 62))
      {
        if (*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_12;
        }

        goto LABEL_28;
      }

LABEL_27:
      if (_CocoaArrayWrapper.endIndex.getter())
      {
LABEL_12:
        if ((v9 & 0xC000000000000001) != 0)
        {
          v17 = sub_10004056C(0, v9);
        }

        else
        {
          if (!*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            return;
          }

          v17 = *(v9 + 32);
        }

        v18 = v17;

        v19 = v1;
        v20 = static NSObject.== infix(_:_:)();

        if (v20)
        {
          goto LABEL_16;
        }

LABEL_29:
        v22 = sub_1002D41E4();
        v23 = OBJC_IVAR____TtC5Music26LibraryDownloadsController_downloadQueue;
        swift_beginAccess();
        (*(v3 + 16))(v6, v22 + v23, v2);

        sub_100020674(&qword_1011913B0, &unk_1011841D0, &qword_100EC5DB0, &protocol conformance descriptor for MusicItemCollection<A>);
        dispatch thunk of Collection.startIndex.getter();
        dispatch thunk of Collection.endIndex.getter();
        (*(v3 + 8))(v6, v2);
        if (v25[2] == v25[1])
        {
          v24 = [v25[0] popViewControllerAnimated:1];
        }

        else
        {
        }

        return;
      }

LABEL_28:

      goto LABEL_29;
    }
  }

  else
  {
    v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v10)
    {
      goto LABEL_4;
    }
  }
}

uint64_t sub_1002D5798@<X0>(uint64_t a1@<X8>)
{
  sub_10010FC20(&qword_10118A538, &qword_100EC5DB8);
  __chkstk_darwin();
  v4 = &v11[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v6 = &v11[-v5];
  v7 = OBJC_IVAR____TtC5Music32LibraryDownloadingViewController____lazy_storage___actionCellRegistration;
  swift_beginAccess();
  sub_1000089F8(v1 + v7, v6, &qword_10118A538, &qword_100EC5DB8);
  v8 = sub_10010FC20(&qword_10118A4E8, &qword_100EC5CB8);
  v9 = *(v8 - 8);
  if ((*(v9 + 48))(v6, 1, v8) != 1)
  {
    return (*(v9 + 32))(a1, v6, v8);
  }

  sub_1000095E8(v6, &qword_10118A538, &qword_100EC5DB8);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_100009F78(0, &unk_101184790, UICollectionViewListCell_ptr);
  UICollectionView.CellRegistration.init(handler:)();
  (*(v9 + 16))(v4, a1, v8);
  (*(v9 + 56))(v4, 0, 1, v8);
  swift_beginAccess();
  sub_10006B010(v4, v1 + v7, &qword_10118A538, &qword_100EC5DB8);
  return swift_endAccess();
}

uint64_t sub_1002D5A08@<X0>(uint64_t a1@<X8>)
{
  sub_10010FC20(&qword_10118A5B0, L"t\v,");
  __chkstk_darwin();
  v4 = &v11[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v6 = &v11[-v5];
  v7 = OBJC_IVAR____TtC5Music32LibraryDownloadingViewController____lazy_storage___listCellRegistration;
  swift_beginAccess();
  sub_1000089F8(v1 + v7, v6, &qword_10118A5B0, L"t\v,");
  v8 = sub_10010FC20(&unk_1011A4510, &qword_100EC5CC0);
  v9 = *(v8 - 8);
  if ((*(v9 + 48))(v6, 1, v8) != 1)
  {
    return (*(v9 + 32))(a1, v6, v8);
  }

  sub_1000095E8(v6, &qword_10118A5B0, L"t\v,");
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_100009F78(0, &unk_101184790, UICollectionViewListCell_ptr);
  type metadata accessor for Track();
  UICollectionView.CellRegistration.init(handler:)();
  (*(v9 + 16))(v4, a1, v8);
  (*(v9 + 56))(v4, 0, 1, v8);
  swift_beginAccess();
  sub_10006B010(v4, v1 + v7, &qword_10118A5B0, L"t\v,");
  return swift_endAccess();
}

double sub_1002D5CC8(char a1)
{
  v2 = v1;
  v8.receiver = v1;
  v8.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v8, "viewWillAppear:", a1 & 1);
  v4 = sub_1002D378C();
  UICollectionView.clearSelection(using:animated:)([v2 transitionCoordinator], a1);

  swift_unknownObjectRelease();
  v5 = sub_1002D41E4();
  v6 = *(v5 + OBJC_IVAR____TtC5Music26LibraryDownloadsController_isAutomaticReloadingEnabled);
  *(v5 + OBJC_IVAR____TtC5Music26LibraryDownloadsController_isAutomaticReloadingEnabled) = 1;
  if (v6 != 1)
  {
    sub_10016D6B8();
  }

  return result;
}

uint64_t sub_1002D5E5C()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_10010FC20(&unk_1011841D0, &qword_100EC5DB0);
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v13 - v5;
  isa = UIContentUnavailableConfigurationState._bridgeToObjectiveC()().super.isa;
  v17.receiver = v1;
  v17.super_class = ObjectType;
  objc_msgSendSuper2(&v17, "_bridgedUpdateContentUnavailableConfigurationUsingState:", isa);

  v8 = OBJC_IVAR____TtC5Music32LibraryDownloadingViewController_items;
  swift_beginAccess();
  (*(v4 + 16))(v6, &v1[v8], v3);
  sub_100020674(&qword_1011913B0, &unk_1011841D0, &qword_100EC5DB0, &protocol conformance descriptor for MusicItemCollection<A>);
  dispatch thunk of Collection.startIndex.getter();
  dispatch thunk of Collection.endIndex.getter();
  (*(v4 + 8))(v6, v3);
  if (v14 == v13)
  {
    if (qword_10117F728 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for UIContentUnavailableConfiguration();
    v10 = sub_1000060E4(v9, qword_101218CF0);
    *(&v15 + 1) = v9;
    v16 = &protocol witness table for UIContentUnavailableConfiguration;
    v11 = sub_10001C8B8(&v14);
    (*(*(v9 - 8) + 16))(v11, v10, v9);
  }

  else
  {
    v16 = 0;
    v14 = 0u;
    v15 = 0u;
  }

  return UIViewController.contentUnavailableConfiguration.setter();
}

uint64_t sub_1002D61A0()
{
  v1[3] = sub_10010FC20(&unk_10118A510, &qword_100EC5D98);
  v1[4] = sub_100020674(&qword_1011914E0, &unk_10118A510, &qword_100EC5D98, &protocol conformance descriptor for UIHostingConfiguration<A, B>);
  sub_10001C8B8(v1);
  sub_10010FC20(&unk_10118A520, &unk_100EC5DA0);
  sub_1002D8BFC();
  UIHostingConfiguration<>.init(content:)();
  return UICollectionViewCell.contentConfiguration.setter();
}

double sub_1002D6274@<D0>(uint64_t a2@<X8>)
{
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  *a2 = v4;
  *(a2 + 8) = v5;
  *(a2 + 16) = v6;
  *(a2 + 24) = v7;
  result = *&v8;
  *(a2 + 32) = v8;
  return result;
}

void sub_1002D62E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = sub_10010FC20(&unk_10118A540, &qword_100EC5DC0);
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v9 = v19 - v8;
  v10 = sub_10010FC20(&unk_1011841D0, &qword_100EC5DB0);
  v11 = *(v10 - 8);
  __chkstk_darwin();
  v13 = v19 - v12;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v15 = OBJC_IVAR____TtC5Music32LibraryDownloadingViewController_items;
    v16 = Strong;
    swift_beginAccess();
    (*(v11 + 16))(v13, &v16[v15], v10);
    sub_100020674(&qword_1011913B0, &unk_1011841D0, &qword_100EC5DB0, &protocol conformance descriptor for MusicItemCollection<A>);
    dispatch thunk of Collection.startIndex.getter();
    dispatch thunk of Collection.endIndex.getter();
    (*(v11 + 8))(v13, v10);
    __chkstk_darwin();
    LOBYTE(v19[-2]) = v17;
    v19[-1] = v16;
    sub_10010FC20(&qword_10118A550, &qword_100EC5DC8);
    sub_1002D8C94();
    UIHostingConfiguration<>.init(content:)();
    static Edge.Set.horizontal.getter();

    UIHostingConfiguration.margins(_:_:)();
    v18 = *(v5 + 8);
    v18(v7, v4);
    static Edge.Set.vertical.getter();
    v19[3] = v4;
    v19[4] = sub_100020674(&unk_10118A5A0, &unk_10118A540, &qword_100EC5DC0, &protocol conformance descriptor for UIHostingConfiguration<A, B>);
    sub_10001C8B8(v19);
    UIHostingConfiguration.margins(_:_:)();
    v18(v9, v4);
    UICollectionViewCell.contentConfiguration.setter();
  }
}

double sub_1002D668C@<D0>(char a1@<W0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v6 = sub_10010FC20(&unk_1011841D0, &qword_100EC5DB0);
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = &v33 - v8;
  type metadata accessor for LocalizedStringKey.StringInterpolation();
  __chkstk_darwin();
  if (a1)
  {
    LocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v10._countAndFlagsBits = 0x206C65636E6143;
    v10._object = 0xE700000000000000;
    LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v10);
    v11 = OBJC_IVAR____TtC5Music32LibraryDownloadingViewController_items;
    swift_beginAccess();
    (*(v7 + 16))(v9, a2 + v11, v6);
    sub_100020674(&qword_1011913B0, &unk_1011841D0, &qword_100EC5DB0, &protocol conformance descriptor for MusicItemCollection<A>);
    dispatch thunk of Collection.startIndex.getter();
    dispatch thunk of Collection.endIndex.getter();
    v12 = dispatch thunk of Collection.distance(from:to:)();
    (*(v7 + 8))(v9, v6);
    *&v52 = v12;
    LocalizedStringKey.StringInterpolation.appendInterpolation<A>(_:specifier:)();
    v13._countAndFlagsBits = 0x616F6C6E776F4420;
    v13._object = 0xEC00000029732864;
    LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v13);
    LocalizedStringKey.init(stringInterpolation:)();
    v14 = Text.init(_:tableName:bundle:comment:)();
    v16 = v15;
    v18 = v17;
    static Color.accentColor.getter();
    v19 = Text.foregroundColor(_:)();
    v33 = v20;
    v34 = v19;
    v22 = v21;
    v24 = v23;

    sub_10011895C(v14, v16, v18 & 1);

    KeyPath = swift_getKeyPath();
    static Alignment.center.getter();
    _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
    *&v35[55] = v51[5];
    *&v35[71] = v51[6];
    *&v35[87] = v51[7];
    *&v35[103] = v51[8];
    *&v35[7] = v51[2];
    *&v35[23] = v51[3];
    v36 = v22 & 1;
    *&v35[39] = v51[4];
    v26 = static HorizontalAlignment.listRowSeparatorLeading.getter();
    *(&v50[4] + 9) = *&v35[64];
    *(&v50[5] + 9) = *&v35[80];
    *(&v50[6] + 9) = *&v35[96];
    *(v50 + 9) = *v35;
    *(&v50[1] + 9) = *&v35[16];
    *(&v50[2] + 9) = *&v35[32];
    *&v48 = v34;
    *(&v48 + 1) = v33;
    LOBYTE(v49) = v22 & 1;
    *(&v49 + 1) = v24;
    *&v50[0] = KeyPath;
    BYTE8(v50[0]) = 1;
    *(&v50[3] + 9) = *&v35[48];
    *(&v50[7] + 1) = *&v35[111];
    *&v51[0] = v26;
    *(&v51[0] + 1) = variable initialization expression of PlaybackTimeObserver.lastTargetTimestamp;
    *&v51[1] = 0;
    sub_1002D8E44(&v48);
  }

  else
  {
    sub_1002D8E38(&v48);
  }

  v45 = v50[6];
  v46 = v50[7];
  v47[0] = v51[0];
  *(v47 + 9) = *(v51 + 9);
  v41 = v50[2];
  v42 = v50[3];
  v43 = v50[4];
  v44 = v50[5];
  v37 = v48;
  v38 = v49;
  v39 = v50[0];
  v40 = v50[1];
  sub_10010FC20(&qword_10118A568, &qword_100EC5DD0);
  sub_1002D8D20();
  _ConditionalContent<>.init(storage:)();
  v27 = v61;
  a3[8] = v60;
  a3[9] = v27;
  a3[10] = v62[0];
  *(a3 + 169) = *(v62 + 9);
  v28 = v57;
  a3[4] = v56;
  a3[5] = v28;
  v29 = v59;
  a3[6] = v58;
  a3[7] = v29;
  v30 = v53;
  *a3 = v52;
  a3[1] = v30;
  result = *&v54;
  v32 = v55;
  a3[2] = v54;
  a3[3] = v32;
  return result;
}

void sub_1002D6B68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_10010FC20(&qword_10118A5B8, &qword_100EC5E28);
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v11 = v19 - v10;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v19[0] = v19;
    __chkstk_darwin();
    v19[1] = a1;
    v19[-2] = a3;
    v19[-1] = v12;
    v13 = v12;
    sub_10010FC20(&qword_10118A5C0, &qword_100EC5E30);
    v14 = sub_1001109D0(&qword_10118A5C8, &qword_100EC5E38);
    v15 = sub_100020674(&qword_10118A5D0, &qword_10118A5C8, &qword_100EC5E38, &unk_100ED74E8);
    v20[0] = v14;
    v20[1] = v15;
    swift_getOpaqueTypeConformance2();
    UIHostingConfiguration<>.init(content:)();
    static Edge.Set.horizontal.getter();

    UIHostingConfiguration.margins(_:_:)();
    v16 = *(v7 + 8);
    v16(v9, v6);
    static Edge.Set.vertical.getter();
    v17 = [v13 traitCollection];
    v18 = [v17 preferredContentSizeCategory];

    UIContentSizeCategory.isAccessibilityCategory.getter();
    v20[3] = v6;
    v20[4] = sub_100020674(&qword_10118A5D8, &qword_10118A5B8, &qword_100EC5E28, &protocol conformance descriptor for UIHostingConfiguration<A, B>);
    sub_10001C8B8(v20);
    UIHostingConfiguration.margins(_:_:)();
    v16(v11, v6);
    UICollectionViewCell.contentConfiguration.setter();
  }
}

uint64_t sub_1002D6EA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v70 = a2;
  v77 = a3;
  v4 = type metadata accessor for MusicFavoriteStatus();
  v74 = *(v4 - 8);
  v75 = v4;
  __chkstk_darwin();
  v73 = &v61 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v71 = &v61 - v6;
  type metadata accessor for ArtworkImage.Placeholder(0);
  __chkstk_darwin();
  v69 = &v61 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Track();
  v9 = *(v8 - 8);
  __chkstk_darwin();
  v11 = &v61 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&unk_10118A5E0, &unk_100EBCD90);
  __chkstk_darwin();
  v13 = &v61 - v12;
  v68 = &v61 - v12;
  type metadata accessor for ArtworkImage.Info(0);
  __chkstk_darwin();
  v15 = &v61 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_10010FC20(&qword_10118A5C8, &qword_100EC5E38);
  __chkstk_darwin();
  v18 = &v61 - v17;
  v61 = a1;
  Track.artworkViewModel.getter(v13);
  (*(v9 + 16))(v11, a1, v8);
  v19 = (*(v9 + 88))(v11, v8);
  v20 = enum case for Track.song(_:);
  if (v19 == enum case for Track.musicVideo(_:))
  {
    v21 = 0x4055555555555555;
  }

  else
  {
    v21 = 0x4048000000000000;
  }

  v22 = *(v9 + 8);
  v76 = v8;
  v22(v11, v8);
  if (v19 == v20)
  {
    v23 = 0x4048000000000000;
  }

  else
  {
    v23 = v21;
  }

  ArtworkImage.Size.init(cgSize:)(v23, 0x4048000000000000, 0, v78);
  v24 = Corner.small.unsafeMutableAddressor();
  v25 = *v24;
  v26 = v24[1];
  v27 = *(v24 + 16);
  v28 = sub_10010FC20(&unk_101182950, &qword_100EC0420);
  v29 = v69;
  (*(*(v28 - 8) + 56))(v69, 1, 11, v28);
  v72 = v15;
  ArtworkImage.Info.init(viewModel:placeholder:aspectRatio:size:corner:)(v68, v29, 0, 1, v78, v25, v26, v27, v15);
  v30 = v61;
  v31 = Track.title.getter();
  v68 = v32;
  v69 = v31;
  v33 = Track.artistName.getter();
  v66 = v34;
  v67 = v33;
  v65 = Track.albumTitle.getter();
  v64 = v35;
  Track.duration.getter();
  v63 = static Duration.seconds(_:)();
  v62 = v36;
  v37 = v71;
  Track.favoriteStatus.getter();
  v38 = v73;
  v39 = v74;
  v40 = v75;
  (*(v74 + 104))(v73, enum case for MusicFavoriteStatus.favorited(_:), v75);
  v41 = static MusicFavoriteStatus.== infix(_:_:)();
  v42 = *(v39 + 8);
  v42(v38, v40);
  v42(v37, v40);
  Track.contentRating.getter();
  sub_1002D41E4();
  sub_10016DC70(v30);

  if (qword_10117F5F8 != -1)
  {
    swift_once();
  }

  Player.state<A>(for:)(v30, v76, &protocol witness table for Track);
  v43 = sub_1002D378C();
  v44 = *&v43[OBJC_IVAR____TtC5Music23HIMetricsCollectionView_metrics + 32];

  sub_1002D8E5C(v72, v18);
  v45 = &v18[v16[11]];
  v46 = v68;
  *v45 = v69;
  *(v45 + 1) = v46;
  v47 = &v18[v16[12]];
  v48 = v66;
  *v47 = v67;
  *(v47 + 1) = v48;
  v49 = &v18[v16[13]];
  v50 = v64;
  *v49 = v65;
  v49[1] = v50;
  v51 = &v18[v16[14]];
  v52 = v62;
  *v51 = v63;
  v51[1] = v52;
  v18[v16[15]] = v41 & 1;
  v18[v16[17]] = 0;
  v53 = &v18[v16[18]];
  sub_10010FC20(&unk_10118A5F0, &qword_100EC5E40);
  sub_100020674(&qword_101192B40, &unk_10118A5F0, &qword_100EC5E40, &protocol conformance descriptor for MusicLibrary.ItemState<A>);
  *v53 = ObservedObject.init(wrappedValue:)();
  v53[1] = v54;
  v55 = &v18[v16[19]];
  sub_10010FC20(&qword_10118A600, &qword_100EC5E48);
  sub_100020674(&qword_10118A608, &qword_10118A600, &qword_100EC5E48, &protocol conformance descriptor for MusicItemState<A>);
  *v55 = ObservedObject.init(wrappedValue:)();
  v55[1] = v56;
  *&v18[v16[20]] = 0;
  v57 = &v18[v16[21]];
  *v57 = 0;
  *(v57 + 1) = 0;
  *&v18[v16[22]] = v44;
  v58 = v16[23];
  *&v18[v58] = swift_getKeyPath();
  sub_10010FC20(&qword_10118A610, &qword_100EBCDD0);
  swift_storeEnumTagMultiPayload();
  v59 = v16[24];
  *&v18[v59] = swift_getKeyPath();
  sub_10010FC20(&unk_101184840, &qword_100EC0DE0);
  swift_storeEnumTagMultiPayload();
  sub_1002D8F50(&unk_101184780, type metadata accessor for ArtworkPrefetchingController.CacheReference, &unk_100EC2A40);
  sub_100020674(&qword_10118A5D0, &qword_10118A5C8, &qword_100EC5E38, &unk_100ED74E8);

  View.artworkCaching(owner:)();

  return sub_1000095E8(v18, &qword_10118A5C8, &qword_100EC5E38);
}

unint64_t sub_1002D782C(uint64_t a1, uint64_t a2)
{
  v34 = a1;
  sub_10010FC20(&qword_10118A530, &qword_100EC64E0);
  __chkstk_darwin();
  v33 = &v27 - v4;
  v5 = sub_10010FC20(&unk_1011A4510, &qword_100EC5CC0);
  v31 = *(v5 - 8);
  v32 = v5;
  __chkstk_darwin();
  v30 = &v27 - v6;
  v7 = sub_10010FC20(&unk_1011841D0, &qword_100EC5DB0);
  v27 = *(v7 - 8);
  __chkstk_darwin();
  v9 = &v27 - v8;
  v10 = type metadata accessor for Track();
  v28 = *(v10 - 8);
  v29 = v10;
  __chkstk_darwin();
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10010FC20(&qword_10118A4E8, &qword_100EC5CB8);
  v14 = *(v13 - 8);
  __chkstk_darwin();
  v16 = &v27 - v15;
  v17 = v2;
  v18 = *(v2 + OBJC_IVAR____TtC5Music32LibraryDownloadingViewController_sections);
  result = IndexPath.section.getter();
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (result >= *(v18 + 16))
  {
LABEL_8:
    __break(1u);
    return result;
  }

  if (*(v18 + result + 32))
  {
    v20 = OBJC_IVAR____TtC5Music32LibraryDownloadingViewController_items;
    swift_beginAccess();
    v21 = v27;
    (*(v27 + 16))(v9, v17 + v20, v7);
    IndexPath.item.getter();
    MusicItemCollection.subscript.getter();
    (*(v21 + 8))(v9, v7);
    v22 = v30;
    sub_1002D5A08(v30);
    v24 = v28;
    v23 = v29;
    v25 = v33;
    (*(v28 + 16))(v33, v12, v29);
    (*(v24 + 56))(v25, 0, 1, v23);
    v26 = sub_1007F89CC(v22, a2, v25);
    sub_1000095E8(v25, &qword_10118A530, &qword_100EC64E0);
    (*(v31 + 8))(v22, v32);
    (*(v24 + 8))(v12, v23);
  }

  else
  {
    sub_1002D5798(v16);
    v35 = xmmword_100EC5C80;
    sub_100009F78(0, &unk_101184790, UICollectionViewListCell_ptr);
    v26 = UICollectionView.dequeueConfiguredReusableCell<A, B>(using:for:item:)();
    (*(v14 + 8))(v16, v13);
  }

  return v26;
}

uint64_t sub_1002D8004(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x64616F6C6E776F64;
  }

  else
  {
    v3 = 0x6C416C65636E6163;
  }

  if (v2)
  {
    v4 = 0xE90000000000006CLL;
  }

  else
  {
    v4 = 0xE900000000000073;
  }

  if (*a2)
  {
    v5 = 0x64616F6C6E776F64;
  }

  else
  {
    v5 = 0x6C416C65636E6163;
  }

  if (*a2)
  {
    v6 = 0xE900000000000073;
  }

  else
  {
    v6 = 0xE90000000000006CLL;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int sub_1002D80B0()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

double sub_1002D8138(uint64_t a1)
{
  String.hash(into:)();

  return result;
}

Swift::Int sub_1002D81AC(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

void sub_1002D8230(Swift::String *a1@<X0>, char *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&off_10109A1E8, *a1);

  if (v3 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v3)
  {
    v4 = 0;
  }

  *a2 = v4;
}

void sub_1002D8290(uint64_t *a1@<X8>)
{
  v2 = 0x6C416C65636E6163;
  if (*v1)
  {
    v2 = 0x64616F6C6E776F64;
  }

  v3 = 0xE90000000000006CLL;
  if (*v1)
  {
    v3 = 0xE900000000000073;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t type metadata accessor for LibraryDownloadingViewController(uint64_t a1)
{
  result = qword_10118A4C0;
  if (!qword_10118A4C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1002D84D4(uint64_t a1)
{
  sub_1002D866C(319);
  if (v1 <= 0x3F)
  {
    sub_10003920C(319, &qword_10118A4E0, &qword_10118A4E8, &qword_100EC5CB8);
    if (v2 <= 0x3F)
    {
      sub_10003920C(319, &unk_10118A4F0, &unk_1011A4510, &qword_100EC5CC0);
      if (v3 <= 0x3F)
      {
        sub_10005BC8C(319);
        if (v4 <= 0x3F)
        {
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

void sub_1002D866C(uint64_t a1)
{
  if (!qword_10118A4D0)
  {
    sub_100009F78(255, &unk_101184750, UICollectionViewCell_ptr);
    v1 = type metadata accessor for UICollectionView.SupplementaryRegistration();
    if (!v2)
    {
      atomic_store(v1, &qword_10118A4D0);
    }
  }
}

unint64_t sub_1002D86E8()
{
  result = qword_10118A508;
  if (!qword_10118A508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10118A508);
  }

  return result;
}

void sub_1002D873C(unint64_t a1)
{
  v2 = v1;
  v4 = sub_10010FC20(&unk_1011841D0, &qword_100EC5DB0);
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v10 - v6;
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  v8 = *(v2 + OBJC_IVAR____TtC5Music32LibraryDownloadingViewController_sections);
  if (*(v8 + 16) <= a1)
  {
LABEL_7:
    __break(1u);
    return;
  }

  if (*(v8 + a1 + 32) == 1)
  {
    v9 = OBJC_IVAR____TtC5Music32LibraryDownloadingViewController_items;
    swift_beginAccess();
    (*(v5 + 16))(v7, v2 + v9, v4);
    sub_100020674(&qword_1011913B0, &unk_1011841D0, &qword_100EC5DB0, &protocol conformance descriptor for MusicItemCollection<A>);
    dispatch thunk of Collection.startIndex.getter();
    dispatch thunk of Collection.endIndex.getter();
    dispatch thunk of Collection.distance(from:to:)();
    (*(v5 + 8))(v7, v4);
  }
}

void sub_1002D88F8(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC5Music32LibraryDownloadingViewController_sections);
  v3 = IndexPath.section.getter();
  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (v3 >= *(v2 + 16))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (*(v2 + v3 + 32))
  {
    v4 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v4 & 1) == 0)
    {
      return;
    }
  }

  else
  {
  }

  sub_1002D41E4();
  sub_10016D498();
}

void sub_1002D89E4()
{
  v1 = v0;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_100009F78(0, &unk_101184750, UICollectionViewCell_ptr);
  UICollectionView.SupplementaryRegistration.init(elementKind:handler:)();
  v2 = OBJC_IVAR____TtC5Music32LibraryDownloadingViewController____lazy_storage___actionCellRegistration;
  v3 = sub_10010FC20(&qword_10118A4E8, &qword_100EC5CB8);
  (*(*(v3 - 8) + 56))(v1 + v2, 1, 1, v3);
  v4 = OBJC_IVAR____TtC5Music32LibraryDownloadingViewController____lazy_storage___listCellRegistration;
  v5 = sub_10010FC20(&unk_1011A4510, &qword_100EC5CC0);
  (*(*(v5 - 8) + 56))(v1 + v4, 1, 1, v5);
  *(v1 + OBJC_IVAR____TtC5Music32LibraryDownloadingViewController____lazy_storage___collectionView) = 0;
  v6 = OBJC_IVAR____TtC5Music32LibraryDownloadingViewController_prefetchingController;
  v7 = objc_allocWithZone(type metadata accessor for ArtworkPrefetchingController());
  *(v1 + v6) = sub_10003AAD8(0xD00000000000001BLL, 0x8000000100E45520);
  *(v1 + OBJC_IVAR____TtC5Music32LibraryDownloadingViewController____lazy_storage___downloadsController) = 0;
  type metadata accessor for Track();
  MusicItemCollection.init(arrayLiteral:)();
  *(v1 + OBJC_IVAR____TtC5Music32LibraryDownloadingViewController_updateTimer) = 0;
  *(v1 + OBJC_IVAR____TtC5Music32LibraryDownloadingViewController_sections) = &off_10109A238;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

unint64_t sub_1002D8BFC()
{
  result = qword_10119A350;
  if (!qword_10119A350)
  {
    sub_1001109D0(&unk_10118A520, &unk_100EC5DA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10119A350);
  }

  return result;
}

unint64_t sub_1002D8C94()
{
  result = qword_10118A558;
  if (!qword_10118A558)
  {
    sub_1001109D0(&qword_10118A550, &qword_100EC5DC8);
    sub_1002D8D20();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10118A558);
  }

  return result;
}

unint64_t sub_1002D8D20()
{
  result = qword_10118A560;
  if (!qword_10118A560)
  {
    sub_1001109D0(&qword_10118A568, &qword_100EC5DD0);
    sub_1002D8DAC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10118A560);
  }

  return result;
}

unint64_t sub_1002D8DAC()
{
  result = qword_10118A570;
  if (!qword_10118A570)
  {
    sub_1001109D0(&qword_10118A578, &qword_100EC5DD8);
    sub_100118EF8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10118A570);
  }

  return result;
}

uint64_t sub_1002D8E5C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ArtworkImage.Info(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1002D8EE0()
{
  v1 = *(sub_10010FC20(&unk_1011841D0, &qword_100EC5DB0) - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  sub_1002D4CCC(v2, v3);
}

uint64_t sub_1002D8F50(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1002D8FA0@<X0>(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v4 = v3;
  v37 = a1;
  v38 = a2;
  v33 = a3;
  v39 = type metadata accessor for Track();
  v5 = *(v39 - 8);
  __chkstk_darwin();
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v36 = &v32 - v8;
  v9 = sub_10010FC20(&unk_1011841D0, &qword_100EC5DB0);
  v10 = *(v9 - 8);
  __chkstk_darwin();
  v12 = &v32 - v11;
  v13 = sub_10010FC20(&unk_10118C0B0, &qword_100ECFA00) - 8;
  v14 = __chkstk_darwin();
  v16 = &v32 - v15;
  (*(v10 + 16))(v12, v4, v9, v14);
  sub_100020674(&unk_10118C0A0, &unk_1011841D0, &qword_100EC5DB0, &protocol conformance descriptor for MusicItemCollection<A>);
  dispatch thunk of Sequence.makeIterator()();
  v17 = *(v13 + 44);
  sub_100020674(&qword_1011913B0, &unk_1011841D0, &qword_100EC5DB0, &protocol conformance descriptor for MusicItemCollection<A>);
  dispatch thunk of Collection.endIndex.getter();
  v18 = *&v16[v17];
  v32 = v5;
  if (v18 == v40[0])
  {
    v19 = v39;
LABEL_7:
    sub_1000095E8(v16, &unk_10118C0B0, &qword_100ECFA00);
    v27 = 1;
    v28 = v33;
  }

  else
  {
    v20 = (v5 + 16);
    v34 = (v5 + 8);
    v35 = (v5 + 32);
    v19 = v39;
    while (1)
    {
      v21 = dispatch thunk of Collection.subscript.read();
      v22 = v36;
      (*v20)(v36);
      v21(v40, 0);
      dispatch thunk of Collection.formIndex(after:)();
      v23 = v19;
      v24 = *v35;
      (*v35)(v7, v22, v23);
      v25 = v41;
      v26 = v37(v7);
      if (v25)
      {
        (*v34)(v7, v39);
        return sub_1000095E8(v16, &unk_10118C0B0, &qword_100ECFA00);
      }

      if (v26)
      {
        break;
      }

      v41 = 0;
      v19 = v39;
      (*v34)(v7, v39);
      dispatch thunk of Collection.endIndex.getter();
      if (*&v16[v17] == v40[0])
      {
        goto LABEL_7;
      }
    }

    sub_1000095E8(v16, &unk_10118C0B0, &qword_100ECFA00);
    v30 = v33;
    v31 = v39;
    v24(v33, v7, v39);
    v28 = v30;
    v19 = v31;
    v27 = 0;
  }

  return (*(v32 + 56))(v28, v27, 1, v19);
}

void sub_1002D93F4(uint64_t (*a1)(id *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = a3;
  if ((a3 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    sub_1002DCAE4();
    sub_1002DCB30(&qword_1011828C0, sub_1002DCAE4, &protocol conformance descriptor for NSObject);
    Set.Iterator.init(_cocoa:)();
    v5 = v21;
    v6 = v22;
    v7 = v23;
    v8 = v24;
    v9 = v25;
  }

  else
  {
    v10 = -1 << *(a3 + 32);
    v6 = a3 + 56;
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

    v9 = v12 & *(a3 + 56);

    v8 = 0;
  }

  v20 = v5;
  if (v5 < 0)
  {
    goto LABEL_14;
  }

LABEL_8:
  v13 = v8;
  v14 = v9;
  v15 = v8;
  if (v9)
  {
LABEL_12:
    v16 = (v14 - 1) & v14;
    v17 = *(*(v5 + 48) + ((v15 << 9) | (8 * __clz(__rbit64(v14)))));
    if (v17)
    {
      while (1)
      {
        v26 = v17;
        v18 = a1(&v26);
        if (v4)
        {
          break;
        }

        if (v18)
        {
          goto LABEL_23;
        }

        v8 = v15;
        v9 = v16;
        v5 = v20;
        if ((v20 & 0x8000000000000000) == 0)
        {
          goto LABEL_8;
        }

LABEL_14:
        if (!__CocoaSet.Iterator.next()())
        {
          goto LABEL_20;
        }

        sub_1002DCAE4();
        swift_dynamicCast();
        v17 = v26;
        v15 = v8;
        v16 = v9;
        if (!v26)
        {
          goto LABEL_21;
        }
      }

LABEL_23:
      sub_10005C9F8(v20);
    }

    else
    {
LABEL_21:
      v5 = v20;
LABEL_20:
      sub_10005C9F8(v5);
    }
  }

  else
  {
    while (1)
    {
      v15 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v15 >= ((v7 + 64) >> 6))
      {
        goto LABEL_20;
      }

      v14 = *(v6 + 8 * v15);
      ++v13;
      if (v14)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }
}

uint64_t sub_1002D9674(uint64_t (*a1)(uint64_t *), uint64_t a2, unint64_t a3, uint64_t (*a4)(unint64_t, uint64_t))
{
  if (a3 >> 62)
  {
LABEL_16:
    v11 = a4;
    v12 = _CocoaArrayWrapper.endIndex.getter();
    a4 = v11;
    v6 = v12;
    if (v12)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v6)
    {
LABEL_3:
      v14 = a4;
      v7 = 0;
      do
      {
        if ((a3 & 0xC000000000000001) != 0)
        {
          v8 = v14(v7, a3);
          v9 = v7 + 1;
          if (__OFADD__(v7, 1))
          {
LABEL_13:
            __break(1u);
LABEL_14:

            return v8;
          }
        }

        else
        {
          if (v7 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_16;
          }

          v8 = *(a3 + 8 * v7 + 32);

          v9 = v7 + 1;
          if (__OFADD__(v7, 1))
          {
            goto LABEL_13;
          }
        }

        v16 = v8;
        v10 = a1(&v16);
        if (v4)
        {
          goto LABEL_14;
        }

        if (v10)
        {
          return v8;
        }

        ++v7;
      }

      while (v9 != v6);
    }
  }

  return 0;
}

uint64_t Logger.NowPlaying.motion.unsafeMutableAddressor()
{
  if (qword_10117F548 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();

  return sub_1000060E4(v0, static Logger.NowPlaying.motion);
}

double sub_1002D9810(void *a1)
{
  v2 = v1;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;

    if (v6 == a1)
    {
      return result;
    }
  }

  else if (!a1)
  {
    return result;
  }

  swift_unknownObjectWeakAssign();
  sub_1002DA1E8();
  v7 = sub_100025CE0();
  if (FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.Music, v7))
  {
    v8 = OBJC_IVAR____TtC5Music20MotionArtworkManager_windowSceneDidUpdateEffectiveGeometryObserver;
    *(v1 + OBJC_IVAR____TtC5Music20MotionArtworkManager_windowSceneDidUpdateEffectiveGeometryObserver) = 0;

    if (a1)
    {
      v9 = [a1 windowScene];
      if (v9)
      {
        v10 = v9;
        if (qword_10117F740 != -1)
        {
          swift_once();
        }

        v11 = qword_101218D40;
        v12 = swift_allocObject();
        swift_weakInit();
        type metadata accessor for NotificationObserver();
        swift_allocObject();
        *(v2 + v8) = NotificationObserver.init(name:object:dispatchOnMainThread:usesLocalNotificationCenter:handler:)(v11, v10, 1, 1, sub_1002DC460, v12);
      }
    }
  }

  return result;
}

uint64_t sub_1002D999C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v1);

  return v1;
}

uint64_t sub_1002D9A10()
{
  v1 = v0;
  v2 = type metadata accessor for EditorialVideoArtworkFlavor();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v11[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11[15] = 11;
  v6 = sub_100025CE0();
  if (FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.Music, v6))
  {
    v7 = [objc_opt_self() currentDevice];
    v8 = [v7 userInterfaceIdiom];

    if (v8 == 1)
    {
      static EditorialVideoArtworkFlavor.motionDetailSquare.getter();
      goto LABEL_5;
    }

    if (v8)
    {
      v9 = 0;
      return v9 & 1;
    }
  }

  static EditorialVideoArtworkFlavor.motionDetailTall.getter();
LABEL_5:
  v9 = sub_1002D9B70(v5, v1);
  (*(v3 + 8))(v5, v2);
  return v9 & 1;
}

uint64_t sub_1002D9B70(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for VideoArtwork();
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v8 = &v17 - v7;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v17);

  result = v17;
  if (v17)
  {
    v10 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      __break(1u);
      return result;
    }

    if ((v10 & 0x8000000000000000) == 0 && v10 < *(v17 + 16))
    {
      v11 = (v17 + 24 * v10);
      v12 = v11[5];
      v13 = v11[6];
      sub_1002DC3D8(v11[4], v12, v13);

      if (!v12)
      {
        return 0;
      }

      if (*(v13 + 16))
      {
        v14 = sub_1006BE63C(a1);
        if (v15)
        {
          (*(v4 + 16))(v6, *(v13 + 56) + *(v4 + 72) * v14, v3);

          (*(v4 + 32))(v8, v6, v3);
          v16 = sub_1002D9DB4(v8, a1);
          (*(v4 + 8))(v8, v3);
          if (v16)
          {

            return 1;
          }

          return 0;
        }
      }
    }

    return 0;
  }

  return result;
}

uint64_t sub_1002D9DB4(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for EditorialVideoArtworkFlavor();
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for VideoArtwork();
  v10 = *(v9 - 8);
  __chkstk_darwin();
  v12 = v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = OBJC_IVAR____TtC5Music20MotionArtworkManager_cachedMotionData;
  swift_beginAccess();
  v14 = *(v2 + v13);
  if (*(v14 + 16) && (v15 = sub_1006BE63C(a2), (v16 & 1) != 0))
  {
    v17 = *(*(v14 + 56) + 8 * v15);
    swift_endAccess();
    v20[1] = v20;
    __chkstk_darwin();
    v20[-2] = a1;

    v18 = sub_1002D9674(sub_1002DC41C, &v20[-4], v17, sub_1007E9718);

    result = v18;
    if (v18)
    {
      return result;
    }
  }

  else
  {
    swift_endAccess();
  }

  (*(v10 + 16))(v12, a1, v9);
  (*(v6 + 16))(v8, a2, v5);
  type metadata accessor for MotionData(0);
  swift_allocObject();
  return sub_10027541C(v12, v8);
}

uint64_t sub_1002DA024()
{
  v1 = OBJC_IVAR____TtC5Music20MotionArtworkManager____lazy_storage___nowPlayingInfoCenterPublisher;
  if (*(v0 + OBJC_IVAR____TtC5Music20MotionArtworkManager____lazy_storage___nowPlayingInfoCenterPublisher))
  {
    v2 = *(v0 + OBJC_IVAR____TtC5Music20MotionArtworkManager____lazy_storage___nowPlayingInfoCenterPublisher);
  }

  else
  {
    v3 = [objc_opt_self() defaultCenter];
    v4 = swift_allocObject();
    swift_weakInit();
    type metadata accessor for MotionArtworkNowPlayingInfoCenterPublisher();
    v2 = swift_allocObject();
    *(v2 + 40) = 0u;
    *(v2 + 56) = 0u;
    *(v2 + 72) = &_swiftEmptySetSingleton;
    *(v2 + 16) = v3;
    *(v2 + 24) = sub_1002DCA14;
    *(v2 + 32) = v4;
    *(v0 + v1) = v2;
  }

  return v2;
}

double sub_1002DA118(uint64_t a1)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v2 = static Published.subscript.modify();
    sub_100195B44(0);
    v2(v3, 0);
  }

  return result;
}

void sub_1002DA1E8()
{
  v1 = v0;
  v38 = sub_10010FC20(&qword_10118A828, &qword_100EC6080);
  __chkstk_darwin();
  v3 = &v35 - v2;
  v40[0] = 11;
  v4 = sub_100025CE0();
  if ((FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.Music, v4) & 1) == 0 || (Strong = swift_unknownObjectWeakLoadStrong()) == 0)
  {
    Strong = [objc_opt_self() mainScreen];
  }

  v6 = Strong;
  [Strong bounds];
  v8 = v7;
  v10 = v9;

  if (v8 > v10)
  {
    v11 = v10;
  }

  else
  {
    v11 = v8;
  }

  if (v8 <= v10)
  {
    v8 = v10;
  }

  v12 = OBJC_IVAR____TtC5Music20MotionArtworkManager_cachedMotionData;
  swift_beginAccess();
  v13 = *(v1 + v12);
  v14 = v13 + 64;
  v15 = 1 << *(v13 + 32);
  v16 = -1;
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  v17 = v16 & *(v13 + 64);
  v18 = (v15 + 63) >> 6;
  v39 = v13;
  swift_bridgeObjectRetain_n();
  v19 = 0;
  v35 = v18;
  v36 = v14;
  v37 = v3;
  while (1)
  {
    if (!v17)
    {
      do
      {
        v20 = v19 + 1;
        if (__OFADD__(v19, 1))
        {
          goto LABEL_40;
        }

        if (v20 >= v18)
        {

          return;
        }

        v17 = *(v14 + 8 * v20);
        ++v19;
      }

      while (!v17);
      v19 = v20;
    }

    v21 = __clz(__rbit64(v17)) | (v19 << 6);
    v22 = v39;
    v23 = *(v39 + 48);
    v24 = type metadata accessor for EditorialVideoArtworkFlavor();
    (*(*(v24 - 8) + 16))(v3, v23 + *(*(v24 - 8) + 72) * v21, v24);
    v25 = *(*(v22 + 56) + 8 * v21);
    *&v3[*(v38 + 48)] = v25;
    v26 = v25 >> 62 ? _CocoaArrayWrapper.endIndex.getter() : *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (v26)
    {
      break;
    }

LABEL_12:
    v17 &= v17 - 1;
    v3 = v37;
    sub_1000095E8(v37, &qword_10118A828, &qword_100EC6080);
    v18 = v35;
    v14 = v36;
  }

  v27 = 0;
  while ((v25 & 0xC000000000000001) != 0)
  {
    v28 = sub_1007E9718(v27, v25);
    v29 = v27 + 1;
    if (__OFADD__(v27, 1))
    {
      goto LABEL_38;
    }

LABEL_27:
    v30 = v28 + OBJC_IVAR____TtC5Music10MotionData_keyframeSnapshotSize;
    v31 = *(v28 + OBJC_IVAR____TtC5Music10MotionData_keyframeSnapshotSize);
    v32 = *(v28 + OBJC_IVAR____TtC5Music10MotionData_keyframeSnapshotSize + 8);
    v33 = *(v28 + OBJC_IVAR____TtC5Music10MotionData_keyframeSnapshotSize + 16);
    *v30 = v11;
    *(v30 + 8) = v8;
    *(v30 + 16) = 0;
    if ((v33 & 1) != 0 || (v11 == v31 ? (v34 = v8 == v32) : (v34 = 0), !v34))
    {
      sub_100276998();
    }

    ++v27;
    if (v29 == v26)
    {
      goto LABEL_12;
    }
  }

  if (v27 >= *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_39;
  }

  v28 = *(v25 + 8 * v27 + 32);

  v29 = v27 + 1;
  if (!__OFADD__(v27, 1))
  {
    goto LABEL_27;
  }

LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
}

double sub_1002DA528(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_1002DA1E8();
  }

  return result;
}

uint64_t sub_1002DA5A8(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v3);

  return v3;
}

uint64_t sub_1002DA614()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v1);

  return v1;
}

void sub_1002DA688(_BYTE *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v3);

  *a2 = v3;
}

uint64_t sub_1002DA708(char *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

double sub_1002DA77C(uint64_t a1)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_1002DA7E4(5000000000000000000, 0);
  }

  return result;
}

double sub_1002DA7E4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  sub_10010FC20(&unk_101181520, &qword_100EBCC60);
  __chkstk_darwin();
  v7 = &v15[-v6 - 8];
  swift_getKeyPath();
  swift_getKeyPath();
  v8 = static Published.subscript.modify();
  sub_1003B4074(&v16, 1);
  v8(v15, 0);

  v9 = OBJC_IVAR____TtC5Music20MotionArtworkManager_nowPlayingInfoCenterMotionDataObservationTask;
  if (*(v2 + OBJC_IVAR____TtC5Music20MotionArtworkManager_nowPlayingInfoCenterMotionDataObservationTask))
  {

    sub_10010FC20(&qword_1011824A0, &unk_100EBE390);
    Task.cancel()();
  }

  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  type metadata accessor for MainActor();

  v11 = static MainActor.shared.getter();
  v12 = swift_allocObject();
  v12[2] = v11;
  v12[3] = &protocol witness table for MainActor;
  v12[4] = a1;
  v12[5] = a2;
  v12[6] = v3;
  *(v3 + v9) = sub_10086E3AC(0, 0, v7, &unk_100EC6140, v12);

  return result;
}

void sub_1002DAA00()
{
  v1 = type metadata accessor for EditorialVideoArtworkFlavor();
  v2 = *(v1 - 8);
  __chkstk_darwin();
  v69 = &v57 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v5 = &v57 - v4;
  __chkstk_darwin();
  v61 = &v57 - v6;
  sub_10010FC20(&unk_10118A8D0, &qword_100EC6130);
  __chkstk_darwin();
  v8 = &v57 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v10 = &v57 - v9;
  v11 = OBJC_IVAR____TtC5Music20MotionArtworkManager_cachedMotionData;
  swift_beginAccess();
  v64 = v11;
  v65 = v0;
  v12 = *(v0 + v11);
  v13 = v12 + 64;
  v14 = 1 << *(v12 + 32);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v16 = v15 & *(v12 + 64);
  v58 = (v14 + 63) >> 6;
  v71 = (v2 + 16);
  v72 = (v2 + 32);
  v66 = v2;
  v62 = v12;
  v63 = (v2 + 8);

  v17 = 0;
  v67 = v10;
  v68 = v8;
  v59 = v1;
  v60 = v13;
  v70 = v5;
  if (!v16)
  {
    goto LABEL_7;
  }

  do
  {
    while (1)
    {
      v18 = v17;
LABEL_15:
      v21 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
      v22 = v21 | (v18 << 6);
      v24 = v61;
      v23 = v62;
      v25 = v66;
      (*(v66 + 16))(v61, *(v62 + 48) + *(v66 + 72) * v22, v1);
      v26 = *(*(v23 + 56) + 8 * v22);
      v27 = sub_10010FC20(&qword_10118A828, &qword_100EC6080);
      v28 = *(v27 + 48);
      v29 = *(v25 + 32);
      v8 = v68;
      v29(v68, v24, v1);
      *&v8[v28] = v26;
      (*(*(v27 - 8) + 56))(v8, 0, 1, v27);

      v10 = v67;
      v13 = v60;
LABEL_16:
      sub_1002DC9A4(v8, v10);
      v30 = sub_10010FC20(&qword_10118A828, &qword_100EC6080);
      if ((*(*(v30 - 8) + 48))(v10, 1, v30) == 1)
      {

        return;
      }

      v31 = *&v10[*(v30 + 48)];
      v32 = v70;
      (*v72)(v70, v10, v1);
      if (v31 >> 62)
      {
        break;
      }

      if (*((v31 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 4)
      {
        goto LABEL_19;
      }

LABEL_5:
      (*v63)(v32, v1);

      if (!v16)
      {
        goto LABEL_7;
      }
    }

    if (_CocoaArrayWrapper.endIndex.getter() < 4)
    {
      goto LABEL_5;
    }

LABEL_19:
    v33 = v13;
    v34 = *v71;
    v35 = v1;
    v36 = v69;
    (*v71)(v69, v32, v35);
    v37 = sub_1002DB05C(3, v31);
    v39 = v64;
    v38 = v65;
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v73 = *(v38 + v39);
    v41 = v73;
    *(v38 + v39) = 0x8000000000000000;
    v43 = sub_1006BE63C(v36);
    v44 = v41[2];
    v45 = (v42 & 1) == 0;
    v46 = v44 + v45;
    if (__OFADD__(v44, v45))
    {
      goto LABEL_37;
    }

    v47 = v42;
    if (v41[3] >= v46)
    {
      v13 = v33;
      if (isUniquelyReferenced_nonNull_native)
      {
        v50 = v73;
        if (v42)
        {
          goto LABEL_26;
        }
      }

      else
      {
        sub_1006C8730();
        v50 = v73;
        if (v47)
        {
          goto LABEL_26;
        }
      }
    }

    else
    {
      sub_1006C1048(v46, isUniquelyReferenced_nonNull_native);
      v48 = sub_1006BE63C(v69);
      if ((v47 & 1) != (v49 & 1))
      {
        goto LABEL_39;
      }

      v43 = v48;
      v13 = v33;
      v50 = v73;
      if (v47)
      {
LABEL_26:
        *(v50[7] + 8 * v43) = v37;

        v1 = v59;
        goto LABEL_33;
      }
    }

    v50[(v43 >> 6) + 8] |= 1 << v43;
    v52 = v59;
    v34(v50[6] + *(v66 + 72) * v43, v69);
    *(v50[7] + 8 * v43) = v37;
    v53 = v50[2];
    v54 = __OFADD__(v53, 1);
    v55 = v53 + 1;
    if (v54)
    {
      goto LABEL_38;
    }

    v50[2] = v55;
    v1 = v52;
LABEL_33:
    v56 = *v63;
    (*v63)(v69, v1);
    *(v65 + v64) = v50;
    swift_endAccess();
    v56(v70, v1);
    v10 = v67;
    v8 = v68;
  }

  while (v16);
LABEL_7:
  if (v58 <= v17 + 1)
  {
    v19 = v17 + 1;
  }

  else
  {
    v19 = v58;
  }

  v20 = v19 - 1;
  while (1)
  {
    v18 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v18 >= v58)
    {
      v51 = sub_10010FC20(&qword_10118A828, &qword_100EC6080);
      (*(*(v51 - 8) + 56))(v8, 1, 1, v51);
      v16 = 0;
      v17 = v20;
      goto LABEL_16;
    }

    v16 = *(v13 + 8 * v18);
    ++v17;
    if (v16)
    {
      v17 = v18;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

uint64_t sub_1002DB05C(int64_t a1, unint64_t a2)
{
  if (a1 < 0)
  {
LABEL_26:
    __break(1u);
LABEL_27:
    _CocoaArrayWrapper.endIndex.getter();
    specialized ContiguousArray.reserveCapacity(_:)();
    v5 = _CocoaArrayWrapper.endIndex.getter();
    if (v5)
    {
      goto LABEL_5;
    }

    goto LABEL_28;
  }

  v2 = a2;
  v3 = a1;
  if (!a1)
  {
LABEL_24:

    return _swiftEmptyArrayStorage;
  }

  v16 = _swiftEmptyArrayStorage;
  v4 = a2 & 0xFFFFFFFFFFFFFF8;
  if (a2 >> 62)
  {
    goto LABEL_27;
  }

  specialized ContiguousArray.reserveCapacity(_:)();
  v5 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v5)
  {
LABEL_5:
    v6 = 0;
    v15 = 0;
    while (1)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v7 = sub_1007E9718(v6, v2);
        v8 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
LABEL_23:
          __break(1u);
          goto LABEL_24;
        }
      }

      else
      {
        if (v6 >= *(v4 + 16))
        {
          __break(1u);
          goto LABEL_26;
        }

        v7 = *(v2 + 8 * v6 + 32);

        v8 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
          goto LABEL_23;
        }
      }

      v9 = v16;
      if (v16[2] >= v3)
      {
        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_1000D9158(v16);
          v9 = result;
          v16 = result;
        }

        if ((v15 & 0x8000000000000000) != 0)
        {
          goto LABEL_38;
        }

        if (v15 >= *(v9 + 16))
        {
          goto LABEL_39;
        }

        *(v9 + 8 * v15 + 32) = v7;

        specialized ContiguousArray._endMutation()();
        if ((v15 + 1) < v3)
        {
          v11 = v15 + 1;
        }

        else
        {
          v11 = 0;
        }

        v15 = v11;
        v6 = v8;
        if (v8 == v5)
        {
          goto LABEL_29;
        }
      }

      else
      {
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        ++v6;
        if (v8 == v5)
        {
          goto LABEL_29;
        }
      }
    }
  }

LABEL_28:
  v15 = 0;
LABEL_29:

  if (!v15)
  {
    return v16;
  }

  v12 = v16[2];
  result = specialized ContiguousArray.reserveCapacity(_:)();
  if (v12 < v15)
  {
    __break(1u);
  }

  else
  {
    v13 = v16[2];
    if (v13 >= v15 && v13 >= v12)
    {

      sub_1002DC468(v14, (v16 + 4), v15, (2 * v12) | 1);
      sub_1002DC468(v16, (v16 + 4), 0, (2 * v15) | 1);
      return _swiftEmptyArrayStorage;
    }
  }

  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
  return result;
}

void (*sub_1002DB2E4(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1002DB348;
}

void sub_1002DB348(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    sub_1002DAA00();
  }
}

uint64_t sub_1002DB37C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[7] = a5;
  v6[8] = a6;
  v6[6] = a4;
  v7 = type metadata accessor for ContinuousClock();
  v6[9] = v7;
  v6[10] = *(v7 - 8);
  v6[11] = swift_task_alloc();
  type metadata accessor for MainActor();
  v6[12] = static MainActor.shared.getter();
  v9 = dispatch thunk of Actor.unownedExecutor.getter();
  v6[13] = v9;
  v6[14] = v8;

  return _swift_task_switch(sub_1002DB474, v9, v8);
}

uint64_t sub_1002DB474()
{
  static Clock<>.continuous.getter();
  v1 = swift_task_alloc();
  v0[15] = v1;
  *v1 = v0;
  v1[1] = sub_1002DB534;
  v3 = v0[6];
  v2 = v0[7];

  return sub_10062A46C(v3, v2, 0, 0, 1);
}

uint64_t sub_1002DB534()
{
  v2 = *v1;
  v3 = *(*v1 + 88);
  v4 = *(*v1 + 80);
  v5 = *(*v1 + 72);
  *(*v1 + 128) = v0;

  (*(v4 + 8))(v3, v5);
  v6 = *(v2 + 112);
  v7 = *(v2 + 104);
  if (v0)
  {
    v8 = sub_1002DB7E8;
  }

  else
  {
    v8 = sub_1002DB6CC;
  }

  return _swift_task_switch(v8, v7, v6);
}

uint64_t sub_1002DB6CC()
{
  v1 = *(v0 + 128);

  static Task<>.checkCancellation()();
  if (!v1)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v3 = static Published.subscript.modify();
    sub_100195B44(1);
    v3(v0 + 16, 0);
  }

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1002DB7E8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1002DB854(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = type metadata accessor for VideoArtwork();
  v10 = *(v9 - 8);
  __chkstk_darwin();
  v39 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v40 = &v35 - v12;
  v13 = type metadata accessor for EditorialVideoArtworkFlavor();
  v14 = *(v13 - 8);
  v15 = __chkstk_darwin();
  v17 = &v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(a4 + 16);
  if (!v18)
  {
    return 0;
  }

  v36 = v10;
  v37 = a5;
  v38 = v9;
  v21 = *(v14 + 16);
  v20 = v14 + 16;
  v19 = v21;
  v22 = a4 + ((*(v20 + 64) + 32) & ~*(v20 + 64));
  v23 = (v20 - 8);
  v24 = *(v20 + 56);
  v21(v17, v22, v13, v15);
  while (1)
  {
    if (a2)
    {
      if (*(a3 + 16))
      {
        v26 = sub_1006BE63C(v17);
        if (v27)
        {
          break;
        }
      }
    }

    (*v23)(v17, v13);
    v22 += v24;
    if (!--v18)
    {
      return 0;
    }

    v19(v17, v22, v13, v25);
  }

  v28 = v36;
  v29 = *(a3 + 56) + *(v36 + 72) * v26;
  v30 = v38;
  v31 = v39;
  (*(v36 + 16))(v39, v29, v38);
  v32 = v40;
  (*(v28 + 32))(v40, v31, v30);
  v33 = sub_1002D9DB4(v32, v17);
  (*(v28 + 8))(v32, v30);
  (*v23)(v17, v13);
  return v33;
}

void sub_1002DBAE8(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for EditorialVideoArtworkFlavor();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v28 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin();
  v9 = &v27 - v8;
  v10 = *(v5 + 16);
  v29 = OBJC_IVAR____TtC5Music10MotionData_videoFlavor;
  v27 = v10;
  (v10)(&v27 - v8, a1 + OBJC_IVAR____TtC5Music10MotionData_videoFlavor, v4, v7);
  v11 = sub_1002DB2E4(v31);
  v13 = sub_10057605C(v30);
  if (*v12)
  {
    v14 = v12;

    v15 = sub_1002DC71C(v14, a1);

    if (*v14 >> 62)
    {
      v16 = _CocoaArrayWrapper.endIndex.getter();
      if (v16 >= v15)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v16 = *((*v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v16 >= v15)
      {
LABEL_4:
        sub_1003BBCF8(v15, v16);
        (v13)(v30, 0);
        (*(v5 + 8))(v9, v4);
        goto LABEL_6;
      }
    }

    __break(1u);
LABEL_20:
    sub_1006C8730();
    v18 = v30[0];
    *(v13 + v2) = v30[0];
    if (v9)
    {
LABEL_14:
      v26 = (v18[7] + 8 * v15);

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((*v26 & 0xFFFFFFFFFFFFFF8) + 0x10) < *((*v26 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
LABEL_15:
        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        swift_endAccess();
        sub_1002DAA00();
        return;
      }

LABEL_17:
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      goto LABEL_15;
    }

LABEL_13:
    v25 = v28;
    v27(v28, a1 + v5, v4);
    sub_1006C782C(v15, v25, _swiftEmptyArrayStorage, v18);
    goto LABEL_14;
  }

  (v13)(v30, 0);
  (*(v5 + 8))(v9, v4);
LABEL_6:
  v11(v31, 0);
  v13 = OBJC_IVAR____TtC5Music20MotionArtworkManager_cachedMotionData;
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v30[0] = *(v13 + v2);
  v18 = v30[0];
  *(v13 + v2) = 0x8000000000000000;
  v5 = v29;
  v15 = sub_1006BE63C(a1 + v29);
  v20 = v18[2];
  v21 = (v19 & 1) == 0;
  v22 = v20 + v21;
  if (__OFADD__(v20, v21))
  {
    __break(1u);
    goto LABEL_17;
  }

  LOBYTE(v9) = v19;
  if (v18[3] >= v22)
  {
    if (isUniquelyReferenced_nonNull_native)
    {
      *(v13 + v2) = v18;
      if (v19)
      {
        goto LABEL_14;
      }

      goto LABEL_13;
    }

    goto LABEL_20;
  }

  sub_1006C1048(v22, isUniquelyReferenced_nonNull_native);
  v18 = v30[0];
  v23 = sub_1006BE63C(a1 + v5);
  if ((v9 & 1) == (v24 & 1))
  {
    v15 = v23;
    *(v13 + v2) = v18;
    if (v9)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

uint64_t sub_1002DBE90()
{
  v1 = OBJC_IVAR____TtC5Music20MotionArtworkManager__currentNowPlayingMotionData;
  v2 = sub_10010FC20(&qword_101189E18, &qword_100EC6060);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = OBJC_IVAR____TtC5Music20MotionArtworkManager__supportedNowPlayingArtworkFlavors;
  v4 = sub_10010FC20(&qword_10118A818, &qword_100EC6068);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtC5Music20MotionArtworkManager__motionDataClients;
  v6 = sub_10010FC20(&qword_10118A820, &unk_100EC6070);
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  v7 = OBJC_IVAR____TtC5Music20MotionArtworkManager__isInForeground;
  v8 = sub_10010FC20(&unk_101189E60, &unk_100EC0CF0);
  (*(*(v8 - 8) + 8))(v0 + v7, v8);

  swift_unknownObjectWeakDestroy();

  return v0;
}

uint64_t sub_1002DC070()
{
  sub_1002DBE90();

  return swift_deallocClassInstance();
}

uint64_t sub_1002DC0C8()
{
  v0 = type metadata accessor for Logger();
  sub_100006080(v0, static Logger.NowPlaying.motion);
  sub_1000060E4(v0, static Logger.NowPlaying.motion);
  return static Logger.nowPlaying(_:)(0x6E6F69746F4DLL, 0xE600000000000000);
}

uint64_t static Logger.NowPlaying.motion.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_10117F548 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  v3 = sub_1000060E4(v2, static Logger.NowPlaying.motion);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

void sub_1002DC1D8(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v3);

  *a2 = v3;
}

uint64_t sub_1002DC258(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

double sub_1002DC2D4@<D0>(_OWORD *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v4);

  result = *&v4;
  *a2 = v4;
  return result;
}

uint64_t sub_1002DC354(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

void sub_1002DC3D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
  }
}

uint64_t sub_1002DC468(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v6 = a4 >> 1;
  v7 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
    goto LABEL_17;
  }

  v8 = *v4;
  v9 = *(*v4 + 16);
  if (__OFADD__(v9, v7))
  {
LABEL_17:
    __break(1u);
    goto LABEL_8;
  }

  v5 = a3;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v4 = v8;
  if (!result)
  {
    goto LABEL_8;
  }

  v11 = *(v8 + 24) >> 1;
  if (v11 < v9 + v7)
  {
    goto LABEL_8;
  }

  if (v6 == v5)
  {
    while (v7 > 0)
    {
      __break(1u);
LABEL_8:
      result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      v8 = *v4;
      v11 = *(*v4 + 24) >> 1;
      if (v6 != v5)
      {
        goto LABEL_9;
      }
    }

    goto LABEL_13;
  }

LABEL_9:
  if (v11 - *(v8 + 16) < v7)
  {
    __break(1u);
    goto LABEL_20;
  }

  type metadata accessor for MotionData(0);
  result = swift_arrayInitWithCopy();
  if (v7 > 0)
  {
    v12 = *(v8 + 16);
    v13 = __OFADD__(v12, v7);
    v14 = v12 + v7;
    if (!v13)
    {
      *(v8 + 16) = v14;
      goto LABEL_13;
    }

LABEL_20:
    __break(1u);
    return result;
  }

LABEL_13:
  swift_unknownObjectRelease();

  return specialized ContiguousArray._endMutation()();
}

double sub_1002DC5C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
  }

  return result;
}

unint64_t sub_1002DC608(unint64_t a1, uint64_t a2)
{
  v3 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
LABEL_17:
    v4 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v5 = 0;
  while (1)
  {
    if (v4 == v5)
    {
      return 0;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      sub_1007E9718(v5, a1);
    }

    else
    {
      if (v5 >= *(v3 + 16))
      {
        __break(1u);
LABEL_16:
        __break(1u);
        goto LABEL_17;
      }
    }

    v6 = static VideoArtwork.== infix(_:_:)();

    if (v6)
    {
      return v5;
    }

    if (__OFADD__(v5++, 1))
    {
      goto LABEL_16;
    }
  }
}

unint64_t sub_1002DC71C(unint64_t *a1, uint64_t a2)
{
  v3 = a1;
  v4 = *a1;
  result = sub_1002DC608(*a1, a2);
  v7 = result;
  if (v2)
  {
    return v7;
  }

  if (v6)
  {
    if (v4 >> 62)
    {
      return _CocoaArrayWrapper.endIndex.getter();
    }

    return *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v8 = result + 1;
  if (__OFADD__(result, 1))
  {
    __break(1u);
    return result;
  }

  while (1)
  {
    if (v4 >> 62)
    {
      if (v8 == _CocoaArrayWrapper.endIndex.getter())
      {
        return v7;
      }
    }

    else if (v8 == *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      return v7;
    }

    if ((v4 & 0xC000000000000001) != 0)
    {
      sub_1007E9718(v8, v4);
      goto LABEL_15;
    }

    if ((v8 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v8 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_40;
    }

LABEL_15:
    v10 = static VideoArtwork.== infix(_:_:)();

    if ((v10 & 1) == 0)
    {
      if (v7 != v8)
      {
        if ((v4 & 0xC000000000000001) != 0)
        {
          v11 = sub_1007E9718(v7, v4);
          v12 = sub_1007E9718(v8, v4);
        }

        else
        {
          if ((v7 & 0x8000000000000000) != 0)
          {
            goto LABEL_44;
          }

          v13 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v7 >= v13)
          {
            goto LABEL_45;
          }

          if (v8 >= v13)
          {
            goto LABEL_46;
          }

          v11 = *(v4 + 32 + 8 * v7);
          v12 = *(v4 + 32 + 8 * v8);
        }

        v14 = v3;
        if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v4 & 0x8000000000000000) != 0 || (v4 & 0x4000000000000000) != 0)
        {
          v4 = sub_1005024DC();
          v15 = (v4 >> 62) & 1;
        }

        else
        {
          LODWORD(v15) = 0;
        }

        v16 = v4 & 0xFFFFFFFFFFFFFF8;
        *((v4 & 0xFFFFFFFFFFFFFF8) + 8 * v7 + 0x20) = v12;

        if ((v4 & 0x8000000000000000) != 0 || v15)
        {
          v4 = sub_1005024DC();
          v16 = v4 & 0xFFFFFFFFFFFFFF8;
          if ((v8 & 0x8000000000000000) != 0)
          {
LABEL_37:
            __break(1u);
            return v7;
          }
        }

        else if ((v8 & 0x8000000000000000) != 0)
        {
          goto LABEL_37;
        }

        if (v8 >= *(v16 + 16))
        {
          goto LABEL_43;
        }

        v3 = v14;
        *(v16 + 8 * v8 + 32) = v11;

        *v14 = v4;
      }

      v9 = __OFADD__(v7++, 1);
      if (v9)
      {
        goto LABEL_42;
      }
    }

    v9 = __OFADD__(v8++, 1);
    if (v9)
    {
      goto LABEL_41;
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
  __break(1u);
LABEL_46:
  __break(1u);
  return _CocoaArrayWrapper.endIndex.getter();
}

uint64_t sub_1002DC9A4(uint64_t a1, uint64_t a2)
{
  v4 = sub_10010FC20(&unk_10118A8D0, &qword_100EC6130);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1002DCA1C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10002F3F4;

  return sub_1002DB37C(a1, v4, v5, v6, v7, v8);
}

unint64_t sub_1002DCAE4()
{
  result = qword_10118D430;
  if (!qword_10118D430)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10118D430);
  }

  return result;
}

uint64_t sub_1002DCB30(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1002DCBA0(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = *(a1 + 32);
  v7 = a3;
  v6(a2, v7, a4);
}

id sub_1002DCC7C()
{
  v1 = OBJC_IVAR____TtC5Music29NowPlayingQueueViewController____lazy_storage___collectionView;
  v2 = *(v0 + OBJC_IVAR____TtC5Music29NowPlayingQueueViewController____lazy_storage___collectionView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC5Music29NowPlayingQueueViewController____lazy_storage___collectionView);
  }

  else
  {
    v4 = sub_1002DCCE0(v0);
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_1002DCCE0(uint64_t a1)
{
  v1 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v2 = objc_allocWithZone(_s19CompositionalLayoutCMa());
  v17[4] = sub_10030AC60;
  v17[5] = v1;
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 1107296256;
  v17[2] = sub_1005A63A8;
  v17[3] = &unk_1010A5FC0;
  v3 = _Block_copy(v17);

  v4 = [v2 initWithSectionProvider:v3];
  _Block_release(v3);

  _s22AutoPlayBackgroundViewCMa();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v6 = v4;
  static UICollectionReusableView.reuseIdentifier.getter();
  v7 = String._bridgeToObjectiveC()();

  [v6 registerClass:ObjCClassFromMetadata forDecorationViewOfKind:v7];

  v8 = [objc_allocWithZone(_s14CollectionViewCMa()) initWithFrame:v6 collectionViewLayout:{0.0, 0.0, 0.0, 0.0}];
  v9._object = 0x8000000100E461E0;
  v9._countAndFlagsBits = 0xD000000000000010;
  v18 = AccessibilityIdentifier.init(name:)(v9);
  v10 = UIView.withAccessibilityIdentifier(_:)(v18.rawValue._countAndFlagsBits, v18.rawValue._object, v18.name._countAndFlagsBits, v18.name._object);

  v11 = v10;
  [v11 setAlwaysBounceVertical:1];
  v12 = objc_opt_self();
  v13 = v11;
  v14 = [v12 clearColor];
  [v13 setBackgroundColor:v14];

  [v13 verticalScrollIndicatorInsets];
  [v13 setVerticalScrollIndicatorInsets:32.0];
  [v13 setContentInsetAdjustmentBehavior:2];
  [v13 _setHiddenPocketEdges:15];
  v15 = [v13 layer];

  [v15 setAllowsGroupBlending:0];
  [v13 _setAutomaticContentOffsetAdjustmentEnabled:0];

  return v13;
}

uint64_t sub_1002DCFC0(unint64_t a1, void *a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v6 = Strong;
  sub_1002EB520(a1, a2);
  v8 = v7;

  return v8;
}

void sub_1002DD040(void *a1)
{
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v8 = *(v7 - 8);
  __chkstk_darwin();
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100305140(a1);
  if ([v1 isViewLoaded])
  {
    v21 = v4;
    v22 = v7;
    v11 = OBJC_IVAR____TtC5Music29NowPlayingQueueViewController_updateContext;
    swift_beginAccess();
    v12 = v8;
    v13 = *&v1[v11];
    v14 = swift_allocObject();
    *(v14 + 16) = v1;
    *(v14 + 24) = a1;
    aBlock[4] = sub_10030AC50;
    aBlock[5] = v14;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10002BC98;
    aBlock[3] = &unk_1010A5F48;
    v15 = _Block_copy(aBlock);
    v20 = a1;
    v16 = v13;
    v17 = v1;
    static DispatchQoS.unspecified.getter();
    v23 = _swiftEmptyArrayStorage;
    sub_100309644(&qword_101183F60, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_10010FC20(&qword_101182970, &qword_100EBD250);
    sub_100020674(&qword_101183F70, &qword_101182970, &qword_100EBD250, &protocol conformance descriptor for [A]);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v15);

    (*(v21 + 8))(v6, v3);
    (*(v12 + 8))(v10, v22);
  }

  else
  {
    v18 = *&v1[OBJC_IVAR____TtC5Music29NowPlayingQueueViewController__playerResponse];
    *&v1[OBJC_IVAR____TtC5Music29NowPlayingQueueViewController__playerResponse] = a1;
  }
}

double sub_1002DD3A8(char *a1, void *a2)
{
  v4 = *&a1[OBJC_IVAR____TtC5Music29NowPlayingQueueViewController__playerResponse];
  if (v4)
  {
    v5 = a2 == 0;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    v6 = 257;
    v8 = a2;
  }

  else
  {
    v7 = v4;
    v8 = a2;
    v9 = [v7 tracklist];
    v10 = [v9 shuffleType];

    v11 = [v8 tracklist];
    v12 = [v11 shuffleType];

    if (v10 == v12)
    {
      v6 = 257;
    }

    else
    {
      v6 = 1;
    }
  }

  v13 = swift_allocObject();
  *(v13 + 16) = a1;
  *(v13 + 24) = a2;
  v14 = v8;
  v15 = a1;
  sub_1002F4E14(v6, sub_10030AC58, v13);

  return result;
}

void sub_1002DD4E0(uint64_t a1, void *a2)
{
  v2 = OBJC_IVAR____TtC5Music29NowPlayingQueueViewController__playerResponse;
  v4 = *(a1 + OBJC_IVAR____TtC5Music29NowPlayingQueueViewController__playerResponse);
  if (!v4)
  {
    *(a1 + OBJC_IVAR____TtC5Music29NowPlayingQueueViewController_didScrollToUpNext) = 0;
  }

  *(a1 + v2) = a2;
  v3 = a2;
}

void sub_1002DD538(void *a1)
{
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v8 = *(v7 - 8);
  *&v9 = __chkstk_darwin().n128_u64[0];
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ([v1 isViewLoaded])
  {
    v21 = v4;
    v12 = OBJC_IVAR____TtC5Music29NowPlayingQueueViewController_updateContext;
    swift_beginAccess();
    v22 = v7;
    v13 = *&v1[v12];
    v14 = swift_allocObject();
    *(v14 + 16) = v1;
    *(v14 + 24) = a1;
    aBlock[4] = sub_10030ABFC;
    aBlock[5] = v14;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10002BC98;
    aBlock[3] = &unk_1010A5ED0;
    v15 = _Block_copy(aBlock);
    v20 = a1;
    v16 = v13;
    v17 = v1;
    static DispatchQoS.unspecified.getter();
    v23 = _swiftEmptyArrayStorage;
    sub_100309644(&qword_101183F60, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_10010FC20(&qword_101182970, &qword_100EBD250);
    sub_100020674(&qword_101183F70, &qword_101182970, &qword_100EBD250, &protocol conformance descriptor for [A]);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v15);

    (*(v21 + 8))(v6, v3);
    (*(v8 + 8))(v11, v22);
  }

  else
  {
    v18 = *&v1[OBJC_IVAR____TtC5Music29NowPlayingQueueViewController__historyResponse];
    *&v1[OBJC_IVAR____TtC5Music29NowPlayingQueueViewController__historyResponse] = a1;
  }
}

double sub_1002DD898(void *a1, void *a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  v5 = a2;
  v6 = a1;
  sub_1002F4E14(256, sub_10030AC04, v4);

  return result;
}

void sub_1002DD920()
{
  v1 = sub_1002DCC7C();
  v2 = [v1 collectionViewLayout];

  _s19CompositionalLayoutCMa();
  v3 = swift_dynamicCastClass();
  if (v3)
  {
    v4 = v3;
    v5 = *(v0 + OBJC_IVAR____TtC5Music29NowPlayingQueueViewController_upNextSectionMinY);
    sub_1002F815C(3u);
    *(v4 + OBJC_IVAR____TtCC5Music29NowPlayingQueueViewController19CompositionalLayout_upNextHeaderMaxY) = v5 + v6;
  }

  sub_1002E7054();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    v9 = *(v0 + OBJC_IVAR____TtC5Music29NowPlayingQueueViewController_upNextSectionMinY);
    [*(v0 + OBJC_IVAR____TtC5Music29NowPlayingQueueViewController____lazy_storage___collectionView) contentOffset];
    if (!(*&v8[OBJC_IVAR____TtC5Music24NowPlayingViewController_mode] >> 62))
    {
      v11 = v10;
      if (([v8 isBeingPresented] & 1) == 0)
      {
        v12 = *&v8[OBJC_IVAR____TtC5Music24NowPlayingViewController_controlsViewController];
        if (!v12)
        {
          __break(1u);
          return;
        }

        v13 = *&v12[OBJC_IVAR___MusicNowPlayingControlsViewController_artworkTopOffset];
        *&v12[OBJC_IVAR___MusicNowPlayingControlsViewController_artworkTopOffset] = v9 - v11;
        if (v9 - v11 != v13)
        {
          v14 = v12;
          sub_1001B6800();
        }
      }
    }

    swift_unknownObjectRelease();
  }
}

void sub_1002DDA94(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for IndexPath();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v24[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_10010FC20(&qword_10118ABE0, aB_11);
  __chkstk_darwin();
  v9 = &v24[-v8];
  if (*(v2 + OBJC_IVAR____TtC5Music29NowPlayingQueueViewController_sharedListeningParticipantsCount) != a1)
  {
    v24[15] = 2;
    v10 = sub_100309CC0();
    if (FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.MediaPlayer, v10))
    {
      v11 = sub_10010FC20(&qword_10118AB38, &qword_100ECC1E0);
      (*(*(v11 - 8) + 56))(v9, 1, 1, v11);
      sub_1002E802C(v9);
      sub_1000095E8(v9, &qword_10118ABE0, aB_11);
      goto LABEL_4;
    }

    v14 = *(v2 + OBJC_IVAR____TtC5Music29NowPlayingQueueViewController_dataSource);
    if (v14)
    {
      v15 = v14;
      sub_1004357B8(3u);
      v17 = v16;

      if ((v17 & 1) == 0)
      {
        v18 = sub_1002DCC7C();
        v19 = _UICollectionViewListLayoutElementKindSectionHeader;
        IndexPath.init(item:section:)();
        isa = IndexPath._bridgeToObjectiveC()().super.isa;
        (*(v5 + 8))(v7, v4);
        v13 = [v18 supplementaryViewForElementKind:v19 atIndexPath:isa];

        if (v13)
        {
          type metadata accessor for NowPlayingQueueHeaderView(0);
          v21 = swift_dynamicCastClass();
          if (!v21)
          {
            goto LABEL_5;
          }

          v22 = v21;
          v23 = v13;
          sub_1002EB08C(v22);

LABEL_4:
          v12 = sub_1002DCC7C();
          v13 = [v12 collectionViewLayout];

          [v13 invalidateLayout];
LABEL_5:
        }
      }
    }

    else
    {
      __break(1u);
    }
  }
}

double sub_1002DDD7C(unsigned __int8 a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC5Music29NowPlayingQueueViewController_currentSection);
  *(v1 + OBJC_IVAR____TtC5Music29NowPlayingQueueViewController_currentSection) = a1;
  if (v2 != a1 && !a1 && (*(v1 + OBJC_IVAR____TtC5Music29NowPlayingQueueViewController_didAppearOnce) & 1) != 0 && swift_unknownObjectWeakLoadStrong())
  {
    sub_1005E15A8(4, 1);

    swift_unknownObjectRelease();
  }

  return result;
}

id sub_1002DDE0C()
{
  sub_10010FC20(&qword_101183A90, &unk_100EBE340);
  __chkstk_darwin();
  v2 = &v26[-v1];
  v3 = [objc_allocWithZone(UIView) init];
  v4 = [v3 layer];
  v5 = objc_opt_self();
  v6 = [v5 blackColor];
  v7 = [v6 CGColor];

  [v4 setShadowColor:v7];
  v8 = [v3 layer];
  [v8 setShadowRadius:12.0];

  v9 = [v3 layer];
  LODWORD(v10) = 1050253722;
  [v9 setShadowOpacity:v10];

  v11 = [v3 layer];
  [v11 setShadowOffset:{0.0, 1.0}];

  v12 = [v3 layer];
  [v12 setMasksToBounds:0];

  v13 = [objc_opt_self() effectWithBlurRadius:24.0];
  v14 = [objc_allocWithZone(UIVisualEffectView) initWithEffect:v13];

  v15 = [v14 contentView];
  v16 = [v5 whiteColor];
  v17 = [v16 colorWithAlphaComponent:0.05];

  [v15 setBackgroundColor:v17];
  v18 = v14;
  [v18 setAutoresizingMask:18];
  v19 = [v0 traitCollection];
  sub_1001D1C24();
  sub_1001D1C78();
  UITraitCollection.subscript.getter();

  if (sub_1005C3564(v26[15]))
  {
    v20 = UIView.Corner.small.unsafeMutableAddressor();
    v21 = type metadata accessor for UIView.Corner();
    v22 = *(v21 - 8);
    (*(v22 + 16))(v2, v20, v21);
    (*(v22 + 56))(v2, 0, 1, v21);
  }

  else
  {
    v23 = type metadata accessor for UIView.Corner();
    (*(*(v23 - 8) + 56))(v2, 1, 1, v23);
  }

  UIView.corner.setter();
  v24 = [v18 layer];

  [v24 setMasksToBounds:1];
  [v3 addSubview:v18];

  return v3;
}

void sub_1002DE24C(char a1)
{
  v2 = v1;
  v3 = OBJC_IVAR____TtC5Music29NowPlayingQueueViewController_needsEmptyState;
  if (v1[OBJC_IVAR____TtC5Music29NowPlayingQueueViewController_needsEmptyState] == (a1 & 1))
  {
    v8 = sub_1002DEF54();
    v9 = [v8 attributedText];

    v10 = sub_1002DEB20();
    v11.super.isa = sub_1002DE42C(v10).super.isa;
    isa = v11.super.isa;
    if (v9)
    {
      sub_100009F78(0, &unk_101189D70, NSAttributedString_ptr);
      v13 = static NSObject.== infix(_:_:)();

      if (v13)
      {
        return;
      }
    }

    else
    {
    }

    if (v2[v3] == 1)
    {

      sub_1002E555C(1);
    }
  }

  else
  {
    v4 = sub_1002DCC7C();
    v5 = [v4 collectionViewLayout];

    [v5 invalidateLayout];
    if (v2[v3] == 1)
    {
      sub_1002E555C(1);
      v6 = [v2 view];
      if (!v6)
      {
        __break(1u);
        return;
      }

      v7 = v6;
      v14 = sub_1002DEF54();
      [v7 addSubview:v14];
    }

    else
    {
      v14 = sub_1002DEF54();
      [v14 removeFromSuperview];
    }
  }
}

NSAttributedString sub_1002DE42C(char a1)
{
  if (!a1)
  {
    sub_100009F78(0, &unk_101189D70, NSAttributedString_ptr);
    v11 = sub_1002DE968(0);
    v33 = v12;
    v34 = v11;
    sub_10010FC20(&qword_10119FB30, &unk_100EBC740);
    inited = swift_initStackObject();
    v32 = xmmword_100EBC6B0;
    *(inited + 16) = xmmword_100EBC6B0;
    *(inited + 32) = NSFontAttributeName;
    v14 = objc_opt_self();
    v5 = NSFontAttributeName;
    v15 = [v14 preferredFontForTextStyle:UIFontTextStyleBody];
    v7 = sub_100009F78(0, &qword_101183A00, UIFont_ptr);
    *(inited + 64) = v7;
    *(inited + 40) = v15;
    v8 = sub_10010BA14(inited);
    swift_setDeallocating();
    sub_1000095E8(inited + 32, &qword_101180420, &unk_100EDEFD0);
    v16 = String._bridgeToObjectiveC()();
    v10 = [objc_opt_self() systemImageNamed:v16];

    goto LABEL_5;
  }

  if (a1 == 1)
  {
    sub_100009F78(0, &unk_101189D70, NSAttributedString_ptr);
    v1 = sub_1002DE968(1);
    v33 = v2;
    v34 = v1;
    sub_10010FC20(&qword_10119FB30, &unk_100EBC740);
    v3 = swift_initStackObject();
    v32 = xmmword_100EBC6B0;
    *(v3 + 16) = xmmword_100EBC6B0;
    *(v3 + 32) = NSFontAttributeName;
    v4 = objc_opt_self();
    v5 = NSFontAttributeName;
    v6 = [v4 preferredFontForTextStyle:UIFontTextStyleBody];
    v7 = sub_100009F78(0, &qword_101183A00, UIFont_ptr);
    *(v3 + 64) = v7;
    *(v3 + 40) = v6;
    v8 = sub_10010BA14(v3);
    swift_setDeallocating();
    sub_1000095E8(v3 + 32, &qword_101180420, &unk_100EDEFD0);
    v9 = String._bridgeToObjectiveC()();
    v10 = [objc_opt_self() systemImageNamed:v9];

LABEL_5:
    v17 = swift_initStackObject();
    *(v17 + 16) = v32;
    *(v17 + 32) = v5;
    v18 = static UIFont.preferredFont(forTextStyle:weight:)();
    *(v17 + 64) = v7;
    *(v17 + 40) = v18;
    v19 = sub_10010BA14(v17);
    swift_setDeallocating();
    sub_1000095E8(v17 + 32, &qword_101180420, &unk_100EDEFD0);
    v20._countAndFlagsBits = 0x6C6F626D79737B7BLL;
    v21._object = v33;
    v21._countAndFlagsBits = v34;
    v20._object = 0xEA00000000007D7DLL;
    v35.value.super.isa = v10;
    v35.is_nil = v19;
    return NSAttributedString.init(string:attributes:replacingPlaceholder:withImage:imageAttributes:)(v21, v8, v20, v35, v22);
  }

  sub_1002DE968(2);
  sub_10010FC20(&qword_10119FB30, &unk_100EBC740);
  v24 = swift_initStackObject();
  *(v24 + 16) = xmmword_100EBC6B0;
  *(v24 + 32) = NSFontAttributeName;
  v25 = objc_opt_self();
  v26 = NSFontAttributeName;
  v27 = [v25 preferredFontForTextStyle:UIFontTextStyleBody];
  *(v24 + 64) = sub_100009F78(0, &qword_101183A00, UIFont_ptr);
  *(v24 + 40) = v27;
  sub_10010BA14(v24);
  swift_setDeallocating();
  sub_1000095E8(v24 + 32, &qword_101180420, &unk_100EDEFD0);
  v28 = objc_allocWithZone(NSAttributedString);
  v29 = String._bridgeToObjectiveC()();

  type metadata accessor for Key(0);
  sub_100309644(&qword_10118AC30, type metadata accessor for Key, &unk_100EBC428);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v31 = [v28 initWithString:v29 attributes:isa];

  return v31;
}

uint64_t sub_1002DE968(char a1)
{
  type metadata accessor for Locale();
  __chkstk_darwin();
  type metadata accessor for String.LocalizationValue();
  __chkstk_darwin();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  return String.init(localized:table:bundle:locale:comment:)();
}

uint64_t sub_1002DEB20()
{
  v1 = type metadata accessor for IndexPath();
  v2 = *(v1 - 8);
  __chkstk_darwin();
  v4 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v5 = __chkstk_darwin().n128_u64[0];
  v7 = &v26 - v6;
  v8 = OBJC_IVAR____TtC5Music29NowPlayingQueueViewController__playerResponse;
  v9 = *(v0 + OBJC_IVAR____TtC5Music29NowPlayingQueueViewController__playerResponse);
  if (!v9)
  {
    return 2;
  }

  v10 = [v9 tracklist];
  if (v10)
  {
    v11 = v10;
    if ([v10 actionAtQueueEnd] == 3)
    {
    }

    else
    {
      v12 = sub_1002DEE20();

      if (v12)
      {
        return 0;
      }
    }
  }

  v14 = *(v0 + v8);
  if (!v14)
  {
    return 2;
  }

  v15 = [v14 tracklist];
  if (!v15)
  {
    return 2;
  }

  v16 = v15;
  v17 = [v15 playingItemIndexPath];
  if (!v17)
  {
    goto LABEL_17;
  }

  v18 = v17;
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();

  (*(v2 + 32))(v7, v4, v1);
  v19 = [v16 items];
  v20 = [v19 sectionAtIndex:IndexPath.section.getter()];

  v21 = [v20 metadataObject];
  if (!v21 || (v22 = [v21 flattenedGenericObject], v21, !v22) || (v23 = objc_msgSend(v22, "anyObject"), v22, !v23))
  {
    (*(v2 + 8))(v7, v1);
LABEL_17:

    return 2;
  }

  objc_opt_self();
  v24 = swift_dynamicCastObjCClass();
  if (v24)
  {
    v25 = [v24 subtype];

    (*(v2 + 8))(v7, v1);
    if (v25 != 1)
    {
      return 1;
    }
  }

  else
  {

    (*(v2 + 8))(v7, v1);
  }

  return 2;
}

BOOL sub_1002DEE20()
{
  v1 = [v0 actionAtQueueEndCommand];
  result = 0;
  if (v1)
  {
    v2 = [v1 supportedActions];
    sub_100009F78(0, &qword_101189A20, NSNumber_ptr);
    v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v4 = [objc_allocWithZone(NSNumber) initWithInteger:3];
    v8 = v4;
    __chkstk_darwin();
    v7[2] = &v8;
    v5 = sub_10044AC40(sub_10030AA00, v7, v3);

    swift_unknownObjectRelease();

    if (v5)
    {
      return 1;
    }
  }

  return result;
}

id sub_1002DEF54()
{
  v1 = OBJC_IVAR____TtC5Music29NowPlayingQueueViewController____lazy_storage___emptyStateLabel;
  v2 = *(v0 + OBJC_IVAR____TtC5Music29NowPlayingQueueViewController____lazy_storage___emptyStateLabel);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC5Music29NowPlayingQueueViewController____lazy_storage___emptyStateLabel);
  }

  else
  {
    v4 = [objc_allocWithZone(UILabel) init];
    v5 = v0;
    v6 = sub_1002DEB20();
    isa = sub_1002DE42C(v6).super.isa;
    [v4 setAttributedText:isa];

    v8 = v4;
    v9 = sub_1002DEB20();
    v19 = sub_1002DE968(v9);
    v20 = v10;
    v18 = sub_100009838();
    StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();

    v11 = String._bridgeToObjectiveC()();

    [v8 setAccessibilityLabel:{v11, &type metadata for String, v18, v18, v18, 0, 0xE000000000000000, 0x6C6F626D79737B7BLL, 0xEA00000000007D7DLL, v19, v20}];

    [v8 setNumberOfLines:0];
    v12 = [objc_opt_self() whiteColor];
    v13 = [v12 colorWithAlphaComponent:0.45];

    [v8 setTextColor:v13];
    v14 = [v8 layer];
    [v14 setCompositingFilter:kCAFilterPlusL];

    [v8 setTextAlignment:1];
    v15 = *(v5 + v1);
    *(v5 + v1) = v8;
    v3 = v8;

    v2 = 0;
  }

  v16 = v2;
  return v3;
}

char *sub_1002DF180(void *a1)
{
  v2 = v1;
  sub_100432704(&v1[OBJC_IVAR____TtC5Music29NowPlayingQueueViewController_updateContext]);
  v4 = OBJC_IVAR____TtC5Music29NowPlayingQueueViewController_prefetchingController;
  *&v1[v4] = [objc_allocWithZone(type metadata accessor for old_ArtworkPrefetchingController()) init];
  *&v1[OBJC_IVAR____TtC5Music29NowPlayingQueueViewController____lazy_storage___collectionView] = 0;
  *&v1[OBJC_IVAR____TtC5Music29NowPlayingQueueViewController_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v1[OBJC_IVAR____TtC5Music29NowPlayingQueueViewController_bottomContentInset] = 0;
  *&v1[OBJC_IVAR____TtC5Music29NowPlayingQueueViewController_playerResponseSubscription] = 0;
  v5 = OBJC_IVAR____TtC5Music29NowPlayingQueueViewController__playerResponse;
  if (qword_10117F5F8 != -1)
  {
    swift_once();
  }

  v6 = qword_101218AC8;
  *&v1[v5] = (*(*qword_101218AC8 + 432))();
  v7 = OBJC_IVAR____TtC5Music29NowPlayingQueueViewController_historyRequestController;
  *&v2[v7] = [objc_allocWithZone(MPRequestResponseController) init];
  *&v2[OBJC_IVAR____TtC5Music29NowPlayingQueueViewController__historyResponse] = 0;
  *&v2[OBJC_IVAR____TtC5Music29NowPlayingQueueViewController_dataSource] = 0;
  *&v2[OBJC_IVAR____TtC5Music29NowPlayingQueueViewController_bindings] = _swiftEmptyArrayStorage;
  *&v2[OBJC_IVAR____TtC5Music29NowPlayingQueueViewController_useListeningHistoryObserver] = 0;
  *&v2[OBJC_IVAR____TtC5Music29NowPlayingQueueViewController_sharedListeningCancellable] = 0;
  *&v2[OBJC_IVAR____TtC5Music29NowPlayingQueueViewController_applicationCapabilitiesSubscription] = 0;
  *&v2[OBJC_IVAR____TtC5Music29NowPlayingQueueViewController_headerSizingView] = 0;
  *&v2[OBJC_IVAR____TtC5Music29NowPlayingQueueViewController_autoPlayHeaderSizingView] = 0;
  *&v2[OBJC_IVAR____TtC5Music29NowPlayingQueueViewController_dragDropController] = 0;
  *&v2[OBJC_IVAR____TtC5Music29NowPlayingQueueViewController_upNextSectionMinY] = 0;
  *&v2[OBJC_IVAR____TtC5Music29NowPlayingQueueViewController_sharedListeningParticipantsCount] = 0;
  v2[OBJC_IVAR____TtC5Music29NowPlayingQueueViewController_didAppearOnce] = 0;
  v2[OBJC_IVAR____TtC5Music29NowPlayingQueueViewController_didScrollToUpNext] = 0;
  v8 = &v2[OBJC_IVAR____TtC5Music29NowPlayingQueueViewController_previousContentSize];
  *v8 = 0;
  v8[1] = 0;
  v9 = OBJC_IVAR____TtC5Music29NowPlayingQueueViewController_feedbackGenerator;
  *&v2[v9] = [objc_allocWithZone(UIImpactFeedbackGenerator) initWithStyle:3];
  v2[OBJC_IVAR____TtC5Music29NowPlayingQueueViewController_currentSection] = 3;
  v2[OBJC_IVAR____TtC5Music29NowPlayingQueueViewController_wantsPlayingItemHeader] = 0;
  v2[OBJC_IVAR____TtC5Music29NowPlayingQueueViewController_needsEmptyState] = 0;
  *&v2[OBJC_IVAR____TtC5Music29NowPlayingQueueViewController____lazy_storage___emptyStateLabel] = 0;
  v10 = &v2[OBJC_IVAR____TtC5Music29NowPlayingQueueViewController__hasSeenSharedListeningQueueItemRemoveAlert];
  v47 = 2;
  v46[0] = 0xD00000000000002ALL;
  v46[1] = 0x8000000100E45B00;
  v11 = [objc_opt_self() standardUserDefaults];
  v12 = sub_100009838();
  UserDefault.init(wrappedValue:defaults:key:)(&v47, v11, v46, &type metadata for String, &type metadata for Bool, v12, &v42);
  v13 = v43;
  v14 = v44;
  *v10 = v42;
  *(v10 + 2) = v13;
  v10[24] = v14;
  v15 = &v2[OBJC_IVAR____TtC5Music29NowPlayingQueueViewController_lastSeenBounds];
  *v15 = 0u;
  v15[1] = 0u;
  v16 = &v2[OBJC_IVAR____TtC5Music29NowPlayingQueueViewController_initialDraggingOffset];
  *v16 = 0;
  v16[1] = 0;
  v2[OBJC_IVAR____TtC5Music29NowPlayingQueueViewController_shouldPlayHapticFeedback] = 0;
  v17 = &v2[OBJC_IVAR____TtC5Music29NowPlayingQueueViewController_onEndContextMenuInteraction];
  *v17 = 0;
  v17[1] = 0;
  v2[OBJC_IVAR____TtC5Music29NowPlayingQueueViewController_canPresentTooltip] = 1;
  v18 = type metadata accessor for NowPlayingQueueViewController(0);
  v45.receiver = v2;
  v45.super_class = v18;
  v19 = objc_msgSendSuper2(&v45, "initWithNibName:bundle:", 0, 0);
  v20 = a1;
  v21 = v19;
  sub_1002DD040(a1);
  sub_100009F78(0, &unk_10118A270, MPModelPlaylist_ptr);
  sub_100305FB0();
  v23 = v22;
  v24 = [objc_allocWithZone(MPModelShimRequest) init];
  v25 = [objc_allocWithZone(MPModelLibraryRequest) init];
  v26 = String._bridgeToObjectiveC()();
  [v25 setLabel:v26];

  sub_100009F78(0, &qword_101183F80, MPMediaLibrary_ptr);
  v27 = static MPMediaLibrary.device.getter();
  [v25 setMediaLibrary:v27];

  v28 = static MPModelPlaylist.defaultMusicKind.getter();
  v29 = [v28 playlistEntryKind];

  [v25 setItemKind:v29];
  v30 = sub_100020BA8(4u);
  [v25 setItemProperties:v30];

  sub_10010FC20(&qword_101183990, &qword_100EBC750);
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_100EBC6C0;
  *(v31 + 32) = v23;
  sub_100009F78(0, &unk_101186F00, MPModelObject_ptr);
  v32 = v23;
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v25 setScopedContainers:isa];

  [v24 setModelRequest:v25];
  v34 = OBJC_IVAR____TtC5Music29NowPlayingQueueViewController_historyRequestController;
  v35 = *&v21[OBJC_IVAR____TtC5Music29NowPlayingQueueViewController_historyRequestController];
  [v35 setDelegate:v21];

  [*&v21[v34] setRequest:v24];
  Playing = MPCPlayerRequestTracklistRange.upNextPlayingItems.unsafeMutableAddressor();
  v37 = *Playing;
  v38 = Playing[1];
  v39 = (*(*v6 + 752))(&v42);
  v40.reverseCount = v37;
  v40.forwardCount = v38;
  Player.NowPlayingConfiguration.insert(_:)(v40);
  v39(&v42, 0);

  return v21;
}

id sub_1002DF7A8(uint64_t a1)
{
  v2 = v1;
  if (qword_10117F5F8 != -1)
  {
    swift_once();
  }

  v3 = qword_101218AC8;
  Playing = MPCPlayerRequestTracklistRange.upNextPlayingItems.unsafeMutableAddressor();
  v5 = *Playing;
  v6 = Playing[1];
  v7 = (*(*v3 + 752))(v11);
  v8.reverseCount = v5;
  v8.forwardCount = v6;
  Player.NowPlayingConfiguration.remove(_:)(v8);
  v7(v11, 0);
  v10.receiver = v2;
  v10.super_class = type metadata accessor for NowPlayingQueueViewController(0);
  return objc_msgSendSuper2(&v10, "dealloc");
}

void sub_1002DFB44()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_10010FC20(&unk_101183D80, &qword_100EC5830);
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v152 - v5;
  v7 = sub_10010FC20(&qword_101189DE0, &qword_100EBD2B0);
  v8 = *(v7 - 8);
  __chkstk_darwin();
  v10 = &v152 - v9;
  *&v174 = sub_10010FC20(&unk_10118AC90, &unk_100EC5810);
  v173 = *(v174 - 8);
  __chkstk_darwin();
  v172 = &v152 - v11;
  sub_10010FC20(&qword_101182140, &unk_100EBD2A0);
  __chkstk_darwin();
  *&v175 = &v152 - v12;
  v168 = sub_10010FC20(&qword_1011897D0, &qword_100EC9750);
  v167 = *(v168 - 8);
  __chkstk_darwin();
  v166 = &v152 - v13;
  v171 = sub_10010FC20(&qword_101182BA8, &qword_100EBE590);
  v170 = *(v171 - 8);
  __chkstk_darwin();
  v169 = &v152 - v14;
  v165 = type metadata accessor for DispatchWorkItemFlags();
  v164 = *(v165 - 1);
  __chkstk_darwin();
  v162 = &v152 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v163 = type metadata accessor for DispatchQoS();
  v161 = *(v163 - 8);
  __chkstk_darwin();
  v160 = &v152 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for NowPlayingQueueViewController(0);
  v183.receiver = v0;
  v183.super_class = v17;
  objc_msgSendSuper2(&v183, "viewDidLoad");
  v18 = [v0 view];
  if (!v18)
  {
    __break(1u);
    goto LABEL_27;
  }

  v19 = v18;
  v155 = v6;
  v156 = v4;
  v157 = v3;
  v158 = v10;
  v159 = v8;
  v20 = [v18 layer];

  [v20 setAllowsGroupBlending:0];
  v21 = [v1 view];
  if (!v21)
  {
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v22 = v21;
  v23 = [v21 layer];

  [v23 setAllowsGroupOpacity:0];
  sub_1002F815C(0);
  v24 = [v1 traitCollection];
  v25 = [v24 userInterfaceIdiom];

  v1[OBJC_IVAR____TtC5Music29NowPlayingQueueViewController_wantsPlayingItemHeader] = v25 != 6;
  v26 = OBJC_IVAR____TtC5Music29NowPlayingQueueViewController_prefetchingController;
  v27 = *&v1[OBJC_IVAR____TtC5Music29NowPlayingQueueViewController_prefetchingController];
  v28 = &v27[OBJC_IVAR____TtC5Music32old_ArtworkPrefetchingController_defaultCatalogMetricsProviding];
  v29 = *&v27[OBJC_IVAR____TtC5Music32old_ArtworkPrefetchingController_defaultCatalogMetricsProviding];
  v30 = *&v27[OBJC_IVAR____TtC5Music32old_ArtworkPrefetchingController_defaultCatalogMetricsProviding + 8];
  *v28 = sub_1002E16E4;
  v28[1] = 0;
  v31 = v27;
  sub_100020438(v29, v30);

  v32 = *&v1[v26];
  v33 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v34 = &v32[OBJC_IVAR____TtC5Music32old_ArtworkPrefetchingController_catalogProviding];
  v35 = *&v32[OBJC_IVAR____TtC5Music32old_ArtworkPrefetchingController_catalogProviding];
  v36 = *&v32[OBJC_IVAR____TtC5Music32old_ArtworkPrefetchingController_catalogProviding + 8];
  *v34 = sub_10030AC68;
  v34[1] = v33;
  v37 = v32;

  sub_100020438(v35, v36);

  v38 = sub_1002DCC7C();
  [v38 setPrefetchDataSource:*&v1[v26]];

  sub_1002EF478();
  v39 = OBJC_IVAR____TtC5Music29NowPlayingQueueViewController____lazy_storage___collectionView;
  v40 = [*&v1[OBJC_IVAR____TtC5Music29NowPlayingQueueViewController____lazy_storage___collectionView] collectionViewLayout];
  _s19CompositionalLayoutCMa();
  v41 = swift_dynamicCastClass();
  if (v41)
  {
    v42 = *&v1[OBJC_IVAR____TtC5Music29NowPlayingQueueViewController_dataSource];
    v43 = *(v41 + OBJC_IVAR____TtCC5Music29NowPlayingQueueViewController19CompositionalLayout_dataSource);
    *(v41 + OBJC_IVAR____TtCC5Music29NowPlayingQueueViewController19CompositionalLayout_dataSource) = v42;
    v44 = v42;

    v40 = v43;
  }

  [*&v1[v39] setDelegate:v1];
  [*&v1[v39] setAllowsFocus:1];
  [*&v1[v39] setRemembersLastFocusedIndexPath:1];
  v45 = *&v1[v39];
  v46 = [v1 view];
  if (!v46)
  {
    goto LABEL_28;
  }

  v47 = v46;
  v153 = v7;
  v154 = ObjectType;
  [v46 frame];
  v49 = v48;
  v51 = v50;
  v53 = v52;
  v55 = v54;

  [v45 setFrame:{v49, v51, v53, v55}];
  [*&v1[v39] setAutoresizingMask:18];
  v56 = *&v1[v39];
  v57 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v58 = &v56[OBJC_IVAR____TtCC5Music29NowPlayingQueueViewController14CollectionView_shouldRecognizePanGestureBlock];
  v59 = *&v56[OBJC_IVAR____TtCC5Music29NowPlayingQueueViewController14CollectionView_shouldRecognizePanGestureBlock];
  v60 = *&v56[OBJC_IVAR____TtCC5Music29NowPlayingQueueViewController14CollectionView_shouldRecognizePanGestureBlock + 8];
  *v58 = sub_10030AC70;
  v58[1] = v57;

  v61 = v56;
  sub_100020438(v59, v60);

  v62 = [v1 view];
  if (!v62)
  {
LABEL_29:
    __break(1u);
    return;
  }

  v63 = v62;
  [v62 addSubview:*&v1[v39]];

  v64 = *&v1[v39];
  type metadata accessor for NowPlayingQueueHeaderView(0);
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v65 = v64;
  static UICollectionReusableView.reuseIdentifier.getter();
  UICollectionView.register<A>(_:ofKind:reuseIdentifier:)();

  v66 = *&v1[v39];
  type metadata accessor for NowPlayingAutoPlayHeaderView();
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v67 = v66;
  static UICollectionReusableView.reuseIdentifier.getter();
  UICollectionView.register<A>(_:ofKind:reuseIdentifier:)();

  v68 = *&v1[v39];
  type metadata accessor for NowPlayingHistoryHeaderView();
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v69 = v68;
  static UICollectionReusableView.reuseIdentifier.getter();
  UICollectionView.register<A>(_:ofKind:reuseIdentifier:)();

  v70 = *&v1[v39];
  _s17PlayingHeaderViewCMa();
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v71 = v70;
  UICollectionView.register<A>(_:ofKind:reuseIdentifier:)();

  v72 = *&v1[v39];
  type metadata accessor for NowPlayingQueueControlsView();
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v73 = v72;
  UICollectionView.register<A>(_:ofKind:reuseIdentifier:)();

  v74 = *&v1[v39];
  _s25NowPlayingQueueFooterViewCMa();
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v75 = v74;
  UICollectionView.register<A>(_:ofKind:reuseIdentifier:)();

  v76 = *&v1[v39];
  type metadata accessor for NowPlayingQueueRemainingSongsCell();
  v77 = v76;
  static UICollectionReusableView.reuseIdentifier.getter();
  UICollectionView.register<A>(_:reuseIdentifier:)();

  v78 = *&v1[v39];
  type metadata accessor for NowPlayingQueueAddCell();
  v79 = v78;
  static UICollectionReusableView.reuseIdentifier.getter();
  UICollectionView.register<A>(_:reuseIdentifier:)();

  v80 = *&v1[v39];
  type metadata accessor for NowPlayingQueueRepeatCell();
  v81 = v80;
  static UICollectionReusableView.reuseIdentifier.getter();
  UICollectionView.register<A>(_:reuseIdentifier:)();

  v82 = *&v1[v39];
  type metadata accessor for NowPlayingQueueCell(0);
  v83 = v82;
  static UICollectionReusableView.reuseIdentifier.getter();
  UICollectionView.register<A>(_:reuseIdentifier:)();

  v84 = *&v1[v39];
  v85 = objc_allocWithZone(UILongPressGestureRecognizer);
  v86 = v84;
  v87 = [v85 initWithTarget:v1 action:"handleLongPress:"];
  [v86 addGestureRecognizer:v87];

  v88 = *&v1[v39];
  v89 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v90 = &v88[OBJC_IVAR____TtCC5Music29NowPlayingQueueViewController14CollectionView_interactiveMovementDidBeginBlock];
  v91 = *&v88[OBJC_IVAR____TtCC5Music29NowPlayingQueueViewController14CollectionView_interactiveMovementDidBeginBlock];
  v92 = *&v88[OBJC_IVAR____TtCC5Music29NowPlayingQueueViewController14CollectionView_interactiveMovementDidBeginBlock + 8];
  *v90 = sub_10030AC78;
  v90[1] = v89;
  v93 = v88;

  sub_100020438(v91, v92);

  v94 = *&v1[v39];
  v95 = swift_allocObject();
  swift_unknownObjectWeakInit();
  type metadata accessor for CollectionViewDragDropController(0);
  v96 = swift_allocObject();
  *(v96 + 24) = 0u;
  *(v96 + 40) = 0u;
  *(v96 + 56) = 0u;
  *(v96 + 72) = 0u;
  *(v96 + 88) = 1;
  *(v96 + 96) = 0;
  v97 = OBJC_IVAR____TtC5Music32CollectionViewDragDropController_activeDropContext;
  v98 = type metadata accessor for CollectionViewDragDropController.DropContext(0);
  (*(*(v98 - 8) + 56))(v96 + v97, 1, 1, v98);
  *(v96 + OBJC_IVAR____TtC5Music32CollectionViewDragDropController_dragDelegate) = 0;
  *(v96 + OBJC_IVAR____TtC5Music32CollectionViewDragDropController_dropDelegate) = 0;
  *(v96 + 16) = v94;
  *(v96 + 24) = 0;
  *(v96 + 32) = 0;
  *(v96 + 40) = sub_10030AC80;
  v99 = *(v96 + 56);
  v100 = *(v96 + 64);
  *(v96 + 64) = 0;
  *(v96 + 48) = v95;
  *(v96 + 56) = 0;
  v101 = v94;
  swift_retain_n();
  sub_100020438(v99, v100);
  v102 = *(v96 + 72);
  v103 = *(v96 + 80);
  *(v96 + 72) = 0;
  *(v96 + 80) = 0;
  sub_100020438(v102, v103);
  sub_100321DD8();
  sub_100322048();

  *&v1[OBJC_IVAR____TtC5Music29NowPlayingQueueViewController_dragDropController] = v96;

  v104 = OBJC_IVAR____TtC5Music29NowPlayingQueueViewController_updateContext;
  swift_beginAccess();
  v105 = *&v1[v104];
  v106 = swift_allocObject();
  *(v106 + 16) = v1;
  v181 = sub_10030AC88;
  v182 = v106;
  aBlock = _NSConcreteStackBlock;
  v178 = 1107296256;
  v179 = sub_10002BC98;
  v180 = &unk_1010A6010;
  v107 = _Block_copy(&aBlock);
  v108 = v105;
  v109 = v1;
  v110 = v160;
  static DispatchQoS.unspecified.getter();
  v176 = _swiftEmptyArrayStorage;
  sub_100309644(&qword_101183F60, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10010FC20(&qword_101182970, &qword_100EBD250);
  sub_100020674(&qword_101183F70, &qword_101182970, &qword_100EBD250, &protocol conformance descriptor for [A]);
  v111 = v162;
  v112 = v165;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v107);

  (*(v164 + 8))(v111, v112);
  (*(v161 + 8))(v110, v163);

  [v109 setViewRespectsSystemMinimumLayoutMargins:0];
  type metadata accessor for Whitetail.Binding();
  v113 = *&v1[v39];
  KeyPath = swift_getKeyPath();
  v180 = sub_10010FC20(&unk_10118ACA0, &unk_100EC6650);
  v181 = &protocol witness table for KeyValueObservationTrigger<A, B>;
  aBlock = v113;
  v178 = KeyPath;
  v115 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v116 = v113;
  Whitetail.Binding.__allocating_init(_:needsInitialConfiguration:configurationBlock:)(&aBlock, 1, sub_10030ACC4, v115);
  v117 = OBJC_IVAR____TtC5Music29NowPlayingQueueViewController_bindings;
  swift_beginAccess();
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((*&v109[v117] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v109[v117] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  swift_endAccess();
  v118 = *ApplicationCapabilities.NotificationNames.subscriptionCapabilitiesDidChange.unsafeMutableAddressor();
  v119 = swift_allocObject();
  swift_unknownObjectWeakInit();
  Whitetail.Binding.__allocating_init(_:needsInitialConfiguration:configurationBlock:)(v118, 0, sub_10030ACCC, v119);
  swift_beginAccess();
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((*&v109[v117] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v109[v117] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  swift_endAccess();
  if (qword_10117F208 != -1)
  {
    swift_once();
  }

  v120 = qword_101218648;
  v121 = swift_allocObject();
  swift_unknownObjectWeakInit();
  Whitetail.Binding.__allocating_init(_:needsInitialConfiguration:configurationBlock:)(v120, 0, sub_10030ACD4, v121);
  swift_beginAccess();
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((*&v109[v117] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v109[v117] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  swift_endAccess();
  if (qword_10117FCC8 != -1)
  {
    swift_once();
  }

  v122 = qword_101219538;
  v123 = swift_allocObject();
  swift_unknownObjectWeakInit();
  Whitetail.Binding.__allocating_init(_:needsInitialConfiguration:configurationBlock:)(v122, 0, sub_10030B054, v123);
  swift_beginAccess();
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((*&v109[v117] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v109[v117] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  swift_endAccess();
  LOBYTE(aBlock) = 3;
  v124 = sub_100025CE0();
  if (FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.Music, v124))
  {
    v125 = MPPlaybackUserDefaultsPrivateListeningEnabledDidChangeNotification;
    v126 = swift_allocObject();
    swift_unknownObjectWeakInit();
    type metadata accessor for NotificationObserver();
    swift_allocObject();
    *&v109[OBJC_IVAR____TtC5Music29NowPlayingQueueViewController_useListeningHistoryObserver] = NotificationObserver.init(name:object:dispatchOnMainThread:usesLocalNotificationCenter:handler:)(v125, 0, 1, 0, sub_10030AD08, v126);
  }

  ApplicationCapabilities.Controller.shared.unsafeMutableAddressor();

  v127 = v166;
  ApplicationCapabilities.Controller.$capabilities.getter();

  sub_100009F78(0, &qword_101182960, OS_dispatch_queue_ptr);
  v128 = static OS_dispatch_queue.main.getter();
  aBlock = v128;
  v129 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  v130 = *(v129 - 8);
  v131 = v175;
  v165 = *(v130 + 56);
  v164 = v130 + 56;
  (v165)(v175, 1, 1, v129);
  sub_100020674(&qword_101182BB0, &qword_1011897D0, &qword_100EC9750, &protocol conformance descriptor for Published<A>.Publisher);
  sub_1000206BC();
  v132 = v169;
  v133 = v168;
  Publisher.receive<A>(on:options:)();
  sub_1000095E8(v131, &qword_101182140, &unk_100EBD2A0);

  (*(v167 + 8))(v127, v133);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_100020674(&qword_101182BB8, &qword_101182BA8, &qword_100EBE590, &protocol conformance descriptor for Publishers.ReceiveOn<A, B>);
  v134 = v171;
  v135 = Publisher<>.sink(receiveValue:)();

  (*(v170 + 8))(v132, v134);
  *&v109[OBJC_IVAR____TtC5Music29NowPlayingQueueViewController_applicationCapabilitiesSubscription] = v135;

  if (qword_10117F600 != -1)
  {
    swift_once();
  }

  v136 = v172;
  GroupActivitiesManager.$participantsCount.getter();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_100020674(&unk_10118ACB0, &unk_10118AC90, &unk_100EC5810, &protocol conformance descriptor for Published<A>.Publisher);
  v137 = v174;
  v138 = Publisher<>.sink(receiveValue:)();

  (*(v173 + 8))(v136, v137);
  *&v109[OBJC_IVAR____TtC5Music29NowPlayingQueueViewController_sharedListeningCancellable] = v138;

  if (qword_10117F5F8 != -1)
  {
    swift_once();
  }

  v139 = v155;
  (*(*qword_101218AC8 + 456))();
  v140 = static OS_dispatch_queue.main.getter();
  aBlock = v140;
  v141 = v175;
  (v165)(v175, 1, 1, v129);
  sub_100020674(&unk_1011A4650, &unk_101183D80, &qword_100EC5830, &protocol conformance descriptor for Published<A>.Publisher);
  v142 = v158;
  v143 = v157;
  Publisher.receive<A>(on:options:)();
  sub_1000095E8(v141, &qword_101182140, &unk_100EBD2A0);

  (*(v156 + 8))(v139, v143);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_100020674(&unk_10118ACC0, &qword_101189DE0, &qword_100EBD2B0, &protocol conformance descriptor for Publishers.ReceiveOn<A, B>);
  v144 = v153;
  v145 = Publisher<>.sink(receiveValue:)();

  (*(v159 + 8))(v142, v144);
  *&v109[OBJC_IVAR____TtC5Music29NowPlayingQueueViewController_playerResponseSubscription] = v145;

  [*&v109[OBJC_IVAR____TtC5Music29NowPlayingQueueViewController_historyRequestController] beginAutomaticResponseLoading];
  sub_10010FC20(&unk_101182D80, "ʫ\n");
  v146 = swift_allocObject();
  v175 = xmmword_100EBC6B0;
  *(v146 + 16) = xmmword_100EBC6B0;
  *(v146 + 32) = type metadata accessor for UITraitPreferredContentSizeCategory();
  *(v146 + 40) = &protocol witness table for UITraitPreferredContentSizeCategory;
  UIViewController.registerForTraitChanges<A>(_:handler:)();
  swift_unknownObjectRelease();

  v147 = swift_allocObject();
  v174 = xmmword_100EBDC20;
  *(v147 + 16) = xmmword_100EBDC20;
  *(v147 + 32) = type metadata accessor for UITraitAccessibilityContrast();
  *(v147 + 40) = &protocol witness table for UITraitAccessibilityContrast;
  v148 = sub_1001D1C24();
  *(v147 + 48) = &type metadata for NowPlayingLayoutTypeTrait;
  *(v147 + 56) = v148;
  UIViewController.registerForTraitChanges<A>(_:handler:)();
  swift_unknownObjectRelease();

  v149 = swift_allocObject();
  *(v149 + 16) = v174;
  v150 = sub_100050078();
  *(v149 + 32) = &type metadata for HasAnimatedBackgroundTrait;
  *(v149 + 40) = v150;
  *(v149 + 48) = &type metadata for NowPlayingLayoutTypeTrait;
  *(v149 + 56) = v148;
  UIViewController.registerForTraitChanges<A>(_:handler:)();
  swift_unknownObjectRelease();

  v151 = swift_allocObject();
  *(v151 + 16) = v175;
  *(v151 + 32) = &type metadata for NowPlayingLayoutTypeTrait;
  *(v151 + 40) = v148;
  UIViewController.registerForTraitChanges<A>(_:handler:)();
  swift_unknownObjectRelease();
}

double sub_1002E16E4(int a1, id a2)
{
  v2 = a2;
  if (qword_10117F850 != -1)
  {
    swift_once();
    v2 = a2;
  }

  v3 = *&qword_101218F38;
  v4 = [v2 traitCollection];
  [v4 displayScale];

  return v3;
}

char *sub_1002E1788(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_10010FC20(&unk_10118AAF0, &qword_100EC6458);
  __chkstk_darwin();
  v4 = &v13 - v3;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v6 = result;
    v7 = *&result[OBJC_IVAR____TtC5Music29NowPlayingQueueViewController_dataSource];
    if (v7)
    {
      v8 = v7;
      dispatch thunk of UICollectionViewDiffableDataSource.itemIdentifier(for:)();

      v9 = _s23QueueSnapshotIdentifierOMa(0);
      if ((*(*(v9 - 8) + 48))(v4, 1, v9) == 1)
      {

        sub_1000095E8(v4, &unk_10118AAF0, &qword_100EC6458);
      }

      else
      {
        v10 = sub_1004329EC();
        sub_10030AD48(v4, _s23QueueSnapshotIdentifierOMa);
        if (v10)
        {
          objc_opt_self();
          v11 = swift_dynamicCastObjCClass();
          if (v11)
          {
            v12 = [v11 artworkCatalog];

            return v12;
          }
        }

        else
        {
        }
      }

      return 0;
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

void sub_1002E1944(uint64_t a1, CGFloat a2, CGFloat a3)
{
  v5 = type metadata accessor for IndexPath();
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10010FC20(&qword_10118AB38, &qword_100ECC1E0);
  v10 = *(v9 - 8);
  __chkstk_darwin();
  v12 = &v46 - v11;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v14 = Strong;
  v15 = [Strong traitCollection];
  sub_1001D1C24();
  sub_1001D1C78();
  UITraitCollection.subscript.getter();

  if (LOBYTE(v52) && LOBYTE(v52) != 1)
  {

    return;
  }

  v16 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v16)
  {
    goto LABEL_17;
  }

  v51 = OBJC_IVAR____TtC5Music29NowPlayingQueueViewController_dataSource;
  v17 = *&v14[OBJC_IVAR____TtC5Music29NowPlayingQueueViewController_dataSource];
  if (!v17)
  {
LABEL_31:
    __break(1u);
    return;
  }

  v48 = _UICollectionViewListLayoutElementKindSectionHeader;
  v49 = (v6 + 8);
  v18 = 1;
  v19 = v17;
  dispatch thunk of UICollectionViewDiffableDataSource.snapshot()();
  v20 = NSDiffableDataSourceSnapshot.sectionIdentifiers.getter();
  v50 = *(v10 + 8);
  v50(v12, v9);
  v21 = *(v20 + 16);
  if (!v21)
  {
LABEL_10:

    goto LABEL_11;
  }

  v22 = 0;
  while (*(v20 + v22 + 32) != 1)
  {
    if (v21 == ++v22)
    {
      goto LABEL_10;
    }
  }

  v28 = sub_1002DCC7C();
  v47 = v48;
  IndexPath.init(item:section:)();
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  v46 = isa;
  (*v49)(v8, v5);
  v30 = v47;
  v31 = [v28 layoutAttributesForSupplementaryElementOfKind:v47 atIndexPath:isa];

  v32 = v31;
  if (!v31)
  {
LABEL_11:
    v23 = *&v14[v51];
    if (v23)
    {
      v18 = 5;
      v24 = v23;
      dispatch thunk of UICollectionViewDiffableDataSource.snapshot()();
      v25 = NSDiffableDataSourceSnapshot.sectionIdentifiers.getter();
      v50(v12, v9);
      v26 = *(v25 + 16);
      if (v26)
      {
        v27 = 0;
        while (*(v25 + v27 + 32) != 5)
        {
          if (v26 == ++v27)
          {
            goto LABEL_16;
          }
        }

        v33 = sub_1002DCC7C();
        v34 = v48;
        IndexPath.init(item:section:)();
        v35 = IndexPath._bridgeToObjectiveC()().super.isa;
        (*v49)(v8, v5);
        v32 = [v33 layoutAttributesForSupplementaryElementOfKind:v34 atIndexPath:v35];

        if (v32)
        {
          [v32 frame];
          v56.x = a2;
          v56.y = a3;
          if (CGRectContainsPoint(v58, v56))
          {
            goto LABEL_25;
          }
        }
      }

      else
      {
LABEL_16:
      }

LABEL_17:

      return;
    }

    goto LABEL_31;
  }

  [v31 frame];
  v55.x = a2;
  v55.y = a3;
  if (!CGRectContainsPoint(v57, v55))
  {

    goto LABEL_11;
  }

LABEL_25:
  if (qword_10117F938 != -1)
  {
    swift_once();
  }

  v36 = type metadata accessor for Logger();
  sub_1000060E4(v36, qword_1012190C8);
  v37 = Logger.logObject.getter();
  v38 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    v54 = swift_slowAlloc();
    *v39 = 136446466;
    v52 = a2;
    v53 = a3;
    type metadata accessor for CGPoint(0);
    v40 = String.init<A>(describing:)();
    v42 = sub_1000105AC(v40, v41, &v54);

    *(v39 + 4) = v42;
    *(v39 + 12) = 2082;
    LOBYTE(v52) = v18;
    v43 = String.init<A>(describing:)();
    v45 = sub_1000105AC(v43, v44, &v54);

    *(v39 + 14) = v45;
    swift_arrayDestroy();
  }
}

char *sub_1002E1FB0(uint64_t a1)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v2 = result;
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      result = *(Strong + OBJC_IVAR____TtC5Music24NowPlayingViewController_controlsViewController);
      if (!result)
      {
        __break(1u);
        return result;
      }

      [result setControlsHidden:1 animated:1];
      swift_unknownObjectRelease();
    }

    v4 = sub_1002DCC7C();
    v5 = swift_allocObject();
    swift_unknownObjectWeakInit();
    if (v4[OBJC_IVAR____TtCC5Music29NowPlayingQueueViewController14CollectionView_hasInteractiveMovement] == 1)
    {
      v6 = swift_allocObject();
      *(v6 + 16) = sub_10030AD40;
      *(v6 + 24) = v5;
      v7 = OBJC_IVAR____TtCC5Music29NowPlayingQueueViewController14CollectionView_interactiveMovementCompletionHandlers;
      swift_beginAccess();
      v8 = *&v4[v7];
      swift_retain_n();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v4[v7] = v8;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v8 = sub_10006429C(0, v8[2] + 1, 1, v8);
        *&v4[v7] = v8;
      }

      v11 = v8[2];
      v10 = v8[3];
      if (v11 >= v10 >> 1)
      {
        v8 = sub_10006429C((v10 > 1), v11 + 1, 1, v8);
      }

      v8[2] = v11 + 1;
      v12 = &v8[2 * v11];
      v12[4] = sub_10018A020;
      v12[5] = v6;
      *&v4[v7] = v8;
      swift_endAccess();
    }

    else
    {

      sub_1002E21AC(v13);
    }
  }

  return result;
}

void sub_1002E21AC(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = swift_unknownObjectWeakLoadStrong();
    if (v3)
    {
      v4 = *(v3 + OBJC_IVAR____TtC5Music24NowPlayingViewController_controlsViewController);
      if (v4)
      {
        [v4 setControlsHidden:0 animated:1];

        swift_unknownObjectRelease();
      }

      else
      {
        __break(1u);
      }
    }

    else
    {
    }
  }
}

void sub_1002E2250(uint64_t a1@<X0>, uint64_t a3@<X8>)
{
  v71 = a1;
  sub_10010FC20(&unk_10118AAF0, &qword_100EC6458);
  __chkstk_darwin();
  v66 = &v61 - v4;
  v5 = sub_10010FC20(&qword_10118AB38, &qword_100ECC1E0);
  v69 = *(v5 - 8);
  __chkstk_darwin();
  v7 = &v61 - v6;
  v8 = type metadata accessor for IndexPath();
  v9 = *(v8 - 8);
  __chkstk_darwin();
  v65 = &v61 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v67 = &v61 - v11;
  __chkstk_darwin();
  v68 = &v61 - v12;
  __chkstk_darwin();
  v14 = &v61 - v13;
  sub_10010FC20(&unk_10118BCE0, &qword_100EC6450);
  __chkstk_darwin();
  v16 = &v61 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v18 = &v61 - v17;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_18;
  }

  v20 = Strong;
  v70 = *(Strong + OBJC_IVAR____TtC5Music29NowPlayingQueueViewController__playerResponse);
  if (v70)
  {
    v64 = a3;
    sub_1000089F8(v71, v18, &unk_10118BCE0, &qword_100EC6450);
    v21 = *(v9 + 48);
    v22 = v21(v18, 1, v8);
    v63 = v9;
    if (v22 == 1)
    {
      v23 = v70;
      v24 = v8;
LABEL_9:
      sub_1000089F8(v71, v16, &unk_10118BCE0, &qword_100EC6450);
      if (v21(v16, 1, v24) == 1)
      {
        sub_1000095E8(v16, &unk_10118BCE0, &qword_100EC6450);
        v32 = v64;
        *(v64 + 24) = &type metadata for DragDropToQueue.Destination;
        *(v32 + 32) = sub_1002B8664();

        *v32 = v70;
        *(v32 + 8) = 4;
        *(v32 + 16) = 0;
        return;
      }

      v33 = v63;
      v34 = *(v63 + 32);
      v35 = v68;
      v34();
      if (!IndexPath.item.getter())
      {
        if (IndexPath.section.getter() >= 1)
        {
          v42 = *&v20[OBJC_IVAR____TtC5Music29NowPlayingQueueViewController_dataSource];
          if (!v42)
          {
LABEL_41:
            __break(1u);
            return;
          }

          v43 = v33;
          v44 = v42;
          v45 = IndexPath.section.getter();
          v46 = v45 - 1;
          if (__OFSUB__(v45, 1))
          {
            goto LABEL_36;
          }

          dispatch thunk of UICollectionViewDiffableDataSource.snapshot()();
          v47 = NSDiffableDataSourceSnapshot.sectionIdentifiers.getter();
          (*(v69 + 8))(v7, v5);
          if ((v46 & 0x8000000000000000) != 0)
          {
LABEL_37:
            __break(1u);
            goto LABEL_38;
          }

          if (v46 >= *(v47 + 16))
          {
LABEL_38:
            __break(1u);
            goto LABEL_39;
          }

          v48 = *(v47 + v46 + 32);

          v33 = v43;
          if (v48 == 2)
          {
            v49 = 2;
            goto LABEL_30;
          }
        }

        v49 = 0;
        goto LABEL_30;
      }

      if (!__OFSUB__(IndexPath.item.getter(), 1))
      {
        IndexPath.section.getter();
        v36 = v67;
        IndexPath.init(item:section:)();
        v37 = *&v20[OBJC_IVAR____TtC5Music29NowPlayingQueueViewController_dataSource];
        v38 = v66;
        if (v37)
        {
          v39 = v37;
          dispatch thunk of UICollectionViewDiffableDataSource.itemIdentifier(for:)();

          v40 = _s23QueueSnapshotIdentifierOMa(0);
          if ((*(*(v40 - 8) + 48))(v38, 1, v40) == 1)
          {

            v41 = *(v33 + 8);
            v41(v36, v24);
            v41(v35, v24);
            sub_1000095E8(v38, &unk_10118AAF0, &qword_100EC6458);
LABEL_32:
            v60 = v64;
            *(v64 + 32) = 0;
            *v60 = 0u;
            v60[1] = 0u;
            return;
          }

          if (swift_getEnumCaseMultiPayload() != 1)
          {

            v59 = *(v33 + 8);
            v59(v36, v24);
            v59(v35, v24);
            sub_10030AD48(v38, _s23QueueSnapshotIdentifierOMa);
            goto LABEL_32;
          }

          v50 = *(v38 + *(sub_10010FC20(&qword_10118AB08, &qword_100ECC420) + 48));
          v51 = v65;
          (v34)(v65, v38, v24);
          v52 = [v50 tracklist];
          v53 = [v52 displayItems];

          isa = IndexPath._bridgeToObjectiveC()().super.isa;
          v49 = [v53 itemAtIndexPath:isa];

          v33 = v63;
          v55 = *(v33 + 8);
          v55(v51, v24);
          v35 = v68;
          v55(v67, v24);
          v56 = v49;
LABEL_30:
          v57 = v64;
          *(v64 + 24) = &type metadata for DragDropToQueue.Destination;
          *(v57 + 32) = sub_1002B8664();
          v58 = v70;
          sub_100309AD8(v49);

          *v57 = v58;
          *(v57 + 8) = v49;
          *(v57 + 16) = 0;
          (*(v33 + 8))(v35, v24);
          return;
        }

        goto LABEL_40;
      }

LABEL_35:
      __break(1u);
LABEL_36:
      __break(1u);
      goto LABEL_37;
    }

    v25 = *(v9 + 32);
    v62 = v8;
    v25(v14, v18, v8);
    v26 = *&v20[OBJC_IVAR____TtC5Music29NowPlayingQueueViewController_dataSource];
    if (!v26)
    {
LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
      goto LABEL_41;
    }

    v61 = v70;
    v27 = v26;
    v28 = IndexPath.section.getter();
    dispatch thunk of UICollectionViewDiffableDataSource.snapshot()();
    v29 = NSDiffableDataSourceSnapshot.sectionIdentifiers.getter();
    (*(v69 + 8))(v7, v5);
    if ((v28 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v28 < *(v29 + 16))
    {
      v30 = *(v29 + v28 + 32);

      v31 = v14;
      v24 = v62;
      (*(v63 + 8))(v31, v62);
      if (v30)
      {
        goto LABEL_9;
      }

      v20 = v61;
      a3 = v64;
      goto LABEL_17;
    }

    __break(1u);
    goto LABEL_35;
  }

LABEL_17:

LABEL_18:
  *(a3 + 32) = 0;
  *a3 = 0u;
  *(a3 + 16) = 0u;
}

void sub_1002E2A80(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = Strong + OBJC_IVAR____TtC5Music29NowPlayingQueueViewController_updateContext;
    swift_beginAccess();
    if ((*(v3 + 8) & 1) == 0)
    {
      v4 = sub_1002DCC7C();
      [v4 contentSize];
      v6 = v5;
      v8 = v7;

      sub_1002E6B90(v6, v8);
    }
  }
}

void sub_1002E2B2C(uint64_t a1)
{
  sub_10010FC20(&unk_10118ABC0, &unk_100EC03E0);
  __chkstk_darwin();
  v59 = (&v49 - v1);
  v2 = type metadata accessor for UICellAccessory.ReorderOptions();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v58 = &v49 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = type metadata accessor for UICellAccessory.DisplayedState();
  v5 = *(v60 - 8);
  __chkstk_darwin();
  v57 = &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&unk_10118AAF0, &qword_100EC6458);
  __chkstk_darwin();
  v8 = &v49 - v7;
  v9 = type metadata accessor for IndexPath();
  v10 = *(v9 - 8);
  __chkstk_darwin();
  v69 = &v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v13 = &v49 - v12;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v15 = Strong;
  v71 = v13;
  v16 = sub_1002DCC7C();
  v17 = [v16 visibleCells];

  sub_100009F78(0, &unk_101184750, UICollectionViewCell_ptr);
  v18 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!(v18 >> 62))
  {
    v19 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v20 = v71;
    if (v19)
    {
      goto LABEL_4;
    }

LABEL_30:

    return;
  }

LABEL_29:
  v19 = _CocoaArrayWrapper.endIndex.getter();
  v20 = v71;
  if (!v19)
  {
    goto LABEL_30;
  }

LABEL_4:
  v21 = 0;
  v73 = OBJC_IVAR____TtC5Music29NowPlayingQueueViewController_dataSource;
  v68 = v18 & 0xC000000000000001;
  v66 = OBJC_IVAR____TtC5Music29NowPlayingQueueViewController____lazy_storage___collectionView;
  v67 = v18 & 0xFFFFFFFFFFFFFF8;
  v64 = (v10 + 32);
  v54 = enum case for UICellAccessory.DisplayedState.always(_:);
  v53 = (v5 + 104);
  v52 = enum case for UICellAccessory.LayoutDimension.custom(_:);
  v51 = v3 + 1;
  v50 = (v5 + 8);
  v63 = (v10 + 8);
  v49 = xmmword_100EBC6B0;
  v61 = v19;
  v55 = v2;
  v62 = v8;
  v72 = v15;
  v65 = v18;
  while (1)
  {
    if (v68)
    {
      v23 = sub_1007E97A0(v21, v18);
    }

    else
    {
      if (v21 >= *(v67 + 16))
      {
        goto LABEL_28;
      }

      v23 = *(v18 + 8 * v21 + 32);
    }

    v3 = v23;
    v10 = (v21 + 1);
    if (__OFADD__(v21, 1))
    {
      __break(1u);
LABEL_28:
      __break(1u);
      goto LABEL_29;
    }

    type metadata accessor for NowPlayingQueueCell(0);
    v24 = swift_dynamicCastClass();
    if (!v24)
    {

      return;
    }

    v5 = v24;
    v25 = *&v15[v66];
    v26 = v3;
    v27 = [v25 indexPathForCell:v5];
    if (!v27)
    {

      return;
    }

    v28 = v27;
    v70 = v21 + 1;
    v29 = v69;
    static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();

    (*v64)(v20, v29, v9);
    v30 = *&v15[v73];
    if (!v30)
    {
      break;
    }

    v31 = v30;
    dispatch thunk of UICollectionViewDiffableDataSource.itemIdentifier(for:)();

    v32 = _s23QueueSnapshotIdentifierOMa(0);
    if ((*(*(v32 - 8) + 48))(v8, 1, v32) == 1)
    {

      (*v63)(v20, v9);
      sub_1000095E8(v8, &unk_10118AAF0, &qword_100EC6458);
      return;
    }

    v10 = sub_1004329EC();
    sub_10030AD48(v8, _s23QueueSnapshotIdentifierOMa);
    if (!v10)
    {

      (*v63)(v20, v9);
      return;
    }

    sub_1002E3428(v20, v10);
    v34 = v33;
    *(v5 + OBJC_IVAR____TtC5Music19NowPlayingQueueCell_isDisabled) = v33 & 1;
    v35 = *(v5 + OBJC_IVAR____TtC5Music19NowPlayingQueueCell_titlesStackView);
    v36 = 1.0;
    if (v34)
    {
      UIInterfaceGetContentDisabledAlpha();
    }

    v37 = v9;
    [v35 setAlpha:{v36, v49}];

    v38 = *&v72[v73];
    if (!v38)
    {
      goto LABEL_33;
    }

    v39 = *&v38[qword_10118F958];
    if (v39 && (v40 = *&v38[qword_10118F958 + 8], v41 = v38, sub_100030444(v39, v40), v42 = v39(v41, v71), v41, sub_100020438(v39, v40), (v42 & 1) != 0))
    {
      sub_10010FC20(&unk_101184740, &qword_100ED5D60);
      v43 = *(type metadata accessor for UICellAccessory() - 8);
      v56 = (*(v43 + 80) + 32) & ~*(v43 + 80);
      *(swift_allocObject() + 16) = v49;
      v44 = v57;
      (*v53)(v57, v54, v60);
      v45 = v59;
      *v59 = 0x403C000000000000;
      v46 = type metadata accessor for UICellAccessory.LayoutDimension();
      v47 = *(v46 - 8);
      (*(v47 + 104))(v45, v52, v46);
      (*(v47 + 56))(v45, 0, 1, v46);
      v3 = v26;
      v48 = v58;
      v2 = v55;
      UICellAccessory.ReorderOptions.init(isHidden:reservedLayoutWidth:tintColor:showsVerticalSeparator:)();
      static UICellAccessory.reorder(displayed:options:)();
      (*v51)(v48, v2);
      (*v50)(v44, v60);
      UICollectionViewListCell.accessories.setter();
      v22 = v10;
      v10 = v3;
    }

    else
    {
      v22 = v26;
      UICollectionViewListCell.accessories.setter();
      v3 = v22;
    }

    v20 = v71;
    v9 = v37;
    (*v63)(v71, v37);
    ++v21;
    v8 = v62;
    v15 = v72;
    v18 = v65;
    if (v70 == v61)
    {
      goto LABEL_30;
    }
  }

  __break(1u);
LABEL_33:
  __break(1u);
}

void sub_1002E3428(uint64_t a1, void *a2)
{
  v3 = v2;
  v85 = type metadata accessor for IndexPath();
  v87 = *(v85 - 8);
  __chkstk_darwin();
  v82 = &v75 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v8 = &v75 - v7;
  v86 = type metadata accessor for MusicPlayer.PlayabilityStatus();
  v84 = *(v86 - 8);
  __chkstk_darwin();
  v81 = &v75 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v80 = &v75 - v10;
  __chkstk_darwin();
  v83 = &v75 - v11;
  v12 = sub_10010FC20(&qword_10118AB38, &qword_100ECC1E0);
  v13 = *(v12 - 8);
  __chkstk_darwin();
  v15 = (&v75 - v14);
  sub_10010FC20(&unk_10118AAF0, &qword_100EC6458);
  __chkstk_darwin();
  v17 = &v75 - v16;
  v18 = OBJC_IVAR____TtC5Music29NowPlayingQueueViewController_dataSource;
  v19 = *(v2 + OBJC_IVAR____TtC5Music29NowPlayingQueueViewController_dataSource);
  if (!v19)
  {
    __break(1u);
LABEL_31:
    __break(1u);
    return;
  }

  v20 = v19;
  dispatch thunk of UICollectionViewDiffableDataSource.itemIdentifier(for:)();

  v21 = _s23QueueSnapshotIdentifierOMa(0);
  if ((*(*(v21 - 8) + 48))(v17, 1, v21) == 1)
  {
    sub_1000095E8(v17, &unk_10118AAF0, &qword_100EC6458);
    v22 = 0;
  }

  else
  {
    v23 = sub_100432FF0();
    v24 = v17;
    v22 = v23;
    sub_10030AD48(v24, _s23QueueSnapshotIdentifierOMa);
  }

  v25 = *(v3 + v18);
  if (!v25)
  {
    goto LABEL_31;
  }

  v26 = v25;
  dispatch thunk of UICollectionViewDiffableDataSource.snapshot()();

  v27 = NSDiffableDataSourceSnapshot.sectionIdentifiers.getter();
  (*(v13 + 8))(v15, v12);
  v28 = IndexPath.section.getter();
  if ((v28 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_28;
  }

  if (v28 >= *(v27 + 16))
  {
LABEL_28:
    __break(1u);
LABEL_29:
    swift_once();
LABEL_12:
    v32 = type metadata accessor for Logger();
    sub_1000060E4(v32, qword_1012190C8);
    v33 = v82;
    v34 = v85;
    v15[2](v82, a1, v85);
    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v38 = v15;
      v39 = swift_slowAlloc();
      v88 = v39;
      *v37 = 136446210;
      sub_100309644(&unk_101197050, &type metadata accessor for IndexPath, &protocol conformance descriptor for IndexPath);
      v40 = dispatch thunk of CustomStringConvertible.description.getter();
      v42 = v41;
      (v38[1])(v33, v34);
      v43 = sub_1000105AC(v40, v42, &v88);

      *(v37 + 4) = v43;
      _os_log_impl(&_mh_execute_header, v35, v36, "[NowPlayingQueueViewController] ---- Disabling cell at indexPath: %{public}s due to missing changeItemCommand", v37, 0xCu);
      sub_10000959C(v39);
    }

    else
    {

      (v15[1])(v33, v34);
    }

    return;
  }

  v29 = v8;
  v30 = a2;
  v31 = *(v27 + v28 + 32);

  if (v31 <= 1)
  {
    v44 = v87;
    if (!v31)
    {
      v45 = v83;
      sub_100537EF0(v30, v83);
      if (qword_10117F938 != -1)
      {
        swift_once();
      }

      v46 = type metadata accessor for Logger();
      sub_1000060E4(v46, qword_1012190C8);
      v47 = v85;
      v44[2](v29, a1, v85);
      v48 = *(v84 + 16);
      v49 = v80;
      v82 = v29;
      v50 = v86;
      v79 = v48;
      v48(v80, v45, v86);
      v51 = v30;
      v52 = Logger.logObject.getter();
      v53 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v52, v53))
      {
        v54 = swift_slowAlloc();
        v76 = swift_slowAlloc();
        v78 = swift_slowAlloc();
        v88 = v78;
        *v54 = 136446978;
        sub_100309644(&unk_101197050, &type metadata accessor for IndexPath, &protocol conformance descriptor for IndexPath);
        v75 = v52;
        v55 = v82;
        v56 = dispatch thunk of CustomStringConvertible.description.getter();
        v77 = v22;
        v58 = v57;
        (v44[1])(v55, v47);
        v59 = sub_1000105AC(v56, v58, &v88);

        *(v54 + 4) = v59;
        *(v54 + 12) = 2082;
        v60 = v81;
        v79(v81, v49, v86);
        v61 = String.init<A>(describing:)();
        v63 = v62;
        v64 = v84;
        v65 = v49;
        v66 = v53;
        v67 = *(v84 + 8);
        v67(v65, v86);
        v68 = sub_1000105AC(v61, v63, &v88);
        LOBYTE(v63) = v77;

        *(v54 + 14) = v68;
        *(v54 + 22) = 1026;
        *(v54 + 24) = v63 & 1;
        *(v54 + 28) = 2114;
        *(v54 + 30) = v51;
        v69 = v76;
        *v76 = v51;
        v70 = v51;
        v71 = v75;
        _os_log_impl(&_mh_execute_header, v75, v66, "[NowPlayingQueueViewController] History item at indexPath=%{public}s playabilityStatus=%{public}s canJumpToItem=%{BOOL,public}d modelObject=%{public}@", v54, 0x26u);
        sub_1000095E8(v69, &unk_101183D70, &unk_100EC6540);

        swift_arrayDestroy();

        v45 = v83;
        v50 = v86;

        v72 = v64;
      }

      else
      {

        v73 = v84;
        v67 = *(v84 + 8);
        v67(v49, v50);
        (v44[1])(v82, v47);
        v72 = v73;
        v60 = v81;
      }

      (*(v72 + 104))(v60, enum case for MusicPlayer.PlayabilityStatus.playable(_:), v50);
      v74 = static MusicPlayer.PlayabilityStatus.== infix(_:_:)();
      v67(v60, v50);
      if (v74)
      {
        if (qword_10117F5F8 != -1)
        {
          swift_once();
        }

        (*(*qword_101218AC8 + 768))(&type metadata for Player.InsertCommand, &protocol witness table for Player.InsertCommand);
        v67(v45, v50);
      }

      else
      {
        v67(v45, v50);
      }
    }
  }

  else
  {
    v15 = v87;
    if ((v31 - 2) < 3 && (v22 & 1) == 0)
    {
      if (qword_10117F938 == -1)
      {
        goto LABEL_12;
      }

      goto LABEL_29;
    }
  }
}

void sub_1002E3E00(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = sub_1002DCC7C();

    [v3 reloadData];
  }
}

void *sub_1002E3E6C(uint64_t a1, uint64_t a2)
{
  sub_10010FC20(&qword_10118ABE0, aB_11);
  __chkstk_darwin();
  v3 = &v7 - v2;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v5 = result;
    v6 = sub_10010FC20(&qword_10118AB38, &qword_100ECC1E0);
    (*(*(v6 - 8) + 56))(v3, 1, 1, v6);
    sub_1002E802C(v3);

    return sub_1000095E8(v3, &qword_10118ABE0, aB_11);
  }

  return result;
}

void sub_1002E3F74(uint64_t a1, uint64_t a2)
{
  v2 = sub_10010FC20(&qword_10118AB10, L"F\v!");
  __chkstk_darwin();
  v4 = &v54 - v3;
  v5 = sub_10010FC20(&qword_10118AB00, &qword_100EC6460);
  __chkstk_darwin();
  v7 = (&v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin();
  v62 = &v54 - v8;
  v63 = _s23QueueSnapshotIdentifierOMa(0);
  v9 = *(v63 - 8);
  __chkstk_darwin();
  v66 = &v54 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&unk_10118AAF0, &qword_100EC6458);
  __chkstk_darwin();
  v67 = &v54 - v11;
  v12 = type metadata accessor for IndexPath();
  v73 = *(v12 - 8);
  __chkstk_darwin();
  v14 = &v54 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v16 = &v54 - v15;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v18 = Strong;
  if (![Strong isViewLoaded])
  {

    return;
  }

  v61 = v14;
  v19 = sub_1002DCC7C();
  v20 = [v19 indexPathsForVisibleItems];

  v21 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v72 = *(v21 + 16);
  if (!v72)
  {
LABEL_29:

    return;
  }

  v58 = v7;
  v59 = v5;
  v55 = v4;
  v22 = 0;
  v23 = *(v73 + 80);
  v71 = OBJC_IVAR____TtC5Music29NowPlayingQueueViewController____lazy_storage___collectionView;
  v70 = v21 + ((v23 + 32) & ~v23);
  v68 = v21;
  v69 = v73 + 16;
  v64 = (v9 + 48);
  v65 = OBJC_IVAR____TtC5Music29NowPlayingQueueViewController_dataSource;
  v56 = v2;
  v57 = (v73 + 32);
  v24 = (v73 + 8);
  v25 = v63;
  v26 = v21;
  while (v22 < *(v26 + 16))
  {
    (*(v73 + 16))(v16, v70 + *(v73 + 72) * v22, v12);
    v27 = *&v18[v71];
    isa = IndexPath._bridgeToObjectiveC()().super.isa;
    v29 = [v27 cellForItemAtIndexPath:isa];

    if (!v29)
    {
      (*v24)(v16, v12);
      goto LABEL_7;
    }

    type metadata accessor for NowPlayingQueueCell(0);
    v30 = swift_dynamicCastClass();
    if (v30)
    {
      v31 = *&v18[v65];
      if (!v31)
      {
        goto LABEL_32;
      }

      v32 = v30;
      v33 = v31;
      v34 = v67;
      dispatch thunk of UICollectionViewDiffableDataSource.itemIdentifier(for:)();

      if ((*v64)(v34, 1, v25) == 1)
      {
        (*v24)(v16, v12);

        sub_1000095E8(v34, &unk_10118AAF0, &qword_100EC6458);
      }

      else
      {
        sub_1003090DC(v34, v66, _s23QueueSnapshotIdentifierOMa);
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        if ((EnumCaseMultiPayload - 2) >= 3)
        {
          if (!EnumCaseMultiPayload)
          {
            v36 = v62;
            sub_10003D17C(v66, v62, &qword_10118AB00, &qword_100EC6460);
            v37 = v36;
            v38 = v58;
            sub_1000089F8(v37, v58, &qword_10118AB00, &qword_100EC6460);
            if (swift_getEnumCaseMultiPayload() == 1)
            {
              v39 = *v38;
            }

            else
            {
              v49 = v55;
              sub_10003D17C(v38, v55, &qword_10118AB10, L"F\v!");
              v39 = SnapshotIdentifier.Lazy.object.getter(v56);
              sub_1000095E8(v49, &qword_10118AB10, L"F\v!");
            }

            v48 = v67;
            v47 = [v39 innermostModelObject];

            sub_1000095E8(v62, &qword_10118AB00, &qword_100EC6460);
            goto LABEL_24;
          }

          v40 = sub_10010FC20(&qword_10118AB08, &qword_100ECC420);
          v41 = *(v66 + *(v40 + 48));
          (*v57)(v61);
          v60 = v41;
          v42 = [v41 tracklist];
          v43 = [v42 displayItems];

          v44 = IndexPath._bridgeToObjectiveC()().super.isa;
          v45 = [v43 itemAtIndexPath:v44];

          v46 = [v45 metadataObject];
          if (v46)
          {
            v47 = [v46 innermostModelObject];

            (*v24)(v61, v12);
            v48 = v67;
LABEL_24:
            sub_10030AD48(v48, _s23QueueSnapshotIdentifierOMa);
            sub_1002E3428(v16, v47);
            v51 = v50;
            *(v32 + OBJC_IVAR____TtC5Music19NowPlayingQueueCell_isDisabled) = v50 & 1;
            v52 = *(v32 + OBJC_IVAR____TtC5Music19NowPlayingQueueCell_titlesStackView);
            v53 = 1.0;
            if (v51)
            {
              UIInterfaceGetContentDisabledAlpha();
            }

            [v52 setAlpha:v53];

            (*v24)(v16, v12);
            v25 = v63;
            goto LABEL_6;
          }

          (*v24)(v61, v12);

          v25 = v63;
          v34 = v67;
        }

        sub_10030AD48(v34, _s23QueueSnapshotIdentifierOMa);
        (*v24)(v16, v12);
      }
    }

    else
    {

      (*v24)(v16, v12);
    }

LABEL_6:
    v26 = v68;
LABEL_7:
    if (v72 == ++v22)
    {
      goto LABEL_29;
    }
  }

  __break(1u);
LABEL_32:
  __break(1u);
}