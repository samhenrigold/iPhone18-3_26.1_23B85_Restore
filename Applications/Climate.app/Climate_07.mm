uint64_t sub_1000978F8(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100097918(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 8) = v3;
  return result;
}

unint64_t sub_100097958()
{
  result = qword_100117608;
  if (!qword_100117608)
  {
    type metadata accessor for URL();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100117608);
  }

  return result;
}

uint64_t sub_1000979E0()
{
  v1 = *(v0 + OBJC_IVAR____TtC7Climate25ClimateCabinServiceButton_cabin);
  v2 = [v1 maxACOn];
  v3 = [v1 maxACOnRestricted];
  v4 = [v1 maxACOnInvalid];
  v5 = [v1 maxACOnDisabled];
  if (v2)
  {
    if (v3)
    {
      v6 = 5;
      if (v4)
      {
        v6 = 13;
      }

      if ((v5 & 1) == 0)
      {
        return v6;
      }

      return v6 | 0x10;
    }

    v6 = 9;
    if (!v4)
    {
      v6 = 1;
    }

    if (v5)
    {
      return v6 | 0x10;
    }
  }

  else if (v3)
  {
    v6 = 4;
    if (v4)
    {
      v6 = 12;
    }

    if (v5)
    {
      return v6 | 0x10;
    }
  }

  else
  {
    v6 = 8;
    if (!v4)
    {
      v6 = 0;
    }

    if (v5)
    {
      return v6 | 0x10;
    }
  }

  return v6;
}

void sub_100097ABC(uint64_t a1, uint64_t a2, void *a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    [a3 setMaxACOn:{objc_msgSend(a3, "maxACOn") ^ 1}];
    sub_1000C10C4();
    [v5 setEnabled:sub_1000979E0() < 8];
    sub_100097B60();
    ClimateButton.refreshColorConfig()();
    ClimateButton.createEdgeInsets()();
  }
}

void sub_100097B60()
{
  v1 = v0;
  if ((sub_1000979E0() & 0x1B) == 1)
  {
    v2 = &OBJC_IVAR____TtC7Climate15ClimateOnButton_onColor;
  }

  else
  {
    v2 = &OBJC_IVAR____TtC7Climate15ClimateOnButton_offColor;
  }

  v3 = v0 + *v2;
  v4 = *(v3 + 8);
  v5 = *(v3 + 16);
  v6 = *v3;
  v7 = v4;

  sub_10007A4CC(v6, v7, v5);

  v8 = [objc_opt_self() sharedApplication];
  v9 = [v8 delegate];

  if (v9)
  {
    type metadata accessor for ClimateAppDelegate();
    swift_dynamicCastClassUnconditional();
    v10 = sub_1000AF438();
    swift_unknownObjectRelease();
    v11 = *&v10[OBJC_IVAR____TtC7Climate18ClimateCoordinator_accessibilityManager];

    v12 = *&v11[OBJC_IVAR____TtC7Climate27ClimateAccessibilityManager_colorFilter];
    if (v12 == 2)
    {
      if (qword_100113EE0 != -1)
      {
        swift_once();
      }

      v13 = qword_10011B0B8;
      v14 = qword_10011B0C0;
      v15 = qword_10011B0C8;
      v16 = [objc_opt_self() labelColor];
      if (!v16)
      {
        v16 = v14;
      }

      v19 = v13;
    }

    else
    {
      if (*(v1 + OBJC_IVAR____TtC7Climate25ClimateCabinServiceButton_style) == 4)
      {
        if (qword_100113EF0 != -1)
        {
          swift_once();
        }

        v17 = &qword_10011B0E8;
      }

      else
      {
        if (qword_100113EE0 != -1)
        {
          swift_once();
        }

        v17 = &qword_10011B0B8;
      }

      v18 = v17[1];
      v15 = v17[2];
      v19 = *v17;
      v16 = v18;
    }

    sub_1000A70A8(v19, v16, v15);
  }

  else
  {
    __break(1u);
  }
}

id sub_100097E98()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ClimateMaxACButton(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for ClimateMaxACButton(uint64_t a1)
{
  result = qword_100117638;
  if (!qword_100117638)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100097F6C(void *a1, unsigned __int8 a2)
{
  v3 = a1;
  v4 = sub_10003FC80(v3, a2);
  v5 = OBJC_IVAR____TtC7Climate13ClimateButton_smallTitle;
  swift_beginAccess();
  v6 = v4[v5];
  v4[v5] = 1;
  v7 = v4;
  if ((v6 & 1) == 0)
  {
    ClimateButton.updateClimateConfiguration()();
  }

  v8 = &v7[OBJC_IVAR____TtC7Climate13ClimateButton_title];
  swift_beginAccess();
  v9 = *v8;
  v10 = *(v8 + 1);
  *v8 = xmmword_1000D8BE0;
  if (v10 && (v9 == 0x432F412058414DLL ? (v11 = v10 == 0xE700000000000000) : (v11 = 0), v11 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
  {
    v12 = v7;
  }

  else
  {
    v13 = v7;
    ClimateButton.updateClimateConfiguration()();
  }

  v14 = [v7 titleLabel];

  if (v14)
  {
    [v14 setNumberOfLines:2];
  }

  v15 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v16 = swift_allocObject();
  *(v16 + 16) = v15;
  *(v16 + 24) = v3;
  v17 = &v7[OBJC_IVAR____TtC7Climate13ClimateButton_action];
  swift_beginAccess();
  v18 = *v17;
  v19 = v17[1];
  *v17 = sub_100098448;
  v17[1] = v16;
  v20 = v3;

  sub_100003380(v18, v19);

  if ((a2 | 2) == 3)
  {
    v21 = [v7 titleLabel];
    if (v21)
    {
      if (qword_100113F10 != -1)
      {
        v36 = v21;
        swift_once();
        v21 = v36;
      }

      v22 = v21;
      [v21 setFont:qword_10011B250];
    }

    if (qword_100113EE0 != -1)
    {
      swift_once();
    }

    v23 = qword_10011B0C0;
    v24 = qword_10011B0C8;
    v25 = qword_10011B0B8;
    v26 = v23;

    sub_1000A70A8(v25, v26, v24);

    if (qword_100113ED8 != -1)
    {
      swift_once();
    }

    v27 = qword_10011B0A8;
    v28 = qword_10011B0B0;
    v29 = qword_10011B0A0;
    v30 = v27;

    sub_1000A70B4(v29, v30, v28);
  }

  sub_1000C10C4();
  [v7 setEnabled:sub_1000979E0() < 8];
  sub_100097B60();
  ClimateButton.refreshColorConfig()();
  ClimateButton.createEdgeInsets()();
  v31 = [objc_opt_self() sharedApplication];
  v32 = [v31 delegate];

  if (v32)
  {
    type metadata accessor for ClimateAppDelegate();
    swift_dynamicCastClassUnconditional();
    v33 = sub_1000AF438();
    swift_unknownObjectRelease();
    v34 = *&v33[OBJC_IVAR____TtC7Climate18ClimateCoordinator_accessibilityManager];

    v35 = v7;
    sub_1000AD348();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1000983D0()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100098408()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100098450()
{
  v0 = sub_1000040E8(&qword_100115840, &qword_1000D6440);
  __chkstk_darwin(v0 - 8);
  v2 = v11 - v1;
  sub_1000985E0();
  CAFPositioned.layoutKey.getter();
  v3 = type metadata accessor for CAUVehicleLayoutKey();
  v4 = *(v3 - 8);
  if ((*(v4 + 48))(v2, 1, v3) == 1)
  {
    sub_10001AEA0(v2);
    v5 = 1;
  }

  else
  {
    v6 = CAUVehicleLayoutKey.rawValue.getter();
    v8 = v7;
    (*(v4 + 8))(v2, v3);
    v11[2] = CAUVehicleLayoutKey.rawValue.getter();
    v11[3] = v9;
    v11[0] = v6;
    v11[1] = v8;
    sub_100034270();
    v5 = StringProtocol.contains<A>(_:)();
  }

  return v5 & 1;
}

unint64_t sub_1000985E0()
{
  result = qword_1001152C0;
  if (!qword_1001152C0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1001152C0);
  }

  return result;
}

char *sub_100098660(void *a1)
{
  *(v1 + OBJC_IVAR____TtC7Climate20ClimateSyncIndicator_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v3 = objc_allocWithZone(type metadata accessor for ClimateZonesSyncedServiceButton(0));
  sub_10001B8E0(a1, 1u);
  *(v1 + OBJC_IVAR____TtC7Climate20ClimateSyncIndicator_syncButton) = v4;
  [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
  *(v1 + OBJC_IVAR____TtC7Climate20ClimateSyncIndicator_sync) = a1;
  v5 = a1;
  v6 = sub_10001414C(0, 0, 1);
  [v5 registerObserver:v6];
  [v6 addSubview:*&v6[OBJC_IVAR____TtC7Climate20ClimateSyncIndicator_syncButton]];
  sub_1000987B4();
  v7 = [*&v6[OBJC_IVAR____TtC7Climate20ClimateSyncIndicator_sync] on];
  v6[OBJC_IVAR____TtC7Climate16ClimateIndicator_isIndicatorOn] = v7;
  sub_1000C10C4();
  [v6 setEnabled:(sub_10001B250() & 0x18) == 0];
  ClimateButton.refreshColorConfig()();
  ClimateButton.refreshColorConfig()();
  ClimateButton.createEdgeInsets()();

  return v6;
}

void sub_1000987B4()
{
  v1 = v0;
  v2 = objc_opt_self();
  sub_1000040E8(&unk_100114770, qword_1000D58D0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1000D5D90;
  v4 = *&v1[OBJC_IVAR____TtC7Climate20ClimateSyncIndicator_syncButton];
  v5 = [v4 leadingAnchor];
  v6 = [v1 leadingAnchor];
  v7 = [v5 constraintEqualToAnchor:v6];

  *(v3 + 32) = v7;
  v8 = [v4 trailingAnchor];
  v9 = [v1 trailingAnchor];
  v10 = [v8 constraintEqualToAnchor:v9];

  *(v3 + 40) = v10;
  v11 = [v4 topAnchor];
  v12 = [v1 topAnchor];
  v13 = [v11 constraintEqualToAnchor:v12];

  *(v3 + 48) = v13;
  v14 = [v4 bottomAnchor];
  v15 = [v1 bottomAnchor];
  v16 = [v14 constraintEqualToAnchor:v15];

  *(v3 + 56) = v16;
  sub_100004130();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v2 activateConstraints:isa];
}

void sub_100098A28()
{
  v1 = [*&v0[OBJC_IVAR____TtC7Climate20ClimateSyncIndicator_sync] on];
  v0[OBJC_IVAR____TtC7Climate16ClimateIndicator_isIndicatorOn] = v1;
  sub_1000C10C4();
  [v0 setEnabled:(sub_10001B250() & 0x18) == 0];
  ClimateButton.refreshColorConfig()();
  ClimateButton.refreshColorConfig()();

  ClimateButton.createEdgeInsets()();
}

void sub_100098AB8()
{
  sub_1000289EC(v0 + OBJC_IVAR____TtC7Climate20ClimateSyncIndicator_delegate);

  v1 = *(v0 + OBJC_IVAR____TtC7Climate20ClimateSyncIndicator_syncButton);
}

id sub_100098B08()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ClimateSyncIndicator(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for ClimateSyncIndicator(uint64_t a1)
{
  result = qword_100117678;
  if (!qword_100117678)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100098CB4(void *a1)
{
  v3 = OBJC_IVAR____TtC7Climate16ClimateIndicator_isIndicatorOn;
  v4 = v1[OBJC_IVAR____TtC7Climate16ClimateIndicator_isIndicatorOn];
  if (v4 == [a1 on])
  {
    v6 = static os_log_type_t.debug.getter();
    if (qword_100113F00 != -1)
    {
      v15 = v6;
      swift_once();
      v6 = v15;
    }

    v12 = qword_10011B1C0;
    v13 = "Sync indicator did update with same ON value. Skipping.";
    v14 = 55;
  }

  else
  {
    v5 = [a1 receivedAllValues];
    v6 = static os_log_type_t.debug.getter();
    if (v5)
    {
      if (qword_100113F00 != -1)
      {
        v16 = v6;
        swift_once();
        LOBYTE(v6) = v16;
      }

      v7 = qword_10011B1C0;
      v8 = v6;
      if (os_log_type_enabled(qword_10011B1C0, v6))
      {
        v9 = a1;
        v10 = swift_slowAlloc();
        *v10 = 67240192;
        *(v10 + 4) = [v9 on];

        _os_log_impl(&_mh_execute_header, v7, v8, "Sync indicator did update ON: %{BOOL,public}d", v10, 8u);
      }

      v1[v3] = [*&v1[OBJC_IVAR____TtC7Climate20ClimateSyncIndicator_sync] on];
      sub_1000C10C4();
      [v1 setEnabled:(sub_10001B250() & 0x18) == 0];
      ClimateButton.refreshColorConfig()();
      ClimateButton.refreshColorConfig()();
      ClimateButton.createEdgeInsets()();
      result = swift_unknownObjectWeakLoadStrong();
      if (result)
      {
        sub_10006638C();

        return swift_unknownObjectRelease();
      }

      return result;
    }

    if (qword_100113F00 != -1)
    {
      v17 = v6;
      swift_once();
      v6 = v17;
    }

    v12 = qword_10011B1C0;
    v13 = "Sync service hasn't receivedAllValues.";
    v14 = 38;
  }

  return os_log(_:dso:log:_:_:)(v6, &_mh_execute_header, v12, v13, v14, 2, _swiftEmptyArrayStorage);
}

double sub_100098F78()
{
  v1 = *v0;
  v2 = objc_allocWithZone(type metadata accessor for ClimateSeatHeatingCoolingServiceButton(0));
  v3 = sub_10006E5D8(v1, 2);
  [v3 setTranslatesAutoresizingMaskIntoConstraints:0];
  sub_1000040E8(&unk_1001179E0, qword_1000D5C90);
  v4 = swift_allocObject();
  *&result = 1;
  *(v4 + 16) = xmmword_1000D5970;
  *(v4 + 32) = v3;
  *(v4 + 40) = &off_1000F8858;
  return result;
}

void sub_100099000()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  if (v2)
  {
    v3 = v2 == 1;
  }

  else
  {
    v3 = 1;
  }

  if (v3)
  {
    return;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_18:
    v1 = sub_100056AB0(v1);
  }

  v4 = 0;
  v2 += 3;
  while (1)
  {
    v6 = v2 - 4;
    if (v4 == v2 - 4)
    {
      goto LABEL_8;
    }

    v7 = v1[2];
    if (v4 >= v7)
    {
      __break(1u);
LABEL_17:
      __break(1u);
      goto LABEL_18;
    }

    if (v6 >= v7)
    {
      goto LABEL_17;
    }

    v8 = &v1[v4];
    v9 = v8[4];
    v8[4] = v1[v2];
    v10 = v1[2];

    if (v6 >= v10)
    {
      break;
    }

    v1[v2] = v9;

LABEL_8:
    ++v4;
    v5 = v2 - 5;
    --v2;
    if (v4 >= v5)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_14:
  *v0 = v1;
}

void sub_1000990E0()
{
  v1 = *v0;
  if (*v0 >> 62)
  {
    goto LABEL_27;
  }

  v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v2)
  {
    v3 = v2 - 1;
    while (!__OFSUB__(v2, 1))
    {
      if (v3 < 1)
      {
        return;
      }

      v4 = 0;
      v5 = v2 + 0x7FFFFFFFFFFFFFFFLL;
      while (1)
      {
        v6 = v2 - 1;
        if ((v1 & 0xC000000000000001) != 0)
        {
          v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          goto LABEL_10;
        }

        v7 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v4 >= v7)
        {
          break;
        }

        if (v6 >= v7)
        {
          goto LABEL_25;
        }

        v8 = *(v1 + 8 * v2 + 24);
        v9 = *(v1 + 8 * v4 + 32);
        v10 = v8;
LABEL_10:
        v11 = v10;
        if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v1 & 0x8000000000000000) != 0 || (v1 & 0x4000000000000000) != 0)
        {
          v1 = sub_100056B94();
          v12 = (v1 >> 62) & 1;
        }

        else
        {
          LODWORD(v12) = 0;
        }

        v13 = v1 & 0xFFFFFFFFFFFFFF8;
        v14 = *((v1 & 0xFFFFFFFFFFFFFF8) + 8 * v4 + 0x20);
        *((v1 & 0xFFFFFFFFFFFFFF8) + 8 * v4 + 0x20) = v11;

        if ((v1 & 0x8000000000000000) != 0 || v12)
        {
          v1 = sub_100056B94();
          v13 = v1 & 0xFFFFFFFFFFFFFF8;
        }

        if (v6 >= *(v13 + 16))
        {
          goto LABEL_24;
        }

        v15 = v13 + 8 * v2;
        v16 = *(v15 + 24);
        *(v15 + 24) = v9;

        *v0 = v1;
        if (v5 == v4)
        {
          goto LABEL_26;
        }

        ++v4;
        v17 = v2 - 2;
        --v2;
        if (v4 >= v17)
        {
          return;
        }
      }

      __break(1u);
LABEL_24:
      __break(1u);
LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
LABEL_27:
      if (!_CocoaArrayWrapper.endIndex.getter())
      {
        return;
      }

      v2 = _CocoaArrayWrapper.endIndex.getter();
      v3 = v2 - 1;
    }

    __break(1u);
  }
}

void sub_100099290(uint64_t a1)
{
  v16.receiver = v1;
  v16.super_class = type metadata accessor for ClimateHorizontalQuickActionPopover();
  objc_msgSendSuper2(&v16, "viewDidLayoutSubviews");
  if ((*(v1 + OBJC_IVAR____TtC7Climate25ClimateQuickActionPopover_isSet) & 1) == 0)
  {
    *(v1 + OBJC_IVAR____TtC7Climate25ClimateQuickActionPopover_isSet) = 1;
    v15 = _swiftEmptyArrayStorage;
    sub_100028DB0();
    v3 = v2;
    v4 = v1;
    sub_10009BA7C(v3, v4, &v15);

    sub_1000994AC(v15);
    sub_100099E8C();
    v5 = [v4 view];
    if (v5)
    {
      v6 = v5;
      v7 = [objc_opt_self() clearColor];
      [v6 setBackgroundColor:v7];

      sub_1000040E8(&unk_100114770, qword_1000D58D0);
      v8 = swift_allocObject();
      *(v8 + 16) = xmmword_1000D5DA0;
      v9 = [v4 view];
      if (v9)
      {
        v10 = v9;

        v11 = objc_opt_self();
        v12 = [v10 widthAnchor];

        v13 = [v12 constraintEqualToConstant:*(v4 + OBJC_IVAR____TtC7Climate35ClimateHorizontalQuickActionPopover_popoverWidth)];
        *(v8 + 32) = v13;
        sub_10000827C(0, &qword_1001149C0, NSLayoutConstraint_ptr);
        isa = Array._bridgeToObjectiveC()().super.isa;

        [v11 activateConstraints:isa];

        sub_10009A14C();
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

uint64_t sub_1000994AC(uint64_t a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC7Climate35ClimateHorizontalQuickActionPopover_maxWidth);
  v4 = *(a1 + 16);
  v5 = sub_10009BC24(0, v4);
  v6 = v5;
  v42 = v5;
  v41 = v1;
  v40 = OBJC_IVAR____TtC7Climate35ClimateHorizontalQuickActionPopover_popoverWidth;
  *(v1 + OBJC_IVAR____TtC7Climate35ClimateHorizontalQuickActionPopover_popoverWidth) = *(v1 + OBJC_IVAR____TtC7Climate35ClimateHorizontalQuickActionPopover_popoverWidth) + 12.0;
  if (!v4)
  {
    goto LABEL_36;
  }

  v7 = 0;
  v8 = v3 + -52.0;
  v38 = a1 + 32;
  v9 = 1;
  v36 = v4;
  v37 = v5;
  while (2)
  {
    v10 = *(v38 + 8 * v7++);
    v11 = *(v10 + 16);
    if (!v11)
    {
      goto LABEL_3;
    }

    v39 = v7;

    v12 = 0;
LABEL_6:
    if (v12 >= *(v10 + 16))
    {
LABEL_63:
      __break(1u);
LABEL_64:
      __break(1u);
      goto LABEL_65;
    }

    v13 = v10 + 32 + 16 * v12;
    v14 = *(v13 + 8);
    v6 = v12 + 1;
    if ((*v13 & 0xFE) == 2)
    {
      v15 = 132.0;
    }

    else
    {
      v15 = 52.0;
    }

    v8 = v8 - v15;
    v9 &= v8 > 0.0;
    if (v9)
    {
      v16 = v14;
LABEL_14:
      v12 = v6;
      goto LABEL_15;
    }

    switch(*v13)
    {
      case 0xA:
LABEL_31:
        v16 = v14;

        goto LABEL_14;
      default:
        v17 = _stringCompareWithSmolCheck(_:_:expecting:)();
        v16 = v14;

        if (v17)
        {
          goto LABEL_14;
        }

        if (v6 == v11)
        {
          goto LABEL_32;
        }

        v19 = (v10 + 56 + 16 * v12);
        break;
    }

LABEL_21:
    if (v6 >= *(v10 + 16))
    {
      goto LABEL_63;
    }

    v14 = *v19;
    v20 = v6 + 1;
    if ((*(v19 - 1) & 0xFE) == 2)
    {
      v15 = 132.0;
    }

    else
    {
      v15 = 52.0;
    }

    v8 = v8 - v15;
    switch(*(v19 - 8))
    {
      case 0xA:
        ++v6;
        goto LABEL_31;
      default:
        v21 = _stringCompareWithSmolCheck(_:_:expecting:)();
        v16 = v14;

        if (v21)
        {
          v12 = v6 + 1;
LABEL_15:
          *(v1 + v40) = v15 + *(v1 + v40);
          v18 = v16;
          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v6 = *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10);
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

          if (v12 == v11)
          {

            v4 = v36;
            v7 = v39;
LABEL_3:
            v6 = v37;
            if (v7 != v4)
            {
              continue;
            }

            goto LABEL_36;
          }

          goto LABEL_6;
        }

        v19 += 2;
        ++v6;
        if (v11 != v20)
        {
          goto LABEL_21;
        }

LABEL_32:

        v4 = v36;
        v7 = v39;
        if (v39 != v36)
        {
          v9 = 0;
          continue;
        }

        v6 = v37;
LABEL_36:
        if (_swiftEmptyArrayStorage >> 62)
        {
          goto LABEL_67;
        }

        for (i = *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
        {
          if (i)
          {
            sub_10002B584();
            if (v23)
            {
              sub_1000990E0();
            }

            v24 = sub_10009B84C();
            specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
            if (v42[2] >= v42[3] >> 1)
            {
              specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            }

            specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

            v6 = v42;
          }

          v25 = 0;
          v26 = *(v6 + 16);
          while (v26 != v25)
          {
            if (v25 >= *(v6 + 16))
            {
              goto LABEL_64;
            }

            v27 = *(v6 + 8 * v25++ + 32);
            if (v27)
            {
              v28 = v27;
              specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
              if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
              {
                specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
              }

              specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            }
          }

          if (_swiftEmptyArrayStorage >> 62)
          {
            break;
          }

          v6 = *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (!v6)
          {
            goto LABEL_69;
          }

LABEL_53:
          v29 = 0;
          v30 = OBJC_IVAR____TtC7Climate35ClimateHorizontalQuickActionPopover_quickActionContainers;
          while (1)
          {
            if ((_swiftEmptyArrayStorage & 0xC000000000000001) != 0)
            {
              v31 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              if (v29 >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_66;
              }

              v31 = _swiftEmptyArrayStorage[v29 + 4];
            }

            v32 = v31;
            v33 = v29 + 1;
            if (__OFADD__(v29, 1))
            {
              break;
            }

            swift_beginAccess();
            v34 = v32;
            specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
            if (*((*(v41 + v30) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v41 + v30) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            }

            specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            swift_endAccess();

            ++v29;
            if (v33 == v6)
            {
              goto LABEL_69;
            }
          }

LABEL_65:
          __break(1u);
LABEL_66:
          __break(1u);
LABEL_67:
          ;
        }

        v6 = _CocoaArrayWrapper.endIndex.getter();
        if (v6)
        {
          goto LABEL_53;
        }

LABEL_69:
    }
  }
}

void *sub_100099E8C()
{
  v1 = OBJC_IVAR____TtC7Climate35ClimateHorizontalQuickActionPopover_quickActionContainers;
  result = swift_beginAccess();
  v3 = *(v0 + v1);
  if (v3 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    v4 = result;
    if (!result)
    {
      return result;
    }
  }

  else
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v4)
    {
      return result;
    }
  }

  result = objc_opt_self();
  v20 = result;
  if (v4 < 1)
  {
    __break(1u);
  }

  else
  {
    v5 = OBJC_IVAR____TtC7Climate25ClimateQuickActionPopover_contentView;
    v19 = v3 & 0xC000000000000001;

    v6 = 0;
    v18 = v3;
    do
    {
      if (v19)
      {
        v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v7 = *(v3 + 8 * v6 + 32);
      }

      ++v6;
      v8 = *(v0 + v5);
      v9 = v7;
      [v8 addSubview:v9];
      sub_1000040E8(&unk_100114770, qword_1000D58D0);
      v10 = swift_allocObject();
      *(v10 + 16) = xmmword_1000D58A0;
      v11 = [v9 centerXAnchor];
      v12 = [*(v0 + v5) centerXAnchor];
      v13 = [v11 constraintEqualToAnchor:v12];

      *(v10 + 32) = v13;
      v14 = [v9 centerYAnchor];

      v15 = [*(v0 + v5) centerYAnchor];
      v16 = [v14 constraintEqualToAnchor:v15];

      *(v10 + 40) = v16;
      sub_10000827C(0, &qword_1001149C0, NSLayoutConstraint_ptr);
      isa = Array._bridgeToObjectiveC()().super.isa;

      [v20 activateConstraints:isa];

      v3 = v18;
    }

    while (v4 != v6);
  }

  return result;
}

void sub_10009A14C()
{
  v4 = OBJC_IVAR____TtC7Climate35ClimateHorizontalQuickActionPopover_quickActionContainers;
  swift_beginAccess();
  v5 = *&v0[v4];
  if (v5 >> 62)
  {
    v6 = _CocoaArrayWrapper.endIndex.getter();
    if (!v6)
    {
      return;
    }
  }

  else
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return;
    }
  }

  v7 = v6 - 1;
  if (__OFSUB__(v6, 1))
  {
    __break(1u);
    goto LABEL_59;
  }

  if ((v5 & 0xC000000000000001) != 0)
  {
LABEL_59:

    v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();

    goto LABEL_8;
  }

  if ((v7 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_61;
  }

  if (v7 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
    goto LABEL_64;
  }

  v8 = *(v5 + 8 * v7 + 32);
LABEL_8:
  v2 = &selRef_maxDefrostOn;
  v9 = [v8 arrangedSubviews];

  sub_10000827C(0, &qword_100115400, UIView_ptr);
  v1 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!(v1 >> 62))
  {
    v10 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v10)
    {
      goto LABEL_10;
    }

    goto LABEL_73;
  }

LABEL_61:
  v10 = _CocoaArrayWrapper.endIndex.getter();
  if (v10)
  {
LABEL_10:
    v11 = __OFSUB__(v10, 1);
    v12 = v10 - 1;
    if (!v11)
    {
      if ((v1 & 0xC000000000000001) == 0)
      {
        if ((v12 & 0x8000000000000000) != 0)
        {
          __break(1u);
          goto LABEL_67;
        }

        if (v12 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_70;
        }

        v13 = *(v1 + 8 * v12 + 32);
LABEL_15:
        v3 = v13;

        v1 = *&v0[v4];
        if (!(v1 >> 62))
        {
          if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_17;
          }

          goto LABEL_55;
        }

LABEL_67:
        if (_CocoaArrayWrapper.endIndex.getter())
        {
LABEL_17:
          if ((v1 & 0xC000000000000001) == 0)
          {
            if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              __break(1u);
              goto LABEL_76;
            }

            v14 = *(v1 + 32);
            goto LABEL_20;
          }

LABEL_70:

          v14 = specialized _ArrayBuffer._getElementSlowPath(_:)();

LABEL_20:
          v15 = [v14 v2[234]];

          v16 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
          if (v16 >> 62)
          {
            if (_CocoaArrayWrapper.endIndex.getter())
            {
LABEL_22:
              if ((v16 & 0xC000000000000001) == 0)
              {
                if (!*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  __break(1u);
                  goto LABEL_78;
                }

                v17 = *(v16 + 32);
LABEL_25:
                v18 = v17;

                sub_1000040E8(&unk_100114770, qword_1000D58D0);
                v19 = swift_allocObject();
                *(v19 + 16) = xmmword_1000D5DA0;
                *(v19 + 32) = v18;
                v20 = OBJC_IVAR____TtC7Climate35ClimateHorizontalQuickActionPopover_groupFocusGuide;
                v21 = *&v0[OBJC_IVAR____TtC7Climate35ClimateHorizontalQuickActionPopover_groupFocusGuide];
                v136 = v3;
                v135 = v18;
                if (v21)
                {
                  v22 = v18;

                  v23 = v21;
                  sub_1000040E8(&unk_1001150F0, &qword_1000D5F10);
                  v24.super.isa = Array._bridgeToObjectiveC()().super.isa;

                  [v23 setPreferredFocusEnvironments:v24.super.isa];

LABEL_34:
                  v59 = swift_allocObject();
                  *(v59 + 16) = xmmword_1000D5DA0;
                  *(v59 + 32) = v3;
                  v60 = OBJC_IVAR____TtC7Climate35ClimateHorizontalQuickActionPopover_lastElementFocusGuide;
                  v61 = *&v0[OBJC_IVAR____TtC7Climate35ClimateHorizontalQuickActionPopover_lastElementFocusGuide];
                  if (v61)
                  {
                    v62 = v3;

                    v63 = v61;
                    sub_1000040E8(&unk_1001150F0, &qword_1000D5F10);
                    v64.super.isa = Array._bridgeToObjectiveC()().super.isa;

                    [v63 setPreferredFocusEnvironments:v64.super.isa];

LABEL_42:
                    Strong = swift_unknownObjectWeakLoadStrong();
                    if (Strong)
                    {
                      v97 = Strong;
                      v98 = swift_allocObject();
                      *(v98 + 16) = xmmword_1000D5DA0;
                      *(v98 + 32) = v97;
                    }

                    v99 = OBJC_IVAR____TtC7Climate35ClimateHorizontalQuickActionPopover_firstElementFocusGuide;
                    if (*&v0[OBJC_IVAR____TtC7Climate35ClimateHorizontalQuickActionPopover_firstElementFocusGuide])
                    {

                      v100 = *&v0[v99];
                      if (v100)
                      {
                        v101 = v100;
                        sub_1000040E8(&unk_1001150F0, &qword_1000D5F10);
                        isa = Array._bridgeToObjectiveC()().super.isa;

                        [v101 setPreferredFocusEnvironments:isa];
                      }

                      else
                      {
                      }

                      goto LABEL_55;
                    }

                    v134 = OBJC_IVAR____TtC7Climate35ClimateHorizontalQuickActionPopover_firstElementFocusGuide;
                    sub_10002AE28();
                    v103 = [v0 view];
                    if (v103)
                    {
                      v104 = v103;
                      v105 = type metadata accessor for ClimateFocusGuide();
                      v106 = objc_allocWithZone(v105);
                      swift_unknownObjectWeakInit();
                      v107 = &v106[OBJC_IVAR____TtC7Climate17ClimateFocusGuide_completion];
                      *v107 = 0;
                      v107[1] = 0;
                      *&v106[OBJC_IVAR____TtC7Climate17ClimateFocusGuide_activeConstraints] = _swiftEmptyArrayStorage;
                      v106[OBJC_IVAR____TtC7Climate17ClimateFocusGuide_isDebug] = 0;
                      *v107 = 0;
                      v107[1] = 0;
                      v137.receiver = v106;
                      v137.super_class = v105;
                      v108 = objc_msgSendSuper2(&v137, "init");
                      v109 = String._bridgeToObjectiveC()();
                      [v108 setIdentifier:v109];

                      sub_1000040E8(&unk_1001150F0, &qword_1000D5F10);
                      v110 = Array._bridgeToObjectiveC()().super.isa;
                      [v108 setPreferredFocusEnvironments:v110];

                      [v104 addLayoutGuide:v108];
                      v111 = [v0 view];
                      if (v111)
                      {
                        v112 = v111;
                        [v111 addLayoutGuide:v108];

                        v113 = swift_allocObject();
                        *(v113 + 16) = xmmword_1000D5D90;
                        v114 = [v108 leadingAnchor];
                        v115 = [v0 view];
                        if (v115)
                        {
                          v116 = v115;
                          v117 = [v115 leadingAnchor];

                          v118 = [v114 constraintEqualToAnchor:v117];
                          *(v113 + 32) = v118;
                          v119 = [v108 widthAnchor];
                          v120 = [v119 constraintEqualToConstant:1.0];

                          *(v113 + 40) = v120;
                          v121 = [v108 topAnchor];
                          v122 = [v0 view];
                          if (v122)
                          {
                            v123 = v122;
                            v124 = [v122 topAnchor];

                            v125 = [v121 constraintEqualToAnchor:v124];
                            *(v113 + 48) = v125;
                            v126 = [v108 bottomAnchor];

                            v127 = [v0 view];
                            if (v127)
                            {
                              v128 = v127;

                              v129 = objc_opt_self();

                              v130 = [v128 bottomAnchor];

                              v131 = [v126 constraintEqualToAnchor:v130];
                              *(v113 + 56) = v131;
                              sub_10000827C(0, &qword_1001149C0, NSLayoutConstraint_ptr);
                              v132 = Array._bridgeToObjectiveC()().super.isa;

                              [v129 activateConstraints:v132];

                              v133 = *&v0[v134];
                              *&v0[v134] = v108;

                              return;
                            }

                            goto LABEL_93;
                          }

LABEL_92:
                          __break(1u);
LABEL_93:
                          __break(1u);
                          return;
                        }

                        goto LABEL_90;
                      }

                      goto LABEL_88;
                    }

                    goto LABEL_85;
                  }

                  v65 = v3;
                  sub_10002AE28();
                  v66 = [v0 view];
                  if (v66)
                  {
                    v67 = v66;
                    v68 = type metadata accessor for ClimateFocusGuide();
                    v69 = objc_allocWithZone(v68);
                    swift_unknownObjectWeakInit();
                    v70 = &v69[OBJC_IVAR____TtC7Climate17ClimateFocusGuide_completion];
                    *v70 = 0;
                    v70[1] = 0;
                    *&v69[OBJC_IVAR____TtC7Climate17ClimateFocusGuide_activeConstraints] = _swiftEmptyArrayStorage;
                    v69[OBJC_IVAR____TtC7Climate17ClimateFocusGuide_isDebug] = 0;
                    *v70 = 0;
                    v70[1] = 0;
                    v138.receiver = v69;
                    v138.super_class = v68;

                    v71 = objc_msgSendSuper2(&v138, "init");
                    v72 = String._bridgeToObjectiveC()();
                    [v71 setIdentifier:v72];

                    sub_1000040E8(&unk_1001150F0, &qword_1000D5F10);
                    v73 = Array._bridgeToObjectiveC()().super.isa;

                    [v71 setPreferredFocusEnvironments:v73];

                    [v67 addLayoutGuide:v71];
                    v74 = [v0 view];
                    if (v74)
                    {
                      v75 = v74;
                      [v74 addLayoutGuide:v71];

                      v76 = swift_allocObject();
                      *(v76 + 16) = xmmword_1000D5D90;
                      v77 = [v71 trailingAnchor];
                      v78 = [v0 view];
                      if (!v78)
                      {
LABEL_86:
                        __break(1u);
                        goto LABEL_87;
                      }

                      v79 = v78;
                      v80 = [v78 trailingAnchor];

                      v81 = [v77 constraintEqualToAnchor:v80];
                      *(v76 + 32) = v81;
                      v82 = [v71 widthAnchor];
                      v83 = [v82 constraintEqualToConstant:1.0];

                      *(v76 + 40) = v83;
                      v84 = [v71 topAnchor];
                      v85 = [v0 view];
                      if (!v85)
                      {
LABEL_89:
                        __break(1u);
LABEL_90:
                        __break(1u);
                        goto LABEL_91;
                      }

                      v86 = v85;
                      v87 = [v85 topAnchor];

                      v88 = [v84 constraintEqualToAnchor:v87];
                      *(v76 + 48) = v88;
                      v89 = [v71 bottomAnchor];

                      v90 = [v0 view];
                      if (!v90)
                      {
LABEL_91:
                        __break(1u);
                        goto LABEL_92;
                      }

                      v91 = v90;

                      v92 = objc_opt_self();
                      v93 = [v91 bottomAnchor];

                      v94 = [v89 constraintEqualToAnchor:v93];
                      *(v76 + 56) = v94;
                      sub_10000827C(0, &qword_1001149C0, NSLayoutConstraint_ptr);
                      v95 = Array._bridgeToObjectiveC()().super.isa;

                      [v92 activateConstraints:v95];

                      v64.super.isa = *&v0[v60];
                      *&v0[v60] = v71;
                      v3 = v136;
                      goto LABEL_42;
                    }

                    goto LABEL_83;
                  }

                  goto LABEL_81;
                }

                v25 = v18;
                sub_10002AE28();
                v26 = [v0 view];
                if (v26)
                {
                  v27 = v26;
                  v28 = type metadata accessor for ClimateFocusGuide();
                  v29 = objc_allocWithZone(v28);
                  swift_unknownObjectWeakInit();
                  v30 = &v29[OBJC_IVAR____TtC7Climate17ClimateFocusGuide_completion];
                  *v30 = 0;
                  v30[1] = 0;
                  *&v29[OBJC_IVAR____TtC7Climate17ClimateFocusGuide_activeConstraints] = _swiftEmptyArrayStorage;
                  v29[OBJC_IVAR____TtC7Climate17ClimateFocusGuide_isDebug] = 0;
                  *v30 = 0;
                  v30[1] = 0;
                  v139.receiver = v29;
                  v139.super_class = v28;

                  v31 = objc_msgSendSuper2(&v139, "init");
                  v32 = String._bridgeToObjectiveC()();
                  [v31 setIdentifier:v32];

                  sub_1000040E8(&unk_1001150F0, &qword_1000D5F10);
                  v33 = Array._bridgeToObjectiveC()().super.isa;

                  [v31 setPreferredFocusEnvironments:v33];

                  [v27 addLayoutGuide:v31];
                  v34 = [v0 view];
                  if (v34)
                  {
                    v35 = v34;
                    [v34 addLayoutGuide:v31];

                    v36 = swift_allocObject();
                    *(v36 + 16) = xmmword_1000D5D90;
                    v37 = [v31 leadingAnchor];
                    v38 = [v0 view];
                    if (v38)
                    {
                      v39 = v38;
                      v40 = [v38 leadingAnchor];

                      v41 = [v37 constraintEqualToAnchor:v40];
                      *(v36 + 32) = v41;
                      v42 = [v31 trailingAnchor];
                      v43 = [v0 view];
                      if (!v43)
                      {
LABEL_82:
                        __break(1u);
LABEL_83:
                        __break(1u);
                        goto LABEL_84;
                      }

                      v44 = v43;
                      v45 = [v43 trailingAnchor];

                      v46 = [v42 constraintEqualToAnchor:v45];
                      *(v36 + 40) = v46;
                      v47 = [v31 topAnchor];
                      v48 = [v0 view];
                      if (!v48)
                      {
LABEL_84:
                        __break(1u);
LABEL_85:
                        __break(1u);
                        goto LABEL_86;
                      }

                      v49 = v48;
                      v50 = [v48 topAnchor];

                      v51 = [v47 constraintEqualToAnchor:v50];
                      *(v36 + 48) = v51;
                      v52 = [v31 bottomAnchor];

                      v53 = [v0 view];
                      if (!v53)
                      {
LABEL_87:
                        __break(1u);
LABEL_88:
                        __break(1u);
                        goto LABEL_89;
                      }

                      v54 = v53;

                      v55 = objc_opt_self();
                      v56 = [v54 bottomAnchor];

                      v57 = [v52 constraintEqualToAnchor:v56];
                      *(v36 + 56) = v57;
                      sub_10000827C(0, &qword_1001149C0, NSLayoutConstraint_ptr);
                      v58 = Array._bridgeToObjectiveC()().super.isa;

                      [v55 activateConstraints:v58];

                      v24.super.isa = *&v0[v20];
                      *&v0[v20] = v31;
                      goto LABEL_34;
                    }

LABEL_80:
                    __break(1u);
LABEL_81:
                    __break(1u);
                    goto LABEL_82;
                  }

LABEL_79:
                  __break(1u);
                  goto LABEL_80;
                }

LABEL_78:
                __break(1u);
                goto LABEL_79;
              }

LABEL_76:
              v17 = specialized _ArrayBuffer._getElementSlowPath(_:)();
              goto LABEL_25;
            }
          }

          else if (*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_22;
          }

          goto LABEL_73;
        }

LABEL_55:

        return;
      }

LABEL_65:
      v13 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      goto LABEL_15;
    }

LABEL_64:
    __break(1u);
    goto LABEL_65;
  }

LABEL_73:
}

void sub_10009B2DC(void *a1, uint64_t a2)
{
  v73.receiver = v2;
  v73.super_class = type metadata accessor for ClimateHorizontalQuickActionPopover();
  objc_msgSendSuper2(&v73, "didUpdateFocusInContext:withAnimationCoordinator:", a1, a2);
  v5 = [a1 previouslyFocusedView];
  if (!v5)
  {
    return;
  }

  v6 = v5;
  type metadata accessor for ClimateButton(0);
  v7 = swift_dynamicCastClass();
  if (!v7)
  {
LABEL_19:

    return;
  }

  v8 = v7;
  v9 = [v2 view];
  if (!v9)
  {
    __break(1u);
    goto LABEL_22;
  }

  v10 = v9;
  [v9 bounds];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;

  v19 = [v2 view];
  if (!v19)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v20 = v19;
  v6 = v6;
  [v8 frame];
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v29 = [v8 superview];

  [v20 convertRect:v29 fromView:{v22, v24, v26, v28}];
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v37 = v36;

  v74.origin.x = v12;
  v74.origin.y = v14;
  v74.size.width = v16;
  v74.size.height = v18;
  v76.origin.x = v31;
  v76.origin.y = v33;
  v76.size.width = v35;
  v76.size.height = v37;
  if (!CGRectContainsRect(v74, v76))
  {
    goto LABEL_19;
  }

  v38 = [a1 nextFocusedView];
  if (!v38)
  {
    goto LABEL_19;
  }

  v39 = v38;
  v40 = swift_dynamicCastClass();
  if (v40)
  {
    v41 = v40;
    v42 = v39;
    v43 = [v2 view];
    if (v43)
    {
      v44 = v43;
      [v43 bounds];
      v46 = v45;
      v48 = v47;
      v50 = v49;
      v52 = v51;

      v53 = [v2 view];
      if (v53)
      {
        v54 = v53;
        v55 = v42;
        [v41 frame];
        v57 = v56;
        v59 = v58;
        v61 = v60;
        v63 = v62;
        v64 = [v41 superview];

        [v54 convertRect:v64 fromView:{v57, v59, v61, v63}];
        v66 = v65;
        v68 = v67;
        v70 = v69;
        v72 = v71;

        v75.origin.x = v46;
        v75.origin.y = v48;
        v75.size.width = v50;
        v75.size.height = v52;
        v77.origin.x = v66;
        v77.origin.y = v68;
        v77.size.width = v70;
        v77.size.height = v72;
        LODWORD(v64) = CGRectContainsRect(v75, v77);

        if (v64)
        {

          return;
        }

        goto LABEL_12;
      }

LABEL_24:
      __break(1u);
      return;
    }

LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

LABEL_12:
  if (!swift_unknownObjectWeakLoadStrong())
  {

    goto LABEL_19;
  }

  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_10002253C(1, 2, 0);
    swift_unknownObjectRelease();
  }

  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_10002253C(1, 8, 0);
    swift_unknownObjectRelease();
  }

  swift_unknownObjectRelease();
}

uint64_t sub_10009B708()
{

  return swift_unknownObjectWeakDestroy();
}

id sub_10009B778(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for ClimateHorizontalQuickActionPopover();
  return objc_msgSendSuper2(&v3, "dealloc");
}

id sub_10009B84C()
{
  v0 = objc_allocWithZone(UIStackView);
  sub_10000827C(0, &qword_100115400, UIView_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;
  v2 = [v0 initWithArrangedSubviews:isa];

  v3 = objc_opt_self();
  v4 = v2;
  v5 = [v3 clearColor];
  [v4 setBackgroundColor:v5];

  [v4 setDistribution:3];
  [v4 setSpacing:12.0];
  [v4 setSemanticContentAttribute:3];
  [v4 setTranslatesAutoresizingMaskIntoConstraints:0];

  return v4;
}

uint64_t sub_10009BA7C(uint64_t result, void **a2, uint64_t *a3)
{
  v4 = *(result + 16);
  if (v4)
  {
    for (i = (result + 32); ; ++i)
    {
      v8 = *i;

      sub_100029AF8(&v8, a2, a3);
      if (v3)
      {
        break;
      }

      if (!--v4)
      {
        return result;
      }
    }
  }

  return result;
}

uint64_t sub_10009BB14(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  *(v4 + OBJC_IVAR____TtC7Climate35ClimateHorizontalQuickActionPopover_groupFocusGuide) = 0;
  *(v4 + OBJC_IVAR____TtC7Climate35ClimateHorizontalQuickActionPopover_lastElementFocusGuide) = 0;
  *(v4 + OBJC_IVAR____TtC7Climate35ClimateHorizontalQuickActionPopover_firstElementFocusGuide) = 0;
  *(v4 + OBJC_IVAR____TtC7Climate35ClimateHorizontalQuickActionPopover_quickActionContainers) = _swiftEmptyArrayStorage;
  *(v4 + OBJC_IVAR____TtC7Climate35ClimateHorizontalQuickActionPopover_popoverWidth) = 0;
  swift_unknownObjectWeakInit();
  *(v4 + OBJC_IVAR____TtC7Climate35ClimateHorizontalQuickActionPopover_maxWidth) = a4;
  swift_unknownObjectRetain();

  sub_100028F80(v9, a2, a3);
  v11 = v10;
  v13[3] = &type metadata for ClimateFeatures;
  v13[4] = sub_100028968();
  LOBYTE(v13[0]) = 0;
  LOBYTE(a3) = isFeatureEnabled(_:)();
  sub_100006B9C(v13);
  if (a3)
  {
    [*(a1 + 16) addObject:v11];
  }

  return v11;
}

void *sub_10009BC24(void *result, uint64_t a2)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (!a2)
    {
      return _swiftEmptyArrayStorage;
    }

    v3 = result;
    sub_1000040E8(&qword_1001176F8, &qword_1000D8D00);
    v4 = static Array._allocateBufferUninitialized(minimumCapacity:)();
    v5 = v4;
    *(v4 + 16) = a2;
    *(v4 + 32) = v3;
    v6 = a2 - 1;
    if (v6)
    {
      v7 = (v4 + 40);
      do
      {
        *v7++ = v3;
        v8 = v3;
        --v6;
      }

      while (v6);
    }

    v9 = v3;
    return v5;
  }

  return result;
}

