uint64_t sub_100805AC0()
{
  v1 = v0;
  v2 = sub_1005B981C(&qword_101A0A320, &qword_10146D650);
  __chkstk_darwin(v2 - 8);
  v4 = &v11 - v3;
  v5 = type metadata accessor for Date();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = OBJC_IVAR____TtC8Freeform41CRLCollaboratorBaseStatusHUDController_mi_timeStartedShowing;
  swift_beginAccess();
  sub_10005F954(v1 + v9, v4);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    return sub_100806B10(v4);
  }

  (*(v6 + 32))(v8, v4, v5);
  Date.timeIntervalSinceNow.getter();
  return (*(v6 + 8))(v8, v5);
}

void sub_100805D40()
{
  v1 = v0;
  v2 = type metadata accessor for Date();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1005B981C(&qword_101A0A320, &qword_10146D650);
  __chkstk_darwin(v6 - 8);
  v8 = aBlock - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v10 = __chkstk_darwin(v9).n128_u64[0];
  v12 = aBlock - v11;
  if (v0[OBJC_IVAR____TtC8Freeform41CRLCollaboratorBaseStatusHUDController_mi_showing] == 1 && v0[OBJC_IVAR____TtC8Freeform41CRLCollaboratorBaseStatusHUDController_mi_shouldAutoHide] == 1)
  {
    v13 = OBJC_IVAR____TtC8Freeform41CRLCollaboratorBaseStatusHUDController_mi_hideTimer;
    [*&v0[OBJC_IVAR____TtC8Freeform41CRLCollaboratorBaseStatusHUDController_mi_hideTimer] invalidate];
    v14 = *&v0[v13];
    *&v0[v13] = 0;

    v15 = sub_1008066F8();
    v16 = (*((swift_isaMask & *v0) + 0x2E0))();
    sub_10080483C(v15, v16);

    Date.init()();
    (*(v3 + 56))(v12, 0, 1, v2);
    v17 = OBJC_IVAR____TtC8Freeform41CRLCollaboratorBaseStatusHUDController_mi_timeStartedShowing;
    swift_beginAccess();
    sub_100015CDC(v12, &v1[v17]);
    swift_endAccess();
    sub_10005F954(&v1[v17], v8);
    if ((*(v3 + 48))(v8, 1, v2) == 1)
    {
      sub_100806B10(v8);
      v18 = 0.0;
    }

    else
    {
      (*(v3 + 32))(v5, v8, v2);
      Date.timeIntervalSinceNow.getter();
      v20 = fabs(v19);
      (*(v3 + 8))(v5, v2);
      v21 = *&v1[OBJC_IVAR____TtC8Freeform41CRLCollaboratorBaseStatusHUDController_mi_maximumShowDuration];
      v18 = 0.0;
      if (v20 < v21)
      {
        v18 = v21 - v20;
      }
    }

    v22 = swift_allocObject();
    *(v22 + 16) = v1;
    aBlock[4] = sub_100806B78;
    aBlock[5] = v22;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = *"";
    aBlock[2] = sub_10068B39C;
    aBlock[3] = &unk_101888300;
    v23 = _Block_copy(aBlock);
    v24 = objc_opt_self();
    v25 = v1;
    v26 = [v24 timerWithTimeInterval:0 repeats:v23 block:v18];
    _Block_release(v23);

    v27 = *&v1[v13];
    *&v1[v13] = v26;
    v28 = v26;

    if (v28)
    {
      v29 = [objc_opt_self() mainRunLoop];
      [v29 addTimer:v28 forMode:NSRunLoopCommonModes];
    }
  }
}

void sub_100806158(uint64_t a1, uint64_t a2)
{
  sub_100B08A30(0);
  v3 = OBJC_IVAR____TtC8Freeform41CRLCollaboratorBaseStatusHUDController_mi_hideTimer;
  [*(a2 + OBJC_IVAR____TtC8Freeform41CRLCollaboratorBaseStatusHUDController_mi_hideTimer) invalidate];
  v4 = *(a2 + v3);
  *(a2 + v3) = 0;
}

void sub_1008064EC()
{
  if ((*(v0 + OBJC_IVAR____TtC8Freeform41CRLCollaboratorBaseStatusHUDController_mi_setupDone) & 1) == 0)
  {
    *(v0 + OBJC_IVAR____TtC8Freeform41CRLCollaboratorBaseStatusHUDController_mi_setupDone) = 1;
    sub_10105B418();
    v1 = OBJC_IVAR____TtC8Freeform41CRLCollaboratorBaseStatusHUDController_mi_contentView;
    v2 = *(v0 + OBJC_IVAR____TtC8Freeform41CRLCollaboratorBaseStatusHUDController_mi_contentView);
    v3 = sub_1008066F8();
    [v2 addSubview:v3];

    v4 = *((swift_isaMask & *v0) + 0x2E0);
    v5 = *(v0 + v1);
    v6 = v4();
    [v5 addSubview:v6];

    [*(v0 + OBJC_IVAR____TtC8Freeform41CRLCollaboratorBaseStatusHUDController_mi_containerView) addSubview:*(v0 + OBJC_IVAR____TtC8Freeform41CRLCollaboratorBaseStatusHUDController_mi_hudView)];
    v7 = *(v0 + OBJC_IVAR____TtC8Freeform41CRLCollaboratorBaseStatusHUDController_mi____lazy_storage____label);
    v8 = v4();
    sub_10080483C(v7, v8);
  }
}

id sub_1008066F8()
{
  v1 = OBJC_IVAR____TtC8Freeform41CRLCollaboratorBaseStatusHUDController_mi____lazy_storage____label;
  v2 = *(v0 + OBJC_IVAR____TtC8Freeform41CRLCollaboratorBaseStatusHUDController_mi____lazy_storage____label);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC8Freeform41CRLCollaboratorBaseStatusHUDController_mi____lazy_storage____label);
  }

  else
  {
    (*((swift_isaMask & *v0) + 0x2D8))();
    sub_10109C74C();
    v5 = v4;

    [v5 setTranslatesAutoresizingMaskIntoConstraints:0];
    v6 = *(v0 + v1);
    *(v0 + v1) = v5;
    v3 = v5;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

id sub_100806898()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CRLCollaboratorBaseStatusHUDController_mi(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for CRLCollaboratorBaseStatusHUDController_mi(uint64_t a1)
{
  result = qword_101A02050;
  if (!qword_101A02050)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100806A14(uint64_t a1)
{
  sub_10000D990(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_100806B10(uint64_t a1)
{
  v2 = sub_1005B981C(&qword_101A0A320, &qword_10146D650);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100807040()
{
  v1 = v0;
  v2 = sub_1005B981C(&qword_101A0A320, &qword_10146D650);
  __chkstk_darwin(v2 - 8);
  v4 = &v11 - v3;
  v5 = type metadata accessor for Date();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = OBJC_IVAR____TtC8Freeform39CRLTransientStartEndFollowHUDController_timeStartedShowing;
  swift_beginAccess();
  sub_10005F954(v1 + v9, v4);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    return sub_10000CAAC(v4, &qword_101A0A320, &qword_10146D650);
  }

  (*(v6 + 32))(v8, v4, v5);
  Date.timeIntervalSinceNow.getter();
  return (*(v6 + 8))(v8, v5);
}

void sub_1008072D0()
{
  v1 = type metadata accessor for Date();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = aBlock - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1005B981C(&qword_101A0A320, &qword_10146D650);
  __chkstk_darwin(v5 - 8);
  v7 = aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v9 = __chkstk_darwin(v8).n128_u64[0];
  v11 = aBlock - v10;
  if (v0[OBJC_IVAR____TtC8Freeform39CRLTransientStartEndFollowHUDController_showing] == 1 && v0[OBJC_IVAR____TtC8Freeform39CRLTransientStartEndFollowHUDController_shouldAutoHide] == 1)
  {
    v12 = OBJC_IVAR____TtC8Freeform39CRLTransientStartEndFollowHUDController_hideTimer;
    [*&v0[OBJC_IVAR____TtC8Freeform39CRLTransientStartEndFollowHUDController_hideTimer] invalidate];
    v13 = *&v0[v12];
    *&v0[v12] = 0;

    Date.init()();
    (*(v2 + 56))(v11, 0, 1, v1);
    v14 = OBJC_IVAR____TtC8Freeform39CRLTransientStartEndFollowHUDController_timeStartedShowing;
    swift_beginAccess();
    sub_100015CDC(v11, &v0[v14]);
    swift_endAccess();
    sub_10005F954(&v0[v14], v7);
    if ((*(v2 + 48))(v7, 1, v1) == 1)
    {
      sub_10000CAAC(v7, &qword_101A0A320, &qword_10146D650);
      v15 = 0.0;
    }

    else
    {
      (*(v2 + 32))(v4, v7, v1);
      Date.timeIntervalSinceNow.getter();
      v17 = fabs(v16);
      (*(v2 + 8))(v4, v1);
      v18 = *&v0[OBJC_IVAR____TtC8Freeform39CRLTransientStartEndFollowHUDController_maximumShowDuration];
      v19 = v17 < v18;
      v20 = v18 - v17;
      if (v19)
      {
        v15 = v20;
      }

      else
      {
        v15 = 0.0;
      }
    }

    v21 = objc_opt_self();
    v22 = swift_allocObject();
    *(v22 + 16) = v0;
    aBlock[4] = sub_100809CE0;
    aBlock[5] = v22;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = *"";
    aBlock[2] = sub_10068B39C;
    aBlock[3] = &unk_1018883E0;
    v23 = _Block_copy(aBlock);
    v24 = v0;

    v25 = [v21 scheduledTimerWithTimeInterval:0 repeats:v23 block:v15];
    _Block_release(v23);
    v26 = *&v0[v12];
    *&v0[v12] = v25;
  }
}

void sub_100807638(uint64_t a1, uint64_t a2)
{
  sub_100B08A58(0);
  v3 = OBJC_IVAR____TtC8Freeform39CRLTransientStartEndFollowHUDController_hideTimer;
  [*(a2 + OBJC_IVAR____TtC8Freeform39CRLTransientStartEndFollowHUDController_hideTimer) invalidate];
  v4 = *(a2 + v3);
  *(a2 + v3) = 0;
}

uint64_t sub_100807914()
{
  v1 = sub_1005B981C(&qword_101A0DE80, qword_101487000);
  __chkstk_darwin(v1 - 8);
  v3 = &v34 - v2;
  v4 = type metadata accessor for PersonNameComponents();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v0 + OBJC_IVAR____TtC8Freeform39CRLTransientStartEndFollowHUDController_followingParticipantInfo);
  if ((*(v0 + OBJC_IVAR____TtC8Freeform39CRLTransientStartEndFollowHUDController_followingParticipantInfo + 8) & 1) == 0)
  {
    v8;
    sub_1007D6EB8(v3);
    if ((*(v5 + 48))(v3, 1, v4) == 1)
    {
      sub_10000CAAC(v3, &qword_101A0DE80, qword_101487000);
    }

    else
    {
      (*(v5 + 32))(v7, v3, v4);
      v19 = objc_opt_self();
      isa = PersonNameComponents._bridgeToObjectiveC()().super.isa;
      v21 = [v19 localizedStringFromPersonNameComponents:isa style:1 options:0];

      v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v24 = v23;

      (*(v5 + 8))(v7, v4);
      v25 = HIBYTE(v24) & 0xF;
      if ((v24 & 0x2000000000000000) == 0)
      {
        v25 = v22 & 0xFFFFFFFFFFFFLL;
      }

      if (v25)
      {
        goto LABEL_16;
      }
    }

    v22 = sub_1007D7988();
    v24 = v26;
LABEL_16:
    v27 = [objc_opt_self() mainBundle];
    v28 = String._bridgeToObjectiveC()();
    v29 = String._bridgeToObjectiveC()();
    v30 = [v27 localizedStringForKey:v28 value:v29 table:0];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
    v31 = swift_allocObject();
    *(v31 + 16) = xmmword_10146C6B0;
    *(v31 + 56) = &type metadata for String;
    *(v31 + 64) = sub_1000053B0();
    *(v31 + 32) = v22;
    *(v31 + 40) = v24;
    v32 = String.init(format:_:)();

    sub_100809CD4(v8, 0);
    return v32;
  }

  v9 = *(v0 + OBJC_IVAR____TtC8Freeform39CRLTransientStartEndFollowHUDController_isStartFollow);
  v10 = [objc_opt_self() mainBundle];
  v11 = "UDController.swift";
  if (v9)
  {
    v11 = " we don't need the base case.";
    v12 = "d following along with you.";
  }

  else
  {
    v12 = "d following along with you.";
  }

  if (v9)
  {
    v13 = 0xD0000000000000BFLL;
  }

  else
  {
    v13 = 0xD0000000000000BDLL;
  }

  v33 = v12 | 0x8000000000000000;
  v14._countAndFlagsBits = 0xD00000000000002BLL;
  v14._object = (v11 | 0x8000000000000000);
  v15._countAndFlagsBits = 0;
  v15._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v14, 0, v10, v15, *&v13);

  sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_10146C6B0;
  *(v16 + 56) = &type metadata for Int;
  *(v16 + 64) = &protocol witness table for Int;
  *(v16 + 32) = v8;
  v17 = static String.localizedStringWithFormat(_:_:)();

  return v17;
}

id sub_100807DB8()
{
  v0 = [objc_opt_self() labelColor];
  v1 = [objc_opt_self() systemFontOfSize:13.0 weight:UIFontWeightRegular];
  sub_1005B981C(&unk_101A11100, &unk_101471490);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146BDE0;
  *(inited + 32) = NSFontAttributeName;
  v3 = sub_100006370(0, &qword_101A0DE60, UIFont_ptr);
  *(inited + 40) = v1;
  *(inited + 64) = v3;
  *(inited + 72) = NSForegroundColorAttributeName;
  *(inited + 104) = sub_100006370(0, &qword_101A11110, UIColor_ptr);
  *(inited + 80) = v0;
  v4 = NSFontAttributeName;
  v5 = v1;
  v6 = NSForegroundColorAttributeName;
  v7 = v0;
  sub_10006E310(inited);
  swift_setDeallocating();
  sub_1005B981C(&unk_101A0DE70, "nd%");
  swift_arrayDestroy();
  sub_100807914();
  v8 = objc_allocWithZone(NSAttributedString);
  v9 = String._bridgeToObjectiveC()();

  type metadata accessor for Key(0);
  sub_1005CAB2C();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v11 = [v8 initWithString:v9 attributes:isa];

  return v11;
}

void sub_100807FC4()
{
  v1 = v0;
  v121 = OBJC_IVAR____TtC8Freeform39CRLTransientStartEndFollowHUDController_contentView;
  v2 = [*(v0 + OBJC_IVAR____TtC8Freeform39CRLTransientStartEndFollowHUDController_contentView) subviews];
  sub_100006370(0, &qword_1019F6D00, UIView_ptr);
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v3 >> 62)
  {
    goto LABEL_13;
  }

  for (i = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v5 = 0;
    while (1)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_12;
        }

        v6 = *(v3 + 8 * v5 + 32);
      }

      v7 = v6;
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      [v6 removeFromSuperview];

      ++v5;
      if (v8 == i)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    ;
  }

LABEL_14:

  if (*(v1 + OBJC_IVAR____TtC8Freeform39CRLTransientStartEndFollowHUDController_followingParticipantInfo + 8))
  {
    v9 = String._bridgeToObjectiveC()();
    v10 = objc_opt_self();
    v11 = [v10 colorNamed:v9];

    if (!v11)
    {
      __break(1u);
      goto LABEL_42;
    }

    v12 = [v10 systemGrayColor];
    v13 = v12;
    if (*(v1 + OBJC_IVAR____TtC8Freeform39CRLTransientStartEndFollowHUDController_isStartFollow))
    {
      v14 = v11;
    }

    else
    {
      v14 = v12;
    }

    v15 = [objc_opt_self() configurationWithHierarchicalColor:v14];
    v16 = String._bridgeToObjectiveC()();
    v17 = [objc_opt_self() imageNamed:v16];

    if (v17)
    {
      v18 = [v17 imageWithConfiguration:v15];
    }

    else
    {
      v18 = 0;
    }

    v27 = [objc_allocWithZone(UIImageView) initWithImage:v18];
    [v27 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v27 setContentMode:1];
    v28 = v121;
    v29 = *(v1 + v121);
    [v29 addSubview:v27];
  }

  else
  {
    v19 = *(v1 + OBJC_IVAR____TtC8Freeform39CRLTransientStartEndFollowHUDController_followingParticipantInfo);
    v20 = objc_allocWithZone(CNAvatarViewController);
    v21 = v19;
    v22 = [v20 init];
    v23 = *&v21[OBJC_IVAR____TtC8Freeform27CRLCollaborationParticipant_cnContact];
    if (v23)
    {
      v24 = swift_allocObject();
      *(v24 + 16) = xmmword_101465920;
      *(v24 + 32) = v23;
      sub_100006370(0, &qword_101A00EC0, CNContact_ptr);
      v25 = v23;
      isa = Array._bridgeToObjectiveC()().super.isa;

      [v22 setContacts:isa];
    }

    v27 = [v22 view];
    [v27 setTranslatesAutoresizingMaskIntoConstraints:0];
    v28 = v121;
    [*(v1 + v121) addSubview:v27];

    sub_100809CD4(v19, 0);
  }

  v30 = v27;
  v31 = [v30 leadingAnchor];
  v32 = [*(v1 + v28) leadingAnchor];
  v33 = [v31 constraintEqualToAnchor:v32 constant:8.0];

  [v33 setActive:1];
  v34 = [v30 widthAnchor];
  v35 = [v34 constraintEqualToConstant:26.0];

  [v35 setActive:1];
  v36 = [v30 heightAnchor];
  v37 = [v36 constraintEqualToConstant:26.0];

  [v37 setActive:1];
  v38 = [v30 centerYAnchor];
  v39 = [*(v1 + v28) centerYAnchor];
  v40 = [v38 constraintEqualToAnchor:v39];

  [v40 setActive:1];
  v41 = [objc_allocWithZone(UIStackView) init];
  [v41 setAlignment:1];
  [v41 setAxis:1];
  [v41 setDistribution:4];
  [v41 setSpacing:3.0];
  v42 = v41;
  [v42 setTranslatesAutoresizingMaskIntoConstraints:0];
  [*(v1 + v28) addSubview:v42];
  v43 = sub_100808F98();
  v44 = objc_opt_self();
  v45 = v43;
  v46 = [v44 labelColor];
  [v45 setTextColor:v46];

  [v45 setNumberOfLines:2];
  v47 = sub_100807DB8();
  v119 = v45;
  v120 = v30;
  if (v47)
  {
    v48 = v47;
  }

  else
  {
    v118 = objc_opt_self();
    v49 = [v118 _atomicIncrementAssertCount];
    v122 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v122, "invalid nil found when unwrapping value", 39, 2u);
    StaticString.description.getter("setupAndLayoutAdaptableView()", 29, 2);
    v50 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLApplication/CRLTransientStartEndFollowHUDController.swift", 114, 2);
    v51 = String._bridgeToObjectiveC()();

    v52 = [v51 lastPathComponent];

    v53 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v55 = v54;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v56 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146CA70;
    *(inited + 56) = &type metadata for Int32;
    *(inited + 64) = &protocol witness table for Int32;
    *(inited + 32) = v49;
    v58 = sub_100006370(0, &qword_1019F4D30, NSString_ptr);
    *(inited + 96) = v58;
    v59 = sub_1005CF04C();
    *(inited + 104) = v59;
    *(inited + 72) = v50;
    *(inited + 136) = &type metadata for String;
    v60 = sub_1000053B0();
    *(inited + 112) = v53;
    *(inited + 120) = v55;
    *(inited + 176) = &type metadata for UInt;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 144) = v60;
    *(inited + 152) = 270;
    v61 = v122;
    *(inited + 216) = v58;
    *(inited + 224) = v59;
    *(inited + 192) = v61;
    v62 = v50;
    v63 = v61;
    v64 = static os_log_type_t.error.getter();
    sub_100005404(v56, &_mh_execute_header, v64, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
    swift_arrayDestroy();
    v65 = static os_log_type_t.error.getter();
    sub_100005404(v56, &_mh_execute_header, v65, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v66 = swift_allocObject();
    v66[2] = 8;
    v66[3] = 0;
    v66[4] = 0;
    v66[5] = 0;
    v67 = __VaListBuilder.va_list()();
    StaticString.description.getter("setupAndLayoutAdaptableView()", 29, 2);
    v68 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLApplication/CRLTransientStartEndFollowHUDController.swift", 114, 2);
    v69 = String._bridgeToObjectiveC()();

    StaticString.description.getter("invalid nil found when unwrapping value", 39, 2);
    v70 = String._bridgeToObjectiveC()();

    [v118 handleFailureInFunction:v68 file:v69 lineNumber:270 isFatal:0 format:v70 args:v67];

    v71 = objc_allocWithZone(NSAttributedString);
    v72 = String._bridgeToObjectiveC()();
    v48 = [v71 initWithString:v72];

    v45 = v119;
    v30 = v120;
  }

  [v45 setAttributedText:v48];

  v73 = [v42 leadingAnchor];
  v74 = [v30 trailingAnchor];
  v75 = [v73 constraintEqualToAnchor:v74 constant:8.0];

  [v75 setActive:1];
  v76 = [v42 trailingAnchor];
  v77 = [*(v1 + v121) trailingAnchor];
  v78 = [v76 constraintEqualToAnchor:v77 constant:-20.0];

  [v78 setActive:1];
  v79 = [v42 topAnchor];
  v80 = [*(v1 + v121) topAnchor];
  v81 = [v79 constraintEqualToAnchor:v80];

  [v81 setActive:1];
  v82 = [v42 bottomAnchor];

  v83 = [*(v1 + v121) bottomAnchor];
  v84 = [v82 constraintEqualToAnchor:v83];

  [v84 setActive:1];
  [v42 addArrangedSubview:v45];
  [v45 setTextAlignment:0];

  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    v94 = (v1 + OBJC_IVAR____TtC8Freeform39CRLTransientStartEndFollowHUDController_height);
    goto LABEL_37;
  }

  [Strong maxTextWidth];
  v87 = v86;
  swift_unknownObjectRelease();
  v88 = [v45 text];
  if (!v88)
  {
    v94 = (v1 + OBJC_IVAR____TtC8Freeform39CRLTransientStartEndFollowHUDController_height);
LABEL_39:
    v95 = 40.0;
    v96 = 0x404C000000000000;
    goto LABEL_40;
  }

  v89 = v88;
  v90 = [v45 font];
  if (v90)
  {
    v91 = v90;
    sub_100F16A40(v90, v87);
    v93 = v92;

    v94 = (v1 + OBJC_IVAR____TtC8Freeform39CRLTransientStartEndFollowHUDController_height);
    if (v93 == 1)
    {
      goto LABEL_39;
    }

LABEL_37:
    v95 = 50.0;
    v96 = 0x4050800000000000;
LABEL_40:
    *v94 = v96;
    v97 = OBJC_IVAR____TtC8Freeform39CRLTransientStartEndFollowHUDController_hudView;
    v98 = [*(v1 + OBJC_IVAR____TtC8Freeform39CRLTransientStartEndFollowHUDController_hudView) heightAnchor];
    v99 = [v98 constraintEqualToConstant:v95];

    [v99 setActive:1];
    v100 = [*(v1 + v97) leadingAnchor];
    v101 = OBJC_IVAR____TtC8Freeform39CRLTransientStartEndFollowHUDController_containerView;
    v102 = [*(v1 + OBJC_IVAR____TtC8Freeform39CRLTransientStartEndFollowHUDController_containerView) leadingAnchor];
    v103 = [v100 constraintEqualToAnchor:v102];

    [v103 setActive:1];
    v104 = [*(v1 + v97) topAnchor];
    v105 = [*(v1 + v101) topAnchor];
    v106 = [v104 constraintEqualToAnchor:v105];

    [v106 setActive:1];
    v107 = [*(v1 + v97) trailingAnchor];
    v108 = [*(v1 + v101) trailingAnchor];
    v109 = [v107 constraintEqualToAnchor:v108];

    [v109 setActive:1];
    v110 = [*(v1 + v101) heightAnchor];
    v111 = [v110 constraintEqualToConstant:*v94];

    [v111 setActive:1];
    v112 = *(v1 + v101);
    v113 = *v94;
    v114 = objc_opt_self();
    v115 = v112;
    v116 = [v114 constraintWithItem:v115 attribute:8 relatedBy:0 toItem:0 attribute:8 multiplier:1.0 constant:v113];

    v117 = *(v1 + OBJC_IVAR____TtC8Freeform39CRLTransientStartEndFollowHUDController_heightConstraint);
    *(v1 + OBJC_IVAR____TtC8Freeform39CRLTransientStartEndFollowHUDController_heightConstraint) = v116;

    return;
  }

LABEL_42:
  __break(1u);
}

