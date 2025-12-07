void sub_1001FF6A4(uint64_t a1)
{
  v3 = type metadata accessor for IndexSet();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = [v1 collectionView];
  if (v6)
  {
    v14 = v6;
    if (IndexSet.count.getter() < 1)
    {
    }

    else
    {
      v7 = objc_opt_self();
      (*(v4 + 16))(&v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
      v8 = (*(v4 + 80) + 24) & ~*(v4 + 80);
      v9 = swift_allocObject();
      *(v9 + 16) = v14;
      (*(v4 + 32))(v9 + v8, &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v3);
      v10 = swift_allocObject();
      *(v10 + 16) = sub_100200398;
      *(v10 + 24) = v9;
      aBlock[4] = sub_10006F094;
      aBlock[5] = v10;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1000489A8;
      aBlock[3] = &unk_1008B9218;
      v11 = _Block_copy(aBlock);
      v12 = v14;

      [v7 performWithoutAnimation:v11];

      _Block_release(v11);
      LOBYTE(v7) = swift_isEscapingClosureAtFileLocation();

      if (v7)
      {
        __break(1u);
      }
    }
  }
}

void sub_1001FF940(void *a1)
{
  v2 = [a1 collectionViewLayout];
  [v2 invalidateLayout];

  IndexSet._bridgeToObjectiveC()(v3);
  v5 = v4;
  [a1 reloadSections:v4];
}

id sub_1001FF9DC(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for FamilyPurchasesViewController();
  return objc_msgSendSuper2(&v4, "dealloc");
}

void sub_1001FFA48()
{
  v1 = [v0 collectionView];
  [v1 reloadData];
}

uint64_t sub_1001FFAA0(uint64_t a1)
{
  v3 = sub_10002849C(&unk_100972A00, &unk_1007B3130);
  __chkstk_darwin(v3 - 8);
  v5 = &v10 - v4;
  v6 = *(v1 + OBJC_IVAR____TtC8AppStore29StoreCollectionViewController_objectGraph);
  v7 = sub_10002849C(&unk_100974490, &qword_1007B3DD0);
  BaseObjectGraph.injectIfAvailable<A>(_:)();
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(v5, 1, v7) == 1)
  {
    return sub_10002B894(v5, &unk_100972A00, &unk_1007B3130);
  }

  sub_1005F9AF4(a1, 1, v6, v5);

  return (*(v8 + 8))(v5, v7);
}

double sub_1001FFCC8(uint64_t a1, void *a2, double a3, double a4)
{
  v6 = type metadata accessor for FloatingPointRoundingRule();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v13[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10002A400(a2, a2[3]);
  j___s5JetUI10DimensionsV19defaultRoundingRules013FloatingPointeF0OvgZ();
  AnyDimension.value(in:rounded:)();
  v10 = *(v7 + 8);
  v10(v9, v6);
  sub_10002A400(a2 + 25, a2[28]);
  dispatch thunk of Measurable.measurements(fitting:in:)();
  sub_100031660((a2 + 15), v13, &qword_1009799E0, qword_1007B5950);
  if (v14)
  {
    sub_10002A400(v13, v14);
    j___s5JetUI10DimensionsV19defaultRoundingRules013FloatingPointeF0OvgZ();
    AnyDimension.value(in:rounded:)();
    v10(v9, v6);
    sub_100007000(v13);
  }

  else
  {
    sub_10002B894(v13, &qword_1009799E0, qword_1007B5950);
  }

  sub_10002A400(a2 + 30, a2[33]);
  Measurable.measuredSize(fitting:in:)();
  sub_10002A400(a2 + 20, a2[23]);
  Measurable.measuredSize(fitting:in:)();
  sub_10002A400(a2 + 5, a2[8]);
  AnyDimension.topMargin(from:in:)();
  sub_10002A400(a2 + 10, a2[13]);
  AnyDimension.bottomMargin(from:in:)();
  return a3;
}

double sub_1001FFFE8(uint64_t a1, uint64_t a2, char a3, void *a4, double a5, double a6)
{
  v28 = a1;
  v10 = type metadata accessor for LabelPlaceholderCompatibility();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10096DB68 != -1)
  {
    swift_once();
  }

  sub_1002020EC(&unk_100983A28, v31);
  if ((a3 & 1) == 0)
  {
    sub_10002B894(v32, &qword_1009799E0, qword_1007B5950);
    memset(v32, 0, sizeof(v32));
    v33 = 0;
  }

  sub_100005744(0, &qword_1009730E0, UIFont_ptr);
  if (qword_10096DE40 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for FontUseCase();
  sub_1000056A8(v14, qword_1009D0A40);
  v15 = [a4 traitCollection];
  v27 = a4;
  v16 = v15;
  v17 = static UIFont.preferredFont(forUseWith:compatibleWith:)();

  sub_1002020EC(v31, v30);
  v18 = type metadata accessor for LayoutViewPlaceholder();
  swift_allocObject();
  v19 = LayoutViewPlaceholder.init(measureWith:)();
  v30[23] = v18;
  v30[24] = &protocol witness table for LayoutViewPlaceholder;
  v30[20] = v19;
  v20 = type metadata accessor for Feature();
  v29[3] = v20;
  v29[4] = sub_1002020A4(&qword_100972E50, 255, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
  v21 = sub_1000056E0(v29);
  (*(*(v20 - 8) + 104))(v21, enum case for Feature.measurement_with_labelplaceholder(_:), v20);
  v22 = v17;
  isFeatureEnabled(_:)();
  sub_100007000(v29);

  LabelPlaceholderCompatibility.init(text:font:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:shouldUseLabelPlaceholder:)();
  LabelPlaceholderCompatibility.layoutTextView.getter();
  (*(v11 + 8))(v13, v10);
  swift_allocObject();
  v23 = LayoutViewPlaceholder.init(measureWith:)();
  v30[33] = v18;
  v30[34] = &protocol witness table for LayoutViewPlaceholder;
  v30[30] = v23;
  v24 = sub_1001FFCC8(v27, v30, a5, a6);

  sub_100202148(v30);
  sub_10020219C(v31);
  return v24;
}

void sub_100200398()
{
  type metadata accessor for IndexSet();
  v1 = *(v0 + 16);

  sub_1001FF940(v1);
}

id sub_1002003FC(void *a1, uint64_t a2, uint64_t a3)
{
  if (static String._unconditionallyBridgeFromObjectiveC(_:)() == a2 && v5 == a3)
  {

    goto LABEL_10;
  }

  v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v7)
  {
LABEL_10:
    v10 = String._bridgeToObjectiveC()();
    type metadata accessor for DetailCollectionViewCell(0);
    static UICollectionReusableView.defaultReuseIdentifier.getter();
    v11 = String._bridgeToObjectiveC()();

    isa = IndexPath._bridgeToObjectiveC()().super.isa;
    v13 = [a1 dequeueReusableSupplementaryViewOfKind:v10 withReuseIdentifier:v11 forIndexPath:isa];

    return v13;
  }

  v8 = objc_allocWithZone(UICollectionViewCell);

  return [v8 init];
}

void sub_100200538(void *a1, uint64_t a2)
{
  v3 = v2;
  v5 = type metadata accessor for Artwork.Style();
  v58 = *(v5 - 8);
  v59 = v5;
  __chkstk_darwin(v5);
  v7 = &v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10002849C(&qword_100984340, qword_1007C0830);
  __chkstk_darwin(v8 - 8);
  v10 = &v54 - v9;
  v11 = type metadata accessor for FamilyPurchasesSection();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v54 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  IndexPath.section.getter();
  dispatch thunk of FamilyPurchasesPresenter.familyPurchasesSection(for:)();
  v15 = (*(v12 + 88))(v14, v11);
  if (v15 == enum case for FamilyPurchasesSection.errorBanner(_:))
  {
    type metadata accessor for LinkableHeaderCollectionViewCell();
    v16 = swift_dynamicCastClass();
    if (!v16)
    {
      return;
    }

    v17 = v16;
    v18 = a1;
    if (dispatch thunk of FamilyPurchasesPresenter.errorBannerLinkableText.getter())
    {
      v19 = *(*&v17[OBJC_IVAR____TtC8AppStore32LinkableHeaderCollectionViewCell_headerView] + OBJC_IVAR____TtC8AppStore18LinkableHeaderView_label);
      v20 = LinkableText.linkedSubstrings.getter();
      sub_1000D6F24(v20, sub_1000C17B0);
      v22 = v21;

      v23 = LinkableText.styledText.getter();
      sub_1002F6004(v23, 0, v22);

      [v17 setNeedsLayout];

      return;
    }

    goto LABEL_21;
  }

  if (v15 != enum case for FamilyPurchasesSection.loggedInUser(_:) && v15 != enum case for FamilyPurchasesSection.familyMembers(_:))
  {
    (*(v12 + 8))(v14, v11);
    return;
  }

  type metadata accessor for AccountDetailCollectionViewCell(0);
  v25 = swift_dynamicCastClass();
  if (v25)
  {
    v26 = v25;
    v27 = a1;
    [v2 pageMarginInsets];
    v29 = v28;
    v57 = IndexPath.item.getter();
    v30 = IndexPath.item.getter();
    v31 = v30 + 1;
    if (__OFADD__(v30, 1))
    {
      __break(1u);
      return;
    }

    left = UIEdgeInsetsZero.left;
    bottom = UIEdgeInsetsZero.bottom;
    right = UIEdgeInsetsZero.right;
    IndexPath.section.getter();
    v35 = dispatch thunk of FamilyPurchasesPresenter.numberOfRows(in:)();
    v55 = v31 == v35;
    v56 = v31 != v35;
    v36 = v27;
    [v2 pageMarginInsets];
    [v26 setLayoutMargins:?];

    dispatch thunk of FamilyPurchasesPresenter.title(forItemAt:)();
    v37 = *&v26[OBJC_IVAR____TtC8AppStore31AccountDetailCollectionViewCell_titleLabel];
    v38 = String._bridgeToObjectiveC()();

    [v37 setText:v38];

    [v26 setNeedsLayout];
    v26[OBJC_IVAR____TtC8AppStore31AccountDetailCollectionViewCell_showTopSeparatorView] = 1;
    [*&v26[OBJC_IVAR____TtC8AppStore31AccountDetailCollectionViewCell_topSeparatorView] setHidden:0];
    top = UIEdgeInsetsZero.top;
    if (v57)
    {
      v40 = v29;
    }

    else
    {
      v40 = left;
    }

    v41 = bottom;
    v42 = right;
    if (v57)
    {
      top = 0.0;
      v41 = 0.0;
      v42 = 0.0;
    }

    v43 = &v26[OBJC_IVAR____TtC8AppStore31AccountDetailCollectionViewCell_topSeparatorViewInsets];
    *v43 = top;
    v43[1] = v40;
    v43[2] = v41;
    v43[3] = v42;
    *(v43 + 32) = 0;
    v44 = v56;
    v26[OBJC_IVAR____TtC8AppStore31AccountDetailCollectionViewCell_showBottomSeparatorView] = v55;
    [*&v26[OBJC_IVAR____TtC8AppStore31AccountDetailCollectionViewCell_bottomSeparatorView] setHidden:v44];
    v45 = &v26[OBJC_IVAR____TtC8AppStore31AccountDetailCollectionViewCell_bottomSeparatorViewInsets];
    *v45 = UIEdgeInsetsZero.top;
    v45[1] = left;
    v45[2] = bottom;
    v45[3] = right;
    *(v45 + 32) = 0;
    v46 = type metadata accessor for Accessory(0);
    swift_storeEnumTagMultiPayload();
    (*(*(v46 - 8) + 56))(v10, 0, 1, v46);
    sub_1006C51F4(v10, *&v3[OBJC_IVAR____TtC8AppStore29StoreCollectionViewController_objectGraph]);
    sub_10002B894(v10, &qword_100984340, qword_1007C0830);
    [*&v26[OBJC_IVAR____TtC8AppStore31AccountDetailCollectionViewCell_accessoryView] setHidden:0];
    v47 = &v26[OBJC_IVAR____TtC8AppStore31AccountDetailCollectionViewCell_imageMarginRight];
    *v47 = 0x4030000000000000;
    v47[8] = 0;
    (*(v58 + 104))(v7, enum case for Artwork.Style.round(_:), v59);
    ArtworkView.style.setter();
    v48 = dispatch thunk of FamilyPurchasesPresenter.imageForFamilyMember(at:)();
    if (v48)
    {
      v49 = v48;
      v50 = [objc_opt_self() mainScreen];
      [v50 scale];
      v52 = v51;

      v60.width = 36.0;
      v60.height = 36.0;
      UIGraphicsBeginImageContextWithOptions(v60, 0, v52);
      [v49 drawInRect:{0.0, 0.0, 36.0, 36.0}];
      v53 = UIGraphicsGetImageFromCurrentImageContext();
      UIGraphicsEndImageContext();
    }

    else
    {
      v53 = 0;
    }

    v18 = v53;
    ArtworkView.image.setter();
    [v26 setNeedsLayout];

LABEL_21:
  }
}

void sub_100200BE8(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_10002849C(&qword_100972ED0, &unk_1007B17B0);
  __chkstk_darwin(v8 - 8);
  v10 = &v34 - v9;
  type metadata accessor for DetailCollectionViewCell(0);
  v11 = swift_dynamicCastClass();
  if (!v11)
  {
    return;
  }

  v12 = v11;
  if (static String._unconditionallyBridgeFromObjectiveC(_:)() == a2 && v13 == a3)
  {
    v17 = a1;
  }

  else
  {
    v15 = _stringCompareWithSmolCheck(_:_:expecting:)();
    v35 = a1;

    if ((v15 & 1) == 0)
    {
      v16 = v35;

      return;
    }
  }

  v18 = [v12 contentView];
  v19 = objc_opt_self();
  v20 = [v19 clearColor];
  [v18 setBackgroundColor:v20];

  v21 = a1;
  v22 = [v19 clearColor];
  [v12 setBackgroundColor:v22];

  v12[OBJC_IVAR____TtC8AppStore24DetailCollectionViewCell_isSelectable] = 0;
  [v12 setSelectedBackgroundView:0];
  IndexPath.section.getter();
  dispatch thunk of FamilyPurchasesPresenter.title(forSection:)();
  v23 = OBJC_IVAR____TtC8AppStore24DetailCollectionViewCell_titleLabel;
  v24 = *&v12[OBJC_IVAR____TtC8AppStore24DetailCollectionViewCell_titleLabel];
  if (v25)
  {
    v26 = String._bridgeToObjectiveC()();
  }

  else
  {
    v26 = 0;
  }

  [v24 setText:v26];

  if (qword_10096DCC0 != -1)
  {
    swift_once();
  }

  v27 = type metadata accessor for FontUseCase();
  v28 = sub_1000056A8(v27, qword_1009D05D8);
  v29 = *(v27 - 8);
  (*(v29 + 16))(v10, v28, v27);
  (*(v29 + 56))(v10, 0, 1, v27);
  dispatch thunk of DynamicTypeLabel.fontUseCase.setter();
  v30 = *&v12[v23];
  v31 = [v19 systemGrayColor];
  [v30 setTextColor:v31];

  [v4 pageMarginInsets];
  v33 = v32;
  [v4 pageMarginInsets];
  [v12 setLayoutMargins:{0.0, v33, 0.0}];
}

void sub_100200FA0(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for Accessory(0);
  v64 = *(v4 - 8);
  __chkstk_darwin(v4);
  v60 = &v57 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v61 = (&v57 - v7);
  __chkstk_darwin(v8);
  v63 = &v57 - v9;
  v10 = sub_10002849C(&qword_100984340, qword_1007C0830);
  __chkstk_darwin(v10 - 8);
  v62 = &v57 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = (&v57 - v13);
  __chkstk_darwin(v15);
  v65 = &v57 - v16;
  __chkstk_darwin(v17);
  v66 = &v57 - v18;
  v19 = type metadata accessor for FamilyPurchasesSection();
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v22 = &v57 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = v2;
  v24 = *&v2[OBJC_IVAR____TtC8AppStore29FamilyPurchasesViewController_presenter];
  IndexPath.section.getter();
  dispatch thunk of FamilyPurchasesPresenter.familyPurchasesSection(for:)();
  v25 = (*(v20 + 88))(v22, v19);
  if (v25 == enum case for FamilyPurchasesSection.errorBanner(_:))
  {
    if (dispatch thunk of FamilyPurchasesPresenter.errorBannerLinkableText.getter())
    {
      v26 = LinkableText.plainText.getter();
      v28 = v27;
      [a1 bounds];
      sub_1001FFFE8(v26, v28, 0, v2, v29, v30);
    }

    return;
  }

  if (v25 != enum case for FamilyPurchasesSection.loggedInUser(_:) && v25 != enum case for FamilyPurchasesSection.familyMembers(_:))
  {
    (*(v20 + 8))(v22, v19);
    return;
  }

  v32 = dispatch thunk of FamilyPurchasesPresenter.title(forItemAt:)();
  v59 = v33;
  v34 = v66;
  swift_storeEnumTagMultiPayload();
  v35 = *(v64 + 56);
  v35(v34, 0, 1, v4);
  v35(v65, 1, 1, v4);
  v36 = IndexPath.item.getter();
  IndexPath.section.getter();
  v37 = dispatch thunk of FamilyPurchasesPresenter.numberOfRows(in:)();
  v38 = (v37 - 1);
  if (__OFSUB__(v37, 1))
  {
    __break(1u);
    goto LABEL_30;
  }

  v57 = v32;
  v58 = v36;
  v32 = v23;
  v39 = [v23 view];
  if (!v39)
  {
    __break(1u);
    return;
  }

  v40 = v39;
  [v39 bounds];

  v41 = [v23 traitCollection];
  UITraitCollection.prefersAccessibilityLayouts.getter();

  v42 = [v23 traitCollection];
  sub_100031660(v66, v14, &qword_100984340, qword_1007C0830);
  v43 = *(v64 + 48);
  if (v43(v14, 1, v4) == 1)
  {
    v24 = v42;
    v44 = v14;
LABEL_18:
    sub_10002B894(v44, &qword_100984340, qword_1007C0830);
    goto LABEL_20;
  }

  v45 = v14;
  v46 = v63;
  sub_1000561D8(v45, v63);
  sub_1000C571C(v42);
  v47 = v61;
  swift_storeEnumTagMultiPayload();
  v48 = sub_1000C6830(v46, v47);
  sub_1000C7C80(v47);
  if (v48)
  {
    _UIAccessibilityContentSizeCategoryImageAdjustingScaleFactorForTraitCollection();
  }

  v49 = v62;
  sub_100031660(v65, v62, &qword_100984340, qword_1007C0830);
  if (v43(v49, 1, v4) == 1)
  {
    v24 = v42;
    sub_1000C7C80(v46);
    v44 = v49;
    goto LABEL_18;
  }

  v50 = v60;
  sub_1000561D8(v49, v60);
  v24 = v42;
  sub_1000C571C(v42);
  sub_1000C7C80(v50);
  sub_1000C7C80(v46);
LABEL_20:
  v14 = v38;
  v38 = &selRef_setRequiresColorStatistics_;
  if (qword_10096EDF0 != -1)
  {
LABEL_30:
    swift_once();
  }

  v51 = type metadata accessor for FontUseCase();
  sub_1000056A8(v51, qword_100992318);
  v52 = type metadata accessor for Feature();
  v67[3] = v52;
  v67[4] = sub_1002020A4(&qword_100972E50, 255, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
  v53 = sub_1000056E0(v67);
  (*(*(v52 - 8) + 104))(v53, enum case for Feature.measurement_with_labelplaceholder(_:), v52);
  isFeatureEnabled(_:)();
  sub_100007000(v67);
  static LabelPlaceholderCompatibility.measurements(text:fontUseCase:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:fitting:in:shouldUseLabelPlaceholder:)();
  if (qword_10096EDF8 != -1)
  {
    swift_once();
  }

  v54 = type metadata accessor for StaticDimension();
  sub_1000056A8(v54, qword_100992330);
  AnyDimension.topMargin(from:in:)();
  if (qword_10096EE00 != -1)
  {
    swift_once();
  }

  sub_1000056A8(v54, qword_100992348);
  AnyDimension.bottomMargin(from:in:)();
  v55 = [v32 v38[35]];
  static Separator.thickness(compatibleWith:)();

  if (v58 == v14)
  {
    v56 = [v32 v38[35]];
    static Separator.thickness(compatibleWith:)();
  }

  else
  {
  }

  sub_10002B894(v65, &qword_100984340, qword_1007C0830);
  sub_10002B894(v66, &qword_100984340, qword_1007C0830);
}

id sub_1002018EC(uint64_t a1)
{
  v2 = type metadata accessor for StaticDimension();
  v41 = *(v2 - 8);
  __chkstk_darwin(v2);
  v40 = v35 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for FloatingPointRoundingRule();
  v38 = *(v4 - 8);
  v39 = v4;
  __chkstk_darwin(v4);
  v37 = v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10002849C(&qword_1009799D0, qword_1007C5900);
  __chkstk_darwin(v6 - 8);
  v36 = v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v42 = v35 - v9;
  v10 = type metadata accessor for FamilyPurchasesSection();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = v35 - v15;
  dispatch thunk of FamilyPurchasesPresenter.familyPurchasesSection(for:)();
  (*(v11 + 104))(v13, enum case for FamilyPurchasesSection.familyMembers(_:), v10);
  sub_1002020A4(&qword_1009799D8, 255, &type metadata accessor for FamilyPurchasesSection, &protocol conformance descriptor for FamilyPurchasesSection);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  v17 = *(v11 + 8);
  v17(v13, v10);
  result = (v17)(v16, v10);
  if (v43[0] == v43[5])
  {
    dispatch thunk of FamilyPurchasesPresenter.title(forSection:)();
    v35[1] = v19;
    if (qword_10096D3E0 != -1)
    {
      swift_once();
    }

    v20 = sub_1000056A8(v2, qword_100979960);
    v22 = v41;
    v21 = v42;
    v23 = *(v41 + 16);
    v23(v42, v20, v2);
    (*(v22 + 56))(v21, 0, 1, v2);
    result = [v1 view];
    if (result)
    {
      v24 = result;
      [result bounds];

      v25 = [v1 traitCollection];
      if (qword_10096D568 != -1)
      {
        swift_once();
      }

      v26 = type metadata accessor for FontUseCase();
      sub_1000056A8(v26, qword_10097E160);
      v27 = type metadata accessor for Feature();
      v43[3] = v27;
      v43[4] = sub_1002020A4(&qword_100972E50, 255, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
      v28 = sub_1000056E0(v43);
      (*(*(v27 - 8) + 104))(v28, enum case for Feature.measurement_with_labelplaceholder(_:), v27);
      isFeatureEnabled(_:)();
      sub_100007000(v43);
      static LabelPlaceholderCompatibility.measurements(text:fontUseCase:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:fitting:in:shouldUseLabelPlaceholder:)();
      if (qword_10096D570 != -1)
      {
        swift_once();
      }

      sub_1000056A8(v2, qword_10097E178);
      AnyDimension.topMargin(from:in:)();
      v29 = v36;
      sub_100031660(v42, v36, &qword_1009799D0, qword_1007C5900);
      v30 = *(v22 + 48);
      v31 = v30(v29, 1, v2);
      v32 = v40;
      if (v31 == 1)
      {
        if (qword_10096D578 != -1)
        {
          swift_once();
        }

        v33 = sub_1000056A8(v2, qword_10097E190);
        v23(v32, v33, v2);
        if (v30(v29, 1, v2) != 1)
        {
          sub_10002B894(v29, &qword_1009799D0, qword_1007C5900);
        }
      }

      else
      {
        (*(v22 + 32))(v40, v29, v2);
      }

      v34 = v37;
      static Dimensions.defaultRoundingRule.getter();
      StaticDimension.value(compatibleWith:rounded:)();
      (*(v38 + 8))(v34, v39);
      (*(v22 + 8))(v32, v2);

      return sub_10002B894(v42, &qword_1009799D0, qword_1007C5900);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_1002020A4(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

char *sub_1002021F8(uint64_t a1, uint64_t a2)
{
  v2[OBJC_IVAR____TtC8AppStore35TopChartsDiffablePageViewController_isPresenterLoaded] = 0;
  swift_unknownObjectWeakInit();
  v5 = OBJC_IVAR____TtC8AppStore35TopChartsDiffablePageViewController_paletteContents;
  v6 = [objc_allocWithZone(UISegmentedControl) init];
  v7 = sub_10002849C(&qword_100979AF8, &unk_1007C0970);
  v8 = objc_allocWithZone(v7);
  *&v8[qword_100979A68] = v6;
  v32.receiver = v8;
  v32.super_class = v7;
  v9 = v6;
  v10 = objc_msgSendSuper2(&v32, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  [v10 setLayoutMargins:{8.0, 0.0, 8.0, 0.0}];
  [v10 setPreservesSuperviewLayoutMargins:0];
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v14 = v9;
  [v14 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  [v10 addSubview:v14];

  *&v2[v5] = v10;
  v15 = &v2[OBJC_IVAR____TtC8AppStore35TopChartsDiffablePageViewController_selectedSegmentIndex];
  *v15 = 0;
  v15[8] = 1;
  *&v2[OBJC_IVAR____TtC8AppStore35TopChartsDiffablePageViewController_segmentViewControllers] = _swiftEmptyArrayStorage;
  *&v2[OBJC_IVAR____TtC8AppStore35TopChartsDiffablePageViewController_categoriesBarButton] = 0;
  *&v2[OBJC_IVAR____TtC8AppStore35TopChartsDiffablePageViewController_overlayViewController] = 0;
  *&v2[OBJC_IVAR____TtC8AppStore35TopChartsDiffablePageViewController_selectCategoryViewController] = 0;
  *&v2[OBJC_IVAR____TtC8AppStore35TopChartsDiffablePageViewController_objectGraph] = a2;
  type metadata accessor for ArtworkLoader();
  type metadata accessor for BaseObjectGraph();

  inject<A, B>(_:from:)();
  *&v2[OBJC_IVAR____TtC8AppStore35TopChartsDiffablePageViewController_artworkLoader] = v31;
  *&v2[OBJC_IVAR____TtC8AppStore35TopChartsDiffablePageViewController_presenter] = a1;
  v30.receiver = v2;
  v30.super_class = type metadata accessor for TopChartsDiffablePageViewController();

  v16 = objc_msgSendSuper2(&v30, "initWithNibName:bundle:", 0, 0);
  TopChartsDiffablePagePresenter.title.getter();
  if (v17)
  {
    v18 = String._bridgeToObjectiveC()();
  }

  else
  {
    v18 = 0;
  }

  [v16 setTitle:v18];

  v19 = v16;
  v20 = [v19 navigationItem];
  [v20 setLargeTitleDisplayMode:2];

  v21 = *(*&v19[OBJC_IVAR____TtC8AppStore35TopChartsDiffablePageViewController_paletteContents] + qword_100979A68);
  sub_100005744(0, &qword_10097CD40, UIAction_ptr);
  v22 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v23 = v21;

  v24 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  [v23 addAction:v24 forControlEvents:{4096, 0, 0, 0, sub_1002068B0, v22, v30.receiver, v30.super_class}];

  v25 = [v19 navigationItem];
  v26 = [objc_allocWithZone(UINavigationBarAppearance) init];
  [v25 setStandardAppearance:v26];

  v27 = [v19 navigationItem];
  v28 = [objc_allocWithZone(UINavigationBarAppearance) init];
  [v27 setScrollEdgeAppearance:v28];

  return v19;
}

void sub_100202654(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = OBJC_IVAR____TtC8AppStore35TopChartsDiffablePageViewController_paletteContents;
    v5 = [*(*(Strong + OBJC_IVAR____TtC8AppStore35TopChartsDiffablePageViewController_paletteContents) + qword_100979A68) selectedSegmentIndex];
    v6 = &v3[OBJC_IVAR____TtC8AppStore35TopChartsDiffablePageViewController_selectedSegmentIndex];
    v7 = *&v3[OBJC_IVAR____TtC8AppStore35TopChartsDiffablePageViewController_selectedSegmentIndex];
    v8 = v3[OBJC_IVAR____TtC8AppStore35TopChartsDiffablePageViewController_selectedSegmentIndex + 8];
    *v6 = v5;
    v6[8] = 0;
    [*(*&v3[v4] + qword_100979A68) setSelectedSegmentIndex:v5];
    if (v8)
    {
      sub_100205354();
    }

    else
    {
      sub_1002059FC(v5, v7);
    }
  }
}

id sub_100202754()
{
  v1 = v0;
  v2 = type metadata accessor for PageGrid.Direction();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v23 - v7;
  v9 = type metadata accessor for PageGrid();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 104))(v8, enum case for PageGrid.Direction.vertical(_:), v2, v11);
  result = [v1 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  v15 = result;
  [result bounds];
  v17 = v16;
  v19 = v18;

  result = [v1 view];
  if (!result)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  v20 = result;
  [result safeAreaInsets];

  (*(v3 + 16))(v5, v8, v2);
  if (qword_10096E490 != -1)
  {
    swift_once();
  }

  PageGrid.init(name:direction:containerSize:readableContentInsets:safeAreaInsets:requiresAdditionalSafeAreaMargins:breakpoints:)();
  (*(v3 + 8))(v8, v2);
  PageGrid.columnCount.getter();
  v22 = v21;
  (*(v10 + 8))(v13, v9);
  return (v22 > 1.0);
}

id sub_100202A98()
{
  v1 = v0;
  v39 = sub_10002849C(&qword_100979B40, &qword_1007C09A0);
  v2 = *(v39 - 8);
  __chkstk_darwin(v39);
  v4 = &v31 - v3;
  v38 = sub_10002849C(&qword_100979B48, &qword_1007C09A8);
  v5 = *(v38 - 8);
  __chkstk_darwin(v38);
  v7 = &v31 - v6;
  v8 = sub_10002849C(&qword_100979B50, &qword_1007C09B0);
  v37 = *(v8 - 8);
  __chkstk_darwin(v8);
  v36 = &v31 - v9;
  v10 = type metadata accessor for TopChartsDiffablePageViewController();
  v42.receiver = v0;
  v42.super_class = v10;
  objc_msgSendSuper2(&v42, "viewDidLoad");
  sub_100203154(0, 0, 1);
  result = [v0 view];
  if (result)
  {
    v12 = result;
    v32 = v8;
    v33 = v7;
    v34 = v5;
    sub_100005744(0, &qword_100970180, UIColor_ptr);
    v13 = static UIColor.defaultBackground.getter();
    [v12 setBackgroundColor:v13];

    v35 = v10;
    v41 = v10;
    v40[0] = v1;
    v14 = v1;
    v15 = String._bridgeToObjectiveC()();
    v16 = v41;
    if (v41)
    {
      v17 = sub_10002A400(v40, v41);
      v18 = *(v16 - 8);
      v19 = __chkstk_darwin(v17);
      v21 = &v31 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v18 + 16))(v21, v19);
      v22 = _bridgeAnythingToObjectiveC<A>(_:)();
      (*(v18 + 8))(v21, v16);
      sub_100007000(v40);
    }

    else
    {
      v22 = 0;
    }

    v23 = [objc_allocWithZone(UIBarButtonItem) initWithTitle:v15 style:0 target:v22 action:"showCategoriesFor:"];

    swift_unknownObjectRelease();
    v24 = *&v14[OBJC_IVAR____TtC8AppStore35TopChartsDiffablePageViewController_categoriesBarButton];
    *&v14[OBJC_IVAR____TtC8AppStore35TopChartsDiffablePageViewController_categoriesBarButton] = v23;

    v25 = *&v14[OBJC_IVAR____TtC8AppStore35TopChartsDiffablePageViewController_paletteContents];
    [v25 setAutoresizingMask:18];
    [v25 sizeToFit];
    v26 = [objc_allocWithZone(_UINavigationBarPalette) initWithContentView:v25];
    [v26 _setContentViewMarginType:0];
    v27 = [v14 navigationItem];
    v28 = v26;
    [v27 _setBottomPalette:v28];

    swift_unknownObjectWeakAssign();
    sub_100204B54();

    TimedMetricsPagePresenter.onUpdatePhaseChanged.getter();
    sub_10002849C(&qword_100979B58, &qword_1007C09B8);
    sub_100207C6C(&qword_100979B60, &qword_100979B58, &qword_1007C09B8);
    dispatch thunk of static EventEmitter.defaultScheduler.getter();
    v29 = v36;
    EventEmitter.addObserver<A>(on:target:method:)();

    sub_100007000(v40);
    (*(v37 + 8))(v29, v32);
    TopChartsDiffablePagePresenter.onSegmentPresentersUpdated.getter();
    sub_10002849C(&qword_100979B68, &qword_1007C09C0);
    sub_100207C6C(&qword_100979B70, &qword_100979B68, &qword_1007C09C0);
    dispatch thunk of static EventEmitter.defaultScheduler.getter();
    v30 = v33;
    EventEmitter.addObserver<A>(on:target:method:)();

    sub_100007000(v40);
    (*(v34 + 8))(v30, v38);
    TopChartsDiffablePagePresenter.onCategoriesButtonTitleChanged.getter();
    sub_10002849C(&qword_100979B78, &qword_1007C09C8);
    sub_100207C6C(&qword_100979B80, &qword_100979B78, &qword_1007C09C8);
    dispatch thunk of static EventEmitter.defaultScheduler.getter();
    EventEmitter.addObserver<A>(on:target:method:)();

    sub_100007000(v40);
    return (*(v2 + 8))(v4, v39);
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_100203154(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v6 = type metadata accessor for PageGrid.Direction();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v22 - v11;
  v13 = type metadata accessor for PageGrid();
  v22 = *(v13 - 8);
  v23 = v13;
  v14 = __chkstk_darwin(v13);
  v16 = &v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 104))(v12, enum case for PageGrid.Direction.vertical(_:), v6, v14);
  if (a3)
  {
    result = [v4 view];
    if (!result)
    {
      goto LABEL_7;
    }

    v18 = result;
    [result bounds];
  }

  result = [v4 view];
  if (result)
  {
    v19 = result;
    [result safeAreaInsets];

    (*(v7 + 16))(v9, v12, v6);
    sub_10069F96C(0.0);
    PageGrid.init(name:direction:containerSize:readableContentInsets:safeAreaInsets:requiresAdditionalSafeAreaMargins:breakpoints:)();
    (*(v7 + 8))(v12, v6);
    v20 = [v4 navigationItem];
    PageGrid.horizontalDirectionalMargins.getter();
    [v20 largeTitleInsets];
    [v20 setLargeTitleInsets:?];

    v21 = [v4 navigationItem];
    PageGrid.horizontalDirectionalMargins.getter();
    [v21 largeTitleInsets];
    [v21 setLargeTitleInsets:?];

    return (*(v22 + 8))(v16, v23);
  }

  __break(1u);
LABEL_7:
  __break(1u);
  return result;
}

void (*sub_1002034BC(void *a1))(uint64_t a1)
{
  *(swift_allocObject() + 16) = a1;
  v2 = a1;
  return sub_100207D38;
}

uint64_t (*sub_100203520(void *a1))(void *a1)
{
  v2 = swift_allocObject();
  *(v2 + 16) = a1;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_100207D14;
  *(v3 + 24) = v2;
  v4 = a1;
  return sub_10019DA68;
}

uint64_t (*sub_1002035B0(void *a1))()
{
  v2 = swift_allocObject();
  *(v2 + 16) = a1;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_100207CC0;
  *(v3 + 24) = v2;
  v4 = a1;
  return sub_100207CE4;
}

id sub_1002038A0(uint64_t a1)
{
  v15.receiver = v1;
  v15.super_class = type metadata accessor for TopChartsDiffablePageViewController();
  objc_msgSendSuper2(&v15, "viewWillLayoutSubviews");
  v2 = *&v1[OBJC_IVAR____TtC8AppStore35TopChartsDiffablePageViewController_overlayViewController];
  if (!v2)
  {
    return sub_100204CA0();
  }

  v3 = v2;
  result = [v3 view];
  if (result)
  {
    v5 = result;
    result = [v1 view];
    if (result)
    {
      v6 = result;
      [result bounds];
      v8 = v7;
      v10 = v9;
      v12 = v11;
      v14 = v13;

      [v5 setFrame:{v8, v10, v12, v14}];
      return sub_100204CA0();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_100203B7C(void *a1, double a2, double a3)
{
  v18.receiver = v3;
  v18.super_class = type metadata accessor for TopChartsDiffablePageViewController();
  objc_msgSendSuper2(&v18, "viewWillTransitionToSize:withTransitionCoordinator:", a1, a2, a3);
  if ([v3 isViewLoaded])
  {
    v7 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v8 = swift_allocObject();
    *(v8 + 16) = v7;
    *(v8 + 24) = a2;
    *(v8 + 32) = a3;
    v16 = sub_100207C58;
    v17 = v8;
    v12 = _NSConcreteStackBlock;
    v13 = 1107296256;
    v14 = sub_1006D1458;
    v15 = &unk_1008B9458;
    v9 = _Block_copy(&v12);

    v10 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v16 = sub_100207C64;
    v17 = v10;
    v12 = _NSConcreteStackBlock;
    v13 = 1107296256;
    v14 = sub_1006D1458;
    v15 = &unk_1008B9480;
    v11 = _Block_copy(&v12);

    [a1 animateAlongsideTransition:v9 completion:v11];
    _Block_release(v11);
    _Block_release(v9);
  }
}

void sub_100203D50(double a1, double a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    sub_100203154(*&a1, *&a2, 0);
  }
}

void sub_100203DC0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_100204B54();
  }

  swift_beginAccess();
  v4 = swift_unknownObjectWeakLoadStrong();
  if (v4)
  {
    v5 = v4;
    sub_100204CA0();
  }

  swift_beginAccess();
  v6 = swift_unknownObjectWeakLoadStrong();
  if (v6)
  {
    v7 = v6;
    sub_100205354();
  }
}

void sub_100203EEC(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for JULoadingViewController.PresentationContext();
  __chkstk_darwin(v4 - 8);
  updated = type metadata accessor for TopChartsDiffablePagePresenter.UpdatePhase();
  v6 = *(updated - 8);
  v7 = __chkstk_darwin(updated);
  v9 = (&v67 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v6 + 16))(v9, a1, updated, v7);
  v10 = (*(v6 + 88))(v9, updated);
  if (v10 != enum case for TopChartsDiffablePagePresenter.UpdatePhase.completed(_:))
  {
    if (v10 == enum case for TopChartsDiffablePagePresenter.UpdatePhase.error(_:))
    {
      v31.n128_f64[0] = (*(v6 + 96))(v9, updated);
      v32 = *v9;
      v33 = v9[1];
      v34 = v9[2];
      sub_100206BA0(v32, v31);
      sub_10001F63C(v33, v34);

      return;
    }

    if (v10 != enum case for TopChartsDiffablePagePresenter.UpdatePhase.started(_:))
    {
      v52 = OBJC_IVAR____TtC8AppStore35TopChartsDiffablePageViewController_overlayViewController;
      v53 = *&v2[OBJC_IVAR____TtC8AppStore35TopChartsDiffablePageViewController_overlayViewController];
      static ViewControllerContainment.remove(_:)();

      v54 = *&v2[v52];
      *&v2[v52] = 0;

      v55 = [v2 view];
      if (v55)
      {
        v56 = v55;
        [v55 bounds];
        v58 = v57;
        v60 = v59;
        v62 = v61;
        v64 = v63;

        v68 = v58;
        v69 = v60;
        v70 = v62;
        v71 = v64;
        v72 = 0;
        static ViewControllerContainment.add(_:to:frame:)();
        v65 = *&v2[OBJC_IVAR____TtC8AppStore35TopChartsDiffablePageViewController_categoriesBarButton];
        if (v65)
        {
          [v65 setEnabled:1];
        }

        (*(v6 + 8))(v9, updated);
        return;
      }

LABEL_26:
      __break(1u);
      return;
    }

    dispatch thunk of TimedMetricsPagePresenter.pageRenderMetrics.getter();
    static JULoadingViewController.PresentationContext.placeholder.getter();
    v35 = objc_allocWithZone(type metadata accessor for JULoadingViewController());
    v36 = JULoadingViewController.init(label:presentationContext:pageRenderMetrics:)();
    v37 = OBJC_IVAR____TtC8AppStore35TopChartsDiffablePageViewController_overlayViewController;
    v38 = *&v2[OBJC_IVAR____TtC8AppStore35TopChartsDiffablePageViewController_overlayViewController];
    static ViewControllerContainment.remove(_:)();

    v39 = *&v2[v37];
    *&v2[v37] = v36;
    v40 = v36;

    v41 = [v2 view];
    if (v41)
    {
      v42 = v41;
      [v41 bounds];
      v44 = v43;
      v46 = v45;
      v48 = v47;
      v50 = v49;

      v68 = v44;
      v69 = v46;
      v70 = v48;
      v71 = v50;
      v72 = 0;
      static ViewControllerContainment.add(_:to:frame:)();

      v51 = *&v2[OBJC_IVAR____TtC8AppStore35TopChartsDiffablePageViewController_categoriesBarButton];
      if (v51)
      {
        [v51 setEnabled:0];
      }

      return;
    }

LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  (*(v6 + 96))(v9, updated);
  v11 = *&v2[OBJC_IVAR____TtC8AppStore35TopChartsDiffablePageViewController_categoriesBarButton];
  if (v11)
  {
    [v11 setEnabled:1];
  }

  sub_100206AA8();
  v12 = OBJC_IVAR____TtC8AppStore35TopChartsDiffablePageViewController_overlayViewController;
  v13 = *&v2[OBJC_IVAR____TtC8AppStore35TopChartsDiffablePageViewController_overlayViewController];
  static ViewControllerContainment.remove(_:)();

  v14 = *&v2[v12];
  *&v2[v12] = 0;

  v15 = [v2 view];
  if (!v15)
  {
    __break(1u);
    goto LABEL_25;
  }

  v16 = v15;
  [v15 bounds];
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;

  v68 = v18;
  v69 = v20;
  v70 = v22;
  v71 = v24;
  v72 = 0;
  static ViewControllerContainment.add(_:to:frame:)();
  if (dispatch thunk of TimedMetricsPagePresenter.pendingPageRender.getter())
  {
    PendingPageRender.isLayoutPending.setter();
  }

  v25 = dispatch thunk of TimedMetricsPagePresenter.pageRenderMetrics.getter();
  v26 = [objc_opt_self() sharedApplication];
  v27 = [v26 launchedToTest];

  if (v27)
  {
    if (v25)
    {
      v28 = objc_opt_self();

      v29 = [v28 defaultCenter];
      type metadata accessor for PageRenderMetricsPresenter();
      v30 = static PageRenderMetricsPresenter.pageEndNotification.getter();
      [v29 addObserver:v2 selector:"ppt_pageRenderMetricsPresenterPageLoaded:" name:v30 object:v25];

      return;
    }

    sub_100094120();
    v66 = swift_allocError();
    sub_10021CA80(v66);
  }

  else
  {
  }
}

void sub_1002044A4(unint64_t a1)
{
  v1 = a1;
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_51;
  }

  v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  if (v3)
  {
    specialized ContiguousArray.reserveCapacity(_:)();
    if (v3 < 0)
    {
      __break(1u);
      goto LABEL_55;
    }

    v31 = (v1 & 0xFFFFFFFFFFFFFF8);
    if (v2)
    {
      v4 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v4 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v5 = 0;
    v6 = *&v32[OBJC_IVAR____TtC8AppStore35TopChartsDiffablePageViewController_objectGraph];
    v7 = v4 & ~(v4 >> 63);
    do
    {
      if (v7 == v5)
      {
        goto LABEL_46;
      }

      if ((v1 & 0xC000000000000001) != 0)
      {
        v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v5 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_50;
        }

        v8 = *(v1 + 8 * v5 + 32);
      }

      v9 = sub_100202754();
      v10 = v5++ != 0;
      v11 = sub_100207C10(&qword_100979B00, &type metadata accessor for TopChartDiffableSegmentPresenter, &protocol conformance descriptor for TimedMetricsPagePresenter<A>);
      v12 = sub_10054A47C(v6, v8, v11, _swiftEmptyArrayStorage, 0x7472616843706F74, 0xEF746E656D676553);
      v13 = objc_allocWithZone(type metadata accessor for TopChartDiffableSegmentViewController(0));
      v13[qword_100987B20] = v9;
      v13[qword_100987B28] = v10;
      v2 = sub_1003BEE8C(v8, v12);
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
    }

    while (v3 != v5);
  }

  v31 = _swiftEmptyArrayStorage;
  v30 = OBJC_IVAR____TtC8AppStore35TopChartsDiffablePageViewController_segmentViewControllers;
  v1 = *&v32[OBJC_IVAR____TtC8AppStore35TopChartsDiffablePageViewController_segmentViewControllers];
  if (v1 >> 62)
  {
    v14 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v14 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v14)
  {
    v15 = 0;
    do
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v16 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v15 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_48;
        }

        v16 = *(v1 + 8 * v15 + 32);
      }

      v17 = v16;
      v18 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        goto LABEL_47;
      }

      v19 = [v16 parentViewController];
      if (v19)
      {
        v2 = v19;
        sub_100005744(0, &qword_1009711C0, UIViewController_ptr);
        v20 = v32;
        v21 = static NSObject.== infix(_:_:)();

        if (v21)
        {
          [v17 willMoveToParentViewController:0];
          v22 = [v17 view];
          if (!v22)
          {
            __break(1u);
            return;
          }

          v2 = v22;
          [v22 removeFromSuperview];

          [v17 removeFromParentViewController];
        }
      }

      ++v15;
    }

    while (v18 != v14);
  }

  *&v32[v30] = _swiftEmptyArrayStorage;

  sub_100204CA0();
  sub_100205354();
  v30 = qword_100979A68;
  v31 = *&v32[OBJC_IVAR____TtC8AppStore35TopChartsDiffablePageViewController_paletteContents];
  [*(v31 + qword_100979A68) removeAllSegments];
  v23 = TopChartsDiffablePagePresenter.segmentPresenters.getter();
  if (v23 >> 62)
  {
    v2 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v2 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v2 > 1)
  {
    v24 = TopChartsDiffablePagePresenter.segmentPresenters.getter();
    v1 = v24;
    if (!(v24 >> 62))
    {
      v25 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v25)
      {
LABEL_35:
        v26 = 0;
        while (1)
        {
          if ((v1 & 0xC000000000000001) != 0)
          {
            specialized _ArrayBuffer._getElementSlowPath(_:)();
            v28 = v26 + 1;
            if (__OFADD__(v26, 1))
            {
              goto LABEL_45;
            }
          }

          else
          {
            if (v26 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_49;
            }

            v28 = v26 + 1;
            if (__OFADD__(v26, 1))
            {
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
              v3 = _CocoaArrayWrapper.endIndex.getter();
              goto LABEL_3;
            }
          }

          v2 = *(v31 + v30);
          TopChartDiffableSegmentPresenter.shortName.getter();
          if (v29)
          {
            v27 = String._bridgeToObjectiveC()();
          }

          else
          {
            v27 = 0;
          }

          [v2 insertSegmentWithTitle:v27 atIndex:v26 animated:{0, v30}];

          ++v26;
          if (v28 == v25)
          {
            goto LABEL_56;
          }
        }
      }

      goto LABEL_56;
    }

LABEL_55:
    v25 = _CocoaArrayWrapper.endIndex.getter();
    if (v25)
    {
      goto LABEL_35;
    }

LABEL_56:

    if ((v32[OBJC_IVAR____TtC8AppStore35TopChartsDiffablePageViewController_selectedSegmentIndex + 8] & 1) == 0)
    {
      [*(v31 + v30) setSelectedSegmentIndex:*&v32[OBJC_IVAR____TtC8AppStore35TopChartsDiffablePageViewController_selectedSegmentIndex]];
    }
  }

  sub_100204B54();

  sub_10021D284();
}

