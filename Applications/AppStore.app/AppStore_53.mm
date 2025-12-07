void sub_1005E2138(uint64_t isEscapingClosureAtFileLocation)
{
  v3 = OBJC_IVAR____TtC8AppStore22UberCollectionViewCell_uberView;
  swift_beginAccess();
  v4 = *&v1[v3];
  if (v4)
  {
    v5 = v4;
    v6 = [v1 contentView];
    [v6 addSubview:v5];

    [v1 setNeedsLayout];
    v7 = objc_opt_self();
    v8 = swift_allocObject();
    *(v8 + 16) = v1;
    v9 = swift_allocObject();
    *(v9 + 16) = sub_10018E7F4;
    *(v9 + 24) = v8;
    aBlock[4] = sub_10006F094;
    aBlock[5] = v9;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1000489A8;
    aBlock[3] = &unk_1008CADE8;
    v10 = _Block_copy(aBlock);
    v11 = v1;

    [v7 performWithoutAnimation:v10];

    _Block_release(v10);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      return;
    }

    __break(1u);
  }

  if (isEscapingClosureAtFileLocation)
  {
    [isEscapingClosureAtFileLocation removeFromSuperview];
  }
}

void sub_1005E2328()
{
  v13.receiver = v0;
  v13.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v13, "layoutSubviews");
  v1 = OBJC_IVAR____TtC8AppStore22UberCollectionViewCell_uberView;
  swift_beginAccess();
  v2 = *&v0[v1];
  if (v2)
  {
    v3 = v2;
    v4 = [v0 contentView];
    [v4 bounds];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;

    [v3 setFrame:{v6, v8, v10, v12}];
  }
}

void sub_1005E244C(uint64_t a1)
{
  v10.receiver = v1;
  v10.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v10, "applyLayoutAttributes:", a1);
  type metadata accessor for BaseCollectionViewLayoutAttributes();
  v3 = swift_dynamicCastClass();
  if (v3)
  {
    v4 = v3;
    v5 = OBJC_IVAR____TtC8AppStore22UberCollectionViewCell_uberView;
    swift_beginAccess();
    v6 = *&v1[v5];
    if (v6)
    {
      v7 = *(v4 + OBJC_IVAR____TtC8AppStore34BaseCollectionViewLayoutAttributes_parallaxY);
      v8 = *(*(v6 + OBJC_IVAR____TtC8AppStore14UberHeaderView_contentView) + OBJC_IVAR____TtC8AppStore9MediaView_contentContainer);
      v9 = *&v8[OBJC_IVAR____TtC8AppStoreP33_ECECB79BEF5D802E6E21EF3AE112F28D20UberContentContainer_parallaxY];
      *&v8[OBJC_IVAR____TtC8AppStoreP33_ECECB79BEF5D802E6E21EF3AE112F28D20UberContentContainer_parallaxY] = v7;
      if (v7 != v9)
      {
        [v8 setNeedsLayout];
      }
    }
  }
}

uint64_t type metadata accessor for UberCollectionViewCell(uint64_t a1)
{
  result = qword_10098E488;
  if (!qword_10098E488)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1005E2634(uint64_t a1)
{
  sub_100027FAC(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void *sub_1005E26CC()
{
  v1 = *v0;
  v2 = OBJC_IVAR____TtC8AppStore22UberCollectionViewCell_uberView;
  swift_beginAccess();
  v3 = *(v1 + v2);
  v4 = v3;
  return v3;
}

uint64_t sub_1005E271C()
{
  sub_100028BB8();
  result = static UIColor.secondaryText.getter();
  qword_10098E498 = result;
  return result;
}

char *sub_1005E2750(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v84 = type metadata accessor for SystemImage();
  v83 = *(v84 - 8);
  __chkstk_darwin(v84);
  v82 = &v80 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for MetadataRibbonStarRatingViewLayout.Metrics();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v85 = &v80 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v86 = &v80 - v15;
  __chkstk_darwin(v16);
  v18 = &v80 - v17;
  __chkstk_darwin(v19);
  v21 = &v80 - v20;
  v22 = OBJC_IVAR____TtC8AppStore28MetadataRibbonStarRatingView_metrics;
  static MetadataRibbonStarRatingViewLayout.Metrics.standard.getter();
  v23 = &v5[OBJC_IVAR____TtC8AppStore28MetadataRibbonStarRatingView_id];
  *v23 = 0u;
  *(v23 + 1) = 0u;
  *(v23 + 4) = 0;
  v24 = OBJC_IVAR____TtC8AppStore28MetadataRibbonStarRatingView_itemType;
  v25 = type metadata accessor for MetadataRibbonItemType();
  (*(*(v25 - 8) + 56))(&v5[v24], 1, 1, v25);
  v26 = &v5[OBJC_IVAR____TtC8AppStore28MetadataRibbonStarRatingView_labelMaxWidth];
  *v26 = 0;
  v26[8] = 1;
  v27 = &v5[OBJC_IVAR____TtC8AppStore28MetadataRibbonStarRatingView_truncationLegibilityThreshold];
  *v27 = 0;
  v27[8] = 1;
  v5[OBJC_IVAR____TtC8AppStore28MetadataRibbonStarRatingView_allowsTruncation] = 2;
  swift_beginAccess();
  v88 = *(v12 + 16);
  v88(v21, &v5[v22], v11);
  v28 = MetadataRibbonStarRatingViewLayout.Metrics.numberOfStars.getter();
  v87 = v12;
  v29 = *(v12 + 8);
  v89 = v11;
  v91 = v12 + 8;
  v90 = v29;
  v29(v21, v11);
  v30 = type metadata accessor for RatingView();
  v31 = objc_allocWithZone(v30);
  *&v31[OBJC_IVAR____TtC8AppStore10RatingView_rating] = 0;
  *&v31[OBJC_IVAR____TtC8AppStore10RatingView_emptyStarColor] = 0;
  v32 = &v31[OBJC_IVAR____TtC8AppStore10RatingView_starPadding];
  *v32 = 0;
  v32[8] = 1;
  *&v31[OBJC_IVAR____TtC8AppStore10RatingView_maxNumberOfStars] = v28;
  if (qword_10096DAE8 != -1)
  {
    swift_once();
  }

  v33 = qword_100982C88;
  *&v31[OBJC_IVAR____TtC8AppStore10RatingView_starColor] = qword_100982C88;
  v31[OBJC_IVAR____TtC8AppStore10RatingView_starSize] = 3;
  *v32 = 0;
  v32[8] = 1;
  v31[OBJC_IVAR____TtC8AppStore10RatingView_useCase] = 0;
  v34 = type metadata accessor for StarRow();
  v35 = objc_allocWithZone(v34);
  v36 = v33;
  *&v31[OBJC_IVAR____TtC8AppStore10RatingView_filledStarRowView] = sub_1003A533C(v28, 1, 3, 0, 1, 0, 0);
  v31[OBJC_IVAR____TtC8AppStore10RatingView_fillEmptyStars] = 0;
  v37 = objc_allocWithZone(v34);
  *&v31[OBJC_IVAR____TtC8AppStore10RatingView_emptyStarRowView] = sub_1003A533C(v28, 0, 3, 0, 1, 0, 0);
  v96.receiver = v31;
  v96.super_class = v30;
  v38 = objc_msgSendSuper2(&v96, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  sub_1003A2F78();
  v39 = OBJC_IVAR____TtC8AppStore10RatingView_filledStarRowView;
  v40 = *&v38[OBJC_IVAR____TtC8AppStore10RatingView_filledStarRowView];
  v41 = *&v40[OBJC_IVAR____TtC8AppStoreP33_4D569A3E6303747AA734C2D941AA4EED7StarRow_currentRating];
  *&v40[OBJC_IVAR____TtC8AppStoreP33_4D569A3E6303747AA734C2D941AA4EED7StarRow_currentRating] = *&v38[OBJC_IVAR____TtC8AppStore10RatingView_rating];
  v42 = v40;
  sub_1003A3A64(v41);

  if (*&v38[OBJC_IVAR____TtC8AppStore10RatingView_emptyStarRowView])
  {
    [v38 addSubview:?];
  }

  [v38 addSubview:*&v38[v39]];

  *&v5[OBJC_IVAR____TtC8AppStore28MetadataRibbonStarRatingView_starRatingView] = v38;
  type metadata accessor for DynamicTypeLabel();
  v43 = DynamicTypeLabel.__allocating_init(frame:)();
  *&v5[OBJC_IVAR____TtC8AppStore28MetadataRibbonStarRatingView_ratingCountLabel] = v43;
  v44 = &v5[v22];
  v45 = v89;
  v88(v18, v44, v89);
  v46 = v43;
  v47 = MetadataRibbonStarRatingViewLayout.Metrics.ratingCountLabelLineBreakMode.getter();
  v90(v18, v45);
  [v46 setLineBreakMode:v47];

  v48 = type metadata accessor for MetadataRibbonStarRatingView(0);
  v95.receiver = v5;
  v95.super_class = v48;
  v49 = objc_msgSendSuper2(&v95, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v53 = v49;
  [v53 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  v54 = OBJC_IVAR____TtC8AppStore28MetadataRibbonStarRatingView_ratingCountLabel;
  v55 = qword_10096EA80;
  v56 = *&v53[OBJC_IVAR____TtC8AppStore28MetadataRibbonStarRatingView_ratingCountLabel];
  if (v55 != -1)
  {
    swift_once();
  }

  [v56 setTextColor:qword_10098E498];

  v57 = *&v53[v54];
  static CustomTextStyle<>.metadataRibbon.getter();
  if (qword_10096EE50 != -1)
  {
    swift_once();
  }

  v58 = type metadata accessor for MetadataRibbonTextStyle();
  v59 = sub_1000056A8(v58, qword_1009D36F8);
  v93 = v58;
  v94 = sub_1005E49C4(&qword_10096FBA0, &type metadata accessor for MetadataRibbonTextStyle, &protocol conformance descriptor for MetadataRibbonTextStyle);
  v60 = sub_1000056E0(v92);
  (*(*(v58 - 8) + 16))(v60, v59, v58);
  dispatch thunk of DynamicTypeLabel.customTextStyle.setter();

  v61 = *&v53[v54];
  v62 = OBJC_IVAR____TtC8AppStore28MetadataRibbonStarRatingView_metrics;
  v81 = OBJC_IVAR____TtC8AppStore28MetadataRibbonStarRatingView_metrics;
  swift_beginAccess();
  v63 = v89;
  v88(v18, &v53[v62], v89);
  v64 = v61;
  v65 = MetadataRibbonStarRatingViewLayout.Metrics.ratingCountLabelNumberOfLines.getter();
  v90(v18, v63);
  [v64 setNumberOfLines:v65];

  [v53 addSubview:*&v53[OBJC_IVAR____TtC8AppStore28MetadataRibbonStarRatingView_starRatingView]];
  [v53 addSubview:*&v53[v54]];
  v66 = v85;
  static MetadataRibbonStarRatingViewLayout.Metrics.standard.getter();
  v67 = [v53 traitCollection];
  v68 = type metadata accessor for Feature();
  v93 = v68;
  v94 = sub_1005E49C4(&qword_100972E50, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
  v69 = sub_1000056E0(v92);
  (*(*(v68 - 8) + 104))(v69, enum case for Feature.search_tags(_:), v68);
  LOBYTE(v68) = isFeatureEnabled(_:)();
  sub_100007000(v92);
  if (v68)
  {
    v70 = 1;
  }

  else
  {
    v70 = 2;
  }

  v71 = [objc_opt_self() configurationWithPointSize:4 weight:v70 scale:10.0];
  v72 = v83;
  v73 = v82;
  v74 = v84;
  (*(v83 + 104))(v82, enum case for SystemImage.star(_:), v84);
  v75 = [v71 configurationWithTraitCollection:v67];
  v76 = static SystemImage.load(_:with:)();

  (*(v72 + 8))(v73, v74);
  [v76 contentInsets];
  [v76 contentInsets];
  [v76 size];
  [v76 contentInsets];
  [v76 contentInsets];
  [v76 size];

  v77 = v86;
  MetadataRibbonStarRatingViewLayout.Metrics.withStarSize(_:)();
  v90(v66, v63);
  v78 = v81;
  swift_beginAccess();
  (*(v87 + 40))(&v53[v78], v77, v63);
  swift_endAccess();

  return v53;
}

uint64_t sub_1005E331C()
{
  v1 = type metadata accessor for LayoutRect();
  v20 = *(v1 - 8);
  v21 = v1;
  __chkstk_darwin(v1);
  v19 = &v18 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for MetadataRibbonStarRatingViewLayout.Metrics();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for MetadataRibbonStarRatingViewLayout();
  v7 = *(v18 - 8);
  __chkstk_darwin(v18);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for MetadataRibbonStarRatingView(0);
  v28.receiver = v0;
  v28.super_class = v10;
  objc_msgSendSuper2(&v28, "layoutSubviews");
  v11 = *&v0[OBJC_IVAR____TtC8AppStore28MetadataRibbonStarRatingView_starRatingView];
  v26 = type metadata accessor for RatingView();
  v27 = &protocol witness table for UIView;
  v25 = v11;
  v12 = *&v0[OBJC_IVAR____TtC8AppStore28MetadataRibbonStarRatingView_ratingCountLabel];
  v23 = type metadata accessor for DynamicTypeLabel();
  v24 = &protocol witness table for UILabel;
  v22 = v12;
  v13 = OBJC_IVAR____TtC8AppStore28MetadataRibbonStarRatingView_metrics;
  swift_beginAccess();
  (*(v4 + 16))(v6, &v0[v13], v3);
  v14 = v11;
  v15 = v12;
  MetadataRibbonStarRatingViewLayout.init(starsView:ratingLabelView:metrics:)();
  LayoutMarginsAware<>.layoutFrame.getter();
  v16 = v19;
  MetadataRibbonStarRatingViewLayout.placeChildren(relativeTo:in:)();
  (*(v20 + 8))(v16, v21);
  return (*(v7 + 8))(v9, v18);
}

double sub_1005E3618(uint64_t a1, __n128 a2, double a3)
{
  v20[0] = a1;
  v4 = type metadata accessor for MetadataRibbonStarRatingViewLayout.Metrics();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for MetadataRibbonStarRatingViewLayout();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v3 + OBJC_IVAR____TtC8AppStore28MetadataRibbonStarRatingView_starRatingView);
  v20[12] = type metadata accessor for RatingView();
  v20[13] = &protocol witness table for UIView;
  v20[9] = v12;
  v13 = *(v3 + OBJC_IVAR____TtC8AppStore28MetadataRibbonStarRatingView_ratingCountLabel);
  v20[7] = type metadata accessor for DynamicTypeLabel();
  v20[8] = &protocol witness table for UILabel;
  v20[4] = v13;
  v14 = OBJC_IVAR____TtC8AppStore28MetadataRibbonStarRatingView_metrics;
  swift_beginAccess();
  (*(v5 + 16))(v7, v3 + v14, v4);
  v15 = v12;
  v16 = v13;
  MetadataRibbonStarRatingViewLayout.init(starsView:ratingLabelView:metrics:)();
  MetadataRibbonStarRatingViewLayout.measurements(fitting:in:)();
  v18 = v17;
  (*(v9 + 8))(v11, v8);
  return v18;
}

id sub_1005E38F8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MetadataRibbonStarRatingView(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for MetadataRibbonStarRatingView(uint64_t a1)
{
  result = qword_10098E4E0;
  if (!qword_10098E4E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1005E3A44(uint64_t a1, __n128 a2)
{
  type metadata accessor for MetadataRibbonStarRatingViewLayout.Metrics();
  if (v2 <= 0x3F)
  {
    sub_1000315A0(319);
    if (v3 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_1005E3B4C@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC8AppStore28MetadataRibbonStarRatingView_itemType;
  swift_beginAccess();
  return sub_100031660(v1 + v3, a1, &qword_10096FB98, &unk_1007B10B0);
}

uint64_t sub_1005E3BB4(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8AppStore28MetadataRibbonStarRatingView_itemType;
  swift_beginAccess();
  sub_1000315F8(a1, v1 + v3, &qword_10096FB98, &unk_1007B10B0);
  return swift_endAccess();
}

void sub_1005E3C90(uint64_t a1, char a2)
{
  v5 = v2 + OBJC_IVAR____TtC8AppStore28MetadataRibbonStarRatingView_labelMaxWidth;
  swift_beginAccess();
  *v5 = a1;
  *(v5 + 8) = a2 & 1;
}

void sub_1005E3D5C(uint64_t a1, char a2)
{
  v5 = v2 + OBJC_IVAR____TtC8AppStore28MetadataRibbonStarRatingView_truncationLegibilityThreshold;
  swift_beginAccess();
  *v5 = a1;
  *(v5 + 8) = a2 & 1;
}

uint64_t sub_1005E3E20()
{
  v1 = OBJC_IVAR____TtC8AppStore28MetadataRibbonStarRatingView_allowsTruncation;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_1005E3E64(char a1)
{
  v3 = OBJC_IVAR____TtC8AppStore28MetadataRibbonStarRatingView_allowsTruncation;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_1005E3F14@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC8AppStore28MetadataRibbonStarRatingView_id;
  swift_beginAccess();
  return sub_100031660(v1 + v3, a1, &qword_10096FB90, &qword_1007B2A50);
}

uint64_t sub_1005E3F7C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8AppStore28MetadataRibbonStarRatingView_id;
  swift_beginAccess();
  sub_1000315F8(a1, v1 + v3, &qword_10096FB90, &qword_1007B2A50);
  return swift_endAccess();
}

double sub_1005E404C(uint64_t a1, void *a2, __n128 a3, double a4)
{
  v53 = a1;
  v60 = type metadata accessor for MetadataRibbonStarRatingViewLayout();
  v59 = *(v60 - 8);
  __chkstk_darwin(v60);
  v57 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = type metadata accessor for LabelPlaceholder();
  v52 = *(v54 - 8);
  __chkstk_darwin(v54);
  v51 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = type metadata accessor for DynamicTextAppearance();
  v48 = *(v56 - 8);
  __chkstk_darwin(v56);
  v8 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v45 - v10;
  __chkstk_darwin(v12);
  v55 = &v45 - v13;
  v14 = type metadata accessor for SystemImage();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v45 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = type metadata accessor for MetadataRibbonStarRatingViewLayout.Metrics();
  v49 = *(v50 - 8);
  __chkstk_darwin(v50);
  v47 = &v45 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = &v45 - v20;
  static MetadataRibbonStarRatingViewLayout.Metrics.standard.getter();
  MetadataRibbonStarRatingViewLayout.Metrics.numberOfStars.getter();
  v58 = a2;
  v22 = [a2 traitCollection];
  v23 = type metadata accessor for Feature();
  v66 = v23;
  v67 = sub_1005E49C4(&qword_100972E50, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
  v24 = sub_1000056E0(v65);
  (*(*(v23 - 8) + 104))(v24, enum case for Feature.search_tags(_:), v23);
  LOBYTE(v23) = isFeatureEnabled(_:)();
  sub_100007000(v65);
  if (v23)
  {
    v25 = 1;
  }

  else
  {
    v25 = 2;
  }

  v26 = [objc_opt_self() configurationWithPointSize:4 weight:v25 scale:10.0];
  (*(v15 + 104))(v17, enum case for SystemImage.star(_:), v14);
  v27 = [v26 configurationWithTraitCollection:v22];
  v28 = static SystemImage.load(_:with:)();

  (*(v15 + 8))(v17, v14);
  [v28 contentInsets];
  [v28 contentInsets];
  [v28 size];
  [v28 contentInsets];
  [v28 contentInsets];
  [v28 size];

  v29 = type metadata accessor for LayoutViewPlaceholder();
  swift_allocObject();
  v46 = LayoutViewPlaceholder.init(representing:)();
  DynamicTextAppearance.init()();
  static CustomTextStyle<>.metadataRibbon.getter();
  if (qword_10096EE50 != -1)
  {
    swift_once();
  }

  v30 = type metadata accessor for MetadataRibbonTextStyle();
  v31 = sub_1000056A8(v30, qword_1009D36F8);
  v66 = v30;
  v67 = sub_1005E49C4(&qword_10096FBA0, &type metadata accessor for MetadataRibbonTextStyle, &protocol conformance descriptor for MetadataRibbonTextStyle);
  v32 = sub_1000056E0(v65);
  (*(*(v30 - 8) + 16))(v32, v31, v30);
  DynamicTextAppearance.withCustomTextStyle(_:)();
  v33 = v48;
  v34 = *(v48 + 8);
  v35 = v8;
  v36 = v56;
  v34(v35, v56);
  v45 = v34;
  sub_100007000(v65);
  MetadataRibbonStarRatingViewLayout.Metrics.ratingCountLabelNumberOfLines.getter();
  v37 = v55;
  DynamicTextAppearance.withNumberOfLines(_:)();
  v34(v11, v36);
  MetadataRibbonItem.labelText.getter();
  (*(v33 + 16))(v11, v37, v36);
  LabelPlaceholder.Options.init(rawValue:)();
  v38 = v51;
  LabelPlaceholder.init(_:with:where:)();
  LabelPlaceholder.layoutTextView.getter();
  (*(v52 + 8))(v38, v54);
  v63 = v29;
  v64 = &protocol witness table for LayoutViewPlaceholder;
  v62 = v46;
  sub_10002C0AC(v65, v61);
  v39 = v49;
  v40 = v50;
  (*(v49 + 16))(v47, v21, v50);

  v41 = v57;
  MetadataRibbonStarRatingViewLayout.init(starsView:ratingLabelView:metrics:)();
  MetadataRibbonStarRatingViewLayout.measurements(fitting:in:)();
  v43 = v42;

  (*(v59 + 8))(v41, v60);
  sub_100007000(v65);
  v45(v37, v36);
  (*(v39 + 8))(v21, v40);
  return v43;
}

double sub_1005E4904()
{
  v1 = v0;
  MetadataRibbonItem.starRating.getter();
  v3 = v2;
  MetadataRibbonItem.labelText.getter();
  v5 = v4;
  sub_1003A2E44(v3);
  v6 = *&v0[OBJC_IVAR____TtC8AppStore28MetadataRibbonStarRatingView_ratingCountLabel];
  if (v5)
  {
    v7 = String._bridgeToObjectiveC()();
  }

  else
  {
    v7 = 0;
  }

  [v6 setText:v7];

  [v1 setNeedsLayout];

  return result;
}

uint64_t sub_1005E49C4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1005E4A10()
{
  result = qword_10098E4F0;
  if (!qword_10098E4F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10098E4F0);
  }

  return result;
}

unint64_t sub_1005E4A68()
{
  result = qword_10098E4F8;
  if (!qword_10098E4F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10098E4F8);
  }

  return result;
}

uint64_t sub_1005E4AE0()
{
  v0 = sub_10002849C(&qword_100979928, &qword_1007D8CE0);
  __chkstk_darwin(v0 - 8);
  v2 = &v7 - v1;
  v3 = type metadata accessor for LocalizedStringResource();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = type metadata accessor for TypeDisplayRepresentation();
  sub_100005644(v5, qword_1009D2D28);
  sub_1000056A8(v5, qword_1009D2D28);
  LocalizedStringResource.init(stringLiteral:)();
  (*(v4 + 56))(v2, 1, 1, v3);
  return TypeDisplayRepresentation.init(name:numericFormat:)();
}

uint64_t sub_1005E4C44()
{
  v0 = sub_10002849C(&qword_10098E578, &qword_1007D8CB0);
  sub_100005644(v0, qword_1009D2D40);
  sub_1000056A8(v0, qword_1009D2D40);
  sub_10002849C(&qword_10098E598, &unk_1007D8CD0);
  return Regex.init(_regexString:version:)();
}

uint64_t sub_1005E4CD4()
{
  v0 = sub_10002849C(&qword_10098C598, &qword_1007D5CD8);
  __chkstk_darwin(v0 - 8);
  v2 = &v13 - v1;
  v3 = sub_10002849C(&qword_100979928, &qword_1007D8CE0);
  __chkstk_darwin(v3 - 8);
  v5 = &v13 - v4;
  v6 = type metadata accessor for LocalizedStringResource();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = type metadata accessor for String.LocalizationValue.StringInterpolation();
  __chkstk_darwin(v8 - 8);
  String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v9._countAndFlagsBits = 0;
  v9._object = 0xE000000000000000;
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v9);
  EntityProperty.wrappedValue.getter();
  String.LocalizationValue.StringInterpolation.appendInterpolation(_:)(v13);

  v10._countAndFlagsBits = 0;
  v10._object = 0xE000000000000000;
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v10);
  LocalizedStringResource.init(stringInterpolation:)();
  (*(v7 + 56))(v5, 1, 1, v6);
  v11 = type metadata accessor for DisplayRepresentation.Image();
  (*(*(v11 - 8) + 56))(v2, 1, 1, v11);
  return DisplayRepresentation.init(title:subtitle:image:)();
}

uint64_t sub_1005E4F44(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1005767D4;

  return sub_1005E5F1C(a1);
}

unint64_t sub_1005E4FF0()
{
  result = qword_10098E500;
  if (!qword_10098E500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10098E500);
  }

  return result;
}

unint64_t sub_1005E5044()
{
  result = qword_10098E508;
  if (!qword_10098E508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10098E508);
  }

  return result;
}

unint64_t sub_1005E509C()
{
  result = qword_10098E510;
  if (!qword_10098E510)
  {
    sub_10002D1A8(&qword_10098E518, qword_1007D88E8);
    sub_1005E5044();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10098E510);
  }

  return result;
}

uint64_t sub_1005E5120(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_1005E52E4();
  *v5 = v2;
  v5[1] = sub_10015A5C8;

  return EntityQuery.results()(a1, a2, v6);
}

unint64_t sub_1005E51DC()
{
  result = qword_10098E520;
  if (!qword_10098E520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10098E520);
  }

  return result;
}

unint64_t sub_1005E5234()
{
  result = qword_10098E528;
  if (!qword_10098E528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10098E528);
  }

  return result;
}

unint64_t sub_1005E528C()
{
  result = qword_10098E530;
  if (!qword_10098E530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10098E530);
  }

  return result;
}

unint64_t sub_1005E52E4()
{
  result = qword_10098E538;
  if (!qword_10098E538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10098E538);
  }

  return result;
}

unint64_t sub_1005E533C()
{
  result = qword_10098E540;
  if (!qword_10098E540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10098E540);
  }

  return result;
}

uint64_t sub_1005E5390(uint64_t a1)
{
  v1 = sub_10002849C(&qword_10098E5A8, &qword_1007D8CE8);
  __chkstk_darwin(v1);
  sub_10019D8BC();
  EntityURLRepresentation.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v2._countAndFlagsBits = 0;
  v2._object = 0xE000000000000000;
  EntityURLRepresentation.StringInterpolation.appendLiteral(_:)(v2);
  swift_getKeyPath();
  sub_10002849C(&qword_10098E5B0, &qword_1007D8D18);
  EntityURLRepresentation.StringInterpolation.appendInterpolation<A, B>(_:)();

  v3._countAndFlagsBits = 0;
  v3._object = 0xE000000000000000;
  EntityURLRepresentation.StringInterpolation.appendLiteral(_:)(v3);
  return EntityURLRepresentation.init(stringInterpolation:)();
}

unint64_t sub_1005E54B0()
{
  result = qword_10098E548;
  if (!qword_10098E548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10098E548);
  }

  return result;
}

unint64_t sub_1005E5504()
{
  result = qword_10098E550;
  if (!qword_10098E550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10098E550);
  }

  return result;
}

unint64_t sub_1005E555C()
{
  result = qword_10098E558;
  if (!qword_10098E558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10098E558);
  }

  return result;
}

uint64_t sub_1005E55B0(uint64_t a1)
{
  sub_1005E5EC8();
  v2 = URLRepresentableEntity.urlRepresentationParameter.getter();
  v3 = *(v1 + 8);

  return v3(v2);
}

uint64_t sub_1005E561C@<X0>(uint64_t a1@<X8>)
{
  if (qword_10096EA88 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for TypeDisplayRepresentation();
  v4 = sub_1000056A8(v3, qword_1009D2D28);
  v5 = *(*(v3 - 8) + 16);

  return v5(a1, v4, v3);
}

uint64_t sub_1005E5708(uint64_t a1)
{
  v2 = sub_10019D8BC();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_1005E5758()
{
  result = qword_10098E570;
  if (!qword_10098E570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10098E570);
  }

  return result;
}

uint64_t sub_1005E57B0(uint64_t a1)
{
  v2 = sub_1005E555C();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_1005E581C(char a1, uint64_t a2, void *a3)
{
  if (a1)
  {
    _StringGuts.grow(_:)(38);

    v7 = 0xD000000000000024;
  }

  else
  {
    _StringGuts.grow(_:)(31);

    v7 = 0xD00000000000001DLL;
  }

  v5._countAndFlagsBits = a2;
  v5._object = a3;
  String.append(_:)(v5);
  return v7;
}

void sub_1005E58D8(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, unint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v42 = a4;
  v43 = a5;
  v46 = a3;
  v9 = sub_10002849C(&qword_100982460, &unk_1007B5C90);
  __chkstk_darwin(v9 - 8);
  v11 = &v40 - v10;
  v12 = sub_10002849C(&qword_10098E578, &qword_1007D8CB0);
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v40 - v14;
  v16 = sub_10002849C(&qword_10098E580, &qword_1007D8CB8);
  __chkstk_darwin(v16 - 8);
  v18 = &v40 - v17;
  v19 = type metadata accessor for LocalizedStringResource();
  __chkstk_darwin(v19 - 8);
  sub_10002849C(&qword_10098C590, &qword_1007D8CC0);
  LocalizedStringResource.init(stringLiteral:)();
  v45 = EntityProperty<>.init(title:)();

  LocalizedStringResource.init(stringLiteral:)();
  v20 = EntityProperty<>.init(title:)();
  v21 = qword_10096EA90;
  v41 = v20;

  if (v21 != -1)
  {
    swift_once();
  }

  sub_1000056A8(v12, qword_1009D2D40);
  sub_100097060(&qword_10098E588, &qword_10098E578, &qword_1007D8CB0, &protocol conformance descriptor for Regex<A>);
  dispatch thunk of RegexComponent.regex.getter();
  v44 = a1;
  String.subscript.getter();
  Regex.wholeMatch(in:)();
  (*(v13 + 8))(v15, v12);

  v22 = sub_10002849C(&qword_10098E590, &qword_1007D8CC8);
  v23 = *(v22 - 8);
  if ((*(v23 + 48))(v18, 1, v22) == 1)
  {
    sub_10002B894(v18, &qword_10098E580, &qword_1007D8CB8);

    v24 = 0;
    v25 = a2;
    v26 = v44;
    v27 = v44;
  }

  else
  {
    Regex.Match.output.getter();

    (*(v23 + 8))(v18, v22);
    v27 = static String._fromSubstring(_:)();
    v25 = v39;

    v24 = 1;
    v26 = v44;
  }

  v28 = v42;
  if (!v43)
  {
    v28 = 0;
  }

  v29 = 0xE000000000000000;
  if (v43)
  {
    v29 = v43;
  }

  v47 = v28;
  v48 = v29;

  EntityProperty.wrappedValue.setter();
  v30 = v11;
  sub_1000417F0(v46, v11);
  v31 = type metadata accessor for URL();
  v32 = *(v31 - 8);
  if ((*(v32 + 48))(v11, 1, v31) == 1)
  {
    sub_10002B894(v11, &qword_100982460, &unk_1007B5C90);
    v33 = sub_1005E581C(v24, v27, v25);
    v35 = v34;
  }

  else
  {
    v33 = URL.absoluteString.getter();
    v35 = v36;
    (*(v32 + 8))(v30, v31);
  }

  v47 = v33;
  v48 = v35;
  v37 = v41;
  EntityProperty.wrappedValue.setter();
  sub_10002B894(v46, &qword_100982460, &unk_1007B5C90);

  v38 = v45;

  *a6 = v26;
  a6[1] = a2;
  a6[2] = v27;
  a6[3] = v25;
  a6[4] = v38;
  a6[5] = v37;
}

unint64_t sub_1005E5EC8()
{
  result = qword_10098E5A0;
  if (!qword_10098E5A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10098E5A0);
  }

  return result;
}

uint64_t sub_1005E5F1C(uint64_t a1)
{
  *(v1 + 64) = a1;
  sub_10002849C(&qword_100982460, &unk_1007B5C90);
  *(v1 + 72) = swift_task_alloc();

  return _swift_task_switch(sub_1005E5FB8, 0, 0);
}

uint64_t sub_1005E5FB8()
{
  v1 = *(v0 + 64);
  v2 = *(v1 + 16);
  if (v2)
  {
    sub_100144638(0, v2, 0);
    v3 = type metadata accessor for URL();
    v4 = *(*(v3 - 8) + 56);
    v5 = (v1 + 40);
    do
    {
      v6 = *(v0 + 72);
      v7 = *(v5 - 1);
      v8 = *v5;
      v4(v6, 1, 1, v3);

      sub_1005E58D8(v7, v8, v6, 0, 0, (v0 + 16));
      v10 = _swiftEmptyArrayStorage[2];
      v9 = _swiftEmptyArrayStorage[3];
      if (v10 >= v9 >> 1)
      {
        sub_100144638((v9 > 1), v10 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v10 + 1;
      v11 = &_swiftEmptyArrayStorage[6 * v10];
      v12 = *(v0 + 16);
      v13 = *(v0 + 48);
      v11[3] = *(v0 + 32);
      v11[4] = v13;
      v11[2] = v12;
      v5 += 2;
      --v2;
    }

    while (v2);
  }

  v14 = *(v0 + 8);

  return v14(_swiftEmptyArrayStorage);
}

uint64_t sub_1005E61AC()
{
  v0 = type metadata accessor for OSLogger.Subsystem();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10096D108 != -1)
  {
    swift_once();
  }

  v4 = sub_1000056A8(v0, qword_1009CE1D0);
  (*(v1 + 16))(v3, v4, v0);
  qword_10098E5D0 = type metadata accessor for OSLogger();
  unk_10098E5D8 = &protocol witness table for OSLogger;
  sub_1000056E0(qword_10098E5B8);
  return OSLogger.init(subsystem:category:)();
}

uint64_t sub_1005E62F0(uint64_t a1, uint64_t a2)
{
  sub_10002849C(&qword_1009764A0, &unk_1007B6230);
  v5 = Promise.__allocating_init()();
  sub_100005744(0, &qword_10098D1A0, ACAccountStore_ptr);
  type metadata accessor for BaseObjectGraph();
  inject<A, B>(_:from:)();
  v6 = v11[0];
  sub_1005E6490(v11[0]);
  sub_1005E7310(v2, v11);
  v7 = swift_allocObject();
  v7[2] = v5;
  v7[3] = a1;
  sub_1005E7348(v11, (v7 + 4));
  v7[5] = a2;
  v8 = sub_100005744(0, &qword_1009729E0, OS_dispatch_queue_ptr);
  swift_retain_n();

  v9 = static OS_dispatch_queue.main.getter();
  v11[3] = v8;
  v11[4] = &protocol witness table for OS_dispatch_queue;
  v11[0] = v9;
  Promise.then(perform:orCatchError:on:)();

  sub_100007000(v11);
  return v5;
}

id sub_1005E6490(void *a1)
{
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10002849C(&unk_10098D500, &qword_1007D6BA8);
  v10 = Promise.__allocating_init()();
  v11 = [a1 ams_activeiTunesAccount];
  v12 = [v11 ams_DSID];
  if (v12)
  {

    LOBYTE(aBlock[0]) = 1;
    Promise.resolve(_:)();

    return v10;
  }

  v26 = v7;
  Strong = swift_unknownObjectUnownedLoadStrong();
  v14 = [Strong frontmostViewController];

  result = [v14 view];
  if (result)
  {
    v16 = result;
    v17 = [result window];

    if (v17)
    {

      sub_100005744(0, &qword_1009729E0, OS_dispatch_queue_ptr);
      v25 = static OS_dispatch_queue.main.getter();
      v18 = swift_allocObject();
      v18[2] = v11;
      v18[3] = v14;
      v18[4] = v10;
      aBlock[4] = sub_1005E73E4;
      aBlock[5] = v18;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100007A08;
      aBlock[3] = &unk_1008CAF88;
      v19 = v14;
      v20 = _Block_copy(aBlock);
      v24 = v11;
      v21 = v19;

      static DispatchQoS.unspecified.getter();
      aBlock[0] = _swiftEmptyArrayStorage;
      sub_1005E73F0(&qword_100976F50, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
      sub_10002849C(&unk_1009729F0, &unk_1007B3D80);
      sub_1000079A4();
      dispatch thunk of SetAlgebra.init<A>(_:)();
      v22 = v25;
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v20);

      (*(v3 + 8))(v5, v2);
      (*(v26 + 8))(v9, v6);
    }

    else
    {
      if (qword_10096EA98 != -1)
      {
        swift_once();
      }

      sub_10002A400(qword_10098E5B8, qword_10098E5D0);
      sub_10002849C(&unk_100972A10, &qword_1007B1EF0);
      type metadata accessor for LogMessage();
      *(swift_allocObject() + 16) = xmmword_1007B10D0;
      LogMessage.init(stringLiteral:)();
      Logger.info(_:)();

      sub_1005E7390();
      swift_allocError();
      Promise.reject(_:)();
    }

    return v10;
  }

  __break(1u);
  return result;
}

void sub_1005E69BC(_BYTE *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v37 = a5;
  v38 = a1;
  v33 = a3;
  v39 = a2;
  v5 = type metadata accessor for ActionOutcome();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = type metadata accessor for FlowOrigin();
  v32 = *(v35 - 8);
  __chkstk_darwin(v35);
  v36 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for FlowAnimationBehavior();
  v30 = *(v10 - 8);
  v31 = v10;
  __chkstk_darwin(v10);
  v34 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for FlowPresentationContext();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for ActionMetrics();
  __chkstk_darwin(v16 - 8);
  v17 = sub_10002849C(&unk_1009767C0, &unk_1007B1880);
  __chkstk_darwin(v17 - 8);
  v19 = &v30 - v18;
  v20 = sub_10002849C(&qword_100982460, &unk_1007B5C90);
  __chkstk_darwin(v20 - 8);
  v22 = &v30 - v21;
  v23 = type metadata accessor for FlowPage();
  v26 = __chkstk_darwin(v23);
  if (*v38 == 1)
  {
    v44 = 0;
    v42 = 0u;
    v43 = 0u;
    (*(v25 + 104))(&v30 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0), enum case for FlowPage.reviewSummaryReportConcern(_:));
    v27 = type metadata accessor for URL();
    (*(*(v27 - 8) + 56))(v22, 1, 1, v27);
    v28 = type metadata accessor for ReferrerData();
    (*(*(v28 - 8) + 56))(v19, 1, 1, v28);
    v41 = type metadata accessor for ReviewSummaryReportConcernAction();
    v40 = v33;

    static ActionMetrics.notInstrumented.getter();
    (*(v13 + 104))(v15, enum case for FlowPresentationContext.presentModalFormSheet(_:), v12);
    (*(v30 + 104))(v34, enum case for FlowAnimationBehavior.infer(_:), v31);
    (*(v32 + 104))(v36, enum case for FlowOrigin.inapp(_:), v35);
    static FlowActionPresentation.stackPush.getter();
    type metadata accessor for FlowAction();
    swift_allocObject();
    v29 = FlowAction.init(id:title:artwork:page:url:referrerUrl:referrerData:pageData:actionMetrics:presentationContext:animationBehavior:origin:presentationStyle:presentation:)();
    sub_1005D01FC(v29, 1, v37);
    Promise.pipe(to:)();
  }

  else
  {
    (*(v6 + 104))(v8, enum case for ActionOutcome.performed(_:), v5, v26);
    Promise.resolve(_:)();
    (*(v6 + 8))(v8, v5);
  }
}

void sub_1005E6F7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = [objc_allocWithZone(AMSUIAuthenticateTask) initWithAccount:a1 presentingViewController:a2 options:0];
  v5 = [v4 performAuthentication];
  v12 = sub_1005E7438;
  v13 = a3;
  v8 = _NSConcreteStackBlock;
  v9 = 1107296256;
  v10 = sub_100080D48;
  v11 = &unk_1008CAFB0;
  v6 = _Block_copy(&v8);

  [v5 addSuccessBlock:v6];
  _Block_release(v6);
  v12 = sub_1005E7464;
  v13 = a3;
  v8 = _NSConcreteStackBlock;
  v9 = 1107296256;
  v10 = sub_100669D64;
  v11 = &unk_1008CAFD8;
  v7 = _Block_copy(&v8);

  [v5 addErrorBlock:v7];
  _Block_release(v7);
}

