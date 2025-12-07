id sub_10009C1AC(id *a1, char *a2)
{
  if (*a1)
  {
    v3 = *a1;
    if ([v3 playbackState] == 2)
    {
      sub_10009C234();

      goto LABEL_6;
    }
  }

  sub_10009C354();
LABEL_6:
  v4 = *&a2[OBJC_IVAR____TtC5Media29RadioNowPlayingViewController_cachedArtwork];
  *&a2[OBJC_IVAR____TtC5Media29RadioNowPlayingViewController_cachedArtwork] = 0;

  return [a2 reloadData];
}

void sub_10009C234()
{
  v1 = OBJC_IVAR____TtC5Media29RadioNowPlayingViewController_loadingTimer;
  [*(v0 + OBJC_IVAR____TtC5Media29RadioNowPlayingViewController_loadingTimer) invalidate];
  v2 = objc_opt_self();
  v3 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v7[4] = sub_1000A90D4;
  v7[5] = v3;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 1107296256;
  v7[2] = sub_100031AE4;
  v7[3] = &unk_1000E2F28;
  v4 = _Block_copy(v7);

  v5 = [v2 scheduledTimerWithTimeInterval:0 repeats:v4 block:3.0];
  _Block_release(v4);
  v6 = *(v0 + v1);
  *(v0 + v1) = v5;
}

void sub_10009C354()
{
  v1 = OBJC_IVAR____TtC5Media29RadioNowPlayingViewController_loadingTimer;
  [*&v0[OBJC_IVAR____TtC5Media29RadioNowPlayingViewController_loadingTimer] invalidate];
  v2 = *&v0[v1];
  *&v0[v1] = 0;

  v3 = objc_opt_self();
  [v3 begin];
  v4 = [v0 songDetailsView];
  v5 = [v4 titleView];

  v6 = [v5 layer];
  [v6 removeAllAnimations];

  [v3 commit];
  v7 = [v0 songDetailsView];
  v8 = [v7 titleView];

  [v8 setAlpha:1.0];
}

