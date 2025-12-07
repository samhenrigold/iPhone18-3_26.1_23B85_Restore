uint64_t DashboardRequest.minimalInitialState()()
{
  v1 = [objc_allocWithZone(NSNumber) initWithInteger:*(v0 + OBJC_IVAR____TtC13GameOverlayUI16DashboardRequest_viewState)];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v18 = &_swiftEmptyDictionarySingleton;
  sub_1000CE4E4(v1, 0x7461745377656976, 0xE900000000000065, isUniquelyReferenced_nonNull_native);
  if (*(v0 + OBJC_IVAR____TtC13GameOverlayUI16DashboardRequest_leaderboardIdentifier + 8))
  {

    v3 = String._bridgeToObjectiveC()();

    v4 = swift_isUniquelyReferenced_nonNull_native();
    v18 = &_swiftEmptyDictionarySingleton;
    sub_1000CE4E4(v3, 0xD000000000000015, 0x80000001000E8330, v4);
  }

  if (*(v0 + OBJC_IVAR____TtC13GameOverlayUI16DashboardRequest_achievementIdentifier + 8))
  {

    v5 = String._bridgeToObjectiveC()();

    v6 = swift_isUniquelyReferenced_nonNull_native();
    v18 = &_swiftEmptyDictionarySingleton;
    sub_1000CE4E4(v5, 0xD000000000000015, 0x80000001000E83A0, v6);
  }

  v7 = objc_opt_self();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v18 = 0;
  v9 = [v7 archivedDataWithRootObject:isa requiringSecureCoding:1 error:&v18];

  v10 = v18;
  if (v9)
  {
    v11 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v12 = v10;
    _convertNSErrorToError(_:)();

    swift_willThrow();

    if (qword_10012CC18 != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    sub_100011F80(v13, qword_100135C88);
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&_mh_execute_header, v14, v15, "Failed to serialize minimal initialState dictionary", v16, 2u);
    }

    return 0;
  }

  return v11;
}

uint64_t sub_1000C3B30()
{
  v1 = v0[19];
  v2 = OBJC_IVAR____TtC13GameOverlayUI16DashboardRequest_currentGame;
  v0[20] = OBJC_IVAR____TtC13GameOverlayUI16DashboardRequest_currentGame;
  if (*(v1 + v2) || (v5 = (v1 + OBJC_IVAR____TtC13GameOverlayUI16DashboardRequest_gameBundleID), (v6 = v5[1]) == 0))
  {
    v3 = v0[1];

    return v3();
  }

  else
  {
    v7 = *v5;
    v8 = objc_opt_self();
    sub_100002B38(&qword_100131D90, &qword_1000EEA08);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_1000EA7D0;
    *(v9 + 32) = v7;
    *(v9 + 40) = v6;

    isa = Array._bridgeToObjectiveC()().super.isa;
    v0[21] = isa;

    v0[2] = v0;
    v0[7] = v0 + 18;
    v0[3] = sub_1000C3D30;
    v11 = swift_continuation_init();
    v0[17] = sub_100002B38(&qword_100131D98, &unk_1000EEA10);
    v0[10] = _NSConcreteStackBlock;
    v0[11] = 1107296256;
    v0[12] = sub_1000C1D0C;
    v0[13] = &unk_1001241F0;
    v0[14] = v11;
    [v8 loadGamesWithBundleIDs:isa withCompletionHandler:v0 + 10];

    return _swift_continuation_await(v0 + 2);
  }
}

uint64_t sub_1000C3D30()
{
  v1 = *(*v0 + 48);
  *(*v0 + 176) = v1;
  if (v1)
  {
    v2 = sub_1000C429C;
  }

  else
  {
    v2 = sub_1000C3E40;
  }

  return _swift_task_switch(v2, 0, 0);
}

unsigned __int8 *sub_1000C3E40()
{
  v41 = v1;
  v2 = *(v1 + 144);

  if (!(v2 >> 62))
  {
    if (*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

LABEL_12:

    v10 = *(v1 + 152);
    v0 = *(v10 + OBJC_IVAR____TtC13GameOverlayUI16DashboardRequest_adamID + 8);
    if (!v0)
    {
      goto LABEL_8;
    }

    v2 = *(v10 + OBJC_IVAR____TtC13GameOverlayUI16DashboardRequest_adamID);
    v11 = HIBYTE(v0) & 0xF;
    v12 = v2 & 0xFFFFFFFFFFFFLL;
    if (!((v0 & 0x2000000000000000) != 0 ? HIBYTE(v0) & 0xF : v2 & 0xFFFFFFFFFFFFLL))
    {
      goto LABEL_8;
    }

    if ((v0 & 0x1000000000000000) != 0)
    {
LABEL_78:

      v16 = sub_1000C58BC(v2, v0, 10);
      v39 = v38;

      if (v39)
      {
        goto LABEL_8;
      }

LABEL_75:
      v34 = [objc_allocWithZone(GKGameInternal) init];
      v35 = objc_allocWithZone(NSNumber);
      v36 = v34;
      v37 = [v35 initWithInteger:v16];
      [v36 setAdamID:v37];

      v4 = [objc_allocWithZone(GKGame) initWithInternalRepresentation:v36];
      goto LABEL_7;
    }

    if ((v0 & 0x2000000000000000) != 0)
    {
      v40[0] = *(v10 + OBJC_IVAR____TtC13GameOverlayUI16DashboardRequest_adamID);
      v40[1] = v0 & 0xFFFFFFFFFFFFFFLL;
      if (v2 == 43)
      {
        if (v11)
        {
          v15 = v11 - 1;
          if (v11 != 1)
          {
            v16 = 0;
            v26 = v40 + 1;
            while (1)
            {
              v27 = *v26 - 48;
              if (v27 > 9)
              {
                break;
              }

              v28 = 10 * v16;
              if ((v16 * 10) >> 64 != (10 * v16) >> 63)
              {
                break;
              }

              v16 = v28 + v27;
              if (__OFADD__(v28, v27))
              {
                break;
              }

              ++v26;
              if (!--v15)
              {
                goto LABEL_74;
              }
            }
          }

          goto LABEL_73;
        }

LABEL_84:
        __break(1u);
        return result;
      }

      if (v2 != 45)
      {
        if (v11)
        {
          v16 = 0;
          v31 = v40;
          while (1)
          {
            v32 = *v31 - 48;
            if (v32 > 9)
            {
              break;
            }

            v33 = 10 * v16;
            if ((v16 * 10) >> 64 != (10 * v16) >> 63)
            {
              break;
            }

            v16 = v33 + v32;
            if (__OFADD__(v33, v32))
            {
              break;
            }

            ++v31;
            if (!--v11)
            {
              goto LABEL_72;
            }
          }
        }

        goto LABEL_73;
      }

      if (v11)
      {
        v15 = v11 - 1;
        if (v11 != 1)
        {
          v16 = 0;
          v20 = v40 + 1;
          while (1)
          {
            v21 = *v20 - 48;
            if (v21 > 9)
            {
              break;
            }

            v22 = 10 * v16;
            if ((v16 * 10) >> 64 != (10 * v16) >> 63)
            {
              break;
            }

            v16 = v22 - v21;
            if (__OFSUB__(v22, v21))
            {
              break;
            }

            ++v20;
            if (!--v15)
            {
              goto LABEL_74;
            }
          }
        }

        goto LABEL_73;
      }
    }

    else
    {
      if ((v2 & 0x1000000000000000) != 0)
      {
        result = ((v0 & 0xFFFFFFFFFFFFFFFLL) + 32);
      }

      else
      {
        result = _StringObject.sharedUTF8.getter();
      }

      v14 = *result;
      if (v14 == 43)
      {
        if (v12 >= 1)
        {
          v15 = v12 - 1;
          if (v12 != 1)
          {
            v16 = 0;
            if (result)
            {
              v23 = result + 1;
              while (1)
              {
                v24 = *v23 - 48;
                if (v24 > 9)
                {
                  goto LABEL_73;
                }

                v25 = 10 * v16;
                if ((v16 * 10) >> 64 != (10 * v16) >> 63)
                {
                  goto LABEL_73;
                }

                v16 = v25 + v24;
                if (__OFADD__(v25, v24))
                {
                  goto LABEL_73;
                }

                ++v23;
                if (!--v15)
                {
                  goto LABEL_74;
                }
              }
            }

            goto LABEL_72;
          }

          goto LABEL_73;
        }

        goto LABEL_83;
      }

      if (v14 != 45)
      {
        if (v12)
        {
          v16 = 0;
          if (result)
          {
            while (1)
            {
              v29 = *result - 48;
              if (v29 > 9)
              {
                goto LABEL_73;
              }

              v30 = 10 * v16;
              if ((v16 * 10) >> 64 != (10 * v16) >> 63)
              {
                goto LABEL_73;
              }

              v16 = v30 + v29;
              if (__OFADD__(v30, v29))
              {
                goto LABEL_73;
              }

              ++result;
              if (!--v12)
              {
                goto LABEL_72;
              }
            }
          }

          goto LABEL_72;
        }

LABEL_73:
        v16 = 0;
        LOBYTE(v15) = 1;
LABEL_74:
        if (v15)
        {
          goto LABEL_8;
        }

        goto LABEL_75;
      }

      if (v12 >= 1)
      {
        v15 = v12 - 1;
        if (v12 != 1)
        {
          v16 = 0;
          if (result)
          {
            v17 = result + 1;
            while (1)
            {
              v18 = *v17 - 48;
              if (v18 > 9)
              {
                goto LABEL_73;
              }

              v19 = 10 * v16;
              if ((v16 * 10) >> 64 != (10 * v16) >> 63)
              {
                goto LABEL_73;
              }

              v16 = v19 - v18;
              if (__OFSUB__(v19, v18))
              {
                goto LABEL_73;
              }

              ++v17;
              if (!--v15)
              {
                goto LABEL_74;
              }
            }
          }

LABEL_72:
          LOBYTE(v15) = 0;
          goto LABEL_74;
        }

        goto LABEL_73;
      }

      __break(1u);
    }

    __break(1u);
LABEL_83:
    __break(1u);
    goto LABEL_84;
  }

  if (!_CocoaArrayWrapper.endIndex.getter())
  {
    goto LABEL_12;
  }

LABEL_3:
  if ((v2 & 0xC000000000000001) != 0)
  {
    v3 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_6;
  }

  if (!*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
    goto LABEL_78;
  }

  v3 = *(v2 + 32);
LABEL_6:
  v4 = v3;

LABEL_7:
  v6 = *(v1 + 152);
  v5 = *(v1 + 160);
  v7 = *(v6 + v5);
  *(v6 + v5) = v4;

LABEL_8:
  v8 = *(v1 + 8);

  return v8();
}

void sub_1000C429C()
{
  v40 = v0;
  v1 = v0[21];
  swift_willThrow();

  v2 = (v0[19] + OBJC_IVAR____TtC13GameOverlayUI16DashboardRequest_adamID);
  v3 = v2[1];
  if (!v3)
  {
    goto LABEL_65;
  }

  v4 = *v2;
  v5 = HIBYTE(v3) & 0xF;
  v6 = v4 & 0xFFFFFFFFFFFFLL;
  if (!((v3 & 0x2000000000000000) != 0 ? HIBYTE(v3) & 0xF : v4 & 0xFFFFFFFFFFFFLL))
  {
    goto LABEL_65;
  }

  if ((v3 & 0x1000000000000000) != 0)
  {

    v10 = sub_1000C58BC(v4, v3, 10);
    v38 = v37;

    if (v38)
    {
      goto LABEL_65;
    }

    goto LABEL_64;
  }

  if ((v3 & 0x2000000000000000) != 0)
  {
    v39[0] = v4;
    v39[1] = v3 & 0xFFFFFFFFFFFFFFLL;
    if (v4 == 43)
    {
      if (v5)
      {
        if (--v5)
        {
          v10 = 0;
          v20 = v39 + 1;
          while (1)
          {
            v21 = *v20 - 48;
            if (v21 > 9)
            {
              break;
            }

            v22 = 10 * v10;
            if ((v10 * 10) >> 64 != (10 * v10) >> 63)
            {
              break;
            }

            v10 = v22 + v21;
            if (__OFADD__(v22, v21))
            {
              break;
            }

            ++v20;
            if (!--v5)
            {
              goto LABEL_63;
            }
          }
        }

        goto LABEL_62;
      }

LABEL_74:
      __break(1u);
      return;
    }

    if (v4 != 45)
    {
      if (v5)
      {
        v10 = 0;
        v25 = v39;
        while (1)
        {
          v26 = *v25 - 48;
          if (v26 > 9)
          {
            break;
          }

          v27 = 10 * v10;
          if ((v10 * 10) >> 64 != (10 * v10) >> 63)
          {
            break;
          }

          v10 = v27 + v26;
          if (__OFADD__(v27, v26))
          {
            break;
          }

          ++v25;
          if (!--v5)
          {
            goto LABEL_63;
          }
        }
      }

      goto LABEL_62;
    }

    if (v5)
    {
      if (--v5)
      {
        v10 = 0;
        v14 = v39 + 1;
        while (1)
        {
          v15 = *v14 - 48;
          if (v15 > 9)
          {
            break;
          }

          v16 = 10 * v10;
          if ((v10 * 10) >> 64 != (10 * v10) >> 63)
          {
            break;
          }

          v10 = v16 - v15;
          if (__OFSUB__(v16, v15))
          {
            break;
          }

          ++v14;
          if (!--v5)
          {
            goto LABEL_63;
          }
        }
      }

      goto LABEL_62;
    }

    goto LABEL_72;
  }

  if ((v4 & 0x1000000000000000) != 0)
  {
    v8 = ((v3 & 0xFFFFFFFFFFFFFFFLL) + 32);
  }

  else
  {
    v8 = _StringObject.sharedUTF8.getter();
  }

  v9 = *v8;
  if (v9 == 43)
  {
    if (v6 >= 1)
    {
      v5 = v6 - 1;
      if (v6 != 1)
      {
        v10 = 0;
        if (v8)
        {
          v17 = v8 + 1;
          while (1)
          {
            v18 = *v17 - 48;
            if (v18 > 9)
            {
              goto LABEL_62;
            }

            v19 = 10 * v10;
            if ((v10 * 10) >> 64 != (10 * v10) >> 63)
            {
              goto LABEL_62;
            }

            v10 = v19 + v18;
            if (__OFADD__(v19, v18))
            {
              goto LABEL_62;
            }

            ++v17;
            if (!--v5)
            {
              goto LABEL_63;
            }
          }
        }

        goto LABEL_54;
      }

      goto LABEL_62;
    }

    goto LABEL_73;
  }

  if (v9 == 45)
  {
    if (v6 >= 1)
    {
      v5 = v6 - 1;
      if (v6 != 1)
      {
        v10 = 0;
        if (v8)
        {
          v11 = v8 + 1;
          while (1)
          {
            v12 = *v11 - 48;
            if (v12 > 9)
            {
              goto LABEL_62;
            }

            v13 = 10 * v10;
            if ((v10 * 10) >> 64 != (10 * v10) >> 63)
            {
              goto LABEL_62;
            }

            v10 = v13 - v12;
            if (__OFSUB__(v13, v12))
            {
              goto LABEL_62;
            }

            ++v11;
            if (!--v5)
            {
              goto LABEL_63;
            }
          }
        }

LABEL_54:
        LOBYTE(v5) = 0;
        goto LABEL_63;
      }

      goto LABEL_62;
    }

    __break(1u);
LABEL_72:
    __break(1u);
LABEL_73:
    __break(1u);
    goto LABEL_74;
  }

  if (v6)
  {
    v10 = 0;
    if (v8)
    {
      while (1)
      {
        v23 = *v8 - 48;
        if (v23 > 9)
        {
          goto LABEL_62;
        }

        v24 = 10 * v10;
        if ((v10 * 10) >> 64 != (10 * v10) >> 63)
        {
          goto LABEL_62;
        }

        v10 = v24 + v23;
        if (__OFADD__(v24, v23))
        {
          goto LABEL_62;
        }

        ++v8;
        if (!--v6)
        {
          goto LABEL_54;
        }
      }
    }

    goto LABEL_54;
  }

LABEL_62:
  v10 = 0;
  LOBYTE(v5) = 1;
LABEL_63:
  if ((v5 & 1) == 0)
  {
LABEL_64:
    v28 = [objc_allocWithZone(GKGameInternal) init];
    v29 = objc_allocWithZone(NSNumber);
    v30 = v28;
    v31 = [v29 initWithInteger:v10];
    [v30 setAdamID:v31];

    v32 = [objc_allocWithZone(GKGame) initWithInternalRepresentation:v30];
    v34 = v0[19];
    v33 = v0[20];
    v35 = *(v34 + v33);
    *(v34 + v33) = v32;
  }

LABEL_65:
  v36 = v0[1];

  v36();
}

void DashboardRequest.playerFromInternal.getter(uint64_t a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC13GameOverlayUI16DashboardRequest_localPlayer);
  if (v3)
  {
    v4 = objc_opt_self();
    v5 = v3;
    v6 = [v5 internal];
    v20 = 0;
    v7 = [v4 archivedDataWithRootObject:v6 requiringSecureCoding:1 error:&v20];

    v8 = v20;
    if (v7)
    {
      static Data._unconditionallyBridgeFromObjectiveC(_:)();

      Player.init(with:)();
      v9 = type metadata accessor for Player();
      (*(*(v9 - 8) + 56))(a1, 0, 1, v9);
    }

    else
    {
      v12 = v8;
      _convertNSErrorToError(_:)();

      swift_willThrow();
      if (qword_10012CC18 != -1)
      {
        swift_once();
      }

      v13 = type metadata accessor for Logger();
      sub_100011F80(v13, qword_100135C88);
      swift_errorRetain();
      v14 = Logger.logObject.getter();
      v15 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        v17 = swift_slowAlloc();
        *v16 = 138412290;
        swift_errorRetain();
        v18 = _swift_stdlib_bridgeErrorToNSError();
        *(v16 + 4) = v18;
        *v17 = v18;
        _os_log_impl(&_mh_execute_header, v14, v15, "Player could not be serialized: %@", v16, 0xCu);
        sub_100005688(v17, &qword_100131110, &unk_1000EC870);
      }

      else
      {
      }

      v19 = type metadata accessor for Player();
      (*(*(v19 - 8) + 56))(a1, 1, 1, v19);
    }
  }

  else
  {
    v10 = type metadata accessor for Player();
    v11 = *(*(v10 - 8) + 56);

    v11(a1, 1, 1, v10);
  }
}

uint64_t DashboardRequest.destination.getter@<X0>(char *a1@<X8>)
{
  v2 = sub_100002B38(&qword_10012E4B0, qword_1000EA960);
  __chkstk_darwin(v2 - 8);
  v4 = (&v16[-1] - v3);
  v16[3] = &type metadata for GameOverlayUIFeatureFlags;
  v16[4] = sub_10003F1EC(v5, v6, v7);
  LOBYTE(v16[0]) = 1;
  v8 = isFeatureEnabled(_:)();
  sub_10002E6CC(v16);
  if (v8)
  {
    DashboardRequest.internalDeepLinkDestination.getter(v4);
    v9 = type metadata accessor for GameDashboardDestination();
    v10 = *(v9 - 8);
    v11 = *(v10 + 48);
    if (v11(v4, 1, v9) == 1)
    {
      DashboardRequest.destinationForViewState.getter(a1);
      result = v11(v4, 1, v9);
      if (result != 1)
      {
        return sub_100005688(v4, &qword_10012E4B0, qword_1000EA960);
      }
    }

    else
    {
      return (*(v10 + 32))(a1, v4, v9);
    }
  }

  else
  {
    v13 = enum case for GameDashboardDestination.dashboard(_:);
    v14 = type metadata accessor for GameDashboardDestination();
    return (*(*(v14 - 8) + 104))(a1, v13, v14);
  }

  return result;
}

uint64_t DashboardRequest.destinationForViewState.getter@<X0>(char *a1@<X8>)
{
  v3 = sub_100002B38(&qword_10012E478, &unk_1000EA8E0);
  __chkstk_darwin(v3 - 8);
  v5 = &v39 - v4;
  v6 = type metadata accessor for Player();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v10 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v1 + OBJC_IVAR____TtC13GameOverlayUI16DashboardRequest_viewState);
  if (v11 <= 2)
  {
    if (!v11)
    {
      v30 = *(v1 + OBJC_IVAR____TtC13GameOverlayUI16DashboardRequest_leaderboardIdentifier);
      v31 = *(v1 + OBJC_IVAR____TtC13GameOverlayUI16DashboardRequest_leaderboardIdentifier + 8);
      *a1 = v30;
      *(a1 + 1) = v31;
      v14 = &enum case for GameDashboardDestination.leaderboard(_:);
      goto LABEL_25;
    }

    if (v11 == 1)
    {
      v12 = *(v1 + OBJC_IVAR____TtC13GameOverlayUI16DashboardRequest_achievementIdentifier);
      v13 = *(v1 + OBJC_IVAR____TtC13GameOverlayUI16DashboardRequest_achievementIdentifier + 8);
      *a1 = v12;
      *(a1 + 1) = v13;
      v14 = &enum case for GameDashboardDestination.achievement(_:);
LABEL_25:
      v32 = *v14;
      v33 = type metadata accessor for GameDashboardDestination();
      (*(*(v33 - 8) + 104))(a1, v32, v33);
    }

LABEL_20:
    v25 = &enum case for GameDashboardDestination.dashboard(_:);
    goto LABEL_21;
  }

  if (v11 == 3)
  {
    v34 = v8;
    DashboardRequest.playerFromInternal.getter(v5);
    if ((*(v7 + 48))(v5, 1, v34) == 1)
    {
      sub_100005688(v5, &qword_10012E478, &unk_1000EA8E0);
      v35 = &enum case for GameDashboardDestination.dashboard(_:);
    }

    else
    {
      v36 = *(v7 + 32);
      v36(v10, v5, v34);
      v36(a1, v10, v34);
      v35 = &enum case for GameDashboardDestination.playerProfile(_:);
    }

    v37 = *v35;
    v38 = type metadata accessor for GameDashboardDestination();
    return (*(*(v38 - 8) + 104))(a1, v37, v38);
  }

  if (v11 != 5)
  {
    goto LABEL_20;
  }

  v15 = (v1 + OBJC_IVAR____TtC13GameOverlayUI16DashboardRequest_deepLinkDestination);
  if (*(v1 + OBJC_IVAR____TtC13GameOverlayUI16DashboardRequest_deepLinkDestination + 32) >= 3u && (v17 = v15[2], v16 = v15[3], v18 = *v15, v19 = v15[1], v20 = v17 | v16, v20 | v18 | v19) && ((v21 = v20 | v19, (v18 - 1) <= 1) ? (v22 = v21 == 0) : (v22 = 0), !v22 ? (v23 = v18 == 3) : (v23 = 0), v23 ? (v24 = v21 == 0) : (v24 = 0), v24))
  {
    v25 = &enum case for GameDashboardDestination.friendRequests(_:);
  }

  else
  {
    v25 = &enum case for GameDashboardDestination.friendsList(_:);
  }

LABEL_21:
  v26 = *v25;
  v27 = type metadata accessor for GameDashboardDestination();
  v28 = *(*(v27 - 8) + 104);

  return v28(a1, v26, v27);
}

uint64_t DashboardRequest.internalDeepLinkDestination.getter@<X0>(void *a1@<X8>)
{
  v3 = v1 + OBJC_IVAR____TtC13GameOverlayUI16DashboardRequest_deepLinkDestination;
  v4 = *(v1 + OBJC_IVAR____TtC13GameOverlayUI16DashboardRequest_deepLinkDestination);
  v5 = *(v1 + OBJC_IVAR____TtC13GameOverlayUI16DashboardRequest_deepLinkDestination + 8);
  if (*(v3 + 32) <= 1u)
  {
    if (*(v3 + 32))
    {
      *a1 = v4;
      a1[1] = v5;
      v6 = &enum case for GameDashboardDestination.multiplayerActivity(_:);
    }

    else
    {
      *a1 = v4;
      a1[1] = v5;
      v6 = &enum case for GameDashboardDestination.challengeCreation(_:);
    }

    v12 = *v6;
    v13 = type metadata accessor for GameDashboardDestination();
    v14 = *(v13 - 8);
    (*(v14 + 104))(a1, v12, v13);
    (*(v14 + 56))(a1, 0, 1, v13);
    goto LABEL_8;
  }

  v7 = *(v3 + 16);
  v8 = *(v3 + 24);
  if (*(v3 + 32) == 2)
  {
    *a1 = v4;
    a1[1] = v5;
    a1[2] = v7;
    a1[3] = v8;
    v9 = enum case for GameDashboardDestination.activityInstance(_:);
    v10 = type metadata accessor for GameDashboardDestination();
    v11 = *(v10 - 8);
    (*(v11 + 104))(a1, v9, v10);
    (*(v11 + 56))(a1, 0, 1, v10);

LABEL_8:
  }

  v16 = v7 | v5;
  if (!(v16 | v4 | v8))
  {
    goto LABEL_33;
  }

  v17 = v16 | v8;
  if (v4 == 1 && v17 == 0)
  {
    v23 = &enum case for GameDashboardDestination.challengesHub(_:);
LABEL_37:
    v29 = *v23;
    v30 = type metadata accessor for GameDashboardDestination();
    v31 = *(v30 - 8);
    (*(v31 + 104))(a1, v29, v30);
    v25 = *(v31 + 56);
    v27 = a1;
    v28 = 0;
    v26 = v30;
    goto LABEL_38;
  }

  if (v4 == 2 && v17 == 0)
  {
    v23 = &enum case for GameDashboardDestination.friendInvites(_:);
    goto LABEL_37;
  }

  if (v4 == 3 && v17 == 0)
  {
    v23 = &enum case for GameDashboardDestination.friendRequests(_:);
    goto LABEL_37;
  }

  if ((v4 & 0xFFFFFFFFFFFFFFFELL) != 4 || v17 != 0)
  {
    if (v4 == 6 && v17 == 0)
    {
      v23 = &enum case for GameDashboardDestination.pickActivity(_:);
    }

    else
    {
      v23 = &enum case for GameDashboardDestination.systemSettings(_:);
    }

    goto LABEL_37;
  }

LABEL_33:
  v24 = type metadata accessor for GameDashboardDestination();
  v25 = *(*(v24 - 8) + 56);
  v26 = v24;
  v27 = a1;
  v28 = 1;
LABEL_38:

  return v25(v27, v28, 1, v26);
}

id DashboardRequest.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id DashboardRequest.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DashboardRequest();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_1000C547C(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  v4 = Hasher._finalize()();

  return sub_1000C5668(a1, a2, v4);
}

uint64_t sub_1000C54F4(uint64_t a1)
{
  if ((*(a1 + 32) & 3) == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return *(a1 + 32) & 3;
  }
}

__n128 sub_1000C5510(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1000C5524(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 33))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 32);
  if (v3 <= 3)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1000C556C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 253;
    *(result + 8) = 0;
    if (a3 >= 0xFD)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

uint64_t sub_1000C55B4(uint64_t result, unsigned int a2)
{
  if (a2 >= 3)
  {
    *result = a2 - 3;
    *(result + 8) = 0;
    LOBYTE(a2) = 3;
    *(result + 16) = 0;
    *(result + 24) = 0;
  }

  *(result + 32) = a2;
  return result;
}

unint64_t sub_1000C55E0(uint64_t a1)
{
  v2 = v1;
  v4 = NSObject._rawHashValue(seed:)(*(v2 + 40));

  return sub_1000C5720(a1, v4);
}

unint64_t sub_1000C5624(uint64_t a1)
{
  v2 = v1;
  v4 = AnyHashable._rawHashValue(seed:)(*(v2 + 40));

  return sub_1000C57F4(a1, v4);
}