uint64_t sub_1005E712C(uint64_t a1)
{
  if (qword_10096EA98 != -1)
  {
    swift_once();
  }

  sub_10002A400(qword_10098E5B8, qword_10098E5D0);
  sub_10002849C(&unk_100972A10, &qword_1007B1EF0);
  type metadata accessor for LogMessage();
  *(swift_allocObject() + 16) = xmmword_1007B1890;
  LogMessage.init(stringLiteral:)();
  swift_getErrorValue();
  v4[3] = v3;
  v1 = sub_1000056E0(v4);
  (*(*(v3 - 8) + 16))(v1);
  static LogMessage.safe(_:)();
  sub_10003D444(v4);
  Logger.error(_:)();

  LOBYTE(v4[0]) = 0;
  return Promise.resolve(_:)();
}

unint64_t sub_1005E7390()
{
  result = qword_10098E5E8;
  if (!qword_10098E5E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10098E5E8);
  }

  return result;
}

uint64_t sub_1005E73F0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1005E7480()
{
  result = qword_10098E5F0;
  if (!qword_10098E5F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10098E5F0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TodayCardGrid.SizeCategory(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_20;
  }

  v2 = a2 + 6;
  if (a2 + 6 >= 0xFFFF00)
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

  if (v4 > 1)
  {
    if (v4 == 2)
    {
      v5 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_20;
      }
    }

    else
    {
      v5 = *(a1 + 1);
      if (!v5)
      {
        goto LABEL_20;
      }
    }

    return (*a1 | (v5 << 8)) - 6;
  }

  if (v4)
  {
    v5 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v5 << 8)) - 6;
    }
  }

LABEL_20:
  v7 = *a1;
  if (v7 >= 4)
  {
    v8 = v7 - 3;
  }

  else
  {
    v8 = 0;
  }

  if (v8 >= 4)
  {
    return v8 - 3;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for TodayCardGrid.SizeCategory(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 6;
  if (a3 + 6 >= 0xFFFF00)
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

  if (a3 < 0xFA)
  {
    v5 = 0;
  }

  if (a2 > 0xF9)
  {
    v6 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_1005E764C(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 >= 4)
  {
    return v1 - 3;
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_1005E7660(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 3;
  }

  return result;
}

Swift::Int sub_1005E7680()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  if ((v1 - 4) >= 3u)
  {
    Hasher._combine(_:)(2uLL);
  }

  else
  {
    v1 = qword_1007D9080[(v1 - 4)];
  }

  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

void sub_1005E76F8()
{
  v1 = *v0;
  if ((v1 - 4) >= 3u)
  {
    Hasher._combine(_:)(2uLL);
  }

  else
  {
    v1 = qword_1007D9080[(v1 - 4)];
  }

  Hasher._combine(_:)(v1);
}

Swift::Int sub_1005E7754(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  if ((v2 - 4) >= 3u)
  {
    Hasher._combine(_:)(2uLL);
  }

  else
  {
    v2 = qword_1007D9080[(v2 - 4)];
  }

  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

BOOL sub_1005E77C8(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  switch(v2)
  {
    case 6:
      return v3 == 6;
    case 5:
      return v3 == 5;
    case 4:
      return v3 == 4;
  }

  if ((v3 - 4) < 3)
  {
    return 0;
  }

  return v2 == v3;
}

unint64_t sub_1005E7834()
{
  result = qword_10098E5F8;
  if (!qword_10098E5F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10098E5F8);
  }

  return result;
}

uint64_t sub_1005E7888()
{
  v0 = sub_10002849C(&qword_10097AAF8, &qword_1007D8F90);
  sub_100005644(v0, qword_1009D2D58);
  sub_1000056A8(v0, qword_1009D2D58);
  type metadata accessor for DeviceType(0);
  return PreferenceKey.init(_:)();
}

char *sub_1005E7908(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return _swiftEmptyArrayStorage;
  }

  sub_100144148(0, v1, 0);
  v3 = 0;
  v4 = a1 + 32;
  while (1)
  {
    v5 = *(v4 + 8 * v3);
    v6 = *(v5 + 16);

    if (v6 >= 2)
    {
      break;
    }

    v7 = v5;
LABEL_16:
    v17 = _swiftEmptyArrayStorage[2];
    v16 = _swiftEmptyArrayStorage[3];
    if (v17 >= v16 >> 1)
    {
      sub_100144148((v16 > 1), v17 + 1, 1);
    }

    ++v3;
    _swiftEmptyArrayStorage[2] = v17 + 1;
    _swiftEmptyArrayStorage[v17 + 4] = v7;
    if (v3 == v1)
    {
      return _swiftEmptyArrayStorage;
    }
  }

  result = swift_isUniquelyReferenced_nonNull_native();
  v7 = v5;
  if ((result & 1) == 0)
  {
    result = sub_100548D00(v5);
    v7 = result;
  }

  v9 = 0;
  v10 = v7 + 32;
  while (1)
  {
    v11 = v9 + 1;
    v12 = v6 - (v9 + 1);
    if (__OFSUB__(v6, v9 + 1))
    {
      break;
    }

    if (v9 != v12)
    {
      if ((v9 & 0x8000000000000000) != 0)
      {
        goto LABEL_21;
      }

      v13 = *(v7 + 2);
      if (v9 >= v13)
      {
        goto LABEL_22;
      }

      if (v12 >= v13)
      {
        goto LABEL_23;
      }

      v14 = &v7[v9];
      v15 = v14[32];
      v14[32] = v10[v12];
      v10[v12] = v15;
    }

    v9 = v11;
    if (v6 >> 1 == v11)
    {

      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
  return result;
}

void sub_1005E7AA4(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
LABEL_7:
        sub_10002849C(&qword_10096FD10, &unk_1007D8FE0);
        swift_arrayInitWithCopy();
        return;
      }
    }

    else
    {
      sub_10002849C(&qword_10096FD08, &unk_1007B1370);
      v7 = swift_allocObject();
      v8 = j__malloc_size_2(v7);
      v9 = v8 - 32;
      if (v8 < 32)
      {
        v9 = v8 - 25;
      }

      v7[2] = v5;
      v7[3] = 2 * (v9 >> 3);
      if (v4 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

void sub_1005E7B90(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_9:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      v8 = _swiftEmptyArrayStorage;
      if (v4 != a3)
      {
        goto LABEL_5;
      }
    }

    else
    {
      sub_10002849C(&qword_10096FC68, &unk_1007D8FD0);
      v8 = swift_allocObject();
      v9 = j__malloc_size_2(v8);
      v8[2] = v5;
      v8[3] = 2 * v9 - 64;
      if (v4 != a3)
      {
LABEL_5:
        memcpy(v8 + 4, (a2 + a3), v5);
        return;
      }
    }

    __break(1u);
    goto LABEL_9;
  }
}

void sub_1005E7CA8(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t (*a5)(void))
{
  v5 = a4 >> 1;
  v6 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v6)
  {
    if (v6 < 1)
    {
      if (v5 != a3)
      {
LABEL_7:
        a5(0);
        swift_arrayInitWithCopy();
        return;
      }
    }

    else
    {
      sub_10002849C(&qword_100973210, qword_1007B0BB0);
      v9 = swift_allocObject();
      v10 = j__malloc_size_2(v9);
      v11 = v10 - 32;
      if (v10 < 32)
      {
        v11 = v10 - 25;
      }

      v9[2] = v6;
      v9[3] = (2 * (v11 >> 3)) | 1;
      if (v5 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

void sub_1005E7DBC(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v7 = a4 >> 1;
  v8 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    goto LABEL_14;
  }

  if (v8)
  {
    if (v8 < 1)
    {
      if (v7 != a3)
      {
        goto LABEL_10;
      }
    }

    else
    {
      sub_10002849C(a5, a6);
      v11 = *(a7(0) - 8);
      v12 = *(v11 + 72);
      v13 = (*(v11 + 80) + 32) & ~*(v11 + 80);
      v14 = swift_allocObject();
      v15 = j__malloc_size_2(v14);
      if (!v12)
      {
LABEL_15:
        __break(1u);
LABEL_16:
        __break(1u);
        return;
      }

      if (v15 - v13 == 0x8000000000000000 && v12 == -1)
      {
        goto LABEL_16;
      }

      v14[2] = v8;
      v14[3] = 2 * ((v15 - v13) / v12);
      if (v7 != a3)
      {
LABEL_10:
        a7(0);
        swift_arrayInitWithCopy();
        return;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }
}

void sub_1005E7F60(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      v8 = _swiftEmptyArrayStorage;
      if (v4 != a3)
      {
LABEL_7:
        memcpy(v8 + 4, (a2 + 16 * a3), 16 * v5);
        return;
      }
    }

    else
    {
      sub_10002849C(&qword_10096FD90, &unk_1007D8FF0);
      v8 = swift_allocObject();
      v9 = j__malloc_size_2(v8);
      v10 = v9 - 32;
      if (v9 < 32)
      {
        v10 = v9 - 17;
      }

      v8[2] = v5;
      v8[3] = 2 * (v10 >> 4);
      if (v4 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

void sub_1005E8030()
{
  v0 = sub_10002849C(&unk_1009731F0, &qword_1007B0DA0);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v22 - v2;
  v4 = type metadata accessor for PageGrid();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  ShelfLayoutContext.contentPageGrid.getter();
  PageGrid.columnCount.getter();
  v9 = v8;
  (*(v5 + 8))(v7, v4);
  v10 = floor(v9);
  if ((*&v10 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (v10 <= -9.22337204e18)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v10 >= 9.22337204e18)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v11 = v10;
  ShelfLayoutContext.shelf.getter();
  swift_getKeyPath();
  ReadOnlyLens.subscript.getter();

  (*(v1 + 8))(v3, v0);
  v12 = *(v22[1] + 16);

  if (!v11)
  {
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
    return;
  }

  v13 = v12 / v11;
  v14 = v12 % v11;
  if (v14)
  {
    v15 = v13 + 1;
  }

  else
  {
    v15 = v13;
  }

  if (v15 < 0)
  {
    goto LABEL_26;
  }

  for (i = _swiftEmptyArrayStorage; v15; --v15)
  {
    if (v14 && v15 == 1)
    {
      v17 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      *(v17 + 16) = v14;
      v18 = (v17 + 32);
      v19 = v14;
    }

    else
    {
      if (v11 < 0)
      {
        __break(1u);
        goto LABEL_22;
      }

      v17 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      *(v17 + 16) = v11;
      v18 = (v17 + 32);
      v19 = v11;
    }

    memset(v18, 4, v19);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      i = sub_100033BB8(0, i[2] + 1, 1, i);
    }

    v21 = i[2];
    v20 = i[3];
    if (v21 >= v20 >> 1)
    {
      i = sub_100033BB8((v20 > 1), v21 + 1, 1, i);
    }

    i[2] = v21 + 1;
    i[v21 + 4] = v17;
  }
}

void *sub_1005E834C()
{
  v0 = sub_10002849C(&unk_1009731F0, &qword_1007B0DA0);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v12 - v2;
  ShelfLayoutContext.shelf.getter();
  swift_getKeyPath();
  ReadOnlyLens.subscript.getter();

  (*(v1 + 8))(v3, v0);
  v4 = *(v12[1] + 16);

  if (!v4)
  {
    return _swiftEmptyArrayStorage;
  }

  sub_10002849C(&qword_10096FC70, &qword_1007B12B0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1007B10D0;
  *(v5 + 32) = &off_1008AE908;
  if (v4 != 1)
  {
    v6 = v4 >> 1;
    do
    {
      v7 = (v4 & 1) == 0 && v6 == 1;
      v9 = *(v5 + 16);
      v8 = *(v5 + 24);
      if (v7)
      {
        v10 = &off_1008AE958;
      }

      else
      {
        v10 = &off_1008AE930;
      }

      if (v9 >= v8 >> 1)
      {
        v5 = sub_100033BB8((v8 > 1), v9 + 1, 1, v5);
      }

      *(v5 + 16) = v9 + 1;
      *(v5 + 8 * v9 + 32) = v10;
      --v6;
    }

    while (v6);
  }

  return v5;
}

void *sub_1005E8518()
{
  v0 = sub_10002849C(&unk_1009731F0, &qword_1007B0DA0);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v15 - v2;
  ShelfLayoutContext.shelf.getter();
  swift_getKeyPath();
  ReadOnlyLens.subscript.getter();

  (*(v1 + 8))(v3, v0);
  v4 = *(v15[1] + 16);

  if (!v4)
  {
    return _swiftEmptyArrayStorage;
  }

  v5 = _swiftEmptyArrayStorage;
  v6 = (v4 + 1) >> 1;
  v7 = v4 & 1;
  do
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (v6 == 1 && v7)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v5 = sub_100033BB8(0, v5[2] + 1, 1, v5);
      }

      v11 = v5[2];
      v10 = v5[3];
      v12 = v11 + 1;
      if (v11 >= v10 >> 1)
      {
        v5 = sub_100033BB8((v10 > 1), v11 + 1, 1, v5);
      }

      v8 = &off_1008AE9A8;
    }

    else
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v5 = sub_100033BB8(0, v5[2] + 1, 1, v5);
      }

      v11 = v5[2];
      v13 = v5[3];
      v12 = v11 + 1;
      if (v11 >= v13 >> 1)
      {
        v5 = sub_100033BB8((v13 > 1), v11 + 1, 1, v5);
      }

      v8 = &off_1008AE980;
    }

    v5[2] = v12;
    v5[v11 + 4] = v8;
    --v6;
  }

  while (v6);
  return v5;
}

void *sub_1005E8744(void *result, uint64_t a2)
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
    sub_10002849C(&qword_10096FC78, &qword_1007B12B8);
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

        --v6;
      }

      while (v6);
    }

    return v5;
  }

  return result;
}

void *sub_1005E87E0(uint64_t a1)
{
  v49 = a1;
  v43 = type metadata accessor for TodaySectionDisplayOptions.GroupDisplayStyle();
  v45 = *(v43 - 8);
  __chkstk_darwin(v43);
  v44 = &v41 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = type metadata accessor for Shelf.ContentsMetadata();
  v2 = *(v48 - 8);
  __chkstk_darwin(v48);
  v4 = &v41 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10002849C(&unk_1009731F0, &qword_1007B0DA0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v41 - v10;
  v47 = type metadata accessor for TodaySectionDisplayOptions();
  v42 = *(v47 - 8);
  __chkstk_darwin(v47);
  v46 = &v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for LocalPreferences();
  static LocalPreferences.AppStoreKit.getter();
  if (qword_10096EAA0 != -1)
  {
    swift_once();
  }

  v13 = sub_10002849C(&qword_10097AAF8, &qword_1007D8F90);
  sub_1000056A8(v13, qword_1009D2D58);
  type metadata accessor for DeviceType(0);
  Preferences.subscript.getter();

  v14 = v50;
  if (!v50)
  {
    v14 = ASKDeviceTypeGetCurrent();
  }

  v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v17 = v16;
  if (v15 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v17 == v18)
  {

    v19 = 0;
  }

  else
  {
    v20 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v19 = v20 ^ 1;
  }

  v21 = ShelfLayoutContext.traitCollection.getter();
  v22 = UITraitCollection.prefersAccessibilityLayouts.getter();

  if (v19 & 1) != 0 || (v22)
  {
    goto LABEL_15;
  }

  ShelfLayoutContext.shelf.getter();
  swift_getKeyPath();
  ReadOnlyLens.subscript.getter();

  v23 = *(v6 + 8);
  v23(v11, v5);
  v24 = v48;
  if ((*(v2 + 88))(v4, v48) != enum case for Shelf.ContentsMetadata.todaySection(_:))
  {
    (*(v2 + 8))(v4, v24);
LABEL_15:
    ShelfLayoutContext.shelf.getter();
    swift_getKeyPath();
    ReadOnlyLens.subscript.getter();

    (*(v6 + 8))(v8, v5);
    v32 = v50[2];

    v33 = sub_1005E8744(&off_1008AEA20, v32);

    return v33;
  }

  (*(v2 + 96))(v4, v24);
  v25 = v42;
  v26 = v46;
  v27 = v47;
  (*(v42 + 32))(v46, v4, v47);
  v28 = v44;
  TodaySectionDisplayOptions.groupDisplayStyle.getter();
  v29 = v43;
  v30 = (*(v45 + 88))(v28, v43);
  if (v30 == enum case for TodaySectionDisplayOptions.GroupDisplayStyle.hero(_:))
  {
    v31 = sub_1005E834C();
LABEL_19:
    v33 = v31;

    (*(v25 + 8))(v26, v27);
    return v33;
  }

  if (v30 == enum case for TodaySectionDisplayOptions.GroupDisplayStyle.grid(_:))
  {
    v31 = sub_1005E8518();
    goto LABEL_19;
  }

  v35 = enum case for TodaySectionDisplayOptions.GroupDisplayStyle.standard(_:);
  v36 = v25;
  v37 = v30;
  ShelfLayoutContext.shelf.getter();
  swift_getKeyPath();
  v38 = (v36 + 8);
  ReadOnlyLens.subscript.getter();

  v23(v8, v5);
  if (v37 == v35)
  {
    v39 = v50[2];

    v33 = sub_1005E8744(&off_1008AE9D0, v39);

    (*v38)(v46, v47);
  }

  else
  {
    v40 = v50[2];

    v33 = sub_1005E8744(&off_1008AE9F8, v40);

    (*v38)(v46, v47);
    (*(v45 + 8))(v44, v29);
  }

  return v33;
}

uint64_t sub_1005E8E90()
{
  v0 = sub_10002849C(&unk_1009731F0, &qword_1007B0DA0);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v15 - v2;
  ShelfLayoutContext.shelf.getter();
  swift_getKeyPath();
  ReadOnlyLens.subscript.getter();

  (*(v1 + 8))(v3, v0);
  v4 = *(v15[1] + 16);

  if (v4 < 0xA)
  {
    return *(&off_1008CB1D0 + v4);
  }

  v6 = ((v4 - 7) * 0xAAAAAAAAAAAAAAABLL) >> 64;
  v5 = &off_1008AEF40;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_19:
    v5 = sub_100033BB8(0, 4, 1, &off_1008AEF40);
  }

  v7 = 0;
  v8 = v6 >> 1;
  do
  {
    if (v7 % 3 < 0)
    {
      __break(1u);
      goto LABEL_19;
    }

    v6 = *(&off_1008AEF40 + v7 % 3 + 4);
    v9 = v5[2];
    v10 = v5[3];

    if (v9 >= v10 >> 1)
    {
      v5 = sub_100033BB8((v10 > 1), v9 + 1, 1, v5);
    }

    ++v7;
    v5[2] = v9 + 1;
    v5[v9 + 4] = v6;
  }

  while (v8 != v7);
  v11 = v4 % 3;
  if (!(v4 % 3))
  {
    return v5;
  }

  v12 = *(v6 + 16);
  if (v12 < v11)
  {
    __break(1u);
LABEL_21:
    result = sub_100548CEC(v5);
    v5 = result;
    goto LABEL_15;
  }

  if (v12 == v11)
  {
  }

  else
  {
    sub_1005E7B90(v6, v6 + 32, 0, (2 * v11) | 1);
    v6 = v13;
  }

  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    goto LABEL_21;
  }

LABEL_15:
  if (v9 < v5[2])
  {
    v5[v9 + 4] = v6;

    return v5;
  }

  __break(1u);
  return result;
}

void *sub_1005E9128()
{
  v0 = sub_10002849C(&unk_1009731F0, &qword_1007B0DA0);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v13 - v2;
  ShelfLayoutContext.shelf.getter();
  swift_getKeyPath();
  ReadOnlyLens.subscript.getter();

  (*(v1 + 8))(v3, v0);
  v4 = *(v13[1] + 16);

  if (v4)
  {
    v5 = 0;
    v6 = (v4 + 1) >> 1;
    v7 = _swiftEmptyArrayStorage;
    while (1)
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (v6 - 1 == v5 && (v4 & 1) != 0)
      {
        if (v5)
        {
          v9 = &off_1008AEFF0;
        }

        else
        {
          v9 = &off_1008AEFC8;
        }

        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          goto LABEL_9;
        }
      }

      else
      {
        if (v5)
        {
          v9 = &off_1008AEF78;
        }

        else
        {
          v9 = &off_1008AEFA0;
        }

        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
LABEL_9:
          v7 = sub_100033BB8(0, v7[2] + 1, 1, v7);
        }
      }

      v11 = v7[2];
      v10 = v7[3];
      if (v11 >= v10 >> 1)
      {
        v7 = sub_100033BB8((v10 > 1), v11 + 1, 1, v7);
      }

      ++v5;
      v7[2] = v11 + 1;
      v7[v11 + 4] = v9;
      if (v6 == v5)
      {
        return v7;
      }
    }
  }

  return _swiftEmptyArrayStorage;
}

