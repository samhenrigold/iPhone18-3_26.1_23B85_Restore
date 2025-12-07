uint64_t sub_100066A28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = sub_100065F3C(a3, a4);
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_17;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 < v18 || (a5 & 1) != 0)
    {
      sub_100066768(v18, a5 & 1);
      v13 = sub_100065F3C(a3, a4);
      if ((v19 & 1) != (v22 & 1))
      {
LABEL_18:
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }
    }

    else
    {
      v21 = v13;
      sub_100066BB0();
      v13 = v21;
    }
  }

  v23 = *v6;
  if (v19)
  {
    v24 = (v23[7] + 16 * v13);
    *v24 = a1;
    v24[1] = a2;
  }

  v23[(v13 >> 6) + 8] |= 1 << v13;
  v26 = (v23[6] + 16 * v13);
  *v26 = a3;
  v26[1] = a4;
  v27 = (v23[7] + 16 * v13);
  *v27 = a1;
  v27[1] = a2;
  v28 = v23[2];
  v17 = __OFADD__(v28, 1);
  v29 = v28 + 1;
  if (v17)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v23[2] = v29;
}

void *sub_100066BB0()
{
  v1 = v0;
  sub_100041AA0(&qword_10010A0A8, &qword_1000C3070);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = (*(v2 + 56) + v17);
        v22 = *v21;
        v23 = v21[1];
        v24 = (*(v4 + 48) + v17);
        *v24 = v20;
        v24[1] = v19;
        v25 = (*(v4 + 56) + v17);
        *v25 = v22;
        v25[1] = v23;
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

  return result;
}

uint64_t sub_100066D28(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  result = *(a3 + 16);
  v6 = (a3 + 16 * result + 24);
  do
  {
    v7 = result;
    if (!result)
    {
      break;
    }

    v8 = *v6;
    v10[0] = *(v6 - 1);
    v10[1] = v8;

    v9 = a1(v10);

    if (v3)
    {
      break;
    }

    v6 -= 2;
    result = v7 - 1;
  }

  while ((v9 & 1) == 0);
  return result;
}

uint64_t sub_100066DCC(uint64_t a1, void *a2, char a3)
{
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = swift_allocObject();
  *(v10 + 16) = a2;
  *(v10 + 24) = a3;
  v11 = qword_100108DE8;
  v12 = a2;
  if (v11 != -1)
  {
    swift_once();
  }

  v13 = qword_10010CEC0;
  Logger.init(_:)();
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v28 = v12;
    v17 = a1;
    v18 = a3;
    v19 = v16;
    v20 = swift_slowAlloc();
    v29 = v20;
    *v19 = 136446210;
    *(v19 + 4) = sub_10008D954(0xD000000000000023, 0x80000001000CC7C0, &v29);
    _os_log_impl(&_mh_execute_header, v14, v15, "%{public}s", v19, 0xCu);
    sub_1000466E4(v20);

    a3 = v18;
    a1 = v17;
    v12 = v28;
  }

  (*(v7 + 8))(v9, v6);
  v21 = *(a1 + OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController_devicesController);
  if (v21)
  {
    v22 = v21;
    v23 = [v22 deConsentTextsForGatheringAttachments];
    v24 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v24[2])
    {
      v25 = v24[5];
      v26 = v24[4] & 0xFFFFFFFFFFFFLL;
      if ((v25 & 0x2000000000000000) != 0)
      {
        v26 = HIBYTE(v25) & 0xF;
      }

      if (v26)
      {
        *(a1 + OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController_isSubmitting) = 0;
        sub_10005CDE4();
      }
    }

    static FBKDEConsentAlertPresenter.presentConsentTexts(_:from:presentedConsent:cancelAction:andContinue:)();
  }

  else
  {
    v12[OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController_isSubmitting] = 1;
    sub_10005CDE4();
    sub_10005E994(a3 & 1);
  }
}

void sub_1000670DC(char *a1, _BYTE *a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a2;
  v5 = *&a1[OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController_devicesController];
  if (v5)
  {
    v6 = a2;
    if ([v5 hasUnmetRequirementAttachments])
    {
      v7 = objc_opt_self();
      v8 = [v7 mainBundle];
      v50._object = 0xE000000000000000;
      v9._object = 0x80000001000CC6D0;
      v9._countAndFlagsBits = 0xD000000000000011;
      v10._countAndFlagsBits = 0;
      v10._object = 0xE000000000000000;
      v50._countAndFlagsBits = 0;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v9, 0, v8, v10, v50);

      v11 = [v7 mainBundle];
      v51._object = 0xE000000000000000;
      v12._countAndFlagsBits = 0xD000000000000019;
      v12._object = 0x80000001000CC6F0;
      v13._countAndFlagsBits = 0;
      v13._object = 0xE000000000000000;
      v51._countAndFlagsBits = 0;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v12, 0, v11, v13, v51);

      v14 = String._bridgeToObjectiveC()();

      v15 = String._bridgeToObjectiveC()();

      v41 = [objc_opt_self() alertControllerWithTitle:v14 message:v15 preferredStyle:1];

      v16 = [v7 mainBundle];
      v52._object = 0xE000000000000000;
      v17._object = 0x80000001000CC710;
      v17._countAndFlagsBits = 0xD000000000000011;
      v18._countAndFlagsBits = 0;
      v18._object = 0xE000000000000000;
      v52._countAndFlagsBits = 0;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v17, 0, v16, v18, v52);

      v19 = swift_allocObject();
      v19[2] = a1;
      v19[3] = sub_100068D44;
      v19[4] = v4;
      v20 = a1;

      v21 = String._bridgeToObjectiveC()();

      v47 = sub_100068D4C;
      v48 = v19;
      aBlock = _NSConcreteStackBlock;
      v44 = 1107296256;
      v45 = sub_100040DDC;
      v46 = &unk_1000E1420;
      v22 = _Block_copy(&aBlock);

      v23 = objc_opt_self();
      v42 = [v23 actionWithTitle:v21 style:0 handler:v22];
      _Block_release(v22);

      [v41 addAction:v42];
      v24 = [v7 mainBundle];
      v53._object = 0xE000000000000000;
      v25._countAndFlagsBits = 0x575F54494D425553;
      v25._object = 0xEF53454C49465F4FLL;
      v26._countAndFlagsBits = 0;
      v26._object = 0xE000000000000000;
      v53._countAndFlagsBits = 0;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v25, 0, v24, v26, v53);

      v27 = swift_allocObject();
      v27[2] = v20;
      v27[3] = sub_100068D44;
      v27[4] = v4;
      v28 = v20;

      v29 = String._bridgeToObjectiveC()();

      v47 = sub_100068D58;
      v48 = v27;
      aBlock = _NSConcreteStackBlock;
      v44 = 1107296256;
      v45 = sub_100040DDC;
      v46 = &unk_1000E1470;
      v30 = _Block_copy(&aBlock);

      v31 = [v23 actionWithTitle:v29 style:0 handler:v30];
      _Block_release(v30);

      [v41 addAction:v31];
      v32 = [v7 mainBundle];
      v54._object = 0xE000000000000000;
      v33._countAndFlagsBits = 0x5F4F545F4B434142;
      v33._object = 0xED00005446415244;
      v34._countAndFlagsBits = 0;
      v34._object = 0xE000000000000000;
      v54._countAndFlagsBits = 0;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v33, 0, v32, v34, v54);

      v35 = swift_allocObject();
      *(v35 + 16) = v28;
      v36 = v28;
      v37 = String._bridgeToObjectiveC()();

      v47 = sub_100068DC4;
      v48 = v35;
      aBlock = _NSConcreteStackBlock;
      v44 = 1107296256;
      v45 = sub_100040DDC;
      v46 = &unk_1000E14C0;
      v38 = _Block_copy(&aBlock);

      v39 = [v23 actionWithTitle:v37 style:1 handler:v38];
      _Block_release(v38);

      [v41 addAction:v39];
      [v36 presentViewController:v41 animated:1 completion:0];

      return;
    }
  }

  else
  {
    v40 = a2;
  }

  sub_10005E458(0, a2);
}

id sub_100067768(uint64_t a1)
{
  sub_1000605EC(a1);
  if (v3)
  {
    v4 = v2;
    objc_opt_self();
    v5 = swift_dynamicCastObjCClass();
    if (((v5 != 0) & v4) == 1)
    {
      v6 = *(v1 + OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController_devicesController);
      if (v6)
      {
        v7 = v5;
        v8 = v6;
        v9 = [v8 trailingSwipeActionConfigurationWithAttachment:v7 fromViewController:v1];
LABEL_9:
        v13 = v9;

        swift_unknownObjectRelease();
        return v13;
      }
    }

    else
    {
      objc_opt_self();
      v10 = swift_dynamicCastObjCClass();
      if (v10)
      {
        if (v4)
        {
          v11 = *(v1 + OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController_devicesController);
          if (v11)
          {
            v12 = v10;
            v8 = v11;
            v9 = [v8 trailingSwipeActionConfigurationWithDevice:v12 fromViewController:v1];
            goto LABEL_9;
          }
        }
      }
    }

    swift_unknownObjectRelease();
  }

  return 0;
}

void sub_10006787C(uint64_t a1)
{
  v2 = v1;
  v3 = sub_100063AC4();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    __break(1u);
    goto LABEL_47;
  }

  v5 = Strong;
  [Strong resignFirstResponder];

  v6 = *&v2[OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController_dataSource];
  if (!v6)
  {
LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  v7 = v6;
  dispatch thunk of UITableViewDiffableDataSource.itemIdentifier(for:)();

  v8 = v65;
  if (!v65)
  {
LABEL_54:
    _StringGuts.grow(_:)(44);

    aBlock = 0xD00000000000002ALL;
    v65 = 0x80000001000CC8D0;
    type metadata accessor for IndexPath();
    sub_100068EF4(&qword_10010A0D8, &type metadata accessor for IndexPath, &protocol conformance descriptor for IndexPath);
    v63._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v63);

    goto LABEL_55;
  }

  v9 = aBlock;
  v10 = static os_log_type_t.default.getter();
  v11 = *&v2[OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController_log];
  sub_100041AA0(&unk_100109860, qword_1000C2DA0);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1000C29F0;
  *(v12 + 56) = &type metadata for String;
  *(v12 + 64) = sub_100047484();
  *(v12 + 32) = v9;
  *(v12 + 40) = v8;

  os_log(_:dso:log:_:_:)(v10, &_mh_execute_header, v11, "Did tap on [%{public}@]", 23, 2, v12);

  v13 = (*&v2[OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController____lazy_storage___cachedCommentsCell] + OBJC_IVAR____TtC18Feedback_Assistant25FBAExpandingTextInputCell_itemIdentifier);
  v14 = v9 == *v13 && v8 == v13[1];
  if (v14 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return;
  }

  if (v9 == 0xD00000000000001ALL && v8 == 0x80000001000C2EA0 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v15 = String._bridgeToObjectiveC()();
    v16 = sub_10006395C();
    [v2 performSegueWithIdentifier:v15 sender:v16];

    v17 = [v2 tableView];
    if (v17)
    {
LABEL_14:
      v18 = v17;

      v19.super.isa = IndexPath._bridgeToObjectiveC()().super.isa;
      [v18 deselectRowAtIndexPath:v19.super.isa animated:1];
LABEL_15:

LABEL_16:
      return;
    }

    goto LABEL_48;
  }

  if ((v9 != qword_100109D10 || v8 != off_100109D18) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    v47._countAndFlagsBits = 0xD000000000000015;
    v47._object = 0x80000001000CC2E0;
    if (String.hasPrefix(_:)(v47))
    {
      v48 = *&v2[OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController_followup];
      if (v48)
      {
        v49 = v48;

        v50 = objc_opt_self();
        v19.super.isa = IndexPath._bridgeToObjectiveC()().super.isa;
        v51 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v68 = sub_100068F3C;
        v69 = v51;
        aBlock = _NSConcreteStackBlock;
        v65 = 1107296256;
        v66 = sub_100060A74;
        v67 = &unk_1000E1588;
        v52 = _Block_copy(&aBlock);

        [v50 showValidationChoicesForCellAtIndexPath:v19.super.isa followup:v49 fromViewController:v2 completion:v52];
        _Block_release(v52);

        goto LABEL_16;
      }

      while (1)
      {
LABEL_55:
        _assertionFailure(_:_:file:line:flags:)();
        __break(1u);
      }
    }

    v53 = OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController_devicesController;
    v54 = *&v2[OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController_devicesController];
    if (v54 && (v55 = v54, v56 = String._bridgeToObjectiveC()(), v9 = [v55 maybeAttachmentWithIdentifier:v56], v55, v56, v9))
    {
      if ([v9 canStartGathering])
      {
        v57 = *&v2[v53];
        if (!v57)
        {
LABEL_53:
          __break(1u);
          goto LABEL_54;
        }

        v58 = v57;
        isa = Dictionary._bridgeToObjectiveC()().super.isa;
        [v58 gatherAttachment:v9 answers:isa];

        goto LABEL_44;
      }
    }

    else
    {
      v17 = [v2 tableView];
      if (v17)
      {
        goto LABEL_14;
      }

      __break(1u);
    }

    if ([v9 isReadyToDisplayContents])
    {
      v60 = IndexPath._bridgeToObjectiveC()().super.isa;
      [v2 fbkPresetAttachment:v9 fromIndexPath:v60];
    }

    else
    {
      v61 = static os_log_type_t.info.getter();
      os_log(_:dso:log:_:_:)(v61, &_mh_execute_header, v11, "Attachment is not ready to display", 34, 2, _swiftEmptyArrayStorage);
    }

LABEL_44:
    v62 = [v2 tableView];
    if (v62)
    {
      v18 = v62;

      v19.super.isa = IndexPath._bridgeToObjectiveC()().super.isa;
      [v18 deselectRowAtIndexPath:v19.super.isa animated:1];

      goto LABEL_15;
    }

    goto LABEL_52;
  }

  v20 = [v2 tableView];
  if (!v20)
  {
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  v21 = v20;

  v22 = IndexPath._bridgeToObjectiveC()().super.isa;
  v23 = [v21 cellForRowAtIndexPath:v22];

  v24 = sub_10005D2A8();
  v25 = v23;
  v26 = static os_log_type_t.info.getter();
  v27 = [objc_opt_self() appHandle];
  if (!v27)
  {
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  v28 = v27;
  os_log(_:dso:log:_:_:)(v26, &_mh_execute_header, v27, "Did tap Add Attachments. (using sheet)", 38, 2, _swiftEmptyArrayStorage);

  v29 = [objc_opt_self() mainBundle];
  v70._object = 0xE000000000000000;
  v30._countAndFlagsBits = 0x415454415F444441;
  v30._object = 0xEE00544E454D4843;
  v31.value._countAndFlagsBits = 0x74536E6F6D6D6F43;
  v31.value._object = 0xED000073676E6972;
  v32._countAndFlagsBits = 0x6174744120646441;
  v32._object = 0xEE00746E656D6863;
  v70._countAndFlagsBits = 0;
  v33 = NSLocalizedString(_:tableName:bundle:value:comment:)(v30, v31, v29, v32, v70);

  sub_10004D740(v2);
  v35 = v34;
  v37 = objc_allocWithZone(type metadata accessor for FBAActionSheetController(0, v36));
  v38 = sub_100069D74(v33._countAndFlagsBits, v33._object, 0, 0, v35);
  v39 = [v2 tableView];
  if (!v39)
  {
LABEL_51:
    __break(1u);
LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  v40 = v39;
  v41 = IndexPath._bridgeToObjectiveC()().super.isa;
  [v40 deselectRowAtIndexPath:v41 animated:1];

  if (v25)
  {
    v42 = v25;
    v43 = [v38 popoverPresentationController];
    if (v43)
    {
      v44 = v43;
      [v42 bounds];
      [v44 setSourceRect:?];
      [v44 setSourceView:v42];
      [v44 setPermittedArrowDirections:2];

      v24 = v44;
    }
  }

  else
  {
    v42 = v24;
  }

  v45 = [v38 popoverPresentationController];
  if (v45)
  {
    v46 = v45;
    [v45 setPermittedArrowDirections:3];
  }

  [v2 presentViewController:v38 animated:1 completion:0];
}

void sub_1000681EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = objc_allocWithZone(FBADevicePickingNavigationController);
  sub_1000497E4(0, &qword_1001098C8, FBKGroupedDevice_ptr);
  sub_10005327C();
  isa = Set._bridgeToObjectiveC()().super.isa;
  v11[4] = a2;
  v11[5] = a3;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 1107296256;
  v11[2] = sub_100087F70;
  v11[3] = &unk_1000E1088;
  v8 = _Block_copy(v11);

  v9 = [v6 initWithDeviceChoices:isa allowsMultipleSelection:1 completion:v8];

  _Block_release(v8);

  if (v9)
  {
    v10 = v9;
    sub_100088000(v10, v3);
  }

  else
  {
    __break(1u);
  }
}

void sub_100068320(_BYTE *a1, void *a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a2;
  v5 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v6 = swift_allocObject();
  *(v6 + 2) = v5;
  *(v6 + 3) = sub_10006894C;
  *(v6 + 4) = v4;
  if (*&a1[OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController_followup])
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v8 = Strong;
      v9 = *(Strong + OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController_followup);
      _Block_copy(a2);

      if (!v9)
      {
        v11 = static os_log_type_t.error.getter();
        v12 = *&v8[OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController_log];
        os_log(_:dso:log:_:_:)(v11, &_mh_execute_header, v12, "Failed to create followup. Cannot create device devices controller", 66, 2, _swiftEmptyArrayStorage);
      }

      sub_1000644F8(v10);
      v13 = a2[2];
      v14 = *&v8[OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController_devicesController];
      v13(a2, v14);
    }

    else
    {
      _Block_copy(a2);
    }

LABEL_9:

    return;
  }

  if (a1[OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController_isCreatingFollowup])
  {
    _Block_copy(a2);

    v15 = static os_log_type_t.default.getter();
    os_log(_:dso:log:_:_:)(v15, &_mh_execute_header, *&a1[OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController_log], "Potential followup creation race condition detected.", 52, 2, _swiftEmptyArrayStorage);
    v16 = &a1[OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController_createFollowupSavedHandler];
    v17 = *&a1[OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController_createFollowupSavedHandler];
    v18 = *&a1[OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController_createFollowupSavedHandler + 8];
    *v16 = sub_1000689A0;
    v16[1] = v6;
    sub_10004BA44(v17, v18);

    goto LABEL_9;
  }

  if (a1[OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController_isUnsolicited] == 1)
  {
    a1[OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController_isCreatingFollowup] = 1;
    v19 = objc_opt_self();
    _Block_copy(a2);

    v20 = [v19 sharedInstance];
    v21 = *&a1[OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController_contentItem];
    if (v21)
    {
      v22 = v20;
      v23 = swift_allocObject();
      v23[2] = a1;
      v23[3] = sub_1000689A0;
      v23[4] = v6;
      aBlock[4] = sub_1000689B0;
      aBlock[5] = v23;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1000565DC;
      aBlock[3] = &unk_1000E1038;
      v24 = _Block_copy(aBlock);
      v25 = v21;
      v26 = a1;

      [v22 createUnsolicitedFeedbackFollowupForItem:v25 completion:v24];

      _Block_release(v24);

      return;
    }

    _Block_release(a2);
    __break(1u);
  }

  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void sub_10006874C()
{
  v1 = sub_100063AC4();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    __break(1u);
    goto LABEL_9;
  }

  v3 = Strong;

  v4 = v3[OBJC_IVAR____TtC18Feedback_Assistant20FBAExpandingTextView_isEditing];
  if (v4 != 1)
  {
    return;
  }

  v5 = *(v0 + OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController____lazy_storage___cachedCommentsCell);
  v7 = swift_unknownObjectWeakLoadStrong();
  if (!v7)
  {
LABEL_9:
    __break(1u);
    return;
  }

  v6 = v5;
  [v7 resignFirstResponder];
}

void sub_100068824()
{
  v1 = static os_log_type_t.info.getter();
  os_log(_:dso:log:_:_:)(v1, &_mh_execute_header, *(v0 + OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController_log), "Interactive dismiss was attempted, cancelling.", 46, 2, _swiftEmptyArrayStorage);
  v2 = sub_100063AC4();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    __break(1u);
    goto LABEL_9;
  }

  v4 = Strong;

  v5 = v4[OBJC_IVAR____TtC18Feedback_Assistant20FBAExpandingTextView_isEditing];
  if (v5 == 1)
  {
    v7 = *(v0 + OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController____lazy_storage___cachedCommentsCell);
    v8 = swift_unknownObjectWeakLoadStrong();
    if (v8)
    {
      v9 = v8;
      v10 = v7;
      [v9 resignFirstResponder];

      goto LABEL_5;
    }

LABEL_9:
    __break(1u);
    return;
  }

LABEL_5:

  sub_10005F8DC(v6);
}

uint64_t sub_100068914()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100068960()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100068A18()
{
  swift_unknownObjectUnownedDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100068A58()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100068AC0()
{
  if (*(v0 + 40))
  {
  }

  return _swift_deallocObject(v0, 56, 7);
}

void sub_100068B08()
{
  v1 = *(v0 + 16);
  if (__OFADD__(v1, 1))
  {
    __break(1u);
  }

  else
  {
    sub_10006256C(*(v0 + 32), 0, 0, v1 + 1, *(v0 + 40), *(v0 + 48));
  }
}

uint64_t sub_100068B4C(uint64_t *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)() & 1;
  }
}