id sub_100808F98()
{
  v1 = OBJC_IVAR____TtC8Freeform39CRLTransientStartEndFollowHUDController____lazy_storage____label;
  v2 = *(v0 + OBJC_IVAR____TtC8Freeform39CRLTransientStartEndFollowHUDController____lazy_storage____label);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC8Freeform39CRLTransientStartEndFollowHUDController____lazy_storage____label);
  }

  else
  {
    sub_100807914();
    sub_10109C74C();
    v5 = v4;

    [v5 setTranslatesAutoresizingMaskIntoConstraints:0];
    v6 = *(v0 + v1);
    *(v0 + v1) = v5;
    v3 = v5;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

char *sub_100809028(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, double a5)
{
  v5 = a4;
  v9 = objc_allocWithZone(type metadata accessor for CRLTransientStartEndFollowHUDController(0));
  swift_getObjectType();
  swift_unknownObjectRetain();
  v10 = a2;
  v11 = swift_unknownObjectRetain();
  v12 = sub_10080996C(v11, a2, 0, a3, v5, v9);
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  v13 = &v12[OBJC_IVAR____TtC8Freeform39CRLTransientStartEndFollowHUDController_canvasWidth];
  *v13 = a5;
  *(v13 + 8) = 0;
  if (v12[OBJC_IVAR____TtC8Freeform39CRLTransientStartEndFollowHUDController_setupDone] == 1)
  {
    v14 = v12;
  }

  else
  {
    v12[OBJC_IVAR____TtC8Freeform39CRLTransientStartEndFollowHUDController_setupDone] = 1;
    v15 = v12;
    sub_10105B418();
    [*&v15[OBJC_IVAR____TtC8Freeform39CRLTransientStartEndFollowHUDController_containerView] addSubview:*&v15[OBJC_IVAR____TtC8Freeform39CRLTransientStartEndFollowHUDController_hudView]];
    sub_100807FC4();
  }

  v16 = [objc_allocWithZone(UITapGestureRecognizer) initWithTarget:v12 action:"touchedHUDWithSender:"];
  [v16 setNumberOfTapsRequired:1];
  [*&v12[OBJC_IVAR____TtC8Freeform39CRLTransientStartEndFollowHUDController_hudView] addGestureRecognizer:v16];

  v17 = sub_100807914();
  v19 = v18;
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  v20 = &v12[OBJC_IVAR____TtC8Freeform39CRLTransientStartEndFollowHUDController_accessibilityAnnouncement];
  *v20 = v17;
  v20[1] = v19;

  return v12;
}

char *sub_1008092AC(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, double a5)
{
  v5 = a4;
  v9 = objc_allocWithZone(type metadata accessor for CRLTransientStartEndFollowHUDController(0));
  swift_getObjectType();
  swift_unknownObjectRetain();
  v10 = swift_unknownObjectRetain();
  v11 = sub_10080996C(v10, a2, 1, a3, v5, v9);
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  v12 = &v11[OBJC_IVAR____TtC8Freeform39CRLTransientStartEndFollowHUDController_canvasWidth];
  *v12 = a5;
  *(v12 + 8) = 0;
  if (v11[OBJC_IVAR____TtC8Freeform39CRLTransientStartEndFollowHUDController_setupDone] == 1)
  {
    v13 = v11;
  }

  else
  {
    v11[OBJC_IVAR____TtC8Freeform39CRLTransientStartEndFollowHUDController_setupDone] = 1;
    v14 = v11;
    sub_10105B418();
    [*&v14[OBJC_IVAR____TtC8Freeform39CRLTransientStartEndFollowHUDController_containerView] addSubview:*&v14[OBJC_IVAR____TtC8Freeform39CRLTransientStartEndFollowHUDController_hudView]];
    sub_100807FC4();
  }

  v15 = [objc_allocWithZone(UITapGestureRecognizer) initWithTarget:v11 action:"touchedHUDWithSender:"];
  [v15 setNumberOfTapsRequired:1];
  [*&v11[OBJC_IVAR____TtC8Freeform39CRLTransientStartEndFollowHUDController_hudView] addGestureRecognizer:v15];

  v16 = sub_100807914();
  v18 = v17;
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  v19 = &v11[OBJC_IVAR____TtC8Freeform39CRLTransientStartEndFollowHUDController_accessibilityAnnouncement];
  *v19 = v16;
  v19[1] = v18;

  return v11;
}

id sub_100809544()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CRLTransientStartEndFollowHUDController(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for CRLTransientStartEndFollowHUDController(uint64_t a1)
{
  result = qword_101A02108;
  if (!qword_101A02108)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1008096E8(uint64_t a1)
{
  sub_10000D990(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t getEnumTagSinglePayload for HVStackKind(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 9))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for HVStackKind(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
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

id sub_10080996C(uint64_t a1, void *a2, char a3, uint64_t a4, char a5, _BYTE *a6)
{
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  *&a6[OBJC_IVAR____TtC8Freeform39CRLTransientStartEndFollowHUDController_type] = 2;
  *&a6[OBJC_IVAR____TtC8Freeform39CRLTransientStartEndFollowHUDController_minimumShowDuration] = 0x3FF0000000000000;
  *&a6[OBJC_IVAR____TtC8Freeform39CRLTransientStartEndFollowHUDController_maximumShowDuration] = 0x4014000000000000;
  v10 = OBJC_IVAR____TtC8Freeform39CRLTransientStartEndFollowHUDController_timeStartedShowing;
  v11 = type metadata accessor for Date();
  (*(*(v11 - 8) + 56))(&a6[v10], 1, 1, v11);
  *&a6[OBJC_IVAR____TtC8Freeform39CRLTransientStartEndFollowHUDController_hideTimer] = 0;
  a6[OBJC_IVAR____TtC8Freeform39CRLTransientStartEndFollowHUDController_shouldAutoHide] = 1;
  a6[OBJC_IVAR____TtC8Freeform39CRLTransientStartEndFollowHUDController_showing] = 0;
  a6[OBJC_IVAR____TtC8Freeform39CRLTransientStartEndFollowHUDController_animating] = 0;
  a6[OBJC_IVAR____TtC8Freeform39CRLTransientStartEndFollowHUDController_hiding] = 0;
  v12 = &a6[OBJC_IVAR____TtC8Freeform39CRLTransientStartEndFollowHUDController_accessibilityAnnouncement];
  *v12 = 0;
  v12[1] = 0;
  a6[OBJC_IVAR____TtC8Freeform39CRLTransientStartEndFollowHUDController_swipable] = 1;
  *&a6[OBJC_IVAR____TtC8Freeform39CRLTransientStartEndFollowHUDController_swipeGestureRecognizer] = 0;
  a6[OBJC_IVAR____TtC8Freeform39CRLTransientStartEndFollowHUDController_hideOnTouch] = 0;
  a6[OBJC_IVAR____TtC8Freeform39CRLTransientStartEndFollowHUDController_setupDone] = 0;
  *&a6[OBJC_IVAR____TtC8Freeform39CRLTransientStartEndFollowHUDController_height] = 0x4045000000000000;
  *&a6[OBJC_IVAR____TtC8Freeform39CRLTransientStartEndFollowHUDController_width] = 0;
  *&a6[OBJC_IVAR____TtC8Freeform39CRLTransientStartEndFollowHUDController_heightConstraint] = 0;
  *&a6[OBJC_IVAR____TtC8Freeform39CRLTransientStartEndFollowHUDController_constraints] = _swiftEmptyArrayStorage;
  v13 = &a6[OBJC_IVAR____TtC8Freeform39CRLTransientStartEndFollowHUDController_canvasWidth];
  *v13 = 0;
  v13[8] = 1;
  v14 = OBJC_IVAR____TtC8Freeform39CRLTransientStartEndFollowHUDController_isStartFollow;
  a6[OBJC_IVAR____TtC8Freeform39CRLTransientStartEndFollowHUDController_isStartFollow] = 0;
  *&a6[OBJC_IVAR____TtC8Freeform39CRLTransientStartEndFollowHUDController____lazy_storage____label] = 0;
  swift_unknownObjectWeakAssign();
  v15 = &a6[OBJC_IVAR____TtC8Freeform39CRLTransientStartEndFollowHUDController_followingParticipantInfo];
  *v15 = a2;
  a3 &= 1u;
  v15[8] = a3;
  swift_unknownObjectWeakAssign();
  a6[v14] = a5;
  v16 = objc_allocWithZone(UIView);
  sub_100809CC8(a2, a3);
  v17 = [v16 initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v18 = [objc_allocWithZone(type metadata accessor for HUDView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v19 = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  [v17 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v18 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v19 setTranslatesAutoresizingMaskIntoConstraints:0];
  v20 = v17;
  sub_1005CAFC0(v17);
  *&a6[OBJC_IVAR____TtC8Freeform39CRLTransientStartEndFollowHUDController_contentView] = v20;
  *&a6[OBJC_IVAR____TtC8Freeform39CRLTransientStartEndFollowHUDController_hudView] = v18;
  *&a6[OBJC_IVAR____TtC8Freeform39CRLTransientStartEndFollowHUDController_containerView] = v19;
  v24.receiver = a6;
  v24.super_class = type metadata accessor for CRLTransientStartEndFollowHUDController(0);
  v21 = v18;
  v22 = objc_msgSendSuper2(&v24, "init");
  swift_unknownObjectRelease();
  sub_100809CD4(a2, a3);

  swift_unknownObjectRelease();
  return v22;
}

id sub_100809CC8(id result, char a2)
{
  if ((a2 & 1) == 0)
  {
    return result;
  }

  return result;
}

void sub_100809CD4(id a1, char a2)
{
  if ((a2 & 1) == 0)
  {
  }
}

uint64_t sub_100809D00(uint64_t a1)
{
  sub_100601584(a1, v4);
  if (!v5)
  {
    sub_1005E09AC(v4);
    goto LABEL_5;
  }

  type metadata accessor for CRLSceneInfo(0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_5:
    v1 = 0;
    return v1 & 1;
  }

  v1 = static UUID.== infix(_:_:)();

  return v1 & 1;
}

uint64_t sub_10080A0D4()
{
  swift_getKeyPath();
  sub_10006840C(&qword_101A02178, type metadata accessor for CRLSceneInfo, "1f;");
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return swift_unknownObjectRetain();
}

uint64_t sub_10080A274@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_10006840C(&qword_101A02178, type metadata accessor for CRLSceneInfo, "1f;");
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + OBJC_IVAR____TtC8Freeform12CRLSceneInfo__parentInfo);
  return swift_unknownObjectRetain();
}

uint64_t sub_10080A3FC()
{
  swift_getKeyPath();
  sub_10006840C(&qword_101A02178, type metadata accessor for CRLSceneInfo, "1f;");
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + OBJC_IVAR____TtC8Freeform12CRLSceneInfo__editorClass);
}

void sub_10080A5BC(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_10006840C(&qword_101A02178, type metadata accessor for CRLSceneInfo, "1f;");
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + OBJC_IVAR____TtC8Freeform12CRLSceneInfo__editorClass);
}

double sub_10080A66C(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_getKeyPath();
  sub_10006840C(&qword_101A02178, type metadata accessor for CRLSceneInfo, "1f;");
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  return result;
}

uint64_t sub_10080A790()
{
  v1 = v0;
  *&v12 = 0;
  *(&v12 + 1) = 0xE000000000000000;
  _StringGuts.grow(_:)(45);
  v14 = v12;
  v13.receiver = v0;
  v13.super_class = type metadata accessor for CRLSceneInfo(0);
  v2 = objc_msgSendSuper2(&v13, "description");
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;

  v6._countAndFlagsBits = v3;
  v6._object = v5;
  String.append(_:)(v6);

  v7._object = 0xED0000203A444920;
  v7._countAndFlagsBits = 0x656E656353202D20;
  String.append(_:)(v7);
  type metadata accessor for UUID();
  sub_10006840C(&qword_101A02180, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v8._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v8);

  v9._countAndFlagsBits = 0x3A656D614E202D20;
  v9._object = 0xE900000000000020;
  String.append(_:)(v9);
  String.append(_:)(*&v1[OBJC_IVAR____TtC8Freeform12CRLSceneInfo_name]);
  v10._object = 0xEF203A7463655220;
  v10._countAndFlagsBits = 0x656E656353202D20;
  String.append(_:)(v10);
  type metadata accessor for CGRect(0);
  _print_unlocked<A, B>(_:_:)();
  return v14;
}

id sub_10080A988()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CRLSceneInfo(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for CRLSceneInfo(uint64_t a1)
{
  result = qword_101A02160;
  if (!qword_101A02160)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10080AAE4(uint64_t a1)
{
  result = type metadata accessor for UUID();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for ObservationRegistrar();
    if (v3 <= 0x3F)
    {
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

uint64_t sub_10080AC1C@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC8Freeform12CRLSceneInfo_sceneID;
  v5 = type metadata accessor for UUID();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t sub_10080ACC4()
{
  *(*(v0 + 16) + OBJC_IVAR____TtC8Freeform12CRLSceneInfo__parentInfo) = *(v0 + 24);
  swift_unknownObjectRetain();
  return swift_unknownObjectRelease();
}

unint64_t sub_10080AD08()
{
  result = qword_101A287B0;
  if (!qword_101A287B0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_101A287B0);
  }

  return result;
}

uint64_t sub_10080AD84()
{
  if (*(v0 + 32))
  {
    v1 = *(v0 + 32);
  }

  else
  {
    _s16GeometryImporterCMa();
    v1 = swift_allocObject();
    *(v0 + 32) = v1;
  }

  return v1;
}

uint64_t sub_10080ADD8()
{
  if (*(v0 + 40))
  {
    v1 = *(v0 + 40);
  }

  else
  {
    _s12PathImporterCMa();
    v1 = swift_allocObject();
    *(v0 + 40) = v1;
  }

  return v1;
}

unint64_t sub_10080AE2C()
{
  v2 = v1;
  swift_beginAccess();
  v3 = *(v0 + 24);
  if (!(v3 >> 62))
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_18:
    v2 = 0x7463657078656E75;
    sub_10080B4B4();
    swift_willThrowTypedImpl();
    return v2;
  }

  v4 = _CocoaArrayWrapper.endIndex.getter();
  if (!v4)
  {
    goto LABEL_18;
  }

LABEL_3:
  v5 = v4 - 1;
  if (__OFSUB__(v4, 1))
  {
    __break(1u);
  }

  else if ((v3 & 0xC000000000000001) == 0)
  {
    if ((v5 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v5 < *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v6 = *(v3 + 8 * v5 + 32);

      goto LABEL_8;
    }

    __break(1u);
    goto LABEL_24;
  }

  v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();

LABEL_8:
  sub_100FE0D70(v6);
  if (v2)
  {
    v2 = v7;

    return v2;
  }

  swift_beginAccess();
  v8 = *(v0 + 24);
  if (!(v8 >> 62))
  {
    if (*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_12;
    }

LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

LABEL_24:
  if (!_CocoaArrayWrapper.endIndex.getter())
  {
    goto LABEL_25;
  }

LABEL_12:
  v2 = v0;
  if (sub_100FB0C8C())
  {
LABEL_16:

    swift_endAccess();

    return v2;
  }

  v9 = *(v0 + 24);
  if (v9 >> 62)
  {
LABEL_26:
    v13 = _CocoaArrayWrapper.endIndex.getter();
    v11 = __OFSUB__(v13, 1);
    result = v13 - 1;
    if (!v11)
    {
      goto LABEL_15;
    }

    goto LABEL_28;
  }

  v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v11 = __OFSUB__(v10, 1);
  result = v10 - 1;
  if (!v11)
  {
LABEL_15:
    sub_10106B378(result);
    goto LABEL_16;
  }

LABEL_28:
  __break(1u);
  return result;
}

uint64_t sub_10080B048()
{

  return swift_deallocClassInstance();
}

uint64_t sub_10080B0BC()
{

  return swift_deallocClassInstance();
}

uint64_t sub_10080B130(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)();
  }
}

uint64_t sub_10080B160()
{
  v1 = *v0;
  v2 = v0[3];
  if (v2)
  {
    v3 = v0[2];
    String.append(_:)(*(&v2 - 1));
    v5 = 8238;
    v4 = 0xE200000000000000;
  }

  else
  {
    v5 = 0;
    v4 = 0xE000000000000000;
  }

  v6._countAndFlagsBits = v5;
  v6._object = v4;
  String.append(_:)(v6);

  return v1;
}

uint64_t sub_10080B1F0(uint64_t *a1, const char *a2, uint64_t a3, uint64_t a4, const char *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1[1])
  {
    v9 = *a1;
  }

  else
  {
    v9 = sub_10080B298(a2, a3, a4, a5, a6, a7);
    v11 = v10;
    swift_beginAccess();
    *a1 = v9;
    a1[1] = v11;
  }

  return v9;
}

uint64_t sub_10080B298(const char *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6)
{
  _StringGuts.grow(_:)(35);

  v12._countAndFlagsBits = 0x6F6974636E756620;
  v12._object = 0xEB00000000203A6ELL;
  String.append(_:)(v12);
  v13._countAndFlagsBits = StaticString.description.getter(a1, a2, a3);
  String.append(_:)(v13);

  v14._countAndFlagsBits = 0x203A656C6966202CLL;
  v14._object = 0xE800000000000000;
  String.append(_:)(v14);
  v15._countAndFlagsBits = StaticString.description.getter(a4, a5, a6);
  String.append(_:)(v15);

  v16._countAndFlagsBits = 0x203A656E696C202CLL;
  v16._object = 0xE800000000000000;
  String.append(_:)(v16);
  v17._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v17);

  return 0;
}

uint64_t sub_10080B3F0()
{
  type metadata accessor for CRLCLImport.DrawableContainer();
  v1 = swift_allocObject();
  *(v1 + 16) = sub_100BD5E00(_swiftEmptyArrayStorage);
  *(v1 + 24) = _swiftEmptyArrayStorage;
  swift_beginAccess();
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((*(v0 + 24) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v0 + 24) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  return swift_endAccess();
}

unint64_t sub_10080B4B4()
{
  result = qword_101A1DEA0;
  if (!qword_101A1DEA0)
  {
    result = swift_getWitnessTable("q=;", &type metadata for CRLCLImport.ImportError, v0, v1);
    atomic_store(result, &qword_101A1DEA0);
  }

  return result;
}

unint64_t sub_10080B518(void *a1)
{
  a1[1] = sub_10080B550();
  a1[2] = sub_10080B5A4();
  result = sub_10080B4B4();
  a1[3] = result;
  return result;
}

unint64_t sub_10080B550()
{
  result = qword_101A02370;
  if (!qword_101A02370)
  {
    result = swift_getWitnessTable(byte_10147F82C, &type metadata for CRLCLImport.ImportError, v0, v1);
    atomic_store(result, &qword_101A02370);
  }

  return result;
}

unint64_t sub_10080B5A4()
{
  result = qword_101A02378;
  if (!qword_101A02378)
  {
    result = swift_getWitnessTable(byte_10147F854, &type metadata for CRLCLImport.ImportError, v0, v1);
    atomic_store(result, &qword_101A02378);
  }

  return result;
}

char *sub_10080B5F8(_BYTE *a1)
{
  v71 = *v1;
  v4 = sub_1005B981C(&unk_101A1B880, &unk_10147AB00);
  __chkstk_darwin(v4 - 8);
  v6 = &v65 - v5;
  v7 = type metadata accessor for CRLAssetData(0);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v65 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10080C418(a1, &v76, v72);
  if (!v2)
  {
    v65 = v10;
    v66 = v6;
    v67 = v8;
    v68 = v7;
    v69 = 0;
    v70 = a1;
    v12 = v72[0];
    v13 = v72[1];
    v14 = *&v72[2];
    v15 = BYTE8(v72[2]);
    v16 = BYTE9(v72[2]);
    v17 = BYTE10(v72[2]);
    v18 = *&v72[3];
    v73 = v72[0];
    v74[0] = v72[1];
    v77 = v72[0];
    v19 = *(&v72[3] + 1);
    v20 = *&v72[4];
    *&v74[1] = *&v72[2];
    WORD4(v74[1]) = WORD4(v72[2]);
    BYTE10(v74[1]) = BYTE10(v72[2]);
    v74[2] = v72[3];
    v75 = *&v72[4];
    v78[0] = v72[1];
    *(v78 + 11) = *(v74 + 11);
    v21 = v1[2];
    sub_10080AD84();

    v22 = [objc_allocWithZone(CRLCanvasInfoGeometry) initWithTransformedBoundsOrigin:v12 size:v13 angle:v14];
    [v22 position];
    v24 = v23;
    v26 = v25;

    v27 = [objc_allocWithZone(CRLCanvasInfoGeometry) initWithPosition:v16 size:v17 widthValid:v15 heightValid:0 horizontalFlip:v24 verticalFlip:v26 angle:{v13, v14}];
    v28 = sub_10050D2D4(v18, 3, *(*(v21 + 16) + 16), 256.0, 256.0);
    if (v28)
    {
      v29 = v28;
      v30 = sub_100CF34E8();

      v31 = v65;
      sub_101110F2C(v18, v65);
      v33 = v66;
      v32 = v67;
      if (v30)
      {
        v30 = v30;
        sub_101110F2C(v30, v33);

        v34 = 0;
      }

      else
      {
        v34 = 1;
      }
    }

    else
    {
      v31 = v65;
      sub_101110F2C(v18, v65);
      v30 = 0;
      v34 = 1;
      v33 = v66;
      v32 = v67;
    }

    (*(v32 + 56))(v33, v34, 1, v68);
    v35 = sub_10111147C(v27, v31, v33);

    sub_10000CAAC(v33, &unk_101A1B880, &unk_10147AB00);
    sub_10072C8E4(v31);
    v36 = v70;
    memcpy(v72, v70, sizeof(v72));
    v37 = sub_10080C8D4();
    v38 = v69;
    v39 = sub_100813794(v72, v71, v37);
    v11 = v39;
    if (v38)
    {

      sub_10000CAAC(&v73, &qword_101A02490, &qword_10147F918);
      return v11;
    }

    if (v36[59] == 2)
    {
      v40 = v39;
    }

    else
    {
      v40 = v36[59];
    }

    v11 = v35;
    if (sub_1011255D4())
    {
      v41 = OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData;
      v42 = *(**&v11[OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData] + 392);
      v43 = v27;

      v45 = v42(v44) & 1;

      v46 = v40 & 1;
      v47 = v46 == v45;
      v27 = v43;
      v36 = v70;
      if (!v47)
      {
        v48 = *(**&v11[v41] + 400);

        v48(v46);
      }
    }

    sub_10080BD6C(v36, v11, &v77, v19, v20);
    if (*(v36 + 46) >> 8 == 0xFFFFFFFFLL)
    {
      if (sub_1011255D4())
      {
        v50 = OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData;
        v51 = *(**&v11[OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData] + 440);

        v53 = v51(v52);

        if (v53)
        {

          v54 = *(**&v11[v50] + 448);

          v54(0);

LABEL_33:

          goto LABEL_34;
        }
      }

LABEL_34:
      sub_10000CAAC(&v73, &qword_101A02490, &qword_10147F918);
      return v11;
    }

    v55 = [objc_opt_self() defaultShadow];
    if ((sub_1011255D4() & 1) == 0)
    {

      goto LABEL_34;
    }

    v56 = v27;
    v57 = OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData;
    v58 = *(**&v11[OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData] + 440);

    v60 = v58(v59);

    if (v60)
    {
      if (v55)
      {
        sub_100006370(0, &unk_101A11F40, off_10182F940);
        v61 = v55;
        v62 = static NSObject.== infix(_:_:)();

        if (v62)
        {

          goto LABEL_34;
        }
      }

      else
      {
      }
    }

    else if (!v55)
    {

      goto LABEL_34;
    }

    v63 = *(**&v11[v57] + 448);
    v64 = v55;

    v63(v55);

    goto LABEL_33;
  }

  return v76;
}

id sub_10080BD6C(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5)
{
  v8 = *(a1 + 160) | (*(a1 + 162) << 16);
  v9 = *(a1 + 168);
  v10 = *(a1 + 176);
  v11 = *(a1 + 192);
  v12 = *(a1 + 208);
  v13 = *(a1 + 216);
  v14 = *(a1 + 176);
  if (v14 == 1 || *(a1 + 160) == 2)
  {
    v25 = (a3 + 32);
    v24 = (a3 + 24);
    v23 = (a3 + 16);
    v22 = (a3 + 8);
    v21 = (a1 + 16);
    if (*(a1 + 56) == 2)
    {
      v21 = a3;
    }

    else
    {
      v22 = (a1 + 24);
    }

    if (*(a1 + 56) == 2)
    {
      v8 = *(a3 + 40) | (*(a3 + 42) << 16);
    }

    else
    {
      v23 = (a1 + 32);
      v24 = (a1 + 40);
      v25 = (a1 + 48);
      v8 = *(a1 + 56) | (*(a1 + 58) << 16);
    }

    v16 = v14 == 1;
    v17 = v14 == 1;
    if (v16)
    {
      v9 = 0;
    }

    v18 = vdup_n_s32(v17);
    v19.i64[0] = v18.u32[0];
    v19.i64[1] = v18.u32[1];
    v20 = vcgezq_s64(vshlq_n_s64(v19, 0x3FuLL));
    v10 = vandq_s8(v10, v20);
    v11 = vandq_s8(v11, v20);
    if (v16)
    {
      v12 = 0;
      v13 = 0;
    }
  }

  else
  {
    v21 = (a1 + 120);
    v22 = (a1 + 128);
    v23 = (a1 + 136);
    v24 = (a1 + 144);
    v25 = (a1 + 152);
  }

  v26 = *v25;
  v27 = *v24;
  v28 = *v23;
  v29 = *v22;
  v30 = *v21;
  v81 = v9;
  v82 = v10;
  v83 = v11;
  v84 = v12;
  v85 = v13;
  sub_10080ADD8();
  v86[0] = v30;
  v86[1] = v29;
  v86[2] = v28;
  v86[3] = v27;
  v86[4] = v26;
  v88 = BYTE2(v8);
  v87 = v8;
  v31 = sub_100813090(&v81, v86);
  v33 = v32;

  if (v77)
  {
    return v31;
  }

  v78 = v31;
  v72 = OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData;
  v35 = *(**(a2 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData) + 296);
  v36 = v33;

  v38 = v35(v37);

  v31 = [v36 geometryRelativeToGeometry:v38];

  v39 = *(a1 + 232);
  if (!v39)
  {
    v45 = v78;
LABEL_21:
    sub_100BB584C([objc_allocWithZone(CRLMaskInfo) initWithImageItem:a2 geometry:v31 pathSource:v45]);

    return v31;
  }

  v74 = v31;
  v75 = v36;
  v40 = *(a1 + 240);
  v41 = *(a1 + 248);
  v42 = *(a1 + 256);
  v43 = *(a1 + 224);
  sub_10080ADD8();
  v44 = sub_1008128C8(v43, v39);

  if ((v42 & 1) == 0)
  {
    CGAffineTransformMakeScale(&v80, a4 / v40, a5 / v41);
    [v44 transformUsingAffineTransform:&v80];
  }

  v46 = *(**(a2 + v72) + 296);

  v48 = v46(v47);

  [v48 size];
  v50 = v49;
  v52 = v51;

  CGAffineTransformMakeScale(&v80, v50 / a4, v52 / a5);
  [v44 transformUsingAffineTransform:&v80];
  v79[0] = 0;
  v79[1] = 0;
  v53 = [v78 bezierPath];
  [v53 copy];

  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  sub_100006370(0, &qword_101A02480, off_10182F728);
  if ((swift_dynamicCast() & 1) == 0 || (v54 = v89) == 0)
  {
    v31 = 0xD000000000000014;
    v60 = sub_10080B1F0(v79, "importMask(from:to:imageGeometry:naturalSize:)", 46, 2, "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/Compatibility/ContentLanguage/Importers/Drawables/CRLCLImageImporter.swift", 128, 2, 54);
    v62 = v61;

    v80.a = -2.31584178e77;
    *&v80.b = 0x800000010156B2B0;
    *&v80.c = v60;
    v80.d = v62;
    sub_10080B4B4();
    swift_willThrowTypedImpl();

    return v31;
  }

  v31 = v74;
  [v74 transform];
  [v54 transformUsingAffineTransform:&v80];
  v55 = objc_opt_self();
  v56 = swift_allocObject();
  *(v56 + 16) = xmmword_10146CE00;
  *(v56 + 32) = v44;
  *(v56 + 40) = v54;
  v73 = v44;
  v57 = v54;
  isa = Array._bridgeToObjectiveC()().super.isa;

  v59 = [v55 intersectBezierPaths:isa];

  if (!v59)
  {
    v36 = v75;
    v45 = v78;
LABEL_34:

    goto LABEL_21;
  }

  v36 = v75;
  if ([v59 isEmpty])
  {
    v45 = v78;
LABEL_33:

    goto LABEL_34;
  }

  [v59 bounds];
  v64 = v63;
  v66 = v65;
  v68 = v67;
  v70 = v69;
  [v59 alignBoundsToOrigin];
  result = [objc_allocWithZone(CRLBezierPathSource) initWithBezierPath:v59];
  if (result)
  {
    v45 = result;

    v71 = [objc_allocWithZone(CRLCanvasInfoGeometry) initWithPosition:v64 size:{v66, v68, v70}];
    v31 = v71;
    goto LABEL_33;
  }

  __break(1u);
  return result;
}

void sub_10080C418(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v8 = *(v3 + 16);
  v9 = *(v8 + 16);
  v10 = *(a1 + 80);
  v11 = *(a1 + 88);
  v12 = *(a1 + 96);
  v13 = *(a1 + 104);
  if ((*(a1 + 112) & 1) == 0)
  {

    v25 = Data.init(base64Encoded:options:)();
    if (v26 >> 60 == 15)
    {
      v16 = 0x800000010156B170;
      v14 = 0xD000000000000034;
      sub_10080B4B4();
      swift_willThrowTypedImpl();
    }

    else
    {
      v27 = v25;
      v28 = v26;
      v41 = a3;
      v39 = a2;
      v29 = *(v9 + 16);
      objc_allocWithZone(type metadata accessor for CRLPreinsertionAssetWrapper(0));

      swift_unknownObjectRetain();
      sub_100024E84(v27, v28);
      v30 = sub_100CF051C(v27, v28, v12, v13, v29);
      if (v4)
      {

        a2 = v39;
      }

      else
      {
        a2 = v39;
        if (v30)
        {
          v38 = v30;
          v14 = sub_100CF34E8();

          a2 = v39;
          if (v14)
          {
            sub_100025870(v27, v28);

            goto LABEL_4;
          }
        }
      }

      v16 = 0x800000010156B1B0;
      v14 = 0xD000000000000036;
      sub_10080B4B4();
      swift_willThrowTypedImpl();

      sub_100025870(v27, v28);
    }

    v18 = 0;
    v20 = 0;
    goto LABEL_13;
  }

  v41 = a3;

  v14 = sub_100819BC8(v10, v11, v12, v13);
  v16 = v15;
  v18 = v17;
  v20 = v19;

  if (v4)
  {
LABEL_13:
    *a2 = v14;
    a2[1] = v16;
    a2[2] = v18;
    a2[3] = v20;
    return;
  }

  v39 = a2;
LABEL_4:
  v21 = [objc_allocWithZone(CRLImageDataHelper) initWithImageData:v14 assetOwner:*(*(v8 + 16) + 16)];
  [v21 naturalSize];
  v24 = v23;
  if (v23 == 0.0 && v22 == 0.0)
  {
    v16 = 0x800000010156B100;
    v20 = 0x800000010156B120;
    v18 = 0xD000000000000045;
    sub_10080B4B4();
    swift_willThrowTypedImpl();

    v14 = 0xD00000000000001CLL;
    a2 = v39;
    goto LABEL_13;
  }

  v40 = v22;

  v31 = *(a1 + 56) | (*(a1 + 58) << 16);
  if (*(a1 + 56) == 2)
  {
    LOBYTE(v31) = 0;
    v32 = 0uLL;
    v33 = v40;
    v34 = *&v40;
    LOBYTE(v35) = 1;
    v36 = v24;
    LOBYTE(v37) = 1;
  }

  else
  {
    v34 = *(a1 + 40);
    v36 = *(a1 + 32);
    v35 = (v31 >> 8) & 1;
    v37 = HIWORD(v31) & 1;
    v32 = *(a1 + 16);
    v33 = v40;
  }

  *v41 = v32;
  *(v41 + 16) = v36;
  *(v41 + 24) = v34;
  *(v41 + 40) = v31 & 1;
  *(v41 + 41) = v35;
  *(v41 + 42) = v37;
  *(v41 + 48) = v14;
  *(v41 + 56) = v24;
  *(v41 + 64) = v33;
}

uint64_t sub_10080C794()
{

  return swift_deallocClassInstance();
}

unint64_t sub_10080C7FC()
{
  result = qword_101A02448;
  if (!qword_101A02448)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TSContentLanguage.Models.Image, &type metadata for TSContentLanguage.Models.Image, v0, v1);
    atomic_store(result, &qword_101A02448);
  }

  return result;
}

uint64_t sub_10080C850@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  _s13ImageImporterCMa();
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2;
  *a3 = result;
  return result;
}

unint64_t sub_10080C8D4()
{
  result = qword_101A02488;
  if (!qword_101A02488)
  {
    v3 = _s13ImageImporterCMa();
    result = swift_getWitnessTable("id;", v3, v0, v1);
    atomic_store(result, &qword_101A02488);
  }

  return result;
}

void *sub_10080C94C(unint64_t a1)
{
  v3 = v2;
  v58 = type metadata accessor for TSContentLanguage.Models.CanvasObject(0);
  __chkstk_darwin(v58);
  v62 = (&v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v6);
  v59 = &v52 - v7;
  v8 = *(v1 + 16);
  v9 = (a1 >> 62);
  v60 = a1;
  v10 = v1;
  if (a1 >> 62)
  {
LABEL_40:

    sub_1005B981C(&qword_1019F5720, &unk_101474E20);
    v11 = _bridgeCocoaArray<A>(_:)();
  }

  else
  {

    dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
    v11 = a1;
  }

  v12 = sub_1008145A8(v11);

  if (v3)
  {
    return v12;
  }

  v53 = v8;
  v13 = v60;
  if (v9)
  {
    v8 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v8 = *((v60 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v12 = _swiftEmptyArrayStorage;
  if (!v8)
  {
LABEL_31:
    v44 = v53;
    swift_beginAccess();
    v45 = *(v44 + 32);
    if (v45 >> 62)
    {
      goto LABEL_43;
    }

    if (*((v45 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_33;
    }

LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  v78 = _swiftEmptyArrayStorage;

  sub_100776B64(0, v8 & ~(v8 >> 63), 0);
  if (v8 < 0)
  {
    goto LABEL_42;
  }

  v3 = 0;
  v12 = v78;
  v57 = v13 & 0xC000000000000001;
  v52 = v10;
  v56 = *(v10 + 24);
  v54 = v13 & 0xFFFFFFFFFFFFFF8;
  v55 = v8;
  while (1)
  {
    if (__OFADD__(v3, 1))
    {
      __break(1u);
      goto LABEL_40;
    }

    if (v57)
    {
      v14 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      goto LABEL_15;
    }

    if (v3 >= *(v54 + 16))
    {
      break;
    }

    v14 = *(v13 + 8 * v3 + 32);
LABEL_15:
    v15 = v14;
    v16 = (*((swift_isaMask & *v14) + 0x300))(v14);
    v18 = v16;
    if (!v16)
    {
      v65 = 0xD00000000000002DLL;
      v66 = 0x800000010156B3D0;
      sub_10075915C();
      v67 = 0;
      v68 = 0;
      swift_willThrowTypedImpl();

      return 0xD00000000000002DLL;
    }

    v10 = v17;
    v61 = v3 + 1;
    v63 = v15;
    v19 = *(v56 + 16);
    v20 = *(v17 + 32);
    v70 = v16;
    v71 = v17;
    sub_10002C58C(&v69);
    v20(v19, v18, v10);
    type metadata accessor for CRLBoardItem(0);
    v21 = v63;

    v22 = v59;
    sub_1008149FC(v21, v18, v10, v64, v59);
    sub_100005070(&v69);
    sub_10069980C(v22, v62);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload <= 1)
    {
      v13 = v60;
      if (EnumCaseMultiPayload)
      {
        v70 = &type metadata for TSContentLanguage.Models.Group;
        v71 = sub_10080D864();
        v28 = swift_allocObject();
        *&v69 = v28;
        v29 = v62;
        v30 = v62[3];
        *(v28 + 48) = v62[2];
        *(v28 + 64) = v30;
        *(v28 + 80) = v29[4];
        *(v28 + 96) = *(v29 + 10);
        v31 = v29[1];
        *(v28 + 16) = *v29;
        *(v28 + 32) = v31;
      }

      else
      {
        v70 = &type metadata for TSContentLanguage.Models.ConnectionLine;
        v71 = sub_10080D8B8();
        *&v69 = swift_allocObject();
        memcpy((v69 + 16), v62, 0x180uLL);
      }
    }

    else
    {
      v13 = v60;
      if (EnumCaseMultiPayload == 2)
      {
        v70 = &type metadata for TSContentLanguage.Models.Image;
        v71 = sub_10080C7FC();
        *&v69 = swift_allocObject();
        memcpy((v69 + 16), v62, 0x190uLL);
      }

      else
      {
        if (EnumCaseMultiPayload == 3)
        {
          v70 = type metadata accessor for TSContentLanguage.Models.Shape(0);
          v24 = type metadata accessor for TSContentLanguage.Models.Shape;
          v25 = protocol conformance descriptor for TSContentLanguage.Models.Shape;
          v26 = &qword_101A02650;
        }

        else
        {
          v70 = type metadata accessor for TSContentLanguage.Models.Textbox(0);
          v24 = type metadata accessor for TSContentLanguage.Models.Textbox;
          v25 = protocol conformance descriptor for TSContentLanguage.Models.Textbox;
          v26 = &qword_101A02648;
        }

        v71 = sub_10080D7B4(v26, v24, v25);
        v27 = sub_10002C58C(&v69);
        sub_10080D7FC(v62, v27, v24);
      }
    }

    sub_100050F74(&v69, v72);
    sub_100699870(v22);
    v32 = v73;
    v33 = v74;
    v34 = sub_100020E58(v72, v73);
    v76 = v32;
    v77 = *(*(v33 + 8) + 8);
    v35 = sub_10002C58C(v75);
    (*(*(v32 - 8) + 16))(v35, v34, v32);
    sub_100005070(v72);

    v78 = v12;
    v37 = v12[2];
    v36 = v12[3];
    if (v37 >= v36 >> 1)
    {
      sub_100776B64((v36 > 1), v37 + 1, 1);
    }

    v38 = v76;
    v39 = v77;
    v40 = sub_10002A948(v75, v76);
    v41 = __chkstk_darwin(v40);
    v9 = &v52 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v43 + 16))(v9, v41);
    sub_10080D600(v37, v9, &v78, v38, v39);
    sub_100005070(v75);
    v12 = v78;
    ++v3;
    v8 = v55;
    if (v61 == v55)
    {

      goto LABEL_31;
    }
  }

  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  if (!_CocoaArrayWrapper.endIndex.getter())
  {
    goto LABEL_44;
  }

LABEL_33:
  v46 = v53;
  if (sub_100FB0C8C())
  {
    goto LABEL_37;
  }

  v47 = *(v46 + 32);
  if (v47 >> 62)
  {
LABEL_45:
    v51 = _CocoaArrayWrapper.endIndex.getter();
    v49 = __OFSUB__(v51, 1);
    result = (v51 - 1);
    if (v49)
    {
      goto LABEL_47;
    }

LABEL_36:
    sub_10106B378(result);
LABEL_37:

    swift_endAccess();
    return v12;
  }

  v48 = *((v47 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v49 = __OFSUB__(v48, 1);
  result = (v48 - 1);
  if (!v49)
  {
    goto LABEL_36;
  }

LABEL_47:
  __break(1u);
  return result;
}

void *sub_10080D194(unint64_t a1)
{
  v1 = a1;
  if (a1 >> 62)
  {
    goto LABEL_33;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v3 = 0;
    v27 = v1 & 0xFFFFFFFFFFFFFF8;
    v28 = v1 & 0xC000000000000001;
    v4 = _swiftEmptyArrayStorage;
    v25 = i;
    v26 = v1;
    while (1)
    {
      if (v28)
      {
        v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v3 >= *(v27 + 16))
        {
          goto LABEL_28;
        }

        v5 = *(v1 + 8 * v3 + 32);
      }

      v6 = v5;
      if (__OFADD__(v3, 1))
      {
        break;
      }

      v30 = v3 + 1;
      v7 = *(v29 + 24);
      v8 = (*((swift_isaMask & *v5) + 0x300))();
      if (v8)
      {
        v10 = v8;
        v11 = v9;
        v12 = *(v7 + 16);
        v13 = *(v9 + 32);
        v32 = v8;
        v33 = v9;
        sub_10002C58C(v31);
        v13(v12, v10, v11);
        v14 = type metadata accessor for CRLBoardItem(0);

        v15 = sub_100814D74(v6, v10, v14, v11);
        sub_100005070(v31);

        i = v25;
        v1 = v26;
      }

      else
      {
        v31[0] = 0xD00000000000002DLL;
        v31[1] = 0x800000010156B3D0;
        sub_10075915C();
        v31[2] = 0;
        v32 = 0;
        swift_willThrowTypedImpl();

        v15 = _swiftEmptyArrayStorage;
      }

      v16 = v15[2];
      v17 = v4[2];
      v18 = v17 + v16;
      if (__OFADD__(v17, v16))
      {
        goto LABEL_29;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (isUniquelyReferenced_nonNull_native && v18 <= v4[3] >> 1)
      {
        if (v15[2])
        {
          goto LABEL_22;
        }
      }

      else
      {
        if (v17 <= v18)
        {
          v20 = v17 + v16;
        }

        else
        {
          v20 = v17;
        }

        v4 = sub_100B37A10(isUniquelyReferenced_nonNull_native, v20, 1, v4);
        if (v15[2])
        {
LABEL_22:
          if ((v4[3] >> 1) - v4[2] < v16)
          {
            goto LABEL_31;
          }

          sub_1005B981C(&unk_101A02638, &qword_10147F9A8);
          swift_arrayInitWithCopy();

          if (v16)
          {
            v21 = v4[2];
            v22 = __OFADD__(v21, v16);
            v23 = v21 + v16;
            if (v22)
            {
              goto LABEL_32;
            }

            v4[2] = v23;
          }

          goto LABEL_5;
        }
      }

      if (v16)
      {
        goto LABEL_30;
      }

LABEL_5:
      ++v3;
      if (v30 == i)
      {
        return v4;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    ;
  }

  return _swiftEmptyArrayStorage;
}

id CRLCLCanvasObjectArrayExporterHelper.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CRLCLCanvasObjectArrayExporterHelper();
  return objc_msgSendSuper2(&v2, "init");
}

id CRLCLCanvasObjectArrayExporterHelper.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CRLCLCanvasObjectArrayExporterHelper();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10080D600(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v13 = a4;
  v14 = a5;
  v9 = sub_10002C58C(&v12);
  (*(*(a4 - 8) + 32))(v9, a2, a4);
  v10 = *a3;
  *(v10 + 16) = a1 + 1;
  return sub_100050F74(&v12, v10 + 40 * a1 + 32);
}

BOOL sub_10080D698(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2)
    {
      goto LABEL_3;
    }

    return 0;
  }

LABEL_14:
  v2 = _CocoaArrayWrapper.endIndex.getter();
  if (!v2)
  {
    return 0;
  }

LABEL_3:
  v3 = 0;
  do
  {
    v4 = v2 == v3;
    if (v2 == v3)
    {
      break;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v3 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_13;
      }

      v5 = *(a1 + 8 * v3 + 32);
    }

    v6 = v5;
    if (__OFADD__(v3, 1))
    {
      __break(1u);
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    v7 = (*((swift_isaMask & *v5) + 0x300))();

    ++v3;
  }

  while (v7);
  return v4;
}

uint64_t sub_10080D7B4(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10080D7FC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_10080D864()
{
  result = qword_101A02660;
  if (!qword_101A02660)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TSContentLanguage.Models.Group, &type metadata for TSContentLanguage.Models.Group, v0, v1);
    atomic_store(result, &qword_101A02660);
  }

  return result;
}

unint64_t sub_10080D8B8()
{
  result = qword_101A02668;
  if (!qword_101A02668)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TSContentLanguage.Models.ConnectionLine, &type metadata for TSContentLanguage.Models.ConnectionLine, v0, v1);
    atomic_store(result, &qword_101A02668);
  }

  return result;
}

void sub_10080D90C(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = v3;
  v215 = type metadata accessor for CRLShapeItemCRDTData.ShapeStyleData(0);
  __chkstk_darwin(v215);
  *&v214 = &v191[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v9);
  v212 = &v191[-v10];
  __chkstk_darwin(v11);
  v213 = &v191[-v12];
  v13 = sub_1005B981C(&qword_101A003E0, &qword_10147C4C8);
  __chkstk_darwin(v13 - 8);
  v15 = &v191[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v16);
  v18 = &v191[-v17];
  v19 = sub_1005B981C(&unk_1019FFD10, &unk_101483A60);
  v221 = *(v19 - 8);
  v222 = v19;
  __chkstk_darwin(v19);
  v220 = &v191[-v20];
  v218 = type metadata accessor for CRLWPShapeItemCRDTData(0);
  __chkstk_darwin(v218);
  *&v219 = &v191[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v22 = type metadata accessor for CRLWPStorageCRDTData(0);
  *&v23 = __chkstk_darwin(v22 - 8).n128_u64[0];
  v25 = &v191[-((v24 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v291 = *(v5 + 16);
  v26 = [*(v291 + 24) layoutForInfo:{a1, v23}];
  if (!v26)
  {
    v52 = 0x800000010156B430;
    *&v224 = 0xD000000000000024;
    *&v252 = 0xD000000000000024;
    *(&v252 + 1) = 0x800000010156B430;
    sub_10075915C();
    v253 = 0uLL;
    swift_willThrowTypedImpl();
    v51 = 0;
LABEL_37:
    *a2 = v224;
    a2[1] = v52;
    a2[2] = v51;
    a2[3] = v26;
    return;
  }

  v205 = a3;
  v206 = v15;
  v211 = v18;
  v216 = a1;
  v217 = OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData;
  v27 = *(**(a1 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData) + 296);

  v29 = v27(v28);

  v263[1] = 0;
  v263[0] = 0;
  v30 = [v26 inspectorGeometry];
  v31 = v26;
  if (!v30)
  {
    v51 = sub_10080B1F0(v263, "export(_:)", 10, 2, "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/Compatibility/ContentLanguage/Exporters/Drawables/CRLCLShapeExporter.swift", 128, 2, 21);
    v26 = v53;

    v52 = 0x800000010156B4F0;
    *&v224 = 0xD000000000000014;
    *&v252 = 0xD000000000000014;
    *(&v252 + 1) = 0x800000010156B4F0;
    *&v253 = v51;
    *(&v253 + 1) = v26;
    sub_10075915C();
    swift_willThrowTypedImpl();
    goto LABEL_36;
  }

  v203 = v5;
  v207 = v26;
  v210 = a2;
  v32 = v30;
  sub_100814500();
  v33 = [v29 widthValid];
  v34 = [v29 heightValid];
  v208 = v32;
  sub_100811758(v32, v33, v34, v264);
  v201 = v264[1];
  v202 = v264[0];
  v35 = v265;
  v36 = v266 | (v267 << 16);

  if (([v29 widthValid] & 1) == 0)
  {
    v197 = v36;
    v204 = v29;
LABEL_14:
    *&v224 = 0;
    *&v209 = 0;
    v54 = 0;
    v198 = 0u;
    v199 = 0u;
LABEL_15:
    v38 = v217;
    goto LABEL_17;
  }

  v37 = [v29 heightValid];
  v38 = v217;
  if (v37)
  {
    v39 = **(v216 + v217);
    if (!swift_conformsToProtocol2())
    {
LABEL_85:
      __break(1u);
      goto LABEL_86;
    }

    v40 = *(v39 + 840);

    v31 = v40(v41);

    v245 = 0uLL;
    v42 = [v31 bezierPath];
    [v42 copy];

    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    sub_100006370(0, &qword_101A02480, off_10182F728);
    if (swift_dynamicCast())
    {
      v43 = v233;
      a2 = v210;
      if (v233)
      {
        if ([v233 isLineSegment])
        {
          v44 = v31;
          v45 = v208;
          [v208 transform];
          [(ProtocolDescriptor *)v43 transformUsingAffineTransform:&v252];
          *&v202 = sub_100814554();
          v46 = v223;
          *&v224 = sub_100818714(v43);
          *&v209 = v49;
          v50 = v43;
          if (v46)
          {
            v51 = v47;
            v26 = v48;

LABEL_79:

            v52 = v209;
            goto LABEL_37;
          }

          v223 = 0;
          v204 = v29;

          v35 = 0;
          v198 = 0u;
          v199 = 0u;
          v197 = 2;
          v54 = 1;
          v201 = 0u;
          v202 = 0u;
          goto LABEL_15;
        }

        [v31 naturalSize];
        *&v132 = sub_10011ECB4();
        v224 = v133;
        v198 = v134;
        v199 = v132;
        v209 = v135;
        v200 = v43;
        [(ProtocolDescriptor *)v43 bounds];
        v140 = v31;
        v54 = sub_10011EEBC(v136, v137, v138, v139, *&v199, *&v224, *&v198, *&v209, 0.1);
        v141 = v223;
        v197 = v36;
        if (v54)
        {
          if ([v140 isRectangular])
          {
            v204 = v29;

            goto LABEL_14;
          }

          v196 = v140;
          v195 = sub_100814554();
          v198 = 0u;
          v199 = 0u;
        }

        else
        {
          v196 = v140;
          v195 = sub_100814554();
          *&v142 = v198;
          *(&v142 + 1) = v209;
          v198 = v142;
          *&v142 = v199;
          *(&v142 + 1) = v224;
          v199 = v142;
        }

        v165 = v200;
        *&v224 = sub_100818714(v200);
        *&v209 = v168;
        if (v141)
        {
          v51 = v166;
          v26 = v167;

          goto LABEL_79;
        }

        v223 = 0;
        v204 = v29;

        goto LABEL_15;
      }
    }

    else
    {
      a2 = v210;
    }

    v51 = sub_10080B1F0(&v245, "export(_:)", 10, 2, "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/Compatibility/ContentLanguage/Exporters/Drawables/CRLCLShapeExporter.swift", 128, 2, 25);
    v26 = v112;

    v52 = 0x800000010156B4F0;
    *&v224 = 0xD000000000000014;
    *&v252 = 0xD000000000000014;
    *(&v252 + 1) = 0x800000010156B4F0;
    *&v253 = v51;
    *(&v253 + 1) = v26;
    sub_10075915C();
    swift_willThrowTypedImpl();

LABEL_36:
    goto LABEL_37;
  }

  v197 = v36;
  v204 = v29;
  *&v224 = 0;
  *&v209 = 0;
  v54 = 0;
  v198 = 0u;
  v199 = 0u;
LABEL_17:
  v196 = v35;
  LODWORD(v195) = v54;
  v55 = v216;
  v56 = **(v216 + v38);
  v200 = &protocol descriptor for CRLAbstractShapeItemDataProtocol;
  if (!swift_conformsToProtocol2())
  {
    __break(1u);
LABEL_82:
    __break(1u);
    goto LABEL_83;
  }

  v57 = *(v56 + 840);

  v59 = v57(v58);

  v60 = [v59 bezierPath];

  LODWORD(v59) = [v60 isLineSegment];
  if (!v59)
  {
    goto LABEL_22;
  }

  v61 = *(v55 + OBJC_IVAR____TtC8Freeform14CRLWPShapeItem_textStorage);
  if (!v61)
  {
LABEL_83:
    __break(1u);
    goto LABEL_84;
  }

  v62 = *&v61[OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemData];
  if (!v62)
  {
LABEL_84:
    __break(1u);
    goto LABEL_85;
  }

  v63 = v55;
  v64 = v219;
  (*(*v62 + 896))();
  sub_1005E0A78(v64 + *(v218 + 20), v25);
  v65 = v61;
  sub_1008108C0(v64, type metadata accessor for CRLWPShapeItemCRDTData);
  v67 = v220;
  v66 = v221;
  v68 = v222;
  (*(v221 + 16))(v220, v25, v222);
  sub_1008108C0(v25, type metadata accessor for CRLWPStorageCRDTData);
  v69 = CRAttributedString.attributedString.getter();
  (*(v66 + 8))(v67, v68);
  v70 = [v69 length];

  v55 = v63;
  if (v70)
  {
LABEL_22:
    v71 = *(v55 + OBJC_IVAR____TtC8Freeform14CRLWPShapeItem_textStorage);
    if (v71)
    {
      v72 = v71;
      v73 = v211;
      v74 = v223;
      sub_10080F2CC(v72);
      if (v74)
      {
        *&v224 = v259;
        v52 = v260;
        v51 = v261;
        v26 = v262;

        a2 = v210;
        goto LABEL_37;
      }

      v75 = 0;
      v63 = v55;

      v76 = 0;
      a2 = v210;
      goto LABEL_27;
    }

    goto LABEL_82;
  }

  v76 = 1;
  a2 = v210;
  v73 = v211;
  v75 = v223;
LABEL_27:
  v77 = type metadata accessor for TSContentLanguage.Models.Text(0);
  v78 = *(v77 - 8);
  v79 = *(v78 + 56);
  v80 = v78 + 56;
  v79(v73, v76, 1, v77);
  v81 = sub_10098EAA4(v63, v291);
  v222 = v84;
  v223 = v81;
  v85 = v82;
  if (v75)
  {
    v26 = v83;
    sub_10000CAAC(v73, &qword_101A003E0, &qword_10147C4C8);

    *&v224 = v223;
    v52 = v85;
    v51 = v222;
    goto LABEL_37;
  }

  v221 = v82;
  v222 = 0;
  v218 = v77;
  *&v219 = v80;
  v194 = v79;
  v86 = v217;
  v87 = *(**(v63 + v217) + 392);

  v192 = v87(v88);

  v89 = *(**(v63 + v86) + 416);

  v193 = v89(v90);
  v220 = v91;

  v92 = v63;
  if (sub_100C349A0())
  {
    goto LABEL_38;
  }

  v93 = **(v63 + v86);
  v94 = swift_conformsToProtocol2();
  if (!v94)
  {
LABEL_87:
    __break(1u);
    goto LABEL_88;
  }

  v95 = v94;
  v96 = *(v94 + 16);

  v97 = v213;
  v96(v93, v95);

  sub_1005B981C(&unk_101A10680, &qword_101489C50);
  CRRegister.wrappedValue.getter();
  sub_1008108C0(v97, type metadata accessor for CRLShapeItemCRDTData.ShapeStyleData);
  v98 = *(&v254 + 1);
  if (!*(&v254 + 1))
  {
LABEL_38:
    v213 = 6;
  }

  else
  {
    v100 = *(&v252 + 1);
    v99 = v252;
    v101 = v253;
    v102 = v254;
    LOBYTE(v252) = v253 & 1;
    v285 = __PAIR128__(*(&v252 + 1), v99);
    v286 = v253 & 1;
    v287 = *(&v253 + 4);
    v288 = BYTE12(v253) & 1;
    v289 = v254;
    v290 = v255;
    sub_100006370(0, &qword_101A14D70, off_10182F8B0);
    v103 = sub_1009CE208(&v285);
    sub_100810A00(v99, v100, v101, *(&v101 + 1), v102, v98);

    v104 = v103;
    v105 = v222;
    v106 = sub_100810A50(v104);
    v110 = v106;
    if (v105)
    {
      v111 = v107;
      v51 = v108;
      v26 = v109;

      sub_10000CAAC(v211, &qword_101A003E0, &qword_10147C4C8);

      *&v224 = v110;
LABEL_67:
      v52 = v111;
      a2 = v210;
      goto LABEL_37;
    }

    v213 = v106;
    v222 = 0;

    v92 = v216;
    v86 = v217;
  }

  v113 = v221;
  if (sub_100C349A0())
  {
    v114 = 6;
  }

  else
  {
    v115 = **(v92 + v86);
    v116 = swift_conformsToProtocol2();
    if (!v116)
    {
LABEL_88:
      __break(1u);
      return;
    }

    v117 = v116;
    v118 = *(v116 + 16);

    v119 = v212;
    v118(v115, v117);

    sub_1005B981C(&unk_101A10680, &qword_101489C50);
    CRRegister.wrappedValue.getter();
    sub_1008108C0(v119, type metadata accessor for CRLShapeItemCRDTData.ShapeStyleData);
    v120 = *(&v254 + 1);
    if (*(&v254 + 1))
    {
      v122 = *(&v252 + 1);
      v121 = v252;
      v123 = v253;
      v124 = v254;
      LOBYTE(v252) = v253 & 1;
      v279 = __PAIR128__(*(&v252 + 1), v121);
      v280 = v253 & 1;
      v281 = *(&v253 + 4);
      v282 = BYTE12(v253) & 1;
      v283 = v254;
      v284 = v255;
      sub_100006370(0, &qword_101A14D70, off_10182F8B0);
      v125 = sub_1009CE208(&v279);
      sub_100810A00(v121, v122, v123, *(&v123 + 1), v124, v120);

      v126 = v125;
      v127 = v222;
      v114 = sub_100810BD4(v126);
      if (v127)
      {
        v131 = v128;
        v51 = v129;
        v26 = v130;

        sub_10000CAAC(v211, &qword_101A003E0, &qword_10147C4C8);

        *&v224 = v114;
        v52 = v131;
        a2 = v210;
        goto LABEL_37;
      }

      v222 = 0;

      v92 = v216;
      v86 = v217;
    }

    else
    {
      v114 = 6;
    }

    v113 = v221;
  }

  v143 = **(v92 + v86);
  v144 = swift_conformsToProtocol2();
  if (!v144)
  {
LABEL_86:
    __break(1u);
    goto LABEL_87;
  }

  v145 = v144;
  v146 = *(v144 + 16);

  v147 = v214;
  v146(v143, v145);

  sub_1005B981C(&unk_101A10690, &qword_101472520);
  CRRegister.wrappedValue.getter();
  sub_1008108C0(v147, type metadata accessor for CRLShapeItemCRDTData.ShapeStyleData);
  v245 = v233;
  v246 = v234;
  v250 = *v238;
  v251 = *&v238[16];
  v248 = v236;
  v249 = v237;
  v247 = v235;
  v252 = v233;
  v253 = v234;
  v257 = *v238;
  v258 = *&v238[16];
  v255 = v236;
  v256 = v237;
  v254 = v235;
  if (*&v238[16])
  {
    sub_100006370(0, &qword_101A00EB0, off_10182F7B0);
    v277[2] = v248;
    v277[3] = v249;
    v277[4] = v250;
    v278 = v251;
    v277[0] = v246;
    v277[1] = v247;
    sub_10074A990(&v253, &v233);
    v148 = sub_1008B0490(v277);
    if (BYTE8(v252) == 1)
    {
      if (qword_1019F2268 != -1)
      {
        swift_once();
      }

      v149 = static OS_os_log.persistence;
      v150 = static os_log_type_t.info.getter();
      sub_100005404(v149, &_mh_execute_header, v150, "Tried to decode unknown fill value. Falling back to unarchiving color fill.", 75, 2, _swiftEmptyArrayStorage);
    }

    v151 = [objc_allocWithZone(CRLColorFill) initWithColor:v148];

    sub_10000CAAC(&v245, &qword_1019FFF80, &qword_101489000);
    _s12FillExporterCMa();
    *(swift_allocObject() + 16) = v291;
    swift_retain_n();
    v152 = v151;

    v153 = v222;
    sub_10080F700(&v259, v268);
    if (v153)
    {
      *&v224 = v259;
      v52 = v260;
      v51 = v261;
      v26 = v262;

      swift_setDeallocating();
      swift_deallocClassInstance();

      sub_10000CAAC(v211, &qword_101A003E0, &qword_10147C4C8);

      a2 = v210;
      goto LABEL_37;
    }

    v222 = 0;

    swift_setDeallocating();
    swift_deallocClassInstance();

    v241 = v268[2];
    v242 = v268[3];
    v243 = v268[4];
    v244 = v269;
    v239 = v268[0];
    v240 = v268[1];
  }

  else
  {
    v242 = 0u;
    v243 = 0u;
    v240 = 0u;
    v241 = 0u;
    v239 = 0u;
    v244 = -256;
  }

  v154 = v216;
  v155 = sub_100D652D4();
  if (v155)
  {
    v156 = v155;
    v157 = v155;

    v158 = v222;
    sub_100FC04D4(v156, &v259, v270);
    if (v158)
    {
      *&v224 = v259;
      v111 = v260;
      v51 = v261;
      v26 = v262;

      sub_10000CAAC(&v239, &qword_101A00910, &qword_10147C898);

      sub_10000CAAC(v211, &qword_101A003E0, &qword_10147C4C8);

      goto LABEL_67;
    }

    v291 = v114;
    v222 = 0;
    v214 = v270[1];
    v219 = v270[0];
    v159 = v271;
    LODWORD(v215) = v273;
    v160 = v272;
  }

  else
  {
    v291 = v114;
    v159 = 0;
    v160 = 0;
    v219 = 0u;
    LODWORD(v215) = 128;
    v214 = 0u;
  }

  if (sub_100C349A0())
  {
    v161 = 0;
  }

  else
  {
    v162 = *(**(v154 + v217) + 440);

    v161 = v162(v163);
  }

  v164 = v222;
  sub_100D33EA8(v161, &v259, v274);
  if (v164)
  {
    *&v224 = v259;
    v52 = v260;
    v51 = v261;
    v26 = v262;

    sub_10000CAAC(&v239, &qword_101A00910, &qword_10147C898);
    sub_10000CAAC(v211, &qword_101A003E0, &qword_10147C4C8);

    a2 = v210;
    goto LABEL_37;
  }

  sub_100BFE284(&v259, v275);
  v229 = v275[4];
  v230[0] = v276[0];
  *(v230 + 13) = *(v276 + 13);
  v225 = v275[0];
  v226 = v275[1];
  v227 = v275[2];
  v228 = v275[3];
  v222 = 0;

  LODWORD(v216) = v192 & 1;
  sub_100810920(v211, v206);
  v169 = v205;
  *(v205 + 16) = 0u;
  *(v169 + 32) = 0u;
  *(v169 + 48) = 0;
  v217 = v160;
  *(v169 + 56) = 2;
  *(v169 + 58) = 0;
  *(v169 + 136) = 0u;
  *(v169 + 152) = 0u;
  *(v169 + 168) = 0u;
  *(v169 + 184) = 0u;
  *(v169 + 200) = 0u;
  *(v169 + 216) = -256;
  *(v169 + 280) = 0u;
  *(v169 + 296) = 0u;
  *(v169 + 312) = 0u;
  *(v169 + 328) = 0xFFFFFFFF00;
  *(v169 + 336) = 0u;
  *(v169 + 352) = 0u;
  *(v169 + 384) = 768;
  *(v169 + 368) = 0u;
  v170 = type metadata accessor for TSContentLanguage.Models.Shape(0);
  *(v169 + 392) = 0u;
  *(v169 + 408) = 0u;
  *(v169 + 424) = 0u;
  *(v169 + 440) = 0u;
  *(v169 + 453) = 0u;
  v171 = *(v170 + 60);
  v194(v169 + v171, 1, 1, v218);
  *v169 = v223;
  *(v169 + 8) = v113;
  v172 = v201;
  *(v169 + 16) = v202;
  *(v169 + 32) = v172;
  *(v169 + 48) = v196;
  v173 = v197;
  *(v169 + 58) = BYTE2(v197);
  *(v169 + 56) = v173;
  *(v169 + 59) = v216;
  v174 = v220;
  *(v169 + 64) = v193;
  *(v169 + 72) = v174;
  v175 = v209;
  *(v169 + 80) = v224;
  *(v169 + 88) = v175;
  v176 = v198;
  *(v169 + 96) = v199;
  *(v169 + 112) = v176;
  *(v169 + 128) = v195;
  *(v169 + 129) = v213;
  *(v169 + 130) = v291;
  v177 = *(v169 + 184);
  v231[2] = *(v169 + 168);
  v231[3] = v177;
  v231[4] = *(v169 + 200);
  v232 = *(v169 + 216);
  v178 = *(v169 + 152);
  v231[0] = *(v169 + 136);
  v231[1] = v178;
  sub_10000CAAC(v231, &qword_101A00910, &qword_10147C898);
  v179 = v242;
  *(v169 + 168) = v241;
  *(v169 + 184) = v179;
  *(v169 + 200) = v243;
  v180 = v240;
  *(v169 + 136) = v239;
  *(v169 + 216) = v244;
  *(v169 + 152) = v180;
  v181 = v214;
  *(v169 + 224) = v219;
  *(v169 + 240) = v181;
  v182 = v217;
  *(v169 + 256) = v159;
  *(v169 + 264) = v182;
  *(v169 + 272) = v215;
  v183 = v274[3];
  *(v169 + 312) = v274[2];
  *(v169 + 328) = v183;
  *(v169 + 344) = v274[4];
  v184 = v274[1];
  *(v169 + 280) = v274[0];
  *(v169 + 296) = v184;
  v185 = *(v169 + 440);
  v237 = *(v169 + 424);
  *v238 = v185;
  *&v238[13] = *(v169 + 453);
  v186 = *(v169 + 376);
  v233 = *(v169 + 360);
  v234 = v186;
  v187 = *(v169 + 408);
  v235 = *(v169 + 392);
  v236 = v187;
  sub_10000CAAC(&v233, &qword_101A00900, &qword_1014C7930);
  v188 = v230[0];
  *(v169 + 424) = v229;
  *(v169 + 440) = v188;
  *(v169 + 453) = *(v230 + 13);
  v189 = v226;
  *(v169 + 360) = v225;
  *(v169 + 376) = v189;
  v190 = v228;
  *(v169 + 392) = v227;
  *(v169 + 408) = v190;
  sub_100810990(v206, v169 + v171);
}

void sub_10080F2CC(char *a1)
{
  v3 = sub_1005B981C(&unk_1019FFD10, &unk_101483A60);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v24 - v5;
  v7 = type metadata accessor for CRLWPShapeItemCRDTData(0);
  __chkstk_darwin(v7);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for CRLWPStorageCRDTData(0);
  v11 = __chkstk_darwin(v10 - 8);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *&a1[OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemData];
  if (!v14)
  {
    goto LABEL_12;
  }

  (*(*v14 + 896))(v11);
  sub_1005E0A78(&v9[*(v7 + 20)], v13);
  sub_1008108C0(v9, type metadata accessor for CRLWPShapeItemCRDTData);
  (*(v4 + 16))(v6, v13, v3);
  sub_1008108C0(v13, type metadata accessor for CRLWPStorageCRDTData);
  v15 = CRAttributedString.attributedString.getter();
  (*(v4 + 8))(v6, v3);
  v16 = [v15 length];

  if (!v16)
  {
    sub_100A28D8C();
    v17 = v18;
    v19 = [v18 range];
    v21 = v20;
    v24 = 0;
    v25 = 0xE000000000000000;
    Character.write<A>(to:)();
    v22 = v19 + v21;
    if (__OFADD__(v19, v21))
    {
      __break(1u);
    }

    else if (v22 >= v19)
    {
      sub_100A2E55C(v19, v22, v24, v25, 1);

      goto LABEL_7;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  v17 = a1;
LABEL_7:
  if ((v17[OBJC_IVAR____TtC8Freeform12CRLWPStorage__hasValidPresentationProperties] & 1) == 0)
  {
    sub_100A2A960();
  }

  v23 = *&v17[OBJC_IVAR____TtC8Freeform12CRLWPStorage__coreTextAttributedString];
  AttributedString.init(_:)();

  type metadata accessor for TSContentLanguage.Models.Text(0);
  swift_storeEnumTagMultiPayload();
}

unint64_t sub_10080F620()
{
  result = qword_101A02650;
  if (!qword_101A02650)
  {
    v3 = type metadata accessor for TSContentLanguage.Models.Shape(255);
    result = swift_getWitnessTable(protocol conformance descriptor for TSContentLanguage.Models.Shape, v3, v0, v1);
    atomic_store(result, &qword_101A02650);
  }

  return result;
}

uint64_t sub_10080F678@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  _s13ShapeExporterCMa();
  result = swift_allocObject();
  *(result + 16) = a1;
  *a2 = result;
  return result;
}

double sub_10080F6B4@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_10080D90C(a1, v7, a3);
  if (v3)
  {
    v6 = v7[1];
    *a2 = v7[0];
    *(a2 + 8) = v6;
    result = *&v8;
    *(a2 + 16) = v8;
  }

  return result;
}

void sub_10080F700(unint64_t *a2@<X1>, double *a3@<X8>)
{
  v159 = a2;
  v9 = v4;
  v135 = a3;
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v130 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  objc_opt_self();
  v14 = swift_dynamicCastObjCClass();
  if (v14)
  {
    v15 = [v14 color];
    sub_100758F90(v15, &v138, v154);
    if (v4)
    {
      v16 = *(&v138 + 1);
      v17 = v138;
      v18 = v139;
      v19 = v140;

LABEL_77:
      v129 = v159;
      *v159 = v17;
      v129[1] = v16;
      v129[2] = v18;
      v129[3] = v19;
      return;
    }

    v46 = v154[0];
    *&v136[8] = v154[1];
    v47 = v154[2];
    v23 = v154[3];
    v48 = v155;

    v50 = v23;
    v51 = v46;
    v52 = 0;
    v53 = 0;
    v54 = 0;
LABEL_29:
    v55 = v135;
    *v135 = v51;
    v55[1] = *&v136[8];
    *(v55 + 2) = v47;
    *(v55 + 3) = v50;
    *(v55 + 4) = v54 | (v46 << 8) | v48;
    v55[5] = v6;
    *(v55 + 6) = v7;
    *(v55 + 7) = v8;
    *(v55 + 8) = v53 | v49;
    *(v55 + 9) = v23;
    *(v55 + 80) = v5;
    *(v55 + 81) = v52;
    return;
  }

  objc_opt_self();
  v20 = swift_dynamicCastObjCClass();
  if (!v20)
  {
    objc_opt_self();
    v56 = swift_dynamicCastObjCClass();
    if (v56)
    {
      v57 = v56;
      v58 = *(*(v3 + 16) + 16);

      v134 = v57;
      v59 = [v57 imageData];
      Strong = swift_unknownObjectWeakLoadStrong();
      v133 = v59;
      v61 = &v59[OBJC_IVAR____TtC8Freeform8CRLAsset_storage];
      v62 = *(v61 + 4);
      *&v136[8] = *(v61 + 3);
      sub_100020E58(v61, *&v136[8]);
      *&v132 = Strong;
      if (Strong)
      {
        v63 = *(v62 + 24);
        *&v130 = v58;
        v63(*&v136[8], v62);
        v64 = UUID.uuidString.getter();
        v66 = v65;
        (*(v11 + 8))(v13, v10);
        *&v145 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        *(&v145 + 1) = v67;

        v68._countAndFlagsBits = v64;
        v68._object = v66;
        String.append(_:)(v68);

        *v136 = v145;
        v69 = *(v61 + 3);
        v70 = *(v61 + 4);
        sub_100020E58(v61, v69);
        v47 = (*(v70 + 16))(v69, v70);
        *&v131 = v71;
        v72 = v132;
        swift_unknownObjectRelease();
      }

      else
      {
        v83 = v133;
        v84 = (*(v62 + 32))(*&v136[8], v62);
        if (v85 >> 60 == 15)
        {
          v16 = 0x800000010156B580;
          v17 = 0xD000000000000038;
          *&v145 = 0xD000000000000038;
          *(&v145 + 1) = 0x800000010156B580;
          sub_10075915C();
          *v146 = 0;
          *&v146[8] = 0;
          swift_willThrowTypedImpl();

LABEL_72:
          v18 = 0;
          v19 = 0;
          goto LABEL_77;
        }

        v86 = v84;
        v87 = v85;
        *v136 = Data.base64EncodedString(options:)(0);
        sub_100025870(v86, v87);
        v88 = *(v61 + 3);
        v89 = *(v61 + 4);
        sub_100020E58(v61, v88);
        v47 = (*(v89 + 16))(v88, v89);
        *&v131 = v90;

        v72 = v132;
      }

      v91 = v134;
      v92 = [v134 technique];
      if (v92 >= 5)
      {
        LOBYTE(v46) = 0;
      }

      else
      {
        LOBYTE(v46) = 0x201040300uLL >> (8 * v92);
      }

      v93 = [v91 tintColor];
      if (v93)
      {
        v94 = v93;
        sub_100758F90(v93, &v138, v157);
        if (v9)
        {
          v16 = *(&v138 + 1);
          v17 = v138;
          v18 = v139;
          v19 = v140;

          sub_10067F154();
          goto LABEL_77;
        }

        v7 = v157[0];
        v8 = v157[1];
        v95 = v157[2];
        v23 = v157[3];
        LOBYTE(v5) = v158;
      }

      else
      {
        v95 = 0;
        v23 = 0;
        LOBYTE(v5) = 2;
        v7 = 0;
        v8 = 0;
      }

      v152 = 0;
      v153 = 0;
      [v134 scale];
      v6 = v96 * 100.0;
      LOBYTE(v137) = v72 != 0;
      if (v96 * 100.0 >= 10.0 && v6 <= 200.0)
      {
        v54 = 0;
        v48 = v137;
        v53 = v95 & 0xFFFFFFFFFFFFFF00;
        v52 = 2;
        v49 = v95;
        v51 = *v136;
        v50 = v131;
        goto LABEL_29;
      }

      v97 = v95;
      v17 = 0xD000000000000014;
      v145 = *v136;
      *v146 = v47;
      *&v146[8] = v131;
      v146[16] = v137;
      v146[17] = v46;
      *&v147 = v96 * 100.0;
      *(&v147 + 1) = v7;
      v148 = v8;
      v149 = v97;
      v150 = v23;
      v151 = v5;
      sub_100810A7C(&v145);
      v143 = sub_1005B981C(&qword_101A02780, &qword_10147FA08);
      v144 = sub_10001A2F8(&qword_101A02788, &qword_101A02780, &qword_10147FA08, &protocol conformance descriptor for ClosedRange<A>);
      v141 = xmmword_10147F9C0;
      sub_1005B981C(&qword_101A02790, &qword_1014CE6D0);
      sub_10001A2F8(&qword_101A02798, &qword_101A02790, &qword_1014CE6D0, protocol conformance descriptor for TSContentLanguage.Validation.Error.NumberOutOfRange<A>);
      swift_allocError();
      *(v98 + 40) = v6;
      sub_100050F74(&v141, v98);
      swift_willThrow();
      v99 = 47;
      goto LABEL_74;
    }

LABEL_71:
    v16 = 0x800000010156B560;
    v17 = 0xD00000000000001FLL;
    *&v145 = 0xD00000000000001FLL;
    *(&v145 + 1) = 0x800000010156B560;
    sub_10075915C();
    *v146 = 0;
    *&v146[8] = 0;
    swift_willThrowTypedImpl();
    goto LABEL_72;
  }

  v152 = 0;
  v153 = 0;
  v133 = v20;
  v21 = [v20 gradientStops];
  sub_100006370(0, &qword_101A027A0, off_10182F840);
  v22 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v22 >> 62)
  {
    goto LABEL_55;
  }

  v23 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v23)
  {
LABEL_56:

    *v136 = _swiftEmptyArrayStorage;
LABEL_57:
    objc_opt_self();
    v100 = v133;
    v101 = swift_dynamicCastObjCClass();
    if (v101)
    {
      v102 = v101;
      v152 = 0;
      v153 = 0;
      [v100 opacity];
      v104 = v103;
      [v102 gradientAngleInDegrees];
      v106 = v105;
      if (v105 < 0.0 || v105 > 360.0)
      {
        *&v146[8] = sub_1005B981C(&qword_101A02780, &qword_10147FA08);
        *&v146[16] = sub_10001A2F8(&qword_101A02788, &qword_101A02780, &qword_10147FA08, &protocol conformance descriptor for ClosedRange<A>);
        v145 = xmmword_10147F9B0;
        sub_1005B981C(&qword_101A02790, &qword_1014CE6D0);
        sub_10001A2F8(&qword_101A02798, &qword_101A02790, &qword_1014CE6D0, protocol conformance descriptor for TSContentLanguage.Validation.Error.NumberOutOfRange<A>);
        v119 = swift_allocError();
        *(v120 + 40) = v106;
        sub_100050F74(&v145, v120);
        swift_willThrow();
        sub_100810B2C();
        swift_allocError();
        *v121 = 0x656C676E61;
        v121[1] = 0xE500000000000000;
        v121[2] = v119;
        swift_willThrow();
      }

      else
      {
        LOBYTE(v137) = 0;
        v51 = *v136;
        if (v104 >= 0.0 && v104 <= 1.0)
        {
          v50 = 0;
          v53 = 0;
          v48 = 0;
          LOBYTE(v46) = 0;
          v54 = 0;
          v49 = v137;
          v6 = 0.0;
          v47 = *&v105;
          v7 = 0;
          *&v136[8] = v104;
          v52 = 1;
          v8 = 0;
          goto LABEL_29;
        }

        *&v145 = *v136;
        *(&v145 + 1) = v104;
        *v146 = v105;
        *&v146[8] = 0u;
        v147 = 0u;
        v148 = 0;
        LOBYTE(v149) = v137;
        sub_100810B80(&v145);
        v143 = sub_1005B981C(&qword_101A02780, &qword_10147FA08);
        v144 = sub_10001A2F8(&qword_101A02788, &qword_101A02780, &qword_10147FA08, &protocol conformance descriptor for ClosedRange<A>);
        v141 = xmmword_101463BB0;
        sub_1005B981C(&qword_101A02790, &qword_1014CE6D0);
        sub_10001A2F8(&qword_101A02798, &qword_101A02790, &qword_1014CE6D0, protocol conformance descriptor for TSContentLanguage.Validation.Error.NumberOutOfRange<A>);
        v122 = swift_allocError();
        *(v123 + 40) = v104;
        sub_100050F74(&v141, v123);
        swift_willThrow();
        sub_100810B2C();
        swift_allocError();
        *v124 = 0x7974696361706FLL;
        v124[1] = 0xE700000000000000;
        v124[2] = v122;
        swift_willThrow();
      }

      v17 = 0xD000000000000014;
      v18 = sub_10080B1F0(&v152, "export(_:)", 10, 2, "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/Compatibility/ContentLanguage/Exporters/Style/CRLCLFillExporter.swift", 123, 2, 31);
      v19 = v125;
      v16 = 0x800000010156B4F0;
      *&v145 = 0xD000000000000014;
      *(&v145 + 1) = 0x800000010156B4F0;
      *v146 = v18;
      *&v146[8] = v125;
      sub_10075915C();
      swift_willThrowTypedImpl();
LABEL_76:

      goto LABEL_77;
    }

    objc_opt_self();
    v107 = swift_dynamicCastObjCClass();
    if (v107)
    {
      v108 = v107;
      [v107 startPoint];
      v110 = v109;
      v112 = v111;
      [v108 endPoint];
      v114 = v113;
      v6 = v115;
      [v108 baseNaturalSize];
      v7 = v116;
      v8 = v117;
      v152 = 0;
      v153 = 0;
      [v100 opacity];
      LOBYTE(v137) = 1;
      if (v118 >= 0.0 && v118 <= 1.0)
      {
        v53 = 0;
        v48 = v114;
        v50 = v112;
        v47 = v110;
        v49 = v137;
        *&v136[8] = v118;
        v46 = v114 >> 8;
        v54 = v114 & 0xFFFFFFFFFFFF0000;
        v52 = 1;
        v51 = *v136;
        goto LABEL_29;
      }

      v17 = 0xD000000000000014;
      *&v145 = *v136;
      *(&v145 + 1) = v118;
      *v146 = v110;
      *&v146[8] = v112;
      *&v146[16] = v114;
      *&v147 = v6;
      *(&v147 + 1) = v7;
      v148 = v8;
      LOBYTE(v149) = v137;
      v126 = v118;
      sub_100810B80(&v145);
      v143 = sub_1005B981C(&qword_101A02780, &qword_10147FA08);
      v144 = sub_10001A2F8(&qword_101A02788, &qword_101A02780, &qword_10147FA08, &protocol conformance descriptor for ClosedRange<A>);
      v141 = xmmword_101463BB0;
      sub_1005B981C(&qword_101A02790, &qword_1014CE6D0);
      sub_10001A2F8(&qword_101A02798, &qword_101A02790, &qword_1014CE6D0, protocol conformance descriptor for TSContentLanguage.Validation.Error.NumberOutOfRange<A>);
      swift_allocError();
      *(v127 + 40) = v126;
      sub_100050F74(&v141, v127);
      swift_willThrow();
      v99 = 36;
LABEL_74:
      v18 = sub_10080B1F0(&v152, "export(_:)", 10, 2, "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/Compatibility/ContentLanguage/Exporters/Style/CRLCLFillExporter.swift", 123, 2, v99);
      v19 = v128;
      v16 = 0x800000010156B4F0;
      *&v141 = 0xD000000000000014;
      *(&v141 + 1) = 0x800000010156B4F0;
      v142 = v18;
      v143 = v128;
      sub_10075915C();
LABEL_75:
      swift_willThrowTypedImpl();
      goto LABEL_76;
    }

    goto LABEL_71;
  }

  while (1)
  {
    v137 = _swiftEmptyArrayStorage;
    sub_100776BA4(0, v23 & ~(v23 >> 63), 0);
    if (v23 < 0)
    {
      break;
    }

    v24 = 0;
    v25 = v137;
    *v136 = v22 & 0xC000000000000001;
    v134 = (v22 & 0xFFFFFFFFFFFFFF8);
    while (1)
    {
      v26 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        break;
      }

      if (*v136)
      {
        v27 = v25;
        v28 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v24 >= *(v134 + 2))
        {
          goto LABEL_54;
        }

        v27 = v25;
        v28 = *(v22 + 8 * v24 + 32);
      }

      v29 = v28;
      v30 = [v28 color];
      sub_100758F90(v30, &v138, v156);
      if (v9)
      {
        *&v136[8] = v138;
        v73 = v139;
        v74 = v140;

        sub_10075915C();
        swift_allocError();
        *v75 = *&v136[8];
        *(v75 + 16) = v73;
        *(v75 + 24) = v74;
LABEL_37:

        v17 = 0xD000000000000014;
        v18 = sub_10080B1F0(&v152, "export(_:)", 10, 2, "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/Compatibility/ContentLanguage/Exporters/Style/CRLCLFillExporter.swift", 123, 2, 24);
        v19 = v82;
        v16 = 0x800000010156B4F0;
        *&v145 = 0xD000000000000014;
        *(&v145 + 1) = 0x800000010156B4F0;
        *v146 = v18;
        *&v146[8] = v82;
        sub_10075915C();
        goto LABEL_75;
      }

      [v29 fraction];
      v32 = v31;
      [v29 inflection];
      v34 = v33;
      sub_100810AD0(v156, &v145);
      *&v147 = v32;
      *(&v147 + 1) = v34;
      if (v32 < 0.0 || v32 > 1.0)
      {

        v143 = sub_1005B981C(&qword_101A02780, &qword_10147FA08);
        v144 = sub_10001A2F8(&qword_101A02788, &qword_101A02780, &qword_10147FA08, &protocol conformance descriptor for ClosedRange<A>);
        v141 = xmmword_101463BB0;
        sub_1005B981C(&qword_101A02790, &qword_1014CE6D0);
        sub_10001A2F8(&qword_101A02798, &qword_101A02790, &qword_1014CE6D0, protocol conformance descriptor for TSContentLanguage.Validation.Error.NumberOutOfRange<A>);
        v76 = swift_allocError();
        *(v77 + 40) = v32;
        sub_100050F74(&v141, v77);
        v78 = 0xE800000000000000;
        v79 = 0x6E6F697463617266;
LABEL_36:
        swift_willThrow();
        sub_100810B2C();
        swift_allocError();
        *v81 = v79;
        v81[1] = v78;
        v81[2] = v76;
        swift_willThrow();
        goto LABEL_37;
      }

      if (v34 < 0.0 || v34 > 1.0)
      {

        v143 = sub_1005B981C(&qword_101A02780, &qword_10147FA08);
        v144 = sub_10001A2F8(&qword_101A02788, &qword_101A02780, &qword_10147FA08, &protocol conformance descriptor for ClosedRange<A>);
        v141 = xmmword_101463BB0;
        sub_1005B981C(&qword_101A02790, &qword_1014CE6D0);
        sub_10001A2F8(&qword_101A02798, &qword_101A02790, &qword_1014CE6D0, protocol conformance descriptor for TSContentLanguage.Validation.Error.NumberOutOfRange<A>);
        v76 = swift_allocError();
        *(v80 + 40) = v34;
        sub_100050F74(&v141, v80);
        v78 = 0xEA00000000006E6FLL;
        v79 = 0x697463656C666E69;
        goto LABEL_36;
      }

      *&v136[8] = 0;
      v37 = v22;
      v38 = v23;

      v39 = v145;
      v40 = *v146;
      v41 = v146[16];
      v42 = v147;
      v25 = v27;
      v137 = v27;
      v5 = v27[2];
      v43 = v25[3];
      if (v5 >= v43 >> 1)
      {
        v131 = *v146;
        v132 = v145;
        v130 = v147;
        sub_100776BA4((v43 > 1), v5 + 1, 1);
        v42 = v130;
        v40 = v131;
        v39 = v132;
        v25 = v137;
      }

      v25[2] = v5 + 1;
      v44 = &v25[7 * v5];
      *(v44 + 2) = v39;
      *(v44 + 3) = v40;
      *(v44 + 64) = v41;
      *(v44 + 9) = v42;
      ++v24;
      v23 = v38;
      v45 = v26 == v38;
      v22 = v37;
      v9 = *&v136[8];
      if (v45)
      {
        *v136 = v25;

        goto LABEL_57;
      }
    }

    __break(1u);
LABEL_54:
    __break(1u);
LABEL_55:
    v23 = _CocoaArrayWrapper.endIndex.getter();
    if (!v23)
    {
      goto LABEL_56;
    }
  }

  __break(1u);
}

uint64_t sub_1008108C0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100810920(uint64_t a1, uint64_t a2)
{
  v4 = sub_1005B981C(&qword_101A003E0, &qword_10147C4C8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100810990(uint64_t a1, uint64_t a2)
{
  v4 = sub_1005B981C(&qword_101A003E0, &qword_10147C4C8);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_100810A00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a6)
  {
  }

  return result;
}

unint64_t sub_100810B2C()
{
  result = qword_101A027A8;
  if (!qword_101A027A8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TSContentLanguage.Validation.Error.PropertyValidationFailed, &type metadata for TSContentLanguage.Validation.Error.PropertyValidationFailed, v0, v1);
    atomic_store(result, &qword_101A027A8);
  }

  return result;
}

void *sub_100810BEC(uint64_t a1, void *a2)
{
  v2[2] = a1;
  v2[3] = a2;
  _s20CanvasObjectImporterCMa();
  v5 = swift_allocObject();
  *(v5 + 32) = 0u;
  *(v5 + 48) = 0u;
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  v2[4] = v5;

  v6 = a2;
  return v2;
}

char *sub_100810C50(uint64_t a1)
{
  v3 = v2;
  v89 = *v1;
  v93 = type metadata accessor for UUID();
  v92 = *(v93 - 8);
  __chkstk_darwin(v93);
  v91 = &v87 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for TSContentLanguage.Models.CanvasObject(0);
  v96 = *(v6 - 8);
  __chkstk_darwin(v6 - 8);
  v8 = &v87 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a1 + 56);
  v10 = v9 | (*(a1 + 58) << 16);
  if (v9 == 2)
  {
    LOBYTE(v10) = 0;
    v11 = 0.0;
    v12 = 1;
    v13 = 100.0;
    v14 = 1;
    v15 = 0.0;
    v16 = 100.0;
    v17 = 0.0;
  }

  else
  {
    v16 = *(a1 + 40);
    v17 = *(a1 + 48);
    v15 = *(a1 + 24);
    v13 = *(a1 + 32);
    v12 = (v10 >> 8) & 1;
    v14 = HIWORD(v10) & 1;
    v11 = *(a1 + 16);
  }

  v18 = a1;
  v19 = [objc_allocWithZone(CRLCanvasInfoGeometry) initWithTransformedBoundsOrigin:v11 size:v15 angle:{v13, v16, v17}];
  [v19 position];
  v21 = v20;
  v23 = v22;

  v24 = [objc_allocWithZone(CRLCanvasInfoGeometry) initWithPosition:v12 size:v14 widthValid:v10 & 1 heightValid:0 horizontalFlip:v21 verticalFlip:v23 angle:{v13, v16, v17}];
  v25 = v95;
  v26 = *(v95 + 16);
  v90 = v18;
  v27 = *(v18 + 80);
  sub_100640CB4(v27);
  *&v97 = v26;
  sub_10080B3F0();

  v28 = *(v27 + 16);
  v29 = _swiftEmptyArrayStorage;
  if (v28)
  {
    v94 = v24;
    *&v99.a = _swiftEmptyArrayStorage;
    specialized ContiguousArray.reserveCapacity(_:)();
    *&v98 = *(v25 + 32);
    v30 = v27 + ((*(v96 + 80) + 32) & ~*(v96 + 80));
    v31 = *(v96 + 72);
    while (1)
    {
      sub_10069980C(v30, v8);
      v35 = sub_100813A40(v8);
      if (v3)
      {
        break;
      }

      v3 = 0;
      sub_100699870(v8);
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v30 += v31;
      if (!--v28)
      {
        v29 = *&v99.a;
        v24 = v94;
        goto LABEL_9;
      }
    }

    v46 = v32;
    v47 = v33;
    v48 = v34;
    sub_10080B4B4();
    swift_allocError();
    *v49 = v35;
    v49[1] = v46;
    v49[2] = v47;
    v49[3] = v48;
    sub_100699870(v8);

    v45 = 0;
    v24 = v94;
    goto LABEL_12;
  }

LABEL_9:
  v36 = sub_10080AE2C();
  if (v3)
  {
    v40 = v36;
    v41 = v37;
    v42 = v38;
    v43 = v39;
    sub_10080B4B4();
    swift_allocError();
    *v44 = v40;
    v44[1] = v41;
    v44[2] = v42;
    v44[3] = v43;
    v45 = 1;
LABEL_12:
    v99.a = -2.31584178e77;
    *&v99.b = 0x800000010156B670;
    sub_10080B4B4();
    v99.c = 0.0;
    v99.d = 0.0;
    swift_willThrowTypedImpl();

    if (v45)
    {
    }

    return 0xD000000000000022;
  }

  v88 = 0;
  [v24 transform];
  CGAffineTransformInvert(&v103, &v99);
  v98 = *&v103.c;
  v97 = *&v103.a;
  tx = v103.tx;
  ty = v103.ty;
  v94 = v24;
  if (v29 >> 62)
  {
    goto LABEL_27;
  }

  for (i = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v53 = 0;
    v96 = v29 & 0xC000000000000001;
    v54 = v29 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v96)
      {
        v55 = v29;
        v56 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v53 >= *(v54 + 16))
        {
          goto LABEL_26;
        }

        v55 = v29;
        v56 = *(v29 + 8 * v53 + 32);
      }

      v57 = v56;
      v29 = v53 + 1;
      if (__OFADD__(v53, 1))
      {
        break;
      }

      v58 = (*((swift_isaMask & *v56) + 0xE0))();
      *&v99.a = v97;
      *&v99.c = v98;
      v99.tx = tx;
      v99.ty = ty;
      v59 = [v58 geometryByAppendingTransform:&v99];

      (*((swift_isaMask & *v57) + 0xE8))(v59);
      ++v53;
      v60 = v29 == i;
      v29 = v55;
      if (v60)
      {
        goto LABEL_28;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    ;
  }

LABEL_28:
  v61 = *(v95 + 24);
  v62 = type metadata accessor for CRLGroupItem(0);
  v63 = *(v61 + OBJC_IVAR____TtC8Freeform19CRLBoardItemFactory_board);
  v64 = *(v63 + OBJC_IVAR____TtC8Freeform8CRLBoard_store);
  v65 = v91;
  (*(**(*(v63 + OBJC_IVAR____TtC8Freeform8CRLBoard_rootContainer) + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData) + 264))();
  v66 = objc_allocWithZone(v62);
  v67 = v64;
  isa = UUID._bridgeToObjectiveC()().super.isa;
  v69 = v94;
  v70 = [v66 initWithStore:v67 parentContainerUUID:isa geometry:v94];

  (*(v92 + 8))(v65, v93);
  v71 = v88;
  sub_10097A374(v29);
  if (v71)
  {

    v99.a = -2.31584178e77;
    *&v99.b = 0x800000010156B6A0;
    sub_10080B4B4();
    v99.c = 0.0;
    v99.d = 0.0;
    swift_willThrowTypedImpl();

    return 0xD000000000000022;
  }

  v72 = v69;

  v73 = v90;
  v74 = *(v90 + 48);
  *&v99.tx = *(v90 + 32);
  v100 = v74;
  v101 = *(v90 + 64);
  v102 = *(v90 + 80);
  v75 = *(v90 + 16);
  *&v99.a = *v90;
  *&v99.c = v75;
  v76 = sub_100811650();
  v77 = sub_100813794(&v99, v89, v76);
  if (*(v73 + 59) == 2)
  {
    v79 = v77;
  }

  else
  {
    v79 = *(v73 + 59);
  }

  v80 = v70;
  if (sub_1011255D4())
  {
    v81 = OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData;
    v82 = *(**&v80[OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData] + 392);

    v84 = v82(v83) & 1;

    v85 = v79 & 1;
    if (v85 != v84)
    {
      v86 = *(**&v80[v81] + 400);

      v86(v85);
    }
  }

  return v80;
}

uint64_t sub_10081154C()
{

  return swift_deallocClassInstance();
}

void *sub_1008115BC@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  _s13GroupImporterCMa();
  v6 = swift_allocObject();
  result = sub_100810BEC(a1, a2);
  *a3 = v6;
  return result;
}