unint64_t sub_1000C5668(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (_stringCompareWithSmolCheck(_:_:expecting:)())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_1000C5720(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    sub_10003F788(0, &qword_100131E98, SBSRemoteAlertHandle_ptr);
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = static NSObject.== infix(_:_:)();

      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_1000C57F4(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      sub_100067644(*(v2 + 48) + 40 * v4, v8);
      v6 = static AnyHashable.== infix(_:_:)();
      sub_1000708BC(v8);
      if (v6)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unsigned __int8 *sub_1000C58BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v62 = a1;
  v63 = a2;

  result = String.init<A>(_:)();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_1000C5E48(result, v5);
    v35 = v34;

    v5 = v35;
    if ((v35 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = _StringObject.sharedUTF8.getter();
      v7 = v61;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v19 = v7 - 1;
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

          if (result)
          {
            v13 = 0;
            v23 = result + 1;
            do
            {
              v24 = *v23;
              if (v24 < 0x30 || v24 >= v20)
              {
                if (v24 < 0x41 || v24 >= v21)
                {
                  v17 = 0;
                  if (v24 < 0x61 || v24 >= v22)
                  {
                    goto LABEL_127;
                  }

                  v25 = -87;
                }

                else
                {
                  v25 = -55;
                }
              }

              else
              {
                v25 = -48;
              }

              v26 = v13 * a3;
              if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
              {
                goto LABEL_126;
              }

              v13 = v26 + (v24 + v25);
              if (__OFADD__(v26, (v24 + v25)))
              {
                goto LABEL_126;
              }

              ++v23;
              --v19;
            }

            while (v19);
LABEL_46:
            v17 = v13;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v17 = 0;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v27 = a3 + 48;
        v28 = a3 + 55;
        v29 = a3 + 87;
        if (a3 > 10)
        {
          v27 = 58;
        }

        else
        {
          v29 = 97;
          v28 = 65;
        }

        if (result)
        {
          v30 = 0;
          do
          {
            v31 = *result;
            if (v31 < 0x30 || v31 >= v27)
            {
              if (v31 < 0x41 || v31 >= v28)
              {
                v17 = 0;
                if (v31 < 0x61 || v31 >= v29)
                {
                  goto LABEL_127;
                }

                v32 = -87;
              }

              else
              {
                v32 = -55;
              }
            }

            else
            {
              v32 = -48;
            }

            v33 = v30 * a3;
            if ((v30 * a3) >> 64 != (v30 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v30 = v33 + (v31 + v32);
            if (__OFADD__(v33, (v31 + v32)))
            {
              goto LABEL_126;
            }

            ++result;
            --v7;
          }

          while (v7);
          v17 = v33 + (v31 + v32);
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          v13 = 0;
          v14 = result + 1;
          while (1)
          {
            v15 = *v14;
            if (v15 < 0x30 || v15 >= v10)
            {
              if (v15 < 0x41 || v15 >= v11)
              {
                v17 = 0;
                if (v15 < 0x61 || v15 >= v12)
                {
                  goto LABEL_127;
                }

                v16 = -87;
              }

              else
              {
                v16 = -55;
              }
            }

            else
            {
              v16 = -48;
            }

            v18 = v13 * a3;
            if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v13 = v18 - (v15 + v16);
            if (__OFSUB__(v18, (v15 + v16)))
            {
              goto LABEL_126;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v17 = 0;
LABEL_127:

        return v17;
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v36 = HIBYTE(v5) & 0xF;
  v62 = v6;
  v63 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v36)
      {
        v38 = 0;
        v54 = a3 + 48;
        v55 = a3 + 55;
        v56 = a3 + 87;
        if (a3 > 10)
        {
          v54 = 58;
        }

        else
        {
          v56 = 97;
          v55 = 65;
        }

        v57 = &v62;
        while (1)
        {
          v58 = *v57;
          if (v58 < 0x30 || v58 >= v54)
          {
            if (v58 < 0x41 || v58 >= v55)
            {
              v17 = 0;
              if (v58 < 0x61 || v58 >= v56)
              {
                goto LABEL_127;
              }

              v59 = -87;
            }

            else
            {
              v59 = -55;
            }
          }

          else
          {
            v59 = -48;
          }

          v60 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v60 + (v58 + v59);
          if (__OFADD__(v60, (v58 + v59)))
          {
            goto LABEL_126;
          }

          v57 = (v57 + 1);
          if (!--v36)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v36)
    {
      v37 = v36 - 1;
      if (v37)
      {
        v38 = 0;
        v39 = a3 + 48;
        v40 = a3 + 55;
        v41 = a3 + 87;
        if (a3 > 10)
        {
          v39 = 58;
        }

        else
        {
          v41 = 97;
          v40 = 65;
        }

        v42 = &v62 + 1;
        while (1)
        {
          v43 = *v42;
          if (v43 < 0x30 || v43 >= v39)
          {
            if (v43 < 0x41 || v43 >= v40)
            {
              v17 = 0;
              if (v43 < 0x61 || v43 >= v41)
              {
                goto LABEL_127;
              }

              v44 = -87;
            }

            else
            {
              v44 = -55;
            }
          }

          else
          {
            v44 = -48;
          }

          v45 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v45 - (v43 + v44);
          if (__OFSUB__(v45, (v43 + v44)))
          {
            goto LABEL_126;
          }

          ++v42;
          if (!--v37)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v36)
  {
    v46 = v36 - 1;
    if (v46)
    {
      v38 = 0;
      v47 = a3 + 48;
      v48 = a3 + 55;
      v49 = a3 + 87;
      if (a3 > 10)
      {
        v47 = 58;
      }

      else
      {
        v49 = 97;
        v48 = 65;
      }

      v50 = &v62 + 1;
      do
      {
        v51 = *v50;
        if (v51 < 0x30 || v51 >= v47)
        {
          if (v51 < 0x41 || v51 >= v48)
          {
            v17 = 0;
            if (v51 < 0x61 || v51 >= v49)
            {
              goto LABEL_127;
            }

            v52 = -87;
          }

          else
          {
            v52 = -55;
          }
        }

        else
        {
          v52 = -48;
        }

        v53 = v38 * a3;
        if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
        {
          goto LABEL_126;
        }

        v38 = v53 + (v51 + v52);
        if (__OFADD__(v53, (v51 + v52)))
        {
          goto LABEL_126;
        }

        ++v50;
        --v46;
      }

      while (v46);
LABEL_125:
      v17 = v38;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

uint64_t sub_1000C5E48(uint64_t a1, unint64_t a2)
{
  v2 = String.subscript.getter();
  v6 = sub_1000C5EC8(v2, v3, v4, v5);

  return v6;
}

uint64_t sub_1000C5EC8(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v9 = Substring.UTF8View.distance(from:to:)();
    if (!v9 || (v10 = v9, v11 = sub_1000BAA64(v9, 0), v12 = sub_1000C6020(v14, v11 + 32, v10, a1, a2, a3, a4), , , v12 == v10))
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

unint64_t sub_1000C6020(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
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
      result = sub_1000C6240(v12, a6, a7);
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

    result = sub_1000C6240(v12, a6, a7);
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

unint64_t sub_1000C6240(unint64_t a1, uint64_t a2, uint64_t a3)
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

uint64_t sub_1000C62BC(uint64_t *a1, int8x16_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*(a1 + 32) <= 1u)
  {
    if (*(a1 + 32))
    {
      if (a2[2].i8[0] == 1)
      {
        goto LABEL_16;
      }
    }

    else if (!a2[2].i8[0])
    {
LABEL_16:
      if (v3 != a2->i64[0] || v4 != a2->i64[1])
      {
        goto LABEL_20;
      }

      return 1;
    }

    return 0;
  }

  v6 = a1[2];
  v5 = a1[3];
  if (*(a1 + 32) != 2)
  {
    v13 = v6 | v4;
    if (v13 | v3 | v5)
    {
      v14 = v13 | v5;
      if (v3 == 1 && v14 == 0)
      {
        if (a2[2].i8[0] != 3 || a2->i64[0] != 1)
        {
          return 0;
        }
      }

      else if (v3 != 2 || v14)
      {
        if (v3 != 3 || v14)
        {
          if (v3 != 4 || v14)
          {
            if (v3 != 5 || v14)
            {
              if (v3 != 6 || v14)
              {
                if (a2[2].i8[0] != 3 || a2->i64[0] != 7)
                {
                  return 0;
                }
              }

              else if (a2[2].i8[0] != 3 || a2->i64[0] != 6)
              {
                return 0;
              }
            }

            else if (a2[2].i8[0] != 3 || a2->i64[0] != 5)
            {
              return 0;
            }
          }

          else if (a2[2].i8[0] != 3 || a2->i64[0] != 4)
          {
            return 0;
          }
        }

        else if (a2[2].i8[0] != 3 || a2->i64[0] != 3)
        {
          return 0;
        }
      }

      else if (a2[2].i8[0] != 3 || a2->i64[0] != 2)
      {
        return 0;
      }

      if (!(a2[1].i64[0] | a2[1].i64[1] | a2->i64[1]))
      {
        return 1;
      }
    }

    else if (a2[2].i8[0] == 3)
    {
      v16 = vorrq_s8(*a2, a2[1]);
      if (!*&vorr_s8(*v16.i8, *&vextq_s8(v16, v16, 8uLL)))
      {
        return 1;
      }
    }

    return 0;
  }

  if (a2[2].i8[0] != 2)
  {
    return 0;
  }

  v7 = a2[1].i64[0];
  v8 = a2[1].i64[1];
  v9 = v3 == a2->i64[0] && v4 == a2->i64[1];
  if (v9 || (v10 = _stringCompareWithSmolCheck(_:_:expecting:)(), result = 0, (v10 & 1) != 0))
  {
    if (v6 != v7 || v5 != v8)
    {
LABEL_20:

      return _stringCompareWithSmolCheck(_:_:expecting:)();
    }

    return 1;
  }

  return result;
}

uint64_t sub_1000C6540(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = sub_100002B38(&qword_100132088, &qword_1000EEBF0);
  v26 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v24 - v7;
  if (qword_10012CC18 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  sub_100011F80(v9, qword_100135C88);

  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v27[0] = v13;
    *v12 = 136315138;
    *(v12 + 4) = sub_1000BA5C8(a1, a2, v27);
    _os_log_impl(&_mh_execute_header, v10, v11, "Game Center banner finished animations for %s", v12, 0xCu);
    sub_10002E6CC(v13);
  }

  swift_beginAccess();
  sub_1000CC6D4(a1, a2);
  swift_endAccess();

  v15 = *(v3[19] + 16);
  v3[18] = v15;
  if (!v15)
  {
    v16 = v3[21];
    v17 = *(v16 + 2);
    if (v17)
    {
      v25 = *(v26 + 16);
      v18 = (*(v26 + 80) + 32) & ~*(v26 + 80);
      v19 = v26;
      v25(v8, &v16[v18], v6);
      while (1)
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v3[21] = v16;
        if (!isUniquelyReferenced_nonNull_native || (v17 - 1) > *(v16 + 3) >> 1)
        {
          v16 = sub_1000CC448(isUniquelyReferenced_nonNull_native, v17, 1, v16);
          v3[21] = v16;
        }

        v21 = *(v19 + 8);
        v21(&v16[v18], v6);
        v22 = *(v19 + 72);
        if (v22 > 0 || &v16[v18] >= &v16[v18 + v22 + (*(v16 + 2) - 1) * v22])
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (v22)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        --*(v16 + 2);
        v3[21] = v16;
        CheckedContinuation.resume(returning:)();
        result = (v21)(v8, v6);
        v16 = v3[21];
        v17 = *(v16 + 2);
        if (!v17)
        {
          break;
        }

        v25(v8, &v16[v18], v6);
      }
    }
  }

  return result;
}

uint64_t sub_1000C6880(uint64_t a1)
{
  *(v2 + 112) = a1;
  *(v2 + 120) = v1;
  return _swift_task_switch(sub_1000C68A0, v1, 0);
}

uint64_t sub_1000C68A0()
{
  v1 = [objc_allocWithZone(FBSSystemService) init];
  v2 = [v1 isPasscodeLockedOrBlocked];

  if (v2)
  {
    if (qword_10012CC18 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_100011F80(v3, qword_100135C88);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.info.getter();
    if (!os_log_type_enabled(v4, v5))
    {
      goto LABEL_15;
    }

    v6 = swift_slowAlloc();
    *v6 = 0;
    v7 = "Skipping in-game banner request because device is locked or blocked.";
LABEL_14:
    _os_log_impl(&_mh_execute_header, v4, v5, v7, v6, 2u);

LABEL_15:

    v15 = v0[1];

    return v15();
  }

  v8 = sub_10008DFC8();
  v0[16] = v8;
  v0[17] = v9;
  if (!v9)
  {
    if (qword_10012CC18 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    sub_100011F80(v14, qword_100135C88);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v4, v5))
    {
      goto LABEL_15;
    }

    v6 = swift_slowAlloc();
    *v6 = 0;
    v7 = "Enqueuing in game banner request without a valid remote context or token.";
    goto LABEL_14;
  }

  v10 = v8;
  v11 = v9;
  v12 = swift_task_alloc();
  v0[18] = v12;
  *v12 = v0;
  v12[1] = sub_1000C6B04;

  return sub_1000C9D6C(v10, v11);
}

uint64_t sub_1000C6B04()
{
  v1 = *(*v0 + 120);

  return _swift_task_switch(sub_1000C6C14, v1, 0);
}

uint64_t sub_1000C6C14()
{
  v1 = v0[14];
  v2 = *(*(v1 + *(type metadata accessor for RemoteAlertRequest(0) + 24)) + 16);
  v0[19] = v2;
  if (v2)
  {
    v3 = v2;
    if (sub_1000E0268())
    {
      if (qword_10012CC20 != -1)
      {
        swift_once();
      }

      v4 = qword_100135CA0;
      v0[20] = qword_100135CA0;

      return _swift_task_switch(sub_1000C6DEC, v4, 0);
    }
  }

  if (qword_10012CC18 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_100011F80(v5, qword_100135C88);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, v7, "In-game banner request without a valid remote target.", v8, 2u);
  }

  v10 = v0[16];
  v9 = v0[17];

  sub_1000C6540(v10, v9);

  v11 = v0[1];

  return v11();
}

uint64_t sub_1000C6DEC()
{
  v1 = *(v0 + 160);
  swift_beginAccess();
  v2 = *(v1 + 112);
  if (*(v2 + 16))
  {
    v4 = *(v0 + 128);
    v3 = *(v0 + 136);

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
  v8 = *(v0 + 120);

  return _swift_task_switch(sub_1000C6EFC, v8, 0);
}

uint64_t sub_1000C6EFC()
{
  if (v0[5])
  {
    sub_100002B38(&qword_10012E0C0, &qword_1000EA820);
    type metadata accessor for RemoteAlertAccessPointContext(0);
    if (swift_dynamicCast())
    {
      v1 = v0[13];
    }

    else
    {
      v1 = 0;
    }
  }

  else
  {
    sub_100005688((v0 + 2), &unk_100131120, &unk_1000EAAF0);
    v1 = 0;
  }

  v2 = v0[19];
  sub_1000CA984(v0[14], v0[16], v0[17], v1);

  v3 = v0[1];

  return v3();
}

uint64_t sub_1000C6FF4(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return _swift_task_switch(sub_1000C7014, v1, 0);
}

uint64_t sub_1000C7014()
{
  v1 = [objc_allocWithZone(FBSSystemService) init];
  v2 = [v1 isPasscodeLockedOrBlocked];

  if (v2)
  {
    if (qword_10012CC18 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_100011F80(v3, qword_100135C88);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.info.getter();
    if (!os_log_type_enabled(v4, v5))
    {
      goto LABEL_15;
    }

    v6 = swift_slowAlloc();
    *v6 = 0;
    v7 = "Skipping game mode banner request because device is locked or blocked.";
LABEL_14:
    _os_log_impl(&_mh_execute_header, v4, v5, v7, v6, 2u);

LABEL_15:

    v12 = *(v0 + 8);

    return v12();
  }

  sub_10008DFC8();
  if (!v8)
  {
    if (qword_10012CC18 != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    sub_100011F80(v11, qword_100135C88);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v4, v5))
    {
      goto LABEL_15;
    }

    v6 = swift_slowAlloc();
    *v6 = 0;
    v7 = "Cannot enqueue game mode banner request without a valid remote context or token.";
    goto LABEL_14;
  }

  v9 = swift_task_alloc();
  *(v0 + 32) = v9;
  *v9 = v0;
  v9[1] = sub_1000C726C;

  return sub_1000CA308();
}

uint64_t sub_1000C726C()
{
  v1 = *(*v0 + 24);

  return _swift_task_switch(sub_1000C737C, v1, 0);
}

uint64_t sub_1000C737C()
{
  v1 = *(v0 + 16);
  v2 = *(*(v1 + *(type metadata accessor for RemoteAlertRequest(0) + 24)) + 16);
  if (v2)
  {
    v3 = v2;
    if (sub_1000E0268())
    {
      if (qword_10012CC18 != -1)
      {
        swift_once();
      }

      v4 = type metadata accessor for Logger();
      sub_100011F80(v4, qword_100135C88);
      v5 = Logger.logObject.getter();
      v6 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v5, v6))
      {
        v7 = swift_slowAlloc();
        *v7 = 0;
        _os_log_impl(&_mh_execute_header, v5, v6, "Presenting Game Mode banner", v7, 2u);
      }

      v8 = *(v0 + 16);

      sub_1000C7CA0(v8, 0, 0, 0);
      goto LABEL_14;
    }
  }

  if (qword_10012CC18 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  sub_100011F80(v9, qword_100135C88);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v10, v11, "Game mode banner request without a valid remote target.", v12, 2u);
  }

  sub_1000C75A8();
LABEL_14:
  v13 = *(v0 + 8);

  return v13();
}

void sub_1000C75A8()
{
  v1 = v0;
  v2 = sub_100002B38(&qword_100132088, &qword_1000EEBF0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v20 - v4;
  if (qword_10012CC18 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_100011F80(v6, qword_100135C88);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "Game Mode banner dismissed", v9, 2u);
  }

  v10 = *(v1 + 136);
  v11 = __OFSUB__(v10, 1);
  v12 = v10 - 1;
  if (v11)
  {
    __break(1u);
    return;
  }

  *(v1 + 136) = v12;
  if (v12 < 0)
  {
    *(v1 + 136) = 0;
  }

  else if (v12)
  {
    return;
  }

  v13 = *(v1 + 160);
  v14 = *(v13 + 2);
  if (v14)
  {
    v21 = *(v3 + 16);
    v15 = (*(v3 + 80) + 32) & ~*(v3 + 80);
    v21(v5, &v13[v15], v2);
    while (1)
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v1 + 160) = v13;
      if (!isUniquelyReferenced_nonNull_native || (v14 - 1) > *(v13 + 3) >> 1)
      {
        v13 = sub_1000CC448(isUniquelyReferenced_nonNull_native, v14, 1, v13);
        *(v1 + 160) = v13;
      }

      v17 = *(v3 + 8);
      v17(&v13[v15], v2);
      v18 = *(v3 + 72);
      if (v18 > 0 || &v13[v15] >= &v13[v15 + v18 + (*(v13 + 2) - 1) * v18])
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else if (v18)
      {
        swift_arrayInitWithTakeBackToFront();
      }

      --*(v13 + 2);
      *(v1 + 160) = v13;
      CheckedContinuation.resume(returning:)();
      v17(v5, v2);
      v13 = *(v1 + 160);
      v14 = *(v13 + 2);
      if (!v14)
      {
        break;
      }

      v21(v5, &v13[v15], v2);
    }
  }
}

uint64_t sub_1000C7860(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_100002B38(&unk_100130F10, &qword_1000EA660);
  __chkstk_darwin(v8 - 8);
  v10 = v22 - v9;
  sub_1000035B4(a3, v22 - v9, &unk_100130F10, &qword_1000EA660);
  v11 = type metadata accessor for TaskPriority();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_100005688(v10, &unk_100130F10, &qword_1000EA660);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = dispatch thunk of Actor.unownedExecutor.getter();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = String.utf8CString.getter() + 32;

      if (v17 | v15)
      {
        v23[0] = 0;
        v23[1] = 0;
        v19 = v23;
        v23[2] = v15;
        v23[3] = v17;
      }

      else
      {
        v19 = 0;
      }

      v22[1] = 7;
      v22[2] = v19;
      v22[3] = v18;
      v20 = swift_task_create();

      sub_100005688(a3, &unk_100130F10, &qword_1000EA660);

      return v20;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_100005688(a3, &unk_100130F10, &qword_1000EA660);
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

void sub_1000C7B0C(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1000D3DCC(&qword_10012CFC8, 255, type metadata accessor for RemoteAlertAccessPointContext, &unk_1000EE6AC);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + OBJC_IVAR____TtC13GameOverlayUI29RemoteAlertAccessPointContext__active);
}

uint64_t sub_1000C7C3C()
{
  type metadata accessor for RemoteAlertRequestQueue();
  v0 = swift_allocObject();
  result = swift_defaultActor_initialize();
  v0[14] = &_swiftEmptyDictionarySingleton;
  v0[15] = &_swiftEmptyDictionarySingleton;
  v0[16] = &_swiftEmptyDictionarySingleton;
  v0[17] = 0;
  v0[18] = 0;
  v0[19] = &_swiftEmptySetSingleton;
  v0[20] = &_swiftEmptyArrayStorage;
  v0[21] = &_swiftEmptyArrayStorage;
  qword_100135CD8 = v0;
  return result;
}

void sub_1000C7CA0(uint64_t a1, char a2, void (*a3)(unint64_t), uint64_t a4)
{
  v5 = v4;
  v76 = a3;
  v77 = a4;
  v8 = sub_100002B38(&qword_10012DC30, &qword_1000EEC90);
  __chkstk_darwin(v8 - 8);
  v10 = (&v76 - v9);
  v11 = type metadata accessor for RemoteAlertRequest(0);
  v78 = *(v11 - 8);
  __chkstk_darwin(v11);
  v13 = &v76 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v76 - v15;
  v17 = sub_10008DFC8();
  if (v18)
  {
    v19 = v17;
    v20 = v18;
    if (a2)
    {
      swift_beginAccess();
      v21 = *(v4 + 112);
      if (*(v21 + 16))
      {

        v22 = sub_1000C547C(v19, v20);
        if (v23)
        {
          v24 = v11;
          v25 = *(*(v21 + 56) + 8 * v22);

          v26 = *(v25 + 16);
          v11 = v24;

          if (v26)
          {
            if (qword_10012CC18 == -1)
            {
              goto LABEL_7;
            }

            goto LABEL_53;
          }
        }

        else
        {
        }
      }
    }

    v77 = v11;
    v39 = a1 + *(v11 + 28);
    v40 = *v39;
    if (*v39)
    {
      v41 = *(v39 + 8);

      v40(v42);
      sub_10006C574(v40, v41);
    }

    sub_10003F2F4(a1, v13);
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v79[0] = *(v5 + 112);
    v44 = v79[0];
    *(v5 + 112) = 0x8000000000000000;
    v16 = sub_1000C547C(v19, v20);
    v46 = v44[2];
    v47 = (v45 & 1) == 0;
    v48 = v46 + v47;
    if (__OFADD__(v46, v47))
    {
      __break(1u);
      goto LABEL_49;
    }

    v49 = v45;
    if (v44[3] >= v48)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        *(v5 + 112) = v44;
        if (v45)
        {
          goto LABEL_26;
        }
      }

      else
      {
        sub_1000CF074();
        v44 = v79[0];
        *(v5 + 112) = v79[0];
        if (v49)
        {
          goto LABEL_26;
        }
      }
    }

    else
    {
      sub_1000CD1EC(v48, isUniquelyReferenced_nonNull_native);
      v44 = v79[0];
      v50 = sub_1000C547C(v19, v20);
      if ((v49 & 1) != (v51 & 1))
      {
        goto LABEL_55;
      }

      v16 = v50;
      *(v5 + 112) = v44;
      if (v49)
      {
LABEL_26:
        v76 = v10;
        v10 = v44[7];
        v44 = *(v10 + v16);
        v56 = swift_isUniquelyReferenced_nonNull_native();
        *(v10 + v16) = v44;
        if (v56)
        {
LABEL_27:
          v58 = v44[2];
          v57 = v44[3];
          if (v58 >= v57 >> 1)
          {
            v44 = sub_1000CBFF4((v57 > 1), v58 + 1, 1, v44);
            *(v10 + v16) = v44;
          }

          v44[2] = v58 + 1;
          v59 = (*(v78 + 80) + 32) & ~*(v78 + 80);
          sub_10003F35C(v13, v44 + v59 + *(v78 + 72) * v58);
          swift_endAccess();
          if (qword_10012CC18 != -1)
          {
            swift_once();
          }

          v60 = type metadata accessor for Logger();
          sub_100011F80(v60, qword_100135C88);

          v61 = Logger.logObject.getter();
          v62 = static os_log_type_t.info.getter();

          if (os_log_type_enabled(v61, v62))
          {
            v63 = swift_slowAlloc();
            v64 = swift_slowAlloc();
            v80[0] = v64;
            *v63 = 136315138;
            *(v63 + 4) = sub_1000BA5C8(v19, v20, v80);
            _os_log_impl(&_mh_execute_header, v61, v62, "Remote Alert request enqueued for token: %s", v63, 0xCu);
            sub_10002E6CC(v64);
          }

          v65 = *(v5 + 112);
          if (!*(v65 + 16))
          {
            goto LABEL_39;
          }

          v66 = sub_1000C547C(v19, v20);
          if ((v67 & 1) == 0)
          {

LABEL_39:

            return;
          }

          v68 = *(*(v65 + 56) + 8 * v66);

          v69 = *(v68 + 16);

          if (v69 != 1 || (sub_1000D0750(a1, 0, 0, 0) & 1) != 0)
          {
            goto LABEL_39;
          }

          v70 = sub_1000C7BE8(v80);
          v71 = sub_10002B860(v79, v19, v20);
          v73 = *v72;
          if (!*v72)
          {
            (v71)(v79, 0);

            (v70)(v80, 0);
            v75 = 1;
            v74 = v76;
            goto LABEL_45;
          }

          if (*(v73 + 16))
          {
            v74 = v76;
            sub_10003F2F4(v73 + v59, v76);
            sub_10002E60C(0, 1);
            (v71)(v79, 0);

            (v70)(v80, 0);
            v75 = 0;
LABEL_45:
            (*(v78 + 56))(v74, v75, 1, v77);
            sub_100005688(v74, &qword_10012DC30, &qword_1000EEC90);
            return;
          }

          __break(1u);
LABEL_55:
          KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
          __break(1u);
          return;
        }

LABEL_49:
        v44 = sub_1000CBFF4(0, v44[2] + 1, 1, v44);
        *(v10 + v16) = v44;
        goto LABEL_27;
      }
    }

    v44[(v16 >> 6) + 8] |= 1 << v16;
    v52 = (v44[6] + 16 * v16);
    *v52 = v19;
    v52[1] = v20;
    *(v44[7] + 8 * v16) = &_swiftEmptyArrayStorage;
    v53 = v44[2];
    v54 = __OFADD__(v53, 1);
    v55 = v53 + 1;
    if (v54)
    {
      __break(1u);
LABEL_53:
      swift_once();
LABEL_7:
      v27 = type metadata accessor for Logger();
      sub_100011F80(v27, qword_100135C88);

      v28 = Logger.logObject.getter();
      v29 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        v31 = swift_slowAlloc();
        v80[0] = v31;
        *v30 = 136315138;
        *(v30 + 4) = sub_1000BA5C8(v19, v20, v80);
        _os_log_impl(&_mh_execute_header, v28, v29, "Duplicate request not allowed for token: %s", v30, 0xCu);
        sub_10002E6CC(v31);
      }

      v33 = v76;
      v32 = v77;
      if (v76)
      {
        v34 = *(v5 + 112);
        if (*(v34 + 16))
        {
          sub_10000519C(v76, v77);

          v35 = sub_1000C547C(v19, v20);
          v37 = v36;

          if ((v37 & 1) == 0)
          {

            sub_10006C574(v33, v32);
            return;
          }

          v38 = *(*(v34 + 56) + 8 * v35);

          if (*(v38 + 16))
          {
            sub_10003F2F4(v38 + ((*(v78 + 80) + 32) & ~*(v78 + 80)), v16);

            v33(v16);
            sub_10006C574(v33, v32);
            sub_10002D820(v16);
            return;
          }

          sub_10006C574(v33, v32);
        }
      }

      goto LABEL_39;
    }

    v44[2] = v55;

    goto LABEL_26;
  }
}

uint64_t sub_1000C84F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  swift_beginAccess();
  v7 = *(v3 + 112);
  if (*(v7 + 16))
  {

    v8 = sub_1000C547C(a1, a2);
    if (v9)
    {
      v10 = *(*(v7 + 56) + 8 * v8);

      if (*(v10 + 16))
      {
        v11 = type metadata accessor for RemoteAlertRequest(0);
        v12 = *(v11 - 8);
        sub_10003F2F4(v10 + ((*(v12 + 80) + 32) & ~*(v12 + 80)), a3);

        return (*(v12 + 56))(a3, 0, 1, v11);
      }
    }
  }

  v14 = type metadata accessor for RemoteAlertRequest(0);
  return (*(*(v14 - 8) + 56))(a3, 1, 1, v14);
}

uint64_t sub_1000C865C(uint64_t a1)
{
  v3 = sub_100002B38(&qword_10012DC30, &qword_1000EEC90);
  __chkstk_darwin(v3 - 8);
  v5 = &v24[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v6);
  v8 = &v24[-v7];
  v9 = sub_10008DFC8();
  if (!v10)
  {
    return 0;
  }

  v11 = v9;
  v12 = v10;
  swift_beginAccess();
  v13 = *(v1 + 120);
  if (!*(v13 + 16))
  {
LABEL_7:
    v21 = type metadata accessor for RemoteAlertRequest(0);
    v22 = *(*(v21 - 8) + 56);
    v20 = 1;
    v22(v8, 1, 1, v21);
    sub_100005688(v8, &qword_10012DC30, &qword_1000EEC90);
    sub_10003F2F4(a1, v5);
    v22(v5, 0, 1, v21);
    swift_beginAccess();
    sub_1000D4574(v5, v11, v12);
    swift_endAccess();
    return v20;
  }

  v14 = sub_1000C547C(v11, v12);
  if ((v15 & 1) == 0)
  {

    goto LABEL_7;
  }

  v16 = v14;

  v17 = *(v13 + 56);
  v18 = type metadata accessor for RemoteAlertRequest(0);
  v19 = *(v18 - 8);
  sub_10003F2F4(v17 + *(v19 + 72) * v16, v8);

  (*(v19 + 56))(v8, 0, 1, v18);
  sub_100005688(v8, &qword_10012DC30, &qword_1000EEC90);
  return 0;
}

uint64_t sub_1000C88DC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002B38(&qword_10012DC30, &qword_1000EEC90);
  __chkstk_darwin(v4 - 8);
  v6 = &v25[-1] - v5;
  v7 = type metadata accessor for RemoteAlertRequest(0);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v25[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v25[-1] - v12;
  swift_beginAccess();
  sub_1000E0F14(a1, a2, v6);
  swift_endAccess();
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    return sub_100005688(v6, &qword_10012DC30, &qword_1000EEC90);
  }

  sub_10003F35C(v6, v13);
  if (qword_10012CC18 != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  sub_100011F80(v15, qword_100135C88);
  sub_10003F2F4(v13, v10);
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v25[0] = v19;
    *v18 = 136315138;
    v20 = GameOverlayUIConfig.ServiceKind.rawValue.getter();
    v22 = v21;
    sub_10002D820(v10);
    v23 = sub_1000BA5C8(v20, v22, v25);

    *(v18 + 4) = v23;
    _os_log_impl(&_mh_execute_header, v16, v17, "Enqueuing deferring request: %s", v18, 0xCu);
    sub_10002E6CC(v19);
  }

  else
  {

    sub_10002D820(v10);
  }

  sub_1000C7CA0(v13, 0, 0, 0);
  return sub_10002D820(v13);
}

uint64_t sub_1000C8BE8(uint64_t a1, void *a2)
{
  v3 = *(a1 + *(type metadata accessor for RemoteAlertRequest(0) + 24));
  swift_beginAccess();
  sub_1000035B4(v3 + 64, v22, &unk_100131120, &unk_1000EAAF0);
  v4 = v23;
  if (v23)
  {
    v5 = v24;
    v6 = sub_10002D754(v22, v23);
    v7 = *(v4 - 8);
    v8 = __chkstk_darwin(v6);
    v10 = &v21[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
    (*(v7 + 16))(v10, v8);
    sub_100005688(v22, &unk_100131120, &unk_1000EAAF0);
    v11 = (*(v5 + 16))(v4, v5);
    v13 = v12;
    (*(v7 + 8))(v10, v4);
  }

  else
  {
    sub_100005688(v22, &unk_100131120, &unk_1000EAAF0);
    v11 = 0;
    v13 = 0;
  }

  v14 = a2[3];
  v15 = a2[4];
  sub_10002D754(a2, v14);
  v16 = (*(v15 + 16))(v14, v15);
  if (v13)
  {
    if (v11 == v16 && v13 == v17)
    {
      v19 = 1;
    }

    else
    {
      v19 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

  else
  {
    v19 = 0;
  }

  return v19 & 1;
}

uint64_t sub_1000C8E1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return _swift_task_switch(sub_1000C8E3C, 0, 0);
}

uint64_t sub_1000C8E3C()
{
  if (qword_10012CC20 != -1)
  {
    swift_once();
  }

  v1 = qword_100135CA0;
  *(v0 + 32) = qword_100135CA0;

  return _swift_task_switch(sub_1000C8ED4, v1, 0);
}

uint64_t sub_1000C8ED4()
{
  sub_100093AC4(v0[2], v0[3], 1);
  v1 = v0[1];

  return v1();
}

uint64_t sub_1000C8F3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 264) = v14;
  *(v8 + 272) = v15;
  *(v8 + 248) = a7;
  *(v8 + 256) = a8;
  *(v8 + 328) = a5;
  *(v8 + 232) = a4;
  *(v8 + 240) = a6;
  sub_100002B38(&unk_100130F10, &qword_1000EA660);
  *(v8 + 280) = swift_task_alloc();
  v9 = type metadata accessor for UUID();
  *(v8 + 288) = v9;
  *(v8 + 296) = *(v9 - 8);
  *(v8 + 304) = swift_task_alloc();
  *(v8 + 312) = type metadata accessor for MainActor();
  *(v8 + 320) = static MainActor.shared.getter();
  v11 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1000C9080, v11, v10);
}

uint64_t sub_1000C9080()
{

  if (qword_10012CC40 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 296);
  v1 = *(v0 + 304);
  v3 = *(v0 + 288);
  v4 = *(v0 + 248);
  v5 = *(v0 + 328);
  v6 = *(v0 + 232);
  v7 = qword_100135CF0;
  UUID.init()();
  v8 = UUID.uuidString.getter();
  v10 = v9;
  (*(v2 + 8))(v1, v3);
  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v31 = *(v7 + 16);
  *(v7 + 16) = 0x8000000000000000;
  sub_1000CEC38(v6, v8, v10, isUniquelyReferenced_nonNull_native, &qword_1001320E0, &qword_1000EEC70);

  *(v7 + 16) = v31;
  swift_endAccess();
  sub_100002B38(&qword_1001320B8, &qword_1000EEC38);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1000EEB50;
  *(inited + 32) = 0xD000000000000011;
  *(inited + 40) = 0x80000001000E8560;
  *(inited + 48) = v8;
  *(inited + 56) = v10;
  *(inited + 72) = &type metadata for String;
  *(inited + 80) = 0xD000000000000018;
  *(inited + 88) = 0x80000001000E8580;
  *(inited + 120) = &type metadata for Bool;
  *(inited + 96) = v5;
  v13 = sub_1000D1818(inited);
  swift_setDeallocating();
  sub_100002B38(&qword_1001320C0, &qword_1000EEC40);
  swift_arrayDestroy();
  if (v4)
  {
    v14 = *(v0 + 240);
    v15 = *(v0 + 248);
    *(v0 + 168) = &type metadata for String;
    *(v0 + 144) = v14;
    *(v0 + 152) = v15;
    sub_1000D1A50((v0 + 144), (v0 + 176));

    v16 = swift_isUniquelyReferenced_nonNull_native();
    v31 = v13;
    sub_1000CEDD8((v0 + 176), 0xD000000000000011, 0x80000001000E85A0, v16);
  }

  v18 = *(v0 + 264);
  v17 = *(v0 + 272);
  v19 = *(v0 + 256);
  v20 = *(v0 + 328);
  sub_1000C94C8(v13);

  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [v19 setUserInfo:isa];

  v22 = [objc_opt_self() newHandleWithDefinition:v18 configurationContext:v17];
  if ((v20 & 1) == 0)
  {
    if (qword_10012CC28 != -1)
    {
      swift_once();
    }

    v23 = *(v0 + 280);
    v24 = *(v0 + 232);
    [v22 registerObserver:{qword_100135CA8, v31}];
    v25 = type metadata accessor for TaskPriority();
    (*(*(v25 - 8) + 56))(v23, 1, 1, v25);

    v26 = v22;
    v27 = static MainActor.shared.getter();
    v28 = swift_allocObject();
    v28[2] = v27;
    v28[3] = &protocol witness table for MainActor;
    v28[4] = v24;
    v28[5] = v26;
    sub_100014BBC(0, 0, v23, &unk_1000EEC50, v28);
  }

  [v22 activateWithContext:{*(v0 + 256), v31}];

  v29 = *(v0 + 8);

  return v29();
}

Swift::Int sub_1000C94C8(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_100002B38(&qword_1001320D8, &qword_1000EEC68);
    v2 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v2 = &_swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = (v2 + 8);

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = __clz(__rbit64(v5)) | (v9 << 6);
    v14 = (*(a1 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_1000BA7A0(*(a1 + 56) + 32 * v13, v35);
    *&v34 = v16;
    *(&v34 + 1) = v15;
    v32[2] = v34;
    v33[0] = v35[0];
    v33[1] = v35[1];
    v32[0] = v34;

    swift_dynamicCast();
    sub_1000D1A50(v33, v27);
    v28 = v24;
    v29 = v25;
    v30 = v26;
    sub_1000D1A50(v27, v31);
    v24 = v28;
    v25 = v29;
    v26 = v30;
    sub_1000D1A50(v31, v32);
    result = AnyHashable._rawHashValue(seed:)(v2[5]);
    v17 = -1 << *(v2 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*&v7[8 * (v18 >> 6)]) == 0)
    {
      v20 = 0;
      v21 = (63 - v17) >> 6;
      while (++v19 != v21 || (v20 & 1) == 0)
      {
        v22 = v19 == v21;
        if (v19 == v21)
        {
          v19 = 0;
        }

        v20 |= v22;
        v23 = *&v7[8 * v19];
        if (v23 != -1)
        {
          v10 = __clz(__rbit64(~v23)) + (v19 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v18) & ~*&v7[8 * (v18 >> 6)])) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *&v7[(v10 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v10;
    v11 = v2[6] + 40 * v10;
    *v11 = v24;
    *(v11 + 16) = v25;
    *(v11 + 32) = v26;
    result = sub_1000D1A50(v32, (v2[7] + 32 * v10));
    ++v2[2];
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_1000C9790(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  type metadata accessor for MainActor();
  v5[7] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[8] = v7;
  v5[9] = v6;

  return _swift_task_switch(sub_1000C9828, v7, v6);
}

uint64_t sub_1000C9828()
{
  if (qword_10012CC28 != -1)
  {
    swift_once();
  }

  v1 = qword_100135CA8;
  *(v0 + 80) = qword_100135CA8;

  return _swift_task_switch(sub_1000C98C0, v1, 0);
}

uint64_t sub_1000C98C0()
{
  v1 = v0[10];
  swift_beginAccess();
  v2 = *(v1 + 112);
  v3 = v0[5];
  if ((v2 & 0xC000000000000001) != 0)
  {
    if (v2 < 0)
    {
      v4 = *(v1 + 112);
    }

    else
    {
      v4 = v2 & 0xFFFFFFFFFFFFFF8;
    }

    v5 = __CocoaDictionary.count.getter();
    v7 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      __break(1u);
      return _swift_task_switch(v5, v7, v6);
    }

    *(v1 + 112) = sub_1000CCFC8(v4, v7);
    v3 = v0[5];
  }

  else
  {
  }

  v8 = v0[6];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v1 + 112);
  sub_1000CEACC(v3, v8, isUniquelyReferenced_nonNull_native);
  *(v1 + 112) = v11;
  swift_endAccess();
  v7 = v0[8];
  v6 = v0[9];
  v5 = sub_1000C99D4;

  return _swift_task_switch(v5, v7, v6);
}

uint64_t sub_1000C99D4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000C9A34()
{

  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

BOOL sub_1000C9AB8(uint64_t a1, unint64_t a2)
{
  v5 = v2[17];
  if (v5)
  {
    if (qword_10012CC18 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_100011F80(v6, qword_100135C88);

    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v12[0] = v10;
      *v9 = 136315138;
      *(v9 + 4) = sub_1000BA5C8(a1, a2, v12);
      _os_log_impl(&_mh_execute_header, v7, v8, "Game Center banner for %s blocked on Game Mode banners", v9, 0xCu);
      sub_10002E6CC(v10);
    }
  }

  else
  {
    swift_beginAccess();

    sub_1000CFB80(&v13, a1, a2);
    swift_endAccess();

    v2[18] = *(v2[19] + 16);
  }

  return v5 == 0;
}

void sub_1000C9C6C()
{
  if (*(v0 + 144))
  {
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
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v2, v3, "Game Mode banner blocked on Game Center banners", v4, 2u);
    }
  }

  else
  {
    v5 = *(v0 + 136);
    v6 = __OFADD__(v5, 1);
    v7 = v5 + 1;
    if (v6)
    {
      __break(1u);
    }

    else
    {
      *(v0 + 136) = v7;
    }
  }
}

uint64_t sub_1000C9D6C(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return _swift_task_switch(sub_1000C9D90, v2, 0);
}

uint64_t sub_1000C9D90()
{
  if (sub_1000C9AB8(v0[2], v0[3]))
  {
    v2 = v0[1];

    return v2();
  }

  else
  {
    sub_1000D3DCC(&qword_100132108, v1, type metadata accessor for RemoteAlertRequestQueue, &unk_1000EEBC8);
    v4 = swift_task_alloc();
    v0[5] = v4;
    *v4 = v0;
    v4[1] = sub_1000C9EEC;

    return withCheckedContinuation<A>(isolation:function:_:)();
  }
}

uint64_t sub_1000C9EEC()
{
  v1 = *(*v0 + 32);

  return _swift_task_switch(sub_1000C9FFC, v1, 0);
}

uint64_t sub_1000C9FFC()
{
  v1 = swift_task_alloc();
  v0[6] = v1;
  *v1 = v0;
  v1[1] = sub_1000CA094;
  v2 = v0[3];
  v3 = v0[2];

  return sub_1000C9D6C(v3, v2);
}

uint64_t sub_1000CA094()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1000CA188(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002B38(&qword_100132088, &qword_1000EEBF0);
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v14 - v7;
  (*(v5 + 16))(&v14 - v7, a1, v4, v6);
  v9 = *(a2 + 160);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a2 + 160) = v9;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v9 = sub_1000CC448(0, v9[2] + 1, 1, v9);
    *(a2 + 160) = v9;
  }

  v12 = v9[2];
  v11 = v9[3];
  if (v12 >= v11 >> 1)
  {
    v9 = sub_1000CC448((v11 > 1), v12 + 1, 1, v9);
  }

  v9[2] = v12 + 1;
  result = (*(v5 + 32))(v9 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v12, v8, v4);
  *(a2 + 160) = v9;
  return result;
}

uint64_t sub_1000CA328()
{
  sub_1000C9C6C();
  if (v2)
  {
    v3 = *(v0 + 8);

    return v3();
  }

  else
  {
    sub_1000D3DCC(&qword_100132108, v1, type metadata accessor for RemoteAlertRequestQueue, &unk_1000EEBC8);
    v5 = swift_task_alloc();
    *(v0 + 24) = v5;
    *v5 = v0;
    v5[1] = sub_1000CA480;

    return withCheckedContinuation<A>(isolation:function:_:)();
  }
}

uint64_t sub_1000CA480()
{
  v1 = *(*v0 + 16);

  return _swift_task_switch(sub_1000CA590, v1, 0);
}

uint64_t sub_1000CA590()
{
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v1[1] = sub_100032B60;

  return sub_1000CA308();
}

uint64_t sub_1000CA620(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002B38(&qword_100132088, &qword_1000EEBF0);
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v14 - v7;
  (*(v5 + 16))(&v14 - v7, a1, v4, v6);
  v9 = *(a2 + 168);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a2 + 168) = v9;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v9 = sub_1000CC448(0, v9[2] + 1, 1, v9);
    *(a2 + 168) = v9;
  }

  v12 = v9[2];
  v11 = v9[3];
  if (v12 >= v11 >> 1)
  {
    v9 = sub_1000CC448((v11 > 1), v12 + 1, 1, v9);
  }

  v9[2] = v12 + 1;
  result = (*(v5 + 32))(v9 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v12, v8, v4);
  *(a2 + 168) = v9;
  return result;
}

uint64_t sub_1000CA7A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 24) = a4;
  type metadata accessor for MainActor();
  *(v4 + 32) = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1000CA838, v6, v5);
}

