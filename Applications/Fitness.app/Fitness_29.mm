uint64_t sub_10037A398(uint64_t a1)
{
  v2 = sub_100140278(&qword_1008EA740, &qword_1006EBE90);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10037A400(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Capsule();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10037A464(uint64_t a1, __int16 a2, uint64_t a3, double a4, double a5, double a6, double a7)
{
  v9 = type metadata accessor for AppEntityVisualState();
  __chkstk_darwin(v9 - 8);
  v10 = type metadata accessor for ViewLocation();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v19 - v15;
  ViewLocation.init(x:y:z:width:height:depth:)();
  sub_100140278(&unk_1008E4E20, &qword_1006D5040);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_1006D4E70;
  (*(v11 + 16))(v13, v16, v10);
  AppEntityVisualState.init(isSelected:isHighlighted:isFocused:isDisabled:isEditing:isPrimary:)();
  v19 = a1;
  v20 = a2;
  type metadata accessor for _RepresentedEntityElement();
  swift_allocObject();
  sub_100163218();
  *(v17 + 32) = _RepresentedEntityElement.init<A>(appEntity:geometry:state:subelements:)();
  (*(v11 + 8))(v16, v10);
  return v17;
}

unint64_t sub_10037A6E0()
{
  result = qword_1008EA798;
  if (!qword_1008EA798)
  {
    sub_100141EEC(&qword_1008EA7A0, qword_1006EBF18);
    sub_10037A060();
    sub_10037A79C(&qword_1008DCEF8, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008EA798);
  }

  return result;
}

uint64_t sub_10037A79C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

id sub_10037A7E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v5 = String._bridgeToObjectiveC()();
  }

  else
  {
    v5 = 0;
  }

  v17.receiver = v3;
  v17.super_class = type metadata accessor for ShowLegacyDevicesTableViewCell();
  v6 = objc_msgSendSuper2(&v17, "initWithStyle:reuseIdentifier:", a1, v5);

  v7 = objc_opt_self();
  v8 = v6;
  v9 = [v7 secondarySystemBackgroundColor];
  [v8 setBackgroundColor:v9];

  v10 = [v8 textLabel];
  if (v10)
  {
    v11 = v10;
    v12 = [objc_opt_self() mainBundle];
    v13 = String._bridgeToObjectiveC()();
    v14 = String._bridgeToObjectiveC()();
    v15 = [v12 localizedStringForKey:v13 value:0 table:v14];

    if (!v15)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v15 = String._bridgeToObjectiveC()();
    }

    [v11 setText:v15];
  }

  [v8 setAccessoryType:1];

  return v8;
}

id sub_10037AA7C(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for ShowLegacyDevicesTableViewCell();
  return objc_msgSendSuper2(&v3, "dealloc");
}

id sub_10037AAD4()
{
  result = [objc_opt_self() secondarySystemGroupedBackgroundColor];
  qword_1008EA7D0 = result;
  return result;
}

id sub_10037AB10()
{
  result = [objc_allocWithZone(UIColor) initWithWhite:1.0 alpha:0.3];
  qword_1008EA7D8 = result;
  return result;
}

void sub_10037AB54()
{
  v0 = objc_opt_self();
  v1 = UIFontTextStyleBody;
  v2 = [v0 preferredFontForTextStyle:v1];

  qword_1008EA7E0 = v2;
}

void sub_10037ABC0()
{
  v0 = [objc_opt_self() briskColors];
  if (v0)
  {
    v1 = v0;
    v2 = [v0 nonGradientTextColor];

    qword_1008EA7E8 = v2;
  }

  else
  {
    __break(1u);
  }
}

