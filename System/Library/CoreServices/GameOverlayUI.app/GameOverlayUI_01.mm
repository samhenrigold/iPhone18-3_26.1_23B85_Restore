uint64_t sub_100022704(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = type metadata accessor for GameDashboardLaunchContext.LaunchTarget();
  v5[4] = v6;
  v5[5] = *(v6 - 8);
  v5[6] = swift_task_alloc();
  type metadata accessor for MainActor();
  v5[7] = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1000227F8, v8, v7);
}

uint64_t sub_1000227F8()
{
  v1 = v0[6];
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[3];

  type metadata accessor for AccessPointAnimationView(0);
  (*(v3 + 104))(v1, enum case for GameDashboardLaunchContext.LaunchTarget.none(_:), v2);
  dispatch thunk of GameDashboardLaunchContext.launchTarget.setter();
  [v4 requireOnboardingFlow];

  v5 = v0[1];

  return v5();
}

char *sub_1000228C4()
{
  v1 = sub_100002B38(&qword_10012DDE0, &qword_1000EA128);
  __chkstk_darwin(v1 - 8);
  v3 = &v48 - v2;
  v4 = sub_100002B38(&qword_10012DDE8, &qword_1000EA130);
  __chkstk_darwin(v4 - 8);
  v6 = &v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v48 - v8;
  v10 = type metadata accessor for EnvironmentValues();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1000D1714(&_swiftEmptyArrayStorage);
  v15 = objc_allocWithZone(type metadata accessor for DashboardRequest());
  v16 = DashboardRequest.init(initialState:)(v14);
  v17 = *(v0 + 8);
  v18 = *(v0 + 16);

  if ((v18 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v19 = static Log.runtimeIssuesLog.getter();
    v48 = v10;
    v20 = v9;
    v21 = v16;
    v22 = v6;
    v23 = v19;
    os_log(_:dso:log:_:_:)();

    v6 = v22;
    v16 = v21;
    v9 = v20;
    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v11 + 8))(v13, v48);
    v17 = v49;
  }

  swift_getKeyPath();
  v49 = v17;
  sub_10002B454(&qword_10012CFC8, type metadata accessor for RemoteAlertAccessPointContext, &unk_1000EE6AC);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v24 = *(v17 + OBJC_IVAR____TtC13GameOverlayUI29RemoteAlertAccessPointContext__gkGame);
  v25 = v24;

  v26 = *&v16[OBJC_IVAR____TtC13GameOverlayUI16DashboardRequest_currentGame];
  *&v16[OBJC_IVAR____TtC13GameOverlayUI16DashboardRequest_currentGame] = v24;

  type metadata accessor for AccessPointAnimationView(0);
  dispatch thunk of GameDashboardLaunchContext.action.getter();
  v27 = type metadata accessor for LaunchDashboardAction();
  v28 = *(v27 - 8);
  if ((*(v28 + 48))(v3, 1, v27) == 1)
  {
    sub_100005688(v3, &qword_10012DDE0, &qword_1000EA128);
    v29 = type metadata accessor for LaunchDashboardAction.Destination();
    (*(*(v29 - 8) + 56))(v9, 1, 1, v29);
    sub_100005688(v9, &qword_10012DDE8, &qword_1000EA130);
LABEL_5:
    v30 = OBJC_IVAR____TtC13GameOverlayUI16DashboardRequest_viewState;
    v31 = 4;
LABEL_12:
    *&v16[v30] = v31;
    return v16;
  }

  LaunchDashboardAction.destination.getter();
  (*(v28 + 8))(v3, v27);
  v32 = type metadata accessor for LaunchDashboardAction.Destination();
  v33 = *(v32 - 8);
  (*(v33 + 56))(v9, 0, 1, v32);
  sub_100014830(v9, v6, &qword_10012DDE8, &qword_1000EA130);
  v34 = (*(v33 + 88))(v6, v32);
  if (v34 != enum case for LaunchDashboardAction.Destination.achievements(_:))
  {
    if (v34 == enum case for LaunchDashboardAction.Destination.leaderboards(_:))
    {
      (*(v33 + 96))(v6, v32);
      v36 = *v6;
      *&v16[OBJC_IVAR____TtC13GameOverlayUI16DashboardRequest_viewState] = 0;
      *&v16[OBJC_IVAR____TtC13GameOverlayUI16DashboardRequest_leaderboardIdentifier] = v36;

      *&v16[OBJC_IVAR____TtC13GameOverlayUI16DashboardRequest_leaderboardPlayerScope] = 1;
      v37 = &OBJC_IVAR____TtC13GameOverlayUI16DashboardRequest_leaderboardTimeScope;
    }

    else
    {
      if (v34 == enum case for LaunchDashboardAction.Destination.profile(_:))
      {
        (*(v33 + 96))(v6, v32);
        v39 = *v6;
        v40 = *(v6 + 1);
        *&v16[OBJC_IVAR____TtC13GameOverlayUI16DashboardRequest_viewState] = 3;
        v41 = &v16[OBJC_IVAR____TtC13GameOverlayUI16DashboardRequest_playerIdentifier];
        *v41 = v39;
        *(v41 + 1) = v40;
        goto LABEL_8;
      }

      if (v34 != enum case for LaunchDashboardAction.Destination.challenges(_:))
      {
        if (v34 == enum case for LaunchDashboardAction.Destination.localPlayerProfile(_:))
        {
          v30 = OBJC_IVAR____TtC13GameOverlayUI16DashboardRequest_viewState;
          v31 = 3;
          goto LABEL_12;
        }

        if (v34 == enum case for LaunchDashboardAction.Destination.friendRequests(_:))
        {
          *&v16[OBJC_IVAR____TtC13GameOverlayUI16DashboardRequest_viewState] = 5;
          v42 = &v16[OBJC_IVAR____TtC13GameOverlayUI16DashboardRequest_deepLinkDestination];
          v43 = *&v16[OBJC_IVAR____TtC13GameOverlayUI16DashboardRequest_deepLinkDestination];
          v44 = *&v16[OBJC_IVAR____TtC13GameOverlayUI16DashboardRequest_deepLinkDestination + 8];
          v45 = *&v16[OBJC_IVAR____TtC13GameOverlayUI16DashboardRequest_deepLinkDestination + 16];
          v46 = *&v16[OBJC_IVAR____TtC13GameOverlayUI16DashboardRequest_deepLinkDestination + 24];
          *v42 = 3;
          *(v42 + 1) = 0;
          *(v42 + 2) = 0;
          *(v42 + 3) = 0;
          v47 = v42[32];
          v42[32] = 3;
          sub_100030C94(v43, v44, v45, v46, v47);
          return v16;
        }

        (*(v33 + 8))(v6, v32);
        goto LABEL_5;
      }

      v37 = &OBJC_IVAR____TtC13GameOverlayUI16DashboardRequest_viewState;
    }

    v30 = *v37;
    v31 = 2;
    goto LABEL_12;
  }

  (*(v33 + 96))(v6, v32);
  v35 = *v6;
  *&v16[OBJC_IVAR____TtC13GameOverlayUI16DashboardRequest_viewState] = 1;
  *&v16[OBJC_IVAR____TtC13GameOverlayUI16DashboardRequest_achievementIdentifier] = v35;
LABEL_8:

  return v16;
}

uint64_t sub_100022F7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  v8 = type metadata accessor for GameDashboardLaunchContext.LaunchTarget();
  v7[6] = v8;
  v7[7] = *(v8 - 8);
  v7[8] = swift_task_alloc();
  type metadata accessor for MainActor();
  v7[9] = static MainActor.shared.getter();
  v10 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100023074, v10, v9);
}

uint64_t sub_100023074()
{
  v1 = v0[8];
  v2 = v0[6];
  v3 = v0[7];
  v4 = v0[3];

  type metadata accessor for AccessPointAnimationView(0);
  (*(v3 + 104))(v1, enum case for GameDashboardLaunchContext.LaunchTarget.none(_:), v2);
  dispatch thunk of GameDashboardLaunchContext.launchTarget.setter();
  isa = Data._bridgeToObjectiveC()().super.isa;
  [v4 requestDashboardPresentation:isa];

  v6 = v0[1];

  return v6();
}

void sub_100023164(uint64_t a1)
{
  v2 = sub_100002B38(&unk_100130F10, &qword_1000EA660);
  __chkstk_darwin(v2 - 8);
  v46 = &v38 - v3;
  v4 = type metadata accessor for EnvironmentValues();
  v44 = *(v4 - 8);
  v45 = v4;
  __chkstk_darwin(v4);
  v43 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for AnimationCompletionCriteria();
  v41 = *(v6 - 8);
  v42 = v6;
  __chkstk_darwin(v6);
  v40 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for AccessPointAnimationView(0);
  v39 = *(v8 - 8);
  v9 = *(v39 + 64);
  __chkstk_darwin(v8 - 8);
  v11 = *(v10 + 36);
  v47 = a1;
  v12 = (a1 + v11);
  v14 = *v12;
  v13 = v12[1];
  v49 = *v12;
  v50 = v13;
  sub_100002B38(&qword_10012DDD8, &qword_1000EA008);
  State.wrappedValue.getter();
  v15 = v48;
  swift_getKeyPath();
  v49 = v15;
  sub_10002B454(&qword_10012DB48, type metadata accessor for AccessPointModel, &unk_1000E9BD0);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v16 = *(v15 + OBJC_IVAR____TtC13GameOverlayUI16AccessPointModel__state);

  if (v16 == 2 && (v49 = v14, v50 = v13, State.wrappedValue.getter(), v17 = v48, swift_getKeyPath(), v49 = v17, ObservationRegistrar.access<A, B>(_:keyPath:)(), , v18 = *(v17 + OBJC_IVAR____TtC13GameOverlayUI16AccessPointModel__showDashboard), v19 = , (v18 & 1) == 0))
  {
    if (qword_10012CB50 != -1)
    {
      v19 = swift_once();
    }

    __chkstk_darwin(v19);
    v34 = v47;
    *(&v38 - 2) = v47;
    sub_10002D940(v34, &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for AccessPointAnimationView);
    v35 = (*(v39 + 80) + 16) & ~*(v39 + 80);
    v36 = swift_allocObject();
    sub_10002D7B8(&v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v36 + v35, type metadata accessor for AccessPointAnimationView);
    v37 = v40;
    static AnimationCompletionCriteria.logicallyComplete.getter();
    withAnimation<A>(_:completionCriteria:_:completion:)();

    (*(v41 + 8))(v37, v42);
  }

  else
  {
    v49 = v14;
    v50 = v13;
    State.wrappedValue.getter();
    v20 = v48;
    swift_getKeyPath();
    v49 = v20;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v21 = *(v20 + OBJC_IVAR____TtC13GameOverlayUI16AccessPointModel__state);

    if (v21 == 2 || (v49 = v14, v50 = v13, State.wrappedValue.getter(), v22 = v48, swift_getKeyPath(), v49 = v22, ObservationRegistrar.access<A, B>(_:keyPath:)(), , v23 = *(v22 + OBJC_IVAR____TtC13GameOverlayUI16AccessPointModel__state), , v23 == 1))
    {
      v24 = *(v47 + 8);
      v25 = *(v47 + 16);

      if ((v25 & 1) == 0)
      {
        static os_log_type_t.fault.getter();
        v26 = static Log.runtimeIssuesLog.getter();
        os_log(_:dso:log:_:_:)();

        v27 = v43;
        EnvironmentValues.init()();
        swift_getAtKeyPath();

        (*(v44 + 8))(v27, v45);
        v24 = v49;
      }

      swift_getKeyPath();
      v49 = v24;
      sub_10002B454(&qword_10012CFC8, type metadata accessor for RemoteAlertAccessPointContext, &unk_1000EE6AC);
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v29 = *(v24 + 16);
      v28 = *(v24 + 24);

      if (v28)
      {
        v30 = type metadata accessor for TaskPriority();
        v31 = v46;
        (*(*(v30 - 8) + 56))(v46, 1, 1, v30);
        type metadata accessor for MainActor();
        v32 = static MainActor.shared.getter();
        v33 = swift_allocObject();
        v33[2] = v32;
        v33[3] = &protocol witness table for MainActor;
        v33[4] = v29;
        v33[5] = v28;
        sub_100014BBC(0, 0, v31, &unk_1000EA0E0, v33);
      }

      v49 = v14;
      v50 = v13;
      State.wrappedValue.getter();
      sub_100017618();
    }
  }
}

void sub_100023878(uint64_t a1)
{
  type metadata accessor for AccessPointAnimationView(0);
  sub_100002B38(&qword_10012DDD8, &qword_1000EA008);
  State.wrappedValue.getter();
  if (*(v2 + OBJC_IVAR____TtC13GameOverlayUI16AccessPointModel__reveal))
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_10002B454(&qword_10012DB48, type metadata accessor for AccessPointModel, &unk_1000E9BD0);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  else
  {
    *(v2 + OBJC_IVAR____TtC13GameOverlayUI16AccessPointModel__reveal) = 0;
  }
}

double sub_1000239E4(uint64_t a1)
{
  v2 = type metadata accessor for EnvironmentValues();
  v27 = *(v2 - 8);
  v28 = v2;
  __chkstk_darwin(v2);
  v4 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = type metadata accessor for AccessPointAnimationView(0);
  v5 = *(v32 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v32);
  v7 = sub_100002B38(&unk_100130F10, &qword_1000EA660);
  __chkstk_darwin(v7 - 8);
  v9 = &v26 - v8;
  v10 = type metadata accessor for TaskPriority();
  v11 = *(v10 - 8);
  v12 = *(v11 + 56);
  v30 = v11 + 56;
  v31 = v12;
  v12(v9, 1, 1, v10);
  sub_10002D940(a1, &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for AccessPointAnimationView);
  v29 = type metadata accessor for MainActor();
  v13 = static MainActor.shared.getter();
  v14 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = v13;
  *(v15 + 24) = &protocol witness table for MainActor;
  sub_10002D7B8(&v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v15 + v14, type metadata accessor for AccessPointAnimationView);
  sub_100014BBC(0, 0, v9, &unk_1000EA0F0, v15);

  v16 = *(a1 + 8);
  LOBYTE(v13) = *(a1 + 16);

  if ((v13 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v17 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v27 + 8))(v4, v28);
    v16 = v33;
  }

  swift_getKeyPath();
  v33 = v16;
  sub_10002B454(&qword_10012CFC8, type metadata accessor for RemoteAlertAccessPointContext, &unk_1000EE6AC);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v19 = *(v16 + 16);
  v18 = *(v16 + 24);

  if (v18)
  {
    v31(v9, 1, 1, v10);
    v20 = static MainActor.shared.getter();
    v21 = swift_allocObject();
    v21[2] = v20;
    v21[3] = &protocol witness table for MainActor;
    v21[4] = v19;
    v21[5] = v18;
    sub_100014BBC(0, 0, v9, &unk_1000EA0F8, v21);
  }

  v22 = (a1 + *(v32 + 28));
  v24 = *v22;
  v23 = v22[1];
  v33 = v24;
  v34 = v23;
  sub_100002B38(&qword_10012DDD8, &qword_1000EA008);
  State.wrappedValue.getter();
  sub_100017618();

  return result;
}

uint64_t sub_100023E20(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (*a2 != -1)
  {
    v6 = a1;
    swift_once();
    a1 = v6;
  }

  __chkstk_darwin(a1);
  return withAnimation<A>(_:_:)();
}

double sub_100023EC0(uint64_t a1)
{
  v41 = type metadata accessor for AccessPointAnchoring();
  v2 = *(v41 - 8);
  __chkstk_darwin(v41);
  v40 = &v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v42 = &v32 - v5;
  v6 = type metadata accessor for EnvironmentValues();
  v38 = *(v6 - 8);
  __chkstk_darwin(v6);
  v37 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = (a1 + *(type metadata accessor for AccessPointAnimationView(0) + 28));
  v10 = *v8;
  v9 = v8[1];
  v39 = v10;
  v49 = v10;
  v50 = v9;
  v44 = v9;
  v43 = sub_100002B38(&qword_10012DDD8, &qword_1000EA008);
  State.wrappedValue.getter();
  v11 = *(a1 + 8);
  v12 = *(a1 + 16);

  v13 = v11;
  v36 = v12;
  if ((v12 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v14 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    v15 = v37;
    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v38 + 8))(v15, v6);
    v13 = v49;
  }

  v33 = v11;
  v32 = v6;
  swift_getKeyPath();
  v49 = v13;
  v35 = sub_10002B454(&qword_10012CFC8, type metadata accessor for RemoteAlertAccessPointContext, &unk_1000EE6AC);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v16 = OBJC_IVAR____TtC13GameOverlayUI29RemoteAlertAccessPointContext__anchoring;
  swift_beginAccess();
  v17 = *(v2 + 16);
  v18 = v41;
  v19 = v42;
  v17(v42, v13 + v16, v41);

  sub_100015C10(v19);

  v20 = v39;
  v47 = v39;
  v48 = v44;
  State.wrappedValue.getter();
  v21 = v45;
  swift_getKeyPath();
  v47 = v21;
  sub_10002B454(&qword_10012DB48, type metadata accessor for AccessPointModel, &unk_1000E9BD0);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v22 = OBJC_IVAR____TtC13GameOverlayUI16AccessPointModel__anchor;
  swift_beginAccess();
  v34 = v17;
  v17(v19, v21 + v22, v18);

  v23 = v40;
  (*(v2 + 104))(v40, enum case for AccessPointAnchoring.topCentered(_:), v18);
  sub_10002B454(&qword_10012CFD0, &type metadata accessor for AccessPointAnchoring, &protocol conformance descriptor for AccessPointAnchoring);
  LOBYTE(v21) = dispatch thunk of static Equatable.== infix(_:_:)();
  v24 = *(v2 + 8);
  v24(v23, v18);
  v24(v19, v18);
  if ((v21 & 1) == 0)
  {
    v45 = v20;
    v46 = v44;
    State.wrappedValue.getter();
    v26 = v33;

    if ((v36 & 1) == 0)
    {
      static os_log_type_t.fault.getter();
      v27 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      v28 = v37;
      EnvironmentValues.init()();
      swift_getAtKeyPath();

      (*(v38 + 8))(v28, v32);
      v26 = v45;
    }

    swift_getKeyPath();
    v45 = v26;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v29 = OBJC_IVAR____TtC13GameOverlayUI29RemoteAlertAccessPointContext__anchoring;
    swift_beginAccess();
    v30 = v26 + v29;
    v31 = v42;
    v34(v42, v30, v41);

    sub_10001590C(v31);
  }

  return result;
}

double sub_1000244A8(uint64_t a1)
{
  v2 = type metadata accessor for AnimationCompletionCriteria();
  v23 = *(v2 - 8);
  __chkstk_darwin(v2);
  v4 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for AccessPointAnimationView(0);
  v22 = *(v5 - 8);
  v6 = *(v22 + 64);
  __chkstk_darwin(v5 - 8);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for EnvironmentValues();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a1 + 8);
  v13 = *(a1 + 16);

  if ((v13 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v21 = v8;
    v14 = static Log.runtimeIssuesLog.getter();
    v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v9 + 8))(v11, v21);
    v12 = v24;
  }

  swift_getKeyPath();
  v24 = v12;
  sub_10002B454(&qword_10012CFC8, type metadata accessor for RemoteAlertAccessPointContext, &unk_1000EE6AC);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*(v12 + OBJC_IVAR____TtC13GameOverlayUI29RemoteAlertAccessPointContext__active) == 1)
  {
    swift_getKeyPath();
    v24 = v12;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v15 = *(v12 + OBJC_IVAR____TtC13GameOverlayUI29RemoteAlertAccessPointContext__hideCount);

    if (v15 <= 0)
    {
      if (qword_10012CB48 == -1)
      {
        goto LABEL_9;
      }

      goto LABEL_10;
    }
  }

  else
  {
  }

  if (qword_10012CB50 != -1)
  {
LABEL_10:
    swift_once();
  }

LABEL_9:

  __chkstk_darwin(v16);
  *(&v20 - 2) = a1;
  sub_10002D940(a1, v7, type metadata accessor for AccessPointAnimationView);
  v17 = (*(v22 + 80) + 16) & ~*(v22 + 80);
  v18 = swift_allocObject();
  sub_10002D7B8(v7, v18 + v17, type metadata accessor for AccessPointAnimationView);
  static AnimationCompletionCriteria.logicallyComplete.getter();
  withAnimation<A>(_:completionCriteria:_:completion:)();

  (*(v23 + 8))(v4, v2);
  return sub_100018BC8();
}

void sub_100024974(uint64_t a1)
{
  v2 = type metadata accessor for EnvironmentValues();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = (a1 + *(type metadata accessor for AccessPointAnimationView(0) + 28));
  v8 = *v6;
  v7 = v6[1];
  v18 = v8;
  v19 = v7;
  sub_100002B38(&qword_10012DDD8, &qword_1000EA008);
  State.wrappedValue.getter();
  v9 = v17[1];
  v10 = *(a1 + 8);
  v11 = *(a1 + 16);

  if ((v11 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v12 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v3 + 8))(v5, v2);
    v10 = v18;
  }

  swift_getKeyPath();
  v18 = v10;
  sub_10002B454(&qword_10012CFC8, type metadata accessor for RemoteAlertAccessPointContext, &unk_1000EE6AC);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*(v10 + OBJC_IVAR____TtC13GameOverlayUI29RemoteAlertAccessPointContext__active))
  {
    swift_getKeyPath();
    v18 = v10;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v13 = *(v10 + OBJC_IVAR____TtC13GameOverlayUI29RemoteAlertAccessPointContext__hideCount);

    v14 = v13 > 0;
    v15 = (v9 + OBJC_IVAR____TtC13GameOverlayUI16AccessPointModel__accessPointHidden);
    if (((v14 ^ *(v9 + OBJC_IVAR____TtC13GameOverlayUI16AccessPointModel__accessPointHidden)) & 1) == 0)
    {
LABEL_5:
      *v15 = v14;

      return;
    }
  }

  else
  {

    v15 = (v9 + OBJC_IVAR____TtC13GameOverlayUI16AccessPointModel__accessPointHidden);
    LOBYTE(v14) = 1;
    if (*(v9 + OBJC_IVAR____TtC13GameOverlayUI16AccessPointModel__accessPointHidden))
    {
      goto LABEL_5;
    }
  }

  KeyPath = swift_getKeyPath();
  __chkstk_darwin(KeyPath);
  v17[-2] = v9;
  LOBYTE(v17[-1]) = v14;
  v18 = v9;
  sub_10002B454(&qword_10012DB48, type metadata accessor for AccessPointModel, &unk_1000E9BD0);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

double sub_100024CE4(uint64_t a1)
{
  v2 = type metadata accessor for AccessPointAnimationView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100002B38(&unk_100130F10, &qword_1000EA660);
  __chkstk_darwin(v6 - 8);
  v8 = &v26 - v7;
  v9 = type metadata accessor for EnvironmentValues();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(a1 + 8);
  v28 = a1;
  LOBYTE(a1) = *(a1 + 16);

  if ((a1 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v27 = v9;
    v14 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v10 + 8))(v12, v27);
    v13 = v30;
  }

  swift_getKeyPath();
  v30 = v13;
  sub_10002B454(&qword_10012CFC8, type metadata accessor for RemoteAlertAccessPointContext, &unk_1000EE6AC);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v15 = *(v13 + OBJC_IVAR____TtC13GameOverlayUI29RemoteAlertAccessPointContext__active);

  if ((v15 & 1) == 0)
  {
    v17 = (v28 + *(v2 + 28));
    v19 = *v17;
    v18 = v17[1];
    v30 = v19;
    v31 = v18;
    sub_100002B38(&qword_10012DDD8, &qword_1000EA008);
    State.wrappedValue.getter();
    v20 = v29;
    swift_getKeyPath();
    v30 = v20;
    sub_10002B454(&qword_10012DB48, type metadata accessor for AccessPointModel, &unk_1000E9BD0);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v21 = *(v20 + OBJC_IVAR____TtC13GameOverlayUI16AccessPointModel__reveal);

    if (v21 == 1)
    {
      v22 = type metadata accessor for TaskPriority();
      (*(*(v22 - 8) + 56))(v8, 1, 1, v22);
      sub_10002D940(v28, v5, type metadata accessor for AccessPointAnimationView);
      type metadata accessor for MainActor();
      v23 = static MainActor.shared.getter();
      v24 = (*(v3 + 80) + 32) & ~*(v3 + 80);
      v25 = swift_allocObject();
      *(v25 + 16) = v23;
      *(v25 + 24) = &protocol witness table for MainActor;
      sub_10002D7B8(v5, v25 + v24, type metadata accessor for AccessPointAnimationView);
      sub_100014BBC(0, 0, v8, &unk_1000EA0D0, v25);
    }
  }

  return result;
}

uint64_t sub_100025150(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  type metadata accessor for MainActor();
  *(v4 + 24) = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1000251E8, v6, v5);
}

uint64_t sub_1000251E8()
{

  v1.n128_f64[0] = sub_1000215B4();
  v2 = *(v0 + 8);

  return v2(v1);
}

double sub_10002524C(uint64_t a1)
{
  v2 = type metadata accessor for AccessPointAnimationView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100002B38(&unk_100130F10, &qword_1000EA660);
  __chkstk_darwin(v6 - 8);
  v8 = &v14 - v7;
  v9 = type metadata accessor for TaskPriority();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  sub_10002D940(a1, v5, type metadata accessor for AccessPointAnimationView);
  type metadata accessor for MainActor();
  v10 = static MainActor.shared.getter();
  v11 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = v10;
  *(v12 + 24) = &protocol witness table for MainActor;
  sub_10002D7B8(v5, v12 + v11, type metadata accessor for AccessPointAnimationView);
  sub_100014BBC(0, 0, v8, &unk_1000EA0C0, v12);

  return result;
}

uint64_t sub_100025420(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[73] = a4;
  v5 = type metadata accessor for AccessPointAnchoring();
  v4[74] = v5;
  v4[75] = *(v5 - 8);
  v4[76] = swift_task_alloc();
  v4[77] = swift_task_alloc();
  v6 = type metadata accessor for AccessPointUseCase();
  v4[78] = v6;
  v4[79] = *(v6 - 8);
  v4[80] = swift_task_alloc();
  v4[81] = swift_task_alloc();
  v4[82] = swift_task_alloc();
  v7 = type metadata accessor for EnvironmentValues();
  v4[83] = v7;
  v4[84] = *(v7 - 8);
  v4[85] = swift_task_alloc();
  type metadata accessor for MainActor();
  v4[86] = static MainActor.shared.getter();
  v9 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1000255F0, v9, v8);
}

void sub_1000255F0()
{
  v1 = v0[73];

  v2 = *(v1 + 8);
  v3 = *(v1 + 16);

  v4 = v2;
  if ((v3 & 1) == 0)
  {
    v5 = v0[85];
    v6 = v0[84];
    v7 = v0[83];
    static os_log_type_t.fault.getter();
    v8 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v6 + 8))(v5, v7);
    v4 = v0[57];
  }

  v9 = OBJC_IVAR____TtC13GameOverlayUI29RemoteAlertAccessPointContext_newHighlightsQueue;
  swift_beginAccess();
  v10 = *(v4 + v9);

  v11 = *(v10 + 16);

  if (!v11)
  {
    goto LABEL_42;
  }

  v12 = v0[73];
  v13 = (v12 + *(type metadata accessor for AccessPointAnimationView(0) + 28));
  v14 = *v13;
  v15 = v13[1];
  v0[45] = *v13;
  v0[46] = v15;
  sub_100002B38(&qword_10012DDD8, &qword_1000EA008);
  State.wrappedValue.getter();
  v16 = v0[71];
  swift_getKeyPath();
  v0[69] = v16;
  sub_10002B454(&qword_10012DB48, type metadata accessor for AccessPointModel, &unk_1000E9BD0);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  LODWORD(v12) = *(v16 + OBJC_IVAR____TtC13GameOverlayUI16AccessPointModel__state);

  if (v12)
  {
    goto LABEL_42;
  }

  v108 = v15;
  v109 = v14;

  v17 = v2;
  if ((v3 & 1) == 0)
  {
    v18 = v0[85];
    v19 = v0[84];
    v20 = v0[83];
    static os_log_type_t.fault.getter();
    v21 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v19 + 8))(v18, v20);
    v17 = v0[68];
  }

  v22 = OBJC_IVAR____TtC13GameOverlayUI29RemoteAlertAccessPointContext_newHighlightsQueue;
  swift_beginAccess();
  v23 = *(v17 + v22);

  v105 = v23;
  v25 = v108;
  v24 = v109;
  v103 = *(v23 + 16);
  if (!v103)
  {
LABEL_39:

    if ((v3 & 1) == 0)
    {
      v88 = v0[85];
      v89 = v0[84];
      v90 = v0[83];
      static os_log_type_t.fault.getter();
      v91 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      EnvironmentValues.init()();
      swift_getAtKeyPath();

      (*(v89 + 8))(v88, v90);
      v2 = v0[64];
    }

    v92 = OBJC_IVAR____TtC13GameOverlayUI29RemoteAlertAccessPointContext_newHighlightsQueue;
    swift_beginAccess();
    *(v2 + v92) = &_swiftEmptyArrayStorage;

LABEL_42:

    v93 = v0[1];

    v93();
    return;
  }

  v26 = 0;
  v27 = v0[79];
  v28 = v0[75];
  v102 = v23 + 32;
  v107 = (v0[84] + 8);
  v100 = (v27 + 16);
  v104 = (v27 + 104);
  v99 = (v27 + 8);
  v98 = enum case for AccessPointUseCase.welcomeBannerOnly(_:);
  v96 = (v27 + 40);
  v97 = (v28 + 16);
  v95 = enum case for AccessPointUseCase.welcomeBannerAndAccessPoint(_:);
  v106 = (v28 + 8);
  v94 = (v28 + 24);
  v111 = v3;
  v112 = v2;
  while (v26 < *(v105 + 16))
  {
    v110 = v26;
    v29 = *(v102 + 8 * v26);

    v30 = v2;
    if ((v3 & 1) == 0)
    {
      v31 = v0[85];
      v32 = v0[83];
      static os_log_type_t.fault.getter();
      v33 = v3;
      v34 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      v3 = v33;
      v2 = v112;
      EnvironmentValues.init()();
      swift_getAtKeyPath();

      (*v107)(v31, v32);
      v30 = v0[66];
    }

    v35 = *(v30 + OBJC_IVAR____TtC13GameOverlayUI29RemoteAlertAccessPointContext_allowCoalescing);

    if (v35 != 1)
    {
      goto LABEL_38;
    }

    if (v29[2])
    {
      v2 = v3;
      v0[49] = v24;
      v0[50] = v25;
      State.wrappedValue.getter();
      swift_beginAccess();
      v36 = AccessPointContainer.items.modify();
      v3 = *v37;
      if (!*(*v37 + 16))
      {
        goto LABEL_46;
      }

      v38 = v36;
      v39 = v37;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *v39 = v3;
      if (isUniquelyReferenced_nonNull_native)
      {
        v41 = *(v3 + 16);
        if (!v41)
        {
          goto LABEL_37;
        }
      }

      else
      {
        v3 = sub_10002CE2C(v3);
        *v39 = v3;
        v41 = *(v3 + 16);
        if (!v41)
        {
LABEL_37:
          __break(1u);
LABEL_38:

          goto LABEL_39;
        }
      }

      v42 = v25;
      v43 = v41 - 1;
      v44 = sub_10002E6CC((v3 + 40 * v41 - 8));
      *(v3 + 16) = v43;
      *v39 = v3;
      v38(v44);
      swift_endAccess();

      v0[51] = v24;
      v0[52] = v42;
      State.wrappedValue.getter();
      swift_beginAccess();
      v45 = AccessPointContainer.items.modify();
      sub_10002649C(v29);
      v45(v0 + 6, 0);
      swift_endAccess();

      v46 = v112;

      if ((v2 & 1) == 0)
      {
        v47 = v0[85];
        v48 = v0[83];
        static os_log_type_t.fault.getter();
        v49 = static Log.runtimeIssuesLog.getter();
        os_log(_:dso:log:_:_:)();

        EnvironmentValues.init()();
        swift_getAtKeyPath();

        (*v107)(v47, v48);
        v46 = v0[58];
      }

      v50 = v0[82];
      v51 = v0[81];
      v52 = v0[78];
      v53 = OBJC_IVAR____TtC13GameOverlayUI29RemoteAlertAccessPointContext_useCase;
      swift_beginAccess();
      (*v100)(v50, v46 + v53, v52);

      v101 = *v104;
      (*v104)(v51, v98, v52);
      sub_10002B454(&qword_10012CFE8, &type metadata accessor for AccessPointUseCase, &protocol conformance descriptor for AccessPointUseCase);
      dispatch thunk of RawRepresentable.rawValue.getter();
      dispatch thunk of RawRepresentable.rawValue.getter();
      v54 = v0[82];
      v55 = v0[81];
      v56 = v0[78];
      if (v0[43] == v0[55] && v0[44] == v0[56])
      {
        v57 = *v99;
        (*v99)(v0[81], v0[78]);
        v57(v54, v56);

        v58 = v112;
        goto LABEL_25;
      }

      v59 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v60 = *v99;
      (*v99)(v55, v56);
      v60(v54, v56);

      v58 = v112;
      if (v59)
      {
LABEL_25:

        v61 = v58;
        if ((v111 & 1) == 0)
        {
          v62 = v0[85];
          v63 = v0[83];
          static os_log_type_t.fault.getter();
          v64 = static Log.runtimeIssuesLog.getter();
          os_log(_:dso:log:_:_:)();

          EnvironmentValues.init()();
          swift_getAtKeyPath();

          (*v107)(v62, v63);
          v61 = v0[67];
        }

        v65 = v0[80];
        v66 = v0[78];
        v101(v65, v95, v66);
        v67 = OBJC_IVAR____TtC13GameOverlayUI29RemoteAlertAccessPointContext_useCase;
        swift_beginAccess();
        (*v96)(v61 + v67, v65, v66);
        swift_endAccess();

        v0[47] = v109;
        v0[48] = v108;
        State.wrappedValue.getter();
        v101(v65, v95, v66);
        swift_beginAccess();
        AccessPointContainer.useCase.setter();
        swift_endAccess();

        if ((v111 & 1) == 0)
        {
          v69 = v0[85];
          v70 = v0[83];
          static os_log_type_t.fault.getter();
          v71 = static Log.runtimeIssuesLog.getter();
          os_log(_:dso:log:_:_:)();

          EnvironmentValues.init()();
          swift_getAtKeyPath();

          (*v107)(v69, v70);
          v68 = v0[72];
        }

        *(v68 + OBJC_IVAR____TtC13GameOverlayUI29RemoteAlertAccessPointContext_allowCoalescing) = 0;
      }

      v0[53] = v109;
      v0[54] = v108;
      State.wrappedValue.getter();
      v72 = v0[60];

      v73 = v58;
      if ((v111 & 1) == 0)
      {
        v74 = v0[85];
        v75 = v0[83];
        static os_log_type_t.fault.getter();
        v76 = static Log.runtimeIssuesLog.getter();
        os_log(_:dso:log:_:_:)();

        EnvironmentValues.init()();
        swift_getAtKeyPath();

        (*v107)(v74, v75);
        v73 = v0[61];
      }

      v77 = v0[77];
      v78 = v0[76];
      v79 = v0[74];
      swift_getKeyPath();
      v0[62] = v73;
      sub_10002B454(&qword_10012CFC8, type metadata accessor for RemoteAlertAccessPointContext, &unk_1000EE6AC);
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v80 = OBJC_IVAR____TtC13GameOverlayUI29RemoteAlertAccessPointContext__anchoring;
      swift_beginAccess();
      v81 = *v97;
      (*v97)(v77, v73 + v80, v79);

      v82 = OBJC_IVAR____TtC13GameOverlayUI16AccessPointModel__destAnchor;
      swift_beginAccess();
      v81(v78, v72 + v82, v79);
      sub_10002B454(&qword_10012CFD0, &type metadata accessor for AccessPointAnchoring, &protocol conformance descriptor for AccessPointAnchoring);
      v83 = dispatch thunk of static Equatable.== infix(_:_:)();
      v84 = *v106;
      (*v106)(v78, v79);
      v85 = v0[77];
      if (v83)
      {
        v86 = v0[74];
        swift_beginAccess();
        (*v94)(v72 + v82, v85, v86);
        swift_endAccess();
      }

      else
      {
        swift_getKeyPath();
        v87 = swift_task_alloc();
        *(v87 + 16) = v72;
        *(v87 + 24) = v85;
        v0[65] = v72;
        ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
      }

      v84(v0[77], v0[74]);

      v3 = v111;
      v25 = v108;
      v24 = v109;
      v2 = v112;
      goto LABEL_10;
    }

LABEL_10:
    v26 = v110 + 1;
    if (v103 == v110 + 1)
    {
      goto LABEL_39;
    }
  }

  __break(1u);
