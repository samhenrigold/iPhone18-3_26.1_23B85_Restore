char *sub_10003F3D8(unsigned __int8 a1)
{
  v2 = v1;
  _StringGuts.grow(_:)(79);
  v4 = [v1 description];
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  v8._countAndFlagsBits = v5;
  v8._object = v7;
  String.append(_:)(v8);

  v9._object = 0x80000001000D8D60;
  v9._countAndFlagsBits = 0xD00000000000003ALL;
  String.append(_:)(v9);
  v10 = 0xEE006E776F64746ELL;
  v11 = 0x756F4372656D6954;
  v12 = 0xE90000000000006ELL;
  v13 = 0x776F64746E756F43;
  if (a1 != 6)
  {
    v13 = 0x6E776F6E6B6E55;
    v12 = 0xE700000000000000;
  }

  v14 = 0x63746177706F7453;
  v15 = 0xE900000000000068;
  if (a1 != 4)
  {
    v14 = 0x7472656C41;
    v15 = 0xE500000000000000;
  }

  if (a1 <= 5u)
  {
    v13 = v14;
    v12 = v15;
  }

  v16 = 0x656C416D72616C41;
  v17 = 0xEB00000000657A6FLL;
  if (a1 == 2)
  {
    v17 = 0xEA00000000007472;
  }

  else
  {
    v16 = 0x6F6E536D72616C41;
  }

  if (a1)
  {
    v11 = 0x656C4172656D6954;
    v10 = 0xEA00000000007472;
  }

  if (a1 > 1u)
  {
    v11 = v16;
    v10 = v17;
  }

  if (a1 <= 3u)
  {
    v18 = v11;
  }

  else
  {
    v18 = v13;
  }

  if (a1 <= 3u)
  {
    v19 = v10;
  }

  else
  {
    v19 = v12;
  }

  v20 = v19;
  String.append(_:)(*&v18);

  v21._countAndFlagsBits = 0x6E6974736564202CLL;
  v21._object = 0xEF203A6E6F697461;
  String.append(_:)(v21);
  v22 = OBJC_IVAR____TtC10ClockAngel20SessionSceneDelegate_destination;
  v23 = v2[OBJC_IVAR____TtC10ClockAngel20SessionSceneDelegate_destination];
  v24 = 0x657263536B636F4CLL;
  v25 = 0xEA00000000006E65;
  if (v23 != 5)
  {
    v24 = 0x726F707075736E55;
    v25 = 0xEB00000000646574;
  }

  v26 = 0xE600000000000000;
  v27 = 0x72656E6E6142;
  if (v23 != 3)
  {
    v27 = 0x657263536C6C7546;
    v26 = 0xEA00000000006E65;
  }

  if (v2[OBJC_IVAR____TtC10ClockAngel20SessionSceneDelegate_destination] <= 4u)
  {
    v24 = v27;
    v25 = v26;
  }

  v28 = 0x46746E6569626D41;
  v29 = 0xEB000000006C6C75;
  if (v23 != 1)
  {
    v28 = 0x6572757472657041;
    v29 = 0xE800000000000000;
  }

  if (!v2[OBJC_IVAR____TtC10ClockAngel20SessionSceneDelegate_destination])
  {
    v28 = 0x43746E6569626D41;
    v29 = 0xEE00746361706D6FLL;
  }

  if (v2[OBJC_IVAR____TtC10ClockAngel20SessionSceneDelegate_destination] <= 2u)
  {
    v30 = v28;
  }

  else
  {
    v30 = v24;
  }

  if (v2[OBJC_IVAR____TtC10ClockAngel20SessionSceneDelegate_destination] <= 2u)
  {
    v31 = v29;
  }

  else
  {
    v31 = v25;
  }

  v32 = objc_opt_self();
  v33._countAndFlagsBits = v30;
  v33._object = v31;
  String.append(_:)(v33);

  v34 = String._bridgeToObjectiveC()();

  [v32 logInfo:v34];

  if (a1 > 3u)
  {
    if (a1 > 5u)
    {
      if (a1 == 6)
      {
        if (v2[v22] <= 2u || v2[v22] > 4u || v2[v22] == 3)
        {
          v36 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if ((v36 & 1) == 0)
          {
            if (sub_100089C28(v2[v22]))
            {

              return sub_100042110();
            }

            else
            {

              return sub_100041708();
            }
          }
        }

        else
        {
        }
      }

      return 0;
    }

    if (a1 == 4)
    {
      if (sub_100089C28(v2[v22]))
      {

        return sub_10003FF74();
      }

      else
      {

        return sub_10003FC70();
      }
    }

    else if (sub_100089C28(v2[v22]))
    {

      return sub_1000425B0();
    }

    else
    {
      if (v2[v22] <= 2u || v2[v22] > 4u || v2[v22] == 3)
      {
        v37 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v37 & 1) == 0)
        {
LABEL_106:

          return sub_100040B04();
        }
      }

      else
      {
      }

      return sub_100042EA8();
    }
  }

  else
  {
    if (a1 <= 1u)
    {
      if (a1)
      {
        if (sub_100089C28(v2[v22]))
        {

          return sub_100040EA8();
        }

        else
        {

          return sub_10004098C();
        }
      }

      else if (sub_100089C28(v2[v22]))
      {

        return sub_100040E7C();
      }

      else
      {

        return sub_1000403E4();
      }
    }

    if (a1 == 2)
    {
      if (sub_100089C28(v2[v22]))
      {

        return sub_100043F98();
      }

      goto LABEL_106;
    }

    if (sub_100089C28(v2[v22]))
    {

      return sub_100045214();
    }

    else
    {

      return sub_100043AF4();
    }
  }
}

char *sub_10003FC70()
{
  v1 = v0;
  v2 = type metadata accessor for StopwatchContext();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25[2] = 0;
  v25[3] = 0xE000000000000000;
  _StringGuts.grow(_:)(66);
  v6 = [v0 description];
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;

  v10._countAndFlagsBits = v7;
  v10._object = v9;
  String.append(_:)(v10);

  v11._object = 0x80000001000D8D20;
  v11._countAndFlagsBits = 0xD00000000000003ELL;
  String.append(_:)(v11);
  v12 = OBJC_IVAR____TtC10ClockAngel20SessionSceneDelegate_stopwatchAttributes;
  v13 = *&v1[OBJC_IVAR____TtC10ClockAngel20SessionSceneDelegate_stopwatchAttributes];
  if (v13)
  {

    dispatch thunk of StopwatchActivityAttributes.context.getter();

    v14 = StopwatchContext.id.getter();
    v13 = v15;
    (*(v3 + 8))(v5, v2);
  }

  else
  {
    v14 = 0;
  }

  v16 = objc_opt_self();
  v25[0] = v14;
  v25[1] = v13;
  sub_1000032D4(&qword_100115E80, &qword_1000D3CF0);
  _print_unlocked<A, B>(_:_:)();

  v17 = String._bridgeToObjectiveC()();

  [v16 logInfo:v17];

  v18 = *&v1[v12];
  if (v18)
  {

    dispatch thunk of StopwatchActivityAttributes.context.getter();

    v18 = StopwatchContext.id.getter();
    v20 = v19;
    (*(v3 + 8))(v5, v2);
  }

  else
  {
    v20 = 0;
  }

  v21 = objc_allocWithZone(type metadata accessor for StopwatchLockscreenController());
  *&v21[OBJC_IVAR____TtC10ClockAngel29StopwatchLockscreenController_customTrailingView] = 0;
  result = sub_10002DC6C(v18, v20);
  v23 = *&result[OBJC_IVAR____TtC10ClockAngel29StopwatchLockscreenController_customTrailingView];
  if (v23)
  {
    v24 = result;
    *(v23 + *((swift_isaMask & *v23) + qword_10011F398 + 16) + 8) = &off_100100FD8;
    swift_unknownObjectWeakAssign();
    return v24;
  }

  else
  {
    __break(1u);
  }

  return result;
}

char *sub_10003FF74()
{
  v1 = v0;
  v2 = type metadata accessor for StopwatchContext();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = 0;
  v38 = 0xE000000000000000;
  _StringGuts.grow(_:)(78);
  v6 = [v0 description];
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;

  v10._countAndFlagsBits = v7;
  v10._object = v9;
  String.append(_:)(v10);

  v11._countAndFlagsBits = 0xD000000000000035;
  v11._object = 0x80000001000D8C80;
  String.append(_:)(v11);
  v12 = OBJC_IVAR____TtC10ClockAngel20SessionSceneDelegate_stopwatchAttributes;
  v13 = *&v1[OBJC_IVAR____TtC10ClockAngel20SessionSceneDelegate_stopwatchAttributes];
  if (v13)
  {

    dispatch thunk of StopwatchActivityAttributes.context.getter();

    v14 = StopwatchContext.id.getter();
    v13 = v15;
    (*(v3 + 8))(v5, v2);
  }

  else
  {
    v14 = 0;
  }

  v16 = objc_opt_self();
  v36[0] = v14;
  v36[1] = v13;
  sub_1000032D4(&qword_100115E80, &qword_1000D3CF0);
  _print_unlocked<A, B>(_:_:)();

  v17._object = 0x80000001000D8CC0;
  v17._countAndFlagsBits = 0xD000000000000013;
  String.append(_:)(v17);
  v18 = OBJC_IVAR____TtC10ClockAngel20SessionSceneDelegate_destination;
  LOBYTE(v36[0]) = v1[OBJC_IVAR____TtC10ClockAngel20SessionSceneDelegate_destination];
  _print_unlocked<A, B>(_:_:)();
  v19 = String._bridgeToObjectiveC()();

  [v16 logInfo:v19];

  if (v1[v18])
  {
    if (v1[v18] == 1)
    {
      v20 = *&v1[v12];
      if (v20)
      {

        dispatch thunk of StopwatchActivityAttributes.context.getter();

        v20 = StopwatchContext.id.getter();
        v22 = v21;
        (*(v3 + 8))(v5, v2);
      }

      else
      {
        v22 = 0;
      }

      v34 = objc_allocWithZone(type metadata accessor for StopwatchStandbyController());
      *&v34[OBJC_IVAR____TtC10ClockAngel26StopwatchStandbyController_customTrailingLapView] = 0;
      *&v34[OBJC_IVAR____TtC10ClockAngel26StopwatchStandbyController_customTrailingTimeView] = 0;
      *&v34[OBJC_IVAR____TtC10ClockAngel26StopwatchStandbyController_glyphSize] = 0x404B000000000000;
      *&v34[OBJC_IVAR____TtC10ClockAngel26StopwatchStandbyController_safeAreaPadding] = 0x404E000000000000;
      *&v34[OBJC_IVAR____TtC10ClockAngel26StopwatchStandbyController_trailingEdgePadding] = 0x404C000000000000;
      return sub_10002DC6C(v20, v22);
    }

    else
    {
      v37 = 0;
      v38 = 0xE000000000000000;
      _StringGuts.grow(_:)(63);
      v26 = [v1 description];
      v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v29 = v28;

      v30._countAndFlagsBits = v27;
      v30._object = v29;
      String.append(_:)(v30);

      v31._countAndFlagsBits = 0xD00000000000003DLL;
      v31._object = 0x80000001000D8CE0;
      String.append(_:)(v31);
      v32 = String._bridgeToObjectiveC()();

      [v16 logInfo:v32];

      return 0;
    }
  }

  else
  {
    v23 = *&v1[v12];
    if (v23)
    {

      dispatch thunk of StopwatchActivityAttributes.context.getter();

      v23 = StopwatchContext.id.getter();
      v25 = v24;
      (*(v3 + 8))(v5, v2);
    }

    else
    {
      v25 = 0;
    }

    v35 = objc_allocWithZone(type metadata accessor for StopwatchStandbyCompressedController());
    return sub_10008120C(v23, v25);
  }
}

void *sub_1000403E4()
{
  v1 = v0;
  v2 = sub_10004573C();
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = [objc_opt_self() currentTraitCollection];
  v5 = [v4 _backlightLuminance];

  v41 = 0;
  v42[0] = 0xE000000000000000;
  _StringGuts.grow(_:)(61);
  v6 = [v1 description];
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;

  v10._countAndFlagsBits = v7;
  v10._object = v9;
  String.append(_:)(v10);

  v11._object = 0x80000001000D8C00;
  v11._countAndFlagsBits = 0xD000000000000039;
  String.append(_:)(v11);
  if (v5 == 1)
  {
    v12 = 1702195828;
  }

  else
  {
    v12 = 0x65736C6166;
  }

  if (v5 == 1)
  {
    v13 = 0xE400000000000000;
  }

  else
  {
    v13 = 0xE500000000000000;
  }

  v14 = objc_opt_self();
  v15._countAndFlagsBits = v12;
  v15._object = v13;
  String.append(_:)(v15);

  v16 = String._bridgeToObjectiveC()();

  [v14 logInfo:v16];

  v17 = *&v1[OBJC_IVAR____TtC10ClockAngel20SessionSceneDelegate_timerCoordinator];
  v36 = type metadata accessor for TimerCoordinator();
  v37 = &off_100102388;
  *&v35 = v17;
  if (v5 == 1)
  {
    v18 = objc_opt_self();

    v19 = [v18 mtOrange];
    Color.init(uiColor:)();
    v20 = Color.opacity(_:)();

    v21 = [v18 mtOrange];
    Color.init(uiColor:)();
    v22 = Color.opacity(_:)();

    static Color.white.getter();
    v23 = Color.opacity(_:)();

    static Color.white.getter();
    v24 = Color.opacity(_:)();

    v39 = &type metadata for LowLuminanceSessionUiConfig;
    v40 = &off_100103578;
  }

  else
  {
    type metadata accessor for CGColor(0);

    _CGColorInitTrampoline.init(_colorLiteralRed:green:blue:alpha:)();
    v20 = Color.init(_:)();
    v26 = [objc_opt_self() mtOrange];
    Color.init(uiColor:)();
    v22 = Color.opacity(_:)();

    v23 = static Color.white.getter();
    v27 = [objc_opt_self() systemExtraLightGrayColor];
    Color.init(uiColor:)();
    v24 = Color.opacity(_:)();

    v39 = &type metadata for TimerLockScreenSessionUiConfig;
    v40 = &off_100103508;
  }

  v28 = swift_allocObject();
  v28[2] = v20;
  v28[3] = v22;
  v28[4] = v23;
  v28[5] = v24;
  *&v38 = v28;
  v43[5] = 0x4028000000000000;
  v41 = v3;
  sub_10004E5BC(&v35, v42);
  sub_10004E5BC(&v38, v43);
  v29 = objc_allocWithZone(sub_1000032D4(&qword_100115DC8, &qword_1000D3238));
  *&v29[*((swift_isaMask & *v29) + qword_10011F398 + 16) + 8] = 0;
  swift_unknownObjectWeakInit();
  sub_10004E764(&v41, &v35);
  v30 = v3;
  v25 = UIHostingController.init(rootView:)();
  sub_10004E7C0(&v41);
  *(v25 + *((swift_isaMask & *v25) + qword_10011F398 + 16) + 8) = &off_100100FD8;
  swift_unknownObjectWeakAssign();
  v31 = v25;
  result = [v31 view];
  if (result)
  {
    v33 = result;
    v34 = [objc_opt_self() clearColor];
    [v33 setBackgroundColor:v34];

    return v25;
  }

  __break(1u);
  return result;
}

uint64_t sub_10004090C(uint64_t a1)
{
  v2 = v1;
  v4 = objc_allocWithZone(v1);
  v5 = sub_10004D5F0(a1);
  (*(*(*(v2 + qword_10011F398) - 8) + 8))(a1);
  return v5;
}

id sub_10004098C()
{
  if (([objc_opt_self() mtSBUIIsSystemApertureEnabled] & 1) == 0)
  {
    v14[3] = &type metadata for ClockFeatureFlags;
    v14[4] = sub_10004DECC();
    LOBYTE(v14[0]) = 1;
    v0 = isFeatureEnabled(_:)();
    sub_100017D28(v14);
    if ((v0 & 1) == 0)
    {
      return 0;
    }
  }

  result = sub_10004573C();
  if (result)
  {
    v2 = result;
    v3 = [objc_allocWithZone(SecureViewController) init];
    v4 = [v2 displayTitle];
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;

    v8 = [v2 timerIDString];
    v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v10;

    v12 = objc_allocWithZone(type metadata accessor for TimerAlertView());
    v13 = sub_1000988AC(v5, v7, v9, v11, 0.0, 0.0, 0.0, 0.0);
    [v3 setView:v13];

    return v3;
  }

  return result;
}

uint64_t sub_100040B04()
{
  v1 = v0;
  v2 = type metadata accessor for AlarmAlertPlatter(0);
  v3 = __chkstk_darwin(v2);
  v5 = &v25[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v25[-1] - v6;
  v8 = sub_1000032D4(&qword_100114D70, &unk_1000D20E0);
  __chkstk_darwin(v8 - 8);
  v10 = (&v25[-1] - v9);
  v11 = type metadata accessor for OpaqueAlarm(0);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v25[-1] - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ([objc_opt_self() mtSBUIIsSystemApertureEnabled] & 1) != 0 || (v25[3] = &type metadata for ClockFeatureFlags, v25[4] = sub_10004DECC(), LOBYTE(v25[0]) = 1, v15 = isFeatureEnabled(_:)(), sub_100017D28(v25), (v15))
  {
    sub_100045D6C(v10);
    if ((*(v12 + 48))(v10, 1, v11) == 1)
    {
      sub_10002D02C(v10, &qword_100114D70, &unk_1000D20E0);
    }

    else
    {
      sub_10004DF2C(v10, v14);
      if (sub_100088B60())
      {
        sub_10004E69C(v14, v7, type metadata accessor for OpaqueAlarm);
        v16 = *(v1 + OBJC_IVAR____TtC10ClockAngel20SessionSceneDelegate_currentSessionScene);
        v17 = *(v1 + OBJC_IVAR____TtC10ClockAngel20SessionSceneDelegate_destination);
        KeyPath = swift_getKeyPath();
        *&v7[v2[5]] = v16;
        v7[v2[6]] = v17;
        v19 = &v7[v2[7]];
        *v19 = KeyPath;
        v19[8] = 0;
        v20 = objc_allocWithZone(sub_1000032D4(&qword_100115E78, &unk_1000D3370));
        *&v20[*((swift_isaMask & *v20) + qword_10011F398 + 16) + 8] = 0;
        swift_unknownObjectWeakInit();
        sub_10004E69C(v7, v5, type metadata accessor for AlarmAlertPlatter);
        v21 = v16;
        v22 = UIHostingController.init(rootView:)();
        sub_10004E704(v7, type metadata accessor for AlarmAlertPlatter);
        sub_10004E704(v14, type metadata accessor for OpaqueAlarm);
        return v22;
      }

      sub_10004E704(v14, type metadata accessor for OpaqueAlarm);
    }
  }

  return 0;
}

uint64_t sub_100040EA8()
{
  v1 = v0;
  v2 = type metadata accessor for LinearTimerTimelineCountdown(0);
  v3 = __chkstk_darwin(v2);
  v5 = &v67 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v67 - v6;
  v8 = sub_1000032D4(&qword_100114D70, &unk_1000D20E0);
  __chkstk_darwin(v8 - 8);
  v10 = (&v67 - v9);
  v11 = type metadata accessor for OpaqueAlarm(0);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v67 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v0[OBJC_IVAR____TtC10ClockAngel20SessionSceneDelegate_destination] == 1)
  {
  }

  else
  {
    v15 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v15 & 1) == 0)
    {
LABEL_6:
      v16 = objc_opt_self();
      v69 = 0;
      v70 = 0xE000000000000000;
      _StringGuts.grow(_:)(28);
      v17 = [v0 description];
      v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v20 = v19;

      v69 = v18;
      v70 = v20;
      v21._object = 0x80000001000D8AE0;
      v21._countAndFlagsBits = 0xD00000000000001ALL;
      String.append(_:)(v21);
      v22 = String._bridgeToObjectiveC()();

      [v16 logInfo:v22];

      return 0;
    }
  }

  sub_100045D6C(v10);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_10002D02C(v10, &qword_100114D70, &unk_1000D20E0);
    goto LABEL_6;
  }

  sub_10004DF2C(v10, v14);
  v24 = objc_opt_self();
  v69 = 0;
  v70 = 0xE000000000000000;
  _StringGuts.grow(_:)(58);
  v25 = [v0 description];
  v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v28 = v27;

  v29._countAndFlagsBits = v26;
  v29._object = v28;
  String.append(_:)(v29);

  v30._countAndFlagsBits = 0xD000000000000038;
  v30._object = 0x80000001000D8C40;
  String.append(_:)(v30);
  v31 = String._bridgeToObjectiveC()();

  [v24 logInfo:v31];

  v67 = type metadata accessor for OpaqueAlarm;
  sub_10004E69C(v14, v7, type metadata accessor for OpaqueAlarm);
  v32 = *&v1[OBJC_IVAR____TtC10ClockAngel20SessionSceneDelegate_timerCoordinator];
  v33 = &v7[v2[6]];
  *(v33 + 3) = type metadata accessor for TimerCoordinator();
  *(v33 + 4) = &off_100102388;
  *v33 = v32;
  *&v7[v2[7]] = swift_getKeyPath();
  sub_1000032D4(&qword_100113778, &qword_1000CFD60);
  swift_storeEnumTagMultiPayload();
  v34 = &v7[v2[5]];
  v35 = objc_opt_self();

  v36 = [v35 mtOrange];
  v37 = Color.init(uiColor:)();
  v38 = [v35 mtOrange];
  Color.init(uiColor:)();
  v39 = Color.opacity(_:)();

  v40 = static Color.white.getter();
  static Color.white.getter();
  v41 = Color.opacity(_:)();

  *(v34 + 3) = &type metadata for StandardSessionUiConfig;
  *(v34 + 4) = &off_1001035E8;
  v42 = swift_allocObject();
  *v34 = v42;
  v42[2] = v37;
  v42[3] = v39;
  v42[4] = v40;
  v42[5] = v41;
  v43 = &v7[v2[8]];
  v68 = 0;
  State.init(wrappedValue:)();
  v44 = v70;
  *v43 = v69;
  *(v43 + 1) = v44;
  v45 = &v7[v2[9]];
  LOBYTE(v68) = 0;
  State.init(wrappedValue:)();
  v46 = v70;
  *v45 = v69;
  *(v45 + 1) = v46;
  v47 = &v7[v2[10]];
  LOBYTE(v68) = 0;
  State.init(wrappedValue:)();
  v48 = v70;
  *v47 = v69;
  *(v47 + 1) = v48;
  v49 = &v7[v2[11]];
  LOBYTE(v68) = 0;
  State.init(wrappedValue:)();
  v50 = v70;
  *v49 = v69;
  *(v49 + 1) = v50;
  v51 = &v7[v2[12]];
  LOBYTE(v68) = 0;
  State.init(wrappedValue:)();
  v52 = v70;
  *v51 = v69;
  *(v51 + 1) = v52;
  v53 = &v7[v2[13]];
  LOBYTE(v68) = 0;
  State.init(wrappedValue:)();
  v54 = v70;
  *v53 = v69;
  *(v53 + 1) = v54;
  v55 = &v7[v2[14]];
  LOBYTE(v68) = 0;
  State.init(wrappedValue:)();
  v56 = v70;
  *v55 = v69;
  *(v55 + 1) = v56;
  v57 = &v7[v2[15]];
  LOBYTE(v68) = 0;
  State.init(wrappedValue:)();
  v58 = v70;
  *v57 = v69;
  *(v57 + 1) = v58;
  v59 = &v7[v2[16]];
  LOBYTE(v68) = 0;
  State.init(wrappedValue:)();
  v60 = v70;
  *v59 = v69;
  *(v59 + 1) = v60;
  v61 = &v7[v2[17]];
  LOBYTE(v68) = 0;
  State.init(wrappedValue:)();
  v62 = v70;
  *v61 = v69;
  *(v61 + 1) = v62;
  v63 = &v7[v2[18]];
  LOBYTE(v68) = 0;
  State.init(wrappedValue:)();
  v64 = v70;
  *v63 = v69;
  *(v63 + 1) = v64;
  v65 = objc_allocWithZone(sub_1000032D4(&qword_100115E70, &qword_1000D3338));
  *&v65[*((swift_isaMask & *v65) + qword_10011F398 + 16) + 8] = 0;
  swift_unknownObjectWeakInit();
  sub_10004E69C(v7, v5, type metadata accessor for LinearTimerTimelineCountdown);
  v66 = UIHostingController.init(rootView:)();
  sub_10004E704(v14, v67);
  sub_10004E704(v7, type metadata accessor for LinearTimerTimelineCountdown);
  return v66;
}

void *sub_100041708()
{
  v1 = v0;
  v83 = type metadata accessor for CountdownPlatter(0);
  v2 = __chkstk_darwin(v83);
  v85 = &v73 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v84 = &v73 - v4;
  v5 = sub_1000032D4(&qword_100115E38, &qword_1000D3280);
  __chkstk_darwin(v5 - 8);
  v7 = &v73 - v6;
  v8 = sub_1000032D4(&qword_1001139D0, &unk_1000D08C0);
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v82 = &v73 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v87 = &v73 - v12;
  v13 = sub_1000032D4(&unk_100115DA0, &unk_1000D3220);
  __chkstk_darwin(v13 - 8);
  v15 = &v73 - v14;
  v16 = type metadata accessor for AlarmPresentationState();
  v17 = *(v16 - 8);
  v18 = __chkstk_darwin(v16);
  v86 = &v73 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v21 = &v73 - v20;
  sub_100045ADC(v15);
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
    v22 = &unk_100115DA0;
    v23 = &unk_1000D3220;
    v24 = v15;
LABEL_5:
    sub_10002D02C(v24, v22, v23);
    v26 = objc_opt_self();
    *&v88 = 0;
    *(&v88 + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(28);
    v27 = [v1 description];
    v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v30 = v29;

    *&v88 = v28;
    *(&v88 + 1) = v30;
    v31._object = 0x80000001000D8A20;
    v31._countAndFlagsBits = 0xD00000000000001ALL;
    String.append(_:)(v31);
    v32 = String._bridgeToObjectiveC()();

    [v26 logInfo:v32];

    return 0;
  }

  v80 = *(v17 + 32);
  v81 = v17 + 32;
  v80(v21, v15, v16);
  v25 = OBJC_IVAR____TtC10ClockAngel20SessionSceneDelegate_alarmKitAttributes;
  swift_beginAccess();
  sub_10002CFC4(v1 + v25, v7, &qword_100115E38, &qword_1000D3280);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    (*(v17 + 8))(v21, v16);
    v22 = &qword_100115E38;
    v23 = &qword_1000D3280;
    v24 = v7;
    goto LABEL_5;
  }

  v76 = *(v9 + 32);
  v77 = v9 + 32;
  v76(v87, v7, v8);
  v34 = [objc_opt_self() currentTraitCollection];
  v35 = [v34 _backlightLuminance];
  v75 = v35;

  *&v88 = 0;
  *(&v88 + 1) = 0xE000000000000000;
  _StringGuts.grow(_:)(61);
  v36 = [v1 description];
  v37 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v38 = v8;
  v40 = v39;

  v41._countAndFlagsBits = v37;
  v41._object = v40;
  String.append(_:)(v41);

  v42._countAndFlagsBits = 0xD000000000000039;
  v42._object = 0x80000001000D8C00;
  String.append(_:)(v42);
  if (v35 == 1)
  {
    v43 = 1702195828;
  }

  else
  {
    v43 = 0x65736C6166;
  }

  if (v35 == 1)
  {
    v44 = 0xE400000000000000;
  }

  else
  {
    v44 = 0xE500000000000000;
  }

  v45 = objc_opt_self();
  v46._countAndFlagsBits = v43;
  v46._object = v44;
  String.append(_:)(v46);

  v47 = String._bridgeToObjectiveC()();

  [v45 logInfo:v47];

  v78 = v9;
  v79 = v38;
  v48 = *(v9 + 16);
  v49 = v82;
  v48(v82, v87, v38);
  (*(v17 + 16))(v86, v21, v16);
  v73 = v21;
  if (v75 == 1)
  {
    v50 = objc_opt_self();
    v51 = [v50 mtOrange];
    Color.init(uiColor:)();
    v53 = Color.opacity(_:)();

    v52 = [v50 mtOrange];
    Color.init(uiColor:)();
    v75 = Color.opacity(_:)();

    static Color.white.getter();
    v74 = Color.opacity(_:)();

    static Color.white.getter();
    v56 = Color.opacity(_:)();
    v57 = &off_100103578;
    v58 = &type metadata for LowLuminanceSessionUiConfig;
  }

  else
  {
    type metadata accessor for CGColor(0);
    _CGColorInitTrampoline.init(_colorLiteralRed:green:blue:alpha:)();
    v53 = Color.init(_:)();
    v54 = [objc_opt_self() mtOrange];
    Color.init(uiColor:)();
    v75 = Color.opacity(_:)();

    v74 = static Color.white.getter();
    v55 = [objc_opt_self() systemExtraLightGrayColor];
    Color.init(uiColor:)();
    v56 = Color.opacity(_:)();
    v57 = &off_100103508;
    v58 = &type metadata for TimerLockScreenSessionUiConfig;
  }

  v89 = v58;
  v90 = v57;
  v59 = swift_allocObject();
  v60 = v75;
  v61 = v76;
  v59[2] = v53;
  v59[3] = v60;
  v59[4] = v74;
  v59[5] = v56;
  *&v88 = v59;
  v62 = *(v1 + OBJC_IVAR____TtC10ClockAngel20SessionSceneDelegate_destination);
  v63 = v84;
  v64 = v79;
  v61(v84, v49, v79);
  v65 = v83;
  v80((v63 + *(v83 + 20)), v86, v16);
  sub_10004E5BC(&v88, v63 + v65[6]);
  *(v63 + v65[7]) = 0x4028000000000000;
  *(v63 + v65[8]) = v62;
  v66 = objc_allocWithZone(sub_1000032D4(&qword_100115E68, &qword_1000D3330));
  *&v66[*((swift_isaMask & *v66) + qword_10011F398 + 16) + 8] = 0;
  swift_unknownObjectWeakInit();
  sub_10004E69C(v63, v85, type metadata accessor for CountdownPlatter);
  v67 = UIHostingController.init(rootView:)();
  sub_10004E704(v63, type metadata accessor for CountdownPlatter);
  *(v67 + *((swift_isaMask & *v67) + qword_10011F398 + 16) + 8) = &off_100100FD8;
  swift_unknownObjectWeakAssign();
  v68 = v67;
  v69 = v67;
  result = [v69 view];
  v70 = v78;
  if (result)
  {
    v71 = result;
    v72 = [objc_opt_self() clearColor];
    [v71 setBackgroundColor:v72];

    (*(v70 + 8))(v87, v64);
    (*(v17 + 8))(v73, v16);
    return v68;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100042110()
{
  v1 = v0;
  v2 = sub_1000032D4(&qword_100115E38, &qword_1000D3280);
  __chkstk_darwin(v2 - 8);
  v4 = &v32 - v3;
  v5 = sub_1000032D4(&unk_100118100, &qword_1000D1250);
  __chkstk_darwin(v5 - 8);
  v7 = &v32 - v6;
  v8 = type metadata accessor for MTAlarmCustomContent();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtC10ClockAngel20SessionSceneDelegate_alarmKitAttributes;
  swift_beginAccess();
  sub_10002CFC4(v1 + v12, v4, &qword_100115E38, &qword_1000D3280);
  v13 = sub_1000032D4(&qword_1001139D0, &unk_1000D08C0);
  if ((*(*(v13 - 8) + 48))(v4, 1, v13))
  {
    sub_10002D02C(v4, &qword_100115E38, &qword_1000D3280);
    (*(v9 + 56))(v7, 1, 1, v8);
LABEL_4:
    sub_10002D02C(v7, &unk_100118100, &qword_1000D1250);
    return 0;
  }

  AlarmAttributes.metadata.getter();
  sub_10002D02C(v4, &qword_100115E38, &qword_1000D3280);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    goto LABEL_4;
  }

  (*(v9 + 32))(v11, v7, v8);
  v15 = MTAlarmCustomContent.type.getter();
  (*(v9 + 8))(v11, v8);
  v16 = objc_opt_self();
  v33 = 0;
  v34 = 0xE000000000000000;
  _StringGuts.grow(_:)(54);
  v17 = [v1 description];
  v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v20 = v19;

  v21._countAndFlagsBits = v18;
  v21._object = v20;
  String.append(_:)(v21);

  v22._countAndFlagsBits = 0xD000000000000034;
  v22._object = 0x80000001000D8B90;
  String.append(_:)(v22);
  v23 = String._bridgeToObjectiveC()();

  [v16 logInfo:v23];

  if (v15 == 1)
  {
    return sub_100040E7C();
  }

  if (v15)
  {
    v33 = 0;
    v34 = 0xE000000000000000;
    _StringGuts.grow(_:)(52);
    v24 = [v1 description];
    v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v27 = v26;

    v28._countAndFlagsBits = v25;
    v28._object = v27;
    String.append(_:)(v28);

    v29._countAndFlagsBits = 0x776F6E6B6E55203ALL;
    v29._object = 0xEF2065707974206ELL;
    String.append(_:)(v29);
    v32 = v15;
    _print_unlocked<A, B>(_:_:)();
    v30._object = 0x80000001000D8BD0;
    v30._countAndFlagsBits = 0xD000000000000021;
    String.append(_:)(v30);
    v31 = String._bridgeToObjectiveC()();

    [v16 logError:v31];

    return 0;
  }

  return sub_100045214();
}