uint64_t sub_10009C49C@<X0>(unint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  if (*a1 >> 62)
  {
    v3 = a2;
    result = _CocoaArrayWrapper.endIndex.getter();
    a2 = v3;
  }

  else
  {
    result = *((*a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  *a2 = result > 1;
  return result;
}

void sub_10009C4F8(unsigned __int8 *a1)
{
  v1 = *a1;
  v2 = sub_100099B4C();
  [v2 setEnabled:v1];

  v3 = sub_100099C50();
  [v3 setEnabled:v1];
}

void sub_10009C580(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = [Strong navigationController];
    if (v4)
    {
      v5 = v4;
    }
  }
}

void sub_10009C62C(void *a1, uint64_t a2, uint64_t a3, const char **a4, uint64_t a5)
{
  v13.receiver = a1;
  v13.super_class = type metadata accessor for RadioNowPlayingViewController();
  v8 = *a4;
  v9 = v13.receiver;
  objc_msgSendSuper2(&v13, v8, a3);
  v10 = [v9 navigationController];
  if (v10)
  {
    v11 = v10;
    v12 = [v10 navigationBar];

    [v12 setBarStyle:a5];
  }
}

void sub_10009C6EC(uint64_t a1)
{
  v17.receiver = v1;
  v17.super_class = type metadata accessor for RadioNowPlayingViewController();
  objc_msgSendSuper2(&v17, "viewDidLoad");
  [v1 setDelegate:v1];
  [v1 setDataSource:v1];
  v2 = [v1 transportControlView];
  v3 = [v2 playPauseButton];

  if (!v3)
  {
    __break(1u);
    goto LABEL_6;
  }

  v4 = String._bridgeToObjectiveC()();
  [v3 setAccessibilityIdentifier:v4];

  v5 = [v1 transportControlView];
  v6 = String._bridgeToObjectiveC()();
  [v5 setPlayButtonImageName:v6];

  v7 = [v1 transportControlView];
  v8 = String._bridgeToObjectiveC()();
  [v7 setPauseButtonImageName:v8];

  v9 = [v1 transportControlView];
  v10 = [v9 leftButton];

  if (!v10)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v11 = String._bridgeToObjectiveC()();
  [v10 setAccessibilityIdentifier:v11];

  v12 = [v1 transportControlView];
  v13 = [v12 fastForwardButton];

  if (v13)
  {
    v14 = String._bridgeToObjectiveC()();
    [v13 setAccessibilityIdentifier:v14];

    v15 = [v1 songDetailsView];
    v16 = [v15 albumArtistLabelButton];

    [v16 setPrefersWhiteInDefaultState:1];
    return;
  }

LABEL_7:
  __break(1u);
}

uint64_t sub_10009CA74()
{
  v1 = v0;
  v40 = _swiftEmptyArrayStorage;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = *(Strong + OBJC_IVAR____TtC5Media15RadioCarManager_nowPlayingManager);
    v4 = Strong;

    if (v3)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      if (v38)
      {
        v5 = [v38 identifier];

        v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v8 = v7;

        v9 = swift_unknownObjectWeakLoadStrong();
        if (v9 && (v10 = *(v9 + OBJC_IVAR____TtC5Media15RadioCarManager_nowPlayingManager), v11 = v9, , v11, v10))
        {
          swift_getKeyPath();
          swift_getKeyPath();
          static Published.subscript.getter();

          v12 = [v38 identifier];

          static String._unconditionallyBridgeFromObjectiveC(_:)();
          v14 = v13;
        }

        else
        {
          v14 = 0;
        }

        v15 = swift_unknownObjectWeakLoadStrong();
        if (v15)
        {
          v16 = v15;
          if (sub_100010290())
          {
            sub_10009A09C();
            specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
            if (*((v40 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v40 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            }

            specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          }
        }

        if (_UISolariumEnabled())
        {
          sub_100005A50(0, &unk_1000EBD80, UIBarButtonItem_ptr);
          v41.value.super.super.isa = 0;
          v41.is_nil = 0;
          isa = UIBarButtonItem.init(systemItem:primaryAction:menu:)(UIBarButtonSystemItemFixedSpace, v41, v42).super.super.isa;
          [(objc_class *)isa setWidth:0.0];
          v18 = isa;
          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          if (*((v40 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v40 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        }

        if (v14)
        {
          if (qword_1000EAD00 != -1)
          {
            swift_once();
          }

          v19 = type metadata accessor for Logger();
          sub_100006928(v19, qword_1000F3BD0);

          v20 = Logger.logObject.getter();
          v21 = static os_log_type_t.debug.getter();

          if (os_log_type_enabled(v20, v21))
          {
            v22 = swift_slowAlloc();
            v39 = swift_slowAlloc();
            *v22 = 136446466;
            v23 = sub_100043AF0(v6, v8, &v39);

            *(v22 + 4) = v23;
            *(v22 + 12) = 2082;
            sub_10000368C(&unk_1000EC2C8, &qword_1000B5750);
            v24 = Optional<A>.description.getter();
            v26 = v25;

            v27 = sub_100043AF0(v24, v26, &v39);

            *(v22 + 14) = v27;
            _os_log_impl(&_mh_execute_header, v20, v21, "Current source %{public}s differs from target %{public}s", v22, 0x16u);
            swift_arrayDestroy();
          }

          else
          {
          }
        }

        else
        {

          v28 = swift_unknownObjectWeakLoadStrong();
          if (v28)
          {
            v29 = *(v28 + OBJC_IVAR____TtC5Media15RadioCarManager_nowPlayingManager);
            v30 = v28;

            if (v29)
            {
              swift_getKeyPath();
              swift_getKeyPath();
              static Published.subscript.getter();

              v31 = [v38 mediaSourceSemanticType];

              if (v31 == 3)
              {
                v32 = swift_unknownObjectWeakLoadStrong();
                if (v32)
                {
                  v33 = v32;
                  v34 = [*(v32 + OBJC_IVAR____TtC5Media15RadioCarManager_carManager) currentCar];

                  if (v34)
                  {
                    v35 = [v34 nowPlayingInformation];

                    if (v35)
                    {
                      v36 = [v35 nowPlaying];

                      if (v36)
                      {
                        if ([v36 hasSetArtistSongNotification] && (objc_msgSend(v36, "setArtistSongNotificationDisabled") & 1) == 0)
                        {
                          sub_10009A254();
                          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
                          if (*((v40 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v40 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                          {
                            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
                          }

                          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
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
  }

  sub_10009D0E0(v1, &v40);
}

void sub_10009D0E0(char *a1, uint64_t *a2)
{
  v3 = *&a1[OBJC_IVAR____TtC5Media29RadioNowPlayingViewController_sourcePickerButton];
  if (v3)
  {
    v4 = a1;
    v5 = objc_allocWithZone(UIBarButtonItem);
    v6 = v3;
    v7 = [v5 initWithCustomView:v6];
    [v7 setSharesBackground:0];
    v8 = v7;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((*a2 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*a2 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

    a1 = v4;
  }

  v9 = [a1 navigationItem];
  sub_100005A50(0, &unk_1000EBD80, UIBarButtonItem_ptr);

  isa = Array._bridgeToObjectiveC()().super.isa;

  [v9 setRightBarButtonItems:isa];
}

id sub_10009D28C(void *a1, uint64_t a2, void *a3, void (*a4)(void))
{
  v6 = a3;
  v7 = a1;
  a4();
  v9 = v8;

  if (v9)
  {
    v10 = String._bridgeToObjectiveC()();
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

uint64_t sub_10009D5D4()
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = result;
    v2 = [*(result + OBJC_IVAR____TtC5Media15RadioCarManager_carManager) currentCar];

    if (!v2)
    {
      return 0;
    }

    v3 = [v2 nowPlayingInformation];

    if (!v3)
    {
      return 0;
    }

    v4 = [v3 nowPlaying];

    if (!v4)
    {
      return 0;
    }

    if (sub_10009DCDC())
    {
LABEL_6:

      return 0;
    }

    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v6 = *(Strong + OBJC_IVAR____TtC5Media15RadioCarManager_nowPlayingManager);
      v7 = Strong;

      if (v6)
      {
        swift_getKeyPath();
        swift_getKeyPath();
        static Published.subscript.getter();

        if (v15)
        {
          v8 = [v15 mediaSourceSemanticType];
          if (v8 <= 8 && ((1 << v8) & 0x14F) != 0)
          {
            v9 = swift_unknownObjectWeakLoadStrong();
            if (!v9 || (v10 = *(v9 + OBJC_IVAR____TtC5Media15RadioCarManager_nowPlayingManager), v11 = v9, , v11, !v10))
            {

              return 1;
            }

            swift_getKeyPath();
            swift_getKeyPath();
            static Published.subscript.getter();

            v12 = [v15 mediaSourceSemanticType];

            if (v12 != 3)
            {
              goto LABEL_28;
            }
          }

          else
          {
          }
        }
      }
    }

    if (sub_10009DE14())
    {
      v13 = [v4 jumpBackwardDisabled];
    }

    else
    {
      if ([v4 hasPreviousItem] && (objc_msgSend(v4, "previousItemDisabled") & 1) == 0)
      {
LABEL_28:

        return 1;
      }

      if (![v4 hasBeginSeekBackward])
      {
        goto LABEL_6;
      }

      v13 = [v4 beginSeekBackwardDisabled];
    }

    v14 = v13;

    return v14 ^ 1;
  }

  return result;
}

uint64_t sub_10009D894()
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = result;
    v2 = [*(result + OBJC_IVAR____TtC5Media15RadioCarManager_carManager) currentCar];

    if (v2)
    {
      v3 = [v2 nowPlayingInformation];

      if (v3)
      {
        v4 = [v3 nowPlaying];

        if (v4)
        {
          if ((sub_1000A5390() & 1) == 0)
          {
            goto LABEL_11;
          }

          if ([v4 hasStop] && (objc_msgSend(v4, "stopDisabled") & 1) == 0)
          {

            return 1;
          }

          if ([v4 hasPause])
          {
            v5 = [v4 pauseDisabled];

            if ((v5 & 1) == 0)
            {
              return 1;
            }
          }

          else
          {
LABEL_11:
          }
        }
      }
    }

    return 0;
  }

  return result;
}

uint64_t sub_10009D9C8()
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = result;
    v2 = [*(result + OBJC_IVAR____TtC5Media15RadioCarManager_carManager) currentCar];

    if (!v2)
    {
      return 0;
    }

    v3 = [v2 nowPlayingInformation];

    if (!v3)
    {
      return 0;
    }

    v4 = [v3 nowPlaying];

    if (!v4)
    {
      return 0;
    }

    if (sub_10009DCDC())
    {
LABEL_6:

      return 0;
    }

    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v6 = *(Strong + OBJC_IVAR____TtC5Media15RadioCarManager_nowPlayingManager);
      v7 = Strong;

      if (v6)
      {
        swift_getKeyPath();
        swift_getKeyPath();
        static Published.subscript.getter();

        if (v15)
        {
          v8 = [v15 mediaSourceSemanticType];
          if (v8 <= 8 && ((1 << v8) & 0x14F) != 0)
          {
            v9 = swift_unknownObjectWeakLoadStrong();
            if (!v9 || (v10 = *(v9 + OBJC_IVAR____TtC5Media15RadioCarManager_nowPlayingManager), v11 = v9, , v11, !v10))
            {

              return 1;
            }

            swift_getKeyPath();
            swift_getKeyPath();
            static Published.subscript.getter();

            v12 = [v15 mediaSourceSemanticType];

            if (v12 != 3)
            {
              goto LABEL_28;
            }
          }

          else
          {
          }
        }
      }
    }

    if (sub_10009DFEC())
    {
      v13 = [v4 jumpForwardDisabled];
    }

    else
    {
      if ([v4 hasNextItem] && (objc_msgSend(v4, "nextItemDisabled") & 1) == 0)
      {
LABEL_28:

        return 1;
      }

      if (![v4 hasBeginSeekForward])
      {
        goto LABEL_6;
      }

      v13 = [v4 beginSeekForwardDisabled];
    }

    v14 = v13;

    return v14 ^ 1;
  }

  return result;
}

uint64_t sub_10009DCDC()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong && (v1 = *(Strong + OBJC_IVAR____TtC5Media15RadioCarManager_nowPlayingManager), v2 = Strong, , v2, v1) && (swift_getKeyPath(), swift_getKeyPath(), static Published.subscript.getter(), , , , v10))
  {
    v3 = [v10 mediaSourceSemanticType];

    v4 = 0x146u >> v3;
    if (v3 >= 9)
    {
      LOBYTE(v4) = 0;
    }
  }

  else
  {
    v5 = swift_unknownObjectWeakLoadStrong();
    LOBYTE(v4) = !v5 || (v6 = *(v5 + OBJC_IVAR____TtC5Media15RadioCarManager_nowPlayingManager), v7 = v5, , v7, !v6) || (v8 = NowPlayingObserver.isNowPlayingOnlySource.getter(), , (v8 & 1) == 0);
  }

  return v4 & 1;
}

char *sub_10009DE14()
{
  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
    return result;
  }

  v1 = result;
  v2 = [*&result[OBJC_IVAR____TtC5Media15RadioCarManager_carManager] currentCar];

  if (!v2)
  {
    return 0;
  }

  v3 = [v2 nowPlayingInformation];

  if (!v3)
  {
    return 0;
  }

  v4 = [v3 nowPlaying];

  if (!v4)
  {
    return 0;
  }

  if (![v4 hasJumpBackward] || !sub_10009E1C4(&selRef_hasJumpBackwardInterval, &selRef_jumpBackwardInterval, sub_1000A8EC0, "Requested jump back interval unsupported: %{public}f") || (Strong = swift_unknownObjectWeakLoadStrong()) == 0 || (v6 = *(Strong + OBJC_IVAR____TtC5Media15RadioCarManager_nowPlayingManager), v7 = Strong, , v7, !v6) || (swift_getKeyPath(), swift_getKeyPath(), static Published.subscript.getter(), , , , !v10))
  {

    return 0;
  }

  v8 = [v10 mediaSourceSemanticType];

  return (v8 == 4 || v8 == 7);
}

char *sub_10009DFEC()
{
  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
    return result;
  }

  v1 = result;
  v2 = [*&result[OBJC_IVAR____TtC5Media15RadioCarManager_carManager] currentCar];

  if (!v2)
  {
    return 0;
  }

  v3 = [v2 nowPlayingInformation];

  if (!v3)
  {
    return 0;
  }

  v4 = [v3 nowPlaying];

  if (!v4)
  {
    return 0;
  }

  if (![v4 hasJumpForward] || !sub_10009E1C4(&selRef_hasJumpForwardInterval, &selRef_jumpForwardInterval, sub_1000A91F0, "Requested jump forward interval unsupported: %{public}f") || (Strong = swift_unknownObjectWeakLoadStrong()) == 0 || (v6 = *(Strong + OBJC_IVAR____TtC5Media15RadioCarManager_nowPlayingManager), v7 = Strong, , v7, !v6) || (swift_getKeyPath(), swift_getKeyPath(), static Published.subscript.getter(), , , , !v10))
  {

    return 0;
  }

  v8 = [v10 mediaSourceSemanticType];

  return (v8 == 4 || v8 == 7);
}

id sub_10009E1C4(SEL *a1, SEL *a2, uint64_t (*a3)(id *), const char *a4, ...)
{
  v9 = v4;
  v10 = sub_10000368C(&qword_1000EEE48, &qword_1000BA540);
  v11 = __chkstk_darwin(v10 - 8);
  v13 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v35 - v14;
  if ([v9 *a1])
  {
    v16 = [v9 *a2];
    if (v16)
    {
      v17 = v16;
      sub_100005A50(0, &unk_1000EEE58, NSUnitDuration_ptr);
      static Measurement._unconditionallyBridgeFromObjectiveC(_:)();

      v18 = sub_10000368C(&qword_1000EEE50, &qword_1000BA548);
      (*(*(v18 - 8) + 56))(v13, 0, 1, v18);
    }

    else
    {
      v19 = sub_10000368C(&qword_1000EEE50, &qword_1000BA548);
      (*(*(v19 - 8) + 56))(v13, 1, 1, v19);
    }

    sub_1000A8E50(v13, v15);
    v20 = sub_10000368C(&qword_1000EEE50, &qword_1000BA548);
    v21 = *(v20 - 8);
    if ((*(v21 + 48))(v15, 1, v20) == 1)
    {
      sub_100007834(v15, &qword_1000EEE48, &qword_1000BA540);
    }

    else
    {
      Measurement.value.getter();
      v23 = v22;
      (*(v21 + 8))(v15, v20);
      if (v23 > 0.0)
      {
        v24 = [objc_allocWithZone(NSNumber) initWithDouble:v23];
        v25 = [objc_opt_self() knownJumpIntervals];
        sub_100005A50(0, &qword_1000EC830, NSNumber_ptr);
        v26 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        v36 = v24;
        __chkstk_darwin(v27);
        *(&v35 - 2) = &v36;
        v28 = sub_10003E32C(a3, (&v35 - 4), v26);

        if (v28)
        {
          v29 = [v24 unsignedIntegerValue];

          return v29;
        }

        if (qword_1000EAD00 != -1)
        {
          swift_once();
        }

        v31 = type metadata accessor for Logger();
        sub_100006928(v31, qword_1000F3BD0);
        v32 = Logger.logObject.getter();
        v33 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v32, v33))
        {
          v34 = swift_slowAlloc();
          *v34 = 134349056;
          *(v34 + 4) = v23;
          _os_log_impl(&_mh_execute_header, v32, v33, a4, v34, 0xCu);
        }
      }
    }
  }

  return 0;
}

char *sub_10009E7A4()
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v2 = *&result[OBJC_IVAR____TtC5Media15RadioCarManager_nowPlayingManager];
    v3 = result;

    if (v2 && (swift_getKeyPath(), swift_getKeyPath(), static Published.subscript.getter(), , , , v22))
    {
      v4 = [v22 mediaSourceSemanticType];
      if (v4 <= 8 && ((1 << v4) & 0x14F) != 0)
      {
        Strong = swift_unknownObjectWeakLoadStrong();
        if (Strong && (v6 = *(Strong + OBJC_IVAR____TtC5Media15RadioCarManager_nowPlayingManager), v7 = Strong, , v7, v6))
        {
          swift_getKeyPath();
          swift_getKeyPath();
          static Published.subscript.getter();

          v8 = v0;
          v9 = sub_100099E68();
          swift_getKeyPath();
          swift_getKeyPath();
          static Published.subscript.getter();

          v10 = String._bridgeToObjectiveC()();

          v11 = [objc_opt_self() systemImageNamed:v10];

          if (v11)
          {
            v12 = [v11 imageWithRenderingMode:2];
          }

          else
          {
            v12 = 0;
          }

          [v9 setImage:v12 forState:0];

          v14 = OBJC_IVAR____TtC5Media29RadioNowPlayingViewController____lazy_storage___favoriteButton;
          [*(v8 + OBJC_IVAR____TtC5Media29RadioNowPlayingViewController____lazy_storage___favoriteButton) setEnabled:1];
          v15 = *(v8 + v14);
          _StringGuts.grow(_:)(27);

          swift_getKeyPath();
          swift_getKeyPath();
          static Published.subscript.getter();

          if (v21)
          {
            v16 = 28239;
          }

          else
          {
            v16 = 6710863;
          }

          if (v21)
          {
            v17 = 0xE200000000000000;
          }

          else
          {
            v17 = 0xE300000000000000;
          }

          v18 = v17;
          String.append(_:)(*&v16);

          v19 = String._bridgeToObjectiveC()();

          [v15 setAccessibilityIdentifier:v19];
        }

        else
        {
          v13 = sub_100099E68();
          [v13 setImage:0 forState:0];

          [*(v0 + OBJC_IVAR____TtC5Media29RadioNowPlayingViewController____lazy_storage___favoriteButton) setEnabled:0];
        }

        v20 = sub_100099E68();

        return v20;
      }

      else
      {

        return 0;
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

char *sub_10009EBA0()
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v2 = *&result[OBJC_IVAR____TtC5Media15RadioCarManager_nowPlayingManager];
    v3 = result;

    if (v2)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      if (v10)
      {
        if ([v10 hasCurrentFrequency])
        {
          Strong = swift_unknownObjectWeakLoadStrong();
          if (!Strong || (v5 = *(Strong + OBJC_IVAR____TtC5Media15RadioCarManager_nowPlayingManager), v6 = Strong, , v6, !v5))
          {
            v7 = sub_100099EDC();
            [v7 setEnabled:1];

            v8 = *(v0 + OBJC_IVAR____TtC5Media29RadioNowPlayingViewController____lazy_storage___dialerButton);
            v9 = v8;
            return v8;
          }

          swift_getKeyPath();
          swift_getKeyPath();
          static Published.subscript.getter();
        }

        else
        {
        }
      }
    }

    return 0;
  }

  return result;
}

uint64_t sub_10009ED3C(uint64_t result)
{
  v2 = *(result + 16);
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
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_1000A2A28(result, v11, 1, v3, &qword_1000EEF48, &qword_1000BA818);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_10009EE38(uint64_t result)
{
  v2 = *(result + 16);
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
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
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

  result = sub_1000A2450(result, v10, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = *(v3 + 16);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 16) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_10009EF2C(uint64_t result)
{
  v2 = *(result + 16);
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
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_1000A2838(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + 2 * v7 + 32), (v6 + 32), 2 * v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_10009F060(unint64_t a1, uint64_t (*a2)(uint64_t, void, uint64_t))
{
  if (a1 >> 62)
  {
    v5 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!(*v2 >> 62))
  {
    v6 = *((*v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v7 = __OFADD__(v6, v5);
    result = v6 + v5;
    if (!v7)
    {
      goto LABEL_5;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v15 = _CocoaArrayWrapper.endIndex.getter();
  v7 = __OFADD__(v15, v5);
  result = v15 + v5;
  if (v7)
  {
    goto LABEL_13;
  }

LABEL_5:
  sub_1000A3720(result, 1);
  v9 = *v2;
  v10 = *v2 & 0xFFFFFFFFFFFFFF8;
  a2(v10 + 8 * *(v10 + 0x10) + 32, (*(v10 + 0x18) >> 1) - *(v10 + 0x10), a1);
  v12 = v11;

  if (v12 < v5)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v12 < 1)
  {
LABEL_9:
    *v2 = v9;
    return result;
  }

  v13 = *(v10 + 16);
  v7 = __OFADD__(v13, v12);
  v14 = v13 + v12;
  if (!v7)
  {
    *(v10 + 16) = v14;
    goto LABEL_9;
  }

LABEL_15:
  __break(1u);
  return result;
}

void sub_10009F1F8(uint64_t a1, void *a2)
{
  if (!a1)
  {
    if (qword_1000EAD00 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_100006928(v8, qword_1000F3BD0);
    v12 = a2;
    oslog = Logger.logObject.getter();
    v9 = static os_log_type_t.debug.getter();
    if (!os_log_type_enabled(oslog, v9))
    {

      v11 = v12;
      goto LABEL_15;
    }

    v10 = swift_slowAlloc();
    *v10 = 134217984;
    *(v10 + 4) = sub_10009E1C4(&selRef_hasJumpBackwardInterval, &selRef_jumpBackwardInterval, sub_1000A8EC0, "Requested jump back interval unsupported: %{public}f");

    _os_log_impl(&_mh_execute_header, oslog, v9, "Successfully sent jump back command with interval %lu!", v10, 0xCu);

LABEL_10:
    v11 = oslog;
LABEL_15:

    return;
  }

  swift_errorRetain();
  if (qword_1000EAD00 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100006928(v2, qword_1000F3BD0);
  swift_errorRetain();
  oslog = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 138543362;
    swift_errorRetain();
    v6 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 4) = v6;
    *v5 = v6;
    _os_log_impl(&_mh_execute_header, oslog, v3, "Error jumping back: %{public}@", v4, 0xCu);
    sub_100007834(v5, &unk_1000EE230, &qword_1000BA550);

    goto LABEL_10;
  }
}

void sub_10009F4C4(uint64_t a1, const char *a2, const char *a3, ...)
{
  if (!a1)
  {
    if (qword_1000EAD00 != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    sub_100006928(v10, qword_1000F3BD0);
    oslog = Logger.logObject.getter();
    v11 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(oslog, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v11, a3, v12, 2u);
    }

    goto LABEL_10;
  }

  swift_errorRetain();
  if (qword_1000EAD00 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100006928(v4, qword_1000F3BD0);
  swift_errorRetain();
  oslog = Logger.logObject.getter();
  v5 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(oslog, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138543362;
    swift_errorRetain();
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v8;
    *v7 = v8;
    _os_log_impl(&_mh_execute_header, oslog, v5, a2, v6, 0xCu);
    sub_100007834(v7, &unk_1000EE230, &qword_1000BA550);

LABEL_10:

    return;
  }
}

void sub_10009F720(uint64_t a1, uint64_t a2, const char *a3, const char *a4)
{
  if (a1)
  {
    swift_errorRetain();
    if (qword_1000EAD00 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_100006928(v6, qword_1000F3BD0);
    swift_errorRetain();
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      *v9 = 138543362;
      swift_errorRetain();
      v11 = _swift_stdlib_bridgeErrorToNSError();
      *(v9 + 4) = v11;
      *v10 = v11;
      _os_log_impl(&_mh_execute_header, v7, v8, a3, v9, 0xCu);
      sub_100007834(v10, &unk_1000EE230, &qword_1000BA550);
    }

    else
    {
    }

    *(a2 + OBJC_IVAR____TtC5Media29RadioNowPlayingViewController_heldAction) = 0;
  }

  else
  {
    if (qword_1000EAD00 != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    sub_100006928(v13, qword_1000F3BD0);
    oslog = Logger.logObject.getter();
    v14 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(oslog, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v14, a4, v15, 2u);
    }
  }
}

void sub_10009F98C(uint64_t a1, void *a2)
{
  if (!a1)
  {
    if (qword_1000EAD00 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_100006928(v8, qword_1000F3BD0);
    v12 = a2;
    oslog = Logger.logObject.getter();
    v9 = static os_log_type_t.debug.getter();
    if (!os_log_type_enabled(oslog, v9))
    {

      v11 = v12;
      goto LABEL_15;
    }

    v10 = swift_slowAlloc();
    *v10 = 134217984;
    *(v10 + 4) = sub_10009E1C4(&selRef_hasJumpForwardInterval, &selRef_jumpForwardInterval, sub_1000A91F0, "Requested jump forward interval unsupported: %{public}f");

    _os_log_impl(&_mh_execute_header, oslog, v9, "Successfully sent jump forward command with interval %lu!", v10, 0xCu);

LABEL_10:
    v11 = oslog;
LABEL_15:

    return;
  }

  swift_errorRetain();
  if (qword_1000EAD00 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100006928(v2, qword_1000F3BD0);
  swift_errorRetain();
  oslog = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 138543362;
    swift_errorRetain();
    v6 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 4) = v6;
    *v5 = v6;
    _os_log_impl(&_mh_execute_header, oslog, v3, "Error jumping forward: %{public}@", v4, 0xCu);
    sub_100007834(v5, &unk_1000EE230, &qword_1000BA550);

    goto LABEL_10;
  }
}

void sub_10009FC58()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v1 = Strong;
  v2 = [*(Strong + OBJC_IVAR____TtC5Media15RadioCarManager_carManager) currentCar];

  if (!v2)
  {
    return;
  }

  v3 = [v2 nowPlayingInformation];

  if (!v3)
  {
    return;
  }

  v17 = [v3 nowPlaying];

  if (!v17)
  {
    return;
  }

  if ([v17 hasStop] && (objc_msgSend(v17, "stopDisabled") & 1) == 0)
  {
    if (qword_1000EAD00 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_100006928(v8, qword_1000F3BD0);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v9, v10, "Sending stop command.", v11, 2u);
    }

    v22 = sub_1000A1F8C;
    v23 = 0;
    aBlock = _NSConcreteStackBlock;
    v19 = 1107296256;
    v20 = sub_10009959C;
    v21 = &unk_1000E2D20;
    v12 = _Block_copy(&aBlock);
    [v17 stopWithCompletion:v12];
    goto LABEL_26;
  }

  if ([v17 hasPause] && (objc_msgSend(v17, "pauseDisabled") & 1) == 0)
  {
    if (qword_1000EAD00 != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    sub_100006928(v13, qword_1000F3BD0);
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&_mh_execute_header, v14, v15, "Sending pause command.", v16, 2u);
    }

    v22 = sub_1000A1FA0;
    v23 = 0;
    aBlock = _NSConcreteStackBlock;
    v19 = 1107296256;
    v20 = sub_10009959C;
    v21 = &unk_1000E2CF8;
    v12 = _Block_copy(&aBlock);
    [v17 pauseWithCompletion:v12];
LABEL_26:
    _Block_release(v12);

    return;
  }

  if (qword_1000EAD00 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100006928(v4, qword_1000F3BD0);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "No stop nor pause command available!", v7, 2u);
  }
}

void sub_1000A00A4()
{
  if (qword_1000EAD00 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_100006928(v0, qword_1000F3BD0);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "Attempting to resume radio playback.", v3, 2u);
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = [*(Strong + OBJC_IVAR____TtC5Media15RadioCarManager_carManager) currentCar];

    if (v6)
    {
      v7 = [v6 nowPlayingInformation];

      if (v7)
      {
        v8 = [v7 nowPlaying];

        if (v8)
        {
          v9 = swift_unknownObjectWeakLoadStrong();
          if (v9)
          {
            v10 = *(v9 + OBJC_IVAR____TtC5Media15RadioCarManager_nowPlayingManager);
            v11 = v9;

            if (v10)
            {
              swift_getKeyPath();
              swift_getKeyPath();
              static Published.subscript.getter();

              v12 = aBlock;
              if (aBlock)
              {
                v13 = swift_unknownObjectWeakLoadStrong();
                if (v13)
                {
                  v14 = *(v13 + OBJC_IVAR____TtC5Media15RadioCarManager_nowPlayingManager);
                  v15 = v13;

                  if (v14)
                  {
                    swift_getKeyPath();
                    swift_getKeyPath();
                    static Published.subscript.getter();

                    v16 = aBlock;
                    v17 = Logger.logObject.getter();
                    v18 = static os_log_type_t.debug.getter();
                    if (os_log_type_enabled(v17, v18))
                    {
                      v19 = swift_slowAlloc();
                      *v19 = 0;
                      _os_log_impl(&_mh_execute_header, v17, v18, "Tuning to last known station to resume playback.", v19, 2u);
                    }

                    v20 = swift_unknownObjectWeakLoadStrong();
                    if (v20 && (v21 = v20, v22 = [*(v20 + OBJC_IVAR____TtC5Media15RadioCarManager_carManager) currentCar], v21, v22) && (v23 = objc_msgSend(v22, "media"), v22, v23))
                    {
                      v24 = OBJC_IVAR____TtC5Media23TerrestrialRadioStation_mediaItem;
                      swift_beginAccess();
                      v25 = *(v12 + v24);
                      v54 = sub_1000A1F50;
                      v55 = 0;
                      aBlock = _NSConcreteStackBlock;
                      v51 = 1107296256;
                      v52 = sub_10009959C;
                      v53 = &unk_1000E2D98;
                      v26 = _Block_copy(&aBlock);
                      v27 = v25;
                      [v23 tuneToMediaItem:v27 inSource:v16 completion:v26];

                      _Block_release(v26);
                    }

                    else
                    {
                    }

                    return;
                  }
                }
              }
            }
          }

          v28 = swift_unknownObjectWeakLoadStrong();
          if (v28)
          {
            v29 = *(v28 + OBJC_IVAR____TtC5Media15RadioCarManager_nowPlayingManager);
            v30 = v28;

            if (v29)
            {
              swift_getKeyPath();
              swift_getKeyPath();
              static Published.subscript.getter();

              if (aBlock)
              {
                if ([aBlock hasCurrentFrequency] && (objc_msgSend(aBlock, "currentFrequencyInvalid") & 1) == 0 && objc_msgSend(aBlock, "currentFrequency"))
                {
                  v31 = aBlock;
                  v32 = Logger.logObject.getter();
                  v33 = static os_log_type_t.debug.getter();
                  if (os_log_type_enabled(v32, v33))
                  {
                    v34 = swift_slowAlloc();
                    *v34 = 67240192;
                    *(v34 + 4) = [v31 currentFrequency];

                    _os_log_impl(&_mh_execute_header, v32, v33, "Tuning to last known frequency %{public}u to resume playback.", v34, 8u);
                  }

                  else
                  {

                    v32 = v31;
                  }

                  v42 = swift_unknownObjectWeakLoadStrong();
                  if (v42 && (v43 = v42, v44 = [*(v42 + OBJC_IVAR____TtC5Media15RadioCarManager_carManager) currentCar], v43, v44) && (v45 = objc_msgSend(v44, "media"), v44, v45))
                  {
                    v46 = [v31 currentFrequency];
                    v47 = [v31 identifier];
                    if (!v47)
                    {
                      static String._unconditionallyBridgeFromObjectiveC(_:)();
                      v47 = String._bridgeToObjectiveC()();
                    }

                    v54 = sub_1000A1F64;
                    v55 = 0;
                    aBlock = _NSConcreteStackBlock;
                    v51 = 1107296256;
                    v52 = sub_10009959C;
                    v53 = &unk_1000E2D70;
                    v48 = _Block_copy(&aBlock);
                    [v45 tuneToFrequency:v46 inSourceWithIdentifier:v47 completion:v48];

                    _Block_release(v48);
                  }

                  else
                  {
                  }

                  return;
                }
              }
            }
          }

          if ([v8 hasPlay] && (objc_msgSend(v8, "playDisabled") & 1) == 0)
          {
            v38 = Logger.logObject.getter();
            v39 = static os_log_type_t.debug.getter();
            if (os_log_type_enabled(v38, v39))
            {
              v40 = swift_slowAlloc();
              *v40 = 0;
              _os_log_impl(&_mh_execute_header, v38, v39, "Sending play command...", v40, 2u);
            }

            v54 = sub_1000A1F78;
            v55 = 0;
            aBlock = _NSConcreteStackBlock;
            v51 = 1107296256;
            v52 = sub_10009959C;
            v53 = &unk_1000E2D48;
            v41 = _Block_copy(&aBlock);
            [v8 playWithCompletion:v41];

            _Block_release(v41);
          }

          else
          {
            v35 = Logger.logObject.getter();
            v36 = static os_log_type_t.debug.getter();
            if (os_log_type_enabled(v35, v36))
            {
              v37 = swift_slowAlloc();
              *v37 = 0;
              _os_log_impl(&_mh_execute_header, v35, v36, "No available action to handle play button press!", v37, 2u);
            }
          }
        }
      }
    }
  }
}

void sub_1000A09B4()
{
  v1 = v0;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = *(Strong + OBJC_IVAR____TtC5Media15RadioCarManager_nowPlayingManager);
    v4 = Strong;

    if (v3)
    {
      v5 = [v1 view];
      if (v5)
      {
        v6 = v5;
        [v5 frame];
        v8 = v7;

        type metadata accessor for MainActor();
        v9 = static MainActor.shared.getter();
        v10 = swift_allocObject();
        *(v10 + 16) = v9;
        *(v10 + 24) = &protocol witness table for MainActor;
        v11 = v1;
        v12 = static MainActor.shared.getter();
        v13 = swift_allocObject();
        v13[2] = v12;
        v13[3] = &protocol witness table for MainActor;
        v13[4] = v11;
        Binding.init(get:set:)();
        v14 = [v11 view];
        if (v14)
        {
          v15 = v14;
          v16 = [v14 window];

          if (v16 && (v17 = [v16 windowScene], v16, v17) && (v18 = objc_msgSend(v17, "focusSystem"), v17, v18))
          {

            v19 = 1;
          }

          else
          {
            v19 = 0;
          }

          type metadata accessor for NowPlayingObserver(0);
          sub_1000A8F64(&qword_1000EEE68, type metadata accessor for NowPlayingObserver, &protocol conformance descriptor for NowPlayingObserver);
          swift_retain_n();
          v20 = ObservedObject.init(wrappedValue:)();
          v22 = v21;
          v77 = 0;
          LODWORD(aBlock) = v8;
          type metadata accessor for CGSize(0);

          State.init(wrappedValue:)();
          v23 = v78;
          v24 = v79;
          LOBYTE(aBlock) = v19;
          State.init(wrappedValue:)();

          v25 = v78;
          v26 = *(&v78 + 1);
          v78 = v85;
          LOBYTE(v79) = v86;
          *(&v79 + 1) = aBlock;
          DWORD1(v79) = v8 >> 24;
          *(&v79 + 1) = sub_1000A2BA4;
          *&v80 = v3;
          BYTE8(v80) = 0;
          *(&v80 + 9) = v68[0];
          HIDWORD(v80) = *(v68 + 3);
          *&v81 = v20;
          *(&v81 + 1) = v22;
          v82 = v23;
          *&v83 = v24;
          BYTE8(v83) = v25;
          HIDWORD(v83) = *&v76[3];
          *(&v83 + 9) = *v76;
          v84 = v26;
          v73 = v23;
          v74 = v83;
          v75 = v26;
          aBlock = v85;
          v70 = v79;
          v71 = v80;
          v72 = v81;
          v27 = objc_allocWithZone(sub_10000368C(&qword_1000EEE70, &unk_1000BA558));
          sub_100013BE0(&v78, v68);
          v28 = UIHostingController.init(rootView:)();
          [v28 setModalPresentationStyle:5];
          [v28 setModalTransitionStyle:2];
          v29 = [v28 view];
          if (v29)
          {
            v30 = v29;
            v31 = [v11 view];
            if (v31)
            {
              v32 = v31;
              [v31 frame];
              v34 = v33;
              v36 = v35;
              v38 = v37;
              v40 = v39;

              [v30 setFrame:{v34, v36, v38, v40}];
              [v28 setOverrideUserInterfaceStyle:2];
              v41 = [v28 view];
              if (v41)
              {
                v42 = v41;
                v43 = objc_opt_self();
                v44 = [v43 clearColor];
                [v42 setBackgroundColor:v44];

                v45 = [v28 view];
                if (v45)
                {
                  v46 = v45;
                  v47 = [v45 layer];

                  v48 = [v43 blackColor];
                  v49 = [v48 CGColor];

                  [v47 setShadowColor:v49];
                  v50 = [v28 view];
                  if (v50)
                  {
                    v51 = v50;
                    v52 = [v50 layer];

                    [v52 setShadowOffset:{0.0, 1.0}];
                    v53 = [v28 view];
                    if (v53)
                    {
                      v54 = v53;
                      v55 = [v53 layer];

                      LODWORD(v56) = 1045220557;
                      [v55 setShadowOpacity:v56];

                      v57 = [v28 view];
                      if (v57)
                      {
                        v58 = v57;
                        v59 = [v57 layer];

                        [v59 setShadowRadius:16.0];
                        v60 = [v28 view];
                        if (v60)
                        {
                          v61 = v60;
                          v62 = [v60 layer];

                          [v62 setMasksToBounds:0];
                          v63 = *&v11[OBJC_IVAR____TtC5Media29RadioNowPlayingViewController_dialerViewController];
                          *&v11[OBJC_IVAR____TtC5Media29RadioNowPlayingViewController_dialerViewController] = v28;

                          v64 = swift_allocObject();
                          swift_unknownObjectWeakInit();
                          v65 = swift_allocObject();
                          *(v65 + 16) = v64;
                          *(v65 + 24) = v28;
                          *&v71 = sub_1000A2BEC;
                          *(&v71 + 1) = v65;
                          *&aBlock = _NSConcreteStackBlock;
                          *(&aBlock + 1) = 1107296256;
                          *&v70 = sub_100064D70;
                          *(&v70 + 1) = &unk_1000E2A50;
                          v66 = _Block_copy(&aBlock);
                          v67 = v28;

                          [v11 presentViewController:v67 animated:1 completion:v66];
                          _Block_release(v66);

                          sub_1000A2BF4(&v78);

                          return;
                        }

LABEL_29:
                        __break(1u);
                        return;
                      }

LABEL_28:
                      __break(1u);
                      goto LABEL_29;
                    }

LABEL_27:
                    __break(1u);
                    goto LABEL_28;
                  }

LABEL_26:
                  __break(1u);
                  goto LABEL_27;
                }

LABEL_25:
                __break(1u);
                goto LABEL_26;
              }

LABEL_24:
              __break(1u);
              goto LABEL_25;
            }

LABEL_23:
            __break(1u);
            goto LABEL_24;
          }

LABEL_22:
          __break(1u);
          goto LABEL_23;
        }
      }

      else
      {
        __break(1u);
      }

      __break(1u);
      goto LABEL_22;
    }
  }
}

void sub_1000A1144(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a5;
  v9[4] = sub_1000A2C48;
  v9[5] = v6;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 1107296256;
  v9[2] = sub_100064D70;
  v9[3] = &unk_1000E2AA0;
  v7 = _Block_copy(v9);
  v8 = a5;

  [v8 dismissViewControllerAnimated:1 completion:v7];
  _Block_release(v7);
}

void sub_1000A1224(uint64_t a1, void *a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = [objc_allocWithZone(UITapGestureRecognizer) initWithTarget:Strong action:"hideDialer"];
    sub_10000368C(&unk_1000EC820, &qword_1000B5090);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_1000B4FC0;
    v7 = objc_allocWithZone(NSNumber);
    v8 = v5;
    *(v6 + 32) = [v7 initWithInteger:7];
    sub_100005A50(0, &qword_1000EC830, NSNumber_ptr);
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v8 setAllowedPressTypes:isa];

    v10 = [a2 view];
    if (v10)
    {
      v11 = v10;
      [v10 addGestureRecognizer:v8];
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_1000A14FC()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = [*(Strong + OBJC_IVAR____TtC5Media15RadioCarManager_carManager) currentCar];

    if (v2)
    {
      v3 = [v2 nowPlayingInformation];

      if (v3)
      {
        v4 = [v3 nowPlaying];

        if (v4)
        {
          v6[4] = sub_1000A1638;
          v6[5] = 0;
          v6[0] = _NSConcreteStackBlock;
          v6[1] = 1107296256;
          v6[2] = sub_10009959C;
          v6[3] = &unk_1000E2988;
          v5 = _Block_copy(v6);
          [v4 setArtistSongNotificationWithCompletion:v5];
          _Block_release(v5);
        }
      }
    }
  }
}

id sub_1000A1694(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (_swiftEmptyArrayStorage >> 62 && _CocoaArrayWrapper.endIndex.getter())
  {
    v7 = sub_100003210(_swiftEmptyArrayStorage);
  }

  else
  {
    v7 = &_swiftEmptySetSingleton;
  }

  *&v4[OBJC_IVAR____TtC5Media29RadioNowPlayingViewController_subscribers] = v7;
  v4[OBJC_IVAR____TtC5Media29RadioNowPlayingViewController_heldAction] = 0;
  *&v4[OBJC_IVAR____TtC5Media29RadioNowPlayingViewController_sourcePickerButton] = 0;
  *&v4[OBJC_IVAR____TtC5Media29RadioNowPlayingViewController_dialerViewController] = 0;
  *&v4[OBJC_IVAR____TtC5Media29RadioNowPlayingViewController_badgeView] = 0;
  *&v4[OBJC_IVAR____TtC5Media29RadioNowPlayingViewController_cafNowPlayingManager] = 0;
  *&v4[OBJC_IVAR____TtC5Media29RadioNowPlayingViewController_loadingTimer] = 0;
  *&v4[OBJC_IVAR____TtC5Media29RadioNowPlayingViewController____lazy_storage___seekBackButton] = 0;
  *&v4[OBJC_IVAR____TtC5Media29RadioNowPlayingViewController____lazy_storage___seekNextButton] = 0;
  *&v4[OBJC_IVAR____TtC5Media29RadioNowPlayingViewController____lazy_storage___channelLabelButton] = 0;
  *&v4[OBJC_IVAR____TtC5Media29RadioNowPlayingViewController____lazy_storage___favoriteButton] = 0;
  *&v4[OBJC_IVAR____TtC5Media29RadioNowPlayingViewController_cachedArtwork] = 0;
  *&v4[OBJC_IVAR____TtC5Media29RadioNowPlayingViewController____lazy_storage___dialerButton] = 0;
  *&v4[OBJC_IVAR____TtC5Media29RadioNowPlayingViewController____lazy_storage___settingsButton] = 0;
  *&v4[OBJC_IVAR____TtC5Media29RadioNowPlayingViewController____lazy_storage___artistSongNotificationButton] = 0;
  swift_unknownObjectWeakInit();
  v8 = String._bridgeToObjectiveC()();

  v11.receiver = v4;
  v11.super_class = type metadata accessor for RadioNowPlayingViewController();
  v9 = objc_msgSendSuper2(&v11, "initWithBundleIdentifier:dataSource:delegate:", v8, a3, a4);

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v9;
}

id sub_1000A18A0(uint64_t a1, uint64_t a2, void *a3)
{
  if (_swiftEmptyArrayStorage >> 62 && _CocoaArrayWrapper.endIndex.getter())
  {
    v6 = sub_100003210(_swiftEmptyArrayStorage);
  }

  else
  {
    v6 = &_swiftEmptySetSingleton;
  }

  *&v3[OBJC_IVAR____TtC5Media29RadioNowPlayingViewController_subscribers] = v6;
  v3[OBJC_IVAR____TtC5Media29RadioNowPlayingViewController_heldAction] = 0;
  *&v3[OBJC_IVAR____TtC5Media29RadioNowPlayingViewController_sourcePickerButton] = 0;
  *&v3[OBJC_IVAR____TtC5Media29RadioNowPlayingViewController_dialerViewController] = 0;
  *&v3[OBJC_IVAR____TtC5Media29RadioNowPlayingViewController_badgeView] = 0;
  *&v3[OBJC_IVAR____TtC5Media29RadioNowPlayingViewController_cafNowPlayingManager] = 0;
  *&v3[OBJC_IVAR____TtC5Media29RadioNowPlayingViewController_loadingTimer] = 0;
  *&v3[OBJC_IVAR____TtC5Media29RadioNowPlayingViewController____lazy_storage___seekBackButton] = 0;
  *&v3[OBJC_IVAR____TtC5Media29RadioNowPlayingViewController____lazy_storage___seekNextButton] = 0;
  *&v3[OBJC_IVAR____TtC5Media29RadioNowPlayingViewController____lazy_storage___channelLabelButton] = 0;
  *&v3[OBJC_IVAR____TtC5Media29RadioNowPlayingViewController____lazy_storage___favoriteButton] = 0;
  *&v3[OBJC_IVAR____TtC5Media29RadioNowPlayingViewController_cachedArtwork] = 0;
  *&v3[OBJC_IVAR____TtC5Media29RadioNowPlayingViewController____lazy_storage___dialerButton] = 0;
  *&v3[OBJC_IVAR____TtC5Media29RadioNowPlayingViewController____lazy_storage___settingsButton] = 0;
  *&v3[OBJC_IVAR____TtC5Media29RadioNowPlayingViewController____lazy_storage___artistSongNotificationButton] = 0;
  swift_unknownObjectWeakInit();
  if (a2)
  {
    v7 = String._bridgeToObjectiveC()();
  }

  else
  {
    v7 = 0;
  }

  v10.receiver = v3;
  v10.super_class = type metadata accessor for RadioNowPlayingViewController();
  v8 = objc_msgSendSuper2(&v10, "initWithNibName:bundle:", v7, a3);

  return v8;
}

id sub_1000A1A8C(void *a1)
{
  if (_swiftEmptyArrayStorage >> 62 && _CocoaArrayWrapper.endIndex.getter())
  {
    v3 = sub_100003210(_swiftEmptyArrayStorage);
  }

  else
  {
    v3 = &_swiftEmptySetSingleton;
  }

  *&v1[OBJC_IVAR____TtC5Media29RadioNowPlayingViewController_subscribers] = v3;
  v1[OBJC_IVAR____TtC5Media29RadioNowPlayingViewController_heldAction] = 0;
  *&v1[OBJC_IVAR____TtC5Media29RadioNowPlayingViewController_sourcePickerButton] = 0;
  *&v1[OBJC_IVAR____TtC5Media29RadioNowPlayingViewController_dialerViewController] = 0;
  *&v1[OBJC_IVAR____TtC5Media29RadioNowPlayingViewController_badgeView] = 0;
  *&v1[OBJC_IVAR____TtC5Media29RadioNowPlayingViewController_cafNowPlayingManager] = 0;
  *&v1[OBJC_IVAR____TtC5Media29RadioNowPlayingViewController_loadingTimer] = 0;
  *&v1[OBJC_IVAR____TtC5Media29RadioNowPlayingViewController____lazy_storage___seekBackButton] = 0;
  *&v1[OBJC_IVAR____TtC5Media29RadioNowPlayingViewController____lazy_storage___seekNextButton] = 0;
  *&v1[OBJC_IVAR____TtC5Media29RadioNowPlayingViewController____lazy_storage___channelLabelButton] = 0;
  *&v1[OBJC_IVAR____TtC5Media29RadioNowPlayingViewController____lazy_storage___favoriteButton] = 0;
  *&v1[OBJC_IVAR____TtC5Media29RadioNowPlayingViewController_cachedArtwork] = 0;
  *&v1[OBJC_IVAR____TtC5Media29RadioNowPlayingViewController____lazy_storage___dialerButton] = 0;
  *&v1[OBJC_IVAR____TtC5Media29RadioNowPlayingViewController____lazy_storage___settingsButton] = 0;
  *&v1[OBJC_IVAR____TtC5Media29RadioNowPlayingViewController____lazy_storage___artistSongNotificationButton] = 0;
  swift_unknownObjectWeakInit();
  v6.receiver = v1;
  v6.super_class = type metadata accessor for RadioNowPlayingViewController();
  v4 = objc_msgSendSuper2(&v6, "initWithCoder:", a1);

  if (v4)
  {
  }

  return v4;
}

id sub_1000A1C2C(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v4.receiver = v2;
  v4.super_class = a2(a1);
  return objc_msgSendSuper2(&v4, "dealloc");
}

void sub_1000A1DA4(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = objc_opt_self();
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    aBlock[4] = sub_1000A90DC;
    aBlock[5] = v5;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100064D70;
    aBlock[3] = &unk_1000E2F78;
    v6 = _Block_copy(aBlock);
    v7 = v3;

    [v4 animateWithDuration:28 delay:v6 options:0 animations:1.0 completion:0.0];
    _Block_release(v6);
  }
}

void sub_1000A1EC8(void *a1)
{
  v1 = [a1 songDetailsView];
  v2 = [v1 titleView];

  [v2 setAlpha:0.3];
}

uint64_t sub_1000A2060(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_10000368C(&qword_1000EEE48, &qword_1000BA540);
  __chkstk_darwin(v6 - 8);
  v8 = &v12 - v7;
  if (a4)
  {
    sub_100005A50(0, &unk_1000EEE58, NSUnitDuration_ptr);
    static Measurement._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = sub_10000368C(&qword_1000EEE50, &qword_1000BA548);
    (*(*(v9 - 8) + 56))(v8, 0, 1, v9);
  }

  else
  {
    v10 = sub_10000368C(&qword_1000EEE50, &qword_1000BA548);
    (*(*(v10 - 8) + 56))(v8, 1, 1, v10);
  }

  [a1 reloadData];
  return sub_100007834(v8, &qword_1000EEE48, &qword_1000BA540);
}

uint64_t sub_1000A2220(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

char *sub_1000A2238(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000368C(&qword_1000EEFF8, &qword_1000BA8B0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1000A2344(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000368C(&qword_1000EEF40, &qword_1000BA810);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1000A2450(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000368C(&qword_1000EC558, &unk_1000BA800);
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
    v10 = _swiftEmptyArrayStorage;
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

void *sub_1000A255C(void *result, int64_t a2, char a3, void *a4)
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
    v13 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_10000368C(&unk_1000ED0E0, &unk_1000B6C50);
  v10 = *(type metadata accessor for IndexPath() - 8);
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
  v15 = *(type metadata accessor for IndexPath() - 8);
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

char *sub_1000A2734(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000368C(&qword_1000EF008, &unk_1000BA8C0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 29;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 2);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[4 * v8])
    {
      memmove(v13, v14, 4 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 4 * v8);
  }

  return v10;
}

char *sub_1000A2838(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000368C(&qword_1000EF000, &qword_1000BA8B8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = (v11 - 32 + ((v11 - 32) >> 63)) & 0xFFFFFFFFFFFFFFFELL;
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[2 * v8])
    {
      memmove(v12, v13, 2 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 2 * v8);
  }

  return v10;
}

char *sub_1000A2934(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000368C(&qword_1000EEEF0, &qword_1000BA7D8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
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

char *sub_1000A2A28(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    sub_10000368C(a5, a6);
    v12 = swift_allocObject();
    v13 = j__malloc_size(v12);
    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * v13 - 64;
  }

  else
  {
    v12 = _swiftEmptyArrayStorage;
  }

  v14 = v12 + 32;
  v15 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v14 >= &v15[v10])
    {
      memmove(v14, v15, v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v14, v15, v10);
  }

  return v12;
}

uint64_t sub_1000A2B14()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000A2B58()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000A2BAC()
{

  return _swift_deallocObject(v0, 32, 7);
}

void sub_1000A2C48()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + OBJC_IVAR____TtC5Media29RadioNowPlayingViewController_dialerViewController);
  *(v1 + OBJC_IVAR____TtC5Media29RadioNowPlayingViewController_dialerViewController) = 0;
}

char *sub_1000A2C70(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1000A2DD8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1000A2C90(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1000A2EE4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1000A2CB0(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1000A320C(a1, a2, a3, *v3, &unk_1000ED0E0, &unk_1000B6C50, &type metadata accessor for IndexPath);
  *v3 = result;
  return result;
}

char *sub_1000A2CF4(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1000A2FF0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1000A2D14(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1000A30FC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1000A2D34(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1000A320C(a1, a2, a3, *v3, &qword_1000EEF60, &qword_1000BA828, &type metadata accessor for URL);
  *v3 = result;
  return result;
}

char *sub_1000A2D78(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1000A33E8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1000A2D98(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1000A34E4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1000A2DB8(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1000A3618(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1000A2DD8(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000368C(&qword_1000EEFF8, &qword_1000BA8B0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1000A2EE4(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000368C(&qword_1000EEF40, &qword_1000BA810);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1000A2FF0(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000368C(&qword_1000EC558, &unk_1000BA800);
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
    v10 = _swiftEmptyArrayStorage;
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

char *sub_1000A30FC(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000368C(&unk_1000EEC40, &qword_1000BA4D8);
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
    v10 = _swiftEmptyArrayStorage;
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

void *sub_1000A320C(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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

  sub_10000368C(a5, a6);
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

char *sub_1000A33E8(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000368C(&qword_1000EF000, &qword_1000BA8B8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = (v11 - 32 + ((v11 - 32) >> 63)) & 0xFFFFFFFFFFFFFFFELL;
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[2 * v8])
    {
      memmove(v12, v13, 2 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 2 * v8);
  }

  return v10;
}

void *sub_1000A34E4(void *result, int64_t a2, char a3, void *a4)
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

  if (v9)
  {
    sub_10000368C(&qword_1000EEEF8, &qword_1000BA7E0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_10000368C(&unk_1000EEF00, &qword_1000BA7E8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1000A3618(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000368C(&unk_1000EEED0, &qword_1000B5938);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

uint64_t sub_1000A3720(uint64_t a1, char a2)
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

uint64_t sub_1000A37C0(uint64_t result, uint64_t a2, unint64_t a3)
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
          sub_100005870(&qword_1000EEF38, &qword_1000EEF30, &qword_1000B68E0, &protocol conformance descriptor for [A]);
          for (i = 0; i != v6; ++i)
          {
            sub_10000368C(&qword_1000EEF30, &qword_1000B68E0);
            v9 = sub_1000A4034(v13, i, a3);
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
        type metadata accessor for TerrestrialRadioStation(0);
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

uint64_t sub_1000A3964(uint64_t result, uint64_t a2, unint64_t a3)
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
          sub_100005870(&qword_1000EEEC8, &qword_1000EEEC0, &unk_1000BA730, &protocol conformance descriptor for [A]);
          for (i = 0; i != v6; ++i)
          {
            sub_10000368C(&qword_1000EEEC0, &unk_1000BA730);
            v9 = sub_1000A40BC(v13, i, a3);
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
        sub_100005A50(0, &qword_1000ED650, UIView_ptr);
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

uint64_t sub_1000A3B18(uint64_t result, uint64_t a2, unint64_t a3)
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
          sub_100005870(&qword_1000EEF58, &qword_1000EEF50, &qword_1000BA820, &protocol conformance descriptor for [A]);
          for (i = 0; i != v6; ++i)
          {
            sub_10000368C(&qword_1000EEF50, &qword_1000BA820);
            v9 = sub_1000A413C(v13, i, a3);
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
        sub_100005A50(0, &unk_1000EBD80, UIBarButtonItem_ptr);
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

uint64_t sub_1000A3CCC(uint64_t result, uint64_t a2, unint64_t a3)
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
          sub_100005870(&qword_1000EEF18, &qword_1000EEF10, &unk_1000BA7F0, &protocol conformance descriptor for [A]);
          for (i = 0; i != v6; ++i)
          {
            sub_10000368C(&qword_1000EEF10, &unk_1000BA7F0);
            v9 = sub_1000A40BC(v13, i, a3);
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
        sub_100005A50(0, &unk_1000EEC10, UIAction_ptr);
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

uint64_t sub_1000A3E80(uint64_t result, uint64_t a2, unint64_t a3)
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
          sub_100005870(&qword_1000EEE98, &qword_1000EEE90, &qword_1000BA6E0, &protocol conformance descriptor for [A]);
          for (i = 0; i != v6; ++i)
          {
            sub_10000368C(&qword_1000EEE90, &qword_1000BA6E0);
            v9 = sub_1000A40BC(v13, i, a3);
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
        sub_100005A50(0, &qword_1000EEE78, UIButton_ptr);
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

uint64_t (*sub_1000A4034(uint64_t (*result)(), unint64_t a2, uint64_t a3))()
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

LABEL_5:
    *v3 = v4;
    return sub_1000A40B4;
  }

  __break(1u);
  return result;
}

void (*sub_1000A40BC(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
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
    return sub_1000A9198;
  }

  __break(1u);
  return result;
}

void (*sub_1000A413C(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
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
    return sub_1000A41BC;
  }

  __break(1u);
  return result;
}

uint64_t sub_1000A4228()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000A4260()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong || (v1 = *(Strong + OBJC_IVAR____TtC5Media15RadioCarManager_nowPlayingManager), v2 = Strong, , v2, !v1) || (swift_getKeyPath(), swift_getKeyPath(), static Published.subscript.getter(), , , , (v3 = v44) == 0))
  {
LABEL_8:
    v12 = swift_unknownObjectWeakLoadStrong();
    if (v12)
    {
      v13 = v12;
      v14 = [*(v12 + OBJC_IVAR____TtC5Media15RadioCarManager_carManager) currentCar];

      if (v14)
      {
        v15 = [v14 nowPlayingInformation];

        if (v15)
        {
          v3 = [v15 nowPlaying];

          if (v3)
          {
            if ([v3 hasPlaybackState] && objc_msgSend(v3, "playbackState") == 2)
            {
              v16 = swift_unknownObjectWeakLoadStrong();
              if (v16)
              {
                v17 = *(v16 + OBJC_IVAR____TtC5Media15RadioCarManager_nowPlayingManager);
                v18 = v16;

                if (v17)
                {
                  swift_getKeyPath();
                  swift_getKeyPath();
                  static Published.subscript.getter();

                  if (v44)
                  {
                    v19 = [v44 titles];
                    if (v19)
                    {
                      v20 = v19;
                      v21 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

                      if (*(v21 + 16))
                      {
                        v11 = *(v21 + 32);
                      }

                      else
                      {

                        v39 = [objc_opt_self() mainBundle];
                        v46._object = 0xE000000000000000;
                        v40.value._countAndFlagsBits = 0x6F69646152;
                        v41._object = 0x80000001000BCF10;
                        v41._countAndFlagsBits = 0xD000000000000013;
                        v40.value._object = 0xE500000000000000;
                        v42._countAndFlagsBits = 0;
                        v42._object = 0xE000000000000000;
                        v46._countAndFlagsBits = 0;
                        NSLocalizedString(_:tableName:bundle:value:comment:)(v41, v40, v39, v42, v46);

                        v11 = String.init(format:_:)();
                      }

                      goto LABEL_29;
                    }
                  }
                }
              }

              v33 = swift_unknownObjectWeakLoadStrong();
              if (v33)
              {
                v34 = *(v33 + OBJC_IVAR____TtC5Media15RadioCarManager_nowPlayingManager);
                v35 = v33;

                if (v34)
                {
                  swift_getKeyPath();
                  swift_getKeyPath();
                  static Published.subscript.getter();

                  if (v44)
                  {
                    v36 = OBJC_IVAR____TtC5Media23TerrestrialRadioStation_mediaItem;
                    swift_beginAccess();
                    v37 = *&v44[v36];
                    swift_beginAccess();
                    v38 = v37;
                    v11 = CAFMediaItem.primaryDisplayName(in:)();

                    return v11;
                  }
                }
              }

              v4 = [objc_opt_self() mainBundle];
              v43 = 0xE000000000000000;
              v7 = 0x6F69646152;
              v6 = 0x80000001000BCF10;
              v5 = 0xD000000000000013;
              goto LABEL_6;
            }
          }
        }
      }
    }

    v22 = swift_unknownObjectWeakLoadStrong();
    if (v22 && (v23 = *(v22 + OBJC_IVAR____TtC5Media15RadioCarManager_nowPlayingManager), v24 = v22, , v24, v23) && (swift_getKeyPath(), swift_getKeyPath(), static Published.subscript.getter(), , , , v44) && (v25 = [v44 titles], v44, v25))
    {
      v26 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      if (*(v26 + 16))
      {
        v11 = *(v26 + 32);

        goto LABEL_29;
      }

      v27 = [objc_opt_self() mainBundle];
    }

    else
    {
      v27 = [objc_opt_self() mainBundle];
    }

    v28 = v27;
    v45._object = 0xE000000000000000;
    v29._countAndFlagsBits = 0x59414C505F574F4ELL;
    v29._object = 0xEB00000000474E49;
    v30.value._countAndFlagsBits = 0x6F69646152;
    v30.value._object = 0xE500000000000000;
    v31._countAndFlagsBits = 0;
    v31._object = 0xE000000000000000;
    v45._countAndFlagsBits = 0;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v29, v30, v28, v31, v45);

    v11 = String.init(format:_:)();
    goto LABEL_29;
  }

  if ([v44 mediaSourceSemanticType] != 5)
  {

    goto LABEL_8;
  }

  v4 = [objc_opt_self() mainBundle];
  v43 = 0xE000000000000000;
  v5 = 0x59414C505F574F4ELL;
  v6 = 0xEB00000000474E49;
  v7 = 0x6F69646152;
LABEL_6:
  v8 = 0xE500000000000000;
  v9._countAndFlagsBits = 0;
  v9._object = 0xE000000000000000;
  v10 = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(*&v5, *&v7, v4, v9, *(&v43 - 1));

  v11 = String.init(format:_:)();
LABEL_29:

  return v11;
}

char *sub_1000A48FC()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = *(Strong + OBJC_IVAR____TtC5Media15RadioCarManager_nowPlayingManager);
    v2 = Strong;

    if (v1)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      if (v16)
      {
        v3 = [v16 mediaSourceSemanticType];

        if (v3 == 5)
        {
          return 0;
        }
      }
    }
  }

  v4 = swift_unknownObjectWeakLoadStrong();
  if (v4)
  {
    v5 = v4;
    v6 = [*(v4 + OBJC_IVAR____TtC5Media15RadioCarManager_carManager) currentCar];

    if (v6)
    {
      v7 = [v6 nowPlayingInformation];

      if (v7)
      {
        v8 = [v7 nowPlaying];

        if (v8)
        {
          if ([v8 hasPlaybackState])
          {
            v9 = [v8 playbackState];

            if (v9 == 2)
            {
              return 0;
            }
          }

          else
          {
          }
        }
      }
    }
  }

  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
    return result;
  }

  v11 = *&result[OBJC_IVAR____TtC5Media15RadioCarManager_nowPlayingManager];
  v12 = result;

  if (v11)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    if (v16)
    {
      v13 = [v16 titles];

      if (v13)
      {
        v14 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        if (*(v14 + 16) >= 2uLL)
        {
          v15 = *(v14 + 48);

          return v15;
        }
      }
    }
  }

  return 0;
}

char *sub_1000A4B98()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong || (v1 = *(Strong + OBJC_IVAR____TtC5Media15RadioCarManager_nowPlayingManager), v2 = Strong, , v2, !v1) || (swift_getKeyPath(), swift_getKeyPath(), static Published.subscript.getter(), , , , !v21) || (v3 = [v21 mediaSourceSemanticType], v21, v3 != 5))
  {
    v4 = swift_unknownObjectWeakLoadStrong();
    if (v4)
    {
      v5 = v4;
      v6 = [*(v4 + OBJC_IVAR____TtC5Media15RadioCarManager_carManager) currentCar];

      if (v6)
      {
        v7 = [v6 nowPlayingInformation];

        if (v7)
        {
          v8 = [v7 nowPlaying];

          if (v8)
          {
            if ([v8 hasPlaybackState] && objc_msgSend(v8, "playbackState") == 2)
            {
              v9 = swift_unknownObjectWeakLoadStrong();
              if (v9)
              {
                v10 = *(v9 + OBJC_IVAR____TtC5Media15RadioCarManager_nowPlayingManager);
                v11 = v9;

                if (v10)
                {
                  swift_getKeyPath();
                  swift_getKeyPath();
                  static Published.subscript.getter();

                  if (v21)
                  {
                    v12 = [v21 titles];

                    if (v12)
                    {
                      v13 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

                      if (*(v13 + 16) >= 2uLL)
                      {
                        v14 = *(v13 + 48);

                        return v14;
                      }
                    }
                  }
                }
              }

              return 0;
            }
          }
        }
      }
    }

    result = swift_unknownObjectWeakLoadStrong();
    if (!result)
    {
      return result;
    }

    v16 = *&result[OBJC_IVAR____TtC5Media15RadioCarManager_nowPlayingManager];
    v17 = result;

    if (v16)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      if (v21)
      {
        v18 = [v21 titles];

        if (v18)
        {
          v19 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

          if (*(v19 + 16) >= 3uLL)
          {
            v20 = *(v19 + 64);

            return v20;
          }
        }
      }
    }
  }

  return 0;
}

id sub_1000A4F20()
{
  v1 = OBJC_IVAR____TtC5Media29RadioNowPlayingViewController_cachedArtwork;
  v2 = *(v0 + OBJC_IVAR____TtC5Media29RadioNowPlayingViewController_cachedArtwork);
  if (v2)
  {
    v3 = qword_1000EAD00;
    v4 = v2;
    if (v3 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_100006928(v5, qword_1000F3BD0);
    v6 = v4;
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v35[0] = v10;
      *v9 = 136446210;
      v11 = sub_10007DDA8();
      v13 = sub_100043AF0(v11, v12, v35);

      *(v9 + 4) = v13;
      _os_log_impl(&_mh_execute_header, v7, v8, "Reusing cached artwork: %{public}s", v9, 0xCu);
      sub_100006960(v10);
    }

    return v2;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v16 = *(Strong + OBJC_IVAR____TtC5Media15RadioCarManager_nowPlayingManager);
    v17 = Strong;

    if (v16)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      v18 = v35[0];
      if (v35[0])
      {
        v19 = [v35[0] mediaSourceSemanticType];
        if (v19 != 3)
        {
          if (v19 == 5)
          {

            return 0;
          }

          goto LABEL_28;
        }

        v20 = swift_unknownObjectWeakLoadStrong();
        if (!v20 || (v21 = *(v20 + OBJC_IVAR____TtC5Media15RadioCarManager_nowPlayingManager), v22 = v20, , v22, !v21) || (swift_getKeyPath(), swift_getKeyPath(), static Published.subscript.getter(), , , , v23 = [v35[0] artworkType], v35[0], v23))
        {
LABEL_28:

          goto LABEL_29;
        }

        v24 = swift_unknownObjectWeakLoadStrong();
        if (v24 && (v25 = *(v24 + OBJC_IVAR____TtC5Media15RadioCarManager_nowPlayingManager), v26 = v24, , v26, v25))
        {
          v27 = OBJC_IVAR____TtC5Media18NowPlayingObserver_preferredArtworkSize;
          swift_beginAccess();
          v28 = *(v25 + v27);

          v29 = v28;
        }

        else
        {
          v29 = 500.0;
        }

        v30 = swift_unknownObjectWeakLoadStrong();
        if (v30)
        {
          v31 = *(v30 + OBJC_IVAR____TtC5Media15RadioCarManager_nowPlayingManager);
          v32 = v30;

          if (!v31)
          {
LABEL_25:

LABEL_27:
            v18 = *(v0 + v1);
            *(v0 + v1) = v31;
            goto LABEL_28;
          }

          swift_getKeyPath();
          swift_getKeyPath();
          static Published.subscript.getter();

          if (v36)
          {
            v31 = sub_10007E3C8(v29, v29);

            goto LABEL_25;
          }
        }

        v31 = 0;
        goto LABEL_27;
      }
    }
  }

LABEL_29:
  v33 = swift_unknownObjectWeakLoadStrong();
  if (!v33)
  {
    return 0;
  }

  v2 = *(v33 + OBJC_IVAR____TtC5Media15RadioCarManager_nowPlayingManager);
  v34 = v33;

  if (v2)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    return v36;
  }

  return v2;
}

uint64_t sub_1000A5390()
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = *(result + OBJC_IVAR____TtC5Media15RadioCarManager_nowPlayingManager);
    v2 = result;

    if (v1 && (swift_getKeyPath(), swift_getKeyPath(), static Published.subscript.getter(), , , , v9 == 1))
    {
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v4 = Strong;
        v5 = [*(Strong + OBJC_IVAR____TtC5Media15RadioCarManager_carManager) currentCar];

        if (v5)
        {
          v6 = [v5 nowPlayingInformation];

          if (v6)
          {
            v7 = [v6 nowPlaying];

            if (v7)
            {
              if ([v7 hasPlaybackState])
              {
                v8 = [v7 playbackState];

                return v8 != 0;
              }
            }
          }
        }
      }

      return 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1000A5528()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong && (v1 = *(Strong + OBJC_IVAR____TtC5Media15RadioCarManager_nowPlayingManager), v2 = Strong, , v2, v1) && (swift_getKeyPath(), swift_getKeyPath(), static Published.subscript.getter(), , , , v5) && (v3 = [v5 mediaSourceSemanticType], v5, v3 <= 7))
  {
    return qword_1000BA8D0[v3];
  }

  else
  {
    return 6;
  }
}

uint64_t sub_1000A5614()
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = result;
    v2 = [*(result + OBJC_IVAR____TtC5Media15RadioCarManager_carManager) currentCar];

    if (v2)
    {
      v3 = [v2 nowPlayingInformation];

      if (v3)
      {
        v4 = [v3 nowPlaying];

        if (v4)
        {
          if ([v4 hasAudioContentBadge])
          {
            v5 = [v4 audioContentBadge];

            if (v5 == 2)
            {
              return 5;
            }

            else
            {
              return 4 * (v5 == 1);
            }
          }
        }
      }
    }

    return 0;
  }

  return result;
}

void sub_1000A571C()
{
  v1 = type metadata accessor for IndexSet();
  v2 = *(v1 - 1);
  v3 = __chkstk_darwin(v1);
  v5 = &v91 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v3);
  v8 = &v91 - v7;
  __chkstk_darwin(v6);
  v10 = &v91 - v9;
  v11 = OBJC_IVAR____TtC5Media29RadioNowPlayingViewController_carManager;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v13 = Strong;
    v14 = [*(Strong + OBJC_IVAR____TtC5Media15RadioCarManager_carManager) currentCar];

    if (v14)
    {
      v15 = [v14 nowPlayingInformation];

      if (v15)
      {
        v16 = [v15 nowPlaying];

        if (v16)
        {
          v17 = swift_unknownObjectWeakLoadStrong();
          if (!v17)
          {
            goto LABEL_21;
          }

          v18 = *(v17 + OBJC_IVAR____TtC5Media15RadioCarManager_nowPlayingManager);
          v19 = v17;

          if (!v18)
          {
            goto LABEL_21;
          }

          v101 = v2;
          swift_getKeyPath();
          swift_getKeyPath();
          static Published.subscript.getter();

          v20 = v105;
          if (!v105)
          {
            goto LABEL_21;
          }

          v21 = OBJC_IVAR____TtC5Media23TerrestrialRadioStation_mediaItem;
          swift_beginAccess();
          v22 = *(v20 + v21);

          v23 = [v22 mediaItemType];

          if (!v23)
          {
            goto LABEL_21;
          }

          v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          KeyPath = v25;

          v27 = HIBYTE(KeyPath) & 0xF;
          if ((KeyPath & 0x2000000000000000) == 0)
          {
            v27 = v24 & 0xFFFFFFFFFFFFLL;
          }

          if (!v27 || [v16 hasAudioContentBadge] && objc_msgSend(v16, "audioContentBadge"))
          {

            return;
          }

          v28 = String.lowercased()();
          if (v28._countAndFlagsBits == 0x73756C70626164 && v28._object == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {
            if ([v16 hasPlaybackState] && objc_msgSend(v16, "playbackState") == 2)
            {

LABEL_21:

              return;
            }

            v1 = String._bridgeToObjectiveC()();
            v10 = [objc_opt_self() _systemImageNamed:v1];

            if (v10)
            {

              v29 = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleFootnote];
              v30 = [objc_opt_self() configurationWithFont:v29];

              v31 = [v10 imageWithSymbolConfiguration:v30];
              goto LABEL_59;
            }

LABEL_100:
            __break(1u);
LABEL_101:
            v97 = _CocoaArrayWrapper.endIndex.getter();
            if (!v97)
            {
              goto LABEL_102;
            }

LABEL_45:
            v43 = [v16 hasPlaybackState];
            if (v43)
            {
              v43 = [v16 playbackState];
            }

            if (((v93 + v43) >> 8))
            {
              __break(1u);
            }

            else
            {
              v91 = OBJC_IVAR____TtC5Media29RadioNowPlayingViewController_badgeView;
              v92 = (v93 + v43);
              v44 = *(v94 + OBJC_IVAR____TtC5Media29RadioNowPlayingViewController_badgeView);
              if (!v44)
              {
                goto LABEL_72;
              }

              objc_opt_self();
              v45 = swift_dynamicCastObjCClass();
              if (!v45)
              {
                goto LABEL_72;
              }

              v46 = v45;
              KeyPath = v44;
              v47 = [v46 tag];
              if (v47 != v92)
              {

                goto LABEL_72;
              }

              v48 = [v46 arrangedSubviews];
              sub_100005A50(0, &qword_1000ED650, UIView_ptr);
              v49 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

              if (!(v49 >> 62))
              {
                v50 = *((v49 & 0xFFFFFFFFFFFFFF8) + 0x10);
                goto LABEL_53;
              }
            }

            v50 = _CocoaArrayWrapper.endIndex.getter();
LABEL_53:

            if (v11)
            {
              v51 = _CocoaArrayWrapper.endIndex.getter();
            }

            else
            {
              v51 = *((v99 & 0xFFFFFFFFFFFFFF8) + 0x10);
            }

            if (__OFADD__(v51, 1))
            {
              __break(1u);
              return;
            }

            if (v50 == v51 + 1)
            {

              v66 = *(v94 + v91);
LABEL_66:
              v67 = v66;
              return;
            }

LABEL_72:
            KeyPath = 0;
            v95 = v99 & 0xFFFFFFFFFFFFFF8;
            v96 = v99 & 0xC000000000000001;
            v100 = _swiftEmptyArrayStorage;
            do
            {
              if (v96)
              {
                v68 = specialized _ArrayBuffer._getElementSlowPath(_:)();
              }

              else
              {
                if (KeyPath >= *(v95 + 16))
                {
                  goto LABEL_99;
                }

                v68 = *(v99 + 8 * KeyPath + 32);
              }

              v69 = v68;
              v11 = KeyPath + 1;
              if (__OFADD__(KeyPath, 1))
              {
                __break(1u);
LABEL_99:
                __break(1u);
                goto LABEL_100;
              }

              v70 = [v68 multicast];

              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v100 = sub_1000A2A28(0, *(v100 + 2) + 1, 1, v100, &qword_1000ECD48, &qword_1000BA740);
              }

              v72 = *(v100 + 2);
              v71 = *(v100 + 3);
              if (v72 >= v71 >> 1)
              {
                v100 = sub_1000A2A28((v71 > 1), v72 + 1, 1, v100, &qword_1000ECD48, &qword_1000BA740);
              }

              v73 = v100;
              *(v100 + 2) = v72 + 1;
              v73[v72 + 32] = v70;
              ++KeyPath;
            }

            while (v11 != v97);

            v74 = *(v100 + 2);
            if (v74)
            {
              v103 = _swiftEmptyArrayStorage;
              sub_1000A2DB8(0, v74, 0);
              v75 = v103;
              v76 = v103[2];
              v77 = 32;
              do
              {
                v78 = v100[v77];
                v103 = v75;
                v79 = v75[3];
                if (v76 >= v79 >> 1)
                {
                  v99 = v78;
                  sub_1000A2DB8((v79 > 1), v76 + 1, 1);
                  v78 = v99;
                  v75 = v103;
                }

                v75[2] = v76 + 1;
                v75[v76 + 4] = v78;
                ++v77;
                ++v76;
                --v74;
              }

              while (v74);
              v80 = v75;
            }

            else
            {

              v80 = _swiftEmptyArrayStorage;
            }

            sub_1000A8F64(&qword_1000EEEA8, &type metadata accessor for IndexSet, &protocol conformance descriptor for IndexSet);
            dispatch thunk of SetAlgebra.init()();
            v81 = v80[2];
            if (v81)
            {
              v82 = v80 + 4;
              do
              {
                v83 = *v82++;
                v102 = v83;
                dispatch thunk of SetAlgebra.insert(_:)();
                --v81;
              }

              while (v81);
            }

            v84 = v101;
            (*(v101 + 32))(v10, v8, v1);
            (*(v84 + 16))(v5, v10, v1);
            v85 = ([v16 hasPlaybackState] & 1) == 0 || objc_msgSend(v16, "playbackState") == 1;
            sub_100005A50(0, &unk_1000EEEB0, UIStackView_ptr);
            sub_10007E74C(v5, v93, v85);
            v86 = v94;
            v87 = v91;
            v88 = *(v94 + v91);
            *(v94 + v91) = v89;
            v90 = v89;

            [v90 setTag:v92];

            (*(v101 + 8))(v10, v1);
            v66 = *(v86 + v87);
            goto LABEL_66;
          }

          if (v28._countAndFlagsBits == 6447460 && v28._object == 0xE300000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {

            if ([v16 hasPlaybackState] && objc_msgSend(v16, "playbackState") == 2)
            {
              goto LABEL_21;
            }

            v32 = String._bridgeToObjectiveC()();
            v31 = [objc_opt_self() imageNamed:v32];

            goto LABEL_59;
          }

          if (v28._countAndFlagsBits == 25704 && v28._object == 0xE200000000000000)
          {
          }

          else
          {
            v33 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if ((v33 & 1) == 0)
            {

              v52 = *(v0 + OBJC_IVAR____TtC5Media29RadioNowPlayingViewController_badgeView);
              *(v0 + OBJC_IVAR____TtC5Media29RadioNowPlayingViewController_badgeView) = 0;

              return;
            }
          }

          v34 = swift_unknownObjectWeakLoadStrong();
          if (v34)
          {
            v35 = *(v34 + OBJC_IVAR____TtC5Media15RadioCarManager_nowPlayingManager);
            v36 = v34;

            if (v35)
            {
              swift_getKeyPath();
              swift_getKeyPath();
              static Published.subscript.getter();

              v37 = v104;
              if (v104)
              {
                v38 = swift_unknownObjectWeakLoadStrong();
                if (v38)
                {
                  v98 = v37;
                  v94 = v0;
                  v39 = *(v38 + OBJC_IVAR____TtC5Media15RadioCarManager_nowPlayingManager);
                  v40 = v38;

                  if (!v39 || (swift_getKeyPath(), KeyPath = swift_getKeyPath(), static Published.subscript.getter(), , , , (v41 = v104) == 0))
                  {

LABEL_103:
                    v31 = 0;
                    v0 = v94;
LABEL_59:
                    v53 = OBJC_IVAR____TtC5Media29RadioNowPlayingViewController_badgeView;
                    v54 = *(v0 + OBJC_IVAR____TtC5Media29RadioNowPlayingViewController_badgeView);
                    if (v54 && (objc_opt_self(), (v55 = swift_dynamicCastObjCClass()) != 0))
                    {
                      if (v31)
                      {
                        v56 = v55;
                        v57 = v54;
                        v58 = [v31 imageWithRenderingMode:2];
                        [v56 setImage:v58];
                      }
                    }

                    else if (v31)
                    {
                      v59 = [v31 imageWithRenderingMode:2];
                      v60 = [objc_allocWithZone(UIImageView) initWithImage:v59];

                      v61 = v60;
                      [v61 setAlpha:0.4];
                      v62 = [v61 layer];
                      v63 = [objc_allocWithZone(CAFilter) initWithType:kCAFilterPlusL];
                      [v62 setCompositingFilter:v63];

                      v64 = [v61 layer];
                      [v64 setAllowsGroupBlending:0];

                      v65 = [objc_opt_self() labelColor];
                      [v61 setTintColor:v65];

                      v16 = *(v0 + v53);
                      *(v0 + v53) = v61;
                    }

                    v66 = *(v0 + v53);
                    goto LABEL_66;
                  }

                  v99 = CAFMediaSource.currentMulticasts.getter();

                  v42 = &v98[OBJC_IVAR____TtC5Media23TerrestrialRadioStation_multicast];
                  swift_beginAccess();
                  if ((v42[1] & 1) == 0)
                  {
                    v93 = *v42;
                    if (v93)
                    {
                      v11 = v99 >> 62;
                      if (v99 >> 62)
                      {
                        goto LABEL_101;
                      }

                      v97 = *((v99 & 0xFFFFFFFFFFFFFF8) + 0x10);
                      if (v97)
                      {
                        goto LABEL_45;
                      }
                    }
                  }

LABEL_102:

                  goto LABEL_103;
                }
              }
            }
          }

          v31 = 0;
          goto LABEL_59;
        }
      }
    }
  }
}

uint64_t sub_1000A6540(uint64_t a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong && (v3 = *(Strong + OBJC_IVAR____TtC5Media15RadioCarManager_nowPlayingManager), v4 = Strong, , v4, v3) && (swift_getKeyPath(), swift_getKeyPath(), static Published.subscript.getter(), , , , v14))
  {
  }

  else
  {
    v5 = swift_unknownObjectWeakLoadStrong();
    if (!v5)
    {
      return v5 & 1;
    }

    v6 = *(v5 + OBJC_IVAR____TtC5Media15RadioCarManager_nowPlayingManager);
    v7 = v5;

    if (!v6)
    {
      goto LABEL_16;
    }

    v8 = NowPlayingObserver.isNowPlayingOnlySource.getter();

    if ((v8 & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  v9 = swift_unknownObjectWeakLoadStrong();
  if (v9)
  {
    v10 = *(v9 + OBJC_IVAR____TtC5Media15RadioCarManager_nowPlayingManager);
    v11 = v9;

    if (v10)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      if (v14)
      {
        v12 = [v14 mediaSourceSemanticType];

        if (v12 == 5)
        {
          goto LABEL_16;
        }
      }
    }
  }

  if (a1 != 2)
  {
    if (a1 == 1)
    {
      LOBYTE(v5) = sub_10009D9C8();
      return v5 & 1;
    }

    if (!a1)
    {
      LOBYTE(v5) = sub_10009D5D4();
      return v5 & 1;
    }

LABEL_16:
    LOBYTE(v5) = 0;
    return v5 & 1;
  }

  if (sub_1000A5390())
  {
    LOBYTE(v5) = sub_10009D894();
  }

  else
  {
    LOBYTE(v5) = 1;
  }

  return v5 & 1;
}

uint64_t sub_1000A6744(uint64_t a1, void *a2)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = [*(Strong + OBJC_IVAR____TtC5Media15RadioCarManager_carManager) currentCar];

    if (v7)
    {
      v8 = [v7 nowPlayingInformation];

      if (v8)
      {
        v9 = [v8 nowPlaying];

        if (v9)
        {
          v10 = swift_unknownObjectWeakLoadStrong();
          if (v10 && (v11 = *(v10 + OBJC_IVAR____TtC5Media15RadioCarManager_nowPlayingManager), v12 = v10, , v12, v11) && (swift_getKeyPath(), swift_getKeyPath(), static Published.subscript.getter(), , , , v44))
          {
          }

          else
          {
            v15 = swift_unknownObjectWeakLoadStrong();
            if (!v15)
            {
              goto LABEL_27;
            }

            v16 = *(v15 + OBJC_IVAR____TtC5Media15RadioCarManager_nowPlayingManager);
            v17 = v15;

            if (!v16)
            {
              goto LABEL_27;
            }

            v18 = NowPlayingObserver.isNowPlayingOnlySource.getter();

            if ((v18 & 1) == 0)
            {
              goto LABEL_27;
            }
          }

          switch(a1)
          {
            case 2:
              v27 = [v2 transportControlView];
              v28 = String._bridgeToObjectiveC()();
              [v27 setPlayButtonImageName:v28];

              if (![v9 hasStop] || (objc_msgSend(v9, "stopDisabled")) && objc_msgSend(v9, "hasPause"))
              {
                [v9 pauseDisabled];
              }

              v35 = [v2 transportControlView];
              v36 = String._bridgeToObjectiveC()();
              [v35 setPauseButtonImageName:v36];

              if ((sub_1000A5390() & 1) == 0)
              {
                goto LABEL_48;
              }

              v13 = sub_10009D894();
LABEL_28:

              return v13 & 1;
            case 1:
              v26 = v2;
              if ((sub_10009DCDC() & 1) == 0)
              {
                if (sub_10009DFEC() & 1) == 0 || ([v9 jumpForwardDisabled])
                {
                  v29 = swift_unknownObjectWeakLoadStrong();
                  if (v29)
                  {
                    v30 = *(v29 + OBJC_IVAR____TtC5Media15RadioCarManager_nowPlayingManager);
                    v31 = v29;

                    if (v30)
                    {
                      swift_getKeyPath();
                      swift_getKeyPath();
                      static Published.subscript.getter();

                      if (v44)
                      {
                        v32 = [v26 traitCollection];
                        v33 = [v44 mediaSourceSemanticType];
                        if (v33 == 5 || v33 == 3)
                        {
                          v34 = CPUIImageForTransportButton();
                        }

                        else
                        {
                          v40 = String._bridgeToObjectiveC()();
                          v34 = _CPUIGlyphFactoryWithTraitCollection();
                        }

                        v41 = v34;
                        if (!v34)
                        {
                          v25 = 0;
LABEL_56:
                          *a2 = v25;

                          v13 = 1;
                          v9 = v25;
                          goto LABEL_28;
                        }

                        v25 = v34;
LABEL_55:
                        swift_unknownObjectRetain();
                        swift_unknownObjectRelease();
                        goto LABEL_56;
                      }
                    }
                  }

LABEL_48:
                  v13 = 1;
                  goto LABEL_28;
                }

                sub_10009E1C4(&selRef_hasJumpForwardInterval, &selRef_jumpForwardInterval, sub_1000A91F0, "Requested jump forward interval unsupported: %{public}f");
                dispatch thunk of CustomStringConvertible.description.getter();
                v37 = String._bridgeToObjectiveC()();

                v38 = [v26 traitCollection];
LABEL_46:
                v25 = CPUIImageForTransportButton();

                if (v25)
                {
                  v39 = v25;
                  goto LABEL_55;
                }

                goto LABEL_48;
              }

              break;
            case 0:
              v19 = v2;
              if ((sub_10009DCDC() & 1) == 0)
              {
                if (sub_10009DE14() & 1) == 0 || ([v9 jumpBackwardDisabled])
                {
                  v20 = swift_unknownObjectWeakLoadStrong();
                  if (v20)
                  {
                    v21 = *(v20 + OBJC_IVAR____TtC5Media15RadioCarManager_nowPlayingManager);
                    v22 = v20;

                    if (v21)
                    {
                      swift_getKeyPath();
                      swift_getKeyPath();
                      static Published.subscript.getter();

                      if (v44)
                      {
                        v23 = [v19 traitCollection];
                        v24 = [v44 mediaSourceSemanticType];
                        if (v24 == 5 || v24 == 3)
                        {
                          v25 = CPUIImageForTransportButton();
                        }

                        else
                        {
                          v42 = String._bridgeToObjectiveC()();
                          v25 = _CPUIGlyphFactoryWithTraitCollection();
                        }

                        v43 = v25;
                        if (!v25)
                        {
                          goto LABEL_56;
                        }

                        goto LABEL_55;
                      }
                    }
                  }

                  goto LABEL_48;
                }

                sub_10009E1C4(&selRef_hasJumpBackwardInterval, &selRef_jumpBackwardInterval, sub_1000A8EC0, "Requested jump back interval unsupported: %{public}f");
                dispatch thunk of CustomStringConvertible.description.getter();
                v37 = String._bridgeToObjectiveC()();

                v38 = [v19 traitCollection];
                goto LABEL_46;
              }

              break;
          }

LABEL_27:
          v13 = 0;
          goto LABEL_28;
        }
      }
    }
  }

  v13 = 0;
  return v13 & 1;
}

uint64_t sub_1000A6EB8()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong || (v1 = Strong, v2 = *(Strong + OBJC_IVAR____TtC5Media15RadioCarManager_sessionStatus), v1, v3 = [v2 currentSession], v2, !v3))
  {
    if (qword_1000EAD00 != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    sub_100006928(v13, qword_1000F3BD0);
    v3 = Logger.logObject.getter();
    v14 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v3, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v3, v14, "No session available!", v15, 2u);
    }

    goto LABEL_13;
  }

  v4 = [v3 configuration];
  v5 = [v4 nowPlayingAlbumArtMode];

  if (v5 == 2)
  {
LABEL_13:
    v12 = 1;
    goto LABEL_14;
  }

  if (qword_1000EAD00 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_100006928(v6, qword_1000F3BD0);
  v3 = v3;
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 134349056;
    v10 = [v3 configuration];
    v11 = [v10 nowPlayingAlbumArtMode];

    *(v9 + 4) = v11;
    _os_log_impl(&_mh_execute_header, v7, v8, "Album artwork is disallowed: %{public}ld", v9, 0xCu);
  }

  else
  {
  }

  v12 = 0;
LABEL_14:

  return v12;
}

char *sub_1000A713C()
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = result;
    v2 = *&result[OBJC_IVAR____TtC5Media15RadioCarManager_sessionStatus];

    v3 = [v2 currentSession];
    if (v3)
    {
      v4 = [v3 configuration];

      v5 = [v4 rightHandDrive];
      return v5;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void sub_1000A71F4(uint64_t a1)
{
  v2 = type metadata accessor for CAFMediaSource.SeekDirection();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = *(Strong + OBJC_IVAR____TtC5Media15RadioCarManager_nowPlayingManager);
    v8 = Strong;

    if (v7)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      v9 = v24;
      if (v24)
      {
        sub_100005A50(0, &qword_1000EEEA0, NSObject_ptr);
        v10 = v1;
        v11 = sub_100099B4C();
        v12 = static NSObject.== infix(_:_:)();

        if (v12)
        {
          v13 = &enum case for CAFMediaSource.SeekDirection.previous(_:);
LABEL_8:
          (*(v3 + 104))(v5, *v13, v2);
          CAFMediaSource.seek(direction:completion:)();

          (*(v3 + 8))(v5, v2);
          return;
        }

        v14 = sub_100099C50();
        v15 = static NSObject.== infix(_:_:)();

        if (v15)
        {
          v13 = &enum case for CAFMediaSource.SeekDirection.next(_:);
          goto LABEL_8;
        }

        v16 = sub_100099EDC();
        v17 = static NSObject.== infix(_:_:)();

        if (v17)
        {
          sub_1000A09B4();
        }

        else
        {
          v18 = sub_100099E68();
          v19 = static NSObject.== infix(_:_:)();

          if (v19)
          {
            v20 = swift_unknownObjectWeakLoadStrong();
            if (v20)
            {
              v21 = *(v20 + OBJC_IVAR____TtC5Media15RadioCarManager_nowPlayingManager);
              v22 = v20;

              if (v21)
              {
                swift_getKeyPath();
                swift_getKeyPath();
                static Published.subscript.getter();

                if (v24)
                {
                  swift_getKeyPath();
                  swift_getKeyPath();
                  static Published.subscript.getter();

                  TerrestrialRadioStation.setFavorite(_:)((v24 & 1) == 0);
                  [v10 reloadData];
                }
              }
            }
          }
        }
      }
    }
  }
}

void *sub_1000A7564()
{
  v1 = v0;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return _swiftEmptyArrayStorage;
  }

  v3 = *(Strong + OBJC_IVAR____TtC5Media15RadioCarManager_nowPlayingManager);
  v4 = Strong;

  if (!v3)
  {
    return _swiftEmptyArrayStorage;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  result = _swiftEmptyArrayStorage;
  if (v65)
  {
    v6 = swift_unknownObjectWeakLoadStrong();
    if (v6 && (v7 = *(v6 + OBJC_IVAR____TtC5Media15RadioCarManager_nowPlayingManager), v8 = v6, , v8, v7))
    {
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      if (v65 >> 62)
      {
        v9 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v9 = *((v65 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v10 = v9 > 1;
    }

    else
    {
      v10 = 0;
    }

    v11 = sub_100099B4C();
    [v11 setEnabled:v10];

    v12 = sub_100099C50();
    [v12 setEnabled:v10];

    v13 = [v65 mediaSourceSemanticType];
    if (v13 > 5)
    {
      if (v13 != 6 && v13 != 8)
      {
        goto LABEL_48;
      }

      v29 = sub_10009E7A4();
      if (v29)
      {
        v30 = v29;
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      }

      v31 = *(v1 + OBJC_IVAR____TtC5Media29RadioNowPlayingViewController____lazy_storage___seekBackButton);
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v32 = sub_100099D60();
      v33 = [objc_opt_self() mainBundle];
      v67._object = 0xE000000000000000;
      v34._countAndFlagsBits = 0x534E4F4954415453;
      v35.value._countAndFlagsBits = 0x6F69646152;
      v34._object = 0xE800000000000000;
      v35.value._object = 0xE500000000000000;
      v36._countAndFlagsBits = 0;
      v36._object = 0xE000000000000000;
      v67._countAndFlagsBits = 0;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v34, v35, v33, v36, v67);

      String.init(format:_:)();

      v37 = String._bridgeToObjectiveC()();

      [v32 setTitle:v37 forState:0];

      sub_10000368C(&unk_1000EC820, &qword_1000B5090);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1000B6BD0;
      v39 = *(v1 + OBJC_IVAR____TtC5Media29RadioNowPlayingViewController____lazy_storage___channelLabelButton);
      *(inited + 32) = v39;
      v40 = *(v1 + OBJC_IVAR____TtC5Media29RadioNowPlayingViewController____lazy_storage___seekNextButton);
      *(inited + 40) = v40;
      v41 = v39;
      v42 = v40;
      sub_10009F060(inited, sub_1000A3E80);
      if ([v65 mediaSourceSemanticType] != 8)
      {
        goto LABEL_48;
      }
    }

    else if ((v13 - 1) >= 2)
    {
      if (v13 != 3)
      {
LABEL_48:

        return _swiftEmptyArrayStorage;
      }

      v43 = sub_10009E7A4();
      if (v43)
      {
        v44 = v43;
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      }

      v45 = *(v1 + OBJC_IVAR____TtC5Media29RadioNowPlayingViewController____lazy_storage___seekBackButton);
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v46 = swift_unknownObjectWeakLoadStrong();
      if (v46)
      {
        v47 = *(v46 + OBJC_IVAR____TtC5Media15RadioCarManager_nowPlayingManager);
        v48 = v46;

        if (v47)
        {
          swift_getKeyPath();
          swift_getKeyPath();
          static Published.subscript.getter();

          v49 = OBJC_IVAR____TtC5Media23TerrestrialRadioStation_frequency;
          swift_beginAccess();
          v50 = *(v65 + v49);

          if (v50)
          {
            sub_10000368C(&unk_1000EEE80, &unk_1000B58C0);
            v51 = swift_allocObject();
            *(v51 + 16) = xmmword_1000B4760;
            v52 = dispatch thunk of CustomStringConvertible.description.getter();
            v54 = v53;
            *(v51 + 56) = &type metadata for String;
            *(v51 + 64) = sub_10002BE6C();
            *(v51 + 32) = v52;
            *(v51 + 40) = v54;
            v55 = [objc_opt_self() mainBundle];
            v68._object = 0xE000000000000000;
            v56._countAndFlagsBits = 0x4E4148435F4D5853;
            v56._object = 0xEE0040255F4C454ELL;
            v57.value._countAndFlagsBits = 0x6F69646152;
            v57.value._object = 0xE500000000000000;
            v58._countAndFlagsBits = 0;
            v58._object = 0xE000000000000000;
            v68._countAndFlagsBits = 0;
            NSLocalizedString(_:tableName:bundle:value:comment:)(v56, v57, v55, v58, v68);

            String.init(format:_:)();

            v59 = sub_100099D60();
            v60 = String._bridgeToObjectiveC()();

            [v59 setTitle:v60 forState:0];

            v61 = *(v1 + OBJC_IVAR____TtC5Media29RadioNowPlayingViewController____lazy_storage___channelLabelButton);
            specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
            if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            }

            specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          }
        }
      }

      v62 = *(v1 + OBJC_IVAR____TtC5Media29RadioNowPlayingViewController____lazy_storage___seekNextButton);
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    }

    else
    {
      v14 = sub_10009E7A4();
      if (v14)
      {
        v15 = v14;
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      }

      v16 = sub_100099D60();
      v17 = [objc_opt_self() mainBundle];
      v66._object = 0xE000000000000000;
      v18._countAndFlagsBits = 0x534E4F4954415453;
      v19.value._countAndFlagsBits = 0x6F69646152;
      v18._object = 0xE800000000000000;
      v19.value._object = 0xE500000000000000;
      v20._countAndFlagsBits = 0;
      v20._object = 0xE000000000000000;
      v66._countAndFlagsBits = 0;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v18, v19, v17, v20, v66);

      String.init(format:_:)();

      v21 = String._bridgeToObjectiveC()();

      [v16 setTitle:v21 forState:0];

      sub_10000368C(&unk_1000EC820, &qword_1000B5090);
      v22 = swift_initStackObject();
      *(v22 + 16) = xmmword_1000B6D30;
      v23 = *(v1 + OBJC_IVAR____TtC5Media29RadioNowPlayingViewController____lazy_storage___seekBackButton);
      *(v22 + 32) = v23;
      v24 = *(v1 + OBJC_IVAR____TtC5Media29RadioNowPlayingViewController____lazy_storage___channelLabelButton);
      *(v22 + 40) = v24;
      v25 = *(v1 + OBJC_IVAR____TtC5Media29RadioNowPlayingViewController____lazy_storage___seekNextButton);
      *(v22 + 48) = v25;
      v26 = v25;
      v27 = v24;
      v28 = v23;
      sub_10009F060(v22, sub_1000A3E80);
    }

    v63 = sub_10009EBA0();
    if (v63)
    {
      v64 = v63;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    }

    goto LABEL_48;
  }

  return result;
}

void sub_1000A7F38(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for CAFMediaSource.SeekDirection();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v75 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = *(Strong + OBJC_IVAR____TtC5Media15RadioCarManager_nowPlayingManager);
    v11 = Strong;

    if (v10)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      v76 = v6;
      static Published.subscript.getter();

      v12 = aBlock;
      if (aBlock)
      {
        v13 = swift_unknownObjectWeakLoadStrong();
        if (!v13)
        {
          goto LABEL_69;
        }

        v14 = v13;
        v15 = [*(v13 + OBJC_IVAR____TtC5Media15RadioCarManager_carManager) currentCar];

        if (!v15)
        {
          goto LABEL_69;
        }

        v16 = [v15 nowPlayingInformation];

        if (!v16)
        {
          goto LABEL_69;
        }

        v17 = [v16 nowPlaying];

        if (!v17)
        {
          goto LABEL_69;
        }

        v18 = v17;
        v19 = [v12 mediaSourceSemanticType];
        v20 = (v19 < 9) & (0x14Fu >> v19);
        if (a1)
        {
          if (a1 != 1)
          {
            if (a1 == 2)
            {
              if (sub_1000A5390())
              {
                sub_10009FC58();
              }

              else
              {
                sub_1000A00A4();
              }
            }

            goto LABEL_68;
          }

          if (v20)
          {
            v21 = swift_unknownObjectWeakLoadStrong();
            if (!v21 || (v22 = *(v21 + OBJC_IVAR____TtC5Media15RadioCarManager_nowPlayingManager), v23 = v21, , v23, v18 = v17, !v22) || (swift_getKeyPath(), swift_getKeyPath(), static Published.subscript.getter(), v18 = v17, , , , (v24 = aBlock) == 0) || (v25 = [aBlock mediaSourceSemanticType], v24, v26 = v25 == 3, v18 = v17, !v26))
            {
              v38 = &enum case for CAFMediaSource.SeekDirection.next(_:);
LABEL_41:
              v39 = v76;
              (*(v76 + 104))(v8, *v38, v5);
              CAFMediaSource.seek(direction:completion:)();

              (*(v39 + 8))(v8, v5);
              return;
            }
          }

          if (a2 != 2)
          {
            if (a2 == 1 && [v18 hasBeginSeekForward] && objc_msgSend(v18, "hasEndSeek") && (objc_msgSend(v18, "beginSeekForwardDisabled") & 1) == 0)
            {
              v2[OBJC_IVAR____TtC5Media29RadioNowPlayingViewController_heldAction] = 1;
              v27 = swift_allocObject();
              *(v27 + 16) = v2;
              v81 = sub_1000A8DF0;
              v82 = v27;
              aBlock = _NSConcreteStackBlock;
              v78 = 1107296256;
              v79 = sub_10009959C;
              v80 = &unk_1000E2BE0;
              v28 = _Block_copy(&aBlock);
              v29 = v2;

              [v18 beginSeekForwardWithCompletion:v28];
LABEL_37:
              v37 = v28;
LABEL_57:
              _Block_release(v37);

              return;
            }

            goto LABEL_45;
          }

          v40 = OBJC_IVAR____TtC5Media29RadioNowPlayingViewController_heldAction;
          if (v2[OBJC_IVAR____TtC5Media29RadioNowPlayingViewController_heldAction] != 1 || ![v18 hasEndSeek])
          {
LABEL_45:
            if (sub_10009DFEC() & 1) == 0 || ([v18 jumpForwardDisabled])
            {
              if (![v18 hasNextItem] || (objc_msgSend(v18, "nextItemDisabled") & 1) != 0)
              {
                if (qword_1000EAD00 != -1)
                {
                  swift_once();
                }

                v42 = type metadata accessor for Logger();
                sub_100006928(v42, qword_1000F3BD0);
                v43 = Logger.logObject.getter();
                v44 = static os_log_type_t.debug.getter();
                if (!os_log_type_enabled(v43, v44))
                {
                  goto LABEL_67;
                }

                v45 = swift_slowAlloc();
                *v45 = 0;
                v46 = "No available action to handle next button press!";
LABEL_66:
                _os_log_impl(&_mh_execute_header, v43, v44, v46, v45, 2u);

LABEL_67:

LABEL_68:
LABEL_69:

                return;
              }

              if (qword_1000EAD00 == -1)
              {
                goto LABEL_84;
              }

              goto LABEL_96;
            }

            if (qword_1000EAD00 != -1)
            {
              swift_once();
            }

            v50 = type metadata accessor for Logger();
            sub_100006928(v50, qword_1000F3BD0);
            v51 = Logger.logObject.getter();
            v52 = static os_log_type_t.debug.getter();
            if (os_log_type_enabled(v51, v52))
            {
              v53 = swift_slowAlloc();
              *v53 = 0;
              _os_log_impl(&_mh_execute_header, v51, v52, "Jumping forward...", v53, 2u);
            }

            v54 = sub_10009E1C4(&selRef_hasJumpForwardInterval, &selRef_jumpForwardInterval, sub_1000A91F0, "Requested jump forward interval unsupported: %{public}f");
            if (!(v54 >> 16))
            {
              v55 = v54;
              v56 = swift_allocObject();
              *(v56 + 16) = v18;
              v81 = sub_1000A8DE8;
              v82 = v56;
              aBlock = _NSConcreteStackBlock;
              v78 = 1107296256;
              v79 = sub_10009959C;
              v80 = &unk_1000E2B68;
              v57 = _Block_copy(&aBlock);
              v58 = v18;

              [v58 jumpForwardWithJumpInterval:v55 completion:v57];
              goto LABEL_82;
            }

            __break(1u);
LABEL_94:
            swift_once();
LABEL_78:
            v59 = type metadata accessor for Logger();
            sub_100006928(v59, qword_1000F3BD0);
            v60 = Logger.logObject.getter();
            v61 = static os_log_type_t.debug.getter();
            if (os_log_type_enabled(v60, v61))
            {
              v62 = swift_slowAlloc();
              *v62 = 0;
              _os_log_impl(&_mh_execute_header, v60, v61, "Jumping back...", v62, 2u);
            }

            v63 = sub_10009E1C4(&selRef_hasJumpBackwardInterval, &selRef_jumpBackwardInterval, sub_1000A8EC0, "Requested jump back interval unsupported: %{public}f");
            if (v63 >> 16)
            {
              __break(1u);
LABEL_96:
              swift_once();
LABEL_84:
              v66 = type metadata accessor for Logger();
              sub_100006928(v66, qword_1000F3BD0);
              v67 = Logger.logObject.getter();
              v68 = static os_log_type_t.debug.getter();
              if (os_log_type_enabled(v67, v68))
              {
                v69 = swift_slowAlloc();
                *v69 = 0;
                _os_log_impl(&_mh_execute_header, v67, v68, "Moving to next item...", v69, 2u);
              }

              v81 = sub_10009FC44;
              v82 = 0;
              aBlock = _NSConcreteStackBlock;
              v78 = 1107296256;
              v79 = sub_10009959C;
              v80 = &unk_1000E2B18;
              v70 = _Block_copy(&aBlock);
              [v18 nextItemWithCompletion:v70];
              goto LABEL_92;
            }

            v64 = v63;
            v65 = swift_allocObject();
            *(v65 + 16) = v18;
            v81 = sub_1000A8E1C;
            v82 = v65;
            aBlock = _NSConcreteStackBlock;
            v78 = 1107296256;
            v79 = sub_10009959C;
            v80 = &unk_1000E2C58;
            v57 = _Block_copy(&aBlock);
            v58 = v18;

            [v58 jumpBackwardWithJumpInterval:v64 completion:v57];
LABEL_82:

            _Block_release(v57);
            return;
          }

          v2[v40] = 0;
          v81 = sub_1000A9168;
          v82 = 0;
          aBlock = _NSConcreteStackBlock;
          v78 = 1107296256;
          v41 = &unk_1000E2B90;
LABEL_56:
          v79 = sub_10009959C;
          v80 = v41;
          v48 = _Block_copy(&aBlock);
          [v18 endSeekWithCompletion:v48];
          v37 = v48;
          goto LABEL_57;
        }

        if (v20)
        {
          v30 = swift_unknownObjectWeakLoadStrong();
          if (!v30 || (v31 = *(v30 + OBJC_IVAR____TtC5Media15RadioCarManager_nowPlayingManager), v32 = v30, , v32, v18 = v17, !v31) || (swift_getKeyPath(), swift_getKeyPath(), static Published.subscript.getter(), v18 = v17, , , , (v33 = aBlock) == 0) || (v34 = [aBlock mediaSourceSemanticType], v33, v26 = v34 == 3, v18 = v17, !v26))
          {
            v38 = &enum case for CAFMediaSource.SeekDirection.previous(_:);
            goto LABEL_41;
          }
        }

        if (a2 == 2)
        {
          v47 = OBJC_IVAR____TtC5Media29RadioNowPlayingViewController_heldAction;
          if (v2[OBJC_IVAR____TtC5Media29RadioNowPlayingViewController_heldAction] == 1 && [v18 hasEndSeek])
          {
            v2[v47] = 0;
            v81 = sub_1000A9168;
            v82 = 0;
            aBlock = _NSConcreteStackBlock;
            v78 = 1107296256;
            v41 = &unk_1000E2C80;
            goto LABEL_56;
          }
        }

        else if (a2 == 1 && [v18 hasBeginSeekBackward] && objc_msgSend(v18, "hasEndSeek") && (objc_msgSend(v18, "beginSeekBackwardDisabled") & 1) == 0)
        {
          v2[OBJC_IVAR____TtC5Media29RadioNowPlayingViewController_heldAction] = 1;
          v35 = swift_allocObject();
          *(v35 + 16) = v2;
          v81 = sub_1000A8E24;
          v82 = v35;
          aBlock = _NSConcreteStackBlock;
          v78 = 1107296256;
          v79 = sub_10009959C;
          v80 = &unk_1000E2CD0;
          v28 = _Block_copy(&aBlock);
          v36 = v2;

          [v18 beginSeekBackwardWithCompletion:v28];
          goto LABEL_37;
        }

        if (sub_10009DE14() & 1) == 0 || ([v18 jumpBackwardDisabled])
        {
          if (![v18 hasPreviousItem] || (objc_msgSend(v18, "previousItemDisabled") & 1) != 0)
          {
            if (qword_1000EAD00 != -1)
            {
              swift_once();
            }

            v49 = type metadata accessor for Logger();
            sub_100006928(v49, qword_1000F3BD0);
            v43 = Logger.logObject.getter();
            v44 = static os_log_type_t.debug.getter();
            if (!os_log_type_enabled(v43, v44))
            {
              goto LABEL_67;
            }

            v45 = swift_slowAlloc();
            *v45 = 0;
            v46 = "No available action to handle previous button press!";
            goto LABEL_66;
          }

          if (qword_1000EAD00 != -1)
          {
            swift_once();
          }

          v71 = type metadata accessor for Logger();
          sub_100006928(v71, qword_1000F3BD0);
          v72 = Logger.logObject.getter();
          v73 = static os_log_type_t.debug.getter();
          if (os_log_type_enabled(v72, v73))
          {
            v74 = swift_slowAlloc();
            *v74 = 0;
            _os_log_impl(&_mh_execute_header, v72, v73, "Moving to previous item...", v74, 2u);
          }

          v81 = sub_10009F4B0;
          v82 = 0;
          aBlock = _NSConcreteStackBlock;
          v78 = 1107296256;
          v79 = sub_10009959C;
          v80 = &unk_1000E2C08;
          v70 = _Block_copy(&aBlock);
          [v18 previousItemWithCompletion:v70];
LABEL_92:

          _Block_release(v70);
          return;
        }

        if (qword_1000EAD00 == -1)
        {
          goto LABEL_78;
        }

        goto LABEL_94;
      }
    }
  }
}

uint64_t sub_1000A8E50(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000368C(&qword_1000EEE48, &qword_1000BA540);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000A8F64(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1000A8FBC()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000A8FF4()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

id sub_1000A9074()
{
  v1 = *(v0 + 16);
  v2 = *&v1[OBJC_IVAR____TtC5Media29RadioNowPlayingViewController_cachedArtwork];
  *&v1[OBJC_IVAR____TtC5Media29RadioNowPlayingViewController_cachedArtwork] = 0;

  return [v1 reloadData];
}

uint64_t sub_1000A920C()
{
  type metadata accessor for CAUAssetLibraryManager();
  swift_allocObject();
  result = CAUAssetLibraryManager.init()();
  qword_1000F3D00 = result;
  return result;
}

id sub_1000A924C()
{
  result = [objc_allocWithZone(CAFCarManager) init];
  qword_1000F3D08 = result;
  return result;
}

void sub_1000A9334(void **a1, uint64_t a2)
{
  v2 = *a1;
  if (qword_1000EACD8 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_100006928(v3, qword_1000F3B58);
  v4 = v2;
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    *(v7 + 4) = v4;
    *v8 = v2;
    v9 = v4;
    _os_log_impl(&_mh_execute_header, v5, v6, "Received asset library %@", v7, 0xCu);
    sub_100007834(v8, &unk_1000EE230, &qword_1000BA550);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = *(Strong + OBJC_IVAR____TtC5Media11AppDelegate_carManager);
    v12 = Strong;
    v13 = v11;

    if (v11)
    {
      sub_10000F318();
      sub_10000ED64();
      sub_10000E5C0();
      sub_10000E074();
    }
  }
}

uint64_t sub_1000A9568(void *a1)
{
  v2 = v1;
  if (qword_1000EACC0 != -1)
  {
    swift_once();
  }

  sub_10000612C(2, 0);
  sub_1000AB61C();
  v4 = [a1 _FBSScene];
  v5 = [v4 settings];
  objc_opt_self();
  v6 = swift_dynamicCastObjCClass();
  if (v6)
  {
    v7 = [v6 hostedAltScreenPresentationType];

    if ((v7 - 1) < 3)
    {
      if (qword_1000EACD8 != -1)
      {
        swift_once();
      }

      v8 = type metadata accessor for Logger();
      sub_100006928(v8, qword_1000F3B58);
      v9 = a1;
      v10 = Logger.logObject.getter();
      v11 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v10, v11))
      {
        v12 = swift_slowAlloc();
        v13 = swift_slowAlloc();
        *v12 = 138543362;
        *(v12 + 4) = v9;
        *v13 = v9;
        v14 = v9;
        _os_log_impl(&_mh_execute_header, v10, v11, "Media has received a new cluster scene %{public}@", v12, 0xCu);
        sub_100007834(v13, &unk_1000EE230, &qword_1000BA550);
      }

      v15 = [v9 _FBSScene];
      v16 = [v15 settings];
      objc_opt_self();
      v17 = swift_dynamicCastObjCClass();
      if (v17)
      {
        [v17 hostedAltScreenPresentationType];

        swift_getKeyPath();
        swift_getKeyPath();
        v18 = v2;
        static Published.subscript.setter();
      }

      else
      {
      }

      v56 = [v9 _FBSScene];
      [v56 addObserver:v2];

      v57 = *&v2[OBJC_IVAR____TtC5Media11AppDelegate_clusterScene];
      *&v2[OBJC_IVAR____TtC5Media11AppDelegate_clusterScene] = v9;
      v58 = v9;

      [v58 activationState];
      swift_getKeyPath();
      swift_getKeyPath();
      v59 = v2;
LABEL_33:
      static Published.subscript.setter();
      return sub_1000AB6C8(a1);
    }
  }

  else
  {
  }

  v19 = [a1 _FBSScene];
  v20 = [v19 settings];
  objc_opt_self();
  v21 = swift_dynamicCastObjCClass();
  if (v21)
  {
    v22 = [v21 hostedAltScreenPresentationType];

    if (v22 == 4)
    {
      if (qword_1000EACD8 != -1)
      {
        swift_once();
      }

      v23 = type metadata accessor for Logger();
      sub_100006928(v23, qword_1000F3B58);
      v24 = a1;
      v25 = Logger.logObject.getter();
      v26 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        v28 = swift_slowAlloc();
        *v27 = 138543362;
        *(v27 + 4) = v24;
        *v28 = v24;
        v29 = v24;
        _os_log_impl(&_mh_execute_header, v25, v26, "Media has received a new passenger display scene %{public}@", v27, 0xCu);
        sub_100007834(v28, &unk_1000EE230, &qword_1000BA550);
      }

      v30 = *&v2[OBJC_IVAR____TtC5Media11AppDelegate_passengerScene];
      *&v2[OBJC_IVAR____TtC5Media11AppDelegate_passengerScene] = v24;
      v31 = v24;

      [v31 activationState];
      swift_getKeyPath();
      swift_getKeyPath();
      v32 = v2;
      goto LABEL_33;
    }
  }

  else
  {
  }

  v33 = [a1 _FBSScene];
  v34 = [v33 settings];

  objc_opt_self();
  v35 = swift_dynamicCastObjCClass();

  if (v35)
  {
    if (qword_1000EACD8 != -1)
    {
      swift_once();
    }

    v36 = type metadata accessor for Logger();
    sub_100006928(v36, qword_1000F3B58);
    v37 = a1;
    v38 = Logger.logObject.getter();
    v39 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      *v40 = 138543362;
      *(v40 + 4) = v37;
      *v41 = v37;
      v42 = v37;
      _os_log_impl(&_mh_execute_header, v38, v39, "Media has received a new dashboard widget scene %{public}@", v40, 0xCu);
      sub_100007834(v41, &unk_1000EE230, &qword_1000BA550);
    }

    v43 = *&v2[OBJC_IVAR____TtC5Media11AppDelegate_dashboardWidgetScene];
    *&v2[OBJC_IVAR____TtC5Media11AppDelegate_dashboardWidgetScene] = v37;
    v44 = v37;

    [v44 activationState];
    swift_getKeyPath();
    swift_getKeyPath();
    v45 = v2;
    goto LABEL_33;
  }

  if (qword_1000EACD8 != -1)
  {
    swift_once();
  }

  v46 = type metadata accessor for Logger();
  sub_100006928(v46, qword_1000F3B58);
  v47 = a1;
  v48 = Logger.logObject.getter();
  v49 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v48, v49))
  {
    v50 = swift_slowAlloc();
    v51 = swift_slowAlloc();
    *v50 = 138543362;
    *(v50 + 4) = v47;
    *v51 = v47;
    v52 = v47;
    _os_log_impl(&_mh_execute_header, v48, v49, "Media has received a new main scene %{public}@", v50, 0xCu);
    sub_100007834(v51, &unk_1000EE230, &qword_1000BA550);
  }

  v53 = [v47 _FBSScene];
  [v53 addObserver:v2];

  v54 = *&v2[OBJC_IVAR____TtC5Media11AppDelegate_carScene];
  *&v2[OBJC_IVAR____TtC5Media11AppDelegate_carScene] = v47;
  v55 = v47;

  return sub_1000AB6C8(a1);
}

