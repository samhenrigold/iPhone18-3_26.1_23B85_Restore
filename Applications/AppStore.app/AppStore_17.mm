char *sub_1001DD9F8(uint64_t *a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC8AppStore28TodayCardProtectionLayerView_gradientMaskView);
  v3 = a1[2];
  if (v3)
  {
    sub_100144108(0, v3, 0);
    v5 = _swiftEmptyArrayStorage;
    v6 = a1 + 4;
    v7 = _swiftEmptyArrayStorage[2];
    v8 = a1 + 5;
    v9 = v3;
    do
    {
      v10 = *v8;
      v17 = v5;
      v11 = v5[3];
      if (v7 >= v11 >> 1)
      {
        sub_100144108((v11 > 1), v7 + 1, 1);
        v5 = v17;
      }

      v5[2] = v7 + 1;
      v5[v7 + 4] = v10;
      v8 += 2;
      ++v7;
      --v9;
    }

    while (v9);
    sub_1001C0B48(v5);
    specialized ContiguousArray.reserveCapacity(_:)();
    v12 = objc_opt_self();
    do
    {
      v13 = *v6;
      v6 += 2;
      v14 = [v12 blackColor];
      v15 = [v14 colorWithAlphaComponent:v13];

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      --v3;
    }

    while (v3);
  }

  else
  {
    sub_1001C0B48(_swiftEmptyArrayStorage);
  }

  *(v2 + OBJC_IVAR____TtC8AppStore12GradientView_colors) = _swiftEmptyArrayStorage;

  return sub_1001C0CEC();
}

id sub_1001DDCA4(uint64_t a1)
{
  sub_100005744(0, &unk_1009856A0, UIColorEffect_ptr);
  result = [swift_getObjCClassFromMetadata() effectCompositingColor:a1 withMode:0 alpha:0.4];
  if (result)
  {
    v3 = result;
    sub_10002849C(&qword_100973210, qword_1007B0BB0);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_1007B48F0;
    if (qword_10096D330 != -1)
    {
      swift_once();
    }

    v5 = qword_100979128;
    *(v4 + 32) = qword_100979128;
    *(v4 + 40) = v3;
    v6 = qword_10096D338;
    v7 = v5;
    v8 = v3;
    if (v6 != -1)
    {
      swift_once();
    }

    v9 = qword_100979130;
    *(v4 + 48) = qword_100979130;
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_1007B48F0;
    *(v10 + 32) = v7;
    *(v10 + 40) = v8;
    *(v10 + 48) = v9;
    v11 = v9;
    return v4;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_1001DDE20()
{
  result = qword_100972DC0;
  if (!qword_100972DC0)
  {
    type metadata accessor for TodayCard.Style();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100972DC0);
  }

  return result;
}

void sub_1001DDE78()
{
  v1 = OBJC_IVAR____TtC8AppStore28TodayCardProtectionLayerView_effectsView;
  *(v0 + v1) = [objc_allocWithZone(UIVisualEffectView) init];
  v2 = OBJC_IVAR____TtC8AppStore28TodayCardProtectionLayerView_gradientMaskView;
  *(v0 + v2) = [objc_allocWithZone(type metadata accessor for GradientView()) init];
  *(v0 + OBJC_IVAR____TtC8AppStore28TodayCardProtectionLayerView_gradientType) = kCAGradientLayerAxial;
  *(v0 + OBJC_IVAR____TtC8AppStore28TodayCardProtectionLayerView_gradientStartY) = 0;
  *(v0 + OBJC_IVAR____TtC8AppStore28TodayCardProtectionLayerView_gradientEndY) = 0x3FF0000000000000;
  *(v0 + OBJC_IVAR____TtC8AppStore28TodayCardProtectionLayerView_rotationAngle) = 0;
  *(v0 + OBJC_IVAR____TtC8AppStore28TodayCardProtectionLayerView_blurUserInterfaceStyle) = 0;
  v3 = OBJC_IVAR____TtC8AppStore28TodayCardProtectionLayerView_style;
  v4 = qword_10096D340;
  v5 = kCAGradientLayerAxial;
  if (v4 != -1)
  {
    swift_once();
  }

  *(v0 + v3) = xmmword_1009CE6F0;
  *(v0 + OBJC_IVAR____TtC8AppStore28TodayCardProtectionLayerView_includeTopGradientFade) = 1;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_1001DDFC0()
{
  v1 = sub_10002849C(&unk_10097DAF0, &qword_1007B2A30);
  __chkstk_darwin(v1 - 8);
  v2 = sub_10002849C(&qword_1009791C0, &qword_1007BF538);
  v3 = *(v2 - 8);
  *&v4 = __chkstk_darwin(v2).n128_u64[0];
  v6 = &v10 - v5;
  if ([*(*(v0 + OBJC_IVAR____TtC8AppStore38ProductEditorsChoiceCollectionViewCell_editorsChoiceView) + qword_100983CE8) isHidden])
  {
    sub_10002849C(&qword_100975748, &qword_1007BA160);
    type metadata accessor for SelectableShelfComponentViewReaction();
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_1007B1890;
    static SelectableShelfComponentViewReaction.propagate.getter();
    static SelectableShelfComponentViewReaction.deselect.getter();
    v10 = v7;
    sub_1001DF33C(&qword_100975750, &type metadata accessor for SelectableShelfComponentViewReaction, &protocol conformance descriptor for SelectableShelfComponentViewReaction);
    sub_10002849C(&qword_100975758, &qword_1007DA2A0);
    sub_100135DA0();
    return dispatch thunk of SetAlgebra.init<A>(_:)();
  }

  else
  {
    ItemLayoutContext.mutableState.getter();
    WritableStateLens.init(_:)();
    sub_1001DF2E8();
    WritableStateLens<A>.updateValue(_:)();
    sub_10002849C(&qword_100975748, &qword_1007BA160);
    type metadata accessor for SelectableShelfComponentViewReaction();
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_1007B1E00;
    static SelectableShelfComponentViewReaction.propagate.getter();
    static SelectableShelfComponentViewReaction.deselect.getter();
    static SelectableShelfComponentViewReaction.reapply.getter();
    v10 = v9;
    sub_1001DF33C(&qword_100975750, &type metadata accessor for SelectableShelfComponentViewReaction, &protocol conformance descriptor for SelectableShelfComponentViewReaction);
    sub_10002849C(&qword_100975758, &qword_1007DA2A0);
    sub_100135DA0();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    return (*(v3 + 8))(v6, v2);
  }
}

void sub_1001DE3B8(void *a1, double a2)
{
  v4 = type metadata accessor for SystemImage();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for EditorsChoiceView();
  swift_getObjectType();
  v9 = [a1 traitCollection];
  v10 = [v9 preferredContentSizeCategory];
  v11 = UIContentSizeCategory.isAccessibilityCategory.getter();

  if ((v11 & 1) == 0)
  {
    v17 = v8;
    v12 = *(v5 + 104);
    v12(v7, enum case for SystemImage.laurelLeading(_:), v4);
    if (qword_10096D548 != -1)
    {
      swift_once();
    }

    v13 = static SystemImage.load(_:with:)();
    v14 = *(v5 + 8);
    v14(v7, v4);
    v12(v7, enum case for SystemImage.laurelTrailing(_:), v4);
    v15 = static SystemImage.load(_:with:)();
    v14(v7, v4);
    [v13 size];
    [v15 size];

    v8 = v17;
  }

  sub_10029E79C(0, 3, 0, 1, a1, v8, a2);
}

uint64_t sub_1001DE650@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC8AppStore38ProductEditorsChoiceCollectionViewCell_itemLayoutContext;
  swift_beginAccess();
  return sub_10009768C(v1 + v3, a1);
}

uint64_t sub_1001DE6AC(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8AppStore38ProductEditorsChoiceCollectionViewCell_itemLayoutContext;
  swift_beginAccess();
  sub_10009761C(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t sub_1001DE7A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_1001DF33C(&qword_100974CA8, type metadata accessor for ProductEditorsChoiceCollectionViewCell, &unk_1007BF488);

  return static ConfigurableCell<>.dequeueConfiguredCell(in:collectionView:asPartOf:)(a1, a2, a3, v5, a5, v10);
}

uint64_t sub_1001DE838(uint64_t a1)
{
  result = sub_1001DF33C(&qword_1009791A8, type metadata accessor for ProductEditorsChoiceCollectionViewCell, &unk_1007BF460);
  *(a1 + 8) = result;
  return result;
}

double sub_1001DE8D8(uint64_t a1)
{
  v38 = type metadata accessor for PageGrid();
  v37 = *(v38 - 8);
  __chkstk_darwin(v38);
  v35 = v32 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = type metadata accessor for DynamicTextAppearance();
  v3 = *(v33 - 8);
  __chkstk_darwin(v33);
  v5 = v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = v32 - v7;
  __chkstk_darwin(v9);
  v36 = type metadata accessor for LabelPlaceholder();
  v34 = *(v36 - 8);
  __chkstk_darwin(v36);
  v40 = v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10002849C(&qword_1009791B0, &qword_1007BF4D0);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = v32 - v13;
  type metadata accessor for EditorsChoice();
  sub_1001DF33C(&qword_100983810, &type metadata accessor for EditorsChoice, &protocol conformance descriptor for EditorsChoice);
  ItemLayoutContext.typedModel<A>(as:)();
  if (!v43[0])
  {
    return 0.0;
  }

  v15 = v43[0];
  sub_1001DF2E8();
  v32[2] = a1;
  ItemLayoutContext.typedState<A>(as:)();
  StateLens<A>.currentValue.getter();
  if (v43[0])
  {
    v32[0] = 0;
  }

  else
  {
    v17 = EditorsChoice.isCollapsed.getter();
    v18 = 6;
    if ((v17 & 1) == 0)
    {
      v18 = 0;
    }

    v32[0] = v18;
  }

  v32[1] = v15;
  (*(v12 + 8))(v14, v11);
  type metadata accessor for LayoutViewPlaceholder();
  swift_allocObject();
  v39 = LayoutViewPlaceholder.init(measureWith:)();
  EditorsChoice.notes.getter();
  DynamicTextAppearance.init()();
  if (qword_10096DF00 != -1)
  {
    swift_once();
  }

  v19 = type metadata accessor for FontUseCase();
  sub_1000056A8(v19, qword_1009D0C80);
  DynamicTextAppearance.withFontUseCase(_:)();
  v20 = *(v3 + 8);
  v21 = v5;
  v22 = v33;
  v20(v21, v33);
  DynamicTextAppearance.withNumberOfLines(_:)();
  v20(v8, v22);
  LabelPlaceholder.Options.init(rawValue:)();
  v23 = v40;
  LabelPlaceholder.init(_:with:where:)();
  type metadata accessor for ProductEditorsChoiceView(0);
  v42[5] = v39;
  Measurable.placeable.getter();
  v24 = v36;
  v41[3] = v36;
  v41[4] = &protocol witness table for LabelPlaceholder;
  v25 = sub_1000056E0(v41);
  v26 = v34;
  (*(v34 + 16))(v25, v23, v24);
  v27 = EditorsChoice.showsBadge.getter();
  sub_1003DA53C((v27 & 1) == 0, v43);
  sub_100007000(v42);
  sub_100007000(v41);
  sub_10002A400(v43, v43[3]);
  swift_getKeyPath();
  v28 = v35;
  ItemLayoutContext.subscript.getter();

  PageGrid.componentMeasuringSize(spanning:)();
  (*(v37 + 8))(v28, v38);
  swift_getKeyPath();
  ItemLayoutContext.subscript.getter();

  v29 = v42[0];
  dispatch thunk of Placeable.measure(toFit:with:)();
  v16 = v30;

  (*(v26 + 8))(v40, v24);
  sub_100007000(v43);
  return v16;
}

double sub_1001DEF20()
{
  v0 = type metadata accessor for ShelfBackground();
  v29 = *(v0 - 8);
  __chkstk_darwin(v0);
  v2 = &v22[-((v1 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v3);
  v5 = &v22[-v4];
  v6 = sub_10002849C(&unk_1009731F0, &qword_1007B0DA0);
  v27 = *(v6 - 8);
  v28 = v6;
  __chkstk_darwin(v6);
  v8 = &v22[-v7];
  v9 = sub_10002849C(&qword_1009791B0, &qword_1007BF4D0);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v22[-v11];
  type metadata accessor for EditorsChoice();
  sub_1001DF33C(&qword_100983810, &type metadata accessor for EditorsChoice, &protocol conformance descriptor for EditorsChoice);
  ItemLayoutContext.typedModel<A>(as:)();
  v14 = v31;
  if (v31)
  {
    v24 = v2;
    v25 = v0;
    v26 = *(v26 + OBJC_IVAR____TtC8AppStore38ProductEditorsChoiceCollectionViewCell_editorsChoiceView);
    sub_1001DF2E8();
    ItemLayoutContext.typedState<A>(as:)();
    StateLens<A>.currentValue.getter();
    if (v30)
    {
      v15 = 1;
    }

    else
    {
      v15 = EditorsChoice.isCollapsed.getter() ^ 1;
    }

    v23 = v15;
    (*(v10 + 8))(v12, v9);
    swift_getKeyPath();
    ItemLayoutContext.subscript.getter();

    swift_getKeyPath();
    v16 = v28;
    ReadOnlyLens.subscript.getter();

    (*(v27 + 8))(v8, v16);
    v17 = v29;
    v18 = v24;
    v19 = v25;
    (*(v29 + 104))(v24, enum case for ShelfBackground.editorsChoice(_:), v25);
    v20 = static ShelfBackground.== infix(_:_:)();
    v21 = *(v17 + 8);
    v21(v18, v19);
    v21(v5, v19);
    sub_100207D74(v14, v23 & 1, v20 & 1);
  }

  return result;
}

unint64_t sub_1001DF2E8()
{
  result = qword_1009791B8;
  if (!qword_1009791B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009791B8);
  }

  return result;
}

uint64_t sub_1001DF33C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1001DF398()
{
  result = qword_1009791C8;
  if (!qword_1009791C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009791C8);
  }

  return result;
}

unint64_t sub_1001DF3F0()
{
  result = qword_1009791D0;
  if (!qword_1009791D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009791D0);
  }

  return result;
}

uint64_t sub_1001DF444()
{
  v0 = sub_10002849C(&qword_100979740, &qword_1007D00E0);
  sub_100005644(v0, qword_1009CE720);
  sub_1000056A8(v0, qword_1009CE720);
  return PreferenceKey.init(_:)();
}

uint64_t sub_1001DF4BC()
{
  v0 = sub_10002849C(&qword_100979740, &qword_1007D00E0);
  sub_100005644(v0, qword_1009CE738);
  sub_1000056A8(v0, qword_1009CE738);
  return PreferenceKey.init(_:)();
}

uint64_t sub_1001DF534()
{
  v0 = sub_10002849C(&qword_100979740, &qword_1007D00E0);
  sub_100005644(v0, qword_1009CE750);
  sub_1000056A8(v0, qword_1009CE750);
  return PreferenceKey.init(_:)();
}

uint64_t sub_1001DF5AC()
{
  v0 = sub_10002849C(&qword_100979740, &qword_1007D00E0);
  sub_100005644(v0, qword_1009CE768);
  sub_1000056A8(v0, qword_1009CE768);
  return PreferenceKey.init(_:)();
}

uint64_t sub_1001DF624()
{
  v0 = type metadata accessor for UUID();
  v1 = *(v0 - 8);
  v66 = v0;
  v67 = v1;
  __chkstk_darwin(v0);
  v3 = &v56 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10002849C(&qword_100979740, &qword_1007D00E0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v56 - v6;
  v65 = 0x8000000100806F00;
  if (qword_10096D358 != -1)
  {
    swift_once();
  }

  v8 = sub_1000056A8(v4, qword_1009CE720);
  v63 = type metadata accessor for LocalPreferences();
  v9 = static LocalPreferences.AppStoreKit.getter();
  v11 = v5 + 16;
  v10 = *(v5 + 16);
  v10(v7, v8, v4);
  type metadata accessor for BoolPreferencesDebugSetting(0);
  v12 = swift_allocObject();
  strcpy((v12 + 56), "Feed Previews");
  *(v12 + 70) = -4864;
  v13 = v65;
  *(v12 + 72) = 0xD000000000000041;
  *(v12 + 80) = v13;
  *(v12 + 88) = 0;
  v64 = v10;
  v10((v12 + OBJC_IVAR____TtC8AppStore27BoolPreferencesDebugSetting_key), v7, v4);
  v14 = (v12 + OBJC_IVAR____TtC8AppStore27BoolPreferencesDebugSetting_preferences);
  *v14 = v9;
  v14[1] = &protocol witness table for LocalPreferences;

  UUID.init()();
  v15 = UUID.uuidString.getter();
  v17 = v16;
  v18 = *(v67 + 8);
  v67 += 8;
  v65 = v18;
  v18(v3, v66);
  v68 = v15;
  v69 = v17;
  v60 = v12;
  AnyHashable.init<A>(_:)();
  v19 = *(v5 + 8);
  v61 = v5 + 8;
  v62 = v19;
  v19(v7, v4);

  v59 = 0x8000000100806F70;
  v20 = v3;
  if (qword_10096D360 != -1)
  {
    swift_once();
  }

  v21 = sub_1000056A8(v4, qword_1009CE738);
  v22 = static LocalPreferences.AppStoreKit.getter();
  v23 = v21;
  v24 = v64;
  v64(v7, v23, v4);
  v25 = swift_allocObject();
  *(v25 + 56) = 0xD000000000000017;
  *(v25 + 64) = 0x8000000100806F50;
  v26 = v59;
  *(v25 + 72) = 0xD000000000000030;
  *(v25 + 80) = v26;
  *(v25 + 88) = 0;
  v24(v25 + OBJC_IVAR____TtC8AppStore27BoolPreferencesDebugSetting_key, v7, v4);
  v27 = (v25 + OBJC_IVAR____TtC8AppStore27BoolPreferencesDebugSetting_preferences);
  *v27 = v22;
  v27[1] = &protocol witness table for LocalPreferences;

  UUID.init()();
  v28 = UUID.uuidString.getter();
  v30 = v29;
  v65(v20, v66);
  v68 = v28;
  v69 = v30;
  v59 = v25;
  AnyHashable.init<A>(_:)();
  v62(v7, v4);

  if (qword_10096D368 != -1)
  {
    swift_once();
  }

  v31 = sub_1000056A8(v4, qword_1009CE750);
  v32 = static LocalPreferences.AppStoreKit.getter();
  v33 = v64;
  v64(v7, v31, v4);
  v34 = swift_allocObject();
  *(v34 + 56) = 0xD000000000000011;
  *(v34 + 64) = 0x8000000100806FB0;
  *(v34 + 72) = 0xD000000000000067;
  *(v34 + 80) = 0x8000000100806FD0;
  *(v34 + 88) = 0;
  v33(v34 + OBJC_IVAR____TtC8AppStore27BoolPreferencesDebugSetting_key, v7, v4);
  v35 = (v34 + OBJC_IVAR____TtC8AppStore27BoolPreferencesDebugSetting_preferences);
  *v35 = v32;
  v35[1] = &protocol witness table for LocalPreferences;

  UUID.init()();
  v36 = UUID.uuidString.getter();
  v38 = v37;
  v58 = v11;
  v65(v20, v66);
  v68 = v36;
  v69 = v38;
  AnyHashable.init<A>(_:)();
  v62(v7, v4);

  v57 = v20;
  if (qword_10096D370 != -1)
  {
    swift_once();
  }

  v39 = sub_1000056A8(v4, qword_1009CE768);
  v40 = static LocalPreferences.AppStoreKit.getter();
  v41 = v64;
  v64(v7, v39, v4);
  v42 = swift_allocObject();
  *(v42 + 56) = 0xD00000000000001DLL;
  *(v42 + 64) = 0x8000000100807040;
  *(v42 + 72) = 0xD00000000000003DLL;
  *(v42 + 80) = 0x8000000100807060;
  *(v42 + 88) = 0;
  v41(v42 + OBJC_IVAR____TtC8AppStore27BoolPreferencesDebugSetting_key, v7, v4);
  v43 = (v42 + OBJC_IVAR____TtC8AppStore27BoolPreferencesDebugSetting_preferences);
  *v43 = v40;
  v43[1] = &protocol witness table for LocalPreferences;

  v44 = v57;
  UUID.init()();
  v45 = UUID.uuidString.getter();
  v47 = v46;
  v65(v44, v66);
  v68 = v45;
  v69 = v47;
  AnyHashable.init<A>(_:)();
  v62(v7, v4);

  sub_10002849C(&qword_100973210, qword_1007B0BB0);
  v48 = swift_allocObject();
  *(v48 + 16) = xmmword_1007B0B70;
  v49 = swift_allocObject();
  *(v49 + 16) = xmmword_1007BB060;
  v50 = v59;
  *(v49 + 32) = v60;
  *(v49 + 40) = v50;
  *(v49 + 48) = v34;
  *(v49 + 56) = v42;
  type metadata accessor for DebugSection();
  v51 = swift_allocObject();
  UUID.init()();
  v52 = UUID.uuidString.getter();
  v54 = v53;

  v65(v44, v66);
  v51[2] = v52;
  v51[3] = v54;
  v51[4] = 0;
  v51[5] = 0xE000000000000000;
  v51[6] = v49;
  *(v48 + 32) = v51;

  return v48;
}

id sub_1001DFE98()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TodaySettings();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1001DFF84(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = ASKBuildTypeGetCurrent();
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;
  if (v6 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v8 == v9)
  {
    goto LABEL_15;
  }

  v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v11 & 1) == 0)
  {
    v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v13;
    if (v12 != static String._unconditionallyBridgeFromObjectiveC(_:)() || v14 != v15)
    {
      v17 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v17)
      {
        goto LABEL_6;
      }

      v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v20 = v19;
      if (v18 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v20 == v21)
      {
      }

      else
      {
        v25 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v25 & 1) == 0)
        {
          goto LABEL_25;
        }
      }

      type metadata accessor for LocalPreferences();
      static LocalPreferences.currentApplication.getter();
      if (qword_10096E988 != -1)
      {
        swift_once();
      }

      v26 = sub_10002849C(&qword_100979740, &qword_1007D00E0);
      sub_1000056A8(v26, qword_1009D2A68);
      Preferences.subscript.getter();

      if (v28 != 2 && (v28 & 1) != 0)
      {
        goto LABEL_16;
      }

LABEL_25:
      v23 = 0;
      return v23 & 1;
    }

LABEL_15:

    goto LABEL_16;
  }

LABEL_6:

LABEL_16:
  type metadata accessor for LocalPreferences();
  static LocalPreferences.AppStoreKit.getter();
  if (*a1 != -1)
  {
    swift_once();
  }

  v22 = sub_10002849C(&qword_100979740, &qword_1007D00E0);
  sub_1000056A8(v22, a2);
  Preferences.subscript.getter();

  v23 = v27;
  return v23 & 1;
}

uint64_t sub_1001E0268@<X0>(char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>, double a13@<D6>, double a14@<D7>, double a15, double a16)
{
  v94 = a5;
  v97 = a2;
  v98 = a4;
  v96 = a3;
  v100 = a13;
  v101 = a14;
  v99 = a6;
  v86 = type metadata accessor for SearchLandingChartsAndCategoriesDisplayOptions();
  v78 = *(v86 - 8);
  __chkstk_darwin(v86);
  v85 = &v78 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = type metadata accessor for DynamicTypeSize();
  v87 = *(v88 - 8);
  __chkstk_darwin(v88);
  v92 = &v78 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for PageGrid.Direction();
  v90 = *(v18 - 8);
  v91 = v18;
  __chkstk_darwin(v18);
  v84 = &v78 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v89 = &v78 - v21;
  __chkstk_darwin(v22);
  v83 = &v78 - v23;
  v24 = type metadata accessor for Shelf.ContentsMetadata();
  v95 = *(v24 - 8);
  __chkstk_darwin(v24);
  v79 = &v78 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v28 = &v78 - v27;
  v82 = type metadata accessor for SearchLandingTrendingDisplayOptions();
  v81 = *(v82 - 8);
  __chkstk_darwin(v82);
  v80 = &v78 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = type metadata accessor for Shelf.ContentType();
  v31 = *(v30 - 8);
  __chkstk_darwin(v30);
  v33 = &v78 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_10002849C(&qword_100974650, &unk_1007B6B70);
  __chkstk_darwin(v34);
  v93 = &v78 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v36);
  v38 = &v78 - v37;
  sub_100031660(v97, &v78 - v37, &unk_10098FFB0, qword_1007B3890);
  v39 = *(v34 + 48);
  v97 = v38;
  sub_100031660(v96, &v38[v39], &unk_10098FFB0, qword_1007B3890);
  swift_getKeyPath();
  sub_10002849C(&unk_1009731F0, &qword_1007B0DA0);
  ReadOnlyLens.subscript.getter();

  v96 = v31;
  v40 = (*(v31 + 88))(v33, v30);
  if (v40 == enum case for Shelf.ContentType.action(_:))
  {
    swift_getKeyPath();
    ReadOnlyLens.subscript.getter();

    v41 = v95;
    if ((*(v95 + 88))(v28, v24) == enum case for Shelf.ContentsMetadata.searchLandingTrendingSection(_:))
    {
      (*(v41 + 96))(v28, v24);
      v42 = v81;
      v43 = v80;
      v44 = v82;
      (*(v81 + 32))(v80, v28, v82);
      v45 = SearchLandingTrendingDisplayOptions.numberOfColumns.getter();
      swift_getKeyPath();
      ReadOnlyLens.subscript.getter();

      v47 = v90;
      v46 = v91;
      v48 = &enum case for PageGrid.Direction.horizontal(_:);
      if (!v102)
      {
        v48 = &enum case for PageGrid.Direction.vertical(_:);
      }

      v49 = v83;
      (*(v90 + 104))(v83, *v48, v91);
      v50 = v92;
      PageEnvironment.dynamicTypeSize.getter();
      v51 = DynamicTypeSize.isAccessibilitySize.getter();
      (*(v87 + 8))(v50, v88);
      if (v51 & 1) != 0 && (PageEnvironment.isHorizontalSizeClassCompact.getter())
      {
        v45 = 1;
      }

      (*(v47 + 16))(v89, v49, v46);
      sub_1005AE464(v45);
      PageGrid.init(name:direction:containerSize:readableContentInsets:safeAreaInsets:requiresAdditionalSafeAreaMargins:breakpoints:)();
      (*(v47 + 8))(v49, v46);
      (*(v42 + 8))(v43, v44);
LABEL_24:
      v72 = &qword_100974650;
      v73 = &unk_1007B6B70;
      v71 = v97;
      return sub_10002B894(v71, v72, v73);
    }

    (*(v41 + 8))(v28, v24);
    v64 = v93;
    v102 = v94;
    v65 = v97;
    sub_100031660(v97, v93, &qword_100974650, &unk_1007B6B70);
    v66 = *(v34 + 48);
    sub_10010E37C();
  }

  else
  {
    v52 = v95;
    if (v40 != enum case for Shelf.ContentType.searchChartsAndCategories(_:))
    {
      v67 = v93;
      v102 = v94;
      v68 = v97;
      sub_100031660(v97, v93, &qword_100974650, &unk_1007B6B70);
      v69 = *(v34 + 48);
      sub_10010E37C();
      PageGridCaching.contentPageGrid(for:surroundedBy:containerSize:readableContentInsets:safeAreaInsets:environment:)();
      sub_10002B894(v68, &qword_100974650, &unk_1007B6B70);
      sub_10002B894(v67 + v69, &unk_10098FFB0, qword_1007B3890);
      sub_10002B894(v67, &unk_10098FFB0, qword_1007B3890);
      return (*(v96 + 8))(v33, v30);
    }

    swift_getKeyPath();
    v53 = v79;
    ReadOnlyLens.subscript.getter();

    if ((*(v52 + 88))(v53, v24) == enum case for Shelf.ContentsMetadata.searchLandingChartsAndCategoriesSection(_:))
    {
      (*(v52 + 96))(v53, v24);
      v54 = v78;
      (*(v78 + 32))(v85, v53, v86);
      swift_getKeyPath();
      ReadOnlyLens.subscript.getter();

      v56 = v90;
      v55 = v91;
      v57 = &enum case for PageGrid.Direction.horizontal(_:);
      if (!v102)
      {
        v57 = &enum case for PageGrid.Direction.vertical(_:);
      }

      (*(v90 + 104))(v84, *v57, v91);
      v58 = v92;
      PageEnvironment.dynamicTypeSize.getter();
      v59 = DynamicTypeSize.isAccessibilitySize.getter();
      v60 = *(v87 + 8);
      v61 = v58;
      v62 = v88;
      v60(v61, v88);
      if (v59)
      {
        v63 = 1;
      }

      else
      {
        v63 = SearchLandingChartsAndCategoriesDisplayOptions.numberOfColumns.getter();
      }

      v74 = v92;
      PageEnvironment.dynamicTypeSize.getter();
      v75 = DynamicTypeSize.isAccessibilitySize.getter();
      v60(v74, v62);
      if (v75 & 1) != 0 && (PageEnvironment.isHorizontalSizeClassCompact.getter())
      {
        v63 = 1;
      }

      v76 = v85;
      v77 = v84;
      (*(v56 + 16))(v89, v84, v55);
      sub_1001D231C(v63);
      PageGrid.init(name:direction:containerSize:readableContentInsets:safeAreaInsets:requiresAdditionalSafeAreaMargins:breakpoints:)();
      (*(v56 + 8))(v77, v55);
      (*(v54 + 8))(v76, v86);
      goto LABEL_24;
    }

    (*(v52 + 8))(v53, v24);
    v64 = v93;
    v102 = v94;
    v65 = v97;
    sub_100031660(v97, v93, &qword_100974650, &unk_1007B6B70);
    v66 = *(v34 + 48);
    sub_10010E37C();
  }

  PageGridCaching.contentPageGrid(for:surroundedBy:containerSize:readableContentInsets:safeAreaInsets:environment:)();
  sub_10002B894(v65, &qword_100974650, &unk_1007B6B70);
  sub_10002B894(v64 + v66, &unk_10098FFB0, qword_1007B3890);
  v71 = v64;
  v72 = &unk_10098FFB0;
  v73 = qword_1007B3890;
  return sub_10002B894(v71, v72, v73);
}

uint64_t sub_1001E0EE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6, double a7, double a8, double a9, double a10, double a11, double a12, double a13, double a14, double a15)
{
  sub_1001C440C();

  return PageGridCaching.contentPageGrid(for:surroundedBy:containerSize:readableContentInsets:safeAreaInsets:environment:)();
}

uint64_t sub_1001E0FCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6, double a7, double a8, double a9, double a10, double a11, double a12, double a13, double a14, double a15)
{
  sub_1001C440C();

  return PageGridCaching.supplementaryPageGrid(for:surroundedBy:containerSize:readableContentInsets:safeAreaInsets:environment:)();
}

uint64_t sub_1001E10B8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001E1370();

  return PageGridCaching<>.invalidateCache()(a1, v4, a2);
}

uint64_t sub_1001E1114@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>, double a14@<D6>, double a15@<D7>, double a16, double a17)
{
  v29[6] = a5;
  v29[7] = a6;
  v29[5] = a4;
  *&v29[3] = a14;
  *&v29[4] = a15;
  v29[1] = a7;
  v29[2] = a1;
  v20 = sub_10002849C(&qword_100974650, &unk_1007B6B70);
  v21 = v20 - 8;
  __chkstk_darwin(v20);
  v23 = v29 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v26 = v29 - v25;
  sub_100031660(a2, v29 - v25, &unk_10098FFB0, qword_1007B3890);
  sub_100031660(a3, &v26[*(v21 + 56)], &unk_10098FFB0, qword_1007B3890);
  v30 = *v17;
  sub_100031660(v26, v23, &qword_100974650, &unk_1007B6B70);
  v27 = *(v21 + 56);
  PageGridCaching.contentPageGrid(for:surroundedBy:containerSize:readableContentInsets:safeAreaInsets:environment:)();
  sub_10002B894(v26, &qword_100974650, &unk_1007B6B70);
  sub_10002B894(&v23[v27], &unk_10098FFB0, qword_1007B3890);
  return sub_10002B894(v23, &unk_10098FFB0, qword_1007B3890);
}

uint64_t sub_1001E12F4()
{
  v1 = *v0;
  sub_10002849C(&qword_100979208, qword_1007CF690);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1007B10D0;
  *(v2 + 56) = &type metadata for GenericPageGridProvider;
  *(v2 + 64) = sub_10010E37C();
  *(v2 + 72) = sub_1001E13C4();
  *(v2 + 32) = v1;

  return v2;
}

unint64_t sub_1001E1370()
{
  result = qword_100979200;
  if (!qword_100979200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100979200);
  }

  return result;
}

unint64_t sub_1001E13C4()
{
  result = qword_100979210;
  if (!qword_100979210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100979210);
  }

  return result;
}

char *sub_1001E1418(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR____TtC8AppStore28ArtworkSectionBackgroundView_gradientView;
  *&v4[v9] = [objc_allocWithZone(type metadata accessor for GradientView()) init];
  v10 = OBJC_IVAR____TtC8AppStore28ArtworkSectionBackgroundView_artworkView;
  type metadata accessor for ArtworkView();
  *&v4[v10] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v11 = &v4[OBJC_IVAR____TtC8AppStore28ArtworkSectionBackgroundView_insets];
  v12 = *&UIEdgeInsetsZero.bottom;
  *v11 = *&UIEdgeInsetsZero.top;
  *(v11 + 1) = v12;
  v15.receiver = v4;
  v15.super_class = type metadata accessor for ArtworkSectionBackgroundView();
  v13 = objc_msgSendSuper2(&v15, "initWithFrame:", a1, a2, a3, a4);
  [v13 addSubview:*&v13[OBJC_IVAR____TtC8AppStore28ArtworkSectionBackgroundView_artworkView]];
  return v13;
}

double sub_1001E15F0(uint64_t a1, uint64_t a2, __n128 a3, __n128 a4, __n128 a5, __n128 a6)
{
  v24 = a5;
  v25 = a6;
  v22 = a4;
  v23 = a3;
  v8 = type metadata accessor for ShelfBackground();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ArtworkLoader();
  type metadata accessor for BaseObjectGraph();
  inject<A, B>(_:from:)();
  (*(v9 + 16))(v11, a1, v8);
  if ((*(v9 + 88))(v11, v8) == enum case for ShelfBackground.artwork(_:))
  {
    (*(v9 + 96))(v11, v8);
    v12 = *(sub_10002849C(&qword_100978420, qword_1007BF850) + 48);
    [v6 frame];
    Artwork.config(_:mode:prefersLayeredImage:)();
    Artwork.backgroundColor.getter();
    ArtworkView.backgroundColor.setter();
    type metadata accessor for ArtworkView();
    sub_10009A098();
    ArtworkLoader.fetchArtwork<A>(using:closestMatch:into:)();

    v13 = type metadata accessor for ShelfBackgroundStyle();
    (*(*(v13 - 8) + 8))(&v11[v12], v13);
  }

  else
  {
    type metadata accessor for ArtworkView();
    sub_10009A098();
    ArtworkLoader.forgetFetch<A>(forView:deprioritizingFetch:)();
    (*(v9 + 8))(v11, v8);
  }

  v14 = &v6[OBJC_IVAR____TtC8AppStore28ArtworkSectionBackgroundView_insets];
  v15 = *&v6[OBJC_IVAR____TtC8AppStore28ArtworkSectionBackgroundView_insets];
  v16 = *&v6[OBJC_IVAR____TtC8AppStore28ArtworkSectionBackgroundView_insets + 16];
  v18 = v22.n128_f64[0];
  *&v17.f64[0] = v23.n128_u64[0];
  *v14 = v23.n128_f64[0];
  v14[1] = v18;
  *&v20.f64[0] = v24.n128_u64[0];
  v19 = v25.n128_f64[0];
  v14[2] = v24.n128_f64[0];
  v14[3] = v19;
  v17.f64[1] = v18;
  v20.f64[1] = v19;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v15, v17), vceqq_f64(v16, v20)))) & 1) == 0)
  {
    [v6 setNeedsLayout];
  }

  return result;
}

id sub_1001E1934(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for ArtworkSectionBackgroundView();
  return objc_msgSendSuper2(&v4, "dealloc");
}