uint64_t sub_1000CA838()
{
  v1 = v0[3];

  if (*(v1 + OBJC_IVAR____TtC13GameOverlayUI29RemoteAlertAccessPointContext__active) == 1)
  {
    *(v1 + OBJC_IVAR____TtC13GameOverlayUI29RemoteAlertAccessPointContext__active) = 1;
  }

  else
  {
    v2 = v0[3];
    swift_getKeyPath();
    v3 = swift_task_alloc();
    *(v3 + 16) = v2;
    *(v3 + 24) = 1;
    v0[2] = v2;
    sub_1000D3DCC(&qword_10012CFC8, 255, type metadata accessor for RemoteAlertAccessPointContext, &unk_1000EE6AC);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  v4 = v0[1];

  return v4();
}

double sub_1000CA984(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v75 = *v4;
  v9 = sub_100002B38(&unk_100130F10, &qword_1000EA660);
  __chkstk_darwin(v9 - 8);
  v74 = &v65 - v10;
  v11 = sub_100002B38(&qword_10012DC30, &qword_1000EEC90);
  __chkstk_darwin(v11 - 8);
  v13 = &v65 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v65 - v15;
  __chkstk_darwin(v17);
  v19 = &v65 - v18;
  v20 = type metadata accessor for RemoteAlertRequest(0);
  v21 = *(v20 - 8);
  __chkstk_darwin(v20);
  v72 = v22;
  v73 = &v65 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v76 = v4;
  if (a4)
  {
    v25 = v21;
    v26 = a4;
    goto LABEL_3;
  }

  v70 = a2;
  v67 = &v65 - v24;
  v66 = v13;
  swift_beginAccess();
  v38 = v4[14];
  v39 = *(v38 + 16);
  v69 = a1;
  v71 = v21;
  if (v39)
  {

    v40 = sub_1000C547C(v70, a3);
    if (v41)
    {
      v42 = *(*(v38 + 56) + 8 * v40);

      v43 = *(v42 + 16);
      if (v43)
      {
        v44 = v71;
        sub_10003F2F4(v42 + ((*(v44 + 80) + 32) & ~*(v44 + 80)) + *(v71 + 72) * (v43 - 1), v16);
        v45 = v44;

        v46 = *(v44 + 56);
        v46(v16, 0, 1, v20);
        sub_10003F35C(v16, v19);
        v68 = v46;
        v46(v19, 0, 1, v20);
        v47 = (*(v44 + 48))(v19, 1, v20);
        goto LABEL_18;
      }

      v21 = v71;
    }
  }

  v48 = *(v21 + 56);
  v49 = 1;
  v68 = v48;
  v48(v16, 1, 1, v20);
  v50 = v76;
  swift_beginAccess();
  v51 = v50[15];
  if (*(v51 + 16))
  {

    v52 = sub_1000C547C(v70, a3);
    if (v53)
    {
      sub_10003F2F4(*(v51 + 56) + *(v71 + 72) * v52, v19);
      v49 = 0;
    }
  }

  v68(v19, v49, 1, v20);
  v45 = v71;
  v54 = *(v71 + 48);
  if (v54(v16, 1, v20) != 1)
  {
    sub_100005688(v16, &qword_10012DC30, &qword_1000EEC90);
  }

  v47 = v54(v19, 1, v20);
LABEL_18:
  if (v47 != 1)
  {
    v63 = v67;
    sub_10003F35C(v19, v67);
    v64 = *(v63 + *(v20 + 24));
    swift_beginAccess();
    sub_1000035B4(v64 + 64, v78, &unk_100131120, &unk_1000EAAF0);
    sub_10002D820(v63);
    a1 = v69;
    if (!v79)
    {
      sub_100005688(v78, &unk_100131120, &unk_1000EAAF0);
      goto LABEL_26;
    }

    sub_100002B38(&qword_10012E0C0, &qword_1000EA820);
    type metadata accessor for RemoteAlertAccessPointContext(0);
    if ((swift_dynamicCast() & 1) == 0)
    {
LABEL_26:
      sub_1000C7CA0(a1, 0, 0, 0);
      goto LABEL_27;
    }

    v25 = v45;
    v26 = v77;

LABEL_3:
    v27 = *(v26 + OBJC_IVAR____TtC13GameOverlayUI29RemoteAlertAccessPointContext_allowCoalescing);
    swift_retain_n();

    if (v27 == 1)
    {
      LODWORD(v70) = a4 != 0;
      v28 = type metadata accessor for TaskPriority();
      v29 = v74;
      (*(*(v28 - 8) + 56))(v74, 1, 1, v28);
      v30 = v73;
      sub_10003F2F4(a1, v73);
      v32 = sub_1000D3DCC(&qword_100132108, v31, type metadata accessor for RemoteAlertRequestQueue, &unk_1000EEBC8);
      v33 = (*(v25 + 80) + 33) & ~*(v25 + 80);
      v34 = (v72 + v33 + 7) & 0xFFFFFFFFFFFFFFF8;
      v35 = (v34 + 15) & 0xFFFFFFFFFFFFFFF8;
      v36 = swift_allocObject();
      v37 = v76;
      *(v36 + 16) = v76;
      *(v36 + 24) = v32;
      *(v36 + 32) = v70;
      sub_10003F35C(v30, v36 + v33);
      *(v36 + v34) = v26;
      *(v36 + v35) = v37;
      *(v36 + ((v35 + 15) & 0xFFFFFFFFFFFFFFF8)) = v75;
      swift_retain_n();

      sub_1000C7860(0, 0, v29, &unk_1000EECD8, v36);

LABEL_27:

      return result;
    }

    goto LABEL_26;
  }

  sub_100005688(v19, &qword_10012DC30, &qword_1000EEC90);
  v55 = v69;
  v56 = sub_1000C865C(v69);
  sub_1000C7CA0(v55, 0, 0, 0);
  if ((v56 & 1) == 0)
  {
    goto LABEL_27;
  }

  v57 = sub_10008DFC8();
  if (v58)
  {
    v60 = v57;
    v61 = v58;
    v62 = v66;
    v68(v66, 1, 1, v20);
    swift_beginAccess();
    sub_1000D4574(v62, v60, v61);
    swift_endAccess();
  }

  return result;
}

uint64_t sub_1000CB110(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 112) = a6;
  *(v7 + 120) = a7;
  *(v7 + 104) = a5;
  *(v7 + 200) = a4;
  sub_100002B38(&qword_10012DC30, &qword_1000EEC90);
  *(v7 + 128) = swift_task_alloc();
  v9 = type metadata accessor for UUID();
  *(v7 + 136) = v9;
  *(v7 + 144) = *(v9 - 8);
  *(v7 + 152) = swift_task_alloc();
  v10 = type metadata accessor for ContinuousClock();
  *(v7 + 160) = v10;
  *(v7 + 168) = *(v10 - 8);
  *(v7 + 176) = swift_task_alloc();

  return _swift_task_switch(sub_1000CB270, a7, 0);
}

uint64_t sub_1000CB270()
{
  if (*(v0 + 200))
  {
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
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v2, v3, "Attempting coalescing incoming request with existing banner.", v4, 2u);
    }

    v5 = *(v0 + 144);
    v6 = *(v0 + 152);
    v7 = *(v0 + 128);
    v8 = *(v0 + 136);
    v9 = *(v0 + 112);
    v10 = *(v0 + 104);

    v11 = type metadata accessor for RemoteAlertRequest(0);
    v12 = *(v10 + *(v11 + 24));
    *(v0 + 40) = type metadata accessor for RemoteAlertAccessPointContext(0);
    *(v0 + 48) = &off_1001240E8;
    *(v0 + 16) = v9;
    swift_beginAccess();

    sub_10003EF48(v0 + 16, v12 + 104);
    swift_endAccess();
    UUID.init()();
    v13 = UUID.uuidString.getter();
    v15 = v14;
    (*(v5 + 8))(v6, v8);
    sub_10003F2F4(v10, v7);
    (*(*(v11 - 8) + 56))(v7, 0, 1, v11);
    swift_beginAccess();

    sub_1000D4574(v7, v13, v15);
    swift_endAccess();
    LOBYTE(v6) = sub_1000D0750(v10, 1, v13, v15);

    if ((v6 & 1) == 0)
    {
      v16 = Logger.logObject.getter();
      v17 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        *v18 = 0;
        _os_log_impl(&_mh_execute_header, v16, v17, "Failed coalescing incoming request with existing banner.", v18, 2u);
      }
    }

    v19 = *(v0 + 8);

    return v19();
  }

  else
  {
    v21 = static Duration.seconds(_:)();
    v23 = v22;
    static Clock<>.continuous.getter();
    v24 = swift_task_alloc();
    *(v0 + 184) = v24;
    *v24 = v0;
    v24[1] = sub_1000CB634;

    return sub_1000CBB34(v21, v23, 0, 0, 1);
  }
}

uint64_t sub_1000CB634()
{
  v2 = *v1;
  v3 = *(*v1 + 176);
  v4 = *(*v1 + 168);
  v5 = *(*v1 + 160);
  *(*v1 + 192) = v0;

  (*(v4 + 8))(v3, v5);
  v6 = *(v2 + 120);
  if (v0)
  {
    v7 = sub_1000CBAB8;
  }

  else
  {
    v7 = sub_1000CB7BC;
  }

  return _swift_task_switch(v7, v6, 0);
}

uint64_t sub_1000CB7BC()
{
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
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Attempting coalescing incoming request with existing banner.", v4, 2u);
  }

  v5 = v0[18];
  v6 = v0[19];
  v7 = v0[16];
  v8 = v0[17];
  v9 = v0[14];
  v10 = v0[13];

  v11 = type metadata accessor for RemoteAlertRequest(0);
  v12 = *(v10 + *(v11 + 24));
  v0[5] = type metadata accessor for RemoteAlertAccessPointContext(0);
  v0[6] = &off_1001240E8;
  v0[2] = v9;
  swift_beginAccess();

  sub_10003EF48((v0 + 2), v12 + 104);
  swift_endAccess();
  UUID.init()();
  v13 = UUID.uuidString.getter();
  v15 = v14;
  (*(v5 + 8))(v6, v8);
  sub_10003F2F4(v10, v7);
  (*(*(v11 - 8) + 56))(v7, 0, 1, v11);
  swift_beginAccess();

  sub_1000D4574(v7, v13, v15);
  swift_endAccess();
  LOBYTE(v6) = sub_1000D0750(v10, 1, v13, v15);

  if ((v6 & 1) == 0)
  {
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&_mh_execute_header, v16, v17, "Failed coalescing incoming request with existing banner.", v18, 2u);
    }
  }

  v19 = v0[1];

  return v19();
}

uint64_t sub_1000CBAB8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000CBB34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
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

  return _swift_task_switch(sub_1000CBC34, 0, 0);
}

uint64_t sub_1000CBC34()
{
  v1 = v0[10];
  v2 = v0[8];
  v3 = v0[9];
  v4 = type metadata accessor for ContinuousClock();
  v5 = sub_1000D3DCC(&qword_100132110, 255, &type metadata accessor for ContinuousClock, &protocol conformance descriptor for ContinuousClock);
  dispatch thunk of Clock.now.getter();
  sub_1000D3DCC(&qword_100132118, 255, &type metadata accessor for ContinuousClock.Instant, &protocol conformance descriptor for ContinuousClock.Instant);
  dispatch thunk of InstantProtocol.advanced(by:)();
  v6 = *(v3 + 8);
  v0[12] = v6;
  v0[13] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v1, v2);
  v7 = swift_task_alloc();
  v0[14] = v7;
  *v7 = v0;
  v7[1] = sub_1000CBDCC;
  v8 = v0[11];

  return dispatch thunk of Clock.sleep(until:tolerance:)(v8, v0 + 2, v4, v5);
}

uint64_t sub_1000CBDCC()
{
  v2 = *(*v1 + 96);
  v3 = *(*v1 + 88);
  v4 = *(*v1 + 64);
  v5 = *v1;
  *(v5 + 120) = v0;

  v2(v3, v4);
  if (v0)
  {

    return _swift_task_switch(sub_1000CBF88, 0, 0);
  }

  else
  {

    v6 = *(v5 + 8);

    return v6();
  }
}

uint64_t sub_1000CBF88()
{

  v1 = *(v0 + 8);

  return v1();
}

void *sub_1000CBFF4(void *result, int64_t a2, char a3, void *a4)
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

  sub_100002B38(&qword_1001320A0, &unk_1000EEC08);
  v10 = *(type metadata accessor for RemoteAlertRequest(0) - 8);
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
  v15 = *(type metadata accessor for RemoteAlertRequest(0) - 8);
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