unint64_t sub_100811650()
{
  result = qword_101A02898;
  if (!qword_101A02898)
  {
    v3 = _s13GroupImporterCMa();
    result = swift_getWitnessTable(")c;", v3, v0, v1);
    atomic_store(result, &qword_101A02898);
  }

  return result;
}

Swift::Double __swiftcall simd_quatd.angle(to:)(simd_quatd *to)
{
  v5 = fabs(vaddvq_f64(vaddq_f64(vmulq_f64(v1, v3), vmulq_f64(v2, v4))));
  if (v5 > 1.0)
  {
    v5 = 1.0;
  }

  v6 = acos(v5);
  return (v6 + v6) * 57.2957795;
}

Swift::Double __swiftcall SPRotation3D.angle(to:)(SPRotation3D *to)
{
  v5 = fabs(vaddvq_f64(vaddq_f64(vmulq_f64(v1, v3), vmulq_f64(v2, v4))));
  if (v5 > 1.0)
  {
    v5 = 1.0;
  }

  v6 = acos(v5);
  return (v6 + v6) * 57.2957795;
}

BOOL sub_100811758@<W0>(void *a1@<X0>, char a2@<W1>, char a3@<W2>, uint64_t a4@<X8>)
{
  [a1 frame];
  v9 = v8;
  v11 = v10;
  [a1 size];
  v13 = v12;
  v15 = v14;
  [a1 transform];
  v16 = sub_100139980(&v20);
  sub_1001208E0(-v16);
  v18 = v17;
  if (sub_100811990(v17))
  {
    v18 = 0.0;
  }

  [a1 transform];
  result = sub_1001399E4(&v20);
  *a4 = v9;
  *(a4 + 8) = v11;
  *(a4 + 16) = v13;
  *(a4 + 24) = v15;
  *(a4 + 32) = v18;
  *(a4 + 40) = result;
  *(a4 + 41) = a2;
  *(a4 + 42) = a3;
  return result;
}

