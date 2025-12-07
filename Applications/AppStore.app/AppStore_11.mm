uint64_t sub_10012EA14(void *a1)
{
  v1 = [a1 traitCollection];
  type metadata accessor for MetadataRibbonIconWithLabelView.Configuration(0);
  v2.super.isa = MetadataRibbonTextStyle.font(compatibleWith:)(v1).super.isa;
  v3 = [v1 preferredContentSizeCategory];
  v4 = UIContentSizeCategory.isAccessibilityCategory.getter();

  if (v4)
  {
    v5 = 3;
  }

  else
  {
    v5 = 1;
  }

  v6 = [objc_opt_self() configurationWithFont:v2.super.isa scale:v5];

  return ArtworkView.preferredSymbolConfiguration.setter();
}

void sub_10012EB00(__n128 a1)
{
  static MetadataRibbonIconWithLabelViewLayout.Metrics.standard.getter();
  *(v1 + OBJC_IVAR____TtC8AppStore31MetadataRibbonIconWithLabelView_artwork) = 0;
  v2 = v1 + OBJC_IVAR____TtC8AppStore31MetadataRibbonIconWithLabelView_id;
  *v2 = 0u;
  *(v2 + 16) = 0u;
  *(v2 + 32) = 0;
  v3 = OBJC_IVAR____TtC8AppStore31MetadataRibbonIconWithLabelView_itemType;
  v4 = type metadata accessor for MetadataRibbonItemType();
  (*(*(v4 - 8) + 56))(v1 + v3, 1, 1, v4);
  v5 = v1 + OBJC_IVAR____TtC8AppStore31MetadataRibbonIconWithLabelView_labelMaxWidth;
  *v5 = 0;
  *(v5 + 8) = 1;
  v6 = v1 + OBJC_IVAR____TtC8AppStore31MetadataRibbonIconWithLabelView_truncationLegibilityThreshold;
  *v6 = 0;
  *(v6 + 8) = 1;
  *(v1 + OBJC_IVAR____TtC8AppStore31MetadataRibbonIconWithLabelView_allowsTruncation) = 2;
  v7 = (v1 + OBJC_IVAR____TtC8AppStore31MetadataRibbonIconWithLabelView_artworkSize);
  *v7 = 0;
  v7[1] = 0;
  v8 = OBJC_IVAR____TtC8AppStore31MetadataRibbonIconWithLabelView_configuration;
  if (qword_10096D100 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for MetadataRibbonIconWithLabelView.Configuration(0);
  v10 = sub_1000056A8(v9, qword_1009CE188);
  sub_10012EC7C(v10, v1 + v8);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_10012EC7C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MetadataRibbonIconWithLabelView.Configuration(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10012ECE0(uint64_t a1)
{
  v2 = type metadata accessor for MetadataRibbonIconWithLabelView.Configuration(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10012ED3C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_10012ED98()
{
  result = qword_100975720;
  if (!qword_100975720)
  {
    type metadata accessor for ReportConcernAction();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100975720);
  }

  return result;
}

uint64_t sub_10012EDF8(uint64_t a1, uint64_t a2)
{
  v31 = a2;
  v28 = a1;
  v30 = type metadata accessor for FlowOrigin();
  v2 = *(v30 - 8);
  __chkstk_darwin(v30);
  v29 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for FlowAnimationBehavior();
  v4 = *(v27 - 8);
  __chkstk_darwin(v27);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for FlowPresentationContext();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for ActionMetrics();
  __chkstk_darwin(v11 - 8);
  v12 = sub_10002849C(&unk_1009767C0, &unk_1007B1880);
  __chkstk_darwin(v12 - 8);
  v14 = &v26 - v13;
  v15 = sub_10002849C(&qword_100982460, &unk_1007B5C90);
  __chkstk_darwin(v15 - 8);
  v17 = &v26 - v16;
  v18 = type metadata accessor for FlowPage();
  __chkstk_darwin(v18);
  v36 = 0;
  v34 = 0u;
  v35 = 0u;
  (*(v20 + 104))(&v26 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0), enum case for FlowPage.reportAConcern(_:));
  v21 = type metadata accessor for URL();
  (*(*(v21 - 8) + 56))(v17, 1, 1, v21);
  v22 = type metadata accessor for ReferrerData();
  (*(*(v22 - 8) + 56))(v14, 1, 1, v22);
  v33 = type metadata accessor for ReportConcernAction();
  v32 = v28;

  static ActionMetrics.notInstrumented.getter();
  (*(v8 + 104))(v10, enum case for FlowPresentationContext.presentModalFormSheet(_:), v7);
  (*(v4 + 104))(v6, enum case for FlowAnimationBehavior.infer(_:), v27);
  (*(v2 + 104))(v29, enum case for FlowOrigin.inapp(_:), v30);
  static FlowActionPresentation.stackPush.getter();
  type metadata accessor for FlowAction();
  swift_allocObject();
  v23 = FlowAction.init(id:title:artwork:page:url:referrerUrl:referrerData:pageData:actionMetrics:presentationContext:animationBehavior:origin:presentationStyle:presentation:)();
  v24 = sub_1005D01FC(v23, 1, v31);

  return v24;
}

uint64_t sub_10012F348(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_100135F00(&qword_100974C48, type metadata accessor for AchievementSummaryCollectionViewCell, &unk_1007BA118);

  return static ConfigurableCell<>.dequeueConfiguredCell(in:collectionView:asPartOf:)(a1, a2, a3, v5, a5, v10);
}

uint64_t sub_10012F3E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_100135F00(&qword_100974DF0, type metadata accessor for ActionCollectionViewCell, &unk_1007DBC10);

  return static ConfigurableCell<>.dequeueConfiguredCell(in:collectionView:asPartOf:)(a1, a2, a3, v5, a5, v10);
}

uint64_t sub_10012F480()
{
  v0 = sub_10002849C(&unk_10097DAF0, &qword_1007B2A30);
  __chkstk_darwin(v0 - 8);
  v1 = sub_10002849C(&unk_100992FA0, &qword_1007B15C0);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v10 - v3;
  if (sub_1000AE724(v5, v6))
  {
    ItemLayoutContext.mutableState.getter();
    WritableStateLens.init(_:)();
    sub_100036A58();
    WritableStateLens<A>.updateValue(_:)();
    sub_10002849C(&qword_100975748, &qword_1007BA160);
    type metadata accessor for SelectableShelfComponentViewReaction();
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_1007B1E00;
    static SelectableShelfComponentViewReaction.propagate.getter();
    static SelectableShelfComponentViewReaction.deselect.getter();
    static SelectableShelfComponentViewReaction.reapply.getter();
    v11 = v7;
    sub_100135F00(&qword_100975750, &type metadata accessor for SelectableShelfComponentViewReaction, &protocol conformance descriptor for SelectableShelfComponentViewReaction);
    sub_10002849C(&qword_100975758, &qword_1007DA2A0);
    sub_100135DA0();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    return (*(v2 + 8))(v4, v1);
  }

  else
  {
    sub_10002849C(&qword_100975748, &qword_1007BA160);
    type metadata accessor for SelectableShelfComponentViewReaction();
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_1007B10D0;
    static SelectableShelfComponentViewReaction.deselect.getter();
    v11 = v9;
    sub_100135F00(&qword_100975750, &type metadata accessor for SelectableShelfComponentViewReaction, &protocol conformance descriptor for SelectableShelfComponentViewReaction);
    sub_10002849C(&qword_100975758, &qword_1007DA2A0);
    sub_100135DA0();
    return dispatch thunk of SetAlgebra.init<A>(_:)();
  }
}

uint64_t sub_10012F848(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_100135F00(&qword_100974DC0, type metadata accessor for AnnotationCollectionViewCell, &unk_1007DC520);

  return static ConfigurableCell<>.dequeueConfiguredCell(in:collectionView:asPartOf:)(a1, a2, a3, v5, a5, v10);
}

uint64_t sub_10012F988(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_100135F00(&qword_100974D98, type metadata accessor for AppShowcaseCollectionViewCell, &unk_1007B9F44);

  return static ConfigurableCell<>.dequeueConfiguredCell(in:collectionView:asPartOf:)(a1, a2, a3, v5, a5, v10);
}

uint64_t sub_10012FA9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  WitnessTable = swift_getWitnessTable();

  return sub_100538BFC(a1, a2, a3, WitnessTable);
}

uint64_t sub_10012FB18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable();

  return static ConfigurableCell<>.dequeueConfiguredCell(in:collectionView:asPartOf:)(a1, a2, a3, a4, a5, WitnessTable);
}

void sub_10012FB9C(uint64_t a3@<X2>, uint64_t x8_0@<X8>)
{
  WitnessTable = swift_getWitnessTable();

  sub_10048F4BC(a3, WitnessTable, x8_0);
}

uint64_t sub_10012FC20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable();

  return sub_10048F75C(a1, a2, a3, a4, WitnessTable, a5);
}

uint64_t sub_10012FD24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_100135F00(&qword_100974D58, type metadata accessor for ArcadeShowcaseCollectionViewCell, &unk_1007B9DCC);

  return static ConfigurableCell<>.dequeueConfiguredCell(in:collectionView:asPartOf:)(a1, a2, a3, v5, a5, v10);
}

uint64_t sub_10012FDBC()
{
  sub_10002849C(&qword_100975748, &qword_1007BA160);
  type metadata accessor for SelectableShelfComponentViewReaction();
  *(swift_allocObject() + 16) = xmmword_1007B10D0;
  static SelectableShelfComponentViewReaction.deselect.getter();
  sub_100135F00(&qword_100975750, &type metadata accessor for SelectableShelfComponentViewReaction, &protocol conformance descriptor for SelectableShelfComponentViewReaction);
  sub_10002849C(&qword_100975758, &qword_1007DA2A0);
  sub_100135DA0();
  return dispatch thunk of SetAlgebra.init<A>(_:)();
}

uint64_t sub_10012FF78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  WitnessTable = swift_getWitnessTable();

  return sub_100538BFC(a1, a2, a3, WitnessTable);
}

uint64_t sub_10012FFF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable();

  return static ConfigurableCell<>.dequeueConfiguredCell(in:collectionView:asPartOf:)(a1, a2, a3, a4, a5, WitnessTable);
}

void sub_100130078(uint64_t a3@<X2>, uint64_t x8_0@<X8>)
{
  WitnessTable = swift_getWitnessTable();

  sub_10048F4BC(a3, WitnessTable, x8_0);
}

uint64_t sub_1001300FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable();

  return sub_10048F75C(a1, a2, a3, a4, WitnessTable, a5);
}

uint64_t sub_1001301FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  WitnessTable = swift_getWitnessTable();

  return sub_100538BFC(a1, a2, a3, WitnessTable);
}

uint64_t sub_100130278(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable();

  return static ConfigurableCell<>.dequeueConfiguredCell(in:collectionView:asPartOf:)(a1, a2, a3, a4, a5, WitnessTable);
}

void sub_1001302FC(uint64_t a3@<X2>, uint64_t x8_0@<X8>)
{
  WitnessTable = swift_getWitnessTable();

  sub_10048F4BC(a3, WitnessTable, x8_0);
}

uint64_t sub_100130380(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable();

  return sub_10048F75C(a1, a2, a3, a4, WitnessTable, a5);
}

id sub_100130480(uint64_t a1, uint64_t a2)
{
  v5.receiver = v2;
  v5.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v5, "prepareForReuse");
  v3 = &v2[OBJC_IVAR____TtC8AppStore23BrickCollectionViewCell_shortDescriptionLabelText];
  *v3 = 0;
  *(v3 + 1) = 0;

  return sub_1000F88B0();
}

uint64_t sub_1001304DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_100135F00(&qword_100974D18, type metadata accessor for BrickCollectionViewCell, &unk_1007B9BAC);

  return static ConfigurableCell<>.dequeueConfiguredCell(in:collectionView:asPartOf:)(a1, a2, a3, v5, a5, v10);
}

uint64_t sub_100130600(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_100135F00(&qword_1009748F0, type metadata accessor for ChartOrCategoryBrickCollectionViewCell, &unk_1007B9B04);

  return static ConfigurableCell<>.dequeueConfiguredCell(in:collectionView:asPartOf:)(a1, a2, a3, v5, a5, v10);
}

uint64_t sub_100130720(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_100135F00(&qword_100974CE8, type metadata accessor for EditorialCardCollectionViewCell, &unk_1007B9A5C);

  return static ConfigurableCell<>.dequeueConfiguredCell(in:collectionView:asPartOf:)(a1, a2, a3, v5, a5, v10);
}

uint64_t sub_100130840(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_100135F00(&qword_100974CD0, type metadata accessor for EditorialQuoteCollectionViewCell, &unk_1007B99B4);

  return static ConfigurableCell<>.dequeueConfiguredCell(in:collectionView:asPartOf:)(a1, a2, a3, v5, a5, v10);
}

uint64_t sub_100130954(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  WitnessTable = swift_getWitnessTable();

  return sub_100538BFC(a1, a2, a3, WitnessTable);
}

uint64_t sub_1001309D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable();

  return static ConfigurableCell<>.dequeueConfiguredCell(in:collectionView:asPartOf:)(a1, a2, a3, a4, a5, WitnessTable);
}

void sub_100130A54(uint64_t a3@<X2>, uint64_t x8_0@<X8>)
{
  WitnessTable = swift_getWitnessTable();

  sub_10048F4BC(a3, WitnessTable, x8_0);
}

uint64_t sub_100130AD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable();

  return sub_10048F75C(a1, a2, a3, a4, WitnessTable, a5);
}

uint64_t sub_100130BE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_100135F00(&qword_100974C90, type metadata accessor for FootnoteCollectionViewCell, &unk_1007B9864);

  return static ConfigurableCell<>.dequeueConfiguredCell(in:collectionView:asPartOf:)(a1, a2, a3, v5, a5, v10);
}

uint64_t sub_100130C78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_100135F00(&qword_100974C80, type metadata accessor for FramedArtworkCollectionViewCell, &unk_1007D93D8);

  return static ConfigurableCell<>.dequeueConfiguredCell(in:collectionView:asPartOf:)(a1, a2, a3, v5, a5, v10);
}

uint64_t sub_100130D10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_100135F00(&qword_100974C70, type metadata accessor for FramedVideoCollectionViewCell, &unk_1007E0C48);

  return static ConfigurableCell<>.dequeueConfiguredCell(in:collectionView:asPartOf:)(a1, a2, a3, v5, a5, v10);
}

uint64_t sub_100130E28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_100135F00(&qword_100974C38, type metadata accessor for GameCenterReengagementCollectionViewCell, &unk_1007B96AC);

  return static ConfigurableCell<>.dequeueConfiguredCell(in:collectionView:asPartOf:)(a1, a2, a3, v5, a5, v10);
}

uint64_t sub_100130F3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  WitnessTable = swift_getWitnessTable();

  return sub_100538BFC(a1, a2, a3, WitnessTable);
}

uint64_t sub_100130FB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable();

  return static ConfigurableCell<>.dequeueConfiguredCell(in:collectionView:asPartOf:)(a1, a2, a3, a4, a5, WitnessTable);
}

void sub_10013103C(uint64_t a3@<X2>, uint64_t x8_0@<X8>)
{
  WitnessTable = swift_getWitnessTable();

  sub_10048F4BC(a3, WitnessTable, x8_0);
}

uint64_t sub_1001310C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable();

  return sub_10048F75C(a1, a2, a3, a4, WitnessTable, a5);
}

uint64_t sub_1001311C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_100135F00(&qword_100974C10, type metadata accessor for HorizontalRuleCollectionViewCell, &unk_1007B955C);

  return static ConfigurableCell<>.dequeueConfiguredCell(in:collectionView:asPartOf:)(a1, a2, a3, v5, a5, v10);
}

uint64_t sub_1001312C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_100135F00(&qword_100974BF8, type metadata accessor for InAppPurchaseNonTiledLockupCollectionViewCell, &unk_1007B94B4);

  return static ConfigurableCell<>.dequeueConfiguredCell(in:collectionView:asPartOf:)(a1, a2, a3, v5, a5, v10);
}

uint64_t sub_1001313D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  WitnessTable = swift_getWitnessTable();

  return sub_100538BFC(a1, a2, a3, WitnessTable);
}

uint64_t sub_100131454(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable();

  return static ConfigurableCell<>.dequeueConfiguredCell(in:collectionView:asPartOf:)(a1, a2, a3, a4, a5, WitnessTable);
}

void sub_1001314D8(uint64_t a3@<X2>, uint64_t x8_0@<X8>)
{
  WitnessTable = swift_getWitnessTable();

  sub_10048F4BC(a3, WitnessTable, x8_0);
}

uint64_t sub_10013155C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable();

  return sub_10048F75C(a1, a2, a3, a4, WitnessTable, a5);
}

uint64_t sub_1001315E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_100135F00(&qword_100974BC8, type metadata accessor for InAppPurchaseTiledLockupCollectionViewCell, &unk_1007B9364);

  return static ConfigurableCell<>.dequeueConfiguredCell(in:collectionView:asPartOf:)(a1, a2, a3, v5, a5, v10);
}

uint64_t sub_1001316F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_100135F00(&qword_100974BB0, type metadata accessor for InformationRibbonCollectionViewCell, &unk_1007B92BC);

  return static ConfigurableCell<>.dequeueConfiguredCell(in:collectionView:asPartOf:)(a1, a2, a3, v5, a5, v10);
}

uint64_t sub_10013180C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  WitnessTable = swift_getWitnessTable();

  return sub_100538BFC(a1, a2, a3, WitnessTable);
}

uint64_t sub_100131888(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable();

  return static ConfigurableCell<>.dequeueConfiguredCell(in:collectionView:asPartOf:)(a1, a2, a3, a4, a5, WitnessTable);
}

void sub_10013190C(uint64_t a3@<X2>, uint64_t x8_0@<X8>)
{
  WitnessTable = swift_getWitnessTable();

  sub_10048F4BC(a3, WitnessTable, x8_0);
}

uint64_t sub_100131990(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable();

  return sub_10048F75C(a1, a2, a3, a4, WitnessTable, a5);
}

uint64_t sub_100131A98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_100135F00(&qword_100974B80, type metadata accessor for LargeHeroBreakoutCollectionViewCell, &unk_1007B919C);

  return static ConfigurableCell<>.dequeueConfiguredCell(in:collectionView:asPartOf:)(a1, a2, a3, v5, a5, v10);
}

uint64_t sub_100131BB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_100135F00(&qword_100974B68, type metadata accessor for LargeLockupCollectionViewCell, &unk_1007B90F4);

  return static ConfigurableCell<>.dequeueConfiguredCell(in:collectionView:asPartOf:)(a1, a2, a3, v5, a5, v10);
}

void sub_100131CCC(uint64_t a1, uint64_t a2)
{
  v3.receiver = v2;
  v3.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v3, "prepareForReuse");
  sub_100738834(0);
}

uint64_t sub_100131D10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_100135F00(&qword_100974B50, type metadata accessor for LinkCollectionViewCell, &unk_1007B904C);

  return static ConfigurableCell<>.dequeueConfiguredCell(in:collectionView:asPartOf:)(a1, a2, a3, v5, a5, v10);
}

uint64_t sub_100131DA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_100135F00(&qword_100974B38, type metadata accessor for MediumLockupCollectionViewCell, &unk_1007E0CF0);

  return static ConfigurableCell<>.dequeueConfiguredCell(in:collectionView:asPartOf:)(a1, a2, a3, v5, a5, v10);
}

uint64_t sub_100131EC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  WitnessTable = swift_getWitnessTable();

  return sub_100538BFC(a1, a2, a3, WitnessTable);
}

uint64_t sub_100131F40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable();

  return static ConfigurableCell<>.dequeueConfiguredCell(in:collectionView:asPartOf:)(a1, a2, a3, a4, a5, WitnessTable);
}

void sub_100131FC4(uint64_t a3@<X2>, uint64_t x8_0@<X8>)
{
  WitnessTable = swift_getWitnessTable();

  sub_10048F4BC(a3, WitnessTable, x8_0);
}

uint64_t sub_100132048(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable();

  return sub_10048F75C(a1, a2, a3, a4, WitnessTable, a5);
}

uint64_t sub_1001320CC()
{
  v0 = sub_10002849C(&unk_10097DAF0, &qword_1007B2A30);
  __chkstk_darwin(v0 - 8);
  v1 = sub_10002849C(&qword_100975768, &qword_1007BA168);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v7 - v3;
  ItemLayoutContext.mutableState.getter();
  WritableStateLens.init(_:)();
  sub_100135E04();
  WritableStateLens<A>.currentValue.getter();
  if (v8 == 2 || (v8 & 1) == 0)
  {
    sub_10002849C(&qword_100975748, &qword_1007BA160);
    type metadata accessor for SelectableShelfComponentViewReaction();
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_1007B10D0;
    static SelectableShelfComponentViewReaction.deselect.getter();
  }

  else
  {
    WritableStateLens<A>.updateValue(_:)();
    sub_10002849C(&qword_100975748, &qword_1007BA160);
    type metadata accessor for SelectableShelfComponentViewReaction();
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_1007B1E00;
    static SelectableShelfComponentViewReaction.propagate.getter();
    static SelectableShelfComponentViewReaction.deselect.getter();
    static SelectableShelfComponentViewReaction.reapply.getter();
  }

  v8 = v5;
  sub_100135F00(&qword_100975750, &type metadata accessor for SelectableShelfComponentViewReaction, &protocol conformance descriptor for SelectableShelfComponentViewReaction);
  sub_10002849C(&qword_100975758, &qword_1007DA2A0);
  sub_100135DA0();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  return (*(v2 + 8))(v4, v1);
}

uint64_t sub_10013243C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_100135F00(&qword_100974B10, type metadata accessor for ParagraphCollectionViewCell, &unk_1007D5850);

  return static ConfigurableCell<>.dequeueConfiguredCell(in:collectionView:asPartOf:)(a1, a2, a3, v5, a5, v10);
}

uint64_t sub_100132570(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_100135F00(&qword_100974AE8, type metadata accessor for PosterLockupCollectionViewCell, &unk_1007B8DF8);

  return static ConfigurableCell<>.dequeueConfiguredCell(in:collectionView:asPartOf:)(a1, a2, a3, v5, a5, v10);
}

uint64_t sub_100132688(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_100135F00(&qword_100974AB8, type metadata accessor for PreorderDisclaimerCollectionViewCell, &unk_1007B8D50);

  return static ConfigurableCell<>.dequeueConfiguredCell(in:collectionView:asPartOf:)(a1, a2, a3, v5, a5, v10);
}

uint64_t sub_1001327A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_100135F00(&qword_100974AA8, type metadata accessor for PrivacyCategoryCollectionViewCell, &unk_1007B8CA8);

  return static ConfigurableCell<>.dequeueConfiguredCell(in:collectionView:asPartOf:)(a1, a2, a3, v5, a5, v10);
}

id sub_1001328B8(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v4, "prepareForReuse");
  sub_1000278AC(0, 0);
  return sub_1000278B8(0, 0);
}

uint64_t sub_10013290C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_100135F00(&qword_100974A90, type metadata accessor for PrivacyDefinitionCollectionViewCell, &unk_1007B8C00);

  return static ConfigurableCell<>.dequeueConfiguredCell(in:collectionView:asPartOf:)(a1, a2, a3, v5, a5, v10);
}

uint64_t sub_100132A24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_100135F00(&qword_100974A78, type metadata accessor for PrivacyFooterCollectionViewCell, &unk_1007B8B58);

  return static ConfigurableCell<>.dequeueConfiguredCell(in:collectionView:asPartOf:)(a1, a2, a3, v5, a5, v10);
}

uint64_t sub_100132B40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_100135F00(&qword_100974A68, type metadata accessor for PrivacyHeaderCollectionViewCell, &unk_1007B8AB0);

  return static ConfigurableCell<>.dequeueConfiguredCell(in:collectionView:asPartOf:)(a1, a2, a3, v5, a5, v10);
}

void sub_100132C54(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v4, "prepareForReuse");
  sub_1003617E4(0, 0);
  sub_1003617F0(0, 0);
  v5.value.super.isa = 0;
  v5.is_nil = 0;
  ArtworkView.setImage(image:animated:)(v5, v3);
  sub_100363EC8();
  *&v2[OBJC_IVAR____TtC8AppStore29PrivacyTypeCollectionViewCell_categories] = _swiftEmptyArrayStorage;

  sub_1003617FC();
}

uint64_t sub_100132CFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_100135F00(&qword_100974A58, type metadata accessor for PrivacyTypeCollectionViewCell, &unk_1007B8A08);

  return static ConfigurableCell<>.dequeueConfiguredCell(in:collectionView:asPartOf:)(a1, a2, a3, v5, a5, v10);
}

uint64_t sub_100132E18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_100135F00(&qword_100974A38, type metadata accessor for ProductCapabilityCell, &unk_1007B8960);

  return static ConfigurableCell<>.dequeueConfiguredCell(in:collectionView:asPartOf:)(a1, a2, a3, v5, a5, v10);
}

uint64_t sub_100132EB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_100135F00(&qword_100974A10, type metadata accessor for ProductMediaCollectionViewCell, &unk_1007CFE20);

  return static ConfigurableCell<>.dequeueConfiguredCell(in:collectionView:asPartOf:)(a1, a2, a3, v5, a5, v10);
}

uint64_t sub_100132F48()
{
  v0 = sub_10002849C(&unk_10097DAF0, &qword_1007B2A30);
  __chkstk_darwin(v0 - 8);
  v1 = sub_10002849C(&qword_100975770, &qword_1007BA170);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v7[-v3];
  ItemLayoutContext.mutableState.getter();
  WritableStateLens.init(_:)();
  sub_100135E58();
  WritableStateLens<A>.currentValue.getter();
  if (v7[0] == 2 || (v7[0] & 1) == 0)
  {
    WritableStateLens<A>.updateValue(_:)();
    sub_10002849C(&qword_100975748, &qword_1007BA160);
    type metadata accessor for SelectableShelfComponentViewReaction();
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_1007B1E00;
    static SelectableShelfComponentViewReaction.propagate.getter();
    static SelectableShelfComponentViewReaction.deselect.getter();
    static SelectableShelfComponentViewReaction.reapply.getter();
  }

  else
  {
    sub_10002849C(&qword_100975748, &qword_1007BA160);
    type metadata accessor for SelectableShelfComponentViewReaction();
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_1007B10D0;
    static SelectableShelfComponentViewReaction.deselect.getter();
  }

  *v7 = v5;
  sub_100135F00(&qword_100975750, &type metadata accessor for SelectableShelfComponentViewReaction, &protocol conformance descriptor for SelectableShelfComponentViewReaction);
  sub_10002849C(&qword_100975758, &qword_1007DA2A0);
  sub_100135DA0();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  return (*(v2 + 8))(v4, v1);
}

uint64_t sub_100133334(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  WitnessTable = swift_getWitnessTable();

  return sub_100538BFC(a1, a2, a3, WitnessTable);
}

uint64_t sub_1001333B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable();

  return static ConfigurableCell<>.dequeueConfiguredCell(in:collectionView:asPartOf:)(a1, a2, a3, a4, a5, WitnessTable);
}

void sub_100133434(uint64_t a3@<X2>, uint64_t x8_0@<X8>)
{
  WitnessTable = swift_getWitnessTable();

  sub_10048F4BC(a3, WitnessTable, x8_0);
}

uint64_t sub_1001334B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable();

  return sub_10048F75C(a1, a2, a3, a4, WitnessTable, a5);
}

uint64_t sub_100133554(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_100135F00(&qword_100974940, type metadata accessor for LinkableTextCollectionViewCell, &unk_1007D0EC0);

  return static ConfigurableCell<>.dequeueConfiguredCell(in:collectionView:asPartOf:)(a1, a2, a3, v5, a5, v10);
}

id sub_100133668(uint64_t a1, uint64_t a2)
{
  v5.receiver = v2;
  v5.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v5, "prepareForReuse");
  v3 = *&v2[OBJC_IVAR____TtC8AppStore33ProductPageLinkCollectionViewCell_iconImage];
  *&v2[OBJC_IVAR____TtC8AppStore33ProductPageLinkCollectionViewCell_iconImage] = 0;

  return sub_1005B06B4();
}

uint64_t sub_1001336C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_100135F00(&qword_1009749E0, type metadata accessor for ProductPageLinkCollectionViewCell, &unk_1007B873C);

  return static ConfigurableCell<>.dequeueConfiguredCell(in:collectionView:asPartOf:)(a1, a2, a3, v5, a5, v10);
}

uint64_t sub_1001337D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  WitnessTable = swift_getWitnessTable();

  return sub_100538BFC(a1, a2, a3, WitnessTable);
}

uint64_t sub_100133850(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable();

  return static ConfigurableCell<>.dequeueConfiguredCell(in:collectionView:asPartOf:)(a1, a2, a3, a4, a5, WitnessTable);
}