void sub_1000A9DD0(void *a1)
{
  v2 = v1;
  v4 = [a1 _FBSScene];
  v5 = [v4 settings];
  objc_opt_self();
  v6 = swift_dynamicCastObjCClass();
  if (v6)
  {
    v7 = [v6 hostedAltScreenPresentationType];

    if ((v7 - 1) < 3)
    {
      if (qword_1000EACD8 != -1)
      {
        swift_once();
      }

      v8 = type metadata accessor for Logger();
      sub_100006928(v8, qword_1000F3B58);
      v9 = a1;
      v10 = Logger.logObject.getter();
      v11 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v10, v11))
      {
        v12 = swift_slowAlloc();
        v13 = swift_slowAlloc();
        *v12 = 138543362;
        *(v12 + 4) = v9;
        *v13 = v9;
        v14 = v9;
        _os_log_impl(&_mh_execute_header, v10, v11, "Media is disconnecting from cluster scene %{public}@", v12, 0xCu);
        sub_100007834(v13, &unk_1000EE230, &qword_1000BA550);
      }

      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      if (v74)
      {
        [v74 setHidden:1];
      }

      v15 = [v9 _FBSScene];
      [v15 removeObserver:v2];

      swift_getKeyPath();
      swift_getKeyPath();
      v74 = 0;
      v16 = v2;
      static Published.subscript.setter();
      v17 = &qword_1000EF000;
      v18 = *&v16[OBJC_IVAR____TtC5Media11AppDelegate_clusterScene];
      *&v16[OBJC_IVAR____TtC5Media11AppDelegate_clusterScene] = 0;

      swift_getKeyPath();
      swift_getKeyPath();
      LOBYTE(v74) = 0;
      v19 = v16;
      static Published.subscript.setter();
      v20 = &qword_1000EF000;
      v21 = &qword_1000EF000;
      goto LABEL_37;
    }
  }

  else
  {
  }

  v22 = [a1 _FBSScene];
  v23 = [v22 settings];
  objc_opt_self();
  v24 = swift_dynamicCastObjCClass();
  if (!v24)
  {

    goto LABEL_21;
  }

  v25 = [v24 hostedAltScreenPresentationType];

  if (v25 != 4)
  {
LABEL_21:
    v35 = [a1 _FBSScene];
    v36 = [v35 settings];

    objc_opt_self();
    v37 = swift_dynamicCastObjCClass();

    if (!v37)
    {
      if (qword_1000EACD8 != -1)
      {
        swift_once();
      }

      v47 = type metadata accessor for Logger();
      sub_100006928(v47, qword_1000F3B58);
      v48 = Logger.logObject.getter();
      v49 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v48, v49))
      {
        v50 = swift_slowAlloc();
        *v50 = 0;
        _os_log_impl(&_mh_execute_header, v48, v49, "Media is disconnecting from a main scene!", v50, 2u);
      }

      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      if (v74)
      {
        [v74 setHidden:1];
      }

      v51 = [a1 _FBSScene];
      [v51 removeObserver:v2];

      swift_getKeyPath();
      swift_getKeyPath();
      v74 = 0;
      v52 = v2;
      static Published.subscript.setter();
      v21 = &qword_1000EF000;
      v53 = *&v52[OBJC_IVAR____TtC5Media11AppDelegate_carScene];
      *&v52[OBJC_IVAR____TtC5Media11AppDelegate_carScene] = 0;

      v20 = &qword_1000EF000;
      v17 = &qword_1000EF000;
      goto LABEL_37;
    }

    v20 = &qword_1000EF000;
    if (qword_1000EACD8 != -1)
    {
      swift_once();
    }

    v38 = type metadata accessor for Logger();
    sub_100006928(v38, qword_1000F3B58);
    v39 = a1;
    v40 = Logger.logObject.getter();
    v41 = static os_log_type_t.debug.getter();

    v17 = &qword_1000EF000;
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      *v42 = 138543362;
      *(v42 + 4) = v39;
      *v43 = v39;
      v44 = v39;
      _os_log_impl(&_mh_execute_header, v40, v41, "Media is disconnecting from dashboard widget scene %{public}@", v42, 0xCu);
      sub_100007834(v43, &unk_1000EE230, &qword_1000BA550);
    }

    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    if (v74)
    {
      [v74 setHidden:1];
    }

    swift_getKeyPath();
    swift_getKeyPath();
    v74 = 0;
    v33 = v2;
    static Published.subscript.setter();
    v45 = *&v33[OBJC_IVAR____TtC5Media11AppDelegate_dashboardWidgetScene];
    *&v33[OBJC_IVAR____TtC5Media11AppDelegate_dashboardWidgetScene] = 0;

    swift_getKeyPath();
    goto LABEL_29;
  }

  if (qword_1000EACD8 != -1)
  {
    swift_once();
  }

  v26 = type metadata accessor for Logger();
  sub_100006928(v26, qword_1000F3B58);
  v27 = a1;
  v28 = Logger.logObject.getter();
  v29 = static os_log_type_t.debug.getter();

  v20 = &qword_1000EF000;
  v17 = &qword_1000EF000;
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    *v30 = 138543362;
    *(v30 + 4) = v27;
    *v31 = v27;
    v32 = v27;
    _os_log_impl(&_mh_execute_header, v28, v29, "Media is disconnecting from passenger scene %{public}@", v30, 0xCu);
    sub_100007834(v31, &unk_1000EE230, &qword_1000BA550);
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v74)
  {
    [v74 setHidden:1];
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v74 = 0;
  v33 = v2;
  static Published.subscript.setter();
  v34 = *&v33[OBJC_IVAR____TtC5Media11AppDelegate_passengerScene];
  *&v33[OBJC_IVAR____TtC5Media11AppDelegate_passengerScene] = 0;

  swift_getKeyPath();
LABEL_29:
  swift_getKeyPath();
  LOBYTE(v74) = 0;
  v46 = v33;
  static Published.subscript.setter();
  v21 = &qword_1000EF000;
LABEL_37:
  v54 = *&v2[v17[16]];
  v55 = *&v2[v20[17]];
  v56 = *&v2[OBJC_IVAR____TtC5Media11AppDelegate_dashboardWidgetScene];
  v70 = *&v2[v21[15]];
  v71 = v54;
  v72 = v55;
  v73 = v56;
  v57 = _swiftEmptyArrayStorage;
  v74 = _swiftEmptyArrayStorage;
  v58 = v56;
  v59 = v70;
  v60 = v54;
  v61 = v55;
  v62 = 0;
LABEL_38:
  if (v62 <= 4)
  {
    v63 = 4;
  }

  else
  {
    v63 = v62;
  }

  while (v62 != 4)
  {
    if (v63 == v62)
    {
      __break(1u);
      goto LABEL_56;
    }

    v64 = v69[v62++ + 4];
    if (v64)
    {
      v65 = v64;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v74 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v74 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v57 = v74;
      goto LABEL_38;
    }
  }

  sub_10000368C(&unk_1000EF260, &qword_1000BABD0);
  swift_arrayDestroy();
  if (!(v57 >> 62))
  {
    v66 = *((v57 & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_49;
  }

LABEL_56:
  v66 = _CocoaArrayWrapper.endIndex.getter();
LABEL_49:

  if (!v66)
  {
    if (qword_1000EACC0 != -1)
    {
      swift_once();
    }

    sub_100006020();
    v67 = *&v2[OBJC_IVAR____TtC5Media11AppDelegate_carManager];
    if (v67)
    {
      v68 = v67;
      sub_10000D904();
    }
  }
}

void sub_1000AA8A0(void *a1)
{
  v2 = v1;
  v4 = [a1 _FBSScene];
  v5 = [v4 settings];

  objc_opt_self();
  v6 = swift_dynamicCastObjCClass();

  if (v6)
  {
    if (qword_1000EACD8 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_100006928(v7, qword_1000F3B58);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v8, v9, "Dashboard scene did enter background", v10, 2u);
    }

LABEL_6:

    swift_getKeyPath();
    swift_getKeyPath();
    v11 = v2;
    static Published.subscript.setter();
    return;
  }

  v12 = [a1 _FBSScene];
  v13 = [v12 settings];
  objc_opt_self();
  v14 = swift_dynamicCastObjCClass();
  if (v14)
  {
    v15 = [v14 hostedAltScreenPresentationType];

    if (v15 == 4)
    {
      if (qword_1000EACD8 != -1)
      {
        swift_once();
      }

      v16 = type metadata accessor for Logger();
      sub_100006928(v16, qword_1000F3B58);
      v8 = Logger.logObject.getter();
      v17 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v8, v17))
      {
        v18 = swift_slowAlloc();
        *v18 = 0;
        _os_log_impl(&_mh_execute_header, v8, v17, "Passenger scene did enter background", v18, 2u);
      }

      goto LABEL_6;
    }
  }

  else
  {
  }

  v19 = [a1 _FBSScene];
  v25 = [v19 settings];
  objc_opt_self();
  v20 = swift_dynamicCastObjCClass();
  if (v20)
  {
    v21 = [v20 hostedAltScreenPresentationType];

    if ((v21 - 1) < 3)
    {
      if (qword_1000EACD8 != -1)
      {
        swift_once();
      }

      v22 = type metadata accessor for Logger();
      sub_100006928(v22, qword_1000F3B58);
      v8 = Logger.logObject.getter();
      v23 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v8, v23))
      {
        v24 = swift_slowAlloc();
        *v24 = 0;
        _os_log_impl(&_mh_execute_header, v8, v23, "Cluster scene did enter background", v24, 2u);
      }

      goto LABEL_6;
    }
  }

  else
  {
  }
}