id sub_100811868@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  [a1 transformedBounds];
  v5 = v4;
  v7 = v6;
  [a1 size];
  v9 = v8;
  v11 = v10;
  [a1 transform];
  v12 = sub_100139980(&v18);
  sub_1001208E0(-v12);
  v14 = v13;
  if (sub_100811990(v13))
  {
    v14 = 0.0;
  }

  [a1 transform];
  v15 = sub_1001399E4(&v18);
  v16 = [a1 widthValid];
  result = [a1 heightValid];
  *a2 = v5;
  *(a2 + 8) = v7;
  *(a2 + 16) = v9;
  *(a2 + 24) = v11;
  *(a2 + 32) = v14;
  *(a2 + 40) = v15;
  *(a2 + 41) = v16;
  *(a2 + 42) = result;
  return result;
}

unint64_t sub_1008119C4@<X0>(void *a1@<X0>, unint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v71 = a2;
  v5 = v4;
  v6 = v3;
  v69 = a3;
  v8 = type metadata accessor for TSContentLanguage.Models.CanvasObject(0);
  *&v76 = *(v8 - 8);
  __chkstk_darwin(v8 - 8);
  v102 = &v67 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = v6[2];
  v11 = OBJC_IVAR____TtC8Freeform16CRLContainerItem__cachedOrderedItems;
  v72 = a1;
  v12 = *(a1 + OBJC_IVAR____TtC8Freeform16CRLContainerItem__cachedOrderedItems);
  if (!v12)
  {
    v13 = v72;
    sub_10096C7D4();
    v12 = *(v13 + v11);
  }

  v14 = _swiftEmptyArrayStorage;
  if (v12)
  {
    v15 = v12;
  }

  else
  {
    v15 = _swiftEmptyArrayStorage;
  }

  if (v15 >> 62)
  {
LABEL_51:

    sub_1005B981C(&qword_1019F5720, &unk_101474E20);
    v16 = _bridgeCocoaArray<A>(_:)();
  }

  else
  {

    dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
    v16 = v15;
  }

  sub_1008145A8(v16);
  if (v5)
  {

LABEL_35:
    v31 = 0x800000010156B730;
    v32 = 0xD000000000000022;
    v86 = 0xD000000000000022;
    v87 = 0x800000010156B730;
    sub_10075915C();
    v88 = 0uLL;
    result = swift_willThrowTypedImpl();
    goto LABEL_44;
  }

  v17 = *(v72 + v11);
  if (!v17)
  {
    v18 = v72;
    sub_10096C7D4();
    v17 = *(v18 + v11);
  }

  if (v17)
  {
    v11 = v17;
  }

  else
  {
    v11 = v14;
  }

  if (v11 >> 62)
  {
LABEL_53:
    v5 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v5 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v19 = v72;
  v68 = v10;
  if (v5)
  {
    v19 = v6;
    v79 = v14;

    sub_100776B84(0, v5 & ~(v5 >> 63), 0);
    if ((v5 & 0x8000000000000000) == 0)
    {
      v14 = 0;
      v6 = v79;
      *&v75 = *(v19 + 24);
      *(&v75 + 1) = v11 & 0xC000000000000001;
      v70 = v11 & 0xFFFFFFFFFFFFFF8;
      v73 = v5;
      v74 = v11;
      while (1)
      {
        if (__OFADD__(v14, 1))
        {
          __break(1u);
          goto LABEL_51;
        }

        if (*(&v75 + 1))
        {
          v20 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v14 >= *(v70 + 16))
          {
            __break(1u);
            goto LABEL_53;
          }

          v20 = *(v11 + 8 * v14 + 32);
        }

        v21 = v20;
        v22 = (*((swift_isaMask & *v20) + 0x300))();
        if (!v22)
        {
          *&v80 = 0xD00000000000002DLL;
          *(&v80 + 1) = 0x800000010156B3D0;
          sub_10075915C();
          v81 = 0uLL;
          swift_willThrowTypedImpl();

LABEL_34:

          goto LABEL_35;
        }

        v24 = v22;
        v10 = v23;
        *(&v76 + 1) = v14 + 1;
        v77 = v14;
        v25 = v6;
        v26 = *(v75 + 16);
        v78 = 0;
        v27 = *(v23 + 32);
        *(&v88 + 1) = v22;
        *&v89 = v23;
        sub_10002C58C(&v86);
        v27(v26, v24, v10);
        type metadata accessor for CRLBoardItem(0);

        v28 = v78;
        sub_1008149FC(v21, v24, v10, v97, v102);
        if (v28)
        {
          sub_100005070(&v86);

          goto LABEL_34;
        }

        sub_100005070(&v86);

        v6 = v25;
        v79 = v25;
        v30 = v25[2];
        v29 = v25[3];
        v5 = v30 + 1;
        if (v30 >= v29 >> 1)
        {
          sub_100776B84((v29 > 1), v30 + 1, 1);
          v6 = v79;
        }

        v6[2] = v5;
        sub_100812790(v102, v6 + ((*(v76 + 80) + 32) & ~*(v76 + 80)) + *(v76 + 72) * v30);
        v14 = v77 + 1;
        v11 = v74;
        if (*(&v76 + 1) == v73)
        {

          v19 = v72;
          goto LABEL_36;
        }
      }
    }

    __break(1u);
LABEL_55:
    if (!_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_56;
    }

    goto LABEL_38;
  }

  v6 = _swiftEmptyArrayStorage;
LABEL_36:
  v34 = v68;
  swift_beginAccess();
  v35 = *(v34 + 32);
  if (v35 >> 62)
  {
    goto LABEL_55;
  }

  if (!*((v35 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_56:
    __break(1u);
    goto LABEL_57;
  }

LABEL_38:
  v36 = v68;
  if (sub_100FB0C8C())
  {
    goto LABEL_42;
  }

  v37 = *(v36 + 32);
  if (v37 >> 62)
  {
LABEL_57:
    v66 = _CocoaArrayWrapper.endIndex.getter();
    v39 = __OFSUB__(v66, 1);
    result = v66 - 1;
    if (!v39)
    {
      goto LABEL_41;
    }

LABEL_59:
    __break(1u);
    return result;
  }

  v38 = *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v39 = __OFSUB__(v38, 1);
  result = v38 - 1;
  if (v39)
  {
    goto LABEL_59;
  }

LABEL_41:
  v36 = v68;
  sub_10106B378(result);
LABEL_42:

  swift_endAccess();
  v40 = sub_10098EAA4(v19, v36);
  v42 = v41;
  v102 = 0;
  sub_100814500();
  v44 = [*(v36 + 24) layoutForInfo:v19];
  if (!v44)
  {

    v32 = 0xD000000000000021;
    v86 = 0xD000000000000024;
    v87 = 0x800000010156B430;
    sub_10075915C();
    v88 = 0uLL;
    swift_willThrowTypedImpl();
    swift_allocError();
    *v61 = 0xD000000000000024;
    v61[1] = 0x800000010156B430;
    v61[2] = 0;
    v61[3] = 0;
    goto LABEL_43;
  }

  v78 = v6;
  v45 = v19;
  v46 = v44;
  v47 = [v44 geometry];

  sub_100811758(v47, 1, 1, v98);
  v75 = v98[0];
  v76 = v98[1];
  v77 = v99;
  v48 = v100 | (v101 << 16);

  v49 = OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData;
  v50 = *(**(v45 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData) + 392);

  LOBYTE(v46) = v50(v51);

  v52 = v46 & 1;
  v53 = *(v45 + v49);
  v54 = v78;
  v55 = *(*v53 + 416);

  v57 = v55(v56);
  v59 = v58;

  v60 = v102;
  sub_100CAF4F0(v54);
  if (v60)
  {
    v86 = v40;
    v87 = v42;
    v88 = v75;
    v89 = v76;
    v90 = v77;
    v92 = BYTE2(v48);
    v91 = v48;
    v93 = v52;
    v94 = v57;
    v95 = v59;
    v96 = v54;
    sub_1008127F4(&v86);
    v32 = 0xD000000000000021;
LABEL_43:
    v31 = 0x800000010156B760;
    v86 = 0xD000000000000021;
    v87 = 0x800000010156B760;
    sub_10075915C();
    v88 = 0uLL;
    swift_willThrowTypedImpl();

LABEL_44:
    v43 = v71;
    *v71 = v32;
    v43[1] = v31;
    v43[2] = 0;
    v43[3] = 0;
    return result;
  }

  *&v80 = v40;
  *(&v80 + 1) = v42;
  v81 = v75;
  v82 = v76;
  *&v83 = v77;
  BYTE10(v83) = BYTE2(v48);
  WORD4(v83) = v48;
  BYTE11(v83) = v52;
  *&v84 = v57;
  *(&v84 + 1) = v59;
  v85 = v54;
  v86 = v40;
  v87 = v42;
  v88 = v75;
  v89 = v76;
  v90 = v77;
  v91 = v48;
  v92 = BYTE2(v48);
  v93 = v52;
  v94 = v57;
  v95 = v59;
  v96 = v54;
  sub_100812848(&v80, &v79);
  result = sub_1008127F4(&v86);
  v62 = v83;
  v63 = v84;
  v64 = v69;
  *(v69 + 32) = v82;
  *(v64 + 48) = v62;
  *(v64 + 64) = v63;
  *(v64 + 80) = v85;
  v65 = v81;
  *v64 = v80;
  *(v64 + 16) = v65;
  return result;
}

void *sub_1008122D4(uint64_t a1, __n128 a2)
{
  v3 = OBJC_IVAR____TtC8Freeform16CRLContainerItem__cachedOrderedItems;
  v4 = *(a1 + OBJC_IVAR____TtC8Freeform16CRLContainerItem__cachedOrderedItems);
  if (!v4)
  {
    sub_10096C7D4();
    v4 = *(a1 + v3);
  }

  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = _swiftEmptyArrayStorage;
  }

  if (v5 >> 62)
  {
    goto LABEL_38;
  }

  v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);

  while (v6)
  {
    v7 = 0;
    v31 = v5 & 0xFFFFFFFFFFFFFF8;
    v32 = v5 & 0xC000000000000001;
    v8 = _swiftEmptyArrayStorage;
    v29 = v6;
    v30 = v5;
    while (1)
    {
      if (v32)
      {
        v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v7 >= *(v31 + 16))
        {
          goto LABEL_33;
        }

        v9 = *(v5 + 8 * v7 + 32);
      }

      v10 = v9;
      if (__OFADD__(v7, 1))
      {
        break;
      }

      v34 = v7 + 1;
      v11 = *(v33 + 24);
      v12 = (*((swift_isaMask & *v9) + 0x300))();
      if (v12)
      {
        v14 = v12;
        v15 = v13;
        v16 = *(v11 + 16);
        v17 = *(v13 + 32);
        v36 = v12;
        v37 = v13;
        sub_10002C58C(v35);
        v17(v16, v14, v15);
        v18 = type metadata accessor for CRLBoardItem(0);

        v19 = sub_100814D74(v10, v14, v18, v15);
        sub_100005070(v35);

        v6 = v29;
        v5 = v30;
      }

      else
      {
        v35[0] = 0xD00000000000002DLL;
        v35[1] = 0x800000010156B3D0;
        sub_10075915C();
        v35[2] = 0;
        v36 = 0;
        swift_willThrowTypedImpl();

        v19 = _swiftEmptyArrayStorage;
      }

      v20 = v19[2];
      v21 = v8[2];
      v22 = v21 + v20;
      if (__OFADD__(v21, v20))
      {
        goto LABEL_34;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (isUniquelyReferenced_nonNull_native && v22 <= v8[3] >> 1)
      {
        if (v19[2])
        {
          goto LABEL_27;
        }
      }

      else
      {
        if (v21 <= v22)
        {
          v24 = v21 + v20;
        }

        else
        {
          v24 = v21;
        }

        v8 = sub_100B37A10(isUniquelyReferenced_nonNull_native, v24, 1, v8);
        if (v19[2])
        {
LABEL_27:
          if ((v8[3] >> 1) - v8[2] < v20)
          {
            goto LABEL_36;
          }

          sub_1005B981C(&unk_101A02638, &qword_10147F9A8);
          swift_arrayInitWithCopy();

          if (v20)
          {
            v25 = v8[2];
            v26 = __OFADD__(v25, v20);
            v27 = v25 + v20;
            if (v26)
            {
              goto LABEL_37;
            }

            v8[2] = v27;
          }

          goto LABEL_10;
        }
      }

      if (v20)
      {
        goto LABEL_35;
      }

LABEL_10:
      ++v7;
      if (v34 == v6)
      {
        goto LABEL_40;
      }
    }

    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    v6 = _CocoaArrayWrapper.endIndex.getter();
  }

  v8 = _swiftEmptyArrayStorage;
LABEL_40:

  return v8;
}