void sub_10009BDB8()
{
  v1 = v0 + OBJC_IVAR____TtC7Climate16ClimateFanButton____lazy_storage___currentValue;
  if (*(v0 + OBJC_IVAR____TtC7Climate16ClimateFanButton____lazy_storage___currentValue + 4))
  {
    v2 = [*(v0 + OBJC_IVAR____TtC7Climate16ClimateFanButton_fan) fanLevelRange];
    v3 = [v2 minimum];

    [v3 floatValue];
    v5 = v4;

    *v1 = v5;
    *(v1 + 4) = 0;
  }
}

void sub_10009BE64(uint64_t result, float a2)
{
  v3 = v2 + OBJC_IVAR____TtC7Climate16ClimateFanButton____lazy_storage___currentValue;
  *v3 = a2;
  *(v3 + 4) = 0;
  if ((*(v2 + OBJC_IVAR____TtC7Climate16ClimateFanButton_shouldIgnoreCarUpdates) & 1) == 0)
  {
    if ((sub_10009BF70() & 2) != 0 || *(v2 + OBJC_IVAR____TtC7Climate16ClimateFanButton_wasPreviousValueInAutoMode) == 1)
    {
      v4 = 0;
    }

    else
    {
      [*(v2 + OBJC_IVAR____TtC7Climate16ClimateFanButton_progressCircle) frame];
      v9.origin.x = 0.0;
      v9.origin.y = 0.0;
      v9.size.width = 0.0;
      v9.size.height = 0.0;
      v4 = !CGRectEqualToRect(v8, v9);
    }

    v5 = *(v2 + OBJC_IVAR____TtC7Climate16ClimateFanButton_progressCircle);
    sub_10009BDB8();
    v7 = *((swift_isaMask & *v5) + 0x70);
    if (*(v5 + v7) != v6)
    {
      *(v5 + v7) = v6;
      sub_10009D494(v4);
    }

    *(v2 + OBJC_IVAR____TtC7Climate16ClimateFanButton_wasPreviousValueInAutoMode) = (sub_10009BF70() & 2) != 0;
  }
}

uint64_t sub_10009BF70()
{
  v1 = *(v0 + OBJC_IVAR____TtC7Climate16ClimateFanButton_fan);
  if ([v1 hasOn] && (objc_msgSend(v1, "on") & 1) == 0)
  {
    v10 = [v1 autoMode];
    v11 = [v1 onRestricted];
    v12 = [v1 onInvalid];
    LOBYTE(v6) = [v1 onDisabled];
    v7 = v12 == 0;
    if (v10)
    {
      if (v11)
      {
        goto LABEL_9;
      }

      goto LABEL_12;
    }

    if (v11)
    {
LABEL_16:
      v8 = 4;
      v9 = 12;
      goto LABEL_17;
    }

LABEL_23:
    v8 = 8;
    if (v7)
    {
      v8 = 0;
    }

    if (v6)
    {
      return v8 | 0x10;
    }

    return v8;
  }

  v2 = CAFFan.isBlowing.getter();
  v3 = [v1 autoMode];
  v4 = [v1 fanLevelRestricted];
  v5 = [v1 fanLevelInvalid];
  v6 = [v1 fanLevelDisabled];
  v7 = v5 == 0;
  if ((v2 & 1) == 0)
  {
    if (v3)
    {
      if (v4)
      {
LABEL_9:
        v8 = 6;
        v9 = 14;
        goto LABEL_17;
      }

LABEL_12:
      v8 = 2;
      v9 = 10;
      goto LABEL_17;
    }

    if (v4)
    {
      goto LABEL_16;
    }

    goto LABEL_23;
  }

  if (v3)
  {
    if ((v4 & 1) == 0)
    {
      v8 = 3;
      if (v5)
      {
        v8 = 11;
      }

      if (v6)
      {
        return v8 | 0x10;
      }

      return v8;
    }

    v8 = 7;
    v9 = 15;
  }

  else
  {
    if ((v4 & 1) == 0)
    {
      v8 = 9;
      if (!v5)
      {
        v8 = 1;
      }

      if (v6)
      {
        return v8 | 0x10;
      }

      return v8;
    }

    v8 = 5;
    v9 = 13;
  }

LABEL_17:
  if (!v7)
  {
    v8 = v9;
  }

  if (v6)
  {
    return v8 | 0x10;
  }

  return v8;
}