LABEL_46:
  __break(1u);
}

void *sub_10002649C(void *result)
{
  v2 = result[2];
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= v3[3] >> 1)
  {
    if (v6[2])
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_1000CC300(result, v10, 1, v3);
  v3 = result;
  if (!v6[2])
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((v3[3] >> 1) - v3[2] < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  sub_100002B38(&qword_10012DC80, &qword_1000ED7F0);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = v3[2];
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    v3[2] = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_1000265A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a3;
  type metadata accessor for MainActor();
  *(v3 + 24) = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10002663C, v5, v4);
}

uint64_t sub_10002663C()
{

  v1.n128_f64[0] = sub_100018BC8();
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1000266A0(uint64_t a1, char a2)
{
  type metadata accessor for AccessPointAnimationView(0);
  sub_100002B38(&qword_10012DD98, &qword_1000EA650);
  return State.wrappedValue.setter();
}

uint64_t sub_100026730(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  type metadata accessor for MainActor();
  v5[4] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[5] = v7;
  v5[6] = v6;

  return _swift_task_switch(sub_1000267C8, v7, v6);
}

uint64_t sub_1000267C8()
{
  if (qword_10012CC38 != -1)
  {
    swift_once();
  }

  v1 = qword_100135CD8;
  *(v0 + 56) = qword_100135CD8;

  return _swift_task_switch(sub_100026860, v1, 0);
}

uint64_t sub_100026860()
{
  sub_1000C6540(v0[2], v0[3]);
  v1 = v0[5];
  v2 = v0[6];

  return _swift_task_switch(sub_1000268C8, v1, v2);
}

uint64_t sub_1000268C8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10002692C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v76 = a1;
  v78 = type metadata accessor for AccessPointContainer();
  v3 = *(v78 - 8);
  __chkstk_darwin(v78);
  v5 = v66 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100002B38(&qword_10012DB88, &qword_1000E9CF8);
  __chkstk_darwin(v6);
  v8 = v66 - v7;
  v72 = sub_100002B38(&qword_10012DB90, &qword_1000E9D00);
  __chkstk_darwin(v72);
  v10 = v66 - v9;
  v74 = sub_100002B38(&qword_10012DB98, &qword_1000E9D08);
  v75 = *(v74 - 8);
  __chkstk_darwin(v74);
  v73 = v66 - v11;
  *v8 = static VerticalAlignment.center.getter();
  *(v8 + 1) = 0;
  v8[16] = 0;
  v12 = sub_100002B38(&qword_10012DBA0, &qword_1000E9D10);
  sub_1000272DC(v1, &v8[*(v12 + 44)]);
  *&v8[*(v6 + 36)] = static HierarchicalShapeStyle.primary.getter();
  v86 = *(v1 + 16);
  v87 = *(v1 + 32);
  v79 = *(v1 + 16);
  v80 = *(v1 + 32);
  v70 = sub_100002B38(&qword_10012DB40, &qword_1000E9C18);
  Binding.wrappedValue.getter();
  v13 = v84;
  swift_getKeyPath();
  *&v79 = v13;
  v71 = sub_10002B454(&qword_10012DB48, type metadata accessor for AccessPointModel, &unk_1000E9BD0);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  type metadata accessor for APAnimationController();
  sub_10002BD64();
  sub_10002B454(&qword_10012DBD0, &type metadata accessor for APAnimationController, &protocol conformance descriptor for APAnimationController);
  View.environment<A>(_:)();

  sub_100005688(v8, &qword_10012DB88, &qword_1000E9CF8);
  LOBYTE(v13) = static Edge.Set.all.getter();
  EdgeInsets.init(_all:)();
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v22 = &v10[*(sub_100002B38(&qword_10012DBD8, &unk_1000E9D28) + 36)];
  v77 = v10;
  *v22 = v13;
  *(v22 + 1) = v15;
  *(v22 + 2) = v17;
  *(v22 + 3) = v19;
  *(v22 + 4) = v21;
  v22[40] = 0;
  v79 = v86;
  v80 = v87;
  Binding.wrappedValue.getter();
  v23 = v84;
  v24 = OBJC_IVAR____TtC13GameOverlayUI16AccessPointModel_container;
  swift_beginAccess();
  v69 = *(v3 + 16);
  v25 = v78;
  v69(v5, v23 + v24, v78);

  v85 = *(v2 + 40);
  v79 = *(v2 + 40);
  v68 = sub_100002B38(&qword_10012CFE0, &qword_1000E9390);
  State.wrappedValue.getter();
  AccessPointContainer.cornerRadii(for:)();
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v34 = *(v3 + 8);
  v66[1] = v3 + 8;
  v67 = v34;
  v34(v5, v25);
  v35 = &v10[*(sub_100002B38(&qword_10012DBE0, &qword_1000E9D38) + 36)];
  v66[0] = type metadata accessor for UnevenRoundedRectangle();
  v36 = *(v66[0] + 20);
  v37 = enum case for RoundedCornerStyle.continuous(_:);
  v38 = type metadata accessor for RoundedCornerStyle();
  v39 = *(*(v38 - 8) + 104);
  v39(&v35[v36], v37, v38);
  *v35 = v27;
  *(v35 + 1) = v29;
  *(v35 + 2) = v31;
  *(v35 + 3) = v33;
  v35[*(sub_100002B38(&qword_10012DBE8, &qword_1000E9D40) + 36)] = 0;
  v79 = v86;
  v80 = v87;
  Binding.wrappedValue.getter();
  v40 = v83;
  v41 = OBJC_IVAR____TtC13GameOverlayUI16AccessPointModel_container;
  swift_beginAccess();
  v42 = v78;
  v69(v5, v40 + v41, v78);

  v79 = v85;
  State.wrappedValue.getter();
  AccessPointContainer.cornerRadii(for:)();
  v44 = v43;
  v46 = v45;
  v48 = v47;
  v50 = v49;
  v67(v5, v42);
  v51 = v72;
  v52 = &v77[*(v72 + 36)];
  v39(&v52[*(v66[0] + 20)], v37, v38);
  *v52 = v44;
  *(v52 + 1) = v46;
  *(v52 + 2) = v48;
  *(v52 + 3) = v50;
  *&v52[*(sub_100002B38(&qword_10012DBF0, &qword_1000E9D48) + 36)] = 256;
  v79 = v86;
  v80 = v87;
  Binding.wrappedValue.getter();
  v53 = v82;
  swift_getKeyPath();
  *&v79 = v53;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v54 = dispatch thunk of APAnimationController.highlightIndex.getter();

  v82 = v54;
  v55 = swift_allocObject();
  v56 = *(v2 + 48);
  *(v55 + 48) = *(v2 + 32);
  *(v55 + 64) = v56;
  *(v55 + 80) = *(v2 + 64);
  *(v55 + 96) = *(v2 + 80);
  v57 = *(v2 + 16);
  *(v55 + 16) = *v2;
  *(v55 + 32) = v57;
  sub_10002BE54(v2, &v79);
  v58 = sub_10002BE8C();
  v59 = v73;
  v60 = v77;
  View.onChange<A>(of:initial:_:)();

  sub_100005688(v60, &qword_10012DB90, &qword_1000E9D00);
  v79 = *(v2 + 72);
  sub_100002B38(&qword_10012DC20, &unk_1000E9D50);
  State.wrappedValue.getter();
  LOBYTE(v37) = AccessPointHighlightComponent.GestureHandler.didSwipeUp.getter();

  LOBYTE(v82) = v37 & 1;
  v61 = swift_allocObject();
  v62 = *(v2 + 48);
  *(v61 + 48) = *(v2 + 32);
  *(v61 + 64) = v62;
  *(v61 + 80) = *(v2 + 64);
  *(v61 + 96) = *(v2 + 80);
  v63 = *(v2 + 16);
  *(v61 + 16) = *v2;
  *(v61 + 32) = v63;
  sub_10002BE54(v2, &v79);
  *&v79 = v51;
  *(&v79 + 1) = &type metadata for Int;
  v80 = v58;
  v81 = &protocol witness table for Int;
  swift_getOpaqueTypeConformance2();
  v64 = v74;
  View.onChange<A>(of:initial:_:)();

  return (*(v75 + 8))(v59, v64);
}

uint64_t sub_1000272DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v47 = a2;
  v43 = sub_100002B38(&qword_10012DC40, &unk_1000E9DD0);
  __chkstk_darwin(v43);
  v44 = &v38 - v3;
  v4 = type metadata accessor for AccessPointContainer();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100002B38(&qword_10012D3A0, &qword_1000E9720);
  v39 = *(v8 - 8);
  v40 = v8;
  __chkstk_darwin(v8);
  v10 = &v38 - v9;
  v11 = sub_100002B38(&qword_10012DC48, &qword_1000E9DE0);
  v42 = *(v11 - 8);
  __chkstk_darwin(v11);
  v41 = &v38 - v12;
  v13 = sub_100002B38(&qword_10012DC50, &qword_1000E9DE8);
  __chkstk_darwin(v13 - 8);
  v46 = &v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v45 = &v38 - v16;
  v53 = *(a1 + 40);
  v48 = *(a1 + 40);
  sub_100002B38(&qword_10012CFE0, &qword_1000E9390);
  State.wrappedValue.getter();
  v48 = *(a1 + 16);
  v49 = *(a1 + 32);
  if (v52)
  {
    sub_100002B38(&qword_10012DB40, &qword_1000E9C18);
    Binding.wrappedValue.getter();
    v25 = v52;
    v26 = OBJC_IVAR____TtC13GameOverlayUI16AccessPointModel_container;
    swift_beginAccess();
    (*(v5 + 16))(v7, v25 + v26, v4);

    v48 = v53;
    State.wrappedValue.getter();
    AccessPointContainer.componentView(for:)();
    (*(v5 + 8))(v7, v4);
    v48 = *(a1 + 72);
    sub_100002B38(&qword_10012DC20, &unk_1000E9D50);
    State.wrappedValue.getter();
    v27 = type metadata accessor for AccessPointHighlightComponent.GestureHandler();
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v29 = sub_10002B454(&qword_10012DC58, &type metadata accessor for AccessPointHighlightComponent.GestureHandler, &protocol conformance descriptor for AccessPointHighlightComponent.GestureHandler);
    v30 = v40;
    v22 = v41;
    View.environment<A>(_:)();

    (*(v39 + 8))(v10, v30);
    v24 = v42;
    (*(v42 + 16))(v44, v22, v11);
    swift_storeEnumTagMultiPayload();
    *&v48 = v30;
    *(&v48 + 1) = v27;
    v49 = OpaqueTypeConformance2;
    v50 = v29;
  }

  else
  {
    sub_100002B38(&qword_10012DB40, &qword_1000E9C18);
    Binding.wrappedValue.getter();
    v17 = v52;
    v18 = OBJC_IVAR____TtC13GameOverlayUI16AccessPointModel_container;
    swift_beginAccess();
    (*(v5 + 16))(v7, v17 + v18, v4);

    v48 = v53;
    State.wrappedValue.getter();
    AccessPointContainer.componentView(for:)();
    (*(v5 + 8))(v7, v4);
    v48 = *(a1 + 72);
    sub_100002B38(&qword_10012DC20, &unk_1000E9D50);
    State.wrappedValue.getter();
    v19 = type metadata accessor for AccessPointHighlightComponent.GestureHandler();
    v20 = swift_getOpaqueTypeConformance2();
    v21 = sub_10002B454(&qword_10012DC58, &type metadata accessor for AccessPointHighlightComponent.GestureHandler, &protocol conformance descriptor for AccessPointHighlightComponent.GestureHandler);
    v23 = v40;
    v22 = v41;
    View.environment<A>(_:)();

    (*(v39 + 8))(v10, v23);
    v24 = v42;
    (*(v42 + 16))(v44, v22, v11);
    swift_storeEnumTagMultiPayload();
    *&v48 = v23;
    *(&v48 + 1) = v19;
    v49 = v20;
    v50 = v21;
  }

  swift_getOpaqueTypeConformance2();
  v31 = v45;
  _ConditionalContent<>.init(storage:)();
  (*(v24 + 8))(v22, v11);
  v48 = *(a1 + 16);
  v49 = *(a1 + 32);
  sub_100002B38(&qword_10012DB40, &qword_1000E9C18);
  Binding.wrappedValue.getter();
  v32 = v51;
  swift_getKeyPath();
  *&v48 = v32;
  sub_10002B454(&qword_10012DB48, type metadata accessor for AccessPointModel, &unk_1000E9BD0);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v33 = *(v32 + OBJC_IVAR____TtC13GameOverlayUI16AccessPointModel__collapsed);

  v34 = v46;
  sub_1000035B4(v31, v46, &qword_10012DC50, &qword_1000E9DE8);
  v35 = v47;
  sub_1000035B4(v34, v47, &qword_10012DC50, &qword_1000E9DE8);
  v36 = v35 + *(sub_100002B38(&qword_10012DC60, &qword_1000E9E18) + 48);
  *v36 = 0;
  *(v36 + 8) = 0;
  *(v36 + 9) = v33;
  sub_100005688(v31, &qword_10012DC50, &qword_1000E9DE8);
  return sub_100005688(v34, &qword_10012DC50, &qword_1000E9DE8);
}

uint64_t sub_100027AD8(uint64_t a1)
{
  v2 = type metadata accessor for AnimationCompletionCriteria();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v6 = v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10012CB60 != -1)
  {
    v4 = swift_once();
  }

  __chkstk_darwin(v4);
  v12[-2] = a1;
  v7 = withAnimation<A>(_:_:)();
  __chkstk_darwin(v7);
  v12[-2] = a1;
  v8 = swift_allocObject();
  v9 = *(a1 + 48);
  *(v8 + 48) = *(a1 + 32);
  *(v8 + 64) = v9;
  *(v8 + 80) = *(a1 + 64);
  *(v8 + 96) = *(a1 + 80);
  v10 = *(a1 + 16);
  *(v8 + 16) = *a1;
  *(v8 + 32) = v10;
  sub_10002BE54(a1, v12);
  static AnimationCompletionCriteria.logicallyComplete.getter();
  withAnimation<A>(_:completionCriteria:_:completion:)();

  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_100027D00(uint64_t a1)
{
  v3 = *(a1 + 56);
  v2[1] = *(a1 + 56);
  v4 = *(&v3 + 1);
  sub_1000035B4(&v4, v2, &qword_10012DC38, &qword_1000E9DC8);
  sub_100002B38(&qword_10012CFF0, &qword_1000ED780);
  State.wrappedValue.getter();
  v2[0] = v3;
  State.wrappedValue.setter();
  return sub_100005688(&v3, &qword_10012CFF0, &qword_1000ED780);
}

uint64_t sub_100027DD4(uint64_t a1)
{
  if (qword_10012CB60 != -1)
  {
    v2 = a1;
    swift_once();
    a1 = v2;
  }

  __chkstk_darwin(a1);
  return withAnimation<A>(_:_:)();
}

uint64_t sub_100027E94(uint64_t a1)
{
  sub_100002B38(&qword_10012DB40, &qword_1000E9C18);
  Binding.wrappedValue.getter();
  swift_getKeyPath();
  sub_10002B454(&qword_10012DB48, type metadata accessor for AccessPointModel, &unk_1000E9BD0);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  dispatch thunk of APAnimationController.highlightIndex.getter();

  sub_100002B38(&qword_10012CFE0, &qword_1000E9390);
  return State.wrappedValue.setter();
}