uint64_t sub_100068BA4()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100068C00(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_100068C18()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100068C60(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = static os_log_type_t.default.getter();

  return os_log(_:dso:log:_:_:)(v3, &_mh_execute_header, v2, "Closed Followup Response View", 29, 2, _swiftEmptyArrayStorage);
}

uint64_t sub_100068CDC()
{

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100068D58(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = static os_log_type_t.default.getter();
  os_log(_:dso:log:_:_:)(v4, &_mh_execute_header, *(v2 + OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController_log), "User tried to submit FFU without files and went back to draft", 61, 2, _swiftEmptyArrayStorage);
  return v3(1);
}

uint64_t sub_100068DC4(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = static os_log_type_t.default.getter();
  v4 = *(v2 + OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController_log);

  return os_log(_:dso:log:_:_:)(v3, &_mh_execute_header, v4, "User tried to submit FFU without files and went back to draft", 61, 2, _swiftEmptyArrayStorage);
}

uint64_t sub_100068E24()
{

  return _swift_deallocObject(v0, 25, 7);
}

uint64_t sub_100068E68()
{

  return _swift_deallocObject(v0, 40, 7);
}

void sub_100068EA8()
{
  v1 = *(v0 + 24);
  *(*(v0 + 16) + OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController_isSubmitting) = 1;
  sub_10005CDE4();
  sub_10005E994(v1);
}

uint64_t sub_100068EF4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100069250(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);

  v3 = swift_unknownObjectRetain();
  v2(v3);

  return swift_unknownObjectRelease();
}

id sub_1000694DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6)
{
  v7 = OBJC_IVAR____TtC18Feedback_Assistant23FBAActionMenuController_actions;
  *&v6[OBJC_IVAR____TtC18Feedback_Assistant23FBAActionMenuController_actions] = _swiftEmptyArrayStorage;
  v8 = &v6[OBJC_IVAR____TtC18Feedback_Assistant23FBAActionMenuController_title];
  *v8 = 0;
  *(v8 + 1) = 0;
  v9 = &v6[OBJC_IVAR____TtC18Feedback_Assistant23FBAActionMenuController_subtitle];
  *v8 = a1;
  *(v8 + 1) = a2;
  *v9 = a3;
  *(v9 + 1) = a4;
  if (a5)
  {
    swift_beginAccess();
    *&v6[v7] = a5;
  }

  v12.receiver = v6;
  v12.super_class = type metadata accessor for FBAActionMenuController(a1, a2);
  return objc_msgSendSuper2(&v12, "init");
}

uint64_t sub_100069598(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v12 = type metadata accessor for FBAActionControllerAction(a1, a2);
  v13 = objc_allocWithZone(v12);
  v14 = OBJC_IVAR____TtC18Feedback_Assistant25FBAActionControllerAction_image;
  *&v13[OBJC_IVAR____TtC18Feedback_Assistant25FBAActionControllerAction_image] = 0;
  v13[OBJC_IVAR____TtC18Feedback_Assistant25FBAActionControllerAction_destructive] = 0;
  v15 = &v13[OBJC_IVAR____TtC18Feedback_Assistant25FBAActionControllerAction_title];
  *v15 = a1;
  v15[1] = a2;
  *&v13[v14] = a3;
  v16 = &v13[OBJC_IVAR____TtC18Feedback_Assistant25FBAActionControllerAction_actionHandler];
  *v16 = a4;
  v16[1] = a5;
  v20.receiver = v13;
  v20.super_class = v12;

  v17 = a3;

  objc_msgSendSuper2(&v20, "init");
  v18 = OBJC_IVAR____TtC18Feedback_Assistant23FBAActionMenuController_actions;
  swift_beginAccess();
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((*(v6 + v18) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v6 + v18) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  return swift_endAccess();
}

Class sub_100069874()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC18Feedback_Assistant23FBAActionMenuController_title + 8];
  if (v2)
  {
    v3 = *&v0[OBJC_IVAR____TtC18Feedback_Assistant23FBAActionMenuController_title];

    v4._countAndFlagsBits = v3;
    v4._object = v2;
    String.append(_:)(v4);
  }

  v5 = *&v0[OBJC_IVAR____TtC18Feedback_Assistant23FBAActionMenuController_subtitle + 8];
  if (v5)
  {
    v6 = *&v0[OBJC_IVAR____TtC18Feedback_Assistant23FBAActionMenuController_subtitle];

    v7._countAndFlagsBits = 10;
    v7._object = 0xE100000000000000;
    String.append(_:)(v7);
    v8._countAndFlagsBits = v6;
    v8._object = v5;
    String.append(_:)(v8);
  }

  v9 = OBJC_IVAR____TtC18Feedback_Assistant23FBAActionMenuController_actions;
  swift_beginAccess();
  v10 = *&v0[v9];
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

    result = specialized ContiguousArray.reserveCapacity(_:)();
    if (v11 < 0)
    {
      __break(1u);
      return result;
    }

    v13 = 0;
    v26 = v10 & 0xC000000000000001;
    sub_1000497E4(0, &qword_10010A250, UIAction_ptr);
    v14 = v10;
    v15 = v11;
    do
    {
      if (v26)
      {
        v16 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v16 = *(v10 + 8 * v13 + 32);
      }

      v17 = v16;
      v18 = *&v16[OBJC_IVAR____TtC18Feedback_Assistant25FBAActionControllerAction_image];
      if (v16[OBJC_IVAR____TtC18Feedback_Assistant25FBAActionControllerAction_destructive])
      {
        v19 = 2;
      }

      else
      {
        v19 = 0;
      }

      ++v13;
      v20 = swift_allocObject();
      *(v20 + 16) = v17;
      *(v20 + 24) = v1;
      v21 = v18;
      v22 = v1;

      children._rawValue = v19;
      UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v10 = v14;
    }

    while (v15 != v13);
  }

  if (_swiftEmptyArrayStorage >> 62)
  {
    sub_1000497E4(0, &qword_10010A258, UIMenuElement_ptr);

    preferredElementSize = _bridgeCocoaArray<A>(_:)();
  }

  else
  {

    dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
    sub_1000497E4(0, &qword_10010A258, UIMenuElement_ptr);
    preferredElementSize = _swiftEmptyArrayStorage;
  }

  sub_1000497E4(0, &qword_10010A260, UIMenu_ptr);
  v24._countAndFlagsBits = 0;
  v24._object = 0xE000000000000000;
  v27.value.super.isa = 0;
  v27.is_nil = 0;
  return UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v24, 0, v27, 1, 0xFFFFFFFFFFFFFFFFLL, preferredElementSize, children).super.super.isa;
}

char *sub_100069D74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v12 = objc_allocWithZone(type metadata accessor for _FBAActionSheetController(a1, a2));
  v13 = sub_10006A384(a1, a2, a3, a4, a5);
  v14 = [v6 initWithRootViewController:v13];
  v15 = *&v14[OBJC_IVAR____TtC18Feedback_Assistant24FBAActionSheetController_actionSheetController];
  *&v14[OBJC_IVAR____TtC18Feedback_Assistant24FBAActionSheetController_actionSheetController] = v13;
  v16 = v14;
  v17 = v13;

  [v16 setModalPresentationStyle:7];
  v18 = [v16 presentationController];

  if (v18)
  {
    v19 = v16;
    [v18 setDelegate:v19];
  }

  return v16;
}

void sub_100069E98(uint64_t a1, uint64_t a2)
{
  v5.receiver = v2;
  v5.super_class = type metadata accessor for FBAActionSheetController(a1, a2);
  objc_msgSendSuper2(&v5, "viewDidLoad");
  v3 = [v2 traitCollection];
  v4 = [v3 preferredContentSizeCategory];

  [v2 setDetentBehavior:UIContentSizeCategory.isAccessibilityCategory.getter() & 1];
}

char *sub_10006A384(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = [v5 initWithStyle:2];
  if (a5)
  {
    v12 = OBJC_IVAR____TtC18Feedback_Assistant25_FBAActionSheetController_actions;
    swift_beginAccess();
    *&v11[v12] = a5;
  }

  v13 = &v11[OBJC_IVAR____TtC18Feedback_Assistant25_FBAActionSheetController_headerTitle];
  *v13 = a1;
  *(v13 + 1) = a2;

  v14 = &v11[OBJC_IVAR____TtC18Feedback_Assistant25_FBAActionSheetController_headerSubtitle];
  *v14 = a3;
  *(v14 + 1) = a4;

  result = [v11 tableView];
  if (!result)
  {
    __break(1u);
    goto LABEL_10;
  }

  v16 = result;
  v17 = String._bridgeToObjectiveC()();
  v18 = [objc_opt_self() nibWithNibName:v17 bundle:0];

  v19 = String._bridgeToObjectiveC()();
  [v16 registerNib:v18 forCellReuseIdentifier:v19];

  result = [v11 tableView];
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v20 = result;
  v21 = [objc_opt_self() systemBackgroundColor];
  [v20 setBackgroundColor:v21];

  result = [v11 tableView];
  if (!result)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v22 = result;
  [result setRowHeight:UITableViewAutomaticDimension];

  result = [v11 tableView];
  if (!result)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v23 = result;
  [result setEstimatedRowHeight:60.0];

  result = [v11 tableView];
  if (result)
  {
    v24 = result;

    [v24 reloadData];

    return v11;
  }

LABEL_13:
  __break(1u);
  return result;
}

uint64_t sub_10006A65C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v8 = a4;
  if (a3)
  {
    a1 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = a1;
    v10 = a2;
    if (v8)
    {
      goto LABEL_3;
    }

LABEL_6:
    v11 = 0;
    if (a5)
    {
      goto LABEL_4;
    }

LABEL_7:
    v12 = 0;
    return a6(v9, v10, v8, v11, v12);
  }

  v9 = 0;
  v10 = 0;
  if (!a4)
  {
    goto LABEL_6;
  }

LABEL_3:
  a1 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = a1;
  v11 = a2;
  if (!a5)
  {
    goto LABEL_7;
  }

LABEL_4:
  type metadata accessor for FBAActionControllerAction(a1, a2);
  v12 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  return a6(v9, v10, v8, v11, v12);
}

id sub_10006A714(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for _FBAActionSheetController(a1, a2);
  v8.receiver = v2;
  v8.super_class = v3;
  objc_msgSendSuper2(&v8, "viewDidLoad");
  result = [v2 tableView];
  if (result)
  {
    v5 = result;
    [result setShowsVerticalScrollIndicator:0];

    v6 = OBJC_IVAR____TtC18Feedback_Assistant25_FBAActionSheetController_actions;
    swift_beginAccess();
    if (*&v2[v6] >> 62)
    {
      _CocoaArrayWrapper.endIndex.getter();
    }

    v7.receiver = v2;
    v7.super_class = v3;
    objc_msgSendSuper2(&v7, "preferredContentSize");
    return [v2 setPreferredContentSize:?];
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_10006A8D4(uint64_t a1, uint64_t a2)
{
  v3 = a1;
  v16.receiver = v2;
  v16.super_class = type metadata accessor for _FBAActionSheetController(a1, a2);
  objc_msgSendSuper2(&v16, "viewWillAppear:", v3 & 1);
  if (*&v2[OBJC_IVAR____TtC18Feedback_Assistant25_FBAActionSheetController_headerSubtitle + 8])
  {
    v4 = objc_allocWithZone(UIStackView);

    v5 = [v4 init];
    [v5 setAxis:1];
    [v5 setSpacing:1.0];
    v6 = [objc_allocWithZone(UILabel) init];
    v7 = objc_opt_self();
    v8 = [v7 systemFontOfSize:16.0 weight:UIFontWeightSemibold];
    [v6 setFont:v8];

    if (*&v2[OBJC_IVAR____TtC18Feedback_Assistant25_FBAActionSheetController_headerTitle + 8])
    {

      v9 = String._bridgeToObjectiveC()();
    }

    else
    {
      v9 = 0;
    }

    [v6 setText:v9];

    [v6 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v5 addArrangedSubview:v6];
    v12 = [objc_allocWithZone(UILabel) init];
    v13 = [v7 systemFontOfSize:14.0 weight:UIFontWeightRegular];
    [v12 setFont:v13];

    v14 = [objc_opt_self() secondaryLabelColor];
    [v12 setTextColor:v14];

    v15 = String._bridgeToObjectiveC()();

    [v12 setText:v15];

    [v12 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v5 addArrangedSubview:v12];
    v10 = [v2 navigationItem];
    v11 = [objc_allocWithZone(UIBarButtonItem) initWithCustomView:v5];
    [v10 setLeftBarButtonItem:v11];
  }

  else
  {
    v10 = [v2 navigationItem];
    if (*&v2[OBJC_IVAR____TtC18Feedback_Assistant25_FBAActionSheetController_headerTitle + 8])
    {

      v11 = String._bridgeToObjectiveC()();
    }

    else
    {
      v11 = 0;
    }

    [v10 setTitle:v11];
  }
}

id sub_10006ADBC(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC18Feedback_Assistant25_FBAActionSheetController_actions;
  swift_beginAccess();
  v5 = a1;
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((*(v2 + v4) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v2 + v4) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  swift_endAccess();
  result = [v2 tableView];
  if (result)
  {
    v7 = result;
    [result reloadData];

    v9 = *(v2 + v4);
    if (v9 >> 62)
    {
      v10 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v11.receiver = v2;
    v11.super_class = type metadata accessor for _FBAActionSheetController(v10, v8);
    objc_msgSendSuper2(&v11, "preferredContentSize");
    return [v2 setPreferredContentSize:?];
  }

  else
  {
    __break(1u);
  }

  return result;
}

char *sub_10006B118(void *a1)
{
  v2 = v1;
  v4 = String._bridgeToObjectiveC()();
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  v6 = [a1 dequeueReusableCellWithIdentifier:v4 forIndexPath:isa];

  type metadata accessor for FBAActionSheetCell(v7, v8);
  v9 = swift_dynamicCastClassUnconditional();
  v10 = IndexPath.section.getter();
  v11 = OBJC_IVAR____TtC18Feedback_Assistant25_FBAActionSheetController_actions;
  result = swift_beginAccess();
  v13 = *(v2 + v11);
  if ((v13 & 0xC000000000000001) != 0)
  {

    v14 = specialized _ArrayBuffer._getElementSlowPath(_:)();

    goto LABEL_5;
  }

  if ((v10 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_16;
  }

  if (v10 >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_16:
    __break(1u);
    return result;
  }

  v14 = *(v13 + 8 * v10 + 32);
LABEL_5:
  v15 = v6;
  [v9 setSelectionStyle:2];
  v16 = OBJC_IVAR____TtC18Feedback_Assistant18FBAActionSheetCell_actionTitleLabel;
  v17 = *&v9[OBJC_IVAR____TtC18Feedback_Assistant18FBAActionSheetCell_actionTitleLabel];
  if (v17)
  {
    v18 = v17;

    v19 = String._bridgeToObjectiveC()();

    [v18 setText:v19];
  }

  v20 = OBJC_IVAR____TtC18Feedback_Assistant18FBAActionSheetCell_actionImageView;
  v21 = *&v9[OBJC_IVAR____TtC18Feedback_Assistant18FBAActionSheetCell_actionImageView];
  if (v21)
  {
    [v21 setImage:*&v14[OBJC_IVAR____TtC18Feedback_Assistant25FBAActionControllerAction_image]];
  }

  v22 = objc_allocWithZone(UIColor);
  aBlock[4] = sub_100048F64;
  aBlock[5] = 0;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10006BBE8;
  aBlock[3] = &unk_1000E15B0;
  v23 = _Block_copy(aBlock);
  v24 = [v22 initWithDynamicProvider:v23];
  _Block_release(v23);

  v25 = *&v9[v16];
  if (v25)
  {
    [v25 setTextColor:v24];
  }

  v26 = *&v9[v20];
  if (v26)
  {
    [v26 setTintColor:v24];
  }

  v27 = UIAccessibilityTraitButton;
  v28 = v15;
  [v9 setAccessibilityTraits:v27];

  return v9;
}

id sub_10006B5B4(uint64_t a1, uint64_t a2, void *a3)
{
  *&v3[OBJC_IVAR____TtC18Feedback_Assistant25_FBAActionSheetController_actions] = _swiftEmptyArrayStorage;
  v5 = &v3[OBJC_IVAR____TtC18Feedback_Assistant25_FBAActionSheetController_headerTitle];
  *v5 = 0;
  v5[1] = 0;
  v6 = &v3[OBJC_IVAR____TtC18Feedback_Assistant25_FBAActionSheetController_headerSubtitle];
  *v6 = 0;
  v6[1] = 0;
  v3[OBJC_IVAR____TtC18Feedback_Assistant25_FBAActionSheetController_dismissesOnAction] = 0;
  if (a2)
  {
    v7 = String._bridgeToObjectiveC()();
  }

  else
  {
    v7 = 0;
  }

  v10.receiver = v3;
  v10.super_class = type metadata accessor for _FBAActionSheetController(a1, a2);
  v8 = objc_msgSendSuper2(&v10, "initWithNibName:bundle:", v7, a3);

  return v8;
}

id sub_10006B6D4(void *a1, uint64_t a2)
{
  *&v2[OBJC_IVAR____TtC18Feedback_Assistant25_FBAActionSheetController_actions] = _swiftEmptyArrayStorage;
  v4 = &v2[OBJC_IVAR____TtC18Feedback_Assistant25_FBAActionSheetController_headerTitle];
  *v4 = 0;
  v4[1] = 0;
  v5 = &v2[OBJC_IVAR____TtC18Feedback_Assistant25_FBAActionSheetController_headerSubtitle];
  *v5 = 0;
  v5[1] = 0;
  v2[OBJC_IVAR____TtC18Feedback_Assistant25_FBAActionSheetController_dismissesOnAction] = 0;
  v8.receiver = v2;
  v8.super_class = type metadata accessor for _FBAActionSheetController(a1, a2);
  v6 = objc_msgSendSuper2(&v8, "initWithCoder:", a1);

  if (v6)
  {
  }

  return v6;
}

uint64_t sub_10006B7D8(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5)
{
}

id sub_10006BB40(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, "dealloc");
}

id sub_10006BBE8(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v5 = v3();

  return v5;
}

uint64_t sub_10006BC50(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_10006BC68()
{
  v1 = [v0 presentingViewController];
  if (v1 && (v2 = v1, v5 = [v1 traitCollection], v2, v5))
  {
    if ([v5 horizontalSizeClass] == 1 || objc_msgSend(v5, "verticalSizeClass") == 1)
    {
      v3 = [v0 navigationItem];
      v4 = [objc_allocWithZone(UIBarButtonItem) initWithBarButtonSystemItem:24 target:v0 action:"dismissSelf"];
      [v3 setRightBarButtonItem:v4];

      goto LABEL_8;
    }
  }

  else
  {
    v5 = 0;
  }

  v4 = [v0 navigationItem];
  [v4 setRightBarButtonItem:0];
LABEL_8:
}

void sub_10006BDB4()
{
  v1 = v0;
  v2 = IndexPath.section.getter();
  v3 = OBJC_IVAR____TtC18Feedback_Assistant25_FBAActionSheetController_actions;
  swift_beginAccess();
  v4 = *&v1[v3];
  if ((v4 & 0xC000000000000001) == 0)
  {
    if ((v2 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v2 < *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v5 = *(v4 + 8 * v2 + 32);

      v6 = v5;
      goto LABEL_5;
    }

    __break(1u);
    goto LABEL_12;
  }

  v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_5:
  v7 = v6;
  v8 = *&v6[OBJC_IVAR____TtC18Feedback_Assistant25FBAActionControllerAction_actionHandler];

  v9 = [v1 navigationController];
  if (!v9)
  {
LABEL_12:
    __break(1u);
    return;
  }

  v10 = v9;

  type metadata accessor for FBAActionSheetController(v11, v12);
  v13 = swift_dynamicCastClassUnconditional();
  v8(v13);

  if (v1[OBJC_IVAR____TtC18Feedback_Assistant25_FBAActionSheetController_dismissesOnAction] == 1)
  {
    [v1 dismissViewControllerAnimated:1 completion:0];
  }
}

uint64_t sub_10006BF14()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10006BF4C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10006BF8C()
{
  v1 = *(v0 + 24);
  v2 = *(*(v0 + 16) + OBJC_IVAR____TtC18Feedback_Assistant25FBAActionControllerAction_actionHandler);

  v2(v1);
}

uint64_t sub_10006C010()
{
  v1 = type metadata accessor for FBANotEnrolledView(0);
  v2 = v1 - 8;
  v3 = __chkstk_darwin(v1);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v15 - v6;
  v8 = swift_allocObject();
  *(v8 + 16) = v0;
  *&v7[*(v2 + 32)] = swift_getKeyPath();
  sub_100041AA0(&qword_100109380, &qword_1000C26B8);
  swift_storeEnumTagMultiPayload();
  *v7 = 1;
  *(v7 + 1) = sub_10006CD8C;
  *(v7 + 2) = v8;
  sub_100044C58(v7, v5);
  v9 = objc_allocWithZone(sub_100041AA0(&qword_100109690, &qword_1000C2AD8));
  v10 = v0;
  v11 = UIHostingController.init(rootView:)();
  v12 = [v10 traitCollection];
  v13 = [v12 horizontalSizeClass];

  if (v13 == 1)
  {
    [v11 setModalPresentationStyle:0];
  }

  else
  {
    [v11 setModalPresentationStyle:2];
    [v11 setModalInPresentation:1];
  }

  [v10 presentViewController:v11 animated:1 completion:0];

  return sub_10004BB30(v7);
}

void sub_10006C304(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for AgreementConsentView();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v23 - v11;
  if ([v3 isPresentingConsentView])
  {
    return;
  }

  [v3 setIsPresentingConsentView:1];
  v13 = [objc_opt_self() sharedInstance];
  v14 = [v13 pendingConsents];

  if (!v14)
  {
    return;
  }

  sub_1000497E4(0, &qword_10010A270, FBKSPendingConsent_ptr);
  v15 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v15 >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_5;
    }

LABEL_11:

    return;
  }

  if (!*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_11;
  }

LABEL_5:
  if ((v15 & 0xC000000000000001) != 0)
  {
    v16 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return;
    }

    v16 = *(v15 + 32);
  }

  v17 = v16;

  v18 = swift_allocObject();
  v18[2] = v3;
  v18[3] = v17;
  v18[4] = a1;
  v18[5] = a2;
  v19 = v17;
  v20 = v3;
  sub_10004374C(a1, a2);
  AgreementConsentView.init(consent:completion:)();
  (*(v7 + 16))(v10, v12, v6);
  v21 = objc_allocWithZone(sub_100041AA0(&qword_10010A268, &qword_1000C3178));
  v22 = UIHostingController.init(rootView:)();
  [v22 setModalPresentationStyle:2];
  [v22 setModalInPresentation:1];
  [v20 presentViewController:v22 animated:1 completion:0];

  (*(v7 + 8))(v12, v6);
}

void sub_10006C628(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = type metadata accessor for AgreementConsentView.ConsentResult();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = aBlock - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  [a2 setIsPresentingConsentView:0];
  v13 = [objc_opt_self() sharedInstance];
  (*(v10 + 104))(v12, enum case for AgreementConsentView.ConsentResult.accepted(_:), v9);
  v14 = static AgreementConsentView.ConsentResult.== infix(_:_:)();
  (*(v10 + 8))(v12, v9);
  v15 = swift_allocObject();
  *(v15 + 16) = a4;
  *(v15 + 24) = a5;
  aBlock[4] = sub_10006CC6C;
  aBlock[5] = v15;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100088474;
  aBlock[3] = &unk_1000E1768;
  v16 = _Block_copy(aBlock);
  sub_10004374C(a4, a5);

  [v13 recordConsentResponseForConsent:a3 response:v14 & 1 completion:v16];
  _Block_release(v16);
}

uint64_t sub_10006C834(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for DispatchQoS();
  v8 = *(v16 - 8);
  __chkstk_darwin(v16);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000497E4(0, &qword_100109970, OS_dispatch_queue_ptr);
  v11 = static OS_dispatch_queue.main.getter();
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = a2;
  aBlock[4] = sub_10006CCCC;
  aBlock[5] = v12;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100088474;
  aBlock[3] = &unk_1000E17B8;
  v13 = _Block_copy(aBlock);
  sub_10004374C(a1, a2);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_10006CCFC();
  sub_100041AA0(&unk_100109980, &qword_1000C1B50);
  sub_100041AE8();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v13);

  (*(v5 + 8))(v7, v4);
  return (*(v8 + 8))(v10, v16);
}

uint64_t sub_10006CBD4()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10006CC0C()
{
  if (*(v0 + 32))
  {
  }

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10006CC74(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10006CC8C()
{
  if (*(v0 + 16))
  {
  }

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10006CCCC()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    return v1();
  }

  return result;
}

unint64_t sub_10006CCFC()
{
  result = qword_100108F80;
  if (!qword_100108F80)
  {
    type metadata accessor for DispatchWorkItemFlags();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100108F80);
  }

  return result;
}

uint64_t sub_10006CD54()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10006CDE4(uint64_t a1)
{
  v2 = type metadata accessor for ColorScheme();
  __chkstk_darwin(v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return EnvironmentValues.colorScheme.setter();
}

void sub_10006CF04(uint64_t a1, uint64_t a2)
{
  v18.receiver = v2;
  v18.super_class = type metadata accessor for FBAFFUDisplayTextViewController(a1, a2);
  objc_msgSendSuper2(&v18, "viewDidLoad");
  v3 = [v2 navigationItem];
  [v3 setLargeTitleDisplayMode:2];

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;

    v6 = String._bridgeToObjectiveC()();

    [v5 setText:v6];

    v7 = [v2 navigationItem];
    v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = v9;
    v11 = [objc_opt_self() mainBundle];
    v19._object = 0xE000000000000000;
    v12._object = 0x80000001000CCEB0;
    v12._countAndFlagsBits = 0xD00000000000001BLL;
    v13.value._countAndFlagsBits = v8;
    v13.value._object = v10;
    v14._countAndFlagsBits = 0;
    v14._object = 0xE000000000000000;
    v19._countAndFlagsBits = 0;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v12, v13, v11, v14, v19);

    v15 = String._bridgeToObjectiveC()();

    [v7 setTitle:v15];

    v16 = [objc_allocWithZone(UIBarButtonItem) initWithBarButtonSystemItem:0 target:v2 action:"didTapDone"];
    v17 = [v2 navigationItem];
    [v17 setRightBarButtonItem:v16];
  }

  else
  {
    __break(1u);
  }
}

id sub_10006D314(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for FBAFFUDisplayTextViewController(a1, a2);
  return objc_msgSendSuper2(&v4, "dealloc");
}

uint64_t FBKFilerFormType.description.getter(uint64_t a1)
{
  v1 = 1414743380;
  v2 = 5588550;
  if (a1 != 1)
  {
    v2 = 0;
  }

  if (a1 != 2)
  {
    v1 = v2;
  }

  if (a1)
  {
    return v1;
  }

  else
  {
    return 21062;
  }
}

uint64_t sub_10006D408()
{
  v1 = *v0;
  v2 = 1414743380;
  v3 = 5588550;
  if (*v0 != 1)
  {
    v3 = 0;
  }

  if (v1 != 2)
  {
    v2 = v3;
  }

  if (v1)
  {
    return v2;
  }

  else
  {
    return 21062;
  }
}

uint64_t sub_10006D458()
{
  v0 = type metadata accessor for Logger();
  sub_100046848(v0, qword_10010A2B0);
  sub_1000466AC(v0, qword_10010A2B0);
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  return Logger.init(subsystem:category:)();
}

uint64_t sub_10006D4D0@<X0>(uint64_t a1@<X8>)
{
  v33 = a1;
  v1 = type metadata accessor for Date();
  v31 = *(v1 - 8);
  v32 = v1;
  __chkstk_darwin(v1);
  v3 = &v30 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Calendar();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100041AA0(&qword_10010A2F0, &unk_1000C3260);
  __chkstk_darwin(v8 - 8);
  v10 = &v30 - v9;
  v11 = sub_100041AA0(&qword_10010A310, &qword_1000C3280);
  __chkstk_darwin(v11 - 8);
  v13 = &v30 - v12;
  v14 = sub_100041AA0(&qword_10010A318, qword_1000C3288);
  __chkstk_darwin(v14 - 8);
  v16 = &v30 - v15;
  v30 = type metadata accessor for DateComponents();
  v17 = *(v30 - 8);
  __chkstk_darwin(v30);
  v19 = &v30 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 56))(v16, 1, 1, v4);
  v20 = type metadata accessor for TimeZone();
  (*(*(v20 - 8) + 56))(v13, 1, 1, v20);
  v21 = v31;
  DateComponents.init(calendar:timeZone:era:year:month:day:hour:minute:second:nanosecond:weekday:weekdayOrdinal:quarter:weekOfMonth:weekOfYear:yearForWeekOfYear:)();
  DateComponents.day.setter();
  v22 = [objc_opt_self() currentCalendar];
  static Calendar._unconditionallyBridgeFromObjectiveC(_:)();

  Date.init()();
  Calendar.date(byAdding:to:wrappingComponents:)();
  v23 = v32;
  (*(v21 + 8))(v3, v32);
  (*(v5 + 8))(v7, v4);
  if ((*(v21 + 48))(v10, 1, v23) == 1)
  {
    v24 = v30;
    sub_1000454C8(v10, &qword_10010A2F0, &unk_1000C3260);
    if (qword_100108DF0 != -1)
    {
      swift_once();
    }

    v25 = type metadata accessor for Logger();
    sub_1000466AC(v25, qword_10010A2B0);
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&_mh_execute_header, v26, v27, "Could not build date object for draft directories cleanup", v28, 2u);
    }

    static Date.distantFuture.getter();
    return (*(v17 + 8))(v19, v24);
  }

  else
  {
    (*(v17 + 8))(v19, v30);
    return (*(v21 + 32))(v33, v10, v23);
  }
}