void *sub_1005E9328()
{
  v0 = sub_10002849C(&unk_1009731F0, &qword_1007B0DA0);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v12 - v2;
  ShelfLayoutContext.shelf.getter();
  swift_getKeyPath();
  ReadOnlyLens.subscript.getter();

  (*(v1 + 8))(v3, v0);
  v4 = *(v12[1] + 16);

  if (!v4)
  {
    return _swiftEmptyArrayStorage;
  }

  sub_10002849C(&qword_10096FC70, &qword_1007B12B0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1007B10D0;
  *(v5 + 32) = &off_1008AF018;
  if (v4 != 1)
  {
    v6 = v4 >> 1;
    do
    {
      v7 = (v4 & 1) == 0 && v6 == 1;
      v9 = *(v5 + 16);
      v8 = *(v5 + 24);
      if (v7)
      {
        v10 = &off_1008AF040;
      }

      else
      {
        v10 = &off_1008AF068;
      }

      if (v9 >= v8 >> 1)
      {
        v5 = sub_100033BB8((v8 > 1), v9 + 1, 1, v5);
      }

      *(v5 + 16) = v9 + 1;
      *(v5 + 8 * v9 + 32) = v10;
      --v6;
    }

    while (v6);
  }

  return v5;
}

void *sub_1005E94F4()
{
  v0 = sub_10002849C(&unk_1009731F0, &qword_1007B0DA0);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v11 - v2;
  ShelfLayoutContext.shelf.getter();
  swift_getKeyPath();
  ReadOnlyLens.subscript.getter();

  (*(v1 + 8))(v3, v0);
  v4 = *(v11[1] + 16);

  if (!v4)
  {
    return _swiftEmptyArrayStorage;
  }

  sub_10002849C(&qword_10096FC70, &qword_1007B12B0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1007B10D0;
  *(v5 + 32) = &off_1008AF090;
  if (v4 != 1)
  {
    v6 = 0;
    do
    {
      v8 = *(v5 + 16);
      v7 = *(v5 + 24);
      if (v4 >> 1) - 1 != v6 || (v4)
      {
        if (v6)
        {
          v9 = &off_1008AF0B8;
        }

        else
        {
          v9 = &off_1008AF0E0;
        }
      }

      else if (v6)
      {
        v9 = &off_1008AF130;
      }

      else
      {
        v9 = &off_1008AF108;
      }

      if (v7 >> 1 <= v8)
      {
        v5 = sub_100033BB8((v7 > 1), v8 + 1, 1, v5);
      }

      ++v6;
      *(v5 + 16) = v8 + 1;
      *(v5 + 8 * v8 + 32) = v9;
    }

    while (v4 >> 1 != v6);
  }

  return v5;
}

void *sub_1005E9704()
{
  v0 = type metadata accessor for TodaySectionDisplayOptions.GroupDisplayStyle();
  v43 = *(v0 - 8);
  v44 = v0;
  __chkstk_darwin(v0);
  v40 = &v38 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = type metadata accessor for Shelf.ContentsMetadata();
  v48 = *(v2 - 8);
  v49 = v2;
  __chkstk_darwin(v2);
  v47 = &v38 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10002849C(&unk_1009731F0, &qword_1007B0DA0);
  v50 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v46 = &v38 - v8;
  v9 = type metadata accessor for TodaySectionDisplayOptions();
  v41 = *(v9 - 8);
  v42 = v9;
  __chkstk_darwin(v9);
  v39 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for PageGrid.Breakpoint();
  v45 = *(v11 - 8);
  __chkstk_darwin(v11);
  v13 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for PageGrid();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  ShelfLayoutContext.contentPageGrid.getter();
  PageGrid.columnCount.getter();
  v19 = v18;
  v20 = *(v15 + 8);
  v20(v17, v14);
  if (v19 <= 1.0)
  {
    ShelfLayoutContext.shelf.getter();
    swift_getKeyPath();
    ReadOnlyLens.subscript.getter();

    (*(v50 + 8))(v6, v4);
    v35 = *(v51 + 16);

    return sub_1005E8744(&off_1008AF158, v35);
  }

  ShelfLayoutContext.contentPageGrid.getter();
  PageGrid.activeBreakPoint.getter();
  v20(v17, v14);
  if (qword_10096E998 != -1)
  {
    swift_once();
  }

  sub_1000056A8(v11, qword_1009D2A98);
  v21 = static PageGrid.Breakpoint.== infix(_:_:)();
  (*(v45 + 8))(v13, v11);
  v22 = v46;
  ShelfLayoutContext.shelf.getter();
  swift_getKeyPath();
  v23 = v47;
  ReadOnlyLens.subscript.getter();

  (*(v50 + 8))(v22, v4);
  v25 = v48;
  v24 = v49;
  if ((*(v48 + 88))(v23, v49) != enum case for Shelf.ContentsMetadata.todaySection(_:))
  {
    (*(v25 + 8))(v23, v24);
    return sub_1005E9128();
  }

  (*(v25 + 96))(v23, v24);
  v26 = v41;
  v27 = v39;
  v28 = v23;
  v29 = v42;
  (*(v41 + 32))(v39, v28, v42);
  v30 = v40;
  TodaySectionDisplayOptions.groupDisplayStyle.getter();
  v32 = v43;
  v31 = v44;
  v33 = (*(v43 + 88))(v30, v44);
  if (v33 == enum case for TodaySectionDisplayOptions.GroupDisplayStyle.hero(_:))
  {
    if (v21)
    {
      v34 = sub_1005E9328();
    }

    else
    {
      v34 = sub_1005E94F4();
    }
  }

  else
  {
    if (v33 == enum case for TodaySectionDisplayOptions.GroupDisplayStyle.grid(_:))
    {
      goto LABEL_11;
    }

    if (v33 != enum case for TodaySectionDisplayOptions.GroupDisplayStyle.standard(_:))
    {
      v37 = sub_1005E9128();
      (*(v32 + 8))(v30, v31);
      goto LABEL_14;
    }

    if ((v21 & 1) == 0)
    {
LABEL_11:
      v34 = sub_1005E9128();
    }

    else
    {
      v34 = sub_1005E8E90();
    }
  }

  v37 = v34;
LABEL_14:
  (*(v26 + 8))(v27, v29);
  return v37;
}

void sub_1005E9D74(uint64_t a1)
{
  v2 = type metadata accessor for Shelf.ContentType();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10002849C(&unk_1009731F0, &qword_1007B0DA0);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v12 - v8;
  ShelfLayoutContext.shelf.getter();
  swift_getKeyPath();
  ReadOnlyLens.subscript.getter();

  (*(v7 + 8))(v9, v6);
  if ((*(v3 + 88))(v5, v2) == enum case for Shelf.ContentType.smallStoryCard(_:))
  {
    sub_1005E8030();
  }

  else
  {
    v10 = ShelfLayoutContext.traitCollection.getter();
    v11 = UITraitCollection.isSizeClassCompact.getter();

    if (v11)
    {
      sub_1005E87E0(a1);
    }

    else
    {
      sub_1005E9704();
    }

    (*(v3 + 8))(v5, v2);
  }
}

uint64_t sub_1005E9F84(uint64_t a1)
{
  v2 = type metadata accessor for Shelf.ContentType();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10002849C(&unk_1009731F0, &qword_1007B0DA0);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v23 - v11;
  __chkstk_darwin(v13);
  v15 = &v23 - v14;
  v25 = a1;
  ShelfLayoutContext.shelf.getter();
  swift_getKeyPath();
  ReadOnlyLens.subscript.getter();

  v16 = *(v7 + 8);
  v16(v15, v6);
  v23 = v3;
  v24 = v2;
  LODWORD(a1) = (*(v3 + 88))(v5, v2);
  LODWORD(v2) = enum case for Shelf.ContentType.miniTodayCard(_:);
  sub_10002849C(&qword_10096FC70, &qword_1007B12B0);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_1007B10D0;
  if (a1 == v2)
  {
    ShelfLayoutContext.shelf.getter();
    swift_getKeyPath();
    ReadOnlyLens.subscript.getter();

    v16(v12, v6);
    v18 = *(v26 + 16);

    if (v18)
    {
      v19 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      *(v19 + 16) = v18;
      memset((v19 + 32), 4, v18);
      *(v17 + 32) = v19;
    }

    else
    {
      *(v17 + 32) = _swiftEmptyArrayStorage;
    }
  }

  else
  {
    ShelfLayoutContext.shelf.getter();
    swift_getKeyPath();
    ReadOnlyLens.subscript.getter();

    v16(v9, v6);
    v20 = *(v26 + 16);

    if (v20)
    {
      v21 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      v21[2] = v20;
      memset(v21 + 4, 5, v20);
    }

    else
    {
      v21 = _swiftEmptyArrayStorage;
    }

    *(v17 + 32) = v21;
    (*(v23 + 8))(v5, v24);
  }

  return v17;
}

unint64_t sub_1005EA314()
{
  result = qword_10098E600;
  if (!qword_10098E600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10098E600);
  }

  return result;
}

id sub_1005EA368()
{
  if (qword_10096EC98 != -1)
  {
    swift_once();
  }

  v1 = qword_1009D32B0;
  qword_1009D2D70 = qword_1009D32B0;

  return v1;
}

char *sub_1005EA3CC()
{
  v1 = v0;
  swift_getObjectType();
  v2 = type metadata accessor for DirectionalTextAlignment();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1[OBJC_IVAR____TtC8AppStore14SearchHintView_isHighlighted] = 0;
  v1[OBJC_IVAR____TtC8AppStore14SearchHintView_showSeparator] = 0;
  v6 = OBJC_IVAR____TtC8AppStore14SearchHintView_separatorView;
  *&v1[v6] = [objc_allocWithZone(type metadata accessor for SeparatorView(0)) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *&v1[OBJC_IVAR____TtC8AppStore14SearchHintView_iconImage] = 0;
  type metadata accessor for DynamicTypeLabel();
  v7 = type metadata accessor for FontSource();
  v33[3] = v7;
  v33[4] = &protocol witness table for FontSource;
  v8 = sub_1000056E0(v33);
  if (qword_10096EAA8 != -1)
  {
    v31 = v8;
    swift_once();
    v8 = v31;
  }

  v9 = qword_1009D2D70;
  *v8 = qword_1009D2D70;
  (*(*(v7 - 8) + 104))();
  (*(v3 + 104))(v5, enum case for DirectionalTextAlignment.leading(_:), v2);
  v10 = v9;
  *&v1[OBJC_IVAR____TtC8AppStore14SearchHintView_titleLabel] = DynamicTypeLabel.__allocating_init(customTextStyle:numberOfLines:lineBreakMode:directionalTextAlignment:contentSizeCategoryMapping:)();
  *&v1[OBJC_IVAR____TtC8AppStore14SearchHintView_iconView] = [objc_allocWithZone(type metadata accessor for ArtworkView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v11 = type metadata accessor for SearchHintView();
  v32.receiver = v1;
  v32.super_class = v11;
  v12 = objc_msgSendSuper2(&v32, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v16 = v12;
  [v16 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  v17 = OBJC_IVAR____TtC8AppStore14SearchHintView_titleLabel;
  v18 = qword_10096EC80;
  v19 = *&v16[OBJC_IVAR____TtC8AppStore14SearchHintView_titleLabel];
  if (v18 != -1)
  {
    swift_once();
  }

  [v19 setTextColor:qword_1009D3298];

  v20 = *&v16[v17];
  v21 = [v16 traitCollection];
  v22 = [v21 preferredContentSizeCategory];
  v23 = UIContentSizeCategory.isAccessibilityCategory.getter();

  if (v23)
  {
    v24 = 0;
  }

  else
  {
    v24 = 2;
  }

  [v20 setNumberOfLines:v24];

  sub_10002849C(&qword_10097B110, &unk_1007B27C0);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_1007B10D0;
  *(v25 + 32) = type metadata accessor for UITraitPreferredContentSizeCategory();
  *(v25 + 40) = &protocol witness table for UITraitPreferredContentSizeCategory;
  UIView.registerForTraitChanges<A>(_:handler:)();
  swift_unknownObjectRelease();

  [v16 addSubview:*&v16[v17]];
  v26 = OBJC_IVAR____TtC8AppStore14SearchHintView_iconView;
  v27 = qword_10096EC90;
  v28 = *&v16[OBJC_IVAR____TtC8AppStore14SearchHintView_iconView];
  if (v27 != -1)
  {
    swift_once();
  }

  [v28 setTintColor:qword_1009D32A8];

  [v16 addSubview:*&v16[v26]];
  v29 = OBJC_IVAR____TtC8AppStore14SearchHintView_separatorView;
  [*&v16[OBJC_IVAR____TtC8AppStore14SearchHintView_separatorView] setHidden:v16[OBJC_IVAR____TtC8AppStore14SearchHintView_showSeparator]];
  [v16 addSubview:*&v16[v29]];

  return v16;
}

void sub_1005EA968(uint64_t a1, uint64_t a2, Swift::Bool a3)
{
  v4 = *&v3[OBJC_IVAR____TtC8AppStore14SearchHintView_iconImage];
  if (v4)
  {
    v5 = v4;
    v6 = [v3 traitCollection];
    if (qword_10096EC98 != -1)
    {
      swift_once();
    }

    v7 = [objc_opt_self() configurationWithTextStyle:qword_1009D32B0 scale:2];
    v8 = [v7 configurationWithTraitCollection:v6];

    image = [v5 imageWithConfiguration:v8];
  }

  else
  {
    image = 0;
  }

  v11.value.super.isa = image;
  v11.is_nil = 0;
  ArtworkView.setImage(image:animated:)(v11, a3);
}

uint64_t sub_1005EAABC()
{
  v1 = v0;
  swift_getObjectType();
  v2 = type metadata accessor for LayoutRect();
  v31 = *(v2 - 8);
  v32 = v2;
  __chkstk_darwin(v2);
  v28 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for SearchHintLayout();
  v29 = *(v4 - 8);
  v30 = v4;
  __chkstk_darwin(v4);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for SearchHintLayout.Metrics();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v27 - v12;
  v14 = type metadata accessor for SearchHintView();
  v42.receiver = v0;
  v42.super_class = v14;
  objc_msgSendSuper2(&v42, "layoutSubviews");
  v15 = *&v0[OBJC_IVAR____TtC8AppStore14SearchHintView_iconImage];
  v16 = v15;
  [v0 layoutMargins];
  sub_1005EAE00(v15, v0, v13, v17, v18);

  (*(v8 + 16))(v10, v13, v7);
  v19 = *&v0[OBJC_IVAR____TtC8AppStore14SearchHintView_iconView];
  v40 = type metadata accessor for ArtworkView();
  v41 = &protocol witness table for UIView;
  v39 = v19;
  v20 = *&v1[OBJC_IVAR____TtC8AppStore14SearchHintView_titleLabel];
  v37 = type metadata accessor for DynamicTypeLabel();
  v38 = &protocol witness table for UILabel;
  v36 = v20;
  v21 = *&v1[OBJC_IVAR____TtC8AppStore14SearchHintView_separatorView];
  v34 = type metadata accessor for SeparatorView(0);
  v35 = &protocol witness table for UIView;
  v33 = v21;
  v22 = v19;
  v23 = v20;
  v24 = v21;
  SearchHintLayout.init(metrics:iconView:titleLabel:separatorView:)();
  [v1 bounds];
  v25 = v28;
  SearchHintLayout.placeChildren(relativeTo:in:)();
  (*(v31 + 8))(v25, v32);
  (*(v29 + 8))(v6, v30);
  return (*(v8 + 8))(v13, v7);
}

uint64_t sub_1005EAE00@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>, double a4@<D1>, uint64_t a5@<D3>)
{
  v41 = a3;
  v9 = type metadata accessor for FloatingPointRoundingRule();
  v40 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for FontSource();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = (&v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = type metadata accessor for StaticDimension();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v38 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v20 = a1;
    v21 = [a2 traitCollection];
    if (qword_10096EC98 != -1)
    {
      swift_once();
    }

    v22 = [objc_opt_self() configurationWithTextStyle:qword_1009D32B0 scale:2];
    v23 = [v22 configurationWithTraitCollection:v21];

    v24 = [v20 imageWithConfiguration:v23];
    [v24 size];
  }

  else
  {
    v39 = v9;
    v25 = v16;
    if (qword_10096EAA8 != -1)
    {
      swift_once();
    }

    v26 = qword_1009D2D70;
    *v15 = qword_1009D2D70;
    (*(v13 + 104))(v15, enum case for FontSource.textStyle(_:), v12);
    v48 = v12;
    v49 = &protocol witness table for FontSource;
    v27 = sub_1000056E0(v47);
    (*(v13 + 16))(v27, v15, v12);
    v28 = v26;
    StaticDimension.init(_:scaledLike:)();
    (*(v13 + 8))(v15, v12);
    static Dimensions.defaultRoundingRule.getter();
    v16 = v25;
    AnyDimension.value(in:rounded:)();
    (*(v40 + 8))(v11, v39);
    (*(v17 + 8))(v19, v25);
  }

  v48 = &type metadata for CGFloat;
  v49 = &protocol witness table for CGFloat;
  v47[0] = a4;
  v46[8] = &type metadata for CGFloat;
  v46[9] = &protocol witness table for CGFloat;
  v46[5] = a5;
  if (qword_10096EAA8 != -1)
  {
    swift_once();
  }

  v29 = qword_1009D2D70;
  *v15 = qword_1009D2D70;
  v30 = enum case for FontSource.textStyle(_:);
  v31 = *(v13 + 104);
  v31(v15, enum case for FontSource.textStyle(_:), v12);
  v46[3] = v16;
  v46[4] = &protocol witness table for StaticDimension;
  sub_1000056E0(v46);
  v44 = v12;
  v45 = &protocol witness table for FontSource;
  v32 = sub_1000056E0(v43);
  v40 = v16;
  v33 = *(v13 + 16);
  v33(v32, v15, v12);
  v34 = v29;
  StaticDimension.init(_:scaledLike:)();
  v35 = *(v13 + 8);
  v35(v15, v12);
  *v15 = v34;
  v31(v15, v30, v12);
  v44 = v40;
  v45 = &protocol witness table for StaticDimension;
  sub_1000056E0(v43);
  v42[3] = v12;
  v42[4] = &protocol witness table for FontSource;
  v36 = sub_1000056E0(v42);
  v33(v36, v15, v12);
  StaticDimension.init(_:scaledLike:)();
  v35(v15, v12);
  return SearchHintLayout.Metrics.init(leadingMargin:trailingMargin:textLeadingMargin:iconHorizontalCenterMargin:iconSize:)();
}

double sub_1005EB430(void *a1, double a2, double a3)
{
  v4 = v3;
  v29[1] = a1;
  v29[2] = swift_getObjectType();
  v30 = type metadata accessor for SearchHintLayout();
  v6 = *(v30 - 8);
  __chkstk_darwin(v30);
  v8 = v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for SearchHintLayout.Metrics();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = v29 - v14;
  v16 = *&v4[OBJC_IVAR____TtC8AppStore14SearchHintView_iconImage];
  v17 = v16;
  [v4 layoutMargins];
  sub_1005EAE00(v16, a1, v15, v18, v19);

  (*(v10 + 16))(v12, v15, v9);
  v20 = *&v4[OBJC_IVAR____TtC8AppStore14SearchHintView_iconView];
  v38 = type metadata accessor for ArtworkView();
  v39 = &protocol witness table for UIView;
  v37 = v20;
  v21 = *&v4[OBJC_IVAR____TtC8AppStore14SearchHintView_titleLabel];
  v35 = type metadata accessor for DynamicTypeLabel();
  v36 = &protocol witness table for UILabel;
  v34 = v21;
  v22 = *&v4[OBJC_IVAR____TtC8AppStore14SearchHintView_separatorView];
  v32 = type metadata accessor for SeparatorView(0);
  v33 = &protocol witness table for UIView;
  v31 = v22;
  v23 = v20;
  v24 = v21;
  v25 = v22;
  SearchHintLayout.init(metrics:iconView:titleLabel:separatorView:)();
  SearchHintLayout.measurements(fitting:in:)();
  v27 = v26;
  (*(v6 + 8))(v8, v30);
  (*(v10 + 8))(v15, v9);
  return v27;
}

id sub_1005EB7BC(__n128 a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for SearchHintView();
  return objc_msgSendSuper2(&v3, "dealloc");
}

void sub_1005EB880(char *a1, id a2)
{
  v3 = [a2 preferredContentSizeCategory];
  v4 = UIContentSizeCategory.isAccessibilityCategory.getter() & 1;

  v5 = [a1 traitCollection];
  v6 = [v5 preferredContentSizeCategory];

  LODWORD(v5) = UIContentSizeCategory.isAccessibilityCategory.getter() & 1;
  if (v4 != v5)
  {
    v7 = *&a1[OBJC_IVAR____TtC8AppStore14SearchHintView_titleLabel];
    v8 = [a1 traitCollection];
    v9 = [v8 preferredContentSizeCategory];
    v10 = UIContentSizeCategory.isAccessibilityCategory.getter();

    if (v10)
    {
      v11 = 0;
    }

    else
    {
      v11 = 2;
    }

    [v7 setNumberOfLines:v11];

    [a1 setNeedsLayout];
  }
}

uint64_t sub_1005EB9BC(void *a1, void *a2)
{
  v91 = a1;
  v96 = type metadata accessor for SearchHintLayout();
  v95 = *(v96 - 8);
  __chkstk_darwin(v96);
  v93 = &v70 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = v3;
  __chkstk_darwin(v4);
  v94 = &v70 - v5;
  v90 = type metadata accessor for TextAppearance();
  v88 = *(v90 - 8);
  __chkstk_darwin(v90);
  v78 = &v70 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v80 = &v70 - v8;
  __chkstk_darwin(v9);
  v81 = &v70 - v10;
  __chkstk_darwin(v11);
  v83 = &v70 - v12;
  __chkstk_darwin(v13);
  v85 = &v70 - v14;
  v86 = type metadata accessor for LabelPlaceholder();
  v84 = *(v86 - 8);
  __chkstk_darwin(v86);
  v82 = &v70 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = type metadata accessor for FloatingPointRoundingRule();
  v77 = *(v97 - 8);
  __chkstk_darwin(v97);
  v17 = &v70 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for FontSource();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = (&v70 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = type metadata accessor for StaticDimension();
  v76 = *(v22 - 8);
  __chkstk_darwin(v22);
  v24 = &v70 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = type metadata accessor for SearchHintLayout.Metrics();
  v87 = *(v89 - 8);
  __chkstk_darwin(v89);
  v79 = &v70 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v27 = __chkstk_darwin(v26).n128_u64[0];
  v99 = &v70 - v28;
  v98 = a2;
  [a2 pageMarginInsets];
  v30 = v29;
  v32 = v31;
  if (qword_10096EAA8 != -1)
  {
    swift_once();
  }

  v33 = qword_1009D2D70;
  *v21 = qword_1009D2D70;
  v72 = enum case for FontSource.textStyle(_:);
  v71 = v19[13];
  v71(v21);
  v70 = v19 + 13;
  v109 = v18;
  v110 = &protocol witness table for FontSource;
  v34 = sub_1000056E0(&v108);
  v73 = v19[2];
  v74 = v19 + 2;
  v73(v34, v21, v18);
  v35 = v33;
  StaticDimension.init(_:scaledLike:)();
  v75 = v19[1];
  v75(v21, v18);
  static Dimensions.defaultRoundingRule.getter();
  AnyDimension.value(in:rounded:)();
  v77[1](v17, v97);
  (*(v76 + 8))(v24, v22);
  v109 = &type metadata for CGFloat;
  v110 = &protocol witness table for CGFloat;
  v108 = v30;
  v106 = &type metadata for CGFloat;
  v107 = &protocol witness table for CGFloat;
  v105 = v32;
  v36 = v35;
  *v21 = v35;
  v37 = v72;
  v38 = v71;
  (v71)(v21, v72, v18);
  v104[3] = v22;
  v104[4] = &protocol witness table for StaticDimension;
  sub_1000056E0(v104);
  v102 = v18;
  v103 = &protocol witness table for FontSource;
  v39 = sub_1000056E0(&v101);
  v40 = v73;
  v73(v39, v21, v18);
  v41 = v36;
  v77 = v41;
  StaticDimension.init(_:scaledLike:)();
  v42 = v75;
  v75(v21, v18);
  *v21 = v41;
  v38(v21, v37, v18);
  v102 = v22;
  v103 = &protocol witness table for StaticDimension;
  sub_1000056E0(&v101);
  v100[3] = v18;
  v100[4] = &protocol witness table for FontSource;
  v43 = sub_1000056E0(v100);
  v40(v43, v21, v18);
  StaticDimension.init(_:scaledLike:)();
  v42(v21, v18);
  SearchHintLayout.Metrics.init(leadingMargin:trailingMargin:textLeadingMargin:iconHorizontalCenterMargin:iconSize:)();
  SearchHintLayout.Metrics.iconSize.getter();
  v44 = type metadata accessor for LayoutViewPlaceholder();
  swift_allocObject();
  v97 = LayoutViewPlaceholder.init(representing:)();
  v45 = v78;
  TextAppearance.init()();
  v46 = objc_opt_self();
  v47 = v98;
  v48 = [v98 traitCollection];
  v49 = [v46 preferredFontForTextStyle:v77 compatibleWithTraitCollection:v48];

  v50 = v80;
  TextAppearance.withFont(_:)();

  v51 = *(v88 + 8);
  v52 = v90;
  v51(v45, v90);
  v53 = v81;
  TextAppearance.withTextAlignment(_:)();
  v51(v50, v52);
  v54 = v83;
  TextAppearance.withLineBreakMode(_:)();
  v51(v53, v52);
  v55 = [v47 traitCollection];
  v56 = [v55 preferredContentSizeCategory];
  UIContentSizeCategory.isAccessibilityCategory.getter();

  TextAppearance.withNumberOfLines(_:)();
  v51(v54, v52);
  LabelPlaceholder.Options.init(rawValue:)();
  v57 = v91;
  v58 = v82;
  LabelPlaceholder.init(_:with:where:)();
  LabelPlaceholder.layoutTextView.getter();
  (*(v84 + 8))(v58, v86);
  swift_allocObject();
  v59 = LayoutViewPlaceholder.init(representing:)();
  v60 = v87;
  v61 = v89;
  (*(v87 + 16))(v79, v99, v89);
  v106 = v44;
  v107 = &protocol witness table for LayoutViewPlaceholder;
  v105 = v97;
  sub_10002C0AC(&v108, v104);
  v102 = v44;
  v103 = &protocol witness table for LayoutViewPlaceholder;
  v101 = v59;

  v62 = v94;
  SearchHintLayout.init(metrics:iconView:titleLabel:separatorView:)();
  v63 = v95;
  v64 = v93;
  v65 = v96;
  (*(v95 + 16))(v93, v62, v96);
  v66 = (*(v63 + 80) + 16) & ~*(v63 + 80);
  v67 = swift_allocObject();
  (*(v63 + 32))(v67 + v66, v64, v65);
  swift_allocObject();
  v68 = LayoutViewPlaceholder.init(measureWith:)();

  (*(v63 + 8))(v62, v65);
  sub_100007000(&v108);
  (*(v60 + 8))(v99, v61);
  return v68;
}

id sub_1005EC638(void *a1, void *a2, void *a3, uint64_t a4)
{
  v5 = a1;
  *(v4 + OBJC_IVAR____TtC8AppStore18TagFacetRibbonView_maxRowsStandard) = a2;
  *(v4 + OBJC_IVAR____TtC8AppStore18TagFacetRibbonView_maxRowsAX) = a3;
  *(v4 + OBJC_IVAR____TtC8AppStore18TagFacetRibbonView_ribbonBarItemModels) = a1;

  v26 = _swiftEmptyArrayStorage;
  if (v5 >> 62)
  {
    goto LABEL_21;
  }

  v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:

  if (v6)
  {
    v21 = v4;
    v22 = v5;
    v7 = 0;
    v23 = v5 & 0xFFFFFFFFFFFFFF8;
    v24 = v5 & 0xC000000000000001;
    while (1)
    {
      if (v24)
      {
        v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v9 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          goto LABEL_19;
        }
      }

      else
      {
        if (v7 >= *(v23 + 16))
        {
          goto LABEL_20;
        }

        v8 = *(v5 + 8 * v7 + 32);

        v9 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
LABEL_19:
          __break(1u);
LABEL_20:
          __break(1u);
LABEL_21:
          v6 = _CocoaArrayWrapper.endIndex.getter();
          goto LABEL_3;
        }
      }

      v10 = [objc_allocWithZone(type metadata accessor for RibbonBarItemCollectionViewCell(0)) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
      type metadata accessor for ArtworkLoader();
      type metadata accessor for BaseObjectGraph();
      inject<A, B>(_:from:)();
      v11 = RibbonBarItem.clickAction.getter();
      if (v11)
      {
        v12 = v11;
        v13 = v6;
        v14 = swift_allocObject();
        swift_weakInit();
        v15 = swift_allocObject();
        *(v15 + 16) = v14;
        *(v15 + 24) = v12;
        v16 = &v10[OBJC_IVAR____TtC8AppStore31RibbonBarItemCollectionViewCell_tapAction];
        v17 = *&v10[OBJC_IVAR____TtC8AppStore31RibbonBarItemCollectionViewCell_tapAction];
        v18 = *&v10[OBJC_IVAR____TtC8AppStore31RibbonBarItemCollectionViewCell_tapAction + 8];
        *v16 = sub_1005EDD10;
        v16[1] = v15;

        sub_10001F63C(v17, v18);
        v6 = v13;
        v5 = v22;
      }

      sub_1006E9210(v8, v25);

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v26 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v26 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      v4 = &v26;
      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      ++v7;
      if (v9 == v6)
      {
        v19 = v26;
        v4 = v21;
        goto LABEL_18;
      }
    }
  }

  v19 = _swiftEmptyArrayStorage;
LABEL_18:
  sub_1005ECBCC(v19);
  return [v4 setNeedsLayout];
}

id sub_1005EC90C(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  *&v4[OBJC_IVAR____TtC8AppStore18TagFacetRibbonView_tagFacetViews] = _swiftEmptyArrayStorage;
  static TagFacetRibbonLayout.Metrics.standard.getter();
  *&v4[OBJC_IVAR____TtC8AppStore18TagFacetRibbonView_ribbonBarItemModels] = 0;
  *&v4[OBJC_IVAR____TtC8AppStore18TagFacetRibbonView_impressionsCalculator] = 0;
  v10 = &v4[OBJC_IVAR____TtC8AppStore18TagFacetRibbonView_impressionsUpdateBlock];
  *v10 = 0;
  *(v10 + 1) = 0;
  *&v4[OBJC_IVAR____TtC8AppStore18TagFacetRibbonView_maxRowsStandard] = 2;
  *&v4[OBJC_IVAR____TtC8AppStore18TagFacetRibbonView_maxRowsAX] = 5;
  v18.receiver = v4;
  v18.super_class = ObjectType;
  v11 = objc_msgSendSuper2(&v18, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v15 = v11;
  [v15 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  if (qword_10096EAB0 != -1)
  {
    swift_once();
  }

  [v15 setMaximumContentSizeCategory:qword_10098E660];
  sub_10002849C(&qword_10097B110, &unk_1007B27C0);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1007B10D0;
  *(v16 + 32) = type metadata accessor for UITraitLegibilityWeight();
  *(v16 + 40) = &protocol witness table for UITraitLegibilityWeight;
  UIView.registerForTraitChanges<A>(_:handler:)();

  swift_unknownObjectRelease();

  return v15;
}

void sub_1005ECBCC(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8AppStore18TagFacetRibbonView_tagFacetViews;
  v4 = *&v1[OBJC_IVAR____TtC8AppStore18TagFacetRibbonView_tagFacetViews];
  if (v4 >> 62)
  {
    v5 = _CocoaArrayWrapper.endIndex.getter();
    if (!v5)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v5)
    {
      goto LABEL_10;
    }
  }

  if (v5 < 1)
  {
    __break(1u);
    goto LABEL_27;
  }

  for (i = 0; i != v5; ++i)
  {
    if ((v4 & 0xC000000000000001) != 0)
    {
      v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v7 = *(v4 + 8 * i + 32);
    }

    v8 = v7;
    [v7 removeFromSuperview];
  }

LABEL_10:
  *&v1[v3] = a1;

  v9 = *&v1[v3];
  if (v9 >> 62)
  {
    v10 = _CocoaArrayWrapper.endIndex.getter();
    if (v10)
    {
LABEL_12:
      if (v10 >= 1)
      {

        for (j = 0; j != v10; ++j)
        {
          if ((v9 & 0xC000000000000001) != 0)
          {
            v12 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            v12 = *(v9 + 8 * j + 32);
          }

          v13 = v12;
          [v1 addSubview:v12];
        }

        goto LABEL_19;
      }

LABEL_27:
      __break(1u);
      return;
    }
  }

  else
  {
    v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v10)
    {
      goto LABEL_12;
    }
  }

LABEL_19:

  [v1 setNeedsLayout];
}

uint64_t sub_1005ECD7C()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v21 = type metadata accessor for LayoutRect();
  v19 = *(v21 - 8);
  __chkstk_darwin(v21);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for TagFacetRibbonLayout.Metrics();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for TagFacetRibbonLayout();
  v20 = *(v22 - 8);
  *&v9 = __chkstk_darwin(v22).n128_u64[0];
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23.receiver = v1;
  v23.super_class = ObjectType;
  objc_msgSendSuper2(&v23, "layoutSubviews", v9);

  sub_1002A65F0(v12);

  (*(v6 + 16))(v8, &v1[OBJC_IVAR____TtC8AppStore18TagFacetRibbonView_metrics], v5);
  TagFacetRibbonLayout.init(tagFacetViews:maxRowsStandard:maxRowsAX:metrics:)();
  LayoutMarginsAware<>.layoutFrame.getter();
  TagFacetRibbonLayout.placeChildren(relativeTo:in:)();
  (*(v19 + 8))(v4, v21);
  v13 = &v1[OBJC_IVAR____TtC8AppStore18TagFacetRibbonView_impressionsUpdateBlock];
  swift_beginAccess();
  v14 = *v13;
  if (*v13)
  {
    v15 = *(v13 + 1);
    swift_endAccess();

    v14(v16);
    sub_10001F63C(v14, v15);
    return (*(v20 + 8))(v11, v22);
  }

  else
  {
    (*(v20 + 8))(v11, v22);
    return swift_endAccess();
  }
}

double sub_1005ED0D8(uint64_t a1, double a2, double a3)
{
  v16[1] = a1;
  v4 = type metadata accessor for TagFacetRibbonLayout.Metrics();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for TagFacetRibbonLayout();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);

  sub_1002A65F0(v12);

  (*(v5 + 16))(v7, v3 + OBJC_IVAR____TtC8AppStore18TagFacetRibbonView_metrics, v4);
  TagFacetRibbonLayout.init(tagFacetViews:maxRowsStandard:maxRowsAX:metrics:)();
  TagFacetRibbonLayout.measurements(fitting:in:)();
  v14 = v13;
  (*(v9 + 8))(v11, v8);
  return v14;
}

void sub_1005ED3F0(uint64_t a1, uint64_t a2)
{
  v2 = sub_10002849C(&qword_100973D30, &unk_1007B1DC0);
  __chkstk_darwin(v2 - 8);
  v4 = &v37 - v3;
  v5 = type metadata accessor for ImpressionMetrics();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    swift_beginAccess();
    v11 = swift_weakLoadStrong();
    if (v11)
    {
      v12 = v11;
      v49 = *&v10[OBJC_IVAR____TtC8AppStore18TagFacetRibbonView_ribbonBarItemModels];
      if (v49)
      {
        v13 = *&v10[OBJC_IVAR____TtC8AppStore18TagFacetRibbonView_tagFacetViews];
        v39 = v10;
        if (v13 >> 62)
        {
          goto LABEL_39;
        }

        for (i = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
        {

          if (!i)
          {
            break;
          }

          v47 = v13 & 0xFFFFFFFFFFFFFF8;
          v48 = v13 & 0xC000000000000001;
          v15 = v49 & 0xFFFFFFFFFFFFFF8;
          if (v49 >= 0)
          {
            v16 = v49 & 0xFFFFFFFFFFFFFF8;
          }

          else
          {
            v16 = v49;
          }

          v37 = v16;
          v41 = (v6 + 32);
          v42 = (v6 + 48);
          v40 = (v6 + 8);
          v17 = 4;
          v45 = v49 & 0xC000000000000001;
          v46 = v49 >> 62;
          v43 = v49 & 0xFFFFFFFFFFFFFF8;
          v44 = i;
          v38 = v4;
          while (1)
          {
            v6 = v17 - 4;
            if (v48)
            {
              v18 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              if (v6 >= *(v47 + 16))
              {
                goto LABEL_37;
              }

              v18 = *(v13 + 8 * v17);
            }

            v19 = v18;
            v20 = v17 - 3;
            if (__OFADD__(v6, 1))
            {
              break;
            }

            if (v46)
            {
              if (v6 == _CocoaArrayWrapper.endIndex.getter())
              {
LABEL_33:

                goto LABEL_34;
              }
            }

            else if (v6 == *(v15 + 16))
            {
              goto LABEL_33;
            }

            if (v45)
            {
              specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              if (v6 >= *(v15 + 16))
              {
                goto LABEL_38;
              }
            }

            RibbonBarItem.impressionMetrics.getter();
            if ((*v42)(v4, 1, v5) == 1)
            {

              sub_100453E30(v4);
            }

            else
            {
              (*v41)(v8, v4, v5);
              v21 = v19;
              if ([v21 isHidden])
              {
              }

              else
              {
                [v21 frame];
                v23 = v22;
                v25 = v24;
                v27 = v26;
                v29 = v28;

                v30 = v13;
                v31 = v12;
                v32 = v5;
                v33 = v8;
                v34 = v39;
                v35 = [v39 superview];
                v36 = v34;
                v8 = v33;
                v5 = v32;
                v12 = v31;
                v13 = v30;
                v4 = v38;
                [v36 convertRect:v35 toView:{v23, v25, v27, v29}];

                ImpressionsCalculator.addElement(_:at:)();
              }

              (*v40)(v8, v5);
            }

            ++v17;
            v15 = v43;
            if (v20 == v44)
            {
              goto LABEL_34;
            }
          }

          __break(1u);
LABEL_37:
          __break(1u);
LABEL_38:
          __break(1u);
LABEL_39:
          ;
        }

LABEL_34:
      }

      else
      {
      }
    }

    else
    {
    }
  }
}

uint64_t type metadata accessor for TagFacetRibbonView(uint64_t a1)
{
  result = qword_10098E6A8;
  if (!qword_10098E6A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1005ED990(uint64_t a1)
{
  result = type metadata accessor for TagFacetRibbonLayout.Metrics();
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

double sub_1005EDA54()
{
  swift_beginAccess();

  return result;
}

double sub_1005EDA9C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8AppStore18TagFacetRibbonView_impressionsCalculator;
  swift_beginAccess();
  *(v1 + v3) = a1;

  return result;
}

uint64_t sub_1005EDB54()
{
  v1 = (v0 + OBJC_IVAR____TtC8AppStore18TagFacetRibbonView_impressionsUpdateBlock);
  swift_beginAccess();
  v2 = *v1;
  sub_10000827C(*v1, v1[1]);
  return v2;
}

uint64_t sub_1005EDBB0(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC8AppStore18TagFacetRibbonView_impressionsUpdateBlock);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  *v5 = a1;
  v5[1] = a2;
  return sub_10001F63C(v6, v7);
}

void (*sub_1005EDC70(uint64_t a1, uint64_t a2))()
{
  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v3 = swift_allocObject();
  swift_weakInit();
  v4 = swift_allocObject();
  *(v4 + 16) = v2;
  *(v4 + 24) = v3;
  return sub_1005EDDE4;
}

uint64_t sub_1005EDD18(void *a1)
{
  sub_10002A400(a1, a1[3]);
  v2 = UIMutableTraits.preferredContentSizeCategory.getter();
  if (qword_10096EAB0 != -1)
  {
    swift_once();
  }

  v3 = qword_10098E660;
  if (static UIContentSizeCategory.< infix(_:_:)())
  {
    v3;
  }

  sub_100047650(a1, a1[3]);
  return UIMutableTraits.preferredContentSizeCategory.setter();
}

uint64_t sub_1005EDDEC()
{
  v0 = type metadata accessor for FontSource();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v16 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10096E058 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for FontUseCase();
  v5 = sub_1000056A8(v4, qword_1009D1088);
  v6 = *(v4 - 8);
  v7 = *(v6 + 16);
  v16[1] = v6 + 16;
  v17 = v7;
  v7(v3, v5, v4);
  v8 = enum case for FontSource.useCase(_:);
  v16[0] = v1[13];
  (v16[0])(v3, enum case for FontSource.useCase(_:), v0);
  v9 = type metadata accessor for StaticDimension();
  v25 = v9;
  v26 = &protocol witness table for StaticDimension;
  sub_1000056E0(&v24);
  v22 = v0;
  v23 = &protocol witness table for FontSource;
  v10 = sub_1000056E0(&v21);
  v11 = v1[2];
  v11(v10, v3, v0);
  StaticDimension.init(_:scaledLike:)();
  v12 = v1[1];
  v12(v3, v0);
  if (qword_10096E068 != -1)
  {
    swift_once();
  }

  v13 = sub_1000056A8(v4, qword_1009D10B8);
  v17(v3, v13, v4);
  (v16[0])(v3, v8, v0);
  v22 = v9;
  v23 = &protocol witness table for StaticDimension;
  sub_1000056E0(&v21);
  v19 = v0;
  v20 = &protocol witness table for FontSource;
  v14 = sub_1000056E0(&v18);
  v11(v14, v3, v0);
  StaticDimension.init(_:scaledLike:)();
  v12(v3, v0);
  v19 = type metadata accessor for ZeroDimension();
  v20 = &protocol witness table for ZeroDimension;
  sub_1000056E0(&v18);
  static ZeroDimension.zero.getter();
  qword_1009D2E40 = &type metadata for Double;
  unk_1009D2E48 = &protocol witness table for Double;
  qword_1009D2E28 = 0x4028000000000000;
  xmmword_1009D2DA0 = vdupq_n_s64(0x4064000000000000uLL);
  sub_100005A38(&v24, &unk_1009D2DB0);
  sub_100005A38(&v21, &unk_1009D2DD8);
  result = sub_100005A38(&v18, &unk_1009D2E00);
  byte_1009D2E50 = 1;
  return result;
}

char *sub_1005EE138(double a1, double a2, double a3, double a4)
{
  v9 = sub_10002849C(&unk_100981210, &qword_1007C2310);
  __chkstk_darwin(v9 - 8);
  v66 = &v58 - v10;
  v11 = type metadata accessor for CornerStyle();
  v64 = *(v11 - 8);
  v65 = v11;
  __chkstk_darwin(v11);
  v63 = &v58 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DirectionalTextAlignment();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v58 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_10002849C(&qword_100972ED0, &unk_1007B17B0);
  __chkstk_darwin(v17 - 8);
  v19 = &v58 - v18;
  v20 = OBJC_IVAR____TtC8AppStore39LargeGameCenterPlayerCollectionViewCell_itemLayoutContext;
  v21 = type metadata accessor for ItemLayoutContext();
  (*(*(v21 - 8) + 56))(&v4[v20], 1, 1, v21);
  v22 = OBJC_IVAR____TtC8AppStore39LargeGameCenterPlayerCollectionViewCell_preferredArtworkSize;
  if (qword_10096EAB8 != -1)
  {
    swift_once();
  }

  *&v4[v22] = xmmword_1009D2DA0;
  v62 = OBJC_IVAR____TtC8AppStore39LargeGameCenterPlayerCollectionViewCell_alias;
  v67 = v4;
  if (qword_10096E058 != -1)
  {
    swift_once();
  }

  v23 = type metadata accessor for FontUseCase();
  v24 = sub_1000056A8(v23, qword_1009D1088);
  v25 = *(v23 - 8);
  v61 = *(v25 + 16);
  v61(v19, v24, v23);
  v60 = *(v25 + 56);
  v60(v19, 0, 1, v23);
  v26 = enum case for DirectionalTextAlignment.none(_:);
  v27 = *(v14 + 104);
  v27(v16, enum case for DirectionalTextAlignment.none(_:), v13);
  v28 = type metadata accessor for DynamicTypeLabel();
  v59 = v13;
  v29 = v28;
  v30 = objc_allocWithZone(v28);
  *&v67[v62] = DynamicTypeLabel.init(useCase:numberOfLines:lineBreakMode:isUserInteractionEnabled:directionalTextAlignment:contentSizeCategoryMapping:)();
  v62 = OBJC_IVAR____TtC8AppStore39LargeGameCenterPlayerCollectionViewCell_displayName;
  if (qword_10096E068 != -1)
  {
    swift_once();
  }

  v31 = sub_1000056A8(v23, qword_1009D10B8);
  v61(v19, v31, v23);
  v60(v19, 0, 1, v23);
  v27(v16, v26, v59);
  v32 = objc_allocWithZone(v29);
  v33 = DynamicTypeLabel.init(useCase:numberOfLines:lineBreakMode:isUserInteractionEnabled:directionalTextAlignment:contentSizeCategoryMapping:)();
  v34 = v67;
  *&v67[v62] = v33;
  *&v34[OBJC_IVAR____TtC8AppStore39LargeGameCenterPlayerCollectionViewCell_artworkView] = [objc_allocWithZone(type metadata accessor for ArtworkView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v35 = type metadata accessor for LargeGameCenterPlayerCollectionViewCell(0);
  v68.receiver = v34;
  v68.super_class = v35;
  v36 = objc_msgSendSuper2(&v68, "initWithFrame:", a1, a2, a3, a4);
  v37 = OBJC_IVAR____TtC8AppStore39LargeGameCenterPlayerCollectionViewCell_artworkView;
  v38 = *&v36[OBJC_IVAR____TtC8AppStore39LargeGameCenterPlayerCollectionViewCell_artworkView];
  sub_100028BB8();
  v39 = v36;
  v40 = v38;
  static UIColor.placeholderBackground.getter();
  ArtworkView.backgroundColor.setter();

  v41 = *&v36[v37];
  v42 = v63;
  dispatch thunk of RoundedCornerView.cornerStyle.getter();
  ArtworkView.setCorner(radius:style:)();

  (*(v64 + 8))(v42, v65);
  v43 = qword_10096DAD0;
  v44 = *&v36[v37];
  if (v43 != -1)
  {
    swift_once();
  }

  v45 = type metadata accessor for Shadow();
  v46 = sub_1000056A8(v45, qword_1009CFED0);
  v47 = *(v45 - 8);
  v48 = v66;
  (*(v47 + 16))(v66, v46, v45);
  (*(v47 + 56))(v48, 0, 1, v45);
  ArtworkView.shadow.setter();

  v49 = [v39 contentView];
  [v49 addSubview:*&v36[v37]];

  v50 = OBJC_IVAR____TtC8AppStore39LargeGameCenterPlayerCollectionViewCell_alias;
  v51 = *&v39[OBJC_IVAR____TtC8AppStore39LargeGameCenterPlayerCollectionViewCell_alias];
  UILabel.alignment.setter();

  [*&v39[v50] setNumberOfLines:1];
  v52 = [v39 contentView];
  [v52 addSubview:*&v39[v50]];

  v53 = OBJC_IVAR____TtC8AppStore39LargeGameCenterPlayerCollectionViewCell_displayName;
  v54 = *&v39[OBJC_IVAR____TtC8AppStore39LargeGameCenterPlayerCollectionViewCell_displayName];
  v55 = static UIColor.secondaryText.getter();
  [v54 setTextColor:v55];

  [*&v39[v53] setNumberOfLines:1];
  v56 = [v39 contentView];

  [v56 addSubview:*&v39[v53]];
  return v39;
}

uint64_t sub_1005EE8E0()
{
  v1 = v0;
  v2 = type metadata accessor for LayoutRect();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for LargeGameCenterPlayerCollectionViewCell(0);
  v24.receiver = v0;
  v24.super_class = v6;
  objc_msgSendSuper2(&v24, "layoutSubviews");
  if (qword_10096EAB8 != -1)
  {
    swift_once();
  }

  sub_1000323C4(&xmmword_1009D2DA0, v18);
  v7 = *&v0[OBJC_IVAR____TtC8AppStore39LargeGameCenterPlayerCollectionViewCell_artworkView];
  v18[26] = type metadata accessor for ArtworkView();
  v18[27] = &protocol witness table for UIView;
  v18[23] = v7;
  v8 = *&v1[OBJC_IVAR____TtC8AppStore39LargeGameCenterPlayerCollectionViewCell_alias];
  v19 = type metadata accessor for DynamicTypeLabel();
  v20 = &protocol witness table for UILabel;
  v18[28] = v8;
  v9 = *&v1[OBJC_IVAR____TtC8AppStore39LargeGameCenterPlayerCollectionViewCell_displayName];
  v22 = v19;
  v23 = &protocol witness table for UILabel;
  v21 = v9;
  v10 = v7;
  v11 = v8;
  v12 = v9;
  [v1 bounds];
  LargeGameCenterPlayerLayout.placeChildren(relativeTo:in:)(v1, v5, v13, v14, v15, v16);
  (*(v3 + 8))(v5, v2);
  return sub_1005EEE10(v18);
}

id sub_1005EEAF0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LargeGameCenterPlayerCollectionViewCell(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for LargeGameCenterPlayerCollectionViewCell(uint64_t a1)
{
  result = qword_10098E6E0;
  if (!qword_10098E6E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1005EEBE8(uint64_t a1)
{
  sub_100027FAC(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1005EECB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  sub_1002A4764(a1, a2, a3, WitnessTable);
}

void sub_1005EED24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  sub_1002A4A1C(a1, a2, a3, WitnessTable);
}

unint64_t sub_1005EED90(uint64_t a1)
{
  result = sub_1005EEDB8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1005EEDB8()
{
  result = qword_10098E6F0;
  if (!qword_10098E6F0)
  {
    type metadata accessor for LargeGameCenterPlayerCollectionViewCell(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10098E6F0);
  }

  return result;
}

void sub_1005EEE64()
{
  v1 = type metadata accessor for DirectionalTextAlignment();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v26 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10002849C(&qword_100972ED0, &unk_1007B17B0);
  __chkstk_darwin(v4 - 8);
  v6 = &v22 - v5;
  v7 = OBJC_IVAR____TtC8AppStore39LargeGameCenterPlayerCollectionViewCell_itemLayoutContext;
  v8 = type metadata accessor for ItemLayoutContext();
  v9 = *(*(v8 - 8) + 56);
  v27 = v0;
  v9(v0 + v7, 1, 1, v8);
  v10 = OBJC_IVAR____TtC8AppStore39LargeGameCenterPlayerCollectionViewCell_preferredArtworkSize;
  if (qword_10096EAB8 != -1)
  {
    swift_once();
  }

  *(v27 + v10) = xmmword_1009D2DA0;
  v23 = OBJC_IVAR____TtC8AppStore39LargeGameCenterPlayerCollectionViewCell_alias;
  if (qword_10096E058 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for FontUseCase();
  v12 = sub_1000056A8(v11, qword_1009D1088);
  v13 = *(v11 - 8);
  v22 = *(v13 + 16);
  v22(v6, v12, v11);
  v14 = *(v13 + 56);
  v14(v6, 0, 1, v11);
  v15 = enum case for DirectionalTextAlignment.none(_:);
  v16 = v2 + 104;
  v17 = *(v2 + 104);
  v24 = v16;
  v25 = v1;
  v17(v26, enum case for DirectionalTextAlignment.none(_:), v1);
  v18 = type metadata accessor for DynamicTypeLabel();
  v19 = objc_allocWithZone(v18);
  *(v27 + v23) = DynamicTypeLabel.init(useCase:numberOfLines:lineBreakMode:isUserInteractionEnabled:directionalTextAlignment:contentSizeCategoryMapping:)();
  v23 = OBJC_IVAR____TtC8AppStore39LargeGameCenterPlayerCollectionViewCell_displayName;
  if (qword_10096E068 != -1)
  {
    swift_once();
  }

  v20 = sub_1000056A8(v11, qword_1009D10B8);
  v22(v6, v20, v11);
  v14(v6, 0, 1, v11);
  v17(v26, v15, v25);
  v21 = objc_allocWithZone(v18);
  *(v27 + v23) = DynamicTypeLabel.init(useCase:numberOfLines:lineBreakMode:isUserInteractionEnabled:directionalTextAlignment:contentSizeCategoryMapping:)();
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

id sub_1005EF29C()
{
  v15.receiver = v0;
  v15.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v15, "layoutSubviews");
  v1 = [v0 textLabel];
  if (v1)
  {
    v2 = v1;
    [v1 frame];
    v4 = v3;
    v6 = v5;
    v8 = v7;
    v10 = v9;

    v16.origin.x = v4;
    v16.origin.y = v6;
    v16.size.width = v8;
    v16.size.height = v10;
    MaxX = CGRectGetMaxX(v16);
  }

  else
  {
    MaxX = 0.0;
  }

  [v0 bounds];
  v12 = MaxX + 10.0;
  v13 = CGRectGetMaxX(v17) - MaxX + -20.0;
  [v0 bounds];
  return [*&v0[OBJC_IVAR____TtC8AppStore15DebugSliderCell_slider] setFrame:{v12, 0.0, v13, CGRectGetHeight(v18)}];
}

uint64_t sub_1005EF458()
{
  v0 = type metadata accessor for Separator.Position();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Separator();
  sub_100005644(v4, qword_1009D2E80);
  sub_1000056A8(v4, qword_1009D2E80);
  (*(v1 + 104))(v3, enum case for Separator.Position.bottom(_:), v0);
  v7[3] = type metadata accessor for ZeroDimension();
  v7[4] = &protocol witness table for ZeroDimension;
  sub_1000056E0(v7);
  static ZeroDimension.zero.getter();
  return Separator.init(position:leadingInset:trailingInset:verticalOutset:)();
}

void sub_1005EF590()
{
  v1 = v0;
  v2 = type metadata accessor for Separator();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((v1[OBJC_IVAR____TtC8AppStore31UpdatesLockupCollectionViewCell_hasSeparator] & 1) == 0)
  {
    v13 = &v1[OBJC_IVAR____TtC8AppStore31UpdatesLockupCollectionViewCell_separatorView];
    v14 = *&v1[OBJC_IVAR____TtC8AppStore31UpdatesLockupCollectionViewCell_separatorView];
LABEL_10:
    if (!v14)
    {
      v12 = 0;
      goto LABEL_14;
    }

    v19 = v14;
    v12 = 0;
    v18 = v14;
LABEL_12:
    [v18 removeFromSuperview];
    goto LABEL_14;
  }

  if (qword_10096EAC0 != -1)
  {
    v27 = v4;
    swift_once();
    v4 = v27;
  }

  v7 = v4;
  v8 = sub_1000056A8(v4, qword_1009D2E80);
  (*(v3 + 16))(v6, v8, v7);
  v9 = [objc_allocWithZone(type metadata accessor for SeparatorView(0)) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v10 = OBJC_IVAR____TtC8AppStore13SeparatorView_separator;
  swift_beginAccess();
  v11 = *(v3 + 40);
  v12 = v9;
  v11(&v9[v10], v6, v7);
  swift_endAccess();

  v13 = &v1[OBJC_IVAR____TtC8AppStore31UpdatesLockupCollectionViewCell_separatorView];
  v14 = *&v1[OBJC_IVAR____TtC8AppStore31UpdatesLockupCollectionViewCell_separatorView];
  if (!v12)
  {
    goto LABEL_10;
  }

  if (v14)
  {
    v15 = v14;
    v16 = v12;
    v17 = static NSObject.== infix(_:_:)();

    if ((v17 & 1) == 0)
    {
      v18 = *v13;
      if (*v13)
      {
        goto LABEL_12;
      }
    }
  }

LABEL_14:
  v20 = *v13;
  *v13 = v12;
  v21 = v12;

  v22 = *v13;
  if (v14)
  {
    if (!v22)
    {
      goto LABEL_22;
    }

    type metadata accessor for SeparatorView(0);
    v14 = v14;
    v23 = v22;
    v24 = static NSObject.== infix(_:_:)();

    if (v24)
    {
      goto LABEL_22;
    }

    v22 = *v13;
    if (!*v13)
    {
      goto LABEL_22;
    }

    goto LABEL_21;
  }

  if (v22)
  {
    v14 = 0;
LABEL_21:
    v25 = v22;
    v26 = [v1 contentView];
    [v26 addSubview:v25];

    v21 = v25;
    v14 = v26;
LABEL_22:

    v21 = v14;
  }
}

uint64_t sub_1005EF88C()
{
  if (qword_10096E6B0 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for StaticDimension();
  v1 = sub_1000056A8(v0, qword_1009D2430);
  qword_1009D2EB0 = v0;
  unk_1009D2EB8 = &protocol witness table for StaticDimension;
  v2 = sub_1000056E0(qword_1009D2E98);
  v3 = *(*(v0 - 8) + 16);

  return v3(v2, v1, v0);
}

char *sub_1005EF948(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v10 = type metadata accessor for DirectionalTextAlignment();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10002849C(&qword_100972ED0, &unk_1007B17B0);
  __chkstk_darwin(v14 - 8);
  v16 = &v47 - v15;
  v17 = OBJC_IVAR____TtC8AppStore31UpdatesLockupCollectionViewCell_expandableTextView;
  sub_100028BB8();
  v18 = static UIColor.tableViewCellBackground.getter();
  v19 = objc_allocWithZone(type metadata accessor for ExpandableTextView());
  *&v5[v17] = sub_10059F344(v18, 0.0, 0.0, 0.0, 0.0);
  v20 = OBJC_IVAR____TtC8AppStore31UpdatesLockupCollectionViewCell_versionMetadata;
  if (qword_10096DE18 != -1)
  {
    swift_once();
  }

  v21 = type metadata accessor for FontUseCase();
  v22 = sub_1000056A8(v21, qword_1009D09C8);
  v23 = *(v21 - 8);
  (*(v23 + 16))(v16, v22, v21);
  (*(v23 + 56))(v16, 0, 1, v21);
  (*(v11 + 104))(v13, enum case for DirectionalTextAlignment.none(_:), v10);
  v24 = objc_allocWithZone(type metadata accessor for DynamicTypeLabel());
  *&v5[v20] = DynamicTypeLabel.init(useCase:numberOfLines:lineBreakMode:isUserInteractionEnabled:directionalTextAlignment:contentSizeCategoryMapping:)();
  v25 = OBJC_IVAR____TtC8AppStore31UpdatesLockupCollectionViewCell_lockupView;
  *&v5[v25] = [objc_allocWithZone(type metadata accessor for SmallLockupView(0)) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v5[OBJC_IVAR____TtC8AppStore31UpdatesLockupCollectionViewCell_hasSeparator] = 0;
  *&v5[OBJC_IVAR____TtC8AppStore31UpdatesLockupCollectionViewCell_separatorView] = 0;
  v26 = OBJC_IVAR____TtC8AppStore31UpdatesLockupCollectionViewCell_fetchingArtworkTemplate;
  v27 = type metadata accessor for Artwork.URLTemplate();
  (*(*(v27 - 8) + 56))(&v5[v26], 1, 1, v27);
  v28 = type metadata accessor for UpdatesLockupCollectionViewCell(0);
  v47.receiver = v5;
  v47.super_class = v28;
  v29 = objc_msgSendSuper2(&v47, "initWithFrame:", a1, a2, a3, a4);
  v30 = [v29 contentView];
  [v30 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];

  v31 = [v29 contentView];
  [v31 addSubview:*&v29[OBJC_IVAR____TtC8AppStore31UpdatesLockupCollectionViewCell_lockupView]];

  v32 = OBJC_IVAR____TtC8AppStore31UpdatesLockupCollectionViewCell_expandableTextView;
  v33 = *&v29[OBJC_IVAR____TtC8AppStore31UpdatesLockupCollectionViewCell_expandableTextView];
  v34 = OBJC_IVAR____TtC8AppStore18ExpandableTextView_collapsedNumberOfLines;
  v35 = *&v33[OBJC_IVAR____TtC8AppStore18ExpandableTextView_collapsedNumberOfLines];
  *&v33[OBJC_IVAR____TtC8AppStore18ExpandableTextView_collapsedNumberOfLines] = 2;
  v36 = OBJC_IVAR____TtC8AppStore18ExpandableTextView_isCollapsed;
  if (v33[OBJC_IVAR____TtC8AppStore18ExpandableTextView_isCollapsed] == 1)
  {
    v37 = *&v33[OBJC_IVAR____TtC8AppStore18ExpandableTextView_textLabel];
    v38 = v33;
    [v37 setNumberOfLines:2];
    if (*&v33[v34] == v35)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v39 = v33;
    if (v35 == 2)
    {
      goto LABEL_9;
    }
  }

  if (v33[v36])
  {
    sub_1005A0320();
  }

LABEL_9:

  v40 = [v29 contentView];
  [v40 addSubview:*&v29[v32]];

  v41 = [v29 contentView];
  v42 = OBJC_IVAR____TtC8AppStore31UpdatesLockupCollectionViewCell_versionMetadata;
  [v41 addSubview:*&v29[OBJC_IVAR____TtC8AppStore31UpdatesLockupCollectionViewCell_versionMetadata]];

  v43 = *&v29[v42];
  v44 = static UIColor.secondaryText.getter();
  [v43 setTextColor:v44];

  v45 = static UIColor.tableViewCellBackground.getter();
  [v29 setBackgroundColor:v45];

  return v29;
}

void sub_1005EFF74()
{
  v1 = [v0 contentView];
  v2 = [v0 backgroundColor];
  [v1 setBackgroundColor:v2];

  v3 = *&v0[OBJC_IVAR____TtC8AppStore31UpdatesLockupCollectionViewCell_lockupView];
  v4 = [v0 backgroundColor];
  [v3 setBackgroundColor:v4];

  v5 = *&v0[OBJC_IVAR____TtC8AppStore31UpdatesLockupCollectionViewCell_expandableTextView];
  v6 = [v0 backgroundColor];
  [v5 setBackgroundColor:v6];

  v7 = *&v0[OBJC_IVAR____TtC8AppStore31UpdatesLockupCollectionViewCell_versionMetadata];
  v8 = [v0 backgroundColor];
  [v7 setBackgroundColor:v8];
}

uint64_t sub_1005F00B4()
{
  v62 = type metadata accessor for Separator();
  v61 = *(v62 - 8);
  __chkstk_darwin(v62);
  v60 = &v59 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = type metadata accessor for FloatingPointRoundingRule();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v59 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for UpdatesLockupCollectionViewCell(0);
  v68.receiver = v0;
  v68.super_class = v6;
  objc_msgSendSuper2(&v68, "layoutSubviews");
  v7 = *&v0[OBJC_IVAR____TtC8AppStore31UpdatesLockupCollectionViewCell_lockupView];
  LayoutMarginsAware<>.layoutFrame.getter();
  [v7 sizeThatFits:{v8, v9}];
  v11 = v10;
  LayoutMarginsAware<>.layoutFrame.getter();
  MinX = CGRectGetMinX(v69);
  LayoutMarginsAware<>.layoutFrame.getter();
  MinY = CGRectGetMinY(v70);
  LayoutMarginsAware<>.layoutFrame.getter();
  Width = CGRectGetWidth(v71);
  [v7 setFrame:{MinX, MinY, Width, v11}];
  if (qword_10096EAC8 != -1)
  {
    swift_once();
  }

  sub_10002C0AC(qword_1009D2E98, v66);
  LayoutMarginsAware<>.layoutFrame.getter();
  Height = CGRectGetHeight(v72);
  v73.origin.x = MinX;
  v73.origin.y = MinY;
  v73.size.width = Width;
  v73.size.height = v11;
  v16 = CGRectGetHeight(v73);
  sub_10002A400(v66, v67);
  j___s5JetUI10DimensionsV19defaultRoundingRules013FloatingPointeF0OvgZ();
  AnyDimension.value(in:rounded:)();
  v18 = v17;
  v19 = v3 + 8;
  v20 = *(v3 + 8);
  v65 = v19;
  v20(v5, v2);
  v21 = Height - (v16 + v18);
  v22 = *&v0[OBJC_IVAR____TtC8AppStore31UpdatesLockupCollectionViewCell_versionMetadata];
  LayoutMarginsAware<>.layoutFrame.getter();
  v64 = v22;
  [v22 sizeThatFits:{v23, v24}];
  v26 = v25;
  v27 = *&v0[OBJC_IVAR____TtC8AppStore31UpdatesLockupCollectionViewCell_expandableTextView];
  v63 = OBJC_IVAR____TtC8AppStore18ExpandableTextView_isCollapsed;
  if ((v27[OBJC_IVAR____TtC8AppStore18ExpandableTextView_isCollapsed] & 1) == 0)
  {
    sub_10002A400(v66, v67);
    j___s5JetUI10DimensionsV19defaultRoundingRules013FloatingPointeF0OvgZ();
    AnyDimension.value(in:rounded:)();
    v29 = v28;
    v20(v5, v2);
    v21 = v21 - (v26 + v29);
  }

  LayoutMarginsAware<>.layoutFrame.getter();
  [v27 measurementsWithFitting:v0 in:{CGRectGetWidth(v74), v21}];
  v31 = v30;
  LayoutMarginsAware<>.layoutFrame.getter();
  v32 = CGRectGetMinX(v75);
  v76.origin.x = MinX;
  v76.origin.y = MinY;
  v76.size.width = Width;
  v76.size.height = v11;
  MaxY = CGRectGetMaxY(v76);
  sub_10002A400(v66, v67);
  j___s5JetUI10DimensionsV19defaultRoundingRules013FloatingPointeF0OvgZ();
  AnyDimension.value(in:rounded:)();
  v35 = v34;
  v20(v5, v2);
  LayoutMarginsAware<>.layoutFrame.getter();
  [v27 setFrame:{v32, MaxY + v35, CGRectGetWidth(v77), v31}];
  [v27 frame];
  v36 = CGRectGetMinX(v78);
  [v27 frame];
  v37 = CGRectGetMaxY(v79);
  sub_10002A400(v66, v67);
  j___s5JetUI10DimensionsV19defaultRoundingRules013FloatingPointeF0OvgZ();
  AnyDimension.value(in:rounded:)();
  v39 = v38;
  v20(v5, v2);
  LayoutMarginsAware<>.layoutFrame.getter();
  v40 = CGRectGetWidth(v80);
  v41 = v64;
  [v64 setFrame:{v36, v37 + v39, v40, v26}];
  v42 = 1.0;
  if (v27[v63])
  {
    v42 = 0.0;
  }

  [v41 setAlpha:v42];
  v43 = *&v0[OBJC_IVAR____TtC8AppStore31UpdatesLockupCollectionViewCell_separatorView];
  if (v43)
  {
    v44 = v43;
    LayoutMarginsAware<>.layoutFrame.getter();
    CGRectGetMinX(v81);
    [v0 bounds];
    CGRectGetMinY(v82);
    LayoutMarginsAware<>.layoutFrame.getter();
    CGRectGetWidth(v83);
    [v0 bounds];
    CGRectGetHeight(v84);
    v45 = OBJC_IVAR____TtC8AppStore13SeparatorView_separator;
    swift_beginAccess();
    v46 = v61;
    v47 = &v44[v45];
    v48 = v60;
    v49 = v62;
    (*(v61 + 16))(v60, v47, v62);
    Separator.frame(forBoundingRect:in:)();
    v51 = v50;
    v53 = v52;
    v55 = v54;
    v57 = v56;
    (*(v46 + 8))(v48, v49);
    [v44 setFrame:{v51, v53, v55, v57}];
  }

  return sub_100007000(v66);
}

id sub_1005F0784()
{
  v1 = v0;
  v2 = sub_10002849C(&qword_100972638, qword_1007BDA60);
  __chkstk_darwin(v2 - 8);
  v4 = &v12 - v3;
  v5 = type metadata accessor for UpdatesLockupCollectionViewCell(0);
  v13.receiver = v0;
  v13.super_class = v5;
  objc_msgSendSuper2(&v13, "prepareForReuse");
  v6 = *(*&v0[OBJC_IVAR____TtC8AppStore31UpdatesLockupCollectionViewCell_lockupView] + OBJC_IVAR____TtC8AppStore14BaseLockupView_artworkView);
  v14.value.super.isa = 0;
  v14.is_nil = 0;
  ArtworkView.setImage(image:animated:)(v14, v7);

  v8 = type metadata accessor for Artwork.URLTemplate();
  (*(*(v8 - 8) + 56))(v4, 1, 1, v8);
  v9 = OBJC_IVAR____TtC8AppStore31UpdatesLockupCollectionViewCell_fetchingArtworkTemplate;
  swift_beginAccess();
  sub_1001AEE58(v4, &v1[v9]);
  swift_endAccess();
  v10 = *&v1[OBJC_IVAR____TtC8AppStore31UpdatesLockupCollectionViewCell_expandableTextView];
  sub_10059FAC0(0, 0);
  [v10 setNeedsLayout];
  return [*&v1[OBJC_IVAR____TtC8AppStore31UpdatesLockupCollectionViewCell_versionMetadata] setText:0];
}

double sub_1005F094C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_10002849C(&qword_100972638, qword_1007BDA60);
  __chkstk_darwin(v6 - 8);
  v8 = &v25[-1] - v7;
  v9 = type metadata accessor for Artwork.Style();
  __chkstk_darwin(v9 - 8);
  v10 = type metadata accessor for Artwork.Crop();
  v11 = *(v10 - 8);
  *&result = __chkstk_darwin(v10).n128_u64[0];
  v14 = &v25[-1] - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v24 = a2;

    Artwork.crop.getter();
    v15 = Artwork.Crop.preferredContentMode.getter();
    (*(v11 + 8))(v14, v10);
    if (qword_10096EE80 != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for SmallLockupLayout.Metrics();
    sub_1000056A8(v16, qword_1009D3798);
    SmallLockupLayout.Metrics.artworkSize.getter();
    Artwork.config(_:mode:prefersLayeredImage:)();
    v17 = *(v3 + OBJC_IVAR____TtC8AppStore31UpdatesLockupCollectionViewCell_lockupView);
    v18 = OBJC_IVAR____TtC8AppStore14BaseLockupView_artworkView;
    v19 = *(v17 + OBJC_IVAR____TtC8AppStore14BaseLockupView_artworkView);
    Artwork.style.getter();
    ArtworkView.style.setter();
    [v19 setContentMode:Artwork.contentMode.getter()];
    ArtworkLoaderConfig.size.getter();
    ArtworkView.imageSize.setter();
    if (!Artwork.backgroundColor.getter())
    {
      sub_100028BB8();
      static UIColor.placeholderBackground.getter();
    }

    ArtworkView.backgroundColor.setter();

    [*(v17 + v18) setContentMode:v15];
    Artwork.template.getter();
    v20 = type metadata accessor for Artwork.URLTemplate();
    (*(*(v20 - 8) + 56))(v8, 0, 1, v20);
    v21 = OBJC_IVAR____TtC8AppStore31UpdatesLockupCollectionViewCell_fetchingArtworkTemplate;
    swift_beginAccess();
    sub_1001AEE58(v8, v3 + v21);
    swift_endAccess();
    type metadata accessor for ArtworkLoader();
    v22 = *(v17 + v18);
    type metadata accessor for ArtworkView();
    v23 = v22;
    static ArtworkLoader.handlerKey<A>(for:)();

    swift_allocObject();
    swift_unknownObjectWeakInit();

    ArtworkLoader.fetchArtwork(using:closestMatch:handlerKey:completionHandler:)();

    sub_10002B894(v25, &qword_10096FB90, &qword_1007B2A50);
  }

  return result;
}

void sub_1005F0D1C(objc_class *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v41 = a2;
  v7 = sub_10002849C(&qword_100972638, qword_1007BDA60);
  __chkstk_darwin(v7 - 8);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v36 - v11;
  __chkstk_darwin(v13);
  v15 = &v36 - v14;
  v16 = type metadata accessor for Artwork.URLTemplate();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v40 = &v36 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = &v36 - v20;
  sub_10007FF30(a3, v15);
  v22 = *(v17 + 48);
  if (v22(v15, 1, v16) == 1)
  {
    v12 = v15;
  }

  else
  {
    v39 = a1;
    v38 = *(v17 + 32);
    v38(v21, v15, v16);
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v37 = v9;
      v24 = OBJC_IVAR____TtC8AppStore31UpdatesLockupCollectionViewCell_fetchingArtworkTemplate;
      v25 = Strong;
      swift_beginAccess();
      sub_10007FF30(v25 + v24, v12);

      if (v22(v12, 1, v16) != 1)
      {
        v33 = v40;
        v38(v40, v12, v16);
        sub_1005F2048(&qword_100979D88, &type metadata accessor for Artwork.URLTemplate, &protocol conformance descriptor for Artwork.URLTemplate);
        v34 = dispatch thunk of static Equatable.== infix(_:_:)();
        v35 = *(v17 + 8);
        v35(v33, v16);
        v35(v21, v16);
        v9 = v37;
        a1 = v39;
        if ((v34 & 1) == 0)
        {
          return;
        }

        goto LABEL_9;
      }

      (*(v17 + 8))(v21, v16);
      v9 = v37;
    }

    else
    {
      (*(v17 + 8))(v21, v16);
      (*(v17 + 56))(v12, 1, 1, v16);
    }

    a1 = v39;
  }

  sub_10002B894(v12, &qword_100972638, qword_1007BDA60);
LABEL_9:
  swift_beginAccess();
  v26 = swift_unknownObjectWeakLoadStrong();
  if (v26)
  {
    v27 = v26;
    v28 = *(*(v26 + OBJC_IVAR____TtC8AppStore31UpdatesLockupCollectionViewCell_lockupView) + OBJC_IVAR____TtC8AppStore14BaseLockupView_artworkView);

    v42.is_nil = (v41 & 1) == 0;
    v42.value.super.isa = a1;
    ArtworkView.show(image:isAnimationPermitted:)(v42, v29);
  }

  swift_beginAccess();
  v30 = swift_unknownObjectWeakLoadStrong();
  if (v30)
  {
    v31 = v30;
    (*(v17 + 56))(v9, 1, 1, v16);
    v32 = OBJC_IVAR____TtC8AppStore31UpdatesLockupCollectionViewCell_fetchingArtworkTemplate;
    swift_beginAccess();
    sub_1001AEE58(v9, v31 + v32);
    swift_endAccess();
  }
}

double sub_1005F1180(double a1, double a2)
{
  v3 = v2;
  v6 = sub_10002849C(&qword_100972ED0, &unk_1007B17B0);
  __chkstk_darwin(v6 - 8);
  v8 = &v80 - v7;
  v83 = type metadata accessor for OfferButtonMetrics();
  v9 = *(v83 - 8);
  __chkstk_darwin(v83);
  v81 = &v80 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v82 = &v80 - v12;
  v13 = type metadata accessor for SmallLockupLayout.Metrics();
  v93 = *(v13 - 8);
  v94 = v13;
  __chkstk_darwin(v13);
  v95 = &v80 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = type metadata accessor for FloatingPointRoundingRule();
  v87 = *(v92 - 8);
  *&v15 = __chkstk_darwin(v92).n128_u64[0];
  v91 = &v80 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *&v3[OBJC_IVAR____TtC8AppStore31UpdatesLockupCollectionViewCell_expandableTextView];
  v18 = [*(v17 + OBJC_IVAR____TtC8AppStore18ExpandableTextView_textLabel) attributedText];
  v19 = *(v17 + OBJC_IVAR____TtC8AppStore18ExpandableTextView_isCollapsed);
  v88 = v3[OBJC_IVAR____TtC8AppStore31UpdatesLockupCollectionViewCell_hasSeparator];
  v20 = [*&v3[OBJC_IVAR____TtC8AppStore31UpdatesLockupCollectionViewCell_versionMetadata] text];
  if (v20)
  {
    v21 = v20;
    v85 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v89 = v22;
  }

  else
  {
    v85 = 0;
    v89 = 0;
  }

  [v3 layoutMargins];
  v27 = v26;
  if (v19)
  {
    v28 = 2;
  }

  else
  {
    v28 = 0;
  }

  v90 = v18;
  v84 = v24;
  if (v18)
  {
    v29 = v23;
    if (a2 >= a1)
    {
      v30 = a1;
    }

    else
    {
      v30 = a2;
    }

    v31 = a1;
    if (v30 != 0.0)
    {
      v32 = v24;
      v33 = v25;
      v34 = v18;
      v35 = [v3 traitCollection];
      v36 = type metadata accessor for ExpandableTextView.MeasurementsCacheKey();
      v37 = objc_allocWithZone(v36);
      v38 = &v37[OBJC_IVAR____TtCC8AppStore18ExpandableTextViewP33_059173C074D556A1611F1918B5AC36A120MeasurementsCacheKey_layoutMargins];
      *v38 = v29;
      *(v38 + 1) = v32;
      *(v38 + 2) = v33;
      *(v38 + 3) = v27;
      *&v37[OBJC_IVAR____TtCC8AppStore18ExpandableTextViewP33_059173C074D556A1611F1918B5AC36A120MeasurementsCacheKey_numberOfLines] = v28;
      v39 = &v37[OBJC_IVAR____TtCC8AppStore18ExpandableTextViewP33_059173C074D556A1611F1918B5AC36A120MeasurementsCacheKey_fittingSize];
      *v39 = a1;
      v39[1] = a2;
      *&v37[OBJC_IVAR____TtCC8AppStore18ExpandableTextViewP33_059173C074D556A1611F1918B5AC36A120MeasurementsCacheKey_traitCollection] = v35;
      *&v37[OBJC_IVAR____TtCC8AppStore18ExpandableTextViewP33_059173C074D556A1611F1918B5AC36A120MeasurementsCacheKey_attributedText] = v34;
      v97.receiver = v37;
      v97.super_class = v36;
      v40 = objc_msgSendSuper2(&v97, "init");
      if (qword_10096E9D0 != -1)
      {
        swift_once();
      }

      v41 = qword_10098CEC8;
      v42 = [qword_10098CEC8 objectForKey:v40];
      if (v42)
      {
        v43 = v42;

        v31 = *&v43[OBJC_IVAR____TtCC8AppStore18ExpandableTextViewP33_059173C074D556A1611F1918B5AC36A110CacheValue_measurements];
      }

      else
      {
        v86 = v41;
        v44 = qword_10096E9C8;
        v43 = v34;
        if (v44 != -1)
        {
          swift_once();
        }

        v45 = type metadata accessor for FontUseCase();
        v46 = sub_1000056A8(v45, qword_10098CEB0);
        v47 = *(v45 - 8);
        (*(v47 + 16))(v8, v46, v45);
        (*(v47 + 56))(v8, 0, 1, v45);
        static TextMeasurable.defaultTextAlignment.getter();
        static TextMeasurable.defaultLineBreakMode.getter();
        static TextMeasurable.measurements(attributedText:fontUseCase:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:fitting:in:)();
        v49 = v48;
        v51 = v50;
        v53 = v52;

        sub_10002B894(v8, &qword_100972ED0, &unk_1007B17B0);
        v54 = type metadata accessor for ExpandableTextView.CacheValue();
        v55 = objc_allocWithZone(v54);
        v56 = &v55[OBJC_IVAR____TtCC8AppStore18ExpandableTextViewP33_059173C074D556A1611F1918B5AC36A110CacheValue_measurements];
        *v56 = a1;
        v56[1] = v29 + v33 + v49;
        *(v56 + 2) = v51;
        *(v56 + 3) = v53;
        v96.receiver = v55;
        v96.super_class = v54;
        v57 = objc_msgSendSuper2(&v96, "init");
        [v86 setObject:v57 forKey:v40];

        v31 = a1;
      }
    }
  }

  else
  {
    v31 = a1;
  }

  if (qword_10096EAC8 != -1)
  {
    swift_once();
  }

  LODWORD(v86) = v19;
  sub_10002A400(qword_1009D2E98, qword_1009D2EB0);
  v58 = v91;
  j___s5JetUI10DimensionsV19defaultRoundingRules013FloatingPointeF0OvgZ();
  AnyDimension.value(in:rounded:)();
  v59 = *(v87 + 8);
  v59(v58, v92);
  if (qword_10096EE80 != -1)
  {
    swift_once();
  }

  v60 = v94;
  v61 = sub_1000056A8(v94, qword_1009D3798);
  v62 = [v3 traitCollection];
  (*(v93 + 16))(v95, v61, v60);
  v63 = SmallLockupLayout.Metrics.offerButtonSize.getter();
  if ((v65 & 1) == 0 && ((v63 | v64) & 0x7FFFFFFFFFFFFFFFLL) == 0)
  {
    if (UITraitCollection.prefersAccessibilityLayouts.getter())
    {
      if (qword_10096ECB8 != -1)
      {
        swift_once();
      }

      v66 = qword_100991010;
    }

    else
    {
      if (qword_10096ECC0 != -1)
      {
        swift_once();
      }

      v66 = qword_100991028;
    }

    v67 = v83;
    v68 = sub_1000056A8(v83, v66);
    v69 = v81;
    (*(v9 + 16))(v81, v68, v67);
    v70 = v82;
    (*(v9 + 32))(v82, v69, v67);
    OfferButtonMetrics.minimumSize.getter();
    OfferButtonMetrics.estimatedHeight.getter();
    SmallLockupLayout.Metrics.offerButtonSize.setter();
    (*(v9 + 8))(v70, v67);
  }

  v71 = v95;
  static SmallLockupLayout.estimatedMeasurements(fitting:using:with:)();

  (*(v93 + 8))(v71, v94);
  if ((v89 == 0) | v86 & 1)
  {
    v72 = v90;
  }

  else
  {
    sub_10002A400(qword_1009D2E98, qword_1009D2EB0);
    v73 = v91;
    j___s5JetUI10DimensionsV19defaultRoundingRules013FloatingPointeF0OvgZ();
    AnyDimension.value(in:rounded:)();
    v59(v73, v92);
    v72 = v90;
    if (qword_10096DE18 != -1)
    {
      swift_once();
    }

    v74 = type metadata accessor for FontUseCase();
    sub_1000056A8(v74, qword_1009D09C8);
    v75 = type metadata accessor for Feature();
    v98[3] = v75;
    v98[4] = sub_1005F2048(&qword_100972E50, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
    v76 = sub_1000056E0(v98);
    (*(*(v75 - 8) + 104))(v76, enum case for Feature.measurement_with_labelplaceholder(_:), v75);
    isFeatureEnabled(_:)();
    sub_100007000(v98);
    static LabelPlaceholderCompatibility.measurements(text:fontUseCase:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:fitting:in:shouldUseLabelPlaceholder:)();
  }

  if (v88)
  {
    if (qword_10096EAC0 != -1)
    {
      swift_once();
    }

    v77 = type metadata accessor for Separator();
    sub_1000056A8(v77, qword_1009D2E80);
    CGSize.adding(separator:in:)();
    v31 = v78;
  }

  return v31;
}

id sub_1005F1D2C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for UpdatesLockupCollectionViewCell(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for UpdatesLockupCollectionViewCell(uint64_t a1)
{
  result = qword_10098E778;
  if (!qword_10098E778)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1005F1E38(uint64_t a1)
{
  sub_1005F1EF0(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1005F1EF0(uint64_t a1)
{
  if (!qword_100978180)
  {
    type metadata accessor for Artwork.URLTemplate();
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_100978180);
    }
  }
}

void sub_1005F1F7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  sub_1002A4A1C(a1, a2, a3, WitnessTable);
}

uint64_t sub_1005F1FE8(uint64_t a1)
{
  result = sub_1005F2048(&qword_10098E788, type metadata accessor for UpdatesLockupCollectionViewCell, &unk_1007D92A0);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1005F2048(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1005F2090()
{
  v1 = v0;
  v2 = type metadata accessor for DirectionalTextAlignment();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10002849C(&qword_100972ED0, &unk_1007B17B0);
  __chkstk_darwin(v6 - 8);
  v8 = &v20 - v7;
  v9 = OBJC_IVAR____TtC8AppStore31UpdatesLockupCollectionViewCell_expandableTextView;
  sub_100028BB8();
  v10 = static UIColor.tableViewCellBackground.getter();
  v11 = objc_allocWithZone(type metadata accessor for ExpandableTextView());
  *(v1 + v9) = sub_10059F344(v10, 0.0, 0.0, 0.0, 0.0);
  v12 = OBJC_IVAR____TtC8AppStore31UpdatesLockupCollectionViewCell_versionMetadata;
  if (qword_10096DE18 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for FontUseCase();
  v14 = sub_1000056A8(v13, qword_1009D09C8);
  v15 = *(v13 - 8);
  (*(v15 + 16))(v8, v14, v13);
  (*(v15 + 56))(v8, 0, 1, v13);
  (*(v3 + 104))(v5, enum case for DirectionalTextAlignment.none(_:), v2);
  v16 = objc_allocWithZone(type metadata accessor for DynamicTypeLabel());
  *(v1 + v12) = DynamicTypeLabel.init(useCase:numberOfLines:lineBreakMode:isUserInteractionEnabled:directionalTextAlignment:contentSizeCategoryMapping:)();
  v17 = OBJC_IVAR____TtC8AppStore31UpdatesLockupCollectionViewCell_lockupView;
  *(v1 + v17) = [objc_allocWithZone(type metadata accessor for SmallLockupView(0)) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *(v1 + OBJC_IVAR____TtC8AppStore31UpdatesLockupCollectionViewCell_hasSeparator) = 0;
  *(v1 + OBJC_IVAR____TtC8AppStore31UpdatesLockupCollectionViewCell_separatorView) = 0;
  v18 = OBJC_IVAR____TtC8AppStore31UpdatesLockupCollectionViewCell_fetchingArtworkTemplate;
  v19 = type metadata accessor for Artwork.URLTemplate();
  (*(*(v19 - 8) + 56))(v1 + v18, 1, 1, v19);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

id UIView.withAccessibilityIdentifier(_:)()
{
  v1 = v0;
  v2 = String._bridgeToObjectiveC()();
  [v1 setAccessibilityIdentifier:v2];

  return v1;
}

double sub_1005F25D0()
{
  v1 = v0;
  v2 = type metadata accessor for ArtworkGridType();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10018957C();
  TodayCard.media.getter();
  type metadata accessor for TodayCardMediaGrid();
  if (swift_dynamicCastClass())
  {
    v6 = TodayCardMediaGrid.lockups.getter();
    if (v6 >> 62)
    {
      goto LABEL_29;
    }

    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (v7)
    {
      do
      {
        type metadata accessor for ArtworkLoader();
        BaseObjectGraph.inject<A>(_:)();
        v8 = *&v1[OBJC_IVAR____TtC8AppStore32GridTodayBrickCollectionViewCell_grid];
        v20[2] = v26;
        v21 = v8;
        TodayCardMediaGrid.artworkGridType.getter();
        v9 = (*(v3 + 88))(v5, v2);
        if (v9 != enum case for ArtworkGridType.small(_:))
        {
          if (v9 == enum case for ArtworkGridType.large(_:))
          {
            v10 = 1;
            goto LABEL_12;
          }

          if (v9 == enum case for ArtworkGridType.extraLarge(_:))
          {
            v10 = 2;
            goto LABEL_12;
          }

          if (v9 == enum case for ArtworkGridType.mixed(_:))
          {
            v10 = 3;
            goto LABEL_12;
          }

LABEL_27:
          v17 = *(v3 + 8);
          v3 += 8;
          v17(v5, v2);
        }

        v10 = 0;
LABEL_12:
        v20[1] = OBJC_IVAR____TtC8AppStore11ArtworkGrid_gridType;
        v11 = v21;
        v21[OBJC_IVAR____TtC8AppStore11ArtworkGrid_gridType] = v10;
        sub_1006B4F58();
        [v11 setNeedsLayout];
        v12 = TodayCardMediaGrid.lockups.getter();
        if (v12 >> 62)
        {
          v1 = _CocoaArrayWrapper.endIndex.getter();
        }

        else
        {
          v1 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        *&v21[OBJC_IVAR____TtC8AppStore11ArtworkGrid_expectedNumberOfArtworkImages] = v1;
        sub_1006B5128();
        v13 = TodayCardMediaGrid.lockups.getter();
        v14 = v13;
        if (v13 >> 62)
        {
          v2 = _CocoaArrayWrapper.endIndex.getter();
          if (!v2)
          {
LABEL_35:

            return result;
          }
        }

        else
        {
          v2 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (!v2)
          {
            goto LABEL_35;
          }
        }

        v5 = 0;
        v22 = v14 & 0xFFFFFFFFFFFFFF8;
        v23 = v14 & 0xC000000000000001;
        v20[0] = v2;
        while (v23)
        {
          specialized _ArrayBuffer._getElementSlowPath(_:)();
          v15 = v5 + 1;
          if (__OFADD__(v5, 1))
          {
LABEL_26:
            __break(1u);
            goto LABEL_27;
          }

LABEL_22:
          if (dispatch thunk of Lockup.artwork.getter())
          {
            v1 = v21;
            Artwork.config(_:mode:prefersLayeredImage:)();
            v25 = 0;
            memset(v24, 0, sizeof(v24));
            v3 = swift_allocObject();
            *(v3 + 16) = v1;
            *(v3 + 24) = v5;
            v16 = v1;
            ArtworkLoader.fetchArtwork(using:closestMatch:handlerKey:completionHandler:)();

            v2 = v20[0];

            sub_1000C36CC(v24);
          }

          else
          {
          }

          ++v5;
          if (v15 == v2)
          {
            goto LABEL_35;
          }
        }

        if (v5 < *(v22 + 16))
        {

          v15 = v5 + 1;
          if (__OFADD__(v5, 1))
          {
            goto LABEL_26;
          }

          goto LABEL_22;
        }

        __break(1u);
LABEL_29:
        v18 = _CocoaArrayWrapper.endIndex.getter();
      }

      while (v18);
    }
  }

  return result;
}

uint64_t type metadata accessor for GridTodayBrickCollectionViewCell(uint64_t a1)
{
  result = qword_10098E7C0;
  if (!qword_10098E7C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_1005F2B1C(void *a1)
{
  v2 = [objc_allocWithZone(CAGradientLayer) init];
  sub_10002849C(&qword_1009701B0, qword_1007B1800);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1007B1890;
  v4 = [a1 colorWithAlphaComponent:0.0];
  v5 = [v4 CGColor];

  type metadata accessor for CGColor(0);
  v7 = v6;
  *(v3 + 56) = v6;
  *(v3 + 32) = v5;
  v8 = [a1 CGColor];
  *(v3 + 88) = v7;
  *(v3 + 64) = v8;
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v2 setColors:isa];

  sub_10002849C(&qword_100973210, qword_1007B0BB0);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1007B15F0;
  sub_100194454();
  *(v10 + 32) = NSNumber.init(integerLiteral:)(0);
  *(v10 + 40) = NSNumber.init(floatLiteral:)(0.8);
  v11 = Array._bridgeToObjectiveC()().super.isa;

  [v2 setLocations:v11];

  [v2 setStartPoint:{0.0, 0.5}];
  [v2 setEndPoint:{1.0, 0.5}];
  return v2;
}

id sub_1005F2CF8(void *a1, char a2)
{
  v4 = [objc_allocWithZone(CAGradientLayer) init];
  sub_10002849C(&qword_1009701B0, qword_1007B1800);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1007B1890;
  v6 = 0.0;
  v7 = [a1 colorWithAlphaComponent:0.0];
  v8 = [v7 CGColor];

  type metadata accessor for CGColor(0);
  v10 = v9;
  *(v5 + 56) = v9;
  *(v5 + 32) = v8;
  v11 = [a1 CGColor];
  *(v5 + 88) = v10;
  *(v5 + 64) = v11;
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v4 setColors:isa];

  sub_10002849C(&qword_100973210, qword_1007B0BB0);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1007B15F0;
  sub_100194454();
  *(v13 + 32) = NSNumber.init(integerLiteral:)(0);
  *(v13 + 40) = NSNumber.init(floatLiteral:)(0.8);
  v14 = Array._bridgeToObjectiveC()().super.isa;

  [v4 setLocations:v14];

  if (a2)
  {
    v15 = 1.0;
  }

  else
  {
    v15 = 0.0;
  }

  if ((a2 & 1) == 0)
  {
    v6 = 1.0;
  }

  [v4 setStartPoint:{v15, 0.5}];
  [v4 setEndPoint:{v6, 0.5}];
  return v4;
}

uint64_t sub_1005F2EF8(void *a1)
{
  if (*v1 == *a1 && (static AnyHashable.== infix(_:_:)() & 1) != 0 && (type metadata accessor for MenuItemDebugSetting(), (v2 = swift_dynamicCastClass()) != 0) && (*(v2 + 56) == *(v1 + 56) ? (v3 = *(v2 + 64) == *(v1 + 64)) : (v3 = 0), v3 || (v4 = v2, v5 = _stringCompareWithSmolCheck(_:_:expecting:)(), v2 = v4, (v5 & 1) != 0)))
  {
    v6 = *(v2 + 72) ^ *(v1 + 72) ^ 1;
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

void sub_1005F2FDC(uint64_t a1, __n128 a2)
{
  AnyHashable.hash(into:)();
  String.hash(into:)();
  Hasher._combine(_:)(*(v2 + 72));
}

double sub_1005F3028()
{

  return result;
}

uint64_t sub_1005F3058()
{
  sub_10003D614(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_1005F30E4@<X0>(uint64_t a1@<X8>)
{
  v3 = qword_1009D23B8;
  swift_beginAccess();
  return sub_10009768C(v1 + v3, a1);
}

uint64_t sub_1005F3140(uint64_t a1)
{
  v3 = qword_1009D23B8;
  swift_beginAccess();
  sub_10009761C(a1, v1 + v3);
  return swift_endAccess();
}

void sub_1005F320C(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for PageGrid.Direction();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v77 = &v68 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v68 - v8;
  v10 = type metadata accessor for PageGrid();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v78 = &v68 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v76 = &v68 - v14;
  __chkstk_darwin(v15);
  v17 = &v68 - v16;
  type metadata accessor for FramedArtwork();
  sub_1005F3BC0();
  ItemLayoutContext.typedModel<A>(as:)();
  if (!aBlock[0])
  {
    return;
  }

  v73 = v9;
  v74 = v5;
  v75 = v4;

  v18 = FramedMedia.caption.getter();
  v19 = [v18 length];

  v79 = v10;
  if (v19 < 1)
  {
    [*&v2[qword_100989278] setText:0];
    v2[qword_1009D23C8] = 0;
    v29 = *&v2[qword_100989268];
    [v29 setHidden:1];
    goto LABEL_7;
  }

  v69 = v17;
  v71 = v11;
  v20 = FramedMedia.caption.getter();
  swift_getKeyPath();
  v70 = a1;
  ItemLayoutContext.subscript.getter();

  v21 = aBlock[6];
  v22 = [objc_allocWithZone(NSMutableAttributedString) initWithAttributedString:v20];
  v23 = [v20 length];
  v24 = swift_allocObject();
  *(v24 + 16) = 0;
  *(v24 + 24) = v21;
  *(v24 + 32) = v22;
  *(v24 + 40) = 1;
  v25 = swift_allocObject();
  *(v25 + 16) = sub_10010279C;
  *(v25 + 24) = v24;
  aBlock[4] = sub_1001027AC;
  aBlock[5] = v25;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1006606C4;
  aBlock[3] = &unk_1008CB430;
  v26 = _Block_copy(aBlock);
  v27 = v21;
  v28 = v22;

  [v20 enumerateAttributesInRange:0 options:v23 usingBlock:{0x100000, v26}];

  _Block_release(v26);
  LOBYTE(v20) = swift_isEscapingClosureAtFileLocation();

  if (v20)
  {
    __break(1u);
    goto LABEL_24;
  }

  v24 = *&v2[qword_100989278];
  [v24 setAttributedText:v28];
  if (qword_10096E6A8 != -1)
  {
LABEL_24:
    swift_once();
  }

  [v24 setTextColor:qword_1009D23B0];
  v2[qword_1009D23C8] = 1;
  v29 = *&v2[qword_100989268];
  [v29 setHidden:0];

  v10 = v79;
  v11 = v71;
  v17 = v69;
LABEL_7:
  v30 = *&v2[qword_100989270];
  FramedMedia.ordinal.getter();
  if (v31)
  {
    v32 = String._bridgeToObjectiveC()();
  }

  else
  {
    v32 = 0;
  }

  [v30 setText:v32];

  v2[qword_1009D23C0] = (FramedMedia.isFullWidth.getter() & 1) == 0;
  sub_10012684C();
  if ((FramedMedia.isFullWidth.getter() & 1) == 0 && v2[qword_1009D23C8] != 1)
  {
    type metadata accessor for ArtworkView();
    static ArtworkView.iconBorderWidth.getter();
  }

  dispatch thunk of RoundedCornerView.borderWidth.setter();
  v2[qword_1009D23D8] = FramedMedia.isFullWidth.getter() & 1;
  [v2 setNeedsLayout];
  v33 = FramedMedia.isFullWidth.getter();
  v72 = v2;
  if (v33)
  {
    v34 = 0;
  }

  else
  {
    sub_100005744(0, &qword_100970180, UIColor_ptr);
    v34 = static UIColor.placeholderBackground.getter();
  }

  [v29 setBackgroundColor:v34];

  swift_getKeyPath();
  ItemLayoutContext.subscript.getter();

  PageGrid.containerWidth.getter();
  v71 = v35;
  v36 = *(v11 + 8);
  v36(v17, v10);
  swift_getKeyPath();
  v37 = v76;
  ItemLayoutContext.subscript.getter();

  PageGrid.containerHeight.getter();
  v70 = v38;
  v36(v37, v10);
  v40 = v74;
  v39 = v75;
  v41 = v73;
  (*(v74 + 104))(v73, enum case for PageGrid.Direction.vertical(_:), v75);
  swift_getKeyPath();
  ItemLayoutContext.subscript.getter();

  PageGrid.safeAreaInsets.getter();
  v36(v17, v10);
  v42 = v36;
  (*(v40 + 16))(v77, v41, v39);
  sub_10069F96C(0.0);
  top = UIEdgeInsetsZero.top;
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v47 = v78;
  PageGrid.init(name:direction:containerSize:readableContentInsets:safeAreaInsets:requiresAdditionalSafeAreaMargins:breakpoints:)();
  (*(v40 + 8))(v41, v39);
  PageGrid.horizontalMargins.getter();
  v48 = v72;
  v49 = &v72[qword_1009D23D0];
  *v49 = v50;
  *(v49 + 1) = v51;
  *(v49 + 2) = v52;
  *(v49 + 3) = v53;
  [v48 setNeedsLayout];
  v54 = [v48 contentView];
  v55 = FramedMedia.isFullWidth.getter();

  if ((v55 & 1) == 0)
  {
    PageGrid.horizontalMargins.getter();
    top = v56;
    left = v57;
    bottom = v58;
    right = v59;
  }

  [v54 setLayoutMargins:{top, left, bottom, right}];

  if (FramedArtwork.artwork.getter())
  {
    v60 = [v48 contentView];
    sub_100005744(0, &qword_100972EB0, UIView_ptr);
    LayoutMarginsAware<>.layoutFrame.getter();
    v62 = v61;

    Artwork.size.getter();
    v64 = v63;
    Artwork.size.getter();
    v66 = v65;

    v42(v47, v79);
    v67 = &v48[qword_1009CFF30];
    *v67 = v62;
    v67[1] = v62 * (v64 / v66);
  }

  else
  {
    v42(v47, v79);
  }
}

unint64_t sub_1005F3BC0()
{
  result = qword_100990200;
  if (!qword_100990200)
  {
    type metadata accessor for FramedArtwork();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100990200);
  }

  return result;
}

id sub_1005F3C78()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AnimatedTransitionWithTasks();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1005F3CE0(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 17))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1005F3D28(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 17) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 17) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

double sub_1005F3D78(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8AppStore27AnimatedTransitionWithTasks_tasks;
  swift_beginAccess();
  v5 = *(v1 + v3);
  v6 = *(v5 + 16);
  if (v6)
  {

    v7 = (v5 + 48);
    v8 = (v5 + 48);
    do
    {
      v9 = *v8;
      v8 += 24;
      if (v9 == a1)
      {
        v10 = *(v7 - 2);

        v10(a1, 1);
      }

      v7 = v8;
      --v6;
    }

    while (v6);
  }

  if (a1 == 2)
  {
    *(v1 + v3) = _swiftEmptyArrayStorage;
  }

  return result;
}

unint64_t sub_1005F3E74()
{
  result = qword_10098E950;
  if (!qword_10098E950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10098E950);
  }

  return result;
}

double sub_1005F3EC8(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v47 = a4;
  v45 = a3;
  v44 = a2;
  v10 = type metadata accessor for TodayCard.Style();
  v46 = *(v10 - 8);
  __chkstk_darwin(v10);
  v12 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for EditorialDisplayOptions();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  TodayCard.editorialDisplayOptions.getter();
  v17 = EditorialDisplayOptions.suppressLockup.getter();
  (*(v14 + 8))(v16, v13);
  if ((v17 & 1) == 0)
  {
    v19 = TodayCard.overlay.getter();
    if (v19)
    {
      v20 = v19;
      type metadata accessor for TodayCardOverlayReusePool();
      BaseObjectGraph.optional<A>(_:)();
      v43 = v49[0];
      if (v49[0])
      {
        v41 = v10;
        (*(a6 + 8))(a5, a6);
        v22 = v21;
        TodayCardOverlay.kind.getter();
        if ((v22 & 1) != 0 || (v23 = TodayCardOverlay.Kind.rawValue.getter(), v23 != TodayCardOverlay.Kind.rawValue.getter()))
        {
          v24 = TodayCardOverlay.kind.getter();
          sub_100472F04(v24);
          v26 = v25;
          ObjectType = v20;
          v27 = a5;
          v29 = v28;
          v30 = *(a6 + 32);
          swift_unknownObjectRetain();
          v31 = v30(v27, a6);
          (*(a6 + 80))(v26, v29, v31, v32, v27, a6);
          swift_unknownObjectRelease();
          v33 = TodayCardOverlay.kind.getter();
          (*(a6 + 16))(v33, 0, v27, a6);
          v34 = v29;
          a5 = v27;
          v20 = ObjectType;
          (*(a6 + 40))(v26, v34, a5, a6);
          swift_unknownObjectRelease();
        }

        v35 = *(a6 + 64);

        v35(v36, a5, a6);
        if ((*(a6 + 32))(a5, a6))
        {
          v38 = v37;
          ObjectType = swift_getObjectType();
          v49[3] = type metadata accessor for TodayCardOverlay();
          v49[4] = sub_1002AD904();
          v49[0] = v20;

          TodayCard.style.getter();
          type metadata accessor for ArtworkLoader();
          type metadata accessor for BaseObjectGraph();
          v39 = v47;
          inject<A, B>(_:from:)();
          (*(v38 + 112))(v49, v39, v44, v12, v45, v48, ObjectType, v38);
          swift_unknownObjectRelease();

          (*(v46 + 8))(v12, v41);
          sub_100007000(v49);
        }

        (*(a6 + 88))(a5, a6);
        [v7 setNeedsLayout];
      }
    }
  }

  return result;
}

uint64_t sub_1005F4320(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = v4();
  (*(a2 + 80))(0, 0, v5, v6, a1, a2);
  swift_unknownObjectRelease();
  if ((*(a2 + 56))(a1, a2))
  {
    v7 = (v4)(a1, a2);
    v9 = v8;
    v10 = (*(a2 + 8))(a1, a2);
    sub_100473080(v7, v9, v10, v11 & 1);

    swift_unknownObjectRelease();
  }

  (*(a2 + 16))(0, 1, a1, a2);
  (*(a2 + 40))(0, 0, a1, a2);
  v12 = *(a2 + 64);

  return v12(0, a1, a2);
}

uint64_t sub_1005F44AC()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v38 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = sub_10002849C(&qword_100973210, qword_1007B0BB0);
  v39 = swift_allocObject();
  *(v39 + 16) = xmmword_1007BB060;
  v5 = swift_allocObject();
  *(v5 + 16) = v0;
  v38[1] = type metadata accessor for ActionDebugSetting();
  v6 = swift_allocObject();
  *(v6 + 56) = 0xD000000000000028;
  *(v6 + 64) = 0x800000010081CBE0;
  *(v6 + 72) = 0u;
  *(v6 + 88) = 0u;
  *(v6 + 104) = sub_1005F4CE0;
  *(v6 + 112) = v5;
  v7 = v0;

  UUID.init()();
  v8 = UUID.uuidString.getter();
  v10 = v9;
  v11 = *(v2 + 8);
  v41 = v1;
  v42 = v2 + 8;
  v11(v4, v1);
  v43 = v8;
  v44 = v10;
  AnyHashable.init<A>(_:)();

  v12 = v39;
  *(v39 + 32) = v6;
  v13 = swift_allocObject();
  *(v13 + 16) = v7;
  v14 = swift_allocObject();
  *(v14 + 56) = 0xD000000000000025;
  *(v14 + 64) = 0x800000010081CC10;
  *(v14 + 72) = 0u;
  *(v14 + 88) = 0u;
  *(v14 + 104) = sub_1005F4D38;
  *(v14 + 112) = v13;
  v15 = v7;

  UUID.init()();
  v16 = UUID.uuidString.getter();
  v18 = v17;
  v11(v4, v1);
  v43 = v16;
  v44 = v18;
  AnyHashable.init<A>(_:)();

  v12[5] = v14;
  v19 = swift_allocObject();
  *(v19 + 16) = v15;
  v20 = swift_allocObject();
  *(v20 + 56) = 0xD000000000000029;
  *(v20 + 64) = 0x800000010081CC40;
  *(v20 + 72) = 0u;
  *(v20 + 88) = 0u;
  *(v20 + 104) = sub_1005F4D90;
  *(v20 + 112) = v19;
  v21 = v15;

  UUID.init()();
  v22 = UUID.uuidString.getter();
  v24 = v23;
  v11(v4, v41);
  v43 = v22;
  v44 = v24;
  AnyHashable.init<A>(_:)();

  v12[6] = v20;
  v25 = swift_allocObject();
  *(v25 + 16) = v21;
  v26 = swift_allocObject();
  *(v26 + 56) = 0xD00000000000002DLL;
  *(v26 + 64) = 0x800000010081CC70;
  *(v26 + 72) = 0u;
  *(v26 + 88) = 0u;
  *(v26 + 104) = sub_1005F4DB0;
  *(v26 + 112) = v25;
  v27 = v21;

  UUID.init()();
  v28 = UUID.uuidString.getter();
  v30 = v29;
  v31 = v41;
  v11(v4, v41);
  v43 = v28;
  v44 = v30;
  AnyHashable.init<A>(_:)();

  v12[7] = v26;
  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_1007B0B70;
  type metadata accessor for DebugSection();
  v33 = swift_allocObject();
  UUID.init()();
  v34 = UUID.uuidString.getter();
  v36 = v35;
  v11(v4, v31);
  v33[2] = v34;
  v33[3] = v36;
  v33[4] = 0;
  v33[5] = 0xE000000000000000;
  v33[6] = v12;
  *(v32 + 32) = v33;
  return v32;
}

uint64_t sub_1005F49A0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), void (*a4)(void), void (*a5)(void))
{
  v8 = sub_10002849C(&unk_100972A00, &unk_1007B3130);
  __chkstk_darwin(v8 - 8);
  v10 = &v14 - v9;
  v11 = sub_10002849C(&unk_100974490, &qword_1007B3DD0);
  BaseObjectGraph.injectIfAvailable<A>(_:)();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    return sub_1000F40E0(v10);
  }

  a3(0);
  swift_allocObject();
  a4();
  a5();

  return (*(v12 + 8))(v10, v11);
}

uint64_t sub_1005F4B20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_10002849C(&unk_100972A00, &unk_1007B3130);
  __chkstk_darwin(v4 - 8);
  v6 = &v11 - v5;
  v7 = sub_10002849C(&unk_100974490, &qword_1007B3DD0);
  BaseObjectGraph.injectIfAvailable<A>(_:)();
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    return sub_1000F40E0(v6);
  }

  type metadata accessor for UpdateGranularNotificationSettingsAction();
  swift_allocObject();
  v10 = UpdateGranularNotificationSettingsAction.init(settingIDs:)();
  sub_1005FA2EC(v10, 1, a1, v6);

  return (*(v8 + 8))(v6, v7);
}

id sub_1005F4C88(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for NotificationSettings();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_1005F4DD4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for AdPlacementType();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, v2, v4, v6);
  v9 = (*(v5 + 88))(v8, v4);
  if (v9 == enum case for AdPlacementType.searchLanding(_:))
  {
    static AppStoreConfig.thetis.getter();
LABEL_3:
    v10 = type metadata accessor for AppStoreConfig();
    return (*(*(v10 - 8) + 56))(a1, 0, 1, v10);
  }

  if (v9 == enum case for AdPlacementType.searchResults(_:))
  {
    v12 = type metadata accessor for AppStoreConfig();
    return (*(*(v12 - 8) + 56))(a1, 1, 1, v12);
  }

  else
  {
    if (v9 == enum case for AdPlacementType.today(_:))
    {
      static AppStoreConfig.iris.getter();
      goto LABEL_3;
    }

    if (v9 == enum case for AdPlacementType.productPageYMAL(_:))
    {
      static AppStoreConfig.flora.getter();
      goto LABEL_3;
    }

    if (v9 == enum case for AdPlacementType.productPageYMALDuringDownload(_:))
    {
      static AppStoreConfig.metis.getter();
      goto LABEL_3;
    }

    v13 = type metadata accessor for AppStoreConfig();
    (*(*(v13 - 8) + 56))(a1, 1, 1, v13);
    return (*(v5 + 8))(v8, v4);
  }
}

UIColor sub_1005F5020()
{
  sub_100028BB8();
  result.super.isa = UIColor.init(_colorLiteralRed:green:blue:alpha:)(1.0, 1.0, 1.0, 0.75).super.isa;
  qword_10098E988 = result.super.isa;
  return result;
}

char *sub_1005F5064()
{
  v1 = OBJC_IVAR____TtC8AppStore10PlayButton_backgroundView;
  *&v0[v1] = [objc_allocWithZone(AVBackgroundView) init];
  v2 = OBJC_IVAR____TtC8AppStore10PlayButton_glyphView;
  *&v0[v2] = [objc_allocWithZone(UIImageView) init];
  v3 = &v0[OBJC_IVAR____TtC8AppStore10PlayButton_tapActionBlock];
  *v3 = 0;
  *(v3 + 1) = 0;
  *&v0[OBJC_IVAR____TtC8AppStore10PlayButton_tapGestureRecognizer] = 0;
  v15.receiver = v0;
  v15.super_class = type metadata accessor for PlayButton();
  v4 = objc_msgSendSuper2(&v15, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v5 = OBJC_IVAR____TtC8AppStore10PlayButton_glyphView;
  v6 = *&v4[OBJC_IVAR____TtC8AppStore10PlayButton_glyphView];
  v7 = v4;
  v8 = v6;
  v9 = sub_10032FEB0(0xD000000000000012, 0x800000010081CD20, 0);
  v10 = [v9 imageWithRenderingMode:2];

  [v8 setImage:v10];
  v11 = qword_10096EAD0;
  v12 = *&v4[v5];
  if (v11 != -1)
  {
    swift_once();
  }

  [v12 setTintColor:qword_10098E988];

  [*&v4[v5] setUserInteractionEnabled:0];
  if (ASKPerformanceProfileGetForCurrentDevice() != 2)
  {
    [*&v7[OBJC_IVAR____TtC8AppStore10PlayButton_backgroundView] setPrefersLowQualityEffects:1];
  }

  v13 = OBJC_IVAR____TtC8AppStore10PlayButton_backgroundView;
  [*&v7[OBJC_IVAR____TtC8AppStore10PlayButton_backgroundView] addSubview:*&v4[v5] applyingMaterialStyle:0 tintEffectStyle:0];
  [*&v7[v13] setUserInteractionEnabled:0];
  [*&v7[v13] setCircular:1];
  [v7 addSubview:*&v7[v13]];
  [v7 addTarget:v7 action:"didTap" forControlEvents:64];

  return v7;
}

id sub_1005F5330(uint64_t a1)
{
  v12.receiver = v1;
  v12.super_class = type metadata accessor for PlayButton();
  objc_msgSendSuper2(&v12, "layoutSubviews");
  v2 = *&v1[OBJC_IVAR____TtC8AppStore10PlayButton_backgroundView];
  [v1 bounds];
  [v2 setFrame:?];
  v3 = *&v1[OBJC_IVAR____TtC8AppStore10PlayButton_glyphView];
  [v1 bounds];
  [v3 sizeThatFits:{v4, v5}];
  v7 = v6;
  v9 = v8;
  [v1 bounds];
  v10 = CGRectGetMidX(v13) - v7 * 0.5;
  [v1 bounds];
  return [v3 setFrame:{v10, CGRectGetMidY(v14) - v9 * 0.5, v7, v9}];
}

id sub_1005F5530(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for PlayButton();
  return objc_msgSendSuper2(&v3, "dealloc");
}

void sub_1005F55F8()
{
  v1 = OBJC_IVAR____TtC8AppStore10PlayButton_backgroundView;
  *(v0 + v1) = [objc_allocWithZone(AVBackgroundView) init];
  v2 = OBJC_IVAR____TtC8AppStore10PlayButton_glyphView;
  *(v0 + v2) = [objc_allocWithZone(UIImageView) init];
  v3 = (v0 + OBJC_IVAR____TtC8AppStore10PlayButton_tapActionBlock);
  *v3 = 0;
  v3[1] = 0;
  *(v0 + OBJC_IVAR____TtC8AppStore10PlayButton_tapGestureRecognizer) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void sub_1005F56BC(uint64_t a1, char a2, uint64_t a3)
{
  v4 = v3;
  ObjectType = swift_getObjectType();
  *&v4[OBJC_IVAR____TtC8AppStore29ArcadeSubscribeViewController_overlayViewController] = 0;
  *&v4[OBJC_IVAR____TtC8AppStore29ArcadeSubscribeViewController_fallbackDismissButton] = 0;
  *&v4[OBJC_IVAR____TtC8AppStore29ArcadeSubscribeViewController_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v4[OBJC_IVAR____TtC8AppStore29ArcadeSubscribeViewController_delayedDismissalReappearanceItem] = 0;
  *&v4[OBJC_IVAR____TtC8AppStore29ArcadeSubscribeViewController_objectGraph] = a3;
  *&v4[OBJC_IVAR____TtC8AppStore29ArcadeSubscribeViewController_presenter] = a1;
  type metadata accessor for ArtworkLoader();
  type metadata accessor for BaseObjectGraph();

  inject<A, B>(_:from:)();
  *&v4[OBJC_IVAR____TtC8AppStore29ArcadeSubscribeViewController_artworkLoader] = v28;
  if (a2)
  {
    v9 = ASKDeviceTypeGetCurrent();
    v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = v11;
    if (v10 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v12 == v13)
    {

      v16 = 1;
    }

    else
    {
      v15 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v15)
      {
        v16 = 1;
      }

      else
      {
        v16 = 2;
      }
    }
  }

  else
  {
    v16 = 0;
  }

  v17 = objc_allocWithZone(type metadata accessor for ArcadeSubscribePageView());
  *&v4[OBJC_IVAR____TtC8AppStore29ArcadeSubscribeViewController_pageView] = sub_1004886BC(v16);
  type metadata accessor for ImpressionsCalculator();
  BaseObjectGraph.optional<A>(_:)();
  v18 = v28;
  *&v4[OBJC_IVAR____TtC8AppStore29ArcadeSubscribeViewController_impressionsCalculator] = v28;
  if (v18)
  {

    ImpressionsCalculator.isVisible.setter();
  }

  v19 = &v4[OBJC_IVAR____TtC8AppStore29ArcadeSubscribeViewController_lifecycleObserver];
  *(v19 + 3) = type metadata accessor for ArcadeSubscribePresenter();
  *(v19 + 4) = &protocol witness table for BasePresenter;
  *v19 = a1;
  v27.receiver = v4;
  v27.super_class = ObjectType;

  v20 = objc_msgSendSuper2(&v27, "initWithNibName:bundle:", 0, 0);
  sub_1000078BC(&qword_10098EA78, v21, type metadata accessor for ArcadeSubscribeViewController, &protocol conformance descriptor for ArcadeSubscribeViewController);
  v22 = v20;
  ArcadeSubscribePresenter.view.setter();
  v23 = [v22 view];
  if (v23)
  {
    v24 = v23;
    sub_100005744(0, &qword_100970180, UIColor_ptr);
    v25 = static UIColor.defaultBackground.getter();
    [v24 setBackgroundColor:v25];

    v26 = [v22 view];
    if (v26)
    {
      [v26 addSubview:*&v22[OBJC_IVAR____TtC8AppStore29ArcadeSubscribeViewController_pageView]];

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

id sub_1005F5C2C()
{
  v1 = [v0 isViewLoaded];
  v2 = OBJC_IVAR____TtC8AppStore29ArcadeSubscribeViewController_overlayViewController;
  if (v1)
  {
    v3 = *&v0[OBJC_IVAR____TtC8AppStore29ArcadeSubscribeViewController_overlayViewController];
    if (v3)
    {
      v4 = v3;
      [v0 addChildViewController:v4];
      result = [v4 view];
      if (result)
      {
        v6 = result;
        result = [v0 view];
        if (result)
        {
          v7 = result;
          [result bounds];
          v9 = v8;
          v11 = v10;
          v13 = v12;
          v15 = v14;

          [v6 setFrame:{v9, v11, v13, v15}];
          v16 = *&v0[OBJC_IVAR____TtC8AppStore29ArcadeSubscribeViewController_fallbackDismissButton];
          if (!v16)
          {
            result = [v0 view];
            if (result)
            {
              v18 = result;
              result = [v4 view];
              if (result)
              {
                v19 = result;
                [v18 addSubview:result];
                goto LABEL_12;
              }

LABEL_21:
              __break(1u);
              return result;
            }

LABEL_20:
            __break(1u);
            goto LABEL_21;
          }

          v17 = v16;
          result = [v0 view];
          if (result)
          {
            v18 = result;
            result = [v4 view];
            if (result)
            {
              v19 = result;
              [v18 insertSubview:result belowSubview:v17];

LABEL_12:
              [v4 didMoveToParentViewController:v0];

              v2 = OBJC_IVAR____TtC8AppStore29ArcadeSubscribeViewController_overlayViewController;
              goto LABEL_13;
            }

            goto LABEL_19;
          }

LABEL_18:
          __break(1u);
LABEL_19:
          __break(1u);
          goto LABEL_20;
        }
      }

      else
      {
        __break(1u);
      }

      __break(1u);
      goto LABEL_18;
    }
  }

LABEL_13:
  v20 = *&v0[OBJC_IVAR____TtC8AppStore29ArcadeSubscribeViewController_pageView];
  v21 = *&v0[v2] != 0;

  return [v20 setHidden:v21];
}

void sub_1005F5E58()
{
  v1 = *&v0[OBJC_IVAR____TtC8AppStore29ArcadeSubscribeViewController_fallbackDismissButton];
  if (v1)
  {
    v2 = v1;
    v3._object = 0x800000010081CE20;
    v3._countAndFlagsBits = 0xD00000000000001CLL;
    v4._countAndFlagsBits = 0;
    v4._object = 0xE000000000000000;
    localizedString(_:comment:)(v3, v4);
    v5 = String._bridgeToObjectiveC()();

    [v2 setTitle:v5 forState:0];

    [v2 addTarget:v0 action:"dismissPressed:" forControlEvents:64];
    v6 = *&v0[OBJC_IVAR____TtC8AppStore29ArcadeSubscribeViewController_overlayViewController];
    if (v6)
    {
      v7 = v6;
      v8 = [v0 view];
      if (!v8)
      {
LABEL_14:
        __break(1u);
        goto LABEL_15;
      }

      v9 = v8;
      v10 = [v7 view];
      if (!v10)
      {
LABEL_15:
        __break(1u);
        goto LABEL_16;
      }

      v11 = v10;
      [v9 insertSubview:v2 aboveSubview:v10];

      v12 = v2;
      v2 = v11;
    }

    else
    {
      v13 = [v0 view];
      if (!v13)
      {
LABEL_16:
        __break(1u);
        return;
      }

      v12 = v13;
      [v13 addSubview:v2];
    }
  }

  v14 = [v0 view];
  if (!v14)
  {
    __break(1u);
    goto LABEL_14;
  }

  v15 = v14;
  [v14 setNeedsLayout];
}

Swift::Void __swiftcall ArcadeSubscribeViewController.viewDidLoad()()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = type metadata accessor for StoreViewControllerLifecycleEvent();
  v4 = *(v3 - 8);
  *&v5 = __chkstk_darwin(v3).n128_u64[0];
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9.receiver = v1;
  v9.super_class = ObjectType;
  objc_msgSendSuper2(&v9, "viewDidLoad", v5);
  sub_10002A400(&v1[OBJC_IVAR____TtC8AppStore29ArcadeSubscribeViewController_lifecycleObserver], *&v1[OBJC_IVAR____TtC8AppStore29ArcadeSubscribeViewController_lifecycleObserver + 24]);
  (*(v4 + 104))(v7, enum case for StoreViewControllerLifecycleEvent.didLoad(_:), v3);
  dispatch thunk of StoreViewControllerLifecycleObserver.observe(lifecycleEvent:)();
  (*(v4 + 8))(v7, v3);
  ArcadeSubscribePresenter.didLoad()();
  [v1 setModalInPresentation:1];
  v8 = [v1 navigationItem];
  [v8 setLargeTitleDisplayMode:2];

  [v1 setTitle:0];
}

Swift::Void __swiftcall ArcadeSubscribeViewController.viewWillAppear(_:)(Swift::Bool a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = type metadata accessor for StoreViewControllerLifecycleEvent();
  v6 = *(v5 - 8);
  *&v7 = __chkstk_darwin(v5).n128_u64[0];
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21.receiver = v2;
  v21.super_class = ObjectType;
  objc_msgSendSuper2(&v21, "viewWillAppear:", a1, v7);
  sub_10002A400(&v2[OBJC_IVAR____TtC8AppStore29ArcadeSubscribeViewController_lifecycleObserver], *&v2[OBJC_IVAR____TtC8AppStore29ArcadeSubscribeViewController_lifecycleObserver + 24]);
  (*(v6 + 104))(v9, enum case for StoreViewControllerLifecycleEvent.willAppear(_:), v5);
  dispatch thunk of StoreViewControllerLifecycleObserver.observe(lifecycleEvent:)();
  (*(v6 + 8))(v9, v5);
  v10 = [v2 navigationItem];
  v11 = [v10 leftBarButtonItems];

  if (v11)
  {
    sub_100005744(0, &qword_100983870, UIBarButtonItem_ptr);
    v12 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v12 >> 62)
    {
      v13 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v14 = v13 != 0;
  }

  else
  {
    v14 = 0;
  }

  v15 = [v2 navigationItem];
  v16 = [v15 rightBarButtonItems];

  if (v16)
  {
    sub_100005744(0, &qword_100983870, UIBarButtonItem_ptr);
    v17 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v18 = v17 >> 62 ? _CocoaArrayWrapper.endIndex.getter() : *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (v18)
    {
      v14 = 1;
    }
  }

  v19 = [v2 navigationController];
  if (v19)
  {
    v20 = v19;
    [v19 setNavigationBarHidden:!v14 animated:0];
  }
}

Swift::Void __swiftcall ArcadeSubscribeViewController.viewDidAppear(_:)(Swift::Bool a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = type metadata accessor for Date();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for StoreViewControllerLifecycleEvent();
  v10 = *(v9 - 8);
  *&v11 = __chkstk_darwin(v9).n128_u64[0];
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17.receiver = v2;
  v17.super_class = ObjectType;
  objc_msgSendSuper2(&v17, "viewDidAppear:", a1, v11);
  sub_10002A400(&v2[OBJC_IVAR____TtC8AppStore29ArcadeSubscribeViewController_lifecycleObserver], *&v2[OBJC_IVAR____TtC8AppStore29ArcadeSubscribeViewController_lifecycleObserver + 24]);
  (*(v10 + 104))(v13, enum case for StoreViewControllerLifecycleEvent.didAppear(_:), v9);
  dispatch thunk of StoreViewControllerLifecycleObserver.observe(lifecycleEvent:)();
  (*(v10 + 8))(v13, v9);
  if (dispatch thunk of BasePresenter.pendingPageRender.getter())
  {
    Date.init()();
    Date.timeIntervalSince1970.getter();
    (*(v6 + 8))(v8, v5);
    PendingPageRender.appearTime.setter();
  }

  if (dispatch thunk of BasePresenter.pageRenderMetrics.getter())
  {
    PageRenderMetricsPresenter.viewDidAppear()();
  }

  ArtworkLoader.isOccluded.setter();
  type metadata accessor for MetricsActivity();
  static MetricsActivity.current.getter();
  dispatch thunk of BasePresenter.referrer.getter();
  dispatch thunk of MetricsActivity.changePageReferrerUrl(_:)();

  v14 = objc_opt_self();
  v15 = [v14 defaultCenter];
  [v15 addObserver:v2 selector:"appEnteredWhileAppeared" name:UIApplicationDidBecomeActiveNotification object:0];

  v16 = [v14 defaultCenter];
  [v16 addObserver:v2 selector:"appExitedWhileAppeared" name:UIApplicationDidEnterBackgroundNotification object:0];
}

Swift::Void __swiftcall ArcadeSubscribeViewController.viewWillDisappear(_:)(Swift::Bool a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = type metadata accessor for Date();
  v20 = *(v5 - 8);
  v21 = v5;
  __chkstk_darwin(v5);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ViewWillDisappearReason();
  v22 = *(v8 - 8);
  v23 = v8;
  __chkstk_darwin(v8);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10002849C(&qword_1009729C8, &unk_1007B3740);
  __chkstk_darwin(v11 - 8);
  v13 = &v20 - v12;
  v14 = type metadata accessor for StoreViewControllerLifecycleEvent();
  v15 = *(v14 - 8);
  *&v16 = __chkstk_darwin(v14).n128_u64[0];
  v18 = &v20 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24.receiver = v2;
  v24.super_class = ObjectType;
  objc_msgSendSuper2(&v24, "viewWillDisappear:", a1, v16);
  sub_10002A400(&v2[OBJC_IVAR____TtC8AppStore29ArcadeSubscribeViewController_lifecycleObserver], *&v2[OBJC_IVAR____TtC8AppStore29ArcadeSubscribeViewController_lifecycleObserver + 24]);
  static ViewWillDisappearReason.inferred(for:)();
  (*(v15 + 104))(v18, enum case for StoreViewControllerLifecycleEvent.willDisappear(_:), v14);
  dispatch thunk of StoreViewControllerLifecycleObserver.observe(lifecycleEvent:)();
  (*(v15 + 8))(v18, v14);
  if (dispatch thunk of BasePresenter.pendingPageRender.getter())
  {
    static ViewWillDisappearReason.inferred(for:)();
    Date.init()();
    Date.timeIntervalSince1970.getter();
    (*(v20 + 8))(v7, v21);
    PendingPageRender.DisappearTimeAndReason.init(reason:timeInterval:)();
    v19 = type metadata accessor for PendingPageRender.DisappearTimeAndReason();
    (*(*(v19 - 8) + 56))(v13, 0, 1, v19);
    PendingPageRender.disappearTime.setter();
  }

  if (dispatch thunk of BasePresenter.pageRenderMetrics.getter())
  {
    static ViewWillDisappearReason.inferred(for:)();
    PageRenderMetricsPresenter.viewWillDisappear(forReason:)();

    (*(v22 + 8))(v10, v23);
  }

  if (*&v2[OBJC_IVAR____TtC8AppStore29ArcadeSubscribeViewController_impressionsCalculator])
  {
    ImpressionsCalculator.isVisible.setter();
  }

  ArtworkLoader.isOccluded.setter();
  type metadata accessor for MetricsActivity();
  static MetricsActivity.current.getter();
  dispatch thunk of MetricsActivity.changePageReferrerUrl(_:)();

  static MetricsActivity.current.getter();
  dispatch thunk of MetricsActivity.changePreloaded(_:)();
}

Swift::Void __swiftcall ArcadeSubscribeViewController.viewDidDisappear(_:)(Swift::Bool a1)
{
  ObjectType = swift_getObjectType();
  v4 = type metadata accessor for StoreViewControllerLifecycleEvent();
  v5 = *(v4 - 8);
  *&v6 = __chkstk_darwin(v4).n128_u64[0];
  v8 = &v9 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9.receiver = v1;
  v9.super_class = ObjectType;
  objc_msgSendSuper2(&v9, "viewDidDisappear:", a1, v6);
  sub_10002A400(&v1[OBJC_IVAR____TtC8AppStore29ArcadeSubscribeViewController_lifecycleObserver], *&v1[OBJC_IVAR____TtC8AppStore29ArcadeSubscribeViewController_lifecycleObserver + 24]);
  (*(v5 + 104))(v8, enum case for StoreViewControllerLifecycleEvent.didDisappear(_:), v4);
  dispatch thunk of StoreViewControllerLifecycleObserver.observe(lifecycleEvent:)();
  (*(v5 + 8))(v8, v4);
}

Swift::Void __swiftcall ArcadeSubscribeViewController.as_viewDidBecomeFullyVisible()()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = type metadata accessor for StoreViewControllerLifecycleEvent();
  v4 = *(v3 - 8);
  *&v5 = __chkstk_darwin(v3).n128_u64[0];
  v7 = &v8 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8.receiver = v1;
  v8.super_class = ObjectType;
  objc_msgSendSuper2(&v8, "as_viewDidBecomeFullyVisible", v5);
  sub_10002A400(&v1[OBJC_IVAR____TtC8AppStore29ArcadeSubscribeViewController_lifecycleObserver], *&v1[OBJC_IVAR____TtC8AppStore29ArcadeSubscribeViewController_lifecycleObserver + 24]);
  (*(v4 + 104))(v7, enum case for StoreViewControllerLifecycleEvent.didAppear(_:), v3);
  dispatch thunk of StoreViewControllerLifecycleObserver.observe(lifecycleEvent:)();
  (*(v4 + 8))(v7, v3);
  ArtworkLoader.isOccluded.setter();
  type metadata accessor for MetricsActivity();
  static MetricsActivity.current.getter();
  dispatch thunk of BasePresenter.referrer.getter();
  dispatch thunk of MetricsActivity.changePageReferrerUrl(_:)();

  static MetricsActivity.current.getter();
  dispatch thunk of MetricsActivity.changePreloaded(_:)();
}

Swift::Void __swiftcall ArcadeSubscribeViewController.as_viewWillBecomePartiallyVisible()()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = type metadata accessor for StoreViewControllerLifecycleEvent();
  v4 = *(v3 - 8);
  *&v5 = __chkstk_darwin(v3).n128_u64[0];
  v7 = &v8 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8.receiver = v1;
  v8.super_class = ObjectType;
  objc_msgSendSuper2(&v8, "as_viewWillBecomePartiallyVisible", v5);
  sub_10002A400(&v1[OBJC_IVAR____TtC8AppStore29ArcadeSubscribeViewController_lifecycleObserver], *&v1[OBJC_IVAR____TtC8AppStore29ArcadeSubscribeViewController_lifecycleObserver + 24]);
  static ViewWillDisappearReason.inferred(for:)();
  (*(v4 + 104))(v7, enum case for StoreViewControllerLifecycleEvent.willDisappear(_:), v3);
  dispatch thunk of StoreViewControllerLifecycleObserver.observe(lifecycleEvent:)();
  (*(v4 + 8))(v7, v3);
  if (*&v1[OBJC_IVAR____TtC8AppStore29ArcadeSubscribeViewController_impressionsCalculator])
  {
    ImpressionsCalculator.isVisible.setter();
  }

  ArtworkLoader.isOccluded.setter();
  type metadata accessor for MetricsActivity();
  static MetricsActivity.current.getter();
  dispatch thunk of MetricsActivity.changePageReferrerUrl(_:)();

  static MetricsActivity.current.getter();
  dispatch thunk of MetricsActivity.changePreloaded(_:)();
}

uint64_t sub_1005F73EC(SEL *a1, unsigned int *a2)
{
  ObjectType = swift_getObjectType();
  v6 = type metadata accessor for StoreViewControllerLifecycleEvent();
  v7 = *(v6 - 8);
  *&v8 = __chkstk_darwin(v6).n128_u64[0];
  v10 = &v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12.receiver = v2;
  v12.super_class = ObjectType;
  objc_msgSendSuper2(&v12, *a1, v8);
  sub_10002A400(&v2[OBJC_IVAR____TtC8AppStore29ArcadeSubscribeViewController_lifecycleObserver], *&v2[OBJC_IVAR____TtC8AppStore29ArcadeSubscribeViewController_lifecycleObserver + 24]);
  (*(v7 + 104))(v10, *a2, v6);
  dispatch thunk of StoreViewControllerLifecycleObserver.observe(lifecycleEvent:)();
  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_1005F753C(void *a1, uint64_t a2, const char **a3, unsigned int *a4)
{
  ObjectType = swift_getObjectType();
  v8 = type metadata accessor for StoreViewControllerLifecycleEvent();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15.receiver = a1;
  v15.super_class = ObjectType;
  v12 = *a3;
  v13 = a1;
  objc_msgSendSuper2(&v15, v12);
  sub_10002A400(&v13[OBJC_IVAR____TtC8AppStore29ArcadeSubscribeViewController_lifecycleObserver], *&v13[OBJC_IVAR____TtC8AppStore29ArcadeSubscribeViewController_lifecycleObserver + 24]);
  (*(v9 + 104))(v11, *a4, v8);
  dispatch thunk of StoreViewControllerLifecycleObserver.observe(lifecycleEvent:)();

  return (*(v9 + 8))(v11, v8);
}

Swift::Void __swiftcall ArcadeSubscribeViewController.viewWillLayoutSubviews()()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = type metadata accessor for FloatingPointRoundingRule();
  v4 = *(v3 - 8);
  *&v5 = __chkstk_darwin(v3).n128_u64[0];
  v7 = &v56 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66.receiver = v1;
  v66.super_class = ObjectType;
  objc_msgSendSuper2(&v66, "viewWillLayoutSubviews", v5);
  v8 = [v1 view];
  if (!v8)
  {
    __break(1u);
    goto LABEL_22;
  }

  v9 = v8;
  [v8 bounds];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;

  v18 = *&v1[OBJC_IVAR____TtC8AppStore29ArcadeSubscribeViewController_overlayViewController];
  if (v18)
  {
    v19 = *&v1[OBJC_IVAR____TtC8AppStore29ArcadeSubscribeViewController_fallbackDismissButton];
    v20 = &selRef__setDefaultAttributes_;
    if (v19)
    {
      v21 = v18;
      v61 = v19;
      v22 = [v1 view];
      if (!v22)
      {
LABEL_23:
        __break(1u);
LABEL_24:
        __break(1u);
        goto LABEL_25;
      }

      v23 = v22;
      [v22 safeAreaInsets];

      v59 = v17;
      v60 = v15;
      CGRect.subtracting(insets:)();
      v25 = v24;
      v27 = v26;
      v29 = v28;
      v31 = v30;
      v32 = *&v1[OBJC_IVAR____TtC8AppStore29ArcadeSubscribeViewController_pageView];
      v58 = v32[OBJC_IVAR____TtC8AppStore23ArcadeSubscribePageView_style];
      v33 = [v32 traitCollection];
      v34 = UITraitCollection.isSizeClassCompact.getter();

      if (v34)
      {
        v35 = [v32 window];
        if (v35)
        {
          v36 = v35;
          [v35 frame];
          Width = CGRectGetWidth(v67);
          [v32 bounds];
          v38 = CGRectGetWidth(v68);

          v39 = v38 < Width;
        }

        else
        {
          v39 = 0;
        }
      }

      else
      {
        v39 = 1;
      }

      v46 = [v1 view];
      if (!v46)
      {
        goto LABEL_24;
      }

      v47 = v46;
      [v46 bounds];
      v49 = v48;

      v50 = [v1 traitCollection];
      v51 = UITraitCollection.prefersAccessibilityLayouts.getter();

      v56 = v13;
      v57 = v11;
      if (v51)
      {
        sub_1004872AC(v39, v58, v62);
        sub_10002C0AC(&v64, v65);
        sub_1005F7C68(v62);
      }

      else
      {
        sub_1004881C4(v39, v58, v62, v49);
        sub_10002C0AC(&v63, v65);
        sub_1005F7C14(v62);
      }

      sub_100005A38(v65, v62);
      sub_10002A400(v62, *&v62[3]);
      j___s5JetUI10DimensionsV19defaultRoundingRules013FloatingPointeF0OvgZ();
      AnyDimension.value(in:rounded:)();
      (*(v4 + 8))(v7, v3);
      sub_100007000(v62);
      v52 = v61;
      [v61 measurementsWithFitting:v1 in:{v29, v31}];
      v69.origin.x = v25;
      v69.origin.y = v27;
      v69.size.width = v29;
      v69.size.height = v31;
      CGRectGetMidX(v69);
      v70.origin.x = v25;
      v70.origin.y = v27;
      v70.size.width = v29;
      v70.size.height = v31;
      CGRectGetMaxY(v70);
      v53 = v52;
      CGRect.withLayoutDirection(in:relativeTo:)();
      v20 = &selRef__setDefaultAttributes_;
      [v53 setFrame:?];

      v13 = v56;
      v11 = v57;
      v17 = v59;
      v15 = v60;
    }

    else
    {
      v45 = v18;
    }

    v54 = [v18 view];
    if (v54)
    {
      v55 = v54;
      [v54 v20[490]];

      return;
    }

LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v40 = *&v1[OBJC_IVAR____TtC8AppStore29ArcadeSubscribeViewController_pageView];
  v41 = [v1 view];
  if (v41)
  {
    v42 = v41;
    [v41 bounds];

    v43 = [v1 view];
    if (v43)
    {
      v44 = v43;
      [v43 safeAreaInsets];

      CGRect.subtracting(insets:)();
      [v40 setFrame:?];
      return;
    }

    goto LABEL_26;
  }

LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
}

Swift::Void __swiftcall ArcadeSubscribeViewController.traitCollectionDidChange(_:)(UITraitCollection_optional a1)
{
  isa = a1.value.super.isa;
  v5.receiver = v1;
  v5.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v5, "traitCollectionDidChange:", isa);
  v3 = [v1 view];
  if (v3)
  {
    v4 = v3;
    [v3 setNeedsLayout];
  }

  else
  {
    __break(1u);
  }
}

uint64_t ArcadeSubscribeViewController.supportedInterfaceOrientations.getter()
{
  v1 = [v0 traitCollection];
  v2 = [v1 userInterfaceIdiom];

  if (v2 == 1)
  {
    return 30;
  }

  else
  {
    return 2;
  }
}

uint64_t sub_1005F7F00(char *a1, uint64_t a2, unsigned int *a3)
{
  v5 = type metadata accessor for StoreViewControllerLifecycleEvent();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10002A400(&a1[OBJC_IVAR____TtC8AppStore29ArcadeSubscribeViewController_lifecycleObserver], *&a1[OBJC_IVAR____TtC8AppStore29ArcadeSubscribeViewController_lifecycleObserver + 24]);
  (*(v6 + 104))(v8, *a3, v5);
  v9 = a1;
  dispatch thunk of StoreViewControllerLifecycleObserver.observe(lifecycleEvent:)();

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1005F802C()
{
  v0 = type metadata accessor for MetricsData();
  v14 = *(v0 - 8);
  v15 = v0;
  __chkstk_darwin(v0);
  v2 = v13 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for MetricsPipeline();
  v18 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for MetricsFieldsContext();
  v16 = *(v6 - 8);
  v17 = v6;
  __chkstk_darwin(v6);
  v8 = v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ClickMetricsEvent();
  v13[2] = static ClickMetricsEvent.makeBackClickEvent()();
  BasePresenter.impressionsTracker.getter();
  type metadata accessor for MetricsActivity();
  static MetricsActivity.current.getter();
  dispatch thunk of MetricsActivity.currentPageFields.getter();

  static MetricsActivity.current.getter();
  dispatch thunk of MetricsActivity.preloaded.getter();

  v21 = 0;
  aBlock = 0u;
  v20 = 0u;
  v24 = 0;
  memset(v23, 0, sizeof(v23));
  static MetricsActivity.current.getter();
  dispatch thunk of MetricsActivity.contextualAction.getter();

  static MetricsFieldsContext.createFieldsContext(impressionsTracker:adamIdString:pageContextOverride:referrer:participatingInCrossfireReferral:pageFields:preloaded:advertRotationData:searchGhostHintData:contextualAction:deviceWindowData:impressionsAppendixData:)();
  swift_unknownObjectRelease();

  sub_10002B894(v23, &qword_100977140, &unk_1007BC310);
  sub_10002B894(&aBlock, &qword_100977138, qword_1007D9800);
  v9 = v13[1];
  type metadata accessor for BaseObjectGraph();
  inject<A, B>(_:from:)();
  dispatch thunk of MetricsEvent.metricsData.getter();
  MetricsPipeline.process(_:using:)();

  (*(v14 + 8))(v2, v15);
  v10 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v21 = sub_1005FA3F0;
  v22 = v10;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  *&v20 = sub_100007A08;
  *(&v20 + 1) = &unk_1008CB7B0;
  v11 = _Block_copy(&aBlock);

  [v9 dismissViewControllerAnimated:1 completion:v11];
  _Block_release(v11);

  (*(v18 + 8))(v5, v3);
  return (*(v16 + 8))(v8, v17);
}

void sub_1005F84EC(double a1)
{
  v2 = v1;
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v23 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchTime();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v20 - v15;
  if (!*(v2 + OBJC_IVAR____TtC8AppStore29ArcadeSubscribeViewController_fallbackDismissButton))
  {
    sub_100005744(0, &qword_1009729E0, OS_dispatch_queue_ptr);
    v22 = v4;
    v20 = static OS_dispatch_queue.main.getter();
    static DispatchTime.now()();
    + infix(_:_:)();
    v21 = *(v11 + 8);
    v21(v13, v10);
    v17 = swift_allocObject();
    swift_unknownObjectWeakInit();
    aBlock[4] = sub_1005FA40C;
    aBlock[5] = v17;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100007A08;
    aBlock[3] = &unk_1008CB7D8;
    v18 = _Block_copy(aBlock);

    static DispatchQoS.unspecified.getter();
    aBlock[0] = _swiftEmptyArrayStorage;
    sub_1000078BC(&qword_100976F50, 255, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_10002849C(&unk_1009729F0, &unk_1007B3D80);
    sub_1000079A4();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v19 = v20;
    OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
    _Block_release(v18);

    (*(v22 + 8))(v6, v3);
    (*(v23 + 8))(v9, v7);
    v21(v16, v10);
  }
}

void sub_1005F88C4(uint64_t a1)
{
  v1 = type metadata accessor for FontUseCase();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v17[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = *(Strong + OBJC_IVAR____TtC8AppStore29ArcadeSubscribeViewController_overlayViewController);
    v7 = Strong;
    v8 = v6;

    if (v6)
    {

      swift_beginAccess();
      v9 = swift_unknownObjectWeakLoadStrong();
      if (v9)
      {
        v10 = v9;
        type metadata accessor for DynamicTypeButton();
        if (qword_10096E118 != -1)
        {
          swift_once();
        }

        v11 = sub_1000056A8(v1, qword_1009D12C8);
        (*(v2 + 16))(v4, v11, v1);
        v12 = DynamicTypeButton.__allocating_init(useCase:)();
        v13 = OBJC_IVAR____TtC8AppStore29ArcadeSubscribeViewController_fallbackDismissButton;
        v14 = *&v10[OBJC_IVAR____TtC8AppStore29ArcadeSubscribeViewController_fallbackDismissButton];
        if (v14)
        {
          [v14 removeFromSuperview];
          v15 = *&v10[v13];
        }

        else
        {
          v15 = 0;
        }

        *&v10[v13] = v12;
        v16 = v12;

        sub_1005F5E58();
      }
    }
  }
}

void sub_1005F8AA4(uint64_t a1)
{
  v3 = type metadata accessor for DispatchTime();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v13 - v8;
  v10 = OBJC_IVAR____TtC8AppStore29ArcadeSubscribeViewController_delayedDismissalReappearanceItem;
  if (*(v1 + OBJC_IVAR____TtC8AppStore29ArcadeSubscribeViewController_delayedDismissalReappearanceItem))
  {

    dispatch thunk of DispatchWorkItem.cancel()();
  }

  *(v1 + v10) = a1;
  swift_retain_n();

  if (a1)
  {
    type metadata accessor for ASKBagContract();
    type metadata accessor for BaseObjectGraph();
    inject<A, B>(_:from:)();
    sub_100005744(0, &qword_1009729E0, OS_dispatch_queue_ptr);
    v11 = static OS_dispatch_queue.main.getter();
    static DispatchTime.now()();
    ASKBagContract.arcadeSubscribePageDismissDelay.getter();
    + infix(_:_:)();
    v12 = *(v4 + 8);
    v12(v6, v3);
    OS_dispatch_queue.asyncAfter(deadline:execute:)();

    v12(v9, v3);
  }
}

void ArcadeSubscribeViewController.apply(page:)(uint64_t a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC8AppStore29ArcadeSubscribeViewController_fallbackDismissButton;
  v5 = *&v2[OBJC_IVAR____TtC8AppStore29ArcadeSubscribeViewController_fallbackDismissButton];
  if (v5)
  {
    [v5 removeFromSuperview];
    v6 = *&v2[v4];
  }

  else
  {
    v6 = 0;
  }

  *&v2[v4] = 0;

  sub_1005F5E58();
  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v8 = [v2 view];
  if (!v8)
  {
    __break(1u);
    goto LABEL_11;
  }

  v9 = v8;
  [v8 bounds];

  v10 = [v2 view];
  if (!v10)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v11 = v10;
  [v10 safeAreaInsets];

  CGRect.subtracting(insets:)();
  sub_100489334(v12, v13, a1, sub_1005F9AD8, v7, *&v2[OBJC_IVAR____TtC8AppStore29ArcadeSubscribeViewController_artworkLoader], *&v2[OBJC_IVAR____TtC8AppStore29ArcadeSubscribeViewController_impressionsCalculator], *&v2[OBJC_IVAR____TtC8AppStore29ArcadeSubscribeViewController_objectGraph]);

  v14 = [v2 view];
  if (!v14)
  {
LABEL_12:
    __break(1u);
    return;
  }

  v15 = v14;
  [v14 setNeedsLayout];
}

void *sub_1005F8EA8(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v4 = result;
    sub_1000073E8(a1, v5);
    sub_1005F802C();

    return sub_10002B894(v5, &unk_1009711D0, &unk_1007B1A10);
  }

  return result;
}

Swift::Void __swiftcall ArcadeSubscribeViewController.toggleDismissButtonVisibility(shouldHide:)(Swift::Bool shouldHide)
{
  v3 = type metadata accessor for DispatchWorkItemFlags();
  __chkstk_darwin(v3);
  v4 = OBJC_IVAR____TtC8AppStore29ArcadeSubscribeViewController_delayedDismissalReappearanceItem;
  if (*(v1 + OBJC_IVAR____TtC8AppStore29ArcadeSubscribeViewController_delayedDismissalReappearanceItem))
  {

    dispatch thunk of DispatchWorkItem.cancel()();
  }

  *(v1 + v4) = 0;

  v5 = *(v1 + OBJC_IVAR____TtC8AppStore29ArcadeSubscribeViewController_pageView);
  if (shouldHide)
  {
    v6 = 0.0;
  }

  else
  {
    v6 = 1.0;
  }

  v7 = objc_opt_self();
  v8 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = v6;
  v18 = sub_1005F9AE0;
  v19 = v9;
  aBlock = _NSConcreteStackBlock;
  v15 = 1107296256;
  v16 = sub_100007A08;
  v17 = &unk_1008CB680;
  v10 = _Block_copy(&aBlock);

  [v7 animateWithDuration:4 delay:v10 options:0 animations:0.15 completion:0.0];
  _Block_release(v10);
  if (shouldHide)
  {
    v11 = swift_allocObject();
    *(v11 + 16) = v5;
    v18 = sub_1005F9AEC;
    v19 = v11;
    aBlock = _NSConcreteStackBlock;
    v15 = 1107296256;
    v16 = sub_100007A08;
    v17 = &unk_1008CB6D0;
    _Block_copy(&aBlock);
    sub_1000078BC(&qword_100976F50, 255, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    v12 = v5;
    sub_10002849C(&unk_1009729F0, &unk_1007B3D80);
    sub_1000079A4();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    type metadata accessor for DispatchWorkItem();
    swift_allocObject();
    v13 = DispatchWorkItem.init(flags:block:)();

    sub_1005F8AA4(v13);
  }
}

void sub_1005F9240(uint64_t a1)
{
  v1 = objc_opt_self();
  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v3 = swift_allocObject();
  *(v3 + 16) = v2;
  *(v3 + 24) = 0x3FF0000000000000;
  v5[4] = sub_1005FA42C;
  v5[5] = v3;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 1107296256;
  v5[2] = sub_100007A08;
  v5[3] = &unk_1008CB828;
  v4 = _Block_copy(v5);

  [v1 animateWithDuration:4 delay:v4 options:0 animations:0.15 completion:0.0];
  _Block_release(v4);
}

Swift::Void __swiftcall ArcadeSubscribeViewController.dismiss()()
{
  v1 = [v0 presentedViewController];
  if (v1)
  {
  }

  else
  {
    v2 = [v0 navigationController];
    v3 = [v2 visibleViewController];

    if (v3)
    {
      sub_100005744(0, &qword_1009711C0, UIViewController_ptr);
      v4 = v0;
      v5 = static NSObject.== infix(_:_:)();

      if (v5)
      {
        v6 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v8[4] = sub_1005FA428;
        v8[5] = v6;
        v8[0] = _NSConcreteStackBlock;
        v8[1] = 1107296256;
        v8[2] = sub_100007A08;
        v8[3] = &unk_1008CB6F8;
        v7 = _Block_copy(v8);

        [v4 dismissViewControllerAnimated:1 completion:v7];
        _Block_release(v7);
      }
    }
  }
}

void sub_1005F94FC(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = Strong + OBJC_IVAR____TtC8AppStore29ArcadeSubscribeViewController_delegate;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v4 = *(v3 + 8);

      ObjectType = swift_getObjectType();
      (*(v4 + 8))(ObjectType, v4);
      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

Swift::Void __swiftcall ArcadeSubscribeViewController.showLoading()()
{
  v1 = v0;
  v2 = type metadata accessor for JULoadingViewController.PresentationContext();
  __chkstk_darwin(v2 - 8);
  static JULoadingViewController.PresentationContext.placeholder.getter();
  v3 = objc_allocWithZone(type metadata accessor for JULoadingViewController());
  v4 = JULoadingViewController.init(label:presentationContext:pageRenderMetrics:)();
  v5 = OBJC_IVAR____TtC8AppStore29ArcadeSubscribeViewController_overlayViewController;
  v6 = *(v1 + OBJC_IVAR____TtC8AppStore29ArcadeSubscribeViewController_overlayViewController);
  static ViewControllerContainment.remove(_:)();

  v7 = *(v1 + v5);
  *(v1 + v5) = v4;
  v8 = v4;

  sub_1005F5C2C();
  if ((ArcadeSubscribePresenter.isAskToBuyRequest.getter() & 1) == 0)
  {
    type metadata accessor for ASKBagContract();
    type metadata accessor for BaseObjectGraph();
    inject<A, B>(_:from:)();
    ASKBagContract.arcadeSubscribePageDismissDelay.getter();
    sub_1005F84EC(v9);
  }
}

Swift::Void __swiftcall ArcadeSubscribeViewController.hideLoading()()
{
  v1 = OBJC_IVAR____TtC8AppStore29ArcadeSubscribeViewController_overlayViewController;
  v2 = *(v0 + OBJC_IVAR____TtC8AppStore29ArcadeSubscribeViewController_overlayViewController);
  static ViewControllerContainment.remove(_:)();

  v3 = *(v0 + v1);
  *(v0 + v1) = 0;

  sub_1005F5C2C();
}

void ArcadeSubscribeViewController.show(updateError:)(uint64_t a1)
{
  v2 = v1;
  type metadata accessor for JUContentUnavailableViewController();
  sub_1000078BC(&qword_10098EA20, 255, &type metadata accessor for ArcadeSubscribePresenter, &protocol conformance descriptor for BasePresenter);
  swift_errorRetain();

  v3 = JUContentUnavailableViewController.init(error:from:includeMetrics:retry:)();
  v4 = OBJC_IVAR____TtC8AppStore29ArcadeSubscribeViewController_overlayViewController;
  v5 = *(v2 + OBJC_IVAR____TtC8AppStore29ArcadeSubscribeViewController_overlayViewController);
  static ViewControllerContainment.remove(_:)();

  v6 = *(v2 + v4);
  *(v2 + v4) = v3;
  v7 = v3;

  sub_1005F5C2C();
}

uint64_t ArcadeSubscribeViewController.perform(action:sender:)(uint64_t a1)
{
  v3 = sub_10002849C(&unk_100972A00, &unk_1007B3130);
  __chkstk_darwin(v3 - 8);
  v5 = &v10 - v4;
  v6 = *(v1 + OBJC_IVAR____TtC8AppStore29ArcadeSubscribeViewController_objectGraph);
  v7 = sub_10002849C(&unk_100974490, &qword_1007B3DD0);
  BaseObjectGraph.injectIfAvailable<A>(_:)();
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(v5, 1, v7) == 1)
  {
    return sub_10002B894(v5, &unk_100972A00, &unk_1007B3130);
  }

  sub_1005F9CC0(a1, 1, v6, v5, &type metadata accessor for Action, &qword_100989C80, &type metadata accessor for Action);

  return (*(v8 + 8))(v5, v7);
}

id ArcadeSubscribeViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = String._bridgeToObjectiveC()();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

unint64_t sub_1005F9B2C()
{
  result = qword_10098EA28;
  if (!qword_10098EA28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10098EA28);
  }

  return result;
}

uint64_t sub_1005F9CC0(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, __n128), unint64_t *a6, uint64_t (*a7)(uint64_t))
{
  v28 = a6;
  v29 = a7;
  v27 = a5;
  v31 = a4;
  v30 = a2;
  v8 = type metadata accessor for Dependency();
  v25 = *(v8 - 8);
  v26 = v8;
  __chkstk_darwin(v8);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for MetricsFieldsContext();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v25 - v16;
  v18 = sub_10002849C(&unk_100982A90, &unk_1007CAFC0);
  v19 = *(v18 - 8);
  v20 = __chkstk_darwin(v18);
  v22 = &v25 - v21;
  v32[3] = v27(0, v20);
  v32[4] = sub_1000078BC(v28, 255, v29, &protocol conformance descriptor for Action);
  v32[0] = a1;
  if (v30)
  {

    sub_100510050();
    (*(v12 + 16))(v14, v17, v11);
    Dependency.init<A>(satisfying:with:)();
    dispatch thunk of BaseObjectGraph.adding(dependency:)();
    (*(v25 + 8))(v10, v26);
    (*(v12 + 32))(v22, v17, v11);
    (*(v19 + 104))(v22, enum case for ActionDispatcher.MetricsBehavior.fromAction<A>(_:), v18);
  }

  else
  {
    (*(v19 + 104))(v22, enum case for ActionDispatcher.MetricsBehavior.notProcessed<A>(_:), v18);
  }

  sub_10002849C(&unk_100974490, &qword_1007B3DD0);
  v23 = ActionDispatcher.perform(_:withMetrics:asPartOf:)();

  (*(v19 + 8))(v22, v18);
  sub_100007000(v32);
  return v23;
}

id DebugSettingsProvider.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id DebugSettingsProvider.__deallocating_deinit(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for DebugSettingsProvider();
  return objc_msgSendSuper2(&v3, "dealloc");
}

__n128 sub_1005FA540(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  v7 = a2[7];
  v8 = a2[8];
  v9 = a2[10];
  *(a1 + 144) = a2[9];
  *(a1 + 160) = v9;
  *(a1 + 112) = v7;
  *(a1 + 128) = v8;
  result = a2[11];
  v11 = a2[12];
  v12 = a2[13];
  *(a1 + 224) = *(a2 + 28);
  *(a1 + 192) = v11;
  *(a1 + 208) = v12;
  *(a1 + 176) = result;
  return result;
}

uint64_t sub_1005FA58C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 232))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 96);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1005FA5D4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 200) = 0u;
    *(result + 216) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 232) = 1;
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
      *(result + 96) = (a2 - 1);
      return result;
    }

    *(result + 232) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1005FA65C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 72))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1005FA67C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
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

  *(result + 72) = v3;
  return result;
}

void sub_1005FA6C8(uint64_t a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  v6 = v5;
  v11 = CGRectGetWidth(*&a2) * *(v5 + 56);
  v12 = v11 * *(v5 + 16);
  v16.origin.x = a2;
  v16.origin.y = a3;
  v16.size.width = a4;
  v16.size.height = a5;
  v13 = *(v5 + 64) + v11 + (CGRectGetWidth(v16) - v11) * 0.5 - v12;
  v14 = *(v5 + 32);
  v17.origin.x = v13;
  v17.origin.y = v14;
  v17.size.width = v12;
  v17.size.height = v12;
  CGRectGetMidX(v17);
  v18.origin.x = v13;
  v18.origin.y = v14;
  v18.size.width = v12;
  v18.size.height = v12;
  CGRectGetMidY(v18);
  v19.origin.x = a2;
  v19.origin.y = a3;
  v19.size.width = a4;
  v19.size.height = a5;
  CGRectGetWidth(v19);
  sub_10002A400((v5 + 72), *(v5 + 96));
  dispatch thunk of Placeable.place(at:with:)();
  sub_10002A400(v6 + 24, v6[27]);
  dispatch thunk of Placeable.place(at:with:)();
  sub_10002A400(v6 + 14, v6[17]);
  dispatch thunk of Placeable.place(at:with:)();
  sub_10002A400(v6 + 19, v6[22]);
  dispatch thunk of Placeable.place(at:with:)();
}

__n128 sub_1005FA8CC@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 48);
  *(a1 + 32) = *(v1 + 32);
  *(a1 + 48) = v2;
  *(a1 + 64) = *(v1 + 64);
  result = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 16) = result;
  return result;
}

id sub_1005FA8E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v11 = OBJC_IVAR____TtC8AppStore39OnboardingLocationPrivacyViewController_iconView;
  *&v5[v11] = [objc_allocWithZone(UIImageView) init];
  v12 = &v5[OBJC_IVAR____TtC8AppStore39OnboardingLocationPrivacyViewController_continueCallback];
  *v12 = a1;
  *(v12 + 1) = a2;
  v13 = &v5[OBJC_IVAR____TtC8AppStore39OnboardingLocationPrivacyViewController_manageCallback];
  *v13 = a3;
  *(v13 + 1) = a4;

  v14._object = 0x800000010081CFC0;
  v14._countAndFlagsBits = 0xD00000000000002BLL;
  v15._countAndFlagsBits = 0;
  v15._object = 0xE000000000000000;
  localizedString(_:comment:)(v14, v15);
  v16._countAndFlagsBits = 0xD00000000000002CLL;
  v16._object = 0x800000010081CFF0;
  v17._countAndFlagsBits = 0;
  v17._object = 0xE000000000000000;
  localizedString(_:comment:)(v16, v17);
  v18 = String._bridgeToObjectiveC()();

  v19 = String._bridgeToObjectiveC()();

  v23.receiver = v5;
  v23.super_class = ObjectType;
  v20 = objc_msgSendSuper2(&v23, "initWithTitle:detailText:icon:contentLayout:", v18, v19, 0, 2);

  v21 = v20;
  [v21 setModalInPresentation:1];

  return v21;
}

void sub_1005FAA84()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = type metadata accessor for AutomationSemantics();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for SystemImage();
  v8 = *(v7 - 8);
  *&v9 = __chkstk_darwin(v7).n128_u64[0];
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34.receiver = v1;
  v34.super_class = ObjectType;
  objc_msgSendSuper2(&v34, "viewDidLoad", v9);
  v12 = [objc_opt_self() configurationWithPointSize:54.0];
  v13 = *&v1[OBJC_IVAR____TtC8AppStore39OnboardingLocationPrivacyViewController_iconView];
  v29 = v12;
  [v13 setPreferredSymbolConfiguration:?];
  (*(v8 + 104))(v11, enum case for SystemImage.locationSquareFill(_:), v7);
  v14 = static SystemImage.load(_:with:)();
  (*(v8 + 8))(v11, v7);
  [v13 setImage:v14];

  v15 = [v1 headerView];
  v16 = [v15 customIconContainerView];

  if (v16)
  {
    [v16 addSubview:v13];
  }

  v17 = [objc_opt_self() boldButton];
  v18._countAndFlagsBits = 0xD00000000000002ELL;
  v18._object = 0x800000010081CF60;
  v19._countAndFlagsBits = 0;
  v19._object = 0xE000000000000000;
  localizedString(_:comment:)(v18, v19);
  v20 = String._bridgeToObjectiveC()();

  [v17 setTitle:v20 forState:0];

  [v17 addTarget:v1 action:"didTapContinue" forControlEvents:64];
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  static AutomationSemantics.onboarding(elementName:id:parentId:)();
  sub_10003D444(&v30);
  sub_10003D444(&v32);
  UIView.setAutomationSemantics(_:)();
  v21 = *(v4 + 8);
  v21(v6, v3);
  v22 = [v1 buttonTray];
  [v22 addButton:v17];

  v23 = [objc_opt_self() linkButton];
  v24._object = 0x800000010081CF90;
  v24._countAndFlagsBits = 0xD00000000000002CLL;
  v25._countAndFlagsBits = 0;
  v25._object = 0xE000000000000000;
  localizedString(_:comment:)(v24, v25);
  v26 = String._bridgeToObjectiveC()();

  [v23 setTitle:v26 forState:0];

  [v23 addTarget:v1 action:"didTapManage" forControlEvents:64];
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  static AutomationSemantics.onboarding(elementName:id:parentId:)();
  sub_10003D444(&v30);
  sub_10003D444(&v32);
  UIView.setAutomationSemantics(_:)();
  v21(v6, v3);
  v27 = [v1 buttonTray];
  [v27 addButton:v23];
}

uint64_t sub_1005FAFA0()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v8 = *(v7 - 8);
  *&v9 = __chkstk_darwin(v7).n128_u64[0];
  v11 = aBlock - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17.receiver = v1;
  v17.super_class = ObjectType;
  objc_msgSendSuper2(&v17, "viewDidLayoutSubviews", v9);
  sub_1005FB250();
  sub_1000076C0();
  v12 = static OS_dispatch_queue.main.getter();
  v13 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = sub_1005FB7BC;
  aBlock[5] = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100007A08;
  aBlock[3] = &unk_1008CB9A8;
  v14 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_10002D150();
  sub_10002849C(&unk_1009729F0, &unk_1007B3D80);
  sub_1000079A4();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v14);

  (*(v4 + 8))(v6, v3);
  return (*(v8 + 8))(v11, v7);
}