void sub_1001338D4(uint64_t a3@<X2>, uint64_t x8_0@<X8>)
{
  WitnessTable = swift_getWitnessTable();

  sub_10048F4BC(a3, WitnessTable, x8_0);
}

uint64_t sub_100133958(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable();

  return sub_10048F75C(a1, a2, a3, a4, WitnessTable, a5);
}

uint64_t sub_1001339DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable();

  return static ConfigurableCell<>.dequeueConfiguredCell(in:collectionView:asPartOf:)(a1, a2, a3, a4, a5, WitnessTable);
}

uint64_t sub_100133A60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_100135F00(&qword_100974990, type metadata accessor for ProductLockupCollectionViewCell, &unk_1007B5188);

  return static ConfigurableCell<>.dequeueConfiguredCell(in:collectionView:asPartOf:)(a1, a2, a3, v5, a5, v10);
}

uint64_t sub_100133B78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_100135F00(&qword_100974980, type metadata accessor for QuoteCollectionViewCell, &unk_1007B8564);

  return static ConfigurableCell<>.dequeueConfiguredCell(in:collectionView:asPartOf:)(a1, a2, a3, v5, a5, v10);
}

uint64_t sub_100133C8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  WitnessTable = swift_getWitnessTable();

  return sub_100538BFC(a1, a2, a3, WitnessTable);
}

uint64_t sub_100133D08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable();

  return static ConfigurableCell<>.dequeueConfiguredCell(in:collectionView:asPartOf:)(a1, a2, a3, a4, a5, WitnessTable);
}

void sub_100133D8C(uint64_t a3@<X2>, uint64_t x8_0@<X8>)
{
  WitnessTable = swift_getWitnessTable();

  sub_10048F4BC(a3, WitnessTable, x8_0);
}

uint64_t sub_100133E10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable();

  return sub_10048F75C(a1, a2, a3, a4, WitnessTable, a5);
}

uint64_t sub_100133F10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  WitnessTable = swift_getWitnessTable();

  return sub_100538BFC(a1, a2, a3, WitnessTable);
}

uint64_t sub_100133F8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable();

  return static ConfigurableCell<>.dequeueConfiguredCell(in:collectionView:asPartOf:)(a1, a2, a3, a4, a5, WitnessTable);
}

void sub_100134010(uint64_t a3@<X2>, uint64_t x8_0@<X8>)
{
  WitnessTable = swift_getWitnessTable();

  sub_10048F4BC(a3, WitnessTable, x8_0);
}

uint64_t sub_100134094(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable();

  return sub_10048F75C(a1, a2, a3, a4, WitnessTable, a5);
}

uint64_t sub_100134118(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable();

  return static ConfigurableCell<>.dequeueConfiguredCell(in:collectionView:asPartOf:)(a1, a2, a3, a4, a5, WitnessTable);
}

uint64_t sub_100134220(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_100135F00(&qword_1009748B0, type metadata accessor for SmallBreakoutCollectionViewCell, &unk_1007B833C);

  return static ConfigurableCell<>.dequeueConfiguredCell(in:collectionView:asPartOf:)(a1, a2, a3, v5, a5, v10);
}

uint64_t sub_100134334(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v4, "prepareForReuse");
  return dispatch thunk of SmallPlayerCardView.prepareForReuse()();
}

uint64_t sub_10013438C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_100135F00(&qword_1009748A0, type metadata accessor for SmallContactCardCollectionViewCell, &unk_1007B8294);

  return static ConfigurableCell<>.dequeueConfiguredCell(in:collectionView:asPartOf:)(a1, a2, a3, v5, a5, v10);
}

uint64_t sub_1001344A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  WitnessTable = swift_getWitnessTable();

  return sub_100538BFC(a1, a2, a3, WitnessTable);
}

uint64_t sub_10013451C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable();

  return static ConfigurableCell<>.dequeueConfiguredCell(in:collectionView:asPartOf:)(a1, a2, a3, a4, a5, WitnessTable);
}

void sub_1001345A0(uint64_t a3@<X2>, uint64_t x8_0@<X8>)
{
  WitnessTable = swift_getWitnessTable();

  sub_10048F4BC(a3, WitnessTable, x8_0);
}

uint64_t sub_100134624(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable();

  return sub_10048F75C(a1, a2, a3, a4, WitnessTable, a5);
}

uint64_t sub_1001346A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_100135F00(&qword_100974878, type metadata accessor for SmallLockupCollectionViewCell, &unk_1007D2160);

  return static ConfigurableCell<>.dequeueConfiguredCell(in:collectionView:asPartOf:)(a1, a2, a3, v5, a5, v10);
}

uint64_t sub_1001347C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  WitnessTable = swift_getWitnessTable();

  return sub_100538BFC(a1, a2, a3, WitnessTable);
}

uint64_t sub_100134840(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable();

  return static ConfigurableCell<>.dequeueConfiguredCell(in:collectionView:asPartOf:)(a1, a2, a3, a4, a5, WitnessTable);
}

void sub_1001348C4(uint64_t a3@<X2>, uint64_t x8_0@<X8>)
{
  WitnessTable = swift_getWitnessTable();

  sub_10048F4BC(a3, WitnessTable, x8_0);
}

uint64_t sub_100134948(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable();

  return sub_10048F75C(a1, a2, a3, a4, WitnessTable, a5);
}

uint64_t sub_1001349CC()
{
  v0 = sub_10002849C(&unk_10097DAF0, &qword_1007B2A30);
  __chkstk_darwin(v0 - 8);
  v1 = sub_10002849C(&qword_100975780, &qword_1007BA178);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v7 - v3;
  ItemLayoutContext.mutableState.getter();
  WritableStateLens.init(_:)();
  sub_100135EAC();
  WritableStateLens<A>.currentValue.getter();
  if (v8 == 1)
  {
    WritableStateLens<A>.updateValue(_:)();
    sub_10002849C(&qword_100975748, &qword_1007BA160);
    type metadata accessor for SelectableShelfComponentViewReaction();
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_1007B1E00;
    static SelectableShelfComponentViewReaction.propagate.getter();
    static SelectableShelfComponentViewReaction.deselect.getter();
    static SelectableShelfComponentViewReaction.reapply.getter();
  }

  else
  {
    sub_10002849C(&qword_100975748, &qword_1007BA160);
    type metadata accessor for SelectableShelfComponentViewReaction();
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_1007B10D0;
    static SelectableShelfComponentViewReaction.deselect.getter();
  }

  v8 = v5;
  sub_100135F00(&qword_100975750, &type metadata accessor for SelectableShelfComponentViewReaction, &protocol conformance descriptor for SelectableShelfComponentViewReaction);
  sub_10002849C(&qword_100975758, &qword_1007DA2A0);
  sub_100135DA0();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  return (*(v2 + 8))(v4, v1);
}

uint64_t sub_100134DB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  WitnessTable = swift_getWitnessTable();

  return sub_100538BFC(a1, a2, a3, WitnessTable);
}

uint64_t sub_100134E30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable();

  return static ConfigurableCell<>.dequeueConfiguredCell(in:collectionView:asPartOf:)(a1, a2, a3, a4, a5, WitnessTable);
}

void sub_100134EB4(uint64_t a3@<X2>, uint64_t x8_0@<X8>)
{
  WitnessTable = swift_getWitnessTable();

  sub_10048F4BC(a3, WitnessTable, x8_0);
}

uint64_t sub_100134F38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable();

  return sub_10048F75C(a1, a2, a3, a4, WitnessTable, a5);
}

uint64_t sub_100134FD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_100135F00(&qword_100974808, type metadata accessor for UberCollectionViewCell, &unk_1007CD860);

  return static ConfigurableCell<>.dequeueConfiguredCell(in:collectionView:asPartOf:)(a1, a2, a3, v5, a5, v10);
}

uint64_t sub_10013506C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable();

  return static ConfigurableCell<>.dequeueConfiguredCell(in:collectionView:asPartOf:)(a1, a2, a3, a4, a5, WitnessTable);
}

uint64_t sub_10013516C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  WitnessTable = swift_getWitnessTable();

  return sub_100538BFC(a1, a2, a3, WitnessTable);
}

uint64_t sub_1001351E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable();

  return static ConfigurableCell<>.dequeueConfiguredCell(in:collectionView:asPartOf:)(a1, a2, a3, a4, a5, WitnessTable);
}

void sub_10013526C(uint64_t a3@<X2>, uint64_t x8_0@<X8>)
{
  WitnessTable = swift_getWitnessTable();

  sub_10048F4BC(a3, WitnessTable, x8_0);
}

uint64_t sub_1001352F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable();

  return sub_10048F75C(a1, a2, a3, a4, WitnessTable, a5);
}

uint64_t sub_1001353F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_100135F00(&qword_1009747C8, type metadata accessor for VideoCardCollectionViewCell, &unk_1007B7E48);

  return static ConfigurableCell<>.dequeueConfiguredCell(in:collectionView:asPartOf:)(a1, a2, a3, v5, a5, v10);
}

uint64_t sub_10013553C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable();

  return static ConfigurableCell<>.dequeueConfiguredCell(in:collectionView:asPartOf:)(a1, a2, a3, a4, a5, WitnessTable);
}

uint64_t sub_1001355C0@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for ComponentSeparator.Position();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for SearchAdAction();
  sub_100135F00(&unk_100983980, &type metadata accessor for SearchAdAction, &protocol conformance descriptor for Action);
  if (ItemLayoutContext.typedModel<A>(is:)())
  {
    (*(v3 + 104))(v5, enum case for ComponentSeparator.Position.bottom(_:), v2);
    ComponentSeparator.init(position:leadingInset:trailingInset:color:)();
    v6 = type metadata accessor for ComponentSeparator();
    return (*(*(v6 - 8) + 56))(a1, 0, 1, v6);
  }

  else
  {
    v8 = type metadata accessor for ComponentSeparator();
    v9 = *(*(v8 - 8) + 56);

    return v9(a1, 1, 1, v8);
  }
}

void (*sub_10013583C(uint64_t *a1))(void *a1)
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
  *(v2 + 32) = sub_100344008(v2);
  return sub_1000BD370;
}

uint64_t sub_1001358B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable();

  return static ConfigurableCell<>.dequeueConfiguredCell(in:collectionView:asPartOf:)(a1, a2, a3, v5, a5, WitnessTable);
}

uint64_t sub_1001359C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_100135F00(&qword_100974768, type metadata accessor for ArcadeDownloadPackCollectionViewCell, &unk_1007B7C00);

  return static ConfigurableCell<>.dequeueConfiguredCell(in:collectionView:asPartOf:)(a1, a2, a3, v5, a5, v10);
}

uint64_t sub_100135A64@<X0>(uint64_t *a1@<X2>, uint64_t a2@<X8>)
{
  v4 = *a1;
  swift_beginAccess();
  return sub_10009768C(v2 + v4, a2);
}

uint64_t sub_100135AC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v6 = *a4;
  swift_beginAccess();
  sub_10009761C(a1, v4 + v6);
  return swift_endAccess();
}

uint64_t sub_100135BBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable();

  return static ConfigurableCell<>.dequeueConfiguredCell(in:collectionView:asPartOf:)(a1, a2, a3, a4, a5, WitnessTable);
}