uint64_t sub_10006DA44()
{
  v0 = type metadata accessor for DispatchWorkItemFlags();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v16 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for DispatchQoS();
  v4 = *(v17 - 8);
  __chkstk_darwin(v17);
  v6 = v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS.QoSClass();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100041A4C(0, v11);
  (*(v8 + 104))(v10, enum case for DispatchQoS.QoSClass.background(_:), v7);
  v12 = static OS_dispatch_queue.global(qos:)();
  (*(v8 + 8))(v10, v7);
  v13 = swift_allocObject();
  *(v13 + 16) = v16[1];
  aBlock[4] = sub_10006FC4C;
  aBlock[5] = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100088474;
  aBlock[3] = &unk_1000E1830;
  v14 = _Block_copy(aBlock);
  static DispatchQoS.unspecified.getter();
  v18 = _swiftEmptyArrayStorage;
  sub_10006FC6C(&qword_100108F80, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100041AA0(&unk_100109980, &qword_1000C1B50);
  sub_100041AE8();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v14);

  (*(v1 + 8))(v3, v0);
  (*(v4 + 8))(v6, v17);
}

void sub_10006DDB0()
{
  v0 = type metadata accessor for URL();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v6 = &v30 - v5;
  v31 = type metadata accessor for Date();
  v7 = *(v31 - 8);
  v8 = __chkstk_darwin(v31);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v30 - v11;
  if (qword_100108DF0 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  v30 = sub_1000466AC(v13, qword_10010A2B0);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&_mh_execute_header, v14, v15, "Did start draft cleanup", v16, 2u);
  }

  sub_10006D4D0(v12);
  v17 = objc_opt_self();
  v18 = [v17 draftDirectoryForFilerType:0];
  if (!v18)
  {
    __break(1u);
    goto LABEL_11;
  }

  v19 = v18;
  static URL._unconditionallyBridgeFromObjectiveC(_:)();

  sub_10006E400(v12, 0, v6);
  v20 = *(v1 + 8);
  v20(v6, v0);
  v21 = v0;
  v22 = *(v7 + 8);
  v23 = v12;
  v24 = v31;
  v22(v23, v31);
  sub_10006D4D0(v10);
  v25 = [v17 draftDirectoryForFilerType:1];
  if (!v25)
  {
LABEL_11:
    __break(1u);
    return;
  }

  v26 = v25;
  static URL._unconditionallyBridgeFromObjectiveC(_:)();

  sub_10006E400(v10, 1, v4);
  v20(v4, v21);
  v22(v10, v24);
  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    *v29 = 0;
    _os_log_impl(&_mh_execute_header, v27, v28, "Did start draft cleanup", v29, 2u);
  }
}

id sub_10006E354(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for FBADraftDirectoriesCleanUp(a1, a2);
  return objc_msgSendSuper2(&v4, "dealloc");
}

void *sub_10006E3B0(void *__src, uint64_t a2, void *__dst)
{
  if (__dst)
  {
    if (__src)
    {
      return memmove(__dst, __src, a2 - __src);
    }
  }

  return __src;
}

uint64_t sub_10006E3D0@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

void sub_10006E400(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v170 = a2;
  v160 = a1;
  v169 = type metadata accessor for Date();
  v4 = *(v169 - 8);
  v5 = __chkstk_darwin(v169);
  v159 = &v140 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v178 = &v140 - v7;
  v8 = sub_100041AA0(&qword_10010A2F0, &unk_1000C3260);
  v9 = __chkstk_darwin(v8 - 8);
  v162 = &v140 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v164 = &v140 - v12;
  __chkstk_darwin(v11);
  v165 = &v140 - v13;
  v161 = type metadata accessor for URLResourceValues();
  v180 = *(v161 - 8);
  __chkstk_darwin(v161);
  v172 = &v140 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_100041AA0(&qword_100109790, &unk_1000C29E0);
  __chkstk_darwin(v15 - 8);
  v17 = &v140 - v16;
  v179 = type metadata accessor for URL();
  v18 = *(v179 - 8);
  v19 = __chkstk_darwin(v179);
  v171 = &v140 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __chkstk_darwin(v19);
  v23 = &v140 - v22;
  v24 = __chkstk_darwin(v21);
  v158 = &v140 - v25;
  __chkstk_darwin(v24);
  v175 = &v140 - v26;
  v27 = type metadata accessor for NSFastEnumerationIterator();
  v173 = *(v27 - 8);
  __chkstk_darwin(v27);
  v29 = &v140 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = [objc_opt_self() defaultManager];
  sub_100041AA0(&qword_10010A2F8, &unk_1000C3270);
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_1000C2530;
  *(v31 + 32) = NSURLContentModificationDateKey;
  *(v31 + 40) = NSURLCreationDateKey;
  v32 = NSURLContentModificationDateKey;
  v33 = NSURLCreationDateKey;
  v34 = NSFileManager.enumerator(at:includingPropertiesForKeys:options:errorHandler:)();
  if (!v34)
  {

    if (qword_100108DF0 != -1)
    {
      swift_once();
    }

    v116 = type metadata accessor for Logger();
    sub_1000466AC(v116, qword_10010A2B0);
    v117 = a3;
    v118 = v179;
    (*(v18 + 16))(v23, v117, v179);
    v119 = Logger.logObject.getter();
    v120 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v119, v120))
    {
      v121 = swift_slowAlloc();
      v122 = swift_slowAlloc();
      *&v185 = v122;
      *v121 = 136315138;
      sub_10006FC6C(&qword_100109870, &type metadata accessor for URL, &protocol conformance descriptor for URL);
      v123 = dispatch thunk of CustomStringConvertible.description.getter();
      v124 = v118;
      v126 = v125;
      (*(v18 + 8))(v23, v124);
      v127 = sub_10008D954(v123, v126, &v185);

      *(v121 + 4) = v127;
      _os_log_impl(&_mh_execute_header, v119, v120, "Could not reach enumerator at url %s", v121, 0xCu);
      sub_1000466E4(v122);
    }

    else
    {

      (*(v18 + 8))(v23, v118);
    }

    return;
  }

  v174 = v31;
  v168 = v30;
  v167 = v34;
  NSEnumerator.makeIterator()();
  NSFastEnumerationIterator.next()();
  p_cache = _TtC18Feedback_Assistant26FBADevicePickerCoordinator.cache;
  if (v186)
  {
    v146 = 0;
    v37 = 0;
    v157 = 0;
    v166 = 0;
    v38 = (v18 + 56);
    v155 = (v18 + 32);
    v153 = (v4 + 48);
    v151 = (v4 + 32);
    v148 = (v4 + 56);
    v149 = (v4 + 8);
    v150 = (v180 + 8);
    v156 = (v18 + 8);
    v154 = (v18 + 16);
    v145 = (v4 + 16);
    v144 = FBKDraftDirectoriesCleanUpDryRun;
    v147 = 0x80000001000CCF30;
    *&v35 = 136315394;
    v152 = v35;
    *&v35 = 136315138;
    v176 = v35;
    v39 = v179;
    v40 = v178;
    v177 = v38;
    v163 = v27;
    while (2)
    {
      v41 = v37;
      while (1)
      {
        sub_10006FB68(&v185, &v184);
        v37 = v41 + 1;
        if (__OFADD__(v41, 1))
        {
          __break(1u);
          goto LABEL_66;
        }

        sub_100046784(&v184, &v183);
        v42 = swift_dynamicCast();
        v43 = *v38;
        if (v42)
        {
          break;
        }

        v43(v17, 1, 1, v39);
        sub_1000454C8(v17, &qword_100109790, &unk_1000C29E0);
        if (p_cache[446] != -1)
        {
          swift_once();
        }

        v44 = type metadata accessor for Logger();
        sub_1000466AC(v44, qword_10010A2B0);
        sub_100046784(&v184, &v183);
        v45 = Logger.logObject.getter();
        v46 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v45, v46))
        {
          v47 = swift_slowAlloc();
          v180 = v41 + 1;
          v48 = v17;
          v49 = p_cache;
          v50 = v29;
          v51 = v47;
          v52 = swift_slowAlloc();
          v182 = v52;
          *v51 = v176;
          sub_100046784(&v183, v181);
          v53 = String.init<A>(describing:)();
          v55 = v54;
          sub_1000466E4(&v183);
          v56 = sub_10008D954(v53, v55, &v182);

          *(v51 + 4) = v56;
          v40 = v178;
          _os_log_impl(&_mh_execute_header, v45, v46, "Failed to parse enumerated object as a URL: %s", v51, 0xCu);
          sub_1000466E4(v52);
          v39 = v179;

          v38 = v177;
          v29 = v50;
          p_cache = v49;
          v17 = v48;
          v37 = v180;
        }

        else
        {

          sub_1000466E4(&v183);
        }

        sub_1000466E4(&v184);
        NSFastEnumerationIterator.next()();
        ++v41;
        if (!v186)
        {
          v27 = v163;
          goto LABEL_49;
        }
      }

      v180 = v29;
      v43(v17, 0, 1, v39);
      (*v155)(v175, v17, v39);

      sub_10007BE90(v57);

      v58 = v166;
      URL.resourceValues(forKeys:)();
      if (v58)
      {

        v59 = v58;
      }

      else
      {
        v166 = 0;

        v60 = v164;
        URLResourceValues.contentModificationDate.getter();
        v61 = v169;
        v143 = *v153;
        if (v143(v60, 1, v169) == 1)
        {
          v62 = v165;
          URLResourceValues.creationDate.getter();
          v61 = v169;
          v63 = v143;
          v64 = v143(v60, 1, v169);
          v65 = v162;
          v66 = v63;
          v67 = v175;
          if (v64 != 1)
          {
            sub_1000454C8(v164, &qword_10010A2F0, &unk_1000C3260);
          }
        }

        else
        {
          v62 = v165;
          (*v151)(v165, v60, v61);
          (*v148)(v62, 0, 1, v61);
          v65 = v162;
          v67 = v175;
          v66 = v143;
        }

        sub_10006FB78(v62, v65);
        if (v66(v65, 1, v61) != 1)
        {
          (*v151)(v40, v65, v61);
          if ((static Date.< infix(_:_:)() & 1) == 0)
          {
            (*v149)(v40, v61);
            sub_1000454C8(v165, &qword_10010A2F0, &unk_1000C3260);
            (*v150)(v172, v161);
            (*v156)(v67, v39);
LABEL_27:
            sub_1000466E4(&v184);
            goto LABEL_28;
          }

          v86 = v158;
          if (p_cache[446] != -1)
          {
            swift_once();
          }

          v87 = type metadata accessor for Logger();
          sub_1000466AC(v87, qword_10010A2B0);
          (*v154)(v86, v175, v39);
          v88 = v159;
          v89 = v169;
          (*v145)(v159, v40, v169);
          v90 = Logger.logObject.getter();
          v91 = static os_log_type_t.info.getter();
          if (os_log_type_enabled(v90, v91))
          {
            v92 = swift_slowAlloc();
            v157 = swift_slowAlloc();
            v183 = v157;
            *v92 = v152;
            v93 = URL.path.getter();
            v94 = v86;
            v96 = v95;
            v143 = *v156;
            (v143)(v94, v179);
            v97 = sub_10008D954(v93, v96, &v183);

            *(v92 + 4) = v97;
            *(v92 + 12) = 2082;
            sub_10006FC6C(&qword_10010A308, &type metadata accessor for Date, &protocol conformance descriptor for Date);
            v98 = dispatch thunk of CustomStringConvertible.description.getter();
            v100 = v99;
            v101 = v88;
            v102 = *v149;
            (*v149)(v101, v89);
            v103 = sub_10008D954(v98, v100, &v183);

            *(v92 + 14) = v103;
            _os_log_impl(&_mh_execute_header, v90, v91, "Deleting stale draft directory: %s date: %{public}s", v92, 0x16u);
            swift_arrayDestroy();

            v39 = v179;
          }

          else
          {

            v104 = v88;
            v102 = *v149;
            (*v149)(v104, v89);
            v143 = *v156;
            (v143)(v86, v39);
          }

          v105 = v146 + 1;
          v40 = v178;
          v106 = v165;
          if (__OFADD__(v146, 1))
          {
            __break(1u);
          }

          v107 = [objc_opt_self() standardUserDefaults];
          v108 = [v107 BOOLForKey:v144];

          v157 = v105;
          if (v108)
          {
            v102(v40, v169);
            sub_1000454C8(v106, &qword_10010A2F0, &unk_1000C3260);
            (*v150)(v172, v161);
            (v143)(v175, v39);
            sub_1000466E4(&v184);
            v146 = v105;
          }

          else
          {
            v109 = v175;
            URL._bridgeToObjectiveC()(&v187);
            v111 = v110;
            v183 = 0;
            v112 = [v168 removeItemAtURL:v110 error:&v183];

            v113 = v183;
            if (!v112)
            {
              v114 = v113;
              v115 = _convertNSErrorToError(_:)();

              v59 = v115;
              swift_willThrow();
              v102(v40, v169);
              sub_1000454C8(v165, &qword_10010A2F0, &unk_1000C3260);
              (*v150)(v172, v161);
              v166 = 0;
              v146 = v157;
              goto LABEL_22;
            }

            v102(v40, v169);
            sub_1000454C8(v106, &qword_10010A2F0, &unk_1000C3260);
            (*v150)(v172, v161);
            (v143)(v109, v39);
            sub_1000466E4(&v184);
            v146 = v157;
          }

LABEL_28:
          v27 = v163;
          v29 = v180;
          NSFastEnumerationIterator.next()();
          v38 = v177;
          if (v186)
          {
            continue;
          }

          goto LABEL_49;
        }

        sub_1000454C8(v65, &qword_10010A2F0, &unk_1000C3260);
        sub_10006FBE8();
        v68 = swift_allocError();
        *v69 = 0xD000000000000011;
        v69[1] = v147;
        swift_willThrow();
        v59 = v68;
        sub_1000454C8(v62, &qword_10010A2F0, &unk_1000C3260);
        (*v150)(v172, v161);
      }

      break;
    }

    v166 = 0;