void sub_100027FD0(uint64_t a1)
{
  v2 = type metadata accessor for AnimationCompletionCriteria();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v12[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = *(a1 + 16);
  v14 = *(a1 + 32);
  sub_100002B38(&qword_10012DB40, &qword_1000E9C18);
  Binding.wrappedValue.getter();
  v6 = v15;
  swift_getKeyPath();
  *&v13 = v6;
  sub_10002B454(&qword_10012DB48, type metadata accessor for AccessPointModel, &unk_1000E9BD0);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v7 = *(v6 + OBJC_IVAR____TtC13GameOverlayUI16AccessPointModel__state);

  if (!v7)
  {
    if (qword_10012CB68 != -1)
    {
      v8 = swift_once();
    }

    __chkstk_darwin(v8);
    *&v12[-16] = a1;
    v9 = swift_allocObject();
    v10 = *(a1 + 48);
    *(v9 + 48) = *(a1 + 32);
    *(v9 + 64) = v10;
    *(v9 + 80) = *(a1 + 64);
    *(v9 + 96) = *(a1 + 80);
    v11 = *(a1 + 16);
    *(v9 + 16) = *a1;
    *(v9 + 32) = v11;
    sub_10002BE54(a1, &v13);
    static AnimationCompletionCriteria.logicallyComplete.getter();
    withAnimation<A>(_:completionCriteria:_:completion:)();

    (*(v3 + 8))(v5, v2);
  }
}

void sub_10002825C(uint64_t a1)
{
  sub_100002B38(&qword_10012DB40, &qword_1000E9C18);
  Binding.wrappedValue.getter();
  if (*(v2 + OBJC_IVAR____TtC13GameOverlayUI16AccessPointModel__state) != 3)
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_10002B454(&qword_10012DB48, type metadata accessor for AccessPointModel, &unk_1000E9BD0);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

void sub_1000283C0(uint64_t a1)
{
  v50 = type metadata accessor for AccessPointAnchoring();
  v49 = *(v50 - 8);
  __chkstk_darwin(v50);
  v48 = &v43 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_100002B38(&unk_100130F10, &qword_1000EA660);
  __chkstk_darwin(v3 - 8);
  v46 = &v43 - v4;
  v45 = type metadata accessor for EnvironmentValues();
  v44 = *(v45 - 8);
  __chkstk_darwin(v45);
  v43 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = type metadata accessor for AccessPointUseCase();
  v6 = *(v51 - 8);
  __chkstk_darwin(v51);
  v8 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = type metadata accessor for AccessPointContainer();
  v54 = *(v53 - 8);
  __chkstk_darwin(v53);
  v10 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = *(a1 + 16);
  v62 = *(a1 + 32);
  v55 = *(a1 + 16);
  v52 = a1;
  v56 = *(a1 + 32);
  sub_100002B38(&qword_10012DB40, &qword_1000E9C18);
  Binding.wrappedValue.getter();
  v11 = v60;
  if (v60[OBJC_IVAR____TtC13GameOverlayUI16AccessPointModel__reveal])
  {
    KeyPath = swift_getKeyPath();
    v47 = &v43;
    __chkstk_darwin(KeyPath);
    *(&v43 - 2) = v11;
    *(&v43 - 8) = 0;
    *&v55 = v11;
    sub_10002B454(&qword_10012DB48, type metadata accessor for AccessPointModel, &unk_1000E9BD0);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  else
  {
    v60[OBJC_IVAR____TtC13GameOverlayUI16AccessPointModel__reveal] = 0;
  }

  v55 = v61;
  v56 = v62;
  Binding.wrappedValue.getter();
  v13 = v60;
  v14 = OBJC_IVAR____TtC13GameOverlayUI16AccessPointModel_container;
  swift_beginAccess();
  v15 = v54;
  v16 = v53;
  v47 = *(v54 + 16);
  (v47)(v10, &v13[v14], v53);

  AccessPointContainer.useCase.getter();
  v17 = *(v15 + 8);
  v54 = v15 + 8;
  v17(v10, v16);
  v18 = v17;
  LOBYTE(v17) = AccessPointUseCase.isEphemeral.getter();
  (*(v6 + 8))(v8, v51);
  if (v17)
  {
    v19 = v52;
    BYTE8(v58) = *(v52 + 8);
    v20 = *v52;
    *&v58 = *v52;
    v21 = BYTE8(v58);

    if ((v21 & 1) == 0)
    {
      static os_log_type_t.fault.getter();
      v22 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      v23 = v43;
      EnvironmentValues.init()();
      swift_getAtKeyPath();
      sub_100005688(&v58, &qword_10012DC28, &qword_1000E9D60);
      (*(v44 + 8))(v23, v45);
      v20 = v55;
    }

    swift_getKeyPath();
    *&v55 = v20;
    sub_10002B454(&qword_10012CFC8, type metadata accessor for RemoteAlertAccessPointContext, &unk_1000EE6AC);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v25 = *(v20 + 16);
    v24 = *(v20 + 24);

    if (v24)
    {
      v26 = type metadata accessor for TaskPriority();
      v27 = v46;
      (*(*(v26 - 8) + 56))(v46, 1, 1, v26);
      type metadata accessor for MainActor();
      sub_10002BE54(v19, &v55);
      v28 = static MainActor.shared.getter();
      v29 = swift_allocObject();
      *(v29 + 16) = v28;
      *(v29 + 24) = &protocol witness table for MainActor;
      v30 = *(v19 + 48);
      *(v29 + 64) = *(v19 + 32);
      *(v29 + 80) = v30;
      *(v29 + 96) = *(v19 + 64);
      v31 = *(v19 + 80);
      v32 = *(v19 + 16);
      *(v29 + 32) = *v19;
      *(v29 + 48) = v32;
      *(v29 + 112) = v31;
      *(v29 + 120) = v25;
      *(v29 + 128) = v24;
      sub_100014BBC(0, 0, v27, &unk_1000E9D98, v29);
    }
  }

  else
  {
    v55 = v61;
    v56 = v62;
    Binding.wrappedValue.getter();
    v55 = v61;
    v56 = v62;
    Binding.wrappedValue.getter();
    v33 = v58;
    swift_getKeyPath();
    *&v55 = v33;
    sub_10002B454(&qword_10012DB48, type metadata accessor for AccessPointModel, &unk_1000E9BD0);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v34 = OBJC_IVAR____TtC13GameOverlayUI16AccessPointModel__destAnchor;
    swift_beginAccess();
    v35 = v33 + v34;
    v36 = v48;
    (*(v49 + 16))(v48, v35, v50);

    sub_10001590C(v36);

    v58 = v61;
    v59 = v62;
    Binding.wrappedValue.getter();
    v37 = v57;
    if (v57[OBJC_IVAR____TtC13GameOverlayUI16AccessPointModel__state] != 1)
    {
      v38 = swift_getKeyPath();
      __chkstk_darwin(v38);
      *(&v43 - 2) = v37;
      *(&v43 - 8) = 1;
      *&v58 = v37;
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
    }

    v58 = v61;
    v59 = v62;
    Binding.wrappedValue.getter();
    v39 = v57;
    v58 = v61;
    v59 = v62;
    Binding.wrappedValue.getter();
    v40 = v57;
    v41 = OBJC_IVAR____TtC13GameOverlayUI16AccessPointModel_container;
    swift_beginAccess();
    v42 = v53;
    (v47)(v10, &v40[v41], v53);

    AccessPointContainer.items.getter();
    v18(v10, v42);

    swift_getKeyPath();
    v57 = v39;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    dispatch thunk of APAnimationController.highlightIndex.setter();

    if (qword_10012CB48 != -1)
    {
      swift_once();
    }

    __chkstk_darwin(qword_10012D558);
    *(&v43 - 2) = v52;
    withAnimation<A>(_:_:)();
  }
}

uint64_t sub_100028E88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[5] = a4;
  v7 = type metadata accessor for EnvironmentValues();
  v6[8] = v7;
  v6[9] = *(v7 - 8);
  v6[10] = swift_task_alloc();
  type metadata accessor for MainActor();
  v6[11] = static MainActor.shared.getter();
  v9 = dispatch thunk of Actor.unownedExecutor.getter();
  v6[12] = v9;
  v6[13] = v8;

  return _swift_task_switch(sub_100028F80, v9, v8);
}

uint64_t sub_100028F80()
{
  if (qword_10012CC38 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 40);
  v2 = qword_100135CD8;
  *(v0 + 112) = qword_100135CD8;
  v3 = *(v1 + 8);
  *(v0 + 16) = *v1;
  *(v0 + 24) = v3;
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);

  if ((v5 & 1) == 0)
  {
    v7 = *(v0 + 72);
    v6 = *(v0 + 80);
    v8 = *(v0 + 64);
    static os_log_type_t.fault.getter();
    v9 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_100005688(v0 + 16, &qword_10012DC28, &qword_1000E9D60);
    (*(v7 + 8))(v6, v8);
    v4 = *(v0 + 32);
  }

  *(v0 + 120) = v4;

  return _swift_task_switch(sub_1000290F4, v2, 0);
}

uint64_t sub_1000290F4()
{
  v1 = *(v0 + 112);
  sub_10002CE40(*(v0 + 120), 1, v1);

  return _swift_task_switch(sub_100029170, v1, 0);
}

uint64_t sub_100029170()
{
  sub_1000C6540(v0[6], v0[7]);
  v1 = v0[12];
  v2 = v0[13];

  return _swift_task_switch(sub_1000291D8, v1, v2);
}

uint64_t sub_1000291D8()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_100029240(uint64_t a1)
{
  sub_100002B38(&qword_10012DB40, &qword_1000E9C18);
  Binding.wrappedValue.getter();
  if (*(v2 + OBJC_IVAR____TtC13GameOverlayUI16AccessPointModel__reveal) == 1)
  {
    *(v2 + OBJC_IVAR____TtC13GameOverlayUI16AccessPointModel__reveal) = 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_10002B454(&qword_10012DB48, type metadata accessor for AccessPointModel, &unk_1000E9BD0);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

uint64_t sub_100029410@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v69 = a1;
  v67 = a2;
  v3 = type metadata accessor for CollapsibleContentFrame(0);
  v62 = *(v3 - 8);
  __chkstk_darwin(v3);
  v72 = v4;
  v63 = v53 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = type metadata accessor for AccessPointAnchoring();
  v58 = *(v59 - 8);
  __chkstk_darwin(v59);
  v6 = v53 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = type metadata accessor for MoveTransition();
  v60 = *(v61 - 8);
  __chkstk_darwin(v61);
  v56 = v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v57 = v53 - v9;
  v10 = type metadata accessor for DynamicTypeSize();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = (v53 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = sub_100002B38(&qword_10012DB20, &qword_1000E9BF0);
  __chkstk_darwin(v14);
  v16 = v53 - v15;
  v71 = sub_100002B38(&qword_10012DB28, &qword_1000E9BF8);
  __chkstk_darwin(v71);
  v55 = v53 - v17;
  v66 = sub_100002B38(&qword_10012DB30, &unk_1000E9C00);
  v65 = *(v66 - 8);
  __chkstk_darwin(v66);
  v64 = v53 - v18;
  v19 = v2 + *(v3 + 24);
  v20 = *v19;
  v21 = *(v19 + 8);
  LOBYTE(v79) = v20;
  *(&v79 + 1) = v21;
  sub_100002B38(&qword_10012CFF0, &qword_1000ED780);
  State.wrappedValue.getter();
  if (v73 == 1)
  {
    sub_10007A024(v13);
    static AccessPointHighlightComponent.accessPointHeight(for:)();
    (*(v11 + 8))(v13, v10);
  }

  static Alignment.leading.getter();
  _FrameLayout.init(width:height:alignment:)();
  v22 = sub_100002B38(&qword_10012DB38, &qword_1000E9C10);
  (*(*(v22 - 8) + 16))(v16, v69, v22);
  v23 = &v16[*(v14 + 36)];
  v24 = v80;
  *v23 = v79;
  *(v23 + 1) = v24;
  *(v23 + 2) = v81;
  v25 = (v2 + *(v3 + 20));
  v26 = *v25;
  v68 = v25[1];
  v69 = v25[2];
  v70 = v2;
  v73 = v26;
  v74 = v68;
  v27 = v26;
  v54 = v26;
  v75 = v69;
  v53[1] = sub_100002B38(&qword_10012DB40, &qword_1000E9C18);
  Binding.wrappedValue.getter();
  v28 = v78;
  swift_getKeyPath();
  v73 = v28;
  v53[0] = sub_10002B454(&qword_10012DB48, type metadata accessor for AccessPointModel, &unk_1000E9BD0);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v29 = OBJC_IVAR____TtC13GameOverlayUI16AccessPointModel__anchor;
  swift_beginAccess();
  v30 = v58;
  v31 = v28 + v29;
  v32 = v59;
  (*(v58 + 16))(v6, v31, v59);

  AccessPointAnchoring.leading.getter();
  (*(v30 + 8))(v6, v32);
  v33 = v57;
  MoveTransition.init(edge:)();
  v34 = v60;
  v35 = v61;
  (*(v60 + 16))(v56, v33, v61);
  sub_10002B454(&qword_10012DB50, &type metadata accessor for MoveTransition, &protocol conformance descriptor for MoveTransition);
  v36 = AnyTransition.init<A>(_:)();
  (*(v34 + 8))(v33, v35);
  v37 = v16;
  v38 = v55;
  sub_100014830(v37, v55, &qword_10012DB20, &qword_1000E9BF0);
  *(v38 + *(v71 + 36)) = v36;
  v73 = v27;
  v74 = v68;
  v75 = v69;
  Binding.wrappedValue.getter();
  v39 = v77;
  swift_getKeyPath();
  v73 = v39;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  LOBYTE(v36) = *(v39 + OBJC_IVAR____TtC13GameOverlayUI16AccessPointModel__state);

  LOBYTE(v73) = v36;
  v40 = v63;
  sub_10002D940(v70, v63, type metadata accessor for CollapsibleContentFrame);
  v41 = (*(v62 + 80) + 16) & ~*(v62 + 80);
  v42 = swift_allocObject();
  sub_10002D7B8(v40, v42 + v41, type metadata accessor for CollapsibleContentFrame);
  v62 = sub_10002B4F8();
  v45 = sub_10002B3AC(v62, v43, v44);
  v46 = v64;
  v47 = v71;
  View.onChange<A>(of:initial:_:)();

  sub_100005688(v38, &qword_10012DB28, &qword_1000E9BF8);
  v73 = v54;
  v74 = v68;
  v75 = v69;
  Binding.wrappedValue.getter();
  v48 = v77;
  swift_getKeyPath();
  v73 = v48;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v49 = dispatch thunk of APAnimationController.highlightIndex.getter();

  v77 = v49;
  sub_10002D940(v70, v40, type metadata accessor for CollapsibleContentFrame);
  v50 = swift_allocObject();
  sub_10002D7B8(v40, v50 + v41, type metadata accessor for CollapsibleContentFrame);
  v73 = v47;
  v74 = &type metadata for AccessPointModel.AnimationState;
  v75 = v62;
  v76 = v45;
  swift_getOpaqueTypeConformance2();
  v51 = v66;
  View.onChange<A>(of:initial:_:)();

  return (*(v65 + 8))(v46, v51);
}

void sub_100029DF8(uint64_t a1)
{
  type metadata accessor for CollapsibleContentFrame(0);
  sub_100002B38(&qword_10012DB40, &qword_1000E9C18);
  Binding.wrappedValue.getter();
  swift_getKeyPath();
  sub_10002B454(&qword_10012DB48, type metadata accessor for AccessPointModel, &unk_1000E9BD0);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(v2 + OBJC_IVAR____TtC13GameOverlayUI16AccessPointModel__state);

  if (v1 == 3)
  {
    sub_100002B38(&qword_10012CFF0, &qword_1000ED780);
    State.wrappedValue.setter();
  }
}

void sub_100029F44()
{
  v1 = type metadata accessor for AnimationCompletionCriteria();
  v25 = *(v1 - 8);
  v26 = v1;
  __chkstk_darwin(v1);
  v24 = &v23 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for CollapsibleContentFrame(0);
  v23 = *(v3 - 1);
  v4 = *(v23 + 64);
  __chkstk_darwin(v3);
  v5 = type metadata accessor for AccessPointContainer();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = v0 + v3[5];
  v33 = *v9;
  v34 = *(v9 + 8);
  sub_100002B38(&qword_10012DB40, &qword_1000E9C18);
  Binding.wrappedValue.getter();
  v10 = v31;
  v11 = OBJC_IVAR____TtC13GameOverlayUI16AccessPointModel_container;
  swift_beginAccess();
  (*(v6 + 16))(v8, v10 + v11, v5);
  swift_getKeyPath();
  v31 = v10;
  sub_10002B454(&qword_10012DB48, type metadata accessor for AccessPointModel, &unk_1000E9BD0);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v12 = dispatch thunk of APAnimationController.highlightIndex.getter();

  v13 = AccessPointContainer.isCollapsibleItem(at:)(v12);

  (*(v6 + 8))(v8, v5);
  v14 = v0 + v3[6];
  v15 = *v14;
  v16 = *(v14 + 8);
  LOBYTE(v31) = *v14;
  v32 = v16;
  sub_100002B38(&qword_10012CFF0, &qword_1000ED780);
  State.wrappedValue.getter();
  if (v28 == 1 && !v13 || (LOBYTE(v31) = v15, v32 = v16, State.wrappedValue.getter(), (v28 & 1) == 0) && v13)
  {
    v17 = v0 + v3[7];
    v18 = *v17;
    v19 = *(v17 + 8);
    LOBYTE(v31) = *v17;
    v32 = v19;
    State.wrappedValue.getter();
    if (v28 == 1)
    {
      LOBYTE(v31) = v18;
      v32 = v19;
      v28 = 0;
      State.wrappedValue.setter();
      LOBYTE(v31) = v15;
      v32 = v16;

      State.wrappedValue.getter();
      v28 = v15;
      v29 = v16;
      v27 = (v30 & 1) == 0;
      State.wrappedValue.setter();
    }

    else
    {
      if (qword_10012CB60 != -1)
      {
        swift_once();
      }

      sub_10002D940(v0, &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for CollapsibleContentFrame);
      v20 = (*(v23 + 80) + 16) & ~*(v23 + 80);
      v21 = swift_allocObject();
      sub_10002D7B8(&v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v21 + v20, type metadata accessor for CollapsibleContentFrame);
      v22 = v24;
      static AnimationCompletionCriteria.logicallyComplete.getter();
      withAnimation<A>(_:completionCriteria:_:completion:)();

      (*(v25 + 8))(v22, v26);
    }
  }
}

uint64_t sub_10002A440(uint64_t a1)
{
  v12[0] = type metadata accessor for AnimationCompletionCriteria();
  v2 = *(v12[0] - 8);
  __chkstk_darwin(v12[0]);
  v4 = v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for CollapsibleContentFrame(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5 - 8);
  if (qword_10012CB58 != -1)
  {
    v8 = swift_once();
  }

  __chkstk_darwin(v8);
  v12[-2] = a1;
  sub_10002D940(a1, v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for CollapsibleContentFrame);
  v9 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v10 = swift_allocObject();
  sub_10002D7B8(v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v10 + v9, type metadata accessor for CollapsibleContentFrame);
  static AnimationCompletionCriteria.logicallyComplete.getter();
  withAnimation<A>(_:completionCriteria:_:completion:)();

  return (*(v2 + 8))(v4, v12[0]);
}

double sub_10002A6A0(uint64_t a1)
{
  type metadata accessor for CollapsibleContentFrame(0);

  sub_100002B38(&qword_10012CFF0, &qword_1000ED780);
  State.wrappedValue.getter();
  State.wrappedValue.setter();

  return result;
}

void sub_10002A75C(char *a1)
{
  v2 = type metadata accessor for AnimationCompletionCriteria();
  v46 = *(v2 - 8);
  v47 = v2;
  __chkstk_darwin(v2);
  v45 = &v39 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for CollapsibleContentFrame(0);
  v5 = v4 - 8;
  v41 = *(v4 - 8);
  __chkstk_darwin(v4);
  v42 = v6;
  v43 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for AccessPointAnchoring();
  v51 = *(v7 - 8);
  v52 = v7;
  __chkstk_darwin(v7);
  v48 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v49 = &v39 - v10;
  __chkstk_darwin(v11);
  v13 = &v39 - v12;
  v14 = *(v5 + 28);
  v44 = a1;
  v15 = &a1[v14];
  v17 = *v15;
  v16 = *(v15 + 1);
  v18 = *(v15 + 2);
  v60 = *v15;
  v61 = v16;
  v50 = v16;
  v62 = v18;
  sub_100002B38(&qword_10012DB40, &qword_1000E9C18);
  Binding.wrappedValue.getter();
  v19 = v57;
  swift_getKeyPath();
  v60 = v19;
  sub_10002B454(&qword_10012DB48, type metadata accessor for AccessPointModel, &unk_1000E9BD0);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  LODWORD(v5) = *(v19 + OBJC_IVAR____TtC13GameOverlayUI16AccessPointModel__state);

  if (v5 == 1)
  {
    v60 = v17;
    v61 = v50;
    v62 = v18;
    Binding.wrappedValue.getter();
    v20 = v57;
    swift_getKeyPath();
    v60 = v20;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v21 = OBJC_IVAR____TtC13GameOverlayUI16AccessPointModel__destAnchor;
    swift_beginAccess();
    v23 = v51;
    v22 = v52;
    v40 = *(v51 + 16);
    v40(v13, v20 + v21, v52);

    LOBYTE(v21) = AccessPointAnchoring.bottom.getter();
    v24 = *(v23 + 8);
    v24(v13, v22);
    if (v21)
    {
      v39 = v24;
      v57 = v17;
      v58 = v50;
      v59 = v18;
      Binding.wrappedValue.getter();
      v25 = v55;
      swift_getKeyPath();
      v57 = v25;
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v26 = OBJC_IVAR____TtC13GameOverlayUI16AccessPointModel__anchor;
      swift_beginAccess();
      v27 = v49;
      v28 = v52;
      v40(v49, v25 + v26, v52);

      v29 = v48;
      (*(v51 + 104))(v48, enum case for AccessPointAnchoring.topCentered(_:), v28);
      sub_10002B454(&qword_10012DB80, &type metadata accessor for AccessPointAnchoring, &protocol conformance descriptor for AccessPointAnchoring);
      dispatch thunk of RawRepresentable.rawValue.getter();
      dispatch thunk of RawRepresentable.rawValue.getter();
      if (v55 == v53 && v56 == v54)
      {
        v30 = v39;
        v39(v29, v28);
        v30(v27, v28);
      }

      else
      {
        v31 = _stringCompareWithSmolCheck(_:_:expecting:)();
        v32 = v39;
        v39(v29, v28);
        v32(v27, v28);

        if ((v31 & 1) == 0)
        {
          return;
        }
      }

      if (qword_10012CB48 != -1)
      {
        swift_once();
      }

      v33 = Animation.delay(_:)();
      __chkstk_darwin(v33);
      v35 = v43;
      v34 = v44;
      *(&v39 - 2) = v44;
      sub_10002D940(v34, v35, type metadata accessor for CollapsibleContentFrame);
      v36 = (*(v41 + 80) + 16) & ~*(v41 + 80);
      v37 = swift_allocObject();
      sub_10002D7B8(v35, v37 + v36, type metadata accessor for CollapsibleContentFrame);
      v38 = v45;
      static AnimationCompletionCriteria.logicallyComplete.getter();
      withAnimation<A>(_:completionCriteria:_:completion:)();

      (*(v46 + 8))(v38, v47);
    }
  }
}

void sub_10002AE48(uint64_t a1)
{
  type metadata accessor for CollapsibleContentFrame(0);
  sub_100002B38(&qword_10012DB40, &qword_1000E9C18);
  Binding.wrappedValue.getter();
  if (*(v2 + OBJC_IVAR____TtC13GameOverlayUI16AccessPointModel__reveal))
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_10002B454(&qword_10012DB48, type metadata accessor for AccessPointModel, &unk_1000E9BD0);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  else
  {
    *(v2 + OBJC_IVAR____TtC13GameOverlayUI16AccessPointModel__reveal) = 0;
  }
}

uint64_t sub_10002AFBC(uint64_t a1)
{
  v2 = type metadata accessor for AccessPointAnchoring();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = (a1 + *(type metadata accessor for CollapsibleContentFrame(0) + 20));
  v8 = v6[1];
  v9 = v6[2];
  v14 = *v6;
  v7 = v14;
  v15 = v8;
  v16 = v9;
  sub_100002B38(&qword_10012DB40, &qword_1000E9C18);
  Binding.wrappedValue.getter();
  v14 = v7;
  v15 = v8;
  v16 = v9;
  Binding.wrappedValue.getter();
  v10 = v13[2];
  swift_getKeyPath();
  v14 = v10;
  sub_10002B454(&qword_10012DB48, type metadata accessor for AccessPointModel, &unk_1000E9BD0);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v11 = OBJC_IVAR____TtC13GameOverlayUI16AccessPointModel__destAnchor;
  swift_beginAccess();
  (*(v3 + 16))(v5, v10 + v11, v2);

  sub_10001590C(v5);

  if (qword_10012CB48 != -1)
  {
    swift_once();
  }

  __chkstk_darwin(qword_10012D558);
  v13[-2] = a1;
  return withAnimation<A>(_:_:)();
}

void sub_10002B228(uint64_t a1)
{
  type metadata accessor for CollapsibleContentFrame(0);
  sub_100002B38(&qword_10012DB40, &qword_1000E9C18);
  Binding.wrappedValue.getter();
  if (*(v2 + OBJC_IVAR____TtC13GameOverlayUI16AccessPointModel__reveal) == 1)
  {
    *(v2 + OBJC_IVAR____TtC13GameOverlayUI16AccessPointModel__reveal) = 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_10002B454(&qword_10012DB48, type metadata accessor for AccessPointModel, &unk_1000E9BD0);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

unint64_t sub_10002B3AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_10012DB18;
  if (!qword_10012DB18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012DB18);
  }

  return result;
}

uint64_t sub_10002B454(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_10002B4F8()
{
  result = qword_10012DB58;
  if (!qword_10012DB58)
  {
    sub_100005144(&qword_10012DB28, &qword_1000E9BF8);
    sub_10002B5B0();
    sub_1000057D8(&qword_10012DB70, &qword_10012DB78, &qword_1000EB100, &protocol conformance descriptor for _TraitWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012DB58);
  }

  return result;
}

unint64_t sub_10002B5B0()
{
  result = qword_10012DB60;
  if (!qword_10012DB60)
  {
    sub_100005144(&qword_10012DB20, &qword_1000E9BF0);
    sub_1000057D8(&qword_10012DB68, &qword_10012DB38, &qword_1000E9C10, &protocol conformance descriptor for _ViewModifier_Content<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012DB60);
  }

  return result;
}

uint64_t sub_10002B6A8()
{
  v1 = *(type metadata accessor for CollapsibleContentFrame(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  sub_100002B38(&qword_100132570, &unk_1000E9C70);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v3 = type metadata accessor for DynamicTypeSize();
    (*(*(v3 - 8) + 8))(v0 + v2, v3);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t (*sub_10002B860(uint64_t **a1, uint64_t a2, uint64_t a3))()
{
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  *a1 = v6;
  v6[4] = sub_10002CACC(v6, a2, a3);
  return sub_10002B8E8;
}

void sub_10002B8E8(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

uint64_t sub_10002B934(uint64_t (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return 0;
  }

  v7 = 0;
  v8 = *(type metadata accessor for RemoteAlertRequest(0) - 8);
  v9 = a3 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
  v10 = *(v8 + 72);
  while (1)
  {
    v11 = a1(v9);
    if (v3 || (v11 & 1) != 0)
    {
      break;
    }

    ++v7;
    v9 += v10;
    if (v4 == v7)
    {
      return 0;
    }
  }

  return v7;
}

uint64_t sub_10002BA20@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_10002CE18(v5);
    v5 = result;
  }

  v7 = v5[2];
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = v7 - 1;
    v9 = *(type metadata accessor for RemoteAlertRequest(0) - 8);
    v10 = *(v9 + 72);
    v11 = v5 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + v10 * a1;
    result = sub_10002D7B8(v11, a2, type metadata accessor for RemoteAlertRequest);
    if (v10 > 0 || v11 >= v11 + v10 + v10 * (v8 - a1))
    {
      result = swift_arrayInitWithTakeFrontToBack();
    }

    else if (v10)
    {
      result = swift_arrayInitWithTakeBackToFront();
    }

    v5[2] = v8;
    *v2 = v5;
  }

  return result;
}

uint64_t sub_10002BB80(uint64_t (*a1)(void), uint64_t (*a2)(uint64_t))
{
  v3 = *(a1(0) - 8);
  v4 = v2 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return a2(v4);
}

unint64_t sub_10002BD64()
{
  result = qword_10012DBA8;
  if (!qword_10012DBA8)
  {
    sub_100005144(&qword_10012DB88, &qword_1000E9CF8);
    sub_1000057D8(&qword_10012DBB0, &qword_10012DBB8, &qword_1000E9D18, &protocol conformance descriptor for HStack<A>);
    sub_1000057D8(&qword_10012DBC0, &qword_10012DBC8, &qword_1000E9D20, &protocol conformance descriptor for _ForegroundStyleModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012DBA8);
  }

  return result;
}

unint64_t sub_10002BE8C()
{
  result = qword_10012DBF8;
  if (!qword_10012DBF8)
  {
    sub_100005144(&qword_10012DB90, &qword_1000E9D00);
    sub_10002BF44();
    sub_1000057D8(&qword_10012DC18, &qword_10012DBF0, &qword_1000E9D48, &protocol conformance descriptor for _ClipEffect<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012DBF8);
  }

  return result;
}

unint64_t sub_10002BF44()
{
  result = qword_10012DC00;
  if (!qword_10012DC00)
  {
    sub_100005144(&qword_10012DBE0, &qword_1000E9D38);
    sub_10002BFFC();
    sub_1000057D8(&qword_10012DC10, &qword_10012DBE8, &qword_1000E9D40, &protocol conformance descriptor for _ContentShapeModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012DC00);
  }

  return result;
}

unint64_t sub_10002BFFC()
{
  result = qword_10012DC08;
  if (!qword_10012DC08)
  {
    sub_100005144(&qword_10012DBD8, &unk_1000E9D28);
    sub_100005144(&qword_10012DB88, &qword_1000E9CF8);
    type metadata accessor for APAnimationController();
    sub_10002BD64();
    sub_10002B454(&qword_10012DBD0, &type metadata accessor for APAnimationController, &protocol conformance descriptor for APAnimationController);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012DC08);
  }

  return result;
}

uint64_t sub_10002C17C()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_10002C1FC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[15];
  v7 = v1[16];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100014BAC;

  return sub_100028E88(a1, v4, v5, (v1 + 4), v6, v7);
}

uint64_t sub_10002C2C0(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_10002C3B8;

  return v6(a1);
}

uint64_t sub_10002C3B8()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_10002C4B0()
{

  return swift_deallocObject();
}

uint64_t sub_10002C4E8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100014BAC;

  return sub_10002C2C0(a1, v4);
}

uint64_t sub_10002C5A0(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      Hasher.init(_seed:)();

      String.hash(into:)();
      v9 = Hasher._finalize()();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        if (v10 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = (v11 + 16 * v3);
        v13 = (v11 + 16 * v6);
        if (v3 != v6 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        v15 = (v14 + 8 * v3);
        v16 = (v14 + 8 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v17 = *(a2 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v19;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_10002C750(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    while (1)
    {
      Hasher.init(_seed:)();

      String.hash(into:)();
      v9 = Hasher._finalize()();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        break;
      }

      if (v10 < v8)
      {
        goto LABEL_10;
      }

LABEL_11:
      v11 = *(a2 + 48);
      v12 = (v11 + 16 * v3);
      v13 = (v11 + 16 * v6);
      if (v3 != v6 || v12 >= v13 + 1)
      {
        *v12 = *v13;
      }

      v14 = *(a2 + 56);
      v15 = *(*(type metadata accessor for RemoteAlertRequest(0) - 8) + 72);
      v16 = v15 * v3;
      result = v14 + v15 * v3;
      v17 = v15 * v6;
      v18 = v14 + v15 * v6 + v15;
      if (v16 < v17 || result >= v18)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v16 == v17)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
      if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (v10 < v8)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v3 < v10)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v20 = *(a2 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v22;
    ++*(a2 + 36);
  }

  return result;
}

void sub_10002C93C(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = *(*(a2 + 48) + 8 * v6);
      v11 = NSObject._rawHashValue(seed:)(v9);

      v12 = v11 & v7;
      if (v3 >= v8)
      {
        if (v12 >= v8 && v3 >= v12)
        {
LABEL_15:
          v15 = *(a2 + 48);
          v16 = (v15 + 8 * v3);
          v17 = (v15 + 8 * v6);
          if (v3 != v6 || v16 >= v17 + 1)
          {
            *v16 = *v17;
          }

          v18 = *(a2 + 56);
          v19 = (v18 + 8 * v3);
          v20 = (v18 + 8 * v6);
          if (v3 != v6 || v19 >= v20 + 1)
          {
            *v19 = *v20;
            v3 = v6;
          }
        }
      }

      else if (v12 >= v8 || v3 >= v12)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }
}

void (*sub_10002CACC(uint64_t *a1, uint64_t a2, uint64_t a3))(uint64_t a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x50uLL);
  }

  v7 = v6;
  *a1 = v6;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7[8] = sub_10002CDE4(v7);
  v7[9] = sub_10002CBD8(v7 + 4, a2, a3, isUniquelyReferenced_nonNull_native);
  return sub_10002CB78;
}

void sub_10002CB78(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 64);
  (*(*a1 + 72))();
  v2(v1, 0);

  free(v1);
}

void (*sub_10002CBD8(void *a1, uint64_t a2, uint64_t a3, char a4))(uint64_t **a1)
{
  v5 = v4;
  if (&_swift_coroFrameAlloc)
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(0x30uLL);
  }

  v11 = v10;
  *a1 = v10;
  v10[2] = a3;
  v10[3] = v4;
  v10[1] = a2;
  v12 = *v4;
  v13 = sub_1000C547C(a2, a3);
  *(v11 + 40) = v14 & 1;
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_16;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a4 & 1) == 0)
  {
    if (v20 >= v18 && (a4 & 1) == 0)
    {
      v21 = v13;
      sub_1000CF074();
      v13 = v21;
      goto LABEL_11;
    }

    sub_1000CD1EC(v18, a4 & 1);
    v13 = sub_1000C547C(a2, a3);
    if ((v19 & 1) == (v22 & 1))
    {
      goto LABEL_11;
    }

LABEL_16:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_11:
  v11[4] = v13;
  if (v19)
  {
    v23 = *(*(*v5 + 56) + 8 * v13);
  }

  else
  {
    v23 = 0;
  }

  *v11 = v23;
  return sub_10002CD30;
}

void sub_10002CD30(uint64_t **a1)
{
  v1 = *a1;
  v2 = **a1;
  v3 = *(*a1 + 40);
  if (v2)
  {
    v4 = v1[4];
    v5 = *v1[3];
    if (v3)
    {
      *(v5[7] + 8 * v4) = v2;
    }

    else
    {
      sub_1000CEF28(v4, v1[1], v1[2], v2, v5);
    }
  }

  else if ((*a1)[5])
  {
    v6 = v1[4];
    v7 = *v1[3];
    sub_10002E718(*(v7 + 48) + 16 * v6);
    sub_10002C5A0(v6, v7);
  }

  free(v1);
}

uint64_t (*sub_10002CDE4(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_10002CE0C;
}

void sub_10002CE40(uint64_t a1, int a2, uint64_t a3)
{
  v72 = a3;
  v71 = a2;
  v4 = sub_100002B38(&qword_10012DC30, &qword_1000EEC90);
  __chkstk_darwin(v4 - 8);
  v6 = &v65 - v5;
  v7 = sub_100002B38(&unk_100130F10, &qword_1000EA660);
  __chkstk_darwin(v7 - 8);
  v70 = &v65 - v8;
  v9 = type metadata accessor for RemoteAlertRequest(0);
  v69 = *(v9 - 8);
  __chkstk_darwin(v9);
  v68 = &v65 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v65 - v12;
  __chkstk_darwin(v14);
  v16 = &v65 - v15;
  v79 = type metadata accessor for RemoteAlertAccessPointContext(0);
  v80 = &off_1001240E8;
  v78[0] = a1;
  sub_10002D754(v78, v79);

  v73 = sub_1000BE5F4();
  if (!v17)
  {
    goto LABEL_13;
  }

  v18 = v17;
  if (qword_10012CC18 != -1)
  {
    swift_once();
  }

  v19 = type metadata accessor for Logger();
  v20 = sub_100011F80(v19, qword_100135C88);
  sub_10002E8A8(v78, v75);

  v65 = v20;
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.info.getter();

  v23 = os_log_type_enabled(v21, v22);
  v67 = v6;
  v66 = v9;
  if (v23)
  {
    v24 = swift_slowAlloc();
    v74[0] = swift_slowAlloc();
    *v24 = 136315394;
    *(v24 + 4) = sub_1000BA5C8(v73, v18, v74);
    *(v24 + 12) = 2080;
    v26 = v76;
    v25 = v77;
    sub_10002D754(v75, v76);
    v27 = (*(v25 + 16))(v26, v25);
    v29 = v28;
    sub_10002E6CC(v75);
    v30 = sub_1000BA5C8(v27, v29, v74);

    *(v24 + 14) = v30;
    _os_log_impl(&_mh_execute_header, v21, v22, "Finding completed request for token: %s, contextID: %s", v24, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    sub_10002E6CC(v75);
  }

  v31 = v72;
  swift_beginAccess();
  v32 = *(v31 + 112);
  if (!*(v32 + 16))
  {
    goto LABEL_12;
  }

  v33 = sub_1000C547C(v73, v18);
  if ((v34 & 1) == 0)
  {

LABEL_12:

LABEL_13:
    sub_10002E6CC(v78);
    return;
  }

  v35 = *(*(v32 + 56) + 8 * v33);

  __chkstk_darwin(v36);
  *(&v65 - 2) = v78;
  v37 = sub_10002B934(sub_10002D798, (&v65 - 4), v35);
  v39 = v38;

  if (v39)
  {
    goto LABEL_12;
  }

  v40 = sub_1000C7BE8(v75);
  v41 = sub_10002B860(v74, v73, v18);
  if (!*v42)
  {
    (v41)(v74, 0);

    (v40)(v75, 0);
    goto LABEL_13;
  }

  sub_10002BA20(v37, v13);
  (v41)(v74, 0);
  (v40)(v75, 0);
  sub_10002D7B8(v13, v16, type metadata accessor for RemoteAlertRequest);

  v43 = Logger.logObject.getter();
  v44 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v43, v44))
  {
    v45 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    v75[0] = v46;
    *v45 = 136315138;
    *(v45 + 4) = sub_1000BA5C8(v73, v18, v75);
    _os_log_impl(&_mh_execute_header, v43, v44, "Removing completed request for token: %s", v45, 0xCu);
    sub_10002E6CC(v46);
  }

  v47 = v67;
  v48 = v66;
  v49 = &v16[*(v66 + 32)];
  v50 = v72;
  if (*v49)
  {
    (*v49)();
  }

  v51 = *(v50 + 112);
  if (!*(v51 + 16))
  {
LABEL_26:
    if (v71)
    {
      v57 = type metadata accessor for TaskPriority();
      v58 = v70;
      (*(*(v57 - 8) + 56))(v70, 1, 1, v57);
      v59 = swift_allocObject();
      v59[2] = 0;
      v59[3] = 0;
      v59[4] = v73;
      v59[5] = v18;
      sub_100014BBC(0, 0, v58, &unk_1000E9DC0, v59);

LABEL_29:
      sub_10002D820(v16);
      goto LABEL_13;
    }

LABEL_28:

    goto LABEL_29;
  }

  v52 = sub_1000C547C(v73, v18);
  if ((v53 & 1) == 0 || (v54 = *(*(v51 + 56) + 8 * v52), , , !*(v54 + 16)))
  {

    goto LABEL_26;
  }

  v55 = (*(v69 + 80) + 32) & ~*(v69 + 80);
  v56 = v68;
  sub_10002D940(v54 + v55, v68, type metadata accessor for RemoteAlertRequest);

  if (sub_1000D0750(v56, 0, 0, 0))
  {
    sub_10002D820(v56);
    goto LABEL_28;
  }

  v60 = sub_1000C7BE8(v75);
  v61 = sub_10002B860(v74, v73, v18);
  v63 = *v62;
  if (!*v62)
  {
    (v61)(v74, 0);

    (v60)(v75, 0);
    v64 = 1;
    goto LABEL_34;
  }

  if (*(v63 + 16))
  {
    sub_10002D940(v63 + v55, v47, type metadata accessor for RemoteAlertRequest);
    sub_10002E60C(0, 1);
    (v61)(v74, 0);

    (v60)(v75, 0);
    v64 = 0;
LABEL_34:
    sub_10002D820(v68);
    sub_10002D820(v16);
    (*(v69 + 56))(v47, v64, 1, v48);
    sub_100005688(v47, &qword_10012DC30, &qword_1000EEC90);
    goto LABEL_13;
  }

  __break(1u);
}