void sub_1000AAD14(void *a1)
{
  v2 = v1;
  v4 = [a1 _FBSScene];
  v5 = [v4 settings];
  objc_opt_self();
  v6 = swift_dynamicCastObjCClass();
  if (v6)
  {
    v7 = [v6 hostedAltScreenPresentationType];

    if ((v7 - 1) < 3)
    {
      if (qword_1000EACC0 != -1)
      {
        swift_once();
      }

      sub_10000612C(5, 0);
      if (qword_1000EACD8 != -1)
      {
        swift_once();
      }

      v8 = type metadata accessor for Logger();
      sub_100006928(v8, qword_1000F3B58);
      v9 = Logger.logObject.getter();
      v10 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v9, v10))
      {
        v11 = swift_slowAlloc();
        *v11 = 0;
        _os_log_impl(&_mh_execute_header, v9, v10, "Cluster scene will enter foreground", v11, 2u);
      }

LABEL_26:

      swift_getKeyPath();
      swift_getKeyPath();
      v25 = v2;
      static Published.subscript.setter();
      return;
    }
  }

  else
  {
  }

  v12 = [a1 _FBSScene];
  v13 = [v12 settings];
  objc_opt_self();
  v14 = swift_dynamicCastObjCClass();
  if (v14)
  {
    v15 = [v14 hostedAltScreenPresentationType];

    if (v15 == 4)
    {
      if (qword_1000EACC0 != -1)
      {
        swift_once();
      }

      sub_10000612C(6, 0);
      if (qword_1000EACD8 != -1)
      {
        swift_once();
      }

      v16 = type metadata accessor for Logger();
      sub_100006928(v16, qword_1000F3B58);
      v9 = Logger.logObject.getter();
      v17 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v9, v17))
      {
        v18 = swift_slowAlloc();
        *v18 = 0;
        _os_log_impl(&_mh_execute_header, v9, v17, "Passenger scene will enter foreground", v18, 2u);
      }

      goto LABEL_26;
    }
  }

  else
  {
  }

  v19 = [a1 _FBSScene];
  v20 = [v19 settings];

  objc_opt_self();
  v21 = swift_dynamicCastObjCClass();

  if (v21)
  {
    if (qword_1000EACD8 != -1)
    {
      swift_once();
    }

    v22 = type metadata accessor for Logger();
    sub_100006928(v22, qword_1000F3B58);
    v9 = Logger.logObject.getter();
    v23 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v9, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&_mh_execute_header, v9, v23, "Dashboard scene will enter foreground", v24, 2u);
    }

    goto LABEL_26;
  }

  if (qword_1000EACC0 != -1)
  {
    swift_once();
  }

  sub_10000612C(7, 0);
}