LABEL_22:
    v70 = v171;
    if (p_cache[446] != -1)
    {
      swift_once();
    }

    v71 = type metadata accessor for Logger();
    sub_1000466AC(v71, qword_10010A2B0);
    (*v154)(v70, v175, v39);
    swift_errorRetain();
    v72 = Logger.logObject.getter();
    v73 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v72, v73))
    {
      v74 = swift_slowAlloc();
      v143 = swift_slowAlloc();
      v183 = v143;
      *v74 = v152;
      sub_10006FC6C(&qword_100109870, &type metadata accessor for URL, &protocol conformance descriptor for URL);
      v142 = v73;
      v75 = dispatch thunk of CustomStringConvertible.description.getter();
      v140 = v59;
      v76 = v75;
      v78 = v77;
      v79 = *v156;
      v141 = v72;
      v79(v70, v39);
      v80 = sub_10008D954(v76, v78, &v183);

      *(v74 + 4) = v80;
      *(v74 + 12) = 2080;
      swift_getErrorValue();
      v81 = Error.localizedDescription.getter();
      v83 = sub_10008D954(v81, v82, &v183);

      *(v74 + 14) = v83;
      v84 = v141;
      _os_log_impl(&_mh_execute_header, v141, v142, "Failed to clean up draft directory: %s error: %s", v74, 0x16u);
      swift_arrayDestroy();

      v40 = v178;

      v79(v175, v39);
    }

    else
    {

      v85 = *v156;
      (*v156)(v70, v39);
      v85(v175, v39);
    }

    goto LABEL_27;
  }

  v157 = 0;
  v37 = 0;
LABEL_49:
  (*(v173 + 8))(v29, v27);

  if (p_cache[446] != -1)
  {
LABEL_66:
    swift_once();
  }

  v128 = type metadata accessor for Logger();
  sub_1000466AC(v128, qword_10010A2B0);
  v129 = Logger.logObject.getter();
  v130 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v129, v130))
  {
    v131 = swift_slowAlloc();
    v132 = swift_slowAlloc();
    *&v185 = v132;
    *v131 = 134218498;
    *(v131 + 4) = v37;
    *(v131 + 12) = 2080;
    v133 = 0xE400000000000000;
    v134 = 1414743380;
    v135 = 0xE000000000000000;
    v136 = 5588550;
    if (v170 == 1)
    {
      v135 = 0xE300000000000000;
    }

    else
    {
      v136 = 0;
    }

    if (v170 != 2)
    {
      v134 = v136;
      v133 = v135;
    }

    if (v170)
    {
      v137 = v134;
    }

    else
    {
      v137 = 21062;
    }

    if (v170)
    {
      v138 = v133;
    }

    else
    {
      v138 = 0xE200000000000000;
    }

    v139 = sub_10008D954(v137, v138, &v185);

    *(v131 + 14) = v139;
    *(v131 + 22) = 2048;
    *(v131 + 24) = v157;
    _os_log_impl(&_mh_execute_header, v129, v130, "Found [%ld] %s draft directories, deleted [%ld]", v131, 0x20u);
    sub_1000466E4(v132);
  }
}

_OWORD *sub_10006FB68(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_10006FB78(uint64_t a1, uint64_t a2)
{
  v4 = sub_100041AA0(&qword_10010A2F0, &unk_1000C3260);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_10006FBE8()
{
  result = qword_10010A300;
  if (!qword_10010A300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10010A300);
  }

  return result;
}

uint64_t sub_10006FC54(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10006FC6C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10006FCB4()
{
  sub_1000497E4(0, &qword_10010A0C0, OS_os_log_ptr);
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  result = OS_os_log.init(subsystem:category:)();
  qword_10010A320 = result;
  return result;
}

id sub_10006FD70(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for FBAAvatarHelper(a1, a2);
  return objc_msgSendSuper2(&v4, "dealloc");
}

id sub_10006FDF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;
  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = a5(v6, v8, v9, v10);

  return v11;
}

id sub_10006FECC(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v8 = [objc_allocWithZone(PRMonogram) init];
  v9 = sub_10008221C(a1, a2);
  if (v10)
  {
    String.append(_:)(*&v9);
  }

  v11 = sub_10008221C(a3, a4);
  if (v12)
  {
    String.append(_:)(*&v11);
  }

  v13 = String._bridgeToObjectiveC()();

  [v8 setText:{v13, 0, 0xE000000000000000}];

  return v8;
}

id sub_10006FFB0(uint64_t a1, uint64_t a2)
{
  v4 = [objc_allocWithZone(CNContactStore) init];
  v5 = objc_opt_self();
  v6 = String._bridgeToObjectiveC()();
  v7 = [v5 predicateForContactsMatchingEmailAddress:v6];

  sub_100041AA0(&qword_10010A0D0, &qword_1000C2CB0);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1000C2E80;
  *(v8 + 32) = CNContactThumbnailImageDataKey;
  v9 = CNContactThumbnailImageDataKey;
  sub_100041AA0(&qword_10010A358, &qword_1000C32C8);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v25 = 0;
  v11 = [v4 unifiedContactsMatchingPredicate:v7 keysToFetch:isa error:&v25];

  v12 = v25;
  if (v11)
  {
    sub_1000497E4(0, &qword_10010A360, CNContact_ptr);
    v13 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v12;

    if (v13 >> 62)
    {
      if (_CocoaArrayWrapper.endIndex.getter())
      {
        goto LABEL_4;
      }
    }

    else if (*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_4:
      if ((v13 & 0xC000000000000001) != 0)
      {
        v15 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        goto LABEL_7;
      }

      if (*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v15 = *(v13 + 32);
LABEL_7:
        v16 = v15;

        return v16;
      }

      __break(1u);
      goto LABEL_15;
    }

    goto LABEL_12;
  }

  v18 = v25;
  _convertNSErrorToError(_:)();

  swift_willThrow();
  v24 = static os_log_type_t.error.getter();
  if (qword_100108DF8 != -1)
  {
LABEL_15:
    swift_once();
  }

  v19 = qword_10010A320;
  sub_100041AA0(&unk_100109860, qword_1000C2DA0);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_1000C2530;
  *(v20 + 56) = &type metadata for String;
  v21 = sub_100047484();
  *(v20 + 64) = v21;
  *(v20 + 32) = a1;
  *(v20 + 40) = a2;
  swift_getErrorValue();

  v22 = Error.localizedDescription.getter();
  *(v20 + 96) = &type metadata for String;
  *(v20 + 104) = v21;
  *(v20 + 72) = v22;
  *(v20 + 80) = v23;
  os_log(_:dso:log:_:_:)(v24, &_mh_execute_header, v19, "Error fetching contact for %@: [%{public}@]", 43, 2, v20);

LABEL_12:

  return 0;
}

id sub_100070300(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = sub_10006FECC(a1, a2, a3, a4);
  v5 = [objc_opt_self() mainScreen];
  [v5 scale];
  v7 = v6;

  v8 = [v4 snapshotWithSize:0 scale:24.0 options:{24.0, v7}];
  if (v8)
  {
    v9 = v8;
    v10 = [v8 imageWithRenderingMode:1];

    if (v10)
    {
      goto LABEL_5;
    }
  }

  result = [objc_opt_self() systemImageNamed:FBKSystemImageNameGenericUser];
  if (result)
  {
    v10 = result;
LABEL_5:

    return v10;
  }

  __break(1u);
  return result;
}

id sub_100070404(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = sub_10006FECC(a1, a2, a3, a4);
  v5 = [v4 text];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  v6 = String.count.getter();

  if (v6 >= 1)
  {
    v7 = [objc_opt_self() mainScreen];
    [v7 scale];
    v9 = v8;

    v10 = [v4 snapshotWithSize:0 scale:40.0 options:{40.0, v9}];
    if (v10)
    {
      v11 = v10;
      v12 = [v10 imageWithRenderingMode:1];

      if (v12)
      {
        goto LABEL_6;
      }
    }
  }

  result = [objc_opt_self() systemImageNamed:FBKSystemImageNameGenericUser];
  if (result)
  {
    v12 = result;
LABEL_6:

    return v12;
  }

  __break(1u);
  return result;
}

id sub_100070554(uint64_t a1, uint64_t a2)
{
  v2 = sub_10006FFB0(a1, a2);
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = [v2 thumbnailImageData];
  if (v4)
  {
    v5 = v4;
    v6 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;

    v9 = objc_allocWithZone(UIImage);
    isa = Data._bridgeToObjectiveC()().super.isa;
    v11 = [v9 initWithData:isa];

    sub_100046730(v6, v8);
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

void sub_1000707DC(char a1)
{
  *(v1 + OBJC_IVAR____TtC18Feedback_Assistant9FBAFilter_active) = a1;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v3 = swift_unknownObjectWeakLoadStrong();
    if (v3)
    {
      v4 = v3;
      swift_getKeyPath();
      _KeyValueCodingAndObserving.willChangeValue<A>(for:)();
      v5 = swift_unknownObjectWeakLoadStrong();
      if (v5)
      {
        [v5 filterManager:v4 didToggleFilter:v1];
        swift_unknownObjectRelease();
      }

      swift_getKeyPath();
      _KeyValueCodingAndObserving.didChangeValue<A>(for:)();
    }

    else
    {
    }
  }
}

char *sub_100070980(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  *&v4[OBJC_IVAR____TtC18Feedback_Assistant9FBAFilter_image] = 0;
  v4[OBJC_IVAR____TtC18Feedback_Assistant9FBAFilter_active] = 0;
  v9 = swift_unknownObjectWeakInit();
  *&v4[OBJC_IVAR____TtC18Feedback_Assistant9FBAFilter_predicate] = a1;
  v10 = &v4[OBJC_IVAR____TtC18Feedback_Assistant9FBAFilter_title];
  *v10 = a2;
  v10[1] = a3;
  v19.receiver = v4;
  v19.super_class = type metadata accessor for FBAFilter(v9, v11);
  v12 = a1;
  v13 = objc_msgSendSuper2(&v19, "init");
  v14 = objc_opt_self();
  v15 = v13;
  v16 = [v14 systemImageNamed:{a4, v19.receiver, v19.super_class}];

  v17 = *&v15[OBJC_IVAR____TtC18Feedback_Assistant9FBAFilter_image];
  *&v15[OBJC_IVAR____TtC18Feedback_Assistant9FBAFilter_image] = v16;

  return v15;
}

void sub_100070BB0()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v2 = swift_unknownObjectWeakLoadStrong();
    if (v2)
    {
      v3 = v2;
      swift_getKeyPath();
      _KeyValueCodingAndObserving.willChangeValue<A>(for:)();
      v4 = swift_unknownObjectWeakLoadStrong();
      if (v4)
      {
        [v4 filterManager:v3 didToggleFilter:v0];
        swift_unknownObjectRelease();
      }

      swift_getKeyPath();
      _KeyValueCodingAndObserving.didChangeValue<A>(for:)();
    }

    else
    {
    }
  }
}

id sub_100070CF0(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for FBAFilter(a1, a2);
  return objc_msgSendSuper2(&v4, "dealloc");
}

id sub_100070DB8(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v9 = OBJC_IVAR____TtC18Feedback_Assistant9FBAFilter_image;
  *&v4[OBJC_IVAR____TtC18Feedback_Assistant9FBAFilter_image] = 0;
  v4[OBJC_IVAR____TtC18Feedback_Assistant9FBAFilter_active] = 0;
  swift_unknownObjectWeakInit();
  *&v4[OBJC_IVAR____TtC18Feedback_Assistant9FBAFilter_predicate] = a1;
  v10 = &v4[OBJC_IVAR____TtC18Feedback_Assistant9FBAFilter_title];
  *v10 = a2;
  v10[1] = a3;
  v11 = *&v4[v9];
  *&v4[v9] = a4;
  v12 = a1;
  v13 = a4;

  v17.receiver = v4;
  v17.super_class = type metadata accessor for FBAFilter(v14, v15);
  return objc_msgSendSuper2(&v17, "init");
}

id sub_100070E80@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 active];
  *a2 = result;
  return result;
}

void *sub_100071044(char a1)
{
  *(v1 + OBJC_IVAR____TtC18Feedback_Assistant16FBAFilterManager_active) = a1;
  result = swift_unknownObjectWeakLoadStrong();
  v4 = result;
  if (a1)
  {
    if (!result)
    {
      return result;
    }

    v5 = &selRef_filterManagerDidActivate_;
  }

  else
  {
    if (!result)
    {
      return result;
    }

    v5 = &selRef_filterManagerDidDeactivate_;
  }

  if ([result respondsToSelector:*v5])
  {
    [v4 *v5];
  }

  return swift_unknownObjectRelease();
}

unint64_t sub_100071110()
{
  v1 = *(v0 + OBJC_IVAR____TtC18Feedback_Assistant16FBAFilterManager_filterGroups);
  if (v1 >> 62)
  {
    goto LABEL_49;
  }

  v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:

  if (v2)
  {
    v3 = 0;
    v4 = v1 & 0xC000000000000001;
    v35 = v1 & 0xFFFFFFFFFFFFFF8;
    v5 = _swiftEmptyArrayStorage;
    v34 = v1 + 32;
    v6 = &qword_10010A400;
    v32 = v1 & 0xC000000000000001;
    v33 = v2;
    while (1)
    {
      v40 = v5;
      if (v4)
      {
        v7 = v6;
        v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v3 >= *(v35 + 16))
        {
          goto LABEL_43;
        }

        v7 = v6;
        v8 = *(v34 + 8 * v3);
      }

      v9 = __OFADD__(v3, 1);
      v10 = v3 + 1;
      if (v9)
      {
        __break(1u);
LABEL_43:
        __break(1u);
LABEL_44:
        __break(1u);
LABEL_45:
        __break(1u);
LABEL_46:
        __break(1u);
LABEL_47:
        __break(1u);
LABEL_48:
        __break(1u);
LABEL_49:
        v2 = _CocoaArrayWrapper.endIndex.getter();
        goto LABEL_3;
      }

      v11 = *&v8[OBJC_IVAR____TtC18Feedback_Assistant14FBAFilterGroup_filters];
      v12 = v11 >> 62;
      if (v11 >> 62)
      {
        v29 = v8;
        v30 = _CocoaArrayWrapper.endIndex.getter();
        v8 = v29;
        v13 = v30;
      }

      else
      {
        v13 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v14 = v5 >> 62;
      v38 = v8;
      if (v40 >> 62)
      {
        v15 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v15 = *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v39 = v13;
      v9 = __OFADD__(v15, v13);
      v1 = v15 + v13;
      if (v9)
      {
        goto LABEL_44;
      }

      v36 = v10;
      if (swift_isUniquelyReferenced_nonNull_bridgeObject())
      {
        break;
      }

      if (v14)
      {
        goto LABEL_21;
      }

LABEL_22:
      v18 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v17 = v18 & 0xFFFFFFFFFFFFFF8;
LABEL_23:
      v37 = v18;
      v6 = v7;
      v19 = *(v17 + 16);
      v20 = *(v17 + 24);
      if (v12)
      {
        v1 = _CocoaArrayWrapper.endIndex.getter();
        if (v1)
        {
LABEL_27:
          if (((v20 >> 1) - v19) < v39)
          {
            goto LABEL_46;
          }

          v21 = v17 + 8 * v19 + 32;
          if (v12)
          {
            if (v1 < 1)
            {
              goto LABEL_48;
            }

            sub_1000456EC(&qword_10010A408, v6, &qword_1000C3410, &protocol conformance descriptor for [A]);
            v22 = v6;
            for (i = 0; i != v1; ++i)
            {
              sub_100041AA0(v22, &qword_1000C3410);
              v24 = sub_10005A2D4(v41, i, v11);
              v26 = *v25;
              (v24)(v41, 0);
              v22 = v6;
              *(v21 + 8 * i) = v26;
            }

            v4 = v32;
            v2 = v33;
            v1 = v39;
          }

          else
          {
            type metadata accessor for FBAFilter(0, v16);
            v1 = v39;
            swift_arrayInitWithCopy();
          }

          v5 = v37;
          if (v1 > 0)
          {
            v27 = *(v17 + 16);
            v9 = __OFADD__(v27, v1);
            v28 = v27 + v1;
            if (v9)
            {
              goto LABEL_47;
            }

            *(v17 + 16) = v28;
          }

          goto LABEL_6;
        }
      }

      else
      {
        v1 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v1)
        {
          goto LABEL_27;
        }
      }

      v5 = v37;
      if (v39 > 0)
      {
        goto LABEL_45;
      }

LABEL_6:
      v3 = v36;
      if (v36 == v2)
      {
        goto LABEL_41;
      }
    }

    if (!v14)
    {
      v17 = v40 & 0xFFFFFFFFFFFFFF8;
      v18 = v40;
      if (v1 <= *((v40 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        goto LABEL_23;
      }

      goto LABEL_22;
    }

LABEL_21:
    _CocoaArrayWrapper.endIndex.getter();
    goto LABEL_22;
  }

  v5 = _swiftEmptyArrayStorage;
LABEL_41:

  return v5;
}

Class sub_1000714FC(void *a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a1;
  a3();

  type metadata accessor for FBAFilter(0, v5);
  v6.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v6.super.isa;
}

void *sub_100071568()
{
  v0 = sub_100071110();
  v1 = v0;
  if (v0 >> 62)
  {
    goto LABEL_16;
  }

  for (i = *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v3 = 0;
    while (1)
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v3 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_15;
        }

        v4 = *(v1 + 8 * v3 + 32);
      }

      v5 = v4;
      v6 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        break;
      }

      if ([v4 active])
      {
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
      }

      else
      {
      }

      ++v3;
      if (v6 == i)
      {
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    ;
  }

LABEL_17:

  return _swiftEmptyArrayStorage;
}

id sub_1000716F8(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + OBJC_IVAR____TtC18Feedback_Assistant16FBAFilterManager_filterGroups);
  if (v3 >> 62)
  {
    goto LABEL_36;
  }

  v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  if (v4)
  {
    v30 = v3 & 0xC000000000000001;
    v26 = v3 + 32;
    v27 = v3 & 0xFFFFFFFFFFFFFF8;

    v5 = 0;
    v28 = v3;
    v29 = v4;
    while (1)
    {
      if (v30)
      {
        v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v5 >= *(v27 + 16))
        {
          goto LABEL_35;
        }

        v6 = *(v26 + 8 * v5);
      }

      v7 = v6;
      if (__OFADD__(v5++, 1))
      {
        __break(1u);
LABEL_34:
        __break(1u);
LABEL_35:
        __break(1u);
LABEL_36:
        v4 = _CocoaArrayWrapper.endIndex.getter();
        goto LABEL_3;
      }

      v9 = sub_100059EA0();
      if (v9 >> 62)
      {
        v22 = _CocoaArrayWrapper.endIndex.getter();

        if (!v22)
        {
          goto LABEL_5;
        }

LABEL_13:
        v11 = *&v7[OBJC_IVAR____TtC18Feedback_Assistant14FBAFilterGroup_compoundType];
        v12 = sub_100059EA0();
        v13 = v12;
        if (v12 >> 62)
        {
          v14 = _CocoaArrayWrapper.endIndex.getter();
        }

        else
        {
          v14 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        if (v14)
        {
          specialized ContiguousArray.reserveCapacity(_:)();
          if (v14 < 0)
          {
            goto LABEL_34;
          }

          v15 = 0;
          do
          {
            if ((v13 & 0xC000000000000001) != 0)
            {
              v16 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              v16 = *(v13 + 8 * v15 + 32);
            }

            v17 = v16;
            ++v15;
            v18 = *&v16[OBJC_IVAR____TtC18Feedback_Assistant9FBAFilter_predicate];

            specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
            specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
            specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            specialized ContiguousArray._endMutation()();
          }

          while (v14 != v15);

          v3 = v28;
        }

        else
        {
        }

        v19 = objc_allocWithZone(NSCompoundPredicate);
        sub_100072C28(0, v20);
        isa = Array._bridgeToObjectiveC()().super.isa;

        [v19 initWithType:v11 subpredicates:isa];

        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

        v4 = v29;
        if (v5 == v29)
        {
LABEL_31:

          break;
        }
      }

      else
      {
        v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);

        if (v10)
        {
          goto LABEL_13;
        }

LABEL_5:

        if (v5 == v4)
        {
          goto LABEL_31;
        }
      }
    }
  }

  sub_100072C28(0, a2);
  v23 = Array._bridgeToObjectiveC()().super.isa;

  v24 = [objc_opt_self() andPredicateWithSubpredicates:v23];

  return v24;
}