void *sub_10002D754(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_10002D7B8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10002D820(uint64_t a1)
{
  v2 = type metadata accessor for RemoteAlertRequest(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10002D880(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100014BAC;

  return sub_1000C8E1C(a1, v4, v5, v7, v6);
}

uint64_t sub_10002D940(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_10002D9A8(uint64_t a1, int a2, uint64_t a3)
{
  v72 = a3;
  v71 = a2;
  v4 = sub_100002B38(&qword_10012DC30, &qword_1000EEC90);
  __chkstk_darwin(v4 - 8);
  v6 = &v65 - v5;
  v7 = sub_100002B38(&unk_100130F10, &qword_1000EA660);
  __chkstk_darwin(v7 - 8);
  v70 = &v65 - v8;
  v9 = type metadata accessor for RemoteAlertRequest(0);
  v69 = *(v9 - 8);
  __chkstk_darwin(v9);
  v68 = &v65 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v65 - v12;
  __chkstk_darwin(v14);
  v16 = &v65 - v15;
  v79 = type metadata accessor for RemoteAlertGameModeBannerContext(0);
  v80 = &off_100124070;
  v78[0] = a1;
  sub_10002D754(v78, v79);

  v73 = sub_1000C0704();
  if (!v17)
  {
    goto LABEL_13;
  }

  v18 = v17;
  if (qword_10012CC18 != -1)
  {
    swift_once();
  }

  v19 = type metadata accessor for Logger();
  v20 = sub_100011F80(v19, qword_100135C88);
  sub_10002E8A8(v78, v75);

  v65 = v20;
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.info.getter();

  v23 = os_log_type_enabled(v21, v22);
  v67 = v6;
  v66 = v9;
  if (v23)
  {
    v24 = swift_slowAlloc();
    v74[0] = swift_slowAlloc();
    *v24 = 136315394;
    *(v24 + 4) = sub_1000BA5C8(v73, v18, v74);
    *(v24 + 12) = 2080;
    v26 = v76;
    v25 = v77;
    sub_10002D754(v75, v76);
    v27 = (*(v25 + 16))(v26, v25);
    v29 = v28;
    sub_10002E6CC(v75);
    v30 = sub_1000BA5C8(v27, v29, v74);

    *(v24 + 14) = v30;
    _os_log_impl(&_mh_execute_header, v21, v22, "Finding completed request for token: %s, contextID: %s", v24, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    sub_10002E6CC(v75);
  }

  v31 = v72;
  swift_beginAccess();
  v32 = *(v31 + 112);
  if (!*(v32 + 16))
  {
    goto LABEL_12;
  }

  v33 = sub_1000C547C(v73, v18);
  if ((v34 & 1) == 0)
  {

LABEL_12:

LABEL_13:
    sub_10002E6CC(v78);
    return;
  }

  v35 = *(*(v32 + 56) + 8 * v33);

  __chkstk_darwin(v36);
  *(&v65 - 2) = v78;
  v37 = sub_10002B934(sub_100032198, (&v65 - 4), v35);
  v39 = v38;

  if (v39)
  {
    goto LABEL_12;
  }

  v40 = sub_1000C7BE8(v75);
  v41 = sub_10002B860(v74, v73, v18);
  if (!*v42)
  {
    (v41)(v74, 0);

    (v40)(v75, 0);
    goto LABEL_13;
  }

  sub_10002BA20(v37, v13);
  (v41)(v74, 0);
  (v40)(v75, 0);
  sub_10002D7B8(v13, v16, type metadata accessor for RemoteAlertRequest);

  v43 = Logger.logObject.getter();
  v44 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v43, v44))
  {
    v45 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    v75[0] = v46;
    *v45 = 136315138;
    *(v45 + 4) = sub_1000BA5C8(v73, v18, v75);
    _os_log_impl(&_mh_execute_header, v43, v44, "Removing completed request for token: %s", v45, 0xCu);
    sub_10002E6CC(v46);
  }

  v47 = v67;
  v48 = v66;
  v49 = &v16[*(v66 + 32)];
  v50 = v72;
  if (*v49)
  {
    (*v49)();
  }

  v51 = *(v50 + 112);
  if (!*(v51 + 16))
  {
LABEL_26:
    if (v71)
    {
      v57 = type metadata accessor for TaskPriority();
      v58 = v70;
      (*(*(v57 - 8) + 56))(v70, 1, 1, v57);
      v59 = swift_allocObject();
      v59[2] = 0;
      v59[3] = 0;
      v59[4] = v73;
      v59[5] = v18;
      sub_100014BBC(0, 0, v58, &unk_1000E9F08, v59);

LABEL_29:
      sub_10002D820(v16);
      goto LABEL_13;
    }

LABEL_28:

    goto LABEL_29;
  }

  v52 = sub_1000C547C(v73, v18);
  if ((v53 & 1) == 0 || (v54 = *(*(v51 + 56) + 8 * v52), , , !*(v54 + 16)))
  {

    goto LABEL_26;
  }

  v55 = (*(v69 + 80) + 32) & ~*(v69 + 80);
  v56 = v68;
  sub_10002D940(v54 + v55, v68, type metadata accessor for RemoteAlertRequest);

  if (sub_1000D0750(v56, 0, 0, 0))
  {
    sub_10002D820(v56);
    goto LABEL_28;
  }

  v60 = sub_1000C7BE8(v75);
  v61 = sub_10002B860(v74, v73, v18);
  v63 = *v62;
  if (!*v62)
  {
    (v61)(v74, 0);

    (v60)(v75, 0);
    v64 = 1;
    goto LABEL_34;
  }

  if (*(v63 + 16))
  {
    sub_10002D940(v63 + v55, v47, type metadata accessor for RemoteAlertRequest);
    sub_10002E60C(0, 1);
    (v61)(v74, 0);

    (v60)(v75, 0);
    v64 = 0;
LABEL_34:
    sub_10002D820(v68);
    sub_10002D820(v16);
    (*(v69 + 56))(v47, v64, 1, v48);
    sub_100005688(v47, &qword_10012DC30, &qword_1000EEC90);
    goto LABEL_13;
  }

  __break(1u);
}

uint64_t sub_10002E2BC(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = sub_10002E3B0;

  return v5(v2 + 32);
}

uint64_t sub_10002E3B0()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  v5 = *v0;

  *v2 = *(v1 + 32);
  v3 = *(v5 + 8);

  return v3();
}

unint64_t sub_10002E4C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  result = type metadata accessor for RemoteAlertRequest(0);
  v10 = *(*(result - 8) + 72);
  v11 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_19;
  }

  v9 = *(*(result - 8) + 80);
  v12 = v7 + ((v9 + 32) & ~v9);
  v13 = v12 + v10 * a1;
  result = swift_arrayDestroy();
  v14 = a3 - v11;
  if (__OFSUB__(a3, v11))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v15 = v10 * a3;
  if (v14)
  {
    v16 = *(v7 + 16);
    if (!__OFSUB__(v16, a2))
    {
      result = v13 + v15;
      v17 = v12 + v10 * a2;
      if (v13 + v15 < v17 || result >= v17 + (v16 - a2) * v10)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else if (result != v17)
      {
        result = swift_arrayInitWithTakeBackToFront();
      }

      v19 = *(v7 + 16);
      v20 = __OFADD__(v19, v14);
      v21 = v19 + v14;
      if (!v20)
      {
        *(v7 + 16) = v21;
        goto LABEL_15;
      }

LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
      return result;
    }

LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

LABEL_15:
  if (a3 >= 1 && v15 > 0)
  {
    goto LABEL_22;
  }

  return result;
}

unint64_t sub_10002E60C(unint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v4 = *v2;
  v5 = *(*v2 + 16);
  if (v5 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v6 = result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v7 = result - a2;
  if (__OFSUB__(0, a2 - result))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = v5 + v7;
  if (__OFADD__(v5, v7))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v4;
  if (!isUniquelyReferenced_nonNull_native || v8 > v4[3] >> 1)
  {
    if (v5 <= v8)
    {
      v10 = v8;
    }

    else
    {
      v10 = v5;
    }

    v4 = sub_1000CBFF4(isUniquelyReferenced_nonNull_native, v10, 1, v4);
    *v2 = v4;
  }

  result = sub_10002E4C4(v6, a2, 0);
  *v2 = v4;
  return result;
}

double sub_10002E6CC(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    (*(v1 + 8))();
  }

  return result;
}

uint64_t sub_10002E7A4()
{

  return swift_deallocObject();
}

uint64_t sub_10002E8A8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_10002E910(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return sub_1000160D4(v1, v2);
}

uint64_t sub_10002E9E4()
{
  v1 = v0[4];
  v2 = (v0[2] + OBJC_IVAR____TtC13GameOverlayUI16AccessPointModel__gameBundleID);
  *v2 = v0[3];
  v2[1] = v1;
}

void sub_10002EB18(void *a1)
{
  *(*(v1 + 16) + *a1) = *(v1 + 24);
}

uint64_t sub_10002EBC4()
{
  sub_100005144(&qword_10012DB30, &unk_1000E9C00);
  sub_100005144(&qword_10012DB28, &qword_1000E9BF8);
  v0 = sub_10002B4F8();
  sub_10002B3AC(v0, v1, v2);
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_10002EC88()
{
  sub_100005144(&qword_10012DB98, &qword_1000E9D08);
  sub_100005144(&qword_10012DB90, &qword_1000E9D00);
  sub_10002BE8C();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_10002ED44(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100011720;

  return sub_1000C8E1C(a1, v4, v5, v7, v6);
}

uint64_t sub_10002EE04(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100014BAC;

  return sub_10002E2BC(a1, v4);
}

uint64_t sub_10002EEBC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100011720;

  return sub_10002E2BC(a1, v4);
}

uint64_t sub_10002EF88(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_100002B38(&qword_10012DA68, &unk_1000E99C0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + a3[6];

    return v9(v10, a2, v8);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v12 = *(a1 + a3[7]);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }

  else
  {
    v13 = sub_100002B38(&qword_100132410, &unk_1000E9F30);
    v14 = *(*(v13 - 8) + 48);
    v15 = a1 + a3[12];

    return v14(v15, a2, v13);
  }
}

uint64_t sub_10002F0DC(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = sub_100002B38(&qword_10012DA68, &unk_1000E99C0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + a4[6];

    return v11(v12, a2, a2, v10);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[7]) = (a2 - 1);
  }

  else
  {
    v13 = sub_100002B38(&qword_100132410, &unk_1000E9F30);
    v14 = *(*(v13 - 8) + 56);
    v15 = a1 + a4[12];

    return v14(v15, a2, a2, v13);
  }

  return result;
}

void sub_10002F23C(uint64_t a1)
{
  sub_100018A6C(319, &qword_10012CED0, type metadata accessor for RemoteAlertAccessPointContext, &type metadata accessor for Environment);
  if (v1 <= 0x3F)
  {
    sub_100018A6C(319, &qword_10012DAD8, &type metadata accessor for DynamicTypeSize, &type metadata accessor for Environment);
    if (v2 <= 0x3F)
    {
      sub_100018A6C(319, &qword_10012DD00, type metadata accessor for AccessPointModel, &type metadata accessor for State);
      if (v3 <= 0x3F)
      {
        sub_10002F480(319, &qword_10012CEE8, &type metadata for Bool);
        if (v4 <= 0x3F)
        {
          sub_10002F480(319, &qword_10012DD08, &type metadata for Double);
          if (v5 <= 0x3F)
          {
            type metadata accessor for GameOverlayDashboardVisibilityMonitor();
            if (v6 <= 0x3F)
            {
              sub_100018A6C(319, &unk_10012CF00, &type metadata accessor for Game, &type metadata accessor for Optional);
              if (v7 <= 0x3F)
              {
                type metadata accessor for GameDashboardLaunchContext();
                if (v8 <= 0x3F)
                {
                  type metadata accessor for BaseObjectGraph();
                  if (v9 <= 0x3F)
                  {
                    sub_10002F480(319, &unk_10012DD10, &type metadata for RectangleCornerRadii);
                    if (v10 <= 0x3F)
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
  }
}

void sub_10002F480(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = type metadata accessor for State();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_10002F518()
{
  v1 = type metadata accessor for AccessPointAnimationView(0);
  v2 = v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));

  v3 = *(v1 + 24);
  sub_100002B38(&qword_100132570, &unk_1000E9C70);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = type metadata accessor for DynamicTypeSize();
    (*(*(v4 - 8) + 8))(v2 + v3, v4);
  }

  else
  {
  }

  v5 = *(v1 + 48);
  v6 = type metadata accessor for Game();
  v7 = *(v6 - 8);
  if (!(*(v7 + 48))(v2 + v5, 1, v6))
  {
    (*(v7 + 8))(v2 + v5, v6);
  }

  return swift_deallocObject();
}

double sub_10002F79C(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for AccessPointAnimationView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_100021F10(a1, a2, v6);
}

unint64_t sub_10002F81C()
{
  result = qword_10012DDB0;
  if (!qword_10012DDB0)
  {
    sub_100005144(&qword_10012DD88, &qword_1000E9FD8);
    sub_10002F8A8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012DDB0);
  }

  return result;
}

unint64_t sub_10002F8A8()
{
  result = qword_10012DDB8;
  if (!qword_10012DDB8)
  {
    sub_100005144(&qword_10012DDA8, &qword_1000E9FF8);
    sub_10002F934();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012DDB8);
  }

  return result;
}

unint64_t sub_10002F934()
{
  result = qword_10012DDC0;
  if (!qword_10012DDC0)
  {
    sub_100005144(&qword_10012DDA0, &qword_1000E9FF0);
    sub_1000057D8(&qword_10012DDC8, &qword_10012DDD0, &qword_1000EA000, &protocol conformance descriptor for ZStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012DDC0);
  }

  return result;
}

uint64_t sub_10002FB48()
{
  v2 = *(type metadata accessor for AccessPointAnimationView(0) - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_100014BAC;

  return sub_1000265A4(v4, v5, v0 + v3);
}

uint64_t sub_10002FC2C()
{
  v1 = type metadata accessor for AccessPointAnimationView(0);
  v2 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  swift_unknownObjectRelease();
  v3 = v0 + v2;

  v4 = *(v1 + 24);
  sub_100002B38(&qword_100132570, &unk_1000E9C70);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = type metadata accessor for DynamicTypeSize();
    (*(*(v5 - 8) + 8))(v3 + v4, v5);
  }

  else
  {
  }

  v6 = *(v1 + 48);
  v7 = type metadata accessor for Game();
  v8 = *(v7 - 8);
  if (!(*(v8 + 48))(v3 + v6, 1, v7))
  {
    (*(v8 + 8))(v3 + v6, v7);
  }

  return swift_deallocObject();
}

uint64_t sub_10002FE54(uint64_t a1)
{
  v4 = *(type metadata accessor for AccessPointAnimationView(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100014BAC;

  return sub_100019220(a1, v6, v7, v1 + v5);
}

uint64_t sub_10002FF44(uint64_t a1)
{
  v4 = *(type metadata accessor for AccessPointAnimationView(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100014BAC;

  return sub_1000199A4(a1, v6, v7, v1 + v5);
}

uint64_t sub_100030050(uint64_t a1)
{
  v4 = *(type metadata accessor for AccessPointAnimationView(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100014BAC;

  return sub_100025420(a1, v6, v7, v1 + v5);
}

uint64_t sub_100030188(uint64_t a1)
{
  v4 = *(type metadata accessor for AccessPointAnimationView(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100014BAC;

  return sub_100025150(a1, v6, v7, v1 + v5);
}

uint64_t sub_100030294(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100014BAC;

  return sub_100026730(a1, v4, v5, v7, v6);
}

uint64_t sub_10003039C(uint64_t a1)
{
  v4 = *(type metadata accessor for AccessPointAnimationView(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100014BAC;

  return sub_10000EE40(a1, v6, v7, v1 + v5);
}

uint64_t sub_10003048C()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1000304CC(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1000304E0(a1, a2);
  }

  return a1;
}

uint64_t sub_1000304E0(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_100030534()
{
  v1 = type metadata accessor for AccessPointAnimationView(0);
  v2 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v3 = *(*(v1 - 8) + 64);
  swift_unknownObjectRelease();
  v4 = v0 + v2;

  v5 = *(v1 + 24);
  sub_100002B38(&qword_100132570, &unk_1000E9C70);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = type metadata accessor for DynamicTypeSize();
    (*(*(v6 - 8) + 8))(v4 + v5, v6);
  }

  else
  {
  }

  v7 = *(v1 + 48);
  v8 = type metadata accessor for Game();
  v9 = *(v8 - 8);
  if (!(*(v9 + 48))(v4 + v7, 1, v8))
  {
    (*(v9 + 8))(v4 + v7, v8);
  }

  v10 = (((v3 + v2 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;

  swift_unknownObjectRelease();
  sub_100030784(*(v0 + v10), *(v0 + v10 + 8));

  return swift_deallocObject();
}

double sub_100030784(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }

  return result;
}

uint64_t sub_1000307D8(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for AccessPointAnimationView(0) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v1 + v7);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = *(v1 + v8);
  v13 = *(v1 + v8 + 8);
  v14 = swift_task_alloc();
  *(v3 + 16) = v14;
  *v14 = v3;
  v14[1] = sub_100014BAC;

  return sub_100022F7C(a1, v10, v11, v1 + v6, v9, v12, v13);
}

double sub_10003091C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_100030784(a1, a2);
  }

  return result;
}

uint64_t sub_100030930()
{
  v1 = type metadata accessor for AccessPointAnimationView(0);
  v2 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  swift_unknownObjectRelease();
  v3 = v0 + v2;

  v4 = *(v1 + 24);
  sub_100002B38(&qword_100132570, &unk_1000E9C70);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = type metadata accessor for DynamicTypeSize();
    (*(*(v5 - 8) + 8))(v3 + v4, v5);
  }

  else
  {
  }

  v6 = *(v1 + 48);
  v7 = type metadata accessor for Game();
  v8 = *(v7 - 8);
  if (!(*(v8 + 48))(v3 + v6, 1, v7))
  {
    (*(v8 + 8))(v3 + v6, v7);
  }

  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_100030B6C(uint64_t a1)
{
  v4 = *(type metadata accessor for AccessPointAnimationView(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100014BAC;

  return sub_100022704(a1, v6, v7, v1 + v5, v8);
}

void sub_100030C94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  if (a5 < 2u)
  {

LABEL_4:

    return;
  }

  if (a5 == 2)
  {

    goto LABEL_4;
  }
}

uint64_t sub_100030CF8(char a1)
{
  v3 = *(type metadata accessor for AccessPointAnimationView(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_100021C98(a1, v4);
}

uint64_t sub_100030D90()
{
  v1 = type metadata accessor for AccessPointAnimationView(0);
  v2 = v0 + ((*(*(v1 - 8) + 80) + 17) & ~*(*(v1 - 8) + 80));

  v3 = *(v1 + 24);
  sub_100002B38(&qword_100132570, &unk_1000E9C70);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = type metadata accessor for DynamicTypeSize();
    (*(*(v4 - 8) + 8))(v2 + v3, v4);
  }

  else
  {
  }

  v5 = *(v1 + 48);
  v6 = type metadata accessor for Game();
  v7 = *(v6 - 8);
  if (!(*(v7 + 48))(v2 + v5, 1, v6))
  {
    (*(v7 + 8))(v2 + v5, v6);
  }

  return swift_deallocObject();
}

double sub_100030FB0()
{
  type metadata accessor for AccessPointAnimationView(0);
  if (*(v0 + 16) == 1)
  {
    return sub_1000215B4();
  }

  return result;
}

unint64_t sub_100031018()
{
  result = qword_10012DE28;
  if (!qword_10012DE28)
  {
    sub_100005144(&qword_10012DE20, &qword_1000EA1B0);
    sub_1000057D8(&qword_10012DE30, &qword_10012DE38, &qword_1000EA1B8, &protocol conformance descriptor for GeometryReader<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012DE28);
  }

  return result;
}

unint64_t sub_1000310D0()
{
  result = qword_10012DE40;
  if (!qword_10012DE40)
  {
    sub_100005144(&qword_10012DDF0, &qword_1000EA160);
    sub_10003115C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012DE40);
  }

  return result;
}

unint64_t sub_10003115C()
{
  result = qword_10012DE48;
  if (!qword_10012DE48)
  {
    sub_100005144(&qword_10012DE08, &qword_1000EA178);
    sub_1000057D8(&qword_10012DE50, &qword_10012DE58, &qword_1000EA1C0, &protocol conformance descriptor for VStack<A>);
    sub_1000057D8(&qword_10012DE60, &qword_10012DE18, &qword_1000EA1A8, &protocol conformance descriptor for _BackgroundModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012DE48);
  }

  return result;
}

uint64_t sub_100031240@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for AccessPointAnimationView(0) - 8);
  v6 = (v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80)));

  return sub_10001CF5C(v6, a1, a2);
}

uint64_t sub_1000312C8()
{
  v1 = type metadata accessor for AccessPointAnimationView(0);
  v2 = (*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80);
  v12 = *(*(v1 - 8) + 64);
  v13 = type metadata accessor for GeometryProxy();
  v3 = *(v13 - 8);
  v4 = *(v3 + 80);
  v5 = v0 + v2;

  v6 = *(v1 + 24);
  sub_100002B38(&qword_100132570, &unk_1000E9C70);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = type metadata accessor for DynamicTypeSize();
    (*(*(v7 - 8) + 8))(v5 + v6, v7);
  }

  else
  {
  }

  v8 = *(v1 + 48);
  v9 = type metadata accessor for Game();
  v10 = *(v9 - 8);
  if (!(*(v10 + 48))(v5 + v8, 1, v9))
  {
    (*(v10 + 8))(v5 + v8, v9);
  }

  (*(v3 + 8))(v0 + ((v2 + v12 + v4) & ~v4), v13);

  return swift_deallocObject();
}

void sub_10003157C()
{
  v1 = *(type metadata accessor for AccessPointAnimationView(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(type metadata accessor for GeometryProxy() - 8);
  sub_10001E434(v0 + ((v2 + v3 + *(v4 + 80)) & ~*(v4 + 80)));
}

unint64_t sub_10003163C()
{
  result = qword_10012DE98;
  if (!qword_10012DE98)
  {
    sub_100005144(&qword_10012DE68, &qword_1000EA1C8);
    sub_1000057D8(&qword_10012DEA0, &qword_10012DEA8, &qword_1000EA1F8, &protocol conformance descriptor for VStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012DE98);
  }

  return result;
}

uint64_t sub_1000316F4()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_100031734(uint64_t a1)
{
  v4 = *(v1 + 2);
  v5 = *(v1 + 3);
  v6 = *(v1 + 4);
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_100014BAC;

  return sub_10000FAB8(v7, v8, v9, v10, a1, v4, v5, v6);
}

unint64_t sub_100031820()
{
  result = qword_10012DF10;
  if (!qword_10012DF10)
  {
    sub_100005144(&qword_10012DEE0, &qword_1000EA240);
    sub_1000318DC();
    sub_10002B454(&qword_10012DF50, type metadata accessor for CollapsibleContentFrame, &unk_1000E9AFC);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012DF10);
  }

  return result;
}

unint64_t sub_1000318DC()
{
  result = qword_10012DF18;
  if (!qword_10012DF18)
  {
    sub_100005144(&qword_10012DF20, &qword_1000EA2A0);
    sub_100031994();
    sub_1000057D8(&qword_10012DF40, &qword_10012DF48, &qword_1000EA2B0, &protocol conformance descriptor for _MatchedGeometryEffect<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012DF18);
  }

  return result;
}

unint64_t sub_100031994()
{
  result = qword_10012DF28;
  if (!qword_10012DF28)
  {
    v1 = sub_100005144(&qword_10012DF30, &qword_1000EA2A8);
    sub_100031A20(v1, v2, v3);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012DF28);
  }

  return result;
}

unint64_t sub_100031A20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_10012DF38;
  if (!qword_10012DF38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012DF38);
  }

  return result;
}

unint64_t sub_100031ACC()
{
  result = qword_10012DF68;
  if (!qword_10012DF68)
  {
    sub_100005144(&qword_10012DF08, &qword_1000EA268);
    sub_100031B58();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012DF68);
  }

  return result;
}

unint64_t sub_100031B58()
{
  result = qword_10012DF70;
  if (!qword_10012DF70)
  {
    sub_100005144(&qword_10012DF00, &qword_1000EA260);
    sub_100031BE4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012DF70);
  }

  return result;
}

unint64_t sub_100031BE4()
{
  result = qword_10012DF78;
  if (!qword_10012DF78)
  {
    sub_100005144(&qword_10012DEF8, &qword_1000EA258);
    sub_100031C70();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012DF78);
  }

  return result;
}

unint64_t sub_100031C70()
{
  result = qword_10012DF80;
  if (!qword_10012DF80)
  {
    sub_100005144(&qword_10012DEF0, &qword_1000EA250);
    sub_100005144(&qword_10012DEE8, &qword_1000EA248);
    sub_100005144(&qword_10012DED8, &qword_1000EA238);
    sub_1000057D8(&qword_10012DF60, &qword_10012DED8, &qword_1000EA238, &protocol conformance descriptor for StrokeFocusEffect<A>);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012DF80);
  }

  return result;
}

uint64_t sub_100031E54()
{
  sub_100005144(&qword_10012CC58, &qword_1000E9FB0);
  sub_100005144(&qword_10012DD68, &qword_1000E9FB8);
  sub_100005144(&qword_10012DD70, &qword_1000E9FC0);
  sub_100005144(&qword_10012DD78, &qword_1000E9FC8);
  type metadata accessor for AccessPointAnchoring();
  sub_100005144(&qword_10012DD80, &qword_1000E9FD0);
  sub_100005144(&qword_10012DD88, &qword_1000E9FD8);
  type metadata accessor for GameDashboardLaunchContext.LaunchTarget();
  sub_10002F81C();
  sub_10002B454(&qword_10012CFB8, &type metadata accessor for GameDashboardLaunchContext.LaunchTarget, &protocol conformance descriptor for GameDashboardLaunchContext.LaunchTarget);
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_10002B3AC(OpaqueTypeConformance2, v1, v2);
  swift_getOpaqueTypeConformance2();
  sub_10002B454(&qword_10012CFD0, &type metadata accessor for AccessPointAnchoring, &protocol conformance descriptor for AccessPointAnchoring);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1000321EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  type metadata accessor for GameOverlayDashboardVisibilityNotifier();
  v6 = swift_task_alloc();
  v5[4] = v6;
  *v6 = v5;
  v6[1] = sub_10003228C;

  return static GameOverlayDashboardVisibilityNotifier.isDashboardPresented.getter();
}

uint64_t sub_10003228C(char a1)
{
  *(*v1 + 40) = a1;

  return _swift_task_switch(sub_10003238C, 0, 0);
}

uint64_t sub_10003238C()
{
  v1 = *(v0 + 16);
  v2 = [objc_allocWithZone(NSNumber) initWithBool:*(v0 + 40)];
  v1(v2, 0);

  v3 = *(v0 + 8);

  return v3();
}

void sub_10003255C()
{
  sub_100002B38(&qword_10012DFB0, &qword_1000EA328);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1000EA2D0;
  v1 = sub_10003F788(0, &qword_10012DFB8, NSArray_ptr);
  *(v0 + 56) = sub_100002B38(&qword_10012DFC0, &qword_1000EA330);
  *(v0 + 32) = v1;
  v2 = sub_10003F788(0, &qword_10012DFC8, NSDictionary_ptr);
  *(v0 + 88) = sub_100002B38(&qword_10012DFD0, &qword_1000EA338);
  *(v0 + 64) = v2;
  v3 = sub_10003F788(0, &qword_10012DFD8, NSData_ptr);
  *(v0 + 120) = sub_100002B38(&qword_10012DFE0, &qword_1000EA340);
  *(v0 + 96) = v3;
  v4 = sub_10003F788(0, &qword_10012DFE8, NSDate_ptr);
  *(v0 + 152) = sub_100002B38(&qword_10012DFF0, &qword_1000EA348);
  *(v0 + 128) = v4;
  v5 = sub_10003F788(0, &qword_10012DFF8, NSError_ptr);
  *(v0 + 184) = sub_100002B38(&qword_10012E000, &qword_1000EA350);
  *(v0 + 160) = v5;
  v6 = sub_10003F788(0, &qword_10012E008, NSMutableArray_ptr);
  *(v0 + 216) = sub_100002B38(&qword_10012E010, &qword_1000EA358);
  *(v0 + 192) = v6;
  v7 = sub_10003F788(0, &qword_10012E018, NSMutableDictionary_ptr);
  *(v0 + 248) = sub_100002B38(&qword_10012E020, &qword_1000EA360);
  *(v0 + 224) = v7;
  v8 = sub_10003F788(0, &qword_10012E028, NSMutableData_ptr);
  *(v0 + 280) = sub_100002B38(&qword_10012E030, &qword_1000EA368);
  *(v0 + 256) = v8;
  v9 = sub_10003F788(0, &qword_100131140, NSNumber_ptr);
  *(v0 + 312) = sub_100002B38(&qword_10012E038, &qword_1000EA370);
  *(v0 + 288) = v9;
  v10 = sub_10003F788(0, &qword_10012E040, NSString_ptr);
  *(v0 + 344) = sub_100002B38(&qword_10012E048, &qword_1000EA378);
  *(v0 + 320) = v10;
  v11 = sub_10003F788(0, &qword_10012E050, GKGame_ptr);
  *(v0 + 376) = sub_100002B38(&qword_10012E058, &qword_1000EA380);
  *(v0 + 352) = v11;
  v12 = sub_10003F788(0, &qword_10012E060, GKLeaderboardInternal_ptr);
  *(v0 + 408) = sub_100002B38(&qword_10012E068, &qword_1000EA388);
  *(v0 + 384) = v12;
  v13 = sub_10003F788(0, &qword_10012E070, GKLocalPlayer_ptr);
  *(v0 + 440) = sub_100002B38(&qword_10012E078, &qword_1000EA390);
  *(v0 + 416) = v13;
  v14 = sub_10003F788(0, &qword_10012E080, GKPlayer_ptr);
  *(v0 + 472) = sub_100002B38(&qword_10012E088, &qword_1000EA398);
  *(v0 + 448) = v14;
  sub_10003F788(0, &qword_10012E090, NSSet_ptr);
  NSSet.init(arrayLiteral:)();
  static Set._forceBridgeFromObjectiveC(_:result:)();
  __break(1u);
}

uint64_t sub_100032A60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 16) = a4;
  *(v7 + 24) = a7;
  return _swift_task_switch(sub_100032A80, 0, 0);
}

uint64_t sub_100032A80()
{
  if (qword_10012CC38 != -1)
  {
    swift_once();
  }

  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_100032B60;
  v3 = v0[2];
  v2 = v0[3];

  return sub_1000D1E0C(v3, v2);
}

uint64_t sub_100032B60()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_100032C54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[58] = a4;
  v5[59] = a5;
  sub_100002B38(&unk_100130F10, &qword_1000EA660);
  v5[60] = swift_task_alloc();
  v6 = type metadata accessor for RemoteAlertRequest(0);
  v5[61] = v6;
  v5[62] = *(v6 - 8);
  v5[63] = swift_task_alloc();
  v7 = type metadata accessor for AccessPointUseCase();
  v5[64] = v7;
  v5[65] = *(v7 - 8);
  v5[66] = swift_task_alloc();
  v5[67] = swift_task_alloc();
  v5[68] = swift_task_alloc();
  v5[69] = swift_task_alloc();
  v5[70] = swift_task_alloc();
  v5[71] = swift_task_alloc();
  v5[72] = swift_task_alloc();
  v5[73] = swift_task_alloc();
  sub_100002B38(&qword_10012DC30, &qword_1000EEC90);
  v5[74] = swift_task_alloc();
  v5[75] = swift_task_alloc();

  return _swift_task_switch(sub_100032E40, 0, 0);
}

uint64_t sub_100032E40()
{
  if (qword_10012CC38 != -1)
  {
    swift_once();
  }

  v1 = qword_100135CD8;
  *(v0 + 608) = qword_100135CD8;

  return _swift_task_switch(sub_100032ED8, v1, 0);
}

uint64_t sub_100032ED8()
{
  sub_1000C84F8(v0[58], v0[59], v0[75]);

  return _swift_task_switch(sub_100032F48, 0, 0);
}

uint64_t sub_100032F48()
{
  v1 = v0[74];
  v2 = v0[61];
  v3 = v0[62];
  sub_1000035B4(v0[75], v1, &qword_10012DC30, &qword_1000EEC90);
  v4 = (*(v3 + 48))(v1, 1, v2);
  v5 = v0[74];
  if (v4 != 1)
  {
    v9 = *(v5 + *(v0[61] + 24));
    v0[77] = v9;

    sub_10002D820(v5);
    if (*v9 == _TtC13GameOverlayUI28AccessPointConnectionContext)
    {
      swift_beginAccess();
      sub_1000035B4((v9 + 8), (v0 + 7), &unk_100131120, &unk_1000EAAF0);
      if (!v0[10])
      {

        v6 = &unk_100131120;
        v7 = &unk_1000EAAF0;
        v8 = (v0 + 7);
        goto LABEL_3;
      }

      v0[78] = sub_100002B38(&qword_10012E0C0, &qword_1000EA820);
      v0[79] = type metadata accessor for RemoteAlertAccessPointContext(0);
      if (swift_dynamicCast())
      {
        v10 = v0[73];
        v11 = v0[72];
        v12 = v0[65];
        v13 = v0[64];
        v14 = v0[55];
        v0[80] = v14;
        v15 = OBJC_IVAR____TtC13GameOverlayUI29RemoteAlertAccessPointContext_useCase;
        swift_beginAccess();
        v32 = v15;
        v31 = *(v12 + 16);
        v31(v10, v14 + v15, v13);
        v30 = *(v12 + 104);
        v30(v11, enum case for AccessPointUseCase.welcomeBannerAndAccessPoint(_:), v13);
        sub_10003FED0(&qword_10012CFE8, &type metadata accessor for AccessPointUseCase, &protocol conformance descriptor for AccessPointUseCase);
        dispatch thunk of RawRepresentable.rawValue.getter();
        dispatch thunk of RawRepresentable.rawValue.getter();
        if (v0[46] == v0[48] && v0[47] == v0[49])
        {
          v16 = 1;
        }

        else
        {
          v16 = _stringCompareWithSmolCheck(_:_:expecting:)();
        }

        v17 = v0[73];
        v18 = v0[64];
        v19 = *(v0[65] + 8);
        v19(v0[72], v18);
        v29 = v19;
        v19(v17, v18);

        if (v16)
        {
          goto LABEL_17;
        }

        v20 = v0[70];
        v21 = v0[64];
        v31(v0[71], v14 + v32, v21);
        v30(v20, enum case for AccessPointUseCase.accessPointOnly(_:), v21);
        dispatch thunk of RawRepresentable.rawValue.getter();
        dispatch thunk of RawRepresentable.rawValue.getter();
        v22 = v0[71];
        v23 = v0[70];
        v24 = v0[64];
        if (v0[50] == v0[52] && v0[51] == v0[53])
        {
          v29(v0[70], v0[64]);
          v29(v22, v24);

LABEL_17:
          v26 = v0[76];
          v27 = sub_100033420;
          goto LABEL_23;
        }

        v25 = _stringCompareWithSmolCheck(_:_:expecting:)();
        v29(v23, v24);
        v29(v22, v24);

        if (v25)
        {
          goto LABEL_17;
        }
      }
    }

    goto LABEL_20;
  }

  v6 = &qword_10012DC30;
  v7 = &qword_1000EEC90;
  v8 = v0[74];
LABEL_3:
  sub_100005688(v8, v6, v7);
LABEL_20:
  if (qword_10012CC20 != -1)
  {
    swift_once();
  }

  v26 = qword_100135CA0;
  v0[81] = qword_100135CA0;
  v27 = sub_1000337EC;
LABEL_23:

  return _swift_task_switch(v27, v26, 0);
}

uint64_t sub_100033420()
{
  v1 = v0[76];
  swift_beginAccess();
  v2 = *(v1 + 112);
  if (*(v2 + 16))
  {
    v4 = v0[58];
    v3 = v0[59];

    v5 = sub_1000C547C(v4, v3);
    if (v6)
    {
      v7 = *(*(v2 + 56) + 8 * v5);

      v8 = *(v7 + 16);
      if (v8)
      {
        v9 = v0[62];
        v10 = v0[63];
        v11 = *(v0[61] + 24);
        v22 = v10;
        v12 = v7 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
        v13 = *(v9 + 72);
        v14 = &unk_1000EAAF0;
        v23 = v13;
        do
        {
          sub_10003F2F4(v12, v0[63]);
          v15 = *(v10 + v11);
          swift_beginAccess();
          sub_1000035B4(v15 + 64, (v0 + 12), &unk_100131120, v14);
          if (v0[15])
          {
            if (swift_dynamicCast())
            {
              v16 = v11;
              v17 = v14;
              v18 = v0[56];
              if (*(v18 + OBJC_IVAR____TtC13GameOverlayUI29RemoteAlertAccessPointContext__active))
              {
                swift_getKeyPath();
                v19 = swift_task_alloc();
                *(v19 + 16) = v18;
                *(v19 + 24) = 0;
                v0[57] = v18;
                sub_10003FED0(&qword_10012CFC8, type metadata accessor for RemoteAlertAccessPointContext, &unk_1000EE6AC);
                ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
                v10 = v22;
              }

              else
              {
                *(v18 + OBJC_IVAR____TtC13GameOverlayUI29RemoteAlertAccessPointContext__active) = 0;
              }

              v14 = v17;
              v11 = v16;
              v13 = v23;
            }
          }

          else
          {
            sub_100005688((v0 + 12), &unk_100131120, v14);
          }

          sub_10002D820(v0[63]);
          v12 += v13;
          --v8;
        }

        while (v8);
      }
    }
  }

  v20 = v0[76];

  return _swift_task_switch(sub_1000336D4, v20, 0);
}

uint64_t sub_1000336D4()
{
  sub_1000C6540(*(v0 + 464), *(v0 + 472));

  return _swift_task_switch(sub_100033740, 0, 0);
}

uint64_t sub_100033740()
{

  if (qword_10012CC20 != -1)
  {
    swift_once();
  }

  v1 = qword_100135CA0;
  *(v0 + 648) = qword_100135CA0;

  return _swift_task_switch(sub_1000337EC, v1, 0);
}

uint64_t sub_1000337EC()
{
  v1 = *(v0 + 648);
  swift_beginAccess();
  v2 = *(v1 + 112);
  if (*(v2 + 16))
  {
    v4 = *(v0 + 464);
    v3 = *(v0 + 472);

    v5 = sub_1000C547C(v4, v3);
    if (v6)
    {
      v7 = *(*(v2 + 56) + 8 * v5);

      swift_beginAccess();
      sub_1000035B4(v7 + 32, v0 + 16, &unk_100131120, &unk_1000EAAF0);

      goto LABEL_6;
    }
  }

  *(v0 + 48) = 0;
  *(v0 + 16) = 0u;
  *(v0 + 32) = 0u;
LABEL_6:

  return _swift_task_switch(sub_1000338FC, 0, 0);
}