void sub_100204A18(uint64_t a1, uint64_t a2)
{
  v3 = OBJC_IVAR____TtC8AppStore35TopChartsDiffablePageViewController_categoriesBarButton;
  v4 = *&v2[OBJC_IVAR____TtC8AppStore35TopChartsDiffablePageViewController_categoriesBarButton];
  if (v4 && (!a2 ? (v5 = v4, v6 = 0) : (v5 = v4, v6 = String._bridgeToObjectiveC()()), ([v5 setTitle:v6], v5, v6, (v7 = *&v2[v3]) != 0) && (v8 = objc_msgSend(v7, "title")) != 0))
  {

    v10 = [v2 navigationItem];
    v9 = *&v2[v3];
    [v10 setRightBarButtonItem:v9];
  }

  else
  {
    v10 = [v2 navigationItem];
    [v10 setRightBarButtonItem:0];
  }
}

void sub_100204B54()
{
  v1 = sub_100202754();
  v2 = *(v0 + OBJC_IVAR____TtC8AppStore35TopChartsDiffablePageViewController_paletteContents);
  if (v1 || [*&v2[qword_100979A68] numberOfSegments] <= 0 && (*(v0 + OBJC_IVAR____TtC8AppStore35TopChartsDiffablePageViewController_isPresenterLoaded) & 1) != 0)
  {
    [v2 setHidden:1];
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v6 = Strong;
      [Strong setPreferredHeight:0.0];
    }
  }

  else
  {
    [v2 sizeToFit];
    v4 = swift_unknownObjectWeakLoadStrong();
    if (v4)
    {
      v5 = v4;
      [v2 frame];
      [v5 setPreferredHeight:CGRectGetHeight(v8)];
    }

    [v2 setHidden:0];
  }
}

id sub_100204CA0()
{
  v1 = v0;
  v2 = type metadata accessor for PageGrid.Direction();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v61 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v61 - v7;
  v9 = type metadata accessor for PageGrid();
  v62 = *(v9 - 8);
  v63 = v9;
  v10 = __chkstk_darwin(v9);
  v68 = &v61 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 104))(v8, enum case for PageGrid.Direction.vertical(_:), v2, v10);
  v12 = &selRef_setRequiresColorStatistics_;
  result = [v1 view];
  if (!result)
  {
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  v14 = result;
  [result bounds];
  v16 = v15;
  v18 = v17;

  result = [v1 view];
  if (!result)
  {
LABEL_48:
    __break(1u);
    return result;
  }

  v19 = result;
  v66 = v16;
  v67 = v18;
  [result safeAreaInsets];

  (*(v3 + 16))(v5, v8, v2);
  if (qword_10096E490 != -1)
  {
    goto LABEL_37;
  }

  while (1)
  {

    v20 = v68;
    PageGrid.init(name:direction:containerSize:readableContentInsets:safeAreaInsets:requiresAdditionalSafeAreaMargins:breakpoints:)();
    (*(v3 + 8))(v8, v2);
    v2 = v20;
    PageGrid.horizontalDirectionalMargins.getter();
    v22 = v21;
    v61 = OBJC_IVAR____TtC8AppStore35TopChartsDiffablePageViewController_segmentViewControllers;
    v3 = *&v1[OBJC_IVAR____TtC8AppStore35TopChartsDiffablePageViewController_segmentViewControllers];
    v23 = v1;
    if (!(v3 >> 62))
    {
      v66 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_6:
      v67 = v3 & 0xFFFFFFFFFFFFFF8;
      v24 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_7;
    }

    v66 = _CocoaArrayWrapper.endIndex.getter();
    v3 = *&v1[v61];
    if (!(v3 >> 62))
    {
      goto LABEL_6;
    }

    v67 = v3 & 0xFFFFFFFFFFFFFF8;
    v24 = _CocoaArrayWrapper.endIndex.getter();
LABEL_7:

    if (!v24)
    {
      break;
    }

    v25 = 0;
    v64 = v3;
    v65 = v3 & 0xC000000000000001;
    while (1)
    {
      if (v65)
      {
        v26 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v25 >= *(v67 + 16))
        {
          goto LABEL_36;
        }

        v26 = *(v3 + 8 * v25 + 32);
      }

      v1 = v26;
      v27 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        break;
      }

      v28 = sub_100202754();
      sub_1004BAF44(v28, v25 != 0);
      if (v66 == 1)
      {
        static CGFloat.allColumns.getter();
      }

      PageGrid.componentMeasuringSize(spanning:)();
      v30 = v29;
      result = [v1 v12[40]];
      if (!result)
      {
        goto LABEL_44;
      }

      v31 = result;
      result = [v23 v12[40]];
      if (!result)
      {
        goto LABEL_45;
      }

      v8 = v23;
      v32 = v12;
      v33 = result;
      [result bounds];
      v35 = v34;
      v37 = v36;
      v39 = v38;
      v41 = v40;

      v69.origin.x = v35;
      v69.origin.y = v37;
      v69.size.width = v39;
      v69.size.height = v41;
      MinY = CGRectGetMinY(v69);
      v43 = v32;
      result = [v8 v32[40]];
      if (!result)
      {
        goto LABEL_46;
      }

      v44 = result;
      v23 = v8;
      [result bounds];
      v46 = v45;
      v48 = v47;
      v50 = v49;
      v52 = v51;

      v70.origin.x = v46;
      v70.origin.y = v48;
      v70.size.width = v50;
      v70.size.height = v52;
      [v31 setFrame:{v22, MinY, v30, CGRectGetHeight(v70)}];

      v2 = v8;
      if (sub_100202754())
      {
        v2 = v68;
        PageGrid.interColumnSpace.getter();
        v54 = v53;

        v22 = v22 + v30 + v54;
      }

      else
      {
      }

      ++v25;
      v12 = v43;
      v3 = v64;
      if (v27 == v24)
      {
        goto LABEL_24;
      }
    }

    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    swift_once();
  }

LABEL_24:

  if (sub_100202754())
  {
    goto LABEL_25;
  }

  v55 = &v23[OBJC_IVAR____TtC8AppStore35TopChartsDiffablePageViewController_selectedSegmentIndex];
  if (v23[OBJC_IVAR____TtC8AppStore35TopChartsDiffablePageViewController_selectedSegmentIndex + 8])
  {
    goto LABEL_25;
  }

  v56 = *v55;
  if (*v55 < 0)
  {
    goto LABEL_25;
  }

  v57 = *&v23[v61];
  if (v57 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    if (v56 >= result)
    {
      goto LABEL_25;
    }

LABEL_31:
    v58 = *&v23[v61];
    if ((v58 & 0xC000000000000001) != 0)
    {

      v59 = specialized _ArrayBuffer._getElementSlowPath(_:)();

      goto LABEL_34;
    }

    if (v56 < *((v58 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v59 = *(v58 + 8 * v56 + 32);
LABEL_34:
      v60 = [v59 collectionView];

      [v23 setContentScrollView:v60 forEdge:15];
      return (*(v62 + 8))(v68, v63);
    }

    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  result = *((v57 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v56 < result)
  {
    goto LABEL_31;
  }

LABEL_25:
  [v23 setContentScrollView:0 forEdge:{15, v61}];
  return (*(v62 + 8))(v68, v63);
}

void sub_100205354()
{
  v1 = v0;
  v2 = type metadata accessor for PageGrid.Direction();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v41 - v7;
  v55 = type metadata accessor for PageGrid();
  v9 = *(v55 - 8);
  __chkstk_darwin(v55);
  v54 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *&v1[OBJC_IVAR____TtC8AppStore35TopChartsDiffablePageViewController_segmentViewControllers];
  if (v11 >> 62)
  {
LABEL_32:
    v12 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v13 = OBJC_IVAR____TtC8AppStore35TopChartsDiffablePageViewController_selectedSegmentIndex;

  if (v12)
  {
    v14 = 0;
    v42 = &v1[v13];
    v52 = v11 & 0xFFFFFFFFFFFFFF8;
    v53 = v11 & 0xC000000000000001;
    v51 = enum case for PageGrid.Direction.vertical(_:);
    v49 = (v3 + 16);
    v50 = (v3 + 104);
    v47 = (v9 + 1);
    v48 = (v3 + 8);
    left = UIEdgeInsetsZero.left;
    top = UIEdgeInsetsZero.top;
    v9 = &selRef_setRequiresColorStatistics_;
    v43 = v11;
    v44 = v12;
    v56 = v1;
    while (1)
    {
      if (v53)
      {
        v15 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v14 >= *(v52 + 16))
        {
          goto LABEL_31;
        }

        v15 = *(v11 + 8 * v14 + 32);
      }

      v16 = v15;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
LABEL_31:
        __break(1u);
        goto LABEL_32;
      }

      v57 = v14 + 1;
      (*v50)(v8, v51, v2);
      v17 = [v1 v9[40]];
      if (!v17)
      {
        break;
      }

      v18 = v17;
      [v17 bounds];

      v19 = [v1 v9[40]];
      if (!v19)
      {
        goto LABEL_34;
      }

      v20 = v19;
      [v19 safeAreaInsets];

      (*v49)(v5, v8, v2);
      if (qword_10096E490 != -1)
      {
        swift_once();
      }

      v21 = v54;
      PageGrid.init(name:direction:containerSize:readableContentInsets:safeAreaInsets:requiresAdditionalSafeAreaMargins:breakpoints:)();
      (*v48)(v8, v2);
      v3 = v21;
      PageGrid.columnCount.getter();
      v23 = v22;
      (*v47)(v21, v55);
      if (v23 > 1.0 || (v42[8] & 1) == 0 && v14 == *v42)
      {
        v24 = v16;
        v25 = [v24 parentViewController];
        v9 = &selRef_setRequiresColorStatistics_;
        if (!v25 || (v26 = v25, sub_100005744(0, &qword_1009711C0, UIViewController_ptr), v27 = v8, v28 = v5, v29 = v2, v30 = v56, v31 = static NSObject.== infix(_:_:)(), v26, v30, v2 = v29, v5 = v28, v8 = v27, v9 = &selRef_setRequiresColorStatistics_, (v31 & 1) == 0))
        {
          v32 = v56;
          [v56 addChildViewController:v24];
          v33 = [v32 v9[40]];
          if (!v33)
          {
            goto LABEL_36;
          }

          v34 = v33;
          v35 = [v24 v9[40]];
          if (!v35)
          {
            goto LABEL_37;
          }

          v36 = v35;
          [v34 addSubview:v35];

          [v24 didMoveToParentViewController:v32];
        }

        v3 = [v24 v9[40]];

        v11 = v43;
        if (!v3)
        {
          goto LABEL_35;
        }

        [v3 setAlpha:1.0];

        v1 = v56;
      }

      else
      {
        v37 = [v16 parentViewController];
        v9 = &selRef_setRequiresColorStatistics_;
        v1 = v56;
        if (v37)
        {
          v38 = v37;
          sub_100005744(0, &qword_1009711C0, UIViewController_ptr);
          v39 = v1;
          v3 = static NSObject.== infix(_:_:)();

          v11 = v43;
          if (v3)
          {
            [v16 willMoveToParentViewController:0];
            v40 = [v16 view];
            if (!v40)
            {
              goto LABEL_38;
            }

            v3 = v40;
            [v40 removeFromSuperview];

            [v16 removeFromParentViewController];
          }
        }
      }

      ++v14;
      if (v57 == v44)
      {
        goto LABEL_29;
      }
    }

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
    __break(1u);
  }

  else
  {
LABEL_29:
  }
}

void sub_1002059FC(unint64_t a1, unint64_t a2)
{
  if (a2 != a1)
  {
    v4 = OBJC_IVAR____TtC8AppStore35TopChartsDiffablePageViewController_segmentViewControllers;
    v5 = *&v2[OBJC_IVAR____TtC8AppStore35TopChartsDiffablePageViewController_segmentViewControllers];
    if ((v5 & 0xC000000000000001) == 0)
    {
      if ((a2 & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else if (*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
      {
        v6 = *(v5 + 8 * a2 + 32);
        if ((v5 & 0xC000000000000001) == 0)
        {
          goto LABEL_6;
        }

        goto LABEL_18;
      }

      __break(1u);
      goto LABEL_21;
    }

    v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();

    v5 = *&v2[v4];
    if ((v5 & 0xC000000000000001) == 0)
    {
LABEL_6:
      if ((a1 & 0x8000000000000000) == 0)
      {
        if (*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10) > a1)
        {
          v7 = *(v5 + 8 * a1 + 32);
          goto LABEL_9;
        }

LABEL_22:
        __break(1u);
        goto LABEL_23;
      }

LABEL_21:
      __break(1u);
      goto LABEL_22;
    }

LABEL_18:

    v25 = specialized _ArrayBuffer._getElementSlowPath(_:)();

    v7 = v25;
LABEL_9:
    v8 = v7;
    v9 = [v8 parentViewController];
    if (!v9 || (v10 = v9, sub_100005744(0, &qword_1009711C0, UIViewController_ptr), v11 = v2, v12 = static NSObject.== infix(_:_:)(), v10, v11, (v12 & 1) == 0))
    {
      [v2 addChildViewController:v8];
      v13 = [v2 view];
      if (!v13)
      {
LABEL_24:
        __break(1u);
        goto LABEL_25;
      }

      v14 = v13;
      v15 = [v8 view];
      if (!v15)
      {
LABEL_25:
        __break(1u);
        return;
      }

      v16 = v15;
      [v14 addSubview:v15];

      [v8 didMoveToParentViewController:v2];
    }

    v17 = [v8 view];

    if (v17)
    {
      [v17 setAlpha:0.0];

      v18 = objc_opt_self();
      v19 = swift_allocObject();
      *(v19 + 16) = v6;
      *(v19 + 24) = v8;
      v30 = sub_100207B8C;
      v31 = v19;
      v26 = _NSConcreteStackBlock;
      v27 = 1107296256;
      v28 = sub_100007A08;
      v29 = &unk_1008B93E0;
      v20 = _Block_copy(&v26);
      v21 = v8;
      v22 = v6;

      v23 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v30 = sub_100207B94;
      v31 = v23;
      v26 = _NSConcreteStackBlock;
      v27 = 1107296256;
      v28 = sub_100504C5C;
      v29 = &unk_1008B9408;
      v24 = _Block_copy(&v26);

      [v18 animateWithDuration:v20 animations:v24 completion:0.3];
      _Block_release(v24);
      _Block_release(v20);

      return;
    }

LABEL_23:
    __break(1u);
    goto LABEL_24;
  }
}

void sub_100205DAC(void *a1, void *a2)
{
  v3 = [a1 view];
  if (!v3)
  {
    __break(1u);
    goto LABEL_7;
  }

  v4 = v3;
  [v3 setAlpha:0.0];

  v5 = [a2 view];
  if (!v5)
  {
LABEL_7:
    __break(1u);
    return;
  }

  v6 = v5;
  [v5 setAlpha:1.0];
}

void sub_100205E50(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_100205354();
  }
}

id sub_100205F34(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for TopChartsDiffablePageViewController();
  return objc_msgSendSuper2(&v3, "dealloc");
}

double sub_1002060E0(double a1, double a2)
{
  v3 = v2;
  v5 = type metadata accessor for PageGrid.Direction();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v18 - v10;
  v12 = type metadata accessor for PageGrid();
  v13 = *(v12 - 8);
  v14 = __chkstk_darwin(v12);
  v16 = &v18 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 104))(v11, enum case for PageGrid.Direction.vertical(_:), v5, v14);
  (*(v6 + 16))(v8, v11, v5);
  sub_10069F96C(0.0);
  PageGrid.init(name:direction:containerSize:readableContentInsets:safeAreaInsets:requiresAdditionalSafeAreaMargins:breakpoints:)();
  (*(v6 + 8))(v11, v5);
  PageGrid.horizontalMargins.getter();
  (*(v13 + 8))(v16, v12);
  CGSize.subtracting(insets:)();
  [*&v3[qword_100979A68] sizeThatFits:?];
  [v3 layoutMargins];
  CGSize.adding(outsets:)();
  return a1;
}

double sub_1002063AC(void *a1, double a2, double a3)
{
  v5 = a1;
  v6 = sub_1002060E0(a2, a3);

  return v6;
}

void sub_100206400()
{
  v1 = v0;
  v2 = *v0;
  v3 = swift_isaMask;
  v4 = type metadata accessor for PageGrid.Direction();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v26 - v9;
  v11 = type metadata accessor for PageGrid();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for PaletteContentView(0, *((v3 & v2) + 0x50), v15, v16);
  v26.receiver = v1;
  v26.super_class = v17;
  objc_msgSendSuper2(&v26, "layoutSubviews");
  [v1 bounds];
  (*(v5 + 104))(v10, enum case for PageGrid.Direction.vertical(_:), v4);
  (*(v5 + 16))(v7, v10, v4);
  sub_10069F96C(0.0);
  PageGrid.init(name:direction:containerSize:readableContentInsets:safeAreaInsets:requiresAdditionalSafeAreaMargins:breakpoints:)();
  (*(v5 + 8))(v10, v4);
  PageGrid.horizontalMargins.getter();
  v19 = v18;
  (*(v12 + 8))(v14, v11);
  [v1 bounds];
  CGSize.subtracting(insets:)();
  v21 = v20;
  [*&v1[qword_100979A68] sizeThatFits:?];
  v23 = v22;
  v24 = *&v1[qword_100979A68];
  [v1 layoutMargins];
  [v24 setFrame:{v19, v25, v21, v23}];
}

void sub_100206754(void *a1)
{
  v1 = a1;
  sub_100206400();
}

id sub_1002067C4(__n128 a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = type metadata accessor for PaletteContentView(0, *((swift_isaMask & *v5) + 0x50), a4, a5);
  v8.receiver = v5;
  v8.super_class = v6;
  return objc_msgSendSuper2(&v8, "dealloc");
}

unint64_t sub_10020685C()
{
  result = qword_100979AF0;
  if (!qword_100979AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100979AF0);
  }

  return result;
}