void *sub_1000CC1CC(void *result, int64_t a2, char a3, void *a4)
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
    sub_100002B38(&qword_100132130, &qword_1000EEDA8);
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
    sub_100002B38(&qword_100132138, qword_1000EEDB0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1000CC300(void *result, int64_t a2, char a3, void *a4)
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
    sub_100002B38(&qword_1001312C0, &qword_1000ED7F8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_100002B38(&qword_10012DC80, &qword_1000ED7F0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1000CC448(void *result, int64_t a2, char a3, void *a4)
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

  sub_100002B38(&qword_100132090, &qword_1000EEBF8);
  v10 = *(sub_100002B38(&qword_100132088, &qword_1000EEBF0) - 8);
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
  v15 = *(sub_100002B38(&qword_100132088, &qword_1000EEBF0) - 8);
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

void sub_1000CC638(void **a1, void **a2, uint64_t a3, uint64_t (*a4)(void))
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

uint64_t sub_1000CC6D4(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  Hasher.init(_seed:)();
  String.hash(into:)();
  v6 = Hasher._finalize()();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  while (1)
  {
    v10 = (*(v5 + 48) + 16 * v8);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      break;
    }

    v8 = (v8 + 1) & v9;
    if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = *v2;
  v16 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_1000CC810();
    v14 = v16;
  }

  v12 = *(*(v14 + 48) + 16 * v8);
  sub_1000CCE04(v8);
  *v2 = v16;
  return v12;
}

void sub_1000CC810()
{
  v1 = v0;
  sub_100002B38(&qword_100132098, &qword_1000EEC00);
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

void sub_1000CC96C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_100002B38(&qword_100132098, &qword_1000EEC00);
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

void sub_1000CCBA4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_100002B38(&qword_100132098, &qword_1000EEC00);
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

void sub_1000CCE04(unint64_t a1)
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
        Hasher.init(_seed:)();

        String.hash(into:)();
        v10 = Hasher._finalize()();

        v11 = v10 & v7;
        if (v2 >= v9)
        {
          if (v11 < v9)
          {
            goto LABEL_5;
          }
        }

        else if (v11 >= v9)
        {
          goto LABEL_11;
        }

        if (v2 >= v11)
        {
LABEL_11:
          v12 = *(v3 + 48);
          v13 = (v12 + 16 * v2);
          v14 = (v12 + 16 * v6);
          if (v2 != v6 || v13 >= v14 + 1)
          {
            *v13 = *v14;
            v2 = v6;
          }
        }

LABEL_5:
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

  v15 = *(v3 + 16);
  v16 = __OFSUB__(v15, 1);
  v17 = v15 - 1;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v17;
    ++*(v3 + 36);
  }
}

Swift::Int sub_1000CCFC8(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_100002B38(&qword_1001320D0, &qword_1000EEC60);
    v2 = static _DictionaryStorage.convert(_:capacity:)();
    v19 = v2;
    __CocoaDictionary.makeIterator()();
    v3 = __CocoaDictionary.Iterator.next()();
    if (v3)
    {
      v4 = v3;
      sub_1000D1A60();
      v5 = v4;
      do
      {
        v17 = v5;
        swift_dynamicCast();
        type metadata accessor for ConnectionContext();
        swift_dynamicCast();
        v12 = *(v2 + 16);
        if (*(v2 + 24) <= v12)
        {
          sub_1000CDD1C(v12 + 1, 1);
        }

        v2 = v19;
        result = NSObject._rawHashValue(seed:)(*(v19 + 40));
        v7 = v19 + 64;
        v8 = -1 << *(v19 + 32);
        v9 = result & ~v8;
        v10 = v9 >> 6;
        if (((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6))) != 0)
        {
          v11 = __clz(__rbit64((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6)))) | v9 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v13 = 0;
          v14 = (63 - v8) >> 6;
          do
          {
            if (++v10 == v14 && (v13 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v15 = v10 == v14;
            if (v10 == v14)
            {
              v10 = 0;
            }

            v13 |= v15;
            v16 = *(v7 + 8 * v10);
          }

          while (v16 == -1);
          v11 = __clz(__rbit64(~v16)) + (v10 << 6);
        }

        *(v7 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
        *(*(v19 + 48) + 8 * v11) = v18;
        *(*(v19 + 56) + 8 * v11) = v17;
        ++*(v19 + 16);
        v5 = __CocoaDictionary.Iterator.next()();
      }

      while (v5);
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return &_swiftEmptyDictionarySingleton;
  }

  return v2;
}

void sub_1000CD1EC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_100002B38(&qword_1001320E8, &qword_1000EEC80);
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

void sub_1000CD494(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_100002B38(&qword_100132100, &unk_1000EECA0);
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

void sub_1000CD73C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for RemoteAlertRequest(0);
  v40 = *(v5 - 8);
  __chkstk_darwin(v5 - 8);
  v42 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  sub_100002B38(&qword_1001320F8, &qword_1000EEC98);
  v41 = v4;
  v8 = static _DictionaryStorage.resize(original:capacity:move:)();
  v9 = v8;
  if (*(v7 + 16))
  {
    v38 = v2;
    v39 = v7;
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v16 = v8 + 64;
    while (v14)
    {
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v22 = v19 | (v10 << 6);
      v23 = *(v7 + 56);
      v24 = (*(v7 + 48) + 16 * v22);
      v25 = *v24;
      v26 = v24[1];
      v27 = *(v40 + 72);
      v28 = v23 + v27 * v22;
      if (v41)
      {
        sub_10003F35C(v28, v42);
      }

      else
      {
        sub_10003F2F4(v28, v42);
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      v29 = Hasher._finalize()();
      v30 = -1 << *(v9 + 32);
      v31 = v29 & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v16 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v16 + 8 * v32);
          if (v36 != -1)
          {
            v17 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v17 = __clz(__rbit64((-1 << v31) & ~*(v16 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v18 = (*(v9 + 48) + 16 * v17);
      *v18 = v25;
      v18[1] = v26;
      sub_10003F35C(v42, *(v9 + 56) + v27 * v17);
      ++*(v9 + 16);
      v7 = v39;
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v10 >= v15)
      {
        break;
      }

      v21 = v11[v10];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v14 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v41 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_34;
    }

    v37 = 1 << *(v7 + 32);
    v3 = v38;
    if (v37 >= 64)
    {
      bzero(v11, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v37;
    }

    *(v7 + 16) = 0;
  }

LABEL_34:
  *v3 = v9;
}

void sub_1000CDA78(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_100002B38(&qword_100132128, &qword_1000EEDA0);
  v36 = v4;
  v6 = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = v6;
  if (*(v5 + 16))
  {
    v35 = v5;
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
      if ((v36 & 1) == 0)
      {

        v25 = v24;
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      v26 = Hasher._finalize()();
      v27 = -1 << *(v7 + 32);
      v28 = v26 & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v14 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v14 + 8 * v29);
          if (v33 != -1)
          {
            v15 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v28) & ~*(v14 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v35;
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

    if ((v36 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v2;
    if (v34 >= 64)
    {
      bzero(v9, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
}

void sub_1000CDD1C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_100002B38(&qword_1001320D0, &qword_1000EEC60);
  v6 = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = v6;
  if (*(v5 + 16))
  {
    v32 = v2;
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
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((v4 & 1) == 0)
      {
        v22 = v20;
      }

      v23 = NSObject._rawHashValue(seed:)(*(v7 + 40));
      v24 = -1 << *(v7 + 32);
      v25 = v23 & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v14 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v14 + 8 * v26);
          if (v30 != -1)
          {
            v15 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v25) & ~*(v14 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
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

    if ((v4 & 1) == 0)
    {

      v3 = v32;
      goto LABEL_33;
    }

    v31 = 1 << *(v5 + 32);
    v3 = v32;
    if (v31 >= 64)
    {
      bzero((v5 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v31;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
}

void sub_1000CDF8C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v6 = a2;
  v7 = *v4;
  sub_100002B38(a3, a4);
  v37 = v6;
  v8 = static _DictionaryStorage.resize(original:capacity:move:)();
  v9 = v8;
  if (*(v7 + 16))
  {
    v36 = v7;
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v16 = v8 + 64;
    while (v14)
    {
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v22 = v19 | (v10 << 6);
      v23 = (*(v7 + 48) + 16 * v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = *(*(v7 + 56) + 8 * v22);
      if ((v37 & 1) == 0)
      {
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      v27 = Hasher._finalize()();
      v28 = -1 << *(v9 + 32);
      v29 = v27 & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v16 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v16 + 8 * v30);
          if (v34 != -1)
          {
            v17 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v17 = __clz(__rbit64((-1 << v29) & ~*(v16 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v18 = (*(v9 + 48) + 16 * v17);
      *v18 = v24;
      v18[1] = v25;
      *(*(v9 + 56) + 8 * v17) = v26;
      ++*(v9 + 16);
      v7 = v36;
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v10 >= v15)
      {
        break;
      }

      v21 = v11[v10];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v14 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v37 & 1) == 0)
    {

      v5 = v4;
      goto LABEL_33;
    }

    v35 = 1 << *(v7 + 32);
    v5 = v4;
    if (v35 >= 64)
    {
      bzero(v11, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v35;
    }

    *(v7 + 16) = 0;
  }

LABEL_33:
  *v5 = v9;
}

void sub_1000CE22C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_100002B38(&qword_1001320C8, &qword_1000EEC58);
  v34 = v4;
  v6 = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = v6;
  if (*(v5 + 16))
  {
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
      v24 = (*(v5 + 56) + 32 * v20);
      if (v34)
      {
        sub_1000D1A50(v24, v35);
      }

      else
      {
        sub_1000BA7A0(v24, v35);
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

LABEL_36:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      sub_1000D1A50(v35, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_36;
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

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v2;
    if (v33 >= 64)
    {
      bzero((v5 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
}

uint64_t sub_1000CE4E4(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1000C547C(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_1000CD494(v16, a4 & 1);
      v11 = sub_1000C547C(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_1000CF1E4();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a1;

    return swift_unknownObjectRelease();
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v23 = (v21[6] + 16 * v11);
  *v23 = a2;
  v23[1] = a3;
  *(v21[7] + 8 * v11) = a1;
  v24 = v21[2];
  v15 = __OFADD__(v24, 1);
  v25 = v24 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v25;
}

uint64_t sub_1000CE660(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1000C547C(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_1000CD1EC(v16, a4 & 1);
      v11 = sub_1000C547C(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_1000CF074();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a1;
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v23 = (v21[6] + 16 * v11);
  *v23 = a2;
  v23[1] = a3;
  *(v21[7] + 8 * v11) = a1;
  v24 = v21[2];
  v15 = __OFADD__(v24, 1);
  v25 = v24 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v25;
}

uint64_t sub_1000CE7DC(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v12 = sub_1000C547C(a2, a3);
  v13 = v10[2];
  v14 = (v11 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_17;
  }

  v16 = v11;
  v17 = v10[3];
  if (v17 < v15 || (a4 & 1) == 0)
  {
    if (v17 >= v15 && (a4 & 1) == 0)
    {
      sub_1000CF354();
      goto LABEL_7;
    }

    sub_1000CD73C(v15, a4 & 1);
    v22 = sub_1000C547C(a2, a3);
    if ((v16 & 1) == (v23 & 1))
    {
      v12 = v22;
      v18 = *v5;
      if (v16)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_17:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_7:
  v18 = *v5;
  if (v16)
  {
LABEL_8:
    v19 = v18[7];
    v20 = v19 + *(*(type metadata accessor for RemoteAlertRequest(0) - 8) + 72) * v12;

    return sub_1000D1AAC(a1, v20);
  }

LABEL_13:
  sub_1000CEF70(v12, a2, a3, a1, v18);
}

uint64_t sub_1000CE954(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1000C547C(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_1000CDA78(v16, a4 & 1);
      v11 = sub_1000C547C(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return _objc_release_x1();
      }
    }

    else
    {
      v19 = v11;
      sub_1000CF598();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a1;

    return _objc_release_x1();
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v22 = (v21[6] + 16 * v11);
  *v22 = a2;
  v22[1] = a3;
  *(v21[7] + 8 * v11) = a1;
  v23 = v21[2];
  v15 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v24;
}

void sub_1000CEACC(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_1000C55E0(a2);
  v10 = *(v7 + 16);
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v14 = v9;
  v15 = *(v7 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 < v13 || (a3 & 1) != 0)
    {
      sub_1000CDD1C(v13, a3 & 1);
      v8 = sub_1000C55E0(a2);
      if ((v14 & 1) != (v17 & 1))
      {
LABEL_18:
        sub_1000D1A60();
        KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
_objc_retain_x1:
        _objc_retain_x1();
        return;
      }
    }

    else
    {
      v16 = v8;
      sub_1000CF704();
      v8 = v16;
    }
  }

  v18 = *v4;
  if ((v14 & 1) == 0)
  {
    v18[(v8 >> 6) + 8] |= 1 << v8;
    *(v18[6] + 8 * v8) = a2;
    *(v18[7] + 8 * v8) = a1;
    v19 = v18[2];
    v12 = __OFADD__(v19, 1);
    v20 = v19 + 1;
    if (!v12)
    {
      v18[2] = v20;

      goto _objc_retain_x1;
    }

    goto LABEL_17;
  }

  *(v18[7] + 8 * v8) = a1;
}

void sub_1000CEC38(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5, uint64_t *a6)
{
  v9 = v6;
  v14 = *v6;
  v15 = sub_1000C547C(a2, a3);
  v17 = *(v14 + 16);
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
    __break(1u);
    goto LABEL_17;
  }

  v21 = v16;
  v22 = *(v14 + 24);
  if (v22 < v20 || (a4 & 1) == 0)
  {
    if (v22 < v20 || (a4 & 1) != 0)
    {
      sub_1000CDF8C(v20, a4 & 1, a5, a6);
      v15 = sub_1000C547C(a2, a3);
      if ((v21 & 1) != (v24 & 1))
      {
LABEL_18:
        KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return;
      }
    }

    else
    {
      v23 = v15;
      sub_1000CF87C(a5, a6);
      v15 = v23;
    }
  }

  v25 = *v9;
  if (v21)
  {
    *(v25[7] + 8 * v15) = a1;

    return;
  }

  v25[(v15 >> 6) + 8] |= 1 << v15;
  v26 = (v25[6] + 16 * v15);
  *v26 = a2;
  v26[1] = a3;
  *(v25[7] + 8 * v15) = a1;
  v27 = v25[2];
  v19 = __OFADD__(v27, 1);
  v28 = v27 + 1;
  if (v19)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v25[2] = v28;
}

_OWORD *sub_1000CEDD8(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1000C547C(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_1000CF9DC();
      v11 = v19;
      goto LABEL_8;
    }

    sub_1000CE22C(v16, a4 & 1);
    v11 = sub_1000C547C(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    v22 = (v21[7] + 32 * v11);
    sub_10002E6CC(v22);

    return sub_1000D1A50(a1, v22);
  }

  else
  {
    sub_1000CF008(v11, a2, a3, a1, v21);
  }
}

unint64_t sub_1000CEF28(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  *(a5[7] + 8 * result) = a4;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

uint64_t sub_1000CEF70(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v8 = (a5[6] + 16 * a1);
  *v8 = a2;
  v8[1] = a3;
  v9 = a5[7];
  v10 = type metadata accessor for RemoteAlertRequest(0);
  result = sub_10003F35C(a4, v9 + *(*(v10 - 8) + 72) * a1);
  v12 = a5[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v14;
  }

  return result;
}

_OWORD *sub_1000CF008(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_1000D1A50(a4, (a5[7] + 32 * a1));
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

void sub_1000CF074()
{
  v1 = v0;
  sub_100002B38(&qword_1001320E8, &qword_1000EEC80);
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

void sub_1000CF1E4()
{
  v1 = v0;
  sub_100002B38(&qword_100132100, &unk_1000EECA0);
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

void sub_1000CF354()
{
  v1 = v0;
  v2 = type metadata accessor for RemoteAlertRequest(0);
  v31 = *(v2 - 8);
  __chkstk_darwin(v2 - 8);
  v30 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100002B38(&qword_1001320F8, &qword_1000EEC98);
  v4 = *v0;
  v5 = static _DictionaryStorage.copy(original:)();
  v6 = v5;
  if (*(v4 + 16))
  {
    v29 = v1;
    v7 = (v5 + 64);
    v8 = v4 + 64;
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || v7 >= v8 + 8 * v9)
    {
      memmove(v7, (v4 + 64), 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v32 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = *(v4 + 64);
    v14 = -1;
    if (v12 < 64)
    {
      v14 = ~(-1 << v12);
    }

    v15 = v14 & v13;
    v16 = (v12 + 63) >> 6;
    if ((v14 & v13) != 0)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v15 &= v15 - 1;
LABEL_14:
        v20 = v17 | (v10 << 6);
        v21 = 16 * v20;
        v22 = (*(v4 + 48) + 16 * v20);
        v23 = *v22;
        v24 = v22[1];
        v25 = v30;
        v26 = *(v31 + 72) * v20;
        sub_10003F2F4(*(v4 + 56) + v26, v30);
        v27 = v32;
        v28 = (*(v32 + 48) + v21);
        *v28 = v23;
        v28[1] = v24;
        sub_10003F35C(v25, *(v27 + 56) + v26);
      }

      while (v15);
    }

    v18 = v10;
    while (1)
    {
      v10 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v10 >= v16)
      {

        v1 = v29;
        v6 = v32;
        goto LABEL_18;
      }

      v19 = *(v8 + 8 * v10);
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
    *v1 = v6;
  }
}

void sub_1000CF598()
{
  v1 = v0;
  sub_100002B38(&qword_100132128, &qword_1000EEDA0);
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

        v22 = v20;
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

void sub_1000CF704()
{
  v1 = v0;
  sub_100002B38(&qword_1001320D0, &qword_1000EEC60);
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
        v18 = *(*(v2 + 48) + 8 * v17);
        v19 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        *(*(v4 + 56) + 8 * v17) = v19;
        v20 = v18;
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

void sub_1000CF87C(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  sub_100002B38(a1, a2);
  v4 = *v2;
  v5 = static _DictionaryStorage.copy(original:)();
  v6 = v5;
  if (*(v4 + 16))
  {
    v7 = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || v7 >= v4 + 64 + 8 * v8)
    {
      memmove(v7, (v4 + 64), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 64);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        v19 = v16 | (v10 << 6);
        v20 = (*(v4 + 48) + 16 * v19);
        v21 = v20[1];
        v22 = *(*(v4 + 56) + 8 * v19);
        v23 = (*(v6 + 48) + 16 * v19);
        *v23 = *v20;
        v23[1] = v21;
        *(*(v6 + 56) + 8 * v19) = v22;
      }

      while (v14);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 64 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }
}

void sub_1000CF9DC()
{
  v1 = v0;
  sub_100002B38(&qword_1001320C8, &qword_1000EEC58);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
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
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 32 * v17;
        sub_1000BA7A0(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_1000D1A50(v25, (*(v4 + 56) + v22));
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

        v1 = v24;
        goto LABEL_21;
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

LABEL_21:
    *v1 = v4;
  }
}

uint64_t sub_1000CFB80(void *a1, uint64_t a2, uint64_t a3)
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

    sub_1000CFCD0(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

void sub_1000CFCD0(uint64_t a1, uint64_t a2, unint64_t a3, char a4)
{
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_1000CCBA4(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      sub_1000CC810();
      goto LABEL_16;
    }

    sub_1000CC96C(v8 + 1);
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
      v15 = *v14 == a1 && v14[1] == a2;
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
  *v17 = a1;
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

void sub_1000CFE50(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v82 = a3;
  v81 = a2;
  v8 = sub_100002B38(&qword_10012DC30, &qword_1000EEC90);
  __chkstk_darwin(v8 - 8);
  v10 = v76 - v9;
  v11 = sub_100002B38(&unk_100130F10, &qword_1000EA660);
  __chkstk_darwin(v11 - 8);
  v80 = v76 - v12;
  v13 = type metadata accessor for RemoteAlertRequest(0);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = v76 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = v76 - v18;
  __chkstk_darwin(v20);
  v22 = v76 - v21;
  v89 = a4;
  v90 = a5;
  v23 = sub_100012854(v88);
  (*(*(a4 - 8) + 16))(v23, a1, a4);
  v24 = v89;
  v25 = v90;
  sub_10002D754(v88, v89);
  v83 = (*(v25 + 8))(v24, v25);
  if (!v26)
  {
    goto LABEL_13;
  }

  v27 = v26;
  v79 = v16;
  if (qword_10012CC18 != -1)
  {
    swift_once();
  }

  v28 = type metadata accessor for Logger();
  v29 = sub_100011F80(v28, qword_100135C88);
  sub_10002E8A8(v88, v85);

  v76[1] = v29;
  v30 = Logger.logObject.getter();
  v31 = static os_log_type_t.info.getter();

  v32 = os_log_type_enabled(v30, v31);
  v76[0] = v10;
  v78 = v13;
  v77 = v14;
  if (v32)
  {
    v33 = swift_slowAlloc();
    v84[0] = swift_slowAlloc();
    *v33 = 136315394;
    *(v33 + 4) = sub_1000BA5C8(v83, v27, v84);
    *(v33 + 12) = 2080;
    v35 = v86;
    v34 = v87;
    sub_10002D754(v85, v86);
    v36 = (*(v34 + 16))(v35, v34);
    v38 = v37;
    sub_10002E6CC(v85);
    v39 = sub_1000BA5C8(v36, v38, v84);

    *(v33 + 14) = v39;
    _os_log_impl(&_mh_execute_header, v30, v31, "Finding completed request for token: %s, contextID: %s", v33, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    sub_10002E6CC(v85);
  }

  v40 = v82;
  swift_beginAccess();
  v41 = *(v40 + 112);
  if (!*(v41 + 16))
  {
    goto LABEL_12;
  }

  v42 = sub_1000C547C(v83, v27);
  if ((v43 & 1) == 0)
  {

LABEL_12:

LABEL_13:
    sub_10002E6CC(v88);
    return;
  }

  v44 = *(*(v41 + 56) + 8 * v42);

  __chkstk_darwin(v45);
  v76[-2] = v88;
  v46 = sub_10002B934(sub_10002D798, &v76[-4], v44);
  v48 = v47;

  if (v48)
  {
    goto LABEL_12;
  }

  v49 = sub_1000C7BE8(v85);
  v50 = sub_10002B860(v84, v83, v27);
  if (!*v51)
  {
    (v50)(v84, 0);

    (v49)(v85, 0);
    goto LABEL_13;
  }

  sub_10002BA20(v46, v19);
  (v50)(v84, 0);
  (v49)(v85, 0);
  sub_10003F35C(v19, v22);

  v52 = Logger.logObject.getter();
  v53 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v52, v53))
  {
    v54 = swift_slowAlloc();
    v55 = swift_slowAlloc();
    v85[0] = v55;
    *v54 = 136315138;
    *(v54 + 4) = sub_1000BA5C8(v83, v27, v85);
    _os_log_impl(&_mh_execute_header, v52, v53, "Removing completed request for token: %s", v54, 0xCu);
    sub_10002E6CC(v55);
  }

  v56 = v78;
  v57 = v77;
  v58 = v79;
  v59 = &v22[*(v78 + 32)];
  v60 = v82;
  if (*v59)
  {
    (*v59)();
  }

  v61 = *(v60 + 112);
  if (!*(v61 + 16))
  {
LABEL_26:
    if (v81)
    {
      v66 = type metadata accessor for TaskPriority();
      v67 = v80;
      (*(*(v66 - 8) + 56))(v80, 1, 1, v66);
      v68 = swift_allocObject();
      v68[2] = 0;
      v68[3] = 0;
      v68[4] = v83;
      v68[5] = v27;
      sub_100014BBC(0, 0, v67, &unk_1000E9DC0, v68);

LABEL_29:
      sub_10002D820(v22);
      goto LABEL_13;
    }

LABEL_28:

    goto LABEL_29;
  }

  v62 = sub_1000C547C(v83, v27);
  if ((v63 & 1) == 0 || (v64 = *(*(v61 + 56) + 8 * v62), , , !*(v64 + 16)))
  {

    goto LABEL_26;
  }

  v65 = (*(v57 + 80) + 32) & ~*(v57 + 80);
  sub_10003F2F4(v64 + v65, v58);

  if (sub_1000D0750(v58, 0, 0, 0))
  {
    sub_10002D820(v58);
    goto LABEL_28;
  }

  v69 = sub_1000C7BE8(v85);
  v70 = sub_10002B860(v84, v83, v27);
  v72 = *v71;
  if (!*v71)
  {
    (v70)(v84, 0);

    (v69)(v85, 0);
    v75 = 1;
    v74 = v76[0];
    goto LABEL_34;
  }

  if (*(v72 + 16))
  {
    v73 = v72 + v65;
    v74 = v76[0];
    sub_10003F2F4(v73, v76[0]);
    sub_10002E60C(0, 1);
    (v70)(v84, 0);

    (v69)(v85, 0);
    v75 = 0;
LABEL_34:
    sub_10002D820(v79);
    sub_10002D820(v22);
    (*(v57 + 56))(v74, v75, 1, v56);
    sub_100005688(v74, &qword_10012DC30, &qword_1000EEC90);
    goto LABEL_13;
  }

  __break(1u);
}

uint64_t sub_1000D0750(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v110 = a3;
  v7 = sub_100002B38(&unk_100130F10, &qword_1000EA660);
  __chkstk_darwin(v7 - 8);
  v9 = &v96 - v8;
  v10 = sub_100002B38(&qword_1001320A8, &unk_1000EEC18);
  __chkstk_darwin(v10 - 8);
  v107 = &v96 - v11;
  v12 = type metadata accessor for GameOverlayUIConfig.OverlayStyle();
  v109 = *(v12 - 8);
  __chkstk_darwin(v12);
  v108 = &v96 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v96 - v15;
  v17 = type metadata accessor for RemoteAlertRequest(0);
  __chkstk_darwin(v17);
  v19 = &v96 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *(a1 + *(v20 + 24));
  v22 = *(v21 + 16);
  if (!v22)
  {
    goto LABEL_9;
  }

  v105 = v16;
  v23 = v22;
  if ((sub_1000E0268() & 1) == 0)
  {

LABEL_9:
    if (qword_10012CC18 != -1)
    {
      swift_once();
    }

    v41 = type metadata accessor for Logger();
    sub_100011F80(v41, qword_100135C88);
    v42 = Logger.logObject.getter();
    v43 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      *v44 = 0;
      _os_log_impl(&_mh_execute_header, v42, v43, "Cannot present remote alert because the client process state is invalid.", v44, 2u);
    }

    return 0;
  }

  v104 = v12;
  v106 = v21;
  result = [objc_opt_self() identityOfCurrentProcess];
  if (result)
  {
    v25 = result;
    v103 = v23;
    v100 = v9;
    v101 = a2;
    if (qword_10012CC18 != -1)
    {
      swift_once();
    }

    v26 = type metadata accessor for Logger();
    v27 = sub_100011F80(v26, qword_100135C88);
    sub_10003F2F4(a1, v19);
    v28 = v25;
    v102 = v27;
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v98 = swift_slowAlloc();
      v99 = swift_slowAlloc();
      v113[0] = v99;
      *v31 = 136315394;
      v97 = v29;
      v32 = GameOverlayUIConfig.ServiceKind.rawValue.getter();
      v33 = v28;
      v34 = a4;
      v36 = v35;
      sub_10002D820(v19);
      v37 = sub_1000BA5C8(v32, v36, v113);
      a4 = v34;
      v28 = v33;

      *(v31 + 4) = v37;
      *(v31 + 12) = 2112;
      *(v31 + 14) = v33;
      v38 = v98;
      *v98 = v25;
      v39 = v33;
      v40 = v97;
      _os_log_impl(&_mh_execute_header, v97, v30, "Presenting remoteAlert for %s from %@", v31, 0x16u);
      sub_100005688(v38, &qword_100131110, &unk_1000EC870);

      sub_10002E6CC(v99);
    }

    else
    {

      sub_10002D820(v19);
    }

    v45 = v106;
    v46 = v104;
    v47 = objc_allocWithZone(SBSRemoteAlertDefinition);
    v48 = v28;
    v49 = String._bridgeToObjectiveC()();

    v50 = [v47 initWithSceneProvidingProcess:v48 configurationIdentifier:v49];

    [v50 setSupportsMultipleDisplayPresentations:1];
    v51 = [objc_allocWithZone(SBSRemoteAlertConfigurationContext) init];
    v52 = [objc_allocWithZone(SBSRemoteAlertActivationContext) init];
    v53 = *(v45 + 16);
    if (v53)
    {
      swift_beginAccess();
      sub_1000035B4(v45 + 64, v113, &unk_100131120, &unk_1000EAAF0);
      v99 = v48;
      v98 = v53;
      if (v113[3])
      {
        v54 = v53;
        sub_100002B38(&qword_10012E0C0, &qword_1000EA820);
        type metadata accessor for RemoteAlertGameModeBannerContext(0);
        if (swift_dynamicCast())
        {
          v97 = v52;
          v96 = v50;
          v55 = [*(v111 + 32) bundleIdentifier];
          if (!v55)
          {
            static String._unconditionallyBridgeFromObjectiveC(_:)();
            v55 = String._bridgeToObjectiveC()();
          }

          v56 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v58 = v57;
          v59 = Logger.logObject.getter();
          v60 = static os_log_type_t.info.getter();
          if (os_log_type_enabled(v59, v60))
          {
            v61 = swift_slowAlloc();
            v102 = a4;
            v62 = v61;
            v63 = v51;
            v64 = swift_slowAlloc();
            v113[0] = v64;
            *v62 = 136315138;
            v65 = sub_1000BA5C8(v56, v58, v113);

            *(v62 + 4) = v65;
            _os_log_impl(&_mh_execute_header, v59, v60, "Game Mode Banner Remote alert using presentation target for bundle Id: %s", v62, 0xCu);
            sub_10002E6CC(v64);
            v51 = v63;
            v46 = v104;

            a4 = v102;
          }

          else
          {
          }

          v80 = [objc_allocWithZone(LSApplicationIdentity) initWithBundleIdentifier:v55 URL:0 personaUniqueString:0 personaType:4];
          v81 = [objc_opt_self() predicateForLaunchingApplicationIdentity:v80];

          v76 = v81;
          v50 = v96;
          v52 = v97;
LABEL_36:
          v82 = [objc_allocWithZone(SBSRemoteAlertPresentationTarget) initWithTargetPredicate:v76];

          [v82 setShouldDismissOnUILock:1];

          v83 = v107;
          GameOverlayUIConfig.OverlayStyle.init(rawValue:)();
          v84 = v109;
          if ((*(v109 + 48))(v83, 1, v46) == 1)
          {
            sub_100005688(v83, &qword_1001320A8, &unk_1000EEC18);
          }

          else
          {
            v97 = v52;
            v104 = v51;
            (*(v84 + 32))(v105, v83, v46);
            (*(v84 + 104))(v108, enum case for GameOverlayUIConfig.OverlayStyle.fullScreen(_:), v46);
            sub_1000D3DCC(&qword_1001320B0, 255, &type metadata accessor for GameOverlayUIConfig.OverlayStyle, &protocol conformance descriptor for GameOverlayUIConfig.OverlayStyle);
            dispatch thunk of RawRepresentable.rawValue.getter();
            dispatch thunk of RawRepresentable.rawValue.getter();
            if (v113[0] == v111 && v113[1] == v112)
            {
              v85 = v50;
              v86 = 1;
            }

            else
            {
              v85 = v50;
              v86 = _stringCompareWithSmolCheck(_:_:expecting:)();
            }

            v87 = *(v84 + 8);
            v87(v108, v46);

            if (v86)
            {
              [v82 setShouldDismissInSwitcher:1];
              [v82 setRequiresFullscreenPresentation:1];
              v87(v105, v46);
              v50 = v85;
              v51 = v104;
              v52 = v97;
LABEL_46:
              [v52 setPresentationTarget:v82];
              v88 = type metadata accessor for TaskPriority();
              v89 = v100;
              (*(*(v88 - 8) + 56))(v100, 1, 1, v88);
              type metadata accessor for MainActor();

              v90 = v52;
              v91 = v50;
              v92 = v51;
              v93 = v106;

              v94 = static MainActor.shared.getter();
              v95 = swift_allocObject();
              *(v95 + 16) = v94;
              *(v95 + 24) = &protocol witness table for MainActor;
              *(v95 + 32) = v93;
              *(v95 + 40) = v101 & 1;
              *(v95 + 48) = v110;
              *(v95 + 56) = a4;
              *(v95 + 64) = v90;
              *(v95 + 72) = v91;
              *(v95 + 80) = v92;
              sub_100014BBC(0, 0, v89, &unk_1000EEC30, v95);

              return 1;
            }

            v87(v105, v46);
            v50 = v85;
            v51 = v104;
            v52 = v97;
          }

          [v82 setShouldDismissInSwitcher:0];
          [v52 setPreferredSceneDeactivationReason:0];
          goto LABEL_46;
        }
      }

      else
      {
        v69 = v53;
        sub_100005688(v113, &unk_100131120, &unk_1000EAAF0);
      }

      v70 = v53;
      v71 = Logger.logObject.getter();
      v72 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v71, v72))
      {
        v73 = swift_slowAlloc();
        *v73 = 67109120;
        *(v73 + 4) = [v70 pid];

        _os_log_impl(&_mh_execute_header, v71, v72, "Remote alert using presentation target for pid: %d", v73, 8u);
      }

      else
      {

        v71 = v70;
      }

      v74 = [objc_opt_self() processHandleForAuditToken:v70];
      v75 = [objc_opt_self() predicateForProcess:v74];
      v76 = v75;
      if (*(v45 + 152))
      {
        v77 = v75;

        v78 = String._bridgeToObjectiveC()();
      }

      else
      {
        v79 = v75;
        v78 = 0;
      }

      [v76 setScenePersistentIdentifier:v78];

      goto LABEL_36;
    }

    v66 = Logger.logObject.getter();
    v67 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v66, v67))
    {
      v68 = swift_slowAlloc();
      *v68 = 0;
      _os_log_impl(&_mh_execute_header, v66, v67, "Cannot present remote alert because the client token is invalid.", v68, 2u);
    }

    return 0;
  }

  __break(1u);
  return result;
}

uint64_t sub_1000D15BC()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1000D161C(uint64_t a1)
{
  v4 = *(v1 + 24);
  v12 = *(v1 + 16);
  v5 = *(v1 + 32);
  v6 = *(v1 + 40);
  v7 = *(v1 + 48);
  v8 = *(v1 + 56);
  v9 = *(v1 + 64);
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_100014BAC;

  return sub_1000C8F3C(a1, v12, v4, v5, v6, v7, v8, v9);
}

unint64_t sub_1000D1714(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100002B38(&qword_100132100, &unk_1000EECA0);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      swift_unknownObjectRetain();
      result = sub_1000C547C(v5, v6);
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

unint64_t sub_1000D1818(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100002B38(&qword_1001320C8, &qword_1000EEC58);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_1000035B4(v4, &v13, &qword_1001320C0, &qword_1000EEC40);
      v5 = v13;
      v6 = v14;
      result = sub_1000C547C(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_1000D1A50(&v15, (v3[7] + 32 * result));
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

uint64_t sub_1000D1948()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1000D1990(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100014BAC;

  return sub_1000C9790(a1, v4, v5, v7, v6);
}

_OWORD *sub_1000D1A50(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

unint64_t sub_1000D1A60()
{
  result = qword_100131E98;
  if (!qword_100131E98)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100131E98);
  }

  return result;
}

uint64_t sub_1000D1AAC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RemoteAlertRequest(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000D1B10()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1000D1B58()
{
  v1 = type metadata accessor for RemoteAlertRequest(0);
  v2 = (*(*(v1 - 8) + 80) + 33) & ~*(*(v1 - 8) + 80);
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

uint64_t sub_1000D1CA8(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for RemoteAlertRequest(0) - 8);
  v6 = (*(v5 + 80) + 33) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v1 + 16);
  v9 = *(v1 + 24);
  v10 = *(v1 + 32);
  v11 = *(v1 + v7);
  v12 = *(v1 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8));
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_100011720;

  return sub_1000CB110(a1, v8, v9, v10, v1 + v6, v11, v12);
}

uint64_t sub_1000D1E0C(uint64_t a1, uint64_t a2)
{
  v3[70] = v2;
  v3[69] = a2;
  v3[68] = a1;
  sub_100002B38(&qword_10012DC30, &qword_1000EEC90);
  v3[71] = swift_task_alloc();
  v4 = type metadata accessor for UUID();
  v3[72] = v4;
  v3[73] = *(v4 - 8);
  v3[74] = swift_task_alloc();
  sub_100002B38(&unk_100130F10, &qword_1000EA660);
  v3[75] = swift_task_alloc();
  v5 = type metadata accessor for AccessPointUseCase();
  v3[76] = v5;
  v3[77] = *(v5 - 8);
  v3[78] = swift_task_alloc();
  v3[79] = swift_task_alloc();
  v3[80] = swift_task_alloc();
  v3[81] = swift_task_alloc();

  return _swift_task_switch(sub_1000D1FC4, v2, 0);
}

uint64_t sub_1000D1FC4()
{
  v1 = [objc_allocWithZone(FBSSystemService) init];
  v2 = [v1 isPasscodeLockedOrBlocked];

  if (v2)
  {
    if (qword_10012CC18 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_100011F80(v3, qword_100135C88);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.info.getter();
    if (!os_log_type_enabled(v4, v5))
    {
      goto LABEL_19;
    }

    v6 = swift_slowAlloc();
    *v6 = 0;
    v7 = "Skipping Access Point request because device is locked or blocked.";
LABEL_18:
    _os_log_impl(&_mh_execute_header, v4, v5, v7, v6, 2u);

LABEL_19:

    v17 = *(v0 + 8);

    return v17();
  }

  v8 = *(v0 + 544);
  v9 = type metadata accessor for RemoteAlertRequest(0);
  *(v0 + 656) = v9;
  v10 = *(v8 + *(v9 + 24));
  *(v0 + 664) = v10;
  swift_beginAccess();
  sub_1000035B4(v10 + 64, v0 + 96, &unk_100131120, &unk_1000EAAF0);
  if (!*(v0 + 120))
  {
    sub_100005688(v0 + 96, &unk_100131120, &unk_1000EAAF0);
    goto LABEL_14;
  }

  *(v0 + 672) = sub_100002B38(&qword_10012E0C0, &qword_1000EA820);
  *(v0 + 680) = type metadata accessor for RemoteAlertAccessPointContext(0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_14:
    if (qword_10012CC18 != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    sub_100011F80(v16, qword_100135C88);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v4, v5))
    {
      goto LABEL_19;
    }

    v6 = swift_slowAlloc();
    *v6 = 0;
    v7 = "Access point request without a valid remote context or token.";
    goto LABEL_18;
  }

  v11 = *(v0 + 480);
  *(v0 + 688) = v11;
  swift_getKeyPath();
  *(v0 + 696) = OBJC_IVAR____TtC13GameOverlayUI29RemoteAlertAccessPointContext___observationRegistrar;
  *(v0 + 464) = v11;
  *(v0 + 704) = sub_1000D3DCC(&qword_10012CFC8, 255, type metadata accessor for RemoteAlertAccessPointContext, &unk_1000EE6AC);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v12 = *(v11 + 16);
  *(v0 + 712) = v12;
  v13 = *(v11 + 24);
  *(v0 + 720) = v13;
  if (!v13)
  {

    goto LABEL_14;
  }

  swift_getKeyPath();
  *(v0 + 456) = v11;

  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *(v0 + 792) = *(v11 + OBJC_IVAR____TtC13GameOverlayUI29RemoteAlertAccessPointContext__didReturnToForeground);
  v14 = swift_task_alloc();
  *(v0 + 728) = v14;
  *v14 = v0;
  v14[1] = sub_1000D2414;

  return sub_1000C9D6C(v12, v13);
}

uint64_t sub_1000D2414()
{
  v1 = *(*v0 + 560);

  return _swift_task_switch(sub_1000D2524, v1, 0);
}

uint64_t sub_1000D2524()
{
  v1 = *(*(v0 + 664) + 16);
  *(v0 + 736) = v1;
  if (v1)
  {
    v2 = v1;
    if (sub_1000E0268())
    {
      if (*(v0 + 792))
      {
        v3 = *(v0 + 664);
        v4 = *(v3 + 144);
        v5 = *(v3 + 152);

        v6 = sub_1000DFEF0(2u, v4, v5);
        v8 = v7;

        *(v0 + 752) = v6;
        *(v0 + 760) = v8;
        v9 = *(v3 + 144);
        v10 = *(v3 + 152);

        v11 = sub_1000DFEF0(1u, v9, v10);
        v13 = v12;

        *(v0 + 768) = v11;
        *(v0 + 776) = v13;
        if (qword_10012CC20 != -1)
        {
          swift_once();
        }

        v14 = qword_100135CA0;
        *(v0 + 784) = qword_100135CA0;
        v15 = sub_1000D2DD8;
      }

      else
      {
        if (qword_10012CC20 != -1)
        {
          swift_once();
        }

        v14 = qword_100135CA0;
        *(v0 + 744) = qword_100135CA0;
        v15 = sub_1000D281C;
      }

      return _swift_task_switch(v15, v14, 0);
    }
  }

  if (qword_10012CC18 != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  sub_100011F80(v16, qword_100135C88);
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&_mh_execute_header, v17, v18, "Access point request without a valid remote target.", v19, 2u);
  }

  v20 = *(v0 + 720);
  v21 = *(v0 + 712);

  sub_1000C6540(v21, v20);

  v22 = *(v0 + 8);

  return v22();
}

uint64_t sub_1000D281C()
{
  v1 = *(v0 + 744);
  swift_beginAccess();
  v2 = *(v1 + 112);
  if (*(v2 + 16))
  {
    v3 = *(v0 + 720);
    v4 = *(v0 + 712);

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
  v8 = *(v0 + 560);

  return _swift_task_switch(sub_1000D2930, v8, 0);
}

uint64_t sub_1000D2930()
{
  if (!v0[5])
  {
    sub_100005688((v0 + 2), &unk_100131120, &unk_1000EAAF0);
    goto LABEL_9;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_9:
    v17 = v0[83];
    v18 = *(v17 + 144);
    v19 = *(v17 + 152);

    v20 = sub_1000DFEF0(2u, v18, v19);
    v22 = v21;

    v0[94] = v20;
    v0[95] = v22;
    v23 = *(v17 + 144);
    v24 = *(v17 + 152);

    v25 = sub_1000DFEF0(1u, v23, v24);
    v27 = v26;

    v0[96] = v25;
    v0[97] = v27;
    if (qword_10012CC20 != -1)
    {
      swift_once();
    }

    v28 = qword_100135CA0;
    v0[98] = qword_100135CA0;

    return _swift_task_switch(sub_1000D2DD8, v28, 0);
  }

  v1 = v0[81];
  v2 = v0[80];
  v3 = v0[77];
  v4 = v0[76];
  v5 = v0[67];
  v6 = OBJC_IVAR____TtC13GameOverlayUI29RemoteAlertAccessPointContext_useCase;
  swift_beginAccess();
  (*(v3 + 16))(v1, v5 + v6, v4);
  v7 = enum case for AccessPointUseCase.welcomeBannerOnly(_:);
  v36 = *(v3 + 104);
  v36(v2, enum case for AccessPointUseCase.welcomeBannerOnly(_:), v4);
  sub_1000D3DCC(&qword_100132120, 255, &type metadata accessor for AccessPointUseCase, &protocol conformance descriptor for AccessPointUseCase);
  v8 = dispatch thunk of static Equatable.== infix(_:_:)();
  v9 = *(v3 + 8);
  v9(v2, v4);
  v9(v1, v4);
  if (v8 & 1) != 0 || (v10 = v5, v11 = v0[81], v12 = v0[76], v36(v11, v7, v12), v13 = dispatch thunk of static Equatable.== infix(_:_:)(), v9(v11, v12), (v13) || (v14 = v0[81], v15 = v0[76], v36(v14, enum case for AccessPointUseCase.welcomeBannerAndAccessPoint(_:), v15), v16 = dispatch thunk of static Equatable.== infix(_:_:)(), v9(v14, v15), (v16))
  {

    goto LABEL_9;
  }

  v29 = v0[92];
  v30 = v0[75];

  v31 = type metadata accessor for TaskPriority();
  (*(*(v31 - 8) + 56))(v30, 1, 1, v31);
  type metadata accessor for MainActor();

  v32 = static MainActor.shared.getter();
  v33 = swift_allocObject();
  v33[2] = v32;
  v33[3] = &protocol witness table for MainActor;
  v33[4] = v10;
  sub_100014BBC(0, 0, v30, &unk_1000EED70, v33);

  v34 = v0[1];

  return v34();
}

uint64_t sub_1000D2DD8()
{
  v1 = v0[98];
  swift_beginAccess();
  if (!*(*(v1 + 112) + 16))
  {
    goto LABEL_7;
  }

  v2 = v0[95];
  v3 = v0[94];

  sub_1000C547C(v3, v2);
  if ((v4 & 1) == 0)
  {

LABEL_7:

    goto LABEL_8;
  }

  Strong = swift_unknownObjectWeakLoadStrong();

  if (Strong)
  {
    v6 = v0[70];

    v7 = sub_1000D2EFC;
    v8 = v6;
    goto LABEL_9;
  }

LABEL_8:
  v8 = v0[98];
  v7 = sub_1000D3030;
LABEL_9:

  return _swift_task_switch(v7, v8, 0);
}

uint64_t sub_1000D2EFC()
{
  v1 = v0[86];
  swift_getKeyPath();
  v0[64] = v1;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v0[65] = v1;
  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  v5 = *(v1 + OBJC_IVAR____TtC13GameOverlayUI29RemoteAlertAccessPointContext__hideCount);
  v6 = __OFADD__(v5, 1);
  v7 = v5 + 1;
  if (v6)
  {
    __break(1u);
  }

  else
  {
    v8 = v0[86];
    *(v1 + OBJC_IVAR____TtC13GameOverlayUI29RemoteAlertAccessPointContext__hideCount) = v7;
    v0[66] = v8;
    swift_getKeyPath();
    ObservationRegistrar.didSet<A, B>(_:keyPath:)();

    v3 = v0[98];
    v2 = sub_1000D3030;
    v4 = 0;
  }

  return _swift_task_switch(v2, v3, v4);
}

uint64_t sub_1000D3030()
{
  if (!*(*(v0[98] + 112) + 16))
  {
    goto LABEL_7;
  }

  v1 = v0[97];
  v2 = v0[96];

  sub_1000C547C(v2, v1);
  if ((v3 & 1) == 0)
  {

LABEL_7:

    goto LABEL_8;
  }

  Strong = swift_unknownObjectWeakLoadStrong();

  if (Strong)
  {
    v5 = v0[70];

    v6 = sub_1000D3480;
    v7 = v5;
    goto LABEL_9;
  }

LABEL_8:
  v7 = v0[70];
  v6 = sub_1000D3140;
LABEL_9:

  return _swift_task_switch(v6, v7, 0);
}

uint64_t sub_1000D3140()
{
  if (*(v0 + 792))
  {
    goto LABEL_11;
  }

  v1 = *(*(v0 + 616) + 104);
  v1(*(v0 + 632), enum case for AccessPointUseCase.welcomeBannerOnly(_:), *(v0 + 608));
  sub_1000D3DCC(&qword_10012CFE8, 255, &type metadata accessor for AccessPointUseCase, &protocol conformance descriptor for AccessPointUseCase);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  if (*(v0 + 392) == *(v0 + 408) && *(v0 + 400) == *(v0 + 416))
  {
    v2 = 1;
  }

  else
  {
    v2 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  v3 = *(*(v0 + 616) + 8);
  v3(*(v0 + 632), *(v0 + 608));

  if (v2)
  {
    goto LABEL_11;
  }

  v1(*(v0 + 624), enum case for AccessPointUseCase.welcomeBannerAndAccessPoint(_:), *(v0 + 608));
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  v4 = *(v0 + 624);
  v5 = *(v0 + 608);
  if (*(v0 + 424) == *(v0 + 440) && *(v0 + 432) == *(v0 + 448))
  {
    v3(*(v0 + 624), *(v0 + 608));

LABEL_11:
    v7 = *(v0 + 720);
    v8 = *(v0 + 712);
    swift_beginAccess();
    sub_1000D447C(0, v8, v7);
    swift_endAccess();
    v9 = *(v0 + 736);
    sub_1000C7CA0(*(v0 + 544), 0, 0, 0);

    v10 = *(v0 + 8);

    return v10();
  }

  v6 = _stringCompareWithSmolCheck(_:_:expecting:)();
  v3(v4, v5);

  if (v6)
  {
    goto LABEL_11;
  }

  v12 = *(v0 + 784);

  return _swift_task_switch(sub_1000D3884, v12, 0);
}

uint64_t sub_1000D3480()
{
  v1 = *(v0 + 688);
  swift_getKeyPath();
  *(v0 + 488) = v1;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *(v0 + 496) = v1;
  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  v5 = *(v1 + OBJC_IVAR____TtC13GameOverlayUI29RemoteAlertAccessPointContext__hideCount);
  v6 = __OFADD__(v5, 1);
  v7 = v5 + 1;
  if (v6)
  {
    __break(1u);
    return _swift_task_switch(v2, v3, v4);
  }

  v8 = *(v0 + 688);
  *(v1 + OBJC_IVAR____TtC13GameOverlayUI29RemoteAlertAccessPointContext__hideCount) = v7;
  *(v0 + 504) = v8;
  swift_getKeyPath();
  ObservationRegistrar.didSet<A, B>(_:keyPath:)();

  if (*(v0 + 792))
  {
    goto LABEL_12;
  }

  v9 = *(*(v0 + 616) + 104);
  v9(*(v0 + 632), enum case for AccessPointUseCase.welcomeBannerOnly(_:), *(v0 + 608));
  sub_1000D3DCC(&qword_10012CFE8, 255, &type metadata accessor for AccessPointUseCase, &protocol conformance descriptor for AccessPointUseCase);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  if (*(v0 + 392) == *(v0 + 408) && *(v0 + 400) == *(v0 + 416))
  {
    v10 = 1;
  }

  else
  {
    v10 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  v11 = *(*(v0 + 616) + 8);
  v11(*(v0 + 632), *(v0 + 608));

  if (v10)
  {
    goto LABEL_12;
  }

  v9(*(v0 + 624), enum case for AccessPointUseCase.welcomeBannerAndAccessPoint(_:), *(v0 + 608));
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  v12 = *(v0 + 624);
  v13 = *(v0 + 608);
  if (*(v0 + 424) != *(v0 + 440) || *(v0 + 432) != *(v0 + 448))
  {
    v14 = _stringCompareWithSmolCheck(_:_:expecting:)();
    v11(v12, v13);

    if (v14)
    {
      goto LABEL_12;
    }

    v3 = *(v0 + 784);
    v2 = sub_1000D3884;
    v4 = 0;

    return _swift_task_switch(v2, v3, v4);
  }

  v11(*(v0 + 624), *(v0 + 608));

LABEL_12:
  v15 = *(v0 + 720);
  v16 = *(v0 + 712);
  swift_beginAccess();
  sub_1000D447C(0, v16, v15);
  swift_endAccess();
  v17 = *(v0 + 736);
  sub_1000C7CA0(*(v0 + 544), 0, 0, 0);

  v18 = *(v0 + 8);

  return v18();
}

uint64_t sub_1000D3884()
{
  v1 = *(*(v0 + 784) + 112);
  if (*(v1 + 16))
  {
    v2 = *(v0 + 720);
    v3 = *(v0 + 712);

    v4 = sub_1000C547C(v3, v2);
    if (v5)
    {
      v6 = *(*(v1 + 56) + 8 * v4);

      swift_beginAccess();
      sub_1000035B4(v6 + 32, v0 + 136, &unk_100131120, &unk_1000EAAF0);

      goto LABEL_6;
    }
  }

  *(v0 + 136) = 0u;
  *(v0 + 152) = 0u;
  *(v0 + 168) = 0;
LABEL_6:

  v7 = *(v0 + 560);

  return _swift_task_switch(sub_1000D3998, v7, 0);
}

uint64_t sub_1000D3998()
{
  if (!v0[20])
  {
    sub_100005688((v0 + 17), &unk_100131120, &unk_1000EAAF0);
    goto LABEL_12;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_12:
    v16 = v0[92];
    sub_1000C7CA0(v0[68], 0, 0, 0);

LABEL_13:

    goto LABEL_14;
  }

  v1 = v0[59];
  if (*(v1 + OBJC_IVAR____TtC13GameOverlayUI29RemoteAlertAccessPointContext_allowCoalescing) != 1)
  {

    goto LABEL_12;
  }

  if (qword_10012CC18 != -1)
  {
    v24 = v0[59];
    swift_once();
    v1 = v24;
  }

  v28 = v1;
  v2 = type metadata accessor for Logger();
  sub_100011F80(v2, qword_100135C88);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Attempting coalescing incoming request with existing banner.", v5, 2u);
  }

  v26 = v0[85];
  v27 = v0[83];
  v6 = v0[82];
  v7 = v0[74];
  v8 = v0[73];
  v9 = v0[72];
  v10 = v0[71];
  v11 = v0[68];

  UUID.init()();
  v25 = UUID.uuidString.getter();
  v13 = v12;
  (*(v8 + 8))(v7, v9);
  sub_10003F2F4(v11, v10);
  (*(*(v6 - 8) + 56))(v10, 0, 1, v6);
  swift_beginAccess();

  sub_1000D4574(v10, v25, v13);
  swift_endAccess();
  v0[10] = v26;
  v0[11] = &off_1001240E8;
  v0[7] = v28;
  swift_beginAccess();

  sub_10003EF48((v0 + 7), v27 + 104);
  swift_endAccess();
  v14 = sub_1000D0750(v11, 1, v25, v13);

  if (v14)
  {
    v15 = v0[92];

    goto LABEL_14;
  }

  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.info.getter();
  v21 = os_log_type_enabled(v19, v20);
  v22 = v0[92];
  if (v21)
  {
    v23 = swift_slowAlloc();
    *v23 = 0;
    _os_log_impl(&_mh_execute_header, v19, v20, "Failed coalescing incoming request with existing banner.", v23, 2u);

    goto LABEL_13;
  }

LABEL_14:

  v17 = v0[1];

  return v17();
}

uint64_t sub_1000D3DCC(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1000D3E14()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1000D3E54(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100014BAC;

  return sub_1000CA7A0(a1, v4, v5, v6);
}

id sub_1000D3F34(uint64_t a1)
{
  v2 = v1;
  v4 = *(a1 + 16);
  if (!v4)
  {
    goto LABEL_6;
  }

  sub_1000C547C(0xD000000000000015, 0x80000001000E8640);
  if ((v5 & 1) == 0)
  {
    v4 = 0;
LABEL_6:
    v7 = 0;
    goto LABEL_7;
  }

  swift_unknownObjectRetain();
  v6 = swift_dynamicCast();
  v4 = v24;
  v7 = v25;
  if (!v6)
  {
    v4 = 0;
    v7 = 0;
  }

LABEL_7:
  v8 = &v2[OBJC_IVAR____TtC13GameOverlayUI19PlayTogetherRequest_challengeDefinitionID];
  *v8 = v4;
  *(v8 + 1) = v7;
  v9 = *(a1 + 16);
  if (!v9)
  {
LABEL_12:
    v12 = 0;
    goto LABEL_13;
  }

  sub_1000C547C(0xD000000000000018, 0x80000001000E8660);
  if ((v10 & 1) == 0)
  {
    v9 = 0;
    goto LABEL_12;
  }

  swift_unknownObjectRetain();
  v11 = swift_dynamicCast();
  v9 = v24;
  v12 = v25;
  if (!v11)
  {
    v9 = 0;
    v12 = 0;
  }

LABEL_13:
  v13 = &v2[OBJC_IVAR____TtC13GameOverlayUI19PlayTogetherRequest_gameActivityDefinitionID];
  *v13 = v9;
  *(v13 + 1) = v12;
  if (!*(a1 + 16))
  {
    goto LABEL_17;
  }

  sub_1000C547C(0x47746E6572727563, 0xEB00000000656D61);
  if ((v14 & 1) == 0)
  {
    goto LABEL_17;
  }

  swift_unknownObjectRetain();
  objc_opt_self();
  v15 = swift_dynamicCastObjCClass();
  if (!v15)
  {
    swift_unknownObjectRelease();
LABEL_17:
    v15 = 0;
  }

  *&v2[OBJC_IVAR____TtC13GameOverlayUI19PlayTogetherRequest_currentGame] = v15;
  if (!*(a1 + 16))
  {
    goto LABEL_22;
  }

  sub_1000C547C(0x616C506C61636F6CLL, 0xEB00000000726579);
  if ((v16 & 1) == 0)
  {
    goto LABEL_22;
  }

  swift_unknownObjectRetain();
  objc_opt_self();
  v17 = swift_dynamicCastObjCClass();
  if (!v17)
  {
    swift_unknownObjectRelease();
LABEL_22:
    v17 = 0;
  }

  *&v2[OBJC_IVAR____TtC13GameOverlayUI19PlayTogetherRequest_localPlayer] = v17;
  if (*(a1 + 16) && (sub_1000C547C(0xD000000000000010, 0x80000001000E86D0), (v18 & 1) != 0))
  {
    swift_unknownObjectRetain();

    v19 = swift_dynamicCast();
    v20 = v24;
    v21 = v25;
    if (!v19)
    {
      v20 = 0;
      v21 = 0;
    }
  }

  else
  {

    v20 = 0;
    v21 = 0;
  }

  v22 = &v2[OBJC_IVAR____TtC13GameOverlayUI19PlayTogetherRequest_activityInstanceID];
  *v22 = v20;
  *(v22 + 1) = v21;
  v26.receiver = v2;
  v26.super_class = type metadata accessor for PlayTogetherRequest();
  return objc_msgSendSuper2(&v26, "init");
}

id sub_1000D423C(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for PlayTogetherRequest();
  return objc_msgSendSuper2(&v3, "dealloc");
}

double sub_1000D431C(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);

  return result;
}

uint64_t sub_1000D4360(uint64_t a1)
{
  v2 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v3 = __CocoaSet.startIndex.getter();
    v5 = v4;
    v6 = __CocoaSet.endIndex.getter();
    v8 = v7;
    v9 = static __CocoaSet.Index.== infix(_:_:)();
    sub_1000DF158(v6, v8, 1);
    if (v9)
    {
LABEL_3:
      sub_1000DF158(v3, v5, v2 != 0);
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

  sub_1000D91F0(v3, v5, v2 != 0, a1);
  v12 = v11;
  sub_1000DF158(v3, v5, v2 != 0);
  return v12;
}

uint64_t sub_1000D447C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v3;
    sub_1000CE660(a1, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v15;
  }

  else
  {
    v10 = sub_1000C547C(a2, a3);
    v12 = v11;

    if (v12)
    {
      v13 = swift_isUniquelyReferenced_nonNull_native();
      v14 = *v4;
      v16 = *v4;
      if (!v13)
      {
        sub_1000CF074();
        v14 = v16;
      }

      result = sub_10002C5A0(v10, v14);
      *v4 = v14;
    }
  }

  return result;
}

uint64_t sub_1000D4574(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_100002B38(&qword_10012DC30, &qword_1000EEC90);
  __chkstk_darwin(v7 - 8);
  v9 = &v17 - v8;
  v10 = type metadata accessor for RemoteAlertRequest(0);
  v11 = __chkstk_darwin(v10);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v14 + 48))(a1, 1, v11) == 1)
  {
    sub_100005688(a1, &qword_10012DC30, &qword_1000EEC90);
    sub_1000E0F14(a2, a3, v9);

    return sub_100005688(v9, &qword_10012DC30, &qword_1000EEC90);
  }

  else
  {
    sub_1000DFE10(a1, v13, type metadata accessor for RemoteAlertRequest);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;
    sub_1000CE7DC(v13, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v18;
  }

  return result;
}

uint64_t sub_1000D4748(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v3;
    sub_1000CE940(a1, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v15;
  }

  else
  {
    v10 = sub_1000C547C(a2, a3);
    v12 = v11;

    if (v12)
    {
      v13 = swift_isUniquelyReferenced_nonNull_native();
      v14 = *v4;
      v16 = *v4;
      if (!v13)
      {
        sub_1000CF584();
        v14 = v16;
      }

      result = sub_1000321E8(v10, v14);
      *v4 = v14;
    }
  }

  return result;
}

double sub_1000D4840(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);

  return result;
}

uint64_t sub_1000D48B8(uint64_t a1)
{
  v2 = sub_100002B38(&qword_100132550, &qword_1000EC170);
  __chkstk_darwin(v2 - 8);
  sub_1000035B4(a1, &v5 - v3, &qword_100132550, &qword_1000EC170);
  return EnvironmentValues.horizontalSizeClass.setter();
}

uint64_t sub_1000D4960@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1000DF30C(&qword_10012CFC8, type metadata accessor for RemoteAlertAccessPointContext, &unk_1000EE6AC);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = OBJC_IVAR____TtC13GameOverlayUI29RemoteAlertAccessPointContext__anchoring;
  swift_beginAccess();
  v5 = type metadata accessor for AccessPointAnchoring();
  return (*(*(v5 - 8) + 16))(a2, v3 + v4, v5);
}

uint64_t sub_1000D4A58(uint64_t a1)
{
  v2 = type metadata accessor for AccessPointAnchoring();
  v3 = __chkstk_darwin(v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v5, a1, v3);
  return sub_1000BCC80(v5);
}

void sub_1000D4B74(uint64_t *a1@<X0>, void *a3@<X4>, _BYTE *a4@<X8>)
{
  v6 = *a1;
  swift_getKeyPath();
  sub_1000DF30C(&qword_10012CFC8, type metadata accessor for RemoteAlertAccessPointContext, &unk_1000EE6AC);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a4 = *(v6 + *a3);
}

uint64_t sub_1000D4C50@<X0>(uint64_t *a2@<X8>)
{
  swift_getKeyPath();
  sub_1000DF30C(&qword_100131D80, type metadata accessor for RemoteAlertDashboardContext, &unk_1000EE690);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  result = swift_unknownObjectWeakLoadStrong();
  *a2 = result;
  return result;
}

double sub_1000D4CFC(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_1000DF30C(&qword_100131D80, type metadata accessor for RemoteAlertDashboardContext, &unk_1000EE690);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  return result;
}

uint64_t sub_1000D4DC8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1000DF30C(&unk_100132430, type metadata accessor for RemoteAlertGameModeBannerContext, &unk_1000EE674);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + 64);
  return swift_unknownObjectRetain();
}

double sub_1000D4E74(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_1000DF30C(&unk_100132430, type metadata accessor for RemoteAlertGameModeBannerContext, &unk_1000EE674);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  return result;
}

void sub_1000D4F40(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1000DF30C(&unk_100132430, type metadata accessor for RemoteAlertGameModeBannerContext, &unk_1000EE674);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + 72);
}

double sub_1000D4FE8(char *a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_1000DF30C(&unk_100132430, type metadata accessor for RemoteAlertGameModeBannerContext, &unk_1000EE674);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  return result;
}

void sub_1000D5268()
{
  v6.receiver = v0;
  v6.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v6, "viewDidLoad");
  v1 = [objc_opt_self() currentDevice];
  v2 = [v1 userInterfaceIdiom];

  if (!v2)
  {
    v3 = objc_opt_self();
    v4 = [v3 defaultCenter];
    [v4 addObserver:v0 selector:"controllerDidConnectOrDisconnect:" name:GCControllerDidConnectNotification object:0];

    v5 = [v3 defaultCenter];
    [v5 addObserver:v0 selector:"controllerDidConnectOrDisconnect:" name:GCControllerDidDisconnectNotification object:0];
  }
}

void sub_1000D5388(void *a1)
{
  v1 = a1;
  sub_1000D5268();
}

void sub_1000D53D0(char a1)
{
  v8.receiver = v1;
  v8.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v8, "viewWillDisappear:", a1 & 1);
  v3 = [objc_opt_self() currentDevice];
  v4 = [v3 userInterfaceIdiom];

  if (!v4)
  {
    v5 = objc_opt_self();
    v6 = [v5 defaultCenter];
    [v6 removeObserver:v1 name:GCControllerDidConnectNotification object:0];

    v7 = [v5 defaultCenter];
    [v7 removeObserver:v1 name:GCControllerDidDisconnectNotification object:0];
  }
}

void sub_1000D54E8(void *a1, uint64_t a2, char a3)
{
  v4 = a1;
  sub_1000D53D0(a3);
}

void sub_1000D553C(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_1000D97BC();
}

uint64_t sub_1000D559C(void *a1)
{
  v1 = a1;
  v2 = sub_1000D55D0();

  return v2;
}

uint64_t sub_1000D55D0()
{
  if (*(v0 + *((swift_isaMask & *v0) + qword_100135CE0 + 16)))
  {
    return 30;
  }

  v1 = [objc_opt_self() currentDevice];
  v2 = [v1 userInterfaceIdiom];

  if (v2)
  {
    return 30;
  }

  v4 = [objc_opt_self() current];
  if (!v4)
  {
    return 30;
  }

  v5 = v4;
  v6 = [v4 isAttachedToDevice];

  if ((v6 & 1) == 0)
  {
    return 30;
  }

  else
  {
    return 24;
  }
}

uint64_t sub_1000D56C8(uint64_t a1)
{
  v2 = v1;
  v4 = objc_allocWithZone(v1);
  v5 = sub_1000D97CC(a1);
  (*(*(*(v2 + qword_100135CE0) - 8) + 8))(a1);
  return v5;
}

void *sub_1000D578C(uint64_t a1, uint64_t a2)
{
  v4 = *((swift_isaMask & *v2) + qword_100135CE0);
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(a1);
  *(v2 + *(v7 + 16)) = 1;
  (*(v5 + 16))(&v13 - v8, v6);
  v9 = UIHostingController.init(coder:rootView:)();
  v10 = *(v5 + 8);
  v11 = v9;
  v10(a2, v4);
  if (v9)
  {
  }

  return v9;
}

id sub_1000D58D4(void *a1)
{
  ObjectType = swift_getObjectType();
  *(v1 + *((swift_isaMask & *v1) + qword_100135CE0 + 16)) = 1;
  v6.receiver = v1;
  v6.super_class = ObjectType;
  v4 = objc_msgSendSuper2(&v6, "initWithCoder:", a1);

  if (v4)
  {
  }

  return v4;
}

void sub_1000D59D4()
{
  v1 = v0;
  if (qword_10012CC18 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100011F80(v2, qword_100135C88);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Registering press gesture for handling controller back button", v5, 2u);
  }

  v6 = [objc_allocWithZone(UITapGestureRecognizer) initWithTarget:v1 action:"handleCancelGestureWithSender:"];
  sub_10003F788(0, &qword_100131140, NSNumber_ptr);
  v7 = v6;
  isa = Array._bridgeToObjectiveC()().super.isa;
  [v7 setAllowedTouchTypes:isa];

  sub_100002B38(&qword_1001317E8, &qword_1000EE1C0);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1000EE0F0;
  *(v9 + 32) = [objc_allocWithZone(NSNumber) initWithInteger:5];
  *(v9 + 40) = [objc_allocWithZone(NSNumber) initWithInteger:7];
  v10 = Array._bridgeToObjectiveC()().super.isa;

  [v7 setAllowedPressTypes:v10];

  [v1 addGestureRecognizer:v7];
  v11 = *&v1[OBJC_IVAR____TtC13GameOverlayUI17GameOverlayWindow_pressGestureRecognizer];
  *&v1[OBJC_IVAR____TtC13GameOverlayUI17GameOverlayWindow_pressGestureRecognizer] = v7;
}

id sub_1000D5C04()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  if (qword_10012CC18 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_100011F80(v3, qword_100135C88);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, v5, "Removing press gesture", v6, 2u);
  }

  v7 = OBJC_IVAR____TtC13GameOverlayUI17GameOverlayWindow_pressGestureRecognizer;
  if (*&v1[OBJC_IVAR____TtC13GameOverlayUI17GameOverlayWindow_pressGestureRecognizer])
  {
    [v1 removeGestureRecognizer:?];
    v8 = *&v1[v7];
    *&v1[v7] = 0;
  }

  v10.receiver = v1;
  v10.super_class = ObjectType;
  return objc_msgSendSuper2(&v10, "dealloc");
}

id sub_1000D5FB4(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for GamepadGestureRecognizerDelegate();
  return objc_msgSendSuper2(&v4, "dealloc");
}

void *sub_1000D6064(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v122 = a5;
  v12 = sub_100002B38(&qword_100132408, &unk_1000EEF10);
  v120 = *(v12 - 8);
  v121 = v12;
  __chkstk_darwin(v12);
  v118 = &v93 - v13;
  v109 = type metadata accessor for ZoomCoordinator.DashboardVisibilityState();
  v107 = *(v109 - 8);
  __chkstk_darwin(v109);
  v105 = &v93 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_100002B38(&unk_1001324E0, &unk_1000EAAE0);
  __chkstk_darwin(v15 - 8);
  v103 = &v93 - v16;
  v17 = type metadata accessor for StoreTab.Identifier();
  __chkstk_darwin(v17 - 8);
  v102 = &v93 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_100002B38(&qword_10012E668, &qword_1000EAB40);
  __chkstk_darwin(v19 - 8);
  v21 = &v93 - v20;
  v22 = sub_100002B38(&qword_10012E4B0, qword_1000EA960);
  __chkstk_darwin(v22 - 8);
  v24 = &v93 - v23;
  v25 = type metadata accessor for DashboardOverlayView(0);
  __chkstk_darwin(v25);
  v123 = (&v93 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v27);
  v108 = &v93 - v28;
  v113 = sub_100002B38(&qword_1001324F0, &qword_1000EF108);
  v111 = *(v113 - 8);
  __chkstk_darwin(v113);
  v110 = &v93 - v29;
  v119 = sub_100002B38(&qword_1001324F8, &qword_1000EF110);
  v117 = *(v119 - 8);
  __chkstk_darwin(v119);
  v114 = &v93 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v115 = &v93 - v32;
  v34 = __chkstk_darwin(v33);
  v116 = &v93 - v35;
  [a1 setDisablesControlCenter:{1, v34}];
  if (a2)
  {
    v36 = *(a2 + OBJC_IVAR____TtC13GameOverlayUI16DashboardRequest_gameBundleID + 8);
    if (v36)
    {
      v94 = *(a2 + OBJC_IVAR____TtC13GameOverlayUI16DashboardRequest_gameBundleID);
      v95 = v36;
    }

    else
    {
      v38 = *(a2 + OBJC_IVAR____TtC13GameOverlayUI16DashboardRequest_currentGame);
      if (v38)
      {
        v39 = [v38 bundleIdentifier];
        v94 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v95 = v40;
      }

      else
      {
        v94 = 0;
        v95 = 0;
      }
    }

    sub_1000035B4(a6, &v124, &unk_100131120, &unk_1000EAAF0);
    DashboardRequest.destination.getter(v24);
    v37 = 0;
  }

  else
  {
    sub_1000035B4(a6, &v124, &unk_100131120, &unk_1000EAAF0);
    v95 = 0;
    v94 = 0;
    v37 = 1;
  }

  v41 = type metadata accessor for GameDashboardDestination();
  v42 = *(*(v41 - 8) + 56);
  v104 = v24;
  v42(v24, v37, 1, v41);
  v43 = *&v7[OBJC_IVAR____TtC13GameOverlayUI37GameOverlayUIRemoteAlertSceneDelegate_window];
  v44 = swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_1000035B4(a6, v133, &unk_100131120, &unk_1000EAAF0);
  v45 = swift_allocObject();
  *(v45 + 16) = v44;
  *(v45 + 24) = v7;
  v46 = v133[1];
  *(v45 + 32) = v133[0];
  *(v45 + 48) = v46;
  *(v45 + 64) = v134;
  *(v45 + 72) = a3;
  v100 = v45;
  v47 = v123;
  v98 = v123 + v25[8];
  swift_unknownObjectWeakInit();
  v48 = v47 + v25[9];
  *(v48 + 32) = 0;
  *v48 = 0u;
  *(v48 + 16) = 0u;
  v97 = v48;
  v99 = v47 + v25[10];
  swift_unknownObjectWeakInit();
  v49 = (v47 + v25[11]);
  *v49 = 0x6C7070612E6D6F63;
  v49[1] = 0xEF73656D61672E65;
  v50 = (v47 + v25[12]);
  v51 = sub_100002B38(&qword_10012E6A0, &qword_1000EAB60);
  (*(*(v51 - 8) + 56))(v21, 1, 1, v51);
  type metadata accessor for ImpedimentFlowDestinationStates();
  swift_allocObject();
  swift_unknownObjectRetain();
  v96 = v43;
  v101 = v44;

  v52 = v7;
  v130 = ImpedimentFlowDestinationStates.init(completedWelcome:completedCrossUse:completedProfileCreation:lastRecordedSignedInPlayer:lastRecordedSignedInAppStoreDSID:)();
  State.init(wrappedValue:)();
  v53 = v132;
  *v50 = v131;
  v50[1] = v53;
  v54 = (v47 + v25[13]);
  v130 = 0;
  State.init(wrappedValue:)();
  v55 = v132;
  *v54 = v131;
  v54[1] = v55;
  v56 = v25[14];
  *(v47 + v56) = swift_getKeyPath();
  sub_100002B38(&unk_100132500, &unk_1000EA640);
  swift_storeEnumTagMultiPayload();
  if (qword_10012CC18 != -1)
  {
    swift_once();
  }

  v106 = a3;
  v112 = v25;
  v57 = type metadata accessor for Logger();
  sub_100011F80(v57, qword_100135C88);
  v58 = Logger.logObject.getter();
  v59 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v58, v59))
  {
    v60 = swift_slowAlloc();
    *v60 = 0;
    _os_log_impl(&_mh_execute_header, v58, v59, "DashboardOverlayView: Initialized.", v60, 2u);
  }

  v93 = type metadata accessor for ZoomCoordinator();
  static ZoomCoordinator.shared.getter();
  dispatch thunk of ZoomCoordinator.reset()();

  v61 = v123;
  v62 = v95;
  *v123 = v94;
  v61[1] = v62;
  sub_100002B38(&qword_10012E480, &qword_1000EA8F0);
  type metadata accessor for StoreTab();
  v63 = swift_allocObject();
  *(v63 + 16) = xmmword_1000EEDF0;
  static StoreTab.Identifier.overlayActiveCallPage.getter();
  v64 = type metadata accessor for URL();
  v65 = *(*(v64 - 8) + 56);
  v66 = v103;
  v65(v103, 1, 1, v64);
  sub_1000D9414(_swiftEmptyArrayStorage);
  StoreTab.init(identifier:url:title:imageIdentifier:pageContext:editorialPageUrls:)();
  static StoreTab.Identifier.overlayNowPlayingPage.getter();
  v65(v66, 1, 1, v64);
  sub_1000D9414(_swiftEmptyArrayStorage);
  StoreTab.init(identifier:url:title:imageIdentifier:pageContext:editorialPageUrls:)();
  static StoreTab.Identifier.overlaySocialPage.getter();
  v65(v66, 1, 1, v64);
  sub_1000D9414(_swiftEmptyArrayStorage);
  StoreTab.init(identifier:url:title:imageIdentifier:pageContext:editorialPageUrls:)();
  static StoreTab.Identifier.overlaySystemSettingsPage.getter();
  v65(v66, 1, 1, v64);
  sub_1000D9414(_swiftEmptyArrayStorage);
  StoreTab.init(identifier:url:title:imageIdentifier:pageContext:editorialPageUrls:)();
  v67 = v112;
  v68 = v123;
  *(v123 + v112[7]) = v63;
  swift_unknownObjectWeakAssign();
  sub_10004D924(&v124, v97);
  v69 = (v68 + v67[6]);
  v70 = v100;
  *v69 = sub_1000DF998;
  v69[1] = v70;
  v71 = v104;
  sub_1000035B4(v104, v68 + v67[5], &qword_10012E4B0, qword_1000EA960);
  v72 = v96;
  swift_unknownObjectWeakAssign();
  static ZoomCoordinator.shared.getter();
  (*(v107 + 104))(v105, enum case for ZoomCoordinator.DashboardVisibilityState.open(_:), v109);
  dispatch thunk of ZoomCoordinator.dashboardVisibility.setter();

  sub_100005688(v71, &qword_10012E4B0, qword_1000EA960);
  sub_100005688(&v124, &unk_100131120, &unk_1000EAAF0);
  v73 = v108;
  sub_1000DFE10(v68, v108, type metadata accessor for DashboardOverlayView);

  Solarium.init()();
  v74 = v118;
  static ViewInputPredicate.! prefix(_:)();
  v75 = sub_100002B38(&qword_100132510, &qword_1000EF148);
  v76 = sub_1000DF30C(&qword_100132518, type metadata accessor for DashboardOverlayView, &unk_1000ED900);
  v124 = &type metadata for Solarium;
  v125 = &protocol witness table for Solarium;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v92 = sub_1000DF9D0();
  v78 = v110;
  v79 = v121;
  View.staticIf<A, B>(_:then:)();
  (*(v120 + 8))(v74, v79);
  sub_1000DFD48(v73, type metadata accessor for DashboardOverlayView);
  v124 = v67;
  v125 = v79;
  v126 = v75;
  v127 = v76;
  v128 = OpaqueTypeConformance2;
  v129 = v92;
  swift_getOpaqueTypeConformance2();
  v80 = v116;
  v81 = v113;
  View.statusBar(hidden:)();
  (*(v111 + 8))(v78, v81);
  v82 = v117;
  v83 = *(v117 + 16);
  v84 = v115;
  v85 = v119;
  v83(v115, v80, v119);
  v86 = objc_allocWithZone(sub_100002B38(&qword_100132528, &qword_1000EF150));
  v86[*((swift_isaMask & *v86) + qword_100135CE0 + 16)] = 1;
  v83(v114, v84, v85);
  v87 = UIHostingController.init(rootView:)();
  v88 = *(v82 + 8);
  v88(v84, v85);
  *(v87 + *((swift_isaMask & *v87) + qword_100135CE0 + 16)) = v122 != 0;
  result = [v87 view];
  if (result)
  {
    v90 = result;
    v91 = [objc_opt_self() clearColor];
    [v90 setBackgroundColor:v91];

    v88(v80, v85);
    return v87;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1000D7048(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[17] = a7;
  v8[18] = a8;
  v8[15] = a5;
  v8[16] = a6;
  v8[14] = a4;
  type metadata accessor for MainActor();
  v8[19] = static MainActor.shared.getter();
  v10 = dispatch thunk of Actor.unownedExecutor.getter();
  v8[20] = v10;
  v8[21] = v9;

  return _swift_task_switch(sub_1000D70E8, v10, v9);
}

uint64_t sub_1000D70E8()
{
  v1 = v0[15];
  if (!v1)
  {
    goto LABEL_12;
  }

  v2 = v0[14];

  v9._countAndFlagsBits = v2;
  v9._object = v1;
  v3 = sub_1000C19BC(v9);
  if (v3 > 4)
  {
    if (v3 > 8)
    {
      goto LABEL_12;
    }
  }

  else if (v3 == 2)
  {

LABEL_9:
    if (qword_10012CC20 != -1)
    {
      swift_once();
    }

    v5 = qword_100135CA0;
    v0[22] = qword_100135CA0;
    v6 = sub_1000D7324;
    goto LABEL_15;
  }

  v4 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v4)
  {
    goto LABEL_9;
  }

LABEL_12:
  if (qword_10012CC20 != -1)
  {
    swift_once();
  }

  v5 = qword_100135CA0;
  v0[24] = qword_100135CA0;
  v6 = sub_1000D7738;
LABEL_15:

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_1000D7324()
{
  v1 = *(v0 + 176);
  swift_beginAccess();
  v2 = *(v1 + 112);
  if (*(v2 + 16))
  {
    v4 = *(v0 + 128);
    v3 = *(v0 + 136);

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
  v8 = *(v0 + 160);
  v9 = *(v0 + 168);

  return _swift_task_switch(sub_1000D7430, v8, v9);
}

uint64_t sub_1000D7430()
{
  if (v0[5])
  {
    sub_100002B38(&qword_10012E0C0, &qword_1000EA820);
    type metadata accessor for RemoteAlertDashboardContext(0);
    if (swift_dynamicCast())
    {
      v1 = v0[13];
      v0[23] = v1;
      swift_getKeyPath();
      v0[2] = v1;
      sub_1000DF30C(&qword_100131D80, type metadata accessor for RemoteAlertDashboardContext, &unk_1000EE690);
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        [Strong didDismissDashboard];
        swift_unknownObjectRelease();
      }

      v3 = v0[22];
      v4 = sub_1000D75D8;
      goto LABEL_10;
    }
  }

  else
  {
    sub_100005688((v0 + 2), &unk_100131120, &unk_1000EAAF0);
  }

  if (qword_10012CC20 != -1)
  {
    swift_once();
  }

  v3 = qword_100135CA0;
  v0[24] = qword_100135CA0;
  v4 = sub_1000D7738;
LABEL_10:

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_1000D75D8()
{
  v1 = v0[22];
  v3 = v0[17];
  v2 = v0[18];
  v4 = v0[16];
  sub_100093AC4(v4, v3, 0);
  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v1 + 112);
  *(v1 + 112) = 0x8000000000000000;
  sub_1000CE940(v2, v4, v3, isUniquelyReferenced_nonNull_native);

  *(v1 + 112) = v9;
  swift_endAccess();
  v6 = v0[20];
  v7 = v0[21];

  return _swift_task_switch(sub_1000D76D0, v6, v7);
}

uint64_t sub_1000D76D0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000D7738()
{
  v1 = v0[24];
  v3 = v0[17];
  v2 = v0[18];
  v4 = v0[16];
  sub_100093AC4(v4, v3, 0);
  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v1 + 112);
  *(v1 + 112) = 0x8000000000000000;
  sub_1000CE940(v2, v4, v3, isUniquelyReferenced_nonNull_native);

  *(v1 + 112) = v9;
  swift_endAccess();
  v6 = v0[20];
  v7 = v0[21];

  return _swift_task_switch(sub_1000D7830, v6, v7);
}

uint64_t sub_1000D7830()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_1000D7920(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = objc_opt_self();
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  v20 = sub_1000DFED0;
  v21 = v11;
  v16 = _NSConcreteStackBlock;
  v17 = 1107296256;
  v18 = sub_1000D431C;
  v19 = &unk_100124488;
  v12 = _Block_copy(&v16);
  v13 = a1;

  v14 = swift_allocObject();
  v14[2] = a2;
  v14[3] = a3;
  v14[4] = a4;
  v14[5] = a5;
  v20 = sub_1000DF668;
  v21 = v14;
  v16 = _NSConcreteStackBlock;
  v17 = 1107296256;
  v18 = sub_1000D4840;
  v19 = &unk_1001244D8;
  v15 = _Block_copy(&v16);
  swift_unknownObjectRetain();

  [v10 animateWithDuration:v12 animations:v15 completion:0.3];
  _Block_release(v15);
  _Block_release(v12);
}

void sub_1000D7AE4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = sub_100002B38(&unk_100130F10, &qword_1000EA660);
  __chkstk_darwin(v6 - 8);
  v8 = &v26 - v7;
  if (qword_10012CC18 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  sub_100011F80(v9, qword_100135C88);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v10, v11, "Notifying gamed player onboarding finished.", v12, 2u);
  }

  if (a2)
  {
    [a2 didFinishOnboardingWithError:0];
  }

  v13 = [objc_opt_self() proxyForLocalPlayer];
  v14 = [v13 accountServicePrivate];

  v15 = String._bridgeToObjectiveC()();
  v16 = [objc_opt_self() mainBundle];
  v17 = [v16 bundleIdentifier];

  [v14 notifyClient:v15 playerAuthenticatedFromClient:v17];
  swift_unknownObjectRelease();

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v19 = Strong;
    [Strong invalidate];
  }

  if (a2)
  {
    v20 = type metadata accessor for TaskPriority();
    (*(*(v20 - 8) + 56))(v8, 1, 1, v20);
    type metadata accessor for MainActor();
    swift_unknownObjectRetain();
    v21 = static MainActor.shared.getter();
    v22 = swift_allocObject();
    v22[2] = v21;
    v22[3] = &protocol witness table for MainActor;
    v22[4] = a2;
    sub_100014BBC(0, 0, v8, &unk_1000EF020, v22);
  }

  else
  {
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&_mh_execute_header, v23, v24, "Client does not appear to adopt the client side authentication protocol", v25, 2u);
    }
  }
}

uint64_t sub_1000D7E5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  type metadata accessor for MainActor();
  *(v4 + 24) = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1000D7EF4, v6, v5);
}

uint64_t sub_1000D7EF4()
{
  v1 = *(v0 + 16);

  [v1 didFinishOnboardingWithError:0];
  v2 = *(v0 + 8);

  return v2();
}

void sub_1000D7F68(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    [Strong invalidate];
  }
}

uint64_t sub_1000D7FE8(uint64_t a1)
{
  v2 = type metadata accessor for ColorScheme();
  v3 = __chkstk_darwin(v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  return EnvironmentValues.colorScheme.setter();
}

uint64_t sub_1000D80D4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, uint64_t *a5@<X4>, uint64_t a6@<X8>)
{
  KeyPath = swift_getKeyPath();
  v13 = (a6 + *(sub_100002B38(a2, a3) + 36));
  v14 = *(sub_100002B38(&qword_100132478, &qword_1000EEFC0) + 28);
  v15 = enum case for ColorScheme.dark(_:);
  v16 = type metadata accessor for ColorScheme();
  (*(*(v16 - 8) + 104))(v13 + v14, v15, v16);
  *v13 = KeyPath;
  v17 = sub_100002B38(a4, a5);
  v18 = *(*(v17 - 8) + 16);

  return v18(a6, a1, v17);
}

void sub_1000D81F4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  if (qword_10012CC18 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_100011F80(v8, qword_100135C88);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v9, v10, "DashboardOverlayView dismissAction called", v11, 2u);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v13 = Strong;
    [Strong setDisablesControlCenter:0];
  }

  v14 = objc_opt_self();
  v15 = swift_allocObject();
  *(v15 + 16) = a2;
  v27 = sub_1000DFA8C;
  v28 = v15;
  aBlock = _NSConcreteStackBlock;
  v24 = 1107296256;
  v25 = sub_1000D431C;
  v26 = &unk_100124578;
  v16 = _Block_copy(&aBlock);
  v17 = a2;

  sub_1000035B4(a3, v21, &unk_100131120, &unk_1000EAAF0);
  v18 = swift_allocObject();
  v19 = v21[1];
  *(v18 + 24) = v21[0];
  *(v18 + 16) = a1;
  *(v18 + 40) = v19;
  *(v18 + 56) = v22;
  *(v18 + 64) = a4;
  v27 = sub_1000DFAE4;
  v28 = v18;
  aBlock = _NSConcreteStackBlock;
  v24 = 1107296256;
  v25 = sub_1000D4840;
  v26 = &unk_1001245C8;
  v20 = _Block_copy(&aBlock);
  swift_unknownObjectRetain();

  [v14 animateWithDuration:v16 animations:v20 completion:0.3];
  _Block_release(v20);
  _Block_release(v16);
}

void sub_1000D84C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_100002B38(&unk_100130F10, &qword_1000EA660);
  __chkstk_darwin(v6 - 8);
  v8 = v24 - v7;
  v9 = type metadata accessor for GameOverlayDashboardVisibilityNotifier.Scene();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v14 = Strong;
    [Strong invalidate];
  }

  sub_1000035B4(a3, v24, &unk_100131120, &unk_1000EAAF0);
  v15 = v25;
  if (v25)
  {
    v16 = v26;
    sub_10002D754(v24, v25);
    (*(v16 + 16))(v15, v16);
    sub_10002E6CC(v24);
  }

  else
  {
    sub_100005688(v24, &unk_100131120, &unk_1000EAAF0);
  }

  type metadata accessor for GameOverlayDashboardVisibilityNotifier();
  (*(v10 + 104))(v12, enum case for GameOverlayDashboardVisibilityNotifier.Scene.dashboard(_:), v9);
  static GameOverlayDashboardVisibilityNotifier.notify(id:isPresented:scene:)();

  (*(v10 + 8))(v12, v9);
  if (a4)
  {
    v17 = type metadata accessor for TaskPriority();
    (*(*(v17 - 8) + 56))(v8, 1, 1, v17);
    type metadata accessor for MainActor();
    swift_unknownObjectRetain();
    v18 = static MainActor.shared.getter();
    v19 = swift_allocObject();
    v19[2] = v18;
    v19[3] = &protocol witness table for MainActor;
    v19[4] = a4;
    sub_100014BBC(0, 0, v8, &unk_1000EF178, v19);
  }

  else
  {
    if (qword_10012CC18 != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for Logger();
    sub_100011F80(v20, qword_100135C88);
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&_mh_execute_header, v21, v22, "Client does not appear to adopt the client side dashboard protocol", v23, 2u);
    }
  }
}

uint64_t sub_1000D885C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  type metadata accessor for MainActor();
  *(v4 + 24) = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1000D88F4, v6, v5);
}

uint64_t sub_1000D88F4()
{
  v1 = *(v0 + 16);

  [v1 didDismissDashboard];
  v2 = *(v0 + 8);

  return v2();
}

void sub_1000D898C(void *a1, uint64_t a2)
{
  v4 = objc_opt_self();
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  v13 = sub_1000DFED0;
  v14 = v5;
  v9 = _NSConcreteStackBlock;
  v10 = 1107296256;
  v11 = sub_1000D431C;
  v12 = &unk_100124668;
  v6 = _Block_copy(&v9);
  v7 = a1;

  v13 = sub_1000DFC54;
  v14 = a2;
  v9 = _NSConcreteStackBlock;
  v10 = 1107296256;
  v11 = sub_1000D4840;
  v12 = &unk_100124690;
  v8 = _Block_copy(&v9);

  [v4 animateWithDuration:v6 animations:v8 completion:0.3];
  _Block_release(v8);
  _Block_release(v6);
}

void sub_1000D8B10(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    [Strong invalidate];
  }
}

uint64_t sub_1000D8B94@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t (*a4)(void)@<X3>, uint64_t a5@<X8>)
{
  KeyPath = swift_getKeyPath();
  v11 = (a5 + *(sub_100002B38(a2, a3) + 36));
  v12 = *(sub_100002B38(&qword_100132478, &qword_1000EEFC0) + 28);
  v13 = enum case for ColorScheme.dark(_:);
  v14 = type metadata accessor for ColorScheme();
  (*(*(v14 - 8) + 104))(v11 + v12, v13, v14);
  *v11 = KeyPath;
  return sub_1000DFDA8(a1, a5, a4);
}

unint64_t sub_1000D8F30()
{
  result = qword_1001323F8;
  if (!qword_1001323F8)
  {
    sub_10003F788(255, &qword_1001323F0, SBUIRemoteAlertButtonAction_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001323F8);
  }

  return result;
}

unint64_t sub_1000D8F98(uint64_t a1)
{
  type metadata accessor for EditorialPageKey();
  sub_1000DF30C(&qword_100132540, &type metadata accessor for EditorialPageKey, &protocol conformance descriptor for EditorialPageKey);
  v2 = dispatch thunk of Hashable._rawHashValue(seed:)();

  return sub_1000D9030(a1, v2);
}

unint64_t sub_1000D9030(uint64_t a1, uint64_t a2)
{
  v20 = a1;
  v4 = type metadata accessor for EditorialPageKey();
  v5 = *(v4 - 8);
  v6.n128_f64[0] = __chkstk_darwin(v4);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = v2;
  v9 = -1 << *(v2 + 32);
  v10 = a2 & ~v9;
  v19 = v2 + 64;
  if ((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v14 = *(v5 + 16);
    v13 = v5 + 16;
    v12 = v14;
    v15 = *(v13 + 56);
    do
    {
      v12(v8, *(v21 + 48) + v15 * v10, v4, v6);
      sub_1000DF30C(&qword_100132548, &type metadata accessor for EditorialPageKey, &protocol conformance descriptor for EditorialPageKey);
      v16 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v13 - 8))(v8, v4);
      if (v16)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
    }

    while (((*(v19 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  return v10;
}

void sub_1000D91F0(unint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      __CocoaSet.element(at:)();
      sub_10003F788(0, &qword_1001323F0, SBUIRemoteAlertButtonAction_ptr);
      swift_dynamicCast();
      return;
    }

    goto LABEL_23;
  }

  if (a3)
  {
    sub_10003F788(0, &qword_1001323F0, SBUIRemoteAlertButtonAction_ptr);
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

unint64_t sub_1000D9414(uint64_t a1)
{
  v2 = sub_100002B38(&qword_100132530, &qword_1000EF158);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v21 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_100002B38(&qword_100132538, &unk_1000EF160);
    v7 = static _DictionaryStorage.allocate(capacity:)();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_1000035B4(v9, v5, &qword_100132530, &qword_1000EF158);
      result = sub_1000D8F98(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = type metadata accessor for EditorialPageKey();
      (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      v16 = v7[7];
      v17 = type metadata accessor for URL();
      result = (*(*(v17 - 8) + 32))(v16 + *(*(v17 - 8) + 72) * v13, &v5[v8], v17);
      v18 = v7[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v7[2] = v20;
      v9 += v10;
      if (!--v6)
      {

        return v7;
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

void sub_1000D9634(void *a1)
{
  if (qword_10012CC18 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100011F80(v2, qword_100135C88);
  v3 = a1;
  oslog = Logger.logObject.getter();
  v4 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v13 = v6;
    *v5 = 136315138;
    v7 = [v3 role];
    v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = v9;

    v11 = sub_1000BA5C8(v8, v10, &v13);

    *(v5 + 4) = v11;
    _os_log_impl(&_mh_execute_header, oslog, v4, "Scene willConnectTo session: %s", v5, 0xCu);
    sub_10002E6CC(v6);
  }
}

uint64_t sub_1000D97CC(uint64_t a1)
{
  v2 = __chkstk_darwin(a1);
  *(v1 + *(v4 + 16)) = 1;
  (*(v5 + 16))(&v7 - v3, v2);
  return UIHostingController.init(rootView:)();
}

double sub_1000D98C4()
{
  v0 = type metadata accessor for UUID();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10012CC18 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100011F80(v4, qword_100135C88);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "Handling press gesture for menu/back button", v7, 2u);
  }

  type metadata accessor for ZoomCoordinator();
  static ZoomCoordinator.shared.getter();
  UUID.init()();
  UUID.uuidString.getter();
  (*(v1 + 8))(v3, v0);
  dispatch thunk of ZoomCoordinator.navigationCancelCommandNotificationId.setter();

  return result;
}

id sub_1000D9A7C(uint64_t a1, uint64_t a2)
{
  v2 = static HorizontalAlignment.center.getter();
  sub_10000548C(v2, v3, v4);

  v5 = Text.init<A>(_:)();
  v7 = v6;
  v9 = v8;
  v10 = objc_allocWithZone(sub_100002B38(&unk_1001325A0, &unk_1000EF210));
  v11 = v9 & 1;
  *(v10 + *((swift_isaMask & *v10) + qword_100135CE0 + 16)) = 1;

  sub_1000054F0(v5, v7, v9 & 1);
  v12 = UIHostingController.init(rootView:)();
  result = [v12 view];
  if (result)
  {
    v14 = result;
    v15 = [objc_opt_self() clearColor];
    [v14 setBackgroundColor:v15];
    sub_1000054E0(v5, v7, v11);

    return v12;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1000D9C24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = type metadata accessor for ActivitySharingRepromptOverlayView();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v20 - v8;
  __chkstk_darwin(v10);
  v12 = &v20 - v11;
  swift_allocObject();
  swift_unknownObjectWeakInit();

  ActivitySharingRepromptOverlayView.init(recipientName:dismissAction:)();
  v13 = *(v4 + 16);
  v13(v9, v12, v3);
  v14 = objc_allocWithZone(sub_100002B38(&qword_100132498, &qword_1000EF028));
  *(v14 + *((swift_isaMask & *v14) + qword_100135CE0 + 16)) = 1;
  v13(v6, v9, v3);
  v15 = UIHostingController.init(rootView:)();
  v16 = *(v4 + 8);
  v16(v9, v3);
  result = [v15 view];
  if (result)
  {
    v18 = result;
    v19 = [objc_opt_self() clearColor];
    [v18 setBackgroundColor:v19];

    v16(v12, v3);
    return v15;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_1000D9EC0(int *a1, uint64_t a2, void *a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v128 = a8;
  v131 = a7;
  v126 = a6;
  v110 = a5;
  v125 = a4;
  v108 = a3;
  v121 = a2;
  v9 = sub_100002B38(&qword_100132408, &unk_1000EEF10);
  v133 = *(v9 - 8);
  v134 = v9;
  __chkstk_darwin(v9);
  v132 = &v102 - v10;
  v11 = type metadata accessor for AccessPointUseCase();
  v136 = *(v11 - 8);
  __chkstk_darwin(v11);
  v118 = &v102 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for AccessPointAnchoring();
  v135 = *(v13 - 8);
  __chkstk_darwin(v13);
  v115 = &v102 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_100002B38(&qword_100132410, &unk_1000E9F30);
  __chkstk_darwin(v15 - 8);
  v105 = &v102 - v16;
  v17 = sub_100002B38(&qword_10012E668, &qword_1000EAB40);
  __chkstk_darwin(v17 - 8);
  v107 = &v102 - v18;
  v19 = sub_100002B38(&unk_1001324A0, &unk_1000EF030);
  __chkstk_darwin(v19 - 8);
  v106 = &v102 - v20;
  v21 = sub_100002B38(&qword_10012E0C8, &qword_1000EA438);
  __chkstk_darwin(v21 - 8);
  v23 = &v102 - v22;
  v24 = type metadata accessor for AccessPointView(0);
  __chkstk_darwin(v24);
  v26 = (&v102 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v27);
  v117 = &v102 - v28;
  v122 = sub_100002B38(&qword_1001324B0, &qword_1000EF040);
  v120 = *(v122 - 8);
  __chkstk_darwin(v122);
  v119 = &v102 - v29;
  v30 = sub_100002B38(&qword_1001324B8, &qword_1000EF048);
  v129 = *(v30 - 8);
  v130 = v30;
  __chkstk_darwin(v30);
  v123 = &v102 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v32);
  v124 = &v102 - v33;
  __chkstk_darwin(v34);
  v127 = &v102 - v35;
  swift_getKeyPath();
  v139 = a1;
  v36 = sub_1000DF30C(&qword_10012CFC8, type metadata accessor for RemoteAlertAccessPointContext, &unk_1000EE6AC);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v112 = *(a1 + OBJC_IVAR____TtC13GameOverlayUI29RemoteAlertAccessPointContext__didReturnToForeground);
  swift_getKeyPath();
  v139 = a1;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v37 = OBJC_IVAR____TtC13GameOverlayUI29RemoteAlertAccessPointContext__anchoring;
  swift_beginAccess();
  v38 = v135;
  (*(v135 + 16))(v23, a1 + v37, v13);
  v39 = *(v38 + 56);
  v113 = v23;
  v116 = v13;
  v40 = v13;
  v41 = v106;
  v39(v23, 0, 1, v40);
  v42 = v136;
  (*(v136 + 16))(v41, v121, v11);
  v43 = *(v42 + 56);
  v121 = v11;
  v43(v41, 0, 1, v11);
  swift_getKeyPath();
  v139 = a1;
  v114 = v36;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v111 = *(a1 + OBJC_IVAR____TtC13GameOverlayUI29RemoteAlertAccessPointContext__newToGameCenter);
  sub_1000035B4(v110, &v139, &unk_100131120, &unk_1000EAAF0);
  v44 = v24[5];
  v45 = type metadata accessor for Game();
  v46 = *(*(v45 - 8) + 56);
  v104 = v44;
  v103 = v46;
  v46(v26 + v44, 1, 1, v45);
  v47 = v26 + v24[11];
  *(v47 + 32) = 0;
  *v47 = 0u;
  *(v47 + 16) = 0u;
  v109 = v47;
  v110 = v24[13];
  swift_unknownObjectWeakInit();
  v48 = v26 + v24[14];
  v49 = sub_100002B38(&qword_10012E6A0, &qword_1000EAB60);
  (*(*(v49 - 8) + 56))(v107, 1, 1, v49);
  type metadata accessor for ImpedimentFlowDestinationStates();
  swift_allocObject();
  v137 = ImpedimentFlowDestinationStates.init(completedWelcome:completedCrossUse:completedProfileCreation:lastRecordedSignedInPlayer:lastRecordedSignedInAppStoreDSID:)();
  State.init(wrappedValue:)();
  v50 = v138[1];
  *v48 = v138[0];
  *(v48 + 1) = v50;
  type metadata accessor for GameDashboardLaunchContext();
  swift_allocObject();
  v51 = GameDashboardLaunchContext.init()();
  v52 = v108;
  *v26 = v51;
  v26[1] = 0;
  if (v52)
  {
    v53 = objc_opt_self();
    v108 = v52;
    v54 = [v108 internal];
    v138[0] = 0;
    v55 = [v53 archivedDataWithRootObject:v54 requiringSecureCoding:1 error:v138];

    v56 = v138[0];
    if (v55)
    {
      static Data._unconditionallyBridgeFromObjectiveC(_:)();

      v57 = v105;
      Game.init(with:)();

      v103(v57, 0, 1, v45);
      sub_1000DF4FC(v57, v26 + v104, &qword_100132410, &unk_1000E9F30);
    }

    else
    {
      v58 = v56;
      _convertNSErrorToError(_:)();

      swift_willThrow();
      if (qword_10012CC18 != -1)
      {
        swift_once();
      }

      v59 = type metadata accessor for Logger();
      sub_100011F80(v59, qword_100135C88);
      swift_errorRetain();
      v60 = Logger.logObject.getter();
      v61 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v60, v61))
      {
        v62 = swift_slowAlloc();
        v63 = swift_slowAlloc();
        *v62 = 138412290;
        swift_errorRetain();
        v64 = _swift_stdlib_bridgeErrorToNSError();
        *(v62 + 4) = v64;
        *v63 = v64;
        _os_log_impl(&_mh_execute_header, v60, v61, "Game could not be serialized: %@", v62, 0xCu);
        sub_100005688(v63, &qword_100131110, &unk_1000EC870);
      }

      else
      {
      }
    }
  }

  v65 = v41;
  v66 = v135;
  v67 = *(v135 + 48);
  v68 = v113;
  v69 = v116;
  if (v67(v113, 1, v116) == 1)
  {
    v70 = v115;
    (*(v66 + 104))(v115, enum case for AccessPointAnchoring.topLeading(_:), v69);
    v71 = v67(v68, 1, v69);
    v72 = v70;
    v73 = v71 == 1;
    v74 = v121;
    v75 = v68;
    v76 = v118;
    if (!v73)
    {
      sub_100005688(v75, &qword_10012E0C8, &qword_1000EA438);
    }
  }

  else
  {
    v72 = v115;
    (*(v66 + 32))(v115, v68, v69);
    v74 = v121;
    v76 = v118;
  }

  v77 = v112 ^ 1;
  (*(v66 + 32))(v26 + v24[6], v72, v69);
  v78 = v136;
  v79 = *(v136 + 48);
  if (v79(v65, 1, v74) == 1)
  {
    (*(v78 + 104))(v76, enum case for AccessPointUseCase.accessPointOnly(_:), v74);
    if (v79(v65, 1, v74) != 1)
    {
      sub_100005688(v65, &unk_1001324A0, &unk_1000EF030);
    }
  }

  else
  {
    (*(v78 + 32))(v76, v65, v74);
  }

  v80 = (v26 + v24[12]);
  (*(v78 + 32))(v26 + v24[7], v76, v74);
  *(v26 + v24[8]) = v77 & 1;
  *(v26 + v24[9]) = v111;
  *(v26 + v24[10]) = v125 & 1;
  sub_1000DF4FC(&v139, v109, &unk_100131120, &unk_1000EAAF0);
  v81 = v131;
  *v80 = v126;
  v80[1] = v81;
  swift_unknownObjectWeakAssign();
  v82 = v117;
  sub_1000DFE10(v26, v117, type metadata accessor for AccessPointView);
  v83 = type metadata accessor for RemoteAlertAccessPointContext(0);
  v84 = sub_1000DF30C(&qword_1001324C0, type metadata accessor for AccessPointView, &unk_1000EDDA0);

  v85 = v119;
  v86 = v114;
  View.environment<A>(_:)();
  sub_1000DFD48(v82, type metadata accessor for AccessPointView);
  Solarium.init()();
  v87 = v132;
  static ViewInputPredicate.! prefix(_:)();
  sub_100002B38(&qword_1001324C8, &qword_1000EF0C8);
  v139 = v24;
  v140 = v83;
  v141 = v84;
  v142 = v86;
  swift_getOpaqueTypeConformance2();
  v139 = &type metadata for Solarium;
  v140 = &protocol witness table for Solarium;
  swift_getOpaqueTypeConformance2();
  sub_1000DF7DC();
  v88 = v127;
  v89 = v122;
  v90 = v134;
  View.staticIf<A, B>(_:then:)();
  (*(v133 + 8))(v87, v90);
  (*(v120 + 8))(v85, v89);
  v92 = v129;
  v91 = v130;
  v93 = *(v129 + 16);
  v94 = v124;
  v93(v124, v88, v130);
  v95 = objc_allocWithZone(sub_100002B38(&qword_1001324D8, &qword_1000EF0D0));
  v95[*((swift_isaMask & *v95) + qword_100135CE0 + 16)] = 1;
  v93(v123, v94, v91);
  v96 = UIHostingController.init(rootView:)();
  v97 = *(v92 + 8);
  v97(v94, v91);
  v98 = [v96 view];
  if (!v98)
  {
    __break(1u);
  }

  v99 = v98;
  v100 = [objc_opt_self() clearColor];
  [v99 setBackgroundColor:v100];

  v97(v88, v91);
  return v96;
}

id sub_1000DAF78(uint64_t a1)
{
  v2 = sub_100002B38(&qword_100132558, &qword_1000EF180);
  v3 = v2 - 8;
  __chkstk_darwin(v2);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v25 - v7;
  __chkstk_darwin(v9);
  v11 = (&v25 - v10);
  v12 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v13 = swift_allocObject();
  *(v13 + 16) = v1;
  *(v13 + 24) = v12;
  KeyPath = swift_getKeyPath();
  v15 = (v11 + *(v3 + 44));
  v16 = *(sub_100002B38(&qword_100132478, &qword_1000EEFC0) + 28);
  v17 = enum case for ColorScheme.dark(_:);
  v18 = type metadata accessor for ColorScheme();
  (*(*(v18 - 8) + 104))(v15 + v16, v17, v18);
  *v15 = KeyPath;
  *v11 = 0x4030000000000000;
  v11[1] = sub_1000DFC28;
  v11[2] = v13;
  sub_1000035B4(v11, v8, &qword_100132558, &qword_1000EF180);
  v19 = objc_allocWithZone(sub_100002B38(&qword_100132560, &qword_1000EF188));
  *(v19 + *((swift_isaMask & *v19) + qword_100135CE0 + 16)) = 1;
  sub_1000035B4(v8, v5, &qword_100132558, &qword_1000EF180);
  v20 = v1;
  v21 = UIHostingController.init(rootView:)();
  sub_100005688(v8, &qword_100132558, &qword_1000EF180);
  result = [v21 view];
  if (result)
  {
    v23 = result;
    v24 = [objc_opt_self() clearColor];
    [v23 setBackgroundColor:v24];

    sub_100005688(v11, &qword_100132558, &qword_1000EF180);
    return v21;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1000DB268(uint64_t a1, void *a2)
{
  v4 = sub_100002B38(&qword_100132408, &unk_1000EEF10);
  v5 = *(v4 - 8);
  v37 = v4;
  v38 = v5;
  __chkstk_darwin(v4);
  v7 = &v34 - v6;
  v8 = type metadata accessor for GameModeBannerView(0);
  __chkstk_darwin(v8);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_100002B38(&qword_100132568, &qword_1000EF190);
  v11 = *(v35 - 8);
  __chkstk_darwin(v35);
  v36 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v34 - v14;
  __chkstk_darwin(v16);
  v18 = &v34 - v17;
  LOBYTE(v39) = 0;
  State.init(wrappedValue:)();
  v19 = v41;
  v10[16] = v40;
  *(v10 + 3) = v19;
  v39 = 0x3FE8000000000000;
  State.init(wrappedValue:)();
  v20 = v41;
  *(v10 + 4) = v40;
  *(v10 + 5) = v20;
  v21 = *(v8 + 32);
  *&v10[v21] = swift_getKeyPath();
  sub_100002B38(&unk_100132500, &unk_1000EA640);
  swift_storeEnumTagMultiPayload();
  v22 = *(v8 + 36);
  *&v10[v22] = swift_getKeyPath();
  sub_100002B38(&qword_100132570, &unk_1000E9C70);
  swift_storeEnumTagMultiPayload();
  *v10 = a1;
  *(v10 + 1) = a2;

  v23 = a2;
  Solarium.init()();
  static ViewInputPredicate.! prefix(_:)();
  sub_100002B38(&qword_100132578, &qword_1000EF200);
  sub_1000DF30C(&qword_100132580, type metadata accessor for GameModeBannerView, &unk_1000EA550);
  v40 = &type metadata for Solarium;
  v41 = &protocol witness table for Solarium;
  swift_getOpaqueTypeConformance2();
  sub_1000DFC8C();
  v24 = v37;
  View.staticIf<A, B>(_:then:)();
  v25 = v7;
  v26 = v35;
  (*(v38 + 8))(v25, v24);
  sub_1000DFD48(v10, type metadata accessor for GameModeBannerView);
  v27 = *(v11 + 16);
  v27(v15, v18, v26);
  v28 = objc_allocWithZone(sub_100002B38(&unk_100132590, &qword_1000EF208));
  v28[*((swift_isaMask & *v28) + qword_100135CE0 + 16)] = 1;
  v27(v36, v15, v26);
  v29 = UIHostingController.init(rootView:)();
  v30 = *(v11 + 8);
  v30(v15, v26);
  result = [v29 view];
  if (result)
  {
    v32 = result;
    v33 = [objc_opt_self() clearColor];
    [v32 setBackgroundColor:v33];

    v30(v18, v26);
    return v29;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1000DB780(void *a1)
{
  v3 = sub_100002B38(&unk_100130F10, &qword_1000EA660);
  __chkstk_darwin(v3 - 8);
  v5 = &v297 - v4;
  v6 = sub_100002B38(&qword_100132408, &unk_1000EEF10);
  v333 = *(v6 - 8);
  __chkstk_darwin(v6);
  v332 = &v297 - v7;
  v8 = sub_100002B38(&qword_100132410, &unk_1000E9F30);
  __chkstk_darwin(v8 - 8);
  v325 = &v297 - v9;
  v336 = type metadata accessor for InGameBannerView(0);
  __chkstk_darwin(v336);
  v337 = (&v297 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v11);
  v326 = &v297 - v12;
  v13 = sub_100002B38(&qword_100132418, &qword_1000EEF20);
  v328 = *(v13 - 8);
  v329 = v13;
  __chkstk_darwin(v13);
  v327 = &v297 - v14;
  v15 = sub_100002B38(&unk_100132420, &unk_1000EEF28);
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v330 = &v297 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v331 = &v297 - v19;
  __chkstk_darwin(v20);
  v22 = &v297 - v21;
  v23 = type metadata accessor for GameOverlayDashboardVisibilityNotifier.Scene();
  v342 = *(v23 - 8);
  v343 = v23;
  __chkstk_darwin(v23);
  v341 = &v297 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for AccessPointUseCase();
  v338 = *(v25 - 8);
  v339 = v25;
  __chkstk_darwin(v25);
  v335 = &v297 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v334 = &v297 - v28;
  v29 = sub_100002B38(&qword_10012E668, &qword_1000EAB40);
  __chkstk_darwin(v29 - 8);
  v340 = &v297 - v30;
  objc_opt_self();
  v31 = swift_dynamicCastObjCClass();
  v32 = qword_10012CC18;
  if (v31)
  {
    v33 = v31;
    v351 = v1;
    v323 = v5;
    v34 = a1;
    if (v32 != -1)
    {
      swift_once();
    }

    v318 = v6;
    v319 = v22;
    v320 = v16;
    v35 = type metadata accessor for Logger();
    v350 = sub_100011F80(v35, qword_100135C88);
    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      *v38 = 0;
      _os_log_impl(&_mh_execute_header, v36, v37, "Remote Alert scene will connect", v38, 2u);
    }

    v321 = type metadata accessor for GameOverlayWindow();
    v39 = objc_allocWithZone(v321);
    v40 = v34;
    v41 = [v39 initWithWindowScene:v33];
    v42 = OBJC_IVAR____TtC13GameOverlayUI37GameOverlayUIRemoteAlertSceneDelegate_window;
    v43 = v351;
    v44 = *(&v351->isa + OBJC_IVAR____TtC13GameOverlayUI37GameOverlayUIRemoteAlertSceneDelegate_window);
    *(&v351->isa + OBJC_IVAR____TtC13GameOverlayUI37GameOverlayUIRemoteAlertSceneDelegate_window) = v41;

    v45 = [objc_allocWithZone(UITapGestureRecognizer) init];
    sub_100002B38(&qword_1001317E8, &qword_1000EE1C0);
    v46 = swift_allocObject();
    *(v46 + 16) = xmmword_1000EE0F0;
    v47 = v45;
    *(v46 + 32) = Int._bridgeToObjectiveC()();
    *(v46 + 40) = Int._bridgeToObjectiveC()();
    sub_10003F788(0, &qword_100131140, NSNumber_ptr);
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v47 setAllowedPressTypes:isa];

    [v47 setDelegate:*(&v43->isa + OBJC_IVAR____TtC13GameOverlayUI37GameOverlayUIRemoteAlertSceneDelegate_gamepadGestureDelegate)];
    v347 = v42;
    v49 = *(&v43->isa + v42);
    if (v49)
    {
      [v49 addGestureRecognizer:v47];
    }

    v345 = v47;
    v50 = [v33 configurationIdentifier];
    v346 = v40;
    if (v50)
    {
      v51 = v50;
      v344 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v53 = v52;
    }

    else
    {
      v344 = 0;
      v53 = 0;
    }

    v61 = [v33 activationContext];
    if (v61 && (v62 = v61, v63 = [v61 userInfo], v62, v63))
    {
      v64 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      v368 = 0;
      v65 = 0uLL;
      v366 = 0u;
      v367 = 0u;
      if (v64)
      {
        v353 = 0xD000000000000011;
        v354 = 0x80000001000E8560;

        AnyHashable.init<A>(_:)();
        sub_1000C1CA8(v64, &v355, &v357);

        sub_1000708BC(&v357);
        if (*(&v356 + 1))
        {
          if (swift_dynamicCast())
          {
            v66 = v357;
            v67 = v358;
            if (qword_10012CC40 != -1)
            {
              v296 = v357;
              swift_once();
              v66 = v296;
            }

            v68 = sub_1000E0480(v66, v67);

            v43 = v351;
LABEL_52:
            v353 = 0xD000000000000018;
            v354 = 0x80000001000E8580;

            AnyHashable.init<A>(_:)();
            sub_1000C1CA8(v64, &v355, &v357);

            sub_1000708BC(&v357);
            if (*(&v356 + 1))
            {
              if (swift_dynamicCast())
              {
                v324 = v357;
LABEL_57:
                v353 = 0xD000000000000011;
                v354 = 0x80000001000E85A0;

                AnyHashable.init<A>(_:)();
                sub_1000C1CA8(v64, &v355, &v357);

                sub_1000708BC(&v357);
                if (*(&v356 + 1))
                {
                  v90 = swift_dynamicCast();
                  if (v90)
                  {
                    v70 = v357;
                  }

                  else
                  {
                    v70 = 0;
                  }

                  if (v90)
                  {
                    v71 = v358;
                  }

                  else
                  {
                    v71 = 0;
                  }

                  v69 = v68;
                  v348 = v53;
                  v349 = v68;
                  if (!v53)
                  {
                    goto LABEL_65;
                  }

                  goto LABEL_29;
                }

                v69 = v68;
LABEL_28:
                sub_100005688(&v355, &qword_100131118, &unk_1000ED6E0);
                v70 = 0;
                v71 = 0;
                v348 = v53;
                v349 = v69;
                if (!v53)
                {
LABEL_65:

                  v322 = 0;
                  v73 = 0;
                  v74 = 2;
LABEL_66:
                  v87 = v347;
                  v91 = *(&v43->isa + v347);
                  if (!v91)
                  {
                    goto LABEL_165;
                  }

LABEL_67:
                  [v91 makeKeyAndVisible];
                  v92 = *(&v43->isa + v87);
                  if (v92)
                  {
                    v93 = [v92 _rootSheetPresentationController];
                    if (v93)
                    {
                      v94 = v93;
                      [v93 _setShouldScaleDownBehindDescendantSheets:0];
                      goto LABEL_167;
                    }
                  }

LABEL_165:
                  v94 = Logger.logObject.getter();
                  v165 = static os_log_type_t.error.getter();
                  if (os_log_type_enabled(v94, v165))
                  {
                    v166 = swift_slowAlloc();
                    *v166 = 0;
                    _os_log_impl(&_mh_execute_header, v94, v165, "_rootSheetPresentationController was unexpectedly nil.", v166, 2u);
                    v69 = v349;
                  }

LABEL_167:

                  v167 = String._bridgeToObjectiveC()();
                  [v33 setIdleTimerDisabled:1 forReason:v167];

                  [v33 setContentOpaque:0];
                  if (v74 == 2)
                  {
                    [v33 setAllowsAlertStacking:1];
                    [v33 setSwipeDismissalStyle:0];
                    [v33 setAllowsMenuButtonDismissal:0];
                    v168 = v346;
                    if (!v69)
                    {
                      goto LABEL_182;
                    }
                  }

                  else
                  {
                    [v33 setAllowsAlertStacking:0];
                    [v33 setAllowsMenuButtonDismissal:1];
                    if (v74)
                    {
                      [v33 setSwipeDismissalStyle:0];
                      [v33 setDesiredHardwareButtonEvents:16];
                    }

                    else
                    {
                      [v33 setSwipeDismissalStyle:1];
                    }

                    v168 = v346;
                    if (!v69)
                    {
                      goto LABEL_182;
                    }
                  }

                  v169 = v69[2];
                  if (!v169)
                  {
                    goto LABEL_182;
                  }

                  v170 = v169;
                  if ((sub_1000E0268() & 1) == 0)
                  {

LABEL_182:

                    v171 = Logger.logObject.getter();
                    v172 = static os_log_type_t.error.getter();
                    if (os_log_type_enabled(v171, v172))
                    {
                      v173 = swift_slowAlloc();
                      *v173 = 0;
                      _os_log_impl(&_mh_execute_header, v171, v172, "Invalidating remote alert scene because the client is no longer valid.", v173, 2u);
                    }

                    [v33 invalidate];
LABEL_185:

                    sub_100005688(&v366, &unk_100131120, &unk_1000EAAF0);
                    return;
                  }

                  if (v73)
                  {
                    if ((v324 & 1) == 0)
                    {
                      v174 = *(&v43->isa + v87);
                      sub_1000035B4(&v366, &v357, &unk_100131120, &unk_1000EAAF0);
                      type metadata accessor for RemoteSceneManager.WeakScene();
                      swift_allocObject();
                      v175 = v174;
                      v176 = sub_100092FE4(v33, v174, &v357);
                      v177 = type metadata accessor for TaskPriority();
                      v178 = v73;
                      v179 = v323;
                      (*(*(v177 - 8) + 56))(v323, 1, 1, v177);
                      type metadata accessor for MainActor();

                      v180 = static MainActor.shared.getter();
                      v181 = swift_allocObject();
                      v181[2] = v180;
                      v181[3] = &protocol witness table for MainActor;
                      v182 = v348;
                      v181[4] = v344;
                      v181[5] = v182;
                      v181[6] = v322;
                      v181[7] = v178;
                      v181[8] = v176;
                      sub_100014BBC(0, 0, v179, &unk_1000EEF40, v181);

                      goto LABEL_187;
                    }
                  }

LABEL_187:
                  v183 = [v33 configurationContext];
                  if (v183)
                  {
                    v184 = v183;
                    v185 = v183;
                    v186 = Logger.logObject.getter();
                    v187 = static os_log_type_t.info.getter();

                    if (os_log_type_enabled(v186, v187))
                    {
                      v188 = swift_slowAlloc();
                      v189 = swift_slowAlloc();
                      *v188 = 138412290;
                      *(v188 + 4) = v185;
                      *v189 = v184;
                      v190 = v185;
                      _os_log_impl(&_mh_execute_header, v186, v187, "Remote alert scene got configuration context %@", v188, 0xCu);
                      sub_100005688(v189, &qword_100131110, &unk_1000EC870);

                      v185 = v345;
                      v191 = v186;
                      v186 = v170;
                      v170 = v190;
                    }

                    else
                    {
                      v191 = v345;
                    }
                  }

                  else
                  {
                    v186 = v345;
                  }

                  goto LABEL_185;
                }

LABEL_29:

                v370._countAndFlagsBits = v344;
                v370._object = v53;
                v72 = sub_1000C19BC(v370);
                if (v72 == 9)
                {

                  v322 = 0;
                  v73 = 0;
                  v74 = 2;
                  v43 = v351;
                  goto LABEL_66;
                }

                v75 = v72;
                if (v69 && (v76 = v69[2]) != 0)
                {
                  v77 = *(v349 + 144);
                  v316 = v15;
                  v78 = v33;
                  v79 = v64;
                  v80 = v70;
                  v81 = v71;
                  v82 = *(v349 + 152);

                  v83 = v76;
                  v84 = v77;
                  v69 = v349;
                  v322 = sub_1000DFEF0(v75, v84, v82);
                  v317 = v85;

                  v71 = v81;
                  v70 = v80;
                  v64 = v79;
                  v33 = v78;
                  v15 = v316;
                }

                else
                {
                  v322 = 0;
                  v317 = 0;
                }

                v86 = v75;
                if (v75 <= 4u)
                {
                  v43 = v351;
                  if (v86 > 1)
                  {
                    if (v86 != 2)
                    {
                      v73 = v317;
                      if (v86 == 3)
                      {

                        v87 = v347;
                        if (v69)
                        {
                          sub_1000035B4((v69 + 3), &v357, &qword_100131118, &unk_1000ED6E0);
                          if (v360)
                          {
                            sub_100002B38(&unk_100132440, &unk_1000EEFA8);
                            swift_dynamicCast();
                          }

                          else
                          {
                            sub_100005688(&v357, &qword_100131118, &unk_1000ED6E0);
                          }
                        }

                        v135 = *(&v43->isa + v87);
                        if (v135)
                        {
                          v136 = v135;
                          v137 = sub_1000DAF78(v33);
                          [v136 setRootViewController:v137];
                          swift_unknownObjectRelease();

                          v69 = v349;
                        }

                        else
                        {
                          swift_unknownObjectRelease();
                        }

LABEL_152:
                        v74 = 2;
                        v91 = *(&v43->isa + v87);
                        if (!v91)
                        {
                          goto LABEL_165;
                        }

                        goto LABEL_67;
                      }

                      v87 = v347;
                      v106 = *(&v43->isa + v347);
                      if (v106)
                      {
                        v107 = "GameOverlayUIRemoteAlert";
                        v108 = v106;
                        v109 = 0xD000000000000022;
LABEL_150:
                        v155 = sub_1000D9A7C(v109, v107 | 0x8000000000000000);
                        [v108 setRootViewController:v155];

                        goto LABEL_151;
                      }

                      goto LABEL_154;
                    }

                    if (v69 && *v69 == _TtC13GameOverlayUI26DashboardConnectionContext)
                    {
                      swift_beginAccess();
                      sub_1000035B4((v69 + 8), &v357, &unk_100131120, &unk_1000EAAF0);
                      if (!v360)
                      {

                        sub_100005688(&v357, &unk_100131120, &unk_1000EAAF0);
LABEL_109:
                        v112 = Logger.logObject.getter();
                        v113 = static os_log_type_t.error.getter();
                        if (os_log_type_enabled(v112, v113))
                        {
                          v74 = 2;
                          v114 = swift_slowAlloc();
                          *v114 = 0;
                          _os_log_impl(&_mh_execute_header, v112, v113, "A valid RemoteAlertDashboardContext could not be found for the dashboard request.", v114, 2u);
                          v69 = v349;

                          v339 = 0;
                          v340 = 0;
                        }

                        else
                        {

                          v339 = 0;
                          v340 = 0;
                          v74 = 2;
                        }

LABEL_116:
                        v116 = *(&v367 + 1);
                        if (*(&v367 + 1))
                        {
                          v117 = v368;
                          v118 = sub_10002D754(&v366, *(&v367 + 1));
                          v119 = *(v116 - 8);
                          v120 = __chkstk_darwin(v118);
                          v122 = &v297 - ((v121 + 15) & 0xFFFFFFFFFFFFFFF0);
                          (*(v119 + 16))(v122, v120);
                          (*(v117 + 16))(v116, v117);
                          v338 = v123;
                          v124 = v122;
                          v43 = v351;
                          (*(v119 + 8))(v124, v116);
                          v69 = v349;
                        }

                        else
                        {
                          v338 = 0;
                        }

                        type metadata accessor for GameOverlayDashboardVisibilityNotifier();
                        v126 = v341;
                        v125 = v342;
                        v127 = v343;
                        (*(v342 + 13))(v341, enum case for GameOverlayDashboardVisibilityNotifier.Scene.dashboard(_:), v343);
                        static GameOverlayDashboardVisibilityNotifier.notify(id:isPresented:scene:)();

                        (v125)[1](v126, v127);
                        v87 = v347;
                        v128 = *(&v43->isa + v347);
                        if (v128)
                        {
                          if (v69)
                          {
                            v129 = v69[18];
                            v130 = v69[19];
                          }

                          else
                          {
                            v129 = 0;
                            v130 = 0;
                          }

                          sub_1000035B4(&v366, &v357, &unk_100131120, &unk_1000EAAF0);
                          v131 = v128;
                          v132 = sub_1000D6064(v33, v340, v339, v129, v130, &v357);

                          sub_100005688(&v357, &unk_100131120, &unk_1000EAAF0);
                          [v131 setRootViewController:v132];

                          v87 = v347;
                          v133 = *(&v43->isa + v347);
                          if (v133)
                          {
                            if (swift_dynamicCastClass())
                            {
                              v134 = v133;
                              sub_1000D59D4();

                              v87 = v347;
                            }
                          }
                        }

                        swift_unknownObjectRelease();

                        goto LABEL_164;
                      }

                      swift_retain_n();
                      sub_100002B38(&qword_10012E0C0, &qword_1000EA820);
                      v102 = type metadata accessor for RemoteAlertDashboardContext(0);
                      if (swift_dynamicCast())
                      {
                        v315 = v71;
                        v103 = v353;
                        sub_1000035B4((v69 + 3), &v357, &qword_100131118, &unk_1000ED6E0);
                        if (v360)
                        {
                          sub_100002B38(&qword_100131138, &qword_1000ED598);
                          swift_dynamicCast();
                        }

                        else
                        {
                          sub_100005688(&v357, &qword_100131118, &unk_1000ED6E0);
                        }

                        KeyPath = swift_getKeyPath();
                        __chkstk_darwin(KeyPath);
                        v357 = v103;
                        sub_1000DF30C(&qword_100131D80, type metadata accessor for RemoteAlertDashboardContext, &unk_1000EE690);
                        ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

                        swift_unknownObjectRelease();
                        v361 = &off_1001240C0;
                        v360 = v102;
                        v357 = v103;
                        sub_1000DF4FC(&v357, &v366, &unk_100131120, &unk_1000EAAF0);
                        v69 = v349;
                        v74 = *(v349 + 176);
                        v340 = *(v349 + 160);
                        v194 = v340;

                        sub_1000035B4((v69 + 3), &v357, &qword_100131118, &unk_1000ED6E0);

                        if (v360)
                        {
                          sub_100002B38(&qword_100131138, &qword_1000ED598);
                          v195 = swift_dynamicCast();
                          v196 = v353;
                          if (!v195)
                          {
                            v196 = 0;
                          }

                          v339 = v196;
                          v43 = v351;
                        }

                        else
                        {
                          sub_100005688(&v357, &qword_100131118, &unk_1000ED6E0);
                          v339 = 0;
                          v43 = v351;
                        }

                        goto LABEL_116;
                      }
                    }

                    else
                    {
                    }

                    goto LABEL_109;
                  }

                  if (!v86)
                  {

                    v87 = v347;
                    if (v69 && *v69 == _TtC13GameOverlayUI28AccessPointConnectionContext)
                    {
                      swift_beginAccess();
                      sub_1000035B4((v69 + 8), &v357, &unk_100131120, &unk_1000EAAF0);
                      if (!v360)
                      {

                        sub_100005688(&v357, &unk_100131120, &unk_1000EAAF0);
                        goto LABEL_148;
                      }

                      swift_retain_n();
                      sub_100002B38(&qword_10012E0C0, &qword_1000EA820);
                      v97 = type metadata accessor for RemoteAlertAccessPointContext(0);
                      if (swift_dynamicCast())
                      {
                        v98 = v353;
                        sub_1000035B4((v69 + 3), &v357, &qword_100131118, &unk_1000ED6E0);
                        v343 = v97;
                        if (v360)
                        {
                          sub_100002B38(&qword_100131138, &qword_1000ED598);
                          swift_dynamicCast();
                        }

                        else
                        {
                          sub_100005688(&v357, &qword_100131118, &unk_1000ED6E0);
                        }

                        swift_unknownObjectWeakAssign();
                        swift_unknownObjectRelease();
                        v197 = v349;
                        v198 = *(v349 + 160);
                        v199 = v198;
                        sub_1000BD630(v198);
                        v200 = *(&v43->isa + v87);
                        if (v200)
                        {
                          v201 = OBJC_IVAR____TtC13GameOverlayUI29RemoteAlertAccessPointContext_useCase;
                          swift_beginAccess();
                          v202 = v338;
                          (*(v338 + 16))(v334, v98 + v201, v339);
                          v315 = v71;
                          v203 = v197[20];
                          swift_beginAccess();
                          sub_1000035B4((v197 + 13), &v357, &unk_100131120, &unk_1000EAAF0);
                          v204 = v203;
                          v342 = v200;

                          v205 = *(&v351->isa + v347);
                          v206 = v205;
                          v207 = v70;
                          v208 = v206;
                          v209 = v334;
                          v210 = sub_1000D9EC0(v98, v334, v203, v324, &v357, v207, v315, v205);

                          v43 = v351;

                          sub_100005688(&v357, &unk_100131120, &unk_1000EAAF0);
                          (*(v202 + 8))(v209, v339);
                          v211 = v342;
                          [v342 setRootViewController:v210];

                          v87 = v347;
                        }

                        else
                        {
                        }

                        v69 = v197;
                        v73 = v317;
                        v361 = &off_1001240E8;
                        v360 = v343;
                        v357 = v98;

                        sub_1000DF4FC(&v357, &v366, &unk_100131120, &unk_1000EAAF0);
                        v245 = v346;
                        sub_1000BD924(v33);
                        [v33 setInputHardwareEventsDisabled:1];

                        goto LABEL_152;
                      }
                    }

LABEL_148:
                    v154 = *(&v43->isa + v87);
                    v73 = v317;
                    if (v154)
                    {
                      v107 = "Unable to create banner";
                      v108 = v154;
                      v109 = 0xD00000000000001DLL;
                      goto LABEL_150;
                    }

                    goto LABEL_154;
                  }

                  v316 = v15;
                  v343 = v64;
                  v87 = v347;
                  v73 = v317;
                  if (v69 && *v69 == _TtC13GameOverlayUI29InGameBannerConnectionContext)
                  {
                    swift_beginAccess();
                    sub_1000035B4((v69 + 8), &v357, &unk_100131120, &unk_1000EAAF0);
                    if (!v360)
                    {

                      sub_100005688(&v357, &unk_100131120, &unk_1000EAAF0);
                      v115 = *(&v43->isa + v87);
                      if (!v115)
                      {
                        goto LABEL_154;
                      }

                      goto LABEL_113;
                    }

                    swift_retain_n();
                    sub_100002B38(&qword_10012E0C0, &qword_1000EA820);
                    v342 = type metadata accessor for RemoteAlertAccessPointContext(0);
                    if (swift_dynamicCast())
                    {
                      v110 = v355;
                      sub_1000035B4((v69 + 3), &v357, &qword_100131118, &unk_1000ED6E0);
                      v315 = v71;
                      v305 = v70;
                      if (v360)
                      {
                        sub_100002B38(&qword_100131138, &qword_1000ED598);
                        swift_dynamicCast();
                      }

                      else
                      {
                        sub_100005688(&v357, &qword_100131118, &unk_1000ED6E0);
                      }

                      swift_unknownObjectWeakAssign();
                      swift_unknownObjectRelease();
                      v212 = v69[28];
                      v213 = v212;
                      sub_1000BD630(v212);
                      v214 = v69;
                      v215 = *(&v43->isa + v347);
                      if (!v215)
                      {

                        v246 = v346;
                        v69 = v214;
LABEL_218:
                        v361 = &off_1001240E8;
                        v360 = v342;
                        v357 = v110;

                        sub_1000DF4FC(&v357, &v366, &unk_100131120, &unk_1000EAAF0);
                        v295 = v246;
                        sub_1000BD924(v33);
                        [v33 setInputHardwareEventsDisabled:1];

                        v74 = 2;
                        v87 = v347;
                        goto LABEL_164;
                      }

                      v216 = v214[21];
                      v217 = v214[22];
                      v218 = v214[23];
                      v302 = v214[20];
                      v303 = v217;
                      v219 = v214[24];
                      v334 = v214[25];
                      v220 = v214[27];
                      v304 = v214[26];
                      v221 = v214[29];
                      v314 = v214[28];
                      v341 = v221;
                      swift_beginAccess();
                      sub_1000035B4((v214 + 13), &v357, &unk_100131120, &unk_1000EAAF0);
                      v311 = v218;

                      v310 = v216;

                      v298 = v215;
                      v312 = v219;
                      sub_1000304CC(v219, v334);

                      v309 = v220;

                      v307 = v314;

                      v222 = v214[30];
                      v223 = v214[31];
                      v224 = v214[32];
                      v225 = v214[33];
                      v301 = v224;
                      v226 = OBJC_IVAR____TtC13GameOverlayUI29RemoteAlertAccessPointContext_useCase;
                      swift_beginAccess();
                      v227 = *(v338 + 16);
                      v313 = v110;
                      v227(v335, v110 + v226, v339);
                      sub_1000035B4(&v357, &v355, &unk_100131120, &unk_1000EAAF0);
                      v228 = *(&v43->isa + v347);
                      v229 = sub_100002B38(&qword_10012E6A0, &qword_1000EAB60);
                      (*(*(v229 - 8) + 56))(v340, 1, 1, v229);
                      type metadata accessor for ImpedimentFlowDestinationStates();
                      swift_allocObject();
                      v308 = v222;
                      v230 = v222;
                      v231 = v225;
                      v321 = v223;
                      sub_1000304CC(v230, v223);
                      v300 = v228;

                      v352 = ImpedimentFlowDestinationStates.init(completedWelcome:completedCrossUse:completedProfileCreation:lastRecordedSignedInPlayer:lastRecordedSignedInAppStoreDSID:)();
                      State.init(wrappedValue:)();
                      v232 = v365[1];
                      v233 = v336;
                      v234 = v337;
                      v337[2] = v365[0];
                      v234[3] = v232;
                      v235 = v233[6];
                      v236 = type metadata accessor for Game();
                      v237 = *(*(v236 - 8) + 56);
                      v237(&v235[v234], 1, 1, v236);
                      v238 = v234 + v233[16];
                      *(v238 + 32) = 0;
                      *v238 = 0u;
                      *(v238 + 16) = 0u;
                      v299 = v238;
                      v340 = v234 + v233[18];
                      swift_unknownObjectWeakInit();
                      type metadata accessor for GameDashboardLaunchContext();
                      swift_allocObject();
                      *v234 = GameDashboardLaunchContext.init()();
                      v234[1] = 0;
                      v306 = v231;
                      if (v314)
                      {
                        v239 = objc_opt_self();
                        v240 = v307;
                        v241 = [v240 internal];
                        v365[0] = 0;
                        v242 = [v239 archivedDataWithRootObject:v241 requiringSecureCoding:1 error:v365];

                        v243 = v365[0];
                        if (v242)
                        {
                          v314 = v235;
                          static Data._unconditionallyBridgeFromObjectiveC(_:)();

                          v244 = v325;
                          Game.init(with:)();

                          v237(v244, 0, 1, v236);
                          sub_1000DF4FC(v244, &v314[v337], &qword_100132410, &unk_1000E9F30);
                        }

                        else
                        {
                          v247 = v243;
                          _convertNSErrorToError(_:)();

                          swift_willThrow();
                          swift_errorRetain();
                          v248 = Logger.logObject.getter();
                          v249 = static os_log_type_t.error.getter();

                          if (os_log_type_enabled(v248, v249))
                          {
                            v250 = swift_slowAlloc();
                            v251 = swift_slowAlloc();
                            *v250 = 138412290;
                            swift_errorRetain();
                            v252 = _swift_stdlib_bridgeErrorToNSError();
                            *(v250 + 4) = v252;
                            *v251 = v252;
                            _os_log_impl(&_mh_execute_header, v248, v249, "Game could not be serialized: %@", v250, 0xCu);
                            sub_100005688(v251, &qword_100131110, &unk_1000EC870);
                          }

                          else
                          {
                          }
                        }

                        v231 = v306;
                      }

                      v254 = v336;
                      v253 = v337;
                      v325 = v337 + *(v336 + 68);
                      (*(v338 + 32))(v337 + *(v336 + 28), v335, v339);
                      v255 = (v253 + v254[8]);
                      v256 = v303;
                      v257 = v310;
                      v258 = v311;
                      *v255 = v302;
                      v255[1] = v257;
                      v259 = (v253 + v254[9]);
                      *v259 = v256;
                      v259[1] = v258;
                      v260 = (v253 + v254[10]);
                      v261 = v312;
                      v262 = v334;
                      *v260 = v312;
                      v260[1] = v262;
                      v263 = (v253 + v254[13]);
                      v264 = v231;
                      v265 = v308;
                      v266 = v309;
                      *v263 = v304;
                      v263[1] = v266;
                      *(v253 + v254[14]) = v341;
                      v267 = (v253 + v254[11]);
                      v268 = v321;
                      *v267 = v265;
                      v267[1] = v268;
                      v269 = (v253 + v254[12]);
                      *v269 = v301;
                      v269[1] = v264;
                      *(v253 + v254[15]) = v324;

                      sub_1000304CC(v261, v262);

                      sub_1000304CC(v265, v321);

                      sub_1000DF4FC(&v355, v299, &unk_100131120, &unk_1000EAAF0);
                      v270 = v325;
                      v271 = v315;
                      *v325 = v305;
                      *(v270 + 1) = v271;
                      v272 = v300;
                      swift_unknownObjectWeakAssign();

                      v273 = v326;
                      sub_1000DFE10(v253, v326, type metadata accessor for InGameBannerView);
                      v274 = sub_1000DF30C(&unk_100132450, type metadata accessor for InGameBannerView, &unk_1000EA840);
                      v275 = sub_1000DF30C(&qword_10012CFC8, type metadata accessor for RemoteAlertAccessPointContext, &unk_1000EE6AC);
                      v276 = v327;
                      v277 = v342;
                      View.environment<A>(_:)();
                      sub_1000DFD48(v273, type metadata accessor for InGameBannerView);
                      Solarium.init()();
                      v278 = v332;
                      static ViewInputPredicate.! prefix(_:)();
                      sub_100002B38(&qword_100132460, &qword_1000EEFB8);
                      *&v355 = v254;
                      *(&v355 + 1) = v277;
                      *&v356 = v274;
                      *(&v356 + 1) = v275;
                      swift_getOpaqueTypeConformance2();
                      *&v355 = &type metadata for Solarium;
                      *(&v355 + 1) = &protocol witness table for Solarium;
                      swift_getOpaqueTypeConformance2();
                      sub_1000DF35C();
                      v279 = v318;
                      v280 = v319;
                      v281 = v329;
                      View.staticIf<A, B>(_:then:)();
                      (*(v333 + 8))(v278, v279);
                      (*(v328 + 8))(v276, v281);
                      v282 = v320;
                      v283 = *(v320 + 16);
                      v284 = v331;
                      v285 = v316;
                      v283(v331, v280, v316);
                      v286 = objc_allocWithZone(sub_100002B38(&qword_100132480, &qword_1000EEFC8));
                      v286[*((swift_isaMask & *v286) + qword_100135CE0 + 16)] = 1;
                      v283(v330, v284, v285);
                      v287 = UIHostingController.init(rootView:)();
                      v288 = *(v282 + 8);
                      v288(v284, v285);
                      v289 = v287;
                      v290 = [v289 view];
                      v246 = v346;
                      if (v290)
                      {
                        v291 = v290;

                        v292 = [objc_opt_self() clearColor];
                        [v291 setBackgroundColor:v292];

                        sub_10003091C(v308, v321);
                        v293 = sub_10003091C(v312, v334);
                        (v288)(v280, v285, v293);
                        sub_100005688(&v357, &unk_100131120, &unk_1000EAAF0);
                        v294 = v298;
                        [v298 setRootViewController:v289];

                        v43 = v351;
                        v69 = v349;
                        v110 = v313;
                        goto LABEL_218;
                      }

                      goto LABEL_220;
                    }
                  }

                  else
                  {
                  }

                  v115 = *(&v43->isa + v87);
                  if (!v115)
                  {
                    goto LABEL_154;
                  }

LABEL_113:
                  v107 = " game mode banner";
                  v108 = v115;
                  v109 = 0xD000000000000017;
                  goto LABEL_150;
                }

                v343 = v64;
                v43 = v351;
                if ((v86 - 5) < 2)
                {
                  v87 = v347;
                  if (!v69 || *v69 != _TtC13GameOverlayUI31AuthenticationConnectionContext || (v88 = v69[21]) == 0)
                  {

                    v99 = *(&v43->isa + v87);
                    if (!v99)
                    {
                      v74 = 2;
                      v73 = v317;
                      goto LABEL_165;
                    }

                    v100 = v99;
                    v101 = sub_1000D9A7C(0xD000000000000023, 0x80000001000E89F0);
                    [v100 setRootViewController:v101];

                    v74 = 2;
LABEL_164:
                    v73 = v317;
                    v91 = *(&v43->isa + v87);
                    if (!v91)
                    {
                      goto LABEL_165;
                    }

                    goto LABEL_67;
                  }

                  v342 = v69[20];
                  sub_1000035B4((v69 + 3), &v357, &qword_100131118, &unk_1000ED6E0);
                  if (v360)
                  {

                    sub_100002B38(&qword_100131130, &qword_1000EF000);
                    if (swift_dynamicCast())
                    {
                      v89 = v355;
                    }

                    else
                    {
                      v89 = 0;
                    }
                  }

                  else
                  {

                    sub_100005688(&v357, &qword_100131118, &unk_1000ED6E0);
                    v89 = 0;
                  }

                  v139 = *(&v43->isa + v87);
                  if (!v139)
                  {

                    swift_unknownObjectRelease();

                    v74 = 2;
                    goto LABEL_164;
                  }

                  v315 = v71;
                  v140 = swift_allocObject();
                  swift_unknownObjectWeakInit();
                  v141 = swift_allocObject();
                  v141[2] = v43;
                  v141[3] = v89;
                  v142 = v342;
                  v141[4] = v342;
                  v141[5] = v88;
                  v141[6] = v140;
                  swift_unknownObjectWeakInit();
                  v358 = v142;
                  v359 = v88;
                  v360 = sub_1000DF610;
                  v361 = v141;
                  v143 = sub_100002B38(&qword_10012E6A0, &qword_1000EAB60);
                  (*(*(v143 - 8) + 56))(v340, 1, 1, v143);
                  type metadata accessor for ImpedimentFlowDestinationStates();
                  swift_allocObject();
                  v342 = v89;
                  swift_unknownObjectRetain();
                  swift_bridgeObjectRetain_n();
                  v144 = v139;
                  v145 = v43;

                  v353 = ImpedimentFlowDestinationStates.init(completedWelcome:completedCrossUse:completedProfileCreation:lastRecordedSignedInPlayer:lastRecordedSignedInAppStoreDSID:)();
                  State.init(wrappedValue:)();

                  v362 = v355;
                  v146 = static SafeAreaRegions.all.getter();
                  v147 = static Edge.Set.all.getter();
                  v363 = v146;
                  v364 = v147;
                  sub_1000035B4(&v357, &v355, &qword_100132488, &qword_1000EF008);
                  v148 = objc_allocWithZone(sub_100002B38(&qword_100132490, &qword_1000EF010));
                  v148[*((swift_isaMask & *v148) + qword_100135CE0 + 16)] = 1;
                  sub_1000035B4(&v355, &v353, &qword_100132488, &qword_1000EF008);
                  v149 = UIHostingController.init(rootView:)();
                  sub_100005688(&v355, &qword_100132488, &qword_1000EF008);
                  v150 = v149;
                  v151 = [v150 view];
                  if (!v151)
                  {
                    __break(1u);
LABEL_220:
                    __break(1u);
                    return;
                  }

                  v152 = v151;

                  v153 = [objc_opt_self() clearColor];
                  [v152 setBackgroundColor:v153];

                  sub_100005688(&v357, &qword_100132488, &qword_1000EF008);
                  [v144 setRootViewController:v150];
                  swift_unknownObjectRelease();
                  v69 = v349;

                  v74 = 2;
                  v43 = v351;
LABEL_163:
                  v87 = v347;
                  goto LABEL_164;
                }

                v87 = v347;
                v73 = v317;
                if (v86 == 7)
                {

                  if (v69)
                  {
                    if (*v69 == _TtC13GameOverlayUI31AuthenticationConnectionContext)
                    {
                      v95 = v69[23];
                      if (v95)
                      {
                        v96 = v69[22];
                        sub_1000035B4((v69 + 3), &v357, &qword_100131118, &unk_1000ED6E0);
                        if (v360)
                        {

                          sub_100002B38(&qword_100131130, &qword_1000EF000);
                          swift_dynamicCast();
                        }

                        else
                        {

                          sub_100005688(&v357, &qword_100131118, &unk_1000ED6E0);
                        }

                        v156 = *(&v43->isa + v87);
                        if (!v156)
                        {
                          v192 = v349;

                          v69 = v192;
                          swift_unknownObjectRelease();
                          goto LABEL_152;
                        }

                        v157 = v156;
                        v155 = sub_1000D9C24(v33, v96, v95);

                        [v157 setRootViewController:v155];
                        swift_unknownObjectRelease();
                        v69 = v349;

                        v73 = v317;
LABEL_151:

                        goto LABEL_152;
                      }
                    }
                  }

                  v111 = *(&v43->isa + v87);
                  if (v111)
                  {
                    v107 = "Unable to create access point";
                    v108 = v111;
                    v109 = 0xD00000000000002ALL;
                    goto LABEL_150;
                  }

LABEL_154:
                  v74 = 2;
                  goto LABEL_165;
                }

                if (v69)
                {
                  swift_beginAccess();
                  sub_1000035B4((v69 + 8), &v357, &unk_100131120, &unk_1000EAAF0);
                  if (v360)
                  {

                    sub_100002B38(&qword_10012E0C0, &qword_1000EA820);
                    v104 = type metadata accessor for RemoteAlertGameModeBannerContext(0);
                    if (swift_dynamicCast())
                    {
                      v315 = v71;
                      v105 = v353;
                      sub_1000035B4((v69 + 3), &v357, &qword_100131118, &unk_1000ED6E0);
                      if (v360)
                      {
                        sub_100002B38(&qword_100131138, &qword_1000ED598);
                        swift_dynamicCast();
                      }

                      else
                      {
                        sub_100005688(&v357, &qword_100131118, &unk_1000ED6E0);
                      }

                      v158 = swift_getKeyPath();
                      __chkstk_darwin(v158);
                      v159 = OBJC_IVAR____TtC13GameOverlayUI32RemoteAlertGameModeBannerContext___observationRegistrar;
                      v357 = v105;
                      sub_1000DF30C(&unk_100132430, type metadata accessor for RemoteAlertGameModeBannerContext, &unk_1000EE674);
                      v342 = v159;
                      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

                      swift_unknownObjectRelease();
                      v43 = v351;
                      v160 = *(&v351->isa + v347);
                      if (v160)
                      {
                        v161 = *(v105 + 32);
                        v162 = v160;
                        v163 = v161;
                        v164 = sub_1000DB268(v105, v163);

                        [v162 setRootViewController:v164];
                      }

                      v361 = &off_100124070;
                      v360 = v104;
                      v357 = v105;

                      sub_1000DF4FC(&v357, &v366, &unk_100131120, &unk_1000EAAF0);
                      [v33 setInputHardwareEventsDisabled:1];
                      swift_getKeyPath();
                      v357 = v105;
                      ObservationRegistrar.access<A, B>(_:keyPath:)();

                      v69 = v349;

                      v74 = *(v105 + 72);

                      goto LABEL_163;
                    }

                    v87 = v347;
                  }

                  else
                  {

                    sub_100005688(&v357, &unk_100131120, &unk_1000EAAF0);
                  }
                }

                else
                {
                }

                v138 = *(&v43->isa + v87);
                if (v138)
                {
                  v107 = "y is not supported";
                  v108 = v138;
                  v109 = 0xD000000000000021;
                  goto LABEL_150;
                }

                goto LABEL_154;
              }
            }

            else
            {
              sub_100005688(&v355, &qword_100131118, &unk_1000ED6E0);
            }

            v324 = 0;
            goto LABEL_57;
          }
        }

        else
        {
          sub_100005688(&v355, &qword_100131118, &unk_1000ED6E0);
        }

        v68 = 0;
        goto LABEL_52;
      }
    }

    else
    {
      v368 = 0;
      v65 = 0uLL;
      v366 = 0u;
      v367 = 0u;
    }

    v355 = v65;
    v356 = v65;
    sub_100005688(&v355, &qword_100131118, &unk_1000ED6E0);
    v355 = 0u;
    v356 = 0u;
    sub_100005688(&v355, &qword_100131118, &unk_1000ED6E0);
    v324 = 0;
    v64 = 0;
    v69 = 0;
    v355 = 0u;
    v356 = 0u;
    goto LABEL_28;
  }

  if (qword_10012CC18 != -1)
  {
    swift_once();
  }

  v54 = type metadata accessor for Logger();
  sub_100011F80(v54, qword_100135C88);
  v55 = a1;
  v351 = Logger.logObject.getter();
  v56 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v351, v56))
  {
    v57 = swift_slowAlloc();
    v58 = swift_slowAlloc();
    *v57 = 138412290;
    *(v57 + 4) = v55;
    *v58 = v55;
    v59 = v55;
    _os_log_impl(&_mh_execute_header, v351, v56, "Expected scene to be SBSUIRemoteAlertScene but got %@", v57, 0xCu);
    sub_100005688(v58, &qword_100131110, &unk_1000EC870);
  }

  v60 = v351;
}

void sub_1000DEBA4()
{
  v1 = v0;
  if (qword_10012CC18 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100011F80(v2, qword_100135C88);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Remote alert scene sceneDidBecomeActive", v5, 2u);
  }

  v6 = *&v1[OBJC_IVAR____TtC13GameOverlayUI37GameOverlayUIRemoteAlertSceneDelegate_window];
  if (v6)
  {
    [v6 setAlpha:0.0];
  }

  v7 = objc_opt_self();
  v8 = swift_allocObject();
  *(v8 + 16) = v1;
  v11[4] = sub_1000DF19C;
  v11[5] = v8;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 1107296256;
  v11[2] = sub_1000D431C;
  v11[3] = &unk_1001243C0;
  v9 = _Block_copy(v11);
  v10 = v1;

  [v7 animateWithDuration:v9 animations:0.3];
  _Block_release(v9);
}

void sub_1000DED6C()
{
  v1 = v0;
  if (qword_10012CC18 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100011F80(v2, qword_100135C88);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Remote alert scene sceneDidDisconnect", v5, 2u);
  }

  v6 = *(v1 + OBJC_IVAR____TtC13GameOverlayUI37GameOverlayUIRemoteAlertSceneDelegate_window);
  *(v1 + OBJC_IVAR____TtC13GameOverlayUI37GameOverlayUIRemoteAlertSceneDelegate_window) = 0;
}

void sub_1000DEE68(const char *a1)
{
  if (qword_10012CC18 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100011F80(v2, qword_100135C88);
  oslog = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, oslog, v3, a1, v4, 2u);
  }
}

double sub_1000DEF58(uint64_t a1)
{
  v2 = type metadata accessor for ZoomCoordinator.DashboardVisibilityState();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000D4360(a1);
  if (v6)
  {
    v14 = v6;
    if (([v6 events] & 0x10) != 0)
    {
      if (qword_10012CC18 != -1)
      {
        swift_once();
      }

      v9 = type metadata accessor for Logger();
      sub_100011F80(v9, qword_100135C88);
      v10 = Logger.logObject.getter();
      v11 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v10, v11))
      {
        v12 = swift_slowAlloc();
        *v12 = 0;
        _os_log_impl(&_mh_execute_header, v10, v11, "Will dismiss remote alert scene in response to homeButton event.", v12, 2u);
      }

      type metadata accessor for ZoomCoordinator();
      static ZoomCoordinator.shared.getter();
      (*(v3 + 104))(v5, enum case for ZoomCoordinator.DashboardVisibilityState.closed(_:), v2);
      dispatch thunk of ZoomCoordinator.dashboardVisibility.setter();
    }

    else
    {
      v8 = v14;
    }
  }

  return result;
}

uint64_t sub_1000DF158(uint64_t result, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return v3;
}

uint64_t sub_1000DF164()
{

  return swift_deallocObject();
}

uint64_t sub_1000DF1A4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000DF1BC()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1000DF20C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_100014BAC;

  return sub_1000D7048(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1000DF30C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1000DF35C()
{
  result = qword_100132468;
  if (!qword_100132468)
  {
    sub_100005144(&qword_100132460, &qword_1000EEFB8);
    type metadata accessor for InGameBannerView(255);
    type metadata accessor for RemoteAlertAccessPointContext(255);
    sub_1000DF30C(&unk_100132450, type metadata accessor for InGameBannerView, &unk_1000EA840);
    sub_1000DF30C(&qword_10012CFC8, type metadata accessor for RemoteAlertAccessPointContext, &unk_1000EE6AC);
    swift_getOpaqueTypeConformance2();
    sub_1000DF498();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100132468);
  }

  return result;
}

unint64_t sub_1000DF498()
{
  result = qword_100132470;
  if (!qword_100132470)
  {
    sub_100005144(&qword_100132478, &qword_1000EEFC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100132470);
  }

  return result;
}

uint64_t sub_1000DF4FC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100002B38(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t sub_1000DF588()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1000DF5C0()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1000DF620()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1000DF678(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100014BAC;

  return sub_1000D7E5C(a1, v4, v5, v6);
}

unint64_t sub_1000DF7DC()
{
  result = qword_1001324D0;
  if (!qword_1001324D0)
  {
    sub_100005144(&qword_1001324C8, &qword_1000EF0C8);
    type metadata accessor for AccessPointView(255);
    type metadata accessor for RemoteAlertAccessPointContext(255);
    sub_1000DF30C(&qword_1001324C0, type metadata accessor for AccessPointView, &unk_1000EDDA0);
    sub_1000DF30C(&qword_10012CFC8, type metadata accessor for RemoteAlertAccessPointContext, &unk_1000EE6AC);
    swift_getOpaqueTypeConformance2();
    sub_1000DF498();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001324D0);
  }

  return result;
}

uint64_t sub_1000DF940()
{

  if (*(v0 + 56))
  {
    sub_10002E6CC((v0 + 32));
  }

  swift_unknownObjectRelease();

  return swift_deallocObject();
}

unint64_t sub_1000DF9D0()
{
  result = qword_100132520;
  if (!qword_100132520)
  {
    sub_100005144(&qword_100132510, &qword_1000EF148);
    sub_1000DF30C(&qword_100132518, type metadata accessor for DashboardOverlayView, &unk_1000ED900);
    sub_1000DF498();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100132520);
  }

  return result;
}

uint64_t sub_1000DFA94()
{

  if (*(v0 + 48))
  {
    sub_10002E6CC((v0 + 24));
  }

  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1000DFAF4()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1000DFB34(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100011720;

  return sub_1000D885C(a1, v4, v5, v6);
}

uint64_t sub_1000DFBE8()
{

  return swift_deallocObject();
}

id sub_1000DFC30()
{
  result = *(*(v0 + 16) + OBJC_IVAR____TtC13GameOverlayUI37GameOverlayUIRemoteAlertSceneDelegate_window);
  if (result)
  {
    return [result setAlpha:?];
  }

  return result;
}

unint64_t sub_1000DFC8C()
{
  result = qword_100132588;
  if (!qword_100132588)
  {
    sub_100005144(&qword_100132578, &qword_1000EF200);
    sub_1000DF30C(&qword_100132580, type metadata accessor for GameModeBannerView, &unk_1000EA550);
    sub_1000DF498();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100132588);
  }

  return result;
}

uint64_t sub_1000DFD48(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1000DFDA8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1000DFE10(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1000DFEF0(unsigned __int8 a1, uint64_t a2, void *a3)
{
  v6 = 0xD00000000000001DLL;
  v7 = a1;
  if (a1 <= 3u)
  {
    v15 = "action:in-game-banner-overlay";
    v16 = 0xD000000000000018;
    if (a1 != 2)
    {
      v16 = 0xD00000000000001ALL;
      v15 = "action:dashboard-overlay";
    }

    if (a1)
    {
      v17 = "action:access-point-overlay";
    }

    else
    {
      v6 = 0xD00000000000001BLL;
      v17 = &off_1000E6A60;
    }

    if (a1 <= 1u)
    {
      v13 = v6;
    }

    else
    {
      v13 = v16;
    }

    if (v7 <= 1)
    {
      v14 = v17;
    }

    else
    {
      v14 = v15;
    }
  }

  else
  {
    v8 = "action:authentication-overlay";
    v9 = 0xD000000000000019;
    v10 = "action:onboarding-overlay";
    v11 = 0xD000000000000028;
    if (a1 != 7)
    {
      v11 = 0xD00000000000001FLL;
      v10 = "sharing-reprompt-overlay";
    }

    if (a1 != 6)
    {
      v9 = v11;
      v8 = v10;
    }

    v12 = "action:multiplayer-overlay";
    if (a1 == 4)
    {
      v6 = 0xD000000000000025;
    }

    else
    {
      v12 = "d-multiplayer-overlay";
    }

    if (a1 <= 5u)
    {
      v13 = v6;
    }

    else
    {
      v13 = v9;
    }

    if (v7 <= 5)
    {
      v14 = v12;
    }

    else
    {
      v14 = v8;
    }
  }

  v18 = v14 | 0x8000000000000000;
  String.append(_:)(*&v13);

  v19._countAndFlagsBits = 58;
  v19._object = 0xE100000000000000;
  String.append(_:)(v19);
  [v3 pid];
  v20._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v20);

  v21._countAndFlagsBits = 58;
  v21._object = 0xE100000000000000;
  String.append(_:)(v21);
  if (a3)
  {
    v22 = a3;
  }

  else
  {
    a2 = 0;
    v22 = 0xE000000000000000;
  }

  v23._countAndFlagsBits = a2;
  v23._object = v22;
  String.append(_:)(v23);

  return 0;
}

uint64_t sub_1000E00D4(unsigned __int8 a1)
{
  v2 = 0xD00000000000001DLL;
  v3 = a1;
  if (a1 <= 3u)
  {
    v11 = "action:in-game-banner-overlay";
    v12 = 0xD000000000000018;
    if (a1 != 2)
    {
      v12 = 0xD00000000000001ALL;
      v11 = "action:dashboard-overlay";
    }

    if (a1)
    {
      v13 = "action:access-point-overlay";
    }

    else
    {
      v2 = 0xD00000000000001BLL;
      v13 = &off_1000E6A60;
    }

    if (a1 <= 1u)
    {
      v9 = v2;
    }

    else
    {
      v9 = v12;
    }

    if (v3 <= 1)
    {
      v10 = v13;
    }

    else
    {
      v10 = v11;
    }
  }

  else
  {
    v4 = "action:authentication-overlay";
    v5 = 0xD000000000000019;
    v6 = "action:onboarding-overlay";
    v7 = 0xD000000000000028;
    if (a1 != 7)
    {
      v7 = 0xD00000000000001FLL;
      v6 = "sharing-reprompt-overlay";
    }

    if (a1 != 6)
    {
      v5 = v7;
      v4 = v6;
    }

    v8 = "action:multiplayer-overlay";
    if (a1 == 4)
    {
      v2 = 0xD000000000000025;
    }

    else
    {
      v8 = "d-multiplayer-overlay";
    }

    if (a1 <= 5u)
    {
      v9 = v2;
    }

    else
    {
      v9 = v5;
    }

    if (v3 <= 5)
    {
      v10 = v8;
    }

    else
    {
      v10 = v4;
    }
  }

  v14 = v10 | 0x8000000000000000;
  String.append(_:)(*&v9);

  v15._countAndFlagsBits = 58;
  v15._object = 0xE100000000000000;
  String.append(_:)(v15);
  [v1 pid];
  v16._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v16);

  return 0;
}

uint64_t sub_1000E0268()
{
  v1 = [objc_opt_self() processHandleForAuditToken:v0];
  sub_1000E0E90();
  v2 = v1;
  v3 = sub_1000E1250(v2);

  v4 = [v3 currentState];
  if (v4)
  {
    v5 = v4;
    v6 = [v4 isRunning];

    if (v6)
    {
      return 1;
    }
  }

  else
  {
  }

  return 0;
}

uint64_t sub_1000E0480(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 16);
  if (*(v5 + 16) && (v6 = sub_1000C547C(a1, a2), (v7 & 1) != 0))
  {
    v8 = *(*(v5 + 56) + 8 * v6);
    swift_endAccess();
    swift_beginAccess();

    sub_1000E11B8(a1, a2);
    swift_endAccess();

    return v8;
  }

  else
  {
    swift_endAccess();
    return 0;
  }
}

uint64_t sub_1000E0554(void *a1)
{
  *(v1 + 56) = &_swiftEmptyDictionarySingleton;
  v2 = 0uLL;
  *(v1 + 64) = 0u;
  *(v1 + 80) = 0u;
  *(v1 + 96) = 0u;
  *(v1 + 112) = 0u;
  *(v1 + 128) = 0u;
  *(v1 + 144) = 0u;
  if (!a1)
  {
    *(v1 + 16) = 0;
LABEL_6:
    v4 = 0uLL;
    goto LABEL_7;
  }

  *(v1 + 16) = [a1 remoteToken];
  if (![a1 remoteTarget])
  {

    v2 = 0uLL;
    goto LABEL_6;
  }

  _bridgeAnyObjectToAny(_:)();

  swift_unknownObjectRelease();
  v2 = v6;
  v4 = v7;
LABEL_7:
  *(v1 + 24) = v2;
  *(v1 + 40) = v4;
  return v1;
}

uint64_t sub_1000E0618()
{
  sub_100005688(v0 + 24, &qword_100131118, &unk_1000ED6E0);

  sub_100005688(v0 + 64, &unk_100131120, &unk_1000EAAF0);
  sub_100005688(v0 + 104, &unk_100131120, &unk_1000EAAF0);

  return swift_deallocClassInstance();
}

uint64_t sub_1000E06DC()
{
}

uint64_t sub_1000E070C()
{
  sub_100005688(v0 + 24, &qword_100131118, &unk_1000ED6E0);

  sub_100005688(v0 + 64, &unk_100131120, &unk_1000EAAF0);
  sub_100005688(v0 + 104, &unk_100131120, &unk_1000EAAF0);

  return v0;
}

uint64_t sub_1000E07A4()
{
  sub_1000E070C();

  return swift_deallocClassInstance();
}

uint64_t sub_1000E0804()
{
  sub_100005688(v0 + 24, &qword_100131118, &unk_1000ED6E0);

  sub_100005688(v0 + 64, &unk_100131120, &unk_1000EAAF0);
  sub_100005688(v0 + 104, &unk_100131120, &unk_1000EAAF0);

  return swift_deallocClassInstance();
}

uint64_t sub_1000E08D0(void *a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 176) = 0;
  *(v3 + 184) = 0;
  *(v3 + 192) = 0;
  *(v3 + 200) = 0xF000000000000000;
  *(v3 + 208) = 0u;
  *(v3 + 224) = 0u;
  *(v3 + 240) = 0;
  *(v3 + 248) = 0xF000000000000000;
  *(v3 + 256) = 0;
  *(v3 + 264) = 0;
  *(v3 + 160) = a2;
  *(v3 + 168) = a3;
  return sub_1000E0554(a1);
}

uint64_t sub_1000E08F4()
{

  sub_10003091C(*(v0 + 192), *(v0 + 200));

  sub_10003091C(*(v0 + 240), *(v0 + 248));
}

uint64_t sub_1000E0954()
{
  sub_100005688(v0 + 24, &qword_100131118, &unk_1000ED6E0);

  sub_100005688(v0 + 64, &unk_100131120, &unk_1000EAAF0);
  sub_100005688(v0 + 104, &unk_100131120, &unk_1000EAAF0);

  sub_10003091C(*(v0 + 192), *(v0 + 200));

  sub_10003091C(*(v0 + 240), *(v0 + 248));

  return v0;
}

uint64_t sub_1000E0A1C()
{
  sub_1000E0954();

  return swift_deallocClassInstance();
}

void sub_1000E0A74()
{
  v1 = *(v0 + 168);
}

id *sub_1000E0AA4()
{
  sub_100005688((v0 + 3), &qword_100131118, &unk_1000ED6E0);

  sub_100005688((v0 + 8), &unk_100131120, &unk_1000EAAF0);
  sub_100005688((v0 + 13), &unk_100131120, &unk_1000EAAF0);

  return v0;
}

uint64_t sub_1000E0B3C()
{
  sub_1000E0AA4();

  return swift_deallocClassInstance();
}

uint64_t sub_1000E0B94()
{
  type metadata accessor for ConnectionContextManager();
  v0 = swift_allocObject();
  *(v0 + 16) = &_swiftEmptyDictionarySingleton;
  type metadata accessor for OverlayBootstrap(0);
  v1 = swift_allocObject();
  *(v1 + 16) = makeJSNativeIntentDispatcher()();
  v2 = OBJC_IVAR____TtC13GameOverlayUI16OverlayBootstrap__cachedBootstrapResult;
  v3 = type metadata accessor for BootstrapResult();
  v4 = *(*(v3 - 8) + 56);
  v4(v1 + v2, 1, 1, v3);
  v4(v1 + v2, 1, 1, v3);
  result = ObservationRegistrar.init()();
  *(v0 + 24) = v1;
  qword_100135CF0 = v0;
  return result;
}

uint64_t sub_1000E0C84()
{

  return swift_deallocClassInstance();
}

uint64_t getEnumTagSinglePayload for DashboardConnectionContext.DismissBehavior(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_20;
  }

  v2 = a2 + 2;
  if (a2 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if (v2 >> 8 < 0xFF)
  {
    v3 = 1;
  }

  if (v2 >= 0x100)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4 <= 1)
  {
    if (!v4)
    {
      goto LABEL_20;
    }

    v5 = a1[1];
    if (!a1[1])
    {
      goto LABEL_20;
    }

    return (*a1 | (v5 << 8)) - 2;
  }

  if (v4 == 2)
  {
    v5 = *(a1 + 1);
    if (*(a1 + 1))
    {
      return (*a1 | (v5 << 8)) - 2;
    }
  }

  else
  {
    v5 = *(a1 + 1);
    if (v5)
    {
      return (*a1 | (v5 << 8)) - 2;
    }
  }

LABEL_20:
  v7 = *a1;
  v8 = v7 >= 2;
  v9 = (v7 + 2147483646) & 0x7FFFFFFF;
  if (!v8)
  {
    v9 = -1;
  }

  if (v9 + 1 >= 2)
  {
    return v9;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for DashboardConnectionContext.DismissBehavior(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 2;
  if (a3 + 2 >= 0xFFFF00)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (v3 >> 8 < 0xFF)
  {
    v4 = 1;
  }

  if (v3 >= 0x100)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 < 0xFE)
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(result + 1) = v6;
      }

      else
      {
        *(result + 1) = v6;
      }
    }

    else if (v5)
    {
      *(result + 1) = v6;
    }

    return result;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_22;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v5)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_22:
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_1000E0E4C(unsigned __int8 *a1)
{
  v1 = *a1;
  v2 = v1 >= 2;
  v3 = (v1 + 2147483646) & 0x7FFFFFFF;
  if (v2)
  {
    return (v3 + 1);
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_1000E0E68(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 1;
  }

  return result;
}

unint64_t sub_1000E0E90()
{
  result = qword_100132C88;
  if (!qword_100132C88)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100132C88);
  }

  return result;
}