void sub_1000AB230(uint64_t a1)
{
  v27 = type metadata accessor for URL();
  v2 = *(v27 - 8);
  __chkstk_darwin(v27);
  v4 = v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    sub_100005A50(0, &qword_1000ECF40, UIOpenURLContext_ptr);
    sub_1000058D0(&qword_1000ECF48, &qword_1000ECF40, UIOpenURLContext_ptr, &protocol conformance descriptor for NSObject);
    Set.Iterator.init(_cocoa:)();
    a1 = v31;
    v5 = v32;
    v6 = v33;
    v7 = v34;
    v8 = v35;
  }

  else
  {
    v9 = -1 << *(a1 + 32);
    v5 = a1 + 56;
    v6 = ~v9;
    v10 = -v9;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v8 = v11 & *(a1 + 56);

    v7 = 0;
  }

  v12 = (v6 + 64) >> 6;
  v26 = (v2 + 8);
  v24[2] = v6;
  v25 = "_isPassengerSceneForeground";
  v28 = a1;
  if (a1 < 0)
  {
    goto LABEL_14;
  }

LABEL_8:
  v13 = v7;
  v14 = v8;
  v15 = v7;
  if (v8)
  {
LABEL_12:
    v16 = (v14 - 1) & v14;
    v17 = *(*(a1 + 48) + ((v15 << 9) | (8 * __clz(__rbit64(v14)))));
    if (v17)
    {
      while (1)
      {
        v19 = [v17 URL];
        static URL._unconditionallyBridgeFromObjectiveC(_:)();

        URL.absoluteString.getter();
        (*v26)(v4, v27);
        v20._object = (v25 | 0x8000000000000000);
        v20._countAndFlagsBits = 0xD000000000000010;
        LOBYTE(v19) = String.hasSuffix(_:)(v20);

        if (v19)
        {
          break;
        }

        v7 = v15;
        v8 = v16;
        a1 = v28;
        if ((v28 & 0x8000000000000000) == 0)
        {
          goto LABEL_8;
        }

LABEL_14:
        v18 = __CocoaSet.Iterator.next()();
        if (!v18)
        {
          goto LABEL_19;
        }

        v29 = v18;
        sub_100005A50(0, &qword_1000ECF40, UIOpenURLContext_ptr);
        swift_dynamicCast();
        v17 = v30;
        v15 = v7;
        v16 = v8;
        if (!v30)
        {
          goto LABEL_21;
        }
      }

      v22 = *(v24[1] + OBJC_IVAR____TtC5Media11AppDelegate_carManager);
      if (!v22)
      {
        sub_100073104(v28);

        return;
      }

      v23 = v22;
      sub_100010040();

      v21 = v28;
    }

    else
    {
LABEL_21:
      a1 = v28;
LABEL_19:
      v21 = a1;
    }

    sub_100073104(v21);
    return;
  }

  while (1)
  {
    v15 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v15 >= v12)
    {
      goto LABEL_19;
    }

    v14 = *(v5 + 8 * v15);
    ++v13;
    if (v14)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
}