uint64_t sub_1000338FC()
{
  if (v0[5])
  {
    sub_100002B38(&qword_10012E0C0, &qword_1000EA820);
    type metadata accessor for RemoteAlertAccessPointContext(0);
    if (swift_dynamicCast())
    {
      v1 = v0[69];
      v2 = v0[68];
      v3 = v0[65];
      v4 = v0[64];
      v5 = v0[54];
      v6 = OBJC_IVAR____TtC13GameOverlayUI29RemoteAlertAccessPointContext_useCase;
      swift_beginAccess();
      v29 = v6;
      v30 = v5;
      v28 = *(v3 + 16);
      v28(v1, v5 + v6, v4);
      v27 = *(v3 + 104);
      v27(v2, enum case for AccessPointUseCase.welcomeBannerAndAccessPoint(_:), v4);
      sub_10003FED0(&qword_10012CFE8, &type metadata accessor for AccessPointUseCase, &protocol conformance descriptor for AccessPointUseCase);
      dispatch thunk of RawRepresentable.rawValue.getter();
      dispatch thunk of RawRepresentable.rawValue.getter();
      if (v0[38] == v0[40] && v0[39] == v0[41])
      {
        v7 = 1;
      }

      else
      {
        v7 = _stringCompareWithSmolCheck(_:_:expecting:)();
      }

      v12 = v0[69];
      v13 = v0[64];
      v14 = *(v0[65] + 8);
      v14(v0[68], v13);
      v14(v12, v13);

      if (v7)
      {
        goto LABEL_18;
      }

      v15 = v0[66];
      v16 = v0[64];
      v28(v0[67], v30 + v29, v16);
      v27(v15, enum case for AccessPointUseCase.accessPointOnly(_:), v16);
      dispatch thunk of RawRepresentable.rawValue.getter();
      dispatch thunk of RawRepresentable.rawValue.getter();
      v17 = v0[67];
      v18 = v0[66];
      v19 = v0[64];
      if (v0[42] == v0[44] && v0[43] == v0[45])
      {
        v14(v0[66], v0[64]);
        v14(v17, v19);

LABEL_18:
        v21 = v0[60];
        v22 = type metadata accessor for TaskPriority();
        (*(*(v22 - 8) + 56))(v21, 1, 1, v22);
        type metadata accessor for MainActor();

        v23 = static MainActor.shared.getter();
        v24 = swift_allocObject();
        v24[2] = v23;
        v24[3] = &protocol witness table for MainActor;
        v24[4] = v30;
        sub_100014BBC(0, 0, v21, &unk_1000EA498, v24);

        goto LABEL_19;
      }

      v20 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v14(v18, v19);
      v14(v17, v19);

      if (v20)
      {
        goto LABEL_18;
      }
    }
  }

  else
  {
    sub_100005688((v0 + 2), &unk_100131120, &unk_1000EAAF0);
  }

  if (qword_10012CC18 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_100011F80(v8, qword_100135C88);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v9, v10, "Could not find access point context for the client request", v11, 2u);
  }

LABEL_19:
  sub_100005688(v0[75], &qword_10012DC30, &qword_1000EEC90);

  v25 = v0[1];

  return v25();
}

uint64_t sub_100033E8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 24) = a4;
  type metadata accessor for MainActor();
  *(v4 + 32) = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100033F24, v6, v5);
}

uint64_t sub_100033F24()
{
  v1 = OBJC_IVAR____TtC13GameOverlayUI29RemoteAlertAccessPointContext__active;
  v2 = v0[3];
  if (*(v2 + OBJC_IVAR____TtC13GameOverlayUI29RemoteAlertAccessPointContext__active))
  {
    swift_getKeyPath();
    v3 = swift_task_alloc();
    *(v3 + 16) = v2;
    *(v3 + 24) = 0;
    v0[2] = v2;
    sub_10003FED0(&qword_10012CFC8, type metadata accessor for RemoteAlertAccessPointContext, &unk_1000EE6AC);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  else
  {

    *(v2 + v1) = 0;
  }

  if (qword_10012CC18 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100011F80(v4, qword_100135C88);

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.info.getter();
  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[3];
  if (v7)
  {
    v9 = swift_slowAlloc();
    *v9 = 134217984;
    swift_getKeyPath();
    v0[2] = v8;
    sub_10003FED0(&qword_10012CFC8, type metadata accessor for RemoteAlertAccessPointContext, &unk_1000EE6AC);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    *(v9 + 4) = *(v8 + OBJC_IVAR____TtC13GameOverlayUI29RemoteAlertAccessPointContext__hideCount);

    _os_log_impl(&_mh_execute_header, v5, v6, "Setting access point with current hide count: %ld to inactive", v9, 0xCu);
  }

  else
  {
  }

  v10 = v0[1];

  return v10();
}

void sub_100034394(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6)
{
  v10 = sub_100002B38(&unk_100130F10, &qword_1000EA660);
  __chkstk_darwin(v10 - 8);
  v12 = &v21 - v11;
  if (a3)
  {
    a3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  v22 = a1;
  v15 = sub_10007C628(0, a3, v14);
  v17 = v16;

  if (v17)
  {
    v18 = type metadata accessor for TaskPriority();
    (*(*(v18 - 8) + 56))(v12, 1, 1, v18);
    v19 = swift_allocObject();
    *(v19 + 16) = 0;
    *(v19 + 24) = 0;
    *(v19 + 32) = v15;
    *(v19 + 40) = v17;
    *(v19 + 48) = a5;
    sub_100014BBC(0, 0, v12, a6, v19);
  }

  else
  {
    v20 = v22;
  }
}

uint64_t sub_100034528(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  *(v6 + 152) = a6;
  *(v6 + 112) = a4;
  *(v6 + 120) = a5;
  sub_100002B38(&unk_100130F10, &qword_1000EA660);
  *(v6 + 128) = swift_task_alloc();

  return _swift_task_switch(sub_1000345C8, 0, 0);
}

uint64_t sub_1000345C8()
{
  if (qword_10012CC38 != -1)
  {
    swift_once();
  }

  v1 = qword_100135CD8;
  *(v0 + 136) = qword_100135CD8;

  return _swift_task_switch(sub_100034660, v1, 0);
}

uint64_t sub_100034660()
{
  sub_1000C6540(*(v0 + 112), *(v0 + 120));

  return _swift_task_switch(sub_1000346CC, 0, 0);
}

uint64_t sub_1000346CC()
{
  if (qword_10012CC20 != -1)
  {
    swift_once();
  }

  v1 = qword_100135CA0;
  *(v0 + 144) = qword_100135CA0;

  return _swift_task_switch(sub_100034764, v1, 0);
}

uint64_t sub_100034764()
{
  v1 = *(v0 + 144);
  swift_beginAccess();
  v2 = *(v1 + 112);
  if (*(v2 + 16))
  {
    v4 = *(v0 + 112);
    v3 = *(v0 + 120);

    v5 = sub_1000C547C(v4, v3);
    if (v6)
    {
      v7 = *(*(v2 + 56) + 8 * v5);

      swift_beginAccess();
      sub_1000035B4(v7 + 32, v0 + 16, &unk_100131120, &unk_1000EAAF0);

      goto LABEL_6;
    }
  }

  *(v0 + 48) = 0;
  *(v0 + 16) = 0u;
  *(v0 + 32) = 0u;
LABEL_6:

  return _swift_task_switch(sub_100034874, 0, 0);
}

uint64_t sub_100034874()
{
  if (*(v0 + 40))
  {
    sub_100002B38(&qword_10012E0C0, &qword_1000EA820);
    type metadata accessor for RemoteAlertAccessPointContext(0);
    if (swift_dynamicCast())
    {
      v1 = *(v0 + 128);
      v2 = *(v0 + 152);
      v3 = *(v0 + 104);
      v4 = type metadata accessor for TaskPriority();
      (*(*(v4 - 8) + 56))(v1, 1, 1, v4);
      type metadata accessor for MainActor();

      v5 = static MainActor.shared.getter();
      v6 = swift_allocObject();
      *(v6 + 16) = v5;
      *(v6 + 24) = &protocol witness table for MainActor;
      *(v6 + 32) = v3;
      *(v6 + 40) = v2;
      sub_100014BBC(0, 0, v1, &unk_1000EA3F0, v6);

      goto LABEL_10;
    }
  }

  else
  {
    sub_100005688(v0 + 16, &unk_100131120, &unk_1000EAAF0);
  }

  if (qword_10012CC18 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_100011F80(v7, qword_100135C88);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v8, v9, "Could not find access point context for the client request", v10, 2u);
  }

LABEL_10:

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_100034ABC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 40) = a5;
  *(v5 + 24) = a4;
  type metadata accessor for MainActor();
  *(v5 + 32) = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100034B58, v7, v6);
}

uint64_t sub_100034B58()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 24);
  swift_getKeyPath();
  *(v0 + 16) = v2;
  v3 = (v0 + 16);
  if (v1)
  {
    v4 = 1;
  }

  else
  {
    v4 = -1;
  }

  sub_10003FED0(&qword_10012CFC8, type metadata accessor for RemoteAlertAccessPointContext, &unk_1000EE6AC);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *v3 = v2;
  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  v5 = OBJC_IVAR____TtC13GameOverlayUI29RemoteAlertAccessPointContext__hideCount;
  v6 = *(v2 + OBJC_IVAR____TtC13GameOverlayUI29RemoteAlertAccessPointContext__hideCount);
  v7 = __OFADD__(v6, v4);
  v8 = v6 + v4;
  if (v7)
  {
    __break(1u);
LABEL_16:
    swift_once();
    goto LABEL_9;
  }

  v9 = *(v0 + 24);
  *(v2 + OBJC_IVAR____TtC13GameOverlayUI29RemoteAlertAccessPointContext__hideCount) = v8;
  *(v0 + 16) = v9;
  swift_getKeyPath();
  ObservationRegistrar.didSet<A, B>(_:keyPath:)();

  swift_getKeyPath();
  *(v0 + 16) = v9;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if ((*(v2 + v5) & 0x8000000000000000) != 0)
  {
    v10 = *(v0 + 24);
    swift_getKeyPath();
    v11 = swift_task_alloc();
    *(v11 + 16) = v10;
    *(v11 + 24) = 0;
    *(v0 + 16) = v10;
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  else
  {
  }

  if (qword_10012CC18 != -1)
  {
    goto LABEL_16;
  }

LABEL_9:
  v12 = type metadata accessor for Logger();
  sub_100011F80(v12, qword_100135C88);

  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.info.getter();
  v15 = os_log_type_enabled(v13, v14);
  v16 = *(v0 + 24);
  if (v15)
  {
    v20 = v5;
    v17 = swift_slowAlloc();
    *v17 = 134217984;
    swift_getKeyPath();
    *v3 = v16;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    *(v17 + 4) = *(v2 + v20);

    _os_log_impl(&_mh_execute_header, v13, v14, "Setting access point hide count: %ld", v17, 0xCu);
  }

  else
  {
  }

  v18 = *(v0 + 8);

  return v18();
}

void sub_100034ECC(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, void *a6)
{
  v13 = sub_100002B38(&unk_100130F10, &qword_1000EA660);
  __chkstk_darwin(v13 - 8);
  v15 = &v32 - v14;
  v16 = sub_10007C790(0);
  if (v17)
  {
    v18 = v17;
    v35 = v16;
    v19 = sub_10007C628(0, a5, a6);
    if (v20)
    {
      v21 = v20;
      v34 = v19;
      v22 = [objc_opt_self() currentContext];
      v32 = a1;
      v33 = a4;
      v23 = v6;
      v24 = v22;
      type metadata accessor for AccessPointConnectionContext();
      *(swift_allocObject() + 160) = 0;
      v25 = sub_1000E0554(v24);
      v26 = type metadata accessor for TaskPriority();
      (*(*(v26 - 8) + 56))(v15, 1, 1, v26);
      v27 = a2;
      v28 = swift_allocObject();
      v28[2] = 0;
      v28[3] = 0;
      v29 = v35;
      v28[4] = v34;
      v28[5] = v21;
      v28[6] = v29;
      v28[7] = v18;
      v28[8] = v23;
      v28[9] = v25;
      v30 = v33;
      v28[10] = v32;
      v28[11] = v27;
      v28[12] = a3;
      v28[13] = v30;
      v28[14] = a5;
      v28[15] = a6;
      v31 = v23;

      sub_1000304E0(a3, v30);

      sub_100014BBC(0, 0, v15, &unk_1000EA430, v28);
    }

    else
    {
    }
  }
}

uint64_t sub_1000350FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 464) = v19;
  *(v7 + 432) = v17;
  *(v7 + 448) = v18;
  *(v7 + 416) = v16;
  *(v7 + 400) = a6;
  *(v7 + 408) = a7;
  *(v7 + 384) = a4;
  *(v7 + 392) = a5;
  v8 = type metadata accessor for RemoteAlertRequest(0);
  *(v7 + 472) = v8;
  v9 = *(v8 - 8);
  *(v7 + 480) = v9;
  *(v7 + 488) = *(v9 + 64);
  *(v7 + 496) = swift_task_alloc();
  *(v7 + 504) = swift_task_alloc();
  v10 = type metadata accessor for UUID();
  *(v7 + 512) = v10;
  *(v7 + 520) = *(v10 - 8);
  *(v7 + 528) = swift_task_alloc();
  sub_100002B38(&qword_10012E0C8, &qword_1000EA438);
  *(v7 + 536) = swift_task_alloc();
  v11 = type metadata accessor for AccessPointAnchoring();
  *(v7 + 544) = v11;
  *(v7 + 552) = *(v11 - 8);
  *(v7 + 560) = swift_task_alloc();
  v12 = type metadata accessor for AccessPointUseCase();
  *(v7 + 568) = v12;
  v13 = *(v12 - 8);
  *(v7 + 576) = v13;
  *(v7 + 584) = *(v13 + 64);
  *(v7 + 592) = swift_task_alloc();
  *(v7 + 600) = swift_task_alloc();
  sub_100002B38(&unk_100130F10, &qword_1000EA660);
  *(v7 + 608) = swift_task_alloc();

  return _swift_task_switch(sub_100035388, 0, 0);
}

uint64_t sub_100035388()
{
  if (qword_10012CC20 != -1)
  {
    swift_once();
  }

  v1 = qword_100135CA0;
  *(v0 + 616) = qword_100135CA0;

  return _swift_task_switch(sub_100035420, v1, 0);
}

uint64_t sub_100035420()
{
  v1 = *(v0 + 616);
  swift_beginAccess();
  v2 = *(v1 + 112);
  if (*(v2 + 16))
  {
    v4 = *(v0 + 384);
    v3 = *(v0 + 392);

    v5 = sub_1000C547C(v4, v3);
    if (v6)
    {
      v7 = *(*(v2 + 56) + 8 * v5);

      swift_beginAccess();
      sub_1000035B4(v7 + 32, v0 + 184, &unk_100131120, &unk_1000EAAF0);

      goto LABEL_6;
    }
  }

  *(v0 + 216) = 0;
  *(v0 + 200) = 0u;
  *(v0 + 184) = 0u;
LABEL_6:

  return _swift_task_switch(sub_100035534, 0, 0);
}

uint64_t sub_100035534()
{
  if (v0[26])
  {
    sub_100002B38(&qword_10012E0C0, &qword_1000EA820);
    type metadata accessor for RemoteAlertAccessPointContext(0);
    if (swift_dynamicCast())
    {
      v1 = v0[76];
      v3 = v0[53];
      v2 = v0[54];
      v4 = v0[47];
      v5 = type metadata accessor for TaskPriority();
      (*(*(v5 - 8) + 56))(v1, 1, 1, v5);
      type metadata accessor for MainActor();

      v6 = static MainActor.shared.getter();
      v7 = swift_allocObject();
      v7[2] = v6;
      v7[3] = &protocol witness table for MainActor;
      v7[4] = v3;
      v7[5] = v2;
      v7[6] = v4;
      sub_100014BBC(0, 0, v1, &unk_1000EA468, v7);

      v8 = v0[1];

      return v8();
    }
  }

  else
  {
    sub_100005688((v0 + 23), &unk_100131120, &unk_1000EAAF0);
  }

  if (qword_10012CC18 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  v0[78] = sub_100011F80(v10, qword_100135C88);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&_mh_execute_header, v11, v12, "Could not find access point context for the client request", v13, 2u);
  }

  v14 = v0[77];

  return _swift_task_switch(sub_10003582C, v14, 0);
}

uint64_t sub_10003582C()
{
  sub_100094248(*(v0 + 400), *(v0 + 408), v0 + 72);

  return _swift_task_switch(sub_10003589C, 0, 0);
}

uint64_t sub_10003589C()
{
  if (*(v0 + 80))
  {
    v1 = *(v0 + 88);
    *(v0 + 16) = *(v0 + 72);
    *(v0 + 32) = v1;
    *(v0 + 48) = *(v0 + 104);
    *(v0 + 64) = *(v0 + 120);
    sub_1000035B4(v0 + 16, v0 + 128, &qword_10012E0D8, &qword_1000EA448);

    if (*(v0 + 168))
    {
      sub_10003FB38((v0 + 144), v0 + 224);
      if (qword_10012CC38 != -1)
      {
        swift_once();
      }

      v2 = qword_100135CD8;
      *(v0 + 632) = qword_100135CD8;

      return _swift_task_switch(sub_100035A84, v2, 0);
    }

    sub_100005688(v0 + 16, &qword_10012E0D8, &qword_1000EA448);
    v3 = &unk_100131120;
    v4 = &unk_1000EAAF0;
    v5 = v0 + 144;
  }

  else
  {
    v3 = &unk_10012E0D0;
    v4 = &unk_1000EA440;
    v5 = v0 + 72;
  }

  sub_100005688(v5, v3, v4);

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_100035A84()
{
  v1 = v0[79];
  v2 = v0[31];
  v3 = v0[32];
  v4 = sub_10002D754(v0 + 28, v2);
  sub_1000CFE50(v4, 0, v1, v2, v3);

  return _swift_task_switch(sub_100035B14, 0, 0);
}

uint64_t sub_100035B14()
{
  v1 = v0[69];
  v2 = v0[68];
  v3 = v0[67];
  (*(v0[72] + 104))(v0[75], enum case for AccessPointUseCase.accessPointOnly(_:), v0[71]);

  AccessPointAnchoring.init(rawValue:)();
  v4 = *(v1 + 48);
  v5 = v4(v3, 1, v2);
  v6 = v0[70];
  v7 = v0[69];
  v8 = v0[68];
  v9 = v0[67];
  if (v5 == 1)
  {
    (*(v7 + 104))(v6, enum case for AccessPointAnchoring.topLeading(_:), v0[68]);
    if (v4(v9, 1, v8) != 1)
    {
      sub_100005688(v0[67], &qword_10012E0C8, &qword_1000EA438);
    }
  }

  else
  {
    (*(v7 + 32))(v6, v0[67], v0[68]);
  }

  v10 = v0[72];
  v55 = v0[71];
  v57 = v0[74];
  v65 = v0[70];
  v11 = v0[69];
  v62 = v0[68];
  v12 = v0[66];
  v13 = v0[65];
  v49 = v0[64];
  v58 = v0[57];
  v59 = v0[58];
  v14 = v0[52];
  v51 = v0[48];
  v53 = v0[49];
  v64 = *(v10 + 16);
  v64();
  v15 = type metadata accessor for RemoteAlertAccessPointContext(0);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  UUID.init()();
  v17 = UUID.uuidString.getter();
  v19 = v18;
  (*(v13 + 8))(v12, v49);
  v16[4] = v17;
  v16[5] = v19;
  *(v16 + OBJC_IVAR____TtC13GameOverlayUI29RemoteAlertAccessPointContext__active) = 1;
  *(v16 + OBJC_IVAR____TtC13GameOverlayUI29RemoteAlertAccessPointContext__gkGame) = 0;
  v20 = (v16 + OBJC_IVAR____TtC13GameOverlayUI29RemoteAlertAccessPointContext__dismissHandler);
  *v20 = 0;
  v20[1] = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  *(v16 + OBJC_IVAR____TtC13GameOverlayUI29RemoteAlertAccessPointContext_allowCoalescing) = 1;
  *(v16 + OBJC_IVAR____TtC13GameOverlayUI29RemoteAlertAccessPointContext_newHighlightsQueue) = &_swiftEmptyArrayStorage;
  *(v16 + OBJC_IVAR____TtC13GameOverlayUI29RemoteAlertAccessPointContext_newHighlightsVersion) = 0;
  ObservationRegistrar.init()();

  v16[2] = v51;
  v16[3] = v53;
  (*(v11 + 32))(v16 + OBJC_IVAR____TtC13GameOverlayUI29RemoteAlertAccessPointContext__anchoring, v65, v62);
  v63 = *(v10 + 32);
  v63(v16 + OBJC_IVAR____TtC13GameOverlayUI29RemoteAlertAccessPointContext_useCase, v57, v55);
  *(v16 + OBJC_IVAR____TtC13GameOverlayUI29RemoteAlertAccessPointContext__hideCount) = 0;
  *(v16 + OBJC_IVAR____TtC13GameOverlayUI29RemoteAlertAccessPointContext__didReturnToForeground) = 0;
  *(v16 + OBJC_IVAR____TtC13GameOverlayUI29RemoteAlertAccessPointContext__newToGameCenter) = 0;
  *(v16 + OBJC_IVAR____TtC13GameOverlayUI29RemoteAlertAccessPointContext__isShowingDashboard) = 0;
  *(v16 + OBJC_IVAR____TtC13GameOverlayUI29RemoteAlertAccessPointContext__dismissDashboardRequested) = 0;
  v0[36] = v15;
  v0[37] = &off_1001240E8;
  v0[33] = v16;
  swift_beginAccess();

  sub_10003EF48((v0 + 33), v14 + 64);
  swift_endAccess();
  *(v14 + 144) = v58;
  *(v14 + 152) = v59;

  sub_10003F788(0, &qword_10012E0A8, NSKeyedUnarchiver_ptr);
  sub_10003F788(0, &qword_10012E0B0, GKGameInternal_ptr);
  v21 = static NSKeyedUnarchiver.unarchivedObject<A>(ofClass:from:)();
  if (v21)
  {
    v22 = v0[52];
    v23 = v21;
    v24 = [objc_allocWithZone(GKGame) initWithInternalRepresentation:v21];

    v25 = *(v22 + 160);
    *(v22 + 160) = v24;
  }

  else
  {
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&_mh_execute_header, v26, v27, "Game could not be deserialized", v28, 2u);
    }
  }

  v29 = v0[76];
  v52 = v29;
  v30 = v0[75];
  v56 = v30;
  v31 = v0[74];
  v66 = v0[72];
  v33 = v0[62];
  v32 = v0[63];
  v54 = v0[61];
  v48 = v0[60];
  v50 = v0[71];
  v34 = v0[59];
  v35 = v0[52];
  v60 = v0[48];
  v61 = v0[49];
  v36 = enum case for GameOverlayUIConfig.ServiceKind.dashboard(_:);
  v37 = type metadata accessor for GameOverlayUIConfig.ServiceKind();
  (*(*(v37 - 8) + 104))(v32, v36, v37);
  *(v32 + v34[5]) = 0;
  *(v32 + v34[6]) = v35;
  v38 = (v32 + v34[7]);
  *v38 = 0;
  v38[1] = 0;
  v39 = (v32 + v34[8]);
  v40 = type metadata accessor for TaskPriority();
  *v39 = 0;
  v39[1] = 0;
  (*(*(v40 - 8) + 56))(v29, 1, 1, v40);
  sub_10003F2F4(v32, v33);
  (v64)(v31, v30, v50);
  v41 = (*(v48 + 80) + 32) & ~*(v48 + 80);
  v42 = (v54 + v41 + 7) & 0xFFFFFFFFFFFFFFF8;
  v43 = (*(v66 + 80) + v42 + 16) & ~*(v66 + 80);
  v44 = swift_allocObject();
  *(v44 + 16) = 0;
  *(v44 + 24) = 0;
  sub_10003F35C(v33, v44 + v41);
  v45 = (v44 + v42);
  *v45 = v60;
  v45[1] = v61;
  v63((v44 + v43), v31, v50);

  sub_100014BBC(0, 0, v52, &unk_1000EA458, v44);

  sub_10002D820(v32);
  (*(v66 + 8))(v56, v50);
  sub_100005688((v0 + 2), &qword_10012E0D8, &qword_1000EA448);
  sub_10002E6CC(v0 + 28);

  v46 = v0[1];

  return v46();
}

uint64_t sub_100036370(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  sub_100002B38(&qword_10012E0C8, &qword_1000EA438);
  v6[5] = swift_task_alloc();
  v7 = type metadata accessor for AccessPointAnchoring();
  v6[6] = v7;
  v6[7] = *(v7 - 8);
  v6[8] = swift_task_alloc();
  v6[9] = swift_task_alloc();
  type metadata accessor for MainActor();
  v6[10] = static MainActor.shared.getter();
  v9 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1000364AC, v9, v8);
}

uint64_t sub_1000364AC()
{
  v1 = v0[6];
  v2 = v0[7];
  v3 = v0[5];

  AccessPointAnchoring.init(rawValue:)();
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_100005688(v0[5], &qword_10012E0C8, &qword_1000EA438);
  }

  else
  {
    v5 = v0[8];
    v4 = v0[9];
    v6 = v0[6];
    v7 = v0[7];
    (*(v7 + 32))(v4, v0[5], v6);
    (*(v7 + 16))(v5, v4, v6);
    sub_1000BCC80(v5);
    (*(v7 + 8))(v4, v6);
  }

  v8 = v0[1];

  return v8();
}

double sub_1000366EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8)
{
  v12 = sub_100002B38(&unk_100130F10, &qword_1000EA660);
  result = __chkstk_darwin(v12 - 8);
  v15 = &v19 - v14;
  if (a2)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {

      v17 = type metadata accessor for TaskPriority();
      (*(*(v17 - 8) + 56))(v15, 1, 1, v17);
      v18 = swift_allocObject();
      *(v18 + 16) = 0;
      *(v18 + 24) = 0;
      *(v18 + 32) = a1;
      *(v18 + 40) = a2;
      *(v18 + 48) = a7;

      sub_100014BBC(0, 0, v15, a8, v18);
    }
  }

  return result;
}

uint64_t sub_100036858()
{
  if (qword_10012CC38 != -1)
  {
    swift_once();
  }

  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_100036924;
  v2 = *(v0 + 16);

  return sub_1000C6880(v2);
}

uint64_t sub_100036924()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

void sub_100036A18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_10003F788(0, &qword_10012E0B8, PHAssetCreationRequest_ptr);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  URL._bridgeToObjectiveC()(v8);
  v10 = v9;
  v15 = [ObjCClassFromMetadata creationRequestForAssetFromVideoAtFileURL:v9];

  v11 = v15;
  if (v15)
  {
    v12 = v15;
    if (a3)
    {
      v13 = String._bridgeToObjectiveC()();
    }

    else
    {
      v13 = 0;
    }

    [v15 setImportedByBundleIdentifier:v13];

    if (a5)
    {
      v15 = v15;
      v14 = String._bridgeToObjectiveC()();
      [v15 setAssetDescription:v14];
    }

    v11 = v15;
  }

  else if (a5)
  {
    return;
  }
}

