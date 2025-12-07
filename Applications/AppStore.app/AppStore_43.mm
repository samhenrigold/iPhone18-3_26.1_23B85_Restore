id sub_1004C1F28()
{
  result = [objc_opt_self() systemGray6Color];
  qword_1009D1FC8 = result;
  return result;
}

void sub_1004C1F64()
{
  v0 = [objc_opt_self() systemBlackColor];
  v1 = [v0 colorWithAlphaComponent:0.05];

  qword_1009D1FD0 = v1;
}

id sub_1004C1FD0(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v4[OBJC_IVAR____TtC8AppStore38CondensedSearchEditorialBackgroundView_isBorderHidden] = 0;
  v20.receiver = v4;
  v20.super_class = ObjectType;
  v10 = objc_msgSendSuper2(&v20, "initWithFrame:", a1, a2, a3, a4);
  v11 = qword_10096E580;
  v12 = v10;
  if (v11 != -1)
  {
    swift_once();
  }

  [v12 setBackgroundColor:qword_1009D1FC8];
  v13 = [v12 layer];
  if (qword_10096E588 != -1)
  {
    swift_once();
  }

  v14 = [qword_1009D1FD0 CGColor];
  [v13 setBorderColor:v14];

  v15 = [v12 layer];
  v16 = [objc_opt_self() mainScreen];
  [v16 scale];
  v18 = v17;

  [v15 setBorderWidth:1.0 / v18];
  [v12 _setContinuousCornerRadius:16.0];

  return v12;
}

void sub_1004C2248(void *a1)
{
  v8.receiver = v1;
  v8.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v8, "traitCollectionDidChange:", a1);
  if (a1)
  {
    v3 = [a1 userInterfaceStyle];
  }

  else
  {
    v3 = 0;
  }

  v4 = [v1 traitCollection];
  v5 = [v4 userInterfaceStyle];

  if ((!a1 || v3 != v5) && (*(v1 + OBJC_IVAR____TtC8AppStore38CondensedSearchEditorialBackgroundView_isBorderHidden) & 1) == 0)
  {
    v6 = [v1 layer];
    if (qword_10096E588 != -1)
    {
      swift_once();
    }

    v7 = [qword_1009D1FD0 CGColor];
    [v6 setBorderColor:v7];
  }
}

void sub_1004C2468(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for AspectRatio();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v14 - v9;
  if (*&v2[OBJC_IVAR____TtC8AppStore36EditorialStoryCardCollectionViewCell_pageTraits])
  {
    v11 = a1 == 0;
  }

  else
  {
    v11 = 1;
  }

  if (!v11)
  {
    swift_unknownObjectRetain();

    [v2 frame];
    swift_unknownObjectRetain();
    if (JUScreenClassGetMain() == 1)
    {
      if (qword_10096E598 != -1)
      {
        swift_once();
      }

      v12 = qword_100988398;
    }

    else
    {
      if (qword_10096E590 != -1)
      {
        swift_once();
      }

      v12 = qword_100988380;
    }

    v13 = sub_1000056A8(v4, v12);
    (*(v5 + 16))(v7, v13, v4);
    (*(v5 + 32))(v10, v7, v4);
    AspectRatio.height(fromWidth:)();
    (*(v5 + 8))(v10, v4);
    swift_unknownObjectRelease();
    Artwork.config(using:)();
    Artwork.backgroundColor.getter();
    ArtworkView.backgroundColor.setter();
    type metadata accessor for ArtworkView();
    sub_1004C3664(&qword_100970E80, &type metadata accessor for ArtworkView, &protocol conformance descriptor for ArtworkView);
    ArtworkLoader.fetchArtwork<A>(using:closestMatch:into:)();
    swift_unknownObjectRelease();
  }
}

double sub_1004C272C(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = type metadata accessor for FloatingPointRoundingRule();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for AspectRatio();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v23 - v17;
  if (JUScreenClassGetMain() == 1)
  {
    if (qword_10096E598 != -1)
    {
      swift_once();
    }

    v19 = qword_100988398;
  }

  else
  {
    if (qword_10096E590 != -1)
    {
      swift_once();
    }

    v19 = qword_100988380;
  }

  v20 = sub_1000056A8(v12, v19);
  (*(v13 + 16))(v15, v20, v12);
  (*(v13 + 32))(v18, v15, v12);
  AspectRatio.height(fromWidth:)();
  (*(v13 + 8))(v18, v12);
  if (qword_10096E6C0 != -1)
  {
    swift_once();
  }

  v21 = type metadata accessor for StaticDimension();
  sub_1000056A8(v21, qword_1009D2460);
  static Dimensions.defaultRoundingRule.getter();
  AnyDimension.value(in:rounded:)();
  (*(v9 + 8))(v11, v8);
  return a1;
}

uint64_t sub_1004C2A24()
{
  result = dispatch thunk of EditorialStoryCard.clickAction.getter();
  if (result)
  {

    return 3;
  }

  return result;
}

uint64_t sub_1004C2A64(uint64_t a1, uint64_t a2)
{
  type metadata accessor for ArtworkView();
  sub_1004C3664(&qword_100970E80, &type metadata accessor for ArtworkView, &protocol conformance descriptor for ArtworkView);
  return ArtworkLoader.forgetFetch<A>(forView:deprioritizingFetch:)();
}

uint64_t sub_1004C2AF8(uint64_t a1)
{
  result = sub_1004C3664(&qword_1009883B0, type metadata accessor for EditorialStoryCardCollectionViewCell, &unk_1007D0E48);
  *(a1 + 8) = result;
  return result;
}

void sub_1004C2BE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = v5;
  v8 = type metadata accessor for ShelfBackground();
  v9 = *(v8 - 8);
  *&v10 = __chkstk_darwin(v8).n128_u64[0];
  v12 = (&v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = [a5 snapshotPageTraitEnvironment];
  *&v5[OBJC_IVAR____TtC8AppStore36EditorialStoryCardCollectionViewCell_pageTraits] = v13;
  swift_unknownObjectRelease();
  v14 = *&v5[OBJC_IVAR____TtC8AppStore36EditorialStoryCardCollectionViewCell_headingLabel];
  EditorialStoryCard.heading.getter();
  if (v15)
  {
    v16 = String._bridgeToObjectiveC()();
  }

  else
  {
    v16 = 0;
  }

  [v14 setText:v16];

  v17 = *&v5[OBJC_IVAR____TtC8AppStore36EditorialStoryCardCollectionViewCell_titleLabel];
  EditorialStoryCard.title.getter();
  v18 = String._bridgeToObjectiveC()();

  v41 = v17;
  [v17 setText:v18];

  v19 = *&v5[OBJC_IVAR____TtC8AppStore36EditorialStoryCardCollectionViewCell_descriptionLabel];
  EditorialStoryCard.description.getter();
  v40 = v14;
  if (v20)
  {
    v21 = String._bridgeToObjectiveC()();
  }

  else
  {
    v21 = 0;
  }

  [v19 setText:{v21, v40}];

  dispatch thunk of EditorialStoryCard.shelfBackground.getter();
  v22 = (*(v9 + 88))(v12, v8);
  if (v22 == enum case for ShelfBackground.artwork(_:))
  {
    (*(v9 + 96))(v12, v8);
    v23 = *(sub_10002849C(&qword_100978420, qword_1007BF850) + 48);
    v24 = Artwork.backgroundColor.getter();

    v25 = type metadata accessor for ShelfBackgroundStyle();
    v26 = *(*(v25 - 8) + 8);
    v27 = v24;
    v26(v12 + v23, v25);
    if (!v24)
    {
      goto LABEL_21;
    }
  }

  else
  {
    if (v22 != enum case for ShelfBackground.color(_:))
    {
      (*(v9 + 8))(v12, v8);
LABEL_21:
      if (qword_10096ED48 != -1)
      {
        swift_once();
      }

      v33 = qword_1009D33D8;
      v24 = 0;
      goto LABEL_24;
    }

    (*(v9 + 96))(v12, v8);
    v24 = *v12;
    v28 = *(sub_10002849C(&qword_100972A40, &unk_1007B3750) + 48);
    v29 = type metadata accessor for ShelfBackgroundStyle();
    v30 = *(*(v29 - 8) + 8);
    v27 = v24;
    v30(v12 + v28, v29);
  }

  v31 = v27;
  if (UIColor.isDark(threshold:)())
  {
    if (qword_10096ED48 != -1)
    {
      swift_once();
    }

    v32 = qword_1009D33D8;
  }

  else
  {
    if (qword_10096ED38 != -1)
    {
      swift_once();
    }

    v32 = qword_1009D33C8;
  }

  v33 = v32;

LABEL_24:
  [v40 setTextColor:v33];

  if (v24)
  {
    v34 = v24;
    if (UIColor.isDark(threshold:)())
    {
      if (qword_10096ED50 != -1)
      {
        swift_once();
      }

      v35 = qword_1009D33E0;
    }

    else
    {
      if (qword_10096ED40 != -1)
      {
        swift_once();
      }

      v35 = qword_1009D33D0;
    }

    v36 = v35;
  }

  else
  {
    if (qword_10096ED50 != -1)
    {
      swift_once();
    }

    v36 = qword_1009D33E0;
  }

  [v41 setTextColor:v36];

  if (v24)
  {
    v37 = v24;
    if (UIColor.isDark(threshold:)())
    {
      if (qword_10096ED50 != -1)
      {
        swift_once();
      }

      v38 = qword_1009D33E0;
    }

    else
    {
      if (qword_10096ED40 != -1)
      {
        swift_once();
      }

      v38 = qword_1009D33D0;
    }

    v39 = v38;
  }

  else
  {
    if (qword_10096ED50 != -1)
    {
      swift_once();
    }

    v39 = qword_1009D33E0;
    v37 = 0;
  }

  [v19 setTextColor:v39];

  [v6 setNeedsLayout];
}

id sub_1004C322C(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for FloatingPointRoundingRule();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for AspectRatio();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v33 - v11;
  swift_getObjectType();
  PageTraitEnvironment.pageColumnWidth.getter();
  v14 = v13;
  if (JUScreenClassGetMain() == 1)
  {
    if (qword_10096E598 != -1)
    {
      swift_once();
    }

    v15 = qword_100988398;
  }

  else
  {
    if (qword_10096E590 != -1)
    {
      swift_once();
    }

    v15 = qword_100988380;
  }

  v16 = sub_1000056A8(v6, v15);
  (*(v7 + 16))(v9, v16, v6);
  (*(v7 + 32))(v12, v9, v6);
  AspectRatio.height(fromWidth:)();
  v18 = v17;
  (*(v7 + 8))(v12, v6);
  v19 = objc_opt_self();
  v20 = [v19 absoluteDimension:v14];
  if (qword_10096E6C0 != -1)
  {
    swift_once();
  }

  v21 = type metadata accessor for StaticDimension();
  sub_1000056A8(v21, qword_1009D2460);
  static Dimensions.defaultRoundingRule.getter();
  AnyDimension.value(in:rounded:)();
  v23 = v22;
  (*(v3 + 8))(v5, v2);
  v24 = [v19 absoluteDimension:round(v18) + v23];
  v25 = [objc_opt_self() sizeWithWidthDimension:v20 heightDimension:v24];

  v26 = [objc_opt_self() itemWithLayoutSize:v25];
  v27 = objc_opt_self();
  sub_10002849C(&qword_100973210, qword_1007B0BB0);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_1007B0B70;
  *(v28 + 32) = v26;
  sub_1002FF658();
  v29 = v26;
  isa = Array._bridgeToObjectiveC()().super.isa;

  v31 = [v27 verticalGroupWithLayoutSize:v25 subitems:isa];

  return v31;
}

uint64_t sub_1004C3664(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void *sub_1004C36AC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = sub_10002849C(&unk_100993020, &qword_1007B46A8);
  __chkstk_darwin(v4 - 8);
  v6 = v10 - v5;
  type metadata accessor for LinkableText();
  sub_1004C3958();
  result = ItemLayoutContext.typedModel<A>(as:)();
  if (v10[1])
  {
    type metadata accessor for BaseObjectGraph();
    ComponentModel.pairedWith<A>(objectGraph:)();
    v8 = sub_10002849C(&unk_100993030, &unk_1007B46B0);
    (*(*(v8 - 8) + 56))(v6, 0, 1, v8);
    v9 = OBJC_IVAR____TtC8AppStore30LinkableTextCollectionViewCell_bodyText;
    swift_beginAccess();
    sub_1003773A0(v6, v3 + v9);
    swift_endAccess();
    sub_1006926A8();

    return sub_100377410(v6);
  }

  return result;
}

uint64_t sub_1004C3830@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC8AppStore30LinkableTextCollectionViewCell_itemLayoutContext;
  swift_beginAccess();
  return sub_10009768C(v1 + v3, a1);
}

uint64_t sub_1004C388C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8AppStore30LinkableTextCollectionViewCell_itemLayoutContext;
  swift_beginAccess();
  sub_10009761C(a1, v1 + v3);
  return swift_endAccess();
}

unint64_t sub_1004C3958()
{
  result = qword_100973290;
  if (!qword_100973290)
  {
    type metadata accessor for LinkableText();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100973290);
  }

  return result;
}

id sub_1004C39B0()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v2, "prepareForReuse");
  sub_1004C56C0();
  *&v0[OBJC_IVAR____TtC8AppStore31PrivacyHeaderCollectionViewCell_supplementaryItems] = _swiftEmptyArrayStorage;

  sub_1004C41B4();
  result = *&v0[OBJC_IVAR____TtC8AppStore31PrivacyHeaderCollectionViewCell_middleSeparatorView];
  if (result)
  {
    return [result setHidden:1];
  }

  return result;
}