void sub_1000AB61C()
{
  v1 = OBJC_IVAR____TtC5Media11AppDelegate_carManager;
  v2 = *(v0 + OBJC_IVAR____TtC5Media11AppDelegate_carManager);
  if (v2 || (v3 = [objc_allocWithZone(type metadata accessor for RadioCarManager()) init], v4 = *(v0 + v1), *(v0 + v1) = v3, v4, (v2 = *(v0 + v1)) != 0))
  {
    v5 = v2;
    sub_10000F318();
    sub_10000ED64();
    sub_10000E5C0();
    sub_10000E074();
  }
}

uint64_t sub_1000AB6C8(void *a1)
{
  v2 = [a1 _FBSScene];
  v3 = [v2 settings];

  objc_opt_self();
  v4 = swift_dynamicCastObjCClass();

  v5 = UIWindow_ptr;
  if (v4)
  {
    v5 = CRSUIDashboardWidgetWindow_ptr;
  }

  v6 = [objc_allocWithZone(*v5) initWithWindowScene:a1];
  [v6 setAutoresizesSubviews:1];
  [v6 setAutoresizingMask:18];
  [v6 makeKeyAndVisible];
  [v6 setHidden:0];

  v7 = [a1 _FBSScene];
  v8 = [v7 settings];
  objc_opt_self();
  v9 = swift_dynamicCastObjCClass();
  if (v9)
  {
    v10 = [v9 hostedAltScreenPresentationType];

    if ((v10 - 1) < 3)
    {
      if (qword_1000EACD8 != -1)
      {
        swift_once();
      }

      v11 = type metadata accessor for Logger();
      sub_100006928(v11, qword_1000F3B58);
      v12 = Logger.logObject.getter();
      v13 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        *v14 = 0;
        _os_log_impl(&_mh_execute_header, v12, v13, "Media is creating a cluster window...", v14, 2u);
      }

      goto LABEL_29;
    }
  }

  else
  {
  }

  v15 = [a1 _FBSScene];
  v16 = [v15 settings];
  objc_opt_self();
  v17 = swift_dynamicCastObjCClass();
  if (v17)
  {
    v18 = [v17 hostedAltScreenPresentationType];

    if (v18 == 4)
    {
      if (qword_1000EACD8 != -1)
      {
        swift_once();
      }

      v19 = type metadata accessor for Logger();
      sub_100006928(v19, qword_1000F3B58);
      v12 = Logger.logObject.getter();
      v20 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v12, v20))
      {
        v21 = swift_slowAlloc();
        *v21 = 0;
        _os_log_impl(&_mh_execute_header, v12, v20, "Media is creating a passenger window...", v21, 2u);
      }

      goto LABEL_29;
    }
  }

  else
  {
  }

  v22 = [a1 _FBSScene];
  v23 = [v22 settings];

  objc_opt_self();
  v24 = swift_dynamicCastObjCClass();

  if (v24)
  {
    if (qword_1000EACD8 != -1)
    {
      swift_once();
    }

    v25 = type metadata accessor for Logger();
    sub_100006928(v25, qword_1000F3B58);
    v12 = Logger.logObject.getter();
    v26 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v12, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&_mh_execute_header, v12, v26, "Media is creating a dashboard widget window...", v27, 2u);
    }
  }

  else
  {
    if (qword_1000EACD8 != -1)
    {
      swift_once();
    }

    v28 = type metadata accessor for Logger();
    sub_100006928(v28, qword_1000F3B58);
    v12 = Logger.logObject.getter();
    v29 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v12, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&_mh_execute_header, v12, v29, "Media is creating a main window...", v30, 2u);
    }
  }