void sub_1005FB250()
{
  v1 = [v0 headerView];
  v8 = [v1 customIconContainerView];

  if (v8)
  {
    v2 = *&v0[OBJC_IVAR____TtC8AppStore39OnboardingLocationPrivacyViewController_iconView];
    [v2 sizeToFit];
    [v8 bounds];
    MidX = CGRectGetMidX(v10);
    [v2 frame];
    v4 = MidX - CGRectGetWidth(v11) * 0.5;
    [v8 bounds];
    MidY = CGRectGetMidY(v12);
    [v2 frame];
    v6 = MidY - CGRectGetHeight(v13) * 0.5;
    [v2 frame];
    Width = CGRectGetWidth(v14);
    [v2 frame];
    [v2 setFrame:{v4, v6, Width, CGRectGetHeight(v15)}];
  }
}

void sub_1005FB3C0(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  MidX = 0.0;
  if (Strong && (v3 = Strong, v4 = [Strong headerView], v3, v5 = objc_msgSend(v4, "customIconContainerView"), v4, v5))
  {
    [v5 bounds];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;

    v29.origin.x = v7;
    v29.origin.y = v9;
    v29.size.width = v11;
    v29.size.height = v13;
    MidX = CGRectGetMidX(v29);
    v14 = 0;
  }

  else
  {
    v14 = 1;
  }

  swift_beginAccess();
  v15 = swift_unknownObjectWeakLoadStrong();
  if (!v15)
  {
    if (v14)
    {
      return;
    }

    goto LABEL_12;
  }

  v16 = v15;
  v17 = *(v15 + OBJC_IVAR____TtC8AppStore39OnboardingLocationPrivacyViewController_iconView);

  [v17 frame];
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;

  v30.origin.x = v19;
  v30.origin.y = v21;
  v30.size.width = v23;
  v30.size.height = v25;
  if (MidX == CGRectGetMidX(v30))
  {
    v26 = v14;
  }

  else
  {
    v26 = 1;
  }

  if (v26 == 1)
  {
LABEL_12:
    swift_beginAccess();
    v27 = swift_unknownObjectWeakLoadStrong();
    if (v27)
    {
      v28 = v27;
      sub_1005FB250();
    }
  }
}