uint64_t sub_100135C40(uint64_t a1)
{
  result = sub_100135F00(&qword_100975728, type metadata accessor for TitledParagraphCollectionViewCell, &unk_1007B7F98);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_100135C98(uint64_t a1)
{
  result = sub_100135F00(&qword_100975730, type metadata accessor for ProductDescriptionCollectionViewCell, &unk_1007B87B4);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_100135CF0(uint64_t a1)
{
  result = sub_100135F00(&qword_100975738, type metadata accessor for ParagraphCollectionViewCell, &unk_1007B8E40);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_100135D48(uint64_t a1)
{
  result = sub_100135F00(&qword_100975740, type metadata accessor for AnnotationCollectionViewCell, &unk_1007B9F8C);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100135DA0()
{
  result = qword_100975760;
  if (!qword_100975760)
  {
    sub_10002D1A8(&qword_100975758, &qword_1007DA2A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100975760);
  }

  return result;
}

unint64_t sub_100135E04()
{
  result = qword_100992FF0;
  if (!qword_100992FF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100992FF0);
  }

  return result;
}

unint64_t sub_100135E58()
{
  result = qword_100975778;
  if (!qword_100975778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100975778);
  }

  return result;
}

unint64_t sub_100135EAC()
{
  result = qword_100975788;
  if (!qword_100975788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100975788);
  }

  return result;
}

uint64_t sub_100135F00(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

id sub_100135F78@<X0>(uint64_t a1@<X8>)
{
  v1 = sub_10002849C(&qword_100975868, qword_1007BA1E8);
  __chkstk_darwin(v1 - 8);
  SmallPlayerCardData.id.getter();
  v12 = SmallPlayerCardData.title.getter();
  v11 = v2;
  v10 = SmallPlayerCardData.subtitle.getter();
  v9 = v3;
  SmallPlayerCardData.buttonText.getter();
  SmallPlayerCardData.avatarArtworkLoaderConfig.getter();
  SmallPlayerCardData.avatarImage.getter();
  SmallPlayerCardData.shouldShowMessagesBadge.getter();
  SmallPlayerCardData.buttonAction.getter();
  SmallPlayerCardData.removeButtonAction.getter();
  v4 = objc_opt_self();
  result = [v4 shared];
  if (result)
  {
    v6 = result;
    v7 = [result isAccountModificationRestricted];

    if (v7)
    {
LABEL_5:
      SmallPlayerCardData.segue.getter();
      return SmallPlayerCardData.init(id:title:subtitle:buttonText:avatarArtworkLoaderConfig:avatarImage:shouldShowMessagesBadge:buttonAction:removeButtonAction:isEnabled:segue:messagesGroupIdentifier:groupRecipients:)();
    }

    result = [v4 shared];
    if (result)
    {
      v8 = result;
      [result isAddingFriendsRestricted];

      goto LABEL_5;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_100136174(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_10002849C(&unk_100972A00, &unk_1007B3130);
  __chkstk_darwin(v4 - 8);
  v6 = &v24 - v5;
  v7 = type metadata accessor for SmallPlayerCardData();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v24 - v12;
  ImpressionableSmallPlayerCard.data.getter();
  SmallPlayerCardData.buttonAction.getter();
  v14 = *(v8 + 8);
  v14(v13, v7);
  if (!v29[3])
  {
    return sub_10002B894(v29, &qword_100975850, &qword_1007BA1E0);
  }

  sub_10002849C(&unk_100975858, &unk_1007D6F80);
  type metadata accessor for Action();
  result = swift_dynamicCast();
  if (result)
  {
    v25 = v28;
    type metadata accessor for ASKBagContract();
    type metadata accessor for BaseObjectGraph();
    inject<A, B>(_:from:)();
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v17 = Strong;
      ImpressionableSmallPlayerCard.data.getter();
      SmallPlayerCardData.id.getter();
      v14(v10, v7);
      v18 = swift_dynamicCast();
      v19 = v18 == 0;
      if (v18)
      {
        v20 = v26;
      }

      else
      {
        v20 = 0;
      }

      if (v19)
      {
        v21 = 0;
      }

      else
      {
        v21 = v27;
      }

      sub_1005A7DB8(v20, v21);
    }

    v22 = sub_10002849C(&unk_100974490, &qword_1007B3DD0);
    BaseObjectGraph.injectIfAvailable<A>(_:)();
    v23 = *(v22 - 8);
    if ((*(v23 + 48))(v6, 1, v22) == 1)
    {

      return sub_10002B894(v6, &unk_100972A00, &unk_1007B3130);
    }

    else
    {
      sub_1005F9AF4(v25, 1, a2, v6);

      return (*(v23 + 8))(v6, v22);
    }
  }

  return result;
}

uint64_t sub_1001364FC(uint64_t a1, uint64_t a2)
{
  v3 = sub_10002849C(&unk_100972A00, &unk_1007B3130);
  __chkstk_darwin(v3 - 8);
  v5 = &v15[-v4 - 8];
  v6 = type metadata accessor for SmallPlayerCardData();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v15[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  ImpressionableSmallPlayerCard.data.getter();
  SmallPlayerCardData.removeButtonAction.getter();
  (*(v7 + 8))(v9, v6);
  if (!v16)
  {
    return sub_10002B894(v15, &qword_100975850, &qword_1007BA1E0);
  }

  sub_10002849C(&unk_100975858, &unk_1007D6F80);
  type metadata accessor for Action();
  result = swift_dynamicCast();
  if (result)
  {
    v11 = v14;
    v12 = sub_10002849C(&unk_100974490, &qword_1007B3DD0);
    BaseObjectGraph.injectIfAvailable<A>(_:)();
    v13 = *(v12 - 8);
    if ((*(v13 + 48))(v5, 1, v12) == 1)
    {

      return sub_10002B894(v5, &unk_100972A00, &unk_1007B3130);
    }

    else
    {
      sub_1005F9AF4(v11, 1, a2, v5);

      return (*(v13 + 8))(v5, v12);
    }
  }

  return result;
}

double sub_100136768(uint64_t a1)
{
  if (a1)
  {

    Artwork.config(using:)();
    type metadata accessor for ArtworkLoader();
    type metadata accessor for SmallPlayerCardView();
    static ArtworkLoader.handlerKey<A>(for:)();
    swift_allocObject();
    swift_unknownObjectWeakInit();

    ArtworkLoader.fetchArtwork(using:closestMatch:handlerKey:completionHandler:)();

    sub_10002B894(v2, &qword_10096FB90, &qword_1007B2A50);
  }

  return result;
}

void sub_10013688C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = *(Strong + OBJC_IVAR____TtC8AppStore34SmallContactCardCollectionViewCell_smallPlayerCard);

    swift_beginAccess();
    v8 = swift_unknownObjectWeakLoadStrong();
    if (v8)
    {
      v9 = v8;
      v10 = *(v8 + OBJC_IVAR____TtC8AppStore34SmallContactCardCollectionViewCell_smallPlayerCard);

      v11 = dispatch thunk of SmallPlayerCardView.image.getter();
      if (v11)
      {
      }
    }

    dispatch thunk of SmallPlayerCardView.show(image:isAnimationPermitted:)();
  }
}

uint64_t sub_1001369CC()
{
  type metadata accessor for ArtworkLoader();
  type metadata accessor for SmallPlayerCardView();
  static ArtworkLoader.handlerKey<A>(for:)();
  ArtworkLoader.forgetFetch(forHandlerKey:deprioritizingFetch:)();
  return sub_10003D614(v1);
}

uint64_t sub_100136A4C(double a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  type metadata accessor for SmallPlayerCardView();
  static SmallPlayerCardView.size(fitting:traitEnvironment:)();
  v8 = [objc_opt_self() absoluteDimension:v7];
  v9 = static ComponentLayoutBuilder.columnGroup(separatedBy:itemHeight:groupWidth:rowCount:)();

  return v9;
}

uint64_t sub_100136B80(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100136BC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for SmallPlayerCardData();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v17 - v10;
  ImpressionableSmallPlayerCard.data.getter();
  sub_100135F78(v11);
  v12 = *(v6 + 8);
  v12(v8, v5);
  dispatch thunk of SmallPlayerCardView.apply(data:shouldSetImage:)();
  v12(v11, v5);
  v13 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v14 = swift_allocObject();
  v14[2] = a1;
  v14[3] = a3;
  v14[4] = v13;

  dispatch thunk of SmallPlayerCardView.buttonActionBlock.setter();

  v15 = swift_allocObject();
  *(v15 + 16) = a1;
  *(v15 + 24) = a3;

  return dispatch thunk of SmallPlayerCardView.closeButtonActionBlock.setter();
}

id sub_100136DEC(uint64_t a1)
{
  swift_getWitnessTable();
  v1 = LinkPresentationProvider.deinit();

  return v1;
}

double sub_100136E48()
{
  v1 = type metadata accessor for WhatsNewItem();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (WelcomeOnboardingStep.hasUnacknowledgedWhatsNewItems.getter())
  {
    v6 = WelcomeOnboardingStep.enabledWhatsNewItems.getter();
    v7 = *(v6 + 16);
    if (v7)
    {
      v26 = v1;
      v27 = v0;
      v9 = *(v2 + 16);
      v8 = v2 + 16;
      v10 = *(v8 + 64);
      v22 = v6;
      v11 = v6 + ((v10 + 32) & ~v10);
      v23 = *(v8 + 56);
      v24 = v9;
      v25 = v8;
      v12 = (v8 - 8);
      v9(v4, v11, v1);
      while (1)
      {
        v18 = WhatsNewItem.isCustomSymbol.getter();
        WhatsNewItem.title.getter();
        v19 = String._bridgeToObjectiveC()();

        WhatsNewItem.body.getter();
        v20 = String._bridgeToObjectiveC()();

        WhatsNewItem.symbolName.getter();
        v21 = String._bridgeToObjectiveC()();

        if (v18)
        {
          v14 = [objc_opt_self() imageNamed:{v21, v22}];

          if (v14)
          {
            v13 = &selRef_addBulletedListItemWithTitle_description_image_;
            v21 = v14;
          }

          else
          {
            v21 = [objc_allocWithZone(UIImage) init];
            v13 = &selRef_addBulletedListItemWithTitle_description_image_;
            v14 = v21;
          }

          v15 = v19;
          v16 = v20;
        }

        else
        {
          v13 = &selRef_addBulletedListItemWithTitle_description_symbolName_;
          v14 = v19;
          v15 = v20;
          v16 = v21;
        }

        [v27 *v13];

        v17 = v26;
        (*v12)(v4, v26);
        v11 += v23;
        if (!--v7)
        {
          break;
        }

        v24(v4, v11, v17);
      }
    }

    else
    {
    }
  }

  return result;
}

void sub_1001370E4()
{
  v1 = v0;
  v2 = type metadata accessor for AutomationSemantics();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Locale();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = objc_opt_self();
  WelcomeOnboardingStep.privacyIdentifiers.getter();
  isa = Array._bridgeToObjectiveC()().super.isa;

  v12 = [v10 linkWithBundleIdentifiers:isa];

  if (v12)
  {
    v13 = v12;
    static Locale.storefront.getter();
    Locale.identifier.getter();
    (*(v7 + 8))(v9, v6);
    v14 = String._bridgeToObjectiveC()();

    [v13 setDisplayLanguage:v14];
  }

  v15 = [v1 buttonTray];
  [v15 setPrivacyLinkController:v12];

  v16 = [objc_opt_self() boldButton];
  v17._object = 0x8000000100802BB0;
  v17._countAndFlagsBits = 0xD00000000000001FLL;
  v18._countAndFlagsBits = 0;
  v18._object = 0xE000000000000000;
  localizedString(_:comment:)(v17, v18);
  v19 = String._bridgeToObjectiveC()();

  [v16 setTitle:v19 forState:0];

  [v16 addTarget:v1 action:"didTapContinue" forControlEvents:64];
  memset(v22, 0, sizeof(v22));
  memset(v21, 0, sizeof(v21));
  static AutomationSemantics.onboarding(elementName:id:parentId:)();
  sub_10003D444(v21);
  sub_10003D444(v22);
  UIView.setAutomationSemantics(_:)();
  (*(v3 + 8))(v5, v2);
  v20 = [v1 buttonTray];
  [v20 addButton:v16];
}

uint64_t type metadata accessor for OnboardingWelcomeViewController(uint64_t a1)
{
  result = qword_1009758A8;
  if (!qword_1009758A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100137678(uint64_t a1, __n128 a2)
{
  result = type metadata accessor for WelcomeOnboardingStep();
  if (v3 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

id sub_100137718(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v8 = a2;
  ObjectType = swift_getObjectType();
  v10 = type metadata accessor for SystemAppIcon();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtC8AppStore31OnboardingWelcomeViewController_onboardingStep;
  v15 = type metadata accessor for WelcomeOnboardingStep();
  v16 = *(v15 - 8);
  v17 = *(v16 + 16);
  v38 = v15;
  v17(&v5[v14], a1);
  v18 = &v5[OBJC_IVAR____TtC8AppStore31OnboardingWelcomeViewController_primaryButtonCallback];
  *v18 = a3;
  *(v18 + 1) = a4;

  v39 = a1;
  if (WelcomeOnboardingStep.hasUnacknowledgedWhatsNewItems.getter())
  {
    v19 = "Onboarding.Welcome.Description";
    if (v8)
    {
      v19 = "New.Title.NoArcade";
      v20 = 0xD000000000000019;
    }

    else
    {
      v20 = 0xD000000000000022;
    }

    v21 = v19 | 0x8000000000000000;
    v22._countAndFlagsBits = 0;
    v22._object = 0xE000000000000000;
    localizedString(_:comment:)(*&v20, v22);
    v23 = String._bridgeToObjectiveC()();

    v40.receiver = v5;
    v40.super_class = ObjectType;
    v24 = objc_msgSendSuper2(&v40, "initWithTitle:detailText:icon:contentLayout:", v23, 0, 0, 2);

    v25 = v24;
    sub_100136E48();
  }

  else
  {
    v26._object = 0x8000000100802B20;
    v26._countAndFlagsBits = 0xD000000000000018;
    v27._countAndFlagsBits = 0;
    v27._object = 0xE000000000000000;
    localizedString(_:comment:)(v26, v27);
    v28._countAndFlagsBits = 0xD00000000000001ELL;
    v28._object = 0x8000000100802B40;
    v29._countAndFlagsBits = 0;
    v29._object = 0xE000000000000000;
    localizedString(_:comment:)(v28, v29);
    v30 = String._bridgeToObjectiveC()();

    v31 = String._bridgeToObjectiveC()();

    (*(v11 + 104))(v13, enum case for SystemAppIcon.AppStore(_:), v10);
    v32 = [objc_opt_self() mainScreen];
    [v32 scale];

    v33 = SystemAppIcon.uiImage(size:scale:drawBorder:)();
    (*(v11 + 8))(v13, v10);
    v41.receiver = v5;
    v41.super_class = ObjectType;
    v34 = objc_msgSendSuper2(&v41, "initWithTitle:detailText:icon:contentLayout:", v30, v31, v33, 2);

    v25 = v34;
  }

  sub_1001370E4();
  [v25 setModalInPresentation:1];

  (*(v16 + 8))(v39, v38);
  return v25;
}

char *sub_100137AA8(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR____TtC8AppStore24ProductReviewActionsCell_productReviewActionsView;
  type metadata accessor for ProductReviewActionsView(0);
  *&v4[v9] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v10 = OBJC_IVAR____TtC8AppStore24ProductReviewActionsCell_separatorView;
  type metadata accessor for SeparatorView(0);
  *&v4[v10] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v20.receiver = v4;
  v20.super_class = type metadata accessor for ProductReviewActionsCell();
  v11 = objc_msgSendSuper2(&v20, "initWithFrame:", a1, a2, a3, a4);
  v12 = [v11 contentView];
  [v12 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];

  v13 = OBJC_IVAR____TtC8AppStore24ProductReviewActionsCell_separatorView;
  v14 = *&v11[OBJC_IVAR____TtC8AppStore24ProductReviewActionsCell_separatorView];
  sub_100005744(0, &qword_100970180, UIColor_ptr);
  v15 = v14;
  v16 = static UIColor.defaultLine.getter();
  [v15 setBackgroundColor:v16];

  [*&v11[v13] setHidden:1];
  v17 = [v11 contentView];
  [v17 addSubview:*&v11[v13]];

  v18 = [v11 contentView];
  [v18 addSubview:*&v11[OBJC_IVAR____TtC8AppStore24ProductReviewActionsCell_productReviewActionsView]];

  return v11;
}

id sub_100137D5C()
{
  v1 = v0;
  v13.receiver = v0;
  v13.super_class = type metadata accessor for ProductReviewActionsCell();
  objc_msgSendSuper2(&v13, "layoutSubviews");
  v2 = [v0 contentView];
  sub_100005744(0, &qword_100972EB0, UIView_ptr);
  LayoutMarginsAware<>.layoutFrame.getter();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  [*&v1[OBJC_IVAR____TtC8AppStore24ProductReviewActionsCell_productReviewActionsView] setFrame:{v4, v6, v8, v10}];
  v14.origin.x = v4;
  v14.origin.y = v6;
  v14.size.width = v8;
  v14.size.height = v10;
  CGRectGetMinX(v14);
  v15.origin.x = v4;
  v15.origin.y = v6;
  v15.size.width = v8;
  v15.size.height = v10;
  CGRectGetMinY(v15);
  v16.origin.x = v4;
  v16.origin.y = v6;
  v16.size.width = v8;
  v16.size.height = v10;
  CGRectGetWidth(v16);
  if (qword_10096EE38 != -1)
  {
    swift_once();
  }

  v11 = *&v1[OBJC_IVAR____TtC8AppStore24ProductReviewActionsCell_separatorView];
  CGRect.withLayoutDirection(in:relativeTo:)();
  return [v11 setFrame:?];
}

id sub_100137F54()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ProductReviewActionsCell();
  return objc_msgSendSuper2(&v2, "dealloc");
}

double sub_100138044()
{
  v0 = type metadata accessor for PageGrid();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Screenshots();
  sub_100138268(&qword_1009758F0, &type metadata accessor for Screenshots, &protocol conformance descriptor for Screenshots);
  ItemLayoutContext.typedModel<A>(as:)();
  if (!v12[1])
  {
    return 0.0;
  }

  v12[0] = Screenshots.artwork.getter();
  v4 = Screenshots.mediaPlatform.getter();
  v5 = sub_100079F24();
  swift_getKeyPath();
  ItemLayoutContext.subscript.getter();

  PageGrid.componentMeasuringSize(spanning:)();
  v6 = *(v1 + 8);
  v6(v3, v0);
  swift_getKeyPath();
  ItemLayoutContext.subscript.getter();

  PageGrid.componentMeasuringSize(spanning:)();
  v8 = v7;
  v6(v3, v0);
  sub_1004D62C0(v12[0], v4, v5, 0.0, 0.0, v8);
  v10 = v9;

  swift_unknownObjectRelease();

  return v10;
}

uint64_t sub_100138268(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1001382B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v7 = v6;
  v10 = sub_10002849C(&qword_100975948, &qword_1007BA330);
  *&v11 = __chkstk_darwin(v10 - 8).n128_u64[0];
  v13 = v63 - v12;
  [a6 pageMarginInsets];
  [v6 setLayoutMargins:?];
  if (qword_10096EAD8 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for ArcadeFooterLayout.Metrics();
  v15 = sub_1000056A8(v14, qword_10098ED30);
  __chkstk_darwin(v15);
  v63[-2] = a6;
  Copyable.copyWithOverrides(in:)();
  (*(*(v14 - 8) + 56))(v13, 0, 1, v14);
  v16 = OBJC_IVAR____TtC8AppStore30ArcadeFooterCollectionViewCell_metrics;
  swift_beginAccess();
  sub_100138D5C(v13, &v7[v16]);
  swift_endAccess();
  [v7 setNeedsLayout];
  sub_10002B894(v13, &qword_100975948, &qword_1007BA330);
  if (ArcadeFooter.footnote.getter())
  {
    v17 = *&v7[OBJC_IVAR____TtC8AppStore30ArcadeFooterCollectionViewCell_footnoteView];
    v18 = Footnote.presentationStyle.getter();
    v19 = v17[OBJC_IVAR____TtC8AppStore12FootnoteView_hasChevron];
    v17[OBJC_IVAR____TtC8AppStore12FootnoteView_hasChevron] = (v18 & 2) != 0;
    sub_10007B3E8(v19);
    v17[OBJC_IVAR____TtC8AppStore12FootnoteView_textLightensOnHighlight] = (Footnote.presentationStyle.getter() & 4) != 0;
    v20 = *&v17[OBJC_IVAR____TtC8AppStore12FootnoteView_textLabel];
    Footnote.text.getter();
    v21 = String._bridgeToObjectiveC()();

    [v20 setText:v21];

    [v17 setNeedsLayout];
    v22 = dispatch thunk of Footnote.clickAction.getter();
    if (v22)
    {
      v23 = v22;
      dispatch thunk of Footnote.clickSender.getter();
      v24 = swift_allocObject();
      *(v24 + 16) = a3;
      *(v24 + 24) = v23;
      v25 = &v7[OBJC_IVAR____TtC8AppStore30ArcadeFooterCollectionViewCell_footnoteActionBlock];
      v26 = *&v7[OBJC_IVAR____TtC8AppStore30ArcadeFooterCollectionViewCell_footnoteActionBlock];
      v27 = *&v7[OBJC_IVAR____TtC8AppStore30ArcadeFooterCollectionViewCell_footnoteActionBlock + 8];
      *v25 = sub_100138E30;
      *(v25 + 1) = v24;
      swift_retain_n();

      sub_10001F63C(v26, v27);
      v28 = *&v7[OBJC_IVAR____TtC8AppStore30ArcadeFooterCollectionViewCell_footnoteTapGestureRecognizer];

      [v28 setEnabled:1];

      sub_10002B894(v63, &unk_1009711D0, &unk_1007B1A10);
    }

    else
    {
    }
  }

  else
  {
    v29 = &v7[OBJC_IVAR____TtC8AppStore30ArcadeFooterCollectionViewCell_footnoteActionBlock];
    v30 = *&v7[OBJC_IVAR____TtC8AppStore30ArcadeFooterCollectionViewCell_footnoteActionBlock];
    v31 = *&v7[OBJC_IVAR____TtC8AppStore30ArcadeFooterCollectionViewCell_footnoteActionBlock + 8];
    *v29 = 0;
    *(v29 + 1) = 0;
    sub_10001F63C(v30, v31);
    [*&v7[OBJC_IVAR____TtC8AppStore30ArcadeFooterCollectionViewCell_footnoteTapGestureRecognizer] setEnabled:0];
  }

  v32 = ArcadeFooter.buttonAction.getter();
  if (v32)
  {
    v33 = v32;
    v34 = *&v7[OBJC_IVAR____TtC8AppStore30ArcadeFooterCollectionViewCell_buttonView];
    Action.title.getter();
    if (v35)
    {
      v36 = String._bridgeToObjectiveC()();
    }

    else
    {
      v36 = 0;
    }

    [v34 setTitle:v36 forState:0];

    v37 = swift_allocObject();
    *(v37 + 16) = a3;
    *(v37 + 24) = v33;
    v38 = &v7[OBJC_IVAR____TtC8AppStore30ArcadeFooterCollectionViewCell_buttonActionBlock];
    v39 = *&v7[OBJC_IVAR____TtC8AppStore30ArcadeFooterCollectionViewCell_buttonActionBlock];
    v40 = *&v7[OBJC_IVAR____TtC8AppStore30ArcadeFooterCollectionViewCell_buttonActionBlock + 8];
    *v38 = sub_100138DCC;
    v38[1] = v37;
    swift_retain_n();

    sub_10001F63C(v39, v40);

    [v34 addTarget:v7 action:"buttonTapped" forControlEvents:64];
  }

  type metadata accessor for ArtworkLoader();
  type metadata accessor for BaseObjectGraph();
  inject<A, B>(_:from:)();
  v41 = v63[0];
  sub_100604FD0(a6, v42);
  v43 = ArcadeFooter.icons.getter();
  if (!v43)
  {
    goto LABEL_27;
  }

  v44 = v43;
  v45 = v43 >> 62;
  if (v43 >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_16;
    }

    goto LABEL_26;
  }

  if (!*((v43 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_26:

LABEL_27:
    v57 = *&v7[OBJC_IVAR____TtC8AppStore30ArcadeFooterCollectionViewCell_riverView];
    if (!v57)
    {
      goto LABEL_30;
    }

    v58 = v57;
    v59 = dispatch thunk of RiverView.dataSource.getter();

    *(v59 + 48) = 1;
    goto LABEL_29;
  }

LABEL_16:
  v46 = OBJC_IVAR____TtC8AppStore30ArcadeFooterCollectionViewCell_riverView;
  v47 = *&v7[OBJC_IVAR____TtC8AppStore30ArcadeFooterCollectionViewCell_riverView];
  if (v47 && (v48 = v47, v49 = dispatch thunk of RiverView.dataSource.getter(), v48, *(v49 + 40) = v44, , , , (v50 = *&v7[v46]) != 0))
  {
    v51 = v50;
    v52 = dispatch thunk of RiverView.dataSource.getter();

    if (v45)
    {
      v53 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v53 = *((v44 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v52 + 48) = v53;

    v54 = *&v7[v46];
    if (v54)
    {
      goto LABEL_24;
    }
  }

  else
  {

    v54 = *&v7[v46];
    if (v54)
    {
LABEL_24:
      v55 = v54;
      v56 = dispatch thunk of RiverView.dataSource.getter();

      *(v56 + 56) = v41;

LABEL_29:
    }
  }

LABEL_30:
  v60 = ArcadeFooter.backgroundColor.getter();
  if (v60)
  {

    v61 = [objc_opt_self() whiteColor];
  }

  else
  {
    sub_100028BB8();
    v61 = static UIColor.placeholderBackgroundStandout.getter();
  }

  v62 = v61;
  [*&v7[OBJC_IVAR____TtC8AppStore30ArcadeFooterCollectionViewCell_buttonView] _setBackgroundColor:v61];
  [v7 setNeedsLayout];
}

uint64_t sub_1001389A8(uint64_t a1, uint64_t a2)
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

  sub_1005F9AF4(a2, 1, a1, v6);

  return (*(v8 + 8))(v6, v7);
}

double sub_100138AEC(double a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = type metadata accessor for ArcadeFooterLayout.Metrics();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10096EAD8 != -1)
  {
    swift_once();
  }

  v13 = sub_1000056A8(v9, qword_10098ED30);
  __chkstk_darwin(v13);
  *(&v17 - 2) = a8;
  Copyable.copyWithOverrides(in:)();
  type metadata accessor for ArcadeFooterLayout();
  sub_100138DE8(&qword_100973FC0, &type metadata accessor for ArcadeFooterLayout, &protocol conformance descriptor for ArcadeFooterLayout);
  dispatch thunk of static EstimatedMeasurable.estimatedMeasurements(fitting:using:in:)();
  v15 = v14;
  (*(v10 + 8))(v12, v9);
  return v15;
}

uint64_t sub_100138D5C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10002849C(&qword_100975948, &qword_1007BA330);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_100138DE8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_100138E38()
{
  result = qword_1009747C0;
  if (!qword_1009747C0)
  {
    type metadata accessor for VideoCardCollectionViewCell(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009747C0);
  }

  return result;
}

double sub_100138E90()
{
  v0 = type metadata accessor for PageGrid();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  ShelfLayoutContext.contentPageGrid.getter();
  PageGrid.componentMeasuringSize(spanning:)();
  v5 = v4;
  v7 = v6;
  (*(v1 + 8))(v3, v0);
  if (qword_10096D280 != -1)
  {
    swift_once();
  }

  v8 = ShelfLayoutContext.traitEnvironment.getter();
  v9 = type metadata accessor for VideoCardView(0);
  ObjectType = swift_getObjectType();
  sub_1001C2E40(v5, v7, &qword_1009CE578, v8, v9, ObjectType);
  v12 = v11;
  swift_unknownObjectRelease();
  return v12;
}

double sub_100139004()
{
  v0 = type metadata accessor for PageGrid();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v18 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for ShelfLayoutContext();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  ItemLayoutContext.parentShelfLayoutContext.getter();
  ShelfLayoutContext.contentPageGrid.getter();
  PageGrid.componentMeasuringSize(spanning:)();
  v9 = v8;
  v11 = v10;
  (*(v1 + 8))(v3, v0);
  if (qword_10096D280 != -1)
  {
    swift_once();
  }

  v12 = ShelfLayoutContext.traitEnvironment.getter();
  v13 = type metadata accessor for VideoCardView(0);
  ObjectType = swift_getObjectType();
  sub_1001C2E40(v9, v11, &qword_1009CE578, v12, v13, ObjectType);
  v16 = v15;
  swift_unknownObjectRelease();
  (*(v5 + 8))(v7, v4);
  return v16;
}

uint64_t sub_100139224(uint64_t a1, void *a2, uint64_t a3)
{
  v56 = a2;
  v57 = a3;
  v4 = type metadata accessor for FamilyCircleLookupTask();
  v58 = *(v4 - 8);
  __chkstk_darwin(v4);
  v60 = v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for URL();
  v59 = *(v6 - 8);
  v7 = *(v59 + 64);
  __chkstk_darwin(v6);
  v55 = v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = v46 - v9;
  v11 = sub_10002849C(&unk_1009796F0, &unk_1007BA400);
  __chkstk_darwin(v11 - 8);
  v13 = v46 - v12;
  v14 = type metadata accessor for FlowDestination(0);
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = v46 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = v46 - v19;
  v61 = 0u;
  v62 = 0u;

  sub_100462678(v21, &v61, v13);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    sub_10002B894(v13, &unk_1009796F0, &unk_1007BA400);
  }

  else
  {
    sub_10013A05C(v13, v20);
    sub_100118188(v20, v17);
    if (swift_getEnumCaseMultiPayload() == 17)
    {
      v48 = *v17;
      v49 = a1;
      v22 = sub_10002849C(&qword_100975958, &unk_1007BA410);
      v23 = *(v22 + 48);
      v24 = *(v22 + 64);
      v25 = v59;
      v26 = *(v59 + 32);
      v46[1] = v59 + 32;
      v47 = v26;
      v54 = v10;
      v26(v10, &v17[v24], v6);
      v27 = type metadata accessor for ArcadeWelcomePage.ContentType();
      (*(*(v27 - 8) + 8))(&v17[v23], v27);
      sub_10002849C(&qword_1009764A0, &unk_1007B6230);
      v28 = Promise.__allocating_init()();
      FamilyCircleLookupTask.init()();
      v51 = FamilyCircleLookupTask.perform()();
      v29 = v55;
      (*(v25 + 16))(v55, v10, v6);
      v30 = (*(v25 + 80) + 24) & ~*(v25 + 80);
      v31 = (v7 + v30 + 7) & 0xFFFFFFFFFFFFFFF8;
      v32 = (v31 + 15) & 0xFFFFFFFFFFFFFFF8;
      v52 = v4;
      v53 = v20;
      v33 = (v32 + 15) & 0xFFFFFFFFFFFFFFF8;
      v50 = v6;
      v34 = swift_allocObject();
      v35 = v47;
      *(v34 + 16) = v48;
      v35(v34 + v30, v29, v6);
      v36 = v49;
      *(v34 + v31) = v49;
      v38 = v56;
      v37 = v57;
      *(v34 + v32) = v56;
      *(v34 + v33) = v37;
      *(v34 + ((v33 + 15) & 0xFFFFFFFFFFFFFFF8)) = v28;
      v39 = swift_allocObject();
      *(v39 + 16) = v36;
      *(v39 + 24) = v28;
      v40 = sub_100005744(0, &qword_1009729E0, OS_dispatch_queue_ptr);

      v41 = v38;

      swift_retain_n();
      swift_retain_n();
      v42 = static OS_dispatch_queue.main.getter();
      *(&v62 + 1) = v40;
      v63 = &protocol witness table for OS_dispatch_queue;
      *&v61 = v42;
      Promise.then(perform:orCatchError:on:)();

      (*(v58 + 8))(v60, v52);
      (*(v59 + 8))(v54, v50);
      sub_10013B6D8(v53, type metadata accessor for FlowDestination);
      sub_100007000(&v61);
      return v28;
    }

    sub_10013B6D8(v20, type metadata accessor for FlowDestination);
    sub_10013B6D8(v17, type metadata accessor for FlowDestination);
  }

  if (qword_10096D120 != -1)
  {
    swift_once();
  }

  v43 = type metadata accessor for OSLogger();
  sub_1000056A8(v43, qword_1009CE218);
  sub_10002849C(&unk_100972A10, &qword_1007B1EF0);
  type metadata accessor for LogMessage();
  *(swift_allocObject() + 16) = xmmword_1007B1890;
  LogMessage.init(stringLiteral:)();
  *(&v62 + 1) = type metadata accessor for FlowAction();
  *&v61 = a1;

  static LogMessage.traceableSensitive(_:)();
  sub_10002B894(&v61, &unk_1009711D0, &unk_1007B1A10);
  Logger.error(_:)();

  sub_10002849C(&qword_1009764A0, &unk_1007B6230);
  sub_10013A008();
  swift_allocError();
  *v44 = 1;
  return Promise.__allocating_init(error:)();
}

uint64_t sub_100139968(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  v47 = a6;
  v48 = a7;
  v45 = a4;
  v46 = a5;
  v42 = a3;
  v43 = a2;
  v8 = type metadata accessor for FlowDestination(0);
  v49 = *(v8 - 8);
  v50 = v8;
  __chkstk_darwin(v8);
  v44 = (&v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = type metadata accessor for FamilyCircleLookupResult();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v41 - v15;
  __chkstk_darwin(v17);
  v19 = &v41 - v18;
  v20 = sub_10002849C(&unk_1009796F0, &unk_1007BA400);
  __chkstk_darwin(v20 - 8);
  v22 = &v41 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __chkstk_darwin(v23);
  v26 = (&v41 - v25);
  v27 = *(v11 + 16);
  v27(v19, a1, v10, v24);
  v28 = (*(v11 + 88))(v19, v10);
  if (v28 == enum case for FamilyCircleLookupResult.notInFamily(_:))
  {
    (v27)(v13, v19, v10);
    (*(v11 + 96))(v13, v10);
    if (*v13 == 1)
    {
      v29 = sub_10002849C(&qword_100975958, &unk_1007BA410);
      v30 = *(v29 + 48);
      v31 = *(v29 + 64);
      *v26 = v43;
      v32 = &enum case for ArcadeWelcomePage.ContentType.createNewFamily(_:);
LABEL_7:
      v34 = *v32;
      v35 = type metadata accessor for ArcadeWelcomePage.ContentType();
      (*(*(v35 - 8) + 104))(v26 + v30, v34, v35);
      v36 = type metadata accessor for URL();
      (*(*(v36 - 8) + 16))(v26 + v31, v42, v36);
      v37 = v50;
      swift_storeEnumTagMultiPayload();
      v38 = v49;
      (*(v49 + 56))(v26, 0, 1, v37);

      goto LABEL_9;
    }
  }

  else if (v28 == enum case for FamilyCircleLookupResult.inFamily(_:))
  {
    (v27)(v16, v19, v10);
    (*(v11 + 96))(v16, v10);
    if (*v16 == 1)
    {
      v33 = sub_10002849C(&qword_100975958, &unk_1007BA410);
      v30 = *(v33 + 48);
      v31 = *(v33 + 64);
      *v26 = v43;
      v32 = &enum case for ArcadeWelcomePage.ContentType.familyOrganizer(_:);
      goto LABEL_7;
    }
  }

  v38 = v49;
  v37 = v50;
  (*(v49 + 56))(v26, 1, 1, v50);
LABEL_9:
  (*(v11 + 8))(v19, v10);
  sub_100031660(v26, v22, &unk_1009796F0, &unk_1007BA400);
  if ((*(v38 + 48))(v22, 1, v37) == 1)
  {
    sub_10002B894(v26, &unk_1009796F0, &unk_1007BA400);
  }

  else
  {
    v39 = v44;
    sub_10013A05C(v22, v44);
    sub_10013A664(v39, v45, v46, v47, v48);
    sub_10013B6D8(v39, type metadata accessor for FlowDestination);
    v22 = v26;
  }

  return sub_10002B894(v22, &unk_1009796F0, &unk_1007BA400);
}

uint64_t sub_100139E54(uint64_t a1, uint64_t a2)
{
  if (qword_10096D120 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for OSLogger();
  sub_1000056A8(v3, qword_1009CE218);
  sub_10002849C(&unk_100972A10, &qword_1007B1EF0);
  type metadata accessor for LogMessage();
  *(swift_allocObject() + 16) = xmmword_1007B1890;
  LogMessage.init(stringLiteral:)();
  v5[3] = type metadata accessor for FlowAction();
  v5[0] = a2;

  static LogMessage.traceableSensitive(_:)();
  sub_10002B894(v5, &unk_1009711D0, &unk_1007B1A10);
  Logger.error(_:)();

  return Promise.reject(_:)();
}

unint64_t sub_10013A008()
{
  result = qword_100975950;
  if (!qword_100975950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100975950);
  }

  return result;
}

uint64_t sub_10013A05C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FlowDestination(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10013A0C0(uint64_t a1)
{
  v3 = *(type metadata accessor for URL() - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v1 + v5);
  v9 = *(v1 + v6);
  v10 = *(v1 + 16);
  v11 = *(v1 + v7);
  v12 = *(v1 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8));

  return sub_100139968(a1, v10, v1 + v4, v8, v9, v11, v12);
}

uint64_t sub_10013A18C()
{
  v0 = type metadata accessor for FlowPage();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = v10 - v5;
  FlowAction.page.getter();
  (*(v1 + 104))(v3, enum case for FlowPage.arcadeWelcome(_:), v0);
  sub_10013B754(&qword_1009818A0, &type metadata accessor for FlowPage, &protocol conformance descriptor for FlowPage);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  if (v10[2] == v10[0] && v10[3] == v10[1])
  {
    v7 = 1;
  }

  else
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  v8 = *(v1 + 8);
  v8(v3, v0);
  v8(v6, v0);

  return v7 & 1;
}

uint64_t sub_10013A368(uint64_t a1, void *a2)
{
  v4 = type metadata accessor for FlowAnimationBehavior();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for FlowPresentationContext();
  v9 = *(v8 - 8);
  *&v10 = __chkstk_darwin(v8).n128_u64[0];
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = [a2 viewControllers];
  sub_100005744(0, &qword_1009711C0, UIViewController_ptr);
  v14 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v14 >> 62)
  {
    v15 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v15 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v15)
  {
    (*(v9 + 104))(v12, enum case for FlowPresentationContext.replace(_:), v8);
    sub_10013B754(&qword_100975978, &type metadata accessor for FlowPresentationContext, &protocol conformance descriptor for FlowPresentationContext);
    v16 = dispatch thunk of static Equatable.== infix(_:_:)();
    (*(v9 + 8))(v12, v8);
    v17 = v16 ^ 1;
  }

  else
  {
    v17 = 0;
  }

  v18 = type metadata accessor for FlowPresentationHints(0);
  (*(v5 + 16))(v7, a1 + *(v18 + 20), v4);
  v19 = (*(v5 + 88))(v7, v4);
  if (v19 != enum case for FlowAnimationBehavior.infer(_:))
  {
    if (v19 == enum case for FlowAnimationBehavior.never(_:))
    {
      v17 = 0;
    }

    else if (v19 == enum case for FlowAnimationBehavior.always(_:))
    {
      v17 = 1;
    }

    else
    {
      (*(v5 + 8))(v7, v4);
    }
  }

  return v17 & 1;
}

uint64_t sub_10013A664(void (*a1)(char *, uint64_t), uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v101 = a5;
  v96 = a4;
  v93 = type metadata accessor for ActionOutcome();
  v92 = *(v93 - 8);
  __chkstk_darwin(v93);
  v91 = &v90 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10002849C(&unk_1009767C0, &unk_1007B1880);
  __chkstk_darwin(v8 - 8);
  v94 = &v90 - v9;
  v10 = type metadata accessor for FlowPresentationContext();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v90 = &v90 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v98 = &v90 - v14;
  __chkstk_darwin(v15);
  v17 = &v90 - v16;
  v18 = type metadata accessor for FlowPresentationHints(0);
  __chkstk_darwin(v18);
  v20 = &v90 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  FlowAction.presentationContext.getter();
  FlowAction.animationBehavior.getter();
  v21 = [a3 traitCollection];
  v95 = a1;
  sub_10065DB50(v17);

  v22 = sub_100623FBC(a3);
  if (!v22)
  {
    sub_10013A008();
    swift_allocError();
    *v43 = 0;
    Promise.reject(_:)();
    (*(v11 + 8))(v17, v10);
    sub_10013B6D8(v20, type metadata accessor for FlowPresentationHints);
  }

  v100 = v17;
  v97 = v20;
  v102 = v11;
  v99 = v10;
  v23 = v22;
  v24 = [v23 traitCollection];
  v25 = FlowAction.referrerUrl.getter();
  v27 = v26;
  v28 = v94;
  FlowAction.referrerData.getter();
  *&v103[0] = v23;
  sub_100005744(0, &qword_100975960, UINavigationController_ptr);
  v29 = v23;
  sub_10002849C(&qword_100975968, &unk_1007BA420);
  if ((swift_dynamicCast() & 1) == 0)
  {
    *&v106 = 0;
    v104 = 0u;
    v105 = 0u;
  }

  sub_1003C1668(v95, v24, v25, v27, v28, &v104, v96, 1);
  v31 = v30;

  sub_10002B894(v28, &unk_1009767C0, &unk_1007B1880);
  sub_10002B894(&v104, &unk_100981880, &unk_1007BECD0);
  if (!v31)
  {

    v45 = v92;
    v46 = v91;
    v47 = v93;
    (*(v92 + 104))(v91, enum case for ActionOutcome.unsupported(_:), v93);
    Promise.resolve(_:)();

    (*(v45 + 8))(v46, v47);
    (*(v102 + 8))(v100, v99);
    return sub_10013B6D8(v97, type metadata accessor for FlowPresentationHints);
  }

  v32 = [v29 presentingViewController];

  v33 = v99;
  v34 = v102;
  v35 = v97;
  v36 = v100;
  if (!v32)
  {
LABEL_24:
    v55 = sub_10013A368(v35, v29);
    v56 = *(v34 + 104);
    v56(v98, enum case for FlowPresentationContext.push(_:), v33);
    sub_10013B754(&qword_100975970, &type metadata accessor for FlowPresentationContext, &protocol conformance descriptor for FlowPresentationContext);
    dispatch thunk of RawRepresentable.rawValue.getter();
    dispatch thunk of RawRepresentable.rawValue.getter();
    LODWORD(v96) = v55;
    if (v104 == v103[0])
    {
      v57 = 1;
    }

    else
    {
      v57 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }

    v58 = v34 + 8;
    v24 = *(v34 + 8);
    v34 = v99;
    v102 = v58;
    (v24)(v98, v99);

    if (v57)
    {
      [v31 setModalPresentationCapturesStatusBarAppearance:1];
      v104 = xmmword_100975F30;
      v105 = xmmword_100975F40;
      v106 = xmmword_100975F50;
      v107 = xmmword_100975F60;
      v108 = xmmword_100975F70;
      v59 = qword_100975F80;
      v109 = qword_100975F80;
      v60 = BYTE8(xmmword_100975F50);
      if (BYTE8(xmmword_100975F50) != 255)
      {
        v61 = v104;
        v63 = v105;
        v62 = *&v106;
        v64 = v107;
        v65 = v108;
        v66 = v104;
        v67 = [v31 popoverPresentationController];
        if (v67)
        {
          v68 = v67;
          if (v60)
          {
            sub_100031660(&v104, v103, &unk_10097F520, &unk_1007BA430);
            v69 = v68;
            [v69 setSourceView:v61];
            [v69 setSourceRect:{*(&v61 + 1), v63, v62}];
            v34 = v99;
            sub_10002B894(&v104, &unk_10097F520, &unk_1007BA430);
          }

          else
          {
            [v67 setBarButtonItem:v61];
          }

          [v68 setPopoverLayoutMargins:{v64, v65}];
          [v68 setPermittedArrowDirections:v59];
        }

        else
        {
          if (qword_10096D120 != -1)
          {
            swift_once();
          }

          v86 = type metadata accessor for OSLogger();
          sub_1000056A8(v86, qword_1009CE218);
          sub_10002849C(&unk_100972A10, &qword_1007B1EF0);
          type metadata accessor for LogMessage();
          *(swift_allocObject() + 16) = xmmword_1007B10D0;
          LogMessage.init(stringLiteral:)();
          Logger.warning(_:)();
        }

        sub_10002B894(&v104, &unk_10097F520, &unk_1007BA430);
      }

      [v29 pushViewController:v31 animated:v96 & 1];
      goto LABEL_58;
    }

    v70 = v90;
    v56(v90, enum case for FlowPresentationContext.replace(_:), v34);
    dispatch thunk of RawRepresentable.rawValue.getter();
    dispatch thunk of RawRepresentable.rawValue.getter();
    if (v104 == v103[0])
    {
      (v24)(v70, v34);
    }

    else
    {
      v71 = _stringCompareWithSmolCheck(_:_:expecting:)();
      (v24)(v70, v34);

      if ((v71 & 1) == 0)
      {
LABEL_58:
        v87 = v92;
        v88 = v91;
        v89 = v93;
        (*(v92 + 104))(v91, enum case for ActionOutcome.performed(_:), v93);
        Promise.resolve(_:)();

        (*(v87 + 8))(v88, v89);
        (v24)(v100, v34);
        return sub_10013B6D8(v97, type metadata accessor for FlowPresentationHints);
      }
    }

    objc_opt_self();
    v72 = swift_dynamicCastObjCClass();
    if (!v72)
    {
      v79 = [v29 viewControllers];
      sub_100005744(0, &qword_1009711C0, UIViewController_ptr);
      v36 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      v37 = (v36 >> 62);
      if (!(v36 >> 62))
      {
        if (!*((v36 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
LABEL_66:
          __break(1u);
          goto LABEL_67;
        }

LABEL_45:
        isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
        if (v37 || (isUniquelyReferenced_nonNull_bridgeObject & 1) == 0)
        {
          v36 = sub_100549964();
        }

        v81 = *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v81)
        {
          v82 = v81 - 1;
          v37 = *((v36 & 0xFFFFFFFFFFFFFF8) + 8 * v82 + 0x20);
          *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10) = v82;
          *&v104 = v36;
          v83 = [v37 tabBarItem];
          [v31 setTabBarItem:v83];

          v84 = v31;
          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          if (*((v104 & 0xFFFFFFFFFFFFFF8) + 0x10) < *((v104 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
LABEL_50:
            specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            isa = Array._bridgeToObjectiveC()().super.isa;

            [v29 setViewControllers:isa animated:v96 & 1];

            goto LABEL_58;
          }

LABEL_68:
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          v34 = v99;
          goto LABEL_50;
        }

LABEL_67:
        __break(1u);
        goto LABEL_68;
      }

LABEL_65:
      if (!_CocoaArrayWrapper.endIndex.getter())
      {
        goto LABEL_66;
      }

      goto LABEL_45;
    }

    v35 = v72;
    v36 = v31;
    v73 = [v29 viewControllers];
    v37 = sub_100005744(0, &qword_1009711C0, UIViewController_ptr);
    v34 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v33 = v34 >> 62;
    if (!(v34 >> 62))
    {
      if (*((v34 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_38:
        v74 = swift_isUniquelyReferenced_nonNull_bridgeObject();
        if (v33 || (v74 & 1) == 0)
        {
          v34 = sub_100549964();
        }

        v75 = *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v75)
        {
          v76 = v75 - 1;
          v77 = *((v34 & 0xFFFFFFFFFFFFFF8) + 8 * v76 + 0x20);
          *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10) = v76;

          v78 = Array._bridgeToObjectiveC()().super.isa;

          [v29 setViewControllers:v78];

          [v29 presentViewController:v35 animated:0 completion:0];
          v34 = v99;
          goto LABEL_58;
        }

        goto LABEL_64;
      }

LABEL_63:
      __break(1u);
LABEL_64:
      __break(1u);
      goto LABEL_65;
    }

LABEL_62:
    if (_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_38;
    }

    goto LABEL_63;
  }

  v37 = [v29 viewControllers];
  sub_100005744(0, &qword_1009711C0, UIViewController_ptr);
  v38 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!(v38 >> 62))
  {
    if (*((v38 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_8;
    }

    goto LABEL_23;
  }

  if (!_CocoaArrayWrapper.endIndex.getter())
  {
LABEL_23:

    goto LABEL_24;
  }

LABEL_8:
  if ((v38 & 0xC000000000000001) != 0)
  {
    v39 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v38 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_62;
    }

    v39 = *(v38 + 32);
  }

  v40 = v39;

  if ((sub_100039CB4(v40) & 1) == 0)
  {
    goto LABEL_14;
  }

  v41 = swift_allocObject();
  *(v41 + 16) = v29;
  v42 = v29;
  if (sub_100039CB4(v31))
  {

LABEL_14:

    goto LABEL_24;
  }

  v48 = [v31 navigationItem];
  v49 = [v48 rightBarButtonItems];
  if (v49)
  {
    v50 = v49;
    sub_100005744(0, &qword_100983870, UIBarButtonItem_ptr);
    v51 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v51 = _swiftEmptyArrayStorage;
  }

  *&v104 = v51;
  sub_100005744(0, &qword_100983870, UIBarButtonItem_ptr);
  sub_100005744(0, &qword_10097CD40, UIAction_ptr);
  v52 = swift_allocObject();
  *(v52 + 16) = sub_10013B73C;
  *(v52 + 24) = v41;

  v110.value.super.super.isa = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  v110.is_nil = 0;
  v53.super.super.isa = UIBarButtonItem.init(systemItem:primaryAction:menu:)(UIBarButtonSystemItemClose, v110, v111).super.super.isa;
  if (!(v51 >> 62) || (result = _CocoaArrayWrapper.endIndex.getter(), (result & 0x8000000000000000) == 0))
  {
    sub_1004A6D30(0, 0, v53.super.super.isa);
    v54 = Array._bridgeToObjectiveC()().super.isa;

    [v48 setRightBarButtonItems:v54];

    v33 = v99;
    v34 = v102;
    goto LABEL_24;
  }

  __break(1u);
  return result;
}

uint64_t sub_10013B6D8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10013B754(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_10013B7B0()
{
  result = qword_100975980;
  if (!qword_100975980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100975980);
  }

  return result;
}

id sub_10013B804()
{
  v1 = OBJC_IVAR____TtC8AppStore25ShelfDisplayingFlowLayout_multiColumnMinYBySection;
  *&v0[v1] = sub_100398C2C(_swiftEmptyArrayStorage);
  v2 = OBJC_IVAR____TtC8AppStore25ShelfDisplayingFlowLayout_multiColumnOrigins;
  *&v0[v2] = sub_100398D0C(_swiftEmptyArrayStorage);
  v8.receiver = v0;
  v8.super_class = type metadata accessor for ShelfDisplayingFlowLayout();
  v3 = objc_msgSendSuper2(&v8, "init");
  sub_100005744(0, &qword_10097F580, UICollectionReusableView_ptr);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = v3;
  v6 = String._bridgeToObjectiveC()();
  [v5 registerClass:ObjCClassFromMetadata forDecorationViewOfKind:v6];

  return v5;
}

void sub_10013B9FC(double a1, double a2, double a3, double a4)
{
  v53 = type metadata accessor for IndexPath();
  v9 = *(v53 - 8);
  __chkstk_darwin(v53);
  v11 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v52 = &v45 - v13;
  v14 = type metadata accessor for ShelfDisplayingFlowLayout();
  v47 = v4;
  v56.receiver = v4;
  v56.super_class = v14;
  v15 = objc_msgSendSuper2(&v56, "layoutAttributesForElementsInRect:", a1, a2, a3, a4);
  if (!v15)
  {
    return;
  }

  v16 = v15;
  sub_100005744(0, &qword_1009759D0, UICollectionViewLayoutAttributes_ptr);
  v17 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v55 = _swiftEmptyArrayStorage;
  if (v17 >> 62)
  {
    v19 = _CocoaArrayWrapper.endIndex.getter();
    v20 = v47;
    if (v19)
    {
      goto LABEL_4;
    }

LABEL_25:
    v46 = _swiftEmptyArrayStorage;
LABEL_26:
    v54 = v17;
    sub_10039498C(v46, v18);
    return;
  }

  v19 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v20 = v47;
  if (!v19)
  {
    goto LABEL_25;
  }

LABEL_4:
  if (v19 >= 1)
  {
    v21 = OBJC_IVAR____TtC8AppStore25ShelfDisplayingFlowLayout_multiColumnMinYBySection;
    v22 = v17 & 0xC000000000000001;
    v50 = OBJC_IVAR____TtC8AppStore25ShelfDisplayingFlowLayout_multiColumnOrigins;
    v51 = v11;
    swift_beginAccess();
    v45 = v21;
    swift_beginAccess();
    v23 = 0;
    v49 = "multiColumnOrigins";
    v24 = (v9 + 8);
    v46 = _swiftEmptyArrayStorage;
    v48 = v17 & 0xC000000000000001;
    while (1)
    {
      v25 = v22 ? specialized _ArrayBuffer._getElementSlowPath(_:)() : *(v17 + 8 * v23 + 32);
      v26 = v25;
      if (![v25 representedElementCategory])
      {
        break;
      }

LABEL_7:
      if (v19 == ++v23)
      {
        goto LABEL_26;
      }
    }

    v27 = [v26 indexPath];
    v28 = v52;
    static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();

    v29 = sub_10013C60C();
    v30 = *v24;
    (*v24)(v28, v53);
    if (v29)
    {
      v31 = v29;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v55 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v55 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

      v46 = v55;
      v20 = v47;
    }

    v32 = [v26 indexPath];
    v33 = v51;
    static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();

    v34 = *&v20[v50];
    if (*(v34 + 16))
    {

      v35 = sub_1003D7D18(v33);
      if (v36)
      {
        v37 = *(v34 + 56) + 16 * v35;
        v38 = *v37;
        v39 = *(v37 + 8);

        v40 = IndexPath.section.getter();
        v41 = *&v20[v45];
        if (*(v41 + 16))
        {
          v42 = sub_1003D7340(v40);
          if (v43)
          {
            v44 = *(*(v41 + 56) + 8 * v42);

            v30(v33, v53);

            [v26 frame];
            [v26 setFrame:{v38, v39 + v44}];

LABEL_23:
            v22 = v48;
            goto LABEL_7;
          }
        }
      }

      else
      {
      }
    }

    v30(v33, v53);
    goto LABEL_23;
  }

  __break(1u);
}

id sub_10013BF18()
{
  v1 = type metadata accessor for IndexPath();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  v6 = type metadata accessor for ShelfDisplayingFlowLayout();
  v15.receiver = v0;
  v15.super_class = v6;
  v7 = objc_msgSendSuper2(&v15, "layoutAttributesForItemAtIndexPath:", isa);

  if (v7)
  {
    v8 = [v7 indexPath];
    static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();

    v9 = sub_10013C900(v4);
    v11 = v10;
    v13 = v12;
    (*(v2 + 8))(v4, v1);
    if ((v13 & 1) == 0)
    {
      [v7 frame];
      [v7 setFrame:{*&v9, v11}];
    }
  }

  return v7;
}

void *sub_10013C470(uint64_t a1, uint64_t a2, double a3, double a4, double a5, double a6)
{
  v20.receiver = v6;
  v20.super_class = type metadata accessor for ShelfDisplayingFlowLayout();
  v11 = objc_msgSendSuper2(&v20, "invalidationContextForBoundsChange:", a3, a4, a5, a6);
  objc_opt_self();
  v12 = swift_dynamicCastObjCClassUnconditional();
  v13 = [v6 collectionView];
  if (v13)
  {
    v14 = v13;
    [v13 bounds];
    v16 = v15;
    v18 = v17;

    if (v16 != a5)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v18 = 0.0;
    if (a5 != 0.0)
    {
LABEL_6:
      [v12 setInvalidateFlowLayoutAttributes:1];
      [v12 setInvalidateFlowLayoutDelegateMetrics:1];
      return v12;
    }
  }

  if (v18 != a6)
  {
    goto LABEL_6;
  }

  return v12;
}

id sub_10013C60C()
{
  result = [v0 collectionView];
  if (result)
  {
    v2 = result;
    v3 = [v0 collectionView];
    if (v3)
    {
      v4 = v3;
      v5 = [v3 delegate];

      if (v5)
      {
        v33 = &OBJC_PROTOCOL____TtP8AppStore49UICollectionViewDelegateShelfDisplayingFlowLayout_;
        v6 = swift_dynamicCastObjCProtocolConditional();
        if (!v6)
        {
          goto LABEL_14;
        }

        v7 = [v6 collectionView:v2 layout:v0 shouldProvideBackgroundAtSection:IndexPath.section.getter()];
        swift_unknownObjectRelease();
        if (v7)
        {
          v8 = [v0 collectionView];
          if (v8)
          {
            v9 = v8;
            v10 = [v8 delegate];

            if (v10)
            {
              v32 = &OBJC_PROTOCOL____TtP8AppStore49UICollectionViewDelegateShelfDisplayingFlowLayout_;
              v11 = swift_dynamicCastObjCProtocolConditional();
              if (v11)
              {
                [v11 collectionView:v2 layout:v0 insetForBackgroundAtSection:IndexPath.section.getter()];
                v13 = v12;
                v15 = v14;
                swift_unknownObjectRelease();
                isa = IndexPath._bridgeToObjectiveC()().super.isa;
                v31.receiver = v0;
                v31.super_class = type metadata accessor for ShelfDisplayingFlowLayout();
                v17 = objc_msgSendSuper2(&v31, "layoutAttributesForItemAtIndexPath:", isa);

                if (v17)
                {
                  [v17 frame];
                  v19 = v18;
                  v21 = v20;
                  v23 = v22;
                  v25 = v24;
                  v26 = String._bridgeToObjectiveC()();
                  v27 = IndexPath._bridgeToObjectiveC()().super.isa;
                  v28 = [objc_opt_self() layoutAttributesForDecorationViewOfKind:v26 withIndexPath:v27];

                  v34.origin.x = v19;
                  v34.origin.y = v21;
                  v34.size.width = v23;
                  v34.size.height = v25;
                  v29 = CGRectGetMinY(v34) - v13;
                  [v2 bounds];
                  Width = CGRectGetWidth(v35);
                  v36.origin.x = v19;
                  v36.origin.y = v21;
                  v36.size.width = v23;
                  v36.size.height = v25;
                  [v28 setFrame:{0.0, v29, Width, v15 + v13 + CGRectGetHeight(v36)}];
                  [v28 setZIndex:-1];

                  return v28;
                }

                goto LABEL_11;
              }

LABEL_14:

              swift_unknownObjectRelease();
              return 0;
            }
          }
        }
      }
    }

LABEL_11:

    return 0;
  }

  return result;
}

uint64_t sub_10013C900(uint64_t a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC8AppStore25ShelfDisplayingFlowLayout_multiColumnOrigins;
  swift_beginAccess();
  v5 = *(v2 + v4);
  if (*(v5 + 16))
  {

    v6 = sub_1003D7D18(a1);
    if (v7)
    {
      v8 = *(*(v5 + 56) + 16 * v6);

      v9 = IndexPath.section.getter();
      v10 = OBJC_IVAR____TtC8AppStore25ShelfDisplayingFlowLayout_multiColumnMinYBySection;
      swift_beginAccess();
      if (*(*(v2 + v10) + 16))
      {
        sub_1003D7340(v9);
        if (v11)
        {
          return v8;
        }
      }
    }

    else
    {
    }
  }

  return 0;
}

void sub_10013CA00()
{
  v1 = v0;
  v2 = type metadata accessor for IndexPath();
  v91 = *(v2 - 8);
  __chkstk_darwin(v2);
  v104 = &v87 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v87 - v5;
  v7 = sub_100398C2C(_swiftEmptyArrayStorage);
  v8 = OBJC_IVAR____TtC8AppStore25ShelfDisplayingFlowLayout_multiColumnMinYBySection;
  swift_beginAccess();
  v90 = v8;
  *&v0[v8] = v7;

  v9 = sub_100398D0C(_swiftEmptyArrayStorage);
  v10 = OBJC_IVAR____TtC8AppStore25ShelfDisplayingFlowLayout_multiColumnOrigins;
  swift_beginAccess();
  v102 = v10;
  *&v1[v10] = v9;

  v11 = [v1 collectionView];
  if (!v11)
  {
    return;
  }

  v12 = v11;
  v13 = [v1 collectionView];
  if (!v13 || (v14 = v13, v15 = [v13 delegate], v14, !v15))
  {
LABEL_55:

    return;
  }

  v107 = &OBJC_PROTOCOL____TtP8AppStore49UICollectionViewDelegateShelfDisplayingFlowLayout_;
  v16 = swift_dynamicCastObjCProtocolConditional();
  if (!v16)
  {

    swift_unknownObjectRelease();
    return;
  }

  v17 = v16;
  v18 = [v12 numberOfSections];
  if ((v18 & 0x8000000000000000) != 0)
  {
    goto LABEL_63;
  }

  v19 = v18;
  if (!v18)
  {
LABEL_54:
    swift_unknownObjectRelease();
    goto LABEL_55;
  }

  v20 = 0;
  left = UIEdgeInsetsZero.left;
  v101 = (v91 + 8);
  v97 = (v91 + 16);
  v21 = &selRef_loadView;
  v99 = xmmword_1007B1890;
  v22 = &selRef_loadView;
  v94 = v12;
  v92 = v17;
  v93 = v15;
  v88 = v18;
  while (1)
  {
    if ([v17 v21[283]])
    {
      v103 = [v17 collectionView:v12 layout:v1 multiColumnCountAtSection:v20];
      if (v103 >= 2)
      {
        break;
      }
    }

LABEL_10:
    if (++v20 == v19)
    {
      goto LABEL_54;
    }
  }

  v23 = [v17 respondsToSelector:"collectionView:layout:insetForSectionAtIndex:"];
  v24 = left;
  if (v23)
  {
    [v17 collectionView:v12 layout:v1 insetForSectionAtIndex:v20];
    v24 = v25;
  }

  [v17 collectionView:v12 layout:v1 multiColumnMarginAt:v20];
  v27 = v26;
  v28 = [v12 numberOfItemsInSection:v20];
  if ((v28 & 0x8000000000000000) != 0)
  {
    goto LABEL_60;
  }

  if (!v28)
  {
    v31 = 1.79769313e308;
LABEL_45:
    v73 = v90;
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v106 = *&v1[v73];
    v75 = v106;
    *&v1[v73] = 0x8000000000000000;
    v76 = sub_1003D7340(v20);
    v78 = v75[2];
    v79 = (v77 & 1) == 0;
    v70 = __OFADD__(v78, v79);
    v80 = v78 + v79;
    if (v70)
    {
      goto LABEL_61;
    }

    v81 = v77;
    if (v75[3] >= v80)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v86 = v76;
        sub_100054470();
        v76 = v86;
      }
    }

    else
    {
      sub_10004E204(v80, isUniquelyReferenced_nonNull_native);
      v76 = sub_1003D7340(v20);
      if ((v81 & 1) != (v82 & 1))
      {
        goto LABEL_65;
      }
    }

    v19 = v88;
    v21 = &selRef_loadView;
    v83 = v106;
    if (v81)
    {
      *(v106[7] + 8 * v76) = v31;
    }

    else
    {
      v106[(v76 >> 6) + 8] |= 1 << v76;
      *(v83[6] + 8 * v76) = v20;
      *(v83[7] + 8 * v76) = v31;
      v84 = v83[2];
      v70 = __OFADD__(v84, 1);
      v85 = v84 + 1;
      if (v70)
      {
        goto LABEL_62;
      }

      v83[2] = v85;
    }

    *&v1[v90] = v83;
    swift_endAccess();
    v22 = &selRef_loadView;
    goto LABEL_10;
  }

  v29 = 0;
  v95 = v103 - 1;
  v30 = 0.0;
  v31 = 1.79769313e308;
  v32 = 0.0;
  v96 = v20;
  v33 = v101;
  v100 = v28;
  while (1)
  {
    sub_10002849C(&qword_100980550, &qword_1007B1290);
    v34 = swift_allocObject();
    *(v34 + 16) = v99;
    *(v34 + 32) = v20;
    *(v34 + 40) = v29;
    IndexPath.init(arrayLiteral:)();
    if (([v17 respondsToSelector:v22[289]] & 1) == 0)
    {
      (*v33)(v6, v2);
      goto LABEL_19;
    }

    swift_unknownObjectRetain();
    isa = IndexPath._bridgeToObjectiveC()().super.isa;
    [v17 v22[289]];
    v37 = v36;
    v39 = v38;
    swift_unknownObjectRelease();

    v40 = IndexPath.item.getter();
    v41 = IndexPath.item.getter();
    if (!(v40 / v103))
    {
      v42 = IndexPath._bridgeToObjectiveC()().super.isa;
      v43 = type metadata accessor for ShelfDisplayingFlowLayout();
      v105.receiver = v1;
      v105.super_class = v43;
      v44 = objc_msgSendSuper2(&v105, "layoutAttributesForItemAtIndexPath:", v42);

      if (v44)
      {
        [v44 frame];
        MinY = CGRectGetMinY(v108);

        if (v31 >= MinY)
        {
          v31 = MinY;
        }
      }
    }

    v46 = *v97;
    v47 = v104;
    v48 = v2;
    (*v97)(v104, v6, v2);
    v49 = v102;
    swift_beginAccess();
    v50 = swift_isUniquelyReferenced_nonNull_native();
    v106 = *&v1[v49];
    v51 = v106;
    *&v1[v49] = 0x8000000000000000;
    v53 = sub_1003D7D18(v47);
    v54 = v51[2];
    v55 = (v52 & 1) == 0;
    v56 = v54 + v55;
    if (__OFADD__(v54, v55))
    {
      break;
    }

    v57 = v52;
    if (v51[3] >= v56)
    {
      v33 = v101;
      if (v50)
      {
        goto LABEL_31;
      }

      sub_1000545BC();
    }

    else
    {
      sub_10004E468(v56, v50);
      v58 = sub_1003D7D18(v104);
      if ((v57 & 1) != (v59 & 1))
      {
        goto LABEL_64;
      }

      v53 = v58;
    }

    v33 = v101;
LABEL_31:
    v98 = v41 % v103;
    v60 = v24 + (v27 + v37) * (v41 % v103);
    v61 = v106;
    if (v57)
    {
      v62 = (v106[7] + 16 * v53);
      *v62 = v60;
      v62[1] = v32;
      v63 = *v33;
      v2 = v48;
      (*v33)(v104, v48);
    }

    else
    {
      v64 = v1;
      v65 = v6;
      v106[(v53 >> 6) + 8] |= 1 << v53;
      v66 = v91;
      v67 = v104;
      v46(v61[6] + *(v91 + 72) * v53, v104, v48);
      v68 = (v61[7] + 16 * v53);
      v2 = v48;
      *v68 = v60;
      v68[1] = v32;
      v63 = *(v66 + 8);
      v63(v67, v48);
      v69 = v61[2];
      v70 = __OFADD__(v69, 1);
      v71 = v69 + 1;
      if (v70)
      {
        goto LABEL_59;
      }

      v61[2] = v71;
      v6 = v65;
      v1 = v64;
      v33 = v101;
    }

    *&v1[v102] = v61;

    swift_endAccess();
    v63(v6, v2);
    v72 = v32 + v39;
    if (v30 > v32 + v39)
    {
      v72 = v30;
    }

    if (v98 == v95)
    {
      v30 = 0.0;
    }

    else
    {
      v30 = v72;
    }

    if (v98 == v95)
    {
      v32 = v72;
    }

    v12 = v94;
    v17 = v92;
    v20 = v96;
    v22 = &selRef_loadView;
LABEL_19:
    if (v100 == ++v29)
    {
      goto LABEL_45;
    }
  }

  __break(1u);
LABEL_59:
  __break(1u);
LABEL_60:
  __break(1u);
LABEL_61:
  __break(1u);
LABEL_62:
  __break(1u);
LABEL_63:
  __break(1u);
LABEL_64:
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
LABEL_65:
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

id sub_10013D2EC(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for ShelfDisplayingFlowLayout();
  return objc_msgSendSuper2(&v4, "dealloc");
}

uint64_t sub_10013D3A0@<X0>(uint64_t *a2@<X8>)
{
  v3 = type metadata accessor for Shelf.ContentType();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10002849C(&unk_1009731F0, &qword_1007B0DA0);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v18 - v9;
  ShelfLayoutContext.shelf.getter();
  swift_getKeyPath();
  ReadOnlyLens.subscript.getter();

  (*(v8 + 8))(v10, v7);
  v11 = (*(v4 + 88))(v6, v3);
  if (v11 == enum case for Shelf.ContentType.searchChartsAndCategories(_:))
  {
    if (qword_10096E6D8 != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for StaticDimension();
    v13 = v12;
    v14 = qword_1009D24A8;
LABEL_9:
    v15 = sub_1000056A8(v12, v14);
    a2[3] = v13;
    a2[4] = &protocol witness table for StaticDimension;
    v16 = sub_1000056E0(a2);
    return (*(*(v13 - 8) + 16))(v16, v15, v13);
  }

  if (v11 == enum case for Shelf.ContentType.pageTabs(_:))
  {
    if (qword_10096E6D0 != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for StaticDimension();
    v13 = v12;
    v14 = qword_1009D2490;
    goto LABEL_9;
  }

  sub_100753A6C(a2);
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_10013D678@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for Shelf.ContentType();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10002849C(&unk_1009731F0, &qword_1007B0DA0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v16 - v10;
  ShelfLayoutContext.shelf.getter();
  swift_getKeyPath();
  ReadOnlyLens.subscript.getter();

  (*(v9 + 8))(v11, v8);
  if ((*(v5 + 88))(v7, v4) == enum case for Shelf.ContentType.searchChartsAndCategories(_:))
  {
    if (qword_10096E6D0 != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for StaticDimension();
    v13 = sub_1000056A8(v12, qword_1009D2490);
    a2[3] = v12;
    a2[4] = &protocol witness table for StaticDimension;
    v14 = sub_1000056E0(a2);
    return (*(*(v12 - 8) + 16))(v14, v13, v12);
  }

  else
  {
    sub_100754DA8(a1, a2);
    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_10013D8EC@<X0>(uint64_t *a2@<X8>)
{
  v3 = sub_10002849C(&unk_10098FFB0, qword_1007B3890);
  __chkstk_darwin(v3 - 8);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v14 - v7;
  ShelfLayoutContext.surroundingShelves.getter();
  sub_10013DAA8(v8);
  v9 = sub_10002849C(&unk_1009731F0, &qword_1007B0DA0);
  if ((*(*(v9 - 8) + 48))(v5, 1, v9) == 1)
  {
    if (qword_10096E6E0 != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for StaticDimension();
    v11 = sub_1000056A8(v10, qword_1009D24C0);
    a2[3] = v10;
    a2[4] = &protocol witness table for StaticDimension;
    v12 = sub_1000056E0(a2);
    return (*(*(v10 - 8) + 16))(v12, v11, v10);
  }

  else
  {
    sub_10013DB10();
    ShelfLayoutSpacingProvider.bottomContentInset(in:)();
    return sub_10013DAA8(v5);
  }
}

uint64_t sub_10013DAA8(uint64_t a1)
{
  v2 = sub_10002849C(&unk_10098FFB0, qword_1007B3890);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_10013DB10()
{
  result = qword_10097F500;
  if (!qword_10097F500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10097F500);
  }

  return result;
}

uint64_t sub_10013DB70()
{
  v1 = sub_10002849C(&unk_10097DAF0, &qword_1007B2A30);
  __chkstk_darwin(v1 - 8);
  v2 = sub_10002849C(&qword_100975A60, &qword_1007BA6C0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v8 - v4;
  ItemLayoutContext.mutableState.getter();
  WritableStateLens.init(_:)();
  if ([*(*(*(v0 + OBJC_IVAR____TtC8AppStore31ReviewSummaryCollectionViewCell_reviewSummaryView) + OBJC_IVAR____TtC8AppStore17ReviewSummaryView_bodyLabel) + OBJC_IVAR____TtC8AppStore18ExpandableTextView_moreButton) isHidden])
  {
    sub_10002849C(&qword_100975748, &qword_1007BA160);
    type metadata accessor for SelectableShelfComponentViewReaction();
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_1007B1890;
    static SelectableShelfComponentViewReaction.propagate.getter();
    static SelectableShelfComponentViewReaction.deselect.getter();
  }

  else
  {
    sub_10013E4BC();
    WritableStateLens<A>.updateValue(_:)();
    sub_10002849C(&qword_100975748, &qword_1007BA160);
    type metadata accessor for SelectableShelfComponentViewReaction();
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_1007B1E00;
    static SelectableShelfComponentViewReaction.propagate.getter();
    static SelectableShelfComponentViewReaction.deselect.getter();
    static SelectableShelfComponentViewReaction.reapply.getter();
  }

  v8 = v6;
  sub_10013E510(&qword_100975750, &type metadata accessor for SelectableShelfComponentViewReaction, &protocol conformance descriptor for SelectableShelfComponentViewReaction);
  sub_10002849C(&qword_100975758, &qword_1007DA2A0);
  sub_100135DA0();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_10013DF04@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC8AppStore31ReviewSummaryCollectionViewCell_itemLayoutContext;
  swift_beginAccess();
  return sub_10009768C(v1 + v3, a1);
}

uint64_t sub_10013DF60(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8AppStore31ReviewSummaryCollectionViewCell_itemLayoutContext;
  swift_beginAccess();
  sub_10009761C(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t sub_10013E050(uint64_t a1)
{
  result = sub_10013E510(&qword_100975A40, type metadata accessor for ReviewSummaryCollectionViewCell, &unk_1007BA608);
  *(a1 + 8) = result;
  return result;
}

void *sub_10013E0A8()
{
  v0 = type metadata accessor for Shelf.PresentationHints();
  v22 = *(v0 - 8);
  __chkstk_darwin(v0);
  v2 = &v21 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v5 = &v21 - v4;
  v21 = type metadata accessor for ShelfLayoutContext();
  v6 = *(v21 - 8);
  __chkstk_darwin(v21);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10002849C(qword_10097DB40, qword_1007C5240);
  __chkstk_darwin(v9 - 8);
  v10 = sub_10002849C(&qword_100975A48, &qword_1007BA698);
  v23 = *(v10 - 8);
  __chkstk_darwin(v10);
  v12 = &v21 - v11;
  type metadata accessor for ReviewSummary();
  sub_10013E510(&qword_100975A50, &type metadata accessor for ReviewSummary, &protocol conformance descriptor for ReviewSummary);
  result = ItemLayoutContext.typedModel<A>(as:)();
  v14 = v26;
  if (v26)
  {
    ItemLayoutContext.state.getter();
    StateLens.init(_:)();
    ItemLayoutContext.parentShelfLayoutContext.getter();
    ShelfLayoutContext.shelfPresentationHints.getter();
    (*(v6 + 8))(v8, v21);
    static Shelf.PresentationHints.isSeeAllContext.getter();
    sub_10013E510(&unk_100970E20, &type metadata accessor for Shelf.PresentationHints, &protocol conformance descriptor for Shelf.PresentationHints);
    v15 = dispatch thunk of SetAlgebra.isSuperset(of:)();
    v16 = *(v22 + 8);
    v16(v2, v0);
    v16(v5, v0);
    v17 = v24;
    swift_getKeyPath();
    sub_10013E4BC();
    StateLens<A>.subscript.getter();

    if (v15)
    {
      v18 = 0;
      v19 = 1;
    }

    else
    {
      v18 = v25;
      v20 = [v17 traitCollection];
      v19 = UITraitCollection.isSizeClassCompact.getter();
    }

    sub_100624488(v14, v18, v19 & 1, v15 & 1);

    return (*(v23 + 8))(v12, v10);
  }

  return result;
}

unint64_t sub_10013E4BC()
{
  result = qword_100975A58;
  if (!qword_100975A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100975A58);
  }

  return result;
}

uint64_t sub_10013E510(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_10013E56C()
{
  result = qword_100975A68;
  if (!qword_100975A68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100975A68);
  }

  return result;
}

unint64_t sub_10013E5C4()
{
  result = qword_100975A70;
  if (!qword_100975A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100975A70);
  }

  return result;
}

uint64_t sub_10013E714(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for OSLogger.Subsystem();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for OSLogger();
  sub_100005644(v9, a2);
  sub_1000056A8(v9, a2);
  if (qword_10096D108 != -1)
  {
    swift_once();
  }

  v10 = sub_1000056A8(v5, qword_1009CE1D0);
  (*(v6 + 16))(v8, v10, v5);
  return OSLogger.init(subsystem:category:)();
}

uint64_t sub_10013E864()
{
  v0 = type metadata accessor for FontSource();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for ZeroDimension();
  v17 = v4;
  v18 = &protocol witness table for ZeroDimension;
  sub_1000056E0(&v16);
  static ZeroDimension.zero.getter();
  if (qword_10096DD78 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for FontUseCase();
  v6 = sub_1000056A8(v5, qword_1009D0800);
  (*(*(v5 - 8) + 16))(v3, v6, v5);
  (*(v1 + 104))(v3, enum case for FontSource.useCase(_:), v0);
  v14 = type metadata accessor for StaticDimension();
  v15 = &protocol witness table for StaticDimension;
  sub_1000056E0(&v13);
  v11 = v0;
  v12 = &protocol witness table for FontSource;
  v7 = sub_1000056E0(&v10);
  (*(v1 + 16))(v7, v3, v0);
  StaticDimension.init(_:scaledLike:)();
  (*(v1 + 8))(v3, v0);
  v11 = v4;
  v12 = &protocol witness table for ZeroDimension;
  sub_1000056E0(&v10);
  static ZeroDimension.zero.getter();
  qword_1009CE2A8 = 0;
  unk_1009CE2B0 = 0;
  sub_100005A38(&v16, &unk_1009CE2B8);
  sub_100005A38(&v13, &unk_1009CE2E0);
  qword_1009CE310 = 0;
  unk_1009CE318 = 0;
  qword_1009CE308 = 2;
  return sub_100005A38(&v10, &unk_1009CE320);
}

uint64_t sub_10013EAA4()
{
  v0 = type metadata accessor for FontSource();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v17 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for SmallLockupLayout.Metrics();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10096EE80 != -1)
  {
    swift_once();
  }

  v8 = sub_1000056A8(v4, qword_1009D3798);
  (*(v5 + 16))(v7, v8, v4);
  SmallLockupLayout.Metrics.artworkSize.getter();
  v10 = v9;
  v12 = v11;
  (*(v5 + 8))(v7, v4);
  v25 = &type metadata for Double;
  v26 = &protocol witness table for Double;
  *&v24 = 0x4024000000000000;
  if (qword_10096DD78 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for FontUseCase();
  v14 = sub_1000056A8(v13, qword_1009D0800);
  (*(*(v13 - 8) + 16))(v3, v14, v13);
  (*(v1 + 104))(v3, enum case for FontSource.useCase(_:), v0);
  v22 = type metadata accessor for StaticDimension();
  v23 = &protocol witness table for StaticDimension;
  sub_1000056E0(&v21);
  v19 = v0;
  v20 = &protocol witness table for FontSource;
  v15 = sub_1000056E0(&v18);
  (*(v1 + 16))(v15, v3, v0);
  StaticDimension.init(_:scaledLike:)();
  (*(v1 + 8))(v3, v0);
  v19 = type metadata accessor for ZeroDimension();
  v20 = &protocol witness table for ZeroDimension;
  sub_1000056E0(&v18);
  static ZeroDimension.zero.getter();
  qword_1009CE348 = v10;
  unk_1009CE350 = v12;
  sub_100005A38(&v24, &unk_1009CE358);
  sub_100005A38(&v21, &unk_1009CE380);
  qword_1009CE3B0 = 0;
  unk_1009CE3B8 = 0;
  qword_1009CE3A8 = 3;
  return sub_100005A38(&v18, &unk_1009CE3C0);
}

char *sub_10013EDEC(double a1, double a2, double a3, double a4, uint64_t a5, uint64_t a6)
{
  ObjectType = swift_getObjectType();
  v11 = type metadata accessor for DirectionalTextAlignment();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v50 = &v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10002849C(&qword_100972ED0, &unk_1007B17B0);
  __chkstk_darwin(v14 - 8);
  v16 = &v43 - v15;
  v17 = OBJC_IVAR____TtC8AppStore19CrossLinkLockupView_artworkView;
  type metadata accessor for ArtworkView();
  *&v6[v17] = static ArtworkView.iconArtworkView.getter();
  v48 = OBJC_IVAR____TtC8AppStore19CrossLinkLockupView_crossLinkTitleLabel;
  if (qword_10096DD70 != -1)
  {
    swift_once();
  }

  v18 = type metadata accessor for FontUseCase();
  v19 = sub_1000056A8(v18, qword_1009D07E8);
  v20 = *(v18 - 8);
  v47 = *(v20 + 16);
  v47(v16, v19, v18);
  v46 = *(v20 + 56);
  v46(v16, 0, 1, v18);
  v21 = enum case for DirectionalTextAlignment.none(_:);
  v45 = *(v12 + 104);
  v45(v50, enum case for DirectionalTextAlignment.none(_:), v11);
  v22 = type metadata accessor for DynamicTypeLabel();
  v44 = v11;
  v23 = v22;
  v24 = objc_allocWithZone(v22);
  *&v6[v48] = DynamicTypeLabel.init(useCase:numberOfLines:lineBreakMode:isUserInteractionEnabled:directionalTextAlignment:contentSizeCategoryMapping:)();
  v25 = OBJC_IVAR____TtC8AppStore19CrossLinkLockupView_crossLinkSubtitleLabel;
  if (qword_10096DD78 != -1)
  {
    swift_once();
  }

  v26 = sub_1000056A8(v18, qword_1009D0800);
  v47(v16, v26, v18);
  v46(v16, 0, 1, v18);
  v45(v50, v21, v44);
  v27 = objc_allocWithZone(v23);
  *&v6[v25] = DynamicTypeLabel.init(useCase:numberOfLines:lineBreakMode:isUserInteractionEnabled:directionalTextAlignment:contentSizeCategoryMapping:)();
  v6[OBJC_IVAR____TtC8AppStore19CrossLinkLockupView_allowsGroupBlending] = 1;
  *&v6[OBJC_IVAR____TtC8AppStore19CrossLinkLockupView_crossLinkPresenter] = 0;
  *&v6[OBJC_IVAR____TtC8AppStore19CrossLinkLockupView____lazy_storage___lockupViews] = 0;
  *&v6[OBJC_IVAR____TtC8AppStore19CrossLinkLockupView____lazy_storage___crossLinkViews] = 0;
  type metadata accessor for SmallLockupView(0);
  *&v6[OBJC_IVAR____TtC8AppStore19CrossLinkLockupView_lockupView] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v51.receiver = v6;
  v51.super_class = ObjectType;
  v28 = objc_msgSendSuper2(&v51, "initWithFrame:", a1, a2, a3, a4);
  v29 = OBJC_IVAR____TtC8AppStore19CrossLinkLockupView_lockupView;
  swift_unknownObjectWeakAssign();
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v33 = v28;
  [v33 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  [v33 setEdgesInsettingLayoutMarginsFromSafeArea:0];
  [v33 addSubview:*&v33[OBJC_IVAR____TtC8AppStore19CrossLinkLockupView_artworkView]];
  [*&v28[v29] setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  [v33 addSubview:*&v28[v29]];
  v34 = OBJC_IVAR____TtC8AppStore19CrossLinkLockupView_crossLinkTitleLabel;
  v35 = *&v33[OBJC_IVAR____TtC8AppStore19CrossLinkLockupView_crossLinkTitleLabel];
  v36 = objc_opt_self();
  v37 = v35;
  v38 = [v36 secondaryLabelColor];
  [v37 setTextColor:v38];

  [*&v33[v34] setHidden:1];
  [*&v33[v34] setAlpha:0.0];
  [v33 addSubview:*&v33[v34]];
  v39 = OBJC_IVAR____TtC8AppStore19CrossLinkLockupView_crossLinkSubtitleLabel;
  v40 = *&v33[OBJC_IVAR____TtC8AppStore19CrossLinkLockupView_crossLinkSubtitleLabel];
  v41 = [v36 labelColor];
  [v40 setTextColor:v41];

  [*&v33[v39] setHidden:1];
  [*&v33[v39] setAlpha:0.0];
  [v33 addSubview:*&v33[v39]];

  return v33;
}

uint64_t sub_10013F3FC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_10002849C(&unk_100970E00, "ο\a");
  __chkstk_darwin(v4 - 8);
  v6 = &v46 - v5;
  v56 = type metadata accessor for OfferButtonSubtitlePosition();
  v52 = *(v56 - 8);
  __chkstk_darwin(v56);
  v8 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10002849C(&unk_1009701A0, &unk_1007B17F0);
  v54 = *(v9 - 8);
  v55 = v9;
  __chkstk_darwin(v9);
  v50 = &v46 - v10;
  v11 = type metadata accessor for OfferButtonMetrics();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v46 - v16;
  v18 = *&v1[OBJC_IVAR____TtC8AppStore19CrossLinkLockupView_lockupView];
  v19 = OBJC_IVAR____TtC8AppStore15SmallLockupView_metrics;
  swift_beginAccess();
  v20 = type metadata accessor for SmallLockupLayout.Metrics();
  v21 = *(*(v20 - 8) + 16);
  v53 = a1;
  v21(a1, v18 + v19, v20);
  v51 = v2;
  v22 = [v2 traitCollection];
  if (UITraitCollection.prefersAccessibilityLayouts.getter())
  {
    if (qword_10096ECB8 != -1)
    {
      swift_once();
    }

    v23 = qword_100991010;
  }

  else
  {
    if (qword_10096ECC0 != -1)
    {
      swift_once();
    }

    v23 = qword_100991028;
  }

  v24 = sub_1000056A8(v11, v23);
  (*(v12 + 16))(v14, v24, v11);

  v25 = *(v12 + 32);
  v49 = v17;
  v25(v17, v14, v11);
  v48 = OBJC_IVAR____TtC8AppStore14BaseLockupView_offerButton;
  v26 = (*(v18 + OBJC_IVAR____TtC8AppStore14BaseLockupView_offerButton) + OBJC_IVAR____TtC8AppStore11OfferButton_presenter);
  swift_beginAccess();
  v27 = v26[3];
  if (v27)
  {
    v28 = sub_10002A400(v26, v26[3]);
    v47 = v6;
    v29 = *(v27 - 8);
    v30 = __chkstk_darwin(v28);
    v32 = &v46 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v29 + 16))(v32, v30);
    dispatch thunk of OfferButtonPresenter.offerDisplayProperties.getter();
    (*(v29 + 8))(v32, v27);
    v6 = v47;
  }

  v33 = v52;
  v34 = *(v52 + 104);
  v35 = v56;
  v34(v8, enum case for OfferButtonSubtitlePosition.below(_:), v56);
  v34(v6, enum case for OfferButtonSubtitlePosition.right(_:), v35);
  (*(v33 + 56))(v6, 0, 1, v35);
  sub_100140F54();
  v36 = v50;
  AccessibilityConditional.init(value:axValue:)();
  v37 = v49;
  OfferButtonMetrics.estimatedSize(for:subtitlePosition:in:)();

  (*(v54 + 8))(v36, v55);
  (*(v12 + 8))(v37, v11);
  v38 = *(v18 + v48);
  type metadata accessor for BaseLockupView();
  LayoutMarginsAware<>.layoutFrame.getter();
  v39 = v38 + OBJC_IVAR____TtC8AppStore11OfferButton_cachedIntrinsicContentSize;
  if (*(v38 + OBJC_IVAR____TtC8AppStore11OfferButton_cachedIntrinsicContentSize + 16))
  {
    v40 = OBJC_IVAR____TtC8AppStore11OfferButton__configuration;
    swift_beginAccess();
    sub_10002C0AC(v38 + v40, v57);
    sub_10002A400(v57, v57[3]);
    dispatch thunk of OfferButtonConfiguration.size(in:)();
    v42 = v41;
    v44 = v43;
    sub_100007000(v57);
    *v39 = v42;
    *(v39 + 8) = v44;
    *(v39 + 16) = 0;
  }

  return SmallLockupLayout.Metrics.offerButtonSize.setter();
}

uint64_t sub_10013FBB4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v5 = type metadata accessor for LayoutRect();
  v38 = *(v5 - 8);
  v39 = v5;
  __chkstk_darwin(v5);
  v7 = v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for SmallLockupLayout.Metrics();
  v9 = *(v8 - 8);
  *&v10 = __chkstk_darwin(v8).n128_u64[0];
  v12 = v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52.receiver = v3;
  v52.super_class = ObjectType;
  v36[1] = ObjectType;
  objc_msgSendSuper2(&v52, "layoutSubviews", v10);
  sub_10013F3FC(v12);
  v13 = [v3 traitCollection];
  v14 = UITraitCollection.prefersAccessibilityLayouts.getter();

  v37 = v7;
  if ((v14 & 1) == 0)
  {
    if (qword_10096D150 == -1)
    {
      goto LABEL_5;
    }

    goto LABEL_9;
  }

  if (qword_10096D158 != -1)
  {
LABEL_9:
    v15 = swift_once();
  }

LABEL_5:
  __chkstk_darwin(v15);
  v36[-2] = v12;
  sub_100140FB4();
  Copyable.copyWithOverrides(in:)();
  v41[6] = v47;
  v41[7] = v48;
  v41[8] = v49;
  v41[9] = v50;
  v41[2] = v43;
  v41[3] = v44;
  v41[4] = v45;
  v41[5] = v46;
  v41[0] = v42[0];
  v41[1] = v42[1];
  (*(v9 + 8))(v12, v8);
  v40 = *&v3[OBJC_IVAR____TtC8AppStore19CrossLinkLockupView_artworkView];
  v16 = v40;
  v17 = *&v3[OBJC_IVAR____TtC8AppStore19CrossLinkLockupView_lockupView];
  *&v45 = type metadata accessor for SmallLockupView(0);
  *(&v45 + 1) = &protocol witness table for UIView;
  *(&v43 + 1) = v17;
  v18 = *&v3[OBJC_IVAR____TtC8AppStore19CrossLinkLockupView_crossLinkTitleLabel];
  v19 = type metadata accessor for DynamicTypeLabel();
  v20 = *&v3[OBJC_IVAR____TtC8AppStore19CrossLinkLockupView_crossLinkSubtitleLabel];
  *(&v47 + 1) = v19;
  *&v48 = &protocol witness table for UILabel;
  *&v46 = v18;
  *&v50 = v19;
  *(&v50 + 1) = &protocol witness table for UILabel;
  *(&v48 + 1) = v20;
  sub_100141008(v41, &v51);
  type metadata accessor for ArtworkView();
  v21 = v16;
  v22 = v17;
  v23 = v18;
  v24 = v20;
  LayoutView.withMeasurements(representing:)();
  sub_100141064(v41);

  LayoutMarginsAware<>.layoutFrame.getter();
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v33 = [v3 traitCollection];
  LOBYTE(v18) = UITraitCollection.prefersAccessibilityLayouts.getter();

  v34 = v37;
  if (v18)
  {
    sub_10055C118(v37, v26, v28, v30, v32);
  }

  else
  {
    sub_10055C65C(v37, v26, v28, v30, v32);
  }

  (*(v38 + 8))(v34, v39);
  [v22 setNeedsLayout];
  return sub_1001410B8(v42);
}

uint64_t sub_10014008C()
{
  v1 = OBJC_IVAR____TtC8AppStore19CrossLinkLockupView____lazy_storage___lockupViews;
  if (*(v0 + OBJC_IVAR____TtC8AppStore19CrossLinkLockupView____lazy_storage___lockupViews))
  {
    v2 = *(v0 + OBJC_IVAR____TtC8AppStore19CrossLinkLockupView____lazy_storage___lockupViews);
  }

  else
  {
    sub_10002849C(&unk_100985700, qword_1007C32D0);
    v2 = swift_allocObject();
    *(v2 + 16) = xmmword_1007B5360;
    v3 = *(v0 + OBJC_IVAR____TtC8AppStore19CrossLinkLockupView_lockupView);
    v4 = *(v3 + OBJC_IVAR____TtC8AppStore14BaseLockupView_titleLabel);
    *(v2 + 32) = v4;
    v5 = *(v3 + OBJC_IVAR____TtC8AppStore14BaseLockupView_subtitleLabel);
    *(v2 + 40) = v5;
    v6 = *(v3 + OBJC_IVAR____TtC8AppStore14BaseLockupView_headingLabel);
    *(v2 + 48) = v6;
    v7 = *(v3 + OBJC_IVAR____TtC8AppStore14BaseLockupView_tertiaryTitleLabel);
    *(v2 + 56) = v7;
    v8 = *(v3 + OBJC_IVAR____TtC8AppStore14BaseLockupView_offerLabel);
    *(v2 + 64) = v8;
    *(v0 + v1) = v2;
    v9 = v7;
    v10 = v8;

    v11 = v4;
    v12 = v5;
    v13 = v6;
  }

  return v2;
}

uint64_t sub_1001401A4()
{
  v1 = OBJC_IVAR____TtC8AppStore19CrossLinkLockupView____lazy_storage___crossLinkViews;
  if (*(v0 + OBJC_IVAR____TtC8AppStore19CrossLinkLockupView____lazy_storage___crossLinkViews))
  {
    v2 = *(v0 + OBJC_IVAR____TtC8AppStore19CrossLinkLockupView____lazy_storage___crossLinkViews);
  }

  else
  {
    sub_10002849C(&qword_100973210, qword_1007B0BB0);
    v2 = swift_allocObject();
    *(v2 + 16) = xmmword_1007B15F0;
    v3 = *(v0 + OBJC_IVAR____TtC8AppStore19CrossLinkLockupView_crossLinkTitleLabel);
    v4 = *(v0 + OBJC_IVAR____TtC8AppStore19CrossLinkLockupView_crossLinkSubtitleLabel);
    *(v2 + 32) = v3;
    *(v2 + 40) = v4;
    *(v0 + v1) = v2;
    v5 = v3;
    v6 = v4;
  }

  return v2;
}

double sub_10014024C(char a1, char a2)
{
  if (a1)
  {
    if (([*(v2 + OBJC_IVAR____TtC8AppStore19CrossLinkLockupView_crossLinkTitleLabel) isHidden] & 1) == 0)
    {
      return result;
    }

    v5 = sub_10014008C();
    v6 = 0;
    v7 = _swiftEmptyArrayStorage;
    v35 = _swiftEmptyArrayStorage;
    v8 = *(v5 + 16);
    while (v8 != v6)
    {
      if (v6 >= *(v5 + 16))
      {
        __break(1u);
        goto LABEL_52;
      }

      v9 = *(v5 + 8 * v6++ + 32);
      if (v9)
      {
        v10 = v9;
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v35 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v35 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        v2 = &v35;
        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v7 = v35;
      }
    }

    v2 = sub_1001401A4();
    if ((a2 & 1) == 0)
    {
      goto LABEL_19;
    }
  }

  else
  {
    if (([*(*(v2 + OBJC_IVAR____TtC8AppStore19CrossLinkLockupView_lockupView) + OBJC_IVAR____TtC8AppStore14BaseLockupView_titleLabel) isHidden] & 1) == 0)
    {
      return result;
    }

    v7 = sub_1001401A4();
    v11 = sub_10014008C();
    v12 = 0;
    v2 = _swiftEmptyArrayStorage;
    v35 = _swiftEmptyArrayStorage;
    v13 = *(v11 + 16);
    while (v13 != v12)
    {
      if (v12 >= *(v11 + 16))
      {
LABEL_52:
        __break(1u);
LABEL_53:
        __break(1u);
        goto LABEL_54;
      }

      v14 = *(v11 + 8 * v12++ + 32);
      if (v14)
      {
        v15 = v14;
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v35 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v35 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v2 = v35;
      }
    }

    if ((a2 & 1) == 0)
    {
LABEL_19:
      if (v7 >> 62)
      {
        goto LABEL_59;
      }

      v16 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_21;
    }
  }

  if (v2 >> 62)
  {
    v21 = _CocoaArrayWrapper.endIndex.getter();
    if (v21)
    {
      goto LABEL_33;
    }

LABEL_61:
    v30 = objc_opt_self();
    v31 = swift_allocObject();
    *(v31 + 16) = v7;
    *(v31 + 24) = v2;
    v39 = sub_100140F44;
    v40 = v31;
    v35 = _NSConcreteStackBlock;
    v36 = 1107296256;
    v37 = sub_100007A08;
    v38 = &unk_1008B59C8;
    v32 = _Block_copy(&v35);

    v33 = swift_allocObject();
    *(v33 + 16) = v7;
    v39 = sub_100140F4C;
    v40 = v33;
    v35 = _NSConcreteStackBlock;
    v36 = 1107296256;
    v37 = sub_100504C5C;
    v38 = &unk_1008B5A18;
    v34 = _Block_copy(&v35);

    [v30 animateWithDuration:4 delay:v32 options:v34 animations:0.33 completion:0.0];
    _Block_release(v34);
    _Block_release(v32);
    return result;
  }

  v21 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v21)
  {
    goto LABEL_61;
  }

LABEL_33:
  v22 = 0;
  while (1)
  {
    if ((v2 & 0xC000000000000001) != 0)
    {
      v23 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v22 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_56;
      }

      v23 = *(v2 + 8 * v22 + 32);
    }

    v24 = v23;
    v25 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      break;
    }

    [v23 setHidden:0];

    ++v22;
    if (v25 == v21)
    {
      goto LABEL_61;
    }
  }

LABEL_54:
  __break(1u);
LABEL_55:
  __break(1u);
LABEL_56:
  __break(1u);
  while (1)
  {
    __break(1u);
LABEL_58:
    __break(1u);
LABEL_59:
    v16 = _CocoaArrayWrapper.endIndex.getter();
LABEL_21:
    if (v16)
    {
      v17 = 0;
      do
      {
        if ((v7 & 0xC000000000000001) != 0)
        {
          v18 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v17 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_55;
          }

          v18 = *(v7 + 8 * v17 + 32);
        }

        v19 = v18;
        v20 = v17 + 1;
        if (__OFADD__(v17, 1))
        {
          goto LABEL_53;
        }

        [v18 setAlpha:0.0];
        [v19 setHidden:1];

        ++v17;
      }

      while (v20 != v16);
    }

    if (v2 >> 62)
    {
      break;
    }

    v7 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      goto LABEL_64;
    }

LABEL_43:
    v26 = 0;
    while (1)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v27 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v26 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_58;
        }

        v27 = *(v2 + 8 * v26 + 32);
      }

      v28 = v27;
      v29 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        break;
      }

      [v27 setAlpha:1.0];
      [v28 setHidden:0];

      ++v26;
      if (v29 == v7)
      {
        goto LABEL_64;
      }
    }
  }

  v7 = _CocoaArrayWrapper.endIndex.getter();
  if (v7)
  {
    goto LABEL_43;
  }

LABEL_64:

  return result;
}

void sub_1001407F0(unint64_t a1, unint64_t a2)
{
  if (a1 >> 62)
  {
    goto LABEL_13;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v5 = 0;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v5 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_12;
        }

        v6 = *(a1 + 8 * v5 + 32);
      }

      v7 = v6;
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      [v6 setAlpha:0.0];

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
  if (a2 >> 62)
  {
    goto LABEL_26;
  }

  for (j = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10); j; j = _CocoaArrayWrapper.endIndex.getter())
  {
    for (k = 0; ; ++k)
    {
      if ((a2 & 0xC000000000000001) != 0)
      {
        v11 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (k >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_25;
        }

        v11 = *(a2 + 8 * k + 32);
      }

      v12 = v11;
      v13 = k + 1;
      if (__OFADD__(k, 1))
      {
        break;
      }

      [v11 setAlpha:1.0];

      if (v13 == j)
      {
        return;
      }
    }

    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    ;
  }
}

void sub_100140974(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62)
  {
    goto LABEL_13;
  }

  for (i = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    for (j = 0; ; ++j)
    {
      if ((a2 & 0xC000000000000001) != 0)
      {
        v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (j >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_12;
        }

        v5 = *(a2 + 8 * j + 32);
      }

      v6 = v5;
      v7 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      [v5 setHidden:1];

      if (v7 == i)
      {
        return;
      }
    }

    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    ;
  }
}

uint64_t sub_100140A4C(void *a1)
{
  v3 = [a1 preferredContentSizeCategory];
  v4 = UIContentSizeCategory.isAccessibilityCategory.getter();

  if (v4)
  {
    v5 = [v1 _localOverrideTraitCollection];
    if (!v5)
    {
      v9 = [objc_opt_self() traitCollectionWithPreferredContentSizeCategory:UIContentSizeCategoryExtraExtraExtraLarge];
      [v1 _setLocalOverrideTraitCollection:v9];

      return 1;
    }
  }

  v6 = [a1 preferredContentSizeCategory];
  v7 = static UIContentSizeCategory.< infix(_:_:)();

  if ((v7 & 1) == 0)
  {
    return 0;
  }

  [v1 _setLocalOverrideTraitCollection:0];
  return 1;
}

uint64_t sub_100140B68(void *a1)
{
  SmallLockupLayout.Metrics.offerButtonMargin.getter();
  sub_100007000(a1 + 15);
  sub_100005A38(&v6, (a1 + 15));
  v2 = SmallLockupLayout.Metrics.offerButtonSize.getter();
  if ((v4 & 1) == 0)
  {
    a1[13] = v2;
    a1[14] = v3;
  }

  result = SmallLockupLayout.Metrics.numberOfLines.getter();
  a1[12] = result;
  return result;
}

uint64_t sub_100140BC4(void *a1)
{
  SmallLockupLayout.Metrics.artworkSize.getter();
  *a1 = v2;
  a1[1] = v3;
  SmallLockupLayout.Metrics.artworkMargin.getter();
  v10 = &type metadata for CGFloat;
  v11 = &protocol witness table for CGFloat;
  *&v9 = v4;
  sub_100007000(a1 + 2);
  sub_100005A38(&v9, (a1 + 2));
  SmallLockupLayout.Metrics.offerButtonMargin.getter();
  sub_100007000(a1 + 15);
  sub_100005A38(&v9, (a1 + 15));
  v5 = SmallLockupLayout.Metrics.offerButtonSize.getter();
  if ((v7 & 1) == 0)
  {
    a1[13] = v5;
    a1[14] = v6;
  }

  result = SmallLockupLayout.Metrics.numberOfLines.getter();
  a1[12] = result;
  return result;
}

double sub_100140D18()
{
  swift_beginAccess();

  return result;
}

double sub_100140D60(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8AppStore19CrossLinkLockupView_crossLinkPresenter;
  swift_beginAccess();
  *(v1 + v3) = a1;

  return result;
}

id sub_100140E1C()
{
  v1 = *&v0[OBJC_IVAR____TtC8AppStore19CrossLinkLockupView_crossLinkTitleLabel];
  v2 = String._bridgeToObjectiveC()();
  [v1 setText:v2];

  v3 = *&v0[OBJC_IVAR____TtC8AppStore19CrossLinkLockupView_crossLinkSubtitleLabel];
  v4 = String._bridgeToObjectiveC()();
  [v3 setText:v4];

  return [v0 setNeedsLayout];
}

unint64_t sub_100140F54()
{
  result = qword_100987130;
  if (!qword_100987130)
  {
    type metadata accessor for OfferButtonSubtitlePosition();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100987130);
  }

  return result;
}

unint64_t sub_100140FB4()
{
  result = qword_100975AE0;
  if (!qword_100975AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100975AE0);
  }

  return result;
}

void sub_100141114()
{
  v1 = type metadata accessor for DirectionalTextAlignment();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10002849C(&qword_100972ED0, &unk_1007B17B0);
  __chkstk_darwin(v5 - 8);
  v7 = &v19 - v6;
  v8 = OBJC_IVAR____TtC8AppStore19CrossLinkLockupView_artworkView;
  type metadata accessor for ArtworkView();
  *(v0 + v8) = static ArtworkView.iconArtworkView.getter();
  v22 = OBJC_IVAR____TtC8AppStore19CrossLinkLockupView_crossLinkTitleLabel;
  if (qword_10096DD70 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for FontUseCase();
  v10 = sub_1000056A8(v9, qword_1009D07E8);
  v11 = *(v9 - 8);
  v21 = *(v11 + 16);
  v21(v7, v10, v9);
  v20 = *(v11 + 56);
  v20(v7, 0, 1, v9);
  v12 = enum case for DirectionalTextAlignment.none(_:);
  v13 = v2 + 104;
  v14 = *(v2 + 104);
  v23 = v13;
  v24 = v1;
  v14(v4, enum case for DirectionalTextAlignment.none(_:), v1);
  v15 = type metadata accessor for DynamicTypeLabel();
  v16 = objc_allocWithZone(v15);
  *(v0 + v22) = DynamicTypeLabel.init(useCase:numberOfLines:lineBreakMode:isUserInteractionEnabled:directionalTextAlignment:contentSizeCategoryMapping:)();
  v22 = OBJC_IVAR____TtC8AppStore19CrossLinkLockupView_crossLinkSubtitleLabel;
  if (qword_10096DD78 != -1)
  {
    swift_once();
  }

  v17 = sub_1000056A8(v9, qword_1009D0800);
  v21(v7, v17, v9);
  v20(v7, 0, 1, v9);
  v14(v4, v12, v24);
  v18 = objc_allocWithZone(v15);
  *(v0 + v22) = DynamicTypeLabel.init(useCase:numberOfLines:lineBreakMode:isUserInteractionEnabled:directionalTextAlignment:contentSizeCategoryMapping:)();
  *(v0 + OBJC_IVAR____TtC8AppStore19CrossLinkLockupView_allowsGroupBlending) = 1;
  *(v0 + OBJC_IVAR____TtC8AppStore19CrossLinkLockupView_crossLinkPresenter) = 0;
  *(v0 + OBJC_IVAR____TtC8AppStore19CrossLinkLockupView____lazy_storage___lockupViews) = 0;
  *(v0 + OBJC_IVAR____TtC8AppStore19CrossLinkLockupView____lazy_storage___crossLinkViews) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t SubscriptionLockupPresenter.iapAdamId.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC8AppStore27SubscriptionLockupPresenter_iapAdamId;
  v4 = type metadata accessor for AdamId();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SubscriptionLockupPresenter.isIapVisible.getter()
{
  v1 = OBJC_IVAR____TtC8AppStore27SubscriptionLockupPresenter_isIapVisible;
  swift_beginAccess();
  return *(v0 + v1);
}

double sub_100141578(char a1)
{
  v3 = a1 & 1;
  v4 = OBJC_IVAR____TtC8AppStore27SubscriptionLockupPresenter_isIapVisible;
  swift_beginAccess();
  v6 = *(v1 + v4);
  *(v1 + v4) = a1;
  if (v6 != v3)
  {
    v7 = v1 + OBJC_IVAR____TtC8AppStore27SubscriptionLockupPresenter_view;
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v8 = *(v7 + 8);
      ObjectType = swift_getObjectType();
      (*(v8 + 32))(a1 & 1, 1, ObjectType, v8);
      swift_unknownObjectRelease();
    }
  }

  return result;
}

double SubscriptionLockupPresenter.view.setter(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC8AppStore27SubscriptionLockupPresenter_view;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v5 = *(v4 + 8);
    ObjectType = swift_getObjectType();
    v7 = OBJC_IVAR____TtC8AppStore27SubscriptionLockupPresenter_isIapVisible;
    swift_beginAccess();
    (*(v5 + 32))(*(v2 + v7), 1, ObjectType, v5);
    swift_unknownObjectRelease();
  }

  swift_unknownObjectRelease();
  return result;
}

void (*SubscriptionLockupPresenter.view.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC8AppStore27SubscriptionLockupPresenter_view;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_100141804;
}

void sub_100141804(uint64_t a1, char a2)
{
  v3 = *a1;
  *(*(*a1 + 40) + *(*a1 + 48) + 8) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v4 = v3[5];
      v5 = *(v4 + v3[6] + 8);
      ObjectType = swift_getObjectType();
      v7 = OBJC_IVAR____TtC8AppStore27SubscriptionLockupPresenter_isIapVisible;
      swift_beginAccess();
      (*(v5 + 32))(*(v4 + v7), 1, ObjectType, v5);
      swift_unknownObjectRelease();
    }
  }

  free(v3);
}