uint64_t sub_1000425B0()
{
  v1 = v0;
  v66 = type metadata accessor for AlarmAlertFullScreenAmbient(0);
  v2 = __chkstk_darwin(v66);
  v4 = &v61 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v65 = &v61 - v5;
  v6 = sub_1000032D4(&qword_100115E38, &qword_1000D3280);
  __chkstk_darwin(v6 - 8);
  v8 = &v61 - v7;
  v9 = sub_1000032D4(&qword_1001139D0, &unk_1000D08C0);
  v68 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = &v61 - v10;
  v12 = sub_1000032D4(&unk_100115DA0, &unk_1000D3220);
  __chkstk_darwin(v12 - 8);
  v14 = (&v61 - v13);
  v15 = type metadata accessor for AlarmPresentationState();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v61 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  LODWORD(v17) = v1[OBJC_IVAR____TtC10ClockAngel20SessionSceneDelegate_destination];
  v67 = v4;
  if (v17 == 1)
  {
  }

  else
  {
    v19 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v19 & 1) == 0)
    {

      return sub_10004498C();
    }
  }

  sub_100045ADC(v14);
  v20 = v16;
  v21 = *(v16 + 48);
  v22 = v15;
  if (v21(v14, 1, v15) == 1)
  {
    v23 = &unk_100115DA0;
    v24 = &unk_1000D3220;
    v25 = v14;
LABEL_11:
    sub_10002D02C(v25, v23, v24);
    v30 = objc_opt_self();
    v70 = 0;
    v71 = 0xE000000000000000;
    _StringGuts.grow(_:)(66);
    v31 = [v1 description];
    v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v34 = v33;

    v35._countAndFlagsBits = v32;
    v35._object = v34;
    String.append(_:)(v35);

    v36._object = 0x80000001000D8B40;
    v36._countAndFlagsBits = 0xD000000000000040;
    String.append(_:)(v36);
    v37 = String._bridgeToObjectiveC()();

    [v30 logInfo:v37];

    return 0;
  }

  v27 = v18;
  (*(v20 + 32))(v18, v14, v22);
  v28 = OBJC_IVAR____TtC10ClockAngel20SessionSceneDelegate_alarmKitAttributes;
  swift_beginAccess();
  sub_10002CFC4(&v1[v28], v8, &qword_100115E38, &qword_1000D3280);
  v29 = v68;
  if ((*(v68 + 48))(v8, 1, v9) == 1)
  {
    (*(v20 + 8))(v18, v22);
    v23 = &qword_100115E38;
    v24 = &qword_1000D3280;
    v25 = v8;
    goto LABEL_11;
  }

  (*(v29 + 32))(v11, v8, v9);
  v38 = v65;
  (*(v20 + 16))(v65, v27, v22);
  v63 = v27;
  v64 = v11;
  v39 = v66;
  (*(v29 + 16))(v38 + *(v66 + 20), v11, v9);
  v62 = v9;
  v40 = v29;
  if (qword_100113630 != -1)
  {
    swift_once();
  }

  v41 = qword_10011F508;
  v42 = (v38 + v39[6]);
  v42[3] = type metadata accessor for AlarmAndTimerCoordinator();
  v42[4] = &off_100102378;
  *v42 = v41;
  *(v38 + v39[7]) = swift_getKeyPath();
  sub_1000032D4(&qword_100113778, &qword_1000CFD60);
  swift_storeEnumTagMultiPayload();
  type metadata accessor for WeatherDataProvider(0);
  swift_allocObject();

  v61 = sub_10006ECE4();
  v43 = v39[8];
  static AnyTransition.move(edge:)();
  static AnyTransition.scale.getter();
  v44 = AnyTransition.combined(with:)();

  *(v38 + v43) = v44;
  v45 = v38 + v39[9];
  LOBYTE(v69) = 0;
  State.init(wrappedValue:)();
  v46 = v71;
  *v45 = v70;
  *(v45 + 8) = v46;
  v47 = v38 + v39[10];
  LOBYTE(v69) = 0;
  State.init(wrappedValue:)();
  v48 = v71;
  *v47 = v70;
  *(v47 + 8) = v48;
  v49 = v38 + v39[11];
  LOBYTE(v69) = 0;
  State.init(wrappedValue:)();
  v50 = v71;
  *v49 = v70;
  *(v49 + 8) = v50;
  v51 = v38 + v39[12];
  LOBYTE(v69) = 0;
  State.init(wrappedValue:)();
  v52 = v71;
  *v51 = v70;
  *(v51 + 8) = v52;
  v53 = v38 + v39[13];
  LOBYTE(v69) = 0;
  State.init(wrappedValue:)();
  v54 = v71;
  *v53 = v70;
  *(v53 + 8) = v54;
  v55 = v38 + v39[14];
  LOBYTE(v69) = 0;
  State.init(wrappedValue:)();
  v56 = v71;
  *v55 = v70;
  *(v55 + 8) = v56;
  v57 = (v38 + v39[15]);
  v69 = v61;
  State.init(wrappedValue:)();
  v58 = v71;
  *v57 = v70;
  v57[1] = v58;
  v59 = objc_allocWithZone(sub_1000032D4(&qword_100115E60, &qword_1000D3328));
  *&v59[*((swift_isaMask & *v59) + qword_10011F398 + 16) + 8] = 0;
  swift_unknownObjectWeakInit();
  sub_10004E69C(v38, v67, type metadata accessor for AlarmAlertFullScreenAmbient);
  v60 = UIHostingController.init(rootView:)();
  sub_10004E704(v38, type metadata accessor for AlarmAlertFullScreenAmbient);
  (*(v40 + 8))(v64, v62);
  (*(v20 + 8))(v63, v22);
  return v60;
}

uint64_t sub_100042EA8()
{
  v48 = type metadata accessor for AlarmAlertCoverSheet(0);
  v1 = __chkstk_darwin(v48);
  v49 = &v45[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v1);
  v4 = &v45[-v3];
  v5 = sub_1000032D4(&qword_100115E38, &qword_1000D3280);
  __chkstk_darwin(v5 - 8);
  v7 = &v45[-v6];
  v8 = sub_1000032D4(&qword_1001139D0, &unk_1000D08C0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v50 = &v45[-v10];
  v11 = sub_1000032D4(&unk_100115DA0, &unk_1000D3220);
  __chkstk_darwin(v11 - 8);
  v13 = &v45[-v12];
  v14 = type metadata accessor for AlarmPresentationState();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v45[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_100045ADC(v13);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    v18 = &unk_100115DA0;
    v19 = &unk_1000D3220;
    v20 = v13;
LABEL_5:
    sub_10002D02C(v20, v18, v19);
    v22 = objc_opt_self();
    v52 = 0;
    v53 = 0xE000000000000000;
    _StringGuts.grow(_:)(28);
    v23 = [v0 description];
    v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v26 = v25;

    v52 = v24;
    v53 = v26;
    v27._object = 0x80000001000D8A20;
    v27._countAndFlagsBits = 0xD00000000000001ALL;
    String.append(_:)(v27);
    v28 = String._bridgeToObjectiveC()();

    [v22 logInfo:v28];

    return 0;
  }

  (*(v15 + 32))(v17, v13, v14);
  v21 = OBJC_IVAR____TtC10ClockAngel20SessionSceneDelegate_alarmKitAttributes;
  swift_beginAccess();
  sub_10002CFC4(v0 + v21, v7, &qword_100115E38, &qword_1000D3280);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    (*(v15 + 8))(v17, v14);
    v18 = &qword_100115E38;
    v19 = &qword_1000D3280;
    v20 = v7;
    goto LABEL_5;
  }

  v30 = v50;
  (*(v9 + 32))(v50, v7, v8);
  (*(v15 + 16))(v4, v17, v14);
  v31 = v48;
  (*(v9 + 16))(&v4[*(v48 + 20)], v30, v8);
  v47 = v17;
  if (qword_100113630 != -1)
  {
    swift_once();
  }

  v32 = qword_10011F508;
  v33 = v31;
  v34 = &v4[v31[6]];
  v34[3] = type metadata accessor for AlarmAndTimerCoordinator();
  v34[4] = &off_100102378;
  *v34 = v32;
  *&v4[v33[7]] = swift_getKeyPath();
  sub_1000032D4(&qword_100113778, &qword_1000CFD60);
  swift_storeEnumTagMultiPayload();
  *&v4[v33[8]] = swift_getKeyPath();
  sub_1000032D4(&qword_100113780, &qword_1000D08D0);
  swift_storeEnumTagMultiPayload();

  v46 = static AccessibilitySettings.prefersActionSliderAlternative.getter();
  v35 = v33[9];
  static AnyTransition.move(edge:)();
  static AnyTransition.scale.getter();
  v36 = AnyTransition.combined(with:)();

  *&v4[v35] = v36;
  v37 = &v4[v33[10]];
  LOBYTE(v51) = 0;
  State.init(wrappedValue:)();
  v38 = v53;
  *v37 = v52;
  *(v37 + 1) = v38;
  v39 = &v4[v33[11]];
  v51 = 0;
  State.init(wrappedValue:)();
  v40 = v53;
  *v39 = v52;
  v39[1] = v40;
  v41 = &v4[v33[12]];
  LOBYTE(v51) = v46 & 1;
  State.init(wrappedValue:)();
  v42 = v53;
  *v41 = v52;
  *(v41 + 1) = v42;
  v43 = objc_allocWithZone(sub_1000032D4(&qword_100115E58, &qword_1000D3320));
  *&v43[*((swift_isaMask & *v43) + qword_10011F398 + 16) + 8] = 0;
  swift_unknownObjectWeakInit();
  sub_10004E69C(v4, v49, type metadata accessor for AlarmAlertCoverSheet);
  v44 = UIHostingController.init(rootView:)();
  sub_10004E704(v4, type metadata accessor for AlarmAlertCoverSheet);
  (*(v9 + 8))(v50, v8);
  (*(v15 + 8))(v47, v14);
  return v44;
}

char *sub_1000435A4()
{
  v1 = v0;
  v2 = sub_1000032D4(&qword_100115E38, &qword_1000D3280);
  v3 = __chkstk_darwin(v2 - 8);
  v5 = &v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v45 - v6;
  v8 = sub_1000032D4(&qword_1001139D0, &unk_1000D08C0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v45 = &v45 - v10;
  v11 = sub_1000032D4(&qword_100114D70, &unk_1000D20E0);
  __chkstk_darwin(v11 - 8);
  v13 = (&v45 - v12);
  v14 = type metadata accessor for OpaqueAlarm(0);
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v45 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100045D6C(v13);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    sub_10002D02C(v13, &qword_100114D70, &unk_1000D20E0);
    v18 = objc_opt_self();
    v46 = 0;
    v47 = 0xE000000000000000;
    _StringGuts.grow(_:)(28);
    v19 = [v0 description];
    v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v22 = v21;

    v46 = v20;
    v47 = v22;
    v23._object = 0x80000001000D8AE0;
    v23._countAndFlagsBits = 0xD00000000000001ALL;
    String.append(_:)(v23);
    v24 = String._bridgeToObjectiveC()();

    [v18 logError:v24];

    return 0;
  }

  else
  {
    sub_10004DF2C(v13, v17);
    v26 = objc_opt_self();
    v46 = 0;
    v47 = 0xE000000000000000;
    _StringGuts.grow(_:)(59);
    v27 = [v0 description];
    v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v30 = v29;

    v31._countAndFlagsBits = v28;
    v31._object = v30;
    String.append(_:)(v31);

    v32._countAndFlagsBits = 0xD000000000000039;
    v32._object = 0x80000001000D8B00;
    String.append(_:)(v32);
    v33 = String._bridgeToObjectiveC()();

    [v26 logInfo:v33];

    v34 = OBJC_IVAR____TtC10ClockAngel20SessionSceneDelegate_alarmKitAttributes;
    swift_beginAccess();
    sub_10002CFC4(v1 + v34, v7, &qword_100115E38, &qword_1000D3280);
    if ((*(v9 + 48))(v7, 1, v8) == 1)
    {
      sub_10002D02C(v7, &qword_100115E38, &qword_1000D3280);
      v35 = sub_100088DE4();
      v37 = v36;
      v38 = objc_allocWithZone(type metadata accessor for TimerCompressedController(0));
      v39 = sub_10005C638(v35, v37);
    }

    else
    {
      v40 = v45;
      (*(v9 + 32))(v45, v7, v8);
      v41 = sub_100088DE4();
      v43 = v42;
      (*(v9 + 16))(v5, v40, v8);
      (*(v9 + 56))(v5, 0, 1, v8);
      v44 = objc_allocWithZone(type metadata accessor for TimerCompressedController(0));
      v39 = sub_10005C290(v41, v43, v5);
      (*(v9 + 8))(v40, v8);
    }

    sub_10004E704(v17, type metadata accessor for OpaqueAlarm);
    return v39;
  }
}

void *sub_100043AF4()
{
  v1 = v0;
  v2 = sub_10004539C();
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = [objc_opt_self() currentTraitCollection];
  v5 = [v4 _backlightLuminance];

  v43 = 0;
  v44[0] = 0xE000000000000000;
  _StringGuts.grow(_:)(67);
  v6 = [v1 description];
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;

  v10._countAndFlagsBits = v7;
  v10._object = v9;
  String.append(_:)(v10);

  v11._object = 0x80000001000D8AA0;
  v11._countAndFlagsBits = 0xD00000000000003FLL;
  String.append(_:)(v11);
  if (v5 == 1)
  {
    v12 = 1702195828;
  }

  else
  {
    v12 = 0x65736C6166;
  }

  if (v5 == 1)
  {
    v13 = 0xE400000000000000;
  }

  else
  {
    v13 = 0xE500000000000000;
  }

  v14 = objc_opt_self();
  v15._countAndFlagsBits = v12;
  v15._object = v13;
  String.append(_:)(v15);

  v16 = String._bridgeToObjectiveC()();

  [v14 logInfo:v16];

  v17 = *&v1[OBJC_IVAR____TtC10ClockAngel20SessionSceneDelegate_alarmCoordinator];
  v38 = type metadata accessor for AlarmCoordinator();
  v39 = &off_1001023C0;
  v18 = objc_opt_self();

  v19 = [v18 mtOrange];
  v20 = Color.init(uiColor:)();
  if (v5 == 1)
  {
    v21 = Color.opacity(_:)();

    v22 = [v18 mtOrange];
    Color.init(uiColor:)();
    v23 = Color.opacity(_:)();

    static Color.white.getter();
    v24 = Color.opacity(_:)();

    v25 = &off_100103578;
    v26 = &type metadata for LowLuminanceSessionUiConfig;
    v20 = v21;
  }

  else
  {
    v28 = [v18 mtOrange];
    Color.init(uiColor:)();
    v23 = Color.opacity(_:)();

    v25 = &off_1001035E8;
    v26 = &type metadata for StandardSessionUiConfig;
    v24 = static Color.white.getter();
  }

  static Color.white.getter();
  v29 = Color.opacity(_:)();

  v41 = v26;
  v42 = v25;
  v30 = swift_allocObject();
  v30[2] = v20;
  v30[3] = v23;
  v30[4] = v24;
  v30[5] = v29;
  *&v40 = v30;
  v43 = v3;
  sub_10004E5BC(&v37, v44);
  sub_10004E5BC(&v40, &v45);
  v31 = objc_allocWithZone(sub_1000032D4(&qword_100115DC0, &qword_1000D3230));
  *&v31[*((swift_isaMask & *v31) + qword_10011F398 + 16) + 8] = 0;
  swift_unknownObjectWeakInit();
  sub_10004E5D4(&v43, &v37);
  v32 = v3;
  v27 = UIHostingController.init(rootView:)();
  sub_10004E630(&v43);
  *(v27 + *((swift_isaMask & *v27) + qword_10011F398 + 16) + 8) = &off_100100FD8;
  swift_unknownObjectWeakAssign();
  v33 = v27;
  result = [v33 view];
  if (result)
  {
    v35 = result;
    v36 = [objc_opt_self() clearColor];
    [v35 setBackgroundColor:v36];

    return v27;
  }

  __break(1u);
  return result;
}

uint64_t sub_100043F98()
{
  v1 = v0;
  v72 = type metadata accessor for FullAmbientAlarmView(0);
  v2 = __chkstk_darwin(v72);
  v4 = &v70 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v73 = &v70 - v5;
  v6 = sub_1000032D4(&unk_100118100, &qword_1000D1250);
  __chkstk_darwin(v6 - 8);
  v8 = &v70 - v7;
  v9 = sub_1000032D4(&qword_1001139D0, &unk_1000D08C0);
  v71 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = &v70 - v10;
  v12 = sub_1000032D4(&qword_100114D70, &unk_1000D20E0);
  __chkstk_darwin(v12 - 8);
  v14 = (&v70 - v13);
  v15 = type metadata accessor for OpaqueAlarm(0);
  v16 = *(v15 - 8);
  v17 = __chkstk_darwin(v15);
  v19 = (&v70 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v17);
  v74 = v4;
  v75 = &v70 - v20;
  if (v1[OBJC_IVAR____TtC10ClockAngel20SessionSceneDelegate_destination] == 1)
  {
  }

  else
  {
    v21 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v21 & 1) == 0)
    {
LABEL_6:
      v22 = objc_opt_self();
      v76 = 0;
      v77 = 0xE000000000000000;
      _StringGuts.grow(_:)(28);
      v23 = [v1 description];
      v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v26 = v25;

      v76 = v24;
      v77 = v26;
      v27._countAndFlagsBits = 0xD00000000000001ALL;
      v27._object = 0x80000001000D8A20;
      String.append(_:)(v27);
      v28 = String._bridgeToObjectiveC()();

      [v22 logInfo:v28];

      return 0;
    }
  }

  sub_100045D6C(v14);
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    sub_10002D02C(v14, &qword_100114D70, &unk_1000D20E0);
    goto LABEL_6;
  }

  v30 = v75;
  sub_10004DF2C(v14, v75);
  sub_10004E69C(v30, v19, type metadata accessor for OpaqueAlarm);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v32 = *v19;
      v33 = [*v19 isSleepAlarm];
    }

    else
    {
      sub_10004E704(v19, type metadata accessor for OpaqueAlarm);
      v33 = 0;
    }
  }

  else
  {
    v34 = sub_1000032D4(&unk_100115E00, &qword_1000D1D10);
    v35 = v71;
    (*(v71 + 32))(v11, v19 + *(v34 + 48), v9);
    AlarmAttributes.metadata.getter();
    v36 = type metadata accessor for MTAlarmCustomContent();
    v37 = *(v36 - 8);
    if ((*(v37 + 48))(v8, 1, v36) == 1)
    {
      (*(v35 + 8))(v11, v9);
      sub_10002D02C(v8, &unk_100118100, &qword_1000D1250);
      v33 = 0;
    }

    else
    {
      v33 = MTAlarmCustomContent.isSleepAlarm.getter();
      (*(v35 + 8))(v11, v9);
      (*(v37 + 8))(v8, v36);
    }

    v38 = type metadata accessor for AlarmPresentationState();
    (*(*(v38 - 8) + 8))(v19, v38);
  }

  v40 = v72;
  v39 = v73;
  v41 = objc_opt_self();
  v76 = 0;
  v77 = 0xE000000000000000;
  _StringGuts.grow(_:)(32);
  v42 = [v1 description];
  v43 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v45 = v44;

  v76 = v43;
  v77 = v45;
  v46._countAndFlagsBits = 0xD00000000000001ELL;
  v46._object = 0x80000001000D8A40;
  String.append(_:)(v46);
  v47 = String._bridgeToObjectiveC()();

  [v41 logInfo:v47];

  if (sub_100088B60() & 1) != 0 && (v33)
  {
    if (qword_100113610 != -1)
    {
      swift_once();
    }

    v48 = sub_10005926C();
    if (v48)
    {
      v49 = v48;
      v50 = [v48 isAuthorizedForWidgetUpdates];

      if (v50)
      {
        v51 = objc_opt_self();
        v52 = String._bridgeToObjectiveC()();
        v53 = String._bridgeToObjectiveC()();
        v54 = [v51 newAssertionForBundleIdentifier:v52 withReason:v53];

        v55 = *&v1[OBJC_IVAR____TtC10ClockAngel20SessionSceneDelegate_inUseAssertion];
        *&v1[OBJC_IVAR____TtC10ClockAngel20SessionSceneDelegate_inUseAssertion] = v54;
      }
    }
  }

  v56 = v75;
  sub_10004E69C(v75, v39, type metadata accessor for OpaqueAlarm);
  v57 = *&v1[OBJC_IVAR____TtC10ClockAngel20SessionSceneDelegate_alarmCoordinator];
  v58 = (v39 + *(v40 + 20));
  v58[3] = type metadata accessor for AlarmCoordinator();
  v58[4] = &off_1001023C0;
  *v58 = v57;
  v59 = objc_opt_self();

  v60 = [v59 mtOrange];
  v61 = Color.init(uiColor:)();
  v62 = [v59 mtOrange];
  Color.init(uiColor:)();
  v63 = Color.opacity(_:)();

  v64 = static Color.white.getter();
  static Color.white.getter();
  v65 = Color.opacity(_:)();

  v66 = (v39 + *(v40 + 24));
  v66[3] = &type metadata for StandardSessionUiConfig;
  v66[4] = &off_1001035E8;
  v67 = swift_allocObject();
  *v66 = v67;
  v67[2] = v61;
  v67[3] = v63;
  v67[4] = v64;
  v67[5] = v65;
  v68 = objc_allocWithZone(sub_1000032D4(&qword_100115E50, &qword_1000D32A8));
  *&v68[*((swift_isaMask & *v68) + qword_10011F398 + 16) + 8] = 0;
  swift_unknownObjectWeakInit();
  sub_10004E69C(v39, v74, type metadata accessor for FullAmbientAlarmView);
  v69 = UIHostingController.init(rootView:)();
  sub_10004E704(v39, type metadata accessor for FullAmbientAlarmView);
  sub_10004E704(v56, type metadata accessor for OpaqueAlarm);
  return v69;
}

uint64_t sub_10004498C()
{
  v1 = v0;
  v2 = sub_1000032D4(&unk_100118100, &qword_1000D1250);
  __chkstk_darwin(v2 - 8);
  v58 = &v57 - v3;
  v4 = sub_1000032D4(&qword_100115E38, &qword_1000D3280);
  v5 = __chkstk_darwin(v4 - 8);
  v7 = &v57 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v57 - v8;
  v10 = sub_1000032D4(&qword_100115E40, &unk_1000D1280);
  __chkstk_darwin(v10);
  v12 = &v57 - v11;
  v13 = sub_1000032D4(&qword_100114D70, &unk_1000D20E0);
  __chkstk_darwin(v13 - 8);
  v15 = (&v57 - v14);
  v16 = type metadata accessor for OpaqueAlarm(0);
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v57 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  LODWORD(v18) = v1[OBJC_IVAR____TtC10ClockAngel20SessionSceneDelegate_destination];
  v59 = v7;
  if (v18)
  {
    v20 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v20 & 1) == 0)
    {
LABEL_6:
      v21 = objc_opt_self();
      v60 = 0;
      v61 = 0xE000000000000000;
      _StringGuts.grow(_:)(54);
      v22 = [v1 description];
      v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v25 = v24;

      v26._countAndFlagsBits = v23;
      v26._object = v25;
      String.append(_:)(v26);

      v27._countAndFlagsBits = 0xD000000000000034;
      v27._object = 0x80000001000D8970;
      String.append(_:)(v27);
      v28 = String._bridgeToObjectiveC()();

      [v21 logInfo:v28];

      return 0;
    }
  }

  else
  {
  }

  sub_100045D6C(v15);
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
    sub_10002D02C(v15, &qword_100114D70, &unk_1000D20E0);
    goto LABEL_6;
  }

  sub_10004DF2C(v15, v19);
  v60 = 0;
  v61 = 0xE000000000000000;
  _StringGuts.grow(_:)(90);
  v30 = [v1 description];
  v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v33 = v32;

  v34._countAndFlagsBits = v31;
  v34._object = v33;
  String.append(_:)(v34);

  v35._countAndFlagsBits = 0xD000000000000043;
  v35._object = 0x80000001000D89B0;
  String.append(_:)(v35);
  v36 = sub_100088B60();
  if (v36)
  {
    v37 = 1702195828;
  }

  else
  {
    v37 = 0x65736C6166;
  }

  if (v36)
  {
    v38 = 0xE400000000000000;
  }

  else
  {
    v38 = 0xE500000000000000;
  }

  v39 = objc_opt_self();
  v40._countAndFlagsBits = v37;
  v40._object = v38;
  String.append(_:)(v40);

  v41._object = 0x80000001000D8A00;
  v41._countAndFlagsBits = 0xD000000000000011;
  String.append(_:)(v41);
  sub_100089408(v12);
  v42._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v42);

  v43 = String._bridgeToObjectiveC()();

  [v39 logInfo:v43];

  v44 = OBJC_IVAR____TtC10ClockAngel20SessionSceneDelegate_alarmKitAttributes;
  swift_beginAccess();
  sub_10002CFC4(&v1[v44], v9, &qword_100115E38, &qword_1000D3280);
  v45 = sub_1000032D4(&qword_1001139D0, &unk_1000D08C0);
  v46 = *(*(v45 - 8) + 48);
  if (v46(v9, 1, v45))
  {
    goto LABEL_16;
  }

  v47 = v58;
  AlarmAttributes.metadata.getter();
  v48 = type metadata accessor for MTAlarmCustomContent();
  if ((*(*(v48 - 8) + 48))(v47, 1, v48))
  {
    sub_10002D02C(v47, &unk_100118100, &qword_1000D1250);
LABEL_16:
    sub_10002D02C(v9, &qword_100115E38, &qword_1000D3280);
    goto LABEL_17;
  }

  MTAlarmCustomContent.type.getter();
  sub_10002D02C(v47, &unk_100118100, &qword_1000D1250);
  sub_10002D02C(v9, &qword_100115E38, &qword_1000D3280);
  v56 = AlarmType.rawValue.getter();
  if (v56 == AlarmType.rawValue.getter())
  {
    v49 = 0xE500000000000000;
    v50 = 0x72656D6974;
    goto LABEL_18;
  }

LABEL_17:
  v49 = 0xEA00000000006C6CLL;
  v50 = 0x69662E6D72616C61;
LABEL_18:
  v51 = v59;
  sub_10002CFC4(&v1[v44], v59, &qword_100115E38, &qword_1000D3280);
  if (v46(v51, 1, v45))
  {
    sub_10002D02C(v51, &qword_100115E38, &qword_1000D3280);
    v52 = [objc_opt_self() mtOrange];
    v53 = Color.init(uiColor:)();
  }

  else
  {
    v53 = AlarmAttributes.tintColor.getter();
    sub_10002D02C(v51, &qword_100115E38, &qword_1000D3280);
  }

  v54 = objc_allocWithZone(sub_1000032D4(&qword_100115E48, &qword_1000D32A0));
  v60 = v50;
  v61 = v49;
  v62 = 0x4038000000000000;
  v63 = v53;
  *&v54[*((swift_isaMask & *v54) + qword_10011F398 + 16) + 8] = 0;
  swift_unknownObjectWeakInit();
  v55 = UIHostingController.init(rootView:)();
  sub_10004E704(v19, type metadata accessor for OpaqueAlarm);
  return v55;
}

uint64_t sub_100045240(uint64_t (*a1)(void), uint64_t (*a2)(uint64_t (*)(void)))
{
  if (*(v2 + OBJC_IVAR____TtC10ClockAngel20SessionSceneDelegate_destination))
  {
    if (*(v2 + OBJC_IVAR____TtC10ClockAngel20SessionSceneDelegate_destination) == 1)
    {

      return a1();
    }

    else
    {
      v4 = objc_opt_self();
      _StringGuts.grow(_:)(53);
      v5 = [v2 description];
      v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v8 = v7;

      v9._countAndFlagsBits = v6;
      v9._object = v8;
      String.append(_:)(v9);

      v10._object = 0x80000001000D8930;
      v10._countAndFlagsBits = 0xD000000000000033;
      String.append(_:)(v10);
      v11 = String._bridgeToObjectiveC()();

      [v4 logInfo:v11];

      return 0;
    }
  }

  else
  {

    return a2(a1);
  }
}

uint64_t sub_10004539C()
{
  v1 = sub_1000032D4(&unk_100115E10, &qword_1000D27F0);
  __chkstk_darwin(v1 - 8);
  v3 = v26 - v2;
  v4 = sub_1000032D4(&qword_100115E20, &qword_1000D3270);
  __chkstk_darwin(v4 - 8);
  v6 = v26 - v5;
  v7 = type metadata accessor for AlarmActivityAttributes();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = OBJC_IVAR____TtC10ClockAngel20SessionSceneDelegate_alarmAttributes;
  swift_beginAccess();
  sub_10002CFC4(v0 + v11, v6, &qword_100115E20, &qword_1000D3270);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_10002D02C(v6, &qword_100115E20, &qword_1000D3270);
  }

  else
  {
    v12 = v0;
    (*(v8 + 32))(v10, v6, v7);
    if (qword_100113600 != -1)
    {
      swift_once();
    }

    v13 = AlarmActivityAttributes.context.getter();
    v14 = AlarmContext.alarmId.getter();
    v16 = v15;

    v26[1] = v14;
    v26[2] = v16;
    AnyHashable.init<A>(_:)();
    dispatch thunk of DataStore.getEntry(for:)();
    sub_10004E3D4(v27);
    if (v28)
    {
      v17 = v28;
      (*(v8 + 8))(v10, v7);
      return v17;
    }

    v19 = *(v12 + OBJC_IVAR____TtC10ClockAngel20SessionSceneDelegate_alarmCoordinator);

    v20 = AlarmActivityAttributes.context.getter();
    v21 = AlarmContext.alarmId.getter();
    v23 = v22;

    v24 = type metadata accessor for TaskPriority();
    (*(*(v24 - 8) + 56))(v3, 1, 1, v24);
    v25 = swift_allocObject();
    v25[2] = 0;
    v25[3] = 0;
    v25[4] = v19;
    v25[5] = v21;
    v25[6] = v23;

    sub_100075B64(0, 0, v3, &unk_1000D3290, v25);

    (*(v8 + 8))(v10, v7);
  }

  return 0;
}

uint64_t sub_10004573C()
{
  v1 = sub_1000032D4(&unk_100115E10, &qword_1000D27F0);
  __chkstk_darwin(v1 - 8);
  v3 = v26 - v2;
  v4 = sub_1000032D4(&qword_100115E28, &qword_1000D3278);
  __chkstk_darwin(v4 - 8);
  v6 = v26 - v5;
  v7 = type metadata accessor for TimerActivityAttributes();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = OBJC_IVAR____TtC10ClockAngel20SessionSceneDelegate_timerAttributes;
  swift_beginAccess();
  sub_10002CFC4(v0 + v11, v6, &qword_100115E28, &qword_1000D3278);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_10002D02C(v6, &qword_100115E28, &qword_1000D3278);
  }

  else
  {
    v12 = v0;
    (*(v8 + 32))(v10, v6, v7);
    if (qword_1001135F8 != -1)
    {
      swift_once();
    }

    v13 = TimerActivityAttributes.context.getter();
    v14 = dispatch thunk of TimerContext.timerId.getter();
    v16 = v15;

    v26[1] = v14;
    v26[2] = v16;
    AnyHashable.init<A>(_:)();
    dispatch thunk of DataStore.getEntry(for:)();
    sub_10004E3D4(v27);
    if (v28)
    {
      v17 = v28;
      (*(v8 + 8))(v10, v7);
      return v17;
    }

    v19 = *(v12 + OBJC_IVAR____TtC10ClockAngel20SessionSceneDelegate_timerCoordinator);

    v20 = TimerActivityAttributes.context.getter();
    v21 = dispatch thunk of TimerContext.timerId.getter();
    v23 = v22;

    v24 = type metadata accessor for TaskPriority();
    (*(*(v24 - 8) + 56))(v3, 1, 1, v24);
    v25 = swift_allocObject();
    v25[2] = 0;
    v25[3] = 0;
    v25[4] = v19;
    v25[5] = v21;
    v25[6] = v23;

    sub_100075B64(0, 0, v3, &unk_1000D3288, v25);

    (*(v8 + 8))(v10, v7);
  }

  return 0;
}