char *sub_1005FB7C4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v7 = type metadata accessor for Accessory(0);
  __chkstk_darwin(v7);
  v9 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = OBJC_IVAR____TtC8AppStore27ArcadeHeaderButtonContainer_stackView;
  *&v3[v10] = [objc_allocWithZone(sub_10002849C(&qword_1009711E0 &unk_1007B2710))];
  *&v3[OBJC_IVAR____TtC8AppStore27ArcadeHeaderButtonContainer_objectGraph] = a2;
  v11 = *(sub_10002849C(&unk_100984520, &qword_1007CC800) + 48);
  *v9 = 1;
  v12 = type metadata accessor for StoreTab();
  v13 = *(v12 - 8);
  v14 = *(v13 + 16);
  v40 = a1;
  v14(&v9[v11], a1, v12);
  (*(v13 + 56))(&v9[v11], 0, 1, v12);
  swift_storeEnumTagMultiPayload();

  sub_1000C4450(v15);
  v17 = v16;
  sub_1000C7C80(v9);
  *&v3[OBJC_IVAR____TtC8AppStore27ArcadeHeaderButtonContainer_accountButton] = v17;
  v18 = objc_opt_self();
  v19 = v17;
  v20 = [v18 whiteColor];
  [v19 setTintColor:v20];

  v21 = objc_allocWithZone(type metadata accessor for ArcadeSeeAllGamesButton(0));

  *&v3[OBJC_IVAR____TtC8AppStore27ArcadeHeaderButtonContainer_seeAllGamesButton] = sub_100746690(v22);
  v42.receiver = v3;
  v42.super_class = ObjectType;
  v23 = objc_msgSendSuper2(&v42, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v24 = type metadata accessor for Feature.iOS();
  v41[3] = v24;
  v41[4] = sub_1005C7530();
  v25 = sub_1000056E0(v41);
  (*(*(v24 - 8) + 104))(v25, enum case for Feature.iOS.arcade_see_all_games_uplift_navigation_bar_Future(_:), v24);
  v26 = v23;
  LOBYTE(v23) = isFeatureEnabled(_:)();
  sub_100007000(v41);
  if (v23)
  {
    [*&v26[OBJC_IVAR____TtC8AppStore27ArcadeHeaderButtonContainer_stackView] addSubview:*&v26[OBJC_IVAR____TtC8AppStore27ArcadeHeaderButtonContainer_seeAllGamesButton]];
  }

  v27 = OBJC_IVAR____TtC8AppStore27ArcadeHeaderButtonContainer_stackView;
  v28 = OBJC_IVAR____TtC8AppStore27ArcadeHeaderButtonContainer_accountButton;
  [*&v26[OBJC_IVAR____TtC8AppStore27ArcadeHeaderButtonContainer_stackView] addSubview:*&v26[OBJC_IVAR____TtC8AppStore27ArcadeHeaderButtonContainer_accountButton]];
  v29 = *&v26[v27];
  *&v29[qword_100978370] = 0;
  [v29 setNeedsLayout];
  v30 = *&v26[v27];
  *&v30[qword_100978378] = 3;
  [v30 setNeedsLayout];
  v31 = *&v26[v27];
  *&v31[qword_100978380] = 0x4034000000000000;
  [v31 setNeedsLayout];
  v32 = *&v26[v27];
  v33 = v26;
  [v33 addSubview:v32];
  [v33 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];

  sub_10002849C(&qword_10097B110, &unk_1007B27C0);
  v34 = swift_allocObject();
  v39 = xmmword_1007B10D0;
  *(v34 + 16) = xmmword_1007B10D0;
  *(v34 + 32) = type metadata accessor for UITraitPreferredContentSizeCategory();
  *(v34 + 40) = &protocol witness table for UITraitPreferredContentSizeCategory;
  UIView.registerForTraitChanges(_:action:)();
  swift_unknownObjectRelease();

  v35 = swift_allocObject();
  *(v35 + 16) = v39;
  *(v35 + 32) = type metadata accessor for UITraitHorizontalSizeClass();
  *(v35 + 40) = &protocol witness table for UITraitHorizontalSizeClass;
  UIView.registerForTraitChanges(_:action:)();
  swift_unknownObjectRelease();

  v36 = *&v26[v28];
  v37 = [v33 traitCollection];
  LOBYTE(v35) = UITraitCollection.isRegularPad.getter();

  [v36 setHidden:v35 & 1];

  (*(v13 + 8))(v40, v12);

  return v33;
}