uint64_t sub_1004C3A2C()
{
  v0 = type metadata accessor for FontSource();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for PrivacyHeaderLayout.Metrics();
  sub_100005644(v4, qword_1009D1FD8);
  v24 = sub_1000056A8(v4, qword_1009D1FD8);
  if (qword_10096E070 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for FontUseCase();
  v6 = sub_1000056A8(v5, qword_1009D10D0);
  v26 = *(*(v5 - 8) + 16);
  v31 = v5;
  v26(v3, v6, v5);
  v7 = enum case for FontSource.useCase(_:);
  v25 = v1[13];
  v23 = v1 + 13;
  v25(v3, enum case for FontSource.useCase(_:), v0);
  v32 = type metadata accessor for StaticDimension();
  v54[3] = v32;
  v54[4] = &protocol witness table for StaticDimension;
  sub_1000056E0(v54);
  v52 = v0;
  v53 = &protocol witness table for FontSource;
  v8 = sub_1000056E0(v51);
  v9 = v1[2];
  v27 = v1 + 2;
  v28 = v9;
  v9(v8, v3, v0);
  StaticDimension.init(_:scaledLike:)();
  v10 = v1[1];
  v29 = v1 + 1;
  v30 = v10;
  v10(v3, v0);
  v22 = v6;
  v11 = v5;
  v12 = v26;
  v26(v3, v6, v11);
  HIDWORD(v21) = v7;
  v13 = v25;
  v25(v3, v7, v0);
  v52 = v32;
  v53 = &protocol witness table for StaticDimension;
  sub_1000056E0(v51);
  v49 = v0;
  v50 = &protocol witness table for FontSource;
  v14 = sub_1000056E0(v48);
  v28(v14, v3, v0);
  StaticDimension.init(_:scaledLike:)();
  v30(v3, v0);
  v12(v3, v6, v31);
  v13(v3, v7, v0);
  v15 = v32;
  v49 = v32;
  v50 = &protocol witness table for StaticDimension;
  sub_1000056E0(v48);
  v46 = v0;
  v47 = &protocol witness table for FontSource;
  v16 = sub_1000056E0(v45);
  v17 = v28;
  v28(v16, v3, v0);
  StaticDimension.init(_:scaledLike:)();
  v18 = v30;
  v30(v3, v0);
  v26(v3, v22, v31);
  v25(v3, HIDWORD(v21), v0);
  v46 = v15;
  v47 = &protocol witness table for StaticDimension;
  sub_1000056E0(v45);
  v43 = v0;
  v44 = &protocol witness table for FontSource;
  v19 = sub_1000056E0(v42);
  v17(v19, v3, v0);
  StaticDimension.init(_:scaledLike:)();
  v18(v3, v0);
  v43 = &type metadata for Double;
  v44 = &protocol witness table for Double;
  v41 = &protocol witness table for Double;
  v42[0] = 0;
  v40 = &type metadata for Double;
  v38 = &protocol witness table for Double;
  v39 = 0;
  v37 = &type metadata for Double;
  v36 = 0;
  v35 = 0;
  v33 = 0u;
  v34 = 0u;
  return PrivacyHeaderLayout.Metrics.init(bodyTopSpace:bodyBottomSpace:supplementaryItemsTopSpace:supplementaryItemsPadding:supplementaryItemsBottomSpace:actionButtonLeadingMargin:bodyOnlyBottomMargin:maxTextWidth:)();
}

id sub_1004C3F10()
{
  v1 = v0;
  v2 = sub_10002849C(&unk_100993020, &qword_1007B46A8);
  __chkstk_darwin(v2 - 8);
  v4 = &v15[-v3];
  v5 = sub_10002849C(&unk_100993030, &unk_1007B46B0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v15[-v7];
  v9 = OBJC_IVAR____TtC8AppStore31PrivacyHeaderCollectionViewCell_bodyText;
  swift_beginAccess();
  sub_100031660(&v1[v9], v4, &unk_100993020, &qword_1007B46A8);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_10002B894(v4, &unk_100993020, &qword_1007B46A8);
    [*&v1[OBJC_IVAR____TtC8AppStore31PrivacyHeaderCollectionViewCell_bodyLabel] setAttributedText:0];
    return [v1 setNeedsLayout];
  }

  else
  {
    (*(v6 + 32))(v8, v4, v5);
    ObjectGraphPair.value.getter();
    ObjectGraphPair.objectGraph.getter();
    v11 = LinkableText.linkedSubstrings.getter();
    sub_1000D6F24(v11, sub_1000C17B0);
    v13 = v12;

    v14 = LinkableText.styledText.getter();
    sub_1002F6004(v14, 0, v13);

    [v1 setNeedsLayout];
    return (*(v6 + 8))(v8, v5);
  }
}

void sub_1004C41B4()
{
  v1 = v0;
  v64 = type metadata accessor for DirectionalTextAlignment();
  v2 = *(v64 - 8);
  __chkstk_darwin(v64);
  v63 = &v49 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = sub_10002849C(&qword_100973288, &qword_1007B4698);
  v4 = *(v62 - 8);
  *&v5 = __chkstk_darwin(v62).n128_u64[0];
  v61 = &v49 - v6;
  v7 = *&v0[OBJC_IVAR____TtC8AppStore31PrivacyHeaderCollectionViewCell_supplementaryItems];
  v54 = *(v7 + 16);
  if (v54)
  {
    v8 = OBJC_IVAR____TtC8AppStore31PrivacyHeaderCollectionViewCell_supplementaryItemLabels;
    v59 = v7 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v60 = OBJC_IVAR____TtC8AppStore31PrivacyHeaderCollectionViewCell_supplementaryItemReusePool;
    v58 = v4 + 16;
    v57 = enum case for DirectionalTextAlignment.leading(_:);
    v56 = (v2 + 104);
    v55 = v4 + 8;

    v9 = 0;
    v52 = v0;
    v51 = v4;
    v50 = v7;
    v53 = v8;
    while (v9 < *(v7 + 16))
    {
      v10 = *(v4 + 72);
      v67 = v9;
      v12 = v61;
      v11 = v62;
      (*(v4 + 16))(v61, v59 + v10 * v9, v62);
      swift_beginAccess();
      sub_10002849C(&qword_100988470, qword_1007D0F80);
      ReusePool.dequeue(or:)();
      swift_endAccess();
      v13 = v76;
      (*v56)(v63, v57, v64);
      v14 = v13;
      dispatch thunk of DynamicTypeLabel.directionalTextAlignment.setter();

      v15 = [v1 contentView];
      v66 = v14;
      [v15 addSubview:v14];

      ObjectGraphPair.value.getter();
      v16 = PrivacyHeaderSupplementaryItem.bodyText.getter();

      v17 = ObjectGraphPair.objectGraph.getter();
      (*(v4 + 8))(v12, v11);
      v65 = v16;
      v18 = LinkableText.linkedSubstrings.getter();
      v19 = *(v18 + 16);
      if (v19)
      {
        v76 = _swiftEmptyArrayStorage;
        sub_100143F44(0, v19, 0);
        v75 = v76;
        v20 = v18 + 64;
        v21 = _HashTable.startBucket.getter();
        v22 = 0;
        v68 = v18 + 72;
        v69 = v19;
        v70 = v18 + 64;
        while ((v21 & 0x8000000000000000) == 0 && v21 < 1 << *(v18 + 32))
        {
          v25 = v21 >> 6;
          if ((*(v20 + 8 * (v21 >> 6)) & (1 << v21)) == 0)
          {
            goto LABEL_30;
          }

          v26 = *(v18 + 36);
          v71 = v22;
          v72 = v26;
          v27 = (*(v18 + 48) + 16 * v21);
          v28 = *v27;
          v29 = v27[1];
          v30 = *(*(v18 + 56) + 8 * v21);
          v31 = v75;
          v76 = v75;
          v33 = v75[2];
          v32 = v75[3];
          v73 = v28;
          v74 = v33 + 1;

          if (v33 >= v32 >> 1)
          {
            sub_100143F44((v32 > 1), v74, 1);
            v31 = v76;
          }

          v34 = v73;
          v31[2] = v74;
          v75 = v31;
          v35 = &v31[4 * v33];
          v35[4] = v34;
          v35[5] = v29;
          v35[6] = v30;
          v35[7] = v17;
          v23 = 1 << *(v18 + 32);
          if (v21 >= v23)
          {
            goto LABEL_31;
          }

          v20 = v70;
          v36 = *(v70 + 8 * v25);
          if ((v36 & (1 << v21)) == 0)
          {
            goto LABEL_32;
          }

          if (v72 != *(v18 + 36))
          {
            goto LABEL_33;
          }

          v37 = v36 & (-2 << (v21 & 0x3F));
          if (v37)
          {
            v23 = __clz(__rbit64(v37)) | v21 & 0x7FFFFFFFFFFFFFC0;
            v24 = v69;
          }

          else
          {
            v38 = v25 << 6;
            v39 = v25 + 1;
            v24 = v69;
            v40 = (v68 + 8 * v25);
            while (v39 < (v23 + 63) >> 6)
            {
              v42 = *v40++;
              v41 = v42;
              v38 += 64;
              ++v39;
              if (v42)
              {
                sub_1000CAE24(v21, v72, 0);
                v23 = __clz(__rbit64(v41)) + v38;
                goto LABEL_7;
              }
            }

            sub_1000CAE24(v21, v72, 0);
          }

LABEL_7:
          v22 = v71 + 1;
          v21 = v23;
          if (v71 + 1 == v24)
          {

            v1 = v52;
            v4 = v51;
            v7 = v50;
            v43 = v75;
            goto LABEL_24;
          }
        }

        __break(1u);
LABEL_30:
        __break(1u);
LABEL_31:
        __break(1u);
LABEL_32:
        __break(1u);
LABEL_33:
        __break(1u);
        break;
      }

      v43 = _swiftEmptyArrayStorage;
LABEL_24:
      v44 = LinkableText.styledText.getter();
      v45 = v66;
      sub_1002F6004(v44, 0, v43);

      v46 = v53;
      swift_beginAccess();
      v47 = v45;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((*(v1 + v46) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v1 + v46) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      v48 = v67 + 1;
      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      swift_endAccess();

      v9 = v48;
      if (v48 == v54)
      {

        goto LABEL_28;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_28:
    [v1 setNeedsLayout];
  }
}

id sub_1004C4848@<X0>(void *a1@<X8>)
{
  v2 = type metadata accessor for FontUseCase();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10096E070 != -1)
  {
    swift_once();
  }

  v6 = sub_1000056A8(v2, qword_1009D10D0);
  (*(v3 + 16))(v5, v6, v2);
  v7 = objc_allocWithZone(type metadata accessor for DynamicTypeLinkedLabel(0));
  result = sub_1002F5B8C(v5, 0, 0, 1);
  *a1 = result;
  return result;
}

id sub_1004C4998(uint64_t *a1, uint64_t *a2)
{
  v5 = sub_10002849C(&unk_100970E10, &qword_1007B46A0);
  __chkstk_darwin(v5 - 8);
  v7 = &v31 - v6;
  v8 = type metadata accessor for Separator();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v31 - v13;
  v15 = *a1;
  swift_beginAccess();
  sub_100031660(&v2[v15], v7, &unk_100970E10, &qword_1007B46A0);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_10002B894(v7, &unk_100970E10, &qword_1007B46A0);
    result = *&v2[*a2];
    if (result)
    {
      return [result setHidden:1];
    }
  }

  else
  {
    (*(v9 + 32))(v14, v7, v8);
    v17 = *a2;
    v18 = *&v2[*a2];
    if (v18)
    {
      (*(v9 + 16))(v11, v14, v8);
      v19 = OBJC_IVAR____TtC8AppStore13SeparatorView_separator;
      swift_beginAccess();
      v20 = *(v9 + 24);
      v21 = v18;
      v20(&v18[v19], v11, v8);
      swift_endAccess();
      v22 = v21;
      [v22 setNeedsLayout];
      v23 = *(v9 + 8);
      v23(v11, v8);
      [v22 setHidden:0];

      return (v23)(v14, v8);
    }

    else
    {
      (*(v9 + 16))(v11, v14, v8);
      v24 = [objc_allocWithZone(type metadata accessor for SeparatorView(0)) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
      v25 = OBJC_IVAR____TtC8AppStore13SeparatorView_separator;
      swift_beginAccess();
      v32 = *(v9 + 40);
      v26 = v24;
      v32(&v24[v25], v11, v8);
      swift_endAccess();

      v27 = *&v2[v17];
      if (v27)
      {
        [v27 removeFromSuperview];
        v28 = *&v2[v17];
      }

      else
      {
        v28 = 0;
      }

      *&v2[v17] = v26;
      v29 = v26;

      v30 = [v2 contentView];
      [v30 addSubview:v29];

      [v2 setNeedsLayout];
      return (*(v9 + 8))(v14, v8);
    }
  }

  return result;
}

uint64_t sub_1004C4D88()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v31 = type metadata accessor for LayoutRect();
  v3 = *(v31 - 8);
  __chkstk_darwin(v31);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for PrivacyHeaderLayout.Metrics();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = type metadata accessor for PrivacyHeaderLayout();
  v10 = *(v30 - 8);
  *&v11 = __chkstk_darwin(v30).n128_u64[0];
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45.receiver = v1;
  v45.super_class = ObjectType;
  objc_msgSendSuper2(&v45, "layoutSubviews", v11);
  v14 = [v1 contentView];
  sub_100028004();
  LayoutMarginsAware<>.layoutFrame.getter();

  if (qword_10096E5A0 != -1)
  {
    swift_once();
  }

  v15 = sub_1000056A8(v6, qword_1009D1FD8);
  (*(v7 + 16))(v9, v15, v6);
  v16 = *&v1[OBJC_IVAR____TtC8AppStore31PrivacyHeaderCollectionViewCell_bodyLabel];
  v43 = type metadata accessor for DynamicTypeLinkedLabel(0);
  v44 = &protocol witness table for UIView;
  v42 = v16;
  swift_beginAccess();
  v17 = v16;

  sub_1002A6234(v18);

  v19 = *&v1[OBJC_IVAR____TtC8AppStore31PrivacyHeaderCollectionViewCell_topSeparatorView];
  if (v19)
  {
    v20 = type metadata accessor for SeparatorView(0);
    v21 = &protocol witness table for UIView;
    v22 = v19;
  }

  else
  {
    v22 = 0;
    v20 = 0;
    v21 = 0;
    v38 = 0;
    v39 = 0;
  }

  v37 = v22;
  v40 = v20;
  v41 = v21;
  v23 = *&v1[OBJC_IVAR____TtC8AppStore31PrivacyHeaderCollectionViewCell_middleSeparatorView];
  if (v23)
  {
    v24 = type metadata accessor for SeparatorView(0);
    v25 = &protocol witness table for UIView;
  }

  else
  {
    v24 = 0;
    v25 = 0;
    v34 = 0;
    v33 = 0;
  }

  v32 = v23;
  v35 = v24;
  v36 = v25;
  v26 = v19;
  v27 = v23;
  PrivacyHeaderLayout.init(metrics:isDetailHeader:bodyLabel:supplementaryItemLabels:topSeparatorView:middleSeparatorView:actionButtons:)();
  PrivacyHeaderLayout.placeChildren(relativeTo:in:)();
  (*(v3 + 8))(v5, v31);
  return (*(v10 + 8))(v13, v30);
}

uint64_t type metadata accessor for PrivacyHeaderCollectionViewCell(uint64_t a1)
{
  result = qword_100988448;
  if (!qword_100988448)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1004C5440(uint64_t a1)
{
  sub_10005A300(319, &qword_100973090, &type metadata accessor for ItemLayoutContext);
  if (v1 <= 0x3F)
  {
    sub_1002883B4(319);
    if (v2 <= 0x3F)
    {
      sub_1004C55EC(319);
      if (v3 <= 0x3F)
      {
        sub_10005A300(319, &unk_100970DF0, &type metadata accessor for Separator);
        if (v4 <= 0x3F)
        {
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

void sub_1004C55EC(uint64_t a1)
{
  if (!qword_100988458)
  {
    sub_10002D1A8(&qword_100988460, "xy\a");
    sub_1004C565C();
    v1 = type metadata accessor for ReusePool();
    if (!v2)
    {
      atomic_store(v1, &qword_100988458);
    }
  }
}

unint64_t sub_1004C565C()
{
  result = qword_100988468;
  if (!qword_100988468)
  {
    sub_10002D1A8(&qword_100988460, "xy\a");
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100988468);
  }

  return result;
}

void sub_1004C56C0()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC8AppStore31PrivacyHeaderCollectionViewCell_supplementaryItemLabels;
  swift_beginAccess();
  v3 = *(v1 + v2);
  if (!(v3 >> 62))
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_13:
    *(v1 + v2) = _swiftEmptyArrayStorage;

    return;
  }

  v4 = _CocoaArrayWrapper.endIndex.getter();
  if (!v4)
  {
    goto LABEL_13;
  }

LABEL_3:
  if (v4 >= 1)
  {
    v12 = v2;
    v5 = UIAccessibilityTraitLink;
    v6 = UIAccessibilityTraitStaticText;

    v7 = 0;
    do
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v8 = *(v3 + 8 * v7 + 32);
      }

      v9 = v8;
      ++v7;
      swift_beginAccess();
      sub_10002849C(&qword_100988470, qword_1007D0F80);
      ReusePool.recycle(_:)();
      swift_endAccess();
      [v9 setAttributedText:0];
      *&v9[qword_10097F910] = 0;

      v10 = qword_10097F908;
      swift_beginAccess();
      *&v9[v10] = _swiftEmptyArrayStorage;

      if (*(*&v9[v10] + 16))
      {
        v11 = v5;
      }

      else
      {
        v11 = v6;
      }

      [v9 setAccessibilityTraits:v11];
      [v9 removeFromSuperview];
    }

    while (v4 != v7);

    v2 = v12;
    goto LABEL_13;
  }

  __break(1u);
}

char *sub_1004C58BC()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v2 = type metadata accessor for AutomationSemantics();
  v36 = *(v2 - 8);
  v37 = v2;
  __chkstk_darwin(v2);
  v4 = &ObjectType - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DirectionalTextAlignment();
  v34 = *(v5 - 8);
  v35 = v5;
  __chkstk_darwin(v5);
  v33 = &ObjectType - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for FontUseCase();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &ObjectType - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10002849C(&qword_100988460, "xy\a");
  __chkstk_darwin(v11);
  v12 = OBJC_IVAR____TtC8AppStore31PrivacyHeaderCollectionViewCell_itemLayoutContext;
  v13 = type metadata accessor for ItemLayoutContext();
  (*(*(v13 - 8) + 56))(&v1[v12], 1, 1, v13);
  v14 = OBJC_IVAR____TtC8AppStore31PrivacyHeaderCollectionViewCell_bodyText;
  v15 = sub_10002849C(&unk_100993030, &unk_1007B46B0);
  (*(*(v15 - 8) + 56))(&v1[v14], 1, 1, v15);
  *&v1[OBJC_IVAR____TtC8AppStore31PrivacyHeaderCollectionViewCell_supplementaryItemLabels] = _swiftEmptyArrayStorage;
  *&v1[OBJC_IVAR____TtC8AppStore31PrivacyHeaderCollectionViewCell_supplementaryItems] = _swiftEmptyArrayStorage;
  v16 = type metadata accessor for DynamicTypeLinkedLabel(0);
  ViewRecycler.init()();
  sub_1004C565C();
  ReusePool.init(recycler:limit:)();
  *&v1[OBJC_IVAR____TtC8AppStore31PrivacyHeaderCollectionViewCell_topSeparatorView] = 0;
  v17 = OBJC_IVAR____TtC8AppStore31PrivacyHeaderCollectionViewCell_topSeparator;
  v18 = type metadata accessor for Separator();
  v19 = *(*(v18 - 8) + 56);
  v19(&v1[v17], 1, 1, v18);
  *&v1[OBJC_IVAR____TtC8AppStore31PrivacyHeaderCollectionViewCell_middleSeparatorView] = 0;
  v19(&v1[OBJC_IVAR____TtC8AppStore31PrivacyHeaderCollectionViewCell_middleSeparator], 1, 1, v18);
  v1[OBJC_IVAR____TtC8AppStore31PrivacyHeaderCollectionViewCell_isDetailHeader] = 0;
  if (qword_10096E070 != -1)
  {
    swift_once();
  }

  v20 = sub_1000056A8(v7, qword_1009D10D0);
  (*(v8 + 16))(v10, v20, v7);
  v21 = objc_allocWithZone(v16);
  *&v1[OBJC_IVAR____TtC8AppStore31PrivacyHeaderCollectionViewCell_bodyLabel] = sub_1002F5B8C(v10, 0, 0, 1);
  v40.receiver = v1;
  v40.super_class = ObjectType;
  v22 = objc_msgSendSuper2(&v40, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v23 = [v22 contentView];
  [v23 setClipsToBounds:0];

  v24 = [v22 contentView];
  [v24 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];

  v25 = OBJC_IVAR____TtC8AppStore31PrivacyHeaderCollectionViewCell_bodyLabel;
  v26 = *&v22[OBJC_IVAR____TtC8AppStore31PrivacyHeaderCollectionViewCell_bodyLabel];
  (*(v34 + 104))(v33, enum case for DirectionalTextAlignment.leading(_:), v35);
  v27 = v26;
  dispatch thunk of DynamicTypeLabel.directionalTextAlignment.setter();

  v28 = *&v22[v25];
  memset(v39, 0, sizeof(v39));
  memset(v38, 0, sizeof(v38));
  v29 = v28;
  static AutomationSemantics.shelfItemSubComponent(itemKind:id:parentId:)();
  sub_10002B894(v38, &unk_1009711D0, &unk_1007B1A10);
  sub_10002B894(v39, &unk_1009711D0, &unk_1007B1A10);
  UIView.setAutomationSemantics(_:)();

  (*(v36 + 8))(v4, v37);
  v30 = [v22 contentView];

  [v30 addSubview:*&v22[v25]];
  return v22;
}

void sub_1004C5E88()
{
  v1 = sub_10002849C(&qword_100988460, "xy\a");
  __chkstk_darwin(v1);
  v2 = OBJC_IVAR____TtC8AppStore31PrivacyHeaderCollectionViewCell_itemLayoutContext;
  v3 = type metadata accessor for ItemLayoutContext();
  (*(*(v3 - 8) + 56))(v0 + v2, 1, 1, v3);
  v4 = OBJC_IVAR____TtC8AppStore31PrivacyHeaderCollectionViewCell_bodyText;
  v5 = sub_10002849C(&unk_100993030, &unk_1007B46B0);
  (*(*(v5 - 8) + 56))(v0 + v4, 1, 1, v5);
  *(v0 + OBJC_IVAR____TtC8AppStore31PrivacyHeaderCollectionViewCell_supplementaryItemLabels) = _swiftEmptyArrayStorage;
  *(v0 + OBJC_IVAR____TtC8AppStore31PrivacyHeaderCollectionViewCell_supplementaryItems) = _swiftEmptyArrayStorage;
  type metadata accessor for DynamicTypeLinkedLabel(0);
  ViewRecycler.init()();
  sub_1004C565C();
  ReusePool.init(recycler:limit:)();
  *(v0 + OBJC_IVAR____TtC8AppStore31PrivacyHeaderCollectionViewCell_topSeparatorView) = 0;
  v6 = OBJC_IVAR____TtC8AppStore31PrivacyHeaderCollectionViewCell_topSeparator;
  v7 = type metadata accessor for Separator();
  v8 = *(*(v7 - 8) + 56);
  v8(v0 + v6, 1, 1, v7);
  *(v0 + OBJC_IVAR____TtC8AppStore31PrivacyHeaderCollectionViewCell_middleSeparatorView) = 0;
  v8(v0 + OBJC_IVAR____TtC8AppStore31PrivacyHeaderCollectionViewCell_middleSeparator, 1, 1, v7);
  *(v0 + OBJC_IVAR____TtC8AppStore31PrivacyHeaderCollectionViewCell_isDetailHeader) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void sub_1004C60CC()
{
  v5.receiver = v0;
  v5.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v5, "prepareForReuse");
  v1 = *&v0[OBJC_IVAR____TtC8AppStore26FootnoteCollectionViewCell_footnoteView];
  v2 = *(v1 + OBJC_IVAR____TtC8AppStore12FootnoteView_textLabel);
  if (qword_10096CF38 != -1)
  {
    v4 = *(v1 + OBJC_IVAR____TtC8AppStore12FootnoteView_textLabel);
    swift_once();
    v2 = v4;
  }

  [v2 setTextColor:qword_1009725B8];
  v3 = *(v1 + OBJC_IVAR____TtC8AppStore12FootnoteView_hasChevron);
  *(v1 + OBJC_IVAR____TtC8AppStore12FootnoteView_hasChevron) = 0;
  sub_10007B3E8(v3);
  *(v1 + OBJC_IVAR____TtC8AppStore12FootnoteView_textLightensOnHighlight) = 0;
}

char *sub_1004C61A0(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v10 = OBJC_IVAR____TtC8AppStore26FootnoteCollectionViewCell_itemLayoutContext;
  v11 = type metadata accessor for ItemLayoutContext();
  (*(*(v11 - 8) + 56))(&v4[v10], 1, 1, v11);
  v12 = OBJC_IVAR____TtC8AppStore26FootnoteCollectionViewCell_footnoteView;
  type metadata accessor for FootnoteView();
  *&v4[v12] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v16.receiver = v4;
  v16.super_class = ObjectType;
  v13 = objc_msgSendSuper2(&v16, "initWithFrame:", a1, a2, a3, a4);
  v14 = [v13 contentView];
  [v14 addSubview:*&v13[OBJC_IVAR____TtC8AppStore26FootnoteCollectionViewCell_footnoteView]];

  return v13;
}

id sub_1004C6574(char a1)
{
  ObjectType = swift_getObjectType();
  v9.receiver = v1;
  v9.super_class = ObjectType;
  objc_msgSendSuper2(&v9, "setHighlighted:", a1 & 1);
  v4 = *&v1[OBJC_IVAR____TtC8AppStore26FootnoteCollectionViewCell_footnoteView];
  v8.receiver = v1;
  v8.super_class = ObjectType;
  v5 = objc_msgSendSuper2(&v8, "isHighlighted");
  *(v4 + OBJC_IVAR____TtC8AppStore12FootnoteView_isHighlighted) = v5;
  if (v5 && *(v4 + OBJC_IVAR____TtC8AppStore12FootnoteView_textLightensOnHighlight) == 1)
  {
    if (qword_10096CF40 != -1)
    {
      swift_once();
    }

    v6 = &qword_1009725C0;
  }

  else
  {
    if (qword_10096CF38 != -1)
    {
      swift_once();
    }

    v6 = &qword_1009725B8;
  }

  return [*(v4 + OBJC_IVAR____TtC8AppStore12FootnoteView_textLabel) setTextColor:*v6];
}

uint64_t type metadata accessor for FootnoteCollectionViewCell(uint64_t a1)
{
  result = qword_1009884A0;
  if (!qword_1009884A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

double sub_1004C67B4()
{
  v0 = type metadata accessor for AspectRatio();
  sub_100005644(v0, qword_1009D2040);
  sub_1000056A8(v0, qword_1009D2040);
  AspectRatio.init(_:_:)();
  return result;
}

uint64_t sub_1004C6808()
{
  sub_100005744(0, &qword_100970180, UIColor_ptr);
  result = static UIColor.componentBackgroundStandout.getter();
  qword_1009D2058 = result;
  return result;
}

uint64_t sub_1004C684C()
{
  sub_100005744(0, &qword_100970180, UIColor_ptr);
  result = static UIColor.placeholderBackground.getter();
  qword_1009D2060 = result;
  return result;
}

uint64_t sub_1004C6914()
{
  v0 = type metadata accessor for FontSource();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v10[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for StaticDimension();
  sub_100005644(v4, qword_1009D20B0);
  sub_1000056A8(v4, qword_1009D20B0);
  if (qword_10096E5C0 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for FontUseCase();
  v6 = sub_1000056A8(v5, qword_1009D2068);
  (*(*(v5 - 8) + 16))(v3, v6, v5);
  (*(v1 + 104))(v3, enum case for FontSource.useCase(_:), v0);
  v10[3] = v0;
  v10[4] = &protocol witness table for FontSource;
  v7 = sub_1000056E0(v10);
  (*(v1 + 16))(v7, v3, v0);
  StaticDimension.init(_:scaledLike:)();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_1004C6AE8()
{
  v0 = type metadata accessor for FontSource();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v10[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for StaticDimension();
  sub_100005644(v4, qword_1009D20C8);
  sub_1000056A8(v4, qword_1009D20C8);
  if (qword_10096E5C8 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for FontUseCase();
  v6 = sub_1000056A8(v5, qword_1009D2080);
  (*(*(v5 - 8) + 16))(v3, v6, v5);
  (*(v1 + 104))(v3, enum case for FontSource.useCase(_:), v0);
  v10[3] = v0;
  v10[4] = &protocol witness table for FontSource;
  v7 = sub_1000056E0(v10);
  (*(v1 + 16))(v7, v3, v0);
  StaticDimension.init(_:scaledLike:)();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_1004C6CBC()
{
  v0 = type metadata accessor for FontSource();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v10[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for StaticDimension();
  sub_100005644(v4, qword_1009D20E0);
  sub_1000056A8(v4, qword_1009D20E0);
  if (qword_10096E5D0 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for FontUseCase();
  v6 = sub_1000056A8(v5, qword_1009D2098);
  (*(*(v5 - 8) + 16))(v3, v6, v5);
  (*(v1 + 104))(v3, enum case for FontSource.useCase(_:), v0);
  v10[3] = v0;
  v10[4] = &protocol witness table for FontSource;
  v7 = sub_1000056E0(v10);
  (*(v1 + 16))(v7, v3, v0);
  StaticDimension.init(_:scaledLike:)();
  return (*(v1 + 8))(v3, v0);
}

id sub_1004C6E90(uint64_t a1, uint64_t a2)
{
  v4 = *&v2[OBJC_IVAR____TtC8AppStore32EditorialSearchResultContentView_editorialTypeLabel];
  if (a2)
  {
    v5 = String._bridgeToObjectiveC()();
  }

  else
  {
    v5 = 0;
  }

  [v4 setText:v5];

  [v4 setHidden:a2 == 0];
  v6 = *&v2[OBJC_IVAR____TtC8AppStore32EditorialSearchResultContentView_subtitleLabel];
  if ([v4 isHidden])
  {
    v7 = 2;
  }

  else
  {
    v7 = 1;
  }

  [v6 setNumberOfLines:v7];

  return [v2 setNeedsLayout];
}

id sub_1004C6F74()
{
  v1 = type metadata accessor for SystemImage();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtC8AppStore32EditorialSearchResultContentView____lazy_storage___editorialIcon;
  v7 = *&v0[OBJC_IVAR____TtC8AppStore32EditorialSearchResultContentView____lazy_storage___editorialIcon];
  if (v7)
  {
    v8 = *&v0[OBJC_IVAR____TtC8AppStore32EditorialSearchResultContentView____lazy_storage___editorialIcon];
  }

  else
  {
    (*(v2 + 104))(v5, enum case for SystemImage.appstore(_:), v1, v3);
    sub_100005744(0, &qword_1009730E0, UIFont_ptr);
    if (qword_10096E5C0 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for FontUseCase();
    sub_1000056A8(v9, qword_1009D2068);
    v10 = [v0 traitCollection];
    v11 = v0;
    v12 = static UIFont.preferredFont(forUseWith:compatibleWith:)();

    v13 = [objc_opt_self() configurationWithFont:v12];
    v14 = static SystemImage.load(_:with:)();

    (*(v2 + 8))(v5, v1);
    v15 = [objc_allocWithZone(UIImageView) initWithImage:v14];

    v16 = *&v11[v6];
    *&v11[v6] = v15;
    v8 = v15;

    v7 = 0;
  }

  v17 = v7;
  return v8;
}

void (*sub_1004C719C(uint64_t *a1))(id *a1, char a2)
{
  v2 = OBJC_IVAR____TtC8AppStore32EditorialSearchResultContentView_videoView;
  a1[1] = v1;
  a1[2] = v2;
  *a1 = swift_unknownObjectWeakLoadStrong();
  return sub_1004C71F0;
}

void sub_1004C71F0(id *a1, char a2)
{
  v4 = a1[1];
  v26 = *a1;
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = Strong;
  if (a2)
  {
    if (Strong)
    {
      sub_1004CD1EC(&qword_100973190, 255, type metadata accessor for VideoView, &unk_1007D1B30);
      v7 = v26;
      v8 = [v6 superview];
      if (v8)
      {
        v9 = v8;
        sub_100005744(0, &qword_100972EB0, UIView_ptr);
        v10 = v4;
        v11 = static NSObject.== infix(_:_:)();

        if (v11)
        {
          v12 = swift_unknownObjectWeakLoadStrong();
          if (v12)
          {
            v13 = v12;
            [v12 removeFromSuperview];
          }
        }
      }

      else
      {
      }
    }

    else
    {
      v7 = v26;
    }

    swift_unknownObjectWeakAssign();
    v23 = swift_unknownObjectWeakLoadStrong();
    v24 = a1[1];
    if (v23)
    {
      v25 = v23;
      [a1[1] addSubview:v23];
    }

    [v24 setNeedsLayout];

    v22 = *a1;
    goto LABEL_21;
  }

  if (Strong)
  {
    sub_1004CD1EC(&qword_100973190, 255, type metadata accessor for VideoView, &unk_1007D1B30);
    v14 = [v6 superview];
    if (v14)
    {
      v15 = v14;
      sub_100005744(0, &qword_100972EB0, UIView_ptr);
      v16 = v4;
      v17 = static NSObject.== infix(_:_:)();

      if ((v17 & 1) == 0)
      {
        goto LABEL_13;
      }

      v18 = swift_unknownObjectWeakLoadStrong();
      if (!v18)
      {
        goto LABEL_13;
      }

      v6 = v18;
      [v18 removeFromSuperview];
    }
  }

LABEL_13:
  swift_unknownObjectWeakAssign();
  v19 = swift_unknownObjectWeakLoadStrong();
  v20 = a1[1];
  if (v19)
  {
    v21 = v19;
    [v20 addSubview:v19];
  }

  [v20 setNeedsLayout];
  v22 = v26;
LABEL_21:
}

char *sub_1004C74AC(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v10 = type metadata accessor for DirectionalTextAlignment();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10002849C(&qword_100972ED0, &unk_1007B17B0);
  __chkstk_darwin(v14 - 8);
  v16 = v46 - v15;
  *&v5[OBJC_IVAR____TtC8AppStore32EditorialSearchResultContentView____lazy_storage___editorialIcon] = 0;
  v5[OBJC_IVAR____TtC8AppStore32EditorialSearchResultContentView_showEditorialIcon] = 0;
  *&v5[OBJC_IVAR____TtC8AppStore32EditorialSearchResultContentView_editorialArtworkView] = 0;
  swift_unknownObjectWeakInit();
  *&v5[OBJC_IVAR____TtC8AppStore32EditorialSearchResultContentView_iconArtworkView] = 0;
  *&v5[OBJC_IVAR____TtC8AppStore32EditorialSearchResultContentView_iconBackingView] = 0;
  *&v5[OBJC_IVAR____TtC8AppStore32EditorialSearchResultContentView_artworkGrid] = 0;
  *&v5[OBJC_IVAR____TtC8AppStore32EditorialSearchResultContentView_appEventStoryFormattedDateView] = 0;
  if (qword_10096E5C0 != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for FontUseCase();
  v18 = sub_1000056A8(v17, qword_1009D2068);
  v19 = *(v17 - 8);
  v48 = *(v19 + 16);
  v48(v16, v18, v17);
  v47 = *(v19 + 56);
  v47(v16, 0, 1, v17);
  v20 = enum case for DirectionalTextAlignment.none(_:);
  v21 = *(v11 + 104);
  v46[1] = v11 + 104;
  v21(v13, enum case for DirectionalTextAlignment.none(_:), v10);
  v22 = type metadata accessor for DynamicTypeLabel();
  v23 = objc_allocWithZone(v22);
  v46[0] = v10;
  *&v5[OBJC_IVAR____TtC8AppStore32EditorialSearchResultContentView_editorialTypeLabel] = DynamicTypeLabel.init(useCase:numberOfLines:lineBreakMode:isUserInteractionEnabled:directionalTextAlignment:contentSizeCategoryMapping:)();
  if (qword_10096E5C8 != -1)
  {
    swift_once();
  }

  v24 = sub_1000056A8(v17, qword_1009D2080);
  v48(v16, v24, v17);
  v47(v16, 0, 1, v17);
  v21(v13, v20, v46[0]);
  v25 = objc_allocWithZone(v22);
  *&v5[OBJC_IVAR____TtC8AppStore32EditorialSearchResultContentView_titleLabel] = DynamicTypeLabel.init(useCase:numberOfLines:lineBreakMode:isUserInteractionEnabled:directionalTextAlignment:contentSizeCategoryMapping:)();
  *&v5[OBJC_IVAR____TtC8AppStore32EditorialSearchResultContentView_subtitleLabel] = DynamicTypeLabel.__allocating_init(frame:)();
  v26 = type metadata accessor for EditorialSearchResultContentView();
  v49.receiver = v5;
  v49.super_class = v26;
  v27 = objc_msgSendSuper2(&v49, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v31 = v27;
  [v31 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  v32 = OBJC_IVAR____TtC8AppStore32EditorialSearchResultContentView_subtitleLabel;
  v33 = qword_10096E5D0;
  v34 = *&v31[OBJC_IVAR____TtC8AppStore32EditorialSearchResultContentView_subtitleLabel];
  if (v33 != -1)
  {
    swift_once();
  }

  v35 = sub_1000056A8(v17, qword_1009D2098);
  v48(v16, v35, v17);
  v47(v16, 0, 1, v17);
  dispatch thunk of DynamicTypeLabel.fontUseCase.setter();

  [*&v31[v32] setLineBreakMode:4];
  v36 = OBJC_IVAR____TtC8AppStore32EditorialSearchResultContentView_editorialTypeLabel;
  [v31 addSubview:*&v31[OBJC_IVAR____TtC8AppStore32EditorialSearchResultContentView_editorialTypeLabel]];
  v37 = sub_1004C6F74();
  [v31 addSubview:v37];

  [v31 addSubview:*&v31[OBJC_IVAR____TtC8AppStore32EditorialSearchResultContentView_titleLabel]];
  [v31 addSubview:*&v31[v32]];
  v38 = *&v31[v36];
  v39 = [v31 tintColor];
  [v38 setTextColor:v39];

  v40 = *&v31[v32];
  sub_100005744(0, &qword_100970180, UIColor_ptr);
  v41 = v40;
  v42 = static UIColor.secondaryText.getter();
  [v41 setTextColor:v42];

  v43 = *&v31[OBJC_IVAR____TtC8AppStore32EditorialSearchResultContentView____lazy_storage___editorialIcon];
  v44 = [v31 tintColor];

  [v43 setTintColor:v44];
  return v31;
}

void sub_1004C7B08()
{
  v1 = v0;
  v152 = type metadata accessor for FloatingPointRoundingRule();
  v144 = *(v152 - 8);
  __chkstk_darwin(v152);
  v151 = &v139 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v3 = COERCE_DOUBLE(type metadata accessor for StaticDimension());
  v146 = *(v3 - 8);
  __chkstk_darwin(v3);
  v153 = &v139 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10002849C(&qword_100975CA0, &qword_1007BA940);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v141 = (&v139 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v8);
  v155 = &v139 - v9;
  __chkstk_darwin(v10);
  v12 = (&v139 - v11);
  __chkstk_darwin(v13);
  v150 = (&v139 - v14);
  __chkstk_darwin(v15);
  v17 = &v139 - v16;
  v18 = type metadata accessor for EditorialSearchResultContentView();
  v163.receiver = v0;
  v163.super_class = v18;
  v157 = v18;
  objc_msgSendSuper2(&v163, "layoutSubviews");
  sub_10002849C(&qword_100975C98, &qword_1007D11F0);
  v19 = *(v6 + 72);
  v20 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v21 = swift_allocObject();
  v147 = v20;
  v148 = v21;
  v22 = v21 + v20;
  v23 = *(v5 + 48);
  v142 = v1;
  v24 = *&v1[OBJC_IVAR____TtC8AppStore32EditorialSearchResultContentView_editorialTypeLabel];
  *(v21 + v20) = v24;
  v25 = qword_10096E5D8;
  v149 = v24;
  if (v25 != -1)
  {
    swift_once();
  }

  v26 = sub_1000056A8(v3, qword_1009D20B0);
  v159 = *(v146 + 16);
  (*&v159)(v22 + v23, v26, v3);
  *&v160 = *(v5 + 48);
  v27 = *&v142[OBJC_IVAR____TtC8AppStore32EditorialSearchResultContentView_titleLabel];
  *(v22 + v19) = v27;
  v28 = v5;
  v29 = qword_10096E5E0;
  v30 = v27;
  if (v29 != -1)
  {
    swift_once();
  }

  v31 = sub_1000056A8(v3, qword_1009D20C8);
  (*&v159)(v22 + v19 + *&v160, v31, v3);
  v154 = v19;
  v32 = (v22 + 2 * v19);
  v156 = v28;
  v33 = *(v28 + 48);
  v34 = *&v142[OBJC_IVAR____TtC8AppStore32EditorialSearchResultContentView_subtitleLabel];
  *v32 = v34;
  v35 = qword_10096E5E8;
  v36 = v34;
  if (v35 != -1)
  {
    swift_once();
  }

  v37 = sub_1000056A8(v3, qword_1009D20E0);
  v160 = *&v3;
  (*&v159)(&v32[v33], v37, v3);
  *&v159 = v146 + 8;
  v38 = _swiftEmptyArrayStorage;
  v39 = 3;
  v145 = v22;
  v40 = v22;
  v41 = v154;
  do
  {
    sub_1004CD234(v40, v17);
    sub_1004CD234(v17, v12);
    v42 = *v12;
    v43 = *(v156 + 48);
    v44 = [*v12 isHidden];

    v158 = **&v159;
    (*&v158)(v12 + v43, *&v160);
    if (v44)
    {
      sub_10002B894(v17, &qword_100975CA0, &qword_1007BA940);
    }

    else
    {
      sub_1004CD2A4(v17, v155);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v162[0] = v38;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_100144514(0, v38[2] + 1, 1);
        v38 = v162[0];
      }

      v47 = v38[2];
      v46 = v38[3];
      if (v47 >= v46 >> 1)
      {
        sub_100144514((v46 > 1), v47 + 1, 1);
        v38 = v162[0];
      }

      v38[2] = v47 + 1;
      sub_1004CD2A4(v155, v147 + v38 + v47 * v41);
    }

    v40 += v41;
    --v39;
  }

  while (v39);
  swift_setDeallocating();
  v48 = v156;
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v49 = v38[2];
  v50 = v142;
  if (v49)
  {
    v155 = *(v48 + 48);
    v51 = sub_100005744(0, &qword_100978360, NSObject_ptr);
    v143 = OBJC_IVAR____TtC8AppStore32EditorialSearchResultContentView____lazy_storage___editorialIcon;
    v52 = v147 + v38;
    v147 = (v146 + 32);
    v148 = v51;
    v145 = OBJC_IVAR____TtC8AppStore32EditorialSearchResultContentView_showEditorialIcon;
    v146 = *&v144 + 8;
    v53 = 0.0;
    v139 = v52;
    v140 = v49;
    v54 = *&v160;
    v55 = v153;
    do
    {
      v57 = v150;
      sub_1004CD234(v52, v150);
      v58 = *v57;
      (*v147)(v55, v57 + v155, v54);
      v59 = v58;
      LayoutMarginsAware<>.layoutFrame.getter();
      [v59 sizeThatFits:{v60, v61}];
      v63 = v62;
      v65 = v64;
      LayoutMarginsAware<>.layoutFrame.getter();
      if (v63 >= v66)
      {
        v67 = v66;
      }

      else
      {
        v67 = v63;
      }

      v68 = [v50 traitCollection];
      v69 = v151;
      static Dimensions.defaultRoundingRule.getter();
      StaticDimension.value(compatibleWith:rounded:)();
      v71 = v70;

      (*v146)(v69, v152);
      LayoutMarginsAware<>.layoutFrame.getter();
      v72 = v53 + CGRectGetMinY(v165);
      [v59 firstBaselineFromTop];
      v74 = v72 + v71 - v73;
      if ((static NSObject.== infix(_:_:)() & 1) != 0 && v50[v145] == 1)
      {
        v75 = sub_1004C6F74();
        [v75 bounds];
        v77 = v76;
        v144 = v67;
        v79 = v78;

        LayoutMarginsAware<>.layoutFrame.getter();
        MinX = CGRectGetMinX(v166);
        v81 = *&v50[v143];
        LayoutMarginsAware<>.layoutFrame.getter();
        CGRect.withLayoutDirection(in:relativeTo:)();
        [v81 setFrame:?];

        v167.origin.x = MinX;
        v167.origin.y = v65 * 0.5 + v74 - v79 * 0.5;
        v167.size.width = v77;
        v167.size.height = v79;
        CGRectGetMaxX(v167);
      }

      else
      {
        LayoutMarginsAware<>.layoutFrame.getter();
        CGRectGetMinX(v164);
      }

      v56 = v154;
      LayoutMarginsAware<>.layoutFrame.getter();
      CGRect.withLayoutDirection(in:relativeTo:)();
      [v59 setFrame:?];

      v55 = v153;
      v54 = *&v160;
      (*&v158)(v153, *&v160);
      v53 = v53 + v71;
      v52 += v56;
      --v49;
    }

    while (v49);
    if (v140 > v38[2])
    {
      __break(1u);
      return;
    }

    v82 = v141;
    sub_1004CD234(v139 + (v140 - 1) * v56, v141);

    v83 = *v82;
    v84 = *(v156 + 48);
    [*v82 frame];
    v86 = v85;
    v88 = v87;
    v90 = v89;
    v92 = v91;

    v168.origin.x = v86;
    v168.origin.y = v88;
    v168.size.width = v90;
    v168.size.height = v92;
    MaxY = CGRectGetMaxY(v168);
    (*&v158)(v82 + v84, v54);
  }

  else
  {

    MaxY = 0.0;
    v54 = *&v160;
  }

  LayoutMarginsAware<>.layoutFrame.getter();
  v94 = MaxY + CGRectGetMinY(v169);
  if (qword_10096E6B0 != -1)
  {
    swift_once();
  }

  sub_1000056A8(v54, qword_1009D2430);
  v95 = [v50 traitCollection];
  type metadata accessor for TraitEnvironmentPlaceholder();
  sub_10002849C(&qword_100973210, qword_1007B0BB0);
  v96 = swift_allocObject();
  *(v96 + 16) = xmmword_1007B0B70;
  *(v96 + 32) = v95;
  v97 = v95;
  v98 = TraitEnvironmentPlaceholder.__allocating_init(_:)();
  dispatch thunk of AnyDimension.rawValue(in:)();
  v100 = v99;

  v101 = v94 + v100;
  LayoutMarginsAware<>.layoutFrame.getter();
  v102 = CGRectGetMinX(v170);
  LayoutMarginsAware<>.layoutFrame.getter();
  v103 = CGRectGetMaxY(v171) - v101;
  if (qword_10096E5A8 != -1)
  {
    swift_once();
  }

  v104 = type metadata accessor for AspectRatio();
  sub_1000056A8(v104, qword_1009D2040);
  AspectRatio.width(fromHeight:)();
  v106 = v105;
  LayoutMarginsAware<>.layoutFrame.getter();
  Width = CGRectGetWidth(v172);
  AspectRatio.height(fromWidth:)();
  if (Width < v106)
  {
    v106 = Width;
    v103 = v108;
  }

  v109 = *&v50[OBJC_IVAR____TtC8AppStore32EditorialSearchResultContentView_editorialArtworkView];
  if (v109)
  {
    v110 = v109;
    LayoutMarginsAware<>.layoutFrame.getter();
    CGRect.withLayoutDirection(in:relativeTo:)();
    ArtworkView.frame.setter();
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v112 = Strong;
    LayoutMarginsAware<>.layoutFrame.getter();
    CGRect.withLayoutDirection(in:relativeTo:)();
    [v112 setFrame:?];
  }

  v113 = *&v50[OBJC_IVAR____TtC8AppStore32EditorialSearchResultContentView_artworkGrid];
  if (v113)
  {
    v114 = v113;
    LayoutMarginsAware<>.layoutFrame.getter();
    CGRect.withLayoutDirection(in:relativeTo:)();
    v116 = v115;
    v118 = v117;
    v120 = v119;
    v122 = v121;
    v123 = type metadata accessor for ArtworkGrid();
    v161.receiver = v114;
    v161.super_class = v123;
    objc_msgSendSuper2(&v161, "setFrame:", v116, v118, v120, v122);
    sub_1006B4F58();
    [v114 setNeedsLayout];
  }

  v124 = *&v50[OBJC_IVAR____TtC8AppStore32EditorialSearchResultContentView_iconArtworkView];
  if (v124)
  {
    v125 = *&v50[OBJC_IVAR____TtC8AppStore32EditorialSearchResultContentView_iconBackingView];
    if (v125)
    {
      v126 = v124;
      v127 = v125;
      [v127 setFrame:{v102, v101, v106, v103}];
      [v127 bounds];
      v129 = v128;
      v131 = v130;
      v133 = v132;
      v135 = v134;
      ArtworkView.imageSize.getter();
      v159 = v102;
      v160 = v101;
      v173.origin.x = v129;
      v173.origin.y = v131;
      v173.size.width = v133;
      v173.size.height = v135;
      CGRectGetMidX(v173);
      v158 = v106;
      v174.origin.x = v129;
      v174.origin.y = v131;
      v174.size.width = v133;
      v174.size.height = v135;
      CGRectGetMidY(v174);
      LayoutMarginsAware<>.layoutFrame.getter();
      v106 = v158;
      v102 = v159;
      v101 = v160;
      CGRect.withLayoutDirection(in:relativeTo:)();
      ArtworkView.frame.setter();

      v50 = v142;
    }
  }

  v136 = *&v50[OBJC_IVAR____TtC8AppStore32EditorialSearchResultContentView_appEventStoryFormattedDateView];
  if (v136)
  {
    v137 = v136;
    sub_1002C65CC(v162);
    sub_1002C97E0();
    sub_1001A927C(v162);
    v175.origin.x = v102;
    v175.origin.y = v101;
    v175.size.width = v106;
    v175.size.height = v103;
    CGRectGetMinX(v175);
    v176.size.width = v106;
    v176.origin.x = v102;
    v176.origin.y = v101;
    v176.size.height = v103;
    CGRectGetMinY(v176);
    v138 = v137;
    LayoutMarginsAware<>.layoutFrame.getter();
    CGRect.withLayoutDirection(in:relativeTo:)();
    [v138 setFrame:?];
  }
}

id sub_1004C8938()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC8AppStore32EditorialSearchResultContentView_editorialArtworkView;
  v3 = *&v1[OBJC_IVAR____TtC8AppStore32EditorialSearchResultContentView_editorialArtworkView];
  if (v3)
  {
    [v3 removeFromSuperview];
    v4 = *&v1[v2];
  }

  else
  {
    v4 = 0;
  }

  *&v1[v2] = 0;

  [v1 setNeedsLayout];
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    sub_1004CD1EC(&qword_100973190, 255, type metadata accessor for VideoView, &unk_1007D1B30);
    v7 = [v6 superview];
    if (!v7)
    {
LABEL_9:

      goto LABEL_10;
    }

    v8 = v7;
    sub_100005744(0, &qword_100972EB0, UIView_ptr);
    v9 = v1;
    v10 = static NSObject.== infix(_:_:)();

    if (v10)
    {
      v11 = swift_unknownObjectWeakLoadStrong();
      if (v11)
      {
        v6 = v11;
        [v11 removeFromSuperview];
        goto LABEL_9;
      }
    }
  }

LABEL_10:
  swift_unknownObjectWeakAssign();
  v12 = swift_unknownObjectWeakLoadStrong();
  if (v12)
  {
    v13 = v12;
    [v1 addSubview:v12];
  }

  [v1 setNeedsLayout];
  sub_1004CCC9C(0);
  v14 = OBJC_IVAR____TtC8AppStore32EditorialSearchResultContentView_artworkGrid;
  v15 = *&v1[OBJC_IVAR____TtC8AppStore32EditorialSearchResultContentView_artworkGrid];
  if (v15)
  {
    [v15 removeFromSuperview];
    v16 = *&v1[v14];
  }

  else
  {
    v16 = 0;
  }

  *&v1[v14] = 0;

  [v1 setNeedsLayout];
  v17 = OBJC_IVAR____TtC8AppStore32EditorialSearchResultContentView_appEventStoryFormattedDateView;
  v18 = *&v1[OBJC_IVAR____TtC8AppStore32EditorialSearchResultContentView_appEventStoryFormattedDateView];
  if (v18)
  {
    [v18 removeFromSuperview];
    v19 = *&v1[v17];
  }

  else
  {
    v19 = 0;
  }

  *&v1[v17] = 0;

  return [v1 setNeedsLayout];
}

double sub_1004C8B48(id a1)
{
  v17.receiver = v1;
  v17.super_class = type metadata accessor for EditorialSearchResultContentView();
  objc_msgSendSuper2(&v17, "traitCollectionDidChange:", a1);
  if (a1)
  {
    a1 = [a1 preferredContentSizeCategory];
  }

  v3 = [v1 traitCollection];
  v4 = [v3 preferredContentSizeCategory];

  if (!a1)
  {

LABEL_11:
    v12 = sub_1004C6F74();
    sub_100005744(0, &qword_1009730E0, UIFont_ptr);
    if (qword_10096E5C0 != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for FontUseCase();
    sub_1000056A8(v13, qword_1009D2068);
    v14 = [v1 traitCollection];
    v15 = static UIFont.preferredFont(forUseWith:compatibleWith:)();

    v16 = [objc_opt_self() configurationWithFont:v15];
    [v12 setPreferredSymbolConfiguration:v16];

    return result;
  }

  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;
  if (v5 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v7 == v8)
  {

    return result;
  }

  v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v10 & 1) == 0)
  {
    goto LABEL_11;
  }

  return result;
}

void sub_1004C8E10(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for MediaOverlayStyle();
  v185 = *(v3 - 8);
  __chkstk_darwin(v3);
  v184 = v177 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Artwork.Style();
  __chkstk_darwin(v5 - 8);
  v183 = v177 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v182 = type metadata accessor for Artwork.Crop();
  v181 = *(v182 - 8);
  __chkstk_darwin(v182);
  v180 = v177 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10002849C(&unk_100973A50, &unk_1007B4FD0);
  __chkstk_darwin(v8 - 8);
  v196 = v177 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v195 = v177 - v11;
  v12 = sub_10002849C(&qword_100982460, &unk_1007B5C90);
  __chkstk_darwin(v12 - 8);
  v194 = v177 - v13;
  v14 = type metadata accessor for VideoControls();
  __chkstk_darwin(v14 - 8);
  v193 = v177 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v192 = v177 - v17;
  v18 = sub_10002849C(&unk_1009732A0, &unk_1007B4FE0);
  __chkstk_darwin(v18 - 8);
  v191 = v177 - v19;
  v190 = type metadata accessor for VideoFillMode();
  v189 = *(v190 - 8);
  __chkstk_darwin(v190);
  v188 = v177 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for VideoConfiguration();
  v197 = *(v21 - 8);
  __chkstk_darwin(v21);
  v202 = v177 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v216 = type metadata accessor for AdamId();
  v211 = *(v216 - 8);
  __chkstk_darwin(v216);
  v215 = v177 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_10002849C(&qword_100983ED8, &qword_1007D11B0);
  __chkstk_darwin(v24 - 8);
  v200 = v177 - v25;
  v204 = type metadata accessor for ArtworkGridType();
  v203 = *(v204 - 8);
  __chkstk_darwin(v204);
  v186 = v177 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v199 = v177 - v28;
  v29 = type metadata accessor for EditorialSearchResultType();
  v213 = *(v29 - 8);
  v214 = v29;
  __chkstk_darwin(v29);
  v210 = v177 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v206 = v177 - v32;
  __chkstk_darwin(v33);
  v35 = v177 - v34;
  v209 = type metadata accessor for AspectRatio();
  v208 = *(v209 - 8);
  __chkstk_darwin(v209);
  v37 = v177 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = type metadata accessor for AspectFitMeasurable();
  v39 = *(v38 - 8);
  __chkstk_darwin(v38);
  v41 = v177 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for EditorialSearchResult();
  sub_1004CD1EC(&qword_100973D90, 255, &type metadata accessor for EditorialSearchResult, &protocol conformance descriptor for SearchResult);
  ItemLayoutContext.typedModel<A>(as:)();
  if (!*&v218[0])
  {
    return;
  }

  v179 = v21;
  v205 = *&v218[0];
  v178 = v3;
  type metadata accessor for ArtworkLoader();
  type metadata accessor for BaseObjectGraph();
  inject<A, B>(_:from:)();
  v207 = *&v218[0];
  type metadata accessor for ArtworkIconFetcher();
  v198 = a2;
  BaseObjectGraph.optional<A>(_:)();
  v42 = *&v218[0];
  v43 = v212;
  if (*&v218[0])
  {
    *&v217 = v212;
    type metadata accessor for EditorialSearchResultContentView();
    sub_1004CD1EC(&qword_100988558, v44, type metadata accessor for EditorialSearchResultContentView, &protocol conformance descriptor for NSObject);

    v45 = v43;
    AnyHashable.init<A>(_:)();
    dispatch thunk of ArtworkIconFetcher.forgetFetches(for:)();

    sub_10003D614(v218);
  }

  v201 = v42;
  v177[1] = type metadata accessor for EditorialSearchResultContentView();
  LayoutMarginsAware<>.layoutFrame.getter();
  swift_getKeyPath();
  ItemLayoutContext.subscript.getter();

  v46 = *&v218[0];
  if (qword_10096E5A8 != -1)
  {
    goto LABEL_104;
  }

  while (1)
  {
    v47 = v209;
    v48 = sub_1000056A8(v209, qword_1009D2040);
    v208[2](v37, v48, v47);
    AspectFitMeasurable.init(_:)();
    type metadata accessor for TraitEnvironmentPlaceholder();
    sub_10002849C(&qword_100973210, qword_1007B0BB0);
    v49 = swift_allocObject();
    *(v49 + 16) = xmmword_1007B0B70;
    *(v49 + 32) = v46;
    v50 = v46;
    v51 = TraitEnvironmentPlaceholder.__allocating_init(_:)();
    dispatch thunk of Measurable.measurements(fitting:in:)();
    v53 = v52;
    v55 = v54;

    (*(v39 + 8))(v41, v38);
    v38 = v205;
    EditorialSearchResult.type.getter();
    v56 = (*(v213 + 88))(v35, v214);
    v57 = OBJC_IVAR____TtC8AppStore32EditorialSearchResultContentView_showEditorialIcon;
    v187 = enum case for EditorialSearchResultType.appEventStory(_:);
    if (v56 == enum case for EditorialSearchResultType.category(_:) || v56 == enum case for EditorialSearchResultType.collection(_:) || v56 == enum case for EditorialSearchResultType.story(_:) || v56 == enum case for EditorialSearchResultType.appEventStory(_:))
    {
      v43[OBJC_IVAR____TtC8AppStore32EditorialSearchResultContentView_showEditorialIcon] = 1;
      v59 = sub_1004C6F74();
      [v59 setHidden:(v43[v57] & 1) == 0];

      [v43 setNeedsLayout];
    }

    else
    {
      v43[OBJC_IVAR____TtC8AppStore32EditorialSearchResultContentView_showEditorialIcon] = 0;
      v58 = sub_1004C6F74();
      [v58 setHidden:(v43[v57] & 1) == 0];

      [v43 setNeedsLayout];
      (*(v213 + 8))(v35, v214);
    }

    v60 = dispatch thunk of EditorialSearchResult.typeDisplayText.getter();
    sub_1004C6E90(v60, v61);
    EditorialSearchResult.title.getter();
    v63 = v62;
    v64 = *&v43[OBJC_IVAR____TtC8AppStore32EditorialSearchResultContentView_titleLabel];
    v65 = v62 ? String._bridgeToObjectiveC()() : 0;
    [v64 setText:v65];

    [v64 setHidden:v63 == 0];
    [v43 setNeedsLayout];
    EditorialSearchResult.subtitle.getter();
    v67 = v66;
    v68 = *&v43[OBJC_IVAR____TtC8AppStore32EditorialSearchResultContentView_subtitleLabel];
    v69 = v66 ? String._bridgeToObjectiveC()() : 0;
    [v68 setText:v69];

    [v68 setHidden:v67 == 0];
    [v43 setNeedsLayout];
    v70 = EditorialSearchResult.collectionAdamIds.getter();
    if (!v70)
    {
      break;
    }

    v71 = v70;
    v72 = v200;
    EditorialSearchResult.artworkGridType.getter();
    v73 = v203;
    v46 = v204;
    if ((*(v203 + 48))(v72, 1, v204) == 1)
    {

      sub_10002B894(v72, &qword_100983ED8, &qword_1007D11B0);
      break;
    }

    v93 = v199;
    (*(v73 + 32))(v199, v72, v46);
    v94 = v186;
    (*(v73 + 16))(v186, v93, v46);
    v95 = (*(v73 + 88))(v94, v46);
    if (v95 == enum case for ArtworkGridType.small(_:))
    {
      goto LABEL_32;
    }

    if (v95 == enum case for ArtworkGridType.large(_:))
    {
      v96 = 1;
    }

    else if (v95 == enum case for ArtworkGridType.extraLarge(_:))
    {
      v96 = 2;
    }

    else
    {
      if (v95 != enum case for ArtworkGridType.mixed(_:))
      {
        (*(v73 + 8))(v94, v46);
LABEL_32:
        v96 = 0;
        goto LABEL_50;
      }

      v96 = 3;
    }

LABEL_50:
    v109 = objc_allocWithZone(type metadata accessor for ArtworkGrid());
    v110 = sub_1006B52EC(v96, 0.0, 0.0, 0.0, 0.0);
    sub_1006AD188();
    v111 = v110[OBJC_IVAR____TtC8AppStore11ArtworkGrid_gridType];
    v112.f64[0] = v53;
    v113 = sub_1006B4CD4(v111, v112, v55);
    v35 = *(v71 + 2);
    if (v113 < v35)
    {
      v114.f64[0] = v53;
      v115 = sub_1006B4CD4(v111, v114, v55);
      if ((v115 & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else if (v35 >= v115)
      {
        if (v35 == v115)
        {
LABEL_67:
          v41 = v71;
        }

        else
        {
          v202 = v110;
          sub_1005E7D94(v71, &v71[(*(v211 + 80) + 32) & ~*(v211 + 80)], 0, (2 * v115) | 1);
          v41 = v116;
LABEL_55:

          v43 = v212;
          v110 = v202;
        }

        *&v110[OBJC_IVAR____TtC8AppStore11ArtworkGrid_expectedNumberOfArtworkImages] = *(v41 + 2);
        sub_1006B5128();
        if (v201)
        {
          v121 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v122 = swift_allocObject();
          v122[2] = v110;
          v122[3] = v121;
          v123 = v207;
          v122[4] = v207;
          v124 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v125 = swift_allocObject();
          v125[2] = v110;
          v125[3] = v124;
          v125[4] = v123;
          *&v218[0] = v43;
          sub_1004CD1EC(&qword_100988558, v126, type metadata accessor for EditorialSearchResultContentView, &protocol conformance descriptor for NSObject);
          v127 = v43;
          v128 = v110;
          swift_retain_n();

          v129 = v127;
          v130 = v128;
          AnyHashable.init<A>(_:)();
          dispatch thunk of ArtworkIconFetcher.fetchArtworkIcons(for:partialCompletion:completion:handlerKey:)();

          sub_10002B894(&v217, &qword_10096FB90, &qword_1007B2A50);
        }

        else
        {

          v219 = 0;
          memset(v218, 0, sizeof(v218));
        }

        v101 = v206;
        sub_10002B894(v218, &qword_10096FB90, &qword_1007B2A50);
        v131 = v110;
        sub_1004CCE64(v110);

        (*(v203 + 8))(v199, v204);
        goto LABEL_72;
      }

      __break(1u);
LABEL_108:
      __break(1u);
      goto LABEL_109;
    }

    if (v113 <= v35)
    {
      goto LABEL_67;
    }

    v209 = v113 - v35;
    if (v113 - v35 < 0)
    {
      goto LABEL_108;
    }

    if (v35)
    {
      v202 = v110;

      v41 = v71;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        goto LABEL_60;
      }

      goto LABEL_110;
    }

LABEL_109:
    __break(1u);
LABEL_110:
    v41 = sub_100034724(0, (v35 + 1), 1, v71);
LABEL_60:
    v117 = 0;
    v39 = (*(v211 + 80) + 32) & ~*(v211 + 80);
    v208 = &v71[v39];
    v43 = (v211 + 16);
    v37 = (v211 + 32);
    while (1)
    {
      v118 = v117 % v35;
      if (v117 % v35 < 0)
      {
        break;
      }

      if (v118 >= *(v71 + 2))
      {
        goto LABEL_103;
      }

      v46 = v71;
      v119 = *(v211 + 72);
      (*(v211 + 16))(v215, v208 + v119 * v118, v216);
      v38 = *(v41 + 2);
      v120 = *(v41 + 3);
      if (v38 >= v120 >> 1)
      {
        v41 = sub_100034724((v120 > 1), v38 + 1, 1, v41);
      }

      ++v117;
      *(v41 + 2) = v38 + 1;
      (*v37)(&v41[v39 + v38 * v119], v215, v216);
      v71 = v46;
      if (v209 == v117)
      {
        goto LABEL_55;
      }
    }

    __break(1u);
LABEL_103:
    __break(1u);
LABEL_104:
    swift_once();
  }

  if (EditorialSearchResult.editorialVideo.getter())
  {
    (*(v189 + 104))(v188, enum case for VideoFillMode.scaleAspectFill(_:), v190);
    Video.preview.getter();
    Artwork.size.getter();
    v74 = v191;
    AspectRatio.init(_:_:)();

    (v208[7])(v74, 0, 1, v209);
    Video.playbackControls.getter();
    Video.autoPlayPlaybackControls.getter();
    Video.canPlayFullScreen.getter();
    Video.allowsAutoPlay.getter();
    Video.looping.getter();
    VideoConfiguration.init(fillMode:aspectRatio:playbackControls:autoPlayPlaybackControls:canPlayFullScreen:allowsAutoPlay:looping:roundedCorners:deviceCornerRadiusFactor:)();
    type metadata accessor for VideoViewManager();
    BaseObjectGraph.inject<A>(_:)();
    Video.playbackId.getter();
    v75 = v194;
    Video.videoUrl.getter();
    v76 = type metadata accessor for URL();
    (*(*(v76 - 8) + 56))(v75, 0, 1, v76);
    v77 = v195;
    Video.templateMediaEvent.getter();
    v78 = v196;
    Video.templateClickEvent.getter();
    v79 = type metadata accessor for VideoView(0);
    sub_1004CD1EC(&qword_100973190, 255, type metadata accessor for VideoView, &unk_1007D1B30);
    v216 = v79;
    v80 = dispatch thunk of VideoViewManager.videoView<A>(with:videoUrl:configuration:templateMediaEvent:templateClickEvent:asPartOf:)();
    sub_10002B894(v78, &unk_100973A50, &unk_1007B4FD0);
    sub_10002B894(v77, &unk_100973A50, &unk_1007B4FD0);
    sub_10002B894(v75, &qword_100982460, &unk_1007B5C90);
    sub_10002B894(v218, &qword_10096FB90, &qword_1007B2A50);
    v81 = v212;
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v83 = Strong;
      v84 = [Strong superview];
      if (!v84)
      {
        goto LABEL_26;
      }

      v85 = v84;
      sub_100005744(0, &qword_100972EB0, UIView_ptr);
      v86 = v81;
      v87 = static NSObject.== infix(_:_:)();

      if (v87)
      {
        v88 = swift_unknownObjectWeakLoadStrong();
        if (v88)
        {
          v83 = v88;
          [v88 removeFromSuperview];
LABEL_26:
        }
      }
    }

    swift_unknownObjectWeakAssign();
    v89 = swift_unknownObjectWeakLoadStrong();
    if (v89)
    {
      v90 = v89;
      [v81 addSubview:v89];
    }

    [v81 setNeedsLayout];

    v91 = swift_unknownObjectWeakLoadStrong();
    if (v91)
    {
      v92 = v91;
      Video.preview.getter();
      Artwork.config(_:mode:prefersLayeredImage:)();

      sub_1004CD1EC(&unk_1009840E0, 255, type metadata accessor for VideoView, &unk_1007DDE78);
      ArtworkLoader.fetchArtwork<A>(using:closestMatch:into:)();

      (*(v197 + 8))(v202, v179);
    }

    else
    {
      (*(v197 + 8))(v202, v179);
    }

    v101 = v206;
  }

  else if (EditorialSearchResult.editorialArtwork.getter())
  {
    type metadata accessor for ArtworkView();
    v97 = static ArtworkView.cardArtworkView.getter();
    [v97 setContentMode:2];
    Artwork.config(using:)();
    sub_1004CD1EC(&qword_100970E80, 255, &type metadata accessor for ArtworkView, &protocol conformance descriptor for ArtworkView);
    ArtworkLoader.fetchArtwork<A>(using:closestMatch:into:)();
    v98 = OBJC_IVAR____TtC8AppStore32EditorialSearchResultContentView_editorialArtworkView;
    v99 = v212;
    v100 = *&v212[OBJC_IVAR____TtC8AppStore32EditorialSearchResultContentView_editorialArtworkView];
    v101 = v206;
    v102 = v97;
    if (v100)
    {
      [v100 removeFromSuperview];
      v103 = *&v99[v98];
    }

    else
    {
      v103 = 0;
    }

    *&v99[v98] = v97;
    v108 = v97;

    [v99 addSubview:v108];
    [v99 setNeedsLayout];
  }

  else
  {
    v104 = EditorialSearchResult.iconArtwork.getter();
    v101 = v206;
    if (v104)
    {
      v105 = [objc_allocWithZone(type metadata accessor for ArtworkView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
      Artwork.size.getter();
      AspectRatio.init(_:_:)();
      AspectRatio.maxSize(fitting:)();
      (v208[1])(v37, v209);
      v106 = v180;
      Artwork.crop.getter();
      Artwork.Crop.preferredContentMode.getter();
      (*(v181 + 8))(v106, v182);
      Artwork.config(_:mode:prefersLayeredImage:)();
      Artwork.style.getter();
      ArtworkView.style.setter();
      [v105 setContentMode:Artwork.contentMode.getter()];
      ArtworkLoaderConfig.size.getter();
      ArtworkView.imageSize.setter();
      if (!Artwork.backgroundColor.getter())
      {
        sub_100005744(0, &qword_100970180, UIColor_ptr);
        static UIColor.placeholderBackground.getter();
      }

      ArtworkView.backgroundColor.setter();
      sub_1004CD1EC(&qword_100970E80, 255, &type metadata accessor for ArtworkView, &protocol conformance descriptor for ArtworkView);
      ArtworkLoader.fetchArtwork<A>(using:closestMatch:into:)();
      v107 = v105;
      sub_1004CCC9C(v105);
    }
  }

LABEL_72:
  EditorialSearchResult.type.getter();
  (*(v213 + 104))(v210, v187, v214);
  sub_1004CD1EC(&qword_100983EE8, 255, &type metadata accessor for EditorialSearchResultType, &protocol conformance descriptor for EditorialSearchResultType);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  if (v218[0] == v217)
  {
    v132 = v214;
    v133 = *(v213 + 8);
    v133(v210, v214);
    v133(v101, v132);

LABEL_75:
    v138 = EditorialSearchResult.appEventFormattedDates.getter();
    if (v138 >> 62)
    {
      v139 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v139 = *((v138 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v137 = v212;
    if (v139)
    {
      v140 = OBJC_IVAR____TtC8AppStore32EditorialSearchResultContentView_appEventStoryFormattedDateView;
      v141 = *&v212[OBJC_IVAR____TtC8AppStore32EditorialSearchResultContentView_appEventStoryFormattedDateView];
      if (v141)
      {
        goto LABEL_79;
      }

      v154 = [objc_allocWithZone(type metadata accessor for AppPromotionFormattedDateView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
      v155 = *&v137[v140];
      if (v155)
      {
        [v155 removeFromSuperview];
        v156 = *&v137[v140];
      }

      else
      {
        v156 = 0;
      }

      *&v137[v140] = v154;
      v167 = v154;

      if (v167)
      {
        v168 = v167[OBJC_IVAR____TtC8AppStore29AppPromotionFormattedDateView_style];
        v167[OBJC_IVAR____TtC8AppStore29AppPromotionFormattedDateView_style] = 6;
        sub_1002C3F30(v168);
        [v137 addSubview:v167];
      }

      [v137 setNeedsLayout];

      v169 = *&v137[v140];
      if (v169)
      {
        type metadata accessor for AppEventLiveIndicatorAnimationCoordinator();
        v170 = v169;
        BaseObjectGraph.optional<A>(_:)();
        v171 = *&v218[0];
        v172 = OBJC_IVAR____TtC8AppStore29AppPromotionFormattedDateView_liveIndicatorAnimationCoordinator;
        v173 = *&v170[OBJC_IVAR____TtC8AppStore29AppPromotionFormattedDateView_liveIndicatorAnimationCoordinator];
        v174 = v173;
        sub_1002C55E4(v171);
        v175 = *&v170[v172];
        *&v170[v172] = v171;
        v176 = v171;

        sub_1002C5748(v173);
        v141 = *&v137[v140];
        if (v141)
        {
LABEL_79:
          v142 = v141;
          [v137 bringSubviewToFront:v142];
          v143 = EditorialSearchResult.appEventFormattedDates.getter();
          type metadata accessor for AppEventFormattedDatePresenter(0);
          swift_allocObject();
          v144 = v142;
          v145 = sub_1006E6CE8(v143, v141, &off_1008BC738);

          v146 = OBJC_IVAR____TtC8AppStore29AppPromotionFormattedDateView_appEventFormattedDatePresenter;
          swift_beginAccess();
          *&v144[v146] = v145;
        }
      }
    }

    v147 = OBJC_IVAR____TtC8AppStore32EditorialSearchResultContentView_appEventStoryFormattedDateView;
    v148 = *&v137[OBJC_IVAR____TtC8AppStore32EditorialSearchResultContentView_appEventStoryFormattedDateView];
    if (v148)
    {
      v149 = v148;
      v150 = EditorialSearchResult.tintColor.getter();
      v151 = OBJC_IVAR____TtC8AppStore29AppPromotionFormattedDateView_backgroundView;
      swift_beginAccess();
      v152 = *&v149[v151];
      if (v152)
      {
        v153 = v152;
        [v153 setBackgroundColor:v150];
      }

      else
      {

        v149 = v150;
      }

      v157 = *&v137[v147];
      if (v157)
      {
        v158 = v157;
        v159 = v184;
        EditorialSearchResult.mediaOverlayStyle.getter();
        v160 = MediaOverlayStyle.userInterfaceStyle.getter();
        (*(v185 + 8))(v159, v178);
        [v158 setOverrideUserInterfaceStyle:v160];
      }
    }

    v161 = OBJC_IVAR____TtC8AppStore32EditorialSearchResultContentView_editorialArtworkView;
    v162 = *&v137[OBJC_IVAR____TtC8AppStore32EditorialSearchResultContentView_editorialArtworkView];
    if (v162)
    {
      v163 = v162;
      dispatch thunk of RoundedCornerView.borderWidth.setter();

      v164 = *&v137[v161];
      if (v164)
      {
        v165 = v164;
        if (!EditorialSearchResult.tintColor.getter())
        {
          v166 = [objc_opt_self() clearColor];
        }

        dispatch thunk of RoundedCornerView.borderColor.setter();
      }
    }
  }

  else
  {
    v134 = _stringCompareWithSmolCheck(_:_:expecting:)();
    v135 = v214;
    v136 = *(v213 + 8);
    v136(v210, v214);
    v136(v101, v135);

    v137 = v212;
    if (v134)
    {
      goto LABEL_75;
    }
  }

  [v137 setNeedsLayout];
}

void sub_1004CAD4C(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v18 = a4;
  v19 = a3;
  v17 = type metadata accessor for Artwork.Crop();
  v6 = *(v17 - 8);
  __chkstk_darwin(v17);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a1 + 16);
  if (v9)
  {
    swift_beginAccess();
    v10 = (a1 + 40);
    do
    {
      v11 = *v10;
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v13 = Strong;

        Artwork.crop.getter();
        Artwork.Crop.preferredContentMode.getter();
        (*(v6 + 8))(v8, v17);
        Artwork.config(_:mode:prefersLayeredImage:)();
        v21 = 0;
        memset(v20, 0, sizeof(v20));
        v14 = swift_allocObject();
        *(v14 + 16) = a2;
        *(v14 + 24) = v11;
        v15 = a2;
        ArtworkLoader.fetchArtwork(using:closestMatch:handlerKey:completionHandler:)();

        sub_10002B894(v20, &qword_10096FB90, &qword_1007B2A50);
      }

      v10 += 2;
      --v9;
    }

    while (v9);
  }
}

void sub_1004CAF6C(uint64_t a1, uint64_t a2, double a3, double a4, double a5, double a6)
{
  v72 = a2;
  v8 = type metadata accessor for Artwork.Style();
  __chkstk_darwin(v8 - 8);
  v9 = type metadata accessor for Artwork.Crop();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v69 = &v67 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = type metadata accessor for AdamId();
  v75 = *(v77 - 8);
  __chkstk_darwin(v77);
  v76 = &v67 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for AspectRatio();
  v73 = *(v13 - 8);
  v74 = v13;
  __chkstk_darwin(v13);
  v15 = &v67 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for AspectFitMeasurable();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v67 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10002C0AC(a1, v79);
  sub_10002849C(&unk_1009793D0, qword_1007B4FF0);
  type metadata accessor for EditorialSearchResult();
  if (!swift_dynamicCast())
  {
    return;
  }

  v67 = v10;
  v68 = v9;
  v20 = v78;
  type metadata accessor for ArtworkIconFetcher();
  BaseObjectGraph.optional<A>(_:)();
  v70 = v6;
  v71 = *&v79[0];
  v21 = [v6 traitCollection];
  if (qword_10096E5A8 != -1)
  {
    goto LABEL_46;
  }

  while (1)
  {
    v22 = v74;
    v23 = sub_1000056A8(v74, qword_1009D2040);
    (*(v73 + 2))(v15, v23, v22);
    AspectFitMeasurable.init(_:)();
    type metadata accessor for TraitEnvironmentPlaceholder();
    sub_10002849C(&qword_100973210, qword_1007B0BB0);
    v24 = swift_allocObject();
    *(v24 + 16) = xmmword_1007B0B70;
    *(v24 + 32) = v21;
    v25 = v21;
    v26 = TraitEnvironmentPlaceholder.__allocating_init(_:)();
    dispatch thunk of Measurable.measurements(fitting:in:)();
    v28 = v27;
    v30 = v29;

    (*(v17 + 8))(v19, v16);
    v31 = EditorialSearchResult.collectionAdamIds.getter();
    v33 = v70;
    if (!v31)
    {
      goto LABEL_11;
    }

    v17 = v31;
    v34 = *&v70[OBJC_IVAR____TtC8AppStore32EditorialSearchResultContentView_artworkGrid];
    if (!v34)
    {

LABEL_11:
      if (EditorialSearchResult.editorialVideo.getter())
      {
        Strong = swift_unknownObjectWeakLoadStrong();
        if (Strong)
        {
          v45 = Strong;
          Video.preview.getter();
          Artwork.config(_:mode:prefersLayeredImage:)();

          type metadata accessor for VideoView(0);
          v46 = &unk_1009840E0;
          v47 = type metadata accessor for VideoView;
          v48 = &unk_1007DDE78;
LABEL_40:
          sub_1004CD1EC(v46, 255, v47, v48);
          ArtworkLoader.fetchArtwork<A>(using:closestMatch:into:)();

          goto LABEL_41;
        }
      }

      if (EditorialSearchResult.editorialArtwork.getter())
      {
        v55 = *&v33[OBJC_IVAR____TtC8AppStore32EditorialSearchResultContentView_editorialArtworkView];
        if (v55)
        {
          v56 = v55;
          [v56 setContentMode:2];
          Artwork.config(using:)();
          type metadata accessor for ArtworkView();
          sub_1004CD1EC(&qword_100970E80, 255, &type metadata accessor for ArtworkView, &protocol conformance descriptor for ArtworkView);
          ArtworkLoader.fetchArtwork<A>(using:closestMatch:into:)();

          goto LABEL_41;
        }
      }

      if (!EditorialSearchResult.iconArtwork.getter())
      {
LABEL_42:

        return;
      }

      v65 = *&v33[OBJC_IVAR____TtC8AppStore32EditorialSearchResultContentView_iconArtworkView];
      if (v65)
      {
        v45 = v65;
        Artwork.size.getter();
        AspectRatio.init(_:_:)();
        AspectRatio.maxSize(fitting:)();
        (*(v73 + 1))(v15, v74);
        v66 = v69;
        Artwork.crop.getter();
        Artwork.Crop.preferredContentMode.getter();
        (*(v67 + 8))(v66, v68);
        Artwork.config(_:mode:prefersLayeredImage:)();
        Artwork.style.getter();
        ArtworkView.style.setter();
        [v45 setContentMode:Artwork.contentMode.getter()];
        ArtworkLoaderConfig.size.getter();
        ArtworkView.imageSize.setter();
        if (!Artwork.backgroundColor.getter())
        {
          sub_100005744(0, &qword_100970180, UIColor_ptr);
          static UIColor.placeholderBackground.getter();
        }

        ArtworkView.backgroundColor.setter();
        type metadata accessor for ArtworkView();
        v46 = &qword_100970E80;
        v47 = &type metadata accessor for ArtworkView;
        v48 = &protocol conformance descriptor for ArtworkView;
        goto LABEL_40;
      }

LABEL_41:

      goto LABEL_42;
    }

    v35 = v34[OBJC_IVAR____TtC8AppStore11ArtworkGrid_gridType];
    v32.f64[0] = v28;
    v36 = sub_1006B4CD4(v35, v32, v30);
    v19 = *(v17 + 16);
    if (v36 < v19)
    {
      break;
    }

    v40 = v71;
    v39 = v72;
    if (v36 <= v19)
    {
      goto LABEL_25;
    }

    v74 = v36 - v19;
    if (v36 - v19 < 0)
    {
      goto LABEL_49;
    }

    if (v19)
    {
      v69 = v20;
      v68 = v34;
      v49 = v34;

      v42 = v17;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        goto LABEL_18;
      }

      goto LABEL_51;
    }

LABEL_50:
    __break(1u);
LABEL_51:
    v42 = sub_100034724(0, v19 + 1, 1, v17);
LABEL_18:
    v50 = 0;
    v15 = ((*(v75 + 80) + 32) & ~*(v75 + 80));
    v73 = &v15[v17];
    v21 = (v75 + 16);
    v20 = (v75 + 32);
    while (1)
    {
      v51 = v50 % v19;
      if (v50 % v19 < 0)
      {
        break;
      }

      if (v51 >= *(v17 + 16))
      {
        goto LABEL_45;
      }

      v52 = *(v75 + 72);
      (*(v75 + 16))(v76, &v73[v52 * v51], v77);
      v16 = *(v42 + 16);
      v53 = *(v42 + 24);
      if (v16 >= v53 >> 1)
      {
        v42 = sub_100034724((v53 > 1), v16 + 1, 1, v42);
      }

      ++v50;
      *(v42 + 16) = v16 + 1;
      (*v20)(&v15[v42 + v16 * v52], v76, v77);
      if (v74 == v50)
      {

        v40 = v71;
        v39 = v72;
        v33 = v70;
        v34 = v68;
        goto LABEL_30;
      }
    }

    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    swift_once();
  }

  v37.f64[0] = v28;
  v38 = sub_1006B4CD4(v35, v37, v30);
  v40 = v71;
  v39 = v72;
  if ((v38 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_48;
  }

  if (v19 < v38)
  {
LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  if (v19 == v38)
  {
LABEL_25:
    v54 = v34;
    v42 = v17;
  }

  else
  {
    sub_1005E7D94(v17, v17 + ((*(v75 + 80) + 32) & ~*(v75 + 80)), 0, (2 * v38) | 1);
    v42 = v41;
    v43 = v34;
  }

LABEL_30:
  *&v34[OBJC_IVAR____TtC8AppStore11ArtworkGrid_expectedNumberOfArtworkImages] = *(v42 + 16);
  sub_1006B5128();
  if (v40)
  {
    v57 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v58 = swift_allocObject();
    v58[2] = v34;
    v58[3] = v57;
    v58[4] = v39;
    v59 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v60 = swift_allocObject();
    v60[2] = v34;
    v60[3] = v59;
    v60[4] = v39;
    *&v79[0] = v33;
    type metadata accessor for EditorialSearchResultContentView();
    sub_1004CD1EC(&qword_100988558, v61, type metadata accessor for EditorialSearchResultContentView, &protocol conformance descriptor for NSObject);
    v62 = v34;
    swift_retain_n();
    v63 = v62;

    v64 = v33;
    AnyHashable.init<A>(_:)();
    dispatch thunk of ArtworkIconFetcher.fetchArtworkIcons(for:partialCompletion:completion:handlerKey:)();

    sub_10002B894(&v78, &qword_10096FB90, &qword_1007B2A50);
  }

  else
  {

    v80 = 0;
    memset(v79, 0, sizeof(v79));
  }

  sub_10002B894(v79, &qword_10096FB90, &qword_1007B2A50);
}

id sub_1004CBAD8(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for EditorialSearchResultContentView();
  return objc_msgSendSuper2(&v3, "dealloc");
}

void sub_1004CBC1C(void *a1)
{
  sub_1004CD0A8();
  swift_unknownObjectWeakAssign();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    [v1 addSubview:Strong];
  }

  [v1 setNeedsLayout];
}

uint64_t (*sub_1004CBCA8(uint64_t **a1))()
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
  v2[4] = sub_1004C719C(v2);
  return sub_1000B4CAC;
}

uint64_t sub_1004CBD1C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return VideoViewProviding.someVideoView.getter(a1, WitnessTable);
}

uint64_t sub_1004CBD70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return VideoViewProviding.someVideoView.setter(a1, a2, a3, WitnessTable);
}

uint64_t (*sub_1004CBDDC(uint64_t *a1, uint64_t a2))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  swift_getWitnessTable();
  *(v4 + 32) = VideoViewProviding.someVideoView.modify();
  return sub_1000C2700;
}

uint64_t sub_1004CBF9C(uint64_t a1, uint64_t a2)
{
  *(a1 + 24) = sub_1004CD1EC(&qword_100988548, a2, type metadata accessor for EditorialSearchResultContentView, &unk_1007D10E0);
  result = sub_1004CD1EC(&qword_100988550, v3, type metadata accessor for EditorialSearchResultContentView, &unk_1007D1110);
  *(a1 + 32) = result;
  return result;
}

void *sub_1004CC020()
{
  v0 = type metadata accessor for FloatingPointRoundingRule();
  v40 = *(v0 - 8);
  __chkstk_darwin(v0);
  v2 = v35 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for StaticDimension();
  v37 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for FontUseCase();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v44 = v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for ShelfLayoutContext();
  __chkstk_darwin(v9 - 8);
  v10 = type metadata accessor for PageGrid();
  v38 = *(v10 - 8);
  v39 = v10;
  __chkstk_darwin(v10);
  v46 = v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for EditorialSearchResult();
  sub_1004CD1EC(&qword_100973D90, 255, &type metadata accessor for EditorialSearchResult, &protocol conformance descriptor for SearchResult);
  result = ItemLayoutContext.typedModel<A>(as:)();
  v45 = v47[0];
  if (v47[0])
  {
    ItemLayoutContext.parentShelfLayoutContext.getter();
    if (qword_10096EF00 != -1)
    {
      swift_once();
    }

    v36 = v0;

    PageGrid.init(from:breakpointOverrides:)();
    v35[2] = dispatch thunk of EditorialSearchResult.typeDisplayText.getter();
    v42 = v13;
    v35[0] = EditorialSearchResult.title.getter();
    v15 = v14;
    v35[1] = EditorialSearchResult.subtitle.getter();
    v43 = v16;
    v17 = sub_100079F24();
    PageGrid.componentMeasuringSize(spanning:)();
    CGSize.subtracting(insets:)();
    if (qword_10096E5C8 != -1)
    {
      swift_once();
    }

    sub_1000056A8(v6, qword_1009D2080);
    if (qword_10096E5E0 != -1)
    {
      swift_once();
    }

    sub_1000056A8(v3, qword_1009D20C8);
    v41 = v15;
    if (v15)
    {
      v18 = type metadata accessor for Feature();
      v48 = v18;
      v49 = sub_1004CD1EC(&qword_100972E50, 255, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
      v19 = sub_1000056E0(v47);
      (*(*(v18 - 8) + 104))(v19, enum case for Feature.measurement_with_labelplaceholder(_:), v18);
      isFeatureEnabled(_:)();
      sub_100007000(v47);
      static LabelPlaceholderCompatibility.measurements(text:fontUseCase:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:fitting:in:shouldUseLabelPlaceholder:)();
      AnyDimension.topMargin(from:in:)();
    }

    v20 = v43;
    v21 = v37;
    if (qword_10096E5D0 != -1)
    {
      swift_once();
    }

    v22 = sub_1000056A8(v6, qword_1009D2098);
    (*(v7 + 16))(v44, v22, v6);
    if (qword_10096E5E8 != -1)
    {
      swift_once();
    }

    v23 = sub_1000056A8(v3, qword_1009D20E0);
    (*(v21 + 16))(v5, v23, v3);
    if (v20)
    {
      v24 = type metadata accessor for Feature();
      v48 = v24;
      v49 = sub_1004CD1EC(&qword_100972E50, 255, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
      v25 = sub_1000056E0(v47);
      (*(*(v24 - 8) + 104))(v25, enum case for Feature.measurement_with_labelplaceholder(_:), v24);
      isFeatureEnabled(_:)();
      sub_100007000(v47);
      v26 = v44;
      static LabelPlaceholderCompatibility.measurements(text:fontUseCase:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:fitting:in:shouldUseLabelPlaceholder:)();
      AnyDimension.topMargin(from:in:)();
      (*(v21 + 8))(v5, v3);
      (*(v7 + 8))(v26, v6);
    }

    else
    {
      (*(v21 + 8))(v5, v3);
      (*(v7 + 8))(v44, v6);
    }

    if (qword_10096E5C0 != -1)
    {
      swift_once();
    }

    sub_1000056A8(v6, qword_1009D2068);
    v27 = v42;
    if (qword_10096E5D8 != -1)
    {
      swift_once();
    }

    sub_1000056A8(v3, qword_1009D20B0);
    if (v27)
    {
      v28 = type metadata accessor for Feature();
      v48 = v28;
      v49 = sub_1004CD1EC(&qword_100972E50, 255, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
      v29 = sub_1000056E0(v47);
      (*(*(v28 - 8) + 104))(v29, enum case for Feature.measurement_with_labelplaceholder(_:), v28);
      isFeatureEnabled(_:)();
      sub_100007000(v47);
      static LabelPlaceholderCompatibility.measurements(text:fontUseCase:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:fitting:in:shouldUseLabelPlaceholder:)();
      AnyDimension.topMargin(from:in:)();
    }

    v30 = [v17 traitCollection];
    static Dimensions.defaultRoundingRule.getter();
    sub_100005744(0, &qword_1009730E0, UIFont_ptr);
    v31 = static UIFont.preferredFont(forUseWith:compatibleWith:)();
    StaticDimension.value(compatibleWith:rounded:)();
    UIFont.estimatedFirstBaseline.getter();

    v32 = *(v40 + 8);
    v33 = v36;
    v32(v2, v36);
    if (qword_10096E6B0 != -1)
    {
      swift_once();
    }

    sub_1000056A8(v3, qword_1009D2430);
    static Dimensions.defaultRoundingRule.getter();
    AnyDimension.value(in:rounded:)();
    v32(v2, v33);
    if (qword_10096E5A8 != -1)
    {
      swift_once();
    }

    v34 = type metadata accessor for AspectRatio();
    sub_1000056A8(v34, qword_1009D2040);
    AspectRatio.width(fromHeight:)();
    AspectRatio.height(fromWidth:)();
    swift_unknownObjectRelease();

    return (*(v38 + 8))(v46, v39);
  }

  return result;
}

id sub_1004CCB70(void *a1)
{
  v3 = OBJC_IVAR____TtC8AppStore32EditorialSearchResultContentView_iconBackingView;
  v4 = *&v1[OBJC_IVAR____TtC8AppStore32EditorialSearchResultContentView_iconBackingView];
  if (v4)
  {
    [v4 removeFromSuperview];
    v5 = *&v1[v3];
  }

  else
  {
    v5 = 0;
  }

  *&v1[v3] = a1;
  v6 = a1;

  if (a1)
  {
    v7 = v6;
    [v7 setClipsToBounds:1];
    if (qword_10096E5B8 != -1)
    {
      swift_once();
    }

    [v7 setBackgroundColor:qword_1009D2060];

    [v1 addSubview:v7];
    v8 = *&v1[OBJC_IVAR____TtC8AppStore32EditorialSearchResultContentView_iconArtworkView];
    if (v8)
    {
      v9 = v8;
      [v1 addSubview:v9];
    }
  }

  return [v1 setNeedsLayout];
}

id sub_1004CCC9C(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for CornerStyle();
  v5 = *(v4 - 8);
  *&v6 = __chkstk_darwin(v4).n128_u64[0];
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = OBJC_IVAR____TtC8AppStore32EditorialSearchResultContentView_iconArtworkView;
  v10 = *&v2[OBJC_IVAR____TtC8AppStore32EditorialSearchResultContentView_iconArtworkView];
  if (v10)
  {
    [v10 removeFromSuperview];
    v11 = *&v2[v9];
  }

  else
  {
    v11 = 0;
  }

  *&v2[v9] = a1;
  v12 = a1;

  if (a1)
  {
    type metadata accessor for RoundedCornerView();
    (*(v5 + 104))(v8, enum case for CornerStyle.arc(_:), v4);
    v13 = RoundedCornerView.__allocating_init(radius:style:)();
    sub_1004CCB70(v13);

    v14 = *&v2[OBJC_IVAR____TtC8AppStore32EditorialSearchResultContentView_iconBackingView];
    if (v14)
    {
      v15 = v14;
      [v15 addSubview:v12];
    }
  }

  else
  {
    v16 = OBJC_IVAR____TtC8AppStore32EditorialSearchResultContentView_iconBackingView;
    v17 = *&v2[OBJC_IVAR____TtC8AppStore32EditorialSearchResultContentView_iconBackingView];
    if (v17)
    {
      [v17 removeFromSuperview];
      v18 = *&v2[v16];
    }

    else
    {
      v18 = 0;
    }

    *&v2[v16] = 0;

    [v2 setNeedsLayout];
  }

  return [v2 setNeedsLayout];
}

id sub_1004CCE64(void *a1)
{
  v3 = OBJC_IVAR____TtC8AppStore32EditorialSearchResultContentView_artworkGrid;
  v4 = *&v1[OBJC_IVAR____TtC8AppStore32EditorialSearchResultContentView_artworkGrid];
  if (v4)
  {
    [v4 removeFromSuperview];
    v5 = *&v1[v3];
  }

  else
  {
    v5 = 0;
  }

  *&v1[v3] = a1;
  v6 = a1;

  if (a1)
  {
    v6[OBJC_IVAR____TtC8AppStore11ArtworkGrid_showBorder] = 1;
    [*&v6[OBJC_IVAR____TtC8AppStore11ArtworkGrid_imageBorderView] setHidden:0];
    v7 = v6;
    [v7 _setCornerRadius:20.0];
    [v7 setNeedsLayout];
    if (qword_10096E5B0 != -1)
    {
      swift_once();
    }

    [v7 setBackgroundColor:qword_1009D2058];

    [v1 addSubview:v7];
  }

  return [v1 setNeedsLayout];
}

double sub_1004CCFA0(uint64_t a1)
{
  type metadata accessor for ArtworkIconFetcher();
  BaseObjectGraph.optional<A>(_:)();
  if (v7[0])
  {
    type metadata accessor for EditorialSearchResultContentView();
    sub_1004CD1EC(&qword_100988558, v2, type metadata accessor for EditorialSearchResultContentView, &protocol conformance descriptor for NSObject);

    v3 = v1;
    AnyHashable.init<A>(_:)();
    dispatch thunk of ArtworkIconFetcher.forgetFetches(for:)();

    sub_10003D614(v7);
  }

  v4 = *&v1[OBJC_IVAR____TtC8AppStore32EditorialSearchResultContentView_artworkGrid];
  if (v4)
  {
    v5 = v4;
    sub_1006AD188();
  }

  return result;
}

void sub_1004CD0A8()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    sub_1004CD1EC(&qword_100973190, 255, type metadata accessor for VideoView, &unk_1007D1B30);
    v2 = [v7 superview];
    if (v2)
    {
      v3 = v2;
      sub_100005744(0, &qword_100972EB0, UIView_ptr);
      v4 = v0;
      v5 = static NSObject.== infix(_:_:)();

      if ((v5 & 1) == 0)
      {
        return;
      }

      v6 = swift_unknownObjectWeakLoadStrong();
      if (!v6)
      {
        return;
      }

      v7 = v6;
      [v6 removeFromSuperview];
    }
  }
}

uint64_t sub_1004CD1EC(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t sub_1004CD234(uint64_t a1, uint64_t a2)
{
  v4 = sub_10002849C(&qword_100975CA0, &qword_1007BA940);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1004CD2A4(uint64_t a1, uint64_t a2)
{
  v4 = sub_10002849C(&qword_100975CA0, &qword_1007BA940);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1004CD314()
{
  *(v0 + OBJC_IVAR____TtC8AppStore32EditorialSearchResultContentView____lazy_storage___editorialIcon) = 0;
  *(v0 + OBJC_IVAR____TtC8AppStore32EditorialSearchResultContentView_showEditorialIcon) = 0;
  *(v0 + OBJC_IVAR____TtC8AppStore32EditorialSearchResultContentView_editorialArtworkView) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC8AppStore32EditorialSearchResultContentView_iconArtworkView) = 0;
  *(v0 + OBJC_IVAR____TtC8AppStore32EditorialSearchResultContentView_iconBackingView) = 0;
  *(v0 + OBJC_IVAR____TtC8AppStore32EditorialSearchResultContentView_artworkGrid) = 0;
  *(v0 + OBJC_IVAR____TtC8AppStore32EditorialSearchResultContentView_appEventStoryFormattedDateView) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

double sub_1004CD3DC(uint64_t a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v9 = Screenshots.artwork.getter();
  v10 = Screenshots.mediaPlatform.getter();
  v11 = sub_1004D62C0(v9, v10, a7, 0.0, 0.0, a2);

  return v11;
}

uint64_t sub_1004CD504(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

id sub_1004CD54C(__n128 a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v9 = type metadata accessor for ScreenshotDisplayConfiguration(0);
  __chkstk_darwin(v9 - 8);
  v11 = (&v70 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v76 = type metadata accessor for AspectRatio();
  v12 = *(v76 - 8);
  __chkstk_darwin(v76);
  v87 = &v70 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v85 = &v70 - v15;
  v16 = Screenshots.mediaPlatform.getter();
  v88 = OBJC_IVAR____TtC8AppStore33ScreenshotShelfCollectionViewCell_platform;
  *&v6[OBJC_IVAR____TtC8AppStore33ScreenshotShelfCollectionViewCell_platform] = v16;

  v17 = *&v6[OBJC_IVAR____TtC8AppStore33ScreenshotShelfCollectionViewCell_flowLayout];
  ObjectType = swift_getObjectType();
  [a6 pageMarginInsets];
  [v17 setSectionInset:?];
  v18 = [a6 snapshotPageTraitEnvironment];
  v84 = OBJC_IVAR____TtC8AppStore33ScreenshotShelfCollectionViewCell_pageTraits;
  *&v6[OBJC_IVAR____TtC8AppStore33ScreenshotShelfCollectionViewCell_pageTraits] = v18;
  swift_unknownObjectRelease();
  v19 = Screenshots.artwork.getter();
  v20 = *&v6[OBJC_IVAR____TtC8AppStore33ScreenshotShelfCollectionViewCell_artwork];
  v73 = OBJC_IVAR____TtC8AppStore33ScreenshotShelfCollectionViewCell_artwork;
  *&v6[OBJC_IVAR____TtC8AppStore33ScreenshotShelfCollectionViewCell_artwork] = v19;

  v22 = sub_1006E1E74(v21, v20);

  v23 = off_100988000;
  v24 = &selRef_loadView;
  if ((v22 & 1) == 0)
  {
    [*&v6[OBJC_IVAR____TtC8AppStore33ScreenshotShelfCollectionViewCell_collectionView] reloadData];
  }

  v25 = Screenshots.artwork.getter();
  v26 = v25;
  if (v25 >> 62)
  {
    goto LABEL_58;
  }

  v27 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_5:
  v28 = v76;
  v29 = v85;
  if (v27)
  {
    v80 = v27;
    v30 = 0;
    v81 = type metadata accessor for Screenshots();
    v82 = v26 & 0xC000000000000001;
    v75 = v26 & 0xFFFFFFFFFFFFFF8;
    v77 = v26;
    v74 = v26 + 32;
    v78 = (v12 + 2);
    v79 = (v12 + 1);
    v12 = _swiftEmptyArrayStorage;
    v71 = a6;
    v70 = v11;
    v72 = v7;
    while (1)
    {
      if (v82)
      {
        v24 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v31 = __OFADD__(v30++, 1);
        if (v31)
        {
          goto LABEL_56;
        }
      }

      else
      {
        if (v30 >= *(v75 + 16))
        {
          goto LABEL_57;
        }

        v24 = *(v74 + 8 * v30);

        v31 = __OFADD__(v30++, 1);
        if (v31)
        {
          goto LABEL_56;
        }
      }

      Artwork.size.getter();
      AspectRatio.init(_:_:)();
      v26 = *&v7[v88];
      v86 = v24;
      if (v26)
      {

        v32 = MediaPlatform.isPhonePlatform.getter();

        if (v32)
        {
          v33 = *&v7[v73];
          v7 = (v33 & 0xFFFFFFFFFFFFFF8);
          if (v33 >> 62)
          {
            v23 = _CocoaArrayWrapper.endIndex.getter();
          }

          else
          {
            v23 = *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          v11 = (v33 & 0xC000000000000001);

          v34 = 0;
          while (1)
          {
            v24 = v23 != v34;
            if (v23 == v34)
            {
LABEL_28:

              v7 = v72;
              a6 = v71;
              v11 = v70;
              v28 = v76;
              v29 = v85;
              goto LABEL_29;
            }

            if (v11)
            {
              v26 = specialized _ArrayBuffer._getElementSlowPath(_:)();
              if (__OFADD__(v34, 1))
              {
                goto LABEL_54;
              }
            }

            else
            {
              if (v34 >= *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_55;
              }

              v26 = *(v33 + 8 * v34 + 32);

              if (__OFADD__(v34, 1))
              {
LABEL_54:
                __break(1u);
LABEL_55:
                __break(1u);
LABEL_56:
                __break(1u);
LABEL_57:
                __break(1u);
LABEL_58:
                v27 = _CocoaArrayWrapper.endIndex.getter();
                goto LABEL_5;
              }
            }

            a6 = dispatch thunk of Artwork.isPortrait.getter();

            v34 = (v34 + 1);
            if (a6)
            {
              goto LABEL_28;
            }
          }
        }
      }

      LOBYTE(v24) = 0;
LABEL_29:

      sub_10061B788(v35, v11);

      v36 = v11[8];
      v37 = v11[10];
      sub_1001BABC8(v11, v38);
      result = *&v7[v84];
      if (!result)
      {
        break;
      }

      [result pageContainerSize];
      [v7 bounds];
      v41 = v40;
      if (v24)
      {
        if (AspectRatio.isPortrait.getter())
        {
          (*v78)(v87, v29, v28);
        }

        else
        {
          AspectRatio.inverted.getter();
        }

        v42 = 1;
      }

      else
      {
        (*v78)(v87, v29, v28);
        v42 = AspectRatio.isPortrait.getter();
      }

      v43 = [a6 traitCollection];
      v44 = UITraitCollection.isRegularPad.getter();

      if (v44)
      {
        [a6 pageMarginInsets];
        v46 = v45;
        [a6 pageMarginInsets];
        v48 = v46 + v47;
        PageTraitEnvironment.pageColumnMargin.getter();
        v50 = v41 - (v48 + v49 + v49);
        v51 = v49 * 0.0;
        v52 = v50 * 0.333333333;
      }

      else
      {
        if (v42)
        {
          v53 = 2.0;
        }

        else
        {
          v53 = 1.0;
        }

        if (v42)
        {
          v54 = 3.0;
        }

        else
        {
          v54 = 1.0;
        }

        [a6 pageMarginInsets];
        v56 = v55;
        [a6 pageMarginInsets];
        v58 = v56 + v57;
        PageTraitEnvironment.pageColumnMargin.getter();
        v60 = v41 - (v58 + (v54 + -1.0) * v59);
        v51 = (v53 + -1.0) * v59;
        v52 = v53 / v54 * v60;
      }

      v61 = v51 + v52;
      v62 = [a6 traitCollection];
      UITraitCollection.isRegularPad.getter();

      v63 = v87;
      AspectRatio.height(fromWidth:)();
      v64 = v61 - (v36 + v37);
      AspectRatio.height(fromWidth:)();
      v66 = v65;
      v23 = v79;
      v67 = *v79;
      (*v79)(v63, v28);
      v29 = v85;
      (v67)(v85, v28);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v12 = sub_1000337F0(0, v12[2] + 1, 1, v12);
      }

      v24 = v12[2];
      v68 = v12[3];
      v26 = v24 + 1;
      if (v24 >= v68 >> 1)
      {
        v12 = sub_1000337F0((v68 > 1), v24 + 1, 1, v12);
      }

      v12[2] = v26;
      v69 = &v12[3 * v24];
      *(v69 + 4) = v86;
      v69[5] = v64;
      *(v69 + 6) = v66;
      if (v30 == v80)
      {

        v24 = 0x10093F000;
        v23 = off_100988000;
        goto LABEL_53;
      }
    }

    __break(1u);
  }

  else
  {

    v12 = _swiftEmptyArrayStorage;
LABEL_53:
    *&v7[OBJC_IVAR____TtC8AppStore33ScreenshotShelfCollectionViewCell_sizedArtwork] = v12;

    return [*(v23[347] + v7) *(v24 + 112)];
  }

  return result;
}

uint64_t type metadata accessor for ComponentOverflowData(uint64_t a1)
{
  result = qword_100988600;
  if (!qword_100988600)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1004CDD34(uint64_t a1)
{
  result = sub_100065AF0();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for IndexPath();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1004CDDB8(__n128 a1)
{
  v2 = (v1 + OBJC_IVAR____TtC8AppStore33NotesMetadataActivityItemProvider____lazy_storage___notesMetadata);
  v3 = *(v1 + OBJC_IVAR____TtC8AppStore33NotesMetadataActivityItemProvider____lazy_storage___notesMetadata);
  v4 = *(v1 + OBJC_IVAR____TtC8AppStore33NotesMetadataActivityItemProvider____lazy_storage___notesMetadata + 8);
  v5 = v3;
  if (v4 >> 60 == 15)
  {
    swift_unknownObjectWeakInit();
    v5 = sub_1004CDE70(v11);
    v7 = v6;
    swift_unknownObjectWeakDestroy();
    v8 = *v2;
    v9 = v2[1];
    *v2 = v5;
    v2[1] = v7;
    sub_1004CE9E8(v5, v7);
    sub_100075B34(v8, v9);
  }

  sub_1004CEA3C(v3, v4);
  return v5;
}

void *sub_1004CDE70(uint64_t a1)
{
  v1 = sub_10002849C(&qword_100982460, &unk_1007B5C90);
  __chkstk_darwin(v1 - 8);
  v3 = &v35 - v2;
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v9 = result;
    sub_10002849C(&qword_100988670, qword_1007D1340);
    inited = swift_initStackObject();
    v35 = xmmword_1007B10D0;
    *(inited + 16) = xmmword_1007B10D0;
    *(inited + 32) = 1701667182;
    *(inited + 40) = 0xE400000000000000;
    v11 = ShareSheetNotesMetadata.itemName.getter();
    *(inited + 72) = &type metadata for String;
    *(inited + 48) = v11;
    *(inited + 56) = v12;
    v13 = sub_100398EF4(inited);
    swift_setDeallocating();
    sub_10002B894(inited + 32, &unk_100982880, &unk_1007DEC80);
    ShareSheetNotesMetadata.url.getter();
    if ((*(v5 + 48))(v3, 1, v4) == 1)
    {
      sub_10002B894(v3, &qword_100982460, &unk_1007B5C90);
    }

    else
    {
      (*(v5 + 32))(v7, v3, v4);
      v39 = v4;
      v14 = sub_1000056E0(&v38);
      (*(v5 + 16))(v14, v7, v4);
      sub_100056164(&v38, v37);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v36 = v13;
      sub_100051CAC(v37, 7107189, 0xE300000000000000, isUniquelyReferenced_nonNull_native);
      (*(v5 + 8))(v7, v4);
      v13 = v36;
    }

    v16 = ShareSheetNotesMetadata.developer.getter();
    if (v17)
    {
      v39 = &type metadata for String;
      *&v38 = v16;
      *(&v38 + 1) = v17;
      sub_100056164(&v38, v37);
      v18 = swift_isUniquelyReferenced_nonNull_native();
      v36 = v13;
      sub_100051CAC(v37, 0x796E61706D6F63, 0xE700000000000000, v18);
      v13 = v36;
    }

    v19 = ShareSheetNotesMetadata.category.getter();
    if (v20)
    {
      v39 = &type metadata for String;
      *&v38 = v19;
      *(&v38 + 1) = v20;
      sub_100056164(&v38, v37);
      v21 = swift_isUniquelyReferenced_nonNull_native();
      v36 = v13;
      sub_100051CAC(v37, 0x79726F6765746163, 0xE800000000000000, v21);
      v13 = v36;
    }

    v22 = ShareSheetNotesMetadata.fileSize.getter();
    if ((v23 & 1) == 0)
    {
      v39 = &type metadata for Int64;
      *&v38 = v22;
      sub_100056164(&v38, v37);
      v24 = swift_isUniquelyReferenced_nonNull_native();
      v36 = v13;
      sub_100051CAC(v37, 0x7A69735F656C6966, 0xE900000000000065, v24);
      v13 = v36;
    }

    v25 = ShareSheetNotesMetadata.mediaType.getter();
    if (v26)
    {
      v39 = &type metadata for String;
      *&v38 = v25;
      *(&v38 + 1) = v26;
      sub_100056164(&v38, v37);
      v27 = swift_isUniquelyReferenced_nonNull_native();
      v36 = v13;
      sub_100051CAC(v37, 0x79745F616964656DLL, 0xEA00000000006570, v27);
    }

    v28 = objc_opt_self();
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    *&v38 = 0;
    v30 = [v28 archivedDataWithRootObject:isa requiringSecureCoding:0 error:&v38];

    v31 = v38;
    if (v30)
    {
      v32 = static Data._unconditionallyBridgeFromObjectiveC(_:)();

      return v32;
    }

    else
    {
      v33 = v31;
      _convertNSErrorToError(_:)();

      swift_willThrow();
      if (qword_10096D110 != -1)
      {
        swift_once();
      }

      v34 = type metadata accessor for OSLogger();
      sub_1000056A8(v34, qword_1009CE1E8);
      sub_10002849C(&unk_100972A10, &qword_1007B1EF0);
      type metadata accessor for LogMessage();
      *(swift_allocObject() + 16) = v35;
      LogMessage.init(stringLiteral:)();
      Logger.error(_:)();

      return 0;
    }
  }

  return result;
}

void sub_1004CE530(uint64_t *a1@<X8>)
{
  v3 = [v1 activityType];
  if (!v3)
  {
    goto LABEL_8;
  }

  v4 = v3;
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;
  if (v5 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v7 == v8)
  {
  }

  else
  {
    v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v10 & 1) == 0)
    {

LABEL_8:
      a1[3] = &type metadata for String;
      *a1 = 0;
      a1[1] = 0xE000000000000000;
      return;
    }
  }

  v12 = sub_1004CDDB8(v11);
  v14 = v13;
  a1[3] = &type metadata for Data;

  *a1 = v12;
  a1[1] = v14;
}

void sub_1004CE62C(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  if (!a1)
  {
    goto LABEL_7;
  }

  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;
  if (v3 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v5 == v6)
  {
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v8 & 1) == 0)
    {
LABEL_7:
      *a2 = 0u;
      *(a2 + 16) = 0u;
      return;
    }
  }

  v10 = sub_1004CDDB8(v9);
  *(a2 + 24) = &type metadata for Data;
  *a2 = v10;
  *(a2 + 8) = v11;
}

id sub_1004CE940(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for NotesMetadataActivityItemProvider();
  return objc_msgSendSuper2(&v3, "dealloc");
}

double sub_1004CE9E8(uint64_t a1, unint64_t a2)
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

double sub_1004CEA3C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1004CE9E8(a1, a2);
  }

  return result;
}

void *sub_1004CEA50(void *result)
{
  if (result)
  {
    v1 = result;
    v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v4 = v3;
    if (v2 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v4 == v5)
    {
      v9 = v1;
    }

    else
    {
      v7 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v8 = v1;

      if ((v7 & 1) == 0)
      {

        return 0;
      }
    }

    return 0xD00000000000001ELL;
  }

  return result;
}

CGFloat sub_1004CEB68(CGFloat a1, uint64_t a2, _OWORD *a3, _OWORD *a4, _OWORD *a5)
{
  CGAffineTransformMakeTranslation(&v11, 0.0, a1);
  result = v11.a;
  v9 = *&v11.c;
  v10 = *&v11.tx;
  *a3 = *&v11.a;
  *a4 = v9;
  *a5 = v10;
  return result;
}

void sub_1004CEBC4(char a1)
{
  v2 = v1;
  v4 = *v1;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = v2[5];
    ObjectType = swift_getObjectType();
    (*(*(v7 + 8) + 16))(*(v2 + 16), ObjectType);
  }

  v9 = swift_unknownObjectWeakLoadStrong();
  if (v9)
  {
    v10 = v9;
    v11 = v2[7];
    v12 = swift_getObjectType();
    (*(*(v11 + 8) + 16))(*(v2 + 16), v12);
  }

  v13 = swift_unknownObjectWeakLoadStrong();
  if (v13)
  {
    v14 = v13;
    v15 = [v13 traitCollection];

    if (v15)
    {
      v16 = v15;
      if (UITraitCollection.isSizeClassCompact.getter())
      {
        v17 = UITraitCollection.prefersAccessibilityLayouts.getter();

        if (v17)
        {
          v18 = swift_unknownObjectWeakLoadStrong();
          if (v18)
          {
            v19 = v18;
            [v18 setUserInteractionEnabled:0];
          }

          v20 = swift_unknownObjectWeakLoadStrong();
          if (v20)
          {
            v21 = v20;
            v22 = 1;
            [v20 setUserInteractionEnabled:1];
LABEL_18:

            goto LABEL_20;
          }

          v22 = 1;
          goto LABEL_20;
        }
      }

      else
      {
      }
    }
  }

  v23 = swift_unknownObjectWeakLoadStrong();
  if (v23)
  {
    v24 = v23;
    [v23 setUserInteractionEnabled:*(v2 + 16)];
  }

  v25 = swift_unknownObjectWeakLoadStrong();
  if (v25)
  {
    v21 = v25;
    [v25 setUserInteractionEnabled:(v2[2] & 1) == 0];
    v22 = 0;
    goto LABEL_18;
  }

  v22 = 0;
LABEL_20:
  v52 = static CondensedEditorialSearchResultContentView.prefetchArtwork(for:with:asPartOf:);
  v53 = 0;
  v26 = *(v2 + 16);
  if (v22)
  {
    v27 = swift_allocObject();
    v28 = 0;
    *(v27 + 16) = v2;
    *(v27 + 24) = v26;
    *(v27 + 32) = v4;
    v29 = sub_1004D007C;
    v54 = sub_1004D007C;
    v55 = v27;
    v30 = sub_1004D008C;
    v50 = sub_1004D008C;
    v51 = v2;
    v31 = static CondensedEditorialSearchResultContentView.prefetchArtwork(for:with:asPartOf:);
  }

  else
  {
    if (v2[2])
    {
      v32 = swift_unknownObjectWeakLoadStrong();
      if (v32)
      {
        v33 = v32;
        [*(v32 + OBJC_IVAR____TtC8AppStore25AppPromotionLearnMoreView_contentView) _scrollToTopIfPossible:0];
      }

      v27 = swift_allocObject();
      *(v27 + 16) = v2;
      *(v27 + 24) = v4;
      v29 = sub_1004D002C;
      v54 = sub_1004D002C;
      v55 = v27;
      v31 = sub_1004D0034;
      v52 = sub_1004D0034;
      v53 = v2;
      v34 = sub_1004D003C;
    }

    else
    {
      v27 = swift_allocObject();
      *(v27 + 16) = v2;
      *(v27 + 24) = v4;
      v29 = sub_1004D006C;
      v54 = sub_1004D006C;
      v55 = v27;
      v31 = sub_1004D0074;
      v52 = sub_1004D0074;
      v53 = v2;
      v34 = sub_1004D00C8;
    }

    v30 = v34;
    v50 = v34;
    v51 = v2;

    v28 = v2;
  }

  swift_retain_n();
  v35 = objc_opt_self();
  if (a1)
  {
    v48 = v29;
    v49 = v27;
    v44 = _NSConcreteStackBlock;
    v45 = 1107296256;
    v46 = sub_100007A08;
    v47 = &unk_1008C5B30;
    v36 = _Block_copy(&v44);

    v48 = v30;
    v49 = v2;
    v44 = _NSConcreteStackBlock;
    v45 = 1107296256;
    v46 = sub_100504C5C;
    v47 = &unk_1008C5B58;
    v37 = _Block_copy(&v44);

    [v35 animateWithDuration:4 delay:v36 options:v37 animations:0.4 completion:0.0];
    _Block_release(v37);
    _Block_release(v36);
    v48 = v31;
    v49 = v28;
    v44 = _NSConcreteStackBlock;
    v45 = 1107296256;
    v46 = sub_100007A08;
    v47 = &unk_1008C5B80;
    v38 = _Block_copy(&v44);

    [v35 animateWithDuration:4 delay:v38 options:0 animations:0.2 completion:0.2];
    _Block_release(v38);
    v39 = 0;
    v40 = 0;
LABEL_32:

    sub_10001F63C(v39, v40);
    return;
  }

  v40 = swift_allocObject();
  v40[2] = &v54;
  v40[3] = &v52;
  v40[4] = &v50;
  v41 = swift_allocObject();
  *(v41 + 16) = sub_1004D0060;
  *(v41 + 24) = v40;
  v48 = sub_10006F094;
  v49 = v41;
  v44 = _NSConcreteStackBlock;
  v45 = 1107296256;
  v46 = sub_1000489A8;
  v47 = &unk_1008C5B08;
  v42 = _Block_copy(&v44);

  [v35 performWithoutAnimation:v42];
  _Block_release(v42);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if ((isEscapingClosureAtFileLocation & 1) == 0)
  {
    v39 = sub_1004D0060;
    goto LABEL_32;
  }

  __break(1u);
}

void sub_1004CF25C(uint64_t a1, char a2)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = *(a1 + 56);
    v6 = Strong;
    ObjectType = swift_getObjectType();
    v8 = (*(*(v5 + 8) + 32))(ObjectType);

    v9 = *(v8 + 16);
    if (v9)
    {
      for (i = 0; i != v9; ++i)
      {
        if (i >= *(v8 + 16))
        {
          __break(1u);
          goto LABEL_52;
        }

        v11 = *(v8 + 32 + 8 * i);
        if (v11)
        {
          [v11 setAlpha:0.0];
        }
      }
    }
  }

  v12 = swift_unknownObjectWeakLoadStrong();
  if (!v12)
  {
    goto LABEL_16;
  }

  v13 = *(a1 + 56);
  v14 = v12;
  v15 = swift_getObjectType();
  v8 = (*(*(v13 + 8) + 40))(v15);

  if (qword_10096E5F0 != -1)
  {
    goto LABEL_56;
  }

  v16 = *(v8 + 16);
  if (v16)
  {
    goto LABEL_12;
  }

  while (1)
  {
LABEL_15:

LABEL_16:
    v20 = swift_unknownObjectWeakLoadStrong();
    if (v20)
    {
      v21 = *(a1 + 56);
      v22 = v20;
      v23 = swift_getObjectType();
      v8 = (*(*(v21 + 8) + 48))(v23);

      v24 = *(v8 + 16);
      if (v24)
      {
        v25 = 0;
        while (v25 < *(v8 + 16))
        {
          v26 = *(v8 + 32 + 8 * v25);
          if (v26)
          {
            [v26 setAlpha:0.0];
          }

          if (v24 == ++v25)
          {
            goto LABEL_23;
          }
        }

        goto LABEL_53;
      }

LABEL_23:
    }

    v27 = swift_unknownObjectWeakLoadStrong();
    if (v27)
    {
      v28 = *(a1 + 40);
      v29 = v27;
      v30 = swift_getObjectType();
      v8 = (*(*(v28 + 8) + 32))(v30);

      v31 = *(v8 + 16);
      if (v31)
      {
        v32 = 0;
        while (v32 < *(v8 + 16))
        {
          v33 = *(v8 + 32 + 8 * v32);
          if (v33)
          {
            [v33 setAlpha:1.0];
          }

          if (v31 == ++v32)
          {
            goto LABEL_31;
          }
        }

        goto LABEL_54;
      }

LABEL_31:
    }

    v34 = swift_unknownObjectWeakLoadStrong();
    if (!v34)
    {
      break;
    }

    v35 = *(a1 + 40);
    v36 = v34;
    v37 = swift_getObjectType();
    v8 = (*(*(v35 + 8) + 40))(v37);

    v38 = *(v8 + 16);
    if (!v38)
    {
LABEL_37:

      break;
    }

    v39 = 0;
    while (v39 < *(v8 + 16))
    {
      v40 = v39 + 1;
      v41 = *(v8 + 32 + 8 * v39);
      *&v58 = 0;
      v57 = 0x3FF0000000000000uLL;
      *(&v58 + 1) = 0x3FF0000000000000;
      v59 = 0uLL;
      [v41 setTransform:&v57];
      v39 = v40;
      if (v38 == v40)
      {
        goto LABEL_37;
      }
    }

    while (1)
    {
      __break(1u);
LABEL_56:
      swift_once();
      v16 = *(v8 + 16);
      if (!v16)
      {
        break;
      }

LABEL_12:
      v17 = 0;
      v55 = xmmword_100988688;
      v56 = xmmword_100988678;
      v54 = xmmword_100988698;
      while (v17 < *(v8 + 16))
      {
        v18 = v17 + 1;
        v19 = *(v8 + 32 + 8 * v17);
        v57 = v56;
        v58 = v55;
        v59 = v54;
        [v19 setTransform:&v57];
        v17 = v18;
        if (v16 == v18)
        {
          goto LABEL_15;
        }
      }

LABEL_52:
      __break(1u);
LABEL_53:
      __break(1u);
LABEL_54:
      __break(1u);
    }
  }

  v42 = swift_unknownObjectWeakLoadStrong();
  if (v42)
  {
    v43 = v42;
    v44 = *(v42 + OBJC_IVAR____TtC8AppStore33AppPromotionDetailPageContentView_learnMoreButton);

    v45 = 1.0;
    if (a2)
    {
      v45 = 0.0;
    }

    [v44 setAlpha:{v45, v54, v55, v56}];
  }

  v46 = swift_unknownObjectWeakLoadStrong();
  if (v46)
  {
    v47 = v46;
    v48 = *(v46 + OBJC_IVAR____TtC8AppStore33AppPromotionDetailPageContentView_inlineLearnMoreLabel);

    v49 = 0.0;
    if (a2)
    {
      v49 = 1.0;
    }

    [v48 setAlpha:{v49, v54, v55, v56}];
  }

  v50 = swift_unknownObjectWeakLoadStrong();
  if (v50)
  {
    v51 = v50;
    [v50 setNeedsLayout];
  }

  v52 = swift_unknownObjectWeakLoadStrong();
  if (v52)
  {
    v53 = v52;
    sub_100406E78();
  }
}

double sub_1004CF6B8(void *a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = a1[7];
    v4 = Strong;
    ObjectType = swift_getObjectType();
    v6 = (*(*(v3 + 8) + 32))(ObjectType);

    v7 = *(v6 + 16);
    if (v7)
    {
      for (i = 0; i != v7; ++i)
      {
        if (i >= *(v6 + 16))
        {
          __break(1u);
          goto LABEL_26;
        }

        v9 = *(v6 + 32 + 8 * i);
        if (v9)
        {
          [v9 setAlpha:0.0];
        }
      }
    }
  }

  v10 = swift_unknownObjectWeakLoadStrong();
  if (!v10)
  {
    goto LABEL_16;
  }

  v11 = a1[7];
  v12 = v10;
  v13 = swift_getObjectType();
  v6 = (*(*(v11 + 8) + 40))(v13);

  if (qword_10096E5F0 != -1)
  {
    goto LABEL_28;
  }

  v14 = *(v6 + 16);
  if (v14)
  {
    goto LABEL_12;
  }

LABEL_15:
  while (1)
  {

LABEL_16:
    v18 = swift_unknownObjectWeakLoadStrong();
    if (!v18)
    {
      return result;
    }

    v20 = v18;
    v21 = a1[5];
    v22 = swift_getObjectType();
    a1 = (*(*(v21 + 8) + 48))(v22);

    v6 = a1[2];
    if (!v6)
    {
LABEL_23:

      return result;
    }

    v23 = 0;
    while (v23 < a1[2])
    {
      v24 = a1[v23 + 4];
      if (v24)
      {
        [v24 setAlpha:1.0];
      }

      if (v6 == ++v23)
      {
        goto LABEL_23;
      }
    }

    while (1)
    {
      __break(1u);
LABEL_28:
      swift_once();
      v14 = *(v6 + 16);
      if (!v14)
      {
        break;
      }

LABEL_12:
      v15 = 0;
      v26 = xmmword_100988688;
      v27 = xmmword_100988678;
      v25 = xmmword_100988698;
      while (v15 < *(v6 + 16))
      {
        v16 = v15 + 1;
        v17 = *(v6 + 32 + 8 * v15);
        v28[0] = v27;
        v28[1] = v26;
        v28[2] = v25;
        [v17 setTransform:v28];
        v15 = v16;
        if (v14 == v16)
        {
          goto LABEL_15;
        }
      }

LABEL_26:
      __break(1u);
    }
  }
}

void sub_1004CF8F4(uint64_t a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = *(a1 + 40);
    v4 = Strong;
    ObjectType = swift_getObjectType();
    v6 = (*(*(v3 + 8) + 32))(ObjectType);

    v7 = *(v6 + 16);
    if (v7)
    {
      v8 = 0;
      while (v8 < *(v6 + 16))
      {
        v9 = *(v6 + 32 + 8 * v8);
        if (v9)
        {
          [v9 setAlpha:1.0];
        }

        if (v7 == ++v8)
        {
          goto LABEL_8;
        }
      }

      __break(1u);
      goto LABEL_25;
    }

LABEL_8:
  }

  v10 = swift_unknownObjectWeakLoadStrong();
  if (v10)
  {
    v11 = *(a1 + 40);
    v12 = v10;
    v13 = swift_getObjectType();
    v14 = (*(*(v11 + 8) + 40))(v13);

    v15 = *(v14 + 16);
    if (v15)
    {
      v16 = 0;
      while (v16 < *(v14 + 16))
      {
        v17 = v16 + 1;
        v18 = *(v14 + 32 + 8 * v16);
        v27[1] = 0;
        v27[2] = 0;
        v27[0] = 0x3FF0000000000000;
        v27[3] = 0x3FF0000000000000;
        v27[4] = 0;
        v27[5] = 0;
        [v18 setTransform:v27];
        v16 = v17;
        if (v15 == v17)
        {
          goto LABEL_14;
        }
      }

LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
      return;
    }

LABEL_14:
  }

  v19 = swift_unknownObjectWeakLoadStrong();
  if (v19)
  {
    v20 = v19;
    v21 = *(a1 + 56);
    v22 = swift_getObjectType();
    v23 = (*(*(v21 + 8) + 48))(v22);

    v24 = *(v23 + 16);
    if (v24)
    {
      v25 = 0;
      while (v25 < *(v23 + 16))
      {
        v26 = *(v23 + 32 + 8 * v25);
        if (v26)
        {
          [v26 setAlpha:0.0];
        }

        if (v24 == ++v25)
        {
          goto LABEL_22;
        }
      }

      goto LABEL_26;
    }

LABEL_22:
  }
}

double sub_1004CFAF0(void *a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = a1[5];
    v4 = Strong;
    ObjectType = swift_getObjectType();
    v6 = (*(*(v3 + 8) + 32))(ObjectType);

    v7 = *(v6 + 16);
    if (v7)
    {
      for (i = 0; i != v7; ++i)
      {
        if (i >= *(v6 + 16))
        {
          __break(1u);
          goto LABEL_26;
        }

        v9 = *(v6 + 32 + 8 * i);
        if (v9)
        {
          [v9 setAlpha:0.0];
        }
      }
    }
  }

  v10 = swift_unknownObjectWeakLoadStrong();
  if (!v10)
  {
    goto LABEL_16;
  }

  v11 = a1[5];
  v12 = v10;
  v13 = swift_getObjectType();
  v6 = (*(*(v11 + 8) + 40))(v13);

  if (qword_10096E5F8 != -1)
  {
    goto LABEL_28;
  }

  v14 = *(v6 + 16);
  if (v14)
  {
    goto LABEL_12;
  }

LABEL_15:
  while (1)
  {

LABEL_16:
    v18 = swift_unknownObjectWeakLoadStrong();
    if (!v18)
    {
      return result;
    }

    v20 = v18;
    v21 = a1[7];
    v22 = swift_getObjectType();
    a1 = (*(*(v21 + 8) + 48))(v22);

    v6 = a1[2];
    if (!v6)
    {
LABEL_23:

      return result;
    }

    v23 = 0;
    while (v23 < a1[2])
    {
      v24 = a1[v23 + 4];
      if (v24)
      {
        [v24 setAlpha:1.0];
      }

      if (v6 == ++v23)
      {
        goto LABEL_23;
      }
    }

    while (1)
    {
      __break(1u);
LABEL_28:
      swift_once();
      v14 = *(v6 + 16);
      if (!v14)
      {
        break;
      }

LABEL_12:
      v15 = 0;
      v26 = xmmword_1009886B8;
      v27 = xmmword_1009886A8;
      v25 = xmmword_1009886C8;
      while (v15 < *(v6 + 16))
      {
        v16 = v15 + 1;
        v17 = *(v6 + 32 + 8 * v15);
        v28[0] = v27;
        v28[1] = v26;
        v28[2] = v25;
        [v17 setTransform:v28];
        v15 = v16;
        if (v14 == v16)
        {
          goto LABEL_15;
        }
      }

LABEL_26:
      __break(1u);
    }
  }
}

void sub_1004CFD2C(uint64_t a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = *(a1 + 56);
    v4 = Strong;
    ObjectType = swift_getObjectType();
    v6 = (*(*(v3 + 8) + 32))(ObjectType);

    v7 = *(v6 + 16);
    if (v7)
    {
      v8 = 0;
      while (v8 < *(v6 + 16))
      {
        v9 = *(v6 + 32 + 8 * v8);
        if (v9)
        {
          [v9 setAlpha:1.0];
        }

        if (v7 == ++v8)
        {
          goto LABEL_8;
        }
      }

      __break(1u);
      goto LABEL_25;
    }

LABEL_8:
  }

  v10 = swift_unknownObjectWeakLoadStrong();
  if (v10)
  {
    v11 = *(a1 + 56);
    v12 = v10;
    v13 = swift_getObjectType();
    v14 = (*(*(v11 + 8) + 40))(v13);

    v15 = *(v14 + 16);
    if (v15)
    {
      v16 = 0;
      while (v16 < *(v14 + 16))
      {
        v17 = v16 + 1;
        v18 = *(v14 + 32 + 8 * v16);
        v27[1] = 0;
        v27[2] = 0;
        v27[0] = 0x3FF0000000000000;
        v27[3] = 0x3FF0000000000000;
        v27[4] = 0;
        v27[5] = 0;
        [v18 setTransform:v27];
        v16 = v17;
        if (v15 == v17)
        {
          goto LABEL_14;
        }
      }

LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
      return;
    }

LABEL_14:
  }

  v19 = swift_unknownObjectWeakLoadStrong();
  if (v19)
  {
    v20 = v19;
    v21 = *(a1 + 40);
    v22 = swift_getObjectType();
    v23 = (*(*(v21 + 8) + 48))(v22);

    v24 = *(v23 + 16);
    if (v24)
    {
      v25 = 0;
      while (v25 < *(v23 + 16))
      {
        v26 = *(v23 + 32 + 8 * v25);
        if (v26)
        {
          [v26 setAlpha:0.0];
        }

        if (v24 == ++v25)
        {
          goto LABEL_22;
        }
      }

      goto LABEL_26;
    }

LABEL_22:
  }
}

double sub_1004CFF28(void (**a1)(uint64_t), void (**a2)(uint64_t), void (**a3)(uint64_t))
{
  v5 = *a1;

  v5(v6);

  v7 = *a2;

  v7(v8);

  v9 = *a3;

  v9(1);

  return result;
}

uint64_t sub_1004CFFB8()
{
  swift_unknownObjectWeakDestroy();
  sub_10001F64C(v0 + 32);
  sub_10001F64C(v0 + 48);

  return swift_deallocClassInstance();
}

uint64_t sub_1004D00CC()
{
  v0 = type metadata accessor for FontSource();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = (&v9[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = type metadata accessor for StaticDimension();
  sub_100005644(v4, qword_1009D20F8);
  sub_1000056A8(v4, qword_1009D20F8);
  *v3 = UIFontTextStyleBody;
  (*(v1 + 104))(v3, enum case for FontSource.textStyle(_:), v0);
  v9[3] = v0;
  v9[4] = &protocol witness table for FontSource;
  v5 = sub_1000056E0(v9);
  (*(v1 + 16))(v5, v3, v0);
  v6 = UIFontTextStyleBody;
  StaticDimension.init(_:scaledLike:)();
  return (*(v1 + 8))(v3, v0);
}

char *sub_1004D0238(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR____TtC8AppStore34SmallLockupCollectionViewTableCell_lockupView;
  type metadata accessor for SmallLockupView(0);
  *&v4[v9] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v15.receiver = v4;
  v15.super_class = type metadata accessor for SmallLockupCollectionViewTableCell();
  v10 = objc_msgSendSuper2(&v15, "initWithFrame:", a1, a2, a3, a4);
  v11 = [v10 contentView];
  [v11 setPreservesSuperviewLayoutMargins:0];

  v12 = [v10 contentView];
  [v12 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];

  v13 = [v10 contentView];
  [v13 addSubview:*&v10[OBJC_IVAR____TtC8AppStore34SmallLockupCollectionViewTableCell_lockupView]];

  return v10;
}

id sub_1004D0438()
{
  v1 = v0;
  v2 = type metadata accessor for FloatingPointRoundingRule();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for SmallLockupCollectionViewTableCell();
  v22.receiver = v0;
  v22.super_class = v6;
  objc_msgSendSuper2(&v22, "layoutSubviews");
  v7 = [v0 contentView];
  sub_100028004();
  LayoutMarginsAware<>.layoutFrame.getter();
  v9 = v8;
  v11 = v10;
  v13 = v12;

  v14 = *&v1[OBJC_IVAR____TtC8AppStore34SmallLockupCollectionViewTableCell_lockupView];
  [v14 intrinsicContentSize];
  v16 = v15;
  if (qword_10096E600 != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for StaticDimension();
  sub_1000056A8(v17, qword_1009D20F8);
  v18 = [v1 traitCollection];
  static Dimensions.defaultRoundingRule.getter();
  StaticDimension.value(compatibleWith:rounded:)();
  v20 = v19;

  (*(v3 + 8))(v5, v2);
  return [v14 setFrame:{v9, v11 + v20, v13, v16}];
}

id sub_1004D0680(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for SmallLockupCollectionViewTableCell();
  return objc_msgSendSuper2(&v3, "dealloc");
}

double sub_1004D0708()
{
  if (qword_10096EE80 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for SmallLockupLayout.Metrics();
  sub_1000056A8(v0, qword_1009D3798);
  SmallLockupLayout.Metrics.artworkSize.getter();
  return result;
}

void sub_1004D0770(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  sub_1002A4764(a1, a2, a3, WitnessTable);
}

void sub_1004D07DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  sub_1002A4A1C(a1, a2, a3, WitnessTable);
}

unint64_t sub_1004D0848(uint64_t a1)
{
  result = sub_1004D0870();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1004D0870()
{
  result = qword_1009887C8;
  if (!qword_1009887C8)
  {
    type metadata accessor for SmallLockupCollectionViewTableCell();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009887C8);
  }

  return result;
}

id sub_1004D08C4(void *a1, uint64_t a2, void *a3)
{
  v7 = sub_10002849C(&unk_10097DAE0, &qword_1007B5CA0);
  __chkstk_darwin(v7 - 8);
  v9 = &v68 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v68 - v11;
  v13 = type metadata accessor for IndexPath();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v68 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v68 - v18;
  swift_getObjectType();
  v20 = swift_conformsToProtocol2();
  v21 = 0;
  if (v20 && a1)
  {
    v72 = v14;
    v22 = (v3 + OBJC_IVAR____TtC8AppStore43AppPromotionDetailPageTransitioningDelegate_detailPageViewController);
    v23 = *(v3 + OBJC_IVAR____TtC8AppStore43AppPromotionDetailPageTransitioningDelegate_detailPageViewController);
    *v22 = a1;
    v22[1] = v20;
    v71 = a1;

    swift_unknownObjectWeakAssign();
    v24 = sub_100623FBC(a3);
    v25 = &OBJC_IVAR____TtC8AppStore31PrivacyHeaderCollectionViewCell_supplementaryItems;
    if (!v24)
    {
      v32 = 0;
LABEL_29:
      v48 = v71;
      v46 = v72;
      goto LABEL_33;
    }

    v26 = v24;
    v70 = a2;
    v27 = [v24 visibleViewController];
    if (v27)
    {
      v28 = v27;
      type metadata accessor for SearchViewController(0);
      v29 = swift_dynamicCastClass();
      if (v29)
      {
        v30 = v29;

        v31 = *(v30 + OBJC_IVAR____TtC8AppStore20SearchViewController_searchResultsContainerViewController);
        v32 = *&v31[OBJC_IVAR____TtC8AppStore36SearchResultsContainerViewController_activeSearchSectionViewController];
        v33 = v32;

        if (!v32)
        {
          goto LABEL_32;
        }

        v34 = v33;
LABEL_13:
        v36 = v33;
        swift_unknownObjectWeakAssign();
        v37 = [v34 collectionView];
        v38 = v37;
        if (v37)
        {
          v39 = [v37 indexPathsForSelectedItems];
          if (v39)
          {
            v40 = v39;
            v69 = v38;
            v41 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

            if (*(v41 + 16))
            {
              v42 = v72;
              (*(v72 + 16))(v16, v41 + ((*(v72 + 80) + 32) & ~*(v72 + 80)), v13);

              (*(v42 + 32))(v19, v16, v13);
              v43 = v69;
              isa = IndexPath._bridgeToObjectiveC()().super.isa;
              v45 = [v43 cellForItemAtIndexPath:isa];

              v46 = v72;
              (*(v46 + 8))(v19, v13);
              v47 = *(v3 + OBJC_IVAR____TtC8AppStore43AppPromotionDetailPageTransitioningDelegate_sourceCell);
              *(v3 + OBJC_IVAR____TtC8AppStore43AppPromotionDetailPageTransitioningDelegate_sourceCell) = v45;

              v25 = &OBJC_IVAR____TtC8AppStore31PrivacyHeaderCollectionViewCell_supplementaryItems;
              a2 = v70;
              v48 = v71;
              goto LABEL_33;
            }

            v38 = v69;
          }
        }

        v49 = *(v3 + OBJC_IVAR____TtC8AppStore43AppPromotionDetailPageTransitioningDelegate_originatingView);
        if (v49)
        {
          v69 = v38;
          v50 = v49;
          objc_opt_self();
          v51 = swift_dynamicCastObjCClass();
          if (v51)
          {
            v52 = v51;
            v53 = v50;
            a2 = v70;
LABEL_28:

            v56 = *(v3 + OBJC_IVAR____TtC8AppStore43AppPromotionDetailPageTransitioningDelegate_sourceCell);
            *(v3 + OBJC_IVAR____TtC8AppStore43AppPromotionDetailPageTransitioningDelegate_sourceCell) = v52;

            v25 = &OBJC_IVAR____TtC8AppStore31PrivacyHeaderCollectionViewCell_supplementaryItems;
            goto LABEL_29;
          }

          v53 = v50;
          v68 = v50;
          while (1)
          {

            v54 = [v53 superview];
            if (!v54)
            {
              break;
            }

            v53 = v54;
            objc_opt_self();
            v55 = swift_dynamicCastObjCClass();
            if (v55)
            {
              v52 = v55;
              a2 = v70;
              v50 = v68;
              goto LABEL_28;
            }
          }
        }

        else
        {
        }

LABEL_32:
        a2 = v70;
        v48 = v71;
        v46 = v72;
        v25 = &OBJC_IVAR____TtC8AppStore31PrivacyHeaderCollectionViewCell_supplementaryItems;
LABEL_33:
        v57 = *(v3 + v25[35]);
        if (!v57)
        {
LABEL_43:
          v64 = objc_allocWithZone(type metadata accessor for AppPromotionDetailPagePresentationController());
          v65 = v48;
          v66 = [v64 initWithPresentedViewController:v65 presentingViewController:a2];

          return v66;
        }

        if (v32)
        {
          v58 = v57;
          v59 = [v32 collectionView];
          if (v59)
          {
            v60 = v59;
            v61 = [v59 indexPathForCell:v58];

            if (v61)
            {
              static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();

              v62 = 0;
            }

            else
            {
              v62 = 1;
            }

            (*(v72 + 56))(v9, v62, 1, v13);
            sub_1003CB070(v9, v12);
            goto LABEL_42;
          }
        }

        (*(v46 + 56))(v12, 1, 1, v13);
LABEL_42:
        v63 = OBJC_IVAR____TtC8AppStore43AppPromotionDetailPageTransitioningDelegate_sourceIndexPath;
        swift_beginAccess();
        sub_1000F4070(v12, v3 + v63);
        swift_endAccess();
        goto LABEL_43;
      }
    }

    v33 = [v26 visibleViewController];

    if (!v33)
    {
      v32 = 0;
      goto LABEL_32;
    }

    objc_opt_self();
    v35 = swift_dynamicCastObjCClass();
    if (!v35)
    {

      v32 = 0;
      goto LABEL_32;
    }

    v34 = v35;
    v32 = v35;
    goto LABEL_13;
  }

  return v21;
}

void sub_1004D0FD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = OBJC_IVAR____TtC8AppStore43AppPromotionDetailPageTransitioningDelegate_sourceCell;
  v5 = *(a3 + OBJC_IVAR____TtC8AppStore43AppPromotionDetailPageTransitioningDelegate_sourceCell);
  if (!v5 || (*&v39 = *(a3 + OBJC_IVAR____TtC8AppStore43AppPromotionDetailPageTransitioningDelegate_sourceCell), sub_1001F16B4(), v6 = v5, sub_10002849C(&qword_100988830, &unk_1007B6A90), (swift_dynamicCast() & 1) == 0))
  {
    *&v49 = 0;
    v47 = 0u;
    v48 = 0u;
    goto LABEL_7;
  }

  v7 = *(&v48 + 1);
  if (!*(&v48 + 1))
  {
LABEL_7:
    sub_10002B894(&v47, &qword_100974638, &qword_1007B6A80);
    goto LABEL_8;
  }

  v8 = v49;
  sub_10002A400(&v47, *(&v48 + 1));
  v9 = (*(v8 + 8))(v7, v8);
  sub_100007000(&v47);
  v10 = [v9 layer];

  v11 = [v10 presentationLayer];
  if (v11)
  {
    [v11 transform];

    goto LABEL_14;
  }

LABEL_8:
  v12 = *(a3 + v4);
  if (v12 && (*&v47 = *(a3 + v4), sub_1001F16B4(), v13 = v12, sub_10002849C(&qword_100988830, &unk_1007B6A90), (swift_dynamicCast() & 1) != 0))
  {
    v14 = *(&v40 + 1);
    if (*(&v40 + 1))
    {
      v15 = v41;
      sub_10002A400(&v39, *(&v40 + 1));
      v16 = (*(v15 + 8))(v14, v15);
      sub_100007000(&v39);
      v17 = [v16 layer];

      [v17 transform];
      goto LABEL_14;
    }
  }

  else
  {
    *&v41 = 0;
    v39 = 0u;
    v40 = 0u;
  }

  sub_10002B894(&v39, &qword_100974638, &qword_1007B6A80);
  v18 = *&CATransform3DIdentity.m33;
  v51 = *&CATransform3DIdentity.m31;
  v52 = v18;
  v19 = *&CATransform3DIdentity.m43;
  v53 = *&CATransform3DIdentity.m41;
  v54 = v19;
  v20 = *&CATransform3DIdentity.m13;
  v47 = *&CATransform3DIdentity.m11;
  v48 = v20;
  v21 = *&CATransform3DIdentity.m23;
  v49 = *&CATransform3DIdentity.m21;
  v50 = v21;
LABEL_14:
  v22 = *(a3 + OBJC_IVAR____TtC8AppStore43AppPromotionDetailPageTransitioningDelegate_detailPageViewController);
  if (v22)
  {
    v23 = *(a3 + OBJC_IVAR____TtC8AppStore43AppPromotionDetailPageTransitioningDelegate_detailPageViewController + 8);
    ObjectType = swift_getObjectType();
    *&v39 = v22;
    v25 = (*(*(v23 + 8) + 8))(ObjectType);
    v26 = [v25 layer];

    v43 = v51;
    v44 = v52;
    v45 = v53;
    v46 = v54;
    v39 = v47;
    v40 = v48;
    v41 = v49;
    v42 = v50;
    [v26 setTransform:&v39];
  }

  v27 = *(a3 + v4);
  if (v27 && (sub_1001F16B4(), v28 = v27, sub_10002849C(&qword_100988830, &unk_1007B6A90), (swift_dynamicCast() & 1) != 0))
  {
    v29 = *(&v40 + 1);
    if (*(&v40 + 1))
    {
      v30 = v41;
      sub_10002A400(&v39, *(&v40 + 1));
      v31 = (*(v30 + 8))(v29, v30);
      sub_100007000(&v39);
      v32 = [v31 layer];

      [v32 removeAllAnimations];
      v33 = *(a3 + v4);
      if (!v33)
      {
        goto LABEL_26;
      }

      goto LABEL_23;
    }
  }

  else
  {
    *&v41 = 0;
    v39 = 0u;
    v40 = 0u;
  }

  sub_10002B894(&v39, &qword_100974638, &qword_1007B6A80);
  v33 = *(a3 + v4);
  if (!v33)
  {
LABEL_26:
    *&v41 = 0;
    v39 = 0u;
    v40 = 0u;
    goto LABEL_27;
  }

LABEL_23:
  sub_1001F16B4();
  v34 = v33;
  sub_10002849C(&qword_100988830, &unk_1007B6A90);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_26;
  }

  v35 = *(&v40 + 1);
  if (*(&v40 + 1))
  {
    v36 = v41;
    sub_10002A400(&v39, *(&v40 + 1));
    v37 = (*(v36 + 8))(v35, v36);
    sub_100007000(&v39);
    v38 = [v37 layer];

    v43 = v51;
    v44 = v52;
    v45 = v53;
    v46 = v54;
    v39 = v47;
    v40 = v48;
    v41 = v49;
    v42 = v50;
    [v38 setTransform:&v39];

    return;
  }

LABEL_27:
  sub_10002B894(&v39, &qword_100974638, &qword_1007B6A80);
}

void sub_1004D14EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + OBJC_IVAR____TtC8AppStore43AppPromotionDetailPageTransitioningDelegate_sourceCell);
  if (v4 && (*&v24 = *(a3 + OBJC_IVAR____TtC8AppStore43AppPromotionDetailPageTransitioningDelegate_sourceCell), sub_1001F16B4(), v5 = v4, sub_10002849C(&qword_100988830, &unk_1007B6A90), (swift_dynamicCast() & 1) != 0))
  {
    v6 = *(&v33 + 1);
    if (*(&v33 + 1))
    {
      v7 = v34;
      sub_10002A400(&v32, *(&v33 + 1));
      v8 = (*(v7 + 8))(v6, v7);
      sub_100007000(&v32);
      v9 = [v8 layer];

      v10 = *&CATransform3DIdentity.m33;
      v28 = *&CATransform3DIdentity.m31;
      v29 = v10;
      v11 = *&CATransform3DIdentity.m43;
      v30 = *&CATransform3DIdentity.m41;
      v31 = v11;
      v12 = *&CATransform3DIdentity.m13;
      v24 = *&CATransform3DIdentity.m11;
      v25 = v12;
      v13 = *&CATransform3DIdentity.m23;
      v26 = *&CATransform3DIdentity.m21;
      v27 = v13;
      [v9 setTransform:&v24];

      goto LABEL_7;
    }
  }

  else
  {
    v34 = 0;
    v32 = 0u;
    v33 = 0u;
  }

  sub_10002B894(&v32, &qword_100974638, &qword_1007B6A80);
LABEL_7:
  v14 = a3 + OBJC_IVAR____TtC8AppStore43AppPromotionDetailPageTransitioningDelegate_detailPageViewController;
  v15 = *(a3 + OBJC_IVAR____TtC8AppStore43AppPromotionDetailPageTransitioningDelegate_detailPageViewController);
  if (v15)
  {
    v16 = *(v14 + 8);
    ObjectType = swift_getObjectType();
    *&v24 = v15;
    v18 = (*(*(v16 + 8) + 8))(ObjectType);
    v19 = [v18 layer];

    v20 = *&CATransform3DIdentity.m33;
    v28 = *&CATransform3DIdentity.m31;
    v29 = v20;
    v21 = *&CATransform3DIdentity.m43;
    v30 = *&CATransform3DIdentity.m41;
    v31 = v21;
    v22 = *&CATransform3DIdentity.m13;
    v24 = *&CATransform3DIdentity.m11;
    v25 = v22;
    v23 = *&CATransform3DIdentity.m23;
    v26 = *&CATransform3DIdentity.m21;
    v27 = v23;
    [v19 setTransform:&v24];
  }
}

void sub_1004D16DC(uint64_t a1, char a2, uint64_t a3)
{
  if (a2)
  {
    v3 = *(a3 + OBJC_IVAR____TtC8AppStore43AppPromotionDetailPageTransitioningDelegate_detailPageViewController);
    if (v3)
    {
      v4 = *(a3 + OBJC_IVAR____TtC8AppStore43AppPromotionDetailPageTransitioningDelegate_detailPageViewController + 8);
      ObjectType = swift_getObjectType();
      v6 = *(v4 + 48);
      v7 = v3;
      v6(ObjectType, v4);
    }
  }
}

char *sub_1004D1810(void *a1)
{
  v3 = sub_10002849C(&unk_10097DAE0, &qword_1007B5CA0);
  __chkstk_darwin(v3 - 8);
  v5 = &v112 - v4;
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v112 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    v12 = [Strong collectionView];

    if (v12)
    {
      v13 = OBJC_IVAR____TtC8AppStore43AppPromotionDetailPageTransitioningDelegate_sourceIndexPath;
      swift_beginAccess();
      sub_10022BA04(&v1[v13], v5);
      if ((*(v7 + 48))(v5, 1, v6) == 1)
      {

        sub_10002B894(v5, &unk_10097DAE0, &qword_1007B5CA0);
      }

      else
      {
        (*(v7 + 32))(v9, v5, v6);
        isa = IndexPath._bridgeToObjectiveC()().super.isa;
        v15 = [v12 cellForItemAtIndexPath:isa];

        (*(v7 + 8))(v9, v6);
        if (v15)
        {
          v16 = *&v1[OBJC_IVAR____TtC8AppStore43AppPromotionDetailPageTransitioningDelegate_sourceCell];
          *&v1[OBJC_IVAR____TtC8AppStore43AppPromotionDetailPageTransitioningDelegate_sourceCell] = v15;
        }
      }
    }
  }

  v17 = OBJC_IVAR____TtC8AppStore43AppPromotionDetailPageTransitioningDelegate_sourceCell;
  v18 = *&v1[OBJC_IVAR____TtC8AppStore43AppPromotionDetailPageTransitioningDelegate_sourceCell];
  if (!v18)
  {
    goto LABEL_24;
  }

  v19 = swift_unknownObjectWeakLoadStrong();
  if (!v19)
  {
    goto LABEL_24;
  }

  v20 = v19;
  v119 = v18;
  sub_1001F16B4();
  v21 = v18;
  sub_10002849C(&qword_100988830, &unk_1007B6A90);
  if (swift_dynamicCast())
  {
    v22 = *(&v121 + 1);
    if (*(&v121 + 1))
    {
      v23 = v122;
      sub_10002A400(&v120, *(&v121 + 1));
      v24 = *(v23 + 8);
      v117 = v1;
      v25 = v24(v22, v23);
      v1 = v117;
      v26 = v25;
      sub_100007000(&v120);
      v27 = *&v1[v17];
      if (!v27)
      {

LABEL_39:
        v122 = 0;
        v120 = 0u;
        v121 = 0u;
        goto LABEL_23;
      }

      v119 = *&v1[v17];
      v28 = v27;
      if (swift_dynamicCast())
      {
        v29 = *(&v121 + 1);
        if (*(&v121 + 1))
        {
          v116 = v21;
          v30 = v122;
          sub_10002A400(&v120, *(&v121 + 1));
          v31 = (*(v30 + 16))(v29, v30);
          v1 = v117;
          v32 = v31;
          sub_100007000(&v120);
          v33 = *&v1[v17];
          if (v33)
          {
            v119 = *&v1[v17];
            v34 = v33;
            if (swift_dynamicCast())
            {
              v35 = *(&v121 + 1);
              if (*(&v121 + 1))
              {
                v115 = v32;
                v36 = v122;
                sub_10002A400(&v120, *(&v121 + 1));
                v37 = (*(v36 + 40))(v35, v36);
                v1 = v117;
                v38 = v37;
                v40 = v39;
                sub_100007000(&v120);
                v41 = *&v1[v17];
                if (v41)
                {
                  v119 = *&v1[v17];
                  v42 = v41;
                  v43 = swift_dynamicCast();
                  v44 = v116;
                  if (v43)
                  {
                    v45 = *(&v121 + 1);
                    if (*(&v121 + 1))
                    {
                      v46 = v122;
                      sub_10002A400(&v120, *(&v121 + 1));
                      v47 = (*(v46 + 32))(v45, v46);
                      v1 = v117;
                      v114 = v47;
                      v113 = v48;
                      v50 = v49;
                      v52 = v51;
                      sub_100007000(&v120);
                      [v44 bounds];
                      v54 = v53;
                      v56 = v55;
                      v58 = v57;
                      v60 = v59;
                      v61 = [v20 view];
                      [v44 convertRect:v61 toView:{v54, v56, v58, v60}];
                      v63 = v62;
                      v65 = v64;

                      v66 = v115;
                      [v115 bounds];
                      [v66 convertRect:v44 toCoordinateSpace:?];
                      v68 = v38 + v63 + v67;
                      v70 = v40 + v65 + v69;
                      v71 = swift_unknownObjectWeakLoadStrong();
                      v72 = *&v1[OBJC_IVAR____TtC8AppStore43AppPromotionDetailPageTransitioningDelegate_detailPageViewController];
                      v73 = type metadata accessor for AppPromotionDetailPageCloseAnimation();
                      v74 = objc_allocWithZone(v73);
                      *&v74[OBJC_IVAR____TtC8AppStore36AppPromotionDetailPageCloseAnimation_toCardView] = v26;
                      *&v74[OBJC_IVAR____TtC8AppStore36AppPromotionDetailPageCloseAnimation_toCollectionViewController] = v71;
                      v75 = &v74[OBJC_IVAR____TtC8AppStore36AppPromotionDetailPageCloseAnimation_toBounds];
                      v76 = v113;
                      *v75 = v114;
                      *(v75 + 1) = v76;
                      *(v75 + 2) = v50;
                      *(v75 + 3) = v52;
                      v75[32] = 0;
                      v77 = &v74[OBJC_IVAR____TtC8AppStore36AppPromotionDetailPageCloseAnimation_toCenter];
                      *v77 = v68;
                      v77[1] = v70;
                      *(v77 + 16) = 0;
                      *&v74[OBJC_IVAR____TtC8AppStore36AppPromotionDetailPageCloseAnimation_detailPageViewController] = v72;
                      v118.receiver = v74;
                      v118.super_class = v73;
                      v78 = v72;
                      v79 = v26;
                      v80 = v71;
                      v81 = objc_msgSendSuper2(&v118, "init");

                      goto LABEL_25;
                    }
                  }

                  else
                  {
                    v122 = 0;
                    v120 = 0u;
                    v121 = 0u;
                  }

                  goto LABEL_23;
                }

                goto LABEL_43;
              }
            }

            else
            {
              v122 = 0;
              v120 = 0u;
              v121 = 0u;
            }

            goto LABEL_23;
          }

LABEL_43:
          goto LABEL_39;
        }
      }

      else
      {
        v122 = 0;
        v120 = 0u;
        v121 = 0u;
      }

      goto LABEL_23;
    }
  }

  else
  {
    v122 = 0;
    v120 = 0u;
    v121 = 0u;
  }

LABEL_23:
  sub_10002B894(&v120, &qword_100974638, &qword_1007B6A80);
LABEL_24:
  v82 = *&v1[OBJC_IVAR____TtC8AppStore43AppPromotionDetailPageTransitioningDelegate_detailPageViewController];
  v83 = type metadata accessor for AppPromotionDetailPageCloseAnimation();
  v84 = objc_allocWithZone(v83);
  *&v84[OBJC_IVAR____TtC8AppStore36AppPromotionDetailPageCloseAnimation_toCardView] = 0;
  *&v84[OBJC_IVAR____TtC8AppStore36AppPromotionDetailPageCloseAnimation_toCollectionViewController] = 0;
  v85 = &v84[OBJC_IVAR____TtC8AppStore36AppPromotionDetailPageCloseAnimation_toBounds];
  *v85 = 0u;
  *(v85 + 1) = 0u;
  v85[32] = 1;
  v86 = &v84[OBJC_IVAR____TtC8AppStore36AppPromotionDetailPageCloseAnimation_toCenter];
  *v86 = 0;
  *(v86 + 1) = 0;
  v86[16] = 1;
  *&v84[OBJC_IVAR____TtC8AppStore36AppPromotionDetailPageCloseAnimation_detailPageViewController] = v82;
  v123.receiver = v84;
  v123.super_class = v83;
  v87 = v82;
  v81 = objc_msgSendSuper2(&v123, "init");
LABEL_25:
  v88 = swift_allocObject();
  *(v88 + 16) = v1;
  v89 = OBJC_IVAR____TtC8AppStore27AnimatedTransitionWithTasks_tasks;
  swift_beginAccess();
  v90 = *&v81[v89];
  v91 = v81;
  v92 = v1;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v81[v89] = v90;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v90 = sub_1000340DC(0, *(v90 + 2) + 1, 1, v90);
    *&v81[v89] = v90;
  }

  v95 = *(v90 + 2);
  v94 = *(v90 + 3);
  if (v95 >= v94 >> 1)
  {
    v90 = sub_1000340DC((v94 > 1), v95 + 1, 1, v90);
  }

  *(v90 + 2) = v95 + 1;
  v96 = &v90[24 * v95];
  *(v96 + 4) = sub_1004D2C7C;
  *(v96 + 5) = v88;
  v96[48] = 0;
  *&v81[v89] = v90;
  swift_endAccess();

  v97 = swift_allocObject();
  *(v97 + 16) = a1;
  swift_beginAccess();
  v98 = *&v81[v89];
  v99 = a1;

  v100 = swift_isUniquelyReferenced_nonNull_native();
  *&v81[v89] = v98;
  if ((v100 & 1) == 0)
  {
    v98 = sub_1000340DC(0, *(v98 + 2) + 1, 1, v98);
    *&v81[v89] = v98;
  }

  v102 = *(v98 + 2);
  v101 = *(v98 + 3);
  if (v102 >= v101 >> 1)
  {
    v98 = sub_1000340DC((v101 > 1), v102 + 1, 1, v98);
  }

  *(v98 + 2) = v102 + 1;
  v103 = &v98[24 * v102];
  *(v103 + 4) = sub_1004D2C84;
  *(v103 + 5) = v97;
  v103[48] = 1;
  *&v81[v89] = v98;
  swift_endAccess();

  v104 = swift_allocObject();
  *(v104 + 16) = v92;
  swift_beginAccess();
  v105 = *&v81[v89];
  v106 = v92;

  v107 = swift_isUniquelyReferenced_nonNull_native();
  *&v81[v89] = v105;
  if ((v107 & 1) == 0)
  {
    v105 = sub_1000340DC(0, *(v105 + 2) + 1, 1, v105);
    *&v81[v89] = v105;
  }

  v109 = *(v105 + 2);
  v108 = *(v105 + 3);
  if (v109 >= v108 >> 1)
  {
    v105 = sub_1000340DC((v108 > 1), v109 + 1, 1, v105);
  }

  *(v105 + 2) = v109 + 1;
  v110 = &v105[24 * v109];
  *(v110 + 4) = sub_1004D2C8C;
  *(v110 + 5) = v104;
  v110[48] = 2;
  *&v81[v89] = v105;
  swift_endAccess();

  return v91;
}

void sub_1004D2284(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = objc_opt_self();
  v5 = swift_allocObject();
  *(v5 + 16) = a3;
  v8[4] = sub_1004D2C94;
  v8[5] = v5;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 1107296256;
  v8[2] = sub_100007A08;
  v8[3] = &unk_1008C5CC0;
  v6 = _Block_copy(v8);
  v7 = a3;

  [v4 animateWithDuration:v6 animations:0.1];
  _Block_release(v6);
}

void sub_1004D2374(uint64_t a1)
{
  v1 = *(a1 + OBJC_IVAR____TtC8AppStore43AppPromotionDetailPageTransitioningDelegate_detailPageViewController);
  if (v1)
  {
    v2 = *(a1 + OBJC_IVAR____TtC8AppStore43AppPromotionDetailPageTransitioningDelegate_detailPageViewController + 8);
    ObjectType = swift_getObjectType();
    v4 = *(v2 + 32);
    v5 = v1;
    v4(1, ObjectType, v2);
  }
}

void sub_1004D2428(int a1, int a2, id a3)
{
  v3 = [a3 _existingPresentationControllerImmediate:1 effective:1];
  if (v3)
  {
    v8 = v3;
    type metadata accessor for AppPromotionDetailPagePresentationController();
    v4 = swift_dynamicCastClass();
    if (v4)
    {
      v5 = v4 + OBJC_IVAR____TtC8AppStore44AppPromotionDetailPagePresentationController_interactiveDismissal;
      swift_beginAccess();
      if (*(v5 + 24))
      {
        sub_10002C0AC(v5, v9);
        v6 = v10;
        v7 = v11;
        sub_10002A400(v9, v10);
        (*(v7 + 24))(v6, v7);

        sub_100007000(v9);
        return;
      }
    }
  }
}

void sub_1004D253C(uint64_t a1, char a2, uint64_t a3)
{
  v5 = type metadata accessor for IndexPath();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a2 & 1) == 0)
  {
    return;
  }

  v9 = OBJC_IVAR____TtC8AppStore43AppPromotionDetailPageTransitioningDelegate_sourceCell;
  v10 = *(a3 + OBJC_IVAR____TtC8AppStore43AppPromotionDetailPageTransitioningDelegate_sourceCell);
  if (!v10)
  {
    goto LABEL_13;
  }

  v43 = *(a3 + OBJC_IVAR____TtC8AppStore43AppPromotionDetailPageTransitioningDelegate_sourceCell);
  sub_1001F16B4();
  v11 = v10;
  sub_10002849C(&qword_100988830, &unk_1007B6A90);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_13;
  }

  v12 = *(&v45 + 1);
  if (!*(&v45 + 1))
  {
LABEL_14:
    sub_10002B894(&v44, &qword_100974638, &qword_1007B6A80);
    goto LABEL_15;
  }

  v13 = v46;
  sub_10002A400(&v44, *(&v45 + 1));
  v14 = (*(v13 + 8))(v12, v13);
  sub_100007000(&v44);
  v15 = *(a3 + v9);
  if (!v15)
  {

LABEL_13:
    v46 = 0;
    v44 = 0u;
    v45 = 0u;
    goto LABEL_14;
  }

  v43 = *(a3 + v9);
  v16 = v15;
  if ((swift_dynamicCast() & 1) == 0)
  {
    v46 = 0;
    v44 = 0u;
    v45 = 0u;
    goto LABEL_25;
  }

  v17 = *(&v45 + 1);
  if (!*(&v45 + 1))
  {
LABEL_25:

    goto LABEL_14;
  }

  v42 = v14;
  v18 = v46;
  sub_10002A400(&v44, *(&v45 + 1));
  v19 = *(v18 + 16);
  v20 = v18;
  v21 = v42;
  v22 = v19(v17, v20);
  sub_100007000(&v44);
  [v22 addSubview:v21];
  v23 = *(a3 + v9);
  if (!v23)
  {

    goto LABEL_13;
  }

  v43 = *(a3 + v9);
  v24 = v23;
  if ((swift_dynamicCast() & 1) == 0)
  {
    v46 = 0;
    v44 = 0u;
    v45 = 0u;
    goto LABEL_28;
  }

  v25 = *(&v45 + 1);
  if (!*(&v45 + 1))
  {
LABEL_28:

    goto LABEL_14;
  }

  v26 = v46;
  sub_10002A400(&v44, *(&v45 + 1));
  v27 = (*(v26 + 24))(v25, v26);
  [v27 setNeedsLayout];

  sub_100007000(&v44);
LABEL_15:
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v29 = Strong;
    v30 = [Strong collectionView];

    if (v30)
    {
      v31 = [v30 indexPathsForSelectedItems];
      if (v31)
      {
        v32 = v31;
        v33 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        v34 = *(v33 + 16);
        if (v34)
        {
          v37 = *(v6 + 16);
          v36 = v6 + 16;
          v35 = v37;
          v38 = (*(v36 + 64) + 32) & ~*(v36 + 64);
          v42 = v33;
          v39 = v33 + v38;
          v40 = *(v36 + 56);
          do
          {
            v35(v8, v39, v5);
            isa = IndexPath._bridgeToObjectiveC()().super.isa;
            (*(v36 - 8))(v8, v5);
            [v30 deselectItemAtIndexPath:isa animated:{0, v42}];

            v39 += v40;
            --v34;
          }

          while (v34);
        }
      }
    }
  }
}

id sub_1004D29B0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AppPromotionDetailPageTransitioningDelegate(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for AppPromotionDetailPageTransitioningDelegate(uint64_t a1)
{
  result = qword_100988818;
  if (!qword_100988818)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1004D2AD8(uint64_t a1)
{
  sub_10022B99C(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

id sub_1004D2B88(void *a1)
{
  v3 = OBJC_IVAR____TtC8AppStore43AppPromotionDetailPageTransitioningDelegate_originatingView;
  *&v1[OBJC_IVAR____TtC8AppStore43AppPromotionDetailPageTransitioningDelegate_originatingView] = 0;
  v4 = &v1[OBJC_IVAR____TtC8AppStore43AppPromotionDetailPageTransitioningDelegate_detailPageViewController];
  *v4 = 0;
  *(v4 + 1) = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  v5 = OBJC_IVAR____TtC8AppStore43AppPromotionDetailPageTransitioningDelegate_sourceIndexPath;
  v6 = type metadata accessor for IndexPath();
  (*(*(v6 - 8) + 56))(&v1[v5], 1, 1, v6);
  *&v1[OBJC_IVAR____TtC8AppStore43AppPromotionDetailPageTransitioningDelegate_sourceCell] = 0;
  v7 = *&v1[v3];
  *&v1[v3] = a1;
  v8 = a1;

  v10.receiver = v1;
  v10.super_class = type metadata accessor for AppPromotionDetailPageTransitioningDelegate(0);
  return objc_msgSendSuper2(&v10, "init");
}

char *sub_1004D2C9C()
{
  v1 = OBJC_IVAR____TtC8AppStore43AppPromotionDetailPageTransitioningDelegate_sourceCell;
  v2 = *&v0[OBJC_IVAR____TtC8AppStore43AppPromotionDetailPageTransitioningDelegate_sourceCell];
  if (!v2)
  {
    v29 = 0.0;
    v28 = 1;
    v4 = 0.0;
    goto LABEL_14;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  v4 = 0.0;
  if (!Strong)
  {
LABEL_10:
    v28 = 1;
    v29 = 0.0;
    v30 = *&v0[v1];
    if (v30)
    {
      goto LABEL_11;
    }

LABEL_14:
    v66 = 0;
    v64 = 0u;
    v65 = 0u;
    goto LABEL_15;
  }

  v5 = Strong;
  sub_1001F16B4();
  v6 = v2;
  sub_10002849C(&qword_100988830, &unk_1007B6A90);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v66 = 0;
    v64 = 0u;
    v65 = 0u;
    goto LABEL_9;
  }

  v7 = *(&v65 + 1);
  if (!*(&v65 + 1))
  {
LABEL_9:

    sub_10002B894(&v64, &qword_100974638, &qword_1007B6A80);
    goto LABEL_10;
  }

  v8 = v66;
  sub_10002A400(&v64, *(&v65 + 1));
  v9 = (*(v8 + 8))(v7, v8);
  sub_100007000(&v64);
  [v6 bounds];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v18 = [v5 view];
  [v6 convertRect:v18 toView:{v11, v13, v15, v17}];
  v20 = v19;
  v22 = v21;

  [v9 bounds];
  [v9 convertRect:v6 toCoordinateSpace:?];
  x = v67.origin.x;
  y = v67.origin.y;
  width = v67.size.width;
  height = v67.size.height;
  v4 = v20 + CGRectGetMidX(v67);
  v68.origin.x = x;
  v68.origin.y = y;
  v68.size.width = width;
  v68.size.height = height;
  MidY = CGRectGetMidY(v68);

  v28 = 0;
  v29 = v22 + MidY;
  v30 = *&v0[v1];
  if (!v30)
  {
    goto LABEL_14;
  }

LABEL_11:
  sub_1001F16B4();
  v31 = v30;
  sub_10002849C(&qword_100988830, &unk_1007B6A90);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_14;
  }

  v32 = *(&v65 + 1);
  if (*(&v65 + 1))
  {
    v33 = v66;
    sub_10002A400(&v64, *(&v65 + 1));
    v34 = (*(v33 + 8))(v32, v33);
    sub_100007000(&v64);
    goto LABEL_16;
  }

LABEL_15:
  sub_10002B894(&v64, &qword_100974638, &qword_1007B6A80);
  v34 = 0;
LABEL_16:
  v35 = swift_unknownObjectWeakLoadStrong();
  v36 = type metadata accessor for AppPromotionPageOpenAnimation();
  v37 = objc_allocWithZone(v36);
  *&v37[OBJC_IVAR____TtC8AppStore29AppPromotionPageOpenAnimation_fromCardView] = v34;
  *&v37[OBJC_IVAR____TtC8AppStore29AppPromotionPageOpenAnimation_fromCollectionViewController] = v35;
  v38 = &v37[OBJC_IVAR____TtC8AppStore29AppPromotionPageOpenAnimation_fromCenter];
  *v38 = v4;
  v38[1] = v29;
  *(v38 + 16) = v28;
  v63.receiver = v37;
  v63.super_class = v36;
  v39 = objc_msgSendSuper2(&v63, "init");
  v40 = swift_allocObject();
  *(v40 + 16) = v0;
  v41 = OBJC_IVAR____TtC8AppStore27AnimatedTransitionWithTasks_tasks;
  swift_beginAccess();
  v42 = *&v39[v41];
  v43 = v0;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v39[v41] = v42;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v42 = sub_1000340DC(0, *(v42 + 2) + 1, 1, v42);
    *&v39[v41] = v42;
  }

  v46 = *(v42 + 2);
  v45 = *(v42 + 3);
  if (v46 >= v45 >> 1)
  {
    v42 = sub_1000340DC((v45 > 1), v46 + 1, 1, v42);
  }

  *(v42 + 2) = v46 + 1;
  v47 = &v42[24 * v46];
  *(v47 + 4) = sub_1004D32B4;
  *(v47 + 5) = v40;
  v47[48] = 0;
  *&v39[v41] = v42;
  swift_endAccess();

  v48 = swift_allocObject();
  *(v48 + 16) = v43;
  swift_beginAccess();
  v49 = *&v39[v41];
  v50 = v43;

  v51 = swift_isUniquelyReferenced_nonNull_native();
  *&v39[v41] = v49;
  if ((v51 & 1) == 0)
  {
    v49 = sub_1000340DC(0, *(v49 + 2) + 1, 1, v49);
    *&v39[v41] = v49;
  }

  v53 = *(v49 + 2);
  v52 = *(v49 + 3);
  if (v53 >= v52 >> 1)
  {
    v49 = sub_1000340DC((v52 > 1), v53 + 1, 1, v49);
  }

  *(v49 + 2) = v53 + 1;
  v54 = &v49[24 * v53];
  *(v54 + 4) = sub_1004D32BC;
  *(v54 + 5) = v48;
  v54[48] = 1;
  *&v39[v41] = v49;
  swift_endAccess();

  v55 = swift_allocObject();
  *(v55 + 16) = v50;
  swift_beginAccess();
  v56 = *&v39[v41];
  v57 = v50;

  v58 = swift_isUniquelyReferenced_nonNull_native();
  *&v39[v41] = v56;
  if ((v58 & 1) == 0)
  {
    v56 = sub_1000340DC(0, *(v56 + 2) + 1, 1, v56);
    *&v39[v41] = v56;
  }

  v60 = *(v56 + 2);
  v59 = *(v56 + 3);
  if (v60 >= v59 >> 1)
  {
    v56 = sub_1000340DC((v59 > 1), v60 + 1, 1, v56);
  }

  *(v56 + 2) = v60 + 1;
  v61 = &v56[24 * v60];
  *(v61 + 4) = sub_1004D32C4;
  *(v61 + 5) = v55;
  v61[48] = 2;
  *&v39[v41] = v56;
  swift_endAccess();

  return v39;
}

void sub_1004D32CC(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = type metadata accessor for LogMessage.StringInterpolation();
  __chkstk_darwin(v7 - 8);
  if (qword_10096D138 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for OSLogger();
  sub_1000056A8(v8, qword_1009CE260);
  sub_10002849C(&unk_100972A10, &qword_1007B1EF0);
  type metadata accessor for LogMessage();
  *(swift_allocObject() + 16) = xmmword_1007B10D0;
  LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v9._countAndFlagsBits = 0x5370696B53646964;
  v9._object = 0xED0000203A706574;
  LogMessage.StringInterpolation.appendLiteral(_:)(v9);
  v10 = a1[3];
  v11 = sub_10002A400(a1, v10);
  v16 = v10;
  v12 = sub_1000056E0(v15);
  (*(*(v10 - 8) + 16))(v12, v11, v10);
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10002B894(v15, &unk_1009711D0, &unk_1007B1A10);
  v13._countAndFlagsBits = 0x6E6F73616572202CLL;
  v13._object = 0xEA0000000000203ALL;
  LogMessage.StringInterpolation.appendLiteral(_:)(v13);
  v16 = &type metadata for String;
  v15[0] = a2;
  v15[1] = a3;

  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10002B894(v15, &unk_1009711D0, &unk_1007B1A10);
  v14._countAndFlagsBits = 0;
  v14._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v14);
  LogMessage.init(stringInterpolation:)();
  Logger.info(_:)();

  swift_beginAccess();
  if (*(*(v3 + 32) + 16))
  {
    sub_1004A6F08(0, 1);
    swift_endAccess();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1004D35A8()
{
  v1 = sub_10002849C(&qword_1009888E8, &unk_1007D15A8);
  __chkstk_darwin(v1 - 8);
  v3 = &v11[-v2];
  v4 = type metadata accessor for WelcomeOnboardingStep();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v11[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  v8 = *(v0 + 32);
  if (*(v8 + 16))
  {
    sub_10002C0AC(v8 + 32, v12);
    sub_10002849C(&unk_10097A950, &qword_1007B1320);
    v9 = swift_dynamicCast();
    (*(v5 + 56))(v3, v9 ^ 1u, 1, v4);
    if ((*(v5 + 48))(v3, 1, v4) != 1)
    {
      (*(v5 + 32))(v7, v3, v4);
      WelcomeOnboardingStep.markAsShown()();
      sub_1004D3A14(v7, v0);
      return (*(v5 + 8))(v7, v4);
    }
  }

  else
  {
    (*(v5 + 56))(v3, 1, 1, v4);
  }

  return sub_10002B894(v3, &qword_1009888E8, &unk_1007D15A8);
}

double sub_1004D37E0(char a1)
{
  swift_beginAccess();
  v4 = *(v1 + 32);
  if (*(v4 + 16))
  {
    sub_10002C0AC(v4 + 32, v8);
    sub_10002849C(&unk_10097A950, &qword_1007B1320);
    type metadata accessor for AdPrivacyOnboardingStep();
    if (swift_dynamicCast())
    {
      v5 = v1;
      v6 = sub_10003C5F4();
      [v6 setPersonalizedAds:a1 & 1];

      sub_10003CEC4();
      sub_1004D3D0C(v7, v5);
    }
  }

  return result;
}

uint64_t sub_1004D38BC()
{
  swift_beginAccess();
  v1 = *(v0 + 32);
  if (*(v1 + 16))
  {
    sub_10002C0AC(v1 + 32, v6);
    sub_10002849C(&unk_10097A950, &qword_1007B1320);
    if (swift_dynamicCast())
    {
      if (v3)
      {
        v6[0] = v3;
        v6[1] = v4;
        v6[2] = v5;
        sub_1003D1F0C();
        sub_1004D3FD4(v6, v0);
        return sub_1003702DC(v6);
      }
    }

    else
    {
      v4 = 0u;
      v5 = 0u;
      v3 = 0u;
    }
  }

  else
  {
    v3 = 0u;
    v4 = 0u;
    v5 = 0u;
  }

  return sub_10002B894(&v3, &qword_1009888F0, &qword_1007D15B8);
}

uint64_t sub_1004D39B0()
{

  return swift_deallocClassInstance();
}

void sub_1004D3A14(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LogMessage.StringInterpolation();
  __chkstk_darwin(v4 - 8);
  v5 = type metadata accessor for WelcomeOnboardingStep();
  v15 = v5;
  v16 = sub_1001C8644(&qword_100978C90, &type metadata accessor for WelcomeOnboardingStep, &protocol conformance descriptor for WelcomeOnboardingStep);
  v6 = sub_1000056E0(v14);
  (*(*(v5 - 8) + 16))(v6, a1, v5);
  if (qword_10096D138 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for OSLogger();
  sub_1000056A8(v7, qword_1009CE260);
  sub_10002849C(&unk_100972A10, &qword_1007B1EF0);
  type metadata accessor for LogMessage();
  *(swift_allocObject() + 16) = xmmword_1007B10D0;
  LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v8._object = 0x8000000100817370;
  v8._countAndFlagsBits = 0xD000000000000011;
  LogMessage.StringInterpolation.appendLiteral(_:)(v8);
  v9 = v15;
  v10 = sub_10002A400(v14, v15);
  v13[3] = v9;
  v11 = sub_1000056E0(v13);
  (*(*(v9 - 8) + 16))(v11, v10, v9);
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10002B894(v13, &unk_1009711D0, &unk_1007B1A10);
  v12._countAndFlagsBits = 0;
  v12._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v12);
  LogMessage.init(stringInterpolation:)();
  Logger.info(_:)();

  swift_beginAccess();
  if (*(*(a2 + 32) + 16))
  {
    sub_1004A6F08(0, 1);
    swift_endAccess();
    sub_100007000(v14);
  }

  else
  {
    __break(1u);
  }
}

void sub_1004D3D0C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LogMessage.StringInterpolation();
  __chkstk_darwin(v4 - 8);
  v5 = type metadata accessor for AdPrivacyOnboardingStep();
  v13[3] = v5;
  v13[4] = sub_1001C8644(&qword_1009702A0, type metadata accessor for AdPrivacyOnboardingStep, &unk_1007B19C8);
  v13[0] = a1;
  v6 = qword_10096D138;

  if (v6 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for OSLogger();
  sub_1000056A8(v7, qword_1009CE260);
  sub_10002849C(&unk_100972A10, &qword_1007B1EF0);
  type metadata accessor for LogMessage();
  *(swift_allocObject() + 16) = xmmword_1007B10D0;
  LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v8._object = 0x8000000100817370;
  v8._countAndFlagsBits = 0xD000000000000011;
  LogMessage.StringInterpolation.appendLiteral(_:)(v8);
  v9 = sub_10002A400(v13, v5);
  v12[3] = v5;
  v10 = sub_1000056E0(v12);
  (*(*(v5 - 8) + 16))(v10, v9, v5);
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10002B894(v12, &unk_1009711D0, &unk_1007B1A10);
  v11._countAndFlagsBits = 0;
  v11._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v11);
  LogMessage.init(stringInterpolation:)();
  Logger.info(_:)();

  swift_beginAccess();
  if (*(*(a2 + 32) + 16))
  {
    sub_1004A6F08(0, 1);
    swift_endAccess();
    sub_100007000(v13);
  }

  else
  {
    __break(1u);
  }
}

void sub_1004D3FD4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LogMessage.StringInterpolation();
  __chkstk_darwin(v4 - 8);
  v11[3] = &type metadata for LocationPrivacyOnboardingStep;
  v11[4] = sub_1001C85F0();
  v11[0] = swift_allocObject();
  sub_1004D4544(a1, v11[0] + 16);
  if (qword_10096D138 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for OSLogger();
  sub_1000056A8(v5, qword_1009CE260);
  sub_10002849C(&unk_100972A10, &qword_1007B1EF0);
  type metadata accessor for LogMessage();
  *(swift_allocObject() + 16) = xmmword_1007B10D0;
  LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v6._object = 0x8000000100817370;
  v6._countAndFlagsBits = 0xD000000000000011;
  LogMessage.StringInterpolation.appendLiteral(_:)(v6);
  v7 = sub_10002A400(v11, &type metadata for LocationPrivacyOnboardingStep);
  v10[3] = &type metadata for LocationPrivacyOnboardingStep;
  v8 = sub_1000056E0(v10);
  _swift_cvw_initWithCopy(v8, v7);
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10002B894(v10, &unk_1009711D0, &unk_1007B1A10);
  v9._countAndFlagsBits = 0;
  v9._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v9);
  LogMessage.init(stringInterpolation:)();
  Logger.info(_:)();

  swift_beginAccess();
  if (*(*(a2 + 32) + 16))
  {
    sub_1004A6F08(0, 1);
    swift_endAccess();
    sub_100007000(v11);
  }

  else
  {
    __break(1u);
  }
}

void sub_1004D4280(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for LogMessage.StringInterpolation();
  __chkstk_darwin(v4 - 8);
  v5 = type metadata accessor for JourneyDrivenOnboardingStep();
  v14[3] = v5;
  v14[4] = sub_1001C8644(&unk_100978CA0, type metadata accessor for JourneyDrivenOnboardingStep, &unk_1007C1FCC);
  v14[0] = a1;
  v6 = qword_10096D138;
  v7 = a1;
  if (v6 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for OSLogger();
  sub_1000056A8(v8, qword_1009CE260);
  sub_10002849C(&unk_100972A10, &qword_1007B1EF0);
  type metadata accessor for LogMessage();
  *(swift_allocObject() + 16) = xmmword_1007B10D0;
  LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v9._object = 0x8000000100817370;
  v9._countAndFlagsBits = 0xD000000000000011;
  LogMessage.StringInterpolation.appendLiteral(_:)(v9);
  v10 = sub_10002A400(v14, v5);
  v13[3] = v5;
  v11 = sub_1000056E0(v13);
  (*(*(v5 - 8) + 16))(v11, v10, v5);
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10002B894(v13, &unk_1009711D0, &unk_1007B1A10);
  v12._countAndFlagsBits = 0;
  v12._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v12);
  LogMessage.init(stringInterpolation:)();
  Logger.info(_:)();

  swift_beginAccess();
  if (*(*(a2 + 32) + 16))
  {
    sub_1004A6F08(0, 1);
    swift_endAccess();
    sub_100007000(v14);
  }

  else
  {
    __break(1u);
  }
}

void sub_1004D45A0()
{
  v1 = *(v0 + 16);
  if (v1 >> 62)
  {
    v2 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v2)
  {
LABEL_12:
    sub_1003E616C(_swiftEmptyArrayStorage);

    return;
  }

  sub_100144108(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    for (i = 0; i != v2; ++i)
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v4 = *(v1 + 8 * i + 32);
      }

      v5 = v4;
      [v4 contentOffset];
      v7 = v6;
      [v5 adjustedContentInset];
      v9 = v8;

      v11 = _swiftEmptyArrayStorage[2];
      v10 = _swiftEmptyArrayStorage[3];
      if (v11 >= v10 >> 1)
      {
        sub_100144108((v10 > 1), v11 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v11 + 1;
      *&_swiftEmptyArrayStorage[v11 + 4] = v7 + v9;
    }

    goto LABEL_12;
  }

  __break(1u);
}

uint64_t sub_1004D4734()
{

  sub_10001F63C(*(v0 + 24), *(v0 + 32));

  return swift_deallocClassInstance();
}

void sub_1004D4798()
{
  sub_1004D45A0();
  v2 = *(v0 + 24);
  if (v2)
  {
    v3 = v1;
    v4 = *(v0 + 32);

    v2(v5, v3);

    sub_10001F63C(v2, v4);
  }
}

double sub_1004D480C@<D0>(uint64_t a1@<X0>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v21 = a3;
  v8 = type metadata accessor for ItemLayoutContext();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v11 = v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for SeparatorSupplementaryView(0);
  if (static UICollectionReusableView.matchesItemElementKind(_:)())
  {

    v12 = static UICollectionReusableView.defaultReuseIdentifier.getter();
    v20[1] = v13;
    v20[2] = v12;
    v14 = swift_allocObject();
    v20[0] = a4;
    v15 = v14;
    swift_weakInit();
    (*(v9 + 16))(v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v21, v8);
    v16 = (*(v9 + 80) + 24) & ~*(v9 + 80);
    v21 = a1;
    v17 = (v10 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
    v18 = swift_allocObject();
    *(v18 + 16) = v15;
    (*(v9 + 32))(v18 + v16, v11, v8);
    *(v18 + v17) = v20[0];
    *(a5 + 24) = sub_10002849C(&qword_1009751D0, qword_1007B7350);
    *(a5 + 32) = sub_10011A820();
    sub_1000056E0(a5);

    ReusableSupplementaryRegistration.init(elementKind:reuseIdentifier:configurationHandler:)();
  }

  else
  {
    *(a5 + 32) = 0;
    result = 0.0;
    *a5 = 0u;
    *(a5 + 16) = 0u;
  }

  return result;
}

void *sub_1004D4A48(uint64_t a1, uint64_t a2)
{
  v2 = sub_1001190B0(a1, a2);
  sub_100394594(v2, v3);
  return _swiftEmptyArrayStorage;
}

uint64_t sub_1004D4AB8(uint64_t a1, uint64_t *a2, void *a3, uint64_t *a4)
{
  if (qword_10096E6B8 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for StaticDimension();
  v8 = sub_1000056A8(v7, qword_1009D2448);
  *a2 = v7;
  *a3 = &protocol witness table for StaticDimension;
  v9 = sub_1000056E0(a4);
  v10 = *(*(v7 - 8) + 16);

  return v10(v9, v8, v7);
}

char *sub_1004D4BB8(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR____TtC8AppStore33ScreenshotShelfCollectionViewCell_itemLayoutContext;
  v10 = type metadata accessor for ItemLayoutContext();
  (*(*(v10 - 8) + 56))(&v4[v9], 1, 1, v10);
  *&v4[OBJC_IVAR____TtC8AppStore33ScreenshotShelfCollectionViewCell_platform] = 0;
  v11 = OBJC_IVAR____TtC8AppStore33ScreenshotShelfCollectionViewCell_flowLayout;
  v12 = [objc_allocWithZone(type metadata accessor for NestedHorizontalShelfCollectionViewFlowLayout()) init];
  *&v4[v11] = v12;
  *&v4[OBJC_IVAR____TtC8AppStore33ScreenshotShelfCollectionViewCell_screenshotFetcher] = 0;
  *&v4[OBJC_IVAR____TtC8AppStore33ScreenshotShelfCollectionViewCell_pageTraits] = 0;
  *&v4[OBJC_IVAR____TtC8AppStore33ScreenshotShelfCollectionViewCell_topAccessoryView] = 0;
  *&v4[OBJC_IVAR____TtC8AppStore33ScreenshotShelfCollectionViewCell_bottomAccessoryView] = 0;
  *&v4[OBJC_IVAR____TtC8AppStore33ScreenshotShelfCollectionViewCell_artwork] = _swiftEmptyArrayStorage;
  *&v4[OBJC_IVAR____TtC8AppStore33ScreenshotShelfCollectionViewCell_sizedArtwork] = _swiftEmptyArrayStorage;
  v13 = &v4[OBJC_IVAR____TtC8AppStore33ScreenshotShelfCollectionViewCell_didSelectHandler];
  *v13 = 0;
  *(v13 + 1) = 0;
  v14 = [objc_allocWithZone(UICollectionView) initWithFrame:v12 collectionViewLayout:{0.0, 0.0, 0.0, 0.0}];
  *&v4[OBJC_IVAR____TtC8AppStore33ScreenshotShelfCollectionViewCell_collectionView] = v14;
  v29.receiver = v4;
  v29.super_class = type metadata accessor for ScreenshotShelfCollectionViewCell(0);
  v15 = objc_msgSendSuper2(&v29, "initWithFrame:", a1, a2, a3, a4);
  v16 = [v15 contentView];
  [v16 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];

  v17 = OBJC_IVAR____TtC8AppStore33ScreenshotShelfCollectionViewCell_collectionView;
  [*&v15[OBJC_IVAR____TtC8AppStore33ScreenshotShelfCollectionViewCell_collectionView] setDecelerationRate:UIScrollViewDecelerationRateFast];
  v18 = *&v15[v17];
  v19 = objc_opt_self();
  v20 = v18;
  v21 = [v19 clearColor];
  [v20 setBackgroundColor:v21];

  [*&v15[v17] setAllowsSelection:1];
  [*&v15[v17] setAlwaysBounceHorizontal:1];
  [*&v15[v17] setShowsHorizontalScrollIndicator:0];
  [*&v15[v17] setDataSource:v15];
  v22 = *&v15[v17];
  [v22 setDelegate:v15];

  v23 = *&v15[v17];
  type metadata accessor for ScreenshotCollectionViewCell(0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v25 = v23;
  static UICollectionReusableView.defaultReuseIdentifier.getter();
  v26 = String._bridgeToObjectiveC()();

  [v25 registerClass:ObjCClassFromMetadata forCellWithReuseIdentifier:v26];

  v27 = [v15 contentView];
  [v27 addSubview:*&v15[v17]];

  return v15;
}

id sub_1004D4F68()
{
  v1 = v0;
  v2 = type metadata accessor for FloatingPointRoundingRule();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v49 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ScreenshotShelfCollectionViewCell(0);
  v64.receiver = v0;
  v64.super_class = v6;
  objc_msgSendSuper2(&v64, "layoutSubviews");
  v7 = [v0 contentView];
  sub_100005744(0, &qword_100972EB0, UIView_ptr);
  LayoutMarginsAware<>.layoutFrame.getter();
  v60 = v9;
  v61 = v8;
  v58 = v11;
  v59 = v10;

  v63 = OBJC_IVAR____TtC8AppStore33ScreenshotShelfCollectionViewCell_bottomAccessoryView;
  v12 = *&v1[OBJC_IVAR____TtC8AppStore33ScreenshotShelfCollectionViewCell_bottomAccessoryView];
  v13 = 0.0;
  v14 = 0.0;
  v15 = 0.0;
  v16 = 0.0;
  if (v12)
  {
    v17 = v12;
    [v17 frame];
    v14 = v18;
    v15 = v19;
    if (qword_10096E620 != -1)
    {
      swift_once();
    }

    sub_10002A400(qword_1009D2120, qword_1009D2138);
    j___s5JetUI10DimensionsV19defaultRoundingRules013FloatingPointeF0OvgZ();
    AnyDimension.value(in:rounded:)();
    v16 = v20;

    (*(v3 + 8))(v5, v2);
  }

  v21 = OBJC_IVAR____TtC8AppStore33ScreenshotShelfCollectionViewCell_topAccessoryView;
  v22 = *&v1[OBJC_IVAR____TtC8AppStore33ScreenshotShelfCollectionViewCell_topAccessoryView];
  v23 = 0.0;
  v24 = 0.0;
  if (v22)
  {
    v25 = v22;
    [v25 frame];
    v13 = v26;
    v23 = v27;
    if (qword_10096E618 != -1)
    {
      swift_once();
    }

    sub_10002A400(qword_100988AB0, qword_100988AC8);
    j___s5JetUI10DimensionsV19defaultRoundingRules013FloatingPointeF0OvgZ();
    AnyDimension.value(in:rounded:)();
    v24 = v28;

    (*(v3 + 8))(v5, v2);
  }

  if (qword_10096E608 != -1)
  {
    swift_once();
  }

  v57 = v13;
  v62 = v14;
  sub_10002A400(qword_100988A60, qword_100988A78);
  j___s5JetUI10DimensionsV19defaultRoundingRules013FloatingPointeF0OvgZ();
  AnyDimension.value(in:rounded:)();
  v30 = v29;
  v31 = *(v3 + 8);
  v31(v5, v2);
  if (qword_10096E610 != -1)
  {
    swift_once();
  }

  sub_10002A400(qword_100988A88, qword_100988AA0);
  j___s5JetUI10DimensionsV19defaultRoundingRules013FloatingPointeF0OvgZ();
  AnyDimension.value(in:rounded:)();
  v33 = v32;
  v31(v5, v2);
  v55 = v15;
  v56 = v16;
  v54 = v15 + v16 + v23 + v24 + v30 + v33;
  v34 = v61;
  v65.origin.x = v61;
  v49 = v24;
  v35 = v23;
  v52 = v23;
  v37 = v59;
  v36 = v60;
  v65.origin.y = v60;
  v65.size.width = v59;
  v38 = v58;
  v65.size.height = v58;
  MinX = CGRectGetMinX(v65);
  v51 = MinX;
  v66.origin.x = v34;
  v66.origin.y = v36;
  v66.size.width = v37;
  v66.size.height = v38;
  v40 = v30 + CGRectGetMinY(v66);
  v53 = v40;
  v67.origin.x = v34;
  v67.origin.y = v36;
  v67.size.width = v37;
  v67.size.height = v38;
  v50 = CGRectGetMinX(v67);
  v68.origin.x = MinX;
  v68.origin.y = v40;
  v41 = v57;
  v68.size.width = v57;
  v68.size.height = v35;
  v42 = v49 + CGRectGetMaxY(v68);
  v69.origin.x = v34;
  v69.origin.y = v36;
  v69.size.width = v37;
  v69.size.height = v38;
  Width = CGRectGetWidth(v69);
  v70.origin.x = v34;
  v70.origin.y = v36;
  v70.size.width = v37;
  v70.size.height = v38;
  v44 = CGRectGetHeight(v70) - v54;
  v71.origin.x = v34;
  v71.origin.y = v36;
  v71.size.width = v37;
  v71.size.height = v38;
  v45 = CGRectGetMinX(v71);
  v46 = v50;
  v72.origin.x = v50;
  v72.origin.y = v42;
  v72.size.width = Width;
  v72.size.height = v44;
  v47 = v56 + CGRectGetMaxY(v72);
  [*&v1[v21] setFrame:{v51, v53, v41, v52}];
  [*&v1[OBJC_IVAR____TtC8AppStore33ScreenshotShelfCollectionViewCell_collectionView] setFrame:{v46, v42, Width, v44}];
  return [*&v1[v63] setFrame:{v45, v47, v62, v55}];
}

double sub_1004D5538()
{
  v10.receiver = v0;
  v10.super_class = type metadata accessor for ScreenshotShelfCollectionViewCell(0);
  objc_msgSendSuper2(&v10, "prepareForReuse");
  v1 = OBJC_IVAR____TtC8AppStore33ScreenshotShelfCollectionViewCell_topAccessoryView;
  v2 = *&v0[OBJC_IVAR____TtC8AppStore33ScreenshotShelfCollectionViewCell_topAccessoryView];
  if (v2)
  {
    [v2 removeFromSuperview];
    v3 = *&v0[v1];
  }

  else
  {
    v3 = 0;
  }

  *&v0[v1] = 0;

  [v0 setNeedsLayout];
  v4 = OBJC_IVAR____TtC8AppStore33ScreenshotShelfCollectionViewCell_bottomAccessoryView;
  v5 = *&v0[OBJC_IVAR____TtC8AppStore33ScreenshotShelfCollectionViewCell_bottomAccessoryView];
  if (v5)
  {
    [v5 removeFromSuperview];
    v6 = *&v0[v4];
  }

  else
  {
    v6 = 0;
  }

  *&v0[v4] = 0;

  [v0 setNeedsLayout];
  v7 = OBJC_IVAR____TtC8AppStore33ScreenshotShelfCollectionViewCell_screenshotFetcher;
  *&v0[OBJC_IVAR____TtC8AppStore33ScreenshotShelfCollectionViewCell_screenshotFetcher] = 0;

  v9 = *&v0[v7];
  if (v9)
  {
    *(v9 + 32) = &off_1008C5DD8;
    swift_unknownObjectWeakAssign();
  }

  return result;
}

BOOL sub_1004D5674()
{
  if (!*(v0 + OBJC_IVAR____TtC8AppStore33ScreenshotShelfCollectionViewCell_platform))
  {
    return 0;
  }

  v1 = MediaPlatform.isPhonePlatform.getter();

  if ((v1 & 1) == 0)
  {
    return 0;
  }

  v2 = *(v0 + OBJC_IVAR____TtC8AppStore33ScreenshotShelfCollectionViewCell_artwork);
  if (v2 >> 62)
  {
LABEL_19:
    v3 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = 0;
  do
  {
    v5 = v3 != v4;
    if (v3 == v4)
    {
      break;
    }

    if ((v2 & 0xC000000000000001) != 0)
    {
      specialized _ArrayBuffer._getElementSlowPath(_:)();
      if (__OFADD__(v4, 1))
      {
LABEL_14:
        __break(1u);
        return 0;
      }
    }

    else
    {
      if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_19;
      }

      if (__OFADD__(v4, 1))
      {
        goto LABEL_14;
      }
    }

    v6 = dispatch thunk of Artwork.isPortrait.getter();

    ++v4;
  }

  while ((v6 & 1) == 0);

  return v5;
}

uint64_t sub_1004D57C0(void *a1)
{
  v2 = v1;
  type metadata accessor for ScreenshotCollectionViewCell(0);
  static UICollectionReusableView.defaultReuseIdentifier.getter();
  v4 = String._bridgeToObjectiveC()();

  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  v6 = [a1 dequeueReusableCellWithReuseIdentifier:v4 forIndexPath:isa];

  v7 = swift_dynamicCastClassUnconditional();
  *(*(v7 + OBJC_IVAR____TtC8AppStore28ScreenshotCollectionViewCell_borderedScreenshotView) + OBJC_IVAR____TtC8AppStore22BorderedScreenshotView_platform) = *(v2 + OBJC_IVAR____TtC8AppStore33ScreenshotShelfCollectionViewCell_platform);
  swift_retain_n();

  sub_100617504(v8);

  return v7;
}

void sub_1004D5D54(void *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC8AppStore33ScreenshotShelfCollectionViewCell_didSelectHandler);
  if (v3)
  {
    v4 = *(v1 + OBJC_IVAR____TtC8AppStore33ScreenshotShelfCollectionViewCell_didSelectHandler + 8);

    v5 = IndexPath.item.getter();
    v6 = *(v1 + OBJC_IVAR____TtC8AppStore33ScreenshotShelfCollectionViewCell_artwork);
    if ((v6 & 0xC000000000000001) == 0)
    {
      if ((v5 & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else if (v5 < *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v7 = *(v6 + 8 * v5 + 32);

LABEL_6:
        v8 = IndexPath.item.getter();
        v3(v7, v8);
        sub_10011B8E8(v3, v4);

        goto LABEL_7;
      }

      __break(1u);
      return;
    }

    v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();

    goto LABEL_6;
  }

LABEL_7:
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  [a1 deselectItemAtIndexPath:isa animated:1];
}

id sub_1004D6068()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ScreenshotShelfCollectionViewCell(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for ScreenshotShelfCollectionViewCell(uint64_t a1)
{
  result = qword_100988B08;
  if (!qword_100988B08)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1004D61E4(uint64_t a1)
{
  sub_100027FAC(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

double sub_1004D62C0(unint64_t a1, uint64_t a2, void *a3, double a4, double a5, double a6)
{
  v95 = a6;
  v97 = a3;
  v96 = a2;
  v90 = type metadata accessor for FloatingPointRoundingRule();
  v9 = *(v90 - 8);
  __chkstk_darwin(v90);
  v11 = &v85 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  ObjectType = type metadata accessor for AppPlatform();
  v93 = *(ObjectType - 8);
  __chkstk_darwin(ObjectType);
  v13 = &v85 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = type metadata accessor for AspectRatio();
  v91 = *(v98 - 8);
  __chkstk_darwin(v98);
  v15 = &v85 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v85 - v17;
  __chkstk_darwin(v19);
  v21 = &v85 - v20;
  __chkstk_darwin(v22);
  v24 = &v85 - v23;
  v25 = type metadata accessor for ScreenshotDisplayConfiguration(0);
  __chkstk_darwin(v25 - 8);
  v92 = &v85 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = a1 >> 62;
  v89 = v9;
  v88 = v11;
  v28 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
LABEL_76:
    v101 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v101 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v29 = 0;
  v100 = a1;
  v99 = a1 & 0xC000000000000001;
  do
  {
    a1 = v29;
    if (v101 == v29)
    {
      break;
    }

    if (v99)
    {
      specialized _ArrayBuffer._getElementSlowPath(_:)();
      if (__OFADD__(a1, 1))
      {
LABEL_12:
        __break(1u);
        break;
      }
    }

    else
    {
      if (v29 >= *(v28 + 16))
      {
        __break(1u);
        goto LABEL_76;
      }

      if (__OFADD__(a1, 1))
      {
        goto LABEL_12;
      }
    }

    v30 = dispatch thunk of Artwork.isPortrait.getter();

    v29 = a1 + 1;
  }

  while ((v30 & 1) == 0);
  type metadata accessor for Screenshots();
  sub_10061B788(v96, v92);
  if (v27)
  {
    v31 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v31 = *(v28 + 16);
  }

  v87 = a5;
  v86 = a4;
  if (v31 < 1)
  {
    MediaPlatform.appPlatform.getter();
    v45 = v93;
    v46 = ObjectType;
    v47 = (*(v93 + 88))(v13, ObjectType);
    v27 = v15;
    a1 = v18;
    v33 = v91;
    if (v47 != enum case for AppPlatform.phone(_:) && v47 != enum case for AppPlatform.pad(_:) && v47 != enum case for AppPlatform.messages(_:))
    {
      if (v47 == enum case for AppPlatform.watch(_:))
      {
        if (qword_10096EB48 == -1)
        {
LABEL_46:
          v49 = v98;
          v50 = sub_1000056A8(v98, qword_1009D2FD0);
          (*(v33 + 16))(a1, v50, v49);
          goto LABEL_38;
        }

LABEL_78:
        swift_once();
        goto LABEL_46;
      }

      if (v47 != enum case for AppPlatform.tv(_:) && v47 != enum case for AppPlatform.mac(_:))
      {
        AspectRatio.init(_:_:)();
        (*(v45 + 8))(v13, v46);
LABEL_38:
        v48 = v97;
        if (MediaPlatform.isPhonePlatform.getter() & 1) != 0 && (AspectRatio.isPortrait.getter())
        {
          if (AspectRatio.isPortrait.getter())
          {
            (*(v33 + 16))(v27, a1, v98);
          }

          else
          {
            AspectRatio.inverted.getter();
          }
        }

        else
        {
          (*(v33 + 16))(v27, a1, v98);
          AspectRatio.isPortrait.getter();
        }

        swift_getObjectType();
        v51 = [v48 traitCollection];
        UITraitCollection.isRegularPad.getter();

        [v48 pageMarginInsets];
        [v48 pageMarginInsets];
        PageTraitEnvironment.pageColumnMargin.getter();
        v52 = [v48 traitCollection];
        UITraitCollection.isRegularPad.getter();

        AspectRatio.height(fromWidth:)();
        AspectRatio.height(fromWidth:)();
        v36 = v53;
        v54 = *(v33 + 8);
        v55 = v98;
        v54(v27, v98);
        v54(a1, v55);
        goto LABEL_49;
      }
    }

    AspectRatio.init(_:_:)();
    goto LABEL_38;
  }

  v32 = v91;
  v33 = v101;
  if (!v101)
  {
    v36 = 0.0;
    goto LABEL_49;
  }

  if (v101 < 1)
  {
    __break(1u);
    goto LABEL_78;
  }

  ObjectType = swift_getObjectType();
  v34 = 0;
  v93 = v32 + 16;
  v35 = (v32 + 8);
  v36 = 0.0;
  do
  {
    if (v99)
    {
      specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
    }

    v42 = v97;
    v43 = MediaPlatform.isPhonePlatform.getter();
    Artwork.size.getter();
    AspectRatio.init(_:_:)();
    if (v33 == a1 || (v43 & 1) == 0)
    {
      (*v93)(v21, v24, v98);
      AspectRatio.isPortrait.getter();
    }

    else if (AspectRatio.isPortrait.getter())
    {
      (*v93)(v21, v24, v98);
    }

    else
    {
      AspectRatio.inverted.getter();
    }

    v44 = [v42 traitCollection];
    UITraitCollection.isRegularPad.getter();

    [v42 pageMarginInsets];
    [v42 pageMarginInsets];
    PageTraitEnvironment.pageColumnMargin.getter();
    ++v34;
    v37 = [v42 traitCollection];
    UITraitCollection.isRegularPad.getter();

    AspectRatio.height(fromWidth:)();
    AspectRatio.height(fromWidth:)();
    v39 = v38;

    v40 = *v35;
    v41 = v98;
    (*v35)(v21, v98);
    v40(v24, v41);
    if (v39 > v36)
    {
      v36 = v39;
    }

    v33 = v101;
  }

  while (v101 != v34);
LABEL_49:
  sub_10002849C(&unk_1009856C0, qword_1007C9C90);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1007B10D0;
  *(inited + 32) = v36;
  v102 = inited;
  v57 = v86;
  v58 = v90;
  v59 = v89;
  v60 = v88;
  v61 = v87;
  if (v86 >= COERCE_DOUBLE(1))
  {
    v62 = swift_initStackObject();
    *(v62 + 16) = xmmword_1007B1890;
    *(v62 + 32) = v57;
    if (qword_10096E618 != -1)
    {
      swift_once();
    }

    sub_10002A400(qword_100988AB0, qword_100988AC8);
    j___s5JetUI10DimensionsV19defaultRoundingRules013FloatingPointeF0OvgZ();
    AnyDimension.value(in:rounded:)();
    v64 = v63;
    (*(v59 + 8))(v60, v58);
    *(v62 + 40) = v64;
    sub_100394464(v62);
  }

  if (v61 >= COERCE_DOUBLE(1))
  {
    v65 = swift_initStackObject();
    *(v65 + 16) = xmmword_1007B1890;
    *(v65 + 32) = v61;
    if (qword_10096E620 != -1)
    {
      swift_once();
    }

    sub_10002A400(qword_1009D2120, qword_1009D2138);
    j___s5JetUI10DimensionsV19defaultRoundingRules013FloatingPointeF0OvgZ();
    AnyDimension.value(in:rounded:)();
    v67 = v66;
    (*(v59 + 8))(v60, v58);
    *(v65 + 40) = v67;
    sub_100394464(v65);
  }

  v68 = swift_initStackObject();
  *(v68 + 16) = xmmword_1007B1890;
  if (qword_10096E608 != -1)
  {
    swift_once();
  }

  sub_10002A400(qword_100988A60, qword_100988A78);
  j___s5JetUI10DimensionsV19defaultRoundingRules013FloatingPointeF0OvgZ();
  v69 = v97;
  AnyDimension.value(in:rounded:)();
  v71 = v70;
  v72 = *(v59 + 8);
  v72(v60, v58);
  *(v68 + 32) = v71;
  if (qword_10096E610 != -1)
  {
    swift_once();
  }

  sub_10002A400(qword_100988A88, qword_100988AA0);
  j___s5JetUI10DimensionsV19defaultRoundingRules013FloatingPointeF0OvgZ();
  AnyDimension.value(in:rounded:)();
  v74 = v73;
  v72(v60, v58);
  *(v68 + 40) = v74;
  sub_100394464(v68);
  [v69 pageMarginInsets];
  v76 = *(v102 + 16);
  if (v76)
  {
    if (v76 <= 3)
    {
      v77 = 0;
      v78 = 0.0;
LABEL_68:
      v81 = v76 - v77;
      v82 = (v102 + 8 * v77 + 32);
      do
      {
        v83 = *v82++;
        v75.n128_f64[0] = v83;
        v78 = v78 + v83;
        --v81;
      }

      while (v81);
      goto LABEL_70;
    }

    v77 = v76 & 0x7FFFFFFFFFFFFFFCLL;
    v79 = (v102 + 48);
    v78 = 0.0;
    v80 = v76 & 0x7FFFFFFFFFFFFFFCLL;
    do
    {
      v75 = *(v79 - 2);
      v75.n128_f64[0] = v78 + v75.n128_f64[0] + *(v79 - 1) + *v79;
      v78 = v75.n128_f64[0] + v79[1];
      v79 += 4;
      v80 -= 4;
    }

    while (v80);
    if (v76 != v77)
    {
      goto LABEL_68;
    }
  }

LABEL_70:
  sub_1001BABC8(v92, v75);

  return v95;
}

void sub_1004D7174(uint64_t a1)
{
  v2 = v1;
  sub_10002C0AC(a1, v27);
  sub_10002849C(&unk_1009793D0, qword_1007B4FF0);
  type metadata accessor for Screenshots();
  if (swift_dynamicCast())
  {
    v3 = OBJC_IVAR____TtC8AppStore33ScreenshotShelfCollectionViewCell_screenshotFetcher;
    if (!*&v1[OBJC_IVAR____TtC8AppStore33ScreenshotShelfCollectionViewCell_screenshotFetcher])
    {
      type metadata accessor for ScreenshotFetcher();
      v4 = swift_allocObject();
      *(v4 + 16) = sub_100397BF0(_swiftEmptyArrayStorage);
      *(v4 + 32) = 0;
      swift_unknownObjectWeakInit();
      *(v4 + 32) = &off_1008C5DD8;
      swift_unknownObjectWeakAssign();
      *&v2[v3] = v4;

      v5 = *&v2[v3];
      if (v5)
      {
        *(v5 + 32) = &off_1008C5DD8;
        swift_unknownObjectWeakAssign();
      }

      v6 = Screenshots.artwork.getter();
      if (!*&v2[OBJC_IVAR____TtC8AppStore33ScreenshotShelfCollectionViewCell_platform] || (, v7 = MediaPlatform.isPhonePlatform.getter(), , (v7 & 1) == 0))
      {
LABEL_20:
        v11 = 0;
        goto LABEL_21;
      }

      v8 = v6 & 0xFFFFFFFFFFFFFF8;
      if (v6 >> 62)
      {
        goto LABEL_41;
      }

      for (i = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
      {
        v10 = 0;
        do
        {
          v11 = i != v10;
          if (i == v10)
          {
            break;
          }

          if ((v6 & 0xC000000000000001) != 0)
          {
            specialized _ArrayBuffer._getElementSlowPath(_:)();
            if (__OFADD__(v10, 1))
            {
              goto LABEL_19;
            }
          }

          else
          {
            if (v10 >= *(v8 + 16))
            {
              goto LABEL_40;
            }

            if (__OFADD__(v10, 1))
            {
LABEL_19:
              __break(1u);
              goto LABEL_20;
            }
          }

          v12 = dispatch thunk of Artwork.isPortrait.getter();

          ++v10;
        }

        while ((v12 & 1) == 0);
LABEL_21:

        v13 = [v2 traitCollection];
        UITraitCollection.isRegularPad.getter();

        if (!*&v2[v3])
        {
          break;
        }

        v14 = *&v2[OBJC_IVAR____TtC8AppStore33ScreenshotShelfCollectionViewCell_sizedArtwork];

        v16 = sub_100262514(v15, v11);
        v17 = v16;
        v26 = v14;
        v25 = *(v14 + 16);
        if (!v25)
        {
LABEL_35:

          return;
        }

        v18 = 0;
        v8 = v16 & 0xFFFFFFFFFFFFFF8;
        v19 = (v26 + 48);
        v23 = v16 & 0xC000000000000001;
        v24 = v16 >> 62;
        while (v18 < *(v26 + 16))
        {
          v3 = *(v19 - 2);
          v20 = *(v19 - 1);
          v21 = *v19;
          if (v24)
          {
            if (v18 == _CocoaArrayWrapper.endIndex.getter())
            {
              goto LABEL_35;
            }
          }

          else if (v18 == *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_35;
          }

          if (v23)
          {

            specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v18 >= *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_39;
            }
          }

          v2 = v18 + 1;
          v28 = 0;
          memset(v27, 0, sizeof(v27));
          v22 = swift_allocObject();
          swift_weakInit();
          v6 = swift_allocObject();
          *(v6 + 16) = v11;
          *(v6 + 24) = v22;
          *(v6 + 32) = v3;
          *(v6 + 40) = v20;
          *(v6 + 48) = v21;
          *(v6 + 56) = v18;

          ArtworkLoader.fetchArtwork(using:closestMatch:handlerKey:completionHandler:)();

          sub_10002B894(v27, &qword_10096FB90, &qword_1007B2A50);

          v19 += 3;
          v18 = v2;
          if (v25 == v2)
          {
            goto LABEL_35;
          }
        }

        __break(1u);
LABEL_39:
        __break(1u);
LABEL_40:
        __break(1u);
LABEL_41:
        ;
      }
    }
  }
}

void sub_1004D75B0(objc_class *a1, uint64_t a2)
{
  v5 = type metadata accessor for IndexPath();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v2 + OBJC_IVAR____TtC8AppStore33ScreenshotShelfCollectionViewCell_collectionView);
  sub_10002849C(&qword_100980550, &qword_1007B1290);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1007B1890;
  *(v10 + 32) = 0;
  *(v10 + 40) = a2;
  IndexPath.init(arrayLiteral:)();
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  (*(v6 + 8))(v8, v5);
  v12 = [v9 cellForItemAtIndexPath:isa];

  if (v12)
  {
    type metadata accessor for ScreenshotCollectionViewCell(0);
    v13 = swift_dynamicCastClass();
    if (v13)
    {
      v14 = *(*(v13 + OBJC_IVAR____TtC8AppStore28ScreenshotCollectionViewCell_borderedScreenshotView) + OBJC_IVAR____TtC8AppStore22BorderedScreenshotView_artworkView);
      v15 = ArtworkView.image.getter();
      v17 = v15;
      if (v15)
      {
      }

      v19.is_nil = v17 == 0;
      v19.value.super.isa = a1;
      ArtworkView.setImage(image:animated:)(v19, v16);
    }

    else
    {
      v14 = v12;
    }
  }
}

void sub_1004D7768()
{
  v1 = OBJC_IVAR____TtC8AppStore33ScreenshotShelfCollectionViewCell_itemLayoutContext;
  v2 = type metadata accessor for ItemLayoutContext();
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  *(v0 + OBJC_IVAR____TtC8AppStore33ScreenshotShelfCollectionViewCell_platform) = 0;
  v3 = OBJC_IVAR____TtC8AppStore33ScreenshotShelfCollectionViewCell_flowLayout;
  *(v0 + v3) = [objc_allocWithZone(type metadata accessor for NestedHorizontalShelfCollectionViewFlowLayout()) init];
  *(v0 + OBJC_IVAR____TtC8AppStore33ScreenshotShelfCollectionViewCell_screenshotFetcher) = 0;
  *(v0 + OBJC_IVAR____TtC8AppStore33ScreenshotShelfCollectionViewCell_pageTraits) = 0;
  *(v0 + OBJC_IVAR____TtC8AppStore33ScreenshotShelfCollectionViewCell_topAccessoryView) = 0;
  *(v0 + OBJC_IVAR____TtC8AppStore33ScreenshotShelfCollectionViewCell_bottomAccessoryView) = 0;
  *(v0 + OBJC_IVAR____TtC8AppStore33ScreenshotShelfCollectionViewCell_artwork) = _swiftEmptyArrayStorage;
  *(v0 + OBJC_IVAR____TtC8AppStore33ScreenshotShelfCollectionViewCell_sizedArtwork) = _swiftEmptyArrayStorage;
  v4 = (v0 + OBJC_IVAR____TtC8AppStore33ScreenshotShelfCollectionViewCell_didSelectHandler);
  *v4 = 0;
  v4[1] = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_1004D78A0()
{
  v1 = OBJC_IVAR____TtC8AppStore33ScreenshotShelfCollectionViewCell_artwork;
  v2 = *(v0 + OBJC_IVAR____TtC8AppStore33ScreenshotShelfCollectionViewCell_artwork);
  if (v2 >> 62)
  {
    if (!_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_4;
    }
  }

  else if (!*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_4;
  }

  if (!*(v0 + OBJC_IVAR____TtC8AppStore33ScreenshotShelfCollectionViewCell_pageTraits))
  {
    return 0;
  }

LABEL_4:
  v3 = *(v0 + v1);
  if (!(v3 >> 62))
  {
    return *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return _CocoaArrayWrapper.endIndex.getter();
}

void sub_1004D7948(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for AspectRatio();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v29 - v9;
  v11 = type metadata accessor for ScreenshotDisplayConfiguration(0);
  __chkstk_darwin(v11 - 8);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!*(v2 + OBJC_IVAR____TtC8AppStore33ScreenshotShelfCollectionViewCell_platform))
  {
    return;
  }

  [a1 frame];
  if (v15 <= 0.0 || v14 <= 0.0)
  {

    return;
  }

  type metadata accessor for Screenshots();

  sub_10061B788(v16, v13);

  v17 = IndexPath.item.getter();
  v18 = *(v2 + OBJC_IVAR____TtC8AppStore33ScreenshotShelfCollectionViewCell_artwork);
  v30 = v5;
  if ((v18 & 0xC000000000000001) == 0)
  {
    if ((v17 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v17 < *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {

      goto LABEL_8;
    }

    __break(1u);
    goto LABEL_21;
  }

  specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_8:
  Artwork.size.getter();
  AspectRatio.init(_:_:)();

  v19 = sub_1004D5674();
  v20 = OBJC_IVAR____TtC8AppStore33ScreenshotShelfCollectionViewCell_pageTraits;
  v21 = *(v2 + OBJC_IVAR____TtC8AppStore33ScreenshotShelfCollectionViewCell_pageTraits);
  if (!v21)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v22 = v19;
  swift_unknownObjectRetain();

  v23 = *(v2 + v20);
  if (!v23)
  {
LABEL_22:
    __break(1u);
    return;
  }

  [v23 pageContainerSize];
  v24 = v30;
  if (v22)
  {
    if (AspectRatio.isPortrait.getter())
    {
      (*(v24 + 16))(v7, v10, v4);
    }

    else
    {
      AspectRatio.inverted.getter();
    }
  }

  else
  {
    (*(v30 + 16))(v7, v10, v4);
    AspectRatio.isPortrait.getter();
  }

  swift_getObjectType();
  v25 = [v21 traitCollection];
  UITraitCollection.isRegularPad.getter();

  [v21 pageMarginInsets];
  [v21 pageMarginInsets];
  PageTraitEnvironment.pageColumnMargin.getter();
  v26 = [v21 traitCollection];
  UITraitCollection.isRegularPad.getter();

  AspectRatio.height(fromWidth:)();
  AspectRatio.height(fromWidth:)();

  swift_unknownObjectRelease();
  v27 = *(v30 + 8);
  v27(v7, v4);
  v28.n128_f64[0] = v27(v10, v4);
  sub_1001BABC8(v13, v28);
}

void sub_1004D7DE4(uint64_t a1)
{
  v2 = v1;
  type metadata accessor for ScreenshotCollectionViewCell(0);
  v3 = swift_dynamicCastClassUnconditional();
  v4 = IndexPath.item.getter();
  v5 = *(v1 + OBJC_IVAR____TtC8AppStore33ScreenshotShelfCollectionViewCell_artwork);
  if ((v5 & 0xC000000000000001) != 0)
  {

    v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();

    goto LABEL_5;
  }

  if ((v4 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_19;
  }

  if (v4 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_19:
    __break(1u);
    return;
  }

  v6 = *(v5 + 8 * v4 + 32);

LABEL_5:
  v7 = OBJC_IVAR____TtC8AppStore28ScreenshotCollectionViewCell_borderedScreenshotView;
  *(*(v3 + OBJC_IVAR____TtC8AppStore28ScreenshotCollectionViewCell_borderedScreenshotView) + OBJC_IVAR____TtC8AppStore22BorderedScreenshotView_platform) = *(v2 + OBJC_IVAR____TtC8AppStore33ScreenshotShelfCollectionViewCell_platform);
  swift_retain_n();

  sub_100617504(v8);

  v9 = *(v2 + OBJC_IVAR____TtC8AppStore33ScreenshotShelfCollectionViewCell_screenshotFetcher);
  if (v9)
  {
    swift_beginAccess();
    v10 = *(v9 + 16);

    v11 = sub_10057A264(v6, v10);

    if (v11)
    {
      v12 = *(*(v3 + v7) + OBJC_IVAR____TtC8AppStore22BorderedScreenshotView_artworkView);
      v13 = v11;
      v14 = v12;
      v15 = ArtworkView.image.getter();

      if (v15 && (sub_100005744(0, &qword_1009744B0, UIImage_ptr), v16 = v13, v17 = static NSObject.== infix(_:_:)(), v16, v15, (v17 & 1) != 0))
      {
      }

      else
      {
        v18 = *(*(v3 + v7) + OBJC_IVAR____TtC8AppStore22BorderedScreenshotView_artworkView);
        v19 = ArtworkView.image.getter();
        v21 = v19;
        if (v19)
        {
        }

        v23.is_nil = v21 == 0;
        v23.value.super.isa = v11;
        ArtworkView.setImage(image:animated:)(v23, v20);
      }
    }
  }
}

void sub_1004D8058(void *a1, SEL *a2)
{
  objc_opt_self();
  v5 = swift_dynamicCastObjCClass();
  if (v5)
  {
    v6 = v5;
    if (*(v2 + OBJC_IVAR____TtC8AppStore33ScreenshotShelfCollectionViewCell_pageTraits))
    {
      swift_getObjectType();
      v7 = a1;
      swift_unknownObjectRetain();
      PageTraitEnvironment.pageColumnMargin.getter();
      v9 = v8;
      swift_unknownObjectRelease();
    }

    else
    {
      v10 = a1;
      v9 = 8.0;
    }

    [v6 *a2];
  }

  if (*(v2 + OBJC_IVAR____TtC8AppStore33ScreenshotShelfCollectionViewCell_pageTraits))
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    PageTraitEnvironment.pageColumnMargin.getter();
    swift_unknownObjectRelease();
  }
}

unint64_t sub_1004D8170()
{
  result = qword_100988B18;
  if (!qword_100988B18)
  {
    type metadata accessor for BlankAction();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100988B18);
  }

  return result;
}

uint64_t sub_1004D81C8()
{
  v0 = type metadata accessor for ActionOutcome();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10002849C(&qword_1009764A0, &unk_1007B6230);
  (*(v1 + 104))(v3, enum case for ActionOutcome.performed(_:), v0);
  return Promise.__allocating_init(value:)();
}

void sub_1004D861C()
{
  v1 = [*&v0[OBJC_IVAR____TtC8AppStore28CarouselItemModuleHeaderView_titleLabel] font];
  if (v1)
  {
    v2 = v1;
    [v1 descender];

    if (qword_10096E638 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for SpacerDimension();
    sub_1000056A8(v3, qword_100988B78);
    v4 = [v0 traitCollection];
    type metadata accessor for TraitEnvironmentPlaceholder();
    sub_10002849C(&qword_100973210, qword_1007B0BB0);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_1007B0B70;
    *(v5 + 32) = v4;
    v6 = v4;
    v7 = TraitEnvironmentPlaceholder.__allocating_init(_:)();
    sub_10021CA28(v8);
    dispatch thunk of AnyDimension.rawValue(in:)();
  }

  else
  {
    __break(1u);
  }
}

id sub_1004D877C(uint64_t a1, uint64_t a2, NSString a3, uint64_t a4, NSString a5)
{
  v9 = type metadata accessor for HeroCarouselItemOverlay.DisplayOptions();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 16))(v13, a1, v9, v11);
  v14 = OBJC_IVAR____TtC8AppStore28CarouselItemModuleHeaderView_displayOptions;
  swift_beginAccess();
  (*(v10 + 24))(&v5[v14], v13, v9);
  swift_endAccess();
  sub_1004D8FC8(v15);
  (*(v10 + 8))(v13, v9);
  v16 = *&v5[OBJC_IVAR____TtC8AppStore28CarouselItemModuleHeaderView_badgeLabel];
  if (a3)
  {
    a3 = String._bridgeToObjectiveC()();
  }

  [v16 setText:a3];

  v17 = *&v5[OBJC_IVAR____TtC8AppStore28CarouselItemModuleHeaderView_titleLabel];
  if (a5)
  {
    a5 = String._bridgeToObjectiveC()();
  }

  [v17 setText:a5];

  return [v5 setNeedsLayout];
}

uint64_t sub_1004D8978(__n128 a1, uint64_t a2, uint64_t *a3)
{
  v4 = type metadata accessor for SpacerDimension();
  sub_100005644(v4, a3);
  sub_1000056A8(v4, a3);
  return SpacerDimension.init(constant:)();
}

char *sub_1004D89D0(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v10 = sub_10002849C(&qword_100972ED0, &unk_1007B17B0);
  __chkstk_darwin(v10 - 8);
  v12 = &v50 - v11;
  v13 = type metadata accessor for HeroCarouselItemOverlay.DisplayOptions.TextColorOverrides();
  __chkstk_darwin(v13 - 8);
  v14 = type metadata accessor for HeroCarouselItemOverlay.DisplayOptions.Placement();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v50 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for HeroCarouselItemOverlay.DisplayOptions.TextAlignment();
  v19 = __chkstk_darwin(v18);
  (*(v21 + 104))(&v50 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0), enum case for HeroCarouselItemOverlay.DisplayOptions.TextAlignment.center(_:), v19);
  (*(v15 + 104))(v17, enum case for HeroCarouselItemOverlay.DisplayOptions.Placement.leading(_:), v14);
  HeroCarouselItemOverlay.DisplayOptions.TextColorOverrides.init()();
  HeroCarouselItemOverlay.DisplayOptions.init(textAlignment:horizontalPlacement:textColorOverrides:isOverDarkContent:)();
  v22 = OBJC_IVAR____TtC8AppStore28CarouselItemModuleHeaderView_badgeLabel;
  type metadata accessor for DynamicTypeLabel();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  *&v4[v22] = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v24 = OBJC_IVAR____TtC8AppStore28CarouselItemModuleHeaderView_titleLabel;
  *&v4[v24] = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v52.receiver = v4;
  v52.super_class = ObjectType;
  v25 = objc_msgSendSuper2(&v52, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v29 = v25;
  [v29 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  [v29 setOverrideUserInterfaceStyle:2];
  [v29 setMaximumContentSizeCategory:UIContentSizeCategoryAccessibilityMedium];
  v30 = [v29 layer];
  [v30 setAllowsGroupBlending:0];

  v31 = OBJC_IVAR____TtC8AppStore28CarouselItemModuleHeaderView_badgeLabel;
  v32 = qword_10096E3F0;
  v33 = *&v29[OBJC_IVAR____TtC8AppStore28CarouselItemModuleHeaderView_badgeLabel];
  if (v32 != -1)
  {
    swift_once();
  }

  v34 = type metadata accessor for FontUseCase();
  v35 = sub_1000056A8(v34, qword_1009D1B50);
  v36 = *(v34 - 8);
  v51 = *(v36 + 16);
  v51(v12, v35, v34);
  v50 = *(v36 + 56);
  v50(v12, 0, 1, v34);
  dispatch thunk of DynamicTypeLabel.fontUseCase.setter();

  [*&v29[v31] setNumberOfLines:1];
  v37 = *&v29[v31];
  v38 = objc_opt_self();
  v39 = v37;
  v40 = [v38 secondaryLabelColor];
  [v39 setTextColor:v40];

  v41 = [*&v29[v31] layer];
  [v41 setCompositingFilter:kCAFilterPlusL];

  v42 = OBJC_IVAR____TtC8AppStore28CarouselItemModuleHeaderView_titleLabel;
  v43 = qword_10096E3F8;
  v44 = *&v29[OBJC_IVAR____TtC8AppStore28CarouselItemModuleHeaderView_titleLabel];
  if (v43 != -1)
  {
    swift_once();
  }

  v45 = sub_1000056A8(v34, qword_1009D1B68);
  v51(v12, v45, v34);
  v50(v12, 0, 1, v34);
  dispatch thunk of DynamicTypeLabel.fontUseCase.setter();

  [*&v29[v42] setNumberOfLines:3];
  v46 = *&v29[v42];
  v47 = [v38 labelColor];
  [v46 setTextColor:v47];

  [v29 addSubview:*&v29[v31]];
  [v29 addSubview:*&v29[v42]];
  sub_1004D8FC8(v48);

  return v29;
}

id sub_1004D8FC8(__n128 a1)
{
  v2 = v1;
  v55 = type metadata accessor for HeroCarouselItemOverlay.DisplayOptions.Placement();
  v57 = *(v55 - 8);
  __chkstk_darwin(v55);
  v48 = &v40 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for HeroCarouselItemOverlay.DisplayOptions.TextColorOverrides();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v46 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v40 - v8;
  v10 = type metadata accessor for HeroCarouselItemOverlay.DisplayOptions();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v44 = &v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v50 = &v40 - v14;
  __chkstk_darwin(v15);
  v17 = &v40 - v16;
  v43 = *&v2[OBJC_IVAR____TtC8AppStore28CarouselItemModuleHeaderView_badgeLabel];
  v18 = OBJC_IVAR____TtC8AppStore28CarouselItemModuleHeaderView_displayOptions;
  swift_beginAccess();
  v19 = *(v11 + 16);
  v54 = v18;
  v51 = v11 + 16;
  v52 = v2;
  v45 = v19;
  v19(v17, &v2[v18], v10);
  HeroCarouselItemOverlay.DisplayOptions.textColorOverrides.getter();
  v56 = *(v11 + 8);
  v53 = v11 + 8;
  v56(v17, v10);
  v20 = HeroCarouselItemOverlay.DisplayOptions.TextColorOverrides.badgeColor.getter();
  v21 = *(v5 + 8);
  v49 = v4;
  v47 = v5 + 8;
  v42 = v21;
  v21(v9, v4);
  if (!v20)
  {
    v20 = [objc_opt_self() secondaryLabelColor];
  }

  v22 = v43;
  [v43 setTextColor:v20];

  v23 = v54;
  v24 = v52;
  v25 = v50;
  v26 = v45;
  v45(v50, &v52[v54], v10);
  v27 = v48;
  HeroCarouselItemOverlay.DisplayOptions.horizontalPlacement.getter();
  v56(v25, v10);
  v28 = [v24 traitCollection];
  v29 = HeroCarouselItemOverlay.DisplayOptions.Placement.textAlignment(with:)();

  v30 = *(v57 + 8);
  v57 += 8;
  v41 = v30;
  v30(v27, v55);
  [v22 setTextAlignment:v29];
  v31 = *&v24[OBJC_IVAR____TtC8AppStore28CarouselItemModuleHeaderView_titleLabel];
  v32 = v44;
  v26(v44, &v24[v23], v10);
  v33 = v46;
  HeroCarouselItemOverlay.DisplayOptions.textColorOverrides.getter();
  v56(v32, v10);
  v34 = HeroCarouselItemOverlay.DisplayOptions.TextColorOverrides.titleColor.getter();
  v42(v33, v49);
  if (!v34)
  {
    v34 = [objc_opt_self() labelColor];
  }

  [v31 setTextColor:v34];

  v35 = v52;
  v36 = v50;
  v26(v50, &v52[v54], v10);
  HeroCarouselItemOverlay.DisplayOptions.horizontalPlacement.getter();
  v56(v36, v10);
  v37 = [v35 traitCollection];
  v38 = HeroCarouselItemOverlay.DisplayOptions.Placement.textAlignment(with:)();

  v41(v27, v55);
  [v31 setTextAlignment:v38];
  return [v35 setNeedsLayout];
}

uint64_t sub_1004D9544@<X0>(uint64_t *a1@<X8>)
{
  v27 = a1;
  v2 = type metadata accessor for VerticalStack();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v24 - v7;
  v9 = type metadata accessor for DisjointStack();
  v10 = *(v9 - 8);
  v25 = v9;
  v26 = v10;
  __chkstk_darwin(v9);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(swift_allocObject() + 16) = v1;
  v13 = v1;
  DisjointStack.init(with:)();
  *(swift_allocObject() + 16) = v13;
  v14 = v13;
  VerticalStack.init(with:)();
  v15 = *&v14[OBJC_IVAR____TtC8AppStore28CarouselItemModuleHeaderView_badgeLabel];
  v16 = type metadata accessor for DynamicTypeLabel();
  v30 = v16;
  v31 = &protocol witness table for UILabel;
  v29[0] = v15;
  v17 = v15;
  VerticalStack.adding(_:with:)();
  v18 = *(v3 + 8);
  v18(v5, v2);
  sub_100007000(v29);
  v19 = *&v14[OBJC_IVAR____TtC8AppStore28CarouselItemModuleHeaderView_titleLabel];
  v28[3] = v16;
  v28[4] = &protocol witness table for UILabel;
  v28[0] = v19;
  v30 = v2;
  v31 = &protocol witness table for VerticalStack;
  sub_1000056E0(v29);
  v20 = v19;
  VerticalStack.adding(_:with:)();
  v18(v8, v2);
  sub_100007000(v28);
  v21 = v27;
  v22 = v25;
  v27[3] = v25;
  v21[4] = &protocol witness table for DisjointStack;
  sub_1000056E0(v21);
  DisjointStack.inserting(_:at:with:)();
  (*(v26 + 8))(v12, v22);
  return sub_100007000(v29);
}

uint64_t sub_1004D9958(uint64_t a1, uint64_t a2, __n128 a3)
{
  v27 = a2;
  v4 = type metadata accessor for HeroCarouselItemOverlay.DisplayOptions.Placement();
  v31 = *(v4 - 8);
  v32 = v4;
  __chkstk_darwin(v4);
  v29 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for HeroCarouselItemOverlay.DisplayOptions();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DisjointStack.EdgePosition();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = (&v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = type metadata accessor for ZeroDimension();
  v13[3] = v14;
  v13[4] = &protocol witness table for ZeroDimension;
  sub_1000056E0(v13);
  static ZeroDimension.zero.getter();
  v15 = enum case for DisjointStack.EdgePosition.anchored(_:);
  v16 = *(v11 + 104);
  v28 = v10;
  v16(v13, enum case for DisjointStack.EdgePosition.anchored(_:), v10);
  v30 = a1;
  DisjointStack.Properties.bottomEdge.setter();
  v17 = OBJC_IVAR____TtC8AppStore28CarouselItemModuleHeaderView_displayOptions;
  v18 = v27;
  swift_beginAccess();
  v19 = v18 + v17;
  v20 = v29;
  (*(v7 + 16))(v9, v19, v6);
  HeroCarouselItemOverlay.DisplayOptions.horizontalPlacement.getter();
  v21 = v6;
  v22 = v31;
  (*(v7 + 8))(v9, v21);
  v23 = v32;
  result = (*(v22 + 88))(v20, v32);
  if (result == enum case for HeroCarouselItemOverlay.DisplayOptions.Placement.leading(_:))
  {
    v13[3] = v14;
    v13[4] = &protocol witness table for ZeroDimension;
    sub_1000056E0(v13);
    static ZeroDimension.zero.getter();
    v16(v13, v15, v28);
    return DisjointStack.Properties.leadingEdge.setter();
  }

  else
  {
    v25 = v28;
    if (result != enum case for HeroCarouselItemOverlay.DisplayOptions.Placement.center(_:))
    {
      if (result == enum case for HeroCarouselItemOverlay.DisplayOptions.Placement.trailing(_:))
      {
        v13[3] = v14;
        v13[4] = &protocol witness table for ZeroDimension;
        sub_1000056E0(v13);
        static ZeroDimension.zero.getter();
        v16(v13, v15, v25);
        return DisjointStack.Properties.trailingEdge.setter();
      }

      else
      {
        return (*(v22 + 8))(v20, v23);
      }
    }
  }

  return result;
}

uint64_t sub_1004D9CE0(__n128 a1, uint64_t a2, uint64_t a3)
{
  v4 = type metadata accessor for HeroCarouselItemOverlay.DisplayOptions.Placement();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for HeroCarouselItemOverlay.DisplayOptions();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtC8AppStore28CarouselItemModuleHeaderView_displayOptions;
  swift_beginAccess();
  (*(v9 + 16))(v11, a3 + v12, v8);
  HeroCarouselItemOverlay.DisplayOptions.horizontalPlacement.getter();
  (*(v9 + 8))(v11, v8);
  HeroCarouselItemOverlay.DisplayOptions.Placement.verticalStackAlignment.getter();
  (*(v5 + 8))(v7, v4);
  return VerticalStack.Properties.alignment.setter();
}

uint64_t type metadata accessor for CarouselItemModuleHeaderView(uint64_t a1)
{
  result = qword_100988BD0;
  if (!qword_100988BD0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1004DA068(uint64_t a1)
{
  result = type metadata accessor for HeroCarouselItemOverlay.DisplayOptions();
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

double sub_1004DA108(uint64_t a1, double a2, double a3)
{
  sub_1004D9544(v6);
  sub_10002A400(v6, v6[3]);
  dispatch thunk of Placeable.measure(toFit:with:)();
  v4 = v3;
  sub_100007000(v6);
  return v4;
}

uint64_t sub_1004DA1C0(__n128 a1)
{
  if (qword_10096E628 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for SpacerDimension();
  v2 = sub_1000056A8(v1, qword_100988B48);
  v6[3] = v1;
  v6[4] = sub_10021CA28(v3);
  v4 = sub_1000056E0(v6);
  (*(*(v1 - 8) + 16))(v4, v2, v1);
  return VerticalStack.Properties.topSpacing.setter();
}

uint64_t sub_1004DA288(__n128 a1)
{
  if (qword_10096E630 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for SpacerDimension();
  v2 = sub_1000056A8(v1, qword_100988B60);
  v11 = v1;
  v4 = sub_10021CA28(v3);
  v12 = v4;
  v5 = sub_1000056E0(v10);
  v6 = *(*(v1 - 8) + 16);
  v6(v5, v2, v1);
  VerticalStack.Properties.topSpacing.setter();
  if (qword_10096E638 != -1)
  {
    swift_once();
  }

  v7 = sub_1000056A8(v1, qword_100988B78);
  v11 = v1;
  v12 = v4;
  v8 = sub_1000056E0(v10);
  v6(v8, v7, v1);
  return VerticalStack.Properties.bottomSpacing.setter();
}

void sub_1004DA3C8(__n128 a1)
{
  v2 = type metadata accessor for HeroCarouselItemOverlay.DisplayOptions.TextColorOverrides();
  __chkstk_darwin(v2 - 8);
  v3 = type metadata accessor for HeroCarouselItemOverlay.DisplayOptions.Placement();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for HeroCarouselItemOverlay.DisplayOptions.TextAlignment();
  v8 = __chkstk_darwin(v7);
  (*(v10 + 104))(&v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), enum case for HeroCarouselItemOverlay.DisplayOptions.TextAlignment.center(_:), v8);
  (*(v4 + 104))(v6, enum case for HeroCarouselItemOverlay.DisplayOptions.Placement.leading(_:), v3);
  HeroCarouselItemOverlay.DisplayOptions.TextColorOverrides.init()();
  HeroCarouselItemOverlay.DisplayOptions.init(textAlignment:horizontalPlacement:textColorOverrides:isOverDarkContent:)();
  v11 = OBJC_IVAR____TtC8AppStore28CarouselItemModuleHeaderView_badgeLabel;
  type metadata accessor for DynamicTypeLabel();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  *(v1 + v11) = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v13 = OBJC_IVAR____TtC8AppStore28CarouselItemModuleHeaderView_titleLabel;
  *(v1 + v13) = [objc_allocWithZone(ObjCClassFromMetadata) init];
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_1004DA620@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for AspectRatio();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    swift_getObjectType();
    PageTraitEnvironment.pageColumnWidth.getter();
  }

  if (qword_10096D4D0 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for FlowcaseItemLayout.Metrics();
  sub_1000056A8(v9, qword_1009CEA50);
  FlowcaseItemLayout.Metrics.artworkAspectRatio.getter();
  AspectRatio.height(fromWidth:)();
  (*(v6 + 8))(v8, v5);
  ComponentPrefetchSizing.init(size:contentMode:)();
  v10 = type metadata accessor for ComponentPrefetchSizing();
  return (*(*(v10 - 8) + 56))(a2, 0, 1, v10);
}

void sub_1004DA7C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_10002849C(&unk_100972A00, &unk_1007B3130);
  __chkstk_darwin(v4 - 8);
  v6 = &v13 - v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    v9 = Lockup.clickAction.getter();
    if (v9)
    {
      v10 = v9;
      v11 = sub_10002849C(&unk_100974490, &qword_1007B3DD0);
      BaseObjectGraph.injectIfAvailable<A>(_:)();
      v12 = *(v11 - 8);
      if ((*(v12 + 48))(v6, 1, v11) == 1)
      {

        sub_10002B894(v6, &unk_100972A00, &unk_1007B3130);
      }

      else
      {
        sub_1005F9AF4(v10, 1, a3, v6);

        (*(v12 + 8))(v6, v11);
      }
    }

    else
    {
    }
  }
}

double sub_1004DA970(double a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (qword_10096D4D0 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for FlowcaseItemLayout.Metrics();
  sub_1000056A8(v8, qword_1009CEA50);
  type metadata accessor for FlowcaseItemLayout();
  sub_1004DBEC4(&unk_100979610, &type metadata accessor for FlowcaseItemLayout, &protocol conformance descriptor for FlowcaseItemLayout);
  dispatch thunk of static EstimatedMeasurable.estimatedMeasurements(fitting:using:in:)();
  if (qword_10096D4D8 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Separator();
  sub_1000056A8(v9, qword_1009CEA68);

  CGSize.adding(separator:in:)();
  return result;
}

id sub_1004DAB78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v178 = a3;
  v175 = type metadata accessor for MediaOverlayStyle();
  v177 = *(v175 - 8);
  __chkstk_darwin(v175);
  v169 = &v159 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v168 = &v159 - v8;
  v9 = sub_10002849C(&qword_100972ED0, &unk_1007B17B0);
  __chkstk_darwin(v9 - 8);
  v160 = &v159 - v10;
  v170 = type metadata accessor for AdamId();
  v167 = *(v170 - 8);
  __chkstk_darwin(v170);
  v161 = &v159 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v159 - v13;
  v15 = sub_10002849C(&unk_100973AD0, &unk_1007B17C0);
  __chkstk_darwin(v15 - 8);
  v165 = &v159 - v16;
  v17 = sub_10002849C(&unk_100970150, &unk_1007BDDD0);
  __chkstk_darwin(v17 - 8);
  v174 = &v159 - v18;
  v19 = sub_10002849C(&unk_100970160, &unk_1007BDDE0);
  __chkstk_darwin(v19 - 8);
  v173 = &v159 - v20;
  v21 = sub_10002849C(&qword_100973AE0, &unk_1007B17D0);
  __chkstk_darwin(v21 - 8);
  v172 = &v159 - v22;
  v23 = sub_10002849C(&unk_100970170, &unk_1007BDDF0);
  __chkstk_darwin(v23 - 8);
  v164 = &v159 - v24;
  v25 = type metadata accessor for OfferButtonPresenterViewAlignment();
  v162 = *(v25 - 8);
  __chkstk_darwin(v25);
  v163 = &v159 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_10002849C(&unk_100973230, &unk_1007B17E0);
  __chkstk_darwin(v27 - 8);
  v176 = (&v159 - v28);
  v29 = sub_10002849C(&qword_10097B3F0, &qword_1007B3120);
  __chkstk_darwin(v29 - 8);
  v31 = &v159 - v30;
  v32 = *&v3[OBJC_IVAR____TtC8AppStore31EditorialCardCollectionViewCell_captionLabel];
  EditorialCard.caption.getter();
  if (v33)
  {
    v34 = String._bridgeToObjectiveC()();
  }

  else
  {
    v34 = 0;
  }

  [v32 setText:v34];

  v35 = *&v4[OBJC_IVAR____TtC8AppStore31EditorialCardCollectionViewCell_titleLabel];
  EditorialCard.title.getter();
  if (v36)
  {
    v37 = String._bridgeToObjectiveC()();
  }

  else
  {
    v37 = 0;
  }

  [v35 setText:v37];

  v38 = *&v4[OBJC_IVAR____TtC8AppStore31EditorialCardCollectionViewCell_subtitleLabel];
  EditorialCard.subtitle.getter();
  if (v39)
  {
    v40 = String._bridgeToObjectiveC()();
  }

  else
  {
    v40 = 0;
  }

  [v38 setText:v40];

  v41 = EditorialCard.appEventFormattedDates.getter();
  sub_10025E33C(v41);
  v42 = EditorialCard.clickAction.getter();
  v166 = v14;
  if (v42)
  {
    v179 = v42;
    type metadata accessor for Action();
    type metadata accessor for BaseObjectGraph();
    sub_1004DBEC4(&qword_100992FB0, &type metadata accessor for Action, &protocol conformance descriptor for Action);
    ComponentModel.pairedWith<A>(objectGraph:)();

    v43 = sub_10002849C(&unk_10097B3D0, "α\b");
    (*(*(v43 - 8) + 56))(v31, 0, 1, v43);
  }

  else
  {
    v44 = sub_10002849C(&unk_10097B3D0, "α\b");
    (*(*(v44 - 8) + 56))(v31, 1, 1, v44);
  }

  v45 = OBJC_IVAR____TtC8AppStore31EditorialCardCollectionViewCell_clickAction;
  swift_beginAccess();
  sub_100079964(v31, &v4[v45]);
  swift_endAccess();
  v46 = *&v4[OBJC_IVAR____TtC8AppStore31EditorialCardCollectionViewCell_gradientBlurView];
  if (EditorialCard.artwork.getter())
  {
    v47 = Artwork.backgroundColor.getter();
  }

  else
  {
    v47 = 0;
  }

  v48 = *&v46[OBJC_IVAR____TtC8AppStore28MediaOverlayGradientBlurView_secondaryColor];
  *&v46[OBJC_IVAR____TtC8AppStore28MediaOverlayGradientBlurView_secondaryColor] = v47;
  v49 = v47;

  sub_10025144C();
  v50 = *&v4[OBJC_IVAR____TtC8AppStore31EditorialCardCollectionViewCell_appEventFormattedDateView];
  if (v50)
  {
    type metadata accessor for AppEventLiveIndicatorAnimationCoordinator();
    v51 = v50;
    BaseObjectGraph.optional<A>(_:)();
    v52 = v179;
    v53 = v4;
    v54 = v46;
    v55 = a1;
    v56 = OBJC_IVAR____TtC8AppStore29AppPromotionFormattedDateView_liveIndicatorAnimationCoordinator;
    v57 = *&v51[OBJC_IVAR____TtC8AppStore29AppPromotionFormattedDateView_liveIndicatorAnimationCoordinator];
    v58 = v57;
    sub_1002C55E4(v52);
    v59 = *&v51[v56];
    *&v51[v56] = v52;
    a1 = v55;
    v46 = v54;
    v4 = v53;
    v60 = v52;

    sub_1002C5748(v57);
  }

  v61 = EditorialCard.lockup.getter();
  v62 = &StringUserDefaultsDebugSetting;
  if (v61)
  {
    v63 = v61;
    v159 = v4;
    v64 = *&v4[OBJC_IVAR____TtC8AppStore31EditorialCardCollectionViewCell_lockupView];
    v65 = v162;
    v66 = *(v162 + 104);
    v66(v163, enum case for OfferButtonPresenterViewAlignment.right(_:), v25);
    v67 = v164;
    v66(v164, enum case for OfferButtonPresenterViewAlignment.left(_:), v25);
    (*(v65 + 56))(v67, 0, 1, v25);
    sub_1004DBEC4(&unk_100970190, &type metadata accessor for OfferButtonPresenterViewAlignment, &protocol conformance descriptor for OfferButtonPresenterViewAlignment);
    v68 = v176;
    AccessibilityConditional.init(value:axValue:)();
    v69 = sub_10002849C(&unk_100973240, qword_1007B2220);
    (*(*(v69 - 8) + 56))(v68, 0, 1, v69);
    v70 = *(v64 + OBJC_IVAR____TtC8AppStore19CrossLinkLockupView_artworkView);
    v71 = Lockup.icon.getter();
    if (v71)
    {
    }

    v164 = v46;
    [v70 setHidden:v71 == 0];
    v163 = OBJC_IVAR____TtC8AppStore19CrossLinkLockupView_lockupView;
    v72 = *(v64 + OBJC_IVAR____TtC8AppStore19CrossLinkLockupView_lockupView);
    v73 = type metadata accessor for OfferStyle();
    v74 = v172;
    (*(*(v73 - 8) + 56))(v172, 1, 1, v73);
    v75 = type metadata accessor for OfferEnvironment();
    v76 = v173;
    (*(*(v75 - 8) + 56))(v173, 1, 1, v75);
    v77 = sub_10002849C(&unk_1009701A0, &unk_1007B17F0);
    v78 = v174;
    (*(*(v77 - 8) + 56))(v174, 1, 1, v77);
    v79 = type metadata accessor for OfferTint();
    v80 = v165;
    (*(*(v79 - 8) + 56))(v165, 1, 1, v79);
    sub_1004F3190(v63, v72, v176, v178, 1, 0, v74, v76, v80, v78);
    sub_10002B894(v80, &unk_100973AD0, &unk_1007B17C0);
    v72[OBJC_IVAR____TtC8AppStore15SmallLockupView_enforceMaximumOfTwoLinesOverall] = 1;
    sub_10070AB34();
    [v72 setNeedsLayout];
    v81 = OBJC_IVAR____TtC8AppStore14BaseLockupView_tertiaryTitleLabel;
    v82 = *&v72[OBJC_IVAR____TtC8AppStore14BaseLockupView_tertiaryTitleLabel];
    if (v82)
    {
      [v82 setHidden:1];
      v83 = *&v72[v81];
      if (v83)
      {
        [v83 setText:0];
      }
    }

    v84 = OBJC_IVAR____TtC8AppStore14BaseLockupView_headingLabel;
    v85 = *&v72[OBJC_IVAR____TtC8AppStore14BaseLockupView_headingLabel];
    if (v85)
    {
      if (([v85 isHidden] & 1) == 0)
      {
        v86 = *&v72[v84];
        if (v86)
        {
          if ([v86 hasContent])
          {
            v87 = OBJC_IVAR____TtC8AppStore14BaseLockupView_subtitleLabel;
            [*&v72[OBJC_IVAR____TtC8AppStore14BaseLockupView_subtitleLabel] setHidden:1];
            [*&v72[v87] setText:0];
          }
        }
      }
    }

    v171 = a1;
    v88 = OBJC_IVAR____TtC8AppStore14BaseLockupView_offerLabel;
    v89 = [*&v72[OBJC_IVAR____TtC8AppStore14BaseLockupView_offerLabel] isHidden];
    v90 = v166;
    if (v89 & 1) == 0 && ([*&v72[v88] hasContent])
    {
      v91 = *&v72[v84];
      if (v91)
      {
        [v91 setHidden:1];
        v92 = *&v72[v84];
        if (v92)
        {
          [v92 setText:0];
        }
      }

      v93 = OBJC_IVAR____TtC8AppStore14BaseLockupView_subtitleLabel;
      [*&v72[OBJC_IVAR____TtC8AppStore14BaseLockupView_subtitleLabel] setHidden:1];
      [*&v72[v93] setText:0];
    }

    sub_10002B894(v174, &unk_100970150, &unk_1007BDDD0);
    sub_10002B894(v173, &unk_100970160, &unk_1007BDDE0);
    sub_10002B894(v172, &qword_100973AE0, &unk_1007B17D0);
    Lockup.adamId.getter();
    v94 = Lockup.crossLinkTitle.getter();
    v96 = v95;
    v97 = Lockup.crossLinkSubtitle.getter();
    v99 = v98;
    v100 = Lockup.includeBetaApps.getter();
    v174 = v63;
    if (v96 && v99)
    {
      v101 = v100;
      v173 = v94;
      v102 = v167;
      (*(v167 + 16))(v161, v90, v170);
      sub_10002849C(&unk_100973AF0, &qword_1007B3960);
      type metadata accessor for BaseObjectGraph();
      inject<A, B>(_:from:)();
      v172 = v97;
      v104 = v179;
      v103 = v180;
      type metadata accessor for CrossLinkPresenter(0);
      swift_allocObject();
      v105 = v64;
      v106 = CrossLinkPresenter.init(adamId:title:subtitle:includeBetaApps:view:appStateController:)(v161, v173, v96, v172, v99, v101 & 1, v64, &off_1008B5970, v104, v103);
      (*(v102 + 8))(v90, v170);
      sub_10002B894(v176, &unk_100973230, &unk_1007B17E0);
      v107 = OBJC_IVAR____TtC8AppStore19CrossLinkLockupView_crossLinkPresenter;
      swift_beginAccess();
      *&v105[v107] = v106;
    }

    else
    {

      v111 = OBJC_IVAR____TtC8AppStore19CrossLinkLockupView_crossLinkPresenter;
      swift_beginAccess();
      *(v64 + v111) = 0;

      v112 = sub_10014024C(0, 0);
      (*(v167 + 8))(v90, v170, v112);
      sub_10002B894(v176, &unk_100973230, &unk_1007B17E0);
    }

    v113 = v177;
    v114 = v163;
    v115 = *(*&v163[v64] + OBJC_IVAR____TtC8AppStore14BaseLockupView_headingLabel);
    if (v115)
    {
      v116 = qword_10096DDB8;
      v117 = v115;
      if (v116 != -1)
      {
        swift_once();
      }

      v118 = type metadata accessor for FontUseCase();
      v119 = sub_1000056A8(v118, qword_1009D08C0);
      v120 = *(v118 - 8);
      v121 = v160;
      (*(v120 + 16))(v160, v119, v118);
      (*(v120 + 56))(v121, 0, 1, v118);
      dispatch thunk of DynamicTypeLabel.fontUseCase.setter();
    }

    v122 = v168;
    EditorialCard.mediaOverlayStyle.getter();
    v123 = MediaOverlayStyle.userInterfaceStyle.getter();
    v126 = *(v113 + 8);
    v125 = v113 + 8;
    v124 = v126;
    (v126)(v122, v175);
    v127 = *(*&v114[v64] + OBJC_IVAR____TtC8AppStore14BaseLockupView_offerButton);
    if (v123 == 2)
    {
      v128 = objc_opt_self();
      v129 = v127;
      v130 = [v128 whiteColor];
    }

    else
    {
      sub_100005744(0, &qword_100970180, UIColor_ptr);
      v131 = v127;
      v130 = static UIColor.appTint.getter();
    }

    v132 = v130;
    [v127 setTintColor:v130];

    [v64 setHidden:0];
    v133 = v169;
    EditorialCard.mediaOverlayStyle.getter();
    v134 = MediaOverlayStyle.userInterfaceStyle.getter();
    v135 = v175;
    (v124)(v133, v175);
    [v64 setOverrideUserInterfaceStyle:v134];
    [*(*&v114[v64] + OBJC_IVAR____TtC8AppStore14BaseLockupView_offerLabel) _setTextColorFollowsTintColor:0];
    v136 = *(*&v114[v64] + OBJC_IVAR____TtC8AppStore14BaseLockupView_offerLabel);
    sub_100005744(0, &qword_100970180, UIColor_ptr);
    v137 = v136;
    v138 = static UIColor.primaryText.getter();
    v176 = v124;
    v139 = v138;
    v140 = [v138 colorWithAlphaComponent:0.7];
    v177 = v125;
    v141 = v140;

    [v137 setTextColor:v141];
    v142 = *(*&v114[v64] + OBJC_IVAR____TtC8AppStore14BaseLockupView_subtitleLabel);
    v143 = static UIColor.primaryText.getter();
    v144 = [v143 colorWithAlphaComponent:0.7];

    [v142 setTextColor:v144];
    v145 = *(v64 + OBJC_IVAR____TtC8AppStore19CrossLinkLockupView_crossLinkTitleLabel);
    v146 = static UIColor.primaryText.getter();
    v147 = [v146 colorWithAlphaComponent:0.7];

    [v145 setTextColor:v147];
    v62 = &StringUserDefaultsDebugSetting;
    [v64 setNeedsLayout];
    v148 = swift_allocObject();
    v149 = v159;
    swift_unknownObjectWeakInit();
    v150 = swift_allocObject();
    v151 = v174;
    *(v150 + 2) = v148;
    *(v150 + 3) = v151;
    *(v150 + 4) = v178;
    v152 = &v149[OBJC_IVAR____TtC8AppStore31EditorialCardCollectionViewCell_lockupViewTappedAction];
    v153 = *&v149[OBJC_IVAR____TtC8AppStore31EditorialCardCollectionViewCell_lockupViewTappedAction];
    v154 = *&v149[OBJC_IVAR____TtC8AppStore31EditorialCardCollectionViewCell_lockupViewTappedAction + 8];
    *v152 = sub_1004DBEB8;
    v152[1] = v150;

    sub_10001F63C(v153, v154);

    v155 = v164;
    [v164 setHidden:0];
    EditorialCard.mediaOverlayStyle.getter();
    v156 = MediaOverlayStyle.userInterfaceStyle.getter();
    (v176)(v133, v135);
    v157 = v155;
    v4 = v149;
    [v157 setOverrideUserInterfaceStyle:v156];
  }

  else
  {
    v108 = &v4[OBJC_IVAR____TtC8AppStore31EditorialCardCollectionViewCell_lockupViewTappedAction];
    v109 = *&v4[OBJC_IVAR____TtC8AppStore31EditorialCardCollectionViewCell_lockupViewTappedAction];
    v110 = *&v4[OBJC_IVAR____TtC8AppStore31EditorialCardCollectionViewCell_lockupViewTappedAction + 8];
    *v108 = 0;
    *(v108 + 1) = 0;
    sub_10001F63C(v109, v110);
    [*&v4[OBJC_IVAR____TtC8AppStore31EditorialCardCollectionViewCell_lockupView] setHidden:1];
    [v46 setHidden:1];
  }

  sub_10025FC20();
  return [v4 v62[41].base_meths];
}