void sub_100036B68(char a1, uint64_t a2)
{
  if ((a1 & 1) == 0)
  {
    if (qword_10012CC18 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_100011F80(v4, qword_100135C88);
    swift_errorRetain();
    oslog = Logger.logObject.getter();
    v5 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(oslog, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      *v6 = 138412290;
      if (a2)
      {
        swift_errorRetain();
        v8 = _swift_stdlib_bridgeErrorToNSError();
        v9 = v8;
      }

      else
      {
        v8 = 0;
        v9 = 0;
      }

      *(v6 + 4) = v8;
      *v7 = v9;
      _os_log_impl(&_mh_execute_header, oslog, v5, "Could not export clip to Photos, error %@", v6, 0xCu);
      sub_100005688(v7, &qword_100131110, &unk_1000EC870);
    }
  }
}

void sub_100036CE0(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  v6 = a3;
  v5(a2, a3);
}

void sub_100036D58(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, char *a6)
{
  v519 = a5;
  v520 = a6;
  v517 = a4;
  v502 = a3;
  v6 = sub_100002B38(&unk_100130F10, &qword_1000EA660);
  __chkstk_darwin(v6 - 8);
  v515 = &v486 - v7;
  v8 = type metadata accessor for RemoteAlertRequest(0);
  v9 = *(v8 - 8);
  v511 = v8;
  v512 = v9;
  __chkstk_darwin(v8);
  v513 = v10;
  v514 = &v486 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v516 = &v486 - v12;
  v506 = type metadata accessor for UUID();
  v505 = *(v506 - 8);
  __chkstk_darwin(v506);
  v504 = &v486 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v510 = type metadata accessor for AccessPointAnchoring();
  v509 = *(v510 - 8);
  __chkstk_darwin(v510);
  v508 = &v486 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for AccessPointUseCase();
  v16 = *(v15 - 8);
  v521 = v15;
  v522 = v16;
  __chkstk_darwin(v15);
  v500 = &v486 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = &v486 - v19;
  __chkstk_darwin(v21);
  v501 = &v486 - v22;
  __chkstk_darwin(v23);
  v503 = &v486 - v24;
  __chkstk_darwin(v25);
  v507 = &v486 - v26;
  __chkstk_darwin(v27);
  v518 = &v486 - v28;
  v29 = type metadata accessor for InGameBannerData.BannerType();
  v30 = *(v29 - 8);
  __chkstk_darwin(v29);
  __chkstk_darwin(v31);
  v33 = (&v486 - v32);
  v34 = sub_100002B38(&qword_10012E098, &qword_1000EA3A0);
  __chkstk_darwin(v34 - 8);
  v36 = &v486 - v35;
  v37 = type metadata accessor for InGameBannerData();
  __chkstk_darwin(v37);
  v39 = &v486 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v40);
  v42 = &v486 - v41;
  v44 = v43;
  v46 = v45;
  static InGameBannerData.decode(data:)();
  if ((*(v46 + 48))(v36, 1, v44) == 1)
  {
    sub_100005688(v36, &qword_10012E098, &qword_1000EA3A0);
    if (qword_10012CC18 != -1)
    {
      swift_once();
    }

    v47 = type metadata accessor for Logger();
    sub_100011F80(v47, qword_100135C88);
    v48 = Logger.logObject.getter();
    v49 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      *v50 = 0;
      _os_log_impl(&_mh_execute_header, v48, v49, "showInGameBanner: Failed to decode InGameBannerData.", v50, 2u);
    }

    return;
  }

  v499 = v46;
  v51 = *(v46 + 32);
  v498 = v44;
  v51(v42, v36, v44);
  v52 = InGameBannerData.imageSymbolName.getter();
  v54 = v53;
  InGameBannerData.type.getter();
  v55 = (*(v30 + 88))(v33, v29);
  v497 = v54;
  v495 = v52;
  if (v55 == enum case for InGameBannerData.BannerType.youBeatFriendScore(_:))
  {
    (*(v30 + 96))(v33, v29);
    v56 = v33[1];
    v492 = *v33;
    v494 = v56;
    v493 = v33[2];
    v57 = v521;
    v58 = v522;
    v59 = v518;
    (v522[13])(v518, enum case for AccessPointUseCase.leaderboardBeatFriendScoreBanner(_:), v521);
    v60 = InGameBannerData.title.getter();
    v500 = v61;
    v491 = InGameBannerData.body.getter();
    v63 = v62;
    v503 = InGameBannerData.image.getter();
    v65 = v64;
    v501 = InGameBannerData.clipData.getter();
    v67 = v66;
    v69 = v519;
    v68 = v520;
    v70 = sub_10007C628(1, v519, v520);
    if (!v71)
    {

      sub_10003091C(v501, v67);
      sub_10003091C(v503, v65);

      (v58[1])(v59, v57);
      (*(v499 + 8))(v42, v498);
      return;
    }

    v488 = v71;
    v489 = v70;
    v490 = v67;
    v496 = v42;
    v72 = v68;
    v73 = [objc_opt_self() currentContext];
    type metadata accessor for InGameBannerConnectionContext();
    swift_allocObject();
    v74 = v500;

    v487 = v60;
    v75 = sub_1000E08D0(v73, v60, v74);
    v75[22] = v491;
    v75[23] = v63;

    v76 = v494;
    v75[26] = v492;
    v75[27] = v76;

    v77 = v75[24];
    v78 = v75[25];
    v79 = v503;
    v75[24] = v503;
    v75[25] = v65;
    sub_1000304CC(v79, v65);
    sub_10003091C(v77, v78);
    v75[18] = v69;
    v75[19] = v72;

    v75[29] = v493;

    v80 = v497;
    v75[32] = v495;
    v75[33] = v80;

    v84 = 0;
    v85 = 0;
    v86 = v517;
    v497 = v65;
    v87 = v501;
    if (v517 >> 60 != 15)
    {
      sub_10003F788(0, &qword_10012E0A8, NSKeyedUnarchiver_ptr);
      sub_10003F788(0, &qword_10012E0B0, GKGameInternal_ptr);
      v88 = v502;
      sub_1000304E0(v502, v86);
      v89 = static NSKeyedUnarchiver.unarchivedObject<A>(ofClass:from:)();
      if (v89)
      {
        v221 = v89;
        v222 = [v89 bundleIdentifier];
        v84 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v85 = v223;

        v224 = [objc_allocWithZone(GKGame) initWithInternalRepresentation:v221];
        sub_10003091C(v88, v86);
        v225 = v75[28];
        v75[28] = v224;
      }

      else
      {
        if (qword_10012CC18 != -1)
        {
          swift_once();
        }

        v244 = type metadata accessor for Logger();
        sub_100011F80(v244, qword_100135C88);
        v245 = Logger.logObject.getter();
        v246 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v245, v246))
        {
          v247 = swift_slowAlloc();
          *v247 = 0;
          _os_log_impl(&_mh_execute_header, v245, v246, "Game could not be deserialized", v247, 2u);
        }

        sub_10003091C(v88, v86);

        v84 = 0;
        v85 = 0;
      }

      v74 = v500;
    }

    v524 = &type metadata for GameOverlayUIFeatureFlags;
    v525 = sub_10003F1EC(v81, v82, v83);
    LOBYTE(v523[0]) = 3;
    v248 = isFeatureEnabled(_:)();
    sub_10002E6CC(v523);
    if ((v248 & 1) != 0 && (v249 = v490, v490 >> 60 != 15))
    {
      sub_1000304E0(v87, v490);

      v251 = sub_10003D154(v87, v249, v84, v85, v487, v74, 0, 0);
      v253 = v252;

      sub_10003091C(v87, v249);

      v254 = v75[30];
      v255 = v75[31];
      v75[30] = v251;
      v75[31] = v253;
      v250.n128_f64[0] = sub_10003091C(v254, v255);
    }

    else
    {
    }

    v256 = v509;
    v257 = v508;
    v258 = v510;
    (*(v509 + 104))(v508, enum case for AccessPointAnchoring.topCentered(_:), v510, v250);
    v259 = v507;
    (v522[2])(v507, v518, v521);
    v260 = type metadata accessor for RemoteAlertAccessPointContext(0);
    v261 = swift_allocObject();
    v261[2] = 0;
    v261[3] = 0;
    v262 = v504;
    UUID.init()();
    v263 = UUID.uuidString.getter();
    v265 = v264;
    (*(v505 + 8))(v262, v506);
    v261[4] = v263;
    v261[5] = v265;
    *(v261 + OBJC_IVAR____TtC13GameOverlayUI29RemoteAlertAccessPointContext__active) = 1;
    *(v261 + OBJC_IVAR____TtC13GameOverlayUI29RemoteAlertAccessPointContext__gkGame) = 0;
    v266 = (v261 + OBJC_IVAR____TtC13GameOverlayUI29RemoteAlertAccessPointContext__dismissHandler);
    *v266 = 0;
    v266[1] = 0;
    swift_unknownObjectWeakInit();
    swift_unknownObjectWeakInit();
    *(v261 + OBJC_IVAR____TtC13GameOverlayUI29RemoteAlertAccessPointContext_allowCoalescing) = 1;
    *(v261 + OBJC_IVAR____TtC13GameOverlayUI29RemoteAlertAccessPointContext_newHighlightsQueue) = &_swiftEmptyArrayStorage;
    *(v261 + OBJC_IVAR____TtC13GameOverlayUI29RemoteAlertAccessPointContext_newHighlightsVersion) = 0;
    ObservationRegistrar.init()();

    v267 = v488;
    v261[2] = v489;
    v261[3] = v267;
    (*(v256 + 32))(v261 + OBJC_IVAR____TtC13GameOverlayUI29RemoteAlertAccessPointContext__anchoring, v257, v258);
    (v522[4])(v261 + OBJC_IVAR____TtC13GameOverlayUI29RemoteAlertAccessPointContext_useCase, v259, v521);
    *(v261 + OBJC_IVAR____TtC13GameOverlayUI29RemoteAlertAccessPointContext__hideCount) = 0;
    *(v261 + OBJC_IVAR____TtC13GameOverlayUI29RemoteAlertAccessPointContext__didReturnToForeground) = 0;
    *(v261 + OBJC_IVAR____TtC13GameOverlayUI29RemoteAlertAccessPointContext__newToGameCenter) = 0;
    *(v261 + OBJC_IVAR____TtC13GameOverlayUI29RemoteAlertAccessPointContext__isShowingDashboard) = 0;
    *(v261 + OBJC_IVAR____TtC13GameOverlayUI29RemoteAlertAccessPointContext__dismissDashboardRequested) = 0;
    v524 = v260;
    v525 = &off_1001240E8;
    v523[0] = v261;
    swift_beginAccess();
    sub_10003EF48(v523, (v75 + 8));
    swift_endAccess();
    v268 = v519;
    v269 = v520;
    v270 = sub_10007C628(0, v519, v520);
    v272 = v271;

    v273 = enum case for GameOverlayUIConfig.ServiceKind.dashboard(_:);
    v274 = type metadata accessor for GameOverlayUIConfig.ServiceKind();
    v275 = v516;
    (*(*(v274 - 8) + 104))(v516, v273, v274);
    v276 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v277 = swift_allocObject();
    v277[2] = v270;
    v277[3] = v272;
    v277[4] = v276;
    v277[5] = v268;
    v277[6] = v269;
    v278 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v279 = swift_allocObject();
    v279[2] = v270;
    v279[3] = v272;
    v279[4] = v278;
    v279[5] = v268;
    v279[6] = v269;
    v280 = v511;
    *(v275 + v511[5]) = 1;
    *(v275 + v280[6]) = v75;
    v281 = (v275 + v280[7]);
    *v281 = sub_1000403BC;
    v281[1] = v277;
    v282 = (v275 + v280[8]);
    *v282 = sub_1000403C4;
    v282[1] = v279;
    v283 = type metadata accessor for TaskPriority();
    v284 = v515;
    (*(*(v283 - 8) + 56))(v515, 1, 1, v283);
    v285 = v514;
    sub_10003F2F4(v275, v514);
    v286 = (*(v512 + 80) + 32) & ~*(v512 + 80);
    v287 = swift_allocObject();
    *(v287 + 16) = 0;
    *(v287 + 24) = 0;
    sub_10003F35C(v285, v287 + v286);

    swift_bridgeObjectRetain_n();
    sub_100014BBC(0, 0, v284, &unk_1000EA3D0, v287);

    sub_10003091C(v501, v490);
    sub_10003091C(v503, v497);
    sub_10002D820(v275);
    (v522[1])(v518, v521);
    goto LABEL_91;
  }

  v496 = v42;
  if (v55 == enum case for InGameBannerData.BannerType.topPercentageOnLeaderboard(_:))
  {
    (*(v30 + 96))(v33, v29);
    v90 = v33[1];
    v493 = *v33;
    v500 = v90;
    v92 = v521;
    v91 = v522;
    v93 = v503;
    (v522[13])(v503, enum case for AccessPointUseCase.leaderboardTopPercentageBanner(_:), v521);
    v94 = v496;
    v95 = InGameBannerData.title.getter();
    v97 = v96;
    v492 = InGameBannerData.body.getter();
    v494 = v98;
    v518 = InGameBannerData.image.getter();
    v100 = v99;
    v501 = InGameBannerData.clipData.getter();
    v102 = v101;
    v103 = v519;
    v104 = v520;
    v105 = sub_10007C628(1, v519, v520);
    if (v106)
    {
      v489 = v106;
      v490 = v105;
      v491 = v102;
      v107 = [objc_opt_self() currentContext];
      type metadata accessor for InGameBannerConnectionContext();
      swift_allocObject();

      v487 = v95;
      v488 = v97;
      v108 = sub_1000E08D0(v107, v95, v97);
      v109 = v494;
      v108[22] = v492;
      v108[23] = v109;

      v110 = v500;
      v108[26] = v493;
      v108[27] = v110;

      v111 = v108[24];
      v112 = v108[25];
      v113 = v518;
      v108[24] = v518;
      v108[25] = v100;
      sub_1000304CC(v113, v100);
      sub_10003091C(v111, v112);
      v108[18] = v103;
      v108[19] = v104;

      v108[29] = 0;

      v114 = v497;
      v108[32] = v495;
      v108[33] = v114;

      v118 = 0;
      v119 = 0;
      v120 = v517;
      v497 = v100;
      v121 = v501;
      if (v517 >> 60 != 15)
      {
        sub_10003F788(0, &qword_10012E0A8, NSKeyedUnarchiver_ptr);
        sub_10003F788(0, &qword_10012E0B0, GKGameInternal_ptr);
        v122 = v502;
        sub_1000304E0(v502, v120);
        v123 = static NSKeyedUnarchiver.unarchivedObject<A>(ofClass:from:)();
        if (v123)
        {
          v239 = v123;
          v240 = [v123 bundleIdentifier];
          v118 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v119 = v241;

          v242 = [objc_allocWithZone(GKGame) initWithInternalRepresentation:v239];
          sub_10003091C(v122, v120);
          v243 = v108[28];
          v108[28] = v242;
        }

        else
        {
          if (qword_10012CC18 != -1)
          {
            swift_once();
          }

          v336 = type metadata accessor for Logger();
          sub_100011F80(v336, qword_100135C88);
          v337 = Logger.logObject.getter();
          v338 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v337, v338))
          {
            v339 = swift_slowAlloc();
            *v339 = 0;
            _os_log_impl(&_mh_execute_header, v337, v338, "Game could not be deserialized", v339, 2u);
          }

          sub_10003091C(v122, v120);

          v118 = 0;
          v119 = 0;
        }
      }

      v524 = &type metadata for GameOverlayUIFeatureFlags;
      v525 = sub_10003F1EC(v115, v116, v117);
      LOBYTE(v523[0]) = 3;
      v340 = isFeatureEnabled(_:)();
      sub_10002E6CC(v523);
      if ((v340 & 1) != 0 && (v341 = v491, v342 = v488, v491 >> 60 != 15))
      {
        sub_1000304E0(v121, v491);

        v344 = sub_10003D154(v121, v341, v118, v119, v487, v342, 0, 0);
        v346 = v345;

        sub_10003091C(v121, v341);

        v347 = v108[30];
        v348 = v108[31];
        v108[30] = v344;
        v108[31] = v346;
        v343.n128_f64[0] = sub_10003091C(v347, v348);
      }

      else
      {
      }

      v349 = v509;
      v350 = v508;
      v351 = v510;
      (*(v509 + 104))(v508, enum case for AccessPointAnchoring.topCentered(_:), v510, v343);
      v352 = v507;
      (v522[2])(v507, v503, v521);
      v353 = type metadata accessor for RemoteAlertAccessPointContext(0);
      v354 = swift_allocObject();
      v354[2] = 0;
      v354[3] = 0;
      v355 = v504;
      UUID.init()();
      v356 = UUID.uuidString.getter();
      v358 = v357;
      (*(v505 + 8))(v355, v506);
      v354[4] = v356;
      v354[5] = v358;
      *(v354 + OBJC_IVAR____TtC13GameOverlayUI29RemoteAlertAccessPointContext__active) = 1;
      *(v354 + OBJC_IVAR____TtC13GameOverlayUI29RemoteAlertAccessPointContext__gkGame) = 0;
      v359 = (v354 + OBJC_IVAR____TtC13GameOverlayUI29RemoteAlertAccessPointContext__dismissHandler);
      *v359 = 0;
      v359[1] = 0;
      swift_unknownObjectWeakInit();
      swift_unknownObjectWeakInit();
      *(v354 + OBJC_IVAR____TtC13GameOverlayUI29RemoteAlertAccessPointContext_allowCoalescing) = 1;
      *(v354 + OBJC_IVAR____TtC13GameOverlayUI29RemoteAlertAccessPointContext_newHighlightsQueue) = &_swiftEmptyArrayStorage;
      *(v354 + OBJC_IVAR____TtC13GameOverlayUI29RemoteAlertAccessPointContext_newHighlightsVersion) = 0;
      ObservationRegistrar.init()();

      v360 = v489;
      v354[2] = v490;
      v354[3] = v360;
      (*(v349 + 32))(v354 + OBJC_IVAR____TtC13GameOverlayUI29RemoteAlertAccessPointContext__anchoring, v350, v351);
      (v522[4])(v354 + OBJC_IVAR____TtC13GameOverlayUI29RemoteAlertAccessPointContext_useCase, v352, v521);
      *(v354 + OBJC_IVAR____TtC13GameOverlayUI29RemoteAlertAccessPointContext__hideCount) = 0;
      *(v354 + OBJC_IVAR____TtC13GameOverlayUI29RemoteAlertAccessPointContext__didReturnToForeground) = 0;
      *(v354 + OBJC_IVAR____TtC13GameOverlayUI29RemoteAlertAccessPointContext__newToGameCenter) = 0;
      *(v354 + OBJC_IVAR____TtC13GameOverlayUI29RemoteAlertAccessPointContext__isShowingDashboard) = 0;
      *(v354 + OBJC_IVAR____TtC13GameOverlayUI29RemoteAlertAccessPointContext__dismissDashboardRequested) = 0;
      v524 = v353;
      v525 = &off_1001240E8;
      v523[0] = v354;
      swift_beginAccess();
      sub_10003EF48(v523, (v108 + 8));
      swift_endAccess();
      v362 = v519;
      v361 = v520;
      v363 = sub_10007C628(0, v519, v520);
      v365 = v364;

      v366 = enum case for GameOverlayUIConfig.ServiceKind.dashboard(_:);
      v367 = type metadata accessor for GameOverlayUIConfig.ServiceKind();
      v368 = v516;
      (*(*(v367 - 8) + 104))(v516, v366, v367);
      v369 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v370 = swift_allocObject();
      v370[2] = v363;
      v370[3] = v365;
      v370[4] = v369;
      v370[5] = v362;
      v370[6] = v361;
      v371 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v372 = swift_allocObject();
      v372[2] = v363;
      v372[3] = v365;
      v372[4] = v371;
      v372[5] = v362;
      v372[6] = v361;
      v373 = v511;
      *(v368 + v511[5]) = 1;
      *(v368 + v373[6]) = v108;
      v374 = (v368 + v373[7]);
      *v374 = sub_1000403BC;
      v374[1] = v370;
      v375 = (v368 + v373[8]);
      *v375 = sub_1000403C4;
      v375[1] = v372;
      v376 = type metadata accessor for TaskPriority();
      v377 = v515;
      (*(*(v376 - 8) + 56))(v515, 1, 1, v376);
      v378 = v514;
      sub_10003F2F4(v368, v514);
      v379 = (*(v512 + 80) + 32) & ~*(v512 + 80);
      v380 = swift_allocObject();
      *(v380 + 16) = 0;
      *(v380 + 24) = 0;
      sub_10003F35C(v378, v380 + v379);

      swift_bridgeObjectRetain_n();
      sub_100014BBC(0, 0, v377, &unk_1000EA3C8, v380);

      sub_10003091C(v501, v491);
      sub_10003091C(v518, v497);
      sub_10002D820(v368);
      (v522[1])(v503, v521);
      goto LABEL_91;
    }

    sub_10003091C(v501, v102);
    sub_10003091C(v518, v100);

    (v91[1])(v93, v92);
LABEL_39:
    (*(v499 + 8))(v94, v498);
    return;
  }

  if (v55 == enum case for InGameBannerData.BannerType.scoreSubmittedOnLeaderboard(_:))
  {
    (*(v30 + 96))(v33, v29);
    v124 = v33[1];
    v493 = *v33;
    v500 = v124;
    v125 = v521;
    v126 = v522;
    v127 = v501;
    (v522[13])(v501, enum case for AccessPointUseCase.leaderboardScoreSubmittedBanner(_:), v521);
    v94 = v496;
    v128 = InGameBannerData.title.getter();
    v503 = v129;
    v492 = InGameBannerData.body.getter();
    v494 = v130;
    v131 = InGameBannerData.image.getter();
    v133 = v132;
    v518 = InGameBannerData.clipData.getter();
    v135 = v134;
    v136 = v519;
    v137 = v520;
    v138 = sub_10007C628(1, v519, v520);
    if (!v139)
    {

      sub_10003091C(v518, v135);
      sub_10003091C(v131, v133);

      (v126[1])(v127, v125);
      goto LABEL_39;
    }

    v487 = v139;
    v488 = v138;
    v491 = v135;
    v140 = [objc_opt_self() currentContext];
    type metadata accessor for InGameBannerConnectionContext();
    swift_allocObject();
    v141 = v503;

    v486 = v128;
    v142 = sub_1000E08D0(v140, v128, v141);
    v143 = v494;
    v142[22] = v492;
    v142[23] = v143;

    v144 = v500;
    v142[26] = v493;
    v142[27] = v144;

    v145 = v142[24];
    v146 = v142[25];
    v142[24] = v131;
    v142[25] = v133;
    sub_1000304CC(v131, v133);
    sub_10003091C(v145, v146);
    v142[18] = v136;
    v142[19] = v137;

    v142[29] = 0;

    v147 = v497;
    v142[32] = v495;
    v142[33] = v147;

    v151 = 0;
    v152 = 0;
    v153 = v517;
    v154 = v518;
    if (v517 >> 60 != 15)
    {
      sub_10003F788(0, &qword_10012E0A8, NSKeyedUnarchiver_ptr);
      sub_10003F788(0, &qword_10012E0B0, GKGameInternal_ptr);
      sub_1000304E0(v502, v153);
      v155 = static NSKeyedUnarchiver.unarchivedObject<A>(ofClass:from:)();
      if (v155)
      {
        v289 = v155;
        v290 = [v155 bundleIdentifier];
        v151 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v152 = v291;

        v292 = [objc_allocWithZone(GKGame) initWithInternalRepresentation:v289];
        sub_10003091C(v502, v517);
        v293 = v142[28];
        v142[28] = v292;

        v141 = v503;
      }

      else
      {
        if (qword_10012CC18 != -1)
        {
          swift_once();
        }

        v386 = type metadata accessor for Logger();
        sub_100011F80(v386, qword_100135C88);
        v387 = Logger.logObject.getter();
        v388 = static os_log_type_t.error.getter();
        v389 = os_log_type_enabled(v387, v388);
        v141 = v503;
        if (v389)
        {
          v390 = swift_slowAlloc();
          *v390 = 0;
          _os_log_impl(&_mh_execute_header, v387, v388, "Game could not be deserialized", v390, 2u);
        }

        sub_10003091C(v502, v517);

        v151 = 0;
        v152 = 0;
      }
    }

    v524 = &type metadata for GameOverlayUIFeatureFlags;
    v525 = sub_10003F1EC(v148, v149, v150);
    LOBYTE(v523[0]) = 3;
    v294 = isFeatureEnabled(_:)();
    sub_10002E6CC(v523);
    v490 = v133;
    v489 = v131;
    if ((v294 & 1) != 0 && (v295 = v491, v491 >> 60 != 15))
    {
      sub_1000304E0(v154, v491);

      v297 = sub_10003D154(v154, v295, v151, v152, v486, v141, 0, 0);
      v299 = v298;

      sub_10003091C(v154, v295);

      v300 = v142[30];
      v301 = v142[31];
      v142[30] = v297;
      v142[31] = v299;
      v296.n128_f64[0] = sub_10003091C(v300, v301);
    }

    else
    {
    }

    v302 = v501;
    v303 = v509;
    v304 = v508;
    v305 = v510;
    (*(v509 + 104))(v508, enum case for AccessPointAnchoring.topCentered(_:), v510, v296);
    v306 = v507;
    (v522[2])(v507, v302, v521);
    v307 = type metadata accessor for RemoteAlertAccessPointContext(0);
    v308 = swift_allocObject();
    v308[2] = 0;
    v308[3] = 0;
    v309 = v504;
    UUID.init()();
    v310 = UUID.uuidString.getter();
    v312 = v311;
    (*(v505 + 8))(v309, v506);
    v308[4] = v310;
    v308[5] = v312;
    *(v308 + OBJC_IVAR____TtC13GameOverlayUI29RemoteAlertAccessPointContext__active) = 1;
    *(v308 + OBJC_IVAR____TtC13GameOverlayUI29RemoteAlertAccessPointContext__gkGame) = 0;
    v313 = (v308 + OBJC_IVAR____TtC13GameOverlayUI29RemoteAlertAccessPointContext__dismissHandler);
    *v313 = 0;
    v313[1] = 0;
    swift_unknownObjectWeakInit();
    swift_unknownObjectWeakInit();
    *(v308 + OBJC_IVAR____TtC13GameOverlayUI29RemoteAlertAccessPointContext_allowCoalescing) = 1;
    *(v308 + OBJC_IVAR____TtC13GameOverlayUI29RemoteAlertAccessPointContext_newHighlightsQueue) = &_swiftEmptyArrayStorage;
    *(v308 + OBJC_IVAR____TtC13GameOverlayUI29RemoteAlertAccessPointContext_newHighlightsVersion) = 0;
    ObservationRegistrar.init()();

    v314 = v487;
    v308[2] = v488;
    v308[3] = v314;
    (*(v303 + 32))(v308 + OBJC_IVAR____TtC13GameOverlayUI29RemoteAlertAccessPointContext__anchoring, v304, v305);
    (v522[4])(v308 + OBJC_IVAR____TtC13GameOverlayUI29RemoteAlertAccessPointContext_useCase, v306, v521);
    *(v308 + OBJC_IVAR____TtC13GameOverlayUI29RemoteAlertAccessPointContext__hideCount) = 0;
    *(v308 + OBJC_IVAR____TtC13GameOverlayUI29RemoteAlertAccessPointContext__didReturnToForeground) = 0;
    *(v308 + OBJC_IVAR____TtC13GameOverlayUI29RemoteAlertAccessPointContext__newToGameCenter) = 0;
    *(v308 + OBJC_IVAR____TtC13GameOverlayUI29RemoteAlertAccessPointContext__isShowingDashboard) = 0;
    *(v308 + OBJC_IVAR____TtC13GameOverlayUI29RemoteAlertAccessPointContext__dismissDashboardRequested) = 0;
    v524 = v307;
    v525 = &off_1001240E8;
    v523[0] = v308;
    swift_beginAccess();
    sub_10003EF48(v523, (v142 + 8));
    swift_endAccess();
    v316 = v519;
    v315 = v520;
    v317 = sub_10007C628(0, v519, v520);
    v319 = v318;

    v320 = enum case for GameOverlayUIConfig.ServiceKind.dashboard(_:);
    v321 = type metadata accessor for GameOverlayUIConfig.ServiceKind();
    v322 = v516;
    (*(*(v321 - 8) + 104))(v516, v320, v321);
    v323 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v324 = swift_allocObject();
    v324[2] = v317;
    v324[3] = v319;
    v324[4] = v323;
    v324[5] = v316;
    v324[6] = v315;
    v325 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v326 = swift_allocObject();
    v326[2] = v317;
    v326[3] = v319;
    v326[4] = v325;
    v326[5] = v316;
    v326[6] = v315;
    v327 = v511;
    *(v322 + v511[5]) = 1;
    *(v322 + v327[6]) = v142;
    v328 = (v322 + v327[7]);
    *v328 = sub_1000403BC;
    v328[1] = v324;
    v329 = (v322 + v327[8]);
    *v329 = sub_1000403C4;
    v329[1] = v326;
    v330 = type metadata accessor for TaskPriority();
    v331 = v515;
    (*(*(v330 - 8) + 56))(v515, 1, 1, v330);
    v332 = v514;
    sub_10003F2F4(v322, v514);
    v333 = (*(v512 + 80) + 32) & ~*(v512 + 80);
    v334 = swift_allocObject();
    *(v334 + 16) = 0;
    *(v334 + 24) = 0;
    sub_10003F35C(v332, v334 + v333);

    swift_bridgeObjectRetain_n();
    sub_100014BBC(0, 0, v331, &unk_1000EA3C0, v334);

    sub_10003091C(v518, v491);
    sub_10003091C(v489, v490);
    v335 = v322;
LABEL_90:
    sub_10002D820(v335);
    (v522[1])(v501, v521);
LABEL_91:
    (*(v499 + 8))(v496, v498);
    return;
  }

  if (v55 == enum case for InGameBannerData.BannerType.youEarnedAchievement(_:))
  {
    (*(v30 + 96))(v33, v29);
    v156 = *v33;
    v500 = v33[1];
    v157 = v522;
    v158 = v522[13];
    v501 = v20;
    v159 = v521;
    v158(v20, enum case for AccessPointUseCase.achievementBanner(_:), v521);
    v94 = v496;
    v160 = InGameBannerData.title.getter();
    v494 = v161;
    v493 = InGameBannerData.body.getter();
    v163 = v162;
    v518 = InGameBannerData.image.getter();
    v165 = v164;
    v503 = InGameBannerData.clipData.getter();
    v167 = v166;
    v168 = v519;
    v169 = v520;
    v170 = sub_10007C628(1, v519, v520);
    if (!v171)
    {

      sub_10003091C(v503, v167);
      sub_10003091C(v518, v165);

      (v157[1])(v501, v159);
      goto LABEL_39;
    }

    v490 = v171;
    v491 = v170;
    v492 = v167;
    v172 = v169;
    v173 = [objc_opt_self() currentContext];
    type metadata accessor for InGameBannerConnectionContext();
    swift_allocObject();
    v174 = v156;
    v175 = v494;

    v489 = v160;
    v176 = sub_1000E08D0(v173, v160, v175);
    v176[22] = v493;
    v176[23] = v163;

    v177 = v500;
    v176[26] = v174;
    v176[27] = v177;

    v178 = v176[24];
    v179 = v176[25];
    v180 = v518;
    v176[24] = v518;
    v176[25] = v165;
    sub_1000304CC(v180, v165);
    sub_10003091C(v178, v179);
    v176[18] = v168;
    v176[19] = v172;

    v176[29] = 0;

    v181 = v497;
    v176[32] = v495;
    v176[33] = v181;

    v185 = 0;
    v186 = 0;
    v187 = v517;
    v497 = v165;
    v188 = v503;
    if (v517 >> 60 != 15)
    {
      sub_10003F788(0, &qword_10012E0A8, NSKeyedUnarchiver_ptr);
      sub_10003F788(0, &qword_10012E0B0, GKGameInternal_ptr);
      sub_1000304E0(v502, v187);
      v189 = static NSKeyedUnarchiver.unarchivedObject<A>(ofClass:from:)();
      if (v189)
      {
        v381 = v189;
        v382 = [v189 bundleIdentifier];
        v185 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v186 = v383;

        v384 = [objc_allocWithZone(GKGame) initWithInternalRepresentation:v381];
        sub_10003091C(v502, v517);
        v385 = v176[28];
        v176[28] = v384;
      }

      else
      {
        if (qword_10012CC18 != -1)
        {
          swift_once();
        }

        v396 = type metadata accessor for Logger();
        sub_100011F80(v396, qword_100135C88);
        v397 = Logger.logObject.getter();
        v398 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v397, v398))
        {
          v399 = swift_slowAlloc();
          *v399 = 0;
          _os_log_impl(&_mh_execute_header, v397, v398, "Game could not be deserialized", v399, 2u);
        }

        sub_10003091C(v502, v517);

        v185 = 0;
        v186 = 0;
      }
    }

    v524 = &type metadata for GameOverlayUIFeatureFlags;
    v525 = sub_10003F1EC(v182, v183, v184);
    LOBYTE(v523[0]) = 3;
    v400 = isFeatureEnabled(_:)();
    sub_10002E6CC(v523);
    if ((v400 & 1) != 0 && (v401 = v492, v492 >> 60 != 15))
    {
      v523[0] = 0;
      v523[1] = 0xE000000000000000;
      sub_1000304E0(v188, v492);
      _StringGuts.grow(_:)(16);

      strcpy(v523, "achievement://");
      HIBYTE(v523[1]) = -18;
      v403._countAndFlagsBits = v174;
      v403._object = v177;
      String.append(_:)(v403);

      v404 = sub_10003D154(v188, v401, v185, v186, v489, v175, v523[0], v523[1]);
      v406 = v405;

      sub_10003091C(v188, v401);

      v407 = v176[30];
      v408 = v176[31];
      v176[30] = v404;
      v176[31] = v406;
      v402.n128_f64[0] = sub_10003091C(v407, v408);
    }

    else
    {
    }

    v409 = v509;
    v410 = v508;
    v411 = v510;
    (*(v509 + 104))(v508, enum case for AccessPointAnchoring.topCentered(_:), v510, v402);
    v412 = v507;
    (v522[2])(v507, v501, v521);
    v413 = type metadata accessor for RemoteAlertAccessPointContext(0);
    v414 = swift_allocObject();
    v414[2] = 0;
    v414[3] = 0;
    v415 = v504;
    UUID.init()();
    v416 = UUID.uuidString.getter();
    v418 = v417;
    (*(v505 + 8))(v415, v506);
    v414[4] = v416;
    v414[5] = v418;
    *(v414 + OBJC_IVAR____TtC13GameOverlayUI29RemoteAlertAccessPointContext__active) = 1;
    *(v414 + OBJC_IVAR____TtC13GameOverlayUI29RemoteAlertAccessPointContext__gkGame) = 0;
    v419 = (v414 + OBJC_IVAR____TtC13GameOverlayUI29RemoteAlertAccessPointContext__dismissHandler);
    *v419 = 0;
    v419[1] = 0;
    swift_unknownObjectWeakInit();
    swift_unknownObjectWeakInit();
    *(v414 + OBJC_IVAR____TtC13GameOverlayUI29RemoteAlertAccessPointContext_allowCoalescing) = 1;
    *(v414 + OBJC_IVAR____TtC13GameOverlayUI29RemoteAlertAccessPointContext_newHighlightsQueue) = &_swiftEmptyArrayStorage;
    *(v414 + OBJC_IVAR____TtC13GameOverlayUI29RemoteAlertAccessPointContext_newHighlightsVersion) = 0;
    ObservationRegistrar.init()();

    v420 = v490;
    v414[2] = v491;
    v414[3] = v420;
    (*(v409 + 32))(v414 + OBJC_IVAR____TtC13GameOverlayUI29RemoteAlertAccessPointContext__anchoring, v410, v411);
    (v522[4])(v414 + OBJC_IVAR____TtC13GameOverlayUI29RemoteAlertAccessPointContext_useCase, v412, v521);
    *(v414 + OBJC_IVAR____TtC13GameOverlayUI29RemoteAlertAccessPointContext__hideCount) = 0;
    *(v414 + OBJC_IVAR____TtC13GameOverlayUI29RemoteAlertAccessPointContext__didReturnToForeground) = 0;
    *(v414 + OBJC_IVAR____TtC13GameOverlayUI29RemoteAlertAccessPointContext__newToGameCenter) = 0;
    *(v414 + OBJC_IVAR____TtC13GameOverlayUI29RemoteAlertAccessPointContext__isShowingDashboard) = 0;
    *(v414 + OBJC_IVAR____TtC13GameOverlayUI29RemoteAlertAccessPointContext__dismissDashboardRequested) = 0;
    v524 = v413;
    v525 = &off_1001240E8;
    v523[0] = v414;
    swift_beginAccess();
    sub_10003EF48(v523, (v176 + 8));
    swift_endAccess();
    v421 = v519;
    v422 = v520;
    v423 = sub_10007C628(0, v519, v520);
    v425 = v424;

    v426 = enum case for GameOverlayUIConfig.ServiceKind.dashboard(_:);
    v427 = type metadata accessor for GameOverlayUIConfig.ServiceKind();
    v428 = v516;
    (*(*(v427 - 8) + 104))(v516, v426, v427);
    v429 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v430 = swift_allocObject();
    v430[2] = v423;
    v430[3] = v425;
    v430[4] = v429;
    v430[5] = v421;
    v430[6] = v422;
    v431 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v432 = swift_allocObject();
    v432[2] = v423;
    v432[3] = v425;
    v432[4] = v431;
    v432[5] = v421;
    v432[6] = v422;
    v433 = v511;
    *(v428 + v511[5]) = 1;
    *(v428 + v433[6]) = v176;
    v434 = (v428 + v433[7]);
    *v434 = sub_1000403BC;
    v434[1] = v430;
    v435 = (v428 + v433[8]);
    *v435 = sub_1000403C4;
    v435[1] = v432;
    v436 = type metadata accessor for TaskPriority();
    v437 = v515;
    (*(*(v436 - 8) + 56))(v515, 1, 1, v436);
    v438 = v514;
    sub_10003F2F4(v428, v514);
    v439 = (*(v512 + 80) + 32) & ~*(v512 + 80);
    v440 = swift_allocObject();
    *(v440 + 16) = 0;
    *(v440 + 24) = 0;
    sub_10003F35C(v438, v440 + v439);

    swift_bridgeObjectRetain_n();
    sub_100014BBC(0, 0, v437, &unk_1000EA3B8, v440);

    sub_10003091C(v503, v492);
    sub_10003091C(v518, v497);
    v335 = v428;
    goto LABEL_90;
  }

  if (v55 == enum case for InGameBannerData.BannerType.general(_:))
  {
    v190 = v521;
    v191 = v522;
    (v522[13])(v500, enum case for AccessPointUseCase.inGameBanner(_:), v521);
    v94 = v496;
    v192 = InGameBannerData.title.getter();
    v194 = v193;
    v501 = InGameBannerData.body.getter();
    v503 = v195;
    v196 = InGameBannerData.image.getter();
    v198 = v197;
    v518 = InGameBannerData.clipData.getter();
    v200 = v199;
    v202 = v519;
    v201 = v520;
    v203 = sub_10007C628(1, v519, v520);
    if (v204)
    {
      v492 = v204;
      v493 = v203;
      v494 = v200;
      v205 = [objc_opt_self() currentContext];
      type metadata accessor for InGameBannerConnectionContext();
      swift_allocObject();

      v490 = v192;
      v491 = v194;
      v206 = v198;
      v207 = sub_1000E08D0(v205, v192, v194);
      v208 = v503;
      v207[22] = v501;
      v207[23] = v208;

      v207[26] = 0;
      v207[27] = 0;

      v209 = v207[24];
      v210 = v207[25];
      v207[24] = v196;
      v207[25] = v206;
      v503 = v206;
      sub_1000304CC(v196, v206);
      sub_10003091C(v209, v210);
      v207[18] = v202;
      v207[19] = v201;

      v207[29] = 0;

      v211 = v497;
      v207[32] = v495;
      v207[33] = v211;

      v215 = 0;
      v216 = 0;
      v217 = v517;
      v501 = v196;
      v218 = v518;
      v219 = v500;
      if (v517 >> 60 != 15)
      {
        sub_10003F788(0, &qword_10012E0A8, NSKeyedUnarchiver_ptr);
        sub_10003F788(0, &qword_10012E0B0, GKGameInternal_ptr);
        sub_1000304E0(v502, v217);
        v220 = static NSKeyedUnarchiver.unarchivedObject<A>(ofClass:from:)();
        if (v220)
        {
          v391 = v220;
          v392 = [v220 bundleIdentifier];
          v215 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v216 = v393;

          v394 = [objc_allocWithZone(GKGame) initWithInternalRepresentation:v391];
          sub_10003091C(v502, v217);
          v395 = v207[28];
          v207[28] = v394;
        }

        else
        {
          if (qword_10012CC18 != -1)
          {
            swift_once();
          }

          v441 = type metadata accessor for Logger();
          sub_100011F80(v441, qword_100135C88);
          v442 = Logger.logObject.getter();
          v443 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v442, v443))
          {
            v444 = swift_slowAlloc();
            *v444 = 0;
            _os_log_impl(&_mh_execute_header, v442, v443, "Game could not be deserialized", v444, 2u);
          }

          sub_10003091C(v502, v217);

          v215 = 0;
          v216 = 0;
        }
      }

      v524 = &type metadata for GameOverlayUIFeatureFlags;
      v525 = sub_10003F1EC(v212, v213, v214);
      LOBYTE(v523[0]) = 3;
      v445 = isFeatureEnabled(_:)();
      sub_10002E6CC(v523);
      if ((v445 & 1) != 0 && (v446 = v494, v447 = v491, v494 >> 60 != 15))
      {
        sub_1000304CC(v218, v494);
        v449 = sub_10003D154(v218, v446, v215, v216, v490, v447, 0, 0);
        v451 = v450;

        sub_10003091C(v218, v446);

        v452 = v207[30];
        v453 = v207[31];
        v207[30] = v449;
        v207[31] = v451;
        v448.n128_f64[0] = sub_10003091C(v452, v453);
      }

      else
      {
      }

      v454 = v509;
      v455 = v508;
      v456 = v510;
      (*(v509 + 104))(v508, enum case for AccessPointAnchoring.topCentered(_:), v510, v448);
      v457 = v507;
      (v522[2])(v507, v219, v521);
      v458 = type metadata accessor for RemoteAlertAccessPointContext(0);
      v459 = swift_allocObject();
      v459[2] = 0;
      v459[3] = 0;
      v460 = v504;
      UUID.init()();
      v461 = UUID.uuidString.getter();
      v463 = v462;
      (*(v505 + 8))(v460, v506);
      v459[4] = v461;
      v459[5] = v463;
      *(v459 + OBJC_IVAR____TtC13GameOverlayUI29RemoteAlertAccessPointContext__active) = 1;
      *(v459 + OBJC_IVAR____TtC13GameOverlayUI29RemoteAlertAccessPointContext__gkGame) = 0;
      v464 = (v459 + OBJC_IVAR____TtC13GameOverlayUI29RemoteAlertAccessPointContext__dismissHandler);
      *v464 = 0;
      v464[1] = 0;
      swift_unknownObjectWeakInit();
      swift_unknownObjectWeakInit();
      *(v459 + OBJC_IVAR____TtC13GameOverlayUI29RemoteAlertAccessPointContext_allowCoalescing) = 1;
      *(v459 + OBJC_IVAR____TtC13GameOverlayUI29RemoteAlertAccessPointContext_newHighlightsQueue) = &_swiftEmptyArrayStorage;
      *(v459 + OBJC_IVAR____TtC13GameOverlayUI29RemoteAlertAccessPointContext_newHighlightsVersion) = 0;
      ObservationRegistrar.init()();

      v465 = v492;
      v459[2] = v493;
      v459[3] = v465;
      (*(v454 + 32))(v459 + OBJC_IVAR____TtC13GameOverlayUI29RemoteAlertAccessPointContext__anchoring, v455, v456);
      (v522[4])(v459 + OBJC_IVAR____TtC13GameOverlayUI29RemoteAlertAccessPointContext_useCase, v457, v521);
      *(v459 + OBJC_IVAR____TtC13GameOverlayUI29RemoteAlertAccessPointContext__hideCount) = 0;
      *(v459 + OBJC_IVAR____TtC13GameOverlayUI29RemoteAlertAccessPointContext__didReturnToForeground) = 0;
      *(v459 + OBJC_IVAR____TtC13GameOverlayUI29RemoteAlertAccessPointContext__newToGameCenter) = 0;
      *(v459 + OBJC_IVAR____TtC13GameOverlayUI29RemoteAlertAccessPointContext__isShowingDashboard) = 0;
      *(v459 + OBJC_IVAR____TtC13GameOverlayUI29RemoteAlertAccessPointContext__dismissDashboardRequested) = 0;
      v524 = v458;
      v525 = &off_1001240E8;
      v523[0] = v459;
      swift_beginAccess();
      sub_10003EF48(v523, (v207 + 8));
      swift_endAccess();
      v467 = v519;
      v466 = v520;
      v468 = sub_10007C628(0, v519, v520);
      v470 = v469;

      v471 = enum case for GameOverlayUIConfig.ServiceKind.dashboard(_:);
      v472 = type metadata accessor for GameOverlayUIConfig.ServiceKind();
      v473 = v516;
      (*(*(v472 - 8) + 104))(v516, v471, v472);
      v474 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v475 = swift_allocObject();
      *(v475 + 2) = v468;
      *(v475 + 3) = v470;
      *(v475 + 4) = v474;
      *(v475 + 5) = v467;
      *(v475 + 6) = v466;
      v476 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v477 = swift_allocObject();
      *(v477 + 2) = v468;
      *(v477 + 3) = v470;
      *(v477 + 4) = v476;
      *(v477 + 5) = v467;
      *(v477 + 6) = v466;
      v478 = v511;
      *(v473 + v511[5]) = 1;
      *(v473 + v478[6]) = v207;
      v479 = (v473 + v478[7]);
      *v479 = sub_10003F27C;
      v479[1] = v475;
      v480 = (v473 + v478[8]);
      *v480 = sub_10003F2A0;
      v480[1] = v477;
      v481 = type metadata accessor for TaskPriority();
      v482 = v515;
      (*(*(v481 - 8) + 56))(v515, 1, 1, v481);
      v483 = v514;
      sub_10003F2F4(v473, v514);
      v484 = (*(v512 + 80) + 32) & ~*(v512 + 80);
      v485 = swift_allocObject();
      *(v485 + 16) = 0;
      *(v485 + 24) = 0;
      sub_10003F35C(v483, v485 + v484);

      swift_bridgeObjectRetain_n();
      sub_100014BBC(0, 0, v482, &unk_1000EA3B0, v485);

      sub_10003091C(v518, v494);
      sub_10003091C(v501, v503);
      sub_10002D820(v473);
      (v522[1])(v500, v521);
      goto LABEL_91;
    }

    sub_10003091C(v518, v200);
    sub_10003091C(v196, v198);

    (v191[1])(v500, v190);
    goto LABEL_39;
  }

  if (qword_10012CC18 != -1)
  {
    swift_once();
  }

  v226 = type metadata accessor for Logger();
  sub_100011F80(v226, qword_100135C88);
  v227 = v499;
  v228 = v496;
  v229 = v498;
  (*(v499 + 16))(v39, v496, v498);
  v230 = Logger.logObject.getter();
  v231 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v230, v231))
  {
    v232 = swift_slowAlloc();
    v520 = v232;
    v522 = swift_slowAlloc();
    v523[0] = v522;
    *v232 = 136315138;
    LODWORD(v521) = v231;
    InGameBannerData.type.getter();
    v233 = String.init<A>(describing:)();
    v235 = v234;
    v236 = *(v227 + 8);
    v236(v39, v229);
    v237 = sub_1000BA5C8(v233, v235, v523);

    v238 = v520;
    *(v520 + 4) = v237;
    _os_log_impl(&_mh_execute_header, v230, v521, "showInGameBanner: Unknown banner type: %s", v238, 0xCu);
    sub_10002E6CC(v522);

    v236(v496, v229);
  }

  else
  {

    v288 = *(v227 + 8);
    v288(v39, v229);
    v288(v228, v229);
  }

  (*(v30 + 8))(v33, v29);
}