void sub_1001E19DC()
{
  v1 = OBJC_IVAR____TtC8AppStore28ArtworkSectionBackgroundView_gradientView;
  *(v0 + v1) = [objc_allocWithZone(type metadata accessor for GradientView()) init];
  v2 = OBJC_IVAR____TtC8AppStore28ArtworkSectionBackgroundView_artworkView;
  type metadata accessor for ArtworkView();
  *(v0 + v2) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v3 = (v0 + OBJC_IVAR____TtC8AppStore28ArtworkSectionBackgroundView_insets);
  v4 = *&UIEdgeInsetsZero.bottom;
  *v3 = *&UIEdgeInsetsZero.top;
  v3[1] = v4;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void sub_1001E1AA4(uint64_t a1, char a2)
{
  *(v2 + qword_1009920B8) = a2 & 1;
  sub_1006BB698();
  dispatch thunk of CustomLayoutView.invalidateMeasurements()();
  v47 = v2;
  v3 = *(v2 + qword_100992090);
  Ratings.ratingAverage.getter();
  v5 = v4;
  v6 = objc_allocWithZone(NSNumber);
  LODWORD(v7) = v5;
  v48.value.super.super.isa = [v6 initWithFloat:v7];
  isa = v48.value.super.super.isa;
  v48.is_nil = 1;
  object = localizedStringForDecimal(_:_:)(v48, v9).value._object;

  if (!object)
  {
    Ratings.ratingAverage.getter();
    Float.description.getter();
  }

  sub_10002849C(&unk_100973960, &unk_1007B4930);
  inited = swift_initStackObject();
  *(inited + 32) = NSKernAttributeName;
  *(inited + 16) = xmmword_1007B10D0;
  *(inited + 64) = &type metadata for CGFloat;
  *(inited + 40) = 0xC010000000000000;
  v12 = NSKernAttributeName;
  sub_100397150(inited);
  swift_setDeallocating();
  sub_10005DC58(inited + 32);
  v13 = objc_allocWithZone(NSAttributedString);
  v14 = String._bridgeToObjectiveC()();

  type metadata accessor for Key(0);
  sub_10006F0F0();
  v15 = Dictionary._bridgeToObjectiveC()().super.isa;

  v16 = [v13 initWithString:v14 attributes:v15];

  [v3 setAttributedText:v16];
  Ratings.ratingAverage.getter();
  sub_1003A2E44(v17);
  v18 = *(v47 + qword_1009920A8);
  v19 = Ratings.totalNumberOfRatings.getter();
  v20._object = 0x80000001007FBBD0;
  v20._countAndFlagsBits = 0xD000000000000013;
  v21._countAndFlagsBits = 0;
  v21._object = 0xE000000000000000;
  localizedStringWithCount(_:count:comment:)(v20, v19, v21);
  v22 = String._bridgeToObjectiveC()();

  [v18 setText:v22];

  v23 = Ratings.ratingCounts.getter();
  if (!v23)
  {
    goto LABEL_30;
  }

  v24 = v23;
  v25 = v23 & 0xFFFFFFFFFFFFFF8;
  if (v23 >> 62)
  {
    goto LABEL_26;
  }

  if (*((v23 & 0xFFFFFFFFFFFFFF8) + 0x10) != 5)
  {
    goto LABEL_29;
  }

  v46 = 5;
  while (2)
  {
    v26 = 4;
    v27 = qword_1009920B0;
    while (1)
    {
      v30 = v26 - 4;
      if ((v24 & 0xC000000000000001) != 0)
      {
        v31 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v30 >= *(v25 + 16))
        {
          goto LABEL_24;
        }

        v31 = *(v24 + 8 * v26);
      }

      v32 = v31;
      v33 = v26 - 3;
      if (__OFADD__(v30, 1))
      {
        break;
      }

      v34 = *(v47 + v27);
      [v31 floatValue];
      v36 = v35;
      v37 = Ratings.totalNumberOfRatings.getter();
      v38 = OBJC_IVAR____TtC8AppStore27ProductRatingsHistogramView_barViews;
      v39 = *(v34 + OBJC_IVAR____TtC8AppStore27ProductRatingsHistogramView_barViews);
      if (v39 >> 62)
      {
        if (v30 >= _CocoaArrayWrapper.endIndex.getter())
        {
          goto LABEL_10;
        }
      }

      else if (v30 >= *((v39 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_10;
      }

      v40 = *(v34 + v38);
      if ((v40 & 0xC000000000000001) != 0)
      {
        v28 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v30 >= *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_25;
        }

        v28 = *(v40 + 8 * v26);
      }

      v29 = v28;
      *&v28[OBJC_IVAR____TtC8AppStoreP33_840DC1D510C0F7BB369C0CA7753B475934ProductRatingsHistogramProgressBar_progress] = v36 / v37;
      [v28 setNeedsLayout];

LABEL_10:
      ++v26;
      if (v33 == v46)
      {
        goto LABEL_28;
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    if (_CocoaArrayWrapper.endIndex.getter() == 5)
    {
      v46 = _CocoaArrayWrapper.endIndex.getter();
      if (!v46)
      {
LABEL_28:

        goto LABEL_39;
      }

      continue;
    }

    break;
  }

LABEL_29:

LABEL_30:
  v41 = *(*(v47 + qword_1009920B0) + OBJC_IVAR____TtC8AppStore27ProductRatingsHistogramView_barViews);
  if (v41 >> 62)
  {
    v42 = _CocoaArrayWrapper.endIndex.getter();
    if (!v42)
    {
      goto LABEL_39;
    }

LABEL_32:
    if (v42 >= 1)
    {
      v43 = 0;
      do
      {
        if ((v41 & 0xC000000000000001) != 0)
        {
          v44 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v44 = *(v41 + 8 * v43 + 32);
        }

        v45 = v44;
        ++v43;
        *&v44[OBJC_IVAR____TtC8AppStoreP33_840DC1D510C0F7BB369C0CA7753B475934ProductRatingsHistogramProgressBar_progress] = 0;
        [v44 setNeedsLayout];
      }

      while (v42 != v43);
      goto LABEL_39;
    }

    __break(1u);
  }

  else
  {
    v42 = *((v41 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v42)
    {
      goto LABEL_32;
    }

LABEL_39:
    dispatch thunk of CustomLayoutView.invalidateMeasurements()();
  }
}

uint64_t sub_1001E1F78(uint64_t a1, unint64_t a2, uint64_t a3, __n128 a4, double a5, double a6, double a7)
{
  v7 = a3;
  if (a2 >> 62)
  {
    v11 = _CocoaArrayWrapper.endIndex.getter();
    if (v11 == 3)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v11 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v11 == 3)
    {
      goto LABEL_8;
    }
  }

  if (v11 == 2)
  {
    sub_1001E2348(a2, v7, v13, a6, a7);
    goto LABEL_9;
  }

  if (v11 != 1)
  {
LABEL_8:
    a4.n128_f64[0] = a6;
    sub_1001E271C(a2, v7, v13, a4, a7);
    goto LABEL_9;
  }

  sub_1001E21E8(a2, v7, v13);
LABEL_9:
  sub_100005A38(v13, v14);
  sub_10002A400(v14, v14[3]);
  dispatch thunk of Placeable.place(at:with:)();
  return sub_100007000(v14);
}

double sub_1001E20A8(uint64_t a1, unint64_t a2, uint64_t a3, __n128 a4, double a5)
{
  v5 = a3;
  v8 = a4.n128_u64[0];
  if (a2 >> 62)
  {
    v9 = _CocoaArrayWrapper.endIndex.getter();
    if (v9 == 3)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v9 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v9 == 3)
    {
      goto LABEL_8;
    }
  }

  if (v9 == 2)
  {
    sub_1001E2348(a2, v5, v13, *&v8, a5);
    goto LABEL_9;
  }

  if (v9 != 1)
  {
LABEL_8:
    a4.n128_u64[0] = v8;
    sub_1001E271C(a2, v5, v13, a4, a5);
    goto LABEL_9;
  }

  sub_1001E21E8(a2, v5, v13);
LABEL_9:
  sub_100005A38(v13, v14);
  sub_10002A400(v14, v14[3]);
  dispatch thunk of Placeable.measure(toFit:with:)();
  v11 = v10;
  sub_100007000(v14);
  return v11;
}

uint64_t sub_1001E21E8@<X0>(uint64_t result@<X0>, char a2@<W1>, uint64_t *a3@<X8>)
{
  if ((result & 0xC000000000000001) != 0)
  {
    v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v7 = *(result + 32);
  }

  v8 = v7;
  if (a2 != 4)
  {
    CGSize.scaled(_:)();
  }

  sub_100028004();
  LayoutView.withMeasurements(representing:)();
  sub_10002A400(v9, v9[3]);
  Measurable.placeable.getter();
  static Center.Axis.neither.getter();
  a3[3] = type metadata accessor for Center();
  a3[4] = &protocol witness table for Center;
  sub_1000056E0(a3);
  Center.init(_:filling:)();

  return sub_100007000(v9);
}

void sub_1001E2348(uint64_t a1@<X0>, char a2@<W1>, uint64_t *a3@<X8>, double a4@<D0>, double a5@<D1>)
{
  v10 = type metadata accessor for DisjointStack();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v30 - v15;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v31 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    v19 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_5;
  }

  v17 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v17)
  {
    __break(1u);
    goto LABEL_16;
  }

  if (v17 == 1)
  {
LABEL_16:
    __break(1u);
    return;
  }

  v18 = *(a1 + 40);
  v31 = *(a1 + 32);
  v19 = v18;
LABEL_5:
  v20 = v19;
  if (a2 == 4)
  {
    v21 = 33.0;
  }

  else
  {
    v22 = a5 / 224.0;
    v23 = fmin(a5 / 224.0, 1.0);
    if (a5 / 224.0 >= a4 / 224.0)
    {
      v22 = a4 / 224.0;
    }

    if (a4 / 224.0 >= 1.0)
    {
      v24 = v23;
    }

    else
    {
      v24 = v22;
    }

    CGSize.scaled(_:)();
    v21 = v24 * 80.0;
  }

  DisjointStack.init(with:)();
  v32[0] = v20;
  sub_100028004();
  LayoutView.withMeasurements(representing:)();
  v30 = v20;
  sub_10002A400(v33, v34);
  Measurable.placeable.getter();
  DisjointStack.inserting(_:at:with:)();
  sub_100007000(v32);
  v25 = *(v11 + 8);
  v25(v13, v10);
  sub_100007000(v33);
  v26 = v31;
  v32[0] = v31;
  LayoutView.withMeasurements(representing:)();
  sub_10002A400(v33, v34);
  Measurable.placeable.getter();
  *(swift_allocObject() + 16) = v21;
  a3[3] = v10;
  a3[4] = &protocol witness table for DisjointStack;
  sub_1000056E0(a3);
  DisjointStack.inserting(_:at:with:)();

  sub_100007000(v32);
  v25(v16, v10);
  sub_100007000(v33);
  v27 = [v26 layer];
  [v27 setZPosition:2.0];

  v28 = v30;
  v29 = [v30 layer];
  [v29 setZPosition:1.0];
}

void sub_1001E271C(unint64_t a1@<X0>, char a2@<W1>, uint64_t *a3@<X8>, __n128 a4@<Q0>, double a5@<D1>)
{
  v8 = a4.n128_f64[0];
  v10 = type metadata accessor for HorizontalStack();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v35 - v15;
  __chkstk_darwin(v17);
  v19 = &v35 - v18;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v24 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    v25 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    v26 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_6;
  }

  v20 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v20)
  {
    __break(1u);
    goto LABEL_17;
  }

  if (v20 == 1)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v20 < 3)
  {
LABEL_18:
    __break(1u);
    return;
  }

  v21 = *(a1 + 32);
  v22 = *(a1 + 40);
  v23 = *(a1 + 48);
  v24 = v21;
  v25 = v22;
  v26 = v23;
LABEL_6:
  v37 = v26;
  v38 = a3;
  v35 = v24;
  if (a2 == 4)
  {
    v27 = 10.0;
  }

  else
  {
    v28 = a5 / 127.0;
    v29 = fmin(a5 / 127.0, 1.0);
    if (a5 / 127.0 >= v8 / 421.0)
    {
      v28 = v8 / 421.0;
    }

    if (v8 / 421.0 >= 1.0)
    {
      v30 = v29;
    }

    else
    {
      v30 = v28;
    }

    CGSize.scaled(_:)();
    v27 = v30 * 20.0;
  }

  HorizontalStack.init(with:)();
  v39[0] = v25;
  sub_100028004();
  LayoutView.withMeasurements(representing:)();
  v36 = v25;
  sub_10002A400(v40, v41);
  Measurable.placeable.getter();
  *(swift_allocObject() + 16) = v27;
  HorizontalStack.adding(_:with:)();

  sub_100007000(v39);
  v31 = *(v11 + 8);
  v31(v13, v10);
  sub_100007000(v40);
  v32 = v35;
  v39[0] = v35;
  LayoutView.withMeasurements(representing:)();
  sub_10002A400(v40, v41);
  Measurable.placeable.getter();
  *(swift_allocObject() + 16) = v27;
  HorizontalStack.adding(_:with:)();

  sub_100007000(v39);
  v31(v16, v10);
  sub_100007000(v40);
  v33 = v37;
  v39[0] = v37;
  LayoutView.withMeasurements(representing:)();
  sub_10002A400(v40, v41);
  Measurable.placeable.getter();
  v34 = v38;
  v38[3] = v10;
  v34[4] = &protocol witness table for HorizontalStack;
  sub_1000056E0(v34);
  HorizontalStack.adding(_:with:)();

  sub_100007000(v39);
  v31(v19, v10);
  sub_100007000(v40);
}

uint64_t sub_1001E2B80()
{
  v0 = type metadata accessor for DisjointStack.EdgePosition();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = (&v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4[3] = &type metadata for Double;
  v4[4] = &protocol witness table for Double;
  *v4 = 0;
  v5 = enum case for DisjointStack.EdgePosition.anchored(_:);
  v6 = *(v1 + 104);
  (v6)(v4, enum case for DisjointStack.EdgePosition.anchored(_:), v0, v2);
  DisjointStack.Properties.topEdge.setter();
  v4[3] = &type metadata for Double;
  v4[4] = &protocol witness table for Double;
  *v4 = 0;
  v6(v4, v5, v0);
  return DisjointStack.Properties.leadingEdge.setter();
}

uint64_t sub_1001E2CA4(double a1)
{
  v2 = type metadata accessor for DisjointStack.EdgePosition();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v6 + 3) = &type metadata for CGFloat;
  *(v6 + 4) = &protocol witness table for CGFloat;
  *v6 = a1;
  v7 = enum case for DisjointStack.EdgePosition.anchored(_:);
  v8 = *(v3 + 104);
  (v8)(v6, enum case for DisjointStack.EdgePosition.anchored(_:), v2, v4);
  DisjointStack.Properties.topEdge.setter();
  *(v6 + 3) = &type metadata for CGFloat;
  *(v6 + 4) = &protocol witness table for CGFloat;
  *v6 = a1;
  v8(v6, v7, v2);
  return DisjointStack.Properties.leadingEdge.setter();
}

void sub_1001E2E34(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = *&v2[OBJC_IVAR____TtC8AppStore24ArcadeWelcomeContentView_titleLabel];
  ArcadeWelcomeContent.title.getter();
  if (v5)
  {
    v6 = String._bridgeToObjectiveC()();
  }

  else
  {
    v6 = 0;
  }

  [v4 setText:v6];

  v7 = *&v2[OBJC_IVAR____TtC8AppStore24ArcadeWelcomeContentView_subtitleLabel];
  ArcadeWelcomeContent.subtitle.getter();
  if (v8)
  {
    v9 = String._bridgeToObjectiveC()();
  }

  else
  {
    v9 = 0;
  }

  [v7 setText:v9];

  v10 = OBJC_IVAR____TtC8AppStore24ArcadeWelcomeContentView_itemViews;
  swift_beginAccess();
  v11 = *&v2[v10];
  if (v11 >> 62)
  {
    v12 = _CocoaArrayWrapper.endIndex.getter();
    if (!v12)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v12)
    {
      goto LABEL_16;
    }
  }

  if (v12 < 1)
  {
    __break(1u);
    goto LABEL_38;
  }

  for (i = 0; i != v12; ++i)
  {
    if ((v11 & 0xC000000000000001) != 0)
    {
      v14 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v14 = *(v11 + 8 * i + 32);
    }

    v15 = v14;
    [v14 removeFromSuperview];
  }

LABEL_16:
  *&v2[v10] = _swiftEmptyArrayStorage;

  v16 = ArcadeWelcomeContent.items.getter();
  v17 = v16;
  if (!(v16 >> 62))
  {
    v18 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v18)
    {
      goto LABEL_18;
    }

LABEL_36:

    [v3 setNeedsLayout];
    return;
  }

  v18 = _CocoaArrayWrapper.endIndex.getter();
  if (!v18)
  {
    goto LABEL_36;
  }

LABEL_18:
  type metadata accessor for ArcadeWelcomeItemView();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  if (v18 >= 1)
  {
    v19 = 0;
    do
    {
      if ((v17 & 0xC000000000000001) != 0)
      {
        specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
      }

      v20 = [objc_allocWithZone(ObjCClassFromMetadata) init];
      v21 = *&v20[OBJC_IVAR____TtC8AppStore21ArcadeWelcomeItemView_headlineLabel];
      ArcadeWelcomeItem.headline.getter();
      if (v22)
      {
        v23 = String._bridgeToObjectiveC()();
      }

      else
      {
        v23 = 0;
      }

      [v21 setText:v23];

      v24 = *&v20[OBJC_IVAR____TtC8AppStore21ArcadeWelcomeItemView_bodyLabel];
      ArcadeWelcomeItem.body.getter();
      if (v25)
      {
        v26 = String._bridgeToObjectiveC()();
      }

      else
      {
        v26 = 0;
      }

      [v24 setText:v26];

      *&v20[OBJC_IVAR____TtC8AppStore21ArcadeWelcomeItemView_artwork] = ArcadeWelcomeItem.artwork.getter();

      *&v20[OBJC_IVAR____TtC8AppStore21ArcadeWelcomeItemView_artworkLoader] = a2;

      [v20 setNeedsLayout];
      [v3 addSubview:v20];
      swift_beginAccess();
      v27 = v20;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((*(v3 + v10) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v3 + v10) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      ++v19;
      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      swift_endAccess();
    }

    while (v18 != v19);
    goto LABEL_36;
  }

LABEL_38:
  __break(1u);
}

