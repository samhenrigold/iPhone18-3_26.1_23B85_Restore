uint64_t sub_1000E66B8()
{
  if (*(v0 + 56))
  {

    Task.cancel()();
  }

  *(v0 + 56) = 0;

  sub_100025CD8(*(v0 + 16), *(v0 + 24), *(v0 + 32));
  sub_1000122B4(v0 + 40);

  return swift_deallocClassInstance();
}

uint64_t sub_1000E6758()
{
  v1 = sub_10004DED0(&unk_10015D490, &qword_100112150);
  __chkstk_darwin(v1 - 8);
  v3 = &v13 - v2;
  v4 = type metadata accessor for TaskPriority();
  v5 = *(*(v4 - 8) + 56);
  v5(v3, 1, 1, v4);
  v6 = swift_allocObject();
  swift_weakInit();
  type metadata accessor for MainActor();

  v7 = static MainActor.shared.getter();
  v8 = swift_allocObject();
  v8[2] = v7;
  v8[3] = &protocol witness table for MainActor;
  v8[4] = v6;

  *(v0 + 56) = sub_100094AF4(0, 0, v3, &unk_100117FE8, v8);

  v5(v3, 1, 1, v4);
  v9 = swift_allocObject();
  swift_weakInit();

  v10 = static MainActor.shared.getter();
  v11 = swift_allocObject();
  v11[2] = v10;
  v11[3] = &protocol witness table for MainActor;
  v11[4] = v9;

  sub_100094DF4(0, 0, v3, &unk_100117FF8, v11);
}

uint64_t sub_1000E6978(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[7] = a4;
  v5 = sub_10004DED0(&qword_100160C58, &qword_100118000);
  v4[8] = v5;
  v4[9] = *(v5 - 8);
  v4[10] = swift_task_alloc();
  v6 = sub_10004DED0(&qword_100160C60, &qword_100118008);
  v4[11] = v6;
  v4[12] = *(v6 - 8);
  v4[13] = swift_task_alloc();
  v4[14] = type metadata accessor for MainActor();
  v4[15] = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[16] = v8;
  v4[17] = v7;

  return _swift_task_switch(sub_1000E6AE4, v8, v7);
}

uint64_t sub_1000E6AE4()
{
  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[8];
  v0[18] = type metadata accessor for ScreenSharingInteractionController();
  v4 = static ScreenSharingInteractionController.shared.getter();
  sub_1000E7758();
  v5 = ObservableObject<>.objectWillChange.getter();

  v0[5] = v5;
  type metadata accessor for ObservableObjectPublisher();
  Publisher<>.values.getter();

  AsyncPublisher.makeAsyncIterator()();
  (*(v2 + 8))(v1, v3);
  swift_beginAccess();
  v0[19] = static MainActor.shared.getter();
  v6 = sub_1000E77B0();
  v7 = swift_task_alloc();
  v0[20] = v7;
  *v7 = v0;
  v7[1] = sub_1000E6C58;
  v8 = v0[11];

  return dispatch thunk of AsyncIteratorProtocol.next()(v0 + 22, v8, v6);
}

uint64_t sub_1000E6C58()
{
  v2 = *v1;
  *(*v1 + 168) = v0;

  v3 = *(v2 + 152);
  if (v0)
  {
    if (v3)
    {
      swift_getObjectType();
      v4 = dispatch thunk of Actor.unownedExecutor.getter();
      v6 = v5;
    }

    else
    {
      v4 = 0;
      v6 = 0;
    }

    v7 = sub_1000E7044;
  }

  else
  {
    if (v3)
    {
      swift_getObjectType();
      v4 = dispatch thunk of Actor.unownedExecutor.getter();
      v6 = v8;
    }

    else
    {
      v4 = 0;
      v6 = 0;
    }

    v7 = sub_1000E6DF0;
  }

  return _swift_task_switch(v7, v4, v6);
}

uint64_t sub_1000E6DF0()
{

  *(v0 + 177) = *(v0 + 176);
  v1 = *(v0 + 128);
  v2 = *(v0 + 136);

  return _swift_task_switch(sub_1000E6E5C, v1, v2);
}

uint64_t sub_1000E6E5C()
{
  if ((*(v0 + 177) & 1) != 0 || (Strong = swift_weakLoadStrong()) == 0)
  {
    (*(*(v0 + 96) + 8))(*(v0 + 104), *(v0 + 88));

    v8 = *(v0 + 8);

    return v8();
  }

  else
  {
    v2 = Strong;
    v3 = static ScreenSharingInteractionController.shared.getter();
    v4 = dispatch thunk of ScreenSharingInteractionController.remoteControlStatus.getter();

    if ((v4 == 2) != *(v2 + 33) && swift_unknownObjectWeakLoadStrong())
    {
      type metadata accessor for PrimarySettingsListModel(0);
      sub_1000A2E28("Remote Control", 14, 2);
      swift_unknownObjectRelease();
    }

    *(v2 + 33) = v4 == 2;

    *(v0 + 152) = static MainActor.shared.getter();
    v5 = sub_1000E77B0();
    v6 = swift_task_alloc();
    *(v0 + 160) = v6;
    *v6 = v0;
    v6[1] = sub_1000E6C58;
    v7 = *(v0 + 88);

    return dispatch thunk of AsyncIteratorProtocol.next()(v0 + 176, v7, v5);
  }
}

uint64_t sub_1000E7044()
{
  *(v0 + 48) = *(v0 + 168);
  sub_10004DED0(&unk_10015C800, &unk_100112BC0);
  swift_dynamicCast();

  return swift_willThrowTypedImpl();
}

uint64_t sub_1000E70D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a1;
  v4[6] = a4;
  type metadata accessor for MainActor();
  v4[7] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1000E7168, v6, v5);
}

uint64_t sub_1000E7168()
{

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    type metadata accessor for ScreenSharingInteractionController();
    v2 = static ScreenSharingInteractionController.shared.getter();
    v3 = dispatch thunk of ScreenSharingInteractionController.remoteControlStatus.getter();

    if ((v3 == 2) != *(Strong + 33) && swift_unknownObjectWeakLoadStrong())
    {
      type metadata accessor for PrimarySettingsListModel(0);
      sub_1000A2E28("Remote Control", 14, 2);
      swift_unknownObjectRelease();
    }

    *(Strong + 33) = v3 == 2;
  }

  **(v0 + 40) = Strong == 0;
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1000E72A8@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Locale();
  __chkstk_darwin(v7 - 8);
  v8 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v8 - 8);
  if (*(v1 + 33) == 1)
  {
    v10 = *(v1 + 16);
    v9 = *(v1 + 24);
    v11 = *(v1 + 32);
    v12 = type metadata accessor for PrimarySettingsListSectionModel(0);
    v20 = v3;
    v13 = v12;
    v21 = *(v12 + 24);
    sub_100025974(v10, v9, v11);
    String.LocalizationValue.init(stringLiteral:)();
    static Locale.current.getter();
    (*(v4 + 104))(v6, enum case for LocalizedStringResource.BundleDescription.main(_:), v20);
    v14 = v21;
    LocalizedStringResource.init(_:table:locale:bundle:comment:)();
    v15 = type metadata accessor for LocalizedStringResource();
    (*(*(v15 - 8) + 56))(a1 + v14, 0, 1, v15);
    *a1 = v10;
    *(a1 + 8) = v9;
    *(a1 + 16) = v11;
    *(a1 + 24) = 0;
    *(a1 + 32) = 0;
    *(a1 + *(v13 + 28)) = _swiftEmptyArrayStorage;
    return (*(*(v13 - 8) + 56))(a1, 0, 1, v13);
  }

  else
  {
    v17 = type metadata accessor for PrimarySettingsListSectionModel(0);
    v18 = *(*(v17 - 8) + 56);

    return v18(a1, 1, 1, v17);
  }
}

uint64_t sub_1000E75F0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10000ACE4;

  return sub_1000E6978(a1, v4, v5, v6);
}

uint64_t sub_1000E76A4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10000A924;

  return sub_1000E70D0(a1, v4, v5, v6);
}

unint64_t sub_1000E7758()
{
  result = qword_100160C68;
  if (!qword_100160C68)
  {
    type metadata accessor for ScreenSharingInteractionController();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100160C68);
  }

  return result;
}

unint64_t sub_1000E77B0()
{
  result = qword_100160C70;
  if (!qword_100160C70)
  {
    sub_100052374(&qword_100160C60, &qword_100118008);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100160C70);
  }

  return result;
}

id sub_1000E7824@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, int a3@<W3>, uint64_t a4@<X8>)
{
  v26 = a1;
  v7 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Locale();
  __chkstk_darwin(v11 - 8);
  v12 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v12 - 8);
  result = MobileGestalt_get_current_device();
  if (result)
  {
    v14 = result;
    researchFuse = MobileGestalt_get_researchFuse();

    v16 = type metadata accessor for PrimarySettingsListSectionModel(0);
    v17 = v16;
    if (researchFuse)
    {
      v18 = *(v16 + 24);
      v19 = a2;
      v24 = a2;
      v25 = a3;
      v20 = v26;
      sub_100025974(v26, v19, a3);
      String.LocalizationValue.init(stringLiteral:)();
      static Locale.current.getter();
      (*(v8 + 104))(v10, enum case for LocalizedStringResource.BundleDescription.main(_:), v7);
      LocalizedStringResource.init(_:table:locale:bundle:comment:)();
      v21 = type metadata accessor for LocalizedStringResource();
      (*(*(v21 - 8) + 56))(a4 + v18, 0, 1, v21);
      v22 = v24;
      *a4 = v20;
      *(a4 + 8) = v22;
      *(a4 + 16) = v25;
      *(a4 + 24) = 0;
      *(a4 + 32) = 0;
      *(a4 + *(v17 + 28)) = _swiftEmptyArrayStorage;
      return (*(*(v17 - 8) + 56))(a4, 0, 1, v17);
    }

    else
    {
      v23 = *(*(v16 - 8) + 56);

      return v23(a4, 1, 1, v16);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1000E7B44()
{
  v1 = *v0;
  sub_100025974(*v0, *(v0 + 8), *(v0 + 16));
  return v1;
}

void sub_1000E7B98()
{
  v0 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v19 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Locale();
  __chkstk_darwin(v4 - 8);
  v5 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v5 - 8);
  v6 = type metadata accessor for String.LocalizationValue.StringInterpolation();
  __chkstk_darwin(v6 - 8);
  v7 = [objc_opt_self() sharedConnection];
  if (v7)
  {
    v8 = v7;
    v9 = [v7 cloudConfigurationDetails];

    if (v9)
    {
      v10 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v21 = v11;
      AnyHashable.init<A>(_:)();
      if (*(v10 + 16) && (v12 = sub_100017DC0(v22), (v13 & 1) != 0))
      {
        sub_10001EE30(*(v10 + 56) + 32 * v12, v23);
        sub_100017E04(v22);

        if (swift_dynamicCast())
        {
          v14 = v20;
          v15 = v21;
          String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
          v16._countAndFlagsBits = 0xD000000000000032;
          v16._object = 0x8000000100125E90;
          String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v16);
          v17._countAndFlagsBits = v14;
          v17._object = v15;
          String.LocalizationValue.StringInterpolation.appendInterpolation(_:)(v17);

          v18._countAndFlagsBits = 0;
          v18._object = 0xE000000000000000;
          String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v18);
          String.LocalizationValue.init(stringInterpolation:)();
          static Locale.current.getter();
          (*(v1 + 104))(v3, enum case for LocalizedStringResource.BundleDescription.main(_:), v0);
LABEL_9:
          LocalizedStringResource.init(_:table:locale:bundle:comment:)();
          return;
        }
      }

      else
      {

        sub_100017E04(v22);
      }

      String.LocalizationValue.init(stringLiteral:)();
      static Locale.current.getter();
      (*(v1 + 104))(v3, enum case for LocalizedStringResource.BundleDescription.main(_:), v0);
      goto LABEL_9;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_1000E7F64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + 1))
  {
    v4 = *v2;
    v5 = *(*v2 + 16);
    v6 = *(v4 + 24);
    v7 = *(v4 + 32);
    v8 = type metadata accessor for PrimarySettingsListSectionModel(0);
    v9 = *(v8 + 24);
    sub_100025974(v5, v6, v7);
    sub_1000E7B98();
    v10 = type metadata accessor for LocalizedStringResource();
    (*(*(v10 - 8) + 56))(a2 + v9, 0, 1, v10);
    *a2 = v5;
    *(a2 + 8) = v6;
    *(a2 + 16) = v7;
    *(a2 + 24) = 0;
    *(a2 + 32) = 0;
    *(a2 + *(v8 + 28)) = _swiftEmptyArrayStorage;
    v11 = *(*(v8 - 8) + 56);
    v12 = a2;
    v13 = 0;
    v14 = v8;
  }

  else
  {
    v15 = type metadata accessor for PrimarySettingsListSectionModel(0);
    v11 = *(*(v15 - 8) + 56);
    v14 = v15;
    v12 = a2;
    v13 = 1;
  }

  return v11(v12, v13, 1, v14);
}

uint64_t sub_1000E80A8()
{
  v1 = OBJC_IVAR____TtC11SettingsApp19VPNListItemProvider____lazy_storage___toggleState;
  if (*(v0 + OBJC_IVAR____TtC11SettingsApp19VPNListItemProvider____lazy_storage___toggleState))
  {
    v2 = *(v0 + OBJC_IVAR____TtC11SettingsApp19VPNListItemProvider____lazy_storage___toggleState);
  }

  else
  {
    v3 = swift_allocObject();
    swift_weakInit();
    type metadata accessor for PrimarySettingsListToggleState(0);
    v2 = swift_allocObject();

    ObservationRegistrar.init()();
    *(v2 + 16) = 0;
    *(v2 + 24) = sub_1000E9C8C;
    *(v2 + 32) = v3;

    *(v0 + v1) = v2;
  }

  return v2;
}

void sub_1000E8184(char a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v4 = *(Strong + 88);
    v5 = v4;

    if (v4)
    {
      v6 = [v5 toggleVPNConnectivity:a1 & 1];
    }

    else
    {
      __break(1u);
    }
  }
}

void *sub_1000E8220()
{
  v1 = v0;
  v2 = sub_10004DED0(&qword_10015E9F8, &unk_100115CD0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v13 - v4;
  result = *(v1 + 88);
  if (result)
  {
    [result setDelegate:0];
    v7 = *(v1 + 88);
    *(v1 + 88) = 0;

    v8 = OBJC_IVAR____TtC11SettingsApp19VPNListItemProvider_connectivityUpdateStreamContinuation;
    (*(v3 + 16))(v5, v1 + OBJC_IVAR____TtC11SettingsApp19VPNListItemProvider_connectivityUpdateStreamContinuation, v2);
    AsyncStream.Continuation.finish()();
    v9 = *(v3 + 8);
    v9(v5, v2);
    v10 = OBJC_IVAR____TtC11SettingsApp19VPNListItemProvider_observationTask;
    if (*(v1 + OBJC_IVAR____TtC11SettingsApp19VPNListItemProvider_observationTask))
    {

      Task.cancel()();
    }

    *(v1 + v10) = 0;

    sub_10002C5C0(*(v1 + 16), *(v1 + 24), *(v1 + 32), *(v1 + 40), *(v1 + 48));
    sub_1000122B4(v1 + 72);

    v11 = OBJC_IVAR____TtC11SettingsApp19VPNListItemProvider_connectivityUpdateStream;
    v12 = sub_10004DED0(&qword_10015EA00, &qword_100118250);
    (*(*(v12 - 8) + 8))(v1 + v11, v12);
    v9((v1 + v8), v2);

    return v1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1000E843C()
{
  sub_1000E8220();

  return swift_deallocClassInstance();
}

void sub_1000E849C()
{
  v1 = v0;
  v2 = sub_10004DED0(&unk_10015D490, &qword_100112150);
  __chkstk_darwin(v2 - 8);
  v24 = &v22 - v3;
  v4 = sub_10004DED0(&qword_10015E9F8, &unk_100115CD0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v22 - v6;
  v23 = sub_10004DED0(&qword_100160EB0, &qword_100118230);
  v8 = *(v23 - 8);
  __chkstk_darwin(v23);
  v10 = &v22 - v9;
  v11 = [objc_allocWithZone(NEVPNConnectivityManager) initWithDelegate:v1];
  v12 = *(v1 + 88);
  *(v1 + 88) = v11;
  v13 = v11;

  if (v13)
  {
    v14 = [v13 hasRelayConfigurations];
    v15 = [v13 visibilityStyle];
    v16 = [v13 connectivityState];
    (*(v5 + 16))(v7, v1 + OBJC_IVAR____TtC11SettingsApp19VPNListItemProvider_connectivityUpdateStreamContinuation, v4);
    v25[0] = v14;
    v26 = v15;
    v27 = v16;
    AsyncStream.Continuation.yield(_:)();

    (*(v5 + 8))(v7, v4);
    (*(v8 + 8))(v10, v23);
    v17 = type metadata accessor for TaskPriority();
    v18 = v24;
    (*(*(v17 - 8) + 56))(v24, 1, 1, v17);
    v19 = swift_allocObject();
    swift_weakInit();
    type metadata accessor for MainActor();

    v20 = static MainActor.shared.getter();
    v21 = swift_allocObject();
    v21[2] = v20;
    v21[3] = &protocol witness table for MainActor;
    v21[4] = v19;

    *(v1 + OBJC_IVAR____TtC11SettingsApp19VPNListItemProvider_observationTask) = sub_100094AF4(0, 0, v18, &unk_100118240, v21);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1000E8810(void *a1)
{
  v3 = sub_10004DED0(&qword_10015E9F8, &unk_100115CD0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v16[-v5 - 8];
  v7 = sub_10004DED0(&qword_100160EB0, &qword_100118230);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v16[-v9 - 8];
  v11 = [a1 hasRelayConfigurations];
  v12 = [a1 visibilityStyle];
  v13 = [a1 connectivityState];
  (*(v4 + 16))(v6, v1 + OBJC_IVAR____TtC11SettingsApp19VPNListItemProvider_connectivityUpdateStreamContinuation, v3);
  v16[0] = v11;
  v17 = v12;
  v18 = v13;
  AsyncStream.Continuation.yield(_:)();
  (*(v4 + 8))(v6, v3);
  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_1000E8A08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[13] = a4;
  v4[14] = sub_10004DED0(&qword_100160EB8, &qword_100118248);
  v4[15] = swift_task_alloc();
  v5 = sub_10004DED0(&qword_10015EA00, &qword_100118250);
  v4[16] = v5;
  v4[17] = *(v5 - 8);
  v4[18] = swift_task_alloc();
  v4[19] = swift_task_alloc();
  v4[20] = type metadata accessor for MainActor();
  v4[21] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[22] = v7;
  v4[23] = v6;

  return _swift_task_switch(sub_1000E8B54, v7, v6);
}

uint64_t sub_1000E8B54()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v2 = v0[18];
    v3 = v0[19];
    v4 = v0[16];
    v5 = v0[17];
    v6 = v0[15];
    (*(v5 + 16))(v2, Strong + OBJC_IVAR____TtC11SettingsApp19VPNListItemProvider_connectivityUpdateStream, v4);

    (*(v5 + 32))(v3, v2, v4);
    sub_1000E9D48();
    AsyncSequence.debounce<>(for:tolerance:)();
    v7 = AsyncDebounceSequence.makeAsyncIterator()();
    v0[24] = v7;
    sub_1000068B0(v6, &qword_100160EB8, &qword_100118248);
    v0[11] = v7;
    swift_beginAccess();
    v0[25] = static MainActor.shared.getter();
    v8 = swift_task_alloc();
    v0[26] = v8;
    v9 = sub_10004DED0(&qword_100160EC8, &qword_100118258);
    *v8 = v0;
    v8[1] = sub_1000E8D88;

    return AsyncDebounceSequence.Iterator.next()(v0 + 8, v9);
  }

  else
  {

    v10 = v0[1];

    return v10();
  }
}

uint64_t sub_1000E8D88()
{
  v2 = *v1;
  *(v2 + 216) = v0;

  v3 = *(v2 + 200);
  if (v0)
  {
    if (v3)
    {
      swift_getObjectType();
      v4 = dispatch thunk of Actor.unownedExecutor.getter();
      v6 = v5;
    }

    else
    {
      v4 = 0;
      v6 = 0;
    }

    v7 = sub_1000E925C;
  }

  else
  {
    *(v2 + 224) = *(v2 + 64);
    *(v2 + 240) = *(v2 + 80);
    if (v3)
    {
      swift_getObjectType();
      v4 = dispatch thunk of Actor.unownedExecutor.getter();
      v6 = v8;
    }

    else
    {
      v4 = 0;
      v6 = 0;
    }

    v7 = sub_1000E8F30;
  }

  return _swift_task_switch(v7, v4, v6);
}

uint64_t sub_1000E8F30()
{

  v1 = *(v0 + 176);
  v2 = *(v0 + 184);

  return _swift_task_switch(sub_1000E8F94, v1, v2);
}

uint64_t sub_1000E8F94()
{
  if (*(v0 + 224) == 2 || (Strong = swift_weakLoadStrong()) == 0)
  {
    v7 = *(v0 + 152);
    v8 = *(v0 + 128);
    v9 = *(v0 + 136);

    (*(v9 + 8))(v7, v8);

    v10 = *(v0 + 8);

    return v10();
  }

  else
  {
    v2 = Strong;
    if (*(Strong + 49) != (*(v0 + 224) & 1) && swift_unknownObjectWeakLoadStrong())
    {
      type metadata accessor for PrimarySettingsListModel(0);
      sub_1000A2E28("VPN Relay Configuration", 23, 2);
      swift_unknownObjectRelease();
    }

    v3 = *(v0 + 232);
    *(v2 + 49) = *(v0 + 224) & 1;
    if (v3 != *(v2 + 56) && swift_unknownObjectWeakLoadStrong())
    {
      type metadata accessor for PrimarySettingsListModel(0);
      sub_1000A2E28("VPN Visibility", 14, 2);
      swift_unknownObjectRelease();
    }

    v4 = *(v0 + 240);
    *(v2 + 56) = *(v0 + 232);
    if (v4 != *(v2 + 64) && swift_unknownObjectWeakLoadStrong())
    {
      type metadata accessor for PrimarySettingsListModel(0);
      sub_1000A2E28("VPN Connectivity", 16, 2);
      swift_unknownObjectRelease();
    }

    *(v2 + 64) = *(v0 + 240);

    *(v0 + 200) = static MainActor.shared.getter();
    v5 = swift_task_alloc();
    *(v0 + 208) = v5;
    v6 = sub_10004DED0(&qword_100160EC8, &qword_100118258);
    *v5 = v0;
    v5[1] = sub_1000E8D88;

    return AsyncDebounceSequence.Iterator.next()(v0 + 64, v6);
  }
}

uint64_t sub_1000E925C()
{
  *(v0 + 96) = *(v0 + 216);
  sub_10004DED0(&unk_10015C800, &unk_100112BC0);
  swift_dynamicCast();

  return swift_willThrowTypedImpl();
}

uint64_t sub_1000E92E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = type metadata accessor for PrimarySettingsListItemViewType(0);
  __chkstk_darwin(v6);
  v8 = &v54 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10004DED0(&unk_10015EDB0, &unk_100111C70);
  __chkstk_darwin(v9 - 8);
  v11 = &v54 - v10;
  v12 = type metadata accessor for PrimarySettingsListItemModel(0);
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v54 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(v3 + 32);
  v60 = *(v3 + 16);
  v61 = v16;
  v62 = *(v3 + 48);
  type metadata accessor for StaticPrimarySettingsListItemProvider();
  inited = swift_initStackObject();
  v18 = v62;
  v19 = v61;
  *(inited + 16) = v60;
  *(inited + 32) = v19;
  *(inited + 48) = v18;
  sub_10002698C(&v60, v59);
  sub_10005AFAC(a1, v11);
  swift_setDeallocating();
  sub_10002C5C0(*(inited + 16), *(inited + 24), *(inited + 32), *(inited + 40), *(inited + 48));
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_1000068B0(v11, &unk_10015EDB0, &unk_100111C70);
    return (*(v13 + 56))(a2, 1, 1, v12);
  }

  v21 = sub_10002C634(v11, v15);
  v24 = *(v12 + 24);
  v25 = *&v15[v24];
  v26 = *(v3 + 56);
  if (v26 == 1)
  {
    v33 = *(v3 + 64);
    if (v33 > 5)
    {
      goto LABEL_11;
    }

    v58 = v6;
    if (((1 << v33) & 0x19) != 0)
    {
      v34 = sub_1000E80A8();
      v35 = 0;
      if (*(v34 + 16))
      {
LABEL_10:
        v36 = v34;
        KeyPath = swift_getKeyPath();
        v56 = v24;
        v57 = a2;
        v55 = &v54;
        __chkstk_darwin(KeyPath);
        v59[0] = v36;
        sub_100057930();
        ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

        v24 = v56;

        a2 = v57;
LABEL_16:
        v46 = v25 | 4;
        v47 = sub_100029F88();
        v49 = v48;
        LODWORD(v56) = v50;
        v51 = sub_1000E9A94(*(v3 + 64));
        v52 = *(v3 + OBJC_IVAR____TtC11SettingsApp19VPNListItemProvider____lazy_storage___toggleState);
        *v8 = v47;
        *(v8 + 1) = v49;
        v8[16] = v56;
        *(v8 + 3) = v51;
        *(v8 + 4) = v53;
        *(v8 + 5) = v52;
        swift_storeEnumTagMultiPayload();

LABEL_17:
        sub_10002CE90(v8, &v15[*(v12 + 20)]);
        *&v15[v24] = v46;
        sub_10002C7EC(v15, a2);
        (*(v13 + 56))(a2, 0, 1, v12);
        return sub_10002D10C(v15);
      }
    }

    else
    {
      v34 = sub_1000E80A8();
      v35 = 1;
      if ((*(v34 + 16) & 1) == 0)
      {
        goto LABEL_10;
      }
    }

    *(v34 + 16) = v35;

    goto LABEL_16;
  }

  if (v26 == 2)
  {
    v55 = *&v15[v24];
    v56 = v24;
    v57 = a2;
    v58 = v6;
    if (*(v3 + 49) == 1)
    {
      v27 = [objc_opt_self() mainBundle];
      v63._object = 0x800000010011EB70;
      v28._countAndFlagsBits = 0x65522026204E5056;
      v28._object = 0xEC0000007379616CLL;
      v29._countAndFlagsBits = 0;
      v29._object = 0xE000000000000000;
      v63._countAndFlagsBits = 0xD000000000000014;
      v30 = NSLocalizedString(_:tableName:bundle:value:comment:)(v28, 0, v27, v29, v63);
      countAndFlagsBits = v30._countAndFlagsBits;
      object = v30._object;
    }

    else
    {
      countAndFlagsBits = sub_10002A770(v21, v22, v23);
      object = v38;
    }

    v39 = sub_100029F88();
    v41 = v40;
    v43 = v42;
    v44 = sub_1000E9808(*(v3 + 64));
    *v8 = v39;
    *(v8 + 1) = v41;
    v8[16] = v43;
    *(v8 + 3) = countAndFlagsBits;
    *(v8 + 4) = object;
    *(v8 + 5) = v44;
    *(v8 + 6) = v45;
    swift_storeEnumTagMultiPayload();
    v24 = v56;
    a2 = v57;
    v46 = v55;
    goto LABEL_17;
  }

LABEL_11:
  (*(v13 + 56))(a2, 1, 1, v12);
  return sub_10002D10C(v15);
}

uint64_t sub_1000E9808(uint64_t a1)
{
  countAndFlagsBits = 0;
  if (a1 > 2)
  {
    switch(a1)
    {
      case 3:
        v2 = [objc_opt_self() mainBundle];
        v8 = 0x8000000100120D70;
        v4 = 0x8000000100126010;
        v3 = 0x1000000000000010;
        goto LABEL_14;
      case 4:
        v2 = [objc_opt_self() mainBundle];
        v8 = 0x8000000100120D70;
        v3 = 0x6576697463616E49;
        v4 = 0xE800000000000000;
        goto LABEL_14;
      case 5:
        v2 = [objc_opt_self() mainBundle];
        v8 = 0x8000000100120D70;
        v3 = 28239;
        v4 = 0xE200000000000000;
        goto LABEL_14;
    }
  }

  else
  {
    switch(a1)
    {
      case 0:
        v2 = [objc_opt_self() mainBundle];
        v8 = 0x8000000100120D70;
        v3 = 0x6E6E6F4320746F4ELL;
        v4 = 0xED00006465746365;
        goto LABEL_14;
      case 1:
        v2 = [objc_opt_self() mainBundle];
        v8 = 0x8000000100120D70;
        v3 = 0x697463656E6E6F43;
        v4 = 0xAD0000A680E2676ELL;
        goto LABEL_14;
      case 2:
        v2 = [objc_opt_self() mainBundle];
        v8 = 0x8000000100120D70;
        v3 = 0x657463656E6E6F43;
        v4 = 0xE900000000000064;
LABEL_14:
        v5._countAndFlagsBits = 0;
        v5._object = 0xE000000000000000;
        v6 = 0xD000000000000010;
        countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(*&v3, 0, v2, v5, *(&v8 - 1))._countAndFlagsBits;

        break;
    }
  }

  return countAndFlagsBits;
}

uint64_t sub_1000E9A94(uint64_t a1)
{
  if (a1 == 3)
  {
    v1 = [objc_opt_self() mainBundle];
    v8 = 0x800000010011FBA0;
    v3 = 0x1000000000000014;
    v2 = 0x8000000100126030;
  }

  else if (a1 == 1)
  {
    v1 = [objc_opt_self() mainBundle];
    v8 = 0x800000010011FBA0;
    v2 = 0x8000000100126050;
    v3 = 0x1000000000000011;
  }

  else
  {
    v1 = [objc_opt_self() mainBundle];
    v8 = 0x800000010011FBA0;
    v3 = 5132374;
    v2 = 0xE300000000000000;
  }

  v4._countAndFlagsBits = 0;
  v4._object = 0xE000000000000000;
  v5 = 0xD000000000000014;
  countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(*&v3, 0, v1, v4, *(&v8 - 1))._countAndFlagsBits;

  return countAndFlagsBits;
}

uint64_t sub_1000E9C94(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10000A924;

  return sub_1000E8A08(a1, v4, v5, v6);
}

unint64_t sub_1000E9D48()
{
  result = qword_100160EC0;
  if (!qword_100160EC0)
  {
    sub_100052374(&qword_10015EA00, &qword_100118250);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100160EC0);
  }

  return result;
}

uint64_t sub_1000E9DAC()
{
  v1 = v0;
  v2 = sub_10004DED0(&qword_10015E9A8, &unk_100115C80);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v20 - v4;
  v6 = sub_10004DED0(&qword_10015F9A8, &qword_100117210);
  __chkstk_darwin(v6 - 8);
  v8 = v20 - v7;
  v9 = OBJC_IVAR____TtC11SettingsApp56WalletAndApplePayOrPaymentAndContactlessListItemProvider_observationTasks;
  swift_beginAccess();
  v10 = *(*(v1 + v9) + 16);
  if (v10)
  {
    v20[1] = v9;
    v21 = v3;
    v22 = v2;

    v11 = 32;
    do
    {

      Task.cancel()();

      v11 += 8;
      --v10;
    }

    while (v10);

    v3 = v21;
    v2 = v22;
  }

  v12 = OBJC_IVAR____TtC11SettingsApp56WalletAndApplePayOrPaymentAndContactlessListItemProvider_updateStreamContinuation;
  swift_beginAccess();
  sub_100059CA0(v1 + v12, v8, &qword_10015F9A8, &qword_100117210);
  v13 = sub_10004DED0(&unk_10015FAA0, qword_100112870);
  v14 = *(v13 - 8);
  result = (*(v14 + 48))(v8, 1, v13);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    AsyncStream.Continuation.finish()();
    (*(v14 + 8))(v8, v13);
    v16 = OBJC_IVAR____TtC11SettingsApp56WalletAndApplePayOrPaymentAndContactlessListItemProvider_stateUpdateStreamContinuation;
    (*(v3 + 16))(v5, v1 + OBJC_IVAR____TtC11SettingsApp56WalletAndApplePayOrPaymentAndContactlessListItemProvider_stateUpdateStreamContinuation, v2);
    AsyncStream.Continuation.finish()();
    v17 = *(v3 + 8);
    v17(v5, v2);
    sub_10002C5C0(*(v1 + 16), *(v1 + 24), *(v1 + 32), *(v1 + 40), *(v1 + 48));
    sub_1000122B4(v1 + 56);
    sub_1000068B0(v1 + OBJC_IVAR____TtC11SettingsApp56WalletAndApplePayOrPaymentAndContactlessListItemProvider_updateStream, &unk_10015F9B0, &unk_1001170F0);
    sub_1000068B0(v1 + v12, &qword_10015F9A8, &qword_100117210);

    v18 = OBJC_IVAR____TtC11SettingsApp56WalletAndApplePayOrPaymentAndContactlessListItemProvider_stateUpdateStream;
    v19 = sub_10004DED0(&qword_10015E9B0, &qword_100118370);
    (*(*(v19 - 8) + 8))(v1 + v18, v19);
    v17((v1 + v16), v2);

    return v1;
  }

  return result;
}

uint64_t sub_1000EA130()
{
  sub_1000E9DAC();

  return swift_deallocClassInstance();
}

uint64_t sub_1000EA190()
{
  v1 = v0;
  v110 = sub_10004DED0(&unk_10015C570, &qword_100112440);
  v109 = *(v110 - 8);
  __chkstk_darwin(v110);
  v108 = &v102 - v2;
  v3 = sub_10004DED0(&unk_10015D490, &qword_100112150);
  v4 = __chkstk_darwin(v3 - 8);
  v113 = &v102 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v4);
  v126 = &v102 - v7;
  __chkstk_darwin(v6);
  v133 = &v102 - v8;
  v9 = sub_10004DED0(&qword_10015F9A8, &qword_100117210);
  __chkstk_darwin(v9 - 8);
  v134 = &v102 - v10;
  v11 = sub_10004DED0(&unk_10015F9B0, &unk_1001170F0);
  __chkstk_darwin(v11 - 8);
  v132 = &v102 - v12;
  v13 = sub_10004DED0(&qword_10015C580, &unk_1001123B0);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = (&v102 - v15);
  v17 = sub_10004DED0(&unk_10015FAA0, qword_100112870);
  v114 = *(v17 - 8);
  v18 = *(v114 + 64);
  v19 = __chkstk_darwin(v17);
  v125 = &v102 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = &v102 - v20;
  v22 = sub_10004DED0(&qword_10015C900, &qword_1001123C0);
  v23 = *(v22 - 8);
  v24 = __chkstk_darwin(v22);
  v106 = &v102 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = v25;
  __chkstk_darwin(v24);
  v27 = &v102 - v26;
  *v16 = 1;
  (*(v14 + 104))(v16, enum case for AsyncStream.Continuation.BufferingPolicy.bufferingNewest<A>(_:), v13);
  static AsyncStream.makeStream(of:bufferingPolicy:)();
  (*(v14 + 8))(v16, v13);
  v28 = *(v23 + 16);
  v29 = v132;
  v111 = v27;
  v104 = v23 + 16;
  v103 = v28;
  v28(v132, v27, v22);
  v112 = v23;
  v30 = *(v23 + 56);
  v31 = v29;
  v107 = v22;
  v30(v29, 0, 1, v22);
  v32 = OBJC_IVAR____TtC11SettingsApp56WalletAndApplePayOrPaymentAndContactlessListItemProvider_updateStream;
  swift_beginAccess();
  sub_1000BB1A0(v31, v1 + v32, &unk_10015F9B0, &unk_1001170F0);
  swift_endAccess();
  v33 = v114;
  v34 = v114 + 16;
  v35 = *(v114 + 16);
  v36 = v134;
  v35(v134, v21, v17);
  (*(v33 + 56))(v36, 0, 1, v17);
  v37 = OBJC_IVAR____TtC11SettingsApp56WalletAndApplePayOrPaymentAndContactlessListItemProvider_updateStreamContinuation;
  swift_beginAccess();
  sub_1000BB1A0(v36, v1 + v37, &qword_10015F9A8, &qword_100117210);
  swift_endAccess();
  v38 = v125;
  v127 = v21;
  v39 = v21;
  v40 = v126;
  v122 = v34;
  v121 = v35;
  v35(v125, v39, v17);
  v41 = *(v33 + 80);
  v123 = v18;
  v42 = swift_allocObject();
  v43 = *(v33 + 32);
  v128 = v17;
  v119 = v33 + 32;
  v118 = v43;
  v43((v42 + ((v41 + 16) & ~v41)), v38, v17);
  aBlock[4] = sub_1000ECE7C;
  aBlock[5] = v42;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000411C;
  aBlock[3] = &unk_100151FB0;
  v44 = _Block_copy(aBlock);
  v45 = [objc_opt_self() contextWithBundleId:0 onChange:v44];
  _Block_release(v44);

  v46 = *(v1 + OBJC_IVAR____TtC11SettingsApp56WalletAndApplePayOrPaymentAndContactlessListItemProvider_appSettingsContext);
  *(v1 + OBJC_IVAR____TtC11SettingsApp56WalletAndApplePayOrPaymentAndContactlessListItemProvider_appSettingsContext) = v45;

  v124 = v139;
  v139[0] = NSCurrentLocaleDidChangeNotification;
  v139[1] = UIApplicationWillEnterForegroundNotification;
  v131 = type metadata accessor for MainActor();
  v47 = OBJC_IVAR____TtC11SettingsApp56WalletAndApplePayOrPaymentAndContactlessListItemProvider_observationTasks;
  v48 = type metadata accessor for TaskPriority();
  v49 = *(v48 - 8);
  v50 = *(v49 + 56);
  v49 += 56;
  v130 = v50;
  v120 = v41;
  v117 = (v41 + 40) & ~v41;
  v116 = (v49 - 8);
  v129 = v49;
  v115 = (v49 - 48);
  v51 = NSCurrentLocaleDidChangeNotification;
  v52 = UIApplicationWillEnterForegroundNotification;
  v53 = 0;
  v54 = 0;
  v134 = v48;
  do
  {
    v55 = v47;
    LODWORD(v132) = v53;
    v56 = v124[v54];
    v57 = v133;
    v130(v133, 1, 1, v134);
    v58 = v125;
    v59 = v128;
    v121(v125, v127, v128);
    v60 = v56;
    v61 = static MainActor.shared.getter();
    v62 = v117;
    v63 = swift_allocObject();
    *(v63 + 2) = v61;
    *(v63 + 3) = &protocol witness table for MainActor;
    *(v63 + 4) = v60;
    v118(&v63[v62], v58, v59);
    v64 = v57;
    v65 = v134;
    sub_100059CA0(v64, v40, &unk_10015D490, &qword_100112150);
    LODWORD(v61) = (*v116)(v40, 1, v65);

    if (v61 == 1)
    {
      sub_1000068B0(v40, &unk_10015D490, &qword_100112150);
    }

    else
    {
      TaskPriority.rawValue.getter();
      (*v115)(v40, v65);
    }

    v66 = v1;
    v67 = *(v63 + 2);
    swift_unknownObjectRetain();

    v47 = v55;
    if (v67)
    {
      swift_getObjectType();
      v68 = dispatch thunk of Actor.unownedExecutor.getter();
      v70 = v69;
      swift_unknownObjectRelease();
    }

    else
    {
      v68 = 0;
      v70 = 0;
    }

    sub_1000068B0(v133, &unk_10015D490, &qword_100112150);
    v71 = swift_allocObject();
    *(v71 + 16) = &unk_100118338;
    *(v71 + 24) = v63;
    if (v70 | v68)
    {
      v135 = 0;
      v136 = 0;
      v137 = v68;
      v138 = v70;
    }

    v72 = swift_task_create();
    v1 = v66;
    swift_beginAccess();
    v73 = *(v66 + v55);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v66 + v55) = v73;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v73 = sub_100015698(0, v73[2] + 1, 1, v73);
      *(v66 + v55) = v73;
    }

    v40 = v126;
    v76 = v73[2];
    v75 = v73[3];
    if (v76 >= v75 >> 1)
    {
      v73 = sub_100015698((v75 > 1), v76 + 1, 1, v73);
    }

    v73[2] = v76 + 1;
    v73[v76 + 4] = v72;
    *(v1 + v55) = v73;
    swift_endAccess();

    v53 = 1;
    v54 = 1;
  }

  while ((v132 & 1) == 0);
  type metadata accessor for Name(0);
  swift_arrayDestroy();
  v130(v113, 1, 1, v65);
  v77 = swift_allocObject();
  swift_weakInit();
  v78 = v106;
  v79 = v107;
  v103(v106, v111, v107);

  v80 = static MainActor.shared.getter();
  v81 = v112;
  v82 = (*(v112 + 80) + 32) & ~*(v112 + 80);
  v83 = (v105 + v82 + 7) & 0xFFFFFFFFFFFFFFF8;
  v84 = swift_allocObject();
  *(v84 + 16) = v80;
  *(v84 + 24) = &protocol witness table for MainActor;
  (*(v81 + 32))(v84 + v82, v78, v79);
  *(v84 + v83) = v77;
  v85 = v113;

  v86 = sub_100094AF4(0, 0, v85, &unk_100118350, v84);
  swift_beginAccess();
  v87 = *(v1 + v47);

  v88 = swift_isUniquelyReferenced_nonNull_native();
  *(v1 + v47) = v87;
  if ((v88 & 1) == 0)
  {
    v87 = sub_100015698(0, v87[2] + 1, 1, v87);
    *(v1 + v47) = v87;
  }

  v90 = v87[2];
  v89 = v87[3];
  if (v90 >= v89 >> 1)
  {
    v87 = sub_100015698((v89 > 1), v90 + 1, 1, v87);
  }

  v87[2] = v90 + 1;
  v87[v90 + 4] = v86;
  *(v1 + v47) = v87;
  swift_endAccess();
  v130(v85, 1, 1, v134);
  v91 = swift_allocObject();
  swift_weakInit();

  v92 = static MainActor.shared.getter();
  v93 = swift_allocObject();
  v93[2] = v92;
  v93[3] = &protocol witness table for MainActor;
  v93[4] = v91;

  v94 = sub_100094AF4(0, 0, v85, &unk_100118360, v93);
  swift_beginAccess();
  v95 = *(v1 + v47);

  v96 = swift_isUniquelyReferenced_nonNull_native();
  *(v1 + v47) = v95;
  if ((v96 & 1) == 0)
  {
    v95 = sub_100015698(0, v95[2] + 1, 1, v95);
    *(v1 + v47) = v95;
  }

  v98 = v95[2];
  v97 = v95[3];
  if (v98 >= v97 >> 1)
  {
    v95 = sub_100015698((v97 > 1), v98 + 1, 1, v95);
  }

  v95[2] = v98 + 1;
  v95[v98 + 4] = v94;
  *(v1 + v47) = v95;
  swift_endAccess();
  v99 = v108;
  v100 = v127;
  AsyncStream.Continuation.yield<A>()();

  (*(v109 + 8))(v99, v110);
  (*(v114 + 8))(v100, v128);
  return (*(v112 + 8))(v111, v79);
}

uint64_t sub_1000EB07C()
{
  v0 = sub_10004DED0(&unk_10015C570, &qword_100112440);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v5 - v2;
  AsyncStream.Continuation.yield<A>()();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_1000EB148(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v6 = sub_10004DED0(&unk_10015C570, &qword_100112440);
  v5[5] = v6;
  v5[6] = *(v6 - 8);
  v5[7] = swift_task_alloc();
  sub_10004DED0(&unk_10015FCF0, &unk_100117B60);
  v5[8] = swift_task_alloc();
  v7 = type metadata accessor for NSNotificationCenter.Notifications.Iterator();
  v5[9] = v7;
  v5[10] = *(v7 - 8);
  v5[11] = swift_task_alloc();
  v5[12] = type metadata accessor for MainActor();
  v5[13] = static MainActor.shared.getter();
  v9 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[14] = v9;
  v5[15] = v8;

  return _swift_task_switch(sub_1000EB2E0, v9, v8);
}

uint64_t sub_1000EB2E0()
{
  v1 = [objc_opt_self() defaultCenter];
  NSNotificationCenter.notifications(named:object:)();

  NSNotificationCenter.Notifications.makeAsyncIterator()();
  v0[16] = static MainActor.shared.getter();
  v2 = sub_1000E1930();
  v3 = swift_task_alloc();
  v0[17] = v3;
  *v3 = v0;
  v3[1] = sub_1000EB3E8;
  v4 = v0[8];
  v5 = v0[9];

  return dispatch thunk of AsyncIteratorProtocol.next()(v4, v5, v2);
}

uint64_t sub_1000EB3E8()
{
  v2 = *v1;
  *(*v1 + 144) = v0;

  v3 = *(v2 + 128);
  if (v0)
  {
    if (v3)
    {
      swift_getObjectType();
      v4 = dispatch thunk of Actor.unownedExecutor.getter();
      v6 = v5;
    }

    else
    {
      v4 = 0;
      v6 = 0;
    }

    v7 = sub_1000EB7AC;
  }

  else
  {
    if (v3)
    {
      swift_getObjectType();
      v4 = dispatch thunk of Actor.unownedExecutor.getter();
      v6 = v8;
    }

    else
    {
      v4 = 0;
      v6 = 0;
    }

    v7 = sub_1000EB580;
  }

  return _swift_task_switch(v7, v4, v6);
}

uint64_t sub_1000EB580()
{

  v1 = *(v0 + 112);
  v2 = *(v0 + 120);

  return _swift_task_switch(sub_1000EB5E4, v1, v2);
}

uint64_t sub_1000EB5E4()
{
  v1 = v0[8];
  v2 = type metadata accessor for Notification();
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    (*(v0[10] + 8))(v0[11], v0[9]);

    v3 = v0[1];

    return v3();
  }

  else
  {
    v6 = v0[6];
    v5 = v0[7];
    v7 = v0[5];
    AsyncStream.Continuation.yield<A>()();
    (*(v6 + 8))(v5, v7);
    sub_1000068B0(v1, &unk_10015FCF0, &unk_100117B60);
    v0[16] = static MainActor.shared.getter();
    v8 = sub_1000E1930();
    v9 = swift_task_alloc();
    v0[17] = v9;
    *v9 = v0;
    v9[1] = sub_1000EB3E8;
    v10 = v0[8];
    v11 = v0[9];

    return dispatch thunk of AsyncIteratorProtocol.next()(v10, v11, v8);
  }
}

uint64_t sub_1000EB7AC()
{
  *(v0 + 16) = *(v0 + 144);
  sub_10004DED0(&unk_10015C800, &unk_100112BC0);
  swift_dynamicCast();

  return swift_willThrowTypedImpl();
}

uint64_t sub_1000EB838(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[13] = a4;
  v5[14] = a5;
  v6 = sub_10004DED0(&qword_100161008, &qword_100118378);
  v5[15] = v6;
  v5[16] = *(v6 - 8);
  v5[17] = swift_task_alloc();
  v5[18] = sub_10004DED0(&unk_10015F9E0, &unk_100112BB0);
  v5[19] = swift_task_alloc();
  v5[20] = type metadata accessor for MainActor();
  v5[21] = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[22] = v8;
  v5[23] = v7;

  return _swift_task_switch(sub_1000EB978, v8, v7);
}

uint64_t sub_1000EB978()
{
  v1 = v0[19];
  sub_10004DED0(&qword_10015C900, &qword_1001123C0);
  sub_10001AE08();
  AsyncSequence.debounce<>(for:tolerance:)();
  v2 = AsyncDebounceSequence.makeAsyncIterator()();
  v0[24] = v2;
  sub_1000068B0(v1, &unk_10015F9E0, &unk_100112BB0);
  v0[11] = v2;
  swift_beginAccess();
  v0[25] = static MainActor.shared.getter();
  v3 = swift_task_alloc();
  v0[26] = v3;
  v4 = sub_10004DED0(&unk_10015F9F0, &qword_100112470);
  *v3 = v0;
  v3[1] = sub_1000EBAE0;

  return AsyncDebounceSequence.Iterator.next()(v0 + 31, v4);
}

uint64_t sub_1000EBAE0()
{
  v2 = *v1;
  *(v2 + 216) = v0;

  v3 = *(v2 + 200);
  if (v0)
  {
    if (v3)
    {
      swift_getObjectType();
      v4 = dispatch thunk of Actor.unownedExecutor.getter();
      v6 = v5;
    }

    else
    {
      v4 = 0;
      v6 = 0;
    }

    v7 = sub_1000E925C;
  }

  else
  {
    *(v2 + 251) = *(v2 + 248);
    if (v3)
    {
      swift_getObjectType();
      v4 = dispatch thunk of Actor.unownedExecutor.getter();
      v6 = v8;
    }

    else
    {
      v4 = 0;
      v6 = 0;
    }

    v7 = sub_1000EBC80;
  }

  return _swift_task_switch(v7, v4, v6);
}

uint64_t sub_1000EBC80()
{

  v1 = *(v0 + 176);
  v2 = *(v0 + 184);

  return _swift_task_switch(sub_1000EBCE4, v1, v2);
}

uint64_t sub_1000EBCE4()
{
  if (*(v0 + 251) == 1 || (Strong = swift_weakLoadStrong(), (*(v0 + 224) = Strong) == 0))
  {
LABEL_5:

    v2 = *(v0 + 8);

    return v2();
  }

  if (static Task<>.isCancelled.getter())
  {

    goto LABEL_5;
  }

  return _swift_task_switch(sub_1000EBDDC, 0, 0);
}

uint64_t sub_1000EBDDC()
{
  v0[6] = nullsub_1;
  v0[7] = 0;
  v0[2] = _NSConcreteStackBlock;
  v0[3] = 1107296256;
  v0[4] = sub_10000411C;
  v0[5] = &unk_1001520A0;
  v1 = _Block_copy(v0 + 2);
  v2 = [objc_opt_self() contextWithBundleId:0 onChange:v1];
  v0[29] = v2;
  _Block_release(v1);

  v3 = [v2 topLevelSettingsEntryType];
  if (!v3)
  {
    goto LABEL_6;
  }

  if (v3 == 1)
  {
    v15 = 3;
  }

  else
  {
    if (v3 == 2)
    {
      v4 = MobileGestalt_get_current_device();
      if (!v4)
      {
        __break(1u);
        return withCheckedContinuation<A>(isolation:function:_:)(v4, v5, v6, v7, v8, v9, v10, v11);
      }

      v12 = v4;
      iPadCapability = MobileGestalt_get_iPadCapability();

      if (iPadCapability)
      {
LABEL_6:
        v14 = swift_task_alloc();
        v0[30] = v14;
        *v14 = v0;
        v14[1] = sub_1000EBFEC;
        v11 = &type metadata for PaymentAndContactlessState;
        v9 = sub_1000ECEE8;
        v4 = v0 + 250;
        v8 = 0x8000000100126190;
        v5 = 0;
        v6 = 0;
        v7 = 0xD000000000000025;
        v10 = 0;

        return withCheckedContinuation<A>(isolation:function:_:)(v4, v5, v6, v7, v8, v9, v10, v11);
      }
    }

    v15 = 0;
  }

  *(v0 + 252) = v15;

  v16 = v0[22];
  v17 = v0[23];

  return _swift_task_switch(sub_1000EC154, v16, v17);
}

uint64_t sub_1000EBFEC()
{

  return _swift_task_switch(sub_1000EC0E8, 0, 0);
}

uint64_t sub_1000EC0E8()
{
  *(v0 + 252) = *(v0 + 250);

  v1 = *(v0 + 176);
  v2 = *(v0 + 184);

  return _swift_task_switch(sub_1000EC154, v1, v2);
}

uint64_t sub_1000EC154()
{
  v2 = *(v0 + 128);
  v1 = *(v0 + 136);
  v3 = *(v0 + 120);
  *(v0 + 249) = *(v0 + 252);
  sub_10004DED0(&qword_10015E9A8, &unk_100115C80);
  AsyncStream.Continuation.yield(_:)();

  (*(v2 + 8))(v1, v3);
  *(v0 + 200) = static MainActor.shared.getter();
  v4 = swift_task_alloc();
  *(v0 + 208) = v4;
  v5 = sub_10004DED0(&unk_10015F9F0, &qword_100112470);
  *v4 = v0;
  v4[1] = sub_1000EBAE0;

  return AsyncDebounceSequence.Iterator.next()(v0 + 248, v5);
}

uint64_t sub_1000EC28C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[8] = a4;
  v5 = sub_10004DED0(&qword_100161000, &qword_100118368);
  v4[9] = v5;
  v4[10] = *(v5 - 8);
  v4[11] = swift_task_alloc();
  v6 = sub_10004DED0(&qword_10015E9B0, &qword_100118370);
  v4[12] = v6;
  v4[13] = *(v6 - 8);
  v4[14] = swift_task_alloc();
  v4[15] = swift_task_alloc();
  v4[16] = type metadata accessor for MainActor();
  v4[17] = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[18] = v8;
  v4[19] = v7;

  return _swift_task_switch(sub_1000EC404, v8, v7);
}

uint64_t sub_1000EC404()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v2 = v0[14];
    v3 = v0[15];
    v4 = v0[12];
    v5 = v0[13];
    (*(v5 + 16))(v2, Strong + OBJC_IVAR____TtC11SettingsApp56WalletAndApplePayOrPaymentAndContactlessListItemProvider_stateUpdateStream, v4);

    (*(v5 + 32))(v3, v2, v4);
    AsyncStream.makeAsyncIterator()();
    swift_beginAccess();
    v6 = static MainActor.shared.getter();
    v0[20] = v6;
    v7 = swift_task_alloc();
    v0[21] = v7;
    *v7 = v0;
    v7[1] = sub_1000EC5DC;
    v8 = v0[9];

    return AsyncStream.Iterator.next(isolation:)(v0 + 22, v6, &protocol witness table for MainActor, v8);
  }

  else
  {

    v9 = v0[1];

    return v9();
  }
}

uint64_t sub_1000EC5DC()
{
  v1 = *v0;

  v2 = *(v1 + 152);
  v3 = *(v1 + 144);

  return _swift_task_switch(sub_1000EC720, v3, v2);
}

uint64_t sub_1000EC720()
{
  v1 = *(v0 + 176);
  if (v1 == 4 || (Strong = swift_weakLoadStrong()) == 0)
  {
LABEL_5:
    v4 = *(v0 + 120);
    v5 = *(v0 + 96);
    v6 = *(v0 + 104);
    v8 = *(v0 + 80);
    v7 = *(v0 + 88);
    v9 = *(v0 + 72);

    (*(v8 + 8))(v7, v9);
    (*(v6 + 8))(v4, v5);

    v10 = *(v0 + 8);

    return v10();
  }

  v3 = Strong;
  if (static Task<>.isCancelled.getter())
  {

    goto LABEL_5;
  }

  if (v1 != *(v3 + 49) && swift_unknownObjectWeakLoadStrong())
  {
    type metadata accessor for PrimarySettingsListModel(0);
    sub_1000A2E28("Payment & Contactless", 21, 2);
    swift_unknownObjectRelease();
  }

  *(v3 + 49) = v1;

  v12 = static MainActor.shared.getter();
  *(v0 + 160) = v12;
  v13 = swift_task_alloc();
  *(v0 + 168) = v13;
  *v13 = v0;
  v13[1] = sub_1000EC5DC;
  v14 = *(v0 + 72);

  return AsyncStream.Iterator.next(isolation:)(v0 + 176, v12, &protocol witness table for MainActor, v14);
}

uint64_t sub_1000EC934@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = type metadata accessor for PrimarySettingsListItemViewType(0);
  v7 = __chkstk_darwin(v6);
  v9 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v7);
  v12 = &v47 - v11;
  __chkstk_darwin(v10);
  v14 = &v47 - v13;
  v15 = sub_10004DED0(&unk_10015EDB0, &unk_100111C70);
  __chkstk_darwin(v15 - 8);
  v17 = &v47 - v16;
  v18 = type metadata accessor for PrimarySettingsListItemModel(0);
  __chkstk_darwin(v18);
  v21 = &v47 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *(v3 + 49);
  if (*(v3 + 49))
  {
    v50 = v6;
    v51 = a2;
    if (v22 == 3)
    {
      v23 = 33;
    }

    else
    {
      v23 = 32;
    }

    v53 = v23;
    v54 = 0uLL;
    v55 = 6;
    v52 = v19;
    type metadata accessor for StaticPrimarySettingsListItemProvider();
    inited = swift_initStackObject();
    v25 = v54;
    *(inited + 16) = v53;
    *(inited + 32) = v25;
    *(inited + 48) = v55;
    sub_100029920(v23, 0, 0, 0, 6u);
    sub_10005AFAC(a1, v17);
    swift_setDeallocating();
    sub_10002C5C0(*(inited + 16), *(inited + 24), *(inited + 32), *(inited + 40), *(inited + 48));
    if ((*(v52 + 48))(v17, 1, v18) == 1)
    {
      sub_10002C5C0(v23, 0, 0, 0, 6u);
      sub_1000068B0(v17, &unk_10015EDB0, &unk_100111C70);
      return (*(v52 + 56))(v51, 1, 1, v18);
    }

    sub_1000D0C28(v17, v21, type metadata accessor for PrimarySettingsListItemModel);
    v28 = *(v3 + 49);
    v29 = sub_100029F88();
    v32 = v29;
    if (v28 == 2)
    {
      v48 = v30;
      v49 = v31;
      countAndFlagsBits = sub_10002A770(v29, v30, v31);
      object = v39;
      sub_10002C5C0(v23, 0, 0, 0, 6u);
    }

    else
    {
      if (v28 == 3)
      {
        v33 = v31;
        v34 = v30;
        v35 = sub_10002A770(v29, v30, v31);
        v37 = v36;
        sub_10002C5C0(v23, 0, 0, 0, 6u);
        *v12 = v32;
        *(v12 + 1) = v34;
        v12[16] = v33;
        *(v12 + 3) = v35;
        *(v12 + 4) = v37;
        swift_storeEnumTagMultiPayload();
LABEL_16:
        v46 = v51;
        sub_1000D0C28(v12, v14, type metadata accessor for PrimarySettingsListItemViewType);
        sub_10002CE90(v14, &v21[*(v18 + 20)]);
        sub_10002C7EC(v21, v46);
        (*(v52 + 56))(v46, 0, 1, v18);
        return sub_10002D10C(v21);
      }

      v48 = v30;
      v49 = v31;
      sub_10002C5C0(v23, 0, 0, 0, 6u);
      v41 = [objc_opt_self() mainBundle];
      v57._object = 0x800000010011EB70;
      v42._countAndFlagsBits = 0x74656C6C6157;
      v42._object = 0xE600000000000000;
      v43._countAndFlagsBits = 0;
      v43._object = 0xE000000000000000;
      v57._countAndFlagsBits = 0xD000000000000014;
      v44 = NSLocalizedString(_:tableName:bundle:value:comment:)(v42, 0, v41, v43, v57);
      countAndFlagsBits = v44._countAndFlagsBits;
      object = v44._object;
    }

    v45 = v48;
    *v9 = v32;
    *(v9 + 1) = v45;
    v9[16] = v49;
    *(v9 + 3) = countAndFlagsBits;
    *(v9 + 4) = object;
    swift_storeEnumTagMultiPayload();
    sub_1000D0C28(v9, v12, type metadata accessor for PrimarySettingsListItemViewType);
    goto LABEL_16;
  }

  v27 = *(v19 + 56);

  return v27(a2, 1, 1, v18);
}

uint64_t sub_1000ECE7C()
{
  sub_10004DED0(&unk_10015FAA0, qword_100112870);

  return sub_1000EB07C();
}

void sub_1000ECEE8(uint64_t a1)
{
  v2 = sub_10004DED0(&qword_100161010, &unk_100118380);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = aBlock - v4;
  v6 = objc_opt_self();
  v7 = [objc_opt_self() sharedService];
  (*(v3 + 16))(v5, a1, v2);
  v8 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v9 = swift_allocObject();
  (*(v3 + 32))(v9 + v8, v5, v2);
  aBlock[4] = sub_1000ED6F8;
  aBlock[5] = v9;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000ED38C;
  aBlock[3] = &unk_1001520F0;
  v10 = _Block_copy(aBlock);

  [v6 shouldShowWalletInSettingsWithApplePaySupportInformation:v7 completion:v10];
  _Block_release(v10);
}

uint64_t sub_1000ED0D0(char a1, char a2, uint64_t a3)
{
  if (!a3)
  {
    if ([objc_opt_self() isPassLibraryAvailable])
    {
      v14 = [objc_allocWithZone(PKPassLibrary) init];
      v15 = [v14 passesOfType:1];

      sub_1000ED78C();
      v16 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      if (v16 >> 62)
      {
        v17 = _CocoaArrayWrapper.endIndex.getter();

        if (a1)
        {
LABEL_13:
          if (a2)
          {
            v18 = 2;
          }

          else
          {
            v18 = 1;
          }

          goto LABEL_17;
        }
      }

      else
      {
        v17 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);

        if (a1)
        {
          goto LABEL_13;
        }
      }

      if (v17)
      {
        goto LABEL_13;
      }
    }

    else if (a1)
    {
      goto LABEL_13;
    }

    v18 = 0;
LABEL_17:
    LOBYTE(v19) = v18;
    sub_10004DED0(&qword_100161010, &unk_100118380);
    return CheckedContinuation.resume(returning:)();
  }

  swift_errorRetain();
  if (qword_10015AAC8 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_10000659C(v3, qword_1001696D0);
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v19 = v7;
    *v6 = 136315138;
    swift_getErrorValue();
    v8 = Error.localizedDescription.getter();
    v10 = sub_100025CF0(v8, v9, &v19);

    *(v6 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v4, v5, "Failed to resolve wallet and apple pay visibility with error: %s", v6, 0xCu);
    sub_10000665C(v7);
  }

  LOBYTE(v19) = 0;
  sub_10004DED0(&qword_100161010, &unk_100118380);
  CheckedContinuation.resume(returning:)();
}

void sub_1000ED38C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = *(a1 + 32);

  v8 = a4;
  v7(a2, a3, a4);
}

uint64_t sub_1000ED414(uint64_t a1)
{
  v4 = *(sub_10004DED0(&unk_10015FAA0, qword_100112870) - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10000A924;

  return sub_1000EB148(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_1000ED518(uint64_t a1)
{
  v4 = *(sub_10004DED0(&qword_10015C900, &qword_1001123C0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10000ACE4;

  return sub_1000EB838(a1, v6, v7, v1 + v5, v8);
}

uint64_t sub_1000ED644(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10000ACE4;

  return sub_1000EC28C(a1, v4, v5, v6);
}

uint64_t sub_1000ED6F8(char a1, char a2, uint64_t a3)
{
  sub_10004DED0(&qword_100161010, &unk_100118380);

  return sub_1000ED0D0(a1, a2, a3);
}

unint64_t sub_1000ED78C()
{
  result = qword_100161018;
  if (!qword_100161018)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100161018);
  }

  return result;
}

Swift::Int sub_1000ED7E8()
{
  v1 = *(v0 + 8);
  Hasher.init(_seed:)();
  if (v1 > 1)
  {
    if (v1 == 2)
    {
      v2 = 2;
      goto LABEL_11;
    }

    if (v1 == 3)
    {
      v2 = 3;
      goto LABEL_11;
    }
  }

  else
  {
    if (!v1)
    {
      v2 = 0;
      goto LABEL_11;
    }

    if (v1 == 1)
    {
      v2 = 1;
LABEL_11:
      Hasher._combine(_:)(v2);
      return Hasher._finalize()();
    }
  }

  Hasher._combine(_:)(4uLL);
  String.hash(into:)();
  return Hasher._finalize()();
}

void sub_1000ED8A0(uint64_t a1)
{
  v2 = *(v1 + 8);
  if (v2 > 1)
  {
    if (v2 == 2)
    {
      v3 = 2;
      goto LABEL_13;
    }

    if (v2 == 3)
    {
      v3 = 3;
      goto LABEL_13;
    }
  }

  else
  {
    if (!v2)
    {
      v3 = 0;
      goto LABEL_13;
    }

    if (v2 == 1)
    {
      v3 = 1;
LABEL_13:
      Hasher._combine(_:)(v3);
      return;
    }
  }

  Hasher._combine(_:)(4uLL);

  String.hash(into:)();
}

Swift::Int sub_1000ED950(uint64_t a1)
{
  v2 = *(v1 + 8);
  Hasher.init(_seed:)();
  if (v2 > 1)
  {
    if (v2 == 2)
    {
      v3 = 2;
      goto LABEL_11;
    }

    if (v2 == 3)
    {
      v3 = 3;
      goto LABEL_11;
    }
  }

  else
  {
    if (!v2)
    {
      v3 = 0;
      goto LABEL_11;
    }

    if (v2 == 1)
    {
      v3 = 1;
LABEL_11:
      Hasher._combine(_:)(v3);
      return Hasher._finalize()();
    }
  }

  Hasher._combine(_:)(4uLL);
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_1000EDA04(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = a2[1];
  if (v5 > 1)
  {
    if (v5 != 2)
    {
      if (v5 == 3)
      {
        return v6 == 3;
      }

LABEL_10:
      if (v6 >= 4)
      {
        if (v4 != *a2 || v5 != v6)
        {
          return _stringCompareWithSmolCheck(_:_:expecting:)();
        }

        return 1;
      }

      return 0;
    }

    if (v6 != 2)
    {
      return 0;
    }
  }

  else
  {
    if (v5)
    {
      if (v5 == 1)
      {
        return v6 == 1;
      }

      goto LABEL_10;
    }

    if (v6)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_1000EDA90(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);
  if (a2 > 1)
  {
    if (a2 == 2)
    {
      if (v5 == 2)
      {
        goto LABEL_20;
      }

      goto LABEL_18;
    }

    if (a2 == 3)
    {
      if (v5 == 3)
      {
        goto LABEL_20;
      }

      goto LABEL_18;
    }
  }

  else
  {
    if (!a2)
    {
      if (!v5)
      {
        goto LABEL_20;
      }

      goto LABEL_18;
    }

    if (a2 == 1)
    {
      if (v5 == 1)
      {
        goto LABEL_20;
      }

      goto LABEL_18;
    }
  }

  if (v5 >= 4 && (*(v2 + 16) == a1 && v5 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
  {
    goto LABEL_20;
  }

LABEL_18:
  if (swift_unknownObjectWeakLoadStrong())
  {
    type metadata accessor for PrimarySettingsListModel(0);
    sub_1000A2E28("WiFi State", 10, 2);
    swift_unknownObjectRelease();
  }

LABEL_20:
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;

  return sub_1000EE8D8(v6, v7);
}

uint64_t sub_1000EDBC4()
{
  v1 = *(v0 + 72);
  if (v1 && ([v1 setHandler:0], (v2 = *(v0 + 72)) != 0))
  {
    [v2 stopMonitoring];
    v3 = *(v0 + 72);
  }

  else
  {
    v3 = 0;
  }

  *(v0 + 72) = 0;

  sub_1000EE8D8(*(v0 + 16), *(v0 + 24));
  sub_10002C5C0(*(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64));

  sub_1000122B4(v0 + 80);
  return v0;
}

uint64_t sub_1000EDC44()
{
  sub_1000EDBC4();

  return swift_deallocClassInstance();
}

uint64_t sub_1000EDC78(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1000EDC90(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFC && *(a1 + 16))
  {
    return (*a1 + 2147483644);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 3;
  if (v4 >= 5)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000EDCE4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFB)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483644;
    if (a3 >= 0x7FFFFFFC)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFC)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 3;
    }
  }

  return result;
}

void *sub_1000EDD40(void *result, int a2)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

unint64_t sub_1000EDD74()
{
  result = qword_1001610D8;
  if (!qword_1001610D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001610D8);
  }

  return result;
}

void sub_1000EDDC8()
{
  v1 = swift_allocObject();
  swift_weakInit();
  v2 = objc_allocWithZone(WFWiFiStateMonitor);
  v8[4] = sub_1000EE810;
  v8[5] = v1;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 1107296256;
  v8[2] = sub_1000EE7B0;
  v8[3] = &unk_1001521F8;
  v3 = _Block_copy(v8);

  v4 = [v2 initWithClient:0 handler:v3];
  _Block_release(v3);

  v5 = *(v0 + 72);
  *(v0 + 72) = v4;
  v6 = v4;

  if (v6)
  {
    v7 = String._bridgeToObjectiveC()();
    [v6 setIdentifier:v7];
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1000EDF2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_10004DED0(&unk_10015D490, &qword_100112150);
  __chkstk_darwin(v4 - 8);
  v6 = &v12 - v5;
  v7 = type metadata accessor for TaskPriority();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  v8 = swift_allocObject();
  swift_beginAccess();
  swift_weakLoadStrong();
  swift_weakInit();

  type metadata accessor for MainActor();

  v9 = static MainActor.shared.getter();
  v10 = swift_allocObject();
  v10[2] = v9;
  v10[3] = &protocol witness table for MainActor;
  v10[4] = v8;
  v10[5] = a2;

  sub_100094DF4(0, 0, v6, &unk_100118498, v10);
}

uint64_t sub_1000EE0B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v5[5] = a1;
  type metadata accessor for MainActor();
  v5[8] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1000EE154, v7, v6);
}

uint64_t sub_1000EE154()
{

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_1000EE1FC(*(v0 + 56));
  }

  **(v0 + 40) = Strong == 0;
  v2 = *(v0 + 8);

  return v2();
}

void *sub_1000EE1FC(uint64_t a1)
{
  result = *(v1 + 72);
  if (!result)
  {
    __break(1u);
    return result;
  }

  v4 = [result linkQuality];
  if (v4)
  {
    v5 = v4;
    v6 = [v4 ssid];

    if (v6)
    {
      v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v9 = v8;

      if (a1 > 2)
      {
        goto LABEL_5;
      }

LABEL_10:
      if (!a1)
      {
        goto LABEL_19;
      }

      if (a1 == 1)
      {

        v10 = 0;
        v11 = 2;
        goto LABEL_21;
      }

      if (a1 != 2)
      {
        goto LABEL_19;
      }

      goto LABEL_13;
    }
  }

  v7 = 0;
  v9 = 0;
  if (a1 <= 2)
  {
    goto LABEL_10;
  }

LABEL_5:
  if (a1 != 3)
  {
    if (a1 != 4)
    {
      if (a1 == 5)
      {
        goto LABEL_8;
      }

LABEL_19:

      v10 = 0;
      v11 = 1;
      goto LABEL_21;
    }

LABEL_13:
    if (v9)
    {
      v10 = v7;
    }

    else
    {
      v10 = 0;
    }

    if (v9)
    {
      v11 = v9;
    }

    else
    {
      v11 = 3;
    }

    goto LABEL_21;
  }

LABEL_8:

  v10 = 0;
  v11 = 3;
LABEL_21:

  return sub_1000EDA90(v10, v11);
}

uint64_t sub_1000EE328@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = sub_10004DED0(&unk_10015EDB0, &unk_100111C70);
  __chkstk_darwin(v6 - 8);
  v8 = &v43 - v7;
  v9 = type metadata accessor for PrimarySettingsListItemModel(0);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v3 + 48);
  v54 = *(v3 + 32);
  v55 = v13;
  v56 = *(v3 + 64);
  type metadata accessor for StaticPrimarySettingsListItemProvider();
  inited = swift_initStackObject();
  v15 = v56;
  v16 = v55;
  *(inited + 16) = v54;
  *(inited + 32) = v16;
  *(inited + 48) = v15;
  sub_10002698C(&v54, v53);
  sub_10005AFAC(a1, v8);
  swift_setDeallocating();
  sub_10002C5C0(*(inited + 16), *(inited + 24), *(inited + 32), *(inited + 40), *(inited + 48));
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_10002C8C0(v8);
    return (*(v10 + 56))(a2, 1, 1, v9);
  }

  else
  {
    sub_10002C634(v8, v12);
    v18 = *(v9 + 24);
    v19 = *&v12[v18];
    v21 = (v19 & 1) == 0 && *(v3 + 24) == 1;
    v22 = sub_100029F88();
    v51 = v23;
    v52 = v22;
    v50 = v24;
    v49 = sub_10002A770(v22, v23, v24);
    v48 = v25;
    v47 = sub_10002CCA8();
    v46 = v26;
    if (qword_10015AAF8 != -1)
    {
      swift_once();
    }

    v27 = v19 | v21;
    v28 = type metadata accessor for Logger();
    sub_10000659C(v28, qword_100169760);

    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v45 = a2;
      v32 = v31;
      v33 = swift_slowAlloc();
      v44 = v18;
      v34 = v27;
      v35 = v33;
      v53[0] = v33;
      *v32 = 136315138;
      v36 = sub_10002CCA8();
      v38 = sub_100025CF0(v36, v37, v53);

      *(v32 + 4) = v38;
      _os_log_impl(&_mh_execute_header, v29, v30, "[WiFi] Top-Level Settings Wi-Fi cell displays %s", v32, 0xCu);
      sub_10000665C(v35);
      v27 = v34;
      v18 = v44;

      a2 = v45;
    }

    v39 = &v12[*(v9 + 20)];
    sub_10002C758(v39, type metadata accessor for PrimarySettingsListItemViewType);
    v40 = v51;
    *v39 = v52;
    *(v39 + 8) = v40;
    *(v39 + 16) = v50;
    v41 = v48;
    *(v39 + 24) = v49;
    *(v39 + 32) = v41;
    v42 = v46;
    *(v39 + 40) = v47;
    *(v39 + 48) = v42;
    type metadata accessor for PrimarySettingsListItemViewType(0);
    swift_storeEnumTagMultiPayload();
    *&v12[v18] = v27;
    sub_10002C7EC(v12, a2);
    (*(v10 + 56))(a2, 0, 1, v9);
    return sub_10002C758(v12, type metadata accessor for PrimarySettingsListItemModel);
  }
}

uint64_t sub_1000EE7B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 32);

  v5(a2, a3);
}

uint64_t sub_1000EE818(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10000A924;

  return sub_1000EE0B8(a1, v4, v5, v7, v6);
}

uint64_t sub_1000EE8D8(uint64_t a1, unint64_t a2)
{
  if (a2 >= 4)
  {
  }

  return result;
}

unint64_t sub_1000EE8F0()
{
  result = qword_1001610E0;
  if (!qword_1001610E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001610E0);
  }

  return result;
}

uint64_t sub_1000EE944(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  sub_100020C28(&qword_10015AFA0, type metadata accessor for SettingsOmniSearchViewModel, &unk_1001185A0);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v3 = *(v2 + 24);

  return v3;
}

uint64_t sub_1000EE9F4(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24) == a1 && *(v2 + 32) == a2;
  if (v5 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    *(v2 + 24) = a1;
    *(v2 + 32) = a2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100020C28(&qword_10015AFA0, type metadata accessor for SettingsOmniSearchViewModel, &unk_1001185A0);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

uint64_t sub_1000EEB54(uint64_t result, uint64_t a2)
{
  if (*(v2 + 16) != result)
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100020C28(&qword_10015AFA0, type metadata accessor for SettingsOmniSearchViewModel, &unk_1001185A0);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return result;
}

uint64_t sub_1000EEC5C(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  sub_100020C28(&qword_10015AFA0, type metadata accessor for SettingsOmniSearchViewModel, &unk_1001185A0);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  v3 = *(v2 + 40);

  return v3;
}

void sub_1000EED28(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  v8 = OBJC_IVAR____TtC11SettingsApp27SettingsOmniSearchViewModel___observationRegistrar;
  v27[3] = v2;
  sub_100020C28(&qword_10015AFA0, type metadata accessor for SettingsOmniSearchViewModel, &unk_1001185A0);
  v27[1] = v8;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  v9 = *(v2 + 40);

  v10 = sub_1000F37D8(a1, v9);
  v12 = v11;

  if ((v12 & 1) == 0)
  {
    SettingsSearchResultItem.url.getter();
    URL.absoluteString.getter();
    (*(v5 + 8))(v7, v4);
    SettingsSearchResultItem.localizedTitle.getter();
    v13 = [objc_allocWithZone(NSNumber) initWithInteger:v10];
    v14 = objc_allocWithZone(BMSystemSettingsSearchTermsSearchResultClickedOn);
    v15 = String._bridgeToObjectiveC()();

    v16 = String._bridgeToObjectiveC()();

    v17 = [v14 initWithBundleIDwithAnchor:v15 searchResultTitle:v16 index:v13];

    swift_getKeyPath();
    v27[2] = v2;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    sub_10004DED0(&qword_10015D3B8, &unk_1001186B0);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_100115DD0;
    *(v18 + 32) = v17;
    v19 = objc_allocWithZone(BMSystemSettingsSearchTerms);

    v20 = v17;
    v21 = String._bridgeToObjectiveC()();

    sub_100008294(0, &qword_1001611F0, BMSystemSettingsSearchTermsSearchResultClickedOn_ptr);
    isa = Array._bridgeToObjectiveC()().super.isa;

    v23 = [v19 initWithSearchTerm:v21 searchResultsClickedOn:isa];

    v24 = [BiomeLibrary() SystemSettings];
    swift_unknownObjectRelease();
    v25 = [v24 SearchTerms];
    swift_unknownObjectRelease();
    v26 = [v25 source];

    [v26 sendEvent:v23];
  }
}

uint64_t sub_1000EF10C(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  sub_100020C28(&qword_10015AFA0, type metadata accessor for SettingsOmniSearchViewModel, &unk_1001185A0);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v2 + 16);
}

uint64_t sub_1000EF1AC(uint64_t a1, uint64_t a2)
{
  v3[17] = a2;
  v3[18] = v2;
  v3[16] = a1;
  v4 = type metadata accessor for CancellationError();
  v3[19] = v4;
  v3[20] = *(v4 - 8);
  v3[21] = swift_task_alloc();
  sub_10004DED0(&unk_10015EFF0, &unk_100116270);
  v3[22] = swift_task_alloc();
  v5 = type metadata accessor for SettingsSearchResultItem();
  v3[23] = v5;
  v3[24] = *(v5 - 8);
  v3[25] = swift_task_alloc();
  sub_10004DED0(&qword_10015B0E8, &qword_100118670);
  v3[26] = swift_task_alloc();
  v3[27] = sub_10004DED0(&qword_1001611B8, &qword_100118678);
  v3[28] = swift_task_alloc();
  v6 = sub_10004DED0(&qword_1001611C0, &qword_100118680);
  v3[29] = v6;
  v3[30] = *(v6 - 8);
  v3[31] = swift_task_alloc();
  v7 = type metadata accessor for OSSignpostID();
  v3[32] = v7;
  v3[33] = *(v7 - 8);
  v3[34] = swift_task_alloc();
  v3[35] = swift_task_alloc();
  v3[36] = type metadata accessor for MainActor();
  v3[37] = static MainActor.shared.getter();
  v9 = dispatch thunk of Actor.unownedExecutor.getter();
  v3[38] = v9;
  v3[39] = v8;

  return _swift_task_switch(sub_1000EF480, v9, v8);
}

uint64_t sub_1000EF480()
{
  v93 = v0;
  if (qword_10015AAE0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for OSSignposter();
  sub_10000659C(v1, qword_100169718);

  static OSSignpostID.exclusive.getter();
  v2 = OSSignposter.logHandle.getter();
  v3 = static os_signpost_type_t.begin.getter();

  if (OS_os_log.signpostsEnabled.getter())
  {
    v5 = v0[16];
    v4 = v0[17];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v92[0] = v7;
    *v6 = 141558275;
    *(v6 + 4) = 1752392040;
    *(v6 + 12) = 2081;
    *(v6 + 14) = sub_100025CF0(v5, v4, v92);
    v8 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v2, v3, v8, "SettingsOmniSearchViewModel.performSearch", "queryString: %{private,mask.hash}s", v6, 0x16u);
    sub_10000665C(v7);
  }

  v9 = v0[35];
  v10 = v0[32];
  v11 = v0[33];
  v13 = v0[16];
  v12 = v0[17];
  (*(v11 + 16))(v0[34], v9, v10);
  type metadata accessor for OSSignpostIntervalState();
  swift_allocObject();
  v14 = OSSignpostIntervalState.init(id:isOpen:)();
  v0[40] = v14;
  (*(v11 + 8))(v9, v10);
  v15 = HIBYTE(v12) & 0xF;
  if ((v12 & 0x2000000000000000) == 0)
  {
    v15 = v13 & 0xFFFFFFFFFFFFLL;
  }

  if (!v15)
  {

LABEL_65:
    sub_1000F28D0(v14);

    v90 = v0[1];

    return v90();
  }

  v16 = v0[18];
  sub_100008294(0, &qword_10015D9D8, CSUserQuery_ptr);
  swift_getKeyPath();
  v0[41] = OBJC_IVAR____TtC11SettingsApp27SettingsOmniSearchViewModel___observationRegistrar;
  v0[7] = v16;
  v0[42] = sub_100020C28(&qword_10015AFA0, type metadata accessor for SettingsOmniSearchViewModel, &unk_1001185A0);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v0[43] = static CSUserQuery.searchQuery(with:in:disableSemanticSearch:)();

  v17 = sub_1000BA3B8(_swiftEmptyArrayStorage);
  v0[5] = _swiftEmptyArrayStorage;
  v0[6] = v17;
  v18 = [objc_opt_self() standardUserDefaults];
  v19 = String._bridgeToObjectiveC()();
  LODWORD(v16) = [v18 BOOLForKey:v19];

  if (v16)
  {

    type metadata accessor for CSSearchQueryError(0);
    v0[15] = -2000;
    sub_1000F38F8(_swiftEmptyArrayStorage);
    sub_100020C28(&qword_10015AE68, type metadata accessor for CSSearchQueryError, &unk_10010F7B8);
    _BridgedStoredNSError.init(_:userInfo:)();
    v20 = v0[14];
    if (qword_10015AAA8 != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    sub_10000659C(v21, qword_100169670);
    v22 = v20;
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      *v25 = 138543362;
      v27 = v22;
      v28 = _swift_stdlib_bridgeErrorToNSError();
      *(v25 + 4) = v28;
      *v26 = v28;
      _os_log_impl(&_mh_execute_header, v23, v24, "Force throwing querying error: '%{public}@'.", v25, 0xCu);
      sub_1000068B0(v26, &unk_10015F9C0, &unk_100115230);
    }

    swift_willThrow();
    v0[9] = v22;
    swift_errorRetain();
    sub_10004DED0(&unk_10015C800, &unk_100112BC0);
    if (swift_dynamicCast())
    {

      if (qword_10015AAA8 != -1)
      {
        swift_once();
      }

      sub_10000659C(v21, qword_100169670);

      v29 = Logger.logObject.getter();
      v30 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v29, v30))
      {
        v32 = v0[16];
        v31 = v0[17];
        v33 = swift_slowAlloc();
        v34 = swift_slowAlloc();
        v92[0] = v34;
        *v33 = 141558275;
        *(v33 + 4) = 1752392040;
        *(v33 + 12) = 2081;
        *(v33 + 14) = sub_100025CF0(v32, v31, v92);
        _os_log_impl(&_mh_execute_header, v29, v30, "Current Search cancelled by system: '%{private,mask.hash}s'.", v33, 0x16u);
        sub_10000665C(v34);
      }

      (*(v0[20] + 8))(v0[21], v0[19]);
    }

    else
    {

      type metadata accessor for Code(0);
      v0[10] = -2003;
      swift_errorRetain();
      sub_100020C28(&qword_10015AE48, type metadata accessor for Code, &unk_10010F824);
      v45 = static _ErrorCodeProtocol.~= infix(_:_:)();

      if (v45)
      {

        if (qword_10015AAA8 != -1)
        {
          swift_once();
        }

        sub_10000659C(v21, qword_100169670);

        v46 = Logger.logObject.getter();
        v47 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v46, v47))
        {
          v49 = v0[16];
          v48 = v0[17];
          v50 = swift_slowAlloc();
          v51 = swift_slowAlloc();
          v92[0] = v51;
          *v50 = 141558275;
          *(v50 + 4) = 1752392040;
          *(v50 + 12) = 2081;
          *(v50 + 14) = sub_100025CF0(v49, v48, v92);
          _os_log_impl(&_mh_execute_header, v46, v47, "Current Search cancelled by user: '%{private,mask.hash}s'.", v50, 0x16u);
          sub_10000665C(v51);
        }
      }

      else
      {
        if (qword_10015AAA8 != -1)
        {
          swift_once();
        }

        sub_10000659C(v21, qword_100169670);

        swift_errorRetain();
        v52 = Logger.logObject.getter();
        v53 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v52, v53))
        {
          v55 = v0[16];
          v54 = v0[17];
          v56 = swift_slowAlloc();
          v57 = swift_slowAlloc();
          v58 = swift_slowAlloc();
          v92[0] = v58;
          *v56 = 141558531;
          *(v56 + 4) = 1752392040;
          *(v56 + 12) = 2081;
          *(v56 + 14) = sub_100025CF0(v55, v54, v92);
          *(v56 + 22) = 2114;
          swift_errorRetain();
          v59 = _swift_stdlib_bridgeErrorToNSError();
          *(v56 + 24) = v59;
          *v57 = v59;
          _os_log_impl(&_mh_execute_header, v52, v53, "Current Search for '%{private,mask.hash}s' failed with error: '%{public}@'.", v56, 0x20u);
          sub_1000068B0(v57, &unk_10015F9C0, &unk_100115230);

          sub_10000665C(v58);
        }

        if (qword_10015AB08 != -1)
        {
          swift_once();
        }

        swift_errorRetain();
        sub_10008E574(v22);

        sub_100082D64(0xD000000000000022, 0x8000000100122E00, v22);
      }
    }

    v60 = static Task<>.isCancelled.getter();
    v61 = v0[5];
    if (v60)
    {

      if (qword_10015AAA8 != -1)
      {
        swift_once();
      }

      sub_10000659C(v21, qword_100169670);

      v62 = Logger.logObject.getter();
      v63 = static os_log_type_t.default.getter();

      v64 = os_log_type_enabled(v62, v63);
      v65 = v0[43];
      if (v64)
      {
        v67 = v0[16];
        v66 = v0[17];
        v68 = swift_slowAlloc();
        v69 = swift_slowAlloc();
        v92[0] = v69;
        *v68 = 141558275;
        *(v68 + 4) = 1752392040;
        *(v68 + 12) = 2081;
        *(v68 + 14) = sub_100025CF0(v67, v66, v92);
        _os_log_impl(&_mh_execute_header, v62, v63, "Current Search Cancelled: '%{private,mask.hash}s'.", v68, 0x16u);
        sub_10000665C(v69);
      }

      goto LABEL_64;
    }

    v70 = v0[18];
    v71 = v0[6];

    sub_1000F26B0(v61, v71);
    swift_getKeyPath();
    v0[11] = v70;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    swift_beginAccess();
    if (*(*(v70 + 40) + 16))
    {
      if (qword_10015AAA8 != -1)
      {
        swift_once();
      }

      sub_10000659C(v21, qword_100169670);

      v72 = Logger.logObject.getter();
      v73 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v72, v73))
      {
        v75 = v0[16];
        v74 = v0[17];
        v76 = swift_slowAlloc();
        v77 = swift_slowAlloc();
        v92[0] = v77;
        *v76 = 134218499;
        v78 = *(v61 + 16);

        *(v76 + 4) = v78;

        *(v76 + 12) = 2160;
        *(v76 + 14) = 1752392040;
        *(v76 + 22) = 2081;
        *(v76 + 24) = sub_100025CF0(v75, v74, v92);
        _os_log_impl(&_mh_execute_header, v72, v73, "%ld results found for '%{private,mask.hash}s'.", v76, 0x20u);
        sub_10000665C(v77);
      }

      else
      {
        swift_bridgeObjectRelease_n();
        swift_bridgeObjectRelease_n();
      }

      v85 = v0[18];
      v86 = v0[43];
      if (*(v85 + 16) == 2)
      {

        v87 = 2;
        goto LABEL_60;
      }

      swift_getKeyPath();
      v88 = swift_task_alloc();
      *(v88 + 16) = v85;
      *(v88 + 24) = 2;
      v0[12] = v85;
    }

    else
    {

      if (qword_10015AAA8 != -1)
      {
        swift_once();
      }

      sub_10000659C(v21, qword_100169670);

      v79 = Logger.logObject.getter();
      v80 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v79, v80))
      {
        v82 = v0[16];
        v81 = v0[17];
        v83 = swift_slowAlloc();
        v84 = swift_slowAlloc();
        v92[0] = v84;
        *v83 = 141558275;
        *(v83 + 4) = 1752392040;
        *(v83 + 12) = 2081;
        *(v83 + 14) = sub_100025CF0(v82, v81, v92);
        _os_log_impl(&_mh_execute_header, v79, v80, "No results found for '%{private,mask.hash}s'.", v83, 0x16u);
        sub_10000665C(v84);
      }

      v85 = v0[18];
      v86 = v0[43];
      if (*(v85 + 16) == 3)
      {

        v87 = 3;
LABEL_60:
        *(v85 + 16) = v87;
LABEL_64:
        v14 = v0[40];
        goto LABEL_65;
      }

      swift_getKeyPath();
      v89 = swift_task_alloc();
      *(v89 + 16) = v85;
      *(v89 + 24) = 3;
      v0[13] = v85;
    }

    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    goto LABEL_64;
  }

  if (qword_10015AAA8 != -1)
  {
    swift_once();
  }

  v35 = type metadata accessor for Logger();
  sub_10000659C(v35, qword_100169670);

  v36 = Logger.logObject.getter();
  v37 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v36, v37))
  {
    v39 = v0[16];
    v38 = v0[17];
    v40 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    v92[0] = v41;
    *v40 = 141558275;
    *(v40 + 4) = 1752392040;
    *(v40 + 12) = 2081;
    *(v40 + 14) = sub_100025CF0(v39, v38, v92);
    _os_log_impl(&_mh_execute_header, v36, v37, "Starting search for: '%{private,mask.hash}s'", v40, 0x16u);
    sub_10000665C(v41);
  }

  CSUserQuery.settingsSearchResults.getter();
  v0[44] = swift_getOpaqueTypeConformance2();
  dispatch thunk of AsyncSequence.makeAsyncIterator()();
  v42 = static MainActor.shared.getter();
  v0[45] = v42;
  swift_getAssociatedConformanceWitness();
  v43 = swift_task_alloc();
  v0[46] = v43;
  *v43 = v0;
  v43[1] = sub_1000F0728;
  v44 = v0[26];

  return __sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTj(v44, v42, &protocol witness table for MainActor);
}

uint64_t sub_1000F0728()
{
  v2 = *v1;
  *(*v1 + 376) = v0;

  v3 = *(v2 + 304);
  v4 = *(v2 + 312);
  if (v0)
  {
    v5 = sub_1000F1630;
  }

  else
  {
    v5 = sub_1000F084C;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_1000F084C()
{
  v79 = v0;
  v1 = v0[26];
  v2 = v0[23];
  v3 = v0[24];
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    (*(v0[30] + 8))(v0[31], v0[29]);

    goto LABEL_27;
  }

  v4 = v0[47];
  (*(v3 + 32))(v0[25], v1, v2);
  static Task<>.checkCancellation()();
  if (v4)
  {
    v6 = v0[30];
    v5 = v0[31];
    v7 = v0[29];
    v9 = v0[24];
    v8 = v0[25];
    v10 = v0[23];

    (*(v9 + 8))(v8, v10);
    (*(v6 + 8))(v5, v7);
    v0[9] = v4;
    swift_errorRetain();
    sub_10004DED0(&unk_10015C800, &unk_100112BC0);
    if (swift_dynamicCast())
    {

      if (qword_10015AAA8 != -1)
      {
        swift_once();
      }

      v11 = type metadata accessor for Logger();
      sub_10000659C(v11, qword_100169670);

      v12 = Logger.logObject.getter();
      v13 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v12, v13))
      {
        v15 = v0[16];
        v14 = v0[17];
        v16 = swift_slowAlloc();
        v17 = swift_slowAlloc();
        v78[0] = v17;
        *v16 = 141558275;
        *(v16 + 4) = 1752392040;
        *(v16 + 12) = 2081;
        *(v16 + 14) = sub_100025CF0(v15, v14, v78);
        _os_log_impl(&_mh_execute_header, v12, v13, "Current Search cancelled by system: '%{private,mask.hash}s'.", v16, 0x16u);
        sub_10000665C(v17);
      }

      (*(v0[20] + 8))(v0[21], v0[19]);
    }

    else
    {

      type metadata accessor for Code(0);
      v0[10] = -2003;
      swift_errorRetain();
      sub_100020C28(&qword_10015AE48, type metadata accessor for Code, &unk_10010F824);
      v26 = static _ErrorCodeProtocol.~= infix(_:_:)();

      if (v26)
      {

        if (qword_10015AAA8 != -1)
        {
          swift_once();
        }

        v27 = type metadata accessor for Logger();
        sub_10000659C(v27, qword_100169670);

        v28 = Logger.logObject.getter();
        v29 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v28, v29))
        {
          v31 = v0[16];
          v30 = v0[17];
          v32 = swift_slowAlloc();
          v33 = swift_slowAlloc();
          v78[0] = v33;
          *v32 = 141558275;
          *(v32 + 4) = 1752392040;
          *(v32 + 12) = 2081;
          *(v32 + 14) = sub_100025CF0(v31, v30, v78);
          _os_log_impl(&_mh_execute_header, v28, v29, "Current Search cancelled by user: '%{private,mask.hash}s'.", v32, 0x16u);
          sub_10000665C(v33);
        }

LABEL_27:
        v43 = static Task<>.isCancelled.getter();
        v44 = v0[5];
        if (v43)
        {

          if (qword_10015AAA8 != -1)
          {
            swift_once();
          }

          v45 = type metadata accessor for Logger();
          sub_10000659C(v45, qword_100169670);

          v46 = Logger.logObject.getter();
          v47 = static os_log_type_t.default.getter();

          v48 = os_log_type_enabled(v46, v47);
          v49 = v0[43];
          if (v48)
          {
            v51 = v0[16];
            v50 = v0[17];
            v52 = swift_slowAlloc();
            v53 = swift_slowAlloc();
            v78[0] = v53;
            *v52 = 141558275;
            *(v52 + 4) = 1752392040;
            *(v52 + 12) = 2081;
            *(v52 + 14) = sub_100025CF0(v51, v50, v78);
            _os_log_impl(&_mh_execute_header, v46, v47, "Current Search Cancelled: '%{private,mask.hash}s'.", v52, 0x16u);
            sub_10000665C(v53);
          }

          goto LABEL_50;
        }

        v54 = v0[18];
        v55 = v0[6];

        sub_1000F26B0(v44, v55);
        swift_getKeyPath();
        v0[11] = v54;
        ObservationRegistrar.access<A, B>(_:keyPath:)();

        swift_beginAccess();
        if (*(*(v54 + 40) + 16))
        {
          if (qword_10015AAA8 != -1)
          {
            swift_once();
          }

          v56 = type metadata accessor for Logger();
          sub_10000659C(v56, qword_100169670);

          v57 = Logger.logObject.getter();
          v58 = static os_log_type_t.default.getter();

          if (os_log_type_enabled(v57, v58))
          {
            v59 = v0[16];
            v77 = v0[17];
            v60 = swift_slowAlloc();
            v61 = swift_slowAlloc();
            v78[0] = v61;
            *v60 = 134218499;
            v62 = *(v44 + 16);

            *(v60 + 4) = v62;

            *(v60 + 12) = 2160;
            *(v60 + 14) = 1752392040;
            *(v60 + 22) = 2081;
            *(v60 + 24) = sub_100025CF0(v59, v77, v78);
            _os_log_impl(&_mh_execute_header, v57, v58, "%ld results found for '%{private,mask.hash}s'.", v60, 0x20u);
            sub_10000665C(v61);
          }

          else
          {
            swift_bridgeObjectRelease_n();
            swift_bridgeObjectRelease_n();
          }

          v72 = v0[18];
          v71 = v0[43];
          if (*(v72 + 16) == 2)
          {

            *(v72 + 16) = 2;
            goto LABEL_50;
          }

          swift_getKeyPath();
          v73 = swift_task_alloc();
          *(v73 + 16) = v72;
          *(v73 + 24) = 2;
          v0[12] = v72;
        }

        else
        {

          if (qword_10015AAA8 != -1)
          {
            swift_once();
          }

          v63 = type metadata accessor for Logger();
          sub_10000659C(v63, qword_100169670);

          v64 = Logger.logObject.getter();
          v65 = static os_log_type_t.default.getter();

          if (os_log_type_enabled(v64, v65))
          {
            v67 = v0[16];
            v66 = v0[17];
            v68 = swift_slowAlloc();
            v69 = swift_slowAlloc();
            v78[0] = v69;
            *v68 = 141558275;
            *(v68 + 4) = 1752392040;
            *(v68 + 12) = 2081;
            *(v68 + 14) = sub_100025CF0(v67, v66, v78);
            _os_log_impl(&_mh_execute_header, v64, v65, "No results found for '%{private,mask.hash}s'.", v68, 0x16u);
            sub_10000665C(v69);
          }

          v70 = v0[18];
          v71 = v0[43];
          if (*(v70 + 16) == 3)
          {

            *(v70 + 16) = 3;
LABEL_50:
            sub_1000F28D0(v0[40]);

            v75 = v0[1];

            return v75();
          }

          swift_getKeyPath();
          v74 = swift_task_alloc();
          *(v74 + 16) = v70;
          *(v74 + 24) = 3;
          v0[13] = v70;
        }

        ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

        goto LABEL_50;
      }

      if (qword_10015AAA8 != -1)
      {
        swift_once();
      }

      v34 = type metadata accessor for Logger();
      sub_10000659C(v34, qword_100169670);

      swift_errorRetain();
      v35 = Logger.logObject.getter();
      v36 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v35, v36))
      {
        v38 = v0[16];
        v37 = v0[17];
        v39 = swift_slowAlloc();
        v40 = swift_slowAlloc();
        v41 = swift_slowAlloc();
        v78[0] = v41;
        *v39 = 141558531;
        *(v39 + 4) = 1752392040;
        *(v39 + 12) = 2081;
        *(v39 + 14) = sub_100025CF0(v38, v37, v78);
        *(v39 + 22) = 2114;
        swift_errorRetain();
        v42 = _swift_stdlib_bridgeErrorToNSError();
        *(v39 + 24) = v42;
        *v40 = v42;
        _os_log_impl(&_mh_execute_header, v35, v36, "Current Search for '%{private,mask.hash}s' failed with error: '%{public}@'.", v39, 0x20u);
        sub_1000068B0(v40, &unk_10015F9C0, &unk_100115230);

        sub_10000665C(v41);
      }

      if (qword_10015AB08 != -1)
      {
        swift_once();
      }

      swift_errorRetain();
      sub_10008E574(v4);

      sub_100082D64(0xD000000000000022, 0x8000000100122E00, v4);
    }

    goto LABEL_27;
  }

  v19 = v0[24];
  v18 = v0[25];
  v21 = v0[22];
  v20 = v0[23];
  v22 = *(v0[5] + 16);
  (*(v19 + 16))(v21, v18, v20);
  sub_1000F2C58(v22, v22, v21);
  sub_1000068B0(v21, &unk_10015EFF0, &unk_100116270);
  (*(v19 + 8))(v18, v20);
  v23 = static MainActor.shared.getter();
  v0[45] = v23;
  swift_getAssociatedConformanceWitness();
  v24 = swift_task_alloc();
  v0[46] = v24;
  *v24 = v0;
  v24[1] = sub_1000F0728;
  v25 = v0[26];

  return __sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTj(v25, v23, &protocol witness table for MainActor);
}

uint64_t sub_1000F1630()
{
  v67 = v0;
  v2 = v0[30];
  v1 = v0[31];
  v3 = v0[29];

  (*(v2 + 8))(v1, v3);
  v4 = v0[8];
  v0[9] = v4;
  v5 = v0 + 5;
  swift_errorRetain();
  sub_10004DED0(&unk_10015C800, &unk_100112BC0);
  if (swift_dynamicCast())
  {

    if (qword_10015AAA8 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_10000659C(v6, qword_100169670);

    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v7, v8))
    {
      v10 = v0[16];
      v9 = v0[17];
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v66[0] = v12;
      *v11 = 141558275;
      *(v11 + 4) = 1752392040;
      *(v11 + 12) = 2081;
      *(v11 + 14) = sub_100025CF0(v10, v9, v66);
      _os_log_impl(&_mh_execute_header, v7, v8, "Current Search cancelled by system: '%{private,mask.hash}s'.", v11, 0x16u);
      sub_10000665C(v12);
    }

    (*(v0[20] + 8))(v0[21], v0[19]);
  }

  else
  {

    type metadata accessor for Code(0);
    v0[10] = -2003;
    swift_errorRetain();
    sub_100020C28(&qword_10015AE48, type metadata accessor for Code, &unk_10010F824);
    v13 = static _ErrorCodeProtocol.~= infix(_:_:)();

    if (v13)
    {

      if (qword_10015AAA8 != -1)
      {
        swift_once();
      }

      v14 = type metadata accessor for Logger();
      sub_10000659C(v14, qword_100169670);

      v15 = Logger.logObject.getter();
      v16 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v15, v16))
      {
        v18 = v0[16];
        v17 = v0[17];
        v19 = swift_slowAlloc();
        v20 = swift_slowAlloc();
        v66[0] = v20;
        *v19 = 141558275;
        *(v19 + 4) = 1752392040;
        *(v19 + 12) = 2081;
        *(v19 + 14) = sub_100025CF0(v18, v17, v66);
        _os_log_impl(&_mh_execute_header, v15, v16, "Current Search cancelled by user: '%{private,mask.hash}s'.", v19, 0x16u);
        sub_10000665C(v20);
      }
    }

    else
    {
      if (qword_10015AAA8 != -1)
      {
        swift_once();
      }

      v21 = type metadata accessor for Logger();
      sub_10000659C(v21, qword_100169670);

      swift_errorRetain();
      v22 = Logger.logObject.getter();
      v23 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v22, v23))
      {
        v65 = v0[17];
        v24 = v0[16];
        v25 = swift_slowAlloc();
        v26 = swift_slowAlloc();
        v27 = swift_slowAlloc();
        v66[0] = v27;
        *v25 = 141558531;
        *(v25 + 4) = 1752392040;
        *(v25 + 12) = 2081;
        v28 = v24;
        v5 = v0 + 5;
        *(v25 + 14) = sub_100025CF0(v28, v65, v66);
        *(v25 + 22) = 2114;
        swift_errorRetain();
        v29 = _swift_stdlib_bridgeErrorToNSError();
        *(v25 + 24) = v29;
        *v26 = v29;
        _os_log_impl(&_mh_execute_header, v22, v23, "Current Search for '%{private,mask.hash}s' failed with error: '%{public}@'.", v25, 0x20u);
        sub_1000068B0(v26, &unk_10015F9C0, &unk_100115230);

        sub_10000665C(v27);
      }

      if (qword_10015AB08 != -1)
      {
        swift_once();
      }

      swift_errorRetain();
      sub_10008E574(v4);

      sub_100082D64(0xD000000000000022, 0x8000000100122E00, v4);
    }
  }

  v30 = static Task<>.isCancelled.getter();
  v31 = *v5;
  if (v30)
  {

    if (qword_10015AAA8 != -1)
    {
      swift_once();
    }

    v32 = type metadata accessor for Logger();
    sub_10000659C(v32, qword_100169670);

    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.default.getter();

    v35 = os_log_type_enabled(v33, v34);
    v36 = v0[43];
    if (v35)
    {
      v38 = v0[16];
      v37 = v0[17];
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v66[0] = v40;
      *v39 = 141558275;
      *(v39 + 4) = 1752392040;
      *(v39 + 12) = 2081;
      *(v39 + 14) = sub_100025CF0(v38, v37, v66);
      _os_log_impl(&_mh_execute_header, v33, v34, "Current Search Cancelled: '%{private,mask.hash}s'.", v39, 0x16u);
      sub_10000665C(v40);
    }
  }

  else
  {
    v41 = v0[18];
    v42 = v0[6];

    sub_1000F26B0(v31, v42);
    swift_getKeyPath();
    v0[11] = v41;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    swift_beginAccess();
    if (*(*(v41 + 40) + 16))
    {
      if (qword_10015AAA8 != -1)
      {
        swift_once();
      }

      v43 = type metadata accessor for Logger();
      sub_10000659C(v43, qword_100169670);

      v44 = Logger.logObject.getter();
      v45 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v44, v45))
      {
        v47 = v0[16];
        v46 = v0[17];
        v48 = swift_slowAlloc();
        v49 = swift_slowAlloc();
        v66[0] = v49;
        *v48 = 134218499;
        v50 = *(v31 + 16);

        *(v48 + 4) = v50;

        *(v48 + 12) = 2160;
        *(v48 + 14) = 1752392040;
        *(v48 + 22) = 2081;
        *(v48 + 24) = sub_100025CF0(v47, v46, v66);
        _os_log_impl(&_mh_execute_header, v44, v45, "%ld results found for '%{private,mask.hash}s'.", v48, 0x20u);
        sub_10000665C(v49);
      }

      else
      {
        swift_bridgeObjectRelease_n();
        swift_bridgeObjectRelease_n();
      }

      v60 = v0[18];
      v59 = v0[43];
      if (*(v60 + 16) == 2)
      {

        *(v60 + 16) = 2;
        goto LABEL_43;
      }

      swift_getKeyPath();
      v61 = swift_task_alloc();
      *(v61 + 16) = v60;
      *(v61 + 24) = 2;
      v0[12] = v60;
    }

    else
    {

      if (qword_10015AAA8 != -1)
      {
        swift_once();
      }

      v51 = type metadata accessor for Logger();
      sub_10000659C(v51, qword_100169670);

      v52 = Logger.logObject.getter();
      v53 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v52, v53))
      {
        v55 = v0[16];
        v54 = v0[17];
        v56 = swift_slowAlloc();
        v57 = swift_slowAlloc();
        v66[0] = v57;
        *v56 = 141558275;
        *(v56 + 4) = 1752392040;
        *(v56 + 12) = 2081;
        *(v56 + 14) = sub_100025CF0(v55, v54, v66);
        _os_log_impl(&_mh_execute_header, v52, v53, "No results found for '%{private,mask.hash}s'.", v56, 0x16u);
        sub_10000665C(v57);
      }

      v58 = v0[18];
      v59 = v0[43];
      if (*(v58 + 16) == 3)
      {

        *(v58 + 16) = 3;
        goto LABEL_43;
      }

      swift_getKeyPath();
      v62 = swift_task_alloc();
      *(v62 + 16) = v58;
      *(v62 + 24) = 3;
      v0[13] = v58;
    }

    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

LABEL_43:
  sub_1000F28D0(v0[40]);

  v63 = v0[1];

  return v63();
}

uint64_t sub_1000F2248(char a1, uint64_t a2)
{
  if (a1)
  {
    swift_getKeyPath();
    sub_100020C28(&qword_10015AFA0, type metadata accessor for SettingsOmniSearchViewModel, &unk_1001185A0);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v4 = *(a2 + 32);
    v5 = *(a2 + 24) & 0xFFFFFFFFFFFFLL;
    if ((v4 & 0x2000000000000000) != 0)
    {
      v5 = HIBYTE(v4) & 0xF;
    }

    if (!v5 && *(a2 + 16) != 1)
    {
      KeyPath = swift_getKeyPath();
      __chkstk_darwin(KeyPath);
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
    }
  }

  else
  {
    if (*(a2 + 16))
    {
      v7 = swift_getKeyPath();
      __chkstk_darwin(v7);
      sub_100020C28(&qword_10015AFA0, type metadata accessor for SettingsOmniSearchViewModel, &unk_1001185A0);
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
    }

    swift_getKeyPath();
    sub_100020C28(&qword_10015AFA0, type metadata accessor for SettingsOmniSearchViewModel, &unk_1001185A0);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    swift_getKeyPath();
    ObservationRegistrar.willSet<A, B>(_:keyPath:)();

    swift_beginAccess();

    v8 = sub_1000BA3B8(_swiftEmptyArrayStorage);
    *(a2 + 40) = _swiftEmptyArrayStorage;
    *(a2 + 48) = v8;
    swift_endAccess();
    swift_getKeyPath();
    ObservationRegistrar.didSet<A, B>(_:keyPath:)();

    return sub_1000EE9F4(0, 0xE000000000000000);
  }

  return result;
}

uint64_t sub_1000F25A0@<X0>(uint64_t *a1@<X0>, void *a3@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_100020C28(&qword_10015AFA0, type metadata accessor for SettingsOmniSearchViewModel, &unk_1001185A0);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  v5 = *(v4 + 48);
  *a3 = *(v4 + 40);
  a3[1] = v5;
}

uint64_t sub_1000F2668(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return sub_1000F26B0(v1, v2);
}

uint64_t sub_1000F26B0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 40);
  v6 = *(v2 + 48);

  if (sub_10006D178(v5, a1))
  {
    v7 = sub_1000A4108(v6, a2);

    if (v7)
    {
      *(v2 + 40) = a1;
      *(v2 + 48) = a2;
    }
  }

  else
  {
  }

  KeyPath = swift_getKeyPath();
  __chkstk_darwin(KeyPath);
  sub_100020C28(&qword_10015AFA0, type metadata accessor for SettingsOmniSearchViewModel, &unk_1001185A0);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

uint64_t sub_1000F284C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  *(a1 + 40) = a2;
  *(a1 + 48) = a3;
}

uint64_t sub_1000F28D0(uint64_t a1)
{
  v1 = type metadata accessor for OSSignpostError();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for OSSignpostID();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10015AAE0 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for OSSignposter();
  sub_10000659C(v9, qword_100169718);
  v10 = OSSignposter.logHandle.getter();
  OSSignpostIntervalState.signpostID.getter();
  v11 = static os_signpost_type_t.end.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {

    checkForErrorAndConsumeState(state:)();

    if ((*(v2 + 88))(v4, v1) == enum case for OSSignpostError.doubleEnd(_:))
    {
      v12 = "[Error] Interval already ended";
    }

    else
    {
      (*(v2 + 8))(v4, v1);
      v12 = "";
    }

    v13 = swift_slowAlloc();
    *v13 = 0;
    v14 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v10, v11, v14, "SettingsOmniSearchViewModel.performSearch", v12, v13, 2u);
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1000F2B5C()
{

  v1 = OBJC_IVAR____TtC11SettingsApp27SettingsOmniSearchViewModel___observationRegistrar;
  v2 = type metadata accessor for ObservationRegistrar();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_1000F2C18()
{
  v1 = v0[2];
  v2 = v0[4];
  *(v1 + 24) = v0[3];
  *(v1 + 32) = v2;
}

unint64_t sub_1000F2C58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v100 = a3;
  v7 = type metadata accessor for SettingsSearchResultItem();
  v101 = *(v7 - 8);
  v115 = v101;
  v8 = __chkstk_darwin(v7);
  v10 = &v95 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v8);
  v111 = &v95 - v12;
  __chkstk_darwin(v11);
  v110 = &v95 - v13;
  v109 = sub_10004DED0(&qword_1001611D8, &qword_100118698);
  __chkstk_darwin(v109);
  v108 = &v95 - v14;
  v15 = sub_10004DED0(&qword_10015B0E8, &qword_100118670);
  v16 = __chkstk_darwin(v15 - 8);
  v113 = &v95 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v97 = &v95 - v18;
  v19 = sub_10004DED0(&unk_10015EFF0, &unk_100116270);
  __chkstk_darwin(v19 - 8);
  v99 = &v95 - v20;
  v95 = sub_10004DED0(&qword_1001611E0, &qword_1001186A0);
  __chkstk_darwin(v95);
  v96 = &v95 - v21;
  v98 = sub_10004DED0(&qword_1001611E8, &qword_1001186A8);
  __chkstk_darwin(v98);
  v114 = (&v95 - v22);
  v104 = a2;
  v102 = a1;
  v116 = v4;
  if (a1 != a2)
  {
    v65 = v102;
    if (v104 < v102)
    {
LABEL_64:
      __break(1u);
      goto LABEL_65;
    }

    if (v102 >= v104)
    {
LABEL_65:
      __break(1u);
      goto LABEL_66;
    }

    v66 = *v4;
    v67 = *v4 + ((*(v115 + 80) + 32) & ~*(v115 + 80));
    while ((v65 & 0x8000000000000000) == 0)
    {
      if (v65 >= *(v66 + 16))
      {
        goto LABEL_54;
      }

      v68 = v115;
      (*(v115 + 16))(v10, v67 + *(v115 + 72) * v65, v7);
      sub_100020C28(&qword_10015D730, &type metadata accessor for SettingsSearchResultItem, &protocol conformance descriptor for SettingsSearchResultItem);
      dispatch thunk of Identifiable.id.getter();
      (*(v68 + 8))(v10, v7);
      v69 = sub_1000B8930(v118, v119);
      v71 = v70;

      if (v71)
      {
        v72 = v116;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v74 = v72[1];
        v117 = v74;
        if (!isUniquelyReferenced_nonNull_native)
        {
          sub_1000BA020();
          v74 = v117;
        }

        sub_1000B9624(v69, v74);
        v72[1] = v74;
      }

      ++v65;
      v4 = v116;
      if (v104 == v65)
      {
        goto LABEL_2;
      }
    }

    goto LABEL_53;
  }

LABEL_2:
  v23 = v104 - v102;
  if (__OFSUB__(v104, v102))
  {
LABEL_61:
    __break(1u);
    goto LABEL_62;
  }

  v107 = 1 - v23;
  if (__OFSUB__(1, v23))
  {
LABEL_62:
    __break(1u);
    goto LABEL_63;
  }

  v112 = *v4;
  v24 = *(v112 + 16);
  if (v24 < v104)
  {
LABEL_63:
    __break(1u);
    goto LABEL_64;
  }

  if (v24 == v104)
  {
LABEL_6:
    v25 = *(v95 + 52);
    v26 = v96;
    sub_100059CA0(v100, &v96[v25], &unk_10015EFF0, &unk_100116270);
    v27 = &v26[v25];
    v28 = v99;
    sub_1000A4CB8(v27, v99, &unk_10015EFF0, &unk_100116270);
    v29 = *(v98 + 52);
    v30 = v115;
    v31 = v97;
    v106 = *(v115 + 32);
    v107 = v115 + 32;
    v106(v97, v28, v7);
    v32 = *(v30 + 56);
    (v32)(v31, 0, 1, v7);
    v33 = v114;
    v115 = v30 + 56;
    v111 = v32;
    (v32)(v114 + v29, 1, 1, v7);
    v112 = v29;
    sub_1000F3A28(v31, v33 + v29);
    v34 = v102 + 1;
    v35 = v113;
    if (!__OFADD__(v102, 1))
    {
      v36 = v102;
      v37 = (v101 + 48);
      v105 = (v101 + 8);
      do
      {
        v40 = v114;
        *v114 = v34;
        v41 = v112;
        sub_1000A4CB8(v40 + v112, v35, &qword_10015B0E8, &qword_100118670);
        (v111)(v40 + v41, 1, 1, v7);
        if ((*v37)(v35, 1, v7) == 1)
        {
          v61 = *(v98 + 56);
          sub_1000068B0(v35, &qword_10015B0E8, &qword_100118670);
          v62 = v114;
          *(v114 + v61) = 1;
          sub_1000068B0(v62, &qword_1001611E8, &qword_1001186A8);
          v63 = v99;
          sub_100059CA0(v100, v99, &unk_10015EFF0, &unk_100116270);
          return sub_1000F36E4(v102, v104, v63);
        }

        v42 = v110;
        v43 = v106;
        v106(v110, v35, v7);
        v44 = v108;
        v45 = *(v109 + 48);
        v43(&v108[v45], v42, v7);
        sub_100020C28(&qword_10015D730, &type metadata accessor for SettingsSearchResultItem, &protocol conformance descriptor for SettingsSearchResultItem);
        dispatch thunk of Identifiable.id.getter();
        (*v105)(&v44[v45], v7);
        v46 = v118;
        v47 = v119;
        v48 = swift_isUniquelyReferenced_nonNull_native();
        v117 = v4[1];
        v49 = v117;
        v51 = sub_1000B8930(v46, v47);
        v52 = v49[2];
        v53 = (v50 & 1) == 0;
        v54 = v52 + v53;
        if (__OFADD__(v52, v53))
        {
          goto LABEL_52;
        }

        v55 = v50;
        if (v49[3] >= v54)
        {
          if (v48)
          {
            v35 = v113;
            if (v50)
            {
              goto LABEL_8;
            }
          }

          else
          {
            sub_1000BA020();
            v35 = v113;
            if (v55)
            {
              goto LABEL_8;
            }
          }
        }

        else
        {
          sub_1000B902C(v54, v48);
          v56 = sub_1000B8930(v46, v47);
          if ((v55 & 1) != (v57 & 1))
          {
            goto LABEL_67;
          }

          v51 = v56;
          v35 = v113;
          if (v55)
          {
LABEL_8:

            v38 = v117;
            *(v117[7] + 8 * v51) = v36;
            goto LABEL_9;
          }
        }

        v38 = v117;
        v117[(v51 >> 6) + 8] |= 1 << v51;
        v58 = (v38[6] + 16 * v51);
        *v58 = v46;
        v58[1] = v47;
        *(v38[7] + 8 * v51) = v36;
        v59 = v38[2];
        v39 = __OFADD__(v59, 1);
        v60 = v59 + 1;
        if (v39)
        {
          goto LABEL_59;
        }

        v38[2] = v60;
LABEL_9:
        v36 = v34;
        v4 = v116;
        v116[1] = v38;
        v39 = __OFADD__(v34++, 1);
      }

      while (!v39);
    }

    __break(1u);
LABEL_52:
    __break(1u);
LABEL_53:
    __break(1u);
LABEL_54:
    __break(1u);
LABEL_55:
    __break(1u);
LABEL_56:
    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    __break(1u);
LABEL_59:
    __break(1u);
LABEL_60:
    __break(1u);
    goto LABEL_61;
  }

  v75 = v104;
  if (v24 > v104)
  {
    v106 = (v112 + ((*(v115 + 80) + 32) & ~*(v115 + 80)));
    v105 = (v101 + 16);
    v103 = v101 + 8;
    while (1)
    {
      if ((v75 & 0x8000000000000000) != 0)
      {
        goto LABEL_55;
      }

      if (v75 >= *(v112 + 16))
      {
        goto LABEL_56;
      }

      v77 = v115;
      v78 = v111;
      (*(v115 + 16))(v111, v106 + *(v115 + 72) * v75, v7);
      sub_100020C28(&qword_10015D730, &type metadata accessor for SettingsSearchResultItem, &protocol conformance descriptor for SettingsSearchResultItem);
      dispatch thunk of Identifiable.id.getter();
      (*(v77 + 8))(v78, v7);
      v79 = v75 + v107;
      if (__OFADD__(v75, v107))
      {
        goto LABEL_57;
      }

      v81 = v118;
      v80 = v119;
      v82 = swift_isUniquelyReferenced_nonNull_native();
      v117 = v4[1];
      v83 = v117;
      v85 = sub_1000B8930(v81, v80);
      v86 = v83[2];
      v87 = (v84 & 1) == 0;
      v88 = v86 + v87;
      if (__OFADD__(v86, v87))
      {
        goto LABEL_58;
      }

      v89 = v84;
      if (v83[3] >= v88)
      {
        if (v82)
        {
          if (v84)
          {
            goto LABEL_35;
          }
        }

        else
        {
          sub_1000BA020();
          if (v89)
          {
            goto LABEL_35;
          }
        }
      }

      else
      {
        sub_1000B902C(v88, v82);
        v90 = sub_1000B8930(v81, v80);
        if ((v89 & 1) != (v91 & 1))
        {
          goto LABEL_67;
        }

        v85 = v90;
        if (v89)
        {
LABEL_35:

          v76 = v117;
          *(v117[7] + 8 * v85) = v79;
          goto LABEL_36;
        }
      }

      v76 = v117;
      v117[(v85 >> 6) + 8] |= 1 << v85;
      v92 = (v76[6] + 16 * v85);
      *v92 = v81;
      v92[1] = v80;
      *(v76[7] + 8 * v85) = v79;
      v93 = v76[2];
      v39 = __OFADD__(v93, 1);
      v94 = v93 + 1;
      if (v39)
      {
        goto LABEL_60;
      }

      v76[2] = v94;
LABEL_36:
      ++v75;
      v4 = v116;
      v116[1] = v76;
      if (v24 == v75)
      {
        goto LABEL_6;
      }
    }
  }

LABEL_66:
  __break(1u);
LABEL_67:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

unint64_t sub_1000F36E4(unint64_t result, uint64_t a2, uint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v5 = *v3;
  v6 = *(*v3 + 16);
  if (v6 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v7 = result;
  v8 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v9 = __OFSUB__(1, v8);
  v10 = 1 - v8;
  if (v9)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v11 = v6 + v10;
  if (__OFADD__(v6, v10))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v3 = v5;
  if (!isUniquelyReferenced_nonNull_native || v11 > v5[3] >> 1)
  {
    if (v6 <= v11)
    {
      v14 = v11;
    }

    else
    {
      v14 = v6;
    }

    v5 = sub_1000C52D8(isUniquelyReferenced_nonNull_native, v14, 1, v5);
    *v3 = v5;
  }

  result = sub_1000B92CC(v7, a2, 1, a3);
  *v3 = v5;
  return result;
}

uint64_t sub_1000F37D8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (!v2)
  {
    return 0;
  }

  v4 = *(type metadata accessor for SettingsSearchResultItem() - 8);
  v5 = a2 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
  v6 = *(v4 + 72);
  sub_100020C28(&qword_10015CC80, &type metadata accessor for SettingsSearchResultItem, &protocol conformance descriptor for SettingsSearchResultItem);
  v7 = 0;
  while ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0)
  {
    ++v7;
    v5 += v6;
    if (v2 == v7)
    {
      return 0;
    }
  }

  return v7;
}

unint64_t sub_1000F38F8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10004DED0(&qword_1001611C8, &qword_100118688);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_100059CA0(v4, &v13, &qword_1001611D0, &qword_100118690);
      v5 = v13;
      v6 = v14;
      result = sub_1000B8930(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_10001EFEC(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
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

uint64_t sub_1000F3A28(uint64_t a1, uint64_t a2)
{
  v4 = sub_10004DED0(&qword_10015B0E8, &qword_100118670);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_1000F3A98(char a1)
{
  result = 1414483794;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000029;
      break;
    case 2:
      result = 0x454C54534143;
      break;
    case 3:
      result = 0x43415F454C505041;
      break;
    case 4:
      result = 0x796C696D6146;
      break;
    case 5:
      result = 1229343063;
      break;
    case 6:
      result = 0x54454E5245485445;
      break;
    case 7:
      result = 0x746F6F7465756C42;
      break;
    case 8:
      result = 0xD000000000000017;
      break;
    case 9:
    case 69:
      result = 0xD000000000000012;
      break;
    case 10:
      result = 5132374;
      break;
    case 11:
      result = 0x4F4F525353414C43;
      break;
    case 12:
      result = 0xD000000000000010;
      break;
    case 13:
      result = 0x73646E756F53;
      break;
    case 14:
      result = 0x445F544F4E5F4F44;
      break;
    case 15:
      result = 0x545F4E4545524353;
      break;
    case 16:
      result = 0x6C6172656E6547;
      break;
    case 17:
      result = 0x436C6F72746E6F43;
      break;
    case 18:
      result = 0x425F4E4F49544341;
      break;
    case 19:
      result = 0x544E4549424D41;
      break;
    case 20:
      result = 0x59414C50534944;
      break;
    case 21:
      result = 0x5243535F454D4F48;
      break;
    case 22:
      result = 0xD000000000000010;
      break;
    case 23:
      result = 0x4249535345434341;
      break;
    case 24:
      result = 0x657061706C6C6157;
      break;
    case 25:
      result = 1230129491;
      break;
    case 26:
      result = 0x6C69636E6550;
      break;
    case 27:
      result = 0x45444F4353534150;
      break;
    case 28:
      result = 0xD000000000000010;
      break;
    case 29:
      result = 0x6C72616550;
      break;
    case 30:
      result = 0x434E454752454D45;
      break;
    case 31:
      result = 0xD000000000000015;
      break;
    case 32:
      result = 0x5F59524554544142;
      break;
    case 33:
      result = 0x79636176697250;
      break;
    case 34:
      result = 0x45524F5453;
      break;
    case 35:
      result = 0xD000000000000010;
      break;
    case 36:
      result = 0x4B4F4F4253534150;
      break;
    case 37:
      result = 1279869261;
      break;
    case 38:
      result = 0x53544341544E4F43;
      break;
    case 39:
      result = 0x5241444E454C4143;
      break;
    case 40:
      result = 0x5345544F4ELL;
      break;
    case 41:
      result = 0x5245444E494D4552;
      break;
    case 42:
      result = 0x4D524F4645455246;
      break;
    case 43:
      result = 0x454D5F4543494F56;
      break;
    case 44:
      result = 0x656E6F6850;
      break;
    case 45:
      result = 0x534547415353454DLL;
      break;
    case 46:
      result = 0x454D495445434146;
      break;
    case 47:
      result = 0x495241464153;
      break;
    case 48:
      result = 1398228302;
      break;
    case 49:
      result = 0x534B434F5453;
      break;
    case 50:
      result = 0x54414C534E415254;
      break;
    case 51:
      result = 1397768525;
      break;
    case 52:
      result = 0x52454854414557;
      break;
    case 53:
      result = 0x535341504D4F43;
      break;
    case 54:
      result = 0x4552555341454DLL;
      break;
    case 55:
      result = 0x54554354524F4853;
      break;
    case 56:
      result = 0x48544C414548;
      break;
    case 57:
      result = 0x5353454E544946;
      break;
    case 58:
      result = 0x54494B454D4F48;
      break;
    case 59:
      result = 0x54494B5353414C43;
      break;
    case 60:
      result = 0x4C414E52554F4ALL;
      break;
    case 61:
      result = 0x434953554DLL;
      break;
    case 62:
      result = 0x5050415654;
      break;
    case 63:
      result = 0x736F746F6850;
      break;
    case 64:
      result = 0x4152454D4143;
      break;
    case 65:
      result = 0x534B4F4F4249;
      break;
    case 66:
      result = 0x5354534143444F50;
      break;
    case 67:
      result = 0x544E4543454D4147;
      break;
    case 68:
      result = 0xD000000000000010;
      break;
    case 70:
      result = 0xD000000000000010;
      break;
    case 71:
    case 72:
      result = 0xD000000000000011;
      break;
    case 73:
      result = 0x454E414C50524941;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_1000F41C0()
{
  v34 = type metadata accessor for URLQueryItem();
  v1 = *(v34 - 8);
  __chkstk_darwin(v34);
  v33 = &v30 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = 0;
  v37 = 0xE000000000000000;
  _StringGuts.grow(_:)(49);

  v36 = 0xD000000000000020;
  v37 = 0x80000001001264F0;
  type metadata accessor for URL();
  sub_1000F5270(&qword_10015E918, &type metadata accessor for URL, &protocol conformance descriptor for URL);
  v3._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v3);

  v4._countAndFlagsBits = 0x6F69746361202C27;
  v4._object = 0xEC00000027203A6ELL;
  String.append(_:)(v4);
  v5 = type metadata accessor for SettingsURLDestination(0);
  v6._countAndFlagsBits = sub_1000F4C6C();
  String.append(_:)(v6);

  v7._object = 0x8000000100126520;
  v7._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v7);
  v8 = *(v0 + *(v5 + 24));
  v9 = *(v8 + 16);
  v10 = _swiftEmptyArrayStorage;
  if (v9)
  {
    v35 = _swiftEmptyArrayStorage;
    sub_1000267D0(0, v9, 0);
    v10 = v35;
    v12 = *(v1 + 16);
    v11 = v1 + 16;
    v13 = v8 + ((*(v11 + 64) + 32) & ~*(v11 + 64));
    v31 = *(v11 + 56);
    v32 = v12;
    v14 = (v11 - 8);
    do
    {
      v16 = v33;
      v15 = v34;
      v17 = v11;
      v32(v33, v13, v34);
      v18 = URLQueryItem.description.getter();
      v20 = v19;
      (*v14)(v16, v15);
      v35 = v10;
      v22 = v10[2];
      v21 = v10[3];
      if (v22 >= v21 >> 1)
      {
        sub_1000267D0((v21 > 1), v22 + 1, 1);
        v10 = v35;
      }

      v10[2] = v22 + 1;
      v23 = &v10[2 * v22];
      v23[4] = v18;
      v23[5] = v20;
      v13 += v31;
      --v9;
      v11 = v17;
    }

    while (v9);
  }

  v35 = v10;
  sub_10004DED0(&unk_10015FC00, &qword_100111C00);
  sub_1000268F8();
  v24 = BidirectionalCollection<>.joined(separator:)();
  v26 = v25;

  v27._countAndFlagsBits = v24;
  v27._object = v26;
  String.append(_:)(v27);

  v28._countAndFlagsBits = 8200285;
  v28._object = 0xE300000000000000;
  String.append(_:)(v28);
  return v36;
}

uint64_t sub_1000F44F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((static URL.== infix(_:_:)() & 1) == 0 || (sub_1000F55E8(a1 + *(a3 + 20), a2 + *(a3 + 20)) & 1) == 0)
  {
    return 0;
  }

  v6 = *(a3 + 24);
  v7 = *(a1 + v6);
  v8 = *(a2 + v6);

  return sub_10006C7A4(v7, v8);
}

void sub_1000F4574(uint64_t a1)
{
  v3 = type metadata accessor for URLQueryItem();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for URL();
  sub_1000F5270(&qword_100161388, &type metadata accessor for URL, &protocol conformance descriptor for URL);
  dispatch thunk of Hashable.hash(into:)();
  v7 = type metadata accessor for SettingsURLDestination(0);
  sub_1000F4790(a1);
  v8 = *(v1 + *(v7 + 24));
  Hasher._combine(_:)(*(v8 + 16));
  v9 = *(v8 + 16);
  if (v9)
  {
    v12 = *(v4 + 16);
    v10 = v4 + 16;
    v11 = v12;
    v13 = v8 + ((*(v10 + 64) + 32) & ~*(v10 + 64));
    v14 = *(v10 + 56);
    do
    {
      v11(v6, v13, v3);
      sub_1000F5270(&qword_100161390, &type metadata accessor for URLQueryItem, &protocol conformance descriptor for URLQueryItem);
      dispatch thunk of Hashable.hash(into:)();
      (*(v10 - 8))(v6, v3);
      v13 += v14;
      --v9;
    }

    while (v9);
  }
}

void sub_1000F4790(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for EngagementLinkData(0);
  __chkstk_darwin(v4);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for URL();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for SettingsURLDestination.Action(0);
  __chkstk_darwin(v11);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000F53A4(v2, v13, type metadata accessor for SettingsURLDestination.Action);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 3)
  {
    if (EnumCaseMultiPayload <= 1)
    {
      if (!EnumCaseMultiPayload)
      {
        v16 = *v13;
        Hasher._combine(_:)(1uLL);
        Hasher._combine(_:)(v16);
        return;
      }

      v20 = *(v13 + 1);
      v21 = *v13;
      v22 = v20;
      v23 = v13[32];
      v19 = 2;
      goto LABEL_16;
    }

    if (EnumCaseMultiPayload == 2)
    {
      (*(v8 + 32))(v10, v13, v7);
      v17 = 3;
    }

    else
    {
      (*(v8 + 32))(v10, v13, v7);
      v17 = 4;
    }

LABEL_18:
    Hasher._combine(_:)(v17);
    sub_1000F5270(&qword_100161388, &type metadata accessor for URL, &protocol conformance descriptor for URL);
    dispatch thunk of Hashable.hash(into:)();
    (*(v8 + 8))(v10, v7);
    return;
  }

  if (EnumCaseMultiPayload <= 5)
  {
    if (EnumCaseMultiPayload != 4)
    {
      sub_1000F5340(v13, v6);
      Hasher._combine(_:)(6uLL);
      String.hash(into:)();
      String.hash(into:)();
      sub_1000F5270(&qword_100161388, &type metadata accessor for URL, &protocol conformance descriptor for URL);
      dispatch thunk of Hashable.hash(into:)();
      sub_10001872C(v6, type metadata accessor for EngagementLinkData);
      return;
    }

    (*(v8 + 32))(v10, v13, v7);
    v17 = 5;
    goto LABEL_18;
  }

  if (EnumCaseMultiPayload == 6)
  {
    v18 = *(v13 + 1);
    v21 = *v13;
    v22 = v18;
    v23 = v13[32];
    v19 = 7;
LABEL_16:
    Hasher._combine(_:)(v19);
    sub_10002FE78(a1);
    sub_100026A04(&v21);
    return;
  }

  if (EnumCaseMultiPayload == 7)
  {
    v15 = *(v13 + 3);
    Hasher._combine(_:)(8uLL);
    String.hash(into:)();

    if (v15)
    {
      Hasher._combine(_:)(1u);
      String.hash(into:)();
    }

    else
    {
      Hasher._combine(_:)(0);
    }
  }

  else
  {
    Hasher._combine(_:)(0);
  }
}

Swift::Int sub_1000F4BC0(uint64_t a1, uint64_t a2, void (*a3)(void *))
{
  Hasher.init(_seed:)();
  a3(v5);
  return Hasher._finalize()();
}

Swift::Int sub_1000F4C24(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void *))
{
  Hasher.init(_seed:)();
  a4(v6);
  return Hasher._finalize()();
}

uint64_t sub_1000F4C6C()
{
  v1 = v0;
  v2 = type metadata accessor for EngagementLinkData(0);
  v3 = __chkstk_darwin(v2);
  v5 = v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = v38 - v6;
  v8 = type metadata accessor for URL();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for SettingsURLDestination.Action(0);
  __chkstk_darwin(v12);
  v14 = v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000F53A4(v1, v14, type metadata accessor for SettingsURLDestination.Action);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 3)
  {
    if (EnumCaseMultiPayload <= 1)
    {
      if (!EnumCaseMultiPayload)
      {
        v24 = *v14;
        *&v39 = 0;
        *(&v39 + 1) = 0xE000000000000000;
        _StringGuts.grow(_:)(16);

        strcpy(&v39, "Presentation: ");
        HIBYTE(v39) = -18;
        v22 = sub_1000BBA68(v24);
        goto LABEL_10;
      }

      v29 = *(v14 + 1);
      v39 = *v14;
      v40 = v29;
      v41 = v14[32];
      strcpy(v38, "Navigation: ");
      BYTE5(v38[1]) = 0;
      HIWORD(v38[1]) = -5120;
LABEL_18:
      v30 = sub_100026A58();
      v32 = v31;
      sub_100026A04(&v39);
      v33._countAndFlagsBits = v30;
      v33._object = v32;
      String.append(_:)(v33);

      return v38[0];
    }

    if (EnumCaseMultiPayload == 2)
    {
      (*(v9 + 32))(v11, v14, v8);
      *&v39 = 0;
      *(&v39 + 1) = 0xE000000000000000;
      _StringGuts.grow(_:)(16);

      v26 = 0x53206873696E6946;
      v27 = 0xEE00203A70757465;
    }

    else
    {
      (*(v9 + 32))(v11, v14, v8);
      v26 = 0x3A65636E616E6946;
      v27 = 0xE900000000000020;
    }

LABEL_20:
    *&v39 = v26;
    *(&v39 + 1) = v27;
    v34._countAndFlagsBits = URL.absoluteString.getter();
    String.append(_:)(v34);

    v25 = v39;
    (*(v9 + 8))(v11, v8);
    return v25;
  }

  if (EnumCaseMultiPayload <= 5)
  {
    if (EnumCaseMultiPayload != 4)
    {
      sub_1000F5340(v14, v7);
      *&v39 = 0;
      *(&v39 + 1) = 0xE000000000000000;
      _StringGuts.grow(_:)(19);

      *&v39 = 0xD000000000000011;
      *(&v39 + 1) = 0x8000000100126560;
      sub_1000F53A4(v7, v5, type metadata accessor for EngagementLinkData);
      v35._countAndFlagsBits = String.init<A>(describing:)();
      String.append(_:)(v35);

      v25 = v39;
      sub_10001872C(v7, type metadata accessor for EngagementLinkData);
      return v25;
    }

    (*(v9 + 32))(v11, v14, v8);
    v26 = 0x203A687475414FLL;
    v27 = 0xE700000000000000;
    goto LABEL_20;
  }

  if (EnumCaseMultiPayload == 6)
  {
    v28 = *(v14 + 1);
    v39 = *v14;
    v40 = v28;
    v41 = v14[32];
    v38[0] = 0;
    v38[1] = 0xE000000000000000;
    _StringGuts.grow(_:)(22);

    v38[0] = 0xD000000000000014;
    v38[1] = 0x8000000100126540;
    goto LABEL_18;
  }

  if (EnumCaseMultiPayload != 7)
  {
    return 1953460050;
  }

  v17 = *v14;
  v16 = *(v14 + 1);
  v18 = *(v14 + 3);
  if (!v18)
  {
    *&v39 = 0x5520776F6C6C6F46;
    *(&v39 + 1) = 0xEB00000000203A70;
    v37._countAndFlagsBits = v17;
    v37._object = v16;
    String.append(_:)(v37);
    goto LABEL_11;
  }

  v19 = *(v14 + 2);
  *&v39 = 0;
  *(&v39 + 1) = 0xE000000000000000;
  _StringGuts.grow(_:)(29);

  *&v39 = 0xD000000000000017;
  *(&v39 + 1) = 0x8000000100126580;
  v20._countAndFlagsBits = v17;
  v20._object = v16;
  String.append(_:)(v20);

  v21._countAndFlagsBits = 8236;
  v21._object = 0xE200000000000000;
  String.append(_:)(v21);
  v22 = v19;
  v23 = v18;
LABEL_10:
  String.append(_:)(*&v22);
LABEL_11:

  return v39;
}

uint64_t sub_1000F5270(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void *sub_1000F52B8(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1000F540C(a1, a2, a3, *v3, &qword_10015E100, &qword_100115080, &type metadata accessor for URLQueryItem);
  *v3 = result;
  return result;
}

void *sub_1000F52FC(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1000F540C(a1, a2, a3, *v3, &unk_10015FB80, &unk_100116A40, type metadata accessor for PrimarySettingsListItemModel);
  *v3 = result;
  return result;
}

uint64_t sub_1000F5340(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EngagementLinkData(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000F53A4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void *sub_1000F540C(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_10004DED0(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = j__malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v16) == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

uint64_t sub_1000F55E8(uint64_t a1, uint64_t a2)
{
  v80 = a1;
  v70 = type metadata accessor for EngagementLinkData(0);
  __chkstk_darwin(v70);
  v72 = (&v69 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = type metadata accessor for URL();
  v76 = *(v4 - 8);
  v77 = v4;
  v5 = __chkstk_darwin(v4);
  v71 = &v69 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v5);
  v79 = &v69 - v8;
  __chkstk_darwin(v7);
  v78 = &v69 - v9;
  v10 = type metadata accessor for SettingsURLDestination.Action(0);
  v11 = __chkstk_darwin(v10);
  v73 = (&v69 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = __chkstk_darwin(v11);
  v15 = &v69 - v14;
  v16 = __chkstk_darwin(v13);
  v75 = (&v69 - v17);
  v18 = __chkstk_darwin(v16);
  v74 = &v69 - v19;
  v20 = __chkstk_darwin(v18);
  v22 = &v69 - v21;
  v23 = __chkstk_darwin(v20);
  v25 = &v69 - v24;
  v26 = __chkstk_darwin(v23);
  v28 = &v69 - v27;
  __chkstk_darwin(v26);
  v30 = &v69 - v29;
  v31 = sub_10004DED0(&qword_100161380, &unk_100118810);
  v32 = __chkstk_darwin(v31 - 8);
  v34 = &v69 - v33;
  v35 = (&v69 + *(v32 + 56) - v33);
  sub_1000F53A4(v80, &v69 - v33, type metadata accessor for SettingsURLDestination.Action);
  v36 = a2;
  v37 = v35;
  sub_1000F53A4(v36, v35, type metadata accessor for SettingsURLDestination.Action);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 3)
  {
    if (EnumCaseMultiPayload > 5)
    {
      if (EnumCaseMultiPayload != 6)
      {
        if (EnumCaseMultiPayload == 7)
        {
          v39 = v73;
          sub_1000F53A4(v34, v73, type metadata accessor for SettingsURLDestination.Action);
          v41 = *v39;
          v40 = v39[1];
          v43 = v39[2];
          v42 = v39[3];
          if (swift_getEnumCaseMultiPayload() == 7)
          {
            v44 = v35->i64[0];
            v45 = v35->i64[1];
            v47 = v35[1].i64[0];
            v46 = v37[1].i64[1];
            if (v41 == v44 && v40 == v45)
            {
            }

            else
            {
              v67 = _stringCompareWithSmolCheck(_:_:expecting:)();

              if ((v67 & 1) == 0)
              {

                goto LABEL_54;
              }
            }

            if (v42)
            {
              if (v46)
              {
                if (v43 == v47 && v42 == v46)
                {

                  goto LABEL_57;
                }

                v68 = _stringCompareWithSmolCheck(_:_:expecting:)();

                if (v68)
                {
                  goto LABEL_57;
                }

                goto LABEL_55;
              }
            }

            else if (!v46)
            {
              goto LABEL_57;
            }

LABEL_54:

LABEL_55:
            sub_10001872C(v34, type metadata accessor for SettingsURLDestination.Action);
            goto LABEL_42;
          }
        }

        else if (swift_getEnumCaseMultiPayload() == 8)
        {
          goto LABEL_57;
        }

LABEL_41:
        sub_1000F5F3C(v34);
LABEL_42:
        v50 = 0;
        return v50 & 1;
      }

      sub_1000F53A4(v34, v15, type metadata accessor for SettingsURLDestination.Action);
      v58 = *(v15 + 1);
      v81 = *v15;
      v82 = v58;
      v83 = v15[32];
      if (swift_getEnumCaseMultiPayload() == 6)
      {
        goto LABEL_20;
      }

      goto LABEL_22;
    }

    if (EnumCaseMultiPayload != 4)
    {
      v64 = v75;
      sub_1000F53A4(v34, v75, type metadata accessor for SettingsURLDestination.Action);
      if (swift_getEnumCaseMultiPayload() == 5)
      {
        v65 = v72;
        sub_1000F5340(v35, v72);
        if (*v64 == *v65 && v64[1] == v65[1] || (_stringCompareWithSmolCheck(_:_:expecting:)()) && (v64[2] == v65[2] && v64[3] == v65[3] || (_stringCompareWithSmolCheck(_:_:expecting:)()) && (static URL.== infix(_:_:)())
        {
          sub_10001872C(v65, type metadata accessor for EngagementLinkData);
          sub_10001872C(v64, type metadata accessor for EngagementLinkData);
LABEL_57:
          sub_10001872C(v34, type metadata accessor for SettingsURLDestination.Action);
          v50 = 1;
          return v50 & 1;
        }

        sub_10001872C(v65, type metadata accessor for EngagementLinkData);
        sub_10001872C(v64, type metadata accessor for EngagementLinkData);
        goto LABEL_55;
      }

      sub_10001872C(v64, type metadata accessor for EngagementLinkData);
      goto LABEL_41;
    }

    v25 = v74;
    sub_1000F53A4(v34, v74, type metadata accessor for SettingsURLDestination.Action);
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      v55 = v76;
      v54 = v77;
      v56 = v71;
      (*(v76 + 32))(v71, v37, v77);
      v50 = static URL.== infix(_:_:)();
      v57 = *(v55 + 8);
      v57(v56, v54);
      v57(v25, v54);
      goto LABEL_25;
    }

LABEL_26:
    (*(v76 + 8))(v25, v77);
    goto LABEL_41;
  }

  v49 = v78;
  v48 = v79;
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      sub_1000F53A4(v34, v25, type metadata accessor for SettingsURLDestination.Action);
      if (swift_getEnumCaseMultiPayload() != 2)
      {
        goto LABEL_26;
      }

      v52 = v76;
      v51 = v77;
      (*(v76 + 32))(v49, v37, v77);
      v50 = static URL.== infix(_:_:)();
      v53 = *(v52 + 8);
      v53(v49, v51);
      v53(v25, v51);
    }

    else
    {
      sub_1000F53A4(v34, v22, type metadata accessor for SettingsURLDestination.Action);
      if (swift_getEnumCaseMultiPayload() != 3)
      {
        (*(v76 + 8))(v22, v77);
        goto LABEL_41;
      }

      v62 = v76;
      v61 = v77;
      (*(v76 + 32))(v48, v37, v77);
      v50 = static URL.== infix(_:_:)();
      v63 = *(v62 + 8);
      v63(v48, v61);
      v63(v22, v61);
    }
  }

  else
  {
    if (EnumCaseMultiPayload)
    {
      sub_1000F53A4(v34, v28, type metadata accessor for SettingsURLDestination.Action);
      v60 = *(v28 + 1);
      v81 = *v28;
      v82 = v60;
      v83 = v28[32];
      if (swift_getEnumCaseMultiPayload() == 1)
      {
LABEL_20:
        v59 = v37[1];
        v84[0] = *v37;
        v84[1] = v59;
        v85 = v37[2].u8[0];
        v50 = sub_10002BB48(&v81, v84);
        sub_100026A04(&v81);
        sub_100026A04(v84);
        goto LABEL_25;
      }

LABEL_22:
      sub_100026A04(&v81);
      goto LABEL_41;
    }

    sub_1000F53A4(v34, v30, type metadata accessor for SettingsURLDestination.Action);
    if (swift_getEnumCaseMultiPayload())
    {
      goto LABEL_41;
    }

    v50 = *v30 == v37->u8[0];
  }

LABEL_25:
  sub_10001872C(v34, type metadata accessor for SettingsURLDestination.Action);
  return v50 & 1;
}

uint64_t sub_1000F5F3C(uint64_t a1)
{
  v2 = sub_10004DED0(&qword_100161380, &unk_100118810);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata accessor for SettingsURLRoute(uint64_t a1)
{
  result = qword_100161408;
  if (!qword_100161408)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000F6018(uint64_t a1)
{
  sub_1000F6070();
  v2 = v1;
  if (v3 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v2;
}

void sub_1000F6070()
{
  if (!qword_100161418)
  {
    v0 = type metadata accessor for SettingsURLDestination(0);
    if (!v1)
    {
      atomic_store(v0, &qword_100161418);
    }
  }
}

uint64_t sub_1000F60B8()
{
  v1 = v0;
  v2 = type metadata accessor for SettingsURLDestination(0);
  __chkstk_darwin(v2 - 8);
  v4 = v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for SettingsURLRoute(0);
  __chkstk_darwin(v5 - 8);
  v7 = v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000F6638(v1, v7);
  v8 = sub_10004DED0(&qword_10015B298, &unk_100118820);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    return 0x6564726163736964;
  }

  sub_1000F669C(v7, v4);
  v12[0] = 0x2064656C646E6168;
  v12[1] = 0xE800000000000000;
  v10._countAndFlagsBits = sub_1000F41C0();
  String.append(_:)(v10);

  v9 = v12[0];
  sub_1000464C0(v4, type metadata accessor for SettingsURLDestination);
  return v9;
}

void sub_1000F6250(uint64_t a1)
{
  v3 = type metadata accessor for URLQueryItem();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for SettingsURLDestination(0);
  __chkstk_darwin(v7);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for SettingsURLRoute(0);
  __chkstk_darwin(v10 - 8);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000F6638(v1, v12);
  v13 = sub_10004DED0(&qword_10015B298, &unk_100118820);
  if ((*(*(v13 - 8) + 48))(v12, 1, v13) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    sub_1000F669C(v12, v9);
    Hasher._combine(_:)(1uLL);
    type metadata accessor for URL();
    sub_1000F6700(&qword_100161388, &type metadata accessor for URL, &protocol conformance descriptor for URL);
    dispatch thunk of Hashable.hash(into:)();
    sub_1000F4790(a1);
    v14 = *(v7 + 24);
    v23 = v9;
    v15 = *&v9[v14];
    Hasher._combine(_:)(*(v15 + 16));
    v16 = *(v15 + 16);
    if (v16)
    {
      v19 = *(v4 + 16);
      v17 = v4 + 16;
      v18 = v19;
      v20 = v15 + ((*(v17 + 64) + 32) & ~*(v17 + 64));
      v21 = *(v17 + 56);
      do
      {
        v18(v6, v20, v3);
        sub_1000F6700(&qword_100161390, &type metadata accessor for URLQueryItem, &protocol conformance descriptor for URLQueryItem);
        dispatch thunk of Hashable.hash(into:)();
        (*(v17 - 8))(v6, v3);
        v20 += v21;
        --v16;
      }

      while (v16);
    }

    sub_1000464C0(v23, type metadata accessor for SettingsURLDestination);
  }
}

Swift::Int sub_1000F6568()
{
  Hasher.init(_seed:)();
  sub_1000F6250(v1);
  return Hasher._finalize()();
}

Swift::Int sub_1000F65AC(uint64_t a1)
{
  Hasher.init(_seed:)();
  sub_1000F6250(v2);
  return Hasher._finalize()();
}

uint64_t sub_1000F6638(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SettingsURLRoute(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000F669C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SettingsURLDestination(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000F6700(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1000F6748(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SettingsURLDestination(0);
  __chkstk_darwin(v4);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for SettingsURLRoute(0);
  __chkstk_darwin(v7 - 8);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10004DED0(&qword_100161448, &qword_1001188D8);
  v11 = __chkstk_darwin(v10 - 8);
  v13 = &v19 - v12;
  v14 = *(v11 + 56);
  sub_1000F6638(a1, &v19 - v12);
  sub_1000F6638(a2, &v13[v14]);
  v15 = sub_10004DED0(&qword_10015B298, &unk_100118820);
  v16 = *(*(v15 - 8) + 48);
  if (v16(v13, 1, v15) == 1)
  {
    if (v16(&v13[v14], 1, v15) == 1)
    {
LABEL_3:
      sub_1000464C0(v13, type metadata accessor for SettingsURLRoute);
      return 1;
    }

    goto LABEL_6;
  }

  sub_1000F6638(v13, v9);
  if (v16(&v13[v14], 1, v15) == 1)
  {
    sub_1000464C0(v9, type metadata accessor for SettingsURLDestination);
LABEL_6:
    sub_1000F6A30(v13);
    return 0;
  }

  sub_1000F669C(&v13[v14], v6);
  if (static URL.== infix(_:_:)() & 1) != 0 && (sub_1000F55E8(&v9[*(v4 + 20)], &v6[*(v4 + 20)]))
  {
    v18 = sub_10006C7A4(*&v9[*(v4 + 24)], *&v6[*(v4 + 24)]);
    sub_1000464C0(v6, type metadata accessor for SettingsURLDestination);
    sub_1000464C0(v9, type metadata accessor for SettingsURLDestination);
    if (v18)
    {
      goto LABEL_3;
    }
  }

  else
  {
    sub_1000464C0(v6, type metadata accessor for SettingsURLDestination);
    sub_1000464C0(v9, type metadata accessor for SettingsURLDestination);
  }

  sub_1000464C0(v13, type metadata accessor for SettingsURLRoute);
  return 0;
}

uint64_t sub_1000F6A30(uint64_t a1)
{
  v2 = sub_10004DED0(&qword_100161448, &qword_1001188D8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

Swift::Int sub_1000F6A98()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  String.hash(into:)();
  type metadata accessor for URL();
  sub_1000F6D80(&qword_100161388, &type metadata accessor for URL, &protocol conformance descriptor for URL);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_1000F6B4C(uint64_t a1)
{
  String.hash(into:)();
  String.hash(into:)();
  type metadata accessor for URL();
  sub_1000F6D80(&qword_100161388, &type metadata accessor for URL, &protocol conformance descriptor for URL);
  return dispatch thunk of Hashable.hash(into:)();
}

Swift::Int sub_1000F6BE4(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  String.hash(into:)();
  type metadata accessor for URL();
  sub_1000F6D80(&qword_100161388, &type metadata accessor for URL, &protocol conformance descriptor for URL);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_1000F6C94(uint64_t *a1, void *a2, uint64_t a3)
{
  v5 = *a1 == *a2 && a1[1] == a2[1];
  if (!v5 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v6 = a1[2] == a2[2] && a1[3] == a2[3];
  if (!v6 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  return static URL.== infix(_:_:)();
}

uint64_t sub_1000F6D80(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1000F6DD8(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v53 = type metadata accessor for EngagementLinkData(0);
  __chkstk_darwin(v53);
  v54 = &v50 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10004DED0(&qword_10015E910, &unk_10010FC70);
  __chkstk_darwin(v5 - 8);
  v7 = &v50 - v6;
  v8 = type metadata accessor for URL();
  v56 = *(v8 - 8);
  v57 = v8;
  __chkstk_darwin(v8);
  v52 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = type metadata accessor for URLQueryItem();
  v10 = *(v59 - 8);
  v11 = __chkstk_darwin(v59);
  v13 = &v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v58 = &v50 - v14;
  v15 = sub_10004DED0(&qword_1001614F0, &unk_1001189B0);
  __chkstk_darwin(v15 - 8);
  v17 = &v50 - v16;
  if (qword_10015AAB8 != -1)
  {
LABEL_35:
    swift_once();
  }

  v18 = type metadata accessor for Logger();
  sub_10000659C(v18, qword_1001696A0);
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.default.getter();
  v21 = os_log_type_enabled(v19, v20);
  v55 = v7;
  if (v21)
  {
    v22 = swift_slowAlloc();
    v60[0] = swift_slowAlloc();
    *v22 = 136315394;
    *(v22 + 4) = sub_100025CF0(0xD00000000000001ALL, 0x80000001001265C0, v60);
    *(v22 + 12) = 2080;
    *(v22 + 14) = sub_100025CF0(0x3A5F286574756F72, 0xE900000000000029, v60);
    _os_log_impl(&_mh_execute_header, v19, v20, "Start (%s.%s)…", v22, 0x16u);
    swift_arrayDestroy();
  }

  v23 = URL.host.getter();
  if (!v24)
  {
    goto LABEL_11;
  }

  if (v23 == 0xD000000000000016 && v24 == 0x80000001001265A0)
  {

    goto LABEL_9;
  }

  v25 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v25 & 1) == 0)
  {
LABEL_11:
    v29 = sub_10004DED0(&qword_10015B298, &unk_100118820);
    (*(*(v29 - 8) + 56))(a2, 1, 1, v29);

    goto LABEL_13;
  }

LABEL_9:
  URLComponents.init(url:resolvingAgainstBaseURL:)();
  v26 = type metadata accessor for URLComponents();
  v27 = *(v26 - 8);
  v28 = (*(v27 + 48))(v17, 1, v26);
  v50 = a1;
  v51 = a2;
  if (v28 == 1)
  {
    sub_1000068B0(v17, &qword_1001614F0, &unk_1001189B0);
  }

  else
  {
    v7 = URLComponents.queryItems.getter();
    (*(v27 + 8))(v17, v26);
    if (v7)
    {
      v30 = *(v7 + 2);
      if (v30)
      {
        goto LABEL_18;
      }

LABEL_30:

      v40 = v51;
LABEL_31:
      v44 = sub_10004DED0(&qword_10015B298, &unk_100118820);
      (*(*(v44 - 8) + 56))(v40, 1, 1, v44);
      goto LABEL_13;
    }
  }

  v7 = _swiftEmptyArrayStorage;
  v30 = _swiftEmptyArrayStorage[2];
  if (!v30)
  {
    goto LABEL_30;
  }

LABEL_18:
  a1 = 0;
  v17 = 0x556465646F636E65;
  a2 = v10 + 16;
  while (1)
  {
    if (a1 >= *(v7 + 2))
    {
      __break(1u);
      goto LABEL_35;
    }

    (*(v10 + 16))(v13, &v7[((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * a1], v59);
    if (URLQueryItem.name.getter() == 0x556465646F636E65 && v31 == 0xEA00000000004C52)
    {
      break;
    }

    v32 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v32)
    {
      goto LABEL_26;
    }

    ++a1;
    (*(v10 + 8))(v13, v59);
    if (v30 == a1)
    {
      goto LABEL_30;
    }
  }

LABEL_26:
  v34 = v58;
  v33 = v59;
  (*(v10 + 32))(v58, v13, v59);
  v35 = URLQueryItem.value.getter();
  v37 = v36;
  (*(v10 + 8))(v34, v33);
  if (!v37)
  {
    goto LABEL_30;
  }

  v60[0] = v35;
  v60[1] = v37;
  sub_10002EAE0();
  StringProtocol.removingPercentEncoding.getter();
  v39 = v38;

  v40 = v51;
  if (!v39)
  {

    goto LABEL_31;
  }

  v41 = v55;
  URL.init(string:)();

  v43 = v56;
  v42 = v57;
  if ((*(v56 + 48))(v41, 1, v57) == 1)
  {

    sub_1000068B0(v41, &qword_10015E910, &unk_10010FC70);
    goto LABEL_31;
  }

  v45 = *(v43 + 32);
  v46 = v52;
  v45(v52, v41, v42);
  v47 = v54;
  v45(&v54[*(v53 + 24)], v46, v42);
  *v47 = 0x73676E6974746553;
  v47[1] = 0xE800000000000000;
  v47[2] = 49;
  v47[3] = 0xE100000000000000;
  (*(v43 + 16))(v40, v50, v42);
  v48 = type metadata accessor for SettingsURLDestination(0);
  sub_1000F5340(v47, v40 + *(v48 + 20));
  type metadata accessor for SettingsURLDestination.Action(0);
  swift_storeEnumTagMultiPayload();
  *(v40 + *(v48 + 24)) = v7;
  v49 = sub_10004DED0(&qword_10015B298, &unk_100118820);
  (*(*(v49 - 8) + 56))(v40, 0, 1, v49);
LABEL_13:
  sub_1000F76D8();
}

uint64_t sub_1000F764C()
{
  v0 = URL.host.getter();
  if (v1)
  {
    if (v0 == 0xD000000000000016 && v1 == 0x80000001001265A0)
    {
      v2 = 1;
    }

    else
    {
      v2 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

  else
  {
    v2 = 0;
  }

  return v2 & 1;
}

void sub_1000F76D8()
{
  if (qword_10015AAB8 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_10000659C(v0, qword_1001696A0);
  oslog = Logger.logObject.getter();
  v1 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    *v2 = 136315394;
    *(v2 + 4) = sub_100025CF0(0xD00000000000001ALL, 0x80000001001265C0, &v4);
    *(v2 + 12) = 2080;
    *(v2 + 14) = sub_100025CF0(0x3A5F286574756F72, 0xE900000000000029, &v4);
    _os_log_impl(&_mh_execute_header, oslog, v1, "…Complete (%s.%s)", v2, 0x16u);
    swift_arrayDestroy();
  }
}

void sub_1000F786C(uint64_t a1@<X0>, char *a2@<X8>)
{
  v51 = a1;
  v56 = a2;
  v53 = type metadata accessor for SettingsURLDestination.Action(0);
  __chkstk_darwin(v53);
  v3 = &v46 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10004DED0(&qword_10015E910, &unk_10010FC70);
  __chkstk_darwin(v4 - 8);
  v6 = &v46 - v5;
  v7 = type metadata accessor for URL();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v52 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v50 = &v46 - v12;
  __chkstk_darwin(v11);
  v49 = &v46 - v13;
  v14 = type metadata accessor for SettingsNavigationHost();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v46 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for URLComponents();
  v54 = *(v18 - 8);
  v55 = v18;
  __chkstk_darwin(v18);
  v20 = &v46 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10015AAB8 != -1)
  {
    swift_once();
  }

  v21 = type metadata accessor for Logger();
  v48 = sub_10000659C(v21, qword_1001696A0);
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v46 = v14;
    v25 = v24;
    v26 = swift_slowAlloc();
    v47 = v7;
    v57 = v26;
    *v25 = 136315394;
    *(v25 + 4) = sub_100025CF0(0xD000000000000024, 0x8000000100126630, &v57);
    *(v25 + 12) = 2080;
    *(v25 + 14) = sub_100025CF0(0x3A5F286574756F72, 0xE900000000000029, &v57);
    _os_log_impl(&_mh_execute_header, v22, v23, "Start (%s.%s)…", v25, 0x16u);
    swift_arrayDestroy();
    v7 = v47;

    v14 = v46;
  }

  URLComponents.init()();
  URLComponents.scheme.setter();
  static SettingsNavigationHost.apps.getter();
  SettingsNavigationHost.rawValue.getter();
  (*(v15 + 8))(v17, v14);
  URLComponents.host.setter();
  URLComponents.path.setter();
  URLComponents.url.getter();
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_1000068B0(v6, &qword_10015E910, &unk_10010FC70);
    v27 = v52;
    (*(v8 + 16))(v52, v51, v7);
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v57 = v31;
      *v30 = 141558275;
      *(v30 + 4) = 1752392040;
      *(v30 + 12) = 2081;
      v32 = URL.absoluteString.getter();
      v33 = v7;
      v35 = v34;
      (*(v8 + 8))(v27, v33);
      v36 = sub_100025CF0(v32, v35, &v57);

      *(v30 + 14) = v36;
      _os_log_impl(&_mh_execute_header, v28, v29, "Could not create re-direct URL for App Installation for input URL %{private,mask.hash}s", v30, 0x16u);
      sub_10000665C(v31);
    }

    else
    {

      (*(v8 + 8))(v27, v7);
    }

    (*(v54 + 8))(v20, v55);
    v44 = 1;
  }

  else
  {
    v37 = *(v8 + 32);
    v38 = v49;
    v37(v49, v6, v7);
    v39 = v50;
    (*(v8 + 16))(v50, v38, v7);
    *v3 = 45;
    *(v3 + 1) = 0;
    *(v3 + 2) = 0;
    *(v3 + 3) = 0;
    v3[32] = 6;
    swift_storeEnumTagMultiPayload();
    v40 = URLComponents.queryItems.getter();
    if (v40)
    {
      v41 = v40;
    }

    else
    {
      v41 = _swiftEmptyArrayStorage;
    }

    (*(v8 + 8))(v38, v7);
    (*(v54 + 8))(v20, v55);
    v42 = v56;
    v37(v56, v39, v7);
    v43 = type metadata accessor for SettingsURLDestination(0);
    sub_1000F8168(v3, &v42[*(v43 + 20)]);
    v44 = 0;
    *&v42[*(v43 + 24)] = v41;
  }

  v45 = sub_10004DED0(&qword_10015B298, &unk_100118820);
  (*(*(v45 - 8) + 56))(v56, v44, 1, v45);
  sub_1000F7FE4();
}

void sub_1000F7FE4()
{
  if (qword_10015AAB8 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_10000659C(v0, qword_1001696A0);
  oslog = Logger.logObject.getter();
  v1 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    *v2 = 136315394;
    *(v2 + 4) = sub_100025CF0(0xD000000000000024, 0x8000000100126630, &v4);
    *(v2 + 12) = 2080;
    *(v2 + 14) = sub_100025CF0(0x3A5F286574756F72, 0xE900000000000029, &v4);
    _os_log_impl(&_mh_execute_header, oslog, v1, "…Complete (%s.%s)", v2, 0x16u);
    swift_arrayDestroy();
  }
}

uint64_t sub_1000F8168(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SettingsURLDestination.Action(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000F81CC()
{
  v0 = type metadata accessor for SettingsNavigationHost();
  v47 = *(v0 - 8);
  __chkstk_darwin(v0);
  v40 = v39 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_10004DED0(&qword_1001614F8, &qword_1001189F0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v41 = v39 - v4;
  v5 = sub_10004DED0(&qword_100161500, &qword_1001189F8);
  __chkstk_darwin(v5);
  v43 = v39 - v6;
  v7 = sub_10004DED0(&qword_100161508, &qword_100118A00);
  __chkstk_darwin(v7);
  v9 = v39 - v8;
  v10 = sub_10004DED0(&qword_100161510, &qword_100118A08);
  v11 = __chkstk_darwin(v10 - 8);
  v46 = v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v15 = v39 - v14;
  __chkstk_darwin(v13);
  v17 = v39 - v16;
  URL.scheme.getter();
  if (!v18)
  {
    goto LABEL_15;
  }

  v42 = v5;
  v44 = v9;
  v45 = v0;
  v19 = String.lowercased()();

  if ((v19._countAndFlagsBits != 0xD000000000000013 || 0x80000001001265E0 != v19._object) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {

    goto LABEL_15;
  }

  v39[1] = v19._object;
  v20 = URL.host(percentEncoded:)(1);
  if (v20.value._object)
  {
    v48 = v20;
    sub_1000F8A18(&qword_100161520, &protocol conformance descriptor for SettingsNavigationHost);
    v21 = v45;
    dispatch thunk of RawRepresentable.init(rawValue:)();
    v22 = *(v3 + 56);
    v22(v17, 0, 1, v2);
    v23 = v44;
  }

  else
  {
    v22 = *(v3 + 56);
    v22(v17, 1, 1, v2);
    v23 = v44;
    v21 = v45;
  }

  v24 = v42;
  static SettingsNavigationHost.appInstallation.getter();
  (*(v47 + 56))(v15, 0, 1, v21);
  v22(v15, 0, 1, v2);
  v25 = *(v7 + 48);
  sub_100059CA0(v17, v23, &qword_100161510, &qword_100118A08);
  sub_100059CA0(v15, v23 + v25, &qword_100161510, &qword_100118A08);
  v26 = *(v3 + 48);
  if (v26(v23, 1, v2) != 1)
  {
    v28 = v46;
    sub_100059CA0(v23, v46, &qword_100161510, &qword_100118A08);
    if (v26(v23 + v25, 1, v2) == 1)
    {

      sub_1000068B0(v15, &qword_100161510, &qword_100118A08);
      sub_1000068B0(v17, &qword_100161510, &qword_100118A08);
      sub_1000068B0(v28, &qword_1001614F8, &qword_1001189F0);
      goto LABEL_13;
    }

    v30 = *(v24 + 48);
    v31 = v43;
    sub_1000F89A8(v28, v43);
    sub_1000F89A8(v23 + v25, v31 + v30);
    v32 = *(v47 + 48);
    v33 = v45;
    if (v32(v31, 1, v45) == 1)
    {

      sub_1000068B0(v15, &qword_100161510, &qword_100118A08);
      sub_1000068B0(v17, &qword_100161510, &qword_100118A08);
      if (v32(v31 + v30, 1, v33) == 1)
      {
        sub_1000068B0(v31, &qword_1001614F8, &qword_1001189F0);
        v27 = 1;
LABEL_24:
        sub_1000068B0(v23, &qword_100161510, &qword_100118A08);
        return v27 & 1;
      }
    }

    else
    {
      v34 = v41;
      sub_100059CA0(v31, v41, &qword_1001614F8, &qword_1001189F0);
      if (v32(v31 + v30, 1, v33) != 1)
      {
        v35 = v47;
        v36 = v40;
        (*(v47 + 32))(v40, v31 + v30, v33);
        sub_1000F8A18(&qword_100161518, &protocol conformance descriptor for SettingsNavigationHost);
        v37 = v34;
        v27 = dispatch thunk of static Equatable.== infix(_:_:)();

        v38 = *(v35 + 8);
        v38(v36, v33);
        sub_1000068B0(v15, &qword_100161510, &qword_100118A08);
        sub_1000068B0(v17, &qword_100161510, &qword_100118A08);
        v38(v37, v33);
        v23 = v44;
        sub_1000068B0(v31, &qword_1001614F8, &qword_1001189F0);
        goto LABEL_24;
      }

      sub_1000068B0(v15, &qword_100161510, &qword_100118A08);
      sub_1000068B0(v17, &qword_100161510, &qword_100118A08);
      (*(v47 + 8))(v34, v33);
    }

    sub_1000068B0(v31, &qword_100161500, &qword_1001189F8);
    v27 = 0;
    goto LABEL_24;
  }

  sub_1000068B0(v15, &qword_100161510, &qword_100118A08);
  sub_1000068B0(v17, &qword_100161510, &qword_100118A08);
  if (v26(v23 + v25, 1, v2) != 1)
  {
LABEL_13:
    sub_1000068B0(v23, &qword_100161508, &qword_100118A00);
LABEL_15:
    v27 = 0;
    return v27 & 1;
  }

  sub_1000068B0(v23, &qword_100161510, &qword_100118A08);
  v27 = 1;
  return v27 & 1;
}

uint64_t sub_1000F89A8(uint64_t a1, uint64_t a2)
{
  v4 = sub_10004DED0(&qword_1001614F8, &qword_1001189F0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000F8A18(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SettingsNavigationHost();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1000F8A6C(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for URLQueryItem();
  v5 = *(v4 - 8);
  v70 = v4;
  v71 = v5;
  v6 = __chkstk_darwin(v4);
  v73 = &v58 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v6);
  v65 = &v58 - v9;
  v10 = __chkstk_darwin(v8);
  v64 = &v58 - v11;
  v12 = __chkstk_darwin(v10);
  v63 = &v58 - v13;
  __chkstk_darwin(v12);
  v74 = &v58 - v14;
  v15 = sub_10004DED0(&qword_1001614F0, &unk_1001189B0);
  __chkstk_darwin(v15 - 8);
  v17 = &v58 - v16;
  v18 = type metadata accessor for URLComponents();
  v67 = *(v18 - 8);
  __chkstk_darwin(v18);
  v66 = &v58 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10015AAB8 != -1)
  {
LABEL_37:
    swift_once();
  }

  v20 = type metadata accessor for Logger();
  sub_10000659C(v20, qword_1001696A0);
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = v18;
    v24 = swift_slowAlloc();
    v77[0] = swift_slowAlloc();
    *v24 = 136315394;
    *(v24 + 4) = sub_100025CF0(0xD00000000000001DLL, 0x80000001001266A0, v77);
    *(v24 + 12) = 2080;
    *(v24 + 14) = sub_100025CF0(0x3A5F286574756F72, 0xE900000000000029, v77);
    _os_log_impl(&_mh_execute_header, v21, v22, "Start (%s.%s)…", v24, 0x16u);
    swift_arrayDestroy();

    v18 = v23;
  }

  URLComponents.init(url:resolvingAgainstBaseURL:)();
  v25 = v67;
  v26 = (*(v67 + 48))(v17, 1, v18);
  v27 = v66;
  if (v26 == 1)
  {
    sub_1000F936C(v17);
LABEL_8:
    v30 = 1;
    goto LABEL_9;
  }

  (*(v25 + 32))(v66, v17, v18);
  v77[0] = URLComponents.path.getter();
  v77[1] = v28;
  v75 = 0xD000000000000019;
  v76 = 0x8000000100126660;
  sub_10002EAE0();
  v29 = StringProtocol.caseInsensitiveCompare<A>(_:)();

  if (v29)
  {
    (*(v25 + 8))(v27, v18);
    goto LABEL_8;
  }

  v60 = a1;
  v61 = v18;
  v32 = URLComponents.percentEncodedQueryItems.getter();
  if (!v32)
  {
    (*(v25 + 8))(v27, v61);
    goto LABEL_8;
  }

  v18 = v32;
  v59 = a2;
  v69 = *(v32 + 16);
  if (v69)
  {
    v33 = 0;
    v34 = 0x6174616464726163;
    a1 = v70;
    v68 = v71 + 16;
    v62 = (v71 + 8);
    v72 = (v71 + 32);
    v17 = _swiftEmptyArrayStorage;
    while (1)
    {
      if (v33 >= *(v18 + 16))
      {
        __break(1u);
        goto LABEL_37;
      }

      v35 = (*(v71 + 80) + 32) & ~*(v71 + 80);
      v36 = *(v71 + 72);
      (*(v71 + 16))(v74, v18 + v35 + v36 * v33, a1);
      if (URLQueryItem.name.getter() == v34 && v37 == 0xE800000000000000)
      {
        break;
      }

      v38 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v38)
      {
        goto LABEL_20;
      }

      (*v62)(v74, a1);
LABEL_14:
      if (v69 == ++v33)
      {
        goto LABEL_27;
      }
    }

LABEL_20:
    a2 = v18;
    v39 = v34;
    v40 = *v72;
    (*v72)(v73, v74, a1);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v77[0] = v17;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_1000F52B8(0, *(v17 + 2) + 1, 1);
      v17 = v77[0];
    }

    v43 = *(v17 + 2);
    v42 = *(v17 + 3);
    if (v43 >= v42 >> 1)
    {
      sub_1000F52B8((v42 > 1), v43 + 1, 1);
      v17 = v77[0];
    }

    *(v17 + 2) = v43 + 1;
    v44 = &v17[v35 + v43 * v36];
    a1 = v70;
    v40(v44, v73, v70);
    v34 = v39;
    v18 = a2;
    goto LABEL_14;
  }

  v17 = _swiftEmptyArrayStorage;
LABEL_27:

  v45 = v63;
  URLQueryItem.init(name:value:)();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v17 = sub_1000C4F50(0, *(v17 + 2) + 1, 1, v17);
  }

  v47 = *(v17 + 2);
  v46 = *(v17 + 3);
  if (v47 >= v46 >> 1)
  {
    v17 = sub_1000C4F50((v46 > 1), v47 + 1, 1, v17);
  }

  *(v17 + 2) = v47 + 1;
  v48 = *(v71 + 32);
  v49 = (*(v71 + 80) + 32) & ~*(v71 + 80);
  v50 = *(v71 + 72);
  v48(&v17[v49 + v50 * v47], v45, v70);
  URLQueryItem.init(name:value:)();
  v52 = *(v17 + 2);
  v51 = *(v17 + 3);
  if (v52 >= v51 >> 1)
  {
    v17 = sub_1000C4F50((v51 > 1), v52 + 1, 1, v17);
  }

  *(v17 + 2) = v52 + 1;
  v48(&v17[v49 + v52 * v50], v64, v70);
  URLQueryItem.init(name:value:)();
  v54 = *(v17 + 2);
  v53 = *(v17 + 3);
  if (v54 >= v53 >> 1)
  {
    v17 = sub_1000C4F50((v53 > 1), v54 + 1, 1, v17);
  }

  (*(v67 + 8))(v66, v61);
  *(v17 + 2) = v54 + 1;
  v48(&v17[v49 + v54 * v50], v65, v70);
  v55 = type metadata accessor for URL();
  a2 = v59;
  (*(*(v55 - 8) + 16))(v59, v60, v55);
  v56 = type metadata accessor for SettingsURLDestination(0);
  v57 = a2 + *(v56 + 20);
  *v57 = 6;
  *(v57 + 8) = 0;
  *(v57 + 16) = 0;
  *(v57 + 24) = 0;
  *(v57 + 32) = 6;
  type metadata accessor for SettingsURLDestination.Action(0);
  swift_storeEnumTagMultiPayload();
  v30 = 0;
  *(a2 + *(v56 + 24)) = v17;
LABEL_9:
  v31 = sub_10004DED0(&qword_10015B298, &unk_100118820);
  (*(*(v31 - 8) + 56))(a2, v30, 1, v31);
  sub_1000F93D4();
}

uint64_t sub_1000F936C(uint64_t a1)
{
  v2 = sub_10004DED0(&qword_1001614F0, &unk_1001189B0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1000F93D4()
{
  if (qword_10015AAB8 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_10000659C(v0, qword_1001696A0);
  oslog = Logger.logObject.getter();
  v1 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    *v2 = 136315394;
    *(v2 + 4) = sub_100025CF0(0xD00000000000001DLL, 0x80000001001266A0, &v4);
    *(v2 + 12) = 2080;
    *(v2 + 14) = sub_100025CF0(0x3A5F286574756F72, 0xE900000000000029, &v4);
    _os_log_impl(&_mh_execute_header, oslog, v1, "…Complete (%s.%s)", v2, 0x16u);
    swift_arrayDestroy();
  }
}

uint64_t sub_1000F9558(uint64_t a1)
{
  URL.scheme.getter();
  if (!v1)
  {
    goto LABEL_10;
  }

  v2 = String.lowercased()();

  if (v2._countAndFlagsBits == 0x7370747468 && v2._object == 0xE500000000000000)
  {
  }

  else
  {
    v3 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v3 & 1) == 0)
    {
LABEL_10:
      v6 = 0;
      return v6 & 1;
    }
  }

  URL.host.getter();
  if (!v4)
  {
    goto LABEL_10;
  }

  v5 = String.lowercased()();

  if (v5._countAndFlagsBits == 0xD000000000000013 && 0x80000001001266C0 == v5._object)
  {
    v6 = 1;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v6 & 1;
}

void sub_1000F968C(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (qword_10015AAB8 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_10000659C(v4, qword_1001696A0);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    *v7 = 136315394;
    *(v7 + 4) = sub_100025CF0(0xD00000000000001ALL, 0x8000000100126700, &v16);
    *(v7 + 12) = 2080;
    *(v7 + 14) = sub_100025CF0(0x3A5F286574756F72, 0xE900000000000029, &v16);
    _os_log_impl(&_mh_execute_header, v5, v6, "Start (%s.%s)…", v7, 0x16u);
    swift_arrayDestroy();
  }

  URL.scheme.getter();
  if (v8)
  {
    v9 = String.lowercased()();

    if (v9._countAndFlagsBits == 0xD000000000000014 && 0x80000001001266E0 == v9._object)
    {

LABEL_10:
      v11 = type metadata accessor for URL();
      v12 = *(*(v11 - 8) + 16);
      v12(a2, a1, v11);
      v13 = type metadata accessor for SettingsURLDestination(0);
      v12(a2 + *(v13 + 20), a1, v11);
      type metadata accessor for SettingsURLDestination.Action(0);
      swift_storeEnumTagMultiPayload();
      v14 = 0;
      *(a2 + *(v13 + 24)) = _swiftEmptyArrayStorage;
      goto LABEL_12;
    }

    v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v10)
    {
      goto LABEL_10;
    }
  }

  v14 = 1;
LABEL_12:
  v15 = sub_10004DED0(&qword_10015B298, &unk_100118820);
  (*(*(v15 - 8) + 56))(a2, v14, 1, v15);

  sub_1000F9994();
}

void sub_1000F9994()
{
  if (qword_10015AAB8 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_10000659C(v0, qword_1001696A0);
  oslog = Logger.logObject.getter();
  v1 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    *v2 = 136315394;
    *(v2 + 4) = sub_100025CF0(0xD00000000000001ALL, 0x8000000100126700, &v4);
    *(v2 + 12) = 2080;
    *(v2 + 14) = sub_100025CF0(0x3A5F286574756F72, 0xE900000000000029, &v4);
    _os_log_impl(&_mh_execute_header, oslog, v1, "…Complete (%s.%s)", v2, 0x16u);
    swift_arrayDestroy();
  }
}

uint64_t sub_1000F9B18(uint64_t a1)
{
  URL.scheme.getter();
  if (v1)
  {
    v2 = String.lowercased()();

    if (v2._countAndFlagsBits == 0xD000000000000014 && 0x80000001001266E0 == v2._object)
    {
      v3 = 1;
    }

    else
    {
      v3 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

  else
  {
    v3 = 0;
  }

  return v3 & 1;
}

void sub_1000F9BD0(char *a1@<X0>, uint64_t a2@<X8>)
{
  v48 = a1;
  v52 = type metadata accessor for URLQueryItem();
  v3 = *(v52 - 8);
  v4 = __chkstk_darwin(v52);
  v6 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v43 = &v42 - v7;
  v8 = sub_10004DED0(&qword_1001614F0, &unk_1001189B0);
  __chkstk_darwin(v8 - 8);
  v10 = &v42 - v9;
  v11 = type metadata accessor for URLComponents();
  v49 = *(v11 - 8);
  v50 = v11;
  __chkstk_darwin(v11);
  v45 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10004DED0(&qword_100161528, &unk_100118AA0);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v42 - v15;
  v17 = type metadata accessor for URL();
  v46 = *(v17 - 8);
  v47 = v17;
  __chkstk_darwin(v17);
  v51 = &v42 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10015AAB8 != -1)
  {
LABEL_27:
    swift_once();
  }

  v19 = type metadata accessor for Logger();
  sub_10000659C(v19, qword_1001696A0);
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v44 = a2;
    v23 = v22;
    v53 = swift_slowAlloc();
    *v23 = 136315394;
    *(v23 + 4) = sub_100025CF0(0xD000000000000018, 0x8000000100126720, &v53);
    *(v23 + 12) = 2080;
    *(v23 + 14) = sub_100025CF0(0x3A5F286574756F72, 0xE900000000000029, &v53);
    _os_log_impl(&_mh_execute_header, v20, v21, "Start (%s.%s)…", v23, 0x16u);
    swift_arrayDestroy();

    a2 = v44;
  }

  static Transforming<>.normalizedPrefsAndAppPrefs.getter();
  v24 = Transforming.transform.getter();
  v14[1](v16, v13);
  v25 = v51;
  v24(v48);

  URL.absoluteString.getter();
  URLComponents.init(string:)();

  v13 = v49;
  v26 = v50;
  if ((*(v49 + 48))(v10, 1, v50) == 1)
  {
    (*(v46 + 8))(v25, v47);
    sub_1000F936C(v10);
LABEL_24:
    v31 = 1;
    goto LABEL_25;
  }

  v27 = v45;
  (*(v13 + 32))(v45, v10, v26);
  v28 = URLComponents.percentEncodedQueryItems.getter();
  if (!v28)
  {
    (*(v13 + 8))(v27, v26);
    (*(v46 + 8))(v25, v47);
    goto LABEL_24;
  }

  v10 = v28;
  v44 = a2;
  v29 = *(v28 + 16);
  if (v29)
  {
    v16 = 0;
    a2 = 1953460082;
    v14 = (v3 + 8);
    while (1)
    {
      if (v16 >= *(v10 + 2))
      {
        __break(1u);
        goto LABEL_27;
      }

      (*(v3 + 16))(v6, &v10[((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v16], v52);
      if (URLQueryItem.name.getter() == 1953460082 && v30 == 0xE400000000000000)
      {
        break;
      }

      v13 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v13)
      {
        goto LABEL_17;
      }

      ++v16;
      (*v14)(v6, v52);
      if (v29 == v16)
      {
        goto LABEL_14;
      }
    }

LABEL_17:

    v32 = v43;
    (*(v3 + 32))(v43, v6, v52);
    v33 = URLQueryItem.value.getter();
    a2 = v44;
    v35 = v49;
    if (v34)
    {
      if (v33 == 0x49465F5055544553 && v34 == 0xEC0000004853494ELL)
      {

LABEL_22:
        v38 = v46;
        v37 = v47;
        v39 = *(v46 + 16);
        v39(a2, v51, v47);
        v40 = type metadata accessor for SettingsURLDestination(0);
        v39(a2 + *(v40 + 20), v48, v37);
        type metadata accessor for SettingsURLDestination.Action(0);
        swift_storeEnumTagMultiPayload();
        (*v14)(v32, v52);
        (*(v35 + 8))(v45, v50);
        (*(v38 + 8))(v51, v37);
        v31 = 0;
        *(a2 + *(v40 + 24)) = _swiftEmptyArrayStorage;
        goto LABEL_25;
      }

      v36 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v36)
      {
        goto LABEL_22;
      }
    }

    (*v14)(v32, v52);
    (*(v35 + 8))(v45, v50);
    (*(v46 + 8))(v51, v47);
    goto LABEL_24;
  }

LABEL_14:

  (*(v49 + 8))(v45, v50);
  (*(v46 + 8))(v51, v47);
  v31 = 1;
  a2 = v44;
LABEL_25:
  v41 = sub_10004DED0(&qword_10015B298, &unk_100118820);
  (*(*(v41 - 8) + 56))(a2, v31, 1, v41);
  sub_1000FA3F4();
}

void sub_1000FA3F4()
{
  if (qword_10015AAB8 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_10000659C(v0, qword_1001696A0);
  oslog = Logger.logObject.getter();
  v1 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    *v2 = 136315394;
    *(v2 + 4) = sub_100025CF0(0xD000000000000018, 0x8000000100126720, &v4);
    *(v2 + 12) = 2080;
    *(v2 + 14) = sub_100025CF0(0x3A5F286574756F72, 0xE900000000000029, &v4);
    _os_log_impl(&_mh_execute_header, oslog, v1, "…Complete (%s.%s)", v2, 0x16u);
    swift_arrayDestroy();
  }
}

uint64_t sub_1000FA578(uint64_t a1)
{
  v2 = type metadata accessor for URLQueryItem();
  v47 = *(v2 - 8);
  v3 = __chkstk_darwin(v2);
  v5 = &v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v3);
  v45 = &v45 - v7;
  __chkstk_darwin(v6);
  v46 = &v45 - v8;
  v9 = sub_10004DED0(&qword_1001614F0, &unk_1001189B0);
  __chkstk_darwin(v9 - 8);
  v11 = &v45 - v10;
  v12 = type metadata accessor for URLComponents();
  v53 = *(v12 - 8);
  __chkstk_darwin(v12);
  v49 = &v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10004DED0(&qword_100161528, &unk_100118AA0);
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v45 - v16;
  v18 = type metadata accessor for URL();
  v50 = *(v18 - 8);
  v51 = v18;
  __chkstk_darwin(v18);
  v52 = &v45 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  URL.scheme.getter();
  if (!v20)
  {
    goto LABEL_26;
  }

  v48 = v12;
  v54 = v2;
  v21 = String.lowercased()();

  if (v21._countAndFlagsBits == 0x7366657270 && v21._object == 0xE500000000000000)
  {
  }

  else
  {
    v22 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v22 & 1) == 0)
    {
LABEL_26:
      v44 = 0;
      return v44 & 1;
    }
  }

  static Transforming<>.normalizedPrefsAndAppPrefs.getter();
  v23 = Transforming.transform.getter();
  (*(v15 + 8))(v17, v14);
  v24 = v52;
  v23(a1);

  URL.absoluteString.getter();
  URLComponents.init(string:)();

  v25 = v53;
  v26 = v48;
  if ((*(v53 + 48))(v11, 1, v48) == 1)
  {
    (*(v50 + 8))(v24, v51);
    sub_1000F936C(v11);
    goto LABEL_26;
  }

  v27 = v49;
  (*(v25 + 32))(v49, v11, v26);
  result = URLComponents.percentEncodedQueryItems.getter();
  if (!result)
  {
    (*(v25 + 8))(v27, v26);
    (*(v50 + 8))(v24, v51);
    goto LABEL_26;
  }

  v29 = result;
  v30 = *(result + 16);
  v31 = v54;
  v32 = v47;
  if (!v30)
  {
LABEL_16:

    (*(v53 + 8))(v49, v48);
LABEL_25:
    (*(v50 + 8))(v52, v51);
    goto LABEL_26;
  }

  v33 = 0;
  v34 = (v47 + 8);
  while (1)
  {
    if (v33 >= *(v29 + 16))
    {
      __break(1u);
      return result;
    }

    (*(v32 + 16))(v5, v29 + ((*(v32 + 80) + 32) & ~*(v32 + 80)) + *(v32 + 72) * v33, v31);
    if (URLQueryItem.name.getter() == 1953460082 && v35 == 0xE400000000000000)
    {

      goto LABEL_20;
    }

    v36 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v36)
    {
      break;
    }

    ++v33;
    v31 = v54;
    result = (*v34)(v5, v54);
    if (v30 == v33)
    {
      goto LABEL_16;
    }
  }

  v31 = v54;
LABEL_20:

  v37 = *(v32 + 32);
  v38 = v45;
  v37(v45, v5, v31);
  v39 = v46;
  v37(v46, v38, v31);
  v40 = URLQueryItem.value.getter();
  v42 = v48;
  v43 = v49;
  if (!v41)
  {
    (*v34)(v39, v31);
    (*(v53 + 8))(v43, v42);
    goto LABEL_25;
  }

  if (v40 == 0x49465F5055544553 && v41 == 0xEC0000004853494ELL)
  {
    v44 = 1;
  }

  else
  {
    v44 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  (*v34)(v39, v31);
  (*(v53 + 8))(v43, v42);
  (*(v50 + 8))(v52, v51);
  return v44 & 1;
}

void sub_1000FAC34(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v85 = a2;
  v3 = type metadata accessor for URLQueryItem();
  v92 = *(v3 - 8);
  v93 = v3;
  v4 = __chkstk_darwin(v3);
  v89 = &v76 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v4);
  v8 = &v76 - v7;
  v9 = __chkstk_darwin(v6);
  v11 = &v76 - v10;
  __chkstk_darwin(v9);
  v13 = (&v76 - v12);
  v14 = sub_10004DED0(&qword_1001614F0, &unk_1001189B0);
  __chkstk_darwin(v14 - 8);
  v16 = &v76 - v15;
  v17 = type metadata accessor for URLComponents();
  v86 = *(v17 - 8);
  v87 = v17;
  __chkstk_darwin(v17);
  v80 = &v76 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_10004DED0(&qword_100161528, &unk_100118AA0);
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v22 = &v76 - v21;
  v23 = type metadata accessor for URL();
  v83 = *(v23 - 8);
  v84 = v23;
  v24 = __chkstk_darwin(v23);
  v82 = &v76 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v88 = &v76 - v26;
  if (qword_10015AAB8 != -1)
  {
LABEL_36:
    swift_once();
  }

  v27 = type metadata accessor for Logger();
  v81 = sub_10000659C(v27, qword_1001696A0);
  v28 = Logger.logObject.getter();
  v29 = static os_log_type_t.default.getter();
  v30 = os_log_type_enabled(v28, v29);
  v78 = v8;
  v79 = v13;
  if (v30)
  {
    v31 = swift_slowAlloc();
    v94[0] = swift_slowAlloc();
    *v31 = 136315394;
    *(v31 + 4) = sub_100025CF0(0xD000000000000015, 0x8000000100126760, v94);
    *(v31 + 12) = 2080;
    *(v31 + 14) = sub_100025CF0(0x3A5F286574756F72, 0xE900000000000029, v94);
    _os_log_impl(&_mh_execute_header, v28, v29, "Start (%s.%s)…", v31, 0x16u);
    swift_arrayDestroy();
  }

  static Transforming<>.normalizedPrefsAndAppPrefs.getter();
  v32 = Transforming.transform.getter();
  v20[1](v22, v19);
  v33 = v88;
  v32(a1);

  URL.absoluteString.getter();
  URLComponents.init(string:)();

  v13 = v86;
  v8 = v87;
  if ((v86[6])(v16, 1, v87) == 1)
  {
    sub_1000F936C(v16);
    goto LABEL_26;
  }

  v34 = v80;
  v13[4](v80, v16, v8);
  v35 = URLComponents.percentEncodedQueryItems.getter();
  if (!v35)
  {
    (v13[1])(v34, v8);
    goto LABEL_26;
  }

  v16 = v35;
  v90 = *(v35 + 16);
  if (!v90)
  {
LABEL_25:
    (v86[1])(v80, v87);

    v33 = v88;
LABEL_26:
    v50 = v82;
    v52 = v83;
    v51 = v84;
    (*(v83 + 16))(v82, v33, v84);
    v53 = Logger.logObject.getter();
    v54 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v53, v54))
    {
      v55 = swift_slowAlloc();
      v56 = v50;
      v57 = swift_slowAlloc();
      v94[0] = v57;
      *v55 = 141558275;
      *(v55 + 4) = 1752392040;
      *(v55 + 12) = 2081;
      sub_1000FB7F0();
      v58 = dispatch thunk of CustomStringConvertible.description.getter();
      v60 = v59;
      v61 = *(v52 + 8);
      v61(v56, v51);
      v62 = sub_100025CF0(v58, v60, v94);

      *(v55 + 14) = v62;
      _os_log_impl(&_mh_execute_header, v53, v54, "Could not resolve the Item ID from the URL %{private,mask.hash}s.", v55, 0x16u);
      sub_10000665C(v57);

      v61(v88, v51);
    }

    else
    {

      v63 = *(v52 + 8);
      v63(v50, v51);
      v63(v33, v51);
    }

    v64 = 1;
    v65 = v85;
LABEL_30:
    v66 = sub_10004DED0(&qword_10015B298, &unk_100118820);
    (*(*(v66 - 8) + 56))(v65, v64, 1, v66);
    sub_1000FB66C();
    return;
  }

  v19 = 0;
  v22 = 0x64496D657469;
  v91 = v92 + 16;
  v20 = (v92 + 8);
  while (1)
  {
    if (v19 >= *(v16 + 16))
    {
      __break(1u);
      goto LABEL_36;
    }

    v13 = ((*(v92 + 80) + 32) & ~*(v92 + 80));
    a1 = *(v92 + 72);
    v36 = *(v92 + 16);
    v36(v11, v13 + v16 + a1 * v19, v93);
    v37 = URLQueryItem.name.getter();
    v8 = v38;
    if (v37 == 0x64496D657469 && v38 == 0xE600000000000000)
    {
      break;
    }

    v39 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v39)
    {
      goto LABEL_17;
    }

    ++v19;
    (*v20)(v11, v93);
    if (v90 == v19)
    {
      goto LABEL_25;
    }
  }

LABEL_17:
  v40 = v93;
  v41 = v92 + 32;
  v42 = v79;
  v76 = *(v92 + 32);
  v76(v79, v11, v93);
  v77 = URLQueryItem.value.getter();
  v44 = v43;
  v92 = v41;
  v45 = *(v41 - 24);
  v45(v42, v40);
  v79 = v44;
  if (!v44)
  {
    goto LABEL_25;
  }

  v46 = 0;
  v47 = v13 + v16;
  while (v46 < *(v16 + 16))
  {
    v36(v89, v47, v93);
    if (URLQueryItem.name.getter() == 0xD000000000000014 && 0x8000000100126740 == v48)
    {

LABEL_32:
      v67 = v78;
      v68 = v93;
      v76(v78, v89, v93);
      v69 = URLQueryItem.value.getter();
      v71 = v70;
      v45(v67, v68);
      (v86[1])(v80, v87);
      if (!v71)
      {
LABEL_33:
        v69 = 0;
        v71 = 0;
      }

      v65 = v85;
      v72 = v77;
      (*(v83 + 32))(v85, v88, v84);
      v73 = type metadata accessor for SettingsURLDestination(0);
      v74 = (v65 + *(v73 + 20));
      v75 = v79;
      *v74 = v72;
      v74[1] = v75;
      v74[2] = v69;
      v74[3] = v71;
      type metadata accessor for SettingsURLDestination.Action(0);
      swift_storeEnumTagMultiPayload();
      v64 = 0;
      *(v65 + *(v73 + 24)) = v16;
      goto LABEL_30;
    }

    v49 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v49)
    {
      goto LABEL_32;
    }

    ++v46;
    v45(v89, v93);
    v47 += a1;
    if (v90 == v46)
    {
      (v86[1])(v80, v87);
      goto LABEL_33;
    }
  }

  __break(1u);
}

void sub_1000FB66C()
{
  if (qword_10015AAB8 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_10000659C(v0, qword_1001696A0);
  oslog = Logger.logObject.getter();
  v1 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    *v2 = 136315394;
    *(v2 + 4) = sub_100025CF0(0xD000000000000015, 0x8000000100126760, &v4);
    *(v2 + 12) = 2080;
    *(v2 + 14) = sub_100025CF0(0x3A5F286574756F72, 0xE900000000000029, &v4);
    _os_log_impl(&_mh_execute_header, oslog, v1, "…Complete (%s.%s)", v2, 0x16u);
    swift_arrayDestroy();
  }
}

unint64_t sub_1000FB7F0()
{
  result = qword_10015E918;
  if (!qword_10015E918)
  {
    type metadata accessor for URL();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10015E918);
  }

  return result;
}

uint64_t sub_1000FB848(uint64_t a1)
{
  v2 = type metadata accessor for URLQueryItem();
  v47 = *(v2 - 8);
  v3 = __chkstk_darwin(v2);
  v5 = &v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v3);
  v45 = &v45 - v7;
  __chkstk_darwin(v6);
  v46 = &v45 - v8;
  v9 = sub_10004DED0(&qword_1001614F0, &unk_1001189B0);
  __chkstk_darwin(v9 - 8);
  v11 = &v45 - v10;
  v12 = type metadata accessor for URLComponents();
  v53 = *(v12 - 8);
  __chkstk_darwin(v12);
  v49 = &v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10004DED0(&qword_100161528, &unk_100118AA0);
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v45 - v16;
  v18 = type metadata accessor for URL();
  v50 = *(v18 - 8);
  v51 = v18;
  __chkstk_darwin(v18);
  v52 = &v45 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  URL.scheme.getter();
  if (v20)
  {
    v48 = v12;
    v54 = v2;
    v21 = String.lowercased()();

    if (v21._countAndFlagsBits == 0x7366657270 && v21._object == 0xE500000000000000)
    {
    }

    else
    {
      v22 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v22 & 1) == 0)
      {
        return 0;
      }
    }

    static Transforming<>.normalizedPrefsAndAppPrefs.getter();
    v23 = Transforming.transform.getter();
    (*(v15 + 8))(v17, v14);
    v24 = v52;
    v23(a1);

    URL.absoluteString.getter();
    URLComponents.init(string:)();

    v25 = v53;
    v26 = v48;
    if ((*(v53 + 48))(v11, 1, v48) == 1)
    {
      (*(v50 + 8))(v24, v51);
      sub_1000F936C(v11);
    }

    else
    {
      v27 = v49;
      (*(v25 + 32))(v49, v11, v26);
      result = URLComponents.percentEncodedQueryItems.getter();
      if (result)
      {
        v29 = result;
        v30 = *(result + 16);
        v31 = v54;
        v32 = v47;
        if (v30)
        {
          v33 = 0;
          v34 = (v47 + 8);
          while (1)
          {
            if (v33 >= *(v29 + 16))
            {
              __break(1u);
              return result;
            }

            (*(v32 + 16))(v5, v29 + ((*(v32 + 80) + 32) & ~*(v32 + 80)) + *(v32 + 72) * v33, v31);
            if (URLQueryItem.name.getter() == 1953460082 && v35 == 0xE400000000000000)
            {

              goto LABEL_20;
            }

            v36 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if (v36)
            {
              break;
            }

            ++v33;
            v31 = v54;
            result = (*v34)(v5, v54);
            if (v30 == v33)
            {
              goto LABEL_16;
            }
          }

          v31 = v54;
LABEL_20:

          v37 = *(v32 + 32);
          v38 = v45;
          v37(v45, v5, v31);
          v39 = v46;
          v37(v46, v38, v31);
          URLQueryItem.value.getter();
          v40 = v48;
          v41 = v49;
          if (v42)
          {
            v43._countAndFlagsBits = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v44 = String.hasPrefix(_:)(v43);

            (*v34)(v39, v31);
            (*(v53 + 8))(v41, v40);
            (*(v50 + 8))(v52, v51);
            return v44;
          }

          (*v34)(v39, v31);
          (*(v53 + 8))(v41, v40);
        }

        else
        {
LABEL_16:

          (*(v53 + 8))(v49, v48);
        }

        (*(v50 + 8))(v52, v51);
      }

      else
      {
        (*(v25 + 8))(v27, v26);
        (*(v50 + 8))(v24, v51);
      }
    }
  }

  return 0;
}

uint64_t sub_1000FBEF4@<X0>(void *a1@<X8>)
{
  v2 = sub_10004DED0(&qword_10015E910, &unk_10010FC70);
  __chkstk_darwin(v2 - 8);
  v4 = v15 - v3;
  v5 = type metadata accessor for URL();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = (v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15[4] = URL.absoluteString.getter();
  v15[5] = v9;
  v15[2] = 0xD00000000000003ELL;
  v15[3] = 0x8000000100126780;
  v15[0] = 0xD00000000000003CLL;
  v15[1] = 0x80000001001267C0;
  sub_10002EAE0();
  StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();

  URL.init(string:)();

  if ((*(v6 + 48))(v4, 1, v5) != 1)
  {
    (*(v6 + 32))(v8, v4, v5);
    v10 = URL.scheme.getter();
    if (v11)
    {
      if (v10 == 0xD000000000000013 && v11 == 0x80000001001265E0)
      {

LABEL_8:
        sub_100103A28(v8, a1);
        return (*(v6 + 8))(v8, v5);
      }

      v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v12)
      {
        goto LABEL_8;
      }
    }

    (*(v6 + 8))(v8, v5);
    goto LABEL_10;
  }

  sub_1000541DC(v4);
LABEL_10:
  v14 = sub_10004DED0(&qword_10015B298, &unk_100118820);
  return (*(*(v14 - 8) + 56))(a1, 1, 1, v14);
}

void sub_1000FC1F4(uint64_t a1)
{
  URL.absoluteString.getter();
  v1._countAndFlagsBits = 0xD00000000000003ELL;
  v1._object = 0x8000000100126780;
  v2 = String.hasPrefix(_:)(v1);

  if (v2)
  {
    v3 = [objc_opt_self() defaultWorkspace];
    if (!v3)
    {
      __break(1u);
      goto LABEL_10;
    }

    v4 = v3;
    v5 = String._bridgeToObjectiveC()();
    v6 = [v4 applicationIsInstalled:v5];

    if (v6)
    {
      v7 = [objc_opt_self() sharedConnection];
      if (v7)
      {
        v8 = v7;
        v9 = [v7 restrictedAppBundleIDs];

        if (v9)
        {
          v10 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

          AnyHashable.init<A>(_:)();
          sub_100061FF0(v11, v10);

          sub_100017E04(v11);
          return;
        }

        goto LABEL_11;
      }

LABEL_10:
      __break(1u);
LABEL_11:
      __break(1u);
    }
  }
}

uint64_t sub_1000FC3B8()
{
  sub_10004DED0(&qword_10015C470, &qword_100112480);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100118B10;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 40) = v1;
  *(inited + 48) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 56) = v2;
  *(inited + 64) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 72) = v3;
  *(inited + 80) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 88) = v4;
  *(inited + 96) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 104) = v5;
  *(inited + 112) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 120) = v6;
  *(inited + 128) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 136) = v7;
  *(inited + 144) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 152) = v8;
  *(inited + 160) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 168) = v9;
  *(inited + 176) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 184) = v10;
  *(inited + 192) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 200) = v11;
  *(inited + 208) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 216) = v12;
  *(inited + 224) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 232) = v13;
  *(inited + 240) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 248) = v14;
  *(inited + 256) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 264) = v15;
  v16 = sub_10001DD0C(inited);
  swift_setDeallocating();
  result = swift_arrayDestroy();
  off_100161530 = v16;
  return result;
}

uint64_t sub_1000FC574@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v85 = a1;
  v86 = a2;
  v2 = type metadata accessor for URLQueryItem();
  v82 = *(v2 - 8);
  v83 = v2;
  v3 = __chkstk_darwin(v2);
  v84 = &object - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __chkstk_darwin(v3);
  v74 = &object - v6;
  __chkstk_darwin(v5);
  v75 = &object - v7;
  v8 = sub_10004DED0(&qword_1001614F0, &unk_1001189B0);
  __chkstk_darwin(v8 - 8);
  v78 = &object - v9;
  v10 = type metadata accessor for URLComponents();
  v79 = *(v10 - 8);
  v80 = v10;
  __chkstk_darwin(v10);
  v76 = &object - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10004DED0(qword_100161538, &qword_100118B60);
  v13 = __chkstk_darwin(v12 - 8);
  v77 = &object - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v73 = &object - v16;
  v17 = __chkstk_darwin(v15);
  v19 = &object - v18;
  __chkstk_darwin(v17);
  v21 = &object - v20;
  v22 = sub_10004DED0(&qword_100161528, &unk_100118AA0);
  v23 = *(v22 - 8);
  __chkstk_darwin(v22);
  v25 = &object - v24;
  v26 = type metadata accessor for URL();
  v27 = *(v26 - 8);
  __chkstk_darwin(v26);
  v29 = &object - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Transforming<>.normalizedPrefsAndAppPrefs.getter();
  v30 = Transforming.transform.getter();
  (*(v23 + 8))(v25, v22);
  v30(v85);
  v31 = v86;

  URL.scheme.getter();
  if (!v32)
  {
LABEL_28:
    (*(v27 + 8))(v29, v26);
    v54 = type metadata accessor for UUID();
    return (*(*(v54 - 8) + 56))(v31, 1, 1, v54);
  }

  v81 = v26;
  v85 = v27;
  v33 = String.lowercased()();

  if ((v33._countAndFlagsBits != 0xD000000000000013 || 0x80000001001265E0 != v33._object) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    if (v33._countAndFlagsBits == 0x7366657270 && v33._object == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      URL.absoluteString.getter();
      v41 = v78;
      URLComponents.init(string:)();

      v43 = v79;
      v42 = v80;
      if ((*(v79 + 48))(v41, 1, v80) == 1)
      {

        (*(v85 + 8))(v29, v81);
        sub_1000068B0(v41, &qword_1001614F0, &unk_1001189B0);
      }

      else
      {
        v44 = v76;
        (*(v43 + 32))(v76, v41, v42);
        result = URLComponents.percentEncodedQueryItems.getter();
        v45 = v85;
        v46 = v81;
        if (result)
        {
          v47 = result;
          object = v33._object;
          v78 = v29;
          v48 = *(result + 16);
          v49 = v83;
          if (v48)
          {
            v50 = 0;
            v51 = (v82 + 8);
            while (1)
            {
              if (v50 >= *(v47 + 16))
              {
                goto LABEL_45;
              }

              (*(v82 + 16))(v84, v47 + ((*(v82 + 80) + 32) & ~*(v82 + 80)) + *(v82 + 72) * v50, v49);
              if (URLQueryItem.name.getter() == 1752457584 && v52 == 0xE400000000000000)
              {
                break;
              }

              v53 = _stringCompareWithSmolCheck(_:_:expecting:)();

              if (v53)
              {
                goto LABEL_33;
              }

              ++v50;
              v49 = v83;
              result = (*v51)(v84, v83);
              if (v48 == v50)
              {
                goto LABEL_26;
              }
            }

LABEL_33:

            v56 = v83;
            v57 = *(v82 + 32);
            v58 = v74;
            v57(v74, v84, v83);
            v59 = v75;
            v57(v75, v58, v56);
            v60 = URLQueryItem.value.getter();
            v62 = v86;
            if (v61)
            {
              v89 = v60;
              v90 = v61;
              v87 = 47;
              v88 = 0xE100000000000000;
              sub_10002EAE0();
              v63 = StringProtocol.components<A>(separatedBy:)();

              v64 = *(v63 + 16);
              if (v64)
              {
                v65 = 0;
                v66 = v63 + 40;
                while (v65 < *(v63 + 16))
                {

                  v67 = v77;
                  UUID.init(uuidString:)();
                  v68 = type metadata accessor for UUID();
                  if ((*(*(v68 - 8) + 48))(v67, 1, v68) != 1)
                  {

                    sub_1000068B0(v67, qword_100161538, &qword_100118B60);

                    v70 = v73;
                    UUID.init(uuidString:)();

                    swift_bridgeObjectRelease_n();
                    (*v51)(v75, v83);
                    (*(v79 + 8))(v76, v80);
                    (*(v85 + 8))(v78, v81);
                    goto LABEL_42;
                  }

                  ++v65;
                  result = sub_1000068B0(v67, qword_100161538, &qword_100118B60);
                  v66 += 16;
                  if (v64 == v65)
                  {
                    goto LABEL_39;
                  }
                }

LABEL_46:
                __break(1u);
                return result;
              }

LABEL_39:

              (*v51)(v75, v83);
              (*(v79 + 8))(v76, v80);
              (*(v85 + 8))(v78, v81);
              v69 = type metadata accessor for UUID();
              v70 = v73;
              (*(*(v69 - 8) + 56))(v73, 1, 1, v69);
LABEL_42:
              v62 = v86;
            }

            else
            {

              (*v51)(v59, v56);
              (*(v79 + 8))(v76, v80);
              (*(v45 + 8))(v78, v46);
              v71 = type metadata accessor for UUID();
              v70 = v73;
              (*(*(v71 - 8) + 56))(v73, 1, 1, v71);
            }

            return sub_1000A4CB8(v70, v62, qword_100161538, &qword_100118B60);
          }

LABEL_26:

          (*(v79 + 8))(v76, v80);
          (*(v45 + 8))(v78, v46);
        }

        else
        {

          (*(v43 + 8))(v44, v42);
          (*(v45 + 8))(v29, v46);
        }
      }

      v55 = type metadata accessor for UUID();
      return (*(*(v55 - 8) + 56))(v86, 1, 1, v55);
    }

    v27 = v85;
    v31 = v86;
    v26 = v81;
    goto LABEL_28;
  }

  object = v33._object;
  v78 = v29;
  result = URL.pathComponents.getter();
  v35 = result;
  v36 = *(result + 16);
  if (v36)
  {
    v37 = 0;
    v38 = result + 40;
    while (v37 < *(v35 + 16))
    {

      UUID.init(uuidString:)();
      v39 = type metadata accessor for UUID();
      if ((*(*(v39 - 8) + 48))(v19, 1, v39) != 1)
      {

        sub_1000068B0(v19, qword_100161538, &qword_100118B60);

        UUID.init(uuidString:)();

        swift_bridgeObjectRelease_n();
        (*(v85 + 8))(v78, v81);
        return sub_1000A4CB8(v21, v86, qword_100161538, &qword_100118B60);
      }

      ++v37;
      result = sub_1000068B0(v19, qword_100161538, &qword_100118B60);
      v38 += 16;
      if (v36 == v37)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

LABEL_10:

  (*(v85 + 8))(v78, v81);
  v40 = type metadata accessor for UUID();
  (*(*(v40 - 8) + 56))(v21, 1, 1, v40);
  return sub_1000A4CB8(v21, v86, qword_100161538, &qword_100118B60);
}

void sub_1000FD1B4(uint64_t a1@<X0>, char *a2@<X8>)
{
  v194 = a1;
  v198 = type metadata accessor for URLQueryItem();
  v193 = *(v198 - 8);
  v3 = __chkstk_darwin(v198);
  v195 = &v170 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v197 = &v170 - v5;
  v6 = sub_10004DED0(&qword_1001614F0, &unk_1001189B0);
  __chkstk_darwin(v6 - 8);
  v175 = &v170 - v7;
  v8 = sub_10004DED0(qword_100161538, &qword_100118B60);
  __chkstk_darwin(v8 - 8);
  v177 = &v170 - v9;
  v10 = type metadata accessor for UUID();
  v182 = *(v10 - 8);
  __chkstk_darwin(v10);
  v181 = &v170 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10004DED0(&qword_10015E910, &unk_10010FC70);
  v13 = __chkstk_darwin(v12 - 8);
  v172 = &v170 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v179 = &v170 - v16;
  __chkstk_darwin(v15);
  v189 = &v170 - v17;
  v188 = type metadata accessor for SettingsNavigationHost();
  v187 = *(v188 - 8);
  __chkstk_darwin(v188);
  v186 = &v170 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for URLComponents();
  v20 = *(v19 - 8);
  v191 = v19;
  v192 = v20;
  v21 = __chkstk_darwin(v19);
  v173 = &v170 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v24 = &v170 - v23;
  v25 = sub_10004DED0(&qword_100161528, &unk_100118AA0);
  v26 = *(v25 - 8);
  __chkstk_darwin(v25);
  v28 = &v170 - v27;
  v29 = type metadata accessor for URL();
  v190 = *(v29 - 8);
  v30 = __chkstk_darwin(v29);
  v171 = &v170 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = __chkstk_darwin(v30);
  v34 = &v170 - v33;
  v35 = __chkstk_darwin(v32);
  v178 = &v170 - v36;
  v37 = __chkstk_darwin(v35);
  v174 = &v170 - v38;
  v39 = __chkstk_darwin(v37);
  v185 = &v170 - v40;
  v41 = __chkstk_darwin(v39);
  v176 = (&v170 - v42);
  __chkstk_darwin(v41);
  v196 = &v170 - v43;
  if (qword_10015AAB8 != -1)
  {
    goto LABEL_63;
  }

  while (1)
  {
    v44 = type metadata accessor for Logger();
    v184 = sub_10000659C(v44, qword_1001696A0);
    v45 = Logger.logObject.getter();
    v46 = static os_log_type_t.default.getter();
    v47 = os_log_type_enabled(v45, v46);
    v183 = v10;
    v170 = v34;
    if (v47)
    {
      v48 = v29;
      v49 = a2;
      v50 = v24;
      v51 = swift_slowAlloc();
      v199 = swift_slowAlloc();
      *v51 = 136315394;
      *(v51 + 4) = sub_100025CF0(0xD000000000000025, 0x8000000100126820, &v199);
      *(v51 + 12) = 2080;
      *(v51 + 14) = sub_100025CF0(0x3A5F286574756F72, 0xE900000000000029, &v199);
      _os_log_impl(&_mh_execute_header, v45, v46, "Start (%s.%s)…", v51, 0x16u);
      swift_arrayDestroy();

      v24 = v50;
      a2 = v49;
      v29 = v48;
    }

    static Transforming<>.normalizedPrefsAndAppPrefs.getter();
    v52 = Transforming.transform.getter();
    v53 = *(v26 + 8);
    v26 += 8;
    v53(v28, v25);
    v54 = v194;
    v52(v194);

    URLComponents.init()();
    URLComponents.scheme.setter();
    if (sub_1000FEAAC(v54))
    {
      v55 = v186;
      static SettingsNavigationHost.apps.getter();
      SettingsNavigationHost.rawValue.getter();
      (*(v187 + 8))(v55, v188);
      URLComponents.host.setter();
      sub_1000FFA60();
      v57 = v56;
      sub_10004DED0(&qword_10015C470, &qword_100112480);
      v58 = swift_allocObject();
      *(v58 + 16) = xmmword_1001103D0;
      *(v58 + 32) = sub_1000FFD28(v54);
      *(v58 + 40) = v59;
      v60 = v24;
      if (v57)
      {
        v61 = 0x53544E554F434341;
        v62 = 0xE800000000000000;
      }

      else
      {
        v61 = 0x4F4343415F444441;
        v62 = 0xEB00000000544E55;
      }

      *(v58 + 48) = v61;
      *(v58 + 56) = v62;
      v199 = v58;
      sub_10004DED0(&unk_10015FC00, &qword_100111C00);
      sub_1000268F8();
      v68 = BidirectionalCollection<>.joined(separator:)();
      v70 = v69;

      v199 = 47;
      v200 = 0xE100000000000000;
      v71._countAndFlagsBits = v68;
      v71._object = v70;
      String.append(_:)(v71);

      URLComponents.path.setter();
      v72 = v189;
      URLComponents.url.getter();
      v73 = v190;
      v74 = (*(v190 + 48))(v72, 1, v29);
      v75 = v185;
      if (v74 != 1)
      {
        v76 = v176;
        (*(v73 + 32))(v176, v72, v29);
        (*(v73 + 16))(a2, v76, v29);
        v77 = type metadata accessor for SettingsURLDestination(0);
        v78 = &a2[*(v77 + 20)];
        *v78 = 45;
        *(v78 + 1) = 0;
        *(v78 + 2) = 0;
        *(v78 + 3) = 0;
        v78[32] = 6;
        type metadata accessor for SettingsURLDestination.Action(0);
        swift_storeEnumTagMultiPayload();
        v79 = *(v73 + 8);
        v79(v76, v29);
LABEL_28:
        (*(v192 + 8))(v60, v191);
        v79(v196, v29);
        v111 = 0;
        *&a2[*(v77 + 24)] = _swiftEmptyArrayStorage;
        goto LABEL_29;
      }

      goto LABEL_17;
    }

    if (sub_10010050C(v54))
    {
      v60 = v24;
      v63 = v186;
      static SettingsNavigationHost.apps.getter();
      SettingsNavigationHost.rawValue.getter();
      (*(v187 + 8))(v63, v188);
      URLComponents.host.setter();
      sub_1000FFA60();
      v65 = v64;
      sub_10004DED0(&qword_10015C470, &qword_100112480);
      if (v65)
      {
        v66 = swift_allocObject();
        *(v66 + 16) = xmmword_1001103E0;
        *(v66 + 32) = sub_1000FFD28(v54);
        *(v66 + 40) = v67;
        *(v66 + 48) = 0x53544E554F434341;
        *(v66 + 56) = 0xE800000000000000;
        *(v66 + 64) = 0x4F4343415F444441;
        *(v66 + 72) = 0xEB00000000544E55;
      }

      else
      {
        v66 = swift_allocObject();
        *(v66 + 16) = xmmword_1001103D0;
        *(v66 + 32) = sub_1000FFD28(v54);
        *(v66 + 40) = v84;
        *(v66 + 48) = 0x4F4343415F444441;
        *(v66 + 56) = 0xEB00000000544E55;
      }

      v199 = v66;
      sub_10004DED0(&unk_10015FC00, &qword_100111C00);
      sub_1000268F8();
      v85 = BidirectionalCollection<>.joined(separator:)();
      v87 = v86;

      v199 = 47;
      v200 = 0xE100000000000000;
      v88._countAndFlagsBits = v85;
      v88._object = v87;
      String.append(_:)(v88);

      URLComponents.path.setter();
      v72 = v179;
      URLComponents.url.getter();
      v73 = v190;
      v89 = (*(v190 + 48))(v72, 1, v29);
      v75 = v178;
      if (v89 != 1)
      {
        v112 = v174;
        (*(v73 + 32))(v174, v72, v29);
        (*(v73 + 16))(a2, v112, v29);
        v77 = type metadata accessor for SettingsURLDestination(0);
        v113 = &a2[*(v77 + 20)];
        *v113 = 45;
        *(v113 + 1) = 0;
        *(v113 + 2) = 0;
        *(v113 + 3) = 0;
        v113[32] = 6;
        type metadata accessor for SettingsURLDestination.Action(0);
        swift_storeEnumTagMultiPayload();
        v79 = *(v73 + 8);
        v79(v112, v29);
        goto LABEL_28;
      }

LABEL_17:
      sub_1000068B0(v72, &qword_10015E910, &unk_10010FC70);
      (*(v73 + 16))(v75, v194, v29);
      v90 = Logger.logObject.getter();
      v91 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v90, v91))
      {
        v92 = swift_slowAlloc();
        v177 = a2;
        v93 = v60;
        v94 = v92;
        v95 = v29;
        v96 = v73;
        v97 = swift_slowAlloc();
        v199 = v97;
        *v94 = 141558275;
        *(v94 + 4) = 1752392040;
        *(v94 + 12) = 2081;
        v98 = URL.absoluteString.getter();
        v99 = v75;
        v101 = v100;
        v102 = *(v96 + 8);
        v102(v99, v95);
        v103 = sub_100025CF0(v98, v101, &v199);

        *(v94 + 14) = v103;
        _os_log_impl(&_mh_execute_header, v90, v91, "Could not create re-direct URL for Internet Accounts for input URL %{private,mask.hash}s", v94, 0x16u);
        sub_10000665C(v97);

        v104 = v93;
        a2 = v177;
        (*(v192 + 8))(v104, v191);
        goto LABEL_19;
      }

      v105 = *(v73 + 8);
      v105(v75, v29);
      (*(v192 + 8))(v60, v191);
      goto LABEL_21;
    }

    v80 = v54;
    v28 = sub_10001DD0C(&off_10014CFB0);
    swift_arrayDestroy();
    v81 = v177;
    sub_1000FC574(v80, v177);
    v82 = v182;
    v83 = v183;
    if ((*(v182 + 48))(v81, 1, v183) == 1)
    {

      (*(v192 + 8))(v24, v191);
      (*(v190 + 8))(v196, v29);
      sub_1000068B0(v81, qword_100161538, &qword_100118B60);
      goto LABEL_26;
    }

    (*(v82 + 32))(v181, v81, v83);
    URL.absoluteString.getter();
    v34 = v175;
    URLComponents.init(string:)();

    v107 = v191;
    v106 = v192;
    if ((*(v192 + 48))(v34, 1, v191) == 1)
    {

      sub_1000068B0(v34, &qword_1001614F0, &unk_1001189B0);
      v108 = Logger.logObject.getter();
      v109 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v108, v109))
      {
        v110 = swift_slowAlloc();
        *v110 = 0;
        _os_log_impl(&_mh_execute_header, v108, v109, "Could not retrieve original path for Internet Accounts.", v110, 2u);
      }

      (*(v182 + 8))(v181, v183);
      (*(v192 + 8))(v24, v191);
      (*(v190 + 8))(v196, v29);
      goto LABEL_26;
    }

    v174 = v24;
    v177 = a2;
    (*(v106 + 32))(v173, v34, v107);
    v115 = URLComponents.queryItems.getter();
    v24 = _swiftEmptyArrayStorage;
    if (!v115)
    {
      v115 = _swiftEmptyArrayStorage;
    }

    v185 = *(v115 + 16);
    if (!v185)
    {
      break;
    }

    v10 = 0;
    v178 = (v193 + 16);
    a2 = v28 + 56;
    v176 = (v193 + 8);
    v189 = (v193 + 32);
    v180 = v29;
    v179 = v115;
    while (v10 < *(v115 + 16))
    {
      v34 = ((*(v193 + 80) + 32) & ~*(v193 + 80));
      v25 = *(v193 + 72);
      (*(v193 + 16))(v197, &v34[v115 + v25 * v10], v198);
      v116 = URLQueryItem.name.getter();
      v26 = v117;
      if (*(v28 + 2) && (v118 = v116, Hasher.init(_seed:)(), String.hash(into:)(), v119 = Hasher._finalize()(), v120 = -1 << v28[32], v121 = v119 & ~v120, ((*&a2[(v121 >> 3) & 0xFFFFFFFFFFFFFF8] >> v121) & 1) != 0))
      {
        v122 = ~v120;
        while (1)
        {
          v123 = (*(v28 + 6) + 16 * v121);
          v124 = *v123 == v118 && v123[1] == v26;
          if (v124 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {
            break;
          }

          v121 = (v121 + 1) & v122;
          if (((*&a2[(v121 >> 3) & 0xFFFFFFFFFFFFFF8] >> v121) & 1) == 0)
          {
            goto LABEL_46;
          }
        }

        (*v176)(v197, v198);
      }

      else
      {
LABEL_46:

        v125 = *v189;
        (*v189)(v195, v197, v198);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v201 = v24;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1000F52B8(0, *(v24 + 2) + 1, 1);
          v24 = v201;
        }

        v128 = *(v24 + 2);
        v127 = *(v24 + 3);
        v26 = v128 + 1;
        if (v128 >= v127 >> 1)
        {
          sub_1000F52B8((v127 > 1), v128 + 1, 1);
          v24 = v201;
        }

        *(v24 + 2) = v26;
        v125(&v34[v24 + v128 * v25], v195, v198);
      }

      ++v10;
      v29 = v180;
      v115 = v179;
      if (v10 == v185)
      {
        goto LABEL_51;
      }
    }

    __break(1u);
LABEL_63:
    swift_once();
  }

LABEL_51:

  v129 = v186;
  static SettingsNavigationHost.apps.getter();
  SettingsNavigationHost.rawValue.getter();
  (*(v187 + 8))(v129, v188);
  URLComponents.host.setter();
  v130 = v194;
  v131 = URL.pathComponents.getter();
  sub_10004DED0(&qword_10015C470, &qword_100112480);
  v132 = swift_allocObject();
  *(v132 + 16) = xmmword_1001103D0;
  *(v132 + 32) = sub_1000FFD28(v130);
  *(v132 + 40) = v133;
  *(v132 + 48) = 0x53544E554F434341;
  *(v132 + 56) = 0xE800000000000000;
  v134 = *(v131 + 16);
  v199 = v132;
  sub_1000C5300(v131, v131 + 32, v134 != 0, (2 * v134) | 1);

  v135 = v199;
  v136 = UUID.uuidString.getter();
  v138 = v137;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v135 = sub_1000C4E44(0, *(v135 + 2) + 1, 1, v135);
  }

  a2 = v177;
  v140 = *(v135 + 2);
  v139 = *(v135 + 3);
  if (v140 >= v139 >> 1)
  {
    v135 = sub_1000C4E44((v139 > 1), v140 + 1, 1, v135);
  }

  *(v135 + 2) = v140 + 1;
  v141 = &v135[16 * v140];
  *(v141 + 4) = v136;
  *(v141 + 5) = v138;
  v199 = v135;
  sub_10004DED0(&unk_10015FC00, &qword_100111C00);
  sub_1000268F8();
  v142 = BidirectionalCollection<>.joined(separator:)();
  v144 = v143;

  v199 = 47;
  v200 = 0xE100000000000000;
  v145._countAndFlagsBits = v142;
  v145._object = v144;
  String.append(_:)(v145);

  v146 = v174;
  URLComponents.path.setter();
  if (*(v24 + 2))
  {

    URLComponents.queryItems.setter();
  }

  v147 = v172;
  URLComponents.url.getter();
  v148 = v190;
  if ((*(v190 + 48))(v147, 1, v29) == 1)
  {

    sub_1000068B0(v147, &qword_10015E910, &unk_10010FC70);
    v149 = v171;
    (*(v148 + 16))(v171, v194, v29);
    v150 = Logger.logObject.getter();
    v151 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v150, v151))
    {
      v152 = swift_slowAlloc();
      v95 = v29;
      v153 = v148;
      v154 = swift_slowAlloc();
      v199 = v154;
      *v152 = 141558275;
      *(v152 + 4) = 1752392040;
      *(v152 + 12) = 2081;
      v155 = URL.absoluteString.getter();
      v157 = v156;
      v158 = v149;
      v102 = *(v153 + 8);
      v102(v158, v95);
      v159 = sub_100025CF0(v155, v157, &v199);

      *(v152 + 14) = v159;
      _os_log_impl(&_mh_execute_header, v150, v151, "Could not create re-direct URL for Internet Accounts for input URL %{private,mask.hash}s", v152, 0x16u);
      sub_10000665C(v154);

      v160 = v191;
      v161 = *(v192 + 8);
      v161(v173, v191);
      (*(v182 + 8))(v181, v183);
      v161(v174, v160);
LABEL_19:
      v102(v196, v95);
LABEL_26:
      v111 = 1;
      goto LABEL_29;
    }

    v105 = *(v148 + 8);
    v105(v149, v29);
    v168 = v191;
    v169 = *(v192 + 8);
    v169(v173, v191);
    (*(v182 + 8))(v181, v183);
    v169(v174, v168);
LABEL_21:
    v105(v196, v29);
    goto LABEL_26;
  }

  v162 = v191;
  v163 = *(v192 + 8);
  v163(v173, v191);
  (*(v182 + 8))(v181, v183);
  v163(v146, v162);
  (*(v148 + 8))(v196, v29);
  v164 = *(v148 + 32);
  v165 = v170;
  v164(v170, v147, v29);
  v164(a2, v165, v29);
  v166 = type metadata accessor for SettingsURLDestination(0);
  v167 = &a2[*(v166 + 20)];
  *v167 = 45;
  *(v167 + 1) = 0;
  *(v167 + 2) = 0;
  *(v167 + 3) = 0;
  v167[32] = 6;
  type metadata accessor for SettingsURLDestination.Action(0);
  swift_storeEnumTagMultiPayload();
  v111 = 0;
  *&a2[*(v166 + 24)] = v24;
LABEL_29:
  v114 = sub_10004DED0(&qword_10015B298, &unk_100118820);
  (*(*(v114 - 8) + 56))(a2, v111, 1, v114);
  sub_100100388();
}

uint64_t sub_1000FEAAC(uint64_t a1)
{
  v103 = a1;
  v98 = type metadata accessor for URLQueryItem();
  v94 = *(v98 - 8);
  v1 = __chkstk_darwin(v98);
  v97 = &v81 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __chkstk_darwin(v1);
  v82 = &v81 - v4;
  __chkstk_darwin(v3);
  v83 = &v81 - v5;
  v6 = sub_10004DED0(&qword_1001614F0, &unk_1001189B0);
  __chkstk_darwin(v6 - 8);
  object = &v81 - v7;
  v8 = type metadata accessor for URLComponents();
  v89 = *(v8 - 8);
  v90 = v8;
  __chkstk_darwin(v8);
  v86 = &v81 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v99 = type metadata accessor for SettingsNavigationHost();
  v101 = *(v99 - 8);
  __chkstk_darwin(v99);
  v84 = &v81 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10004DED0(&qword_1001614F8, &qword_1001189F0);
  v96 = *(v11 - 8);
  __chkstk_darwin(v11);
  v85 = &v81 - v12;
  v87 = sub_10004DED0(&qword_100161500, &qword_1001189F8);
  __chkstk_darwin(v87);
  v91 = &v81 - v13;
  v95 = sub_10004DED0(&qword_100161508, &qword_100118A00);
  __chkstk_darwin(v95);
  v100 = &v81 - v14;
  v15 = sub_10004DED0(&qword_100161510, &qword_100118A08);
  v16 = __chkstk_darwin(v15 - 8);
  v92 = &v81 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v16);
  v20 = &v81 - v19;
  __chkstk_darwin(v18);
  v102 = &v81 - v21;
  v22 = sub_10004DED0(&qword_100161528, &unk_100118AA0);
  v23 = *(v22 - 8);
  __chkstk_darwin(v22);
  v25 = &v81 - v24;
  v26 = type metadata accessor for URL();
  v27 = *(v26 - 8);
  __chkstk_darwin(v26);
  v29 = &v81 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Transforming<>.normalizedPrefsAndAppPrefs.getter();
  v30 = Transforming.transform.getter();
  (*(v23 + 8))(v25, v22);
  v30(v103);

  URL.scheme.getter();
  if (!v31)
  {
    goto LABEL_43;
  }

  v103 = v26;
  v93 = v27;
  v32 = String.lowercased()();

  if ((v32._countAndFlagsBits != 0xD000000000000013 || 0x80000001001265E0 != v32._object) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    if (v32._countAndFlagsBits == 0x7366657270 && v32._object == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      URL.absoluteString.getter();
      v48 = object;
      URLComponents.init(string:)();

      v50 = v89;
      v49 = v90;
      if ((*(v89 + 48))(v48, 1, v90) == 1)
      {

        (*(v93 + 8))(v29, v103);
        sub_1000068B0(v48, &qword_1001614F0, &unk_1001189B0);
        goto LABEL_44;
      }

      v58 = v86;
      (*(v50 + 32))(v86, v48, v49);
      result = URLComponents.percentEncodedQueryItems.getter();
      v57 = result;
      if (!result)
      {

        (*(v50 + 8))(v58, v49);
        (*(v93 + 8))(v29, v103);
        return v57 & 1;
      }

      object = v32._object;
      v102 = v29;
      v60 = *(result + 16);
      if (!v60)
      {
LABEL_35:

        (*(v89 + 8))(v86, v90);
        (*(v93 + 8))(v102, v103);
        goto LABEL_44;
      }

      v61 = 0;
      v62 = (v94 + 8);
      while (1)
      {
        if (v61 >= *(v57 + 16))
        {
          __break(1u);
          return result;
        }

        (*(v94 + 16))(v97, v57 + ((*(v94 + 80) + 32) & ~*(v94 + 80)) + *(v94 + 72) * v61, v98);
        if (URLQueryItem.name.getter() == 1752457584 && v63 == 0xE400000000000000)
        {
          break;
        }

        v64 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v64)
        {
          goto LABEL_52;
        }

        ++v61;
        result = (*v62)(v97, v98);
        if (v60 == v61)
        {
          goto LABEL_35;
        }
      }

LABEL_52:

      v72 = *(v94 + 32);
      v73 = v82;
      v74 = v98;
      v72(v82, v97, v98);
      v75 = v83;
      v72(v83, v73, v74);
      v76 = URLQueryItem.value.getter();
      v78 = v93;
      v80 = v102;
      v79 = v103;
      if (v77)
      {
        if (v76 == 1953460082 && v77 == 0xE400000000000000)
        {

          LOBYTE(v57) = 1;
        }

        else
        {
          LOBYTE(v57) = _stringCompareWithSmolCheck(_:_:expecting:)();
        }
      }

      else
      {

        LOBYTE(v57) = 0;
      }

      (*v62)(v75, v98);
      (*(v89 + 8))(v86, v90);
      (*(v78 + 8))(v80, v79);
      return v57 & 1;
    }

    v27 = v93;
    v26 = v103;
LABEL_43:
    (*(v27 + 8))(v29, v26);
    goto LABEL_44;
  }

  object = v32._object;
  v33 = 1;
  v34 = URL.host(percentEncoded:)(1);
  if (v34.value._object)
  {
    v104 = v34;
    sub_1000F8A18(&qword_100161520, &protocol conformance descriptor for SettingsNavigationHost);
    v35 = v102;
    v36 = v99;
    dispatch thunk of RawRepresentable.init(rawValue:)();
    v33 = 0;
    v37 = v100;
  }

  else
  {
    v36 = v99;
    v37 = v100;
    v35 = v102;
  }

  v38 = v96;
  v39 = *(v96 + 56);
  v39(v35, v33, 1, v11);
  static SettingsNavigationHost.internetAccounts.getter();
  (*(v101 + 56))(v20, 0, 1, v36);
  v39(v20, 0, 1, v11);
  v40 = *(v95 + 48);
  sub_100059CA0(v35, v37, &qword_100161510, &qword_100118A08);
  sub_100059CA0(v20, v37 + v40, &qword_100161510, &qword_100118A08);
  v41 = *(v38 + 48);
  if (v41(v37, 1, v11) != 1)
  {
    v47 = v92;
    sub_100059CA0(v37, v92, &qword_100161510, &qword_100118A08);
    if (v41(v37 + v40, 1, v11) != 1)
    {
      v51 = *(v87 + 48);
      v52 = v47;
      v53 = v91;
      sub_1000A4CB8(v52, v91, &qword_1001614F8, &qword_1001189F0);
      sub_1000A4CB8(v37 + v40, v53 + v51, &qword_1001614F8, &qword_1001189F0);
      v54 = *(v101 + 48);
      v55 = v99;
      if (v54(v53, 1, v99) == 1)
      {
        sub_1000068B0(v20, &qword_100161510, &qword_100118A08);
        v56 = v91;
        sub_1000068B0(v102, &qword_100161510, &qword_100118A08);
        if (v54(v56 + v51, 1, v55) == 1)
        {
          sub_1000068B0(v56, &qword_1001614F8, &qword_1001189F0);
          v43 = v93;
          v44 = v103;
          v37 = v100;
          goto LABEL_10;
        }
      }

      else
      {
        v65 = v85;
        sub_100059CA0(v53, v85, &qword_1001614F8, &qword_1001189F0);
        if (v54(v53 + v51, 1, v55) != 1)
        {
          v68 = v101;
          v69 = v53 + v51;
          v70 = v84;
          (*(v101 + 32))(v84, v69, v55);
          sub_1000F8A18(&qword_100161518, &protocol conformance descriptor for SettingsNavigationHost);
          LODWORD(v98) = dispatch thunk of static Equatable.== infix(_:_:)();
          v71 = *(v68 + 8);
          v71(v70, v55);
          sub_1000068B0(v20, &qword_100161510, &qword_100118A08);
          sub_1000068B0(v102, &qword_100161510, &qword_100118A08);
          v71(v65, v55);
          sub_1000068B0(v53, &qword_1001614F8, &qword_1001189F0);
          sub_1000068B0(v100, &qword_100161510, &qword_100118A08);
          v43 = v93;
          v44 = v103;
          if (v98)
          {
            goto LABEL_11;
          }

LABEL_17:

          (*(v43 + 8))(v29, v44);
LABEL_44:
          LOBYTE(v57) = 0;
          return v57 & 1;
        }

        sub_1000068B0(v20, &qword_100161510, &qword_100118A08);
        v56 = v91;
        sub_1000068B0(v102, &qword_100161510, &qword_100118A08);
        (*(v101 + 8))(v65, v55);
      }

      sub_1000068B0(v56, &qword_100161500, &qword_1001189F8);
      sub_1000068B0(v100, &qword_100161510, &qword_100118A08);
      v43 = v93;
      v44 = v103;
      goto LABEL_17;
    }

    sub_1000068B0(v20, &qword_100161510, &qword_100118A08);
    sub_1000068B0(v102, &qword_100161510, &qword_100118A08);
    sub_1000068B0(v47, &qword_1001614F8, &qword_1001189F0);
    v43 = v93;
    v44 = v103;
LABEL_16:
    sub_1000068B0(v37, &qword_100161508, &qword_100118A00);
    goto LABEL_17;
  }

  sub_1000068B0(v20, &qword_100161510, &qword_100118A08);
  sub_1000068B0(v35, &qword_100161510, &qword_100118A08);
  v42 = v41(v37 + v40, 1, v11);
  v43 = v93;
  v44 = v103;
  if (v42 != 1)
  {
    goto LABEL_16;
  }

LABEL_10:
  sub_1000068B0(v37, &qword_100161510, &qword_100118A08);
LABEL_11:
  v45 = *(URL.pathComponents.getter() + 16);

  if (v45)
  {
    v46 = URL.pathComponents.getter();
    if (v46[2] > 1uLL)
    {
      v67 = v46[6];
      v66 = v46[7];

      if (v67 == 1953460082 && v66 == 0xE400000000000000)
      {

        LOBYTE(v57) = 1;
      }

      else
      {
        LOBYTE(v57) = _stringCompareWithSmolCheck(_:_:expecting:)();
      }

      (*(v43 + 8))(v29, v44);
      return v57 & 1;
    }

    goto LABEL_17;
  }

  (*(v43 + 8))(v29, v44);
  LOBYTE(v57) = 1;
  return v57 & 1;
}

void sub_1000FFA60()
{
  v0 = [objc_opt_self() defaultStore];
  if (v0)
  {
    v1 = v0;
    v2 = [v0 accounts];

    if (v2)
    {
      sub_100018308();
      static Array._conditionallyBridgeFromObjectiveC(_:result:)();
    }

    if (_swiftEmptyArrayStorage >> 62)
    {
LABEL_30:
      v3 = _CocoaArrayWrapper.endIndex.getter();
      if (v3)
      {
LABEL_6:
        v4 = 0;
        v21 = &_swiftEmptyArrayStorage[4];
        while (1)
        {
          if ((_swiftEmptyArrayStorage & 0xC000000000000001) != 0)
          {
            v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v4 >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_29;
            }

            v5 = v21[v4];
          }

          v6 = v5;
          if (__OFADD__(v4++, 1))
          {
            __break(1u);
LABEL_29:
            __break(1u);
            goto LABEL_30;
          }

          if (qword_10015AB68 != -1)
          {
            swift_once();
          }

          v8 = off_100161530;
          v9 = [v6 accountType];
          if (!v9)
          {
            __break(1u);
LABEL_33:
            __break(1u);
            goto LABEL_34;
          }

          v10 = v9;
          v11 = [v9 identifier];

          if (!v11)
          {
            goto LABEL_33;
          }

          v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v14 = v13;

          if (*(v8 + 2))
          {
            Hasher.init(_seed:)();
            String.hash(into:)();
            v15 = Hasher._finalize()();
            v16 = -1 << v8[32];
            v17 = v15 & ~v16;
            if ((*&v8[((v17 >> 3) & 0xFFFFFFFFFFFFFF8) + 56] >> v17))
            {
              break;
            }
          }

LABEL_7:

          if (v4 == v3)
          {
            goto LABEL_31;
          }
        }

        v18 = ~v16;
        while (1)
        {
          v19 = (*(v8 + 6) + 16 * v17);
          v20 = *v19 == v12 && v19[1] == v14;
          if (v20 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {
            break;
          }

          v17 = (v17 + 1) & v18;
          if (((*&v8[((v17 >> 3) & 0xFFFFFFFFFFFFFF8) + 56] >> v17) & 1) == 0)
          {
            goto LABEL_7;
          }
        }
      }
    }

    else
    {
      v3 = *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v3)
      {
        goto LABEL_6;
      }
    }

LABEL_31:

    return;
  }

LABEL_34:
  __break(1u);
}

void *sub_1000FFD28(uint64_t a1)
{
  v48 = type metadata accessor for URLQueryItem();
  v2 = *(v48 - 8);
  v3 = __chkstk_darwin(v48);
  v5 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v41 = &v40 - v6;
  v7 = sub_10004DED0(&qword_1001614F0, &unk_1001189B0);
  __chkstk_darwin(v7 - 8);
  v9 = &v40 - v8;
  v10 = type metadata accessor for URLComponents();
  v44 = *(v10 - 8);
  v45 = v10;
  __chkstk_darwin(v10);
  v43 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10004DED0(&qword_100161528, &unk_100118AA0);
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v40 - v14;
  v16 = type metadata accessor for URL();
  v46 = *(v16 - 8);
  v47 = v16;
  __chkstk_darwin(v16);
  v18 = &v40 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Transforming<>.normalizedPrefsAndAppPrefs.getter();
  v19 = Transforming.transform.getter();
  (*(v13 + 8))(v15, v12);
  v19(a1);

  URL.scheme.getter();
  if (!v20)
  {
LABEL_27:
    v34 = 0xD00000000000001BLL;
    goto LABEL_28;
  }

  v21 = String.lowercased()();

  if (v21._countAndFlagsBits == 0xD000000000000013 && 0x80000001001265E0 == v21._object)
  {
  }

  else
  {
    v22 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v22 & 1) == 0)
    {
      goto LABEL_27;
    }
  }

  URL.absoluteString.getter();
  URLComponents.init(string:)();

  v24 = v44;
  v23 = v45;
  if ((*(v44 + 48))(v9, 1, v45) == 1)
  {
    sub_1000068B0(v9, &qword_1001614F0, &unk_1001189B0);
    goto LABEL_27;
  }

  v25 = v43;
  (*(v24 + 32))(v43, v9, v23);
  result = URLComponents.percentEncodedQueryItems.getter();
  if (!result)
  {
    (*(v24 + 8))(v25, v23);
    goto LABEL_27;
  }

  v27 = result;
  v28 = result[2];
  if (!v28)
  {
LABEL_25:
    (*(v44 + 8))(v43, v45);
    goto LABEL_26;
  }

  v29 = 0;
  v42 = v2 + 16;
  while (1)
  {
    if (v29 >= *(v27 + 16))
    {
      __break(1u);
      goto LABEL_33;
    }

    (*(v2 + 16))(v5, v27 + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * v29, v48);
    if (URLQueryItem.name.getter() == 0xD000000000000021 && 0x8000000100126870 == v30)
    {
      break;
    }

    v31 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v31)
    {
      goto LABEL_19;
    }

    ++v29;
    result = (*(v2 + 8))(v5, v48);
    if (v28 == v29)
    {
      goto LABEL_25;
    }
  }

LABEL_19:
  v32 = v41;
  v33 = v48;
  (*(v2 + 32))(v41, v5, v48);
  v34 = URLQueryItem.value.getter();
  v36 = v35;
  (*(v2 + 8))(v32, v33);
  if (!v36)
  {
    goto LABEL_25;
  }

  result = SBSCopyDisplayIdentifiers();
  if (!result)
  {
LABEL_33:
    __break(1u);
    return result;
  }

  v37 = result;

  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    v49 = 0;
    static Set._conditionallyBridgeFromObjectiveC(_:result:)();

    if (v49)
    {
      v38 = v49;
    }

    else
    {
      v38 = &_swiftEmptySetSingleton;
    }
  }

  else
  {

    v38 = &_swiftEmptySetSingleton;
  }

  v39 = sub_100061D08(v34, v36, v38);

  (*(v44 + 8))(v43, v45);
  if ((v39 & 1) == 0)
  {
LABEL_26:

    goto LABEL_27;
  }

LABEL_28:
  (*(v46 + 8))(v18, v47);
  return v34;
}

void sub_100100388()
{
  if (qword_10015AAB8 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_10000659C(v0, qword_1001696A0);
  oslog = Logger.logObject.getter();
  v1 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    *v2 = 136315394;
    *(v2 + 4) = sub_100025CF0(0xD000000000000025, 0x8000000100126820, &v4);
    *(v2 + 12) = 2080;
    *(v2 + 14) = sub_100025CF0(0x3A5F286574756F72, 0xE900000000000029, &v4);
    _os_log_impl(&_mh_execute_header, oslog, v1, "…Complete (%s.%s)", v2, 0x16u);
    swift_arrayDestroy();
  }
}

uint64_t sub_10010050C(uint64_t a1)
{
  v49 = type metadata accessor for URLQueryItem();
  v53 = *(v49 - 8);
  v2 = __chkstk_darwin(v49);
  v54 = &v45 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __chkstk_darwin(v2);
  v47 = &v45 - v5;
  __chkstk_darwin(v4);
  v48 = &v45 - v6;
  v7 = sub_10004DED0(&qword_1001614F0, &unk_1001189B0);
  __chkstk_darwin(v7 - 8);
  v9 = &v45 - v8;
  v10 = type metadata accessor for URLComponents();
  v51 = *(v10 - 8);
  v52 = v10;
  __chkstk_darwin(v10);
  v50 = &v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10004DED0(&qword_100161528, &unk_100118AA0);
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v45 - v14;
  v16 = type metadata accessor for URL();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v45 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Transforming<>.normalizedPrefsAndAppPrefs.getter();
  v20 = Transforming.transform.getter();
  (*(v13 + 8))(v15, v12);
  v20(a1);

  URL.scheme.getter();
  if (!v21)
  {
    goto LABEL_28;
  }

  v22 = v16;
  v23 = String.lowercased()();

  if (v23._countAndFlagsBits == 0xD000000000000013 && 0x80000001001265E0 == v23._object || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v24 = URL.pathComponents.getter();
    if (v24[2] <= 1uLL)
    {

LABEL_7:
      (*(v17 + 8))(v19, v22);
LABEL_29:
      v27 = 0;
      return v27 & 1;
    }

    v26 = v24[6];
    v25 = v24[7];

    if (v26 == 0x4F4343415F444441 && v25 == 0xEB00000000544E55)
    {

      v27 = 1;
    }

    else
    {
      v27 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }

    goto LABEL_17;
  }

  if ((v23._countAndFlagsBits != 0x7366657270 || v23._object != 0xE500000000000000) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {

LABEL_28:
    (*(v17 + 8))(v19, v16);
    goto LABEL_29;
  }

  URL.absoluteString.getter();
  URLComponents.init(string:)();

  v29 = v51;
  v28 = v52;
  if ((*(v51 + 48))(v9, 1, v52) == 1)
  {

    (*(v17 + 8))(v19, v16);
    sub_1000068B0(v9, &qword_1001614F0, &unk_1001189B0);
    goto LABEL_29;
  }

  v30 = v50;
  (*(v29 + 32))(v50, v9, v28);
  result = URLComponents.percentEncodedQueryItems.getter();
  if (!result)
  {

    (*(v29 + 8))(v30, v28);
    goto LABEL_7;
  }

  v32 = result;
  v33 = *(result + 16);
  v34 = v49;
  if (!v33)
  {
LABEL_26:

    (*(v51 + 8))(v50, v52);
    goto LABEL_7;
  }

  v35 = 0;
  v45 = v53 + 16;
  v46 = (v53 + 8);
  while (1)
  {
    if (v35 >= *(v32 + 16))
    {
      __break(1u);
      return result;
    }

    (*(v53 + 16))(v54, v32 + ((*(v53 + 80) + 32) & ~*(v53 + 80)) + *(v53 + 72) * v35, v34);
    if (URLQueryItem.name.getter() == 1752457584 && v36 == 0xE400000000000000)
    {
      break;
    }

    v37 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v37)
    {
      goto LABEL_33;
    }

    ++v35;
    result = (*v46)(v54, v34);
    if (v33 == v35)
    {
      goto LABEL_26;
    }
  }

LABEL_33:

  v38 = *(v53 + 32);
  v39 = v47;
  v38(v47, v54, v34);
  v40 = v48;
  v38(v48, v39, v34);
  v41 = URLQueryItem.value.getter();
  v44 = v51;
  v43 = v52;
  if (v42)
  {
    if (v41 == 0x4F4343415F444441 && v42 == 0xEB00000000544E55)
    {

      v27 = 1;
    }

    else
    {
      v27 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

  else
  {

    v27 = 0;
  }

  (*v46)(v40, v34);
  (*(v44 + 8))(v50, v43);
LABEL_17:
  (*(v17 + 8))(v19, v22);
  return v27 & 1;
}

uint64_t sub_100100CBC(uint64_t a1)
{
  v2 = type metadata accessor for SettingsNavigationHost();
  v121 = *(v2 - 8);
  __chkstk_darwin(v2);
  v109 = &object - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10004DED0(&qword_1001614F8, &qword_1001189F0);
  v118 = *(v4 - 8);
  v119 = v4;
  __chkstk_darwin(v4);
  v110 = &object - v5;
  v113 = sub_10004DED0(&qword_100161500, &qword_1001189F8);
  __chkstk_darwin(v113);
  v114 = &object - v6;
  v117 = sub_10004DED0(&qword_100161508, &qword_100118A00);
  __chkstk_darwin(v117);
  v126 = (&object - v7);
  v8 = sub_10004DED0(&qword_100161510, &qword_100118A08);
  v9 = __chkstk_darwin(v8 - 8);
  v115 = &object - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v127 = &object - v12;
  __chkstk_darwin(v11);
  v120 = (&object - v13);
  v132 = type metadata accessor for URLQueryItem();
  v122 = *(v132 - 8);
  v14 = __chkstk_darwin(v132);
  v131 = &object - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v14);
  v111 = &object - v17;
  v18 = __chkstk_darwin(v16);
  v112 = &object - v19;
  v20 = __chkstk_darwin(v18);
  v22 = &object - v21;
  v23 = __chkstk_darwin(v20);
  v116 = &object - v24;
  __chkstk_darwin(v23);
  v26 = &object - v25;
  v27 = sub_10004DED0(&qword_1001614F0, &unk_1001189B0);
  __chkstk_darwin(v27 - 8);
  v29 = &object - v28;
  v30 = type metadata accessor for URLComponents();
  v128 = *(v30 - 8);
  v129 = v30;
  __chkstk_darwin(v30);
  v123 = &object - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_10004DED0(&qword_100161528, &unk_100118AA0);
  v33 = *(v32 - 8);
  __chkstk_darwin(v32);
  v35 = &object - v34;
  v36 = type metadata accessor for URL();
  v124 = *(v36 - 8);
  v125 = v36;
  __chkstk_darwin(v36);
  v130 = &object - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  URL.scheme.getter();
  if (!v38)
  {
    goto LABEL_45;
  }

  v107 = v26;
  v108 = v2;
  v39 = String.lowercased()();

  if (v39._countAndFlagsBits == 0x7366657270 && v39._object == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    static Transforming<>.normalizedPrefsAndAppPrefs.getter();
    v40 = Transforming.transform.getter();
    (*(v33 + 8))(v35, v32);
    v41 = v130;
    v40(a1);

    URL.absoluteString.getter();
    URLComponents.init(string:)();

    v43 = v128;
    v42 = v129;
    if ((*(v128 + 48))(v29, 1, v129) == 1)
    {

      (*(v124 + 8))(v41, v125);
      sub_1000068B0(v29, &qword_1001614F0, &unk_1001189B0);
    }

    else
    {
      v44 = v123;
      (*(v43 + 32))(v123, v29, v42);
      result = URLComponents.percentEncodedQueryItems.getter();
      if (result)
      {
        v46 = result;
        object = v39._object;
        v47 = *(result + 16);
        v48 = v132;
        v49 = v122;
        if (v47)
        {
          v50 = 0;
          v126 = (v122 + 8);
          v127 = v122 + 16;
          while (1)
          {
            if (v50 >= *(v46 + 16))
            {
              __break(1u);
LABEL_70:
              __break(1u);
              return result;
            }

            v51 = (*(v49 + 80) + 32) & ~*(v49 + 80);
            v52 = *(v49 + 72);
            v53 = *(v49 + 16);
            v53(v22, v46 + v51 + v52 * v50, v48);
            if (URLQueryItem.name.getter() == 1953460082 && v54 == 0xE400000000000000)
            {
              break;
            }

            v55 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if (v55)
            {
              goto LABEL_31;
            }

            ++v50;
            v48 = v132;
            result = (*v126)(v22, v132);
            if (v47 == v50)
            {
              goto LABEL_15;
            }
          }

LABEL_31:
          v69 = *(v49 + 32);
          v70 = v116;
          v71 = v22;
          v72 = v132;
          v69(v116, v71, v132);
          v73 = v107;
          v120 = v69;
          v69(v107, v70, v72);
          result = URLQueryItem.value.getter();
          v121 = v74;
          v122 = result;
          if (v74)
          {
            v75 = 0;
            v76 = v72;
            v77 = v46 + v51;
            while (1)
            {
              if (v75 >= *(v46 + 16))
              {
                goto LABEL_70;
              }

              v53(v131, v77, v76);
              if (URLQueryItem.name.getter() == 1752457584 && v78 == 0xE400000000000000)
              {
                break;
              }

              v79 = _stringCompareWithSmolCheck(_:_:expecting:)();

              if (v79)
              {
                goto LABEL_51;
              }

              ++v75;
              v80 = *v126;
              v76 = v132;
              result = (*v126)(v131, v132);
              v77 += v52;
              if (v47 == v75)
              {

                v81 = 1;
                v82 = v128;
                v84 = v124;
                v83 = v125;
                goto LABEL_56;
              }
            }

LABEL_51:

            v92 = v111;
            v93 = v132;
            v94 = v120;
            v120(v111, v131, v132);
            v95 = v112;
            v94(v112, v92, v93);
            v96 = URLQueryItem.value.getter();
            v82 = v128;
            v84 = v124;
            v83 = v125;
            if (v97)
            {
              v98 = v123;
              v99 = v121;
              if (v96 == 0xD000000000000016 && v97 == 0x80000001001268E0)
              {

                v80 = *v126;
                (*v126)(v95, v132);
                v81 = 0;
              }

              else
              {
                v100 = _stringCompareWithSmolCheck(_:_:expecting:)();

                v80 = *v126;
                (*v126)(v95, v132);
                v81 = v100 ^ 1;
              }
            }

            else
            {
              v80 = *v126;
              (*v126)(v95, v93);
              v81 = 1;
LABEL_56:
              v98 = v123;
              v99 = v121;
            }

            v101 = v122;
            if (v122 == 0xD000000000000016 && v99 == 0x80000001001268A0 || (v102 = 0, (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
            {
              v102 = v81;
            }

            if (v101 == 0xD000000000000010 && v99 == 0x80000001001268C0)
            {

              v67 = 1;
            }

            else
            {
              v103 = _stringCompareWithSmolCheck(_:_:expecting:)();

              v67 = v103 | v102;
            }

            v80(v107, v132);
            (*(v82 + 8))(v98, v129);
            (*(v84 + 8))(v130, v83);
            return v67 & 1;
          }

          (*v126)(v73, v72);
        }

        else
        {
LABEL_15:
        }

        (*(v128 + 8))(v123, v129);
      }

      else
      {

        (*(v43 + 8))(v44, v42);
      }

      (*(v124 + 8))(v130, v125);
    }

    goto LABEL_45;
  }

  if ((v39._countAndFlagsBits != 0xD000000000000013 || 0x80000001001265E0 != v39._object) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {

    goto LABEL_45;
  }

  v56 = URL.host(percentEncoded:)(1);
  object = v39._object;
  if (v56.value._object)
  {
    v133 = v56;
    sub_1000F8A18(&qword_100161520, &protocol conformance descriptor for SettingsNavigationHost);
    v57 = v120;
    v58 = v108;
    dispatch thunk of RawRepresentable.init(rawValue:)();
    v59 = v118;
    v60 = v119;
    v61 = *(v118 + 56);
    v61(v57, 0, 1, v119);
    v62 = v126;
  }

  else
  {
    v59 = v118;
    v60 = v119;
    v61 = *(v118 + 56);
    v57 = v120;
    v61(v120, 1, 1, v119);
    v62 = v126;
    v58 = v108;
  }

  v63 = v121;
  v64 = v127;
  static SettingsNavigationHost.internetAccounts.getter();
  (*(v63 + 56))(v64, 0, 1, v58);
  v61(v64, 0, 1, v60);
  v65 = *(v117 + 48);
  sub_100059CA0(v57, v62, &qword_100161510, &qword_100118A08);
  sub_100059CA0(v64, v62 + v65, &qword_100161510, &qword_100118A08);
  v66 = *(v59 + 48);
  if (v66(v62, 1, v60) != 1)
  {
    v68 = v115;
    sub_100059CA0(v62, v115, &qword_100161510, &qword_100118A08);
    if (v66(v62 + v65, 1, v60) == 1)
    {

      sub_1000068B0(v64, &qword_100161510, &qword_100118A08);
      sub_1000068B0(v57, &qword_100161510, &qword_100118A08);
      sub_1000068B0(v68, &qword_1001614F8, &qword_1001189F0);
      goto LABEL_28;
    }

    v85 = *(v113 + 48);
    v86 = v68;
    v87 = v114;
    sub_1000A4CB8(v86, v114, &qword_1001614F8, &qword_1001189F0);
    sub_1000A4CB8(v62 + v65, v87 + v85, &qword_1001614F8, &qword_1001189F0);
    v88 = *(v63 + 48);
    v89 = v108;
    if (v88(v87, 1, v108) == 1)
    {

      sub_1000068B0(v127, &qword_100161510, &qword_100118A08);
      v90 = v114;
      sub_1000068B0(v57, &qword_100161510, &qword_100118A08);
      if (v88(v90 + v85, 1, v89) == 1)
      {
        sub_1000068B0(v90, &qword_1001614F8, &qword_1001189F0);
        v67 = 1;
LABEL_68:
        sub_1000068B0(v62, &qword_100161510, &qword_100118A08);
        return v67 & 1;
      }
    }

    else
    {
      v91 = v110;
      sub_100059CA0(v87, v110, &qword_1001614F8, &qword_1001189F0);
      if (v88(v87 + v85, 1, v89) != 1)
      {
        v104 = v109;
        (*(v63 + 32))(v109, v87 + v85, v89);
        sub_1000F8A18(&qword_100161518, &protocol conformance descriptor for SettingsNavigationHost);
        v67 = dispatch thunk of static Equatable.== infix(_:_:)();

        v105 = *(v63 + 8);
        v105(v104, v89);
        sub_1000068B0(v127, &qword_100161510, &qword_100118A08);
        sub_1000068B0(v57, &qword_100161510, &qword_100118A08);
        v105(v91, v89);
        sub_1000068B0(v87, &qword_1001614F8, &qword_1001189F0);
        goto LABEL_68;
      }

      sub_1000068B0(v127, &qword_100161510, &qword_100118A08);
      v90 = v114;
      sub_1000068B0(v57, &qword_100161510, &qword_100118A08);
      (*(v63 + 8))(v91, v89);
    }

    sub_1000068B0(v90, &qword_100161500, &qword_1001189F8);
    v67 = 0;
    goto LABEL_68;
  }

  sub_1000068B0(v64, &qword_100161510, &qword_100118A08);
  sub_1000068B0(v57, &qword_100161510, &qword_100118A08);
  if (v66(v62 + v65, 1, v60) != 1)
  {
LABEL_28:
    sub_1000068B0(v62, &qword_100161508, &qword_100118A00);
LABEL_45:
    v67 = 0;
    return v67 & 1;
  }

  sub_1000068B0(v62, &qword_100161510, &qword_100118A08);
  v67 = 1;
  return v67 & 1;
}

void sub_100101E70(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (qword_10015AAB8 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_10000659C(v4, qword_1001696A0);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    *v7 = 136315394;
    *(v7 + 4) = sub_100025CF0(0xD000000000000012, 0x8000000100126900, &v22);
    *(v7 + 12) = 2080;
    *(v7 + 14) = sub_100025CF0(0x3A5F286574756F72, 0xE900000000000029, &v22);
    _os_log_impl(&_mh_execute_header, v5, v6, "Start (%s.%s)…", v7, 0x16u);
    swift_arrayDestroy();
  }

  v8 = URL.scheme.getter();
  if (v9)
  {
    v10 = String.lowercased()();
    countAndFlagsBits = v10._countAndFlagsBits;
    object = v10._object;
  }

  else
  {
    countAndFlagsBits = v8;
    object = 0;
  }

  if (qword_10015AA30 != -1)
  {
    swift_once();
  }

  v13 = [qword_1001695A8 bundleIdentifier];
  if (!v13)
  {
    if (!object)
    {
      goto LABEL_22;
    }

    goto LABEL_19;
  }

  v14 = v13;
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  v15 = String.lowercased()();

  if (!object)
  {
    if (!v15._object)
    {
      goto LABEL_22;
    }

    goto LABEL_19;
  }

  if (!v15._object)
  {
LABEL_19:

    goto LABEL_20;
  }

  if (countAndFlagsBits != v15._countAndFlagsBits || object != v15._object)
  {
    v17 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v17)
    {
      goto LABEL_22;
    }

LABEL_20:
    v16 = 1;
    goto LABEL_23;
  }

LABEL_22:
  v18 = type metadata accessor for URL();
  v19 = *(*(v18 - 8) + 16);
  v19(a2, a1, v18);
  v20 = type metadata accessor for SettingsURLDestination(0);
  v19(a2 + *(v20 + 20), a1, v18);
  type metadata accessor for SettingsURLDestination.Action(0);
  swift_storeEnumTagMultiPayload();
  v16 = 0;
  *(a2 + *(v20 + 24)) = _swiftEmptyArrayStorage;
LABEL_23:
  v21 = sub_10004DED0(&qword_10015B298, &unk_100118820);
  (*(*(v21 - 8) + 56))(a2, v16, 1, v21);

  sub_100102220();
}

void sub_100102220()
{
  if (qword_10015AAB8 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_10000659C(v0, qword_1001696A0);
  oslog = Logger.logObject.getter();
  v1 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    *v2 = 136315394;
    *(v2 + 4) = sub_100025CF0(0xD000000000000012, 0x8000000100126900, &v4);
    *(v2 + 12) = 2080;
    *(v2 + 14) = sub_100025CF0(0x3A5F286574756F72, 0xE900000000000029, &v4);
    _os_log_impl(&_mh_execute_header, oslog, v1, "…Complete (%s.%s)", v2, 0x16u);
    swift_arrayDestroy();
  }
}

uint64_t sub_1001023A4(uint64_t a1)
{
  v1 = URL.scheme.getter();
  if (v2)
  {
    v3 = String.lowercased()();
    countAndFlagsBits = v3._countAndFlagsBits;
    object = v3._object;
  }

  else
  {
    countAndFlagsBits = v1;
    object = 0;
  }

  if (qword_10015AA30 != -1)
  {
    swift_once();
  }

  v6 = [qword_1001695A8 bundleIdentifier];
  if (v6)
  {
    v7 = v6;
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    v8 = String.lowercased()();

    if (object)
    {
      if (v8._object)
      {
        if (countAndFlagsBits == v8._countAndFlagsBits && object == v8._object)
        {

          v9 = 1;
        }

        else
        {
          v9 = _stringCompareWithSmolCheck(_:_:expecting:)();
        }

        goto LABEL_18;
      }

      goto LABEL_13;
    }

    if (v8._object)
    {
      v9 = 0;
      goto LABEL_18;
    }
  }

  else if (object)
  {
LABEL_13:
    v9 = 0;
LABEL_18:

    return v9 & 1;
  }

  v9 = 1;
  return v9 & 1;
}

uint64_t sub_10010250C@<X0>(void *a1@<X8>)
{
  v2 = sub_10004DED0(&qword_10015E910, &unk_10010FC70);
  __chkstk_darwin(v2 - 8);
  v4 = v15 - v3;
  v5 = type metadata accessor for URL();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = (v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15[4] = URL.absoluteString.getter();
  v15[5] = v9;
  v15[2] = 0xD00000000000002FLL;
  v15[3] = 0x8000000100120580;
  v15[0] = 0xD000000000000047;
  v15[1] = 0x8000000100126920;
  sub_10002EAE0();
  StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();

  URL.init(string:)();

  if ((*(v6 + 48))(v4, 1, v5) != 1)
  {
    (*(v6 + 32))(v8, v4, v5);
    v10 = URL.scheme.getter();
    if (v11)
    {
      if (v10 == 0xD000000000000013 && v11 == 0x80000001001265E0)
      {

LABEL_8:
        sub_100103A28(v8, a1);
        return (*(v6 + 8))(v8, v5);
      }

      v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v12)
      {
        goto LABEL_8;
      }
    }

    (*(v6 + 8))(v8, v5);
    goto LABEL_10;
  }

  sub_1000541DC(v4);
LABEL_10:
  v14 = sub_10004DED0(&qword_10015B298, &unk_100118820);
  return (*(*(v14 - 8) + 56))(a1, 1, 1, v14);
}

BOOL sub_10010280C(uint64_t a1)
{
  URL.absoluteString.getter();
  v1._object = 0x8000000100120580;
  v1._countAndFlagsBits = 0xD00000000000002FLL;
  v2 = String.hasPrefix(_:)(v1);

  if (!v2)
  {
    return 0;
  }

  v7[4] = nullsub_1;
  v7[5] = 0;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 1107296256;
  v7[2] = sub_10000411C;
  v7[3] = &unk_100152508;
  v3 = _Block_copy(v7);
  v4 = [objc_opt_self() contextWithBundleId:0 onChange:v3];
  _Block_release(v3);

  if (!v4)
  {
    return 0;
  }

  v5 = [v4 topLevelSettingsEntryType];

  return v5 == 1;
}

uint64_t sub_10010293C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for SettingsNavigationHost();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v61 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v61 - v9;
  (*(v5 + 16))(&v61 - v9, v2, v4);
  static SettingsNavigationHost.defaultAppState.getter();
  sub_1001039C0();
  v11 = dispatch thunk of static Equatable.== infix(_:_:)();
  v12 = *(v5 + 8);
  v12(v8, v4);
  if (v11)
  {
    result = (v12)(v10, v4);
    v14 = 0;
    v15 = -1;
    goto LABEL_68;
  }

  static SettingsNavigationHost.airplaneMode.getter();
  v16 = dispatch thunk of static Equatable.== infix(_:_:)();
  v12(v8, v4);
  if (v16)
  {
    result = (v12)(v10, v4);
    v15 = 6;
    v14 = 2;
    goto LABEL_68;
  }

  static SettingsNavigationHost.primaryAppleAccount.getter();
  v17 = dispatch thunk of static Equatable.== infix(_:_:)();
  v12(v8, v4);
  if (v17)
  {
    result = (v12)(v10, v4);
    v14 = 0;
    v15 = 6;
    goto LABEL_68;
  }

  static SettingsNavigationHost.family.getter();
  v18 = dispatch thunk of static Equatable.== infix(_:_:)();
  v12(v8, v4);
  if (v18)
  {
    result = (v12)(v10, v4);
    v15 = 6;
    v14 = 1;
    goto LABEL_68;
  }

  static SettingsNavigationHost.wifi.getter();
  v19 = dispatch thunk of static Equatable.== infix(_:_:)();
  v12(v8, v4);
  if (v19)
  {
    result = (v12)(v10, v4);
    v15 = 6;
    v14 = 3;
    goto LABEL_68;
  }

  static SettingsNavigationHost.ethernet.getter();
  v20 = dispatch thunk of static Equatable.== infix(_:_:)();
  v12(v8, v4);
  if (v20)
  {
    result = (v12)(v10, v4);
    v15 = 6;
    v14 = 4;
    goto LABEL_68;
  }

  static SettingsNavigationHost.bluetooth.getter();
  v21 = dispatch thunk of static Equatable.== infix(_:_:)();
  v12(v8, v4);
  if (v21)
  {
    result = (v12)(v10, v4);
    v15 = 6;
    v14 = 5;
    goto LABEL_68;
  }

  static SettingsNavigationHost.cellular.getter();
  v22 = dispatch thunk of static Equatable.== infix(_:_:)();
  v12(v8, v4);
  if (v22)
  {
    result = (v12)(v10, v4);
    v14 = 6;
    v15 = 6;
    goto LABEL_68;
  }

  static SettingsNavigationHost.personalHotspot.getter();
  v23 = dispatch thunk of static Equatable.== infix(_:_:)();
  v12(v8, v4);
  if (v23)
  {
    result = (v12)(v10, v4);
    v15 = 6;
    v14 = 7;
    goto LABEL_68;
  }

  static SettingsNavigationHost.vpn.getter();
  v24 = dispatch thunk of static Equatable.== infix(_:_:)();
  v12(v8, v4);
  if (v24)
  {
    result = (v12)(v10, v4);
    v15 = 6;
    v14 = 8;
    goto LABEL_68;
  }

  static SettingsNavigationHost.battery.getter();
  v25 = dispatch thunk of static Equatable.== infix(_:_:)();
  v12(v8, v4);
  if (v25)
  {
    result = (v12)(v10, v4);
    v15 = 6;
    v14 = 30;
    goto LABEL_68;
  }

  static SettingsNavigationHost.classroom.getter();
  v26 = dispatch thunk of static Equatable.== infix(_:_:)();
  v12(v8, v4);
  if (v26)
  {
    result = (v12)(v10, v4);
    v15 = 6;
    v14 = 9;
    goto LABEL_68;
  }

  static SettingsNavigationHost.classKit.getter();
  v27 = dispatch thunk of static Equatable.== infix(_:_:)();
  v12(v8, v4);
  if (v27)
  {
    result = (v12)(v10, v4);
    v15 = 6;
    v14 = 34;
    goto LABEL_68;
  }

  static SettingsNavigationHost.general.getter();
  v28 = dispatch thunk of static Equatable.== infix(_:_:)();
  v12(v8, v4);
  if (v28)
  {
LABEL_28:
    result = (v12)(v10, v4);
    v15 = 6;
    v14 = 15;
    goto LABEL_68;
  }

  static SettingsNavigationHost.accessibility.getter();
  v29 = dispatch thunk of static Equatable.== infix(_:_:)();
  v12(v8, v4);
  if (v29)
  {
    result = (v12)(v10, v4);
    v15 = 6;
    v14 = 21;
    goto LABEL_68;
  }

  static SettingsNavigationHost.actionButton.getter();
  v30 = dispatch thunk of static Equatable.== infix(_:_:)();
  v12(v8, v4);
  if (v30)
  {
    result = (v12)(v10, v4);
    v15 = 6;
    v14 = 17;
    goto LABEL_68;
  }

  static SettingsNavigationHost.pencil.getter();
  v31 = dispatch thunk of static Equatable.== infix(_:_:)();
  v12(v8, v4);
  if (v31)
  {
    result = (v12)(v10, v4);
    v15 = 6;
    v14 = 26;
    goto LABEL_68;
  }

  static SettingsNavigationHost.camera.getter();
  v32 = dispatch thunk of static Equatable.== infix(_:_:)();
  v12(v8, v4);
  if (v32)
  {
    result = (v12)(v10, v4);
    v15 = 6;
    v14 = 35;
    goto LABEL_68;
  }

  static SettingsNavigationHost.controlCenter.getter();
  v33 = dispatch thunk of static Equatable.== infix(_:_:)();
  v12(v8, v4);
  if (v33)
  {
    result = (v12)(v10, v4);
    v15 = 6;
    v14 = 16;
    goto LABEL_68;
  }

  static SettingsNavigationHost.display.getter();
  v34 = dispatch thunk of static Equatable.== infix(_:_:)();
  v12(v8, v4);
  if (v34)
  {
    result = (v12)(v10, v4);
    v15 = 6;
    v14 = 18;
    goto LABEL_68;
  }

  static SettingsNavigationHost.homeScreenAndAppLibrary.getter();
  v35 = dispatch thunk of static Equatable.== infix(_:_:)();
  v12(v8, v4);
  if (v35)
  {
    result = (v12)(v10, v4);
    v15 = 6;
    v14 = 19;
    goto LABEL_68;
  }

  static SettingsNavigationHost.multitaskingAndGestures.getter();
  v36 = dispatch thunk of static Equatable.== infix(_:_:)();
  v12(v8, v4);
  if (v36)
  {
    result = (v12)(v10, v4);
    v15 = 6;
    v14 = 20;
    goto LABEL_68;
  }

  static SettingsNavigationHost.standBy.getter();
  v37 = dispatch thunk of static Equatable.== infix(_:_:)();
  v12(v8, v4);
  if (v37)
  {
    result = (v12)(v10, v4);
    v15 = 6;
    v14 = 23;
    goto LABEL_68;
  }

  static SettingsNavigationHost.wallpaper.getter();
  v38 = dispatch thunk of static Equatable.== infix(_:_:)();
  v12(v8, v4);
  if (v38)
  {
    result = (v12)(v10, v4);
    v15 = 6;
    v14 = 22;
    goto LABEL_68;
  }

  static SettingsNavigationHost.notifications.getter();
  v39 = dispatch thunk of static Equatable.== infix(_:_:)();
  v12(v8, v4);
  if (v39)
  {
    result = (v12)(v10, v4);
    v15 = 6;
    v14 = 11;
    goto LABEL_68;
  }

  static SettingsNavigationHost.sounds.getter();
  v40 = dispatch thunk of static Equatable.== infix(_:_:)();
  v12(v8, v4);
  if (v40)
  {
    result = (v12)(v10, v4);
    v15 = 6;
    v14 = 12;
    goto LABEL_68;
  }

  static SettingsNavigationHost.focus.getter();
  v41 = dispatch thunk of static Equatable.== infix(_:_:)();
  v12(v8, v4);
  if (v41)
  {
    result = (v12)(v10, v4);
    v15 = 6;
    v14 = 13;
    goto LABEL_68;
  }

  static SettingsNavigationHost.screenTime.getter();
  v42 = dispatch thunk of static Equatable.== infix(_:_:)();
  v12(v8, v4);
  if (v42)
  {
    result = (v12)(v10, v4);
    v15 = 6;
    v14 = 14;
    goto LABEL_68;
  }

  static SettingsNavigationHost.passcode.getter();
  v43 = dispatch thunk of static Equatable.== infix(_:_:)();
  v12(v8, v4);
  if (v43)
  {
    result = (v12)(v10, v4);
    v15 = 6;
    v14 = 27;
    goto LABEL_68;
  }

  static SettingsNavigationHost.sos.getter();
  v44 = dispatch thunk of static Equatable.== infix(_:_:)();
  v12(v8, v4);
  if (v44)
  {
    result = (v12)(v10, v4);
    v15 = 6;
    v14 = 28;
    goto LABEL_68;
  }

  static SettingsNavigationHost.exposureNotifications.getter();
  v45 = dispatch thunk of static Equatable.== infix(_:_:)();
  v12(v8, v4);
  if (v45)
  {
    result = (v12)(v10, v4);
    v15 = 6;
    v14 = 29;
    goto LABEL_68;
  }

  static SettingsNavigationHost.privacyAndSecurity.getter();
  v46 = dispatch thunk of static Equatable.== infix(_:_:)();
  v12(v8, v4);
  if (v46)
  {
    result = (v12)(v10, v4);
    v15 = 6;
    v14 = 31;
    goto LABEL_68;
  }

  static SettingsNavigationHost.appStore.getter();
  v47 = dispatch thunk of static Equatable.== infix(_:_:)();
  v12(v8, v4);
  if (v47)
  {
    goto LABEL_67;
  }

  static SettingsNavigationHost.appInstallation.getter();
  v48 = dispatch thunk of static Equatable.== infix(_:_:)();
  v12(v8, v4);
  if (v48)
  {
    goto LABEL_67;
  }

  static SettingsNavigationHost.gameCenter.getter();
  v49 = dispatch thunk of static Equatable.== infix(_:_:)();
  v12(v8, v4);
  if (v49)
  {
    result = (v12)(v10, v4);
    v15 = 6;
    v14 = 36;
    goto LABEL_68;
  }

  static SettingsNavigationHost.iCloud.getter();
  v50 = dispatch thunk of static Equatable.== infix(_:_:)();
  v12(v8, v4);
  if (v50)
  {
    result = (v12)(v10, v4);
    v15 = 6;
    v14 = 37;
    goto LABEL_68;
  }

  static SettingsNavigationHost.siri.getter();
  v51 = dispatch thunk of static Equatable.== infix(_:_:)();
  v12(v8, v4);
  if (v51)
  {
    result = (v12)(v10, v4);
    v15 = 6;
    v14 = 24;
    goto LABEL_68;
  }

  static SettingsNavigationHost.search.getter();
  v52 = dispatch thunk of static Equatable.== infix(_:_:)();
  v12(v8, v4);
  if (v52)
  {
    result = (v12)(v10, v4);
    v15 = 6;
    v14 = 25;
    goto LABEL_68;
  }

  static SettingsNavigationHost.tvProvider.getter();
  v53 = dispatch thunk of static Equatable.== infix(_:_:)();
  v12(v8, v4);
  if (v53)
  {
    goto LABEL_28;
  }

  static SettingsNavigationHost.wallet.getter();
  v54 = dispatch thunk of static Equatable.== infix(_:_:)();
  v12(v8, v4);
  if (v54)
  {
    result = (v12)(v10, v4);
    v15 = 6;
    v14 = 32;
    goto LABEL_68;
  }

  static SettingsNavigationHost.contactless.getter();
  v55 = dispatch thunk of static Equatable.== infix(_:_:)();
  v12(v8, v4);
  if (v55)
  {
    result = (v12)(v10, v4);
    v15 = 6;
    v14 = 33;
    goto LABEL_68;
  }

  static SettingsNavigationHost.apps.getter();
  v56 = dispatch thunk of static Equatable.== infix(_:_:)();
  v12(v8, v4);
  if (v56)
  {
LABEL_67:
    result = (v12)(v10, v4);
    v15 = 6;
    v14 = 45;
    goto LABEL_68;
  }

  static SettingsNavigationHost.developer.getter();
  v57 = dispatch thunk of static Equatable.== infix(_:_:)();
  v12(v8, v4);
  if (v57)
  {
    result = (v12)(v10, v4);
    v15 = 6;
    v14 = 38;
  }

  else
  {
    static SettingsNavigationHost.carrier.getter();
    v58 = dispatch thunk of static Equatable.== infix(_:_:)();
    v12(v8, v4);
    if (v58)
    {
      result = (v12)(v10, v4);
      v15 = 6;
      v14 = 39;
    }

    else
    {
      static SettingsNavigationHost.internalClassic.getter();
      v59 = dispatch thunk of static Equatable.== infix(_:_:)();
      v12(v8, v4);
      if (v59)
      {
        result = (v12)(v10, v4);
        v15 = 6;
        v14 = 40;
      }

      else
      {
        static SettingsNavigationHost.internetAccounts.getter();
        v60 = dispatch thunk of static Equatable.== infix(_:_:)();
        v12(v8, v4);
        result = (v12)(v10, v4);
        if (v60)
        {
          v14 = 45;
        }

        else
        {
          v14 = 0;
        }

        if (v60)
        {
          v15 = 6;
        }

        else
        {
          v15 = -1;
        }
      }
    }
  }

LABEL_68:
  *a1 = v14;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = v15;
  return result;
}

unint64_t sub_1001039C0()
{
  result = qword_100161518;
  if (!qword_100161518)
  {
    type metadata accessor for SettingsNavigationHost();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100161518);
  }

  return result;
}

uint64_t sub_100103A28@<X0>(void (*a1)(unint64_t, uint64_t)@<X0>, void *a2@<X8>)
{
  v105 = type metadata accessor for SettingsURLDestination.Action(0);
  __chkstk_darwin(v105);
  v108 = (&v95 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = sub_10004DED0(&qword_1001614F8, &qword_1001189F0);
  v6 = __chkstk_darwin(v5 - 8);
  v104 = &v95 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v111 = &v95 - v8;
  v113 = type metadata accessor for SettingsNavigationHost();
  v114 = *(v113 - 8);
  v9 = __chkstk_darwin(v113);
  v107 = &v95 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v112 = &v95 - v11;
  v121 = type metadata accessor for URLQueryItem();
  v12 = *(v121 - 8);
  v13 = __chkstk_darwin(v121);
  v106 = (&v95 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = __chkstk_darwin(v13);
  v109 = &v95 - v16;
  v17 = __chkstk_darwin(v15);
  v110 = &v95 - v18;
  v19 = __chkstk_darwin(v17);
  v21 = (&v95 - v20);
  __chkstk_darwin(v19);
  v23 = &v95 - v22;
  v24 = sub_10004DED0(&qword_1001614F0, &unk_1001189B0);
  __chkstk_darwin(v24 - 8);
  v26 = &v95 - v25;
  v27 = type metadata accessor for URLComponents();
  v117 = *(v27 - 8);
  __chkstk_darwin(v27);
  v115 = &v95 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  URL.scheme.getter();
  if (!v29)
  {
    goto LABEL_24;
  }

  v116 = v27;
  v30 = String.lowercased()();

  if (v30._countAndFlagsBits == 0xD000000000000013 && 0x80000001001265E0 == v30._object)
  {

    v31 = v116;
  }

  else
  {
    v32 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v31 = v116;
    if ((v32 & 1) == 0)
    {
LABEL_24:
      v47 = sub_10004DED0(&qword_10015B298, &unk_100118820);
      return (*(*(v47 - 8) + 56))(a2, 1, 1, v47);
    }
  }

  URL.absoluteString.getter();
  URLComponents.init(string:)();

  v33 = v117;
  if ((*(v117 + 48))(v26, 1, v31) == 1)
  {
    sub_1000068B0(v26, &qword_1001614F0, &unk_1001189B0);
    goto LABEL_24;
  }

  v34 = v115;
  (*(v33 + 32))(v115, v26, v31);
  v35 = URLComponents.host.getter();
  if (!v36)
  {
    (*(v33 + 8))(v34, v31);
    goto LABEL_24;
  }

  v99 = v36;
  v100 = v35;
  v37 = URLComponents.queryItems.getter();
  if (v37)
  {
    v38 = v37;
  }

  else
  {
    v38 = _swiftEmptyArrayStorage;
  }

  v39 = *(v38 + 16);
  v103 = v12;
  v101 = a2;
  if (!v39)
  {
    v23 = 0;
    v40 = 0;
    goto LABEL_30;
  }

  v40 = 0;
  v119 = (v12 + 8);
  v41 = v121;
  a2 = v39;
  v120 = (v12 + 16);
  while (1)
  {
    v42 = *(v38 + 16);
    if (v40 >= v42)
    {
LABEL_99:
      __break(1u);
LABEL_100:
      __break(1u);
LABEL_101:
      __break(1u);
LABEL_102:
      __break(1u);
LABEL_103:
      __break(1u);
LABEL_104:
      __break(1u);
LABEL_105:
      __break(1u);
LABEL_106:
      __break(1u);
      goto LABEL_107;
    }

    v31 = v38;
    v102 = (*(v12 + 80) + 32) & ~*(v12 + 80);
    v118 = *(v12 + 9);
    v26 = *(v12 + 2);
    (v26)(v23, v38 + v102 + v118 * v40, v41);
    if (URLQueryItem.name.getter() == 1953460082 && v43 == 0xE400000000000000)
    {
      break;
    }

    v44 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v44)
    {
      goto LABEL_27;
    }

    if (URLQueryItem.name.getter() == 1752457584 && v45 == 0xE400000000000000)
    {
      break;
    }

    v12 = a1;
    v46 = _stringCompareWithSmolCheck(_:_:expecting:)();

    a1 = *v119;
    v41 = v121;
    (*v119)(v23, v121);
    if (v46)
    {
      goto LABEL_28;
    }

    ++v40;
    a1 = v12;
    v12 = v103;
    v38 = v31;
    if (a2 == v40)
    {
      v23 = *(v31 + 16);
      v40 = v23;
LABEL_30:
      v21 = v114;
      v31 = v116;
      goto LABEL_56;
    }
  }

LABEL_27:
  v12 = a1;
  a1 = *v119;
  v41 = v121;
  (*v119)(v23, v121);
LABEL_28:
  v23 = v40 + 1;
  v38 = v31;
  v42 = *(v31 + 16);
  if (v42 - 1 == v40)
  {
    a1 = v12;
    goto LABEL_30;
  }

  v98 = (v103 + 40);
  v31 = v102 + v118 * v23;
  while (2)
  {
    if (v23 >= v42)
    {
      __break(1u);
      goto LABEL_99;
    }

    a2 = v38;
    (v26)(v21, v38 + v31, v41);
    if (URLQueryItem.name.getter() == 1953460082 && v49 == 0xE400000000000000)
    {
LABEL_35:

      goto LABEL_37;
    }

    v50 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v50)
    {
LABEL_37:
      v41 = v121;
      a1(v21, v121);
      goto LABEL_38;
    }

    if (URLQueryItem.name.getter() == 1752457584 && v51 == 0xE400000000000000)
    {
      goto LABEL_35;
    }

    v38 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v41 = v121;
    a1(v21, v121);
    if (v38)
    {
LABEL_38:
      v38 = a2;
    }

    else
    {
      v42 = &v137;
      if (v23 == v40)
      {
        v38 = a2;
      }

      else
      {
        if (v40 < 0)
        {
          goto LABEL_103;
        }

        v42 = a2[2];
        v97 = v42;
        if (v40 >= v42)
        {
          goto LABEL_104;
        }

        v38 = a2;
        v96 = v40 * v118;
        v52 = a2 + v102 + v40 * v118;
        v53 = v121;
        a2 = v120;
        (v26)(v110, v52, v121);
        v42 = v97;
        if (v23 >= v97)
        {
          goto LABEL_105;
        }

        (v26)(v109, v38 + v31, v53);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v38 = sub_1000BA188(v38);
        }

        a2 = v38;
        v54 = v38 + v102 + v96;
        v41 = v121;
        v38 = v98;
        v97 = *v98;
        v97(v54, v109, v121);
        v42 = a2[2];
        if (v23 >= v42)
        {
          goto LABEL_106;
        }

        v97(a2 + v31, v110, v41);
        v38 = a2;
      }

      ++v40;
    }

    ++v23;
    v42 = *(v38 + 16);
    v31 += v118;
    if (v23 != v42)
    {
      continue;
    }

    break;
  }

  v21 = v114;
  v42 = &v136;
  v31 = v116;
  if (v23 < v40)
  {
    goto LABEL_100;
  }

  a1 = v12;
  if (v40 < 0)
  {
    goto LABEL_101;
  }

LABEL_56:
  v42 = v40 - v23;
  v26 = v40;
  if (__OFADD__(v23, v40 - v23))
  {
    goto LABEL_102;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v124 = v38;
  if (!isUniquelyReferenced_nonNull_native || v40 > *(v38 + 24) >> 1)
  {
    if (v23 <= v40)
    {
      v56 = v40;
    }

    else
    {
      v56 = v23;
    }

    v38 = sub_1000C4F50(isUniquelyReferenced_nonNull_native, v56, 1, v38);
    v124 = v38;
  }

  sub_1000BA974(v40, v23, 0);
  v133.i64[0] = v100;
  v133.i64[1] = v99;
  sub_100104C3C();
  v57 = v111;
  v23 = v113;
  dispatch thunk of RawRepresentable.init(rawValue:)();
  v58 = v21[3].i64[0];
  if (v58(v57, 1, v23) == 1)
  {
    (*(v117 + 8))(v115, v31);

    sub_1000068B0(v57, &qword_1001614F8, &qword_1001189F0);
    goto LABEL_90;
  }

  v120 = v38;
  (v21[2].i64[0])(v112, v57, v23);
  sub_10010293C(&v125);
  v59 = v128;
  if (v128 == 255)
  {
    static SettingsNavigationHost.defaultAppState.getter();
    dispatch thunk of RawRepresentable.rawValue.getter();
    dispatch thunk of RawRepresentable.rawValue.getter();
    v66 = a1;
    if (*&v133 == *&v129)
    {
      v67 = 1;
    }

    else
    {
      v67 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }

    v82 = v21->i64[1];
    v82(v107, v113);

    if ((v67 & 1) == 0)
    {
      v64 = v116;
      v65 = v117;
      v82(v112, v113);
      goto LABEL_89;
    }

    v83 = URLComponents.fragment.getter();
    if (v84)
    {
      v133.i64[0] = v83;
      v133.i64[1] = v84;
      v85 = v104;
      v86 = v113;
      dispatch thunk of RawRepresentable.init(rawValue:)();
      if (v58(v85, 1, v86) == 1)
      {
        sub_1000068B0(v85, &qword_1001614F8, &qword_1001189F0);
        a1 = v66;
        v21 = v108;
        v23 = v86;
      }

      else
      {
        sub_10010293C(&v133);
        v82(v85, v86);
        v93 = v135;
        if (v135 == 255)
        {
          a1 = v66;
          v21 = v108;
        }

        else
        {
          v94 = v134;
          v21 = v108;
          *v108 = v133;
          v21[1] = v94;
          v21[2].i8[0] = v93;
          a1 = v66;
        }

        v23 = v113;
      }
    }

    else
    {
      a1 = v66;
      v21 = v108;
      v23 = v113;
    }

LABEL_71:
    swift_storeEnumTagMultiPayload();
    v123 = 0;
    v68 = URLComponents.path.getter();
    v70 = v69;

    v71 = HIBYTE(v70) & 0xF;
    if ((v70 & 0x2000000000000000) == 0)
    {
      v71 = v68 & 0xFFFFFFFFFFFFLL;
    }

    if (v71)
    {
      v72 = URLComponents.path.getter();
      v74 = v73;
      URLComponents.path.getter();
      v75._countAndFlagsBits = 47;
      v75._object = 0xE100000000000000;
      v76 = String.hasPrefix(_:)(v75);

      sub_100104C94(v76, v72, v74);

      v77 = static String._fromSubstring(_:)();
      v79 = v78;

      v123._countAndFlagsBits = v77;
      v123._object = v79;
      v80 = URLComponents.fragment.getter();
      v38 = v101;
      v12 = v112;
      a2 = v106;
      v40 = v117;
      if (!v81)
      {
LABEL_84:
        object = v123._object;
LABEL_85:
        if (!object)
        {
          (v114->i64[1])(v12, v23);
          (*(v40 + 8))(v115, v116);
          v88 = v120;
          goto LABEL_92;
        }

        URLQueryItem.init(name:value:)();
        v26 = v120[2];
        v42 = v120[3];
        v31 = v26 + 1;
        if (v26 < v42 >> 1)
        {
LABEL_87:
          (v114->i64[1])(v12, v23);
          (*(v40 + 8))(v115, v116);
          v88 = v120;
          v120[2] = v31;
          (*(v103 + 4))(v88 + ((*(v103 + 80) + 32) & ~*(v103 + 80)) + *(v103 + 9) * v26, a2, v121);
LABEL_92:
          v90 = type metadata accessor for URL();
          (*(*(v90 - 8) + 16))(v38, a1, v90);
          v91 = type metadata accessor for SettingsURLDestination(0);
          sub_1000F8168(v21, v38 + *(v91 + 20));
          *(v38 + *(v91 + 24)) = v88;
          v92 = sub_10004DED0(&qword_10015B298, &unk_100118820);
          (*(*(v92 - 8) + 56))(v38, 0, 1, v92);
        }

LABEL_107:
        v120 = sub_1000C4F50((v42 > 1), v31, 1, v120);
        goto LABEL_87;
      }

      if (v79)
      {
        v122._countAndFlagsBits = 35;
        v122._object = 0xE100000000000000;
        String.append(_:)(*&v80);

        String.append(_:)(v122);

        goto LABEL_84;
      }
    }

    else
    {
      v80 = URLComponents.fragment.getter();
      v38 = v101;
      v12 = v112;
      a2 = v106;
      v40 = v117;
      if (!v81)
      {
        goto LABEL_84;
      }
    }

    v122._countAndFlagsBits = 35;
    v122._object = 0xE100000000000000;
    String.append(_:)(*&v80);

    object = v122._object;
    v123 = v122;
    goto LABEL_85;
  }

  v60 = v125;
  v61 = v126;
  v62 = v127;
  v129 = v125;
  v130 = v126;
  v131 = v127;
  v132 = v128;
  v133 = 2uLL;
  v134 = 0uLL;
  v135 = 6;
  v63 = sub_10002BB48(v129.i64, &v133);
  v21 = v108;
  if ((v63 & 1) == 0)
  {
    *v108 = v60;
    v21[1].i64[0] = v61;
    v21[1].i64[1] = v62;
    v21[2].i8[0] = v59;
    goto LABEL_71;
  }

  sub_1000068B0(&v125, &qword_10015E690, &qword_100115788);
  v64 = v116;
  v65 = v117;
  (v114->i64[1])(v112, v23);
LABEL_89:
  (*(v65 + 8))(v115, v64);

LABEL_90:
  v89 = sub_10004DED0(&qword_10015B298, &unk_100118820);
  return (*(*(v89 - 8) + 56))(v101, 1, 1, v89);
}

unint64_t sub_100104C3C()
{
  result = qword_100161520;
  if (!qword_100161520)
  {
    type metadata accessor for SettingsNavigationHost();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100161520);
  }

  return result;
}

uint64_t sub_100104C94(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a1 < 0)
  {
    __break(1u);
LABEL_14:
    __break(1u);
    return String.subscript.getter();
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
  v6 = String.index(_:offsetBy:limitedBy:)();
  if (v7)
  {
    v6 = v5;
  }

  if (4 * v3 < v6 >> 14)
  {
    goto LABEL_14;
  }

  return String.subscript.getter();
}

uint64_t sub_100104D44(uint64_t a1)
{
  v1 = URL.scheme.getter();
  if (v2)
  {
    if (v1 == 0xD000000000000013 && v2 == 0x80000001001265E0)
    {
      v3 = 1;
    }

    else
    {
      v3 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

  else
  {
    v3 = 0;
  }

  return v3 & 1;
}

char *sub_100104DCC()
{
  v1 = [v0 dmc_visibleSecondaryRemoteManagementAccounts];
  sub_100018308();
  v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v2 >> 62)
  {
    goto LABEL_14;
  }

  for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v4 = 0;
    while (1)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_13;
        }

        v5 = *(v2 + 8 * v4 + 32);
      }

      v6 = v5;
      v7 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      v8 = [v5 identifier];
      if (v8)
      {
        v9 = v8;
        static String._conditionallyBridgeFromObjectiveC(_:result:)();
      }

      ++v4;
      if (v7 == i)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_13:
    __break(1u);
LABEL_14:
    ;
  }

LABEL_15:

  return _swiftEmptyArrayStorage;
}

uint64_t sub_100104FAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_10010501C(uint64_t a1, uint64_t a2)
{
  v2 = static Array._allocateUninitialized(_:)();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  swift_getTupleTypeMetadata2();
  v4 = static Array._allocateUninitialized(_:)();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  sub_1001077D4(v4, AssociatedTypeWitness, &type metadata for Int, AssociatedConformanceWitness);

  return v2;
}

uint64_t sub_100105114(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = *(a3 + 16);
  v8 = *(v7 - 8);
  __chkstk_darwin(a1);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v30 = *(AssociatedTypeWitness - 8);
  v12 = __chkstk_darwin(AssociatedTypeWitness);
  v28 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v12);
  v16 = &v27 - v15;
  __chkstk_darwin(v14);
  v18 = &v27 - v17;
  v31 = v4;
  v32 = a2;
  Array.subscript.getter();
  dispatch thunk of Identifiable.id.getter();
  (*(v8 + 8))(v10, v7);
  v29 = a1;
  dispatch thunk of Identifiable.id.getter();
  swift_getAssociatedConformanceWitness();
  if ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0)
  {
    v27 = *(v30 + 16);
    v19 = v28;
    v27(v28, v18, AssociatedTypeWitness);
    v33 = 0;
    v34 = 1;
    type metadata accessor for Dictionary();
    Dictionary.subscript.setter();
    v27(v19, v16, AssociatedTypeWitness);
    v33 = v32;
    v34 = 0;
    Dictionary.subscript.setter();
  }

  type metadata accessor for Array();
  v20 = v31;
  Array._makeMutableAndUnique()();
  v21 = *v20;
  v22 = v32;
  sub_100107780(v32, v21, v7);
  isClassOrObjCExistentialType = _swift_isClassOrObjCExistentialType();
  v24 = *(v30 + 8);
  v24(v16, AssociatedTypeWitness);
  v24(v18, AssociatedTypeWitness);
  v25 = v21 & 0xFFFFFFFFFFFFFF8;
  if ((isClassOrObjCExistentialType & 1) == 0)
  {
    v25 = v21;
  }

  return (*(v8 + 40))(v25 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v22, v29, v7);
}

uint64_t sub_100105494(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v55 = a3;
  v51 = *(a5 - 8);
  __chkstk_darwin(a1);
  v52 = v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v11 + 16);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v13 = type metadata accessor for Optional();
  __chkstk_darwin(v13 - 8);
  v64 = (v45 - v14);
  v15 = sub_100052374(&qword_1001615E8, &qword_100119008);
  v16 = sub_100107D08(&qword_1001615F0, &qword_1001615E8, &qword_100119008, &protocol conformance descriptor for <> PartialRangeFrom<A>);
  v54 = a6;
  v17 = *(a6 + 8);
  v66 = v15;
  v67 = a5;
  v68 = v16;
  v69 = v17;
  v46 = type metadata accessor for Zip2Sequence();
  __chkstk_darwin(v46);
  v45[2] = v45 - v18;
  v49 = v15;
  v66 = v15;
  v67 = a5;
  v56 = a5;
  v48 = v16;
  v68 = v16;
  v69 = v17;
  v47 = v17;
  v61 = type metadata accessor for Zip2Sequence.Iterator();
  v50 = *(v61 - 8);
  __chkstk_darwin(v61);
  v60 = v45 - v19;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v21 = __chkstk_darwin(AssociatedTypeWitness);
  v62 = *(v12 - 8);
  __chkstk_darwin(v21);
  v23 = v45 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = a1;
  if (a1 != a2)
  {
    result = v57;
    if (a2 < v57)
    {
LABEL_21:
      __break(1u);
      goto LABEL_22;
    }

    if (v57 >= a2)
    {
LABEL_22:
      __break(1u);
      goto LABEL_23;
    }

    v58 = *v63;
    v25 = (v62 + 8);
    do
    {
      v26 = a2;
      v27 = result + 1;
      Array.subscript.getter();
      dispatch thunk of Identifiable.id.getter();
      (*v25)(v23, v12);
      v66 = 0;
      LOBYTE(v67) = 1;
      swift_getAssociatedConformanceWitness();
      type metadata accessor for Dictionary();
      Dictionary.subscript.setter();
      result = v27;
      v28 = v26 == v27;
      a2 = v26;
    }

    while (!v28);
  }

  v29 = dispatch thunk of Collection.count.getter();
  v30 = v57;
  v66 = v57;
  v67 = a2;
  v31 = sub_10004DED0(&qword_1001615C8, &qword_100118CC8);
  sub_100107D08(&qword_1001615C0, &qword_1001615C8, &qword_100118CC8, &protocol conformance descriptor for <> Range<A>);
  result = Collection.count.getter();
  v58 = (v29 - result);
  if (__OFSUB__(v29, result))
  {
    goto LABEL_19;
  }

  v66 = v30;
  v67 = a2;
  v53 = a2;
  v32 = sub_100107000();
  v45[1] = v31;
  Range<>.endIndex.getter();
  v33 = v65;
  result = Array.endIndex.getter();
  if (result < v33)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v34 = result;
  v45[0] = v32;
  if (v33 != result)
  {
    if (v33 >= result)
    {
LABEL_23:
      __break(1u);
      return result;
    }

    v35 = (v62 + 8);
    while (1)
    {
      Array.subscript.getter();
      dispatch thunk of Identifiable.id.getter();
      result = (*v35)(v23, v12);
      v36 = v58 + v33;
      if (__OFADD__(v33, v58))
      {
        break;
      }

      ++v33;
      v66 = v36;
      LOBYTE(v67) = 0;
      swift_getAssociatedConformanceWitness();
      type metadata accessor for Dictionary();
      Dictionary.subscript.setter();
      if (v34 == v33)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

LABEL_14:
  v66 = v57;
  v67 = v53;
  Range<>.startIndex.getter();
  zip<A, B>(_:_:)();
  Zip2Sequence.makeIterator()();
  v37 = v64;
  Zip2Sequence.Iterator.next()();
  v38 = TupleTypeMetadata2;
  v39 = *(*(TupleTypeMetadata2 - 8) + 48);
  v40 = v39(v37, 1, TupleTypeMetadata2);
  v41 = v62;
  if (v40 != 1)
  {
    v58 = *(v62 + 32);
    v62 += 32;
    v42 = (v41 + 8);
    do
    {
      v43 = *v64;
      v58(v23, v64 + *(v38 + 48), v12);
      dispatch thunk of Identifiable.id.getter();
      v66 = v43;
      v44 = v64;
      LOBYTE(v67) = 0;
      swift_getAssociatedConformanceWitness();
      type metadata accessor for Dictionary();
      Dictionary.subscript.setter();
      (*v42)(v23, v12);
      Zip2Sequence.Iterator.next()();
      v38 = TupleTypeMetadata2;
    }

    while (v39(v44, 1, TupleTypeMetadata2) != 1);
  }

  (*(v50 + 8))(v60, v61);
  (*(v51 + 16))(v52, v55, v56);
  type metadata accessor for Array();
  return Array.replaceSubrange<A>(_:with:)();
}

void (*sub_100105CCC(void *a1, uint64_t *a2, uint64_t a3))(uint64_t **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x38uLL);
  }

  v8 = v7;
  *a1 = v7;
  *v7 = v3;
  v7[1] = a3;
  v9 = *(a3 + 16);
  v7[2] = v9;
  v10 = *(v9 - 8);
  v7[3] = v10;
  v11 = *(v10 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v7[4] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v7[4] = malloc(*(v10 + 64));
    v12 = malloc(v11);
  }

  v14 = v12;
  v15 = *a2;
  v8[5] = v14;
  v8[6] = v15;
  sub_10010510C(v15, *v3, v13, v9);
  return sub_100105DF0;
}

void sub_100105DF0(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[5];
  v4 = (*a1)[6];
  v5 = (*a1)[4];
  if (a2)
  {
    v6 = v2[2];
    v7 = v2[3];
    v8 = v2[1];
    (*(v7 + 16))((*a1)[4], v3, v6);
    sub_100105114(v5, v4, v8);
    (*(v7 + 8))(v3, v6);
  }

  else
  {
    sub_100105114((*a1)[5], v4, v2[1]);
  }

  free(v3);
  free(v5);

  free(v2);
}

uint64_t sub_100105EBC(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4)
{
  v5 = *a2;
  sub_100107C70(a1, &v5, a3, a4);
}

uint64_t (*sub_100105F04(void *a1, uint64_t a2, uint64_t a3, uint64_t a4))()
{
  if (&_swift_coroFrameAlloc)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0x28uLL);
  }

  *a1 = v8;
  v8[4] = sub_100105FDC(v8, a2, a3, a4);
  return sub_100105F94;
}

void sub_100105F94(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

void (*sub_100105FDC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4))(uint64_t **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v9 = malloc(0x50uLL);
  }

  v10 = v9;
  *a1 = v9;
  v9[1] = a4;
  v9[2] = v4;
  *v9 = a3;
  v11 = type metadata accessor for Slice();
  v10[3] = v11;
  v12 = *(v11 - 8);
  v10[4] = v12;
  v13 = *(v12 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v10[5] = swift_coroFrameAlloc();
    v14 = swift_coroFrameAlloc();
  }

  else
  {
    v10[5] = malloc(*(v12 + 64));
    v14 = malloc(v13);
  }

  v15 = v14;
  v10[6] = v14;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v16 = type metadata accessor for Range();
  v10[7] = v16;
  v17 = *(v16 - 8);
  v18 = v17;
  v10[8] = v17;
  if (&_swift_coroFrameAlloc)
  {
    v19 = swift_coroFrameAlloc();
  }

  else
  {
    v19 = malloc(*(v17 + 64));
  }

  v10[9] = v19;
  (*(v18 + 16))();
  sub_1001068E4(a2, a3, a4, v15);
  return sub_100106200;
}

void sub_100106200(uint64_t **a1, char a2)
{
  v2 = *a1;
  v4 = (*a1)[4];
  v3 = (*a1)[5];
  v6 = (*a1)[8];
  v5 = (*a1)[9];
  v7 = (*a1)[6];
  v10 = (*a1)[7];
  v8 = (*a1)[3];
  if (a2)
  {
    (*(v4 + 16))(v3, v7, v2[3]);
    swift_getWitnessTable();
    _writeBackMutableSlice<A, B>(_:bounds:slice:)();
    v9 = *(v4 + 8);
    v9(v3, v8);
    (*(v6 + 8))(v5, v10);
    v9(v7, v8);
  }

  else
  {
    swift_getWitnessTable();
    _writeBackMutableSlice<A, B>(_:bounds:slice:)();
    (*(v6 + 8))(v5, v10);
    (*(v4 + 8))(v7, v8);
  }

  free(v5);
  free(v7);
  free(v3);

  free(v2);
}

uint64_t sub_100106474@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_10010501C(*(a1 + 16), *(a1 + 24));
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_1001064A4(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_100105494(*a1, a1[1], a2, a5, a3, a4);
  v7 = *(*(a3 - 8) + 8);

  return v7(a2, a3);
}

void *sub_100106624@<X0>(void *result@<X0>, void *a2@<X8>)
{
  if (__OFSUB__(*result, 1))
  {
    __break(1u);
  }

  else
  {
    *a2 = *result - 1;
  }

  return result;
}

void *sub_10010663C(void *result)
{
  if (__OFSUB__(*result, 1))
  {
    __break(1u);
  }

  else
  {
    --*result;
  }

  return result;
}

uint64_t sub_100106654@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_100105104(*v3, a2, *(a1 + 16));
  *a3 = result;
  return result;
}

uint64_t (*sub_100106688(void *a1, uint64_t *a2, uint64_t a3))()
{
  if (&_swift_coroFrameAlloc)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x28uLL);
  }

  *a1 = v7;
  v7[4] = sub_10010675C(v7, *a2, *v3, v3[1], *(a3 + 16));
  return sub_100106714;
}

void sub_100106714(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

uint64_t (*sub_10010675C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5))()
{
  v6 = *(a5 - 8);
  *a1 = a5;
  a1[1] = v6;
  if (&_swift_coroFrameAlloc)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(*(v6 + 64));
  }

  a1[2] = v7;
  Array.subscript.getter();
  return sub_100106830;
}

void sub_100106830(void *a1)
{
  v1 = a1[2];
  (*(a1[1] + 8))(v1, *a1);

  free(v1);
}

uint64_t sub_10010687C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  WitnessTable = swift_getWitnessTable();

  return sub_1001068E4(a1, a2, WitnessTable, a3);
}

uint64_t sub_1001068E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v49 = a1;
  v47 = a4;
  v6 = *(a3 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v43 = *(TupleTypeMetadata2 - 8);
  v8 = __chkstk_darwin(TupleTypeMetadata2);
  v39 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v12 = &v36 - v11;
  v41 = *(AssociatedTypeWitness - 8);
  v13 = __chkstk_darwin(v10);
  v15 = &v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v36 - v16;
  swift_getAssociatedConformanceWitness();
  v44 = type metadata accessor for Range();
  v42 = *(v44 - 8);
  __chkstk_darwin(v44);
  v19 = &v36 - v18;
  dispatch thunk of Collection.startIndex.getter();
  v48 = v4;
  v45 = v6;
  v46 = a2;
  dispatch thunk of Collection.endIndex.getter();
  result = dispatch thunk of static Comparable.<= infix(_:_:)();
  if (result)
  {
    v21 = v41;
    v22 = *(v41 + 32);
    v22(v12, v17, AssociatedTypeWitness);
    v23 = TupleTypeMetadata2;
    v22(&v12[*(TupleTypeMetadata2 + 48)], v15, AssociatedTypeWitness);
    v24 = v22;
    v25 = v43;
    v26 = v39;
    (*(v43 + 16))(v39, v12, v23);
    v37 = *(v23 + 48);
    v24(v19, v26, AssociatedTypeWitness);
    v38 = v24;
    v27 = *(v21 + 8);
    v27(&v26[v37], AssociatedTypeWitness);
    (*(v25 + 32))(v26, v12, v23);
    v28 = v44;
    v24(&v19[*(v44 + 36)], &v26[*(v23 + 48)], AssociatedTypeWitness);
    v27(v26, AssociatedTypeWitness);
    v29 = v48;
    v30 = v49;
    v31 = v46;
    dispatch thunk of Collection._failEarlyRangeCheck(_:bounds:)();
    v32 = v42;
    (*(v42 + 8))(v19, v28);
    v33 = type metadata accessor for Slice();
    v34 = v47;
    (*(*(v31 - 8) + 16))(&v47[*(v33 + 40)], v29, v31);
    (*(v32 + 16))(v19, v30, v28);
    v35 = v38;
    v38(v34, v19, AssociatedTypeWitness);
    return v35(&v34[*(v33 + 36)], &v19[*(v28 + 36)], AssociatedTypeWitness);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100106D74(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return RandomAccessCollection<>.indices.getter(a1, WitnessTable, &protocol witness table for Int);
}

void *sub_100106E6C@<X0>(void *result@<X0>, void *a2@<X8>)
{
  if (__OFADD__(*result, 1))
  {
    __break(1u);
  }

  else
  {
    *a2 = *result + 1;
  }

  return result;
}

void *sub_100106E84(void *result)
{
  if (__OFADD__(*result, 1))
  {
    __break(1u);
  }

  else
  {
    ++*result;
  }

  return result;
}

__n128 sub_100106E9C@<Q0>(__n128 *a1@<X8>)
{
  result = *v1;
  *a1 = *v1;
  a1[1].n128_u64[0] = 0;
  return result;
}

uint64_t sub_100106EAC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return Collection.underestimatedCount.getter(a1, WitnessTable);
}

uint64_t sub_100106F08(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();
  v4 = j___ss32_copyCollectionToContiguousArrayys0dE0Vy7ElementQzGxSlRzlF(v1, a1, WitnessTable);

  return v4;
}

unint64_t sub_100107000()
{
  result = qword_1001615D0;
  if (!qword_1001615D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001615D0);
  }

  return result;
}

uint64_t sub_1001072A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  Array<A>.hash(into:)();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();

  return Dictionary<>.hash(into:)(a1, a3, AssociatedTypeWitness, &type metadata for Int, AssociatedConformanceWitness, &protocol witness table for Int);
}

Swift::Int sub_100107360(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  Hasher.init(_seed:)();
  sub_1001072A4(v11, a1, a2, a3, a4, a5);
  return Hasher._finalize()();
}

uint64_t sub_1001073D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if ((static Array<A>.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();

  return static Dictionary<>.== infix(_:_:)(a2, a4, AssociatedTypeWitness, &type metadata for Int, AssociatedConformanceWitness, &protocol witness table for Int);
}

Swift::Int sub_1001074DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 - 8);
  Hasher.init(_seed:)();
  sub_1001072A4(v7, *v3, v3[1], *(a2 + 16), v5, *(a2 + 24));
  return Hasher._finalize()();
}

unint64_t sub_10010759C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = dispatch thunk of Hashable._rawHashValue(seed:)();

  return sub_1001075F8(a1, v6, a2, a3);
}

unint64_t sub_1001075F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v21[1] = a1;
  v21[2] = a4;
  __chkstk_darwin(a1);
  v8 = v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = v4;
  v9 = -1 << *(v4 + 32);
  v11 = v10 & ~v9;
  v21[0] = v4 + 64;
  if ((*(v4 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v9;
    v15 = *(v6 + 16);
    v13 = v6 + 16;
    v14 = v15;
    v16 = *(v13 + 56);
    v17 = (v13 - 8);
    do
    {
      v18 = v13;
      v14(v8, *(v22 + 48) + v16 * v11, a3);
      v19 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*v17)(v8, a3);
      if (v19)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
      v13 = v18;
    }

    while (((*(v21[0] + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  return v11;
}

uint64_t sub_100107780(unint64_t a1, uint64_t a2, uint64_t a3)
{
  result = _swift_isClassOrObjCExistentialType();
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_7:
    __break(1u);
    return result;
  }

  v6 = a2 & 0xFFFFFFFFFFFFFF8;
  if ((result & 1) == 0)
  {
    v6 = a2;
  }

  if (*(v6 + 16) <= a1)
  {
    goto LABEL_7;
  }

  return result;
}

unint64_t sub_1001077D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v9 = *(TupleTypeMetadata2 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(TupleTypeMetadata2);
  v12 = v23 - v11;
  if (Array.count.getter())
  {
    type metadata accessor for _DictionaryStorage();
    v13 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v13 = &_swiftEmptyDictionarySingleton;
  }

  result = Array._getCount()();
  if (result)
  {
    if (result >= 1)
    {
      v23[0] = v10;
      v27 = a4;
      v15 = 0;
      v16 = *(TupleTypeMetadata2 + 48);
      v25 = a3;
      v26 = (v9 + 16);
      v23[2] = a2 - 8;
      v24 = v16;
      v23[1] = a3 - 8;
      while (1)
      {
        v17 = result;
        if (Array._hoistableIsNativeTypeChecked()())
        {
          (*(v9 + 16))(v12, a1 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v15, TupleTypeMetadata2);
        }

        else
        {
          result = _ArrayBuffer._getElementSlowPath(_:)();
          if (v23[0] != 8)
          {
            goto LABEL_19;
          }

          v28 = result;
          (*v26)(v12, &v28, TupleTypeMetadata2);
          swift_unknownObjectRelease();
        }

        result = sub_10010759C(v12, a2, v27);
        if (v18)
        {
          break;
        }

        v19 = result;
        *(v13 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
        (*(*(a2 - 8) + 32))(v13[6] + *(*(a2 - 8) + 72) * result, v12, a2);
        result = (*(*(v25 - 8) + 32))(v13[7] + *(*(v25 - 8) + 72) * v19, &v12[v24]);
        v20 = v13[2];
        v21 = __OFADD__(v20, 1);
        v22 = v20 + 1;
        if (v21)
        {
          goto LABEL_17;
        }

        ++v15;
        v13[2] = v22;
        result = v17;
        if (v17 == v15)
        {
          goto LABEL_15;
        }
      }

      __break(1u);
LABEL_17:
      __break(1u);
    }

    __break(1u);
LABEL_19:
    __break(1u);
  }

  else
  {
LABEL_15:

    return v13;
  }

  return result;
}

uint64_t sub_100107AC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  result = dispatch thunk of static Comparable.<= infix(_:_:)();
  if ((result & 1) == 0)
  {
    __break(1u);
    goto LABEL_5;
  }

  type metadata accessor for Range();
  result = dispatch thunk of static Comparable.<= infix(_:_:)();
  if ((result & 1) == 0)
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

uint64_t sub_100107B8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t), uint64_t (*a6)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  result = dispatch thunk of static Comparable.<= infix(_:_:)();
  if ((result & 1) == 0)
  {
    __break(1u);
    goto LABEL_5;
  }

  v13 = a5(0, AssociatedTypeWitness, AssociatedConformanceWitness);
  result = a6(a1, a2 + *(v13 + 36), AssociatedTypeWitness, AssociatedConformanceWitness);
  if ((result & 1) == 0)
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

uint64_t sub_100107C70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Slice();
  swift_getWitnessTable();

  return _writeBackMutableSlice<A, B>(_:bounds:slice:)();
}

uint64_t sub_100107D08(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_100052374(a2, a3);
    sub_100107000();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100107D90(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 - 8);
  v5 = __chkstk_darwin(a1);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v5);
  v10 = &v25 - v9;
  v32 = -1;
  v27 = v11;
  v28 = v12;
  v29 = v8;
  v30 = &v32;
  result = NavigationPath.mutateWithCollectionProxy(transform:)();
  if (v32 == -1)
  {
    if (qword_10015AAA0 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    sub_10000659C(v14, qword_100169658);
    v15 = *(v4 + 16);
    v15(v10, a1, a2);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v31 = v26;
      *v18 = 141558275;
      *(v18 + 4) = 1752392040;
      *(v18 + 12) = 2081;
      v15(v7, v10, a2);
      v19 = String.init<A>(describing:)();
      v21 = v20;
      (*(v4 + 8))(v10, a2);
      v22 = sub_100025CF0(v19, v21, &v31);

      *(v18 + 14) = v22;
      _os_log_impl(&_mh_execute_header, v16, v17, "Could not find value %{private,mask.hash}s in navigation path.", v18, 0x16u);
      sub_10000665C(v26);
    }

    else
    {

      (*(v4 + 8))(v10, a2);
    }

    v23 = type metadata accessor for SettingsNavigationProxy.SettingsNavigationProxyError();
    sub_100108788(&qword_1001615F8, &type metadata accessor for SettingsNavigationProxy.SettingsNavigationProxyError, &protocol conformance descriptor for SettingsNavigationProxy.SettingsNavigationProxyError);
    swift_allocError();
    (*(*(v23 - 8) + 104))(v24, enum case for SettingsNavigationProxy.SettingsNavigationProxyError.valueNotFound(_:), v23);
    return swift_willThrow();
  }

  return result;
}

Swift::Int sub_1001080EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v46 = a5;
  v39[0] = a3;
  v45 = a2;
  v44 = type metadata accessor for Optional();
  *&v48 = *(v44 - 8);
  v7 = __chkstk_darwin(v44);
  v9 = v39 - v8;
  v10 = *(a4 - 8);
  __chkstk_darwin(v7);
  v43 = v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for NavigationPath.CollectionProxy();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_10004DED0(&qword_10015EEE8, &qword_1001160B8);
  __chkstk_darwin(v16 - 8);
  v18 = v39 - v17;
  v19 = sub_10004DED0(&qword_10015EEF0, &qword_1001160C0);
  v20 = v19 - 8;
  __chkstk_darwin(v19);
  v22 = v39 - v21;
  v23 = *(v13 + 16);
  v39[1] = a1;
  v23(v18, a1, v12);
  (*(v13 + 32))(v15, v18, v12);
  sub_100108788(&qword_10015EEF8, &type metadata accessor for NavigationPath.CollectionProxy, &protocol conformance descriptor for NavigationPath.CollectionProxy);
  dispatch thunk of Sequence.makeIterator()();
  v47 = *(v20 + 44);
  *&v22[v47] = 0;
  v24 = *(sub_10004DED0(&qword_10015EF00, &qword_1001160C8) + 36);
  sub_100108788(&qword_10015EF08, &type metadata accessor for NavigationPath.CollectionProxy, &protocol conformance descriptor for NavigationPath.CollectionProxy);
  v25 = 0;
  v26 = (v10 + 56);
  v42 = (v48 + 8);
  v41 = (v10 + 32);
  v40 = (v10 + 8);
  while (1)
  {
    dispatch thunk of Collection.endIndex.getter();
    if (*&v22[v24] == *&v49[0])
    {
      v27 = 0uLL;
      v28 = 0uLL;
      v29 = 0uLL;
    }

    else
    {
      v30 = dispatch thunk of Collection.subscript.read();
      sub_10000B270(v31, v50);
      v30(v49, 0);
      dispatch thunk of Collection.formIndex(after:)();
      *&v49[0] = v25;
      result = sub_100016224();
      if (__OFADD__(v25++, 1))
      {
        __break(1u);
        goto LABEL_17;
      }

      *&v22[v47] = v25;
      v27 = v49[0];
      v28 = v49[1];
      v29 = v49[2];
    }

    v51 = v27;
    v52 = v28;
    v53 = v29;
    if (!v29)
    {
      break;
    }

    v48 = v27;
    sub_100016224();
    sub_10004DED0(&qword_10015EF10, &qword_1001160D0);
    v34 = swift_dynamicCast();
    v35 = *v26;
    if (v34)
    {
      v35(v9, 0, 1, a4);
      v36 = v43;
      (*v41)(v43, v9, a4);
      v37 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*v40)(v36, a4);
      if (v37)
      {
        sub_100108720(v22);
        result = v48;
        *v39[0] = v48;
        goto LABEL_12;
      }
    }

    else
    {
      v35(v9, 1, 1, a4);
      (*v42)(v9, v44);
    }
  }

  sub_100108720(v22);
  result = *v39[0];
LABEL_12:
  if (result == -1)
  {
    return result;
  }

  v38 = NavigationPath.CollectionProxy.index(after:)(result);
  result = NavigationPath.CollectionProxy.endIndex.getter();
  if (result >= v38)
  {
    *&v51 = v38;
    *(&v51 + 1) = result;
    sub_100108788(&qword_100161600, &type metadata accessor for NavigationPath.CollectionProxy, &protocol conformance descriptor for NavigationPath.CollectionProxy);
    sub_10004DED0(&qword_100161608, &qword_100119010);
    sub_1001087D0();
    return dispatch thunk of RangeReplaceableCollection.replaceSubrange<A>(_:with:)();
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_100108720(uint64_t a1)
{
  v2 = sub_10004DED0(&qword_10015EEF0, &qword_1001160C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100108788(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1001087D0()
{
  result = qword_100161610;
  if (!qword_100161610)
  {
    sub_100052374(&qword_100161608, &qword_100119010);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100161610);
  }

  return result;
}

uint64_t sub_100108834()
{
  v0 = sub_10004DED0(&unk_10015C570, &qword_100112440);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v5 - v2;
  sub_10004DED0(&qword_100161618, &unk_100119018);
  sub_10004DED0(&unk_10015FAA0, qword_100112870);
  AsyncStream.Continuation.yield(_:)();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_10010893C()
{
  sub_10004DED0(&qword_100161618, &unk_100119018);

  return sub_100108834();
}

uint64_t sub_1001089B8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

unint64_t sub_100108A0C()
{
  result = qword_100161620;
  if (!qword_100161620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100161620);
  }

  return result;
}

uint64_t sub_100108A60(uint64_t a1)
{
  v2 = sub_10004DED0(&qword_100161618, &unk_100119018);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_100108AC8(int a1, int token, uint64_t a3, uint64_t a4)
{
  v4 = notify_cancel(token);
  if (v4)
  {
    v5 = v4;
    if (qword_10015AA80 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_10000659C(v6, qword_1001695F8);

    oslog = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(oslog, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v14 = v9;
      *v8 = 136446466;

      v10 = String.init<A>(reflecting:)();
      v12 = sub_100025CF0(v10, v11, &v14);

      *(v8 + 4) = v12;
      *(v8 + 12) = 1026;
      *(v8 + 14) = v5;
      _os_log_impl(&_mh_execute_header, oslog, v7, "Failed to cancel stream for %{public}s, result %{public}u", v8, 0x12u);
      sub_10000665C(v9);
    }

    else
    {
    }
  }
}

unint64_t sub_100108CB0()
{
  result = qword_100161628;
  if (!qword_100161628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100161628);
  }

  return result;
}

void sub_100108D04()
{
  v0 = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, 1uLL, 1);
  v1 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v1[2])
  {
    v3 = v1[4];
    v2 = v1[5];

    qword_100169898 = v3;
    unk_1001698A0 = v2;
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_100108D84()
{
  v0 = type metadata accessor for URL();
  sub_100006538(v0, qword_1001698A8);
  sub_10000659C(v0, qword_1001698A8);
  if (qword_10015AB98 != -1)
  {
    swift_once();
  }

  String.init<A>(_:)();
  String.append<A>(contentsOf:)();
  URL.init(fileURLWithPath:)();
}

uint64_t sub_100108E94()
{
  if (qword_10015AB10 != -1)
  {
    swift_once();
  }

  v1 = qword_100169798;
  v2 = String._bridgeToObjectiveC()();
  [v1 setBool:0 forKey:v2];

  return swift_deallocClassInstance();
}

void sub_100108F60()
{
  v1 = v0;
  v2 = *(v0 + 16);
  if (qword_10015AB98 != -1)
  {
    swift_once();
  }

  String.init<A>(_:)();
  String.append<A>(contentsOf:)();
  v3 = String._bridgeToObjectiveC()();

  v4 = [v2 fileExistsAtPath:v3];

  if (v4)
  {
    if (qword_10015ABA0 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for URL();
    sub_10000659C(v5, qword_1001698A8);
    v6 = objc_allocWithZone(NSMutableArray);
    URL._bridgeToObjectiveC()(v7);
    v9 = v8;
    v10 = [v6 initWithContentsOfURL:v8];

    v11 = v10;
    if (!v10)
    {
      sub_100008294(0, &qword_10015EA60, NSMutableArray_ptr);
      v11 = NSArray.init(arrayLiteral:)();
    }

    v12 = *(v1 + 32);
    *(v1 + 32) = v11;
    v13 = v11;

    sub_10004DED0(&qword_100161738, &unk_1001191B0);
    static Array._conditionallyBridgeFromObjectiveC(_:result:)();
  }

  else
  {
    sub_100008294(0, &qword_10015EA60, NSMutableArray_ptr);
    v14 = NSArray.init(arrayLiteral:)();

    String.init<A>(_:)();
    String.append<A>(contentsOf:)();
    v15 = String._bridgeToObjectiveC()();

    [v14 writeToFile:v15 atomically:1];
  }
}

uint64_t sub_1001092E0()
{
  sub_10004DED0(&qword_100161728, &qword_1001191A8);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1001103E0;
  *(v1 + 56) = &type metadata for String;
  *(v1 + 32) = 0x656C746974;
  *(v1 + 40) = 0xE500000000000000;
  *(v1 + 64) = sub_10002A770(v1, v2, v3);
  *(v1 + 72) = v4;
  *(v1 + 120) = &type metadata for String;
  *(v1 + 88) = &type metadata for String;
  *(v1 + 96) = 1852793705;
  *(v1 + 104) = 0xE400000000000000;
  v5 = sub_100029F88();
  if (v7 != 2 && v7 != 1)
  {
    sub_10002A748(v5, v6, v7);
    v5 = 0;
    v6 = 0xE000000000000000;
  }

  *(v1 + 128) = v5;
  *(v1 + 136) = v6;
  *(v1 + 184) = &type metadata for String;
  *(v1 + 152) = &type metadata for String;
  *(v1 + 160) = 0x6B6E694C70656564;
  *(v1 + 168) = 0xE800000000000000;
  v8 = sub_10005560C();
  *(v1 + 216) = &type metadata for String;
  *(v1 + 192) = v8;
  *(v1 + 200) = v9;
  sub_100008294(0, &qword_100161730, NSMutableDictionary_ptr);
  v10 = NSDictionary.init(dictionaryLiteral:)();
  v11 = [*(v0 + 32) addObject:v10];
  v14 = sub_10002A770(v11, v12, v13);
  v16 = v15;
  swift_beginAccess();
  sub_10001EFFC(&v18, v14, v16);
  swift_endAccess();
}

Swift::String __swiftcall NSLocalizedString(_:tableName:bundle:value:comment:)(Swift::String _, Swift::String_optional tableName, NSBundle bundle, Swift::String value, Swift::String comment)
{
  v5 = NSLocalizedString(_:tableName:bundle:value:comment:)(_._countAndFlagsBits, _._object, tableName.value._countAndFlagsBits, tableName.value._object, bundle.super.isa, value._countAndFlagsBits, value._object, comment._countAndFlagsBits);
  result._object = v6;
  result._countAndFlagsBits = v5;
  return result;
}

Swift::String_optional __swiftcall URL.host(percentEncoded:)(Swift::Bool percentEncoded)
{
  v1 = URL.host(percentEncoded:)(percentEncoded);
  result.value._object = v2;
  result.value._countAndFlagsBits = v1;
  return result;
}

Swift::String __swiftcall URL.path(percentEncoded:)(Swift::Bool percentEncoded)
{
  v1 = URL.path(percentEncoded:)(percentEncoded);
  result._object = v2;
  result._countAndFlagsBits = v1;
  return result;
}

uint64_t NavigationPath.append<A>(_:)()
{
  return NavigationPath.append<A>(_:)();
}

{
  return NavigationPath.append<A>(_:)();
}

uint64_t View.buttonStyle<A>(_:)()
{
  return View.buttonStyle<A>(_:)();
}

{
  return View.buttonStyle<A>(_:)();
}

Swift::String __swiftcall String.lowercased()()
{
  v0 = String.lowercased()();
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

Swift::String __swiftcall BinaryInteger.formatted()()
{
  v0 = BinaryInteger.formatted()();
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}