uint64_t sub_10003AFC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v5[4] = type metadata accessor for RemoteAlertRequest(0);
  v5[5] = swift_task_alloc();
  v6 = swift_task_alloc();
  v5[6] = v6;
  *v6 = v5;
  v6[1] = sub_10003B088;

  return DashboardRequest.updateAsNeeded()();
}

uint64_t sub_10003B088()
{

  return _swift_task_switch(sub_10003B184, 0, 0);
}

uint64_t sub_10003B184()
{
  v31 = v0;
  if (qword_10012CC18 != -1)
  {
    swift_once();
  }

  v1 = v0[2];
  v2 = type metadata accessor for Logger();
  sub_100011F80(v2, qword_100135C88);
  v3 = v1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[2];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v30 = v8;
    *v7 = 136315138;
    v9 = (v6 + OBJC_IVAR____TtC13GameOverlayUI16DashboardRequest_launchContext);
    if (*(v6 + OBJC_IVAR____TtC13GameOverlayUI16DashboardRequest_launchContext + 8))
    {
      v10 = *v9;
      v11 = v9[1];
    }

    else
    {
      v11 = 0xE300000000000000;
      v10 = 7104878;
    }

    v12 = sub_1000BA5C8(v10, v11, &v30);

    *(v7 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v4, v5, "showDashboard called with launchContext: %s", v7, 0xCu);
    sub_10002E6CC(v8);
  }

  v13 = (v0[2] + OBJC_IVAR____TtC13GameOverlayUI16DashboardRequest_launchContext);
  v15 = *v13;
  v14 = v13[1];
  v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (v14)
  {
    if (v15 == v16 && v14 == v17)
    {

LABEL_20:
      if (qword_10012CC20 != -1)
      {
        swift_once();
      }

      v29 = qword_100135CA0;
      v0[7] = qword_100135CA0;

      return _swift_task_switch(sub_10003B4D8, v29, 0);
    }

    v19 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v19)
    {
      goto LABEL_20;
    }
  }

  else
  {
  }

  v21 = v0[4];
  v20 = v0[5];
  v22 = v0[3];
  v23 = enum case for GameOverlayUIConfig.ServiceKind.dashboard(_:);
  v24 = type metadata accessor for GameOverlayUIConfig.ServiceKind();
  (*(*(v24 - 8) + 104))(v20, v23, v24);
  *(v20 + v21[5]) = 2;
  *(v20 + v21[6]) = v22;
  v25 = (v20 + v21[7]);
  *v25 = 0;
  v25[1] = 0;
  v26 = (v20 + v21[8]);
  *v26 = 0;
  v26[1] = 0;

  sub_1000D0750(v20, 0, 0, 0);
  sub_10002D820(v20);

  v27 = v0[1];

  return v27();
}

uint64_t sub_10003B4D8()
{
  *(v0 + 64) = sub_10009312C() & 1;

  return _swift_task_switch(sub_10003B548, 0, 0);
}

uint64_t sub_10003B548()
{
  if ((*(v0 + 64) & 1) == 0)
  {
    v2 = *(v0 + 32);
    v1 = *(v0 + 40);
    v3 = *(v0 + 24);
    v4 = enum case for GameOverlayUIConfig.ServiceKind.dashboard(_:);
    v5 = type metadata accessor for GameOverlayUIConfig.ServiceKind();
    (*(*(v5 - 8) + 104))(v1, v4, v5);
    *(v1 + v2[5]) = 2;
    *(v1 + v2[6]) = v3;
    v6 = (v1 + v2[7]);
    *v6 = 0;
    v6[1] = 0;
    v7 = (v1 + v2[8]);
    *v7 = 0;
    v7[1] = 0;

    sub_1000D0750(v1, 0, 0, 0);
    sub_10002D820(v1);
  }

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_10003B748(void *a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5, char *a6, uint64_t a7)
{
  v10 = a4;
  if (a3)
  {
    v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v13;
    if (v10)
    {
      goto LABEL_3;
    }

LABEL_6:
    v15 = 0;
    if (a5)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  v12 = 0;
  v14 = 0;
  if (!a4)
  {
    goto LABEL_6;
  }

LABEL_3:
  v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v16;
  if (a5)
  {
LABEL_4:
    v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    a5 = v18;
    goto LABEL_8;
  }

LABEL_7:
  v17 = 0;
LABEL_8:
  v19 = a1;
  sub_10003E824(v12, v14, v15, v10, v17, a5, a6, a7);
}

uint64_t sub_10003B8F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 40) = a7;
  *(v8 + 48) = a8;
  *(v8 + 80) = a6;
  *(v8 + 24) = a4;
  *(v8 + 32) = a5;
  *(v8 + 56) = type metadata accessor for RemoteAlertRequest(0);
  *(v8 + 64) = swift_task_alloc();

  return _swift_task_switch(sub_10003B990, 0, 0);
}

uint64_t sub_10003B990()
{
  v24 = v0;
  if (qword_10012CC18 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100011F80(v1, qword_100135C88);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 32);
    v5 = *(v0 + 40);
    v6 = *(v0 + 80);
    v7 = *(v0 + 24);
    v8 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    *v8 = 136315650;
    *(v8 + 4) = sub_1000BA5C8(v7, v4, &v23);
    *(v8 + 12) = 1024;
    *(v8 + 14) = v6;
    *(v8 + 18) = 2080;
    *(v0 + 16) = v5;

    sub_100002B38(&qword_10012DFA0, &qword_1000EA310);
    v9 = String.init<A>(describing:)();
    v11 = sub_1000BA5C8(v9, v10, &v23);

    *(v8 + 20) = v11;
    _os_log_impl(&_mh_execute_header, v2, v3, "Enqueuing Game Mode banner: %s enabled:%{BOOL}d actionSymbols:%s", v8, 0x1Cu);
    swift_arrayDestroy();
  }

  v13 = *(v0 + 56);
  v12 = *(v0 + 64);
  v14 = *(v0 + 48);
  v15 = enum case for GameOverlayUIConfig.ServiceKind.dashboard(_:);
  v16 = type metadata accessor for GameOverlayUIConfig.ServiceKind();
  (*(*(v16 - 8) + 104))(v12, v15, v16);
  *(v12 + v13[5]) = 8;
  *(v12 + v13[6]) = v14;
  v17 = (v12 + v13[7]);
  *v17 = 0;
  v17[1] = 0;
  v18 = (v12 + v13[8]);
  *v18 = 0;
  v18[1] = 0;
  v19 = qword_10012CC38;

  if (v19 != -1)
  {
    swift_once();
  }

  v20 = swift_task_alloc();
  *(v0 + 72) = v20;
  *v20 = v0;
  v20[1] = sub_10003BC98;
  v21 = *(v0 + 64);

  return sub_1000C6FF4(v21);
}

uint64_t sub_10003BC98()
{

  return _swift_task_switch(sub_10003BD94, 0, 0);
}

uint64_t sub_10003BD94()
{
  sub_10002D820(*(v0 + 64));

  v1 = *(v0 + 8);

  return v1();
}

void sub_10003BE58(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_10003FED0(&qword_10012CFC8, type metadata accessor for RemoteAlertAccessPointContext, &unk_1000EE6AC);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + OBJC_IVAR____TtC13GameOverlayUI29RemoteAlertAccessPointContext__hideCount);
}

uint64_t sub_10003BF30(uint64_t a1, void (*a2)(char *, char *, uint64_t), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, void *a8, uint64_t a9, void *a10)
{
  v90 = a8;
  v89 = a7;
  v99 = a6;
  v98 = a5;
  v88 = a4;
  v87 = a3;
  v92 = a2;
  v91 = a1;
  v10 = sub_100002B38(&unk_100130F10, &qword_1000EA660);
  __chkstk_darwin(v10 - 8);
  v12 = &v84 - v11;
  v13 = type metadata accessor for RemoteAlertRequest(0);
  v14 = *(v13 - 8);
  v101 = v13;
  v102 = v14;
  __chkstk_darwin(v13);
  v103 = v15;
  v104 = &v84 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v84 - v17;
  v94 = type metadata accessor for UUID();
  v93 = *(v94 - 1);
  __chkstk_darwin(v94);
  v20 = &v84 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_100002B38(&qword_10012E0C8, &qword_1000EA438);
  __chkstk_darwin(v21 - 8);
  v23 = &v84 - v22;
  v24 = type metadata accessor for AccessPointAnchoring();
  v95 = *(v24 - 8);
  __chkstk_darwin(v24);
  v106 = &v84 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_100002B38(&unk_1001324A0, &unk_1000EF030);
  __chkstk_darwin(v26 - 8);
  v28 = &v84 - v27;
  v29 = type metadata accessor for AccessPointUseCase();
  v30 = *(v29 - 8);
  __chkstk_darwin(v29);
  v108 = &v84 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = v31;
  __chkstk_darwin(v32);
  v111 = &v84 - v33;
  v96 = a9;
  v97 = a10;
  result = sub_10007C628(0, a9, a10);
  v107 = result;
  v109 = v35;
  if (v35)
  {
    v86 = v18;
    v105 = v12;
    v36 = [objc_opt_self() currentContext];
    type metadata accessor for AccessPointConnectionContext();
    *(swift_allocObject() + 160) = 0;
    v84 = sub_1000E0554(v36);

    AccessPointUseCase.init(rawValue:)();
    v37 = *(v30 + 48);
    v38 = v37(v28, 1, v29);
    v85 = v30;
    v110 = v29;
    if (v38 == 1)
    {
      (*(v30 + 104))(v111, enum case for AccessPointUseCase.accessPointOnly(_:), v29);
      v39 = v37(v28, 1, v29);
      v40 = v95;
      v41 = v106;
      if (v39 != 1)
      {
        sub_100005688(v28, &unk_1001324A0, &unk_1000EF030);
      }
    }

    else
    {
      (*(v30 + 32))(v111, v28, v29);
      v40 = v95;
      v41 = v106;
    }

    LODWORD(v89) = [v89 BOOLValueSafe];
    LODWORD(v90) = [v90 BOOLValueSafe];

    AccessPointAnchoring.init(rawValue:)();
    v42 = *(v40 + 48);
    if (v42(v23, 1, v24) == 1)
    {
      (*(v40 + 104))(v41, enum case for AccessPointAnchoring.topLeading(_:), v24);
      if (v42(v23, 1, v24) != 1)
      {
        sub_100005688(v23, &qword_10012E0C8, &qword_1000EA438);
      }
    }

    else
    {
      (*(v40 + 32))(v41, v23, v24);
    }

    v43 = v85;
    v44 = *(v85 + 16);
    v45 = v108;
    v46 = v110;
    v95 = v85 + 16;
    v92 = v44;
    v44(v108, v111, v110);
    v47 = type metadata accessor for RemoteAlertAccessPointContext(0);
    v48 = swift_allocObject();
    v48[2] = 0;
    v48[3] = 0;
    UUID.init()();
    v49 = UUID.uuidString.getter();
    v51 = v50;
    (*(v93 + 8))(v20, v94);
    v48[4] = v49;
    v48[5] = v51;
    *(v48 + OBJC_IVAR____TtC13GameOverlayUI29RemoteAlertAccessPointContext__active) = 1;
    *(v48 + OBJC_IVAR____TtC13GameOverlayUI29RemoteAlertAccessPointContext__gkGame) = 0;
    v52 = (v48 + OBJC_IVAR____TtC13GameOverlayUI29RemoteAlertAccessPointContext__dismissHandler);
    *v52 = 0;
    v52[1] = 0;
    swift_unknownObjectWeakInit();
    swift_unknownObjectWeakInit();
    *(v48 + OBJC_IVAR____TtC13GameOverlayUI29RemoteAlertAccessPointContext_allowCoalescing) = 1;
    *(v48 + OBJC_IVAR____TtC13GameOverlayUI29RemoteAlertAccessPointContext_newHighlightsQueue) = &_swiftEmptyArrayStorage;
    *(v48 + OBJC_IVAR____TtC13GameOverlayUI29RemoteAlertAccessPointContext_newHighlightsVersion) = 0;
    ObservationRegistrar.init()();

    v53 = v106;
    v54 = v109;
    v48[2] = v107;
    v48[3] = v54;
    (*(v40 + 32))(v48 + OBJC_IVAR____TtC13GameOverlayUI29RemoteAlertAccessPointContext__anchoring, v53, v24);
    v55 = v43;
    v56 = *(v43 + 32);
    v106 = (v43 + 32);
    v94 = v56;
    v56(v48 + OBJC_IVAR____TtC13GameOverlayUI29RemoteAlertAccessPointContext_useCase, v45, v46);
    *(v48 + OBJC_IVAR____TtC13GameOverlayUI29RemoteAlertAccessPointContext__hideCount) = 0;
    *(v48 + OBJC_IVAR____TtC13GameOverlayUI29RemoteAlertAccessPointContext__didReturnToForeground) = v89;
    *(v48 + OBJC_IVAR____TtC13GameOverlayUI29RemoteAlertAccessPointContext__newToGameCenter) = v90;
    *(v48 + OBJC_IVAR____TtC13GameOverlayUI29RemoteAlertAccessPointContext__isShowingDashboard) = 0;
    *(v48 + OBJC_IVAR____TtC13GameOverlayUI29RemoteAlertAccessPointContext__dismissDashboardRequested) = 0;
    v112[3] = v47;
    v112[4] = &off_1001240E8;
    v112[0] = v48;
    v57 = v84;
    swift_beginAccess();

    sub_10003EF48(v112, (v57 + 8));
    swift_endAccess();
    v58 = v97;
    v57[18] = v96;
    v57[19] = v58;

    sub_10003F788(0, &qword_10012E0A8, NSKeyedUnarchiver_ptr);
    sub_10003F788(0, &qword_10012E0B0, GKGameInternal_ptr);
    v59 = static NSKeyedUnarchiver.unarchivedObject<A>(ofClass:from:)();
    if (v59)
    {
      v60 = v59;
      v61 = [objc_allocWithZone(GKGame) initWithInternalRepresentation:v59];

      v62 = v57[20];
      v57[20] = v61;
    }

    else
    {
      if (qword_10012CC18 != -1)
      {
        swift_once();
      }

      v80 = type metadata accessor for Logger();
      sub_100011F80(v80, qword_100135C88);
      v81 = Logger.logObject.getter();
      v82 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v81, v82))
      {
        v83 = swift_slowAlloc();
        *v83 = 0;
        _os_log_impl(&_mh_execute_header, v81, v82, "Game could not be deserialized", v83, 2u);
      }
    }

    v63 = enum case for GameOverlayUIConfig.ServiceKind.dashboard(_:);
    v64 = type metadata accessor for GameOverlayUIConfig.ServiceKind();
    v65 = v86;
    (*(*(v64 - 8) + 104))(v86, v63, v64);
    v66 = v101;
    *(v65 + v101[5]) = 0;
    *(v65 + v66[6]) = v57;
    v67 = (v65 + v66[7]);
    *v67 = 0;
    v67[1] = 0;
    v68 = (v65 + v66[8]);
    v69 = type metadata accessor for TaskPriority();
    *v68 = 0;
    v68[1] = 0;
    (*(*(v69 - 8) + 56))(v105, 1, 1, v69);
    v70 = v104;
    sub_10003F2F4(v65, v104);
    v71 = v108;
    v92(v108, v111, v110);
    v72 = (*(v102 + 80) + 32) & ~*(v102 + 80);
    v73 = (v103 + v72 + 7) & 0xFFFFFFFFFFFFFFF8;
    v74 = v55;
    v75 = (*(v55 + 80) + v73 + 16) & ~*(v55 + 80);
    v76 = swift_allocObject();
    *(v76 + 16) = 0;
    *(v76 + 24) = 0;
    sub_10003F35C(v70, v76 + v72);
    v77 = (v76 + v73);
    v78 = v109;
    v79 = v110;
    *v77 = v107;
    v77[1] = v78;
    v94(v76 + v75, v71, v79);

    sub_100014BBC(0, 0, v105, &unk_1000EA4C8, v76);

    sub_10002D820(v65);
    return (*(v74 + 8))(v111, v79);
  }

  return result;
}

void sub_10003CC48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v21 = a2;
  v22 = a4;
  v8 = type metadata accessor for URL();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = [objc_opt_self() sharedPhotoLibrary];
  (*(v9 + 16))(v11, a1, v8);
  v13 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v14 = (v10 + v13 + 7) & 0xFFFFFFFFFFFFFFF8;
  v15 = swift_allocObject();
  (*(v9 + 32))(v15 + v13, v11, v8);
  v16 = (v15 + v14);
  v17 = v22;
  *v16 = v21;
  v16[1] = a3;
  v18 = (v15 + ((v14 + 23) & 0xFFFFFFFFFFFFFFF8));
  *v18 = v17;
  v18[1] = a5;
  v27 = sub_10003F6D0;
  v28 = v15;
  aBlock = _NSConcreteStackBlock;
  v24 = 1107296256;
  v25 = sub_1000D431C;
  v26 = &unk_100121B48;
  v19 = _Block_copy(&aBlock);

  v27 = sub_100036B68;
  v28 = 0;
  aBlock = _NSConcreteStackBlock;
  v24 = 1107296256;
  v25 = sub_100036CE0;
  v26 = &unk_100121B70;
  v20 = _Block_copy(&aBlock);
  [v12 performChanges:v19 completionHandler:v20];
  _Block_release(v20);
  _Block_release(v19);
}

uint64_t sub_10003CEC8()
{
  v0 = objc_allocWithZone(AVURLAsset);
  URL._bridgeToObjectiveC()(v1);
  v3 = v2;
  v4 = [v0 initWithURL:v2 options:0];

  v5 = [objc_allocWithZone(AVAssetImageGenerator) initWithAsset:v4];
  [v5 setAppliesPreferredTrackTransform:1];
  CMTimeMake(&v22, 0, 1);
  v21 = 0;
  v6 = [v5 copyCGImageAtTime:&v22 actualTime:0 error:&v21];
  v7 = v21;
  if (!v6)
  {
    v19 = v21;
    _convertNSErrorToError(_:)();

    swift_willThrow();
LABEL_8:

    return 0;
  }

  v8 = v6;
  v9 = objc_allocWithZone(UIImage);
  v10 = v7;
  v11 = [v9 initWithCGImage:v8];
  CGImageGetWidth(v8);
  CGImageGetHeight(v8);
  OverlayTabsInfoProvider.init(tabs:tabsToFlowActionsConverter:)();
  v12 = [v11 _gkCropImageIntoSquare:?];
  if (v12)
  {
    v13 = v12;
    v14 = objc_opt_self();
    v22.value = 0;
    v15 = [v14 archivedDataWithRootObject:v13 requiringSecureCoding:1 error:&v22];
    v16 = v22.value;
    if (v15)
    {
      v17 = static Data._unconditionallyBridgeFromObjectiveC(_:)();

      return v17;
    }

    v20 = v16;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    goto LABEL_8;
  }

  return 0;
}

uint64_t sub_10003D154(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v24 = a7;
  v25 = a8;
  v22 = a3;
  v23 = a4;
  v26 = a2;
  v10 = type metadata accessor for URL();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v22 - v15;
  v27 = a5;
  v28 = a6;

  v17._countAndFlagsBits = 0x4F4D2E70696C6320;
  v17._object = 0xE900000000000056;
  String.append(_:)(v17);
  v18 = NSTemporaryDirectory();
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  URL.init(fileURLWithPath:)();

  URL.appendingPathComponent(_:)();

  v19 = *(v11 + 8);
  v19(v13, v10);
  Data.write(to:options:)();
  sub_10003CC48(v16, v22, v23, v24, v25);
  v20 = sub_10003CEC8();
  v19(v16, v10);
  return v20;
}

double sub_10003D490(void *a1, uint64_t a2, void *a3)
{
  v6 = sub_100002B38(&unk_100130F10, &qword_1000EA660);
  __chkstk_darwin(v6 - 8);
  v8 = &v37 - v7;
  v9 = type metadata accessor for GameOverlayUIConfig.OverlayStyle();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = [objc_allocWithZone(FBSSystemService) init];
  v14 = [v13 isPasscodeLockedOrBlocked];

  if (v14)
  {
    if (qword_10012CC18 != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    sub_100011F80(v15, qword_100135C88);
    v38 = Logger.logObject.getter();
    v16 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v38, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&_mh_execute_header, v38, v16, "Skipping dashboard request because device is locked or blocked.", v17, 2u);
    }

    v18 = v38;
  }

  else
  {
    v20 = sub_10007C628(2, a2, a3);
    if (v21)
    {
      v22 = v20;
      v23 = v21;
      v24 = [objc_opt_self() currentContext];
      type metadata accessor for DashboardConnectionContext();
      v25 = swift_allocObject();
      *(v25 + 160) = 0;
      *(v25 + 168) = 0;
      *(v25 + 176) = 2;
      v26 = sub_1000E0554(v24);
      v27 = *(v26 + 160);
      *(v26 + 160) = a1;

      *(v26 + 176) = 1;
      (*(v10 + 104))(v12, enum case for GameOverlayUIConfig.OverlayStyle.fullScreen(_:), v9);
      v28 = a1;

      v29 = GameOverlayUIConfig.OverlayStyle.rawValue.getter();
      v31 = v30;
      (*(v10 + 8))(v12, v9);
      *(v26 + 144) = v29;
      *(v26 + 152) = v31;

      v32 = type metadata accessor for RemoteAlertDashboardContext(0);
      swift_allocObject();
      v33 = sub_1000BED8C(v22, v23);
      v39[3] = v32;
      v39[4] = &off_1001240C0;
      v39[0] = v33;
      swift_beginAccess();

      sub_10003EF48(v39, v26 + 64);
      swift_endAccess();

      v34 = type metadata accessor for TaskPriority();
      (*(*(v34 - 8) + 56))(v8, 1, 1, v34);
      v35 = swift_allocObject();
      v35[2] = 0;
      v35[3] = 0;
      v35[4] = v28;
      v35[5] = v26;
      v36 = v28;

      sub_100014BBC(0, 0, v8, &unk_1000EA320, v35);
    }
  }

  return result;
}

void sub_10003D8D4(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5)
{
  if (qword_10012CC18 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_100011F80(v8, qword_100135C88);

  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.debug.getter();

  v33 = a4;
  if (os_log_type_enabled(v9, v10))
  {
    v11 = a3;
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v35[0] = v13;
    *v12 = 136315138;
    if (a5)
    {
      v14 = a4;
    }

    else
    {
      v14 = 7104878;
    }

    if (a5)
    {
      v15 = a5;
    }

    else
    {
      v15 = 0xE300000000000000;
    }

    v16 = sub_1000BA5C8(v14, v15, v35);

    *(v12 + 4) = v16;
    _os_log_impl(&_mh_execute_header, v9, v10, "showDashboard called with sceneIdentifier: %s", v12, 0xCu);
    sub_10002E6CC(v13);

    a3 = v11;
  }

  v17 = objc_opt_self();
  if (qword_10012CB78 != -1)
  {
    swift_once();
  }

  isa = Set._bridgeToObjectiveC()().super.isa;
  v19 = Data._bridgeToObjectiveC()().super.isa;
  v35[0] = 0;
  v20 = [v17 unarchivedObjectOfClasses:isa fromData:v19 error:v35];

  if (v20)
  {
    v21 = v35[0];
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    sub_100002B38(&qword_10012DFA8, qword_1000EEA30);
    if (swift_dynamicCast())
    {
      v22 = objc_allocWithZone(type metadata accessor for DashboardRequest());
      v23 = DashboardRequest.init(initialState:)(v34);
      [a3 BOOLValueSafe];
      sub_10003D490(v23, v33, a5);
    }

    else
    {
      v30 = Logger.logObject.getter();
      v31 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        *v32 = 0;
        _os_log_impl(&_mh_execute_header, v30, v31, "Unexpected type encountered for initial state dictionary", v32, 2u);
      }
    }
  }

  else
  {
    v24 = v35[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();
    swift_errorRetain();
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      *v27 = 138412290;
      swift_errorRetain();
      v29 = _swift_stdlib_bridgeErrorToNSError();
      *(v27 + 4) = v29;
      *v28 = v29;
      _os_log_impl(&_mh_execute_header, v25, v26, "Could not deserialize initial state dictionary: %@", v27, 0xCu);
      sub_100005688(v28, &qword_100131110, &unk_1000EC870);
    }

    else
    {
    }
  }
}