LABEL_29:

  swift_getKeyPath();
  swift_getKeyPath();
  v31 = v33;
  return static Published.subscript.setter();
}

id sub_1000ABC74()
{
  v1 = sub_10000368C(&unk_1000EBE20, &unk_1000B5120);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v23 - v3;
  v5 = sub_10000368C(&qword_1000EB888, &qword_1000B4738);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v23 - v7;
  *&v0[OBJC_IVAR____TtC5Media11AppDelegate_carManager] = 0;
  *&v0[OBJC_IVAR____TtC5Media11AppDelegate_carScene] = 0;
  *&v0[OBJC_IVAR____TtC5Media11AppDelegate_clusterScene] = 0;
  *&v0[OBJC_IVAR____TtC5Media11AppDelegate_passengerScene] = 0;
  *&v0[OBJC_IVAR____TtC5Media11AppDelegate_dashboardWidgetScene] = 0;
  if (_swiftEmptyArrayStorage >> 62 && _CocoaArrayWrapper.endIndex.getter())
  {
    v9 = sub_100003210(_swiftEmptyArrayStorage);
  }

  else
  {
    v9 = &_swiftEmptySetSingleton;
  }

  *&v0[OBJC_IVAR____TtC5Media11AppDelegate_cancelSet] = v9;
  v10 = OBJC_IVAR____TtC5Media11AppDelegate__carWindow;
  v25 = 0;
  sub_10000368C(&unk_1000EF1E8, &qword_1000BA940);
  Published.init(initialValue:)();
  v11 = *(v6 + 32);
  v11(&v0[v10], v8, v5);
  v12 = OBJC_IVAR____TtC5Media11AppDelegate__clusterWindow;
  v25 = 0;
  Published.init(initialValue:)();
  v11(&v0[v12], v8, v5);
  v13 = OBJC_IVAR____TtC5Media11AppDelegate__passengerWindow;
  v25 = 0;
  Published.init(initialValue:)();
  v11(&v0[v13], v8, v5);
  v14 = OBJC_IVAR____TtC5Media11AppDelegate__dashboardWidgetWindow;
  v25 = 0;
  Published.init(initialValue:)();
  v11(&v0[v14], v8, v5);
  v15 = OBJC_IVAR____TtC5Media11AppDelegate__isClusterMapsAndMedia;
  LOBYTE(v25) = 0;
  Published.init(initialValue:)();
  v16 = *(v2 + 32);
  v16(&v0[v15], v4, v1);
  v17 = OBJC_IVAR____TtC5Media11AppDelegate__isSiriActive;
  LOBYTE(v25) = 0;
  Published.init(initialValue:)();
  v16(&v0[v17], v4, v1);
  v18 = OBJC_IVAR____TtC5Media11AppDelegate__isDashboardSceneForeground;
  LOBYTE(v25) = 0;
  Published.init(initialValue:)();
  v16(&v0[v18], v4, v1);
  v19 = OBJC_IVAR____TtC5Media11AppDelegate__isClusterSceneForeground;
  LOBYTE(v25) = 0;
  Published.init(initialValue:)();
  v16(&v0[v19], v4, v1);
  v20 = OBJC_IVAR____TtC5Media11AppDelegate__isPassengerSceneForeground;
  LOBYTE(v25) = 0;
  Published.init(initialValue:)();
  v16(&v0[v20], v4, v1);
  v21 = type metadata accessor for AppDelegate(0);
  v24.receiver = v0;
  v24.super_class = v21;
  return objc_msgSendSuper2(&v24, "init");
}

id sub_1000AC074()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AppDelegate(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_1000AC344(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    if (qword_1000EACD8 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_100006928(v7, qword_1000F3B58);
    oslog = Logger.logObject.getter();
    v8 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(oslog, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v8, "Sent request to launch now playing app", v9, 2u);
    }

    goto LABEL_10;
  }

  swift_errorRetain();
  if (qword_1000EACD8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100006928(v2, qword_1000F3B58);
  swift_errorRetain();
  oslog = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 138543362;
    swift_errorRetain();
    v6 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 4) = v6;
    *v5 = v6;
    _os_log_impl(&_mh_execute_header, oslog, v3, "Failed to launch now playing: %{public}@", v4, 0xCu);
    sub_100007834(v5, &unk_1000EE230, &qword_1000BA550);

LABEL_10:

    return;
  }
}

void sub_1000AC598(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(a2, a3);
}

int main(int argc, const char **argv, const char **envp)
{
  type metadata accessor for AppDelegate(0);
  static CommandLine.unsafeArgv.getter();
  static CommandLine.argc.getter();
  static CommandLine.argc.getter();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v4 = NSStringFromClass(ObjCClassFromMetadata);
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  LODWORD(v4) = UIApplicationMain(_:_:_:_:)();

  exit(v4);
}