uint64_t sub_100071B50()
{
  v0 = sub_100071568();
  v1 = v0;
  if (v0 >> 62)
  {
    v2 = _CocoaArrayWrapper.endIndex.getter();
    if (v2 >= 3)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v2 = *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2 >= 3)
    {
LABEL_3:

      v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v5 = v4;
      v6 = [objc_opt_self() mainBundle];
      v39._object = 0xE000000000000000;
      v7._countAndFlagsBits = 0x65746C6946207525;
      v7._object = 0xEA00000000007372;
      v8.value._countAndFlagsBits = v3;
      v8.value._object = v5;
      v9._countAndFlagsBits = 0;
      v9._object = 0xE000000000000000;
      v39._countAndFlagsBits = 0;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v7, v8, v6, v9, v39);

      sub_100041AA0(&unk_100109860, qword_1000C2DA0);
      v10 = swift_allocObject();
      *(v10 + 16) = xmmword_1000C29F0;
      *(v10 + 56) = &type metadata for Int;
      *(v10 + 64) = &protocol witness table for Int;
      *(v10 + 32) = v2;
      v11 = String.init(format:_:)();
      goto LABEL_20;
    }
  }

  if (v2 < 1)
  {

    v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = v14;
    v16 = [objc_opt_self() mainBundle];
    v40._object = 0xE000000000000000;
    v17._object = 0x80000001000CD1B0;
    v17._countAndFlagsBits = 0xD000000000000012;
    v18.value._countAndFlagsBits = v13;
    v18.value._object = v15;
    v19._countAndFlagsBits = 0;
    v19._object = 0xE000000000000000;
    v40._countAndFlagsBits = 0;
    countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v17, v18, v16, v19, v40)._countAndFlagsBits;

    return countAndFlagsBits;
  }

  sub_100077CEC(0, v2, 0);
  if ((v1 & 0xC000000000000001) != 0)
  {
    v12 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    v12 = *(v1 + 32);
  }

  v22 = v12;
  v23 = [v12 title];
  v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v26 = v25;

  v28 = _swiftEmptyArrayStorage[2];
  v27 = _swiftEmptyArrayStorage[3];
  if (v28 >= v27 >> 1)
  {
    sub_100077CEC((v27 > 1), v28 + 1, 1);
  }

  _swiftEmptyArrayStorage[2] = v28 + 1;
  v29 = &_swiftEmptyArrayStorage[2 * v28];
  v29[4] = v24;
  v29[5] = v26;
  if (v2 != 1)
  {
    if ((v1 & 0xC000000000000001) != 0)
    {
      v30 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v30 = *(v1 + 40);
    }

    v31 = v30;
    v32 = [v30 title];
    v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v35 = v34;

    v37 = _swiftEmptyArrayStorage[2];
    v36 = _swiftEmptyArrayStorage[3];
    if (v37 >= v36 >> 1)
    {
      sub_100077CEC((v36 > 1), v37 + 1, 1);
    }

    _swiftEmptyArrayStorage[2] = v37 + 1;
    v38 = &_swiftEmptyArrayStorage[2 * v37];
    v38[4] = v33;
    v38[5] = v35;
  }

  sub_100041AA0(&unk_10010A850, qword_1000C3418);
  sub_1000456EC(&qword_10010A410, &unk_10010A850, qword_1000C3418, &protocol conformance descriptor for [A]);
  v11 = BidirectionalCollection<>.joined(separator:)();
LABEL_20:

  return v11;
}

char *sub_100071F38(uint64_t a1)
{
  v3 = swift_unknownObjectWeakInit();
  v1[OBJC_IVAR____TtC18Feedback_Assistant16FBAFilterManager_active] = 0;
  *&v1[OBJC_IVAR____TtC18Feedback_Assistant16FBAFilterManager_filterGroups] = a1;
  v14.receiver = v1;
  v14.super_class = type metadata accessor for FBAFilterManager(v3, v4);
  v5 = objc_msgSendSuper2(&v14, "init");
  v6 = *&v5[OBJC_IVAR____TtC18Feedback_Assistant16FBAFilterManager_filterGroups];
  if (v6 >> 62)
  {
    goto LABEL_15;
  }

  v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (1)
  {
    v8 = v5;

    if (!v7)
    {
      break;
    }

    v9 = 0;
    while (1)
    {
      if ((v6 & 0xC000000000000001) != 0)
      {
        v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v9 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_14;
        }

        v5 = *(v6 + 8 * v9 + 32);
      }

      v10 = v5;
      v11 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      swift_unknownObjectWeakAssign();

      ++v9;
      if (v11 == v7)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    v13 = v5;
    v7 = _CocoaArrayWrapper.endIndex.getter();
    v5 = v13;
  }

LABEL_12:

  return v8;
}

void sub_1000720D8(unint64_t a1)
{
  v2 = IndexPath.section.getter();
  v3 = *(v1 + OBJC_IVAR____TtC18Feedback_Assistant16FBAFilterManager_filterGroups);
  if ((v3 & 0xC000000000000001) != 0)
  {

    v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if ((v2 & 0x8000000000000000) != 0)
    {
      __break(1u);
      goto LABEL_12;
    }

    if (v2 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_14;
    }

    v4 = *(v3 + 8 * v2 + 32);
  }

  v5 = IndexPath.item.getter();
  v6 = *&v4[OBJC_IVAR____TtC18Feedback_Assistant14FBAFilterGroup_filters];

  if ((v6 & 0xC000000000000001) != 0)
  {
LABEL_12:
    specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_9;
  }

  if ((v5 & 0x8000000000000000) != 0)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v5 < *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v7 = *(v6 + 8 * v5 + 32);
LABEL_9:

    return;
  }

LABEL_15:
  __break(1u);
}

void sub_1000722E4(uint64_t a1)
{
  v2 = v1;
  v3 = IndexPath.section.getter();
  v4 = *(v1 + OBJC_IVAR____TtC18Feedback_Assistant16FBAFilterManager_filterGroups);
  if ((v4 & 0xC000000000000001) != 0)
  {

    v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if ((v3 & 0x8000000000000000) != 0)
    {
      __break(1u);
      goto LABEL_15;
    }

    if (v3 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_17;
    }

    v5 = *(v4 + 8 * v3 + 32);
  }

  v6 = IndexPath.item.getter();
  v7 = *&v5[OBJC_IVAR____TtC18Feedback_Assistant14FBAFilterGroup_filters];

  if ((v7 & 0xC000000000000001) == 0)
  {
    if ((v6 & 0x8000000000000000) == 0)
    {
      if (v6 < *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v8 = *(v7 + 8 * v6 + 32);
        goto LABEL_9;
      }

LABEL_18:
      __break(1u);
      return;
    }

LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

LABEL_15:
  v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_9:
  v9 = v8;

  swift_getKeyPath();
  _KeyValueCodingAndObserving.willChangeValue<A>(for:)();
  [v9 setActive:{objc_msgSend(v9, "active") ^ 1}];
  swift_getKeyPath();
  _KeyValueCodingAndObserving.didChangeValue<A>(for:)();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    [Strong filterManager:v2 didToggleFilter:v9];

    swift_unknownObjectRelease();
  }

  else
  {
  }
}

void *sub_1000724A0@<X0>(void *a1@<X8>)
{
  result = sub_100071568();
  *a1 = result;
  return result;
}

void sub_1000725B4(unint64_t a1)
{
  v3 = sub_100071110();
  if ((v3 & 0xC000000000000001) == 0)
  {
    if ((a1 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a1)
    {
      v4 = *(v3 + 8 * a1 + 32);
      goto LABEL_5;
    }

    __break(1u);
    return;
  }

  v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_5:
  v5 = v4;

  swift_getKeyPath();
  _KeyValueCodingAndObserving.willChangeValue<A>(for:)();
  [v5 setActive:{objc_msgSend(v5, "active") ^ 1}];
  swift_getKeyPath();
  _KeyValueCodingAndObserving.didChangeValue<A>(for:)();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    [Strong filterManager:v1 didToggleFilter:v5];

    swift_unknownObjectRelease();
  }

  else
  {
  }
}

uint64_t sub_10007273C()
{
  v1 = v0;
  swift_getKeyPath();
  _KeyValueCodingAndObserving.willChangeValue<A>(for:)();
  v2 = OBJC_IVAR____TtC18Feedback_Assistant16FBAFilterManager_active;
  v3 = *(v0 + OBJC_IVAR____TtC18Feedback_Assistant16FBAFilterManager_active);
  *(v0 + OBJC_IVAR____TtC18Feedback_Assistant16FBAFilterManager_active) = v3 ^ 1;
  Strong = swift_unknownObjectWeakLoadStrong();
  v5 = Strong;
  if (v3)
  {
    if (!Strong)
    {
      goto LABEL_9;
    }

    v6 = &selRef_filterManagerDidDeactivate_;
  }

  else
  {
    if (!Strong)
    {
      goto LABEL_9;
    }

    v6 = &selRef_filterManagerDidActivate_;
  }

  if ([Strong respondsToSelector:*v6])
  {
    [v5 *v6];
  }

  swift_unknownObjectRelease();
LABEL_9:
  swift_getKeyPath();
  _KeyValueCodingAndObserving.didChangeValue<A>(for:)();
  sub_100072A34();
  return *(v1 + v2);
}

void sub_100072864()
{
  if ((*(v0 + OBJC_IVAR____TtC18Feedback_Assistant16FBAFilterManager_active) & 1) == 0)
  {
    *(v0 + OBJC_IVAR____TtC18Feedback_Assistant16FBAFilterManager_active) = 1;
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v2 = Strong;
      if ([Strong respondsToSelector:"filterManagerDidActivate:"])
      {
        [v2 filterManagerDidActivate:v0];
      }

      swift_unknownObjectRelease();
    }
  }
}

void sub_10007294C()
{
  if (*(v0 + OBJC_IVAR____TtC18Feedback_Assistant16FBAFilterManager_active) == 1)
  {
    *(v0 + OBJC_IVAR____TtC18Feedback_Assistant16FBAFilterManager_active) = 0;
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v2 = Strong;
      if ([Strong respondsToSelector:"filterManagerDidDeactivate:"])
      {
        [v2 filterManagerDidDeactivate:v0];
      }

      swift_unknownObjectRelease();
    }
  }
}

void *sub_100072A34()
{
  v1 = *(v0 + OBJC_IVAR____TtC18Feedback_Assistant16FBAFilterManager_active);
  result = swift_unknownObjectWeakLoadStrong();
  v3 = result;
  if (v1 == 1)
  {
    if (!result)
    {
      return result;
    }

    v4 = &selRef_filterManagerDidActivate_;
  }

  else
  {
    if (!result)
    {
      return result;
    }

    v4 = &selRef_filterManagerDidDeactivate_;
  }

  if ([result respondsToSelector:*v4])
  {
    [v3 *v4];
  }

  return swift_unknownObjectRelease();
}

id sub_100072B18(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for FBAFilterManager(a1, a2);
  return objc_msgSendSuper2(&v4, "dealloc");
}

void *sub_100072BFC@<X0>(void *a1@<X8>)
{
  result = sub_100071568();
  *a1 = result;
  return result;
}

unint64_t sub_100072C28(uint64_t a1, uint64_t a2)
{
  result = qword_10010A3F8;
  if (!qword_10010A3F8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10010A3F8);
  }

  return result;
}