uint64_t sub_100045ADC@<X0>(void *a1@<X8>)
{
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000032D4(&unk_100115DA0, &unk_1000D3220);
  __chkstk_darwin(v7 - 8);
  v9 = v17 - v8;
  v10 = OBJC_IVAR____TtC10ClockAngel20SessionSceneDelegate_alarmPresentationState;
  swift_beginAccess();
  sub_10002CFC4(v1 + v10, v9, &unk_100115DA0, &unk_1000D3220);
  v11 = type metadata accessor for AlarmPresentationState();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v9, 1, v11))
  {
    sub_10002D02C(v9, &unk_100115DA0, &unk_1000D3220);
    return (*(v12 + 56))(a1, 1, 1, v11);
  }

  else
  {
    AlarmPresentationState.alarmID.getter();
    sub_10002D02C(v9, &unk_100115DA0, &unk_1000D3220);
    v14 = UUID.uuidString.getter();
    v16 = v15;
    (*(v4 + 8))(v6, v3);
    if (qword_100113608 != -1)
    {
      swift_once();
    }

    v17[0] = v14;
    v17[1] = v16;
    AnyHashable.init<A>(_:)();
    dispatch thunk of DataStore.getEntry(for:)();
    return sub_10004E3D4(v18);
  }
}

uint64_t sub_100045D6C@<X0>(uint64_t *a1@<X8>)
{
  v33 = a1;
  v2 = sub_1000032D4(&unk_100115DA0, &unk_1000D3220);
  __chkstk_darwin(v2 - 8);
  v4 = &v31 - v3;
  v5 = type metadata accessor for AlarmPresentationState();
  v32 = *(v5 - 8);
  __chkstk_darwin(v5);
  v31 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000032D4(&qword_100115E38, &qword_1000D3280);
  __chkstk_darwin(v7 - 8);
  v9 = &v31 - v8;
  v10 = sub_1000032D4(&qword_1001139D0, &unk_1000D08C0);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v31 - v12;
  v14 = OBJC_IVAR____TtC10ClockAngel20SessionSceneDelegate_alarmKitAttributes;
  swift_beginAccess();
  sub_10002CFC4(v1 + v14, v9, &qword_100115E38, &qword_1000D3280);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    v15 = &qword_100115E38;
    v16 = &qword_1000D3280;
    v17 = v9;
  }

  else
  {
    v18 = *(v11 + 32);
    v18(v13, v9, v10);
    sub_100045ADC(v4);
    v19 = v32;
    if ((*(v32 + 48))(v4, 1, v5) != 1)
    {
      v25 = *(v19 + 32);
      v26 = v31;
      v25(v31, v4, v5);
      v27 = *(sub_1000032D4(&unk_100115E00, &qword_1000D1D10) + 48);
      v28 = v33;
      v25(v33, v26, v5);
      v18(v28 + v27, v13, v10);
      v22 = type metadata accessor for OpaqueAlarm(0);
      swift_storeEnumTagMultiPayload();
      v23 = *(*(v22 - 8) + 56);
      v24 = v28;
      return v23(v24, 0, 1, v22);
    }

    (*(v11 + 8))(v13, v10);
    v15 = &unk_100115DA0;
    v16 = &unk_1000D3220;
    v17 = v4;
  }

  sub_10002D02C(v17, v15, v16);
  v20 = sub_10004539C();
  if (v20 || (v20 = sub_10004573C()) != 0)
  {
    v21 = v33;
    *v33 = v20;
    v22 = type metadata accessor for OpaqueAlarm(0);
    swift_storeEnumTagMultiPayload();
    v23 = *(*(v22 - 8) + 56);
    v24 = v21;
    return v23(v24, 0, 1, v22);
  }

  v30 = type metadata accessor for OpaqueAlarm(0);
  return (*(*(v30 - 8) + 56))(v33, 1, 1, v30);
}

uint64_t sub_1000461B4()
{
  v1[14] = v0;
  sub_1000032D4(&qword_100115E28, &qword_1000D3278);
  v1[15] = swift_task_alloc();
  sub_1000032D4(&qword_100115E20, &qword_1000D3270);
  v1[16] = swift_task_alloc();
  sub_1000032D4(&unk_100118100, &qword_1000D1250);
  v1[17] = swift_task_alloc();
  v2 = type metadata accessor for UUID();
  v1[18] = v2;
  v1[19] = *(v2 - 8);
  v1[20] = swift_task_alloc();
  sub_1000032D4(&unk_100115DA0, &unk_1000D3220);
  v1[21] = swift_task_alloc();
  v3 = type metadata accessor for AlarmPresentationState();
  v1[22] = v3;
  v1[23] = *(v3 - 8);
  v1[24] = swift_task_alloc();
  sub_1000032D4(&qword_100115E38, &qword_1000D3280);
  v1[25] = swift_task_alloc();
  v4 = sub_1000032D4(&qword_1001139D0, &unk_1000D08C0);
  v1[26] = v4;
  v1[27] = *(v4 - 8);
  v1[28] = swift_task_alloc();
  type metadata accessor for MainActor();
  v1[29] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[30] = v6;
  v1[31] = v5;

  return _swift_task_switch(sub_100046484, v6, v5);
}

uint64_t sub_100046484()
{
  v1 = v0[26];
  v2 = v0[27];
  v3 = v0[25];
  v4 = v0[14];
  v5 = OBJC_IVAR____TtC10ClockAngel20SessionSceneDelegate_alarmKitAttributes;
  swift_beginAccess();
  sub_10002CFC4(v4 + v5, v3, &qword_100115E38, &qword_1000D3280);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v6 = v0[25];
    v7 = &qword_100115E38;
    v8 = &qword_1000D3280;
    goto LABEL_5;
  }

  v9 = v0[22];
  v10 = v0[23];
  v11 = v0[21];
  v12 = v0[14];
  (*(v0[27] + 32))(v0[28], v0[25], v0[26]);
  v13 = OBJC_IVAR____TtC10ClockAngel20SessionSceneDelegate_alarmPresentationState;
  swift_beginAccess();
  sub_10002CFC4(v12 + v13, v11, &unk_100115DA0, &unk_1000D3220);
  if ((*(v10 + 48))(v11, 1, v9) == 1)
  {
    v14 = v0[21];
    (*(v0[27] + 8))(v0[28], v0[26]);
    v7 = &unk_100115DA0;
    v8 = &unk_1000D3220;
    v6 = v14;
LABEL_5:
    sub_10002D02C(v6, v7, v8);
    v15 = v0[16];
    v16 = v0[14];
    v17 = OBJC_IVAR____TtC10ClockAngel20SessionSceneDelegate_alarmAttributes;
    swift_beginAccess();
    sub_10002CFC4(v16 + v17, v15, &qword_100115E20, &qword_1000D3270);
    v18 = type metadata accessor for AlarmActivityAttributes();
    v19 = (*(*(v18 - 8) + 48))(v15, 1, v18);
    v20 = v0[16];
    if (v19)
    {
      v22 = v0[14];
      v21 = v0[15];
      sub_10002D02C(v0[16], &qword_100115E20, &qword_1000D3270);
      v23 = OBJC_IVAR____TtC10ClockAngel20SessionSceneDelegate_timerAttributes;
      swift_beginAccess();
      sub_10002CFC4(v22 + v23, v21, &qword_100115E28, &qword_1000D3278);
      v24 = type metadata accessor for TimerActivityAttributes();
      if ((*(*(v24 - 8) + 48))(v21, 1, v24))
      {
        v25 = v0[15];

        sub_10002D02C(v25, &qword_100115E28, &qword_1000D3278);

        v26 = v0[1];

        return v26(0);
      }

      else
      {
        v41 = v0[14];
        v40 = v0[15];
        v42 = TimerActivityAttributes.context.getter();
        sub_10002D02C(v40, &qword_100115E28, &qword_1000D3278);
        v43 = dispatch thunk of TimerContext.timerId.getter();
        v45 = v44;

        v0[38] = v45;
        v0[39] = *(v41 + OBJC_IVAR____TtC10ClockAngel20SessionSceneDelegate_timerCoordinator);

        v46 = swift_task_alloc();
        v0[40] = v46;
        *v46 = v0;
        v46[1] = sub_100047030;

        return sub_1000786AC(v43, v45);
      }
    }

    else
    {
      v28 = v0[14];
      v29 = AlarmActivityAttributes.context.getter();
      sub_10002D02C(v20, &qword_100115E20, &qword_1000D3270);
      v30 = AlarmContext.alarmId.getter();
      v32 = v31;

      v0[34] = v32;
      v0[35] = *(v28 + OBJC_IVAR____TtC10ClockAngel20SessionSceneDelegate_alarmCoordinator);

      v33 = swift_task_alloc();
      v0[36] = v33;
      *v33 = v0;
      v33[1] = sub_100046DD8;

      return sub_1000765F0(v30, v32);
    }
  }

  (*(v0[23] + 32))(v0[24], v0[21], v0[22]);
  if (qword_100113630 != -1)
  {
    swift_once();
  }

  v34 = v0[17];
  AlarmPresentationState.alarmID.getter();
  AlarmAttributes.metadata.getter();
  v35 = type metadata accessor for MTAlarmCustomContent();
  v36 = *(v35 - 8);
  v37 = (*(v36 + 48))(v34, 1, v35);
  v38 = v0[17];
  if (v37 == 1)
  {
    sub_10002D02C(v0[17], &unk_100118100, &qword_1000D1250);
    v39 = 0;
  }

  else
  {
    v39 = MTAlarmCustomContent.type.getter();
    (*(v36 + 8))(v38, v35);
  }

  v47 = AlarmPresentationState.bundleID.getter();
  v49 = v48;
  v0[32] = v48;
  v50 = swift_task_alloc();
  v0[33] = v50;
  *v50 = v0;
  v50[1] = sub_100046B24;
  v51 = v0[20];

  return sub_10007C7B0(v51, v39, v37 == 1, v47, v49);
}

uint64_t sub_100046B24(char a1)
{
  v2 = *v1;
  v3 = *(*v1 + 160);
  v4 = *(*v1 + 152);
  v5 = *(*v1 + 144);
  *(*v1 + 336) = a1;

  (*(v4 + 8))(v3, v5);
  v6 = *(v2 + 248);
  v7 = *(v2 + 240);

  return _swift_task_switch(sub_100046CCC, v7, v6);
}

uint64_t sub_100046CCC()
{
  v1 = *(v0 + 224);
  v2 = *(v0 + 208);
  v3 = *(v0 + 216);
  v5 = *(v0 + 184);
  v4 = *(v0 + 192);
  v6 = *(v0 + 176);

  (*(v5 + 8))(v4, v6);
  (*(v3 + 8))(v1, v2);
  v7 = *(v0 + 336);

  v8 = *(v0 + 8);

  return v8(v7);
}

uint64_t sub_100046DD8(uint64_t a1)
{
  v2 = *v1;
  *(*v1 + 296) = a1;

  v3 = *(v2 + 248);
  v4 = *(v2 + 240);

  return _swift_task_switch(sub_100046F40, v4, v3);
}

uint64_t sub_100046F40()
{
  v1 = *(v0 + 296);

  if (v1)
  {
    v2 = *(v0 + 296);
    v1 = [v2 isFiring];
  }

  v3 = *(v0 + 8);

  return v3(v1);
}

uint64_t sub_100047030(uint64_t a1)
{
  v2 = *v1;
  *(*v1 + 328) = a1;

  v3 = *(v2 + 248);
  v4 = *(v2 + 240);

  return _swift_task_switch(sub_100047198, v4, v3);
}

uint64_t sub_100047198()
{
  v1 = *(v0 + 328);

  if (v1)
  {
    v2 = *(v0 + 328);
    v1 = [v2 isFiring];
  }

  v3 = *(v0 + 8);

  return v3(v1);
}

void sub_100047288(void *a1, uint64_t a2)
{
  v2 = a2;
  v4 = objc_opt_self();
  _StringGuts.grow(_:)(41);
  v5 = [a1 description];
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;

  v9._object = 0x80000001000D9160;
  v9._countAndFlagsBits = 0xD000000000000027;
  String.append(_:)(v9);
  v10 = String._bridgeToObjectiveC()();

  [v4 logInfo:{v10, v6, v8}];

  sub_100047388(v2);
}

void sub_100047388(unsigned __int8 a1)
{
  v2 = v1;
  v35 = sub_10003F3D8(a1);
  if (!v35)
  {
    v16 = objc_opt_self();
    _StringGuts.grow(_:)(67);
    v17 = [v1 description];
    v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v20 = v19;

    v21._countAndFlagsBits = v18;
    v21._object = v20;
    String.append(_:)(v21);

    v22._countAndFlagsBits = 0xD000000000000022;
    v22._object = 0x80000001000D8860;
    String.append(_:)(v22);
    _print_unlocked<A, B>(_:_:)();
    v23._object = 0x80000001000D8890;
    v23._countAndFlagsBits = 0xD00000000000001DLL;
    String.append(_:)(v23);
    v24 = String._bridgeToObjectiveC()();

    [v16 logInfo:v24];

    return;
  }

  v3 = objc_opt_self();
  _StringGuts.grow(_:)(52);
  v4 = [v1 description];
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  v8._countAndFlagsBits = v5;
  v8._object = v7;
  String.append(_:)(v8);

  v9._countAndFlagsBits = 0xD000000000000032;
  v9._object = 0x80000001000D88B0;
  String.append(_:)(v9);
  v10 = String._bridgeToObjectiveC()();

  [v3 logInfo:v10];

  v11 = OBJC_IVAR____TtC10ClockAngel20SessionSceneDelegate_window;
  v12 = *&v2[OBJC_IVAR____TtC10ClockAngel20SessionSceneDelegate_window];
  if (v12)
  {
    goto LABEL_3;
  }

  v25 = *&v2[OBJC_IVAR____TtC10ClockAngel20SessionSceneDelegate_currentSessionScene];
  if (!v25)
  {
    _StringGuts.grow(_:)(54);
    v28 = [v2 description];
    v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v31 = v30;

    v32._countAndFlagsBits = v29;
    v32._object = v31;
    String.append(_:)(v32);

    v33._countAndFlagsBits = 0xD000000000000034;
    v33._object = 0x80000001000D88F0;
    String.append(_:)(v33);
    v34 = String._bridgeToObjectiveC()();

    [v3 logError:v34];

    v15 = v34;
    goto LABEL_6;
  }

  v26 = [objc_allocWithZone(SecureWindow) initWithWindowScene:v25];
  v27 = *&v2[v11];
  *&v2[v11] = v26;

  v12 = *&v2[v11];
  if (v12)
  {
LABEL_3:
    [v12 setRootViewController:v35];
    v13 = *&v2[v11];
    if (v13)
    {
      v14 = v13;
      [v14 makeKeyAndVisible];
    }
  }

  v15 = v35;
LABEL_6:
}

id sub_100047764()
{
  v1 = v0;
  v67 = type metadata accessor for UUID();
  v66 = *(v67 - 8);
  __chkstk_darwin(v67);
  v65 = &v64 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1000032D4(&unk_100115DA0, &unk_1000D3220);
  __chkstk_darwin(v3 - 8);
  v72 = (&v64 - v4);
  v75 = type metadata accessor for AlarmPresentationState();
  v73 = *(v75 - 8);
  __chkstk_darwin(v75);
  v74 = &v64 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000032D4(&qword_100115E20, &qword_1000D3270);
  __chkstk_darwin(v6 - 8);
  v68 = &v64 - v7;
  v8 = type metadata accessor for AlarmActivityAttributes();
  v70 = *(v8 - 8);
  v71 = v8;
  __chkstk_darwin(v8);
  v69 = &v64 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1000032D4(&qword_100115E28, &qword_1000D3278);
  __chkstk_darwin(v10 - 8);
  v12 = &v64 - v11;
  v13 = type metadata accessor for TimerActivityAttributes();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v64 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = objc_opt_self();
  v78 = 0;
  v79 = 0xE000000000000000;
  _StringGuts.grow(_:)(19);
  v18 = [v0 description];
  v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v21 = v20;

  v78 = v19;
  v79 = v21;
  v22._object = 0x80000001000D8810;
  v22._countAndFlagsBits = 0xD000000000000011;
  String.append(_:)(v22);
  v23 = String._bridgeToObjectiveC()();

  v64 = v17;
  [v17 logInfo:v23];

  v24 = *&v0[OBJC_IVAR____TtC10ClockAngel20SessionSceneDelegate_alarmKitApertureElementProvider];
  *&v0[OBJC_IVAR____TtC10ClockAngel20SessionSceneDelegate_alarmKitApertureElementProvider] = 0;

  v25 = *&v0[OBJC_IVAR____TtC10ClockAngel20SessionSceneDelegate_timerApertureElementProvider];
  *&v0[OBJC_IVAR____TtC10ClockAngel20SessionSceneDelegate_timerApertureElementProvider] = 0;

  v26 = *&v0[OBJC_IVAR____TtC10ClockAngel20SessionSceneDelegate_alarmApertureElementProvider];
  *&v0[OBJC_IVAR____TtC10ClockAngel20SessionSceneDelegate_alarmApertureElementProvider] = 0;

  v27 = *&v0[OBJC_IVAR____TtC10ClockAngel20SessionSceneDelegate_stopwatchApertureElementProvider];
  *&v0[OBJC_IVAR____TtC10ClockAngel20SessionSceneDelegate_stopwatchApertureElementProvider] = 0;

  v28 = OBJC_IVAR____TtC10ClockAngel20SessionSceneDelegate_timerAttributes;
  swift_beginAccess();
  sub_10002CFC4(&v1[v28], v12, &qword_100115E28, &qword_1000D3278);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_10002D02C(v12, &qword_100115E28, &qword_1000D3278);
  }

  else
  {
    (*(v14 + 32))(v16, v12, v13);
    if (qword_1001135F8 != -1)
    {
      swift_once();
    }

    sub_10004CB7C(&qword_100115E30, type metadata accessor for SessionSceneDelegate, &unk_1000D31D8);
    v29 = TimerActivityAttributes.context.getter();
    v30 = dispatch thunk of TimerContext.timerId.getter();
    v32 = v31;

    v80 = v30;
    v81 = v32;
    AnyHashable.init<A>(_:)();
    dispatch thunk of DataStore.deregisterObserver(_:for:)();
    sub_10004E3D4(&v78);
    (*(v14 + 8))(v16, v13);
  }

  v33 = v68;
  v34 = OBJC_IVAR____TtC10ClockAngel20SessionSceneDelegate_alarmAttributes;
  swift_beginAccess();
  sub_10002CFC4(&v1[v34], v33, &qword_100115E20, &qword_1000D3270);
  v35 = v70;
  v36 = v71;
  v37 = (*(v70 + 48))(v33, 1, v71);
  v39 = v74;
  v38 = v75;
  v40 = v73;
  v41 = v69;
  if (v37 == 1)
  {
    sub_10002D02C(v33, &qword_100115E20, &qword_1000D3270);
  }

  else
  {
    (*(v35 + 32))(v69, v33, v36);
    v42 = v35;
    if (qword_100113600 != -1)
    {
      swift_once();
    }

    sub_10004CB7C(&qword_100115E30, type metadata accessor for SessionSceneDelegate, &unk_1000D31D8);
    v43 = AlarmActivityAttributes.context.getter();
    v44 = v41;
    v45 = AlarmContext.alarmId.getter();
    v47 = v46;

    v76 = v45;
    v77 = v47;
    AnyHashable.init<A>(_:)();
    dispatch thunk of DataStore.deregisterObserver(_:for:)();
    sub_10004E3D4(&v78);
    (*(v42 + 8))(v44, v36);
    v39 = v74;
    v38 = v75;
  }

  v48 = v72;
  sub_100045ADC(v72);
  if ((*(v40 + 48))(v48, 1, v38) == 1)
  {
    sub_10002D02C(v48, &unk_100115DA0, &unk_1000D3220);
  }

  else
  {
    (*(v40 + 32))(v39, v48, v38);
    v78 = 0;
    v79 = 0xE000000000000000;
    _StringGuts.grow(_:)(49);
    v49 = [v1 description];
    v50 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v52 = v51;

    v78 = v50;
    v79 = v52;
    v53._countAndFlagsBits = 0xD00000000000002FLL;
    v53._object = 0x80000001000D8830;
    String.append(_:)(v53);
    v54 = String._bridgeToObjectiveC()();

    [v64 logInfo:v54];

    if (qword_100113608 != -1)
    {
      swift_once();
    }

    sub_10004CB7C(&qword_100115E30, type metadata accessor for SessionSceneDelegate, &unk_1000D31D8);
    v55 = v65;
    AlarmPresentationState.alarmID.getter();
    v56 = UUID.uuidString.getter();
    v58 = v57;
    (*(v66 + 8))(v55, v67);
    v76 = v56;
    v77 = v58;
    AnyHashable.init<A>(_:)();
    dispatch thunk of DataStore.deregisterObserver(_:for:)();
    sub_10004E3D4(&v78);
    (*(v40 + 8))(v39, v38);
  }

  v59 = *&v1[OBJC_IVAR____TtC10ClockAngel20SessionSceneDelegate_currentSessionScene];
  if (v59)
  {
    v60 = [v59 _FBSScene];
    [v60 removeObserver:v1];
  }

  v61 = OBJC_IVAR____TtC10ClockAngel20SessionSceneDelegate_window;
  result = *&v1[OBJC_IVAR____TtC10ClockAngel20SessionSceneDelegate_window];
  if (result)
  {
    v63 = [result rootViewController];
    [v63 removeFromParentViewController];

    result = *&v1[v61];
    if (result)
    {
      return [result setRootViewController:0];
    }
  }

  return result;
}

uint64_t sub_100048160(char a1)
{
  v3 = sub_1000032D4(&unk_100115E10, &qword_1000D27F0);
  __chkstk_darwin(v3 - 8);
  v5 = &v22 - v4;
  v6 = sub_1000032D4(&qword_100114D70, &unk_1000D20E0);
  __chkstk_darwin(v6 - 8);
  v8 = (&v22 - v7);
  v9 = type metadata accessor for OpaqueAlarm(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v13 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v15 = &v22 - v14;
  sub_100045D6C(v8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_10002D02C(v8, &qword_100114D70, &unk_1000D20E0);
  }

  sub_10004DF2C(v8, v15);
  static TaskPriority.userInitiated.getter();
  v17 = type metadata accessor for TaskPriority();
  (*(*(v17 - 8) + 56))(v5, 0, 1, v17);
  sub_10004E69C(v15, v13, type metadata accessor for OpaqueAlarm);
  v18 = (*(v10 + 80) + 40) & ~*(v10 + 80);
  v19 = v18 + v11;
  v20 = swift_allocObject();
  v20[2] = 0;
  v20[3] = 0;
  v20[4] = v1;
  sub_10004DF2C(v13, v20 + v18);
  *(v20 + v19) = a1 & 1;
  v21 = v1;
  sub_100039A94(0, 0, v5, &unk_1000D3258, v20);

  sub_10002D02C(v5, &unk_100115E10, &qword_1000D27F0);
  return sub_10004E704(v15, type metadata accessor for OpaqueAlarm);
}

uint64_t sub_100048430(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  *(v6 + 48) = a6;
  *(v6 + 16) = a4;
  *(v6 + 24) = a5;
  v7 = swift_task_alloc();
  *(v6 + 32) = v7;
  *v7 = v6;
  v7[1] = sub_1000484C8;

  return sub_1000461B4();
}

uint64_t sub_1000484C8(char a1)
{
  *(*v1 + 49) = a1;

  return _swift_task_switch(sub_1000485C8, 0, 0);
}

uint64_t sub_1000485C8()
{
  if (*(v0 + 49) == 1)
  {
    type metadata accessor for MainActor();
    *(v0 + 40) = static MainActor.shared.getter();
    v2 = dispatch thunk of Actor.unownedExecutor.getter();

    return _swift_task_switch(sub_100048698, v2, v1);
  }

  else
  {
    v3 = *(v0 + 8);

    return v3();
  }
}

uint64_t sub_100048698()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 24);

  sub_100048714(v2, v1);
  v3 = *(v0 + 8);

  return v3();
}

void sub_100048714(char *a1, int a2)
{
  v102 = a1;
  LODWORD(v98) = a2;
  v101 = type metadata accessor for UUID();
  v96 = *(v101 - 8);
  __chkstk_darwin(v101);
  v97 = &v86 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1000032D4(&unk_100115DF0, &qword_1000D1260);
  __chkstk_darwin(v3 - 8);
  v95 = &v86 - v4;
  v5 = type metadata accessor for AlarmPresentation();
  v93 = *(v5 - 8);
  v94 = v5;
  __chkstk_darwin(v5);
  v7 = &v86 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000032D4(&unk_100118100, &qword_1000D1250);
  v9 = __chkstk_darwin(v8 - 8);
  v11 = &v86 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v9);
  v14 = &v86 - v13;
  __chkstk_darwin(v12);
  v16 = &v86 - v15;
  v17 = sub_1000032D4(&qword_1001139D0, &unk_1000D08C0);
  v100 = *(v17 - 8);
  __chkstk_darwin(v17);
  v19 = &v86 - v18;
  v20 = type metadata accessor for AlarmPresentationState();
  v99 = *(v20 - 8);
  __chkstk_darwin(v20);
  v22 = &v86 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for OpaqueAlarm(0);
  __chkstk_darwin(v23);
  v25 = (&v86 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10004E69C(v102, v25, type metadata accessor for OpaqueAlarm);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v87 = v7;
    v88 = v14;
    v91 = v11;
    v33 = *(sub_1000032D4(&unk_100115E00, &qword_1000D1D10) + 48);
    v34 = *(v99 + 32);
    v102 = v22;
    v90 = v20;
    v34(v22, v25, v20);
    (*(v100 + 32))(v19, v25 + v33, v17);
    AlarmAttributes.metadata.getter();
    v35 = type metadata accessor for MTAlarmCustomContent();
    v36 = *(v35 - 8);
    v92 = *(v36 + 48);
    v37 = v92(v16, 1, v35);
    v38 = v19;
    v89 = v36;
    if (v37 == 1)
    {
      sub_10002D02C(v16, &unk_100118100, &qword_1000D1250);
    }

    else
    {
      v48 = MTAlarmCustomContent.isSleepAlarm.getter();
      (*(v36 + 8))(v16, v35);
      if (v48 != 2 && (v48 & 1) != 0)
      {
        v49 = *(v103 + OBJC_IVAR____TtC10ClockAngel20SessionSceneDelegate_inUseAssertion);
        if (v49)
        {
          [v49 invalidate];
        }
      }
    }

    if ((v98 & 1) == 0)
    {
      goto LABEL_29;
    }

    v50 = AlarmPresentationState.bundleID.getter();
    if (!v51)
    {
      goto LABEL_29;
    }

    if (v50 == 0xD000000000000015 && v51 == 0x80000001000D7F20)
    {
    }

    else
    {
      v52 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v52 & 1) == 0)
      {
        goto LABEL_29;
      }
    }

    v53 = v88;
    AlarmAttributes.metadata.getter();
    if (v92(v53, 1, v35) == 1)
    {
      sub_10002D02C(v53, &unk_100118100, &qword_1000D1250);
    }

    else
    {
      MTAlarmCustomContent.type.getter();
      (*(v89 + 8))(v53, v35);
      v54 = AlarmType.rawValue.getter();
      if (v54 == AlarmType.rawValue.getter())
      {
        v55 = v87;
        AlarmAttributes.presentation.getter();
        v56 = v95;
        AlarmPresentation.countdown.getter();
        (*(v93 + 8))(v55, v94);
        v57 = type metadata accessor for AlarmPresentation.Countdown();
        LODWORD(v55) = (*(*(v57 - 8) + 48))(v56, 1, v57);
        sub_10002D02C(v56, &unk_100115DF0, &qword_1000D1260);
        if (v55 != 1)
        {
          v85 = 3;
          goto LABEL_30;
        }
      }
    }

LABEL_29:
    v85 = 0;
LABEL_30:
    v98 = v38;
    if (qword_100113630 != -1)
    {
      swift_once();
    }

    v58 = qword_10011F508;
    AlarmPresentationState.alarmID.getter();
    v94 = AlarmPresentationState.bundleID.getter();
    v95 = v17;
    v60 = v59;
    v61 = v91;
    AlarmAttributes.metadata.getter();
    v62 = v92(v61, 1, v35);
    if (v62 == 1)
    {
      sub_10002D02C(v61, &unk_100118100, &qword_1000D1250);
      v93 = 0;
    }

    else
    {
      v93 = MTAlarmCustomContent.type.getter();
      (*(v89 + 8))(v61, v35);
    }

    v63 = *(v103 + OBJC_IVAR____TtC10ClockAngel20SessionSceneDelegate_destination);
    v105 = 0;
    v106 = 0xE000000000000000;
    _StringGuts.grow(_:)(61);
    v103 = v58;
    v104 = v58;
    type metadata accessor for AlarmAndTimerCoordinator();
    _print_unlocked<A, B>(_:_:)();
    v64._object = 0x80000001000D7D50;
    v64._countAndFlagsBits = 0xD000000000000013;
    String.append(_:)(v64);
    LOBYTE(v104) = v85;
    _print_unlocked<A, B>(_:_:)();
    v65._countAndFlagsBits = 0x616C6120726F6620;
    v65._object = 0xEF203A6469206D72;
    String.append(_:)(v65);
    sub_10004CB7C(&qword_100118110, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v66._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v66);

    v67._object = 0x80000001000D7D70;
    v67._countAndFlagsBits = 0xD000000000000013;
    String.append(_:)(v67);
    if (v63 <= 2)
    {
      if (v63)
      {
        v68 = v99;
        if (v63 == 1)
        {
          v69 = 0xEB000000006C6C75;
          v70 = 0x46746E6569626D41;
        }

        else
        {
          v69 = 0xE800000000000000;
          v70 = 0x6572757472657041;
        }
      }

      else
      {
        v68 = v99;
        v69 = 0xEE00746361706D6FLL;
        v70 = 0x43746E6569626D41;
      }

      goto LABEL_49;
    }

    if (v63 > 4)
    {
      v68 = v99;
      if (v63 != 5)
      {
        v69 = 0xEB00000000646574;
        v70 = 0x726F707075736E55;
        goto LABEL_49;
      }

      v71 = 1801678668;
    }

    else
    {
      v68 = v99;
      if (v63 == 3)
      {
        v69 = 0xE600000000000000;
        v70 = 0x72656E6E6142;
LABEL_49:
        v72 = objc_opt_self();
        v73._countAndFlagsBits = v70;
        v73._object = v69;
        String.append(_:)(v73);

        v74 = String._bridgeToObjectiveC()();

        [v72 logInfo:v74];

        if (v60)
        {
          v75 = v62 == 1;
          v76 = v101;
          v77 = v97;
          v79 = v95;
          v78 = v96;
          if (v85 > 1)
          {
            sub_10007D1D0(v97, v94, v60, v93, v75);
          }

          else
          {
            sub_10007D8CC(v97, v94, v60, v93, v75);
          }
        }

        else
        {
          v105 = 0;
          v106 = 0xE000000000000000;
          _StringGuts.grow(_:)(73);
          v80._countAndFlagsBits = 0xD000000000000047;
          v80._object = 0x80000001000D7D90;
          String.append(_:)(v80);
          v77 = v97;
          v76 = v101;
          v81._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
          String.append(_:)(v81);

          v82 = String._bridgeToObjectiveC()();

          [v72 logError:v82];

          v79 = v95;
          v78 = v96;
        }

        v83 = v100;
        v84 = v90;
        (*(v78 + 8))(v77, v76);
        (*(v83 + 8))(v98, v79);
        (*(v68 + 8))(v102, v84);
        return;
      }

      v71 = 1819047238;
    }

    v70 = v71 | 0x6572635300000000;
    v69 = 0xEA00000000006E65;
    goto LABEL_49;
  }

  if (EnumCaseMultiPayload == 1)
  {
    v27 = *v25;
    if ([*v25 isSleepAlarm])
    {
      v28 = *(v103 + OBJC_IVAR____TtC10ClockAngel20SessionSceneDelegate_inUseAssertion);
      if (v28)
      {
        [v28 invalidate];
      }
    }

    if ((v98 & 1) != 0 && [v27 allowsSnooze])
    {

      v29 = [v27 alarmIDString];
      v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v32 = v31;

      sub_10007730C(v30, v32);
    }

    else
    {

      v44 = [v27 alarmIDString];
      v45 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v47 = v46;

      sub_100076AA0(v45, v47);
    }
  }

  else
  {
    v39 = *v25;

    v40 = [v39 timerIDString];
    v41 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v43 = v42;

    sub_100079E30(v41, v43);
  }
}