void sub_10003E018(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (qword_10012CC18 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_100011F80(v6, qword_100135C88);

  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v78[0] = v10;
    *v9 = 136315138;
    v11 = a3;
    if (a4)
    {
      v12 = a4;
    }

    else
    {
      a3 = 7104878;
      v12 = 0xE300000000000000;
    }

    v13 = sub_1000BA5C8(a3, v12, v78);

    *(v9 + 4) = v13;
    a3 = v11;
    _os_log_impl(&_mh_execute_header, v7, v8, "showPlayTogether called with sceneIdentifier: %s", v9, 0xCu);
    sub_10002E6CC(v10);
  }

  v14 = [objc_allocWithZone(FBSSystemService) init];
  v15 = [v14 isPasscodeLockedOrBlocked];

  if (v15)
  {
    oslog = Logger.logObject.getter();
    v16 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(oslog, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v16, "Skipping showPlayTogether request because device is locked or blocked.", v17, 2u);
    }

    return;
  }

  v18 = objc_opt_self();
  if (qword_10012CB78 != -1)
  {
    swift_once();
  }

  isa = Set._bridgeToObjectiveC()().super.isa;
  v20 = Data._bridgeToObjectiveC()().super.isa;
  v78[0] = 0;
  v21 = [v18 unarchivedObjectOfClasses:isa fromData:v20 error:v78];

  if (!v21)
  {
    v35 = v78[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();
    swift_errorRetain();
    v27 = Logger.logObject.getter();
    v36 = static os_log_type_t.error.getter();

    if (!os_log_type_enabled(v27, v36))
    {

      return;
    }

    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    *v37 = 138412290;
    swift_errorRetain();
    v39 = _swift_stdlib_bridgeErrorToNSError();
    *(v37 + 4) = v39;
    *v38 = v39;
    _os_log_impl(&_mh_execute_header, v27, v36, "Could not deserialize initial state dictionary: %@", v37, 0xCu);
    sub_100005688(v38, &qword_100131110, &unk_1000EC870);

    goto LABEL_39;
  }

  v22 = v78[0];
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  sub_100002B38(&qword_10012DFA8, qword_1000EEA30);
  if (swift_dynamicCast())
  {
    v23 = objc_allocWithZone(type metadata accessor for PlayTogetherRequest());
    v24 = sub_1000D3F34(v77);
    v25 = sub_1000D1714(&_swiftEmptyArrayStorage);
    v26 = objc_allocWithZone(type metadata accessor for DashboardRequest());
    v27 = DashboardRequest.init(initialState:)(v25);
    v28 = *&v24[OBJC_IVAR____TtC13GameOverlayUI19PlayTogetherRequest_challengeDefinitionID + 8];
    if (v28)
    {
      v29 = v27 + OBJC_IVAR____TtC13GameOverlayUI16DashboardRequest_deepLinkDestination;
      v30 = *(&v27->isa + OBJC_IVAR____TtC13GameOverlayUI16DashboardRequest_deepLinkDestination);
      v31 = *(&v27[1].isa + OBJC_IVAR____TtC13GameOverlayUI16DashboardRequest_deepLinkDestination);
      v32 = *(&v27[2].isa + OBJC_IVAR____TtC13GameOverlayUI16DashboardRequest_deepLinkDestination);
      v33 = *(&v27[3].isa + OBJC_IVAR____TtC13GameOverlayUI16DashboardRequest_deepLinkDestination);
      *v29 = *&v24[OBJC_IVAR____TtC13GameOverlayUI19PlayTogetherRequest_challengeDefinitionID];
      *(v29 + 1) = v28;
      *(v29 + 2) = 0;
      *(v29 + 3) = 0;
      v34 = v29[32];
      v29[32] = 0;
LABEL_31:

      v50 = v30;
      v51 = v31;
      v52 = v32;
      v53 = v33;
      v54 = v34;
LABEL_32:
      sub_100030C94(v50, v51, v52, v53, v54);
      v55 = OBJC_IVAR____TtC13GameOverlayUI19PlayTogetherRequest_currentGame;
      v56 = *&v24[OBJC_IVAR____TtC13GameOverlayUI19PlayTogetherRequest_currentGame];
      v57 = *(&v27->isa + OBJC_IVAR____TtC13GameOverlayUI16DashboardRequest_currentGame);
      *(&v27->isa + OBJC_IVAR____TtC13GameOverlayUI16DashboardRequest_currentGame) = v56;
      v58 = v56;

      v59 = *&v24[OBJC_IVAR____TtC13GameOverlayUI19PlayTogetherRequest_localPlayer];
      v60 = *(&v27->isa + OBJC_IVAR____TtC13GameOverlayUI16DashboardRequest_localPlayer);
      *(&v27->isa + OBJC_IVAR____TtC13GameOverlayUI16DashboardRequest_localPlayer) = v59;
      v61 = v59;

      v62 = *&v24[v55];
      if (v62)
      {
        v63 = [v62 bundleIdentifier];
        v64 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v66 = v65;
      }

      else
      {
        v64 = 0;
        v66 = 0;
      }

      v67 = (v27 + OBJC_IVAR____TtC13GameOverlayUI16DashboardRequest_gameBundleID);
      *v67 = v64;
      v67[1] = v66;

      v68 = *&v24[v55];
      if (v68)
      {
        v69 = [v68 adamID];
        v70 = [v69 stringValue];

        v71 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v73 = v72;
      }

      else
      {
        v71 = 0;
        v73 = 0;
      }

      v74 = (v27 + OBJC_IVAR____TtC13GameOverlayUI16DashboardRequest_adamID);
      *v74 = v71;
      v74[1] = v73;

      sub_10003D490(v27, a3, a4);

LABEL_39:
      return;
    }

    v43 = *&v24[OBJC_IVAR____TtC13GameOverlayUI19PlayTogetherRequest_activityInstanceID + 8];
    v44 = &v24[OBJC_IVAR____TtC13GameOverlayUI19PlayTogetherRequest_gameActivityDefinitionID];
    v45 = *&v24[OBJC_IVAR____TtC13GameOverlayUI19PlayTogetherRequest_gameActivityDefinitionID + 8];
    if (v43)
    {
      if (v45)
      {
        v46 = *v44;
        v47 = v27 + OBJC_IVAR____TtC13GameOverlayUI16DashboardRequest_deepLinkDestination;
        v30 = *(&v27->isa + OBJC_IVAR____TtC13GameOverlayUI16DashboardRequest_deepLinkDestination);
        v31 = *(&v27[1].isa + OBJC_IVAR____TtC13GameOverlayUI16DashboardRequest_deepLinkDestination);
        v32 = *(&v27[2].isa + OBJC_IVAR____TtC13GameOverlayUI16DashboardRequest_deepLinkDestination);
        v33 = *(&v27[3].isa + OBJC_IVAR____TtC13GameOverlayUI16DashboardRequest_deepLinkDestination);
        *v47 = *&v24[OBJC_IVAR____TtC13GameOverlayUI19PlayTogetherRequest_activityInstanceID];
        *(v47 + 1) = v43;
        *(v47 + 2) = v46;
        *(v47 + 3) = v45;
        v34 = v47[32];
        v47[32] = 2;

        goto LABEL_31;
      }
    }

    else if (v45)
    {
      v48 = *v44;
      v49 = v27 + OBJC_IVAR____TtC13GameOverlayUI16DashboardRequest_deepLinkDestination;
      v30 = *(&v27->isa + OBJC_IVAR____TtC13GameOverlayUI16DashboardRequest_deepLinkDestination);
      v31 = *(&v27[1].isa + OBJC_IVAR____TtC13GameOverlayUI16DashboardRequest_deepLinkDestination);
      v32 = *(&v27[2].isa + OBJC_IVAR____TtC13GameOverlayUI16DashboardRequest_deepLinkDestination);
      v33 = *(&v27[3].isa + OBJC_IVAR____TtC13GameOverlayUI16DashboardRequest_deepLinkDestination);
      *v49 = v48;
      *(v49 + 1) = v45;
      *(v49 + 2) = 0;
      *(v49 + 3) = 0;
      v34 = v49[32];
      v49[32] = 1;
      goto LABEL_31;
    }

    v75 = v27 + OBJC_IVAR____TtC13GameOverlayUI16DashboardRequest_deepLinkDestination;
    v50 = *(&v27->isa + OBJC_IVAR____TtC13GameOverlayUI16DashboardRequest_deepLinkDestination);
    v51 = *(&v27[1].isa + OBJC_IVAR____TtC13GameOverlayUI16DashboardRequest_deepLinkDestination);
    v52 = *(&v27[2].isa + OBJC_IVAR____TtC13GameOverlayUI16DashboardRequest_deepLinkDestination);
    v53 = *(&v27[3].isa + OBJC_IVAR____TtC13GameOverlayUI16DashboardRequest_deepLinkDestination);
    *v75 = 6;
    *(v75 + 1) = 0;
    *(v75 + 2) = 0;
    *(v75 + 3) = 0;
    v54 = v75[32];
    v75[32] = 3;
    goto LABEL_32;
  }

  v40 = Logger.logObject.getter();
  v41 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v40, v41))
  {
    v42 = swift_slowAlloc();
    *v42 = 0;
    _os_log_impl(&_mh_execute_header, v40, v41, "showPlayTogether: Unexpected type encountered for initial state dictionary", v42, 2u);
  }
}

void sub_10003E824(id a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, void *a6, char *a7, uint64_t a8)
{
  if (qword_10012CC18 != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  sub_100011F80(v16, qword_100135C88);

  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v17, v18))
  {
    v42 = a1;
    v19 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    *v19 = 136315650;
    format = a7;
    v20 = a3;
    if (a2)
    {
      v21 = v42;
    }

    else
    {
      v21 = 7104878;
    }

    v41 = a8;
    if (a2)
    {
      v22 = a2;
    }

    else
    {
      v22 = 0xE300000000000000;
    }

    v23 = sub_1000BA5C8(v21, v22, &v44);

    *(v19 + 4) = v23;
    *(v19 + 12) = 2080;
    if (a4)
    {
      v24 = v20;
    }

    else
    {
      v24 = 7104878;
    }

    if (a4)
    {
      v25 = a4;
    }

    else
    {
      v25 = 0xE300000000000000;
    }

    v26 = sub_1000BA5C8(v24, v25, &v44);

    *(v19 + 14) = v26;
    *(v19 + 22) = 2080;
    if (a6)
    {
      v27 = a5;
    }

    else
    {
      v27 = 7104878;
    }

    if (a6)
    {
      v28 = a6;
    }

    else
    {
      v28 = 0xE300000000000000;
    }

    v29 = sub_1000BA5C8(v27, v28, &v44);
    a8 = v41;

    *(v19 + 24) = v29;
    a3 = v20;
    _os_log_impl(&_mh_execute_header, v17, v18, format, v19, 0x20u);
    swift_arrayDestroy();

    a1 = v42;
  }

  v30 = sub_1000D1714(&_swiftEmptyArrayStorage);
  v31 = objc_allocWithZone(type metadata accessor for DashboardRequest());
  v43 = DashboardRequest.init(initialState:)(v30);
  v32 = &v43[OBJC_IVAR____TtC13GameOverlayUI16DashboardRequest_gameBundleID];
  *v32 = a1;
  *(v32 + 1) = a2;

  v33 = &v43[OBJC_IVAR____TtC13GameOverlayUI16DashboardRequest_adamID];
  *v33 = a3;
  *(v33 + 1) = a4;

  v34 = &v43[OBJC_IVAR____TtC13GameOverlayUI16DashboardRequest_deepLinkDestination];
  v35 = *&v43[OBJC_IVAR____TtC13GameOverlayUI16DashboardRequest_deepLinkDestination];
  v36 = *&v43[OBJC_IVAR____TtC13GameOverlayUI16DashboardRequest_deepLinkDestination + 8];
  v37 = *&v43[OBJC_IVAR____TtC13GameOverlayUI16DashboardRequest_deepLinkDestination + 16];
  v38 = *&v43[OBJC_IVAR____TtC13GameOverlayUI16DashboardRequest_deepLinkDestination + 24];
  *v34 = a8;
  *(v34 + 1) = 0;
  *(v34 + 2) = 0;
  *(v34 + 3) = 0;
  v39 = v34[32];
  v34[32] = 3;

  sub_100030C94(v35, v36, v37, v38, v39);
  sub_10003D490(v43, a5, a6);
}

double sub_10003EB8C(void *a1)
{
  v2 = sub_100002B38(&unk_100130F10, &qword_1000EA660);
  __chkstk_darwin(v2 - 8);
  v4 = &v29 - v3;
  v5 = [objc_allocWithZone(FBSSystemService) init];
  v6 = [v5 isPasscodeLockedOrBlocked];

  if (v6)
  {
    if (qword_10012CC18 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_100011F80(v7, qword_100135C88);
    v30 = Logger.logObject.getter();
    v8 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v30, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v30, v8, "Skipping game mode banner request because device is locked or blocked.", v9, 2u);
    }

    v10 = v30;
  }

  else
  {
    v12 = sub_10007C628(8, 0, 0);
    if (v13)
    {
      v14 = v12;
      v15 = v13;
      v16 = [a1 bundleIdentifier];
      v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v18 = v17;

      v19 = [a1 enabled];
      v20 = [a1 actionSymbols];
      if (v20)
      {
        v21 = v20;
        v22 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
      }

      else
      {
        v22 = 0;
      }

      v23 = [objc_opt_self() currentContext];
      type metadata accessor for ConnectionContext();
      swift_allocObject();
      v24 = sub_1000E0554(v23);
      v25 = type metadata accessor for RemoteAlertGameModeBannerContext(0);
      swift_allocObject();
      v26 = sub_1000C0278(v14, v15, a1);
      v31[3] = v25;
      v31[4] = &off_100124070;
      v31[0] = v26;
      swift_beginAccess();

      sub_10003EF48(v31, v24 + 64);
      swift_endAccess();
      v27 = type metadata accessor for TaskPriority();
      (*(*(v27 - 8) + 56))(v4, 1, 1, v27);
      v28 = swift_allocObject();
      *(v28 + 16) = 0;
      *(v28 + 24) = 0;
      *(v28 + 32) = v30;
      *(v28 + 40) = v18;
      *(v28 + 48) = v19;
      *(v28 + 56) = v22;
      *(v28 + 64) = v24;

      sub_100014BBC(0, 0, v4, &unk_1000EA308, v28);
    }
  }

  return result;
}

uint64_t sub_10003EF48(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002B38(&unk_100131120, &unk_1000EAAF0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_10003EFB8()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_10003F008(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v10 = *(v1 + 56);
  v9 = *(v1 + 64);
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_100014BAC;

  return sub_10003B8F4(a1, v4, v5, v6, v7, v8, v10, v9);
}

uint64_t sub_10003F0E4()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_10003F12C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100014BAC;

  return sub_10003AFC0(a1, v4, v5, v7, v6);
}

unint64_t sub_10003F1EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_10012E0A0;
  if (!qword_10012E0A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012E0A0);
  }

  return result;
}

uint64_t sub_10003F240()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_10003F2F4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RemoteAlertRequest(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10003F35C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RemoteAlertRequest(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10003F3C0(uint64_t a1)
{
  v4 = *(type metadata accessor for RemoteAlertRequest(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100014BAC;

  return sub_100036838(a1, v6, v7, v1 + v5);
}

uint64_t sub_10003F4B0()
{

  return swift_deallocObject();
}

uint64_t sub_10003F4F8()
{
  v1 = type metadata accessor for RemoteAlertRequest(0);
  v2 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  swift_unknownObjectRelease();
  v3 = type metadata accessor for GameOverlayUIConfig.ServiceKind();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);

  if (*(v0 + v2 + *(v1 + 28)))
  {
  }

  if (*(v0 + v2 + *(v1 + 32)))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_10003F61C()
{
  v1 = type metadata accessor for URL();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

void sub_10003F6D0()
{
  v1 = *(type metadata accessor for URL() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 23) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v0 + v3);
  v6 = *v5;
  v7 = v5[1];
  v8 = *(v0 + v4);
  v9 = *(v0 + v4 + 8);

  sub_100036A18(v0 + v2, v6, v7, v8, v9);
}

uint64_t sub_10003F770(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10003F788(uint64_t a1, unint64_t *a2, void *a3)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_10003F7D0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100014BAC;

  return sub_100034528(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_10003F8A0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100014BAC;

  return sub_100034ABC(a1, v4, v5, v6, v7);
}

uint64_t sub_10003F9AC()
{
  swift_unknownObjectRelease();

  sub_100030784(*(v0 + 96), *(v0 + 104));

  return swift_deallocObject();
}

uint64_t sub_10003FA1C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_100014BAC;

  return sub_1000350FC(a1, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_10003FB38(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_10003FB54(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for RemoteAlertRequest(0) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(type metadata accessor for AccessPointUseCase() - 8);
  v9 = (v7 + *(v8 + 80) + 16) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = v1 + v7;
  v13 = *(v1 + v7);
  v14 = *(v12 + 8);
  v15 = swift_task_alloc();
  *(v3 + 16) = v15;
  *v15 = v3;
  v15[1] = sub_100014BAC;

  return sub_100032A60(a1, v10, v11, v1 + v6, v13, v14, v1 + v9);
}

uint64_t sub_10003FCC8()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_10003FD10(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100014BAC;

  return sub_100036370(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_10003FE10(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100014BAC;

  return sub_100032C54(a1, v4, v5, v7, v6);
}

uint64_t sub_10003FED0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10003FF20(uint64_t a1)
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_10003FF6C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100014BAC;

  return sub_100033E8C(a1, v4, v5, v6);
}

uint64_t sub_100040048()
{
  v1 = type metadata accessor for RemoteAlertRequest(0);
  v2 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v3 = *(*(v1 - 8) + 64);
  v4 = type metadata accessor for AccessPointUseCase();
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  swift_unknownObjectRelease();
  v7 = type metadata accessor for GameOverlayUIConfig.ServiceKind();
  (*(*(v7 - 8) + 8))(v0 + v2, v7);

  if (*(v0 + v2 + *(v1 + 28)))
  {
  }

  if (*(v0 + v2 + *(v1 + 32)))
  {
  }

  (*(v5 + 8))(v0 + ((((v3 + v2 + 7) & 0xFFFFFFFFFFFFFFF8) + v6 + 16) & ~v6), v4);

  return swift_deallocObject();
}

uint64_t sub_100040210()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_10004027C(void (*a1)(void), uint64_t a2)
{
  swift_unknownObjectRelease();
  a1(*(v2 + 40));

  return swift_deallocObject();
}

uint64_t sub_1000402D8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100011720;

  return sub_1000321EC(a1, v4, v5, v7, v6);
}

uint64_t sub_100040418(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_100002B38(&qword_10012E0E0, qword_1000EA510);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 32);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_100002B38(&qword_10012DA68, &unk_1000E99C0);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 36);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_100040568(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = sub_100002B38(&qword_10012E0E0, qword_1000EA510);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 32);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_100002B38(&qword_10012DA68, &unk_1000E99C0);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 36);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t type metadata accessor for GameModeBannerView(uint64_t a1)
{
  result = qword_10012E140;
  if (!qword_10012E140)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000406F0(uint64_t a1)
{
  type metadata accessor for RemoteAlertGameModeBannerContext(319);
  if (v1 <= 0x3F)
  {
    sub_1000407F4();
    if (v2 <= 0x3F)
    {
      sub_10002F480(319, &qword_10012CEE8, &type metadata for Bool);
      if (v3 <= 0x3F)
      {
        sub_10002F480(319, &qword_10012DD08, &type metadata for Double);
        if (v4 <= 0x3F)
        {
          sub_100040840(319);
          if (v5 <= 0x3F)
          {
            sub_1000408A4(319);
            if (v6 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

unint64_t sub_1000407F4()
{
  result = qword_10012E150;
  if (!qword_10012E150)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10012E150);
  }

  return result;
}

void sub_100040840(uint64_t a1)
{
  if (!qword_10012E158)
  {
    sub_100005144(&qword_100132550, &qword_1000EC170);
    v1 = type metadata accessor for Environment();
    if (!v2)
    {
      atomic_store(v1, &qword_10012E158);
    }
  }
}

void sub_1000408A4(uint64_t a1)
{
  if (!qword_10012DAD8)
  {
    type metadata accessor for DynamicTypeSize();
    v1 = type metadata accessor for Environment();
    if (!v2)
    {
      atomic_store(v1, &qword_10012DAD8);
    }
  }
}

double sub_100040918()
{
  v16 = type metadata accessor for EnvironmentValues();
  v1 = *(v16 - 8);
  __chkstk_darwin(v16);
  v3 = &v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100002B38(&qword_100132570, &unk_1000E9C70);
  __chkstk_darwin(v4);
  v6 = &v15 - v5;
  v7 = type metadata accessor for DynamicTypeSize();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for GameModeBannerView(0);
  sub_1000035B4(v0 + *(v11 + 36), v6, &qword_100132570, &unk_1000E9C70);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v8 + 32))(v10, v6, v7);
  }

  else
  {
    static os_log_type_t.fault.getter();
    v12 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v1 + 8))(v3, v16);
  }

  v13 = (*(v8 + 88))(v10, v7);
  result = -1.0;
  if (v13 != enum case for DynamicTypeSize.xSmall(_:))
  {
    result = -2.0;
    if (v13 != enum case for DynamicTypeSize.small(_:))
    {
      result = -3.0;
      if (v13 != enum case for DynamicTypeSize.medium(_:))
      {
        result = -4.0;
        if (v13 != enum case for DynamicTypeSize.large(_:))
        {
          result = -5.0;
          if (v13 != enum case for DynamicTypeSize.xLarge(_:))
          {
            result = -6.0;
            if (v13 != enum case for DynamicTypeSize.xxLarge(_:))
            {
              (*(v8 + 8))(v10, v7, -6.0);
              return -7.0;
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_100040C44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v55 = a2;
  v3 = type metadata accessor for UserInterfaceSizeClass();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v48 = v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100002B38(&qword_10012E1A0, &qword_1000EC1F0);
  v7 = v6 - 8;
  __chkstk_darwin(v6);
  v9 = v47 - v8;
  v10 = sub_100002B38(&qword_100132550, &qword_1000EC170);
  __chkstk_darwin(v10 - 8);
  v50 = v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = v47 - v13;
  __chkstk_darwin(v15);
  v17 = (v47 - v16);
  v18 = sub_100002B38(&qword_10012E1A8, &qword_1000EA5B0);
  __chkstk_darwin(v18 - 8);
  v20 = v47 - v19;
  v52 = sub_100002B38(&qword_10012E1B0, &qword_1000EA5B8);
  __chkstk_darwin(v52);
  v54 = v47 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v51 = v47 - v23;
  __chkstk_darwin(v24);
  v53 = v47 - v25;
  *v20 = static VerticalAlignment.center.getter();
  *(v20 + 1) = 0;
  v20[16] = 1;
  v26 = sub_100002B38(&qword_10012E1B8, &qword_1000EA5C0);
  sub_1000412F0(a1, &v20[*(v26 + 44)]);
  v49 = static Edge.Set.top.getter();
  type metadata accessor for GameModeBannerView(0);
  sub_10007A224(v17);
  (*(v4 + 104))(v14, enum case for UserInterfaceSizeClass.compact(_:), v3);
  (*(v4 + 56))(v14, 0, 1, v3);
  v27 = *(v7 + 56);
  sub_1000035B4(v17, v9, &qword_100132550, &qword_1000EC170);
  sub_1000035B4(v14, &v9[v27], &qword_100132550, &qword_1000EC170);
  v28 = *(v4 + 48);
  if (v28(v9, 1, v3) != 1)
  {
    sub_1000035B4(v9, v50, &qword_100132550, &qword_1000EC170);
    if (v28(&v9[v27], 1, v3) != 1)
    {
      v29 = v48;
      (*(v4 + 32))(v48, &v9[v27], v3);
      sub_1000445C4(&qword_10012E1C8, &type metadata accessor for UserInterfaceSizeClass, &protocol conformance descriptor for UserInterfaceSizeClass);
      v30 = v50;
      v47[3] = dispatch thunk of static Equatable.== infix(_:_:)();
      v31 = *(v4 + 8);
      v31(v29, v3);
      sub_100005688(v14, &qword_100132550, &qword_1000EC170);
      sub_100005688(v17, &qword_100132550, &qword_1000EC170);
      v31(v30, v3);
      sub_100005688(v9, &qword_100132550, &qword_1000EC170);
      goto LABEL_8;
    }

    sub_100005688(v14, &qword_100132550, &qword_1000EC170);
    sub_100005688(v17, &qword_100132550, &qword_1000EC170);
    (*(v4 + 8))(v50, v3);
    goto LABEL_6;
  }

  sub_100005688(v14, &qword_100132550, &qword_1000EC170);
  sub_100005688(v17, &qword_100132550, &qword_1000EC170);
  if (v28(&v9[v27], 1, v3) != 1)
  {
LABEL_6:
    sub_100005688(v9, &qword_10012E1A0, &qword_1000EC1F0);
    goto LABEL_8;
  }

  sub_100005688(v9, &qword_100132550, &qword_1000EC170);
LABEL_8:
  EdgeInsets.init(_all:)();
  v33 = v32;
  v35 = v34;
  v37 = v36;
  v39 = v38;
  v40 = v51;
  sub_100014830(v20, v51, &qword_10012E1A8, &qword_1000EA5B0);
  v41 = v53;
  v42 = v40 + *(v52 + 36);
  *v42 = v49;
  *(v42 + 8) = v33;
  *(v42 + 16) = v35;
  *(v42 + 24) = v37;
  *(v42 + 32) = v39;
  *(v42 + 40) = 0;
  sub_100014830(v40, v41, &qword_10012E1B0, &qword_1000EA5B8);
  v43 = v54;
  sub_1000035B4(v41, v54, &qword_10012E1B0, &qword_1000EA5B8);
  v44 = v55;
  sub_1000035B4(v43, v55, &qword_10012E1B0, &qword_1000EA5B8);
  v45 = v44 + *(sub_100002B38(&qword_10012E1C0, &qword_1000EA5C8) + 48);
  *v45 = 0;
  *(v45 + 8) = 1;
  sub_100005688(v41, &qword_10012E1B0, &qword_1000EA5B8);
  return sub_100005688(v43, &qword_10012E1B0, &qword_1000EA5B8);
}

uint64_t sub_1000412F0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v99 = a2;
  v3 = type metadata accessor for GameModeBannerView(0);
  v97 = *(v3 - 8);
  __chkstk_darwin(v3 - 8);
  v108 = v4;
  v109 = &v82 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = sub_100002B38(&qword_10012E1D0, &qword_1000EA5D0);
  __chkstk_darwin(v96);
  v107 = &v82 - v5;
  v102 = type metadata accessor for DefaultGlassEffectShape();
  v106 = *(v102 - 8);
  __chkstk_darwin(v102);
  v7 = &v82 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = type metadata accessor for Glass();
  v103 = *(v105 - 8);
  __chkstk_darwin(v105);
  v9 = &v82 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100002B38(&qword_10012E1D8, &qword_1000EA5D8);
  __chkstk_darwin(v10);
  v12 = &v82 - v11;
  v104 = sub_100002B38(&qword_10012E1E0, &qword_1000EA5E0);
  v101 = *(v104 - 8);
  __chkstk_darwin(v104);
  v14 = &v82 - v13;
  v15 = sub_100002B38(&qword_10012E1E8, &qword_1000EA5E8);
  v16 = v15 - 8;
  __chkstk_darwin(v15);
  v18 = &v82 - v17;
  v100 = sub_100002B38(&qword_10012E1F0, &qword_1000EA5F0);
  __chkstk_darwin(v100);
  v20 = &v82 - v19;
  v90 = sub_100002B38(&qword_10012E1F8, &qword_1000EA5F8);
  v86 = *(v90 - 8);
  __chkstk_darwin(v90);
  v83 = &v82 - v21;
  v92 = sub_100002B38(&qword_10012E200, &qword_1000EA600);
  v89 = *(v92 - 8);
  __chkstk_darwin(v92);
  v84 = &v82 - v22;
  v82 = sub_100002B38(&qword_10012E208, &qword_1000EA608);
  __chkstk_darwin(v82);
  v87 = &v82 - v23;
  v85 = sub_100002B38(&qword_10012E210, &qword_1000EA610);
  __chkstk_darwin(v85);
  v93 = &v82 - v24;
  v91 = sub_100002B38(&qword_10012E218, &qword_1000EA618);
  __chkstk_darwin(v91);
  v95 = &v82 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v88 = &v82 - v27;
  __chkstk_darwin(v28);
  v94 = &v82 - v29;
  *v12 = static VerticalAlignment.center.getter();
  *(v12 + 1) = 0x4024000000000000;
  v12[16] = 0;
  v30 = &v12[*(sub_100002B38(&qword_10012E220, &qword_1000EA620) + 44)];
  v98 = a1;
  sub_100042084(a1, v30);
  v31 = static Edge.Set.all.getter();
  v32 = &v12[*(sub_100002B38(&qword_10012E228, &qword_1000EA628) + 36)];
  *v32 = v31;
  *(v32 + 8) = xmmword_1000EA4E0;
  *(v32 + 24) = xmmword_1000EA4F0;
  v32[40] = 0;
  v33 = &v12[*(v10 + 36)];
  v34 = enum case for RoundedCornerStyle.continuous(_:);
  v35 = type metadata accessor for RoundedCornerStyle();
  (*(*(v35 - 8) + 104))(v33, v34, v35);
  *&v33[*(sub_100002B38(&qword_10012E230, &qword_1000EA630) + 36)] = 256;
  static Glass.regular.getter();
  DefaultGlassEffectShape.init()();
  sub_100044454();
  sub_1000445C4(&qword_10012DF58, &type metadata accessor for DefaultGlassEffectShape, &protocol conformance descriptor for DefaultGlassEffectShape);
  v36 = v102;
  View.glassEffect<A>(_:in:)();
  (*(v106 + 8))(v7, v36);
  v37 = v9;
  v38 = v107;
  (*(v103 + 8))(v37, v105);
  sub_100005688(v12, &qword_10012E1D8, &qword_1000EA5D8);
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  (*(v101 + 32))(v18, v14, v104);
  v39 = &v18[*(v16 + 44)];
  v40 = v120;
  *(v39 + 4) = v119;
  *(v39 + 5) = v40;
  *(v39 + 6) = v121;
  v41 = v116;
  *v39 = v115;
  *(v39 + 1) = v41;
  v42 = v118;
  *(v39 + 2) = v117;
  *(v39 + 3) = v42;
  LOBYTE(v12) = static Edge.Set.horizontal.getter();
  EdgeInsets.init(_all:)();
  v44 = v43;
  v46 = v45;
  v48 = v47;
  v50 = v49;
  sub_100014830(v18, v20, &qword_10012E1E8, &qword_1000EA5E8);
  v51 = v100;
  v52 = &v20[*(v100 + 36)];
  *v52 = v12;
  *(v52 + 1) = v44;
  *(v52 + 2) = v46;
  *(v52 + 3) = v48;
  *(v52 + 4) = v50;
  v52[40] = 0;
  v53 = enum case for DynamicTypeSize.xxLarge(_:);
  v54 = type metadata accessor for DynamicTypeSize();
  (*(*(v54 - 8) + 104))(v38, v53, v54);
  sub_1000445C4(&qword_10012E260, &type metadata accessor for DynamicTypeSize, &protocol conformance descriptor for DynamicTypeSize);
  result = dispatch thunk of static Equatable.== infix(_:_:)();
  if (result)
  {
    v56 = sub_10004460C();
    v57 = sub_1000057D8(&qword_10012E278, &qword_10012E1D0, &qword_1000EA5D0, &protocol conformance descriptor for PartialRangeThrough<A>);
    v58 = v83;
    v59 = v96;
    View.dynamicTypeSize<A>(_:)();
    sub_100005688(v38, &qword_10012E1D0, &qword_1000EA5D0);
    sub_100005688(v20, &qword_10012E1F0, &qword_1000EA5F0);
    v60 = v98;
    v61 = v109;
    sub_1000447B0(v98, v109);
    v62 = (*(v97 + 80) + 16) & ~*(v97 + 80);
    v63 = swift_allocObject();
    sub_100044818(v61, v63 + v62);
    v111 = v51;
    v112 = v59;
    v113 = v56;
    v114 = v57;
    swift_getOpaqueTypeConformance2();
    v64 = v84;
    v65 = v90;
    View.onTapGesture(count:perform:)();

    (*(v86 + 8))(v58, v65);
    v67 = *(v60 + 40);
    v111 = *(v60 + 32);
    v66 = v111;
    v112 = v67;
    sub_100002B38(&qword_10012DD98, &qword_1000EA650);
    State.wrappedValue.getter();
    v68 = v110;
    v69 = v87;
    (*(v89 + 32))(v87, v64, v92);
    v70 = v69 + *(v82 + 36);
    *v70 = v68;
    *(v70 + 8) = v68;
    *(v70 + 16) = xmmword_1000EA500;
    v111 = v66;
    v112 = v67;
    State.wrappedValue.getter();
    v71 = v110 * 4.0 + -3.0;
    v72 = v93;
    sub_100014830(v69, v93, &qword_10012E208, &qword_1000EA608);
    *(v72 + *(v85 + 36)) = v71;
    v73 = v109;
    sub_1000447B0(v60, v109);
    v74 = swift_allocObject();
    sub_100044818(v73, v74 + v62);
    v75 = v88;
    sub_100014830(v72, v88, &qword_10012E210, &qword_1000EA610);
    v76 = (v75 + *(v91 + 36));
    *v76 = sub_1000448DC;
    v76[1] = v74;
    v76[2] = 0;
    v76[3] = 0;
    v77 = v94;
    sub_100014830(v75, v94, &qword_10012E218, &qword_1000EA618);
    v78 = v95;
    sub_1000035B4(v77, v95, &qword_10012E218, &qword_1000EA618);
    v79 = v99;
    *v99 = 0;
    *(v79 + 8) = 0;
    v80 = sub_100002B38(&qword_10012E280, &qword_1000EA658);
    sub_1000035B4(v78, v79 + *(v80 + 48), &qword_10012E218, &qword_1000EA618);
    v81 = v79 + *(v80 + 64);
    *v81 = 0;
    v81[8] = 0;
    sub_100005688(v77, &qword_10012E218, &qword_1000EA618);
    return sub_100005688(v78, &qword_10012E218, &qword_1000EA618);
  }

  else
  {
    __break(1u);
  }

  return result;
}