id WebViewController.protocolDelegate.getter()
{
  v1 = OBJC_IVAR____TtC8AppStore17WebViewController_protocolDelegate;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void WebViewController.protocolDelegate.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8AppStore17WebViewController_protocolDelegate;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

id sub_1005FC01C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  type metadata accessor for URLProtocolDelegate();
  type metadata accessor for BaseObjectGraph();
  inject<A, B>(_:from:)();
  *&v2[OBJC_IVAR____TtC8AppStore17WebViewController_protocolDelegate] = v19;
  sub_100412FA8();
  inject<A, B>(_:from:)();
  v5 = v19;
  type metadata accessor for ASKBagContract();
  inject<A, B>(_:from:)();
  v6 = ASKBagContract.amsBag.getter();
  v7 = [v19 ams_activeiTunesAccount];
  v18.receiver = v3;
  v18.super_class = type metadata accessor for WebViewController();
  v8 = objc_msgSendSuper2(&v18, "initWithBag:account:clientInfo:", v6, v7, 0);
  swift_unknownObjectRelease();

  v9 = objc_opt_self();
  v10 = v8;
  v11 = [v9 tableViewAppearance];
  [v10 setAppearance:v11];

  [v10 setDelegate:v10];
  URL._bridgeToObjectiveC()(v12);
  v14 = v13;
  v15 = [v10 loadURL:v13];

  v16 = type metadata accessor for URL();
  (*(*(v16 - 8) + 8))(a1, v16);
  return v10;
}