uint64_t sub_1000E0EDC(uint64_t (*a1)(void))
{
  a1();

  return _swift_stdlib_bridgeErrorToNSError();
}

uint64_t sub_1000E0F14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = sub_1000C547C(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v20 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1000CF354();
      v10 = v20;
    }

    v11 = *(v10 + 56);
    v12 = type metadata accessor for RemoteAlertRequest(0);
    v19 = *(v12 - 8);
    sub_10003F35C(v11 + *(v19 + 72) * v8, a3);
    sub_10002C750(v8, v10);
    *v4 = v10;
    v13 = *(v19 + 56);
    v14 = a3;
    v15 = 0;
    v16 = v12;
  }

  else
  {
    v17 = type metadata accessor for RemoteAlertRequest(0);
    v13 = *(*(v17 - 8) + 56);
    v16 = v17;
    v14 = a3;
    v15 = 1;
  }

  return v13(v14, v15, 1, v16);
}

uint64_t sub_1000E106C(void *a1)
{
  v2 = v1;
  v3 = *v1;
  if ((*v1 & 0xC000000000000001) == 0)
  {
    v13 = sub_1000C55E0(a1);
    if (v14)
    {
      v3 = v13;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v8 = *v1;
      v17 = *v1;
      if (isUniquelyReferenced_nonNull_native)
      {
LABEL_10:

        v12 = *(*(v8 + 56) + 8 * v3);
        sub_10002C93C(v3, v8);
        goto LABEL_11;
      }

LABEL_15:
      sub_1000CF704();
      v8 = v17;
      goto LABEL_10;
    }

    return 0;
  }

  if (v3 < 0)
  {
    v4 = *v1;
  }

  else
  {
    v4 = v3 & 0xFFFFFFFFFFFFFF8;
  }

  v5 = a1;
  v6 = __CocoaDictionary.lookup(_:)();

  if (!v6)
  {
    return 0;
  }

  swift_unknownObjectRelease();

  v7 = __CocoaDictionary.count.getter();
  v8 = sub_1000CCFC8(v4, v7);

  v9 = sub_1000C55E0(v5);
  v11 = v10;

  if ((v11 & 1) == 0)
  {
    __break(1u);
    goto LABEL_15;
  }

  v12 = *(*(v8 + 56) + 8 * v9);
  sub_10002C93C(v9, v8);

LABEL_11:
  *v2 = v8;
  return v12;
}