uint64_t sub_10081266C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  _s13GroupExporterCMa();
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  _s20CanvasObjectExporterCMa();
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v4 + 24) = v5;
  *a2 = v4;
}

double sub_1008126E4@<D0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_1008119C4(a1, v10, v12);
  if (v3)
  {
    v6 = v10[1];
    *a2 = v10[0];
    *(a2 + 8) = v6;
    result = *&v11;
    *(a2 + 16) = v11;
  }

  else
  {
    v8 = v12[3];
    *(a3 + 32) = v12[2];
    *(a3 + 48) = v8;
    *(a3 + 64) = v12[4];
    *(a3 + 80) = v13;
    result = *v12;
    v9 = v12[1];
    *a3 = v12[0];
    *(a3 + 16) = v9;
  }

  return result;
}

uint64_t sub_100812790(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TSContentLanguage.Models.CanvasObject(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

id sub_1008128C8(uint64_t a1, void *a2)
{
  v4 = objc_opt_self();
  v5 = String._bridgeToObjectiveC()();
  v6 = [v4 bezierPathFromSVGPathDAttribute:v5];

  if (!v6)
  {
    v7._countAndFlagsBits = a1;
    v7._object = a2;
    String.append(_:)(v7);
    v6 = 0xD000000000000023;
    sub_10080B4B4();
    swift_willThrowTypedImpl();
  }

  return v6;
}

void sub_1008129D4(uint64_t a1@<X0>, CGFloat *a2@<X1>, double *a3@<X8>)
{
  v7 = sub_1008128C8(*a1, *(a1 + 8));
  v11 = v7;
  if (v3)
  {
    goto LABEL_2;
  }

  [v7 bounds];
  v14 = v12;
  v15 = v13;
  v17 = v16;
  v19 = v18;
  v20 = v12;
  v21 = v13;
  v22 = v16;
  v23 = v18;
  if ((*(a1 + 48) & 1) == 0)
  {
    v22 = *(a1 + 32);
    v23 = *(a1 + 40);
    v20 = *(a1 + 16);
    v21 = *(a1 + 24);
  }

  CGAffineTransformMakeTranslation(&v30, -v12, -v13);
  [v11 transformUsingAffineTransform:&v30];
  v24 = [objc_allocWithZone(CRLBezierPathSource) initWithBezierPath:{v11, 0, 0}];
  if (!v24)
  {
    v26 = sub_10080B1F0(&v29, "pathSource(from:)", 17, 2, "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/Compatibility/ContentLanguage/Importers/Utility/CRLCLPathImporter.swift", 125, 2, 85);
    v28 = v27;

    v30.a = -2.31584178e77;
    *&v30.b = 0x800000010156B2B0;
    *&v30.c = v26;
    v30.d = v28;
    sub_10080B4B4();
    swift_willThrowTypedImpl();

    v8 = 0x800000010156B2B0;
    v10 = v28;
    v9 = v26;
    v11 = 0xD000000000000014;
LABEL_2:
    *a2 = v11;
    *(a2 + 1) = v8;
    *(a2 + 2) = v9;
    a2[3] = v10;
    return;
  }

  v25 = v24;

  *a3 = v25;
  a3[1] = v14;
  a3[2] = v15;
  *(a3 + 3) = v17;
  *(a3 + 4) = v19;
  a3[5] = v20;
  a3[6] = v21;
  *(a3 + 7) = v22;
  *(a3 + 8) = v23;
}

unint64_t sub_100812BA4(id a1, double a2, double a3, double a4, double a5, CGFloat a6, CGFloat a7, CGFloat a8, CGFloat a9)
{
  if (a8 == 0.0 && ([a1 size], v18 != 0.0) || (v65 = a2, a9 == 0.0) && (objc_msgSend(a1, "size"), v19 != 0.0))
  {
    sub_10080B4B4();
    swift_willThrowTypedImpl();
    return 0xD00000000000001DLL;
  }

  else
  {
    v63 = a4;
    v64 = a5;
    if (a8 == 0.0)
    {
      v20 = 1.0;
    }

    else
    {
      v20 = a8;
    }

    v21 = sub_100120414(a6, a7, a8, a9);
    v60 = sub_10011EC70(v21, v22, v20);
    v24 = v23;
    v26 = v25;
    v28 = v27;
    [a1 boundsBeforeRotation];
    if (v31 == 0.0)
    {
      v33 = 1.0;
    }

    else
    {
      v33 = v31;
    }

    v34 = sub_100120414(v29, v30, v31, v32);
    v36 = sub_10011EC70(v34, v35, v33);
    v38 = v37;
    v40 = v39;
    v62 = a3;
    v42 = v41;
    v43 = [a1 widthValid];
    v44 = [a1 heightValid];
    v45 = [a1 horizontalFlip];
    v46 = [a1 verticalFlip];
    [a1 angle];
    v48 = [objc_allocWithZone(CRLCanvasInfoGeometry) initWithPosition:v43 size:v44 widthValid:v45 heightValid:v46 horizontalFlip:v36 verticalFlip:v38 angle:{v40, v42, v47}];
    [v48 fullTransform];
    tx = t1.tx;
    ty = t1.ty;
    v57 = *&t1.c;
    v58 = *&t1.a;
    v51 = [objc_allocWithZone(CRLCanvasInfoGeometry) initWithPosition:v60 size:{v24, v26, v28}];
    [v51 fullTransform];
    CGAffineTransformInvert(&t2, &t1);
    t1 = t2;
    *&t2.a = v58;
    *&t2.c = v57;
    t2.tx = tx;
    t2.ty = ty;
    CGAffineTransformConcat(&v66, &t1, &t2);
    v52 = v66.tx;
    v53 = v66.ty;
    v59 = *&v66.c;
    v61 = *&v66.a;
    v54 = [objc_allocWithZone(CRLCanvasInfoGeometry) initWithPosition:v65 size:{v62, v63, v64}];
    *&t1.a = v61;
    *&t1.c = v59;
    t1.tx = v52;
    t1.ty = v53;
    v55 = [v54 geometryByAppendingTransform:&t1];

    return v55;
  }
}

id sub_100812EE4(void *a1)
{
  type metadata accessor for CGPoint(0);
  v2 = static Array._allocateBufferUninitialized(minimumCapacity:)();
  *(v2 + 32) = 0u;
  *(v2 + 16) = 4;
  *(v2 + 48) = 0u;
  *(v2 + 64) = 0u;
  *(v2 + 80) = 0u;
  result = [a1 elementAtIndex:1 allPoints:v2 + 32];
  v4 = 3;
  if (result != 2)
  {
    v4 = 1;
  }

  v5 = *(v2 + 16);
  if (v5)
  {
    if (v4 < v5)
    {
      v7 = *(v2 + 32);
      v6 = *(v2 + 40);
      v8 = (v2 + 32 + 16 * v4);
      v9 = *v8;
      v10 = sub_10011F31C(*v8, v8[1], v7);
      v12 = v11;
      v13 = sub_1001208D0(v10, v11);
      v14 = sub_100813728(-v13);
      sub_1001208E0(v14);
      v16 = v15;
      v17 = sub_100120074(v10, v12);
      v18 = sub_10011F334(v7, v6, v9);
      v20 = sub_10011F340(v18, v19, 0.5);
      v22 = sub_10011EC70(v20, v21, v17);
      v24 = v23;
      v26 = v25;
      v28 = v27;
      v29 = [objc_opt_self() pathSourceForShapeType:1 naturalSize:{v25, v27}];
      [objc_allocWithZone(CRLCanvasInfoGeometry) initWithPosition:v22 size:v24 angle:{v26, v28, v16}];

      return v29;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_100813090(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v3 = *(a2 + 8);
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  v7 = *(a2 + 32);
  v8 = *(a2 + 40) | (*(a2 + 42) << 16);
  v9 = *(a1 + 8);
  if (!v9)
  {
    if (*(a2 + 40) == 2)
    {
      goto LABEL_5;
    }

    v39 = v2;
    v13 = 0.0;
    v73 = 0.0;
    v74 = 0.0;
    v15 = 0.0;
    v16 = 0.0;
    v14 = 0.0;
    v71 = 0.0;
    v72 = 0.0;
    v70 = 0.0;
    goto LABEL_13;
  }

  v10 = *(a1 + 48);
  v86[0] = *a1;
  v86[1] = v9;
  v11 = *(a1 + 32);
  v87 = *(a1 + 16);
  v88 = v11;
  v89 = v10 & 1;
  sub_1008129D4(v86, &v83, &v75);
  if (!v2)
  {
    v14 = *&v76;
    v13 = v75;
    v15 = *&v78;
    v16 = *&v77;
    v18 = v79;
    v17 = v80;
    v19 = v81;
    v20 = v82;
    if (v8 == 2)
    {
      if (v75 != 0.0)
      {
        v21 = *(&v79 + 1);
        v22 = v80;
        v23 = v81;
        v24 = v82;
        v25 = v76;
        v27 = v78;
        v26 = v77;
        v28 = *&v79;
        if (CGRectEqualToRect(*(&v17 - 1), *(&v18 - 24)))
        {
          v29 = [objc_allocWithZone(CRLCanvasInfoGeometry) initWithPosition:v14 size:{v16, v15, v28}];
          if (v29)
          {
            v30 = v29;
            v31 = v14;
            v32 = v16;
            v33 = v15;
            v34 = v28;
            v35 = v21;
            v36 = v22;
            v37 = v23;
            v38 = v24;
            goto LABEL_17;
          }

          v12 = 0xD00000000000001ALL;
          *&v57 = COERCE_DOUBLE(0x800000010156B8B0);
          v75 = -2.31584178e77;
          *&v76 = COERCE_DOUBLE(0x800000010156B7C0);
          *&v58 = -2.31584178e77;
        }

        else
        {
          v12 = 0xD00000000000001ALL;
          *&v57 = COERCE_DOUBLE(0x800000010156B830);
          v75 = -2.31584178e77;
          *&v76 = COERCE_DOUBLE(0x800000010156B7C0);
          *&v58 = -2.31584178e77;
        }

        v77 = v58;
        v78 = v57;
        sub_10080B4B4();
        swift_willThrowTypedImpl();

        return v12;
      }

LABEL_5:
      v12 = 0xD00000000000001ALL;
      v75 = -2.31584178e77;
      *&v76 = COERCE_DOUBLE(0x800000010156B7C0);
      *&v77 = -2.31584178e77;
      *&v78 = COERCE_DOUBLE(0x800000010156B7E0);
      sub_10080B4B4();
      swift_willThrowTypedImpl();
      return v12;
    }

    v70 = *(&v79 + 1);
    v71 = v81;
    v72 = v80;
    v73 = v82;
    v74 = *&v79;
    v39 = 0;
LABEL_13:
    v40 = [objc_allocWithZone(CRLCanvasInfoGeometry) initWithTransformedBoundsOrigin:v4 size:v3 angle:{v5, v6, v7}];
    [v40 position];
    v42 = v41;
    v44 = v43;

    v30 = [objc_allocWithZone(CRLCanvasInfoGeometry) initWithPosition:(v8 >> 8) & 1 size:HIWORD(v8) & 1 widthValid:v8 & 1 heightValid:0 horizontalFlip:v42 verticalFlip:v44 angle:{v5, v6, v7}];
    if (([v30 widthValid] & 1) == 0 || (objc_msgSend(v30, "heightValid") & 1) == 0)
    {

      [v30 size];
      v46 = 1.0;
      v47 = 1.0;
      if (v48 > 0.0)
      {
        [v30 size];
        v47 = v49;
      }

      [v30 size];
      if (v50 > 0.0)
      {
        [v30 size];
        v46 = v51;
      }

      v84 = 0;
      v85 = 0;
      v52 = COERCE_DOUBLE([objc_allocWithZone(CRLBezierPathSource) initWithNaturalSize:{v47, v46}]);
      if (v52 == 0.0)
      {
        *&v54 = COERCE_DOUBLE(sub_10080B1F0(&v84, "import(transformedPath:targetSpaceGeometry:)", 44, 2, "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/Compatibility/ContentLanguage/Importers/Utility/CRLCLPathImporter.swift", 125, 2, 28));
        v56 = v55;

        v12 = 0xD000000000000014;
        v75 = -2.31584178e77;
        *&v76 = COERCE_DOUBLE(0x800000010156B2B0);
        v77 = v54;
        v78 = v56;
        sub_10080B4B4();
        swift_willThrowTypedImpl();
LABEL_27:

        return v12;
      }

      v53 = v52;

      v13 = v53;
      return *&v13;
    }

    if (v13 == 0.0)
    {
      [v30 size];
      if (v59 <= 0.0 || ([v30 size], v60 <= 0.0))
      {
        v12 = 0xD00000000000001ALL;
        *&v66 = COERCE_DOUBLE(0x800000010156B9C0);
        v75 = -2.31584178e77;
        *&v76 = COERCE_DOUBLE(0x800000010156B7C0);
        *&v67 = -2.31584178e77;
      }

      else
      {
        v84 = 0;
        v85 = 0;
        [v30 size];
        v63 = COERCE_DOUBLE([objc_allocWithZone(CRLBezierPathSource) initWithNaturalSize:{v61, v62}]);
        if (v63 != 0.0)
        {
          v13 = v63;
          return *&v13;
        }

        *&v67 = COERCE_DOUBLE(sub_10080B1F0(&v84, "import(transformedPath:targetSpaceGeometry:)", 44, 2, "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/Compatibility/ContentLanguage/Importers/Utility/CRLCLPathImporter.swift", 125, 2, 36));
        v66 = v69;

        v12 = 0xD000000000000014;
        v75 = -2.31584178e77;
        *&v76 = COERCE_DOUBLE(0x800000010156B2B0);
      }

      v77 = v67;
      v78 = v66;
      sub_10080B4B4();
      swift_willThrowTypedImpl();

      return v12;
    }

    v31 = v14;
    v32 = v16;
    v33 = v15;
    v38 = v73;
    v34 = v74;
    v35 = v70;
    v37 = v71;
    v36 = v72;
    v29 = v30;
    v2 = v39;
LABEL_17:
    v45 = sub_100812BA4(v29, v31, v32, v33, v34, v35, v36, v37, v38);
    v12 = v45;
    if (v2)
    {
      goto LABEL_27;
    }

    [v45 size];
    [*&v13 scaleToNaturalSize:?];
    v64 = [*&v13 bezierPath];
    if ([v64 isLineSegment])
    {
      [v12 transform];
      [v64 transformUsingAffineTransform:&v75];
      v65 = COERCE_DOUBLE(sub_100812EE4(v64));

      v13 = v65;
    }

    else
    {
    }

    return *&v13;
  }

  return v83;
}

uint64_t sub_100813738()
{
  sub_1000C1024(v0 + 16);

  return swift_deallocClassInstance();
}

unint64_t sub_100813794(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v18 = a1;
  v3 = type metadata accessor for TSContentLanguage.Models.CanvasObject(0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin(AssociatedTypeWitness);
  v10 = v17 - v9;
  v11 = sub_1005B981C(&qword_101A02D40, &unk_10147FBB0);
  v12 = __chkstk_darwin(v11 - 8);
  v14 = v17 - v13;
  (*(v8 + 16))(v10, v18, AssociatedTypeWitness, v12);
  swift_getAssociatedConformanceWitness();
  TSContentLanguage.Models.CanvasObject.init<A>(object:)(v10, AssociatedTypeWitness, v14);
  if ((*(v4 + 48))(v14, 1, v3) == 1)
  {
    sub_100814148(v14);
    v15 = 0xD00000000000002FLL;
    v17[2] = 0xD00000000000002FLL;
    v17[3] = 0x800000010156BB90;
    sub_10080B4B4();
    v17[4] = 0;
    v17[5] = 0;
    swift_willThrowTypedImpl();
  }

  else
  {
    sub_10069980C(v14, v6);
    v15 = qword_10147FBC0[swift_getEnumCaseMultiPayload()];
    sub_100699870(v6);
    sub_100699870(v14);
  }

  return v15;
}

void *sub_100813A40(uint64_t a1)
{
  result = sub_1008142A8(a1);
  if (v2)
  {
    return result;
  }

  v6 = *(v1 + 16);
  v5 = *(v1 + 24);
  v7 = *(v4 + 32);
  v30 = result;
  v31 = v4;
  v8 = result;
  v9 = v4;
  sub_10002C58C(v29);
  v7(v6, v5, v8, v9);
  v10 = v30;
  v11 = v31;
  sub_100020E58(v29, v30);
  TSContentLanguage.Models.CanvasObject.canvasObject.getter(v27);
  v12 = v28;
  v13 = sub_100020E58(v27, v28);

  v14 = v5;
  v15 = sub_100813D6C(v13, v10, v12, v11);
  sub_100005070(v27);
  v16 = TSContentLanguage.Models.CanvasObject.description.getter();
  if (v17)
  {
    (*((swift_isaMask & *v15) + 0x1B8))(v16);
  }

  v18 = TSContentLanguage.Models.CanvasObject.identifier.getter();
  if (!v19)
  {
    goto LABEL_15;
  }

  v20 = v18;
  v21 = v19;
  swift_beginAccess();
  v22 = *(v6 + 24);
  if (!(v22 >> 62))
  {
    result = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_9;
    }

LABEL_17:

    v27[0] = 0xD000000000000013;
    v27[1] = 0x800000010156BBC0;
    sub_10080B4B4();
    v27[2] = 0;
    v28 = 0;
    swift_willThrowTypedImpl();

    sub_100005070(v29);
    return 0xD000000000000013;
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  if (!result)
  {
    goto LABEL_17;
  }

LABEL_9:
  v23 = result - 1;
  if (__OFSUB__(result, 1))
  {
    __break(1u);
    goto LABEL_19;
  }

  if ((v22 & 0xC000000000000001) != 0)
  {
LABEL_19:

    v24 = specialized _ArrayBuffer._getElementSlowPath(_:)();

    goto LABEL_14;
  }

  if ((v23 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v23 < *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v24 = *(v22 + 8 * v23 + 32);

LABEL_14:
    swift_beginAccess();

    v25 = v15;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v32 = *(v24 + 16);
    *(v24 + 16) = 0x8000000000000000;
    sub_100A9E89C(v25, v20, v21, isUniquelyReferenced_nonNull_native);

    *(v24 + 16) = v32;
    swift_endAccess();

LABEL_15:
    sub_100005070(v29);
    return v15;
  }

  __break(1u);
  return result;
}

uint64_t sub_100813D6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v28 = a4;
  v29 = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v27 = type metadata accessor for Optional();
  v7 = *(v27 - 8);
  __chkstk_darwin(v27);
  v9 = &v27 - v8;
  __chkstk_darwin(v10);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(AssociatedTypeWitness - 8);
  v15 = __chkstk_darwin(v14);
  v17 = &v27 - v16;
  (*(v18 + 16))(v12, a1, a3, v15);
  v19 = swift_dynamicCast();
  v20 = *(v13 + 56);
  if (v19)
  {
    v20(v9, 0, 1, AssociatedTypeWitness);
    (*(v13 + 32))(v17, v9, AssociatedTypeWitness);
    v21 = (*(v28 + 40))(v17, v29);
    (*(v13 + 8))(v17, AssociatedTypeWitness);
  }

  else
  {
    v21 = 0xD00000000000002ELL;
    v20(v9, 1, 1, AssociatedTypeWitness);
    (*(v7 + 8))(v9, v27);
    DynamicType = swift_getDynamicType();
    sub_1008141B0(DynamicType, AssociatedTypeWitness);
    v30 = 0xD00000000000002ELL;
    v31 = v23;
    v32 = v24;
    v33 = v25;
    sub_10080B4B4();
    swift_willThrowTypedImpl();
  }

  return v21;
}

uint64_t sub_1008140C4()
{

  return swift_deallocClassInstance();
}

uint64_t sub_100814148(uint64_t a1)
{
  v2 = sub_1005B981C(&qword_101A02D40, &unk_10147FBB0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1008141B0(uint64_t a1, uint64_t a2)
{
  _StringGuts.grow(_:)(33);

  v2._countAndFlagsBits = _typeName(_:qualified:)();
  String.append(_:)(v2);

  v3._countAndFlagsBits = 0x6365722074756220;
  v3._object = 0xEE00206465766965;
  String.append(_:)(v3);
  v4._countAndFlagsBits = _typeName(_:qualified:)();
  String.append(_:)(v4);

  return 0xD00000000000002ELL;
}

uint64_t sub_1008142A8(uint64_t a1)
{
  v2 = type metadata accessor for TSContentLanguage.Models.CanvasObject(0);
  __chkstk_darwin(v2);
  v4 = v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10069980C(a1, v4);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      v6 = _s13GroupImporterCMa();
      v7 = &qword_101A02898;
      v8 = _s13GroupImporterCMa;
      v9 = ")c;";
    }

    else
    {
      v6 = _s22ConnectionLineImporterCMa();
      v7 = &unk_101A02D50;
      v8 = _s22ConnectionLineImporterCMa;
      v9 = &unk_1014BFDD8;
    }

    goto LABEL_10;
  }

  if (EnumCaseMultiPayload == 2)
  {
    v6 = _s13ImageImporterCMa();
    v7 = &qword_101A02488;
    v8 = _s13ImageImporterCMa;
    v9 = "id;";
    goto LABEL_10;
  }

  if (EnumCaseMultiPayload == 3)
  {
    v6 = _s13ShapeImporterCMa();
    v7 = &unk_101A02D48;
    v8 = _s13ShapeImporterCMa;
    v9 = &unk_10147FDD0;
LABEL_10:
    sub_1008144B8(v7, v8, v9);
    sub_100699870(v4);
    return v6;
  }

  v6 = 0xD00000000000002CLL;
  v11[0] = 0xD00000000000002CLL;
  v11[1] = 0x800000010156BC10;
  sub_10080B4B4();
  v11[2] = 0;
  v11[3] = 0;
  swift_willThrowTypedImpl();
  sub_100699870(v4);
  return v6;
}

uint64_t sub_1008144B8(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100814500()
{
  if (*(v0 + 40))
  {
    v1 = *(v0 + 40);
  }

  else
  {
    _s16GeometryExporterCMa();
    v1 = swift_allocObject();
    *(v0 + 40) = v1;
  }

  return v1;
}

uint64_t sub_100814554()
{
  if (*(v0 + 48))
  {
    v1 = *(v0 + 48);
  }

  else
  {
    _s12PathExporterCMa();
    v1 = swift_allocObject();
    *(v0 + 48) = v1;
  }

  return v1;
}

unint64_t sub_1008145A8(unint64_t a1)
{
  type metadata accessor for CRLCLExport.DrawableContainer();
  v3 = swift_allocObject();
  *(v3 + 16) = _swiftEmptySetSingleton;
  *(v3 + 24) = _swiftEmptySetSingleton;
  swift_beginAccess();

  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((*(v1 + 32) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v1 + 32) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  swift_endAccess();
  v4 = sub_100F224FC(a1);
  if (v4)
  {
    sub_10098E0CC(v3, v4);
    v6 = v5;
  }

  else
  {
    v6 = 0xD00000000000001CLL;
    sub_10075915C();
    swift_willThrowTypedImpl();
  }

  return v6;
}

uint64_t sub_100814730()
{

  return swift_deallocClassInstance();
}

void *sub_1008147E0(uint64_t a1, unint64_t a2)
{
  v4 = [objc_allocWithZone(CRLCanvasLayoutController) initWithCanvas:0];

  if (a2 >> 62)
  {
    sub_1005B981C(&qword_1019F5720, &unk_101474E20);
    _bridgeCocoaArray<A>(_:)();
  }

  else
  {
    dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
  }

  sub_1005B981C(&qword_1019F5720, &unk_101474E20);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v4 setInfos:isa];

  [v4 validateLayouts];
  type metadata accessor for CRLCLExport.Context();
  result = swift_allocObject();
  result[5] = 0;
  result[6] = 0;
  result[3] = v4;
  result[4] = _swiftEmptyArrayStorage;
  result[2] = a1;
  return result;
}

unint64_t sub_10081491C(void *a1)
{
  a1[1] = sub_100814954();
  a1[2] = sub_1008149A8();
  result = sub_10075915C();
  a1[3] = result;
  return result;
}

unint64_t sub_100814954()
{
  result = qword_101A02F58;
  if (!qword_101A02F58)
  {
    result = swift_getWitnessTable(byte_10147FC8C, &type metadata for CRLCLExport.ExportError, v0, v1);
    atomic_store(result, &qword_101A02F58);
  }

  return result;
}

unint64_t sub_1008149A8()
{
  result = qword_101A02F60;
  if (!qword_101A02F60)
  {
    result = swift_getWitnessTable("%9;", &type metadata for CRLCLExport.ExportError, v0, v1);
    atomic_store(result, &qword_101A02F60);
  }

  return result;
}

void sub_1008149FC(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, unint64_t *a4@<X4>, uint64_t a5@<X8>)
{
  v40 = a5;
  v9 = sub_1005B981C(&qword_101A02D40, &unk_10147FBB0);
  __chkstk_darwin(v9 - 8);
  v42 = &v39 - v10;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v43 = *(AssociatedTypeWitness - 8);
  v44 = AssociatedTypeWitness;
  __chkstk_darwin(AssociatedTypeWitness);
  v13 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v39 - v15;
  v17 = swift_getAssociatedTypeWitness();
  v18 = swift_dynamicCastClass();
  if (v18)
  {
    v19 = v18;
    v41 = a4;
    v20 = *(a3 + 40);
    v21 = a1;
    v22 = v50;
    v20(v19, v45, a2, a3);
    if (v22)
    {
      v23 = v45[0];
      v24 = v45[1];
      v25 = v45[2];
      v26 = v45[3];
    }

    else
    {
      v31 = v43;
      v32 = v44;
      (*(v43 + 16))(v13, v16, v44);
      swift_getAssociatedConformanceWitness();
      v33 = v42;
      TSContentLanguage.Models.CanvasObject.init<A>(object:)(v13, v32, v42);
      v34 = type metadata accessor for TSContentLanguage.Models.CanvasObject(0);
      if ((*(*(v34 - 8) + 48))(v33, 1, v34) != 1)
      {
        (*(v31 + 8))(v16, v32);

        sub_100812790(v33, v40);
        return;
      }

      sub_100814148(v33);
      sub_100814F9C(v16, v32);
      v35 = v31;
      v24 = v36;
      v25 = v37;
      v26 = v38;
      v23 = 0xD00000000000002FLL;
      v46 = 0xD00000000000002FLL;
      v47 = v36;
      v48 = v37;
      v49 = v38;
      sub_10075915C();
      swift_willThrowTypedImpl();

      (*(v35 + 8))(v16, v32);
    }

    a4 = v41;
  }

  else
  {
    v23 = 0xD00000000000002BLL;
    ObjectType = swift_getObjectType();
    sub_100814EAC(ObjectType, v17);
    v24 = v28;
    v25 = v29;
    v26 = v30;
    v46 = 0xD00000000000002BLL;
    v47 = v28;
    v48 = v29;
    v49 = v30;
    sub_10075915C();
    swift_willThrowTypedImpl();
  }

  *a4 = v23;
  a4[1] = v24;
  a4[2] = v25;
  a4[3] = v26;
}

uint64_t sub_100814D74(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = swift_dynamicCastClass();
  if (v8)
  {
    v9 = v8;
    v10 = *(a4 + 48);
    v11 = a1;
    v12 = v10(v9, a2, a4);
  }

  else
  {
    ObjectType = swift_getObjectType();
    sub_100814EAC(ObjectType, AssociatedTypeWitness);
    v12 = 0xD00000000000002BLL;
    sub_10075915C();
    swift_willThrowTypedImpl();
  }

  return v12;
}

unint64_t sub_100814EAC(uint64_t a1, uint64_t a2)
{
  _StringGuts.grow(_:)(51);
  v2._countAndFlagsBits = 0xD00000000000001ELL;
  v2._object = 0x800000010156BE20;
  String.append(_:)(v2);
  v3._countAndFlagsBits = _typeName(_:qualified:)();
  String.append(_:)(v3);

  v4._object = 0x800000010156BE40;
  v4._countAndFlagsBits = 0xD000000000000011;
  String.append(_:)(v4);
  v5._countAndFlagsBits = _typeName(_:qualified:)();
  String.append(_:)(v5);

  return 0xD00000000000002BLL;
}

unint64_t sub_100814F9C(uint64_t a1, uint64_t a2)
{
  swift_getDynamicType();
  v2._countAndFlagsBits = _typeName(_:qualified:)();
  String.append(_:)(v2);

  return 0xD00000000000002FLL;
}

char *sub_100815020(uint64_t a1)
{
  v3 = type metadata accessor for TSContentLanguage.Models.Text(0);
  v4 = *(v3 - 8);
  v77 = v3;
  v78 = v4;
  __chkstk_darwin(v3);
  v76 = &v63[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_1005B981C(&qword_101A003E0, &qword_10147C4C8);
  __chkstk_darwin(v6 - 8);
  v8 = &v63[-v7];
  v9 = sub_1005B981C(&qword_1019FC880, &qword_1014779C0);
  __chkstk_darwin(v9 - 8);
  v11 = &v63[-v10];
  v12 = type metadata accessor for AttributedString();
  v80 = *(v12 - 8);
  __chkstk_darwin(v12);
  v14 = &v63[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v79 = v1;
  sub_10080ADD8();
  v15 = *(a1 + 96);
  v96[0] = *(a1 + 80);
  v96[1] = v15;
  v96[2] = *(a1 + 112);
  v97 = *(a1 + 128);
  v16 = *(a1 + 32);
  v98 = *(a1 + 16);
  *v99 = v16;
  *&v99[11] = *(a1 + 43);
  v17 = v100;
  v100 = sub_100813090(v96, &v98);
  v81 = v18;
  if (v17)
  {

    return v100;
  }

  v71 = v8;
  v72 = v11;
  v21 = v76;
  v20 = v77;
  v74 = v12;
  v75 = v14;
  v73 = 0;

  v23 = *(a1 + 224);
  v22 = *(a1 + 232);
  v24 = *(a1 + 240);
  v25 = *(a1 + 248);
  v26 = *(a1 + 256);
  v27 = *(a1 + 264);
  v28 = *(a1 + 272);
  v29 = *(a1 + 217);
  v30 = v28 & 0xC0;
  v68 = v24;
  v69 = v22;
  v66 = v25;
  v67 = v26;
  v65 = v27;
  v64 = v28;
  if (v29 <= 0xFE)
  {
    v31 = v80;
    v32 = v21;
  }

  else
  {
    v31 = v80;
    v32 = v21;
    if (v30 == 128 && !(v22 | v23 | v24 | v25 | v26 | v27) && v28 == 128)
    {
      v70 = 0;
      goto LABEL_10;
    }
  }

  v70 = 1;
LABEL_10:
  v33 = v20;
  v34 = type metadata accessor for TSContentLanguage.Models.Shape(0);
  v35 = v71;
  sub_10000BE14(a1 + *(v34 + 60), v71, &qword_101A003E0, &qword_10147C4C8);
  if ((*(v78 + 48))(v35, 1, v33) == 1)
  {
    v78 = v23;
    v36 = v31;
    v37 = *(v31 + 56);
    v38 = v72;
    v39 = v74;
    v37(v72, 1, 1, v74);
  }

  else
  {
    LODWORD(v77) = v30;
    sub_1007B5304(v35, v32);

    v40 = v32;
    v38 = v72;
    v41 = v73;
    sub_100816D68(v40, v82, v72);
    if (v41)
    {
      v42 = v82[0];

      sub_1008184B8(v40, type metadata accessor for TSContentLanguage.Models.Text);

      return v42;
    }

    v78 = v23;
    v73 = 0;
    sub_1008184B8(v40, type metadata accessor for TSContentLanguage.Models.Text);
    v36 = v31;
    v43 = *(v31 + 56);
    v39 = v74;
    v43(v38, 0, 1, v74);

    v30 = v77;
  }

  v44 = *(v36 + 48);
  if (v44(v38, 1, v39) == 1)
  {
    v45 = v75;
    AttributedString.init(stringLiteral:)();
    if (v44(v38, 1, v39) != 1)
    {
      sub_10000CAAC(v38, &qword_1019FC880, &qword_1014779C0);
    }
  }

  else
  {
    v46 = *(v36 + 32);
    v45 = v75;
    v46(v75, v38, v39);
  }

  v47 = sub_1008175A8(v45);
  v48 = *(a1 + 216);
  if (v48 >> 8 <= 0xFE && (v48 & 0xFF00) == 0x200)
  {
    v49 = *(a1 + 168);
    v85 = *(a1 + 152);
    v86 = v49;
    v50 = *(a1 + 200);
    v87 = *(a1 + 184);
    v88 = v50;
    v84 = *(a1 + 136);
    v89[2] = v49;
    v89[3] = v87;
    v89[4] = v50;
    v89[0] = v84;
    v89[1] = v85;
    v90 = v48;
    sub_1008185E0(v89, &v83);
    v93[0] = v86;
    v93[1] = v87;
    v93[2] = v88;
    v91 = v84;
    v92 = v85;
    LOBYTE(v93[3]) = v48;
  }

  else
  {
    v91 = 0u;
    v92 = 0u;
    *&v93[0] = 255;
    *(v93 + 8) = 0u;
    *(&v93[1] + 8) = 0u;
    *(&v93[2] + 1) = 0u;
  }

  v51 = v73;
  v52 = v81;
  if (v30 == 128 && (!(v69 | v78 | v68 | v66 | v67 | v65) ? (v53 = v64 == 128) : (v53 = 0), v53 ? (v54 = 0) : (v54 = 1), !((LOBYTE(v93[0]) == 0xFF) | v54 & 1 | v47 & 1)))
  {
    v59 = 0;
    v55 = v100;
  }

  else
  {
    v55 = v100;
    v56 = v75;
    v57 = sub_1008158AC(a1, v100, v81, v75, v70);
    v58 = v57;
    if (v51)
    {
      (*(v80 + 8))(v56, v74);
      sub_10000CAAC(&v91, &qword_101A031B0, &qword_10147FDF0);

      return v58;
    }

    if (LOBYTE(v93[0]) == 0xFF)
    {

      (*(v80 + 8))(v75, v74);
      return v58;
    }

    v59 = v57;
  }

  v94[2] = v93[0];
  v94[3] = v93[1];
  v94[4] = v93[2];
  v95 = v93[3];
  v94[0] = v91;
  v94[1] = v92;
  v60 = sub_1008160FC(a1, v59, v94, v55, v52);
  if (v51)
  {
    (*(v80 + 8))(v75, v74);
    sub_10000CAAC(&v91, &qword_101A031B0, &qword_10147FDF0);

    return v60;
  }

  else
  {
    sub_10000CAAC(&v91, &qword_101A031B0, &qword_10147FDF0);
    if (v59)
    {
      v61 = v59;
      v62 = sub_100816798(v60, v61);
      (*(v80 + 8))(v75, v74);

      return v62;
    }

    else
    {
      (*(v80 + 8))(v75, v74);

      return v60;
    }
  }
}

char *sub_1008158AC(uint64_t a1, void *a2, void *a3, char *a4, int a5)
{
  v114 = a5;
  v74 = a4;
  v75 = a1;
  v72 = *v5;
  v8 = type metadata accessor for AttributedString();
  v73 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v66[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = sub_1005B981C(&unk_101A0B1C0, &qword_101470EC0);
  __chkstk_darwin(v11 - 8);
  v13 = &v66[-v12];
  v14 = sub_1005B981C(&qword_1019FC880, &qword_1014779C0);
  __chkstk_darwin(v14 - 8);
  v16 = &v66[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v17);
  v19 = &v66[-v18];
  v20 = v76;
  result = sub_100817864(a2, a3);
  if (v20)
  {
    return result;
  }

  v68 = v10;
  v69 = v13;
  v23 = v19;
  v24 = *(v75 + 56) | (*(v75 + 58) << 16);
  v25 = *(v75 + 56);
  v70 = v22;
  v71 = 0;
  v76 = result;
  if (v25 != 2)
  {
    v27 = v73;
    v28 = v74;
    v29 = v5;
    if ((v24 & 0x100) != 0)
    {
      v67 = (v24 & 0x10000) == 0;
      v26 = v23;
      if (v24 & 0x10000) != 0 || (v114)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v67 = 1;
      v26 = v23;
      if (v114)
      {
        goto LABEL_4;
      }
    }

    v30 = 0;
    goto LABEL_11;
  }

  v67 = 0;
  v26 = v19;
  v27 = v73;
  v28 = v74;
  v29 = v5;
LABEL_4:
  v30 = 21;
LABEL_11:
  LOBYTE(v77) = 1;
  v113 = 1;
  v93 = xmmword_101478900;
  LOBYTE(v94) = 0;
  DWORD1(v94) = 0;
  BYTE8(v94) = 1;
  *(&v94 + 9) = 512;
  *&v95 = 0;
  BYTE8(v95) = -1;
  *&v96 = 0;
  BYTE8(v96) = -1;
  v97 = 0u;
  v98 = 0u;
  v99 = 0u;
  v100 = 0u;
  v101 = 0u;
  v102 = 0u;
  v103 = 0u;
  *&v104 = 2;
  BYTE8(v104) = 0;
  *&v105 = -1;
  BYTE8(v105) = 0;
  *&v106 = 0;
  BYTE8(v106) = 0;
  *&v107 = 0;
  BYTE8(v107) = 1;
  v108 = _swiftEmptyDictionarySingleton;
  v73 = v29[3];
  (*(v27 + 16))(v26, v28, v8);
  (*(v27 + 56))(v26, 0, 1, v8);
  v89 = v105;
  v90 = v106;
  v91 = v107;
  v92 = v108;
  v85 = v101;
  v86 = v102;
  v87 = v103;
  v88 = v104;
  v81 = v97;
  v82 = v98;
  v83 = v99;
  v84 = v100;
  v77 = v93;
  v78 = v94;
  v79 = v95;
  v80 = v96;
  SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:)(&v77, v31);
  v111[12] = v89;
  v111[13] = v90;
  v111[14] = v91;
  v112 = v92;
  v111[8] = v85;
  v111[9] = v86;
  v111[10] = v87;
  v111[11] = v88;
  v111[4] = v81;
  v111[5] = v82;
  v111[6] = v83;
  v111[7] = v84;
  v111[0] = v77;
  v111[1] = v78;
  v111[2] = v79;
  v111[3] = v80;
  v32 = v30;
  v33 = sub_100818518(v30);
  v74 = v76;
  v34 = 0;
  if (!v33)
  {
    sub_10000BE14(v26, v16, &qword_1019FC880, &qword_1014779C0);
    v35 = *(v27 + 48);
    if (v35(v16, 1, v8) == 1)
    {
      AttributedString.init(stringLiteral:)();
      if (v35(v16, 1, v8) != 1)
      {
        sub_10000CAAC(v16, &qword_1019FC880, &qword_1014779C0);
      }
    }

    else
    {
      (*(v27 + 32))(v68, v16, v8);
    }

    sub_100006370(0, &qword_1019F76F0, NSAttributedString_ptr);
    v34 = NSAttributedString.init(_:)();
  }

  v36 = type metadata accessor for CRLWPStorageCRDTData(0);
  v37 = v69;
  (*(*(v36 - 8) + 56))(v69, 1, 1, v36);
  v38 = v26;
  v39 = sub_1011133FC(v32, 0, v76, 1, 0, 0, 1, 0, 0, 0, 1, 2, 2, 1, 1, 1, 1, v34, v37, v111, 0, 0, 0, 0, 1u);

  sub_10081852C(&v93);
  v40 = v74;

  sub_10000CAAC(v37, &unk_101A0B1C0, &qword_101470EC0);
  sub_10000CAAC(v38, &qword_1019FC880, &qword_1014779C0);
  v41 = *((swift_isaMask & *v39) + 0xE8);
  v42 = v39;
  v43 = v70;
  v41();

  v44 = v75;
  v45 = v71;
  v46 = sub_100817B94(v75, v42);
  if (v45)
  {
    v48 = v46;

    return v48;
  }

  else
  {
    v49 = v43;
    v50 = sub_100818580(&qword_101A02D48, v47, _s13ShapeImporterCMa, byte_10147FDD0);
    v51 = sub_100813794(v44, v72, v50);
    v76 = 0;
    if (*(v44 + 59) == 2)
    {
      v52 = v51;
    }

    else
    {
      v52 = *(v44 + 59);
    }

    if (sub_1011255D4())
    {
      v53 = OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData;
      v54 = *(**&v42[OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData] + 392);

      v56 = v54(v55) & 1;

      v57 = v52 & 1;
      v44 = v75;
      if (v57 != v56)
      {
        v58 = *(**&v42[v53] + 400);

        v58(v57);
      }
    }

    type metadata accessor for CRLWPShapeItem(0);
    v59 = swift_dynamicCastClass();
    if (v59)
    {
      v60 = v59;
      v61 = *(v44 + 440);
      v109[4] = *(v44 + 424);
      v110[0] = v61;
      *(v110 + 13) = *(v44 + 453);
      v62 = *(v44 + 376);
      v109[0] = *(v44 + 360);
      v109[1] = v62;
      v63 = *(v44 + 408);
      v109[2] = *(v44 + 392);
      v109[3] = v63;
      v64 = v42;
      sub_100D55AA4(v109, v60);
      sub_100817CB4(v60);
    }

    v65 = v74;
    if (v67)
    {
      sub_100817DE0(v42, v49, v114 & 1);
    }

    return v39;
  }
}

char *sub_1008160FC(uint64_t a1, void *a2, uint64_t *a3, void *a4, void *a5)
{
  v7 = v6;
  v70 = a2;
  v71 = a5;
  v11 = sub_1005B981C(&unk_101A1B880, &unk_10147AB00);
  __chkstk_darwin(v11 - 8);
  v69 = &v62 - v12;
  v13 = type metadata accessor for CRLAssetData(0);
  v67 = *(v13 - 8);
  v68 = v13;
  __chkstk_darwin(v13);
  v76 = &v62 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = *(v5 + 16);
  v66 = v5;
  v15 = *(v65 + 16);
  v16 = *a3;
  v17 = a3[1];
  v18 = a3[2];
  v19 = a3[3];
  if ((a3[4] & 1) == 0)
  {

    v23 = Data.init(base64Encoded:options:)();
    if (v24 >> 60 == 15)
    {
      v22 = 0xD000000000000034;
      v72 = 0xD000000000000034;
      v73 = 0x800000010156B170;
      sub_10080B4B4();
      v74 = 0;
      v75 = 0;
      swift_willThrowTypedImpl();
    }

    else
    {
      v25 = v23;
      v26 = v24;
      v63 = a4;
      v64 = a1;
      v27 = *(v15 + 16);
      objc_allocWithZone(type metadata accessor for CRLPreinsertionAssetWrapper(0));

      swift_unknownObjectRetain();
      sub_100024E84(v25, v26);
      v28 = sub_100CF051C(v25, v26, v18, v19, v27);
      if (v7)
      {
      }

      else
      {
        v34 = v28;
        if (v28)
        {
          v29 = sub_100CF34E8();

          if (v29)
          {
            sub_100025870(v25, v26);

            a4 = v63;
            a1 = v64;
            goto LABEL_10;
          }
        }
      }

      v22 = 0xD000000000000036;
      v72 = 0xD000000000000036;
      v73 = 0x800000010156B1B0;
      sub_10080B4B4();
      v74 = 0;
      v75 = 0;
      swift_willThrowTypedImpl();

      sub_100025870(v25, v26);
    }

    return v22;
  }

  v20 = v16;
  v21 = v7;
  v22 = sub_100819BC8(v20, v17, v18, v19);

  if (v21)
  {
    return v22;
  }

  v29 = v22;
LABEL_10:
  v30 = sub_100818040(v70, v71);
  v31 = v30;
  v32 = v76;
  v70 = 0;
  v35 = sub_1008182EC(v30, a3, v29);
  v71 = [v31 geometryRelativeToGeometry:v35];
  v36 = sub_10050D2D4(v29, 3, *(*(v65 + 16) + 16), 256.0, 256.0);
  if (v36)
  {
    v37 = v36;
    v38 = sub_100CF34E8();

    sub_101110F2C(v29, v32);
    if (v38)
    {
      v38 = v38;
      v39 = v69;
      sub_101110F2C(v38, v69);
      v40 = v39;

      v41 = 0;
    }

    else
    {
      v41 = 1;
      v40 = v69;
    }

    v32 = v76;
  }

  else
  {
    sub_101110F2C(v29, v32);
    v38 = 0;
    v41 = 1;
    v40 = v69;
  }

  (*(v67 + 56))(v40, v41, 1, v68);
  v76 = v35;
  v42 = v35;
  v43 = v40;
  v44 = sub_10111147C(v42, v32, v40);

  sub_10000CAAC(v43, &unk_101A1B880, &unk_10147AB00);
  sub_1008184B8(v32, type metadata accessor for CRLAssetData);
  v45 = v71;
  [v71 size];
  [a4 scaleToNaturalSize:?];
  sub_100BB584C([objc_allocWithZone(CRLMaskInfo) initWithImageItem:v44 geometry:v45 pathSource:a4]);
  v46 = v44;
  if (sub_1011255D4())
  {
    v47 = OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData;
    v48 = *(**&v46[OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData] + 440);

    v50 = v48(v49);

    if (v50)
    {

      v51 = *(**&v46[v47] + 448);

      v51(0);
    }
  }

  v52 = *(a1 + 59);
  if (v52 == 2)
  {
    v53 = v76;
    v54 = v71;
    v55 = v46;
  }

  else
  {
    if ((sub_1011255D4() & 1) == 0 || (v56 = v52 & 1, v57 = OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData, v58 = *(**&v46[OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData] + 392), v59 = , v60 = v58(v59) & 1, , v60 == v56))
    {
      v53 = v31;
      v31 = v46;
    }

    else
    {
      v53 = v31;
      v31 = v46;
      v61 = *(**&v46[v57] + 400);

      v61(v56);
    }

    v54 = v76;
    v55 = v71;
  }

  return v46;
}

char *sub_100816798(char *a1, void *a2)
{
  v4 = type metadata accessor for UUID();
  v50 = *(v4 - 8);
  v51 = v4;
  v5 = __chkstk_darwin(v4);
  v7 = &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *((swift_isaMask & *a2) + 0xE0);
  v9 = v8(v5);
  v10 = OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData;
  v11 = *(**&a1[OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData] + 296);

  v13 = v11(v12);

  v57 = v9;
  v14 = [v13 geometryRelativeToGeometry:v9];

  if ((sub_1011255D4() & 1) != 0 && (v15 = *(**&a1[v10] + 296), v16 = , v17 = v15(v16), , sub_100006370(0, &unk_1019F5730, off_10182F770), v18 = static NSObject.== infix(_:_:)(), v17, (v18 & 1) == 0))
  {
    v20 = *(**&a1[v10] + 304);

    v20(v14);
  }

  else
  {
  }

  v21 = (v8)(v19);
  v22 = v57;
  v23 = [v21 geometryRelativeToGeometry:v57];

  (*((swift_isaMask & *a2) + 0xE8))(v23);
  v24 = *(v49 + 24);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146CE00;
  *(inited + 32) = a1;
  *(inited + 40) = a2;
  v26 = type metadata accessor for CRLGroupItem(0);
  v27 = *(v24 + OBJC_IVAR____TtC8Freeform19CRLBoardItemFactory_board);
  v28 = *(v27 + OBJC_IVAR____TtC8Freeform8CRLBoard_store);
  (*(**(*(v27 + OBJC_IVAR____TtC8Freeform8CRLBoard_rootContainer) + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData) + 264))();
  v29 = objc_allocWithZone(v26);
  v30 = a1;
  v31 = a2;
  v32 = v28;
  v33 = v22;
  v34 = v32;
  isa = UUID._bridgeToObjectiveC()().super.isa;
  v36 = [v29 initWithStore:v34 parentContainerUUID:isa geometry:v33];

  (*(v50 + 8))(v7, v51);
  v37 = v52;
  sub_10097A374(inited);
  if (v37)
  {

    swift_setDeallocating();
    swift_arrayDestroy();
    v38 = 0xD000000000000022;
    v53 = 0xD000000000000022;
    v54 = 0x800000010156B670;
    sub_10080B4B4();
    v55 = 0;
    v56 = 0;
    swift_willThrowTypedImpl();
  }

  else
  {
    swift_setDeallocating();
    swift_arrayDestroy();
    v39 = *(**(v31 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData) + 392);
    v38 = v36;

    v41 = v39(v40);

    if (sub_1011255D4())
    {
      v42 = OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData;
      v43 = *(**&v38[OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData] + 392);

      v45 = v43(v44) & 1;

      v46 = v41 & 1;
      if (v46 != v45)
      {
        v47 = *(**&v38[v42] + 400);

        v47(v46);
      }
    }
  }

  return v38;
}

uint64_t sub_100816D68@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for TSContentLanguage.Models.Text(0);
  __chkstk_darwin(v6);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for AttributedString();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v25 - v14;
  sub_100817544(a1, v8);
  if (swift_getEnumCaseMultiPayload())
  {
    sub_1008184B8(v8, type metadata accessor for TSContentLanguage.Models.Text);
    v31[0] = 0xD000000000000021;
    v31[1] = 0x800000010156BEC0;
    sub_10080B4B4();
    v31[2] = 0;
    v31[3] = 0;
    result = swift_willThrowTypedImpl();
    *a2 = 0xD000000000000021;
    a2[1] = 0x800000010156BEC0;
    a2[2] = 0;
    a2[3] = 0;
  }

  else
  {
    v27 = a3;
    (*(v10 + 32))(v15, v8, v9);
    sub_100006370(0, &unk_101A09740, NSMutableAttributedString_ptr);
    v25 = v10;
    v26 = v9;
    (*(v10 + 16))(v12, v15, v9);
    v17 = NSAttributedString.init(_:)();
    v29 = 0;
    v30 = 0;
    v18 = v17;
    if ([v18 length] >= 1)
    {
      do
      {

        v19 = [v18 attributesAtIndex:v29 effectiveRange:&v29];
        type metadata accessor for Key(0);
        sub_100818580(&qword_1019F34A0, 255, type metadata accessor for Key, byte_101467F70);
        v20 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

        if (*(v20 + 16) && (v21 = sub_10006E4C8(NSParagraphStyleAttributeName), (v22 & 1) != 0))
        {
          sub_100064288(*(v20 + 56) + 32 * v21, v31);

          sub_100006370(0, &qword_101A031A0, NSMutableParagraphStyle_ptr);
          if (swift_dynamicCast())
          {
            v23 = v28;
            if ([v28 alignment] == 4)
            {
              [v23 setAlignment:{2 * (objc_msgSend(v23, "baseWritingDirection") == 1)}];
            }
          }
        }

        else
        {
        }

        v24 = v29 + v30;
        if (__OFADD__(v29, v30))
        {
          __break(1u);
        }

        v29 += v30;
      }

      while (v24 < [v18 length]);
    }

    AttributedString.init(_:)();

    return (*(v25 + 8))(v15, v26);
  }

  return result;
}

void sub_100817184(void *a1, void *a2, char a3, void *a4, double a5, double a6, double a7)
{
  if (!a1)
  {
    return;
  }

  v13 = a1;
  [a2 size];
  v15 = v14;
  v17 = v16;
  v18 = [v13 pureGeometry];
  if (!v18)
  {
    __break(1u);
    goto LABEL_14;
  }

  v19 = v18;
  v43 = [v18 infoGeometry];

  [v43 boundsBeforeRotation];
  v21 = v20;
  v24 = sub_10011FBF0(v22, v23, a5);
  v26 = v25;
  sub_10011F31C(CGPointZero.x, CGPointZero.y, v21);
  SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:)(v27, v28);
  v30 = v29;
  if (a3)
  {
    if ([objc_allocWithZone(CRLBezierPathSource) initWithNaturalSize:{v24, v26}])
    {
      (*((swift_isaMask & *a4) + 0x538))();
      a6 = v24;
      a7 = v26;
      goto LABEL_6;
    }

LABEL_14:
    __break(1u);
    return;
  }

LABEL_6:
  v31 = sub_10011F31C(v15, v17, a6);
  sub_10011FFCC(v31, v32, v30 / v24);
  v45 = SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:)(v33, v34);
  v36 = v35;
  v38 = v37;
  if (a3)
  {
    v39 = 1;
    v40 = 1;
  }

  else
  {
    v40 = [a2 widthValid];
    v39 = [a2 heightValid];
  }

  v41 = [objc_allocWithZone(CRLCanvasInfoGeometry) initWithPosition:v40 size:v39 widthValid:0 heightValid:0 horizontalFlip:v36 verticalFlip:v38 angle:{a6, a7, 0.0}];
  v42 = [v41 geometryWithParentGeometry:a2];
  (*((swift_isaMask & *a4) + 0xE8))(v42);
}

uint64_t sub_1008174C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  _s13ShapeImporterCMa();
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2;
  *a3 = result;
  return result;
}

uint64_t sub_100817544(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TSContentLanguage.Models.Text(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1008175A8(uint64_t a1)
{
  v2 = type metadata accessor for AttributedString();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100006370(0, &qword_1019F76F0, NSAttributedString_ptr);
  (*(v3 + 16))(v5, a1, v2);
  v6 = NSAttributedString.init(_:)();
  if ([v6 length] < 1)
  {
    goto LABEL_8;
  }

  v7 = [v6 string];
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;

  v15 = 0;
  v16 = 0xE000000000000000;
  Character.write<A>(to:)();
  if (v8 == v15 && v10 == v16)
  {

LABEL_8:
    v13 = 0;
    goto LABEL_9;
  }

  v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

  v13 = v12 ^ 1;
LABEL_9:

  return v13 & 1;
}

id sub_100817768(void *a1, id a2)
{
  v4 = [a2 isRectangular];
  if ([a1 horizontalFlip])
  {
    if ((v4 & 1) == 0)
    {
      [a2 setHasHorizontalFlip:{objc_msgSend(a2, "hasHorizontalFlip") ^ 1}];
    }

    [a1 setHorizontalFlip:0];
  }

  result = [a1 verticalFlip];
  if (result)
  {
    if ((v4 & 1) == 0)
    {
      [a2 setHasVerticalFlip:{objc_msgSend(a2, "hasVerticalFlip") ^ 1}];
    }

    return [a1 setVerticalFlip:0];
  }

  return result;
}

id sub_100817864(void *a1, id a2)
{
  v5[0] = 0;
  [a2 mutableCopy];
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  sub_100006370(0, &unk_101A0B030, off_10182F788);
  if ((swift_dynamicCast() & 1) != 0 && (v3 = v6) != 0)
  {
    v5[0] = 0;
    v5[1] = 0;
    [a1 copy];
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    sub_100006370(0, &qword_101A031A8, off_10182F908);
    if (swift_dynamicCast())
    {
      sub_100817768(v6, v6);
      return v6;
    }

    sub_10080B1F0(v5, "adjustFlipsForText(_:_:)", 24, 2, "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/Compatibility/ContentLanguage/Importers/Drawables/CRLCLShapeImporter.swift", 128, 2, 122);

    sub_10080B4B4();
    swift_willThrowTypedImpl();
  }

  else
  {
    sub_10080B1F0(v5, "adjustFlipsForText(_:_:)", 24, 2, "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/Compatibility/ContentLanguage/Importers/Drawables/CRLCLShapeImporter.swift", 128, 2, 121);

    sub_10080B4B4();
    swift_willThrowTypedImpl();
  }

  return 0xD000000000000014;
}

id sub_100817A98(uint64_t a1)
{
  v1 = HIBYTE(*(a1 + 80));
  if (v1 > 0xFE)
  {
    return 0;
  }

  v3 = *a1;
  if (v1)
  {
    if (v1 != 1)
    {
      return 0;
    }

    v4 = *a1;
    if (!*(*&v3 + 16))
    {
      return 0;
    }

    v3 = *(*&v3 + 32);
    v5 = (*&v4 + 40);
    v6 = (*&v4 + 48);
    v7 = (*&v4 + 56);
    v8 = *(*&v4 + 64);
  }

  else
  {
    v7 = (a1 + 24);
    v6 = (a1 + 16);
    v5 = (a1 + 8);
    v8 = *(a1 + 32);
  }

  v9 = [objc_allocWithZone(CRLColor) initWithRed:(v8 & 1) == 0 green:v3 blue:*v5 alpha:*v6 colorSpace:*v7];
  v10 = [objc_allocWithZone(CRLColorFill) initWithColor:v9];

  return v10;
}

void *sub_100817B94(uint64_t a1, void *a2)
{
  v5 = *(a1 + 240);
  v18[0] = *(a1 + 224);
  v18[1] = v5;
  v18[2] = *(a1 + 256);
  v19 = *(a1 + 272);
  v6 = sub_10096A0C0(v18);
  v7 = v6;
  if (!v2)
  {
    if ([v6 isNullStroke])
    {
      v8 = 0;
    }

    else
    {
      v9 = v7;
      v8 = v7;
    }

    (*((swift_isaMask & *a2) + 0x4E0))(v8);
    v10 = *(a1 + 184);
    v16[2] = *(a1 + 168);
    v16[3] = v10;
    v16[4] = *(a1 + 200);
    v17 = *(a1 + 216);
    v11 = *(a1 + 152);
    v16[0] = *(a1 + 136);
    v16[1] = v11;
    v12 = sub_100817A98(v16);
    sub_100C34730(v12);
    v13 = sub_100D79758(*(a1 + 130));
    sub_100C35D48(v13);
    v14 = sub_100D79758(*(a1 + 129));
    sub_100C36568(v14);
  }

  return v7;
}

void sub_100817CB4(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC8Freeform14CRLWPShapeItem_textStorage;
  v3 = *(a1 + OBJC_IVAR____TtC8Freeform14CRLWPShapeItem_textStorage);
  if (!v3)
  {
    __break(1u);
    goto LABEL_14;
  }

  v4 = [v3 substringWithRange:{0, 1}];
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  if (v5 == 9142498 && v7 == 0xA300000000000000)
  {
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v9 & 1) == 0)
    {
      return;
    }
  }

  v10 = *(a1 + v2);
  if (!v10)
  {
LABEL_14:
    __break(1u);
    return;
  }

  v11 = v10;
  sub_100A2E55C(0, 1, 0, 0xE000000000000000, 1);
}

void sub_100817DE0(void *a1, id a2, char a3)
{
  v6 = [a2 widthValid];
  [a2 heightValid];
  v7 = sub_10011F31C(1.0, 1.0, v6);
  [a2 size];
  v10 = sub_10011FFCC(v8, v9, v6);
  v12 = v11;
  v13 = sub_10011F340(1.0, 1.0, 1.0);
  v15 = sub_10011FFCC(v13, v14, v7);
  v16 = sub_10011F334(v10, v12, v15);
  v18 = v17;
  v19 = [objc_allocWithZone(CRLCanvasInfoGeometry) initWithPosition:objc_msgSend(a2 size:"widthValid") widthValid:objc_msgSend(a2 heightValid:"heightValid") horizontalFlip:0 verticalFlip:0 angle:{CGPointZero.x, CGPointZero.y, v10, v12, 0.0}];
  (*((swift_isaMask & *a1) + 0xE8))(v19);
  if ([objc_allocWithZone(CRLBezierPathSource) initWithNaturalSize:{v16, v18}])
  {
    (*((swift_isaMask & *a1) + 0x538))();
    v20 = swift_allocObject();
    *(v20 + 16) = a2;
    *(v20 + 24) = 0x3FF0000000000000;
    *(v20 + 32) = a3 & 1;
    *(v20 + 40) = a1;
    *(v20 + 48) = v10;
    *(v20 + 56) = v12;
    v21 = a2;
    v22 = a1;
    sub_1009B27C4(sub_1008185C8, v20);
  }

  else
  {
    __break(1u);
  }
}

id sub_100818040(void *a1, void *a2)
{
  if (a1)
  {
    v9 = 0;
    v10 = 0;
    v3 = *((swift_isaMask & *a1) + 0xE0);
    v4 = a1;
    v5 = v3();
    [v5 mutableCopy];

    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    sub_100006370(0, &unk_101A0B030, off_10182F788);
    if ((swift_dynamicCast() & 1) == 0 || (v6 = v11) == 0)
    {
      v7 = 159;
      goto LABEL_11;
    }

    [v11 setHorizontalFlip:{objc_msgSend(a2, "horizontalFlip")}];
    [v11 setVerticalFlip:{objc_msgSend(a2, "verticalFlip")}];
  }

  else
  {
    v6 = a2;
  }

  v9 = 0;
  v10 = 0;
  v4 = v6;
  [v4 mutableCopy];
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();

  sub_100006370(0, &unk_101A0B030, off_10182F788);
  if ((swift_dynamicCast() & 1) != 0 && v11)
  {
    [v11 setWidthValid:1];
    [v11 setHeightValid:1];

    return v11;
  }

  v7 = 166;
LABEL_11:
  sub_10080B1F0(&v9, "nonUnflippedShapeGeometry(_:_:)", 31, 2, "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/Compatibility/ContentLanguage/Importers/Drawables/CRLCLShapeImporter.swift", 128, 2, v7);

  sub_10080B4B4();
  swift_willThrowTypedImpl();

  return 0xD000000000000014;
}

id sub_1008182EC(void *a1, uint64_t a2, uint64_t a3)
{
  [a1 size];
  v7 = v6;
  v9 = v8;
  v10 = *(a2 + 40) / 100.0;
  v11 = [objc_opt_self() sharedPool];
  v12 = [v11 providerForAsset:a3 shouldValidate:1];

  [v12 naturalSize];
  v14 = v13;
  v16 = v15;
  objc_opt_self();
  v17 = swift_dynamicCastObjCClass();
  if (v17)
  {
    [v17 dpiAdjustedNaturalSize];
    v14 = v18;
    v16 = v19;
  }

  v20 = sub_10011F340(v14, v16, v10);
  v22 = *(a2 + 33);
  if (v22 > 1)
  {
    if (v22 == 2)
    {
      v25 = v7;
      v26 = v9;
      v27 = 0;
      goto LABEL_10;
    }

    v23 = v7;
    v24 = v9;
    if (v22 == 3)
    {
      goto LABEL_12;
    }

LABEL_8:
    v25 = v7;
    v26 = v9;
    v27 = 1;
LABEL_10:
    v20 = sub_100121EF4(v27, v20, v21, v25, v26);
    goto LABEL_11;
  }

  if (*(a2 + 33))
  {
    goto LABEL_8;
  }

LABEL_11:
  v23 = v20;
  v24 = v21;
LABEL_12:
  v28 = sub_10011ECB4();
  v32 = sub_100120414(v28, v29, v30, v31);
  v34 = [objc_allocWithZone(CRLCanvasInfoGeometry) initWithCenter:v32 size:{v33, v23, v24}];
  v35 = [v34 geometryWithParentGeometry:a1];

  return v35;
}

uint64_t sub_1008184B8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100818580(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), const char *a4)
{
  result = *a1;
  if (!result)
  {
    v7 = a3(a2);
    result = swift_getWitnessTable(a4, v7);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100818660()
{
  _StringGuts.grow(_:)(21);

  v0._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v0);

  return 0xD000000000000025;
}

unint64_t sub_100818714(void *a1)
{
  v2 = swift_slowAlloc();
  result = [a1 elementCount];
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    return result;
  }

  v4 = result;
  if (!result)
  {
LABEL_20:
    sub_1005B981C(&unk_1019F4D80, &unk_10146CF20);
    sub_100613214();
    v27 = BidirectionalCollection<>.joined(separator:)();

    return v27;
  }

  v5 = 0;
  v6 = _swiftEmptyArrayStorage;
  while (1)
  {
    v7 = [a1 elementAtIndex:v5 associatedPoints:{v2, v28}];
    if (v7 <= 1)
    {
      if (v7)
      {
        if (v7 != 1)
        {
          break;
        }

        v8 = 8268;
      }

      else
      {
        v8 = 8269;
      }

      v28 = v8;
      v11._countAndFlagsBits = Double.description.getter();
      String.append(_:)(v11);

      v12._countAndFlagsBits = 32;
      v12._object = 0xE100000000000000;
      String.append(_:)(v12);
      goto LABEL_14;
    }

    if (v7 == 2)
    {
      _StringGuts.grow(_:)(19);

      v28 = 8259;
      v13._countAndFlagsBits = Double.description.getter();
      String.append(_:)(v13);

      v14._countAndFlagsBits = 32;
      v14._object = 0xE100000000000000;
      String.append(_:)(v14);
      v15._countAndFlagsBits = Double.description.getter();
      String.append(_:)(v15);

      v16._countAndFlagsBits = 32;
      v16._object = 0xE100000000000000;
      String.append(_:)(v16);
      v17._countAndFlagsBits = Double.description.getter();
      String.append(_:)(v17);

      v18._countAndFlagsBits = 32;
      v18._object = 0xE100000000000000;
      String.append(_:)(v18);
      v19._countAndFlagsBits = Double.description.getter();
      String.append(_:)(v19);

      v20._countAndFlagsBits = 32;
      v20._object = 0xE100000000000000;
      String.append(_:)(v20);
      v21._countAndFlagsBits = Double.description.getter();
      String.append(_:)(v21);

      v22._countAndFlagsBits = 32;
      v22._object = 0xE100000000000000;
      String.append(_:)(v22);
LABEL_14:
      v23._countAndFlagsBits = Double.description.getter();
      String.append(_:)(v23);

      v10 = v28;
      v9 = 0xE200000000000000;
      goto LABEL_15;
    }

    if (v7 != 3)
    {
      break;
    }

    v9 = 0xE100000000000000;
    v10 = 90;
LABEL_15:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v6 = sub_100024CBC(0, *(v6 + 2) + 1, 1, v6);
    }

    v25 = *(v6 + 2);
    v24 = *(v6 + 3);
    if (v25 >= v24 >> 1)
    {
      v6 = sub_100024CBC((v24 > 1), v25 + 1, 1, v6);
    }

    ++v5;
    *(v6 + 2) = v25 + 1;
    v26 = &v6[16 * v25];
    *(v26 + 4) = v10;
    *(v26 + 5) = v9;
    if (v4 == v5)
    {
      goto LABEL_20;
    }
  }

  v27 = sub_100818660();
  sub_10075915C();
  swift_willThrowTypedImpl();

  return v27;
}

void sub_100818AA4(uint64_t a1@<X0>, unint64_t *a2@<X1>, void *a3@<X8>)
{
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  *&v9 = __chkstk_darwin(v7).n128_u64[0];
  v11 = &v95 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v3 + 16);
  v13 = [*(v12 + 24) layoutForInfo:{a1, v9}];
  if (!v13)
  {
    v45 = 0x800000010156B430;
    v43 = 0xD000000000000024;
    goto LABEL_9;
  }

  v113 = v11;
  object = v8;
  v14 = v13;
  v15 = [v13 inspectorGeometry];

  if (!v15 || (v16 = [v15 infoGeometry], v15, !v16))
  {
    v43 = 0xD000000000000021;
    v45 = 0x800000010156C070;
LABEL_9:
    v124 = v43;
    v125 = v45;
    sub_10075915C();
    v126 = 0uLL;
    swift_willThrowTypedImpl();
LABEL_10:
    v48 = 0;
    v49 = 0;
    goto LABEL_11;
  }

  v104 = a3;
  v105 = v7;
  sub_100BBF54C();
  if (v17)
  {
    v18 = v17;
    v19 = [v18 geometry];
    v20 = [v18 pathSource];
    v21 = [v20 bezierPath];

    [v21 bounds];
    v23 = v22;
    v25 = v24;
    v27 = v26;
    v29 = v28;

    v109 = [objc_allocWithZone(CRLCanvasInfoGeometry) initWithPosition:v23 size:{v25, v27, v29}];
    v110 = v19;
    v30 = [v109 geometryWithParentGeometry:v19];
    v31 = *(**(a1 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData) + 296);

    v33 = v31(v32);

    [v33 size];
    v35 = v34;
    v37 = v36;

    v108 = v30;
    v112 = [v16 parentGeometryWithRelativeGeometry:v30 parentSize:{v35, v37}];
    sub_100814500();
    sub_100811868(v16, v162);
    v102 = v162[1];
    v103 = v162[0];
    *(&v100 + 1) = v162[3];
    v101 = v162[2];
    *&v100 = v162[4];
    DWORD2(v99) = v164;
    LODWORD(v99) = v163;

    v107 = sub_100814554();
    v111 = v18;
    v38 = [v18 pathSource];
    v39 = [v38 bezierPath];

    v40 = v174;
    v43 = sub_100818714(v39);
    v45 = v44;
    v46 = a1;
    v47 = v16;
    if (v40)
    {
      v48 = v41;
      v49 = v42;

LABEL_11:
      *a2 = v43;
      a2[1] = v45;
      a2[2] = v48;
      a2[3] = v49;
      return;
    }

    v174 = 0;
    v106 = v16;
    v51 = v99 | (DWORD2(v99) << 16);
    a1 = v46;

    *&v123[0] = v103;
    *(&v123[0] + 1) = v102;
    *&v123[1] = v101;
    *(&v123[1] + 1) = *(&v100 + 1);
    *&v123[2] = v100;
    BYTE10(v123[2]) = BYTE2(v51);
    WORD4(v123[2]) = v51;
    *&v123[3] = v43;
    *(&v123[3] + 1) = v45;
    memset(&v123[4], 0, 32);
    LOBYTE(v123[6]) = 1;
    v124 = v103;
    v125 = v102;
    *&v126 = v101;
    *(&v126 + 1) = *(&v100 + 1);
    *&v127 = v100;
    BYTE10(v127) = BYTE2(v51);
    WORD4(v127) = v51;
    v128 = v43;
    v129 = v45;
    v130 = 0u;
    v131 = 0u;
    LOBYTE(v132) = 1;
    sub_100819AF4(v123, v115);
    sub_100819B50(&v124);
    v159 = v123[4];
    v160 = v123[5];
    v161 = v123[6];
    v155 = v123[0];
    v156 = v123[1];
    v157 = v123[2];
    v158 = v123[3];
    v50 = v112;
  }

  else
  {
    v156 = 0u;
    v157 = 0u;
    v155 = 0u;
    *&v158 = 0;
    *(&v158 + 1) = 1;
    v159 = 0u;
    v160 = 0u;
    v161 = 0;
    v106 = v16;
    v50 = v16;
  }

  v52 = v174;
  v43 = sub_10098EAA4(a1, v12);
  v45 = v53;
  if (v52)
  {
    v48 = v54;
    v49 = v55;
    sub_1008199DC(&v155);

    goto LABEL_11;
  }

  v108 = 0;
  v174 = v53;
  sub_100814500();
  v112 = v50;
  sub_100811868(v50, v165);
  v99 = v165[0];
  v100 = v165[1];
  v101 = v166;
  v96 = v167;
  v97 = v168;

  v56 = OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData;
  v57 = *(**(a1 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData) + 392);

  HIDWORD(v95) = v57(v58);

  v107 = v56;
  v59 = *(**(a1 + v56) + 416);

  v98 = v59(v60);
  v111 = v61;

  v62 = *(v12 + 16);

  v63 = sub_100BB30D8();
  Strong = swift_unknownObjectWeakLoadStrong();
  v65 = (v63 + OBJC_IVAR____TtC8Freeform8CRLAsset_storage);
  v66 = *(v63 + OBJC_IVAR____TtC8Freeform8CRLAsset_storage + 32);
  v109 = *(v63 + OBJC_IVAR____TtC8Freeform8CRLAsset_storage + 24);
  v110 = v63;
  sub_100020E58((v63 + OBJC_IVAR____TtC8Freeform8CRLAsset_storage), v109);
  v103 = Strong;
  if (Strong)
  {
    v102 = v62;
    v67 = v113;
    (*(v66 + 24))(v109, v66);
    v68 = UUID.uuidString.getter();
    v70 = v69;
    object[1](v67, v105);
    v124 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v125 = v71;

    v72._countAndFlagsBits = v68;
    v72._object = v70;
    String.append(_:)(v72);

    countAndFlagsBits = v124;
    object = v125;
    v74 = v65[3];
    v75 = v65[4];
    sub_100020E58(v65, v74);
    v113 = (*(v75 + 16))(v74, v75);
    v77 = v76;
    v78 = v103;
    swift_unknownObjectRelease();
    goto LABEL_21;
  }

  v79 = (*(v66 + 32))(v109, v66);
  if (v80 >> 60 == 15)
  {
    sub_1008199DC(&v155);

    v45 = 0x800000010156B580;
    v43 = 0xD000000000000038;
    v124 = 0xD000000000000038;
    v125 = 0x800000010156B580;
    sub_10075915C();
    v126 = 0uLL;
    swift_willThrowTypedImpl();

    goto LABEL_10;
  }

  v102 = v62;
  v81 = v79;
  v82 = v80;
  v83 = Data.base64EncodedString(options:)(0);
  countAndFlagsBits = v83._countAndFlagsBits;
  object = v83._object;
  sub_100025870(v81, v82);
  v84 = v65;
  v85 = v65[3];
  v86 = v65[4];
  sub_100020E58(v84, v85);
  v113 = (*(v86 + 16))(v85, v86);
  v77 = v87;
  v78 = v103;
LABEL_21:

  v88 = *(**(a1 + v107) + 440);

  v90 = v88(v89);

  v91 = v108;
  sub_100D33EA8(v90, v154, &v169);
  if (v91)
  {
    LODWORD(v110) = v78 != 0;
    v43 = v154[0];
    v45 = v154[1];
    v48 = v154[2];
    v49 = v154[3];

    sub_1008199DC(&v155);

    sub_10067F154();

    goto LABEL_11;
  }

  v92 = v96 | (v97 << 16);
  v93 = v78 != 0;

  v94 = BYTE4(v95) & 1;
  v116 = v93;
  memset(v117, 0, sizeof(v117));
  v118 = 0;
  v119 = 1;
  v120 = 0u;
  v121 = 0u;
  v122 = 0;
  sub_1008199DC(v117);
  *(&v123[17] + 8) = 0u;
  *(&v123[18] + 8) = 0u;
  *(&v123[16] + 8) = 0u;
  v124 = v43;
  *&v123[0] = v43;
  *(&v123[0] + 1) = v174;
  v125 = v174;
  v126 = v99;
  v123[1] = v99;
  v127 = v100;
  v123[2] = v100;
  *&v123[3] = v101;
  v128 = v101;
  BYTE10(v123[3]) = BYTE2(v92);
  BYTE2(v129) = BYTE2(v92);
  WORD4(v123[3]) = v92;
  LOWORD(v129) = v92;
  BYTE11(v123[3]) = v94;
  BYTE3(v129) = v94;
  *&v130 = v98;
  *&v123[4] = v98;
  *(&v123[4] + 1) = v111;
  *(&v130 + 1) = v111;
  *&v131 = countAndFlagsBits;
  *&v123[5] = countAndFlagsBits;
  *(&v123[5] + 1) = object;
  *(&v131 + 1) = object;
  *&v123[6] = v113;
  *(&v123[6] + 1) = v77;
  v132 = v113;
  LOBYTE(v123[7]) = v116;
  v133 = v77;
  v134 = v116;
  *(&v123[7] + 8) = v155;
  v135 = v155;
  *(&v123[8] + 8) = v156;
  v136 = v156;
  *(&v123[9] + 8) = v157;
  v137 = v157;
  *(&v123[10] + 8) = v158;
  v138 = v158;
  *(&v123[11] + 8) = v159;
  v139 = v159;
  v140 = v160;
  *(&v123[12] + 8) = v160;
  BYTE8(v123[13]) = v161;
  memset(&v123[14], 0, 33);
  v141 = v161;
  BYTE8(v123[19]) = 0x80;
  v142 = 0u;
  v143 = 0u;
  v146 = 0u;
  v147 = 0u;
  v145 = 0u;
  v148 = 0x80;
  v123[20] = v169;
  v149 = v169;
  v123[21] = v170;
  v150 = v170;
  v123[22] = v171;
  v151 = v171;
  v123[23] = v172;
  v152 = v172;
  v153 = v173;
  v123[24] = v173;
  v144 = 0;
  sub_100819A44(v123, v115);
  sub_100819AA0(&v124);
  memcpy(v104, v123, 0x190uLL);
}

uint64_t sub_1008196EC()
{
  v0 = type metadata accessor for UUID();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v16 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1005B981C(&qword_101A03350, &unk_10147FE40);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10146C6B0;

  v5 = sub_100BB30D8();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v6 = *(v5 + OBJC_IVAR____TtC8Freeform8CRLAsset_storage + 24);
    v7 = *(v5 + OBJC_IVAR____TtC8Freeform8CRLAsset_storage + 32);
    sub_100020E58((v5 + OBJC_IVAR____TtC8Freeform8CRLAsset_storage), v6);
    (*(v7 + 24))(v6, v7);
    v8 = UUID.uuidString.getter();
    v10 = v9;
    (*(v1 + 8))(v3, v0);
    v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v17 = v11;

    v12._countAndFlagsBits = v8;
    v12._object = v10;
    String.append(_:)(v12);
    swift_unknownObjectRelease();

    v13 = v16;
    v14 = v17;
  }

  else
  {

    v13 = 0;
    v14 = 0;
  }

  *(v4 + 32) = v13;
  *(v4 + 40) = v14;
  *(v4 + 48) = v5;
  return v4;
}

uint64_t sub_100819904@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  _s13ImageExporterCMa();
  result = swift_allocObject();
  *(result + 16) = a1;
  *a2 = result;
  return result;
}