char *sub_10037AC2C(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v10 = OBJC_IVAR___CHFriendDetailActionCell_label;
  v11 = [objc_allocWithZone(UILabel) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  if (qword_1008DA970 != -1)
  {
    swift_once();
  }

  v12 = UILabel.withFont(_:)();

  if (qword_1008DA978 != -1)
  {
    swift_once();
  }

  [v12 setTextColor:qword_1008EA7E8];
  [v12 setTranslatesAutoresizingMaskIntoConstraints:0];
  *&v5[v10] = v12;
  v13 = OBJC_IVAR___CHFriendDetailActionCell_accessoryImageView;
  v14 = [objc_allocWithZone(UIImageView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  [v14 setTranslatesAutoresizingMaskIntoConstraints:0];
  *&v5[v13] = v14;
  v20.receiver = v5;
  v20.super_class = type metadata accessor for FriendDetailActionCell();
  v15 = objc_msgSendSuper2(&v20, "initWithFrame:", a1, a2, a3, a4);
  v16 = [v15 contentView];
  if (qword_1008DA960 != -1)
  {
    swift_once();
  }

  [v16 setBackgroundColor:qword_1008EA7D0];

  v17 = [v15 contentView];
  [v17 addSubview:*&v15[OBJC_IVAR___CHFriendDetailActionCell_label]];

  v18 = [v15 contentView];
  [v18 addSubview:*&v15[OBJC_IVAR___CHFriendDetailActionCell_accessoryImageView]];

  sub_10037AED4();
  return v15;
}

void sub_10037AED4()
{
  v19 = objc_opt_self();
  v1 = *&v0[OBJC_IVAR___CHFriendDetailActionCell_label];
  v2 = [v0 contentView];
  UIView.constraintsPinningToEdgesOfView(_:supportingRTL:insets:leadingPriority:trailingPriority:topPriority:bottomPriority:)();

  sub_100140278(&unk_1008E4E20, &qword_1006D5040);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1006D9810;
  v4 = [v1 heightAnchor];
  v5 = [v4 constraintEqualToConstant:42.0];

  *(inited + 32) = v5;
  v6 = *&v0[OBJC_IVAR___CHFriendDetailActionCell_accessoryImageView];
  v7 = [v6 centerYAnchor];
  v8 = [v1 centerYAnchor];
  v9 = [v7 constraintEqualToAnchor:v8];

  *(inited + 40) = v9;
  v10 = [v6 trailingAnchor];
  v11 = [v0 contentView];
  v12 = [v11 trailingAnchor];

  v13 = [v10 constraintEqualToAnchor:v12 constant:-16.0];
  *(inited + 48) = v13;
  v14 = [v6 widthAnchor];
  v15 = [v14 constraintEqualToConstant:21.0];

  *(inited + 56) = v15;
  v16 = [v6 heightAnchor];
  v17 = [v16 constraintEqualToConstant:21.0];

  *(inited + 64) = v17;
  sub_10019EF10(inited);
  sub_10019EC5C();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v19 activateConstraints:isa];
}

void sub_10037B1B0(void *a1, uint64_t a2)
{
  v3 = [a1 contentView];
  [v3 setBackgroundColor:a2];
}

id sub_10037B23C(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for FriendDetailActionCell();
  return objc_msgSendSuper2(&v3, "dealloc");
}

void sub_10037B2E0()
{
  v1 = v0;
  v2 = OBJC_IVAR___CHFriendDetailActionCell_label;
  v3 = [objc_allocWithZone(UILabel) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  if (qword_1008DA970 != -1)
  {
    swift_once();
  }

  v4 = UILabel.withFont(_:)();

  if (qword_1008DA978 != -1)
  {
    swift_once();
  }

  [v4 setTextColor:qword_1008EA7E8];
  [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
  *(v1 + v2) = v4;
  v5 = OBJC_IVAR___CHFriendDetailActionCell_accessoryImageView;
  v6 = [objc_allocWithZone(UIImageView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  [v6 setTranslatesAutoresizingMaskIntoConstraints:0];
  *(v1 + v5) = v6;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

id sub_10037B460(uint64_t a1)
{
  v2 = *&v1[OBJC_IVAR____TtC10FitnessApp20TrophyCasePrefetcher_observers];
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = objc_opt_self();
    v5 = v2 + 32;

    do
    {
      sub_10000B1B4(v5, v10);
      v6 = [v4 defaultCenter];
      sub_1000066AC(v10, v10[3]);
      v7 = _bridgeAnythingToObjectiveC<A>(_:)();
      sub_100005A40(v10);
      [v6 removeObserver:v7];

      swift_unknownObjectRelease();
      v5 += 32;
      --v3;
    }

    while (v3);
  }

  v9.receiver = v1;
  v9.super_class = type metadata accessor for TrophyCasePrefetcher();
  return objc_msgSendSuper2(&v9, "dealloc");
}

uint64_t sub_10037B610()
{
  v1 = [objc_opt_self() defaultCenter];
  v2 = [objc_opt_self() mainQueue];
  v3 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v8[4] = sub_10037DB04;
  v8[5] = v3;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 1107296256;
  v8[2] = sub_100026F8C;
  v8[3] = &unk_1008547F0;
  v4 = _Block_copy(v8);

  v5 = [v1 addObserverForName:UIApplicationWillEnterForegroundNotification object:0 queue:v2 usingBlock:v4];
  _Block_release(v4);

  sub_100140278(&qword_1008E7590, qword_1006D5360);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1006D46C0;
  *(v6 + 56) = swift_getObjectType();
  *(v6 + 32) = v5;
  *(v0 + OBJC_IVAR____TtC10FitnessApp20TrophyCasePrefetcher_observers) = v6;
}

void sub_10037B7B8(uint64_t a1, uint64_t a2)
{
  v2 = static os_log_type_t.default.getter();
  v3 = HKLogActivity;
  os_log(_:dso:log:_:_:)(v2, &_mh_execute_header, v3, "[TrophyCasePrefetcher] app will enter foreground, prefetching now", 65, 2, _swiftEmptyArrayStorage);

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    sub_10037B860();
  }
}

void sub_10037B860()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchQoS();
  v40 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = objc_opt_self();
  v9 = [v8 sharedApplication];
  v10 = [v9 applicationState];

  if (v10)
  {
    v11 = static os_log_type_t.default.getter();
    v41 = HKLogActivity;
    os_log(_:dso:log:_:_:)(v11, &_mh_execute_header, v41, "[TrophyCasePrefetcher] Skipping prefetching because app is not active", 69, 2, _swiftEmptyArrayStorage);
    v12 = v41;
  }

  else
  {
    IsRightToLeft = FIUILocaleIsRightToLeft();
    v41 = v2;
    v14 = IsRightToLeft ^ 1;
    v36 = v1;
    v15 = IsRightToLeft;
    v35 = IsRightToLeft;
    v16 = [v8 sharedApplication];
    v38 = v5;
    v17 = [v16 preferredContentSizeCategory];

    LOBYTE(v16) = UIContentSizeCategory.isAccessibilityCategory.getter();
    if (v16)
    {
      v18 = v15;
    }

    else
    {
      v18 = v14;
    }

    v39 = v18;
    v19 = [v8 sharedApplication];
    v20 = [v19 preferredContentSizeCategory];

    v37 = UIContentSizeCategory.isAccessibilityCategory.getter();
    v21 = OBJC_IVAR____TtC10FitnessApp20TrophyCasePrefetcher_awardsDataProvider;
    v33 = OBJC_IVAR____TtC10FitnessApp20TrophyCasePrefetcher_awardsDataProvider;
    v32 = *(v0 + OBJC_IVAR____TtC10FitnessApp20TrophyCasePrefetcher_userInitiatedQueue);
    v22 = swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_100007C5C(v0 + v21, v49);
    v23 = swift_allocObject();
    sub_100006260(v49, v23 + 16);
    *(v23 + 56) = v22;
    v47 = sub_10037DA78;
    v48 = v23;
    aBlock = _NSConcreteStackBlock;
    v44 = 1107296256;
    v34 = &v45;
    v45 = sub_1000449A8;
    v46 = &unk_100854778;
    v24 = _Block_copy(&aBlock);

    static DispatchQoS.unspecified.getter();
    v42 = _swiftEmptyArrayStorage;
    v31[1] = sub_100045E18(&qword_1008E33B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_100140278(&unk_1008E7F50, &qword_1006D8190);
    v31[2] = sub_100282B7C(&qword_1008E33C0, &unk_1008E7F50, &qword_1006D8190);
    v25 = v36;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v24);
    v26 = v41[1];
    ++v41;
    v32 = v26;
    v26(v4, v25);
    v40 = *(v40 + 8);
    v27 = v38;
    (v40)(v7, v38);

    v28 = swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_100007C5C(v0 + v33, v49);
    v29 = swift_allocObject();
    *(v29 + 16) = v28;
    *(v29 + 24) = v39;
    sub_100006260(v49, v29 + 32);
    *(v29 + 72) = v35;
    *(v29 + 76) = (v37 & 1) == 0;
    v47 = sub_10037DA84;
    v48 = v29;
    aBlock = _NSConcreteStackBlock;
    v44 = 1107296256;
    v45 = sub_1000449A8;
    v46 = &unk_1008547C8;
    v30 = _Block_copy(&aBlock);

    static DispatchQoS.unspecified.getter();
    v42 = _swiftEmptyArrayStorage;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v30);
    v32(v4, v25);
    (v40)(v7, v27);
  }
}

unint64_t sub_10037BED0(void *a1, uint64_t a2)
{
  sub_1000066AC(a1, a1[3]);
  result = dispatch thunk of AAUIAwardsDataProviding.topThreeAchievements()();
  v3 = result;
  if (!(result >> 62))
  {
    v4 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_13:
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  v4 = result;
  if (!result)
  {
    goto LABEL_13;
  }

LABEL_3:
  if (v4 >= 1)
  {
    swift_beginAccess();
    for (i = 0; i != v4; ++i)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v6 = *(v3 + 8 * i + 32);
      }

      v7 = v6;
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v9 = Strong;
        type metadata accessor for AwardsActivityTile();
        v10 = sub_100339874();
        sub_10037D354(v7, v10, v11);
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10037C028(uint64_t a1, int a2, void *a3, unsigned int a4, unsigned int a5)
{
  v196 = a5;
  v194 = a4;
  v8 = sub_100140278(&qword_1008E7F80, &qword_1006E86F0);
  __chkstk_darwin(v8 - 8);
  v10 = &v185 - v9;
  v11 = type metadata accessor for AAUIAwardsDataProviderSection();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v192 = &v185 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v200 = &v185 - v15;
  __chkstk_darwin(v16);
  v199 = &v185 - v17;
  __chkstk_darwin(v18);
  v202 = &v185 - v19;
  __chkstk_darwin(v20);
  v22 = &v185 - v21;
  __chkstk_darwin(v23);
  v25 = &v185 - v24;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v198 = v11;
  v195 = a1;
  if (Strong)
  {
    v27 = Strong;
    v191 = v22;
    LODWORD(v193) = a2;
    v197 = v12;
    (v12[13])(v25, enum case for AAUIAwardsDataProviderSection.goForIt(_:), v11);
    sub_1002E9DF0();
    v29 = v28;
    v31 = v30;
    sub_1002E9F30();
    v33 = v32;
    v35 = v34;
    v36 = &v27[OBJC_IVAR____TtC10FitnessApp20TrophyCasePrefetcher_awardsDataProvider];
    sub_1000066AC(&v27[OBJC_IVAR____TtC10FitnessApp20TrophyCasePrefetcher_awardsDataProvider], *&v27[OBJC_IVAR____TtC10FitnessApp20TrophyCasePrefetcher_awardsDataProvider + 24]);
    v37 = dispatch thunk of AAUIAwardsDataProviding.topAchievement(forSection:)();
    if (!v37)
    {

      v12 = v197;
      goto LABEL_9;
    }

    v38 = v37;
    v201 = a3;
    sub_10037D354(v37, v29, v31);
    sub_1000066AC(v36, *(v36 + 3));
    v39 = dispatch thunk of AAUIAwardsDataProviding.achievementStack(forSection:)();
    v40 = v39;
    v41 = v39 >> 62;
    if (v39 >> 62)
    {
      v42 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v42 = *((v39 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v12 = v197;
    if (!v42 || (v43 = *&v27[OBJC_IVAR____TtC10FitnessApp20TrophyCasePrefetcher_badgeImageFactory], v190 = sub_1000059F8(0, &qword_1008E8750, ACHAchievement_ptr), isa = Array._bridgeToObjectiveC()().super.isa, v45 = [v43 hasCachedThumbnailImageForAchievements:isa size:v193 alignment:2 stackType:{v33, v35}], isa, (v45 & 1) != 0))
    {

      a3 = v201;
LABEL_9:
      v11 = v198;
      (v12[1])(v25, v198);
      goto LABEL_10;
    }

    v188 = v43;
    v189 = v38;
    v84 = static os_log_type_t.default.getter();
    v85 = HKLogActivity;
    v86 = v191;
    v11 = v198;
    (v12[2])(v191, v25, v198);
    LODWORD(v187) = v84;
    if (os_log_type_enabled(v85, v84))
    {
      v186 = v85;

      v87 = swift_slowAlloc();
      v185 = swift_slowAlloc();
      v204[0] = v185;
      *v87 = 134218754;
      if (v41)
      {
        v88 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v88 = *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      *(v87 + 4) = v88;

      *(v87 + 12) = 2080;
      v97 = v86;
      v98 = AAUIAwardsDataProviderSection.rawValue.getter();
      v100 = v99;
      v96 = v12[1];
      v101 = v97;
      v11 = v198;
      v96(v101, v198);
      v102 = sub_10000AFDC(v98, v100, v204);

      *(v87 + 14) = v102;
      *(v87 + 22) = 2048;
      *(v87 + 24) = v33;
      *(v87 + 32) = 2048;
      *(v87 + 34) = v35;
      v103 = v186;
      _os_log_impl(&_mh_execute_header, v186, v187, "[TrophyCasePrefetcher] Prefetching %ld assets for %s stack  [%fx%f]", v87, 0x2Au);
      sub_100005A40(v185);
    }

    else
    {
      v95 = v86;
      v96 = v12[1];
      v96(v95, v11);
    }

    v104 = Array._bridgeToObjectiveC()().super.isa;

    v105 = [v188 thumbnailImageForAchievements:v104 size:v193 alignment:2 stackType:{v33, v35}];

    v96(v25, v11);
    v12 = v197;
    a3 = v201;
  }

LABEL_10:
  sub_1000066AC(a3, a3[3]);
  dispatch thunk of AAUIAwardsDataProviding.mostRecentSection()();
  if ((v12[6])(v10, 1, v11) == 1)
  {
    v46 = v10;
    v47 = v11;
    sub_10037DA9C(v46);
    goto LABEL_40;
  }

  v48 = v202;
  (v12[4])(v202, v10, v11);
  swift_beginAccess();
  v49 = swift_unknownObjectWeakLoadStrong();
  if (v49)
  {
    v50 = v49;
    v51 = objc_opt_self();
    v52 = [v51 mainScreen];
    [v52 bounds];
    v54 = v53;
    v56 = v55;
    v58 = v57;
    v60 = v59;

    v205.origin.x = v54;
    v205.origin.y = v56;
    v205.size.width = v58;
    v205.size.height = v60;
    Width = CGRectGetWidth(v205);
    if (qword_1008DA900 != -1)
    {
      swift_once();
    }

    v62 = *&qword_100925618;
    v63 = [v51 mainScreen];
    [v63 bounds];
    v65 = v64;
    v67 = v66;
    v69 = v68;
    v71 = v70;

    v206.origin.x = v65;
    v206.origin.y = v67;
    v206.size.width = v69;
    v206.size.height = v71;
    v72 = CGRectGetWidth(v206);
    v73 = &v50[OBJC_IVAR____TtC10FitnessApp20TrophyCasePrefetcher_awardsDataProvider];
    sub_1000066AC(&v50[OBJC_IVAR____TtC10FitnessApp20TrophyCasePrefetcher_awardsDataProvider], *&v50[OBJC_IVAR____TtC10FitnessApp20TrophyCasePrefetcher_awardsDataProvider + 24]);
    v74 = dispatch thunk of AAUIAwardsDataProviding.topAchievement(forSection:)();
    if (v74)
    {
      v75 = v74;
      v201 = a3;
      sub_10037D354(v74, (Width - (v62 + v62)) * 0.6, (Width - (v62 + v62)) * 0.6);
      sub_1000066AC(v73, *(v73 + 3));
      v76 = dispatch thunk of AAUIAwardsDataProviding.achievementStack(forSection:)();
      v77 = v76;
      v78 = v76 >> 62;
      if (v76 >> 62)
      {
        if (_CocoaArrayWrapper.endIndex.getter())
        {
          goto LABEL_18;
        }
      }

      else if (*((v76 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_18:
        v79 = (v72 - (v62 + v62)) * 0.5 + -20.0 + -5.0;
        v80 = *&v50[OBJC_IVAR____TtC10FitnessApp20TrophyCasePrefetcher_badgeImageFactory];
        v81 = sub_1000059F8(0, &qword_1008E8750, ACHAchievement_ptr);
        v82 = Array._bridgeToObjectiveC()().super.isa;
        v83 = [v80 hasCachedThumbnailImageForAchievements:v82 size:v194 alignment:1 stackType:{v79, 41.0}];

        if (v83)
        {
        }

        else
        {
          v193 = v81;
          v197 = v80;
          v89 = static os_log_type_t.default.getter();
          v90 = HKLogActivity;
          v91 = v199;
          v92 = v198;
          (v12[2])(v199, v202, v198);
          LODWORD(v191) = v89;
          if (os_log_type_enabled(v90, v89))
          {
            v190 = v90;

            v93 = swift_slowAlloc();
            v189 = swift_slowAlloc();
            v204[0] = v189;
            *v93 = 134218754;
            if (v78)
            {
              v94 = _CocoaArrayWrapper.endIndex.getter();
            }

            else
            {
              v94 = *((v77 & 0xFFFFFFFFFFFFFF8) + 0x10);
            }

            v106 = v199;
            *(v93 + 4) = v94;

            *(v93 + 12) = 2080;
            v107 = AAUIAwardsDataProviderSection.rawValue.getter();
            v109 = v108;
            (v12[1])(v106, v198);
            v110 = sub_10000AFDC(v107, v109, v204);

            *(v93 + 14) = v110;
            *(v93 + 22) = 2048;
            *(v93 + 24) = v79;
            *(v93 + 32) = 2048;
            *(v93 + 34) = 0x4044800000000000;
            v111 = v190;
            _os_log_impl(&_mh_execute_header, v190, v191, "[TrophyCasePrefetcher] Prefetching %ld assets for %s stack  [%fx%f]", v93, 0x2Au);
            sub_100005A40(v189);
          }

          else
          {
            (v12[1])(v91, v92);
          }

          v112 = Array._bridgeToObjectiveC()().super.isa;

          v113 = [v197 thumbnailImageForAchievements:v112 size:v194 alignment:1 stackType:{v79, 41.0}];
        }

        v11 = v198;
        a3 = v201;
        v48 = v202;
        goto LABEL_39;
      }

      v11 = v198;
      a3 = v201;
    }

    else
    {
    }
  }

LABEL_39:
  v47 = v11;
  (v12[1])(v48, v11);
LABEL_40:
  sub_1000066AC(a3, a3[3]);
  v114 = dispatch thunk of AAUIAwardsDataProviding.otherSections()();
  v115 = v114[2].isa;
  if (v115)
  {
    v116 = (*(v12 + 80) + 32) & ~*(v12 + 80);
    v186 = v114;
    v117 = v114 + v116;
    swift_beginAccess();
    v119 = v12[2];
    v118 = v12 + 2;
    v201 = v118 - 1;
    v202 = v119;
    v120 = &selRef_initWithFitnessAppContext_activitySharingClient_;
    v199 = v118[7];
    *&v121 = 134218754;
    v187 = v121;
    v197 = v118;
    v122 = v200;
    v123 = v196;
    v124 = v47;
    (v119)(v200, v117, v47);
    while (1)
    {
      v125 = swift_unknownObjectWeakLoadStrong();
      if (!v125)
      {
        goto LABEL_43;
      }

      v126 = v125;
      v127 = objc_opt_self();
      v128 = [v127 v120[292]];
      [v128 bounds];
      v130 = v129;
      v132 = v131;
      v134 = v133;
      v136 = v135;

      v207.origin.x = v130;
      v207.origin.y = v132;
      v207.size.width = v134;
      v207.size.height = v136;
      v137 = CGRectGetWidth(v207);
      if (qword_1008DA900 != -1)
      {
        v183 = v137;
        swift_once();
        v137 = v183;
      }

      v138 = *&qword_100925618 + *&qword_100925618;
      v139 = v137 - (*&qword_100925618 + *&qword_100925618);
      if (v123)
      {
        v140 = [objc_opt_self() sharedApplication];
        v141 = [v140 preferredContentSizeCategory];

        LOBYTE(v140) = UIContentSizeCategory.isAccessibilityCategory.getter();
        if (v140)
        {
          v142 = v139 * 0.6;
        }

        else
        {
          v142 = 126.0;
        }
      }

      else
      {
        v142 = v139 * 0.6;
      }

      v143 = [v127 v120[292]];
      [v143 bounds];
      v145 = v144;
      v147 = v146;
      v149 = v148;
      v151 = v150;

      v208.origin.x = v145;
      v208.origin.y = v147;
      v208.size.width = v149;
      v208.size.height = v151;
      v152 = CGRectGetWidth(v208) - v138;
      v153 = v123;
      if (v123)
      {
        v154 = [objc_opt_self() sharedApplication];
        v155 = [v154 preferredContentSizeCategory];

        LOBYTE(v154) = UIContentSizeCategory.isAccessibilityCategory.getter();
        if (v154)
        {
          v156 = 41.0;
        }

        else
        {
          v152 = (v152 + -10.0) * 0.5;
          v156 = 38.0;
        }

        v157 = -15.0;
      }

      else
      {
        v157 = -20.0;
        v156 = 41.0;
      }

      v158 = &v126[OBJC_IVAR____TtC10FitnessApp20TrophyCasePrefetcher_awardsDataProvider];
      sub_1000066AC(&v126[OBJC_IVAR____TtC10FitnessApp20TrophyCasePrefetcher_awardsDataProvider], *&v126[OBJC_IVAR____TtC10FitnessApp20TrophyCasePrefetcher_awardsDataProvider + 24]);
      v159 = v200;
      v160 = dispatch thunk of AAUIAwardsDataProviding.topAchievement(forSection:)();
      if (!v160)
      {

        v122 = v159;
        v123 = v153;
        v120 = &selRef_initWithFitnessAppContext_activitySharingClient_;
        v124 = v198;
        goto LABEL_43;
      }

      v161 = v160;
      sub_10037D354(v160, v142, v142);
      sub_1000066AC(v158, *(v158 + 3));
      v162 = dispatch thunk of AAUIAwardsDataProviding.achievementStack(forSection:)();
      v163 = v162;
      v164 = (v162 >> 62);
      v122 = v159;
      if (v162 >> 62)
      {
        if (_CocoaArrayWrapper.endIndex.getter())
        {
LABEL_62:
          v165 = v152 * 0.5 + v157 + -5.0;
          v166 = *&v126[OBJC_IVAR____TtC10FitnessApp20TrophyCasePrefetcher_badgeImageFactory];
          sub_1000059F8(0, &qword_1008E8750, ACHAchievement_ptr);
          v167 = Array._bridgeToObjectiveC()().super.isa;
          v168 = [v166 hasCachedThumbnailImageForAchievements:v167 size:v194 alignment:2 stackType:{v165, v156}];

          if (v168)
          {

            v123 = v196;
          }

          else
          {
            v190 = v164;
            v193 = v166;
            v169 = static os_log_type_t.default.getter();
            v170 = HKLogActivity;
            v171 = v192;
            v172 = v198;
            (v202)(v192, v200, v198);
            LODWORD(v191) = v169;
            if (os_log_type_enabled(v170, v169))
            {
              v189 = v170;

              v173 = swift_slowAlloc();
              v188 = swift_slowAlloc();
              v203 = v188;
              *v173 = v187;
              if (v190)
              {
                v174 = _CocoaArrayWrapper.endIndex.getter();
              }

              else
              {
                v174 = *((v163 & 0xFFFFFFFFFFFFFF8) + 0x10);
              }

              v175 = v192;
              *(v173 + 4) = v174;

              *(v173 + 12) = 2080;
              v176 = AAUIAwardsDataProviderSection.rawValue.getter();
              v178 = v177;
              (*v201)(v175, v198);
              v179 = sub_10000AFDC(v176, v178, &v203);

              *(v173 + 14) = v179;
              *(v173 + 22) = 2048;
              *(v173 + 24) = v165;
              *(v173 + 32) = 2048;
              *(v173 + 34) = v156;
              v180 = v189;
              _os_log_impl(&_mh_execute_header, v189, v191, "[TrophyCasePrefetcher] Prefetching %ld assets for %s stack  [%fx%f]", v173, 0x2Au);
              sub_100005A40(v188);
            }

            else
            {
              (*v201)(v171, v172);
            }

            v123 = v196;
            v181 = Array._bridgeToObjectiveC()().super.isa;

            v182 = [v193 thumbnailImageForAchievements:v181 size:v194 alignment:2 stackType:{v165, v156}];
          }

          v124 = v198;
          v122 = v200;
          goto LABEL_74;
        }
      }

      else if (*((v162 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_62;
      }

      v123 = v196;
      v124 = v198;
LABEL_74:
      v120 = &selRef_initWithFitnessAppContext_activitySharingClient_;
LABEL_43:
      (*v201)(v122, v124);
      v117 = &v199[v117];
      v115 = (v115 - 1);
      if (!v115)
      {
      }

      (v202)(v122, v117, v124);
    }
  }
}

void sub_10037D354(void *a1, double a2, double a3)
{
  v7 = *(v3 + OBJC_IVAR____TtC10FitnessApp20TrophyCasePrefetcher_badgeImageFactory);
  if (([v7 hasCachedThumbnailImageForAchievement:a1 size:?] & 1) == 0)
  {
    v8 = static os_log_type_t.default.getter();
    v9 = HKLogActivity;
    if (os_log_type_enabled(HKLogActivity, v8))
    {
      v10 = v9;
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v19 = v12;
      *v11 = 136315650;
      v13 = [a1 template];
      v14 = [v13 uniqueName];

      if (v14)
      {
        static String._unconditionallyBridgeFromObjectiveC(_:)();
      }

      sub_100140278(&qword_1008DC8F8, &qword_1006D50B0);
      v15 = Optional.description.getter();
      v17 = v16;

      v18 = sub_10000AFDC(v15, v17, &v19);

      *(v11 + 4) = v18;
      *(v11 + 12) = 2048;
      *(v11 + 14) = a2;
      *(v11 + 22) = 2048;
      *(v11 + 24) = a3;
      _os_log_impl(&_mh_execute_header, v10, v8, "[TrophyCasePrefetcher] Prefetching asset for %s [%fx%f]", v11, 0x20u);
      sub_100005A40(v12);
    }
  }
}

void *sub_10037D5C8(void *a1, void *a2)
{
  v22 = a1;
  v24 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v5 = *(v24 - 8);
  __chkstk_darwin(v24);
  v23 = v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v7);
  v8 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v8 - 8);
  *&v2[OBJC_IVAR____TtC10FitnessApp20TrophyCasePrefetcher_observers] = _swiftEmptyArrayStorage;
  v21 = v2;
  sub_100007C5C(a1, &v2[OBJC_IVAR____TtC10FitnessApp20TrophyCasePrefetcher_awardsDataProvider]);
  *&v2[OBJC_IVAR____TtC10FitnessApp20TrophyCasePrefetcher_badgeImageFactory] = a2;
  v9 = sub_1000059F8(0, &qword_1008E3FD0, OS_dispatch_queue_ptr);
  v19 = "FitnessApp.TrophyCasePrefetcher";
  v20 = v9;
  v10 = a2;
  static DispatchQoS.utility.getter();
  v26 = _swiftEmptyArrayStorage;
  v18[2] = sub_100045E18(&qword_1008EA878, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  v18[1] = sub_100140278(&qword_1008EA880, qword_1006EC000);
  sub_100282B7C(&qword_1008EA888, &qword_1008EA880, qword_1006EC000);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v11 = enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:);
  v12 = *(v5 + 104);
  v18[0] = v5 + 104;
  v12(v23, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v24);
  v13 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v14 = v21;
  *&v21[OBJC_IVAR____TtC10FitnessApp20TrophyCasePrefetcher_utilityQueue] = v13;
  v19 = "cher_utility_queue";
  static DispatchQoS.userInitiated.getter();
  v26 = _swiftEmptyArrayStorage;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v12(v23, v11, v24);
  *&v14[OBJC_IVAR____TtC10FitnessApp20TrophyCasePrefetcher_userInitiatedQueue] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v15 = type metadata accessor for TrophyCasePrefetcher();
  v25.receiver = v14;
  v25.super_class = v15;
  v16 = objc_msgSendSuper2(&v25, "init");
  sub_10037B610();

  sub_100005A40(v22);
  return v16;
}

void sub_10037D96C(uint64_t a1, uint64_t a2, char a3)
{
  if (*(a1 + 16) || *(a2 + 16) || (a3 & 1) != 0)
  {
    v3 = static os_log_type_t.default.getter();
    v4 = HKLogActivity;
    os_log(_:dso:log:_:_:)(v3, &_mh_execute_header, v4, "[TrophyCasePrefetcher] did update awards, prefetching now", 57, 2, _swiftEmptyArrayStorage);

    sub_10037B860();
  }

  else
  {
    v5 = static os_log_type_t.default.getter();
    v6 = HKLogActivity;
    os_log(_:dso:log:_:_:)(v5, &_mh_execute_header, v6, "[TrophyCasePrefetcher] did update awards but no relevant updates, skipping prefetching", 86, 2, _swiftEmptyArrayStorage);
  }
}

uint64_t sub_10037DA9C(uint64_t a1)
{
  v2 = sub_100140278(&qword_1008E7F80, &qword_1006E86F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

double sub_10037DB1C()
{
  result = sub_1000B7B88() * 0.5;
  qword_1009256F8 = *&result;
  return result;
}

void sub_10037DC18()
{
  v1 = v0;
  v20.receiver = v0;
  v20.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v20, "viewDidLoad");
  v2 = [v0 view];
  if (!v2)
  {
    __break(1u);
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v3 = v2;
  v4 = [objc_opt_self() systemBackgroundColor];
  [v3 setBackgroundColor:v4];

  v5 = [v1 navigationItem];
  v6 = [objc_allocWithZone(UIBarButtonItem) initWithBarButtonSystemItem:24 target:v1 action:"close"];
  [v5 setRightBarButtonItem:v6];

  v7 = [v1 navigationItem];
  v8 = [objc_opt_self() mainBundle];
  v9 = String._bridgeToObjectiveC()();
  v10 = [v8 localizedStringForKey:v9 value:0 table:0];

  if (!v10)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = String._bridgeToObjectiveC()();
  }

  [v7 setTitle:v10];
  v11 = *&v1[OBJC_IVAR___CHDivingDetailChartDetailViewController_dataCalculator];
  v12 = objc_allocWithZone(sub_100140278(&qword_1008EA8C8, "Z^\v"));
  v13 = v11;
  v14 = UIHostingController.init(rootView:)();
  [v1 addChildViewController:v14];
  v15 = [v1 view];
  if (!v15)
  {
    goto LABEL_8;
  }

  v16 = v15;
  v17 = [v14 view];
  if (v17)
  {
    v18 = v17;
    [v16 addSubview:v17];

    [v14 didMoveToParentViewController:v1];
    v19 = *&v1[OBJC_IVAR___CHDivingDetailChartDetailViewController_hostingController];
    *&v1[OBJC_IVAR___CHDivingDetailChartDetailViewController_hostingController] = v14;

    sub_10037DEE4();
    return;
  }

LABEL_9:
  __break(1u);
}

void sub_10037DEE4()
{
  v1 = *&v0[OBJC_IVAR___CHDivingDetailChartDetailViewController_hostingController];
  if (!v1)
  {
    return;
  }

  v2 = v0;
  v3 = [v1 view];
  if (!v3)
  {
    return;
  }

  v4 = v3;
  [v3 setTranslatesAutoresizingMaskIntoConstraints:0];
  sub_100140278(&unk_1008E4E20, &qword_1006D5040);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1006D5300;
  v6 = [v4 topAnchor];
  v7 = [v2 view];
  if (!v7)
  {
    __break(1u);
    goto LABEL_14;
  }

  v8 = v7;
  v9 = [v7 topAnchor];

  v10 = [v6 constraintEqualToAnchor:v9];
  *(v5 + 32) = v10;
  v11 = [v4 bottomAnchor];
  v12 = [v2 view];
  if (!v12)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v13 = v12;
  v14 = [v12 bottomAnchor];

  v15 = [v11 constraintEqualToAnchor:v14];
  *(v5 + 40) = v15;
  v16 = [v4 leadingAnchor];
  v17 = [v2 view];
  if (!v17)
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    return;
  }

  v18 = v17;
  v19 = [v17 leadingAnchor];

  if (qword_1008DA980 != -1)
  {
    swift_once();
  }

  v20 = *&qword_1009256F8;
  v21 = [v16 constraintEqualToAnchor:v19 constant:*&qword_1009256F8];

  *(v5 + 48) = v21;
  v22 = [v4 trailingAnchor];
  v23 = [v2 view];
  if (!v23)
  {
    goto LABEL_16;
  }

  v24 = v23;
  v25 = objc_opt_self();
  v26 = [v24 trailingAnchor];

  v27 = [v22 constraintEqualToAnchor:v26 constant:-v20];
  *(v5 + 56) = v27;
  sub_10019EC5C();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v25 activateConstraints:isa];
}

void sub_10037E298(char a1)
{
  v8.receiver = v1;
  v8.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v8, "viewWillAppear:", a1 & 1);
  if ((_UISolariumEnabled() & 1) == 0)
  {
    v3 = [objc_allocWithZone(UINavigationBarAppearance) init];
    [v3 configureWithOpaqueBackground];
    v4 = objc_opt_self();
    v5 = [v4 systemBackgroundColor];
    [v3 setBackgroundColor:v5];

    v6 = [v4 systemBackgroundColor];
    [v3 setShadowColor:v6];

    v7 = [v1 navigationItem];
    [v7 setScrollEdgeAppearance:v3];
  }
}

uint64_t sub_10037E568()
{

  return swift_deallocClassInstance();
}

double sub_10037E5C4(uint64_t a1, void *aBlock)
{
  v2 = *(a1 + 32);
  v3 = _Block_copy(aBlock);
  v4 = swift_allocObject();
  *(v4 + 16) = v3;

  v2(sub_100383EB8, v4);

  return result;
}

void sub_10037E658(uint64_t a1, uint64_t a2)
{
  sub_1000059F8(0, &qword_1008EAA38, UIMenuElement_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;
  (*(a2 + 16))(a2, isa);
}

uint64_t sub_10037E6D4()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 localizedStringForKey:v1 value:0 table:0];

  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  return v3;
}

uint64_t sub_10037E7A0(char a1)
{
  if (!a1)
  {
    v2 = [objc_opt_self() mainBundle];
    v3 = String._bridgeToObjectiveC()();
    v4 = [v2 localizedStringForKey:v3 value:0 table:0];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_100140278(&unk_1008E4E50, &qword_1006D4A60);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_1006D1F70;
    *(v5 + 56) = &type metadata for String;
    v6 = sub_10000A788();
    *(v5 + 32) = 0x9380E29380E2;
    *(v5 + 40) = 0xA600000000000000;
    *(v5 + 96) = &type metadata for String;
    *(v5 + 104) = v6;
    *(v5 + 64) = v6;
    *(v5 + 72) = 0;
    *(v5 + 80) = 0xE000000000000000;
LABEL_6:
    v1 = String.init(format:_:)();

    return v1;
  }

  if (a1 != 1)
  {
    v7 = [objc_opt_self() mainBundle];
    v8 = String._bridgeToObjectiveC()();
    v9 = [v7 localizedStringForKey:v8 value:0 table:0];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_100140278(&unk_1008E4E50, &qword_1006D4A60);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_1006D46C0;
    *(v10 + 56) = &type metadata for String;
    *(v10 + 64) = sub_10000A788();
    *(v10 + 32) = 0x9380E29380E2;
    *(v10 + 40) = 0xA600000000000000;
    goto LABEL_6;
  }

  return 0;
}

void sub_10037E9EC()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC10FitnessApp40DayViewMoveAndExerciseChartTableViewCell_chartViewType;
  v3 = *(v0 + OBJC_IVAR____TtC10FitnessApp40DayViewMoveAndExerciseChartTableViewCell_chartViewType);
  v4 = objc_opt_self();
  if (v3 < 2)
  {
    v4 = [v4 energyColors];
    if (v4)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v4 = [v4 keyColors];
  if (!v4)
  {
LABEL_10:
    __break(1u);
    return;
  }

LABEL_5:
  v5 = v4;
  v6 = [v4 nonGradientTextColor];
  if (!v6)
  {
    __break(1u);
    goto LABEL_10;
  }

  v7 = v6;

  v8 = *(v1 + OBJC_IVAR____TtC10FitnessApp40DayViewMoveAndExerciseChartTableViewCell_labelPair);
  v9 = sub_10037E6D4();
  v10 = (v8 + OBJC_IVAR____TtC10FitnessApp29DayViewTitleAndValueLabelPair_titleText);
  *v10 = v9;
  v10[1] = v11;

  v12 = *(v8 + OBJC_IVAR____TtC10FitnessApp29DayViewTitleAndValueLabelPair_titleLabel);

  v13 = String._bridgeToObjectiveC()();

  [v12 setText:v13];

  v14 = *(v8 + OBJC_IVAR____TtC10FitnessApp29DayViewTitleAndValueLabelPair_valueLabelTextColor);
  *(v8 + OBJC_IVAR____TtC10FitnessApp29DayViewTitleAndValueLabelPair_valueLabelTextColor) = v7;
  v15 = v7;

  [*(v8 + OBJC_IVAR____TtC10FitnessApp29DayViewTitleAndValueLabelPair_valueLabel) setTextColor:v15];
  *(*(v1 + OBJC_IVAR____TtC10FitnessApp40DayViewMoveAndExerciseChartTableViewCell_chartView) + OBJC_IVAR____TtC10FitnessApp32ActivityMoveAndExerciseChartView_chartViewType) = *(v1 + v2);
  sub_100384AC0();
  [*(v1 + OBJC_IVAR____TtC10FitnessApp40DayViewMoveAndExerciseChartTableViewCell_editGoalButton) setTintColor:v15];
  v16 = *(v1 + OBJC_IVAR____TtC10FitnessApp40DayViewMoveAndExerciseChartTableViewCell_auxiliaryLabel);
  [v16 setTextColor:v15];

  sub_10037E7A0(*(v1 + v2));
  v17 = String._bridgeToObjectiveC()();

  [v16 setText:v17];
}

void sub_10037EC74(void *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC10FitnessApp40DayViewMoveAndExerciseChartTableViewCell_auxiliaryValue);
  *(v1 + OBJC_IVAR____TtC10FitnessApp40DayViewMoveAndExerciseChartTableViewCell_auxiliaryValue) = a1;
  v6 = a1;

  if (a1)
  {
    if (*(v1 + OBJC_IVAR____TtC10FitnessApp40DayViewMoveAndExerciseChartTableViewCell_chartViewType))
    {
      if (*(v1 + OBJC_IVAR____TtC10FitnessApp40DayViewMoveAndExerciseChartTableViewCell_chartViewType) == 1)
      {
        v4 = *(v1 + OBJC_IVAR____TtC10FitnessApp40DayViewMoveAndExerciseChartTableViewCell_auxiliaryLabel);
        v5 = String._bridgeToObjectiveC()();
        [v4 setText:v5];
      }

      else
      {
        sub_100381DF0(v6);
      }
    }

    else
    {
      sub_100381AE8(v6);
    }
  }
}

void sub_10037ED50(void *a1)
{
  v2 = OBJC_IVAR____TtC10FitnessApp40DayViewMoveAndExerciseChartTableViewCell_formattingManager;
  v3 = *(v1 + OBJC_IVAR____TtC10FitnessApp40DayViewMoveAndExerciseChartTableViewCell_formattingManager);
  *(v1 + OBJC_IVAR____TtC10FitnessApp40DayViewMoveAndExerciseChartTableViewCell_formattingManager) = a1;
  v4 = a1;

  v5 = *(v1 + OBJC_IVAR____TtC10FitnessApp40DayViewMoveAndExerciseChartTableViewCell_chartView);
  v6 = *(v1 + v2);
  if (v6)
  {
    v7 = v6;
    v8 = [v7 unitManager];
  }

  else
  {

    v8 = 0;
  }

  v9 = *(v5 + OBJC_IVAR____TtC10FitnessApp32ActivityMoveAndExerciseChartView_unitManager);
  *(v5 + OBJC_IVAR____TtC10FitnessApp32ActivityMoveAndExerciseChartView_unitManager) = v8;
}

void sub_10037EE3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v3[OBJC_IVAR____TtC10FitnessApp40DayViewMoveAndExerciseChartTableViewCell_chartViewType] = 0;
  v6 = &v3[OBJC_IVAR____TtC10FitnessApp40DayViewMoveAndExerciseChartTableViewCell_histogram];
  *v6 = 0u;
  *(v6 + 1) = 0u;
  *(v6 + 2) = 0u;
  *(v6 + 6) = 0;
  v7 = &v3[OBJC_IVAR____TtC10FitnessApp40DayViewMoveAndExerciseChartTableViewCell_workoutHistogram];
  *v7 = 0u;
  *(v7 + 1) = 0u;
  *(v7 + 2) = 0u;
  *(v7 + 6) = 0;
  v8 = &v3[OBJC_IVAR____TtC10FitnessApp40DayViewMoveAndExerciseChartTableViewCell_onEditGoal];
  *v8 = 0;
  *(v8 + 1) = 0;
  v3[OBJC_IVAR____TtC10FitnessApp40DayViewMoveAndExerciseChartTableViewCell_isToday] = 0;
  *&v3[OBJC_IVAR____TtC10FitnessApp40DayViewMoveAndExerciseChartTableViewCell_auxiliaryValue] = 0;
  *&v3[OBJC_IVAR____TtC10FitnessApp40DayViewMoveAndExerciseChartTableViewCell_formattingManager] = 0;
  v9 = [objc_allocWithZone(type metadata accessor for DayViewTitleAndValueLabelPair()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  [v9 setTranslatesAutoresizingMaskIntoConstraints:0];
  v10 = objc_opt_self();
  v11 = [v10 labelColor];
  v12 = *&v9[OBJC_IVAR____TtC10FitnessApp29DayViewTitleAndValueLabelPair_titleLabelTextColor];
  *&v9[OBJC_IVAR____TtC10FitnessApp29DayViewTitleAndValueLabelPair_titleLabelTextColor] = v11;
  v13 = v11;

  v14 = OBJC_IVAR____TtC10FitnessApp29DayViewTitleAndValueLabelPair_titleLabel;
  [*&v9[OBJC_IVAR____TtC10FitnessApp29DayViewTitleAndValueLabelPair_titleLabel] setTextColor:v13];

  v15 = objc_opt_self();
  v16 = [v15 energyColors];
  if (!v16)
  {
    __break(1u);
    goto LABEL_12;
  }

  v17 = v16;
  v100 = a1;
  v103 = v10;
  v18 = [v16 nonGradientTextColor];
  if (!v18)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v19 = v18;

  v20 = OBJC_IVAR____TtC10FitnessApp40DayViewMoveAndExerciseChartTableViewCell_labelPair;
  v21 = *&v9[OBJC_IVAR____TtC10FitnessApp29DayViewTitleAndValueLabelPair_valueLabelTextColor];
  *&v9[OBJC_IVAR____TtC10FitnessApp29DayViewTitleAndValueLabelPair_valueLabelTextColor] = v19;
  v22 = v19;

  [*&v9[OBJC_IVAR____TtC10FitnessApp29DayViewTitleAndValueLabelPair_valueLabel] setTextColor:v22];
  v23 = objc_opt_self();
  v24 = [v23 mainBundle];
  v25 = String._bridgeToObjectiveC()();
  v26 = [v24 localizedStringForKey:v25 value:0 table:0];

  v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v29 = v28;

  v30 = &v9[OBJC_IVAR____TtC10FitnessApp29DayViewTitleAndValueLabelPair_titleText];
  *v30 = v27;
  v30[1] = v29;

  v31 = *&v9[v14];

  v32 = String._bridgeToObjectiveC()();
  [v31 setText:v32];

  *&v4[v20] = v9;
  v33 = OBJC_IVAR____TtC10FitnessApp40DayViewMoveAndExerciseChartTableViewCell_chartView;
  v34 = [objc_allocWithZone(type metadata accessor for ActivityMoveAndExerciseChartView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  [v34 setTranslatesAutoresizingMaskIntoConstraints:0];
  *(v34 + OBJC_IVAR____TtC10FitnessApp32ActivityMoveAndExerciseChartView_chartViewType) = 0;
  sub_100384AC0();
  *&v4[v33] = v34;
  v35 = [objc_allocWithZone(UILabel) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  [v35 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v35 setAdjustsFontForContentSizeCategory:1];
  v36 = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleCaption1];
  v37 = UILabel.withFont(_:)();

  v38 = [v15 energyColors];
  if (!v38)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v39 = v38;
  v40 = [v38 nonGradientTextColor];
  if (!v40)
  {
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v41 = v40;
  v42 = OBJC_IVAR____TtC10FitnessApp40DayViewMoveAndExerciseChartTableViewCell_auxiliaryLabel;

  v43 = UILabel.withTextColor(_:)();
  v44 = v43;
  LODWORD(v45) = 1148846080;
  [v44 setContentCompressionResistancePriority:1 forAxis:v45];
  LODWORD(v46) = 1148846080;
  [v44 setContentHuggingPriority:1 forAxis:v46];

  *&v4[v42] = v44;
  v47 = OBJC_IVAR____TtC10FitnessApp40DayViewMoveAndExerciseChartTableViewCell_editGoalButton;
  v48 = [objc_opt_self() buttonWithType:0];
  [v48 setTranslatesAutoresizingMaskIntoConstraints:0];
  *&v4[v47] = v48;
  v49 = &v4[OBJC_IVAR____TtC10FitnessApp40DayViewMoveAndExerciseChartTableViewCell_fontListener];
  *v49 = 0u;
  *(v49 + 1) = 0u;
  *&v4[OBJC_IVAR____TtC10FitnessApp40DayViewMoveAndExerciseChartTableViewCell_chartData] = 0;
  *&v4[OBJC_IVAR____TtC10FitnessApp40DayViewMoveAndExerciseChartTableViewCell_workouts] = 0;
  *&v4[OBJC_IVAR____TtC10FitnessApp40DayViewMoveAndExerciseChartTableViewCell_nBins] = 96;
  if (a3)
  {

    v50 = String._bridgeToObjectiveC()();
  }

  else
  {
    v50 = 0;
  }

  v110.receiver = v4;
  v110.super_class = type metadata accessor for DayViewMoveAndExerciseChartTableViewCell();
  v51 = objc_msgSendSuper2(&v110, "initWithStyle:reuseIdentifier:", v100, v50);

  v52 = v51;
  v53 = [v103 systemBackgroundColor];
  [v52 setBackgroundColor:v53];

  v54 = [v52 contentView];
  [v54 addSubview:*&v52[OBJC_IVAR____TtC10FitnessApp40DayViewMoveAndExerciseChartTableViewCell_labelPair]];

  v55 = v52;
  v56 = [v55 contentView];
  v57 = OBJC_IVAR____TtC10FitnessApp40DayViewMoveAndExerciseChartTableViewCell_chartView;
  [v56 addSubview:*&v55[OBJC_IVAR____TtC10FitnessApp40DayViewMoveAndExerciseChartTableViewCell_chartView]];

  *(*&v55[v57] + OBJC_IVAR____TtC10FitnessApp32ActivityMoveAndExerciseChartView_dataProvider + 8) = &off_100854828;
  swift_unknownObjectWeakAssign();

  v58 = [v55 contentView];
  [v58 addSubview:*&v55[OBJC_IVAR____TtC10FitnessApp40DayViewMoveAndExerciseChartTableViewCell_auxiliaryLabel]];

  v59 = [v55 contentView];
  v60 = OBJC_IVAR____TtC10FitnessApp40DayViewMoveAndExerciseChartTableViewCell_editGoalButton;
  [v59 addSubview:*&v55[OBJC_IVAR____TtC10FitnessApp40DayViewMoveAndExerciseChartTableViewCell_editGoalButton]];

  sub_1000059F8(0, &qword_1008E0C88, UIAction_ptr);
  v61 = [v23 mainBundle];
  v62 = String._bridgeToObjectiveC()();
  v63 = [v61 localizedStringForKey:v62 value:0 table:0];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v64 = String._bridgeToObjectiveC()();
  v65 = objc_opt_self();
  v66 = [v65 smm_systemImageNamed:v64];

  swift_allocObject();
  swift_unknownObjectWeakInit();
  v67 = v55;
  v68 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  v69 = objc_opt_self();
  v70 = swift_allocObject();
  *(v70 + 16) = v67;
  v108 = sub_100383EA8;
  v109 = v70;
  aBlock = _NSConcreteStackBlock;
  v105 = 1107296256;
  v106 = sub_10037E5C4;
  ObjectType = &unk_100854890;
  v71 = _Block_copy(&aBlock);

  v72 = [v69 elementWithUncachedProvider:{v71, 0}];
  _Block_release(v71);
  sub_1000059F8(0, &qword_1008EB650, UIMenu_ptr);
  sub_100140278(&unk_1008E4E20, &qword_1006D5040);
  preferredElementSize = swift_allocObject();
  *(preferredElementSize + 16) = xmmword_1006D68D0;
  *(preferredElementSize + 32) = v68;
  *(preferredElementSize + 40) = v72;
  v101 = v68;
  v74 = v72;
  v75._countAndFlagsBits = 0;
  v75._object = 0xE000000000000000;
  v111.value.super.isa = 0;
  v111.is_nil = 0;
  v76.super.super.isa = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v75, 0, v111, 0, 0xFFFFFFFFFFFFFFFFLL, preferredElementSize, 0).super.super.isa;
  v77 = [objc_opt_self() configurationWithPointSize:5 weight:30.0];
  v78 = *&v55[v60];
  v79 = v77;
  v80 = v60;
  v81 = String._bridgeToObjectiveC()();
  v82 = [v65 smm_systemImageNamed:v81 withConfiguration:v79];

  [v78 setImage:v82 forState:0];
  v83 = *&v55[v60];
  v84 = [v103 secondarySystemGroupedBackgroundColor];
  [v83 setBackgroundColor:v84];

  v85 = [*&v55[v60] layer];
  [v85 setMasksToBounds:1];

  [*&v55[v60] setMenu:v76.super.super.isa];
  [*&v55[v60] setShowsMenuAsPrimaryAction:1];
  v86 = *&v55[v60];
  v87 = objc_opt_self();
  v88 = v86;
  v89 = [v87 sharedBehavior];
  if (!v89)
  {
    goto LABEL_15;
  }

  v90 = v89;
  v91 = [v89 features];

  if (v91)
  {

    v92 = [v91 scheduledGoals];

    [v88 setHidden:v92 ^ 1];
    v93 = *&v55[v80];
    UIEdgeInsets.init(uniform:)();
    [v93 setContentEdgeInsets:?];

    sub_100380D20();
    v94 = [objc_opt_self() defaultCenter];
    v95 = [objc_opt_self() mainQueue];
    v96 = swift_allocObject();
    swift_unknownObjectWeakInit();

    v108 = sub_100383EB0;
    v109 = v96;
    aBlock = _NSConcreteStackBlock;
    v105 = 1107296256;
    v106 = sub_100026F8C;
    ObjectType = &unk_1008548B8;
    v97 = _Block_copy(&aBlock);

    v98 = [v94 addObserverForName:UIContentSizeCategoryDidChangeNotification object:0 queue:v95 usingBlock:v97];
    _Block_release(v97);

    ObjectType = swift_getObjectType();
    aBlock = v98;
    v99 = OBJC_IVAR____TtC10FitnessApp40DayViewMoveAndExerciseChartTableViewCell_fontListener;
    swift_beginAccess();
    sub_1002885B8(&aBlock, &v67[v99]);
    swift_endAccess();

    return;
  }

LABEL_16:
  __break(1u);
}

double sub_10037FB10(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = sub_100140278(&qword_1008E1760, &qword_1006D4490);
  __chkstk_darwin(v6 - 8);
  v8 = &v14 - v7;
  v9 = type metadata accessor for TaskPriority();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  type metadata accessor for MainActor();
  v10 = a3;

  v11 = static MainActor.shared.getter();
  v12 = swift_allocObject();
  v12[2] = v11;
  v12[3] = &protocol witness table for MainActor;
  v12[4] = v10;
  v12[5] = a1;
  v12[6] = a2;
  sub_10026E198(0, 0, v8, &unk_1006EC120, v12);

  return result;
}

uint64_t sub_10037FC54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[5] = a5;
  v6[6] = a6;
  v6[4] = a4;
  v7 = sub_100140278(&qword_1008E0C90, &unk_1006DDBD0);
  v6[7] = v7;
  v6[8] = *(v7 - 8);
  v6[9] = swift_task_alloc();
  v8 = sub_100140278(&qword_1008E0C98, qword_1006DC8E0);
  v6[10] = v8;
  v6[11] = *(v8 - 8);
  v6[12] = swift_task_alloc();
  v9 = sub_100140278(&qword_1008E0CA0, &unk_1006DDBF0);
  v6[13] = v9;
  v6[14] = *(v9 - 8);
  v6[15] = swift_task_alloc();
  type metadata accessor for MainActor();
  v6[16] = static MainActor.shared.getter();
  v11 = dispatch thunk of Actor.unownedExecutor.getter();
  v6[17] = v11;
  v6[18] = v10;

  return _swift_task_switch(sub_10037FE28, v11, v10);
}

uint64_t sub_10037FE28()
{
  v25 = [objc_allocWithZone(HKHealthStore) init];
  v0[19] = v25;
  swift_getKeyPath();
  SortDescriptor.init<A>(_:order:)();
  sub_1000059F8(0, &unk_1008E4E30, HKSampleType_ptr);
  v1 = [swift_getObjCClassFromMetadata() activityGoalScheduleType];
  if (v1)
  {
    v3 = v1;
    v4 = v0[14];
    v24 = v0[15];
    v6 = v0[12];
    v5 = v0[13];
    v7 = v0[10];
    v8 = v0[11];
    sub_1000059F8(0, &qword_1008E04D0, HKSample_ptr);
    static HKSamplePredicate.sample(type:predicate:)();

    sub_100140278(&qword_1008E0CA8, &unk_1006DDBE0);
    v9 = (*(v8 + 80) + 32) & ~*(v8 + 80);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_1006D46C0;
    (*(v8 + 16))(v10 + v9, v6, v7);
    sub_100140278(&qword_1008E0CB0, &unk_1006DC930);
    v11 = (*(v4 + 80) + 32) & ~*(v4 + 80);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_1006D46C0;
    (*(v4 + 16))(v12 + v11, v24, v5);
    HKSampleQueryDescriptor.init(predicates:sortDescriptors:limit:)();
    v13 = objc_opt_self();
    v0[20] = v13;
    v14 = [v13 mainBundle];
    v15 = String._bridgeToObjectiveC()();
    v16 = [v14 localizedStringForKey:v15 value:0 table:0];

    v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v19 = v18;
    v0[2] = v17;
    v0[3] = v18;

    v0[21] = v19;
    v20 = String._bridgeToObjectiveC()();
    v21 = objc_opt_self();
    v0[22] = v21;
    v0[23] = [v21 smm_systemImageNamed:v20];

    v22 = swift_task_alloc();
    v0[24] = v22;
    *v22 = v0;
    v22[1] = sub_100380158;
    v2 = v0[7];
    v1 = v25;
  }

  else
  {
    __break(1u);
  }

  return HKSampleQueryDescriptor.result(for:)(v1, v2);
}

uint64_t sub_100380158(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 200) = a1;
  *(v4 + 208) = v1;

  v5 = *(v3 + 144);
  v6 = *(v3 + 136);
  if (v1)
  {
    v7 = sub_1003806B0;
  }

  else
  {
    v7 = sub_10038029C;
  }

  return _swift_task_switch(v7, v6, v5);
}

uint64_t sub_10038029C()
{
  v1 = v0[25];

  v40 = v0;
  if (v1 >> 62)
  {
    goto LABEL_21;
  }

  for (i = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v3 = 0;
    v4 = v40[4];
    v5 = OBJC_IVAR____TtC10FitnessApp40DayViewMoveAndExerciseChartTableViewCell_chartViewType;
    v6 = v1 & 0xC000000000000001;
    v7 = v1 & 0xFFFFFFFFFFFFFF8;
    v8 = v40[25] + 32;
    while (1)
    {
      if (v6)
      {
        v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v3 >= *(v7 + 16))
        {
          goto LABEL_20;
        }

        v9 = *(v8 + 8 * v3);
      }

      v1 = v9;
      v10 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        break;
      }

      objc_opt_self();
      v11 = swift_dynamicCastObjCClass();
      if (v11)
      {
        v12 = *(v4 + v5);
        v13 = [v11 goalType];
        if (v12)
        {
          if (v12 == 1)
          {
            if (v13 == 1)
            {
              goto LABEL_18;
            }
          }

          else if (v13 == 2)
          {
LABEL_18:
            v14 = v40;
            v15 = v40[22];
            v16 = v40[23];
            v17 = v40[20];

            v18 = [v17 mainBundle];
            v19 = String._bridgeToObjectiveC()();
            v20 = [v18 localizedStringForKey:v19 value:0 table:0];

            static String._unconditionallyBridgeFromObjectiveC(_:)();
            v21 = String._bridgeToObjectiveC()();
            v22 = [v15 smm_systemImageNamed:v21];

            goto LABEL_23;
          }
        }

        else if (!v13)
        {
          goto LABEL_18;
        }
      }

      ++v3;
      if (v10 == i)
      {
        goto LABEL_22;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    ;
  }

LABEL_22:
  v14 = v40;

  v22 = v40[23];
LABEL_23:
  v35 = v14[19];
  v24 = v14[14];
  v23 = v14[15];
  v39 = v14[12];
  v41 = v14[13];
  v25 = v14[11];
  v38 = v14[10];
  v26 = v14[8];
  v36 = v14[7];
  v37 = v14[9];
  v34 = v14[5];
  sub_1000059F8(0, &qword_1008E0C88, UIAction_ptr);
  v27 = v14;
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v28 = v22;
  v29 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  sub_100140278(&unk_1008E4E20, &qword_1006D5040);
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_1006D4E70;
  *(v30 + 32) = v29;
  v31 = v29;
  v34(v30);

  (*(v26 + 8))(v37, v36);
  (*(v25 + 8))(v39, v38);
  (*(v24 + 8))(v23, v41);

  v32 = v27[1];

  return v32();
}

uint64_t sub_1003806B0()
{

  v1 = v0[23];
  v12 = v0[19];
  v2 = v0[14];
  v17 = v0[13];
  v18 = v0[15];
  v3 = v0[11];
  v15 = v0[10];
  v16 = v0[12];
  v4 = v0[8];
  v13 = v0[7];
  v14 = v0[9];
  v11 = v0[5];
  sub_1000059F8(0, &qword_1008E0C88, UIAction_ptr);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v5 = v1;
  v6 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  sub_100140278(&unk_1008E4E20, &qword_1006D5040);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1006D4E70;
  *(v7 + 32) = v6;
  v8 = v6;
  v11(v7);

  (*(v4 + 8))(v14, v13);
  (*(v3 + 8))(v16, v15);
  (*(v2 + 8))(v18, v17);

  v9 = v0[1];

  return v9();
}

double sub_1003808CC(uint64_t a1, uint64_t a2, char a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = *(Strong + OBJC_IVAR____TtC10FitnessApp40DayViewMoveAndExerciseChartTableViewCell_onEditGoal);
    v6 = *(Strong + OBJC_IVAR____TtC10FitnessApp40DayViewMoveAndExerciseChartTableViewCell_onEditGoal + 8);
    v8 = Strong;
    sub_10000B210(v7, v6);

    if (v7)
    {
      v7(a3 & 1);
      return sub_1000245E0(v7, v6);
    }
  }

  return result;
}

void sub_100380960(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    [Strong setNeedsLayout];
  }
}

id sub_100380AC4()
{
  v1 = OBJC_IVAR____TtC10FitnessApp40DayViewMoveAndExerciseChartTableViewCell_fontListener;
  swift_beginAccess();
  sub_10001B104(v0 + v1, &v5, &qword_1008E51F0, qword_1006D50E0);
  if (v6)
  {
    sub_1001AA76C(&v5, &v7);
    v2 = [objc_opt_self() defaultCenter];
    sub_1000066AC(&v7, v8);
    [v2 removeObserver:_bridgeAnythingToObjectiveC<A>(_:)()];

    swift_unknownObjectRelease();
    sub_100005A40(&v7);
  }

  else
  {
    sub_10000EA04(&v5, &qword_1008E51F0, qword_1006D50E0);
  }

  v4.receiver = v0;
  v4.super_class = type metadata accessor for DayViewMoveAndExerciseChartTableViewCell();
  return objc_msgSendSuper2(&v4, "dealloc");
}

void sub_100380D20()
{
  v1 = v0;
  if (FIUICurrentLanguageRequiresTallScript())
  {
    v2 = 3.0;
  }

  else
  {
    v2 = 0.0;
  }

  v3 = *&v0[OBJC_IVAR____TtC10FitnessApp40DayViewMoveAndExerciseChartTableViewCell_labelPair];
  v4 = [v3 leadingAnchor];
  v5 = [v0 contentView];
  v6 = [v5 leadingAnchor];

  v64 = [v4 constraintEqualToAnchor:v6 constant:16.0];
  v7 = [v3 trailingAnchor];
  v8 = [v1 contentView];
  v9 = [v8 trailingAnchor];

  v62 = [v7 constraintEqualToAnchor:v9 constant:-16.0];
  v10 = [v3 topAnchor];
  v11 = [v1 contentView];
  v12 = [v11 topAnchor];

  v60 = [v10 constraintEqualToAnchor:v12 constant:v2];
  v13 = *&v1[OBJC_IVAR____TtC10FitnessApp40DayViewMoveAndExerciseChartTableViewCell_chartView];
  v14 = [v13 leadingAnchor];
  v15 = [v1 contentView];
  v16 = [v15 leadingAnchor];

  v58 = [v14 constraintEqualToAnchor:v16 constant:16.0];
  v17 = [v13 trailingAnchor];
  v18 = [v1 contentView];
  v19 = [v18 trailingAnchor];

  v56 = [v17 constraintEqualToAnchor:v19 constant:-16.0];
  v20 = [v13 topAnchor];
  v21 = [v3 bottomAnchor];
  v55 = [v20 constraintEqualToAnchor:v21];

  v22 = *&v1[OBJC_IVAR____TtC10FitnessApp40DayViewMoveAndExerciseChartTableViewCell_auxiliaryLabel];
  v23 = [v22 leadingAnchor];
  v24 = [v1 contentView];
  v25 = [v24 leadingAnchor];

  v54 = [v23 constraintEqualToAnchor:v25 constant:16.0];
  v26 = [v22 trailingAnchor];
  v27 = [v1 contentView];
  v28 = [v27 trailingAnchor];

  v53 = [v26 constraintEqualToAnchor:v28 constant:-16.0];
  v29 = [v22 topAnchor];
  v30 = [v13 bottomAnchor];
  v52 = [v29 constraintEqualToAnchor:v30 constant:0.0];

  v31 = [v22 bottomAnchor];
  v32 = [v1 contentView];
  v33 = [v32 bottomAnchor];

  v69 = [v31 constraintEqualToAnchor:v33 constant:-27.0];
  v34 = *&v1[OBJC_IVAR____TtC10FitnessApp40DayViewMoveAndExerciseChartTableViewCell_editGoalButton];
  v35 = [v34 centerYAnchor];
  v36 = [*&v3[OBJC_IVAR____TtC10FitnessApp29DayViewTitleAndValueLabelPair_valueLabel] centerYAnchor];
  v68 = [v35 constraintEqualToAnchor:v36];

  v37 = [v34 trailingAnchor];
  v38 = [v1 contentView];
  v39 = [v38 trailingAnchor];

  v67 = [v37 constraintEqualToAnchor:v39 constant:-16.0];
  v40 = [v34 heightAnchor];
  v41 = [v34 widthAnchor];
  v66 = [v40 constraintEqualToAnchor:v41];

  v51 = objc_opt_self();
  sub_100140278(&unk_1008E4E20, &qword_1006D5040);
  v42 = swift_allocObject();
  *(v42 + 16) = xmmword_1006DBF20;
  *(v42 + 32) = v64;
  *(v42 + 40) = v62;
  *(v42 + 48) = v60;
  *(v42 + 56) = v58;
  *(v42 + 64) = v56;
  *(v42 + 72) = v55;
  *(v42 + 80) = v54;
  *(v42 + 88) = v53;
  *(v42 + 96) = v52;
  *(v42 + 104) = v69;
  *(v42 + 112) = v68;
  *(v42 + 120) = v67;
  *(v42 + 128) = v66;
  sub_1000059F8(0, &qword_1008DC980, NSLayoutConstraint_ptr);
  v65 = v64;
  v63 = v62;
  v61 = v60;
  v59 = v58;
  v57 = v56;
  v43 = v55;
  v44 = v54;
  v45 = v53;
  v46 = v52;
  v47 = v69;
  v48 = v68;
  v49 = v67;
  v50 = v66;
  v70.super.isa = Array._bridgeToObjectiveC()().super.isa;

  [v51 activateConstraints:v70.super.isa];
}

id sub_1003814E4(void *a1)
{
  v2 = v1;
  *(v1 + OBJC_IVAR____TtC10FitnessApp40DayViewMoveAndExerciseChartTableViewCell_chartViewType) = 0;
  v3 = v1 + OBJC_IVAR____TtC10FitnessApp40DayViewMoveAndExerciseChartTableViewCell_histogram;
  *v3 = 0u;
  *(v3 + 16) = 0u;
  *(v3 + 32) = 0u;
  *(v3 + 48) = 0;
  v4 = v1 + OBJC_IVAR____TtC10FitnessApp40DayViewMoveAndExerciseChartTableViewCell_workoutHistogram;
  *v4 = 0u;
  *(v4 + 16) = 0u;
  *(v4 + 32) = 0u;
  *(v4 + 48) = 0;
  v5 = (v1 + OBJC_IVAR____TtC10FitnessApp40DayViewMoveAndExerciseChartTableViewCell_onEditGoal);
  *v5 = 0;
  v5[1] = 0;
  *(v1 + OBJC_IVAR____TtC10FitnessApp40DayViewMoveAndExerciseChartTableViewCell_isToday) = 0;
  v46 = OBJC_IVAR____TtC10FitnessApp40DayViewMoveAndExerciseChartTableViewCell_auxiliaryValue;
  *(v1 + OBJC_IVAR____TtC10FitnessApp40DayViewMoveAndExerciseChartTableViewCell_auxiliaryValue) = 0;
  v6 = OBJC_IVAR____TtC10FitnessApp40DayViewMoveAndExerciseChartTableViewCell_formattingManager;
  *(v1 + OBJC_IVAR____TtC10FitnessApp40DayViewMoveAndExerciseChartTableViewCell_formattingManager) = 0;
  v7 = [objc_allocWithZone(type metadata accessor for DayViewTitleAndValueLabelPair()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  [v7 setTranslatesAutoresizingMaskIntoConstraints:0];
  v8 = [objc_opt_self() labelColor];
  v9 = *&v7[OBJC_IVAR____TtC10FitnessApp29DayViewTitleAndValueLabelPair_titleLabelTextColor];
  *&v7[OBJC_IVAR____TtC10FitnessApp29DayViewTitleAndValueLabelPair_titleLabelTextColor] = v8;
  v10 = v8;

  v11 = OBJC_IVAR____TtC10FitnessApp29DayViewTitleAndValueLabelPair_titleLabel;
  [*&v7[OBJC_IVAR____TtC10FitnessApp29DayViewTitleAndValueLabelPair_titleLabel] setTextColor:v10];

  v47 = objc_opt_self();
  result = [v47 energyColors];
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  v13 = result;
  v14 = v11;
  v43 = v5;
  v44 = v6;
  result = [result nonGradientTextColor];
  if (!result)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v15 = result;

  v16 = OBJC_IVAR____TtC10FitnessApp40DayViewMoveAndExerciseChartTableViewCell_labelPair;
  v17 = *&v7[OBJC_IVAR____TtC10FitnessApp29DayViewTitleAndValueLabelPair_valueLabelTextColor];
  *&v7[OBJC_IVAR____TtC10FitnessApp29DayViewTitleAndValueLabelPair_valueLabelTextColor] = v15;
  v18 = v15;

  [*&v7[OBJC_IVAR____TtC10FitnessApp29DayViewTitleAndValueLabelPair_valueLabel] setTextColor:v18];
  v19 = [objc_opt_self() mainBundle];
  v20 = String._bridgeToObjectiveC()();
  v21 = [v19 localizedStringForKey:v20 value:0 table:0];

  v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v24 = v23;

  v25 = &v7[OBJC_IVAR____TtC10FitnessApp29DayViewTitleAndValueLabelPair_titleText];
  *v25 = v22;
  v25[1] = v24;

  v26 = *&v7[v14];

  v27 = String._bridgeToObjectiveC()();
  [v26 setText:v27];

  *(v2 + v16) = v7;
  v28 = OBJC_IVAR____TtC10FitnessApp40DayViewMoveAndExerciseChartTableViewCell_chartView;
  v29 = [objc_allocWithZone(type metadata accessor for ActivityMoveAndExerciseChartView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  [v29 setTranslatesAutoresizingMaskIntoConstraints:0];
  *(v29 + OBJC_IVAR____TtC10FitnessApp32ActivityMoveAndExerciseChartView_chartViewType) = 0;
  sub_100384AC0();
  *(v2 + v28) = v29;
  v30 = [objc_allocWithZone(UILabel) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  [v30 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v30 setAdjustsFontForContentSizeCategory:1];
  v31 = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleCaption1];
  v32 = UILabel.withFont(_:)();

  result = [v47 energyColors];
  if (!result)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v33 = result;
  result = [result nonGradientTextColor];
  if (result)
  {
    v34 = result;
    v35 = OBJC_IVAR____TtC10FitnessApp40DayViewMoveAndExerciseChartTableViewCell_auxiliaryLabel;

    v36 = UILabel.withTextColor(_:)();
    v37 = v36;
    LODWORD(v38) = 1148846080;
    [v37 setContentCompressionResistancePriority:1 forAxis:v38];
    LODWORD(v39) = 1148846080;
    [v37 setContentHuggingPriority:1 forAxis:v39];

    *(v2 + v35) = v37;
    v40 = OBJC_IVAR____TtC10FitnessApp40DayViewMoveAndExerciseChartTableViewCell_editGoalButton;
    v41 = [objc_opt_self() buttonWithType:0];
    [v41 setTranslatesAutoresizingMaskIntoConstraints:0];

    *(v2 + v40) = v41;
    v42 = (v2 + OBJC_IVAR____TtC10FitnessApp40DayViewMoveAndExerciseChartTableViewCell_fontListener);
    *v42 = 0u;
    v42[1] = 0u;
    *(v2 + OBJC_IVAR____TtC10FitnessApp40DayViewMoveAndExerciseChartTableViewCell_chartData) = 0;
    *(v2 + OBJC_IVAR____TtC10FitnessApp40DayViewMoveAndExerciseChartTableViewCell_workouts) = 0;
    *(v2 + OBJC_IVAR____TtC10FitnessApp40DayViewMoveAndExerciseChartTableViewCell_nBins) = 96;
    sub_100383E48(*v3);
    sub_100383E48(*v4);
    sub_1000245E0(*v43, v43[1]);

    sub_10000EA04(v42, &qword_1008E51F0, qword_1006D50E0);

    type metadata accessor for DayViewMoveAndExerciseChartTableViewCell();
    swift_deallocPartialClassInstance();
    return 0;
  }

LABEL_9:
  __break(1u);
  return result;
}

void sub_100381AE8(void *a1)
{
  v2 = v1;
  v3 = *(v1 + OBJC_IVAR____TtC10FitnessApp40DayViewMoveAndExerciseChartTableViewCell_formattingManager);
  if (v3)
  {
    v5 = v3;
    v6 = [v5 unitManager];
    if (!v6)
    {
      __break(1u);
      goto LABEL_11;
    }

    v7 = v6;
    v27 = [v6 userActiveEnergyBurnedUnit];

    [a1 doubleValueForUnit:v27];
    v9 = v8;
    v10 = [v5 localizedShortActiveEnergyUnitString];
    if (v10)
    {
      v11 = v10;
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      v12 = [objc_opt_self() mainBundle];
      v13 = String._bridgeToObjectiveC()();
      v14 = [v12 localizedStringForKey:v13 value:0 table:0];

      static String._unconditionallyBridgeFromObjectiveC(_:)();
      sub_100140278(&unk_1008E4E50, &qword_1006D4A60);
      v15 = swift_allocObject();
      *(v15 + 16) = xmmword_1006D1F70;
      v16 = objc_opt_self();
      v17 = [objc_allocWithZone(NSNumber) initWithDouble:v9];
      v18 = [v16 stringWithNumber:v17 decimalPrecision:1 roundingMode:5];

      if (v18)
      {
        v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v21 = v20;

        *(v15 + 56) = &type metadata for String;
        v22 = sub_10000A788();
        *(v15 + 64) = v22;
        *(v15 + 32) = v19;
        *(v15 + 40) = v21;
        sub_10000FCBC();
        v23 = StringProtocol.localizedUppercase.getter();
        *(v15 + 96) = &type metadata for String;
        *(v15 + 104) = v22;
        *(v15 + 72) = v23;
        *(v15 + 80) = v24;

        String.init(format:_:)();

        v25 = *(v2 + OBJC_IVAR____TtC10FitnessApp40DayViewMoveAndExerciseChartTableViewCell_auxiliaryLabel);
        v26 = String._bridgeToObjectiveC()();

        [v25 setText:v26];

        return;
      }

LABEL_11:
      __break(1u);
      return;
    }
  }
}

void sub_100381DF0(void *a1)
{
  v2 = v1;
  v4 = sub_100140278(&unk_1008E3FB0, &unk_1006DCB80);
  __chkstk_darwin(v4 - 8);
  v6 = &v34 - v5;
  v7 = sub_100140278(&unk_1008E51A0, &unk_1006E09C0);
  __chkstk_darwin(v7 - 8);
  v9 = &v34 - v8;
  v10 = type metadata accessor for DateComponents();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = [objc_opt_self() minuteUnit];
  [a1 doubleValueForUnit:v14];
  v16 = round(v15);
  if ((*&v16 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v16 <= -9.22337204e18)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (v16 >= 9.22337204e18)
  {
LABEL_10:
    __break(1u);
    return;
  }

  v17 = type metadata accessor for Calendar();
  (*(*(v17 - 8) + 56))(v9, 1, 1, v17);
  v18 = type metadata accessor for TimeZone();
  (*(*(v18 - 8) + 56))(v6, 1, 1, v18);
  DateComponents.init(calendar:timeZone:era:year:month:day:hour:minute:second:nanosecond:weekday:weekdayOrdinal:quarter:weekOfMonth:weekOfYear:yearForWeekOfYear:)();
  DateComponents.hour.setter();
  DateComponents.minute.setter();
  v19 = [objc_opt_self() mainBundle];
  v20 = String._bridgeToObjectiveC()();
  v21 = [v19 localizedStringForKey:v20 value:0 table:0];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v22 = objc_opt_self();
  isa = DateComponents._bridgeToObjectiveC()().super.isa;
  v24 = [v22 localizedStringFromDateComponents:isa unitsStyle:1];

  if (v24)
  {
    v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v27 = v26;

    v36 = v25;
    v37 = v27;
    sub_10000FCBC();
    v28 = StringProtocol.localizedUppercase.getter();
    v35 = v10;
    v30 = v29;

    v31 = *(v2 + OBJC_IVAR____TtC10FitnessApp40DayViewMoveAndExerciseChartTableViewCell_auxiliaryLabel);
    sub_100140278(&unk_1008E4E50, &qword_1006D4A60);
    v32 = swift_allocObject();
    *(v32 + 16) = xmmword_1006D46C0;
    *(v32 + 56) = &type metadata for String;
    *(v32 + 64) = sub_10000A788();
    *(v32 + 32) = v28;
    *(v32 + 40) = v30;
    String.init(format:_:)();

    v33 = String._bridgeToObjectiveC()();

    [v31 setText:v33];

    (*(v11 + 8))(v13, v35);
  }

  else
  {
    (*(v11 + 8))(v13, v10);
  }
}

uint64_t sub_10038230C()
{
  v1 = v0;
  v2 = type metadata accessor for DateComponents();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  *&v108 = &v92 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v110 = type metadata accessor for Calendar.Component();
  v5 = *(v110 - 8);
  __chkstk_darwin(v110);
  v7 = (&v92 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = type metadata accessor for Date();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v114 = &v92 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v107 = &v92 - v12;
  __chkstk_darwin(v13);
  v106 = (&v92 - v14);
  __chkstk_darwin(v15);
  v109 = (&v92 - v16);
  __chkstk_darwin(v17);
  v19 = &v92 - v18;
  __chkstk_darwin(v20);
  v22 = &v92 - v21;
  v23 = sub_100140278(&unk_1008F73A0, &unk_1006DB450);
  __chkstk_darwin(v23 - 8);
  __chkstk_darwin(v24);
  v26 = &v92 - v25;
  __chkstk_darwin(v27);
  v111 = &v92 - v29;
  v115 = *(v1 + OBJC_IVAR____TtC10FitnessApp40DayViewMoveAndExerciseChartTableViewCell_chartData);
  if (!v115 || (v30 = *(v1 + OBJC_IVAR____TtC10FitnessApp40DayViewMoveAndExerciseChartTableViewCell_formattingManager)) == 0)
  {
    v36 = v1 + OBJC_IVAR____TtC10FitnessApp40DayViewMoveAndExerciseChartTableViewCell_histogram;
    swift_beginAccess();
    v37 = *v36;
    *v36 = 0u;
    *(v36 + 16) = 0u;
    *(v36 + 32) = 0u;
    *(v36 + 48) = 0;
    return sub_100383E48(v37);
  }

  v102 = v28;
  v99 = v2;
  v31 = *(v1 + OBJC_IVAR____TtC10FitnessApp40DayViewMoveAndExerciseChartTableViewCell_chartViewType);
  v105 = v22;
  v104 = v30;
  v98 = v3;
  if (v31)
  {
    v32 = v30;
    v33 = objc_opt_self();
    v34 = v32;
    v35 = v115;

    v113 = [v33 minuteUnit];
  }

  else
  {
    v39 = v30;

    v40 = [v39 unitManager];
    if (!v40)
    {
      goto LABEL_74;
    }

    v41 = v40;
    v113 = [v40 userActiveEnergyBurnedUnit];

    v35 = v115;
  }

  v22 = (v35 & 0xFFFFFFFFFFFFFF8);
  v112 = v8;
  if (v35 >> 62)
  {
    v116 = _CocoaArrayWrapper.endIndex.getter();
    if (v116)
    {
      v40 = _CocoaArrayWrapper.endIndex.getter();
      if ((v40 & 0x8000000000000000) != 0)
      {
        goto LABEL_75;
      }

      if (v40)
      {
        goto LABEL_76;
      }

      __break(1u);
    }

LABEL_19:
    v47 = *(v9 + 7);
    v101 = 1;
    v45 = v111;
    v47(v111, 1, 1, v8);
    v116 = 0;
    goto LABEL_20;
  }

  v40 = *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v116 = v40;
  if (!v40)
  {
    goto LABEL_19;
  }

  while (1)
  {
    v42 = sub_1001A99B8(v40);
    if ((v115 & 0xC000000000000001) != 0)
    {
      goto LABEL_67;
    }

    if ((v42 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v42 < *(v22 + 2))
    {
      v43 = *(v115 + 8 * v42 + 32);
      goto LABEL_14;
    }

    __break(1u);
LABEL_70:
    swift_once();
LABEL_23:
    v51 = type metadata accessor for Calendar();
    v52 = sub_10001AC90(v51, qword_100925018);
    Calendar.startOfDay(for:)();
    v53 = v5;
    v19 = v5 + 104;
    v54 = *(v5 + 13);
    v5 = v110;
    v93 = v54;
    v54(v7, enum case for Calendar.Component.day(_:), v110);
    v22 = v102;
    v96 = v52;
    Calendar.date(byAdding:value:to:wrappingComponents:)();
    v9 = v53 + 8;
    v26 = *(v53 + 1);
    (v26)(v7, v5);
    v55 = v112;
    if (v97(v22, 1, v112) == 1)
    {
      v40 = sub_10000EA04(v22, &unk_1008F73A0, &unk_1006DB450);
      v19 = v55;
    }

    else
    {
      v7 = v109;
      v94(v109, v22, v55);
      sub_100140278(&unk_1008E51B0, &unk_1006D8360);
      v56 = (*(v53 + 80) + 32) & ~*(v53 + 80);
      v57 = swift_allocObject();
      *(v57 + 16) = xmmword_1006D46C0;
      v93(v57 + v56, enum case for Calendar.Component.hour(_:), v5);
      sub_10001C970(v57);
      swift_setDeallocating();
      v58 = v5;
      v5 = v7;
      (v26)(v57 + v56, v58);
      swift_deallocClassInstance();
      v22 = v108;
      v59 = v103;
      Calendar.dateComponents(_:from:to:)();

      v26 = DateComponents.hour.getter();
      LOBYTE(v57) = v60;
      v40 = (*(v98 + 8))(v22, v99);
      v9 = v100;
      if ((v57 & 1) == 0)
      {
        if ((v26 - 0x2000000000000000) >> 62 != 3)
        {
          goto LABEL_73;
        }

        *(v1 + OBJC_IVAR____TtC10FitnessApp40DayViewMoveAndExerciseChartTableViewCell_nBins) = 4 * v26;
      }

      v61 = *(v1 + OBJC_IVAR____TtC10FitnessApp40DayViewMoveAndExerciseChartTableViewCell_nBins);
      v62 = *(v9 + 2);
      v7 = v106;
      v19 = v112;
      v62(v106, v59, v112);
      v63 = v107;
      v62(v107, v5, v19);
      Date.timeIntervalSinceReferenceDate.getter();
      v65 = v64;
      Date.timeIntervalSinceReferenceDate.getter();
      sub_10001C204(v61, v118, v65, v66);
      v22 = v118[0];
      v67 = v118[1];
      v68 = v121;
      v9 = *(v9 + 1);
      v110 = v120;
      v108 = v119;
      (v9)(v63, v19);
      (v9)(v7, v19);
      (v9)(v5, v19);
      v26 = v1 + OBJC_IVAR____TtC10FitnessApp40DayViewMoveAndExerciseChartTableViewCell_histogram;
      swift_beginAccess();
      v69 = *v26;
      *v26 = v22;
      *(v26 + 8) = v67;
      v70 = v110;
      *(v26 + 16) = v108;
      *(v26 + 32) = v70;
      *(v26 + 48) = v68;
      v40 = sub_100383E48(v69);
    }

    if (v101)
    {
      break;
    }

    if (v116 >= 1)
    {
      v9 = 0;
      v22 = (v115 & 0xC000000000000001);
      v109 = (v115 + 32);
      *&v110 = v100 + 8;
      while (1)
      {
        v72 = v22 ? specialized _ArrayBuffer._getElementSlowPath(_:)() : *(v109 + v9);
        v73 = v72;
        v74 = [v72 quantityValue];
        if (v74)
        {
          break;
        }

        v7 = v73;
LABEL_35:
        ++v9;

        if (v9 == v116)
        {
          goto LABEL_30;
        }
      }

      v7 = v74;
      [v74 doubleValueForUnit:v113];
      v76 = v75;
      v5 = sub_10037EC14(v117);
      if (*v77)
      {
        v78 = v77;
        v8 = v1;
        v79 = [v73 endDate];
        v19 = v114;
        static Date._unconditionallyBridgeFromObjectiveC(_:)();

        v1 = *(v78 + 1);
        v80 = v78[2];
        v26 = v19;
        Date.timeIntervalSinceReferenceDate.getter();
        v82 = *(v1 + 16);
        if (v82)
        {
          v83 = *(v1 + 32);
          if (v81 < v83)
          {
            goto LABEL_63;
          }

          v84 = v80 * v82;
          if (v84 + v83 <= v81)
          {
            goto LABEL_63;
          }

LABEL_47:
          if (v80 == 0.0)
          {
LABEL_66:
            __break(1u);
LABEL_67:
            v43 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_14:
            v44 = v43;
            v45 = v111;
            v46 = [v43 startDate];

            static Date._unconditionallyBridgeFromObjectiveC(_:)();
            (*(v9 + 7))(v45, 0, 1, v8);
            v101 = 0;
LABEL_20:
            sub_10001B104(v45, v26, &unk_1008F73A0, &unk_1006DB450);
            v48 = *(v9 + 6);
            if (v48(v26, 1, v8) == 1)
            {
              sub_10000EA04(v45, &unk_1008F73A0, &unk_1006DB450);

              v49 = v26;
              return sub_10000EA04(v49, &unk_1008F73A0, &unk_1006DB450);
            }

            v97 = v48;
            v103 = v19;
            v100 = v9;
            v50 = *(v9 + 4);
            v95 = v9 + 32;
            v94 = v50;
            v50(v105, v26, v8);
            if (qword_1008DA550 != -1)
            {
              goto LABEL_70;
            }

            goto LABEL_23;
          }

          v19 = 0;
          v85 = v84 + v83;
          v1 = -1;
          v86 = v83;
          while (1)
          {
            v87 = v86 <= v85;
            if (v80 > 0.0)
            {
              v87 = v85 <= v86;
            }

            if (v87)
            {
              break;
            }

            if (__OFADD__(v1 + 1, 1))
            {
              __break(1u);
              goto LABEL_66;
            }

            v88 = v81 > v86;
            v86 = v83 + (v1 + 2) * v80;
            ++v1;
            v19 += 24;
            if (!v88)
            {
              v26 = *v78;
              if (v1 >= *(*v78 + 16))
              {
                break;
              }

              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              *v78 = v26;
              if ((isUniquelyReferenced_nonNull_native & 1) == 0)
              {
                *v78 = sub_10057F5E0(v26);
              }

              v40 = (*v110)(v114, v112);
              if (v1 >= *(*v78 + 16))
              {
                __break(1u);
                goto LABEL_72;
              }

              v90 = &v19[*v78];
              *(v90 + 1) = v76;
              *(v90 + 2) = 0x3FF0000000000000;
              v90[24] = 0;
              v1 = v8;
              if (v78[3] < v76)
              {
                v78[3] = v76;
                v78[4] = 1.0;
              }

              v91 = v78[5];
              v19 = v112;
              if (v91 < 0.0 || v76 < v91)
              {
                v78[5] = v76;
                v78[6] = 1.0;
              }

              goto LABEL_64;
            }
          }
        }

        else if (v81 >= 0.0)
        {
          v83 = 0.0;
          v84 = v80 * 0.0;
          if (v80 * 0.0 > v81)
          {
            goto LABEL_47;
          }
        }

LABEL_63:
        v19 = v112;
        (*v110)(v114, v112);
        v1 = v8;
      }

LABEL_64:
      (v5)(v117, 0);

      goto LABEL_35;
    }

LABEL_72:
    __break(1u);
LABEL_73:
    __break(1u);
LABEL_74:
    __break(1u);
LABEL_75:
    __break(1u);
LABEL_76:
    v8 = v112;
  }

LABEL_30:

  v71 = *(v100 + 1);
  v71(v103, v19);
  v71(v105, v19);
  v49 = v111;
  return sub_10000EA04(v49, &unk_1008F73A0, &unk_1006DB450);
}

void sub_100383088()
{
  v1 = COERCE_DOUBLE(type metadata accessor for DateInterval());
  v2 = *(*&v1 - 8);
  __chkstk_darwin(*&v1);
  v4 = &v68 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v86 = &v68 - v6;
  v85 = sub_100140278(&qword_1008EAA30, &unk_1006EC108);
  __chkstk_darwin(v85);
  v84 = &v68 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v83 = &v68 - v9;
  __chkstk_darwin(v10);
  v90 = &v68 - v11;
  v91 = type metadata accessor for Date();
  v12 = *(v91 - 8);
  __chkstk_darwin(v91);
  __chkstk_darwin(v13);
  __chkstk_darwin(v14);
  v82 = &v68 - v15;
  __chkstk_darwin(v16);
  v18 = &v68 - v17;
  __chkstk_darwin(v19);
  v21 = &v68 - v20;
  v92 = *(v0 + OBJC_IVAR____TtC10FitnessApp40DayViewMoveAndExerciseChartTableViewCell_workouts);
  if (v92)
  {
    v22 = (v0 + OBJC_IVAR____TtC10FitnessApp40DayViewMoveAndExerciseChartTableViewCell_histogram);
    swift_beginAccess();
    v23 = *v22;
    if (*v22)
    {
      v98 = v2;
      v24 = v22[1];
      v76 = v22[2];
      v75 = v22[3];
      v74 = v22[4];
      v73 = v22[5];
      v72 = v22[6];
      v25 = *(v23 + 16);
      v26 = v23;
      v71 = v0;
      v77 = v24;

      sub_100383E08(v26);
      Date.init(timeIntervalSinceReferenceDate:)();
      Date.init(timeIntervalSinceReferenceDate:)();
      Date.timeIntervalSinceReferenceDate.getter();
      v28 = v27;
      Date.timeIntervalSinceReferenceDate.getter();
      sub_10001C204(v25, &v101, v28, v29);
      v94 = v101;
      v70 = v102;
      v69 = v103;
      v31 = v104;
      v30 = v105;
      v33 = v106;
      v32 = v107;
      v34 = *(v12 + 8);
      v35 = v91;
      v34(v18, v91);
      v89 = v12 + 8;
      v88 = v34;
      v34(v21, v35);
      v36 = *(v26 + 16);
      v97 = v26;
      v79 = v32;
      if (v36)
      {
        v37 = v92;
        if (v92 >> 62)
        {
          goto LABEL_42;
        }

        v100 = *((v92 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_6:
        v38 = v86;
        v39 = v94;
        v40 = v106;
        v99 = v37 & 0xC000000000000001;
        v37 = 0;
        v41 = (v98 + 8);
        v78 = v97 + 32;
        v42 = v104;
        v95 = v101;
        v81 = v102;
        v80 = v36;
        v93 = v1;
        while (1)
        {
          if (v37 == v36)
          {
            goto LABEL_40;
          }

          v98 = v37;
          v45 = v82;
          Date.init(timeIntervalSinceReferenceDate:)();
          Date.timeIntervalSinceReferenceDate.getter();
          v88(v45, v91);
          v94 = v39;
          v46 = v85;
          v47 = v90;
          Date.init(timeIntervalSinceReferenceDate:)();
          Date.init(timeIntervalSinceReferenceDate:)();
          v36 = v83;
          v37 = &unk_1006EC108;
          sub_10001B104(v47, v83, &qword_1008EAA30, &unk_1006EC108);
          v96 = *(v46 + 48);
          v48 = v47;
          v49 = v84;
          sub_10001B104(v48, v84, &qword_1008EAA30, &unk_1006EC108);
          DateInterval.init(start:end:)();
          v50 = v91;
          v51 = v88;
          v88(v49, v91);
          v51(v36 + v96, v50);
          if (v100)
          {
            break;
          }

          v37 = *v41;
          v1 = v93;
LABEL_8:
          v43 = (v98 + 1);
          (v37)(v38, *&v1);
          v37 = v43;
          sub_10000EA04(v90, &qword_1008EAA30, &unk_1006EC108);
          v36 = v80;
          v44 = v43 == v80;
          v39 = v94;
          if (v44)
          {
            goto LABEL_37;
          }
        }

        v52 = v92;
        v1 = v93;
        if (v100 < 1)
        {
          goto LABEL_41;
        }

        v36 = 0;
        v87 = 24 * v98;
        v96 = v78 + 24 * v98;
        while (1)
        {
          if (v99)
          {
            v53 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            v53 = *(v52 + 8 * v36 + 32);
          }

          v54 = v53;
          v55 = [v54 startDate];
          static Date._unconditionallyBridgeFromObjectiveC(_:)();

          v56 = [v54 endDate];
          static Date._unconditionallyBridgeFromObjectiveC(_:)();

          DateInterval.init(start:end:)();
          if (DateInterval.intersects(_:)())
          {
            if (v98 >= *(v97 + 16) || (*(v96 + 16) & 1) != 0 || (v57 = v95, v98 >= *(v95 + 16)))
            {

              v37 = *v41;
              (*v41)(v4, COERCE_DOUBLE(*&v1));
            }

            else
            {
              v1 = *v96;
              v58 = *(v96 + 8);
              if (swift_isUniquelyReferenced_nonNull_native())
              {
                v59 = v57;
              }

              else
              {
                v59 = sub_10057F5E0(v57);
              }

              v37 = *v41;
              (*v41)(v4, *&v93);
              if (v98 >= *(v59 + 2))
              {
                __break(1u);
LABEL_40:
                __break(1u);
LABEL_41:
                __break(1u);
LABEL_42:
                v100 = _CocoaArrayWrapper.endIndex.getter();
                goto LABEL_6;
              }

              v60 = v1;
              v61 = v58;
              v94 = v59;
              v62 = &v59[v87];
              *(v62 + 4) = v1;
              *(v62 + 5) = v58;
              v62[48] = 0;
              if (v42 < v1)
              {
                v30 = v58;
                v31 = v1;
                v42 = v1;
              }

              if (v40 >= 0.0)
              {
                v1 = v93;
                v38 = v86;
                v52 = v92;
                v63 = v100;
                if (v40 > v60)
                {
                  v33 = v60;
                  v79 = v61;
                  v40 = v60;
                }

                v95 = v94;
                goto LABEL_32;
              }

              v33 = v1;
              v79 = v58;
              v40 = v1;
              v95 = v94;
              v1 = v93;
              v38 = v86;
              v52 = v92;
            }
          }

          else
          {
            v37 = *v41;
            (*v41)(v4, COERCE_DOUBLE(*&v1));
          }

          v63 = v100;
LABEL_32:
          if (v63 == ++v36)
          {
            goto LABEL_8;
          }
        }
      }

      v39 = v94;
LABEL_37:

      sub_100383E48(v97);
      v64 = v71 + OBJC_IVAR____TtC10FitnessApp40DayViewMoveAndExerciseChartTableViewCell_workoutHistogram;
      v65 = *(v71 + OBJC_IVAR____TtC10FitnessApp40DayViewMoveAndExerciseChartTableViewCell_workoutHistogram);
      v66 = v70;
      *v64 = v39;
      *(v64 + 8) = v66;
      *(v64 + 16) = v69;
      *(v64 + 24) = v31;
      *(v64 + 32) = v30;
      v67 = v79;
      *(v64 + 40) = v33;
      *(v64 + 48) = v67;
      sub_100383E48(v65);
    }
  }
}

void sub_100383B04(void *a1, void *a2)
{
  v3 = *(v2 + OBJC_IVAR____TtC10FitnessApp40DayViewMoveAndExerciseChartTableViewCell_formattingManager);
  if (v3)
  {
    v6 = *(v2 + OBJC_IVAR____TtC10FitnessApp40DayViewMoveAndExerciseChartTableViewCell_labelPair);
    v7 = OBJC_IVAR____TtC10FitnessApp29DayViewTitleAndValueLabelPair_valueLabel;
    v8 = *(v6 + OBJC_IVAR____TtC10FitnessApp29DayViewTitleAndValueLabelPair_valueLabel);
    v19 = v3;
    v9 = [v8 font];
    if (v9)
    {
      v10 = v9;
      v11 = sub_10021E444(a1, a2, v19, v9);

      if (v11)
      {
        v12 = OBJC_IVAR____TtC10FitnessApp29DayViewTitleAndValueLabelPair_valueAttributedText;
        v13 = *(v6 + OBJC_IVAR____TtC10FitnessApp29DayViewTitleAndValueLabelPair_valueAttributedText);
        *(v6 + OBJC_IVAR____TtC10FitnessApp29DayViewTitleAndValueLabelPair_valueAttributedText) = v11;
        v14 = v11;

        [*(v6 + v7) setText:0];
        [*(v6 + v7) setAttributedText:*(v6 + v12)];

        v15 = *(v2 + OBJC_IVAR____TtC10FitnessApp40DayViewMoveAndExerciseChartTableViewCell_editGoalButton);
        v16 = [v15 isHidden];
        v17 = 1;
        if ((v16 & 1) == 0 && a2)
        {
          v17 = *(v2 + OBJC_IVAR____TtC10FitnessApp40DayViewMoveAndExerciseChartTableViewCell_isToday) ^ 1;
        }

        [v15 setHidden:v17 & 1];

        v18 = v14;
      }

      else
      {
        v18 = v19;
      }
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_100383C9C(void *a1, void *a2)
{
  v5 = *(v2 + OBJC_IVAR____TtC10FitnessApp40DayViewMoveAndExerciseChartTableViewCell_labelPair);
  v6 = OBJC_IVAR____TtC10FitnessApp29DayViewTitleAndValueLabelPair_valueLabel;
  v7 = [*(v5 + OBJC_IVAR____TtC10FitnessApp29DayViewTitleAndValueLabelPair_valueLabel) font];
  if (v7)
  {
    v8 = v7;
    v9 = sub_10021E1A0(a1, a2, v7);

    if (v9)
    {
      v10 = OBJC_IVAR____TtC10FitnessApp29DayViewTitleAndValueLabelPair_valueAttributedText;
      v11 = *(v5 + OBJC_IVAR____TtC10FitnessApp29DayViewTitleAndValueLabelPair_valueAttributedText);
      *(v5 + OBJC_IVAR____TtC10FitnessApp29DayViewTitleAndValueLabelPair_valueAttributedText) = v9;
      v15 = v9;

      [*(v5 + v6) setText:0];
      [*(v5 + v6) setAttributedText:*(v5 + v10)];

      v12 = *(v2 + OBJC_IVAR____TtC10FitnessApp40DayViewMoveAndExerciseChartTableViewCell_editGoalButton);
      v13 = [v12 isHidden];
      v14 = 1;
      if ((v13 & 1) == 0 && a2)
      {
        v14 = *(v2 + OBJC_IVAR____TtC10FitnessApp40DayViewMoveAndExerciseChartTableViewCell_isToday) ^ 1;
      }

      [v12 setHidden:v14 & 1];
    }
  }

  else
  {
    __break(1u);
  }
}

double sub_100383E08(uint64_t a1)
{
  if (a1)
  {
  }

  return result;
}

uint64_t sub_100383E48(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_100383EC0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10002BACC;

  return sub_10037FC54(a1, v4, v5, v6, v7, v8);
}

void sub_100383FB0()
{
  v0 = [objc_allocWithZone(NSEnergyFormatter) init];
  [v0 setUnitStyle:1];
  v1 = [v0 numberFormatter];
  if (v1)
  {
    v2 = v1;
    [v1 setMaximumFractionDigits:0];

    qword_1008EAA40 = v0;
  }

  else
  {
    __break(1u);
  }
}

id sub_100384038()
{
  v0 = [objc_allocWithZone(NSDateComponentsFormatter) init];
  [v0 setFormattingContext:2];
  [v0 setUnitsStyle:2];
  result = [v0 setAllowedUnits:64];
  qword_1008EAA48 = v0;
  return result;
}

__n128 sub_10038418C@<Q0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = v2 + *a1;
  v5 = *v4;
  v6 = *(v4 + 8);
  v8 = *(v4 + 16);
  v7 = *(v4 + 32);
  if (*v4)
  {
    v9 = *(v4 + 48);
    v10 = *v4;
    v11 = v6;
    v18 = v7;
    v19 = v8;
  }

  else
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v13 = *(Strong + OBJC_IVAR____TtC10FitnessApp40DayViewMoveAndExerciseChartTableViewCell_nBins);
      swift_unknownObjectRelease();
    }

    else
    {
      v13 = 96;
    }

    sub_10001C204(v13, &v21, 0.0, 24.0);
    v14 = v24;
    v15 = *v4;
    v16 = v22;
    *v4 = v21;
    *(v4 + 16) = v16;
    *(v4 + 32) = v23;
    *(v4 + 48) = v14;
    sub_100386EA8(&v21, v20);
    sub_100383E48(v15);
    v9 = v24;
    v18 = v23;
    v19 = v22;
    v11 = *(&v21 + 1);
    v10 = v21;
  }

  sub_100383E08(v5);
  *a2 = v10;
  *(a2 + 8) = v11;
  result = v19;
  *(a2 + 16) = v19;
  *(a2 + 32) = v18;
  *(a2 + 48) = v9;
  return result;
}

char *sub_100384310(uint64_t a1)
{
  v1 = *(a1 + OBJC_IVAR____TtC10FitnessApp32ActivityMoveAndExerciseChartView_chartViewType);
  result = objc_opt_self();
  if (v1 >= 2)
  {
LABEL_4:
    result = [result keyColors];
    if (!result)
    {
      goto LABEL_10;
    }

    goto LABEL_5;
  }

  result = [result energyColors];
  if (!result)
  {
    __break(1u);
    goto LABEL_4;
  }

LABEL_5:
  v3 = result;
  sub_100384174(v8);
  v4 = objc_allocWithZone(type metadata accessor for BarSeriesLayer());
  v5 = sub_10046461C(v8);
  v5[OBJC_IVAR____TtC10FitnessApp14BarSeriesLayer_drawsEmptyBins] = 1;
  sub_100140278(&unk_1008E4E20, &qword_1006D5040);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1006D68D0;
  result = [v3 gradientDarkColor];
  if (result)
  {
    *(v6 + 32) = result;
    result = [v3 gradientLightColor];
    if (result)
    {
      *(v6 + 40) = result;
      *&v5[OBJC_IVAR____TtC10FitnessApp14BarSeriesLayer_colors] = v6;

      sub_10051A974(v7);

      return v5;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
LABEL_10:
  __break(1u);
  return result;
}

id sub_1003844AC(uint64_t *a1, uint64_t (*a2)(uint64_t))
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = *(v2 + *a1);
  }

  else
  {
    v6 = a2(v2);
    v7 = *(v2 + v3);
    *(v2 + v3) = v6;
    v5 = v6;

    v4 = 0;
  }

  v8 = v4;
  return v5;
}

char *sub_100384510(uint64_t a1)
{
  if (*(a1 + OBJC_IVAR____TtC10FitnessApp32ActivityMoveAndExerciseChartView_chartViewType) < 2u)
  {
    v1 = [objc_opt_self() energyColors];
    if (v1)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v1 = sub_100386AAC();
LABEL_5:
  sub_100384180(v7);
  v2 = objc_allocWithZone(type metadata accessor for BarSeriesLayer());
  v3 = sub_10046461C(v7);
  v3[OBJC_IVAR____TtC10FitnessApp14BarSeriesLayer_drawsEmptyBins] = 0;
  sub_100140278(&unk_1008E4E20, &qword_1006D5040);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1006D68D0;
  result = [v1 gradientDarkColor];
  if (result)
  {
    *(v4 + 32) = result;
    result = [v1 gradientLightColor];
    if (result)
    {
      *(v4 + 40) = result;
      *&v3[OBJC_IVAR____TtC10FitnessApp14BarSeriesLayer_colors] = v4;

      sub_10051A974(v6);

      return v3;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

double sub_100384674()
{
  v0 = sub_100665DD4();
  if (qword_1008DAF18 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Date();
  sub_10001AC90(v1, qword_1009260D8);
  if (qword_1008DAF70 != -1)
  {
    swift_once();
  }

  v3 = qword_1008F7F00;
  sub_100666080(v2);
  if (v4)
  {
    v5 = String._bridgeToObjectiveC()();
  }

  else
  {
    v5 = 0;
  }

  [v3 setDateFormat:v5];

  isa = Date._bridgeToObjectiveC()().super.isa;
  v7 = [v3 stringFromDate:isa];

  if (!v7)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = String._bridgeToObjectiveC()();
  }

  [v0 setText:v7];

  v8 = sub_100665DD4();
  if (qword_1008DAF20 != -1)
  {
    swift_once();
  }

  v28 = v0;
  sub_10001AC90(v1, qword_1009260F0);
  sub_100666080(v9);
  if (v10)
  {
    v11 = String._bridgeToObjectiveC()();
  }

  else
  {
    v11 = 0;
  }

  [v3 setDateFormat:v11];

  v12 = Date._bridgeToObjectiveC()().super.isa;
  v13 = [v3 stringFromDate:v12];

  if (!v13)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = String._bridgeToObjectiveC()();
  }

  [v8 setText:v13];

  v14 = sub_100665DD4();
  if (qword_1008DAF28 != -1)
  {
    swift_once();
  }

  sub_10001AC90(v1, qword_100926108);
  sub_100666080(v15);
  if (v16)
  {
    v17 = String._bridgeToObjectiveC()();
  }

  else
  {
    v17 = 0;
  }

  [v3 setDateFormat:v17];

  v18 = Date._bridgeToObjectiveC()().super.isa;
  v19 = [v3 stringFromDate:v18];

  if (!v19)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v19 = String._bridgeToObjectiveC()();
  }

  [v14 setText:v19];

  v20 = sub_100665DD4();
  if (qword_1008DAF30 != -1)
  {
    swift_once();
  }

  sub_10001AC90(v1, qword_100926120);
  sub_100666080(v21);
  if (v22)
  {
    v23 = String._bridgeToObjectiveC()();
  }

  else
  {
    v23 = 0;
  }

  [v3 setDateFormat:v23];

  v24 = Date._bridgeToObjectiveC()().super.isa;
  v25 = [v3 stringFromDate:v24];

  if (!v25)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v25 = String._bridgeToObjectiveC()();
  }

  [v20 setText:v25];

  sub_100140278(&unk_1008E4E20, &qword_1006D5040);
  v26 = swift_allocObject();
  *&result = 4;
  *(v26 + 16) = xmmword_1006D5300;
  *(v26 + 32) = v28;
  *(v26 + 40) = v8;
  *(v26 + 48) = v14;
  *(v26 + 56) = v20;
  return result;
}

id sub_100384AC0()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC10FitnessApp32ActivityMoveAndExerciseChartView_chartViewType;
  v3 = *(v0 + OBJC_IVAR____TtC10FitnessApp32ActivityMoveAndExerciseChartView_chartViewType);
  result = objc_opt_self();
  if (v3 < 2)
  {
    result = [result energyColors];
    if (result)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  result = [result keyColors];
  if (!result)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_5:
  v5 = result;
  result = [objc_opt_self() sharedBehavior];
  if (!result)
  {
    __break(1u);
    goto LABEL_22;
  }

  v6 = result;
  v7 = [result isStandalonePhoneFitnessMode];

  v8 = sub_1003842F0();
  sub_100140278(&unk_1008E4E20, &qword_1006D5040);
  v9 = swift_allocObject();
  v15 = xmmword_1006D68D0;
  *(v9 + 16) = xmmword_1006D68D0;
  if (!v7)
  {
    goto LABEL_10;
  }

  result = [v5 nonGradientTextColor];
  if (!result)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  *(v9 + 32) = result;
  result = [v5 nonGradientTextColor];
  if (!result)
  {
    __break(1u);
LABEL_10:
    result = [v5 gradientDarkColor];
    if (!result)
    {
LABEL_26:
      __break(1u);
      goto LABEL_27;
    }

    *(v9 + 32) = result;
    result = [v5 gradientLightColor];
    if (!result)
    {
LABEL_27:
      __break(1u);
      return result;
    }
  }

  *(v9 + 40) = result;
  *&v8[OBJC_IVAR____TtC10FitnessApp14BarSeriesLayer_colors] = v9;

  sub_10051A974(v10);

  if (*(v1 + v2) < 2u)
  {
    v11 = [objc_opt_self() energyColors];
    if (v11)
    {
      goto LABEL_16;
    }

    __break(1u);
  }

  v11 = sub_100386AAC();
LABEL_16:
  v12 = sub_10038448C();
  sub_100140278(&unk_1008E4E20, &qword_1006D5040);
  v13 = swift_allocObject();
  *(v13 + 16) = v15;
  result = [v11 gradientDarkColor];
  if (!result)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  *(v13 + 32) = result;
  result = [v11 gradientLightColor];
  if (!result)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  *(v13 + 40) = result;
  *&v12[OBJC_IVAR____TtC10FitnessApp14BarSeriesLayer_colors] = v13;

  sub_10051A974(v14);
}

char *sub_100384DB4(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  *&v4[OBJC_IVAR____TtC10FitnessApp32ActivityMoveAndExerciseChartView_dataProvider + 8] = 0;
  swift_unknownObjectWeakInit();
  v4[OBJC_IVAR____TtC10FitnessApp32ActivityMoveAndExerciseChartView_empty] = 1;
  *&v4[OBJC_IVAR____TtC10FitnessApp32ActivityMoveAndExerciseChartView_chartHeight] = 0x4051400000000000;
  *&v4[OBJC_IVAR____TtC10FitnessApp32ActivityMoveAndExerciseChartView_unitManager] = 0;
  v10 = &v4[OBJC_IVAR____TtC10FitnessApp32ActivityMoveAndExerciseChartView____lazy_storage___mainHistogram];
  *v10 = 0u;
  *(v10 + 1) = 0u;
  *(v10 + 2) = 0u;
  *(v10 + 6) = 0;
  v11 = &v4[OBJC_IVAR____TtC10FitnessApp32ActivityMoveAndExerciseChartView____lazy_storage___workoutOverlayHistogram];
  *v11 = 0u;
  *(v11 + 1) = 0u;
  *(v11 + 2) = 0u;
  *(v11 + 6) = 0;
  v12 = OBJC_IVAR____TtC10FitnessApp32ActivityMoveAndExerciseChartView_axisLayer;
  v13 = objc_allocWithZone(type metadata accessor for ChartAxisGridLayer());
  *&v4[v12] = sub_100215CE8(0);
  *&v4[OBJC_IVAR____TtC10FitnessApp32ActivityMoveAndExerciseChartView____lazy_storage___mainBarLayer] = 0;
  *&v4[OBJC_IVAR____TtC10FitnessApp32ActivityMoveAndExerciseChartView____lazy_storage___workoutOverlayBarLayer] = 0;
  v14 = OBJC_IVAR____TtC10FitnessApp32ActivityMoveAndExerciseChartView_labels;
  sub_100384674();
  *&v5[v14] = v15;
  v16 = OBJC_IVAR____TtC10FitnessApp32ActivityMoveAndExerciseChartView_topAxisLabel;
  *&v5[v16] = sub_100665DD4();
  v5[OBJC_IVAR____TtC10FitnessApp32ActivityMoveAndExerciseChartView_chartViewType] = 0;
  v35.receiver = v5;
  v35.super_class = type metadata accessor for ActivityMoveAndExerciseChartView();
  v17 = objc_msgSendSuper2(&v35, "initWithFrame:", a1, a2, a3, a4);
  v18 = [v17 layer];
  [v18 addSublayer:*&v17[OBJC_IVAR____TtC10FitnessApp32ActivityMoveAndExerciseChartView_axisLayer]];

  v19 = [v17 layer];
  v20 = sub_1003842F0();
  [v19 addSublayer:v20];

  v21 = [v17 layer];
  v22 = sub_10038448C();
  [v21 addSublayer:v22];

  v23 = OBJC_IVAR____TtC10FitnessApp32ActivityMoveAndExerciseChartView_topAxisLabel;
  [v17 addSubview:*&v17[OBJC_IVAR____TtC10FitnessApp32ActivityMoveAndExerciseChartView_topAxisLabel]];
  v24 = *&v17[v23];
  v25 = objc_opt_self();
  v26 = v24;
  v27 = [v25 blackColor];
  [v26 setShadowColor:v27];

  [*&v17[v23] setShadowBlur:2.0];
  result = [*&v17[v23] setShadowOffset:{1.0, 1.0}];
  v29 = *&v17[OBJC_IVAR____TtC10FitnessApp32ActivityMoveAndExerciseChartView_labels];
  if (!(v29 >> 62))
  {
    v30 = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v30)
    {
      goto LABEL_3;
    }

LABEL_10:
    v34 = [objc_opt_self() defaultCenter];
    [v34 addObserver:v17 selector:"updateFonts" name:UIContentSizeCategoryDidChangeNotification object:0];

    return v17;
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  v30 = result;
  if (!result)
  {
    goto LABEL_10;
  }

LABEL_3:
  if (v30 >= 1)
  {

    for (i = 0; i != v30; ++i)
    {
      if ((v29 & 0xC000000000000001) != 0)
      {
        v32 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v32 = *(v29 + 8 * i + 32);
      }

      v33 = v32;
      [v17 addSubview:v32];
    }

    goto LABEL_10;
  }

  __break(1u);
  return result;
}

uint64_t sub_10038518C(void *a1)
{
  v2 = v1;
  v3 = v1 + OBJC_IVAR____TtC10FitnessApp32ActivityMoveAndExerciseChartView_dataProvider;
  *(v1 + OBJC_IVAR____TtC10FitnessApp32ActivityMoveAndExerciseChartView_dataProvider + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v1 + OBJC_IVAR____TtC10FitnessApp32ActivityMoveAndExerciseChartView_empty) = 1;
  *(v1 + OBJC_IVAR____TtC10FitnessApp32ActivityMoveAndExerciseChartView_chartHeight) = 0x4051400000000000;
  v4 = OBJC_IVAR____TtC10FitnessApp32ActivityMoveAndExerciseChartView_unitManager;
  *(v1 + OBJC_IVAR____TtC10FitnessApp32ActivityMoveAndExerciseChartView_unitManager) = 0;
  v5 = v1 + OBJC_IVAR____TtC10FitnessApp32ActivityMoveAndExerciseChartView____lazy_storage___mainHistogram;
  *v5 = 0u;
  *(v5 + 16) = 0u;
  *(v5 + 32) = 0u;
  *(v5 + 48) = 0;
  v6 = v1 + OBJC_IVAR____TtC10FitnessApp32ActivityMoveAndExerciseChartView____lazy_storage___workoutOverlayHistogram;
  *v6 = 0u;
  *(v6 + 16) = 0u;
  *(v6 + 32) = 0u;
  *(v6 + 48) = 0;
  v7 = OBJC_IVAR____TtC10FitnessApp32ActivityMoveAndExerciseChartView_axisLayer;
  v16 = OBJC_IVAR____TtC10FitnessApp32ActivityMoveAndExerciseChartView_axisLayer;
  v8 = objc_allocWithZone(type metadata accessor for ChartAxisGridLayer());
  *(v1 + v7) = sub_100215CE8(0);
  v9 = OBJC_IVAR____TtC10FitnessApp32ActivityMoveAndExerciseChartView____lazy_storage___mainBarLayer;
  *(v1 + OBJC_IVAR____TtC10FitnessApp32ActivityMoveAndExerciseChartView____lazy_storage___mainBarLayer) = 0;
  v10 = OBJC_IVAR____TtC10FitnessApp32ActivityMoveAndExerciseChartView____lazy_storage___workoutOverlayBarLayer;
  *(v1 + OBJC_IVAR____TtC10FitnessApp32ActivityMoveAndExerciseChartView____lazy_storage___workoutOverlayBarLayer) = 0;
  v11 = OBJC_IVAR____TtC10FitnessApp32ActivityMoveAndExerciseChartView_labels;
  sub_100384674();
  *(v1 + v11) = v12;
  v13 = OBJC_IVAR____TtC10FitnessApp32ActivityMoveAndExerciseChartView_topAxisLabel;
  v14 = sub_100665DD4();

  *(v2 + v13) = v14;
  *(v2 + OBJC_IVAR____TtC10FitnessApp32ActivityMoveAndExerciseChartView_chartViewType) = 0;
  sub_1000A7304(v3);

  sub_100383E48(*v5);
  sub_100383E48(*v6);

  type metadata accessor for ActivityMoveAndExerciseChartView();
  swift_deallocPartialClassInstance();
  return 0;
}

id sub_10038537C()
{
  v1 = *(v0 + OBJC_IVAR____TtC10FitnessApp32ActivityMoveAndExerciseChartView_labels);
  if (v1 >> 62)
  {
LABEL_19:
    v2 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v2)
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
          goto LABEL_18;
        }

        v4 = *(v1 + 8 * v3 + 32);
      }

      v5 = v4;
      v6 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        __break(1u);
LABEL_18:
        __break(1u);
        goto LABEL_19;
      }

      result = [objc_opt_self() _preferredFontForTextStyle:UIFontTextStyleCaption2 variant:1024 maximumContentSizeCategory:UIContentSizeCategoryExtraExtraExtraLarge];
      if (!result)
      {
        break;
      }

      v8 = result;
      [v5 setFont:result];

      ++v3;
      if (v6 == v2)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
    goto LABEL_21;
  }

LABEL_13:
  v9 = *&v11[OBJC_IVAR____TtC10FitnessApp32ActivityMoveAndExerciseChartView_topAxisLabel];
  result = [objc_opt_self() _preferredFontForTextStyle:UIFontTextStyleCaption2 variant:1024 maximumContentSizeCategory:UIContentSizeCategoryExtraExtraExtraLarge];
  if (!result)
  {
LABEL_21:
    __break(1u);
    return result;
  }

  v10 = result;
  [v9 setFont:result];

  [v11 setNeedsLayout];

  return [v11 invalidateIntrinsicContentSize];
}

uint64_t sub_100385598(int a1, int a2)
{
  v129 = a1;
  v4 = sub_100140278(&unk_1008E3FB0, &unk_1006DCB80);
  __chkstk_darwin(v4 - 8);
  v6 = (&v124 - v5);
  v7 = sub_100140278(&unk_1008E51A0, &unk_1006E09C0);
  __chkstk_darwin(v7 - 8);
  v9 = &v124 - v8;
  v10 = type metadata accessor for DateComponents();
  v11 = *(v10 - 8);
  *&v12 = __chkstk_darwin(v10).n128_u64[0];
  v130 = &v124 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  [v2 accessibilityReloadData];
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v15 = result;
    v127 = v9;
    Strong = swift_unknownObjectWeakLoadStrong();
    v17 = &OBJC_IVAR____TtC10FitnessApp40DayViewMoveAndExerciseChartTableViewCell_nBins;
    if (Strong)
    {
      v18 = *(Strong + OBJC_IVAR____TtC10FitnessApp40DayViewMoveAndExerciseChartTableViewCell_nBins);
      swift_unknownObjectRelease();
    }

    else
    {
      v18 = 96;
    }

    sub_10001C204(v18, v144, 0.0, 24.0);
    v19 = v145;
    v20 = &v2[OBJC_IVAR____TtC10FitnessApp32ActivityMoveAndExerciseChartView____lazy_storage___mainHistogram];
    v21 = *&v2[OBJC_IVAR____TtC10FitnessApp32ActivityMoveAndExerciseChartView____lazy_storage___mainHistogram];
    v22 = v144[1];
    *v20 = v144[0];
    *(v20 + 1) = v22;
    *(v20 + 2) = v144[2];
    *(v20 + 6) = v19;
    sub_100383E48(v21);
    v23 = swift_unknownObjectWeakLoadStrong();
    v128 = a2;
    if (v23)
    {
      v24 = *(v23 + OBJC_IVAR____TtC10FitnessApp40DayViewMoveAndExerciseChartTableViewCell_nBins);
      swift_unknownObjectRelease();
    }

    else
    {
      v24 = 96;
    }

    sub_10001C204(v24, v146, 0.0, 24.0);
    v25 = v147;
    v26 = &v2[OBJC_IVAR____TtC10FitnessApp32ActivityMoveAndExerciseChartView____lazy_storage___workoutOverlayHistogram];
    v27 = *&v2[OBJC_IVAR____TtC10FitnessApp32ActivityMoveAndExerciseChartView____lazy_storage___workoutOverlayHistogram];
    v28 = v146[1];
    *v26 = v146[0];
    *(v26 + 1) = v28;
    *(v26 + 2) = v146[2];
    *(v26 + 6) = v25;
    sub_100383E48(v27);
    sub_100384174(v148);
    v29 = *(v148[0] + 16);
    sub_100386E54(v148);
    v136 = v29;
    if (v29)
    {
      v125 = v10;
      v126 = v6;
      v124 = v11;
      v137 = OBJC_IVAR____TtC10FitnessApp40DayViewMoveAndExerciseChartTableViewCell_workoutHistogram;
      v138 = OBJC_IVAR____TtC10FitnessApp40DayViewMoveAndExerciseChartTableViewCell_histogram;
      swift_beginAccess();
      v29 = 0;
      v30 = 48;
      __asm { FMOV            V0.2D, #1.0 }

      v131 = _Q0;
      v139 = v15;
      v140 = v2;
      v132 = v26;
      v133 = v20;
      do
      {
        v46 = *(v15 + v138);
        *&_Q0 = 0;
        v47 = 0.0;
        if (v46)
        {
          if (v29 < *(v46 + 16))
          {
            v48 = (v46 + v30);
            if ((*v48 & 1) == 0)
            {
              v47 = *(v48 - 2);
            }
          }
        }

        v49 = *(v15 + v137);
        if (v49)
        {
          if (v29 < *(v49 + 16))
          {
            v50 = (v49 + v30);
            if ((*v50 & 1) == 0)
            {
              *&_Q0 = *(v50 - 2);
            }
          }
        }

        v141 = _Q0;
        v51 = *v20;
        v17 = *(v20 + 1);
        v6 = *(v20 + 2);
        v52 = *(v20 + 3);
        v53 = *(v20 + 4);
        v54 = *(v20 + 5);
        v55 = *(v20 + 6);
        if (v29 >= *(*v20 + 16))
        {

          v26 = v132;
          v20 = v133;
          v58 = v51;
        }

        else
        {

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v51 = sub_10057F5E0(v51);
          }

          if (v29 >= *(v51 + 2))
          {
            __break(1u);
LABEL_58:
            __break(1u);
            goto LABEL_59;
          }

          v56 = &v51[v30];
          *(v56 - 2) = v47;
          *(v56 - 1) = 1.0;
          *v56 = 0;
          if (v52 < v47)
          {
            v52 = v47;
            v53 = 1.0;
          }

          v57 = v54 < 0.0;
          if (v47 < v54)
          {
            v57 = 1;
          }

          if (v57)
          {
            v54 = v47;
            v55 = 1.0;
          }

          v58 = v51;
          v51 = *v20;
        }

        *v20 = v58;
        *(v20 + 1) = v17;
        *(v20 + 2) = v6;
        *(v20 + 3) = v52;
        *(v20 + 4) = v53;
        *(v20 + 5) = v54;
        *(v20 + 6) = v55;
        sub_100383E48(v51);
        v6 = v140;
        sub_100384180(v149);
        v59 = v149[0];
        v17 = v149[1];
        v60 = v149[2];
        v40 = v150;
        v44 = v151;
        if (v29 < *(v149[0] + 16))
        {
          v134 = v151;
          v135 = v150;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v59 = sub_10057F5E0(v59);
          }

          v61 = *&v141;
          v63 = v134;
          v62 = v135;
          if (v29 >= *(v59 + 2))
          {
            goto LABEL_58;
          }

          v36 = vdup_n_s32(*v135.i64 < *&v141);
          v37 = &v59[v30];
          *(v37 - 2) = v141;
          *(v37 - 1) = 0x3FF0000000000000;
          *v37 = 0;
          v38.i64[0] = v36.u32[0];
          v38.i64[1] = v36.u32[1];
          v39.i64[1] = *(&v131 + 1);
          *v39.i64 = v61;
          v40 = vbslq_s8(vcltzq_s64(vshlq_n_s64(v38, 0x3FuLL)), v39, v62);
          v41 = *v63.i64 < 0.0;
          if (v61 < *v63.i64)
          {
            v41 = 1;
          }

          v42 = vdup_n_s32(v41);
          v43.i64[0] = v42.u32[0];
          v43.i64[1] = v42.u32[1];
          v44 = vbslq_s8(vcltzq_s64(vshlq_n_s64(v43, 0x3FuLL)), v39, v63);
        }

        v45 = *v26;
        *v26 = v59;
        *(v26 + 1) = v17;
        *(v26 + 2) = v60;
        *(v26 + 24) = v40;
        *(v26 + 40) = v44;
        sub_100383E48(v45);
        ++v29;
        v30 += 24;
        v15 = v139;
      }

      while (v136 != v29);
      if (v129)
      {
        *(v6 + OBJC_IVAR____TtC10FitnessApp32ActivityMoveAndExerciseChartView_empty) = 0;
        v64 = sub_1003842F0();
        v65 = *v20;
        v66 = *(v20 + 1);
        v67 = *(v20 + 2);
        v68 = *(v20 + 3);
        v70 = *(v20 + 4);
        v69 = *(v20 + 5);
        *&v141 = *(v20 + 6);
        v153[0] = v65;
        v153[1] = v66;
        v153[2] = v67;
        v153[3] = v68;
        v153[4] = v70;
        v153[5] = v69;
        v153[6] = v141;

        sub_100464458(v153, v128 & 1);
        sub_100383E48(v65);

        v71 = sub_10038448C();
        v72 = *v26;
        v73 = *(v26 + 1);
        v74 = *(v26 + 2);
        v75 = *(v26 + 3);
        v76 = *(v26 + 4);
        v77 = *(v26 + 5);
        v78 = *(v26 + 6);
        v152[0] = v72;
        v152[1] = v73;
        v152[2] = v74;
        v152[3] = v75;
        v152[4] = v76;
        v152[5] = v77;
        v152[6] = v78;

        sub_100464458(v152, v128 & 1);
        v6 = v140;
        sub_100383E48(v72);
      }

      else
      {
        *(v6 + OBJC_IVAR____TtC10FitnessApp32ActivityMoveAndExerciseChartView_empty) = 1;
        v79 = sub_1003842F0();
        v80 = *(v20 + 1);
        v81 = *(v20 + 6);
        v82 = &v79[OBJC_IVAR____TtC10FitnessApp14BarSeriesLayer_histogram];
        v83 = *(v20 + 1);
        v84 = *(v20 + 2);
        *v82 = *v20;
        *(v82 + 1) = v80;
        *(v82 + 1) = v83;
        *(v82 + 2) = v84;
        *(v82 + 6) = v81;

        sub_100464D04();

        v85 = sub_10038448C();
        v86 = *(v26 + 1);
        v87 = *(v26 + 6);
        v88 = &v85[OBJC_IVAR____TtC10FitnessApp14BarSeriesLayer_histogram];
        v89 = *(v26 + 1);
        v90 = *(v26 + 2);
        *v88 = *v26;
        *(v88 + 1) = v86;
        *(v88 + 1) = v89;
        *(v88 + 2) = v90;
        *(v88 + 6) = v87;

        sub_100464D04();

        v91 = *(v6 + OBJC_IVAR____TtC10FitnessApp32ActivityMoveAndExerciseChartView____lazy_storage___mainBarLayer);
        v92 = objc_opt_self();
        v93 = v91;
        [v92 begin];
        [v92 setDisableActions:1];
        v93[OBJC_IVAR____TtC10FitnessApp14BarSeriesLayer_activeShapeType] = 0;
        sub_100464574();
        [v92 commit];

        v71 = *(v6 + OBJC_IVAR____TtC10FitnessApp32ActivityMoveAndExerciseChartView____lazy_storage___workoutOverlayBarLayer);
        [v92 begin];
        [v92 setDisableActions:1];
        v71[OBJC_IVAR____TtC10FitnessApp14BarSeriesLayer_activeShapeType] = 0;
        sub_100464574();
        [v92 commit];
      }

      v29 = v130;

      v94 = *(v20 + 3);
      v95 = v94;
      if (!*(v6 + OBJC_IVAR____TtC10FitnessApp32ActivityMoveAndExerciseChartView_chartViewType))
      {
        if (qword_1008DA988 != -1)
        {
          swift_once();
        }

        v104 = qword_1008EAA40;
        v105 = *(v6 + OBJC_IVAR____TtC10FitnessApp32ActivityMoveAndExerciseChartView_unitManager);
        if (v105)
        {
          v106 = v105;
          v107 = [v106 userActiveEnergyBurnedUnit];
          sub_1000059F8(0, &qword_1008DB898, NSObject_ptr);
          v108 = objc_opt_self();
          v109 = [v108 largeCalorieUnit];
          v110 = static NSObject.== infix(_:_:)();

          [v104 setForFoodEnergyUse:v110 & 1];
          v111 = [v108 energyFormatterUnitFromUnit:v107];
          v112 = *(v6 + OBJC_IVAR____TtC10FitnessApp32ActivityMoveAndExerciseChartView_topAxisLabel);
          v113 = [v104 stringFromValue:v111 unit:v95];
          v114 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v116 = v115;

          v142 = v114;
          v143 = v116;
          sub_10000FCBC();
          StringProtocol.localizedUppercase.getter();
          v117 = String._bridgeToObjectiveC()();

          [v112 setText:v117];
        }

        else
        {
          v118 = *(v6 + OBJC_IVAR____TtC10FitnessApp32ActivityMoveAndExerciseChartView_topAxisLabel);
          v119 = [qword_1008EAA40 stringFromValue:1794 unit:v94];
          v120 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v122 = v121;

          v142 = v120;
          v143 = v122;
          sub_10000FCBC();
          StringProtocol.localizedUppercase.getter();
          v123 = String._bridgeToObjectiveC()();

          [v118 setText:v123];
        }

        goto LABEL_55;
      }

      v96 = type metadata accessor for Calendar();
      (*(*(v96 - 8) + 56))(v127, 1, 1, v96);
      v97 = type metadata accessor for TimeZone();
      v17 = v126;
      (*(*(v97 - 8) + 56))(v126, 1, 1, v97);
      DateComponents.init(calendar:timeZone:era:year:month:day:hour:minute:second:nanosecond:weekday:weekdayOrdinal:quarter:weekOfMonth:weekOfYear:yearForWeekOfYear:)();
      if ((~*&v94 & 0x7FF0000000000000) == 0)
      {
        goto LABEL_60;
      }

      if (v94 > -9.22337204e18)
      {
        if (v94 >= 9.22337204e18)
        {
          goto LABEL_62;
        }

        DateComponents.minute.setter();
        v17 = *(v6 + OBJC_IVAR____TtC10FitnessApp32ActivityMoveAndExerciseChartView_topAxisLabel);
        if (qword_1008DA990 == -1)
        {
          goto LABEL_47;
        }

        goto LABEL_63;
      }
    }

    else
    {
LABEL_59:
      __break(1u);
LABEL_60:
      __break(1u);
    }

    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    swift_once();
LABEL_47:
    v98 = qword_1008EAA48;
    isa = DateComponents._bridgeToObjectiveC()().super.isa;
    v100 = [v98 stringFromDateComponents:isa];

    if (v100)
    {
      v101 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v103 = v102;

      v142 = v101;
      v143 = v103;
      sub_10000FCBC();
      StringProtocol.localizedUppercase.getter();

      v100 = String._bridgeToObjectiveC()();
    }

    [v17 setText:v100];

    (*(v124 + 8))(v29, v125);
LABEL_55:
    [v6 setNeedsLayout];
    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_100386288(uint64_t a1)
{
  v2 = v1;
  v37.receiver = v1;
  v37.super_class = type metadata accessor for ActivityMoveAndExerciseChartView();
  objc_msgSendSuper2(&v37, "layoutSubviews");
  [v1 bounds];
  Width = CGRectGetWidth(v38);
  v4 = *&v1[OBJC_IVAR____TtC10FitnessApp32ActivityMoveAndExerciseChartView_chartHeight];
  v5 = sub_1003842F0();
  [v5 setFrame:{0.0, 0.0, Width, v4}];

  v6 = sub_10038448C();
  [v6 setFrame:{0.0, 0.0, Width, v4}];

  v34 = OBJC_IVAR____TtC10FitnessApp32ActivityMoveAndExerciseChartView____lazy_storage___mainBarLayer;
  v7 = *&v2[OBJC_IVAR____TtC10FitnessApp32ActivityMoveAndExerciseChartView____lazy_storage___mainBarLayer];
  sub_100464544();
  v8 = v7;
  [v8 bounds];
  CGRectGetWidth(v39);

  [*&v2[OBJC_IVAR____TtC10FitnessApp32ActivityMoveAndExerciseChartView_axisLayer] setFrame:{sub_1002957AC(0.0, 0.0, Width, v4, 0.0, 0.0)}];
  [v2 bounds];
  v9 = CGRectGetWidth(v40);
  v36 = v2;
  v10 = *&v2[OBJC_IVAR____TtC10FitnessApp32ActivityMoveAndExerciseChartView_labels];
  if (!(v10 >> 62))
  {
    v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v11)
    {
      goto LABEL_3;
    }

LABEL_15:
    v25 = *&v36[OBJC_IVAR____TtC10FitnessApp32ActivityMoveAndExerciseChartView_topAxisLabel];
    [v25 sizeToFit];
    [v36 bounds];
    v26 = CGRectGetWidth(v42);
    [v25 intrinsicContentSize];
    [v25 setFrame:{0.0, 0.0, v26, v27}];
    v28 = v36[OBJC_IVAR____TtC10FitnessApp32ActivityMoveAndExerciseChartView_empty];
    v29 = *&v36[v35];
    v30 = objc_opt_self();
    v31 = v29;
    [v30 begin];
    [v30 setDisableActions:1];
    v32 = (v28 & 1) == 0;
    v31[OBJC_IVAR____TtC10FitnessApp14BarSeriesLayer_activeShapeType] = v32;
    sub_100464574();
    [v30 commit];

    v33 = *&v36[OBJC_IVAR____TtC10FitnessApp32ActivityMoveAndExerciseChartView____lazy_storage___workoutOverlayBarLayer];
    [v30 begin];
    [v30 setDisableActions:1];
    v33[OBJC_IVAR____TtC10FitnessApp14BarSeriesLayer_activeShapeType] = v32;
    sub_100464574();
    [v30 commit];

    return;
  }

LABEL_14:
  v23 = v9;
  v24 = _CocoaArrayWrapper.endIndex.getter();
  v9 = v23;
  v11 = v24;
  if (!v24)
  {
    goto LABEL_15;
  }

LABEL_3:
  v12 = 0;
  v13 = v9 * 0.25;
  v14 = 0.0;
  while (1)
  {
    if ((v10 & 0xC000000000000001) != 0)
    {
      v15 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v12 >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_13;
      }

      v15 = *(v10 + 8 * v12 + 32);
    }

    v16 = v15;
    v17 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      __break(1u);
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    [v15 sizeToFit];
    [v16 bounds];
    [v16 setFrame:{v14, 0.0}];
    [*&v36[v34] frame];
    MaxY = CGRectGetMaxY(v41);
    v19 = [objc_opt_self() _preferredFontForTextStyle:UIFontTextStyleCaption2 variant:1024 maximumContentSizeCategory:UIContentSizeCategoryExtraExtraExtraLarge];
    if (!v19)
    {
      break;
    }

    v20 = v19;
    [v19 _scaledValueForValue:13.0];
    v22 = v21;

    [v16 _setFirstLineBaselineFrameOriginY:MaxY + v22];
    v14 = v13 + v14;
    ++v12;
    if (v17 == v11)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
}

id sub_100386750(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for ActivityMoveAndExerciseChartView();
  return objc_msgSendSuper2(&v3, "dealloc");
}

void *sub_1003868EC()
{
  sub_100384174(v9);
  sub_10006C958();
  v1 = v0;
  sub_100386E54(v9);
  v2 = *(v1 + 16);
  if (v2)
  {
    sub_10018616C(0, v2, 0);
    v3 = _swiftEmptyArrayStorage[2];
    v4 = 32;
    do
    {
      v5 = *(v1 + v4);
      v6 = _swiftEmptyArrayStorage[3];
      if (v3 >= v6 >> 1)
      {
        v8 = *(v1 + v4);
        sub_10018616C((v6 > 1), v3 + 1, 1);
        v5 = v8;
      }

      _swiftEmptyArrayStorage[2] = v3 + 1;
      *&_swiftEmptyArrayStorage[2 * v3 + 4] = v5;
      v4 += 16;
      ++v3;
      --v2;
    }

    while (v2);
  }

  return _swiftEmptyArrayStorage;
}

unint64_t sub_100386A58()
{
  result = qword_1008EAAD8;
  if (!qword_1008EAAD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008EAAD8);
  }

  return result;
}

void *sub_100386AAC()
{
  v0 = [objc_opt_self() keyColors];
  if (v0)
  {
    v1 = v0;
    sub_1000059F8(0, &qword_1008E7FC0, UIColor_ptr);
    isa = UIColor.init(_colorLiteralRed:green:blue:alpha:)(0.8, 1.0, 0.50196, 1.0).super.isa;
    [v1 setGradientDarkColor:isa];

    v3 = UIColor.init(_colorLiteralRed:green:blue:alpha:)(0.86275, 1.0, 0.68627, 1.0).super.isa;
    [v1 setGradientLightColor:v3];

    v4 = UIColor.init(_colorLiteralRed:green:blue:alpha:)(0.86275, 1.0, 0.68627, 1.0).super.isa;
    [v1 setNonGradientTextColor:v4];

    return v1;
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

void sub_100386C2C()
{
  v1 = v0;
  v2 = sub_1003842F0();
  sub_100384174(v12);
  v3 = &v2[OBJC_IVAR____TtC10FitnessApp14BarSeriesLayer_histogram];
  v4 = v12[2];
  *(v3 + 1) = v12[1];
  *(v3 + 2) = v4;
  *(v3 + 6) = v13;
  *v3 = v12[0];

  sub_100464D04();
  v5 = objc_opt_self();
  [v5 begin];
  [v5 setDisableActions:1];
  v2[OBJC_IVAR____TtC10FitnessApp14BarSeriesLayer_activeShapeType] = 1;
  sub_100464574();
  [v5 commit];

  v6 = sub_10038448C();
  sub_100384180(v14);
  v7 = &v6[OBJC_IVAR____TtC10FitnessApp14BarSeriesLayer_histogram];
  v8 = v14[2];
  *(v7 + 6) = v15;
  v9 = v14[0];
  *(v7 + 1) = v14[1];
  *(v7 + 2) = v8;
  *v7 = v9;

  sub_100464D04();
  [v5 begin];
  [v5 setDisableActions:1];
  v6[OBJC_IVAR____TtC10FitnessApp14BarSeriesLayer_activeShapeType] = 1;
  sub_100464574();
  [v5 commit];

  v10 = *(v0 + OBJC_IVAR____TtC10FitnessApp32ActivityMoveAndExerciseChartView____lazy_storage___mainBarLayer);
  [v5 begin];
  [v5 setDisableActions:1];
  v10[OBJC_IVAR____TtC10FitnessApp14BarSeriesLayer_activeShapeType] = 0;
  sub_100464574();
  [v5 commit];

  v11 = *(v1 + OBJC_IVAR____TtC10FitnessApp32ActivityMoveAndExerciseChartView____lazy_storage___workoutOverlayBarLayer);
  [v5 begin];
  [v5 setDisableActions:1];
  v11[OBJC_IVAR____TtC10FitnessApp14BarSeriesLayer_activeShapeType] = 0;
  sub_100464574();
  [v5 commit];
}

void sub_100386F04()
{
  v0 = objc_opt_self();
  v1 = [v0 _preferredFontForTextStyle:UIFontTextStyleCaption2 variant:1024 maximumContentSizeCategory:UIContentSizeCategoryExtraExtraExtraLarge];
  if (!v1)
  {
    __break(1u);
    goto LABEL_6;
  }

  v2 = v1;
  [v1 _scaledValueForValue:13.0];

  v3 = [v0 _preferredFontForTextStyle:UIFontTextStyleCaption2 variant:1024 maximumContentSizeCategory:UIContentSizeCategoryExtraExtraExtraLarge];
  if (!v3)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v4 = v3;
  [v3 lineHeight];

  v5 = [v0 _preferredFontForTextStyle:UIFontTextStyleCaption2 variant:1024 maximumContentSizeCategory:UIContentSizeCategoryExtraExtraExtraLarge];
  if (v5)
  {
    v6 = v5;
    [v5 ascender];

    return;
  }

LABEL_7:
  __break(1u);
}

void sub_1003870A0(uint64_t a1)
{
  type metadata accessor for FitnessPlusSampleContentCard(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for AppComposer();
    if (v2 <= 0x3F)
    {
      sub_10005C6EC(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

char *sub_100387144(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *&v3[OBJC_IVAR____TtC10FitnessApp20MoveModeSettingsCell_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v3[OBJC_IVAR____TtC10FitnessApp20MoveModeSettingsCell_moveTimeSwitch] = 0;
  if (a3)
  {
    v6 = String._bridgeToObjectiveC()();
  }

  else
  {
    v6 = 0;
  }

  v20.receiver = v3;
  v20.super_class = type metadata accessor for MoveModeSettingsCell();
  v7 = objc_msgSendSuper2(&v20, "initWithStyle:reuseIdentifier:", a1, v6);

  v8 = v7;
  v9 = [v8 textLabel];
  if (v9)
  {
    v10 = v9;
    v11 = [objc_opt_self() mainBundle];
    v12 = String._bridgeToObjectiveC()();
    v13 = [v11 localizedStringForKey:v12 value:0 table:0];

    if (!v13)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v13 = String._bridgeToObjectiveC()();
    }

    [v10 setText:v13];
  }

  sub_1000059F8(0, &qword_1008E0C88, UIAction_ptr);
  v14 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v15 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  v16 = [objc_allocWithZone(UISwitch) initWithFrame:v15 primaryAction:{0.0, 0.0, 0.0, 0.0, 0, 0, 0, sub_1003876BC, v14}];
  v17 = OBJC_IVAR____TtC10FitnessApp20MoveModeSettingsCell_moveTimeSwitch;
  v18 = *&v8[OBJC_IVAR____TtC10FitnessApp20MoveModeSettingsCell_moveTimeSwitch];
  *&v8[OBJC_IVAR____TtC10FitnessApp20MoveModeSettingsCell_moveTimeSwitch] = v16;

  [v8 setAccessoryView:*&v8[v17]];
  return v8;
}

void sub_1003873FC(void *a1, uint64_t a2)
{
  if ([a1 sender])
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v6 = 0u;
    v7 = 0u;
  }

  v8[0] = v6;
  v8[1] = v7;
  if (*(&v7 + 1))
  {
    sub_1000059F8(0, &qword_1008EABB0, UISwitch_ptr);
    if (swift_dynamicCast())
    {
      swift_beginAccess();
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong && (v3 = Strong, v4 = swift_unknownObjectWeakLoadStrong(), v3, v4))
      {
        sub_100410714([v5 isOn]);

        swift_unknownObjectRelease();
      }

      else
      {
      }
    }
  }

  else
  {
    sub_1001B3EEC(v8);
  }
}

id sub_100387618(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for MoveModeSettingsCell();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_1003876C4@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  if (![v3 shouldFakeData])
  {
    if (a2)
    {
      v11 = a2;
      v12 = [v11 metadata];
      if (v12)
      {
        v13 = v12;
        v14 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

        v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        if (*(v14 + 16))
        {
          v17 = sub_100066F20(v15, v16);
          v19 = v18;

          if (v19)
          {
            sub_10000B1B4(*(v14 + 56) + 32 * v17, v53);

            sub_1003884E0();
            if (swift_dynamicCast())
            {
              v20 = v52;
            }

            else
            {
              v20 = 0;
            }
          }

          else
          {

            v20 = 0;
          }
        }

        else
        {

          v20 = 0;
        }
      }

      else
      {
        v20 = 0;
      }

      v29 = v20;
      v30 = [v11 metadata];
      if (v30)
      {
        v31 = v30;
        v32 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

        v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        if (*(v32 + 16))
        {
          v35 = sub_100066F20(v33, v34);
          v37 = v36;

          if (v37)
          {
            sub_10000B1B4(*(v32 + 56) + 32 * v35, v53);

            sub_1003884E0();
            if (swift_dynamicCast())
            {
              v38 = v52;
            }

            else
            {
              v38 = 0;
            }

            if (!v20)
            {
              goto LABEL_46;
            }

LABEL_51:
            v50 = [v20 integerValue];

            return sub_10038801C(v50, a3);
          }

          v38 = 0;
          if (v20)
          {
            goto LABEL_51;
          }

          goto LABEL_46;
        }
      }

      v38 = 0;
      if (v20)
      {
        goto LABEL_51;
      }

      goto LABEL_46;
    }

    v21 = [a1 metadata];
    if (v21)
    {
      v22 = v21;
      v23 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      if (*(v23 + 16))
      {
        v26 = sub_100066F20(v24, v25);
        v28 = v27;

        if (v28)
        {
          sub_10000B1B4(*(v23 + 56) + 32 * v26, v53);

          sub_1003884E0();
          if (swift_dynamicCast())
          {
            v20 = v52;
          }

          else
          {
            v20 = 0;
          }
        }

        else
        {

          v20 = 0;
        }
      }

      else
      {

        v20 = 0;
      }
    }

    else
    {
      v20 = 0;
    }

    v39 = v20;
    v40 = [a1 metadata];
    if (v40)
    {
      v41 = v40;
      v42 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      v43 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      if (*(v42 + 16))
      {
        v45 = sub_100066F20(v43, v44);
        v47 = v46;

        if (v47)
        {
          sub_10000B1B4(*(v42 + 56) + 32 * v45, v53);

          sub_1003884E0();
          if (swift_dynamicCast())
          {
            v38 = v52;
          }

          else
          {
            v38 = 0;
          }
        }

        else
        {

          v38 = 0;
        }

        if (!v20)
        {
          goto LABEL_46;
        }

        goto LABEL_51;
      }

      v38 = 0;
      if (v20)
      {
        goto LABEL_51;
      }
    }

    else
    {
      v38 = 0;
      if (v20)
      {
        goto LABEL_51;
      }
    }

LABEL_46:
    if (v38)
    {
      v48 = [v38 integerValue];

      return sub_1003882A8(v48, a3);
    }

    else
    {
      v49 = type metadata accessor for WeatherCondition();
      return (*(*(v49 - 8) + 56))(a3, 1, 1, v49);
    }
  }

  v7 = enum case for WeatherCondition.clear(_:);
  v8 = type metadata accessor for WeatherCondition();
  v51 = *(v8 - 8);
  (*(v51 + 104))(a3, v7, v8);
  v9 = *(v51 + 56);

  return v9(a3, 0, 1, v8);
}

uint64_t sub_100387DBC(void *a1, void *a2)
{
  v5 = type metadata accessor for WeatherConditionIcon();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100140278(&qword_1008EABB8, &qword_1006F76B0);
  __chkstk_darwin(v9 - 8);
  v11 = &v18 - v10;
  v12 = type metadata accessor for WeatherCondition();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1003876C4(a1, a2, v11);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_10038852C(v11);
    return 0;
  }

  else
  {
    (*(v13 + 32))(v15, v11, v12);
    [v2 workoutWasInDayTime:a1];
    WeatherCondition.conditionIcon(isDaylight:isFilled:forLightBackground:)();
    v17 = WeatherConditionIcon.name.getter();
    (*(v6 + 8))(v8, v5);
    (*(v13 + 8))(v15, v12);
    return v17;
  }
}

uint64_t sub_10038801C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  switch(a1)
  {
    case 1:
      v3 = &enum case for WeatherCondition.clear(_:);
      goto LABEL_32;
    case 2:
      v3 = &enum case for WeatherCondition.mostlyClear(_:);
      goto LABEL_32;
    case 3:
      v3 = &enum case for WeatherCondition.partlyCloudy(_:);
      goto LABEL_32;
    case 4:
      v3 = &enum case for WeatherCondition.mostlyCloudy(_:);
      goto LABEL_32;
    case 5:
      v3 = &enum case for WeatherCondition.cloudy(_:);
      goto LABEL_32;
    case 6:
      v3 = &enum case for WeatherCondition.foggy(_:);
      goto LABEL_32;
    case 7:
      v3 = &enum case for WeatherCondition.haze(_:);
      goto LABEL_32;
    case 8:
    case 9:
      v3 = &enum case for WeatherCondition.windy(_:);
      goto LABEL_32;
    case 10:
      v3 = &enum case for WeatherCondition.smoky(_:);
      goto LABEL_32;
    case 11:
      v3 = &enum case for WeatherCondition.blowingDust(_:);
      goto LABEL_32;
    case 12:
      v3 = &enum case for WeatherCondition.hot(_:);
      goto LABEL_32;
    case 13:
      v3 = &enum case for WeatherCondition.frigid(_:);
      goto LABEL_32;
    case 14:
    case 15:
    case 16:
    case 18:
      v3 = &enum case for WeatherCondition.snow(_:);
      goto LABEL_32;
    case 17:
      v3 = &enum case for WeatherCondition.flurries(_:);
      goto LABEL_32;
    case 19:
      v3 = &enum case for WeatherCondition.blowingSnow(_:);
      goto LABEL_32;
    case 20:
      v3 = &enum case for WeatherCondition.heavySnow(_:);
      goto LABEL_32;
    case 21:
      v3 = &enum case for WeatherCondition.hail(_:);
      goto LABEL_32;
    case 22:
      v3 = &enum case for WeatherCondition.sleet(_:);
      goto LABEL_32;
    case 23:
      v3 = &enum case for WeatherCondition.freezingDrizzle(_:);
      goto LABEL_32;
    case 24:
      v3 = &enum case for WeatherCondition.freezingRain(_:);
      goto LABEL_32;
    case 25:
    case 26:
    case 27:
    case 28:
      v3 = &enum case for WeatherCondition.wintryMix(_:);
      goto LABEL_32;
    case 29:
      v3 = &enum case for WeatherCondition.drizzle(_:);
      goto LABEL_32;
    case 30:
    case 31:
      v3 = &enum case for WeatherCondition.rain(_:);
      goto LABEL_32;
    case 32:
    case 33:
      v3 = &enum case for WeatherCondition.isolatedThunderstorms(_:);
      goto LABEL_32;
    case 34:
      v3 = &enum case for WeatherCondition.scatteredThunderstorms(_:);
      goto LABEL_32;
    case 35:
    case 36:
      v3 = &enum case for WeatherCondition.thunderstorms(_:);
      goto LABEL_32;
    case 37:
      v3 = &enum case for WeatherCondition.tropicalStorm(_:);
      goto LABEL_32;
    case 38:
      v3 = &enum case for WeatherCondition.hurricane(_:);
      goto LABEL_32;
    case 39:
      v3 = &enum case for WeatherCondition.strongStorms(_:);
LABEL_32:
      v9 = *v3;
      v10 = type metadata accessor for WeatherCondition();
      v12 = *(v10 - 8);
      (*(v12 + 104))(a2, v9, v10);
      v5 = *(v12 + 56);
      v7 = a2;
      v8 = 0;
      v6 = v10;
      break;
    default:
      v4 = type metadata accessor for WeatherCondition();
      v5 = *(*(v4 - 8) + 56);
      v6 = v4;
      v7 = a2;
      v8 = 1;
      break;
  }

  return v5(v7, v8, 1, v6);
}

uint64_t sub_1003882A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  switch(a1)
  {
    case 1:
      v3 = &enum case for WeatherCondition.clear(_:);
      goto LABEL_25;
    case 2:
      v3 = &enum case for WeatherCondition.mostlyClear(_:);
      goto LABEL_25;
    case 3:
      v3 = &enum case for WeatherCondition.partlyCloudy(_:);
      goto LABEL_25;
    case 4:
      v3 = &enum case for WeatherCondition.mostlyCloudy(_:);
      goto LABEL_25;
    case 5:
      v3 = &enum case for WeatherCondition.cloudy(_:);
      goto LABEL_25;
    case 6:
      v3 = &enum case for WeatherCondition.foggy(_:);
      goto LABEL_25;
    case 7:
      v3 = &enum case for WeatherCondition.haze(_:);
      goto LABEL_25;
    case 8:
    case 9:
      v3 = &enum case for WeatherCondition.windy(_:);
      goto LABEL_25;
    case 10:
      v3 = &enum case for WeatherCondition.smoky(_:);
      goto LABEL_25;
    case 11:
      v3 = &enum case for WeatherCondition.blowingDust(_:);
      goto LABEL_25;
    case 12:
      v3 = &enum case for WeatherCondition.snow(_:);
      goto LABEL_25;
    case 13:
      v3 = &enum case for WeatherCondition.hail(_:);
      goto LABEL_25;
    case 14:
      v3 = &enum case for WeatherCondition.sleet(_:);
      goto LABEL_25;
    case 15:
      v3 = &enum case for WeatherCondition.freezingDrizzle(_:);
      goto LABEL_25;
    case 16:
      v3 = &enum case for WeatherCondition.freezingRain(_:);
      goto LABEL_25;
    case 17:
    case 18:
    case 19:
    case 20:
      v3 = &enum case for WeatherCondition.wintryMix(_:);
      goto LABEL_25;
    case 21:
      v3 = &enum case for WeatherCondition.drizzle(_:);
      goto LABEL_25;
    case 22:
    case 23:
      v3 = &enum case for WeatherCondition.rain(_:);
      goto LABEL_25;
    case 24:
      v3 = &enum case for WeatherCondition.thunderstorms(_:);
      goto LABEL_25;
    case 25:
      v3 = &enum case for WeatherCondition.tropicalStorm(_:);
      goto LABEL_25;
    case 26:
      v3 = &enum case for WeatherCondition.hurricane(_:);
      goto LABEL_25;
    case 27:
      v3 = &enum case for WeatherCondition.strongStorms(_:);
LABEL_25:
      v9 = *v3;
      v10 = type metadata accessor for WeatherCondition();
      v12 = *(v10 - 8);
      (*(v12 + 104))(a2, v9, v10);
      v5 = *(v12 + 56);
      v7 = a2;
      v8 = 0;
      v6 = v10;
      break;
    default:
      v4 = type metadata accessor for WeatherCondition();
      v5 = *(*(v4 - 8) + 56);
      v6 = v4;
      v7 = a2;
      v8 = 1;
      break;
  }

  return v5(v7, v8, 1, v6);
}

unint64_t sub_1003884E0()
{
  result = qword_1008E1750;
  if (!qword_1008E1750)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1008E1750);
  }

  return result;
}

uint64_t sub_10038852C(uint64_t a1)
{
  v2 = sub_100140278(&qword_1008EABB8, &qword_1006F76B0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *sub_100388594()
{
  v1 = OBJC_IVAR___CHWorkoutDetailIntervalDataSource____lazy_storage___configuration;
  v2 = *(v0 + OBJC_IVAR___CHWorkoutDetailIntervalDataSource____lazy_storage___configuration);
  v3 = v2;
  if (v2 == 1)
  {
    v3 = sub_100388604(v0);
    v4 = *(v0 + v1);
    *(v0 + v1) = v3;
    v5 = v3;
    sub_100389D9C(v4);
  }

  sub_100389E44(v2);
  return v3;
}

uint64_t sub_100388604(uint64_t a1)
{
  v1 = [*(a1 + OBJC_IVAR___CHWorkoutDetailSegmentDataSource_workout) metadata];
  if (v1)
  {
    v2 = v1;
    static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  type metadata accessor for WorkoutConfiguration();
  v3 = static WorkoutConfiguration.deserialize(from:)();

  if (v3)
  {
    type metadata accessor for IntervalWorkoutConfiguration();
    result = swift_dynamicCastClass();
    if (result)
    {
      return result;
    }
  }

  return 0;
}

void sub_1003886C8()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    [*(Strong + OBJC_IVAR___CHWorkoutDetailedBasicViewController_activityIndicator) startAnimating];
    swift_unknownObjectRelease();
  }

  v2 = *&v0[OBJC_IVAR___CHWorkoutDetailSegmentDataSource_dataCalculator];
  v3 = *&v0[OBJC_IVAR___CHWorkoutDetailSegmentDataSource_workout];
  v4 = swift_allocObject();
  *(v4 + 16) = v0;
  v7[4] = sub_100389E14;
  v7[5] = v4;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 1107296256;
  v7[2] = sub_1003896D0;
  v7[3] = &unk_100854A10;
  v5 = _Block_copy(v7);
  v6 = v0;

  [v2 intervalsForWorkout:v3 completion:v5];
  _Block_release(v5);
}

void sub_100388808(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v60 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchQoS();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v60 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    sub_100140278(&qword_1008E7590, qword_1006D5360);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_1006D46C0;
    swift_getErrorValue();
    v15 = v79;
    v16 = v80;
    *(v14 + 56) = v80;
    v17 = sub_100005994((v14 + 32));
    (*(*(v16 - 8) + 16))(v17, v15, v16);
    swift_errorRetain();
    print(_:separator:terminator:)();
  }

  else if (a1)
  {
    v70 = dispatch_group_create();
    v60[0] = sub_1000059F8(0, &qword_1008E3FD0, OS_dispatch_queue_ptr);
    v18 = static OS_dispatch_queue.main.getter();
    v19 = swift_allocObject();
    *(v19 + 16) = a3;
    *(v19 + 24) = a1;
    v86 = sub_100389E1C;
    v87 = v19;
    aBlock = _NSConcreteStackBlock;
    v83 = 1107296256;
    v84 = sub_1000449A8;
    v85 = &unk_100854A60;
    v20 = _Block_copy(&aBlock);
    v74 = a1;
    v21 = v20;
    v22 = a3;
    v23 = v9;
    v69 = v22;

    static DispatchQoS.unspecified.getter();
    aBlock = _swiftEmptyArrayStorage;
    v24 = sub_1000261C4();
    v25 = sub_100140278(&unk_1008E7F50, &qword_1006D8190);
    v26 = sub_10002621C();
    v67 = v25;
    v66 = v26;
    v68 = v24;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    v27 = v74;
    _Block_release(v21);

    v29 = *(v7 + 8);
    v28 = v7 + 8;
    v72 = v23;
    v65 = v29;
    v29(v23, v6);
    v31 = *(v11 + 8);
    v30 = v11 + 8;
    v71 = v13;
    v64 = v31;
    v31(v13, v10);
    v32 = v27 & 0xFFFFFFFFFFFFFF8;
    v73 = v6;
    if (v27 >> 62)
    {
      goto LABEL_16;
    }

    for (i = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
    {
      v34 = 0;
      v63 = v27 & 0xC000000000000001;
      v60[1] = &v84;
      v62 = v10;
      v61 = i;
      while (1)
      {
        if (v63)
        {
          v35 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v34 >= *(v32 + 16))
          {
            goto LABEL_15;
          }

          v35 = *(v27 + 8 * v34 + 32);
        }

        v27 = v35;
        if (__OFADD__(v34, 1))
        {
          break;
        }

        v78 = v34 + 1;
        v36 = v69;
        v77 = *&v69[OBJC_IVAR___CHWorkoutDetailSegmentDataSource_internalQueue];
        v37 = swift_allocObject();
        v37[2] = v36;
        v37[3] = v27;
        v37[4] = v34;
        v86 = sub_100389E24;
        v87 = v37;
        aBlock = _NSConcreteStackBlock;
        v83 = 1107296256;
        v84 = sub_1000449A8;
        v85 = &unk_100854AB0;
        v38 = _Block_copy(&aBlock);
        v39 = v36;
        v76 = v70;
        v75 = v27;
        v40 = v71;
        static DispatchQoS.unspecified.getter();
        v81 = _swiftEmptyArrayStorage;
        v41 = v32;
        v42 = v30;
        v43 = v72;
        v44 = v28;
        v45 = v73;
        dispatch thunk of SetAlgebra.init<A>(_:)();
        OS_dispatch_queue.async(group:qos:flags:execute:)();
        _Block_release(v38);

        v46 = v62;
        v47 = v43;
        v30 = v42;
        v32 = v41;
        v48 = v45;
        v28 = v44;
        v65(v47, v48);
        v27 = v74;
        v10 = v46;
        v49 = v46;
        v50 = v61;
        v64(v40, v49);

        ++v34;
        if (v78 == v50)
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
    v51 = static OS_dispatch_queue.main.getter();
    v52 = swift_allocObject();
    v53 = v69;
    *(v52 + 16) = v69;
    v86 = sub_100389E30;
    v87 = v52;
    aBlock = _NSConcreteStackBlock;
    v83 = 1107296256;
    v84 = sub_1000449A8;
    v85 = &unk_100854B00;
    v54 = _Block_copy(&aBlock);
    v55 = v53;
    v56 = v71;
    static DispatchQoS.unspecified.getter();
    v81 = _swiftEmptyArrayStorage;
    v58 = v72;
    v57 = v73;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v59 = v70;
    OS_dispatch_group.notify(qos:flags:queue:execute:)();
    _Block_release(v54);

    v65(v58, v57);
    v64(v56, v10);
  }
}

uint64_t sub_100388F68(unint64_t a1, unint64_t a2)
{
  if (a2 >> 62)
  {
    goto LABEL_22;
  }

  v4 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  if (v4)
  {
    result = specialized ContiguousArray.reserveCapacity(_:)();
    if ((v4 & 0x8000000000000000) == 0)
    {
      v21 = a1;
      a1 = 0;
      while (1)
      {
        if ((a2 & 0xC000000000000001) != 0)
        {
          v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if ((a1 & 0x8000000000000000) != 0)
          {
            __break(1u);
LABEL_21:
            __break(1u);
LABEL_22:
            v4 = _CocoaArrayWrapper.endIndex.getter();
            goto LABEL_3;
          }

          if (a1 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_21;
          }

          v10 = *(a2 + 8 * a1 + 32);
        }

        v11 = v10;
        v12 = [v10 distance];
        if (v12)
        {
          v13 = v12;
          v14 = [objc_opt_self() meterUnit];
          [v13 doubleValueForUnit:v14];
          v16 = v15;
        }

        else
        {
          v16 = 0;
        }

        [v11 elapsedTime];
        v18 = v17;
        type metadata accessor for WorkoutDurationMetrics();
        v19 = swift_allocObject();
        *(v19 + 16) = 0;
        *(v19 + 24) = 0;
        *(v19 + 48) = 0;
        *(v19 + 56) = 1;
        *(v19 + 72) = 0;
        *(v19 + 80) = 1;
        *(v19 + 88) = 0u;
        *(v19 + 104) = 0u;
        *(v19 + 120) = 0;
        *(v19 + 128) = 1;
        *(v19 + 144) = 0;
        *(v19 + 152) = 0;
        *(v19 + 136) = 0;
        *(v19 + 32) = v16;
        *(v19 + 40) = 0;
        *(v19 + 64) = v18;
        v20 = [v11 stepKeyPath];
        if (v20)
        {
          v6 = v20;
          v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v9 = v8;
        }

        else
        {
          v7 = 0;
          v9 = 0;
        }

        ++a1;
        *(v19 + 16) = v7;
        *(v19 + 24) = v9;

        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        if (v4 == a1)
        {
          a1 = v21;
          goto LABEL_19;
        }
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:
    swift_getKeyPath();
    swift_getKeyPath();
    a1;
    static Published.subscript.setter();
    return sub_100309BC4();
  }

  return result;
}

uint64_t sub_100389214(char *a1, void *a2, uint64_t a3)
{
  v23 = a3;
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v25 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for DispatchQoS();
  v8 = *(v24 - 8);
  __chkstk_darwin(v24);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *&a1[OBJC_IVAR___CHWorkoutDetailSegmentDataSource_workout];
  v12 = sub_100388594();
  v13 = *&a1[OBJC_IVAR___CHWorkoutDetailSegmentDataSource_dataCalculator];
  type metadata accessor for WorkoutDurationMetrics();
  swift_allocObject();
  sub_1003D0414(v11, v12, a2, v13, 0, 0);
  v15 = v14;
  sub_1000059F8(0, &qword_1008E3FD0, OS_dispatch_queue_ptr);
  v16 = static OS_dispatch_queue.main.getter();
  v17 = swift_allocObject();
  v18 = v23;
  v17[2] = a1;
  v17[3] = v18;
  v17[4] = v15;
  aBlock[4] = sub_100389E38;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000449A8;
  aBlock[3] = &unk_100854B50;
  v19 = _Block_copy(aBlock);
  v20 = a1;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_1000261C4();
  sub_100140278(&unk_1008E7F50, &qword_1006D8190);
  sub_10002621C();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v19);

  (*(v25 + 8))(v7, v5);
  return (*(v8 + 8))(v10, v24);
}

void sub_100389548(uint64_t a1, unint64_t a2, uint64_t a3)
{
  swift_getKeyPath();
  swift_getKeyPath();

  v5 = static Published.subscript.modify();
  v7 = v6;
  v8 = *v6;
  isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v7 = v8;
  if (!isUniquelyReferenced_nonNull_bridgeObject || v8 < 0 || (v8 & 0x4000000000000000) != 0)
  {
    v8 = sub_10057FAF8();
    *v7 = v8;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    *((v8 & 0xFFFFFFFFFFFFFF8) + 8 * a2 + 0x20) = a3;

    v5(&v10, 0);

    return;
  }

  __break(1u);
}

uint64_t sub_100389654(uint64_t a1)
{
  sub_100309BC4();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    [*(result + OBJC_IVAR___CHWorkoutDetailedBasicViewController_activityIndicator) stopAnimating];

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1003896D0(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v5 = *(a1 + 32);
  if (a2)
  {
    sub_1000059F8(0, &qword_1008EAC08, off_100832830);
    v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v6 = a3;
  v5(v4, a3);
}

void sub_100389774(unint64_t a1)
{
  v2 = type metadata accessor for StepType();
  v21 = *(v2 - 8);
  __chkstk_darwin(v2);
  v4 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100140278(&qword_1008EAC00, "N\t\v");
  __chkstk_darwin(v5 - 8);
  v7 = &v21 - v6;
  v8 = type metadata accessor for IntervalWorkoutKeyPath();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if ((v22 & 0xC000000000000001) == 0)
  {
    if ((a1 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*((v22 & 0xFFFFFFFFFFFFFF8) + 0x10) > a1)
    {
      v12 = *(v22 + 8 * a1 + 32);

      goto LABEL_5;
    }

    __break(1u);
LABEL_20:
    __break(1u);
    return;
  }

  v12 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_5:

  if (!*(v12 + 24))
  {
    v13 = objc_opt_self();
    if (!__OFADD__(a1, 1))
    {
      v14 = v13;
      v15 = [objc_allocWithZone(NSNumber) initWithInteger:a1 + 1];
      v16 = [v14 localizedStringFromNumber:v15 numberStyle:0];

      static String._unconditionallyBridgeFromObjectiveC(_:)();

      return;
    }

    goto LABEL_20;
  }

  swift_bridgeObjectRetain_n();
  IntervalWorkoutKeyPath.init(serializedString:)();
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_100389DAC(v7);
LABEL_14:
    String.workoutLocalized()();

    return;
  }

  (*(v9 + 32))(v11, v7, v8);
  v17 = sub_100388594();
  if (!v17)
  {
    (*(v9 + 8))(v11, v8);
    goto LABEL_14;
  }

  v18 = v17;

  v19 = IntervalWorkoutConfiguration.intervalWorkout.getter();

  IntervalWorkout.stepForKeyPath(_:)();
  WorkoutStep.displayName.getter();
  if (v20)
  {
  }

  else
  {
    WorkoutStep.stepType.getter();
    sub_10061F478();

    (*(v21 + 8))(v4, v2);
  }

  (*(v9 + 8))(v11, v8);
}

id sub_100389CBC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WorkoutDetailIntervalDataSource(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for WorkoutDetailIntervalDataSource(uint64_t a1)
{
  result = qword_1008EABF0;
  if (!qword_1008EABF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100389D9C(id a1)
{
  if (a1 != 1)
  {
  }
}

uint64_t sub_100389DAC(uint64_t a1)
{
  v2 = sub_100140278(&qword_1008EAC00, "N\t\v");
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_100389E44(id result)
{
  if (result != 1)
  {
    return result;
  }

  return result;
}

char *sub_100389E6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = [objc_opt_self() companionGraph];
  if (result)
  {
    v7 = result;
    v8 = OBJC_IVAR____TtC10FitnessApp56ActivitySharingFriendDetailCompetitionGraphTableViewCell_graphView;
    [result setTranslatesAutoresizingMaskIntoConstraints:0];
    *&v3[v8] = v7;
    if (a3)
    {
      v9 = String._bridgeToObjectiveC()();
    }

    else
    {
      v9 = 0;
    }

    v16.receiver = v3;
    v16.super_class = type metadata accessor for ActivitySharingFriendDetailCompetitionGraphTableViewCell();
    v10 = objc_msgSendSuper2(&v16, "initWithStyle:reuseIdentifier:", a1, v9);

    v11 = v10;
    v12 = [v11 contentView];
    [v12 addSubview:*&v11[OBJC_IVAR____TtC10FitnessApp56ActivitySharingFriendDetailCompetitionGraphTableViewCell_graphView]];

    v13 = objc_opt_self();
    v14 = [v11 contentView];
    UIView.constraintsPinningToEdgesOfView(_:supportingRTL:insets:leadingPriority:trailingPriority:topPriority:bottomPriority:)();

    sub_10019EC5C();
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v13 activateConstraints:isa];

    return v11;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_10038A15C(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for ActivitySharingFriendDetailCompetitionGraphTableViewCell();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t type metadata accessor for WorkoutReportTrackIssueView(uint64_t a1)
{
  result = qword_1008EAC98;
  if (!qword_1008EAC98)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10038A254(uint64_t a1)
{
  sub_10017B148(319);
  if (v1 <= 0x3F)
  {
    sub_10038A2D8(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_10038A2D8(uint64_t a1)
{
  if (!qword_1008EACA8)
  {
    type metadata accessor for TrackIssue(255);
    sub_10038FC04(&qword_1008E6690, &unk_1006D3E94);
    v1 = type metadata accessor for ObservedObject();
    if (!v2)
    {
      atomic_store(v1, &qword_1008EACA8);
    }
  }
}

uint64_t sub_10038A374@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v67 = a1;
  v87 = a2;
  v3 = type metadata accessor for NavigationBarItem.TitleDisplayMode();
  v85 = *(v3 - 8);
  v86 = v3;
  __chkstk_darwin(v3);
  v84 = &v66 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = sub_100140278(&qword_1008EAD00, &qword_1006EC4E0);
  __chkstk_darwin(v91);
  v77 = &v66 - v5;
  v6 = type metadata accessor for WorkoutReportTrackIssueView(0);
  v7 = *(v6 - 8);
  v76 = v6 - 8;
  v71 = v7;
  v70 = *(v7 + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v66 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100140278(&qword_1008E62D8, &unk_1006E5D10);
  v11 = *(v10 - 8);
  v80 = v10;
  v81 = v11;
  __chkstk_darwin(v10);
  v90 = &v66 - v12;
  v89 = type metadata accessor for InsetGroupedListStyle();
  v13 = *(v89 - 8);
  __chkstk_darwin(v89);
  v15 = &v66 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = sub_100140278(&qword_1008EAD08, &unk_1006EC4E8);
  v16 = *(v88 - 8);
  __chkstk_darwin(v88);
  v18 = &v66 - v17;
  v74 = sub_100140278(&qword_1008EACF8, &unk_1006EC4D0);
  v75 = *(v74 - 8);
  __chkstk_darwin(v74);
  v69 = &v66 - v19;
  v78 = sub_100140278(&qword_1008EACF0, &qword_1006EC4C8);
  v79 = *(v78 - 8);
  __chkstk_darwin(v78);
  v72 = &v66 - v20;
  v21 = sub_100140278(&qword_1008EACE0, &qword_1006EC4B8);
  v22 = *(v21 - 8);
  v82 = v21;
  v83 = v22;
  __chkstk_darwin(v21);
  v73 = &v66 - v23;
  v92 = a1;
  sub_100140278(&qword_1008EAD30, &unk_1006EC500);
  sub_10014A6B0(&qword_1008EAD38, &qword_1008EAD30, &unk_1006EC500, &protocol conformance descriptor for TupleView<A>);
  List<>.init(content:)();
  InsetGroupedListStyle.init()();
  v68 = sub_10014A6B0(&qword_1008EAD10, &qword_1008EAD08, &unk_1006EC4E8, &protocol conformance descriptor for List<A, B>);
  v24 = v88;
  v25 = v89;
  View.listStyle<A>(_:)();
  (*(v13 + 8))(v15, v25);
  (*(v16 + 8))(v18, v24);
  v26 = objc_opt_self();
  v27 = [v26 mainBundle];
  v28 = String._bridgeToObjectiveC()();
  v29 = [v27 localizedStringForKey:v28 value:0 table:0];

  v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v32 = v31;

  v93 = v30;
  v94 = v32;
  v33 = v67;
  sub_1002D11C8(v67, v9);
  v34 = (*(v71 + 80) + 16) & ~*(v71 + 80);
  v35 = swift_allocObject();
  sub_10038F4EC(v9, v35 + v34);
  sub_10000FCBC();
  Button<>.init<A>(_:action:)();
  v36 = [v26 mainBundle];
  v37 = String._bridgeToObjectiveC()();
  v38 = [v36 localizedStringForKey:v37 value:0 table:0];

  v39 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v41 = v40;

  v93 = v39;
  v94 = v41;
  sub_1002D11C8(v33, v9);
  v42 = swift_allocObject();
  sub_10038F4EC(v9, v42 + v34);
  v43 = v77;
  Button<>.init<A>(_:action:)();
  LOBYTE(v16) = sub_100143460(v44);
  KeyPath = swift_getKeyPath();
  v46 = swift_allocObject();
  *(v46 + 16) = (v16 & 1) == 0;
  v47 = (v43 + *(v91 + 36));
  *v47 = KeyPath;
  v47[1] = sub_1000526D4;
  v47[2] = v46;
  v93 = v88;
  v94 = v89;
  v95 = v68;
  v96 = &protocol witness table for InsetGroupedListStyle;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v49 = sub_10014A6B0(&qword_1008E62E0, &qword_1008E62D8, &unk_1006E5D10, &protocol conformance descriptor for Button<A>);
  v50 = sub_10038F400();
  v51 = v72;
  v52 = v90;
  v53 = v74;
  v54 = v80;
  v55 = v69;
  View.navigationBarItems<A, B>(leading:trailing:)();
  sub_10000EA04(v43, &qword_1008EAD00, &qword_1006EC4E0);
  (*(v81 + 8))(v52, v54);
  (*(v75 + 8))(v55, v53);
  v56 = v84;
  v57 = v85;
  v58 = v86;
  (*(v85 + 104))(v84, enum case for NavigationBarItem.TitleDisplayMode.inline(_:), v86);
  v93 = v53;
  v94 = v54;
  v95 = v91;
  v96 = OpaqueTypeConformance2;
  v97 = v49;
  v98 = v50;
  v59 = swift_getOpaqueTypeConformance2();
  v60 = v73;
  v61 = v78;
  View.navigationBarTitleDisplayMode(_:)();
  (*(v57 + 8))(v56, v58);
  (*(v79 + 8))(v51, v61);
  sub_100140278(&qword_1008EACE8, &qword_1006EC4C0);
  v93 = v61;
  v94 = v59;
  swift_getOpaqueTypeConformance2();
  v62 = sub_100141EEC(&qword_1008EAD20, &qword_1006EC4F8);
  v63 = sub_10014A6B0(&qword_1008EAD28, &qword_1008EAD20, &qword_1006EC4F8, &protocol conformance descriptor for ToolbarItem<A, B>);
  v93 = v62;
  v94 = v63;
  swift_getOpaqueTypeConformance2();
  v64 = v82;
  View.toolbar<A>(content:)();
  return (*(v83 + 8))(v60, v64);
}

uint64_t sub_10038AEA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v124 = a2;
  v120 = sub_100140278(&qword_1008EAD40, &qword_1006EC570);
  v118 = *(v120 - 8);
  __chkstk_darwin(v120);
  v105 = &v97 - v3;
  v4 = sub_100140278(&qword_1008EAD48, &qword_1006EC578);
  __chkstk_darwin(v4 - 8);
  v123 = &v97 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v122 = &v97 - v7;
  v116 = sub_100140278(&qword_1008EAD50, &qword_1006EC580);
  v126 = *(v116 - 8);
  __chkstk_darwin(v116);
  v103 = &v97 - v8;
  v9 = sub_100140278(&qword_1008EAD58, &qword_1006EC588);
  __chkstk_darwin(v9 - 8);
  v121 = &v97 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v132 = &v97 - v12;
  v115 = sub_100140278(&qword_1008EAD60, &qword_1006EC590);
  v114 = *(v115 - 8);
  __chkstk_darwin(v115);
  v102 = &v97 - v13;
  v14 = sub_100140278(&qword_1008EAD68, &qword_1006EC598);
  __chkstk_darwin(v14 - 8);
  v119 = &v97 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v130 = &v97 - v17;
  v113 = sub_100140278(&qword_1008EAD70, &qword_1006EC5A0);
  v112 = *(v113 - 8);
  __chkstk_darwin(v113);
  v101 = &v97 - v18;
  v19 = sub_100140278(&qword_1008EAD78, &qword_1006EC5A8);
  __chkstk_darwin(v19 - 8);
  v129 = &v97 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v128 = &v97 - v22;
  v98 = sub_100140278(&qword_1008EAD80, &qword_1006EC5B0);
  __chkstk_darwin(v98);
  v24 = &v97 - v23;
  v110 = sub_100140278(&qword_1008EAD88, &qword_1006EC5B8);
  v99 = *(v110 - 8);
  __chkstk_darwin(v110);
  v26 = &v97 - v25;
  v111 = sub_100140278(&qword_1008EAD90, &qword_1006EC5C0);
  v100 = *(v111 - 8);
  __chkstk_darwin(v111);
  v28 = &v97 - v27;
  v107 = sub_100140278(&qword_1008EAD98, &qword_1006EC5C8);
  __chkstk_darwin(v107);
  v109 = &v97 - v29;
  v30 = sub_100140278(&qword_1008DDAD0, &qword_1006EC5D0);
  __chkstk_darwin(v30);
  v32 = &v97 - v31;
  v106 = sub_100140278(&qword_1008EADA0, &qword_1006EC5D8);
  v104 = *(v106 - 8);
  __chkstk_darwin(v106);
  v34 = &v97 - v33;
  v108 = sub_100140278(&qword_1008EADA8, &qword_1006EC5E0);
  v35 = *(v108 - 8);
  __chkstk_darwin(v108);
  v37 = &v97 - v36;
  v38 = sub_100140278(&qword_1008EADB0, &qword_1006EC5E8);
  __chkstk_darwin(v38 - 8);
  v127 = &v97 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v40);
  v131 = &v97 - v41;
  v125 = *(a1 + *(type metadata accessor for WorkoutReportTrackIssueView(0) + 20) + 8);
  v42 = *(v125 + OBJC_IVAR____TtC10FitnessApp10TrackIssue_trackId);
  v117 = a1;
  v133 = a1;
  if (v42)
  {
    sub_10038CCBC(v32);
    sub_100140278(&qword_1008EADB8, &unk_1006EC5F0);
    sub_10038F77C();
    sub_10014A6B0(&qword_1008EADD8, &qword_1008EADB8, &unk_1006EC5F0, &protocol conformance descriptor for TupleView<A>);
    Section<>.init(header:content:)();
    static Color.white.getter();
    Color.opacity(_:)();

    static VerticalEdge.Set.bottom.getter();
    v43 = sub_10038F8EC(&qword_1008EADE8, &qword_1008EADA0, &qword_1006EC5D8, sub_10038F77C);
    v44 = v106;
    View.listRowSeparatorTint(_:edges:)();

    (*(v104 + 8))(v34, v44);
    v45 = v108;
    (*(v35 + 16))(v109, v37, v108);
    swift_storeEnumTagMultiPayload();
    v134 = v44;
    v135 = v43;
    swift_getOpaqueTypeConformance2();
    v46 = sub_10038F8EC(&qword_1008EADE0, &qword_1008EAD88, &qword_1006EC5B8, sub_10038F6F0);
    v134 = v110;
    v135 = v46;
    swift_getOpaqueTypeConformance2();
    _ConditionalContent<>.init(storage:)();
    (*(v35 + 8))(v37, v45);
  }

  else
  {
    sub_10038D8C4(v24);
    sub_100140278(&qword_1008EADB8, &unk_1006EC5F0);
    sub_10038F6F0();
    sub_10014A6B0(&qword_1008EADD8, &qword_1008EADB8, &unk_1006EC5F0, &protocol conformance descriptor for TupleView<A>);
    Section<>.init(header:content:)();
    static Color.white.getter();
    Color.opacity(_:)();

    static VerticalEdge.Set.bottom.getter();
    v47 = sub_10038F8EC(&qword_1008EADE0, &qword_1008EAD88, &qword_1006EC5B8, sub_10038F6F0);
    v48 = v110;
    View.listRowSeparatorTint(_:edges:)();

    (*(v99 + 8))(v26, v48);
    v49 = v100;
    v50 = v111;
    (*(v100 + 16))(v109, v28, v111);
    swift_storeEnumTagMultiPayload();
    v51 = sub_10038F8EC(&qword_1008EADE8, &qword_1008EADA0, &qword_1006EC5D8, sub_10038F77C);
    v134 = v106;
    v135 = v51;
    swift_getOpaqueTypeConformance2();
    v134 = v48;
    v135 = v47;
    swift_getOpaqueTypeConformance2();
    _ConditionalContent<>.init(storage:)();
    (*(v49 + 8))(v28, v50);
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v53 = v128;
  v54 = v117;
  v55 = v116;
  v56 = v115;
  v57 = v114;
  if (v134 == 2)
  {
    v61 = 1;
    v62 = v130;
    v59 = v113;
  }

  else
  {
    __chkstk_darwin(v52);
    *(&v97 - 2) = v54;
    sub_100140278(&qword_1008EAE18, &qword_1006EC6D0);
    sub_10038F9C8();
    v58 = v101;
    Section<>.init(content:)();
    v59 = v113;
    v60 = v58 + *(v113 + 36);
    *(v60 + 32) = 0;
    *v60 = 0u;
    *(v60 + 16) = 0u;
    sub_10038FA80(v58, v53);
    v61 = 0;
    v62 = v130;
  }

  v63 = 1;
  (*(v112 + 56))(v53, v61, 1, v59);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v134 != 2 && (v134 & 1) == 0)
  {
    __chkstk_darwin(v64);
    *(&v97 - 2) = v54;
    sub_10038E194(&v134);
    sub_100140278(&qword_1008E43C0, &qword_1006E1B00);
    sub_100262FE8();
    v65 = v102;
    Section<>.init(header:content:)();
    (*(v57 + 32))(v62, v65, v56);
    v63 = 0;
  }

  v66 = 1;
  (*(v57 + 56))(v62, v63, 1, v56);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v134 != 2 && (v134 & 1) == 0)
  {
    __chkstk_darwin(v67);
    *(&v97 - 2) = v54;
    sub_100140278(&qword_1008EAE08, &unk_1006EC6B0);
    sub_10014A6B0(&qword_1008EAE10, &qword_1008EAE08, &unk_1006EC6B0, &protocol conformance descriptor for Picker<A, B, C>);
    v68 = v103;
    Section<>.init(content:)();
    (*(v126 + 32))(v132, v68, v55);
    v66 = 0;
  }

  (*(v126 + 56))(v132, v66, 1, v55);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v134 == 2 && (swift_getKeyPath(), swift_getKeyPath(), static Published.subscript.getter(), , v69 = , v134 == 2))
  {
    v70 = v53;
    v71 = 1;
    v72 = v122;
    v73 = v120;
    v74 = v118;
  }

  else
  {
    v70 = v53;
    __chkstk_darwin(v69);
    *(&v97 - 2) = v54;
    v75 = [objc_opt_self() mainBundle];
    v76 = String._bridgeToObjectiveC()();
    v77 = [v75 localizedStringForKey:v76 value:0 table:0];

    v78 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v80 = v79;

    v134 = v78;
    v135 = v80;
    sub_10000FCBC();
    v134 = Text.init<A>(_:)();
    v135 = v81;
    v136 = v82 & 1;
    v137 = v83;
    sub_100140278(&qword_1008EADF8, &qword_1006EC6A8);
    sub_10014A6B0(&qword_1008EAE00, &qword_1008EADF8, &qword_1006EC6A8, &protocol conformance descriptor for ZStack<A>);
    v84 = v105;
    Section<>.init(footer:content:)();
    v74 = v118;
    v72 = v122;
    v85 = v84;
    v73 = v120;
    (*(v118 + 32))(v122, v85, v120);
    v71 = 0;
  }

  (*(v74 + 56))(v72, v71, 1, v73);
  v86 = v127;
  sub_10001B104(v131, v127, &qword_1008EADB0, &qword_1006EC5E8);
  v87 = v129;
  sub_10001B104(v70, v129, &qword_1008EAD78, &qword_1006EC5A8);
  v88 = v62;
  v89 = v119;
  sub_10001B104(v88, v119, &qword_1008EAD68, &qword_1006EC598);
  v90 = v121;
  sub_10001B104(v132, v121, &qword_1008EAD58, &qword_1006EC588);
  v91 = v123;
  sub_10001B104(v72, v123, &qword_1008EAD48, &qword_1006EC578);
  v92 = v86;
  v93 = v124;
  sub_10001B104(v92, v124, &qword_1008EADB0, &qword_1006EC5E8);
  v94 = v72;
  v95 = sub_100140278(&qword_1008EADF0, &qword_1006EC6A0);
  sub_10001B104(v87, v93 + v95[12], &qword_1008EAD78, &qword_1006EC5A8);
  sub_10001B104(v89, v93 + v95[16], &qword_1008EAD68, &qword_1006EC598);
  sub_10001B104(v90, v93 + v95[20], &qword_1008EAD58, &qword_1006EC588);
  sub_10001B104(v91, v93 + v95[24], &qword_1008EAD48, &qword_1006EC578);
  sub_10000EA04(v94, &qword_1008EAD48, &qword_1006EC578);
  sub_10000EA04(v132, &qword_1008EAD58, &qword_1006EC588);
  sub_10000EA04(v130, &qword_1008EAD68, &qword_1006EC598);
  sub_10000EA04(v128, &qword_1008EAD78, &qword_1006EC5A8);
  sub_10000EA04(v131, &qword_1008EADB0, &qword_1006EC5E8);
  sub_10000EA04(v91, &qword_1008EAD48, &qword_1006EC578);
  sub_10000EA04(v90, &qword_1008EAD58, &qword_1006EC588);
  sub_10000EA04(v89, &qword_1008EAD68, &qword_1006EC598);
  sub_10000EA04(v129, &qword_1008EAD78, &qword_1006EC5A8);
  return sub_10000EA04(v127, &qword_1008EADB0, &qword_1006EC5E8);
}

uint64_t sub_10038C3E0@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v33 = a2;
  v3 = type metadata accessor for WorkoutReportTrackIssueView(0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3 - 8);
  v29[1] = v5;
  v6 = v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100140278(&qword_1008EAE38, &qword_1006EC740);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v32 = v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v31 = v29 - v11;
  __chkstk_darwin(v12);
  v30 = v29 - v13;
  __chkstk_darwin(v14);
  v16 = v29 - v15;
  v29[0] = a1;
  sub_1002D11C8(a1, v6);
  v17 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v18 = swift_allocObject();
  sub_10038F4EC(v6, v18 + v17);
  v35 = a1;
  sub_100140278(&qword_1008EAE40, &qword_1006EC748);
  sub_10014A6B0(&qword_1008EAE48, &qword_1008EAE40, &qword_1006EC748, &protocol conformance descriptor for HStack<A>);
  Button.init(action:label:)();
  v19 = v29[0];
  sub_1002D11C8(v29[0], v6);
  v20 = swift_allocObject();
  sub_10038F4EC(v6, v20 + v17);
  v34 = v19;
  v21 = v30;
  Button.init(action:label:)();
  v22 = *(v8 + 16);
  v23 = v31;
  v22(v31, v16, v7);
  v24 = v32;
  v22(v32, v21, v7);
  v25 = v33;
  v22(v33, v23, v7);
  v26 = sub_100140278(&qword_1008EAE50, &qword_1006EC750);
  v22(&v25[*(v26 + 48)], v24, v7);
  v27 = *(v8 + 8);
  v27(v21, v7);
  v27(v16, v7);
  v27(v24, v7);
  return (v27)(v23, v7);
}

uint64_t sub_10038C7C4@<X0>(uint64_t a2@<X8>)
{
  v3 = [objc_opt_self() mainBundle];
  v4 = String._bridgeToObjectiveC()();
  v5 = [v3 localizedStringForKey:v4 value:0 table:0];

  LOBYTE(v4) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v26 = v4;
  sub_10000FCBC();
  v6 = Text.init<A>(_:)();
  v8 = v7;
  LOBYTE(v5) = v9;
  static Font.subheadline.getter();
  v10 = Text.font(_:)();
  v12 = v11;
  v14 = v13;

  sub_10004642C(v6, v8, v5 & 1);

  static Color.white.getter();
  v15 = Text.foregroundColor(_:)();
  v17 = v16;
  v19 = v18;
  v21 = v20;

  sub_10004642C(v10, v12, v14 & 1);

  type metadata accessor for WorkoutReportTrackIssueView(0);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v22 = 0;
  v23 = 0;
  if (v26 != 2 && (v26 & 1) == 0)
  {
    v23 = Image.init(systemName:)();

    v22 = 1;
  }

  v24 = v19 & 1;
  sub_10006965C(v15, v17, v24);
  *a2 = v15;
  *(a2 + 8) = v17;
  *(a2 + 16) = v24;
  *(a2 + 24) = v21;
  *(a2 + 32) = 0;
  *(a2 + 40) = v22;
  *(a2 + 48) = v23;

  sub_10004642C(v15, v17, v24);
}

uint64_t sub_10038CA44@<X0>(uint64_t a2@<X8>)
{
  v3 = [objc_opt_self() mainBundle];
  v4 = String._bridgeToObjectiveC()();
  v5 = [v3 localizedStringForKey:v4 value:0 table:0];

  LOBYTE(v4) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v26 = v4;
  sub_10000FCBC();
  v6 = Text.init<A>(_:)();
  v8 = v7;
  LOBYTE(v5) = v9;
  static Font.subheadline.getter();
  v10 = Text.font(_:)();
  v12 = v11;
  v14 = v13;

  sub_10004642C(v6, v8, v5 & 1);

  static Color.white.getter();
  v15 = Text.foregroundColor(_:)();
  v17 = v16;
  v19 = v18;
  v21 = v20;

  sub_10004642C(v10, v12, v14 & 1);

  type metadata accessor for WorkoutReportTrackIssueView(0);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v22 = 0;
  v23 = 0;
  if (v26)
  {
    v23 = Image.init(systemName:)();

    v22 = 1;
  }

  v24 = v19 & 1;
  sub_10006965C(v15, v17, v24);
  *a2 = v15;
  *(a2 + 8) = v17;
  *(a2 + 16) = v24;
  *(a2 + 24) = v21;
  *(a2 + 32) = 0;
  *(a2 + 40) = v22;
  *(a2 + 48) = v23;

  sub_10004642C(v15, v17, v24);
}

uint64_t sub_10038CCBC@<X0>(uint64_t a1@<X8>)
{
  v2 = [objc_opt_self() mainBundle];
  v3 = String._bridgeToObjectiveC()();
  v4 = [v2 localizedStringForKey:v3 value:0 table:0];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_10000FCBC();
  v5 = Text.init<A>(_:)();
  v7 = v6;
  v9 = v8;
  static Font.body.getter();
  v10 = Text.font(_:)();
  v12 = v11;
  v14 = v13;
  v16 = v15;

  sub_10004642C(v5, v7, v9 & 1);

  v17 = (a1 + *(sub_100140278(&qword_1008DDAD8, &unk_1006D6B40) + 36));
  v18 = *(sub_100140278(&qword_1008DDAE0, &unk_1006EC600) + 28);
  v19 = type metadata accessor for Text.Case();
  (*(*(v19 - 8) + 56))(v17 + v18, 1, 1, v19);
  *v17 = swift_getKeyPath();
  *a1 = v10;
  *(a1 + 8) = v12;
  *(a1 + 16) = v14 & 1;
  *(a1 + 24) = v16;
  v20 = static Color.white.getter();
  KeyPath = swift_getKeyPath();
  result = sub_100140278(&qword_1008DDAD0, &qword_1006EC5D0);
  v23 = (a1 + *(result + 36));
  *v23 = KeyPath;
  v23[1] = v20;
  return result;
}

uint64_t sub_10038CED0@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v33 = a2;
  v3 = type metadata accessor for WorkoutReportTrackIssueView(0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3 - 8);
  v29[1] = v5;
  v6 = v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100140278(&qword_1008EAE38, &qword_1006EC740);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v32 = v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v31 = v29 - v11;
  __chkstk_darwin(v12);
  v30 = v29 - v13;
  __chkstk_darwin(v14);
  v16 = v29 - v15;
  v29[0] = a1;
  sub_1002D11C8(a1, v6);
  v17 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v18 = swift_allocObject();
  sub_10038F4EC(v6, v18 + v17);
  v35 = a1;
  sub_100140278(&qword_1008EAE40, &qword_1006EC748);
  sub_10014A6B0(&qword_1008EAE48, &qword_1008EAE40, &qword_1006EC748, &protocol conformance descriptor for HStack<A>);
  Button.init(action:label:)();
  v19 = v29[0];
  sub_1002D11C8(v29[0], v6);
  v20 = swift_allocObject();
  sub_10038F4EC(v6, v20 + v17);
  v34 = v19;
  v21 = v30;
  Button.init(action:label:)();
  v22 = *(v8 + 16);
  v23 = v31;
  v22(v31, v16, v7);
  v24 = v32;
  v22(v32, v21, v7);
  v25 = v33;
  v22(v33, v23, v7);
  v26 = sub_100140278(&qword_1008EAE50, &qword_1006EC750);
  v22(&v25[*(v26 + 48)], v24, v7);
  v27 = *(v8 + 8);
  v27(v21, v7);
  v27(v16, v7);
  v27(v24, v7);
  return (v27)(v23, v7);
}

uint64_t sub_10038D2B4@<X0>(uint64_t a2@<X8>)
{
  v3 = [objc_opt_self() mainBundle];
  v4 = String._bridgeToObjectiveC()();
  v5 = [v3 localizedStringForKey:v4 value:0 table:0];

  LOBYTE(v4) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v26 = v4;
  sub_10000FCBC();
  v6 = Text.init<A>(_:)();
  v8 = v7;
  LOBYTE(v5) = v9;
  static Font.subheadline.getter();
  v10 = Text.font(_:)();
  v12 = v11;
  v14 = v13;

  sub_10004642C(v6, v8, v5 & 1);

  static Color.white.getter();
  v15 = Text.foregroundColor(_:)();
  v17 = v16;
  v19 = v18;
  v21 = v20;

  sub_10004642C(v10, v12, v14 & 1);

  type metadata accessor for WorkoutReportTrackIssueView(0);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v22 = 0;
  v23 = 0;
  if (v26 != 2 && (v26 & 1) == 0)
  {
    v23 = Image.init(systemName:)();

    v22 = 1;
  }

  v24 = v19 & 1;
  sub_10006965C(v15, v17, v24);
  *a2 = v15;
  *(a2 + 8) = v17;
  *(a2 + 16) = v24;
  *(a2 + 24) = v21;
  *(a2 + 32) = 0;
  *(a2 + 40) = v22;
  *(a2 + 48) = v23;

  sub_10004642C(v15, v17, v24);
}

uint64_t sub_10038D534(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  type metadata accessor for WorkoutReportTrackIssueView(0);
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

__n128 sub_10038D5BC@<Q0>(uint64_t a1@<X0>, void (*a2)(__int128 *__return_ptr, uint64_t)@<X1>, uint64_t a3@<X8>)
{
  v6 = static VerticalAlignment.center.getter();
  v18 = 1;
  a2(&v13, a1);
  v7 = v14;
  v8 = v15;
  v9 = v17;
  result = v16;
  v11 = v13;
  v12 = v18;
  *a3 = v6;
  *(a3 + 8) = 0;
  *(a3 + 16) = v12;
  *(a3 + 24) = v11;
  *(a3 + 40) = v7;
  *(a3 + 48) = v8;
  *(a3 + 56) = result;
  *(a3 + 72) = v9;
  return result;
}

uint64_t sub_10038D64C@<X0>(uint64_t a2@<X8>)
{
  v3 = [objc_opt_self() mainBundle];
  v4 = String._bridgeToObjectiveC()();
  v5 = [v3 localizedStringForKey:v4 value:0 table:0];

  LOBYTE(v4) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v26 = v4;
  sub_10000FCBC();
  v6 = Text.init<A>(_:)();
  v8 = v7;
  LOBYTE(v5) = v9;
  static Font.subheadline.getter();
  v10 = Text.font(_:)();
  v12 = v11;
  v14 = v13;

  sub_10004642C(v6, v8, v5 & 1);

  static Color.white.getter();
  v15 = Text.foregroundColor(_:)();
  v17 = v16;
  v19 = v18;
  v21 = v20;

  sub_10004642C(v10, v12, v14 & 1);

  type metadata accessor for WorkoutReportTrackIssueView(0);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v22 = 0;
  v23 = 0;
  if (v26)
  {
    v23 = Image.init(systemName:)();

    v22 = 1;
  }

  v24 = v19 & 1;
  sub_10006965C(v15, v17, v24);
  *a2 = v15;
  *(a2 + 8) = v17;
  *(a2 + 16) = v24;
  *(a2 + 24) = v21;
  *(a2 + 32) = 0;
  *(a2 + 40) = v22;
  *(a2 + 48) = v23;

  sub_10004642C(v15, v17, v24);
}

uint64_t sub_10038D8C4@<X0>(uint64_t a1@<X8>)
{
  v2 = [objc_opt_self() mainBundle];
  v3 = String._bridgeToObjectiveC()();
  v4 = [v2 localizedStringForKey:v3 value:0 table:0];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_10000FCBC();
  v5 = Text.init<A>(_:)();
  v7 = v6;
  v9 = v8;
  static Font.body.getter();
  v10 = Text.font(_:)();
  v12 = v11;
  v14 = v13;
  v16 = v15;

  sub_10004642C(v5, v7, v9 & 1);

  v17 = (a1 + *(sub_100140278(&qword_1008DDAD8, &unk_1006D6B40) + 36));
  v18 = *(sub_100140278(&qword_1008DDAE0, &unk_1006EC600) + 28);
  v19 = type metadata accessor for Text.Case();
  (*(*(v19 - 8) + 56))(v17 + v18, 1, 1, v19);
  *v17 = swift_getKeyPath();
  *a1 = v10;
  *(a1 + 8) = v12;
  *(a1 + 16) = v14 & 1;
  *(a1 + 24) = v16;
  v20 = static Color.white.getter();
  KeyPath = swift_getKeyPath();
  v22 = (a1 + *(sub_100140278(&qword_1008DDAD0, &qword_1006EC5D0) + 36));
  *v22 = KeyPath;
  v22[1] = v20;
  LOBYTE(v20) = static Edge.Set.bottom.getter();
  EdgeInsets.init(_all:)();
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  result = sub_100140278(&qword_1008EAD80, &qword_1006EC5B0);
  v32 = a1 + *(result + 36);
  *v32 = v20;
  *(v32 + 8) = v24;
  *(v32 + 16) = v26;
  *(v32 + 24) = v28;
  *(v32 + 32) = v30;
  *(v32 + 40) = 0;
  return result;
}

double sub_10038DB34@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_100140278(&qword_1008EAE58, &qword_1006EC758);
  __chkstk_darwin(v4 - 8);
  v6 = v14 - v5;
  v7 = type metadata accessor for MapInteractionModes();
  __chkstk_darwin(v7 - 8);
  v8 = *(a1 + *(type metadata accessor for WorkoutReportTrackIssueView(0) + 20) + 8);
  type metadata accessor for TrackIssue(0);
  sub_10038FC04(&qword_1008E6690, &unk_1006D3E94);
  ObservedObject.projectedValue.getter();
  swift_getKeyPath();
  ObservedObject.Wrapper.subscript.getter();

  v18 = v15;
  v19 = v16;
  v20 = v17;
  static MapInteractionModes.all.getter();
  v9 = sub_100140278(&qword_1008EAE60, &unk_1006EC788);
  (*(*(v9 - 8) + 56))(v6, 1, 1, v9);
  sub_100140278(&unk_1008E4E20, &qword_1006D5040);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1006D4E70;
  *(v10 + 32) = v8;
  v14[1] = v10;

  sub_100140278(&qword_1008EAE68, &qword_1006EC798);
  sub_100140278(&qword_1008EAE70, &qword_1006EC7A0);
  sub_10014A6B0(&qword_1008EAE78, &qword_1008EAE68, &qword_1006EC798, &protocol conformance descriptor for [A]);
  sub_10014A6B0(&qword_1008EAE80, &qword_1008EAE70, &qword_1006EC7A0, &protocol conformance descriptor for MapAnnotation<A>);
  sub_10038FC04(&qword_1008EAE88, &unk_1006D3ECC);
  Map.init<A, B>(coordinateRegion:interactionModes:showsUserLocation:userTrackingMode:annotationItems:annotationContent:)();
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v11 = (a2 + *(sub_100140278(&qword_1008EAE18, &qword_1006EC6D0) + 36));
  v12 = v16;
  *v11 = v15;
  v11[1] = v12;
  result = *&v17;
  v11[2] = v17;
  return result;
}

uint64_t sub_10038DE90(void *a1)
{
  v1 = (*a1 + OBJC_IVAR____TtC10FitnessApp10TrackIssue_issueLocation);
  v2 = *v1;
  v3 = v1[1];
  v4 = sub_10038FC48();
  v5.n128_u64[0] = 0.5;
  v6.n128_u64[0] = 0.5;
  v7.n128_u64[0] = v2;
  v8.n128_u64[0] = v3;

  return MapAnnotation.init(coordinate:anchorPoint:content:)(ASFriendListDisplayMode.id.getter, 0, &type metadata for RAPMapMarker, v4, v7, v8, v5, v6);
}

uint64_t sub_10038DF1C@<X0>(uint64_t a2@<X8>)
{
  v3 = objc_opt_self();
  v4 = [v3 mainBundle];
  v5 = String._bridgeToObjectiveC()();
  v6 = [v4 localizedStringForKey:v5 value:0 table:0];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  type metadata accessor for WorkoutReportTrackIssueView(0);
  type metadata accessor for TrackIssue(0);
  sub_10038FC04(&qword_1008E6690, &unk_1006D3E94);
  ObservedObject.projectedValue.getter();
  swift_getKeyPath();
  ObservedObject.Wrapper.subscript.getter();

  v7 = [v3 mainBundle];
  v8 = String._bridgeToObjectiveC()();
  v9 = [v7 localizedStringForKey:v8 value:0 table:0];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_10000FCBC();
  Text.init<A>(_:)();
  TextField<>.init<A>(_:text:prompt:)();
  v10 = static Font.subheadline.getter();
  KeyPath = swift_getKeyPath();
  result = sub_100140278(&qword_1008E43C0, &qword_1006E1B00);
  v13 = (a2 + *(result + 36));
  *v13 = KeyPath;
  v13[1] = v10;
  return result;
}

uint64_t sub_10038E194@<X0>(uint64_t a1@<X8>)
{
  v2 = [objc_opt_self() mainBundle];
  v3 = String._bridgeToObjectiveC()();
  v4 = [v2 localizedStringForKey:v3 value:0 table:0];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_10000FCBC();
  v5 = Text.init<A>(_:)();
  v7 = v6;
  LOBYTE(v4) = v8;
  static Font.caption.getter();
  v9 = Text.font(_:)();
  v11 = v10;
  v13 = v12;

  sub_10004642C(v5, v7, v4 & 1);

  static Color.secondary.getter();
  v14 = Text.foregroundColor(_:)();
  v16 = v15;
  v18 = v17;
  v20 = v19;

  sub_10004642C(v9, v11, v13 & 1);

  *a1 = v14;
  *(a1 + 8) = v16;
  *(a1 + 16) = v18 & 1;
  *(a1 + 24) = v20;
  return result;
}

uint64_t sub_10038E338(uint64_t a1)
{
  v1 = [objc_opt_self() mainBundle];
  v2 = String._bridgeToObjectiveC()();
  v3 = [v1 localizedStringForKey:v2 value:0 table:0];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  type metadata accessor for WorkoutReportTrackIssueView(0);
  type metadata accessor for TrackIssue(0);
  sub_10038FC04(&qword_1008E6690, &unk_1006D3E94);
  ObservedObject.projectedValue.getter();
  swift_getKeyPath();
  ObservedObject.Wrapper.subscript.getter();

  sub_100140278(&qword_1008EAE98, &qword_1006EC828);
  sub_10038FC9C();
  sub_10000FCBC();
  return Picker<>.init<A>(_:selection:content:)();
}

uint64_t sub_10038E508()
{
  sub_100140278(&qword_1008E4520, &qword_1006EC830);
  swift_getOpaqueTypeConformance2();
  return ForEach<>.init(_:content:)();
}

void sub_10038E5C0(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = objc_opt_self();
  v5 = [objc_allocWithZone(NSNumber) initWithInteger:a1];
  v6 = [v4 localizedStringFromNumber:v5 numberStyle:0];

  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;

  *a2 = v7;
  *(a2 + 8) = v9;
  *(a2 + 16) = 0;
  *(a2 + 24) = _swiftEmptyArrayStorage;
  *(a2 + 32) = a1;
  *(a2 + 40) = 1;
}

uint64_t sub_10038E67C@<X0>(uint64_t *a2@<X8>)
{
  *a2 = static Alignment.topLeading.getter();
  a2[1] = v3;
  v4 = sub_100140278(&qword_1008EAEA8, &qword_1006EC838);
  return sub_10038E6CC(a2 + *(v4 + 44));
}

uint64_t sub_10038E6CC@<X0>(uint64_t a2@<X8>)
{
  v37 = a2;
  v2 = sub_100140278(&qword_1008EAEB0, &qword_1006EC840);
  v3 = v2 - 8;
  __chkstk_darwin(v2);
  v5 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v35 - v7;
  type metadata accessor for WorkoutReportTrackIssueView(0);
  type metadata accessor for TrackIssue(0);
  sub_10038FC04(&qword_1008E6690, &unk_1006D3E94);
  ObservedObject.projectedValue.getter();
  swift_getKeyPath();
  ObservedObject.Wrapper.subscript.getter();

  TextEditor.init(text:)();
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v9 = &v8[*(sub_100140278(&qword_1008EAEB8, &qword_1006EC870) + 36)];
  v10 = v41;
  *v9 = v40;
  *(v9 + 1) = v10;
  *(v9 + 2) = v42;
  *&v8[*(v3 + 44)] = xmmword_1006EC410;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  sub_10000FCBC();
  v11 = StringProtocol.isEmptyOrWhiteSpace.getter();

  v12 = 0;
  v13 = 0;
  v14 = 0;
  v15 = 0;
  if (v11)
  {
    v16 = [objc_opt_self() mainBundle];
    v17 = String._bridgeToObjectiveC()();
    v18 = [v16 localizedStringForKey:v17 value:0 table:0];

    v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v21 = v20;

    v38 = v19;
    v39 = v21;
    v22 = Text.init<A>(_:)();
    v24 = v23;
    v26 = v25;
    v36 = v5;
    v27 = [objc_opt_self() tertiaryLabelColor];
    Color.init(_:)();
    v12 = Text.foregroundColor(_:)();
    v13 = v28;
    v30 = v29;
    v15 = v31;

    sub_10004642C(v22, v24, v26 & 1);
    v5 = v36;

    v14 = v30 & 1;
    sub_10006965C(v12, v13, v30 & 1);
  }

  sub_10001B104(v8, v5, &qword_1008EAEB0, &qword_1006EC840);
  v32 = v37;
  sub_10001B104(v5, v37, &qword_1008EAEB0, &qword_1006EC840);
  v33 = (v32 + *(sub_100140278(&qword_1008EAEC0, &qword_1006EC898) + 48));
  sub_1001E53F8(v12, v13, v14, v15);
  sub_1001E543C(v12, v13, v14, v15);
  *v33 = v12;
  v33[1] = v13;
  v33[2] = v14;
  v33[3] = v15;
  sub_10000EA04(v8, &qword_1008EAEB0, &qword_1006EC840);
  sub_1001E543C(v12, v13, v14, v15);
  return sub_10000EA04(v5, &qword_1008EAEB0, &qword_1006EC840);
}

uint64_t sub_10038EB0C(uint64_t a1)
{
  v16 = type metadata accessor for EnvironmentValues();
  v2 = *(v16 - 8);
  __chkstk_darwin(v16);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100140278(&qword_1008EE800, &qword_1006D7580);
  __chkstk_darwin(v5);
  v7 = &v15 - v6;
  v8 = type metadata accessor for DismissAction();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10001B104(a1, v7, &qword_1008EE800, &qword_1006D7580);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v9 + 32))(v11, v7, v8);
  }

  else
  {
    v12 = static os_log_type_t.fault.getter();
    v13 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)(v12, &_mh_execute_header, v13, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, _swiftEmptyArrayStorage);

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v2 + 8))(v4, v16);
  }

  DismissAction.callAsFunction()();
  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_10038ED88()
{
  v0 = type metadata accessor for DismissAction();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for WorkoutReportTrackIssueView(0);
  sub_1001437D0(v4);
  sub_100487CFC(v3);
  DismissAction.callAsFunction()();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_10038EE78()
{
  v0 = type metadata accessor for ToolbarItemPlacement();
  __chkstk_darwin(v0 - 8);
  v1 = sub_100140278(&qword_1008EAD20, &qword_1006EC4F8);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v6 - v3;
  static ToolbarItemPlacement.principal.getter();
  sub_100140278(&qword_1008DD720, &unk_1006E0050);
  sub_10016DE84();
  ToolbarItem<>.init(placement:content:)();
  sub_10014A6B0(&qword_1008EAD28, &qword_1008EAD20, &qword_1006EC4F8, &protocol conformance descriptor for ToolbarItem<A, B>);
  static ToolbarContentBuilder.buildBlock<A>(_:)();
  return (*(v2 + 8))(v4, v1);
}

uint64_t sub_10038F024@<X0>(uint64_t a1@<X8>)
{
  v2 = [objc_opt_self() mainBundle];
  v3 = String._bridgeToObjectiveC()();
  v4 = [v2 localizedStringForKey:v3 value:0 table:0];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_10000FCBC();
  v5 = Text.init<A>(_:)();
  v7 = v6;
  LOBYTE(v4) = v8;
  v10 = v9;
  result = swift_getKeyPath();
  *a1 = v5;
  *(a1 + 8) = v7;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v10;
  *(a1 + 32) = result;
  *(a1 + 40) = 1;
  return result;
}

uint64_t sub_10038F134()
{
  sub_100140278(&qword_1008EACD8, &qword_1006EC4B0);
  sub_100141EEC(&qword_1008EACE0, &qword_1006EC4B8);
  sub_100141EEC(&qword_1008EACE8, &qword_1006EC4C0);
  sub_100141EEC(&qword_1008EACF0, &qword_1006EC4C8);
  sub_100141EEC(&qword_1008EACF8, &unk_1006EC4D0);
  sub_100141EEC(&qword_1008E62D8, &unk_1006E5D10);
  sub_100141EEC(&qword_1008EAD00, &qword_1006EC4E0);
  sub_100141EEC(&qword_1008EAD08, &unk_1006EC4E8);
  type metadata accessor for InsetGroupedListStyle();
  sub_10014A6B0(&qword_1008EAD10, &qword_1008EAD08, &unk_1006EC4E8, &protocol conformance descriptor for List<A, B>);
  swift_getOpaqueTypeConformance2();
  sub_10014A6B0(&qword_1008E62E0, &qword_1008E62D8, &unk_1006E5D10, &protocol conformance descriptor for Button<A>);
  sub_10038F400();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  sub_100141EEC(&qword_1008EAD20, &qword_1006EC4F8);
  sub_10014A6B0(&qword_1008EAD28, &qword_1008EAD20, &qword_1006EC4F8, &protocol conformance descriptor for ToolbarItem<A, B>);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return NavigationView.init(content:)();
}

unint64_t sub_10038F400()
{
  result = qword_1008EAD18;
  if (!qword_1008EAD18)
  {
    sub_100141EEC(&qword_1008EAD00, &qword_1006EC4E0);
    sub_10014A6B0(&qword_1008E62E0, &qword_1008E62D8, &unk_1006E5D10, &protocol conformance descriptor for Button<A>);
    sub_10014A6B0(&qword_1008E2BC8, &qword_1008E2BD0, &qword_1006DFD40, &protocol conformance descriptor for _EnvironmentKeyTransformModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008EAD18);
  }

  return result;
}

uint64_t sub_10038F4EC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WorkoutReportTrackIssueView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10038F580(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for WorkoutReportTrackIssueView(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t sub_10038F5F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10038FE08();

  return static UIViewRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_10038F65C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10038FE08();

  return static UIViewRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_10038F6C0(uint64_t a1)
{
  sub_10038FE08();
  UIViewRepresentable.body.getter();
  __break(1u);
}

unint64_t sub_10038F6F0()
{
  result = qword_1008EADC0;
  if (!qword_1008EADC0)
  {
    sub_100141EEC(&qword_1008EAD80, &qword_1006EC5B0);
    sub_10038F77C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008EADC0);
  }

  return result;
}

unint64_t sub_10038F77C()
{
  result = qword_1008EADC8;
  if (!qword_1008EADC8)
  {
    sub_100141EEC(&qword_1008DDAD0, &qword_1006EC5D0);
    sub_10038F834();
    sub_10014A6B0(&qword_1008E44F8, &qword_1008E4500, &qword_1006E1D10, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008EADC8);
  }

  return result;
}

unint64_t sub_10038F834()
{
  result = qword_1008EADD0;
  if (!qword_1008EADD0)
  {
    sub_100141EEC(&qword_1008DDAD8, &unk_1006D6B40);
    sub_10014A6B0(&qword_1008E9D48, &qword_1008DDAE0, &unk_1006EC600, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008EADD0);
  }

  return result;
}

uint64_t sub_10038F8EC(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_100141EEC(a2, a3);
    a4();
    sub_10014A6B0(&qword_1008EADD8, &qword_1008EADB8, &unk_1006EC5F0, &protocol conformance descriptor for TupleView<A>);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10038F9C8()
{
  result = qword_1008EAE20;
  if (!qword_1008EAE20)
  {
    sub_100141EEC(&qword_1008EAE18, &qword_1006EC6D0);
    sub_10014A6B0(&qword_1008EAE28, &qword_1008EAE30, &qword_1006EC6D8, &protocol conformance descriptor for Map<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008EAE20);
  }

  return result;
}

uint64_t sub_10038FA80(uint64_t a1, uint64_t a2)
{
  v4 = sub_100140278(&qword_1008EAD70, &qword_1006EC5A0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10038FC04(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for TrackIssue(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10038FC48()
{
  result = qword_1008EAE90;
  if (!qword_1008EAE90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008EAE90);
  }

  return result;
}

unint64_t sub_10038FC9C()
{
  result = qword_1008EAEA0;
  if (!qword_1008EAEA0)
  {
    sub_100141EEC(&qword_1008EAE98, &qword_1006EC828);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008EAEA0);
  }

  return result;
}

unint64_t sub_10038FE08()
{
  result = qword_1008EAED8;
  if (!qword_1008EAED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008EAED8);
  }

  return result;
}

id sub_10038FE5C()
{
  v0 = [objc_allocWithZone(MKMarkerAnnotationView) init];
  v1 = objc_opt_self();
  v2 = [v1 systemBlueColor];
  [v0 setMarkerTintColor:v2];

  v3 = String._bridgeToObjectiveC()();
  v4 = [objc_opt_self() systemImageNamed:v3];

  [v0 setGlyphImage:v4];
  v5 = [v1 blackColor];
  [v0 setGlyphTintColor:v5];

  return v0;
}

void sub_10038FF78(int a1, _BOOL8 a2, unsigned int a3)
{
  v4 = v3;
  v83 = a3;
  v82 = a2;
  v6 = type metadata accessor for AttributeContainer();
  __chkstk_darwin(v6 - 8);
  v85 = &v64 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Date();
  v80 = *(v8 - 8);
  v81 = v8;
  __chkstk_darwin(v8);
  v79 = &v64 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Calendar.Component();
  v77 = *(v10 - 8);
  v78 = v10;
  __chkstk_darwin(v10);
  v12 = &v64 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for Calendar();
  v74 = *(v13 - 8);
  v75 = v13;
  __chkstk_darwin(v13);
  v15 = &v64 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for MetricFamilyRoomView(0);
  __chkstk_darwin(v16);
  v84 = &v64 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = &v64 - v19;
  v21 = *&v3[OBJC_IVAR____TtC10FitnessApp31ActivityDashboardViewController_summaryCoordinator];
  v22 = *(v21 + OBJC_IVAR____TtC10FitnessApp18SummaryCoordinator_state + 8);
  v66 = a1;
  if (v22)
  {
    v23 = static os_log_type_t.error.getter();
    v24 = HKLogActivity;
    os_log(_:dso:log:_:_:)(v23, &_mh_execute_header, v24, "[SummaryCoordinator] Failed to partition cards, summary coordinator is not active", 81, 2, _swiftEmptyArrayStorage);

    v67 = _swiftEmptyArrayStorage;
    v65 = _swiftEmptyArrayStorage;
  }

  else
  {
    v25 = *(*(v21 + OBJC_IVAR____TtC10FitnessApp18SummaryCoordinator_context) + OBJC_IVAR____TtC10FitnessApp24ActivityDashboardContext_configurationProvider);
    sub_100157D8C(a1);
    v67 = v26;
    v65 = v27;
  }

  v28 = *&v4[OBJC_IVAR____TtC10FitnessApp31ActivityDashboardViewController_context];
  v29 = *(v28 + OBJC_IVAR____TtC10FitnessApp24ActivityDashboardContext_metricsDataProvider);
  v30 = *(v28 + OBJC_IVAR____TtC10FitnessApp24ActivityDashboardContext_fiuiFormattingManager);
  v31 = *(v28 + OBJC_IVAR____TtC10FitnessApp24ActivityDashboardContext_workoutFormattingManager);
  v71 = *(v28 + OBJC_IVAR____TtC10FitnessApp24ActivityDashboardContext_workoutImageProvider);
  v32 = *(v28 + OBJC_IVAR____TtC10FitnessApp24ActivityDashboardContext_fitnessAppContext);
  v76 = v4;
  v33 = *(v32 + OBJC_IVAR___CHFitnessAppContext_seymourCatalogItemDataProvider);
  v34 = *(v28 + OBJC_IVAR____TtC10FitnessApp24ActivityDashboardContext_awardsDataProvider);
  v73 = v29;
  v35 = v30;
  v72 = v31;

  v70 = v33;
  v69 = v34;
  static Calendar.current.getter();
  v36 = v77;
  v37 = v78;
  (*(v77 + 104))(v12, enum case for Calendar.Component.year(_:), v78);
  v38 = v79;
  Date.init()();
  v68 = Calendar.component(_:from:)();
  (*(v80 + 8))(v38, v81);
  (*(v36 + 8))(v12, v37);
  (*(v74 + 8))(v15, v75);
  v39 = v66;
  v40 = (v66 - 3) < 0xFEu;
  if ((v83 & 0x100) == 0)
  {
    v40 = v82;
  }

  v82 = v40;
  v83 |= v83 >> 8;
  v41 = &v20[v16[18]];
  v86 = sub_1004C93F4(_swiftEmptyArrayStorage);
  sub_100140278(&unk_1008E6B68, qword_1006E6B78);
  State.init(wrappedValue:)();
  v42 = v88;
  *v41 = v87;
  *(v41 + 1) = v42;
  v43 = v65;
  *v20 = v67;
  *(v20 + 1) = v43;
  v20[16] = v39;
  v44 = &v20[v16[7]];
  *v44 = v35;
  v45 = type metadata accessor for MetricFormattingHelper(0);
  v46 = objc_opt_self();
  v47 = v35;
  v48 = [v46 mainBundle];
  v49 = String._bridgeToObjectiveC()();
  v50 = [v48 localizedStringForKey:v49 value:0 table:0];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  AttributeContainer.init()();
  AttributedString.init(_:attributes:)();
  v51 = *(v45 + 24);
  *&v44[v51] = sub_10005772C();
  v52 = v72;
  *&v20[v16[8]] = v73;
  *&v20[v16[9]] = v47;
  *&v20[v16[10]] = v52;
  v53 = v70;
  *&v20[v16[11]] = v71;
  *&v20[v16[12]] = v53;
  v54 = v68;
  *&v20[v16[13]] = v69;
  v55 = v76;
  *&v20[v16[14]] = v76;
  v20[v16[15]] = 1;
  v20[v16[16]] = 0;
  *&v20[v16[17]] = v54;
  v56 = &v20[v16[19]];
  *v56 = v82;
  v56[8] = v83 & 1;
  *(v56 + 2) = 0;
  v57 = &v20[v16[20]];
  *v57 = v54;
  *(v57 + 1) = 0;
  sub_10039E0C4(v20, v84, type metadata accessor for MetricFamilyRoomView);
  v58 = objc_allocWithZone(sub_100140278(&qword_1008EAF70, &qword_1006ECA10));
  v59 = v55;
  v60 = UIHostingController.init(rootView:)();
  v61 = [v60 navigationItem];
  [v61 setLargeTitleDisplayMode:2];

  v62 = [v59 navigationController];
  if (v62)
  {
    v63 = v62;
    [v62 pushViewController:v60 animated:1];

    sub_10039E9CC(v20, type metadata accessor for MetricFamilyRoomView);
  }

  else
  {
    sub_10039E9CC(v20, type metadata accessor for MetricFamilyRoomView);
  }
}

uint64_t sub_10039070C(uint64_t a1, char a2)
{
  v3 = *sub_1000066AC((a1 + 32), *(a1 + 56));
  **(*(v3 + 64) + 40) = a2;

  return _swift_continuation_resume(v3);
}

void sub_100390768(int a1, int a2, int a3, _BOOL8 a4, int a5)
{
  LODWORD(v68) = a5;
  v70 = a4;
  v77 = a1;
  v78 = a3;
  v76 = a2;
  v69 = a2;
  v75 = sub_100140278(&unk_1008EAF50, qword_1006D4790);
  __chkstk_darwin(v75);
  v74 = &v62 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v73 = &v62 - v7;
  v8 = type metadata accessor for AttributeContainer();
  __chkstk_darwin(v8 - 8);
  v67 = &v62 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = type metadata accessor for Date();
  v10 = *(v79 - 8);
  v64 = v10;
  __chkstk_darwin(v79);
  v71 = &v62 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v62 - v13;
  v15 = type metadata accessor for Calendar.Component();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v62 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for Calendar();
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v22 = &v62 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for MetricDetailView(0);
  v24 = (v23 - 8);
  __chkstk_darwin(v23);
  v72 = &v62 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v28 = &v62 - v27;
  v29 = (v69 - 3) < 0xFFFFFFFE;
  if ((v68 & 0x100) == 0)
  {
    v29 = v70;
  }

  v70 = v29;
  v69 = v68 | ((v68 & 0x100) >> 8);
  static Calendar.current.getter();
  (*(v16 + 104))(v18, enum case for Calendar.Component.year(_:), v15);
  v63 = v14;
  Date.init()();
  v68 = Calendar.component(_:from:)();
  v65 = *(v10 + 8);
  v65(v14, v79);
  (*(v16 + 8))(v18, v15);
  (*(v20 + 8))(v22, v19);
  v30 = *&v80[OBJC_IVAR____TtC10FitnessApp31ActivityDashboardViewController_context];
  v31 = *(v30 + OBJC_IVAR____TtC10FitnessApp24ActivityDashboardContext_fiuiFormattingManager);
  v32 = &v28[v24[15]];
  *v32 = v31;
  v33 = type metadata accessor for MetricFormattingHelper(0);
  v62 = *(v33 + 20);
  v34 = objc_opt_self();
  v66 = v31;
  v35 = [v34 mainBundle];
  v36 = String._bridgeToObjectiveC()();
  v37 = [v35 localizedStringForKey:v36 value:0 table:0];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  AttributeContainer.init()();
  AttributedString.init(_:attributes:)();
  v38 = *(v33 + 24);
  *&v32[v38] = sub_10005772C();
  v39 = *(v30 + OBJC_IVAR____TtC10FitnessApp24ActivityDashboardContext_metricsDataProvider);
  v40 = *(v30 + OBJC_IVAR____TtC10FitnessApp24ActivityDashboardContext_workoutFormattingManager);
  v41 = *(v30 + OBJC_IVAR____TtC10FitnessApp24ActivityDashboardContext_workoutImageProvider);
  v42 = *(*(v30 + OBJC_IVAR____TtC10FitnessApp24ActivityDashboardContext_fitnessAppContext) + OBJC_IVAR___CHFitnessAppContext_seymourCatalogItemDataProvider);
  v43 = *(v30 + OBJC_IVAR____TtC10FitnessApp24ActivityDashboardContext_awardsDataProvider);
  v67 = v39;
  v62 = v40;

  v44 = v42;
  v45 = v43;
  v46 = v63;
  Date.init()();
  v47 = v79;
  (*(v64 + 16))(v71, v46, v79);
  State.init(wrappedValue:)();
  v65(v46, v47);
  v48 = &v28[v24[12]];
  v81 = sub_1004C9224(_swiftEmptyArrayStorage);
  sub_100140278(&qword_1008DC338, &qword_1006D4788);
  State.init(wrappedValue:)();
  v49 = v83;
  *v48 = v82;
  *(v48 + 1) = v49;
  v50 = type metadata accessor for MetricChartData(0);
  v51 = v73;
  (*(*(v50 - 8) + 56))(v73, 1, 1, v50);
  sub_10001B104(v51, v74, &unk_1008EAF50, qword_1006D4790);
  State.init(wrappedValue:)();
  sub_10000EA04(v51, &unk_1008EAF50, qword_1006D4790);
  v52 = v76;
  *v28 = v77;
  v28[1] = v52;
  *(v28 + 1) = v70;
  v28[16] = v69 & 1;
  v53 = v68;
  *(v28 + 3) = 0;
  *(v28 + 4) = v53;
  *(v28 + 5) = 0;
  *(v28 + 6) = v53;
  v54 = v67;
  *&v28[v24[14]] = v66;
  *&v28[v24[16]] = v54;
  *&v28[v24[17]] = v62;
  *&v28[v24[18]] = v41;
  *&v28[v24[19]] = v44;
  *&v28[v24[20]] = v45;
  v55 = v80;
  *&v28[v24[21]] = v80;
  v28[v24[22]] = v78;
  sub_10039E0C4(v28, v72, type metadata accessor for MetricDetailView);
  v56 = objc_allocWithZone(sub_100140278(&unk_1008EAF60, &unk_1006ECA00));
  v57 = v55;
  v58 = UIHostingController.init(rootView:)();
  v59 = [v58 navigationItem];
  [v59 setLargeTitleDisplayMode:2];

  v60 = [v57 navigationController];
  if (v60)
  {
    v61 = v60;
    [v60 pushViewController:v58 animated:1];

    sub_10039E9CC(v28, type metadata accessor for MetricDetailView);
  }

  else
  {
    sub_10039E9CC(v28, type metadata accessor for MetricDetailView);
  }
}

void sub_100390F98(uint64_t a1)
{
  v3 = type metadata accessor for MetricPublishingBehavior();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = &v1[OBJC_IVAR____TtC10FitnessApp31ActivityDashboardViewController_initialPresentation];
  if (!v1[OBJC_IVAR____TtC10FitnessApp31ActivityDashboardViewController_visibility])
  {
    *v7 = a1;
    v7[8] = 0;
    return;
  }

  *v7 = 0;
  v7[8] = 1;
  type metadata accessor for AccountViewController();
  v15 = v1;
  v8 = OBJC_IVAR____TtC10FitnessApp24ActivityDashboardContext_fitnessAppContext;
  v14 = *&v1[OBJC_IVAR____TtC10FitnessApp31ActivityDashboardViewController_context];
  (*(v4 + 104))(v6, enum case for MetricPublishingBehavior.suppress(_:), v3);

  swift_unknownObjectRetain();
  v9 = AccountViewController.__allocating_init(dependencies:fitnessSettingsProvider:metricPublishingBehavior:)();
  v10 = [objc_allocWithZone(UINavigationController) initWithRootViewController:v9];
  if (a1 <= 1)
  {
    if (!a1)
    {
      goto LABEL_15;
    }

    if (a1 != 1)
    {
      goto LABEL_17;
    }

    objc_allocWithZone(type metadata accessor for NotificationSettingsViewController());

    v12 = NotificationSettingsViewController.init(dependencies:)();
LABEL_14:
    [v10 pushViewController:v12 animated:0];

    goto LABEL_15;
  }

  if (a1 == 2)
  {
    v12 = [objc_allocWithZone(CHASActivitySetupMetricsCollectionViewController) initWithPresentationContext:6 pregnancyStateProvider:*(*(v14 + v8) + OBJC_IVAR___CHFitnessAppContext_pregnancyStateProvider)];
    goto LABEL_14;
  }

  if (a1 == 3)
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    v11 = dispatch thunk of AccountFitnessSettingsProviding.makeChangeGoalsViewController()();
    goto LABEL_13;
  }

  if (a1 != 4)
  {
LABEL_17:
    v16 = a1;
    _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
    __break(1u);
    return;
  }

  swift_getObjectType();
  swift_unknownObjectRetain();
  v11 = dispatch thunk of AccountFitnessSettingsProviding.makeUnitsViewController()();
LABEL_13:
  v12 = v11;
  swift_unknownObjectRelease();
  if (v12)
  {
    goto LABEL_14;
  }

LABEL_15:
  [v15 presentViewController:v10 animated:1 completion:0];
}

char *sub_100391354(void *a1, int a2, int a3, int a4, void *a5, int a6, int a7)
{
  LODWORD(v131) = a7;
  LODWORD(v130) = a6;
  v129 = a5;
  v113 = a3;
  v114 = a2;
  v110 = type metadata accessor for DispatchWorkItemFlags();
  v109 = *(v110 - 8);
  __chkstk_darwin(v110);
  v107 = &v102 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v108 = type metadata accessor for DispatchQoS();
  v106 = *(v108 - 8);
  __chkstk_darwin(v108);
  v105 = &v102 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v115 = type metadata accessor for DispatchTime();
  v104 = *(v115 - 8);
  __chkstk_darwin(v115);
  v102 = &v102 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v103 = &v102 - v13;
  v14 = 1;
  LODWORD(v132) = a4;
  if ((a4 & 1) == 0)
  {
    v14 = sub_100392618();
  }

  v15 = static os_log_type_t.default.getter();
  v16 = HKLogActivity;
  sub_100140278(&unk_1008E4E50, &qword_1006D4A60);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_1006D64F0;
  *(v17 + 56) = &type metadata for String;
  v18 = sub_10000A788();
  *(v17 + 64) = v18;
  *(v17 + 32) = 0xD000000000000062;
  *(v17 + 40) = 0x8000000100759630;
  v19 = v16;
  v20 = a1;
  v21 = [v20 description];
  v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v24 = v23;

  *(v17 + 96) = &type metadata for String;
  *(v17 + 104) = v18;
  *(v17 + 72) = v22;
  *(v17 + 80) = v24;
  LODWORD(v128) = v14 & 1;
  LOBYTE(aBlock[0]) = v14 & 1;
  LODWORD(v127) = v132 & 1;
  BYTE1(aBlock[0]) = v132 & 1;
  v25 = String.init<A>(describing:)();
  *(v17 + 136) = &type metadata for String;
  *(v17 + 144) = v18;
  *(v17 + 112) = v25;
  *(v17 + 120) = v26;
  os_log(_:dso:log:_:_:)(v15, &_mh_execute_header, v19, "%@ presenting today view for %{public}@ with celebration context %{public}@", 75, 2, v17);

  v27 = v133;
  v28 = *&v133[OBJC_IVAR____TtC10FitnessApp31ActivityDashboardViewController_context];
  v29 = OBJC_IVAR____TtC10FitnessApp24ActivityDashboardContext_activityDateCache;
  v30 = *(v28 + OBJC_IVAR____TtC10FitnessApp24ActivityDashboardContext_activityDateCache);
  sub_1002477A8(v20, v27);

  v31 = *(v28 + OBJC_IVAR____TtC10FitnessApp24ActivityDashboardContext_activityDataProvider);
  v32 = *(v28 + v29);
  v33 = *(v28 + OBJC_IVAR____TtC10FitnessApp24ActivityDashboardContext_pauseRingsCoordinator);
  v34 = *(v28 + OBJC_IVAR____TtC10FitnessApp24ActivityDashboardContext_mindfulnessSessionDataProvider);
  v35 = *(v28 + OBJC_IVAR____TtC10FitnessApp24ActivityDashboardContext_badgeImageFactory);
  v36 = *(v28 + OBJC_IVAR____TtC10FitnessApp24ActivityDashboardContext_friendListManager);
  v126 = *(v28 + OBJC_IVAR____TtC10FitnessApp24ActivityDashboardContext_achievementResourceProvider);
  v37 = *(v28 + OBJC_IVAR____TtC10FitnessApp24ActivityDashboardContext_awardsDataProvider);
  v38 = *(v28 + OBJC_IVAR____TtC10FitnessApp24ActivityDashboardContext_workoutFormattingManager);
  v124 = *(v28 + OBJC_IVAR____TtC10FitnessApp24ActivityDashboardContext_workoutDataProvider);
  v122 = *(v28 + OBJC_IVAR____TtC10FitnessApp24ActivityDashboardContext_mindfulnessSessionFormattingManager);
  v121 = *(v28 + OBJC_IVAR____TtC10FitnessApp24ActivityDashboardContext_fiuiFormattingManager);
  v120 = *(v28 + OBJC_IVAR____TtC10FitnessApp24ActivityDashboardContext_achievementLocalizationProvider);
  v132 = *(v28 + OBJC_IVAR____TtC10FitnessApp24ActivityDashboardContext_fitnessAppContext);
  v135 = type metadata accessor for AAUIAwardsDataProvider();
  v136 = &protocol witness table for AAUIAwardsDataProvider;
  aBlock[0] = v37;
  v111 = type metadata accessor for HistoryPagingViewController(0);
  v39 = objc_allocWithZone(v111);
  swift_unknownObjectWeakInit();
  v40 = v39 + OBJC_IVAR____TtC10FitnessApp27HistoryPagingViewController_deviceDateListener;
  *v40 = 0u;
  v40[1] = 0u;
  v41 = v39 + OBJC_IVAR____TtC10FitnessApp27HistoryPagingViewController_selectedDateListener;
  *v41 = 0u;
  v41[1] = 0u;
  v119 = OBJC_IVAR____TtC10FitnessApp27HistoryPagingViewController_flightsClimbedEnabled;
  v42 = objc_opt_self();
  v112 = v37;
  v43 = v31;
  v116 = v43;
  v44 = v32;
  v117 = v44;
  v45 = v33;
  v46 = v34;
  v125 = v35;
  v123 = v36;
  v47 = v126;
  v118 = v47;
  v126 = v38;
  v124 = v124;
  v122 = v122;
  v121 = v121;
  v120 = v120;
  v132 = v132;
  v48 = [v42 standardUserDefaults];
  v49 = String._bridgeToObjectiveC()();
  LOBYTE(v34) = [v48 BOOLForKey:v49];

  v119[v39] = v34;
  *(v39 + OBJC_IVAR____TtC10FitnessApp27HistoryPagingViewController_celebrationComplete) = 0;
  *(v39 + OBJC_IVAR____TtC10FitnessApp27HistoryPagingViewController_notificationGoalChangeComplete) = 0;
  *(v39 + OBJC_IVAR____TtC10FitnessApp27HistoryPagingViewController_initialLoad) = 1;
  v50 = OBJC_IVAR____TtC10FitnessApp27HistoryPagingViewController_pageViewController;
  *(v39 + v50) = [objc_allocWithZone(FIUIPageViewController) init];
  *(v39 + OBJC_IVAR____TtC10FitnessApp27HistoryPagingViewController_nPages) = 0;
  sub_100284730(v39 + OBJC_IVAR____TtC10FitnessApp27HistoryPagingViewController_jan1_2014);
  *(v39 + OBJC_IVAR____TtC10FitnessApp27HistoryPagingViewController_activityDataProvider) = v43;
  *(v39 + OBJC_IVAR____TtC10FitnessApp27HistoryPagingViewController_activityDateCache) = v44;
  v51 = v45;
  *(v39 + OBJC_IVAR____TtC10FitnessApp27HistoryPagingViewController_pauseRingsCoordinator) = v45;
  *(v39 + OBJC_IVAR____TtC10FitnessApp27HistoryPagingViewController_mindfulnessSessionDataProvider) = v46;
  v52 = v125;
  *(v39 + OBJC_IVAR____TtC10FitnessApp27HistoryPagingViewController_badgeImageFactory) = v125;
  v53 = v123;
  *(v39 + OBJC_IVAR____TtC10FitnessApp27HistoryPagingViewController_friendListManager) = v123;
  *(v39 + OBJC_IVAR____TtC10FitnessApp27HistoryPagingViewController_achievementResourceProvider) = v47;
  sub_100007C5C(aBlock, v39 + OBJC_IVAR____TtC10FitnessApp27HistoryPagingViewController_awardsDataProvider);
  v54 = v126;
  *(v39 + OBJC_IVAR____TtC10FitnessApp27HistoryPagingViewController_workoutFormattingManager) = v126;
  v55 = v124;
  *(v39 + OBJC_IVAR____TtC10FitnessApp27HistoryPagingViewController_workoutDataProvider) = v124;
  v56 = v122;
  *(v39 + OBJC_IVAR____TtC10FitnessApp27HistoryPagingViewController_mindfulnessSessionFormattingManager) = v122;
  v57 = v121;
  *(v39 + OBJC_IVAR____TtC10FitnessApp27HistoryPagingViewController_fiuiFormattingManager) = v121;
  v58 = v120;
  *(v39 + OBJC_IVAR____TtC10FitnessApp27HistoryPagingViewController_achievementLocalizationProvider) = v120;
  *(v39 + OBJC_IVAR____TtC10FitnessApp27HistoryPagingViewController_fitnessAppContext) = v132;
  v59 = v39 + OBJC_IVAR____TtC10FitnessApp27HistoryPagingViewController_celebrationContext;
  *v59 = v128;
  v59[1] = v127;
  v60 = v39 + OBJC_IVAR____TtC10FitnessApp27HistoryPagingViewController_goalRecommendation;
  *v60 = v129;
  v60[8] = v130 & 1;
  *(v39 + OBJC_IVAR____TtC10FitnessApp27HistoryPagingViewController_pauseRingsEditing) = v131 & 1;
  v131 = objc_opt_self();
  v119 = v116;
  v130 = v117;
  v129 = v51;
  v128 = v46;
  v127 = v52;
  v125 = v53;
  v123 = v118;
  v126 = v54;
  v124 = v55;
  v122 = v56;
  v121 = v57;
  v120 = v58;
  v132 = v132;
  result = [v131 sharedBehavior];
  if (result)
  {
    v62 = result;
    v63 = [result isStandalonePhoneFitnessMode];

    v64 = type metadata accessor for AppStoreQuery();
    swift_allocObject();
    v65 = sub_10020F478();
    v66 = (v39 + OBJC_IVAR____TtC10FitnessApp27HistoryPagingViewController_appStoreQuery);
    v66[3] = v64;
    v66[4] = &off_10084CB18;
    *v66 = v65;
    v67 = v119;
    v68 = *&v119[OBJC_IVAR____TtC10FitnessApp20ActivityDataProvider_workoutDataProvider];
    v69 = v39 + OBJC_IVAR____TtC10FitnessApp27HistoryPagingViewController_recentWorkoutAppQuery;
    v69[3] = &type metadata for RecentWorkoutAppQuery;
    v69[4] = &off_1008624B8;
    *v69 = v68;
    sub_100007C5C(v66, v140);
    sub_100007C5C(v69, v139);
    v70 = sub_1001DF03C(v140, v140[3]);
    v71 = __chkstk_darwin(v70);
    v73 = (&v102 - ((v72 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v74 + 16))(v73, v71);
    v75 = sub_1001DF03C(v139, v139[3]);
    v76 = __chkstk_darwin(v75);
    v78 = (&v102 - ((v77 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v79 + 16))(v78, v76);
    v80 = *v73;
    v81 = *v78;
    v82 = v68;
    v83 = sub_10039D868(v80, v81, &off_100845530, v63 ^ 1);
    sub_100005A40(v139);
    sub_100005A40(v140);
    v84 = (v39 + OBJC_IVAR____TtC10FitnessApp27HistoryPagingViewController_appRecommendationDataProvider);
    v84[3] = type metadata accessor for AppRecommendationDataProvider();
    v84[4] = &off_10085F1A0;
    *v84 = v83;
    v85 = type metadata accessor for SeymourWorkoutRecommendationDataProvider(0);
    swift_allocObject();
    v86 = v132;
    v87 = sub_10016DF3C(v86);
    v88 = v39 + OBJC_IVAR____TtC10FitnessApp27HistoryPagingViewController_seymourWorkoutRecommendationDataProvider;
    v88[3] = v85;
    v88[4] = &off_100848248;
    *v88 = v87;
    v89 = v39 + OBJC_IVAR____TtC10FitnessApp27HistoryPagingViewController_walkSuggestionDataProvider;
    *(v89 + 3) = &type metadata for WalkSuggestionDataProvider;
    *(v89 + 4) = &off_1008624A8;
    v138.receiver = v39;
    v138.super_class = v111;
    v90 = objc_msgSendSuper2(&v138, "initWithNibName:bundle:", 0, 0);
    sub_1002831F8();

    sub_100005A40(aBlock);
    v91 = v133;
    swift_unknownObjectWeakLoadStrong();
    swift_unknownObjectWeakAssign();
    swift_unknownObjectRelease();
    v92 = [v91 navigationController];
    [v92 pushViewController:v90 animated:v113 & 1];

    if (v114)
    {
      sub_1000059F8(0, &qword_1008E3FD0, OS_dispatch_queue_ptr);
      v132 = static OS_dispatch_queue.main.getter();
      v93 = v102;
      static DispatchTime.now()();
      v94 = v103;
      + infix(_:_:)();
      v133 = *(v104 + 8);
      (v133)(v93, v115);
      v95 = swift_allocObject();
      *(v95 + 16) = v90;
      v136 = sub_100282A90;
      v137 = v95;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1000449A8;
      v135 = &unk_100855198;
      v96 = _Block_copy(aBlock);
      v97 = v90;

      v98 = v105;
      static DispatchQoS.unspecified.getter();
      aBlock[0] = _swiftEmptyArrayStorage;
      sub_10039D820(&qword_1008E33B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
      sub_100140278(&unk_1008E7F50, &qword_1006D8190);
      sub_100282B7C(&qword_1008E33C0, &unk_1008E7F50, &qword_1006D8190);
      v99 = v107;
      v100 = v110;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      v101 = v132;
      OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
      _Block_release(v96);

      (*(v109 + 8))(v99, v100);
      (*(v106 + 8))(v98, v108);
      (v133)(v94, v115);
    }

    return v90;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100392618()
{
  v1 = type metadata accessor for Calendar();
  v48 = *(v1 - 8);
  v49 = v1;
  __chkstk_darwin(v1);
  v47 = &v44 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for Date();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v44 - v8;
  __chkstk_darwin(v10);
  v12 = &v44 - v11;
  v13 = objc_opt_self();
  v14 = [v13 standardUserDefaults];
  v15 = String._bridgeToObjectiveC()();
  v16 = [v14 BOOLForKey:v15];

  if (!v16)
  {
    goto LABEL_18;
  }

  Date.init()();
  v17 = *(*(v0 + OBJC_IVAR____TtC10FitnessApp31ActivityDashboardViewController_context) + OBJC_IVAR____TtC10FitnessApp24ActivityDashboardContext_activityDataProvider);
  v18 = sub_1001E9F44();
  v19 = *&v17[OBJC_IVAR____TtC10FitnessApp20ActivityDataProvider_summaryCache];
  v20 = [v19 activitySummaryForCacheIndex:v18];

  if (!v20)
  {
    (*(v4 + 8))(v12, v3);
    goto LABEL_18;
  }

  if (([v20 _isStandalonePhoneSummary] & 1) == 0)
  {
    goto LABEL_16;
  }

  v21 = [v20 activityMoveMode];
  if (v21 == 2)
  {
    v22 = &selRef_minuteUnit;
  }

  else
  {
    v22 = &selRef_kilocalorieUnit;
  }

  v45 = v22;
  v23 = &selRef_appleMoveTime;
  if (v21 != 2)
  {
    v23 = &selRef_activeEnergyBurned;
  }

  v24 = *v23;
  v25 = &selRef_appleMoveTimeGoal;
  if (v21 != 2)
  {
    v25 = &selRef_activeEnergyBurnedGoal;
  }

  v46 = v25;
  v26 = [v20 v24];
  v27 = objc_opt_self();
  v28 = [v27 *v22];
  [v26 doubleValueForUnit:v28];
  v30 = v29;

  v31 = [v20 *v46];
  v32 = [v27 *v45];
  [v31 doubleValueForUnit:v32];
  v34 = v33;

  if (v34 <= 0.0 || v34 > v30)
  {
LABEL_16:
    (*(v4 + 8))(v12, v3);

LABEL_18:
    v36 = 0;
    return v36 & 1;
  }

  v38 = [v13 standardUserDefaults];
  v39 = String._bridgeToObjectiveC()();
  v40 = [v38 hk_dateForKey:v39];

  if (v40)
  {
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    (*(v4 + 32))(v9, v6, v3);
    v41 = v47;
    static Calendar.current.getter();
    v42 = Calendar.isDate(_:inSameDayAs:)();

    (*(v48 + 8))(v41, v49);
    v43 = *(v4 + 8);
    v43(v9, v3);
    v43(v12, v3);
    v36 = v42 ^ 1;
  }

  else
  {
    (*(v4 + 8))(v12, v3);

    v36 = 1;
  }

  return v36 & 1;
}

void sub_100392B10(void *a1, uint64_t a2, uint64_t (*a3)(uint64_t a1, uint64_t a2), uint64_t a4, uint64_t (*a5)(uint64_t a1, uint64_t a2), uint64_t a6, CGFloat a7, CGFloat a8, CGFloat a9, CGFloat a10)
{
  v16 = static os_log_type_t.default.getter();
  v17 = HKLogActivity;
  sub_100140278(&unk_1008E4E50, &qword_1006D4A60);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_1006D64F0;
  *(v18 + 56) = &type metadata for String;
  v19 = sub_10000A788();
  *(v18 + 64) = v19;
  *(v18 + 32) = 0xD00000000000005ALL;
  *(v18 + 40) = 0x8000000100759530;
  *(v18 + 96) = sub_1000059F8(0, &qword_1008E8750, ACHAchievement_ptr);
  *(v18 + 104) = sub_100282E30();
  *(v18 + 72) = a1;
  v20 = v17;
  v111 = a1;
  v128.origin.x = a7;
  v128.origin.y = a8;
  v128.size.width = a9;
  v128.size.height = a10;
  v21 = NSStringFromRect(v128);
  v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v24 = v23;

  *(v18 + 136) = &type metadata for String;
  *(v18 + 144) = v19;
  *(v18 + 112) = v22;
  *(v18 + 120) = v24;
  os_log(_:dso:log:_:_:)(v16, &_mh_execute_header, v20, "%@ presenting detail for achievement %{public}@ badgeRect %{public}@", 68, 2, v18);

  v25 = [v111 unearned];
  v101 = v10;
  v26 = *&v10[OBJC_IVAR____TtC10FitnessApp31ActivityDashboardViewController_context];
  v27 = *(v26 + OBJC_IVAR____TtC10FitnessApp24ActivityDashboardContext_healthStore);
  v28 = *(v26 + OBJC_IVAR____TtC10FitnessApp24ActivityDashboardContext_friendListManager);
  v29 = *(v26 + OBJC_IVAR____TtC10FitnessApp24ActivityDashboardContext_awardsDataProvider);
  v30 = *(v26 + OBJC_IVAR____TtC10FitnessApp24ActivityDashboardContext_badgeImageFactory);
  v31 = *(v26 + OBJC_IVAR____TtC10FitnessApp24ActivityDashboardContext_achievementResourceProvider);
  v32 = *(v26 + OBJC_IVAR____TtC10FitnessApp24ActivityDashboardContext_fiuiFormattingManager);
  v33 = *(v26 + OBJC_IVAR____TtC10FitnessApp24ActivityDashboardContext_achievementLocalizationProvider);
  v34 = *(v26 + OBJC_IVAR____TtC10FitnessApp24ActivityDashboardContext_pauseRingsCoordinator);
  v102 = *(v26 + OBJC_IVAR____TtC10FitnessApp24ActivityDashboardContext_fitnessAppContext);
  v104 = *(v26 + OBJC_IVAR____TtC10FitnessApp24ActivityDashboardContext_workoutFormattingManager);
  v116 = v25 ^ 1;
  v117 = *(v26 + OBJC_IVAR____TtC10FitnessApp24ActivityDashboardContext_workoutDataProvider);
  v127[3] = type metadata accessor for AAUIAwardsDataProvider();
  v127[4] = &protocol witness table for AAUIAwardsDataProvider;
  v127[0] = v29;
  v115 = type metadata accessor for TrophyCaseAwardDetailViewController();
  v35 = objc_allocWithZone(v115);
  v109 = OBJC_IVAR____TtC10FitnessApp35TrophyCaseAwardDetailViewController_celebrationVideoContainer;
  v36 = objc_allocWithZone(UIView);
  v95 = v29;
  v107 = v27;
  v113 = v28;
  v37 = v30;
  v38 = v31;
  v39 = v32;
  v40 = v33;
  v41 = v34;
  v42 = v102;
  v105 = v104;
  v118 = v117;
  v43 = [v36 initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v44 = [objc_opt_self() blackColor];
  [v43 setBackgroundColor:v44];

  v45 = UIView.forAutoLayout()();
  *&v35[v109] = v45;
  *&v35[OBJC_IVAR____TtC10FitnessApp35TrophyCaseAwardDetailViewController_badgeViewCell] = 0;
  *&v35[OBJC_IVAR____TtC10FitnessApp35TrophyCaseAwardDetailViewController_associatedWorkout] = 0;
  *&v35[OBJC_IVAR____TtC10FitnessApp35TrophyCaseAwardDetailViewController_avPlayer] = 0;
  *&v35[OBJC_IVAR____TtC10FitnessApp35TrophyCaseAwardDetailViewController_avPlayerLayer] = 0;
  v35[OBJC_IVAR____TtC10FitnessApp35TrophyCaseAwardDetailViewController_celebrationComplete] = 0;
  v35[OBJC_IVAR____TtC10FitnessApp35TrophyCaseAwardDetailViewController_modalBadgeFlipStarted] = 0;
  v35[OBJC_IVAR____TtC10FitnessApp35TrophyCaseAwardDetailViewController_didAppear] = 0;
  v35[OBJC_IVAR____TtC10FitnessApp35TrophyCaseAwardDetailViewController_needToAnimatedBadgeView] = 0;
  *&v35[OBJC_IVAR____TtC10FitnessApp35TrophyCaseAwardDetailViewController_sharingImage] = 0;
  v46 = &v35[OBJC_IVAR____TtC10FitnessApp35TrophyCaseAwardDetailViewController_sharingText];
  *v46 = 0;
  v46[1] = 0;
  v110 = OBJC_IVAR____TtC10FitnessApp35TrophyCaseAwardDetailViewController_friendsWithAchievement;
  *&v35[OBJC_IVAR____TtC10FitnessApp35TrophyCaseAwardDetailViewController_friendsWithAchievement] = _swiftEmptyArrayStorage;
  *&v35[OBJC_IVAR____TtC10FitnessApp35TrophyCaseAwardDetailViewController_achievement] = v111;
  *&v35[OBJC_IVAR____TtC10FitnessApp35TrophyCaseAwardDetailViewController_healthStore] = v107;
  sub_100007C5C(v127, &v35[OBJC_IVAR____TtC10FitnessApp35TrophyCaseAwardDetailViewController_achievementDataProvider]);
  *&v35[OBJC_IVAR____TtC10FitnessApp35TrophyCaseAwardDetailViewController_badgeImageFactory] = v37;
  *&v35[OBJC_IVAR____TtC10FitnessApp35TrophyCaseAwardDetailViewController_resourceProvider] = v38;
  *&v35[OBJC_IVAR____TtC10FitnessApp35TrophyCaseAwardDetailViewController_formattingManager] = v39;
  *&v35[OBJC_IVAR____TtC10FitnessApp35TrophyCaseAwardDetailViewController_localizationProvider] = v40;
  *&v35[OBJC_IVAR____TtC10FitnessApp35TrophyCaseAwardDetailViewController_pauseRingsCoordinator] = v41;
  *&v35[OBJC_IVAR____TtC10FitnessApp35TrophyCaseAwardDetailViewController_fitnessAppContext] = v42;
  *&v35[OBJC_IVAR____TtC10FitnessApp35TrophyCaseAwardDetailViewController_workoutFormattingManager] = v105;
  *&v35[OBJC_IVAR____TtC10FitnessApp35TrophyCaseAwardDetailViewController_workoutDataProvider] = v118;
  v103 = objc_allocWithZone(AAUIBadgeView);
  v47 = v111;
  v112 = v107;
  v108 = v37;
  v94 = v38;
  v48 = v39;
  v49 = v40;
  v93 = v41;
  v92 = v42;
  v106 = v105;
  v119 = v118;
  v50 = [v103 initUsingEarnedShader:v116];
  *&v35[OBJC_IVAR____TtC10FitnessApp35TrophyCaseAwardDetailViewController_badgeView] = v50;
  *&v35[OBJC_IVAR____TtC10FitnessApp35TrophyCaseAwardDetailViewController_friendListManager] = v113;
  v35[OBJC_IVAR____TtC10FitnessApp35TrophyCaseAwardDetailViewController_forModalPresentation] = 0;
  v35[OBJC_IVAR____TtC10FitnessApp35TrophyCaseAwardDetailViewController_shouldShowCelebration] = 0;
  v35[OBJC_IVAR____TtC10FitnessApp35TrophyCaseAwardDetailViewController_shouldShowEarned] = v116;
  v35[OBJC_IVAR____TtC10FitnessApp35TrophyCaseAwardDetailViewController_shouldShowAssociatedWorkout] = 1;
  v35[OBJC_IVAR____TtC10FitnessApp35TrophyCaseAwardDetailViewController_formatsForFriend] = 0;
  type metadata accessor for FriendsAchievementDataProvider();
  inited = swift_initStackObject();
  *(inited + 16) = v47;
  *(inited + 24) = v113;
  v52 = v113;
  v53 = v47;
  v114 = v52;
  v54 = sub_100288680();
  swift_setDeallocating();

  *&v35[v110] = v54;

  v55 = [objc_allocWithZone(UICollectionViewLayout) init];
  v126.receiver = v35;
  v126.super_class = v115;
  v56 = objc_msgSendSuper2(&v126, "initWithCollectionViewLayout:", v55);

  v57 = v56;
  v58 = [v57 navigationItem];
  [v58 setLargeTitleDisplayMode:2];

  v59 = [v57 collectionView];
  if (!v59)
  {
    __break(1u);
    goto LABEL_8;
  }

  v60 = v59;
  v61 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v62 = objc_allocWithZone(UICollectionViewCompositionalLayout);
  v124 = sub_100319D94;
  v125 = v61;
  aBlock = _NSConcreteStackBlock;
  v121 = 1107296256;
  v122 = sub_10006871C;
  v123 = &unk_100854CE8;
  v63 = _Block_copy(&aBlock);
  v64 = [v62 initWithSectionProvider:v63];
  _Block_release(v63);

  [v60 setCollectionViewLayout:v64];

  v65 = [v57 collectionView];
  if (!v65)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v66 = v65;
  type metadata accessor for TrophyCaseAwardDetailBadgeCell();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v68 = String._bridgeToObjectiveC()();
  [v66 registerClass:ObjCClassFromMetadata forCellWithReuseIdentifier:v68];

  v69 = [v57 collectionView];
  if (!v69)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v70 = v69;
  type metadata accessor for TrophyCaseAwardDetailWorkoutCell();
  v71 = swift_getObjCClassFromMetadata();
  v72 = String._bridgeToObjectiveC()();
  [v70 registerClass:v71 forCellWithReuseIdentifier:v72];

  v73 = [v57 collectionView];
  if (!v73)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v74 = v73;
  type metadata accessor for TrophyCaseAwardDetailFriendCell();
  v75 = swift_getObjCClassFromMetadata();
  v76 = String._bridgeToObjectiveC()();
  [v74 registerClass:v75 forCellWithReuseIdentifier:v76];

  v77 = [v57 collectionView];
  if (v77)
  {
    type metadata accessor for TrophyCaseAwardDetailViewControllerHeaderView();
    v78 = swift_getObjCClassFromMetadata();
    v79 = UICollectionElementKindSectionHeader;
    v80 = String._bridgeToObjectiveC()();
    [v77 registerClass:v78 forSupplementaryViewOfKind:v79 withReuseIdentifier:v80];

    v81 = [v57 navigationItem];
    v82 = [objc_allocWithZone(UIBarButtonItem) initWithBarButtonSystemItem:9 target:v57 action:"shareTapped:"];

    [v81 setRightBarButtonItem:v82];
    sub_10039D820(&unk_1008EAEE0, type metadata accessor for TrophyCaseAwardDetailViewController, &unk_100702794);
    v83 = v57;
    dispatch thunk of AAUIAwardsDataProviding.add(observer:)();

    sub_100650294();
    sub_100005A40(v127);
    v84 = objc_allocWithZone(AAUIAchievementDetailTransitionAnimator);
    v124 = a3;
    v125 = a4;
    aBlock = _NSConcreteStackBlock;
    v121 = 1107296256;
    v122 = sub_1000449A8;
    v123 = &unk_100854D10;
    v85 = _Block_copy(&aBlock);
    v86 = v83;

    v124 = a5;
    v125 = a6;
    aBlock = _NSConcreteStackBlock;
    v121 = 1107296256;
    v122 = sub_1000449A8;
    v123 = &unk_100854D38;
    v87 = _Block_copy(&aBlock);

    v88 = [v84 initWithPresentingViewController:v101 detailViewController:v86 shouldPlayFlipInAnimation:v116 initialBadgeFrame:a2 conversionView:v85 didStartAnimationBlock:v87 didFinishAnimationBlock:{a7, a8, a9, a10}];
    _Block_release(v87);
    _Block_release(v85);

    v89 = *&v101[OBJC_IVAR____TtC10FitnessApp31ActivityDashboardViewController_achievementTransitionAnimator];
    *&v101[OBJC_IVAR____TtC10FitnessApp31ActivityDashboardViewController_achievementTransitionAnimator] = v88;
    v90 = v88;

    [v90 setShouldAdjustForInset:1];
    v91 = [v101 navigationController];
    [v91 pushViewController:v86 animated:1];

    return;
  }

LABEL_11:
  __break(1u);
}

void sub_10039374C(char a1, void *a2, char a3, char a4)
{
  v5 = *(v4 + OBJC_IVAR____TtC10FitnessApp31ActivityDashboardViewController_context);
  v6 = *(v5 + OBJC_IVAR____TtC10FitnessApp24ActivityDashboardContext_healthStore);
  v7 = *(v5 + OBJC_IVAR____TtC10FitnessApp24ActivityDashboardContext_friendListManager);
  v8 = *(v5 + OBJC_IVAR____TtC10FitnessApp24ActivityDashboardContext_awardsDataProvider);
  v9 = *(v5 + OBJC_IVAR____TtC10FitnessApp24ActivityDashboardContext_badgeImageFactory);
  v10 = *(v5 + OBJC_IVAR____TtC10FitnessApp24ActivityDashboardContext_fiuiFormattingManager);
  v11 = *(v5 + OBJC_IVAR____TtC10FitnessApp24ActivityDashboardContext_achievementResourceProvider);
  v12 = *(v5 + OBJC_IVAR____TtC10FitnessApp24ActivityDashboardContext_achievementLocalizationProvider);
  v63 = *(v5 + OBJC_IVAR____TtC10FitnessApp24ActivityDashboardContext_pauseRingsCoordinator);
  v67 = *(v5 + OBJC_IVAR____TtC10FitnessApp24ActivityDashboardContext_fitnessAppContext);
  v13 = *(v5 + OBJC_IVAR____TtC10FitnessApp24ActivityDashboardContext_workoutFormattingManager);
  v72 = *(v5 + OBJC_IVAR____TtC10FitnessApp24ActivityDashboardContext_workoutDataProvider);
  v75 = *(v5 + OBJC_IVAR____TtC10FitnessApp24ActivityDashboardContext_wheelchairUseCache);
  v86[3] = type metadata accessor for AAUIAwardsDataProvider();
  v86[4] = &protocol witness table for AAUIAwardsDataProvider;
  v86[0] = v8;
  v83 = type metadata accessor for TrophyCaseViewController();
  v14 = objc_allocWithZone(v83);
  swift_unknownObjectWeakInit();
  v61 = OBJC_IVAR____TtC10FitnessApp24TrophyCaseViewController_restoringView;
  v15 = objc_allocWithZone(type metadata accessor for TrophyCaseRestoringView());
  v57 = v8;
  v60 = v6;
  v16 = v7;
  v70 = v9;
  v65 = v10;
  v17 = v11;
  v18 = v12;
  v19 = v63;
  v64 = v67;
  v68 = v13;
  v73 = v72;
  v76 = v75;
  *&v61[v14] = [v15 initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *(v14 + OBJC_IVAR____TtC10FitnessApp24TrophyCaseViewController_initialAchievementPresented) = 0;
  *(v14 + OBJC_IVAR____TtC10FitnessApp24TrophyCaseViewController_transitionAnimator) = 0;
  *(v14 + OBJC_IVAR____TtC10FitnessApp24TrophyCaseViewController_transitionAnimatorFromViewController) = 0;
  *(v14 + OBJC_IVAR____TtC10FitnessApp24TrophyCaseViewController_numberOfCellPerRow) = 0x4000000000000000;
  *(v14 + OBJC_IVAR____TtC10FitnessApp24TrophyCaseViewController_maxCellHeight) = 0;
  *(v14 + OBJC_IVAR____TtC10FitnessApp24TrophyCaseViewController_maxSectionLabelHeight) = 0;
  *(v14 + OBJC_IVAR____TtC10FitnessApp24TrophyCaseViewController_cellWidth) = 0;
  *(v14 + OBJC_IVAR____TtC10FitnessApp24TrophyCaseViewController_shouldReloadCollectionView) = 0;
  *(v14 + OBJC_IVAR____TtC10FitnessApp24TrophyCaseViewController_healthStore) = v60;
  *(v14 + OBJC_IVAR____TtC10FitnessApp24TrophyCaseViewController_friendListManager) = v16;
  sub_100007C5C(v86, v14 + OBJC_IVAR____TtC10FitnessApp24TrophyCaseViewController_achievementDataProvider);
  *(v14 + OBJC_IVAR____TtC10FitnessApp24TrophyCaseViewController_badgeImageFactory) = v70;
  *(v14 + OBJC_IVAR____TtC10FitnessApp24TrophyCaseViewController_formattingManager) = v65;
  *(v14 + OBJC_IVAR____TtC10FitnessApp24TrophyCaseViewController_resourceProvider) = v17;
  *(v14 + OBJC_IVAR____TtC10FitnessApp24TrophyCaseViewController_localizationProvider) = v18;
  *(v14 + OBJC_IVAR____TtC10FitnessApp24TrophyCaseViewController_pauseRingsCoordinator) = v19;
  *(v14 + OBJC_IVAR____TtC10FitnessApp24TrophyCaseViewController_fitnessAppContext) = v64;
  *(v14 + OBJC_IVAR____TtC10FitnessApp24TrophyCaseViewController_workoutFormattingManager) = v68;
  *(v14 + OBJC_IVAR____TtC10FitnessApp24TrophyCaseViewController_workoutDataProvider) = v73;
  *(v14 + OBJC_IVAR____TtC10FitnessApp24TrophyCaseViewController_wheelchairUseCache) = v76;
  *(v14 + OBJC_IVAR____TtC10FitnessApp24TrophyCaseViewController_initialAchievement) = a2;
  *(v14 + OBJC_IVAR____TtC10FitnessApp24TrophyCaseViewController_shouldShowCelebration) = a3;
  *(v14 + OBJC_IVAR____TtC10FitnessApp24TrophyCaseViewController_forModalPresentation) = a4;
  v20 = objc_allocWithZone(UICollectionViewLayout);
  v21 = a2;
  v82 = v60;
  v22 = v16;
  v80 = v70;
  v78 = v65;
  v71 = v17;
  v62 = v18;
  v66 = v19;
  v23 = v64;
  v69 = v68;
  v74 = v73;
  v24 = v76;
  v25 = [v20 init];
  v85.receiver = v14;
  v85.super_class = v83;
  v26 = objc_msgSendSuper2(&v85, "initWithCollectionViewLayout:", v25);

  v27 = v26;
  v28 = [v27 navigationItem];
  [v28 setLargeTitleDisplayMode:1];

  v29 = [v27 navigationItem];
  v30 = [objc_opt_self() mainBundle];
  v31 = String._bridgeToObjectiveC()();
  v32 = [v30 localizedStringForKey:v31 value:0 table:0];

  if (!v32)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v32 = String._bridgeToObjectiveC()();
  }

  [v29 setTitle:v32];
  v33 = v27;
  v34 = [v33 collectionView];
  if (!v34)
  {
    __break(1u);
    goto LABEL_9;
  }

  v35 = v34;
  v36 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v37 = objc_allocWithZone(UICollectionViewCompositionalLayout);
  aBlock[4] = sub_100282924;
  aBlock[5] = v36;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10006871C;
  aBlock[3] = &unk_100855148;
  v38 = _Block_copy(aBlock);
  v39 = v33;
  v40 = [v37 initWithSectionProvider:v38];
  _Block_release(v38);

  [v35 setCollectionViewLayout:v40];

  v41 = [v39 collectionView];
  if (!v41)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v42 = v41;
  type metadata accessor for TrophyCaseSectionCell();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v44 = String._bridgeToObjectiveC()();
  [v42 registerClass:ObjCClassFromMetadata forCellWithReuseIdentifier:v44];

  v45 = [v39 collectionView];
  if (!v45)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v46 = v45;
  type metadata accessor for TrophyCaseGoForItCell();
  v47 = swift_getObjCClassFromMetadata();
  v48 = String._bridgeToObjectiveC()();
  [v46 registerClass:v47 forCellWithReuseIdentifier:v48];

  v49 = [v39 collectionView];
  if (v49)
  {
    type metadata accessor for TrophyCaseViewControllerFooterView();
    v50 = swift_getObjCClassFromMetadata();
    v51 = UICollectionElementKindSectionFooter;
    v52 = String._bridgeToObjectiveC()();
    [v49 registerClass:v50 forSupplementaryViewOfKind:v51 withReuseIdentifier:v52];

    sub_100300F1C();
    [*&v39[OBJC_IVAR____TtC10FitnessApp24TrophyCaseViewController_restoringView] setAlpha:0.0];
    sub_10039D820(&unk_1008E7FA0, type metadata accessor for TrophyCaseViewController, &unk_1006E86C8);
    v53 = v39;
    dispatch thunk of AAUIAwardsDataProviding.add(observer:)();
    [v24 addObserver:v53];
    v54 = OBJC_IVAR___CHFitnessAppContext_pregnancyStateProvider;
    [v62 setIsPregnant:{objc_msgSend(*&v23[OBJC_IVAR___CHFitnessAppContext_pregnancyStateProvider], "isPregnant")}];
    v55 = *&v23[v54];
    [v55 addObserver:v53];

    sub_100005A40(v86);
    swift_unknownObjectWeakLoadStrong();
    swift_unknownObjectWeakAssign();
    swift_unknownObjectRelease();
    v56 = [v58 navigationController];
    [v56 pushViewController:v53 animated:a1 & 1];

    return;
  }

LABEL_11:
  __break(1u);
}

void sub_1003941E4(char a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC10FitnessApp31ActivityDashboardViewController_context);
  v3 = *(v2 + OBJC_IVAR____TtC10FitnessApp24ActivityDashboardContext_historyDataProvider);
  v119 = *(v2 + OBJC_IVAR____TtC10FitnessApp24ActivityDashboardContext_fitnessAppContext);
  v4 = *(v2 + OBJC_IVAR____TtC10FitnessApp24ActivityDashboardContext_fiuiFormattingManager);
  v122 = *(v2 + OBJC_IVAR____TtC10FitnessApp24ActivityDashboardContext_workoutFormattingManager);
  v5 = *(v2 + OBJC_IVAR____TtC10FitnessApp24ActivityDashboardContext_healthStore);
  v6 = *(v2 + OBJC_IVAR____TtC10FitnessApp24ActivityDashboardContext_fiuiModel);
  v125 = *(v2 + OBJC_IVAR____TtC10FitnessApp24ActivityDashboardContext_badgeImageFactory);
  v7 = *(v2 + OBJC_IVAR____TtC10FitnessApp24ActivityDashboardContext_friendListManager);
  v8 = *(v2 + OBJC_IVAR____TtC10FitnessApp24ActivityDashboardContext_achievementLocalizationProvider);
  v9 = *(v2 + OBJC_IVAR____TtC10FitnessApp24ActivityDashboardContext_pauseRingsCoordinator);
  v10 = *(v2 + OBJC_IVAR____TtC10FitnessApp24ActivityDashboardContext_achievementResourceProvider);
  v11 = *(v2 + OBJC_IVAR____TtC10FitnessApp24ActivityDashboardContext_chAwardsDataProvider);
  v129 = *(v2 + OBJC_IVAR____TtC10FitnessApp24ActivityDashboardContext_mindfulnessSessionFormattingManager);
  v127 = *(v2 + OBJC_IVAR____TtC10FitnessApp24ActivityDashboardContext_stackFormattingManager);
  v12 = type metadata accessor for HistoryListViewController();
  v13 = objc_allocWithZone(v12);
  *&v13[OBJC_IVAR____TtC10FitnessApp25HistoryListViewController_dataSource] = 0;
  v14 = &v13[OBJC_IVAR____TtC10FitnessApp25HistoryListViewController_filterValue];
  *v14 = 0;
  *(v14 + 4) = 512;
  *&v13[OBJC_IVAR____TtC10FitnessApp25HistoryListViewController_allHistoryItems] = _swiftEmptyArrayStorage;
  *&v13[OBJC_IVAR____TtC10FitnessApp25HistoryListViewController_workoutStatistics] = &_swiftEmptyDictionarySingleton;
  *&v13[OBJC_IVAR____TtC10FitnessApp25HistoryListViewController_filterViewController] = 0;
  *&v13[OBJC_IVAR____TtC10FitnessApp25HistoryListViewController_observers] = _swiftEmptyArrayStorage;
  v15 = &v13[OBJC_IVAR____TtC10FitnessApp25HistoryListViewController_awaitingDataLoadFilter];
  *v15 = 0;
  *(v15 + 4) = 1792;
  *&v13[OBJC_IVAR____TtC10FitnessApp25HistoryListViewController_dataProvider] = v3;
  *&v13[OBJC_IVAR____TtC10FitnessApp25HistoryListViewController_fitnessAppContext] = v119;
  *&v13[OBJC_IVAR____TtC10FitnessApp25HistoryListViewController_fiuiFormattingManager] = v4;
  *&v13[OBJC_IVAR____TtC10FitnessApp25HistoryListViewController_workoutFormattingManager] = v122;
  *&v13[OBJC_IVAR____TtC10FitnessApp25HistoryListViewController_healthStore] = v5;
  *&v13[OBJC_IVAR____TtC10FitnessApp25HistoryListViewController_model] = v6;
  *&v13[OBJC_IVAR____TtC10FitnessApp25HistoryListViewController_friendListManager] = v7;
  *&v13[OBJC_IVAR____TtC10FitnessApp25HistoryListViewController_badgeImageFactory] = v125;
  *&v13[OBJC_IVAR____TtC10FitnessApp25HistoryListViewController_achievementLocalizationProvider] = v8;
  *&v13[OBJC_IVAR____TtC10FitnessApp25HistoryListViewController_pauseRingsCoordinator] = v9;
  *&v13[OBJC_IVAR____TtC10FitnessApp25HistoryListViewController_achievementResourceProvider] = v10;
  *&v13[OBJC_IVAR____TtC10FitnessApp25HistoryListViewController_awardsDataProvider] = v11;
  *&v13[OBJC_IVAR____TtC10FitnessApp25HistoryListViewController_mindfulnessSessionFormattingManager] = v129;
  *&v13[OBJC_IVAR____TtC10FitnessApp25HistoryListViewController_stackFormattingManager] = v127;
  v134.receiver = v13;
  v134.super_class = v12;
  v117 = v3;
  v120 = v119;
  v115 = v4;
  v123 = v122;
  v16 = v5;
  v113 = v6;
  v17 = v125;
  v18 = v7;
  v19 = v8;
  v20 = v9;
  v21 = v10;
  v22 = v11;
  v23 = v129;
  v24 = v127;
  v25 = v117;
  v130 = v120;
  v128 = v115;
  v124 = v123;
  v121 = v16;
  v118 = v113;
  v126 = v18;
  v109 = v17;
  v116 = v19;
  v114 = v20;
  v110 = v21;
  v107 = v22;
  v26 = v23;
  v27 = v24;
  v28 = objc_msgSendSuper2(&v134, "initWithNibName:bundle:", 0, 0);
  v29 = *&v28[OBJC_IVAR____TtC10FitnessApp25HistoryListViewController_filterValue];
  v30 = *&v28[OBJC_IVAR____TtC10FitnessApp25HistoryListViewController_filterValue + 8];
  v31 = v28;
  sub_100448AF0(v29, v30);
  v33 = v32;
  *&v31[OBJC_IVAR____TtC10FitnessApp25HistoryListViewController_allHistoryItems] = v34;

  *&v31[OBJC_IVAR____TtC10FitnessApp25HistoryListViewController_workoutStatistics] = v33;

  v35 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v36 = objc_allocWithZone(type metadata accessor for HistoryFilterUIViewController());
  v37 = sub_1002586AC(sub_1002831D8, v35);
  v38 = OBJC_IVAR____TtC10FitnessApp25HistoryListViewController_filterViewController;
  v39 = *&v31[OBJC_IVAR____TtC10FitnessApp25HistoryListViewController_filterViewController];
  *&v31[OBJC_IVAR____TtC10FitnessApp25HistoryListViewController_filterViewController] = v37;

  v40 = *&v25[OBJC_IVAR___CHHistoryDataProvider_lock];
  v41 = v25;
  v42 = v37;
  os_unfair_lock_lock(v40 + 4);
  sub_1002831DC(v131);
  os_unfair_lock_unlock(v40 + 4);
  if (*(v131[0] + 16))
  {
    *&v42[OBJC_IVAR____TtC10FitnessApp29HistoryFilterUIViewController_historyTypes] = v131[0];

    sub_100258840();
  }

  else
  {
  }

  v43 = [objc_opt_self() mainBundle];
  v44 = String._bridgeToObjectiveC()();
  v45 = [v43 localizedStringForKey:v44 value:0 table:0];

  if (!v45)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v45 = String._bridgeToObjectiveC()();
  }

  [v31 setTitle:v45];
  v46 = [v31 tableView];
  if (!v46)
  {
    __break(1u);
    goto LABEL_30;
  }

  v47 = v46;
  [v46 setSectionHeaderTopPadding:0.0];

  v48 = [v31 tableView];
  if (!v48)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v49 = v48;
  [v48 setSeparatorStyle:0];

  v50 = [v31 tableView];
  if (!v50)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v51 = v50;
  v52 = *&v31[v38];
  if (!v52)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v53 = [v52 view];
  if (!v53)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v54 = v53;
  [v53 frame];
  v56 = v55;
  v58 = v57;
  v60 = v59;
  v62 = v61;

  v63 = [objc_allocWithZone(UIView) initWithFrame:{v56, v58, v60, v62}];
  [v51 setTableHeaderView:v63];

  v64 = [v31 tableView];
  if (!v64)
  {
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v65 = v64;
  v66 = [v64 tableHeaderView];

  if (v66)
  {
    v67 = *&v31[v38];
    if (!v67)
    {
LABEL_40:
      __break(1u);
      goto LABEL_41;
    }

    v68 = [v67 view];
    if (!v68)
    {
LABEL_41:
      __break(1u);
      return;
    }

    v69 = v68;
    [v66 addSubview:v68];
  }

  v70 = [v31 tableView];
  if (!v70)
  {
    goto LABEL_35;
  }

  v71 = v70;
  sub_1000059F8(0, &unk_1008E4DF0, off_100832810);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v73 = String._bridgeToObjectiveC()();
  [v71 registerClass:ObjCClassFromMetadata forHeaderFooterViewReuseIdentifier:v73];

  v74 = [v31 tableView];
  if (!v74)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v75 = v74;
  sub_1000059F8(0, &unk_1008EAF80, off_100832808);
  v76 = swift_getObjCClassFromMetadata();
  v77 = String._bridgeToObjectiveC()();
  [v75 registerClass:v76 forCellReuseIdentifier:v77];

  v78 = [v31 tableView];
  if (!v78)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v79 = v78;
  type metadata accessor for MindfulnessSessionListTableViewCell();
  v80 = swift_getObjCClassFromMetadata();
  v81 = String._bridgeToObjectiveC()();
  [v79 registerClass:v80 forCellReuseIdentifier:v81];

  v82 = [v31 tableView];
  if (!v82)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  v83 = v82;
  type metadata accessor for WorkoutsListTableViewCell();
  v84 = swift_getObjCClassFromMetadata();
  v85 = String._bridgeToObjectiveC()();
  [v83 registerClass:v84 forCellReuseIdentifier:v85];

  v86 = [v31 tableView];
  if (!v86)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  type metadata accessor for StackListTableViewCell(0);
  v87 = swift_getObjCClassFromMetadata();
  v88 = String._bridgeToObjectiveC()();
  [v86 registerClass:v87 forCellReuseIdentifier:v88];

  v89 = type metadata accessor for WorkoutFeatures();
  v132 = v89;
  v90 = sub_10039D820(&qword_1008E4E00, &type metadata accessor for WorkoutFeatures, &protocol conformance descriptor for WorkoutFeatures);
  v133 = v90;
  v91 = sub_100005994(v131);
  v92 = *(*(v89 - 8) + 104);
  v92(v91, enum case for WorkoutFeatures.Kahana(_:), v89);
  v93 = isFeatureEnabled(_:)();
  sub_100005A40(v131);
  v94 = v31;
  if (v93)
  {
    v132 = v89;
    v133 = v90;
    v95 = sub_100005994(v131);
    v92(v95, enum case for WorkoutFeatures.ManualLogging(_:), v89);
    v96 = isFeatureEnabled(_:)();
    sub_100005A40(v131);
    v94 = v31;
    if (v96)
    {
      v97 = [v31 navigationItem];
      v94 = [objc_allocWithZone(UIBarButtonItem) initWithBarButtonSystemItem:7 target:v31 action:"presentManualLoggingViewController"];

      [v97 setRightBarButtonItem:v94];
    }
  }

  sub_10059D990();
  v98 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v99 = swift_allocObject();
  *(v99 + 16) = sub_1002831D4;
  *(v99 + 24) = v98;
  v100 = OBJC_IVAR___CHHistoryDataProvider_onChangeHandlers;
  swift_beginAccess();
  v101 = *&v41[v100];
  swift_retain_n();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v41[v100] = v101;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v101 = sub_1001A1E7C(0, v101[2] + 1, 1, v101);
    *&v41[v100] = v101;
  }

  v104 = v101[2];
  v103 = v101[3];
  if (v104 >= v103 >> 1)
  {
    v101 = sub_1001A1E7C((v103 > 1), v104 + 1, 1, v101);
  }

  v101[2] = v104 + 1;
  v105 = &v101[2 * v104];
  v105[4] = sub_10039ECDC;
  v105[5] = v99;
  *&v41[v100] = v101;
  swift_endAccess();

  sub_10059CE6C();

  v106 = [v111 navigationController];
  [v106 pushViewController:v31 animated:a1 & 1];
}

void sub_100394F20(void *a1, void *a2, uint64_t a3, void *a4)
{
  v5 = v4;
  v6 = *&v4[OBJC_IVAR____TtC10FitnessApp31ActivityDashboardViewController_context];
  v34 = OBJC_IVAR____TtC10FitnessApp24ActivityDashboardContext_activityDataProvider;
  v33 = OBJC_IVAR____TtC10FitnessApp24ActivityDashboardContext_fiuiModel;
  v32 = OBJC_IVAR____TtC10FitnessApp24ActivityDashboardContext_fitnessAppContext;
  v31 = OBJC_IVAR____TtC10FitnessApp24ActivityDashboardContext_workoutFormattingManager;
  v30 = OBJC_IVAR____TtC10FitnessApp24ActivityDashboardContext_workoutDataProvider;
  v29 = OBJC_IVAR____TtC10FitnessApp24ActivityDashboardContext_badgeImageFactory;
  v28 = OBJC_IVAR____TtC10FitnessApp24ActivityDashboardContext_friendListManager;
  v27 = OBJC_IVAR____TtC10FitnessApp24ActivityDashboardContext_achievementLocalizationProvider;
  v26 = OBJC_IVAR____TtC10FitnessApp24ActivityDashboardContext_pauseRingsCoordinator;
  v25 = OBJC_IVAR____TtC10FitnessApp24ActivityDashboardContext_achievementResourceProvider;
  v24 = OBJC_IVAR____TtC10FitnessApp24ActivityDashboardContext_fiuiFormattingManager;
  v23 = OBJC_IVAR____TtC10FitnessApp24ActivityDashboardContext_chAwardsDataProvider;
  LOBYTE(v21) = 1;
  v8 = [objc_allocWithZone(CHWorkoutDetailViewController) initWithWorkout:a1 workoutActivity:0 healthStore:*(*(v6 + OBJC_IVAR____TtC10FitnessApp24ActivityDashboardContext_activityDataProvider) + OBJC_IVAR____TtC10FitnessApp20ActivityDataProvider_healthStore) model:*(v6 + OBJC_IVAR____TtC10FitnessApp24ActivityDashboardContext_fiuiModel) fitnessAppContext:*(v6 + OBJC_IVAR____TtC10FitnessApp24ActivityDashboardContext_fitnessAppContext) workoutFormattingManager:*(v6 + OBJC_IVAR____TtC10FitnessApp24ActivityDashboardContext_workoutFormattingManager) workoutDataProvider:*(v6 + OBJC_IVAR____TtC10FitnessApp24ActivityDashboardContext_workoutDataProvider) badgeImageFactory:*(v6 + OBJC_IVAR____TtC10FitnessApp24ActivityDashboardContext_badgeImageFactory) friendListManager:*(v6 + OBJC_IVAR____TtC10FitnessApp24ActivityDashboardContext_friendListManager) achievementLocalizationProvider:*(v6 + OBJC_IVAR____TtC10FitnessApp24ActivityDashboardContext_achievementLocalizationProvider) pauseRingsCoordinator:*(v6 + OBJC_IVAR____TtC10FitnessApp24ActivityDashboardContext_pauseRingsCoordinator) achievementResourceProvider:*(v6 + OBJC_IVAR____TtC10FitnessApp24ActivityDashboardContext_achievementResourceProvider) formattingManager:*(v6 + OBJC_IVAR____TtC10FitnessApp24ActivityDashboardContext_fiuiFormattingManager) awardsDataProvider:*(v6 + OBJC_IVAR____TtC10FitnessApp24ActivityDashboardContext_chAwardsDataProvider) shouldExposeDeepLinkToTrainingLoadFromEffort:v21];
  if (!v8)
  {
    return;
  }

  v9 = v8;
  v10 = [v5 navigationController];
  v11 = a4;
  if (v10)
  {
    v12 = v10;
    [v10 pushViewController:v9 animated:a4 == 0];
  }

  if (a2)
  {
    v13 = a2;
    if ([a1 isMultiSportWorkout])
    {
      LOBYTE(v22) = 1;
      v14 = [objc_allocWithZone(CHWorkoutDetailViewController) initWithWorkout:a1 workoutActivity:v13 healthStore:*(*(v6 + v34) + OBJC_IVAR____TtC10FitnessApp20ActivityDataProvider_healthStore) model:*(v6 + v33) fitnessAppContext:*(v6 + v32) workoutFormattingManager:*(v6 + v31) workoutDataProvider:*(v6 + v30) badgeImageFactory:*(v6 + v29) friendListManager:*(v6 + v28) achievementLocalizationProvider:*(v6 + v27) pauseRingsCoordinator:*(v6 + v26) achievementResourceProvider:*(v6 + v25) formattingManager:*(v6 + v24) awardsDataProvider:*(v6 + v23) shouldExposeDeepLinkToTrainingLoadFromEffort:v22];
      if (v14)
      {
        v15 = v14;
        v16 = [v5 navigationController];
        v11 = a4;
        if (v16)
        {
          v17 = v16;
          [v16 pushViewController:v15 animated:a4 == 0];
        }

        v39 = v15;
      }

      else
      {
        v39 = 0;
        v15 = v9;
        v11 = a4;
      }
    }

    else
    {
      v39 = 0;
      v15 = v9;
    }
  }

  else
  {
    v39 = 0;
    v15 = v9;
  }

  v18 = v15;
  if (v11)
  {

    v41._countAndFlagsBits = a3;
    v41._object = v11;
    v19 = sub_100404390(v41);
    if (v19 <= 4)
    {
      if (v19 <= 1)
      {
        if (v19)
        {
          v20 = 9;
        }

        else
        {
          v20 = 2;
        }
      }

      else if (v19 == 2)
      {
        v20 = 11;
      }

      else if (v19 == 3)
      {
        v20 = 6;
      }

      else
      {
        v20 = 13;
      }

      goto LABEL_36;
    }

    if (v19 <= 7)
    {
      if (v19 == 5)
      {
        v20 = 14;
      }

      else if (v19 == 6)
      {
        v20 = 10;
      }

      else
      {
        v20 = 7;
      }

      goto LABEL_36;
    }

    if (v19 == 8)
    {
      v20 = 8;
      goto LABEL_36;
    }

    if (v19 == 9)
    {
      v20 = 15;
LABEL_36:
      [v18 navigateToSection:v20];
    }
  }
}

void sub_100395388(void *a1)
{
  v2 = v1;
  v4 = *&v2[OBJC_IVAR____TtC10FitnessApp31ActivityDashboardViewController_context];
  v5 = *(v4 + OBJC_IVAR____TtC10FitnessApp24ActivityDashboardContext_fitnessAppContext);
  v6 = *(v4 + OBJC_IVAR____TtC10FitnessApp24ActivityDashboardContext_mindfulnessSessionFormattingManager);
  objc_allocWithZone(type metadata accessor for MindfulnessSessionDetailViewController(0));
  sub_100349480(a1, v5, v6);
  v10 = v7;
  v8 = [v2 navigationController];
  if (v8)
  {
    v9 = v8;
    [v8 pushViewController:v10 animated:1];
  }
}

void sub_100395478(uint64_t a1)
{
  v90 = (type metadata accessor for FitnessPlusStackViewModel(0) - 8);
  __chkstk_darwin(v90);
  v4 = &v77 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = v4;
  sub_10039E0C4(a1, v4, type metadata accessor for FitnessPlusStackViewModel);
  v78 = v1;
  v5 = *&v1[OBJC_IVAR____TtC10FitnessApp31ActivityDashboardViewController_context];
  v88 = *(v5 + OBJC_IVAR____TtC10FitnessApp24ActivityDashboardContext_historyDataProvider);
  v86 = *(v5 + OBJC_IVAR____TtC10FitnessApp24ActivityDashboardContext_fiuiFormattingManager);
  v79 = *(v5 + OBJC_IVAR____TtC10FitnessApp24ActivityDashboardContext_fitnessAppContext);
  v6 = v79;
  v85 = *(v5 + OBJC_IVAR____TtC10FitnessApp24ActivityDashboardContext_healthStore);
  v82 = *(v5 + OBJC_IVAR____TtC10FitnessApp24ActivityDashboardContext_fiuiModel);
  v80 = *(v5 + OBJC_IVAR____TtC10FitnessApp24ActivityDashboardContext_badgeImageFactory);
  v7 = v80;
  v81 = *(v5 + OBJC_IVAR____TtC10FitnessApp24ActivityDashboardContext_friendListManager);
  v8 = v81;
  v83 = *(v5 + OBJC_IVAR____TtC10FitnessApp24ActivityDashboardContext_achievementLocalizationProvider);
  v84 = *(v5 + OBJC_IVAR____TtC10FitnessApp24ActivityDashboardContext_pauseRingsCoordinator);
  v93 = *(v5 + OBJC_IVAR____TtC10FitnessApp24ActivityDashboardContext_achievementResourceProvider);
  v9 = *(v5 + OBJC_IVAR____TtC10FitnessApp24ActivityDashboardContext_chAwardsDataProvider);
  v10 = *(v5 + OBJC_IVAR____TtC10FitnessApp24ActivityDashboardContext_stackFormattingManager);
  v92 = *(v5 + OBJC_IVAR____TtC10FitnessApp24ActivityDashboardContext_workoutFormattingManager);
  v87 = *(v5 + OBJC_IVAR____TtC10FitnessApp24ActivityDashboardContext_mindfulnessSessionFormattingManager);
  v11 = v87;
  v12 = type metadata accessor for StackDetailViewController(0);
  v13 = objc_allocWithZone(v12);
  *&v13[OBJC_IVAR____TtC10FitnessApp25StackDetailViewController_dataSource] = 0;
  sub_10039E0C4(v4, &v13[OBJC_IVAR____TtC10FitnessApp25StackDetailViewController_stackViewModel], type metadata accessor for FitnessPlusStackViewModel);
  *&v13[OBJC_IVAR____TtC10FitnessApp25StackDetailViewController_fitnessAppContext] = v6;
  v14 = v85;
  v15 = v86;
  *&v13[OBJC_IVAR____TtC10FitnessApp25StackDetailViewController_fiuiFormattingManager] = v86;
  v16 = v88;
  *&v13[OBJC_IVAR____TtC10FitnessApp25StackDetailViewController_historyDataProvider] = v88;
  *&v13[OBJC_IVAR____TtC10FitnessApp25StackDetailViewController_healthStore] = v14;
  v17 = v82;
  *&v13[OBJC_IVAR____TtC10FitnessApp25StackDetailViewController_model] = v82;
  *&v13[OBJC_IVAR____TtC10FitnessApp25StackDetailViewController_badgeImageFactory] = v7;
  *&v13[OBJC_IVAR____TtC10FitnessApp25StackDetailViewController_friendListManager] = v8;
  v19 = v83;
  v18 = v84;
  *&v13[OBJC_IVAR____TtC10FitnessApp25StackDetailViewController_achievementLocalizationProvider] = v83;
  *&v13[OBJC_IVAR____TtC10FitnessApp25StackDetailViewController_pauseRingsCoordinator] = v18;
  v20 = v92;
  *&v13[OBJC_IVAR____TtC10FitnessApp25StackDetailViewController_achievementResourceProvider] = v93;
  *&v13[OBJC_IVAR____TtC10FitnessApp25StackDetailViewController_awardsDataProvider] = v9;
  *&v13[OBJC_IVAR____TtC10FitnessApp25StackDetailViewController_stackFormattingManager] = v10;
  *&v13[OBJC_IVAR____TtC10FitnessApp25StackDetailViewController_workoutFormattingManager] = v20;
  *&v13[OBJC_IVAR____TtC10FitnessApp25StackDetailViewController_mindfulnessSessionFormattingManager] = v11;
  v95.receiver = v13;
  v95.super_class = v12;
  v89 = "initWithNibName:bundle:";
  v88 = v16;
  v86 = v15;
  v21 = v79;
  v85 = v14;
  v22 = v17;
  v23 = v80;
  v24 = v81;
  v25 = v19;
  v84 = v18;
  v26 = v93;
  v27 = v9;
  v28 = v10;
  v29 = v92;
  v93 = v87;
  v92 = v21;
  v87 = v86;
  v30 = v88;
  v88 = v85;
  v86 = v22;
  v31 = v23;
  v32 = v24;
  v33 = v25;
  v85 = v84;
  v84 = v26;
  v83 = v27;
  v82 = v28;
  v81 = v29;
  v93 = v93;
  v34 = objc_msgSendSuper2(&v95, v89, 0, 0);
  v35 = objc_opt_self();
  v36 = v34;
  v37 = [v35 detailViewDateFormatter];
  isa = Date._bridgeToObjectiveC()().super.isa;
  v39 = [v37 stringFromDate:isa];

  if (!v39)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v39 = String._bridgeToObjectiveC()();
  }

  [v36 setTitle:v39];
  v40 = [v36 navigationItem];
  [v40 setLargeTitleDisplayMode:2];

  v41 = [v36 tableView];
  if (!v41)
  {
    __break(1u);
    goto LABEL_17;
  }

  v42 = v41;
  [v41 setSeparatorStyle:0];

  v43 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v44 = v36;
  v45 = [v44 tableView];
  if (!v45)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v46 = v45;
  v89 = v33;
  v90 = v32;
  v47 = v31;
  v48 = objc_allocWithZone(UITableViewDiffableDataSource);
  aBlock[4] = sub_100282A98;
  aBlock[5] = v43;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100410D80;
  aBlock[3] = &unk_100854D88;
  v49 = _Block_copy(aBlock);

  v50 = [v48 initWithTableView:v46 cellProvider:v49];

  _Block_release(v49);

  v51 = *&v44[OBJC_IVAR____TtC10FitnessApp25StackDetailViewController_dataSource];
  *&v44[OBJC_IVAR____TtC10FitnessApp25StackDetailViewController_dataSource] = v50;

  v52 = [v44 tableView];
  if (!v52)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v53 = v52;
  type metadata accessor for StackDetailHeaderCell(0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v55 = String._bridgeToObjectiveC()();
  [v53 registerClass:ObjCClassFromMetadata forCellReuseIdentifier:v55];

  v56 = [v44 tableView];
  if (!v56)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v57 = v56;
  type metadata accessor for StackDetailSideBySideItemsCell();
  v58 = swift_getObjCClassFromMetadata();
  v59 = String._bridgeToObjectiveC()();
  [v57 registerClass:v58 forCellReuseIdentifier:v59];

  v60 = [v44 tableView];
  if (!v60)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v61 = v60;
  type metadata accessor for WorkoutsListTableViewCell();
  v62 = swift_getObjCClassFromMetadata();
  v63 = String._bridgeToObjectiveC()();
  [v61 registerClass:v62 forCellReuseIdentifier:v63];

  v64 = [v44 tableView];
  if (!v64)
  {
LABEL_21:
    __break(1u);
    return;
  }

  type metadata accessor for MindfulnessSessionListTableViewCell();
  v65 = swift_getObjCClassFromMetadata();
  v66 = String._bridgeToObjectiveC()();
  [v64 registerClass:v65 forCellReuseIdentifier:v66];

  sub_10029DB90();
  v67 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v68 = swift_allocObject();
  *(v68 + 16) = sub_100282AA0;
  *(v68 + 24) = v67;
  v69 = OBJC_IVAR___CHHistoryDataProvider_onChangeHandlers;
  swift_beginAccess();
  v70 = *&v30[v69];
  swift_retain_n();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v30[v69] = v70;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v70 = sub_1001A1E7C(0, v70[2] + 1, 1, v70);
    *&v30[v69] = v70;
  }

  v73 = v70[2];
  v72 = v70[3];
  if (v73 >= v72 >> 1)
  {
    v70 = sub_1001A1E7C((v72 > 1), v73 + 1, 1, v70);
  }

  v70[2] = v73 + 1;
  v74 = &v70[2 * v73];
  v74[4] = sub_100077510;
  v74[5] = v68;
  *&v30[v69] = v70;
  swift_endAccess();

  sub_10039E9CC(v91, type metadata accessor for FitnessPlusStackViewModel);

  v75 = [v78 navigationController];
  if (v75)
  {
    v76 = v75;
    [v75 pushViewController:v44 animated:1];
  }
}

void sub_100395E58(void *a1, char a2)
{
  v3 = *(v2 + OBJC_IVAR____TtC10FitnessApp31ActivityDashboardViewController_context);
  v4 = *(v3 + OBJC_IVAR____TtC10FitnessApp24ActivityDashboardContext_historyDataProvider);
  v126 = *(v3 + OBJC_IVAR____TtC10FitnessApp24ActivityDashboardContext_fitnessAppContext);
  v5 = *(v3 + OBJC_IVAR____TtC10FitnessApp24ActivityDashboardContext_fiuiFormattingManager);
  v129 = *(v3 + OBJC_IVAR____TtC10FitnessApp24ActivityDashboardContext_workoutFormattingManager);
  v6 = *(v3 + OBJC_IVAR____TtC10FitnessApp24ActivityDashboardContext_healthStore);
  v7 = *(v3 + OBJC_IVAR____TtC10FitnessApp24ActivityDashboardContext_fiuiModel);
  v132 = *(v3 + OBJC_IVAR____TtC10FitnessApp24ActivityDashboardContext_badgeImageFactory);
  v8 = *(v3 + OBJC_IVAR____TtC10FitnessApp24ActivityDashboardContext_friendListManager);
  v9 = *(v3 + OBJC_IVAR____TtC10FitnessApp24ActivityDashboardContext_achievementLocalizationProvider);
  v10 = *(v3 + OBJC_IVAR____TtC10FitnessApp24ActivityDashboardContext_pauseRingsCoordinator);
  v11 = *(v3 + OBJC_IVAR____TtC10FitnessApp24ActivityDashboardContext_achievementResourceProvider);
  v12 = *(v3 + OBJC_IVAR____TtC10FitnessApp24ActivityDashboardContext_chAwardsDataProvider);
  v137 = *(v3 + OBJC_IVAR____TtC10FitnessApp24ActivityDashboardContext_mindfulnessSessionFormattingManager);
  v135 = *(v3 + OBJC_IVAR____TtC10FitnessApp24ActivityDashboardContext_stackFormattingManager);
  v13 = type metadata accessor for HistoryListViewController();
  v14 = objc_allocWithZone(v13);
  *&v14[OBJC_IVAR____TtC10FitnessApp25HistoryListViewController_dataSource] = 0;
  v15 = &v14[OBJC_IVAR____TtC10FitnessApp25HistoryListViewController_filterValue];
  *v15 = 0;
  *(v15 + 4) = 512;
  *&v14[OBJC_IVAR____TtC10FitnessApp25HistoryListViewController_allHistoryItems] = _swiftEmptyArrayStorage;
  *&v14[OBJC_IVAR____TtC10FitnessApp25HistoryListViewController_workoutStatistics] = &_swiftEmptyDictionarySingleton;
  *&v14[OBJC_IVAR____TtC10FitnessApp25HistoryListViewController_filterViewController] = 0;
  *&v14[OBJC_IVAR____TtC10FitnessApp25HistoryListViewController_observers] = _swiftEmptyArrayStorage;
  v16 = &v14[OBJC_IVAR____TtC10FitnessApp25HistoryListViewController_awaitingDataLoadFilter];
  *v16 = 0;
  *(v16 + 4) = 1792;
  *&v14[OBJC_IVAR____TtC10FitnessApp25HistoryListViewController_dataProvider] = v4;
  *&v14[OBJC_IVAR____TtC10FitnessApp25HistoryListViewController_fitnessAppContext] = v126;
  *&v14[OBJC_IVAR____TtC10FitnessApp25HistoryListViewController_fiuiFormattingManager] = v5;
  *&v14[OBJC_IVAR____TtC10FitnessApp25HistoryListViewController_workoutFormattingManager] = v129;
  *&v14[OBJC_IVAR____TtC10FitnessApp25HistoryListViewController_healthStore] = v6;
  *&v14[OBJC_IVAR____TtC10FitnessApp25HistoryListViewController_model] = v7;
  *&v14[OBJC_IVAR____TtC10FitnessApp25HistoryListViewController_friendListManager] = v8;
  *&v14[OBJC_IVAR____TtC10FitnessApp25HistoryListViewController_badgeImageFactory] = v132;
  *&v14[OBJC_IVAR____TtC10FitnessApp25HistoryListViewController_achievementLocalizationProvider] = v9;
  *&v14[OBJC_IVAR____TtC10FitnessApp25HistoryListViewController_pauseRingsCoordinator] = v10;
  *&v14[OBJC_IVAR____TtC10FitnessApp25HistoryListViewController_achievementResourceProvider] = v11;
  *&v14[OBJC_IVAR____TtC10FitnessApp25HistoryListViewController_awardsDataProvider] = v12;
  *&v14[OBJC_IVAR____TtC10FitnessApp25HistoryListViewController_mindfulnessSessionFormattingManager] = v137;
  *&v14[OBJC_IVAR____TtC10FitnessApp25HistoryListViewController_stackFormattingManager] = v135;
  v143.receiver = v14;
  v143.super_class = v13;
  v124 = v4;
  v127 = v126;
  v122 = v5;
  v130 = v129;
  v17 = v6;
  v120 = v7;
  v18 = v132;
  v19 = v8;
  v20 = v9;
  v21 = v10;
  v22 = v11;
  v23 = v12;
  v24 = v137;
  v138 = v135;
  v25 = v124;
  v136 = v127;
  v133 = v122;
  v131 = v130;
  v128 = v17;
  v125 = v120;
  v26 = v19;
  v121 = v18;
  v27 = v20;
  v28 = v21;
  v123 = v22;
  v116 = v23;
  v114 = v24;
  v139 = v138;
  v29 = objc_msgSendSuper2(&v143, "initWithNibName:bundle:", 0, 0);
  v30 = *&v29[OBJC_IVAR____TtC10FitnessApp25HistoryListViewController_filterValue];
  v31 = *&v29[OBJC_IVAR____TtC10FitnessApp25HistoryListViewController_filterValue + 8];
  v32 = v29;
  sub_100448AF0(v30, v31);
  v34 = v33;
  *&v32[OBJC_IVAR____TtC10FitnessApp25HistoryListViewController_allHistoryItems] = v35;

  *&v32[OBJC_IVAR____TtC10FitnessApp25HistoryListViewController_workoutStatistics] = v34;

  v36 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v37 = objc_allocWithZone(type metadata accessor for HistoryFilterUIViewController());
  v38 = sub_1002586AC(sub_1002831D8, v36);
  v39 = OBJC_IVAR____TtC10FitnessApp25HistoryListViewController_filterViewController;
  v40 = *&v32[OBJC_IVAR____TtC10FitnessApp25HistoryListViewController_filterViewController];
  *&v32[OBJC_IVAR____TtC10FitnessApp25HistoryListViewController_filterViewController] = v38;

  v41 = *&v25[OBJC_IVAR___CHHistoryDataProvider_lock];
  v42 = v25;
  v43 = v38;
  os_unfair_lock_lock(v41 + 4);
  sub_1002831DC(v140);
  os_unfair_lock_unlock(v41 + 4);
  if (*(v140[0] + 16))
  {
    *&v43[OBJC_IVAR____TtC10FitnessApp29HistoryFilterUIViewController_historyTypes] = v140[0];

    sub_100258840();
  }

  else
  {
  }

  v44 = [objc_opt_self() mainBundle];
  v45 = String._bridgeToObjectiveC()();
  v46 = [v44 localizedStringForKey:v45 value:0 table:0];

  if (!v46)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v46 = String._bridgeToObjectiveC()();
  }

  [v32 setTitle:v46];
  v47 = [v32 tableView];
  if (!v47)
  {
    __break(1u);
    goto LABEL_39;
  }

  v48 = v47;
  [v47 setSectionHeaderTopPadding:0.0];

  v49 = [v32 tableView];
  if (!v49)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  v50 = v49;
  [v49 setSeparatorStyle:0];

  v51 = [v32 tableView];
  if (!v51)
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  v52 = v51;
  v53 = *&v32[v39];
  if (!v53)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  v54 = [v53 view];
  if (!v54)
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  v55 = v54;
  [v54 frame];
  v57 = v56;
  v59 = v58;
  v61 = v60;
  v63 = v62;

  v64 = [objc_allocWithZone(UIView) initWithFrame:{v57, v59, v61, v63}];
  [v52 setTableHeaderView:v64];

  v65 = [v32 tableView];
  if (!v65)
  {
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  v66 = v65;
  v67 = [v65 tableHeaderView];

  if (v67)
  {
    v68 = *&v32[v39];
    if (!v68)
    {
LABEL_49:
      __break(1u);
      goto LABEL_50;
    }

    v69 = [v68 view];
    if (!v69)
    {
LABEL_50:
      __break(1u);
      return;
    }

    v70 = v69;
    [v67 addSubview:v69];
  }

  v134 = v28;
  v71 = v27;
  v72 = [v32 tableView];
  if (!v72)
  {
    goto LABEL_44;
  }

  v73 = v72;
  v74 = v26;
  sub_1000059F8(0, &unk_1008E4DF0, off_100832810);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v76 = String._bridgeToObjectiveC()();
  [v73 registerClass:ObjCClassFromMetadata forHeaderFooterViewReuseIdentifier:v76];

  v77 = [v32 tableView];
  if (!v77)
  {
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  v78 = v77;
  sub_1000059F8(0, &unk_1008EAF80, off_100832808);
  v79 = swift_getObjCClassFromMetadata();
  v80 = String._bridgeToObjectiveC()();
  [v78 registerClass:v79 forCellReuseIdentifier:v80];

  v81 = [v32 tableView];
  if (!v81)
  {
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  v82 = v81;
  type metadata accessor for MindfulnessSessionListTableViewCell();
  v83 = swift_getObjCClassFromMetadata();
  v84 = String._bridgeToObjectiveC()();
  [v82 registerClass:v83 forCellReuseIdentifier:v84];

  v85 = [v32 tableView];
  if (!v85)
  {
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  v86 = v85;
  type metadata accessor for WorkoutsListTableViewCell();
  v87 = swift_getObjCClassFromMetadata();
  v88 = String._bridgeToObjectiveC()();
  [v86 registerClass:v87 forCellReuseIdentifier:v88];

  v89 = [v32 tableView];
  if (!v89)
  {
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  type metadata accessor for StackListTableViewCell(0);
  v90 = swift_getObjCClassFromMetadata();
  v91 = String._bridgeToObjectiveC()();
  [v89 registerClass:v90 forCellReuseIdentifier:v91];

  v92 = type metadata accessor for WorkoutFeatures();
  v141 = v92;
  v93 = sub_10039D820(&qword_1008E4E00, &type metadata accessor for WorkoutFeatures, &protocol conformance descriptor for WorkoutFeatures);
  v142 = v93;
  v94 = sub_100005994(v140);
  v95 = *(*(v92 - 8) + 104);
  v95(v94, enum case for WorkoutFeatures.Kahana(_:), v92);
  v96 = isFeatureEnabled(_:)();
  sub_100005A40(v140);
  v97 = v32;
  if (v96)
  {
    v141 = v92;
    v142 = v93;
    v98 = sub_100005994(v140);
    v95(v98, enum case for WorkoutFeatures.ManualLogging(_:), v92);
    v99 = isFeatureEnabled(_:)();
    sub_100005A40(v140);
    v97 = v32;
    if (v99)
    {
      v100 = [v32 navigationItem];
      v97 = [objc_allocWithZone(UIBarButtonItem) initWithBarButtonSystemItem:7 target:v32 action:"presentManualLoggingViewController"];

      [v100 setRightBarButtonItem:v97];
    }
  }

  sub_10059D990();
  v101 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v102 = swift_allocObject();
  *(v102 + 16) = sub_1002831D4;
  *(v102 + 24) = v101;
  v103 = OBJC_IVAR___CHHistoryDataProvider_onChangeHandlers;
  swift_beginAccess();
  v104 = *&v42[v103];
  swift_retain_n();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v42[v103] = v104;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v104 = sub_1001A1E7C(0, v104[2] + 1, 1, v104);
    *&v42[v103] = v104;
  }

  v107 = v104[2];
  v106 = v104[3];
  if (v107 >= v106 >> 1)
  {
    v104 = sub_1001A1E7C((v106 > 1), v107 + 1, 1, v104);
  }

  v104[2] = v107 + 1;
  v108 = &v104[2 * v107];
  v108[4] = sub_10039ECDC;
  v108[5] = v102;
  *&v42[v103] = v104;
  swift_endAccess();

  sub_10059CE6C();

  if (a1)
  {
    v109 = a1;
    if ([v109 effectiveTypeIdentifier] == 84)
    {
      v110 = 0;
      v111 = 1024;
    }

    else
    {
      if ([objc_opt_self() historyFilterDisambiguatesLocationForActivityType:{objc_msgSend(v109, "identifier")}])
      {
        v112 = [v109 isIndoor];
      }

      else
      {
        v112 = 2;
      }

      v110 = [v109 identifier];
      v111 = v112;
    }

    sub_10059D320(v110, v111);
  }

  else
  {
    sub_10059D320(0, 768);
  }

  v113 = [v118 navigationController];
  [v113 pushViewController:v32 animated:a2 & 1];
}