uint64_t SubscriptionLockupPresenter.__allocating_init(subscriptionFamilyId:iapAdamId:view:iapDataSource:appStateController:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v16 = swift_allocObject();
  SubscriptionLockupPresenter.init(subscriptionFamilyId:iapAdamId:view:iapDataSource:appStateController:)(a1, a2, a3, a4, a5, a6, a7, a8);
  return v16;
}

char *SubscriptionLockupPresenter.init(subscriptionFamilyId:iapAdamId:view:iapDataSource:appStateController:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = v8;
  v59 = a8;
  v60 = a5;
  v62 = a7;
  v63 = a4;
  v65 = a6;
  v61 = a1;
  v53 = *v8;
  v12 = type metadata accessor for AdamId();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v51 = v14;
  v52 = &v49 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for InAppPurchaseState();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v49 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = &v49 - v20;
  v22 = &v8[OBJC_IVAR____TtC8AppStore27SubscriptionLockupPresenter_view];
  *(v22 + 1) = 0;
  swift_unknownObjectWeakInit();
  v56 = v13;
  v23 = *(v13 + 16);
  v64 = v12;
  v50 = v23;
  v23(&v9[OBJC_IVAR____TtC8AppStore27SubscriptionLockupPresenter_iapAdamId], a3, v12);
  swift_beginAccess();
  *(v22 + 1) = v60;
  swift_unknownObjectWeakAssign();
  swift_getObjectType();
  v24 = dispatch thunk of AppStateController.stateMachine(forApp:)();
  v25 = &v9[OBJC_IVAR____TtC8AppStore27SubscriptionLockupPresenter_iapStateMachine];
  *v25 = v24;
  v25[1] = v26;

  InAppPurchaseStateDataSource.state(for:subscriptionFamilyId:)();
  v54 = a2;

  v27 = *(v16 + 16);
  v55 = v21;
  v27(v18, v21, v15);
  v58 = v15;
  v59 = v16;
  v28 = (*(v16 + 88))(v18, v15);
  v30 = v28 == enum case for InAppPurchaseState.buyable(_:) || v28 == enum case for InAppPurchaseState.indeterminateProgress(_:) || v28 == enum case for InAppPurchaseState.unknown(_:);
  v31 = v30;
  if (!v30)
  {
    (*(v59 + 8))(v18, v58);
  }

  v49 = OBJC_IVAR____TtC8AppStore27SubscriptionLockupPresenter_isIapVisible;
  v9[OBJC_IVAR____TtC8AppStore27SubscriptionLockupPresenter_isIapVisible] = v31;
  if (*&v9[OBJC_IVAR____TtC8AppStore27SubscriptionLockupPresenter_iapStateMachine])
  {
    swift_getObjectType();
    swift_allocObject();
    swift_weakInit();

    dispatch thunk of AppStateMachine.addStateTransitionObserver(_:action:)();
  }

  v32 = swift_allocObject();
  swift_weakInit();
  v33 = v52;
  v57 = a3;
  v34 = a3;
  v35 = v64;
  v50(v52, v34, v64);
  v36 = v56;
  v37 = (*(v56 + 80) + 16) & ~*(v56 + 80);
  v38 = (v51 + v37 + 7) & 0xFFFFFFFFFFFFFFF8;
  v39 = (v38 + 23) & 0xFFFFFFFFFFFFFFF8;
  v40 = swift_allocObject();
  (*(v36 + 32))(v40 + v37, v33, v35);
  v41 = (v40 + v38);
  v42 = v54;
  *v41 = v61;
  v41[1] = v42;
  *(v40 + v39) = v32;
  *(v40 + ((v39 + 15) & 0xFFFFFFFFFFFFFFF8)) = v53;

  InAppPurchaseStateDataSource.addObserver(_:action:)();

  if (v63)
  {
    ObjectType = swift_getObjectType();
    v44 = v49;
    swift_beginAccess();
    v45 = v9[v44];
    v46 = v60;
    v47 = *(v60 + 32);
    swift_unknownObjectRetain();
    v47(v45, 0, ObjectType, v46);
    swift_unknownObjectRelease();

    swift_unknownObjectRelease_n();
  }

  else
  {
    swift_unknownObjectRelease();
  }

  (*(v36 + 8))(v57, v64);
  (*(v59 + 8))(v55, v58);
  return v9;
}