uint64_t sub_1001E3278(double a1, double a2, double a3, uint64_t a4, uint64_t *a5)
{
  v9 = type metadata accessor for FontSource();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for ArcadeWelcomeContentLayout.Metrics();
  sub_100005644(v13, a5);
  sub_1000056A8(v13, a5);
  v17[24] = &type metadata for Double;
  v17[25] = &protocol witness table for Double;
  *&v17[21] = a1;
  v17[19] = &type metadata for Double;
  v17[20] = &protocol witness table for Double;
  *&v17[16] = a2;
  if (qword_10096E338 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for FontUseCase();
  v15 = sub_1000056A8(v14, qword_1009D1928);
  (*(*(v14 - 8) + 16))(v12, v15, v14);
  (*(v10 + 104))(v12, enum case for FontSource.useCase(_:), v9);
  v17[14] = &type metadata for Double;
  v17[15] = &protocol witness table for Double;
  *&v17[11] = a3;
  v17[9] = &type metadata for Double;
  v17[10] = &protocol witness table for Double;
  v17[6] = 0x4046800000000000;
  v17[5] = &protocol witness table for Double;
  v17[4] = &type metadata for Double;
  v17[1] = 0x4024000000000000;
  return ArcadeWelcomeContentLayout.Metrics.init(titleTopSpace:titleInsets:subtitleTopSpace:subtitleFontSource:subtitleInsets:itemsMinTopPosition:itemsTopSpace:itemsBottomSpace:)();
}

char *sub_1001E34A4(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v8 = type metadata accessor for DirectionalTextAlignment();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10002849C(&qword_100972ED0, &unk_1007B17B0);
  __chkstk_darwin(v12 - 8);
  v14 = &v42 - v13;
  if (qword_10096E330 != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for FontUseCase();
  v16 = sub_1000056A8(v15, qword_1009D1910);
  v17 = *(v15 - 8);
  v45 = *(v17 + 16);
  v45(v14, v16, v15);
  v18 = *(v17 + 56);
  v18(v14, 0, 1, v15);
  v19 = enum case for DirectionalTextAlignment.none(_:);
  v20 = *(v9 + 104);
  v44 = v9 + 104;
  v20(v11, enum case for DirectionalTextAlignment.none(_:), v8);
  v21 = type metadata accessor for DynamicTypeLabel();
  v22 = objc_allocWithZone(v21);
  v43 = v8;
  *&v47[OBJC_IVAR____TtC8AppStore24ArcadeWelcomeContentView_titleLabel] = DynamicTypeLabel.init(useCase:numberOfLines:lineBreakMode:isUserInteractionEnabled:directionalTextAlignment:contentSizeCategoryMapping:)();
  if (qword_10096E338 != -1)
  {
    swift_once();
  }

  v23 = sub_1000056A8(v15, qword_1009D1928);
  v45(v14, v23, v15);
  v18(v14, 0, 1, v15);
  v20(v11, v19, v43);
  v24 = objc_allocWithZone(v21);
  v25 = DynamicTypeLabel.init(useCase:numberOfLines:lineBreakMode:isUserInteractionEnabled:directionalTextAlignment:contentSizeCategoryMapping:)();
  v26 = v47;
  *&v47[OBJC_IVAR____TtC8AppStore24ArcadeWelcomeContentView_subtitleLabel] = v25;
  *&v26[OBJC_IVAR____TtC8AppStore24ArcadeWelcomeContentView_itemViews] = _swiftEmptyArrayStorage;
  v48.receiver = v26;
  v48.super_class = ObjectType;
  v27 = objc_msgSendSuper2(&v48, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v31 = v27;
  [v31 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  v32 = OBJC_IVAR____TtC8AppStore24ArcadeWelcomeContentView_titleLabel;
  v33 = *&v31[OBJC_IVAR____TtC8AppStore24ArcadeWelcomeContentView_titleLabel];
  sub_100028BB8();
  v34 = v33;
  v35 = static UIColor.primaryText.getter();
  [v34 setTextColor:v35];

  v36 = OBJC_IVAR____TtC8AppStore24ArcadeWelcomeContentView_subtitleLabel;
  v37 = *&v31[OBJC_IVAR____TtC8AppStore24ArcadeWelcomeContentView_subtitleLabel];
  if (sub_1001E3930())
  {
    v38 = 3;
  }

  else
  {
    v38 = 4;
  }

  [v37 setNumberOfLines:v38];

  v39 = *&v31[v36];
  v40 = static UIColor.secondaryText.getter();
  [v39 setTextColor:v40];

  sub_1001E3A30();
  [v31 addSubview:*&v31[v32]];
  [v31 addSubview:*&v31[v36]];

  return v31;
}

uint64_t sub_1001E3930()
{
  v1 = v0;
  v2 = [v0 traitCollection];
  v3 = UITraitCollection.isSizeClassCompact.getter();

  if ((v3 & 1) == 0)
  {
    return 1;
  }

  result = [v1 window];
  if (result)
  {
    v5 = result;
    v6 = [v1 traitCollection];
    v7 = [v6 userInterfaceIdiom];

    if (v7 == 1)
    {
      [v5 frame];
      Width = CGRectGetWidth(v10);
      [v1 bounds];
      v9 = CGRectGetWidth(v11);

      return v9 < Width;
    }

    else
    {

      return 0;
    }
  }

  return result;
}

id sub_1001E3A30()
{
  v1 = v0;
  v2 = type metadata accessor for DirectionalTextAlignment();
  v3 = *(v2 - 8);
  *&v4 = __chkstk_darwin(v2).n128_u64[0];
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [v0 traitCollection];
  v8 = UITraitCollection.prefersAccessibilityLayouts.getter();

  v9 = *&v1[OBJC_IVAR____TtC8AppStore24ArcadeWelcomeContentView_titleLabel];
  if (v8)
  {
    v10 = enum case for DirectionalTextAlignment.leading(_:);
    v11 = *(v3 + 104);
    v11(v6, enum case for DirectionalTextAlignment.leading(_:), v2);
    dispatch thunk of DynamicTypeLabel.directionalTextAlignment.setter();
    [v9 setNumberOfLines:0];
    v12 = *&v1[OBJC_IVAR____TtC8AppStore24ArcadeWelcomeContentView_subtitleLabel];
    v11(v6, v10, v2);
    dispatch thunk of DynamicTypeLabel.directionalTextAlignment.setter();
    return [v12 setNumberOfLines:0];
  }

  else
  {
    [*&v1[OBJC_IVAR____TtC8AppStore24ArcadeWelcomeContentView_titleLabel] setTextAlignment:1];
    [v9 setNumberOfLines:2];
    v14 = *&v1[OBJC_IVAR____TtC8AppStore24ArcadeWelcomeContentView_subtitleLabel];
    [v14 setTextAlignment:1];
    if (sub_1001E3930())
    {
      v15 = 3;
    }

    else
    {
      v15 = 4;
    }

    return [v14 setNumberOfLines:v15];
  }
}

uint64_t sub_1001E3CA8()
{
  ObjectType = swift_getObjectType();
  v23 = type metadata accessor for LayoutRect();
  v2 = *(v23 - 8);
  __chkstk_darwin(v23);
  v4 = v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for ArcadeWelcomeContentLayout.Metrics();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for ArcadeWelcomeContentLayout();
  v10 = *(v9 - 8);
  *&v11 = __chkstk_darwin(v9).n128_u64[0];
  v13 = v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30.receiver = v0;
  v30.super_class = ObjectType;
  v22[1] = ObjectType;
  objc_msgSendSuper2(&v30, "layoutSubviews", v11);
  if (sub_1001E3930())
  {
    if (qword_10096D380 != -1)
    {
      swift_once();
    }

    v14 = qword_100979270;
  }

  else
  {
    if (qword_10096D378 != -1)
    {
      swift_once();
    }

    v14 = qword_100979258;
  }

  v15 = sub_1000056A8(v5, v14);
  (*(v6 + 16))(v8, v15, v5);
  v16 = *&v0[OBJC_IVAR____TtC8AppStore24ArcadeWelcomeContentView_titleLabel];
  v28 = type metadata accessor for DynamicTypeLabel();
  v29 = &protocol witness table for UILabel;
  v17 = *&v0[OBJC_IVAR____TtC8AppStore24ArcadeWelcomeContentView_subtitleLabel];
  v26 = &protocol witness table for UILabel;
  v27 = v16;
  v25 = v28;
  v24 = v17;
  swift_beginAccess();
  v18 = v16;
  v19 = v17;

  sub_1002A5B70(v20);

  ArcadeWelcomeContentLayout.init(metrics:titleText:subtitleText:items:)();
  LayoutMarginsAware<>.layoutFrame.getter();
  ArcadeWelcomeContentLayout.placeChildren(relativeTo:in:)();
  (*(v2 + 8))(v4, v23);
  return (*(v10 + 8))(v13, v9);
}

double sub_1001E4038(uint64_t a1, __n128 a2, double a3)
{
  v4 = type metadata accessor for ArcadeWelcomeContentLayout.Metrics();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ArcadeWelcomeContentLayout();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_1001E3930())
  {
    if (qword_10096D380 != -1)
    {
      swift_once();
    }

    v12 = qword_100979270;
  }

  else
  {
    if (qword_10096D378 != -1)
    {
      swift_once();
    }

    v12 = qword_100979258;
  }

  v13 = sub_1000056A8(v4, v12);
  (*(v5 + 16))(v7, v13, v4);
  v14 = *(v3 + OBJC_IVAR____TtC8AppStore24ArcadeWelcomeContentView_titleLabel);
  v23 = type metadata accessor for DynamicTypeLabel();
  v24 = &protocol witness table for UILabel;
  v15 = *(v3 + OBJC_IVAR____TtC8AppStore24ArcadeWelcomeContentView_subtitleLabel);
  v22[8] = &protocol witness table for UILabel;
  v22[9] = v14;
  v22[7] = v23;
  v22[4] = v15;
  swift_beginAccess();
  v16 = v14;
  v17 = v15;

  sub_1002A5B70(v18);

  ArcadeWelcomeContentLayout.init(metrics:titleText:subtitleText:items:)();
  ArcadeWelcomeContentLayout.measurements(fitting:in:)();
  v20 = v19;
  (*(v9 + 8))(v11, v8);
  return v20;
}

uint64_t sub_1001E438C(uint64_t a1)
{
  v2 = v1;
  v7.receiver = v1;
  v7.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v7, "traitCollectionDidChange:", a1);
  v4 = [v1 traitCollection];
  v5 = UITraitCollection.prefersAccessibilityLayouts.getter();

  if (!a1 || (result = UITraitCollection.prefersAccessibilityLayouts.getter(), (result & 1) != (v5 & 1)))
  {
    sub_1001E3A30();
    return [v2 setNeedsLayout];
  }

  return result;
}

uint64_t sub_1001E4528@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v3 = sub_10002849C(&unk_100992460, &qword_1007B6BF0);
  __chkstk_darwin(v3 - 8);
  v5 = &v23 - v4;
  v6 = sub_10002849C(&unk_1009731F0, &qword_1007B0DA0);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v23 - v8;
  v10 = type metadata accessor for Shelf.ContentType();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v23 - v15;
  swift_getKeyPath();
  v23 = a1;
  ItemLayoutContext.subscript.getter();

  swift_getKeyPath();
  ReadOnlyLens.subscript.getter();

  (*(v7 + 8))(v9, v6);
  if ((*(v11 + 48))(v5, 1, v10) == 1)
  {
    sub_1000CD7FC(v5);
    v17 = type metadata accessor for ComponentSeparator();
    return (*(*(v17 - 8) + 56))(v24, 1, 1, v17);
  }

  v19 = v24;
  (*(v11 + 32))(v16, v5, v10);
  (*(v11 + 16))(v13, v16, v10);
  v20 = (*(v11 + 88))(v13, v10);
  if (v20 == enum case for Shelf.ContentType.smallLockup(_:))
  {
    type metadata accessor for SmallLockupCollectionViewCell(0);
    sub_1007081F0(v19);
    return (*(v11 + 8))(v16, v10);
  }

  if (v20 == enum case for Shelf.ContentType.mediumLockup(_:))
  {
    type metadata accessor for MediumLockupCollectionViewCell(0);
    sub_10030A17C(v19);
    return (*(v11 + 8))(v16, v10);
  }

  v21 = *(v11 + 8);
  v21(v16, v10);
  v22 = type metadata accessor for ComponentSeparator();
  (*(*(v22 - 8) + 56))(v19, 1, 1, v22);
  return (v21)(v13, v10);
}

char *sub_1001E490C(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v10 = OBJC_IVAR____TtC8AppStore23QuoteCollectionViewCell_itemLayoutContext;
  v11 = type metadata accessor for ItemLayoutContext();
  (*(*(v11 - 8) + 56))(&v4[v10], 1, 1, v11);
  v12 = &v4[OBJC_IVAR____TtC8AppStore23QuoteCollectionViewCell_preferredArtworkSize];
  type metadata accessor for QuoteView(0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  *v12 = 0;
  *(v12 + 1) = 0;
  v14 = [objc_allocWithZone(ObjCClassFromMetadata) init];
  *&v4[OBJC_IVAR____TtC8AppStore23QuoteCollectionViewCell_quoteView] = v14;
  v19.receiver = v4;
  v19.super_class = ObjectType;
  v15 = objc_msgSendSuper2(&v19, "initWithFrame:", a1, a2, a3, a4);
  v16 = [v15 contentView];
  [v16 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];

  v17 = [v15 contentView];
  [v17 addSubview:*&v15[OBJC_IVAR____TtC8AppStore23QuoteCollectionViewCell_quoteView]];

  return v15;
}

uint64_t type metadata accessor for QuoteCollectionViewCell(uint64_t a1)
{
  result = qword_1009792F0;
  if (!qword_1009792F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1001E4CE0(uint64_t a1)
{
  sub_100027FAC(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1001E4DC0(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + OBJC_IVAR____TtC8AppStore23QuoteCollectionViewCell_quoteView);
  v4 = OBJC_IVAR____TtC8AppStore9QuoteView_artworkView;
  v5 = *(v3 + OBJC_IVAR____TtC8AppStore9QuoteView_artworkView);
  ArtworkView.isImageHidden.setter();

  v6 = *(v3 + v4);
  type metadata accessor for ArtworkView();
  sub_1001E4EFC(&qword_100970E80, &type metadata accessor for ArtworkView, &protocol conformance descriptor for ArtworkView);
  v7 = v6;
  ArtworkLoader.forgetFetch<A>(forView:deprioritizingFetch:)();
}

uint64_t sub_1001E4EA4(uint64_t a1)
{
  result = sub_1001E4EFC(&unk_100979300, type metadata accessor for QuoteCollectionViewCell, &unk_1007BF960);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1001E4EFC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t MetadataRibbonHighlightedTextViewLayout.Metrics.standard.unsafeMutableAddressor()
{
  if (qword_10096D388 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for MetadataRibbonHighlightedTextViewLayout.Metrics();

  return sub_1000056A8(v0, static MetadataRibbonHighlightedTextViewLayout.Metrics.standard);
}

char *sub_1001E4FA8(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v11 = type metadata accessor for MetadataRibbonHighlightedTextViewLayout.Metrics();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v41[-1] - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = OBJC_IVAR____TtC8AppStore33MetadataRibbonHighlightedTextView_metrics;
  if (qword_10096D388 != -1)
  {
    swift_once();
  }

  v16 = sub_1000056A8(v11, static MetadataRibbonHighlightedTextViewLayout.Metrics.standard);
  v17 = *(v12 + 16);
  v17(&v5[v15], v16, v11);
  v18 = &v5[OBJC_IVAR____TtC8AppStore33MetadataRibbonHighlightedTextView_id];
  *v18 = 0u;
  *(v18 + 1) = 0u;
  *(v18 + 4) = 0;
  v19 = OBJC_IVAR____TtC8AppStore33MetadataRibbonHighlightedTextView_itemType;
  v20 = type metadata accessor for MetadataRibbonItemType();
  (*(*(v20 - 8) + 56))(&v5[v19], 1, 1, v20);
  v21 = &v5[OBJC_IVAR____TtC8AppStore33MetadataRibbonHighlightedTextView_labelMaxWidth];
  *v21 = 0;
  v21[8] = 1;
  v22 = &v5[OBJC_IVAR____TtC8AppStore33MetadataRibbonHighlightedTextView_truncationLegibilityThreshold];
  *v22 = 0;
  v22[8] = 1;
  v5[OBJC_IVAR____TtC8AppStore33MetadataRibbonHighlightedTextView_allowsTruncation] = 2;
  type metadata accessor for DynamicTypeLabel();
  *&v5[OBJC_IVAR____TtC8AppStore33MetadataRibbonHighlightedTextView_descriptionLabel] = DynamicTypeLabel.__allocating_init(frame:)();
  v42.receiver = v5;
  v42.super_class = ObjectType;
  v23 = objc_msgSendSuper2(&v42, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v27 = v23;
  [v27 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  v28 = OBJC_IVAR____TtC8AppStore33MetadataRibbonHighlightedTextView_descriptionLabel;
  v29 = *&v27[OBJC_IVAR____TtC8AppStore33MetadataRibbonHighlightedTextView_descriptionLabel];
  sub_100005744(0, &qword_100970180, UIColor_ptr);
  v30 = v29;
  v31 = static UIColor.secondaryText.getter();
  [v30 setTextColor:v31];

  v32 = *&v27[v28];
  v17(v14, &v27[OBJC_IVAR____TtC8AppStore33MetadataRibbonHighlightedTextView_metrics], v11);
  v33 = v32;
  v34 = MetadataRibbonHighlightedTextViewLayout.Metrics.maximumNumberofLinesForDescriptionLabel.getter();
  (*(v12 + 8))(v14, v11);
  [v33 setNumberOfLines:v34];

  v35 = *&v27[v28];
  static CustomTextStyle<>.metadataRibbon.getter();
  if (qword_10096EE50 != -1)
  {
    swift_once();
  }

  v36 = type metadata accessor for MetadataRibbonTextStyle();
  v37 = sub_1000056A8(v36, qword_1009D36F8);
  v41[3] = v36;
  v41[4] = sub_1001E6C78(&qword_10096FBA0, &type metadata accessor for MetadataRibbonTextStyle, &protocol conformance descriptor for MetadataRibbonTextStyle);
  v38 = sub_1000056E0(v41);
  (*(*(v36 - 8) + 16))(v38, v37, v36);
  dispatch thunk of DynamicTypeLabel.customTextStyle.setter();

  [v27 addSubview:*&v27[v28]];
  return v27;
}

uint64_t sub_1001E5418()
{
  ObjectType = swift_getObjectType();
  v18 = type metadata accessor for LayoutRect();
  v2 = *(v18 - 8);
  __chkstk_darwin(v18);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for MetadataRibbonHighlightedTextViewLayout.Metrics();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for MetadataRibbonHighlightedTextViewLayout();
  v9 = *(v17 - 8);
  *&v10 = __chkstk_darwin(v17).n128_u64[0];
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22.receiver = v0;
  v22.super_class = ObjectType;
  objc_msgSendSuper2(&v22, "layoutSubviews", v10);
  v13 = *&v0[OBJC_IVAR____TtC8AppStore33MetadataRibbonHighlightedTextView_descriptionLabel];
  v20 = type metadata accessor for DynamicTypeLabel();
  v21 = &protocol witness table for UILabel;
  v19 = v13;
  (*(v6 + 16))(v8, &v0[OBJC_IVAR____TtC8AppStore33MetadataRibbonHighlightedTextView_metrics], v5);
  v14 = v13;
  MetadataRibbonHighlightedTextViewLayout.init(descriptionLabelTextView:metrics:)();
  LayoutMarginsAware<>.layoutFrame.getter();
  MetadataRibbonHighlightedTextViewLayout.placeChildren(relativeTo:in:)();
  (*(v2 + 8))(v4, v18);
  return (*(v9 + 8))(v12, v17);
}

id sub_1001E58E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    v5 = *&v4[OBJC_IVAR____TtC8AppStore33MetadataRibbonHighlightedTextView_descriptionLabel];
    if (a4)
    {
      v6 = sub_1001E5978(a1);
      [v5 setAttributedText:v6];
    }

    else
    {
      v6 = String._bridgeToObjectiveC()();
      [v5 setText:v6];
    }
  }

  return [v4 setNeedsLayout];
}

id sub_1001E5978(uint64_t a1)
{
  static CustomTextStyle<>.metadataRibbon.getter();
  if (qword_10096EE68 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for MetadataRibbonTextStyle();
  sub_1000056A8(v2, qword_1009D3740);
  v3 = [v1 traitCollection];
  v28.super.isa = MetadataRibbonTextStyle.font(compatibleWith:)(v3).super.isa;

  static CustomTextStyle<>.metadataRibbon.getter();
  if (qword_10096EE50 != -1)
  {
    swift_once();
  }

  sub_1000056A8(v2, qword_1009D36F8);
  v4 = [v1 traitCollection];
  isa = MetadataRibbonTextStyle.font(compatibleWith:)(v4).super.isa;

  v27 = sub_100005744(0, &qword_100970180, UIColor_ptr);
  v6 = UIColor.init(light:dark:)([objc_allocWithZone(UIColor) initWithRed:0.450980392 green:0.450980392 blue:0.494117647 alpha:1.0], objc_msgSend(objc_allocWithZone(UIColor), "initWithRed:green:blue:alpha:", 0.682352941, 0.682352941, 0.698039216, 1.0)).super.isa;
  sub_10002849C(&unk_100973960, &unk_1007B4930);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1007B10D0;
  *(inited + 32) = NSFontAttributeName;
  v8 = sub_100005744(0, &qword_1009730E0, UIFont_ptr);
  *(inited + 64) = v8;
  *(inited + 40) = isa;
  v9 = NSFontAttributeName;
  v26 = isa;
  sub_100397150(inited);
  swift_setDeallocating();
  sub_10002B894(inited + 32, &unk_100970EC0, &unk_1007B2BF0);
  v10 = objc_allocWithZone(NSMutableAttributedString);
  v11 = String._bridgeToObjectiveC()();
  type metadata accessor for Key(0);
  sub_1001E6C78(&qword_100976620, type metadata accessor for Key, &unk_1007B0934);
  v12 = Dictionary._bridgeToObjectiveC()().super.isa;

  v13 = [v10 initWithString:v11 attributes:v12];

  v14 = swift_initStackObject();
  *(v14 + 32) = NSForegroundColorAttributeName;
  *(v14 + 16) = xmmword_1007B1890;
  *(v14 + 40) = v6;
  *(v14 + 64) = v27;
  *(v14 + 72) = v9;
  *(v14 + 104) = v8;
  *(v14 + 80) = v28;
  v15 = NSForegroundColorAttributeName;
  v16 = v6;
  v17 = v28.super.isa;
  sub_100397150(v14);
  swift_setDeallocating();
  sub_10002849C(&unk_100970EC0, &unk_1007B2BF0);
  swift_arrayDestroy();
  v18.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v19 = v13;
  result = [v19 string];
  if (result)
  {
    v21 = result;

    v22 = String._bridgeToObjectiveC()();
    v23 = [v21 rangeOfString:v22 options:1];
    v25 = v24;

    [v19 addAttributes:v18.super.isa range:{v23, v25}];
    return v19;
  }

  else
  {
    __break(1u);
  }

  return result;
}

double sub_1001E5EAC(uint64_t a1)
{
  v1 = MetadataRibbonItem.labelText.getter();
  v3 = v2;
  v4 = MetadataRibbonItem.highlightedText.getter();
  sub_1001E58E8(v1, v3, v4, v5);

  return result;
}

uint64_t sub_1001E5F28@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC8AppStore33MetadataRibbonHighlightedTextView_itemType;
  swift_beginAccess();
  return sub_100031660(v1 + v3, a1, &qword_10096FB98, &unk_1007B10B0);
}

uint64_t sub_1001E5F90(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8AppStore33MetadataRibbonHighlightedTextView_itemType;
  swift_beginAccess();
  sub_1000315F8(a1, v1 + v3, &qword_10096FB98, &unk_1007B10B0);
  return swift_endAccess();
}

void sub_1001E606C(uint64_t a1, char a2)
{
  v5 = v2 + OBJC_IVAR____TtC8AppStore33MetadataRibbonHighlightedTextView_labelMaxWidth;
  swift_beginAccess();
  *v5 = a1;
  *(v5 + 8) = a2 & 1;
}

void sub_1001E6138(uint64_t a1, char a2)
{
  v5 = v2 + OBJC_IVAR____TtC8AppStore33MetadataRibbonHighlightedTextView_truncationLegibilityThreshold;
  swift_beginAccess();
  *v5 = a1;
  *(v5 + 8) = a2 & 1;
}

uint64_t sub_1001E61F8()
{
  v1 = OBJC_IVAR____TtC8AppStore33MetadataRibbonHighlightedTextView_allowsTruncation;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_1001E623C(char a1)
{
  v3 = OBJC_IVAR____TtC8AppStore33MetadataRibbonHighlightedTextView_allowsTruncation;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_1001E62EC@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC8AppStore33MetadataRibbonHighlightedTextView_id;
  swift_beginAccess();
  return sub_100031660(v1 + v3, a1, &qword_10096FB90, &qword_1007B2A50);
}

uint64_t sub_1001E6354(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8AppStore33MetadataRibbonHighlightedTextView_id;
  swift_beginAccess();
  sub_1000315F8(a1, v1 + v3, &qword_10096FB90, &qword_1007B2A50);
  return swift_endAccess();
}

uint64_t sub_1001E6424()
{
  v0 = sub_10002849C(&unk_10096FC10, &unk_1007B10C0);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v6 - v2;
  v4 = type metadata accessor for MetadataRibbonHighlightedTextViewLayout.Metrics();
  sub_100005644(v4, static MetadataRibbonHighlightedTextViewLayout.Metrics.standard);
  sub_1000056A8(v4, static MetadataRibbonHighlightedTextViewLayout.Metrics.standard);
  sub_10002849C(&qword_100973F50, &qword_1007B4260);
  Conditional.init(_:)();
  MetadataRibbonHighlightedTextViewLayout.Metrics.init(maximumNumberofLinesForDescriptionLabel:)();
  return (*(v1 + 8))(v3, v0);
}

uint64_t static MetadataRibbonHighlightedTextViewLayout.Metrics.standard.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_10096D388 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for MetadataRibbonHighlightedTextViewLayout.Metrics();
  v3 = sub_1000056A8(v2, static MetadataRibbonHighlightedTextViewLayout.Metrics.standard);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t type metadata accessor for MetadataRibbonHighlightedTextView(uint64_t a1)
{
  result = qword_100979348;
  if (!qword_100979348)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1001E6660(uint64_t a1)
{
  type metadata accessor for MetadataRibbonHighlightedTextViewLayout.Metrics();
  if (v1 <= 0x3F)
  {
    sub_1000315A0(319);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

double sub_1001E6754(uint64_t a1, uint64_t a2, double a3, double a4)
{
  v39 = a2;
  v33 = a1;
  v4 = type metadata accessor for MetadataRibbonHighlightedTextViewLayout.Metrics();
  v36 = *(v4 - 8);
  __chkstk_darwin(v4);
  v35 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for MetadataRibbonHighlightedTextViewLayout();
  v37 = *(v6 - 8);
  v38 = v6;
  __chkstk_darwin(v6);
  v34 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = type metadata accessor for LabelPlaceholder();
  v31 = *(v32 - 8);
  __chkstk_darwin(v32);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DynamicTextAppearance();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v29 - v15;
  __chkstk_darwin(v17);
  v19 = &v29 - v18;
  if (qword_10096D388 != -1)
  {
    swift_once();
  }

  v20 = sub_1000056A8(v4, static MetadataRibbonHighlightedTextViewLayout.Metrics.standard);
  DynamicTextAppearance.init()();
  static CustomTextStyle<>.metadataRibbon.getter();
  v30 = v4;
  if (qword_10096EE50 != -1)
  {
    swift_once();
  }

  v21 = type metadata accessor for MetadataRibbonTextStyle();
  v22 = sub_1000056A8(v21, qword_1009D36F8);
  v41[3] = v21;
  v41[4] = sub_1001E6C78(&qword_10096FBA0, &type metadata accessor for MetadataRibbonTextStyle, &protocol conformance descriptor for MetadataRibbonTextStyle);
  v23 = sub_1000056E0(v41);
  (*(*(v21 - 8) + 16))(v23, v22, v21);
  DynamicTextAppearance.withCustomTextStyle(_:)();
  v24 = *(v11 + 8);
  v24(v13, v10);
  sub_100007000(v41);
  MetadataRibbonHighlightedTextViewLayout.Metrics.maximumNumberofLinesForDescriptionLabel.getter();
  DynamicTextAppearance.withNumberOfLines(_:)();
  v24(v16, v10);
  MetadataRibbonItem.labelText.getter();
  (*(v11 + 16))(v16, v19, v10);
  LabelPlaceholder.Options.init(rawValue:)();
  LabelPlaceholder.init(_:with:where:)();
  LabelPlaceholder.layoutTextView.getter();
  (*(v31 + 8))(v9, v32);
  sub_10002C0AC(v41, v40);
  (*(v36 + 16))(v35, v20, v30);
  v25 = v34;
  MetadataRibbonHighlightedTextViewLayout.init(descriptionLabelTextView:metrics:)();
  MetadataRibbonHighlightedTextViewLayout.measurements(fitting:in:)();
  v27 = v26;
  (*(v37 + 8))(v25, v38);
  sub_100007000(v41);
  v24(v19, v10);
  return v27;
}

uint64_t sub_1001E6C78(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1001E6CC0()
{
  v1 = OBJC_IVAR____TtC8AppStore33MetadataRibbonHighlightedTextView_metrics;
  if (qword_10096D388 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for MetadataRibbonHighlightedTextViewLayout.Metrics();
  v3 = sub_1000056A8(v2, static MetadataRibbonHighlightedTextViewLayout.Metrics.standard);
  (*(*(v2 - 8) + 16))(v0 + v1, v3, v2);
  v4 = v0 + OBJC_IVAR____TtC8AppStore33MetadataRibbonHighlightedTextView_id;
  *v4 = 0u;
  *(v4 + 16) = 0u;
  *(v4 + 32) = 0;
  v5 = OBJC_IVAR____TtC8AppStore33MetadataRibbonHighlightedTextView_itemType;
  v6 = type metadata accessor for MetadataRibbonItemType();
  (*(*(v6 - 8) + 56))(v0 + v5, 1, 1, v6);
  v7 = v0 + OBJC_IVAR____TtC8AppStore33MetadataRibbonHighlightedTextView_labelMaxWidth;
  *v7 = 0;
  *(v7 + 8) = 1;
  v8 = v0 + OBJC_IVAR____TtC8AppStore33MetadataRibbonHighlightedTextView_truncationLegibilityThreshold;
  *v8 = 0;
  *(v8 + 8) = 1;
  *(v0 + OBJC_IVAR____TtC8AppStore33MetadataRibbonHighlightedTextView_allowsTruncation) = 2;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_1001E6E40(uint64_t a1, char a2)
{
  v63 = a1;
  v66 = sub_10002849C(&qword_100979358, qword_1007BFB58);
  v73 = *(v66 - 8);
  __chkstk_darwin(v66);
  v62 = v51 - v3;
  v4 = sub_10002849C(&qword_100970EE0, &unk_1007DF4C0);
  __chkstk_darwin(v4 - 8);
  v70 = v51 - v5;
  v74 = type metadata accessor for PageGrid.HorizontalMargins();
  v6 = *(v74 - 8);
  __chkstk_darwin(v74);
  v8 = (v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = sub_10002849C(&qword_100970EE8, &qword_1007CF5F0);
  __chkstk_darwin(v9 - 8);
  v69 = v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = v51 - v12;
  __chkstk_darwin(v14);
  v16 = v51 - v15;
  __chkstk_darwin(v17);
  v19 = v51 - v18;
  if (a2)
  {
    v20 = 1.1;
  }

  else
  {
    v20 = 1.0;
  }

  sub_10002849C(&qword_100970EF0, qword_1007DF4D0);
  v21 = *(type metadata accessor for PageGrid.Breakpoint() - 8);
  v72 = *(v21 + 72);
  v22 = (*(v21 + 80) + 32) & ~*(v21 + 80);
  v23 = swift_allocObject();
  v58 = v23;
  *(v23 + 16) = xmmword_1007B23A0;
  v24 = v23 + v22;
  v77 = *&v20;
  sub_10005E808();
  PageGrid.DirectionalValue.init(_:)();
  v77 = 0x4020000000000000;
  v75 = 0x4030000000000000;
  PageGrid.DirectionalValue.init(horizontal:vertical:)();
  v77 = 0x4030000000000000;
  v75 = 0x4034000000000000;
  PageGrid.DirectionalValue.init(horizontal:vertical:)();
  __asm { FMOV            V0.2D, #16.0 }

  *v8 = _Q0;
  v67 = enum case for PageGrid.HorizontalMargins.absolute(_:);
  v30 = *(v6 + 104);
  v68 = v6 + 104;
  v71 = v30;
  (v30)(v8);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  LOBYTE(v77) = 0;
  PageGrid.DirectionalValue.init(_:)();
  v77 = 0;
  PageGrid.DirectionalValue.init(_:)();
  v65 = v24;
  v51[1] = v19;
  v64 = v16;
  v59 = v13;
  PageGrid.Breakpoint.init(range:columnCount:columnExtendsToFillWidth:minimumColumnWidth:interColumnSpace:interRowSpace:horizontalMargins:additionalSafeAreaHorizontalMargins:)();
  v77 = *&v20;
  PageGrid.DirectionalValue.init(_:)();
  v77 = 0x4024000000000000;
  v75 = 0x4034000000000000;
  PageGrid.DirectionalValue.init(horizontal:vertical:)();
  v77 = 0x4030000000000000;
  v75 = 0x4034000000000000;
  PageGrid.DirectionalValue.init(horizontal:vertical:)();
  __asm { FMOV            V0.2D, #20.0 }

  v34 = v8;
  *v8 = _Q0;
  v35 = v8;
  v36 = v67;
  v37 = v71;
  v71(v35, v67, v74);
  LOBYTE(v77) = 0;
  PageGrid.DirectionalValue.init(_:)();
  v77 = 0;
  PageGrid.DirectionalValue.init(_:)();
  v38 = v72;
  top = UIEdgeInsetsZero.top;
  v55 = left;
  v56 = bottom;
  PageGrid.Breakpoint.init(range:columnCount:columnExtendsToFillWidth:minimumColumnWidth:interColumnSpace:interRowSpace:horizontalMargins:additionalSafeAreaHorizontalMargins:)();
  v61 = 2 * v38;
  v77 = *&v20;
  PageGrid.DirectionalValue.init(_:)();
  v77 = 0x4034000000000000;
  PageGrid.DirectionalValue.init(_:)();
  v77 = 0x4030000000000000;
  v75 = 0x4034000000000000;
  PageGrid.DirectionalValue.init(horizontal:vertical:)();
  v54 = vdupq_n_s64(0x4041000000000000uLL);
  *v34 = v54;
  v37(v34, v36, v74);
  LOBYTE(v77) = 0;
  PageGrid.DirectionalValue.init(_:)();
  v77 = 0;
  PageGrid.DirectionalValue.init(_:)();
  v39 = v61;
  v40 = v34;
  PageGrid.Breakpoint.init(range:columnCount:columnExtendsToFillWidth:minimumColumnWidth:interColumnSpace:interRowSpace:horizontalMargins:additionalSafeAreaHorizontalMargins:)();
  v79 = 0x4000000000000000;
  v53 = v39 + v72;
  v77 = 0x3FF8000000000000;
  v78 = 0;
  v75 = *&v20;
  v76 = 0;
  v61 = sub_1001E8728();
  v41 = v62;
  AccessibilityConditional.init(value:ax1To3Value:ax4To5Value:)();
  v42 = v66;
  AccessibilityConditional.value(for:)();
  v43 = *(v73 + 8);
  v73 += 8;
  v60 = v43;
  v43(v41, v42);
  v75 = v77;
  PageGrid.DirectionalValue.init(_:)();
  v77 = 0x4034000000000000;
  PageGrid.DirectionalValue.init(_:)();
  v77 = 0x4030000000000000;
  v75 = 0x4034000000000000;
  PageGrid.DirectionalValue.init(horizontal:vertical:)();
  *v40 = v54;
  v52 = v40;
  v44 = v74;
  v71(v40, v67, v74);
  static UIEdgeInsets.horizontal(left:right:)();
  LOBYTE(v77) = 0;
  PageGrid.DirectionalValue.init(_:)();
  v77 = 0;
  PageGrid.DirectionalValue.init(_:)();
  PageGrid.Breakpoint.init(range:columnCount:columnExtendsToFillWidth:minimumColumnWidth:interColumnSpace:interRowSpace:horizontalMargins:additionalSafeAreaHorizontalMargins:)();
  v79 = 0x4000000000000000;
  v53 = 4 * v72;
  v77 = 0x3FF8000000000000;
  v78 = 0;
  v75 = *&v20;
  v76 = 0;
  v45 = v62;
  AccessibilityConditional.init(value:ax1To3Value:ax4To5Value:)();
  v46 = v66;
  AccessibilityConditional.value(for:)();
  v60(v45, v46);
  v75 = v77;
  PageGrid.DirectionalValue.init(_:)();
  v77 = 0x4038000000000000;
  PageGrid.DirectionalValue.init(_:)();
  v77 = 0x4030000000000000;
  v75 = 0x4034000000000000;
  PageGrid.DirectionalValue.init(horizontal:vertical:)();
  v54 = vdupq_n_s64(0x404A000000000000uLL);
  v47 = v52;
  *v52 = v54;
  v71(v47, v67, v44);
  LOBYTE(v77) = 0;
  PageGrid.DirectionalValue.init(_:)();
  v77 = 0;
  PageGrid.DirectionalValue.init(_:)();
  v48 = v53;
  PageGrid.Breakpoint.init(range:columnCount:columnExtendsToFillWidth:minimumColumnWidth:interColumnSpace:interRowSpace:horizontalMargins:additionalSafeAreaHorizontalMargins:)();
  v79 = 0x4004000000000000;
  v72 += v48;
  v77 = 0x4000000000000000;
  v78 = 0;
  v75 = 0x3FF8000000000000;
  v76 = 0;
  AccessibilityConditional.init(value:ax1To3Value:ax4To5Value:)();
  v49 = v66;
  AccessibilityConditional.value(for:)();
  v60(v45, v49);
  v75 = v77;
  PageGrid.DirectionalValue.init(_:)();
  v77 = 0x4038000000000000;
  PageGrid.DirectionalValue.init(_:)();
  v77 = 0x4030000000000000;
  v75 = 0x4034000000000000;
  PageGrid.DirectionalValue.init(horizontal:vertical:)();
  *v47 = v54;
  v71(v47, v67, v74);
  LOBYTE(v77) = 0;
  PageGrid.DirectionalValue.init(_:)();
  v77 = 0;
  PageGrid.DirectionalValue.init(_:)();
  PageGrid.Breakpoint.init(range:columnCount:columnExtendsToFillWidth:minimumColumnWidth:interColumnSpace:interRowSpace:horizontalMargins:additionalSafeAreaHorizontalMargins:)();
  return v58;
}

uint64_t sub_1001E7B04(uint64_t a1)
{
  v51 = a1;
  v50 = sub_10002849C(&qword_100979358, qword_1007BFB58);
  v56.i64[0] = *(v50 - 8);
  __chkstk_darwin(v50);
  v47 = v41 - v1;
  v2 = sub_10002849C(&qword_100970EE0, &unk_1007DF4C0);
  __chkstk_darwin(v2 - 8);
  v4 = v41 - v3;
  v59 = type metadata accessor for PageGrid.HorizontalMargins();
  v62 = *(v59 - 8);
  __chkstk_darwin(v59);
  v6 = (v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_10002849C(&qword_100970EE8, &qword_1007CF5F0);
  __chkstk_darwin(v7 - 8);
  v61 = v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  __chkstk_darwin(v10);
  v12 = v41 - v11;
  __chkstk_darwin(v13);
  v57 = v41 - v14;
  sub_10002849C(&qword_100970EF0, qword_1007DF4D0);
  v15 = *(type metadata accessor for PageGrid.Breakpoint() - 8);
  v55 = *(v15 + 72);
  v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  v17 = swift_allocObject();
  v48 = v17;
  *(v17 + 16) = xmmword_1007B23A0;
  v18 = v17 + v16;
  v65 = 0x3FF0000000000000;
  sub_10005E808();
  PageGrid.DirectionalValue.init(_:)();
  v65 = 0x4020000000000000;
  v63 = 0x4030000000000000;
  PageGrid.DirectionalValue.init(horizontal:vertical:)();
  v65 = 0x4030000000000000;
  v63 = 0x4034000000000000;
  PageGrid.DirectionalValue.init(horizontal:vertical:)();
  __asm { FMOV            V0.2D, #16.0 }

  *v6 = _Q0;
  v58 = enum case for PageGrid.HorizontalMargins.absolute(_:);
  v24 = *(v62 + 104);
  v62 += 104;
  v60 = v24;
  v25 = v59;
  (v24)(v6);
  left = UIEdgeInsetsZero.left;
  LOBYTE(v65) = 0;
  PageGrid.DirectionalValue.init(_:)();
  v65 = 0;
  PageGrid.DirectionalValue.init(_:)();
  v54 = v18;
  v52 = v12;
  PageGrid.Breakpoint.init(range:columnCount:columnExtendsToFillWidth:minimumColumnWidth:interColumnSpace:interRowSpace:horizontalMargins:additionalSafeAreaHorizontalMargins:)();
  v65 = 0x3FF0000000000000;
  PageGrid.DirectionalValue.init(_:)();
  v65 = 0x4024000000000000;
  v63 = 0x4034000000000000;
  PageGrid.DirectionalValue.init(horizontal:vertical:)();
  v65 = 0x4030000000000000;
  v63 = 0x4034000000000000;
  PageGrid.DirectionalValue.init(horizontal:vertical:)();
  __asm { FMOV            V0.2D, #20.0 }

  v49 = v6;
  *v6 = _Q0;
  v28 = v58;
  v29 = v60;
  v60(v6, v58, v25);
  LOBYTE(v65) = 0;
  v53 = v4;
  PageGrid.DirectionalValue.init(_:)();
  v65 = 0;
  PageGrid.DirectionalValue.init(_:)();
  v30 = v55;
  top = UIEdgeInsetsZero.top;
  v46 = left;
  v31 = v49;
  PageGrid.Breakpoint.init(range:columnCount:columnExtendsToFillWidth:minimumColumnWidth:interColumnSpace:interRowSpace:horizontalMargins:additionalSafeAreaHorizontalMargins:)();
  v44 = 2 * v30;
  v65 = 0x3FF0000000000000;
  PageGrid.DirectionalValue.init(_:)();
  v65 = 0x4034000000000000;
  PageGrid.DirectionalValue.init(_:)();
  v65 = 0x4030000000000000;
  v63 = 0x4034000000000000;
  PageGrid.DirectionalValue.init(horizontal:vertical:)();
  v42 = vdupq_n_s64(0x4041000000000000uLL);
  *v31 = v42;
  v29(v31, v28, v59);
  LOBYTE(v65) = 0;
  PageGrid.DirectionalValue.init(_:)();
  v65 = 0;
  PageGrid.DirectionalValue.init(_:)();
  v32 = v44;
  PageGrid.Breakpoint.init(range:columnCount:columnExtendsToFillWidth:minimumColumnWidth:interColumnSpace:interRowSpace:horizontalMargins:additionalSafeAreaHorizontalMargins:)();
  v67 = 0x4000000000000000;
  v33 = v55;
  v41[1] = v32 + v55;
  v65 = 0;
  v66 = 1;
  v63 = 0x3FF0000000000000;
  v64 = 0;
  v44 = sub_1001E8728();
  v34 = v47;
  AccessibilityConditional.init(value:ax1To3Value:ax4To5Value:)();
  v35 = v50;
  AccessibilityConditional.value(for:)();
  v36 = *(v56.i64[0] + 8);
  v56.i64[0] += 8;
  v43 = v36;
  v36(v34, v35);
  v63 = v65;
  PageGrid.DirectionalValue.init(_:)();
  v65 = 0x4034000000000000;
  PageGrid.DirectionalValue.init(_:)();
  v65 = 0x4030000000000000;
  v63 = 0x4034000000000000;
  PageGrid.DirectionalValue.init(horizontal:vertical:)();
  v37 = v49;
  *v49 = v42;
  v60(v37, v58, v59);
  static UIEdgeInsets.horizontal(left:right:)();
  LOBYTE(v65) = 0;
  PageGrid.DirectionalValue.init(_:)();
  v65 = 0;
  PageGrid.DirectionalValue.init(_:)();
  PageGrid.Breakpoint.init(range:columnCount:columnExtendsToFillWidth:minimumColumnWidth:interColumnSpace:interRowSpace:horizontalMargins:additionalSafeAreaHorizontalMargins:)();
  v67 = 0x4000000000000000;
  v42.i64[0] = 4 * v33;
  v65 = 0;
  v66 = 1;
  v63 = 0x3FF0000000000000;
  v64 = 0;
  AccessibilityConditional.init(value:ax1To3Value:ax4To5Value:)();
  v38 = v50;
  AccessibilityConditional.value(for:)();
  v43(v34, v38);
  v63 = v65;
  PageGrid.DirectionalValue.init(_:)();
  v65 = 0x4038000000000000;
  PageGrid.DirectionalValue.init(_:)();
  v65 = 0x4030000000000000;
  v63 = 0x4034000000000000;
  PageGrid.DirectionalValue.init(horizontal:vertical:)();
  v56 = vdupq_n_s64(0x404A000000000000uLL);
  *v37 = v56;
  v39 = v59;
  v60(v37, v58, v59);
  LOBYTE(v65) = 0;
  PageGrid.DirectionalValue.init(_:)();
  v65 = 0;
  PageGrid.DirectionalValue.init(_:)();
  PageGrid.Breakpoint.init(range:columnCount:columnExtendsToFillWidth:minimumColumnWidth:interColumnSpace:interRowSpace:horizontalMargins:additionalSafeAreaHorizontalMargins:)();
  v65 = 0x4000000000000000;
  PageGrid.DirectionalValue.init(_:)();
  v65 = 0x4038000000000000;
  PageGrid.DirectionalValue.init(_:)();
  v65 = 0x4030000000000000;
  v63 = 0x4034000000000000;
  PageGrid.DirectionalValue.init(horizontal:vertical:)();
  *v37 = v56;
  v60(v37, v58, v39);
  LOBYTE(v65) = 0;
  PageGrid.DirectionalValue.init(_:)();
  v65 = 0;
  PageGrid.DirectionalValue.init(_:)();
  PageGrid.Breakpoint.init(range:columnCount:columnExtendsToFillWidth:minimumColumnWidth:interColumnSpace:interRowSpace:horizontalMargins:additionalSafeAreaHorizontalMargins:)();
  return v48;
}

unint64_t sub_1001E8728()
{
  result = qword_100979360;
  if (!qword_100979360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100979360);
  }

  return result;
}

char *sub_1001E877C(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR____TtC8AppStore28CondensedAppEventContentView_lockupView;
  *&v4[v9] = [objc_allocWithZone(type metadata accessor for SmallSearchLockupView(0)) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v10 = OBJC_IVAR____TtC8AppStore28CondensedAppEventContentView_eventCardView;
  *&v4[v10] = [objc_allocWithZone(type metadata accessor for CondensedAppEventCardView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *&v4[OBJC_IVAR____TtC8AppStore28CondensedAppEventContentView_interRowSpacing] = 0;
  v17.receiver = v4;
  v17.super_class = type metadata accessor for CondensedAppEventContentView();
  v11 = objc_msgSendSuper2(&v17, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v15 = v11;
  [v15 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  [v15 addSubview:*&v15[OBJC_IVAR____TtC8AppStore28CondensedAppEventContentView_lockupView]];
  [v15 addSubview:*&v15[OBJC_IVAR____TtC8AppStore28CondensedAppEventContentView_eventCardView]];

  return v15;
}

void sub_1001E89CC()
{
  v1 = v0;
  v25.receiver = v0;
  v25.super_class = type metadata accessor for CondensedAppEventContentView();
  objc_msgSendSuper2(&v25, "layoutSubviews");
  LayoutMarginsAware<>.layoutFrame.getter();
  v3 = v2;
  v5 = v4;
  v6 = *&v0[OBJC_IVAR____TtC8AppStore28CondensedAppEventContentView_lockupView];
  v7 = [v0 traitCollection];
  type metadata accessor for TraitEnvironmentPlaceholder();
  sub_10002849C(&qword_100973210, qword_1007B0BB0);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1007B0B70;
  *(v8 + 32) = v7;
  v9 = v7;
  v10 = TraitEnvironmentPlaceholder.__allocating_init(_:)();
  [v6 measurementsWithFitting:v10 in:{v3, v5}];

  v11 = [v1 traitCollection];
  CGRect.withLayoutDirection(using:relativeTo:)();
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;

  [v6 setFrame:{v13, v15, v17, v19}];
  v20 = *&v1[OBJC_IVAR____TtC8AppStore28CondensedAppEventContentView_eventCardView];
  v21 = [v20 superview];
  if (v21)
  {
    v22 = v21;
    sub_100005744(0, &qword_100972EB0, UIView_ptr);
    v23 = v1;
    v24 = static NSObject.== infix(_:_:)();

    if (v24)
    {
      sub_1001E92BC();
      [v20 setBounds:{0.0, 0.0}];
      [v20 setCenter:sub_1001E9488()];
    }
  }
}

uint64_t sub_1001E8C60()
{
  v1 = *(v0 + OBJC_IVAR____TtC8AppStore28CondensedAppEventContentView_lockupView);
  v2 = *&v1[OBJC_IVAR____TtC8AppStore14BaseLockupView_artworkView];
  v16.value.super.isa = 0;
  v16.is_nil = 0;
  ArtworkView.setImage(image:animated:)(v16, v3);

  v4 = *&v1[OBJC_IVAR____TtC8AppStore21SmallSearchLockupView_descriptionLabel];
  v5 = [v4 superview];
  if (!v5 || (v6 = v5, sub_100005744(0, &qword_100972EB0, UIView_ptr), v7 = v1, v8 = static NSObject.== infix(_:_:)(), v6, v7, (v8 & 1) == 0))
  {
    [v1 addSubview:v4];
  }

  [v4 setHidden:1];
  [v4 setText:0];
  [v1 setNeedsLayout];
  v9 = OBJC_IVAR____TtC8AppStore21SmallSearchLockupView_searchAdTransparencyButton;
  v10 = *&v1[OBJC_IVAR____TtC8AppStore21SmallSearchLockupView_searchAdTransparencyButton];
  if (v10)
  {
    [v10 removeFromSuperview];
    v11 = *&v1[v9];
  }

  else
  {
    v11 = 0;
  }

  *&v1[v9] = 0;

  return sub_10039BF08(v12, v13, v14);
}

void sub_1001E8DC4(uint64_t a1, char *a2)
{
  v3 = v2;
  v5 = type metadata accessor for PageGrid();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10002849C(&unk_1009731E0, &unk_1007B0B60);
  __chkstk_darwin(v9 - 8);
  v11 = &v24 - v10;
  type metadata accessor for AppEventSearchResult();
  sub_1001EBA90(&qword_100973DC0, 255, &type metadata accessor for AppEventSearchResult, &protocol conformance descriptor for SearchResult);
  ItemLayoutContext.typedModel<A>(as:)();
  v12 = v25;
  if (v25)
  {
    v24 = v5;
    v13 = AppEventSearchResult.lockup.getter();
    v14 = type metadata accessor for ItemLayoutContext();
    (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
    sub_100279F24(v13, v11, a2);

    sub_10002B894(v11, &unk_1009731E0, &unk_1007B0B60);
    v15 = *&v2[OBJC_IVAR____TtC8AppStore28CondensedAppEventContentView_eventCardView];
    v16 = AppEventSearchResult.appEvent.getter();
    sub_10039C1FC(v16);

    v17 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v18 = swift_allocObject();
    *(v18 + 2) = v17;
    *(v18 + 3) = v12;
    *(v18 + 4) = a2;
    v19 = (v15 + OBJC_IVAR____TtC8AppStore25CondensedAppEventCardView_appEventViewTappedAction);
    v20 = *(v15 + OBJC_IVAR____TtC8AppStore25CondensedAppEventCardView_appEventViewTappedAction);
    v21 = v19[1];
    *v19 = sub_1001EBCBC;
    v19[1] = v18;

    sub_10001F63C(v20, v21);

    swift_getKeyPath();
    ItemLayoutContext.subscript.getter();

    PageGrid.interRowSpace.getter();
    v23 = v22;
    (*(v6 + 8))(v8, v24);
    *&v3[OBJC_IVAR____TtC8AppStore28CondensedAppEventContentView_interRowSpacing] = v23;
    [v3 setNeedsLayout];
  }
}

void sub_1001E90FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_10002849C(&unk_100972A00, &unk_1007B3130);
  __chkstk_darwin(v4 - 8);
  v6 = &v12 - v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    AppEventSearchResult.appEvent.getter();
    v9 = AppPromotion.clickAction.getter();

    if (v9)
    {
      v10 = sub_10002849C(&unk_100974490, &qword_1007B3DD0);
      BaseObjectGraph.injectIfAvailable<A>(_:)();
      v11 = *(v10 - 8);
      if ((*(v11 + 48))(v6, 1, v10) == 1)
      {

        sub_10002B894(v6, &unk_100972A00, &unk_1007B3130);
      }

      else
      {
        sub_1005F9AF4(v9, 1, a3, v6);

        (*(v11 + 8))(v6, v10);
      }
    }

    else
    {
    }
  }
}

double sub_1001E92BC()
{
  v1 = v0;
  v2 = type metadata accessor for CondensedSearchInAppEventContentLayout.Metrics();
  v3 = *(v2 - 8);
  *&v4 = __chkstk_darwin(v2).n128_u64[0];
  v6 = &v12[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  [*&v0[OBJC_IVAR____TtC8AppStore28CondensedAppEventContentView_lockupView] frame];
  CGRectGetMaxY(v13);
  v7 = [v0 traitCollection];
  v8 = UITraitCollection.prefersAccessibilityLayouts.getter();

  if ((v8 & 1) == 0)
  {
    static CondensedSearchInAppEventContentLayout.Metrics.standard.getter();
    CondensedSearchInAppEventContentLayout.Metrics.lockupBottomSpacing.getter();
    (*(v3 + 8))(v6, v2);
    sub_10002A400(v12, v12[3]);
    v9 = [v1 traitCollection];
    AnyDimension.value(with:)();

    sub_100007000(v12);
  }

  type metadata accessor for CondensedAppEventContentView();
  LayoutMarginsAware<>.layoutFrame.getter();
  CGRectGetHeight(v14);
  LayoutMarginsAware<>.layoutFrame.getter();
  CGRectGetWidth(v15);
  return 0.0;
}

CGFloat sub_1001E9488()
{
  v1 = v0;
  v2 = type metadata accessor for CondensedSearchInAppEventContentLayout.Metrics();
  v3 = *(v2 - 8);
  *&v4 = __chkstk_darwin(v2).n128_u64[0];
  v6 = &v12[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  [*&v0[OBJC_IVAR____TtC8AppStore28CondensedAppEventContentView_lockupView] frame];
  CGRectGetMaxY(v13);
  v7 = [v0 traitCollection];
  v8 = UITraitCollection.prefersAccessibilityLayouts.getter();

  if ((v8 & 1) == 0)
  {
    static CondensedSearchInAppEventContentLayout.Metrics.standard.getter();
    CondensedSearchInAppEventContentLayout.Metrics.lockupBottomSpacing.getter();
    (*(v3 + 8))(v6, v2);
    sub_10002A400(v12, v12[3]);
    v9 = [v1 traitCollection];
    AnyDimension.value(with:)();

    sub_100007000(v12);
  }

  type metadata accessor for CondensedAppEventContentView();
  LayoutMarginsAware<>.layoutFrame.getter();
  CGRectGetHeight(v14);
  [v1 bounds];
  return CGRectGetWidth(v15) * 0.5;
}

id sub_1001E9678(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for CondensedAppEventContentView();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_1001E977C(uint64_t a1, uint64_t a2)
{
  *(a1 + 24) = sub_1001EBA90(&qword_1009793B8, a2, type metadata accessor for CondensedAppEventContentView, &unk_1007BFBCC);
  result = sub_1001EBA90(&unk_1009793C0, v3, type metadata accessor for CondensedAppEventContentView, &unk_1007BFBFC);
  *(a1 + 32) = result;
  return result;
}

double sub_1001E9800(uint64_t a1)
{
  v2 = type metadata accessor for CondensedSearchInAppEventContentLayout.Metrics();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v94[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = type metadata accessor for SmallSearchLockupLayout();
  v122 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v94[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = type metadata accessor for MetadataRibbonViewLayout.Metrics();
  v126 = *(v9 - 8);
  v127 = v9;
  __chkstk_darwin(v9);
  v117 = &v94[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = type metadata accessor for LabelPlaceholderCompatibility();
  v119 = *(v11 - 8);
  v120 = v11;
  __chkstk_darwin(v11);
  v118 = &v94[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = type metadata accessor for OfferButtonMetrics();
  v130 = *(v13 - 8);
  v131 = v13;
  __chkstk_darwin(v13);
  v15 = &v94[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v16);
  v129 = &v94[-v17];
  v135 = type metadata accessor for SmallSearchLockupLayout.Metrics();
  v128 = *(v135 - 8);
  __chkstk_darwin(v135);
  v121 = &v94[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v19);
  v21 = &v94[-v20];
  v22 = sub_10002849C(&unk_1009912C0, &unk_1007B4130);
  __chkstk_darwin(v22 - 8);
  v116 = &v94[-((v23 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v24);
  v133 = &v94[-v25];
  type metadata accessor for AppEventSearchResult();
  sub_1001EBA90(&qword_100973DC0, 255, &type metadata accessor for AppEventSearchResult, &protocol conformance descriptor for SearchResult);
  ItemLayoutContext.typedModel<A>(as:)();
  if (!v172[0])
  {
    return 0.0;
  }

  v132 = v21;
  v114 = v3;
  v109 = v172[0];
  v26 = AppEventSearchResult.lockup.getter();
  swift_getKeyPath();
  ItemLayoutContext.subscript.getter();

  v134 = v172[0];

  v27 = Lockup.title.getter();
  v100 = v28;
  v101 = v27;
  v29 = Lockup.subtitle.getter();
  v102 = v30;
  v103 = v29;
  v31 = Lockup.searchAdOpportunity.getter();
  v125 = v26;

  if (v31 && (v32 = SearchAdOpportunity.searchAd.getter(), , v32))
  {
    v33 = SearchAd.advertisingText.getter();
    v104 = v34;
    v105 = v33;
  }

  else
  {
    v104 = 0;
    v105 = 0;
  }

  v35 = v132;
  v124 = MixedMediaLockup.metadataRibbonItems.getter();
  (*(v126 + 56))(v133, 1, 1, v127);
  MixedMediaLockup.shouldEvenlyDistributeRibbonItems.getter();
  if (qword_10096CF70 != -1)
  {
    swift_once();
  }

  v36 = v135;
  v37 = sub_1000056A8(v135, qword_1009CDC00);
  v106 = *(v128 + 16);
  v107 = v128 + 16;
  v106(v35, v37, v36);
  v38 = UITraitCollection.prefersAccessibilityLayouts.getter();
  v115 = v2;
  v112 = a1;
  v113 = v5;
  v110 = v8;
  v111 = v6;
  if (v38)
  {
    if (qword_10096ECB8 != -1)
    {
      swift_once();
    }

    v39 = qword_100991010;
  }

  else
  {
    if (qword_10096ECC0 != -1)
    {
      swift_once();
    }

    v39 = qword_100991028;
  }

  v41 = v131;
  v42 = sub_1000056A8(v131, v39);
  v43 = v130;
  (*(v130 + 16))(v15, v42, v41);
  (*(v43 + 32))(v129, v15, v41);
  v44 = [v134 preferredContentSizeCategory];
  UIContentSizeCategory.isAccessibilityCategory.getter();

  OfferButtonMetrics.minimumSize.getter();
  OfferButtonMetrics.estimatedHeight.getter();
  SmallSearchLockupLayout.Metrics.offerButtonSize.setter();
  SmallSearchLockupLayout.Metrics.artworkSize.getter();
  v99 = type metadata accessor for LayoutViewPlaceholder();
  swift_allocObject();
  v108 = LayoutViewPlaceholder.init(representing:)();
  v45 = objc_opt_self();
  v97 = v45;
  v46 = [v45 preferredFontForTextStyle:UIFontTextStyleBody];
  v47 = type metadata accessor for Feature();
  v173 = v47;
  v123 = sub_1001EBA90(&qword_100972E50, 255, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
  v174 = v123;
  v48 = sub_1000056E0(v172);
  v49 = enum case for Feature.measurement_with_labelplaceholder(_:);
  v50 = *(v47 - 8);
  v98 = *(v50 + 104);
  v51 = v50 + 104;
  v95 = enum case for Feature.measurement_with_labelplaceholder(_:);
  v98(v48, enum case for Feature.measurement_with_labelplaceholder(_:), v47);
  v96 = v51;
  isFeatureEnabled(_:)();
  sub_100007000(v172);
  v52 = v118;
  LabelPlaceholderCompatibility.init(text:font:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:shouldUseLabelPlaceholder:)();
  LabelPlaceholderCompatibility.layoutTextView.getter();
  v53 = v120;
  v54 = *(v119 + 8);
  v54(v52, v120);
  v55 = [v45 preferredFontForTextStyle:UIFontTextStyleFootnote];
  v171[3] = v47;
  v171[4] = v123;
  v56 = sub_1000056E0(v171);
  v57 = v49;
  v58 = v98;
  v98(v56, v57, v47);
  isFeatureEnabled(_:)();
  sub_100007000(v171);
  LabelPlaceholderCompatibility.init(text:font:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:shouldUseLabelPlaceholder:)();
  LabelPlaceholderCompatibility.layoutTextView.getter();
  v54(v52, v53);
  v59 = [v97 preferredFontForTextStyle:UIFontTextStyleFootnote];
  v170[3] = v47;
  v170[4] = v123;
  v60 = sub_1000056E0(v170);
  v58(v60, v95, v47);
  isFeatureEnabled(_:)();
  sub_100007000(v170);
  LabelPlaceholderCompatibility.init(text:font:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:shouldUseLabelPlaceholder:)();
  LabelPlaceholderCompatibility.layoutTextView.getter();
  v54(v52, v53);
  v61 = v124;
  LODWORD(v123) = sub_1000AE138() & (v61 != 0);
  if (v123 == 1)
  {
    v62 = v99;
    v63 = objc_allocWithZone(type metadata accessor for TraitEnvironmentPlaceholder());
    v64 = v134;
    v65 = TraitEnvironmentPlaceholder.init(traitCollection:)();
    v66 = v116;
    sub_1001EB5B0(v133, v116);
    v68 = v126;
    v67 = v127;
    v69 = *(v126 + 48);
    if (v69(v66, 1, v127) == 1)
    {
      v70 = v117;
      static MetadataRibbonViewLayout.Metrics.standard.getter();
      if (v69(v66, 1, v67) != 1)
      {
        sub_10002B894(v66, &unk_1009912C0, &unk_1007B4130);
      }
    }

    else
    {
      v70 = v117;
      (*(v68 + 32))(v117, v66, v67);
    }

    v72 = v65;
    sub_1000AD91C(v61, v70, v72, 0.0, 0.0);

    (*(v68 + 8))(v70, v67);
    swift_allocObject();
    v71 = LayoutViewPlaceholder.init(measurements:)();
  }

  else
  {
    v62 = v99;
    swift_allocObject();
    v71 = LayoutViewPlaceholder.init(representing:)();
  }

  v73 = v71;
  v74 = v110;

  sub_1000AE138();
  swift_allocObject();
  v75 = LayoutViewPlaceholder.init(representing:)();
  v106(v121, v132, v135);
  v169 = &protocol witness table for LayoutViewPlaceholder;
  v168 = v62;
  v167 = v108;
  v166 = 0;
  *&v164[40] = 0u;
  v165 = 0u;
  sub_10002C0AC(v172, v164);
  sub_10002C0AC(v171, &v163);
  v162 = 0;
  v160 = 0u;
  v161 = 0u;
  v159 = 0;
  v157 = 0u;
  v158 = 0u;

  v76 = static LayoutViewPlaceholder.withIdentityMeasurement.getter();
  v156 = &protocol witness table for LayoutViewPlaceholder;
  v155 = v62;
  v154 = v76;
  v153 = 0;
  v151 = 0u;
  v152 = 0u;
  v150 = 0;
  v148 = 0u;
  v149 = 0u;
  v147 = 0;
  v145 = 0u;
  v146 = 0u;
  v144 = 0;
  v143 = 0u;
  *&v142[40] = 0u;
  sub_10002C0AC(v170, v142);
  v140 = v62;
  v141 = &protocol witness table for LayoutViewPlaceholder;
  v138 = &protocol witness table for LayoutViewPlaceholder;
  v139 = v73;
  v137 = v62;
  v136 = v75;
  SmallSearchLockupLayout.init(metrics:artworkView:headingText:titleText:subtitleText:tertiaryTitleText:offerText:offerButton:userRatingView:ratingCountLabel:editorsChoiceView:adButton:description:includesRatings:metadataRibbonView:searchTagsRibbonView:includesMetadataRibbon:includesSearchTagsRibbon:includesMetadataInformationInLockup:)();
  type metadata accessor for TraitEnvironmentPlaceholder();
  sub_10002849C(&qword_100973210, qword_1007B0BB0);
  v77 = swift_allocObject();
  *(v77 + 16) = xmmword_1007B0B70;
  v78 = v134;
  *(v77 + 32) = v134;
  v79 = v78;
  v80 = TraitEnvironmentPlaceholder.__allocating_init(_:)();
  sub_1001EBA90(&unk_100972E60, 255, &type metadata accessor for SmallSearchLockupLayout, &protocol conformance descriptor for SmallSearchLockupLayout);
  v81 = v111;
  dispatch thunk of Measurable.measurements(fitting:in:)();
  v83 = v82;

  (*(v122 + 8))(v74, v81);
  sub_100007000(v170);
  sub_100007000(v171);
  sub_100007000(v172);
  (*(v130 + 8))(v129, v131);
  (*(v128 + 8))(v132, v135);
  sub_10002B894(v133, &unk_1009912C0, &unk_1007B4130);
  swift_getKeyPath();
  ItemLayoutContext.subscript.getter();

  v84 = v172[0];
  if (UITraitCollection.prefersAccessibilityLayouts.getter())
  {
    v85 = sub_1005BD6DC();
  }

  else
  {
    v85 = sub_1005BE734();
  }

  v86 = v85;
  v88 = v114;
  v87 = v115;
  v89 = v113;

  v90 = v83 + v86;
  static CondensedSearchInAppEventContentLayout.Metrics.standard.getter();
  CondensedSearchInAppEventContentLayout.Metrics.lockupBottomSpacing.getter();
  (*(v88 + 8))(v89, v87);
  sub_10002A400(v172, v173);
  AnyDimension.value(with:)();
  v92 = v91;

  v40 = v90 + v92;
  sub_100007000(v172);
  return v40;
}

double sub_1001EA6E4()
{
  v0 = type metadata accessor for FloatingPointRoundingRule();
  v115 = *(v0 - 8);
  v116 = v0;
  __chkstk_darwin(v0);
  v114 = &v82 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = type metadata accessor for CondensedSearchInAppEventContentLayout.Metrics();
  v112 = *(v2 - 8);
  v113 = v2;
  __chkstk_darwin(v2);
  v111 = &v82 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for SmallSearchLockupLayout();
  v109 = *(v4 - 8);
  v110 = v4;
  __chkstk_darwin(v4);
  v108 = &v82 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for MetadataRibbonViewLayout.Metrics();
  v118 = *(v6 - 8);
  v119 = v6;
  __chkstk_darwin(v6);
  v84 = &v82 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for LabelPlaceholderCompatibility();
  v100 = *(v8 - 8);
  v101 = v8;
  __chkstk_darwin(v8);
  v99 = &v82 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for OfferButtonMetrics();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v82 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v82 - v15;
  v17 = type metadata accessor for SmallSearchLockupLayout.Metrics();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v102 = &v82 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v124 = &v82 - v21;
  v22 = sub_10002849C(&unk_1009912C0, &unk_1007B4130);
  __chkstk_darwin(v22 - 8);
  v83 = &v82 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v123 = &v82 - v25;
  swift_getKeyPath();
  ItemLayoutContext.subscript.getter();

  v121 = v161[0];
  v26 = AppEventSearchResult.lockup.getter();
  v27 = Lockup.title.getter();
  v90 = v28;
  v91 = v27;
  v29 = Lockup.subtitle.getter();
  v92 = v30;
  v93 = v29;
  if (Lockup.searchAdOpportunity.getter() && (v31 = SearchAdOpportunity.searchAd.getter(), , v31))
  {
    v32 = SearchAd.advertisingText.getter();
    v94 = v33;
    v95 = v32;
  }

  else
  {
    v94 = 0;
    v95 = 0;
  }

  v120 = MixedMediaLockup.metadataRibbonItems.getter();
  (*(v118 + 56))(v123, 1, 1, v119);
  MixedMediaLockup.shouldEvenlyDistributeRibbonItems.getter();
  v34 = [v121 traitCollection];
  if (qword_10096CF70 != -1)
  {
    swift_once();
  }

  v35 = sub_1000056A8(v17, qword_1009CDC00);
  v96 = *(v18 + 16);
  v97 = v18 + 16;
  v96(v124, v35, v17);
  v36 = UITraitCollection.prefersAccessibilityLayouts.getter();
  v122 = v17;
  v103 = v26;
  v104 = v18;
  if (v36)
  {
    if (qword_10096ECB8 != -1)
    {
      swift_once();
    }

    v37 = qword_100991010;
  }

  else
  {
    if (qword_10096ECC0 != -1)
    {
      swift_once();
    }

    v37 = qword_100991028;
  }

  v38 = sub_1000056A8(v10, v37);
  (*(v11 + 16))(v13, v38, v10);
  v106 = v11;
  v107 = v10;
  (*(v11 + 32))(v16, v13, v10);
  v39 = [v34 preferredContentSizeCategory];
  UIContentSizeCategory.isAccessibilityCategory.getter();
  v117 = v34;

  OfferButtonMetrics.minimumSize.getter();
  v105 = v16;
  OfferButtonMetrics.estimatedHeight.getter();
  SmallSearchLockupLayout.Metrics.offerButtonSize.setter();
  SmallSearchLockupLayout.Metrics.artworkSize.getter();
  v89 = type metadata accessor for LayoutViewPlaceholder();
  swift_allocObject();
  v98 = LayoutViewPlaceholder.init(representing:)();
  v40 = objc_opt_self();
  v87 = v40;
  v41 = [v40 preferredFontForTextStyle:UIFontTextStyleBody];
  v42 = type metadata accessor for Feature();
  v162 = v42;
  v43 = sub_1001EBA90(&qword_100972E50, 255, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
  v163 = v43;
  v86 = v43;
  v44 = sub_1000056E0(v161);
  v45 = enum case for Feature.measurement_with_labelplaceholder(_:);
  v88 = *(*(v42 - 8) + 104);
  v85 = enum case for Feature.measurement_with_labelplaceholder(_:);
  v88(v44, enum case for Feature.measurement_with_labelplaceholder(_:), v42);
  isFeatureEnabled(_:)();
  sub_100007000(v161);
  v46 = v99;
  LabelPlaceholderCompatibility.init(text:font:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:shouldUseLabelPlaceholder:)();
  LabelPlaceholderCompatibility.layoutTextView.getter();
  v47 = v101;
  v100 = *(v100 + 8);
  (v100)(v46, v101);
  v48 = [v40 preferredFontForTextStyle:UIFontTextStyleFootnote];
  v160[3] = v42;
  v160[4] = v43;
  v49 = sub_1000056E0(v160);
  v50 = v45;
  v51 = v88;
  v88(v49, v50, v42);
  isFeatureEnabled(_:)();
  sub_100007000(v160);
  LabelPlaceholderCompatibility.init(text:font:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:shouldUseLabelPlaceholder:)();
  LabelPlaceholderCompatibility.layoutTextView.getter();
  v52 = v100;
  (v100)(v46, v47);
  v53 = [v87 preferredFontForTextStyle:UIFontTextStyleFootnote];
  v159[3] = v42;
  v159[4] = v86;
  v54 = sub_1000056E0(v159);
  v51(v54, v85, v42);
  isFeatureEnabled(_:)();
  sub_100007000(v159);
  LabelPlaceholderCompatibility.init(text:font:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:shouldUseLabelPlaceholder:)();
  LabelPlaceholderCompatibility.layoutTextView.getter();
  v52(v46, v47);
  v55 = v120;
  if ((sub_1000AE138() & (v55 != 0)) == 1)
  {
    v56 = v89;
    LODWORD(v101) = 1;
    v57 = objc_allocWithZone(type metadata accessor for TraitEnvironmentPlaceholder());
    v58 = v117;
    v59 = TraitEnvironmentPlaceholder.init(traitCollection:)();
    v60 = v83;
    sub_1001EB5B0(v123, v83);
    v62 = v118;
    v61 = v119;
    v63 = *(v118 + 48);
    if (v63(v60, 1, v119) == 1)
    {
      v64 = v84;
      static MetadataRibbonViewLayout.Metrics.standard.getter();
      if (v63(v60, 1, v61) != 1)
      {
        sub_10002B894(v60, &unk_1009912C0, &unk_1007B4130);
      }
    }

    else
    {
      v64 = v84;
      (*(v62 + 32))(v84, v60, v61);
    }

    v66 = v59;
    sub_1000AD91C(v55, v64, v66, 0.0, 0.0);

    (*(v62 + 8))(v64, v61);
    swift_allocObject();
    v65 = LayoutViewPlaceholder.init(measurements:)();
  }

  else
  {
    v56 = v89;
    swift_allocObject();
    v65 = LayoutViewPlaceholder.init(representing:)();
  }

  sub_1000AE138();
  swift_allocObject();
  v67 = LayoutViewPlaceholder.init(representing:)();
  v96(v102, v124, v122);
  v158 = &protocol witness table for LayoutViewPlaceholder;
  v157 = v56;
  v156 = v98;
  v155 = 0;
  *&v153[40] = 0u;
  v154 = 0u;
  sub_10002C0AC(v161, v153);
  sub_10002C0AC(v160, &v152);
  v151 = 0;
  v149 = 0u;
  v150 = 0u;
  v148 = 0;
  v146 = 0u;
  v147 = 0u;

  v68 = static LayoutViewPlaceholder.withIdentityMeasurement.getter();
  v145 = &protocol witness table for LayoutViewPlaceholder;
  v144 = v56;
  v143 = v68;
  v142 = 0;
  v140 = 0u;
  v141 = 0u;
  v139 = 0;
  v137 = 0u;
  v138 = 0u;
  v136 = 0;
  v134 = 0u;
  v135 = 0u;
  v133 = 0;
  v132 = 0u;
  *&v131[40] = 0u;
  sub_10002C0AC(v159, v131);
  v129 = v56;
  v130 = &protocol witness table for LayoutViewPlaceholder;
  v127 = &protocol witness table for LayoutViewPlaceholder;
  v128 = v65;
  v126 = v56;
  v125 = v67;
  v69 = v108;
  SmallSearchLockupLayout.init(metrics:artworkView:headingText:titleText:subtitleText:tertiaryTitleText:offerText:offerButton:userRatingView:ratingCountLabel:editorsChoiceView:adButton:description:includesRatings:metadataRibbonView:searchTagsRibbonView:includesMetadataRibbon:includesSearchTagsRibbon:includesMetadataInformationInLockup:)();
  type metadata accessor for TraitEnvironmentPlaceholder();
  sub_10002849C(&qword_100973210, qword_1007B0BB0);
  v70 = swift_allocObject();
  *(v70 + 16) = xmmword_1007B0B70;
  v71 = v117;
  *(v70 + 32) = v117;
  v72 = v71;
  v73 = TraitEnvironmentPlaceholder.__allocating_init(_:)();
  sub_1001EBA90(&unk_100972E60, 255, &type metadata accessor for SmallSearchLockupLayout, &protocol conformance descriptor for SmallSearchLockupLayout);
  v74 = v110;
  dispatch thunk of Measurable.measurements(fitting:in:)();
  v76 = v75;

  (*(v109 + 8))(v69, v74);
  sub_100007000(v159);
  sub_100007000(v160);
  sub_100007000(v161);
  (*(v106 + 8))(v105, v107);
  (*(v104 + 8))(v124, v122);
  sub_10002B894(v123, &unk_1009912C0, &unk_1007B4130);
  v77 = v111;
  static CondensedSearchInAppEventContentLayout.Metrics.standard.getter();
  CondensedSearchInAppEventContentLayout.Metrics.lockupBottomSpacing.getter();
  (*(v112 + 8))(v77, v113);
  sub_10002A400(v161, v162);
  v78 = v114;
  j___s5JetUI10DimensionsV19defaultRoundingRules013FloatingPointeF0OvgZ();
  AnyDimension.value(in:rounded:)();
  v80 = v79;

  swift_unknownObjectRelease();
  (*(v115 + 8))(v78, v116);
  sub_100007000(v161);
  return v76 + v80;
}

uint64_t sub_1001EB5B0(uint64_t a1, uint64_t a2)
{
  v4 = sub_10002849C(&unk_1009912C0, &unk_1007B4130);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1001EB620(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = type metadata accessor for Artwork.Style();
  __chkstk_darwin(v5 - 8);
  sub_10002C0AC(a1, v18);
  sub_10002849C(&unk_1009793D0, qword_1007B4FF0);
  type metadata accessor for AppEventSearchResult();
  if (swift_dynamicCast())
  {
    AppEventSearchResult.appEvent.getter();
    v6 = *(v3 + OBJC_IVAR____TtC8AppStore28CondensedAppEventContentView_lockupView);
    v7 = OBJC_IVAR____TtC8AppStore14BaseLockupView_artworkView;
    v8 = *(v6 + OBJC_IVAR____TtC8AppStore14BaseLockupView_artworkView);
    v19.value.super.isa = 0;
    v19.is_nil = 0;
    ArtworkView.setImage(image:animated:)(v19, v9);

    v10 = *(v6 + v7);
    type metadata accessor for ArtworkView();
    sub_1001EBA90(&qword_100970E80, 255, &type metadata accessor for ArtworkView, &protocol conformance descriptor for ArtworkView);
    v11 = v10;
    ArtworkLoader.forgetFetch<A>(forView:deprioritizingFetch:)();

    v20.value.super.isa = 0;
    v20.is_nil = 0;
    ArtworkView.setImage(image:animated:)(v20, v12);
    ArtworkLoader.forgetFetch<A>(forView:deprioritizingFetch:)();
    AppEventSearchResult.lockup.getter();
    v13 = Lockup.icon.getter();

    if (v13)
    {
      v14 = qword_10096EE80;
      v15 = *(v6 + v7);
      if (v14 != -1)
      {
        swift_once();
      }

      v16 = type metadata accessor for SmallLockupLayout.Metrics();
      sub_1000056A8(v16, qword_1009D3798);
      SmallLockupLayout.Metrics.artworkSize.getter();
      [v15 contentMode];
      Artwork.config(_:mode:prefersLayeredImage:)();
      Artwork.style.getter();
      ArtworkView.style.setter();
      [v15 setContentMode:Artwork.contentMode.getter()];
      ArtworkLoaderConfig.size.getter();
      ArtworkView.imageSize.setter();
      if (!Artwork.backgroundColor.getter())
      {
        sub_100005744(0, &qword_100970180, UIColor_ptr);
        static UIColor.placeholderBackground.getter();
      }

      ArtworkView.backgroundColor.setter();
      v17 = *(v6 + v7);
      ArtworkLoader.fetchArtwork<A>(using:closestMatch:into:)();
    }

    sub_10039C010();
  }
}

uint64_t sub_1001EB97C()
{
  v1 = *(v0 + OBJC_IVAR____TtC8AppStore28CondensedAppEventContentView_lockupView);
  v2 = OBJC_IVAR____TtC8AppStore14BaseLockupView_artworkView;
  v3 = *(v1 + OBJC_IVAR____TtC8AppStore14BaseLockupView_artworkView);
  v9.value.super.isa = 0;
  v9.is_nil = 0;
  ArtworkView.setImage(image:animated:)(v9, v4);

  v5 = *(v1 + v2);
  type metadata accessor for ArtworkView();
  sub_1001EBA90(&qword_100970E80, 255, &type metadata accessor for ArtworkView, &protocol conformance descriptor for ArtworkView);
  v6 = v5;
  ArtworkLoader.forgetFetch<A>(forView:deprioritizingFetch:)();

  v10.value.super.isa = 0;
  v10.is_nil = 0;
  ArtworkView.setImage(image:animated:)(v10, v7);
  return ArtworkLoader.forgetFetch<A>(forView:deprioritizingFetch:)();
}

uint64_t sub_1001EBA90(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

double sub_1001EBAD8()
{
  type metadata accessor for AppEventSearchResult();
  sub_1001EBA90(&qword_100973DC0, 255, &type metadata accessor for AppEventSearchResult, &protocol conformance descriptor for SearchResult);
  ItemLayoutContext.typedModel<A>(as:)();
  if (using._rawValue)
  {
    AppEventSearchResult.lockup.getter();
    v1 = Lockup.icon.getter();

    if (v1)
    {
      if (qword_10096EE80 != -1)
      {
        swift_once();
      }

      v2 = type metadata accessor for SmallLockupLayout.Metrics();
      sub_1000056A8(v2, qword_1009D3798);
      SmallLockupLayout.Metrics.artworkSize.getter();
      Artwork.config(_:mode:prefersLayeredImage:)();
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    }

    AppEventSearchResult.appEvent.getter();
    sub_100079F24();
    v3 = sub_10039C30C();

    swift_unknownObjectRelease();
    sub_100394974(v3, v4);
    ArtworkLoader.prefetchArtwork(using:)(_swiftEmptyArrayStorage);
  }

  return result;
}

uint64_t MetadataRibbonTagViewLayout.Metrics.standard.unsafeMutableAddressor()
{
  if (qword_10096D390 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for MetadataRibbonTagViewLayout.Metrics();

  return sub_1000056A8(v0, static MetadataRibbonTagViewLayout.Metrics.standard);
}

char *sub_1001EBD2C(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v11 = type metadata accessor for MetadataRibbonTagViewLayout.Metrics();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v41[-1] - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = OBJC_IVAR____TtC8AppStore21MetadataRibbonTagView_metrics;
  if (qword_10096D390 != -1)
  {
    swift_once();
  }

  v16 = sub_1000056A8(v11, static MetadataRibbonTagViewLayout.Metrics.standard);
  v17 = *(v12 + 16);
  v17(&v5[v15], v16, v11);
  v18 = &v5[OBJC_IVAR____TtC8AppStore21MetadataRibbonTagView_id];
  *v18 = 0u;
  *(v18 + 1) = 0u;
  *(v18 + 4) = 0;
  v19 = OBJC_IVAR____TtC8AppStore21MetadataRibbonTagView_itemType;
  v20 = type metadata accessor for MetadataRibbonItemType();
  (*(*(v20 - 8) + 56))(&v5[v19], 1, 1, v20);
  v21 = &v5[OBJC_IVAR____TtC8AppStore21MetadataRibbonTagView_labelMaxWidth];
  *v21 = 0;
  v21[8] = 1;
  v22 = &v5[OBJC_IVAR____TtC8AppStore21MetadataRibbonTagView_truncationLegibilityThreshold];
  *v22 = 0;
  v22[8] = 1;
  v5[OBJC_IVAR____TtC8AppStore21MetadataRibbonTagView_allowsTruncation] = 2;
  type metadata accessor for DynamicTypeLabel();
  *&v5[OBJC_IVAR____TtC8AppStore21MetadataRibbonTagView_tagLabel] = DynamicTypeLabel.__allocating_init(frame:)();
  v42.receiver = v5;
  v42.super_class = ObjectType;
  v23 = objc_msgSendSuper2(&v42, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v27 = v23;
  [v27 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  v28 = OBJC_IVAR____TtC8AppStore21MetadataRibbonTagView_tagLabel;
  v29 = *&v27[OBJC_IVAR____TtC8AppStore21MetadataRibbonTagView_tagLabel];
  sub_100028BB8();
  v30 = v29;
  v31 = static UIColor.secondaryText.getter();
  [v30 setTextColor:v31];

  v32 = *&v27[v28];
  v17(v14, &v27[OBJC_IVAR____TtC8AppStore21MetadataRibbonTagView_metrics], v11);
  v33 = v32;
  v34 = MetadataRibbonTagViewLayout.Metrics.maximumNumberofLinesForDescriptionLabel.getter();
  (*(v12 + 8))(v14, v11);
  [v33 setNumberOfLines:v34];

  v35 = *&v27[v28];
  static CustomTextStyle<>.metadataRibbon.getter();
  if (qword_10096EE50 != -1)
  {
    swift_once();
  }

  v36 = type metadata accessor for MetadataRibbonTextStyle();
  v37 = sub_1000056A8(v36, qword_1009D36F8);
  v41[3] = v36;
  v41[4] = sub_100032098();
  v38 = sub_1000056E0(v41);
  (*(*(v36 - 8) + 16))(v38, v37, v36);
  dispatch thunk of DynamicTypeLabel.customTextStyle.setter();

  [v27 addSubview:*&v27[v28]];
  return v27;
}

uint64_t sub_1001EC15C()
{
  ObjectType = swift_getObjectType();
  v18 = type metadata accessor for LayoutRect();
  v2 = *(v18 - 8);
  __chkstk_darwin(v18);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for MetadataRibbonTagViewLayout.Metrics();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for MetadataRibbonTagViewLayout();
  v9 = *(v17 - 8);
  *&v10 = __chkstk_darwin(v17).n128_u64[0];
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22.receiver = v0;
  v22.super_class = ObjectType;
  objc_msgSendSuper2(&v22, "layoutSubviews", v10);
  v13 = *&v0[OBJC_IVAR____TtC8AppStore21MetadataRibbonTagView_tagLabel];
  v20 = type metadata accessor for DynamicTypeLabel();
  v21 = &protocol witness table for UILabel;
  v19 = v13;
  (*(v6 + 16))(v8, &v0[OBJC_IVAR____TtC8AppStore21MetadataRibbonTagView_metrics], v5);
  v14 = v13;
  MetadataRibbonTagViewLayout.init(descriptionLabelTextView:metrics:)();
  LayoutMarginsAware<>.layoutFrame.getter();
  MetadataRibbonTagViewLayout.placeChildren(relativeTo:in:)();
  (*(v2 + 8))(v4, v18);
  return (*(v9 + 8))(v12, v17);
}

double sub_1001EC6F0(uint64_t a1)
{
  MetadataRibbonItem.labelText.getter();
  v2 = *&v1[OBJC_IVAR____TtC8AppStore21MetadataRibbonTagView_tagLabel];
  if (v3)
  {
    v4 = String._bridgeToObjectiveC()();
  }

  else
  {
    v4 = 0;
  }

  [v2 setText:v4];

  [v1 setNeedsLayout];

  return result;
}

uint64_t sub_1001EC784@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC8AppStore21MetadataRibbonTagView_itemType;
  swift_beginAccess();
  return sub_100031660(v1 + v3, a1, &qword_10096FB98, &unk_1007B10B0);
}

uint64_t sub_1001EC7EC(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8AppStore21MetadataRibbonTagView_itemType;
  swift_beginAccess();
  sub_1000315F8(a1, v1 + v3, &qword_10096FB98, &unk_1007B10B0);
  return swift_endAccess();
}

void sub_1001EC8C8(uint64_t a1, char a2)
{
  v5 = v2 + OBJC_IVAR____TtC8AppStore21MetadataRibbonTagView_labelMaxWidth;
  swift_beginAccess();
  *v5 = a1;
  *(v5 + 8) = a2 & 1;
}

void sub_1001EC994(uint64_t a1, char a2)
{
  v5 = v2 + OBJC_IVAR____TtC8AppStore21MetadataRibbonTagView_truncationLegibilityThreshold;
  swift_beginAccess();
  *v5 = a1;
  *(v5 + 8) = a2 & 1;
}

uint64_t sub_1001ECA54()
{
  v1 = OBJC_IVAR____TtC8AppStore21MetadataRibbonTagView_allowsTruncation;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_1001ECA98(char a1)
{
  v3 = OBJC_IVAR____TtC8AppStore21MetadataRibbonTagView_allowsTruncation;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_1001ECB48@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC8AppStore21MetadataRibbonTagView_id;
  swift_beginAccess();
  return sub_100031660(v1 + v3, a1, &qword_10096FB90, &qword_1007B2A50);
}

uint64_t sub_1001ECBB0(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8AppStore21MetadataRibbonTagView_id;
  swift_beginAccess();
  sub_1000315F8(a1, v1 + v3, &qword_10096FB90, &qword_1007B2A50);
  return swift_endAccess();
}

uint64_t sub_1001ECC80()
{
  v0 = sub_10002849C(&unk_10096FC10, &unk_1007B10C0);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v6 - v2;
  v4 = type metadata accessor for MetadataRibbonTagViewLayout.Metrics();
  sub_100005644(v4, static MetadataRibbonTagViewLayout.Metrics.standard);
  sub_1000056A8(v4, static MetadataRibbonTagViewLayout.Metrics.standard);
  sub_10002849C(&qword_100973F50, &qword_1007B4260);
  Conditional.init(_:)();
  MetadataRibbonTagViewLayout.Metrics.init(maximumNumberofLinesForDescriptionLabel:)();
  return (*(v1 + 8))(v3, v0);
}

uint64_t static MetadataRibbonTagViewLayout.Metrics.standard.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_10096D390 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for MetadataRibbonTagViewLayout.Metrics();
  v3 = sub_1000056A8(v2, static MetadataRibbonTagViewLayout.Metrics.standard);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t type metadata accessor for MetadataRibbonTagView(uint64_t a1)
{
  result = qword_100979418;
  if (!qword_100979418)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1001ECEBC(uint64_t a1)
{
  type metadata accessor for MetadataRibbonTagViewLayout.Metrics();
  if (v1 <= 0x3F)
  {
    sub_1000315A0(319);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

double sub_1001ECFB0(uint64_t a1, uint64_t a2, double a3, double a4)
{
  v39 = a2;
  v33 = a1;
  v4 = type metadata accessor for MetadataRibbonTagViewLayout.Metrics();
  v36 = *(v4 - 8);
  __chkstk_darwin(v4);
  v35 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for MetadataRibbonTagViewLayout();
  v37 = *(v6 - 8);
  v38 = v6;
  __chkstk_darwin(v6);
  v34 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = type metadata accessor for LabelPlaceholder();
  v31 = *(v32 - 8);
  __chkstk_darwin(v32);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DynamicTextAppearance();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v29 - v15;
  __chkstk_darwin(v17);
  v19 = &v29 - v18;
  if (qword_10096D390 != -1)
  {
    swift_once();
  }

  v20 = sub_1000056A8(v4, static MetadataRibbonTagViewLayout.Metrics.standard);
  DynamicTextAppearance.init()();
  static CustomTextStyle<>.metadataRibbon.getter();
  v30 = v4;
  if (qword_10096EE50 != -1)
  {
    swift_once();
  }

  v21 = type metadata accessor for MetadataRibbonTextStyle();
  v22 = sub_1000056A8(v21, qword_1009D36F8);
  v41[3] = v21;
  v41[4] = sub_100032098();
  v23 = sub_1000056E0(v41);
  (*(*(v21 - 8) + 16))(v23, v22, v21);
  DynamicTextAppearance.withCustomTextStyle(_:)();
  v24 = *(v11 + 8);
  v24(v13, v10);
  sub_100007000(v41);
  MetadataRibbonTagViewLayout.Metrics.maximumNumberofLinesForDescriptionLabel.getter();
  DynamicTextAppearance.withNumberOfLines(_:)();
  v24(v16, v10);
  MetadataRibbonItem.labelText.getter();
  (*(v11 + 16))(v16, v19, v10);
  LabelPlaceholder.Options.init(rawValue:)();
  LabelPlaceholder.init(_:with:where:)();
  LabelPlaceholder.layoutTextView.getter();
  (*(v31 + 8))(v9, v32);
  sub_10002C0AC(v41, v40);
  (*(v36 + 16))(v35, v20, v30);
  v25 = v34;
  MetadataRibbonTagViewLayout.init(descriptionLabelTextView:metrics:)();
  MetadataRibbonTagViewLayout.measurements(fitting:in:)();
  v27 = v26;
  (*(v37 + 8))(v25, v38);
  sub_100007000(v41);
  v24(v19, v10);
  return v27;
}

void sub_1001ED4A4()
{
  v1 = OBJC_IVAR____TtC8AppStore21MetadataRibbonTagView_metrics;
  if (qword_10096D390 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for MetadataRibbonTagViewLayout.Metrics();
  v3 = sub_1000056A8(v2, static MetadataRibbonTagViewLayout.Metrics.standard);
  (*(*(v2 - 8) + 16))(v0 + v1, v3, v2);
  v4 = v0 + OBJC_IVAR____TtC8AppStore21MetadataRibbonTagView_id;
  *v4 = 0u;
  *(v4 + 16) = 0u;
  *(v4 + 32) = 0;
  v5 = OBJC_IVAR____TtC8AppStore21MetadataRibbonTagView_itemType;
  v6 = type metadata accessor for MetadataRibbonItemType();
  (*(*(v6 - 8) + 56))(v0 + v5, 1, 1, v6);
  v7 = v0 + OBJC_IVAR____TtC8AppStore21MetadataRibbonTagView_labelMaxWidth;
  *v7 = 0;
  *(v7 + 8) = 1;
  v8 = v0 + OBJC_IVAR____TtC8AppStore21MetadataRibbonTagView_truncationLegibilityThreshold;
  *v8 = 0;
  *(v8 + 8) = 1;
  *(v0 + OBJC_IVAR____TtC8AppStore21MetadataRibbonTagView_allowsTruncation) = 2;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void InAppMessagesMetricsEventRecorder.record(_:on:)(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v4 = v3[2];
  if (v4)
  {
    v5 = v3[3];
    v6 = objc_allocWithZone(AMSMetricsEvent);
    sub_10000827C(v4, v5);

    v7 = String._bridgeToObjectiveC()();

    v8 = [v6 initWithTopic:v7];

    v9 = v3[4];
    if (v9)
    {
      v10 = v3[5];

      v11 = v9(v8);
      sub_10001F63C(v9, v10);
    }

    else
    {
      v11 = v8;
    }

    LintedMetricsEvent.fields.getter();
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    [v11 addPropertiesWithDictionary:isa];

    v14 = [v11 underlyingDictionary];
    v15 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    sub_1001ED990(v15);
    v17 = v16;

    if (v17)
    {
      v18 = objc_allocWithZone(IAMFigaroEvent);
      v19 = Dictionary._bridgeToObjectiveC()().super.isa;

      v20 = [v18 initWithFigaroEventProperties:v19];

      v4(v20);
    }

    else
    {
    }

    sub_10001F63C(v4, v5);
  }

  else
  {
    if (qword_10096D020 != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for OSLogger();
    sub_1000056A8(v12, qword_1009CDEE8);
    sub_10002849C(&unk_100972A10, &qword_1007B1EF0);
    type metadata accessor for LogMessage();
    *(swift_allocObject() + 16) = xmmword_1007B10D0;
    LogMessage.init(stringLiteral:)();
    Logger.error(_:)();
  }
}

void sub_1001ED990(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_10002849C(&qword_100970CB0, &qword_1007CA220);
    v2 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v2 = _swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

  do
  {
LABEL_10:
    v10 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      __break(1u);
      return;
    }

    if (v10 >= v6)
    {

      return;
    }

    v5 = *(a1 + 64 + 8 * v10);
    ++v7;
  }

  while (!v5);
  while (1)
  {
    v11 = __clz(__rbit64(v5)) | (v10 << 6);
    sub_10003D4AC(*(a1 + 48) + 40 * v11, v27);
    sub_1000073E8(*(a1 + 56) + 32 * v11, v28 + 8);
    v25[0] = v28[0];
    v25[1] = v28[1];
    v26 = v29;
    v24[0] = v27[0];
    v24[1] = v27[1];
    sub_10003D4AC(v24, v19);
    if (!swift_dynamicCast())
    {
      break;
    }

    v5 &= v5 - 1;
    sub_1000073E8(v25 + 8, v20);
    sub_1001EDD94(v24);
    v21 = v18;
    sub_100056164(v20, v22);
    v12 = v21;
    sub_100056164(v22, v23);
    sub_100056164(v23, &v21);
    v13 = sub_1000072B8(v12, *(&v12 + 1));
    if (v14)
    {
      *(v2[6] + 16 * v13) = v12;
      v8 = v13;

      v9 = (v2[7] + 32 * v8);
      sub_100007000(v9);
      sub_100056164(&v21, v9);
      v7 = v10;
      if (!v5)
      {
        goto LABEL_10;
      }
    }

    else
    {
      if (v2[2] >= v2[3])
      {
        goto LABEL_22;
      }

      *(v2 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v13;
      *(v2[6] + 16 * v13) = v12;
      sub_100056164(&v21, (v2[7] + 32 * v13));
      v15 = v2[2];
      v16 = __OFADD__(v15, 1);
      v17 = v15 + 1;
      if (v16)
      {
        goto LABEL_23;
      }

      v2[2] = v17;
      v7 = v10;
      if (!v5)
      {
        goto LABEL_10;
      }
    }

LABEL_9:
    v10 = v7;
  }

  sub_1001EDD94(v24);
}

double InAppMessagesMetricsEventRecorder.withDecorator(_:)(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 32);
  v4 = *(v2 + 40);
  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  sub_10001F63C(v5, v4);

  return result;
}

uint64_t *InAppMessagesMetricsEventRecorder.deinit()
{
  sub_10001F63C(v0[2], v0[3]);
  sub_10001F63C(v0[4], v0[5]);
  return v0;
}

uint64_t InAppMessagesMetricsEventRecorder.__deallocating_deinit()
{
  sub_10001F63C(v0[2], v0[3]);
  sub_10001F63C(v0[4], v0[5]);

  return swift_deallocClassInstance();
}

uint64_t sub_1001EDD94(uint64_t a1)
{
  v2 = sub_10002849C(&qword_1009794D8, "L3\b");
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1001EDDFC()
{
  v0 = type metadata accessor for TitleHeaderView.Style(0);
  __chkstk_darwin(v0);
  v2 = &v28 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = type metadata accessor for TitleHeaderLayout.ChildrenHorizontalAlignment();
  v3 = *(v35 - 8);
  __chkstk_darwin(v35);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10002849C(&qword_1009794E0, &unk_1007C4840);
  __chkstk_darwin(v6 - 8);
  v8 = &v28 - v7;
  v9 = sub_10002849C(&qword_1009794E8, &unk_1007C18C0);
  __chkstk_darwin(v9 - 8);
  v11 = &v28 - v10;
  v12 = type metadata accessor for TitleHeaderView.TextConfiguration(0);
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v34 = &v28 - v17;
  sub_100005644(v0, qword_1009CE818);
  v32 = sub_1000056A8(v0, qword_1009CE818);
  if (qword_10096E750 != -1)
  {
    swift_once();
  }

  v18 = sub_1000056A8(v12, qword_1009D2658);
  sub_1001EFDF0(v18, v34);
  if (qword_10096E760 != -1)
  {
    swift_once();
  }

  v19 = sub_1000056A8(v12, qword_1009D2688);
  sub_1001EFDF0(v19, v15);
  (*(v13 + 56))(v11, 1, 1, v12);
  v20 = enum case for TitleHeaderLayout.AccessoryVerticalAlignment.lastLineCenter(_:);
  v21 = type metadata accessor for TitleHeaderLayout.AccessoryVerticalAlignment();
  v22 = *(v21 - 8);
  v30 = v15;
  v31 = v11;
  v23 = v22;
  v29 = *(v22 + 104);
  v29(v8, v20, v21);
  (*(v23 + 56))(v8, 0, 1, v21);
  (*(v3 + 104))(v5, enum case for TitleHeaderLayout.ChildrenHorizontalAlignment.leading(_:), v35);
  sub_100028BB8();
  v24 = static UIColor.defaultLine.getter();
  v33 = v8;
  v25 = v0[8];
  sub_1001EFEC4(v34, v2, type metadata accessor for TitleHeaderView.TextConfiguration);
  sub_1001EFEC4(v30, &v2[v0[5]], type metadata accessor for TitleHeaderView.TextConfiguration);
  sub_1001EFE54(v31, &v2[v0[6]]);
  v2[v0[7]] = 0;
  v2[v25] = 0;
  v2[v0[9]] = 0;
  *&v2[v0[14]] = 0x4030000000000000;
  *&v2[v0[12]] = 0;
  *&v2[v0[13]] = v24;
  v26 = v33;
  (*(v3 + 32))(&v2[v0[11]], v5, v35);
  if ((*(v23 + 48))(v26, 1, v21) == 1)
  {
    sub_10002B894(v26, &qword_1009794E0, &unk_1007C4840);
    v29(&v2[v0[10]], enum case for TitleHeaderLayout.AccessoryVerticalAlignment.lastBaseline(_:), v21);
  }

  else
  {
    (*(v23 + 32))(&v2[v0[10]], v26, v21);
  }

  return sub_1001EFEC4(v2, v32, type metadata accessor for TitleHeaderView.Style);
}

uint64_t sub_1001EE328@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v49 = a2;
  v48 = type metadata accessor for TitleHeaderLayout.ChildrenHorizontalAlignment();
  v3 = *(v48 - 8);
  __chkstk_darwin(v48);
  v47 = &v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10002849C(&qword_1009794E0, &unk_1007C4840);
  __chkstk_darwin(v5 - 8);
  v7 = &v44 - v6;
  v8 = sub_10002849C(&qword_1009794E8, &unk_1007C18C0);
  __chkstk_darwin(v8 - 8);
  v10 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v44 - v12;
  v14 = type metadata accessor for TitleHeaderView.TextConfiguration(0);
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v44 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = &v44 - v19;
  __chkstk_darwin(v21);
  v23 = &v44 - v22;
  Main = JUScreenClassGetMain();
  if (a1)
  {
    if (Main == 1)
    {
      if (qword_10096E7E8 != -1)
      {
        swift_once();
      }

      v25 = qword_1009D2820;
    }

    else
    {
      if (qword_10096E7E0 != -1)
      {
        swift_once();
      }

      v25 = qword_1009D2808;
    }

    v27 = sub_1000056A8(v14, v25);
    sub_1001EFDF0(v27, v23);
    if (qword_10096E7F0 != -1)
    {
      swift_once();
    }

    v28 = sub_1000056A8(v14, qword_1009D2838);
    sub_1001EFDF0(v28, v13);
    v29 = 0;
  }

  else
  {
    if (Main == 1)
    {
      if (qword_10096E7D8 != -1)
      {
        swift_once();
      }

      v26 = qword_1009D27F0;
    }

    else
    {
      if (qword_10096E7D0 != -1)
      {
        swift_once();
      }

      v26 = qword_1009D27D8;
    }

    v30 = sub_1000056A8(v14, v26);
    sub_1001EFDF0(v30, v23);
    v29 = 1;
  }

  (*(v15 + 56))(v13, v29, 1, v14);
  if (qword_10096E750 != -1)
  {
    swift_once();
  }

  v31 = sub_1000056A8(v14, qword_1009D2658);
  v32 = v20;
  sub_1001EFDF0(v31, v20);
  sub_1001EFDF0(v23, v17);
  sub_1001EFF2C(v13, v10);
  v33 = type metadata accessor for TitleHeaderLayout.AccessoryVerticalAlignment();
  v34 = *(v33 - 8);
  v45 = v10;
  v46 = v7;
  v35 = v34;
  (*(v34 + 56))(v7, 1, 1, v33);
  v36 = v47;
  v37 = v48;
  (*(v3 + 104))(v47, enum case for TitleHeaderLayout.ChildrenHorizontalAlignment.leading(_:), v48);
  sub_100028BB8();
  v44 = static UIColor.defaultLine.getter();
  sub_10002B894(v13, &qword_1009794E8, &unk_1007C18C0);
  sub_1001EFF9C(v23);
  v38 = type metadata accessor for TitleHeaderView.Style(0);
  v39 = v38[8];
  v40 = v32;
  v41 = v49;
  sub_1001EFEC4(v40, v49, type metadata accessor for TitleHeaderView.TextConfiguration);
  sub_1001EFEC4(v17, v41 + v38[5], type metadata accessor for TitleHeaderView.TextConfiguration);
  sub_1001EFE54(v45, v41 + v38[6]);
  *(v41 + v38[7]) = 0;
  *(v41 + v39) = 0;
  *(v41 + v38[9]) = 1;
  *(v41 + v38[14]) = 0x4030000000000000;
  *(v41 + v38[12]) = 0;
  *(v41 + v38[13]) = v44;
  v42 = v46;
  (*(v3 + 32))(v41 + v38[11], v36, v37);
  if ((*(v35 + 48))(v42, 1, v33) != 1)
  {
    return (*(v35 + 32))(v41 + v38[10], v42, v33);
  }

  sub_10002B894(v42, &qword_1009794E0, &unk_1007C4840);
  return (*(v35 + 104))(v41 + v38[10], enum case for TitleHeaderLayout.AccessoryVerticalAlignment.firstBaseline(_:), v33);
}

uint64_t sub_1001EE98C()
{
  v0 = type metadata accessor for TitleHeaderView.Style(0);
  __chkstk_darwin(v0);
  v2 = &v27 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = type metadata accessor for TitleHeaderLayout.ChildrenHorizontalAlignment();
  v3 = *(v32 - 8);
  __chkstk_darwin(v32);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10002849C(&qword_1009794E0, &unk_1007C4840);
  __chkstk_darwin(v6 - 8);
  v8 = &v27 - v7;
  v9 = sub_10002849C(&qword_1009794E8, &unk_1007C18C0);
  __chkstk_darwin(v9 - 8);
  v11 = &v27 - v10;
  v12 = type metadata accessor for TitleHeaderView.TextConfiguration(0);
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v31 = &v27 - v17;
  sub_100005644(v0, qword_1009CE848);
  v29 = sub_1000056A8(v0, qword_1009CE848);
  if (qword_10096E750 != -1)
  {
    swift_once();
  }

  v18 = sub_1000056A8(v12, qword_1009D2658);
  sub_1001EFDF0(v18, v31);
  if (qword_10096E7F8 != -1)
  {
    swift_once();
  }

  v19 = sub_1000056A8(v12, qword_1009D2850);
  sub_1001EFDF0(v19, v15);
  (*(v13 + 56))(v11, 1, 1, v12);
  v20 = type metadata accessor for TitleHeaderLayout.AccessoryVerticalAlignment();
  v21 = *(v20 - 8);
  v28 = v11;
  v22 = v21;
  (*(v21 + 56))(v8, 1, 1, v20);
  (*(v3 + 104))(v5, enum case for TitleHeaderLayout.ChildrenHorizontalAlignment.leading(_:), v32);
  sub_100028BB8();
  v23 = static UIColor.defaultLine.getter();
  v30 = v8;
  v24 = v0[8];
  sub_1001EFEC4(v31, v2, type metadata accessor for TitleHeaderView.TextConfiguration);
  sub_1001EFEC4(v15, &v2[v0[5]], type metadata accessor for TitleHeaderView.TextConfiguration);
  sub_1001EFE54(v28, &v2[v0[6]]);
  v2[v0[7]] = 1;
  v2[v24] = 0;
  v2[v0[9]] = 0;
  *&v2[v0[14]] = 0x4030000000000000;
  *&v2[v0[12]] = 0;
  *&v2[v0[13]] = v23;
  v25 = v30;
  (*(v3 + 32))(&v2[v0[11]], v5, v32);
  if ((*(v22 + 48))(v25, 1, v20) == 1)
  {
    sub_10002B894(v25, &qword_1009794E0, &unk_1007C4840);
    (*(v22 + 104))(&v2[v0[10]], enum case for TitleHeaderLayout.AccessoryVerticalAlignment.lastBaseline(_:), v20);
  }

  else
  {
    (*(v22 + 32))(&v2[v0[10]], v25, v20);
  }

  return sub_1001EFEC4(v2, v29, type metadata accessor for TitleHeaderView.Style);
}

uint64_t sub_1001EEE8C()
{
  v0 = type metadata accessor for TitleHeaderView.Style(0);
  __chkstk_darwin(v0);
  v2 = &v27 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = type metadata accessor for TitleHeaderLayout.ChildrenHorizontalAlignment();
  v3 = *(v32 - 8);
  __chkstk_darwin(v32);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10002849C(&qword_1009794E0, &unk_1007C4840);
  __chkstk_darwin(v6 - 8);
  v8 = &v27 - v7;
  v9 = sub_10002849C(&qword_1009794E8, &unk_1007C18C0);
  __chkstk_darwin(v9 - 8);
  v11 = &v27 - v10;
  v12 = type metadata accessor for TitleHeaderView.TextConfiguration(0);
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v31 = &v27 - v17;
  sub_100005644(v0, qword_1009CE860);
  v29 = sub_1000056A8(v0, qword_1009CE860);
  if (qword_10096E750 != -1)
  {
    swift_once();
  }

  v18 = sub_1000056A8(v12, qword_1009D2658);
  sub_1001EFDF0(v18, v31);
  if (qword_10096E800 != -1)
  {
    swift_once();
  }

  v19 = sub_1000056A8(v12, qword_1009D2868);
  sub_1001EFDF0(v19, v15);
  (*(v13 + 56))(v11, 1, 1, v12);
  v20 = type metadata accessor for TitleHeaderLayout.AccessoryVerticalAlignment();
  v21 = *(v20 - 8);
  v28 = v11;
  v22 = v21;
  (*(v21 + 56))(v8, 1, 1, v20);
  (*(v3 + 104))(v5, enum case for TitleHeaderLayout.ChildrenHorizontalAlignment.centered(_:), v32);
  sub_100028BB8();
  v23 = static UIColor.defaultLine.getter();
  v30 = v8;
  v24 = v0[8];
  sub_1001EFEC4(v31, v2, type metadata accessor for TitleHeaderView.TextConfiguration);
  sub_1001EFEC4(v15, &v2[v0[5]], type metadata accessor for TitleHeaderView.TextConfiguration);
  sub_1001EFE54(v28, &v2[v0[6]]);
  v2[v0[7]] = 0;
  v2[v24] = 0;
  v2[v0[9]] = 0;
  *&v2[v0[14]] = 0x4030000000000000;
  *&v2[v0[12]] = 0;
  *&v2[v0[13]] = v23;
  v25 = v30;
  (*(v3 + 32))(&v2[v0[11]], v5, v32);
  if ((*(v22 + 48))(v25, 1, v20) == 1)
  {
    sub_10002B894(v25, &qword_1009794E0, &unk_1007C4840);
    (*(v22 + 104))(&v2[v0[10]], enum case for TitleHeaderLayout.AccessoryVerticalAlignment.lastBaseline(_:), v20);
  }

  else
  {
    (*(v22 + 32))(&v2[v0[10]], v25, v20);
  }

  return sub_1001EFEC4(v2, v29, type metadata accessor for TitleHeaderView.Style);
}

uint64_t sub_1001EF3B4(uint64_t a1, uint64_t *a2, void *a3, char *a4, uint64_t a5)
{
  v34[1] = a5;
  v38 = a4;
  v7 = type metadata accessor for TitleHeaderView.Style(0);
  __chkstk_darwin(v7);
  v9 = v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = type metadata accessor for TitleHeaderLayout.ChildrenHorizontalAlignment();
  v10 = *(v36 - 8);
  __chkstk_darwin(v36);
  v40 = v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10002849C(&qword_1009794E0, &unk_1007C4840);
  __chkstk_darwin(v12 - 8);
  v14 = v34 - v13;
  v15 = sub_10002849C(&qword_1009794E8, &unk_1007C18C0);
  __chkstk_darwin(v15 - 8);
  v17 = v34 - v16;
  v18 = type metadata accessor for TitleHeaderView.TextConfiguration(0);
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = v34 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v39 = v34 - v23;
  sub_100005644(v7, a2);
  v37 = sub_1000056A8(v7, a2);
  if (qword_10096E750 != -1)
  {
    swift_once();
  }

  v24 = sub_1000056A8(v18, qword_1009D2658);
  sub_1001EFDF0(v24, v39);
  if (*a3 != -1)
  {
    swift_once();
  }

  v25 = sub_1000056A8(v18, v38);
  sub_1001EFDF0(v25, v21);
  v26 = *(v19 + 56);
  v35 = v17;
  v26(v17, 1, 1, v18);
  v27 = type metadata accessor for TitleHeaderLayout.AccessoryVerticalAlignment();
  v28 = *(v27 - 8);
  (*(v28 + 56))(v14, 1, 1, v27);
  v29 = v36;
  (*(v10 + 104))(v40, enum case for TitleHeaderLayout.ChildrenHorizontalAlignment.leading(_:), v36);
  sub_100028BB8();
  v30 = static UIColor.defaultLine.getter();
  v38 = v14;
  v31 = v7[8];
  sub_1001EFEC4(v39, v9, type metadata accessor for TitleHeaderView.TextConfiguration);
  sub_1001EFEC4(v21, &v9[v7[5]], type metadata accessor for TitleHeaderView.TextConfiguration);
  sub_1001EFE54(v35, &v9[v7[6]]);
  v9[v7[7]] = 0;
  v9[v31] = 0;
  v9[v7[9]] = 0;
  *&v9[v7[14]] = 0x4030000000000000;
  *&v9[v7[12]] = 0;
  *&v9[v7[13]] = v30;
  v32 = v38;
  (*(v10 + 32))(&v9[v7[11]], v40, v29);
  if ((*(v28 + 48))(v32, 1, v27) == 1)
  {
    sub_10002B894(v32, &qword_1009794E0, &unk_1007C4840);
    (*(v28 + 104))(&v9[v7[10]], enum case for TitleHeaderLayout.AccessoryVerticalAlignment.lastBaseline(_:), v27);
  }

  else
  {
    (*(v28 + 32))(&v9[v7[10]], v32, v27);
  }

  return sub_1001EFEC4(v9, v37, type metadata accessor for TitleHeaderView.Style);
}

uint64_t sub_1001EF8B4@<X0>(void *a1@<X0>, uint64_t a3@<X8>)
{
  v43 = type metadata accessor for TitleHeaderLayout.ChildrenHorizontalAlignment();
  v45 = *(v43 - 8);
  __chkstk_darwin(v43);
  v41 = v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10002849C(&qword_1009794E0, &unk_1007C4840);
  __chkstk_darwin(v6 - 8);
  v8 = (v38 - v7);
  v9 = sub_10002849C(&qword_1009794E8, &unk_1007C18C0);
  __chkstk_darwin(v9 - 8);
  v11 = v38 - v10;
  v12 = type metadata accessor for TitleHeaderView.TextConfiguration(0);
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = v38 - v17;
  type metadata accessor for ASKBagContract();
  type metadata accessor for BaseObjectGraph();
  inject<A, B>(_:from:)();
  v19 = ASKBagContract.todayAdMediumLockupScreenshotsEnabled.getter();

  if (qword_10096E750 != -1)
  {
    swift_once();
  }

  v20 = sub_1000056A8(v12, qword_1009D2658);
  v42 = v18;
  sub_1001EFDF0(v20, v18);
  v44 = v15;
  sub_10051208C(a1, v15);
  sub_10051284C(v11);
  v21 = *(v13 + 56);
  v46 = v11;
  v21(v11, 0, 1, v12);
  if (v19)
  {
    v22 = 2;
  }

  else
  {
    v22 = 1;
  }

  v40 = v22;
  if (UITraitCollection.isSizeClassCompact.getter())
  {
    v23 = &enum case for TitleHeaderLayout.AccessoryVerticalAlignment.firstLineCenter(_:);
  }

  else
  {
    *v8 = 0;
    v8[1] = 0;
    v23 = &enum case for TitleHeaderLayout.AccessoryVerticalAlignment.corner(_:);
  }

  v24 = *v23;
  v25 = type metadata accessor for TitleHeaderLayout.AccessoryVerticalAlignment();
  v26 = *(v25 - 8);
  v27 = *(v26 + 104);
  v38[1] = v26 + 104;
  v39 = v27;
  v27(v8, v24, v25);
  (*(v26 + 56))(v8, 0, 1, v25);
  v28 = UITraitCollection.isSizeClassCompact.getter();
  v29 = &enum case for TitleHeaderLayout.ChildrenHorizontalAlignment.leading(_:);
  if ((v28 & 1) == 0)
  {
    v29 = &enum case for TitleHeaderLayout.ChildrenHorizontalAlignment.centered(_:);
  }

  v30 = v45;
  v31 = v41;
  v32 = v43;
  (*(v45 + 104))(v41, *v29, v43);
  sub_100028BB8();
  v33 = static UIColor.defaultLine.getter();
  v34 = type metadata accessor for TitleHeaderView.Style(0);
  v47 = v8;
  v35 = v34[8];
  sub_1001EFEC4(v42, a3, type metadata accessor for TitleHeaderView.TextConfiguration);
  sub_1001EFEC4(v44, a3 + v34[5], type metadata accessor for TitleHeaderView.TextConfiguration);
  sub_1001EFE54(v46, a3 + v34[6]);
  *(a3 + v34[7]) = 0;
  *(a3 + v35) = 0;
  *(a3 + v34[9]) = v40;
  *(a3 + v34[14]) = 0x4030000000000000;
  *(a3 + v34[12]) = 0;
  *(a3 + v34[13]) = v33;
  v36 = v47;
  (*(v30 + 32))(a3 + v34[11], v31, v32);
  if ((*(v26 + 48))(v36, 1, v25) != 1)
  {
    return (*(v26 + 32))(a3 + v34[10], v36, v25);
  }

  sub_10002B894(v36, &qword_1009794E0, &unk_1007C4840);
  return v39(a3 + v34[10], enum case for TitleHeaderLayout.AccessoryVerticalAlignment.firstBaseline(_:), v25);
}

uint64_t sub_1001EFDF0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TitleHeaderView.TextConfiguration(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001EFE54(uint64_t a1, uint64_t a2)
{
  v4 = sub_10002849C(&qword_1009794E8, &unk_1007C18C0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001EFEC4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1001EFF2C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10002849C(&qword_1009794E8, &unk_1007C18C0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001EFF9C(uint64_t a1)
{
  v2 = type metadata accessor for TitleHeaderView.TextConfiguration(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

double sub_1001F0044()
{
  v0 = type metadata accessor for PageGrid();
  v51 = *(v0 - 8);
  __chkstk_darwin(v0);
  v2 = v35 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = type metadata accessor for PrivacyDefinitionLayout.Metrics();
  v48 = *(v49 - 8);
  __chkstk_darwin(v49);
  v50 = v35 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for PrivacyDefinitionLayout();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = type metadata accessor for LabelPlaceholderCompatibility();
  v46 = *(v47 - 8);
  __chkstk_darwin(v47);
  v9 = v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for PrivacyDefinition();
  sub_1001F0824(&qword_1009794F0, &type metadata accessor for PrivacyDefinition, &protocol conformance descriptor for PrivacyDefinition);
  ItemLayoutContext.typedModel<A>(as:)();
  v10 = v56[0];
  if (!v56[0])
  {
    return 0.0;
  }

  v41 = v2;
  v42 = v7;
  v43 = v5;
  v44 = v0;
  v45 = v4;
  v11 = sub_1000367E8();
  if (qword_10096E0C0 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for FontUseCase();
  sub_1000056A8(v12, qword_1009D11C0);
  swift_getKeyPath();
  ItemLayoutContext.subscript.getter();

  v13 = v56[0];
  v14 = static UIFont.preferredFont(forUseWith:compatibleWith:)();

  v52 = v10;
  PrivacyDefinition.title.getter();
  v15 = type metadata accessor for Feature();
  v39 = v11;
  v16 = v15;
  v56[3] = v15;
  v38 = sub_1001F0824(&qword_100972E50, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
  v56[4] = v38;
  v17 = sub_1000056E0(v56);
  v18 = *(v16 - 8);
  v19 = *(v18 + 104);
  v37 = enum case for Feature.measurement_with_labelplaceholder(_:);
  v36 = v19;
  v35[1] = v18 + 104;
  v19(v17);
  v20 = v14;
  isFeatureEnabled(_:)();
  sub_100007000(v56);
  v40 = v20;
  LabelPlaceholderCompatibility.init(text:font:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:shouldUseLabelPlaceholder:)();
  LabelPlaceholderCompatibility.layoutTextView.getter();
  v21 = *(v46 + 8);
  v22 = v47;
  v21(v9, v47);
  if (qword_10096E0C8 != -1)
  {
    swift_once();
  }

  sub_1000056A8(v12, qword_1009D11D8);
  swift_getKeyPath();
  ItemLayoutContext.subscript.getter();

  v23 = v55[0];
  v24 = static UIFont.preferredFont(forUseWith:compatibleWith:)();

  PrivacyDefinition.definition.getter();
  v55[3] = v16;
  v55[4] = v38;
  v25 = sub_1000056E0(v55);
  v36(v25, v37, v16);
  v26 = v24;
  isFeatureEnabled(_:)();
  sub_100007000(v55);
  LabelPlaceholderCompatibility.init(text:font:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:shouldUseLabelPlaceholder:)();
  LabelPlaceholderCompatibility.layoutTextView.getter();
  v21(v9, v22);
  if (qword_10096CE50 != -1)
  {
    swift_once();
  }

  v27 = v49;
  v28 = sub_1000056A8(v49, qword_1009CD720);
  (*(v48 + 16))(v50, v28, v27);
  sub_10002C0AC(v56, v54);
  sub_10002C0AC(v55, v53);
  v29 = v42;
  PrivacyDefinitionLayout.init(metrics:titleLabel:definitionLabel:)();
  swift_getKeyPath();
  v30 = v41;
  ItemLayoutContext.subscript.getter();

  PageGrid.componentMeasuringSize(spanning:)();
  (*(v51 + 8))(v30, v44);
  sub_100079F24();
  sub_1001F0824(&qword_1009794F8, &type metadata accessor for PrivacyDefinitionLayout, &protocol conformance descriptor for PrivacyDefinitionLayout);
  v31 = v45;
  dispatch thunk of Measurable.measurements(fitting:in:)();
  v33 = v32;

  swift_unknownObjectRelease();

  (*(v43 + 8))(v29, v31);
  sub_100007000(v55);
  sub_100007000(v56);
  return v33;
}

uint64_t sub_1001F0824(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

id sub_1001F086C()
{
  v1 = v0;
  v2 = type metadata accessor for BreakoutDetails.BackgroundStyle();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, v1, v2, v4);
  v7 = (*(v3 + 88))(v6, v2);
  if (v7 == enum case for BreakoutDetails.BackgroundStyle.material(_:) || v7 == enum case for BreakoutDetails.BackgroundStyle.dark(_:))
  {
    v9 = [objc_opt_self() whiteColor];
    v10 = [v9 colorWithAlphaComponent:0.75];

    return v10;
  }

  else
  {
    v12 = v7;
    v13 = enum case for BreakoutDetails.BackgroundStyle.light(_:);
    v14 = [objc_opt_self() blackColor];
    v15 = [v14 colorWithAlphaComponent:0.75];

    if (v12 != v13)
    {
      (*(v3 + 8))(v6, v2);
    }

    return v15;
  }
}

id sub_1001F0A44()
{
  v1 = v0;
  v2 = type metadata accessor for BreakoutDetails.BackgroundStyle();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, v1, v2, v4);
  v7 = (*(v3 + 88))(v6, v2);
  if (v7 == enum case for BreakoutDetails.BackgroundStyle.material(_:))
  {
    v8 = [objc_opt_self() whiteColor];
    v9 = [v8 colorWithAlphaComponent:0.8];
LABEL_5:
    v10 = v9;

    return v10;
  }

  if (v7 == enum case for BreakoutDetails.BackgroundStyle.dark(_:))
  {
    v8 = [objc_opt_self() whiteColor];
    v9 = [v8 colorWithAlphaComponent:0.6];
    goto LABEL_5;
  }

  v12 = enum case for BreakoutDetails.BackgroundStyle.light(_:);
  v13 = v7;
  v14 = [objc_opt_self() blackColor];
  v15 = [v14 colorWithAlphaComponent:0.6];

  if (v13 != v12)
  {
    (*(v3 + 8))(v6, v2);
  }

  return v15;
}

id sub_1001F0C74(char a1)
{
  v2 = v1;
  v4 = type metadata accessor for BreakoutDetails.BackgroundStyle();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, v2, v4, v6);
  v9 = (*(v5 + 88))(v8, v4);
  if (v9 == enum case for BreakoutDetails.BackgroundStyle.material(_:) || v9 == enum case for BreakoutDetails.BackgroundStyle.dark(_:))
  {
    v11 = [objc_opt_self() whiteColor];
    v12 = v11;
    v13 = 0.7;
    if (a1)
    {
      v13 = 1.0;
    }

    v14 = [v11 colorWithAlphaComponent:v13];
  }

  else
  {
    v15 = v9;
    v16 = enum case for BreakoutDetails.BackgroundStyle.light(_:);
    v17 = [objc_opt_self() blackColor];
    v18 = v17;
    v19 = 0.7;
    if (a1)
    {
      v19 = 1.0;
    }

    v14 = [v17 colorWithAlphaComponent:v19];

    if (v15 != v16)
    {
      (*(v5 + 8))(v8, v4);
    }
  }

  return v14;
}

uint64_t sub_1001F0E74()
{
  swift_weakDestroy();

  return swift_deallocClassInstance();
}

void sub_1001F0F0C(uint64_t a1, uint64_t a2)
{
  v3 = sub_10002849C(&unk_10097DAF0, &qword_1007B2A30);
  __chkstk_darwin(v3 - 8);
  v35 = &v32 - v4;
  v34 = sub_10002849C(&qword_1009795F8, &unk_1007C0068);
  v5 = *(v34 - 8);
  __chkstk_darwin(v34);
  v33 = &v32 - v6;
  v7 = type metadata accessor for Shelf.ContentType();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v48 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v47 = &v32 - v11;
  v46 = sub_10002849C(&unk_1009731F0, &qword_1007B0DA0);
  v12 = *(v46 - 8);
  __chkstk_darwin(v46);
  v45 = &v32 - v13;
  v14 = type metadata accessor for ItemLayoutContext();
  v16 = __chkstk_darwin(v14);
  v18 = &v32 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(a2 + 16);
  if (v19)
  {
    v21 = *(v15 + 16);
    v20 = v15 + 16;
    v22 = a2 + ((*(v20 + 64) + 32) & ~*(v20 + 64));
    v41 = *(v20 + 56);
    v42 = v21;
    v40 = (v12 + 8);
    v39 = enum case for Shelf.ContentType.uber(_:);
    v37 = (v8 + 8);
    v38 = (v8 + 104);
    v43 = v20;
    v36 = (v20 - 8);
    v32 = (v5 + 8);
    v44 = v14;
    v21(v18, v22, v14, v16);
    while (1)
    {
      swift_getKeyPath();
      v28 = v45;
      ItemLayoutContext.subscript.getter();

      swift_getKeyPath();
      v29 = v46;
      ReadOnlyLens.subscript.getter();

      (*v40)(v28, v29);
      (*v38)(v48, v39, v7);
      sub_10017720C();
      dispatch thunk of RawRepresentable.rawValue.getter();
      dispatch thunk of RawRepresentable.rawValue.getter();
      if (v51 == v49 && v52 == v50)
      {
        break;
      }

      v30 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v31 = *v37;
      (*v37)(v48, v7);
      v31(v47, v7);

      if (v30)
      {
        goto LABEL_4;
      }

LABEL_5:
      v26 = v44;
      (*v36)(v18, v44);
      v22 += v41;
      if (!--v19)
      {
        return;
      }

      v42(v18, v22, v26, v27);
    }

    v23 = *v37;
    (*v37)(v48, v7);
    v23(v47, v7);

LABEL_4:
    ItemLayoutContext.mutableState.getter();
    v24 = v33;
    WritableStateLens.init(_:)();
    sub_1001F1774();
    v25 = v34;
    WritableStateLens<A>.updateValue(_:)();
    (*v32)(v24, v25);
    goto LABEL_5;
  }
}

void sub_1001F1474(void *a1, uint64_t a2, void *a3)
{
  v19 = a1;
  sub_1001F16B4();
  v5 = a1;
  sub_10002849C(&qword_1009795E8, &qword_1007C0050);
  if (swift_dynamicCast())
  {
    sub_100005A38(&v15, v20);
    v6 = objc_opt_self();
    v7 = swift_allocObject();
    *(v7 + 16) = v5;
    v8 = swift_allocObject();
    *(v8 + 16) = sub_10018E7F4;
    *(v8 + 24) = v7;
    v17 = sub_10006F094;
    v18 = v8;
    *&v15 = _NSConcreteStackBlock;
    *(&v15 + 1) = 1107296256;
    *&v16 = sub_1000489A8;
    *(&v16 + 1) = &unk_1008B8F28;
    v9 = _Block_copy(&v15);
    v10 = v5;

    [v6 performWithoutAnimation:v9];
    _Block_release(v9);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }

    else
    {
      if (swift_weakLoadStrong())
      {
        v12 = v21;
        v13 = v22;
        sub_10002A400(v20, v21);
        v14 = (*(v13 + 8))(v12, v13);
        sub_100041EBC(v14, a3);
      }

      sub_100007000(v20);
    }
  }

  else
  {
    v17 = 0;
    v15 = 0u;
    v16 = 0u;
    sub_1001F1700(&v15);
  }
}

unint64_t sub_1001F16B4()
{
  result = qword_100978E10;
  if (!qword_100978E10)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100978E10);
  }

  return result;
}

uint64_t sub_1001F1700(uint64_t a1)
{
  v2 = sub_10002849C(&qword_1009795F0, &unk_1007C0058);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1001F1774()
{
  result = qword_100979600;
  if (!qword_100979600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100979600);
  }

  return result;
}

unint64_t sub_1001F17C8()
{
  result = qword_100974C20;
  if (!qword_100974C20)
  {
    type metadata accessor for HeroCarouselCollectionViewCell(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100974C20);
  }

  return result;
}

double sub_1001F1820()
{
  v0 = [objc_opt_self() standardUserDefaults];
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 valueForKey:v1];

  if (v2)
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
    if (swift_dynamicCast())
    {
      return v5;
    }
  }

  else
  {
    sub_10003D444(v8);
  }

  Main = JUScreenClassGetMain();
  result = 560.0;
  if (Main == 1)
  {
    return 526.0;
  }

  return result;
}

uint64_t sub_1001F1998(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v27 = a6;
  v26 = a5;
  v24 = a3;
  v25 = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v13 = type metadata accessor for Optional();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v24 - v15;
  v17 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin(v18);
  v20 = &v24 - v19;
  sub_10002C0AC(a1, v28);
  sub_10002849C(&qword_100973D50, &unk_1007B3840);
  v21 = swift_dynamicCast();
  v22 = *(v17 + 56);
  if (v21)
  {
    v22(v16, 0, 1, AssociatedTypeWitness);
    (*(v17 + 32))(v20, v16, AssociatedTypeWitness);
    (*(a9 + 128))(v20, a2, v24, v25, v26, v27, a7, a9);
    return (*(v17 + 8))(v20, AssociatedTypeWitness);
  }

  else
  {
    v22(v16, 1, 1, AssociatedTypeWitness);
    return (*(v14 + 8))(v16, v13);
  }
}

double sub_1001F1BFC(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_unknownObjectRetain();
  sub_10002849C(&qword_100979608, &qword_1007C0188);
  if (swift_dynamicCast())
  {
    (*(a6 + 136))(v10, a3 & 1, a4, a6);
    swift_unknownObjectRelease();
  }

  return result;
}

void sub_1001F1D00(uint64_t a1, uint64_t a2, char a3)
{
  swift_getObjectType();
  v4 = swift_dynamicCastClass();
  if (v4)
  {
    v5 = v4;
    if (a3)
    {
      swift_unknownObjectRetain();
      sub_1002FA154(v5);

      swift_unknownObjectRelease();
    }

    else
    {

      swift_unknownObjectWeakAssign();
    }
  }
}

double sub_1001F1E48(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  WitnessTable = swift_getWitnessTable();

  return sub_1001F1BFC(a1, a2, a3 & 1, a4, v8, WitnessTable);
}

double sub_1001F1F14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t (*a9)(void), void (*a10)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  sub_10002C0AC(a1, v17);
  sub_10002849C(&qword_100973D50, &unk_1007B3840);
  a9(0);
  if (swift_dynamicCast())
  {
    a10(v16, a2, a3, a4, a5, a6);
  }

  return result;
}

void sub_1001F1FE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  v6 = v5;
  sub_10002C0AC(a1, v23);
  sub_10002849C(&qword_100973D50, &unk_1007B3840);
  type metadata accessor for TodayCardActionOverlay();
  if (swift_dynamicCast())
  {
    v6[OBJC_IVAR____TtC8AppStore26TodayCardActionOverlayView_sizeCategory] = a5;
    v9 = a5;
    [v6 setNeedsLayout];
    sub_1000C4450(a2);
    sub_1001A63B0(v10);
    v11 = TodayCard.Style.overlayBackgroundColor.getter();
    [v6 setBackgroundColor:v11];

    v12 = [v6 traitCollection];
    if (v9 != 4)
    {
      PageGrid.horizontalDirectionalMargins.getter();
      PageGrid.horizontalDirectionalMargins.getter();
    }

    [v12 layoutDirection];
    NSDirectionalEdgeInsets.insetsWithLayoutDirection(_:)();
    v14 = v13;
    v16 = v15;
    v18 = v17;

    [v6 setLayoutMargins:{v14, v16, v18, 15.0}];
    v19 = *&v6[OBJC_IVAR____TtC8AppStore26TodayCardActionOverlayView_label];
    TodayCardActionOverlay.action.getter();
    Action.title.getter();
    v21 = v20;

    if (v21)
    {
      v22 = String._bridgeToObjectiveC()();
    }

    else
    {
      v22 = 0;
    }

    [v19 setText:v22];
  }
}

void sub_1001F2200(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  v5 = v4;
  v9 = type metadata accessor for Paragraph.Alignment();
  v55 = *(v9 - 8);
  __chkstk_darwin(v9);
  v54 = &v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10002849C(&qword_1009752C8, &unk_1007B73C0);
  __chkstk_darwin(v11 - 8);
  v13 = &v49 - v12;
  v14 = type metadata accessor for TodayCard.Style();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v49 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10002C0AC(a1, aBlock);
  sub_10002849C(&qword_100973D50, &unk_1007B3840);
  type metadata accessor for TodayCardParagraphOverlay();
  if (!swift_dynamicCast())
  {
    return;
  }

  v50 = v9;
  v18 = a4;
  v53 = aBlock[6];
  TodayCardParagraphOverlay.style.getter();
  v19 = *(v15 + 48);
  if (v19(v13, 1, v14) == 1)
  {
    (*(v15 + 16))(v17, a3, v14);
    if (v19(v13, 1, v14) != 1)
    {
      sub_1001F2910(v13);
    }
  }

  else
  {
    (*(v15 + 32))(v17, v13, v14);
  }

  v20 = v5[OBJC_IVAR____TtC8AppStore29TodayCardParagraphOverlayView_sizeCategory];
  v5[OBJC_IVAR____TtC8AppStore29TodayCardParagraphOverlayView_sizeCategory] = a4;
  if (a4 == 7)
  {
    if (v20 == 7)
    {
      goto LABEL_11;
    }
  }

  else if (v20 != 7)
  {
    switch(a4)
    {
      case 6u:
        if (v20 == 6)
        {
          goto LABEL_11;
        }

        break;
      case 5u:
        if (v20 == 5)
        {
          goto LABEL_11;
        }

        break;
      case 4u:
        if (v20 == 4)
        {
          goto LABEL_11;
        }

        break;
      default:
        if ((v20 - 7) <= 0xFFFFFFFC && v20 == a4)
        {
          goto LABEL_11;
        }

        break;
    }
  }

  [v5 setNeedsLayout];
LABEL_11:
  v51 = v15;
  v52 = v14;
  v21 = TodayCard.Style.overlayBackgroundColor.getter();
  [v5 setBackgroundColor:v21];

  v22 = [v5 traitCollection];
  if (v18 != 4)
  {
    PageGrid.horizontalDirectionalMargins.getter();
    PageGrid.horizontalDirectionalMargins.getter();
  }

  [v22 layoutDirection];
  NSDirectionalEdgeInsets.insetsWithLayoutDirection(_:)();
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;

  [v5 setLayoutMargins:{v24, v26, v28, v30}];
  TodayCardParagraphOverlay.paragraph.getter();
  v49 = *&v5[OBJC_IVAR____TtC8AppStore29TodayCardParagraphOverlayView_label];
  v31 = Paragraph.text.getter();
  v32 = [v5 traitCollection];
  v33 = [objc_allocWithZone(NSMutableAttributedString) initWithAttributedString:v31];
  v34 = [v31 length];
  v35 = swift_allocObject();
  *(v35 + 16) = 0;
  *(v35 + 24) = v32;
  *(v35 + 32) = v33;
  *(v35 + 40) = 1;
  v36 = swift_allocObject();
  *(v36 + 16) = sub_10010279C;
  *(v36 + 24) = v35;
  aBlock[4] = sub_1001027AC;
  aBlock[5] = v36;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1006606C4;
  aBlock[3] = &unk_1008B8FA0;
  v37 = _Block_copy(aBlock);
  v38 = v32;
  v39 = v33;

  [v31 enumerateAttributesInRange:0 options:v34 usingBlock:{0x100000, v37}];

  _Block_release(v37);
  LOBYTE(v37) = swift_isEscapingClosureAtFileLocation();

  if (v37)
  {
    __break(1u);
  }

  else
  {
    v40 = v49;
    [v49 setAttributedText:v39];

    v41 = v54;
    Paragraph.alignment.getter();
    v42 = v55;
    v43 = v50;
    v44 = (*(v55 + 88))(v41, v50);
    if (v44 == enum case for Paragraph.Alignment.left(_:))
    {
      v45 = 0;
      v47 = v51;
      v46 = v52;
    }

    else
    {
      v47 = v51;
      v46 = v52;
      if (v44 == enum case for Paragraph.Alignment.center(_:))
      {
        v45 = 1;
      }

      else if (v44 == enum case for Paragraph.Alignment.right(_:))
      {
        v45 = 2;
      }

      else if (v44 == enum case for Paragraph.Alignment.justified(_:))
      {
        v45 = 3;
      }

      else if (v44 == enum case for Paragraph.Alignment.localized(_:))
      {
        v45 = 4;
      }

      else
      {
        (*(v42 + 8))(v41, v43);
        v45 = 0;
      }
    }

    [v40 setTextAlignment:v45];
    v48 = TodayCard.Style.overlayDetailTextColor.getter();
    [v40 setTextColor:v48];

    (*(v47 + 8))(v17, v46);
  }
}

uint64_t sub_1001F2910(uint64_t a1)
{
  v2 = sub_10002849C(&qword_1009752C8, &unk_1007B73C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1001F2978(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v11 = type metadata accessor for TodayCard.Style();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10002C0AC(a1, v31);
  sub_10002849C(&qword_100973D50, &unk_1007B3840);
  type metadata accessor for TodayCardArcadeLockupOverlay();
  if (!swift_dynamicCast())
  {
    return;
  }

  v15 = v5[OBJC_IVAR____TtC8AppStore32TodayCardArcadeLockupOverlayView_sizeCategory];
  v5[OBJC_IVAR____TtC8AppStore32TodayCardArcadeLockupOverlayView_sizeCategory] = a5;
  if (a5 == 7)
  {
    if (v15 == 7)
    {
      goto LABEL_7;
    }
  }

  else if (v15 != 7)
  {
    switch(a5)
    {
      case 6:
        if (v15 == 6)
        {
          goto LABEL_7;
        }

        break;
      case 5:
        if (v15 == 5)
        {
          goto LABEL_7;
        }

        break;
      case 4:
        if (v15 == 4)
        {
          goto LABEL_7;
        }

        break;
      default:
        if ((v15 - 7) <= 0xFFFFFFFC && v15 == a5)
        {
          goto LABEL_7;
        }

        break;
    }
  }

  [v5 setNeedsLayout];
LABEL_7:
  v16 = [v5 traitCollection];
  if (a5 != 4)
  {
    PageGrid.horizontalDirectionalMargins.getter();
    PageGrid.horizontalDirectionalMargins.getter();
  }

  [v16 layoutDirection];
  NSDirectionalEdgeInsets.insetsWithLayoutDirection(_:)();
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;

  [v5 setLayoutMargins:{v18, v20, v22, v24}];
  v25 = sub_1000A7C28(a4);
  [v6 setBackgroundColor:v25];

  (*(v12 + 104))(v14, enum case for TodayCard.Style.white(_:), v11);
  sub_1001DDE20();
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  if (v31[0] == v30[1] && v31[1] == v30[2])
  {
    v26 = 1;
  }

  else if (_stringCompareWithSmolCheck(_:_:expecting:)())
  {
    v26 = 1;
  }

  else
  {
    v26 = 2;
  }

  (*(v12 + 8))(v14, v11);

  [v6 setOverrideUserInterfaceStyle:v26];
  v27 = *&v6[OBJC_IVAR____TtC8AppStore32TodayCardArcadeLockupOverlayView_arcadeLockupView];
  v28 = TodayCardArcadeLockupOverlay.arcadeLockup.getter();
  sub_100283630(v28, a2);

  sub_1006A8774();
}

void sub_1001F2D14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  sub_10002C0AC(a1, v21);
  sub_10002849C(&qword_100973D50, &unk_1007B3840);
  type metadata accessor for TodayCardArcadeLockupOverlay();
  if (!swift_dynamicCast())
  {
    return;
  }

  v8 = v5[OBJC_IVAR____TtC8AppStore38LegacyTodayCardArcadeLockupOverlayView_sizeCategory];
  v5[OBJC_IVAR____TtC8AppStore38LegacyTodayCardArcadeLockupOverlayView_sizeCategory] = a5;
  if (a5 == 7)
  {
    if (v8 == 7)
    {
      goto LABEL_7;
    }
  }

  else if (v8 != 7)
  {
    switch(a5)
    {
      case 6u:
        if (v8 == 6)
        {
          goto LABEL_7;
        }

        break;
      case 5u:
        if (v8 == 5)
        {
          goto LABEL_7;
        }

        break;
      case 4u:
        if (v8 == 4)
        {
          goto LABEL_7;
        }

        break;
      default:
        if ((v8 - 7) <= 0xFFFFFFFC && v8 == a5)
        {
          goto LABEL_7;
        }

        break;
    }
  }

  [v5 setNeedsLayout];
LABEL_7:
  v9 = [v5 traitCollection];
  if (a5 != 4)
  {
    PageGrid.horizontalDirectionalMargins.getter();
    PageGrid.horizontalDirectionalMargins.getter();
  }

  [v9 layoutDirection];
  NSDirectionalEdgeInsets.insetsWithLayoutDirection(_:)();
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;

  [v5 setLayoutMargins:{v11, v13, v15, v17}];
  v18 = *&v5[OBJC_IVAR____TtC8AppStore38LegacyTodayCardArcadeLockupOverlayView_arcadeLockupView];
  v19 = TodayCardArcadeLockupOverlay.arcadeLockup.getter();
  sub_100283630(v19, a2);
}

double sub_1001F2F2C()
{
  v0 = sub_10002849C(&qword_100970F20, &qword_1007B24B8);
  v39 = *(v0 - 8);
  v40 = v0;
  __chkstk_darwin(v0);
  v35 = &v30 - v1;
  v36 = type metadata accessor for PageGrid();
  v34 = *(v36 - 8);
  __chkstk_darwin(v36);
  v3 = &v30 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for ComponentLayoutOptions();
  v37 = *(v4 - 8);
  v38 = v4;
  __chkstk_darwin(v4);
  v32 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10002849C(qword_10097DB40, qword_1007C5240);
  v30 = *(v6 - 8);
  v31 = v6;
  __chkstk_darwin(v6);
  v33 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v30 - v9;
  v11 = sub_10002849C(&unk_1009731F0, &qword_1007B0DA0);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v30 - v13;
  v15 = sub_10002849C(&unk_1009731D0, &qword_1007BCF00);
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v30 - v17;
  ItemLayoutContext.item.getter();
  ReadOnlyLens.value.getter();
  v19 = v18;
  v20 = v30;
  (*(v16 + 8))(v19, v15);
  swift_getKeyPath();
  ItemLayoutContext.subscript.getter();

  swift_getKeyPath();
  ReadOnlyLens.subscript.getter();
  v21 = v31;

  v22 = v11;
  v23 = v32;
  (*(v12 + 8))(v14, v22);

  ItemLayoutContext.state.getter();
  ItemLayoutContext.componentLayoutOptions.getter();
  swift_getKeyPath();
  ItemLayoutContext.subscript.getter();
  v24 = v35;

  PageGrid.componentMeasuringSize(spanning:)();
  (*(v34 + 8))(v3, v36);
  sub_100079F24();
  (*(v20 + 16))(v33, v10, v21);
  type metadata accessor for NilState();
  StateLens.init(_:)();
  if (qword_10096D4D0 != -1)
  {
    swift_once();
  }

  v25 = type metadata accessor for FlowcaseItemLayout.Metrics();
  sub_1000056A8(v25, qword_1009CEA50);
  type metadata accessor for FlowcaseItemLayout();
  sub_1001F3550(&unk_100979610, &type metadata accessor for FlowcaseItemLayout, &protocol conformance descriptor for FlowcaseItemLayout);
  dispatch thunk of static EstimatedMeasurable.estimatedMeasurements(fitting:using:in:)();
  if (qword_10096D4D8 != -1)
  {
    swift_once();
  }

  v26 = type metadata accessor for Separator();
  sub_1000056A8(v26, qword_1009CEA68);
  CGSize.adding(separator:in:)();
  v28 = v27;
  swift_unknownObjectRelease();
  (*(v39 + 8))(v24, v40);
  (*(v37 + 8))(v23, v38);
  (*(v20 + 8))(v10, v21);
  sub_100007000(v41);
  return v28;
}

uint64_t sub_1001F3550(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

double sub_1001F3598()
{
  v0 = type metadata accessor for PageGrid();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v17 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  ShelfLayoutContext.contentPageGrid.getter();
  PageGrid.componentMeasuringSize(spanning:)();
  v4 = *(v1 + 8);
  v4(v3, v0);
  ShelfLayoutContext.contentPageGrid.getter();
  PageGrid.containerWidth.getter();
  v6 = v5;
  v4(v3, v0);
  v7 = ShelfLayoutContext.traitCollection.getter();
  v8 = type metadata accessor for SnapshotPageTraitEnvironment();
  v9 = objc_allocWithZone(v8);
  v10 = &v9[OBJC_IVAR____TtC8AppStore28SnapshotPageTraitEnvironment_pageContainerSize];
  *v10 = v6;
  *(v10 + 1) = 0x7FEFFFFFFFFFFFFFLL;
  *&v9[OBJC_IVAR____TtC8AppStore28SnapshotPageTraitEnvironment_traitCollection] = v7;
  v17.receiver = v9;
  v17.super_class = v8;
  v11 = objc_msgSendSuper2(&v17, "init");
  if (qword_10096D4D0 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for FlowcaseItemLayout.Metrics();
  sub_1000056A8(v12, qword_1009CEA50);
  type metadata accessor for FlowcaseItemLayout();
  sub_1001F3550(&unk_100979610, &type metadata accessor for FlowcaseItemLayout, &protocol conformance descriptor for FlowcaseItemLayout);
  dispatch thunk of static EstimatedMeasurable.estimatedMeasurements(fitting:using:in:)();
  if (qword_10096D4D8 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Separator();
  sub_1000056A8(v13, qword_1009CEA68);
  CGSize.adding(separator:in:)();
  v15 = v14;

  return v15;
}

uint64_t sub_1001F3830()
{
  v0 = type metadata accessor for StoreTab.Identifier();
  sub_100005644(v0, qword_100979620);
  v1 = sub_1000056A8(v0, qword_100979620);
  v2 = enum case for StoreTab.Identifier.today(_:);
  v3 = *(*(v0 - 8) + 104);

  return v3(v1, v2, v0);
}

id sub_1001F392C()
{
  result = [v0 viewControllers];
  if (!result)
  {
    return result;
  }

  v2 = result;
  sub_100065AF0();
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!(v3 >> 62))
  {
    if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_4;
    }

LABEL_13:

    return 0;
  }

  if (!_CocoaArrayWrapper.endIndex.getter())
  {
    goto LABEL_13;
  }

LABEL_4:
  if ((v3 & 0xC000000000000001) != 0)
  {
    v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_18;
    }

    v4 = *(v3 + 32);
  }

  v5 = v4;

  type metadata accessor for JULoadingViewController();
  v6 = swift_dynamicCastClass();

  if (!v6)
  {
    return 0;
  }

  result = [v0 viewControllers];
  if (result)
  {
    v7 = result;
    v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (!(v8 >> 62))
    {
      v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_11:

      return (v9 == 1);
    }

LABEL_18:
    v9 = _CocoaArrayWrapper.endIndex.getter();
    goto LABEL_11;
  }

  return result;
}

void sub_1001F3A9C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_10002849C(&qword_100975528, &unk_1007BECC0);
  __chkstk_darwin(v4 - 8);
  v74 = &v67 - v5;
  v6 = type metadata accessor for NavigationTab();
  v75 = *(v6 - 8);
  v76 = v6;
  __chkstk_darwin(v6);
  v8 = &v67 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = sub_10002849C(&unk_1009796D0, &unk_1007C02E0);
  __chkstk_darwin(v84);
  v10 = (&v67 - v9);
  v86 = type metadata accessor for StoreTab();
  v11 = *(v86 - 8);
  __chkstk_darwin(v86);
  v78 = &v67 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10002849C(&unk_100982AB0, &qword_1007BECE0);
  __chkstk_darwin(v13 - 8);
  v15 = &v67 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v67 - v17;
  if ((sub_1001F392C() & 1) == 0)
  {
    return;
  }

  v68 = v8;
  v77 = v18;
  *&v1[OBJC_IVAR____TtC8AppStore21StoreTabBarController_objectGraph] = a1;

  v19 = type metadata accessor for TabChangeDelegate();
  v20 = objc_allocWithZone(v19);
  *&v20[OBJC_IVAR____TtC8AppStore17TabChangeDelegate_objectGraph] = a1;
  v90.receiver = v20;
  v90.super_class = v19;
  swift_retain_n();
  v21 = objc_msgSendSuper2(&v90, "init");
  v22 = *&v1[OBJC_IVAR____TtC8AppStore21StoreTabBarController_tabChangeDelegate];
  *&v2[OBJC_IVAR____TtC8AppStore21StoreTabBarController_tabChangeDelegate] = v21;
  v23 = v21;

  [v2 setDelegate:v23];
  type metadata accessor for ASKBagContract();
  v24 = type metadata accessor for BaseObjectGraph();
  inject<A, B>(_:from:)();
  v79 = v89;
  v25 = ASKBagContract.tabs.getter();
  type metadata accessor for UserEngagementManager();
  v70 = v24;
  inject<A, B>(_:from:)();
  v71 = v89;
  UserEngagementManager.defaultTabIdentifier.getter();
  v26 = type metadata accessor for StoreTab.Identifier();
  v27 = *(v26 - 8);
  v28 = *(v27 + 48);
  v29 = v28(v15, 1, v26);
  v83 = v25;
  if (v29 == 1)
  {
    v30 = v77;
    sub_1001F4594(v83, v77);
    v31 = v28(v15, 1, v26);
    v32 = v30;
    v25 = v83;
    if (v31 != 1)
    {
      v31 = sub_10002B894(v15, &unk_100982AB0, &qword_1007BECE0);
    }
  }

  else
  {
    v32 = v77;
    (*(v27 + 32))(v77, v15, v26);
    v31 = (*(v27 + 56))(v32, 0, 1, v26);
  }

  __chkstk_darwin(v31);
  *(&v67 - 2) = v32;
  v33 = sub_1001F50F0(sub_1001F8484, (&v67 - 4), v25);
  if (v34)
  {
    v35 = 0;
  }

  else
  {
    v35 = v33;
  }

  if ((v35 & 0x8000000000000000) != 0)
  {
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  if (v35 >= *(v25 + 16))
  {
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  v85 = a1;
  v69 = v11;
  v37 = *(v11 + 16);
  v36 = v11 + 16;
  v38 = v25 + ((*(v36 + 64) + 32) & ~*(v36 + 64));
  v39 = *(v36 + 56);
  v82 = v35;
  v72 = v38;
  v80 = v37;
  v81 = v39;
  v37(v78, v38 + v39 * v35, v86);
  type metadata accessor for MetricsActivity();
  static MetricsActivity.current.getter();
  StoreTab.pageContext.getter();
  dispatch thunk of MetricsActivity.changeContext(_:)();

  v89 = _swiftEmptyArrayStorage;
  v40 = *(v25 + 16);

  if (v40)
  {
    v41 = 0;
    v67 = v40 - 1;
    ObjCClassFromMetadata = _swiftEmptyArrayStorage;
    do
    {
      v42 = v72 + v81 * v41;
      v43 = v41;
      while (1)
      {
        if (v43 >= *(v25 + 16))
        {
          __break(1u);
          goto LABEL_48;
        }

        v44 = *(v84 + 48);
        *v10 = v43;
        v80(v10 + v44, v42, v86);
        v45 = v2;
        v46 = [v2 traitCollection];
        v47 = v82 == v43 ? 0 : ASKBagContract.lazyLoadTabs.getter();
        v48 = sub_1001F51DC(v46, v47 & 1, v85);

        if (v48)
        {
          break;
        }

        ++v43;
        sub_10002B894(v10, &unk_1009796D0, &unk_1007C02E0);
        v42 += v81;
        v2 = v45;
        v25 = v83;
        if (v40 == v43)
        {
          goto LABEL_32;
        }
      }

      ObjCClassFromMetadata = type metadata accessor for NavigationBarManualCheckLayoutMarginsChange();
      v49 = type metadata accessor for StoreNavigationController();
      v50 = objc_allocWithZone(v49);
      *&v50[OBJC_IVAR____TtC8AppStore25StoreNavigationController_objectGraph] = v85;
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v88.receiver = v50;
      v88.super_class = v49;

      v51 = objc_msgSendSuper2(&v88, "initWithNavigationBarClass:toolbarClass:", ObjCClassFromMetadata, 0);
      [v51 setDelegate:v51];
      [v51 pushViewController:v48 animated:0];
      type metadata accessor for FloatingUnifiedMessageCoordinator();
      BaseObjectGraph.optional<A>(_:)();
      v52 = v87;
      if (v87)
      {
        v53 = [v51 tabBarItem];
        v2 = v45;
        if (v53)
        {
          v54 = v53;
          FloatingUnifiedMessageCoordinator.register(tabBarItem:with:for:)();
        }

        else
        {
        }
      }

      else
      {

        v2 = v45;
      }

      v25 = v83;
      sub_10002B894(v10, &unk_1009796D0, &unk_1007C02E0);
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v89 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v89 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      v41 = v43 + 1;
      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      ObjCClassFromMetadata = v89;
    }

    while (v67 != v43);
  }

  else
  {
    ObjCClassFromMetadata = _swiftEmptyArrayStorage;
  }

LABEL_32:

  sub_100065AF0();
  isa = Array._bridgeToObjectiveC()().super.isa;
  [v2 setViewControllers:isa];

  [v2 setSelectedIndex:v82];
  v56 = [v2 selectedViewController];
  if (v56)
  {
    v57 = v56;
    v58 = [v56 tabBarItem];

    v59 = v77;
    if (v58)
    {

      [v58 tag];

      v60 = v74;
      NavigationTab.init(intValue:)();
      v62 = v75;
      v61 = v76;
      if ((*(v75 + 48))(v60, 1, v76) == 1)
      {
        sub_10002B894(v60, &qword_100975528, &unk_1007BECC0);
      }

      else
      {
        v63 = v68;
        (*(v62 + 32))(v68, v60, v61);
        type metadata accessor for AppStoreOnDeviceRecommendationsManager();
        BaseObjectGraph.optional<A>(_:)();
        v64 = v89;
        if (v89)
        {
          dispatch thunk of AppStoreOnDeviceRecommendationsManager.loadInferences(for:)();
        }

        (*(v62 + 8))(v63, v61);
      }

      goto LABEL_40;
    }

LABEL_50:
    __break(1u);
    return;
  }

  v59 = v77;
LABEL_40:
  type metadata accessor for UnifiedTabBadgingManager();
  BaseObjectGraph.optional<A>(_:)();
  v65 = v89;
  if (v89)
  {

    UnifiedTabBadgingManager.rootActionHandler.setter();
  }

  type metadata accessor for AppStoreEngagementManager();
  inject<A, B>(_:from:)();

  AppStoreEngagementManager.rootActionHandler.setter();
  v66 = Array.isNotEmpty.getter();

  if (v66)
  {
    [v2 _uip_setTabBarHidden:0];

    (*(v69 + 8))(v78, v86);
  }

  else
  {
    (*(v69 + 8))(v78, v86);
  }

  sub_10002B894(v59, &unk_100982AB0, &qword_1007BECE0);
}

void sub_1001F4594(uint64_t a1@<X0>, char *a2@<X8>)
{
  v52 = a1;
  v47 = a2;
  v54 = type metadata accessor for StoreTab();
  v2 = *(v54 - 8);
  __chkstk_darwin(v54);
  v53 = v44 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10002849C(&qword_100979710, &qword_1007BB7C0);
  __chkstk_darwin(v4 - 8);
  v49 = v44 - v5;
  v6 = sub_10002849C(&qword_100979718, &qword_1007C0310);
  __chkstk_darwin(v6 - 8);
  v48 = v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = v44 - v9;
  v11 = sub_10002849C(&unk_100982AB0, &qword_1007BECE0);
  __chkstk_darwin(v11 - 8);
  v13 = v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = v44 - v15;
  v17 = type metadata accessor for StoreTab.Identifier();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = v44 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v23 = v44 - v22;
  v24 = [objc_opt_self() standardUserDefaults];
  sub_100736FA4(v16);
  v25 = (*(v18 + 48))(v16, 1, v17);
  v46 = v18;
  if (v25 == 1)
  {
    sub_10002B894(v16, &unk_100982AB0, &qword_1007BECE0);
  }

  else
  {
    v50 = *(v18 + 32);
    v51 = v13;
    v50(v23, v16, v17);
    v26 = String._bridgeToObjectiveC()();
    v27 = [v24 stringForKey:v26];

    if (v27)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      TimeZone.init(identifier:)();
    }

    else
    {
      v28 = type metadata accessor for TimeZone();
      (*(*(v28 - 8) + 56))(v10, 1, 1, v28);
    }

    v29 = v49;
    sub_1007370DC(v49);
    v30 = sub_1001F84C0(v10, v29);
    sub_10002B894(v29, &qword_100979710, &qword_1007BB7C0);
    sub_10002B894(v10, &qword_100979718, &qword_1007C0310);
    if (v30)
    {
      v31 = v47;
      v50(v47, v23, v17);
      (*(v46 + 56))(v31, 0, 1, v17);
      v32 = v48;
      goto LABEL_20;
    }

    v18 = v46;
    (*(v46 + 8))(v23, v17);
    v13 = v51;
  }

  v44[0] = *(v18 + 56);
  (v44[0])(v13, 1, 1, v17);
  v45 = v24;
  sub_100736DBC(v13);
  v33 = 0;
  v34 = *(v52 + 16);
  v50 = (v2 + 16);
  v51 = v34;
  v44[1] = v18 + 56;
  v35 = (v18 + 8);
  v36 = (v2 + 8);
  while (1)
  {
    if (v51 == v33)
    {
      v39 = v47;
      v40 = 1;
      goto LABEL_19;
    }

    (*(v2 + 16))(v53, v52 + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * v33, v54);
    StoreTab.identifier.getter();
    if (qword_10096D3C0 != -1)
    {
      swift_once();
    }

    v38 = sub_1000056A8(v17, qword_100979620);
    sub_1001F8A44(&qword_100979720, &type metadata accessor for StoreTab.Identifier, &protocol conformance descriptor for StoreTab.Identifier);
    dispatch thunk of RawRepresentable.rawValue.getter();
    dispatch thunk of RawRepresentable.rawValue.getter();
    if (v57 == v55 && v58 == v56)
    {
      break;
    }

    v37 = _stringCompareWithSmolCheck(_:_:expecting:)();
    (*v35)(v20, v17);
    (*v36)(v53, v54);

    ++v33;
    if (v37)
    {
      goto LABEL_18;
    }
  }

  (*v35)(v20, v17);
  (*v36)(v53, v54);

LABEL_18:
  v41 = v47;
  (*(v46 + 16))(v47, v38, v17);
  v39 = v41;
  v40 = 0;
LABEL_19:
  (v44[0])(v39, v40, 1, v17);
  v32 = v48;
  v29 = v49;
  v24 = v45;
LABEL_20:
  Date.init()();
  v42 = type metadata accessor for Date();
  (*(*(v42 - 8) + 56))(v29, 0, 1, v42);
  sub_100737E74(v29);
  static TimeZone.current.getter();
  v43 = type metadata accessor for TimeZone();
  (*(*(v43 - 8) + 56))(v32, 0, 1, v43);
  sub_1007380C4(v32);
}

uint64_t sub_1001F4D20(uint64_t a1, uint64_t a2)
{
  v22 = a2;
  v2 = type metadata accessor for StoreTab.Identifier();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v21 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10002849C(&unk_100979700, &unk_1007C0300);
  v6 = v5 - 8;
  __chkstk_darwin(v5);
  v8 = &v21 - v7;
  v9 = sub_10002849C(&unk_100982AB0, &qword_1007BECE0);
  __chkstk_darwin(v9 - 8);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v21 - v13;
  StoreTab.identifier.getter();
  (*(v3 + 56))(v14, 0, 1, v2);
  v15 = *(v6 + 56);
  sub_100031660(v14, v8, &unk_100982AB0, &qword_1007BECE0);
  sub_100031660(v22, &v8[v15], &unk_100982AB0, &qword_1007BECE0);
  v16 = *(v3 + 48);
  if (v16(v8, 1, v2) != 1)
  {
    sub_100031660(v8, v11, &unk_100982AB0, &qword_1007BECE0);
    if (v16(&v8[v15], 1, v2) != 1)
    {
      v18 = v21;
      (*(v3 + 32))(v21, &v8[v15], v2);
      sub_1001F8A44(&qword_100982AD0, &type metadata accessor for StoreTab.Identifier, &protocol conformance descriptor for StoreTab.Identifier);
      v17 = dispatch thunk of static Equatable.== infix(_:_:)();
      v19 = *(v3 + 8);
      v19(v18, v2);
      sub_10002B894(v14, &unk_100982AB0, &qword_1007BECE0);
      v19(v11, v2);
      sub_10002B894(v8, &unk_100982AB0, &qword_1007BECE0);
      return v17 & 1;
    }

    sub_10002B894(v14, &unk_100982AB0, &qword_1007BECE0);
    (*(v3 + 8))(v11, v2);
    goto LABEL_6;
  }

  sub_10002B894(v14, &unk_100982AB0, &qword_1007BECE0);
  if (v16(&v8[v15], 1, v2) != 1)
  {
LABEL_6:
    sub_10002B894(v8, &unk_100979700, &unk_1007C0300);
    v17 = 0;
    return v17 & 1;
  }

  sub_10002B894(v8, &unk_100982AB0, &qword_1007BECE0);
  v17 = 1;
  return v17 & 1;
}

uint64_t sub_1001F50F0(uint64_t (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return 0;
  }

  v7 = 0;
  v8 = *(type metadata accessor for StoreTab() - 8);
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

id sub_1001F51DC(uint64_t a1, char a2, uint64_t a3)
{
  v69 = a3;
  v67 = a1;
  v5 = sub_10002849C(&unk_1009796E0, &unk_1007C02F0);
  __chkstk_darwin(v5 - 8);
  v68 = &v67 - v6;
  v7 = sub_10002849C(&unk_1009767C0, &unk_1007B1880);
  __chkstk_darwin(v7 - 8);
  v9 = &v67 - v8;
  v70 = type metadata accessor for StoreTab();
  v10 = *(v70 - 8);
  __chkstk_darwin(v70);
  v12 = &v67 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10002849C(&unk_1009796F0, &unk_1007BA400);
  __chkstk_darwin(v13 - 8);
  v15 = &v67 - v14;
  v16 = type metadata accessor for FlowDestination(0);
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = (&v67 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = v3;
  sub_1000404B8(v15);
  if ((*(v17 + 48))(v15, 1, v16) != 1)
  {
    sub_10013A05C(v15, v19);
    if (a2)
    {
      v25 = v3;
      v26 = v70;
      (*(v10 + 16))(v12, v3, v70);
      v27 = objc_allocWithZone(type metadata accessor for TabPlaceholderViewController(0));
      v24 = sub_10076AFD8(v12);
    }

    else
    {
      v28 = type metadata accessor for ReferrerData();
      (*(*(v28 - 8) + 56))(v9, 1, 1, v28);
      v73 = 0;
      v71 = 0u;
      v72 = 0u;
      sub_1003C1668(v19, v67, 0, 0, v9, &v71, v69, 1);
      v30 = v29;
      sub_10002B894(&v71, &unk_100981880, &unk_1007BECD0);
      sub_10002B894(v9, &unk_1009767C0, &unk_1007B1880);
      if (!v30)
      {
        if (qword_10096D120 != -1)
        {
          swift_once();
        }

        v64 = type metadata accessor for OSLogger();
        sub_1000056A8(v64, qword_1009CE218);
        sub_10002849C(&unk_100972A10, &qword_1007B1EF0);
        type metadata accessor for LogMessage();
        *(swift_allocObject() + 16) = xmmword_1007B1890;
        LogMessage.init(stringLiteral:)();
        v65 = v70;
        *(&v72 + 1) = v70;
        v66 = sub_1000056E0(&v71);
        (*(v10 + 16))(v66, v20, v65);
        static LogMessage.safe(_:)();
        sub_10002B894(&v71, &unk_1009711D0, &unk_1007B1A10);
        Logger.error(_:)();

        sub_1001181EC(v19);
        return 0;
      }

      v24 = v30;
      v25 = v20;
      v26 = v70;
    }

    v31 = sub_100040EAC();
    if (v31)
    {
      v32 = v31;
      v33 = [v31 title];
      [v24 setTitle:v33];

      [v24 setTabBarItem:v32];
    }

    type metadata accessor for StoreCollectionViewController();
    v34 = swift_dynamicCastClass();
    if (v34)
    {
      v35 = v34;
      *(v34 + OBJC_IVAR____TtC8AppStore29StoreCollectionViewController_prefersLargeTitle) = 1;
      v36 = (*((swift_isaMask & *v34) + 0x198))();
      v37 = v24;
      v38 = [v35 navigationItem];
      v39 = v38;
      if (v36)
      {
        v40 = 3;
      }

      else
      {
        v40 = 2;
      }

      [v38 setLargeTitleDisplayMode:{v40, v67}];

      v41 = StoreTab.id.getter();
      v42 = (v35 + OBJC_IVAR____TtC8AppStore29StoreCollectionViewController_automationSemanticPageId);
      *v42 = v41;
      v42[1] = v43;

      ObjectType = swift_getObjectType();
      v45 = v68;
      (*(v10 + 16))(v68, v25, v26);
      (*(v10 + 56))(v45, 0, 1, v26);
      v46 = (*(ObjectType + 480))(v69, v45);
      sub_10002B894(v45, &unk_1009796E0, &unk_1007C02F0);
      v47 = *(v35 + OBJC_IVAR____TtC8AppStore29StoreCollectionViewController_navigationAccessories);
      *(v35 + OBJC_IVAR____TtC8AppStore29StoreCollectionViewController_navigationAccessories) = v46;

      v48 = [v35 traitCollection];
      v49 = sub_1000C3734(v47, v48, v46);

      if ((v49 & 1) == 0)
      {
        (*((swift_isaMask & *v35) + 0x1F0))(v50);
      }
    }

    else
    {
      type metadata accessor for SearchViewController(0);
      v51 = swift_dynamicCastClass();
      if (!v51)
      {
LABEL_25:

        sub_1001181EC(v19);
        return v24;
      }

      v52 = v51;
      v53 = OBJC_IVAR____TtC8AppStore20SearchViewController_prefersLargeTitle;
      *(v51 + OBJC_IVAR____TtC8AppStore20SearchViewController_prefersLargeTitle) = 1;
      v54 = v24;
      v55 = [v52 navigationItem];
      v56 = v55;
      if (v52[v53])
      {
        v57 = 3;
      }

      else
      {
        v57 = 2;
      }

      [v55 setLargeTitleDisplayMode:{v57, v67}];

      v58 = v68;
      (*(v10 + 16))(v68, v25, v26);
      (*(v10 + 56))(v58, 0, 1, v26);
      v59 = sub_100402C88(v69, v58);
      sub_10002B894(v58, &unk_1009796E0, &unk_1007C02F0);
      v60 = *&v52[OBJC_IVAR____TtC8AppStore20SearchViewController_navigationAccessories];
      *&v52[OBJC_IVAR____TtC8AppStore20SearchViewController_navigationAccessories] = v59;

      v61 = [v52 traitCollection];
      v62 = sub_1000C3734(v60, v61, v59);

      if ((v62 & 1) == 0)
      {
        sub_100400860();
      }
    }

    goto LABEL_25;
  }

  sub_10002B894(v15, &unk_1009796F0, &unk_1007BA400);
  if (qword_10096D120 != -1)
  {
    swift_once();
  }

  v21 = type metadata accessor for OSLogger();
  sub_1000056A8(v21, qword_1009CE218);
  sub_10002849C(&unk_100972A10, &qword_1007B1EF0);
  type metadata accessor for LogMessage();
  *(swift_allocObject() + 16) = xmmword_1007B1890;
  LogMessage.init(stringLiteral:)();
  v22 = v70;
  *(&v72 + 1) = v70;
  v23 = sub_1000056E0(&v71);
  (*(v10 + 16))(v23, v3, v22);
  static LogMessage.safe(_:)();
  sub_10002B894(&v71, &unk_1009711D0, &unk_1007B1A10);
  Logger.error(_:)();

  return 0;
}

uint64_t sub_1001F5BFC(uint64_t a1, uint64_t a2)
{
  v4 = sub_10002849C(&unk_100972A00, &unk_1007B3130);
  __chkstk_darwin(v4 - 8);
  v6 = &v10 - v5;
  v7 = sub_10002849C(&unk_100974490, &qword_1007B3DD0);
  BaseObjectGraph.injectIfAvailable<A>(_:)();
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    return sub_10002B894(v6, &unk_100972A00, &unk_1007B3130);
  }

  sub_1005F9AF4(a1, 1, a2, v6);

  return (*(v8 + 8))(v6, v7);
}

void sub_1001F5D40(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for LogMessage.StringInterpolation();
  v5 = [v1 viewControllers];
  if (!v5)
  {
    return;
  }

  v6 = v5;
  sub_100065AF0();
  v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v7 >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter() > a1)
    {
      goto LABEL_4;
    }

LABEL_19:

    if (qword_10096D120 != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for OSLogger();
    sub_1000056A8(v12, qword_1009CE218);
    sub_10002849C(&unk_100972A10, &qword_1007B1EF0);
    type metadata accessor for LogMessage();
    *(swift_allocObject() + 16) = xmmword_1007B10D0;
    LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v13._object = 0x80000001008075A0;
    v13._countAndFlagsBits = 0xD00000000000001ALL;
    LogMessage.StringInterpolation.appendLiteral(_:)(v13);
    v15[3] = &type metadata for Int;
    v15[0] = a1;
    LogMessage.StringInterpolation.appendInterpolation(safe:)();
    sub_10002B894(v15, &unk_1009711D0, &unk_1007B1A10);
    v14._countAndFlagsBits = 0;
    v14._object = 0xE000000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v14);
    LogMessage.init(stringInterpolation:)();
    Logger.info(_:)();

    return;
  }

  if (*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a1)
  {
    goto LABEL_19;
  }

LABEL_4:
  v8 = [v1 delegate];
  if (v8)
  {
    v9 = v8;
    if (([v8 respondsToSelector:"tabBarController:didSelectViewController:"] & 1) == 0)
    {

      goto LABEL_15;
    }

    if ((v7 & 0xC000000000000001) == 0)
    {
      if (a1 < 0)
      {
        __break(1u);
      }

      else if (*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10) > a1)
      {
        v10 = *(v7 + 8 * a1 + 32);
LABEL_10:
        v11 = v10;

        [v9 tabBarController:v2 didSelectViewController:v11];

LABEL_15:

        swift_unknownObjectRelease();
        return;
      }

      __break(1u);
      return;
    }

    v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_10;
  }
}

uint64_t sub_1001F610C(unsigned int *a1)
{
  v3 = sub_10002849C(&unk_100972A00, &unk_1007B3130);
  __chkstk_darwin(v3 - 8);
  v5 = &v29 - v4;
  v6 = type metadata accessor for ActionMetrics();
  __chkstk_darwin(v6 - 8);
  v7 = type metadata accessor for NavigationTab();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v29 - v12;
  v14 = sub_10002849C(&qword_100975528, &unk_1007BECC0);
  __chkstk_darwin(v14 - 8);
  v16 = &v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v17);
  v20 = &v29 - v19;
  (*(v8 + 104))(&v29 - v19, *a1, v7, v18);
  (*(v8 + 56))(v20, 0, 1, v7);
  v21 = *(v1 + OBJC_IVAR____TtC8AppStore21StoreTabBarController_objectGraph);
  if (v21)
  {
    sub_100031660(v20, v16, &qword_100975528, &unk_1007BECC0);
    if ((*(v8 + 48))(v16, 1, v7) == 1)
    {
      sub_10002B894(v20, &qword_100975528, &unk_1007BECC0);
      v22 = v16;
      v23 = &qword_100975528;
      v24 = &unk_1007BECC0;
    }

    else
    {
      (*(v8 + 32))(v13, v16, v7);
      (*(v8 + 16))(v10, v13, v7);

      static ActionMetrics.notInstrumented.getter();
      type metadata accessor for TabChangeAction();
      swift_allocObject();
      v25 = TabChangeAction.init(navigationTab:actions:popToRoot:presentationStyle:actionMetrics:)();
      v26 = sub_10002849C(&unk_100974490, &qword_1007B3DD0);
      BaseObjectGraph.injectIfAvailable<A>(_:)();
      v27 = *(v26 - 8);
      if ((*(v27 + 48))(v5, 1, v26) != 1)
      {
        sub_1005F9AF4(v25, 1, v21, v5);

        (*(v8 + 8))(v13, v7);
        sub_10002B894(v20, &qword_100975528, &unk_1007BECC0);
        return (*(v27 + 8))(v5, v26);
      }

      (*(v8 + 8))(v13, v7);
      sub_10002B894(v20, &qword_100975528, &unk_1007BECC0);
      v23 = &unk_100972A00;
      v24 = &unk_1007B3130;
      v22 = v5;
    }
  }

  else
  {
    v23 = &qword_100975528;
    v24 = &unk_1007BECC0;
    v22 = v20;
  }

  return sub_10002B894(v22, v23, v24);
}

void sub_1001F66A4()
{
  v1 = sub_10002849C(&unk_100972A00, &unk_1007B3130);
  __chkstk_darwin(v1 - 8);
  v3 = &v45 - v2;
  v4 = type metadata accessor for NavigationTab();
  v64 = *(v4 - 8);
  v65 = v4;
  __chkstk_darwin(v4);
  v6 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10002849C(&unk_100982AA0, qword_1007C0320);
  __chkstk_darwin(v7 - 8);
  v63 = &v45 - v8;
  v9 = type metadata accessor for SearchOrigin();
  v60 = *(v9 - 8);
  v61 = v9;
  __chkstk_darwin(v9);
  v62 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = type metadata accessor for FlowOrigin();
  v56 = *(v58 - 8);
  __chkstk_darwin(v58);
  v59 = &v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = type metadata accessor for FlowAnimationBehavior();
  v12 = *(v54 - 8);
  __chkstk_darwin(v54);
  v57 = &v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for FlowPresentationContext();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v55 = &v45 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for ActionMetrics();
  __chkstk_darwin(v17 - 8);
  v53 = &v45 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_10002849C(&unk_1009767C0, &unk_1007B1880);
  __chkstk_darwin(v19 - 8);
  v21 = &v45 - v20;
  v22 = sub_10002849C(&qword_100982460, &unk_1007B5C90);
  __chkstk_darwin(v22 - 8);
  v24 = &v45 - v23;
  v25 = type metadata accessor for FlowPage();
  __chkstk_darwin(v25);
  v28 = *(v0 + OBJC_IVAR____TtC8AppStore21StoreTabBarController_objectGraph);
  if (v28)
  {
    v71 = 0;
    v69 = 0u;
    v70 = 0u;
    (*(v27 + 104))(&v45 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0), enum case for FlowPage.search(_:));
    v29 = type metadata accessor for URL();
    v52 = v3;
    v51 = v6;
    v30 = v29;
    v31 = *(v29 - 8);
    v46 = *(v31 + 56);
    v47 = v31 + 56;
    v46(v24, 1, 1, v29);
    v32 = type metadata accessor for ReferrerData();
    v66 = v28;
    v49 = v32;
    v33 = *(v32 - 8);
    v48 = *(v33 + 56);
    v50 = v33 + 56;
    v48(v21, 1, 1, v32);
    v67 = 0u;
    v68 = 0u;

    static ActionMetrics.notInstrumented.getter();
    (*(v15 + 104))(v55, enum case for FlowPresentationContext.infer(_:), v14);
    (*(v12 + 104))(v57, enum case for FlowAnimationBehavior.infer(_:), v54);
    (*(v56 + 104))(v59, enum case for FlowOrigin.inapp(_:), v58);
    static FlowActionPresentation.stackPush.getter();
    type metadata accessor for FlowAction();
    swift_allocObject();
    v34 = FlowAction.init(id:title:artwork:page:url:referrerUrl:referrerData:pageData:actionMetrics:presentationContext:animationBehavior:origin:presentationStyle:presentation:)();
    v35 = v30;
    v36 = v52;
    v46(v24, 1, 1, v35);
    (*(v60 + 104))(v62, enum case for SearchOrigin.keyboardShortcut(_:), v61);
    v37 = type metadata accessor for SearchEntity();
    (*(*(v37 - 8) + 56))(v63, 1, 1, v37);
    static ActionMetrics.notInstrumented.getter();
    v38 = v66;
    v48(v21, 1, 1, v49);
    v39 = type metadata accessor for SearchAction();
    swift_allocObject();
    v40 = SearchAction.init(title:term:url:origin:source:entity:spellCheckEnabled:excludedTerms:originatingTerm:prefixTerm:guidedSearchTokens:guidedSearchOptimizationTerm:actionMetrics:referrerData:)();
    *(&v70 + 1) = v39;
    *&v69 = v40;
    FlowAction.setPageData(_:)();
    sub_10002B894(&v69, &unk_1009711D0, &unk_1007B1A10);
    (*(v64 + 104))(v51, enum case for NavigationTab.search(_:), v65);
    sub_10002849C(&qword_100973210, qword_1007B0BB0);
    v41 = swift_allocObject();
    *(v41 + 16) = xmmword_1007B0B70;
    *(v41 + 32) = v34;

    static ActionMetrics.notInstrumented.getter();
    type metadata accessor for TabChangeAction();
    swift_allocObject();
    v42 = TabChangeAction.init(navigationTab:actions:popToRoot:presentationStyle:actionMetrics:)();
    v43 = sub_10002849C(&unk_100974490, &qword_1007B3DD0);
    BaseObjectGraph.injectIfAvailable<A>(_:)();
    v44 = *(v43 - 8);
    if ((*(v44 + 48))(v36, 1, v43) == 1)
    {

      sub_10002B894(v36, &unk_100972A00, &unk_1007B3130);
    }

    else
    {
      sub_1005F9AF4(v42, 1, v38, v36);

      (*(v44 + 8))(v36, v43);
    }
  }
}

void sub_1001F70A4()
{
  v1 = v0;
  v2 = sub_10002849C(&unk_100972A00, &unk_1007B3130);
  __chkstk_darwin(v2 - 8);
  v49 = &v40 - v3;
  v4 = type metadata accessor for FlowOrigin();
  v45 = *(v4 - 8);
  v46 = v4;
  __chkstk_darwin(v4);
  v47 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = type metadata accessor for FlowAnimationBehavior();
  v6 = *(v44 - 8);
  __chkstk_darwin(v44);
  v8 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for FlowPresentationContext();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v48 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v40 - v13;
  v15 = type metadata accessor for ActionMetrics();
  __chkstk_darwin(v15 - 8);
  v16 = sub_10002849C(&unk_1009767C0, &unk_1007B1880);
  __chkstk_darwin(v16 - 8);
  v18 = &v40 - v17;
  v19 = sub_10002849C(&qword_100982460, &unk_1007B5C90);
  __chkstk_darwin(v19 - 8);
  v21 = &v40 - v20;
  v22 = type metadata accessor for FlowPage();
  __chkstk_darwin(v22);
  v25 = *(v1 + OBJC_IVAR____TtC8AppStore21StoreTabBarController_objectGraph);
  if (v25)
  {
    v54 = 0;
    v52 = 0u;
    v53 = 0u;
    (*(v24 + 104))(&v40 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0), enum case for FlowPage.account(_:));
    v26 = type metadata accessor for URL();
    (*(*(v26 - 8) + 56))(v21, 1, 1, v26);
    v27 = type metadata accessor for ReferrerData();
    (*(*(v27 - 8) + 56))(v18, 1, 1, v27);
    v50 = 0u;
    v51 = 0u;

    static ActionMetrics.notInstrumented.getter();
    v28 = *(v10 + 104);
    v42 = v10 + 104;
    v43 = v9;
    v41 = v28;
    v28(v14, enum case for FlowPresentationContext.infer(_:), v9);
    (*(v6 + 104))(v8, enum case for FlowAnimationBehavior.infer(_:), v44);
    (*(v45 + 104))(v47, enum case for FlowOrigin.inapp(_:), v46);
    static FlowActionPresentation.stackPush.getter();
    type metadata accessor for FlowAction();
    swift_allocObject();
    v29 = FlowAction.init(id:title:artwork:page:url:referrerUrl:referrerData:pageData:actionMetrics:presentationContext:animationBehavior:origin:presentationStyle:presentation:)();
    v30 = ASKDeviceTypeGetCurrent();
    v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v33 = v32;
    if (v31 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v33 == v34)
    {

      v35 = &enum case for FlowPresentationContext.presentModalFormSheet(_:);
    }

    else
    {
      v36 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v35 = &enum case for FlowPresentationContext.presentModal(_:);
      if (v36)
      {
        v35 = &enum case for FlowPresentationContext.presentModalFormSheet(_:);
      }
    }

    v37 = v49;
    v41(v48, *v35, v43);
    FlowAction.presentationContext.setter();
    v38 = sub_10002849C(&unk_100974490, &qword_1007B3DD0);
    BaseObjectGraph.injectIfAvailable<A>(_:)();
    v39 = *(v38 - 8);
    if ((*(v39 + 48))(v37, 1, v38) == 1)
    {

      sub_10002B894(v37, &unk_100972A00, &unk_1007B3130);
    }

    else
    {
      sub_1005F9C8C(v29, 1, v25, v37);

      (*(v39 + 8))(v37, v38);
    }
  }
}

void sub_1001F78B0(uint64_t (*a1)(void, __n128), uint64_t (*a2)(uint64_t))
{
  v5 = sub_10002849C(&unk_100972A00, &unk_1007B3130);
  v6 = __chkstk_darwin(v5 - 8);
  v8 = &v14 - v7;
  v9 = *(v2 + OBJC_IVAR____TtC8AppStore21StoreTabBarController_objectGraph);
  if (v9)
  {
    a1(0, v6);
    swift_allocObject();

    v11 = a2(v10);
    v12 = sub_10002849C(&unk_100974490, &qword_1007B3DD0);
    BaseObjectGraph.injectIfAvailable<A>(_:)();
    v13 = *(v12 - 8);
    if ((*(v13 + 48))(v8, 1, v12) == 1)
    {

      sub_10002B894(v8, &unk_100972A00, &unk_1007B3130);
    }

    else
    {
      sub_1005F9AF4(v11, 1, v9, v8);

      (*(v13 + 8))(v8, v12);
    }
  }
}

void sub_1001F7B88()
{
  v0 = sub_10002849C(&unk_100972A00, &unk_1007B3130);
  __chkstk_darwin(v0 - 8);
  v52 = &v42 - v1;
  v50 = type metadata accessor for FlowOrigin();
  v48 = *(v50 - 8);
  __chkstk_darwin(v50);
  v51 = &v42 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for FlowAnimationBehavior();
  v45 = *(v3 - 8);
  v46 = v3;
  __chkstk_darwin(v3);
  v49 = &v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for FlowPresentationContext();
  v43 = *(v5 - 8);
  v44 = v5;
  __chkstk_darwin(v5);
  v47 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ActionMetrics();
  __chkstk_darwin(v7 - 8);
  v8 = sub_10002849C(&unk_1009767C0, &unk_1007B1880);
  __chkstk_darwin(v8 - 8);
  v10 = &v42 - v9;
  v11 = sub_10002849C(&qword_100982460, &unk_1007B5C90);
  __chkstk_darwin(v11 - 8);
  v13 = &v42 - v12;
  v14 = type metadata accessor for FlowPage();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v42 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = ASKBuildTypeGetCurrent();
  v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v21 = v20;
  if (v19 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v21 == v22)
  {
    goto LABEL_3;
  }

  v23 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v23)
  {
    goto LABEL_5;
  }

  v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v33 = v32;
  if (v31 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v33 == v34)
  {
LABEL_3:

    goto LABEL_6;
  }

  v35 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v35)
  {
LABEL_5:

LABEL_6:
    v24 = *(v53 + OBJC_IVAR____TtC8AppStore21StoreTabBarController_objectGraph);
    if (v24)
    {
      v58 = 0;
      v56 = 0u;
      v57 = 0u;
      (*(v15 + 104))(v17, enum case for FlowPage.debugSettings(_:), v14);
      v25 = type metadata accessor for URL();
      (*(*(v25 - 8) + 56))(v13, 1, 1, v25);
      v26 = type metadata accessor for ReferrerData();
      (*(*(v26 - 8) + 56))(v10, 1, 1, v26);
      v54 = 0u;
      v55 = 0u;

      static ActionMetrics.notInstrumented.getter();
      (*(v43 + 104))(v47, enum case for FlowPresentationContext.presentModalFormSheet(_:), v44);
      (*(v45 + 104))(v49, enum case for FlowAnimationBehavior.infer(_:), v46);
      (*(v48 + 104))(v51, enum case for FlowOrigin.inapp(_:), v50);
      static FlowActionPresentation.stackPush.getter();
      type metadata accessor for FlowAction();
      swift_allocObject();
      v27 = FlowAction.init(id:title:artwork:page:url:referrerUrl:referrerData:pageData:actionMetrics:presentationContext:animationBehavior:origin:presentationStyle:presentation:)();
      v28 = sub_10002849C(&unk_100974490, &qword_1007B3DD0);
      v29 = v52;
      BaseObjectGraph.injectIfAvailable<A>(_:)();
      v30 = *(v28 - 8);
      if ((*(v30 + 48))(v29, 1, v28) == 1)
      {

        sub_10002B894(v29, &unk_100972A00, &unk_1007B3130);
      }

      else
      {
        sub_1005F9C8C(v27, 1, v24, v29);

        (*(v30 + 8))(v29, v28);
      }
    }

    return;
  }

  v36 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v38 = v37;
  if (v36 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v38 == v39)
  {
  }

  else
  {
    v40 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v40 & 1) == 0)
    {
      return;
    }
  }

  type metadata accessor for LocalPreferences();
  static LocalPreferences.currentApplication.getter();
  if (qword_10096E988 != -1)
  {
    swift_once();
  }

  v41 = sub_10002849C(&qword_100979740, &qword_1007D00E0);
  sub_1000056A8(v41, qword_1009D2A68);
  Preferences.subscript.getter();

  if (v56 != 2 && (v56 & 1) != 0)
  {
    goto LABEL_6;
  }
}

BOOL sub_1001F84C0(uint64_t a1, uint64_t a2)
{
  v40 = a2;
  v3 = sub_10002849C(&qword_100979710, &qword_1007BB7C0);
  __chkstk_darwin(v3 - 8);
  v41 = &v38 - v4;
  v5 = type metadata accessor for Date();
  v42 = *(v5 - 8);
  v43 = v5;
  __chkstk_darwin(v5);
  v39 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v38 = &v38 - v8;
  v9 = type metadata accessor for TimeZone();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10002849C(&qword_100979728, &qword_1007C0318);
  v14 = v13 - 8;
  __chkstk_darwin(v13);
  v16 = &v38 - v15;
  v17 = sub_10002849C(&qword_100979718, &qword_1007C0310);
  __chkstk_darwin(v17 - 8);
  v19 = &v38 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v22 = &v38 - v21;
  static TimeZone.current.getter();
  (*(v10 + 56))(v22, 0, 1, v9);
  v23 = *(v14 + 56);
  sub_100031660(v22, v16, &qword_100979718, &qword_1007C0310);
  sub_100031660(a1, &v16[v23], &qword_100979718, &qword_1007C0310);
  v24 = *(v10 + 48);
  if (v24(v16, 1, v9) == 1)
  {
    sub_10002B894(v22, &qword_100979718, &qword_1007C0310);
    if (v24(&v16[v23], 1, v9) == 1)
    {
      sub_10002B894(v16, &qword_100979718, &qword_1007C0310);
      goto LABEL_8;
    }

LABEL_6:
    v25 = &qword_100979728;
    v26 = &qword_1007C0318;
    v27 = v16;
LABEL_10:
    sub_10002B894(v27, v25, v26);
    return 0;
  }

  sub_100031660(v16, v19, &qword_100979718, &qword_1007C0310);
  if (v24(&v16[v23], 1, v9) == 1)
  {
    sub_10002B894(v22, &qword_100979718, &qword_1007C0310);
    (*(v10 + 8))(v19, v9);
    goto LABEL_6;
  }

  (*(v10 + 32))(v12, &v16[v23], v9);
  sub_1001F8A44(&unk_100979730, &type metadata accessor for TimeZone, &protocol conformance descriptor for TimeZone);
  v28 = dispatch thunk of static Equatable.== infix(_:_:)();
  v29 = *(v10 + 8);
  v29(v12, v9);
  sub_10002B894(v22, &qword_100979718, &qword_1007C0310);
  v29(v19, v9);
  sub_10002B894(v16, &qword_100979718, &qword_1007C0310);
  if ((v28 & 1) == 0)
  {
    return 0;
  }

LABEL_8:
  v30 = v41;
  sub_100031660(v40, v41, &qword_100979710, &qword_1007BB7C0);
  v32 = v42;
  v31 = v43;
  if ((*(v42 + 48))(v30, 1, v43) == 1)
  {
    v25 = &qword_100979710;
    v26 = &qword_1007BB7C0;
    v27 = v30;
    goto LABEL_10;
  }

  v34 = v38;
  (*(v32 + 32))(v38, v30, v31);
  v35 = v39;
  Date.init()();
  v36 = Date.hasPassed(hourOfDay:since:)();
  v37 = *(v32 + 8);
  v37(v35, v31);
  v37(v34, v31);
  return (v36 & 1) == 0;
}

uint64_t sub_1001F8A44(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1001F8BE8(void *a1)
{
  v3 = String._bridgeToObjectiveC()();
  v4 = [a1 dequeueReusableCellWithIdentifier:v3];

  if (!v4)
  {
    v5 = objc_allocWithZone(UITableViewCell);
    v6 = String._bridgeToObjectiveC()();
    v4 = [v5 initWithStyle:0 reuseIdentifier:v6];
  }

  v7 = *(v1 + OBJC_IVAR____TtC8AppStore33GladiatorValidationViewController_ruleNames);
  v8 = v4;
  result = IndexPath.row.getter();
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (result >= *(v7 + 16))
  {
LABEL_10:
    __break(1u);
    return result;
  }

  v10 = [v8 textLabel];

  if (v10)
  {
    v11 = String._bridgeToObjectiveC()();

    [v10 setText:v11];
  }

  else
  {
  }

  return v8;
}

void sub_1001F903C()
{
  v1 = v0;
  v2 = type metadata accessor for RuleIdentifier();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *&v0[OBJC_IVAR____TtC8AppStore33GladiatorValidationViewController_rules];
  v7 = IndexPath.row.getter();
  if ((v7 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v7 >= *(v6 + 16))
  {
LABEL_8:
    __break(1u);
    return;
  }

  (*(v3 + 16))(v5, v6 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v7, v2);
  v8 = dispatch thunk of Gladiator.rule(named:)();
  v9 = *&v1[OBJC_IVAR____TtC8AppStore33GladiatorValidationViewController_events];
  v10 = type metadata accessor for RuleResultsViewController();
  v11 = objc_allocWithZone(v10);
  *&v11[OBJC_IVAR____TtC8AppStore25RuleResultsViewController_textView] = 0;
  *&v11[OBJC_IVAR____TtC8AppStore25RuleResultsViewController_rule] = v8;
  *&v11[OBJC_IVAR____TtC8AppStore25RuleResultsViewController_events] = v9;
  v15.receiver = v11;
  v15.super_class = v10;

  v12 = objc_msgSendSuper2(&v15, "initWithNibName:bundle:", 0, 0);
  v13 = [v1 navigationController];
  if (v13)
  {
    v14 = v13;
    [v13 pushViewController:v12 animated:1];

    (*(v3 + 8))(v5, v2);
  }

  else
  {
    (*(v3 + 8))(v5, v2);
  }
}

unint64_t sub_1001F9284()
{
  result = qword_100979790;
  if (!qword_100979790)
  {
    type metadata accessor for ClearSearchHistoryAction();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100979790);
  }

  return result;
}

uint64_t sub_1001F92DC()
{
  v0 = type metadata accessor for ActionOutcome();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for OnDeviceSearchHistoryManager();
  BaseObjectGraph.inject<A>(_:)();
  v4 = v7[1];
  OnDeviceSearchHistoryManager.clearData()();
  sub_10002849C(&qword_1009764A0, &unk_1007B6230);
  (*(v1 + 104))(v3, enum case for ActionOutcome.performed(_:), v0);
  v5 = Promise.__allocating_init(value:)();

  return v5;
}

uint64_t sub_1001F93FC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v64 = a2;
  ObjectType = swift_getObjectType();
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v74 = *(v5 - 8);
  v75 = v5;
  __chkstk_darwin(v5);
  v72 = &v55 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = type metadata accessor for DispatchQoS();
  v71 = *(v73 - 8);
  __chkstk_darwin(v73);
  v70 = &v55 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = type metadata accessor for PerformanceTestCase();
  v62 = *(v63 - 8);
  __chkstk_darwin(v63);
  v60 = v8;
  v61 = &v55 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = type metadata accessor for DispatchTime();
  v68 = *(v76 - 8);
  __chkstk_darwin(v76);
  v59 = &v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v66 = &v55 - v11;
  v12 = type metadata accessor for LogMessage.StringInterpolation();
  __chkstk_darwin(v12 - 8);
  __chkstk_darwin(v13);
  v14 = type metadata accessor for OSLogger();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v55 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = PerformanceTestCase.searchTerm.getter();
  v69 = v3;
  sub_100400BA0(v18, v19);

  if (qword_10096D140 != -1)
  {
    swift_once();
  }

  v20 = sub_1000056A8(v14, qword_1009CE278);
  v21 = *(v15 + 16);
  v58 = v20;
  v21(v17);
  v22 = sub_10002849C(&unk_100972A10, &qword_1007B1EF0);
  v23 = *(type metadata accessor for LogMessage() - 8);
  v24 = ((*(v23 + 80) + 32) & ~*(v23 + 80)) + *(v23 + 72);
  v57 = v22;
  v56 = v24;
  v25 = swift_allocObject();
  v55 = xmmword_1007B10D0;
  *(v25 + 16) = xmmword_1007B10D0;
  LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v26._countAndFlagsBits = 0x2074736554;
  v26._object = 0xE500000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v26);
  v27 = PerformanceTestCase.name.getter();
  v80 = &type metadata for String;
  aBlock = v27;
  v78 = v28;
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10003D444(&aBlock);
  v29._object = 0x8000000100807770;
  v29._countAndFlagsBits = 0xD00000000000001BLL;
  LogMessage.StringInterpolation.appendLiteral(_:)(v29);
  v65 = a1;
  v30 = PerformanceTestCase.searchTerm.getter();
  if (v31)
  {
    v32 = &type metadata for String;
  }

  else
  {
    v30 = 0;
    v32 = 0;
    v79 = 0;
  }

  aBlock = v30;
  v78 = v31;
  v80 = v32;
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10003D444(&aBlock);
  v33._countAndFlagsBits = 96;
  v33._object = 0xE100000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v33);
  LogMessage.init(stringInterpolation:)();
  Logger.info(_:)();

  (*(v15 + 8))(v17, v14);
  *(swift_allocObject() + 16) = v55;
  LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v34._countAndFlagsBits = 0x2074736554;
  v34._object = 0xE500000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v34);
  v35 = v65;
  v36 = PerformanceTestCase.name.getter();
  v80 = &type metadata for String;
  aBlock = v36;
  v78 = v37;
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10003D444(&aBlock);
  v38._countAndFlagsBits = 0xD00000000000003FLL;
  v38._object = 0x8000000100807790;
  LogMessage.StringInterpolation.appendLiteral(_:)(v38);
  LogMessage.init(stringInterpolation:)();
  Logger.info(_:)();

  sub_100005744(0, &qword_1009729E0, OS_dispatch_queue_ptr);
  v39 = static OS_dispatch_queue.main.getter();
  v40 = v59;
  static DispatchTime.now()();
  v41 = v66;
  + infix(_:_:)();
  v68 = *(v68 + 8);
  (v68)(v40, v76);
  sub_10002C0AC(v64, &v83);
  v42 = v62;
  v43 = v61;
  v44 = v63;
  (*(v62 + 16))(v61, v35, v63);
  v45 = (*(v42 + 80) + 64) & ~*(v42 + 80);
  v46 = (v60 + v45 + 7) & 0xFFFFFFFFFFFFFFF8;
  v47 = swift_allocObject();
  v48 = v69;
  *(v47 + 16) = v69;
  sub_100005A38(&v83, v47 + 24);
  (*(v42 + 32))(v47 + v45, v43, v44);
  *(v47 + v46) = ObjectType;
  v81 = sub_1001FA0D4;
  v82 = v47;
  aBlock = _NSConcreteStackBlock;
  v78 = 1107296256;
  v79 = sub_100007A08;
  v80 = &unk_1008B9010;
  v49 = _Block_copy(&aBlock);
  v50 = v48;

  v51 = v70;
  static DispatchQoS.unspecified.getter();
  aBlock = _swiftEmptyArrayStorage;
  sub_10002D150();
  sub_10002849C(&unk_1009729F0, &unk_1007B3D80);
  sub_1000079A4();
  v52 = v72;
  v53 = v75;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
  _Block_release(v49);

  (*(v74 + 8))(v52, v53);
  (*(v71 + 8))(v51, v73);
  return (v68)(v41, v76);
}

void sub_1001F9CE0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for LogMessage.StringInterpolation();
  v9 = [*(*(a1 + OBJC_IVAR____TtC8AppStore20SearchViewController_searchResultsContainerViewController) + OBJC_IVAR____TtC8AppStore36SearchResultsContainerViewController_activeSearchSectionViewController) collectionView];
  sub_10002A400(a2, a2[3]);
  if (v9)
  {
    v18 = v9;
    if (sub_10021DCD4(v18))
    {
      [v18 setContentOffset:{0.0, 0.0}];

      if (qword_10096D140 != -1)
      {
        swift_once();
      }

      v10 = type metadata accessor for OSLogger();
      sub_1000056A8(v10, qword_1009CE278);
      sub_10002849C(&unk_100972A10, &qword_1007B1EF0);
      type metadata accessor for LogMessage();
      *(swift_allocObject() + 16) = xmmword_1007B10D0;
      LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
      v11._countAndFlagsBits = 0x2074736554;
      v11._object = 0xE500000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v11);
      v12 = PerformanceTestCase.name.getter();
      MetatypeMetadata = &type metadata for String;
      v19[0] = v12;
      v19[1] = v13;
      LogMessage.StringInterpolation.appendInterpolation(safe:)();
      sub_10003D444(v19);
      v14._countAndFlagsBits = 0xD000000000000013;
      v14._object = 0x8000000100807810;
      LogMessage.StringInterpolation.appendLiteral(_:)(v14);
      MetatypeMetadata = swift_getMetatypeMetadata();
      v19[0] = a4;
      LogMessage.StringInterpolation.appendInterpolation(safe:)();
      sub_10003D444(v19);
      v15._countAndFlagsBits = 0xD00000000000002BLL;
      v15._object = 0x8000000100807830;
      LogMessage.StringInterpolation.appendLiteral(_:)(v15);
      MetatypeMetadata = sub_100005744(0, &qword_100978E50, UICollectionView_ptr);
      v19[0] = v18;
      v16 = v18;
      LogMessage.StringInterpolation.appendInterpolation(safe:)();
      sub_10003D444(v19);
      v17._countAndFlagsBits = 46;
      v17._object = 0xE100000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v17);
      LogMessage.init(stringInterpolation:)();
      Logger.info(_:)();

      UIScrollView.perform(_:using:)(a3, a2);
    }

    else
    {

      sub_10002A400(a2, a2[3]);
      dispatch thunk of PerformanceTestRunner.failed(_:reason:)();
    }
  }

  else
  {
    dispatch thunk of PerformanceTestRunner.failed(_:reason:)();
  }
}

void sub_1001FA0D4()
{
  v1 = *(type metadata accessor for PerformanceTestCase() - 8);
  v2 = (*(v1 + 80) + 64) & ~*(v1 + 80);
  v3 = *(v0 + 16);
  v4 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_1001F9CE0(v3, (v0 + 24), v0 + v2, v4);
}

uint64_t sub_1001FA168()
{
  result = JUScreenClassHasRoundedCorners();
  v1 = 8.0;
  if (result)
  {
    v1 = 27.0;
  }

  qword_100979798 = *&v1;
  return result;
}

BOOL sub_1001FA198()
{
  v1 = *(v0 + 16);
  [v1 frame];
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = [v1 superview];
  if (v10)
  {
    v65 = v9;
    v66 = v7;
    v68 = v5;
    v70 = v3;
    v11 = v10;
    [v10 bounds];
    v13 = v12;
    v15 = v14;
    v17 = v16;
    v19 = v18;

    [v1 frame];
    v21 = v20;
    v23 = v22;
    v25 = v24;
    v27 = v26;
    v72.origin.x = v13;
    v72.origin.y = v15;
    v72.size.width = v17;
    v72.size.height = v19;
    Height = CGRectGetHeight(v72);
    v73.origin.x = v21;
    v73.origin.y = v23;
    v73.size.width = v25;
    v73.size.height = v27;
    v29 = Height - CGRectGetHeight(v73);
    if (qword_10096D3C8 != -1)
    {
      swift_once();
    }

    v30 = v29 - *&qword_100979798;
    v5 = v68;
    v3 = v70;
    v9 = v65;
    v7 = v66;
  }

  else
  {
    v21 = 0.0;
    v30 = 0.0;
    v25 = 0.0;
    v27 = 0.0;
  }

  v74.origin.x = v3;
  v74.origin.y = v5;
  v74.size.width = v7;
  v74.size.height = v9;
  v31 = v21;
  v32 = v25;
  v33 = v27;
  if (CGRectEqualToRect(v74, *(&v30 - 1)))
  {
    return 0;
  }

  [v1 frame];
  v36 = v35;
  v38 = v37;
  v40 = v39;
  v42 = v41;
  v43 = [v1 superview];
  if (v43)
  {
    v67 = v40;
    v69 = v38;
    v71 = v36;
    v44 = v43;
    [v43 bounds];
    v46 = v45;
    v48 = v47;
    v50 = v49;
    v52 = v51;

    [v1 frame];
    v54 = v53;
    v56 = v55;
    v58 = v57;
    v75.origin.x = v46;
    v75.origin.y = v48;
    v75.size.width = v50;
    v75.size.height = v52;
    v59 = CGRectGetHeight(v75);
    if (qword_10096D3C8 != -1)
    {
      v64 = v59;
      swift_once();
      v59 = v64;
    }

    v60 = v59 + *&qword_100979798;
    v38 = v69;
    v36 = v71;
    v40 = v67;
  }

  else
  {
    v54 = 0;
    v60 = 0.0;
    v56 = 0;
    v58 = 0;
  }

  v76.origin.x = v36;
  v76.origin.y = v38;
  v76.size.width = v40;
  v76.size.height = v42;
  v61 = v54;
  v62 = v56;
  v63 = v58;
  return !CGRectEqualToRect(v76, *(&v60 - 1));
}

void sub_1001FA430(char a1, char a2)
{
  if (*(v2 + 72) == (a1 & 1) && !sub_1001FA198())
  {
    return;
  }

  v5 = *(v2 + 16);
  v6 = [v5 superview];
  if (a1)
  {
    if (v6)
    {
      v7 = v6;
      [v6 bounds];
      v9 = v8;
      v11 = v10;
      v13 = v12;
      v15 = v14;

      [v5 frame];
      v17 = v16;
      v19 = v18;
      v21 = v20;
      v23 = v22;
      v48.origin.x = v9;
      v48.origin.y = v11;
      v48.size.width = v13;
      v48.size.height = v15;
      Height = CGRectGetHeight(v48);
      v49.origin.x = v17;
      v49.origin.y = v19;
      v49.size.width = v21;
      v49.size.height = v23;
      v25 = Height - CGRectGetHeight(v49);
      if (qword_10096D3C8 != -1)
      {
        swift_once();
      }

      v26 = v25 - *&qword_100979798;
      goto LABEL_13;
    }
  }

  else if (v6)
  {
    v27 = v6;
    [v6 bounds];
    v29 = v28;
    v31 = v30;
    v33 = v32;
    v35 = v34;

    [v5 frame];
    v17 = v36;
    v21 = v37;
    v23 = v38;
    v50.origin.x = v29;
    v50.origin.y = v31;
    v50.size.width = v33;
    v50.size.height = v35;
    v39 = CGRectGetHeight(v50);
    if (qword_10096D3C8 != -1)
    {
      v46 = v39;
      swift_once();
      v39 = v46;
    }

    v26 = v39 + *&qword_100979798;
    goto LABEL_13;
  }

  v17 = 0.0;
  v26 = 0.0;
  v21 = 0.0;
  v23 = 0.0;
LABEL_13:
  v40 = swift_allocObject();
  *(v40 + 16) = v2;
  *(v40 + 24) = v17;
  *(v40 + 32) = v26;
  *(v40 + 40) = v21;
  *(v40 + 48) = v23;
  if (a2)
  {
    v41 = objc_opt_self();
    v47[4] = sub_1001FA944;
    v47[5] = v40;
    v47[0] = _NSConcreteStackBlock;
    v47[1] = 1107296256;
    v47[2] = sub_100007A08;
    v47[3] = &unk_1008B9060;
    v42 = _Block_copy(v47);

    [v41 _animateUsingSpringWithTension:1 friction:v42 interactive:0 animations:120.0 completion:12.0];
    _Block_release(v42);
  }

  else
  {

    [v5 setFrame:{v17, v26, v21, v23}];
  }

  v43 = a1 & 1;
  *(v2 + 72) = a1 & 1;
  v44 = *(v2 + 32);
  if (v44)
  {
    v45 = *(v2 + 40);

    v44(v43);

    sub_10001F63C(v44, v45);
  }

  else
  {
  }
}

void sub_1001FA78C(char a1)
{
  v3 = *(v1 + 24);
  v4 = [v3 traitCollection];
  v5 = [v4 preferredContentSizeCategory];

  LOBYTE(v4) = UIContentSizeCategory.isAccessibilityCategory.getter();
  if (v4 & 1) != 0 || ([v3 contentSize], v9 = v8, objc_msgSend(v3, "bounds"), v10 = v9 - CGRectGetHeight(v15) - *(v1 + 48), objc_msgSend(v3, "bounds"), v10 < CGRectGetHeight(v16)) && (type metadata accessor for HostProcessIdentifier(), v11 = static HostProcessIdentifier.shared.getter(), v12 = dispatch thunk of HostProcessIdentifier.isProcessRunningInCompanionApp()(), v11, (v12))
  {
    v6 = 0;
    v7 = 0;
  }

  else
  {
    [v3 contentOffset];
    v6 = v10 > v13 && v13 > 0.0;
    v7 = a1 & 1;
  }

  sub_1001FA430(v6, v7);
}

uint64_t sub_1001FA8D0()
{
  sub_10001F63C(*(v0 + 32), *(v0 + 40));

  return swift_deallocClassInstance();
}

unint64_t sub_1001FA9A0()
{
  result = qword_1009798E8;
  if (!qword_1009798E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009798E8);
  }

  return result;
}

unint64_t sub_1001FA9F8()
{
  result = qword_1009798F0;
  if (!qword_1009798F0)
  {
    type metadata accessor for StringSearchCriteria();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009798F0);
  }

  return result;
}

uint64_t sub_1001FAA50()
{
  v0 = type metadata accessor for LocalizedStringResource();
  sub_100005644(v0, qword_1009CE890);
  sub_1000056A8(v0, qword_1009CE890);
  return LocalizedStringResource.init(stringLiteral:)();
}

uint64_t sub_1001FAAB4()
{
  sub_10002849C(&qword_100979940, qword_1007C06F0);
  v0 = type metadata accessor for StringSearchScope();
  v1 = *(v0 - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1007B10D0;
  result = (*(v1 + 104))(v3 + v2, enum case for StringSearchScope.general(_:), v0);
  qword_1009CE8A8 = v3;
  return result;
}

uint64_t sub_1001FAB98(uint64_t a1, uint64_t a2)
{
  v2[6] = a1;
  v2[7] = a2;
  v3 = type metadata accessor for BootstrapPhase();
  v2[8] = v3;
  v2[9] = *(v3 - 8);
  v2[10] = swift_task_alloc();
  v4 = type metadata accessor for StringSearchCriteria();
  v2[11] = v4;
  v2[12] = *(v4 - 8);
  v2[13] = swift_task_alloc();
  type metadata accessor for LogMessage.StringInterpolation();
  v2[14] = swift_task_alloc();
  type metadata accessor for MainActor();
  v2[15] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1001FAD14, v6, v5);
}

uint64_t sub_1001FAD14()
{

  if (qword_10096D120 != -1)
  {
    swift_once();
  }

  v1 = v0[13];
  v2 = v0[12];
  v20 = v0[11];
  v3 = type metadata accessor for OSLogger();
  sub_1000056A8(v3, qword_1009CE218);
  sub_10002849C(&unk_100972A10, &qword_1007B1EF0);
  type metadata accessor for LogMessage();
  *(swift_allocObject() + 16) = xmmword_1007B10D0;
  LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v4._object = 0x8000000100807920;
  v4._countAndFlagsBits = 0xD000000000000025;
  LogMessage.StringInterpolation.appendLiteral(_:)(v4);
  IntentParameter.wrappedValue.getter();
  v5 = StringSearchCriteria.term.getter();
  v7 = v6;
  (*(v2 + 8))(v1, v20);
  v0[5] = &type metadata for String;
  v0[2] = v5;
  v0[3] = v7;
  LogMessage.StringInterpolation.appendInterpolation(sensitive:)();
  sub_10002B894((v0 + 2), &unk_1009711D0, &unk_1007B1A10);
  v8._countAndFlagsBits = 0;
  v8._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v8);
  LogMessage.init(stringInterpolation:)();
  Logger.info(_:)();

  v9 = [objc_opt_self() sharedApplication];
  v10 = [v9 delegate];

  if (v10)
  {
    type metadata accessor for AppDelegate();
    v11 = swift_dynamicCastClass();
    if (v11)
    {
      v12 = v11;
      v14 = v0[9];
      v13 = v0[10];
      v16 = v0[7];
      v15 = v0[8];
      v17 = swift_allocObject();
      *(v17 + 16) = v12;
      *(v17 + 24) = v16;
      (*(v14 + 104))(v13, enum case for BootstrapPhase.onboarding(_:), v15);
      swift_unknownObjectRetain();

      BootstrapPendingClosuresHandler.performClosure(after:priority:canPerformImmediately:name:isStartup:closure:)();

      (*(v14 + 8))(v13, v15);
      static IntentResult.result<>()();
      swift_unknownObjectRelease();
      goto LABEL_8;
    }

    swift_unknownObjectRelease();
  }

  *(swift_allocObject() + 16) = xmmword_1007B10D0;
  LogMessage.init(stringLiteral:)();
  Logger.error(_:)();

  static IntentResult.result<>()();
LABEL_8:

  v18 = v0[1];

  return v18();
}

double sub_1001FB128(uint64_t a1, uint64_t a2)
{
  v72 = a2;
  v3 = sub_10002849C(&unk_100972A00, &unk_1007B3130);
  __chkstk_darwin(v3 - 8);
  v5 = v53 - v4;
  v6 = type metadata accessor for NavigationTab();
  v75 = *(v6 - 8);
  v76 = v6;
  __chkstk_darwin(v6);
  v8 = v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10002849C(&unk_100982AA0, qword_1007C0320);
  __chkstk_darwin(v9 - 8);
  v74 = v53 - v10;
  v11 = type metadata accessor for SearchOrigin();
  v70 = *(v11 - 8);
  v71 = v11;
  __chkstk_darwin(v11);
  v73 = v53 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for StringSearchCriteria();
  v68 = *(v13 - 8);
  v69 = v13;
  __chkstk_darwin(v13);
  v67 = v53 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = type metadata accessor for FlowOrigin();
  v65 = *(v66 - 8);
  __chkstk_darwin(v66);
  v77 = v53 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = type metadata accessor for FlowAnimationBehavior();
  v62 = *(v63 - 8);
  __chkstk_darwin(v63);
  v64 = v53 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for FlowPresentationContext();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v61 = v53 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for ActionMetrics();
  __chkstk_darwin(v20 - 8);
  v60 = v53 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_10002849C(&unk_1009767C0, &unk_1007B1880);
  __chkstk_darwin(v22 - 8);
  v24 = v53 - v23;
  v25 = sub_10002849C(&qword_100982460, &unk_1007B5C90);
  __chkstk_darwin(v25 - 8);
  v27 = v53 - v26;
  v28 = type metadata accessor for FlowPage();
  __chkstk_darwin(v28);
  v31 = v53 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = *(a1 + OBJC_IVAR____TtC8AppStore11AppDelegate_objectGraph);
  if (v32)
  {
    v82 = 0;
    v80 = 0u;
    v81 = 0u;
    v33 = *(v29 + 104);
    v58 = v32;
    v33(v31, enum case for FlowPage.search(_:));
    v34 = type metadata accessor for URL();
    v57 = v8;
    v35 = v34;
    v36 = *(v34 - 8);
    v53[0] = *(v36 + 56);
    v53[1] = v36 + 56;
    (v53[0])(v27, 1, 1, v34);
    v37 = type metadata accessor for ReferrerData();
    v59 = v5;
    v55 = v37;
    v38 = *(v37 - 8);
    v54 = *(v38 + 56);
    v56 = v38 + 56;
    v54(v24, 1, 1, v37);
    v78 = 0u;
    v79 = 0u;

    static ActionMetrics.notInstrumented.getter();
    (*(v18 + 104))(v61, enum case for FlowPresentationContext.infer(_:), v17);
    (*(v62 + 104))(v64, enum case for FlowAnimationBehavior.infer(_:), v63);
    (*(v65 + 104))(v77, enum case for FlowOrigin.inapp(_:), v66);
    static FlowActionPresentation.stackPush.getter();
    type metadata accessor for FlowAction();
    swift_allocObject();
    v39 = FlowAction.init(id:title:artwork:page:url:referrerUrl:referrerData:pageData:actionMetrics:presentationContext:animationBehavior:origin:presentationStyle:presentation:)();
    v40 = v67;
    IntentParameter.wrappedValue.getter();
    StringSearchCriteria.term.getter();
    (*(v68 + 8))(v40, v69);
    (v53[0])(v27, 1, 1, v35);
    (*(v70 + 104))(v73, enum case for SearchOrigin.externalUrl(_:), v71);
    v41 = type metadata accessor for SearchEntity();
    (*(*(v41 - 8) + 56))(v74, 1, 1, v41);
    static ActionMetrics.notInstrumented.getter();
    v42 = v59;
    v54(v24, 1, 1, v55);
    v43 = type metadata accessor for SearchAction();
    swift_allocObject();
    v44 = SearchAction.init(title:term:url:origin:source:entity:spellCheckEnabled:excludedTerms:originatingTerm:prefixTerm:guidedSearchTokens:guidedSearchOptimizationTerm:actionMetrics:referrerData:)();
    *(&v81 + 1) = v43;
    *&v80 = v44;
    FlowAction.setPageData(_:)();
    sub_10002B894(&v80, &unk_1009711D0, &unk_1007B1A10);
    (*(v75 + 104))(v57, enum case for NavigationTab.search(_:), v76);
    sub_10002849C(&qword_100973210, qword_1007B0BB0);
    v45 = swift_allocObject();
    *(v45 + 16) = xmmword_1007B0B70;
    *(v45 + 32) = v39;

    static ActionMetrics.notInstrumented.getter();
    type metadata accessor for TabChangeAction();
    swift_allocObject();
    TabChangeAction.init(navigationTab:actions:popToRoot:presentationStyle:actionMetrics:)();
    v46 = sub_10002849C(&unk_100974490, &qword_1007B3DD0);
    v47 = v58;
    BaseObjectGraph.injectIfAvailable<A>(_:)();
    v48 = *(v46 - 8);
    if ((*(v48 + 48))(v42, 1, v46) == 1)
    {
      sub_10002B894(v42, &unk_100972A00, &unk_1007B3130);
    }

    else
    {

      sub_1005F9AF4(v51, 1, v47, v42);

      (*(v48 + 8))(v42, v46);
    }

    if (qword_10096D120 != -1)
    {
      swift_once();
    }

    v52 = type metadata accessor for OSLogger();
    sub_1000056A8(v52, qword_1009CE218);
    sub_10002849C(&unk_100972A10, &qword_1007B1EF0);
    type metadata accessor for LogMessage();
    *(swift_allocObject() + 16) = xmmword_1007B10D0;
    LogMessage.init(stringLiteral:)();
    Logger.info(_:)();
  }

  else
  {
    if (qword_10096D120 != -1)
    {
      swift_once();
    }

    v49 = type metadata accessor for OSLogger();
    sub_1000056A8(v49, qword_1009CE218);
    sub_10002849C(&unk_100972A10, &qword_1007B1EF0);
    type metadata accessor for LogMessage();
    *(swift_allocObject() + 16) = xmmword_1007B10D0;
    LogMessage.init(stringLiteral:)();
    Logger.error(_:)();
  }

  return result;
}

double sub_1001FBE14@<D0>(void *a1@<X8>)
{
  if (qword_10096D3D8 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  *a1 = qword_1009CE8A8;

  return result;
}

uint64_t sub_1001FBEA8(uint64_t a1)
{
  v2 = type metadata accessor for StringSearchCriteria();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  (*(v3 + 16))(&v7 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v2, v4);
  IntentParameter.wrappedValue.setter();
  return (*(v3 + 8))(a1, v2);
}

void (*sub_1001FBF98(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = IntentParameter.wrappedValue.modify();
  return sub_100195724;
}

unint64_t sub_1001FC010()
{
  result = qword_1009798F8;
  if (!qword_1009798F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009798F8);
  }

  return result;
}

unint64_t sub_1001FC068()
{
  result = qword_100979900;
  if (!qword_100979900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100979900);
  }

  return result;
}

unint64_t sub_1001FC0C0()
{
  result = qword_100979908;
  if (!qword_100979908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100979908);
  }

  return result;
}

uint64_t sub_1001FC180@<X0>(uint64_t a1@<X8>)
{
  if (qword_10096D3D0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for LocalizedStringResource();
  v3 = sub_1000056A8(v2, qword_1009CE890);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1001FC228(uint64_t a1)
{
  v2 = sub_1001FC670();

  return static ShowInAppSearchResultsIntent.openAppWhenRun.getter(a1, v2);
}

uint64_t sub_1001FC278(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100095E9C;

  return sub_1001FAB98(a1, v4);
}

uint64_t sub_1001FC318@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for InputConnectionBehavior();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10002849C(&qword_100979920, &unk_1007C06D0);
  __chkstk_darwin(v6 - 8);
  v8 = &v16 - v7;
  v9 = sub_10002849C(&qword_100979928, &qword_1007D8CE0);
  __chkstk_darwin(v9 - 8);
  v11 = &v16 - v10;
  v12 = type metadata accessor for LocalizedStringResource();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  sub_10002849C(&qword_100979930, &qword_1007C06E0);
  LocalizedStringResource.init(stringLiteral:)();
  (*(v13 + 56))(v11, 1, 1, v12);
  v14 = type metadata accessor for IntentDialog();
  (*(*(v14 - 8) + 56))(v8, 1, 1, v14);
  (*(v3 + 104))(v5, enum case for InputConnectionBehavior.default(_:), v2);
  result = IntentParameter<>.init(title:description:requestValueDialog:inputConnectionBehavior:)();
  *a1 = result;
  return result;
}

uint64_t sub_1001FC5B8(uint64_t a1)
{
  v2 = sub_1001FC010();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

unint64_t sub_1001FC604()
{
  result = qword_100979910;
  if (!qword_100979910)
  {
    sub_10002D1A8(&qword_100979918, &qword_1007C06C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100979910);
  }

  return result;
}

unint64_t sub_1001FC670()
{
  result = qword_100979938;
  if (!qword_100979938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100979938);
  }

  return result;
}

BOOL sub_1001FC6C4()
{
  v0 = type metadata accessor for PaginatedPagePresenterState();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = (&v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  dispatch thunk of DiffablePagePresenter.paginationState.getter();
  v4 = (*(v1 + 88))(v3, v0);
  v5 = enum case for PaginatedPagePresenterState.preparingNextPage(_:);
  if (v4 == enum case for PaginatedPagePresenterState.preparingNextPage(_:))
  {
    (*(v1 + 96))(v3, v0);
    sub_100007000(v3);
  }

  else
  {
    (*(v1 + 8))(v3, v0);
  }

  return v4 == v5;
}

uint64_t sub_1001FC7FC(void *a1, void *a2)
{
  v82 = a1;
  ObjectType = swift_getObjectType();
  v4 = (swift_isaMask & *v2);
  v5 = type metadata accessor for LogMessage.StringInterpolation();
  __chkstk_darwin(v5 - 8);
  v7 = v59 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for PerformanceTestCase();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  __chkstk_darwin(v11);
  v78 = v59 - v12;
  __chkstk_darwin(v13);
  v77 = v59 - v14;
  __chkstk_darwin(v15);
  v17 = v59 - v16;
  *&v19 = __chkstk_darwin(v18).n128_u64[0];
  v21 = v59 - v20;
  v79 = v2;
  v22 = [v2 collectionView];
  if (v22)
  {
    v59[1] = v7;
    v64 = a2;
    v80 = v22;
    sub_10002C0AC(a2, &v86);
    v23 = *(v9 + 16);
    v23(v21, v82, v8);
    v63 = v23;
    sub_10002C0AC(&v86, &v85);
    v69 = v17;
    v23(v17, v21, v8);
    v24 = v9;
    v25 = *(v9 + 80);
    v26 = (v25 + 120) & ~v25;
    v70 = v59 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
    v61 = (v10 + 7 + v26) & 0xFFFFFFFFFFFFFFF8;
    v27 = swift_allocObject();
    v62 = (v25 + 56) & ~v25;
    v66 = (v25 + 80) & ~v25;
    v65 = (v10 + 7 + v66) & 0xFFFFFFFFFFFFFFF8;
    v76 = v4[69];
    *(v27 + 2) = v76;
    v75 = v4[70];
    *(v27 + 3) = v75;
    *&v74 = v4[71];
    *(v27 + 4) = v74;
    *(&v74 + 1) = v4[72];
    *(v27 + 5) = *(&v74 + 1);
    v73 = v4[73];
    *(v27 + 6) = v73;
    v72 = v4[74];
    *(v27 + 7) = v72;
    v71 = v4[75];
    *(v27 + 8) = v71;
    sub_100005A38(&v86, (v27 + 72));
    *(v27 + 14) = v80;
    v68 = v24;
    v60 = *(v24 + 32);
    v60(&v27[v26], v21, v8);
    v67 = v27;
    *&v27[v61] = ObjectType;
    sub_10002C0AC(v64, &v84);
    v28 = v77;
    v29 = v82;
    v30 = v63;
    v63(v77, v82, v8);
    v31 = v62;
    v32 = swift_allocObject();
    sub_100005A38(&v84, (v32 + 16));
    v33 = &v32[v31];
    v34 = v60;
    v60(v33, v28, v8);
    v35 = v78;
    v30(v78, v29, v8);
    v36 = v70;
    v30(v70, v35, v8);
    v37 = v65;
    v38 = swift_allocObject();
    *&v39 = v76;
    *(&v39 + 1) = v75;
    v40 = v74;
    *(v38 + 16) = v39;
    *(v38 + 32) = v40;
    v41 = v72;
    *(v38 + 48) = v73;
    *(v38 + 56) = v41;
    v42 = v79;
    *(v38 + 64) = v71;
    *(v38 + 72) = v42;
    v78 = v8;
    v34(v38 + v66, v35, v8);
    v43 = ObjectType;
    *(v38 + v37) = ObjectType;
    v82 = v80;
    v44 = v42;
    if (sub_1001FDB28(v44, v36, v43))
    {
      v80 = v32;
      if (qword_10096D140 != -1)
      {
        swift_once();
      }

      v45 = type metadata accessor for OSLogger();
      sub_1000056A8(v45, qword_1009CE278);
      sub_10002849C(&unk_100972A10, &qword_1007B1EF0);
      type metadata accessor for LogMessage();
      *(swift_allocObject() + 16) = xmmword_1007B10D0;
      LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
      v46._object = 0x8000000100807A40;
      v46._countAndFlagsBits = 0xD000000000000010;
      LogMessage.StringInterpolation.appendLiteral(_:)(v46);
      v83[3] = swift_getMetatypeMetadata();
      v83[0] = v43;
      LogMessage.StringInterpolation.appendInterpolation(safe:)();
      sub_10003D444(v83);
      v47._countAndFlagsBits = 0xD000000000000025;
      v47._object = 0x8000000100807A60;
      LogMessage.StringInterpolation.appendLiteral(_:)(v47);
      LogMessage.init(stringInterpolation:)();
      Logger.info(_:)();

      *(&v58 + 1) = v72;
      *&v58 = v73;
      v48 = v82;
      v49 = v69;
      sub_1001FD1D8(&v85, v82, v69, v43, v76, v75, v74, *(&v74 + 1), v58, v71);
    }

    else
    {
      v51 = v32;
      if (qword_10096D140 != -1)
      {
        swift_once();
      }

      v52 = type metadata accessor for OSLogger();
      sub_1000056A8(v52, qword_1009CE278);
      sub_10002849C(&unk_100972A10, &qword_1007B1EF0);
      type metadata accessor for LogMessage();
      *(swift_allocObject() + 16) = xmmword_1007B10D0;
      LogMessage.init(stringLiteral:)();
      Logger.info(_:)();

      type metadata accessor for ReadyObserver();
      v53 = swift_allocObject();
      v54 = v67;
      v53[2] = sub_1001FDFF0;
      v53[3] = v54;
      v53[4] = sub_1001FE008;
      v53[5] = v51;
      v53[6] = sub_1001FE09C;
      v53[7] = v38;
      swift_beginAccess();

      objc_setAssociatedObject(v44, &unk_10097A040, v53, 0x301);
      swift_endAccess();

      v49 = v69;
      v48 = v82;
    }

    sub_100007000(&v85);
    v55 = *(v68 + 8);
    v56 = v49;
    v57 = v78;
    v55(v56, v78);
    return (v55)(v36, v57);
  }

  else
  {
    sub_10002A400(a2, a2[3]);
    return dispatch thunk of PerformanceTestRunner.failed(_:reason:)();
  }
}

uint64_t sub_1001FD1D8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, uint64_t a10)
{
  v54 = a7;
  v55 = a8;
  v53 = a6;
  v51 = a5;
  v57 = a4;
  v48 = a3;
  v56 = a2;
  v47 = a1;
  v50 = a10;
  v49 = a9;
  v59 = type metadata accessor for DispatchWorkItemFlags();
  v62 = *(v59 - 8);
  __chkstk_darwin(v59);
  v58 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchQoS();
  v60 = *(v11 - 8);
  v61 = v11;
  __chkstk_darwin(v11);
  v52 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = type metadata accessor for PerformanceTestCase();
  v13 = *(v44 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v44);
  v15 = &v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for DispatchTimeInterval();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = (&v43 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v43 = type metadata accessor for DispatchTime();
  v20 = *(v43 - 8);
  __chkstk_darwin(v43);
  v22 = &v43 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v25 = &v43 - v24;
  sub_100005744(0, &qword_1009729E0, OS_dispatch_queue_ptr);
  v46 = static OS_dispatch_queue.main.getter();
  static DispatchTime.now()();
  *v19 = 300;
  (*(v17 + 104))(v19, enum case for DispatchTimeInterval.milliseconds(_:), v16);
  DispatchTime.advanced(by:)();
  (*(v17 + 8))(v19, v16);
  v26 = *(v20 + 8);
  v45 = v20 + 8;
  v27 = v43;
  v26(v22, v43);
  sub_10002C0AC(v47, v64);
  v28 = v44;
  (*(v13 + 16))(v15, v48, v44);
  v29 = (*(v13 + 80) + 120) & ~*(v13 + 80);
  v30 = (v14 + v29 + 7) & 0xFFFFFFFFFFFFFFF8;
  v31 = swift_allocObject();
  v32 = v53;
  v33 = v54;
  *(v31 + 16) = v51;
  *(v31 + 24) = v32;
  v34 = v55;
  *(v31 + 32) = v33;
  *(v31 + 40) = v34;
  *(v31 + 48) = v49;
  *(v31 + 64) = v50;
  sub_100005A38(v64, v31 + 72);
  v35 = v56;
  *(v31 + 112) = v56;
  (*(v13 + 32))(v31 + v29, v15, v28);
  *(v31 + v30) = v57;
  aBlock[4] = sub_1001FE12C;
  aBlock[5] = v31;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100007A08;
  aBlock[3] = &unk_1008B9178;
  v36 = _Block_copy(aBlock);
  v37 = v35;

  v38 = v52;
  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_10002D150();
  sub_10002849C(&unk_1009729F0, &unk_1007B3D80);
  sub_1000079A4();
  v40 = v58;
  v39 = v59;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v41 = v46;
  OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
  _Block_release(v36);

  (*(v62 + 8))(v40, v39);
  (*(v60 + 8))(v38, v61);
  return (v26)(v25, v27);
}

void sub_1001FD7B8(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for LogMessage.StringInterpolation();
  __chkstk_darwin(v8 - 8);
  sub_10002A400(a1, a1[3]);
  if (sub_10021DCD4(a2))
  {
    if (qword_10096D140 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for OSLogger();
    sub_1000056A8(v9, qword_1009CE278);
    sub_10002849C(&unk_100972A10, &qword_1007B1EF0);
    type metadata accessor for LogMessage();
    *(swift_allocObject() + 16) = xmmword_1007B10D0;
    LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v10._countAndFlagsBits = 0x2074736554;
    v10._object = 0xE500000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v10);
    v11 = PerformanceTestCase.name.getter();
    MetatypeMetadata = &type metadata for String;
    v17[0] = v11;
    v17[1] = v12;
    LogMessage.StringInterpolation.appendInterpolation(safe:)();
    sub_10003D444(v17);
    v13._countAndFlagsBits = 0xD000000000000013;
    v13._object = 0x8000000100807810;
    LogMessage.StringInterpolation.appendLiteral(_:)(v13);
    MetatypeMetadata = swift_getMetatypeMetadata();
    v17[0] = a4;
    LogMessage.StringInterpolation.appendInterpolation(safe:)();
    sub_10003D444(v17);
    v14._countAndFlagsBits = 0xD00000000000002BLL;
    v14._object = 0x8000000100807830;
    LogMessage.StringInterpolation.appendLiteral(_:)(v14);
    MetatypeMetadata = sub_100005744(0, &qword_100978E50, UICollectionView_ptr);
    v17[0] = a2;
    v15 = a2;
    LogMessage.StringInterpolation.appendInterpolation(safe:)();
    sub_10003D444(v17);
    v16._countAndFlagsBits = 46;
    v16._object = 0xE100000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v16);
    LogMessage.init(stringInterpolation:)();
    Logger.info(_:)();

    [v15 setContentOffset:{0.0, 0.0}];
    UIScrollView.perform(_:using:)(a3, a1);
  }

  else
  {
    sub_10002A400(a1, a1[3]);
    dispatch thunk of PerformanceTestRunner.failed(_:reason:)();
  }
}

BOOL sub_1001FDB28(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for LogMessage.StringInterpolation();
  __chkstk_darwin(v5 - 8);
  v9 = (sub_1002DFD04() & 1) != 0 && ((v6 = (*((swift_isaMask & *a1) + 0x160))()) == 0 || (v7 = v6, type metadata accessor for JULoadingViewController(), v8 = swift_dynamicCastClass(), v7, !v8)) && (ArtworkLoader.isFetchingAssets.getter() & 1) == 0 && !sub_1001FC6C4();
  if (qword_10096D140 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for OSLogger();
  sub_1000056A8(v10, qword_1009CE278);
  sub_10002849C(&unk_100972A10, &qword_1007B1EF0);
  type metadata accessor for LogMessage();
  *(swift_allocObject() + 16) = xmmword_1007B10D0;
  LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v11._countAndFlagsBits = 0x2074736554;
  v11._object = 0xE500000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v11);
  v12 = PerformanceTestCase.name.getter();
  MetatypeMetadata = &type metadata for String;
  v26[0] = v12;
  v26[1] = v13;
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10003D444(v26);
  v14._object = 0x8000000100807A90;
  v14._countAndFlagsBits = 0xD000000000000019;
  LogMessage.StringInterpolation.appendLiteral(_:)(v14);
  MetatypeMetadata = swift_getMetatypeMetadata();
  v26[0] = a3;
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10003D444(v26);
  v15._countAndFlagsBits = 0x646165527369202CLL;
  v15._object = 0xEB00000000203A79;
  LogMessage.StringInterpolation.appendLiteral(_:)(v15);
  MetatypeMetadata = &type metadata for Bool;
  LOBYTE(v26[0]) = v9;
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10003D444(v26);
  v16._countAndFlagsBits = 0xD000000000000015;
  v16._object = 0x8000000100807AB0;
  LogMessage.StringInterpolation.appendLiteral(_:)(v16);
  v17 = sub_1002DFD04();
  MetatypeMetadata = &type metadata for Bool;
  LOBYTE(v26[0]) = v17 & 1;
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10003D444(v26);
  v18._object = 0x8000000100807AD0;
  v18._countAndFlagsBits = 0xD000000000000019;
  LogMessage.StringInterpolation.appendLiteral(_:)(v18);

  v19 = sub_10002849C(&qword_100979948, &qword_1007C0720);
  MetatypeMetadata = sub_10002849C(&unk_100979950, qword_1007C0728);
  v26[0] = v19;
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10003D444(v26);
  v20._countAndFlagsBits = 0xD000000000000014;
  v20._object = 0x8000000100807AF0;
  LogMessage.StringInterpolation.appendLiteral(_:)(v20);
  v21 = ArtworkLoader.isFetchingAssets.getter();
  MetatypeMetadata = &type metadata for Bool;
  LOBYTE(v26[0]) = v21 & 1;
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10003D444(v26);
  v22._countAndFlagsBits = 0xD000000000000018;
  v22._object = 0x8000000100807B10;
  LogMessage.StringInterpolation.appendLiteral(_:)(v22);
  v23 = sub_1001FC6C4();
  MetatypeMetadata = &type metadata for Bool;
  LOBYTE(v26[0]) = v23;
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10003D444(v26);
  v24._countAndFlagsBits = 41;
  v24._object = 0xE100000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v24);
  LogMessage.init(stringInterpolation:)();
  Logger.info(_:)();

  return v9;
}

uint64_t sub_1001FE008(uint64_t a1)
{
  type metadata accessor for PerformanceTestCase();
  sub_10002A400((v1 + 16), *(v1 + 40));
  return PerformanceTestRunner.failed(_:with:)();
}

BOOL sub_1001FE09C()
{
  v1 = *(type metadata accessor for PerformanceTestCase() - 8);
  v2 = (*(v1 + 80) + 80) & ~*(v1 + 80);
  v3 = *(v0 + 72);
  v4 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1001FDB28(v3, v0 + v2, v4);
}

uint64_t sub_1001FE144(uint64_t (*a1)(uint64_t, void, unint64_t, void, uint64_t, uint64_t, uint64_t, uint64_t, void, void, uint64_t))
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(v1 + 32);
  v6 = *(v1 + 40);
  v11 = *(v1 + 48);
  v7 = *(v1 + 64);
  v8 = *(type metadata accessor for PerformanceTestCase() - 8);
  v9 = (*(v8 + 80) + 120) & ~*(v8 + 80);
  return a1(v1 + 72, *(v1 + 112), v1 + v9, *(v1 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8)), v3, v4, v5, v6, v11, *(&v11 + 1), v7);
}

uint64_t sub_1001FE22C()
{
  v0 = type metadata accessor for FontSource();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v10[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for StaticDimension();
  sub_100005644(v4, qword_100979960);
  sub_1000056A8(v4, qword_100979960);
  if (qword_10096DCC0 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for FontUseCase();
  v6 = sub_1000056A8(v5, qword_1009D05D8);
  (*(*(v5 - 8) + 16))(v3, v6, v5);
  (*(v1 + 104))(v3, enum case for FontSource.useCase(_:), v0);
  v10[3] = v0;
  v10[4] = &protocol witness table for FontSource;
  v7 = sub_1000056E0(v10);
  (*(v1 + 16))(v7, v3, v0);
  StaticDimension.init(_:scaledLike:)();
  return (*(v1 + 8))(v3, v0);
}

id sub_1001FE400(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC8AppStore29FamilyPurchasesViewController_presenter) = a1;
  v4 = objc_allocWithZone(UICollectionViewCompositionalLayout);
  v15[4] = sub_1001FE604;
  v15[5] = 0;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 1107296256;
  v15[2] = sub_1002E9BD4;
  v15[3] = &unk_1008B91A0;
  v5 = _Block_copy(v15);

  v6 = [v4 initWithSectionProvider:v5];
  _Block_release(v5);

  v7 = v6;

  v8 = sub_1000659FC(v7, a2);

  sub_1002020A4(&unk_1009799C0, v9, type metadata accessor for FamilyPurchasesViewController, &unk_1007C07E8);
  v10 = v8;
  dispatch thunk of FamilyPurchasesPresenter.view.setter();
  v11 = v10;
  dispatch thunk of FamilyPurchasesPresenter.pageTitle.getter();
  v12 = String._bridgeToObjectiveC()();

  [v11 setTitle:v12];

  *(v11 + OBJC_IVAR____TtC8AppStore29StoreCollectionViewController_prefersLargeTitle) = 0;
  v13 = [v11 navigationItem];
  [v13 setLargeTitleDisplayMode:2];

  return v11;
}

uint64_t sub_1001FE604(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for UICollectionLayoutListConfiguration.Appearance();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for UICollectionLayoutListConfiguration();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 104))(v5, enum case for UICollectionLayoutListConfiguration.Appearance.insetGrouped(_:), v2, v8);
  UICollectionLayoutListConfiguration.init(appearance:)();
  sub_100005744(0, &unk_100990AB0, NSCollectionLayoutSection_ptr);
  v11 = static NSCollectionLayoutSection.list(using:layoutEnvironment:)();
  (*(v7 + 8))(v10, v6);
  return v11;
}

void sub_1001FE8B0(uint64_t a1, uint64_t a2)
{
  v16.receiver = v2;
  v16.super_class = type metadata accessor for FamilyPurchasesViewController();
  objc_msgSendSuper2(&v16, "viewDidLoad");
  v3 = [v2 view];
  if (v3)
  {
    v4 = v3;
    sub_100005744(0, &qword_100970180, UIColor_ptr);
    v5 = static UIColor.tableViewBackground.getter();
    [v4 setBackgroundColor:v5];

    v6 = [v2 collectionView];
    if (v6)
    {
      v7 = v6;
      v8 = static UIColor.tableViewBackground.getter();
      [v7 setBackgroundColor:v8];

      [v7 setAlwaysBounceVertical:1];
      type metadata accessor for LinkableHeaderCollectionViewCell();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      static UICollectionReusableView.defaultReuseIdentifier.getter();
      v10 = String._bridgeToObjectiveC()();

      [v7 registerClass:ObjCClassFromMetadata forCellWithReuseIdentifier:v10];

      type metadata accessor for AccountDetailCollectionViewCell(0);
      v11 = swift_getObjCClassFromMetadata();
      static UICollectionReusableView.defaultReuseIdentifier.getter();
      v12 = String._bridgeToObjectiveC()();

      [v7 registerClass:v11 forCellWithReuseIdentifier:v12];

      type metadata accessor for DetailCollectionViewCell(0);
      v13 = swift_getObjCClassFromMetadata();
      v14 = UICollectionElementKindSectionHeader;
      static UICollectionReusableView.defaultReuseIdentifier.getter();
      v15 = String._bridgeToObjectiveC()();

      [v7 registerClass:v13 forSupplementaryViewOfKind:v14 withReuseIdentifier:v15];

      dispatch thunk of BasePresenter.didLoad()();
    }
  }

  else
  {
    __break(1u);
  }
}

id sub_1001FEB98(void *a1)
{
  v2 = type metadata accessor for FamilyPurchasesSection();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  IndexPath.section.getter();
  dispatch thunk of FamilyPurchasesPresenter.familyPurchasesSection(for:)();
  v6 = (*(v3 + 88))(v5, v2);
  if (v6 == enum case for FamilyPurchasesSection.errorBanner(_:))
  {
    type metadata accessor for LinkableHeaderCollectionViewCell();
    static UICollectionReusableView.defaultReuseIdentifier.getter();
    v7 = String._bridgeToObjectiveC()();

    v8.super.isa = IndexPath._bridgeToObjectiveC()().super.isa;
    v9 = [a1 dequeueReusableCellWithReuseIdentifier:v7 forIndexPath:v8.super.isa];
LABEL_9:
    v13 = v9;

    return v13;
  }

  if (v6 == enum case for FamilyPurchasesSection.loggedInUser(_:) || v6 == enum case for FamilyPurchasesSection.familyMembers(_:))
  {
    type metadata accessor for AccountDetailCollectionViewCell(0);
    static UICollectionReusableView.defaultReuseIdentifier.getter();
    v7 = String._bridgeToObjectiveC()();

    v8.super.isa = IndexPath._bridgeToObjectiveC()().super.isa;
    v9 = [a1 dequeueReusableCellWithReuseIdentifier:v7 forIndexPath:v8.super.isa];
    goto LABEL_9;
  }

  type metadata accessor for LinkableHeaderCollectionViewCell();
  static UICollectionReusableView.defaultReuseIdentifier.getter();
  v11 = String._bridgeToObjectiveC()();

  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  v13 = [a1 dequeueReusableCellWithReuseIdentifier:v11 forIndexPath:isa];

  (*(v3 + 8))(v5, v2);
  return v13;
}