void sub_10009C11C(void *a1, unsigned __int8 a2, __n128 a3)
{
  v4 = v3;
  v7 = a2;
  *&v3[OBJC_IVAR____TtC7Climate16ClimateFanButton_autoModeGlyph] = 0;
  UUID.init()();
  v3[OBJC_IVAR____TtC7Climate16ClimateFanButton_shouldIgnoreCarUpdates] = 0;
  v8 = &v3[OBJC_IVAR____TtC7Climate16ClimateFanButton____lazy_storage___currentValue];
  *v8 = 0;
  v8[4] = 1;
  v3[OBJC_IVAR____TtC7Climate16ClimateFanButton_wasPreviousValueInAutoMode] = 0;
  *&v3[OBJC_IVAR____TtC7Climate16ClimateFanButton_fan] = a1;
  v71 = a1;
  v9 = [v71 fanLevelRange];
  v10 = [v9 minimum];
  [v10 floatValue];
  v12 = v11;

  v13 = [v9 maximum];
  v70 = v9;

  [v13 floatValue];
  v15 = v14;

  v16 = objc_allocWithZone(sub_1000040E8(&unk_100116540, qword_1000D7970));
  *&v4[OBJC_IVAR____TtC7Climate16ClimateFanButton_progressCircle] = sub_10009D144(v12, v15, 31.0, 2.0);
  v4[OBJC_IVAR____TtC7Climate16ClimateFanButton_style] = a2;
  v17 = objc_opt_self();
  v18 = v17;
  if (v7 == 1)
  {
    v19 = [v17 labelColor];
    if (qword_100113EA8 != -1)
    {
      swift_once();
    }

    v20 = qword_10011AFC0;
    v21 = &selRef_labelColor;
  }

  else
  {
    v21 = &selRef__carSystemFocusPrimaryColor;
    v19 = [v17 _carSystemFocusPrimaryColor];
    v22 = [v18 labelColor];
    v20 = [v22 colorWithAlphaComponent:0.25];
  }

  v23 = [v18 *v21];
  v24 = &v4[OBJC_IVAR____TtC7Climate16ClimateFanButton_progressColors];
  *v24 = v19;
  v24[1] = v20;
  v24[2] = v23;
  v24[3] = &_swiftEmptyDictionarySingleton;
  v72.receiver = v4;
  v72.super_class = type metadata accessor for ClimateFanButton(0);
  v25 = objc_msgSendSuper2(&v72, "init");
  v26 = OBJC_IVAR____TtC7Climate13ClimateButton_allowFocus;
  swift_beginAccess();
  v25[v26] = 0;
  v27 = objc_opt_self();
  v28 = v27;
  if (a2 == 1)
  {
    v29 = [v27 clearColor];
    if (qword_100113EA8 != -1)
    {
      swift_once();
    }

    v30 = qword_10011AFC0;
    v25;
    v31 = [v28 clearColor];
    v32 = [v28 labelColor];
    sub_1000040E8(&unk_100117DF0, &qword_1000D8DC0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1000D5970;
    *(inited + 32) = 16;
    v34 = inited + 32;
    *(inited + 40) = v29;
    *(inited + 48) = v30;
    *(inited + 56) = &_swiftEmptyDictionarySingleton;
    v35 = sub_10004F0C8(inited);
    swift_setDeallocating();
    v36 = v30;
    v37 = v29;
    sub_100008904(v34, &unk_100114760, &unk_1000D5C30);
    sub_10007A4CC(v31, v32, v35);
  }

  else
  {
    v38 = v25;
    v31 = [v28 clearColor];
    v32 = [v28 labelColor];
    sub_10007A4CC(v31, v32, &_swiftEmptyDictionarySingleton);
  }

  v39 = v25;
  [v39 _setContinuousCornerRadius:0.0];
  v40 = (v39 + OBJC_IVAR____TtC7Climate13ClimateButton_imageSystemName);
  swift_beginAccess();
  v41 = *v40;
  v42 = v40[1];
  *v40 = xmmword_1000D7420;
  if (!v42 || (v41 != 0x6C6C69662E6E6166 || v42 != 0xE800000000000000) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    ClimateButton.updateClimateConfiguration()();
  }

  v43 = [objc_opt_self() configurationWithPointSize:5 weight:14.0];
  v44 = *((swift_isaMask & *v39) + 0x120);
  v45 = v44();
  v46 = *(v39 + OBJC_IVAR____TtC7Climate13ClimateButton____lazy_storage___imageSymbolConfiguration);
  *(v39 + OBJC_IVAR____TtC7Climate13ClimateButton____lazy_storage___imageSymbolConfiguration) = v43;
  v47 = v43;

  v48 = v44();
  sub_10000827C(0, &qword_100116930, UIImageSymbolConfiguration_ptr);
  LOBYTE(v46) = static NSObject.== infix(_:_:)();

  if ((v46 & 1) == 0)
  {
    ClimateButton.updateClimateConfiguration()();
  }

  v49 = OBJC_IVAR____TtC7Climate16ClimateFanButton_progressCircle;
  [*(v39 + OBJC_IVAR____TtC7Climate16ClimateFanButton_progressCircle) setTranslatesAutoresizingMaskIntoConstraints:0];
  [v39 addSubview:*(v39 + v49)];
  v50 = objc_opt_self();
  sub_1000040E8(&unk_100114770, qword_1000D58D0);
  v51 = swift_allocObject();
  *(v51 + 16) = xmmword_1000D5D90;
  v52 = [*(v39 + v49) centerXAnchor];
  v53 = [v39 centerXAnchor];
  v54 = [v52 constraintEqualToAnchor:v53];

  *(v51 + 32) = v54;
  v55 = [*(v39 + v49) centerYAnchor];
  v56 = [v39 centerYAnchor];
  v57 = [v55 constraintEqualToAnchor:v56];

  *(v51 + 40) = v57;
  v58 = [*(v39 + v49) heightAnchor];
  v59 = [v39 heightAnchor];
  v60 = [v58 constraintEqualToAnchor:v59];

  *(v51 + 48) = v60;
  v61 = [*(v39 + v49) widthAnchor];
  v62 = [v39 widthAnchor];

  v63 = [v61 constraintEqualToAnchor:v62];
  *(v51 + 56) = v63;
  sub_10000827C(0, &qword_1001149C0, NSLayoutConstraint_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v50 activateConstraints:isa];

  v65 = [objc_opt_self() sharedApplication];
  v66 = [v65 delegate];

  if (v66)
  {
    type metadata accessor for ClimateAppDelegate();
    swift_dynamicCastClassUnconditional();
    v67 = sub_1000AF438();
    swift_unknownObjectRelease();
    v68 = *&v67[OBJC_IVAR____TtC7Climate18ClimateCoordinator_continuousStepperTracker];

    v69 = v39;
    sub_10009DAC0(v69, v68);
  }

  else
  {
    __break(1u);
  }
}

void sub_10009CAD8()
{
  sub_1000C10C4();
  [v0 setEnabled:sub_10009BF70() < 8];
  ClimateButton.refreshColorConfig()();
  ClimateButton.createEdgeInsets()();
  if (v0[OBJC_IVAR____TtC7Climate16ClimateFanButton_style] == 1)
  {
    v1 = sub_10009BF70();
    v2 = *(*&v0[OBJC_IVAR____TtC7Climate16ClimateFanButton_progressCircle] + *((swift_isaMask & **&v0[OBJC_IVAR____TtC7Climate16ClimateFanButton_progressCircle]) + 0x78));
    if (v1 >= 0x10)
    {
      v4 = kCAFilterPlusL;
      v5 = objc_allocWithZone(CAFilter);
      v6 = v2;
      v7 = [v5 initWithType:v4];
      [v6 setCompositingFilter:v7];
    }

    else
    {
      v3 = *(*&v0[OBJC_IVAR____TtC7Climate16ClimateFanButton_progressCircle] + *((swift_isaMask & **&v0[OBJC_IVAR____TtC7Climate16ClimateFanButton_progressCircle]) + 0x78));

      [v3 setCompositingFilter:0];
    }
  }
}

uint64_t sub_10009CC30()
{
  v1 = *(v0 + OBJC_IVAR____TtC7Climate16ClimateFanButton_progressColors);
  v2 = *(v0 + OBJC_IVAR____TtC7Climate16ClimateFanButton_progressColors + 8);
  v3 = *(v0 + OBJC_IVAR____TtC7Climate16ClimateFanButton_progressColors + 16);

  v4 = OBJC_IVAR____TtC7Climate16ClimateFanButton_trackerUUID;
  v5 = type metadata accessor for UUID();
  v6 = *(*(v5 - 8) + 8);

  return v6(v0 + v4, v5);
}

id sub_10009CCF4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ClimateFanButton(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for ClimateFanButton(uint64_t a1)
{
  result = qword_100117740;
  if (!qword_100117740)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10009CE48(uint64_t a1)
{
  result = type metadata accessor for UUID();
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

void sub_10009CF40(double a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC7Climate16ClimateFanButton_fan);
  v4 = [v3 fanLevelRange];
  v5 = [v4 maximum];

  [v5 floatValue];
  v7 = v6;

  v8 = [v3 fanLevelRange];
  v9 = [v8 minimum];

  [v9 floatValue];
  v11 = v10;

  v12 = a1;
  v13 = (v7 - v11) * v12;
  v14 = *(v1 + OBJC_IVAR____TtC7Climate16ClimateFanButton_progressCircle);
  v15 = *((swift_isaMask & *v14) + 0x70);
  if (*(v14 + v15) != v13)
  {
    *(v14 + v15) = v13;
    sub_10009D494(1);
  }
}

void *sub_10009D144(float a1, float a2, double a3, double a4)
{
  *(v4 + *((swift_isaMask & *v4) + 0x60)) = 0;
  *(v4 + *((swift_isaMask & *v4) + 0x68)) = 0;
  v9 = *((swift_isaMask & *v4) + 0x78);
  *(v4 + v9) = [objc_allocWithZone(CAShapeLayer) init];
  v10 = *((swift_isaMask & *v4) + 0x80);
  *(v4 + v10) = [objc_allocWithZone(CAShapeLayer) init];
  *(v4 + *((swift_isaMask & *v4) + 0x88)) = a1;
  *(v4 + *((swift_isaMask & *v4) + 0x90)) = a2;
  *(v4 + *((swift_isaMask & *v4) + 0x70)) = 0;
  *(v4 + *((swift_isaMask & *v4) + 0x98)) = (a3 - a4) * 0.5;
  [*(v4 + v9) setLineWidth:a4];
  [*(v4 + v10) setLineWidth:a4];
  v26.receiver = v4;
  v26.super_class = sub_1000040E8(&unk_100116540, qword_1000D7970);
  v11 = objc_msgSendSuper2(&v26, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v12 = objc_opt_self();
  v13 = v11;
  v14 = [v12 clearColor];
  [v13 setBackgroundColor:v14];

  v15 = *((swift_isaMask & *v13) + 0x80);
  [*(v13 + v15) setStrokeEnd:0.0];
  sub_1000040E8(&unk_100114770, qword_1000D58D0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1000D58A0;
  v17 = *(v13 + v15);
  *(inited + 32) = v17;
  v18 = *(v13 + *((swift_isaMask & *v13) + 0x78));
  *(inited + 40) = v18;
  v19 = v17;
  v20 = v18;
  if ((inited & 0xC000000000000001) != 0)
  {
    v21 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    v21 = v19;
  }

  v22 = v21;
  [v21 setOpacity:0.0];

  if ((inited & 0xC000000000000001) != 0)
  {
    v23 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    v23 = *(inited + 40);
  }

  v24 = v23;

  [v24 setOpacity:0.0];

  return v13;
}

void sub_10009D494(char a1)
{
  v3 = *v1;
  v4 = *(v1 + *((swift_isaMask & *v1) + 0x88));
  v5 = *((swift_isaMask & *v1) + 0x70);
  v6 = *(v1 + v5);
  if (v6 > 0.0 && v4 < 0.0)
  {
    v4 = 0.0;
  }

  v7 = 0.0;
  if (*(v1 + *((swift_isaMask & *v1) + 0x90)) <= 0.0)
  {
    v7 = *(v1 + *((swift_isaMask & v3) + 0x90));
  }

  if (v6 < 0.0)
  {
    v8 = v7;
  }

  else
  {
    v8 = *(v1 + *((swift_isaMask & v3) + 0x90));
  }

  v9 = *(v1 + *((swift_isaMask & *v1) + 0x80));
  [v9 strokeEnd];
  v10 = *(v1 + v5);
  if (v10 >= 0.0)
  {
    v13 = 0.0;
    if (v10 <= 0.0)
    {
      goto LABEL_14;
    }

    v11 = (v10 - v4);
    v12 = v8 - v4;
  }

  else
  {
    v11 = (v10 - v8);
    v12 = v4 - v8;
  }

  v13 = v11 / v12;
LABEL_14:
  v14 = objc_opt_self();
  [v14 setDisableActions:1];
  [v9 setStrokeEnd:v13];
  [v14 setDisableActions:0];
  if (a1)
  {
    v15 = String._bridgeToObjectiveC()();
    v16 = [objc_opt_self() animationWithKeyPath:v15];

    v17 = v16;
    isa = CGFloat._bridgeToObjectiveC()().super.super.isa;
    [v17 setFromValue:isa];

    v19 = CGFloat._bridgeToObjectiveC()().super.super.isa;
    [v17 setToValue:v19];

    [v17 setMass:2.0];
    [v17 setStiffness:300.0];
    [v17 setDamping:50.0];
    [v17 setDuration:0.8];
    [v9 addAnimation:v17 forKey:0];
  }

  v20 = *(v1 + v5);
  if (v20 == 0.0)
  {
    [v9 opacity];
    if (v21 > 0.5)
    {
      v22 = a1 & 1;
      v23 = 0.0;
LABEL_23:
      sub_10009D7AC(v22, v23);
      return;
    }

    v20 = *(v1 + v5);
  }

  if (v20 != 0.0)
  {
    [v9 opacity];
    if (v24 < 0.5)
    {
      v22 = a1 & 1;
      v23 = 1.0;
      goto LABEL_23;
    }
  }
}

uint64_t sub_10009D7AC(char a1, float a2)
{
  sub_1000040E8(&unk_100114770, qword_1000D58D0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1000D58A0;
  v6 = swift_isaMask;
  v7 = *(v2 + *((swift_isaMask & *v2) + 0x80));
  *(inited + 32) = v7;
  v8 = *(v2 + *((*v2 & v6) + 0x78));
  *(inited + 40) = v8;
  v9 = v7;
  v10 = v8;
  if ((inited & 0xC000000000000001) != 0)
  {
    v11 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    v11 = v9;
  }

  v13 = v11;
  *&v12 = a2;
  [v11 setOpacity:v12];
  if (a1)
  {
    v14 = String._bridgeToObjectiveC()();
    v15 = [objc_opt_self() animationWithKeyPath:v14];

    v16 = v15;
    isa = Int._bridgeToObjectiveC()().super.super.isa;
    [v16 setFromValue:isa];

    v18 = Int._bridgeToObjectiveC()().super.super.isa;
    [v16 setToValue:v18];

    [v16 setCumulative:1];
    [v13 addAnimation:v16 forKey:0];
  }

  if ((inited & 0xC000000000000001) != 0)
  {
    v19 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    v19 = *(inited + 40);
  }

  v21 = v19;
  *&v20 = a2;
  [v19 setOpacity:v20];
  if (a1)
  {
    v22 = String._bridgeToObjectiveC()();
    v23 = [objc_opt_self() animationWithKeyPath:v22];

    v24 = v23;
    v25 = Int._bridgeToObjectiveC()().super.super.isa;
    [v24 setFromValue:v25];

    v26 = Int._bridgeToObjectiveC()().super.super.isa;
    [v24 setToValue:v26];

    [v24 setCumulative:1];
    [v21 addAnimation:v24 forKey:0];
  }

  swift_setDeallocating();
  return swift_arrayDestroy();
}

uint64_t sub_10009DAC0(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v35 - v9;
  *&v12 = __chkstk_darwin(v11).n128_u64[0];
  v14 = &v35 - v13;
  v15 = [a1 service];
  v16 = [v15 uniqueIdentifier];

  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  swift_beginAccess();
  if (*(*(a2 + 16) + 16) && (, sub_10007DD80(v14), v18 = v17, , (v18 & 1) != 0))
  {
    (*(v5 + 16))(v10, v14, v4);
    v19 = sub_10001BF20(v38);
    v20 = sub_100040DD8(v37);
    if (*v21)
    {
      v22 = [a1 trackerUUID];
      v35 = v19;
      v23 = v4;
      v24 = v22;
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      swift_unknownObjectWeakInit();
      v25 = swift_unknownObjectWeakAssign();
      v36 = 0;
      sub_100078254(v25, v7);
      (v20)(v37, 0);
      v26 = *(v5 + 8);
      v26(v10, v23);
      v35(v38, 0);
      return (v26)(v14, v23);
    }

    else
    {
      (v20)(v37, 0);
      v34 = *(v5 + 8);
      v34(v10, v4);
      (v19)(v38, 0);
      return (v34)(v14, v4);
    }
  }

  else
  {
    sub_1000040E8(&qword_100117750, &qword_1000D8DC8);
    v28 = *(*(sub_1000040E8(&qword_100115EA0, &unk_1000D8DD0) - 8) + 80);
    v35 = v4;
    v29 = (v28 + 32) & ~v28;
    v30 = swift_allocObject();
    *(v30 + 16) = xmmword_1000D5970;
    v31 = [a1 trackerUUID];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    swift_unknownObjectWeakInit();
    swift_unknownObjectWeakAssign();
    v32 = sub_10004F224(v30);
    swift_setDeallocating();
    sub_100008904(v30 + v29, &qword_100115EA0, &unk_1000D8DD0);
    swift_deallocClassInstance();
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v37[0] = *(a2 + 16);
    *(a2 + 16) = 0x8000000000000000;
    sub_10004B070(v32, v14, isUniquelyReferenced_nonNull_native);
    *(a2 + 16) = v37[0];
    swift_endAccess();
    return (*(v5 + 8))(v14, v35);
  }
}

void sub_10009DF38(void *a1)
{
  v2 = *((swift_isaMask & *v1) + 0x60);
  v3 = *(v1 + v2);
  *(v1 + v2) = a1;
  v4 = a1;

  v5 = *(v1 + *((swift_isaMask & *v1) + 0x80));
  v6 = *(v1 + v2);
  if (v6)
  {
    v7 = [v6 CGColor];
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;
  [v5 setStrokeColor:?];
}

void sub_10009E008(void *a1)
{
  v2 = *((swift_isaMask & *v1) + 0x68);
  v3 = *(v1 + v2);
  *(v1 + v2) = a1;
  v4 = a1;

  v5 = *(v1 + *((swift_isaMask & *v1) + 0x78));
  v6 = *(v1 + v2);
  if (v6)
  {
    v7 = [v6 CGColor];
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;
  [v5 setStrokeColor:?];
}

void sub_10009E0D8(void *a1, void *a2, void *a3, uint64_t a4)
{
  v9 = (v4 + OBJC_IVAR____TtC7Climate16ClimateFanButton_progressColors);
  v11 = *(v4 + OBJC_IVAR____TtC7Climate16ClimateFanButton_progressColors);
  v10 = *(v4 + OBJC_IVAR____TtC7Climate16ClimateFanButton_progressColors + 8);
  v12 = *(v4 + OBJC_IVAR____TtC7Climate16ClimateFanButton_progressColors + 24);
  v20 = *(v4 + OBJC_IVAR____TtC7Climate16ClimateFanButton_progressColors + 16);
  *v9 = a1;
  v9[1] = a2;
  v9[2] = a3;
  v9[3] = a4;
  v13 = a3;

  v14 = a1;
  v15 = a2;
  if ((sub_1000AF2DC(v11, v10, v20, v12, v14, a2, a3, a4) & 1) == 0)
  {
    v16 = v9[2];
    v17 = v16;
    sub_10009DF38(v16);

    v18 = v9[1];
    v19 = v18;
    sub_10009E008(v18);

    v11 = v19;
  }
}

double sub_10009E1F0()
{
  v1 = sub_1000579BC(*v0);
  [v1 setTranslatesAutoresizingMaskIntoConstraints:0];
  sub_1000040E8(&unk_1001179E0, qword_1000D5C90);
  v2 = swift_allocObject();
  *&result = 1;
  *(v2 + 16) = xmmword_1000D5970;
  *(v2 + 32) = v1;
  *(v2 + 40) = &off_1000F7CC0;
  return result;
}

void sub_10009E260()
{
  v1 = v0;
  v2 = objc_opt_self();
  v3 = [v2 sharedApplication];
  v4 = [v3 delegate];

  if (!v4)
  {
LABEL_72:
    __break(1u);
LABEL_73:
    __break(1u);
    goto LABEL_74;
  }

  type metadata accessor for ClimateAppDelegate();
  swift_dynamicCastClassUnconditional();
  v5 = sub_1000AF438();
  swift_unknownObjectRelease();
  v6 = [*(v5 + OBJC_IVAR____TtC7Climate18ClimateCoordinator_sessionStatus) currentSession];
  if (!v6)
  {
    goto LABEL_16;
  }

  v7 = v6;
  v8 = [v6 configuration];

  LOBYTE(v7) = [v8 rightHandDrive];
  if ((v7 & 1) == 0)
  {
    goto LABEL_17;
  }

  v9 = [v2 sharedApplication];
  v10 = [v9 delegate];

  if (!v10)
  {
LABEL_74:
    __break(1u);
    return;
  }

  swift_dynamicCastClassUnconditional();
  v11 = sub_1000AF438();
  swift_unknownObjectRelease();

  v12 = [v2 sharedApplication];
  v13 = [v12 userInterfaceLayoutDirection];

  if (v13 == 1)
  {
    v14 = *&v1[OBJC_IVAR____TtC7Climate30ClimateHorizontalStatusBarView_trailingOfStepper];
    v15 = [v14 arrangedSubviews];
    v2 = sub_10000827C(0, &qword_100115400, UIView_ptr);
    v16 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v16 >> 62)
    {
      v17 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v17 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v17)
    {
      v1 = [v14 arrangedSubviews];
      v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      if (v5 >> 62)
      {
        goto LABEL_64;
      }

      v18 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v18)
      {
        while (1)
        {
          v19 = __OFSUB__(v18, 1);
          v20 = v18 - 1;
          if (v19)
          {
            __break(1u);
            goto LABEL_70;
          }

          if ((v5 & 0xC000000000000001) != 0)
          {
            goto LABEL_58;
          }

          if ((v20 & 0x8000000000000000) != 0)
          {
            goto LABEL_71;
          }

          if (v20 < *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
LABEL_36:
            v37 = *(v5 + 8 * v20 + 32);
            goto LABEL_47;
          }

          __break(1u);
LABEL_16:

LABEL_17:
          v21 = [v2 sharedApplication];
          v22 = [v21 delegate];

          if (!v22)
          {
            goto LABEL_73;
          }

          swift_dynamicCastClassUnconditional();
          v23 = sub_1000AF438();
          swift_unknownObjectRelease();

          v24 = [v2 sharedApplication];
          v25 = [v24 userInterfaceLayoutDirection];

          v26 = "arrangedSubviews";
          if (v25 == 1)
          {
            v27 = *&v1[OBJC_IVAR____TtC7Climate30ClimateHorizontalStatusBarView_leadingOfStepper];
            v28 = [v27 arrangedSubviews];
            sub_10000827C(0, &qword_100115400, UIView_ptr);
            v29 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

            if (v29 >> 62)
            {
              v30 = _CocoaArrayWrapper.endIndex.getter();
            }

            else
            {
              v30 = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
            }

            if (!v30)
            {
              goto LABEL_49;
            }

            v1 = [v27 arrangedSubviews];
            v31 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

            if (v31 >> 62)
            {
              if (!_CocoaArrayWrapper.endIndex.getter())
              {
                goto LABEL_67;
              }
            }

            else if (!*((v31 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_67;
            }

            if ((v31 & 0xC000000000000001) != 0)
            {
              goto LABEL_58;
            }

            if (*((v31 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_46;
            }

            __break(1u);
          }

          v32 = *&v1[OBJC_IVAR____TtC7Climate30ClimateHorizontalStatusBarView_trailingOfStepper];
          v33 = [v32 v26];
          v2 = sub_10000827C(0, &qword_100115400, UIView_ptr);
          v34 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

          if (v34 >> 62)
          {
            v35 = _CocoaArrayWrapper.endIndex.getter();
          }

          else
          {
            v35 = *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          if (!v35)
          {
            goto LABEL_37;
          }

          v1 = [v32 arrangedSubviews];
          v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

          if (v5 >> 62)
          {
            v36 = _CocoaArrayWrapper.endIndex.getter();
            if (!v36)
            {
              goto LABEL_67;
            }
          }

          else
          {
            v36 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (!v36)
            {
              goto LABEL_67;
            }
          }

          v19 = __OFSUB__(v36, 1);
          v20 = v36 - 1;
          if (v19)
          {
            break;
          }

          if ((v5 & 0xC000000000000001) != 0)
          {
            goto LABEL_58;
          }

          if ((v20 & 0x8000000000000000) != 0)
          {
            goto LABEL_62;
          }

          if (v20 < *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_36;
          }

LABEL_63:
          __break(1u);
LABEL_64:
          v18 = _CocoaArrayWrapper.endIndex.getter();
          if (!v18)
          {
            goto LABEL_67;
          }
        }

        __break(1u);
LABEL_62:
        __break(1u);
        goto LABEL_63;
      }

      goto LABEL_67;
    }

LABEL_37:
    v38 = *&v1[OBJC_IVAR____TtC7Climate30ClimateHorizontalStatusBarView_temperatureStepper];
    if (!v38)
    {
      return;
    }

    v39 = &OBJC_IVAR____TtC7Climate14ClimateStepper_upButton;
LABEL_51:
    v46 = *(v38 + *v39);
    return;
  }

  v40 = *&v1[OBJC_IVAR____TtC7Climate30ClimateHorizontalStatusBarView_leadingOfStepper];
  v41 = [v40 arrangedSubviews];
  sub_10000827C(0, &qword_100115400, UIView_ptr);
  v42 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v42 >> 62)
  {
    v43 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v43 = *((v42 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v43)
  {
LABEL_49:
    v38 = *&v1[OBJC_IVAR____TtC7Climate30ClimateHorizontalStatusBarView_temperatureStepper];
    if (!v38)
    {
      return;
    }

    v39 = &OBJC_IVAR____TtC7Climate14ClimateStepper_downButton;
    goto LABEL_51;
  }

  v44 = [v40 arrangedSubviews];
  v31 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v31 >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_44;
    }
  }

  else if (*((v31 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_44:
    if ((v31 & 0xC000000000000001) != 0)
    {
LABEL_58:
      specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_48:

      return;
    }

    if (*((v31 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_46:
      v37 = *(v31 + 32);
LABEL_47:
      v45 = v37;
      goto LABEL_48;
    }

LABEL_70:
    __break(1u);
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

LABEL_67:
}

uint64_t sub_10009E960(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_15;
  }

  v4 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v4)
  {
    do
    {
      v5 = 0;
      v15 = a3 & 0xC000000000000001;
      v6 = a3 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v15)
        {
          v7 = a3;
          v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v5 >= *(v6 + 16))
          {
            goto LABEL_14;
          }

          v7 = a3;
          v8 = *(a3 + 8 * v5 + 32);
        }

        v9 = v8;
        v10 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          break;
        }

        v17 = v8;
        v11 = a1(&v17);

        if (!v3 && (v11 & 1) == 0)
        {
          ++v5;
          a3 = v7;
          if (v10 != v4)
          {
            continue;
          }
        }

        return v11 & 1;
      }

      __break(1u);
LABEL_14:
      __break(1u);
LABEL_15:
      v12 = a3;
      v13 = _CocoaArrayWrapper.endIndex.getter();
      a3 = v12;
      v4 = v13;
    }

    while (v13);
  }

  v11 = 0;
  return v11 & 1;
}

uint64_t sub_10009EA88(uint64_t (*a1)(void *, __n128), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = (a1)(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

void *sub_10009EB34()
{
  v1 = *(v0 + OBJC_IVAR____TtC7Climate30ClimateHorizontalStatusBarView_temperatureStepper);
  v2 = v1;
  return v1;
}

uint64_t sub_10009EB64()
{
  v1 = *(v0 + OBJC_IVAR____TtC7Climate30ClimateHorizontalStatusBarView_leadingOfStepper);
  v2 = [v1 arrangedSubviews];
  sub_10000827C(0, &qword_100115400, UIView_ptr);
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v3 >> 62)
  {
    v4 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v4)
  {
    v5 = [v1 arrangedSubviews];
    v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v7 = v6 >> 62 ? _CocoaArrayWrapper.endIndex.getter() : *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (__OFSUB__(v7, 1))
    {
      __break(1u);
      goto LABEL_18;
    }
  }

  v8 = *(v0 + OBJC_IVAR____TtC7Climate30ClimateHorizontalStatusBarView_trailingOfStepper);
  v9 = [v8 arrangedSubviews];
  v10 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v10 >> 62)
  {
    v11 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v11)
  {
    v13 = [v8 arrangedSubviews];
    v14 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (!(v14 >> 62))
    {
      v15 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_12;
    }

LABEL_18:
    v15 = _CocoaArrayWrapper.endIndex.getter();
LABEL_12:

    if (__OFSUB__(v15, 1))
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_10009EDA0()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

void sub_10009EE14(void **a1, uint64_t a2)
{
  v3 = type metadata accessor for CAUResource();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000040E8(&qword_100116700, &qword_1000D8ED0);
  __chkstk_darwin(v7);
  v9 = &v18 - v8;
  v10 = type metadata accessor for CAUAppDockIndicators();
  v19 = *(v10 - 8);
  __chkstk_darwin(v10);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v15 = Strong;
    if (v13)
    {
      (*(v4 + 104))(v6, enum case for CAUResource.appDockIndicator(_:), v3);
      sub_100066718();
      v16 = v13;
      dispatch thunk of CAUAssetLibrary.asset<A>(for:)();
      (*(v4 + 8))(v6, v3);
      v17 = v19;
      if ((*(v19 + 48))(v9, 1, v10) == 1)
      {

        sub_100008904(v9, &qword_100116700, &qword_1000D8ED0);
      }

      else
      {
        (*(v17 + 32))(v12, v9, v10);
        *&v15[OBJC_IVAR____TtC7Climate20ClimateStatusBarView_supportedAssetsIndicators] = CAUAppDockIndicators.indicators.getter();

        sub_1000A0578();

        (*(v17 + 8))(v12, v10);
      }
    }

    else
    {
    }
  }
}

id sub_10009F154(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1000040E8(&unk_100115120, &unk_1000D64A0);
  __chkstk_darwin(v4 - 8);
  v6 = &v31 - v5;
  v7 = type metadata accessor for CAUPersistentElements();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v31 - v12;
  sub_1000287E8(a1, v6, &unk_100115120, &unk_1000D64A0);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_100008904(v6, &unk_100115120, &unk_1000D64A0);
    v14 = *(v2 + OBJC_IVAR____TtC7Climate30ClimateHorizontalStatusBarView_frontDefrostIndicator);
    if (v14)
    {
      [v14 setAlpha:1.0];
    }

    v15 = *(v2 + OBJC_IVAR____TtC7Climate30ClimateHorizontalStatusBarView_rearDefrostIndicator);
    if (v15)
    {
      [v15 setAlpha:1.0];
    }

    v16 = *(v2 + OBJC_IVAR____TtC7Climate30ClimateHorizontalStatusBarView_temperatureStepper);
    if (v16)
    {
      [v16 setAlpha:1.0];
    }

    result = *(v2 + OBJC_IVAR____TtC7Climate30ClimateHorizontalStatusBarView_seatHeatingIndicator);
    if (result)
    {
      return [result setAlpha:1.0];
    }
  }

  else
  {
    (*(v8 + 32))(v13, v6, v7);
    v18 = *(v2 + OBJC_IVAR____TtC7Climate30ClimateHorizontalStatusBarView_frontDefrostIndicator);
    if (v18)
    {
      v19 = v18;
      static CAUPersistentElements.frontDefrost.getter();
      sub_1000A2414(&unk_100116690, &type metadata accessor for CAUPersistentElements, &protocol conformance descriptor for CAUPersistentElements);
      v20 = dispatch thunk of SetAlgebra.isSuperset(of:)();
      (*(v8 + 8))(v10, v7);
      v21 = 0.0;
      if (v20)
      {
        v21 = 1.0;
      }

      [v19 setAlpha:v21];
    }

    v22 = *(v2 + OBJC_IVAR____TtC7Climate30ClimateHorizontalStatusBarView_rearDefrostIndicator);
    if (v22)
    {
      v23 = v22;
      static CAUPersistentElements.rearDefrost.getter();
      sub_1000A2414(&unk_100116690, &type metadata accessor for CAUPersistentElements, &protocol conformance descriptor for CAUPersistentElements);
      v24 = dispatch thunk of SetAlgebra.isSuperset(of:)();
      (*(v8 + 8))(v10, v7);
      v25 = 0.0;
      if (v24)
      {
        v25 = 1.0;
      }

      [v23 setAlpha:v25];
    }

    v26 = *(v2 + OBJC_IVAR____TtC7Climate30ClimateHorizontalStatusBarView_temperatureStepper);
    if (v26)
    {
      v27 = v26;
      static CAUPersistentElements.targetTemperature.getter();
      sub_1000A2414(&unk_100116690, &type metadata accessor for CAUPersistentElements, &protocol conformance descriptor for CAUPersistentElements);
      v28 = dispatch thunk of SetAlgebra.isSuperset(of:)();
      (*(v8 + 8))(v10, v7);
      v29 = 0.0;
      if (v28)
      {
        v29 = 1.0;
      }

      [v27 setAlpha:v29];
    }

    v30 = *(v2 + OBJC_IVAR____TtC7Climate30ClimateHorizontalStatusBarView_seatHeatingIndicator);
    if (v30)
    {
      [v30 setAlpha:0.0];
    }

    return (*(v8 + 8))(v13, v7);
  }

  return result;
}

void sub_10009F5A4(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC7Climate30ClimateHorizontalStatusBarView_temperatureStepper);
  if (v2)
  {
    v3 = *(*(v1 + OBJC_IVAR____TtC7Climate20ClimateStatusBarView_climateZone) + OBJC_IVAR____TtC7Climate11ClimateZone_temperature);
    v4 = OBJC_IVAR____TtC7Climate32ClimateTemperatureServiceStepper_temperature;
    swift_beginAccess();
    v5 = *&v2[v4];
    v6 = v2;
    v7 = v3;
    [v5 unregisterObserver:v6];
    v8 = *&v2[v4];
    *&v2[v4] = v7;
    v9 = v7;

    [v9 registerObserver:v6];
  }

  else
  {

    sub_1000A0578();
  }
}

void sub_10009F6A8()
{
  v1 = OBJC_IVAR____TtC7Climate30ClimateHorizontalStatusBarView_temperatureStepper;
  if (!*(v0 + OBJC_IVAR____TtC7Climate30ClimateHorizontalStatusBarView_temperatureStepper))
  {
    v2 = *(*(v0 + OBJC_IVAR____TtC7Climate20ClimateStatusBarView_climateZone) + OBJC_IVAR____TtC7Climate11ClimateZone_temperature);
    v3 = objc_allocWithZone(type metadata accessor for ClimateTargetTemperatureStepper(0));
    v4 = v2;
    v5 = v0;
    sub_10002F8EC(v4, 0, 0);
    v7 = v6;

    v8 = *(v0 + v1);
    *(v5 + v1) = v7;
    v9 = v7;

    v10 = *&v9[OBJC_IVAR____TtC7Climate31ClimateTargetTemperatureStepper_temperatureButton];
    v11 = *(v5 + OBJC_IVAR____TtC7Climate20ClimateStatusBarView_temperatureIndicator);
    *(v5 + OBJC_IVAR____TtC7Climate20ClimateStatusBarView_temperatureIndicator) = v10;
  }
}

void sub_10009F7A0()
{
  v1 = OBJC_IVAR____TtC7Climate30ClimateHorizontalStatusBarView_temperatureStepper;
  if (*(v0 + OBJC_IVAR____TtC7Climate30ClimateHorizontalStatusBarView_temperatureStepper))
  {
    sub_10009FB08();
    sub_1000A01F8();
    v2 = *(v0 + OBJC_IVAR____TtC7Climate30ClimateHorizontalStatusBarView_leadingOfStepper);
    v3 = [v2 arrangedSubviews];
    sub_10000827C(0, &qword_100115400, UIView_ptr);
    v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v4 >> 62)
    {
      v5 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v5)
    {
      v6 = *(v0 + OBJC_IVAR____TtC7Climate30ClimateHorizontalStatusBarView_stackView);
      v7 = [v6 arrangedSubviews];
      v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      v28 = v2;
      __chkstk_darwin(v9);
      v27 = &v28;
      v10 = sub_10009E960(sub_1000A2464, v26, v8);

      if ((v10 & 1) == 0)
      {
        [v6 insertArrangedSubview:v2 atIndex:0];
      }
    }

    v11 = *(v0 + v1);
    if (v11)
    {
      v12 = *(v0 + OBJC_IVAR____TtC7Climate30ClimateHorizontalStatusBarView_stackView);
      v13 = v11;
      v14 = [v12 arrangedSubviews];
      v15 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      v28 = v13;
      __chkstk_darwin(v16);
      v27 = &v28;
      LOBYTE(v14) = sub_10009E960(sub_1000A2F5C, v26, v15);

      if ((v14 & 1) == 0)
      {
        [v12 addArrangedSubview:v13];
      }
    }

    v17 = *(v0 + OBJC_IVAR____TtC7Climate30ClimateHorizontalStatusBarView_trailingOfStepper);
    v18 = [v17 arrangedSubviews];
    v19 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v19 >> 62)
    {
      v20 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v20 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v20)
    {
      v21 = *(v0 + OBJC_IVAR____TtC7Climate30ClimateHorizontalStatusBarView_stackView);
      v22 = [v21 arrangedSubviews];
      v23 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      v28 = v17;
      __chkstk_darwin(v24);
      v27 = &v28;
      v25 = sub_10009E960(sub_1000A2F5C, v26, v23);

      if ((v25 & 1) == 0)
      {
        [v21 addArrangedSubview:v17];
      }
    }
  }
}

void sub_10009FB08()
{
  v1 = v0;

  v2 = sub_1000714A4();

  sub_100054E70();
  v4 = v3;
  v5 = objc_opt_self();
  v6 = [v5 sharedApplication];
  v7 = [v6 delegate];

  if (!v2)
  {
    if (v4)
    {
      if (!v7)
      {
LABEL_23:
        __break(1u);
        goto LABEL_24;
      }

      type metadata accessor for ClimateAppDelegate();
      swift_dynamicCastClassUnconditional();
      v12 = sub_1000AF438();
      swift_unknownObjectRelease();

      v13 = [v5 sharedApplication];
      v14 = [v13 userInterfaceLayoutDirection];

      if (v14 == 1)
      {
        return;
      }
    }

    else
    {
      if (!v7)
      {
LABEL_24:
        __break(1u);
        return;
      }

      type metadata accessor for ClimateAppDelegate();
      swift_dynamicCastClassUnconditional();
      v18 = sub_1000AF438();
      swift_unknownObjectRelease();

      v19 = [v5 sharedApplication];
      v20 = [v19 userInterfaceLayoutDirection];

      if (v20 != 1)
      {
        return;
      }
    }

    v11 = *(v1 + OBJC_IVAR____TtC7Climate30ClimateHorizontalStatusBarView_leadingOfStepper);
    goto LABEL_15;
  }

  if ((v4 & 1) == 0)
  {
    if (!v7)
    {
LABEL_22:
      __break(1u);
      goto LABEL_23;
    }

    type metadata accessor for ClimateAppDelegate();
    swift_dynamicCastClassUnconditional();
    v15 = sub_1000AF438();
    swift_unknownObjectRelease();

    v16 = [v5 sharedApplication];
    v17 = [v16 userInterfaceLayoutDirection];

    v11 = *(v1 + OBJC_IVAR____TtC7Climate30ClimateHorizontalStatusBarView_leadingOfStepper);
    if (v17 == 1)
    {
      goto LABEL_12;
    }

LABEL_15:

    sub_10009FE0C(v11);
    return;
  }

  if (!v7)
  {
    __break(1u);
    goto LABEL_22;
  }

  type metadata accessor for ClimateAppDelegate();
  swift_dynamicCastClassUnconditional();
  v8 = sub_1000AF438();
  swift_unknownObjectRelease();

  v9 = [v5 sharedApplication];
  v10 = [v9 userInterfaceLayoutDirection];

  v11 = *(v1 + OBJC_IVAR____TtC7Climate30ClimateHorizontalStatusBarView_leadingOfStepper);
  if (v10 == 1)
  {
    goto LABEL_15;
  }

LABEL_12:

  sub_10009FF48(v11);
}

void sub_10009FE0C(void *a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC7Climate30ClimateHorizontalStatusBarView_seatHeatingIndicator);
  if (v2)
  {
    v7 = v2;
    v4 = static os_log_type_t.error.getter();
    sub_10000827C(0, &qword_1001149B0, OS_os_log_ptr);
    v5 = static OS_os_log.default.getter();
    os_log(_:dso:log:_:_:)(v4, &_mh_execute_header, v5, "SeatHeating added to stack", 26, 2, _swiftEmptyArrayStorage);

    [a1 addArrangedSubview:v7];
    if ((sub_10006E114() & 0x19) == 1)
    {
      v6 = CAFSeatHeatingCooling.isHeating.getter() ^ 1;
    }

    else
    {
      v6 = 1;
    }

    sub_1000A1708(v6 & 1);
  }
}

double sub_10009FF48(void *a1)
{
  v3 = type metadata accessor for CAUAppDockIndicator();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&result = __chkstk_darwin(v7).n128_u64[0];
  v10 = &v18 - v9;
  v11 = *(v1 + OBJC_IVAR____TtC7Climate30ClimateHorizontalStatusBarView_frontDefrostIndicator);
  if (v11)
  {
    v12 = *(v1 + OBJC_IVAR____TtC7Climate30ClimateHorizontalStatusBarView_rearDefrostIndicator);
    if (v12)
    {
      v13 = v11;
      v21 = v13;
      v14 = v12;
      v20 = v14;
      [a1 addArrangedSubview:v13];
      [a1 addArrangedSubview:v14];
      v15 = *(v4 + 104);
      v15(v6, enum case for CAUAppDockIndicator.windshieldFront(_:), v3);
      swift_getKeyPath();
      swift_getKeyPath();
      v16 = static Published.subscript.modify();
      v18 = v1;
      sub_100038824(v10, v6);
      v19 = *(v4 + 8);
      v19(v10, v3);
      v16(v22, 0);

      v15(v6, enum case for CAUAppDockIndicator.windshieldRear(_:), v3);
      swift_getKeyPath();
      swift_getKeyPath();
      v17 = static Published.subscript.modify();
      sub_100038824(v10, v6);
      v19(v10, v3);
      v17(v22, 0);
    }
  }

  return result;
}

void sub_1000A01F8()
{
  v1 = v0;

  v2 = sub_1000714A4();

  sub_100054E70();
  v4 = v3;
  if (!v2)
  {
    if ((v3 & 1) == 0)
    {
      goto LABEL_9;
    }

    v12 = objc_opt_self();
    v13 = [v12 sharedApplication];
    v14 = [v13 delegate];

    if (!v14)
    {
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    type metadata accessor for ClimateAppDelegate();
    swift_dynamicCastClassUnconditional();
    v15 = sub_1000AF438();
    swift_unknownObjectRelease();

    v16 = [v12 sharedApplication];
    v17 = [v16 userInterfaceLayoutDirection];

    if (v17 != 1)
    {
LABEL_9:
      sub_100054E70();
      if (v18)
      {
        return;
      }

      v19 = objc_opt_self();
      v20 = [v19 sharedApplication];
      v21 = [v20 delegate];

      if (!v21)
      {
LABEL_25:
        __break(1u);
        return;
      }

      type metadata accessor for ClimateAppDelegate();
      swift_dynamicCastClassUnconditional();
      v22 = sub_1000AF438();
      swift_unknownObjectRelease();

      v23 = [v19 sharedApplication];
      v24 = [v23 userInterfaceLayoutDirection];

      if (v24 == 1)
      {
        return;
      }
    }

    v11 = *(v1 + OBJC_IVAR____TtC7Climate30ClimateHorizontalStatusBarView_trailingOfStepper);
    goto LABEL_19;
  }

  v5 = objc_opt_self();
  v6 = [v5 sharedApplication];
  v7 = [v6 delegate];

  if ((v4 & 1) == 0)
  {
    if (!v7)
    {
LABEL_23:
      __break(1u);
      goto LABEL_24;
    }

    type metadata accessor for ClimateAppDelegate();
    swift_dynamicCastClassUnconditional();
    v25 = sub_1000AF438();
    swift_unknownObjectRelease();

    v26 = [v5 sharedApplication];
    v27 = [v26 userInterfaceLayoutDirection];

    v11 = *(v1 + OBJC_IVAR____TtC7Climate30ClimateHorizontalStatusBarView_trailingOfStepper);
    if (v27 != 1)
    {
      goto LABEL_15;
    }

LABEL_19:

    sub_10009FE0C(v11);
    return;
  }

  if (!v7)
  {
    __break(1u);
    goto LABEL_23;
  }

  type metadata accessor for ClimateAppDelegate();
  swift_dynamicCastClassUnconditional();
  v8 = sub_1000AF438();
  swift_unknownObjectRelease();

  v9 = [v5 sharedApplication];
  v10 = [v9 userInterfaceLayoutDirection];

  v11 = *(v1 + OBJC_IVAR____TtC7Climate30ClimateHorizontalStatusBarView_trailingOfStepper);
  if (v10 != 1)
  {
    goto LABEL_19;
  }

LABEL_15:

  sub_10009FF48(v11);
}

void sub_1000A0578()
{
  v1 = type metadata accessor for CAUAppDockIndicator();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v13[-1] - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10009F6A8();
  v5 = *(v0 + OBJC_IVAR____TtC7Climate20ClimateStatusBarView_supportedAssetsIndicators);
  v13[3] = &type metadata for ClimateFeatures;
  v13[4] = sub_100028968();
  LOBYTE(v13[0]) = 1;

  v6 = isFeatureEnabled(_:)();
  sub_100006B9C(v13);
  if (v6)
  {
    v7 = *(v2 + 104);
    v7(v4, enum case for CAUAppDockIndicator.seatHeating(_:), v1);
    v8 = sub_10006010C(v4, v5);
    (*(v2 + 8))(v4, v1);
    if (v8)
    {
      sub_1000A0798();
    }
  }

  else
  {
    v7 = *(v2 + 104);
  }

  v7(v4, enum case for CAUAppDockIndicator.windshieldFront(_:), v1);
  v9 = sub_10006010C(v4, v5);
  v10 = *(v2 + 8);
  v10(v4, v1);
  if (v9)
  {
    sub_1000A09A0(1);
  }

  v7(v4, enum case for CAUAppDockIndicator.windshieldRear(_:), v1);
  v11 = sub_10006010C(v4, v5);

  v10(v4, v1);
  if (v11)
  {
    sub_1000A09A0(0);
  }

  sub_10009F7A0();
}

void sub_1000A0798()
{
  v1 = OBJC_IVAR____TtC7Climate30ClimateHorizontalStatusBarView_seatHeatingIndicator;
  if (!*(v0 + OBJC_IVAR____TtC7Climate30ClimateHorizontalStatusBarView_seatHeatingIndicator))
  {
    v2 = *(*(v0 + OBJC_IVAR____TtC7Climate20ClimateStatusBarView_climateZone) + OBJC_IVAR____TtC7Climate11ClimateZone_seatHeatingCooling);
    if (v2)
    {
      v3 = objc_allocWithZone(type metadata accessor for ClimateSeatHeatingIndicator(0));
      v4 = v2;
      v5 = v0;
      v6 = sub_100075214(v4);
      *&v6[OBJC_IVAR____TtC7Climate27ClimateSeatHeatingIndicator_delegate + 8] = &off_1000F8F60;
      swift_unknownObjectWeakAssign();
      v7 = objc_opt_self();
      sub_1000040E8(&unk_100114770, qword_1000D58D0);
      v8 = swift_allocObject();
      *(v8 + 16) = xmmword_1000D58A0;
      v9 = v6;
      v10 = [v9 widthAnchor];
      v11 = [v10 constraintEqualToConstant:29.0];

      *(v8 + 32) = v11;
      v12 = [v9 heightAnchor];

      v13 = [v12 constraintEqualToConstant:29.0];
      *(v8 + 40) = v13;
      sub_10000827C(0, &qword_1001149C0, NSLayoutConstraint_ptr);
      isa = Array._bridgeToObjectiveC()().super.isa;

      [v7 activateConstraints:isa];

      v15 = *(v5 + v1);
      *(v5 + v1) = v9;
    }
  }
}

void sub_1000A09A0(int a1)
{
  v2 = v1;
  v4 = type metadata accessor for CAUVehicleLayoutKey();
  v83 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v73 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v73 - v8;
  __chkstk_darwin(v10);
  v84 = &v73 - v11;
  __chkstk_darwin(v12);
  v14 = &v73 - v13;
  v15 = OBJC_IVAR____TtC7Climate20ClimateStatusBarView_climateZone;

  v16 = sub_1000714A4();

  if (v16)
  {
    v17 = &OBJC_IVAR____TtC7Climate30ClimateHorizontalStatusBarView_frontDefrostIndicator;
    if ((a1 & 1) == 0)
    {
      v17 = &OBJC_IVAR____TtC7Climate30ClimateHorizontalStatusBarView_rearDefrostIndicator;
    }

    if (!*(v1 + *v17))
    {
      v80 = v9;
      v18 = *(v1 + v15);
      v19 = OBJC_IVAR____TtC7Climate11ClimateZone_services;
      swift_beginAccess();
      v20 = *(v18 + v19);
      v79 = a1;
      v81 = v6;
      v82 = v4;
      if (v20 >> 62)
      {
LABEL_59:
        v21 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v21 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v78 = v2;

      if (!v21)
      {
        goto LABEL_17;
      }

      v22 = 0;
      v2 = &selRef_maxDefrostOn;
      while (1)
      {
        if ((v20 & 0xC000000000000001) != 0)
        {
          v23 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v22 >= *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_58;
          }

          v23 = *(v20 + 8 * v22 + 32);
        }

        v24 = v23;
        v25 = v22 + 1;
        if (__OFADD__(v22, 1))
        {
          __break(1u);
LABEL_58:
          __break(1u);
          goto LABEL_59;
        }

        v26 = [v23 car];
        if (v26)
        {
          break;
        }

        ++v22;
        if (v25 == v21)
        {
          goto LABEL_17;
        }
      }

      v27 = v26;

      v28 = [v24 car];
      v29 = v79;
      v30 = v82;
      if (v28)
      {
        v31 = [v28 climate];

        if (v31)
        {
          v32 = [v31 defrosts];

          if (v32)
          {
            v77 = sub_10000827C(0, &qword_1001167B0, CAFDefrost_ptr);
            v33 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

            v34 = v33 >> 62;
            if (v29)
            {
              v81 = v33;
              if (v34)
              {
                goto LABEL_64;
              }

              for (i = *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
              {
                v36 = 0;
                v80 = v81 & 0xC000000000000001;
                LODWORD(v74) = enum case for CAUVehicleLayoutKey.windshield_front(_:);
                v73 = (v83 + 104);
                v75 = (v83 + 8);
                v76 = v81 & 0xFFFFFFFFFFFFFF8;
                while (1)
                {
                  if (v80)
                  {
                    v37 = specialized _ArrayBuffer._getElementSlowPath(_:)();
                  }

                  else
                  {
                    if (v36 >= *(v76 + 16))
                    {
                      goto LABEL_62;
                    }

                    v37 = *(v81 + 8 * v36 + 32);
                  }

                  v38 = v37;
                  if (__OFADD__(v36, 1))
                  {
                    break;
                  }

                  CAFPositionedRequired.layoutKey.getter();
                  (*v73)(v84, v74, v82);
                  sub_1000A2414(&qword_100115100, &type metadata accessor for CAUVehicleLayoutKey, &protocol conformance descriptor for CAUVehicleLayoutKey);
                  dispatch thunk of RawRepresentable.rawValue.getter();
                  dispatch thunk of RawRepresentable.rawValue.getter();
                  if (v87 == v85 && v88 == v86)
                  {
                    v50 = *v75;
                    v51 = v82;
                    (*v75)(v84, v82);
                    v50(v14, v51);

                    goto LABEL_51;
                  }

                  v39 = v36 + 1;
                  v40 = i;
                  LODWORD(v83) = _stringCompareWithSmolCheck(_:_:expecting:)();
                  v41 = *v75;
                  v42 = v82;
                  (*v75)(v84, v82);
                  v41(v14, v42);

                  if (v83)
                  {
                    goto LABEL_51;
                  }

                  ++v36;
                  i = v40;
                  if (v39 == v40)
                  {
                    goto LABEL_17;
                  }
                }

                __break(1u);
LABEL_61:
                __break(1u);
LABEL_62:
                __break(1u);
LABEL_63:
                __break(1u);
LABEL_64:
                ;
              }

              goto LABEL_17;
            }

            if (v34)
            {
              v43 = _CocoaArrayWrapper.endIndex.getter();
              if (!v43)
              {
LABEL_17:

                return;
              }
            }

            else
            {
              v43 = *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10);
              if (!v43)
              {
                goto LABEL_17;
              }
            }

            v14 = 0;
            v84 = (v33 & 0xC000000000000001);
            v76 = v33 & 0xFFFFFFFFFFFFFF8;
            LODWORD(v75) = enum case for CAUVehicleLayoutKey.windshield_rear(_:);
            v74 = (v83 + 104);
            v44 = (v83 + 8);
            v83 = v43;
            while (1)
            {
              if (v84)
              {
                v45 = specialized _ArrayBuffer._getElementSlowPath(_:)();
              }

              else
              {
                if (v14 >= *(v76 + 16))
                {
                  goto LABEL_63;
                }

                v45 = *(v33 + 8 * v14 + 32);
              }

              v38 = v45;
              v46 = (v14 + 1);
              if (__OFADD__(v14, 1))
              {
                goto LABEL_61;
              }

              CAFPositionedRequired.layoutKey.getter();
              (*v74)(v81, v75, v30);
              sub_1000A2414(&qword_100115100, &type metadata accessor for CAUVehicleLayoutKey, &protocol conformance descriptor for CAUVehicleLayoutKey);
              dispatch thunk of RawRepresentable.rawValue.getter();
              dispatch thunk of RawRepresentable.rawValue.getter();
              if (v87 == v85 && v88 == v86)
              {
                break;
              }

              v47 = _stringCompareWithSmolCheck(_:_:expecting:)();
              v48 = *v44;
              (*v44)(v81, v30);
              v48(v80, v30);

              if (v47)
              {
                goto LABEL_51;
              }

              ++v14;
              if (v46 == v83)
              {
                goto LABEL_17;
              }
            }

            v49 = *v44;
            (*v44)(v81, v30);
            v49(v80, v30);

LABEL_51:

            v52 = objc_allocWithZone(type metadata accessor for ClimateDefrostIndicator(0));
            v53 = v38;
            v54 = sub_10006BDD0(v53);
            v55 = [objc_opt_self() configurationWithTextStyle:UIFontTextStyleTitle3 scale:1];
            v56 = *&v54[OBJC_IVAR____TtC7Climate23ClimateDefrostIndicator_defrostButton];
            v57 = ClimateButton.imageSymbolConfiguration.getter();
            v58 = *(v56 + OBJC_IVAR____TtC7Climate13ClimateButton____lazy_storage___imageSymbolConfiguration);
            *(v56 + OBJC_IVAR____TtC7Climate13ClimateButton____lazy_storage___imageSymbolConfiguration) = v55;
            v59 = v55;

            v60 = ClimateButton.imageSymbolConfiguration.getter();
            sub_10000827C(0, &qword_100116930, UIImageSymbolConfiguration_ptr);
            LOBYTE(v58) = static NSObject.== infix(_:_:)();

            if ((v58 & 1) == 0)
            {
              ClimateButton.updateClimateConfiguration()();
            }

            v61 = v54;
            v62 = [v61 layer];
            v63 = [objc_allocWithZone(CAFilter) initWithType:kCAFilterPlusL];
            [v62 setCompositingFilter:v63];

            v64 = objc_opt_self();
            sub_1000040E8(&unk_100114770, qword_1000D58D0);
            v65 = swift_allocObject();
            *(v65 + 16) = xmmword_1000D58A0;
            v66 = [v61 widthAnchor];
            v67 = [v66 constraintEqualToConstant:29.0];

            *(v65 + 32) = v67;
            v68 = [v61 heightAnchor];

            v69 = [v68 constraintEqualToConstant:29.0];
            *(v65 + 40) = v69;
            sub_10000827C(0, &qword_1001149C0, NSLayoutConstraint_ptr);
            isa = Array._bridgeToObjectiveC()().super.isa;

            [v64 activateConstraints:isa];

            if (v79)
            {
              v71 = OBJC_IVAR____TtC7Climate30ClimateHorizontalStatusBarView_frontDefrostIndicator;
            }

            else
            {
              v71 = OBJC_IVAR____TtC7Climate30ClimateHorizontalStatusBarView_rearDefrostIndicator;
            }

            v72 = *(v78 + v71);
            *(v78 + v71) = v61;
          }
        }
      }
    }
  }
}

uint64_t sub_1000A1398()
{
  v1 = OBJC_IVAR____TtC7Climate30ClimateHorizontalStatusBarView__indicatorToDisplay;
  v2 = sub_1000040E8(&unk_100115140, &qword_1000D64C0);
  v3 = *(*(v2 - 8) + 8);

  return v3(v0 + v1, v2);
}

id sub_1000A147C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ClimateHorizontalStatusBarView(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for ClimateHorizontalStatusBarView(uint64_t a1)
{
  result = qword_1001177C0;
  if (!qword_1001177C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000A15F0(uint64_t a1)
{
  sub_1000A16A4(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1000A16A4(uint64_t a1)
{
  if (!qword_1001177D0)
  {
    sub_1000082C4(&qword_1001177D8, &qword_1000D8E48);
    v1 = type metadata accessor for Published();
    if (!v2)
    {
      atomic_store(v1, &qword_1001177D0);
    }
  }
}

double sub_1000A1708(char a1)
{
  v2 = v1;
  v4 = type metadata accessor for CAUAppDockIndicator();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v22[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v8);
  v10 = &v22[-v9];
  v11 = sub_1000040E8(&unk_1001177E0, &qword_1000D8E68);
  __chkstk_darwin(v11 - 8);
  v13 = &v22[-v12];
  v14 = static os_log_type_t.error.getter();
  sub_10000827C(0, &qword_1001149B0, OS_os_log_ptr);
  v15 = static OS_os_log.default.getter();
  if (os_log_type_enabled(v15, v14))
  {
    v16 = swift_slowAlloc();
    *v16 = 67109120;
    *(v16 + 4) = a1 & 1;
    _os_log_impl(&_mh_execute_header, v15, v14, "SeatHeating isHidden: %{BOOL}d", v16, 8u);
  }

  v17 = *(v2 + OBJC_IVAR____TtC7Climate30ClimateHorizontalStatusBarView_seatHeatingIndicator);
  if (v17)
  {
    [v17 setHidden:a1 & 1];
  }

  v18 = *(v5 + 104);
  v19 = (v5 + 8);
  if (a1)
  {
    v18(v10, enum case for CAUAppDockIndicator.seatHeating(_:), v4);
    swift_getKeyPath();
    swift_getKeyPath();
    v20 = static Published.subscript.modify();
    sub_1000A1B40(v10, v13);
    (*v19)(v10, v4);
    sub_100008904(v13, &unk_1001177E0, &qword_1000D8E68);
  }

  else
  {
    v18(v7, enum case for CAUAppDockIndicator.seatHeating(_:), v4);
    swift_getKeyPath();
    swift_getKeyPath();
    v20 = static Published.subscript.modify();
    sub_100038824(v10, v7);
    (*v19)(v10, v4);
  }

  v20(v22, 0);

  return result;
}

void sub_1000A1A48(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a2 = v3;
}

uint64_t sub_1000A1AC8(uint64_t *a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  v3 = v2;
  return static Published.subscript.setter();
}

uint64_t sub_1000A1B40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for CAUAppDockIndicator();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  sub_1000A2414(&qword_100115170, &type metadata accessor for CAUAppDockIndicator, &protocol conformance descriptor for CAUAppDockIndicator);
  v32 = a1;
  v10 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v11 = v9 + 56;
  v30 = v9 + 56;
  v31 = v9;
  v12 = -1 << *(v9 + 32);
  v13 = v10 & ~v12;
  if ((*(v11 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v27 = v2;
    v28 = v6;
    v29 = a2;
    v14 = ~v12;
    v17 = *(v6 + 16);
    v16 = v6 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    while (1)
    {
      v15(v8, *(v31 + 48) + v18 * v13, v5);
      sub_1000A2414(&unk_100116680, &type metadata accessor for CAUAppDockIndicator, &protocol conformance descriptor for CAUAppDockIndicator);
      v19 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v16 - 8))(v8, v5);
      if (v19)
      {
        break;
      }

      v13 = (v13 + 1) & v14;
      if (((*(v30 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
      {
        v20 = 1;
        v6 = v28;
        a2 = v29;
        return (*(v6 + 56))(a2, v20, 1, v5);
      }
    }

    v21 = v27;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v21;
    v33 = *v21;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_100039A2C(v23);
      v24 = v33;
    }

    v6 = v28;
    a2 = v29;
    (*(v28 + 32))(v29, *(v24 + 48) + v18 * v13, v5);
    sub_1000A2118(v13, &type metadata accessor for CAUAppDockIndicator, &qword_100115170, &type metadata accessor for CAUAppDockIndicator, &protocol conformance descriptor for CAUAppDockIndicator);
    v20 = 0;
    *v21 = v33;
  }

  else
  {
    v20 = 1;
  }

  return (*(v6 + 56))(a2, v20, 1, v5);
}

uint64_t sub_1000A1E2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  sub_1000A2414(&qword_100115800, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v32 = a1;
  v10 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v11 = v9 + 56;
  v30 = v9 + 56;
  v31 = v9;
  v12 = -1 << *(v9 + 32);
  v13 = v10 & ~v12;
  if ((*(v11 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v27 = v2;
    v28 = v6;
    v29 = a2;
    v14 = ~v12;
    v17 = *(v6 + 16);
    v16 = v6 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    while (1)
    {
      v15(v8, *(v31 + 48) + v18 * v13, v5);
      sub_1000A2414(&qword_100114CA8, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v19 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v16 - 8))(v8, v5);
      if (v19)
      {
        break;
      }

      v13 = (v13 + 1) & v14;
      if (((*(v30 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
      {
        v20 = 1;
        v6 = v28;
        a2 = v29;
        return (*(v6 + 56))(a2, v20, 1, v5);
      }
    }

    v21 = v27;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v21;
    v33 = *v21;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_100039A54(v23);
      v24 = v33;
    }

    v6 = v28;
    a2 = v29;
    (*(v28 + 32))(v29, *(v24 + 48) + v18 * v13, v5);
    sub_1000A2118(v13, &type metadata accessor for UUID, &qword_100115800, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v20 = 0;
    *v21 = v33;
  }

  else
  {
    v20 = 1;
  }

  return (*(v6 + 56))(a2, v20, 1, v5);
}

void sub_1000A2118(int64_t a1, uint64_t (*a2)(void), unint64_t *a3, uint64_t (*a4)(uint64_t), uint64_t a5)
{
  v41 = a4;
  v42 = a5;
  v40 = a3;
  v7 = a2(0);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v36 - v9;
  v11 = *v5;
  v12 = *v5 + 56;
  v13 = -1 << *(*v5 + 32);
  v14 = (a1 + 1) & ~v13;
  if (((1 << v14) & *(v12 + 8 * (v14 >> 6))) != 0)
  {
    v15 = ~v13;

    v16 = _HashTable.previousHole(before:)();
    if ((*(v12 + 8 * (v14 >> 6)) & (1 << v14)) != 0)
    {
      v38 = (v16 + 1) & v15;
      v37 = *(v8 + 16);
      v43 = *(v8 + 72);
      v39 = v8 + 16;
      v17 = (v8 + 8);
      v18 = v11;
      v19 = v15;
      while (1)
      {
        v20 = v12;
        v21 = v43 * v14;
        v22 = v19;
        v37(v10, *(v18 + 48) + v43 * v14, v7);
        v23 = v18;
        sub_1000A2414(v40, v41, v42);
        v24 = dispatch thunk of Hashable._rawHashValue(seed:)();
        (*v17)(v10, v7);
        v19 = v22;
        v25 = v24 & v22;
        if (a1 >= v38)
        {
          if (v25 < v38 || a1 < v25)
          {
LABEL_4:
            v18 = v23;
            goto LABEL_5;
          }
        }

        else if (v25 < v38 && a1 < v25)
        {
          goto LABEL_4;
        }

        v18 = v23;
        v28 = *(v23 + 48);
        v29 = v43 * a1;
        v30 = v28 + v43 * a1;
        v31 = v28 + v21 + v43;
        if (v43 * a1 < v21 || v30 >= v31)
        {
          swift_arrayInitWithTakeFrontToBack();
LABEL_24:
          v19 = v22;
          a1 = v14;
          goto LABEL_5;
        }

        a1 = v14;
        if (v29 != v21)
        {
          swift_arrayInitWithTakeBackToFront();
          goto LABEL_24;
        }

LABEL_5:
        v14 = (v14 + 1) & v19;
        v12 = v20;
        if (((*(v20 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
        {

          goto LABEL_28;
        }
      }
    }

    v18 = v11;
LABEL_28:
    *(v12 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  else
  {
    *(v12 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
    v18 = v11;
  }

  v33 = *(v18 + 16);
  v34 = __OFSUB__(v33, 1);
  v35 = v33 - 1;
  if (v34)
  {
    __break(1u);
  }

  else
  {
    *(v18 + 16) = v35;
    ++*(v18 + 36);
  }
}

uint64_t sub_1000A2414(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1000A24E8(uint64_t a1)
{
  v2 = v1;
  v3 = sub_1000040E8(&unk_1001166C0, &unk_1000D5AE0);
  __chkstk_darwin(v3 - 8);
  v61 = &v53 - v4;
  v62 = sub_1000040E8(&unk_100118440, &unk_1000D8EC0);
  v60 = *(v62 - 8);
  __chkstk_darwin(v62);
  v59 = &v53 - v5;
  v6 = sub_1000040E8(&unk_1001166D0, qword_1000D7B20);
  v64 = *(v6 - 8);
  v65 = v6;
  __chkstk_darwin(v6);
  v63 = &v53 - v7;
  v8 = type metadata accessor for CAUResource();
  v56 = *(v8 - 8);
  v57 = v8;
  __chkstk_darwin(v8);
  v55 = &v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = sub_1000040E8(&qword_100116700, &qword_1000D8ED0);
  __chkstk_darwin(v54);
  v11 = &v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v66 = &v53 - v13;
  v14 = sub_1000040E8(&unk_100115140, &qword_1000D64C0);
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v53 - v16;
  *(v1 + OBJC_IVAR____TtC7Climate30ClimateHorizontalStatusBarView_temperatureStepper) = 0;
  v18 = OBJC_IVAR____TtC7Climate30ClimateHorizontalStatusBarView_stackView;
  sub_10000827C(0, &unk_100116370, UIStackView_ptr);
  *(v1 + v18) = UIStackView.init(axis:spacing:arrangedSubviews:)();
  v19 = OBJC_IVAR____TtC7Climate30ClimateHorizontalStatusBarView_leadingOfStepper;
  *(v1 + v19) = UIStackView.init(axis:spacing:arrangedSubviews:)();
  v20 = OBJC_IVAR____TtC7Climate30ClimateHorizontalStatusBarView_trailingOfStepper;
  *(v1 + v20) = UIStackView.init(axis:spacing:arrangedSubviews:)();
  *(v1 + OBJC_IVAR____TtC7Climate30ClimateHorizontalStatusBarView_seatHeatingIndicator) = 0;
  *(v1 + OBJC_IVAR____TtC7Climate30ClimateHorizontalStatusBarView_frontDefrostIndicator) = 0;
  *(v1 + OBJC_IVAR____TtC7Climate30ClimateHorizontalStatusBarView_rearDefrostIndicator) = 0;
  v21 = OBJC_IVAR____TtC7Climate30ClimateHorizontalStatusBarView__indicatorToDisplay;
  v67 = &_swiftEmptySetSingleton;
  sub_1000040E8(&qword_1001177D8, &qword_1000D8E48);
  Published.init(initialValue:)();
  (*(v15 + 32))(v2 + v21, v17, v14);

  v24 = sub_1000AAB3C(v22, v23);
  [v24 setTranslatesAutoresizingMaskIntoConstraints:0];
  v25 = OBJC_IVAR____TtC7Climate30ClimateHorizontalStatusBarView_stackView;
  [*&v24[OBJC_IVAR____TtC7Climate30ClimateHorizontalStatusBarView_stackView] setTranslatesAutoresizingMaskIntoConstraints:0];
  v26 = *&v24[v25];
  v27 = v24;
  v28 = v26;
  sub_1000AAD6C(v28);

  v29 = objc_opt_self();
  v30 = [v29 sharedApplication];
  v31 = [v30 delegate];

  if (v31)
  {
    type metadata accessor for ClimateAppDelegate();
    swift_dynamicCastClassUnconditional();
    v32 = sub_1000AF438();
    swift_unknownObjectRelease();

    v33 = dispatch thunk of CAUAssetLibraryManager.slimAssetLibrary.getter();

    v58 = v33;
    if (v33)
    {
      v53 = v29;
      v34 = v55;
      v35 = v56;
      v36 = v57;
      (*(v56 + 104))(v55, enum case for CAUResource.appDockIndicator(_:), v57);
      sub_100066718();
      v37 = v33;
      v38 = v66;
      dispatch thunk of CAUAssetLibrary.asset<A>(for:)();
      (*(v35 + 8))(v34, v36);

      v29 = v53;
    }

    else
    {
      v39 = type metadata accessor for CAUAppDockIndicators();
      v38 = v66;
      (*(*(v39 - 8) + 56))(v66, 1, 1, v39);
    }

    sub_1000287E8(v38, v11, &qword_100116700, &qword_1000D8ED0);
    v40 = type metadata accessor for CAUAppDockIndicators();
    v41 = *(v40 - 8);
    if ((*(v41 + 48))(v11, 1, v40) == 1)
    {
      sub_100008904(v11, &qword_100116700, &qword_1000D8ED0);
      v42 = _swiftEmptyArrayStorage;
    }

    else
    {
      v42 = CAUAppDockIndicators.indicators.getter();
      (*(v41 + 8))(v11, v40);
    }

    *&v27[OBJC_IVAR____TtC7Climate20ClimateStatusBarView_supportedAssetsIndicators] = v42;

    sub_1000A0578();
    sub_1000A0578();
    v43 = [v29 sharedApplication];
    v44 = [v43 delegate];

    if (v44)
    {
      swift_dynamicCastClassUnconditional();
      v45 = sub_1000AF438();
      swift_unknownObjectRelease();

      v46 = v59;
      dispatch thunk of CAUAssetLibraryManager.$slimAssetLibrary.getter();

      v47 = [objc_opt_self() mainRunLoop];
      v67 = v47;
      v48 = type metadata accessor for NSRunLoop.SchedulerOptions();
      v49 = v61;
      (*(*(v48 - 8) + 56))(v61, 1, 1, v48);
      sub_10000827C(0, &unk_1001166E0, NSRunLoop_ptr);
      sub_10000A8E8(&qword_100117260, &unk_100118440, &unk_1000D8EC0, &protocol conformance descriptor for Published<A>.Publisher);
      sub_10000A7D8();
      v51 = v62;
      v50 = v63;
      Publisher.receive<A>(on:options:)();
      sub_100008904(v49, &unk_1001166C0, &unk_1000D5AE0);

      (*(v60 + 8))(v46, v51);
      swift_allocObject();
      swift_unknownObjectWeakInit();
      sub_10000A8E8(&qword_1001166F8, &unk_1001166D0, qword_1000D7B20, &protocol conformance descriptor for Publishers.ReceiveOn<A, B>);
      v52 = v65;
      Publisher<>.sink(receiveValue:)();

      (*(v64 + 8))(v50, v52);
      swift_beginAccess();
      AnyCancellable.store(in:)();
      swift_endAccess();

      sub_100008904(v38, &qword_100116700, &qword_1000D8ED0);
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_1000A2F00()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000A2FA4()
{
  v1 = (v0 + OBJC_IVAR____TtC7Climate24ClimateFanServiceStepper____lazy_storage___currentValue);
  if (*(v0 + OBJC_IVAR____TtC7Climate24ClimateFanServiceStepper____lazy_storage___currentValue + 1) != 1)
  {
    return *v1;
  }

  v2 = *(v0 + OBJC_IVAR____TtC7Climate14ClimateStepper_range);
  CAFRange.minimumValue<A>()();

  result = v4;
  *v1 = v4;
  v1[1] = 0;
  return result;
}

char *sub_1000A3058(void *a1, unsigned __int8 a2)
{
  v3 = v2;
  *(v3 + OBJC_IVAR____TtC7Climate24ClimateFanServiceStepper____lazy_storage___currentValue) = 256;
  v6 = OBJC_IVAR____TtC7Climate24ClimateFanServiceStepper_powerButton;
  *(v3 + v6) = [objc_allocWithZone(type metadata accessor for ClimateStepperPowerButton(0)) init];
  *(v3 + OBJC_IVAR____TtC7Climate24ClimateFanServiceStepper_fan) = a1;
  v7 = objc_allocWithZone(type metadata accessor for ClimateFanButton(0));
  v8 = a1;
  sub_10009C11C(v8, a2, v9);
  *(v3 + OBJC_IVAR____TtC7Climate24ClimateFanServiceStepper_fanButton) = v10;
  v11 = v10;
  v12 = [v8 fanLevelRange];
  v14 = ClimateStepper.init(primaryButton:axis:range:)(v11, 0, v12, v13);
  [v8 registerObserver:v14];
  sub_1000A31A8();
  ClimateStepper.updatePresentation()();
  v15 = sub_1000A4274();
  v16 = &v14[OBJC_IVAR____TtC7Climate24ClimateFanServiceStepper____lazy_storage___currentValue];
  *v16 = v15;
  v16[1] = 0;
  v17 = sub_1000A2FA4();
  sub_10009BE64(v17, v17);
  sub_1000A3A60();

  return v14;
}

id sub_1000A31A8()
{
  v1 = *&v0[OBJC_IVAR____TtC7Climate24ClimateFanServiceStepper_powerButton];
  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v3 = &v1[OBJC_IVAR____TtC7Climate13ClimateButton_action];
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  *v3 = sub_1000A49B0;
  v3[1] = v2;

  sub_100003380(v4, v5);

  v6 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v7 = &v1[OBJC_IVAR____TtC7Climate20ClimateStepperButton_presentationStatesBlock];
  v8 = *&v1[OBJC_IVAR____TtC7Climate20ClimateStepperButton_presentationStatesBlock];
  v9 = *&v1[OBJC_IVAR____TtC7Climate20ClimateStepperButton_presentationStatesBlock + 8];
  *v7 = sub_1000A49B8;
  v7[1] = v6;

  sub_100003380(v8, v9);

  [v0 addSubview:v1];
  v10 = objc_opt_self();
  sub_1000040E8(&unk_100114770, qword_1000D58D0);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1000D5D90;
  v12 = [v1 leadingAnchor];
  v13 = [v0 leadingAnchor];
  v14 = [v12 constraintEqualToAnchor:v13];

  *(v11 + 32) = v14;
  v15 = [v1 trailingAnchor];
  v16 = [v0 trailingAnchor];
  v17 = [v15 constraintEqualToAnchor:v16];

  *(v11 + 40) = v17;
  v18 = [v1 topAnchor];
  v19 = [v0 topAnchor];
  v20 = [v18 constraintEqualToAnchor:v19];

  *(v11 + 48) = v20;
  v21 = [v1 bottomAnchor];
  v22 = [v0 bottomAnchor];
  v23 = [v21 constraintEqualToAnchor:v22];

  *(v11 + 56) = v23;
  sub_10000827C(0, &qword_1001149C0, NSLayoutConstraint_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v10 activateConstraints:isa];

  return [v1 setAlpha:0.0];
}

void sub_1000A3500(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = OBJC_IVAR____TtC7Climate24ClimateFanServiceStepper_fan;
    v5 = [*(Strong + OBJC_IVAR____TtC7Climate24ClimateFanServiceStepper_fan) hasOn];
    v6 = *&v3[v4];
    if (v5)
    {
      [v6 setOn:1];
    }

    else if (![v6 fanLevel])
    {
      v7 = *&v3[v4];
      v8 = [v7 fanLevelRange];
      v9 = [v8 minimumValue];

      v10 = [*&v3[v4] fanLevelRange];
      v11 = [v10 stepValue];

      if (((v9 + v11) >> 8))
      {
        __break(1u);
        return;
      }

      [v7 setFanLevel:(v9 + v11)];
    }

    ClimateStepper.updatePresentation()();
  }
}

uint64_t sub_1000A3638(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v2 = Strong;
  v3 = sub_10009BF70();

  return v3;
}

void sub_1000A36B0()
{
  v0 = sub_10009BF70() & 0x1A;
  v1 = objc_opt_self();
  v2 = &selRef_systemGreenColor;
  if (v0 != 2)
  {
    v2 = &selRef_systemWhiteColor;
  }

  v3 = [v1 *v2];
  v6 = [objc_opt_self() systemWhiteColor];
  v4 = [v3 colorWithAlphaComponent:0.25];
  v5 = v3;
  sub_10009E0D8(v6, v4, v3, &_swiftEmptyDictionarySingleton);
}

void sub_1000A37A8(uint64_t a1)
{
  v3 = type metadata accessor for CAFRange.StepDirection();
  v4 = *(v3 - 8);
  *&v5 = __chkstk_darwin(v3).n128_u64[0];
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtC7Climate24ClimateFanServiceStepper_fan;
  v9 = [*(v1 + OBJC_IVAR____TtC7Climate24ClimateFanServiceStepper_fan) fanLevel];
  v10 = [*(v1 + v8) fanLevelRange];
  v11 = [v10 stepValue];

  (*(v4 + 16))(v7, a1, v3);
  v12 = (*(v4 + 88))(v7, v3);
  if (v12 == enum case for CAFRange.StepDirection.up(_:))
  {
    v13 = *(v1 + v8);
    v14 = [v13 fanLevelRange];
    v15 = [v14 maximumValue];

    if ((((v9 + v11) >> 8) & 1) == 0)
    {
      if ((v9 + v11) >= v15)
      {
        v16 = v15;
      }

      else
      {
        v16 = (v9 + v11);
      }

LABEL_11:
      [v13 setFanLevel:v16];

      return;
    }

    __break(1u);
LABEL_15:
    __break(1u);
    return;
  }

  if (v12 == enum case for CAFRange.StepDirection.down(_:))
  {
    v13 = *(v1 + v8);
    v17 = [v13 fanLevelRange];
    v18 = [v17 minimumValue];

    if (((v9 - v11) & 0xFFFFFF00) == 0)
    {
      if ((v9 - v11) <= v18)
      {
        v16 = v18;
      }

      else
      {
        v16 = (v9 - v11);
      }

      goto LABEL_11;
    }

    goto LABEL_15;
  }

  (*(v4 + 8))(v7, v3);
}

void sub_1000A3A60()
{
  v1 = v0;
  v50 = type metadata accessor for DispatchWorkItemFlags();
  v52 = *(v50 - 1);
  __chkstk_darwin(v50);
  v3 = &v43 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for DispatchQoS();
  v51 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchTime();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v12 = __chkstk_darwin(v11).n128_u64[0];
  v14 = &v43 - v13;
  v15 = *(v0 + OBJC_IVAR____TtC7Climate24ClimateFanServiceStepper_powerButton);
  [v15 alpha];
  v17 = v16;
  v18 = *(v0 + OBJC_IVAR____TtC7Climate24ClimateFanServiceStepper_fanButton);
  if ((sub_10009BF70() & 0x18) != 0)
  {
    [v15 setAlpha:0.0];
    [v18 setAlpha:1.0];
    v19 = OBJC_IVAR____TtC7Climate14ClimateStepper_primaryButton;
    swift_beginAccess();
    v20 = *(v1 + v19);
    *(v1 + v19) = v18;
    v21 = v18;
  }

  else
  {
    v43 = v10;
    v44 = v14;
    v45 = v8;
    v46 = v7;
    v47 = v6;
    v48 = v3;
    v22 = v50;
    v49 = v4;
    v23 = OBJC_IVAR____TtC7Climate24ClimateFanServiceStepper_fan;
    if ((![*(v1 + OBJC_IVAR____TtC7Climate24ClimateFanServiceStepper_fan) hasOn] || objc_msgSend(*(v1 + v23), "on")) && objc_msgSend(*(v1 + v23), "fanLevel"))
    {
      [v15 setAlpha:0.0];
      v24 = 1.0;
      [v18 setAlpha:1.0];
      v25 = OBJC_IVAR____TtC7Climate14ClimateStepper_primaryButton;
      swift_beginAccess();
      v26 = *(v1 + v25);
      *(v1 + v25) = v18;
      v27 = v18;
    }

    else
    {
      [v15 setAlpha:1.0];
      v28 = OBJC_IVAR____TtC7Climate14ClimateStepper_primaryButton;
      swift_beginAccess();
      v29 = *(v1 + v28);
      *(v1 + v28) = v15;
      v30 = v15;

      v24 = 0.0;
      [v18 setAlpha:0.0];
    }

    v31 = v22;
    v32 = v46;
    v33 = v47;
    v34 = v44;
    v35 = v45;
    v36 = v43;
    [*(v1 + OBJC_IVAR____TtC7Climate14ClimateStepper_upButton) setAlpha:v24];
    [*(v1 + OBJC_IVAR____TtC7Climate14ClimateStepper_downButton) setAlpha:v24];
    sub_10000827C(0, &qword_1001159B0, OS_dispatch_queue_ptr);
    v37 = static OS_dispatch_queue.main.getter();
    static DispatchTime.now()();
    + infix(_:_:)();
    v50 = *(v35 + 8);
    (v50)(v36, v32);
    v38 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v39 = swift_allocObject();
    *(v39 + 16) = v38;
    *(v39 + 24) = v17;
    aBlock[4] = sub_1000A498C;
    aBlock[5] = v39;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1000B4DF4;
    aBlock[3] = &unk_1000F8FF8;
    v40 = _Block_copy(aBlock);

    static DispatchQoS.unspecified.getter();
    aBlock[0] = _swiftEmptyArrayStorage;
    sub_10003FB94();
    v41 = v34;
    sub_1000040E8(&unk_1001159C0, &qword_1000D9A40);
    sub_10003FBEC();
    v42 = v48;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
    _Block_release(v40);

    (*(v52 + 8))(v42, v31);
    (*(v51 + 8))(v33, v49);
    (v50)(v41, v32);
  }
}

void sub_1000A3FFC(uint64_t a1, double a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    [*(Strong + OBJC_IVAR____TtC7Climate24ClimateFanServiceStepper_powerButton) alpha];
    if (v5 != a2)
    {
      sub_10000827C(0, &unk_1001159D0, UIFocusSystem_ptr);
      v6 = static UIFocusSystem.focusSystem(for:)();
      if (v6)
      {
        v7 = v6;
        if ([v6 focusedItem])
        {
          swift_unknownObjectRelease();
          [v4 _setNeedsNonDeferredFocusUpdate];
        }
      }

      [v4 updateFocusIfNeeded];
    }
  }
}

void sub_1000A40E4()
{
  v1 = *(v0 + OBJC_IVAR____TtC7Climate24ClimateFanServiceStepper_powerButton);
}

id sub_1000A4134()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ClimateFanServiceStepper(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for ClimateFanServiceStepper(uint64_t a1)
{
  result = qword_100117830;
  if (!qword_100117830)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_1000A4274()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC7Climate24ClimateFanServiceStepper_fan;
  v3 = [*&v0[OBJC_IVAR____TtC7Climate24ClimateFanServiceStepper_fan] fanLevel];
  v4 = OBJC_IVAR____TtC7Climate14ClimateStepper_range;
  v5 = *&v0[OBJC_IVAR____TtC7Climate14ClimateStepper_range];
  CAFRange.maximumValue<A>()();

  if (v26 >= v3)
  {
    v14 = [*&v1[v2] fanLevel];
    v15 = *&v1[v4];
    CAFRange.minimumValue<A>()();

    if (v14 >= v25)
    {
      return [*&v1[v2] fanLevel];
    }

    else
    {
      v16 = static os_log_type_t.debug.getter();
      if (qword_100113F00 != -1)
      {
        swift_once();
      }

      v17 = qword_10011B1C0;
      if (os_log_type_enabled(qword_10011B1C0, v16))
      {
        v18 = v1;
        v19 = swift_slowAlloc();
        *v19 = 16908800;
        *(v19 + 4) = [*&v1[v2] fanLevel];
        *(v19 + 5) = 258;
        v20 = [*&v1[v4] minimum];
        v21 = [v20 unsignedCharValue];

        *(v19 + 7) = v21;
        _os_log_impl(&_mh_execute_header, v17, v16, "fanLevel value is out of bound. fanLevel: %{public}hhu, min range %{public}hhu", v19, 8u);
      }

      v22 = *&v1[v4];
      CAFRange.minimumValue<A>()();

      return v24;
    }
  }

  else
  {
    v6 = static os_log_type_t.debug.getter();
    if (qword_100113F00 != -1)
    {
      swift_once();
    }

    v7 = qword_10011B1C0;
    if (os_log_type_enabled(qword_10011B1C0, v6))
    {
      v8 = v1;
      v9 = swift_slowAlloc();
      *v9 = 16908800;
      *(v9 + 4) = [*&v1[v2] fanLevel];
      *(v9 + 5) = 258;
      v10 = [*&v1[v4] maximum];
      v11 = [v10 unsignedCharValue];

      *(v9 + 7) = v11;
      _os_log_impl(&_mh_execute_header, v7, v6, "fanLevel value is out of bound. fanLevel: %{public}hhu, max range %{public}hhu", v9, 8u);
    }

    v12 = *&v1[v4];
    CAFRange.maximumValue<A>()();

    return v23;
  }
}

void sub_1000A46BC()
{
  v1 = *(*v0 + OBJC_IVAR____TtC7Climate24ClimateFanServiceStepper_fan);
  sub_10000827C(0, &unk_1001178A0, CAFFan_ptr);
  v2 = v1;
  CAFPositioned.layoutKey.getter();
}

void sub_1000A4748()
{
  v1 = v0;
  ClimateStepper.updatePresentation()();
  if ((sub_10009BF70() & 0x18) != 0)
  {
    v2 = [*(v0 + OBJC_IVAR____TtC7Climate14ClimateStepper_range) minimum];
    v3 = [v2 unsignedCharValue];

    v4 = (v1 + OBJC_IVAR____TtC7Climate24ClimateFanServiceStepper____lazy_storage___currentValue);
    *v4 = v3;
    v4[1] = 0;
    v5 = sub_1000A2FA4();
    sub_10009BE64(v5, v5);
  }

  else
  {
    v6 = sub_1000A4274();
    v7 = (v0 + OBJC_IVAR____TtC7Climate24ClimateFanServiceStepper____lazy_storage___currentValue);
    *v7 = v6;
    v7[1] = 0;
    v8 = sub_1000A2FA4();
    sub_10009BE64(v8, v8);
    sub_1000A3A60();
  }

  sub_1000A3A60();
}

void sub_1000A4844()
{
  v1 = v0;
  ClimateStepper.updatePresentation()();
  if ((sub_10009BF70() & 0x18) != 0)
  {
    v2 = [*(v0 + OBJC_IVAR____TtC7Climate14ClimateStepper_range) minimum];
    v3 = [v2 unsignedCharValue];
  }

  else
  {
    v3 = sub_1000A4274();
  }

  v4 = (v1 + OBJC_IVAR____TtC7Climate24ClimateFanServiceStepper____lazy_storage___currentValue);
  *v4 = v3;
  v4[1] = 0;
  v5 = sub_1000A2FA4();
  sub_10009BE64(v5, v5);
  sub_1000A3A60();

  sub_1000A3A60();
}

uint64_t sub_1000A491C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000A4954()
{

  return _swift_deallocObject(v0, 32, 7);
}

double sub_1000A4998(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

void sub_1000A49C0()
{
  v1 = v0;
  v2 = sub_1000040E8(&unk_100117950, &qword_1000D6DF0);
  __chkstk_darwin(v2 - 8);
  v4 = v42 - v3;
  v5 = type metadata accessor for CAUBaselineAnchor();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = objc_opt_self();
  v10 = OBJC_IVAR____TtC7Climate23ClimateZonePositionView_activeButtonConstraints;
  swift_beginAccess();
  v11 = sub_10000827C(0, &qword_1001149C0, NSLayoutConstraint_ptr);

  isa = Array._bridgeToObjectiveC()().super.isa;

  [v9 deactivateConstraints:isa];

  CAUVehicleLayoutInfo.baselineAnchor.getter();
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_100008904(v4, &unk_100117950, &qword_1000D6DF0);
    sub_1000040E8(&unk_100114770, qword_1000D58D0);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_1000D58A0;
    v14 = *&v1[OBJC_IVAR____TtC7Climate23ClimateZonePositionView_activeButton];
    v15 = [v14 centerYAnchor];
    v16 = [v1 centerYAnchor];
    v17 = [v15 constraintEqualToAnchor:v16];

    *(v13 + 32) = v17;
    v18 = [v14 centerXAnchor];
    v19 = [v1 centerXAnchor];
    v20 = [v18 constraintEqualToAnchor:v19];

    *(v13 + 40) = v20;
LABEL_6:
    *&v1[v10] = v13;

    sub_1000040E8(&unk_100114770, qword_1000D58D0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1000D58A0;
    v37 = [v14 widthAnchor];
    v38 = [v37 constraintEqualToConstant:56.0];

    *(inited + 32) = v38;
    v39 = [v14 heightAnchor];
    v40 = [v39 constraintEqualToConstant:56.0];

    *(inited + 40) = v40;
    swift_beginAccess();
    sub_1000B7604(inited);
    swift_endAccess();

    v41 = Array._bridgeToObjectiveC()().super.isa;

    [v9 activateConstraints:v41];

    return;
  }

  v42[1] = v11;
  (*(v6 + 32))(v8, v4, v5);
  v21 = CAUBaselineAnchor.x.getter();
  v22 = CAUVehicleLayoutInfo.x.getter();
  v23 = v21 - v22;
  if (__OFSUB__(v21, v22))
  {
    __break(1u);
  }

  else
  {
    v42[0] = v9;
    v24 = OBJC_IVAR____TtC7Climate23ClimateZonePositionView_scale;
    v25 = *&v1[OBJC_IVAR____TtC7Climate23ClimateZonePositionView_scale];
    v26 = CAUBaselineAnchor.y.getter();
    v27 = CAUVehicleLayoutInfo.y.getter();
    if (!__OFSUB__(v26, v27))
    {
      v28 = v25 * v23 + -28.0;
      v29 = *&v1[v24] * (v26 - v27) + -28.0;
      sub_1000040E8(&unk_100114770, qword_1000D58D0);
      v13 = swift_allocObject();
      *(v13 + 16) = xmmword_1000D58A0;
      v14 = *&v1[OBJC_IVAR____TtC7Climate23ClimateZonePositionView_activeButton];
      v30 = [v14 leftAnchor];
      v31 = [v1 leftAnchor];
      v32 = [v30 constraintEqualToAnchor:v31 constant:v28];

      *(v13 + 32) = v32;
      v33 = [v14 topAnchor];
      v34 = [v1 topAnchor];
      v35 = [v33 constraintEqualToAnchor:v34 constant:v29];

      *(v13 + 40) = v35;
      (*(v6 + 8))(v8, v5);
      v9 = v42[0];
      goto LABEL_6;
    }
  }

  __break(1u);
}

id sub_1000A4FCC(uint64_t *a1, SEL *a2, int (*a3)(void), uint64_t a4)
{
  v5 = *a1;
  v6 = *&v4[*a1];
  if (v6)
  {
    v7 = *&v4[*a1];
LABEL_5:
    v17 = v6;
    return v7;
  }

  v10 = [v4 superview];
  if (v10)
  {
    v11 = v10;
    v12 = [v4 *a2];
    v13 = [v11 *a2];
    v14 = v4;
    v15 = [v12 constraintEqualToAnchor:v13 constant:*&v4[OBJC_IVAR____TtC7Climate23ClimateZonePositionView_scale] * a3()];

    v16 = *&v14[v5];
    *&v14[v5] = v15;
    v7 = v15;

    v6 = 0;
    goto LABEL_5;
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

id sub_1000A518C(uint64_t *a1, SEL *a2, int (*a3)(void))
{
  v4 = *a1;
  v5 = *&v3[*a1];
  if (v5)
  {
    v6 = *&v3[*a1];
  }

  else
  {
    v8 = [v3 *a2];
    v9 = v3;
    v10 = [v8 constraintEqualToConstant:*&v3[OBJC_IVAR____TtC7Climate23ClimateZonePositionView_scale] * a3()];

    v11 = *&v3[v4];
    *&v9[v4] = v10;
    v6 = v10;

    v5 = 0;
  }

  v12 = v5;
  return v6;
}

void sub_1000A5254(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = OBJC_IVAR____TtC7Climate23ClimateZonePositionView_activeButton;
    v5 = *(Strong + OBJC_IVAR____TtC7Climate23ClimateZonePositionView_activeButton);
    v6 = *(v5 + OBJC_IVAR____TtC7Climate43ClimateTargetTemperatureZoneSelectionButton_isOn);
    v7 = *(v5 + OBJC_IVAR____TtC7Climate43ClimateTargetTemperatureZoneSelectionButton_temperature);
    [v7 targetTemperatureRestricted];
    [v7 targetTemperatureInvalid];
    [v7 targetTemperatureDisabled];
    if ((v6 & 1) == 0)
    {
      type metadata accessor for ClimateCoordinator(0);
      swift_unknownObjectRetain();

      sub_100046134(v8);
      swift_unknownObjectRelease();
      v9 = *&v3[v4];
      v10 = v9[OBJC_IVAR____TtC7Climate43ClimateTargetTemperatureZoneSelectionButton_isOn];
      v9[OBJC_IVAR____TtC7Climate43ClimateTargetTemperatureZoneSelectionButton_isOn] = 1;
      v11 = v9;
      sub_10000B298(v10);
      sub_10000BF88();

      v3 = v11;
    }
  }
}

void sub_1000A53AC(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v91 = a3;
  v4 = type metadata accessor for CAUVehicleLayoutKey();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v72[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v90 = sub_1000040E8(&unk_1001152A0, &unk_1000D8FF0);
  __chkstk_darwin(v90);
  v9 = &v72[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v10);
  v12 = &v72[-v11];
  v13 = sub_1000040E8(&qword_100115840, &qword_1000D6440);
  __chkstk_darwin(v13 - 8);
  v87 = &v72[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v15);
  v85 = &v72[-v16];
  __chkstk_darwin(v17);
  v86 = &v72[-v18];
  __chkstk_darwin(v19);
  v84 = &v72[-v20];
  __chkstk_darwin(v21);
  v23 = &v72[-v22];
  __chkstk_darwin(v24);
  v26 = &v72[-v25];
  v27 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v29 = Strong;
    v83 = v12;
    v89 = v4;
    v75 = v7;
    v81 = v9;
    v80 = v27;
    if (v27)
    {
      v30 = v5[2];
      v31 = (v5 + 2) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
      v32 = v89;
      v30(v26, v27 + OBJC_IVAR____TtC7Climate11ClimateZone_key, v89);
      v33 = v5[7];
      v34 = (v5 + 7) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
      v33(v26, 0, 1, v32);
    }

    else
    {
      v33 = v5[7];
      v34 = (v5 + 7) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
      v32 = v89;
      v33(v26, 1, 1, v89);
      v30 = v5[2];
      v31 = (v5 + 2) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    }

    v76 = OBJC_IVAR____TtC7Climate11ClimateZone_key;
    v78 = v30;
    v30(v23, v91 + OBJC_IVAR____TtC7Climate11ClimateZone_key, v32);
    v79 = v33;
    v33(v23, 0, 1, v32);
    v35 = *(v90 + 48);
    v36 = v83;
    sub_10001AF08(v26, v83);
    sub_10001AF08(v23, v36 + v35);
    v82 = v5;
    v37 = v5[6];
    v38 = v37(v36, 1, v32);
    v88 = v29;
    v77 = v34;
    if (v38 == 1)
    {
      sub_100008904(v23, &qword_100115840, &qword_1000D6440);
      sub_100008904(v26, &qword_100115840, &qword_1000D6440);
      if (v37(v36 + v35, 1, v32) == 1)
      {
        sub_100008904(v36, &qword_100115840, &qword_1000D6440);
        goto LABEL_14;
      }
    }

    else
    {
      v74 = v31;
      v39 = v84;
      sub_10001AF08(v36, v84);
      if (v37(v36 + v35, 1, v32) != 1)
      {
        v48 = v82;
        v49 = v75;
        (v82[4])(v75, v36 + v35, v32);
        sub_10000801C();
        v50 = dispatch thunk of static Equatable.== infix(_:_:)();
        v32 = v89;
        v73 = v50;
        v51 = v48[1];
        v51(v49, v89);
        sub_100008904(v23, &qword_100115840, &qword_1000D6440);
        sub_100008904(v26, &qword_100115840, &qword_1000D6440);
        v51(v39, v32);
        sub_100008904(v36, &qword_100115840, &qword_1000D6440);
        v40 = v88;
        if (v73)
        {
          goto LABEL_14;
        }

        goto LABEL_11;
      }

      sub_100008904(v23, &qword_100115840, &qword_1000D6440);
      sub_100008904(v26, &qword_100115840, &qword_1000D6440);
      (v82[1])(v39, v32);
    }

    sub_100008904(v36, &unk_1001152A0, &unk_1000D8FF0);
    v40 = v88;
LABEL_11:
    v41 = OBJC_IVAR____TtC7Climate23ClimateZonePositionView_activeButton;
    v42 = *&v40[OBJC_IVAR____TtC7Climate23ClimateZonePositionView_activeButton];
    v43 = *(v42 + OBJC_IVAR____TtC7Climate43ClimateTargetTemperatureZoneSelectionButton_isOn);
    v44 = *(v42 + OBJC_IVAR____TtC7Climate43ClimateTargetTemperatureZoneSelectionButton_temperature);
    [v44 targetTemperatureRestricted];
    [v44 targetTemperatureInvalid];
    [v44 targetTemperatureDisabled];
    if (v43 == 1)
    {
      v45 = *&v40[v41];
      v46 = v45[OBJC_IVAR____TtC7Climate43ClimateTargetTemperatureZoneSelectionButton_isOn];
      v45[OBJC_IVAR____TtC7Climate43ClimateTargetTemperatureZoneSelectionButton_isOn] = 0;
      v47 = v45;
      sub_10000B298(v46);
      sub_10000BF88();

LABEL_26:
      v61 = v47;
      goto LABEL_27;
    }

LABEL_14:
    v52 = v37;
    v53 = v86;
    if (v80)
    {
      v54 = v78;
      v78(v86, v80 + OBJC_IVAR____TtC7Climate11ClimateZone_key, v32);
      v55 = v87;
      v56 = v85;
      v57 = v79;
      v79(v53, 0, 1, v32);
    }

    else
    {
      v55 = v87;
      v56 = v85;
      v54 = v78;
      v57 = v79;
      v79(v86, 1, 1, v32);
    }

    v54(v56, v91 + v76, v32);
    v57(v56, 0, 1, v32);
    v58 = *(v90 + 48);
    v59 = v81;
    sub_10001AF08(v53, v81);
    sub_10001AF08(v56, v59 + v58);
    if (v52(v59, 1, v32) == 1)
    {
      sub_100008904(v56, &qword_100115840, &qword_1000D6440);
      sub_100008904(v53, &qword_100115840, &qword_1000D6440);
      v60 = v52(v59 + v58, 1, v32);
      v61 = v88;
      if (v60 == 1)
      {
        sub_100008904(v59, &qword_100115840, &qword_1000D6440);
LABEL_24:
        v66 = OBJC_IVAR____TtC7Climate23ClimateZonePositionView_activeButton;
        v67 = *&v61[OBJC_IVAR____TtC7Climate23ClimateZonePositionView_activeButton];
        v68 = *(v67 + OBJC_IVAR____TtC7Climate43ClimateTargetTemperatureZoneSelectionButton_isOn);
        v69 = *(v67 + OBJC_IVAR____TtC7Climate43ClimateTargetTemperatureZoneSelectionButton_temperature);
        [v69 targetTemperatureRestricted];
        [v69 targetTemperatureInvalid];
        [v69 targetTemperatureDisabled];
        if ((v68 & 1) == 0)
        {
          v70 = *&v61[v66];
          v71 = v70[OBJC_IVAR____TtC7Climate43ClimateTargetTemperatureZoneSelectionButton_isOn];
          v70[OBJC_IVAR____TtC7Climate43ClimateTargetTemperatureZoneSelectionButton_isOn] = 1;
          v47 = v70;
          sub_10000B298(v71);
          sub_10000BF88();

          goto LABEL_26;
        }

LABEL_27:

        return;
      }
    }

    else
    {
      sub_10001AF08(v59, v55);
      if (v52(v59 + v58, 1, v32) != 1)
      {
        v62 = v82;
        v63 = v75;
        (v82[4])(v75, v59 + v58, v32);
        sub_10000801C();
        v64 = dispatch thunk of static Equatable.== infix(_:_:)();
        v65 = v62[1];
        v65(v63, v32);
        sub_100008904(v56, &qword_100115840, &qword_1000D6440);
        sub_100008904(v53, &qword_100115840, &qword_1000D6440);
        v65(v55, v32);
        sub_100008904(v59, &qword_100115840, &qword_1000D6440);
        v61 = v88;
        if ((v64 & 1) == 0)
        {
          goto LABEL_27;
        }

        goto LABEL_24;
      }

      sub_100008904(v56, &qword_100115840, &qword_1000D6440);
      sub_100008904(v53, &qword_100115840, &qword_1000D6440);
      (v82[1])(v55, v32);
      v61 = v88;
    }

    sub_100008904(v59, &unk_1001152A0, &unk_1000D8FF0);
    goto LABEL_27;
  }
}

void sub_1000A5D70()
{
  v1 = sub_1000A513C();
  v2 = CAUVehicleLayoutInfo.height.getter();
  v3 = OBJC_IVAR____TtC7Climate23ClimateZonePositionView_scale;
  [v1 setConstant:*(v0 + OBJC_IVAR____TtC7Climate23ClimateZonePositionView_scale) * v2];

  v4 = sub_1000A5164();
  [v4 setConstant:*(v0 + v3) * CAUVehicleLayoutInfo.width.getter()];

  v5 = sub_1000A4F74();
  [v5 setConstant:*(v0 + v3) * CAUVehicleLayoutInfo.y.getter()];

  v6 = sub_1000A4FA0();
  [v6 setConstant:*(v0 + v3) * CAUVehicleLayoutInfo.x.getter()];

  sub_1000A49C0();
}

void sub_1000A5EB0()
{

  swift_unknownObjectRelease();
  v1 = OBJC_IVAR____TtC7Climate23ClimateZonePositionView_layoutInfo;
  v2 = type metadata accessor for CAUVehicleLayoutInfo();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = *(v0 + OBJC_IVAR____TtC7Climate23ClimateZonePositionView____lazy_storage___widthConstraint);
}

id sub_1000A5FA8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ClimateZonePositionView(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for ClimateZonePositionView(uint64_t a1)
{
  result = qword_100117940;
  if (!qword_100117940)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000A6130(uint64_t a1)
{
  result = type metadata accessor for CAUVehicleLayoutInfo();
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

void sub_1000A62B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = sub_1000040E8(&unk_1001166C0, &unk_1000D5AE0);
  __chkstk_darwin(v10 - 8);
  v12 = &v54 - v11;
  v13 = sub_1000040E8(&qword_1001171D0, &qword_1000D87E0);
  v63 = *(v13 - 8);
  v64 = v13;
  __chkstk_darwin(v13);
  v15 = &v54 - v14;
  v16 = sub_1000040E8(&qword_100117960, &unk_1000D88A0);
  v58 = *(v16 - 8);
  v59 = v16;
  __chkstk_darwin(v16);
  v18 = &v54 - v17;
  v19 = sub_1000040E8(&qword_100117280, &qword_1000D8FA0);
  v61 = *(v19 - 8);
  v62 = v19;
  __chkstk_darwin(v19);
  v60 = &v54 - v20;
  if (_swiftEmptyArrayStorage >> 62 && _CocoaArrayWrapper.endIndex.getter())
  {
    sub_100027E1C(_swiftEmptyArrayStorage);
  }

  else
  {
    v21 = &_swiftEmptySetSingleton;
  }

  *&v5[OBJC_IVAR____TtC7Climate23ClimateZonePositionView_cancellables] = v21;
  *&v5[OBJC_IVAR____TtC7Climate23ClimateZonePositionView_activeButtonConstraints] = _swiftEmptyArrayStorage;
  *&v5[OBJC_IVAR____TtC7Climate23ClimateZonePositionView_scale] = 0x3FF0000000000000;
  *&v5[OBJC_IVAR____TtC7Climate23ClimateZonePositionView____lazy_storage___yConstraint] = 0;
  *&v5[OBJC_IVAR____TtC7Climate23ClimateZonePositionView____lazy_storage___xConstraint] = 0;
  *&v5[OBJC_IVAR____TtC7Climate23ClimateZonePositionView____lazy_storage___heightConstraint] = 0;
  *&v5[OBJC_IVAR____TtC7Climate23ClimateZonePositionView____lazy_storage___widthConstraint] = 0;
  *&v5[OBJC_IVAR____TtC7Climate23ClimateZonePositionView_zone] = a1;
  v22 = &v5[OBJC_IVAR____TtC7Climate23ClimateZonePositionView_activeZoneTracker];
  *v22 = a2;
  *(v22 + 1) = a3;
  v23 = OBJC_IVAR____TtC7Climate23ClimateZonePositionView_layoutInfo;
  v24 = type metadata accessor for CAUVehicleLayoutInfo();
  v56 = *(v24 - 8);
  v57 = v24;
  (*(v56 + 16))(&v5[v23], a4);
  v25 = *(a1 + OBJC_IVAR____TtC7Climate11ClimateZone_temperature);
  v26 = objc_allocWithZone(type metadata accessor for ClimateTargetTemperatureZoneSelectionButton(0));

  swift_unknownObjectRetain();
  v27 = v25;
  v55 = a1;
  v28 = v27;
  v29 = sub_10000D414(v27);

  *&v5[OBJC_IVAR____TtC7Climate23ClimateZonePositionView_activeButton] = v29;
  [v29 _setContinuousCornerRadius:28.0];
  v30 = type metadata accessor for ClimateZonePositionView(0);
  v66.receiver = v5;
  v66.super_class = v30;
  v31 = objc_msgSendSuper2(&v66, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  [v31 setTranslatesAutoresizingMaskIntoConstraints:0];
  v32 = [v31 layer];
  LODWORD(v33) = 0.5;
  [v32 setShadowOpacity:v33];

  v34 = [v31 layer];
  [v34 setShadowRadius:10.0];

  v35 = OBJC_IVAR____TtC7Climate23ClimateZonePositionView_activeButton;
  [*&v31[OBJC_IVAR____TtC7Climate23ClimateZonePositionView_activeButton] setTranslatesAutoresizingMaskIntoConstraints:0];
  [v31 addSubview:*&v31[v35]];
  v54 = a4;
  v36 = *&v31[v35];
  v37 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v38 = &v36[OBJC_IVAR____TtC7Climate13ClimateButton_action];
  swift_beginAccess();
  v39 = *v38;
  v40 = v38[1];
  *v38 = sub_1000A6C7C;
  v38[1] = v37;
  v41 = v36;

  sub_100003380(v39, v40);

  type metadata accessor for ClimateCoordinator(0);
  sub_1000461A0();
  v42 = [objc_opt_self() mainRunLoop];
  v65 = v42;
  v43 = type metadata accessor for NSRunLoop.SchedulerOptions();
  (*(*(v43 - 8) + 56))(v12, 1, 1, v43);
  sub_10000827C(0, &unk_1001166E0, NSRunLoop_ptr);
  sub_10000A8E8(&unk_1001171F0, &qword_1001171D0, &qword_1000D87E0, &protocol conformance descriptor for Published<A>.Publisher);
  sub_10000A7D8();
  v44 = v64;
  Publisher.receive<A>(on:options:)();
  sub_100008904(v12, &unk_1001166C0, &unk_1000D5AE0);

  (*(v63 + 8))(v15, v44);
  v45 = [objc_opt_self() sharedApplication];
  v46 = [v45 delegate];

  if (v46)
  {
    type metadata accessor for ClimateAppDelegate();
    swift_dynamicCastClassUnconditional();
    v47 = sub_1000AF438();
    swift_unknownObjectRelease();
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    sub_10000A8E8(&qword_100117288, &qword_100117960, &unk_1000D88A0, &protocol conformance descriptor for Publishers.ReceiveOn<A, B>);
    v48 = v60;
    v49 = v59;
    Publisher.dropFirst(_:)();
    (*(v58 + 8))(v18, v49);
    v50 = swift_allocObject();
    swift_unknownObjectWeakInit();

    v51 = swift_allocObject();
    v52 = v55;
    *(v51 + 16) = v50;
    *(v51 + 24) = v52;
    sub_10000A8E8(&unk_100117290, &qword_100117280, &qword_1000D8FA0, &protocol conformance descriptor for Publishers.Drop<A>);

    v53 = v62;
    Publisher<>.sink(receiveValue:)();

    (*(v61 + 8))(v48, v53);
    swift_beginAccess();
    AnyCancellable.store(in:)();
    swift_endAccess();

    (*(v56 + 8))(v54, v57);
  }

  else
  {
    __break(1u);
  }
}

void sub_1000A6B54()
{
  if (_swiftEmptyArrayStorage >> 62 && _CocoaArrayWrapper.endIndex.getter())
  {
    sub_100027E1C(_swiftEmptyArrayStorage);
  }

  else
  {
    v1 = &_swiftEmptySetSingleton;
  }

  *(v0 + OBJC_IVAR____TtC7Climate23ClimateZonePositionView_cancellables) = v1;
  *(v0 + OBJC_IVAR____TtC7Climate23ClimateZonePositionView_activeButtonConstraints) = _swiftEmptyArrayStorage;
  *(v0 + OBJC_IVAR____TtC7Climate23ClimateZonePositionView_scale) = 0x3FF0000000000000;
  *(v0 + OBJC_IVAR____TtC7Climate23ClimateZonePositionView____lazy_storage___yConstraint) = 0;
  *(v0 + OBJC_IVAR____TtC7Climate23ClimateZonePositionView____lazy_storage___xConstraint) = 0;
  *(v0 + OBJC_IVAR____TtC7Climate23ClimateZonePositionView____lazy_storage___heightConstraint) = 0;
  *(v0 + OBJC_IVAR____TtC7Climate23ClimateZonePositionView____lazy_storage___widthConstraint) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_1000A6C44()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000A6C8C()
{

  return _swift_deallocObject(v0, 32, 7);
}

void sub_1000A6CD4()
{
  if (((*((swift_isaMask & *v0) + 0x118))() & 0x1B) == 1)
  {
    v1 = &OBJC_IVAR____TtC7Climate15ClimateOnButton_onColor;
  }

  else
  {
    v1 = &OBJC_IVAR____TtC7Climate15ClimateOnButton_offColor;
  }

  v2 = v0 + *v1;
  v3 = *(v2 + 1);
  v4 = *(v2 + 2);
  v6 = *v2;
  v5 = v3;

  sub_10007A4CC(v6, v5, v4);
}

void sub_1000A6ED4()
{
  v1 = *(v0 + OBJC_IVAR____TtC7Climate15ClimateOnButton_onColor);
  v2 = *(v0 + OBJC_IVAR____TtC7Climate15ClimateOnButton_onColor + 8);

  v3 = *(v0 + OBJC_IVAR____TtC7Climate15ClimateOnButton_offColor + 8);
  v4 = *(v0 + OBJC_IVAR____TtC7Climate15ClimateOnButton_offColor);
}

id sub_1000A6F54()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ClimateOnButton(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for ClimateOnButton(uint64_t a1)
{
  result = qword_100117990;
  if (!qword_100117990)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000A70C0(void *a1, void *a2, uint64_t a3, void *a4)
{
  v8 = v4 + *a4;
  v9 = *v8;
  v10 = *(v8 + 1);
  v11 = *(v8 + 2);
  *v8 = a1;
  *(v8 + 1) = a2;
  *(v8 + 2) = a3;
  sub_100034224();
  v12 = a1;
  v13 = a2;

  if ((static NSObject.== infix(_:_:)() & 1) == 0 || (static NSObject.== infix(_:_:)() & 1) == 0 || (sub_10007DB08(a3, v11), (v14 & 1) == 0))
  {
    (*((swift_isaMask & *v4) + 0x200))();
  }
}

id sub_1000A71CC()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC7Climate19ClimateZoneControls_zoneViews;
  [*&v1[OBJC_IVAR____TtC7Climate19ClimateZoneControls_zoneViews] removeFromSuperview];
  v3 = [objc_allocWithZone(type metadata accessor for ClimateGrid()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v4 = *&v1[v2];
  *&v1[v2] = v3;
  v5 = v3;

  [v1 addSubview:v5];

  sub_100072970();
  v7 = v6;

  sub_1000A72C8(v7, v8);

  sub_1000A829C();
  [v1 setNeedsLayout];

  return [v1 layoutIfNeeded];
}

void sub_1000A72C8(uint64_t a1, __n128 a2)
{
  v96 = type metadata accessor for CAUFeatureConfiguration.Climate();
  v4 = *(v96 - 8);
  __chkstk_darwin(v96);
  v95 = &v83 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = type metadata accessor for CAUFeatureConfiguration();
  v6 = *(v94 - 8);
  __chkstk_darwin(v94);
  v93 = &v83 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = OBJC_IVAR____TtC7Climate19ClimateZoneControls_zone;
  v98 = v2;
  v8 = *(v2 + OBJC_IVAR____TtC7Climate19ClimateZoneControls_zone);
  v9 = OBJC_IVAR____TtC7Climate11ClimateZone_nonProminentSettings;
  swift_beginAccess();
  v10 = *(v8 + v9);
  v11 = qword_100113E78;

  if (v11 != -1)
  {
    goto LABEL_136;
  }

LABEL_2:
  v12 = 0;
  v13 = qword_10011AE70;
  v14 = qword_10011AE70 + 32;
  v15 = *(qword_10011AE70 + 16);
  v105 = 0x80000001000D9E90;
  v104 = 0x80000001000D9E50;
  v92 = (v6 + 8);
  v91 = (v4 + 8);
  v16 = (a1 + 24);
  v107 = _swiftEmptyArrayStorage;
  v108 = _swiftEmptyArrayStorage;
  while (v15 != v12)
  {
    if (v12 >= *(v13 + 16))
    {
      goto LABEL_133;
    }

    v17 = *(v14 + 8 * v12++);
    v4 = *(v17 + 16);
    if (v4)
    {
      v90 = v10;
      v10 = (v12 - 1);
      if (v12 - 1 >= *(a1 + 16))
      {
        __break(1u);
LABEL_138:
        __break(1u);
LABEL_139:
        __break(1u);
LABEL_140:
        __break(1u);
        JUMPOUT(0x1000A820CLL);
      }

      v85 = v15;
      v86 = v14;
      v87 = v13;
      v89 = a1;
      v101 = v17 + 32;
      v88 = v12;
      v84 = v16;
      v110 = v16[v12];
      v109 = v110 + 32;

      v19 = 0;
      v99 = v4;
      v100 = v18;
LABEL_10:
      if (v19 >= *(v18 + 16))
      {
        goto LABEL_134;
      }

      v103 = v19;
      v4 = *(v101 + v19);
      v20 = *(v110 + 16);

      if (!v20)
      {
        a1 = _swiftEmptyArrayStorage;
        goto LABEL_79;
      }

      v21 = 0;
      v102 = v20 - 1;
      a1 = _swiftEmptyArrayStorage;
LABEL_13:
      v106 = a1;
      v6 = v21;
      while (2)
      {
        if (v6 >= *(v110 + 16))
        {
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
          goto LABEL_135;
        }

        v111 = *(v109 + 16 * v6);
        v22 = v6 + 1;
        v23 = v111;
        ObjectType = swift_getObjectType();
        v25 = *(&v111 + 1);
        a1 = *(*(&v111 + 1) + 8);
        v26 = v23;
        v27 = (a1)(ObjectType, v25);
        v28 = 0xE600000000000000;
        v29 = v27;
        v30 = 0x6E4F656E6F7ALL;
        switch(v29)
        {
          case 1:
            v28 = 0xE400000000000000;
            v30 = 1953391990;
            break;
          case 2:
            v30 = 0xD000000000000012;
            v28 = v104;
            break;
          case 3:
            v30 = 0x70706574536E6166;
            v28 = 0xEA00000000007265;
            break;
          case 4:
            v28 = 0xE800000000000000;
            v30 = 0x65646F4D6F747561;
            break;
          case 5:
            v30 = 0x7461654874616573;
            v28 = 0xEB00000000676E69;
            break;
          case 6:
            v28 = 0xE700000000000000;
            v30 = 0x6E614674616573;
            break;
          case 7:
            v30 = 0x7373614D74616573;
            v28 = 0xEB00000000656761;
            break;
          case 8:
            v30 = 0xD000000000000014;
            v28 = v105;
            break;
          case 9:
            v30 = 0x736C6F72746E6F63;
            v28 = 0xEC0000006B636F4CLL;
            break;
          case 10:
            v28 = 0xE800000000000000;
            v30 = 0x6B6E694C70656564;
            break;
          case 11:
            v30 = 0x6C75637269636572;
            v28 = 0xED00006E6F697461;
            break;
          case 12:
            v28 = 0xE500000000000000;
            v30 = 0x434178616DLL;
            break;
          case 13:
            v28 = 0xEA00000000007473;
            v30 = 0x6F7266654478616DLL;
            break;
          case 14:
            v28 = 0xE400000000000000;
            v30 = 1668184435;
            break;
          case 15:
            v30 = 0x666544746E6F7266;
            v28 = 0xEC00000074736F72;
            break;
          case 16:
            v30 = 0x7266654472616572;
            v28 = 0xEB0000000074736FLL;
            break;
          case 17:
            v28 = 0xE200000000000000;
            v30 = 25441;
            break;
          default:
            break;
        }

        v31 = 0xE600000000000000;
        v32 = 0x6E4F656E6F7ALL;
        switch(v4)
        {
          case 1uLL:
            v31 = 0xE400000000000000;
            if (v30 != 1953391990)
            {
              goto LABEL_66;
            }

            goto LABEL_65;
          case 2uLL:
            v31 = v104;
            if (v30 != 0xD000000000000012)
            {
              goto LABEL_66;
            }

            goto LABEL_65;
          case 3uLL:
            v31 = 0xEA00000000007265;
            if (v30 != 0x70706574536E6166)
            {
              goto LABEL_66;
            }

            goto LABEL_65;
          case 4uLL:
            v31 = 0xE800000000000000;
            if (v30 != 0x65646F4D6F747561)
            {
              goto LABEL_66;
            }

            goto LABEL_65;
          case 5uLL:
            v33 = 0x7461654874616573;
            v34 = 6778473;
            goto LABEL_57;
          case 6uLL:
            v31 = 0xE700000000000000;
            if (v30 != 0x6E614674616573)
            {
              goto LABEL_66;
            }

            goto LABEL_65;
          case 7uLL:
            v33 = 0x7373614D74616573;
            v34 = 6645601;
            goto LABEL_57;
          case 8uLL:
            v31 = v105;
            if (v30 != 0xD000000000000014)
            {
              goto LABEL_66;
            }

            goto LABEL_65;
          case 9uLL:
            v35 = 0x736C6F72746E6F63;
            v36 = 1801678668;
            goto LABEL_49;
          case 0xAuLL:
            v31 = 0xE800000000000000;
            v32 = 0x6B6E694C70656564;
            goto LABEL_64;
          case 0xBuLL:
            v31 = 0xED00006E6F697461;
            if (v30 != 0x6C75637269636572)
            {
              goto LABEL_66;
            }

            goto LABEL_65;
          case 0xCuLL:
            v31 = 0xE500000000000000;
            if (v30 != 0x434178616DLL)
            {
              goto LABEL_66;
            }

            goto LABEL_65;
          case 0xDuLL:
            v31 = 0xEA00000000007473;
            if (v30 != 0x6F7266654478616DLL)
            {
              goto LABEL_66;
            }

            goto LABEL_65;
          case 0xEuLL:
            v31 = 0xE400000000000000;
            if (v30 != 1668184435)
            {
              goto LABEL_66;
            }

            goto LABEL_65;
          case 0xFuLL:
            v35 = 0x666544746E6F7266;
            v36 = 1953722226;
LABEL_49:
            v31 = v36 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
            if (v30 != v35)
            {
              goto LABEL_66;
            }

            goto LABEL_65;
          case 0x10uLL:
            v33 = 0x7266654472616572;
            v34 = 7631727;
LABEL_57:
            v31 = v34 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
            if (v30 != v33)
            {
              goto LABEL_66;
            }

            goto LABEL_65;
          case 0x11uLL:
            v31 = 0xE200000000000000;
            if (v30 != 25441)
            {
              goto LABEL_66;
            }

            goto LABEL_65;
          default:
LABEL_64:
            if (v30 != v32)
            {
              goto LABEL_66;
            }

LABEL_65:
            if (v28 != v31)
            {
LABEL_66:
              v37 = _stringCompareWithSmolCheck(_:_:expecting:)();

              if (v37)
              {
                goto LABEL_72;
              }

              ++v6;
              if (v20 == v22)
              {
                a1 = v106;
                goto LABEL_79;
              }

              continue;
            }

LABEL_72:
            a1 = v106;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v112 = a1;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              sub_1000A8AA0(0, *(a1 + 16) + 1, 1);
              a1 = v112;
            }

            v40 = *(a1 + 16);
            v39 = *(a1 + 24);
            if (v40 >= v39 >> 1)
            {
              sub_1000A8AA0((v39 > 1), v40 + 1, 1);
              a1 = v112;
            }

            v21 = v6 + 1;
            *(a1 + 16) = v40 + 1;
            *(a1 + 16 * v40 + 32) = v111;
            if (v102 != v6)
            {
              goto LABEL_13;
            }

LABEL_79:

            if (sub_100056230(v4) == 1953391990 && v41 == 0xE400000000000000)
            {
            }

            else
            {
              v43 = _stringCompareWithSmolCheck(_:_:expecting:)();

              if ((v43 & 1) == 0)
              {
                goto LABEL_96;
              }
            }

            if (*(a1 + 16) < 2uLL)
            {
              goto LABEL_96;
            }

            v44 = objc_opt_self();
            v45 = [v44 sharedApplication];
            v46 = [v45 delegate];

            if (!v46)
            {
              goto LABEL_138;
            }

            type metadata accessor for ClimateAppDelegate();
            swift_dynamicCastClassUnconditional();
            v47 = sub_1000AF438();
            swift_unknownObjectRelease();

            v48 = dispatch thunk of CAUAssetLibraryManager.slimAssetLibrary.getter();

            v6 = v93;
            Optional<A>.featureConfiguration()();

            v49 = v95;
            CAUFeatureConfiguration.climate.getter();
            (*v92)(v6, v94);
            LOBYTE(v48) = CAUFeatureConfiguration.Climate.groupedVentsLayout.getter();
            (*v91)(v49, v96);
            if ((v48 & 1) == 0 || (v50 = sub_1000A8668(a1)) == 0)
            {
LABEL_96:

              v63 = sub_1000C0F2C(a1);

              v4 = sub_1000A913C(v63, _swiftEmptyArrayStorage);

              if (!(v4 >> 62))
              {
                v64 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
                if (v64)
                {
                  goto LABEL_98;
                }

LABEL_8:

                goto LABEL_9;
              }

              v64 = _CocoaArrayWrapper.endIndex.getter();
              if (!v64)
              {
                goto LABEL_8;
              }

LABEL_98:
              if (v64 >= 1)
              {
                a1 = 0;
                while (1)
                {
                  if ((v4 & 0xC000000000000001) != 0)
                  {
                    v65 = specialized _ArrayBuffer._getElementSlowPath(_:)();
                  }

                  else
                  {
                    v65 = *(v4 + 8 * a1 + 32);
                  }

                  v66 = v65;
                  if (v10 == 1)
                  {
                    swift_getObjectType();
                    v72 = swift_conformsToProtocol2();
                    if (v72 && v66)
                    {
                      v68 = v72;
                      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                      {
                        v107 = sub_1000C5268(0, v107[2] + 1, 1, v107);
                      }

                      v6 = v107[2];
                      v73 = v107[3];
                      v70 = v6 + 1;
                      if (v6 >= v73 >> 1)
                      {
                        v107 = sub_1000C5268((v73 > 1), v6 + 1, 1, v107);
                      }

                      v71 = v107;
                      goto LABEL_121;
                    }
                  }

                  else if (!v10)
                  {
                    swift_getObjectType();
                    v67 = swift_conformsToProtocol2();
                    if (v67)
                    {
                      if (v66)
                      {
                        v68 = v67;
                        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                        {
                          v108 = sub_1000C5268(0, v108[2] + 1, 1, v108);
                        }

                        v6 = v108[2];
                        v69 = v108[3];
                        v70 = v6 + 1;
                        if (v6 >= v69 >> 1)
                        {
                          v108 = sub_1000C5268((v69 > 1), v6 + 1, 1, v108);
                        }

                        v71 = v108;
LABEL_121:
                        v71[2] = v70;
                        v74 = &v71[2 * v6];
                        v74[4] = v66;
                        v74[5] = v68;
                        goto LABEL_101;
                      }
                    }
                  }

LABEL_101:
                  if (v64 == ++a1)
                  {
                    goto LABEL_8;
                  }
                }
              }

LABEL_135:
              __break(1u);
LABEL_136:
              swift_once();
              goto LABEL_2;
            }

            v51 = v50;

            v52 = [v44 sharedApplication];
            v53 = [v52 delegate];

            if (!v53)
            {
              goto LABEL_139;
            }

            swift_dynamicCastClassUnconditional();
            v54 = sub_1000AF438();
            swift_unknownObjectRelease();
            v55 = v54[OBJC_IVAR____TtC7Climate18ClimateCoordinator_hasDualStatusBar];

            v56 = objc_allocWithZone(type metadata accessor for ClimateGroupedVentsButton(0));
            sub_100015130(v51, v55, 2);
            v58 = v57;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v108 = sub_1000C5268(0, v108[2] + 1, 1, v108);
            }

            v60 = v108[2];
            v59 = v108[3];
            if (v60 >= v59 >> 1)
            {
              v108 = sub_1000C5268((v59 > 1), v60 + 1, 1, v108);
            }

            v61 = v108;
            v108[2] = v60 + 1;
            v62 = &v61[2 * v60];
            v62[4] = v58;
            v62[5] = &off_1000F7098;
LABEL_9:
            v19 = v103 + 1;
            v4 = v99;
            v18 = v100;
            if ((v103 + 1) != v99)
            {
              goto LABEL_10;
            }

            v10 = v90;
            a1 = v89;
            v12 = v88;
            v13 = v87;
            v14 = v86;
            v15 = v85;
            v16 = v84;
            break;
        }

        break;
      }
    }
  }

  v75 = [objc_opt_self() sharedApplication];
  v76 = [v75 delegate];

  if (!v76)
  {
    goto LABEL_140;
  }

  type metadata accessor for ClimateAppDelegate();
  swift_dynamicCastClassUnconditional();
  v77 = sub_1000AF438();
  swift_unknownObjectRelease();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v78 = v112;
  if (v112 && (v79 = [v112 automakerSettings], v78, v79) && (v80 = objc_msgSend(v79, "settingsSections"), v79, v80))
  {
    sub_10000827C(0, &qword_1001172B8, CAFSettingsSection_ptr);
    v81 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v81 = _swiftEmptyArrayStorage;
  }

  v82 = *(v98 + OBJC_IVAR____TtC7Climate19ClimateZoneControls_zoneViews);
  sub_10000E294(v108, v107, v10, v81);
}

void sub_1000A829C()
{
  v1 = objc_opt_self();
  sub_1000040E8(&unk_100114770, qword_1000D58D0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1000D5D90;
  v3 = OBJC_IVAR____TtC7Climate19ClimateZoneControls_zoneViews;
  v4 = [*&v0[OBJC_IVAR____TtC7Climate19ClimateZoneControls_zoneViews] topAnchor];
  v5 = [v0 topAnchor];
  v6 = [v4 constraintEqualToAnchor:v5];

  *(v2 + 32) = v6;
  v7 = [*&v0[v3] bottomAnchor];
  v8 = [v0 bottomAnchor];
  v9 = [v7 constraintEqualToAnchor:v8];

  *(v2 + 40) = v9;
  v10 = [*&v0[v3] leadingAnchor];
  v11 = [v0 leadingAnchor];
  v12 = [v10 constraintEqualToAnchor:v11];

  *(v2 + 48) = v12;
  v13 = [*&v0[v3] trailingAnchor];
  v14 = [v0 trailingAnchor];
  v15 = [v13 constraintEqualToAnchor:v14];

  *(v2 + 56) = v15;
  sub_10000827C(0, &qword_1001149C0, NSLayoutConstraint_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v1 activateConstraints:isa];
}

void sub_1000A8584()
{

  v1 = *(v0 + OBJC_IVAR____TtC7Climate19ClimateZoneControls_zoneViews);
}

id sub_1000A85C4(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for ClimateZoneControls();
  return objc_msgSendSuper2(&v3, "dealloc");
}

void *sub_1000A8668(uint64_t a1)
{
  v2 = *(a1 + 16);
  specialized ContiguousArray.reserveCapacity(_:)();
  if (!v2)
  {
    return _swiftEmptyArrayStorage;
  }

  v3 = (a1 + 32);
  type metadata accessor for ClimateVentServiceButton(0);
  while (1)
  {
    v4 = *v3;
    if (!swift_dynamicCastClass())
    {
      break;
    }

    v5 = v4;
    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    specialized ContiguousArray._endMutation()();
    v3 += 2;
    if (!--v2)
    {
      return _swiftEmptyArrayStorage;
    }
  }

  return 0;
}

void sub_1000A88CC(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a2 = v3;
}

uint64_t sub_1000A894C(void **a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = v2;
  v5 = v3;
  return static Published.subscript.setter();
}

char *sub_1000A89C0(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1000A8AC0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1000A89E0(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1000A8BCC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1000A8A00(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1000A8CD0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1000A8A20(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1000A8DD4(a1, a2, a3, *v3, &qword_1001179F8, &qword_1000D90F8, &unk_100117A00, &qword_1000D9100);
  *v3 = result;
  return result;
}

void *sub_1000A8A60(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1000A8DD4(a1, a2, a3, *v3, &unk_100118280, &unk_1000D9AF0, &qword_1001179F0, &qword_1000D90F0);
  *v3 = result;
  return result;
}

void *sub_1000A8AA0(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1000A8F08(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1000A8AC0(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000040E8(&unk_100117A20, &qword_1000D8B80);
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

char *sub_1000A8BCC(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000040E8(&qword_100117A10, &qword_1000D9108);
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

char *sub_1000A8CD0(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000040E8(&qword_100117A18, qword_1000D9110);
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
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

void *sub_1000A8DD4(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    sub_1000040E8(a5, a6);
    v16 = swift_allocObject();
    v17 = j__malloc_size(v16);
    v18 = v17 - 32;
    if (v17 < 32)
    {
      v18 = v17 - 17;
    }

    v16[2] = v14;
    v16[3] = 2 * (v18 >> 4);
  }

  else
  {
    v16 = _swiftEmptyArrayStorage;
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[2 * v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 16 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1000040E8(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

void *sub_1000A8F08(void *result, int64_t a2, char a3, void *a4)
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
    sub_1000040E8(&unk_1001179E0, qword_1000D5C90);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1000040E8(&qword_100118270, &unk_1000D90E0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_1000A903C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v3 = a3;
  v6 = a2;
  v10 = *v4;
  v4 = (*v4 & 0xFFFFFFFFFFFFFF8);
  v7 = v4 + 4;
  v5 = &v4[a1 + 4];
  type metadata accessor for ClimateAutomakerSettingButton(0);
  result = swift_arrayDestroy();
  v12 = __OFSUB__(v3, v9);
  v9 = v3 - v9;
  if (v12)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v9)
  {
    goto LABEL_17;
  }

  v8 = v10 >> 62;
  if (!(v10 >> 62))
  {
    result = v4[2];
    v13 = result - v6;
    if (!__OFSUB__(result, v6))
    {
      goto LABEL_6;
    }

LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_21:
  result = _CocoaArrayWrapper.endIndex.getter();
  v13 = result - v6;
  if (__OFSUB__(result, v6))
  {
    goto LABEL_23;
  }

LABEL_6:
  v14 = (v5 + 8 * v3);
  v15 = &v7[v6];
  if (v14 != v15 || v14 >= &v15[8 * v13])
  {
    memmove(v14, v15, 8 * v13);
  }

  if (v8)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    result = v4[2];
  }

  if (__OFADD__(result, v9))
  {
    goto LABEL_24;
  }

  v4[2] = result + v9;
LABEL_17:
  if (v3 > 0)
  {
LABEL_25:
    __break(1u);
  }

  return result;
}

void *sub_1000A913C(unint64_t a1, unint64_t a2)
{
  v2 = a2;
  v3 = a1;
  if (a1 >> 62)
  {
    goto LABEL_148;
  }

  v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!(a2 >> 62))
  {
    goto LABEL_3;
  }

LABEL_149:
  result = _CocoaArrayWrapper.endIndex.getter();
  v6 = result + v4;
  if (__OFADD__(v4, result))
  {
    goto LABEL_151;
  }

LABEL_4:
  if ((v6 & 0x8000000000000000) != 0)
  {
LABEL_152:
    __break(1u);
LABEL_153:
    __break(1u);
LABEL_154:
    __break(1u);
LABEL_155:
    __break(1u);
  }

  else
  {
    if (v6)
    {

      v7 = 0;
      v8 = &OBJC_IVAR____TtC7Climate29ClimateAutomakerSettingButton_setting;
      v36 = v6;
      while (1)
      {
        v10 = v2 >> 62;
        if (v2 >> 62)
        {
          if (!_CocoaArrayWrapper.endIndex.getter())
          {
            goto LABEL_27;
          }
        }

        else if (!*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_27;
        }

        v11 = v2 & 0xC000000000000001;
        if ((v2 & 0xC000000000000001) != 0)
        {
          v12 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (!*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
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
LABEL_136:
            __break(1u);
LABEL_137:
            __break(1u);
LABEL_138:
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
LABEL_144:
            __break(1u);
LABEL_145:
            __break(1u);
LABEL_146:
            __break(1u);
LABEL_147:
            __break(1u);
LABEL_148:
            v4 = _CocoaArrayWrapper.endIndex.getter();
            if (v2 >> 62)
            {
              goto LABEL_149;
            }

LABEL_3:
            result = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
            v6 = result + v4;
            if (!__OFADD__(v4, result))
            {
              goto LABEL_4;
            }

LABEL_151:
            __break(1u);
            goto LABEL_152;
          }

          v12 = *(v2 + 32);
        }

        v13 = v12;
        v14 = *&v12[*v8];

        v9 = [v14 prominenceInfo];
        if (v9)
        {
          if (v7 == [v9 sortOrder])
          {
            if (v10)
            {
              result = _CocoaArrayWrapper.endIndex.getter();
              if (result)
              {
LABEL_23:
                if (v11)
                {
                  v15 = specialized _ArrayBuffer._getElementSlowPath(_:)();
                }

                else
                {
                  if (!*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
                  {
                    goto LABEL_154;
                  }

                  v15 = *(v2 + 32);
                }

                v23 = v15;
                v24 = v8;
                v25 = v2 & 0xFFFFFFFFFFFFFF8;
                if (v10)
                {
                  if (!_CocoaArrayWrapper.endIndex.getter())
                  {
                    goto LABEL_144;
                  }

                  if (!_CocoaArrayWrapper.endIndex.getter())
                  {
                    goto LABEL_145;
                  }

                  if (v11)
                  {
                    goto LABEL_62;
                  }
                }

                else
                {
                  if (!*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
                  {
                    goto LABEL_143;
                  }

                  if (!v11)
                  {
LABEL_64:
                    v26 = *(v25 + 16);
                    if (!v26)
                    {
                      goto LABEL_146;
                    }

LABEL_69:
                    v27 = v26 - 1;
                    if (__OFSUB__(v26, 1))
                    {
                      goto LABEL_136;
                    }

                    v8 = v24;
                    if (swift_isUniquelyReferenced_nonNull_bridgeObject())
                    {
                      if (!v10)
                      {
                        v6 = v36;
                        if (v27 > *((v2 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                        {
LABEL_77:
                          v2 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
                        }

                        sub_1000A903C(0, 1, 0);
                        v28 = v23;
                        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
                        if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                        {
                          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
                        }

                        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

                        goto LABEL_12;
                      }
                    }

                    else if (!v10)
                    {
                      v6 = v36;
                      goto LABEL_77;
                    }

                    _CocoaArrayWrapper.endIndex.getter();
                    v6 = v36;
                    goto LABEL_77;
                  }

LABEL_62:
                  specialized _ArrayBuffer._getElementSlowPath(_:)();
                  result = swift_unknownObjectRelease();
                  v25 = v2 & 0xFFFFFFFFFFFFFF8;
                  if (!v10)
                  {
                    if (!*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
                    {
                      goto LABEL_153;
                    }

                    goto LABEL_64;
                  }
                }

                result = _CocoaArrayWrapper.endIndex.getter();
                if (!result)
                {
                  goto LABEL_153;
                }

                if (_CocoaArrayWrapper.endIndex.getter() < 1)
                {
                  goto LABEL_147;
                }

                v26 = _CocoaArrayWrapper.endIndex.getter();
                goto LABEL_69;
              }
            }

            else
            {
              result = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
              if (result)
              {
                goto LABEL_23;
              }
            }
          }
        }

LABEL_27:
        if (v3 >> 62)
        {
          if (!_CocoaArrayWrapper.endIndex.getter())
          {
LABEL_86:
            if (v10)
            {
              if (!_CocoaArrayWrapper.endIndex.getter() || !_CocoaArrayWrapper.endIndex.getter())
              {
                goto LABEL_13;
              }
            }

            else if (!*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_13;
            }

            v29 = v2 & 0xC000000000000001;
            if ((v2 & 0xC000000000000001) != 0)
            {
              v30 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              if (!*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_134;
              }

              v30 = *(v2 + 32);
            }

            v31 = v30;
            v32 = v2 & 0xFFFFFFFFFFFFFF8;
            if (v10)
            {
              if (!_CocoaArrayWrapper.endIndex.getter())
              {
                goto LABEL_138;
              }

              if (!_CocoaArrayWrapper.endIndex.getter())
              {
                goto LABEL_139;
              }

              if (v29)
              {
                goto LABEL_101;
              }
            }

            else
            {
              if (!*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_137;
              }

              if (!v29)
              {
LABEL_103:
                v33 = *(v32 + 16);
                if (!v33)
                {
                  goto LABEL_140;
                }

LABEL_108:
                v34 = v33 - 1;
                if (__OFSUB__(v33, 1))
                {
                  goto LABEL_135;
                }

                if (swift_isUniquelyReferenced_nonNull_bridgeObject())
                {
                  if (!v10)
                  {
                    if (v34 > *((v2 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                    {
                      goto LABEL_8;
                    }

LABEL_9:
                    sub_1000A903C(0, 1, 0);
                    v9 = v31;
                    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
                    if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                    {
                      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
                    }

                    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
LABEL_12:

                    goto LABEL_13;
                  }
                }

                else if (!v10)
                {
LABEL_8:
                  v2 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
                  goto LABEL_9;
                }

                _CocoaArrayWrapper.endIndex.getter();
                goto LABEL_8;
              }

LABEL_101:
              specialized _ArrayBuffer._getElementSlowPath(_:)();
              swift_unknownObjectRelease();
              v32 = v2 & 0xFFFFFFFFFFFFFF8;
              if (!v10)
              {
                if (!*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  goto LABEL_142;
                }

                goto LABEL_103;
              }
            }

            if (!_CocoaArrayWrapper.endIndex.getter())
            {
              goto LABEL_142;
            }

            if (_CocoaArrayWrapper.endIndex.getter() < 1)
            {
              goto LABEL_141;
            }

            v33 = _CocoaArrayWrapper.endIndex.getter();
            goto LABEL_108;
          }

          if (!_CocoaArrayWrapper.endIndex.getter())
          {
            goto LABEL_127;
          }
        }

        else if (!*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_86;
        }

        v16 = v3 >> 62;
        if (v3 >> 62)
        {
          if (!_CocoaArrayWrapper.endIndex.getter())
          {
            goto LABEL_128;
          }
        }

        else if (!*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_128;
        }

        if ((v3 & 0xC000000000000001) != 0)
        {
          specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (!*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_129;
          }

          v17 = *(v3 + 32);
        }

        if (v16)
        {
          if (!_CocoaArrayWrapper.endIndex.getter())
          {
            goto LABEL_132;
          }

          if (_CocoaArrayWrapper.endIndex.getter() < 1)
          {
            goto LABEL_133;
          }

          v18 = _CocoaArrayWrapper.endIndex.getter();
        }

        else
        {
          v18 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (!v18)
          {
            goto LABEL_132;
          }
        }

        v19 = v18 - 1;
        if (__OFSUB__(v18, 1))
        {
          goto LABEL_130;
        }

        if (!swift_isUniquelyReferenced_nonNull_bridgeObject())
        {
          if (v16)
          {
LABEL_46:
            _CocoaArrayWrapper.endIndex.getter();
          }

LABEL_47:
          v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
          v20 = v3 & 0xFFFFFFFFFFFFFF8;
          goto LABEL_48;
        }

        if (v16)
        {
          goto LABEL_46;
        }

        v20 = v3 & 0xFFFFFFFFFFFFFF8;
        if (v19 > *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          goto LABEL_47;
        }

LABEL_48:

        if (v3 >> 62)
        {
          result = _CocoaArrayWrapper.endIndex.getter();
          if (__OFSUB__(result, 1))
          {
            goto LABEL_155;
          }

          memmove((v20 + 32), (v20 + 40), 8 * (result - 1));
          v35 = _CocoaArrayWrapper.endIndex.getter();
          v22 = v35 - 1;
          if (__OFSUB__(v35, 1))
          {
            goto LABEL_131;
          }
        }

        else
        {
          v21 = *(v20 + 16);
          memmove((v20 + 32), (v20 + 40), 8 * v21 - 8);
          v22 = v21 - 1;
          if (__OFSUB__(v21, 1))
          {
            goto LABEL_131;
          }
        }

        *(v20 + 16) = v22;
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
LABEL_13:
        if (v6 == ++v7)
        {

          return _swiftEmptyArrayStorage;
        }
      }
    }

    return _swiftEmptyArrayStorage;
  }

  return result;
}

char *sub_1000A9944(uint64_t a1)
{
  *&v1[OBJC_IVAR____TtC7Climate19ClimateZoneControls_zone] = a1;
  v2 = objc_allocWithZone(type metadata accessor for ClimateGrid());

  v3 = [v2 initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *&v1[OBJC_IVAR____TtC7Climate19ClimateZoneControls_zoneViews] = v3;
  v10.receiver = v1;
  v10.super_class = type metadata accessor for ClimateZoneControls();
  v4 = objc_msgSendSuper2(&v10, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v9[3] = &type metadata for ClimateFeatures;
  v9[4] = sub_100028968();
  LOBYTE(v9[0]) = 0;
  v5 = isFeatureEnabled(_:)();
  sub_100006B9C(v9);
  if (v5)
  {
    [*(*&v4[OBJC_IVAR____TtC7Climate19ClimateZoneControls_zone] + 16) addObject:v4];
  }

  [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v4 addSubview:*&v4[OBJC_IVAR____TtC7Climate19ClimateZoneControls_zoneViews]];
  v6.n128_f64[0] = sub_100072970();
  sub_1000A72C8(v7, v6);

  sub_1000A829C();
  return v4;
}

uint64_t sub_1000A9A90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, char **a4@<X8>)
{
  v38 = a3;
  v36 = a2;
  v40 = a4;
  v5 = type metadata accessor for CAUAsset.Seat.State();
  v34 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for CAUVehicleLayoutInfo();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v31 - v13;
  type metadata accessor for ClimateAssets(0);
  v15 = OBJC_IVAR____TtC7Climate11ClimateZone_key;
  sub_10004011C(a1 + OBJC_IVAR____TtC7Climate11ClimateZone_key, v14);
  v16 = *(a1 + OBJC_IVAR____TtC7Climate11ClimateZone_seatHeatingCooling);
  v39 = v9;
  v17 = *(v9 + 16);
  v35 = v11;
  v37 = v14;
  v17(v11, v14, v8);
  if (v16)
  {
    v18 = v34;
    v19 = v34[13];
    v19(v7, enum case for CAUAsset.Seat.State.heatOn(_:), v5);
    v32 = sub_1000407F0(a1 + v15, v7);
    v33 = v8;
    v20 = v36;
    v21 = v18[1];
    v21(v7, v5);
    v19(v7, enum case for CAUAsset.Seat.State.ventOn(_:), v5);
    v34 = sub_1000407F0(a1 + v15, v7);
    v21(v7, v5);
    v19(v7, enum case for CAUAsset.Seat.State.heatAndVentOn(_:), v5);
    v22 = sub_1000407F0(a1 + v15, v7);
    v21(v7, v5);
    v23 = objc_allocWithZone(type metadata accessor for ClimateZoneHeatingCoolingVentingPositionView(0));

    swift_unknownObjectRetain();
    v24 = v34;
    v25 = v32;
    v26 = sub_10009179C(a1, v20, v38, v35, v32, v34, v22);

    v8 = v33;
    swift_unknownObjectRelease();
  }

  else
  {
    v27 = objc_allocWithZone(type metadata accessor for ClimateZonePositionView(0));

    v28 = v36;
    swift_unknownObjectRetain();
    sub_1000A62B8(a1, v28, v38, v35);
    v26 = v29;

    swift_unknownObjectRelease();
  }

  result = (*(v39 + 8))(v37, v8);
  *v40 = v26;
  return result;
}

uint64_t sub_1000A9E20(void *a1)
{
  v2 = type metadata accessor for CAUVehicleLayoutKey();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, *(*a1 + OBJC_IVAR____TtC7Climate23ClimateZonePositionView_zone) + OBJC_IVAR____TtC7Climate11ClimateZone_key, v2, v4);
  sub_10006B9A8();
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  if (v9[1] == v9[0])
  {
    v7 = 1;
  }

  else
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  (*(v3 + 8))(v6, v2);

  return v7 & 1;
}

id sub_1000AA088(uint64_t *a1, SEL *a2, uint64_t (*a3)(uint64_t))
{
  v7 = type metadata accessor for CAUVehicleLayoutInfo();
  v8 = *(v7 - 8);
  *&v9 = __chkstk_darwin(v7).n128_u64[0];
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *a1;
  v13 = *&v3[v12];
  if (v13)
  {
    v14 = *&v3[v12];
  }

  else
  {
    v15 = [v3 *a2];
    type metadata accessor for ClimateAssets(0);
    v16 = v3;
    v17 = CAUVehicleLayout.cabinSeatsImage.getter();
    v18 = a3(v17);
    (*(v8 + 8))(v11, v7);
    v19 = [v15 constraintEqualToConstant:*&v3[OBJC_IVAR____TtC7Climate20ClimatePositionViews_scale] * v18];

    v20 = *&v3[v12];
    *&v16[v12] = v19;
    v14 = v19;

    v13 = 0;
  }

  v21 = v13;
  return v14;
}

void sub_1000AA24C()
{
  v1 = *(v0 + OBJC_IVAR____TtC7Climate20ClimatePositionViews_climateSystem);
  v2 = *(v0 + OBJC_IVAR____TtC7Climate20ClimatePositionViews_climateSystem + 8);
  v3 = *(v0 + OBJC_IVAR____TtC7Climate20ClimatePositionViews_climateSystem + 16);

  swift_unknownObjectRelease();
  sub_10003B46C(v0 + OBJC_IVAR____TtC7Climate20ClimatePositionViews_assets);

  v4 = *(v0 + OBJC_IVAR____TtC7Climate20ClimatePositionViews____lazy_storage___widthConstraint);
}

id sub_1000AA320()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ClimatePositionViews(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for ClimatePositionViews(uint64_t a1)
{
  result = qword_100117A80;
  if (!qword_100117A80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000AA484(uint64_t a1)
{
  result = type metadata accessor for ClimateAssets(319);
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

uint64_t sub_1000AA5D0(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v4 = 0x65646F4D6F747561;
    }

    else
    {
      v4 = 6710895;
    }

    if (v2)
    {
      v3 = 0xE800000000000000;
    }

    else
    {
      v3 = 0xE300000000000000;
    }
  }

  else if (a1 == 2)
  {
    v3 = 0xE800000000000000;
    v4 = 0x64656C6261736964;
  }

  else if (a1 == 3)
  {
    v3 = 0xE700000000000000;
    v4 = 0x68736572666572;
  }

  else
  {
    v3 = 0xE800000000000000;
    v4 = 0x676E696E6E697073;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v9 = 0x65646F4D6F747561;
    }

    else
    {
      v9 = 6710895;
    }

    if (a2)
    {
      v8 = 0xE800000000000000;
    }

    else
    {
      v8 = 0xE300000000000000;
    }

    if (v4 != v9)
    {
      goto LABEL_33;
    }
  }

  else
  {
    v5 = 0xE700000000000000;
    v6 = 0x68736572666572;
    if (a2 != 3)
    {
      v6 = 0x676E696E6E697073;
      v5 = 0xE800000000000000;
    }

    if (a2 == 2)
    {
      v7 = 0x64656C6261736964;
    }

    else
    {
      v7 = v6;
    }

    if (a2 == 2)
    {
      v8 = 0xE800000000000000;
    }

    else
    {
      v8 = v5;
    }

    if (v4 != v7)
    {
      goto LABEL_33;
    }
  }

  if (v3 != v8)
  {
LABEL_33:
    v10 = _stringCompareWithSmolCheck(_:_:expecting:)();
    goto LABEL_34;
  }

  v10 = 1;
LABEL_34:

  return v10 & 1;
}

uint64_t sub_1000AA754(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEB00000000657275;
  v3 = 0x74617265706D6574;
  v4 = a1;
  v5 = 0xE400000000000000;
  v6 = 1668184435;
  v7 = 0x6C75637269636572;
  v8 = 0xED00006E6F697461;
  if (a1 != 4)
  {
    v7 = 0x65736F6C63;
    v8 = 0xE500000000000000;
  }

  if (a1 != 3)
  {
    v6 = v7;
    v5 = v8;
  }

  v9 = 0xE300000000000000;
  v10 = 7233894;
  if (a1 != 1)
  {
    v10 = 0x73736572706D6F63;
    v9 = 0xEA0000000000726FLL;
  }

  if (!a1)
  {
    v10 = 0x74617265706D6574;
    v9 = 0xEB00000000657275;
  }

  if (a1 <= 2u)
  {
    v11 = v10;
  }

  else
  {
    v11 = v6;
  }

  if (v4 <= 2)
  {
    v12 = v9;
  }

  else
  {
    v12 = v5;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v2 = 0xE400000000000000;
      if (v11 != 1668184435)
      {
        goto LABEL_31;
      }
    }

    else if (a2 == 4)
    {
      v2 = 0xED00006E6F697461;
      if (v11 != 0x6C75637269636572)
      {
        goto LABEL_31;
      }
    }

    else
    {
      v2 = 0xE500000000000000;
      if (v11 != 0x65736F6C63)
      {
        goto LABEL_31;
      }
    }
  }

  else
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v2 = 0xE300000000000000;
        if (v11 != 7233894)
        {
          goto LABEL_31;
        }

        goto LABEL_28;
      }

      v3 = 0x73736572706D6F63;
      v2 = 0xEA0000000000726FLL;
    }

    if (v11 != v3)
    {
LABEL_31:
      v13 = _stringCompareWithSmolCheck(_:_:expecting:)();
      goto LABEL_32;
    }
  }

LABEL_28:
  if (v12 != v2)
  {
    goto LABEL_31;
  }

  v13 = 1;
LABEL_32:

  return v13 & 1;
}

Swift::Int sub_1000AA928(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

Swift::Int sub_1000AAA34(uint64_t a1, unsigned __int8 a2)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

id sub_1000AAB3C(uint64_t a1, __n128 a2)
{
  *&v2[OBJC_IVAR____TtC7Climate20ClimateStatusBarView_temperatureIndicator] = 0;
  *&v2[OBJC_IVAR____TtC7Climate20ClimateStatusBarView_supportedAssetsIndicators] = _swiftEmptyArrayStorage;
  if (_swiftEmptyArrayStorage >> 62 && _CocoaArrayWrapper.endIndex.getter())
  {
    sub_100027E1C(_swiftEmptyArrayStorage);
    v4 = v7;
  }

  else
  {
    v4 = &_swiftEmptySetSingleton;
  }

  *&v2[OBJC_IVAR____TtC7Climate20ClimateStatusBarView_cancellables] = v4;
  *&v2[OBJC_IVAR____TtC7Climate20ClimateStatusBarView_climateZone] = a1;
  v8.receiver = v2;
  v8.super_class = type metadata accessor for ClimateStatusBarView();

  v5 = objc_msgSendSuper2(&v8, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  [v5 setTranslatesAutoresizingMaskIntoConstraints:{0, v8.receiver, v8.super_class}];

  return v5;
}

void sub_1000AAC4C(char a1)
{
  v2 = objc_opt_self();
  v3 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  *(v4 + 24) = a1;
  v6[4] = sub_1000AB5DC;
  v6[5] = v4;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 1107296256;
  v6[2] = sub_1000B4DF4;
  v6[3] = &unk_1000F9188;
  v5 = _Block_copy(v6);

  [v2 animateWithDuration:0 delay:v5 options:0 animations:0.3 completion:0.0];
  _Block_release(v5);
}

void sub_1000AAD6C(void *a1)
{
  v2 = v1;
  [a1 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v1 addSubview:a1];
  v4 = objc_opt_self();
  sub_1000040E8(&unk_100114770, qword_1000D58D0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1000D5D90;
  v6 = [a1 leadingAnchor];
  v7 = [v2 leadingAnchor];
  v8 = [v6 constraintEqualToAnchor:v7];

  *(v5 + 32) = v8;
  v9 = [a1 trailingAnchor];
  v10 = [v2 trailingAnchor];
  v11 = [v9 constraintEqualToAnchor:v10];

  *(v5 + 40) = v11;
  v12 = [a1 bottomAnchor];
  v13 = [v2 bottomAnchor];
  v14 = [v12 constraintEqualToAnchor:v13];

  *(v5 + 48) = v14;
  v15 = [a1 topAnchor];
  v16 = [v2 topAnchor];
  v17 = [v15 constraintEqualToAnchor:v16];

  *(v5 + 56) = v17;
  sub_100004130();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v4 activateConstraints:isa];
}

uint64_t sub_1000AAFE4(uint64_t a1)
{
  String.hash(into:)();
}

unint64_t sub_1000AB0E0@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000AB468(*a1);
  *a2 = result;
  return result;
}

void sub_1000AB110(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEB00000000657275;
  v4 = 0x74617265706D6574;
  v5 = 0xE400000000000000;
  v6 = 1668184435;
  v7 = 0xED00006E6F697461;
  v8 = 0x6C75637269636572;
  if (v2 != 4)
  {
    v8 = 0x65736F6C63;
    v7 = 0xE500000000000000;
  }

  if (v2 != 3)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE300000000000000;
  v10 = 7233894;
  if (v2 != 1)
  {
    v10 = 0x73736572706D6F63;
    v9 = 0xEA0000000000726FLL;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  if (*v1 <= 2u)
  {
    v11 = v4;
  }

  else
  {
    v11 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v11;
  a1[1] = v3;
}

void sub_1000AB1FC(uint64_t a1, char a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = (*((swift_isaMask & *Strong) + 0xB0))();
    if (v5)
    {
      v6 = 0.0;
      if (a2)
      {
        v6 = 1.0;
      }

      v7 = v5;
      [v5 setAlpha:v6];
    }
  }
}

uint64_t sub_1000AB2DC()
{
}

id sub_1000AB33C(uint64_t a1, __n128 a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for ClimateStatusBarView();
  return objc_msgSendSuper2(&v4, "dealloc");
}

unint64_t sub_1000AB414()
{
  result = qword_100117AD8;
  if (!qword_100117AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100117AD8);
  }

  return result;
}

unint64_t sub_1000AB468(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1000F6868, v2);

  if (v3 >= 6)
  {
    return 6;
  }

  else
  {
    return v3;
  }
}

void sub_1000AB4B4()
{
  *(v0 + OBJC_IVAR____TtC7Climate20ClimateStatusBarView_temperatureIndicator) = 0;
  *(v0 + OBJC_IVAR____TtC7Climate20ClimateStatusBarView_supportedAssetsIndicators) = _swiftEmptyArrayStorage;
  if (_swiftEmptyArrayStorage >> 62 && _CocoaArrayWrapper.endIndex.getter())
  {
    sub_100027E1C(_swiftEmptyArrayStorage);
  }

  else
  {
    v1 = &_swiftEmptySetSingleton;
  }

  *(v0 + OBJC_IVAR____TtC7Climate20ClimateStatusBarView_cancellables) = v1;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_1000AB56C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000AB5A4()
{

  return _swift_deallocObject(v0, 25, 7);
}

double sub_1000AB5E8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

void sub_1000AB608()
{
  v0 = objc_opt_self();
  v1 = [v0 systemFontOfSize:12.0 weight:UIFontWeightSemibold];
  v2 = [v1 fontDescriptor];
  v3 = [v2 fontDescriptorWithDesign:UIFontDescriptorSystemDesignRounded];

  if (v3)
  {
    v4 = [v0 fontWithDescriptor:v3 size:12.0];

    v1 = v4;
  }

  qword_10011B250 = v1;
}

void sub_1000AB6E0()
{
  v0 = objc_opt_self();
  v1 = UIFontTextStyleBody;
  v2 = [v0 _preferredFontForTextStyle:v1 weight:UIFontWeightSemibold];

  if (v2)
  {
    qword_10011B258 = v2;
  }

  else
  {
    __break(1u);
  }
}

CGFloat sub_1000AB7A0(CGFloat a1, uint64_t a2, _OWORD *a3, _OWORD *a4, _OWORD *a5)
{
  CGAffineTransformMakeScale(&v11, a1, a1);
  result = v11.a;
  v9 = *&v11.c;
  v10 = *&v11.tx;
  *a3 = *&v11.a;
  *a4 = v9;
  *a5 = v10;
  return result;
}

void sub_1000AB7F8(double a1, double a2, uint64_t a3, unint64_t a4)
{
  if (a4 >> 62)
  {
    goto LABEL_18;
  }

  v7 = *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v7)
  {
    while ((a4 & 0xC000000000000001) == 0)
    {
      if (*((a4 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v8 = *(a4 + 32);
LABEL_6:
        v9 = v8;
        [v8 size];
        [v9 drawAtPoint:{(a2 - v10) * 0.5, 0.0}];
        [v9 size];
        v12 = v11;

        if (v7 == 1)
        {
          return;
        }

        v13 = v12 + 0.0;
        for (i = 5; ; ++i)
        {
          v15 = i - 4;
          if ((a4 & 0xC000000000000001) != 0)
          {
            v16 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v15 >= *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_16;
            }

            v16 = *(a4 + 8 * i);
          }

          v17 = v16;
          v18 = __OFADD__(v15, 1);
          v19 = i - 3;
          if (v18)
          {
            break;
          }

          v20 = v13 + a1;
          [v16 size];
          [v17 drawAtPoint:{(a2 - v21) * 0.5, v20}];
          [v17 size];
          v23 = v22;

          v13 = v20 + v23;
          if (v19 == v7)
          {
            return;
          }
        }

        goto LABEL_17;
      }

LABEL_16:
      __break(1u);
LABEL_17:
      __break(1u);
LABEL_18:
      v7 = _CocoaArrayWrapper.endIndex.getter();
      if (!v7)
      {
        return;
      }
    }

    v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_6;
  }
}

void sub_1000AB99C(uint64_t a1, double a2)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v4 = 0;
    v5 = _swiftEmptyArrayStorage;
    aBlock[0] = _swiftEmptyArrayStorage;
    v6 = a1 + 56;
    v51 = a1 + 56;
    while (1)
    {
      v52 = v5;
      v7 = (v6 + 32 * v4);
      v5 = v4;
      while (1)
      {
        if (v5 >= v2)
        {
          __break(1u);
LABEL_46:
          __break(1u);
          goto LABEL_47;
        }

        v4 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          goto LABEL_46;
        }

        v8 = *(v7 - 1);
        v9 = *v7;
        v10 = objc_opt_self();

        v11 = v8;
        v12 = [v10 systemFontOfSize:v9 weight:UIFontWeightRegular];
        v13 = [objc_opt_self() configurationWithFont:v12 scale:1];

        v14 = v13;
        v15 = String._bridgeToObjectiveC()();
        v16 = [objc_opt_self() systemImageNamed:v15 withConfiguration:v14];

        if (v16)
        {
          break;
        }

LABEL_5:
        ++v5;
        v7 += 4;
        if (v4 == v2)
        {
          v5 = v52;
          goto LABEL_15;
        }
      }

      v17 = [v16 imageWithTintColor:v11];

      if (!v17)
      {
        goto LABEL_5;
      }

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((aBlock[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((aBlock[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v5 = aBlock[0];
      v6 = v51;
      if (v4 == v2)
      {
LABEL_15:
        if (!(v5 >> 62))
        {
          v18 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
          goto LABEL_17;
        }

LABEL_47:
        v18 = _CocoaArrayWrapper.endIndex.getter();
LABEL_17:
        if (v18 == v2)
        {
          aBlock[0] = _swiftEmptyArrayStorage;
          sub_1000A8A00(0, v2, 0);
          v19 = 0;
          v20 = _swiftEmptyArrayStorage;
          do
          {
            if ((v5 & 0xC000000000000001) != 0)
            {
              v21 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              v21 = *(v5 + 8 * v19 + 32);
            }

            v22 = v21;
            [v21 size];
            v24 = v23;
            v26 = v25;

            aBlock[0] = v20;
            v28 = *(v20 + 2);
            v27 = *(v20 + 3);
            v29 = v28 + 1;
            if (v28 >= v27 >> 1)
            {
              sub_1000A8A00((v27 > 1), v29, 1);
              v29 = v28 + 1;
              v20 = aBlock[0];
            }

            ++v19;
            *(v20 + 2) = v29;
            v30 = &v20[2 * v28];
            *(v30 + 4) = v24;
            *(v30 + 5) = v26;
          }

          while (v2 != v19);
          v31 = v20[5] + 0.0;
          if (v28)
          {
            v32 = v20 + 7;
            v33 = v28;
            do
            {
              v34 = *v32;
              v32 += 2;
              v31 = v31 + v34 + a2;
              --v33;
            }

            while (v33);
          }

          aBlock[0] = _swiftEmptyArrayStorage;
          sub_1000A89E0(0, v29, 0);
          v35 = _swiftEmptyArrayStorage;
          v36 = _swiftEmptyArrayStorage[2];
          v37 = v28 + 1;
          v38 = 4;
          do
          {
            v39 = v20[v38];
            aBlock[0] = v35;
            v40 = *(v35 + 3);
            if (v36 >= v40 >> 1)
            {
              sub_1000A89E0((v40 > 1), v36 + 1, 1);
              v35 = aBlock[0];
            }

            *(v35 + 2) = v36 + 1;
            v35[v36 + 4] = v39;
            v38 += 2;
            ++v36;
            --v37;
          }

          while (v37);

          v41 = *(v35 + 2);
          if (v41)
          {
            v42 = v35[4];
            v43 = v41 - 1;
            if (v43)
            {
              v44 = v35 + 5;
              do
              {
                v45 = *v44++;
                v46 = v45;
                if (v42 < v45)
                {
                  v42 = v46;
                }

                --v43;
              }

              while (v43);
            }

            if (v42 > 0.0 && v31 > 0.0)
            {
              v47 = [objc_allocWithZone(UIGraphicsImageRenderer) initWithSize:{v42, v31}];
              v48 = swift_allocObject();
              *(v48 + 16) = v5;
              *(v48 + 24) = a2;
              *(v48 + 32) = v42;
              v49 = swift_allocObject();
              *(v49 + 16) = sub_1000ABF58;
              *(v49 + 24) = v48;
              aBlock[4] = sub_100028138;
              aBlock[5] = v49;
              aBlock[0] = _NSConcreteStackBlock;
              aBlock[1] = 1107296256;
              aBlock[2] = sub_10001FDA4;
              aBlock[3] = &unk_1000F9210;
              v50 = _Block_copy(aBlock);

              [v47 imageWithActions:v50];

              _Block_release(v50);
              LOBYTE(v47) = swift_isEscapingClosureAtFileLocation();

              if (v47)
              {
                __break(1u);
              }

              return;
            }
          }

          else
          {
          }
        }

        return;
      }
    }
  }
}

uint64_t sub_1000ABF20()
{

  return _swift_deallocObject(v0, 40, 7);
}

double sub_1000ABF74(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_1000ABF8C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1000ABFD4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1000AC024()
{
  v1 = *(v0 + OBJC_IVAR____TtC7Climate25ClimateControlsLockButton_controlsLock);
  v2 = [v1 lockState];
  v3 = [v1 lockStateRestricted];
  v4 = [v1 lockStateDisabled];
  if (v2 == 1)
  {
    v5 = 5;
    if (!v3)
    {
      v5 = 1;
    }

    if (!v4)
    {
      return v5;
    }

    return v5 | 0x10;
  }

  v5 = 4;
  if (!v3)
  {
    v5 = 0;
  }

  if (v4)
  {
    return v5 | 0x10;
  }

  return v5;
}

char *sub_1000AC0C0(void *a1)
{
  *&v1[OBJC_IVAR____TtC7Climate25ClimateControlsLockButton_controlsLock] = a1;
  v20.receiver = v1;
  v20.super_class = type metadata accessor for ClimateControlsLockButton(0);
  v3 = a1;
  v4 = objc_msgSendSuper2(&v20, "init");
  [v3 registerObserver:v4];
  v5 = [*&v4[OBJC_IVAR____TtC7Climate25ClimateControlsLockButton_controlsLock] lockState];
  if (v5 == 1)
  {
    v6 = 0xD00000000000001ALL;
  }

  else
  {
    v6 = 0xD00000000000001FLL;
  }

  if (v5 == 1)
  {
    v7 = "figure.child.and.lock.open.fill";
  }

  else
  {
    v7 = "kButton";
  }

  v8 = v7 | 0x8000000000000000;
  v9 = &v4[OBJC_IVAR____TtC7Climate13ClimateButton_imageSystemName];
  swift_beginAccess();
  v10 = *v9;
  v11 = v9[1];
  *v9 = v6;
  v9[1] = v8;
  if (!v11 || (v6 == v10 ? (v12 = v8 == v11) : (v12 = 0), !v12 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0))
  {
    ClimateButton.updateClimateConfiguration()();
  }

  v13 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v14 = swift_allocObject();
  *(v14 + 16) = v13;
  *(v14 + 24) = v3;
  v15 = &v4[OBJC_IVAR____TtC7Climate13ClimateButton_action];
  swift_beginAccess();
  v16 = *v15;
  v17 = v15[1];
  *v15 = sub_1000AC6EC;
  v15[1] = v14;
  v18 = v3;

  sub_100003380(v16, v17);

  sub_1000AC3B0();

  return v4;
}

void sub_1000AC2B4(uint64_t a1, uint64_t a2, void *a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = *(Strong + OBJC_IVAR____TtC7Climate25ClimateControlsLockButton_controlsLock);

    if ([a3 lockState] == 2)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }

    [v6 setLockState:v7];
  }
}

uint64_t sub_1000AC3B0()
{
  sub_1000C10C4();
  v1 = *&v0[OBJC_IVAR____TtC7Climate25ClimateControlsLockButton_controlsLock];
  [v1 lockState];
  [v1 lockStateRestricted];
  [v0 setEnabled:{objc_msgSend(v1, "lockStateDisabled") ^ 1}];
  v2 = [v1 lockState] != 1;
  [v1 lockStateRestricted];
  if ((v2 | [v1 lockStateDisabled]))
  {
    v3 = &OBJC_IVAR____TtC7Climate15ClimateOnButton_offColor;
  }

  else
  {
    v3 = &OBJC_IVAR____TtC7Climate15ClimateOnButton_onColor;
  }

  v4 = &v0[*v3];
  v5 = *(v4 + 1);
  v6 = *(v4 + 2);
  v7 = *v4;
  v8 = v5;

  sub_10007A4CC(v7, v8, v6);

  ClimateButton.refreshColorConfig()();
  ClimateButton.createEdgeInsets()();
  v9 = [v1 lockState];
  if (v9 == 1)
  {
    v10 = 0xD00000000000001ALL;
  }

  else
  {
    v10 = 0xD00000000000001FLL;
  }

  if (v9 == 1)
  {
    v11 = "figure.child.and.lock.open.fill";
  }

  else
  {
    v11 = "kButton";
  }

  v12 = v11 | 0x8000000000000000;
  v13 = &v0[OBJC_IVAR____TtC7Climate13ClimateButton_imageSystemName];
  swift_beginAccess();
  v14 = *v13;
  v15 = v13[1];
  *v13 = v10;
  v13[1] = v12;
  if (!v15 || (v10 != v14 || v12 != v15) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    ClimateButton.updateClimateConfiguration()();
  }
}

id sub_1000AC588()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ClimateControlsLockButton(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for ClimateControlsLockButton(uint64_t a1)
{
  result = qword_100117B10;
  if (!qword_100117B10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000AC674()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000AC6AC()
{

  return _swift_deallocObject(v0, 32, 7);
}

void sub_1000AC6F4(uint64_t a1)
{
  v1[OBJC_IVAR____TtC7Climate21ClimateSettingsButton_allowFocus] = 1;
  v8.receiver = v1;
  v8.super_class = type metadata accessor for ClimateSettingsButton();
  v2 = objc_msgSendSuper2(&v8, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  [v2 updateConfiguration];
  v3 = [objc_opt_self() sharedApplication];
  v4 = [v3 delegate];

  if (v4)
  {
    type metadata accessor for ClimateAppDelegate();
    swift_dynamicCastClassUnconditional();
    v5 = sub_1000AF438();
    swift_unknownObjectRelease();
    v6 = *&v5[OBJC_IVAR____TtC7Climate18ClimateCoordinator_accessibilityManager];

    v7 = v2;
    sub_1000AD214(v7, v6);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1000AC8C8()
{
  v1 = v0;
  v2 = sub_1000040E8(&qword_100117BB0, &qword_1000D9328);
  __chkstk_darwin(v2 - 8);
  v30 = &v27 - v3;
  v4 = type metadata accessor for UIBackgroundConfiguration();
  v28 = *(v4 - 8);
  v29 = v4;
  __chkstk_darwin(v4);
  v27 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v27 - v7;
  v9 = sub_1000040E8(&qword_100117BB8, &unk_1000D9330);
  __chkstk_darwin(v9 - 8);
  v11 = &v27 - v10;
  v12 = type metadata accessor for UIButton.Configuration();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UIButton.Configuration.glass()();
  v16 = String._bridgeToObjectiveC()();
  v17 = [objc_opt_self() systemImageNamed:v16];

  UIButton.Configuration.image.setter();
  v18 = [objc_opt_self() systemFontOfSize:19.0 weight:UIFontWeightRegular];
  v19 = [objc_opt_self() configurationWithFont:v18 scale:-1];

  UIButton.Configuration.preferredSymbolConfigurationForImage.setter();
  *(swift_allocObject() + 16) = v1;
  v20 = v1;
  UIConfigurationColorTransformer.init(_:)();
  v21 = type metadata accessor for UIConfigurationColorTransformer();
  v22 = *(*(v21 - 8) + 56);
  v22(v11, 0, 1, v21);
  UIButton.Configuration.imageColorTransformer.setter();
  static UIBackgroundConfiguration.clear()();
  UIBackgroundConfiguration.backgroundColor.setter();
  UIBackgroundConfiguration.cornerRadius.setter();
  *(swift_allocObject() + 16) = v20;
  v20;
  UIConfigurationColorTransformer.init(_:)();
  v22(v11, 0, 1, v21);
  UIBackgroundConfiguration.backgroundColorTransformer.setter();
  v23 = v28;
  v24 = v29;
  (*(v28 + 16))(v27, v8, v29);
  UIButton.Configuration.background.setter();
  v25 = v30;
  (*(v13 + 16))(v30, v15, v12);
  (*(v13 + 56))(v25, 0, 1, v12);
  UIButton.configuration.setter();
  (*(v23 + 8))(v8, v24);
  return (*(v13 + 8))(v15, v12);
}

id sub_1000ACD58(int a1, id a2)
{
  if ([a2 isFocused])
  {
    v3 = &selRef__carSystemFocusLabelColor;
  }

  else
  {
    v3 = &selRef__carSystemFocusLabelColor;
    if (([a2 isSelected] & 1) == 0 && !objc_msgSend(a2, "isHighlighted"))
    {
      v3 = &selRef_labelColor;
    }
  }

  v4 = [objc_opt_self() *v3];

  return v4;
}

id sub_1000ACDFC(int a1, id a2)
{
  if ([a2 isFocused])
  {
    v3 = &selRef__carSystemFocusColor;
  }

  else
  {
    v3 = &selRef__carSystemFocusColor;
    if (([a2 isSelected] & 1) == 0 && !objc_msgSend(a2, "isHighlighted"))
    {
      v3 = &selRef_clearColor;
    }
  }

  v4 = [objc_opt_self() *v3];

  return v4;
}