void sub_100141F2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = type metadata accessor for LegacyAppState();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getObjectType();
  dispatch thunk of AppStateMachine.currentState.getter();
  if ((*(v4 + 88))(v6, v3) == enum case for LegacyAppState.purchased(_:))
  {
    (*(v4 + 96))(v6, v3);
    v7 = type metadata accessor for PurchaseType();
    (*(*(v7 - 8) + 8))(v6, v7);
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      sub_100141578(0);
    }
  }

  else
  {
    (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_1001420C8(__n128 a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = type metadata accessor for InAppPurchaseState();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v18 - v11;
  InAppPurchaseStateDataSource.state(for:subscriptionFamilyId:)();
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    (*(v7 + 16))(v9, v12, v6);
    v13 = (*(v7 + 88))(v9, v6);
    v15 = v13 == enum case for InAppPurchaseState.buyable(_:) || v13 == enum case for InAppPurchaseState.indeterminateProgress(_:) || v13 == enum case for InAppPurchaseState.unknown(_:);
    v16 = v15;
    if (!v15)
    {
      (*(v7 + 8))(v9, v6);
    }

    sub_100141578(v16);
  }

  return (*(v7 + 8))(v12, v6);
}

uint64_t sub_1001422AC(uint64_t a1)
{
  v3 = *(type metadata accessor for AdamId() - 8);
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = (*(v3 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 23) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v1 + v6);
  v9 = *v8;
  v10 = v8[1];
  v11 = *(v1 + v7);

  return sub_1001420C8(v4, a1, v1 + v5, v9, v10, v11);
}

uint64_t SubscriptionLockupPresenter.deinit(__n128 a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (*(v3 + OBJC_IVAR____TtC8AppStore27SubscriptionLockupPresenter_iapStateMachine))
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    dispatch thunk of AppStateMachine.removeStateTransitionActions(for:)();
    swift_unknownObjectRelease();
  }

  type metadata accessor for StreamlinedInAppPurchaseOfferButtonPresenter();
  if (static StreamlinedInAppPurchaseOfferButtonPresenter.activeStateDataSource.getter())
  {
    InAppPurchaseStateDataSource.removeObserver(_:)();
  }

  v5 = OBJC_IVAR____TtC8AppStore27SubscriptionLockupPresenter_iapAdamId;
  v6 = type metadata accessor for AdamId();
  (*(*(v6 - 8) + 8))(v4 + v5, v6);
  sub_10001F64C(v4 + OBJC_IVAR____TtC8AppStore27SubscriptionLockupPresenter_view);
  swift_unknownObjectRelease();
  return v4;
}