id WebViewController.__allocating_init(bag:account:clientInfo:)(uint64_t a1, void *a2, void *a3)
{
  v6 = [objc_allocWithZone(v3) initWithBag:a1 account:a2 clientInfo:a3];
  swift_unknownObjectRelease();

  return v6;
}

void sub_1005FC40C(char a1, SEL *a2, SEL *a3)
{
  v8.receiver = v3;
  v8.super_class = type metadata accessor for WebViewController();
  objc_msgSendSuper2(&v8, *a2, a1 & 1);
  v7 = [objc_opt_self() sharedCoordinator];
  [v7 *a3];
}

void sub_1005FC4A0(void *a1, uint64_t a2, uint64_t a3, const char **a4, SEL *a5)
{
  v11.receiver = a1;
  v11.super_class = type metadata accessor for WebViewController();
  v8 = *a4;
  v9 = v11.receiver;
  objc_msgSendSuper2(&v11, v8, a3);
  v10 = [objc_opt_self() sharedCoordinator];
  [v10 *a5];
}

void WebViewController.webViewController(_:handle:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = OBJC_IVAR____TtC8AppStore17WebViewController_protocolDelegate;
  swift_beginAccess();
  v8 = *(v4 + v7);
  v9 = URLProtocolDelegate.performAuthentication(for:)();

  aBlock[4] = a3;
  aBlock[5] = a4;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1005FCAD8;
  aBlock[3] = &unk_1008CB9D0;
  v10 = _Block_copy(aBlock);

  [v9 addFinishBlock:v10];
  _Block_release(v10);
}

{
  v7 = OBJC_IVAR____TtC8AppStore17WebViewController_protocolDelegate;
  swift_beginAccess();
  v8 = *(v4 + v7);
  v9 = URLProtocolDelegate.presentDialog(for:)();

  aBlock[4] = a3;
  aBlock[5] = a4;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1005FCAD8;
  aBlock[3] = &unk_1008CB9F8;
  v10 = _Block_copy(aBlock);

  [v9 addFinishBlock:v10];
  _Block_release(v10);
}