void sub_100049400(void *a1)
{
  v3 = objc_opt_self();
  _StringGuts.grow(_:)(24);
  v4 = [v1 description];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  v5._object = 0x80000001000D87D0;
  v5._countAndFlagsBits = 0xD000000000000016;
  String.append(_:)(v5);
  v6 = String._bridgeToObjectiveC()();

  [v3 logInfo:v6];

  type metadata accessor for ActivityScene();
  v7 = swift_dynamicCastClass();
  if (v7)
  {
    v8 = v7;
    v9 = a1;
    [objc_msgSend(v8 "systemApertureElementContext")];

    swift_unknownObjectRelease();
  }

  else
  {
    _StringGuts.grow(_:)(27);
    v10 = [v1 description];
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    v11._countAndFlagsBits = 0xD000000000000017;
    v11._object = 0x80000001000D87F0;
    String.append(_:)(v11);
    v12 = [a1 description];
    v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = v14;

    v16._countAndFlagsBits = v13;
    v16._object = v15;
    String.append(_:)(v16);

    v17 = String._bridgeToObjectiveC()();

    [v3 logError:v17];
  }
}

void sub_100049794(void *a1)
{
  v2 = v1;
  v4 = objc_opt_self();
  _StringGuts.grow(_:)(27);
  v5 = [v1 description];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  v6._object = 0x80000001000D8750;
  v6._countAndFlagsBits = 0xD000000000000019;
  String.append(_:)(v6);
  v7 = String._bridgeToObjectiveC()();

  [v4 logInfo:v7];

  v8 = [a1 session];
  v9 = [v8 role];

  v10 = static UISceneSessionRole.activityBanner.getter();
  v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;
  if (v11 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v13 == v14)
  {
  }

  else
  {
    v15 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v15 & 1) == 0)
    {
LABEL_8:
      _StringGuts.grow(_:)(83);
      v18 = [v2 description];
      v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v21 = v20;

      v22._countAndFlagsBits = v19;
      v22._object = v21;
      String.append(_:)(v22);

      v23._countAndFlagsBits = 0xD000000000000026;
      v23._object = 0x80000001000D8770;
      String.append(_:)(v23);
      v24 = [a1 session];
      v25 = [v24 role];

      type metadata accessor for Role(0);
      _print_unlocked<A, B>(_:_:)();

      v26._countAndFlagsBits = 0xD000000000000027;
      v26._object = 0x80000001000D87A0;
      String.append(_:)(v26);
      v27 = [a1 _FBSScene];
      v28 = [v27 settings];

      objc_opt_self();
      v29 = swift_dynamicCastObjCClass();
      if (v29)
      {
        [v29 deactivationReasons];
      }

      sub_1000032D4(&qword_100115DE8, &unk_1000D3240);
      v30._countAndFlagsBits = String.init<A>(describing:)();
      String.append(_:)(v30);

      v31 = String._bridgeToObjectiveC()();

      [v4 logInfo:v31];

      return;
    }
  }

  v16 = [a1 _FBSScene];
  v32 = [v16 settings];

  objc_opt_self();
  v17 = swift_dynamicCastObjCClass();
  if (!v17 || ([v17 deactivationReasons] & 0x40) == 0)
  {

    goto LABEL_8;
  }

  sub_100048160(1);
}

id sub_100049C58()
{
  v1 = v0;
  v2 = objc_opt_self();
  v3 = [v0 description];
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;

  v11 = v4;
  v12 = v6;
  v7._countAndFlagsBits = 0x74696E696564203ALL;
  v7._object = 0xE800000000000000;
  String.append(_:)(v7);
  v8 = String._bridgeToObjectiveC()();

  [v2 logInfo:v8];

  v10.receiver = v1;
  v10.super_class = type metadata accessor for SessionSceneDelegate(0);
  return objc_msgSendSuper2(&v10, "dealloc");
}

uint64_t type metadata accessor for SessionSceneDelegate(uint64_t a1)
{
  result = qword_100115C50;
  if (!qword_100115C50)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_100049FF4()
{
  v1 = v0;
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = &v1[OBJC_IVAR____TtC10ClockAngel20SessionSceneDelegate_observerId];
  UUID.init()();
  v7 = UUID.uuidString.getter();
  v9 = v8;
  (*(v3 + 8))(v5, v2);
  *v6 = v7;
  v6[1] = v9;
  v10 = OBJC_IVAR____TtC10ClockAngel20SessionSceneDelegate_timerAttributes;
  v11 = type metadata accessor for TimerActivityAttributes();
  (*(*(v11 - 8) + 56))(&v1[v10], 1, 1, v11);
  v12 = OBJC_IVAR____TtC10ClockAngel20SessionSceneDelegate_alarmAttributes;
  v13 = type metadata accessor for AlarmActivityAttributes();
  (*(*(v13 - 8) + 56))(&v1[v12], 1, 1, v13);
  *&v1[OBJC_IVAR____TtC10ClockAngel20SessionSceneDelegate_stopwatchAttributes] = 0;
  v1[OBJC_IVAR____TtC10ClockAngel20SessionSceneDelegate_destination] = 6;
  *&v1[OBJC_IVAR____TtC10ClockAngel20SessionSceneDelegate_currentSessionScene] = 0;
  v1[OBJC_IVAR____TtC10ClockAngel20SessionSceneDelegate_sessionType] = 7;
  v14 = OBJC_IVAR____TtC10ClockAngel20SessionSceneDelegate_alarmKitAttributes;
  v15 = sub_1000032D4(&qword_1001139D0, &unk_1000D08C0);
  (*(*(v15 - 8) + 56))(&v1[v14], 1, 1, v15);
  v16 = OBJC_IVAR____TtC10ClockAngel20SessionSceneDelegate_alarmPresentationState;
  v17 = type metadata accessor for AlarmPresentationState();
  (*(*(v17 - 8) + 56))(&v1[v16], 1, 1, v17);
  *&v1[OBJC_IVAR____TtC10ClockAngel20SessionSceneDelegate_alarmKitApertureElementProvider] = 0;
  if (&_swiftEmptyArrayStorage >> 62 && _CocoaArrayWrapper.endIndex.getter())
  {
    sub_10008C3BC(&_swiftEmptyArrayStorage);
  }

  else
  {
    v18 = &_swiftEmptySetSingleton;
  }

  *&v1[OBJC_IVAR____TtC10ClockAngel20SessionSceneDelegate_cancellableSet] = v18;
  *&v1[OBJC_IVAR____TtC10ClockAngel20SessionSceneDelegate_window] = 0;
  *&v1[OBJC_IVAR____TtC10ClockAngel20SessionSceneDelegate_timerApertureElementProvider] = 0;
  *&v1[OBJC_IVAR____TtC10ClockAngel20SessionSceneDelegate_alarmApertureElementProvider] = 0;
  *&v1[OBJC_IVAR____TtC10ClockAngel20SessionSceneDelegate_stopwatchApertureElementProvider] = 0;
  *&v1[OBJC_IVAR____TtC10ClockAngel20SessionSceneDelegate_inUseAssertion] = 0;
  v19 = OBJC_IVAR____TtC10ClockAngel20SessionSceneDelegate_alarmCoordinator;
  if (qword_100113620 != -1)
  {
    swift_once();
  }

  *&v1[v19] = qword_10011F4F8;
  v20 = OBJC_IVAR____TtC10ClockAngel20SessionSceneDelegate_timerCoordinator;
  v21 = qword_100113628;

  if (v21 != -1)
  {
    swift_once();
  }

  *&v1[v20] = qword_10011F500;
  v22 = &v1[OBJC_IVAR____TtC10ClockAngel20SessionSceneDelegate_dataStoerObserverId];
  *v22 = 0xD000000000000014;
  v22[1] = 0x80000001000D2FE0;
  v23 = type metadata accessor for SessionSceneDelegate(0);
  v25.receiver = v1;
  v25.super_class = v23;

  return objc_msgSendSuper2(&v25, "init");
}

void sub_10004A3D8(uint64_t a1)
{
  sub_10004A630(319, &qword_100115C60, &type metadata accessor for TimerActivityAttributes);
  if (v1 <= 0x3F)
  {
    sub_10004A630(319, &qword_100115C68, &type metadata accessor for AlarmActivityAttributes);
    if (v2 <= 0x3F)
    {
      sub_10004A5CC(319);
      if (v3 <= 0x3F)
      {
        sub_10004A630(319, &qword_100115C80, &type metadata accessor for AlarmPresentationState);
        if (v4 <= 0x3F)
        {
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

void sub_10004A5CC(uint64_t a1)
{
  if (!qword_100115C70)
  {
    sub_10001C820(&qword_1001139D0, &unk_1000D08C0);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_100115C70);
    }
  }
}

void sub_10004A630(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
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

uint64_t sub_10004A684(uint64_t a1)
{
  v2 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v3 = __CocoaSet.startIndex.getter();
    v5 = v4;
    v6 = __CocoaSet.endIndex.getter();
    v8 = v7;
    v9 = static __CocoaSet.Index.== infix(_:_:)();
    sub_10004DF20(v6, v8, 1);
    if (v9)
    {
LABEL_3:
      sub_10004DF20(v3, v5, v2 != 0);
      return 0;
    }
  }

  else
  {
    v3 = _HashTable.startBucket.getter();
    v5 = *(a1 + 36);
    if (v3 == 1 << *(a1 + 32))
    {
      goto LABEL_3;
    }
  }

  sub_10004D278(v3, v5, v2 != 0, a1);
  v12 = v11;
  sub_10004DF20(v3, v5, v2 != 0);
  return v12;
}

BOOL sub_10004A7A0(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  Hasher.init(_seed:)();
  v3 = ActivitySceneHardwareButtonPressType.rawValue.getter();
  Hasher._combine(_:)(v3);
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
    v8 = ActivitySceneHardwareButtonPressType.rawValue.getter();
    v9 = v8 == ActivitySceneHardwareButtonPressType.rawValue.getter();
    result = v9;
    if (v9)
    {
      break;
    }

    v6 = (v6 + 1) & v7;
  }

  while (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  return result;
}

uint64_t sub_10004A9E0(uint64_t a1)
{
  v2 = v1;
  v22 = a1;
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v24 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for DispatchQoS();
  v6 = *(v23 - 8);
  __chkstk_darwin(v23);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = objc_opt_self();
  aBlock = 0;
  v26 = 0xE000000000000000;
  _StringGuts.grow(_:)(42);
  v10 = [v1 description];
  v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;

  v14._countAndFlagsBits = v11;
  v14._object = v13;
  String.append(_:)(v14);

  v15._object = 0x80000001000D85B0;
  v15._countAndFlagsBits = 0xD000000000000026;
  String.append(_:)(v15);
  *&v31[0] = *&v2[OBJC_IVAR____TtC10ClockAngel20SessionSceneDelegate_window];
  sub_1000032D4(&qword_100115D78, &unk_1000D3210);
  _print_unlocked<A, B>(_:_:)();
  v16 = String._bridgeToObjectiveC()();

  [v9 logInfo:v16];

  sub_10002BB3C(0, &qword_100115D80, OS_dispatch_queue_ptr);
  v17 = static OS_dispatch_queue.main.getter();
  sub_10002B00C(v22, v31);
  v18 = swift_allocObject();
  *(v18 + 16) = v2;
  sub_10004E5BC(v31, v18 + 24);
  v29 = sub_10004CB58;
  v30 = v18;
  aBlock = _NSConcreteStackBlock;
  v26 = 1107296256;
  v27 = sub_10004B270;
  v28 = &unk_100101010;
  v19 = _Block_copy(&aBlock);
  v20 = v2;

  static DispatchQoS.unspecified.getter();
  aBlock = &_swiftEmptyArrayStorage;
  sub_10004CB7C(&qword_100116260, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1000032D4(&unk_100115D90, qword_1000D3C00);
  sub_10002DAD8(&qword_100116270, &unk_100115D90, qword_1000D3C00, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v19);

  (*(v24 + 8))(v5, v3);
  return (*(v6 + 8))(v8, v23);
}

void sub_10004ADF4(_BYTE *a1, uint64_t a2)
{
  v4 = type metadata accessor for AlarmPresentationState.Mode();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000032D4(&unk_100115DA0, &unk_1000D3220);
  __chkstk_darwin(v8 - 8);
  v10 = &v34 - v9;
  v11 = type metadata accessor for AlarmPresentationState();
  __chkstk_darwin(v11);
  v14 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*&a1[OBJC_IVAR____TtC10ClockAngel20SessionSceneDelegate_window])
  {
    v34 = v5;
    v35 = v12;
    v15 = OBJC_IVAR____TtC10ClockAngel20SessionSceneDelegate_sessionType;
    v16 = a1[OBJC_IVAR____TtC10ClockAngel20SessionSceneDelegate_sessionType];
    sub_10002B00C(a2, v37);
    sub_1000032D4(&unk_100119770, &unk_1000D3CE0);
    sub_10002BB3C(0, &qword_100115DB0, MTAlarm_ptr);
    if (swift_dynamicCast())
    {
      v17 = v36;
      v18 = [v36 isFiring];

      v19 = v18 == 0;
      v20 = 2;
      goto LABEL_4;
    }

    sub_10002B00C(a2, v37);
    sub_10002BB3C(0, &qword_100115DB8, MTTimer_ptr);
    if (swift_dynamicCast())
    {
      v21 = v36;
      v16 = [v36 isFiring];
    }

    else
    {
      sub_10002B00C(a2, v37);
      v22 = swift_dynamicCast();
      v23 = v35;
      v24 = *(v35 + 56);
      if (v22)
      {
        v24(v10, 0, 1, v11);
        (*(v23 + 32))(v14, v10, v11);
        AlarmPresentationState.mode.getter();
        v25 = AlarmPresentationState.Mode.isAlerting.getter();
        (*(v34 + 8))(v7, v4);
        (*(v23 + 8))(v14, v11);
        v19 = (v25 & 1) == 0;
        v20 = 5;
LABEL_4:
        if (v19)
        {
          v16 = v20 + 1;
        }

        else
        {
          v16 = v20;
        }

        goto LABEL_12;
      }

      v24(v10, 1, 1, v11);
      sub_10002D02C(v10, &unk_100115DA0, &unk_1000D3220);
    }

LABEL_12:
    a1[v15] = v16;
    v26 = objc_opt_self();
    v37[0] = 0;
    v37[1] = 0xE000000000000000;
    _StringGuts.grow(_:)(51);
    v27 = [a1 description];
    v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v30 = v29;

    v31._countAndFlagsBits = v28;
    v31._object = v30;
    String.append(_:)(v31);

    v32._object = 0x80000001000D85E0;
    v32._countAndFlagsBits = 0xD00000000000002FLL;
    String.append(_:)(v32);
    LOBYTE(v36) = v16;
    _print_unlocked<A, B>(_:_:)();
    v33 = String._bridgeToObjectiveC()();

    [v26 logInfo:v33];

    sub_100047388(v16);
  }
}

double sub_10004B270(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);

  return result;
}

uint64_t sub_10004B2B8()
{
  v1 = *(*v0 + OBJC_IVAR____TtC10ClockAngel20SessionSceneDelegate_observerId);

  return v1;
}

void sub_10004B370(void *a1)
{
  v2 = v1;
  v4 = swift_isaMask & *v2;
  v5 = [v2 traitCollection];
  v6 = [v5 _backlightLuminance];

  if (v6 == 1 && (!a1 || [a1 _backlightLuminance] != 1))
  {
    v15 = objc_opt_self();
    _StringGuts.grow(_:)(42);
    type metadata accessor for SecureHostingController(0, *(v4 + qword_10011F398), *(v4 + qword_10011F398 + 8), v16);
    swift_getWitnessTable();
    DefaultStringInterpolation.appendInterpolation<A>(_:)();
    v17._object = 0x80000001000D8640;
    v17._countAndFlagsBits = 0xD000000000000028;
    String.append(_:)(v17);
    v18 = String._bridgeToObjectiveC()();

    [v15 logInfo:v18];

    if (!swift_unknownObjectWeakLoadStrong())
    {
      return;
    }

    v14 = 1;
    goto LABEL_13;
  }

  v7 = [v2 traitCollection];
  v8 = [v7 _backlightLuminance];

  if (v8 != 1 && a1 != 0 && [a1 _backlightLuminance] == 1)
  {
    v10 = objc_opt_self();
    _StringGuts.grow(_:)(44);
    type metadata accessor for SecureHostingController(0, *(v4 + qword_10011F398), *(v4 + qword_10011F398 + 8), v11);
    swift_getWitnessTable();
    DefaultStringInterpolation.appendInterpolation<A>(_:)();
    v12._countAndFlagsBits = 0xD00000000000002ALL;
    v12._object = 0x80000001000D8610;
    String.append(_:)(v12);
    v13 = String._bridgeToObjectiveC()();

    [v10 logInfo:v13];

    if (swift_unknownObjectWeakLoadStrong())
    {
      v14 = 0;
LABEL_13:
      sub_10004BD70(v14);
      swift_unknownObjectRelease();
    }
  }
}

void sub_10004B6C8(void *a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = a1;
  sub_10004B370(a3);
}

void sub_10004B734(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for SecureHostingController(0, *((swift_isaMask & *v4) + qword_10011F398), *((swift_isaMask & *v4) + qword_10011F398 + 8), a4);
  v9.receiver = v4;
  v9.super_class = v5;
  objc_msgSendSuper2(&v9, "viewDidLoad");
  v6 = [v4 view];
  if (v6)
  {
    v7 = v6;
    v8 = [objc_opt_self() clearColor];
    [v7 setBackgroundColor:v8];
  }

  else
  {
    __break(1u);
  }
}

void sub_10004B81C(void *a1)
{
  v4 = a1;
  sub_10004B734(v4, v1, v2, v3);
}

void *sub_10004B8A8(uint64_t a1, uint64_t a2)
{
  v4 = *((swift_isaMask & *v2) + qword_10011F398);
  v5 = *(v4 - 8);
  __chkstk_darwin(a1);
  v7 = &v13 - v6;
  *(v2 + *(v8 + 16) + 8) = 0;
  swift_unknownObjectWeakInit();
  (*(v5 + 16))(v7, a2, v4);
  v9 = UIHostingController.init(coder:rootView:)();
  v10 = *(v5 + 8);
  v11 = v9;
  v10(a2, v4);
  if (v9)
  {
  }

  return v9;
}

id sub_10004B9FC(void *a1)
{
  v3 = swift_isaMask & *v1;
  *(v1 + *(v3 + qword_10011F398 + 16) + 8) = 0;
  swift_unknownObjectWeakInit();
  v5 = type metadata accessor for SecureHostingController(0, *(v3 + qword_10011F398), *(v3 + qword_10011F398 + 8), v4);
  v8.receiver = v1;
  v8.super_class = v5;
  v6 = objc_msgSendSuper2(&v8, "initWithCoder:", a1);

  if (v6)
  {
  }

  return v6;
}

id sub_10004BB40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for SecureHostingController(0, *((swift_isaMask & *v4) + qword_10011F398), *((swift_isaMask & *v4) + qword_10011F398 + 8), a4);
  v7.receiver = v4;
  v7.super_class = v5;
  return objc_msgSendSuper2(&v7, "dealloc");
}

uint64_t getEnumTagSinglePayload for SessionType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_17;
  }

  if (a2 + 7 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 7) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 7;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 7;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v8 = v6 - 8;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SessionType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF9)
  {
    v4 = 0;
  }

  if (a2 > 0xF8)
  {
    v5 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
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

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

void sub_10004BD70(char a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC10ClockAngel20SessionSceneDelegate_window;
  v5 = *&v2[OBJC_IVAR____TtC10ClockAngel20SessionSceneDelegate_window];
  if (!v5)
  {
    goto LABEL_29;
  }

  v6 = [v5 rootViewController];
  if (v6)
  {
    v66 = v6;
    sub_1000032D4(&qword_100115DC8, &qword_1000D3238);
    if (swift_dynamicCastClass())
    {
      _StringGuts.grow(_:)(51);
      v7 = [v2 description];
      v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v10 = v9;

      v11._countAndFlagsBits = v8;
      v11._object = v10;
      String.append(_:)(v11);

      v12._object = 0x80000001000D86D0;
      v12._countAndFlagsBits = 0xD00000000000002FLL;
      String.append(_:)(v12);
      if (a1)
      {
        v13 = 1702195828;
      }

      else
      {
        v13 = 0x65736C6166;
      }

      if (a1)
      {
        v14 = 0xE400000000000000;
      }

      else
      {
        v14 = 0xE500000000000000;
      }

      v15 = objc_opt_self();
      v16._countAndFlagsBits = v13;
      v16._object = v14;
      String.append(_:)(v16);

      v17 = String._bridgeToObjectiveC()();

      [v15 logInfo:v17];

      v18 = sub_10004573C();
      if (v18)
      {
        v19 = v18;
        v20 = objc_opt_self();
        v21 = [v20 mtOrange];
        v22 = Color.init(uiColor:)();
        if (a1)
        {
          v23 = Color.opacity(_:)();

          v24 = [v20 mtOrange];
          Color.init(uiColor:)();
          v25 = Color.opacity(_:)();

          static Color.white.getter();
          v26 = Color.opacity(_:)();

          v27 = &off_100103578;
          v28 = &type metadata for LowLuminanceSessionUiConfig;
          v22 = v23;
        }

        else
        {
          v52 = [v20 mtOrange];
          Color.init(uiColor:)();
          v25 = Color.opacity(_:)();

          v27 = &off_1001035E8;
          v28 = &type metadata for StandardSessionUiConfig;
          v26 = static Color.white.getter();
        }

        static Color.white.getter();
        v53 = Color.opacity(_:)();

        v69 = v28;
        v70 = v27;
        v54 = swift_allocObject();
        v54[2] = v22;
        v54[3] = v25;
        v54[4] = v26;
        v54[5] = v53;
        v68[0] = v54;
        type metadata accessor for TimerCoordinator();
        sub_10002B00C(v68, v67);
        v67[5] = 0x4028000000000000;
LABEL_41:
        v64 = v66;
        v65 = v19;

        dispatch thunk of UIHostingController.rootView.setter();

        sub_100017D28(v68);
        return;
      }

      goto LABEL_36;
    }
  }

  v29 = *&v2[v4];
  if (!v29 || (v30 = [v29 rootViewController]) == 0)
  {
LABEL_29:
    _StringGuts.grow(_:)(49);
    v55 = [v2 description];
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    v56._countAndFlagsBits = 0xD00000000000002DLL;
    v56._object = 0x80000001000D8670;
    String.append(_:)(v56);
    if (a1)
    {
      v57 = 1702195828;
    }

    else
    {
      v57 = 0x65736C6166;
    }

    if (a1)
    {
      v58 = 0xE400000000000000;
    }

    else
    {
      v58 = 0xE500000000000000;
    }

    v59 = objc_opt_self();
    v60._countAndFlagsBits = v57;
    v60._object = v58;
    String.append(_:)(v60);

    v66 = String._bridgeToObjectiveC()();

    [v59 logInfo:v66];
    goto LABEL_36;
  }

  v66 = v30;
  sub_1000032D4(&qword_100115DC0, &qword_1000D3230);
  if (!swift_dynamicCastClass())
  {

    goto LABEL_29;
  }

  _StringGuts.grow(_:)(51);
  v31 = [v2 description];
  v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v34 = v33;

  v35._countAndFlagsBits = v32;
  v35._object = v34;
  String.append(_:)(v35);

  v36._object = 0x80000001000D86A0;
  v36._countAndFlagsBits = 0xD00000000000002FLL;
  String.append(_:)(v36);
  if (a1)
  {
    v37 = 1702195828;
  }

  else
  {
    v37 = 0x65736C6166;
  }

  if (a1)
  {
    v38 = 0xE400000000000000;
  }

  else
  {
    v38 = 0xE500000000000000;
  }

  v39 = objc_opt_self();
  v40._countAndFlagsBits = v37;
  v40._object = v38;
  String.append(_:)(v40);

  v41 = String._bridgeToObjectiveC()();

  [v39 logInfo:v41];

  v42 = sub_10004539C();
  if (v42)
  {
    v19 = v42;
    v43 = objc_opt_self();
    v44 = [v43 mtOrange];
    v45 = Color.init(uiColor:)();
    if (a1)
    {
      v46 = Color.opacity(_:)();

      v47 = [v43 mtOrange];
      Color.init(uiColor:)();
      v48 = Color.opacity(_:)();

      static Color.white.getter();
      v49 = Color.opacity(_:)();

      v50 = &off_100103578;
      v51 = &type metadata for LowLuminanceSessionUiConfig;
      v45 = v46;
    }

    else
    {
      v61 = [v43 mtOrange];
      Color.init(uiColor:)();
      v48 = Color.opacity(_:)();

      v50 = &off_1001035E8;
      v51 = &type metadata for StandardSessionUiConfig;
      v49 = static Color.white.getter();
    }

    static Color.white.getter();
    v62 = Color.opacity(_:)();

    v69 = v51;
    v70 = v50;
    v63 = swift_allocObject();
    v63[2] = v45;
    v63[3] = v48;
    v63[4] = v49;
    v63[5] = v62;
    v68[0] = v63;
    type metadata accessor for AlarmCoordinator();
    sub_10002B00C(v68, v67);
    goto LABEL_41;
  }

LABEL_36:
}

uint64_t sub_10004C51C(uint64_t a1, unsigned __int8 a2)
{
  String.hash(into:)();
}

Swift::Int sub_10004C678(uint64_t a1, unsigned __int8 a2)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

Swift::Int sub_10004C7BC(uint64_t a1, unsigned __int8 a2)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_10004C924@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10004DE14(*a1);
  *a2 = result;
  return result;
}

void sub_10004C954(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEE006E776F64746ELL;
  v4 = 0x756F4372656D6954;
  v5 = 0xE90000000000006ELL;
  v6 = 0x776F64746E756F43;
  if (v2 != 6)
  {
    v6 = 0x6E776F6E6B6E55;
    v5 = 0xE700000000000000;
  }

  v7 = 0x63746177706F7453;
  v8 = 0xE900000000000068;
  if (v2 != 4)
  {
    v7 = 0x7472656C41;
    v8 = 0xE500000000000000;
  }

  if (*v1 <= 5u)
  {
    v6 = v7;
    v5 = v8;
  }

  v9 = 0x656C416D72616C41;
  v10 = 0xEA00000000007472;
  if (v2 != 2)
  {
    v9 = 0x6F6E536D72616C41;
    v10 = 0xEB00000000657A6FLL;
  }

  if (*v1)
  {
    v4 = 0x656C4172656D6954;
    v3 = 0xEA00000000007472;
  }

  if (*v1 > 1u)
  {
    v4 = v9;
    v3 = v10;
  }

  v13 = __OFSUB__(v2, 3);
  v11 = v2 == 3;
  v12 = v2 - 3 < 0;
  if (*v1 <= 3u)
  {
    v14 = v4;
  }

  else
  {
    v14 = v6;
  }

  if (!(v12 ^ v13 | v11))
  {
    v3 = v5;
  }

  *a1 = v14;
  a1[1] = v3;
}

unint64_t sub_10004CA7C()
{
  result = qword_100115D68;
  if (!qword_100115D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100115D68);
  }

  return result;
}

uint64_t sub_10004CB18()
{
  sub_100017D28((v0 + 24));

  return _swift_deallocObject(v0, 64, 7);
}

double sub_10004CB64(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_10004CB7C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

const char *sub_10004CBC4()
{
  if (*v0)
  {
    return "Clock";
  }

  else
  {
    return "MobileTimerFlags";
  }
}

const char *sub_10004CBF4()
{
  if (*v0)
  {
    return "live_activity_banners";
  }

  else
  {
    return "LiveActivityAlerting";
  }
}

uint64_t sub_10004CC20@<X0>(uint64_t a1@<X8>)
{
  v26 = a1;
  v1 = sub_1000032D4(&unk_100118100, &qword_1000D1250);
  __chkstk_darwin(v1 - 8);
  v25 = v24 - v2;
  v3 = sub_1000032D4(&qword_100113FB8, &qword_1000D1258);
  __chkstk_darwin(v3 - 8);
  v24[3] = v24 - v4;
  v5 = sub_1000032D4(&unk_100115DF0, &qword_1000D1260);
  __chkstk_darwin(v5 - 8);
  v24[2] = v24 - v6;
  v7 = type metadata accessor for AlarmPresentation.Alert();
  __chkstk_darwin(v7 - 8);
  v8 = type metadata accessor for AlarmPresentation();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v10);
  v15 = v24 - v14;
  v16 = __chkstk_darwin(v13);
  v18 = v24 - v17;
  __chkstk_darwin(v16);
  v24[1] = v24 - v19;
  sub_1000032D4(&qword_100115E88, &unk_1000D3380);
  AlarmAttributes.presentation.getter();
  AlarmPresentation.alert.getter();
  v20 = *(v9 + 8);
  v20(v18, v8);
  AlarmAttributes.presentation.getter();
  AlarmPresentation.countdown.getter();
  v20(v15, v8);
  AlarmAttributes.presentation.getter();
  AlarmPresentation.paused.getter();
  v20(v12, v8);
  AlarmPresentation.init(alert:countdown:paused:)();
  v21 = v25;
  MTAlarmCustomContent.init(type:isSleepAlarm:)();
  v22 = type metadata accessor for MTAlarmCustomContent();
  (*(*(v22 - 8) + 56))(v21, 0, 1, v22);
  AlarmAttributes.tintColor.getter();
  sub_10004CB7C(&qword_100115F10, &type metadata accessor for MTAlarmCustomContent, &protocol conformance descriptor for MTAlarmCustomContent);
  return AlarmAttributes.init(presentation:metadata:tintColor:)();
}

uint64_t sub_10004D008@<X0>(_BYTE *a2@<X8>)
{

  *a2 = 1;
  return result;
}