uint64_t sub_100072C74(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_100041AA0(&qword_10010A460, &qword_1000C3478);
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
    v13 = (*(a1 + 48) + ((v9 << 10) | (16 * __clz(__rbit64(v5)))));
    v14 = v13[1];
    *&v30[0] = *v13;
    *(&v30[0] + 1) = v14;

    swift_dynamicCast();
    swift_dynamicCast();
    v26 = v22;
    v27 = v23;
    v28 = v24;
    sub_10006FB68(&v25, v29);
    v22 = v26;
    v23 = v27;
    v24 = v28;
    sub_10006FB68(v29, v30);
    result = AnyHashable._rawHashValue(seed:)(v2[5]);
    v15 = -1 << *(v2 + 32);
    v16 = result & ~v15;
    v17 = v16 >> 6;
    if (((-1 << v16) & ~*&v7[8 * (v16 >> 6)]) == 0)
    {
      v18 = 0;
      v19 = (63 - v15) >> 6;
      while (++v17 != v19 || (v18 & 1) == 0)
      {
        v20 = v17 == v19;
        if (v17 == v19)
        {
          v17 = 0;
        }

        v18 |= v20;
        v21 = *&v7[8 * v17];
        if (v21 != -1)
        {
          v10 = __clz(__rbit64(~v21)) + (v17 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v16) & ~*&v7[8 * (v16 >> 6)])) | v16 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *&v7[(v10 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v10;
    v11 = v2[6] + 40 * v10;
    *v11 = v22;
    *(v11 + 16) = v23;
    *(v11 + 32) = v24;
    result = sub_10006FB68(v30, (v2[7] + 32 * v10));
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

unint64_t sub_100072F3C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_100041AA0(&qword_10010A458, &qword_1000C3470);
    v2 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v2 = &_swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v12 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v14 = (*(a1 + 48) + 16 * (v13 | (v12 << 6)));
        v16 = *v14;
        v15 = v14[1];

        swift_unknownObjectRetain();
        swift_dynamicCast();
        sub_10006FB68(&v22, v24);
        sub_10006FB68(v24, v25);
        sub_10006FB68(v25, &v23);
        result = sub_100065F3C(v16, v15);
        if (v17)
        {
          v9 = (v2[6] + 16 * result);
          *v9 = v16;
          v9[1] = v15;
          v10 = result;

          v11 = (v2[7] + 32 * v10);
          sub_1000466E4(v11);
          result = sub_10006FB68(&v23, v11);
          v8 = v12;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_20;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          v18 = (v2[6] + 16 * result);
          *v18 = v16;
          v18[1] = v15;
          result = sub_10006FB68(&v23, (v2[7] + 32 * result));
          v19 = v2[2];
          v20 = __OFADD__(v19, 1);
          v21 = v19 + 1;
          if (v20)
          {
            goto LABEL_21;
          }

          v2[2] = v21;
          v8 = v12;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v12 = v8;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

void *sub_100073190(unint64_t a1, unint64_t a2)
{
  v4 = a2 >> 62;
  v31 = HIDWORD(a1);
  if ((a2 >> 62) <= 1)
  {
    if (!v4)
    {
      v5 = BYTE6(a2);
      goto LABEL_10;
    }

    goto LABEL_8;
  }

  if (v4 != 2)
  {
    return _swiftEmptyArrayStorage;
  }

  v7 = *(a1 + 16);
  v6 = *(a1 + 24);
  v5 = v6 - v7;
  if (__OFSUB__(v6, v7))
  {
    __break(1u);
LABEL_8:
    if (__OFSUB__(HIDWORD(a1), a1))
    {
      goto LABEL_49;
    }

    v5 = HIDWORD(a1) - a1;
  }

LABEL_10:
  v8 = _swiftEmptyArrayStorage;
  if (v5)
  {
    v46 = _swiftEmptyArrayStorage;
    v32 = a2 >> 62;
    sub_100077CEC(0, v5 & ~(v5 >> 63), 0);
    v9 = v32;
    if (v32)
    {
      if (v32 == 2)
      {
        v10 = *(a1 + 16);
      }

      else
      {
        v10 = a1;
      }
    }

    else
    {
      v10 = 0;
    }

    v33 = v10;
    if (v5 < 0)
    {
      goto LABEL_48;
    }

    v11 = 0;
    v8 = v46;
    v30 = &v34 + v10;
    do
    {
      if (v11 >= v5)
      {
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
LABEL_47:
        __break(1u);
LABEL_48:
        __break(1u);
LABEL_49:
        __break(1u);
LABEL_50:
        __break(1u);
LABEL_51:
        __break(1u);
      }

      v12 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        goto LABEL_41;
      }

      v13 = v33 + v11;
      if (v9 == 2)
      {
        if (v13 < *(a1 + 16))
        {
          goto LABEL_43;
        }

        if (v13 >= *(a1 + 24))
        {
          goto LABEL_45;
        }

        v18 = __DataStorage._bytes.getter();
        if (!v18)
        {
          goto LABEL_51;
        }

        v15 = v18;
        v19 = __DataStorage._offset.getter();
        v17 = v13 - v19;
        if (__OFSUB__(v13, v19))
        {
          goto LABEL_47;
        }
      }

      else
      {
        if (v9 != 1)
        {
          if (v13 >= BYTE6(a2))
          {
            goto LABEL_42;
          }

          v34 = a1;
          v35 = BYTE2(a1);
          v36 = BYTE3(a1);
          v37 = v31;
          v38 = BYTE5(a1);
          v39 = BYTE6(a1);
          v40 = HIBYTE(a1);
          v41 = a2;
          v42 = BYTE2(a2);
          v43 = BYTE3(a2);
          v44 = BYTE4(a2);
          v45 = BYTE5(a2);
          v20 = v30[v11];
          goto LABEL_36;
        }

        if (v13 < a1 || v13 >= a1 >> 32)
        {
          goto LABEL_44;
        }

        v14 = __DataStorage._bytes.getter();
        if (!v14)
        {
          goto LABEL_50;
        }

        v15 = v14;
        v16 = __DataStorage._offset.getter();
        v17 = v13 - v16;
        if (__OFSUB__(v13, v16))
        {
          goto LABEL_46;
        }
      }

      v20 = *(v15 + v17);
      v9 = v32;
LABEL_36:
      sub_100041AA0(&unk_100109860, qword_1000C2DA0);
      v21 = swift_allocObject();
      *(v21 + 16) = xmmword_1000C29F0;
      *(v21 + 56) = &type metadata for UInt8;
      *(v21 + 64) = &protocol witness table for UInt8;
      *(v21 + 32) = v20;
      v22 = String.init(format:_:)();
      v46 = v8;
      v25 = v8[2];
      v24 = v8[3];
      if (v25 >= v24 >> 1)
      {
        v29 = v22;
        v27 = v23;
        sub_100077CEC((v24 > 1), v25 + 1, 1);
        v9 = v32;
        v23 = v27;
        v22 = v29;
        v8 = v46;
      }

      v8[2] = v25 + 1;
      v26 = &v8[2 * v25];
      v26[4] = v22;
      v26[5] = v23;
      ++v11;
    }

    while (v12 != v5);
  }

  return v8;
}

id sub_1000735E0(uint64_t a1, uint64_t a2)
{
  result = [objc_allocWithZone(type metadata accessor for FBANotificationManager(a1 a2))];
  qword_10010CEC8 = result;
  return result;
}

uint64_t sub_1000736BC(unint64_t a1, unint64_t a2)
{
  v3 = v2;
  sub_100073190(a1, a2);
  sub_100041AA0(&unk_10010A850, qword_1000C3418);
  sub_100073E38();
  v4 = BidirectionalCollection<>.joined(separator:)();
  v6 = v5;

  v7 = (v3 + OBJC_IVAR____TtC18Feedback_Assistant22FBANotificationManager_apnsToken);
  *v7 = v4;
  v7[1] = v6;

  sub_100041AA0(&qword_10010A040, &unk_1000C37D0);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1000C29F0;
  strcpy(v15, "APNS Token: ");
  BYTE5(v15[1]) = 0;
  HIWORD(v15[1]) = -5120;
  if (v7[1])
  {
    v9 = *v7;
    v10 = v7[1];
  }

  else
  {
    v10 = 0xE800000000000000;
    v9 = 0x6E656B6F74206F6ELL;
  }

  v11._countAndFlagsBits = v9;
  v11._object = v10;
  String.append(_:)(v11);

  v12 = v15[0];
  v13 = v15[1];
  *(v8 + 56) = &type metadata for String;
  *(v8 + 32) = v12;
  *(v8 + 40) = v13;
  debugPrint(_:separator:terminator:)();
}

void sub_1000738A8(void *a1, void *a2)
{
  if (*(v2 + OBJC_IVAR____TtC18Feedback_Assistant22FBANotificationManager_apnsToken + 8))
  {
    sub_100054080(0, a2);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();

    [ObjCClassFromMetadata platform];
    sub_100041AA0(&qword_10010A448, &qword_1000C3460);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1000C2520;
    *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(inited + 40) = v7;
    v8 = String._bridgeToObjectiveC()();

    *(inited + 48) = v8;
    *(inited + 56) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(inited + 64) = v9;
    v10 = String._bridgeToObjectiveC()();

    *(inited + 72) = v10;
    *(inited + 80) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(inited + 88) = v11;
    [a1 integerValue];
    *(inited + 96) = Int._bridgeToObjectiveC()();
    v12 = sub_100076240(inited);
    swift_setDeallocating();
    sub_100041AA0(&qword_10010A450, &qword_1000C3468);
    swift_arrayDestroy();
    sub_100072F3C(v12);

    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v21 = FBAMailboxesViewController.controller(_:didFinishLoadingDraft:devicesController:draftingController:);
    v22 = 0;
    aBlock = _NSConcreteStackBlock;
    v18 = 1107296256;
    v19 = sub_100073C48;
    v20 = &unk_1000E1858;
    v14 = _Block_copy(&aBlock);
    v21 = FBAMailboxesViewController.controller(_:didFinishLoadingDraft:devicesController:draftingController:);
    v22 = 0;
    aBlock = _NSConcreteStackBlock;
    v18 = 1107296256;
    v19 = sub_100073CD0;
    v20 = &unk_1000E1880;
    v15 = _Block_copy(&aBlock);
    [a2 registerAPNSWithRequestDictionary:isa success:v14 error:v15];
    _Block_release(v15);
    _Block_release(v14);
  }

  else
  {
    sub_100041AA0(&qword_10010A040, &unk_1000C37D0);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_1000C29F0;
    *(v16 + 56) = &type metadata for String;
    *(v16 + 32) = 0xD000000000000043;
    *(v16 + 40) = 0x80000001000CD270;
    debugPrint(_:separator:terminator:)();
  }
}

uint64_t sub_100073C48(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v5 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  v3(v5, v7);
  sub_100046730(v5, v7);
}

void sub_100073CD0(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

id sub_100073DB4(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for FBANotificationManager(a1, a2);
  return objc_msgSendSuper2(&v4, "dealloc");
}

uint64_t sub_100073E20(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_100073E38()
{
  result = qword_10010A410;
  if (!qword_10010A410)
  {
    sub_100041B4C(&unk_10010A850, qword_1000C3418);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10010A410);
  }

  return result;
}

id FBACustomBehavior.init(dictionary:)(uint64_t a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC18Feedback_Assistant17FBACustomBehavior_makeVisible;
  v2[OBJC_IVAR____TtC18Feedback_Assistant17FBACustomBehavior_makeVisible] = 0;
  v5 = OBJC_IVAR____TtC18Feedback_Assistant17FBACustomBehavior_notifyOnUpload;
  v2[OBJC_IVAR____TtC18Feedback_Assistant17FBACustomBehavior_notifyOnUpload] = 0;
  v6 = OBJC_IVAR____TtC18Feedback_Assistant17FBACustomBehavior_formId;
  *&v2[OBJC_IVAR____TtC18Feedback_Assistant17FBACustomBehavior_formId] = 0;
  v7 = OBJC_IVAR____TtC18Feedback_Assistant17FBACustomBehavior_answers;
  *&v2[OBJC_IVAR____TtC18Feedback_Assistant17FBACustomBehavior_answers] = 0;
  v8 = OBJC_IVAR____TtC18Feedback_Assistant17FBACustomBehavior_launchNewDraft;
  v2[OBJC_IVAR____TtC18Feedback_Assistant17FBACustomBehavior_launchNewDraft] = 0;
  v9 = OBJC_IVAR____TtC18Feedback_Assistant17FBACustomBehavior_isCaptive;
  v2[OBJC_IVAR____TtC18Feedback_Assistant17FBACustomBehavior_isCaptive] = 0;
  v10 = *(a1 + 16);
  if (v10)
  {
    sub_100065F3C(0x7369765F656B616DLL, 0xEC000000656C6269);
    if ((v11 & 1) != 0 && (swift_unknownObjectRetain(), swift_dynamicCast()))
    {
      LOBYTE(v10) = v26;
    }

    else
    {
      LOBYTE(v10) = 0;
    }
  }

  v2[v4] = v10;
  v12 = *(a1 + 16);
  if (v12)
  {
    sub_100065F3C(0xD000000000000010, 0x80000001000CD2E0);
    if ((v13 & 1) != 0 && (swift_unknownObjectRetain(), swift_dynamicCast()))
    {
      LOBYTE(v12) = v26;
    }

    else
    {
      LOBYTE(v12) = 0;
    }
  }

  v2[v5] = v12;
  v14 = *(a1 + 16);
  if (v14)
  {
    sub_100065F3C(0x73726577736E61, 0xE700000000000000);
    if (v15 & 1) != 0 && (swift_unknownObjectRetain(), sub_100041AA0(&qword_10010A498, &unk_1000C3480), (swift_dynamicCast()))
    {
      v14 = v26;
    }

    else
    {
      v14 = 0;
    }
  }

  *&v2[v7] = v14;

  v16 = *(a1 + 16);
  if (v16)
  {
    sub_100065F3C(0xD000000000000010, 0x80000001000CD300);
    if ((v17 & 1) != 0 && (swift_unknownObjectRetain(), swift_dynamicCast()))
    {
      LOBYTE(v16) = v26;
    }

    else
    {
      LOBYTE(v16) = 0;
    }
  }

  v2[v8] = v16;
  v18 = *(a1 + 16);
  if (v18)
  {
    sub_100065F3C(0x69747061635F7369, 0xEA00000000006576);
    if ((v19 & 1) != 0 && (swift_unknownObjectRetain(), swift_dynamicCast()))
    {
      LOBYTE(v18) = v26;
    }

    else
    {
      LOBYTE(v18) = 0;
    }
  }

  v2[v9] = v18;
  if (*(a1 + 16) && (sub_100065F3C(0x64695F6D726F66, 0xE700000000000000), (v20 & 1) != 0))
  {
    swift_unknownObjectRetain();

    v21 = swift_dynamicCast();
    if (v21)
    {
      v23 = [objc_allocWithZone(NSNumber) initWithInteger:v26];
      v24 = *&v2[v6];
      *&v2[v6] = v23;
    }
  }

  else
  {
  }

  v27.receiver = v2;
  v27.super_class = type metadata accessor for FBACustomBehavior(v21, v22);
  return objc_msgSendSuper2(&v27, "init");
}

uint64_t FBACustomBehavior.description.getter()
{
  _StringGuts.grow(_:)(109);
  v1._countAndFlagsBits = 0xD00000000000001ELL;
  v1._object = 0x80000001000CD320;
  String.append(_:)(v1);
  if (*(v0 + OBJC_IVAR____TtC18Feedback_Assistant17FBACustomBehavior_isCaptive))
  {
    v2 = 1702195828;
  }

  else
  {
    v2 = 0x65736C6166;
  }

  if (*(v0 + OBJC_IVAR____TtC18Feedback_Assistant17FBACustomBehavior_isCaptive))
  {
    v3 = 0xE400000000000000;
  }

  else
  {
    v3 = 0xE500000000000000;
  }

  v4 = v3;
  String.append(_:)(*&v2);

  v5._countAndFlagsBits = 0x736956656B616D20;
  v5._object = 0xEE00203A656C6269;
  String.append(_:)(v5);
  if (*(v0 + OBJC_IVAR____TtC18Feedback_Assistant17FBACustomBehavior_makeVisible))
  {
    v6 = 1702195828;
  }

  else
  {
    v6 = 0x65736C6166;
  }

  if (*(v0 + OBJC_IVAR____TtC18Feedback_Assistant17FBACustomBehavior_makeVisible))
  {
    v7 = 0xE400000000000000;
  }

  else
  {
    v7 = 0xE500000000000000;
  }

  v8 = v7;
  String.append(_:)(*&v6);

  v9._object = 0x80000001000CD340;
  v9._countAndFlagsBits = 0xD000000000000011;
  String.append(_:)(v9);
  if (*(v0 + OBJC_IVAR____TtC18Feedback_Assistant17FBACustomBehavior_notifyOnUpload))
  {
    v10 = 1702195828;
  }

  else
  {
    v10 = 0x65736C6166;
  }

  if (*(v0 + OBJC_IVAR____TtC18Feedback_Assistant17FBACustomBehavior_notifyOnUpload))
  {
    v11 = 0xE400000000000000;
  }

  else
  {
    v11 = 0xE500000000000000;
  }

  v12 = v11;
  String.append(_:)(*&v10);

  v13._countAndFlagsBits = 0x3A64496D726F6620;
  v13._object = 0xE900000000000020;
  String.append(_:)(v13);
  v14 = *(v0 + OBJC_IVAR____TtC18Feedback_Assistant17FBACustomBehavior_formId);
  sub_100041AA0(&unk_10010A0B0, &qword_1000C3078);
  v15._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v15);

  v16._object = 0x80000001000CD360;
  v16._countAndFlagsBits = 0xD000000000000011;
  String.append(_:)(v16);
  if (*(v0 + OBJC_IVAR____TtC18Feedback_Assistant17FBACustomBehavior_launchNewDraft))
  {
    v17 = 1702195828;
  }

  else
  {
    v17 = 0x65736C6166;
  }

  if (*(v0 + OBJC_IVAR____TtC18Feedback_Assistant17FBACustomBehavior_launchNewDraft))
  {
    v18 = 0xE400000000000000;
  }

  else
  {
    v18 = 0xE500000000000000;
  }

  v19 = v18;
  String.append(_:)(*&v17);

  v20._countAndFlagsBits = 0x73726577736E6120;
  v20._object = 0xEA0000000000203ALL;
  String.append(_:)(v20);

  sub_100041AA0(&qword_10010A4A0, qword_1000C3490);
  v21._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v21);

  return 0;
}

id FBACustomBehavior.__deallocating_deinit(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for FBACustomBehavior(a1, a2);
  return objc_msgSendSuper2(&v4, "dealloc");
}

uint64_t sub_100074870(uint64_t result)
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

  result = sub_100077778(result, v10, 1, v3);
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

uint64_t sub_100074964(uint64_t result)
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

  result = sub_100077884(result, v10, 1, v3);
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

void sub_100074B88()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC18Feedback_Assistant25FBAResponseItemDetailCell_questionGroupsStack;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
LABEL_78:
    __break(1u);
    goto LABEL_79;
  }

  v4 = Strong;
  sub_100075448();

  v5 = swift_unknownObjectWeakLoadStrong();
  if (!v5)
  {
LABEL_79:
    __break(1u);
    goto LABEL_80;
  }

  v6 = v5;
  [v5 setSpacing:20.0];

  v7 = OBJC_IVAR____TtC18Feedback_Assistant25FBAResponseItemDetailCell_contentItem;
  v8 = *&v1[OBJC_IVAR____TtC18Feedback_Assistant25FBAResponseItemDetailCell_contentItem];
  v72 = v1;
  if (v8)
  {
    v9 = swift_unknownObjectWeakLoadStrong();
    if (!v9)
    {
LABEL_81:
      __break(1u);
      goto LABEL_82;
    }

    v10 = v9;
    v69 = v8;
    v11 = [v69 displayTitle];
    v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v13;

    v15 = *&v1[v7];
    if (v15)
    {
      v16 = [v15 feedback];
      v17 = [v16 status];
    }

    else
    {
      v17 = 0;
    }

    v19 = v69;
    sub_100075574(v12, v14, v17, [v69 isClosedFeedback]);

    v21 = [v69 formResponseStub];
    if (v21)
    {
      v22 = v21;
      v23 = [v21 questionGroupStubs];
      if (!v23)
      {

        goto LABEL_51;
      }

      v24 = v23;
      v68 = v22;
      sub_1000497E4(0, &qword_10010A508, FBKQuestionGroupStub_ptr);
      v25 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      if (v25 >> 62)
      {
        goto LABEL_46;
      }

      for (i = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
      {
        v27 = 0;
        v71 = v2;
        v70 = i;
        while (1)
        {
          if ((v25 & 0xC000000000000001) != 0)
          {
            v28 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v27 >= *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_44;
            }

            v28 = *(v25 + 32 + 8 * v27);
          }

          v29 = v28;
          v30 = __OFADD__(v27++, 1);
          if (v30)
          {
            break;
          }

          v31 = swift_unknownObjectWeakLoadStrong();
          if (!v31)
          {
            goto LABEL_76;
          }

          v32 = v31;
          v33 = [objc_allocWithZone(UIStackView) init];
          [v33 setAxis:1];
          [v33 setSpacing:20.0];
          v34 = [v29 title];
          static String._unconditionallyBridgeFromObjectiveC(_:)();

          sub_100075B80();

          v35 = [v29 questionAnswerPairs];
          sub_1000497E4(0, &qword_10010A510, FBKQuestionAnswerPair_ptr);
          v36 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

          if (v36 >> 62)
          {
            v37 = _CocoaArrayWrapper.endIndex.getter();
            if (!v37)
            {
              goto LABEL_30;
            }
          }

          else
          {
            v37 = *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (!v37)
            {
              goto LABEL_30;
            }
          }

          if (v37 < 1)
          {
            goto LABEL_45;
          }

          v38 = 0;
          do
          {
            if ((v36 & 0xC000000000000001) != 0)
            {
              v39 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              v39 = *(v36 + 8 * v38 + 32);
            }

            v40 = v39;
            ++v38;
            v41 = sub_100076590(v39);
            [v33 addArrangedSubview:v41];
          }

          while (v37 != v38);
LABEL_30:

          [v32 addArrangedSubview:v33];

          v2 = v71;
          v42 = swift_unknownObjectWeakLoadStrong();
          if (!v42)
          {
            goto LABEL_77;
          }

          v43 = v42;
          v44 = [objc_allocWithZone(UIView) init];
          [v44 setTranslatesAutoresizingMaskIntoConstraints:0];
          v45 = [v44 heightAnchor];
          v46 = [v45 constraintEqualToConstant:0.5];

          [v46 setActive:1];
          v47 = [objc_opt_self() separatorColor];
          [v44 setBackgroundColor:v47];

          [v43 addArrangedSubview:v44];
          [v43 setCustomSpacing:v44 afterView:8.0];

          if (v27 == v70)
          {
            goto LABEL_32;
          }
        }

        __break(1u);
LABEL_44:
        __break(1u);
LABEL_45:
        __break(1u);
LABEL_46:
        ;
      }

LABEL_32:
      v48 = swift_unknownObjectWeakLoadStrong();
      if (!v48)
      {
        goto LABEL_83;
      }

      v49 = v48;
      v50 = [v48 arrangedSubviews];

      sub_1000497E4(0, &qword_100109D00, UIView_ptr);
      v51 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      if (v51 >> 62)
      {
        v52 = _CocoaArrayWrapper.endIndex.getter();
        if (v52)
        {
LABEL_35:
          v30 = __OFSUB__(v52, 1);
          v53 = v52 - 1;
          if (v30)
          {
            __break(1u);
          }

          else if ((v51 & 0xC000000000000001) == 0)
          {
            if ((v53 & 0x8000000000000000) != 0)
            {
              __break(1u);
            }

            else if (v53 < *((v51 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              v54 = *(v51 + 8 * v53 + 32);
LABEL_40:
              v55 = v54;

              v56 = swift_unknownObjectWeakLoadStrong();
              if (!v56)
              {
LABEL_84:
                __break(1u);
                return;
              }

              v57 = v56;

              [v57 removeArrangedSubview:v55];

              [v55 removeFromSuperview];
              goto LABEL_50;
            }

            __break(1u);
LABEL_76:
            __break(1u);
LABEL_77:
            __break(1u);
            goto LABEL_78;
          }

          v54 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          goto LABEL_40;
        }
      }

      else
      {
        v52 = *((v51 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v52)
        {
          goto LABEL_35;
        }
      }

LABEL_50:

      v19 = v68;
    }
  }

  else
  {
    v18 = [objc_opt_self() appHandle];
    if (!v18)
    {
LABEL_82:
      __break(1u);
LABEL_83:
      __break(1u);
      goto LABEL_84;
    }

    v19 = v18;
    v20 = static os_log_type_t.error.getter();
    os_log(_:dso:log:type:_:)("Content item is nil. Will not show content", 42, 2, &_mh_execute_header, v19, v20, _swiftEmptyArrayStorage);
  }

LABEL_51:

  v58 = swift_unknownObjectWeakLoadStrong();
  if (!v58)
  {
LABEL_80:
    __break(1u);
    goto LABEL_81;
  }

  v59 = v58;
  v60 = [v58 arrangedSubviews];

  sub_1000497E4(0, &qword_100109D00, UIView_ptr);
  v61 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v61 >> 62)
  {
    goto LABEL_68;
  }

  for (j = *((v61 & 0xFFFFFFFFFFFFFF8) + 0x10); j; j = _CocoaArrayWrapper.endIndex.getter())
  {
    v63 = 0;
    while (1)
    {
      if ((v61 & 0xC000000000000001) != 0)
      {
        v64 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v63 >= *((v61 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_67;
        }

        v64 = *(v61 + 8 * v63 + 32);
      }

      v65 = v64;
      v66 = v63 + 1;
      if (__OFADD__(v63, 1))
      {
        break;
      }

      objc_opt_self();
      if (swift_dynamicCastObjCClass() || (objc_opt_self(), swift_dynamicCastObjCClass()))
      {
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
      }

      else
      {
      }

      ++v63;
      if (v66 == j)
      {
        goto LABEL_69;
      }
    }

    __break(1u);
LABEL_67:
    __break(1u);
LABEL_68:
    ;
  }

LABEL_69:

  v67 = sub_100076D1C(_swiftEmptyArrayStorage);

  sub_100074964(v67);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v72 setAccessibilityElements:isa];
}

void sub_100075448()
{
  v1 = [v0 arrangedSubviews];
  sub_1000497E4(0, &qword_100109D00, UIView_ptr);
  v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v2 >> 62)
  {
    v3 = _CocoaArrayWrapper.endIndex.getter();
    if (!v3)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v3)
    {
      goto LABEL_10;
    }
  }

  if (v3 < 1)
  {
    __break(1u);
    return;
  }

  v4 = 0;
  do
  {
    if ((v2 & 0xC000000000000001) != 0)
    {
      v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v5 = *(v2 + 8 * v4 + 32);
    }

    v6 = v5;
    ++v4;
    [v0 removeArrangedSubview:v5];
    [v6 removeFromSuperview];
  }

  while (v3 != v4);
LABEL_10:
}

void sub_100075574(uint64_t a1, uint64_t a2, void *a3, char a4)
{
  v25 = [objc_allocWithZone(UILabel) init];
  [v25 setNumberOfLines:0];
  v7 = String._bridgeToObjectiveC()();
  [v25 setText:v7];

  v8 = sub_100076344();
  [v25 setFont:v8];

  [v4 addArrangedSubview:v25];
  if ((a4 & 1) == 0)
  {
    v11 = v25;
    if (!a3)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v9 = objc_allocWithZone(UILabel);
  v10 = v25;
  v11 = [v9 init];
  [v11 setNumberOfLines:0];
  v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = v13;
  v15 = [objc_opt_self() mainBundle];
  v27._object = 0xE000000000000000;
  v16._object = 0x80000001000CD620;
  v16._countAndFlagsBits = 0xD000000000000015;
  v17.value._countAndFlagsBits = v12;
  v17.value._object = v14;
  v18._countAndFlagsBits = 0;
  v18._object = 0xE000000000000000;
  v27._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v16, v17, v15, v18, v27);

  v19 = String._bridgeToObjectiveC()();

  [v11 setText:v19];

  v20 = [objc_opt_self() secondaryLabelColor];
  [v11 setTextColor:v20];

  [v4 addArrangedSubview:v11];
  [v4 setCustomSpacing:v10 afterView:5.0];

  if (a3)
  {
LABEL_5:
    v21 = objc_allocWithZone(UILabel);
    v22 = a3;
    v23 = [v21 init];
    [v23 setNumberOfLines:0];
    v24 = [v22 attributedStringRepresentation];
    [v23 setAttributedText:v24];

    [v4 addArrangedSubview:v23];
    [v4 setCustomSpacing:v11 afterView:5.0];

    v11 = v23;
  }

LABEL_6:
  sub_10007588C();
}

void sub_10007588C()
{
  v4 = [objc_allocWithZone(UIView) init];
  [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
  v1 = [v4 heightAnchor];
  v2 = [v1 constraintEqualToConstant:0.5];

  [v2 setActive:1];
  v3 = [objc_opt_self() separatorColor];
  [v4 setBackgroundColor:v3];

  [v0 addArrangedSubview:v4];
  [v0 setCustomSpacing:v4 afterView:8.0];
}

void sub_1000759B4(uint64_t a1, uint64_t a2)
{
  v15.receiver = v2;
  v15.super_class = type metadata accessor for FBAResponseItemDetailCell(a1, a2);
  objc_msgSendSuper2(&v15, "layoutSubviews");
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_15;
  }

  v4 = Strong;
  [Strong sizeToFit];

  v5 = swift_unknownObjectWeakLoadStrong();
  if (!v5)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = v5;
  v7 = [v5 arrangedSubviews];

  sub_1000497E4(0, &qword_100109D00, UIView_ptr);
  v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v8 >> 62)
  {
    v9 = _CocoaArrayWrapper.endIndex.getter();
    if (!v9)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v9)
    {
      goto LABEL_12;
    }
  }

  if (v9 < 1)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  for (i = 0; i != v9; ++i)
  {
    if ((v8 & 0xC000000000000001) != 0)
    {
      v11 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v11 = *(v8 + 8 * i + 32);
    }

    v12 = v11;
    [v11 layoutSubviews];
  }

LABEL_12:

  v13 = swift_unknownObjectWeakLoadStrong();
  if (v13)
  {
    v14 = v13;
    [v13 layoutSubviews];

    return;
  }

LABEL_17:
  __break(1u);
}

void sub_100075B80()
{
  v4 = [objc_allocWithZone(UILabel) init];
  [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v4 setNumberOfLines:0];
  v1 = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleFootnote];
  [v4 setFont:v1];

  String.uppercased()();
  v2 = String._bridgeToObjectiveC()();

  [v4 setText:v2];

  v3 = [objc_opt_self() secondaryLabelColor];
  [v4 setTextColor:v3];

  [v0 addArrangedSubview:v4];
  [v0 setCustomSpacing:v4 afterView:8.0];
}

id sub_100075E5C(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for FBAResponseItemDetailCell(a1, a2);
  return objc_msgSendSuper2(&v4, "dealloc");
}