void sub_1002068B8()
{
  *(v0 + OBJC_IVAR____TtC8AppStore35TopChartsDiffablePageViewController_isPresenterLoaded) = 0;
  swift_unknownObjectWeakInit();
  v1 = OBJC_IVAR____TtC8AppStore35TopChartsDiffablePageViewController_paletteContents;
  v2 = [objc_allocWithZone(UISegmentedControl) init];
  v3 = sub_10002849C(&qword_100979AF8, &unk_1007C0970);
  v4 = objc_allocWithZone(v3);
  *&v4[qword_100979A68] = v2;
  v12.receiver = v4;
  v12.super_class = v3;
  v5 = v2;
  v6 = objc_msgSendSuper2(&v12, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  [v6 setLayoutMargins:{8.0, 0.0, 8.0, 0.0}];
  [v6 setPreservesSuperviewLayoutMargins:0];
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v10 = v5;
  [v10 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  [v6 addSubview:v10];

  *(v0 + v1) = v6;
  v11 = v0 + OBJC_IVAR____TtC8AppStore35TopChartsDiffablePageViewController_selectedSegmentIndex;
  *v11 = 0;
  *(v11 + 8) = 1;
  *(v0 + OBJC_IVAR____TtC8AppStore35TopChartsDiffablePageViewController_segmentViewControllers) = _swiftEmptyArrayStorage;
  *(v0 + OBJC_IVAR____TtC8AppStore35TopChartsDiffablePageViewController_categoriesBarButton) = 0;
  *(v0 + OBJC_IVAR____TtC8AppStore35TopChartsDiffablePageViewController_overlayViewController) = 0;
  *(v0 + OBJC_IVAR____TtC8AppStore35TopChartsDiffablePageViewController_selectCategoryViewController) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void sub_100206AA8()
{
  v1 = v0;
  TopChartsDiffablePagePresenter.title.getter();
  if (v2)
  {
    v3 = String._bridgeToObjectiveC()();
  }

  else
  {
    v3 = 0;
  }

  [v0 setTitle:v3];

  v4 = TopChartsDiffablePagePresenter.initialSegmentIndex.getter();
  v5 = &v1[OBJC_IVAR____TtC8AppStore35TopChartsDiffablePageViewController_selectedSegmentIndex];
  v6 = *&v1[OBJC_IVAR____TtC8AppStore35TopChartsDiffablePageViewController_selectedSegmentIndex];
  v7 = v1[OBJC_IVAR____TtC8AppStore35TopChartsDiffablePageViewController_selectedSegmentIndex + 8];
  *v5 = v4;
  v5[8] = 0;
  [*(*&v1[OBJC_IVAR____TtC8AppStore35TopChartsDiffablePageViewController_paletteContents] + qword_100979A68) setSelectedSegmentIndex:v4];
  if (v7)
  {

    sub_100205354();
  }

  else
  {

    sub_1002059FC(v4, v6);
  }
}

void sub_100206BA0(uint64_t a1, __n128 a2)
{
  v3 = v2;
  v5 = type metadata accessor for MetricsFieldsContext();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for MetricsData();
  v50 = *(v9 - 8);
  v51 = v9;
  __chkstk_darwin(v9);
  v11 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for MetricsPipeline();
  v48 = *(v12 - 8);
  v49 = v12;
  __chkstk_darwin(v12);
  v14 = &v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_10002849C(&qword_100982460, &unk_1007B5C90);
  __chkstk_darwin(v15 - 8);
  v17 = &v44 - v16;
  v18 = TopChartsDiffablePagePresenter.segmentPresenters.getter();
  if (v18 >> 62)
  {
    v47 = v6;
    v26 = _CocoaArrayWrapper.endIndex.getter();
    v6 = v47;

    if (v26)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v19 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (v19)
    {
LABEL_3:
      v20 = a1;
      if (qword_10096D118 != -1)
      {
        swift_once();
      }

      v21 = type metadata accessor for OSLogger();
      v51 = sub_1000056A8(v21, qword_1009CE200);
      sub_10002849C(&unk_100972A10, &qword_1007B1EF0);
      type metadata accessor for LogMessage();
      *(swift_allocObject() + 16) = xmmword_1007B1E00;
      v55 = type metadata accessor for TopChartsDiffablePageViewController();
      v54[0] = v3;
      v22 = v3;
      static LogMessage.safe(_:)();
      sub_10002B894(v54, &unk_1009711D0, &unk_1007B1A10);
      LogMessage.init(stringLiteral:)();
      swift_getErrorValue();
      v23 = v52;
      v24 = v53;
      v55 = v53;
      v25 = sub_1000056E0(v54);
      (*(*(v24 - 8) + 16))(v25, v23, v24);
      static LogMessage.sensitive(_:)();
      sub_10002B894(v54, &unk_1009711D0, &unk_1007B1A10);
      Logger.error(_:)();

LABEL_12:
      sub_10021CA80(v20);
      return;
    }
  }

  v47 = v6;
  v45 = v5;
  type metadata accessor for JUContentUnavailableViewController();
  sub_100207C10(&qword_100979B08, &type metadata accessor for TopChartsDiffablePagePresenter, &protocol conformance descriptor for TimedMetricsPagePresenter<A>);
  swift_errorRetain();

  v46 = a1;
  v27 = JUContentUnavailableViewController.init(error:from:includeMetrics:retry:)();
  v28 = OBJC_IVAR____TtC8AppStore35TopChartsDiffablePageViewController_overlayViewController;
  v29 = *&v3[OBJC_IVAR____TtC8AppStore35TopChartsDiffablePageViewController_overlayViewController];
  static ViewControllerContainment.remove(_:)();

  v30 = *&v3[v28];
  *&v3[v28] = v27;
  v31 = v27;

  v32 = [v3 view];
  if (v32)
  {
    v33 = v32;
    [v32 bounds];
    v35 = v34;
    v37 = v36;
    v39 = v38;
    v41 = v40;

    v54[0] = v35;
    v54[1] = v37;
    v54[2] = v39;
    v55 = v41;
    v56 = 0;
    static ViewControllerContainment.add(_:to:frame:)();

    TopChartsDiffablePagePresenter.pageUrl.getter();
    v42 = type metadata accessor for URL();
    v43 = *(v42 - 8);
    if ((*(v43 + 48))(v17, 1, v42) == 1)
    {
      sub_10002B894(v17, &qword_100982460, &unk_1007B5C90);
    }

    else
    {
      URL.absoluteString.getter();
      (*(v43 + 8))(v17, v42);
    }

    type metadata accessor for PageMetricsEvent();
    swift_allocObject();
    v20 = v46;
    swift_errorRetain();
    PageMetricsEvent.init(error:pageUrl:)();
    dispatch thunk of TimedMetricsPagePresenter.metricsPipeline.getter();
    dispatch thunk of MetricsEvent.metricsData.getter();
    static MetricsFieldsContext.emptyContext.getter();
    MetricsPipeline.process(_:using:)();

    (*(v47 + 8))(v8, v45);
    (*(v50 + 8))(v11, v51);
    (*(v48 + 8))(v14, v49);
    goto LABEL_12;
  }

  __break(1u);
}

void *sub_10020727C(void *a1, uint64_t a2, char *a3)
{
  ObjectType = swift_getObjectType();
  v7 = sub_10002849C(&qword_100979B10, &qword_1007C0980);
  __chkstk_darwin(v7 - 8);
  v53 = v45 - v8;
  v9 = sub_10002849C(&qword_100979B18, &qword_1007C0988);
  __chkstk_darwin(v9 - 8);
  v11 = v45 - v10;
  v48 = sub_10002849C(&qword_100979B20, &qword_1007C0990);
  __chkstk_darwin(v48);
  v13 = v45 - v12;
  v14 = type metadata accessor for IndexPath();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v52 = v45 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v18 = __chkstk_darwin(v17).n128_u64[0];
  v20 = v45 - v19;
  v21 = &a3[OBJC_IVAR____TtC8AppStore28SelectCategoryViewController_selectionHandler];
  *v21 = 0;
  *(v21 + 1) = 0;
  v57.receiver = a3;
  v57.super_class = ObjectType;
  v22 = objc_msgSendSuper2(&v57, "initWithNibName:bundle:", 0, 0, v18);
  v23 = _swiftEmptyArrayStorage;
  v56 = _swiftEmptyArrayStorage;
  v47 = v22;
  v51 = v20;
  IndexPath.init()();
  v24 = a1[5];
  v54 = a1;
  sub_10002A400(a1 + 2, v24);
  dispatch thunk of TopChartsCategoriesPresenter.selectedCategoryIndexPath.getter();
  v25 = v53;
  sub_100207BA0(v11, v53);
  v49 = *(v15 + 16);
  v50 = v15 + 16;
  v49(v13, v25, v14);
  v26 = *(sub_10002849C(&qword_100979B28, &qword_1007C0998) + 36);
  sub_100207C10(&qword_100979B30, &type metadata accessor for IndexPath, &protocol conformance descriptor for IndexPath);
  dispatch thunk of Collection.endIndex.getter();
  v28 = *(v15 + 8);
  v27 = v15 + 8;
  v46 = v28;
  v28(v25, v14);
  dispatch thunk of Collection.startIndex.getter();
  if (*&v13[v26] == v55[0])
  {
    v36 = 0;
    goto LABEL_10;
  }

  v45[1] = v27;
  v53 = sub_100207C10(&qword_100979B38, &type metadata accessor for IndexPath, &protocol conformance descriptor for IndexPath);
  v29 = 0;
  while (1)
  {
    dispatch thunk of BidirectionalCollection.formIndex(before:)();
    v33 = dispatch thunk of Collection.subscript.read();
    v35 = *v34;
    v33(v55, 0);
    v36 = v29 + 1;
    if (__OFADD__(v29, 1))
    {
      break;
    }

    if (v29)
    {
      v37 = v35;
      v38 = v51;
      IndexPath.append(_:)(v37);
      v39 = v52;
      v49(v52, v38, v14);
      v40 = objc_allocWithZone(type metadata accessor for CategoryListViewController(0));
      v41 = v54;

      sub_1006020C4(v41, a2, v39, v40);

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v56 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v56 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
LABEL_8:
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }
    }

    else
    {
      v30 = v54;

      v31 = v52;
      IndexPath.init()();
      v32 = objc_allocWithZone(type metadata accessor for CategoryListViewController(0));
      sub_1006020C4(v30, a2, v31, v32);

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v56 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v56 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        goto LABEL_8;
      }
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v23 = v56;
    dispatch thunk of Collection.startIndex.getter();
    ++v29;
    if (*&v13[v26] == v55[0])
    {
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_10:
  *&v13[*(v48 + 36)] = v36;
  sub_10002B894(v13, &qword_100979B20, &qword_1007C0990);

  v42 = v47;
  sub_1002A5BB8(v23);

  sub_100005744(0, &qword_1009711C0, UIViewController_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v42 setViewControllers:isa];

  v46(v51, v14);
  return v42;
}

void sub_100207884()
{
  v1 = v0;
  v2 = type metadata accessor for IndexPath();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v1 + OBJC_IVAR____TtC8AppStore35TopChartsDiffablePageViewController_presenter);
  IndexPath.init()();
  v25 = type metadata accessor for TopChartsDiffablePagePresenter();
  v26 = &protocol witness table for TopChartsDiffablePagePresenter;
  *&v24 = v6;
  v7 = *(v3 + 8);

  v7(v5, v2);
  type metadata accessor for TopChartsCategoriesDataSource();
  v8 = swift_allocObject();
  sub_100005A38(&v24, (v8 + 2));
  type metadata accessor for ArtworkLoader();
  swift_allocObject();

  v9 = ArtworkLoader.init(parent:)();
  v10 = objc_allocWithZone(type metadata accessor for SelectCategoryViewController());
  v11 = sub_10020727C(v8, v9, v10);

  v12 = v11;
  v13._object = 0x8000000100807D50;
  v13._countAndFlagsBits = 0xD000000000000015;
  v14._countAndFlagsBits = 0;
  v14._object = 0xE000000000000000;
  localizedString(_:comment:)(v13, v14);
  v15 = String._bridgeToObjectiveC()();

  [v12 setTitle:v15];

  v16 = (v12 + OBJC_IVAR____TtC8AppStore28SelectCategoryViewController_selectionHandler);
  v17 = *(v12 + OBJC_IVAR____TtC8AppStore28SelectCategoryViewController_selectionHandler);
  v18 = *(v12 + OBJC_IVAR____TtC8AppStore28SelectCategoryViewController_selectionHandler + 8);
  *v16 = j___s11AppStoreKit30TopChartsDiffablePagePresenterC6update12toCategoryAty10Foundation9IndexPathV_tF;
  v16[1] = v6;
  swift_retain_n();
  sub_10001F63C(v17, v18);
  sub_100600D20();

  v19 = *(v1 + OBJC_IVAR____TtC8AppStore35TopChartsDiffablePageViewController_categoriesBarButton);
  v20 = *(v1 + OBJC_IVAR____TtC8AppStore35TopChartsDiffablePageViewController_objectGraph);
  v21 = v19;
  sub_100602274(v19, v20);

  v22 = *(v1 + OBJC_IVAR____TtC8AppStore35TopChartsDiffablePageViewController_selectCategoryViewController);
  *(v1 + OBJC_IVAR____TtC8AppStore35TopChartsDiffablePageViewController_selectCategoryViewController) = v12;
}

uint64_t sub_100207BA0(uint64_t a1, uint64_t a2)
{
  v4 = sub_10002849C(&qword_100979B10, &qword_1007C0980);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100207C10(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100207C6C(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_10002D1A8(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100207D74(uint64_t a1, char a2, char a3)
{
  v4 = v3;
  [*&v3[qword_100983CD8] setHidden:(EditorsChoice.showsBadge.getter() & 1) == 0];
  v7 = *&v3[qword_100983CE0];
  EditorsChoice.notes.getter();
  if (v8)
  {
    v9 = String._bridgeToObjectiveC()();
  }

  else
  {
    v9 = 0;
  }

  [v7 setText:v9];

  sub_100028BB8();
  if (a3)
  {
    v10.super.isa = UIColor.init(light:lightHighContrast:dark:darkHighContrast:)([objc_allocWithZone(UIColor) initWithRed:0.388235294 green:0.388235294 blue:0.4 alpha:1.0], objc_msgSend(objc_allocWithZone(UIColor), "initWithRed:green:blue:alpha:", 0.282352941, 0.282352941, 0.290196078, 1.0), objc_msgSend(objc_allocWithZone(UIColor), "initWithRed:green:blue:alpha:", 0.682352941, 0.682352941, 0.698039216, 1.0), objc_msgSend(objc_allocWithZone(UIColor), "initWithRed:green:blue:alpha:", 0.780392157, 0.780392157, 0.8, 1.0)).super.isa;
  }

  else
  {
    v10.super.isa = static UIColor.secondaryText.getter();
  }

  isa = v10.super.isa;
  [v7 setTextColor:v10.super.isa];

  v12 = v4[qword_100983CF0];
  v4[qword_100983CF0] = a2 & 1;
  if (v12 != (a2 & 1))
  {
    if (a2)
    {
      v13 = 0;
    }

    else
    {
      v13 = 6;
    }

    [v7 setNumberOfLines:v13];
    [v4 setNeedsLayout];
  }

  return dispatch thunk of CustomLayoutView.invalidateMeasurements()();
}

uint64_t sub_100207F90@<X0>(uint64_t a1@<X8>)
{
  v18 = a1;
  v1 = type metadata accessor for FontSource();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26[18] = &type metadata for Double;
  v26[19] = &protocol witness table for Double;
  v26[14] = &protocol witness table for Double;
  v26[15] = 0x4046000000000000;
  v26[13] = &type metadata for Double;
  v26[10] = 0x4030000000000000;
  v26[8] = &type metadata for Double;
  v26[9] = &protocol witness table for Double;
  v26[5] = 0x4020000000000000;
  if (qword_10096DD40 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for FontUseCase();
  v16 = sub_1000056A8(v5, qword_1009D0758);
  v6 = *(v5 - 8);
  v15 = *(v6 + 16);
  v17 = v6 + 16;
  v15(v4, v16, v5);
  v14 = enum case for FontSource.useCase(_:);
  v13 = v2[13];
  v13(v4);
  v7 = type metadata accessor for StaticDimension();
  v26[3] = v7;
  v26[4] = &protocol witness table for StaticDimension;
  sub_1000056E0(v26);
  v24 = v1;
  v25 = &protocol witness table for FontSource;
  v8 = sub_1000056E0(v23);
  v9 = v2[2];
  v9(v8, v4, v1);
  StaticDimension.init(_:scaledLike:)();
  v10 = v2[1];
  v10(v4, v1);
  v25 = &protocol witness table for Double;
  v24 = &type metadata for Double;
  v23[0] = 0;
  v15(v4, v16, v5);
  (v13)(v4, v14, v1);
  v22[3] = v7;
  v22[4] = &protocol witness table for StaticDimension;
  sub_1000056E0(v22);
  v20 = v1;
  v21 = &protocol witness table for FontSource;
  v11 = sub_1000056E0(v19);
  v9(v11, v4, v1);
  StaticDimension.init(_:scaledLike:)();
  v10(v4, v1);
  v21 = &protocol witness table for Double;
  v20 = &type metadata for Double;
  v19[0] = 0x4020000000000000;
  return ArcadeLockupLayout.Metrics.init(minimumHeight:offerButtonMargin:wordmarkMargin:wordmarkTopSpace:wordmarkSpace:subtitleLeadingSpace:bottomSpace:numberOfLinesForSubtitle:shouldHorizontallyCenterSubtitleLayout:expandToFillWidth:subtitleIsHorizontallyAligned:)();
}

char *sub_1002082D8()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = type metadata accessor for _Glass._GlassVariant();
  __chkstk_darwin(v3 - 8);
  v4 = sub_10002849C(&qword_100979BB8, qword_1007C0A20);
  __chkstk_darwin(v4 - 8);
  v6 = &v30[-1] - v5;
  v7 = type metadata accessor for ArcadeLockupLayout.Metrics();
  __chkstk_darwin(v7 - 8);
  v9 = &v30[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for FontUseCase();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v30[-1] - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10096DD38 != -1)
  {
    swift_once();
  }

  v14 = sub_1000056A8(v10, qword_1009D0740);
  (*(v11 + 16))(v13, v14, v10);
  v15 = [objc_opt_self() currentTraitCollection];
  sub_100207F90(v9);

  v16 = objc_allocWithZone(type metadata accessor for ArcadeLockupView(0));
  *&v1[OBJC_IVAR____TtC8AppStore24ArcadeFloatingBannerView_lockupView] = sub_1001C6E04(v13, v9, 0, 0.0, 0.0, 0.0, 0.0);
  v31.receiver = v1;
  v31.super_class = ObjectType;
  v17 = objc_msgSendSuper2(&v31, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  [v17 setMaximumContentSizeCategory:UIContentSizeCategoryExtraExtraExtraLarge];
  v18 = v17;
  NSDirectionalEdgeInsets.insetsWithLayoutDirection(in:)();
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v26 = v25;

  [v18 setLayoutMargins:{v20, v22, v24, v26}];
  [v18 setEdgesInsettingLayoutMarginsFromSafeArea:0];
  static _UICornerMaskingConfiguration.capsule.getter();
  v27 = type metadata accessor for _UICornerMaskingConfiguration();
  (*(*(v27 - 8) + 56))(v6, 0, 1, v27);
  UIView.cornerMaskingConfiguration.setter();
  static _Glass._GlassVariant.regular.getter();
  v30[3] = type metadata accessor for _Glass();
  v30[4] = &protocol witness table for _Glass;
  sub_1000056E0(v30);
  _Glass.init(_:smoothness:)();
  UIView._background.setter();

  [v18 addSubview:*&v18[OBJC_IVAR____TtC8AppStore24ArcadeFloatingBannerView_lockupView]];
  return v18;
}

void sub_1002088F8(uint64_t a1, uint64_t (*a2)(void), void *a3)
{
  v5 = objc_opt_self();
  sub_100028BB8();
  v6 = a2();
  v7 = [v5 _effectWithTintColor:v6];

  *a3 = v7;
}

void sub_10020898C(void *a1, uint64_t a2, const char **a3)
{
  v6.receiver = a1;
  v6.super_class = type metadata accessor for PaletteBackgroundView();
  v4 = *a3;
  v5 = v6.receiver;
  objc_msgSendSuper2(&v6, v4);
  sub_1002089E0();
}

id sub_1002089E0()
{
  v1 = *&v0[OBJC_IVAR____TtC8AppStore21PaletteBackgroundView_blurEffectOverride];
  if (!v1)
  {
    v2 = [v0 traitCollection];
    v3 = [v2 userInterfaceStyle];

    if (v3 == 2)
    {
      if (qword_10096D3F0 != -1)
      {
        swift_once();
      }

      v4 = &qword_1009CE8B8;
    }

    else
    {
      if (qword_10096D3E8 != -1)
      {
        swift_once();
      }

      v4 = &qword_1009CE8B0;
    }

    v1 = *v4;
  }

  return [v0 setEffect:v1];
}

id sub_100208BB8(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for PaletteBackgroundView();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_100208C20()
{
  v0 = type metadata accessor for FontSource();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v10[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for StaticDimension();
  sub_100005644(v4, qword_100979BF0);
  sub_1000056A8(v4, qword_100979BF0);
  if (qword_10096E280 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for FontUseCase();
  v6 = sub_1000056A8(v5, qword_1009D1700);
  (*(*(v5 - 8) + 16))(v3, v6, v5);
  (*(v1 + 104))(v3, enum case for FontSource.useCase(_:), v0);
  v10[3] = v0;
  v10[4] = &protocol witness table for FontSource;
  v7 = sub_1000056E0(v10);
  (*(v1 + 16))(v7, v3, v0);
  StaticDimension.init(_:scaledLike:)();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_100208DF4()
{
  v0 = type metadata accessor for FontSource();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v11[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for StaticDimension();
  sub_100005644(v4, qword_100979C08);
  sub_1000056A8(v4, qword_100979C08);
  *v3 = UIFontTextStyleCaption2;
  *(v3 + 2) = 0;
  v5 = enum case for FontUseCase.preferredFont(_:);
  v6 = type metadata accessor for FontUseCase();
  (*(*(v6 - 8) + 104))(v3, v5, v6);
  (*(v1 + 104))(v3, enum case for FontSource.useCase(_:), v0);
  v11[3] = v0;
  v11[4] = &protocol witness table for FontSource;
  v7 = sub_1000056E0(v11);
  (*(v1 + 16))(v7, v3, v0);
  v8 = UIFontTextStyleCaption2;
  StaticDimension.init(_:scaledLike:)();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_100208FB0()
{
  v0._object = 0x8000000100807EE0;
  v0._countAndFlagsBits = 0xD000000000000014;
  v1._countAndFlagsBits = 0;
  v1._object = 0xE000000000000000;
  v3 = localizedString(_:comment:)(v0, v1);
  result = v3._countAndFlagsBits;
  xmmword_100979C20 = v3;
  return result;
}

void sub_100208FF4(unint64_t a1, uint64_t a2)
{
  v3 = v2;
  v68 = a2;
  v5 = type metadata accessor for Artwork.Style();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v56 = v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = v48 - v9;
  __chkstk_darwin(v11);
  v70 = v48 - v12;
  v13 = sub_10020C2B4(a1);
  if (v13 >> 62)
  {
    goto LABEL_71;
  }

  v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v66 = v13;
  v64 = v14;
  v57 = a1;
  if (v14)
  {
    if ((v13 & 0xC000000000000001) != 0)
    {
      specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (!*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        return;
      }
    }

    v15 = type metadata accessor for Feature();
    v72 = v15;
    v73 = sub_10020CED0(&qword_100972E50, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
    v16 = sub_1000056E0(v71);
    (*(*(v15 - 8) + 104))(v16, enum case for Feature.voyager_bundles_2025A(_:), v15);
    LOBYTE(v15) = isFeatureEnabled(_:)();
    sub_100007000(v71);
    if (v15)
    {
      v17 = v10;
      v18 = v5;
      Artwork.config(_:mode:prefersLayeredImage:)();
      v19 = OBJC_IVAR____TtC8AppStore10BundleView_backgroundArtworkView;
      v20 = *&v3[OBJC_IVAR____TtC8AppStore10BundleView_backgroundArtworkView];
      Artwork.style.getter();
      ArtworkView.style.setter();
      [v20 setContentMode:Artwork.contentMode.getter()];
      ArtworkLoaderConfig.size.getter();
      ArtworkView.imageSize.setter();
      if (!Artwork.backgroundColor.getter())
      {
        sub_100005744(0, &qword_100970180, UIColor_ptr);
        static UIColor.placeholderBackground.getter();
      }

      ArtworkView.backgroundColor.setter();

      [*&v3[v19] setContentMode:2];
      v21 = *&v3[v19];
      type metadata accessor for ArtworkView();
      sub_10020CED0(&qword_100970E80, &type metadata accessor for ArtworkView, &protocol conformance descriptor for ArtworkView);
      v22 = v21;
      ArtworkLoader.fetchArtwork<A>(using:closestMatch:into:)();

      a1 = v57;
      v5 = v18;
      v10 = v17;
    }

    else
    {
    }
  }

  v23 = sub_1002A6C38();
  if (a1 >> 62)
  {
    v13 = _CocoaArrayWrapper.endIndex.getter();
    if (v13)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v13 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v13)
    {
LABEL_14:
      v62 = a1 & 0xFFFFFFFFFFFFFF8;
      v63 = a1 & 0xC000000000000001;
      v24 = v23 & 0xFFFFFFFFFFFFFF8;
      if (v23 < 0)
      {
        v25 = v23;
      }

      else
      {
        v25 = v23 & 0xFFFFFFFFFFFFFF8;
      }

      v48[1] = v25;
      v60 = v23 & 0xC000000000000001;
      v51 = enum case for Artwork.Style.roundedRect(_:);
      v50 = (v6 + 104);
      v67 = (v6 + 8);
      v49 = enum case for Feature.voyager_bundles_2025A(_:);
      v26 = 4;
      v61 = v23 >> 62;
      v55 = v3;
      v58 = v23 & 0xFFFFFFFFFFFFFF8;
      v59 = v13;
      v54 = v5;
      v53 = v10;
      v52 = v23;
      do
      {
        v27 = v26 - 4;
        if (v63)
        {
          v13 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          v6 = v13;
          v28 = v26 - 3;
          if (__OFADD__(v27, 1))
          {
            goto LABEL_65;
          }
        }

        else
        {
          if (v27 >= *(v62 + 16))
          {
            goto LABEL_66;
          }

          v6 = *(a1 + 8 * v26);

          v28 = v26 - 3;
          if (__OFADD__(v27, 1))
          {
LABEL_65:
            __break(1u);
LABEL_66:
            __break(1u);
LABEL_67:
            __break(1u);
LABEL_68:
            __break(1u);
LABEL_69:
            __break(1u);
LABEL_70:
            __break(1u);
LABEL_71:
            v47 = v13;
            v14 = _CocoaArrayWrapper.endIndex.getter();
            v13 = v47;
            goto LABEL_3;
          }
        }

        if (v61)
        {
          v13 = _CocoaArrayWrapper.endIndex.getter();
          if (v27 == v13)
          {
LABEL_40:

            break;
          }
        }

        else
        {
          v13 = *(v24 + 16);
          if (v27 == v13)
          {
            goto LABEL_40;
          }
        }

        v69 = v28;
        if (v60)
        {
          v29 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v27 >= *(v24 + 16))
          {
            goto LABEL_69;
          }

          v29 = *(v23 + 8 * v26);
        }

        v30 = v29;
        if (Lockup.icon.getter())
        {
          v31 = v70;
          Artwork.style.getter();
          v32 = v56;
          (*v50)(v56, v51, v5);
          Artwork.Style.orIfUnspecified(_:)();
          v33 = *v67;
          (*v67)(v32, v5);
          v33(v31, v5);
          v34 = [v3 traitCollection];
          v35 = type metadata accessor for Feature();
          v72 = v35;
          v73 = sub_10020CED0(&qword_100972E50, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
          v36 = sub_1000056E0(v71);
          (*(*(v35 - 8) + 104))(v36, v49, v35);
          LOBYTE(v35) = isFeatureEnabled(_:)();
          sub_100007000(v71);
          v65 = v33;
          if (v35)
          {
            UITraitCollection.isSizeClassCompact.getter();
          }

          v10 = v53;
          Artwork.Style.iconHeight(fromWidth:)();
          v37 = OBJC_IVAR____TtC8AppStore15BundleChildView_icon;
          [*&v30[OBJC_IVAR____TtC8AppStore15BundleChildView_icon] contentMode];
          Artwork.config(_:mode:prefersLayeredImage:)();
          v38 = *&v30[v37];
          Artwork.style.getter();
          ArtworkView.style.setter();
          [v38 setContentMode:Artwork.contentMode.getter()];
          ArtworkLoaderConfig.size.getter();
          ArtworkView.imageSize.setter();
          if (!Artwork.backgroundColor.getter())
          {
            sub_100005744(0, &qword_100970180, UIColor_ptr);
            static UIColor.placeholderBackground.getter();
          }

          ArtworkView.backgroundColor.setter();

          type metadata accessor for ArtworkView();
          sub_10020CED0(&qword_100970E80, &type metadata accessor for ArtworkView, &protocol conformance descriptor for ArtworkView);
          ArtworkLoader.fetchArtwork<A>(using:closestMatch:into:)();

          v5 = v54;
          (v65)(v10, v54);
          v3 = v55;
          a1 = v57;
          v23 = v52;
        }

        else
        {
        }

        ++v26;
        v24 = v58;
      }

      while (v69 != v59);
    }
  }

  v13 = sub_1002A6C50();
  v69 = v13;
  if (!v64)
  {
    goto LABEL_64;
  }

  v67 = (v66 & 0xC000000000000001);
  v65 = v66 & 0xFFFFFFFFFFFFFF8;
  v5 = v69 & 0xFFFFFFFFFFFFFF8;
  if (v69 < 0)
  {
    v39 = v69;
  }

  else
  {
    v39 = v69 & 0xFFFFFFFFFFFFFF8;
  }

  v61 = v39;
  v62 = v69 & 0xC000000000000001;
  v40 = 4;
  v63 = v69 >> 62;
  while (1)
  {
    v43 = v40 - 4;
    if (v67)
    {
      v13 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      a1 = v40 - 3;
      if (__OFADD__(v43, 1))
      {
        goto LABEL_67;
      }
    }

    else
    {
      if (v43 >= *(v65 + 16))
      {
        goto LABEL_68;
      }

      a1 = v40 - 3;
      if (__OFADD__(v43, 1))
      {
        goto LABEL_67;
      }
    }

    if (v63)
    {
      break;
    }

    v13 = *(v5 + 16);
    if (v43 == v13)
    {
      goto LABEL_63;
    }

LABEL_52:
    if (v62)
    {
      v44 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v43 >= *(v5 + 16))
      {
        goto LABEL_70;
      }

      v44 = *(v69 + 8 * v40);
    }

    v3 = v44;
    v45 = OBJC_IVAR____TtC8AppStore22BorderedScreenshotView_artworkView;
    [*&v44[OBJC_IVAR____TtC8AppStore22BorderedScreenshotView_artworkView] contentMode];
    v10 = Artwork.config(_:mode:prefersLayeredImage:)();
    v46 = *&v3[v45];
    v6 = v70;
    Artwork.style.getter();
    ArtworkView.style.setter();
    [v46 setContentMode:Artwork.contentMode.getter()];
    ArtworkLoaderConfig.size.getter();
    ArtworkView.imageSize.setter();
    if (!Artwork.backgroundColor.getter())
    {
      sub_100005744(0, &qword_100970180, UIColor_ptr);
      static UIColor.placeholderBackground.getter();
    }

    ArtworkView.backgroundColor.setter();

    v41 = *&v3[v45];
    type metadata accessor for ArtworkView();
    sub_10020CED0(&qword_100970E80, &type metadata accessor for ArtworkView, &protocol conformance descriptor for ArtworkView);
    v42 = v41;
    ArtworkLoader.fetchArtwork<A>(using:closestMatch:into:)();

    ++v40;
    if (a1 == v64)
    {
      goto LABEL_64;
    }
  }

  v13 = _CocoaArrayWrapper.endIndex.getter();
  if (v43 != v13)
  {
    goto LABEL_52;
  }

LABEL_63:

LABEL_64:
}

void sub_100209ADC()
{
  v1 = [*(v0 + OBJC_IVAR____TtC8AppStore10BundleView_itemStack) subviews];
  sub_100005744(0, &qword_100972EB0, UIView_ptr);
  v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!(v2 >> 62))
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_15:

    goto LABEL_17;
  }

  v3 = _CocoaArrayWrapper.endIndex.getter();
  if (!v3)
  {
    goto LABEL_15;
  }

LABEL_3:
  if (v3 >= 1)
  {
    for (i = 0; i != v3; ++i)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v7 = *(v2 + 8 * i + 32);
      }

      v8 = v7;
      type metadata accessor for BundleChildView();
      v9 = swift_dynamicCastClass();
      if (v9)
      {
        v5 = *(v9 + OBJC_IVAR____TtC8AppStore15BundleChildView_icon);
        v13.value.super.isa = 0;
        v13.is_nil = 0;
        ArtworkView.setImage(image:animated:)(v13, v6);

        swift_beginAccess();
        sub_10002849C(&qword_100979C88, &qword_1007C0A78);
        ReusePool.recycle(_:)();
        swift_endAccess();
      }

      else
      {
        type metadata accessor for IconSilhouetteView(0);
        v10 = swift_dynamicCastClass();
        if (v10)
        {
          v11 = v10;
          [*(v10 + OBJC_IVAR____TtC8AppStore18IconSilhouetteView_titleLabel) setText:0];
          [v11 removeFromSuperview];
        }
      }
    }

LABEL_17:

    return;
  }

  __break(1u);
}

void sub_100209D0C()
{
  v1 = [*(v0 + OBJC_IVAR____TtC8AppStore10BundleView_screenshotStack) subviews];
  sub_100005744(0, &qword_100972EB0, UIView_ptr);
  v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!(v2 >> 62))
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_13:

    goto LABEL_15;
  }

  v3 = _CocoaArrayWrapper.endIndex.getter();
  if (!v3)
  {
    goto LABEL_13;
  }

LABEL_3:
  if (v3 >= 1)
  {
    for (i = 0; i != v3; ++i)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v5 = *(v2 + 8 * i + 32);
      }

      v6 = v5;
      type metadata accessor for BorderedScreenshotView(0);
      v7 = swift_dynamicCastClass();
      if (v7)
      {
        v8 = *(v7 + OBJC_IVAR____TtC8AppStore22BorderedScreenshotView_artworkView);
        v11.value.super.isa = 0;
        v11.is_nil = 0;
        ArtworkView.setImage(image:animated:)(v11, v9);

        swift_beginAccess();
        sub_10002849C(&qword_1009788A0, &unk_1007BDFA0);
        ReusePool.recycle(_:)();
        swift_endAccess();
      }
    }

LABEL_15:

    return;
  }

  __break(1u);
}

void sub_100209EF0(unint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for AspectRatio();
  v86 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v77 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100209ADC();
  sub_100209D0C();
  v7 = type metadata accessor for Feature();
  v94 = v7;
  v8 = sub_10020CED0(&qword_100972E50, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
  v95 = v8;
  v9 = sub_1000056E0(v93);
  v10 = enum case for Feature.voyager_bundles_2025A(_:);
  v11 = *(v7 - 8);
  v12 = *(v11 + 104);
  v13 = v11 + 104;
  v12(v9, enum case for Feature.voyager_bundles_2025A(_:), v7);
  v14 = isFeatureEnabled(_:)();
  sub_100007000(v93);
  v15 = a1;
  v16 = 6;
  if ((v14 & 1) == 0)
  {
    v16 = 4;
  }

  v82 = v13;
  if ((a1 & 0x8000000000000000) != 0 || (a1 & 0x4000000000000000) != 0)
  {
    goto LABEL_62;
  }

  v17 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (1)
  {
    v83 = v17;
    v84 = v16;
    v81 = v16 - 1;
    v18 = v16 >= v17 ? v17 : v16 - 1;
    v19 = [v2 traitCollection];
    LODWORD(v88) = sub_10020CDB0(a1);

    if ((v18 & 0x8000000000000000) == 0)
    {
      break;
    }

    __break(1u);
LABEL_62:
    a1 = v15;
    v76 = v16;
    v17 = _CocoaArrayWrapper.endIndex.getter();
    v16 = v76;
  }

  v77 = v12;
  v78 = v10;
  v79 = v8;
  v80 = v7;
  v85 = v6;
  v87 = v4;
  v89 = a1;
  v90 = v2;
  v20 = a1;
  if (v18)
  {
    v21 = a1 & 0xC000000000000001;
    if ((a1 & 0xC000000000000001) == 0 && v18 > *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_68;
    }

    v22 = 0;
    v23 = *&v2[OBJC_IVAR____TtC8AppStore10BundleView_itemStack];
    do
    {
      if (v21)
      {
        specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
      }

      swift_beginAccess();
      sub_10002849C(&qword_100979C88, &qword_1007C0A78);
      ReusePool.dequeue(or:)();
      swift_endAccess();
      v25 = v91;
      v26 = *&v91[OBJC_IVAR____TtC8AppStore15BundleChildView_titleLabel];
      Lockup.title.getter();
      if (v27)
      {
        v24 = String._bridgeToObjectiveC()();
      }

      else
      {
        v24 = 0;
      }

      ++v22;
      [v26 setText:{v24, v77}];

      v25[OBJC_IVAR____TtC8AppStore15BundleChildView_titleStyle] = v88;
      [v25 setNeedsLayout];
      [v23 addSubview:v25];

      v20 = v89;
      v2 = v90;
    }

    while (v18 != v22);
  }

  v28 = v87;
  v29 = v85;
  if (v84 < v83)
  {
    v30 = v83 - v81;
    v31 = [objc_allocWithZone(type metadata accessor for IconSilhouetteView(0)) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
    v32 = [v2 traitCollection];
    v33 = v80;
    v94 = v80;
    v95 = v79;
    v34 = sub_1000056E0(v93);
    v77(v34, v78, v33);
    v35 = isFeatureEnabled(_:)();
    sub_100007000(v93);
    if (v35)
    {
      v36 = UITraitCollection.isSizeClassCompact.getter();

      v37 = 62.0;
      if (v36)
      {
        v37 = 32.0;
      }
    }

    else
    {

      v37 = 62.0;
    }

    *&v31[OBJC_IVAR____TtC8AppStore18IconSilhouetteView_preferredIconWidth] = v37;
    v38 = *&v31[OBJC_IVAR____TtC8AppStore18IconSilhouetteView_titleLabel];
    v39._object = 0x8000000100807F00;
    v39._countAndFlagsBits = 0xD000000000000027;
    v40._countAndFlagsBits = 0;
    v40._object = 0xE000000000000000;
    localizedStringWithCount(_:count:comment:)(v39, v30, v40);
    v41 = String._bridgeToObjectiveC()();

    [v38 setText:v41];

    [*&v2[OBJC_IVAR____TtC8AppStore10BundleView_itemStack] addSubview:v31];
    v20 = v89;
  }

  v42 = sub_10020C2B4(v20);
  v43 = v42;
  v44 = v42 >> 62;
  if (v42 >> 62)
  {
    v45 = _CocoaArrayWrapper.endIndex.getter();
    v46 = &qword_1009CE000;
    if (!v45)
    {
      goto LABEL_34;
    }
  }

  else
  {
    v45 = *((v42 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v46 = &qword_1009CE000;
    if (!v45)
    {
      goto LABEL_34;
    }
  }

  if ((v43 & 0xC000000000000001) != 0)
  {
    goto LABEL_66;
  }

  if (!*((v43 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_68:
    __break(1u);
LABEL_69:
    __break(1u);
    goto LABEL_70;
  }

  while (1)
  {
    Artwork.size.getter();
    AspectRatio.init(_:_:)();

    v47 = v46[288];
    swift_beginAccess();
    (*(v86 + 40))(&v2[v47], v29, v28);
    swift_endAccess();
LABEL_34:
    v46 = v46[288];
    swift_beginAccess();
    v48 = v86;
    (*(v86 + 16))(v29, v46 + v2, v28);
    v49 = AspectRatio.isPortrait.getter();
    (*(v48 + 8))(v29, v28);
    v50 = 3;
    if (v49)
    {
      v50 = 5;
    }

    v51 = v45 >= v50 ? v50 : v45;
    v52 = v45 >= 0 ? v51 : v50;
    if (v44)
    {
      if (_CocoaArrayWrapper.endIndex.getter() < 0)
      {
        goto LABEL_69;
      }

      v53 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v53 = *((v43 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v53 >= v52)
    {
      break;
    }

    __break(1u);
LABEL_66:
    specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  if ((v43 & 0xC000000000000001) != 0 && v52)
  {
    type metadata accessor for Artwork();

    v54 = 0;
    do
    {
      v55 = v54 + 1;
      _ArrayBuffer._typeCheckSlowPath(_:)(v54);
      v54 = v55;
    }

    while (v52 != v55);
  }

  else
  {
  }

  if (v44)
  {
    v84 = _CocoaArrayWrapper.subscript.getter();
    v57 = v58;
    v56 = v59;
    v61 = v60;

    v52 = v61 >> 1;
  }

  else
  {
    v56 = 0;
    v84 = v43 & 0xFFFFFFFFFFFFFF8;
    v57 = (v43 & 0xFFFFFFFFFFFFFF8) + 32;
  }

  v62 = v52 - v56;
  v63 = v90;
  if (v52 == v56)
  {
    goto LABEL_60;
  }

  if (v52 > v56)
  {
    v63 = v90;
    v88 = *&v90[OBJC_IVAR____TtC8AppStore10BundleView_screenshotStack];
    v89 = OBJC_IVAR____TtC8AppStore10BundleView_screenshotReusePool;
    v64 = v85;
    v65 = (v86 + 40);
    v66 = v57 + 8 * v56;
    do
    {
      v66 += 8;
      swift_beginAccess();

      sub_10002849C(&qword_1009788A0, &unk_1007BDFA0);
      ReusePool.dequeue(or:)();
      swift_endAccess();
      v67 = v92;
      Artwork.size.getter();
      AspectRatio.init(_:_:)();
      v68 = &v67[OBJC_IVAR____TtC8AppStore22BorderedScreenshotView_displayConfiguration];
      swift_beginAccess();
      v69 = type metadata accessor for ScreenshotDisplayConfiguration(0);
      (*v65)(&v68[*(v69 + 40)], v64, v28);
      swift_endAccess();
      v70 = OBJC_IVAR____TtC8AppStore22BorderedScreenshotView_artworkView;
      v71 = *&v67[OBJC_IVAR____TtC8AppStore22BorderedScreenshotView_artworkView];
      dispatch thunk of RoundedCornerView.borderWidth.setter();

      v72 = *&v67[v70];
      v28 = v87;
      v73 = *(v68 + 6);
      v74 = v72;
      v75 = v73;
      dispatch thunk of RoundedCornerView.borderColor.setter();

      [v67 setNeedsLayout];
      [v88 addSubview:v67];

      --v62;
    }

    while (v62);
LABEL_60:
    swift_unknownObjectRelease();
    [v63 setNeedsLayout];
    return;
  }

LABEL_70:
  __break(1u);
}

id sub_10020A830@<X0>(uint64_t (*a1)(void)@<X0>, void *a2@<X8>)
{
  result = [objc_allocWithZone(a1(0)) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *a2 = result;
  return result;
}

char *sub_10020A884(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v52 = sub_10002849C(&qword_100978860, "@N\b");
  __chkstk_darwin(v52);
  v51[1] = v51 - v10;
  v51[0] = sub_10002849C(&qword_100979C70, &qword_1007C0A70);
  __chkstk_darwin(v51[0]);
  v11 = type metadata accessor for DirectionalTextAlignment();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = v51 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_10002849C(&qword_100972ED0, &unk_1007B17B0);
  __chkstk_darwin(v15 - 8);
  v17 = v51 - v16;
  v18 = OBJC_IVAR____TtC8AppStore10BundleView_iconStyle;
  v19 = enum case for Artwork.Style.roundedRect(_:);
  v20 = type metadata accessor for Artwork.Style();
  (*(*(v20 - 8) + 104))(&v5[v18], v19, v20);
  v21 = OBJC_IVAR____TtC8AppStore10BundleView_titleLabel;
  if (qword_10096E280 != -1)
  {
    swift_once();
  }

  v22 = type metadata accessor for FontUseCase();
  v23 = sub_1000056A8(v22, qword_1009D1700);
  v24 = *(v22 - 8);
  (*(v24 + 16))(v17, v23, v22);
  (*(v24 + 56))(v17, 0, 1, v22);
  (*(v12 + 104))(v14, enum case for DirectionalTextAlignment.none(_:), v11);
  v25 = objc_allocWithZone(type metadata accessor for DynamicTypeLabel());
  *&v5[v21] = DynamicTypeLabel.init(useCase:numberOfLines:lineBreakMode:isUserInteractionEnabled:directionalTextAlignment:contentSizeCategoryMapping:)();
  v26 = OBJC_IVAR____TtC8AppStore10BundleView_itemStack;
  v27 = [objc_allocWithZone(sub_10002849C(&qword_100979C90 &qword_1007C0A80))];
  *&v27[qword_100978370] = 0;
  *&v27[qword_100978378] = 1;
  *&v27[qword_100978380] = 0x4028000000000000;
  v27[qword_100978388] = 1;
  *&v5[v26] = v27;
  v28 = OBJC_IVAR____TtC8AppStore10BundleView_screenshotStack;
  v29 = [objc_allocWithZone(sub_10002849C(&qword_100979C98 qword_1007C0A88))];
  *&v29[qword_100978370] = 0;
  *&v29[qword_100978378] = 1;
  *&v29[qword_100978380] = 0x4028000000000000;
  v29[qword_100978388] = 1;
  *&v5[v28] = v29;
  type metadata accessor for BundleChildView();
  ViewRecycler.init()();
  sub_100097060(&qword_100979C78, &qword_100979C70, &qword_1007C0A70, &protocol conformance descriptor for ViewRecycler<A>);
  ReusePool.init(recycler:limit:)();
  type metadata accessor for BorderedScreenshotView(0);
  ViewRecycler.init()();
  sub_100097060(&qword_100978868, &qword_100978860, "@N\b", &protocol conformance descriptor for ViewRecycler<A>);
  ReusePool.init(recycler:limit:)();
  v30 = OBJC_IVAR____TtC8AppStore10BundleView_gradientBlurView;
  *&v5[v30] = [objc_allocWithZone(type metadata accessor for AppBundleGradientBackgroundView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v31 = OBJC_IVAR____TtC8AppStore10BundleView_backgroundArtworkView;
  type metadata accessor for ArtworkView();
  *&v5[v31] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  AspectRatio.init(_:_:)();
  v32 = type metadata accessor for BundleView(0);
  v56.receiver = v5;
  v56.super_class = v32;
  v33 = objc_msgSendSuper2(&v56, "initWithFrame:", a1, a2, a3, a4);
  sub_100005744(0, &qword_100970180, UIColor_ptr);
  v34 = v33;
  v35 = static UIColor.componentBackgroundStandout.getter();
  [v34 setBackgroundColor:v35];

  [v34 _setCornerRadius:4.0];
  [v34 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];
  v36 = type metadata accessor for Feature();
  v54 = v36;
  v37 = sub_10020CED0(&qword_100972E50, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
  v55 = v37;
  v38 = sub_1000056E0(v53);
  v39 = enum case for Feature.voyager_bundles_2025A(_:);
  v40 = *(*(v36 - 8) + 104);
  v40(v38, enum case for Feature.voyager_bundles_2025A(_:), v36);
  v41 = isFeatureEnabled(_:)();
  sub_100007000(v53);
  if (v41)
  {
    v42 = OBJC_IVAR____TtC8AppStore10BundleView_backgroundArtworkView;
    [*&v34[OBJC_IVAR____TtC8AppStore10BundleView_backgroundArtworkView] setAccessibilityIgnoresInvertColors:1];
    [*&v34[v42] setContentMode:2];
    [v34 addSubview:*&v34[v42]];
    [v34 addSubview:*&v34[OBJC_IVAR____TtC8AppStore10BundleView_gradientBlurView]];
  }

  v43 = OBJC_IVAR____TtC8AppStore10BundleView_titleLabel;
  v44 = qword_10096D408;
  v45 = *&v34[OBJC_IVAR____TtC8AppStore10BundleView_titleLabel];
  if (v44 != -1)
  {
    swift_once();
  }

  v46 = String._bridgeToObjectiveC()();
  [v45 setText:v46];

  [*&v34[v43] setTextAlignment:1];
  [v34 addSubview:*&v34[v43]];
  v47 = OBJC_IVAR____TtC8AppStore10BundleView_screenshotStack;
  [*&v34[OBJC_IVAR____TtC8AppStore10BundleView_screenshotStack] setClipsToBounds:1];
  v54 = v36;
  v55 = v37;
  v48 = sub_1000056E0(v53);
  v40(v48, v39, v36);
  v49 = isFeatureEnabled(_:)();
  sub_100007000(v53);
  if (v49)
  {
    [v34 addSubview:*&v34[v47]];
  }

  [v34 addSubview:*&v34[OBJC_IVAR____TtC8AppStore10BundleView_itemStack]];
  [v34 setClipsToBounds:1];

  return v34;
}

id sub_10020B0F0()
{
  v1 = v0;
  v46 = type metadata accessor for AspectRatio();
  v2 = *(v46 - 8);
  __chkstk_darwin(v46);
  v4 = &v46 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = type metadata accessor for FloatingPointRoundingRule();
  v5 = *(v48 - 8);
  __chkstk_darwin(v48);
  v7 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for BundleView(0);
  v49.receiver = v0;
  v49.super_class = v8;
  objc_msgSendSuper2(&v49, "layoutSubviews");
  v9 = *&v0[OBJC_IVAR____TtC8AppStore10BundleView_gradientBlurView];
  [v1 frame];
  [v9 setFrame:{0.0, 0.0}];

  v10 = *&v1[OBJC_IVAR____TtC8AppStore10BundleView_backgroundArtworkView];
  [v1 frame];
  ArtworkView.frame.setter();

  LayoutMarginsAware<>.layoutFrame.getter();
  v11 = CGRectGetWidth(v50) + -16.0;
  v12 = *&v1[OBJC_IVAR____TtC8AppStore10BundleView_titleLabel];
  LayoutMarginsAware<>.layoutFrame.getter();
  [v12 sizeThatFits:{v11, CGRectGetHeight(v51)}];
  v14 = v13;
  v15 = *&v1[OBJC_IVAR____TtC8AppStore10BundleView_itemStack];
  LayoutMarginsAware<>.layoutFrame.getter();
  v47 = v15;
  [v15 sizeThatFits:{v16, v17}];
  v19 = v18;
  v21 = v20;
  v22 = *&v1[OBJC_IVAR____TtC8AppStore10BundleView_screenshotStack];
  v23 = [v22 superview];
  if (v23)
  {

    LayoutMarginsAware<>.layoutFrame.getter();
    v24 = CGRectGetHeight(v52) - v14 - v21 + -40.0;
    if (qword_10096D400 != -1)
    {
      swift_once();
    }

    v25 = type metadata accessor for StaticDimension();
    sub_1000056A8(v25, qword_100979C08);
    v26 = [v1 traitCollection];
    static Dimensions.defaultRoundingRule.getter();
    StaticDimension.value(compatibleWith:rounded:)();
    v28 = v27;

    (*(v5 + 8))(v7, v48);
    v29 = v24 - v28;
    v30 = OBJC_IVAR____TtC8AppStore10BundleView_screenshotAspectRatio;
    swift_beginAccess();
    v31 = &v1[v30];
    v32 = v46;
    (*(v2 + 16))(v4, v31, v46);
    AspectRatio.width(fromHeight:)();
    v34 = v33;
    (*(v2 + 8))(v4, v32);
    v35 = v34 * -0.5;
    LayoutMarginsAware<>.layoutFrame.getter();
    v36 = v34 + CGRectGetWidth(v53);
    [v22 setFrame:{v35, 20.0, v36, v29}];
    v54.origin.y = 20.0;
    v54.origin.x = v35;
    v54.size.width = v36;
    v54.size.height = v29;
    v37 = CGRectGetMaxY(v54) + 20.0;
  }

  else
  {
    v37 = 20.0;
  }

  LayoutMarginsAware<>.layoutFrame.getter();
  [v12 setFrame:{CGRectGetMidX(v55) + v11 * -0.5, v37, v11, v14}];
  LayoutMarginsAware<>.layoutFrame.getter();
  MidX = CGRectGetMidX(v56);
  [v12 lastBaselineMaxY];
  v40 = v39;
  if (qword_10096D3F8 != -1)
  {
    swift_once();
  }

  v41 = type metadata accessor for StaticDimension();
  sub_1000056A8(v41, qword_100979BF0);
  v42 = [v1 traitCollection];
  static Dimensions.defaultRoundingRule.getter();
  StaticDimension.value(compatibleWith:rounded:)();
  v44 = v43;

  (*(v5 + 8))(v7, v48);
  return [v47 setFrame:{MidX + v19 * -0.5, v40 + v44, v19, v21}];
}

id sub_10020B86C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BundleView(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for BundleView(uint64_t a1)
{
  result = qword_100979C58;
  if (!qword_100979C58)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10020BA8C(uint64_t a1)
{
  type metadata accessor for Artwork.Style();
  if (v1 <= 0x3F)
  {
    sub_10020BC24(319, &qword_100979C68, &qword_100979C70, &qword_1007C0A70, &qword_100979C78);
    if (v2 <= 0x3F)
    {
      sub_10020BC24(319, &qword_100978858, &qword_100978860, "@N\b", &qword_100978868);
      if (v3 <= 0x3F)
      {
        type metadata accessor for AspectRatio();
        if (v4 <= 0x3F)
        {
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

void sub_10020BC24(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, unint64_t *a5)
{
  if (!*a2)
  {
    sub_10002D1A8(a3, a4);
    sub_100097060(a5, a3, a4, &protocol conformance descriptor for ViewRecycler<A>);
    v9 = type metadata accessor for ReusePool();
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

double sub_10020BCC0(uint64_t a1, unint64_t a2, void *a3, double a4, double a5)
{
  v50 = a1;
  v9 = type metadata accessor for FloatingPointRoundingRule();
  v51 = *(v9 - 8);
  v52 = v9;
  __chkstk_darwin(v9);
  v11 = &v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for FontUseCase();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v50 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10096D408 != -1)
  {
    swift_once();
  }

  if (qword_10096E280 != -1)
  {
    swift_once();
  }

  v16 = sub_1000056A8(v12, qword_1009D1700);
  (*(v13 + 16))(v15, v16, v12);
  v17 = [a3 traitCollection];
  UITraitCollection.prefersAccessibilityLayouts.getter();

  v18 = type metadata accessor for Feature();
  v53[3] = v18;
  v53[4] = sub_10020CED0(&qword_100972E50, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
  v19 = sub_1000056E0(v53);
  (*(*(v18 - 8) + 104))(v19, enum case for Feature.measurement_with_labelplaceholder(_:), v18);
  isFeatureEnabled(_:)();
  sub_100007000(v53);
  static LabelPlaceholderCompatibility.measurements(text:fontUseCase:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:fitting:in:shouldUseLabelPlaceholder:)();
  v21 = v20;
  v23 = v22;
  (*(v13 + 8))(v15, v12);
  type metadata accessor for Lockup();
  v24 = 0.0;
  if (Array.isNotEmpty.getter())
  {
    v25 = sub_10020C2B4(a2);
    type metadata accessor for Artwork();
    v26 = Array.isNotEmpty.getter();
    v28 = v51;
    v27 = v52;
    if (v26)
    {
      sub_10020CC0C(v25, a4, a5);
      v30 = v29;

      v24 = v30 + 40.0;
    }

    else
    {
    }
  }

  else
  {
    v28 = v51;
    v27 = v52;
  }

  v31 = [a3 traitCollection];
  v32 = sub_10020CDB0(a2);

  if (qword_10096D3F8 != -1)
  {
    swift_once();
  }

  v33 = type metadata accessor for StaticDimension();
  sub_1000056A8(v33, qword_100979BF0);
  v34 = [a3 traitCollection];
  static Dimensions.defaultRoundingRule.getter();
  StaticDimension.value(compatibleWith:rounded:)();
  v36 = v35;

  v37 = *(v28 + 8);
  v37(v11, v27);
  v38 = [a3 traitCollection];
  sub_10074FC40(v50, v32, v38);
  v40 = v39;

  if (qword_10096D400 != -1)
  {
    swift_once();
  }

  sub_1000056A8(v33, qword_100979C08);
  v41 = [a3 traitCollection];
  static Dimensions.defaultRoundingRule.getter();
  StaticDimension.value(compatibleWith:rounded:)();
  v43 = v42;

  v37(v11, v27);
  sub_100005744(0, &qword_1009730E0, UIFont_ptr);
  if (qword_10096E288 != -1)
  {
    swift_once();
  }

  v44 = v24 + v21 - v23 + v36 + v36 + v40 + v43;
  sub_1000056A8(v12, qword_1009D1718);
  v45 = [a3 traitCollection];
  v46 = static UIFont.preferredFont(forUseWith:compatibleWith:)();

  [v46 descender];
  v48 = v47;

  return v44 + v48;
}

uint64_t sub_10020C2B4(unint64_t a1)
{
  v1 = _swiftEmptyArrayStorage;
  v43 = sub_10067BCD4(a1);
  if (!v43)
  {
    return v1;
  }

  v2 = type metadata accessor for Feature();
  v45[3] = v2;
  v45[4] = sub_10020CED0(&qword_100972E50, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
  v3 = sub_1000056E0(v45);
  (*(*(v2 - 8) + 104))(v3, enum case for Feature.voyager_bundles_2025A(_:), v2);
  LOBYTE(v2) = isFeatureEnabled(_:)();
  sub_100007000(v45);
  if ((v2 & 1) == 0)
  {

    return v1;
  }

  if (v43 >> 62)
  {
    v5 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v5 = *((v43 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v42 = v43 & 0xC000000000000001;
  if (v5)
  {
    if (v42)
    {
      v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (!*((v43 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_27;
      }

      v6 = *(v43 + 32);
    }

    v7 = MixedMediaLockup.screenshots.getter();

    if (v7 >> 62)
    {
      if (_CocoaArrayWrapper.endIndex.getter())
      {
LABEL_11:
        if ((v7 & 0xC000000000000001) == 0)
        {
          if (!*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
LABEL_140:
            __break(1u);
LABEL_141:
            __break(1u);
            goto LABEL_142;
          }

          goto LABEL_14;
        }

LABEL_27:
        specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_14:

        v8 = Screenshots.artwork.getter();

        if (v8 >> 62)
        {
          result = _CocoaArrayWrapper.endIndex.getter();
          if (result)
          {
            goto LABEL_16;
          }
        }

        else
        {
          result = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (result)
          {
LABEL_16:
            if ((v8 & 0xC000000000000001) != 0)
            {
              goto LABEL_144;
            }

            if (*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {

              goto LABEL_19;
            }

            __break(1u);
LABEL_146:
            __break(1u);
            return result;
          }
        }
      }
    }

    else if (*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_11;
    }
  }

LABEL_30:
  v11 = 3;
LABEL_31:
  v40 = v11;
  v45[0] = _swiftEmptyArrayStorage;
  if (!v5)
  {
    v13 = _swiftEmptyArrayStorage;
    goto LABEL_63;
  }

  v12 = 0;
  v13 = _swiftEmptyArrayStorage;
  v14 = v43 & 0xFFFFFFFFFFFFFF8;
  do
  {
    v15 = v12;
    while (1)
    {
      if (v42)
      {
        specialized _ArrayBuffer._getElementSlowPath(_:)();
        v12 = v15 + 1;
        if (__OFADD__(v15, 1))
        {
          goto LABEL_124;
        }
      }

      else
      {
        if (v15 >= *(v14 + 16))
        {
          goto LABEL_125;
        }

        v12 = v15 + 1;
        if (__OFADD__(v15, 1))
        {
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
          goto LABEL_127;
        }
      }

      v16 = MixedMediaLockup.screenshots.getter();
      v17 = v16;
      if (v16 >> 62)
      {
        break;
      }

      if (*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_41;
      }

LABEL_34:

LABEL_35:
      ++v15;
      if (v12 == v5)
      {
        goto LABEL_63;
      }
    }

    if (!_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_34;
    }

LABEL_41:
    if ((v17 & 0xC000000000000001) != 0)
    {
      specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (!*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_126;
      }
    }

    v18 = Screenshots.artwork.getter();

    v19 = v18;
    if (!(v18 >> 62))
    {
      v20 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v14 = v43 & 0xFFFFFFFFFFFFFF8;
      if (v20)
      {
        goto LABEL_54;
      }

      goto LABEL_46;
    }

    v21 = _CocoaArrayWrapper.endIndex.getter();
    v19 = v18;
    v14 = v43 & 0xFFFFFFFFFFFFFF8;
    if (!v21)
    {
LABEL_46:

      goto LABEL_35;
    }

LABEL_54:
    if ((v19 & 0xC000000000000001) == 0)
    {
      if (*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {

        goto LABEL_57;
      }

      __break(1u);
LABEL_144:
      specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_19:

      v10 = dispatch thunk of Artwork.isPortrait.getter();

      if (v10)
      {
        v11 = 5;
        goto LABEL_31;
      }

      goto LABEL_30;
    }

    specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_57:

    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v45[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v45[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v13 = v45[0];
    v14 = v43 & 0xFFFFFFFFFFFFFF8;
  }

  while (v12 != v5);
LABEL_63:
  v45[0] = v13;
  if (v13 >> 62)
  {
LABEL_127:
    v22 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v22 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v22 >= v40)
  {
    goto LABEL_98;
  }

  v23 = 0;
  while (2)
  {
    if (!v5)
    {
      goto LABEL_93;
    }

    v24 = 0;
    v41 = v23;
    while (2)
    {
      v25 = v24;
      v26 = v43 & 0xFFFFFFFFFFFFFF8;
      while (2)
      {
        if (v42)
        {
          specialized _ArrayBuffer._getElementSlowPath(_:)();
          v24 = v25 + 1;
          if (__OFADD__(v25, 1))
          {
            goto LABEL_121;
          }
        }

        else
        {
          if (v25 >= *(v26 + 16))
          {
            goto LABEL_122;
          }

          v24 = v25 + 1;
          if (__OFADD__(v25, 1))
          {
LABEL_121:
            __break(1u);
LABEL_122:
            __break(1u);
LABEL_123:
            __break(1u);
            goto LABEL_124;
          }
        }

        v27 = MixedMediaLockup.screenshots.getter();
        v28 = v27;
        if (!(v27 >> 62))
        {
          if (*((v27 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_77;
          }

LABEL_70:

          goto LABEL_71;
        }

        if (!_CocoaArrayWrapper.endIndex.getter())
        {
          goto LABEL_70;
        }

LABEL_77:
        if ((v28 & 0xC000000000000001) != 0)
        {
          specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (!*((v28 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_123;
          }
        }

        v13 = Screenshots.artwork.getter();

        sub_10002849C(&qword_100982820, &qword_1007CA1E0);
        sub_100097060(&qword_100979C80, &qword_100982820, &qword_1007CA1E0, &protocol conformance descriptor for [A]);
        Collection.subscript.getter();

        v26 = v43 & 0xFFFFFFFFFFFFFF8;
        if (!v44)
        {
LABEL_71:
          ++v25;
          if (v24 == v5)
          {
            v23 = v41;
            goto LABEL_93;
          }

          continue;
        }

        break;
      }

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v23 = v41;
      if (v24 != v5)
      {
        continue;
      }

      break;
    }

LABEL_93:
    sub_100394550(_swiftEmptyArrayStorage, v4);
    v13 = v45[0];
    if (v45[0] >> 62)
    {
      v29 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v29 = *((v45[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v30 = (v29 >= v40) | v23;
    v23 = 1;
    if ((v30 & 1) == 0)
    {
      continue;
    }

    break;
  }

LABEL_98:

  v1 = (v13 >> 62);
  if (v13 >> 62)
  {
    if ((v13 & 0x8000000000000000) != 0)
    {
      v6 = v13;
    }

    else
    {
      v6 = v13 & 0xFFFFFFFFFFFFFF8;
    }

    v7 = _CocoaArrayWrapper.endIndex.getter();
    result = _CocoaArrayWrapper.endIndex.getter();
    if (result < 0)
    {
      goto LABEL_146;
    }

    if (v7 >= v40)
    {
      v39 = v40;
    }

    else
    {
      v39 = v7;
    }

    if (v7 >= 0)
    {
      v5 = v39;
    }

    else
    {
      v5 = v40;
    }

    if (_CocoaArrayWrapper.endIndex.getter() >= v5)
    {
      goto LABEL_102;
    }

    __break(1u);
    goto LABEL_140;
  }

  if (*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v40)
  {
    v5 = v40;
  }

  else
  {
    v5 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

LABEL_102:
  if ((v13 & 0xC000000000000001) != 0 && v5)
  {
    type metadata accessor for Artwork();

    v31 = 0;
    do
    {
      v32 = v31 + 1;
      _ArrayBuffer._typeCheckSlowPath(_:)(v31);
      v31 = v32;
    }

    while (v5 != v32);
  }

  else
  {
  }

  if (v1)
  {
    v7 = _CocoaArrayWrapper.subscript.getter();
    v1 = v33;
    v6 = v34;
    v5 = v35;

    if (v5)
    {
      goto LABEL_113;
    }

    goto LABEL_112;
  }

  v6 = 0;
  v7 = v13 & 0xFFFFFFFFFFFFFF8;
  v1 = ((v13 & 0xFFFFFFFFFFFFFF8) + 32);
  v5 = (2 * v5) | 1;
  if ((v5 & 1) == 0)
  {
LABEL_112:
    sub_1005E7A8C(v7, v1, v6, v5);
    v1 = v36;
    goto LABEL_119;
  }

LABEL_113:
  type metadata accessor for __ContiguousArrayStorageBase();
  swift_unknownObjectRetain_n();
  v37 = swift_dynamicCastClass();
  if (!v37)
  {
    swift_unknownObjectRelease();
    v37 = _swiftEmptyArrayStorage;
  }

  v38 = v37[2];

  if (__OFSUB__(v5 >> 1, v6))
  {
    goto LABEL_141;
  }

  if (v38 != (v5 >> 1) - v6)
  {
LABEL_142:
    swift_unknownObjectRelease_n();
    goto LABEL_112;
  }

  v1 = swift_dynamicCastClass();
  swift_unknownObjectRelease_n();
  if (!v1)
  {
    v1 = _swiftEmptyArrayStorage;
LABEL_119:
    swift_unknownObjectRelease();
  }

  return v1;
}

uint64_t sub_10020CC0C(unint64_t a1, double a2, double a3)
{
  v4 = type metadata accessor for AspectRatio();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    if (!result)
    {
      return result;
    }
  }

  else
  {
    result = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      return result;
    }
  }

  if ((a1 & 0xC000000000000001) != 0)
  {
    specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_6;
  }

  if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {

LABEL_6:
    dispatch thunk of Artwork.isPortrait.getter();
    Artwork.size.getter();
    AspectRatio.init(_:_:)();
    AspectRatio.maxSize(fitting:)();

    return (*(v5 + 8))(v7, v4);
  }

  __break(1u);
  return result;
}

uint64_t sub_10020CDB0(unint64_t a1)
{
  v2 = type metadata accessor for Feature();
  v8[3] = v2;
  v8[4] = sub_10020CED0(&qword_100972E50, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
  v3 = sub_1000056E0(v8);
  (*(*(v2 - 8) + 104))(v3, enum case for Feature.voyager_bundles_2025A(_:), v2);
  LOBYTE(v2) = isFeatureEnabled(_:)();
  sub_100007000(v8);
  if ((v2 & 1) == 0)
  {
    return 0;
  }

  if (a1 >> 62)
  {
    v4 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v5 = UITraitCollection.isSizeClassCompact.getter();
  if (v5)
  {
    v6 = 2;
  }

  else
  {
    v6 = 0;
  }

  if (v4 <= 3)
  {
    return v5 & 1;
  }

  else
  {
    return v6;
  }
}

uint64_t sub_10020CED0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_10020CF18()
{
  v1 = v0;
  v27 = sub_10002849C(&qword_100978860, "@N\b");
  __chkstk_darwin(v27);
  v26 = &v24 - v2;
  v25 = sub_10002849C(&qword_100979C70, &qword_1007C0A70);
  __chkstk_darwin(v25);
  v3 = type metadata accessor for DirectionalTextAlignment();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10002849C(&qword_100972ED0, &unk_1007B17B0);
  __chkstk_darwin(v7 - 8);
  v9 = &v24 - v8;
  v10 = OBJC_IVAR____TtC8AppStore10BundleView_iconStyle;
  v11 = enum case for Artwork.Style.roundedRect(_:);
  v12 = type metadata accessor for Artwork.Style();
  (*(*(v12 - 8) + 104))(v1 + v10, v11, v12);
  v13 = OBJC_IVAR____TtC8AppStore10BundleView_titleLabel;
  if (qword_10096E280 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for FontUseCase();
  v15 = sub_1000056A8(v14, qword_1009D1700);
  v16 = *(v14 - 8);
  (*(v16 + 16))(v9, v15, v14);
  (*(v16 + 56))(v9, 0, 1, v14);
  (*(v4 + 104))(v6, enum case for DirectionalTextAlignment.none(_:), v3);
  v17 = objc_allocWithZone(type metadata accessor for DynamicTypeLabel());
  *(v1 + v13) = DynamicTypeLabel.init(useCase:numberOfLines:lineBreakMode:isUserInteractionEnabled:directionalTextAlignment:contentSizeCategoryMapping:)();
  v18 = OBJC_IVAR____TtC8AppStore10BundleView_itemStack;
  v19 = [objc_allocWithZone(sub_10002849C(&qword_100979C90 &qword_1007C0A80))];
  *&v19[qword_100978370] = 0;
  *&v19[qword_100978378] = 1;
  *&v19[qword_100978380] = 0x4028000000000000;
  v19[qword_100978388] = 1;
  *(v1 + v18) = v19;
  v20 = OBJC_IVAR____TtC8AppStore10BundleView_screenshotStack;
  v21 = [objc_allocWithZone(sub_10002849C(&qword_100979C98 qword_1007C0A88))];
  *&v21[qword_100978370] = 0;
  *&v21[qword_100978378] = 1;
  *&v21[qword_100978380] = 0x4028000000000000;
  v21[qword_100978388] = 1;
  *(v1 + v20) = v21;
  type metadata accessor for BundleChildView();
  ViewRecycler.init()();
  sub_100097060(&qword_100979C78, &qword_100979C70, &qword_1007C0A70, &protocol conformance descriptor for ViewRecycler<A>);
  ReusePool.init(recycler:limit:)();
  type metadata accessor for BorderedScreenshotView(0);
  ViewRecycler.init()();
  sub_100097060(&qword_100978868, &qword_100978860, "@N\b", &protocol conformance descriptor for ViewRecycler<A>);
  ReusePool.init(recycler:limit:)();
  v22 = OBJC_IVAR____TtC8AppStore10BundleView_gradientBlurView;
  *(v1 + v22) = [objc_allocWithZone(type metadata accessor for AppBundleGradientBackgroundView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v23 = OBJC_IVAR____TtC8AppStore10BundleView_backgroundArtworkView;
  type metadata accessor for ArtworkView();
  *(v1 + v23) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  AspectRatio.init(_:_:)();
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_10020D474()
{
  v0 = type metadata accessor for FontSource();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v34 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for LargeLockupLayout.Metrics();
  sub_100005644(v4, qword_1009CE908);
  v37 = sub_1000056A8(v4, qword_1009CE908);
  if (qword_10096DD00 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for FontUseCase();
  v6 = sub_1000056A8(v5, qword_1009D0698);
  v7 = *(v5 - 8);
  v8 = *(v7 + 16);
  v9 = v7 + 16;
  v8(v3, v6, v5);
  v10 = enum case for FontSource.useCase(_:);
  v46 = v1[13];
  v46(v3, enum case for FontSource.useCase(_:), v0);
  v45 = type metadata accessor for StaticDimension();
  v64[3] = v45;
  v64[4] = &protocol witness table for StaticDimension;
  sub_1000056E0(v64);
  v62 = v0;
  v63 = &protocol witness table for FontSource;
  v11 = sub_1000056E0(v61);
  v12 = v1[2];
  v44 = v1 + 2;
  v41 = v12;
  v12(v11, v3, v0);
  StaticDimension.init(_:scaledLike:)();
  v13 = v1[1];
  v43 = v1 + 1;
  v47 = v13;
  v13(v3, v0);
  if (qword_10096DD08 != -1)
  {
    swift_once();
  }

  v36 = sub_1000056A8(v5, qword_1009D06B0);
  v8(v3, v36, v5);
  v46(v3, v10, v0);
  v62 = v45;
  v14 = v45;
  v63 = &protocol witness table for StaticDimension;
  sub_1000056E0(v61);
  v38 = v10;
  v59 = v0;
  v60 = &protocol witness table for FontSource;
  v15 = sub_1000056E0(v58);
  v39 = v1 + 13;
  v16 = v41;
  v41(v15, v3, v0);
  StaticDimension.init(_:scaledLike:)();
  v47(v3, v0);
  v17 = v36;
  v42 = v5;
  v40 = v8;
  v36 = v9;
  v8(v3, v17, v5);
  v18 = v38;
  v19 = v46;
  v46(v3, v38, v0);
  v59 = v14;
  v60 = &protocol witness table for StaticDimension;
  sub_1000056E0(v58);
  v56 = v0;
  v57 = &protocol witness table for FontSource;
  v20 = sub_1000056E0(v55);
  v16(v20, v3, v0);
  StaticDimension.init(_:scaledLike:)();
  v47(v3, v0);
  v21 = v18;
  if (qword_10096DD28 != -1)
  {
    swift_once();
  }

  v22 = v42;
  v35 = sub_1000056A8(v42, qword_1009D0710);
  v23 = v40;
  v40(v3, v35, v22);
  v19(v3, v21, v0);
  v56 = v45;
  v57 = &protocol witness table for StaticDimension;
  sub_1000056E0(v55);
  v24 = v23;
  v53 = v0;
  v54 = &protocol witness table for FontSource;
  v25 = sub_1000056E0(v52);
  v26 = v41;
  v41(v25, v3, v0);
  StaticDimension.init(_:scaledLike:)();
  v27 = v26;
  v47(v3, v0);
  v28 = v35;
  v24(v3, v35, v42);
  v46(v3, v21, v0);
  v29 = v45;
  v53 = v45;
  v54 = &protocol witness table for StaticDimension;
  sub_1000056E0(v52);
  v50 = v0;
  v51 = &protocol witness table for FontSource;
  v30 = sub_1000056E0(v49);
  v27(v30, v3, v0);
  StaticDimension.init(_:scaledLike:)();
  v31 = v47;
  v47(v3, v0);
  v40(v3, v28, v42);
  v46(v3, v38, v0);
  v50 = v29;
  v51 = &protocol witness table for StaticDimension;
  sub_1000056E0(v49);
  v48[3] = v0;
  v48[4] = &protocol witness table for FontSource;
  v32 = sub_1000056E0(v48);
  v27(v32, v3, v0);
  StaticDimension.init(_:scaledLike:)();
  v31(v3, v0);
  return LargeLockupLayout.Metrics.init(headingSpace:titleSpace:titleWithHeadingSpace:subtitleSpace:tertiaryTitleSpace:bottomSpace:isTextHorizontallyCentered:)();
}

char *sub_10020DAF8(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v10 = type metadata accessor for DirectionalTextAlignment();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v46 = &v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10002849C(&qword_100972ED0, &unk_1007B17B0);
  __chkstk_darwin(v13 - 8);
  v15 = &v41 - v14;
  v16 = OBJC_IVAR____TtC8AppStore29LargeLockupCollectionViewCell_itemLayoutContext;
  v17 = type metadata accessor for ItemLayoutContext();
  (*(*(v17 - 8) + 56))(&v5[v16], 1, 1, v17);
  *&v5[OBJC_IVAR____TtC8AppStore29LargeLockupCollectionViewCell_avatarShowcase] = 0;
  v18 = &v5[OBJC_IVAR____TtC8AppStore29LargeLockupCollectionViewCell_preferredArtworkSize];
  *v18 = 0;
  *(v18 + 1) = 0;
  *&v5[OBJC_IVAR____TtC8AppStore29LargeLockupCollectionViewCell_headingLabel] = 0;
  *&v5[OBJC_IVAR____TtC8AppStore29LargeLockupCollectionViewCell_tertiaryTitleLabel] = 0;
  type metadata accessor for ArtworkView();
  *&v5[OBJC_IVAR____TtC8AppStore29LargeLockupCollectionViewCell_artworkView] = static ArtworkView.iconArtworkView.getter();
  if (qword_10096DD08 != -1)
  {
    swift_once();
  }

  v19 = type metadata accessor for FontUseCase();
  v20 = sub_1000056A8(v19, qword_1009D06B0);
  v21 = *(v19 - 8);
  v44 = *(v21 + 16);
  v44(v15, v20, v19);
  v43 = *(v21 + 56);
  v43(v15, 0, 1, v19);
  v22 = enum case for DirectionalTextAlignment.none(_:);
  v42 = *(v11 + 104);
  v42(v46, enum case for DirectionalTextAlignment.none(_:), v10);
  v23 = type metadata accessor for DynamicTypeLabel();
  v41 = v10;
  v24 = v23;
  v25 = objc_allocWithZone(v23);
  *&v5[OBJC_IVAR____TtC8AppStore29LargeLockupCollectionViewCell_titleLabel] = DynamicTypeLabel.init(useCase:numberOfLines:lineBreakMode:isUserInteractionEnabled:directionalTextAlignment:contentSizeCategoryMapping:)();
  if (qword_10096DD28 != -1)
  {
    swift_once();
  }

  v26 = sub_1000056A8(v19, qword_1009D0710);
  v44(v15, v26, v19);
  v43(v15, 0, 1, v19);
  v42(v46, v22, v41);
  v27 = objc_allocWithZone(v24);
  *&v5[OBJC_IVAR____TtC8AppStore29LargeLockupCollectionViewCell_subtitleLabel] = DynamicTypeLabel.init(useCase:numberOfLines:lineBreakMode:isUserInteractionEnabled:directionalTextAlignment:contentSizeCategoryMapping:)();
  v47.receiver = v5;
  v47.super_class = ObjectType;
  v28 = objc_msgSendSuper2(&v47, "initWithFrame:", a1, a2, a3, a4);
  v29 = [v28 contentView];
  [v29 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];

  v30 = [v28 contentView];
  [v30 addSubview:*&v28[OBJC_IVAR____TtC8AppStore29LargeLockupCollectionViewCell_artworkView]];

  v31 = OBJC_IVAR____TtC8AppStore29LargeLockupCollectionViewCell_titleLabel;
  v32 = *&v28[OBJC_IVAR____TtC8AppStore29LargeLockupCollectionViewCell_titleLabel];
  dispatch thunk of DynamicTypeLabel.wantsFastBaselineMeasurement.setter();

  v33 = [v28 contentView];
  [v33 addSubview:*&v28[v31]];

  v34 = OBJC_IVAR____TtC8AppStore29LargeLockupCollectionViewCell_subtitleLabel;
  v35 = *&v28[OBJC_IVAR____TtC8AppStore29LargeLockupCollectionViewCell_subtitleLabel];
  sub_100005744(0, &qword_100970180, UIColor_ptr);
  v36 = v35;
  v37 = static UIColor.secondaryText.getter();
  [v36 setTextColor:v37];

  v38 = *&v28[v34];
  dispatch thunk of DynamicTypeLabel.wantsFastBaselineMeasurement.setter();

  v39 = [v28 contentView];
  [v39 addSubview:*&v28[v34]];

  return v28;
}

void sub_10020E160(void *a1)
{
  v2 = OBJC_IVAR____TtC8AppStore29LargeLockupCollectionViewCell_avatarShowcase;
  v3 = *&v1[OBJC_IVAR____TtC8AppStore29LargeLockupCollectionViewCell_avatarShowcase];
  *&v1[OBJC_IVAR____TtC8AppStore29LargeLockupCollectionViewCell_avatarShowcase] = a1;
  if (v3)
  {
    v4 = a1;
    [v3 removeFromSuperview];
    v5 = *&v1[v2];
    if (!v5)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = a1;
  v5 = a1;
  if (a1)
  {
LABEL_3:
    v6 = v5;
    v7 = [v1 contentView];
    [v7 addSubview:v6];
  }

LABEL_4:
}

uint64_t sub_10020E240()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v33 = type metadata accessor for LayoutRect();
  v32 = *(v33 - 8);
  __chkstk_darwin(v33);
  v4 = &v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for LargeLockupLayout.Metrics();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = type metadata accessor for LargeLockupLayout();
  v9 = *(v31 - 8);
  *&v10 = __chkstk_darwin(v31).n128_u64[0];
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36.receiver = v1;
  v36.super_class = ObjectType;
  v34 = ObjectType;
  objc_msgSendSuper2(&v36, "layoutSubviews", v10);
  if (qword_10096D410 != -1)
  {
    swift_once();
  }

  v13 = sub_1000056A8(v5, qword_1009CE908);
  (*(v6 + 16))(v8, v13, v5);
  v14 = *&v1[OBJC_IVAR____TtC8AppStore29LargeLockupCollectionViewCell_artworkView];
  v35[23] = type metadata accessor for ArtworkView();
  v35[24] = &protocol witness table for UIView;
  v35[20] = v14;
  v15 = *&v1[OBJC_IVAR____TtC8AppStore29LargeLockupCollectionViewCell_headingLabel];
  if (v15)
  {
    v16 = type metadata accessor for DynamicTypeLabel();
    v17 = &protocol witness table for UILabel;
    v18 = v15;
  }

  else
  {
    v18 = 0;
    v16 = 0;
    v17 = 0;
    v35[16] = 0;
    v35[17] = 0;
  }

  v35[15] = v18;
  v35[18] = v16;
  v35[19] = v17;
  v19 = *&v1[OBJC_IVAR____TtC8AppStore29LargeLockupCollectionViewCell_titleLabel];
  v20 = type metadata accessor for DynamicTypeLabel();
  v35[13] = v20;
  v35[14] = &protocol witness table for UILabel;
  v35[10] = v19;
  v21 = *&v1[OBJC_IVAR____TtC8AppStore29LargeLockupCollectionViewCell_subtitleLabel];
  v35[9] = &protocol witness table for UILabel;
  v35[8] = v20;
  v35[5] = v21;
  v22 = *&v1[OBJC_IVAR____TtC8AppStore29LargeLockupCollectionViewCell_tertiaryTitleLabel];
  if (v22)
  {
    v23 = &protocol witness table for UILabel;
  }

  else
  {
    v20 = 0;
    v23 = 0;
    v35[2] = 0;
    v35[1] = 0;
  }

  v35[0] = v22;
  v35[3] = v20;
  v35[4] = v23;
  v24 = v15;
  v25 = v19;
  v26 = v21;
  v27 = v22;
  v28 = v14;
  LargeLockupLayout.init(metrics:artworkView:headingText:titleText:subtitleText:tertiaryTitleText:)();
  v29 = [v1 contentView];
  sub_100005744(0, &qword_100972EB0, UIView_ptr);
  LayoutMarginsAware<>.layoutFrame.getter();

  LargeLockupLayout.placeChildren(relativeTo:in:)();
  (*(v32 + 8))(v4, v33);
  sub_10020F144(&qword_100979CE0, type metadata accessor for LargeLockupCollectionViewCell, &unk_1007C94E8);
  AvatarShowcaseDisplaying.placeAvatarShowcase()();
  return (*(v9 + 8))(v12, v31);
}

id sub_10020E6F8(char a1, uint64_t a2)
{
  v5 = type metadata accessor for DirectionalTextAlignment();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10002849C(&qword_100972ED0, &unk_1007B17B0);
  *&v10 = __chkstk_darwin(v9 - 8).n128_u64[0];
  v12 = &v21 - v11;
  v13 = OBJC_IVAR____TtC8AppStore29LargeLockupCollectionViewCell_headingLabel;
  result = *(v2 + OBJC_IVAR____TtC8AppStore29LargeLockupCollectionViewCell_headingLabel);
  if (a1)
  {
    if (result)
    {
      goto LABEL_6;
    }

    v15 = v2;
    if (qword_10096DD00 != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for FontUseCase();
    v17 = sub_1000056A8(v16, qword_1009D0698);
    v18 = *(v16 - 8);
    (*(v18 + 16))(v12, v17, v16);
    (*(v18 + 56))(v12, 0, 1, v16);
    (*(v6 + 104))(v8, enum case for DirectionalTextAlignment.none(_:), v5);
    v19 = objc_allocWithZone(type metadata accessor for DynamicTypeLabel());
    v20 = DynamicTypeLabel.init(useCase:numberOfLines:lineBreakMode:isUserInteractionEnabled:directionalTextAlignment:contentSizeCategoryMapping:)();
    v2 = v15;
    sub_10003D8D0(v20, &OBJC_IVAR____TtC8AppStore29LargeLockupCollectionViewCell_headingLabel);
    result = *(v15 + v13);
    if (result)
    {
LABEL_6:
      [result setTextColor:{a2, v10}];
      result = *(v2 + v13);
      if (result)
      {
        return [result setHidden:0];
      }
    }
  }

  else if (result)
  {

    return [result setHidden:{1, v10}];
  }

  return result;
}

void sub_10020E9A8()
{
  v1 = v0;
  v2 = type metadata accessor for DirectionalTextAlignment();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10002849C(&qword_100972ED0, &unk_1007B17B0);
  __chkstk_darwin(v6 - 8);
  v8 = &v21 - v7;
  v9 = OBJC_IVAR____TtC8AppStore29LargeLockupCollectionViewCell_tertiaryTitleLabel;
  v10 = *(v1 + OBJC_IVAR____TtC8AppStore29LargeLockupCollectionViewCell_tertiaryTitleLabel);
  if (v10)
  {
    goto LABEL_5;
  }

  if (qword_10096DD50 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for FontUseCase();
  v12 = sub_1000056A8(v11, qword_1009D0788);
  v13 = *(v11 - 8);
  (*(v13 + 16))(v8, v12, v11);
  (*(v13 + 56))(v8, 0, 1, v11);
  (*(v3 + 104))(v5, enum case for DirectionalTextAlignment.none(_:), v2);
  v14 = objc_allocWithZone(type metadata accessor for DynamicTypeLabel());
  v15 = DynamicTypeLabel.init(useCase:numberOfLines:lineBreakMode:isUserInteractionEnabled:directionalTextAlignment:contentSizeCategoryMapping:)();
  sub_10003D8D0(v15, &OBJC_IVAR____TtC8AppStore29LargeLockupCollectionViewCell_tertiaryTitleLabel);
  v10 = *(v1 + v9);
  if (v10)
  {
LABEL_5:
    v16 = v10;
    dispatch thunk of DynamicTypeLabel.wantsFastBaselineMeasurement.setter();

    v17 = *(v1 + v9);
    if (v17)
    {
      sub_100005744(0, &qword_100970180, UIColor_ptr);
      v18 = v17;
      v19 = static UIColor.tertiaryText.getter();
      [v18 setTextColor:v19];

      v20 = *(v1 + v9);
      if (v20)
      {
        [v20 setHidden:0];
      }
    }
  }
}

uint64_t type metadata accessor for LargeLockupCollectionViewCell(uint64_t a1)
{
  result = qword_100979CC8;
  if (!qword_100979CC8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10020ED68(uint64_t a1)
{
  sub_100027FAC(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_10020EE44(uint64_t a1)
{
  v1 = type metadata accessor for Artwork.Crop();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Artwork.Crop.boundingBox.getter();
  sub_10020F144(&unk_10097B3E0, &type metadata accessor for Artwork.Crop, &protocol conformance descriptor for Artwork.Crop);
  v5 = dispatch thunk of static Equatable.== infix(_:_:)();
  (*(v2 + 8))(v4, v1);
  if (v5)
  {
    return 6;
  }

  else
  {
    return Artwork.Crop.preferredContentMode.getter();
  }
}

uint64_t sub_10020EF74(uint64_t a1, uint64_t a2)
{
  ArtworkView.isImageHidden.setter();
  type metadata accessor for ArtworkView();
  sub_10020F144(&qword_100970E80, &type metadata accessor for ArtworkView, &protocol conformance descriptor for ArtworkView);
  return ArtworkLoader.forgetFetch<A>(forView:deprioritizingFetch:)();
}

uint64_t sub_10020F00C(uint64_t a1)
{
  result = sub_10020F144(&qword_100979CD8, type metadata accessor for LargeLockupCollectionViewCell, &unk_1007C0AF0);
  *(a1 + 8) = result;
  return result;
}

void sub_10020F064(uint64_t a1, double a2, double a3)
{
  if (qword_10096D410 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for LargeLockupLayout.Metrics();
  sub_1000056A8(v3, qword_1009CE908);
  type metadata accessor for LargeLockupLayout();
  sub_10020F144(&qword_1009739B8, &type metadata accessor for LargeLockupLayout, &protocol conformance descriptor for LargeLockupLayout);
  dispatch thunk of static EstimatedMeasurable.estimatedMeasurements(fitting:using:in:)();
}

uint64_t sub_10020F144(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10020F18C()
{
  v0 = type metadata accessor for SmallLockupLayout.Metrics();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100005644(v4, qword_1009CE960);
  sub_1000056A8(v0, qword_1009CE960);
  if (qword_10096EE80 != -1)
  {
    swift_once();
  }

  v5 = sub_1000056A8(v0, qword_1009D3798);
  (*(v1 + 16))(v3, v5, v0);
  Copyable.copyWithOverrides(in:)();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_10020F2F0(uint64_t a1)
{
  v2 = type metadata accessor for FontSource();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  SmallLockupLayout.Metrics.artworkSize.setter();
  v29 = a1;
  SmallLockupLayout.Metrics.artworkMargin.setter();
  if (qword_10096DD38 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for FontUseCase();
  v7 = sub_1000056A8(v6, qword_1009D0740);
  v8 = *(v6 - 8);
  v9 = *(v8 + 16);
  v10 = v8 + 16;
  v26 = v7;
  v9(v5);
  v11 = v3[13];
  v27 = enum case for FontSource.useCase(_:);
  v31 = v11;
  (v11)(v5);
  v30 = type metadata accessor for StaticDimension();
  v36 = v30;
  v37 = &protocol witness table for StaticDimension;
  sub_1000056E0(v35);
  v33 = v2;
  v34 = &protocol witness table for FontSource;
  v12 = sub_1000056E0(v32);
  v28 = v3[2];
  v23[2] = v3 + 2;
  v28(v12, v5, v2);
  StaticDimension.init(_:scaledLike:)();
  v25 = v3[1];
  v25(v5, v2);
  SmallLockupLayout.Metrics.subtitleSpace.setter();
  if (qword_10096DD58 != -1)
  {
    swift_once();
  }

  v13 = sub_1000056A8(v6, qword_1009D07A0);
  (v9)(v5, v13, v6);
  v23[1] = v10;
  v31(v5, v27, v2);
  v36 = v30;
  v37 = &protocol witness table for StaticDimension;
  sub_1000056E0(v35);
  v33 = v2;
  v34 = &protocol witness table for FontSource;
  v14 = sub_1000056E0(v32);
  v15 = v28;
  v28(v14, v5, v2);
  StaticDimension.init(_:scaledLike:)();
  v16 = v25;
  v25(v5, v2);
  v23[0] = v3 + 1;
  SmallLockupLayout.Metrics.tertiaryTitleSpace.setter();
  v24 = v6;
  (v9)(v5, v26, v6);
  v17 = v27;
  v26 = v3 + 13;
  v31(v5, v27, v2);
  v36 = v30;
  v37 = &protocol witness table for StaticDimension;
  sub_1000056E0(v35);
  v33 = v2;
  v34 = &protocol witness table for FontSource;
  v18 = sub_1000056E0(v32);
  v15(v18, v5, v2);
  StaticDimension.init(_:scaledLike:)();
  v16(v5, v2);
  SmallLockupLayout.Metrics.offerTextSpace.setter();
  if (qword_10096DD00 != -1)
  {
    swift_once();
  }

  v19 = v24;
  v20 = sub_1000056A8(v24, qword_1009D0698);
  (v9)(v5, v20, v19);
  v31(v5, v17, v2);
  v36 = v30;
  v37 = &protocol witness table for StaticDimension;
  sub_1000056E0(v35);
  v33 = v2;
  v34 = &protocol witness table for FontSource;
  v21 = sub_1000056E0(v32);
  v28(v21, v5, v2);
  StaticDimension.init(_:scaledLike:)();
  v16(v5, v2);
  SmallLockupLayout.Metrics.titleWithHeadingSpace.setter();
  return SmallLockupLayout.Metrics.numberOfLines.setter();
}

char *sub_10020F7E4(double a1, double a2, double a3, double a4)
{
  v31[1] = swift_getObjectType();
  v9 = type metadata accessor for CornerStyle();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = OBJC_IVAR____TtC8AppStore27StoryCardCollectionViewCell_mediaBackgroundView;
  type metadata accessor for StoryCardMediaView(0);
  *&v4[v13] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *&v4[OBJC_IVAR____TtC8AppStore27StoryCardCollectionViewCell_mediaBackgroundViewMirror] = 0;
  v14 = OBJC_IVAR____TtC8AppStore27StoryCardCollectionViewCell_infoLayer;
  v15 = type metadata accessor for TodayCardInfoLayerView(0);
  *&v4[v14] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  swift_weakInit();
  swift_weakInit();
  v4[OBJC_IVAR____TtC8AppStore27StoryCardCollectionViewCell_shouldMirrorBackground] = 0;
  *&v4[OBJC_IVAR____TtC8AppStore27StoryCardCollectionViewCell_mediaCornerRadius] = 0;
  v4[OBJC_IVAR____TtC8AppStore27StoryCardCollectionViewCell_isBackgroundMirroringSupported] = 0;
  *&v4[OBJC_IVAR____TtC8AppStore27StoryCardCollectionViewCell_muteButton] = 0;
  v16 = type metadata accessor for StoryCardCollectionViewCell(0);
  v33.receiver = v4;
  v33.super_class = v16;
  v17 = objc_msgSendSuper2(&v33, "initWithFrame:", a1, a2, a3, a4);
  v18 = [v17 contentView];
  v19 = OBJC_IVAR____TtC8AppStore27StoryCardCollectionViewCell_mediaBackgroundView;
  [v18 addSubview:*&v17[OBJC_IVAR____TtC8AppStore27StoryCardCollectionViewCell_mediaBackgroundView]];

  v20 = [v17 contentView];
  v21 = OBJC_IVAR____TtC8AppStore27StoryCardCollectionViewCell_infoLayer;
  [v20 addSubview:*&v17[OBJC_IVAR____TtC8AppStore27StoryCardCollectionViewCell_infoLayer]];

  *&v17[OBJC_IVAR____TtC8AppStore27StoryCardCollectionViewCell_mediaCornerRadius] = 0x4034000000000000;
  (*(v10 + 104))(v12, enum case for CornerStyle.continuous(_:), v9);
  if (v17[OBJC_IVAR____TtC8AppStore27StoryCardCollectionViewCell_shouldMirrorBackground])
  {
    v22 = 3;
  }

  else
  {
    v22 = -1;
  }

  sub_10070C5EC(v12, v22, 20.0);
  (*(v10 + 8))(v12, v9);
  v23 = *&v17[OBJC_IVAR____TtC8AppStore27StoryCardCollectionViewCell_mediaBackgroundViewMirror];
  if (v23)
  {
    v24 = v23;
    [v24 _setContinuousCornerRadius:20.0];
    v25 = [v24 layer];
    [v25 setMaskedCorners:UIRectCorner.caCornerMask.getter()];
  }

  v32.receiver = *&v17[v21];
  v32.super_class = v15;
  v26 = objc_msgSendSuper2(&v32, "_setContinuousCornerRadius:", 20.0);
  sub_1000A3894(v26, v27);
  [v17 setAccessibilityIgnoresInvertColors:1];
  sub_10002849C(&qword_10097B110, &unk_1007B27C0);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_1007B10D0;
  *(v28 + 32) = type metadata accessor for UITraitPreferredContentSizeCategory();
  *(v28 + 40) = &protocol witness table for UITraitPreferredContentSizeCategory;
  UIView.registerForTraitChanges<A>(_:handler:)();
  swift_unknownObjectRelease();

  sub_100005744(0, &qword_100972780, UITraitCollection_ptr);
  static UITraitCollection.systemTraitsAffectingColorAppearance.getter();
  UIView.registerForTraitChanges<A>(_:handler:)();
  swift_unknownObjectRelease();

  sub_1004EAE8C();
  v29 = *(*&v17[v19] + OBJC_IVAR____TtC8AppStore18StoryCardMediaView_revealingImageView);
  sub_1001A4AB4(v17, &off_1008B95B0);

  return v17;
}

void sub_10020FC58(char a1)
{
  v2 = OBJC_IVAR____TtC8AppStore27StoryCardCollectionViewCell_shouldMirrorBackground;
  if (*(v1 + OBJC_IVAR____TtC8AppStore27StoryCardCollectionViewCell_shouldMirrorBackground) == (a1 & 1))
  {
    return;
  }

  if (*(v1 + OBJC_IVAR____TtC8AppStore27StoryCardCollectionViewCell_shouldMirrorBackground))
  {
    v3 = 3;
  }

  else
  {
    v3 = -1;
  }

  v4 = v1;
  sub_10070C4F0(v3);
  v5 = *(v1 + OBJC_IVAR____TtC8AppStore27StoryCardCollectionViewCell_mediaBackgroundViewMirror);
  if (*(v4 + v2) == 1)
  {
    if (!v5)
    {
      return;
    }

    v6 = *&v5[OBJC_IVAR____TtC8AppStore24StoryCardMediaMirrorView_revealingVideoView];
    v7 = *(v6 + OBJC_IVAR____TtC8AppStore24RevealingVideoMirrorView_isMirroring);
    *(v6 + OBJC_IVAR____TtC8AppStore24RevealingVideoMirrorView_isMirroring) = 1;
    if (v7)
    {
      return;
    }

    Strong = swift_unknownObjectWeakLoadStrong();
    v9 = swift_unknownObjectWeakLoadStrong();
    v22 = v5;
    sub_10075E2A8(Strong);
    swift_unknownObjectWeakAssign();
    v10 = swift_unknownObjectWeakLoadStrong();
    if (v10)
    {
      v11 = v10;
      if (v9)
      {
        type metadata accessor for VideoView(0);
        v12 = v9;
        v13 = static NSObject.== infix(_:_:)();

        if (v13)
        {

          v14 = Strong;
          v9 = v12;
LABEL_28:

          v21 = v9;
          goto LABEL_29;
        }
      }

      else
      {
      }

LABEL_24:
      sub_10075E8D4();

      v14 = Strong;
      goto LABEL_28;
    }

    if (v9)
    {
      goto LABEL_24;
    }

    v9 = Strong;
LABEL_27:
    v14 = v22;
    goto LABEL_28;
  }

  if (!v5)
  {
    return;
  }

  v15 = *&v5[OBJC_IVAR____TtC8AppStore24StoryCardMediaMirrorView_revealingVideoView];
  v16 = *(v15 + OBJC_IVAR____TtC8AppStore24RevealingVideoMirrorView_isMirroring);
  *(v15 + OBJC_IVAR____TtC8AppStore24RevealingVideoMirrorView_isMirroring) = 0;
  if (v16 != 1)
  {
    return;
  }

  v9 = swift_unknownObjectWeakLoadStrong();
  v22 = v5;
  sub_10075E2A8(0);
  swift_unknownObjectWeakAssign();
  v17 = swift_unknownObjectWeakLoadStrong();
  if (v17)
  {
    v18 = v17;
    if (v9)
    {
      type metadata accessor for VideoView(0);
      v19 = v9;
      v20 = static NSObject.== infix(_:_:)();

      if (v20)
      {
        v9 = v19;
        goto LABEL_27;
      }
    }

    else
    {
    }

LABEL_26:
    sub_10075E8D4();
    goto LABEL_27;
  }

  if (v9)
  {
    goto LABEL_26;
  }

  v21 = v22;
LABEL_29:
}

uint64_t sub_10020FEDC@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_pageGrid;
  swift_beginAccess();
  return sub_100031660(v1 + v3, a1, &qword_10097DBD0, &qword_1007BC750);
}

uint64_t sub_10020FF48(uint64_t a1)
{
  v3 = sub_10002849C(&qword_10097DBD0, &qword_1007BC750);
  __chkstk_darwin(v3 - 8);
  v5 = &v10 - v4;
  v6 = OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_pageGrid;
  swift_beginAccess();
  sub_1000315F8(a1, v1 + v6, &qword_10097DBD0, &qword_1007BC750);
  swift_endAccess();
  v7 = *(v1 + OBJC_IVAR____TtC8AppStore27StoryCardCollectionViewCell_mediaBackgroundView);
  sub_100031660(v1 + v6, v5, &qword_10097DBD0, &qword_1007BC750);
  v8 = OBJC_IVAR____TtC8AppStore18StoryCardMediaView_pageGrid;
  swift_beginAccess();
  sub_1000315F8(v5, v7 + v8, &qword_10097DBD0, &qword_1007BC750);
  return swift_endAccess();
}

void sub_10021006C()
{
  v1 = OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_isTransitioning;
  *(*(v0 + OBJC_IVAR____TtC8AppStore27StoryCardCollectionViewCell_infoLayer) + OBJC_IVAR____TtC8AppStore22TodayCardInfoLayerView_isTransitioning) = *(v0 + OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_isTransitioning);
  sub_1000A3CB0();
  v2 = *(v0 + OBJC_IVAR____TtC8AppStore27StoryCardCollectionViewCell_mediaBackgroundView);
  v3 = *(v0 + v1);
  *(v2 + OBJC_IVAR____TtC8AppStore18StoryCardMediaView_isTransitioning) = v3;
  *(*(v2 + OBJC_IVAR____TtC8AppStore18StoryCardMediaView_revealingImageView) + OBJC_IVAR____TtC8AppStore18RevealingImageView_isTransitioning) = v3;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    (*((swift_isaMask & *Strong) + 0xC8))(v3);
  }
}

void *sub_1002101F0()
{
  result = *(v0 + OBJC_IVAR____TtC8AppStore27StoryCardCollectionViewCell_muteButton);
  if (result)
  {
    [result alpha];
    return (v2 != 0.0);
  }

  return result;
}

void sub_100210228(char a1)
{
  if (a1)
  {

    sub_100216A8C();
  }

  else
  {
    v2 = *(v1 + OBJC_IVAR____TtC8AppStore27StoryCardCollectionViewCell_muteButton);
    *(v1 + OBJC_IVAR____TtC8AppStore27StoryCardCollectionViewCell_muteButton) = 0;
    if (v2)
    {
      v3 = v2;
      [v2 removeFromSuperview];
    }
  }
}

void sub_1002102A8()
{
  if (v0[OBJC_IVAR____TtC8AppStore27StoryCardCollectionViewCell_isBackgroundMirroringSupported] != 1)
  {
    goto LABEL_11;
  }

  v1 = [v0 traitCollection];
  v2 = UITraitCollection.prefersAccessibilityLayouts.getter();

  if ((v2 & 1) == 0)
  {
    if ((v0[OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_isExpanded] & 1) == 0)
    {
      goto LABEL_10;
    }

LABEL_9:
    v4 = [v0 traitCollection];
    v5 = UITraitCollection.isSizeClassRegular.getter();

    if ((v5 & 1) == 0)
    {
      goto LABEL_10;
    }

LABEL_11:
    v6 = v0[OBJC_IVAR____TtC8AppStore27StoryCardCollectionViewCell_shouldMirrorBackground];
    v0[OBJC_IVAR____TtC8AppStore27StoryCardCollectionViewCell_shouldMirrorBackground] = 0;
    goto LABEL_12;
  }

  v3 = &OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell__sizeCategory;
  if (!v0[OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_isExpanded])
  {
    v3 = &OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_originalSizeCategory;
  }

  if (v0[*v3] == 4)
  {
    if (!v0[OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_isExpanded])
    {
LABEL_10:
      if (v0[OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_originalSizeCategory] != 4)
      {
        [v0 bounds];
        v7 = CGRectGetWidth(v9) < 405.0 && *(*&v0[OBJC_IVAR____TtC8AppStore27StoryCardCollectionViewCell_infoLayer] + OBJC_IVAR____TtC8AppStore22TodayCardInfoLayerView_overlay) != 0;
        v6 = v0[OBJC_IVAR____TtC8AppStore27StoryCardCollectionViewCell_shouldMirrorBackground];
        v0[OBJC_IVAR____TtC8AppStore27StoryCardCollectionViewCell_shouldMirrorBackground] = v7;
        goto LABEL_12;
      }

      goto LABEL_11;
    }

    goto LABEL_9;
  }

  v6 = v0[OBJC_IVAR____TtC8AppStore27StoryCardCollectionViewCell_shouldMirrorBackground];
  v0[OBJC_IVAR____TtC8AppStore27StoryCardCollectionViewCell_shouldMirrorBackground] = 1;
LABEL_12:

  sub_10020FC58(v6);
}

void sub_100210444(char a1)
{
  v2 = a1 & 1;
  v3 = sub_10002849C(&qword_10097DBD0, &qword_1007BC750);
  __chkstk_darwin(v3 - 8);
  v5 = &v22 - v4;
  v6 = type metadata accessor for PageGrid();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v1[OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_isMotionEnabled] != v2)
  {
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v11 = Strong;
      v12 = swift_weakLoadStrong();
      if (v12)
      {
        v13 = v12;
        v23 = v1;
        v26 = TodayCard.media.getter();
        type metadata accessor for TodayCardMedia();
        sub_10002849C(&qword_100972DD0, qword_1007B3FF0);
        if (swift_dynamicCast())
        {
          sub_100005A38(v24, v27);
          sub_10002A400(v27, v28);
          v14 = [v23 traitCollection];
          v15 = TodayCardMediaWithArtwork.video(for:)();

          if (v15)
          {
            v16 = v23;
            if (v23[OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_isExpanded])
            {
              v17 = &OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell__sizeCategory;
            }

            else
            {
              v17 = &OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_originalSizeCategory;
            }

            v18 = v23[*v17];
            if (v18 != 7)
            {
              v19 = OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_pageGrid;
              swift_beginAccess();
              sub_100031660(&v16[v19], v5, &qword_10097DBD0, &qword_1007BC750);
              if ((*(v7 + 48))(v5, 1, v6) == 1)
              {

                sub_10002B894(v5, &qword_10097DBD0, &qword_1007BC750);
                goto LABEL_12;
              }

              (*(v7 + 32))(v9, v5, v6);
              sub_10002A400(v27, v28);
              v20 = dispatch thunk of TodayCardMediaWithArtwork.artworkLayoutsWithMetrics.getter();
              if (v20)
              {
                v21 = v20;
                if (([v23 isHidden] & 1) == 0)
                {
                  sub_100212460(v15, v21, v13, v18, v9, v11);

                  (*(v7 + 8))(v9, v6);
                  goto LABEL_12;
                }

                (*(v7 + 8))(v9, v6);

                goto LABEL_11;
              }

              (*(v7 + 8))(v9, v6);
            }
          }

LABEL_11:

LABEL_12:
          sub_100007000(v27);
          return;
        }

        v25 = 0;
        memset(v24, 0, sizeof(v24));
        sub_10002B894(v24, &qword_100972DD8, &qword_1007C83C0);
      }

      else
      {
      }
    }
  }
}

void sub_1002108B0(char a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_isMotionEnabled);
  *(v1 + OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_isMotionEnabled) = a1;
  sub_100210444(v2);
}

id sub_1002108CC(uint64_t a1, __objc2_class_ro *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v49 = a4;
  v9 = sub_10002849C(&qword_10097DBD0, &qword_1007BC750);
  __chkstk_darwin(v9 - 8);
  v11 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v48 - v13;
  v15 = type metadata accessor for PageGrid();
  v16 = *(v15 - 8);
  (*(v16 + 16))(v14, a3, v15);
  (*(v16 + 56))(v14, 0, 1, v15);
  v17 = OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_pageGrid;
  swift_beginAccess();
  sub_1000315F8(v14, v4 + v17, &qword_10097DBD0, &qword_1007BC750);
  swift_endAccess();
  v18 = *(v4 + OBJC_IVAR____TtC8AppStore27StoryCardCollectionViewCell_mediaBackgroundView);
  sub_100031660(v4 + v17, v11, &qword_10097DBD0, &qword_1007BC750);
  v19 = OBJC_IVAR____TtC8AppStore18StoryCardMediaView_pageGrid;
  swift_beginAccess();
  sub_1000315F8(v11, v18 + v19, &qword_10097DBD0, &qword_1007BC750);
  swift_endAccess();
  sub_1004EAB3C(a2);
  v20 = [v4 backgroundView];
  if (v20)
  {
    v21 = v20;
    v22 = TodayCard.backgroundColor.getter();
    if (!v22)
    {
      sub_100005744(0, &qword_100970180, UIColor_ptr);
      v22 = static UIColor.todayCardDefaultBackground.getter();
    }

    v23 = v22;
    [v21 setBackgroundColor:v22];
  }

  v24 = &StringUserDefaultsDebugSetting;
  if (TodayCard.supportsMediaMirroring.getter())
  {
    *(v5 + OBJC_IVAR____TtC8AppStore27StoryCardCollectionViewCell_isBackgroundMirroringSupported) = 1;
  }

  else
  {
    v25 = [v5 traitCollection];
    v26 = UITraitCollection.prefersAccessibilityLayouts.getter();

    *(v5 + OBJC_IVAR____TtC8AppStore27StoryCardCollectionViewCell_isBackgroundMirroringSupported) = v26 & 1;
    if ((v26 & 1) == 0)
    {
      goto LABEL_10;
    }
  }

  v27 = OBJC_IVAR____TtC8AppStore27StoryCardCollectionViewCell_mediaBackgroundViewMirror;
  if (!*(v5 + OBJC_IVAR____TtC8AppStore27StoryCardCollectionViewCell_mediaBackgroundViewMirror))
  {
    v28 = objc_allocWithZone(type metadata accessor for StoryCardMediaMirrorView());
    v29 = v18;
    v30 = sub_1001AE690(v29);
    v31 = *(v5 + v27);
    *(v5 + v27) = v30;
    v32 = v30;

    [v32 _setContinuousCornerRadius:*(v5 + OBJC_IVAR____TtC8AppStore27StoryCardCollectionViewCell_mediaCornerRadius)];
    v33 = [v32 layer];
    [v33 setMaskedCorners:UIRectCorner.caCornerMask.getter()];

    v34 = [v5 contentView];
    [v34 insertSubview:v32 belowSubview:v29];

    [v5 setNeedsLayout];
  }

LABEL_10:
  v53 = TodayCard.media.getter();
  type metadata accessor for TodayCardMedia();
  sub_10002849C(&qword_100972DD0, qword_1007B3FF0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v52 = 0;
    v50 = 0u;
    v51 = 0u;
    sub_10002B894(&v50, &qword_100972DD8, &qword_1007C83C0);
    goto LABEL_17;
  }

  sub_100005A38(&v50, v54);
  sub_10002A400(v54, v55);
  v35 = [v5 traitCollection];
  v36 = TodayCardMediaWithArtwork.video(for:)();

  if (!v36)
  {
LABEL_16:
    sub_100007000(v54);
    v24 = &StringUserDefaultsDebugSetting;
LABEL_17:
    v53 = TodayCard.media.getter();
    if (swift_dynamicCast())
    {
      sub_100005A38(&v50, v54);
      sub_10002A400(v54, v55);
      v41 = [v5 traitCollection];
      v42 = TodayCardMediaWithArtwork.artwork(for:)();

      if (v42)
      {
        sub_10002A400(v54, v55);
        v43 = dispatch thunk of TodayCardMediaWithArtwork.artworkLayoutsWithMetrics.getter();
        if (v43)
        {
          v44 = v49;
          sub_100210F98(v42, v43, a1, a2, a3, v49);

          sub_100007000(v54);
          v40 = v44;
          goto LABEL_25;
        }
      }

      sub_100007000(v54);
    }

    else
    {
      v52 = 0;
      v50 = 0u;
      v51 = 0u;
      sub_10002B894(&v50, &qword_100972DD8, &qword_1007C83C0);
    }

    v40 = v49;
    goto LABEL_25;
  }

  sub_10002A400(v54, v55);
  v37 = dispatch thunk of TodayCardMediaWithArtwork.artworkLayoutsWithMetrics.getter();
  if (!v37)
  {

    goto LABEL_16;
  }

  v38 = v37;
  v39 = v49;
  swift_weakAssign();
  swift_weakAssign();
  sub_100212460(v36, v38, a1, a2, a3, v39);

  sub_100007000(v54);
  v40 = v39;
  v24 = &StringUserDefaultsDebugSetting;
LABEL_25:
  v45 = *(v5 + OBJC_IVAR____TtC8AppStore27StoryCardCollectionViewCell_infoLayer);
  sub_1000A3E28(a1, a2, a3, v40);
  v46 = [v45 setUserInteractionEnabled:*(v5 + OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_isExpanded)];
  (*((swift_isaMask & *v5) + 0x278))(v46);
  sub_1002102A8();
  return [v5 v24[41].base_meths];
}

void sub_100210F98(char *a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v158 = a6;
  v169 = a5;
  v170 = a2;
  LODWORD(v167) = a4;
  v9 = sub_10002849C(&qword_10097A450, qword_1007BD3D0);
  __chkstk_darwin(v9 - 8);
  v135 = &v130 - v10;
  v162 = type metadata accessor for PageGrid();
  v161 = *(v162 - 8);
  __chkstk_darwin(v162);
  v133 = v11;
  v141 = &v130 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v144 = type metadata accessor for UUID();
  v143 = *(v144 - 8);
  __chkstk_darwin(v144);
  v140 = &v130 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v132 = v12;
  __chkstk_darwin(v13);
  v142 = &v130 - v14;
  v136 = sub_10002849C(&qword_100979D78, &qword_1007C0D30);
  __chkstk_darwin(v136);
  v137 = &v130 - v15;
  v16 = sub_10002849C(&qword_100972638, qword_1007BDA60);
  __chkstk_darwin(v16 - 8);
  v134 = &v130 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v131 = &v130 - v19;
  __chkstk_darwin(v20);
  v138 = &v130 - v21;
  __chkstk_darwin(v22);
  v139 = &v130 - v23;
  v24 = sub_10002849C(&qword_10097DBD0, &qword_1007BC750);
  __chkstk_darwin(v24 - 8);
  v157 = &v130 - v25;
  v26 = type metadata accessor for Artwork.Format();
  __chkstk_darwin(v26 - 8);
  v163 = &v130 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v145 = type metadata accessor for Artwork.URLTemplate();
  v160 = *(v145 - 8);
  __chkstk_darwin(v145);
  v159 = &v130 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v156 = type metadata accessor for Artwork.Variant();
  v155 = *(v156 - 8);
  __chkstk_darwin(v156);
  v154 = &v130 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_10002849C(&qword_100979D60, &qword_1007C0CC8);
  __chkstk_darwin(v30 - 8);
  v32 = &v130 - v31;
  v33 = type metadata accessor for Artwork.Crop();
  v165 = *(v33 - 8);
  v166 = v33;
  __chkstk_darwin(v33);
  v152 = &v130 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v35);
  v37 = &v130 - v36;
  v151 = type metadata accessor for FloatingPointRoundingRule();
  v150 = *(v151 - 8);
  __chkstk_darwin(v151);
  v147 = &v130 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v148 = type metadata accessor for TodayCardArtworkLayout();
  v146 = *(v148 - 8);
  __chkstk_darwin(v148);
  v40 = &v130 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = type metadata accessor for TodayCardArtworkSizedLayoutMetrics.Priority();
  v42 = *(v41 - 8);
  __chkstk_darwin(v41);
  v44 = &v130 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v45);
  v47 = &v130 - v46;
  v48 = TodayCard.backgroundColor.getter();
  if (!v48)
  {
    v49 = Artwork.backgroundColor.getter();
    if (!v49)
    {
      goto LABEL_7;
    }

    v164 = a1;
    v50 = v32;
    v51 = v49;
    v52 = [v6 backgroundView];
    if (v52)
    {
      v53 = v52;
      [v52 setBackgroundColor:v51];
    }

    v48 = v51;
    v32 = v50;
  }

LABEL_7:
  v153 = v37;
  v168 = v7;
  v149 = [v7 traitCollection];
  v54 = UITraitCollection.modifyingTraits(_:)();
  v55 = v167;
  v164 = v54;
  sub_100467918(v167, v169, v54);
  v57.n128_f64[0] = sub_100699534(v55, v56);
  v58 = &enum case for TodayCardArtworkSizedLayoutMetrics.Priority.mini(_:);
  v59 = &enum case for TodayCardArtworkSizedLayoutMetrics.Priority.extraWide(_:);
  if (v55 != 6)
  {
    v59 = &enum case for TodayCardArtworkSizedLayoutMetrics.Priority.none(_:);
  }

  if (v55 != 4)
  {
    v58 = v59;
  }

  (*(v42 + 104))(v44, *v58, v41, v57);
  (*(v42 + 32))(v47, v44, v41);
  v60 = Array<A>.bestArtworkLayoutMetrics(for:prioritizing:)();
  (*(v42 + 8))(v47, v41);
  TodayCardArtworkSizedLayoutMetrics.sourceSizeOverride.getter();
  if (v61)
  {
    Artwork.size.getter();
  }

  v62 = v166;
  TodayCardArtworkSizedLayoutMetrics.layout(for:)();
  TodayCardArtworkLayout.collapsedLayoutInsets.getter();
  CGSize.subtracting(insets:)();
  CGSize.scaled(_:)();
  v63 = v150;
  v64 = v147;
  v65 = v151;
  (*(v150 + 104))(v147, enum case for FloatingPointRoundingRule.toNearestOrAwayFromZero(_:), v151);
  CGSize.rounded(_:)();
  (*(v63 + 8))(v64, v65);
  (*(v146 + 8))(v40, v148);
  v151 = v60;
  TodayCardArtworkSizedLayoutMetrics.sourceCropOverride(for:)();
  v66 = v165;
  v67 = *(v165 + 48);
  v68 = v67(v32, 1, v62);
  v69 = v168;
  if (v68 == 1)
  {
    v70 = v153;
    Artwork.crop.getter();
    v71 = v62;
    if (v67(v32, 1, v62) != 1)
    {
      sub_10002B894(v32, &qword_100979D60, &qword_1007C0CC8);
    }
  }

  else
  {
    v70 = v153;
    (*(v66 + 32))(v153, v32, v62);
    v71 = v62;
  }

  v72 = v154;
  dispatch thunk of Artwork.bestVariant(prefersLayeredImage:)();
  Artwork.template.getter();
  v73 = v164;
  [v164 displayScale];
  v74 = v165;
  (*(v165 + 16))(v152, v70, v71);
  Artwork.Variant.format.getter();
  Artwork.Variant.quality.getter();
  type metadata accessor for ArtworkLoaderConfig();
  swift_allocObject();
  v75 = ArtworkLoaderConfig.init(template:size:scale:crop:format:quality:useWideGamut:)();

  (*(v155 + 8))(v72, v156);
  (*(v74 + 8))(v70, v166);
  v76 = *&v69[OBJC_IVAR____TtC8AppStore27StoryCardCollectionViewCell_mediaBackgroundView];
  if (v69[OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_originalSizeCategory] == 7)
  {
    v77 = v167;
  }

  else
  {
    v77 = v69[OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_originalSizeCategory];
  }

  type metadata accessor for ArtworkLoader();
  type metadata accessor for BaseObjectGraph();
  inject<A, B>(_:from:)();
  v167 = v171;
  v165 = OBJC_IVAR____TtC8AppStore18StoryCardMediaView_revealingVideoView;
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakAssign();
  sub_1006666C8(Strong);

  v166 = v76;
  v163 = v75;
  v164 = OBJC_IVAR____TtC8AppStore18StoryCardMediaView_revealingImageView;
  v79 = *(v76 + OBJC_IVAR____TtC8AppStore18StoryCardMediaView_revealingImageView);
  ArtworkLoaderConfig.size.getter();
  v81 = v80;
  v83 = v82;
  v84 = [*(v79 + OBJC_IVAR____TtC8AppStore18RevealingImageView_imageView) image];
  v85 = v161;
  v86 = v157;
  v87 = v162;
  v155 = *(v161 + 16);
  (v155)(v157, v169, v162);
  (*(v85 + 56))(v86, 0, 1, v87);
  LODWORD(v156) = v77;
  sub_1001A5AD8(v84, v81, v83, 0, v170, v86, v77);

  sub_10002B894(v86, &qword_10097DBD0, &qword_1007BC750);
  v88 = *(v79 + OBJC_IVAR____TtC8AppStore18RevealingImageView_isExpanded);
  v158 = v79;
  if (v88)
  {
    v89 = OBJC_IVAR____TtC8AppStore18RevealingImageView_currentArtworkTemplate;
    swift_beginAccess();
    v90 = v139;
    sub_100031660(v79 + v89, v139, &qword_100972638, qword_1007BDA60);
    v91 = v138;
    ArtworkLoaderConfig.template.getter();
    v92 = v160;
    v93 = v145;
    (*(v160 + 56))(v91, 0, 1, v145);
    v94 = *(v136 + 48);
    v95 = v137;
    sub_100031660(v90, v137, &qword_100972638, qword_1007BDA60);
    sub_100031660(v91, v95 + v94, &qword_100972638, qword_1007BDA60);
    v96 = *(v92 + 48);
    if (v96(v95, 1, v93) == 1)
    {
      sub_10002B894(v91, &qword_100972638, qword_1007BDA60);
      sub_10002B894(v90, &qword_100972638, qword_1007BDA60);
      if (v96(v95 + v94, 1, v93) == 1)
      {
        sub_10002B894(v95, &qword_100972638, qword_1007BDA60);
        goto LABEL_29;
      }
    }

    else
    {
      v97 = v131;
      sub_100031660(v95, v131, &qword_100972638, qword_1007BDA60);
      if (v96(v95 + v94, 1, v93) != 1)
      {
        v126 = v160;
        v127 = v159;
        (*(v160 + 32))(v159, v95 + v94, v93);
        sub_1002182AC(&qword_100979D88, &type metadata accessor for Artwork.URLTemplate, &protocol conformance descriptor for Artwork.URLTemplate);
        v128 = dispatch thunk of static Equatable.== infix(_:_:)();
        v129 = *(v126 + 8);
        v129(v127, v93);
        sub_10002B894(v138, &qword_100972638, qword_1007BDA60);
        sub_10002B894(v139, &qword_100972638, qword_1007BDA60);
        v129(v97, v93);
        sub_10002B894(v95, &qword_100972638, qword_1007BDA60);
        v79 = v158;
        if (v128)
        {
          goto LABEL_29;
        }

        goto LABEL_27;
      }

      sub_10002B894(v138, &qword_100972638, qword_1007BDA60);
      sub_10002B894(v139, &qword_100972638, qword_1007BDA60);
      (*(v160 + 8))(v97, v93);
    }

    sub_10002B894(v95, &qword_100979D78, &qword_1007C0D30);
    v79 = v158;
  }

LABEL_27:
  if ((*(v79 + OBJC_IVAR____TtC8AppStore18RevealingImageView_isTransitioning) & 1) == 0)
  {
    v98 = v142;
    UUID.init()();
    v99 = v143;
    v100 = *(v143 + 16);
    v101 = v140;
    v102 = v144;
    v100(v140, v98, v144);
    sub_1002182AC(&qword_100979D80, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    AnyHashable.init<A>(_:)();
    v103 = swift_allocObject();
    v159 = v103;
    swift_unknownObjectWeakInit();
    v104 = v101;
    v105 = v102;
    v100(v104, v98, v102);
    (v155)(v141, v169, v162);
    v106 = (*(v99 + 80) + 24) & ~*(v99 + 80);
    v107 = (v132 + v106 + 7) & 0xFFFFFFFFFFFFFFF8;
    v108 = (v107 + 23) & 0xFFFFFFFFFFFFFFF8;
    v109 = v161;
    v110 = (*(v161 + 80) + v108 + 8) & ~*(v161 + 80);
    v111 = v110 + v133;
    v112 = swift_allocObject();
    *(v112 + 16) = v103;
    v113 = *(v99 + 32);
    v113(v112 + v106, v140, v105);
    v114 = (v112 + v107);
    *v114 = v81;
    v114[1] = v83;
    *(v112 + v108) = v170;
    (*(v109 + 32))(v112 + v110, v141, v162);
    *(v112 + v111) = v156;

    ArtworkLoader.fetchArtwork(using:closestMatch:handlerKey:completionHandler:)();

    sub_10002B894(&v171, &qword_10096FB90, &qword_1007B2A50);

    v115 = v134;
    ArtworkLoaderConfig.template.getter();
    (*(v160 + 56))(v115, 0, 1, v145);
    v116 = OBJC_IVAR____TtC8AppStore18RevealingImageView_currentArtworkTemplate;
    v117 = v158;
    swift_beginAccess();
    v118 = v117;
    sub_1000315F8(v115, v117 + v116, &qword_100972638, qword_1007BDA60);
    swift_endAccess();
    v119 = v135;
    v120 = v144;
    v113(v135, v142, v144);
    (*(v143 + 56))(v119, 0, 1, v120);
    v121 = OBJC_IVAR____TtC8AppStore18RevealingImageView_currentArtworkHandlerKey;
    swift_beginAccess();
    sub_1000315F8(v119, v118 + v121, &qword_10097A450, qword_1007BD3D0);
    swift_endAccess();
  }

LABEL_29:
  v122 = v166;
  [*&v164[v166] setHidden:0];
  [*(v122 + v165) setHidden:1];

  *(v122 + OBJC_IVAR____TtC8AppStore18StoryCardMediaView_hasMedia) = 1;
  v123 = *&v168[OBJC_IVAR____TtC8AppStore27StoryCardCollectionViewCell_mediaBackgroundViewMirror];
  if (v123)
  {
    v124 = *&v123[OBJC_IVAR____TtC8AppStore24StoryCardMediaMirrorView_revealingImageView];
    v125 = v123;
    [v124 setHidden:0];
    [*&v125[OBJC_IVAR____TtC8AppStore24StoryCardMediaMirrorView_revealingVideoView] setHidden:1];
  }
}

uint64_t sub_100212460(void *a1, uint64_t a2, uint64_t a3, unsigned int a4, uint64_t a5, uint64_t a6)
{
  v221 = a6;
  v255 = a5;
  v256 = a4;
  v257 = a2;
  v7 = sub_10002849C(&qword_10097DBD0, &qword_1007BC750);
  __chkstk_darwin(v7 - 8);
  v210 = &v209 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v214 = &v209 - v10;
  v11 = sub_10002849C(&unk_100973A50, &unk_1007B4FD0);
  __chkstk_darwin(v11 - 8);
  v220 = &v209 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v219 = &v209 - v14;
  v252 = type metadata accessor for URL();
  v15 = *(v252 - 8);
  __chkstk_darwin(v252);
  v213 = &v209 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v250 = sub_10002849C(&unk_10097CCA0, &unk_1007B70F0);
  __chkstk_darwin(v250);
  v251 = &v209 - v17;
  v18 = sub_10002849C(&qword_100982460, &unk_1007B5C90);
  __chkstk_darwin(v18 - 8);
  v218 = &v209 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v217 = &v209 - v21;
  __chkstk_darwin(v22);
  v259 = &v209 - v23;
  __chkstk_darwin(v24);
  v260 = &v209 - v25;
  v26 = type metadata accessor for Artwork.Format();
  __chkstk_darwin(v26 - 8);
  v248 = &v209 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = type metadata accessor for Artwork.URLTemplate();
  __chkstk_darwin(v28 - 8);
  v245 = &v209 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v249 = type metadata accessor for Artwork.Variant();
  v247 = *(v249 - 8);
  __chkstk_darwin(v249);
  v246 = &v209 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_10002849C(&qword_100979D60, &qword_1007C0CC8);
  __chkstk_darwin(v31 - 8);
  v241 = &v209 - v32;
  v244 = type metadata accessor for Artwork.Crop();
  v266 = *(v244 - 8);
  __chkstk_darwin(v244);
  v242 = &v209 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v34);
  v243 = &v209 - v35;
  v240 = type metadata accessor for FloatingPointRoundingRule();
  v239 = *(v240 - 8);
  __chkstk_darwin(v240);
  v237 = &v209 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v238 = type metadata accessor for TodayCardArtworkLayout();
  v236 = *(v238 - 8);
  __chkstk_darwin(v238);
  v235 = &v209 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v234 = type metadata accessor for TodayCardArtworkSizedLayoutMetrics.Priority();
  v233 = *(v234 - 8);
  __chkstk_darwin(v234);
  v231 = &v209 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v39);
  v232 = &v209 - v40;
  v41 = sub_10002849C(&unk_1009732A0, &unk_1007B4FE0);
  __chkstk_darwin(v41 - 8);
  v230 = &v209 - v42;
  v228 = type metadata accessor for VideoFillMode();
  v227 = *(v228 - 8);
  __chkstk_darwin(v228);
  v229 = &v209 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v254 = type metadata accessor for VideoConfiguration();
  v253 = *(v254 - 8);
  __chkstk_darwin(v254);
  v269 = &v209 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = sub_10002849C(&qword_100979D68, &qword_1007C7E30);
  __chkstk_darwin(v45 - 8);
  v212 = &v209 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v47);
  v225 = &v209 - v48;
  __chkstk_darwin(v49);
  v216 = &v209 - v50;
  __chkstk_darwin(v51);
  v53 = &v209 - v52;
  v267 = type metadata accessor for VideoControls();
  v272 = *(v267 - 8);
  __chkstk_darwin(v267);
  v265 = &v209 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v55);
  v264 = &v209 - v56;
  __chkstk_darwin(v57);
  v211 = &v209 - v58;
  __chkstk_darwin(v59);
  v226 = &v209 - v60;
  __chkstk_darwin(v61);
  v224 = &v209 - v62;
  __chkstk_darwin(v63);
  v223 = &v209 - v64;
  __chkstk_darwin(v65);
  v67 = &v209 - v66;
  __chkstk_darwin(v68);
  v215 = &v209 - v69;
  __chkstk_darwin(v70);
  v72 = &v209 - v71;
  __chkstk_darwin(v73);
  v75 = &v209 - v74;
  __chkstk_darwin(v76);
  v78 = &v209 - v77;
  __chkstk_darwin(v79);
  v81 = &v209 - v80;
  __chkstk_darwin(v82);
  v84 = &v209 - v83;
  v85 = TodayCard.backgroundColor.getter();
  v273 = a1;
  if (v85)
  {
    v86 = v85;
LABEL_3:

    goto LABEL_4;
  }

  Video.preview.getter();
  v98 = v15;
  v86 = Artwork.backgroundColor.getter();

  if (v86)
  {
    v99 = [v274 backgroundView];
    if (v99)
    {
      v100 = v99;
      [v99 setBackgroundColor:v86];

      v15 = v98;
    }

    goto LABEL_3;
  }

LABEL_4:
  v261 = v15;
  v271 = v67;
  Video.autoPlayPlaybackControls.getter();
  static VideoControls.muteUnmute.getter();
  v87 = v272;
  v88 = v267;
  v270 = *(v272 + 16);
  v258 = v272 + 16;
  v270(v75, v84, v267);
  sub_1002182AC(&unk_100988DE0, &type metadata accessor for VideoControls, &protocol conformance descriptor for VideoControls);
  dispatch thunk of SetAlgebra.intersection(_:)();
  v89 = dispatch thunk of SetAlgebra.isEmpty.getter();
  v268 = v84;
  if (v89)
  {
    v90 = *(v87 + 8);
    v90(v78, v88);
    v90(v81, v88);
    v91 = 1;
  }

  else
  {
    dispatch thunk of SetAlgebra.subtract(_:)();
    v90 = *(v87 + 8);
    v90(v81, v88);
    (*(v87 + 32))(v53, v78, v88);
    v91 = 0;
  }

  v262 = *(v87 + 56);
  v262(v53, v91, 1, v88);
  sub_10002B894(v53, &qword_100979D68, &qword_1007C7E30);
  v222 = OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_originalSizeCategory;
  v92 = v274[OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_originalSizeCategory] == 4;
  v93 = v271;
  v263 = v90;
  v94 = v223;
  if (v92)
  {
    static VideoControls.prominentPlay.getter();
    v270(v75, v268, v88);
    v95 = v215;
    dispatch thunk of SetAlgebra.intersection(_:)();
    if (dispatch thunk of SetAlgebra.isEmpty.getter())
    {
      v90 = v263;
      v263(v95, v88);
      v90(v72, v88);
      v96 = 1;
      v97 = v216;
    }

    else
    {
      dispatch thunk of SetAlgebra.subtract(_:)();
      v101 = v272;
      v90 = v263;
      v263(v72, v88);
      v102 = *(v101 + 32);
      v97 = v216;
      v102(v216, v95, v88);
      v96 = 0;
    }

    v262(v97, v96, 1, v88);
    sub_10002B894(v97, &qword_100979D68, &qword_1007C7E30);
  }

  Video.playbackControls.getter();
  static VideoControls.muteUnmute.getter();
  v270(v75, v93, v88);
  v103 = v94;
  v104 = v224;
  dispatch thunk of SetAlgebra.intersection(_:)();
  if (dispatch thunk of SetAlgebra.isEmpty.getter())
  {
    v90(v104, v88);
    v90(v103, v88);
    v105 = 1;
    v106 = v244;
    v107 = v225;
  }

  else
  {
    dispatch thunk of SetAlgebra.subtract(_:)();
    v108 = v272;
    v90(v103, v88);
    v109 = *(v108 + 32);
    v107 = v225;
    v109(v225, v104, v88);
    v105 = 0;
    v106 = v244;
  }

  v262(v107, v105, 1, v88);
  sub_10002B894(v107, &qword_100979D68, &qword_1007C7E30);
  v110 = v226;
  if (v274[v222] == 4 && (v274[OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_isExpanded] & 1) == 0)
  {
    static VideoControls.prominentPlay.getter();
    v270(v75, v271, v88);
    v111 = v211;
    dispatch thunk of SetAlgebra.intersection(_:)();
    if (dispatch thunk of SetAlgebra.isEmpty.getter())
    {
      v112 = v263;
      v263(v111, v88);
      v112(v110, v88);
      v113 = 1;
      v114 = v212;
    }

    else
    {
      dispatch thunk of SetAlgebra.subtract(_:)();
      v115 = v272;
      v263(v110, v88);
      v116 = *(v115 + 32);
      v114 = v212;
      v116(v212, v111, v88);
      v113 = 0;
    }

    v262(v114, v113, 1, v88);
    sub_10002B894(v114, &qword_100979D68, &qword_1007C7E30);
  }

  (*(v227 + 104))(v229, enum case for VideoFillMode.scaleAspectFill(_:), v228);
  Video.preview.getter();
  Artwork.size.getter();
  v117 = v230;
  AspectRatio.init(_:_:)();

  v118 = type metadata accessor for AspectRatio();
  (*(*(v118 - 8) + 56))(v117, 0, 1, v118);
  v119 = v270;
  v270(v264, v271, v88);
  v119(v265, v268, v88);
  Video.canPlayFullScreen.getter();
  Video.allowsAutoPlay.getter();
  Video.looping.getter();
  VideoConfiguration.init(fillMode:aspectRatio:playbackControls:autoPlayPlaybackControls:canPlayFullScreen:allowsAutoPlay:looping:roundedCorners:deviceCornerRadiusFactor:)();
  Video.preview.getter();
  v270 = [v274 traitCollection];
  v120 = UITraitCollection.modifyingTraits(_:)();
  v121 = v256;
  sub_100467918(v256, v255, v120);
  v122 = v121;
  v124.n128_f64[0] = sub_100699534(v121, v123);
  v125 = v233;
  v126 = &enum case for TodayCardArtworkSizedLayoutMetrics.Priority.mini(_:);
  v127 = &enum case for TodayCardArtworkSizedLayoutMetrics.Priority.extraWide(_:);
  if (v122 != 6)
  {
    v127 = &enum case for TodayCardArtworkSizedLayoutMetrics.Priority.none(_:);
  }

  if (v122 != 4)
  {
    v126 = v127;
  }

  v128 = v231;
  v129 = v234;
  (*(v233 + 104))(v231, *v126, v234, v124);
  v130 = v232;
  (*(v125 + 32))(v232, v128, v129);
  v131 = Array<A>.bestArtworkLayoutMetrics(for:prioritizing:)();
  (*(v125 + 8))(v130, v129);
  TodayCardArtworkSizedLayoutMetrics.sourceSizeOverride.getter();
  if (v132)
  {
    Artwork.size.getter();
  }

  v133 = v243;
  v134 = v241;
  v135 = v235;
  TodayCardArtworkSizedLayoutMetrics.layout(for:)();
  TodayCardArtworkLayout.collapsedLayoutInsets.getter();
  CGSize.subtracting(insets:)();
  CGSize.scaled(_:)();
  v136 = v239;
  v137 = v237;
  v138 = v240;
  (*(v239 + 104))(v237, enum case for FloatingPointRoundingRule.toNearestOrAwayFromZero(_:), v240);
  CGSize.rounded(_:)();
  (*(v136 + 8))(v137, v138);
  (*(v236 + 8))(v135, v238);
  TodayCardArtworkSizedLayoutMetrics.sourceCropOverride(for:)();
  v139 = v266;
  v140 = *(v266 + 48);
  v141 = v140(v134, 1, v106);
  v264 = v131;
  if (v141 == 1)
  {
    Artwork.crop.getter();
    v142 = v106;
    v143 = v133;
    if (v140(v134, 1, v106) != 1)
    {
      sub_10002B894(v134, &qword_100979D60, &qword_1007C0CC8);
    }
  }

  else
  {
    (*(v139 + 32))(v133, v134, v106);
    v142 = v106;
    v143 = v133;
  }

  v144 = v246;
  dispatch thunk of Artwork.bestVariant(prefersLayeredImage:)();
  Artwork.template.getter();
  [v120 displayScale];
  v262 = v120;
  v145 = v266;
  (*(v266 + 16))(v242, v143, v142);
  Artwork.Variant.format.getter();
  Artwork.Variant.quality.getter();
  type metadata accessor for ArtworkLoaderConfig();
  swift_allocObject();
  v265 = ArtworkLoaderConfig.init(template:size:scale:crop:format:quality:useWideGamut:)();

  (*(v247 + 8))(v144, v249);
  (*(v145 + 8))(v143, v142);
  v146 = *&v274[OBJC_IVAR____TtC8AppStore27StoryCardCollectionViewCell_mediaBackgroundView];
  v147 = v260;
  Video.videoUrl.getter();
  v148 = v261;
  v149 = *(v261 + 56);
  v150 = 1;
  v151 = v252;
  (v149)(v147, 0, 1, v252);
  v266 = v146;
  v270 = OBJC_IVAR____TtC8AppStore18StoryCardMediaView_revealingVideoView;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v153 = Strong;
    v154 = v259;
    (*(v148 + 16))(v259, Strong + qword_1009D21C8, v151);

    v150 = 0;
    v155 = v251;
  }

  else
  {
    v155 = v251;
    v154 = v259;
  }

  v264 = v149;
  (v149)(v154, v150, 1, v151);
  v156 = *(v250 + 48);
  sub_100031660(v147, v155, &qword_100982460, &unk_1007B5C90);
  sub_100031660(v154, v155 + v156, &qword_100982460, &unk_1007B5C90);
  v157 = *(v148 + 48);
  if (v157(v155, 1, v151) == 1)
  {
    sub_10002B894(v154, &qword_100982460, &unk_1007B5C90);
    sub_10002B894(v147, &qword_100982460, &unk_1007B5C90);
    v158 = v157(v155 + v156, 1, v151);
    v159 = v274;
    if (v158 == 1)
    {
      sub_10002B894(v155, &qword_100982460, &unk_1007B5C90);
      goto LABEL_61;
    }

    goto LABEL_43;
  }

  v160 = v217;
  sub_100031660(v155, v217, &qword_100982460, &unk_1007B5C90);
  if (v157(v155 + v156, 1, v151) == 1)
  {
    sub_10002B894(v259, &qword_100982460, &unk_1007B5C90);
    sub_10002B894(v260, &qword_100982460, &unk_1007B5C90);
    (*(v261 + 8))(v160, v151);
LABEL_43:
    sub_10002B894(v155, &unk_10097CCA0, &unk_1007B70F0);
    v161 = v266;
    goto LABEL_44;
  }

  v168 = v261;
  v169 = v213;
  (*(v261 + 32))(v213, v155 + v156, v151);
  sub_1002182AC(&qword_100975040, &type metadata accessor for URL, &protocol conformance descriptor for URL);
  v170 = dispatch thunk of static Equatable.== infix(_:_:)();
  v171 = *(v168 + 8);
  v171(v169, v151);
  sub_10002B894(v259, &qword_100982460, &unk_1007B5C90);
  sub_10002B894(v260, &qword_100982460, &unk_1007B5C90);
  v171(v160, v151);
  sub_10002B894(v155, &qword_100982460, &unk_1007B5C90);
  v159 = v274;
  v161 = v266;
  if ((v170 & 1) == 0)
  {
LABEL_44:
    type metadata accessor for VideoViewManager();
    v266 = type metadata accessor for BaseObjectGraph();
    inject<A, B>(_:from:)();
    v162 = v275;
    Video.playbackId.getter();
    v163 = v218;
    Video.videoUrl.getter();
    (v264)(v163, 0, 1, v151);
    v164 = v219;
    Video.templateMediaEvent.getter();
    v165 = v220;
    Video.templateClickEvent.getter();
    v166 = type metadata accessor for TodayCardVideoView(0);
    sub_1002182AC(&qword_100979D58, type metadata accessor for TodayCardVideoView, &unk_1007D1B30);
    v264 = v166;
    v167 = dispatch thunk of VideoViewManager.videoView<A>(with:videoUrl:configuration:templateMediaEvent:templateClickEvent:asPartOf:)();
    sub_10002B894(v165, &unk_100973A50, &unk_1007B4FD0);
    sub_10002B894(v164, &unk_100973A50, &unk_1007B4FD0);
    sub_10002B894(v163, &qword_100982460, &unk_1007B5C90);
    sub_10002B894(&v275, &qword_10096FB90, &qword_1007B2A50);
    if (v167)
    {
      if ((v167[qword_1009CE000] & 1) == 0)
      {
        v262 = v162;
        v167[qword_1009CDFF8] = *(v161 + OBJC_IVAR____TtC8AppStore18StoryCardMediaView_originalSizeCategory);
        sub_1000FA22C();
        swift_unknownObjectWeakAssign();
        v172 = v270;
        v173 = swift_unknownObjectWeakLoadStrong();
        swift_unknownObjectWeakAssign();
        v174 = v167;
        sub_1006666C8(v173);

        v175 = *(v172 + v161);
        v176 = v174;
        Video.preview.getter();
        Artwork.size.getter();
        v178 = v177;
        v180 = v179;

        v181 = type metadata accessor for PageGrid();
        v182 = *(v181 - 8);
        v183 = v214;
        (*(v182 + 16))(v214, v255, v181);
        (*(v182 + 56))(v183, 0, 1, v181);
        v184 = swift_unknownObjectWeakLoadStrong();
        v273 = v176;
        swift_unknownObjectWeakAssign();
        sub_1006666C8(v184);

        v185 = &v175[OBJC_IVAR____TtC8AppStore18RevealingVideoView_artworkSize];
        *v185 = v178;
        *(v185 + 1) = v180;
        v185[16] = 0;
        v186 = swift_unknownObjectWeakLoadStrong();
        if (v186)
        {
          v187 = v186;
          (*((swift_isaMask & *v186) + 0xE8))(v178, v180, 0);
        }

        v188 = v257;
        *&v175[OBJC_IVAR____TtC8AppStore18RevealingVideoView_artworkLayoutWithMetrics] = v257;

        v189 = swift_unknownObjectWeakLoadStrong();
        if (v189)
        {
          v190 = v189;
          v191 = *((swift_isaMask & *v189) + 0xD0);
          swift_bridgeObjectRetain_n();
          v191(v188);
          v183 = v214;
        }

        else
        {
        }

        v192 = v210;
        sub_100031660(v183, v210, &qword_10097DBD0, &qword_1007BC750);
        sub_100665BDC(v192);
        v193 = v256;
        v175[OBJC_IVAR____TtC8AppStore18RevealingVideoView_sizeCategory] = v256;
        v194 = swift_unknownObjectWeakLoadStrong();
        if (v194)
        {
          v195 = v194;
          (*((swift_isaMask & *v194) + 0x118))(v193);
        }

        v196 = swift_unknownObjectWeakLoadStrong();
        if (v196)
        {
          v197 = v196;
          v198 = swift_unknownObjectWeakLoadStrong();
          (*((swift_isaMask & *v197) + 0x150))(v198, *v185, *(v185 + 1), v185[16], v257, v183, v193);
        }

        [v175 setNeedsLayout];
        v199 = v273;

        sub_10002B894(v183, &qword_10097DBD0, &qword_1007BC750);
        type metadata accessor for ArtworkLoader();
        inject<A, B>(_:from:)();
        sub_1002182AC(&qword_100979D70, type metadata accessor for TodayCardVideoView, &unk_1007DDE78);
        ArtworkLoader.fetchArtwork<A>(using:closestMatch:into:)();
        [*(v270 + v161) setHidden:0];
        [*(v161 + OBJC_IVAR____TtC8AppStore18StoryCardMediaView_revealingImageView) setHidden:1];

        *(v161 + OBJC_IVAR____TtC8AppStore18StoryCardMediaView_hasMedia) = 1;
        goto LABEL_60;
      }
    }

LABEL_60:
    v159 = v274;
  }

LABEL_61:
  v200 = *&v159[OBJC_IVAR____TtC8AppStore27StoryCardCollectionViewCell_mediaBackgroundViewMirror];
  if (v200)
  {
    v201 = *&v200[OBJC_IVAR____TtC8AppStore24StoryCardMediaMirrorView_revealingImageView];
    v202 = v200;
    [v201 setHidden:1];
    [*&v202[OBJC_IVAR____TtC8AppStore24StoryCardMediaMirrorView_revealingVideoView] setHidden:0];
  }

  v203 = swift_unknownObjectWeakLoadStrong();
  v204 = v268;
  v205 = v263;
  if (v203)
  {
    *(v203 + qword_100988CB8 + 8) = &off_1008B9598;
    v206 = v203;
    swift_unknownObjectWeakAssign();
  }

  sub_100214610();

  (*(v253 + 8))(v269, v254);
  v207 = v267;
  v205(v271, v267);
  return (v205)(v204, v207);
}

void sub_100214610()
{
  v1 = v0;
  v2 = type metadata accessor for VideoPlayerState();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v24 - v7;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v25 = Strong;
  if ((sub_1004DFC98() & 1) != 0 && !*(v0 + OBJC_IVAR____TtC8AppStore27StoryCardCollectionViewCell_muteButton))
  {
    sub_100216A8C();
    v10 = *(v0 + OBJC_IVAR____TtC8AppStore27StoryCardCollectionViewCell_muteButton);
    if (v10)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v10 = *(v0 + OBJC_IVAR____TtC8AppStore27StoryCardCollectionViewCell_muteButton);
    if (v10)
    {
LABEL_5:
      v11 = qword_100988CE0;
      v12 = *&v25[qword_100988CE0];
      v13 = v10;
      if (v12)
      {
        v14 = [v12 isMuted];
      }

      else
      {
        v14 = 0;
      }

      sub_1001C6984(v14);
      v15 = 0.0;
      if ((*(v1 + OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_isExpanded) & 1) == 0)
      {
        v16 = *&v25[v11];
        if (v16)
        {
          v17 = v16;
          dispatch thunk of VideoPlayer.state.getter();

          (*(v3 + 32))(v8, v5, v2);
        }

        else
        {
          (*(v3 + 104))(v8, enum case for VideoPlayerState.unknown(_:), v2);
        }

        if ((*(v3 + 88))(v8, v2) != enum case for VideoPlayerState.playing(_:) || (v15 = 1.0, (sub_1004DFC98() & 1) == 0))
        {
          v15 = 0.0;
        }

        (*(v3 + 8))(v8, v2);
      }

      [v10 alpha];
      if (v19 == v15)
      {
      }

      else
      {
        v20 = objc_opt_self();
        v21 = swift_allocObject();
        *(v21 + 16) = v10;
        *(v21 + 24) = v15;
        aBlock[4] = sub_100217E64;
        aBlock[5] = v21;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_100007A08;
        aBlock[3] = &unk_1008B9668;
        v22 = _Block_copy(aBlock);
        v23 = v10;

        [v20 animateWithDuration:4 delay:v22 options:0 animations:0.15 completion:0.0];

        _Block_release(v22);
      }

      return;
    }
  }

  v18 = v25;
}

void sub_1002149C0()
{
  v1 = v0;
  v2 = type metadata accessor for VideoPlayerState();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v24 - v7;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v25 = Strong;
  if ((sub_1004DFC98() & 1) != 0 && !*(v0 + OBJC_IVAR____TtC8AppStore31ListTodayCardCollectionViewCell_muteButton))
  {
    sub_1003357E0();
    v10 = *(v0 + OBJC_IVAR____TtC8AppStore31ListTodayCardCollectionViewCell_muteButton);
    if (v10)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v10 = *(v0 + OBJC_IVAR____TtC8AppStore31ListTodayCardCollectionViewCell_muteButton);
    if (v10)
    {
LABEL_5:
      v11 = qword_100988CE0;
      v12 = *&v25[qword_100988CE0];
      v13 = v10;
      if (v12)
      {
        v14 = [v12 isMuted];
      }

      else
      {
        v14 = 0;
      }

      sub_1001C6984(v14);
      v15 = 0.0;
      if ((*(v1 + OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_isExpanded) & 1) == 0)
      {
        v16 = *&v25[v11];
        if (v16)
        {
          v17 = v16;
          dispatch thunk of VideoPlayer.state.getter();

          (*(v3 + 32))(v8, v5, v2);
        }

        else
        {
          (*(v3 + 104))(v8, enum case for VideoPlayerState.unknown(_:), v2);
        }

        if ((*(v3 + 88))(v8, v2) != enum case for VideoPlayerState.playing(_:) || (v15 = 1.0, (sub_1004DFC98() & 1) == 0))
        {
          v15 = 0.0;
        }

        (*(v3 + 8))(v8, v2);
      }

      [v10 alpha];
      if (v19 == v15)
      {
      }

      else
      {
        v20 = objc_opt_self();
        v21 = swift_allocObject();
        *(v21 + 16) = v10;
        *(v21 + 24) = v15;
        aBlock[4] = sub_1002182F8;
        aBlock[5] = v21;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_100007A08;
        aBlock[3] = &unk_1008B96B8;
        v22 = _Block_copy(aBlock);
        v23 = v10;

        [v20 animateWithDuration:4 delay:v22 options:0 animations:0.15 completion:0.0];

        _Block_release(v22);
      }

      return;
    }
  }

  v18 = v25;
}

void sub_100214D80(void *a1, uint64_t a2, char a3)
{
  v4 = v3;
  swift_getObjectType();
  v8 = sub_10002849C(&qword_10097DBD0, &qword_1007BC750);
  __chkstk_darwin(v8 - 8);
  __chkstk_darwin(v9);
  __chkstk_darwin(v10);
  v12 = &v61 - v11;
  __chkstk_darwin(v13);
  v17 = &v61 - v16;
  if (a3)
  {

    swift_dynamicCastClass();
  }

  else
  {
    v61 = v15;
    v62 = v14;
    ObjectType = swift_getObjectType();
    (*(a2 + 112))(ObjectType, a2);
    v19 = OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_pageGrid;
    swift_beginAccess();
    sub_1000315F8(v17, v4 + v19, &qword_10097DBD0, &qword_1007BC750);
    swift_endAccess();
    v20 = *(v4 + OBJC_IVAR____TtC8AppStore27StoryCardCollectionViewCell_mediaBackgroundView);
    sub_100031660(v4 + v19, v12, &qword_10097DBD0, &qword_1007BC750);
    v21 = OBJC_IVAR____TtC8AppStore18StoryCardMediaView_pageGrid;
    swift_beginAccess();
    sub_1000315F8(v12, v20 + v21, &qword_10097DBD0, &qword_1007BC750);
    swift_endAccess();
    v22 = (*(a2 + 160))(ObjectType, a2);
    v23 = OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_originalSizeCategory;
    *(v4 + OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_originalSizeCategory) = v22;
    if (v22 == 4)
    {
      v24 = [v4 contentView];
      [v24 setClipsToBounds:1];
    }

    [v4 setNeedsLayout];
    v25 = *(v4 + v23);
    sub_1000A3C18(v25);
    *(v20 + OBJC_IVAR____TtC8AppStore18StoryCardMediaView_originalSizeCategory) = v25;
    sub_10070D46C();
    v26 = (*(a2 + 136))(ObjectType, a2);
    sub_1004EAB3C(v26);
    v27 = swift_dynamicCastClass();
    if (v27)
    {
      v28 = v27;
      v29 = *(v27 + OBJC_IVAR____TtC8AppStore27StoryCardCollectionViewCell_isBackgroundMirroringSupported);
      *(v4 + OBJC_IVAR____TtC8AppStore27StoryCardCollectionViewCell_isBackgroundMirroringSupported) = v29;
      if (v29 == 1 && (v30 = OBJC_IVAR____TtC8AppStore27StoryCardCollectionViewCell_mediaBackgroundViewMirror, !*(v4 + OBJC_IVAR____TtC8AppStore27StoryCardCollectionViewCell_mediaBackgroundViewMirror)))
      {
        v52 = *(v4 + OBJC_IVAR____TtC8AppStore27StoryCardCollectionViewCell_mediaBackgroundView);
        v53 = objc_allocWithZone(type metadata accessor for StoryCardMediaMirrorView());
        v54 = a1;
        v55 = v52;
        v56 = sub_1001AE690(v55);
        v57 = *(v4 + v30);
        *(v4 + v30) = v56;
        v58 = v56;

        [v58 _setContinuousCornerRadius:*(v4 + OBJC_IVAR____TtC8AppStore27StoryCardCollectionViewCell_mediaCornerRadius)];
        v59 = [v58 layer];
        [v59 setMaskedCorners:UIRectCorner.caCornerMask.getter()];

        v60 = [v4 contentView];
        [v60 insertSubview:v58 belowSubview:v55];

        [v4 setNeedsLayout];
      }

      else
      {
        v31 = a1;
      }

      v32 = *(v4 + OBJC_IVAR____TtC8AppStore27StoryCardCollectionViewCell_shouldMirrorBackground);
      *(v4 + OBJC_IVAR____TtC8AppStore27StoryCardCollectionViewCell_shouldMirrorBackground) = v28[OBJC_IVAR____TtC8AppStore27StoryCardCollectionViewCell_shouldMirrorBackground];
      sub_10020FC58(v32);
      v33 = *&v28[OBJC_IVAR____TtC8AppStore27StoryCardCollectionViewCell_infoLayer];
      sub_1000A63B4(v33, 0);

      v34 = *&v28[OBJC_IVAR____TtC8AppStore27StoryCardCollectionViewCell_mediaBackgroundViewMirror];
      if (v34)
      {
        v35 = *(v4 + OBJC_IVAR____TtC8AppStore27StoryCardCollectionViewCell_mediaBackgroundViewMirror);
        if (v35)
        {
          v36 = OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_pageGrid;
          swift_beginAccess();
          v37 = v61;
          sub_100031660(v4 + v36, v61, &qword_10097DBD0, &qword_1007BC750);
          v38 = &OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_originalSizeCategory;
          if (*(v4 + OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_isExpanded))
          {
            v38 = &OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell__sizeCategory;
          }

          v39 = *(v4 + *v38);
          v40 = v34;
          v41 = v35;
          sub_1001AE940(v40, 0, v37, v39);

          sub_10002B894(v37, &qword_10097DBD0, &qword_1007BC750);
        }
      }

      v42 = *&v28[OBJC_IVAR____TtC8AppStore27StoryCardCollectionViewCell_mediaBackgroundView];
      v43 = OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_pageGrid;
      swift_beginAccess();
      v44 = v62;
      sub_100031660(v4 + v43, v62, &qword_10097DBD0, &qword_1007BC750);
      v45 = &OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_originalSizeCategory;
      if (*(v4 + OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_isExpanded))
      {
        v45 = &OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell__sizeCategory;
      }

      v46 = *(v4 + *v45);
      v47 = v42;
      sub_10070C7C4(v47, 0, v44, v46);

      sub_10002B894(v44, &qword_10097DBD0, &qword_1007BC750);
      v48 = [v4 backgroundView];
      if (v48)
      {
        v49 = v48;
        v50 = [v28 backgroundView];
        v51 = [v50 backgroundColor];

        [v49 setBackgroundColor:v51];
      }

      (*((swift_isaMask & *v4) + 0x278))();
      [v4 setNeedsLayout];
    }
  }
}

void sub_10021541C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  sub_1000A735C(a1, a3);
  sub_10070CB5C(a1, v3);
}

void *sub_100215478(uint64_t a1, uint64_t a2, uint64_t a3, __n128 a4)
{
  v88 = a3;
  v5 = type metadata accessor for Artwork.Format();
  __chkstk_darwin(v5 - 8);
  v7 = &v63 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Artwork.URLTemplate();
  __chkstk_darwin(v8 - 8);
  v84 = &v63 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Artwork.Variant();
  v86 = *(v10 - 8);
  __chkstk_darwin(v10);
  v85 = &v63 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10002849C(&qword_100979D60, &qword_1007C0CC8);
  __chkstk_darwin(v12 - 8);
  v79 = &v63 - v13;
  v83 = type metadata accessor for Artwork.Crop();
  v82 = *(v83 - 8);
  __chkstk_darwin(v83);
  v80 = &v63 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v81 = &v63 - v16;
  v78 = type metadata accessor for FloatingPointRoundingRule();
  v77 = *(v78 - 8);
  __chkstk_darwin(v78);
  v75 = &v63 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = type metadata accessor for TodayCardArtworkLayout();
  v74 = *(v76 - 8);
  __chkstk_darwin(v76);
  v73 = &v63 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for TodayCardArtworkSizedLayoutMetrics.Priority();
  v72 = *(v19 - 8);
  __chkstk_darwin(v19);
  v21 = &v63 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v24 = &v63 - v23;
  v25 = type metadata accessor for PageGrid();
  v89 = *(v25 - 8);
  v90 = v25;
  __chkstk_darwin(v25);
  v87 = &v63 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v29 = &v63 - v28;
  type metadata accessor for TodayCard();
  sub_1002182AC(&qword_100977390, &type metadata accessor for TodayCard, &protocol conformance descriptor for TodayCard);
  result = ItemLayoutContext.typedModel<A>(as:)();
  v31 = v94;
  if (v94)
  {
    v93 = TodayCard.media.getter();
    type metadata accessor for TodayCardMedia();
    sub_10002849C(&qword_100972DD0, qword_1007B3FF0);
    if (swift_dynamicCast())
    {
      v66 = v19;
      v69 = v7;
      v71 = a2;
      sub_100005A38(v91, &v94);
      type metadata accessor for TodayCardGridTracker();
      type metadata accessor for BaseObjectGraph();
      inject<A, B>(_:from:)();
      v70 = *&v91[0];
      sub_1006E2600();
      v33 = v32;
      v34 = _swiftEmptyArrayStorage;
      *&v91[0] = _swiftEmptyArrayStorage;
      v88 = v31;
      v35 = TodayCard.titleArtwork.getter();
      v68 = v10;
      LODWORD(v67) = v33;
      if (v35)
      {
        swift_getKeyPath();
        ItemLayoutContext.subscript.getter();

        swift_getKeyPath();
        ItemLayoutContext.subscript.getter();

        v36 = v93;
        sub_100467918(v33, v29, v93);
        sub_100699534(v33, v37);
        Artwork.config(_:mode:prefersLayeredImage:)();

        (*(v89 + 8))(v29, v90);
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((*&v91[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v91[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

        v34 = *&v91[0];
      }

      sub_10002A400(&v94, v95);
      swift_getKeyPath();
      ItemLayoutContext.subscript.getter();

      v38 = v93;
      v39 = TodayCardMediaWithArtwork.prefetchableArtwork(for:)();

      if (v39)
      {
        sub_10002A400(&v94, v95);
        if (dispatch thunk of TodayCardMediaWithArtwork.artworkLayoutsWithMetrics.getter())
        {
          swift_getKeyPath();
          v40 = v87;
          ItemLayoutContext.subscript.getter();

          swift_getKeyPath();
          ItemLayoutContext.subscript.getter();

          v64 = v93;
          v41 = UITraitCollection.modifyingTraits(_:)();
          v42 = v67;
          v65 = v41;
          sub_100467918(v67, v40, v41);
          v44.n128_f64[0] = sub_100699534(v42, v43);
          v45 = v72;
          v46 = &enum case for TodayCardArtworkSizedLayoutMetrics.Priority.mini(_:);
          v47 = &enum case for TodayCardArtworkSizedLayoutMetrics.Priority.extraWide(_:);
          if (v42 != 6)
          {
            v47 = &enum case for TodayCardArtworkSizedLayoutMetrics.Priority.none(_:);
          }

          if (v42 != 4)
          {
            v46 = v47;
          }

          v48 = v66;
          (*(v72 + 104))(v21, *v46, v66, v44);
          (*(v45 + 32))(v24, v21, v48);
          v49 = Array<A>.bestArtworkLayoutMetrics(for:prioritizing:)();

          (*(v45 + 8))(v24, v48);
          TodayCardArtworkSizedLayoutMetrics.sourceSizeOverride.getter();
          if (v50)
          {
            Artwork.size.getter();
          }

          v51 = v83;
          v52 = v82;
          v53 = v79;
          v54 = v73;
          TodayCardArtworkSizedLayoutMetrics.layout(for:)();
          TodayCardArtworkLayout.collapsedLayoutInsets.getter();
          CGSize.subtracting(insets:)();
          CGSize.scaled(_:)();
          v55 = v77;
          v56 = v75;
          v57 = v78;
          (*(v77 + 104))(v75, enum case for FloatingPointRoundingRule.toNearestOrAwayFromZero(_:), v78);
          CGSize.rounded(_:)();
          (*(v55 + 8))(v56, v57);
          (*(v74 + 8))(v54, v76);
          TodayCardArtworkSizedLayoutMetrics.sourceCropOverride(for:)();
          v58 = *(v52 + 48);
          v59 = v58(v53, 1, v51);
          v67 = v49;
          if (v59 == 1)
          {
            v60 = v81;
            Artwork.crop.getter();
            if (v58(v53, 1, v51) != 1)
            {
              sub_10002B894(v53, &qword_100979D60, &qword_1007C0CC8);
            }
          }

          else
          {
            v60 = v81;
            (*(v52 + 32))(v81, v53, v51);
          }

          v61 = v85;
          dispatch thunk of Artwork.bestVariant(prefersLayeredImage:)();
          v83 = v39;
          Artwork.template.getter();
          v62 = v65;
          [v65 displayScale];
          (*(v52 + 16))(v80, v60, v51);
          Artwork.Variant.format.getter();
          Artwork.Variant.quality.getter();
          type metadata accessor for ArtworkLoaderConfig();
          swift_allocObject();
          ArtworkLoaderConfig.init(template:size:scale:crop:format:quality:useWideGamut:)();

          (*(v86 + 8))(v61, v68);
          (*(v52 + 8))(v60, v51);
          (*(v89 + 8))(v87, v90);
          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          if (*((*&v91[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v91[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

          v34 = *&v91[0];
        }

        else
        {
        }
      }

      ArtworkLoader.prefetchArtwork(using:)(v34);

      return sub_100007000(&v94);
    }

    else
    {

      v92 = 0;
      memset(v91, 0, sizeof(v91));
      return sub_10002B894(v91, &qword_100972DD8, &qword_1007C83C0);
    }
  }

  return result;
}

id sub_100216128()
{
  v1 = v0;
  v2 = sub_10002849C(&qword_10097DBD0, &qword_1007BC750);
  __chkstk_darwin(v2 - 8);
  v4 = &v39 - v3;
  v5 = type metadata accessor for PageGrid();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for StoryCardCollectionViewCell(0);
  v40.receiver = v0;
  v40.super_class = v9;
  objc_msgSendSuper2(&v40, "layoutSubviews");
  sub_1002102A8();
  if (v0[OBJC_IVAR____TtC8AppStore27StoryCardCollectionViewCell_shouldMirrorBackground] == 1 && *(*&v0[OBJC_IVAR____TtC8AppStore27StoryCardCollectionViewCell_infoLayer] + OBJC_IVAR____TtC8AppStore22TodayCardInfoLayerView_overlay))
  {
    v10 = [v0 traitCollection];
    if (qword_10096EFE0 != -1)
    {
      swift_once();
    }

    sub_1002D2EF4(v10, &xmmword_1009D3ED0, 1);
    UITraitCollection.prefersAccessibilityLayouts.getter();
    static UIEdgeInsets.vertical(top:bottom:)();
    UITraitCollection.prefersAccessibilityLayouts.getter();
    static UIEdgeInsets.vertical(top:bottom:)();
  }

  else
  {
    v11 = [v0 traitCollection];
    v12 = UITraitCollection.prefersAccessibilityLayouts.getter();

    if (v12)
    {
      v13 = v1[OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_isExpanded] ? &OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell__sizeCategory : &OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_originalSizeCategory;
      v14 = v1[*v13];
      if (v14 != 7)
      {
        v15 = OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_pageGrid;
        swift_beginAccess();
        sub_100031660(&v1[v15], v4, &qword_10097DBD0, &qword_1007BC750);
        if ((*(v6 + 48))(v4, 1, v5) == 1)
        {
          sub_10002B894(v4, &qword_10097DBD0, &qword_1007BC750);
        }

        else
        {
          (*(v6 + 32))(v8, v4, v5);
          [v1 bounds];
          CGRectGetHeight(v43);
          v16 = [v1 traitCollection];
          v41.is_nil = UIContentSizeCategoryExtraExtraExtraLarge;
          v41.value._rawValue = 0;
          isa = UITraitCollection.clampingContentSizeCategory(min:max:)(v41, v42).super.isa;

          sub_1004674A4(v14, v8, isa);
          (*(v6 + 8))(v8, v5);
        }
      }
    }
  }

  v18 = *&v1[OBJC_IVAR____TtC8AppStore27StoryCardCollectionViewCell_mediaBackgroundView];
  [v1 bounds];
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v26 = v25;
  static UIEdgeInsets.vertical(top:bottom:)();
  [v18 setFrame:{sub_1000CC354(v20, v22, v24, v26, v27, v28)}];
  v29 = *&v1[OBJC_IVAR____TtC8AppStore27StoryCardCollectionViewCell_mediaBackgroundViewMirror];
  if (v29)
  {
    v30 = v29;
    [v1 bounds];
    MinX = CGRectGetMinX(v44);
    [v18 frame];
    MaxY = CGRectGetMaxY(v45);
    [v18 frame];
    Width = CGRectGetWidth(v46);
    [v1 bounds];
    Height = CGRectGetHeight(v47);
    [v18 frame];
    [v30 setFrame:{MinX, MaxY, Width, Height - CGRectGetHeight(v48)}];
  }

  v35 = *&v1[OBJC_IVAR____TtC8AppStore27StoryCardCollectionViewCell_muteButton];
  if (v35)
  {
    v36 = v35;
    [v1 bounds];
    [v36 setFrame:{CGRectGetMaxX(v49) + -32.0 + -12.0, 12.0, 32.0, 32.0}];
  }

  v37 = *&v1[OBJC_IVAR____TtC8AppStore27StoryCardCollectionViewCell_infoLayer];
  [v1 bounds];
  return [v37 setFrame:?];
}

id sub_1002166AC(__n128 a1)
{
  v2 = v1;
  v6.receiver = v1;
  v6.super_class = type metadata accessor for StoryCardCollectionViewCell(0);
  objc_msgSendSuper2(&v6, "prepareForReuse");
  swift_weakAssign();
  swift_weakAssign();
  v3 = *&v1[OBJC_IVAR____TtC8AppStore27StoryCardCollectionViewCell_muteButton];
  *&v2[OBJC_IVAR____TtC8AppStore27StoryCardCollectionViewCell_muteButton] = 0;
  if (v3)
  {
    [v3 removeFromSuperview];
  }

  sub_10070CE5C();
  v4 = *&v2[OBJC_IVAR____TtC8AppStore27StoryCardCollectionViewCell_mediaBackgroundViewMirror];
  if (v4)
  {
    [*(*(v4 + OBJC_IVAR____TtC8AppStore24StoryCardMediaMirrorView_revealingImageView) + OBJC_IVAR____TtC8AppStore18RevealingImageView_imageView) setImage:0];
  }

  return sub_1000A66D4();
}

void sub_1002167E8()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_originalSizeCategory;
  if (v0[OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_originalSizeCategory] == 4)
  {
    v3 = [v0 contentView];
    [v3 setClipsToBounds:1];
  }

  [v1 setNeedsLayout];
  v4 = v1[v2];
  sub_1000A3C18(v4);
  *(*&v1[OBJC_IVAR____TtC8AppStore27StoryCardCollectionViewCell_mediaBackgroundView] + OBJC_IVAR____TtC8AppStore18StoryCardMediaView_originalSizeCategory) = v4;
  sub_10070D46C();
}

uint64_t sub_1002168A0(void *a1)
{
  sub_10002A400(a1, a1[3]);
  v2 = UIMutableTraits.preferredContentSizeCategory.getter();
  if (static UIContentSizeCategory.< infix(_:_:)())
  {
    UIContentSizeCategoryExtraExtraExtraLarge;
  }

  sub_100047650(a1, a1[3]);
  return UIMutableTraits.preferredContentSizeCategory.setter();
}

void (*sub_100216970(uint64_t *a1))(id *a1, char a2)
{
  v2 = OBJC_IVAR____TtC8AppStore18StoryCardMediaView_revealingVideoView;
  a1[1] = *(v1 + OBJC_IVAR____TtC8AppStore27StoryCardCollectionViewCell_mediaBackgroundView);
  a1[2] = v2;
  *a1 = swift_unknownObjectWeakLoadStrong();
  return sub_1002169E4;
}

void sub_1002169E4(id *a1, char a2)
{
  v5 = *a1;
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    v4 = v5;
    sub_1006666C8(Strong);

    Strong = v4;
  }

  else
  {
    sub_1006666C8(Strong);
  }
}

void sub_100216A8C()
{
  v1 = v0;
  v2 = objc_allocWithZone(type metadata accessor for MuteButton());
  v7 = sub_1001C66CC(14.0);
  [v7 addTarget:v0 action:"handleMuteButtonTapped" forControlEvents:64];
  v3 = [v0 contentView];
  [v3 addSubview:v7];

  v4 = *&v1[OBJC_IVAR____TtC8AppStore27StoryCardCollectionViewCell_muteButton];
  *&v1[OBJC_IVAR____TtC8AppStore27StoryCardCollectionViewCell_muteButton] = v7;
  if (v4)
  {
    v5 = v7;
    [v4 removeFromSuperview];
  }

  else
  {
    v6 = v7;
  }

  [v1 setNeedsLayout];
}

void sub_100216B94()
{
  v0 = type metadata accessor for MediaClickMetricsEvent.ActionType();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for MediaClickMetricsEvent.TargetId();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = *&Strong[qword_100988CE0];
    if (v9)
    {
      v14 = Strong;
      v10 = v9;
      [v10 setMuted:{objc_msgSend(v10, "isMuted") ^ 1}];
      v11 = [v10 isMuted];
      [v14 updateAudioSessionCategoryWithIsAudioOn:v11 ^ 1];
      (*(v5 + 104))(v7, enum case for MediaClickMetricsEvent.TargetId.mute(_:), v4);
      v12 = &enum case for MediaClickMetricsEvent.ActionType.mute(_:);
      if (!v11)
      {
        v12 = &enum case for MediaClickMetricsEvent.ActionType.unmute(_:);
      }

      (*(v1 + 104))(v3, *v12, v0);
      sub_1004E3360(v7, v3);

      (*(v1 + 8))(v3, v0);
      (*(v5 + 8))(v7, v4);
    }

    else
    {
    }
  }
}

void sub_100216E78()
{
  sub_1004EB9C0();
  v1 = [v0 contentView];
  sub_1005504B4();
  if (v2)
  {
    v3 = String._bridgeToObjectiveC()();
  }

  else
  {
    v3 = 0;
  }

  [v1 setAccessibilityLabel:v3];
}

uint64_t sub_100216F94()
{
  sub_10002849C(&qword_1009701B0, qword_1007B1800);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1007B10D0;
  v2 = [v0 contentView];
  *(v1 + 56) = sub_100005744(0, &qword_100972EB0, UIView_ptr);
  v3 = *&v0[OBJC_IVAR____TtC8AppStore27StoryCardCollectionViewCell_infoLayer];
  *(v1 + 32) = v2;
  v4 = (v3 + OBJC_IVAR____TtC8AppStore22TodayCardInfoLayerView_overlay);
  if (*v4 && (v5 = v4[1], ObjectType = swift_getObjectType(), v7 = *(v5 + 144), swift_unknownObjectRetain(), v8 = v7(ObjectType, v5), swift_unknownObjectRelease(), v8))
  {
    v9 = v8;
  }

  else
  {

    v9 = _swiftEmptyArrayStorage;
  }

  sub_100394AC0(v9);
  return v1;
}

void sub_100217160(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  swift_weakAssign();
  v3 = (v2 + OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_impressionsUpdateBlock);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  *v3 = 0;
  v3[1] = 0;
  sub_10001F63C(v4, v5);
  v6 = (*(v2 + OBJC_IVAR____TtC8AppStore27StoryCardCollectionViewCell_infoLayer) + OBJC_IVAR____TtC8AppStore22TodayCardInfoLayerView_overlay);
  if (*v6)
  {
    v7 = v6[1];
    ObjectType = swift_getObjectType();
    v9 = *(v7 + 16);
    swift_unknownObjectRetain();
    v10 = v9(ObjectType, v7);
    swift_unknownObjectRelease();
    swift_getObjectType();
    if (swift_conformsToProtocol2())
    {
      v11 = v10 == 0;
    }

    else
    {
      v11 = 1;
    }

    if (!v11)
    {
      swift_getObjectType();
      dispatch thunk of NestedModelImpressionsRecording.startRecordingNestedImpressions(for:using:)();
    }
  }
}

void sub_1002172B8(uint64_t a1)
{
  v2 = v1;
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    ImpressionsCalculator.removeAllElements()();
  }

  swift_weakAssign();
  v3 = (v1 + OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_impressionsUpdateBlock);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  *v3 = 0;
  v3[1] = 0;
  sub_10001F63C(v4, v5);
  v6 = (*(v2 + OBJC_IVAR____TtC8AppStore27StoryCardCollectionViewCell_infoLayer) + OBJC_IVAR____TtC8AppStore22TodayCardInfoLayerView_overlay);
  if (*v6)
  {
    v7 = v6[1];
    ObjectType = swift_getObjectType();
    v9 = *(v7 + 16);
    swift_unknownObjectRetain();
    v10 = v9(ObjectType, v7);
    swift_unknownObjectRelease();
    swift_getObjectType();
    if (swift_conformsToProtocol2())
    {
      v11 = v10 == 0;
    }

    else
    {
      v11 = 1;
    }

    if (!v11)
    {
      swift_getObjectType();
      dispatch thunk of NestedModelImpressionsRecording.stopRecordingNestedImpressions(using:)();
    }
  }
}

void sub_100217428()
{
  swift_weakDestroy();
  swift_weakDestroy();
  v1 = *(v0 + OBJC_IVAR____TtC8AppStore27StoryCardCollectionViewCell_muteButton);
}

id sub_1002174A8(__n128 a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for StoryCardCollectionViewCell(0);
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t type metadata accessor for StoryCardCollectionViewCell(uint64_t a1)
{
  result = qword_100979D30;
  if (!qword_100979D30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10021763C(void *a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakAssign();
  sub_1006666C8(Strong);
}

uint64_t (*sub_1002176CC(uint64_t **a1))()
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
  v2[4] = sub_100216970(v2);
  return sub_1000B4CAC;
}

uint64_t sub_100217764(uint64_t result, char a2)
{
  v3 = *(v2 + OBJC_IVAR____TtC8AppStore27StoryCardCollectionViewCell_infoLayer) + OBJC_IVAR____TtC8AppStore22TodayCardInfoLayerView_overlayKind;
  *v3 = result;
  *(v3 + 8) = a2 & 1;
  return result;
}

double sub_1002177D4(uint64_t a1, uint64_t a2)
{
  v3 = (*(v2 + OBJC_IVAR____TtC8AppStore27StoryCardCollectionViewCell_infoLayer) + OBJC_IVAR____TtC8AppStore22TodayCardInfoLayerView_overlay);
  *v3 = a1;
  v3[1] = a2;
  swift_unknownObjectRelease();
  return result;
}

double sub_100217820(uint64_t a1)
{
  swift_weakAssign();

  return result;
}

uint64_t sub_1002178E0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return VideoViewProviding.someVideoView.getter(a1, WitnessTable);
}

uint64_t sub_100217934(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return VideoViewProviding.someVideoView.setter(a1, a2, a3, WitnessTable);
}

uint64_t (*sub_1002179A0(uint64_t *a1, uint64_t a2))()
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

uint64_t sub_100217A3C(void *a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = *(*(v1 + OBJC_IVAR____TtC8AppStore27StoryCardCollectionViewCell_mediaBackgroundView) + OBJC_IVAR____TtC8AppStore18StoryCardMediaView_revealingVideoView);
  v3 = [a1 superview];
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  sub_100005744(0, &qword_100972EB0, UIView_ptr);
  v5 = v2;
  v6 = static NSObject.== infix(_:_:)();

  return v6 & 1;
}

void sub_100217AE4(uint64_t a1)
{
  if (a1)
  {
    if ((*((swift_isaMask & *v1) + 0x330))())
    {
      v2 = [v1 backgroundView];
      if (v2)
      {
        v3 = v2;
        [v2 setBackgroundColor:0];
      }
    }
  }
}

uint64_t sub_100217BE0(uint64_t a1)
{
  result = sub_1002182AC(&qword_100979D48, type metadata accessor for StoryCardCollectionViewCell, &unk_1007D1FAC);
  *(a1 + 8) = result;
  return result;
}

id sub_100217CC8(void *a1)
{
  sub_1002102A8();

  return [a1 setNeedsLayout];
}

void sub_100217D2C()
{
  v1 = v0;
  [v0 setNeedsLayout];
  v2 = *&v0[OBJC_IVAR____TtC8AppStore27StoryCardCollectionViewCell_infoLayer];
  v3 = OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_isExpanded;
  if (v1[OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_isExpanded])
  {
    v4 = &OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell__sizeCategory;
  }

  else
  {
    v4 = &OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_originalSizeCategory;
  }

  v5 = v1[*v4];
  *(v2 + OBJC_IVAR____TtC8AppStore22TodayCardInfoLayerView_sizeCategory) = v5;
  if (v5 != 7)
  {
    v6 = *(v2 + OBJC_IVAR____TtC8AppStore22TodayCardInfoLayerView_overlayContainer);
    v6[OBJC_IVAR____TtC8AppStore29InfoLayerOverlayContainerView_sizeCategory] = v5;
    if (v5 == 4)
    {
      v7 = v6[OBJC_IVAR____TtC8AppStore29InfoLayerOverlayContainerView_isTransitioning] ^ 1;
    }

    else
    {
      v7 = 0;
    }

    [v6 setHidden:v7 & 1];
    *(*(v2 + OBJC_IVAR____TtC8AppStore22TodayCardInfoLayerView_labelsView) + qword_10098B7B8) = v5;
    sub_10055189C();
  }

  if (v1[v3])
  {
    v8 = &OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell__sizeCategory;
  }

  else
  {
    v8 = &OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_originalSizeCategory;
  }

  *(*&v1[OBJC_IVAR____TtC8AppStore27StoryCardCollectionViewCell_mediaBackgroundView] + OBJC_IVAR____TtC8AppStore18StoryCardMediaView_sizeCategory) = v1[*v8];
  sub_10070D304();
}

id sub_100217E70()
{
  v1 = v0;
  v2 = type metadata accessor for CornerStyle();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1004EE4C4();
  v6 = *&v0[OBJC_IVAR____TtC8AppStore27StoryCardCollectionViewCell_infoLayer];
  v7 = OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_isExpanded;
  v8 = v0[OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_isExpanded];
  v9 = OBJC_IVAR____TtC8AppStore22TodayCardInfoLayerView_isExpanded;
  v6[OBJC_IVAR____TtC8AppStore22TodayCardInfoLayerView_isExpanded] = v8;
  [v6 setUserInteractionEnabled:?];
  *(*&v6[OBJC_IVAR____TtC8AppStore22TodayCardInfoLayerView_overlayContainer] + OBJC_IVAR____TtC8AppStore29InfoLayerOverlayContainerView_isExpanded) = v6[v9];
  [v6 setNeedsLayout];
  [v6 setNeedsDisplay];
  v10 = *&v1[OBJC_IVAR____TtC8AppStore27StoryCardCollectionViewCell_mediaBackgroundView];
  v11 = v1[v7];
  v12 = OBJC_IVAR____TtC8AppStore18StoryCardMediaView_isExpanded;
  *(v10 + OBJC_IVAR____TtC8AppStore18StoryCardMediaView_isExpanded) = v11;
  v13 = *(v10 + OBJC_IVAR____TtC8AppStore18StoryCardMediaView_revealingImageView);
  v13[OBJC_IVAR____TtC8AppStore18RevealingImageView_isExpanded] = v11;
  [v13 setNeedsLayout];
  *(*(v10 + OBJC_IVAR____TtC8AppStore18StoryCardMediaView_revealingVideoView) + OBJC_IVAR____TtC8AppStore18RevealingVideoView_isExpanded) = *(v10 + v12);
  sub_100665B04();
  if (v1[v7])
  {
    v14 = 0.0;
  }

  else
  {
    v14 = 20.0;
  }

  v15 = type metadata accessor for TodayCardInfoLayerView(0);
  v24.receiver = v6;
  v24.super_class = v15;
  v16 = objc_msgSendSuper2(&v24, "_setContinuousCornerRadius:", v14);
  sub_1000A3894(v16, v17);
  if (v1[v7])
  {
    v18 = 0.0;
  }

  else
  {
    v18 = 20.0;
  }

  *&v1[OBJC_IVAR____TtC8AppStore27StoryCardCollectionViewCell_mediaCornerRadius] = v18;
  (*(v3 + 104))(v5, enum case for CornerStyle.continuous(_:), v2);
  if (v1[OBJC_IVAR____TtC8AppStore27StoryCardCollectionViewCell_shouldMirrorBackground])
  {
    v19 = 3;
  }

  else
  {
    v19 = -1;
  }

  sub_10070C5EC(v5, v19, v18);
  (*(v3 + 8))(v5, v2);
  v20 = *&v1[OBJC_IVAR____TtC8AppStore27StoryCardCollectionViewCell_mediaBackgroundViewMirror];
  if (v20)
  {
    v21 = v20;
    [v21 _setContinuousCornerRadius:v18];
    v22 = [v21 layer];
    [v22 setMaskedCorners:UIRectCorner.caCornerMask.getter()];
  }

  sub_1002102A8();
  sub_1004EAE8C();
  sub_100214610();
  return [v1 setNeedsLayout];
}

void sub_10021816C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(type metadata accessor for UUID() - 8);
  v10 = (*(v9 + 80) + 24) & ~*(v9 + 80);
  v11 = (*(v9 + 64) + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
  v12 = (v11 + 23) & 0xFFFFFFFFFFFFFFF8;
  v13 = *(type metadata accessor for PageGrid() - 8);
  v14 = (v12 + *(v13 + 80) + 8) & ~*(v13 + 80);
  sub_1001A5204(a1, *(v4 + v11), *(v4 + v11 + 8), a2, a3, a4, *(v4 + 16), v4 + v10, *(v4 + v12), v4 + v14, *(v4 + v14 + *(v13 + 64)));
}

uint64_t sub_1002182AC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t _s5StateVwCP(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t _s5StateVwet_0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t _s5StateVwst_0(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
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

  *(result + 9) = v3;
  return result;
}

uint64_t sub_100218380(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  result = *(a2 + 8);
  if ((v3 & 1) == 0)
  {
    return (*a1 == *a2) & ~result;
  }

  return result;
}

unint64_t sub_1002183AC()
{
  result = qword_100979D90;
  if (!qword_100979D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100979D90);
  }

  return result;
}

unint64_t sub_100218404()
{
  result = qword_100979D98;
  if (!qword_100979D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100979D98);
  }

  return result;
}

void sub_100218458(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_10002849C(&unk_100972A00, &unk_1007B3130);
  __chkstk_darwin(v4 - 8);
  v6 = &v15 - v5;
  v7 = HeroCarousel.items.getter();
  if (v7 >> 62)
  {
    v8 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v8 <= a1)
  {
    return;
  }

  v9 = HeroCarousel.items.getter();
  if ((v9 & 0xC000000000000001) == 0)
  {
    if ((a1 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10) > a1)
    {

      goto LABEL_8;
    }

    __break(1u);
    return;
  }

  specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_8:

  v10 = dispatch thunk of HeroCarouselItem.clickAction.getter();

  if (v10)
  {
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v12 = Strong;
      v13 = sub_10002849C(&unk_100974490, &qword_1007B3DD0);
      BaseObjectGraph.injectIfAvailable<A>(_:)();
      v14 = *(v13 - 8);
      if ((*(v14 + 48))(v6, 1, v13) == 1)
      {

        sub_1000F40E0(v6);
      }

      else
      {
        sub_1005F9AF4(v10, 1, v12, v6);

        (*(v14 + 8))(v6, v13);
      }
    }

    else
    {
    }
  }
}

void sub_1002186A0()
{
  v1 = *(*(v0 + OBJC_IVAR____TtC8AppStore30HeroCarouselCollectionViewCell_carouselView) + OBJC_IVAR____TtC8AppStore16HeroCarouselView_carouselItemViews);
  if (v1 >> 62)
  {
    v2 = _CocoaArrayWrapper.endIndex.getter();
    if (!v2)
    {
      return;
    }
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v2)
    {
      return;
    }
  }

  if (v2 < 1)
  {
    __break(1u);
  }

  else
  {
    v3 = v1 & 0xC000000000000001;

    v4 = 0;
    v5 = &OBJC_IVAR____TtC8AppStore20HeroCarouselItemView_backgroundView;
    v14 = v1 & 0xC000000000000001;
    do
    {
      if (v3)
      {
        v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v6 = *(v1 + 8 * v4 + 32);
      }

      v7 = v6;
      v8 = *&v6[*v5];
      v9 = *(*(*&v8[OBJC_IVAR____TtC8AppStore30HeroCarouselItemBackgroundView_mediaViewContainer] + OBJC_IVAR____TtC8AppStore9MediaView_contentContainer) + OBJC_IVAR____TtC8AppStoreP33_ECECB79BEF5D802E6E21EF3AE112F28D20UberContentContainer_contents);
      if (v9)
      {
        type metadata accessor for VideoView(0);
        if (swift_dynamicCastClass())
        {
          sub_1002199C8(&qword_100973190, type metadata accessor for VideoView, &unk_1007D1B30);
          sub_1002199C8(&qword_100979E00, type metadata accessor for HeroCarouselItemBackgroundView, &unk_1007CA550);
          v15 = v9;
          v10 = v5;
          v11 = v1;
          v12 = v2;
          v13 = v8;
          dispatch thunk of VideoPlaybackCoordinator.register(videoView:videoContainer:)();
          v3 = v14;

          v7 = v13;
          v2 = v12;
          v1 = v11;
          v5 = v10;
        }
      }

      ++v4;
    }

    while (v2 != v4);
  }
}

void sub_1002188E8()
{
  v1 = *(*(v0 + OBJC_IVAR____TtC8AppStore30HeroCarouselCollectionViewCell_carouselView) + OBJC_IVAR____TtC8AppStore16HeroCarouselView_carouselItemViews);
  if (v1 >> 62)
  {
    v2 = _CocoaArrayWrapper.endIndex.getter();
    if (!v2)
    {
      return;
    }
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v2)
    {
      return;
    }
  }

  if (v2 < 1)
  {
    __break(1u);
  }

  else
  {
    v3 = v1 & 0xC000000000000001;

    v4 = 0;
    v5 = &OBJC_IVAR____TtC8AppStore20HeroCarouselItemView_backgroundView;
    v14 = v1 & 0xC000000000000001;
    do
    {
      if (v3)
      {
        v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v6 = *(v1 + 8 * v4 + 32);
      }

      v7 = v6;
      v8 = *&v6[*v5];
      v9 = *(*(*&v8[OBJC_IVAR____TtC8AppStore30HeroCarouselItemBackgroundView_mediaViewContainer] + OBJC_IVAR____TtC8AppStore9MediaView_contentContainer) + OBJC_IVAR____TtC8AppStoreP33_ECECB79BEF5D802E6E21EF3AE112F28D20UberContentContainer_contents);
      if (v9)
      {
        type metadata accessor for VideoView(0);
        if (swift_dynamicCastClass())
        {
          sub_1002199C8(&qword_100973190, type metadata accessor for VideoView, &unk_1007D1B30);
          sub_1002199C8(&qword_100979E00, type metadata accessor for HeroCarouselItemBackgroundView, &unk_1007CA550);
          v15 = v9;
          v10 = v5;
          v11 = v1;
          v12 = v2;
          v13 = v8;
          dispatch thunk of VideoPlaybackCoordinator.unregister(videoView:videoContainer:pausingPlayback:)();
          v3 = v14;

          v7 = v13;
          v2 = v12;
          v1 = v11;
          v5 = v10;
        }
      }

      ++v4;
    }

    while (v2 != v4);
  }
}

unint64_t sub_100218C40()
{
  result = qword_100990DD0;
  if (!qword_100990DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100990DD0);
  }

  return result;
}

void sub_100218C94(uint64_t a1, uint64_t a2, char *a3)
{
  v4 = v3;
  v8 = type metadata accessor for AutoScrollConfiguration();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10002849C(&qword_100979DF0, &qword_1007DC2A0);
  __chkstk_darwin(v12 - 8);
  v14 = &v38 - v13;
  HeroCarousel.id.getter();
  v15 = OBJC_IVAR____TtC8AppStore30HeroCarouselCollectionViewCell_playbackId;
  swift_beginAccess();
  sub_1002191A8(&v46, &v3[v15]);
  swift_endAccess();
  v16 = sub_10002849C(&qword_100979DF8, &qword_1007DC100);
  v17 = *(v16 - 8);
  v18 = *(v17 + 16);
  v44 = a2;
  v18(v14, a2, v16);
  v19 = *(v17 + 56);
  v42 = v16;
  v19(v14, 0, 1, v16);
  v20 = OBJC_IVAR____TtC8AppStore30HeroCarouselCollectionViewCell_state;
  swift_beginAccess();
  sub_100219204(v14, &v4[v20]);
  swift_endAccess();
  type metadata accessor for VideoPlaybackCoordinator();
  type metadata accessor for BaseObjectGraph();
  inject<A, B>(_:from:)();
  v43 = v46;
  swift_unknownObjectWeakAssign();
  v21 = HeroCarousel.items.getter();
  v22 = v21;
  if (v21 >> 62)
  {
    v23 = _CocoaArrayWrapper.endIndex.getter();
    v45 = v11;
    if (v23)
    {
      goto LABEL_3;
    }

LABEL_11:

    v27 = _swiftEmptyArrayStorage;
    goto LABEL_12;
  }

  v23 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v45 = v11;
  if (!v23)
  {
    goto LABEL_11;
  }

LABEL_3:
  v46 = _swiftEmptyArrayStorage;
  specialized ContiguousArray.reserveCapacity(_:)();
  if (v23 < 0)
  {
    __break(1u);
    return;
  }

  v38 = v9;
  v39 = v8;
  v40 = v4;
  v41 = a1;
  type metadata accessor for HeroCarouselItemView();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v25 = 0;
  do
  {
    if ((v22 & 0xC000000000000001) != 0)
    {
      v26 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v26 = *(v22 + 8 * v25 + 32);
    }

    ++v25;
    [objc_allocWithZone(ObjCClassFromMetadata) init];
    sub_1003A8B94(v26, a3);

    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    specialized ContiguousArray._endMutation()();
  }

  while (v23 != v25);

  v27 = v46;
  v4 = v40;
  a1 = v41;
  v9 = v38;
  v8 = v39;
LABEL_12:
  [v4 setNeedsLayout];
  [v4 layoutIfNeeded];
  v28 = *&v4[OBJC_IVAR____TtC8AppStore30HeroCarouselCollectionViewCell_carouselView];
  sub_100218C40();
  WritableStateLens<A>.currentValue.getter();
  if (v47)
  {
    v29 = 0;
  }

  else
  {
    v29 = v46;
  }

  sub_10046931C(v27, v29);

  v30 = v45;
  HeroCarousel.autoScrollConfiguration.getter();
  v31 = OBJC_IVAR____TtC8AppStore16HeroCarouselView_autoScrollConfiguration;
  swift_beginAccess();
  (*(v9 + 40))(v28 + v31, v30, v8);
  swift_endAccess();
  LOBYTE(v30) = HeroCarousel.wantsTopGradient.getter();
  v32 = HeroCarousel.wantsBottomGradient.getter();
  sub_100469604(v30 & 1, v32 & 1);

  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakDestroy();
  v33 = swift_allocObject();
  swift_weakInit();
  v34 = swift_allocObject();
  *(v34 + 16) = a1;
  *(v34 + 24) = v33;
  v35 = &v4[OBJC_IVAR____TtC8AppStore30HeroCarouselCollectionViewCell_didSelectHandler];
  v36 = *&v4[OBJC_IVAR____TtC8AppStore30HeroCarouselCollectionViewCell_didSelectHandler];
  v37 = v35[1];
  *v35 = sub_100219274;
  v35[1] = v34;

  sub_10001F63C(v36, v37);
}

uint64_t sub_100219204(uint64_t a1, uint64_t a2)
{
  v4 = sub_10002849C(&qword_100979DF0, &qword_1007DC2A0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_10021927C(uint64_t a1, char a2, uint64_t a3)
{
  v4 = type metadata accessor for FloatingPointRoundingRule();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    if (qword_10096E6B8 != -1)
    {
      swift_once();
    }

    v8 = qword_1009D2448;
  }

  else
  {
    if (qword_10096E6C0 != -1)
    {
      swift_once();
    }

    v8 = qword_1009D2460;
  }

  v9 = type metadata accessor for StaticDimension();
  sub_1000056A8(v9, v8);
  static Dimensions.defaultRoundingRule.getter();
  AnyDimension.value(in:rounded:)();
  v11 = v10;
  (*(v5 + 8))(v7, v4);
  return v11;
}

double sub_10021940C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  sub_10002C0AC(a1, v37);
  sub_10002849C(&unk_1009793D0, qword_1007B4FF0);
  type metadata accessor for HeroCarousel();
  if (swift_dynamicCast())
  {
    v6 = HeroCarousel.items.getter();
    v7 = v6;
    v8 = *(*(v2 + OBJC_IVAR____TtC8AppStore30HeroCarouselCollectionViewCell_carouselView) + OBJC_IVAR____TtC8AppStore16HeroCarouselView_carouselItemViews);
    if (v6 >> 62)
    {
      goto LABEL_34;
    }

    v9 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_4:

    if (v9)
    {
      v35 = v7 & 0xFFFFFFFFFFFFFF8;
      v36 = v7 & 0xC000000000000001;
      v10 = v8 & 0xFFFFFFFFFFFFFF8;
      v11 = 4;
      v33 = v8 & 0xC000000000000001;
      v34 = v8 >> 62;
      v31 = v8 & 0xFFFFFFFFFFFFFF8;
      v32 = v9;
      v28 = v8;
      v29 = v3;
      v27 = v7;
      do
      {
        v12 = v11 - 4;
        if (v36)
        {
          v13 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          v14 = v11 - 3;
          if (__OFADD__(v12, 1))
          {
            goto LABEL_31;
          }
        }

        else
        {
          if (v12 >= *(v35 + 16))
          {
            goto LABEL_32;
          }

          v13 = *(v7 + 8 * v11);

          v14 = v11 - 3;
          if (__OFADD__(v12, 1))
          {
LABEL_31:
            __break(1u);
LABEL_32:
            __break(1u);
LABEL_33:
            __break(1u);
LABEL_34:
            v9 = _CocoaArrayWrapper.endIndex.getter();
            goto LABEL_4;
          }
        }

        if (v34)
        {
          if (v12 == _CocoaArrayWrapper.endIndex.getter())
          {
LABEL_28:

            goto LABEL_29;
          }
        }

        else if (v12 == *(v10 + 16))
        {
          goto LABEL_28;
        }

        if (v33)
        {
          v15 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v12 >= *(v10 + 16))
          {
            goto LABEL_33;
          }

          v15 = *(v8 + 8 * v11);
        }

        v16 = v15;
        type metadata accessor for HeroCarouselCollectionViewCell(0);
        LayoutMarginsAware<>.layoutFrame.getter();
        sub_1003A223C(v17, v18, v13, a2);
        v19 = HeroCarouselItem.overlay.getter();
        if (v19)
        {
          v20 = v19;
          v21 = *&v16[OBJC_IVAR____TtC8AppStore20HeroCarouselItemView_overlayView];
          if (v21)
          {
            v22 = *&v16[OBJC_IVAR____TtC8AppStore20HeroCarouselItemView_overlayView + 8];
            ObjectType = swift_getObjectType();
            v30 = *(v22 + 40);
            v24 = v21;
            v25 = ObjectType;
            v26 = v22;
            v8 = v28;
            v3 = v29;
            v30(v20, a2, v25, v26);
            v7 = v27;

            goto LABEL_8;
          }
        }

        else
        {
        }

LABEL_8:
        v10 = v31;
        ++v11;
      }

      while (v14 != v32);
    }

LABEL_29:
  }

  return result;
}

double sub_100219718(uint64_t a1, char a2)
{
  v3 = *(*(v2 + OBJC_IVAR____TtC8AppStore30HeroCarouselCollectionViewCell_carouselView) + OBJC_IVAR____TtC8AppStore16HeroCarouselView_carouselItemViews);
  if (v3 >> 62)
  {
    goto LABEL_21;
  }

  for (i = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
  {

    if (!i)
    {
      break;
    }

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
          goto LABEL_20;
        }

        v6 = *(v3 + 8 * v5 + 32);
      }

      v7 = v6;
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      v9 = *&v6[OBJC_IVAR____TtC8AppStore20HeroCarouselItemView_backgroundView];
      v10 = *(v9 + OBJC_IVAR____TtC8AppStore30HeroCarouselItemBackgroundView_artworkView);
      type metadata accessor for ArtworkView();
      sub_1002199C8(&qword_100970E80, &type metadata accessor for ArtworkView, &protocol conformance descriptor for ArtworkView);
      v11 = v10;
      ArtworkLoader.forgetFetch<A>(forView:deprioritizingFetch:)();

      v12 = *(*(*(v9 + OBJC_IVAR____TtC8AppStore30HeroCarouselItemBackgroundView_mediaViewContainer) + OBJC_IVAR____TtC8AppStore9MediaView_contentContainer) + OBJC_IVAR____TtC8AppStoreP33_ECECB79BEF5D802E6E21EF3AE112F28D20UberContentContainer_contents);
      if (v12)
      {
        type metadata accessor for VideoView(0);
        if (swift_dynamicCastClass())
        {
          sub_1002199C8(&unk_1009840E0, type metadata accessor for VideoView, &unk_1007DDE78);
          v13 = v12;
          ArtworkLoader.forgetFetch<A>(forView:deprioritizingFetch:)();
        }
      }

      v14 = *&v7[OBJC_IVAR____TtC8AppStore20HeroCarouselItemView_overlayView];
      if (v14)
      {
        v15 = *&v7[OBJC_IVAR____TtC8AppStore20HeroCarouselItemView_overlayView + 8];
        ObjectType = swift_getObjectType();
        v17 = *(v15 + 48);
        v18 = v14;
        v17(a1, a2 & 1, ObjectType, v15);
      }

      ++v5;
      if (v8 == i)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    ;
  }

LABEL_16:

  return result;
}

uint64_t sub_1002199C8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

double sub_100219A5C(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for PageGrid();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for EditorialLink();
  sub_100219C9C(&qword_100979E08, &type metadata accessor for EditorialLink, &protocol conformance descriptor for EditorialLink);
  ItemLayoutContext.typedModel<A>(as:)();
  v6 = v16;
  if (!v16)
  {
    return 0.0;
  }

  sub_10002849C(&unk_100973270, &unk_1007B4688);
  type metadata accessor for BaseObjectGraph();
  inject<A, B>(_:from:)();
  v15[1] = v6;
  dispatch thunk of LinkLoader.availablePresentation(for:)();

  v7 = v16;
  if ((~v16 & 0xF000000000000007) != 0)
  {
    v8 = v17;
  }

  else
  {

    v8 = 0;
    v7 = v6;
  }

  swift_getKeyPath();
  ItemLayoutContext.subscript.getter();

  PageGrid.componentMeasuringSize(spanning:)();
  v11 = v10;
  (*(v3 + 8))(v5, v2);
  v12 = sub_100079F24();
  sub_1005104B4(v7, v8, v12, v11);
  v9 = v13;
  swift_unknownObjectRelease();

  sub_1000C0220(v7, v8);
  return v9;
}

uint64_t sub_100219C9C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_100219CF8(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC8AppStore36PreorderDisclaimerCollectionViewCell_disclaimerLabel);
  PreorderDisclaimer.disclaimer.getter();
  v3 = String._bridgeToObjectiveC()();

  [v2 setText:v3];
}

double sub_100219E04(double a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v7 = type metadata accessor for LabelPlaceholderCompatibility();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v19[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  PreorderDisclaimer.disclaimer.getter();
  sub_1000367E8();
  if (qword_10096DF98 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for FontUseCase();
  sub_1000056A8(v11, qword_1009D0E48);
  v12 = [a6 traitCollection];
  static UIFont.preferredFont(forUseWith:compatibleWith:)();

  v13 = type metadata accessor for Feature();
  v20 = v13;
  v21 = sub_10021A0A8(&qword_100972E50, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
  v14 = sub_1000056E0(v19);
  (*(*(v13 - 8) + 104))(v14, enum case for Feature.measurement_with_labelplaceholder(_:), v13);
  isFeatureEnabled(_:)();
  sub_100007000(v19);
  LabelPlaceholderCompatibility.init(text:font:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:shouldUseLabelPlaceholder:)();
  LabelPlaceholderCompatibility.layoutTextView.getter();
  (*(v8 + 8))(v10, v7);
  sub_10002A400(v19, v20);
  Measurable.measuredSize(fitting:in:)();
  v16 = v15;
  sub_100007000(v19);
  return v16;
}

uint64_t sub_10021A0A8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10021A0F0()
{
  v0 = type metadata accessor for SmallLockupLayout.Metrics();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100005644(v4, qword_1009CE9A0);
  sub_1000056A8(v0, qword_1009CE9A0);
  if (qword_10096EE80 != -1)
  {
    swift_once();
  }

  v5 = sub_1000056A8(v0, qword_1009D3798);
  (*(v1 + 16))(v3, v5, v0);
  Copyable.copyWithOverrides(in:)();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_10021A254(uint64_t a1)
{
  v2 = type metadata accessor for FontSource();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = a1;
  SmallLockupLayout.Metrics.artworkSize.setter();
  if (qword_10096DD18 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for FontUseCase();
  v45 = sub_1000056A8(v6, qword_1009D06E0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 16);
  v9 = v7 + 16;
  v41 = v6;
  v8(v5, v45, v6);
  v46 = enum case for FontSource.useCase(_:);
  v10 = v3 + 13;
  v48 = v3[13];
  v48(v5);
  v39 = type metadata accessor for StaticDimension();
  v53 = v39;
  v54 = &protocol witness table for StaticDimension;
  sub_1000056E0(v52);
  v50 = v2;
  v51 = &protocol witness table for FontSource;
  v11 = sub_1000056E0(v49);
  v12 = v3 + 2;
  v36 = v3[2];
  v36(v11, v5, v2);
  StaticDimension.init(_:scaledLike:)();
  v14 = v3[1];
  v13 = v3 + 1;
  v43 = v14;
  v14(v5, v2);
  SmallLockupLayout.Metrics.titleRegularSpace.setter();
  v15 = v6;
  v16 = v8;
  v8(v5, v45, v15);
  v17 = v46;
  (v48)(v5, v46, v2);
  v53 = v39;
  v54 = &protocol witness table for StaticDimension;
  sub_1000056E0(v52);
  v50 = v2;
  v51 = &protocol witness table for FontSource;
  v18 = sub_1000056E0(v49);
  v19 = v36;
  v36(v18, v5, v2);
  StaticDimension.init(_:scaledLike:)();
  v43(v5, v2);
  SmallLockupLayout.Metrics.titleMediumSpace.setter();
  v44 = v9;
  v42 = v16;
  v16(v5, v45, v41);
  v20 = v17;
  v21 = v39;
  v45 = v10;
  (v48)(v5, v20, v2);
  v53 = v21;
  v54 = &protocol witness table for StaticDimension;
  sub_1000056E0(v52);
  v50 = v2;
  v51 = &protocol witness table for FontSource;
  v22 = sub_1000056E0(v49);
  v19(v22, v5, v2);
  StaticDimension.init(_:scaledLike:)();
  v43(v5, v2);
  SmallLockupLayout.Metrics.titleShortSpace.setter();
  if (qword_10096DD00 != -1)
  {
    swift_once();
  }

  v23 = v41;
  v24 = sub_1000056A8(v41, qword_1009D0698);
  v42(v5, v24, v23);
  (v48)(v5, v46, v2);
  v53 = v21;
  v54 = &protocol witness table for StaticDimension;
  sub_1000056E0(v52);
  v50 = v2;
  v51 = &protocol witness table for FontSource;
  v25 = sub_1000056E0(v49);
  v19(v25, v5, v2);
  StaticDimension.init(_:scaledLike:)();
  v38 = v12;
  v26 = v43;
  v43(v5, v2);
  SmallLockupLayout.Metrics.titleWithHeadingSpace.setter();
  v40 = v13;
  if (qword_10096DD40 != -1)
  {
    swift_once();
  }

  v37 = sub_1000056A8(v23, qword_1009D0758);
  (v42)(v5);
  (v48)(v5, v46, v2);
  v53 = v21;
  v54 = &protocol witness table for StaticDimension;
  sub_1000056E0(v52);
  v50 = v2;
  v51 = &protocol witness table for FontSource;
  v27 = sub_1000056E0(v49);
  v19(v27, v5, v2);
  StaticDimension.init(_:scaledLike:)();
  v26(v5, v2);
  SmallLockupLayout.Metrics.subtitleSpace.setter();
  if (qword_10096DD60 != -1)
  {
    swift_once();
  }

  v28 = sub_1000056A8(v23, qword_1009D07B8);
  v42(v5, v28, v23);
  (v48)(v5, v46, v2);
  v53 = v21;
  v54 = &protocol witness table for StaticDimension;
  sub_1000056E0(v52);
  v50 = v2;
  v51 = &protocol witness table for FontSource;
  v29 = sub_1000056E0(v49);
  v19(v29, v5, v2);
  StaticDimension.init(_:scaledLike:)();
  v26(v5, v2);
  SmallLockupLayout.Metrics.tertiaryTitleSpace.setter();
  if (qword_10096DD48 != -1)
  {
    swift_once();
  }

  v30 = sub_1000056A8(v23, qword_1009D0770);
  v31 = v42;
  v42(v5, v30, v23);
  (v48)(v5, v46, v2);
  v53 = v21;
  v54 = &protocol witness table for StaticDimension;
  sub_1000056E0(v52);
  v50 = v2;
  v51 = &protocol witness table for FontSource;
  v32 = sub_1000056E0(v49);
  v19(v32, v5, v2);
  StaticDimension.init(_:scaledLike:)();
  v33 = v43;
  v43(v5, v2);
  SmallLockupLayout.Metrics.offerTextSpace.setter();
  v31(v5, v37, v41);
  (v48)(v5, v46, v2);
  v53 = v39;
  v54 = &protocol witness table for StaticDimension;
  sub_1000056E0(v52);
  v50 = v2;
  v51 = &protocol witness table for FontSource;
  v34 = sub_1000056E0(v49);
  v19(v34, v5, v2);
  StaticDimension.init(_:scaledLike:)();
  v33(v5, v2);
  return SmallLockupLayout.Metrics.bottomSpace.setter();
}