void sub_1005FC78C(uint64_t a1, uint64_t a2, uint64_t a3, __n128 a4)
{
  if (a2)
  {
    v6 = _convertErrorToNSError(_:)();
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;
  (*(a3 + 16))(a3, a1);
}

id WebViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WebViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

double CondensedInAppPurchaseContentView.fetch(for:in:on:asPartOf:)(uint64_t a1, uint64_t a2)
{
  sub_10002C0AC(a1, v6);
  sub_10002849C(&unk_1009793D0, qword_1007B4FF0);
  type metadata accessor for InAppPurchaseSearchResult();
  if (swift_dynamicCast())
  {
    v5 = InAppPurchaseSearchResult.lockup.getter();

    sub_1001BCDCC(93.0, 93.0, v5, *(v2 + OBJC_IVAR____TtC8AppStore33CondensedInAppPurchaseContentView_inAppPurchaseView), a2);
  }

  return result;
}

uint64_t CondensedInAppPurchaseContentView.cancelArtworkFetches(on:asPartOf:deprioritizingFetches:)(uint64_t a1, uint64_t a2, Swift::Bool a3)
{
  v5.value.super.isa = 0;
  v5.is_nil = 0;
  ArtworkView.setImage(image:animated:)(v5, a3);
  v6.value.super.isa = 0;
  v6.is_nil = 0;
  ArtworkView.setImage(image:animated:)(v6, v3);
  type metadata accessor for ArtworkView();
  sub_100600C6C(&qword_100970E80, &type metadata accessor for ArtworkView, &protocol conformance descriptor for ArtworkView);
  ArtworkLoader.forgetFetch<A>(forView:deprioritizingFetch:)();
  return ArtworkLoader.forgetFetch<A>(forView:deprioritizingFetch:)();
}

void *CondensedInAppPurchaseContentView.applyData(from:asPartOf:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v93 = a2;
  v4 = type metadata accessor for InAppPurchaseIconLayout.Metrics();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v79 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for InAppPurchaseTheme();
  v96 = *(v8 - 8);
  __chkstk_darwin(v8);
  v94 = &v79 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v95 = &v79 - v11;
  v12 = sub_10002849C(&unk_100970E00, "ο\a");
  __chkstk_darwin(v12 - 8);
  v92 = &v79 - v13;
  v91 = type metadata accessor for OfferButtonSubtitlePosition();
  v86 = *(v91 - 1);
  __chkstk_darwin(v91);
  v87 = &v79 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_10002849C(&unk_1009701A0, &unk_1007B17F0);
  v89 = *(v15 - 8);
  v90 = v15;
  __chkstk_darwin(v15);
  v88 = &v79 - v16;
  v17 = sub_10002849C(&unk_100973230, &unk_1007B17E0);
  __chkstk_darwin(v17 - 8);
  v85 = &v79 - v18;
  v19 = sub_10002849C(&qword_100973AC8, &unk_1007C7EC0);
  __chkstk_darwin(v19 - 8);
  v84 = &v79 - v20;
  v21 = sub_10002849C(&unk_100973AD0, &unk_1007B17C0);
  __chkstk_darwin(v21 - 8);
  v23 = &v79 - v22;
  v24 = sub_10002849C(&unk_100970160, &unk_1007BDDE0);
  __chkstk_darwin(v24 - 8);
  v26 = &v79 - v25;
  v27 = sub_10002849C(&qword_100973AE0, &unk_1007B17D0);
  __chkstk_darwin(v27 - 8);
  v29 = &v79 - v28;
  type metadata accessor for InAppPurchaseSearchResult();
  sub_100600C6C(&qword_10098D9E8, &type metadata accessor for InAppPurchaseSearchResult, &protocol conformance descriptor for SearchResult);
  result = ItemLayoutContext.typedModel<A>(as:)();
  if (*&v97[0])
  {
    v80 = v8;
    v81 = v7;
    v82 = v5;
    v83 = v4;
    v31 = InAppPurchaseSearchResult.lockup.getter();

    v32 = InAppPurchaseLockup.isSubscription.getter();
    v33 = *&v2[OBJC_IVAR____TtC8AppStore33CondensedInAppPurchaseContentView_headerLabel];
    v34 = "onalLayout.swift";
    if (v32)
    {
      v34 = "ultType.Heading.InAppPurchase";
      v35 = 0xD00000000000003ALL;
    }

    else
    {
      v35 = 0xD00000000000002DLL;
    }

    v36 = v34 | 0x8000000000000000;
    v37._countAndFlagsBits = 0;
    v37._object = 0xE000000000000000;
    localizedString(_:comment:)(*&v35, v37);
    v38 = String._bridgeToObjectiveC()();

    [v33 setText:v38];

    v39 = *&v2[OBJC_IVAR____TtC8AppStore33CondensedInAppPurchaseContentView_titleLabel];

    Lockup.title.getter();
    if (v40)
    {
      v41 = String._bridgeToObjectiveC()();
    }

    else
    {
      v41 = 0;
    }

    [v39 setText:v41];

    v42 = *&v3[OBJC_IVAR____TtC8AppStore33CondensedInAppPurchaseContentView_subtitleLabel];
    InAppPurchaseLockup.descriptionText.getter();
    if (v43)
    {
      v44 = String._bridgeToObjectiveC()();
    }

    else
    {
      v44 = 0;
    }

    [v42 setText:v44];

    v45 = v3;
    sub_100621080();
    if (Lockup.offerDisplayProperties.getter())
    {
      v46 = enum case for OfferStyle.white(_:);
      v47 = type metadata accessor for OfferStyle();
      v48 = *(v47 - 8);
      (*(v48 + 104))(v29, v46, v47);
      (*(v48 + 56))(v29, 0, 1, v47);
      v45 = v3;
      v49 = type metadata accessor for OfferEnvironment();
      (*(*(v49 - 8) + 56))(v26, 1, 1, v49);
      v50 = type metadata accessor for OfferTint();
      (*(*(v50 - 8) + 56))(v23, 1, 1, v50);
      v51 = type metadata accessor for OfferLabelStyle();
      v52 = v84;
      (*(*(v51 - 8) + 56))(v84, 1, 1, v51);
      memset(v97, 0, 32);
      v53 = dispatch thunk of OfferDisplayProperties.newOfferDisplayPropertiesChanging(titles:titleSymbolNames:subtitles:style:environment:tint:isDeletableSystemApp:isFree:isPreorder:isRedownloadDisallowed:isOpenBundleAllowed:offerLabelStyle:hasDiscount:contentRating:offerToken:subscriptionFamilyId:overrideLocale:useAdsLocale:priceFormatted:isStreamlinedBuy:appCapabilities:)();

      sub_10002B894(v97, &unk_1009711D0, &unk_1007B1A10);
      sub_10002B894(v52, &qword_100973AC8, &unk_1007C7EC0);
      sub_10002B894(v23, &unk_100973AD0, &unk_1007B17C0);
      sub_10002B894(v26, &unk_100970160, &unk_1007BDDE0);
      sub_10002B894(v29, &qword_100973AE0, &unk_1007B17D0);
    }

    else
    {
      v53 = 0;
    }

    v84 = v53;
    v79 = v45;
    v54 = *&v45[OBJC_IVAR____TtC8AppStore33CondensedInAppPurchaseContentView_offerButton];
    v55 = Lockup.buttonAction.getter();

    v56 = sub_10002849C(&unk_100973240, qword_1007B2220);
    v57 = v85;
    (*(*(v56 - 8) + 56))(v85, 1, 1, v56);
    v58 = v86;
    v59 = v91;
    (*(v86 + 104))(v87, enum case for OfferButtonSubtitlePosition.right(_:), v91);
    (*(v58 + 56))(v92, 1, 1, v59);
    sub_100600C6C(&qword_100987130, &type metadata accessor for OfferButtonSubtitlePosition, &protocol conformance descriptor for OfferButtonSubtitlePosition);
    v60 = v88;
    AccessibilityConditional.init(value:axValue:)();
    sub_10064AFA4(v53, v55, 0, v57, v60, v93, 0, 0);

    (*(v89 + 8))(v60, v90);
    sub_10002B894(v57, &unk_100973230, &unk_1007B17E0);
    [v54 setHidden:0];
    type metadata accessor for ArtworkLoader();
    type metadata accessor for BaseObjectGraph();
    inject<A, B>(_:from:)();
    v61 = *&v45[OBJC_IVAR____TtC8AppStore33CondensedInAppPurchaseContentView_inAppPurchaseView];
    v62 = *&v97[0];
    v98.value.super.isa = 0;
    v98.is_nil = 0;
    ArtworkView.setImage(image:animated:)(v98, v63);
    v99.value.super.isa = 0;
    v99.is_nil = 0;
    ArtworkView.setImage(image:animated:)(v99, v64);
    type metadata accessor for ArtworkView();
    sub_100600C6C(&qword_100970E80, &type metadata accessor for ArtworkView, &protocol conformance descriptor for ArtworkView);
    ArtworkLoader.forgetFetch<A>(forView:deprioritizingFetch:)();
    v93 = v62;
    ArtworkLoader.forgetFetch<A>(forView:deprioritizingFetch:)();
    if (qword_10096EB80 != -1)
    {
      swift_once();
    }

    v92 = qword_1009D3010;
    v65 = v95;
    InAppPurchaseLockup.theme.getter();
    v66 = OBJC_IVAR____TtC8AppStore17InAppPurchaseView_theme;
    swift_beginAccess();
    v67 = v96;
    v68 = v80;
    (*(v96 + 24))(&v61[v66], v65, v80);
    swift_endAccess();
    v91 = *(v67 + 16);
    v69 = v94;
    (v91)(v94, &v61[v66], v68);
    sub_1002EBEE4(v69);
    v70 = *(v67 + 8);
    v70(v69, v68);
    v70(v65, v68);
    [v61 setBackgroundColor:v92];
    sub_1001BCDCC(93.0, 93.0, v31, v61, v93);
    (v91)(v65, &v61[v66], v68);
    sub_1002EBEE4(v65);
    v70(v65, v68);
    [v61 setNeedsLayout];
    [v61 setHidden:0];
    v71 = v82;
    v72 = &v61[OBJC_IVAR____TtC8AppStore17InAppPurchaseView_metrics];
    v73 = v81;
    v74 = v83;
    (*(v82 + 16))(v81, v72, v83);
    InAppPurchaseIconLayout.Metrics.tileOffset.getter();
    v76 = v75;
    InAppPurchaseIconLayout.Metrics.tileBorderWidth.getter();
    v78 = v79;
    *&v79[OBJC_IVAR____TtC8AppStore33CondensedInAppPurchaseContentView_tileOffset] = v76 + v77;
    [v78 setNeedsLayout];

    return (*(v71 + 8))(v73, v74);
  }

  return result;
}

double static CondensedInAppPurchaseContentView.prefetchArtwork(for:with:asPartOf:)()
{
  type metadata accessor for InAppPurchaseSearchResult();
  sub_100600C6C(&qword_10098D9E8, &type metadata accessor for InAppPurchaseSearchResult, &protocol conformance descriptor for SearchResult);
  ItemLayoutContext.typedModel<A>(as:)();
  if (v2)
  {
    InAppPurchaseSearchResult.lockup.getter();
    v1 = sub_1001BD3AC(93.0, 93.0);

    ArtworkLoader.prefetchArtwork(using:)(v1);
  }

  return result;
}

double sub_1005FDA98(uint64_t a1, uint64_t a2, objc_class *a3, double a4, double a5)
{
  v136.super.isa = a3;
  v151 = a1;
  v135 = type metadata accessor for VerticalFlowLayout.HorizontalPlacement();
  v155 = *(v135 - 8);
  __chkstk_darwin(v135);
  v121 = &v109 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v120 = type metadata accessor for VerticalFlowLayout.ExclusionCondition();
  v154 = *(v120 - 8);
  __chkstk_darwin(v120);
  v119 = &v109 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v134 = type metadata accessor for VerticalFlowLayout.VerticalPlacement();
  v153 = *(v134 - 8);
  __chkstk_darwin(v134);
  v118 = &v109 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for VerticalFlowLayout();
  v123 = *(v9 - 8);
  v124 = v9;
  __chkstk_darwin(v9);
  v122 = &v109 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for OfferButtonMetrics();
  v129 = *(v11 - 8);
  v130 = v11;
  __chkstk_darwin(v11);
  v137 = (&v109 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v13);
  v128 = &v109 - v14;
  v150 = type metadata accessor for LabelPlaceholderCompatibility();
  v152 = *(v150 - 8);
  __chkstk_darwin(v150);
  v143 = (&v109 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = type metadata accessor for FontSource();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v109 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for InAppPurchaseIconLayout.Metrics();
  v21 = *(v20 - 8);
  __chkstk_darwin(v20);
  v23 = &v109 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  InAppPurchaseIconLayout.Metrics.init(mainIconDimension:shouldPlaceTileAtOrigin:scaleToFit:)();
  InAppPurchaseIconLayout.Metrics.overallSize.getter();
  (*(v21 + 8))(v23, v20);
  v133 = type metadata accessor for LayoutViewPlaceholder();
  swift_allocObject();
  v127 = LayoutViewPlaceholder.init(representing:)();
  v156 = a2;
  CondensedSearchInAppPurchaseCardLayout.Metrics.headerFont.getter();
  LODWORD(v149) = enum case for FontSource.useCase(_:);
  v24 = *(v17 + 104);
  v147 = v17 + 104;
  v148 = v24;
  v139 = v16;
  v24(v19);
  isa = v136.super.isa;
  v26.super.isa = FontSource.font(compatibleWith:)(v136).super.isa;
  v27 = *(v17 + 8);
  v145 = v17 + 8;
  v146 = v27;
  v27(v19, v16);
  v28 = InAppPurchaseLockup.isSubscription.getter();
  v29 = "onalLayout.swift";
  if (v28)
  {
    v29 = "ultType.Heading.InAppPurchase";
    v30 = 0xD00000000000003ALL;
  }

  else
  {
    v30 = 0xD00000000000002DLL;
  }

  v31 = v29 | 0x8000000000000000;
  v32._countAndFlagsBits = 0;
  v32._object = 0xE000000000000000;
  object = localizedString(_:comment:)(*&v30, v32)._object;
  v33 = v26.super.isa;
  CondensedSearchInAppPurchaseCardLayout.Metrics.headerNumberOfLines.getter();
  v34 = type metadata accessor for Feature();
  v174 = v34;
  v144 = sub_100600C6C(&qword_100972E50, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
  v175 = v144;
  v35 = sub_1000056E0(v173);
  LODWORD(v141) = enum case for Feature.measurement_with_labelplaceholder(_:);
  v36 = *(v34 - 8);
  v140 = *(v36 + 104);
  v142 = (v36 + 104);
  v140(v35);
  isFeatureEnabled(_:)();
  sub_100007000(v173);
  v37 = v143;
  v117 = v33;
  LabelPlaceholderCompatibility.init(text:font:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:shouldUseLabelPlaceholder:)();
  LabelPlaceholderCompatibility.layoutTextView.getter();
  object = *(v152 + 8);
  v152 += 8;
  v38 = v37;
  v39 = v150;
  (object)(v38, v150);
  CondensedSearchInAppPurchaseCardLayout.Metrics.titleFont.getter();
  v40 = v139;
  v148(v19, v149, v139);
  v41 = FontSource.font(compatibleWith:)(isa).super.isa;
  v146(v19, v40);
  Lockup.title.getter();
  v42 = v41;
  CondensedSearchInAppPurchaseCardLayout.Metrics.titleNumberOfLines.getter();
  v171 = v34;
  v172 = v144;
  v43 = sub_1000056E0(v170);
  (v140)(v43, v141, v34);
  isFeatureEnabled(_:)();
  sub_100007000(v170);
  v44 = v143;
  v116 = v42;
  LabelPlaceholderCompatibility.init(text:font:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:shouldUseLabelPlaceholder:)();
  LabelPlaceholderCompatibility.layoutTextView.getter();
  (object)(v44, v39);
  CondensedSearchInAppPurchaseCardLayout.Metrics.subtitleFont.getter();
  v45 = v139;
  v148(v19, v149, v139);
  v46 = v136.super.isa;
  v47 = FontSource.font(compatibleWith:)(v136).super.isa;
  v146(v19, v45);
  InAppPurchaseLockup.descriptionText.getter();
  v48 = v47;
  CondensedSearchInAppPurchaseCardLayout.Metrics.subtitleNumberOfLines(for:)(v46);
  v168 = v34;
  v169 = v144;
  v49 = sub_1000056E0(v167);
  (v140)(v49, v141, v34);
  isFeatureEnabled(_:)();
  sub_100007000(v167);
  v115 = v48;
  LabelPlaceholderCompatibility.init(text:font:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:shouldUseLabelPlaceholder:)();
  LabelPlaceholderCompatibility.layoutTextView.getter();
  (object)(v44, v150);
  if (UITraitCollection.prefersAccessibilityLayouts.getter())
  {
    if (qword_10096ECB8 != -1)
    {
      swift_once();
    }

    v50 = qword_100991010;
  }

  else
  {
    if (qword_10096ECC0 != -1)
    {
      swift_once();
    }

    v50 = qword_100991028;
  }

  v51 = v130;
  v52 = sub_1000056A8(v130, v50);
  v53 = v129;
  v54 = v137;
  (*(v129 + 16))(v137, v52, v51);
  (*(v53 + 32))(v128, v54, v51);
  OfferButtonMetrics.minimumSize.getter();
  OfferButtonMetrics.estimatedHeight.getter();
  v55 = v133;
  swift_allocObject();
  v56 = LayoutViewPlaceholder.init(representing:)();
  v166[4] = &protocol witness table for LayoutViewPlaceholder;
  v166[3] = v55;
  v166[0] = v127;
  v165[4] = &protocol witness table for LayoutViewPlaceholder;
  v165[3] = v55;
  v165[0] = v56;
  v114 = v56;
  sub_10002849C(&qword_10096FC30, &unk_1007B10E0);
  v57 = *(type metadata accessor for VerticalFlowLayout.Child() - 8);
  v126 = *(v57 + 72);
  v58 = (*(v57 + 80) + 32) & ~*(v57 + 80);
  v112 = 4 * v126;
  v59 = swift_allocObject();
  v113 = v59;
  *(v59 + 16) = xmmword_1007B5360;
  v60 = v59 + v58;

  CondensedSearchInAppPurchaseCardLayout.Metrics.cardInsets.getter();
  v163 = &type metadata for CGFloat;
  v164 = &protocol witness table for CGFloat;
  v162[0] = v61;
  CondensedSearchInAppPurchaseCardLayout.Metrics.artworkAXBottomMargin.getter();
  v111 = enum case for VerticalFlowLayout.VerticalPlacement.top(_:);
  v62 = v153;
  v63 = *(v153 + 104);
  v133 = v153 + 104;
  v137 = v63;
  v64 = v118;
  v63();
  v65 = sub_10002849C(&unk_10098D820, &unk_1007D7290);
  v66 = *(v154 + 72);
  object = *(v154 + 80);
  v139 = v65;
  v67 = v154;
  v131 = (object + 32) & ~object;
  v151 = 2 * v66;
  v152 = 3 * v66;
  v150 = v66;
  v68 = swift_allocObject();
  v149 = xmmword_1007B1E00;
  *(v68 + 16) = xmmword_1007B1E00;
  static VerticalFlowLayout.ExclusionCondition.isHidden.getter();
  static VerticalFlowLayout.ExclusionCondition.hasNoHeight.getter();
  static VerticalFlowLayout.ExclusionCondition.hasNoContent.getter();
  *&v158 = v68;
  v147 = sub_100600C6C(&qword_10096FC38, &type metadata accessor for VerticalFlowLayout.ExclusionCondition, &protocol conformance descriptor for VerticalFlowLayout.ExclusionCondition);
  v146 = sub_10002849C(&unk_10098D830, &unk_1007B10F0);
  v148 = sub_1000364CC();
  v70 = v119;
  v69 = v120;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  LODWORD(v145) = enum case for VerticalFlowLayout.HorizontalPlacement.leading(_:);
  v71 = v155;
  v143 = *(v155 + 104);
  v144 = v155 + 104;
  v72 = v121;
  v73 = v135;
  v143(v121);
  v132 = v60;
  static VerticalFlowLayout.Child.make(forView:topSpace:bottomSpace:verticalPlacement:horizontalPlacement:excludeWhen:)();
  v74 = *(v71 + 8);
  v155 = v71 + 8;
  v142 = v74;
  v74(v72, v73);
  v75 = *(v67 + 8);
  v154 = v67 + 8;
  v141 = v75;
  v75(v70, v69);
  v76 = *(v62 + 8);
  v153 = v62 + 8;
  v140 = v76;
  (v76)(v64, v134);
  sub_10002B894(v161, &qword_1009799E0, qword_1007B5950);
  sub_100007000(v162);
  v77 = v174;
  v78 = v175;
  v79 = sub_10002A400(v173, v174);
  v163 = v77;
  v164 = *(v78 + 8);
  v80 = sub_1000056E0(v162);
  (*(*(v77 - 8) + 16))(v80, v79, v77);
  CondensedSearchInAppPurchaseCardLayout.Metrics.headerTextSpace.getter();
  v160 = 0;
  v158 = 0u;
  v159 = 0u;
  v125 = enum case for VerticalFlowLayout.VerticalPlacement.firstBaseline(_:);
  (v137)(v64);
  v81 = swift_allocObject();
  *(v81 + 16) = v149;
  static VerticalFlowLayout.ExclusionCondition.isHidden.getter();
  static VerticalFlowLayout.ExclusionCondition.hasNoHeight.getter();
  static VerticalFlowLayout.ExclusionCondition.hasNoContent.getter();
  v157 = v81;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v82 = v135;
  (v143)(v72, v145, v135);
  v83 = v126;
  static VerticalFlowLayout.Child.make(forView:topSpace:bottomSpace:verticalPlacement:horizontalPlacement:excludeWhen:)();
  v84 = v82;
  v142(v72, v82);
  v141(v70, v69);
  v85 = v134;
  (v140)(v64, v134);
  sub_10002B894(&v158, &qword_1009799E0, qword_1007B5950);
  sub_100007000(v161);
  sub_100007000(v162);
  v110 = 2 * v83;
  v86 = v171;
  v87 = v172;
  v88 = sub_10002A400(v170, v171);
  v163 = v86;
  v164 = *(v87 + 8);
  v89 = sub_1000056E0(v162);
  (*(*(v86 - 8) + 16))(v89, v88, v86);
  CondensedSearchInAppPurchaseCardLayout.Metrics.titleTextSpace.getter();
  v160 = 0;
  v158 = 0u;
  v159 = 0u;
  (v137)(v64, v125, v85);
  v90 = swift_allocObject();
  *(v90 + 16) = v149;
  static VerticalFlowLayout.ExclusionCondition.isHidden.getter();
  static VerticalFlowLayout.ExclusionCondition.hasNoHeight.getter();
  static VerticalFlowLayout.ExclusionCondition.hasNoContent.getter();
  v157 = v90;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (v143)(v72, v145, v84);
  v91 = v110;
  static VerticalFlowLayout.Child.make(forView:topSpace:bottomSpace:verticalPlacement:horizontalPlacement:excludeWhen:)();
  v142(v72, v84);
  v141(v70, v69);
  v92 = v85;
  (v140)(v64, v85);
  sub_10002B894(&v158, &qword_1009799E0, qword_1007B5950);
  sub_100007000(v161);
  sub_100007000(v162);
  v126 += v91;
  v93 = v168;
  v94 = v169;
  v95 = sub_10002A400(v167, v168);
  v163 = v93;
  v164 = *(v94 + 8);
  v96 = sub_1000056E0(v162);
  (*(*(v93 - 8) + 16))(v96, v95, v93);
  CondensedSearchInAppPurchaseCardLayout.Metrics.subtitleTextSpace.getter();
  v160 = 0;
  v158 = 0u;
  v159 = 0u;
  (v137)(v64, v125, v85);
  v97 = swift_allocObject();
  *(v97 + 16) = v149;
  static VerticalFlowLayout.ExclusionCondition.isHidden.getter();
  static VerticalFlowLayout.ExclusionCondition.hasNoHeight.getter();
  static VerticalFlowLayout.ExclusionCondition.hasNoContent.getter();
  v157 = v97;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v98 = v135;
  (v143)(v72, v145, v135);
  static VerticalFlowLayout.Child.make(forView:topSpace:bottomSpace:verticalPlacement:horizontalPlacement:excludeWhen:)();
  v142(v72, v98);
  v141(v70, v69);
  (v140)(v64, v92);
  sub_10002B894(&v158, &qword_1009799E0, qword_1007B5950);
  sub_100007000(v161);
  sub_100007000(v162);
  CondensedSearchInAppPurchaseCardLayout.Metrics.artworkAXBottomMargin.getter();
  memset(v161, 0, sizeof(v161));
  (v137)(v64, v111, v92);
  v99 = swift_allocObject();
  *(v99 + 16) = v149;
  static VerticalFlowLayout.ExclusionCondition.isHidden.getter();
  static VerticalFlowLayout.ExclusionCondition.hasNoHeight.getter();
  static VerticalFlowLayout.ExclusionCondition.hasNoContent.getter();
  *&v158 = v99;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (v143)(v72, v145, v98);
  static VerticalFlowLayout.Child.make(forView:topSpace:bottomSpace:verticalPlacement:horizontalPlacement:excludeWhen:)();
  v142(v72, v98);
  v141(v70, v69);
  (v140)(v64, v92);
  sub_10002B894(v161, &qword_1009799E0, qword_1007B5950);
  sub_100007000(v162);
  v100 = v122;
  VerticalFlowLayout.init(expandChildrenToFit:children:)();
  sub_100007000(v165);
  sub_100007000(v166);
  type metadata accessor for TraitEnvironmentPlaceholder();
  sub_10002849C(&qword_100973210, qword_1007B0BB0);
  v101 = swift_allocObject();
  *(v101 + 16) = xmmword_1007B0B70;
  v102 = v136.super.isa;
  *(v101 + 32) = v136;
  v103 = v102;
  v104 = TraitEnvironmentPlaceholder.__allocating_init(_:)();
  v105 = v124;
  dispatch thunk of Measurable.measurements(fitting:in:)();
  v107 = v106;

  (*(v123 + 8))(v100, v105);
  (*(v129 + 8))(v128, v130);
  sub_100007000(v167);
  sub_100007000(v170);
  sub_100007000(v173);
  return v107;
}

double sub_1005FEFC0(uint64_t a1, uint64_t a2, objc_class *a3, __n128 a4, double a5)
{
  v170.super.isa = a3;
  v174 = a1;
  v146 = type metadata accessor for FlankedHorizontalLayout.ViewAlignment();
  v144 = *(v146 - 8);
  __chkstk_darwin(v146);
  v145 = &v126 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v142 = &v126 - v9;
  v143 = type metadata accessor for VerticalFlowLayout();
  v141 = *(v143 - 8);
  __chkstk_darwin(v143);
  v158 = &v126 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v179 = type metadata accessor for VerticalFlowLayout.HorizontalPlacement();
  v181 = *(v179 - 8);
  __chkstk_darwin(v179);
  v136 = &v126 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v135 = type metadata accessor for VerticalFlowLayout.ExclusionCondition();
  v182 = *(v135 - 8);
  __chkstk_darwin(v135);
  v134 = &v126 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v176 = type metadata accessor for VerticalFlowLayout.VerticalPlacement();
  v180 = *(v176 - 8);
  __chkstk_darwin(v176);
  v133 = &v126 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for FlankedHorizontalLayout();
  v139 = *(v14 - 8);
  v140 = v14;
  __chkstk_darwin(v14);
  v138 = &v126 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for OfferButtonMetrics();
  v156 = *(v16 - 8);
  v157 = v16;
  __chkstk_darwin(v16);
  v161 = &v126 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v155 = &v126 - v19;
  v175 = type metadata accessor for LabelPlaceholderCompatibility();
  *&v178 = *(v175 - 8);
  __chkstk_darwin(v175);
  v21 = &v126 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for FontSource();
  v23 = *(v22 - 8);
  __chkstk_darwin(v22);
  v25 = &v126 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for InAppPurchaseIconLayout.Metrics();
  v27 = *(v26 - 8);
  __chkstk_darwin(v26);
  v29 = &v126 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  InAppPurchaseIconLayout.Metrics.init(mainIconDimension:shouldPlaceTileAtOrigin:scaleToFit:)();
  InAppPurchaseIconLayout.Metrics.overallSize.getter();
  (*(v27 + 8))(v29, v26);
  v153 = type metadata accessor for LayoutViewPlaceholder();
  swift_allocObject();
  v154 = LayoutViewPlaceholder.init(representing:)();
  CondensedSearchInAppPurchaseCardLayout.Metrics.headerFont.getter();
  LODWORD(v173) = enum case for FontSource.useCase(_:);
  v30 = *(v23 + 104);
  v171 = v23 + 104;
  *&v172 = v30;
  v162 = v22;
  v30(v25);
  v31.super.isa = FontSource.font(compatibleWith:)(a3).super.isa;
  v32 = *(v23 + 8);
  v168 = v23 + 8;
  v169 = v32;
  v32(v25, v22);
  v33 = InAppPurchaseLockup.isSubscription.getter();
  v34 = "onalLayout.swift";
  if (v33)
  {
    v34 = "ultType.Heading.InAppPurchase";
    v35 = 0xD00000000000003ALL;
  }

  else
  {
    v35 = 0xD00000000000002DLL;
  }

  v36 = v34 | 0x8000000000000000;
  v37._countAndFlagsBits = 0;
  v37._object = 0xE000000000000000;
  countAndFlagsBits = localizedString(_:comment:)(*&v35, v37)._countAndFlagsBits;
  v38 = v31.super.isa;
  CondensedSearchInAppPurchaseCardLayout.Metrics.headerNumberOfLines.getter();
  v39 = type metadata accessor for Feature();
  v207 = v39;
  v167 = sub_100600C6C(&qword_100972E50, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
  v208 = v167;
  v40 = sub_1000056E0(v206);
  LODWORD(v165) = enum case for Feature.measurement_with_labelplaceholder(_:);
  v41 = *(v39 - 8);
  v164 = *(v41 + 104);
  v166 = v41 + 104;
  v164(v40);
  isFeatureEnabled(_:)();
  sub_100007000(v206);
  v160 = v21;
  v137 = v38;
  LabelPlaceholderCompatibility.init(text:font:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:shouldUseLabelPlaceholder:)();
  LabelPlaceholderCompatibility.layoutTextView.getter();
  v42 = *(v178 + 8);
  *&v178 = v178 + 8;
  countAndFlagsBits = v42;
  v43 = v21;
  v44 = v175;
  v42(v43, v175);
  v177 = a2;
  CondensedSearchInAppPurchaseCardLayout.Metrics.titleFont.getter();
  v45 = v162;
  (v172)(v25, v173, v162);
  isa = FontSource.font(compatibleWith:)(v170).super.isa;
  v169(v25, v45);
  Lockup.title.getter();
  v47 = isa;
  CondensedSearchInAppPurchaseCardLayout.Metrics.titleNumberOfLines.getter();
  v204 = v39;
  v205 = v167;
  v48 = sub_1000056E0(v203);
  (v164)(v48, v165, v39);
  isFeatureEnabled(_:)();
  sub_100007000(v203);
  v49 = v160;
  v132 = v47;
  LabelPlaceholderCompatibility.init(text:font:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:shouldUseLabelPlaceholder:)();
  LabelPlaceholderCompatibility.layoutTextView.getter();
  countAndFlagsBits(v49, v44);
  CondensedSearchInAppPurchaseCardLayout.Metrics.subtitleFont.getter();
  v50 = v162;
  (v172)(v25, v173, v162);
  v51 = v170.super.isa;
  v52 = FontSource.font(compatibleWith:)(v170).super.isa;
  v169(v25, v50);
  InAppPurchaseLockup.descriptionText.getter();
  v53 = v52;
  CondensedSearchInAppPurchaseCardLayout.Metrics.subtitleNumberOfLines(for:)(v51);
  v201 = v39;
  v202 = v167;
  v54 = sub_1000056E0(v200);
  (v164)(v54, v165, v39);
  isFeatureEnabled(_:)();
  sub_100007000(v200);
  v131 = v53;
  LabelPlaceholderCompatibility.init(text:font:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:shouldUseLabelPlaceholder:)();
  LabelPlaceholderCompatibility.layoutTextView.getter();
  countAndFlagsBits(v49, v175);
  if (UITraitCollection.prefersAccessibilityLayouts.getter())
  {
    if (qword_10096ECB8 != -1)
    {
      swift_once();
    }

    v55 = qword_100991010;
  }

  else
  {
    if (qword_10096ECC0 != -1)
    {
      swift_once();
    }

    v55 = qword_100991028;
  }

  v56 = v157;
  v57 = sub_1000056A8(v157, v55);
  v58 = v156;
  v59 = v161;
  (*(v156 + 16))(v161, v57, v56);
  (*(v58 + 32))(v155, v59, v56);
  OfferButtonMetrics.minimumSize.getter();
  OfferButtonMetrics.estimatedHeight.getter();
  v60 = v153;
  swift_allocObject();
  v130 = LayoutViewPlaceholder.init(representing:)();
  v199[5] = v154;
  v199[4] = &protocol witness table for LayoutViewPlaceholder;
  v199[3] = v60;
  v199[0] = v130;

  CondensedSearchInAppPurchaseCardLayout.Metrics.textTopMargin.getter();
  sub_10002A400(v196, v197);
  AnyDimension.value(with:)();
  CondensedSearchInAppPurchaseCardLayout.Metrics.cardInsets.getter();
  v151 = type metadata accessor for TraitEnvironmentPlaceholder();
  v152 = sub_10002849C(&qword_100973210, qword_1007B0BB0);
  v61 = swift_allocObject();
  v178 = xmmword_1007B0B70;
  *(v61 + 16) = xmmword_1007B0B70;
  *(v61 + 32) = v51;
  v129 = v51;
  v62 = TraitEnvironmentPlaceholder.__allocating_init(_:)();
  CGFloat.rawValue(in:)();

  sub_100007000(v196);
  sub_10002849C(&qword_10096FC30, &unk_1007B10E0);
  v63 = *(type metadata accessor for VerticalFlowLayout.Child() - 8);
  v149 = *(v63 + 72);
  v64 = (*(v63 + 80) + 32) & ~*(v63 + 80);
  v65 = swift_allocObject();
  v128 = v65;
  *(v65 + 16) = xmmword_1007B5350;
  v164 = (v65 + v64);
  sub_10002A400(v206, v207);
  LayoutView.withLayoutMargins(_:)();
  CondensedSearchInAppPurchaseCardLayout.Metrics.headerTextSpace.getter();
  v192 = 0;
  v191 = 0u;
  v190 = 0u;
  LODWORD(v150) = enum case for VerticalFlowLayout.VerticalPlacement.firstBaseline(_:);
  v66 = v180;
  v67 = *(v180 + 104);
  v148 = v180 + 104;
  v159 = v67;
  v68 = v133;
  v67(v133);
  v69 = sub_10002849C(&unk_10098D820, &unk_1007D7290);
  v70 = *(v182 + 72);
  v160 = *(v182 + 80);
  v161 = v69;
  v147 = (v160 + 32) & ~v160;
  v174 = 2 * v70;
  v175 = 3 * v70;
  v173 = v70;
  v71 = swift_allocObject();
  v172 = xmmword_1007B1E00;
  *(v71 + 16) = xmmword_1007B1E00;
  static VerticalFlowLayout.ExclusionCondition.isHidden.getter();
  static VerticalFlowLayout.ExclusionCondition.hasNoHeight.getter();
  static VerticalFlowLayout.ExclusionCondition.hasNoContent.getter();
  v187 = v71;
  v170.super.isa = sub_100600C6C(&qword_10096FC38, &type metadata accessor for VerticalFlowLayout.ExclusionCondition, &protocol conformance descriptor for VerticalFlowLayout.ExclusionCondition);
  v169 = sub_10002849C(&unk_10098D830, &unk_1007B10F0);
  v171 = sub_1000364CC();
  v72 = v134;
  v73 = v135;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  LODWORD(v168) = enum case for VerticalFlowLayout.HorizontalPlacement.leading(_:);
  v74 = v181;
  v75 = *(v181 + 104);
  v166 = v181 + 104;
  v167 = v75;
  v76 = v136;
  v77 = v179;
  v75(v136);
  static VerticalFlowLayout.Child.make(forView:topSpace:bottomSpace:verticalPlacement:horizontalPlacement:excludeWhen:)();
  v78 = *(v74 + 8);
  v181 = v74 + 8;
  v165 = v78;
  v78(v76, v77);
  v79 = *(v182 + 8);
  v182 += 8;
  countAndFlagsBits = v79;
  v79(v72, v73);
  v80 = *(v66 + 8);
  v180 = v66 + 8;
  v162 = v80;
  v81 = v176;
  v80(v68, v176);
  sub_10002B894(&v190, &qword_1009799E0, qword_1007B5950);
  sub_100007000(v193);
  sub_100007000(v196);
  v82 = v204;
  v83 = v205;
  v84 = sub_10002A400(v203, v204);
  v197 = v82;
  v198 = v83[1];
  v85 = sub_1000056E0(v196);
  (*(*(v82 - 8) + 16))(v85, v84, v82);
  CondensedSearchInAppPurchaseCardLayout.Metrics.titleTextSpace.getter();
  v192 = 0;
  v191 = 0u;
  v190 = 0u;
  v159(v68, v150, v81);
  v86 = swift_allocObject();
  *(v86 + 16) = v172;
  static VerticalFlowLayout.ExclusionCondition.isHidden.getter();
  static VerticalFlowLayout.ExclusionCondition.hasNoHeight.getter();
  static VerticalFlowLayout.ExclusionCondition.hasNoContent.getter();
  v187 = v86;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v87 = v179;
  v167(v76, v168, v179);
  v88 = v149;
  static VerticalFlowLayout.Child.make(forView:topSpace:bottomSpace:verticalPlacement:horizontalPlacement:excludeWhen:)();
  v165(v76, v87);
  countAndFlagsBits(v72, v73);
  v89 = v68;
  v162(v68, v81);
  sub_10002B894(&v190, &qword_1009799E0, qword_1007B5950);
  sub_100007000(v193);
  sub_100007000(v196);
  v127 = 2 * v88;
  v90 = v201;
  v91 = v202;
  v92 = sub_10002A400(v200, v201);
  v197 = v90;
  v198 = v91[1];
  v93 = sub_1000056E0(v196);
  (*(*(v90 - 8) + 16))(v93, v92, v90);
  CondensedSearchInAppPurchaseCardLayout.Metrics.subtitleTextSpace.getter();
  v192 = 0;
  v191 = 0u;
  v190 = 0u;
  v159(v68, v150, v81);
  v94 = swift_allocObject();
  *(v94 + 16) = v172;
  static VerticalFlowLayout.ExclusionCondition.isHidden.getter();
  static VerticalFlowLayout.ExclusionCondition.hasNoHeight.getter();
  static VerticalFlowLayout.ExclusionCondition.hasNoContent.getter();
  v187 = v94;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v95 = v179;
  v167(v76, v168, v179);
  v96 = v127;
  static VerticalFlowLayout.Child.make(forView:topSpace:bottomSpace:verticalPlacement:horizontalPlacement:excludeWhen:)();
  v165(v76, v95);
  countAndFlagsBits(v72, v73);
  v97 = v176;
  v162(v89, v176);
  sub_10002B894(&v190, &qword_1009799E0, qword_1007B5950);
  sub_100007000(v193);
  sub_100007000(v196);
  v150 = v96 + v149;
  CondensedSearchInAppPurchaseCardLayout.Metrics.offerButtonTopMargin.getter();
  CondensedSearchInAppPurchaseCardLayout.Metrics.cardInsets.getter();
  v194 = &type metadata for CGFloat;
  v195 = &protocol witness table for CGFloat;
  v193[0] = v98;
  v159(v89, enum case for VerticalFlowLayout.VerticalPlacement.top(_:), v97);
  v99 = swift_allocObject();
  *(v99 + 16) = v172;
  static VerticalFlowLayout.ExclusionCondition.isHidden.getter();
  static VerticalFlowLayout.ExclusionCondition.hasNoHeight.getter();
  static VerticalFlowLayout.ExclusionCondition.hasNoContent.getter();
  *&v190 = v99;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v100 = v179;
  v167(v76, v168, v179);
  static VerticalFlowLayout.Child.make(forView:topSpace:bottomSpace:verticalPlacement:horizontalPlacement:excludeWhen:)();
  v165(v76, v100);
  countAndFlagsBits(v72, v73);
  v162(v89, v97);
  sub_100007000(v196);
  sub_10002B894(v193, &qword_1009799E0, qword_1007B5950);
  v101 = v158;
  VerticalFlowLayout.init(expandChildrenToFit:children:)();
  CondensedSearchInAppPurchaseCardLayout.Metrics.cardInsets.getter();
  v102 = swift_allocObject();
  *(v102 + 16) = v178;
  v103 = v129;
  *(v102 + 32) = v129;
  v104 = v103;
  v105 = TraitEnvironmentPlaceholder.__allocating_init(_:)();
  CGFloat.rawValue(in:)();

  CondensedSearchInAppPurchaseCardLayout.Metrics.cardInsets.getter();
  v106 = swift_allocObject();
  *(v106 + 16) = v178;
  *(v106 + 32) = v104;
  v107 = v104;
  v108 = TraitEnvironmentPlaceholder.__allocating_init(_:)();
  CGFloat.rawValue(in:)();

  CondensedSearchInAppPurchaseCardLayout.Metrics.cardInsets.getter();
  v109 = swift_allocObject();
  *(v109 + 16) = v178;
  *(v109 + 32) = v107;
  v110 = v107;
  v111 = TraitEnvironmentPlaceholder.__allocating_init(_:)();
  CGFloat.rawValue(in:)();

  CondensedSearchInAppPurchaseCardLayout.Metrics.artworkTrailingMargin.getter();
  sub_10002A400(v196, v197);
  AnyDimension.value(with:)();
  sub_100007000(v196);
  LayoutView.withLayoutMargins(_:)();
  v112 = v143;
  v194 = v143;
  v195 = &protocol witness table for VerticalFlowLayout;
  v113 = sub_1000056E0(v193);
  v114 = v141;
  (*(v141 + 16))(v113, v101, v112);
  sub_10002C0AC(v196, &v190);
  v189 = &protocol witness table for Double;
  v188 = &type metadata for Double;
  v187 = 0;
  v186 = 0;
  v184 = 0u;
  v185 = 0u;
  v115 = enum case for FlankedHorizontalLayout.ViewAlignment.center(_:);
  v116 = *(v144 + 104);
  v117 = v146;
  v116(v142, enum case for FlankedHorizontalLayout.ViewAlignment.center(_:), v146);
  v183[3] = type metadata accessor for ZeroDimension();
  v183[4] = &protocol witness table for ZeroDimension;
  sub_1000056E0(v183);
  static ZeroDimension.zero.getter();
  v116(v145, v115, v117);
  v118 = v138;
  FlankedHorizontalLayout.init(sublayout:leadingView:leadingMargin:leadingAlignment:trailingView:trailingMargin:trailingAlignment:)();
  sub_100007000(v196);
  (*(v114 + 8))(v158, v112);

  sub_100007000(v199);
  v119 = swift_allocObject();
  *(v119 + 16) = v178;
  *(v119 + 32) = v110;
  v120 = v110;
  v121 = TraitEnvironmentPlaceholder.__allocating_init(_:)();
  sub_100600C6C(&qword_10098B250, &type metadata accessor for FlankedHorizontalLayout, &protocol conformance descriptor for FlankedHorizontalLayout);
  v122 = v140;
  dispatch thunk of Measurable.measurements(fitting:in:)();
  v124 = v123;

  (*(v139 + 8))(v118, v122);
  (*(v156 + 8))(v155, v157);
  sub_100007000(v200);
  sub_100007000(v203);
  sub_100007000(v206);
  return v124;
}

double _s8AppStore011CondensedInA19PurchaseContentViewC6height2in8asPartOf12CoreGraphics7CGFloatV0aB3Kit17ItemLayoutContextV_9JetEngine15BaseObjectGraphCtFZ_0()
{
  v0 = type metadata accessor for InAppPurchaseIconLayout.Metrics();
  v27 = *(v0 - 8);
  v28 = v0;
  __chkstk_darwin(v0);
  v2 = &v25 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for CondensedSearchInAppPurchaseCardLayout.Metrics();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v25 - v8;
  v10 = type metadata accessor for ShelfLayoutContext();
  __chkstk_darwin(v10 - 8);
  v29 = type metadata accessor for PageGrid();
  v11 = *(v29 - 8);
  __chkstk_darwin(v29);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for InAppPurchaseSearchResult();
  sub_100600C6C(&qword_10098D9E8, &type metadata accessor for InAppPurchaseSearchResult, &protocol conformance descriptor for SearchResult);
  ItemLayoutContext.typedModel<A>(as:)();
  if (!v30)
  {
    return 0.0;
  }

  v26 = v3;
  v14 = InAppPurchaseSearchResult.lockup.getter();

  ItemLayoutContext.parentShelfLayoutContext.getter();
  if (qword_10096EF00 != -1)
  {
    swift_once();
  }

  PageGrid.init(from:breakpointOverrides:)();
  static CondensedSearchInAppPurchaseCardLayout.Metrics.baseMetrics.getter();
  swift_getKeyPath();
  ItemLayoutContext.subscript.getter();

  v15 = v30;
  PageGrid.componentMeasuringSize(spanning:)();
  v17 = v16;
  v19 = v18;
  if (UITraitCollection.prefersAccessibilityLayouts.getter())
  {
    InAppPurchaseIconLayout.Metrics.init(mainIconDimension:shouldPlaceTileAtOrigin:scaleToFit:)();
    InAppPurchaseIconLayout.Metrics.tileOffset.getter();
    InAppPurchaseIconLayout.Metrics.tileBorderWidth.getter();
    CondensedSearchInAppPurchaseCardLayout.Metrics.withCornerTileOffset(_:)();
    v21 = sub_1005FDA98(v14, v6, v15, v17, v19);

    v22 = *(v4 + 8);
    v23 = v26;
    v22(v6, v26);
    (*(v27 + 8))(v2, v28);
    v22(v9, v23);
  }

  else
  {
    v20.n128_f64[0] = v17;
    v21 = sub_1005FEFC0(v14, v9, v15, v20, v19);

    (*(v4 + 8))(v9, v26);
  }

  (*(v11 + 8))(v13, v29);
  return v21;
}

uint64_t sub_100600C6C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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