unint64_t sub_100075F00(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100041AA0(&qword_10010A530, &qword_1000C3540);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_100045460(v4, &v11, &qword_10010A538, &qword_1000C3548);
      v5 = v11;
      result = sub_10006906C();
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_10006FB68(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
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

unint64_t sub_100076028(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100041AA0(&qword_10010A520, &qword_1000C3530);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      result = sub_10006906C();
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v5;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
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

unint64_t sub_100076118(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100041AA0(&qword_10010A518, &qword_1000C3528);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_100045460(v4, &v11, &qword_10010A110, qword_1000C30B0);
      v5 = v11;
      result = sub_10006906C();
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_10006FB68(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
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

unint64_t sub_100076240(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100041AA0(&qword_10010A528, &qword_1000C3538);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      swift_unknownObjectRetain();
      result = sub_100065F3C(v5, v6);
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

id sub_100076344()
{
  sub_100041AA0(&qword_10010A0F8, &qword_1000C3520);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1000C29F0;
  *(inited + 32) = UIFontWeightTrait;
  *(inited + 40) = UIFontWeightBold;
  v1 = UIFontWeightTrait;
  v2 = sub_100076028(inited);
  swift_setDeallocating();
  sub_1000454C8(inited + 32, &qword_10010A100, &qword_1000C30A0);
  v3 = [objc_opt_self() preferredFontDescriptorWithTextStyle:UIFontTextStyleHeadline];
  sub_100041AA0(&qword_10010A0F0, &unk_1000C3090);
  v4 = swift_initStackObject();
  *(v4 + 16) = xmmword_1000C29F0;
  *(v4 + 32) = UIFontDescriptorTraitsAttribute;
  *(v4 + 64) = sub_100041AA0(&qword_10010A108, &qword_1000C30A8);
  *(v4 + 40) = v2;
  v5 = UIFontDescriptorTraitsAttribute;
  sub_100076118(v4);
  swift_setDeallocating();
  sub_1000454C8(v4 + 32, &qword_10010A110, qword_1000C30B0);
  type metadata accessor for AttributeName(0);
  sub_1000768D4();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v7 = [v3 fontDescriptorByAddingAttributes:isa];

  v8 = [objc_opt_self() fontWithDescriptor:v7 size:20.0];
  v9 = [objc_allocWithZone(UIFontMetrics) initForTextStyle:UIFontTextStyleHeadline];
  v10 = [v9 scaledFontForFont:v8];

  return v10;
}

id sub_100076590(void *a1)
{
  v2 = [objc_allocWithZone(UIStackView) init];
  [v2 setAxis:1];
  [v2 setSpacing:3.0];
  v3 = [objc_allocWithZone(UILabel) init];
  [v3 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v3 setNumberOfLines:0];
  v4 = objc_opt_self();
  v5 = [v4 preferredFontForTextStyle:UIFontTextStyleHeadline];
  [v3 setFont:v5];

  v6 = [a1 questionText];
  if (!v6)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = String._bridgeToObjectiveC()();
  }

  [v3 setText:v6];

  v7 = [objc_allocWithZone(UILabel) init];
  [v7 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v7 setNumberOfLines:0];
  v8 = [v4 preferredFontForTextStyle:UIFontTextStyleBody];
  [v7 setFont:v8];

  v9 = [a1 answerText];
  if (!v9)
  {
    goto LABEL_7;
  }

  v10 = v9;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = String.count.getter();

  if (v11 < 1)
  {

LABEL_7:
    v12 = [objc_opt_self() mainBundle];
    v17._object = 0x80000001000CD5F0;
    v13._object = 0x80000001000CD5D0;
    v17._countAndFlagsBits = 0xD000000000000026;
    v13._countAndFlagsBits = 0xD00000000000001FLL;
    v14._countAndFlagsBits = 0;
    v14._object = 0xE000000000000000;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v13, 0, v12, v14, v17);

    v15 = String._bridgeToObjectiveC()();

    [v7 setText:v15];

    v10 = [objc_opt_self() secondaryLabelColor];
    [v7 setTextColor:v10];
    goto LABEL_8;
  }

  [v7 setText:v10];
LABEL_8:

  [v2 addArrangedSubview:v3];
  [v2 addArrangedSubview:v7];

  return v2;
}

unint64_t sub_1000768D4()
{
  result = qword_100109068;
  if (!qword_100109068)
  {
    type metadata accessor for AttributeName(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100109068);
  }

  return result;
}

void sub_10007692C(uint64_t a1)
{
  v1 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    sub_1000497E4(0, &qword_100109990, FBKContentItem_ptr);
    sub_10007DA50(&qword_100109998, &qword_100109990, FBKContentItem_ptr, &protocol conformance descriptor for NSObject);
    Set.Iterator.init(_cocoa:)();
    v1 = v21;
    v2 = v22;
    v3 = v23;
    v4 = v24;
    v5 = v25;
  }

  else
  {
    v6 = -1 << *(a1 + 32);
    v2 = a1 + 56;
    v3 = ~v6;
    v7 = -v6;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v5 = v8 & *(a1 + 56);

    v4 = 0;
  }

  v20 = _swiftEmptyArrayStorage;
  while (v1 < 0)
  {
    if (!__CocoaSet.Iterator.next()() || (sub_1000497E4(0, &qword_100109990, FBKContentItem_ptr), swift_dynamicCast(), (v11 = v26) == 0))
    {
LABEL_24:
      sub_100053364(v1);
      return;
    }

LABEL_17:
    v12 = [v11 area];
    if (v12)
    {
      v13 = v12;
      v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v15 = v14;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v20 = sub_100077778(0, *(v20 + 2) + 1, 1, v20);
      }

      v17 = *(v20 + 2);
      v16 = *(v20 + 3);
      if (v17 >= v16 >> 1)
      {
        v20 = sub_100077778((v16 > 1), v17 + 1, 1, v20);
      }

      *(v20 + 2) = v17 + 1;
      v18 = &v20[16 * v17];
      *(v18 + 4) = v19;
      *(v18 + 5) = v15;
    }

    else
    {
    }
  }

  v9 = v4;
  v10 = v5;
  if (v5)
  {
LABEL_13:
    v5 = (v10 - 1) & v10;
    v11 = *(*(v1 + 48) + ((v4 << 9) | (8 * __clz(__rbit64(v10)))));
    if (!v11)
    {
      goto LABEL_24;
    }

    goto LABEL_17;
  }

  while (1)
  {
    v4 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v4 >= ((v3 + 64) >> 6))
    {
      goto LABEL_24;
    }

    v10 = *(v2 + 8 * v4);
    ++v9;
    if (v10)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
}

void *sub_100076C2C(uint64_t a1, unint64_t *a2, void *a3)
{
  v4 = *(a1 + 16);
  result = _swiftEmptyArrayStorage;
  if (v4)
  {
    v10 = _swiftEmptyArrayStorage;
    specialized ContiguousArray.reserveCapacity(_:)();
    v8 = a1 + 32;
    do
    {
      sub_100046784(v8, &v9);
      sub_1000497E4(0, a2, a3);
      swift_dynamicCast();
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v8 += 32;
      --v4;
    }

    while (v4);
    return v10;
  }

  return result;
}

char *sub_100076D30(unint64_t a1, unint64_t *a2, void *a3)
{
  if (a1 >> 62)
  {
    v6 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v6 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v7 = _swiftEmptyArrayStorage;
  if (!v6)
  {
    return v7;
  }

  v17 = _swiftEmptyArrayStorage;
  result = sub_100077CCC(0, v6 & ~(v6 >> 63), 0);
  if ((v6 & 0x8000000000000000) == 0)
  {
    v7 = v17;
    if ((a1 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v6; ++i)
      {
        specialized _ArrayBuffer._getElementSlowPath(_:)();
        sub_1000497E4(0, a2, a3);
        swift_dynamicCast();
        v17 = v7;
        v11 = v7[2];
        v10 = v7[3];
        if (v11 >= v10 >> 1)
        {
          sub_100077CCC((v10 > 1), v11 + 1, 1);
          v7 = v17;
        }

        v7[2] = v11 + 1;
        sub_10006FB68(v16, &v7[4 * v11 + 4]);
      }
    }

    else
    {
      v12 = (a1 + 32);
      sub_1000497E4(0, a2, a3);
      do
      {
        v13 = *v12;
        swift_dynamicCast();
        v17 = v7;
        v15 = v7[2];
        v14 = v7[3];
        if (v15 >= v14 >> 1)
        {
          sub_100077CCC((v14 > 1), v15 + 1, 1);
          v7 = v17;
        }

        v7[2] = v15 + 1;
        sub_10006FB68(v16, &v7[4 * v15 + 4]);
        ++v12;
        --v6;
      }

      while (v6);
    }

    return v7;
  }

  __break(1u);
  return result;
}

void *sub_100076F1C(uint64_t a1)
{
  v1 = a1;
  v2 = *(a1 + 16);
  result = _swiftEmptyArrayStorage;
  if (v2)
  {
    v34 = _swiftEmptyArrayStorage;
    specialized ContiguousArray.reserveCapacity(_:)();
    v32 = v1 + 56;
    v4 = _HashTable.startBucket.getter();
    v5 = *(v1 + 36);
    result = sub_1000497E4(0, &qword_10010A3F8, NSPredicate_ptr);
    v6 = 0;
    v28 = v1 + 64;
    v30 = v1;
    v29 = v5;
    while ((v4 & 0x8000000000000000) == 0 && v4 < 1 << *(v1 + 32))
    {
      v8 = v4 >> 6;
      if ((*(v32 + 8 * (v4 >> 6)) & (1 << v4)) == 0)
      {
        goto LABEL_21;
      }

      if (v5 != *(v1 + 36))
      {
        goto LABEL_22;
      }

      v31 = v6;
      v5 = v2;
      v9 = (*(v1 + 48) + 16 * v4);
      v10 = *v9;
      v11 = v9[1];
      sub_100041AA0(&unk_100109860, qword_1000C2DA0);
      v12 = swift_allocObject();
      *(v12 + 16) = xmmword_1000C29F0;
      *(v12 + 56) = &type metadata for String;
      *(v12 + 64) = sub_100047484();
      *(v12 + 32) = v10;
      *(v12 + 40) = v11;
      swift_bridgeObjectRetain_n();
      v13 = NSPredicate.init(format:_:)();
      v15 = type metadata accessor for FBAFilter(0, v14);
      v16 = objc_allocWithZone(v15);
      v17 = OBJC_IVAR____TtC18Feedback_Assistant9FBAFilter_image;
      *&v16[OBJC_IVAR____TtC18Feedback_Assistant9FBAFilter_image] = 0;
      v16[OBJC_IVAR____TtC18Feedback_Assistant9FBAFilter_active] = 0;
      swift_unknownObjectWeakInit();
      *&v16[OBJC_IVAR____TtC18Feedback_Assistant9FBAFilter_predicate] = v13;
      v18 = &v16[OBJC_IVAR____TtC18Feedback_Assistant9FBAFilter_title];
      *v18 = v10;
      v18[1] = v11;
      v19 = *&v16[v17];
      *&v16[v17] = 0;

      v20 = v13;

      v33.receiver = v16;
      v33.super_class = v15;
      objc_msgSendSuper2(&v33, "init");

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      v1 = v30;
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      result = specialized ContiguousArray._endMutation()();
      v7 = 1 << *(v30 + 32);
      if (v4 >= v7)
      {
        goto LABEL_23;
      }

      v21 = *(v32 + 8 * v8);
      if ((v21 & (1 << v4)) == 0)
      {
        goto LABEL_24;
      }

      v2 = v5;
      LODWORD(v5) = v29;
      if (v29 != *(v30 + 36))
      {
        goto LABEL_25;
      }

      v22 = v21 & (-2 << (v4 & 0x3F));
      if (v22)
      {
        v7 = __clz(__rbit64(v22)) | v4 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v23 = v8 << 6;
        v24 = v8 + 1;
        v25 = (v28 + 8 * v8);
        while (v24 < (v7 + 63) >> 6)
        {
          v27 = *v25++;
          v26 = v27;
          v23 += 64;
          ++v24;
          if (v27)
          {
            result = sub_10007D288(v4, v29, 0);
            v7 = __clz(__rbit64(v26)) + v23;
            goto LABEL_4;
          }
        }

        result = sub_10007D288(v4, v29, 0);
      }

LABEL_4:
      v6 = v31 + 1;
      v4 = v7;
      if (v31 + 1 == v2)
      {
        return v34;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
  }

  return result;
}

BOOL sub_1000774D4(void *a1)
{
  v1 = a1[1];
  v2 = *a1 & 0xFFFFFFFFFFFFLL;
  if ((v1 & 0x2000000000000000) != 0)
  {
    v2 = HIBYTE(v1) & 0xF;
  }

  return v2 != 0;
}

void *sub_1000775A0(void *result, int64_t a2, char a3, void *a4)
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

  sub_100041AA0(&qword_10010A5A0, qword_1000C35B0);
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

char *sub_100077778(char *result, int64_t a2, char a3, char *a4)
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
    sub_100041AA0(&qword_100109890, &qword_1000C2CA0);
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

char *sub_100077884(char *result, int64_t a2, char a3, char *a4)
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
    sub_100041AA0(&qword_10010A040, &unk_1000C37D0);
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

char *sub_100077994(char *result, int64_t a2, char a3, char *a4)
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
    sub_100041AA0(&qword_10010A540, &qword_1000C3560);
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

void *sub_100077A98(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return _swiftEmptyArrayStorage;
  }

  sub_100041AA0(&qword_10010A598, &qword_1000C35A8);
  v4 = *(type metadata accessor for FBKFeedbackUpload.BugSession() - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = j__malloc_size(v7);
  if (v5)
  {
    if ((result - v6) != 0x8000000000000000 || v5 != -1)
    {
      v7[2] = a1;
      v7[3] = 2 * ((result - v6) / v5);
      return v7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_100077B94(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return _swiftEmptyArrayStorage;
  }

  sub_100041AA0(&qword_10010A0D0, &qword_1000C2CB0);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = (2 * (v9 >> 3)) | 1;
  return result;
}

uint64_t **sub_100077C1C(uint64_t *a1)
{
  v1 = a1;
  if ((a1 & 0xC000000000000001) == 0)
  {
    goto LABEL_5;
  }

  v2 = __CocoaSet.count.getter();
  if (!v2)
  {
    return _swiftEmptyArrayStorage;
  }

  while (1)
  {
    v3 = sub_100077B94(v2, 0);

    v1 = sub_10007B5AC(&v5, v3 + 4, v2, v1);
    sub_100053364(v5);
    if (v1 == v2)
    {
      break;
    }

    __break(1u);
LABEL_5:
    v2 = v1[2];
    if (!v2)
    {
      return _swiftEmptyArrayStorage;
    }
  }

  return v3;
}

char *sub_100077CCC(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100077D0C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100077CEC(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100077E1C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100077D0C(char *result, int64_t a2, char a3, char *a4)
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
    sub_100041AA0(&qword_10010A040, &unk_1000C37D0);
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

char *sub_100077E1C(char *result, int64_t a2, char a3, char *a4)
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
    sub_100041AA0(&qword_100109890, &qword_1000C2CA0);
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

Swift::Int sub_100077F3C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_100041AA0(&qword_10010A548, &qword_1000C3568);
  result = static _SetStorage.resize(original:capacity:move:)();
  v5 = result;
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
    v12 = result + 56;
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
      result = Hasher._finalize()();
      v21 = -1 << *(v5 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v12 + 8 * (v22 >> 6))) == 0)
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
          v27 = *(v12 + 8 * v23);
          if (v27 != -1)
          {
            v13 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
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

    v28 = 1 << *(v3 + 32);
    if (v28 >= 64)
    {
      bzero((v3 + 56), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v28;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_10007819C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_100041AA0(&qword_10010A580, &qword_1000C3590);
  result = static _SetStorage.resize(original:capacity:move:)();
  v5 = result;
  if (*(v3 + 16))
  {
    v27 = v1;
    v28 = v3;
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
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v6 << 6)));
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      Hasher.init(_seed:)();
      String.hash(into:)();
      v18 = Hasher._finalize()();

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
        return result;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + 8 * v13) = v17;
      ++*(v5 + 16);
      v3 = v28;
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
      bzero(v7, ((v26 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v26;
    }

    v2 = v27;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

Swift::Int sub_100078418(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  v5 = *v3;
  sub_100041AA0(a2, a3);
  result = static _SetStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
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
    v14 = result + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(*(v5 + 48) + 8 * (v16 | (v8 << 6)));
      result = NSObject._rawHashValue(seed:)(*(v7 + 40));
      v20 = -1 << *(v7 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v14 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v14 + 8 * v22);
          if (v26 != -1)
          {
            v15 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v21) & ~*(v14 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v19;
      ++*(v7 + 16);
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

    v27 = 1 << *(v5 + 32);
    if (v27 >= 64)
    {
      bzero((v5 + 56), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v27;
    }

    *(v5 + 16) = 0;
  }

  *v4 = v7;
  return result;
}

unint64_t sub_10007863C(uint64_t a1, void *a2)
{
  NSObject._rawHashValue(seed:)(a2[5]);
  result = _HashTable.nextHole(atOrAfter:)();
  *(a2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 56) |= 1 << result;
  *(a2[6] + 8 * result) = a1;
  ++a2[2];
  return result;
}

Swift::Int sub_1000786C0(Swift::Int result, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *))
{
  v25 = a3;
  v22 = 0;
  v21 = result;
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
    v15 = (*(v25 + 48) + 16 * v14);
    v16 = v15[1];
    v24[0] = *v15;
    v24[1] = v16;

    v17 = a4(v24);

    if (v4)
    {
      return result;
    }

    if (v17)
    {
      *(v21 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      if (__OFADD__(v22++, 1))
      {
        __break(1u);
LABEL_16:
        v19 = v25;

        return sub_100078AB8(v21, a2, v22, v19);
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
  return result;
}

void *sub_100078834(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *))
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

    v8 = sub_1000786C0(result, a2, a3, a4);

    return v8;
  }

  return result;
}

Swift::Int sub_1000788C4(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

  sub_100041AA0(&qword_10010A588, &qword_1000C3598);
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

Swift::Int sub_100078AB8(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

  sub_100041AA0(&qword_10010A548, &qword_1000C3568);
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
  v29 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = (*(v4 + 48) + 16 * (v13 | (v11 << 6)));
    v17 = *v16;
    v18 = v16[1];
    Hasher.init(_seed:)();

    String.hash(into:)();
    result = Hasher._finalize()();
    v19 = -1 << v9[32];
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
    {
      v23 = 0;
      v24 = (63 - v19) >> 6;
      while (++v21 != v24 || (v23 & 1) == 0)
      {
        v25 = v21 == v24;
        if (v21 == v24)
        {
          v21 = 0;
        }

        v23 |= v25;
        v26 = *(v12 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    v27 = (*(v9 + 6) + 16 * v22);
    *v27 = v17;
    v27[1] = v18;
    ++*(v9 + 2);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v29;
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

uint64_t sub_100078D00(Swift::Int *a1, Swift::Int a2, Swift::Int a3)
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

    sub_100079600(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_100078E50(void *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v7 = Hasher._finalize()();

  v8 = -1 << *(v6 + 32);
  v9 = v7 & ~v8;
  if ((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    while (1)
    {
      v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v13 = v12;
      if (v11 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v13 == v14)
      {

        goto LABEL_12;
      }

      v16 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v16)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
      if (((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

LABEL_12:
    v20 = *(*(v6 + 48) + 8 * v9);
    *a1 = v20;
    v21 = v20;
    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v22 = *v3;
    v18 = a2;
    sub_100079780(v18, v9, isUniquelyReferenced_nonNull_native);
    *v3 = v22;
    *a1 = v18;
    return 1;
  }
}

uint64_t sub_100078FFC(uint64_t *a1, void *a2, unint64_t *a3, void *a4, uint64_t *a5, uint64_t *a6)
{
  v11 = v6;
  v14 = *v6;
  if ((*v6 & 0xC000000000000001) != 0)
  {
    if (v14 < 0)
    {
      v15 = *v6;
    }

    else
    {
      v15 = v14 & 0xFFFFFFFFFFFFFF8;
    }

    v16 = a2;

    v17 = __CocoaSet.member(for:)();

    if (v17)
    {

      sub_1000497E4(0, a3, a4);
      swift_dynamicCast();
      result = 0;
      *a1 = v36;
    }

    else
    {
      result = __CocoaSet.count.getter();
      if (__OFADD__(result, 1))
      {
        __break(1u);
      }

      else
      {
        v27 = sub_100079270(v15, result + 1, a5, a6, a3, a4);
        v28 = v27[2];
        if (v27[3] <= v28)
        {
          sub_100078418(v28 + 1, a5, a6);
        }

        v29 = v16;
        sub_10007863C(v29, v27);

        *v11 = v27;
        *a1 = v29;
        return 1;
      }
    }
  }

  else
  {
    sub_1000497E4(0, a3, a4);
    v19 = NSObject._rawHashValue(seed:)(*(v14 + 40));
    v20 = -1 << *(v14 + 32);
    v21 = v19 & ~v20;
    if ((*(v14 + 56 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21))
    {
      v22 = ~v20;
      while (1)
      {
        v23 = *(*(v14 + 48) + 8 * v21);
        v24 = static NSObject.== infix(_:_:)();

        if (v24)
        {
          break;
        }

        v21 = (v21 + 1) & v22;
        if (((*(v14 + 56 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) == 0)
        {
          goto LABEL_11;
        }
      }

      v30 = *(*(v14 + 48) + 8 * v21);
      *a1 = v30;
      v31 = v30;
      return 0;
    }

    else
    {
LABEL_11:
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v37 = *v11;
      v26 = a2;
      sub_100079470(v26, v21, isUniquelyReferenced_nonNull_native, a5, a6, a3, a4);
      *v11 = v37;
      *a1 = v26;
      return 1;
    }
  }

  return result;
}

Swift::Int sub_100079270(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, unint64_t *a5, void *a6)
{
  if (a2)
  {
    sub_100041AA0(a3, a4);
    v10 = static _SetStorage.convert(_:capacity:)();
    v23 = v10;
    __CocoaSet.makeIterator()();
    if (__CocoaSet.Iterator.next()())
    {
      sub_1000497E4(0, a5, a6);
      do
      {
        swift_dynamicCast();
        v17 = *(v10 + 16);
        if (*(v10 + 24) <= v17)
        {
          sub_100078418(v17 + 1, a3, a4);
        }

        v10 = v23;
        result = NSObject._rawHashValue(seed:)(*(v23 + 40));
        v12 = v23 + 56;
        v13 = -1 << *(v23 + 32);
        v14 = result & ~v13;
        v15 = v14 >> 6;
        if (((-1 << v14) & ~*(v23 + 56 + 8 * (v14 >> 6))) != 0)
        {
          v16 = __clz(__rbit64((-1 << v14) & ~*(v23 + 56 + 8 * (v14 >> 6)))) | v14 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v18 = 0;
          v19 = (63 - v13) >> 6;
          do
          {
            if (++v15 == v19 && (v18 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v20 = v15 == v19;
            if (v15 == v19)
            {
              v15 = 0;
            }

            v18 |= v20;
            v21 = *(v12 + 8 * v15);
          }

          while (v21 == -1);
          v16 = __clz(__rbit64(~v21)) + (v15 << 6);
        }

        *(v12 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
        *(*(v23 + 48) + 8 * v16) = v22;
        ++*(v23 + 16);
      }

      while (__CocoaSet.Iterator.next()());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return &_swiftEmptySetSingleton;
  }

  return v10;
}

void sub_100079470(uint64_t a1, unint64_t a2, char a3, uint64_t *a4, uint64_t *a5, unint64_t *a6, void *a7)
{
  v10 = *(*v7 + 16);
  v11 = *(*v7 + 24);
  if (v11 > v10 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    v12 = a6;
    v13 = a7;
    sub_100078418(v10 + 1, a4, a5);
  }

  else
  {
    if (v11 > v10)
    {
      sub_100079C14(a4, a5);
      goto LABEL_12;
    }

    v12 = a6;
    v13 = a7;
    sub_10007A1E0(v10 + 1, a4, a5);
  }

  v14 = *v7;
  v15 = NSObject._rawHashValue(seed:)(*(*v7 + 40));
  v16 = -1 << *(v14 + 32);
  a2 = v15 & ~v16;
  if ((*(v14 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v17 = ~v16;
    sub_1000497E4(0, v12, v13);
    do
    {
      v18 = *(*(v14 + 48) + 8 * a2);
      v19 = static NSObject.== infix(_:_:)();

      if (v19)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v17;
    }

    while (((*(v14 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v20 = *v7;
  *(*v7 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v20 + 48) + 8 * a2) = a1;
  v21 = *(v20 + 16);
  v22 = __OFADD__(v21, 1);
  v23 = v21 + 1;
  if (!v22)
  {
    *(v20 + 16) = v23;
    return;
  }

  __break(1u);
LABEL_15:
  ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

Swift::Int sub_100079600(Swift::Int result, Swift::Int a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_100077F3C(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_100079968();
      goto LABEL_16;
    }

    sub_100079D54(v8 + 1);
  }

  v10 = *v4;
  Hasher.init(_seed:)();
  String.hash(into:)();
  result = Hasher._finalize()();
  v11 = -1 << *(v10 + 32);
  a3 = result & ~v11;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v12 = ~v11;
    do
    {
      v13 = (*(v10 + 48) + 16 * a3);
      if (*v13 == v7 && v13[1] == a2)
      {
        goto LABEL_19;
      }

      result = _stringCompareWithSmolCheck(_:_:expecting:)();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v12;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v15 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v16 = (*(v15 + 48) + 16 * a3);
  *v16 = v7;
  v16[1] = a2;
  v17 = *(v15 + 16);
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (!v18)
  {
    *(v15 + 16) = v19;
    return result;
  }

  __break(1u);
LABEL_19:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_100079780(uint64_t result, unint64_t a2, char a3)
{
  v4 = v3;
  v6 = result;
  v7 = *(*v3 + 16);
  v8 = *(*v3 + 24);
  if (v8 > v7 && (a3 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a3)
  {
    sub_10007819C(v7 + 1);
  }

  else
  {
    if (v8 > v7)
    {
      result = sub_100079AC4();
      goto LABEL_16;
    }

    sub_100079F8C(v7 + 1);
  }

  v9 = *v3;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v10 = Hasher._finalize()();

  v11 = -1 << *(v9 + 32);
  a2 = v10 & ~v11;
  if ((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v12 = ~v11;
    type metadata accessor for URLResourceKey(0);
    do
    {
      v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v15 = v14;
      if (v13 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v15 == v16)
      {
        goto LABEL_19;
      }

      v18 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v18)
      {
        goto LABEL_20;
      }

      a2 = (a2 + 1) & v12;
    }

    while (((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_16:
  v19 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v19 + 48) + 8 * a2) = v6;
  v20 = *(v19 + 16);
  v21 = __OFADD__(v20, 1);
  v22 = v20 + 1;
  if (!v21)
  {
    *(v19 + 16) = v22;
    return result;
  }

  __break(1u);
LABEL_19:

LABEL_20:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void *sub_100079968()
{
  v1 = v0;
  sub_100041AA0(&qword_10010A548, &qword_1000C3568);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
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

  return result;
}

id sub_100079AC4()
{
  v1 = v0;
  sub_100041AA0(&qword_10010A580, &qword_1000C3590);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
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
        result = v18;
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

  return result;
}

id sub_100079C14(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  sub_100041AA0(a1, a2);
  v4 = *v2;
  v5 = static _SetStorage.copy(original:)();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 56);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 56 + 8 * v8)
    {
      result = memmove(result, (v4 + 56), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 56);
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
        v20 = *(*(v4 + 48) + 8 * v19);
        *(*(v6 + 48) + 8 * v19) = v20;
        result = v20;
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

      v18 = *(v4 + 56 + 8 * v10);
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

  return result;
}

Swift::Int sub_100079D54(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_100041AA0(&qword_10010A548, &qword_1000C3568);
  result = static _SetStorage.resize(original:capacity:move:)();
  v5 = result;
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
    v11 = result + 56;
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
      result = Hasher._finalize()();
      v20 = -1 << *(v5 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v11 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v11 + 8 * v22);
          if (v26 != -1)
          {
            v12 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v21) & ~*(v11 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
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

  return result;
}

uint64_t sub_100079F8C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_100041AA0(&qword_10010A580, &qword_1000C3590);
  result = static _SetStorage.resize(original:capacity:move:)();
  v5 = result;
  if (*(v3 + 16))
  {
    v27 = v1;
    v28 = v3;
    v6 = 0;
    v7 = v3 + 56;
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
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v6 << 6)));
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      Hasher.init(_seed:)();
      v18 = v17;
      String.hash(into:)();
      v19 = Hasher._finalize()();

      v20 = -1 << *(v5 + 32);
      v21 = v19 & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v12 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v12 + 8 * v22);
          if (v26 != -1)
          {
            v13 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v13 = __clz(__rbit64((-1 << v21) & ~*(v12 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + 8 * v13) = v18;
      ++*(v5 + 16);
      v3 = v28;
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v6 >= v11)
      {

        v2 = v27;
        goto LABEL_26;
      }

      v16 = *(v7 + 8 * v6);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
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

  return result;
}

Swift::Int sub_10007A1E0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  v5 = *v3;
  sub_100041AA0(a2, a3);
  result = static _SetStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v27 = v3;
    v8 = 0;
    v9 = 1 << *(v5 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v5 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_15:
      v18 = *(v7 + 40);
      v19 = *(*(v5 + 48) + 8 * (v15 | (v8 << 6)));
      result = NSObject._rawHashValue(seed:)(v18);
      v20 = -1 << *(v7 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v13 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v13 + 8 * v22);
          if (v26 != -1)
          {
            v14 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v14 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v7 + 48) + 8 * v14) = v19;
      ++*(v7 + 16);
    }

    v16 = v8;
    while (1)
    {
      v8 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v8 >= v12)
      {

        v4 = v27;
        goto LABEL_26;
      }

      v17 = *(v5 + 56 + 8 * v8);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
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
    *v4 = v7;
  }

  return result;
}

uint64_t sub_10007A3EC(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_10007BAA4(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_10007A468(v6);
  return specialized ContiguousArray._endMutation()();
}

Swift::Int sub_10007A468(unint64_t *a1)
{
  v2 = a1[1];
  result = _minimumMergeRunLength(_:)(v2);
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v5 = result;
      v6 = v2 / 2;
      if (v2 <= 1)
      {
        v7 = _swiftEmptyArrayStorage;
      }

      else
      {
        type metadata accessor for FBAFilter(0, v4);
        v7 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10) = v6;
      }

      v8 = v7 & 0xFFFFFFFFFFFFFF8;
      v9[0] = ((v7 & 0xFFFFFFFFFFFFFF8) + 32);
      v9[1] = v6;
      sub_10007A6E8(v9, v10, a1, v5);
      *(v8 + 16) = 0;
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
    return sub_10007A56C(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_10007A56C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v26 = *a4;
    v4 = *a4 + 8 * a3 - 8;
    v5 = result - a3;
LABEL_6:
    v24 = v4;
    v25 = a3;
    v6 = *(v26 + 8 * a3);
    v23 = v5;
    while (1)
    {
      v7 = *v4;
      v8 = v6;
      v9 = v7;
      v10 = [v8 title];
      v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v13 = v12;

      v14 = [v9 title];
      v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v17 = v16;

      if (v11 == v15 && v13 == v17)
      {

LABEL_5:
        a3 = v25 + 1;
        v4 = v24 + 8;
        v5 = v23 - 1;
        if (v25 + 1 == a2)
        {
          return result;
        }

        goto LABEL_6;
      }

      v19 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v19 & 1) == 0)
      {
        goto LABEL_5;
      }

      if (!v26)
      {
        break;
      }

      v20 = *v4;
      v6 = *(v4 + 8);
      *v4 = v6;
      *(v4 + 8) = v20;
      v4 -= 8;
      if (__CFADD__(v5++, 1))
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  return result;
}

void sub_10007A6E8(id **a1, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  v6 = a3;
  v7 = a3[1];
  if (v7 < 1)
  {
    v9 = _swiftEmptyArrayStorage;
LABEL_107:
    v5 = *a1;
    if (!*a1)
    {
      goto LABEL_146;
    }

    v4 = v9;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v107 = v4;
LABEL_110:
      v4 = *(v107 + 2);
      if (v4 >= 2)
      {
        do
        {
          v108 = *v6;
          if (!*v6)
          {
            goto LABEL_144;
          }

          v6 = (v4 - 1);
          v109 = *&v107[16 * v4];
          v110 = v107;
          v111 = *&v107[16 * v4 + 24];
          sub_10007AEE8((v108 + 8 * v109), (v108 + 8 * *&v107[16 * v4 + 16]), (v108 + 8 * v111), v5);
          if (v126)
          {
            break;
          }

          if (v111 < v109)
          {
            goto LABEL_133;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v110 = sub_10007B360(v110);
          }

          if (v4 - 2 >= *(v110 + 2))
          {
            goto LABEL_134;
          }

          v112 = &v110[16 * v4];
          *v112 = v109;
          *(v112 + 1) = v111;
          sub_10007B2D4(v4 - 1);
          v107 = v110;
          v4 = *(v110 + 2);
          v6 = a3;
        }

        while (v4 > 1);
      }

LABEL_118:

      return;
    }

LABEL_140:
    v107 = sub_10007B360(v4);
    goto LABEL_110;
  }

  v8 = 0;
  v9 = _swiftEmptyArrayStorage;
  while (1)
  {
    v10 = v8++;
    if (v8 < v7)
    {
      v122 = v7;
      v114 = v9;
      v116 = v10;
      v4 = *v6;
      v11 = *(*v6 + 8 * v8);
      v12 = *(*v6 + 8 * v10);
      v13 = v11;
      v14 = v12;
      v15 = [v13 title];
      v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v18 = v17;

      v19 = [v14 title];
      v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v5 = v21;

      if (v16 == v20 && v18 == v5)
      {
        v127 = 0;
      }

      else
      {
        v127 = _stringCompareWithSmolCheck(_:_:expecting:)();
      }

      v10 = v116;
      v8 = v116 + 2;
      if (v116 + 2 >= v122)
      {
        v6 = a3;
      }

      else
      {
        v4 += 8 * v116 + 16;
        do
        {
          v124 = v8;
          v24 = *(v4 - 8);
          v25 = *v4;
          v26 = v24;
          v27 = [v25 title];
          v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v29 = v28;

          v30 = [v26 title];
          v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v33 = v32;

          if (v5 == v31 && v29 == v33)
          {

            v8 = v124;
            if (v127)
            {
              v6 = a3;
              v9 = v114;
              v10 = v116;
              goto LABEL_26;
            }
          }

          else
          {
            v23 = _stringCompareWithSmolCheck(_:_:expecting:)();

            v8 = v124;
            if ((v127 ^ v23))
            {
              goto LABEL_24;
            }
          }

          ++v8;
          v4 += 8;
        }

        while (v122 != v8);
        v8 = v122;
LABEL_24:
        v6 = a3;
        v10 = v116;
      }

      v9 = v114;
      if (v127)
      {
LABEL_26:
        if (v8 < v10)
        {
          goto LABEL_137;
        }

        if (v10 < v8)
        {
          v35 = 8 * v8 - 8;
          v36 = 8 * v10;
          v37 = v8;
          v38 = v10;
          do
          {
            if (v38 != --v37)
            {
              v39 = *v6;
              if (!*v6)
              {
                goto LABEL_143;
              }

              v40 = *(v39 + v36);
              *(v39 + v36) = *(v39 + v35);
              *(v39 + v35) = v40;
            }

            ++v38;
            v35 -= 8;
            v36 += 8;
          }

          while (v38 < v37);
        }
      }
    }

    v41 = v6[1];
    if (v8 < v41)
    {
      if (__OFSUB__(v8, v10))
      {
        goto LABEL_136;
      }

      if (v8 - v10 < a4)
      {
        break;
      }
    }

LABEL_55:
    if (v8 < v10)
    {
      goto LABEL_135;
    }

    v60 = v9;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v9 = v60;
    }

    else
    {
      v9 = sub_100077994(0, *(v60 + 2) + 1, 1, v60);
    }

    v4 = *(v9 + 2);
    v61 = *(v9 + 3);
    v62 = v4 + 1;
    if (v4 >= v61 >> 1)
    {
      v9 = sub_100077994((v61 > 1), v4 + 1, 1, v9);
    }

    *(v9 + 2) = v62;
    v63 = &v9[16 * v4];
    *(v63 + 4) = v10;
    *(v63 + 5) = v8;
    v64 = *a1;
    if (!*a1)
    {
      goto LABEL_145;
    }

    if (v4)
    {
      while (1)
      {
        v65 = v62 - 1;
        if (v62 >= 4)
        {
          break;
        }

        if (v62 == 3)
        {
          v66 = *(v9 + 4);
          v67 = *(v9 + 5);
          v76 = __OFSUB__(v67, v66);
          v68 = v67 - v66;
          v69 = v76;
LABEL_75:
          if (v69)
          {
            goto LABEL_124;
          }

          v82 = &v9[16 * v62];
          v84 = *v82;
          v83 = *(v82 + 1);
          v85 = __OFSUB__(v83, v84);
          v86 = v83 - v84;
          v87 = v85;
          if (v85)
          {
            goto LABEL_127;
          }

          v88 = &v9[16 * v65 + 32];
          v90 = *v88;
          v89 = *(v88 + 1);
          v76 = __OFSUB__(v89, v90);
          v91 = v89 - v90;
          if (v76)
          {
            goto LABEL_130;
          }

          if (__OFADD__(v86, v91))
          {
            goto LABEL_131;
          }

          if (v86 + v91 >= v68)
          {
            if (v68 < v91)
            {
              v65 = v62 - 2;
            }

            goto LABEL_96;
          }

          goto LABEL_89;
        }

        v92 = &v9[16 * v62];
        v94 = *v92;
        v93 = *(v92 + 1);
        v76 = __OFSUB__(v93, v94);
        v86 = v93 - v94;
        v87 = v76;
LABEL_89:
        if (v87)
        {
          goto LABEL_126;
        }

        v95 = &v9[16 * v65];
        v97 = *(v95 + 4);
        v96 = *(v95 + 5);
        v76 = __OFSUB__(v96, v97);
        v98 = v96 - v97;
        if (v76)
        {
          goto LABEL_129;
        }

        if (v98 < v86)
        {
          goto LABEL_3;
        }

LABEL_96:
        v4 = v65 - 1;
        if (v65 - 1 >= v62)
        {
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
LABEL_136:
          __break(1u);
LABEL_137:
          __break(1u);
LABEL_138:
          __break(1u);
          goto LABEL_139;
        }

        if (!*v6)
        {
          goto LABEL_142;
        }

        v5 = v8;
        v103 = v9;
        v104 = *&v9[16 * v4 + 32];
        v105 = *&v9[16 * v65 + 40];
        sub_10007AEE8((*v6 + 8 * v104), (*v6 + 8 * *&v9[16 * v65 + 32]), (*v6 + 8 * v105), v64);
        if (v126)
        {
          goto LABEL_118;
        }

        if (v105 < v104)
        {
          goto LABEL_120;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v103 = sub_10007B360(v103);
        }

        if (v4 >= *(v103 + 2))
        {
          goto LABEL_121;
        }

        v106 = &v103[16 * v4];
        *(v106 + 4) = v104;
        *(v106 + 5) = v105;
        sub_10007B2D4(v65);
        v9 = v103;
        v62 = *(v103 + 2);
        v8 = v5;
        if (v62 <= 1)
        {
          goto LABEL_3;
        }
      }

      v70 = &v9[16 * v62 + 32];
      v71 = *(v70 - 64);
      v72 = *(v70 - 56);
      v76 = __OFSUB__(v72, v71);
      v73 = v72 - v71;
      if (v76)
      {
        goto LABEL_122;
      }

      v75 = *(v70 - 48);
      v74 = *(v70 - 40);
      v76 = __OFSUB__(v74, v75);
      v68 = v74 - v75;
      v69 = v76;
      if (v76)
      {
        goto LABEL_123;
      }

      v77 = &v9[16 * v62];
      v79 = *v77;
      v78 = *(v77 + 1);
      v76 = __OFSUB__(v78, v79);
      v80 = v78 - v79;
      if (v76)
      {
        goto LABEL_125;
      }

      v76 = __OFADD__(v68, v80);
      v81 = v68 + v80;
      if (v76)
      {
        goto LABEL_128;
      }

      if (v81 >= v73)
      {
        v99 = &v9[16 * v65 + 32];
        v101 = *v99;
        v100 = *(v99 + 1);
        v76 = __OFSUB__(v100, v101);
        v102 = v100 - v101;
        if (v76)
        {
          goto LABEL_132;
        }

        if (v68 < v102)
        {
          v65 = v62 - 2;
        }

        goto LABEL_96;
      }

      goto LABEL_75;
    }

LABEL_3:
    v7 = v6[1];
    if (v8 >= v7)
    {
      goto LABEL_107;
    }
  }

  v42 = v10 + a4;
  if (__OFADD__(v10, a4))
  {
    goto LABEL_138;
  }

  if (v42 >= v41)
  {
    v42 = v6[1];
  }

  if (v42 < v10)
  {
LABEL_139:
    __break(1u);
    goto LABEL_140;
  }

  if (v8 == v42)
  {
    goto LABEL_55;
  }

  v115 = v9;
  v117 = v10;
  v128 = *v6;
  v4 = *v6 + 8 * v8 - 8;
  v43 = v10 - v8;
  v120 = v42;
LABEL_44:
  v123 = v4;
  v125 = v8;
  v44 = *(v128 + 8 * v8);
  v121 = v43;
  v45 = v43;
  while (1)
  {
    v46 = *v4;
    v47 = v44;
    v48 = v46;
    v49 = [v47 title];
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v51 = v50;

    v52 = [v48 title];
    v53 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v55 = v54;

    if (v5 == v53 && v51 == v55)
    {

LABEL_43:
      v8 = v125 + 1;
      v4 = v123 + 8;
      v43 = v121 - 1;
      if ((v125 + 1) == v120)
      {
        v8 = v120;
        v6 = a3;
        v9 = v115;
        v10 = v117;
        goto LABEL_55;
      }

      goto LABEL_44;
    }

    v57 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v57 & 1) == 0)
    {
      goto LABEL_43;
    }

    if (!v128)
    {
      break;
    }

    v58 = *v4;
    v44 = *(v4 + 8);
    *v4 = v44;
    *(v4 + 8) = v58;
    v4 -= 8;
    if (__CFADD__(v45++, 1))
    {
      goto LABEL_43;
    }
  }

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
}