void sub_100819940(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  sub_100818AA4(a1, v7, __src);
  if (v3)
  {
    v6 = v7[1];
    *a2 = v7[0];
    *(a2 + 8) = v6;
    *(a2 + 16) = v8;
  }

  else
  {
    memcpy(a3, __src, 0x190uLL);
  }
}

uint64_t sub_1008199DC(uint64_t a1)
{
  v2 = sub_1005B981C(&qword_101A00978, &qword_10147C8B8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_100819BC8(uint64_t a1, void *a2, uint64_t a3, unint64_t a4)
{
  v6 = 0xD000000000000036;
  if (*(v4 + 24))
  {
    v10 = v4;
    v11 = a2;
    if (!a2)
    {

      a1 = a3;
      v11 = a4;
    }

    swift_unknownObjectRetain();

    v12 = sub_100D8BD10(a1, v11);
    if (v5)
    {

LABEL_9:
      v6 = 0xD000000000000037;
      sub_10080B4B4();
      swift_willThrowTypedImpl();

      swift_unknownObjectRelease();
      return v6;
    }

    if (v13 >> 60 == 15)
    {
      v14._countAndFlagsBits = a1;
      v14._object = v11;
      String.append(_:)(v14);

      sub_10080B4B4();
      swift_allocError();
      *v15 = 0xD000000000000037;
      v15[1] = 0x800000010156C190;
      v15[2] = 0x696669746E656469;
      v15[3] = 0xEB00000000207265;
      swift_willThrow();
      goto LABEL_9;
    }

    v17 = v12;
    v18 = v13;

    v19 = *(v10 + 16);
    objc_allocWithZone(type metadata accessor for CRLPreinsertionAssetWrapper(0));

    swift_unknownObjectRetain();
    sub_100024E84(v17, v18);
    v23 = v17;
    v20 = sub_100CF051C(v17, v18, a3, a4, v19);
    if (v20 && (v21 = v20, v22 = sub_100CF34E8(), v21, v22))
    {
      swift_unknownObjectRelease();
      sub_100025870(v23, v18);
      return v22;
    }

    else
    {
      sub_10080B4B4();
      swift_willThrowTypedImpl();
      swift_unknownObjectRelease();
      sub_100025870(v23, v18);
    }
  }

  else
  {
    sub_10080B4B4();
    swift_willThrowTypedImpl();
  }

  return v6;
}

uint64_t sub_100819E90()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

Swift::Int sub_100819EF4(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_10113E16C(v2);
  }

  v3 = v2[2];
  v5[0] = (v2 + 4);
  v5[1] = v3;
  result = sub_10081DF74(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_100819F60@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t sub_100819F6C()
{
  swift_getKeyPath();
  sub_10081EAB0(&qword_101A03920, type metadata accessor for DrawingRecognition, "y[;");
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
}

uint64_t sub_10081A024@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_10081EAB0(&qword_101A03920, type metadata accessor for DrawingRecognition, "y[;");
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  *a2 = *(v3 + 32);
}

double sub_10081A0E4(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_10081EAB0(&qword_101A03920, type metadata accessor for DrawingRecognition, "y[;");
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  return result;
}

uint64_t sub_10081A1B0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(a1 + 32) = a2;
}

uint64_t sub_10081A218()
{

  v1 = OBJC_IVAR____TtC8FreeformP33_66D629DA838D5AC12739A350302C62AE18DrawingRecognition___observationRegistrar;
  v2 = type metadata accessor for ObservationRegistrar();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_10081A2C4@<X0>(void *a1@<X8>)
{
  v2 = *(*v1 + 24);
  *a1 = *(*v1 + 16);
  a1[1] = v2;
}

uint64_t sub_10081A2D4@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v44 = a2;
  v3 = sub_1005B981C(&unk_101A03950, &qword_1014803C8);
  v42 = *(v3 - 8);
  v43 = v3;
  __chkstk_darwin(v3);
  v41 = &v37[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v5);
  v45 = &v37[-v6];
  v40 = static VerticalAlignment.center.getter();
  v7 = a1[3];
  v47 = a1[2];
  v48 = v7;
  sub_100017CD8();

  v8 = Text.init<A>(_:)();
  v10 = v9;
  v12 = v11;
  static Font.title3.getter();
  v13 = Text.font(_:)();
  v15 = v14;
  v17 = v16;

  sub_10007441C(v8, v10, v12 & 1);

  v18 = Text.underline(_:color:)();
  v20 = v19;
  v38 = v21;
  v39 = v22;
  sub_10007441C(v13, v15, v17 & 1);

  swift_getKeyPath();
  v47 = a1;
  sub_10081EAB0(&qword_101A03920, type metadata accessor for DrawingRecognition, "y[;");
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  v46 = a1[4];

  sub_1005B981C(&qword_101A03960, &qword_1014803D0);
  sub_10001A2F8(&qword_101A03968, &qword_101A03960, &qword_1014803D0, &protocol conformance descriptor for [A]);
  sub_10081EE68();
  sub_10081EEBC();
  v23 = v45;
  ForEach<>.init(_:content:)();
  v25 = v41;
  v24 = v42;
  v26 = *(v42 + 16);
  v27 = v23;
  v28 = v43;
  v26(v41, v27, v43);
  v29 = v44;
  v30 = v39;
  *v44 = v40;
  v29[1] = 0;
  *(v29 + 16) = 1;
  v31 = v18;
  v29[3] = v18;
  v29[4] = v20;
  v32 = v38 & 1;
  *(v29 + 40) = v38 & 1;
  v29[6] = v30;
  v33 = v29;
  v34 = sub_1005B981C(&qword_101A03980, &qword_1014803D8);
  v26(v33 + *(v34 + 48), v25, v28);
  sub_10081EF10(v31, v20, v32);
  v35 = *(v24 + 8);

  v35(v45, v28);
  v35(v25, v28);
  sub_10007441C(v31, v20, v32);
}

uint64_t sub_10081A6B0@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = a1[3];
  *a2 = *a1;
  a2[1] = v2;
  a2[2] = v3;
  a2[3] = v4;
}