uint64_t type metadata accessor for AppDelegate(uint64_t a1)
{
  result = qword_1000EF1D0;
  if (!qword_1000EF1D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000AC708(uint64_t a1)
{
  sub_1000AC7FC(319);
  if (v1 <= 0x3F)
  {
    sub_10000B5F0();
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_1000AC7FC(uint64_t a1)
{
  if (!qword_1000EF1E0)
  {
    sub_100005780(&unk_1000EF1E8, &qword_1000BA940);
    v1 = type metadata accessor for Published();
    if (!v2)
    {
      atomic_store(v1, &qword_1000EF1E0);
    }
  }
}

uint64_t sub_1000AC8D8(void **a1, void **a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = *a1;
  v7 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v8 = v6;
  v9 = v7;
  return static Published.subscript.setter();
}

uint64_t sub_1000AC998(char *a1, void **a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v7 = v6;
  return static Published.subscript.setter();
}

uint64_t sub_1000ACA04()
{
  v0 = type metadata accessor for CAUFeatureConfiguration.Radio();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v12[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for CAUFeatureConfiguration();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v12[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12[3] = &type metadata for RadioFeatures;
  v12[4] = sub_1000ADEAC();
  v8 = isFeatureEnabled(_:)();
  sub_100006960(v12);
  if (v8)
  {
    if (qword_1000EAD50 != -1)
    {
      swift_once();
    }

    v9 = dispatch thunk of CAUAssetLibraryManager.slimAssetLibrary.getter();
    if (v9)
    {
      CAUAssetLibrary.featureConfiguration()();

      CAUFeatureConfiguration.radio.getter();
      (*(v5 + 8))(v7, v4);
      LOBYTE(v9) = CAUFeatureConfiguration.Radio.supportsHIDEvents.getter();
      (*(v1 + 8))(v3, v0);
    }
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

void sub_1000ACC00()
{
  v0 = sub_10000368C(&qword_1000EF2B8, &qword_1000BABE8);
  __chkstk_darwin(v0 - 8);
  v2 = &v18 - v1;
  v3 = [objc_opt_self() dashboardService];
  if (v3)
  {
    v4 = v3;
    sub_10000368C(&qword_1000EF2C0, &qword_1000B63A0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1000B4760;
    aBlock = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v20 = v6;

    AnyHashable.init<A>(_:)();
    URL.init(string:)();
    v7 = type metadata accessor for URL();
    v8 = *(v7 - 8);
    if ((*(v8 + 48))(v2, 1, v7) == 1)
    {
      __break(1u);
    }

    else
    {

      *(inited + 96) = v7;
      v9 = sub_10005AD6C((inited + 72));
      (*(v8 + 32))(v9, v2, v7);
      sub_10004424C(inited);
      swift_setDeallocating();
      sub_100007834(inited + 32, &qword_1000EC998, &qword_1000B63A8);
      isa = Dictionary._bridgeToObjectiveC()().super.isa;

      v11 = [objc_opt_self() optionsWithDictionary:isa];

      v12 = String._bridgeToObjectiveC()();
      v23 = sub_1000AC344;
      v24 = 0;
      aBlock = _NSConcreteStackBlock;
      v20 = 1107296256;
      v21 = sub_1000AC598;
      v22 = &unk_1000E2FC8;
      v13 = _Block_copy(&aBlock);
      [v4 openApplication:v12 withOptions:v11 completion:v13];
      _Block_release(v13);
    }
  }

  else
  {
    if (qword_1000EACF0 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    sub_100006928(v14, qword_1000F3BA0);
    v18 = Logger.logObject.getter();
    v15 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v18, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&_mh_execute_header, v18, v15, "No open application service available to launch now playing.", v16, 2u);
    }

    v17 = v18;
  }
}

uint64_t sub_1000ACFE4()
{
  v1 = sub_10000368C(&unk_1000EC7E0, &unk_1000B5100);
  __chkstk_darwin(v1 - 8);
  v3 = &v16 - v2;
  v16 = sub_10000368C(&qword_1000EF280, &qword_1000BABD8);
  v4 = *(v16 - 8);
  __chkstk_darwin(v16);
  v6 = &v16 - v5;
  v7 = sub_10000368C(&unk_1000EF288, &qword_1000BABE0);
  v17 = *(v7 - 8);
  v18 = v7;
  __chkstk_darwin(v7);
  v9 = &v16 - v8;
  if (qword_1000EACC0 != -1)
  {
    swift_once();
  }

  sub_10000612C(0, 0);
  if (qword_1000EAD58 != -1)
  {
    swift_once();
  }

  [qword_1000F3D08 registerObserver:{v0, v16}];
  v10 = [objc_opt_self() sharedInstance];
  [v10 startObservingCameraIris];

  if (qword_1000EAD50 != -1)
  {
    swift_once();
  }

  dispatch thunk of CAUAssetLibraryManager.$slimAssetLibrary.getter();
  v11 = [objc_opt_self() mainRunLoop];
  v19 = v11;
  v12 = type metadata accessor for NSRunLoop.SchedulerOptions();
  (*(*(v12 - 8) + 56))(v3, 1, 1, v12);
  sub_100005A50(0, &unk_1000ED0C0, NSRunLoop_ptr);
  sub_100005870(&unk_1000EF298, &qword_1000EF280, &qword_1000BABD8, &protocol conformance descriptor for Published<A>.Publisher);
  sub_1000058D0(&qword_1000ED0D0, &unk_1000ED0C0, NSRunLoop_ptr, &protocol conformance descriptor for NSRunLoop);
  v13 = v16;
  Publisher.receive<A>(on:options:)();
  sub_100007834(v3, &unk_1000EC7E0, &unk_1000B5100);

  (*(v4 + 8))(v6, v13);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_100005870(&qword_1000EF2A8, &unk_1000EF288, &qword_1000BABE0, &protocol conformance descriptor for Publishers.ReceiveOn<A, B>);
  v14 = v18;
  Publisher<>.sink(receiveValue:)();

  (*(v17 + 8))(v9, v14);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  return 1;
}

void sub_1000AD494(void *a1)
{
  if (a1)
  {
    v2 = qword_1000EACD8;
    v3 = a1;
    if (v2 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_100006928(v4, qword_1000F3B58);
    v13 = v3;
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      *v7 = 138412290;
      *(v7 + 4) = v13;
      *v8 = a1;
      v9 = v13;
      _os_log_impl(&_mh_execute_header, v5, v6, "%@ has been updated", v7, 0xCu);
      sub_100007834(v8, &unk_1000EE230, &qword_1000BA550);
    }

    sub_1000AB61C();
  }

  else
  {
    if (qword_1000EACD8 != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    sub_100006928(v10, qword_1000F3B58);
    v13 = Logger.logObject.getter();
    v11 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v13, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v13, v11, "No current car", v12, 2u);
    }
  }
}

void sub_1000AD6C4(void *a1)
{
  v2 = v1;
  v4 = *&v1[OBJC_IVAR____TtC5Media11AppDelegate_carScene];
  if (v4)
  {
    v5 = [v4 _FBSScene];
    if (v5)
    {
      v6 = v5;
      sub_100005A50(0, &qword_1000EEEA0, NSObject_ptr);
      if (static NSObject.== infix(_:_:)())
      {
        v7 = [a1 settings];
        objc_opt_self();
        v8 = swift_dynamicCastObjCClass();
        if (v8)
        {
          v9 = v8;
          if ([v8 isForeground])
          {
            v10 = ([v9 deactivationReasons] >> 4) & 1;
          }

          else
          {
            LODWORD(v10) = 0;
          }

          swift_getKeyPath();
          swift_getKeyPath();
          static Published.subscript.getter();

          if (v10 == v28)
          {
          }

          else
          {
            if (qword_1000EAD10 != -1)
            {
              swift_once();
            }

            v21 = type metadata accessor for Logger();
            sub_100006928(v21, qword_1000F3C00);
            v22 = Logger.logObject.getter();
            v23 = static os_log_type_t.debug.getter();
            if (os_log_type_enabled(v22, v23))
            {
              v24 = swift_slowAlloc();
              *v24 = 67240192;
              *(v24 + 4) = v10;
              _os_log_impl(&_mh_execute_header, v22, v23, "Siri now visible: %{BOOL,public}d", v24, 8u);
            }

            swift_getKeyPath();
            swift_getKeyPath();
            v25 = v2;
            static Published.subscript.setter();
          }

          return;
        }
      }

      else
      {
        v7 = v6;
      }
    }
  }

  v11 = *&v1[OBJC_IVAR____TtC5Media11AppDelegate_clusterScene];
  if (!v11)
  {
    return;
  }

  v12 = [v11 _FBSScene];
  if (!v12)
  {
    return;
  }

  v27 = v12;
  sub_100005A50(0, &qword_1000EEEA0, NSObject_ptr);
  if (static NSObject.== infix(_:_:)())
  {
    v26 = [a1 settings];
    objc_opt_self();
    v13 = swift_dynamicCastObjCClass();
    if (v13)
    {
      v14 = [v13 hostedAltScreenPresentationType];

      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      if ((v14 == 2) != v29)
      {
        if (qword_1000EACF0 != -1)
        {
          swift_once();
        }

        v15 = type metadata accessor for Logger();
        sub_100006928(v15, qword_1000F3BA0);
        v16 = Logger.logObject.getter();
        v17 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v16, v17))
        {
          v18 = swift_slowAlloc();
          *v18 = 67240192;
          *(v18 + 4) = v14 == 2;
          _os_log_impl(&_mh_execute_header, v16, v17, "Radio cluster maps and media: %{BOOL,public}d", v18, 8u);
        }

        swift_getKeyPath();
        swift_getKeyPath();
        v19 = v2;
        static Published.subscript.setter();
      }

      return;
    }

    v20 = v26;
  }

  else
  {
    v20 = v27;
  }
}

unint64_t sub_1000ADE14()
{
  result = qword_1000EF270;
  if (!qword_1000EF270)
  {
    type metadata accessor for LaunchOptionsKey(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EF270);
  }

  return result;
}

uint64_t sub_1000ADE6C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

unint64_t sub_1000ADEAC()
{
  result = qword_1000EF2B0;
  if (!qword_1000EF2B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EF2B0);
  }

  return result;
}

uint64_t sub_1000ADF00(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_1000ADF44(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v6 = static VerticalAlignment.center.getter();
  v34 = 0;
  sub_1000AE14C(a1, a2 & 1, &v20);
  v45 = v30;
  v46 = v31;
  v47[0] = v32[0];
  *(v47 + 9) = *(v32 + 9);
  v41 = v26;
  v42 = v27;
  v43 = v28;
  v44 = v29;
  v37 = v22;
  v38 = v23;
  v39 = v24;
  v40 = v25;
  v35 = v20;
  v36 = v21;
  v48[10] = v30;
  v48[11] = v31;
  v49[0] = v32[0];
  *(v49 + 9) = *(v32 + 9);
  v48[6] = v26;
  v48[7] = v27;
  v48[8] = v28;
  v48[9] = v29;
  v48[2] = v22;
  v48[3] = v23;
  v48[4] = v24;
  v48[5] = v25;
  v48[0] = v20;
  v48[1] = v21;
  sub_1000077CC(&v35, &v19, &qword_1000EF2C8, &qword_1000BACC8);
  sub_100007834(v48, &qword_1000EF2C8, &qword_1000BACC8);
  *&v33[167] = v45;
  *&v33[183] = v46;
  *&v33[199] = v47[0];
  *&v33[208] = *(v47 + 9);
  *&v33[103] = v41;
  *&v33[119] = v42;
  *&v33[135] = v43;
  *&v33[151] = v44;
  *&v33[39] = v37;
  *&v33[55] = v38;
  *&v33[71] = v39;
  *&v33[87] = v40;
  *&v33[7] = v35;
  *&v33[23] = v36;
  LOBYTE(a1) = v34;
  v7 = static Edge.Set.all.getter();
  EdgeInsets.init(_all:)();
  v8 = *&v33[176];
  *(a3 + 177) = *&v33[160];
  *(a3 + 193) = v8;
  v9 = *&v33[208];
  *(a3 + 209) = *&v33[192];
  *(a3 + 225) = v9;
  v10 = *&v33[112];
  *(a3 + 113) = *&v33[96];
  *(a3 + 129) = v10;
  v11 = *&v33[144];
  *(a3 + 145) = *&v33[128];
  *(a3 + 161) = v11;
  v12 = *&v33[48];
  *(a3 + 49) = *&v33[32];
  *(a3 + 65) = v12;
  v13 = *&v33[80];
  *(a3 + 81) = *&v33[64];
  *(a3 + 97) = v13;
  v14 = *&v33[16];
  *(a3 + 17) = *v33;
  *a3 = v6;
  *(a3 + 8) = 0;
  *(a3 + 16) = a1;
  *(a3 + 33) = v14;
  *(a3 + 248) = v7;
  *(a3 + 256) = v15;
  *(a3 + 264) = v16;
  *(a3 + 272) = v17;
  *(a3 + 280) = v18;
  *(a3 + 288) = 0;
}

double sub_1000AE14C@<D0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  KeyPath = swift_getKeyPath();
  v7 = static HorizontalAlignment.leading.getter();
  v26[0] = 0;
  sub_1000AE4AC(a1, a2 & 1, &v46);
  v38 = *&v47[112];
  v39 = *&v47[128];
  v40 = *&v47[144];
  v34 = *&v47[48];
  v35 = *&v47[64];
  v36 = *&v47[80];
  v37 = *&v47[96];
  v30 = v46;
  v31 = *v47;
  v32 = *&v47[16];
  v33 = *&v47[32];
  v42[8] = *&v47[112];
  v42[9] = *&v47[128];
  v42[10] = *&v47[144];
  v42[4] = *&v47[48];
  v42[5] = *&v47[64];
  v42[6] = *&v47[80];
  v42[7] = *&v47[96];
  v42[0] = v46;
  v42[1] = *v47;
  v41 = v47[160];
  v43 = v47[160];
  v42[2] = *&v47[16];
  v42[3] = *&v47[32];
  sub_1000077CC(&v30, &v44, &qword_1000EF2D0, &qword_1000BACF8);
  sub_100007834(v42, &qword_1000EF2D0, &qword_1000BACF8);
  *&v29[135] = v38;
  *&v29[151] = v39;
  *&v29[167] = v40;
  v29[183] = v41;
  *&v29[71] = v34;
  *&v29[87] = v35;
  *&v29[103] = v36;
  *&v29[119] = v37;
  *&v29[7] = v30;
  *&v29[23] = v31;
  *&v29[39] = v32;
  *&v29[55] = v33;
  v8 = *&v29[176];
  *&v45[177] = *&v29[176];
  v44 = v7;
  v45[0] = 0;
  v9 = *&v29[112];
  *&v45[129] = *&v29[128];
  v10 = *&v29[128];
  *&v45[145] = *&v29[144];
  v11 = *&v29[144];
  *&v45[161] = *&v29[160];
  v12 = *&v29[48];
  *&v45[65] = *&v29[64];
  v13 = *&v29[64];
  *&v45[81] = *&v29[80];
  v14 = *&v29[80];
  *&v45[97] = *&v29[96];
  v15 = *&v29[96];
  *&v45[113] = *&v29[112];
  *&v45[1] = *v29;
  *&v45[17] = *&v29[16];
  v16 = *v29;
  v17 = *&v29[16];
  *&v45[33] = *&v29[32];
  v18 = *&v29[32];
  *&v45[49] = *&v29[48];
  *&v27[151] = *&v45[128];
  *&v27[167] = *&v45[144];
  *&v27[183] = *&v45[160];
  *&v27[192] = *&v45[169];
  *&v27[87] = *&v45[64];
  *&v27[103] = *&v45[80];
  *&v27[119] = *&v45[96];
  *&v27[135] = *&v45[112];
  *&v27[23] = *v45;
  *&v27[39] = *&v45[16];
  *&v27[55] = *&v45[32];
  *&v27[71] = *&v45[48];
  *&v27[7] = v7;
  v19 = *&v27[128];
  *(a3 + 153) = *&v27[144];
  v20 = *&v27[176];
  *(a3 + 169) = *&v27[160];
  *(a3 + 185) = v20;
  *(a3 + 201) = *&v27[192];
  v21 = *&v27[64];
  *(a3 + 89) = *&v27[80];
  v22 = *&v27[112];
  *(a3 + 105) = *&v27[96];
  *(a3 + 121) = v22;
  *(a3 + 137) = v19;
  v23 = *v27;
  *(a3 + 25) = *&v27[16];
  v24 = *&v27[48];
  *(a3 + 41) = *&v27[32];
  *(a3 + 57) = v24;
  *(a3 + 73) = v21;
  *(a3 + 9) = v23;
  *&v47[129] = v10;
  *&v47[145] = v11;
  v48 = *&v29[160];
  *&v47[65] = v13;
  *&v47[81] = v14;
  *&v47[97] = v15;
  *&v47[113] = v9;
  *&v47[1] = v16;
  *&v47[17] = v17;
  *&v47[33] = v18;
  v28 = 0;
  *a3 = KeyPath;
  *(a3 + 8) = 0;
  v46 = v7;
  v47[0] = 0;
  v49 = v8;
  *&v47[49] = v12;

  sub_1000077CC(&v44, v26, &qword_1000EF2D8, &qword_1000BAD00);
  sub_100007834(&v46, &qword_1000EF2D8, &qword_1000BAD00);

  return result;
}

uint64_t sub_1000AE4AC@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for EnvironmentValues();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = v8;
  if (a2)
  {
    v71[0] = a1;

    v11 = a1;
  }

  else
  {

    static os_log_type_t.fault.getter();
    v12 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v7 + 8))(v10, v6);
    v11 = v71[0];
  }

  swift_getKeyPath();
  *&v49 = v11;
  sub_100007530();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v13 = *(v11 + 43);

  if (v13 == 1)
  {
    v26 = static VerticalAlignment.center.getter();
    LOBYTE(v29) = 1;
    sub_1000AEA40(&v49);
    v46 = v50[5];
    v47[0] = v50[6];
    *(v47 + 9) = *(&v50[6] + 9);
    v42 = v50[1];
    v43 = v50[2];
    v44 = v50[3];
    v45 = v50[4];
    v40 = v49;
    v41 = v50[0];
    v57 = v50[5];
    v58[0] = v50[6];
    *(v58 + 9) = *(&v50[6] + 9);
    v53 = v50[1];
    v54 = v50[2];
    v55 = v50[3];
    v56 = v50[4];
    v51 = v49;
    v52 = v50[0];
    sub_1000077CC(&v40, &v60, &qword_1000EF2E8, &qword_1000BAD60);
    sub_100007834(&v51, &qword_1000EF2E8, &qword_1000BAD60);
    *(&v28[6] + 7) = v46;
    *(&v28[5] + 7) = v45;
    *(&v28[2] + 7) = v42;
    *(&v28[1] + 7) = v41;
    *(&v28[7] + 7) = v47[0];
    v28[8] = *(v47 + 9);
    *(&v28[3] + 7) = v43;
    *(&v28[4] + 7) = v44;
    *(v28 + 7) = v40;
    *(&v50[5] + 1) = v28[5];
    *(&v50[6] + 1) = v28[6];
    *(&v50[7] + 1) = v28[7];
    *(&v50[8] + 1) = *(v47 + 9);
    *(&v50[1] + 1) = v28[1];
    *(&v50[2] + 1) = v28[2];
    *(&v50[3] + 1) = v28[3];
    *(&v50[4] + 1) = v28[4];
    v49 = v26;
    LOBYTE(v50[0]) = v29;
    *(v50 + 1) = v28[0];
    nullsub_1();
    v68 = v50[7];
    v69 = v50[8];
    v70 = v50[9];
    v64 = v50[3];
    v65 = v50[4];
    v66 = v50[5];
    v67 = v50[6];
    v60 = v49;
    v61 = v50[0];
    v62 = v50[1];
    v63 = v50[2];
  }

  else
  {
    sub_1000AEB58(&v60);
  }

  v14 = v27;

  if ((a2 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v15 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v7 + 8))(v10, v14);
    a1 = v49;
  }

  swift_getKeyPath();
  *&v49 = a1;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v16 = *(a1 + 41);

  if (v16 == 1)
  {
    KeyPath = swift_getKeyPath();

    v18 = 0;
  }

  else
  {
    KeyPath = 0;
    v18 = -1;
  }

  v37 = v68;
  v38 = v69;
  v33 = v64;
  v34 = v65;
  v35 = v66;
  v36 = v67;
  v29 = v60;
  v30 = v61;
  v31 = v62;
  v32 = v63;
  v47[1] = v68;
  v47[2] = v69;
  v44 = v64;
  v45 = v65;
  v46 = v66;
  v47[0] = v67;
  v40 = v60;
  v41 = v61;
  v42 = v62;
  v43 = v63;
  v50[7] = v68;
  v50[8] = v69;
  v50[3] = v64;
  v50[4] = v65;
  v50[5] = v66;
  v50[6] = v67;
  v49 = v60;
  v50[0] = v61;
  v39 = v70;
  v48 = v70;
  LOBYTE(v50[9]) = v70;
  v50[1] = v62;
  v50[2] = v63;
  sub_1000077CC(&v40, &v51, &qword_1000EF2E0, &qword_1000BAD58);
  sub_100007A38(KeyPath, v18);
  sub_100007A64(KeyPath, v18);
  v19 = v50[8];
  *(a3 + 128) = v50[7];
  *(a3 + 144) = v19;
  v20 = *&v50[9];
  v21 = v50[4];
  *(a3 + 64) = v50[3];
  *(a3 + 80) = v21;
  v22 = v50[6];
  *(a3 + 96) = v50[5];
  *(a3 + 112) = v22;
  v23 = v50[0];
  *a3 = v49;
  *(a3 + 16) = v23;
  v24 = v50[2];
  *(a3 + 32) = v50[1];
  *(a3 + 48) = v24;
  *(a3 + 160) = v20;
  *(a3 + 168) = KeyPath;
  *(a3 + 176) = v18;
  sub_100007A64(KeyPath, v18);
  v58[1] = v37;
  v58[2] = v38;
  v59 = v39;
  v55 = v33;
  v56 = v34;
  v57 = v35;
  v58[0] = v36;
  v51 = v29;
  v52 = v30;
  v53 = v31;
  v54 = v32;
  return sub_100007834(&v51, &qword_1000EF2E0, &qword_1000BAD58);
}

__n128 sub_1000AEA40@<Q0>(uint64_t a2@<X8>)
{
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  *&v5[55] = v9;
  *&v5[71] = v10;
  *&v5[87] = v11;
  *&v5[103] = v12;
  *&v5[7] = v6;
  *&v5[23] = v7;
  *&v5[39] = v8;
  KeyPath = swift_getKeyPath();
  *(a2 + 73) = *&v5[64];
  *(a2 + 89) = *&v5[80];
  *(a2 + 105) = *&v5[96];
  *(a2 + 9) = *v5;
  *(a2 + 25) = *&v5[16];
  result = *&v5[32];
  *(a2 + 41) = *&v5[32];
  *a2 = 0x4028000000000000;
  *(a2 + 8) = 0;
  *(a2 + 57) = *&v5[48];
  *(a2 + 120) = *(&v12 + 1);
  *(a2 + 128) = KeyPath;
  *(a2 + 136) = 0;
  return result;
}

double sub_1000AEB58(uint64_t a1)
{
  result = 0.0;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 160) = -1;
  return result;
}

unint64_t sub_1000AEB88()
{
  result = qword_1000EF2F0;
  if (!qword_1000EF2F0)
  {
    sub_100005780(&qword_1000EF2F8, &qword_1000BAD68);
    sub_1000AEC14();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EF2F0);
  }

  return result;
}

unint64_t sub_1000AEC14()
{
  result = qword_1000EF300;
  if (!qword_1000EF300)
  {
    sub_100005780(&qword_1000EF308, &unk_1000BAD70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EF300);
  }

  return result;
}

Swift::String __swiftcall NSLocalizedString(_:tableName:bundle:value:comment:)(Swift::String _, Swift::String_optional tableName, NSBundle bundle, Swift::String value, Swift::String comment)
{
  v5 = NSLocalizedString(_:tableName:bundle:value:comment:)(_._countAndFlagsBits, _._object, tableName.value._countAndFlagsBits, tableName.value._object, bundle.super.isa, value._countAndFlagsBits, value._object, comment._countAndFlagsBits);
  result._object = v6;
  result._countAndFlagsBits = v5;
  return result;
}

UIBarButtonItem_optional __swiftcall CAUAssetLibraryManager.createAudioLogoBarButton()()
{
  v0 = CAUAssetLibraryManager.createAudioLogoBarButton()();
  result.value.super.super.isa = v0;
  result.is_nil = v1;
  return result;
}

UIBarButtonItem_optional __swiftcall CAFUITileViewController.createAudioLogoButtonIfApplicable()()
{
  v0 = CAFUITileViewController.createAudioLogoButtonIfApplicable()();
  result.value.super.super.isa = v0;
  result.is_nil = v1;
  return result;
}

uint64_t Publisher.map<A>(_:)()
{
  return Publisher.map<A>(_:)();
}

{
  return Publisher.map<A>(_:)();
}

uint64_t View.buttonStyle<A>(_:)()
{
  return View.buttonStyle<A>(_:)();
}

{
  return View.buttonStyle<A>(_:)();
}

Swift::String __swiftcall Character.uppercased()()
{
  v0 = Character.uppercased()();
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

Swift::String __swiftcall String.lowercased()()
{
  v0 = String.lowercased()();
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

uint64_t String.subscript.getter()
{
  return String.subscript.getter();
}

{
  return String.subscript.getter();
}

uint64_t String.init<A>(_:)()
{
  return String.init<A>(_:)();
}

{
  return String.init<A>(_:)();
}

uint64_t KeyedDecodingContainer.decodeIfPresent(_:forKey:)()
{
  return KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
}

{
  return KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
}

uint64_t KeyedDecodingContainer.decode(_:forKey:)()
{
  return KeyedDecodingContainer.decode(_:forKey:)();
}

{
  return KeyedDecodingContainer.decode(_:forKey:)();
}

{
  return KeyedDecodingContainer.decode(_:forKey:)();
}

uint64_t KeyedEncodingContainer.encode(_:forKey:)()
{
  return KeyedEncodingContainer.encode(_:forKey:)();
}

{
  return KeyedEncodingContainer.encode(_:forKey:)();
}

{
  return KeyedEncodingContainer.encode(_:forKey:)();
}