uint64_t SubscriptionLockupPresenter.__deallocating_deinit(uint64_t a1, uint64_t a2, __n128 a3)
{
  SubscriptionLockupPresenter.deinit(a3, a1, a2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for SubscriptionLockupPresenter(uint64_t a1)
{
  result = qword_100975B18;
  if (!qword_100975B18)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100142510(uint64_t a1)
{
  result = type metadata accessor for AdamId();
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

id sub_1001425BC()
{
  if (v0[4])
  {
    return 0;
  }

  v2 = *v0;
  if (*v0 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    result = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = v0[1];
  if (v3 == result)
  {
    goto LABEL_12;
  }

  if ((v2 & 0xC000000000000001) == 0)
  {
    if ((v3 & 0x8000000000000000) != 0)
    {
LABEL_19:
      __break(1u);
      goto LABEL_20;
    }

    if (v3 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_20:
      __break(1u);
      goto LABEL_21;
    }

    result = *(v2 + 8 * v3 + 32);
    v4 = (v3 + 1);
    if (!__OFADD__(v3, 1))
    {
      goto LABEL_10;
    }

LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  result = specialized _ArrayBuffer._getElementSlowPath(_:)();
  v4 = (v3 + 1);
  if (__OFADD__(v3, 1))
  {
    goto LABEL_18;
  }

LABEL_10:
  v0[1] = v4;
  v5 = v0[3];
  v6 = *(v0[2] + 16);
  if (v5 == v6)
  {

LABEL_12:
    result = 0;
    *(v0 + 32) = 1;
    return result;
  }

  if (v5 < v6)
  {
    v7 = result;
    v0[3] = v5 + 1;

    return v7;
  }

LABEL_21:
  __break(1u);
  return result;
}

NSString sub_1001426DC()
{
  result = String._bridgeToObjectiveC()();
  qword_100975BB8 = result;
  return result;
}

char *sub_100142988(unint64_t a1, uint64_t a2)
{
  v3 = v2;
  v61 = a2;
  v5 = sub_10002849C(&unk_100987100, &qword_1007CF950);
  __chkstk_darwin(v5 - 8);
  v60 = &v55 - v6;
  v59 = type metadata accessor for UIButton.Configuration.CornerStyle();
  v55 = *(v59 - 8);
  __chkstk_darwin(v59);
  v58 = &v55 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10002849C(&qword_10097CC90, &unk_1007BB2A0);
  __chkstk_darwin(v8 - 8);
  v10 = &v55 - v9;
  v11 = *(a1 + 16);
  if (v11)
  {
    v12 = 0;
    v13 = a1 + 40;
    v14 = _swiftEmptyArrayStorage;
    v57 = a1 + 40;
    while (2)
    {
      v15 = (v13 + 16 * v12);
      v16 = v12;
      while (1)
      {
        if (v16 >= v11)
        {
          goto LABEL_41;
        }

        v12 = v16 + 1;
        if (__OFADD__(v16, 1))
        {
LABEL_42:
          __break(1u);
LABEL_43:
          __break(1u);
          goto LABEL_44;
        }

        v17 = *(v15 - 1);
        v18 = *v15;

        a1 = v17;
        Action.title.getter();
        if (v19)
        {
          break;
        }

        ++v16;
        v15 += 16;
        if (v12 == v11)
        {
          goto LABEL_16;
        }
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v63[0] = v14;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        a1 = v63;
        sub_100143FE4(0, v14[2] + 1, 1);
        v14 = v63[0];
      }

      v22 = v14[2];
      v21 = v14[3];
      if (v22 >= v21 >> 1)
      {
        a1 = v63;
        sub_100143FE4((v21 > 1), v22 + 1, 1);
        v14 = v63[0];
      }

      v14[2] = v22 + 1;
      v23 = &v14[2 * v22];
      v23[4] = v17;
      *(v23 + 40) = v18;
      v13 = v57;
      if (v12 != v11)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v14 = _swiftEmptyArrayStorage;
  }

LABEL_16:
  a1 = v14[2];
  v11 = OBJC_IVAR____TtC8AppStore15BannerButtonRow_buttonViews;
  swift_beginAccess();
  v24 = *&v3[v11];
  if (v24 >> 62)
  {
LABEL_44:
    result = _CocoaArrayWrapper.endIndex.getter();
    v26 = a1 - result;
    if (!__OFSUB__(a1, result))
    {
      goto LABEL_18;
    }

LABEL_46:
    __break(1u);
    return result;
  }

  result = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v26 = a1 - result;
  if (__OFSUB__(a1, result))
  {
    goto LABEL_46;
  }

LABEL_18:
  v57 = v14;
  if (v26 <= 0)
  {
    if (v26 < 0)
    {
      for (i = &result[-a1]; i; --i)
      {
        swift_beginAccess();
        a1 = *&v3[v11];
        v14 = (a1 >> 62);
        if (a1 >> 62)
        {
          if (!_CocoaArrayWrapper.endIndex.getter())
          {
LABEL_40:
            __break(1u);
LABEL_41:
            __break(1u);
            goto LABEL_42;
          }
        }

        else if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_40;
        }

        isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
        *&v3[v11] = a1;
        if (v14 || (isUniquelyReferenced_nonNull_bridgeObject & 1) == 0)
        {
          a1 = sub_100549964();
        }

        v52 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v52)
        {
          goto LABEL_43;
        }

        v53 = v52 - 1;
        v54 = *((a1 & 0xFFFFFFFFFFFFFF8) + 8 * v53 + 0x20);
        *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10) = v53;
        *&v3[v11] = a1;
        swift_endAccess();
        [v54 removeFromSuperview];
        v62 = v54;
        swift_beginAccess();
        sub_10002849C(&qword_100975C20, "Xd\b");
        ReusePool.recycle(_:)();
        swift_endAccess();
      }
    }
  }

  else
  {
    do
    {
      swift_beginAccess();
      sub_10002849C(&qword_100975C20, "Xd\b");
      ReusePool.dequeue(or:)();
      swift_endAccess();
      v27 = v62;
      swift_beginAccess();
      v28 = v27;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((*&v3[v11] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v3[v11] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v56 = *((*&v3[v11] & 0xFFFFFFFFFFFFFF8) + 0x10);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      swift_endAccess();
      [v3 addSubview:v28];

      --v26;
    }

    while (v26);
  }

  v63[0] = *&v3[v11];
  v63[1] = 0;
  v63[2] = v57;
  v63[3] = 0;
  v64 = 0;

  v29 = sub_1001425BC();
  if (v29)
  {
    v32 = v29;
    v33 = v30;
    v34 = v31;
    v57 = sub_100005744(0, &qword_10097CD40, UIAction_ptr);
    LODWORD(v56) = enum case for UIButton.Configuration.CornerStyle.capsule(_:);
    v55 += 13;
    do
    {
      if (qword_10096D160 != -1)
      {
        swift_once();
      }

      v35 = qword_100975BB8;
      v36 = swift_allocObject();
      *(v36 + 16) = v61;
      *(v36 + 24) = v33;
      v37 = v34 & 1;
      *(v36 + 32) = v34 & 1;
      v38 = v35;

      v39 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
      v40 = v32;
      [v40 removeActionForIdentifier:v38 forControlEvents:0x2000];

      Action.title.getter();

      static UIButton.Configuration.gray()();
      UIButton.Configuration.title.setter();
      v41 = objc_opt_self();
      v42 = [v41 tintColor];
      v43 = [v42 colorWithAlphaComponent:0.08];

      UIButton.Configuration.baseBackgroundColor.setter();
      v44 = [v41 tintColor];
      UIButton.Configuration.baseForegroundColor.setter();
      (*v55)(v58, v56, v59);
      UIButton.Configuration.cornerStyle.setter();
      UIButton.Configuration.contentInsets.setter();
      v45 = v60;
      UIConfigurationTextAttributesTransformer.init(_:)();
      v46 = type metadata accessor for UIConfigurationTextAttributesTransformer();
      (*(*(v46 - 8) + 56))(v45, 0, 1, v46);
      UIButton.Configuration.titleTextAttributesTransformer.setter();
      v47 = type metadata accessor for UIButton.Configuration();
      (*(*(v47 - 8) + 56))(v10, 0, 1, v47);
      UIButton.configuration.setter();
      [v40 setEnabled:v37];

      [v40 addAction:v39 forControlEvents:0x2000];

      v32 = sub_1001425BC();
      v33 = v48;
      v34 = v49;
    }

    while (v32);
  }

  return [v3 setNeedsLayout];
}

id sub_1001431D4@<X0>(void *a1@<X8>)
{
  result = [objc_allocWithZone(UIButton) init];
  *a1 = result;
  return result;
}

uint64_t sub_100143210(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_10002849C(&unk_100972A00, &unk_1007B3130);
  __chkstk_darwin(v5 - 8);
  v7 = &v11 - v6;
  v8 = sub_10002849C(&unk_100974490, &qword_1007B3DD0);
  BaseObjectGraph.injectIfAvailable<A>(_:)();
  v9 = *(v8 - 8);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_10002B894(v7, &unk_100972A00, &unk_1007B3130);
  }

  sub_1005F9AF4(a3, 1, a2, v7);

  return (*(v9 + 8))(v7, v8);
}

uint64_t sub_100143354@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for AttributeContainer();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  [objc_opt_self() _preferredFontForTextStyle:UIFontTextStyleFootnote weight:UIFontWeightMedium];
  sub_1001469E0();
  return AttributeContainer.subscript.setter();
}

void sub_100143414(uint64_t a1, uint64_t a2)
{
  v44.receiver = v2;
  v44.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v44, "layoutSubviews");
  v3 = OBJC_IVAR____TtC8AppStore15BannerButtonRow_buttonViews;
  swift_beginAccess();
  sub_100005744(0, &qword_1009811E0, UIButton_ptr);

  v4 = Array.isNotEmpty.getter();

  if (v4)
  {
    [v2 bounds];
    v6 = v5;
    v7 = *&v2[v3];
    if (v7 >> 62)
    {
      goto LABEL_38;
    }

    v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_4:

    if (v8 < 1)
    {
      v6 = 0.0;
    }

    else
    {
      v6 = (v6 + (v8 - 1) * -10.0) / v8;
    }

    v9 = *&v2[v3];
    if (v9 >> 62)
    {
      v10 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v11 = 0;
    do
    {
      if (v10 == v11)
      {

        [v2 bounds];
        MinX = CGRectGetMinX(v45);
        v19 = *&v2[v3];
        if (v19 >> 62)
        {
          v20 = _CocoaArrayWrapper.endIndex.getter();
          if (!v20)
          {
            return;
          }
        }

        else
        {
          v20 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (!v20)
          {
            return;
          }
        }

        if (v20 >= 1)
        {

          v21 = 0;
          do
          {
            if ((v19 & 0xC000000000000001) != 0)
            {
              v22 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              v22 = *(v19 + 8 * v21 + 32);
            }

            v23 = v22;
            ++v21;
            [v2 bounds];
            [v23 sizeThatFits:{v24, v25}];
            [v2 bounds];
            CGRectGetMinY(v46);
            [v2 bounds];
            CGRect.withLayoutDirection(in:relativeTo:)();
            [v23 setFrame:?];

            MinX = v6 + 10.0 + MinX;
          }

          while (v20 != v21);
          goto LABEL_34;
        }

        __break(1u);
        goto LABEL_45;
      }

      if ((v9 & 0xC000000000000001) != 0)
      {
        v12 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v11 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_37;
        }

        v12 = *(v9 + 8 * v11 + 32);
      }

      v13 = v12;
      if (__OFADD__(v11, 1))
      {
        __break(1u);
LABEL_37:
        __break(1u);
LABEL_38:
        v8 = _CocoaArrayWrapper.endIndex.getter();
        goto LABEL_4;
      }

      [v2 bounds];
      [v13 sizeThatFits:{v14, v15}];
      v17 = v16;

      ++v11;
    }

    while (v6 >= v17);

    [v2 bounds];
    MinY = CGRectGetMinY(*&v26);
    v31 = *&v2[v3];
    if (!(v31 >> 62))
    {
      v32 = *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v32)
      {
        return;
      }

LABEL_28:
      if (v32 >= 1)
      {

        v33 = 0;
        do
        {
          if ((v31 & 0xC000000000000001) != 0)
          {
            v34 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            v34 = *(v31 + 8 * v33 + 32);
          }

          v35 = v34;
          ++v33;
          [v2 bounds];
          [v35 sizeThatFits:{v36, v37}];
          v39 = v38;
          [v2 bounds];
          v40 = CGRectGetMinX(v47);
          [v2 bounds];
          v42 = v41;
          [v2 bounds];
          CGRect.withLayoutDirection(in:relativeTo:)();
          [v35 setFrame:?];
          v48.origin.x = v40;
          v48.origin.y = MinY;
          v48.size.width = v42;
          v48.size.height = fmax(v39, 30.0);
          MaxY = CGRectGetMaxY(v48);

          MinY = MinY + MaxY + 10.0;
        }

        while (v32 != v33);
LABEL_34:

        return;
      }

LABEL_45:
      __break(1u);
      return;
    }

    v32 = _CocoaArrayWrapper.endIndex.getter();
    if (v32)
    {
      goto LABEL_28;
    }
  }
}

double sub_1001438E8(double a1, double a2)
{
  v5 = sub_10002849C(&qword_10097CC90, &unk_1007BB2A0);
  __chkstk_darwin(v5 - 8);
  v35 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v8 = __chkstk_darwin(v7).n128_u64[0];
  v10 = &v32 - v9;
  v11 = [v2 traitCollection];
  v12 = OBJC_IVAR____TtC8AppStore15BannerButtonRow_buttonViews;
  swift_beginAccess();
  v13 = *&v2[v12];
  if (v13 >> 62)
  {
LABEL_28:
    v38 = v13 & 0xFFFFFFFFFFFFFF8;
    v14 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v38 = v13 & 0xFFFFFFFFFFFFFF8;
    v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v14)
  {
    v16 = _swiftEmptyArrayStorage;
    goto LABEL_25;
  }

  v15 = 0;
  v37 = v13 & 0xC000000000000001;
  v16 = _swiftEmptyArrayStorage;
  v33 = v11;
  v36 = v13;
  do
  {
    v34 = v16;
    v17 = v15;
    while (1)
    {
      if (v37)
      {
        v18 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v15 = v17 + 1;
        if (__OFADD__(v17, 1))
        {
          goto LABEL_26;
        }
      }

      else
      {
        if (v17 >= *(v38 + 16))
        {
          goto LABEL_27;
        }

        v18 = *(v13 + 8 * v17 + 32);
        v15 = v17 + 1;
        if (__OFADD__(v17, 1))
        {
LABEL_26:
          __break(1u);
LABEL_27:
          __break(1u);
          goto LABEL_28;
        }
      }

      v19 = v18;
      UIButton.configuration.getter();
      v20 = type metadata accessor for UIButton.Configuration();
      v11 = *(v20 - 8);
      if (v11[6](v10, 1, v20) != 1)
      {
        break;
      }

      sub_10002B894(v10, &qword_10097CC90, &unk_1007BB2A0);

LABEL_7:
      ++v17;
      v13 = v36;
      if (v15 == v14)
      {
        v11 = v33;
        v16 = v34;
        goto LABEL_25;
      }
    }

    v21 = v35;
    sub_100146A44(v10, v35);
    v22 = UIButton.Configuration.title.getter();
    v24 = v23;
    v25 = v11[1];
    ++v11;
    (v25)(v21, v20);
    sub_10002B894(v10, &qword_10097CC90, &unk_1007BB2A0);

    if (!v24)
    {
      goto LABEL_7;
    }

    v16 = v34;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v16 = sub_100033E38(0, *(v16 + 2) + 1, 1, v16);
    }

    v11 = v33;
    v28 = *(v16 + 2);
    v27 = *(v16 + 3);
    if (v28 >= v27 >> 1)
    {
      v16 = sub_100033E38((v27 > 1), v28 + 1, 1, v16);
    }

    *(v16 + 2) = v28 + 1;
    v29 = &v16[16 * v28];
    *(v29 + 4) = v22;
    *(v29 + 5) = v24;
    v13 = v36;
  }

  while (v15 != v14);
LABEL_25:

  v30 = sub_100146340(v11, v16, a1, a2);

  return v30;
}

uint64_t type metadata accessor for BannerButtonRow(uint64_t a1)
{
  result = qword_100975BF8;
  if (!qword_100975BF8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100143D90(uint64_t a1)
{
  sub_100143E30(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_100143E30(uint64_t a1)
{
  if (!qword_100975C08)
  {
    sub_10002D1A8(&qword_100975C10, &qword_1007CB840);
    sub_100143EA0();
    v1 = type metadata accessor for ReusePool();
    if (!v2)
    {
      atomic_store(v1, &qword_100975C08);
    }
  }
}

unint64_t sub_100143EA0()
{
  result = qword_100975C18;
  if (!qword_100975C18)
  {
    sub_10002D1A8(&qword_100975C10, &qword_1007CB840);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100975C18);
  }

  return result;
}

void *sub_100143F04(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100145758(a1, a2, a3, *v3, &qword_10096FCD8, &qword_1007B1328, &unk_10097E960, &unk_1007B1330);
  *v3 = result;
  return result;
}

void *sub_100143F44(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1001446B8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_100143F64(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100145758(a1, a2, a3, *v3, &qword_100996330, qword_1007BAD70, &qword_10096FD60, &qword_1007B13D0);
  *v3 = result;
  return result;
}

char *sub_100143FA4(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1001447EC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100143FC4(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1001448FC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_100143FE4(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100144A1C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_100144004(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100145DE4(a1, a2, a3, *v3, &qword_100975C48, &qword_1007BA8F8, &qword_100973288, &qword_1007B4698);
  *v3 = result;
  return result;
}

void *sub_100144044(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100145DE4(a1, a2, a3, *v3, &qword_100975C50, &qword_1007BA900, &qword_100975C58, &qword_1007C6CA0);
  *v3 = result;
  return result;
}

void *sub_100144084(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1001460EC(a1, a2, a3, *v3, &qword_100975C60, &qword_1007BA908, &qword_100975C68, &qword_1007BA910);
  *v3 = result;
  return result;
}

void *sub_1001440C4(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1001458C8(a1, a2, a3, *v3, &qword_10096FDA8, &unk_1007B1420, &type metadata accessor for AdamId);
  *v3 = result;
  return result;
}

char *sub_100144108(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100144B50(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100144128(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100144C54(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_100144148(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100144F68(a1, a2, a3, *v3, &qword_10096FC70, &qword_1007B12B0, &qword_10096FC78, &qword_1007B12B8);
  *v3 = result;
  return result;
}

char *sub_100144188(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100144D60(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1001441A8(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100144E64(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1001441C8(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100144F68(a1, a2, a3, *v3, &qword_10096FC98, &unk_1007B12E0, &qword_10096FCA0, &unk_1007C5080);
  *v3 = result;
  return result;
}

void *sub_100144208(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10014509C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100144228(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1001451D0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100144248(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1001452D4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_100144268(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1001458C8(a1, a2, a3, *v3, &qword_100975CD8, &qword_1007BA978, &type metadata accessor for PageFacets.Facet.Option);
  *v3 = result;
  return result;
}

char *sub_1001442AC(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1001453F0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1001442CC(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100145758(a1, a2, a3, *v3, &qword_100975CB0, &qword_1007BA950, &qword_100973D50, &unk_1007B3840);
  *v3 = result;
  return result;
}

char *sub_10014430C(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1001454FC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_10014432C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100145758(a1, a2, a3, *v3, &qword_10096FCD0, &qword_1007B1318, &unk_10097A950, &qword_1007B1320);
  *v3 = result;
  return result;
}

void *sub_10014436C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100145758(a1, a2, a3, *v3, &qword_10096FCF8, &qword_1007B1358, &unk_10097E950, &qword_1007B1360);
  *v3 = result;
  return result;
}

void *sub_1001443AC(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100145624(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1001443CC(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1001458C8(a1, a2, a3, *v3, &qword_100975C88, &qword_1007BA930, &type metadata accessor for SponsoredSearchAdvert);
  *v3 = result;
  return result;
}

void *sub_100144410(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100145DE4(a1, a2, a3, *v3, &qword_100975D00, &qword_1007BA9A0, &qword_100975D08, &qword_1007BA9A8);
  *v3 = result;
  return result;
}

void *sub_100144450(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100145758(a1, a2, a3, *v3, &qword_100975CF0, &qword_1007BA990, &qword_100975CF8, &qword_1007BA998);
  *v3 = result;
  return result;
}

void *sub_100144490(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100145758(a1, a2, a3, *v3, &qword_10096FDF8, &unk_1007B1470, &qword_10096FE00, &unk_1007C5090);
  *v3 = result;
  return result;
}

void *sub_1001444D0(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1001458C8(a1, a2, a3, *v3, &qword_10096FE68, &qword_1007B1500, &type metadata accessor for DebugMetricsEvent);
  *v3 = result;
  return result;
}

void *sub_100144514(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100145DE4(a1, a2, a3, *v3, &qword_100975C98, &qword_1007D11F0, &qword_100975CA0, &qword_1007BA940);
  *v3 = result;
  return result;
}

void *sub_100144554(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1001458C8(a1, a2, a3, *v3, &qword_10096FCE8, qword_1007BCF50, &type metadata accessor for IndexPath);
  *v3 = result;
  return result;
}

char *sub_100144598(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100145AA4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1001445B8(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100145BC4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1001445D8(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100145CE4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1001445F8(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100145DE4(a1, a2, a3, *v3, &qword_100975D10, &qword_1007BA9B0, &qword_100975D18, &qword_1007BA9B8);
  *v3 = result;
  return result;
}

char *sub_100144638(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100145FCC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_100144658(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1001460EC(a1, a2, a3, *v3, &qword_100975CB8, &qword_1007BA958, &qword_100975CC0, &qword_1007BA960);
  *v3 = result;
  return result;
}

char *sub_100144698(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100146220(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1001446B8(void *result, int64_t a2, char a3, void *a4)
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
    sub_10002849C(&qword_100975C38, &qword_1007BA8E8);
    v10 = swift_allocObject();
    v11 = j__malloc_size_0(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 5);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[4 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 32 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_10002849C(&qword_100975C40, &qword_1007BA8F0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1001447EC(char *result, int64_t a2, char a3, char *a4)
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
    sub_10002849C(&qword_1009701B0, qword_1007B1800);
    v10 = swift_allocObject();
    v11 = j__malloc_size_0(v10);
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

char *sub_1001448FC(char *result, int64_t a2, char a3, char *a4)
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
    sub_10002849C(&qword_100975C30, &qword_1007BA8E0);
    v10 = swift_allocObject();
    v11 = j__malloc_size_0(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[48 * v8])
    {
      memmove(v12, v13, 48 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_100144A1C(void *result, int64_t a2, char a3, void *a4)
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
    sub_10002849C(&qword_100975C28, &qword_1007BA8D8);
    v10 = swift_allocObject();
    v11 = j__malloc_size_0(v10);
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
    sub_10002849C(&qword_10096F9A8, &unk_1007DB3B0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100144B50(char *result, int64_t a2, char a3, char *a4)
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
    sub_10002849C(&unk_1009856C0, qword_1007C9C90);
    v10 = swift_allocObject();
    v11 = j__malloc_size_0(v10);
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

char *sub_100144C54(char *result, int64_t a2, char a3, char *a4)
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
    sub_10002849C(&qword_10096FC50, &unk_1007B1280);
    v10 = swift_allocObject();
    v11 = j__malloc_size_0(v10);
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

char *sub_100144D60(char *result, int64_t a2, char a3, char *a4)
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
    sub_10002849C(&qword_10096FD18, &qword_1007B1380);
    v10 = swift_allocObject();
    v11 = j__malloc_size_0(v10);
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

char *sub_100144E64(char *result, int64_t a2, char a3, char *a4)
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
    sub_10002849C(&qword_10096FC90, &qword_1007B12D8);
    v10 = swift_allocObject();
    v11 = j__malloc_size_0(v10);
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

void *sub_100144F68(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
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
    sub_10002849C(a5, a6);
    v16 = swift_allocObject();
    v17 = j__malloc_size_0(v16);
    v18 = v17 - 32;
    if (v17 < 32)
    {
      v18 = v17 - 25;
    }

    v16[2] = v14;
    v16[3] = 2 * (v18 >> 3);
  }

  else
  {
    v16 = _swiftEmptyArrayStorage;
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 8 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    sub_10002849C(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

void *sub_10014509C(void *result, int64_t a2, char a3, void *a4)
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
    sub_10002849C(&qword_100975C70, &qword_1007BA918);
    v10 = swift_allocObject();
    v11 = j__malloc_size_0(v10);
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
    sub_10002849C(&qword_100975C78, &qword_1007BA920);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1001451D0(char *result, int64_t a2, char a3, char *a4)
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
    sub_10002849C(&qword_100980550, &qword_1007B1290);
    v10 = swift_allocObject();
    v11 = j__malloc_size_0(v10);
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

char *sub_1001452D4(char *result, int64_t a2, char a3, char *a4)
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
    sub_10002849C(&qword_100975CD0, &qword_1007BA970);
    v10 = swift_allocObject();
    v11 = j__malloc_size_0(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1001453F0(char *result, int64_t a2, char a3, char *a4)
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
    sub_10002849C(&qword_10096FD20, &qword_1007B1388);
    v10 = swift_allocObject();
    v11 = j__malloc_size_0(v10);
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

char *sub_1001454FC(char *result, int64_t a2, char a3, char *a4)
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
    sub_10002849C(&qword_100975C80, &qword_1007BA928);
    v10 = swift_allocObject();
    v11 = j__malloc_size_0(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 72);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[72 * v8])
    {
      memmove(v12, v13, 72 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_100145624(void *result, int64_t a2, char a3, void *a4)
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
    sub_10002849C(&unk_100973100, &unk_1007B1480);
    v10 = swift_allocObject();
    v11 = j__malloc_size_0(v10);
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
    sub_10002849C(&unk_100984350, &unk_1007B47A0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_100145758(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
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
    sub_10002849C(a5, a6);
    v16 = swift_allocObject();
    v17 = j__malloc_size_0(v16);
    v16[2] = v14;
    v16[3] = 2 * ((v17 - 32) / 40);
  }

  else
  {
    v16 = _swiftEmptyArrayStorage;
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[5 * v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 40 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    sub_10002849C(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

void *sub_1001458C8(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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

  sub_10002849C(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = j__malloc_size_0(v17);
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

char *sub_100145AA4(char *result, int64_t a2, char a3, char *a4)
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
    sub_10002849C(&qword_100975CE8, &qword_1007BA988);
    v10 = swift_allocObject();
    v11 = j__malloc_size_0(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100145BC4(char *result, int64_t a2, char a3, char *a4)
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
    sub_10002849C(&qword_100975C90, &qword_1007BA938);
    v10 = swift_allocObject();
    v11 = j__malloc_size_0(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100145CE4(char *result, int64_t a2, char a3, char *a4)
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
    sub_10002849C(&qword_100975CC8, &qword_1007BA968);
    v10 = swift_allocObject();
    v11 = j__malloc_size_0(v10);
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
  v15 = 16 * v8;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[v15])
    {
      memmove(v13, v14, v15);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, v15);
  }

  return v10;
}

void *sub_100145DE4(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
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
LABEL_30:
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

  if (!v15)
  {
    v19 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_10002849C(a5, a6);
  v16 = *(sub_10002849C(a7, a8) - 8);
  v17 = *(v16 + 72);
  v18 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v19 = swift_allocObject();
  result = j__malloc_size_0(v19);
  if (!v17)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v18) == 0x8000000000000000 && v17 == -1)
  {
    goto LABEL_29;
  }

  v19[2] = v14;
  v19[3] = 2 * ((result - v18) / v17);
LABEL_19:
  v21 = *(sub_10002849C(a7, a8) - 8);
  if (v11)
  {
    if (v19 < a4 || (v22 = (*(v21 + 80) + 32) & ~*(v21 + 80), v19 + v22 >= a4 + v22 + *(v21 + 72) * v14))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v19 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v19;
}

char *sub_100145FCC(char *result, int64_t a2, char a3, char *a4)
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
    sub_10002849C(&qword_100975CE0, &qword_1007BA980);
    v10 = swift_allocObject();
    v11 = j__malloc_size_0(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[48 * v8])
    {
      memmove(v12, v13, 48 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1001460EC(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
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
    sub_10002849C(a5, a6);
    v16 = swift_allocObject();
    v17 = j__malloc_size_0(v16);
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
    sub_10002849C(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

char *sub_100146220(char *result, int64_t a2, char a3, char *a4)
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
    sub_10002849C(&qword_100975CA8, &qword_1007BA948);
    v10 = swift_allocObject();
    v11 = j__malloc_size_0(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 80);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[80 * v8])
    {
      memmove(v12, v13, 80 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

double sub_100146340(uint64_t a1, uint64_t a2, double a3, double a4)
{
  v59[1] = a1;
  v7 = sub_10002849C(&unk_100987100, &qword_1007CF950);
  __chkstk_darwin(v7 - 8);
  v69 = v59 - v8;
  v68 = type metadata accessor for UIButton.Configuration.CornerStyle();
  v9 = *(v68 - 8);
  __chkstk_darwin(v68);
  v67 = v59 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for UIButton.Configuration();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v66 = v59 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = v59 - v15;
  v17 = *(a2 + 16);
  if (!v17)
  {

    return -10.0;
  }

  v70 = _swiftEmptyArrayStorage;
  sub_100144188(0, v17, 0);
  v18 = v70;
  v65 = objc_opt_self();
  v64 = enum case for UIButton.Configuration.CornerStyle.capsule(_:);
  v62 = (v12 + 16);
  v63 = (v9 + 104);
  v60 = (v12 + 8);
  v61 = (v12 + 32);
  v19 = a2 + 40;
  v20 = 0.0;
  v59[0] = v17;
  v21 = 0.0;
  do
  {

    static UIButton.Configuration.gray()();

    UIButton.Configuration.title.setter();
    v22 = v65;
    v23 = [v65 tintColor];
    v24 = [v23 colorWithAlphaComponent:0.08];

    UIButton.Configuration.baseBackgroundColor.setter();
    v25 = [v22 tintColor];
    UIButton.Configuration.baseForegroundColor.setter();
    (*v63)(v67, v64, v68);
    UIButton.Configuration.cornerStyle.setter();
    UIButton.Configuration.contentInsets.setter();
    v26 = v69;
    UIConfigurationTextAttributesTransformer.init(_:)();
    v27 = type metadata accessor for UIConfigurationTextAttributesTransformer();
    (*(*(v27 - 8) + 56))(v26, 0, 1, v27);
    UIButton.Configuration.titleTextAttributesTransformer.setter();
    v28 = v66;
    (*v62)(v66, v16, v11);
    type metadata accessor for ButtonPlaceholder(0);
    v29 = swift_allocObject();
    *(v29 + OBJC_IVAR____TtC8AppStore17ButtonPlaceholder____lazy_storage___button) = 0;
    (*v61)(v29 + OBJC_IVAR____TtC8AppStore17ButtonPlaceholder_configuration, v28, v11);
    v30 = sub_1000AE2C0();
    [v30 sizeThatFits:{a3, a4}];
    v32 = v31;
    v33 = [v30 titleLabel];
    if (!v33)
    {
      goto LABEL_6;
    }

    v34 = v33;
    v35 = [v30 subtitleLabel];
    if (v35)
    {
      v36 = v35;

LABEL_6:
      constrainWidth(of:toFit:)();
      v38 = v37;
      v32 = v39;
      goto LABEL_8;
    }

    UILabel.measure(toFit:with:)();
    constrainWidth(of:toFit:)();
    v38 = v40;

LABEL_8:

    swift_setDeallocating();
    v41 = *v60;
    (*v60)(v29 + OBJC_IVAR____TtC8AppStore17ButtonPlaceholder_configuration, v11);

    swift_deallocClassInstance();
    v41(v16, v11);
    v42 = fmax(v32, 30.0);
    if (v20 <= v38)
    {
      v20 = v38;
    }

    if (v21 <= v42)
    {
      v21 = v42;
    }

    v70 = v18;
    v44 = v18[2];
    v43 = v18[3];
    if (v44 >= v43 >> 1)
    {
      sub_100144188((v43 > 1), v44 + 1, 1);
      v18 = v70;
    }

    v18[2] = v44 + 1;
    v45 = &v18[2 * v44];
    v45[4] = v38;
    v45[5] = v42;
    v19 += 16;
    --v17;
  }

  while (v17);
  v46 = v59[0] - 1;
  v47 = a3 + (v59[0] - 1) * -10.0;
  v48 = v59[0];
  if (v47 / v59[0] < v20)
  {
    if (v44)
    {
      v49 = (v44 + 1) & 0x7FFFFFFFFFFFFFFELL;
      v50 = (v18 + 7);
      v51 = 0.0;
      v52 = v49;
      do
      {
        v53 = *(v50 - 2);
        v54 = *v50;
        v50 += 4;
        v51 = v51 + v53 + v54;
        v52 -= 2;
      }

      while (v52);
      if (v44 + 1 == v49)
      {
LABEL_26:

        return v20;
      }
    }

    else
    {
      v49 = 0;
      v51 = 0.0;
    }

    v55 = v44 - v49 + 1;
    v56 = &v18[2 * v49 + 5];
    do
    {
      v57 = *v56;
      v56 += 2;
      v51 = v51 + v57;
      --v55;
    }

    while (v55);
    goto LABEL_26;
  }

  return v46 * 10.0 + v20 * v48;
}

unint64_t sub_1001469E0()
{
  result = qword_100984020;
  if (!qword_100984020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100984020);
  }

  return result;
}

uint64_t sub_100146A44(uint64_t a1, uint64_t a2)
{
  v4 = sub_10002849C(&qword_10097CC90, &unk_1007BB2A0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id sub_100146AB4()
{
  v1 = type metadata accessor for BreakoutDetails.Badge();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v17[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v5);
  v7 = &v17[-v6];
  v8 = type metadata accessor for BreakoutDetails.TextAlignment();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v17[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v9 + 104))(v12, enum case for BreakoutDetails.TextAlignment.center(_:), v8, v10);
  v13 = OBJC_IVAR____TtC8AppStore19BreakoutDetailsView_detailTextAlignment;
  swift_beginAccess();
  (*(v9 + 40))(v0 + v13, v12, v8);
  swift_endAccess();
  (*(v2 + 104))(v7, enum case for BreakoutDetails.Badge.none(_:), v1);
  v14 = OBJC_IVAR____TtC8AppStore19BreakoutDetailsView_badge;
  swift_beginAccess();
  (*(v2 + 16))(v4, v0 + v14, v1);
  swift_beginAccess();
  (*(v2 + 24))(v0 + v14, v7, v1);
  swift_endAccess();
  sub_10014999C(v4);
  v15 = *(v2 + 8);
  v15(v4, v1);
  v15(v7, v1);
  [*(v0 + OBJC_IVAR____TtC8AppStore19BreakoutDetailsView_titleLabel) setText:0];
  [*(v0 + OBJC_IVAR____TtC8AppStore19BreakoutDetailsView_descriptionLabel) setText:0];
  return [*(v0 + OBJC_IVAR____TtC8AppStore19BreakoutDetailsView_callToActionButton) setTitle:0 forState:0];
}

uint64_t sub_100146D98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v81 = a2;
  v7 = sub_10002849C(&qword_100972ED0, &unk_1007B17B0);
  __chkstk_darwin(v7 - 8);
  v76 = &v62 - v8;
  v9 = type metadata accessor for FontUseCase();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v71 = &v62 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v70 = &v62 - v13;
  __chkstk_darwin(v14);
  v69 = &v62 - v15;
  v16 = type metadata accessor for BreakoutDetailsLayout.Metrics.TitleTextBehavior();
  v79 = *(v16 - 8);
  v80 = v16;
  __chkstk_darwin(v16);
  v77 = &v62 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v78 = &v62 - v19;
  v20 = type metadata accessor for FontSource();
  v21 = *(v20 - 8);
  __chkstk_darwin(v20);
  v23 = &v62 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for BreakoutDetailsView.Config(0);
  v84 = v9;
  v85 = v24;
  v25 = *(a1 + *(v24 + 92));
  v72 = v10;
  v26 = v24;
  v27 = *(v24 + 40);
  if (v25)
  {
    v28 = *(v10 + 16);
    v83 = v10 + 16;
    v74 = v28;
    v28(v23, a1 + v27, v9);
    LODWORD(v73) = enum case for FontSource.useCase(_:);
    v68 = v21[13];
    v66 = v20;
    v68(v23);
    v67 = type metadata accessor for CappedSizeStaticDimension();
    v100 = v67;
    v75 = sub_10014DC88(&unk_100991130, &type metadata accessor for CappedSizeStaticDimension, &protocol conformance descriptor for CappedSizeStaticDimension);
    v101 = v75;
    sub_1000056E0(v99);
    v82 = v21 + 13;
    v65 = v25;
    CappedSizeStaticDimension.init(constant:source:maxSizeCategory:)();
    v29 = v74;
    v74(v23, a1 + v26[13], v84);
    v30 = v26;
    v31 = v73;
    v32 = v68;
    (v68)(v23, v73, v20);
    v33 = v67;
    v97 = v67;
    v98 = v75;
    sub_1000056E0(v96);
    v34 = v65;
    CappedSizeStaticDimension.init(constant:source:maxSizeCategory:)();
    v29(v23, a1 + v30[9], v84);
    v35 = v66;
    v32(v23, v31, v66);
    v36 = v75;
    v94 = v33;
    v95 = v75;
    sub_1000056E0(v93);
    v37 = v34;
    v38 = v84;
    CappedSizeStaticDimension.init(constant:source:maxSizeCategory:)();
    v74(v23, a1 + v30[14], v38);
    v32(v23, v73, v35);
    v91 = v33;
    v92 = v36;
    sub_1000056E0(v90);
    CappedSizeStaticDimension.init(constant:source:maxSizeCategory:)();
  }

  else
  {
    v83 = a1;
    v39 = *(v10 + 16);
    v74 = (v10 + 16);
    v67 = v39;
    v39(v23, a1 + v27, v9);
    LODWORD(v75) = enum case for FontSource.useCase(_:);
    v40 = v21[13];
    v65 = v21 + 13;
    v41 = v20;
    v40(v23);
    v64 = type metadata accessor for StaticDimension();
    v100 = v64;
    v101 = &protocol witness table for StaticDimension;
    sub_1000056E0(v99);
    v97 = v20;
    v98 = &protocol witness table for FontSource;
    v42 = sub_1000056E0(v96);
    v43 = v21[2];
    v73 = v21 + 2;
    v43(v42, v23, v41);
    v62 = v43;
    StaticDimension.init(_:scaledLike:)();
    v44 = v21[1];
    v82 = v21 + 1;
    v68 = v44;
    (v44)(v23, v41);
    v45 = v67;
    v67(v23, v83 + v26[13], v84);
    v63 = v40;
    (v40)(v23, v75, v41);
    v46 = v64;
    v97 = v64;
    v98 = &protocol witness table for StaticDimension;
    sub_1000056E0(v96);
    v94 = v41;
    v95 = &protocol witness table for FontSource;
    v47 = sub_1000056E0(v93);
    v43(v47, v23, v41);
    StaticDimension.init(_:scaledLike:)();
    (v68)(v23, v41);
    v45(v23, v83 + v26[9], v84);
    (v40)(v23, v75, v41);
    v94 = v46;
    v95 = &protocol witness table for StaticDimension;
    sub_1000056E0(v93);
    v91 = v41;
    v92 = &protocol witness table for FontSource;
    v48 = sub_1000056E0(v90);
    v49 = v62;
    v62(v48, v23, v41);
    StaticDimension.init(_:scaledLike:)();
    v50 = v68;
    (v68)(v23, v41);
    v67(v23, v83 + v26[14], v84);
    a1 = v83;
    (v63)(v23, v75, v41);
    v91 = v64;
    v92 = &protocol witness table for StaticDimension;
    sub_1000056E0(v90);
    v89[3] = v41;
    v89[4] = &protocol witness table for FontSource;
    v51 = sub_1000056E0(v89);
    v49(v51, v23, v41);
    StaticDimension.init(_:scaledLike:)();
    v50(v23, v41);
    v38 = v84;
  }

  v52 = v76;
  if ((*(a1 + v85[11] + 8) & 1) == 0)
  {
    sub_100031660(a1 + v85[12], v76, &qword_100972ED0, &unk_1007B17B0);
    v53 = v72;
    if ((*(v72 + 48))(v52, 1, v38) != 1)
    {
      v56 = v69;
      (*(v53 + 32))(v69, v52, v38);
      v57 = *(v53 + 16);
      v57(v70, a1 + v85[10], v38);
      v57(v71, v56, v38);
      v55 = v78;
      BreakoutDetailsLayout.Metrics.TitleTextBehavior.CompressionBehavior.init(lineCountThreshold:standardUseCase:compressedUseCase:)();
      (*(v53 + 8))(v56, v38);
      v54 = &enum case for BreakoutDetailsLayout.Metrics.TitleTextBehavior.lineCountCompression(_:);
      goto LABEL_9;
    }

    sub_10002B894(v52, &qword_100972ED0, &unk_1007B17B0);
  }

  v54 = &enum case for BreakoutDetailsLayout.Metrics.TitleTextBehavior.standard(_:);
  v55 = v78;
LABEL_9:
  v59 = v79;
  v58 = v80;
  (*(v79 + 104))(v55, *v54, v80);
  sub_10002C0AC(v99, v89);
  (*(v59 + 16))(v77, v55, v58);
  sub_10002C0AC(v96, &v88);
  sub_10002C0AC(v93, &v87);
  v60 = *(a1 + v85[15]);
  v86[8] = &type metadata for CGFloat;
  v86[9] = &protocol witness table for CGFloat;
  v86[5] = v60;
  sub_10002C0AC(v90, v86);
  BreakoutDetailsLayout.Metrics.init(titleSpace:titleBehavior:descriptionSpace:badgeTextSpace:badgeWordmarkSpace:callToActionSpace:layoutMargins:)();
  (*(v59 + 8))(v55, v58);
  sub_100007000(v90);
  sub_100007000(v93);
  sub_100007000(v96);
  return sub_100007000(v99);
}

uint64_t sub_100147860(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_10002849C(&qword_100975EE8, &qword_1007BAA48);
  sub_100005644(v5, a2);
  sub_1000056A8(v5, a2);
  sub_10002849C(&qword_100973F50, &qword_1007B4260);
  type metadata accessor for ContentHorizontalAlignment(0);
  return Conditional<>.init(regularValue:rightToLeftValue:)();
}

char *sub_100147904(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v123 = type metadata accessor for ImageAlignedButton.ImageAlignment();
  v122 = *(v123 - 8);
  __chkstk_darwin(v123);
  v121 = &v103 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v118 = type metadata accessor for AutomationSemantics();
  v117 = *(v118 - 8);
  __chkstk_darwin(v118);
  v116 = &v103 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10002849C(&qword_100972ED0, &unk_1007B17B0);
  __chkstk_darwin(v7 - 8);
  v9 = &v103 - v8;
  v10 = type metadata accessor for DirectionalTextAlignment();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v125 = &v103 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v132 = &v103 - v14;
  v15 = type metadata accessor for FontUseCase();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v103 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = OBJC_IVAR____TtC8AppStore19BreakoutDetailsView_badge;
  v20 = enum case for BreakoutDetails.Badge.none(_:);
  v21 = type metadata accessor for BreakoutDetails.Badge();
  (*(*(v21 - 8) + 104))(&v3[v19], v20, v21);
  *&v3[OBJC_IVAR____TtC8AppStore19BreakoutDetailsView_badgeLabel] = 0;
  *&v3[OBJC_IVAR____TtC8AppStore19BreakoutDetailsView_badgeWordmark] = 0;
  v22 = &v3[OBJC_IVAR____TtC8AppStore19BreakoutDetailsView_callToActionButtonHandler];
  *v22 = 0;
  *(v22 + 1) = 0;
  v23 = OBJC_IVAR____TtC8AppStore19BreakoutDetailsView_detailTextAlignment;
  v24 = enum case for BreakoutDetails.TextAlignment.leading(_:);
  v25 = type metadata accessor for BreakoutDetails.TextAlignment();
  (*(*(v25 - 8) + 104))(&v3[v23], v24, v25);
  v26 = OBJC_IVAR____TtC8AppStore19BreakoutDetailsView_detailBackgroundStyle;
  v27 = type metadata accessor for BreakoutDetails.BackgroundStyle();
  (*(*(v27 - 8) + 56))(&v3[v26], 1, 1, v27);
  v28 = OBJC_IVAR____TtC8AppStore19BreakoutDetailsView_config;
  v29 = sub_10002849C(&unk_1009732B0, qword_1007B7860);
  v119 = *(v29 - 8);
  v30 = *(v119 + 16);
  v126 = v3;
  v124 = a1;
  v120 = v29;
  v30(&v3[v28], a1);
  if (qword_10096E2F8 != -1)
  {
    swift_once();
  }

  v31 = sub_1000056A8(v15, qword_1009D1868);
  v32 = *(v16 + 16);
  v33 = v18;
  v131 = v18;
  v32(v18, v31, v15);
  v129 = v32;
  v34 = v15;
  v35 = enum case for DirectionalTextAlignment.none(_:);
  v36 = v11;
  v127 = v16;
  v128 = v11;
  v37 = *(v11 + 104);
  (v37)(v132, enum case for DirectionalTextAlignment.none(_:), v10);
  v109 = type metadata accessor for CappedSizeDynamicTypeLabel(0);
  v111 = objc_allocWithZone(v109);
  *&v111[qword_1009902D0] = 0;
  v32(v9, v33, v34);
  v38 = *(v16 + 56);
  v38(v9, 0, 1, v34);
  v39 = v125;
  v114 = v35;
  v40 = v35;
  v41 = v34;
  v113 = v36 + 104;
  v112 = v37;
  (v37)(v125, v40, v10);
  v42 = v39;
  v43 = DynamicTypeLabel.init(useCase:numberOfLines:lineBreakMode:isUserInteractionEnabled:directionalTextAlignment:contentSizeCategoryMapping:)();
  v44 = v131;
  v130 = v16 + 16;
  v129(v9, v131, v41);
  v111 = (v16 + 56);
  v110 = v38;
  v38(v9, 0, 1, v41);
  v45 = v43;
  v104 = v9;
  dispatch thunk of DynamicTypeLabel.fontUseCase.setter();
  v46 = v44;
  dispatch thunk of DynamicTypeLabel.updateFont(to:)();
  [v45 setNumberOfLines:2];
  v47 = v128;
  v48 = *(v128 + 16);
  v49 = v132;
  v108 = v128 + 16;
  v107 = v48;
  v48(v42, v132, v10);
  dispatch thunk of DynamicTypeLabel.directionalTextAlignment.setter();

  v50 = *(v47 + 8);
  v128 = v47 + 8;
  v106 = v50;
  v50(v49, v10);
  v51 = *(v127 + 8);
  v127 += 8;
  v105 = v51;
  v51(v46, v41);
  *&v126[OBJC_IVAR____TtC8AppStore19BreakoutDetailsView_titleLabel] = v45;
  if (qword_10096E318 != -1)
  {
    swift_once();
  }

  v52 = sub_1000056A8(v41, qword_1009D18C8);
  v53 = v129;
  v129(v46, v52, v41);
  v54 = v114;
  v55 = v112;
  (v112)(v132, v114, v10);
  v56 = objc_allocWithZone(v109);
  *&v56[qword_1009902D0] = 0;
  v57 = v104;
  v53(v104, v131, v41);
  v58 = v110;
  v110(v57, 0, 1, v41);
  v59 = v10;
  v60 = v125;
  v61 = v54;
  v62 = v59;
  v55(v125, v61);
  v63 = DynamicTypeLabel.init(useCase:numberOfLines:lineBreakMode:isUserInteractionEnabled:directionalTextAlignment:contentSizeCategoryMapping:)();
  v53(v57, v131, v41);
  v64 = v131;
  v58(v57, 0, 1, v41);
  v65 = v63;
  dispatch thunk of DynamicTypeLabel.fontUseCase.setter();
  dispatch thunk of DynamicTypeLabel.updateFont(to:)();
  [v65 setNumberOfLines:2];
  v66 = v132;
  v107(v60, v132, v62);
  dispatch thunk of DynamicTypeLabel.directionalTextAlignment.setter();

  v106(v66, v62);
  v105(v64, v41);
  v67 = v126;
  *&v126[OBJC_IVAR____TtC8AppStore19BreakoutDetailsView_descriptionLabel] = v65;
  v68 = [objc_opt_self() effectWithStyle:17];
  v69 = [objc_allocWithZone(UIVisualEffectView) initWithEffect:v68];

  *&v67[OBJC_IVAR____TtC8AppStore19BreakoutDetailsView_backgroundMaterialView] = v69;
  type metadata accessor for CappedSizeDynamicTypeButton(0);
  if (qword_10096E320 != -1)
  {
    swift_once();
  }

  v70 = sub_1000056A8(v41, qword_1009D18E0);
  v129(v64, v70, v41);
  *&v67[OBJC_IVAR____TtC8AppStore19BreakoutDetailsView_callToActionButton] = DynamicTypeButton.__allocating_init(useCase:)();
  v137.receiver = v67;
  v137.super_class = ObjectType;
  v71 = objc_msgSendSuper2(&v137, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  [v71 setUserInteractionEnabled:0];
  [v71 setEdgesInsettingLayoutMarginsFromSafeArea:0];
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  [v71 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  sub_1001487E0();
  v75 = OBJC_IVAR____TtC8AppStore19BreakoutDetailsView_titleLabel;
  v76 = *&v71[OBJC_IVAR____TtC8AppStore19BreakoutDetailsView_titleLabel];
  v135 = 0u;
  v136 = 0u;
  v133 = 0u;
  v134 = 0u;
  v77 = v76;
  v78 = v116;
  static AutomationSemantics.shelfItemSubComponent(itemKind:id:parentId:)();
  sub_10002B894(&v133, &unk_1009711D0, &unk_1007B1A10);
  sub_10002B894(&v135, &unk_1009711D0, &unk_1007B1A10);
  UIView.setAutomationSemantics(_:)();

  v79 = *(v117 + 8);
  v80 = v118;
  v79(v78, v118);
  v81 = OBJC_IVAR____TtC8AppStore19BreakoutDetailsView_descriptionLabel;
  v82 = *&v71[OBJC_IVAR____TtC8AppStore19BreakoutDetailsView_descriptionLabel];
  v135 = 0u;
  v136 = 0u;
  v133 = 0u;
  v134 = 0u;
  v83 = v82;
  static AutomationSemantics.shelfItemSubComponent(itemKind:id:parentId:)();
  sub_10002B894(&v133, &unk_1009711D0, &unk_1007B1A10);
  sub_10002B894(&v135, &unk_1009711D0, &unk_1007B1A10);
  UIView.setAutomationSemantics(_:)();

  v79(v78, v80);
  v84 = *&v71[v75];
  dispatch thunk of DynamicTypeLabel.wantsFastBaselineMeasurement.setter();

  v85 = *&v71[v81];
  dispatch thunk of DynamicTypeLabel.wantsFastBaselineMeasurement.setter();

  [*&v71[v75] setLineBreakMode:0];
  [*&v71[v81] setLineBreakMode:0];
  v86 = OBJC_IVAR____TtC8AppStore19BreakoutDetailsView_callToActionButton;
  [*&v71[OBJC_IVAR____TtC8AppStore19BreakoutDetailsView_callToActionButton] _setWantsAccessibilityUnderline:0];
  v87 = *&v71[v86];
  v88 = objc_opt_self();
  v89 = v87;
  v90 = [v88 whiteColor];
  [v89 setTitleColor:v90 forState:0];

  v91 = *&v71[v86];
  v92 = [v88 whiteColor];
  [v91 setTitleColor:v92 forState:1];

  v93 = *&v71[v86];
  v94 = [v88 whiteColor];
  [v93 setTintColor:v94];

  v95 = *&v71[v86];
  (*(v122 + 104))(v121, enum case for ImageAlignedButton.ImageAlignment.trailing(_:), v123);
  v96 = v95;
  dispatch thunk of ImageAlignedButton.imageAlignment.setter();

  v97 = *&v71[v86];
  dispatch thunk of ImageAlignedButton.imageWantsBaselineAlignment.setter();

  v98 = [*&v71[v86] titleLabel];
  [v98 setLineBreakMode:0];

  [*&v71[v86] addTarget:v71 action:"didTapActionButton" forControlEvents:64];
  v99 = OBJC_IVAR____TtC8AppStore19BreakoutDetailsView_backgroundMaterialView;
  v100 = *&v71[OBJC_IVAR____TtC8AppStore19BreakoutDetailsView_backgroundMaterialView];
  v101 = String._bridgeToObjectiveC()();
  [v100 _setGroupName:v101];

  [*&v71[v99] _setContinuousCornerRadius:20.0];
  [*&v71[v99] setClipsToBounds:1];
  [*&v71[v99] setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  [*&v71[v99] setEdgesInsettingLayoutMarginsFromSafeArea:0];

  (*(v119 + 8))(v124, v120);
  return v71;
}

uint64_t sub_1001487E0()
{
  v1 = v0;
  v2 = sub_10002849C(&qword_100972ED0, &unk_1007B17B0);
  __chkstk_darwin(v2 - 8);
  v103 = &v98 - v3;
  v4 = type metadata accessor for BreakoutDetails.BackgroundStyle();
  v104 = *(v4 - 8);
  __chkstk_darwin(v4);
  v101 = &v98 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v99 = &v98 - v7;
  __chkstk_darwin(v8);
  v100 = &v98 - v9;
  __chkstk_darwin(v10);
  v105 = &v98 - v11;
  __chkstk_darwin(v12);
  v14 = &v98 - v13;
  v15 = sub_10002849C(&unk_1009732B0, qword_1007B7860);
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v98 - v17;
  v19 = type metadata accessor for BreakoutDetailsView.Config(0);
  __chkstk_darwin(v19);
  v21 = (&v98 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = OBJC_IVAR____TtC8AppStore19BreakoutDetailsView_config;
  swift_beginAccess();
  (*(v16 + 16))(v18, v1 + v22, v15);
  v107 = v1;
  Conditional.evaluate(with:)();
  (*(v16 + 8))(v18, v15);
  v23 = *(v1 + OBJC_IVAR____TtC8AppStore19BreakoutDetailsView_badgeWordmark);
  v24 = &selRef_setRequiresColorStatistics_;
  if (v23)
  {
    v25 = *v21;
    if (*v21)
    {
      v26 = v23;
      v27 = v25;
    }

    else
    {
      v28 = OBJC_IVAR____TtC8AppStore19BreakoutDetailsView_detailBackgroundStyle;
      swift_beginAccess();
      v29 = v104;
      if ((*(v104 + 48))(v1 + v28, 1, v4))
      {
        v26 = v23;
        v27 = 0;
      }

      else
      {
        (*(v29 + 16))(v14, v1 + v28, v4);
        v26 = v23;
        v27 = sub_1001F086C();
        (*(v29 + 8))(v14, v4);
      }
    }

    v30 = v25;
    [v26 setTintColor:v27];
  }

  v31 = OBJC_IVAR____TtC8AppStore19BreakoutDetailsView_badgeLabel;
  v32 = *(v1 + OBJC_IVAR____TtC8AppStore19BreakoutDetailsView_badgeLabel);
  if (v32)
  {
    v33 = *v21;
    if (*v21)
    {
      v34 = v32;
      v35 = v33;
    }

    else
    {
      v36 = v14;
      v37 = OBJC_IVAR____TtC8AppStore19BreakoutDetailsView_detailBackgroundStyle;
      swift_beginAccess();
      v38 = v104;
      if ((*(v104 + 48))(v1 + v37, 1, v4))
      {
        v34 = v32;
        v35 = 0;
        v14 = v36;
      }

      else
      {
        (*(v38 + 16))(v36, v1 + v37, v4);
        v34 = v32;
        v35 = sub_1001F086C();
        v39 = v38;
        v14 = v36;
        (*(v39 + 8))(v36, v4);
      }

      v24 = &selRef_setRequiresColorStatistics_;
    }

    v40 = v33;
    [v34 setTextColor:v35];
  }

  v106 = *(v1 + OBJC_IVAR____TtC8AppStore19BreakoutDetailsView_titleLabel);
  v41 = v21[1];
  isa = v41;
  v102 = v31;
  if (!v41)
  {
    v43 = OBJC_IVAR____TtC8AppStore19BreakoutDetailsView_detailBackgroundStyle;
    swift_beginAccess();
    if (!(*(v104 + 48))(v1 + v43, 1, v4))
    {
      v98 = v14;
      v44 = v104;
      v45 = *(v104 + 16);
      v46 = v1 + v43;
      v47 = v105;
      v45(v105, v46, v4);
      v48 = v100;
      v45(v100, v47, v4);
      v49 = (*(v44 + 88))(v48, v4);
      v50 = (v44 + 8);
      if (v49 == enum case for BreakoutDetails.BackgroundStyle.material(_:) || (v51 = v49, v49 == enum case for BreakoutDetails.BackgroundStyle.dark(_:)))
      {
        isa = [objc_opt_self() whiteColor];
        (*v50)(v105, v4);
      }

      else
      {
        v52 = enum case for BreakoutDetails.BackgroundStyle.light(_:);
        sub_100028BB8();
        isa = UIColor.init(_colorLiteralRed:green:blue:alpha:)(0.18824, 0.18824, 0.2, 1.0).super.isa;
        v53 = *v50;
        (*v50)(v105, v4);
        if (v51 != v52)
        {
          v53(v100, v4);
        }
      }

      v31 = v102;
      v14 = v98;
      v24 = &selRef_setRequiresColorStatistics_;
    }
  }

  v54 = v41;
  [v106 setTextColor:isa];

  v105 = *(v1 + OBJC_IVAR____TtC8AppStore19BreakoutDetailsView_descriptionLabel);
  v55 = v21[2];
  v56 = v55;
  if (!v55)
  {
    v57 = OBJC_IVAR____TtC8AppStore19BreakoutDetailsView_detailBackgroundStyle;
    swift_beginAccess();
    if (!(*(v104 + 48))(v1 + v57, 1, v4))
    {
      v58 = v14;
      v59 = v104;
      (*(v104 + 16))(v58, v1 + v57, v4);
      v56 = sub_1001F0A44();
      v60 = v58;
      v24 = &selRef_setRequiresColorStatistics_;
      (*(v59 + 8))(v60, v4);
    }
  }

  v61 = v55;
  [v105 setTextColor:v56];

  v62 = v21[3];
  v63 = v62;
  if (!v62)
  {
    v64 = OBJC_IVAR____TtC8AppStore19BreakoutDetailsView_detailBackgroundStyle;
    swift_beginAccess();
    if (!(*(v104 + 48))(v1 + v64, 1, v4))
    {
      v65 = v104;
      v66 = *(v104 + 16);
      v67 = v1 + v64;
      v68 = v99;
      v66(v99, v67, v4);
      v69 = v101;
      v66(v101, v68, v4);
      v70 = (*(v65 + 88))(v69, v4);
      v71 = (v65 + 8);
      if (v70 == enum case for BreakoutDetails.BackgroundStyle.material(_:) || (v72 = v70, v70 == enum case for BreakoutDetails.BackgroundStyle.dark(_:)))
      {
        v63 = [objc_opt_self() whiteColor];
        (*v71)(v68, v4);
      }

      else
      {
        LODWORD(v104) = enum case for BreakoutDetails.BackgroundStyle.light(_:);
        sub_100028BB8();
        v73 = v68;
        v63 = UIColor.init(_colorLiteralRed:green:blue:alpha:)(0.18824, 0.18824, 0.2, 1.0).super.isa;
        v74 = *v71;
        (*v71)(v73, v4);
        if (v72 != v104)
        {
          v74(v101, v4);
        }
      }

      v31 = v102;
      v24 = &selRef_setRequiresColorStatistics_;
    }
  }

  v75 = *(v1 + OBJC_IVAR____TtC8AppStore19BreakoutDetailsView_callToActionButton);
  v76 = v62;
  [v75 setTitleColor:v63 forState:0];
  [v75 setTitleColor:v63 forState:1];
  v77 = v24[15];
  v101 = v63;
  [v75 v77];
  v104 = v1;
  v78 = *(v1 + v31);
  v79 = v19;
  if (v78)
  {
    v80 = *(v19 + 36);
    v81 = type metadata accessor for FontUseCase();
    v82 = *(v81 - 8);
    v83 = v103;
    (*(v82 + 16))(v103, v21 + v80, v81);
    (*(v82 + 56))(v83, 0, 1, v81);
    v19 = v79;
    v84 = v78;
    dispatch thunk of DynamicTypeLabel.fontUseCase.setter();
  }

  v85 = *(v19 + 40);
  v86 = type metadata accessor for FontUseCase();
  v87 = *(v86 - 8);
  v88 = *(v87 + 16);
  v89 = v103;
  v88(v103, v21 + v85, v86);
  v90 = *(v87 + 56);
  v90(v89, 0, 1, v86);
  dispatch thunk of DynamicTypeLabel.fontUseCase.setter();
  v88(v89, v21 + v79[13], v86);
  v90(v89, 0, 1, v86);
  dispatch thunk of DynamicTypeLabel.fontUseCase.setter();
  v88(v89, v21 + v79[14], v86);
  v90(v89, 0, 1, v86);
  dispatch thunk of DynamicTypeButton.fontUseCase.setter();
  v91 = *(v104 + v102);
  if (v91)
  {
    v92 = *(v21 + v79[23]);
    v93 = v92;
    v94 = v91;
    sub_100635C60(v92);
  }

  v95 = *(v21 + v79[23]);
  v96 = v95;
  sub_100635C60(v95);
  sub_100635C60(v95);
  sub_10025B568(v95);

  return sub_1000C266C(v21);
}

double sub_100149418()
{
  v1 = v0;
  v2 = type metadata accessor for BreakoutDetails.BackgroundStyle();
  v32 = *(v2 - 8);
  __chkstk_darwin(v2);
  v30 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10002849C(&qword_100975EE0, &qword_1007BAA40);
  v5 = v4 - 8;
  __chkstk_darwin(v4);
  v7 = &v30 - v6;
  v8 = sub_10002849C(&qword_100975EC8, &unk_1007CAB50);
  __chkstk_darwin(v8 - 8);
  v31 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v30 - v11;
  v13 = sub_10002849C(&unk_1009732B0, qword_1007B7860);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v30 - v15;
  v33 = type metadata accessor for BreakoutDetailsView.Config(0);
  __chkstk_darwin(v33);
  v18 = &v30 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = OBJC_IVAR____TtC8AppStore19BreakoutDetailsView_config;
  swift_beginAccess();
  v20 = v1 + v19;
  v21 = v18;
  v22 = v32;
  (*(v14 + 16))(v16, v20, v13);
  v34 = v1;
  Conditional.evaluate(with:)();
  (*(v14 + 8))(v16, v13);
  v23 = OBJC_IVAR____TtC8AppStore19BreakoutDetailsView_detailBackgroundStyle;
  swift_beginAccess();
  (*(v22 + 104))(v12, enum case for BreakoutDetails.BackgroundStyle.material(_:), v2);
  (*(v22 + 56))(v12, 0, 1, v2);
  v24 = *(v5 + 56);
  sub_100031660(v1 + v23, v7, &qword_100975EC8, &unk_1007CAB50);
  sub_100031660(v12, &v7[v24], &qword_100975EC8, &unk_1007CAB50);
  v25 = *(v22 + 48);
  if (v25(v7, 1, v2) != 1)
  {
    v26 = v31;
    sub_100031660(v7, v31, &qword_100975EC8, &unk_1007CAB50);
    if (v25(&v7[v24], 1, v2) != 1)
    {
      v28 = v30;
      (*(v22 + 32))(v30, &v7[v24], v2);
      sub_10014DC88(&unk_100975EF0, &type metadata accessor for BreakoutDetails.BackgroundStyle, &protocol conformance descriptor for BreakoutDetails.BackgroundStyle);
      dispatch thunk of static Equatable.== infix(_:_:)();
      v29 = *(v22 + 8);
      v29(v28, v2);
      sub_10002B894(v12, &qword_100975EC8, &unk_1007CAB50);
      v29(v26, v2);
      sub_10002B894(v7, &qword_100975EC8, &unk_1007CAB50);
      goto LABEL_7;
    }

    sub_10002B894(v12, &qword_100975EC8, &unk_1007CAB50);
    (*(v22 + 8))(v26, v2);
    goto LABEL_6;
  }

  sub_10002B894(v12, &qword_100975EC8, &unk_1007CAB50);
  if (v25(&v7[v24], 1, v2) != 1)
  {
LABEL_6:
    sub_10002B894(v7, &qword_100975EE0, &qword_1007BAA40);
    goto LABEL_7;
  }

  sub_10002B894(v7, &qword_100975EC8, &unk_1007CAB50);
LABEL_7:
  sub_1000C266C(v21);
  return 0.0;
}

id sub_10014999C(uint64_t a1)
{
  v91 = type metadata accessor for WordmarkView.Alignment();
  v90 = *(v91 - 8);
  __chkstk_darwin(v91);
  v92 = &v85 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = sub_10002849C(&unk_1009732B0, qword_1007B7860);
  v88 = *(v89 - 1);
  __chkstk_darwin(v89);
  v86 = &v85 - v3;
  v4 = type metadata accessor for BreakoutDetailsView.Config(0);
  __chkstk_darwin(v4 - 8);
  v85 = &v85 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10002849C(&qword_100975F00, &qword_1007BAA50);
  __chkstk_darwin(v6 - 8);
  v87 = &v85 - v7;
  v8 = sub_10002849C(&qword_100972ED0, &unk_1007B17B0);
  __chkstk_darwin(v8 - 8);
  v93 = &v85 - v9;
  v96 = type metadata accessor for DirectionalTextAlignment();
  v100 = *(v96 - 8);
  __chkstk_darwin(v96);
  v94 = &v85 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v99 = &v85 - v12;
  v95 = type metadata accessor for FontUseCase();
  v98 = *(v95 - 8);
  __chkstk_darwin(v95);
  v97 = &v85 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for BreakoutDetails.Badge();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = (&v85 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v18);
  v20 = &v85 - v19;
  v21 = OBJC_IVAR____TtC8AppStore19BreakoutDetailsView_badge;
  swift_beginAccess();
  v22 = *(v15 + 16);
  v23 = v1;
  v22(v20, &v1[v21], v14);
  sub_10014DC88(&qword_100975F08, &type metadata accessor for BreakoutDetails.Badge, &protocol conformance descriptor for BreakoutDetails.Badge);
  v24 = dispatch thunk of static Equatable.== infix(_:_:)();
  v25 = v20;
  v26 = *(v15 + 8);
  result = v26(v25, v14);
  if ((v24 & 1) == 0)
  {
    v22(v17, &v23[v21], v14);
    v28 = (*(v15 + 88))(v17, v14);
    v29 = v23;
    if (v28 == enum case for BreakoutDetails.Badge.text(_:))
    {
      v92 = v23;
      (*(v15 + 96))(v17, v14);
      v30 = v17[1];
      v90 = *v17;
      v91 = v30;
      if (qword_10096E2F0 != -1)
      {
        swift_once();
      }

      v31 = v95;
      v32 = sub_1000056A8(v95, qword_1009D1850);
      v33 = v97;
      v34 = v98;
      v35 = *(v98 + 16);
      v35(v97, v32, v31);
      v36 = v35;
      v89 = v35;
      v37 = enum case for DirectionalTextAlignment.none(_:);
      v88 = *(v100 + 104);
      v38 = v96;
      (v88)(v99, enum case for DirectionalTextAlignment.none(_:), v96);
      v39 = objc_allocWithZone(type metadata accessor for CappedSizeDynamicTypeLabel(0));
      *&v39[qword_1009902D0] = 0;
      v40 = v93;
      v36(v93, v33, v31);
      v41 = *(v34 + 56);
      v41(v40, 0, 1, v31);
      v42 = v94;
      (v88)(v94, v37, v38);
      v43 = DynamicTypeLabel.init(useCase:numberOfLines:lineBreakMode:isUserInteractionEnabled:directionalTextAlignment:contentSizeCategoryMapping:)();
      v44 = v97;
      v89(v40, v97, v31);
      v41(v40, 0, 1, v31);
      v45 = v43;
      dispatch thunk of DynamicTypeLabel.fontUseCase.setter();
      dispatch thunk of DynamicTypeLabel.updateFont(to:)();
      [v45 setNumberOfLines:1];
      v47 = v99;
      v46 = v100;
      (*(v100 + 16))(v42, v99, v38);
      dispatch thunk of DynamicTypeLabel.directionalTextAlignment.setter();
      (*(v46 + 8))(v47, v38);
      (*(v98 + 8))(v44, v31);
      dispatch thunk of DynamicTypeLabel.wantsFastBaselineMeasurement.setter();
      v48 = String._bridgeToObjectiveC()();

      [v45 setText:v48];

      v49 = OBJC_IVAR____TtC8AppStore19BreakoutDetailsView_badgeLabel;
      v29 = v92;
      v50 = *&v92[OBJC_IVAR____TtC8AppStore19BreakoutDetailsView_badgeLabel];
      v51 = v45;
      if (v50)
      {
        [v50 removeFromSuperview];
        v52 = *&v29[v49];
      }

      else
      {
        v52 = 0;
      }

      *&v29[v49] = v45;
      v74 = v45;

      sub_10014B4F0(&OBJC_IVAR____TtC8AppStore19BreakoutDetailsView_badgeLabel);
      v75 = OBJC_IVAR____TtC8AppStore19BreakoutDetailsView_badgeWordmark;
      v76 = *&v29[OBJC_IVAR____TtC8AppStore19BreakoutDetailsView_badgeWordmark];
      if (v76)
      {
        [v76 removeFromSuperview];
        v77 = *&v29[v75];
      }

      else
      {
        v77 = 0;
      }

      *&v29[v75] = 0;

      sub_10014B4F0(&OBJC_IVAR____TtC8AppStore19BreakoutDetailsView_badgeWordmark);
    }

    else if (v28 == enum case for BreakoutDetails.Badge.wordmark(_:))
    {
      v53 = enum case for Wordmark.arcade(_:);
      v54 = type metadata accessor for Wordmark();
      v55 = *(v54 - 8);
      v56 = v87;
      (*(v55 + 104))(v87, v53, v54);
      (*(v55 + 56))(v56, 0, 1, v54);
      v57 = OBJC_IVAR____TtC8AppStore19BreakoutDetailsView_config;
      swift_beginAccess();
      v58 = v88;
      v59 = &v29[v57];
      v60 = v86;
      v61 = v89;
      (*(v88 + 16))(v86, v59, v89);
      v101 = v29;
      v62 = v85;
      Conditional.evaluate(with:)();
      (*(v58 + 8))(v60, v61);
      v63 = *(v62 + 32);
      sub_1000C266C(v62);
      (*(v90 + 104))(v92, enum case for WordmarkView.Alignment.center(_:), v91);
      v102 = &type metadata for CGFloat;
      v103 = &protocol witness table for CGFloat;
      v101 = v63;
      v64 = objc_allocWithZone(type metadata accessor for WordmarkView());
      v65 = WordmarkView.init(frame:wordmark:referenceLineHeight:alignment:)();
      v66 = OBJC_IVAR____TtC8AppStore19BreakoutDetailsView_badgeLabel;
      v67 = *&v29[OBJC_IVAR____TtC8AppStore19BreakoutDetailsView_badgeLabel];
      if (v67)
      {
        [v67 removeFromSuperview];
        v68 = *&v29[v66];
      }

      else
      {
        v68 = 0;
      }

      *&v29[v66] = 0;

      sub_10014B4F0(&OBJC_IVAR____TtC8AppStore19BreakoutDetailsView_badgeLabel);
      v81 = OBJC_IVAR____TtC8AppStore19BreakoutDetailsView_badgeWordmark;
      v82 = *&v29[OBJC_IVAR____TtC8AppStore19BreakoutDetailsView_badgeWordmark];
      v83 = v65;
      if (v82)
      {
        [v82 removeFromSuperview];
        v82 = *&v29[v81];
      }

      *&v29[v81] = v65;
      v84 = v65;

      sub_10014B4F0(&OBJC_IVAR____TtC8AppStore19BreakoutDetailsView_badgeWordmark);
    }

    else
    {
      v69 = OBJC_IVAR____TtC8AppStore19BreakoutDetailsView_badgeLabel;
      v70 = *&v23[OBJC_IVAR____TtC8AppStore19BreakoutDetailsView_badgeLabel];
      if (v28 == enum case for BreakoutDetails.Badge.none(_:))
      {
        if (v70)
        {
          [*&v23[OBJC_IVAR____TtC8AppStore19BreakoutDetailsView_badgeLabel] removeFromSuperview];
          v70 = *&v23[v69];
        }

        *&v23[v69] = 0;

        sub_10014B4F0(&OBJC_IVAR____TtC8AppStore19BreakoutDetailsView_badgeLabel);
        v71 = OBJC_IVAR____TtC8AppStore19BreakoutDetailsView_badgeWordmark;
        v72 = *&v29[OBJC_IVAR____TtC8AppStore19BreakoutDetailsView_badgeWordmark];
        if (v72)
        {
          [v72 removeFromSuperview];
          v73 = *&v29[v71];
        }

        else
        {
          v73 = 0;
        }

        *&v29[v71] = 0;

        sub_10014B4F0(&OBJC_IVAR____TtC8AppStore19BreakoutDetailsView_badgeWordmark);
      }

      else
      {
        if (v70)
        {
          [*&v23[OBJC_IVAR____TtC8AppStore19BreakoutDetailsView_badgeLabel] removeFromSuperview];
          v70 = *&v23[v69];
        }

        *&v23[v69] = 0;

        sub_10014B4F0(&OBJC_IVAR____TtC8AppStore19BreakoutDetailsView_badgeLabel);
        v78 = OBJC_IVAR____TtC8AppStore19BreakoutDetailsView_badgeWordmark;
        v79 = *&v23[OBJC_IVAR____TtC8AppStore19BreakoutDetailsView_badgeWordmark];
        if (v79)
        {
          [v79 removeFromSuperview];
          v80 = *&v23[v78];
        }

        else
        {
          v80 = 0;
        }

        *&v23[v78] = 0;

        sub_10014B4F0(&OBJC_IVAR____TtC8AppStore19BreakoutDetailsView_badgeWordmark);
        v26(v17, v14);
      }
    }

    sub_1001487E0();
    sub_10014A590();
    return [v29 setNeedsLayout];
  }

  return result;
}