uint64_t sub_10081A6F8@<X0>(uint64_t a2@<X8>)
{
  v4 = *v2;
  *a2 = static HorizontalAlignment.center.getter();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v5 = sub_1005B981C(&qword_101A03940, &qword_1014803B8);
  sub_10081A2D4(v4, (a2 + *(v5 + 44)));
  LOBYTE(v4) = static Edge.Set.bottom.getter();
  EdgeInsets.init(_all:)();
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  result = sub_1005B981C(&qword_101A03948, &qword_1014803C0);
  v15 = a2 + *(result + 36);
  *v15 = v4;
  *(v15 + 8) = v7;
  *(v15 + 16) = v9;
  *(v15 + 24) = v11;
  *(v15 + 32) = v13;
  *(v15 + 40) = 0;
  return result;
}

void *sub_10081A7AC@<X0>(uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v8 = static HorizontalAlignment.center.getter();
  v21 = 1;
  sub_10081A8E8(a3, a4, __src);
  memcpy(__dst, __src, sizeof(__dst));
  memcpy(v23, __src, sizeof(v23));
  sub_10000BE14(__dst, v18, &qword_101A039A0, &qword_101480490);
  sub_10000CAAC(v23, &qword_101A039A0, &qword_101480490);
  memcpy(&v20[7], __dst, 0x180uLL);
  LOBYTE(a3) = v21;
  LOBYTE(a4) = static Edge.Set.bottom.getter();
  EdgeInsets.init(_all:)();
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  *a5 = v8;
  *(a5 + 8) = 0;
  *(a5 + 16) = a3;
  result = memcpy((a5 + 17), v20, 0x187uLL);
  *(a5 + 408) = a4;
  *(a5 + 416) = v10;
  *(a5 + 424) = v12;
  *(a5 + 432) = v14;
  *(a5 + 440) = v16;
  *(a5 + 448) = 0;
  return result;
}