uint64_t sub_10004D050(uint64_t a1)
{
  v2 = sub_10004EEE8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10004D08C(uint64_t a1)
{
  v2 = sub_10004EEE8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10004D0F0(void *a1)
{
  v2 = sub_1000032D4(&qword_100115FA0, &qword_1000D35D0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v7 - v4;
  sub_100025B1C(a1, a1[3]);
  sub_10004EEE8();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  return (*(v3 + 8))(v5, v2);
}

void sub_10004D278(unint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      __CocoaSet.element(at:)();
      sub_10002BB3C(0, &qword_100115DD0, BSAction_ptr);
      swift_dynamicCast();
      return;
    }

    goto LABEL_23;
  }

  if (a3)
  {
    sub_10002BB3C(0, &qword_100115DD0, BSAction_ptr);
    if (__CocoaSet.Index.age.getter() != *(a4 + 36))
    {
      __break(1u);
LABEL_21:
      __break(1u);
      goto LABEL_22;
    }

    __CocoaSet.Index.element.getter();
    swift_dynamicCast();
    v4 = v14;
    v7 = NSObject._rawHashValue(seed:)(*(a4 + 40));
    v8 = -1 << *(a4 + 32);
    a1 = v7 & ~v8;
    if ((*(a4 + 56 + ((a1 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a1))
    {
      v9 = ~v8;
      do
      {
        v10 = *(*(a4 + 48) + 8 * a1);
        v11 = static NSObject.== infix(_:_:)();

        if (v11)
        {
          goto LABEL_16;
        }

        a1 = (a1 + 1) & v9;
      }

      while (((*(a4 + 56 + ((a1 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a1) & 1) != 0);
    }

    __break(1u);
  }

  if ((a1 & 0x8000000000000000) != 0 || 1 << *(a4 + 32) <= a1)
  {
    goto LABEL_21;
  }

  if (((*(a4 + 8 * (a1 >> 6) + 56) >> a1) & 1) == 0)
  {
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    return;
  }

  if (*(a4 + 36) != a2)
  {
    __break(1u);
LABEL_16:
  }

  v12 = *(*(a4 + 48) + 8 * a1);

  v13 = v12;
}

void sub_10004D49C(void *a1, void *a2)
{
  v5 = objc_opt_self();
  _StringGuts.grow(_:)(43);
  v6 = [v2 description];
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;

  v10._object = 0x80000001000D9200;
  v10._countAndFlagsBits = 0xD000000000000027;
  String.append(_:)(v10);
  v11 = [a2 role];
  v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = v13;

  v15._countAndFlagsBits = v12;
  v15._object = v14;
  String.append(_:)(v15);

  v16 = String._bridgeToObjectiveC()();

  [v5 logInfo:v16];

  sub_100039DE8(a1, a2);
}

uint64_t sub_10004D5F0(uint64_t a1)
{
  v3 = *((swift_isaMask & *v1) + qword_10011F398);
  v4 = *(v3 - 8);
  __chkstk_darwin(a1);
  v6 = &v9 - v5;
  *(v1 + *(v7 + 16) + 8) = 0;
  swift_unknownObjectWeakInit();
  (*(v4 + 16))(v6, a1, v3);
  return UIHostingController.init(rootView:)();
}

id sub_10004D708()
{
  v1 = v0;
  v2 = objc_opt_self();
  _StringGuts.grow(_:)(39);
  v3 = [v0 description];
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;

  v7._countAndFlagsBits = v4;
  v7._object = v6;
  String.append(_:)(v7);

  v8._object = 0x80000001000D91D0;
  v8._countAndFlagsBits = 0xD000000000000023;
  String.append(_:)(v8);
  v9 = OBJC_IVAR____TtC10ClockAngel20SessionSceneDelegate_destination;
  _print_unlocked<A, B>(_:_:)();
  v10 = String._bridgeToObjectiveC()();

  [v2 logInfo:v10];

  if (sub_100089E54(v1[v9]))
  {
    sub_100048160(0);
  }

  return sub_100047764();
}

void sub_10004D854()
{
  v1 = objc_opt_self();
  _StringGuts.grow(_:)(25);
  v2 = [v0 description];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  v3._object = 0x80000001000D91B0;
  v3._countAndFlagsBits = 0xD000000000000017;
  String.append(_:)(v3);
  v4 = String._bridgeToObjectiveC()();

  [v1 logInfo:v4];
}

void sub_10004D94C()
{
  v1 = objc_opt_self();
  _StringGuts.grow(_:)(28);
  v2 = [v0 description];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  v3._object = 0x80000001000D9190;
  v3._countAndFlagsBits = 0xD00000000000001ALL;
  String.append(_:)(v3);
  v4 = String._bridgeToObjectiveC()();

  [v1 logInfo:v4];
}

uint64_t sub_10004DA44(uint64_t a1)
{
  v2 = v1;
  v4 = objc_opt_self();
  _StringGuts.grow(_:)(65);
  v5 = [v1 description];
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;

  v9._countAndFlagsBits = v6;
  v9._object = v8;
  String.append(_:)(v9);

  v10._countAndFlagsBits = 0xD00000000000002ALL;
  v10._object = 0x80000001000D8700;
  String.append(_:)(v10);
  sub_10002BB3C(0, &qword_100115DD0, BSAction_ptr);
  sub_10004DE88(&qword_100115DD8, &qword_100115DD0, BSAction_ptr, &protocol conformance descriptor for NSObject);
  v11._countAndFlagsBits = Set.description.getter();
  String.append(_:)(v11);

  v12._object = 0x80000001000D8730;
  v12._countAndFlagsBits = 0xD000000000000011;
  String.append(_:)(v12);
  v13 = OBJC_IVAR____TtC10ClockAngel20SessionSceneDelegate_destination;
  v23 = v2[OBJC_IVAR____TtC10ClockAngel20SessionSceneDelegate_destination];
  _print_unlocked<A, B>(_:_:)();
  v14 = String._bridgeToObjectiveC()();

  [v4 logInfo:v14];

  v22[3] = &type metadata for ClockFeatureFlags;
  v22[4] = sub_10004DECC();
  LOBYTE(v22[0]) = 0;
  LOBYTE(v5) = isFeatureEnabled(_:)();
  sub_100017D28(v22);
  if ((v5 & 1) == 0)
  {
    goto LABEL_21;
  }

  if (v2[v13] <= 2u || v2[v13] > 4u || v2[v13] == 3)
  {
    v15 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v15 & 1) == 0)
    {
      goto LABEL_21;
    }
  }

  else
  {
  }

  if ((a1 & 0xC000000000000001) == 0)
  {
    if (*(a1 + 16) == 1)
    {
      goto LABEL_14;
    }

LABEL_21:

    return a1;
  }

  if (__CocoaSet.count.getter() != 1)
  {
    goto LABEL_21;
  }

LABEL_14:
  v16 = sub_10008C650(&off_1000FF6D0);
  v17 = sub_10004A684(a1);
  if (!v17)
  {

    goto LABEL_21;
  }

  v18 = v17;
  type metadata accessor for ActivityHardwareButtonPressAction();
  if (!swift_dynamicCastClass())
  {

    goto LABEL_20;
  }

  v19 = dispatch thunk of ActivityHardwareButtonPressAction.type.getter();
  v20 = sub_10004A7A0(v19, v16);

  if (!v20)
  {
LABEL_20:

    goto LABEL_21;
  }

  sub_100048160(1);

  return 0;
}

unint64_t sub_10004DE14(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1000FF710, v2);

  if (v3 >= 8)
  {
    return 8;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_10004DE88(unint64_t *a1, unint64_t *a2, void *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_10002BB3C(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10004DECC()
{
  result = qword_100115DE0;
  if (!qword_100115DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100115DE0);
  }

  return result;
}

uint64_t sub_10004DF20(uint64_t result, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return v3;
}

uint64_t sub_10004DF2C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OpaqueAlarm(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10004DF90()
{
  v1 = *(type metadata accessor for OpaqueAlarm(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = *(v1 + 64);
  swift_unknownObjectRelease();

  v5 = (v0 + v3);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 2 || EnumCaseMultiPayload == 1)
  {
  }

  else if (!EnumCaseMultiPayload)
  {
    v7 = type metadata accessor for AlarmPresentationState();
    (*(*(v7 - 8) + 8))(v0 + v3, v7);
    v8 = *(sub_1000032D4(&unk_100115E00, &qword_1000D1D10) + 48);
    v9 = sub_1000032D4(&qword_1001139D0, &unk_1000D08C0);
    (*(*(v9 - 8) + 8))(v5 + v8, v9);
  }

  return _swift_deallocObject(v0, v4 + v3 + 1, v2 | 7);
}

uint64_t sub_10004E10C(uint64_t a1)
{
  v4 = *(type metadata accessor for OpaqueAlarm(0) - 8);
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  v8 = v1 + ((*(v4 + 80) + 40) & ~*(v4 + 80));
  v9 = *(v8 + *(v4 + 64));
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_10004F014;

  return sub_100048430(a1, v5, v6, v7, v8, v9);
}

uint64_t sub_10004E22C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10004E264(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10004F014;

  return sub_10007DBAC(a1, v4);
}

uint64_t sub_10004E31C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100031D4C;

  return sub_10007DBAC(a1, v4);
}

uint64_t sub_10004E428(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10004F014;

  return sub_100078384(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_10004E4F4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10004F014;

  return sub_1000762C8(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_10004E5BC(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_10004E69C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10004E704(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10004E814()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10004E854()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10004E88C()
{
  v1 = type metadata accessor for ActivityDescriptor();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = v4 + *(v2 + 64);
  v6 = sub_1000032D4(&qword_100115E88, &unk_1000D3380);
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v5 + v8) & ~v8;
  v10 = *(v7 + 64);
  v11 = v3 | v8;

  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  return _swift_deallocObject(v0, v9 + v10, v11 | 7);
}

void sub_10004E9E8(void *a1)
{
  v3 = *(type metadata accessor for ActivityDescriptor() - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = v4 + *(v3 + 64);
  v6 = *(sub_1000032D4(&qword_100115E88, &unk_1000D3380) - 8);
  v7 = *(v1 + 16);
  v8 = v1 + ((v5 + *(v6 + 80)) & ~*(v6 + 80));

  sub_10003EAF0(a1, v7, (v1 + v4), v8);
}

double sub_10004EACC(uint64_t a1, unint64_t a2)
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

uint64_t sub_10004EB44()
{

  return _swift_deallocObject(v0, 25, 7);
}

double sub_10004EB88(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
  }

  return result;
}

uint64_t sub_10004EB98(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100031D4C;

  return sub_1000762C8(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_10004EC60(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_1000032D4(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t sub_10004ECC8()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 56, 7);
}

unint64_t sub_10004ED34()
{
  result = qword_100115F78;
  if (!qword_100115F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100115F78);
  }

  return result;
}

unint64_t sub_10004ED8C()
{
  result = qword_100115F80;
  if (!qword_100115F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100115F80);
  }

  return result;
}

unint64_t sub_10004EDE4()
{
  result = qword_100115F88;
  if (!qword_100115F88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100115F88);
  }

  return result;
}

unint64_t sub_10004EE3C()
{
  result = qword_100115F90;
  if (!qword_100115F90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100115F90);
  }

  return result;
}

unint64_t sub_10004EE94()
{
  result = qword_100115F98;
  if (!qword_100115F98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100115F98);
  }

  return result;
}

unint64_t sub_10004EEE8()
{
  result = qword_100115FA8;
  if (!qword_100115FA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100115FA8);
  }

  return result;
}

unint64_t sub_10004EF50()
{
  result = qword_100115FB0;
  if (!qword_100115FB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100115FB0);
  }

  return result;
}

unint64_t sub_10004EFA8()
{
  result = qword_100115FB8;
  if (!qword_100115FB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100115FB8);
  }

  return result;
}

uint64_t sub_10004F058@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000032D4(&qword_100115E40, &unk_1000D1280);
  __chkstk_darwin(v8 - 8);
  v10 = &v15 - v9;
  v11 = [v2 fireDate];
  if (v11)
  {
    v12 = v11;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v13 = *(v5 + 32);
    v13(v10, v7, v4);
    (*(v5 + 56))(v10, 0, 1, v4);
    return (v13)(a1, v10, v4);
  }

  else
  {
    (*(v5 + 56))(v10, 1, 1, v4);
    [v2 remainingTime];
    Date.init()();
    Date.init(timeInterval:since:)();
    result = (*(v5 + 48))(v10, 1, v4);
    if (result != 1)
    {
      return sub_10004F91C(v10);
    }
  }

  return result;
}

double sub_10004F268()
{
  v1 = type metadata accessor for Date();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  [v0 duration];
  v5 = 0.0;
  if (v6 > 0.0)
  {
    if ([v0 state] == 2)
    {
      [v0 remainingTime];
      v8 = v7;
    }

    else
    {
      sub_10004F058(v4);
      Date.timeIntervalSinceNow.getter();
      v8 = v9;
      (*(v2 + 8))(v4, v1);
    }

    [v0 duration];
    v5 = v8 / v10;
  }

  return 1.0 - v5;
}

void sub_10004F3B0()
{
  v1 = type metadata accessor for Locale();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  [v0 remainingTime];
  v6 = sub_10002551C(v5);
  v7 = [v0 state];
  v8 = 0.0;
  if (v7 == 2)
  {
    v8 = 1.0;
  }

  if (v6 <= v8)
  {
    v6 = v8;
  }

  static Locale.autoupdatingCurrent.getter();
  isa = Locale._bridgeToObjectiveC()().super.isa;
  v10 = (*(v2 + 8))(v4, v1);
  *v10.i64 = v6;
  v11 = sub_1000022A8(0, 0, 1, 1, 0, 0, 0, isa, v10);

  if (v11)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_10004F55C(uint64_t a1, uint64_t (*a2)(void), uint64_t a3, uint64_t *a4)
{
  a2(0);
  swift_allocObject();
  result = DataStore.init(identifier:)();
  *a4 = result;
  return result;
}

uint64_t sub_10004F5C0()
{
  DataStore.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_10004F5FC(SEL *a1)
{
  v2 = [v1 *a1];
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

void sub_10004F6F0(SEL *a1@<X2>, uint64_t *a2@<X8>)
{
  v4 = [*v2 *a1];
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  *a2 = v5;
  a2[1] = v7;
}

unint64_t sub_10004F748()
{
  result = qword_100116030;
  if (!qword_100116030)
  {
    type metadata accessor for AlarmPresentationState();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100116030);
  }

  return result;
}

uint64_t sub_10004F870()
{
  type metadata accessor for AlarmPresentationStateDataStore(0);
  swift_allocObject();
  result = DataStore.init(identifier:)();
  qword_10011F3B8 = result;
  return result;
}

uint64_t sub_10004F91C(uint64_t a1)
{
  v2 = sub_1000032D4(&qword_100115E40, &unk_1000D1280);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_10004FF70()
{
  v1 = v0;
  v11.receiver = v0;
  v11.super_class = type metadata accessor for AlarmApertureElementController(0);
  objc_msgSendSuper2(&v11, "viewDidLoad");
  if (*&v0[OBJC_IVAR____TtC10ClockAngel30AlarmApertureElementController_sessionId + 8])
  {
    v2 = qword_100113600;

    if (v2 != -1)
    {
      swift_once();
    }

    sub_1000571F8(&unk_100116250, type metadata accessor for AlarmApertureElementController, &unk_1000D3930);
    AnyHashable.init<A>(_:)();
    dispatch thunk of DataStore.registerObserver(_:for:)();
    sub_10004E3D4(v10);
  }

  v3 = objc_opt_self();
  v4 = [v1 description];
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  v10[0] = v5;
  v10[1] = v7;
  v8._countAndFlagsBits = 0x6469447765697620;
  v8._object = 0xEC00000064616F4CLL;
  String.append(_:)(v8);
  v9 = String._bridgeToObjectiveC()();

  [v3 logInfo:v9];

  sub_100051880();
}

char *sub_100050170(uint64_t a1, uint64_t a2, int a3)
{
  v4 = v3;
  v39 = a3;
  v7 = sub_1000032D4(&unk_100119A20, &qword_1000D1DC0);
  __chkstk_darwin(v7 - 8);
  v9 = &v38[-v8];
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v38[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = &v4[OBJC_IVAR____TtC10ClockAngel30AlarmApertureElementController_observerId];
  UUID.init()();
  v15 = UUID.uuidString.getter();
  v17 = v16;
  (*(v11 + 8))(v13, v10);
  *v14 = v15;
  v14[1] = v17;
  v18 = &v4[OBJC_IVAR____TtC10ClockAngel30AlarmApertureElementController_sessionId];
  *v18 = 0;
  v18[1] = 0;
  *&v4[OBJC_IVAR____TtC10ClockAngel30AlarmApertureElementController_presentationBehaviors] = 9;
  *&v4[OBJC_IVAR____TtC10ClockAngel30AlarmApertureElementController_activeConstraints] = &_swiftEmptyArrayStorage;
  *&v4[OBJC_IVAR____TtC10ClockAngel30AlarmApertureElementController_compressedSnoozeTrailingHost] = 0;
  *&v4[OBJC_IVAR____TtC10ClockAngel30AlarmApertureElementController_compressedSnoozeLeadingHost] = 0;
  *&v4[OBJC_IVAR____TtC10ClockAngel30AlarmApertureElementController_activeLayoutMode] = 0;
  *&v4[OBJC_IVAR____TtC10ClockAngel30AlarmApertureElementController_contentRole] = 2;
  *&v4[OBJC_IVAR____TtC10ClockAngel30AlarmApertureElementController_preferredLayoutMode] = 3;
  *&v4[OBJC_IVAR____TtC10ClockAngel30AlarmApertureElementController_maximumLayoutMode] = 4;
  v19 = 1;
  v20 = [objc_opt_self() mtURLForSection:1];
  if (v20)
  {
    v21 = v20;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v19 = 0;
  }

  v22 = type metadata accessor for URL();
  (*(*(v22 - 8) + 56))(v9, v19, 1, v22);
  sub_1000573D0(v9, &v4[OBJC_IVAR____TtC10ClockAngel30AlarmApertureElementController_launchURL]);
  v23 = &v4[OBJC_IVAR____TtC10ClockAngel30AlarmApertureElementController_associatedAppBundleIdentifier];
  *v23 = 0xD000000000000015;
  v23[1] = 0x80000001000D7F20;
  v24 = &v4[OBJC_IVAR____TtC10ClockAngel30AlarmApertureElementController_timerObserverIdentifier];
  *v24 = 0xD00000000000001ELL;
  v24[1] = 0x80000001000D3860;
  v25 = SBUISystemApertureElementIdentifierTimer;
  *&v4[OBJC_IVAR____TtC10ClockAngel30AlarmApertureElementController_elementIdentifier] = SBUISystemApertureElementIdentifierTimer;
  v4[OBJC_IVAR____TtC10ClockAngel30AlarmApertureElementController_preventsInteractiveDismissal] = 0;
  v26 = OBJC_IVAR____TtC10ClockAngel30AlarmApertureElementController_leadingView;
  type metadata accessor for TimerApertureAccessoryView();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v28 = objc_allocWithZone(ObjCClassFromMetadata);
  v29 = v25;
  *&v4[v26] = [v28 init];
  v30 = OBJC_IVAR____TtC10ClockAngel30AlarmApertureElementController_trailingView;
  *&v4[v30] = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v31 = OBJC_IVAR____TtC10ClockAngel30AlarmApertureElementController_minimalView;
  *&v4[v31] = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v32 = OBJC_IVAR____TtC10ClockAngel30AlarmApertureElementController_keyColor;
  *&v4[v32] = [objc_allocWithZone(UIColor) initWithRed:1.0 green:0.622 blue:0.044 alpha:1.0];
  *&v4[OBJC_IVAR____TtC10ClockAngel30AlarmApertureElementController_alarmAlertLeadingHost] = 0;
  *&v4[OBJC_IVAR____TtC10ClockAngel30AlarmApertureElementController_alarmAlertTrailingHost] = 0;
  *&v4[OBJC_IVAR____TtC10ClockAngel30AlarmApertureElementController_alarmSnoozeExpandedHostLeading] = 0;
  *&v4[OBJC_IVAR____TtC10ClockAngel30AlarmApertureElementController_alarmSnoozeExpandedHostTrailing] = 0;
  *&v4[OBJC_IVAR____TtC10ClockAngel30AlarmApertureElementController_horizontalPadding] = 0x4030000000000000;
  *&v4[OBJC_IVAR____TtC10ClockAngel30AlarmApertureElementController_alarmLabelLeadingPadding] = 0x3FF8000000000000;
  *&v4[OBJC_IVAR____TtC10ClockAngel30AlarmApertureElementController_verticalPadding] = 0x4031000000000000;
  *&v4[OBJC_IVAR____TtC10ClockAngel30AlarmApertureElementController_buttonSize] = 0x4049000000000000;
  *&v4[OBJC_IVAR____TtC10ClockAngel30AlarmApertureElementController_labelBottomPadding] = 0x402A000000000000;
  *&v4[OBJC_IVAR____TtC10ClockAngel30AlarmApertureElementController_expandedControlsHeight] = 0x4048000000000000;
  *&v4[OBJC_IVAR____TtC10ClockAngel30AlarmApertureElementController_expectedApertureHeight] = 0x4055000000000000;
  *&v4[OBJC_IVAR____TtC10ClockAngel30AlarmApertureElementController_animatingAlarmSize] = 0x4047800000000000;
  *&v4[OBJC_IVAR____TtC10ClockAngel30AlarmApertureElementController_animatingAlarmLeadingPadding] = 0x4031800000000000;
  *&v4[OBJC_IVAR____TtC10ClockAngel30AlarmApertureElementController_animatingAlarmBottomPadding] = 0x4033800000000000;
  *&v4[OBJC_IVAR____TtC10ClockAngel30AlarmApertureElementController_alarmLabelBottomPadding] = 0x4033000000000000;
  *&v4[OBJC_IVAR____TtC10ClockAngel30AlarmApertureElementController_voiceOverTimer] = 0;
  *&v4[OBJC_IVAR____TtC10ClockAngel30AlarmApertureElementController_alarmAnimationView] = 0;
  v33 = type metadata accessor for AlarmApertureElementController(0);
  v40.receiver = v4;
  v40.super_class = v33;
  v34 = objc_msgSendSuper2(&v40, "init");
  v35 = &v34[OBJC_IVAR____TtC10ClockAngel30AlarmApertureElementController_sessionId];
  *v35 = a1;
  *(v35 + 1) = a2;
  v36 = v34;

  if (v39)
  {
    *&v36[OBJC_IVAR____TtC10ClockAngel30AlarmApertureElementController_presentationBehaviors] = 2;
  }

  return v36;
}

id sub_100050654(void *a1)
{
  v2 = v1;
  v4 = sub_1000032D4(&unk_100119A20, &qword_1000D1DC0);
  __chkstk_darwin(v4 - 8);
  v6 = &v33 - v5;
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = &v2[OBJC_IVAR____TtC10ClockAngel30AlarmApertureElementController_observerId];
  UUID.init()();
  v12 = UUID.uuidString.getter();
  v14 = v13;
  (*(v8 + 8))(v10, v7);
  *v11 = v12;
  v11[1] = v14;
  v15 = &v2[OBJC_IVAR____TtC10ClockAngel30AlarmApertureElementController_sessionId];
  *v15 = 0;
  v15[1] = 0;
  *&v2[OBJC_IVAR____TtC10ClockAngel30AlarmApertureElementController_presentationBehaviors] = 9;
  *&v2[OBJC_IVAR____TtC10ClockAngel30AlarmApertureElementController_activeConstraints] = &_swiftEmptyArrayStorage;
  *&v2[OBJC_IVAR____TtC10ClockAngel30AlarmApertureElementController_compressedSnoozeTrailingHost] = 0;
  *&v2[OBJC_IVAR____TtC10ClockAngel30AlarmApertureElementController_compressedSnoozeLeadingHost] = 0;
  *&v2[OBJC_IVAR____TtC10ClockAngel30AlarmApertureElementController_activeLayoutMode] = 0;
  *&v2[OBJC_IVAR____TtC10ClockAngel30AlarmApertureElementController_contentRole] = 2;
  *&v2[OBJC_IVAR____TtC10ClockAngel30AlarmApertureElementController_preferredLayoutMode] = 3;
  *&v2[OBJC_IVAR____TtC10ClockAngel30AlarmApertureElementController_maximumLayoutMode] = 4;
  v16 = 1;
  v17 = [objc_opt_self() mtURLForSection:1];
  if (v17)
  {
    v18 = v17;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v16 = 0;
  }

  v19 = type metadata accessor for URL();
  (*(*(v19 - 8) + 56))(v6, v16, 1, v19);
  sub_1000573D0(v6, &v2[OBJC_IVAR____TtC10ClockAngel30AlarmApertureElementController_launchURL]);
  v20 = &v2[OBJC_IVAR____TtC10ClockAngel30AlarmApertureElementController_associatedAppBundleIdentifier];
  *v20 = 0xD000000000000015;
  v20[1] = 0x80000001000D7F20;
  v21 = &v2[OBJC_IVAR____TtC10ClockAngel30AlarmApertureElementController_timerObserverIdentifier];
  *v21 = 0xD00000000000001ELL;
  v21[1] = 0x80000001000D3860;
  v22 = SBUISystemApertureElementIdentifierTimer;
  *&v2[OBJC_IVAR____TtC10ClockAngel30AlarmApertureElementController_elementIdentifier] = SBUISystemApertureElementIdentifierTimer;
  v2[OBJC_IVAR____TtC10ClockAngel30AlarmApertureElementController_preventsInteractiveDismissal] = 0;
  v23 = OBJC_IVAR____TtC10ClockAngel30AlarmApertureElementController_leadingView;
  type metadata accessor for TimerApertureAccessoryView();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v25 = objc_allocWithZone(ObjCClassFromMetadata);
  v26 = v22;
  *&v2[v23] = [v25 init];
  v27 = OBJC_IVAR____TtC10ClockAngel30AlarmApertureElementController_trailingView;
  *&v2[v27] = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v28 = OBJC_IVAR____TtC10ClockAngel30AlarmApertureElementController_minimalView;
  *&v2[v28] = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v29 = OBJC_IVAR____TtC10ClockAngel30AlarmApertureElementController_keyColor;
  *&v2[v29] = [objc_allocWithZone(UIColor) initWithRed:1.0 green:0.622 blue:0.044 alpha:1.0];
  *&v2[OBJC_IVAR____TtC10ClockAngel30AlarmApertureElementController_alarmAlertLeadingHost] = 0;
  *&v2[OBJC_IVAR____TtC10ClockAngel30AlarmApertureElementController_alarmAlertTrailingHost] = 0;
  *&v2[OBJC_IVAR____TtC10ClockAngel30AlarmApertureElementController_alarmSnoozeExpandedHostLeading] = 0;
  *&v2[OBJC_IVAR____TtC10ClockAngel30AlarmApertureElementController_alarmSnoozeExpandedHostTrailing] = 0;
  *&v2[OBJC_IVAR____TtC10ClockAngel30AlarmApertureElementController_horizontalPadding] = 0x4030000000000000;
  *&v2[OBJC_IVAR____TtC10ClockAngel30AlarmApertureElementController_alarmLabelLeadingPadding] = 0x3FF8000000000000;
  *&v2[OBJC_IVAR____TtC10ClockAngel30AlarmApertureElementController_verticalPadding] = 0x4031000000000000;
  *&v2[OBJC_IVAR____TtC10ClockAngel30AlarmApertureElementController_buttonSize] = 0x4049000000000000;
  *&v2[OBJC_IVAR____TtC10ClockAngel30AlarmApertureElementController_labelBottomPadding] = 0x402A000000000000;
  *&v2[OBJC_IVAR____TtC10ClockAngel30AlarmApertureElementController_expandedControlsHeight] = 0x4048000000000000;
  *&v2[OBJC_IVAR____TtC10ClockAngel30AlarmApertureElementController_expectedApertureHeight] = 0x4055000000000000;
  *&v2[OBJC_IVAR____TtC10ClockAngel30AlarmApertureElementController_animatingAlarmSize] = 0x4047800000000000;
  *&v2[OBJC_IVAR____TtC10ClockAngel30AlarmApertureElementController_animatingAlarmLeadingPadding] = 0x4031800000000000;
  *&v2[OBJC_IVAR____TtC10ClockAngel30AlarmApertureElementController_animatingAlarmBottomPadding] = 0x4033800000000000;
  *&v2[OBJC_IVAR____TtC10ClockAngel30AlarmApertureElementController_alarmLabelBottomPadding] = 0x4033000000000000;
  *&v2[OBJC_IVAR____TtC10ClockAngel30AlarmApertureElementController_voiceOverTimer] = 0;
  *&v2[OBJC_IVAR____TtC10ClockAngel30AlarmApertureElementController_alarmAnimationView] = 0;
  v30 = type metadata accessor for AlarmApertureElementController(0);
  v33.receiver = v2;
  v33.super_class = v30;
  v31 = objc_msgSendSuper2(&v33, "initWithCoder:", a1);

  if (v31)
  {
  }

  return v31;
}

id sub_100050B40(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v37[1] = a1;
  v7 = sub_1000032D4(&unk_100119A20, &qword_1000D1DC0);
  __chkstk_darwin(v7 - 8);
  v9 = v37 - v8;
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = &v4[OBJC_IVAR____TtC10ClockAngel30AlarmApertureElementController_observerId];
  UUID.init()();
  v15 = UUID.uuidString.getter();
  v17 = v16;
  (*(v11 + 8))(v13, v10);
  *v14 = v15;
  v14[1] = v17;
  v18 = &v4[OBJC_IVAR____TtC10ClockAngel30AlarmApertureElementController_sessionId];
  *v18 = 0;
  v18[1] = 0;
  *&v4[OBJC_IVAR____TtC10ClockAngel30AlarmApertureElementController_presentationBehaviors] = 9;
  *&v4[OBJC_IVAR____TtC10ClockAngel30AlarmApertureElementController_activeConstraints] = &_swiftEmptyArrayStorage;
  *&v4[OBJC_IVAR____TtC10ClockAngel30AlarmApertureElementController_compressedSnoozeTrailingHost] = 0;
  *&v4[OBJC_IVAR____TtC10ClockAngel30AlarmApertureElementController_compressedSnoozeLeadingHost] = 0;
  *&v4[OBJC_IVAR____TtC10ClockAngel30AlarmApertureElementController_activeLayoutMode] = 0;
  *&v4[OBJC_IVAR____TtC10ClockAngel30AlarmApertureElementController_contentRole] = 2;
  *&v4[OBJC_IVAR____TtC10ClockAngel30AlarmApertureElementController_preferredLayoutMode] = 3;
  *&v4[OBJC_IVAR____TtC10ClockAngel30AlarmApertureElementController_maximumLayoutMode] = 4;
  v19 = 1;
  v20 = [objc_opt_self() mtURLForSection:1];
  if (v20)
  {
    v21 = v20;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v19 = 0;
  }

  v22 = type metadata accessor for URL();
  (*(*(v22 - 8) + 56))(v9, v19, 1, v22);
  sub_1000573D0(v9, &v4[OBJC_IVAR____TtC10ClockAngel30AlarmApertureElementController_launchURL]);
  v23 = &v4[OBJC_IVAR____TtC10ClockAngel30AlarmApertureElementController_associatedAppBundleIdentifier];
  *v23 = 0xD000000000000015;
  v23[1] = 0x80000001000D7F20;
  v24 = &v4[OBJC_IVAR____TtC10ClockAngel30AlarmApertureElementController_timerObserverIdentifier];
  *v24 = 0xD00000000000001ELL;
  v24[1] = 0x80000001000D3860;
  v25 = SBUISystemApertureElementIdentifierTimer;
  *&v4[OBJC_IVAR____TtC10ClockAngel30AlarmApertureElementController_elementIdentifier] = SBUISystemApertureElementIdentifierTimer;
  v4[OBJC_IVAR____TtC10ClockAngel30AlarmApertureElementController_preventsInteractiveDismissal] = 0;
  v26 = OBJC_IVAR____TtC10ClockAngel30AlarmApertureElementController_leadingView;
  type metadata accessor for TimerApertureAccessoryView();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v28 = objc_allocWithZone(ObjCClassFromMetadata);
  v29 = v25;
  *&v4[v26] = [v28 init];
  v30 = OBJC_IVAR____TtC10ClockAngel30AlarmApertureElementController_trailingView;
  *&v4[v30] = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v31 = OBJC_IVAR____TtC10ClockAngel30AlarmApertureElementController_minimalView;
  *&v4[v31] = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v32 = OBJC_IVAR____TtC10ClockAngel30AlarmApertureElementController_keyColor;
  *&v4[v32] = [objc_allocWithZone(UIColor) initWithRed:1.0 green:0.622 blue:0.044 alpha:1.0];
  *&v4[OBJC_IVAR____TtC10ClockAngel30AlarmApertureElementController_alarmAlertLeadingHost] = 0;
  *&v4[OBJC_IVAR____TtC10ClockAngel30AlarmApertureElementController_alarmAlertTrailingHost] = 0;
  *&v4[OBJC_IVAR____TtC10ClockAngel30AlarmApertureElementController_alarmSnoozeExpandedHostLeading] = 0;
  *&v4[OBJC_IVAR____TtC10ClockAngel30AlarmApertureElementController_alarmSnoozeExpandedHostTrailing] = 0;
  *&v4[OBJC_IVAR____TtC10ClockAngel30AlarmApertureElementController_horizontalPadding] = 0x4030000000000000;
  *&v4[OBJC_IVAR____TtC10ClockAngel30AlarmApertureElementController_alarmLabelLeadingPadding] = 0x3FF8000000000000;
  *&v4[OBJC_IVAR____TtC10ClockAngel30AlarmApertureElementController_verticalPadding] = 0x4031000000000000;
  *&v4[OBJC_IVAR____TtC10ClockAngel30AlarmApertureElementController_buttonSize] = 0x4049000000000000;
  *&v4[OBJC_IVAR____TtC10ClockAngel30AlarmApertureElementController_labelBottomPadding] = 0x402A000000000000;
  *&v4[OBJC_IVAR____TtC10ClockAngel30AlarmApertureElementController_expandedControlsHeight] = 0x4048000000000000;
  *&v4[OBJC_IVAR____TtC10ClockAngel30AlarmApertureElementController_expectedApertureHeight] = 0x4055000000000000;
  *&v4[OBJC_IVAR____TtC10ClockAngel30AlarmApertureElementController_animatingAlarmSize] = 0x4047800000000000;
  *&v4[OBJC_IVAR____TtC10ClockAngel30AlarmApertureElementController_animatingAlarmLeadingPadding] = 0x4031800000000000;
  *&v4[OBJC_IVAR____TtC10ClockAngel30AlarmApertureElementController_animatingAlarmBottomPadding] = 0x4033800000000000;
  *&v4[OBJC_IVAR____TtC10ClockAngel30AlarmApertureElementController_alarmLabelBottomPadding] = 0x4033000000000000;
  *&v4[OBJC_IVAR____TtC10ClockAngel30AlarmApertureElementController_voiceOverTimer] = 0;
  *&v4[OBJC_IVAR____TtC10ClockAngel30AlarmApertureElementController_alarmAnimationView] = 0;
  if (a2)
  {
    v33 = String._bridgeToObjectiveC()();
  }

  else
  {
    v33 = 0;
  }

  v34 = type metadata accessor for AlarmApertureElementController(0);
  v38.receiver = v4;
  v38.super_class = v34;
  v35 = objc_msgSendSuper2(&v38, "initWithNibName:bundle:", v33, a3);

  return v35;
}

id sub_100051088()
{
  v1 = v0;
  v2 = objc_opt_self();
  v3 = [v0 description];
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;

  v12[0] = v4;
  v12[1] = v6;
  v7._countAndFlagsBits = 0x74696E69656420;
  v7._object = 0xE700000000000000;
  String.append(_:)(v7);
  v8 = String._bridgeToObjectiveC()();

  [v2 logInfo:v8];

  if (*&v1[OBJC_IVAR____TtC10ClockAngel30AlarmApertureElementController_sessionId + 8])
  {
    v9 = qword_100113600;

    if (v9 != -1)
    {
      swift_once();
    }

    sub_1000571F8(&unk_100116250, type metadata accessor for AlarmApertureElementController, &unk_1000D3930);
    AnyHashable.init<A>(_:)();
    dispatch thunk of DataStore.deregisterObserver(_:for:)();
    sub_10004E3D4(v12);
  }

  v10 = type metadata accessor for AlarmApertureElementController(0);
  v13.receiver = v1;
  v13.super_class = v10;
  return objc_msgSendSuper2(&v13, "dealloc");
}

uint64_t type metadata accessor for AlarmApertureElementController(uint64_t a1)
{
  result = qword_1001161A8;
  if (!qword_1001161A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100051418(char a1)
{
  v2 = v1;
  v13.receiver = v2;
  v13.super_class = type metadata accessor for AlarmApertureElementController(0);
  objc_msgSendSuper2(&v13, "viewWillAppear:", a1 & 1);
  v4 = objc_opt_self();
  _StringGuts.grow(_:)(17);
  v5 = [v2 description];
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;

  v9._countAndFlagsBits = 0x6C69577765697620;
  v9._object = 0xEF7261657070416CLL;
  String.append(_:)(v9);
  v10 = String._bridgeToObjectiveC()();

  [v4 logInfo:{v10, v6, v8}];

  v11 = sub_100055180();
  if (v11)
  {
    v12 = v11;
    sub_10005159C(v11);
  }
}

void sub_10005159C(void *a1)
{
  v2 = v1;
  v4 = [a1 isFiring];
  v5 = 9;
  if (v4)
  {
    v5 = 2;
  }

  v6 = *&v1[OBJC_IVAR____TtC10ClockAngel30AlarmApertureElementController_presentationBehaviors];
  *&v1[OBJC_IVAR____TtC10ClockAngel30AlarmApertureElementController_presentationBehaviors] = v5;
  if (v6 != v5)
  {
    [objc_msgSend(v1 "systemApertureElementContext")];
    swift_unknownObjectRelease();
  }

  if ([a1 isFiring])
  {
    v7 = objc_opt_self();
    v8 = String._bridgeToObjectiveC()();
    [v7 logInfo:v8];

    sub_100053614();
    sub_10005392C();
    sub_100051FB4(a1);
  }

  else if ([a1 isSnoozed])
  {
    sub_1000533DC();
    sub_100055EAC(a1);
  }

  v9 = [v2 view];
  if (v9)
  {
    v10 = v9;
    v11 = [v9 window];

    if (v11)
    {
      v12 = [v11 windowScene];

      if (v12)
      {
        type metadata accessor for ActivityScene();
        if (swift_dynamicCastClass())
        {
          v13 = v12;
          dispatch thunk of ActivityScene.idleTimerDisabled.setter();
        }
      }
    }

    v14 = objc_opt_self();
    _StringGuts.grow(_:)(34);
    v15 = [v2 description];
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    v16._countAndFlagsBits = 0xD00000000000001ELL;
    v16._object = 0x80000001000D9DF0;
    String.append(_:)(v16);
    v17 = [a1 alarmIDString];
    v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v20 = v19;

    v21._countAndFlagsBits = v18;
    v21._object = v20;
    String.append(_:)(v21);

    v22 = String._bridgeToObjectiveC()();

    [v14 logInfo:v22];
  }

  else
  {
    __break(1u);
  }
}

void sub_100051880()
{
  v1 = v0;
  v2 = type metadata accessor for Date();
  v3 = __chkstk_darwin(v2);
  v5 = &v57 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v3);
  v8 = &v57 - v7;
  __chkstk_darwin(v6);
  v11 = &v57 - v10;
  v12 = *&v0[OBJC_IVAR____TtC10ClockAngel30AlarmApertureElementController_minimalView];
  if (v12)
  {
    v58 = v9;
    type metadata accessor for AlarmApertureElementController(0);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v14 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
    v15 = String._bridgeToObjectiveC()();
    v16 = String._bridgeToObjectiveC()();
    v17 = [v14 localizedStringForKey:v15 value:0 table:v16];

    if (!v17)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v17 = String._bridgeToObjectiveC()();
    }

    [v12 setAccessibilityLabel:v17];

    v18 = v12;
    v19 = [v1 view];
    if (v19)
    {
      v20 = v19;
      [v19 addSubview:v18];

      v21 = objc_allocWithZone(sub_1000032D4(&unk_100116240, &unk_1000D3980));
      v61[0] = 0x402F000000000000;
      *&v21[*((swift_isaMask & *v21) + qword_10011F398 + 16) + 8] = 0;
      swift_unknownObjectWeakInit();
      v22 = UIHostingController.init(rootView:)();
      v23 = [v22 view];
      if (v23)
      {
        v24 = v23;
        [v23 setTranslatesAutoresizingMaskIntoConstraints:0];

        [v1 addChildViewController:v22];
        [v22 didMoveToParentViewController:v1];
        v25 = [v22 view];
        if (v25)
        {
          v26 = v25;
          [v18 addSubview:v25];

          v27 = *&v1[OBJC_IVAR____TtC10ClockAngel30AlarmApertureElementController_sessionId + 8];
          if (v27)
          {
            v28 = *&v1[OBJC_IVAR____TtC10ClockAngel30AlarmApertureElementController_sessionId];
            v29 = qword_100113600;

            if (v29 != -1)
            {
              swift_once();
            }

            v59 = v28;
            v60 = v27;
            AnyHashable.init<A>(_:)();
            dispatch thunk of DataStore.getEntry(for:)();
            sub_10004E3D4(v61);
            v30 = v62;
            if (v62)
            {
              v31 = [v62 snoozeFireDate];
              if (v31)
              {
                v32 = v31;
                static Date._unconditionallyBridgeFromObjectiveC(_:)();

                v33 = v58;
                (*(v58 + 32))(v11, v8, v2);
                Date.init()();
                Date.timeIntervalSince(_:)();
                v35 = v34;
                v36 = *(v33 + 8);
                v36(v5, v2);
                sub_10008BEF0(v35);
                v37 = String._bridgeToObjectiveC()();

                [v18 setAccessibilityLabel:v37];

                v36(v11, v2);
              }

              else
              {
              }
            }
          }

          v38 = v18;
          v39 = [v1 view];
          if (v39)
          {
            v40 = v39;
            [v39 addSubview:v38];

            v41 = [v22 view];
            if (v41)
            {
              v42 = objc_opt_self();
              sub_1000032D4(&qword_100115480, &qword_1000D2510);
              v43 = swift_allocObject();
              *(v43 + 16) = xmmword_1000D24B0;
              v44 = [v41 leadingAnchor];
              v45 = [v38 leadingAnchor];
              v46 = [v44 constraintEqualToAnchor:v45];

              *(v43 + 32) = v46;
              v47 = [v41 trailingAnchor];
              v48 = [v38 trailingAnchor];
              v49 = [v47 constraintEqualToAnchor:v48];

              *(v43 + 40) = v49;
              v50 = [v41 topAnchor];
              v51 = [v38 topAnchor];
              v52 = [v50 constraintEqualToAnchor:v51];

              *(v43 + 48) = v52;
              v53 = [v41 bottomAnchor];
              v54 = [v38 bottomAnchor];
              v55 = [v53 constraintEqualToAnchor:v54];

              *(v43 + 56) = v55;
              sub_10002BB3C(0, &qword_1001162A0, NSLayoutConstraint_ptr);
              isa = Array._bridgeToObjectiveC()().super.isa;

              [v42 activateConstraints:isa];

              return;
            }

LABEL_22:
            __break(1u);
            return;
          }

LABEL_21:
          __break(1u);
          goto LABEL_22;
        }

LABEL_20:
        __break(1u);
        goto LABEL_21;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_20;
  }
}

void sub_100051FB4(void *a1)
{
  v2 = v1;
  v4 = objc_opt_self();
  _StringGuts.grow(_:)(45);

  v55 = 0xD00000000000002BLL;
  v56 = 0x80000001000D9C20;
  v5 = [a1 alarmIDString];
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;

  v9._countAndFlagsBits = v6;
  v9._object = v8;
  String.append(_:)(v9);

  v10 = String._bridgeToObjectiveC()();

  [v4 logInfo:v10];

  if (*&v2[OBJC_IVAR____TtC10ClockAngel30AlarmApertureElementController_alarmAnimationView])
  {
    return;
  }

  sub_100052810();
  v11 = OBJC_IVAR____TtC10ClockAngel30AlarmApertureElementController_alarmAlertLeadingHost;
  if (*&v2[OBJC_IVAR____TtC10ClockAngel30AlarmApertureElementController_alarmAlertLeadingHost])
  {
    goto LABEL_8;
  }

  v12 = objc_allocWithZone(sub_1000032D4(&qword_1001162A8, &qword_1000D39B0));
  v55 = a1;
  *&v12[*((swift_isaMask & *v12) + qword_10011F398 + 16) + 8] = 0;
  swift_unknownObjectWeakInit();
  v13 = a1;
  v14 = UIHostingController.init(rootView:)();
  v15 = [v14 view];
  if (!v15)
  {
    __break(1u);
    goto LABEL_24;
  }

  v16 = v15;
  [v15 setTranslatesAutoresizingMaskIntoConstraints:0];

  v17 = [v14 view];
  if (!v17)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v18 = v17;
  v19 = [v17 layer];

  [v19 setAllowsHitTesting:0];
  [v2 addChildViewController:v14];
  v20 = [v2 view];
  if (!v20)
  {
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v21 = v20;
  v22 = [v14 view];

  if (!v22)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  [v21 addSubview:v22];

  [v14 didMoveToParentViewController:v2];
  v23 = *&v2[v11];
  *&v2[v11] = v14;

LABEL_8:
  v24 = OBJC_IVAR____TtC10ClockAngel30AlarmApertureElementController_alarmAlertTrailingHost;
  if (!*&v2[OBJC_IVAR____TtC10ClockAngel30AlarmApertureElementController_alarmAlertTrailingHost])
  {
    if (qword_100113620 != -1)
    {
      swift_once();
    }

    v25 = qword_10011F4F8;
    v57 = type metadata accessor for AlarmCoordinator();
    v58 = &off_1001023C0;
    v56 = v25;
    v26 = objc_opt_self();

    v27 = [v26 mtOrange];
    v28 = Color.init(uiColor:)();
    v29 = [v26 mtOrange];
    Color.init(uiColor:)();
    v30 = Color.opacity(_:)();

    v31 = static Color.white.getter();
    static Color.white.getter();
    v32 = Color.opacity(_:)();

    v60 = &type metadata for StandardSessionUiConfig;
    v61 = &off_1001035E8;
    v33 = swift_allocObject();
    v33[2] = v28;
    v33[3] = v30;
    v33[4] = v31;
    v33[5] = v32;
    v59 = v33;
    v55 = a1;
    v34 = objc_allocWithZone(sub_1000032D4(&unk_1001162B0, qword_1000D39B8));
    *&v34[*((swift_isaMask & *v34) + qword_10011F398 + 16) + 8] = 0;
    swift_unknownObjectWeakInit();
    sub_100025CA8(&v55, &v54);
    v35 = a1;
    v36 = UIHostingController.init(rootView:)();
    sub_100029BB4(&v55);
    v37 = v36;
    v38 = [v37 view];
    if (v38)
    {
      v39 = v38;
      [v38 setTranslatesAutoresizingMaskIntoConstraints:0];

      v40 = [v37 view];
      if (v40)
      {
        v41 = v40;
        v42 = [v40 layer];

        [v42 setAllowsHitTesting:1];
        [v2 addChildViewController:v37];
        v43 = [v2 view];
        if (v43)
        {
          v44 = v43;
          v45 = [v37 view];

          if (v45)
          {
            [v44 addSubview:v45];

            [v37 didMoveToParentViewController:v2];
            v46 = *&v2[v24];
            *&v2[v24] = v37;

            goto LABEL_16;
          }

LABEL_30:
          __break(1u);
          return;
        }

LABEL_29:
        __break(1u);
        goto LABEL_30;
      }

      goto LABEL_27;
    }

    goto LABEL_25;
  }

LABEL_16:
  v47 = OBJC_IVAR____TtC10ClockAngel30AlarmApertureElementController_activeConstraints;
  v48 = *&v2[OBJC_IVAR____TtC10ClockAngel30AlarmApertureElementController_activeConstraints];
  if (v48 >> 62)
  {
    v49 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v49 = *((v48 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v49)
  {
    v50 = objc_opt_self();
    sub_10002BB3C(0, &qword_1001162A0, NSLayoutConstraint_ptr);

    isa = Array._bridgeToObjectiveC()().super.isa;

    [v50 deactivateConstraints:isa];

    *&v2[v47] = &_swiftEmptyArrayStorage;
  }

  *&v2[v47] = sub_100052D80();

  v2[OBJC_IVAR____TtC10ClockAngel30AlarmApertureElementController_preventsInteractiveDismissal] = 1;
  v52 = objc_opt_self();
  sub_10002BB3C(0, &qword_1001162A0, NSLayoutConstraint_ptr);

  v53 = Array._bridgeToObjectiveC()().super.isa;

  [v52 activateConstraints:v53];
}

void sub_1000526A4()
{
  v1 = OBJC_IVAR____TtC10ClockAngel30AlarmApertureElementController_alarmAnimationView;
  v2 = *&v0[OBJC_IVAR____TtC10ClockAngel30AlarmApertureElementController_alarmAnimationView];
  if (v2)
  {
    [v2 removeFromSuperview];
    v3 = *&v0[v1];
    *&v0[v1] = 0;
  }

  v4 = OBJC_IVAR____TtC10ClockAngel30AlarmApertureElementController_alarmAlertLeadingHost;
  v5 = *&v0[OBJC_IVAR____TtC10ClockAngel30AlarmApertureElementController_alarmAlertLeadingHost];
  if (v5)
  {
    v6 = v5;
    v7 = [v6 view];
    if (!v7)
    {
      __break(1u);
      goto LABEL_13;
    }

    v8 = v7;
    [v7 removeFromSuperview];

    [v6 didMoveToParentViewController:0];
    [v0 removeChildViewController:v6];

    v9 = *&v0[v4];
    *&v0[v4] = 0;
  }

  v10 = OBJC_IVAR____TtC10ClockAngel30AlarmApertureElementController_alarmAlertTrailingHost;
  v11 = *&v0[OBJC_IVAR____TtC10ClockAngel30AlarmApertureElementController_alarmAlertTrailingHost];
  if (!v11)
  {
    return;
  }

  v12 = v11;
  v13 = [v12 view];
  if (!v13)
  {
LABEL_13:
    __break(1u);
    return;
  }

  v14 = v13;
  [v13 removeFromSuperview];

  [v12 didMoveToParentViewController:0];
  [v0 removeChildViewController:v12];

  v15 = *&v0[v10];
  *&v0[v10] = 0;
}

void sub_100052810()
{
  v1 = v0;
  v2 = [objc_opt_self() buttonWithType:0];
  v3 = OBJC_IVAR____TtC10ClockAngel30AlarmApertureElementController_alarmAnimationView;
  v4 = *&v0[OBJC_IVAR____TtC10ClockAngel30AlarmApertureElementController_alarmAnimationView];
  *&v0[OBJC_IVAR____TtC10ClockAngel30AlarmApertureElementController_alarmAnimationView] = v2;
  v5 = v2;

  v6 = [v5 layer];
  [v6 setMasksToBounds:1];

  v7 = *&v1[v3];
  if (!v7)
  {
    __break(1u);
    goto LABEL_14;
  }

  [v7 setTranslatesAutoresizingMaskIntoConstraints:0];
  v8 = [v1 view];
  if (!v8)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (!*&v1[v3])
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v9 = v8;
  [v8 addSubview:?];

  swift_getObjectType();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v11 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v12 = objc_allocWithZone(BSUICAPackageView);
  v13 = String._bridgeToObjectiveC()();
  v14 = [v12 initWithPackageName:v13 inBundle:v11];

  v15 = objc_opt_self();
  if (!v14)
  {
    _StringGuts.grow(_:)(54);
    v35 = [v1 description];
    v36 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v38 = v37;

    v39._countAndFlagsBits = v36;
    v39._object = v38;
    String.append(_:)(v39);

    v40._countAndFlagsBits = 0xD000000000000034;
    v40._object = 0x80000001000D9D90;
    String.append(_:)(v40);
    isa = String._bridgeToObjectiveC()();

    [v15 logInfo:isa];
    goto LABEL_10;
  }

  _StringGuts.grow(_:)(30);
  v16 = [v1 description];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  v17._countAndFlagsBits = 0xD00000000000001CLL;
  v17._object = 0x80000001000D9DD0;
  String.append(_:)(v17);
  v18 = String._bridgeToObjectiveC()();

  [v15 logInfo:v18];

  v19 = *&v1[v3];
  if (!v19)
  {
    goto LABEL_16;
  }

  v20 = v14;
  [v19 addSubview:v20];
  [v20 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v20 setUserInteractionEnabled:0];
  sub_1000032D4(&qword_100115480, &qword_1000D2510);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_1000D24B0;
  v22 = [v20 widthAnchor];
  v23 = [v22 constraintEqualToConstant:47.0];

  *(v21 + 32) = v23;
  v24 = [v20 heightAnchor];

  v25 = [v24 constraintEqualToConstant:47.0];
  *(v21 + 40) = v25;
  v26 = [v20 centerXAnchor];

  v27 = *&v1[v3];
  if (!v27)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v28 = [v27 centerXAnchor];
  v29 = [v26 constraintEqualToAnchor:v28];

  *(v21 + 48) = v29;
  v30 = [v20 centerYAnchor];

  v31 = *&v1[v3];
  if (!v31)
  {
LABEL_18:
    __break(1u);
    return;
  }

  v32 = objc_opt_self();
  v33 = [v31 centerYAnchor];
  v34 = [v30 constraintEqualToAnchor:v33];

  *(v21 + 56) = v34;
  sub_10002BB3C(0, &qword_1001162A0, NSLayoutConstraint_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v32 activateConstraints:isa];

LABEL_10:
}

id sub_100052D80()
{
  result = *&v0[OBJC_IVAR____TtC10ClockAngel30AlarmApertureElementController_alarmAlertLeadingHost];
  if (!result)
  {
    __break(1u);
    goto LABEL_20;
  }

  v2 = v0;
  result = [result view];
  if (!result)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v3 = result;
  result = *&v0[OBJC_IVAR____TtC10ClockAngel30AlarmApertureElementController_alarmAlertTrailingHost];
  if (!result)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  result = [result view];
  if (!result)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v5 = result;
  LODWORD(v4) = 1132068864;
  [v3 setContentCompressionResistancePriority:0 forAxis:v4];
  LODWORD(v6) = 1144750080;
  [v5 setContentHuggingPriority:0 forAxis:v6];
  v7 = [v5 trailingAnchor];
  result = [v2 view];
  if (!result)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v8 = result;
  v9 = [result trailingAnchor];

  v10 = [v7 constraintEqualToAnchor:v9 constant:-16.0];
  LODWORD(v11) = 1148846080;
  [v10 setPriority:v11];
  v12 = [v3 trailingAnchor];
  v13 = [v5 leadingAnchor];
  v14 = [v12 constraintEqualToAnchor:v13];

  LODWORD(v15) = 1148846080;
  [v14 setPriority:v15];
  sub_1000032D4(&qword_100115480, &qword_1000D2510);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1000D3860;
  v17 = OBJC_IVAR____TtC10ClockAngel30AlarmApertureElementController_alarmAnimationView;
  result = *&v2[OBJC_IVAR____TtC10ClockAngel30AlarmApertureElementController_alarmAnimationView];
  if (!result)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v48 = v10;
  v18 = [result leadingAnchor];
  result = [v2 view];
  if (!result)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v19 = result;
  v20 = [result leadingAnchor];

  v21 = [v18 constraintEqualToAnchor:v20 constant:17.5];
  *(v16 + 32) = v21;
  result = *&v2[v17];
  if (!result)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v22 = [result trailingAnchor];
  v23 = [v3 leadingAnchor];
  v24 = [v22 constraintEqualToAnchor:v23];

  *(v16 + 40) = v24;
  result = *&v2[v17];
  if (!result)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v25 = [result topAnchor];
  result = [v2 view];
  if (!result)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v26 = result;
  v27 = [result topAnchor];

  v28 = [v25 constraintEqualToAnchor:v27 constant:17.0];
  *(v16 + 48) = v28;
  result = *&v2[v17];
  if (!result)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v29 = [result bottomAnchor];
  result = [v2 view];
  if (!result)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v30 = result;
  v31 = [result bottomAnchor];

  v32 = [v29 constraintEqualToAnchor:v31 constant:-19.5];
  *(v16 + 56) = v32;
  result = *&v2[v17];
  if (!result)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v33 = [result widthAnchor];
  result = *&v2[v17];
  if (!result)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v34 = [result heightAnchor];
  v35 = [v33 constraintEqualToAnchor:v34];

  *(v16 + 64) = v35;
  *(v16 + 72) = v14;
  v47 = v14;
  v36 = [v5 bottomAnchor];
  result = [v2 view];
  if (!result)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v37 = result;
  v38 = [result bottomAnchor];

  v39 = [v36 constraintEqualToAnchor:v38 constant:-17.0];
  *(v16 + 80) = v39;
  v40 = [v3 leadingAnchor];
  result = *&v2[v17];
  if (!result)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v41 = [result trailingAnchor];
  v42 = [v40 constraintEqualToAnchor:v41 constant:1.5];

  *(v16 + 88) = v42;
  v43 = [v3 bottomAnchor];
  result = [v2 view];
  if (result)
  {
    v44 = result;
    v45 = [result bottomAnchor];

    v46 = [v43 constraintEqualToAnchor:v45 constant:-19.0];
    *(v16 + 96) = v46;
    *(v16 + 104) = v48;

    return v16;
  }

LABEL_35:
  __break(1u);
  return result;
}

void sub_1000533DC()
{
  v1 = objc_opt_self();
  v2 = String._bridgeToObjectiveC()();
  [v1 logInfo:v2];

  v3 = OBJC_IVAR____TtC10ClockAngel30AlarmApertureElementController_alarmAlertLeadingHost;
  v4 = *(v0 + OBJC_IVAR____TtC10ClockAngel30AlarmApertureElementController_alarmAlertLeadingHost);
  if (!v4)
  {
    goto LABEL_16;
  }

  v5 = [v4 view];
  if (!v5)
  {
    __break(1u);
    goto LABEL_21;
  }

  v6 = v5;
  v7 = [v5 superview];

  if (v7)
  {

    v8 = *(v0 + v3);
    if (!v8)
    {
LABEL_22:
      __break(1u);
      goto LABEL_23;
    }

    v9 = [v8 view];
    if (!v9)
    {
LABEL_23:
      __break(1u);
      goto LABEL_24;
    }

    v10 = v9;
    [v9 removeFromSuperview];
  }

  v11 = *(v0 + v3);
  if (!v11)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  [v11 removeFromParentViewController];
  v12 = *(v0 + v3);
  *(v0 + v3) = 0;

  v13 = OBJC_IVAR____TtC10ClockAngel30AlarmApertureElementController_alarmAlertTrailingHost;
  v14 = *(v0 + OBJC_IVAR____TtC10ClockAngel30AlarmApertureElementController_alarmAlertTrailingHost);
  if (!v14)
  {
LABEL_16:
    v23 = String._bridgeToObjectiveC()();
    [v1 logInfo:v23];
    v22 = v23;
    goto LABEL_17;
  }

  v15 = [v14 view];
  if (!v15)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v16 = v15;
  v17 = [v15 superview];

  if (v17)
  {

    v18 = *(v0 + v13);
    if (!v18)
    {
LABEL_26:
      __break(1u);
      goto LABEL_27;
    }

    v19 = [v18 view];
    if (!v19)
    {
LABEL_27:
      __break(1u);
      return;
    }

    v20 = v19;
    [v19 removeFromSuperview];
  }

  v21 = *(v0 + v13);
  if (!v21)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  [v21 removeFromParentViewController];
  v22 = *(v0 + v13);
  *(v0 + v13) = 0;
LABEL_17:
}

void sub_100053614()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC10ClockAngel30AlarmApertureElementController_compressedSnoozeTrailingHost];
  if (!v2)
  {
    return;
  }

  v3 = objc_opt_self();
  v4 = v2;
  _StringGuts.grow(_:)(40);
  v5 = [v1 description];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  v6._countAndFlagsBits = 0xD000000000000026;
  v6._object = 0x80000001000D9CB0;
  String.append(_:)(v6);
  v7 = String._bridgeToObjectiveC()();

  [v3 logDebug:v7];

  v24 = v4;
  v8 = [v24 view];
  if (!v8)
  {
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v9 = v8;
  v10 = [v8 superview];

  v11 = v24;
  if (v10)
  {

    v11 = [v24 view];
    if (!v11)
    {
LABEL_21:
      __break(1u);
      goto LABEL_22;
    }

    [v11 removeFromSuperview];
  }

  _StringGuts.grow(_:)(39);
  v12 = [v1 description];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  v13._object = 0x80000001000D9CE0;
  v13._countAndFlagsBits = 0xD000000000000025;
  String.append(_:)(v13);
  v14 = String._bridgeToObjectiveC()();

  [v3 logDebug:v14];

  v15 = OBJC_IVAR____TtC10ClockAngel30AlarmApertureElementController_compressedSnoozeLeadingHost;
  v16 = *&v1[OBJC_IVAR____TtC10ClockAngel30AlarmApertureElementController_compressedSnoozeLeadingHost];
  if (!v16)
  {
    goto LABEL_18;
  }

  v17 = [v16 view];
  if (!v17)
  {
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v18 = v17;
  v19 = [v17 superview];

  if (v19)
  {

    v20 = *&v1[v15];
    if (!v20)
    {
LABEL_22:
      __break(1u);
      goto LABEL_23;
    }

    v21 = [v20 view];
    if (!v21)
    {
LABEL_23:
      __break(1u);
      return;
    }

    v22 = v21;
    [v21 removeFromSuperview];
  }

  v23 = *&v1[v15];
  if (!v23)
  {
    goto LABEL_20;
  }

  [v23 removeFromParentViewController];
  [v24 removeFromParentViewController];
}

void sub_10005392C()
{
  v1 = OBJC_IVAR____TtC10ClockAngel30AlarmApertureElementController_alarmSnoozeExpandedHostLeading;
  v2 = *(v0 + OBJC_IVAR____TtC10ClockAngel30AlarmApertureElementController_alarmSnoozeExpandedHostLeading);
  if (!v2)
  {
    goto LABEL_18;
  }

  v3 = [v2 view];
  if (!v3)
  {
    __break(1u);
    goto LABEL_22;
  }

  v4 = v3;
  v5 = [v3 superview];

  if (v5)
  {

    v6 = *(v0 + v1);
    if (!v6)
    {
LABEL_23:
      __break(1u);
      goto LABEL_24;
    }

    v7 = [v6 view];
    if (!v7)
    {
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    v8 = v7;
    [v7 removeFromSuperview];
  }

  v9 = *(v0 + v1);
  if (!v9)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  [v9 removeFromParentViewController];
  v10 = OBJC_IVAR____TtC10ClockAngel30AlarmApertureElementController_alarmSnoozeExpandedHostTrailing;
  v11 = *(v0 + OBJC_IVAR____TtC10ClockAngel30AlarmApertureElementController_alarmSnoozeExpandedHostTrailing);
  if (v11)
  {
    v12 = [v11 view];
    if (v12)
    {
      v13 = v12;
      v14 = [v12 superview];

      if (v14)
      {

        v15 = *(v0 + v10);
        if (!v15)
        {
LABEL_27:
          __break(1u);
          goto LABEL_28;
        }

        v16 = [v15 view];
        if (!v16)
        {
LABEL_28:
          __break(1u);
          return;
        }

        v17 = v16;
        [v16 removeFromSuperview];
      }

      v18 = *(v0 + v10);
      if (v18)
      {

        [v18 removeFromParentViewController];
        return;
      }

LABEL_26:
      __break(1u);
      goto LABEL_27;
    }

LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

LABEL_18:
  v19 = objc_opt_self();
  v20 = String._bridgeToObjectiveC()();
  [v19 logInfo:v20];
}

void sub_100053B50(void *a1)
{
  v2 = v1;
  v4 = objc_opt_self();
  _StringGuts.grow(_:)(45);

  v55 = 0xD00000000000002BLL;
  v56 = 0x80000001000D9C20;
  v5 = [a1 alarmIDString];
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;

  v9._countAndFlagsBits = v6;
  v9._object = v8;
  String.append(_:)(v9);

  v10 = String._bridgeToObjectiveC()();

  [v4 logInfo:v10];

  v11 = OBJC_IVAR____TtC10ClockAngel30AlarmApertureElementController_alarmSnoozeExpandedHostLeading;
  if (*&v2[OBJC_IVAR____TtC10ClockAngel30AlarmApertureElementController_alarmSnoozeExpandedHostLeading])
  {
    goto LABEL_9;
  }

  if (qword_100113620 != -1)
  {
    swift_once();
  }

  v12 = qword_10011F4F8;
  v59 = type metadata accessor for AlarmCoordinator();
  v60 = &off_1001023C0;
  v56 = v12;
  v13 = objc_opt_self();

  v14 = [v13 mtOrange];
  v15 = Color.init(uiColor:)();
  v16 = [v13 mtOrange];
  Color.init(uiColor:)();
  v17 = Color.opacity(_:)();

  v18 = static Color.white.getter();
  static Color.white.getter();
  v19 = Color.opacity(_:)();

  v62 = &type metadata for StandardSessionUiConfig;
  v63 = &off_1001035E8;
  v20 = swift_allocObject();
  v20[2] = v15;
  v20[3] = v17;
  v20[4] = v18;
  v20[5] = v19;
  v61 = v20;
  v55 = a1;
  v21 = objc_allocWithZone(sub_1000032D4(&qword_100116290, &qword_1000D39A0));
  *&v21[*((swift_isaMask & *v21) + qword_10011F398 + 16) + 8] = 0;
  swift_unknownObjectWeakInit();
  sub_100025B60(&v55, &v54);
  v22 = a1;
  v23 = UIHostingController.init(rootView:)();
  sub_10005733C(&v55);
  v24 = v23;
  v25 = [v24 view];
  if (!v25)
  {
    __break(1u);
    goto LABEL_22;
  }

  v26 = v25;
  [v25 setTranslatesAutoresizingMaskIntoConstraints:0];

  v27 = [v24 view];
  if (!v27)
  {
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v28 = v27;
  v29 = [v27 layer];

  [v29 setAllowsHitTesting:1];
  [v2 addChildViewController:v24];
  v30 = [v2 view];
  if (!v30)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v31 = v30;
  v32 = [v24 view];

  if (!v32)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  [v31 addSubview:v32];

  [v24 didMoveToParentViewController:v2];
  v33 = *&v2[v11];
  *&v2[v11] = v24;

LABEL_9:
  v34 = OBJC_IVAR____TtC10ClockAngel30AlarmApertureElementController_alarmSnoozeExpandedHostTrailing;
  if (!*&v2[OBJC_IVAR____TtC10ClockAngel30AlarmApertureElementController_alarmSnoozeExpandedHostTrailing])
  {
    v35 = objc_allocWithZone(sub_1000032D4(&qword_100116298, &qword_1000D39A8));
    v55 = a1;
    v56 = sub_10002DB3C;
    v57 = 0;
    v58 = 0;
    *&v35[*((swift_isaMask & *v35) + qword_10011F398 + 16) + 8] = 0;
    swift_unknownObjectWeakInit();
    v36 = a1;
    v37 = UIHostingController.init(rootView:)();
    v38 = [v37 view];
    if (v38)
    {
      v39 = v38;
      [v38 setTranslatesAutoresizingMaskIntoConstraints:0];

      v40 = [v37 view];
      if (v40)
      {
        v41 = v40;
        v42 = [v40 layer];

        [v42 setAllowsHitTesting:0];
        [v2 addChildViewController:v37];
        v43 = [v2 view];
        if (v43)
        {
          v44 = v43;
          v45 = [v37 view];

          if (v45)
          {
            [v44 addSubview:v45];

            [v37 didMoveToParentViewController:v2];
            v46 = *&v2[v34];
            *&v2[v34] = v37;

            goto LABEL_15;
          }

LABEL_28:
          __break(1u);
          return;
        }

LABEL_27:
        __break(1u);
        goto LABEL_28;
      }

      goto LABEL_25;
    }

    goto LABEL_23;
  }

LABEL_15:
  v47 = OBJC_IVAR____TtC10ClockAngel30AlarmApertureElementController_activeConstraints;
  v48 = *&v2[OBJC_IVAR____TtC10ClockAngel30AlarmApertureElementController_activeConstraints];
  if (v48 >> 62)
  {
    v49 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v49 = *((v48 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v49)
  {
    v50 = objc_opt_self();
    sub_10002BB3C(0, &qword_1001162A0, NSLayoutConstraint_ptr);

    isa = Array._bridgeToObjectiveC()().super.isa;

    [v50 deactivateConstraints:isa];

    *&v2[v47] = &_swiftEmptyArrayStorage;
  }

  *&v2[v47] = sub_10005423C();

  v2[OBJC_IVAR____TtC10ClockAngel30AlarmApertureElementController_preventsInteractiveDismissal] = 0;
  v52 = objc_opt_self();
  sub_10002BB3C(0, &qword_1001162A0, NSLayoutConstraint_ptr);

  v53 = Array._bridgeToObjectiveC()().super.isa;

  [v52 activateConstraints:v53];
}

id sub_10005423C()
{
  result = *&v0[OBJC_IVAR____TtC10ClockAngel30AlarmApertureElementController_alarmSnoozeExpandedHostLeading];
  if (!result)
  {
    __break(1u);
    goto LABEL_11;
  }

  v2 = v0;
  result = [result view];
  if (!result)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v3 = result;
  result = *&v0[OBJC_IVAR____TtC10ClockAngel30AlarmApertureElementController_alarmSnoozeExpandedHostTrailing];
  if (!result)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  result = [result view];
  if (!result)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v4 = result;
  sub_1000032D4(&qword_100115480, &qword_1000D2510);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1000D24B0;
  v6 = [v3 leadingAnchor];
  result = [v2 view];
  if (!result)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v7 = result;
  v8 = [result leadingAnchor];

  v9 = [v6 constraintEqualToAnchor:v8 constant:16.0];
  *(v5 + 32) = v9;
  v10 = [v3 bottomAnchor];
  result = [v2 view];
  if (!result)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v11 = result;
  v12 = [result bottomAnchor];

  v13 = [v10 constraintEqualToAnchor:v12 constant:-17.0];
  *(v5 + 40) = v13;
  v14 = [v4 trailingAnchor];
  result = [v2 view];
  if (!result)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v15 = result;
  v16 = [result SBUISA_systemApertureLegibleContentLayoutMarginsGuide];

  v17 = [v16 trailingAnchor];
  v18 = [v14 constraintEqualToAnchor:v17];

  *(v5 + 48) = v18;
  v19 = [v4 bottomAnchor];
  result = [v2 view];
  if (result)
  {
    v20 = result;
    v21 = [result bottomAnchor];

    v22 = [v19 constraintEqualToAnchor:v21 constant:-13.0];
    *(v5 + 56) = v22;

    return v5;
  }

LABEL_17:
  __break(1u);
  return result;
}

void sub_100054540(uint64_t a1, char *a2)
{
  v3 = *&a2[OBJC_IVAR____TtC10ClockAngel30AlarmApertureElementController_activeLayoutMode];
  if (v3 <= 1)
  {
    if (v3)
    {
      if (v3 != 1)
      {
        goto LABEL_42;
      }

      v12 = objc_opt_self();
      _StringGuts.grow(_:)(32);
      v13 = [a2 description];
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      v14._countAndFlagsBits = 0xD00000000000001ELL;
      v14._object = 0x80000001000D9EE0;
      String.append(_:)(v14);
      v15 = String._bridgeToObjectiveC()();

      [v12 logInfo:v15];

      sub_1000526A4();
    }

    else
    {
      v30 = objc_opt_self();
      _StringGuts.grow(_:)(31);
      v31 = [a2 description];
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      v32._object = 0x80000001000D9F60;
      v32._countAndFlagsBits = 0xD00000000000001DLL;
      String.append(_:)(v32);
      v33 = String._bridgeToObjectiveC()();

      [v30 logInfo:v33];
    }

    v34 = *&a2[OBJC_IVAR____TtC10ClockAngel30AlarmApertureElementController_leadingView];
    if (v34)
    {
      [v34 setHidden:1];
    }

    v35 = *&a2[OBJC_IVAR____TtC10ClockAngel30AlarmApertureElementController_trailingView];
    if (v35)
    {
      [v35 setHidden:1];
    }

    v22 = *&a2[OBJC_IVAR____TtC10ClockAngel30AlarmApertureElementController_minimalView];
    if (!v22)
    {
      return;
    }

LABEL_38:

    [v22 setHidden:1];
    return;
  }

  if (v3 == 2)
  {
    v16 = objc_opt_self();
    _StringGuts.grow(_:)(31);
    v17 = [a2 description];
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    v18._object = 0x80000001000D9F40;
    v18._countAndFlagsBits = 0xD00000000000001DLL;
    String.append(_:)(v18);
    v19 = String._bridgeToObjectiveC()();

    [v16 logInfo:v19];

    sub_1000526A4();
    v20 = *&a2[OBJC_IVAR____TtC10ClockAngel30AlarmApertureElementController_minimalView];
    if (v20)
    {
      [v20 setHidden:0];
    }

    v21 = *&a2[OBJC_IVAR____TtC10ClockAngel30AlarmApertureElementController_leadingView];
    if (v21)
    {
      [v21 setHidden:1];
    }

    v22 = *&a2[OBJC_IVAR____TtC10ClockAngel30AlarmApertureElementController_trailingView];
    if (!v22)
    {
      return;
    }

    goto LABEL_38;
  }

  if (v3 == 3)
  {
    v23 = objc_opt_self();
    _StringGuts.grow(_:)(31);
    v24 = [a2 description];
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    v25._object = 0x80000001000D9F20;
    v25._countAndFlagsBits = 0xD00000000000001DLL;
    String.append(_:)(v25);
    v26 = String._bridgeToObjectiveC()();

    [v23 logInfo:v26];

    sub_1000526A4();
    v27 = *&a2[OBJC_IVAR____TtC10ClockAngel30AlarmApertureElementController_leadingView];
    if (v27)
    {
      [v27 setHidden:0];
    }

    v28 = *&a2[OBJC_IVAR____TtC10ClockAngel30AlarmApertureElementController_trailingView];
    if (v28)
    {
      [v28 setHidden:0];
    }

    v29 = *&a2[OBJC_IVAR____TtC10ClockAngel30AlarmApertureElementController_minimalView];
    if (v29)
    {
      [v29 setHidden:1];
    }

    v39 = [objc_msgSend(a2 "systemApertureElementContext")];
    swift_unknownObjectRelease();
    if (v39)
    {
      if ([v39 isUserInitiated])
      {
        sub_100054D90();
      }

      goto LABEL_44;
    }

    return;
  }

  if (v3 != 4)
  {
LABEL_42:
    v36 = objc_opt_self();
    _StringGuts.grow(_:)(35);
    v37 = [a2 description];
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    v38._countAndFlagsBits = 0xD000000000000021;
    v38._object = 0x80000001000D9EB0;
    String.append(_:)(v38);
    v39 = String._bridgeToObjectiveC()();

    [v36 logInfo:v39];
    goto LABEL_44;
  }

  v4 = *&a2[OBJC_IVAR____TtC10ClockAngel30AlarmApertureElementController_leadingView];
  if (v4)
  {
    [v4 setHidden:1];
  }

  v5 = *&a2[OBJC_IVAR____TtC10ClockAngel30AlarmApertureElementController_trailingView];
  if (v5)
  {
    [v5 setHidden:1];
  }

  v6 = *&a2[OBJC_IVAR____TtC10ClockAngel30AlarmApertureElementController_minimalView];
  if (v6)
  {
    [v6 setHidden:1];
  }

  v7 = objc_opt_self();
  _StringGuts.grow(_:)(30);
  v8 = [a2 description];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  v9._countAndFlagsBits = 0xD00000000000001CLL;
  v9._object = 0x80000001000D9F00;
  String.append(_:)(v9);
  v10 = String._bridgeToObjectiveC()();

  [v7 logInfo:v10];

  v11 = sub_100055180();
  if (v11)
  {
    v39 = v11;
    if ([v11 isFiring])
    {
      sub_100051FB4(v39);
    }

    else
    {
      sub_100053B50(v39);
    }

LABEL_44:
  }
}

void *sub_100054D90()
{
  v1 = objc_opt_self();
  _StringGuts.grow(_:)(25);
  v2 = [v0 description];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  v3._object = 0x80000001000D9BB0;
  v3._countAndFlagsBits = 0xD000000000000017;
  String.append(_:)(v3);
  v4 = String._bridgeToObjectiveC()();

  [v1 logInfo:v4];

  result = sub_100055180();
  if (result)
  {
    v30 = result;
    if ([result isFiring])
    {
      if ([v30 allowsSnooze])
      {
        _StringGuts.grow(_:)(34);
        v6 = [v0 description];
        static String._unconditionallyBridgeFromObjectiveC(_:)();

        v7._countAndFlagsBits = 0xD00000000000001ELL;
        v7._object = 0x80000001000D9C00;
        String.append(_:)(v7);
        v8 = [v30 alarmIDString];
        v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v11 = v10;

        v12._countAndFlagsBits = v9;
        v12._object = v11;
        String.append(_:)(v12);

        v13 = String._bridgeToObjectiveC()();

        [v1 logInfo:v13];

        if (qword_100113620 != -1)
        {
          swift_once();
        }

        v14 = [v30 alarmIDString];
        v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v17 = v16;

        sub_10007730C(v15, v17);
      }

      else
      {
        _StringGuts.grow(_:)(36);
        v18 = [v0 description];
        static String._unconditionallyBridgeFromObjectiveC(_:)();

        v19._countAndFlagsBits = 0xD000000000000020;
        v19._object = 0x80000001000D9BD0;
        String.append(_:)(v19);
        v20 = [v30 alarmIDString];
        v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v23 = v22;

        v24._countAndFlagsBits = v21;
        v24._object = v23;
        String.append(_:)(v24);

        v25 = String._bridgeToObjectiveC()();

        [v1 logInfo:v25];

        if (qword_100113620 != -1)
        {
          swift_once();
        }

        v26 = [v30 alarmIDString];
        v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v29 = v28;

        sub_100076AA0(v27, v29);
      }
    }

    return _objc_release_x2();
  }

  return result;
}

void *sub_100055180()
{
  v1 = v0;
  v2 = sub_1000032D4(&unk_100115E10, &qword_1000D27F0);
  __chkstk_darwin(v2 - 8);
  v4 = &v34 - v3;
  v5 = objc_opt_self();
  v37 = 0;
  v38 = 0xE000000000000000;
  _StringGuts.grow(_:)(33);
  v6 = [v0 description];
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;

  v37 = v7;
  v38 = v9;
  v10._countAndFlagsBits = 0xD00000000000001FLL;
  v10._object = 0x80000001000D9B50;
  String.append(_:)(v10);
  v11 = String._bridgeToObjectiveC()();

  [v5 logInfo:v11];

  v12 = *&v0[OBJC_IVAR____TtC10ClockAngel30AlarmApertureElementController_sessionId + 8];
  if (!v12)
  {
    v37 = 0;
    v38 = 0xE000000000000000;
    _StringGuts.grow(_:)(22);
    v24 = [v0 description];
    v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v27 = v26;

    v37 = v25;
    v38 = v27;
    v28._object = 0x80000001000D9B70;
    v28._countAndFlagsBits = 0xD000000000000014;
    String.append(_:)(v28);
    v29 = String._bridgeToObjectiveC()();

    [v5 logInfo:v29];

    return 0;
  }

  v13 = *&v0[OBJC_IVAR____TtC10ClockAngel30AlarmApertureElementController_sessionId];
  v14 = qword_100113600;

  if (v14 != -1)
  {
    swift_once();
  }

  v35 = v13;
  v36 = v12;

  AnyHashable.init<A>(_:)();
  dispatch thunk of DataStore.getEntry(for:)();
  sub_10004E3D4(&v37);
  v15 = v35;
  v37 = 0;
  v38 = 0xE000000000000000;
  _StringGuts.grow(_:)(32);
  v16 = [v1 description];
  v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v19 = v18;

  v37 = v17;
  v38 = v19;
  v20._countAndFlagsBits = 0xD00000000000001CLL;
  v20._object = 0x80000001000D9B90;
  String.append(_:)(v20);
  v35 = v15;
  v21 = v15;
  sub_1000032D4(&unk_100116280, &qword_1000D3998);
  v22._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v22);

  v23 = String._bridgeToObjectiveC()();

  [v5 logInfo:v23];

  if (!v15)
  {
    if (qword_100113620 != -1)
    {
      swift_once();
    }

    v30 = qword_10011F4F8;
    v31 = type metadata accessor for TaskPriority();
    (*(*(v31 - 8) + 56))(v4, 1, 1, v31);
    v32 = swift_allocObject();
    v32[2] = 0;
    v32[3] = 0;
    v32[4] = v30;
    v32[5] = v13;
    v32[6] = v12;

    sub_100075B64(0, 0, v4, &unk_1000D3290, v32);

    return 0;
  }

  return v15;
}

void sub_100055624(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10002B00C(a1, &aBlock);
  sub_1000032D4(&unk_100119770, &unk_1000D3CE0);
  sub_10002BB3C(0, &qword_100115DB0, MTAlarm_ptr);
  if (swift_dynamicCast())
  {
    v35 = v5;

    v12 = objc_opt_self();
    aBlock = 0;
    v37 = 0xE000000000000000;
    _StringGuts.grow(_:)(21);

    aBlock = 0xD000000000000013;
    v37 = 0x80000001000D9B10;
    v13 = [v2 description];
    v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v16 = v15;

    v17._countAndFlagsBits = v14;
    v17._object = v16;
    String.append(_:)(v17);

    v18 = String._bridgeToObjectiveC()();

    [v12 logInfo:v18];

    v19 = sub_100055180();
    if (v19)
    {
      v20 = v19;
      v21 = String._bridgeToObjectiveC()();
      [v12 logInfo:v21];

      sub_10002BB3C(0, &qword_100115D80, OS_dispatch_queue_ptr);
      v22 = static OS_dispatch_queue.main.getter();
      v23 = swift_allocObject();
      *(v23 + 16) = v2;
      *(v23 + 24) = v20;
      v40 = sub_1000571D0;
      v41 = v23;
      aBlock = _NSConcreteStackBlock;
      v37 = 1107296256;
      v38 = sub_10004B270;
      v39 = &unk_1001013D8;
      v24 = _Block_copy(&aBlock);
      v25 = v2;
      v26 = v20;

      static DispatchQoS.unspecified.getter();
      aBlock = &_swiftEmptyArrayStorage;
      sub_1000571F8(&qword_100116260, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
      sub_1000032D4(&unk_100115D90, qword_1000D3C00);
      sub_100057240();
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v24);

      (*(v35 + 8))(v7, v4);
      (*(v9 + 8))(v11, v8);
    }

    else
    {
      v34 = String._bridgeToObjectiveC()();
      [v12 logInfo:v34];
    }
  }

  else
  {
    v27 = objc_opt_self();
    aBlock = 0;
    v37 = 0xE000000000000000;
    _StringGuts.grow(_:)(22);

    aBlock = 0xD000000000000014;
    v37 = 0x80000001000D9AF0;
    v28 = [v2 description];
    v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v31 = v30;

    v32._countAndFlagsBits = v29;
    v32._object = v31;
    String.append(_:)(v32);

    v33 = String._bridgeToObjectiveC()();

    [v27 logInfo:v33];
  }
}

void sub_100055B60(void *a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC10ClockAngel30AlarmApertureElementController_sessionId + 8);
  if (v2)
  {
    v3 = *(v1 + OBJC_IVAR____TtC10ClockAngel30AlarmApertureElementController_sessionId);
    sub_10002B00C(a1, v16);

    sub_1000032D4(&unk_100119770, &unk_1000D3CE0);
    sub_10002BB3C(0, &qword_100115DB0, MTAlarm_ptr);
    if (swift_dynamicCast())
    {
      v5 = [v15 alarmIDString];
      v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v8 = v7;

      if (v3 == v6 && v2 == v8)
      {
      }

      else
      {
        v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v10 & 1) == 0)
        {

          return;
        }
      }

      v11 = objc_opt_self();
      v16[0] = 0;
      v16[1] = 0xE000000000000000;
      _StringGuts.grow(_:)(53);
      v12._object = 0x80000001000D9AC0;
      v12._countAndFlagsBits = 0xD000000000000026;
      String.append(_:)(v12);
      sub_100025B1C(a1, a1[3]);
      v16[3] = swift_getAssociatedTypeWitness();
      v16[4] = swift_getAssociatedConformanceWitness();
      sub_10005712C(v16);
      dispatch thunk of Identifiable.id.getter();
      sub_1000032D4(&unk_1001180D0, &qword_1000D3990);
      _print_unlocked<A, B>(_:_:)();
      sub_100017D28(v16);
      v13._countAndFlagsBits = 0x696E61656C63202CLL;
      v13._object = 0xED0000707520676ELL;
      String.append(_:)(v13);
      v14 = String._bridgeToObjectiveC()();

      [v11 logInfo:v14];

      if (qword_100113600 != -1)
      {
        swift_once();
      }

      sub_1000571F8(&unk_100116250, type metadata accessor for AlarmApertureElementController, &unk_1000D3930);
      AnyHashable.init<A>(_:)();
      dispatch thunk of DataStore.deregisterObserver(_:for:)();

      sub_10004E3D4(v16);
    }

    else
    {
    }
  }
}

void sub_100055EAC(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for TimerRunningCompressedTrailingView(0);
  v5 = __chkstk_darwin(v4);
  v100 = &v94 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v8 = &v94 - v7;
  v9 = type metadata accessor for Date();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = &v94 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v11);
  v16 = &v94 - v15;
  __chkstk_darwin(v14);
  v18 = &v94 - v17;
  v19 = OBJC_IVAR____TtC10ClockAngel30AlarmApertureElementController_compressedSnoozeTrailingHost;
  v20 = *&v2[OBJC_IVAR____TtC10ClockAngel30AlarmApertureElementController_compressedSnoozeTrailingHost];
  if (!v20 || (v21 = [v20 parentViewController]) == 0)
  {
    v97 = v13;
    v22 = [a1 snoozeFireDate];
    if (v22)
    {
      v23 = v22;
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      (*(v10 + 32))(v18, v16, v9);
      v95 = objc_opt_self();
      v102 = 0;
      v103 = 0xE000000000000000;
      _StringGuts.grow(_:)(64);
      v24 = [v2 description];
      v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v99 = v9;
      v26 = v25;
      v28 = v27;

      v29._countAndFlagsBits = v26;
      v29._object = v28;
      String.append(_:)(v29);

      v30._countAndFlagsBits = 0xD00000000000002ELL;
      v30._object = 0x80000001000D9A50;
      String.append(_:)(v30);
      v31 = [v2 view];
      v101 = v31;
      sub_1000032D4(&qword_100116228, &unk_1000D5BA0);
      _print_unlocked<A, B>(_:_:)();

      v32._countAndFlagsBits = 0x696C69617274202CLL;
      v32._object = 0xEC000000203A676ELL;
      String.append(_:)(v32);
      v33 = *&v2[OBJC_IVAR____TtC10ClockAngel30AlarmApertureElementController_trailingView];
      v101 = v33;
      sub_1000032D4(&unk_100116230, &qword_1000D3970);
      _print_unlocked<A, B>(_:_:)();
      v34 = String._bridgeToObjectiveC()();

      [v95 logInfo:v34];

      v35 = *(v4 + 20);
      v96 = v10;
      v36 = *(v10 + 16);
      v98 = v18;
      v36(&v8[v35], v18, v99);
      v37 = [objc_opt_self() mtOrange];
      *&v8[*(v4 + 24)] = Color.init(uiColor:)();
      v38 = swift_allocObject();
      *(v38 + 16) = 0;
      *(v38 + 24) = 0;
      *v8 = sub_10002555C;
      *(v8 + 1) = v38;
      v8[16] = 0;
      v39 = objc_allocWithZone(sub_1000032D4(&qword_100119800, &qword_1000D3978));
      *&v39[*((swift_isaMask & *v39) + qword_10011F398 + 16) + 8] = 0;
      swift_unknownObjectWeakInit();
      sub_10005706C(v8, v100);
      v40 = UIHostingController.init(rootView:)();
      sub_1000570D0(v8);
      v41 = *&v2[v19];
      *&v2[v19] = v40;
      v42 = v40;

      v43 = [v42 view];
      if (v43)
      {
        [v43 setTranslatesAutoresizingMaskIntoConstraints:0];

        if (*&v2[v19])
        {
          [v2 addChildViewController:?];
          v44 = *&v2[v19];
          v45 = v96;
          if (v44)
          {
            [v44 didMoveToParentViewController:v2];
            if (v33)
            {
              v46 = *&v2[v19];
              if (!v46)
              {
LABEL_37:
                __break(1u);
                goto LABEL_38;
              }

              v47 = [v46 view];
              if (!v47)
              {
LABEL_38:
                __break(1u);
                goto LABEL_39;
              }

              v48 = v47;
              [v33 addSubview:v47];

              v49 = v97;
              Date.init()();
              Date.timeIntervalSince(_:)();
              v51 = v50;
              (*(v45 + 8))(v49, v99);
              sub_10008BEF0(v51);
              v52 = String._bridgeToObjectiveC()();

              [v33 setAccessibilityLabel:v52];

              v53 = v33;
              v54 = [v2 view];
              if (!v54)
              {
LABEL_39:
                __break(1u);
                goto LABEL_40;
              }

              v55 = v54;
              [v54 addSubview:v53];
            }

            else
            {
              v102 = 0;
              v103 = 0xE000000000000000;
              _StringGuts.grow(_:)(25);
              v62 = [v2 description];
              v63 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v65 = v64;

              v102 = v63;
              v103 = v65;
              v66._countAndFlagsBits = 0xD000000000000017;
              v66._object = 0x80000001000D9A80;
              String.append(_:)(v66);
              v55 = String._bridgeToObjectiveC()();

              [v95 logInfo:v55];
            }

            v67 = v99;

            v68 = objc_allocWithZone(sub_1000032D4(&unk_100116240, &unk_1000D3980));
            v102 = 0x402F000000000000;
            *&v68[*((swift_isaMask & *v68) + qword_10011F398 + 16) + 8] = 0;
            swift_unknownObjectWeakInit();
            v69 = UIHostingController.init(rootView:)();
            v70 = OBJC_IVAR____TtC10ClockAngel30AlarmApertureElementController_compressedSnoozeLeadingHost;
            v71 = *&v2[OBJC_IVAR____TtC10ClockAngel30AlarmApertureElementController_compressedSnoozeLeadingHost];
            *&v2[OBJC_IVAR____TtC10ClockAngel30AlarmApertureElementController_compressedSnoozeLeadingHost] = v69;
            v72 = v69;

            v73 = [v72 view];
            if (v73)
            {
              [v73 setTranslatesAutoresizingMaskIntoConstraints:0];

              v74 = v97;
              if (*&v2[v70])
              {
                [v2 addChildViewController:?];
                v75 = *&v2[v70];
                if (v75)
                {
                  [v75 didMoveToParentViewController:v2];
                  v76 = *&v2[OBJC_IVAR____TtC10ClockAngel30AlarmApertureElementController_leadingView];
                  if (!v76)
                  {
                    v102 = 0;
                    v103 = 0xE000000000000000;
                    _StringGuts.grow(_:)(24);
                    v86 = [v2 description];
                    v87 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                    v89 = v88;

                    v102 = v87;
                    v103 = v89;
                    v90._countAndFlagsBits = 0xD000000000000016;
                    v90._object = 0x80000001000D9AA0;
                    String.append(_:)(v90);
                    v85 = String._bridgeToObjectiveC()();

                    [v95 logInfo:v85];
LABEL_26:
                    v91 = v98;

                    IsVoiceOverRunning = UIAccessibilityIsVoiceOverRunning();
                    v93 = v96;
                    if (IsVoiceOverRunning || UIAccessibilityIsSwitchControlRunning() || _AXSCommandAndControlEnabled())
                    {
                      [objc_msgSend(v2 "systemApertureElementContext")];
                      swift_unknownObjectRelease();
                      sub_100056968(v91);
                    }

                    (*(v93 + 8))(v91, v67);
                    return;
                  }

                  v77 = *&v2[v70];
                  if (v77)
                  {
                    v78 = [v77 view];
                    if (v78)
                    {
                      v79 = v78;
                      [v76 addSubview:v78];

                      Date.init()();
                      Date.timeIntervalSince(_:)();
                      v81 = v80;
                      (*(v45 + 8))(v74, v67);
                      sub_10008BEF0(v81);
                      v82 = String._bridgeToObjectiveC()();

                      [v76 setAccessibilityLabel:v82];

                      v83 = v76;
                      v84 = [v2 view];
                      if (v84)
                      {
                        v85 = v84;
                        [v84 addSubview:v83];

                        goto LABEL_26;
                      }

LABEL_42:
                      __break(1u);
                      return;
                    }

LABEL_41:
                    __break(1u);
                    goto LABEL_42;
                  }

LABEL_40:
                  __break(1u);
                  goto LABEL_41;
                }

                goto LABEL_36;
              }

LABEL_35:
              __break(1u);
LABEL_36:
              __break(1u);
              goto LABEL_37;
            }

LABEL_34:
            __break(1u);
            goto LABEL_35;
          }

LABEL_33:
          __break(1u);
          goto LABEL_34;
        }
      }

      else
      {
        __break(1u);
      }

      __break(1u);
      goto LABEL_33;
    }

    v56 = objc_opt_self();
    v102 = 0;
    v103 = 0xE000000000000000;
    _StringGuts.grow(_:)(23);
    v57 = [v2 description];
    v58 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v60 = v59;

    v102 = v58;
    v103 = v60;
    v61._object = 0x80000001000D9A30;
    v61._countAndFlagsBits = 0xD000000000000015;
    String.append(_:)(v61);
    v100 = String._bridgeToObjectiveC()();

    [v56 logInfo:v100];
    v21 = v100;
  }
}

void sub_100056968(uint64_t a1)
{
  v3 = type metadata accessor for Date();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v6 = OBJC_IVAR____TtC10ClockAngel30AlarmApertureElementController_voiceOverTimer;
  if (!*&v1[OBJC_IVAR____TtC10ClockAngel30AlarmApertureElementController_voiceOverTimer])
  {
    v7 = objc_opt_self();
    (*(v4 + 16))(aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
    v8 = (*(v4 + 80) + 24) & ~*(v4 + 80);
    v9 = swift_allocObject();
    *(v9 + 16) = v1;
    (*(v4 + 32))(v9 + v8, aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v3);
    aBlock[4] = sub_100056FA8;
    aBlock[5] = v9;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100082B6C;
    aBlock[3] = &unk_100101360;
    v10 = _Block_copy(aBlock);
    v11 = v1;

    v12 = [v7 scheduledTimerWithTimeInterval:1 repeats:v10 block:1.0];
    _Block_release(v10);
    v13 = *&v1[v6];
    *&v1[v6] = v12;
  }
}

uint64_t sub_100056B5C(uint64_t a1, char *a2)
{
  v3 = type metadata accessor for Date();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *&a2[OBJC_IVAR____TtC10ClockAngel30AlarmApertureElementController_trailingView];
  if (v7)
  {
    Date.init()();
    Date.timeIntervalSince(_:)();
    v9 = v8;
    (*(v4 + 8))(v6, v3);
    sub_10008BEF0(v9);
    v10 = String._bridgeToObjectiveC()();

    [v7 setAccessibilityLabel:v10];
  }

  [objc_msgSend(a2 "systemApertureElementContext")];
  return swift_unknownObjectRelease();
}

void sub_100056CE4(uint64_t a1)
{
  sub_100056DFC(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_100056DFC(uint64_t a1)
{
  if (!qword_100119590)
  {
    type metadata accessor for URL();
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_100119590);
    }
  }
}

uint64_t sub_100056E5C()
{
  v1 = *(*v0 + OBJC_IVAR____TtC10ClockAngel30AlarmApertureElementController_observerId);

  return v1;
}

uint64_t sub_100056EE4()
{
  v1 = type metadata accessor for Date();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100056FA8(uint64_t a1)
{
  type metadata accessor for Date();
  v3 = *(v1 + 16);

  return sub_100056B5C(a1, v3);
}

double sub_10005701C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_100057034()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10005706C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TimerRunningCompressedTrailingView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000570D0(uint64_t a1)
{
  v2 = type metadata accessor for TimerRunningCompressedTrailingView(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t *sub_10005712C(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_100057190()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000571F8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_100057240()
{
  result = qword_100116270;
  if (!qword_100116270)
  {
    sub_10001C820(&unk_100115D90, qword_1000D3C00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100116270);
  }

  return result;
}

uint64_t sub_1000572A4()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_1000572EC()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100057390()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000573D0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000032D4(&unk_100119A20, &qword_1000D1DC0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100057440(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000032D4(&unk_100119A20, &qword_1000D1DC0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000574B0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000032D4(&unk_100119A20, &qword_1000D1DC0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100057520(uint64_t a1)
{
  v2 = sub_1000032D4(&unk_100119A20, &qword_1000D1DC0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100057598(uint64_t a1)
{
  v53 = sub_1000032D4(&qword_1001165B0, &unk_1000D3B70);
  v61 = *(v53 - 8);
  __chkstk_darwin(v53);
  v52 = &v50 - v3;
  v66 = sub_1000032D4(&qword_1001165B8, &qword_1000D4B00);
  v64 = *(v66 - 8);
  __chkstk_darwin(v66);
  v65 = &v50 - v4;
  v5 = type metadata accessor for CurrentLocationResult(0);
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v51 = &v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v54 = &v50 - v9;
  v10 = sub_1000032D4(&qword_1001165C0, &unk_1000D3B80);
  v11 = v10 - 8;
  __chkstk_darwin(v10);
  v13 = &v50 - v12;
  v14 = sub_1000032D4(&qword_1001165C8, &unk_1000D4DE0);
  v15 = __chkstk_darwin(v14 - 8);
  v55 = &v50 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v15);
  v58 = &v50 - v18;
  v19 = __chkstk_darwin(v17);
  v21 = &v50 - v20;
  __chkstk_darwin(v19);
  v23 = &v50 - v22;
  v24 = *(*v1 + 96);
  swift_beginAccess();
  v60 = a1;
  sub_10005C118(a1, v23, type metadata accessor for CurrentLocationResult);
  v59 = *(v6 + 56);
  (v59)(v23, 0, 1, v5);
  v25 = *(v11 + 56);
  v62 = v1;
  v63 = v24;
  sub_10002CFC4(v1 + v24, v13, &qword_1001165C8, &unk_1000D4DE0);
  sub_10002CFC4(v23, &v13[v25], &qword_1001165C8, &unk_1000D4DE0);
  v26 = *(v6 + 48);
  v27 = v26(v13, 1, v5);
  v56 = v6 + 48;
  if (v27 == 1)
  {
    sub_10002D02C(v23, &qword_1001165C8, &unk_1000D4DE0);
    if (v26(&v13[v25], 1, v5) == 1)
    {
      return sub_10002D02C(v13, &qword_1001165C8, &unk_1000D4DE0);
    }
  }

  else
  {
    sub_10002CFC4(v13, v21, &qword_1001165C8, &unk_1000D4DE0);
    if (v26(&v13[v25], 1, v5) != 1)
    {
      v47 = &v13[v25];
      v48 = v54;
      sub_10005C180(v47, v54, type metadata accessor for CurrentLocationResult);
      v49 = sub_10005BA9C(v21, v48);
      sub_10005BE04(v48, type metadata accessor for CurrentLocationResult);
      sub_10002D02C(v23, &qword_1001165C8, &unk_1000D4DE0);
      sub_10005BE04(v21, type metadata accessor for CurrentLocationResult);
      result = sub_10002D02C(v13, &qword_1001165C8, &unk_1000D4DE0);
      if (v49)
      {
        return result;
      }

      goto LABEL_7;
    }

    sub_10002D02C(v23, &qword_1001165C8, &unk_1000D4DE0);
    sub_10005BE04(v21, type metadata accessor for CurrentLocationResult);
  }

  sub_10002D02C(v13, &qword_1001165C0, &unk_1000D3B80);
LABEL_7:
  v29 = v58;
  sub_10005C118(v60, v58, type metadata accessor for CurrentLocationResult);
  v60 = v5;
  (v59)(v29, 0, 1, v5);
  v59 = v26;
  v31 = v62;
  v30 = v63;
  swift_beginAccess();
  sub_10004EC60(v29, v31 + v30, &qword_1001165C8, &unk_1000D4DE0);
  swift_endAccess();
  v32 = *(*v31 + 112);
  swift_beginAccess();
  v33 = *(v31 + v32);
  v34 = v33 + 64;
  v35 = 1 << *(v33 + 32);
  v36 = -1;
  if (v35 < 64)
  {
    v36 = ~(-1 << v35);
  }

  v37 = v36 & *(v33 + 64);
  v38 = (v35 + 63) >> 6;
  v58 = v64 + 16;
  v50 = (v61 + 8);
  v57 = (v64 + 8);
  v61 = v33;
  result = swift_bridgeObjectRetain_n();
  v39 = 0;
  v40 = v65;
  v41 = v55;
  while (v37)
  {
LABEL_17:
    (*(v64 + 16))(v40, *(v61 + 56) + *(v64 + 72) * (__clz(__rbit64(v37)) | (v39 << 6)), v66);
    sub_10002CFC4(v62 + v63, v41, &qword_1001165C8, &unk_1000D4DE0);
    if (v59(v41, 1, v60) == 1)
    {
      sub_10002D02C(v41, &qword_1001165C8, &unk_1000D4DE0);
    }

    else
    {
      v43 = v41;
      v44 = v51;
      sub_10005C180(v43, v51, type metadata accessor for CurrentLocationResult);
      sub_10005C118(v44, v54, type metadata accessor for CurrentLocationResult);
      v45 = v52;
      AsyncStream.Continuation.yield(_:)();
      v40 = v65;
      (*v50)(v45, v53);
      v46 = v44;
      v41 = v55;
      sub_10005BE04(v46, type metadata accessor for CurrentLocationResult);
    }

    v37 &= v37 - 1;
    result = (*v57)(v40, v66);
  }

  while (1)
  {
    v42 = v39 + 1;
    if (__OFADD__(v39, 1))
    {
      break;
    }

    if (v42 >= v38)
    {
    }

    v37 = *(v34 + 8 * v42);
    ++v39;
    if (v37)
    {
      v39 = v42;
      goto LABEL_17;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100057DA0(uint64_t a1)
{
  v84 = a1;
  v75 = sub_1000032D4(&qword_1001165F8, &unk_1000D3BB0);
  v80 = *(v75 - 8);
  __chkstk_darwin(v75);
  v74 = &v65 - v2;
  v79 = sub_1000032D4(&qword_100116600, &unk_1000D4E80);
  v85 = *(v79 - 8);
  __chkstk_darwin(v79);
  v87 = &v65 - v3;
  v82 = sub_1000032D4(&qword_100116608, &qword_1000D3BC0);
  v69 = *(v82 - 1);
  __chkstk_darwin(v82);
  v65 = &v65 - v4;
  v5 = sub_1000032D4(&qword_100116610, &qword_1000D3BC8);
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v73 = &v65 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v72 = &v65 - v10;
  __chkstk_darwin(v9);
  v66 = &v65 - v11;
  v67 = sub_1000032D4(&qword_100116618, &qword_1000D3BD0);
  __chkstk_darwin(v67);
  v68 = &v65 - v12;
  v13 = sub_1000032D4(&qword_100116620, &qword_1000D3BD8);
  v14 = v13 - 8;
  __chkstk_darwin(v13);
  v16 = &v65 - v15;
  v17 = sub_1000032D4(&qword_100116628, &qword_1000D3BE0);
  v18 = __chkstk_darwin(v17 - 8);
  v77 = &v65 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v18);
  v81 = &v65 - v21;
  v22 = __chkstk_darwin(v20);
  v24 = &v65 - v23;
  __chkstk_darwin(v22);
  v26 = &v65 - v25;
  v27 = *(*v1 + 96);
  swift_beginAccess();
  sub_10002CFC4(v84, v26, &qword_100116610, &qword_1000D3BC8);
  v28 = *(v6 + 56);
  v71 = (v6 + 56);
  v70 = v28;
  v28(v26, 0, 1, v5);
  v29 = *(v14 + 56);
  v86 = v1;
  v76 = v27;
  sub_10002CFC4(v1 + v27, v16, &qword_100116628, &qword_1000D3BE0);
  sub_10002CFC4(v26, &v16[v29], &qword_100116628, &qword_1000D3BE0);
  v30 = *(v6 + 48);
  v31 = v30(v16, 1, v5);
  v78 = v6 + 48;
  v83 = v5;
  if (v31 == 1)
  {
    sub_10002D02C(v26, &qword_100116628, &qword_1000D3BE0);
    if (v30(&v16[v29], 1, v5) == 1)
    {
      return sub_10002D02C(v16, &qword_100116628, &qword_1000D3BE0);
    }

    goto LABEL_6;
  }

  sub_10002CFC4(v16, v24, &qword_100116628, &qword_1000D3BE0);
  if (v30(&v16[v29], 1, v5) == 1)
  {
    sub_10002D02C(v26, &qword_100116628, &qword_1000D3BE0);
    sub_10002D02C(v24, &qword_100116610, &qword_1000D3BC8);
LABEL_6:
    sub_10002D02C(v16, &qword_100116620, &qword_1000D3BD8);
    goto LABEL_7;
  }

  v55 = *(v67 + 12);
  v67 = v24;
  v56 = v68;
  sub_10002CFC4(v24, v68, &qword_100116610, &qword_1000D3BC8);
  sub_10002C7C4(&v16[v29], v56 + v55, &qword_100116610, &qword_1000D3BC8);
  v57 = v69;
  v58 = *(v69 + 48);
  v59 = v82;
  if (v58(v56, 1, v82) == 1)
  {
    sub_10002D02C(v26, &qword_100116628, &qword_1000D3BE0);
    if (v58(v56 + v55, 1, v59) == 1)
    {
      sub_10002D02C(v56, &qword_100116610, &qword_1000D3BC8);
      sub_10002D02C(v67, &qword_100116610, &qword_1000D3BC8);
      return sub_10002D02C(v16, &qword_100116628, &qword_1000D3BE0);
    }
  }

  else
  {
    v60 = v66;
    sub_10002CFC4(v56, v66, &qword_100116610, &qword_1000D3BC8);
    if (v58(v56 + v55, 1, v59) != 1)
    {
      v61 = v56 + v55;
      v62 = v65;
      (*(v57 + 32))(v65, v61, v59);
      sub_10002DAD8(&qword_100116630, &qword_100116608, &qword_1000D3BC0, &protocol conformance descriptor for Measurement<A>);
      v63 = dispatch thunk of static Equatable.== infix(_:_:)();
      v64 = *(v57 + 8);
      v64(v62, v59);
      sub_10002D02C(v26, &qword_100116628, &qword_1000D3BE0);
      v64(v60, v59);
      sub_10002D02C(v56, &qword_100116610, &qword_1000D3BC8);
      sub_10002D02C(v67, &qword_100116610, &qword_1000D3BC8);
      result = sub_10002D02C(v16, &qword_100116628, &qword_1000D3BE0);
      v5 = v83;
      if (v63)
      {
        return result;
      }

      goto LABEL_7;
    }

    sub_10002D02C(v26, &qword_100116628, &qword_1000D3BE0);
    (*(v57 + 8))(v60, v59);
  }

  sub_10002D02C(v56, &qword_100116618, &qword_1000D3BD0);
  sub_10002D02C(v67, &qword_100116610, &qword_1000D3BC8);
  sub_10002D02C(v16, &qword_100116628, &qword_1000D3BE0);
  v5 = v83;
LABEL_7:
  v82 = v30;
  v33 = v81;
  sub_10002CFC4(v84, v81, &qword_100116610, &qword_1000D3BC8);
  v70(v33, 0, 1, v5);
  v34 = v86;
  v35 = v76;
  swift_beginAccess();
  v36 = &qword_100116628;
  sub_10004EC60(v33, v34 + v35, &qword_100116628, &qword_1000D3BE0);
  swift_endAccess();
  v37 = *(*v34 + 112);
  swift_beginAccess();
  v38 = *(v34 + v37);
  v39 = v38 + 64;
  v40 = 1 << *(v38 + 32);
  v41 = -1;
  if (v40 < 64)
  {
    v41 = ~(-1 << v40);
  }

  v42 = v41 & *(v38 + 64);
  v43 = (v40 + 63) >> 6;
  v81 = v85 + 16;
  v71 = (v80 + 1);
  v80 = (v85 + 8);
  v84 = v38;
  result = swift_bridgeObjectRetain_n();
  v44 = 0;
  v45 = v79;
  v46 = v77;
  while (v42)
  {
LABEL_17:
    (*(v85 + 16))(v87, *(v84 + 56) + *(v85 + 72) * (__clz(__rbit64(v42)) | (v44 << 6)), v45);
    sub_10002CFC4(v86 + v35, v46, v36, &qword_1000D3BE0);
    if ((v82)(v46, 1, v83) == 1)
    {
      v47 = v46;
      v48 = v36;
      v49 = &qword_1000D3BE0;
    }

    else
    {
      v51 = v72;
      sub_10002C7C4(v46, v72, &qword_100116610, &qword_1000D3BC8);
      sub_10002CFC4(v51, v73, &qword_100116610, &qword_1000D3BC8);
      v52 = v36;
      v53 = v74;
      v46 = v77;
      AsyncStream.Continuation.yield(_:)();
      v45 = v79;
      v54 = v53;
      v36 = v52;
      (*v71)(v54, v75);
      v47 = v51;
      v35 = v76;
      v48 = &qword_100116610;
      v49 = &qword_1000D3BC8;
    }

    sub_10002D02C(v47, v48, v49);
    v42 &= v42 - 1;
    result = (*v80)(v87, v45);
  }

  while (1)
  {
    v50 = v44 + 1;
    if (__OFADD__(v44, 1))
    {
      break;
    }

    if (v50 >= v43)
    {
    }

    v42 = *(v39 + 8 * v50);
    ++v44;
    if (v42)
    {
      v44 = v50;
      goto LABEL_17;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10005890C(void *a1, void *a2, uint64_t a3)
{
  sub_10002BB3C(0, &qword_100116588, NSObject_ptr);
  if ((static NSObject.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v6 = *(a3 + 20);

  return sub_10005B788(a1 + v6, a2 + v6);
}

id sub_10005899C()
{
  result = [objc_allocWithZone(type metadata accessor for LocationDataProvider(0)) init];
  qword_10011F4C0 = result;
  return result;
}

void sub_1000589D0(uint64_t a1@<X8>)
{
  v36 = a1;
  v2 = sub_1000032D4(&qword_100116638, &qword_1000D3BE8);
  v42 = *(v2 - 8);
  v43 = v2;
  __chkstk_darwin(v2);
  v41 = &v35 - v3;
  v4 = sub_1000032D4(&qword_100116640, &qword_1000D3BF0);
  v5 = __chkstk_darwin(v4 - 8);
  v45 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v5);
  v40 = &v35 - v8;
  __chkstk_darwin(v7);
  v10 = &v35 - v9;
  v11 = sub_1000032D4(&qword_1001165C8, &unk_1000D4DE0);
  v12 = __chkstk_darwin(v11 - 8);
  v14 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v35 - v15;
  v17 = *&v1[OBJC_IVAR____TtC10ClockAngel20LocationDataProvider_stream];
  v18 = *(*v17 + 104);
  v19 = *(v17 + v18);
  swift_beginAccess();

  v20 = v1;
  os_unfair_lock_lock(v19 + 4);
  swift_endAccess();
  v21 = *(*v17 + 120);
  v22 = *(v17 + v21);
  if ((v22 & 1) == 0)
  {
    *(v17 + v21) = 1;
  }

  v23 = v18;
  v24 = *(v17 + v18);
  swift_beginAccess();
  os_unfair_lock_unlock(v24 + 4);
  swift_endAccess();
  v25 = type metadata accessor for CurrentLocationResult(0);
  v26 = *(*(v25 - 8) + 56);
  v26(v16, 1, 1, v25);
  if ((v22 & 1) == 0)
  {
    sub_100058F40(v14);
    v26(v14, 0, 1, v25);
    sub_10004EC60(v14, v16, &qword_1001165C8, &unk_1000D4DE0);
  }

  v44 = v20;
  v27 = sub_1000032D4(&qword_100116648, &qword_1000D3BF8);
  v39 = *(v27 - 8);
  v37 = *(v39 + 56);
  v38 = v39 + 56;
  v37(v10, 1, 1, v27);
  v28 = v23;
  v29 = *(v17 + v23);
  swift_beginAccess();
  os_unfair_lock_lock(v29 + 4);
  v30 = swift_endAccess();
  __chkstk_darwin(v30);
  *(&v35 - 2) = v17;
  *(&v35 - 1) = v16;
  v35 = v16;
  (*(v42 + 104))(v41, enum case for AsyncStream.Continuation.BufferingPolicy.unbounded<A>(_:), v43);
  v31 = v40;
  AsyncStream.init(_:bufferingPolicy:_:)();
  sub_10002D02C(v10, &qword_100116640, &qword_1000D3BF0);
  v37(v31, 0, 1, v27);
  sub_10002C7C4(v31, v10, &qword_100116640, &qword_1000D3BF0);
  v32 = *(v17 + v28);
  swift_beginAccess();
  os_unfair_lock_unlock(v32 + 4);
  swift_endAccess();
  v33 = v45;
  v34 = v39;
  sub_10002CFC4(v10, v45, &qword_100116640, &qword_1000D3BF0);
  if ((*(v34 + 48))(v33, 1, v27) == 1)
  {

    __break(1u);
  }

  else
  {

    sub_10002D02C(v10, &qword_100116640, &qword_1000D3BF0);
    (*(v34 + 32))(v36, v33, v27);
    sub_10002D02C(v35, &qword_1001165C8, &unk_1000D4DE0);
  }
}

uint64_t sub_100058F40@<X0>(uint64_t a1@<X8>)
{
  v17 = a1;
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for DispatchQoS();
  v6 = *(v16 - 8);
  __chkstk_darwin(v16);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *&v1[OBJC_IVAR____TtC10ClockAngel20LocationDataProvider_locationQueue];
  v9 = swift_allocObject();
  *(v9 + 16) = v1;
  aBlock[4] = sub_10005C228;
  aBlock[5] = v9;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10004B270;
  aBlock[3] = &unk_100101558;
  v10 = _Block_copy(aBlock);
  v11 = v1;
  static DispatchQoS.unspecified.getter();
  v18 = &_swiftEmptyArrayStorage;
  sub_10005C248(&qword_100116260, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1000032D4(&unk_100115D90, qword_1000D3C00);
  sub_10002DAD8(&qword_100116270, &unk_100115D90, qword_1000D3C00, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v10);
  (*(v3 + 8))(v5, v2);
  (*(v6 + 8))(v8, v16);

  v12 = type metadata accessor for CurrentLocation(0);
  v13 = v17;
  (*(*(v12 - 8) + 56))(v17, 1, 1, v12);
  result = type metadata accessor for CurrentLocationResult(0);
  *(v13 + *(result + 20)) = 1;
  return result;
}

id sub_10005926C()
{
  v1 = OBJC_IVAR____TtC10ClockAngel20LocationDataProvider____lazy_storage___locationManager;
  v2 = *(v0 + OBJC_IVAR____TtC10ClockAngel20LocationDataProvider____lazy_storage___locationManager);
  v3 = v2;
  if (v2 == 1)
  {
    v3 = sub_1000592DC(v0);
    v4 = *(v0 + v1);
    *(v0 + v1) = v3;
    v5 = v3;
    sub_10005BE64(v4);
  }

  sub_10005BE74(v2);
  return v3;
}

id sub_1000592DC(uint64_t a1)
{
  v2 = *(a1 + OBJC_IVAR____TtC10ClockAngel20LocationDataProvider_locationQueue);
  v3 = objc_allocWithZone(CLLocationManager);
  v4 = v2;
  v5 = String._bridgeToObjectiveC()();
  v6 = [v3 initWithEffectiveBundleIdentifier:v5 delegate:a1 onQueue:v4];

  if (v6)
  {
    swift_beginAccess();
    sub_1000032D4(&qword_1001164D0, &qword_1000D3A48);
    Measurement.value.getter();
    v8 = v7;
    swift_endAccess();
    [v6 setDistanceFilter:v8];
    [v6 setDesiredAccuracy:kCLLocationAccuracyKilometer];
  }

  else
  {
    v9 = objc_opt_self();
    _StringGuts.grow(_:)(66);
    v10._countAndFlagsBits = 0xD000000000000040;
    v10._object = 0x80000001000DA170;
    String.append(_:)(v10);
    v11._object = 0x80000001000D8A60;
    v11._countAndFlagsBits = 0xD000000000000011;
    String.append(_:)(v11);
    v12 = String._bridgeToObjectiveC()();

    [v9 logInfo:v12];
  }

  return v6;
}

id sub_10005949C()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v28 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v28);
  v27[2] = v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v7 - 8);
  v8 = sub_1000032D4(&qword_100116398, &unk_1000D3A00);
  __chkstk_darwin(v8 - 8);
  v10 = v27 - v9;
  v11 = OBJC_IVAR____TtC10ClockAngel20LocationDataProvider__isLocationUpdating;
  sub_1000032D4(&qword_1001165D0, &qword_1000D3B90);
  v12 = swift_allocObject();
  v27[1] = type metadata accessor for CPUnfairLock();
  v13 = swift_allocObject();
  *(v13 + 16) = 0;
  *(v12 + 16) = v13;
  *(v12 + 24) = 0;
  *&v1[v11] = v12;
  v14 = OBJC_IVAR____TtC10ClockAngel20LocationDataProvider__location;
  v15 = type metadata accessor for CurrentLocation(0);
  (*(*(v15 - 8) + 56))(v10, 1, 1, v15);
  sub_1000032D4(&qword_1001165D8, &qword_1000D3B98);
  v16 = swift_allocObject();
  v17 = swift_allocObject();
  *(v17 + 16) = 0;
  v16[2] = v17;
  sub_10002C7C4(v10, v16 + *(*v16 + 96), &qword_100116398, &unk_1000D3A00);
  *&v1[v14] = v16;
  v18 = OBJC_IVAR____TtC10ClockAngel20LocationDataProvider_locationQueue;
  sub_10002BB3C(0, &qword_100115D80, OS_dispatch_queue_ptr);
  static DispatchQoS.userInitiated.getter();
  (*(v4 + 104))(v6, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v3);
  v31 = &_swiftEmptyArrayStorage;
  sub_10005C248(&qword_1001176E0, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_1000032D4(&unk_1001165E0, &qword_1000D3BA0);
  sub_10002DAD8(&qword_1001176F0, &unk_1001165E0, &qword_1000D3BA0, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  *&v1[v18] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v19 = OBJC_IVAR____TtC10ClockAngel20LocationDataProvider_stream;
  sub_1000032D4(&qword_1001165F0, &qword_1000D3BA8);
  v20 = swift_allocObject();
  v21 = *(*v20 + 96);
  v22 = type metadata accessor for CurrentLocationResult(0);
  (*(*(v22 - 8) + 56))(v20 + v21, 1, 1, v22);
  v23 = *(*v20 + 104);
  v24 = swift_allocObject();
  *(v24 + 16) = 0;
  *(v20 + v23) = v24;
  *(v20 + *(*v20 + 112)) = &_swiftEmptyDictionarySingleton;
  *(v20 + *(*v20 + 120)) = 0;
  *&v1[v19] = v20;
  v25 = [objc_opt_self() meters];
  sub_10002BB3C(0, &qword_100116330, NSUnitLength_ptr);
  Measurement.init(value:unit:)();
  *&v1[OBJC_IVAR____TtC10ClockAngel20LocationDataProvider____lazy_storage___locationManager] = 1;
  v30.receiver = v1;
  v30.super_class = ObjectType;
  return objc_msgSendSuper2(&v30, "init");
}

id sub_100059A1C()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_100059B44(uint64_t a1)
{
  sub_100059BFC(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_100059BFC(uint64_t a1)
{
  if (!qword_100116328)
  {
    sub_10002BB3C(255, &qword_100116330, NSUnitLength_ptr);
    v1 = type metadata accessor for Measurement();
    if (!v2)
    {
      atomic_store(v1, &qword_100116328);
    }
  }
}

void sub_100059C64()
{
  if (sub_100059D20())
  {
    v0 = objc_opt_self();
    v1 = String._bridgeToObjectiveC()();
    [v0 logInfo:v1];

    v2 = sub_10005926C();
    [v2 startUpdatingLocation];
  }
}

uint64_t sub_100059D20()
{
  result = sub_10005926C();
  if (result)
  {
    v2 = result;
    v3 = [result _authorizationStatus];
    if (v3 <= 1)
    {
      if (!v3)
      {
        v8 = objc_opt_self();
        v9 = String._bridgeToObjectiveC()();
        [v8 logInfo:v9];

        v10 = *(v0 + OBJC_IVAR____TtC10ClockAngel20LocationDataProvider____lazy_storage___locationManager);
        if (v10)
        {
          v11 = v10;
          v12 = String._bridgeToObjectiveC()();
          [v8 logInfo:v12];
LABEL_16:

          [v11 requestWhenInUseAuthorizationWithPrompt];
          sub_10005BE64(v10);
          return 0;
        }

LABEL_10:

        return 0;
      }

      if (v3 != 1)
      {
LABEL_14:
        v10 = *(v0 + OBJC_IVAR____TtC10ClockAngel20LocationDataProvider____lazy_storage___locationManager);
        if (v10)
        {
          v13 = objc_opt_self();
          v11 = v10;
          v12 = String._bridgeToObjectiveC()();
          [v13 logInfo:v12];
          goto LABEL_16;
        }

        goto LABEL_10;
      }
    }

    else if (v3 != 2)
    {
      if (v3 == 4 || v3 == 3)
      {
        v6 = objc_opt_self();
        v7 = String._bridgeToObjectiveC()();
        [v6 logInfo:v7];

        return 1;
      }

      goto LABEL_14;
    }

    v4 = objc_opt_self();
    v5 = String._bridgeToObjectiveC()();
    [v4 logInfo:v5];

    goto LABEL_10;
  }

  return result;
}

void sub_100059FA0(uint64_t a1)
{
  v51 = a1;
  v54 = type metadata accessor for CurrentLocationResult(0);
  __chkstk_darwin(v54);
  v55 = &v48 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = type metadata accessor for CurrentLocation(0);
  v3 = *(v53 - 8);
  __chkstk_darwin(v53);
  v49 = &v48 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1000032D4(&unk_100116598, &unk_1000D3B58);
  __chkstk_darwin(v5 - 8);
  v7 = &v48 - v6;
  v8 = sub_1000032D4(&qword_1001165A8, &qword_1000D3B68);
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = (&v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = __chkstk_darwin(v10);
  v48 = (&v48 - v14);
  __chkstk_darwin(v13);
  v52 = &v48 - v15;
  v16 = type metadata accessor for DispatchPredicate();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = (&v48 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = *(v1 + OBJC_IVAR____TtC10ClockAngel20LocationDataProvider_locationQueue);
  *v19 = v20;
  (*(v17 + 104))(v19, enum case for DispatchPredicate.onQueue(_:), v16);
  v21 = v20;
  LOBYTE(v20) = _dispatchPreconditionTest(_:)();
  (*(v17 + 8))(v19, v16);
  if (v20)
  {
    v22 = *(v1 + OBJC_IVAR____TtC10ClockAngel20LocationDataProvider__isLocationUpdating);
    v23 = *(v22 + 16);
    swift_beginAccess();

    os_unfair_lock_lock(v23 + 4);
    swift_endAccess();
    swift_beginAccess();
    *(v22 + 24) = 0;
    v24 = *(v22 + 16);
    swift_beginAccess();
    os_unfair_lock_unlock(v24 + 4);
    swift_endAccess();

    v50 = v1;
    v25 = sub_10005926C();
    [v25 stopUpdatingLocation];

    sub_10002CFC4(v51, v7, &unk_100116598, &unk_1000D3B58);
    if ((*(v9 + 48))(v7, 1, v8) == 1)
    {
      sub_10002D02C(v7, &unk_100116598, &unk_1000D3B58);
      v26 = objc_opt_self();
      v27 = String._bridgeToObjectiveC()();
      [v26 logInfo:v27];

      v28 = *(v50 + OBJC_IVAR____TtC10ClockAngel20LocationDataProvider_stream);
      v29 = v55;
      (*(v3 + 56))(v55, 1, 1, v53);
      *(v29 + *(v54 + 20)) = 0;
      v30 = *(*v28 + 104);
      v31 = *(v28 + v30);
      swift_beginAccess();

      os_unfair_lock_lock(v31 + 4);
      swift_endAccess();
      sub_100057598(v29);
      v32 = *(v28 + v30);
      swift_beginAccess();
      os_unfair_lock_unlock(v32 + 4);
      swift_endAccess();
      sub_10005BE04(v29, type metadata accessor for CurrentLocationResult);
    }

    else
    {
      v33 = v7;
      v34 = v52;
      sub_10002C7C4(v33, v52, &qword_1001165A8, &qword_1000D3B68);
      v35 = v48;
      sub_10002CFC4(v34, v48, &qword_1001165A8, &qword_1000D3B68);
      v36 = *v35;
      v51 = *(v8 + 48);
      v37 = v53;
      v38 = *(v53 + 20);
      sub_10002CFC4(v34, v12, &qword_1001165A8, &qword_1000D3B68);

      v39 = *(v8 + 48);
      v40 = sub_1000032D4(&qword_1001164D0, &qword_1000D3A48);
      v41 = *(v40 - 8);
      v42 = v49;
      (*(v41 + 32))(&v49[v38], v12 + v39, v40);
      (*(v41 + 56))(&v42[v38], 0, 1, v40);
      *v42 = v36;
      (*(v41 + 8))(v35 + v51, v40);
      v43 = *(v50 + OBJC_IVAR____TtC10ClockAngel20LocationDataProvider_stream);
      v44 = v55;
      sub_10005C118(v42, v55, type metadata accessor for CurrentLocation);
      (*(v3 + 56))(v44, 0, 1, v37);
      *(v44 + *(v54 + 20)) = 2;
      v45 = *(*v43 + 104);
      v46 = *(v43 + v45);
      swift_beginAccess();

      os_unfair_lock_lock(v46 + 4);
      swift_endAccess();
      sub_100057598(v44);
      v47 = *(v43 + v45);
      swift_beginAccess();
      os_unfair_lock_unlock(v47 + 4);
      swift_endAccess();
      sub_10005BE04(v44, type metadata accessor for CurrentLocationResult);
      sub_10005BE04(v42, type metadata accessor for CurrentLocation);
      sub_10002D02C(v52, &qword_1001165A8, &qword_1000D3B68);
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_10005A70C(void *a1, unint64_t a2)
{
  v5 = sub_1000032D4(&unk_100116598, &unk_1000D3B58);
  __chkstk_darwin(v5 - 8);
  v7 = (v33 - v6);
  v8 = type metadata accessor for DispatchPredicate();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = (v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = *(v2 + OBJC_IVAR____TtC10ClockAngel20LocationDataProvider_locationQueue);
  *v11 = v12;
  (*(v9 + 104))(v11, enum case for DispatchPredicate.onQueue(_:), v8);
  v13 = v12;
  LOBYTE(v12) = _dispatchPreconditionTest(_:)();
  (*(v9 + 8))(v11, v8);
  if (v12)
  {
    v14 = *(v2 + OBJC_IVAR____TtC10ClockAngel20LocationDataProvider__isLocationUpdating);
    v15 = *(v14 + 16);
    swift_beginAccess();

    os_unfair_lock_lock(v15 + 4);
    swift_endAccess();
    swift_beginAccess();
    *(v14 + 24) = 1;
    v16 = *(v14 + 16);
    swift_beginAccess();
    os_unfair_lock_unlock(v16 + 4);
    swift_endAccess();

    if (!(a2 >> 62))
    {
      v17 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v17)
      {
        goto LABEL_4;
      }

LABEL_15:
      v30 = objc_opt_self();
      v31 = String._bridgeToObjectiveC()();
      [v30 logInfo:v31];

      v32 = sub_1000032D4(&qword_1001165A8, &qword_1000D3B68);
      (*(*(v32 - 8) + 56))(v7, 1, 1, v32);
      sub_100059FA0(v7);
LABEL_16:
      sub_10002D02C(v7, &unk_100116598, &unk_1000D3B58);
      return;
    }
  }

  else
  {
    __break(1u);
  }

  v17 = _CocoaArrayWrapper.endIndex.getter();
  if (!v17)
  {
    goto LABEL_15;
  }

LABEL_4:
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
    goto LABEL_18;
  }

  if ((a2 & 0xC000000000000001) != 0)
  {
LABEL_18:
    v20 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_9:
    v21 = v20;
    if (([a1 _limitsPrecision] & 1) == 0)
    {
      [v21 horizontalAccuracy];
      if (v22 > 1500.0)
      {

        return;
      }
    }

    v23 = objc_opt_self();
    v34 = 0;
    v35 = 0xE000000000000000;
    _StringGuts.grow(_:)(39);

    v34 = 0xD000000000000025;
    v35 = 0x80000001000DA220;
    v33[1] = v21;
    sub_10002BB3C(0, &unk_1001164A0, CLLocation_ptr);
    v24 = v21;
    v25._countAndFlagsBits = String.init<A>(reflecting:)();
    String.append(_:)(v25);

    v26 = String._bridgeToObjectiveC()();

    [v23 logInfo:v26];

    v27 = sub_1000032D4(&qword_1001165A8, &qword_1000D3B68);
    *v7 = v24;
    v28 = v24;
    [v28 horizontalAccuracy];
    v29 = [objc_opt_self() meters];
    sub_10002BB3C(0, &qword_100116330, NSUnitLength_ptr);
    Measurement.init(value:unit:)();
    (*(*(v27 - 8) + 56))(v7, 0, 1, v27);
    sub_100059FA0(v7);

    goto LABEL_16;
  }

  if ((v19 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v19 < *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v20 = *(a2 + 8 * v19 + 32);
    goto LABEL_9;
  }

  __break(1u);
}

void sub_10005AD0C(void *a1)
{
  v3 = type metadata accessor for DispatchPredicate();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v14[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = *(v1 + OBJC_IVAR____TtC10ClockAngel20LocationDataProvider_locationQueue);
  *v6 = v7;
  (*(v4 + 104))(v6, enum case for DispatchPredicate.onQueue(_:), v3);
  v8 = v7;
  LOBYTE(v7) = _dispatchPreconditionTest(_:)();
  (*(v4 + 8))(v6, v3);
  if (v7)
  {
    v9 = objc_opt_self();
    v10 = String._bridgeToObjectiveC()();
    [v9 logInfo:v10];

    if (sub_100059D20())
    {
      v11 = *(v1 + OBJC_IVAR____TtC10ClockAngel20LocationDataProvider__isLocationUpdating);
      v12 = *(v11 + 16);
      swift_beginAccess();

      os_unfair_lock_lock(v12 + 4);
      swift_endAccess();
      swift_beginAccess();
      LOBYTE(v12) = *(v11 + 24);
      v13 = *(v11 + 16);
      swift_beginAccess();
      os_unfair_lock_unlock(v13 + 4);
      swift_endAccess();

      if ((v12 & 1) == 0)
      {
        [a1 startUpdatingLocation];
      }
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_10005AF88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000032D4(&qword_100116398, &unk_1000D3A00);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 5)
    {
      return v10 - 4;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_10005B060(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1000032D4(&qword_100116398, &unk_1000D3A00);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 4;
  }

  return result;
}

void sub_10005B144(uint64_t a1, __n128 a2)
{
  sub_10005B1B8(319, a2);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_10005B1B8(uint64_t a1, __n128 a2)
{
  if (!qword_100116408)
  {
    type metadata accessor for CurrentLocation(255);
    v2 = type metadata accessor for Optional();
    if (!v3)
    {
      atomic_store(v2, &qword_100116408);
    }
  }
}

uint64_t getEnumTagSinglePayload for AlarmButtonAction(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}