uint64_t sub_1000E11B8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = sub_1000C547C(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *v2;
  v11 = *v3;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_1000CF868();
    v8 = v11;
  }

  v9 = *(*(v8 + 56) + 8 * v6);
  sub_1000321E8(v6, v8);
  *v3 = v8;
  return v9;
}

id sub_1000E1250(uint64_t a1)
{
  v5 = 0;
  v1 = [swift_getObjCClassFromMetadata() handleForLegacyHandle:a1 error:&v5];
  if (v1)
  {
    v2 = v5;
  }

  else
  {
    v3 = v5;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return v1;
}

BOOL sub_1000E1338(int a1, int a2, int a3)
{
  if (qword_100135B90 == -1)
  {
    v3 = dword_100135B80 < a1;
    if (dword_100135B80 > a1)
    {
      return 1;
    }
  }

  else
  {
    v5 = a3;
    v6 = a2;
    sub_1000E18C0();
    a2 = v6;
    a3 = v5;
    v3 = dword_100135B80 < a1;
    if (dword_100135B80 > a1)
    {
      return 1;
    }
  }

  if (v3)
  {
    return 0;
  }

  if (dword_100135B84 > a2)
  {
    return 1;
  }

  if (dword_100135B84 < a2)
  {
    return 0;
  }

  return dword_100135B88 >= a3;
}

uint64_t sub_1000E13F8(int a1, int a2, int a3, int a4)
{
  if (qword_100135B98 == -1)
  {
    if (qword_100135BA0)
    {
      return _availability_version_check();
    }
  }

  else
  {
    v5 = a4;
    v6 = a3;
    v7 = a2;
    sub_1000E18D8();
    a2 = v7;
    a3 = v6;
    a4 = v5;
    if (qword_100135BA0)
    {
      return _availability_version_check();
    }
  }

  if (qword_100135B90 != -1)
  {
    v9 = a4;
    v10 = a3;
    v11 = a2;
    sub_1000E18C0();
    a3 = v10;
    a4 = v9;
    v8 = dword_100135B80 < v11;
    if (dword_100135B80 > v11)
    {
      return 1;
    }

LABEL_7:
    if (!v8)
    {
      if (dword_100135B84 > a3)
      {
        return 1;
      }

      if (dword_100135B84 >= a3)
      {
        return dword_100135B88 >= a4;
      }
    }

    return 0;
  }

  v8 = dword_100135B80 < a2;
  if (dword_100135B80 <= a2)
  {
    goto LABEL_7;
  }

  return 1;
}

uint64_t sub_1000E158C(uint64_t result)
{
  v1 = qword_100135BA0;
  if (qword_100135BA0)
  {
    v2 = result == 0;
  }

  else
  {
    v2 = 0;
  }

  if (!v2)
  {
    if (&__availability_version_check)
    {
      v1 = &__availability_version_check;
      qword_100135BA0 = &__availability_version_check;
    }

    if (v1)
    {
      v3 = result == 0;
    }

    else
    {
      v3 = 0;
    }

    if (!v3)
    {
      result = dlsym(0xFFFFFFFFFFFFFFFELL, "kCFAllocatorNull");
      if (result)
      {
        v4 = *result;
        result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFDataCreateWithBytesNoCopy");
        if (result)
        {
          v5 = result;
          v6 = dlsym(0xFFFFFFFFFFFFFFFELL, "CFPropertyListCreateWithData");
          result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFPropertyListCreateFromXMLData");
          if (v6 | result)
          {
            v7 = result;
            result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringCreateWithCStringNoCopy");
            if (result)
            {
              v8 = result;
              result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFDictionaryGetValue");
              if (result)
              {
                v9 = result;
                result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFGetTypeID");
                if (result)
                {
                  v10 = result;
                  result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringGetTypeID");
                  if (result)
                  {
                    v11 = result;
                    result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringGetCString");
                    v27 = result;
                    if (result)
                    {
                      result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFRelease");
                      if (result)
                      {
                        v12 = result;
                        result = fopen("/System/Library/CoreServices/SystemVersion.plist", "r");
                        if (result)
                        {
                          v13 = result;
                          v26 = v12;
                          fseek(result, 0, 2);
                          v14 = ftell(v13);
                          if (v14 < 0)
                          {
                            v16 = 0;
                          }

                          else
                          {
                            v15 = v14;
                            rewind(v13);
                            v16 = malloc(v15);
                            if (v16)
                            {
                              v25 = v16;
                              if (fread(v16, 1uLL, v15, v13) == v15 && (v17 = v5(0, v25, v15, v4)) != 0)
                              {
                                v18 = v17;
                                if (v6)
                                {
                                  v19 = (v6)(0, v17, 0, 0, 0);
                                }

                                else
                                {
                                  v19 = v7(0, v17, 0, 0);
                                }

                                v20 = v19;
                                if (v19)
                                {
                                  v21 = v8(0, "ProductVersion", 1536, v4);
                                  if (v21)
                                  {
                                    v22 = v21;
                                    v23 = v9(v20, v21);
                                    (v26)(v22);
                                    if (v23)
                                    {
                                      v24 = v10(v23);
                                      if (v24 == v11())
                                      {
                                        if (v27(v23, v28, 32, 134217984))
                                        {
                                          sscanf(v28, "%d.%d.%d", &dword_100135B80, &dword_100135B84, &dword_100135B88);
                                        }
                                      }
                                    }
                                  }

                                  (v26)(v20);
                                }

                                (v26)(v18);
                                v16 = v25;
                              }

                              else
                              {
                                v16 = v25;
                              }
                            }
                          }

                          free(v16);
                          return fclose(v13);
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

  return result;
}

uint64_t View.onChange<A>(of:initial:_:)()
{
  return View.onChange<A>(of:initial:_:)();
}

{
  return View.onChange<A>(of:initial:_:)();
}

uint64_t View.staticIf<A, B>(_:then:)()
{
  return View.staticIf<A, B>(_:then:)();
}

{
  return View.staticIf<A, B>(_:then:)();
}

uint64_t ForEach<>.init(_:content:)()
{
  return ForEach<>.init(_:content:)();
}

{
  return ForEach<>.init(_:content:)();
}

uint64_t Dependency.init<A>(satisfying:with:)()
{
  return Dependency.init<A>(satisfying:with:)();
}

{
  return Dependency.init<A>(satisfying:with:)();
}

{
  return Dependency.init<A>(satisfying:with:)();
}