uint64_t sub_10081A8E8@<X0>(uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  sub_100017CD8();

  v5 = Text.init<A>(_:)();
  v7 = v6;
  v9 = v8;
  static Font.body.getter();
  v10 = Text.font(_:)();
  v12 = v11;
  v14 = v13;

  sub_10007441C(v5, v7, v9 & 1);

  v15 = Text.bold()();
  v58 = v16;
  v59 = v15;
  v18 = v17;
  v55 = v19;
  sub_10007441C(v10, v12, v14 & 1);

  v57 = static Edge.Set.leading.getter();
  EdgeInsets.init(_all:)();
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v60 = v18 & 1;
  v117 = v18 & 1;
  v114 = 0;
  static Alignment.leading.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  *(&v118[6] + 7) = *&v118[21];
  *(&v118[8] + 7) = *&v118[23];
  *(&v118[10] + 7) = *&v118[25];
  *(&v118[12] + 7) = v119;
  *(v118 + 7) = *&v118[15];
  *(&v118[2] + 7) = *&v118[17];
  *(&v118[4] + 7) = *&v118[19];
  v90 = a3;
  v91 = a4;

  v28 = Text.init<A>(_:)();
  v30 = v29;
  v32 = v31;
  static Font.body.getter();
  v33 = Text.font(_:)();
  v35 = v34;
  LOBYTE(v7) = v36;

  sub_10007441C(v28, v30, v32 & 1);

  v37 = Text.italic()();
  v39 = v38;
  LOBYTE(v28) = v40;
  v42 = v41;
  sub_10007441C(v33, v35, v7 & 1);

  v43 = static Edge.Set.leading.getter();
  EdgeInsets.init(_all:)();
  v45 = v44;
  v47 = v46;
  v49 = v48;
  v51 = v50;
  LOBYTE(v28) = v28 & 1;
  v112 = v28;
  v109 = 0;
  static Alignment.leading.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  *(&v113[3] + 7) = v123;
  *(&v113[4] + 7) = v124;
  *(&v113[5] + 7) = v125;
  *(&v113[6] + 7) = v126;
  *(v113 + 7) = v120;
  *(&v113[1] + 7) = v121;
  *(&v113[2] + 7) = v122;
  *&v62 = v59;
  *(&v62 + 1) = v58;
  LOBYTE(v63) = v60;
  DWORD1(v63) = *&v116[3];
  *(&v63 + 1) = *v116;
  *(&v63 + 1) = v55;
  LOBYTE(v64) = v57;
  DWORD1(v64) = *&v115[3];
  *(&v64 + 1) = *v115;
  *(&v64 + 1) = v21;
  *&v65 = v23;
  *(&v65 + 1) = v25;
  *v66 = v27;
  v66[8] = 0;
  *&v66[9] = *v118;
  *&v66[25] = *&v118[2];
  *&v66[41] = *&v118[4];
  *&v66[57] = *&v118[6];
  *&v66[120] = *(&v119 + 1);
  *&v66[105] = *&v118[12];
  *&v66[89] = *&v118[10];
  *&v66[73] = *&v118[8];
  __src[2] = v64;
  __src[3] = v65;
  __src[0] = v62;
  __src[1] = v63;
  __src[6] = *&v66[32];
  __src[7] = *&v66[48];
  __src[4] = *v66;
  __src[5] = *&v66[16];
  __src[8] = *&v66[64];
  __src[9] = *&v66[80];
  __src[10] = *&v66[96];
  __src[11] = *&v66[112];
  *&v67 = v37;
  *(&v67 + 1) = v39;
  LOBYTE(v68) = v28;
  *(&v68 + 1) = *v111;
  DWORD1(v68) = *&v111[3];
  *(&v68 + 1) = v42;
  LOBYTE(v69) = v43;
  *(&v69 + 1) = *v110;
  DWORD1(v69) = *&v110[3];
  *(&v69 + 1) = v45;
  *&v70 = v47;
  *(&v70 + 1) = v49;
  *v71 = v51;
  v71[8] = 0;
  *&v71[57] = v113[3];
  *&v71[41] = v113[2];
  *&v71[25] = v113[1];
  *&v71[9] = v113[0];
  *&v71[120] = *(&v126 + 1);
  *&v71[105] = v113[6];
  *&v71[89] = v113[5];
  *&v71[73] = v113[4];
  __src[14] = v69;
  __src[15] = v70;
  __src[12] = v67;
  __src[13] = v68;
  __src[18] = *&v71[32];
  __src[19] = *&v71[48];
  __src[16] = *v71;
  __src[17] = *&v71[16];
  __src[22] = *&v71[96];
  __src[23] = *&v71[112];
  __src[20] = *&v71[64];
  __src[21] = *&v71[80];
  memcpy(a5, __src, 0x180uLL);
  v72[0] = v37;
  v72[1] = v39;
  v73 = v28;
  *v74 = *v111;
  *&v74[3] = *&v111[3];
  v75 = v42;
  v76 = v43;
  *v77 = *v110;
  *&v77[3] = *&v110[3];
  v78 = v45;
  v79 = v47;
  v80 = v49;
  v81 = v51;
  v82 = 0;
  v87 = v113[4];
  v88 = v113[5];
  *v89 = v113[6];
  *&v89[15] = *(&v113[6] + 15);
  v83 = v113[0];
  v84 = v113[1];
  v85 = v113[2];
  v86 = v113[3];
  sub_10000BE14(&v62, &v90, &qword_101A039A8, &qword_101480498);
  sub_10000BE14(&v67, &v90, &qword_101A039A8, &qword_101480498);
  sub_10000CAAC(v72, &qword_101A039A8, &qword_101480498);
  v90 = v59;
  v91 = v58;
  v92 = v60;
  *v93 = *v116;
  *&v93[3] = *&v116[3];
  v94 = v55;
  v95 = v57;
  *v96 = *v115;
  *&v96[3] = *&v115[3];
  v97 = v21;
  v98 = v23;
  v99 = v25;
  v100 = v27;
  v101 = 0;
  v106 = *&v118[8];
  v107 = *&v118[10];
  *v108 = *&v118[12];
  *&v108[15] = *(&v118[13] + 7);
  v102 = *v118;
  v103 = *&v118[2];
  v104 = *&v118[4];
  v105 = *&v118[6];
  return sub_10000CAAC(&v90, &qword_101A039A8, &qword_101480498);
}

uint64_t sub_10081AF44()
{
  swift_getKeyPath();
  sub_10081EAB0(&qword_101A038F8, type metadata accessor for CRLHandwritingDebugModel, byte_10148017C);
  ObservationRegistrar.access<A, B>(_:keyPath:)();
}

uint64_t sub_10081AFE8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_10081EAB0(&qword_101A038F8, type metadata accessor for CRLHandwritingDebugModel, byte_10148017C);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + 16);
}

double sub_10081B094(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_10081EAB0(&qword_101A038F8, type metadata accessor for CRLHandwritingDebugModel, byte_10148017C);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  return result;
}

uint64_t sub_10081B160(uint64_t a1)
{
  v1 = a1;
  v27 = a1;
  v26 = _swiftEmptyArrayStorage;
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = v3;
  if (!*(v1 + 16))
  {

LABEL_7:
    v12 = *(v1 + 16);
    if (v12)
    {
      goto LABEL_8;
    }

    goto LABEL_5;
  }

  v5 = v2;

  v6 = sub_10000BE7C(v5, v4);
  v8 = v7;

  if ((v8 & 1) == 0)
  {
    goto LABEL_7;
  }

  v9 = *(*(v1 + 56) + 8 * v6);
  type metadata accessor for DrawingRecognition(0);
  swift_allocObject();

  sub_10081EB10(0xD00000000000001ALL, 0x800000010156C3F0, v9);

  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((v26 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v26 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    goto LABEL_16;
  }

  while (1)
  {
    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_1010F6070(v10, v11);

    v1 = v27;
    v12 = *(v27 + 16);
    if (!v12)
    {
      break;
    }

LABEL_8:
    v13 = sub_100B39EC4(v12, 0);
    v14 = sub_100B3B434(&v25, v13 + 4, v12, v1);
    v15 = v25;

    sub_100035F90(v15);
    if (v14 == v12)
    {
      goto LABEL_9;
    }

    __break(1u);
LABEL_16:
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

LABEL_5:
  v13 = _swiftEmptyArrayStorage;
LABEL_9:
  v25 = v13;
  sub_100819EF4(&v25);
  v16 = v25;
  v17 = v25[2];
  if (v17)
  {
    type metadata accessor for DrawingRecognition(0);
    v18 = (v16 + 48);
    do
    {
      v19 = *(v18 - 2);
      v20 = *(v18 - 1);
      v21 = *v18;
      swift_allocObject();

      sub_10081EB10(v19, v20, v21);

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v26 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v26 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

      v18 += 3;
      --v17;
    }

    while (v17);
  }

  KeyPath = swift_getKeyPath();
  __chkstk_darwin(KeyPath);
  v25 = v24;
  sub_10081EAB0(&qword_101A038F8, type metadata accessor for CRLHandwritingDebugModel, byte_10148017C);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

uint64_t sub_10081B550()
{

  v1 = OBJC_IVAR____TtC8Freeform24CRLHandwritingDebugModel___observationRegistrar;
  v2 = type metadata accessor for ObservationRegistrar();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_10081B5F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v35 = a2;
  v36 = type metadata accessor for ToolbarTitleDisplayMode();
  v34 = *(v36 - 8);
  __chkstk_darwin(v36);
  v33 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1005B981C(&qword_101A03830, &qword_101480210);
  __chkstk_darwin(v4);
  v6 = &v29 - v5;
  v7 = sub_1005B981C(&qword_101A03828, &qword_101480208);
  v8 = *(v7 - 8);
  v29 = v7;
  v30 = v8;
  __chkstk_darwin(v7);
  v10 = &v29 - v9;
  v11 = sub_1005B981C(&qword_101A03820, &qword_101480200);
  v12 = *(v11 - 8);
  v31 = v11;
  v32 = v12;
  __chkstk_darwin(v11);
  v14 = &v29 - v13;
  v38 = a1;
  static Axis.Set.vertical.getter();
  sub_1005B981C(&qword_101A03860, &qword_101480228);
  sub_10081DC10();
  ScrollView.init(_:showsIndicators:content:)();
  v15 = static Edge.Set.all.getter();
  EdgeInsets.init(_all:)();
  v16 = &v6[*(v4 + 36)];
  *v16 = v15;
  *(v16 + 1) = v17;
  *(v16 + 2) = v18;
  *(v16 + 3) = v19;
  *(v16 + 4) = v20;
  v16[40] = 0;
  v37 = a1;
  v21 = sub_1005B981C(&qword_101A03838, &qword_101480218);
  v22 = sub_10081DB50();
  v23 = sub_10001A2F8(&qword_101A03858, &qword_101A03838, &qword_101480218, &protocol conformance descriptor for TupleToolbarContent<A>);
  View.toolbar<A>(content:)();
  sub_10000CAAC(v6, &qword_101A03830, &qword_101480210);
  LocalizedStringKey.init(stringLiteral:)();
  v39 = v4;
  v40 = v21;
  v41 = v22;
  v42 = v23;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v25 = v29;
  View.navigationTitle(_:)();

  (*(v30 + 8))(v10, v25);
  v26 = v33;
  static ToolbarTitleDisplayMode.inline.getter();
  v39 = v25;
  v40 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v27 = v31;
  View.toolbarTitleDisplayMode(_:)();
  (*(v34 + 8))(v26, v36);
  return (*(v32 + 8))(v14, v27);
}

uint64_t sub_10081BA5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v19 = a2;
  v20 = sub_1005B981C(&qword_101A03888, &qword_101480238);
  v3 = *(v20 - 8);
  __chkstk_darwin(v20);
  v5 = &v16 - v4;
  v17 = sub_1005B981C(&qword_101A038F0, &qword_1014802A8);
  __chkstk_darwin(v17);
  v7 = &v16 - v6;
  v18 = sub_1005B981C(&qword_101A03878, &qword_101480230);
  v8 = *(v18 - 8);
  __chkstk_darwin(v18);
  v10 = &v16 - v9;
  v11 = *(a1 + 8);
  swift_getKeyPath();
  v21 = v11;
  sub_10081EAB0(&qword_101A038F8, type metadata accessor for CRLHandwritingDebugModel, byte_10148017C);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v12 = *(v11 + 16);
  if (v12 >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_3;
    }
  }

  else if (*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_3:
    swift_getKeyPath();
    v21 = v11;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v21 = *(v11 + 16);

    sub_1005B981C(&qword_101A03900, &qword_1014802D8);
    sub_10001A2F8(&qword_101A03908, &qword_101A03900, &qword_1014802D8, &protocol conformance descriptor for [A]);
    sub_10081DD4C();
    sub_10081EAB0(&qword_101A03910, type metadata accessor for DrawingRecognition, "5P;");
    ForEach<>.init(_:content:)();
    v13 = v20;
    (*(v3 + 16))(v7, v5, v20);
    swift_storeEnumTagMultiPayload();
    sub_10001A2F8(&qword_101A03870, &qword_101A03878, &qword_101480230, &protocol conformance descriptor for Label<A, B>);
    sub_10081DCC8();
    _ConditionalContent<>.init(storage:)();
    return (*(v3 + 8))(v5, v13);
  }

  LocalizedStringKey.init(stringLiteral:)();
  Label<>.init(_:systemImage:)();
  v15 = v18;
  (*(v8 + 16))(v7, v10, v18);
  swift_storeEnumTagMultiPayload();
  sub_10001A2F8(&qword_101A03870, &qword_101A03878, &qword_101480230, &protocol conformance descriptor for Label<A, B>);
  sub_10081DCC8();
  _ConditionalContent<>.init(storage:)();
  return (*(v8 + 8))(v10, v15);
}

uint64_t sub_10081BF2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v37 = a2;
  v3 = sub_1005B981C(&qword_101A03898, &qword_101480240);
  __chkstk_darwin(v3);
  v33 = &v28 - v4;
  v5 = sub_1005B981C(&qword_101A038A0, &qword_101480248);
  v35 = *(v5 - 8);
  v36 = v5;
  __chkstk_darwin(v5);
  v7 = &v28 - v6;
  v34 = sub_1005B981C(&qword_101A038A8, &qword_101480250);
  v32 = *(v34 - 8);
  __chkstk_darwin(v34);
  v31 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v28 - v10;
  v12 = type metadata accessor for ToolbarItemPlacement();
  __chkstk_darwin(v12 - 8);
  v13 = sub_1005B981C(&qword_101A038B0, &qword_10147A660);
  v38 = *(v13 - 8);
  v39 = v13;
  __chkstk_darwin(v13);
  v15 = &v28 - v14;
  static ToolbarItemPlacement.topBarLeading.getter();
  v43 = a1;
  sub_1005B981C(&qword_1019FEA68, &unk_10147A670);
  sub_100766108();
  v30 = v15;
  ToolbarItem<>.init(placement:content:)();
  static ToolbarItemPlacement.topBarTrailing.getter();
  v42 = a1;
  sub_1005B981C(&qword_101A038B8, &qword_101480258);
  sub_10081DDB8();
  v29 = v11;
  ToolbarItem<>.init(placement:content:)();
  static ToolbarItemPlacement.topBarTrailing.getter();
  v41 = a1;
  ToolbarItem<>.init(placement:content:)();
  static ToolbarItemPlacement.topBarTrailing.getter();
  v40 = a1;
  sub_1005B981C(&qword_101A038D8, &qword_101480268);
  sub_10001A2F8(&qword_101A038E0, &qword_101A038D8, &qword_101480268, &protocol conformance descriptor for ShareLink<A, B, C, D>);
  ToolbarItem<>.init(placement:content:)();
  v28 = v3;
  v16 = v3[12];
  v17 = v3[16];
  v18 = v3[20];
  v19 = v33;
  (*(v38 + 16))(v33, v15, v39);
  v20 = v32;
  v21 = *(v32 + 16);
  v22 = v34;
  v21(&v19[v16], v11, v34);
  v23 = v31;
  v21(&v19[v17], v31, v22);
  v25 = v35;
  v24 = v36;
  (*(v35 + 16))(&v19[v18], v7, v36);
  TupleToolbarContent.init(_:)();
  (*(v25 + 8))(v7, v24);
  v26 = *(v20 + 8);
  v26(v23, v22);
  v26(v29, v22);
  return (*(v38 + 8))(v30, v39);
}

uint64_t sub_10081C458@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v34 = a2;
  v3 = sub_1005B981C(&qword_1019FEA78, &qword_101485080);
  v4 = *(v3 - 8);
  v32 = v3;
  v33 = v4;
  __chkstk_darwin(v3);
  v6 = &v27 - v5;
  v7 = LocalizedStringKey.init(stringLiteral:)();
  v30 = v8;
  v31 = v7;
  v28 = v9;
  v29 = v10;
  v11 = *a1;
  v13 = *(a1 + 16);
  v12 = *(a1 + 24);
  v14 = *(a1 + 32);
  v15 = *(a1 + 40);
  v16 = *(a1 + 56);
  v27 = *(a1 + 48);
  v17 = swift_allocObject();
  v18 = *(a1 + 16);
  v17[1] = *a1;
  v17[2] = v18;
  v19 = *(a1 + 48);
  v17[3] = *(a1 + 32);
  v17[4] = v19;
  v20 = v11;

  sub_10067F2EC(v13, v12);
  sub_10067F2EC(v14, v15);
  sub_10067F2EC(v27, v16);
  Button<>.init(_:action:)();
  static Font.Weight.bold.getter();
  sub_10001A2F8(&qword_1019FEA80, &qword_1019FEA78, &qword_101485080, &protocol conformance descriptor for Button<A>);
  v21 = v34;
  v22 = v32;
  View.fontWeight(_:)();
  (*(v33 + 8))(v6, v22);
  v23 = static Color.accentColor.getter();
  KeyPath = swift_getKeyPath();
  result = sub_1005B981C(&qword_1019FEA68, &unk_10147A670);
  v26 = (v21 + *(result + 36));
  *v26 = KeyPath;
  v26[1] = v23;
  return result;
}

uint64_t sub_10081C688@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  LocalizedStringKey.init(stringLiteral:)();
  v3 = *a1;
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v14 = *(a1 + 40);
  v15 = *(a1 + 32);
  v16 = *(a1 + 56);
  v17 = *(a1 + 48);
  v6 = swift_allocObject();
  v7 = *(a1 + 16);
  v6[1] = *a1;
  v6[2] = v7;
  v8 = *(a1 + 48);
  v6[3] = *(a1 + 32);
  v6[4] = v8;
  v9 = v3;

  sub_10067F2EC(v4, v5);
  sub_10067F2EC(v15, v14);
  sub_10067F2EC(v17, v16);
  sub_1005B981C(&qword_101A03878, &qword_101480230);
  sub_10001A2F8(&qword_101A03870, &qword_101A03878, &qword_101480230, &protocol conformance descriptor for Label<A, B>);
  Button.init(action:label:)();

  v10 = static Color.accentColor.getter();
  KeyPath = swift_getKeyPath();
  result = sub_1005B981C(&qword_101A038B8, &qword_101480258);
  v13 = (a2 + *(result + 36));
  *v13 = KeyPath;
  v13[1] = v10;
  return result;
}

uint64_t sub_10081C86C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  LocalizedStringKey.init(stringLiteral:)();
  v3 = *a1;
  v4 = *(a1 + 24);
  v13 = *(a1 + 16);
  v14 = *(a1 + 40);
  v17 = *(a1 + 48);
  v15 = *(a1 + 32);
  v16 = *(a1 + 56);
  v5 = swift_allocObject();
  v6 = *(a1 + 16);
  v5[1] = *a1;
  v5[2] = v6;
  v7 = *(a1 + 48);
  v5[3] = *(a1 + 32);
  v5[4] = v7;
  v8 = v3;

  sub_10067F2EC(v13, v4);
  sub_10067F2EC(v15, v14);
  sub_10067F2EC(v17, v16);
  sub_1005B981C(&qword_101A03878, &qword_101480230);
  sub_10001A2F8(&qword_101A03870, &qword_101A03878, &qword_101480230, &protocol conformance descriptor for Label<A, B>);
  Button.init(action:label:)();

  v9 = static Color.accentColor.getter();
  KeyPath = swift_getKeyPath();
  result = sub_1005B981C(&qword_101A038B8, &qword_101480258);
  v12 = (a2 + *(result + 36));
  *v12 = KeyPath;
  v12[1] = v9;
  return result;
}

uint64_t sub_10081CA44(id *a1)
{
  v2 = sub_1005B981C(&qword_101A038E8, &qword_101480270);
  __chkstk_darwin(v2 - 8);
  v3 = *a1;
  LocalizedStringKey.init(stringLiteral:)();
  SharePreview<>.init(_:)();
  sub_100006370(0, &qword_101A034E0, off_10182F860);
  sub_10081D674();
  return ShareLink<>.init<A>(item:subject:message:preview:)();
}

uint64_t sub_10081CB68()
{
  sub_1005B981C(&qword_101A03818, &qword_1014801F8);
  sub_1005C4E5C(&qword_101A03820, &qword_101480200);
  sub_1005C4E5C(&qword_101A03828, &qword_101480208);
  sub_1005C4E5C(&qword_101A03830, &qword_101480210);
  sub_1005C4E5C(&qword_101A03838, &qword_101480218);
  sub_10081DB50();
  sub_10001A2F8(&qword_101A03858, &qword_101A03838, &qword_101480218, &protocol conformance descriptor for TupleToolbarContent<A>);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return NavigationStack.init<>(root:)();
}

uint64_t sub_10081CD10(uint64_t a1)
{
  v2 = sub_1005B981C(&qword_101A01C10, &qword_10147ECC0);
  __chkstk_darwin(v2 - 8);
  v4 = v13 - v3;
  v5 = type metadata accessor for PKDrawing();
  v6 = *(v5 - 8);
  (*(v6 + 56))(v4, 1, 1, v5);
  sub_100006370(0, &qword_101A03810, off_10182F818);
  v7.super.isa = Array._bridgeToObjectiveC()().super.isa;
  isa = 0;
  if ((*(v6 + 48))(v4, 1, v5) != 1)
  {
    isa = PKDrawing._bridgeToObjectiveC()().super.isa;
    (*(v6 + 8))(v4, v5);
  }

  v9 = [objc_allocWithZone(CRLHandwritingRecognitionStatusHelper) initWithFreehandDrawingLayouts:v7.super.isa andConsolidatedDrawing:isa];

  *(v1 + qword_101A03740) = v9;
  type metadata accessor for CRLHandwritingDebugModel(0);
  v10 = swift_allocObject();
  *(v10 + 16) = _swiftEmptyArrayStorage;
  v11 = v9;
  ObservationRegistrar.init()();
  v13[0] = v11;
  v13[1] = v10;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  return UIHostingController.init(coder:rootView:)();
}

char *sub_10081CF2C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1005B981C(&qword_101A01C10, &qword_10147ECC0);
  __chkstk_darwin(v4 - 8);
  v6 = v31 - v5;
  sub_10000BE14(a2, v31 - v5, &qword_101A01C10, &qword_10147ECC0);
  sub_100006370(0, &qword_101A03810, off_10182F818);
  v7.super.isa = Array._bridgeToObjectiveC()().super.isa;

  v8 = type metadata accessor for PKDrawing();
  v9 = *(v8 - 8);
  isa = 0;
  if ((*(v9 + 48))(v6, 1, v8) != 1)
  {
    isa = PKDrawing._bridgeToObjectiveC()().super.isa;
    (*(v9 + 8))(v6, v8);
  }

  v11 = [objc_allocWithZone(CRLHandwritingRecognitionStatusHelper) initWithFreehandDrawingLayouts:v7.super.isa andConsolidatedDrawing:isa];

  *(v2 + qword_101A03740) = v11;
  type metadata accessor for CRLHandwritingDebugModel(0);
  v12 = swift_allocObject();
  *(v12 + 16) = _swiftEmptyArrayStorage;
  v13 = v11;
  ObservationRegistrar.init()();
  v31[0] = v13;
  v31[1] = v12;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v14 = UIHostingController.init(rootView:)();
  v15 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v16 = v14;

  v17 = dispatch thunk of UIHostingController.rootView.modify();
  v19 = *(v18 + 48);
  v20 = *(v18 + 56);
  *(v18 + 48) = sub_10081DB00;
  *(v18 + 56) = v15;
  v21 = sub_1000C1014(v19, v20);
  v17(v31, 0, v21);

  v22 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v23 = dispatch thunk of UIHostingController.rootView.modify();
  v25 = *(v24 + 32);
  v26 = *(v24 + 40);
  *(v24 + 32) = sub_10081DB24;
  *(v24 + 40) = v22;
  v27 = sub_1000C1014(v25, v26);
  v23(v31, 0, v27);

  v28 = qword_101A03740;
  v29 = *&v16[qword_101A03740];
  [v29 setDelegate:v16];

  [*&v16[v28] refresh];
  sub_10000CAAC(a2, &qword_101A01C10, &qword_10147ECC0);
  return v16;
}

void sub_10081D27C(uint64_t a1, SEL *a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = *(Strong + qword_101A03740);

    [v5 *a2];
  }
}

id sub_10081D30C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CRLHandwritingDebugViewController(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t static CRLHandwritingRecognitionStatusHelper.transferRepresentation.getter()
{
  v0 = type metadata accessor for UTType();
  __chkstk_darwin(v0 - 8);
  static UTType.rtf.getter();
  sub_100006370(0, &qword_101A034E0, off_10182F860);
  sub_10081D674();
  return DataRepresentation.init(exportedContentType:exporting:)();
}

uint64_t sub_10081D494(void *a1)
{
  *(v1 + 24) = *a1;

  return _swift_task_switch(sub_10081D528, 0, 0);
}

uint64_t sub_10081D528()
{
  *(v0 + 16) = 0;
  v1 = [*(v0 + 24) debugDataAndReturnError:v0 + 16];
  v2 = *(v0 + 16);
  if (v1)
  {
    v3 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v5 = v4;

    v6 = *(v0 + 8);

    return v6(v3, v5);
  }

  else
  {
    v8 = v2;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    v9 = *(v0 + 8);

    return v9();
  }
}

unint64_t sub_10081D674()
{
  result = qword_101A034E8;
  if (!qword_101A034E8)
  {
    v3 = sub_100006370(255, &qword_101A034E0, off_10182F860);
    result = swift_getWitnessTable("A_;", v3, v0, v1);
    atomic_store(result, &qword_101A034E8);
  }

  return result;
}

uint64_t sub_10081D6F8(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for UTType();
  __chkstk_darwin(v2 - 8);
  static UTType.rtf.getter();
  sub_100006370(0, &qword_101A034E0, off_10182F860);
  return DataRepresentation.init(exportedContentType:exporting:)();
}

uint64_t sub_10081D7E0(uint64_t a1)
{
  result = type metadata accessor for ObservationRegistrar();
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

uint64_t sub_10081D8B0(uint64_t a1)
{
  result = type metadata accessor for ObservationRegistrar();
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

void sub_10081D9C8(void *a1)
{
  v1 = a1;
  dispatch thunk of UIHostingController.rootView.getter();

  sub_1000C1014(v5, v6);
  sub_1000C1014(v7, v8);
  v2 = [*&v1[qword_101A03740] recognitionStatusStrings];
  sub_1005B981C(&qword_101A03918, &qword_1014802E0);
  v3 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  sub_10081B160(v3);
}

uint64_t sub_10081DAAC(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

unint64_t sub_10081DB50()
{
  result = qword_101A03840;
  if (!qword_101A03840)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_1005C4E5C(&qword_101A03830, &qword_101480210);
    v4[0] = sub_10001A2F8(&qword_101A03848, &qword_101A03850, &qword_101480220, &protocol conformance descriptor for ScrollView<A>);
    v4[1] = &protocol witness table for _PaddingLayout;
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_101A03840);
  }

  return result;
}

unint64_t sub_10081DC10()
{
  result = qword_101A03868;
  if (!qword_101A03868)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_1005C4E5C(&qword_101A03860, &qword_101480228);
    v4[0] = sub_10001A2F8(&qword_101A03870, &qword_101A03878, &qword_101480230, &protocol conformance descriptor for Label<A, B>);
    v4[1] = sub_10081DCC8();
    result = swift_getWitnessTable(&protocol conformance descriptor for <> _ConditionalContent<A, B>, v3, v4);
    atomic_store(result, &qword_101A03868);
  }

  return result;
}

unint64_t sub_10081DCC8()
{
  result = qword_101A03880;
  if (!qword_101A03880)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = sub_1005C4E5C(&qword_101A03888, &qword_101480238);
    v4[0] = sub_10081DD4C();
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ForEach<A, B, C>, v3, v4);
    atomic_store(result, &qword_101A03880);
  }

  return result;
}

unint64_t sub_10081DD4C()
{
  result = qword_101A03890;
  if (!qword_101A03890)
  {
    result = swift_getWitnessTable(byte_101480368, &type metadata for CRLDrawingRecognitionView, v0, v1);
    atomic_store(result, &qword_101A03890);
  }

  return result;
}

unint64_t sub_10081DDB8()
{
  result = qword_101A038C0;
  if (!qword_101A038C0)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_1005C4E5C(&qword_101A038B8, &qword_101480258);
    v4[0] = sub_10001A2F8(&qword_101A038C8, &qword_101A038D0, &qword_101480260, &protocol conformance descriptor for Button<A>);
    v4[1] = sub_10001A2F8(&qword_1019FEA88, &qword_1019FEA90, &qword_10147A680, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_101A038C0);
  }

  return result;
}

uint64_t sub_10081DEAC()
{
  v1 = *(v0 + 48);
  if (v1)
  {
    return v1();
  }

  return result;
}

uint64_t sub_10081DEDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{

  return Label<>.init(_:systemImage:)();
}

Swift::Int sub_10081DF74(uint64_t *a1)
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
        sub_1005B981C(&qword_101A03928, &qword_101480310);
        v5 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        v5[2] = v2 / 2;
      }

      v7[0] = v5 + 4;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_10081E160(v7, v8, a1, v4);
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
    return sub_10081E07C(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_10081E07C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
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

uint64_t sub_10081E160(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
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
      result = sub_10113DE48(v8);
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
        sub_10081E76C((v94 + 24 * *v95), (v94 + 24 * *v96), v94 + 24 * v97, v101);
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
      result = sub_100B355CC(0, *(v8 + 2) + 1, 1, v8);
      v8 = result;
    }

    v46 = *(v8 + 2);
    v45 = *(v8 + 3);
    v47 = v46 + 1;
    if (v46 >= v45 >> 1)
    {
      result = sub_100B355CC((v45 > 1), v46 + 1, 1, v8);
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
        sub_10081E76C((*v5 + 24 * v89), (*v5 + 24 * *&v8[16 * v50 + 32]), *v5 + 24 * v90, v49);
        if (v4)
        {
        }

        if (v90 < v89)
        {
          goto LABEL_116;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_10113DE48(v8);
        }

        if (v88 >= *(v8 + 2))
        {
          goto LABEL_117;
        }

        v91 = &v8[16 * v88];
        *(v91 + 4) = v89;
        *(v91 + 5) = v90;
        result = sub_10113DDBC(v50);
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