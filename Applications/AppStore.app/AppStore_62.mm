unint64_t sub_1006E91BC()
{
  result = qword_100992ED8;
  if (!qword_100992ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100992ED8);
  }

  return result;
}

id sub_1006E9210(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  RibbonBarItem.accessibilityLabel.getter();
  if (v5)
  {
    v6 = String._bridgeToObjectiveC()();
  }

  else
  {
    v6 = 0;
  }

  [v3 setAccessibilityLabel:v6];

  v7 = *&v3[OBJC_IVAR____TtC8AppStore31RibbonBarItemCollectionViewCell_titleLabel];
  RibbonBarItem.title.getter();
  v8 = String._bridgeToObjectiveC()();

  [v7 setText:v8];

  v9 = RibbonBarItem.artwork.getter();
  if (v9)
  {
    Artwork.size.getter();
    v26 = v10;
    v27 = v11;

    *&v12 = v26;
    *(&v12 + 1) = v27;
  }

  else
  {
    v12 = 0uLL;
  }

  v13 = &v3[OBJC_IVAR____TtC8AppStore31RibbonBarItemCollectionViewCell_artworkSize];
  *v13 = v12;
  v13[16] = v9 == 0;
  v14 = RibbonBarItem.artwork.getter();
  if (v14)
  {
  }

  v3[OBJC_IVAR____TtC8AppStore31RibbonBarItemCollectionViewCell_hasArtwork] = v14 != 0;
  v15 = RibbonBarItem.artwork.getter();
  if (v15)
  {
    sub_10005B114(v15, a2);
  }

  else
  {
    v16 = *&v3[OBJC_IVAR____TtC8AppStore31RibbonBarItemCollectionViewCell_artworkView];
    ArtworkView.image.setter();
    [v16 setHidden:1];
  }

  v17 = *&v3[OBJC_IVAR____TtC8AppStore31RibbonBarItemCollectionViewCell_artworkView];
  v18 = RibbonBarItem.artworkTintColor.getter();
  [v17 setTintColor:v18];

  v19 = *&v3[OBJC_IVAR____TtC8AppStore31RibbonBarItemCollectionViewCell_tapAction];
  if (v19)
  {
    v20 = *&v3[OBJC_IVAR____TtC8AppStore31RibbonBarItemCollectionViewCell_tapAction + 8];
    v21 = objc_allocWithZone(UITapGestureRecognizer);

    v22 = [v21 initWithTarget:v3 action:"handleTap"];
    v23 = *&v3[OBJC_IVAR____TtC8AppStore31RibbonBarItemCollectionViewCell_gestureRecognizer];
    *&v3[OBJC_IVAR____TtC8AppStore31RibbonBarItemCollectionViewCell_gestureRecognizer] = v22;
    v24 = v22;

    if (v24)
    {
      [v3 addGestureRecognizer:v24];
      sub_10001F63C(v19, v20);
    }

    else
    {
      sub_10001F63C(v19, v20);
    }
  }

  else if (*&v3[OBJC_IVAR____TtC8AppStore31RibbonBarItemCollectionViewCell_gestureRecognizer])
  {
    [v3 removeGestureRecognizer:?];
  }

  return [v3 setNeedsLayout];
}

char *sub_1006E94A4(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v10 = sub_10002849C(&unk_100981210, &qword_1007C2310);
  __chkstk_darwin(v10 - 8);
  v12 = &v59 - v11;
  v13 = type metadata accessor for DirectionalTextAlignment();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v59 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_10002849C(&qword_100972ED0, &unk_1007B17B0);
  __chkstk_darwin(v17 - 8);
  v19 = &v59 - v18;
  v20 = OBJC_IVAR____TtC8AppStore31RibbonBarItemCollectionViewCell_itemLayoutContext;
  v21 = type metadata accessor for ItemLayoutContext();
  (*(*(v21 - 8) + 56))(&v5[v20], 1, 1, v21);
  v22 = OBJC_IVAR____TtC8AppStore31RibbonBarItemCollectionViewCell_titleLabel;
  if (qword_10096E2B8 != -1)
  {
    swift_once();
  }

  v23 = type metadata accessor for FontUseCase();
  v24 = sub_1000056A8(v23, qword_1009D17A8);
  v25 = *(v23 - 8);
  v63 = *(v25 + 16);
  v64 = v24;
  v63(v19);
  v62 = *(v25 + 56);
  v62(v19, 0, 1, v23);
  (*(v14 + 104))(v16, enum case for DirectionalTextAlignment.none(_:), v13);
  v26 = objc_allocWithZone(type metadata accessor for DynamicTypeLabel());
  *&v5[v22] = DynamicTypeLabel.init(useCase:numberOfLines:lineBreakMode:isUserInteractionEnabled:directionalTextAlignment:contentSizeCategoryMapping:)();
  v27 = OBJC_IVAR____TtC8AppStore31RibbonBarItemCollectionViewCell_shadowView;
  type metadata accessor for ShadowView();
  *&v5[v27] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v28 = OBJC_IVAR____TtC8AppStore31RibbonBarItemCollectionViewCell_roundedCornerView;
  type metadata accessor for RoundedCornerView();
  *&v5[v28] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v29 = &v5[OBJC_IVAR____TtC8AppStore31RibbonBarItemCollectionViewCell_artworkSize];
  *v29 = 0;
  *(v29 + 1) = 0;
  v29[16] = 1;
  v5[OBJC_IVAR____TtC8AppStore31RibbonBarItemCollectionViewCell_hasArtwork] = 0;
  *&v5[OBJC_IVAR____TtC8AppStore31RibbonBarItemCollectionViewCell_clickAction] = 0;
  *&v5[OBJC_IVAR____TtC8AppStore31RibbonBarItemCollectionViewCell_objectGraph] = 0;
  *&v5[OBJC_IVAR____TtC8AppStore31RibbonBarItemCollectionViewCell_gestureRecognizer] = 0;
  v30 = &v5[OBJC_IVAR____TtC8AppStore31RibbonBarItemCollectionViewCell_tapAction];
  *v30 = 0;
  v30[1] = 0;
  v31 = OBJC_IVAR____TtC8AppStore31RibbonBarItemCollectionViewCell_artworkView;
  type metadata accessor for ArtworkView();
  *&v5[v31] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v65.receiver = v5;
  v65.super_class = ObjectType;
  v32 = objc_msgSendSuper2(&v65, "initWithFrame:", a1, a2, a3, a4);
  ObjectType = OBJC_IVAR____TtC8AppStore31RibbonBarItemCollectionViewCell_roundedCornerView;
  v33 = *&v32[OBJC_IVAR____TtC8AppStore31RibbonBarItemCollectionViewCell_roundedCornerView];
  sub_100005744(0, &qword_100970180, UIColor_ptr);
  v34 = v32;
  v35 = v33;
  v36 = static UIColor.placeholderBackgroundStandout.getter();
  [v35 setBackgroundColor:v36];

  v60 = OBJC_IVAR____TtC8AppStore31RibbonBarItemCollectionViewCell_shadowView;
  v37 = qword_10096DA40;
  v38 = *&v34[OBJC_IVAR____TtC8AppStore31RibbonBarItemCollectionViewCell_shadowView];
  if (v37 != -1)
  {
    swift_once();
  }

  v39 = type metadata accessor for Shadow();
  v40 = sub_1000056A8(v39, qword_1009CFD20);
  v41 = *(v39 - 8);
  (*(v41 + 16))(v12, v40, v39);
  (*(v41 + 56))(v12, 0, 1, v39);
  dispatch thunk of ShadowView.shadow.setter();

  v42 = OBJC_IVAR____TtC8AppStore31RibbonBarItemCollectionViewCell_titleLabel;
  [*&v34[OBJC_IVAR____TtC8AppStore31RibbonBarItemCollectionViewCell_titleLabel] setNumberOfLines:1];
  v43 = *&v34[v42];
  v44 = objc_opt_self();
  v45 = v43;
  v46 = [v44 labelColor];
  [v45 setTextColor:v46];

  v47 = *&v34[v42];
  (v63)(v19, v64, v23);
  v62(v19, 0, 1, v23);
  v48 = v47;
  dispatch thunk of DynamicTypeLabel.fontUseCase.setter();

  v49 = OBJC_IVAR____TtC8AppStore31RibbonBarItemCollectionViewCell_artworkView;
  v50 = *&v34[OBJC_IVAR____TtC8AppStore31RibbonBarItemCollectionViewCell_artworkView];
  v51 = [v44 clearColor];
  ArtworkView.placeholderColor.setter();

  v52 = [v34 contentView];
  [v52 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];

  v53 = [v34 contentView];
  [v53 addSubview:*&v34[v60]];

  v54 = [v34 contentView];
  [v54 addSubview:*(ObjectType + v32)];

  v55 = [v34 contentView];
  [v55 addSubview:*&v34[v49]];

  v56 = [v34 contentView];
  [v56 addSubview:*&v34[v42]];

  sub_10002849C(&qword_10097B110, &unk_1007B27C0);
  v57 = swift_allocObject();
  *(v57 + 16) = xmmword_1007B1E00;
  *(v57 + 32) = type metadata accessor for UITraitLayoutDirection();
  *(v57 + 40) = &protocol witness table for UITraitLayoutDirection;
  *(v57 + 48) = type metadata accessor for UITraitPreferredContentSizeCategory();
  *(v57 + 56) = &protocol witness table for UITraitPreferredContentSizeCategory;
  *(v57 + 64) = type metadata accessor for UITraitUserInterfaceStyle();
  *(v57 + 72) = &protocol witness table for UITraitUserInterfaceStyle;
  UIView.registerForTraitChanges(_:action:)();

  swift_unknownObjectRelease();

  return v34;
}

double sub_1006E9C80()
{
  v1 = v0;
  v2 = type metadata accessor for RibbonBarItemCellLayout.Metrics();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v7 = __chkstk_darwin(v6).n128_u64[0];
  v9 = &v20 - v8;
  v10 = [v0 traitCollection];
  v11 = &v1[OBJC_IVAR____TtC8AppStore31RibbonBarItemCollectionViewCell_artworkSize];
  v12 = *&v1[OBJC_IVAR____TtC8AppStore31RibbonBarItemCollectionViewCell_artworkSize];
  v13 = *(v11 + 1);
  v14 = v11[16];
  if (UITraitCollection.prefersAccessibilityLayouts.getter())
  {
    sub_1006EA400(v10, v5);
  }

  else if (v14)
  {
    sub_1006EA738(v15, v16);
  }

  else
  {
    sub_1006EA7D8(v12, v13, 0);
  }

  (*(v3 + 32))(v9, v5, v2);
  RibbonBarItemCellLayout.Metrics.artworkSize.getter();
  v18 = v17;
  (*(v3 + 8))(v9, v2);
  return v18;
}

uint64_t sub_1006E9E20()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = type metadata accessor for CornerStyle();
  v4 = *(v3 - 8);
  *&v5 = __chkstk_darwin(v3).n128_u64[0];
  v7 = &v16[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17.receiver = v1;
  v17.super_class = ObjectType;
  objc_msgSendSuper2(&v17, "layoutSubviews", v5);
  sub_1006EA084(v16);
  sub_10002A400(v16, v16[3]);
  [v1 bounds];
  v8 = [v1 traitCollection];
  dispatch thunk of Placeable.place(at:with:)();

  sub_100007000(v16);
  v9 = *&v1[OBJC_IVAR____TtC8AppStore31RibbonBarItemCollectionViewCell_shadowView];
  [v1 bounds];
  [v9 setFrame:?];
  v10 = *&v1[OBJC_IVAR____TtC8AppStore31RibbonBarItemCollectionViewCell_roundedCornerView];
  [v1 bounds];
  [v10 setFrame:?];
  [v1 bounds];
  CGRectGetHeight(v18);
  v11 = enum case for CornerStyle.continuous(_:);
  v12 = *(v4 + 104);
  v12(v7, enum case for CornerStyle.continuous(_:), v3);
  dispatch thunk of RoundedCornerView.setCorner(radius:style:)();
  v13 = *(v4 + 8);
  v13(v7, v3);
  v12(v7, v11, v3);
  dispatch thunk of ShadowView.setCorner(radius:style:)();
  return (v13)(v7, v3);
}

uint64_t sub_1006EA084@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for RibbonBarItemCellLayout.Metrics();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v9 = __chkstk_darwin(v8).n128_u64[0];
  v11 = v27 - v10;
  v12 = [v1 traitCollection];
  v13 = *&v2[OBJC_IVAR____TtC8AppStore31RibbonBarItemCollectionViewCell_artworkSize];
  v14 = *&v2[OBJC_IVAR____TtC8AppStore31RibbonBarItemCollectionViewCell_artworkSize + 8];
  v15 = v2[OBJC_IVAR____TtC8AppStore31RibbonBarItemCollectionViewCell_artworkSize + 16];
  if (UITraitCollection.prefersAccessibilityLayouts.getter())
  {
    sub_1006EA400(v12, v7);
  }

  else if (v15)
  {
    sub_1006EA738(v16, v17);
  }

  else
  {
    sub_1006EA7D8(v13, v14, 0);
  }

  (*(v5 + 32))(v11, v7, v4);
  if (v2[OBJC_IVAR____TtC8AppStore31RibbonBarItemCollectionViewCell_hasArtwork])
  {
    v18 = *&v2[OBJC_IVAR____TtC8AppStore31RibbonBarItemCollectionViewCell_artworkView];
    v19 = type metadata accessor for ArtworkView();
    v20 = sub_1006EC774(&qword_100989780, &type metadata accessor for ArtworkView, "]o\r");
    v21 = v18;
  }

  else
  {
    v19 = 0;
    v20 = 0;
    v18 = 0;
    v27[6] = 0;
    v27[7] = 0;
  }

  v27[8] = v19;
  v27[9] = v20;
  v27[5] = v18;
  v22 = *&v2[OBJC_IVAR____TtC8AppStore31RibbonBarItemCollectionViewCell_titleLabel];
  v27[3] = type metadata accessor for DynamicTypeLabel();
  v27[4] = &protocol witness table for UILabel;
  v27[0] = v22;
  v23 = type metadata accessor for RibbonBarItemCellLayout();
  swift_allocObject();
  v24 = v22;
  v25 = RibbonBarItemCellLayout.init(metrics:artwork:titleLabel:)();
  a1[3] = v23;
  result = sub_1006EC774(&qword_100992F68, &type metadata accessor for RibbonBarItemCellLayout, &protocol conformance descriptor for RibbonBarItemCellLayout);
  a1[4] = result;
  *a1 = v25;
  return result;
}

void sub_1006EA400(UITraitCollection a1@<X3>, uint64_t a2@<X8>)
{
  v13[1] = a2;
  v13[0] = type metadata accessor for AspectRatio();
  v3 = *(v13[0] - 8);
  __chkstk_darwin(v13[0]);
  v5 = v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for FontSource();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10096E2B8 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for FontUseCase();
  v11 = sub_1000056A8(v10, qword_1009D17A8);
  (*(*(v10 - 8) + 16))(v9, v11, v10);
  (*(v7 + 104))(v9, enum case for FontSource.useCase(_:), v6);
  isa = FontSource.font(compatibleWith:)(a1).super.isa;
  (*(v7 + 8))(v9, v6);
  [(objc_class *)isa lineHeight];
  AspectRatio.init(_:_:)();
  AspectRatio.width(fromHeight:)();
  (*(v3 + 8))(v5, v13[0]);
  v13[35] = &type metadata for Double;
  v13[36] = &protocol witness table for Double;
  v13[31] = &protocol witness table for Double;
  v13[32] = 0x4020000000000000;
  v13[30] = &type metadata for Double;
  v13[27] = 0x4024000000000000;
  v13[25] = &type metadata for Double;
  v13[26] = &protocol witness table for Double;
  v13[21] = &protocol witness table for Double;
  v13[22] = 0x402C000000000000;
  v13[20] = &type metadata for Double;
  v13[16] = &protocol witness table for Double;
  v13[17] = 0;
  v13[15] = &type metadata for Double;
  v13[11] = &protocol witness table for Double;
  v13[12] = 0;
  v13[10] = &type metadata for Double;
  v13[6] = &protocol witness table for Double;
  v13[7] = 0x4010000000000000;
  v13[5] = &type metadata for Double;
  v13[2] = 0x4010000000000000;
  RibbonBarItemCellLayout.Metrics.init(artworkSize:interimSpacing:leadingSpacing:trailingSpacing:artworkBottomSpacing:artworkTopSpacing:labelBottomSpacing:labelTopSpacing:)();
}

uint64_t sub_1006EAA18(uint64_t a1, uint64_t a2)
{
  v3 = sub_10002849C(&unk_100972A00, &unk_1007B3130);
  __chkstk_darwin(v3 - 8);
  v5 = &v10 - v4;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v7 = result;
    v8 = sub_10002849C(&unk_100974490, &qword_1007B3DD0);
    BaseObjectGraph.injectIfAvailable<A>(_:)();
    v9 = *(v8 - 8);
    if ((*(v9 + 48))(v5, 1, v8) == 1)
    {

      return sub_10002B894(v5, &unk_100972A00, &unk_1007B3130);
    }

    else
    {
      sub_1005F9AF4(a2, 1, v7, v5);

      return (*(v9 + 8))(v5, v8);
    }
  }

  return result;
}

uint64_t type metadata accessor for RibbonBarItemCollectionViewCell(uint64_t a1)
{
  result = qword_100992F50;
  if (!qword_100992F50)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1006EACC0(uint64_t a1)
{
  sub_100027FAC(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_1006EADA8(uint64_t a1, uint64_t a2)
{
  ArtworkView.isImageHidden.setter();
  type metadata accessor for ArtworkView();
  sub_1006EC774(&qword_100970E80, &type metadata accessor for ArtworkView, &protocol conformance descriptor for ArtworkView);
  return ArtworkLoader.forgetFetch<A>(forView:deprioritizingFetch:)();
}

uint64_t sub_1006EAE40(uint64_t a1)
{
  result = sub_1006EC774(&qword_100992F60, type metadata accessor for RibbonBarItemCollectionViewCell, &unk_1007DF570);
  *(a1 + 8) = result;
  return result;
}

uint64_t *sub_1006EAE98(unint64_t a1, UITraitCollection a2, double a3, double a4)
{
  v10 = type metadata accessor for FontSource();
  v117 = *(v10 - 8);
  v118 = v10;
  __chkstk_darwin(v10);
  v116 = &v115 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for StaticDimension();
  v120 = *(v12 - 8);
  v121 = v12;
  __chkstk_darwin(v12);
  v119 = &v115 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v144 = sub_10002849C(&qword_100984990, qword_1007DF5C0);
  v14 = *(v144 - 8);
  __chkstk_darwin(v144);
  v143 = &v115 - v15;
  v142 = type metadata accessor for TextAppearance();
  v16 = *(v142 - 8);
  __chkstk_darwin(v142);
  v141 = &v115 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v140 = &v115 - v19;
  __chkstk_darwin(v20);
  v139 = &v115 - v21;
  __chkstk_darwin(v22);
  v138 = &v115 - v23;
  __chkstk_darwin(v24);
  v137 = &v115 - v25;
  __chkstk_darwin(v26);
  v136 = &v115 - v27;
  v135 = type metadata accessor for LabelPlaceholder();
  v28 = *(v135 - 8);
  __chkstk_darwin(v135);
  *&v155 = &v115 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v146 = type metadata accessor for RibbonBarItemCellLayout.Metrics();
  v30 = *(v146 - 8);
  __chkstk_darwin(v146);
  v32 = &v115 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v33);
  v35 = (&v115 - v34);
  __chkstk_darwin(v36);
  v123 = &v115 - v37;
  __chkstk_darwin(v38);
  v124 = &v115 - v39;
  if (a1 >> 62)
  {
LABEL_55:
    v40 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v40 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  isa = a2.super.isa;
  if (v40)
  {
    v154 = v14;
    v177 = _swiftEmptyArrayStorage;
    v145 = v40;
    sub_100144108(0, v40 & ~(v40 >> 63), 0);
    if (v145 < 0)
    {
      __break(1u);
LABEL_57:
      swift_once();
      goto LABEL_43;
    }

    v132 = v35;
    v133 = v32;
    v35 = v177;
    v4 = JUMeasuringSizeExpanded[0];
    v5 = JUMeasuringSizeExpanded[1];
    v41 = sub_100005744(0, &qword_1009730E0, UIFont_ptr);
    v42 = v30;
    v43 = 0;
    v44 = a1;
    v130 = a1 & 0xC000000000000001;
    v131 = v41;
    v122 = v42;
    v128 = (v42 + 32);
    v129 = v16 + 8;
    v126 = (v154 + 1);
    v127 = (v28 + 2);
    v125 = (v28 + 1);
    v134 = a1;
    v16 += 8;
    do
    {
      if (v130)
      {
        v45 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v45 = *(v44 + 8 * v43 + 32);
      }

      v154 = v35;
      v46 = RibbonBarItem.title.getter();
      v150 = v47;
      v151 = v46;
      v48 = RibbonBarItem.artwork.getter();
      if (v48)
      {
        Artwork.size.getter();
        v50 = v49;
        v52 = v51;

        v148 = v52;
        v149 = v50;
      }

      else
      {
        v148 = 0;
        v149 = 0;
      }

      v153 = v45;
      v53 = RibbonBarItem.artwork.getter();
      if (v53)
      {
      }

      if (qword_10096E2B8 != -1)
      {
        swift_once();
      }

      v54 = type metadata accessor for FontUseCase();
      sub_1000056A8(v54, qword_1009D17A8);
      v55 = static UIFont.preferredFont(forUseWith:compatibleWith:)();
      v56 = v141;
      TextAppearance.init()();
      v57 = v140;
      v152 = v55;
      TextAppearance.withFont(_:)();
      v58 = *v16;
      v59 = v142;
      (*v16)(v56, v142);
      v60 = v139;
      TextAppearance.withTextAlignment(_:)();
      v58(v57, v59);
      v61 = v138;
      TextAppearance.withLineBreakMode(_:)();
      v58(v60, v59);
      v62 = v137;
      TextAppearance.withLineSpacing(_:)();
      v58(v61, v59);
      TextAppearance.withNumberOfLines(_:)();
      v58(v62, v59);
      v63 = isa;
      LabelPlaceholder.Options.init(rawValue:)();
      LabelPlaceholder.init(_:with:where:)();
      if (UITraitCollection.prefersAccessibilityLayouts.getter())
      {
        v64 = v133;
        sub_1006EA400(v63, v133);
        v65 = v132;
      }

      else
      {
        v65 = v132;
        v64 = v133;
        if (v48)
        {
          CGSize.fitting(_:mode:)();
          v176 = &protocol witness table for Double;
          *(&v175 + 1) = &type metadata for Double;
          v173 = &protocol witness table for Double;
          *&v174 = 0x4020000000000000;
          v172 = &type metadata for Double;
          v171[0] = 0x4024000000000000;
          v170 = &protocol witness table for Double;
          v169 = &type metadata for Double;
          v167 = &protocol witness table for Double;
          v168[0] = 0x4028000000000000;
          v166 = &type metadata for Double;
          v164 = &protocol witness table for Double;
          v165[0] = 0x401C000000000000;
          v163 = &type metadata for Double;
          v161 = &protocol witness table for Double;
          v162[0] = 0x401C000000000000;
          v160 = &type metadata for Double;
          v158 = &protocol witness table for Double;
          v159[0] = 0;
          v157 = &type metadata for Double;
          v156[0] = 0;
        }

        else
        {
          v176 = &protocol witness table for Double;
          *(&v175 + 1) = &type metadata for Double;
          v173 = &protocol witness table for Double;
          *&v174 = 0x4020000000000000;
          v172 = &type metadata for Double;
          v171[0] = 0x4024000000000000;
          v170 = &protocol witness table for Double;
          v169 = &type metadata for Double;
          v167 = &protocol witness table for Double;
          v168[0] = 0x4024000000000000;
          v166 = &type metadata for Double;
          v164 = &protocol witness table for Double;
          v165[0] = 0x401C000000000000;
          v163 = &type metadata for Double;
          v161 = &protocol witness table for Double;
          v162[0] = 0x401C000000000000;
          v160 = &type metadata for Double;
          v158 = &protocol witness table for Double;
          v159[0] = 0x4024000000000000;
          v157 = &type metadata for Double;
          v156[0] = 0x4024000000000000;
        }

        RibbonBarItemCellLayout.Metrics.init(artworkSize:interimSpacing:leadingSpacing:trailingSpacing:artworkBottomSpacing:artworkTopSpacing:labelBottomSpacing:labelTopSpacing:)();
      }

      (*v128)(v65, v64, v146);
      if (v53)
      {
        v66 = type metadata accessor for EmptyPlaceable();
        swift_allocObject();
        v67 = EmptyPlaceable.init()();
        *(&v175 + 1) = v66;
        v176 = sub_1006EC774(&qword_1009768B0, &type metadata accessor for EmptyPlaceable, &protocol conformance descriptor for EmptyPlaceable);
        *&v174 = v67;
      }

      else
      {
        v176 = 0;
        v174 = 0u;
        v175 = 0u;
      }

      v68 = v135;
      v172 = v135;
      v173 = &protocol witness table for LabelPlaceholder;
      v69 = sub_1000056E0(v171);
      v70 = v155;
      (*v127)(v69, v155, v68);
      type metadata accessor for RibbonBarItemCellLayout();
      swift_allocObject();
      *&v174 = RibbonBarItemCellLayout.init(metrics:artwork:titleLabel:)();
      sub_1006EC774(&qword_100984998, &type metadata accessor for RibbonBarItemCellLayout, &protocol conformance descriptor for RibbonBarItemCellLayout);
      v71 = v143;
      dispatch thunk of CustomLayout.layout.getter();
      swift_getOpaqueTypeConformance2();
      v72 = v144;
      dispatch thunk of Placeable.measure(toFit:with:)();
      v74 = v73;

      (*v126)(v71, v72);
      (*v125)(v70, v68);
      v35 = v154;
      v177 = v154;
      v76 = v154[2];
      v75 = v154[3];
      if (v76 >= v75 >> 1)
      {
        sub_100144108((v75 > 1), v76 + 1, 1);
        v35 = v177;
      }

      ++v43;
      v35[2] = v76 + 1;
      v35[v76 + 4] = v74;
      a2.super.isa = v63;
      v44 = v134;
    }

    while (v145 != v43);
    v30 = v122;
  }

  else
  {
    v35 = _swiftEmptyArrayStorage;
  }

  v77 = v123;
  if (UITraitCollection.prefersAccessibilityLayouts.getter())
  {
    sub_1006EA400(a2, v77);
  }

  else
  {
    sub_1006EA738(v78, v79);
  }

  a1 = v124;
  v80 = v77;
  v81 = v146;
  (*(v30 + 32))(v124, v80, v146);
  RibbonBarItemCellLayout.Metrics.trailingSpacing.getter();
  (*(v30 + 8))(a1, v81);
  v30 = v35[2];
  if (!v30)
  {
    goto LABEL_51;
  }

  v32 = 0;
  v82 = 0.0;
  v14 = &qword_100973210;
  v28 = qword_1007B0BB0;
  v155 = xmmword_1007B0B70;
  while (1)
  {
    if (v32 >= v35[2])
    {
      __break(1u);
      goto LABEL_55;
    }

    v83 = *&v35[v32 + 4];
    v5 = v82 + v83;
    if (v82 + v83 == a3)
    {
      goto LABEL_51;
    }

    if (v82 + v83 >= a3)
    {
      break;
    }

    ++v32;
    type metadata accessor for RibbonBarItemCellLayout();
    static RibbonBarItemCellLayout.interItemSpacing.getter();
    type metadata accessor for TraitEnvironmentPlaceholder();
    sub_10002849C(&qword_100973210, qword_1007B0BB0);
    a2.super.isa = swift_allocObject();
    *(a2.super.isa + 1) = v155;
    v84 = isa;
    *(a2.super.isa + 4) = isa;
    v85 = v84;
    a1 = TraitEnvironmentPlaceholder.__allocating_init(_:)();
    Double.rawValue(in:)();
    v4 = v86;

    v82 = v5 + v4;
    if (v30 == v32)
    {
      goto LABEL_51;
    }
  }

  sub_10002A400(&v174, *(&v175 + 1));
  a2.super.isa = isa;
  AnyDimension.value(with:)();
  v88 = a3 + a4 + v87;
  if (v88 <= v5)
  {
LABEL_51:
    v109 = v35;
    goto LABEL_52;
  }

  v16 = v35;
  a3 = v88 - v5;
  v4 = (v32 + 1);
  v5 = (v88 - v5) / v4 * 0.5;
  if (qword_10096E2B8 != -1)
  {
    goto LABEL_57;
  }

LABEL_43:
  v89 = type metadata accessor for FontUseCase();
  v90 = sub_1000056A8(v89, qword_1009D17A8);
  v91 = v116;
  (*(*(v89 - 8) + 16))(v116, v90, v89);
  v93 = v117;
  v92 = v118;
  (*(v117 + 104))(v91, enum case for FontSource.useCase(_:), v118);
  v172 = v92;
  v173 = &protocol witness table for FontSource;
  v94 = sub_1000056E0(v171);
  (*(v93 + 16))(v94, v91, v92);
  v95 = v119;
  StaticDimension.init(_:scaledLike:)();
  (*(v93 + 8))(v91, v92);
  type metadata accessor for TraitEnvironmentPlaceholder();
  sub_10002849C(&qword_100973210, qword_1007B0BB0);
  v96 = swift_allocObject();
  *(v96 + 16) = v155;
  *(v96 + 32) = a2;
  v97 = a2.super.isa;
  v98 = TraitEnvironmentPlaceholder.__allocating_init(_:)();
  v99 = v121;
  dispatch thunk of AnyDimension.rawValue(in:)();
  v101 = v100;

  (*(v120 + 8))(v95, v99);
  v102 = (a3 + v5 + v101) / v4;
  v103 = swift_allocObject();
  *(v103 + 16) = v155;
  *(v103 + 32) = v97;
  v104 = v97;
  v105 = TraitEnvironmentPlaceholder.__allocating_init(_:)();
  Double.rawValue(in:)();
  v107 = v106;

  if (v102 < v107)
  {
    v107 = v102;
  }

  v108 = *(v16 + 2);
  if (v108)
  {
    v171[0] = _swiftEmptyArrayStorage;
    sub_100144108(0, v108, 0);
    v109 = v171[0];
    v110 = *(v171[0] + 16);
    v111 = 32;
    do
    {
      v112 = *&v16[v111];
      v171[0] = v109;
      v113 = v109[3];
      if (v110 >= v113 >> 1)
      {
        sub_100144108((v113 > 1), v110 + 1, 1);
        v109 = v171[0];
      }

      v109[2] = v110 + 1;
      *&v109[v110 + 4] = v107 + v112;
      v111 += 8;
      ++v110;
      --v108;
    }

    while (v108);
  }

  else
  {

    v109 = _swiftEmptyArrayStorage;
  }

LABEL_52:
  sub_100007000(&v174);
  return v109;
}

double sub_1006EBDA0(uint64_t a1, void *a2)
{
  v3 = sub_10002849C(&qword_100984990, qword_1007DF5C0);
  v57 = *(v3 - 8);
  v58 = v3;
  __chkstk_darwin(v3);
  v56 = v46 - v4;
  v5 = type metadata accessor for RibbonBarItemCellLayout.Metrics();
  v51 = *(v5 - 8);
  v52 = v5;
  __chkstk_darwin(v5);
  v50 = v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v54 = v46 - v8;
  v9 = type metadata accessor for TextAppearance();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = v46 - v14;
  __chkstk_darwin(v16);
  v18 = v46 - v17;
  __chkstk_darwin(v19);
  v21 = v46 - v20;
  __chkstk_darwin(v22);
  v24 = v46 - v23;
  __chkstk_darwin(v25);
  v48 = v46 - v26;
  v55 = type metadata accessor for LabelPlaceholder();
  v53 = *(v55 - 8);
  *&v27 = __chkstk_darwin(v55).n128_u64[0];
  v47 = v46 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = [a2 traitCollection];
  v46[2] = RibbonBarItem.title.getter();
  v46[1] = v30;
  sub_100005744(0, &qword_1009730E0, UIFont_ptr);
  if (qword_10096E2B8 != -1)
  {
    swift_once();
  }

  v31 = type metadata accessor for FontUseCase();
  sub_1000056A8(v31, qword_1009D17A8);
  v32 = static UIFont.preferredFont(forUseWith:compatibleWith:)();
  TextAppearance.init()();
  v49 = v32;
  TextAppearance.withFont(_:)();
  v33 = *(v10 + 8);
  v33(v12, v9);
  TextAppearance.withTextAlignment(_:)();
  v33(v15, v9);
  TextAppearance.withLineBreakMode(_:)();
  v33(v18, v9);
  TextAppearance.withLineSpacing(_:)();
  v33(v21, v9);
  TextAppearance.withNumberOfLines(_:)();
  v33(v24, v9);
  LabelPlaceholder.Options.init(rawValue:)();
  v34 = v47;
  LabelPlaceholder.init(_:with:where:)();
  if (UITraitCollection.prefersAccessibilityLayouts.getter())
  {
    v37 = v50;
    sub_1006EA400(v29, v50);
  }

  else
  {
    v37 = v50;
    sub_1006EA738(v35, v36);
  }

  (*(v51 + 32))(v54, v37, v52);
  v62 = 0;
  v60 = 0u;
  v61 = 0u;
  v38 = v55;
  v59[3] = v55;
  v59[4] = &protocol witness table for LabelPlaceholder;
  v39 = sub_1000056E0(v59);
  v40 = v53;
  (*(v53 + 16))(v39, v34, v38);
  type metadata accessor for RibbonBarItemCellLayout();
  swift_allocObject();
  *&v60 = RibbonBarItemCellLayout.init(metrics:artwork:titleLabel:)();
  sub_1006EC774(&qword_100984998, &type metadata accessor for RibbonBarItemCellLayout, &protocol conformance descriptor for RibbonBarItemCellLayout);
  v41 = v56;
  dispatch thunk of CustomLayout.layout.getter();
  swift_getOpaqueTypeConformance2();
  v42 = v58;
  dispatch thunk of Placeable.measure(toFit:with:)();
  v44 = v43;

  (*(v57 + 8))(v41, v42);
  (*(v40 + 8))(v34, v38);
  return v44;
}

void sub_1006EC414()
{
  v1 = v0;
  v2 = type metadata accessor for DirectionalTextAlignment();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10002849C(&qword_100972ED0, &unk_1007B17B0);
  __chkstk_darwin(v6 - 8);
  v8 = &v21 - v7;
  v9 = OBJC_IVAR____TtC8AppStore31RibbonBarItemCollectionViewCell_itemLayoutContext;
  v10 = type metadata accessor for ItemLayoutContext();
  (*(*(v10 - 8) + 56))(v1 + v9, 1, 1, v10);
  v11 = OBJC_IVAR____TtC8AppStore31RibbonBarItemCollectionViewCell_titleLabel;
  if (qword_10096E2B8 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for FontUseCase();
  v13 = sub_1000056A8(v12, qword_1009D17A8);
  v14 = *(v12 - 8);
  (*(v14 + 16))(v8, v13, v12);
  (*(v14 + 56))(v8, 0, 1, v12);
  (*(v3 + 104))(v5, enum case for DirectionalTextAlignment.none(_:), v2);
  v15 = objc_allocWithZone(type metadata accessor for DynamicTypeLabel());
  *(v1 + v11) = DynamicTypeLabel.init(useCase:numberOfLines:lineBreakMode:isUserInteractionEnabled:directionalTextAlignment:contentSizeCategoryMapping:)();
  v16 = OBJC_IVAR____TtC8AppStore31RibbonBarItemCollectionViewCell_shadowView;
  type metadata accessor for ShadowView();
  *(v1 + v16) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v17 = OBJC_IVAR____TtC8AppStore31RibbonBarItemCollectionViewCell_roundedCornerView;
  type metadata accessor for RoundedCornerView();
  *(v1 + v17) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v18 = v1 + OBJC_IVAR____TtC8AppStore31RibbonBarItemCollectionViewCell_artworkSize;
  *v18 = 0;
  *(v18 + 8) = 0;
  *(v18 + 16) = 1;
  *(v1 + OBJC_IVAR____TtC8AppStore31RibbonBarItemCollectionViewCell_hasArtwork) = 0;
  *(v1 + OBJC_IVAR____TtC8AppStore31RibbonBarItemCollectionViewCell_clickAction) = 0;
  *(v1 + OBJC_IVAR____TtC8AppStore31RibbonBarItemCollectionViewCell_objectGraph) = 0;
  *(v1 + OBJC_IVAR____TtC8AppStore31RibbonBarItemCollectionViewCell_gestureRecognizer) = 0;
  v19 = (v1 + OBJC_IVAR____TtC8AppStore31RibbonBarItemCollectionViewCell_tapAction);
  *v19 = 0;
  v19[1] = 0;
  v20 = OBJC_IVAR____TtC8AppStore31RibbonBarItemCollectionViewCell_artworkView;
  type metadata accessor for ArtworkView();
  *(v1 + v20) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_1006EC774(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

id sub_1006EC9F4(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for GradientSectionBackgroundView();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_1006ECA60(uint64_t a1)
{
  v3 = type metadata accessor for ShelfBackgroundGradientLocation();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v47 - v8;
  v10 = type metadata accessor for ShelfBackground();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = (&v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v11 + 16))(v14, a1, v10, v12);
  v15 = (*(v11 + 88))(v14, v10);
  if (v15 == enum case for ShelfBackground.color(_:))
  {
    (*(v11 + 96))(v14, v10);
    v16 = *v14;
    v17 = *(sub_10002849C(&qword_100972A40, &unk_1007B3750) + 48);
    v18 = *(v1 + OBJC_IVAR____TtC8AppStore29GradientSectionBackgroundView_gradientView);
    v19 = [v18 layer];
    objc_opt_self();
    [swift_dynamicCastObjCClassUnconditional() setStartPoint:{0.5, 0.0}];

    v20 = [v18 layer];
    objc_opt_self();
    [swift_dynamicCastObjCClassUnconditional() setEndPoint:{0.5, 1.0}];

    sub_10002849C(&qword_100973210, qword_1007B0BB0);
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_1007B15F0;
    *(v21 + 32) = v16;
    *(v21 + 40) = v16;
    *&v18[OBJC_IVAR____TtC8AppStore12GradientView_colors] = v21;
    v22 = v16;

    sub_1001C0CEC();

    v23 = type metadata accessor for ShelfBackgroundStyle();
    return (*(*(v23 - 8) + 8))(v14 + v17, v23);
  }

  else if (v15 == enum case for ShelfBackground.gradient(_:))
  {
    (*(v11 + 96))(v14, v10);
    v25 = *v14;
    v26 = sub_10002849C(&qword_100978418, qword_1007BD670);
    v27 = v26[12];
    v28 = v26[16];
    v48 = v26[20];
    v29 = *(v4 + 32);
    v29(v9, v14 + v27, v3);
    v29(v6, v14 + v28, v3);
    v30 = *(v1 + OBJC_IVAR____TtC8AppStore29GradientSectionBackgroundView_gradientView);
    ShelfBackgroundGradientLocation.point.getter();
    v32 = v31;
    v34 = v33;
    v35 = [v30 layer];
    objc_opt_self();
    [swift_dynamicCastObjCClassUnconditional() setStartPoint:{v32, v34}];

    ShelfBackgroundGradientLocation.point.getter();
    v37 = v36;
    v39 = v38;
    v40 = [v30 layer];
    objc_opt_self();
    [swift_dynamicCastObjCClassUnconditional() setEndPoint:{v37, v39}];

    *&v30[OBJC_IVAR____TtC8AppStore12GradientView_colors] = v25;

    sub_1001C0CEC();
    v41 = *(v4 + 8);
    v41(v6, v3);
    v41(v9, v3);
    v42 = type metadata accessor for ShelfBackgroundStyle();
    return (*(*(v42 - 8) + 8))(v14 + v48, v42);
  }

  else
  {
    v43 = *(v1 + OBJC_IVAR____TtC8AppStore29GradientSectionBackgroundView_gradientView);
    v44 = [v43 layer];
    objc_opt_self();
    [swift_dynamicCastObjCClassUnconditional() setStartPoint:{0.5, 0.0}];

    v45 = [v43 layer];
    objc_opt_self();
    [swift_dynamicCastObjCClassUnconditional() setEndPoint:{0.5, 1.0}];

    sub_10002849C(&qword_100973210, qword_1007B0BB0);
    v46 = swift_allocObject();
    *(v46 + 16) = xmmword_1007B15F0;
    sub_100028BB8();
    *(v46 + 32) = static UIColor.defaultBackground.getter();
    *(v46 + 40) = static UIColor.defaultBackground.getter();
    *&v43[OBJC_IVAR____TtC8AppStore12GradientView_colors] = v46;

    sub_1001C0CEC();
    return (*(v11 + 8))(v14, v10);
  }
}

NSString sub_1006ED0B8()
{
  result = String._bridgeToObjectiveC()();
  static UIActivityType.gift = result;
  return result;
}

uint64_t *UIActivityType.gift.unsafeMutableAddressor()
{
  if (qword_10096EE78 != -1)
  {
    swift_once();
  }

  return &static UIActivityType.gift;
}

id static UIActivityType.gift.getter()
{
  if (qword_10096EE78 != -1)
  {
    swift_once();
  }

  v1 = static UIActivityType.gift;

  return v1;
}

double sub_1006ED19C(double a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v12 = sub_10002849C(qword_10097DB40, qword_1007C5240);
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v25 - v14;
  v16 = sub_10002849C(&qword_100970F20, &qword_1007B24B8);
  v17 = *(v16 - 8);
  v18 = __chkstk_darwin(v16);
  v20 = &v25 - v19;
  (*(v13 + 16))(v15, a5, v12, v18);
  type metadata accessor for NilState();
  StateLens.init(_:)();
  if (qword_10096D280 != -1)
  {
    swift_once();
  }

  ObjectType = swift_getObjectType();
  v22 = type metadata accessor for VideoCardView(0);
  v23 = sub_1001C2E40(a1, a2, &qword_1009CE578, a8, v22, ObjectType);
  (*(v17 + 8))(v20, v16);
  return v23;
}

double sub_1006ED3AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, double a10)
{
  v33 = a6;
  v31 = a4;
  v32 = a5;
  v29 = a3;
  v30 = a2;
  v26 = a1;
  v28 = sub_10002849C(qword_10097DB40, qword_1007C5240);
  v14 = *(v28 - 8);
  __chkstk_darwin(v28);
  v16 = &v26 - v15;
  swift_getAssociatedTypeWitness();
  v27 = type metadata accessor for StateLens();
  v17 = *(v27 - 8);
  __chkstk_darwin(v27);
  v19 = &v26 - v18;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v21 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin(AssociatedTypeWitness);
  v23 = &v26 - v22;
  sub_10002C0AC(v26, v34);
  sub_10002849C(&qword_100973D50, &unk_1007B3840);
  swift_dynamicCast();
  (*(v14 + 16))(v16, v29, v28);
  StateLens.init(_:)();
  v24 = (*(a8 + 48))(v23, v30, v19, v31, v32, v33, a7, a8, a9, a10);
  (*(v17 + 8))(v19, v27);
  (*(v21 + 8))(v23, AssociatedTypeWitness);
  return v24;
}

uint64_t sub_1006ED69C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v27 = a6;
  v10 = sub_10002849C(&unk_10097DAF0, &qword_1007B2A30);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v26 - v12;
  v14 = sub_10002849C(&unk_1009731C0, &qword_1007B4578);
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v26 - v16;
  sub_10002C0AC(a1, v28);
  sub_10002849C(&qword_100973D50, &unk_1007B3840);
  type metadata accessor for ProductMedia();
  result = swift_dynamicCast();
  if (result)
  {
    (*(v11 + 16))(v13, a2, v10);
    type metadata accessor for NilState();
    WritableStateLens.init(_:)();
    v19 = *(v6 + OBJC_IVAR____TtC8AppStore30ProductMediaCollectionViewCell_objectGraph);
    *(v6 + OBJC_IVAR____TtC8AppStore30ProductMediaCollectionViewCell_objectGraph) = a3;

    sub_10057A438(v19, v20);

    v21 = v27;
    v22 = [v27 snapshotPageTraitEnvironment];
    *(v6 + OBJC_IVAR____TtC8AppStore30ProductMediaCollectionViewCell_pageTraits) = v22;
    swift_unknownObjectRelease();
    v23 = *(v6 + OBJC_IVAR____TtC8AppStore30ProductMediaCollectionViewCell_flowLayout);
    [v21 pageMarginInsets];
    [v23 setSectionInset:?];

    sub_10057A32C(v24, v25);

    return (*(v15 + 8))(v17, v14);
  }

  return result;
}

uint64_t sub_1006ED930(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v12 = sub_10002849C(&unk_10097DAF0, &qword_1007B2A30);
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = v41 - v14;
  v16 = sub_10002849C(&unk_1009731C0, &qword_1007B4578);
  v42 = *(v16 - 8);
  v43 = v16;
  __chkstk_darwin(v16);
  v18 = v41 - v17;
  sub_10002C0AC(a1, v45);
  sub_10002849C(&qword_100973D50, &unk_1007B3840);
  type metadata accessor for InAppPurchaseLockup();
  result = swift_dynamicCast();
  if (result)
  {
    v20 = v44;
    (*(v13 + 16))(v15, a2, v12);
    type metadata accessor for NilState();
    WritableStateLens.init(_:)();
    v21 = v41[1];
    sub_100059168(v20, a3, a4, a5, a6);
    InAppPurchaseLockup.parent.getter();
    v22 = Lockup.title.getter();
    v24 = v23;

    if (v24)
    {
      v25._countAndFlagsBits = 0x465F4E4F5F444441;
      v25._object = 0xEE005050415F524FLL;
      v26._object = 0x8000000100800630;
      v26._countAndFlagsBits = 0xD000000000000031;
      localizedString(_:comment:)(v25, v26);
      sub_10002849C(&unk_10097E350, &unk_1007DEA00);
      v27 = swift_allocObject();
      *(v27 + 16) = xmmword_1007B10D0;
      *(v27 + 56) = &type metadata for String;
      *(v27 + 64) = sub_1000BFD1C();
      *(v27 + 32) = v22;
      *(v27 + 40) = v24;

      String.init(format:_:)();

      v28 = objc_allocWithZone(NSMutableAttributedString);
      v29 = String._bridgeToObjectiveC()();
      v30 = [v28 initWithString:v29];

      v31 = objc_allocWithZone(NSString);
      v32 = String._bridgeToObjectiveC()();

      v33 = [v31 initWithString:v32];

      v34 = String._bridgeToObjectiveC()();

      v35 = [v33 rangeOfString:v34 options:4];
      v37 = v36;

      v38 = [v21 tintColor];
      v45[0] = v38;
      sub_10002849C(&qword_100973268, &qword_1007B4680);
      v39 = Optional._bridgeToObjectiveC()();

      [v30 addAttribute:NSForegroundColorAttributeName value:v39 range:{v35, v37}];
      swift_unknownObjectRelease();
      v40 = *(*&v21[OBJC_IVAR____TtC8AppStore37InAppPurchaseLockupCollectionViewCell_lockupView] + OBJC_IVAR____TtC8AppStore23InAppPurchaseLockupView_subtitleLabel);
      if (!v40)
      {

        return (*(v42 + 8))(v18, v43);
      }

      [v40 setAttributedText:v30];
    }

    return (*(v42 + 8))(v18, v43);
  }

  return result;
}

uint64_t sub_1006EDDD0(uint64_t a1, uint64_t a2, uint64_t a3, char *a4, uint64_t a5, void *a6)
{
  v21[0] = a6;
  v10 = sub_10002849C(&unk_10097DAF0, &qword_1007B2A30);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v21 - v12;
  v14 = sub_10002849C(&unk_1009731C0, &qword_1007B4578);
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = v21 - v16;
  sub_10002C0AC(a1, v22);
  sub_10002849C(&qword_100973D50, &unk_1007B3840);
  type metadata accessor for UpsellBreakout();
  result = swift_dynamicCast();
  if (result)
  {
    v19 = v21[2];
    (*(v11 + 16))(v13, a2, v10);
    type metadata accessor for NilState();
    WritableStateLens.init(_:)();
    sub_100755A34(v19, a4, a3, v21[0], v20);

    return (*(v15 + 8))(v17, v14);
  }

  return result;
}

uint64_t sub_1006EDFDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v71 = a4;
  v67 = a3;
  v9 = sub_10002849C(&qword_100984340, qword_1007C0830);
  __chkstk_darwin(v9 - 8);
  v66 = &v60 - v10;
  v11 = type metadata accessor for ComponentLayoutOptions();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v60 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_10002849C(&unk_10097DAF0, &qword_1007B2A30);
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v60 - v17;
  v19 = sub_10002849C(&unk_1009731C0, &qword_1007B4578);
  v68 = *(v19 - 8);
  v69 = v19;
  __chkstk_darwin(v19);
  v21 = &v60 - v20;
  sub_10002C0AC(a1, v73);
  sub_10002849C(&qword_100973D50, &unk_1007B3840);
  type metadata accessor for Action();
  result = swift_dynamicCast();
  if (!result)
  {
    return result;
  }

  v63 = a6;
  v23 = v72;
  (*(v16 + 16))(v18, a2, v15);
  type metadata accessor for NilState();
  v64 = v21;
  WritableStateLens.init(_:)();
  v24 = v65;
  v25 = *&v65[OBJC_IVAR____TtC8AppStore24ActionCollectionViewCell_textLabel];
  Action.title.getter();
  dispatch thunk of DynamicTypeLabel.axSetLinkStyleText(_:)();

  v26 = v24;
  v27 = *&v24[OBJC_IVAR____TtC8AppStore24ActionCollectionViewCell_separatorView];
  static ComponentLayoutOptions.separatorHidden.getter();
  sub_100708188(&qword_10097DB10, &type metadata accessor for ComponentLayoutOptions, &protocol conformance descriptor for ComponentLayoutOptions);
  v28 = dispatch thunk of SetAlgebra.isSuperset(of:)();
  v29 = *(v12 + 8);
  v30 = v14;
  v31 = v14;
  v62 = v12 + 8;
  v32 = v29;
  v29(v31, v11);
  [v27 setHidden:v28 & 1];
  v70 = v23;
  v33 = Action.presentationStyle.getter();
  v34 = v11;
  v61 = v25;
  if ((v33 & 2) != 0)
  {
    [v25 _setTextColorFollowsTintColor:1];
  }

  else
  {
    [v25 _setTextColorFollowsTintColor:0];
    sub_100005744(0, &qword_100970180, UIColor_ptr);
    v35 = static UIColor.primaryText.getter();
    [v25 setTextColor:v35];
  }

  v36 = v63;
  swift_getObjectType();
  v37 = sub_10028F24C(v36);
  v38 = type metadata accessor for Accessory(0);
  v39 = v26;
  if (v37)
  {
    v40 = v66;
    swift_storeEnumTagMultiPayload();
    v41 = 0;
    v42 = v32;
  }

  else
  {
    v41 = 1;
    v42 = v32;
    v40 = v66;
  }

  (*(*(v38 - 8) + 56))(v40, v41, 1, v38);
  sub_100611864(v40, v67);
  sub_10002B894(v40, &qword_100984340, qword_1007C0830);
  v43 = [v36 traitCollection];
  v44 = [v43 horizontalSizeClass];

  if (v44 == 1 || (static ComponentLayoutOptions.fixedHeightContainer.getter(), v45 = dispatch thunk of SetAlgebra.isSuperset(of:)(), v42(v30, v34), (v45 & 1) != 0))
  {
    v46 = [v39 contentView];
    [v36 pageMarginInsets];
  }

  else
  {
    v46 = [v39 contentView];
    top = UIEdgeInsetsZero.top;
    left = UIEdgeInsetsZero.left;
    bottom = UIEdgeInsetsZero.bottom;
    right = UIEdgeInsetsZero.right;
  }

  v51 = v64;
  v52 = v61;
  [v46 setLayoutMargins:{top, left, bottom, right}];

  v53 = Action.artwork.getter();
  if (v53)
  {

    v54 = *&v39[OBJC_IVAR____TtC8AppStore24ActionCollectionViewCell_lazilyCreatedArtworkView];
    if (v54 && ([v54 isHidden] & 1) == 0)
    {
      goto LABEL_19;
    }

LABEL_18:
    v56 = v53 == 0;
    v57 = sub_1006123AC();
    [v57 setHidden:v56];

    goto LABEL_19;
  }

  v55 = *&v39[OBJC_IVAR____TtC8AppStore24ActionCollectionViewCell_lazilyCreatedArtworkView];
  if (v55 && ![v55 isHidden])
  {
    goto LABEL_18;
  }

LABEL_19:
  static ComponentLayoutOptions.fixedHeightContainer.getter();
  v58 = dispatch thunk of SetAlgebra.isSuperset(of:)();
  v42(v30, v34);
  v39[OBJC_IVAR____TtC8AppStore24ActionCollectionViewCell_isVertical] = (v58 & 1) == 0;
  if (v58)
  {
    v59 = 1;
  }

  else
  {
    v59 = 3;
  }

  [v52 setNumberOfLines:v59];
  [v39 setNeedsLayout];
  [v39 setNeedsLayout];

  return (*(v68 + 8))(v51, v69);
}

uint64_t sub_1006EE6A0(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v76 = a6;
  v79 = a4;
  v88 = a3;
  v75 = a2;
  v7 = sub_10002849C(&unk_100973AD0, &unk_1007B17C0);
  __chkstk_darwin(v7 - 8);
  v86 = &v73 - v8;
  v9 = sub_10002849C(&unk_100970150, &unk_1007BDDD0);
  __chkstk_darwin(v9 - 8);
  v87 = &v73 - v10;
  v11 = sub_10002849C(&unk_100970160, &unk_1007BDDE0);
  __chkstk_darwin(v11 - 8);
  v85 = &v73 - v12;
  v13 = sub_10002849C(&qword_100973AE0, &unk_1007B17D0);
  __chkstk_darwin(v13 - 8);
  v84 = &v73 - v14;
  v15 = sub_10002849C(&unk_100973230, &unk_1007B17E0);
  __chkstk_darwin(v15 - 8);
  v83 = &v73 - v16;
  v17 = sub_10002849C(&unk_100970E10, &qword_1007B46A0);
  __chkstk_darwin(v17 - 8);
  v77 = &v73 - v18;
  v91 = type metadata accessor for ComponentLayoutOptions();
  v78 = *(v91 - 8);
  __chkstk_darwin(v91);
  v90 = &v73 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for FontSource();
  v21 = *(v20 - 8);
  __chkstk_darwin(v20);
  v23 = (&v73 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  v24 = type metadata accessor for Separator.Position();
  v25 = *(v24 - 8);
  __chkstk_darwin(v24);
  v74 = &v73 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = type metadata accessor for Separator();
  v82 = *(v92 - 8);
  __chkstk_darwin(v92);
  v93 = &v73 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_10002849C(&unk_10097DAF0, &qword_1007B2A30);
  v29 = *(v28 - 8);
  __chkstk_darwin(v28);
  v31 = &v73 - v30;
  v81 = sub_10002849C(&unk_1009731C0, &qword_1007B4578);
  v80 = *(v81 - 8);
  __chkstk_darwin(v81);
  v33 = &v73 - v32;
  sub_10002C0AC(a1, v95);
  sub_10002849C(&qword_100973D50, &unk_1007B3840);
  type metadata accessor for Lockup();
  result = swift_dynamicCast();
  if (result)
  {
    v73 = v94[0];
    (*(v29 + 16))(v31, v75, v28);
    type metadata accessor for NilState();
    v75 = v33;
    WritableStateLens.init(_:)();
    v35 = [v76 traitCollection];
    (*(v25 + 104))(v74, enum case for Separator.Position.bottom(_:), v24);
    *v23 = UIFontTextStyleBody;
    (*(v21 + 104))(v23, enum case for FontSource.textStyle(_:), v20);
    v96 = type metadata accessor for StaticDimension();
    v97 = &protocol witness table for StaticDimension;
    sub_1000056E0(v95);
    v94[3] = v20;
    v94[4] = &protocol witness table for FontSource;
    v36 = sub_1000056E0(v94);
    (*(v21 + 16))(v36, v23, v20);
    v37 = UIFontTextStyleBody;
    StaticDimension.init(_:scaledLike:)();
    (*(v21 + 8))(v23, v20);
    v38 = v93;
    Separator.init(position:leadingInset:trailingInset:verticalOutset:)();
    v39 = v90;
    static ComponentLayoutOptions.separatorHidden.getter();
    sub_100708188(&qword_10097DB10, &type metadata accessor for ComponentLayoutOptions, &protocol conformance descriptor for ComponentLayoutOptions);
    v40 = v91;
    v41 = dispatch thunk of SetAlgebra.isSuperset(of:)();
    v42 = *(v78 + 8);
    v42(v39, v40);
    v76 = v35;
    if (v41)
    {
      v43 = v82;
      v44 = v77;
      (*(v82 + 56))(v77, 1, 1, v92);
      v45 = OBJC_IVAR____TtC8AppStore29SmallLockupCollectionViewCell_separator;
      v46 = v89;
      swift_beginAccess();
      sub_1000C112C(v44, &v46[v45], &unk_100970E10, &qword_1007B46A0);
      swift_endAccess();
      sub_1002B0944();
      sub_10002B894(v44, &unk_100970E10, &qword_1007B46A0);
      v47 = v90;
      static ComponentLayoutOptions.fixedHeightContainer.getter();
      v48 = v91;
      LOBYTE(v45) = dispatch thunk of SetAlgebra.isSuperset(of:)();
      v42(v47, v48);
      v49 = [v46 contentView];
      v50 = v49;
      if (v45)
      {
        [v49 layoutMargins];
        [v50 setLayoutMargins:?];
      }

      else
      {
        Separator.verticalOutset.getter();
        sub_10002A400(v95, v96);
        AnyDimension.value(with:)();
        [v50 layoutMargins];
        [v50 setLayoutMargins:?];

        sub_100007000(v95);
      }
    }

    else
    {
      v51 = v38;
      v43 = v82;
      v52 = v77;
      v53 = v92;
      (*(v82 + 16))(v77, v51, v92);
      (*(v43 + 56))(v52, 0, 1, v53);
      v54 = OBJC_IVAR____TtC8AppStore29SmallLockupCollectionViewCell_separator;
      v46 = v89;
      swift_beginAccess();
      sub_1000C112C(v52, &v46[v54], &unk_100970E10, &qword_1007B46A0);
      swift_endAccess();
      sub_1002B0944();
      sub_10002B894(v52, &unk_100970E10, &qword_1007B46A0);
      v55 = [v46 contentView];
      [v55 layoutMargins];
      [v55 setLayoutMargins:?];

      v56 = v90;
      static ComponentLayoutOptions.hasBackground.getter();
      v57 = v91;
      v58 = dispatch thunk of SetAlgebra.isSuperset(of:)();
      v42(v56, v57);
      v59 = v46[OBJC_IVAR____TtC8AppStore29SmallLockupCollectionViewCell_hideSeparatorIndependentlyOfLayout];
      v46[OBJC_IVAR____TtC8AppStore29SmallLockupCollectionViewCell_hideSeparatorIndependentlyOfLayout] = v58 & 1;
      if ((v58 & 1) != v59)
      {
        v60 = *&v46[OBJC_IVAR____TtC8AppStore29SmallLockupCollectionViewCell_separatorView];
        if (v60)
        {
          v61 = 1.0;
          if (v58)
          {
            v61 = 0.0;
          }

          [v60 setAlpha:v61];
        }
      }
    }

    v62 = *&v46[OBJC_IVAR____TtC8AppStore29SmallLockupCollectionViewCell_lockupView];
    v63 = sub_10002849C(&unk_100973240, qword_1007B2220);
    v64 = v83;
    (*(*(v63 - 8) + 56))(v83, 1, 1, v63);
    v65 = type metadata accessor for OfferStyle();
    v66 = v84;
    (*(*(v65 - 8) + 56))(v84, 1, 1, v65);
    v67 = type metadata accessor for OfferEnvironment();
    v68 = v85;
    (*(*(v67 - 8) + 56))(v85, 1, 1, v67);
    v69 = sub_10002849C(&unk_1009701A0, &unk_1007B17F0);
    v70 = v87;
    (*(*(v69 - 8) + 56))(v87, 1, 1, v69);
    v71 = type metadata accessor for OfferTint();
    v72 = v86;
    (*(*(v71 - 8) + 56))(v86, 1, 1, v71);
    sub_1004F3190(v73, v62, v64, v88, 0, 0, v66, v68, v72, v70);
    sub_10002B894(v72, &unk_100973AD0, &unk_1007B17C0);
    v62[OBJC_IVAR____TtC8AppStore15SmallLockupView_enforceMaximumOfTwoLinesOverall] = 0;
    sub_10070AB34();
    [v62 setNeedsLayout];
    sub_10002B894(v70, &unk_100970150, &unk_1007BDDD0);
    sub_10002B894(v68, &unk_100970160, &unk_1007BDDE0);
    sub_10002B894(v66, &qword_100973AE0, &unk_1007B17D0);
    sub_10002B894(v64, &unk_100973230, &unk_1007B17E0);
    [v46 setNeedsLayout];

    (*(v43 + 8))(v93, v92);
    return (*(v80 + 8))(v75, v81);
  }

  return result;
}

uint64_t sub_1006EF444(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(void), void (*a8)(uint64_t, char *, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v26 = a8;
  v24 = a5;
  v25 = a6;
  v23 = a4;
  v12 = sub_10002849C(&unk_10097DAF0, &qword_1007B2A30);
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v22 - v14;
  v16 = sub_10002849C(&unk_1009731C0, &qword_1007B4578);
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v22 - v18;
  sub_10002C0AC(a1, v28);
  sub_10002849C(&qword_100973D50, &unk_1007B3840);
  a7(0);
  result = swift_dynamicCast();
  if (result)
  {
    v21 = v27;
    (*(v13 + 16))(v15, a2, v12);
    type metadata accessor for NilState();
    WritableStateLens.init(_:)();
    v26(v21, v19, a3, v23, v24, v25);

    return (*(v17 + 8))(v19, v16);
  }

  return result;
}

double sub_1006EF668(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v22 = a5;
  v23 = a6;
  v20 = a3;
  v21 = a4;
  ObjectType = swift_getObjectType();
  v9 = sub_10002849C(&unk_10097DAF0, &qword_1007B2A30);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v19 - v11;
  v13 = sub_10002849C(&unk_1009731C0, &qword_1007B4578);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v19 - v15;
  sub_10002C0AC(a1, v25);
  sub_10002849C(&qword_100973D50, &unk_1007B3840);
  type metadata accessor for PrivacyFooter();
  if (swift_dynamicCast())
  {
    v26 = v24;
    (*(v10 + 16))(v12, a2, v9);
    type metadata accessor for NilState();
    WritableStateLens.init(_:)();
    v18 = sub_100708188(&qword_100973280, type metadata accessor for PrivacyFooterCollectionViewCell, &unk_1007C9320);
    (*(v18 + 56))(&v26, v16, v20, v21, v22, v23, ObjectType, v18);
    (*(v14 + 8))(v16, v13);
  }

  return result;
}

uint64_t sub_1006EF8CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v7 = v6;
  v46 = a2;
  v47 = a6;
  v49 = a3;
  ObjectType = swift_getObjectType();
  v9 = sub_10002849C(&unk_100975ED0, qword_1007B46C0);
  __chkstk_darwin(v9 - 8);
  v11 = &v44 - v10;
  v12 = type metadata accessor for BreakoutDetailsView.Config(0);
  __chkstk_darwin(v12);
  v14 = &v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = (&v44 - v16);
  v18 = sub_10002849C(&unk_1009732B0, qword_1007B7860);
  v52 = *(v18 - 8);
  v53 = v18;
  __chkstk_darwin(v18);
  v48 = &v44 - v19;
  v20 = sub_10002849C(&unk_10097DAF0, &qword_1007B2A30);
  v21 = *(v20 - 8);
  __chkstk_darwin(v20);
  v23 = &v44 - v22;
  v24 = sub_10002849C(&unk_1009731C0, &qword_1007B4578);
  v50 = *(v24 - 8);
  v51 = v24;
  __chkstk_darwin(v24);
  v26 = &v44 - v25;
  sub_10002C0AC(a1, v57);
  sub_10002849C(&qword_100973D50, &unk_1007B3840);
  type metadata accessor for SmallBreakout();
  result = swift_dynamicCast();
  if (result)
  {
    (*(v21 + 16))(v23, v46, v20);
    type metadata accessor for NilState();
    WritableStateLens.init(_:)();
    v28 = [v47 snapshotPageTraitEnvironment];
    *&v7[OBJC_IVAR____TtC8AppStore31SmallBreakoutCollectionViewCell_pageTraits] = v28;
    swift_unknownObjectRetain();
    swift_unknownObjectRelease();
    [v7 setNeedsLayout];
    swift_unknownObjectRelease();
    SmallBreakout.details.getter();
    v29 = BreakoutDetails.badgeColorOverride.getter();

    v45 = v26;
    if (v29)
    {
      if (qword_10096D008 != -1)
      {
        swift_once();
      }

      v30 = sub_1000056A8(v12, qword_1009CDEA0);
      sub_1000C2608(v30, v17);
      v31 = *v17;
      v32 = v29;

      *v17 = v29;
      sub_1000C2608(v17, v14);
      sub_10002849C(&qword_100973F50, &qword_1007B4260);
      v33 = v48;
      Conditional<>.init(value:)();

      sub_1000C266C(v17);
    }

    else
    {
      if (qword_10096D008 != -1)
      {
        swift_once();
      }

      v34 = sub_1000056A8(v12, qword_1009CDEA0);
      sub_1000C2608(v34, v17);
      sub_10002849C(&qword_100973F50, &qword_1007B4260);
      v33 = v48;
      Conditional<>.init(value:)();
    }

    v35 = v53;
    v36 = SmallBreakout.details.getter();
    v37 = v52;
    (*(v52 + 16))(v11, v33, v35);
    (*(v37 + 56))(v11, 0, 1, v35);
    sub_1003A9938(v36, v11, v49);

    sub_10002B894(v11, &unk_100975ED0, qword_1007B46C0);
    v38 = SmallBreakout.backgroundColor.getter();
    if (!v38)
    {
      v38 = [objc_opt_self() clearColor];
    }

    v39 = v38;
    v40 = ObjectType;
    v56.receiver = v7;
    v56.super_class = ObjectType;
    objc_msgSendSuper2(&v56, "setBackgroundColor:", v38);
    v41 = *&v7[OBJC_IVAR____TtC8AppStore31SmallBreakoutCollectionViewCell_iconView];
    v55.receiver = v7;
    v55.super_class = v40;
    v42 = v41;
    v43 = objc_msgSendSuper2(&v55, "backgroundColor");
    ArtworkView.backgroundColor.setter();

    [v7 setNeedsLayout];

    (*(v37 + 8))(v33, v35);
    return (*(v50 + 8))(v45, v51);
  }

  return result;
}

uint64_t sub_1006EFEE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v54 = a6;
  v65 = a3;
  v53 = a2;
  v7 = sub_10002849C(&unk_100970E00, "ο\a");
  __chkstk_darwin(v7 - 8);
  v62 = &v51 - v8;
  v60 = type metadata accessor for OfferButtonSubtitlePosition();
  v56 = *(v60 - 8);
  __chkstk_darwin(v60);
  v57 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = sub_10002849C(&unk_1009701A0, &unk_1007B17F0);
  v59 = *(v61 - 8);
  __chkstk_darwin(v61);
  v58 = &v51 - v10;
  v11 = sub_10002849C(&unk_100970170, &unk_1007BDDF0);
  __chkstk_darwin(v11 - 8);
  v13 = &v51 - v12;
  v14 = type metadata accessor for OfferButtonPresenterViewAlignment();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v51 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_10002849C(&unk_100973230, &unk_1007B17E0);
  __chkstk_darwin(v18 - 8);
  v20 = &v51 - v19;
  v21 = sub_10002849C(&unk_10097DAF0, &qword_1007B2A30);
  v22 = *(v21 - 8);
  __chkstk_darwin(v21);
  v24 = &v51 - v23;
  v25 = sub_10002849C(&unk_1009731C0, &qword_1007B4578);
  v63 = *(v25 - 8);
  v64 = v25;
  __chkstk_darwin(v25);
  v27 = &v51 - v26;
  sub_10002C0AC(a1, v67);
  sub_10002849C(&qword_100973D50, &unk_1007B3840);
  type metadata accessor for ArcadeShowcase();
  result = swift_dynamicCast();
  if (result)
  {
    v51 = v13;
    v29 = v66;
    (*(v22 + 16))(v24, v53, v21);
    type metadata accessor for NilState();
    WritableStateLens.init(_:)();
    v30 = v55;
    v31 = [v55 contentView];
    [v54 pageMarginInsets];
    [v31 setLayoutMargins:?];

    v54 = v29;
    v32 = ArcadeShowcase.iconArtworks.getter();
    v33 = v30;
    v52 = v27;
    if (v32)
    {
      if (v32 >> 62)
      {
        v37 = v32;
        v38 = _CocoaArrayWrapper.endIndex.getter();
        v32 = v37;
        if (v38)
        {
          goto LABEL_5;
        }
      }

      else if (*((v32 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_5:
        v34 = v32;
        type metadata accessor for ArtworkLoader();
        type metadata accessor for BaseObjectGraph();
        inject<A, B>(_:from:)();
        v35 = v67[0];
        v36 = *&v33[OBJC_IVAR____TtC8AppStore32ArcadeShowcaseCollectionViewCell_iconGridView];
        [v36 setHidden:0];
        *&v36[OBJC_IVAR____TtC8AppStore12IconGridView_impressionableArtworks] = v34;

        *&v36[OBJC_IVAR____TtC8AppStore12IconGridView_artworkLoader] = v35;

        sub_1006E7990(v34, v35);

LABEL_9:
        v55 = *&v33[OBJC_IVAR____TtC8AppStore32ArcadeShowcaseCollectionViewCell_offerButton];
        v39 = ArcadeShowcase.offerDisplayProperties.getter();
        v40 = ArcadeShowcase.unsubscribedAction.getter();
        v41 = ArcadeShowcase.subscribedAction.getter();
        (*(v15 + 104))(v17, enum case for OfferButtonPresenterViewAlignment.center(_:), v14);
        (*(v15 + 56))(v51, 1, 1, v14);
        sub_100708188(&unk_100970190, &type metadata accessor for OfferButtonPresenterViewAlignment, &protocol conformance descriptor for OfferButtonPresenterViewAlignment);
        AccessibilityConditional.init(value:axValue:)();
        v42 = sub_10002849C(&unk_100973240, qword_1007B2220);
        (*(*(v42 - 8) + 56))(v20, 0, 1, v42);
        v43 = v56;
        v44 = v60;
        (*(v56 + 104))(v57, enum case for OfferButtonSubtitlePosition.above(_:), v60);
        (*(v43 + 56))(v62, 1, 1, v44);
        sub_100708188(&qword_100987130, &type metadata accessor for OfferButtonSubtitlePosition, &protocol conformance descriptor for OfferButtonSubtitlePosition);
        v45 = v58;
        AccessibilityConditional.init(value:axValue:)();
        sub_10064AFA4(v39, v40, v41, v20, v45, v65, 0, 0);

        (*(v59 + 8))(v45, v61);
        sub_10002B894(v20, &unk_100973230, &unk_1007B17E0);
        type metadata accessor for ArcadeSubscriptionManager();
        type metadata accessor for BaseObjectGraph();
        inject<A, B>(_:from:)();
        v46 = v67[0];
        ArcadeShowcase.subscribedDescription.getter();
        ArcadeShowcase.unsubscribedDescription.getter();
        v47 = type metadata accessor for ArcadeOfferLabelPresenter();
        swift_allocObject();
        v48 = v46;
        v49 = ArcadeOfferLabelPresenter.init(subscribedText:nonsubscribedText:subscriptionManager:)();
        sub_100708188(&unk_100973250, type metadata accessor for ArcadeShowcaseCollectionViewCell, &unk_1007E0000);
        swift_unknownObjectRetain();
        ArcadeOfferLabelPresenter.view.setter();
        v67[3] = v47;
        v67[0] = v49;
        v50 = OBJC_IVAR____TtC8AppStore32ArcadeShowcaseCollectionViewCell_offerLabelPresenter;
        swift_beginAccess();

        sub_1000315F8(v67, &v33[v50], &unk_1009711D0, &unk_1007B1A10);
        swift_endAccess();
        [v33 setNeedsLayout];

        return (*(v63 + 8))(v52, v64);
      }
    }

    [*&v30[OBJC_IVAR____TtC8AppStore32ArcadeShowcaseCollectionViewCell_iconGridView] setHidden:1];
    goto LABEL_9;
  }

  return result;
}

uint64_t sub_1006F088C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(void), void (*a8)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v26 = a8;
  v24 = a5;
  v25 = a6;
  v23 = a4;
  v12 = sub_10002849C(&unk_10097DAF0, &qword_1007B2A30);
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v22 - v14;
  v16 = sub_10002849C(&unk_1009731C0, &qword_1007B4578);
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v22 - v18;
  sub_10002C0AC(a1, v28);
  sub_10002849C(&qword_100973D50, &unk_1007B3840);
  a7(0);
  result = swift_dynamicCast();
  if (result)
  {
    v21 = v27;
    (*(v13 + 16))(v15, a2, v12);
    type metadata accessor for NilState();
    WritableStateLens.init(_:)();
    v26(v21, a3, v23, v24, v25);

    return (*(v17 + 8))(v19, v16);
  }

  return result;
}

uint64_t sub_1006F0AAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v37 = a6;
  v35 = a4;
  v36 = a5;
  v33 = a2;
  v34 = a3;
  v38 = a1;
  v10 = sub_10002849C(&unk_10097DAF0, &qword_1007B2A30);
  v31 = *(v10 - 8);
  v32 = v10;
  __chkstk_darwin(v10);
  v12 = v28 - v11;
  v28[1] = swift_getAssociatedTypeWitness();
  v13 = type metadata accessor for WritableStateLens();
  v29 = *(v13 - 8);
  v30 = v13;
  __chkstk_darwin(v13);
  v15 = v28 - v14;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v17 = type metadata accessor for Optional();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = v28 - v19;
  v21 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin(v22);
  v24 = v28 - v23;
  sub_10002C0AC(v38, v39);
  sub_10002849C(&qword_100973D50, &unk_1007B3840);
  v25 = swift_dynamicCast();
  v26 = *(v21 + 56);
  if (v25)
  {
    v26(v20, 0, 1, AssociatedTypeWitness);
    (*(v21 + 32))(v24, v20, AssociatedTypeWitness);
    (*(v31 + 16))(v12, v33, v32);
    WritableStateLens.init(_:)();
    (*(a8 + 56))(v24, v15, v34, v35, v36, v37, a7, a8);
    (*(v29 + 8))(v15, v30);
    return (*(v21 + 8))(v24, AssociatedTypeWitness);
  }

  else
  {
    v26(v20, 1, 1, AssociatedTypeWitness);
    return (*(v18 + 8))(v20, v17);
  }
}

uint64_t sub_1006F0E64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v24 = a3;
  v23 = a2;
  v20 = a1;
  v22 = sub_10002849C(&unk_10097DAF0, &qword_1007B2A30);
  v7 = *(v22 - 8);
  __chkstk_darwin(v22);
  v9 = &v19 - v8;
  swift_getAssociatedTypeWitness();
  v21 = type metadata accessor for WritableStateLens();
  v10 = *(v21 - 8);
  __chkstk_darwin(v21);
  v12 = &v19 - v11;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v14 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin(AssociatedTypeWitness);
  v16 = &v19 - v15;
  sub_10002C0AC(v20, v25);
  sub_10002849C(&qword_100973D50, &unk_1007B3840);
  swift_dynamicCast();
  (*(v7 + 16))(v9, v23, v22);
  WritableStateLens.init(_:)();
  v17 = (*(a5 + 64))(v16, v12, v24, a4, a5);
  (*(v10 + 8))(v12, v21);
  (*(v14 + 8))(v16, AssociatedTypeWitness);
  return v17;
}

double sub_1006F1124(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, double a7, double a8)
{
  v31 = a6;
  v29 = a4;
  v30 = a5;
  v27 = a3;
  v28 = a2;
  v11 = sub_10002849C(qword_10097DB40, qword_1007C5240);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v26 - v13;
  v15 = sub_10002849C(&qword_10096FEE8, &qword_1007B15C8);
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v26 - v17;
  v19 = type metadata accessor for Annotation();
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v22 = &v26 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10002C0AC(a1, v32);
  sub_10002849C(&qword_100973D50, &unk_1007B3840);
  swift_dynamicCast();
  (*(v12 + 16))(v14, v27, v11);
  StateLens.init(_:)();
  v23 = sub_100708188(&unk_100992FC0, type metadata accessor for AnnotationCollectionViewCell, &unk_1007B1528);
  v24 = (*(v23 + 48))(v22, v28, v18, v29, v30, v31, a7, a8);
  (*(v16 + 8))(v18, v15);
  (*(v20 + 8))(v22, v19);
  return v24;
}

double sub_1006F141C(uint64_t a1, double a2, double a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8)
{
  v13 = sub_10002849C(qword_10097DB40, qword_1007C5240);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v23[-v15];
  v17 = sub_10002849C(&qword_100970F20, &qword_1007B24B8);
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v23[-v19];
  sub_10002C0AC(a1, v23);
  sub_10002849C(&qword_100973D50, &unk_1007B3840);
  type metadata accessor for ProductMedia();
  swift_dynamicCast();
  (*(v14 + 16))(v16, a5, v13);
  type metadata accessor for NilState();
  StateLens.init(_:)();
  v21 = sub_10057C46C(v24, 0, 0, a8, 0.0, 0.0, a2, a3, a2);
  (*(v18 + 8))(v20, v17);

  return v21;
}

double sub_1006F1650(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, double a8, double a9)
{
  WitnessTable = swift_getWitnessTable();

  return sub_1006ED3AC(a1, a2, a3, a4, a5, a6, a7, WitnessTable, a8, a9);
}

uint64_t sub_1006F1704(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  WitnessTable = swift_getWitnessTable();

  return sub_1006F0AAC(a1, a2, a3, a4, a5, a6, a7, WitnessTable);
}

uint64_t sub_1006F17A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  WitnessTable = swift_getWitnessTable();

  return sub_1006F0E64(a1, a2, a3, a4, WitnessTable);
}

double sub_1006F1838(uint64_t a1, double a2, double a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8)
{
  v14 = sub_10002849C(qword_10097DB40, qword_1007C5240);
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v26[-v16];
  v18 = sub_10002849C(&qword_100970F20, &qword_1007B24B8);
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = &v26[-v20];
  sub_10002C0AC(a1, v26);
  sub_10002849C(&qword_100973D50, &unk_1007B3840);
  type metadata accessor for AppPromotion();
  swift_dynamicCast();
  (*(v15 + 16))(v17, a5, v14);
  type metadata accessor for NilState();
  StateLens.init(_:)();
  v22 = v27;
  ObjectType = swift_getObjectType();
  v24 = sub_100100904(v22, a8, v8, ObjectType, a2, a3);
  (*(v19 + 8))(v21, v18);

  return v24;
}

double sub_1006F1AA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, double a8, double a9)
{
  WitnessTable = swift_getWitnessTable();

  return sub_1006ED3AC(a1, a2, a3, a4, a5, a6, a7, WitnessTable, a8, a9);
}

uint64_t sub_1006F1B5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  WitnessTable = swift_getWitnessTable();

  return sub_1006F0AAC(a1, a2, a3, a4, a5, a6, a7, WitnessTable);
}

uint64_t sub_1006F1BF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  WitnessTable = swift_getWitnessTable();

  return sub_1006F0E64(a1, a2, a3, a4, WitnessTable);
}

double sub_1006F1CC4(double a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = sub_10002849C(qword_10097DB40, qword_1007C5240);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v21 - v11;
  v13 = sub_10002849C(&qword_100970F20, &qword_1007B24B8);
  v14 = *(v13 - 8);
  v15 = __chkstk_darwin(v13);
  v17 = &v21 - v16;
  (*(v10 + 16))(v12, a5, v9, v15);
  type metadata accessor for NilState();
  StateLens.init(_:)();
  type metadata accessor for SmallPlayerCardView();
  static SmallPlayerCardView.size(fitting:traitEnvironment:)();
  v19 = v18;
  (*(v14 + 8))(v17, v13);
  return v19;
}

double sub_1006F1E90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, double a8, double a9)
{
  WitnessTable = swift_getWitnessTable();

  return sub_1006ED3AC(a1, a2, a3, a4, a5, a6, a7, WitnessTable, a8, a9);
}

uint64_t sub_1006F1F44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  WitnessTable = swift_getWitnessTable();

  return sub_1006F0AAC(a1, a2, a3, a4, a5, a6, a7, WitnessTable);
}

uint64_t sub_1006F1FE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  WitnessTable = swift_getWitnessTable();

  return sub_1006F0E64(a1, a2, a3, a4, WitnessTable);
}

double sub_1006F20D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, double a8, double a9)
{
  WitnessTable = swift_getWitnessTable();

  return sub_1006ED3AC(a1, a2, a3, a4, a5, a6, a7, WitnessTable, a8, a9);
}

uint64_t sub_1006F218C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  WitnessTable = swift_getWitnessTable();

  return sub_1006F0AAC(a1, a2, a3, a4, a5, a6, a7, WitnessTable);
}

uint64_t sub_1006F2228(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  WitnessTable = swift_getWitnessTable();

  return sub_1006F0E64(a1, a2, a3, a4, WitnessTable);
}

double sub_1006F22C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, double a8, double a9)
{
  WitnessTable = swift_getWitnessTable();

  return sub_1006ED3AC(a1, a2, a3, a4, a5, a6, a7, WitnessTable, a8, a9);
}

uint64_t sub_1006F2374(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  WitnessTable = swift_getWitnessTable();

  return sub_1006F0AAC(a1, a2, a3, a4, a5, a6, a7, WitnessTable);
}

uint64_t sub_1006F2410(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  WitnessTable = swift_getWitnessTable();

  return sub_1006F0E64(a1, a2, a3, a4, WitnessTable);
}

double sub_1006F248C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, double a8, double a9)
{
  WitnessTable = swift_getWitnessTable();

  return sub_1006ED3AC(a1, a2, a3, a4, a5, a6, a7, WitnessTable, a8, a9);
}

uint64_t sub_1006F2540(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  WitnessTable = swift_getWitnessTable();

  return sub_1006F0AAC(a1, a2, a3, a4, a5, a6, a7, WitnessTable);
}

uint64_t sub_1006F25DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  WitnessTable = swift_getWitnessTable();

  return sub_1006F0E64(a1, a2, a3, a4, WitnessTable);
}

double sub_1006F2658(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, double a8, double a9)
{
  WitnessTable = swift_getWitnessTable();

  return sub_1006ED3AC(a1, a2, a3, a4, a5, a6, a7, WitnessTable, a8, a9);
}

uint64_t sub_1006F270C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  WitnessTable = swift_getWitnessTable();

  return sub_1006F0AAC(a1, a2, a3, a4, a5, a6, a7, WitnessTable);
}

uint64_t sub_1006F27A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  WitnessTable = swift_getWitnessTable();

  return sub_1006F0E64(a1, a2, a3, a4, WitnessTable);
}

double sub_1006F2824(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v10 = sub_10002849C(qword_10097DB40, qword_1007C5240);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v20 - v12;
  v14 = sub_10002849C(&qword_100970F20, &qword_1007B24B8);
  v15 = *(v14 - 8);
  v16 = __chkstk_darwin(v14);
  v18 = &v20 - v17;
  (*(v11 + 16))(v13, a4, v10, v16);
  type metadata accessor for NilState();
  StateLens.init(_:)();
  sub_1005AF874(a7);
  (*(v15 + 8))(v18, v14);
  return a1;
}

double sub_1006F29E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, double a8, double a9)
{
  WitnessTable = swift_getWitnessTable();

  return sub_1006ED3AC(a1, a2, a3, a4, a5, a6, a7, WitnessTable, a8, a9);
}

uint64_t sub_1006F2A98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  WitnessTable = swift_getWitnessTable();

  return sub_1006F0AAC(a1, a2, a3, a4, a5, a6, a7, WitnessTable);
}

uint64_t sub_1006F2B34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  WitnessTable = swift_getWitnessTable();

  return sub_1006F0E64(a1, a2, a3, a4, WitnessTable);
}

double sub_1006F2BE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v9 = sub_10002849C(qword_10097DB40, qword_1007C5240);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v21 - v11;
  v13 = sub_10002849C(&qword_100970F20, &qword_1007B24B8);
  v14 = *(v13 - 8);
  v15 = __chkstk_darwin(v13);
  v17 = &v21 - v16;
  (*(v10 + 16))(v12, a3, v9, v15);
  type metadata accessor for NilState();
  StateLens.init(_:)();
  sub_1002A0A18(a2, a6);
  v19 = v18;
  (*(v14 + 8))(v17, v13);
  return v19;
}

void sub_1006F2DDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_10002849C(qword_10097DB40, qword_1007C5240);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v10 - v6;
  v8 = sub_10002849C(&qword_100970F20, &qword_1007B24B8);
  v9 = __chkstk_darwin(v8 - 8);
  (*(v5 + 16))(v7, a3, v4, v9);
  type metadata accessor for NilState();
  StateLens.init(_:)();
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

double sub_1006F2F4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, double a8, double a9)
{
  WitnessTable = swift_getWitnessTable();

  return sub_1006ED3AC(a1, a2, a3, a4, a5, a6, a7, WitnessTable, a8, a9);
}

uint64_t sub_1006F3000(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  WitnessTable = swift_getWitnessTable();

  return sub_1006F0AAC(a1, a2, a3, a4, a5, a6, a7, WitnessTable);
}

uint64_t sub_1006F309C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  WitnessTable = swift_getWitnessTable();

  return sub_1006F0E64(a1, a2, a3, a4, WitnessTable);
}

uint64_t sub_1006F3138(uint64_t a1, uint64_t a2)
{
  v3 = sub_10002849C(&unk_10097DAF0, &qword_1007B2A30);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v13[-v5];
  v7 = sub_10002849C(&qword_100975768, &qword_1007BA168);
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v13[-v10];
  (*(v4 + 16))(v6, a2, v3, v9);
  WritableStateLens.init(_:)();
  sub_100135E04();
  WritableStateLens<A>.updateValue(_:)();
  (*(v8 + 8))(v11, v7);
  return 3;
}

double sub_1006F3458(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, double a8, double a9)
{
  WitnessTable = swift_getWitnessTable();

  return sub_1006ED3AC(a1, a2, a3, a4, a5, a6, a7, WitnessTable, a8, a9);
}

uint64_t sub_1006F350C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  WitnessTable = swift_getWitnessTable();

  return sub_1006F0AAC(a1, a2, a3, a4, a5, a6, a7, WitnessTable);
}

uint64_t sub_1006F35A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  WitnessTable = swift_getWitnessTable();

  return sub_1006F0E64(a1, a2, a3, a4, WitnessTable);
}

double sub_1006F3624(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, double a8, double a9)
{
  WitnessTable = swift_getWitnessTable();

  return sub_1006ED3AC(a1, a2, a3, a4, a5, a6, a7, WitnessTable, a8, a9);
}

uint64_t sub_1006F36D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  WitnessTable = swift_getWitnessTable();

  return sub_1006F0AAC(a1, a2, a3, a4, a5, a6, a7, WitnessTable);
}

uint64_t sub_1006F3774(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  WitnessTable = swift_getWitnessTable();

  return sub_1006F0E64(a1, a2, a3, a4, WitnessTable);
}

double sub_1006F3890(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, double a8, double a9)
{
  WitnessTable = swift_getWitnessTable();

  return sub_1006ED3AC(a1, a2, a3, a4, a5, a6, a7, WitnessTable, a8, a9);
}

uint64_t sub_1006F3944(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  WitnessTable = swift_getWitnessTable();

  return sub_1006F0AAC(a1, a2, a3, a4, a5, a6, a7, WitnessTable);
}

uint64_t sub_1006F39E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  WitnessTable = swift_getWitnessTable();

  return sub_1006F0E64(a1, a2, a3, a4, WitnessTable);
}

double sub_1006F3A5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, double a8, double a9)
{
  WitnessTable = swift_getWitnessTable();

  return sub_1006ED3AC(a1, a2, a3, a4, a5, a6, a7, WitnessTable, a8, a9);
}

uint64_t sub_1006F3B10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  WitnessTable = swift_getWitnessTable();

  return sub_1006F0AAC(a1, a2, a3, a4, a5, a6, a7, WitnessTable);
}

uint64_t sub_1006F3BAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  WitnessTable = swift_getWitnessTable();

  return sub_1006F0E64(a1, a2, a3, a4, WitnessTable);
}

double sub_1006F3C28(double a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = sub_10002849C(qword_10097DB40, qword_1007C5240);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v23 - v11;
  v13 = sub_10002849C(&qword_100970F20, &qword_1007B24B8);
  v14 = *(v13 - 8);
  v15 = __chkstk_darwin(v13);
  v17 = &v23 - v16;
  (*(v10 + 16))(v12, a5, v9, v15);
  type metadata accessor for NilState();
  StateLens.init(_:)();
  if (qword_10096D4D0 != -1)
  {
    swift_once();
  }

  v18 = type metadata accessor for FlowcaseItemLayout.Metrics();
  sub_1000056A8(v18, qword_1009CEA50);
  type metadata accessor for FlowcaseItemLayout();
  sub_100708188(&unk_100979610, &type metadata accessor for FlowcaseItemLayout, &protocol conformance descriptor for FlowcaseItemLayout);
  dispatch thunk of static EstimatedMeasurable.estimatedMeasurements(fitting:using:in:)();
  if (qword_10096D4D8 != -1)
  {
    swift_once();
  }

  v19 = type metadata accessor for Separator();
  sub_1000056A8(v19, qword_1009CEA68);
  CGSize.adding(separator:in:)();
  v21 = v20;
  (*(v14 + 8))(v17, v13);
  return v21;
}

double sub_1006F3F4C(uint64_t a1, double a2, double a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v29[0] = a11;
  v17 = sub_10002849C(qword_10097DB40, qword_1007C5240);
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = v29 - v19;
  v21 = sub_10002849C(&qword_100970F20, &qword_1007B24B8);
  v22 = *(v21 - 8);
  __chkstk_darwin(v21);
  v24 = v29 - v23;
  sub_10002C0AC(a1, v30);
  sub_10002849C(&qword_100973D50, &unk_1007B3840);
  type metadata accessor for AppEvent();
  swift_dynamicCast();
  (*(v18 + 16))(v20, a5, v17);
  type metadata accessor for NilState();
  StateLens.init(_:)();
  v25 = v31;
  ObjectType = swift_getObjectType();
  v27 = (v29[0])(v25, a8, a6, v29[1], ObjectType, a2, a3);
  (*(v22 + 8))(v24, v21);

  return v27;
}

double sub_1006F41C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, double a8, double a9)
{
  WitnessTable = swift_getWitnessTable();

  return sub_1006ED3AC(a1, a2, a3, a4, a5, a6, a7, WitnessTable, a8, a9);
}

uint64_t sub_1006F4274(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  WitnessTable = swift_getWitnessTable();

  return sub_1006F0AAC(a1, a2, a3, a4, a5, a6, a7, WitnessTable);
}

uint64_t sub_1006F4310(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  WitnessTable = swift_getWitnessTable();

  return sub_1006F0E64(a1, a2, a3, a4, WitnessTable);
}

double sub_1006F438C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, double a8, double a9)
{
  WitnessTable = swift_getWitnessTable();

  return sub_1006ED3AC(a1, a2, a3, a4, a5, a6, a7, WitnessTable, a8, a9);
}

uint64_t sub_1006F4440(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  WitnessTable = swift_getWitnessTable();

  return sub_1006F0AAC(a1, a2, a3, a4, a5, a6, a7, WitnessTable);
}

uint64_t sub_1006F44DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  WitnessTable = swift_getWitnessTable();

  return sub_1006F0E64(a1, a2, a3, a4, WitnessTable);
}

double sub_1006F4570(uint64_t a1, double a2, double a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8)
{
  v13 = sub_10002849C(qword_10097DB40, qword_1007C5240);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v25[-v15];
  v17 = sub_10002849C(&qword_100970F20, &qword_1007B24B8);
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v25[-v19];
  sub_10002C0AC(a1, v25);
  sub_10002849C(&qword_100973D50, &unk_1007B3840);
  type metadata accessor for AppPromotion();
  swift_dynamicCast();
  (*(v14 + 16))(v16, a5, v13);
  type metadata accessor for NilState();
  StateLens.init(_:)();
  v21 = v26;
  ObjectType = swift_getObjectType();
  v23 = sub_1005397D8(v21, a8, ObjectType, a2, a3);
  (*(v18 + 8))(v20, v17);

  return v23;
}

double sub_1006F47F4(uint64_t a1, double a2, double a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8)
{
  v13 = sub_10002849C(qword_10097DB40, qword_1007C5240);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v23[-v15];
  v17 = sub_10002849C(&qword_100970F20, &qword_1007B24B8);
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v23[-v19];
  sub_10002C0AC(a1, v23);
  sub_10002849C(&qword_100973D50, &unk_1007B3840);
  type metadata accessor for Ratings();
  swift_dynamicCast();
  (*(v14 + 16))(v16, a5, v13);
  type metadata accessor for NilState();
  StateLens.init(_:)();
  v21 = sub_10005CE38(v24, a8, 1, a2, a3);
  (*(v18 + 8))(v20, v17);

  return v21;
}

double sub_1006F4A20(uint64_t a1, double a2, double a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8)
{
  v13 = sub_10002849C(qword_10097DB40, qword_1007C5240);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v22[-v15];
  v17 = sub_10002849C(&qword_100970F20, &qword_1007B24B8);
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v22[-v19];
  sub_10002C0AC(a1, v22);
  sub_10002849C(&qword_100973D50, &unk_1007B3840);
  type metadata accessor for AppShowcase();
  swift_dynamicCast();
  (*(v14 + 16))(v16, a5, v13);
  type metadata accessor for NilState();
  StateLens.init(_:)();
  sub_100104C50(v23, a8, a2, a3);
  (*(v18 + 8))(v20, v17);

  return a2;
}

double sub_1006F4CC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, double a8, double a9)
{
  WitnessTable = swift_getWitnessTable();

  return sub_1006ED3AC(a1, a2, a3, a4, a5, a6, a7, WitnessTable, a8, a9);
}

uint64_t sub_1006F4D7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  WitnessTable = swift_getWitnessTable();

  return sub_1006F0AAC(a1, a2, a3, a4, a5, a6, a7, WitnessTable);
}

uint64_t sub_1006F4E18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  WitnessTable = swift_getWitnessTable();

  return sub_1006F0E64(a1, a2, a3, a4, WitnessTable);
}

double sub_1006F4E94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, double a8, double a9)
{
  WitnessTable = swift_getWitnessTable();

  return sub_1006ED3AC(a1, a2, a3, a4, a5, a6, a7, WitnessTable, a8, a9);
}

uint64_t sub_1006F4F48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  WitnessTable = swift_getWitnessTable();

  return sub_1006F0AAC(a1, a2, a3, a4, a5, a6, a7, WitnessTable);
}

uint64_t sub_1006F4FE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  WitnessTable = swift_getWitnessTable();

  return sub_1006F0E64(a1, a2, a3, a4, WitnessTable);
}

double sub_1006F5060(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v10 = sub_10002849C(qword_10097DB40, qword_1007C5240);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v22 - v12;
  v14 = sub_10002849C(&qword_100970F20, &qword_1007B24B8);
  v15 = *(v14 - 8);
  v16 = __chkstk_darwin(v14);
  v18 = &v22 - v17;
  (*(v11 + 16))(v13, a4, v10, v16);
  type metadata accessor for NilState();
  StateLens.init(_:)();
  v19 = [a7 snapshotPageTraitEnvironment];
  swift_getObjectType();
  v20 = sub_10077DC28(v19, a1);
  swift_unknownObjectRelease();
  (*(v15 + 8))(v18, v14);
  return v20;
}

double sub_1006F5250(double a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_10002849C(qword_10097DB40, qword_1007C5240);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v17 - v8;
  v10 = sub_10002849C(&qword_100970F20, &qword_1007B24B8);
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = &v17 - v13;
  (*(v7 + 16))(v9, a4, v6, v12);
  type metadata accessor for NilState();
  StateLens.init(_:)();
  if (qword_10096D050 != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for AspectRatio();
  sub_1000056A8(v15, qword_1009CDF98);
  AspectRatio.height(fromWidth:)();
  (*(v11 + 8))(v14, v10);
  return a1;
}

uint64_t sub_1006F5460(uint64_t a1, uint64_t a2)
{
  v3 = sub_10002849C(&unk_10097DAF0, &qword_1007B2A30);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v13 - v5;
  v7 = sub_10002849C(&unk_1009731C0, &qword_1007B4578);
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v13 - v10;
  (*(v4 + 16))(v6, a2, v3, v9);
  type metadata accessor for NilState();
  WritableStateLens.init(_:)();
  (*(v8 + 8))(v11, v7);
  return 0;
}

double sub_1006F5620(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, double a8, double a9)
{
  WitnessTable = swift_getWitnessTable();

  return sub_1006ED3AC(a1, a2, a3, a4, a5, a6, a7, WitnessTable, a8, a9);
}

uint64_t sub_1006F56D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  WitnessTable = swift_getWitnessTable();

  return sub_1006F0AAC(a1, a2, a3, a4, a5, a6, a7, WitnessTable);
}

uint64_t sub_1006F5770(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  WitnessTable = swift_getWitnessTable();

  return sub_1006F0E64(a1, a2, a3, a4, WitnessTable);
}

double sub_1006F57EC(uint64_t a1, double a2, double a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v13 = sub_10002849C(qword_10097DB40, qword_1007C5240);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v23[-v15];
  v17 = sub_10002849C(&qword_100970F20, &qword_1007B24B8);
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v23[-v19];
  sub_10002C0AC(a1, v23);
  sub_10002849C(&qword_100973D50, &unk_1007B3840);
  type metadata accessor for UpsellBreakout();
  swift_dynamicCast();
  (*(v14 + 16))(v16, a5, v13);
  type metadata accessor for NilState();
  StateLens.init(_:)();
  v21 = sub_100757820(a2, a3, v24, a8);
  (*(v18 + 8))(v20, v17);

  return v21;
}

uint64_t sub_1006F5A0C(uint64_t a1, uint64_t a2)
{
  v3 = sub_10002849C(&unk_10097DAF0, &qword_1007B2A30);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v13 - v5;
  v7 = sub_10002849C(&unk_1009731C0, &qword_1007B4578);
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v13 - v10;
  (*(v4 + 16))(v6, a2, v3, v9);
  type metadata accessor for NilState();
  WritableStateLens.init(_:)();
  (*(v8 + 8))(v11, v7);
  return 3;
}

double sub_1006F5B98(uint64_t a1, uint64_t a2, double a3, double a4, uint64_t a5, void *a6)
{
  v42 = type metadata accessor for FootnoteLayout.Metrics();
  v40 = *(v42 - 8);
  __chkstk_darwin(v42);
  v43 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = type metadata accessor for FootnoteLayout();
  v45 = *(v46 - 8);
  __chkstk_darwin(v46);
  v44 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for LabelPlaceholderCompatibility();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_10002849C(qword_10097DB40, qword_1007C5240);
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v38 - v17;
  v41 = sub_10002849C(&qword_100970F20, &qword_1007B24B8);
  v39 = *(v41 - 8);
  __chkstk_darwin(v41);
  v20 = &v38 - v19;
  sub_10002C0AC(a1, v53);
  sub_10002849C(&qword_100973D50, &unk_1007B3840);
  type metadata accessor for Footnote();
  swift_dynamicCast();
  (*(v16 + 16))(v18, a2, v15);
  type metadata accessor for NilState();
  v38 = v20;
  StateLens.init(_:)();
  Footnote.text.getter();
  v21 = Footnote.presentationStyle.getter();
  sub_100005744(0, &qword_1009730E0, UIFont_ptr);
  if (qword_10096DE10 != -1)
  {
    swift_once();
  }

  v22 = type metadata accessor for FontUseCase();
  sub_1000056A8(v22, qword_1009D09B0);
  v47 = a6;
  v23 = [a6 traitCollection];
  v24 = static UIFont.preferredFont(forUseWith:compatibleWith:)();

  v25 = type metadata accessor for Feature();
  v53[3] = v25;
  v53[4] = sub_100708188(&qword_100972E50, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
  v26 = sub_1000056E0(v53);
  (*(*(v25 - 8) + 104))(v26, enum case for Feature.measurement_with_labelplaceholder(_:), v25);
  v27 = v24;
  isFeatureEnabled(_:)();
  sub_100007000(v53);
  LabelPlaceholderCompatibility.init(text:font:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:shouldUseLabelPlaceholder:)();
  LabelPlaceholderCompatibility.layoutTextView.getter();
  (*(v12 + 8))(v14, v11);
  if ((v21 & 2) != 0)
  {
    if (qword_10096CF48 != -1)
    {
      swift_once();
    }

    [qword_1009CDB60 size];
    v28 = type metadata accessor for LayoutViewPlaceholder();
    swift_allocObject();
    v29 = LayoutViewPlaceholder.init(representing:)();
    *(&v51 + 1) = v28;
    v52 = &protocol witness table for LayoutViewPlaceholder;
    *&v50 = v29;
  }

  else
  {
    v52 = 0;
    v50 = 0u;
    v51 = 0u;
  }

  v30 = v47;
  if (qword_10096CF30 != -1)
  {
    swift_once();
  }

  v31 = v42;
  v32 = sub_1000056A8(v42, qword_1009CDB48);
  (*(v40 + 16))(v43, v32, v31);
  sub_10002C0AC(v53, v49);
  sub_10005FC74(&v50, v48);
  v33 = v44;
  FootnoteLayout.init(metrics:labelView:chevronView:)();
  [v30 pageMarginInsets];
  CGSize.subtracting(insets:)();
  sub_100708188(&qword_100992FD0, &type metadata accessor for FootnoteLayout, &protocol conformance descriptor for FootnoteLayout);
  v34 = v46;
  dispatch thunk of Measurable.measurements(fitting:in:)();
  CGSize.adding(outsets:)();
  v36 = v35;

  (*(v45 + 8))(v33, v34);
  sub_100007000(v53);
  (*(v39 + 8))(v38, v41);
  sub_10002B894(&v50, &qword_100975610, &qword_1007B5690);

  return v36;
}

double sub_1006F6338(double a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v34 = a4;
  v35 = a5;
  v9 = type metadata accessor for FloatingPointRoundingRule();
  v32 = *(v9 - 8);
  v33 = v9;
  __chkstk_darwin(v9);
  v31 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Separator();
  v37 = *(v11 - 8);
  v38 = v11;
  __chkstk_darwin(v11);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for ComponentLayoutOptions();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_10002849C(qword_10097DB40, qword_1007C5240);
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = &v31 - v20;
  v36 = sub_10002849C(&qword_100970F20, &qword_1007B24B8);
  v22 = *(v36 - 8);
  v23 = __chkstk_darwin(v36);
  v25 = &v31 - v24;
  (*(v19 + 16))(v21, v34, v18, v23);
  type metadata accessor for NilState();
  StateLens.init(_:)();
  static ComponentLayoutOptions.separatorHidden.getter();
  sub_100708188(&qword_10097DB10, &type metadata accessor for ComponentLayoutOptions, &protocol conformance descriptor for ComponentLayoutOptions);
  LOBYTE(v21) = dispatch thunk of SetAlgebra.isSuperset(of:)();
  (*(v15 + 8))(v17, v14);
  swift_getObjectType();
  sub_1000586D8(a6, v13);
  type metadata accessor for InAppPurchaseLockupView(0);
  v26 = sub_1004A1F00(a6, a1, a2);
  if (v21)
  {
    v27 = v26;
    Separator.verticalOutset.getter();
    sub_10002A400(v39, v39[3]);
    v28 = v31;
    j___s5JetUI10DimensionsV19defaultRoundingRules013FloatingPointeF0OvgZ();
    AnyDimension.value(in:rounded:)();
    (*(v32 + 8))(v28, v33);
    (*(v37 + 8))(v13, v38);
    (*(v22 + 8))(v25, v36);
    sub_100007000(v39);
  }

  else
  {
    CGSize.adding(separator:in:)();
    v27 = v29;
    (*(v37 + 8))(v13, v38);
    (*(v22 + 8))(v25, v36);
  }

  return v27;
}

double sub_1006F67F0(uint64_t a1, uint64_t a2, uint64_t a3, double a4, uint64_t a5, void *a6)
{
  v11 = sub_10002849C(qword_10097DB40, qword_1007C5240);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v26[-v13];
  v15 = sub_10002849C(&qword_100970F20, &qword_1007B24B8);
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v26[-v17];
  sub_10002C0AC(a1, v26);
  sub_10002849C(&qword_100973D50, &unk_1007B3840);
  type metadata accessor for AppEvent();
  swift_dynamicCast();
  (*(v12 + 16))(v14, a2, v11);
  type metadata accessor for NilState();
  StateLens.init(_:)();
  v19 = v27;
  ObjectType = swift_getObjectType();
  PageTraitEnvironment.pageColumnWidth.getter();
  v22 = v21;
  v23 = type metadata accessor for AppEventView(0);
  v24 = sub_10016862C(v22, a4, v19, a6, a3, v23, ObjectType);
  (*(v16 + 8))(v18, v15);

  return v24;
}

double sub_1006F6A38(uint64_t a1, uint64_t a2, double a3, uint64_t a4, void *a5)
{
  v9 = sub_10002849C(qword_10097DB40, qword_1007C5240);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v22[-v11];
  v13 = sub_10002849C(&qword_100970F20, &qword_1007B24B8);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v22[-v15];
  sub_10002C0AC(a1, v22);
  sub_10002849C(&qword_100973D50, &unk_1007B3840);
  type metadata accessor for AppPromotion();
  swift_dynamicCast();
  (*(v10 + 16))(v12, a2, v9);
  type metadata accessor for NilState();
  StateLens.init(_:)();
  v17 = v23;
  ObjectType = swift_getObjectType();
  PageTraitEnvironment.pageColumnWidth.getter();
  v20 = sub_1005397D8(v17, a5, ObjectType, v19, a3);
  (*(v14 + 8))(v16, v13);

  return v20;
}

double sub_1006F6C64(uint64_t a1, uint64_t a2, double a3, double a4, uint64_t a5, void *a6)
{
  v11 = sub_10002849C(qword_10097DB40, qword_1007C5240);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v27[-v13];
  v15 = sub_10002849C(&qword_100970F20, &qword_1007B24B8);
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v27[-v17];
  sub_10002C0AC(a1, v27);
  sub_10002849C(&qword_100973D50, &unk_1007B3840);
  type metadata accessor for ProductCapability();
  swift_dynamicCast();
  (*(v12 + 16))(v14, a2, v11);
  type metadata accessor for NilState();
  StateLens.init(_:)();
  v19 = ProductCapability.title.getter();
  v21 = v20;
  v22 = ProductCapability.caption.getter();
  v23 = ProductCapability.artwork.getter();
  swift_getObjectType();
  v24.n128_f64[0] = a3;
  v25 = sub_1004F2388(v19, v21, v22, v23, a6, v24, a4);

  (*(v16 + 8))(v18, v15);

  return v25;
}

double sub_1006F6ED8(uint64_t a1, uint64_t a2, uint64_t a3, double a4, uint64_t a5, void *a6)
{
  v10 = sub_10002849C(qword_10097DB40, qword_1007C5240);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v23 - v12;
  v14 = sub_10002849C(&qword_100970F20, &qword_1007B24B8);
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = v23 - v16;
  sub_10002C0AC(a1, v24);
  sub_10002849C(&qword_100973D50, &unk_1007B3840);
  type metadata accessor for EditorialLink();
  swift_dynamicCast();
  (*(v11 + 16))(v13, a2, v10);
  type metadata accessor for NilState();
  StateLens.init(_:)();
  v18 = v24[5];
  sub_10002849C(&unk_100973270, &unk_1007B4688);
  type metadata accessor for BaseObjectGraph();
  inject<A, B>(_:from:)();
  v23[1] = v18;
  dispatch thunk of LinkLoader.availablePresentation(for:)();

  v19 = v24[0];
  if ((~v24[0] & 0xF000000000000007) != 0)
  {
    v20 = v24[1];
  }

  else
  {

    v20 = 0;
    v19 = v18;
  }

  v21 = sub_1005104B4(v19, v20, a6, a4);
  sub_1000C0220(v19, v20);
  (*(v15 + 8))(v17, v14);

  return v21;
}

double sub_1006F7180(uint64_t a1, uint64_t a2, double a3, uint64_t a4, void *a5)
{
  v9 = type metadata accessor for FloatingPointRoundingRule();
  v84 = *(v9 - 8);
  v85 = v9;
  __chkstk_darwin(v9);
  v82 = &v81 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = type metadata accessor for AspectRatio();
  v81 = *(v83 - 8);
  __chkstk_darwin(v83);
  v93 = &v81 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10002849C(&qword_100972ED0, &unk_1007B17B0);
  __chkstk_darwin(v12 - 8);
  v89 = &v81 - v13;
  v14 = sub_10002849C(qword_10097DB40, qword_1007C5240);
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v81 - v16;
  v18 = sub_10002849C(&qword_100970F20, &qword_1007B24B8);
  v91 = *(v18 - 8);
  v92 = v18;
  __chkstk_darwin(v18);
  v20 = &v81 - v19;
  sub_10002C0AC(a1, &v106);
  sub_10002849C(&qword_100973D50, &unk_1007B3840);
  type metadata accessor for Quote();
  swift_dynamicCast();
  (*(v15 + 16))(v17, a2, v14);
  type metadata accessor for NilState();
  v90 = v20;
  StateLens.init(_:)();
  v21 = v105;
  [a5 pageMarginInsets];
  v22._object = 0x80000001007FC650;
  v22._countAndFlagsBits = 0xD000000000000010;
  v23._countAndFlagsBits = 0;
  v23._object = 0xE000000000000000;
  v110 = localizedString(_:comment:)(v22, v23);
  v24 = sub_100072384(v110);
  if (v24 > 2)
  {
    if (v24 - 3 < 2)
    {
      if (qword_10096CEA8 != -1)
      {
        swift_once();
      }

      v25 = &xmmword_1009CD920;
      goto LABEL_21;
    }

    if (v24 == 5)
    {
      if (qword_10096CEB0 != -1)
      {
        swift_once();
      }

      v25 = &xmmword_1009CD978;
      goto LABEL_21;
    }

    goto LABEL_15;
  }

  if (!v24)
  {
LABEL_15:
    if (qword_10096CE90 != -1)
    {
      swift_once();
    }

    v25 = &xmmword_1009CD818;
    goto LABEL_21;
  }

  if (v24 == 1)
  {
    if (qword_10096CE98 != -1)
    {
      swift_once();
    }

    v25 = &xmmword_1009CD870;
  }

  else
  {
    if (qword_10096CEA0 != -1)
    {
      swift_once();
    }

    v25 = &xmmword_1009CD8C8;
  }

LABEL_21:
  v26 = v25[4];
  *&v108[16] = v25[3];
  *&v108[32] = v26;
  v109 = *(v25 + 10);
  v27 = v25[2];
  v107 = v25[1];
  *v108 = v27;
  v106 = *v25;
  v28 = *&v108[40];
  v29 = v109;
  v97 = *&v108[24];
  v98 = *&v108[8];
  v30 = *(&v107 + 1);
  v31 = v27;
  v33 = *(&v106 + 1);
  v32 = v107;
  v34 = v106;
  sub_100072738(&v106, v102);
  v102[0] = __PAIR128__(v33, v34);
  v102[1] = __PAIR128__(v30, v32);
  *&v103[0] = v31;
  *(v103 + 8) = v98;
  *(&v103[1] + 8) = v97;
  *(&v103[2] + 1) = v28;
  v104 = v29;
  v109 = v29;
  v106 = __PAIR128__(v33, v34);
  v107 = __PAIR128__(v30, v32);
  *v108 = v103[0];
  *&v108[16] = v103[1];
  *&v108[32] = v103[2];
  [a5 pageMarginInsets];
  v35 = [objc_allocWithZone(type metadata accessor for QuotesLabel()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v96 = sub_1000723D0(&v106);

  *&v97 = v21;
  Quote.text.getter();
  v37 = v36;
  v38 = sub_100005744(0, &qword_1009730E0, UIFont_ptr);
  if (qword_10096CED0 != -1)
  {
    swift_once();
  }

  v94 = type metadata accessor for FontUseCase();
  v39 = sub_1000056A8(v94, qword_1009CD9D0);
  *&v98 = a5;
  v40 = [a5 traitCollection];
  v88 = v39;
  v41 = static UIFont.preferredFont(forUseWith:compatibleWith:)();

  sub_10002849C(&unk_100973960, &unk_1007B4930);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1007B1890;
  *(inited + 32) = NSParagraphStyleAttributeName;
  v43 = qword_10096E898;
  v44 = NSParagraphStyleAttributeName;
  if (v43 != -1)
  {
    swift_once();
  }

  v45 = [qword_1009D2970 paragraphStyleWithBaseWritingDirection:-1];
  v46 = sub_100005744(0, &unk_100993000, NSParagraphStyle_ptr);
  *(inited + 40) = v45;
  *(inited + 64) = v46;
  *(inited + 72) = NSFontAttributeName;
  *(inited + 104) = v38;
  *(inited + 80) = v41;
  v47 = NSFontAttributeName;
  v87 = v41;
  sub_100397150(inited);
  swift_setDeallocating();
  sub_10002849C(&unk_100970EC0, &unk_1007B2BF0);
  swift_arrayDestroy();
  v48 = objc_allocWithZone(NSMutableAttributedString);
  v49 = String._bridgeToObjectiveC()();
  type metadata accessor for Key(0);
  sub_100708188(&qword_100976620, type metadata accessor for Key, &unk_1007B0934);
  v50.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
  v86 = v37;
  isa = v50.super.isa;

  v52 = [v48 initWithString:v49 attributes:isa];

  v95 = v52;
  if (v96)
  {
    v53 = v96;
    sub_100397150(_swiftEmptyArrayStorage);
    v54 = objc_allocWithZone(NSAttributedString);
    v55 = String._bridgeToObjectiveC()();
    v56 = Dictionary._bridgeToObjectiveC()().super.isa;

    v57 = [v54 initWithString:v55 attributes:v56];

    v58 = v95;
    [v58 appendAttributedString:v57];
    v59 = [objc_allocWithZone(NSTextAttachment) init];
    [v59 setImage:v53];
    [(UIImage *)v53 size];
    [v59 setBounds:{0.0, -v28, v60, v61}];
    v62 = [objc_opt_self() attributedStringWithAttachment:v59];
    [v58 appendAttributedString:v62];

    sub_100072770(v102);
  }

  else
  {

    sub_100072770(v102);
  }

  v63 = v94;
  v64 = *(v94 - 8);
  v65 = v89;
  (*(v64 + 16))(v89, v88, v94);
  (*(v64 + 56))(v65, 0, 1, v63);
  v66 = type metadata accessor for Feature();
  v100 = v66;
  v67 = sub_100708188(&qword_100972E50, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
  v101 = v67;
  v68 = sub_1000056E0(v99);
  v69 = enum case for Feature.measurement_with_labelplaceholder(_:);
  v70 = *(*(v66 - 8) + 104);
  v70(v68, enum case for Feature.measurement_with_labelplaceholder(_:), v66);
  isFeatureEnabled(_:)();
  sub_100007000(v99);
  static LabelPlaceholderCompatibility.measurements(attributedText:fontUseCase:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:fitting:in:shouldUseLabelPlaceholder:)();
  sub_10002B894(v65, &qword_100972ED0, &unk_1007B17B0);
  if (qword_10096CEE0 != -1)
  {
    swift_once();
  }

  v71 = type metadata accessor for StaticDimension();
  sub_1000056A8(v71, qword_1009CDA00);
  AnyDimension.topMargin(from:in:)();
  if (qword_10096CEE8 != -1)
  {
    swift_once();
  }

  sub_1000056A8(v71, qword_1009CDA18);
  AnyDimension.bottomMargin(from:in:)();
  v89 = [objc_allocWithZone(NSStringDrawingContext) init];
  [v89 setMaximumNumberOfLines:0];
  Quote.credit.getter();
  if (v72)
  {
    if (qword_10096CED8 != -1)
    {
      swift_once();
    }

    sub_1000056A8(v94, qword_1009CD9E8);
    v100 = v66;
    v101 = v67;
    v73 = sub_1000056E0(v99);
    v70(v73, v69, v66);
    isFeatureEnabled(_:)();
    sub_100007000(v99);
    v74 = v98;
    static LabelPlaceholderCompatibility.measurements(text:fontUseCase:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:fitting:in:shouldUseLabelPlaceholder:)();

    if (qword_10096CEF0 != -1)
    {
      swift_once();
    }

    sub_1000056A8(v71, qword_1009CDA30);
    AnyDimension.topMargin(from:in:)();
    v75 = v74;
    v76 = v93;
    v77 = &StringUserDefaultsDebugSetting;
    if (qword_10096CEF8 != -1)
    {
      swift_once();
    }

    sub_1000056A8(v71, qword_1009CDA48);
    AnyDimension.bottomMargin(from:in:)();
  }

  else
  {
    v75 = v98;
    v76 = v93;
    v77 = &StringUserDefaultsDebugSetting;
  }

  if (Quote.artwork.getter())
  {
    Artwork.size.getter();
    Artwork.size.getter();
    AspectRatio.init(_:_:)();
    if ((Quote.isFullWidthArtwork.getter() & 1) == 0)
    {
      [v75 v77[53].ivar_lyt];
      [v75 v77[53].ivar_lyt];
    }

    AspectRatio.height(fromWidth:)();
    v78 = v95;
    if (qword_10096CF00 != -1)
    {
      swift_once();
    }

    sub_1000056A8(v71, qword_1009CDA60);
    v79 = v82;
    static Dimensions.defaultRoundingRule.getter();
    AnyDimension.value(in:rounded:)();

    (*(v84 + 8))(v79, v85);
    (*(v81 + 8))(v76, v83);
    (*(v91 + 8))(v90, v92);
  }

  else
  {

    (*(v91 + 8))(v90, v92);
  }

  return a3;
}

double sub_1006F8144(uint64_t a1, uint64_t a2, double a3, double a4, uint64_t a5, void *a6)
{
  v11 = sub_10002849C(qword_10097DB40, qword_1007C5240);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v40 - v13;
  v41 = sub_10002849C(&qword_100970F20, &qword_1007B24B8);
  v15 = *(v41 - 8);
  __chkstk_darwin(v41);
  v17 = &v40 - v16;
  sub_10002C0AC(a1, &v44);
  sub_10002849C(&qword_100973D50, &unk_1007B3840);
  type metadata accessor for Action();
  swift_dynamicCast();
  (*(v12 + 16))(v14, a2, v11);
  type metadata accessor for NilState();
  StateLens.init(_:)();
  v18 = v47;
  ObjectType = swift_getObjectType();
  v20 = [a6 traitCollection];
  v21 = [v20 horizontalSizeClass];

  if (v21 == 1)
  {
    [a6 pageMarginInsets];
    top = v22;
    left = v24;
    bottom = v26;
    right = v28;
  }

  else
  {
    top = UIEdgeInsetsZero.top;
    left = UIEdgeInsetsZero.left;
    bottom = UIEdgeInsetsZero.bottom;
    right = UIEdgeInsetsZero.right;
  }

  v43 = v18;

  sub_10002849C(&unk_100980530, &qword_1007B69B0);
  if (swift_dynamicCast())
  {
    sub_10002A400(&v44, *(&v45 + 1));
    v30 = SearchAdOpportunityProviding.isSearchAd.getter();
    sub_100007000(&v44);
  }

  else
  {
    v46 = 0;
    v44 = 0u;
    v45 = 0u;
    sub_10002B894(&v44, &unk_100992FE0, &qword_1007BBDD0);
    v30 = 0;
  }

  v31 = Action.title.getter();
  v33 = v32;
  v34 = Action.artwork.getter();
  if (v34)
  {
  }

  v35 = sub_10028F24C(a6);
  if (qword_10096EB38 != -1)
  {
    swift_once();
  }

  v36 = type metadata accessor for ActionLayout.Metrics();
  v37 = sub_1000056A8(v36, qword_1009D2F68);
  v38 = sub_100614920(v37, a6, v31, v33, v34 != 0, v35, v30 & 1, v42, a3, a4, top, left, bottom, right, ObjectType);

  (*(v15 + 8))(v17, v41);

  return v38;
}

void sub_1006F8544(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, double a5, double a6)
{
  v11 = sub_10002849C(qword_10097DB40, qword_1007C5240);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = v34 - v13;
  v15 = sub_10002849C(&qword_100980638, &qword_1007C7640);
  v37 = *(v15 - 8);
  __chkstk_darwin(v15);
  v17 = v34 - v16;
  sub_10002C0AC(a1, aBlock);
  sub_10002849C(&qword_100973D50, &unk_1007B3840);
  type metadata accessor for Paragraph();
  swift_dynamicCast();
  (*(v12 + 16))(v14, a2, v11);
  StateLens.init(_:)();
  v18 = aBlock[6];
  sub_100135E04();
  v38 = v15;
  v36 = v17;
  StateLens<A>.currentValue.getter();
  if (LOBYTE(aBlock[0]) == 2)
  {
    v35 = Paragraph.isCollapsed.getter();
  }

  else
  {
    v35 = LOBYTE(aBlock[0]);
  }

  v19 = Paragraph.text.getter();
  v34[1] = swift_getObjectType();
  v20 = [a4 traitCollection];
  v34[0] = v18;
  v21 = v20;
  v22 = [objc_allocWithZone(NSMutableAttributedString) initWithAttributedString:v19];
  v23 = [v19 length];
  v24 = swift_allocObject();
  *(v24 + 16) = 0;
  *(v24 + 24) = v21;
  *(v24 + 32) = v22;
  *(v24 + 40) = 1;
  v25 = swift_allocObject();
  *(v25 + 16) = sub_100126854;
  *(v25 + 24) = v24;
  aBlock[4] = sub_100126848;
  aBlock[5] = v25;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1006606C4;
  aBlock[3] = &unk_1008CFBD8;
  v26 = _Block_copy(aBlock);
  v27 = v21;
  v28 = v22;

  [v19 enumerateAttributesInRange:0 options:v23 usingBlock:{0x100000, v26}];

  _Block_release(v26);
  LOBYTE(v23) = swift_isEscapingClosureAtFileLocation();

  if (v23)
  {
    __break(1u);
  }

  else
  {
    v29 = v28;
    [a4 pageMarginInsets];
    sub_100766148(v28, v35 & 1, a4, v30, v31, v32, v33, a5, a6);

    sub_100318A20(v34[0], a4);
    (*(v37 + 8))(v36, v38);
  }
}

double sub_1006F89AC(uint64_t a1, uint64_t a2, double a3, double a4, uint64_t a5, void *a6)
{
  v9 = sub_10002849C(&qword_100972ED0, &unk_1007B17B0);
  __chkstk_darwin(v9 - 8);
  v49 = v48 - v10;
  v11 = type metadata accessor for AspectRatio();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = v48 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_10002849C(qword_10097DB40, qword_1007C5240);
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = v48 - v17;
  v19 = sub_10002849C(&qword_100970F20, &qword_1007B24B8);
  v51 = *(v19 - 8);
  v52 = v19;
  __chkstk_darwin(v19);
  v21 = v48 - v20;
  sub_10002C0AC(a1, aBlock);
  sub_10002849C(&qword_100973D50, &unk_1007B3840);
  type metadata accessor for FramedVideo();
  swift_dynamicCast();
  (*(v16 + 16))(v18, a2, v15);
  type metadata accessor for NilState();
  v50 = v21;
  StateLens.init(_:)();
  if ((FramedMedia.isFullWidth.getter() & 1) == 0)
  {
    [a6 pageMarginInsets];
  }

  if (FramedVideo.artwork.getter())
  {
    Artwork.size.getter();
    AspectRatio.init(_:_:)();
    AspectRatio.height(fromWidth:)();
    (*(v12 + 8))(v14, v11);
    FramedMedia.isFullWidth.getter();
  }

  v22 = FramedMedia.caption.getter();
  v23 = [v22 length];

  if (v23 >= 1)
  {
    FramedMedia.ordinal.getter();
    if (v24)
    {
      if (qword_10096E228 != -1)
      {
        swift_once();
      }

      v25 = type metadata accessor for FontUseCase();
      sub_1000056A8(v25, qword_1009D15F8);
      v26 = type metadata accessor for Feature();
      v54 = v26;
      v55 = sub_100708188(&qword_100972E50, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
      v27 = sub_1000056E0(aBlock);
      (*(*(v26 - 8) + 104))(v27, enum case for Feature.measurement_with_labelplaceholder(_:), v26);
      isFeatureEnabled(_:)();
      sub_100007000(aBlock);
      static LabelPlaceholderCompatibility.measurements(text:fontUseCase:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:fitting:in:shouldUseLabelPlaceholder:)();
    }

    v28 = FramedMedia.caption.getter();
    v48[1] = a6;
    v29 = [a6 traitCollection];
    v30 = [objc_allocWithZone(NSMutableAttributedString) initWithAttributedString:v28];
    v31 = [v28 length];
    v32 = swift_allocObject();
    *(v32 + 16) = 0;
    *(v32 + 24) = v29;
    *(v32 + 32) = v30;
    *(v32 + 40) = 1;
    v33 = swift_allocObject();
    *(v33 + 16) = sub_10010279C;
    *(v33 + 24) = v32;
    v55 = sub_1001027AC;
    v56 = v33;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1006606C4;
    v54 = &unk_1008CFAE8;
    v34 = _Block_copy(aBlock);
    v35 = v29;
    v36 = v30;

    [v28 enumerateAttributesInRange:0 options:v31 usingBlock:{0x100000, v34}];

    _Block_release(v34);
    LOBYTE(v35) = swift_isEscapingClosureAtFileLocation();

    if (v35)
    {
      __break(1u);
    }

    else
    {
      v37 = qword_10096E220;
      v28 = v36;
      if (v37 == -1)
      {
LABEL_12:
        v38 = type metadata accessor for FontUseCase();
        v39 = sub_1000056A8(v38, qword_1009D15E0);
        v40 = *(v38 - 8);
        v41 = v49;
        (*(v40 + 16))(v49, v39, v38);
        (*(v40 + 56))(v41, 0, 1, v38);
        v42 = type metadata accessor for Feature();
        v54 = v42;
        v55 = sub_100708188(&qword_100972E50, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
        v43 = sub_1000056E0(aBlock);
        (*(*(v42 - 8) + 104))(v43, enum case for Feature.measurement_with_labelplaceholder(_:), v42);
        isFeatureEnabled(_:)();
        sub_100007000(aBlock);
        static LabelPlaceholderCompatibility.measurements(attributedText:fontUseCase:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:fitting:in:shouldUseLabelPlaceholder:)();

        sub_10002B894(v41, &qword_100972ED0, &unk_1007B17B0);
        if (qword_10096E690 != -1)
        {
          swift_once();
        }

        v44 = type metadata accessor for StaticDimension();
        sub_1000056A8(v44, qword_1009D2368);
        AnyDimension.topMargin(from:in:)();
        if (qword_10096E698 != -1)
        {
          swift_once();
        }

        sub_1000056A8(v44, qword_1009D2380);
        AnyDimension.bottomMargin(from:in:)();

        goto LABEL_17;
      }
    }

    swift_once();
    goto LABEL_12;
  }

LABEL_17:
  CGSize.integral.getter();
  v46 = v45;
  (*(v51 + 8))(v50, v52);

  return v46;
}

double sub_1006F931C(uint64_t a1, uint64_t a2, double a3, double a4, uint64_t a5, void (*a6)(void *, uint64_t, uint64_t))
{
  v113 = a6;
  ObjectType = a2;
  v8 = type metadata accessor for PrivacyTypeLayout();
  v94 = *(v8 - 8);
  v95 = v8;
  __chkstk_darwin(v8);
  v93 = &v83 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for LabelPlaceholderCompatibility();
  v101 = *(v10 - 8);
  v102 = v10;
  __chkstk_darwin(v10);
  v100 = &v83 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for FontUseCase();
  v108 = *(v12 - 8);
  v109 = v12;
  __chkstk_darwin(v12);
  v107 = &v83 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for PrivacyTypeStyle();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v110 = &v83 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v83 - v18;
  v20 = type metadata accessor for PrivacyTypeLayout.Metrics();
  v104 = *(v20 - 8);
  v105 = v20;
  __chkstk_darwin(v20);
  v88 = &v83 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v24 = &v83 - v23;
  v25 = sub_10002849C(qword_10097DB40, qword_1007C5240);
  v26 = *(v25 - 8);
  __chkstk_darwin(v25);
  v28 = &v83 - v27;
  v29 = sub_10002849C(&qword_100970F20, &qword_1007B24B8);
  v91 = *(v29 - 8);
  v92 = v29;
  __chkstk_darwin(v29);
  v31 = &v83 - v30;
  sub_10002C0AC(a1, v120);
  sub_10002849C(&qword_100973D50, &unk_1007B3840);
  type metadata accessor for PrivacyType();
  swift_dynamicCast();
  (*(v26 + 16))(v28, ObjectType, v25);
  v32 = v113;
  type metadata accessor for NilState();
  v90 = v31;
  StateLens.init(_:)();
  v33 = v120[5];
  v34 = PrivacyType.artwork.getter();
  PrivacyType.style.getter();
  ObjectType = swift_getObjectType();
  sub_10035FDE8(v34, v19, v32, v24);

  v35 = *(v15 + 8);
  v89 = v19;
  v35(v19, v14);
  v36 = type metadata accessor for LayoutViewPlaceholder();
  swift_allocObject();
  v37 = LayoutViewPlaceholder.init(representing:)();
  swift_allocObject();
  v86 = LayoutViewPlaceholder.init(representing:)();
  swift_allocObject();
  v85 = LayoutViewPlaceholder.init(representing:)();
  v103 = v24;
  PrivacyTypeLayout.Metrics.iconSize.getter();
  v112 = v36;
  v38 = v110;
  swift_allocObject();
  v39 = LayoutViewPlaceholder.init(representing:)();
  PrivacyType.style.getter();
  v40 = (*(v15 + 88))(v38, v14);
  v87 = v37;
  v84 = v39;
  if (v40 != enum case for PrivacyTypeStyle.productPage(_:))
  {
    if (v40 == enum case for PrivacyTypeStyle.intermediateDetailPage(_:) || v40 == enum case for PrivacyTypeStyle.detailPage(_:))
    {
      v47 = v107;
      if (qword_10096E090 != -1)
      {
        swift_once();
      }

      v48 = v109;
      v49 = sub_1000056A8(v109, qword_1009D1130);
      (*(v108 + 16))(v47, v49, v48);
      v46 = 4;
      goto LABEL_13;
    }

    v43 = v107;
    if (qword_10096E088 != -1)
    {
      swift_once();
    }

    v44 = v109;
    v45 = sub_1000056A8(v109, qword_1009D1118);
    (*(v108 + 16))(v43, v45, v44);
    v35(v38, v14);
    goto LABEL_9;
  }

  if (qword_10096E088 != -1)
  {
    goto LABEL_31;
  }

  while (1)
  {
    v41 = v109;
    v42 = sub_1000056A8(v109, qword_1009D1118);
    (*(v108 + 16))(v107, v42, v41);
LABEL_9:
    v46 = 1;
LABEL_13:
    v110 = v46;
    sub_100005744(0, &qword_1009730E0, UIFont_ptr);
    v50 = v113;
    v51 = [v113 traitCollection];
    v52 = static UIFont.preferredFont(forUseWith:compatibleWith:)();

    PrivacyType.title.getter();
    v53 = type metadata accessor for Feature();
    v120[3] = v53;
    v99 = sub_100708188(&qword_100972E50, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
    v120[4] = v99;
    v54 = sub_1000056E0(v120);
    v106 = v33;
    v55 = *(v53 - 8);
    v56 = *(v55 + 104);
    v98 = enum case for Feature.measurement_with_labelplaceholder(_:);
    v96 = v55 + 104;
    v97 = v56;
    v56(v54);
    v57 = v52;
    isFeatureEnabled(_:)();
    sub_100007000(v120);
    v58 = v100;
    v83 = v57;
    LabelPlaceholderCompatibility.init(text:font:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:shouldUseLabelPlaceholder:)();
    LabelPlaceholderCompatibility.layoutTextView.getter();
    v59 = v102;
    v33 = v101[1];
    v33(v58, v102);
    if (qword_10096E098 != -1)
    {
      swift_once();
    }

    sub_1000056A8(v109, qword_1009D1148);
    v60 = [v50 traitCollection];
    v61 = static UIFont.preferredFont(forUseWith:compatibleWith:)();

    PrivacyType.detail.getter();
    v119[3] = v53;
    v119[4] = v99;
    v62 = sub_1000056E0(v119);
    v97(v62, v98, v53);
    v63 = v61;
    isFeatureEnabled(_:)();
    sub_100007000(v119);
    LabelPlaceholderCompatibility.init(text:font:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:shouldUseLabelPlaceholder:)();
    LabelPlaceholderCompatibility.layoutTextView.getter();
    v33(v58, v59);
    v64 = PrivacyType.categories.getter();
    v65 = v64;
    if (v64 >> 62)
    {
      v75 = v64;
      v76 = _CocoaArrayWrapper.endIndex.getter();
      v65 = v75;
      v66 = v76;
      v101 = v63;
      if (!v76)
      {
        goto LABEL_29;
      }
    }

    else
    {
      v66 = *((v64 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v101 = v63;
      if (!v66)
      {
        goto LABEL_29;
      }
    }

    v67 = v65;
    v110 = type metadata accessor for PrivacyCategoryView();
    if (v66 >= 1)
    {
      break;
    }

    __break(1u);
LABEL_31:
    swift_once();
  }

  v68 = 0;
  v69 = v67;
  v70 = _swiftEmptyArrayStorage;
  do
  {
    if ((v67 & 0xC000000000000001) != 0)
    {
      v71 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v71 = *(v69 + 8 * v68 + 32);
    }

    v72 = sub_10037A62C(v71, v113);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v70 = sub_100033548(0, v70[2] + 1, 1, v70);
    }

    v74 = v70[2];
    v73 = v70[3];
    if (v74 >= v73 >> 1)
    {
      v70 = sub_100033548((v73 > 1), v74 + 1, 1, v70);
    }

    ++v68;

    v117 = v112;
    v118 = &protocol witness table for LayoutViewPlaceholder;
    *&v116 = v72;
    v70[2] = v74 + 1;
    sub_100005A38(&v116, &v70[5 * v74 + 4]);
    v69 = v67;
  }

  while (v66 != v68);
LABEL_29:

  v77 = [v113 traitCollection];
  static Separator.thickness(compatibleWith:)();

  v78 = v112;
  swift_allocObject();
  v79 = LayoutViewPlaceholder.init(representing:)();
  (*(v104 + 16))(v88, v103, v105);
  v117 = v78;
  v118 = &protocol witness table for LayoutViewPlaceholder;
  *&v116 = v87;
  v115[23] = v78;
  v115[24] = &protocol witness table for LayoutViewPlaceholder;
  v115[19] = &protocol witness table for LayoutViewPlaceholder;
  v115[20] = v86;
  v115[18] = v78;
  v115[14] = &protocol witness table for LayoutViewPlaceholder;
  v115[15] = v85;
  v115[13] = v78;
  v115[9] = &protocol witness table for LayoutViewPlaceholder;
  v115[10] = v79;
  ObjectType = v79;
  v115[8] = v78;
  v115[5] = v84;
  sub_10002C0AC(v120, v115);
  sub_10002C0AC(v119, &v114);

  PrivacyType.style.getter();
  v80 = v93;
  PrivacyTypeLayout.init(metrics:shadowView:roundedCornerView:contentContainerView:separatorView:iconView:titleLabel:detailLabel:categoryViews:style:)();
  sub_100708188(&qword_10097AA30, &type metadata accessor for PrivacyTypeLayout, &protocol conformance descriptor for PrivacyTypeLayout);
  v81 = v95;
  dispatch thunk of Measurable.measurements(fitting:in:)();

  (*(v94 + 8))(v80, v81);
  sub_100007000(v119);
  sub_100007000(v120);
  (*(v108 + 8))(v107, v109);
  (*(v104 + 8))(v103, v105);
  (*(v91 + 8))(v90, v92);

  return a3;
}

double sub_1006FA0C8(double a1, uint64_t a2, char *a3, uint64_t a4, uint64_t a5)
{
  v49 = a5;
  v41 = a4;
  v42 = a3;
  v38 = type metadata accessor for FloatingPointRoundingRule();
  v37 = *(v38 - 8);
  __chkstk_darwin(v38);
  v36 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = type metadata accessor for FontSource();
  v7 = *(v45 - 8);
  __chkstk_darwin(v45);
  v9 = (&v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v40 = type metadata accessor for Separator.Position();
  v10 = *(v40 - 8);
  __chkstk_darwin(v40);
  v39 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Separator();
  v47 = *(v12 - 8);
  v48 = v12;
  __chkstk_darwin(v12);
  v44 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for ComponentLayoutOptions();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_10002849C(qword_10097DB40, qword_1007C5240);
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = &v36 - v20;
  v46 = sub_10002849C(&qword_100970F20, &qword_1007B24B8);
  v43 = *(v46 - 8);
  v22 = __chkstk_darwin(v46);
  v24 = &v36 - v23;
  (*(v19 + 16))(v21, v42, v18, v22);
  type metadata accessor for NilState();
  v42 = v24;
  StateLens.init(_:)();
  static ComponentLayoutOptions.separatorHidden.getter();
  sub_100708188(&qword_10097DB10, &type metadata accessor for ComponentLayoutOptions, &protocol conformance descriptor for ComponentLayoutOptions);
  LOBYTE(v18) = dispatch thunk of SetAlgebra.isSuperset(of:)();
  v25 = v17;
  v26 = v39;
  (*(v15 + 8))(v25, v14);
  (*(v10 + 104))(v26, enum case for Separator.Position.bottom(_:), v40);
  *v9 = UIFontTextStyleBody;
  v27 = v45;
  (*(v7 + 104))(v9, enum case for FontSource.textStyle(_:), v45);
  v53 = type metadata accessor for StaticDimension();
  v54 = &protocol witness table for StaticDimension;
  sub_1000056E0(v52);
  v51[3] = v27;
  v51[4] = &protocol witness table for FontSource;
  v28 = sub_1000056E0(v51);
  (*(v7 + 16))(v28, v9, v27);
  v29 = UIFontTextStyleBody;
  StaticDimension.init(_:scaledLike:)();
  (*(v7 + 8))(v9, v27);
  if (v18)
  {
    v30 = v44;
    Separator.init(position:leadingInset:trailingInset:verticalOutset:)();
    Separator.verticalOutset.getter();
    (*(v47 + 8))(v30, v48);
    sub_10002A400(v52, v53);
    v31 = v36;
    j___s5JetUI10DimensionsV19defaultRoundingRules013FloatingPointeF0OvgZ();
    v32 = v49;
    AnyDimension.value(in:rounded:)();
    (*(v37 + 8))(v31, v38);
    sub_100007000(v52);
  }

  else
  {
    v33 = v44;
    Separator.init(position:leadingInset:trailingInset:verticalOutset:)();
    v32 = v49;
    Separator.height(in:)();
    (*(v47 + 8))(v33, v48);
  }

  ObjectType = swift_getObjectType();
  sub_1002B1794(v32, v50, ObjectType);
  (*(v43 + 8))(v42, v46);
  return a1;
}

double sub_1006FA838(double a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v34 = a4;
  v36 = a5;
  v9 = type metadata accessor for FloatingPointRoundingRule();
  v32 = *(v9 - 8);
  v33 = v9;
  __chkstk_darwin(v9);
  v31 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for ComponentLayoutOptions();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for Separator();
  v37 = *(v15 - 8);
  v38 = v15;
  __chkstk_darwin(v15);
  v17 = &v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_10002849C(qword_10097DB40, qword_1007C5240);
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = &v31 - v20;
  v35 = sub_10002849C(&qword_100970F20, &qword_1007B24B8);
  v22 = *(v35 - 8);
  v23 = __chkstk_darwin(v35);
  v25 = &v31 - v24;
  (*(v19 + 16))(v21, v34, v18, v23);
  type metadata accessor for NilState();
  StateLens.init(_:)();
  swift_getObjectType();
  sub_100631DB4(a6, v17);
  static ComponentLayoutOptions.separatorHidden.getter();
  sub_100708188(&qword_10097DB10, &type metadata accessor for ComponentLayoutOptions, &protocol conformance descriptor for ComponentLayoutOptions);
  LOBYTE(v21) = dispatch thunk of SetAlgebra.isSuperset(of:)();
  (*(v12 + 8))(v14, v11);
  v26 = sub_100633FAC(a6, a1, a2);
  if (v21)
  {
    v27 = v26;
    Separator.verticalOutset.getter();
    sub_10002A400(v39, v39[3]);
    v28 = v31;
    j___s5JetUI10DimensionsV19defaultRoundingRules013FloatingPointeF0OvgZ();
    AnyDimension.value(in:rounded:)();
    (*(v32 + 8))(v28, v33);
    (*(v37 + 8))(v17, v38);
    (*(v22 + 8))(v25, v35);
    sub_100007000(v39);
  }

  else
  {
    CGSize.adding(separator:in:)();
    v27 = v29;
    (*(v37 + 8))(v17, v38);
    (*(v22 + 8))(v25, v35);
  }

  return v27;
}

double sub_1006FACEC(uint64_t a1, uint64_t a2, double a3, double a4, uint64_t a5, void *a6)
{
  v10 = sub_10002849C(&qword_100972ED0, &unk_1007B17B0);
  __chkstk_darwin(v10 - 8);
  v62 = &v59 - v11;
  v61 = type metadata accessor for FloatingPointRoundingRule();
  v60 = *(v61 - 8);
  __chkstk_darwin(v61);
  v66 = &v59 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for AspectRatio();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v59 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_10002849C(qword_10097DB40, qword_1007C5240);
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v59 - v19;
  v21 = sub_10002849C(&qword_100970F20, &qword_1007B24B8);
  v64 = *(v21 - 8);
  v65 = v21;
  __chkstk_darwin(v21);
  v23 = &v59 - v22;
  sub_10002C0AC(a1, aBlock);
  sub_10002849C(&qword_100973D50, &unk_1007B3840);
  type metadata accessor for FramedArtwork();
  swift_dynamicCast();
  (*(v18 + 16))(v20, a2, v17);
  type metadata accessor for NilState();
  v63 = v23;
  StateLens.init(_:)();
  if ((FramedMedia.isFullWidth.getter() & 1) == 0)
  {
    [a6 pageMarginInsets];
  }

  v24 = a6;
  v25 = FramedArtwork.artwork.getter();
  v26 = v66;
  if (v25)
  {
    Artwork.size.getter();
    AspectRatio.init(_:_:)();
    AspectRatio.height(fromWidth:)();
    v28 = v27;
    v29 = *(v14 + 8);
    v29(v16, v13);
    FramedMedia.isFullWidth.getter();
    if ((FramedMedia.isFullWidth.getter() & 1) != 0 || v28 <= a4)
    {
    }

    else
    {
      Artwork.size.getter();
      AspectRatio.init(_:_:)();
      AspectRatio.width(fromHeight:)();
      v29(v16, v13);
    }
  }

  v30 = FramedMedia.caption.getter();
  v31 = [v30 length];

  if (v31 >= 1)
  {
    FramedMedia.ordinal.getter();
    if (v32)
    {
      if (qword_10096E228 != -1)
      {
        swift_once();
      }

      v33 = type metadata accessor for FontUseCase();
      sub_1000056A8(v33, qword_1009D15F8);
      v34 = type metadata accessor for Feature();
      v68 = v34;
      v69 = sub_100708188(&qword_100972E50, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
      v35 = sub_1000056E0(aBlock);
      (*(*(v34 - 8) + 104))(v35, enum case for Feature.measurement_with_labelplaceholder(_:), v34);
      isFeatureEnabled(_:)();
      sub_100007000(aBlock);
      static LabelPlaceholderCompatibility.measurements(text:fontUseCase:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:fitting:in:shouldUseLabelPlaceholder:)();

      if (qword_10096E690 != -1)
      {
        swift_once();
      }

      v36 = type metadata accessor for StaticDimension();
      sub_1000056A8(v36, qword_1009D2368);
      static Dimensions.defaultRoundingRule.getter();
      AnyDimension.value(in:rounded:)();
      v37 = *(v60 + 8);
      v38 = v61;
      v37(v26, v61);
      if (qword_10096E6A0 != -1)
      {
        swift_once();
      }

      sub_1000056A8(v36, qword_1009D2398);
      static Dimensions.defaultRoundingRule.getter();
      AnyDimension.value(in:rounded:)();
      v37(v26, v38);
      if (qword_10096E698 != -1)
      {
        swift_once();
      }

      sub_1000056A8(v36, qword_1009D2380);
      static Dimensions.defaultRoundingRule.getter();
      AnyDimension.value(in:rounded:)();
      v37(v26, v38);
    }

    v39 = FramedMedia.caption.getter();
    v40 = [v24 traitCollection];
    v41 = [objc_allocWithZone(NSMutableAttributedString) initWithAttributedString:v39];
    v42 = [v39 length];
    v43 = swift_allocObject();
    *(v43 + 16) = 0;
    *(v43 + 24) = v40;
    *(v43 + 32) = v41;
    *(v43 + 40) = 1;
    v44 = swift_allocObject();
    *(v44 + 16) = sub_100126854;
    *(v44 + 24) = v43;
    v69 = sub_100126848;
    v70 = v44;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1006606C4;
    v68 = &unk_1008CFCF0;
    v45 = _Block_copy(aBlock);
    v46 = v40;
    v47 = v41;

    [v39 enumerateAttributesInRange:0 options:v42 usingBlock:{0x100000, v45}];

    _Block_release(v45);
    LOBYTE(v41) = swift_isEscapingClosureAtFileLocation();

    if (v41)
    {
      __break(1u);
    }

    else
    {
      v48 = qword_10096E220;
      v39 = v47;
      if (v48 == -1)
      {
LABEL_21:
        v49 = type metadata accessor for FontUseCase();
        v50 = sub_1000056A8(v49, qword_1009D15E0);
        v51 = *(v49 - 8);
        v52 = v62;
        (*(v51 + 16))(v62, v50, v49);
        (*(v51 + 56))(v52, 0, 1, v49);
        v53 = type metadata accessor for Feature();
        v68 = v53;
        v69 = sub_100708188(&qword_100972E50, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
        v54 = sub_1000056E0(aBlock);
        (*(*(v53 - 8) + 104))(v54, enum case for Feature.measurement_with_labelplaceholder(_:), v53);
        isFeatureEnabled(_:)();
        sub_100007000(aBlock);
        static LabelPlaceholderCompatibility.measurements(attributedText:fontUseCase:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:fitting:in:shouldUseLabelPlaceholder:)();

        sub_10002B894(v52, &qword_100972ED0, &unk_1007B17B0);
        if (qword_10096E690 != -1)
        {
          swift_once();
        }

        v55 = type metadata accessor for StaticDimension();
        sub_1000056A8(v55, qword_1009D2368);
        AnyDimension.topMargin(from:in:)();
        if (qword_10096E698 != -1)
        {
          swift_once();
        }

        sub_1000056A8(v55, qword_1009D2380);
        AnyDimension.bottomMargin(from:in:)();

        goto LABEL_26;
      }
    }

    swift_once();
    goto LABEL_21;
  }

LABEL_26:
  CGSize.integral.getter();
  v57 = v56;
  (*(v64 + 8))(v63, v65);

  return v57;
}

double sub_1006FB8DC(uint64_t a1, uint64_t a2, __n128 a3, double a4, uint64_t a5, void *a6)
{
  v47 = a6;
  v6 = a3.n128_f64[0];
  v9 = type metadata accessor for PrivacyFooterLayout.Metrics();
  v42 = *(v9 - 8);
  v43 = v9;
  __chkstk_darwin(v9);
  v44 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for PrivacyFooterLayout();
  v45 = *(v11 - 8);
  v46 = v11;
  __chkstk_darwin(v11);
  v13 = &v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = type metadata accessor for LabelPlaceholderCompatibility();
  v14 = *(v40 - 8);
  __chkstk_darwin(v40);
  v16 = &v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_10002849C(qword_10097DB40, qword_1007C5240);
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v40 - v19;
  v41 = sub_10002849C(&qword_100970F20, &qword_1007B24B8);
  v21 = *(v41 - 8);
  __chkstk_darwin(v41);
  v23 = &v40 - v22;
  sub_10002C0AC(a1, v49);
  sub_10002849C(&qword_100973D50, &unk_1007B3840);
  type metadata accessor for PrivacyFooter();
  swift_dynamicCast();
  (*(v18 + 16))(v20, a2, v17);
  type metadata accessor for NilState();
  StateLens.init(_:)();
  sub_100005744(0, &qword_1009730E0, UIFont_ptr);
  if (qword_10096E078 != -1)
  {
    swift_once();
  }

  v24 = type metadata accessor for FontUseCase();
  sub_1000056A8(v24, qword_1009D10E8);
  v25 = [v47 traitCollection];
  v26 = static UIFont.preferredFont(forUseWith:compatibleWith:)();

  PrivacyFooter.bodyText.getter();
  LinkableText.styledText.getter();

  v27 = dispatch thunk of StyledText.asAttributedString(using:)();

  v28 = type metadata accessor for Feature();
  v50 = v28;
  v51 = sub_100708188(&qword_100972E50, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
  v29 = sub_1000056E0(v49);
  (*(*(v28 - 8) + 104))(v29, enum case for Feature.measurement_with_labelplaceholder(_:), v28);
  v30 = v27;
  v31 = v26;
  isFeatureEnabled(_:)();
  sub_100007000(v49);
  LabelPlaceholderCompatibility.init(attributedText:font:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:shouldUseLabelPlaceholder:)();
  LabelPlaceholderCompatibility.layoutTextView.getter();
  (*(v14 + 8))(v16, v40);
  if (qword_10096D520 != -1)
  {
    swift_once();
  }

  v32 = v43;
  v33 = sub_1000056A8(v43, qword_1009CEBE8);
  (*(v42 + 16))(v44, v33, v32);
  v34 = v50;
  v35 = v51;
  v36 = sub_10002A400(v49, v50);
  v48[3] = v34;
  v48[4] = *(v35 + 8);
  v37 = sub_1000056E0(v48);
  (*(*(v34 - 8) + 16))(v37, v36, v34);
  PrivacyFooterLayout.init(metrics:bodyLabel:actionButtons:)();
  sub_100708188(&unk_10098DE10, &type metadata accessor for PrivacyFooterLayout, &protocol conformance descriptor for PrivacyFooterLayout);
  v38 = v46;
  dispatch thunk of Measurable.measurements(fitting:in:)();

  (*(v45 + 8))(v13, v38);
  (*(v21 + 8))(v23, v41);
  sub_100007000(v49);

  return v6;
}

void sub_1006FBF5C(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5, uint64_t a6, void *a7)
{
  v70 = a7;
  v73 = a3;
  v74 = type metadata accessor for LabelPlaceholderCompatibility();
  v57 = *(v74 - 8);
  __chkstk_darwin(v74);
  v10 = &v56 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = type metadata accessor for PrivacyHeaderLayout.Metrics();
  v62 = *(v64 - 8);
  __chkstk_darwin(v64);
  v66 = &v56 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = type metadata accessor for PrivacyHeaderLayout();
  v68 = *(v69 - 8);
  __chkstk_darwin(v69);
  v67 = &v56 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for FontUseCase();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v56 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_10002849C(qword_10097DB40, qword_1007C5240);
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v56 - v19;
  v65 = sub_10002849C(&qword_100970F20, &qword_1007B24B8);
  v63 = *(v65 - 8);
  __chkstk_darwin(v65);
  v22 = &v56 - v21;
  sub_10002C0AC(a1, v82);
  sub_10002849C(&qword_100973D50, &unk_1007B3840);
  type metadata accessor for PrivacyHeader();
  swift_dynamicCast();
  (*(v18 + 16))(v20, a2, v17);
  type metadata accessor for NilState();
  v61 = v22;
  StateLens.init(_:)();
  v23 = v85;
  sub_100005744(0, &qword_1009730E0, UIFont_ptr);
  if (qword_10096E070 != -1)
  {
    swift_once();
  }

  v24 = sub_1000056A8(v13, qword_1009D10D0);
  v25 = [v70 traitCollection];
  v75 = static UIFont.preferredFont(forUseWith:compatibleWith:)();

  (*(v14 + 16))(v16, v24, v13);
  v59 = type metadata accessor for DynamicTypeLinkedLabel(0);
  v26 = objc_allocWithZone(v59);
  v27 = sub_1002F5B8C(v16, 0, 0, 1);
  PrivacyHeader.bodyText.getter();
  v28 = LinkableText.linkedSubstrings.getter();
  sub_1000D6F24(v28, sub_10041DBBC);
  v30 = v29;

  v31 = LinkableText.styledText.getter();
  v58 = v27;
  sub_1002F6004(v31, 0, v30);

  v32 = PrivacyHeader.supplementaryItems.getter();
  v33 = v32;
  if (v32 >> 62)
  {
    v54 = v32;
    v55 = _CocoaArrayWrapper.endIndex.getter();
    v33 = v54;
    v34 = v55;
  }

  else
  {
    v34 = *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v60 = v23;
  if (v34)
  {
    if (v34 < 1)
    {
      __break(1u);
      return;
    }

    v35 = 0;
    v72 = v33 & 0xC000000000000001;
    v71 = enum case for Feature.measurement_with_labelplaceholder(_:);
    v36 = (v57 + 8);
    v37 = _swiftEmptyArrayStorage;
    v73 = v33;
    do
    {
      if (v72)
      {
        specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
      }

      PrivacyHeaderSupplementaryItem.bodyText.getter();
      LinkableText.styledText.getter();

      v38 = v75;
      v39 = dispatch thunk of StyledText.asAttributedString(using:)();

      v40 = type metadata accessor for Feature();
      v83 = v40;
      v84 = sub_100708188(&qword_100972E50, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
      v41 = sub_1000056E0(v82);
      (*(*(v40 - 8) + 104))(v41, v71, v40);
      v42 = v39;
      v43 = v38;
      isFeatureEnabled(_:)();
      sub_100007000(v82);
      LabelPlaceholderCompatibility.init(attributedText:font:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:shouldUseLabelPlaceholder:)();
      LabelPlaceholderCompatibility.layoutTextView.getter();
      (*v36)(v10, v74);
      sub_10002C0AC(v82, &v79);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v37 = sub_1000337A4(0, v37[2] + 1, 1, v37);
      }

      v45 = v37[2];
      v44 = v37[3];
      if (v45 >= v44 >> 1)
      {
        v37 = sub_1000337A4((v44 > 1), v45 + 1, 1, v37);
      }

      ++v35;

      sub_100007000(v82);
      v37[2] = v45 + 1;
      sub_100005A38(&v79, &v37[5 * v45 + 4]);
    }

    while (v34 != v35);
  }

  else
  {
    v37 = _swiftEmptyArrayStorage;
  }

  v46 = [v70 traitCollection];
  static Separator.thickness(compatibleWith:)();

  v47 = type metadata accessor for LayoutViewPlaceholder();
  swift_allocObject();
  v48 = LayoutViewPlaceholder.init(representing:)();
  if (qword_10096E5A0 != -1)
  {
    swift_once();
  }

  v49 = v64;
  v50 = sub_1000056A8(v64, qword_1009D1FD8);
  (*(v62 + 16))(v66, v50, v49);
  PrivacyHeader.isDetailHeader.getter();
  v83 = v59;
  v84 = &protocol witness table for UIView;
  v82[0] = v58;
  v51 = v58;
  sub_1002A4AF4(v37);

  v80 = v47;
  v81 = &protocol witness table for LayoutViewPlaceholder;
  v78 = &protocol witness table for LayoutViewPlaceholder;
  *&v79 = v48;
  v77 = v47;
  v76 = v48;
  swift_retain_n();
  v52 = v67;
  PrivacyHeaderLayout.init(metrics:isDetailHeader:bodyLabel:supplementaryItemLabels:topSeparatorView:middleSeparatorView:actionButtons:)();
  sub_100708188(&unk_10097E560, &type metadata accessor for PrivacyHeaderLayout, &protocol conformance descriptor for PrivacyHeaderLayout);
  v53 = v69;
  dispatch thunk of Measurable.measurements(fitting:in:)();

  (*(v68 + 8))(v52, v53);
  (*(v63 + 8))(v61, v65);
}

double sub_1006FC9B4(__n128 a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v8 = type metadata accessor for SmallBreakoutLayout.Metrics();
  __chkstk_darwin(v8 - 8);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = type metadata accessor for SmallBreakoutLayout();
  v11 = *(v31 - 8);
  __chkstk_darwin(v31);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10002849C(qword_10097DB40, qword_1007C5240);
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v29 - v16;
  v30 = sub_10002849C(&qword_100970F20, &qword_1007B24B8);
  v18 = *(v30 - 8);
  v19 = __chkstk_darwin(v30);
  v21 = &v29 - v20;
  (*(v15 + 16))(v17, a4, v14, v19);
  type metadata accessor for NilState();
  StateLens.init(_:)();
  sub_100128864(a6, v10);
  swift_getObjectType();
  sub_100129BEC(a6);
  v22 = type metadata accessor for LayoutViewPlaceholder();
  swift_allocObject();
  v23 = LayoutViewPlaceholder.init(representing:)();
  v36 = v22;
  v37 = &protocol witness table for LayoutViewPlaceholder;
  v35 = v23;
  swift_allocObject();
  v24 = LayoutViewPlaceholder.init(representing:)();
  v33 = v22;
  v34 = &protocol witness table for LayoutViewPlaceholder;
  v32 = v24;
  SmallBreakoutLayout.init(metrics:iconView:detailsView:)();
  sub_100708188(&qword_10098D0B0, &type metadata accessor for SmallBreakoutLayout, &protocol conformance descriptor for SmallBreakoutLayout);
  v25 = v31;
  dispatch thunk of Measurable.measurements(fitting:in:)();
  v27 = v26;
  (*(v11 + 8))(v13, v25);
  (*(v18 + 8))(v21, v30);
  return v27;
}

double sub_1006FCD48(uint64_t a1, uint64_t a2, uint64_t a3, __n128 a4, double a5, uint64_t a6, void *a7)
{
  v31 = a7;
  v8 = a4.n128_f64[0];
  v30 = a3;
  v32 = type metadata accessor for ArcadeState();
  v11 = *(v32 - 8);
  __chkstk_darwin(v32);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10002849C(qword_10097DB40, qword_1007C5240);
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v30 - v16;
  v18 = sub_10002849C(&qword_100970F20, &qword_1007B24B8);
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = &v30 - v20;
  sub_10002C0AC(a1, &v33);
  sub_10002849C(&qword_100973D50, &unk_1007B3840);
  type metadata accessor for ArcadeShowcase();
  swift_dynamicCast();
  (*(v15 + 16))(v17, a2, v14);
  type metadata accessor for NilState();
  StateLens.init(_:)();
  type metadata accessor for ArcadeSubscriptionManager();
  type metadata accessor for BaseObjectGraph();
  inject<A, B>(_:from:)();
  v22 = v33;
  ArcadeSubscriptionManager.subscriptionState.getter();
  if (ArcadeState.isSubscribed.getter())
  {
    v23 = ArcadeShowcase.subscribedDescription.getter();
  }

  else
  {
    v23 = ArcadeShowcase.unsubscribedDescription.getter();
  }

  v25 = v23;
  v26 = v24;
  v27 = v31;
  swift_getObjectType();
  v28 = sub_10011DC28(v25, v26, v27, v8, a5);

  (*(v11 + 8))(v13, v32);
  (*(v19 + 8))(v21, v18);

  return v28;
}

double sub_1006FD080(uint64_t a1, uint64_t a2, __n128 a3, double a4, uint64_t a5, void *a6)
{
  v7 = a3.n128_f64[0];
  v55 = type metadata accessor for EditorialQuoteLayout.Metrics();
  v53 = *(v55 - 8);
  __chkstk_darwin(v55);
  v57 = v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = type metadata accessor for EditorialQuoteLayout();
  v59 = *(v60 - 8);
  __chkstk_darwin(v60);
  v58 = v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = type metadata accessor for LabelPlaceholderCompatibility();
  v64 = *(v63 - 8);
  __chkstk_darwin(v63);
  v13 = v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10002849C(qword_10097DB40, qword_1007C5240);
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = v50 - v16;
  v56 = sub_10002849C(&qword_100970F20, &qword_1007B24B8);
  v54 = *(v56 - 8);
  __chkstk_darwin(v56);
  v19 = v50 - v18;
  sub_10002C0AC(a1, &v70);
  sub_10002849C(&qword_100973D50, &unk_1007B3840);
  type metadata accessor for EditorialQuote();
  swift_dynamicCast();
  (*(v15 + 16))(v17, a2, v14);
  type metadata accessor for NilState();
  v52 = v19;
  StateLens.init(_:)();
  v20 = v73;
  [a6 pageMarginInsets];
  CGSize.subtracting(insets:)();
  v21 = [a6 traitCollection];
  LOBYTE(v14) = UITraitCollection.isSizeClassCompact.getter();

  v22 = 4;
  if ((v14 & 1) == 0)
  {
    v22 = 1;
  }

  v61 = v22;
  v51 = v20;
  EditorialQuote.text.getter();
  v50[1] = v23;
  v24 = sub_100005744(0, &qword_1009730E0, UIFont_ptr);
  if (qword_10096D4F8 != -1)
  {
    swift_once();
  }

  v25 = type metadata accessor for FontUseCase();
  sub_1000056A8(v25, qword_1009CEBA8);
  v26 = [a6 traitCollection];
  static UIFont.preferredFont(forUseWith:compatibleWith:)();

  v27 = type metadata accessor for Feature();
  v62 = a6;
  v28 = v27;
  v71 = v27;
  v29 = sub_100708188(&qword_100972E50, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
  v72 = v29;
  v30 = sub_1000056E0(&v70);
  v31 = enum case for Feature.measurement_with_labelplaceholder(_:);
  v32 = *(v28 - 8);
  v50[0] = v24;
  v33 = *(v32 + 104);
  v33(v30, enum case for Feature.measurement_with_labelplaceholder(_:), v28);
  isFeatureEnabled(_:)();
  sub_100007000(&v70);
  LabelPlaceholderCompatibility.init(text:font:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:shouldUseLabelPlaceholder:)();
  LabelPlaceholderCompatibility.layoutTextView.getter();
  v34 = *(v64 + 8);
  v64 += 8;
  v34(v13, v63);
  v51 = EditorialQuote.attribution.getter();
  if (qword_10096D500 != -1)
  {
    swift_once();
  }

  sub_1000056A8(v25, qword_1009CEBC0);
  v35 = [v62 traitCollection];
  static UIFont.preferredFont(forUseWith:compatibleWith:)();

  v68 = v28;
  v69 = v29;
  v36 = sub_1000056E0(v67);
  v33(v36, v31, v28);
  isFeatureEnabled(_:)();
  sub_100007000(v67);
  LabelPlaceholderCompatibility.init(text:font:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:shouldUseLabelPlaceholder:)();
  LabelPlaceholderCompatibility.layoutTextView.getter();
  v34(v13, v63);
  if (qword_10096D4F0 != -1)
  {
    swift_once();
  }

  v37 = v55;
  v38 = sub_1000056A8(v55, qword_1009CEB90);
  (*(v53 + 16))(v57, v38, v37);
  v39 = v71;
  v40 = v72;
  v41 = sub_10002A400(&v70, v71);
  v66[3] = v39;
  v66[4] = *(v40 + 8);
  v42 = sub_1000056E0(v66);
  (*(*(v39 - 8) + 16))(v42, v41, v39);
  v43 = v68;
  v44 = v69;
  v45 = sub_10002A400(v67, v68);
  v65[3] = v43;
  v65[4] = *(v44 + 8);
  v46 = sub_1000056E0(v65);
  (*(*(v43 - 8) + 16))(v46, v45, v43);
  v47 = v58;
  EditorialQuoteLayout.init(metrics:quoteLabel:attributionLabel:)();
  sub_100708188(&unk_10098D260, &type metadata accessor for EditorialQuoteLayout, &protocol conformance descriptor for EditorialQuoteLayout);
  v48 = v60;
  dispatch thunk of Measurable.measurements(fitting:in:)();
  (*(v59 + 8))(v47, v48);
  (*(v54 + 8))(v52, v56);
  sub_100007000(v67);
  sub_100007000(&v70);

  return v7;
}

double sub_1006FD97C(uint64_t a1, uint64_t a2, double a3, uint64_t a4, void *a5)
{
  v24 = a5;
  v25 = type metadata accessor for HorizontalRule.Style();
  v8 = *(v25 - 8);
  __chkstk_darwin(v25);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10002849C(qword_10097DB40, qword_1007C5240);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v24 - v13;
  v15 = sub_10002849C(&qword_100970F20, &qword_1007B24B8);
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v24 - v17;
  sub_10002C0AC(a1, v26);
  sub_10002849C(&qword_100973D50, &unk_1007B3840);
  type metadata accessor for HorizontalRule();
  swift_dynamicCast();
  (*(v12 + 16))(v14, a2, v11);
  type metadata accessor for NilState();
  StateLens.init(_:)();
  if (HorizontalRule.isFullWidth.getter())
  {
    v19 = v24;
  }

  else
  {
    v19 = v24;
    [v24 pageMarginInsets];
    a3 = a3 - v20 - v21;
  }

  HorizontalRule.style.getter();
  v22 = [v19 traitCollection];
  HorizontalRule.Style.lineThickness(traitCollection:)();

  (*(v8 + 8))(v10, v25);
  (*(v16 + 8))(v18, v15);

  return a3;
}

double sub_1006FDC78(uint64_t a1, uint64_t a2, double a3, double a4, uint64_t a5, void *a6)
{
  v10 = sub_10002849C(qword_10097DB40, qword_1007C5240);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v20 - v12;
  v14 = sub_10002849C(&qword_100970F20, &qword_1007B24B8);
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = v20 - v16;
  sub_10002C0AC(a1, v20);
  sub_10002849C(&qword_100973D50, &unk_1007B3840);
  type metadata accessor for PrivacyCategory();
  swift_dynamicCast();
  (*(v11 + 16))(v13, a2, v10);
  type metadata accessor for NilState();
  StateLens.init(_:)();
  v18 = v20[5];
  type metadata accessor for PrivacyCategoryView();
  swift_getObjectType();
  v20[0] = sub_10037A62C(v18, a6);
  type metadata accessor for LayoutViewPlaceholder();
  dispatch thunk of Measurable.measurements(fitting:in:)();
  (*(v15 + 8))(v17, v14);

  return a3;
}

double sub_1006FDEE0(uint64_t a1, uint64_t a2, double a3, double a4, uint64_t a5, void *a6)
{
  v50 = type metadata accessor for BreakoutDetailsDisplayProperties.DetailPosition();
  v48 = *(v50 - 8);
  __chkstk_darwin(v50);
  v46 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = type metadata accessor for BreakoutDetailsDisplayProperties();
  v44 = *(v45 - 8);
  __chkstk_darwin(v45);
  v11 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for LargeHeroBreakoutLayout.Metrics();
  __chkstk_darwin(v12 - 8);
  v47 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = type metadata accessor for LargeHeroBreakoutLayout();
  v51 = *(v52 - 8);
  __chkstk_darwin(v52);
  v49 = &v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = type metadata accessor for LabelPlaceholderCompatibility();
  v15 = *(v40 - 8);
  __chkstk_darwin(v40);
  v17 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_10002849C(qword_10097DB40, qword_1007C5240);
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = &v38 - v20;
  v43 = sub_10002849C(&qword_100970F20, &qword_1007B24B8);
  v42 = *(v43 - 8);
  __chkstk_darwin(v43);
  v23 = &v38 - v22;
  sub_10002C0AC(a1, v61);
  sub_10002849C(&qword_100973D50, &unk_1007B3840);
  type metadata accessor for LargeHeroBreakout();
  swift_dynamicCast();
  (*(v19 + 16))(v21, a2, v18);
  type metadata accessor for NilState();
  v41 = v23;
  StateLens.init(_:)();
  v53 = a6;
  v24 = [a6 traitCollection];
  v25 = type metadata accessor for LayoutViewPlaceholder();
  swift_allocObject();
  v26 = LayoutViewPlaceholder.init(representing:)();
  LargeHeroBreakout.heading.getter();
  sub_100005744(0, &qword_1009730E0, UIFont_ptr);
  if (qword_10096E2E0 != -1)
  {
    swift_once();
  }

  v27 = type metadata accessor for FontUseCase();
  sub_1000056A8(v27, qword_1009D1820);
  static UIFont.preferredFont(forUseWith:compatibleWith:)();
  v28 = type metadata accessor for Feature();
  v39 = v24;
  v29 = v28;
  v61[3] = v28;
  v61[4] = sub_100708188(&qword_100972E50, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
  v30 = sub_1000056E0(v61);
  (*(*(v29 - 8) + 104))(v30, enum case for Feature.measurement_with_labelplaceholder(_:), v29);
  isFeatureEnabled(_:)();
  sub_100007000(v61);
  LabelPlaceholderCompatibility.init(text:font:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:shouldUseLabelPlaceholder:)();
  LabelPlaceholderCompatibility.layoutTextView.getter();
  (*(v15 + 8))(v17, v40);
  LargeHeroBreakout.detailsDisplayProperties.getter();
  v31 = v46;
  BreakoutDetailsDisplayProperties.position.getter();
  (*(v44 + 8))(v11, v45);
  sub_1003AE3AC(v31, v53, v47);
  (*(v48 + 8))(v31, v50);
  swift_allocObject();
  v32 = LayoutViewPlaceholder.init(representing:)();
  v59 = v25;
  v60 = &protocol witness table for LayoutViewPlaceholder;
  v58 = v32;
  sub_10002C0AC(v61, v57);
  v55 = v25;
  v56 = &protocol witness table for LayoutViewPlaceholder;
  v54 = v26;

  v33 = v49;
  LargeHeroBreakoutLayout.init(metrics:backgroundMediaView:headerLabel:detailsView:)();
  sub_100708188(&qword_100982468, &type metadata accessor for LargeHeroBreakoutLayout, &protocol conformance descriptor for LargeHeroBreakoutLayout);
  v34 = v52;
  dispatch thunk of Measurable.measurements(fitting:in:)();
  v36 = v35;

  (*(v51 + 8))(v33, v34);
  sub_100007000(v61);
  (*(v42 + 8))(v41, v43);

  return v36;
}

double sub_1006FE6B8(uint64_t a1, uint64_t a2, double a3, double a4, uint64_t a5, void *a6)
{
  v50 = type metadata accessor for PrivacyDefinitionLayout.Metrics();
  v49 = *(v50 - 8);
  __chkstk_darwin(v50);
  v51 = v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = type metadata accessor for PrivacyDefinitionLayout();
  v53 = *(v54 - 8);
  __chkstk_darwin(v54);
  v52 = v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = type metadata accessor for LabelPlaceholderCompatibility();
  v57 = *(v56 - 8);
  __chkstk_darwin(v56);
  v12 = v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10002849C(qword_10097DB40, qword_1007C5240);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = v43 - v15;
  v48 = sub_10002849C(&qword_100970F20, &qword_1007B24B8);
  v47 = *(v48 - 8);
  __chkstk_darwin(v48);
  v18 = v43 - v17;
  sub_10002C0AC(a1, v61);
  sub_10002849C(&qword_100973D50, &unk_1007B3840);
  type metadata accessor for PrivacyDefinition();
  swift_dynamicCast();
  (*(v14 + 16))(v16, a2, v13);
  type metadata accessor for NilState();
  v46 = v18;
  StateLens.init(_:)();
  v19 = v61[5];
  v20 = sub_100005744(0, &qword_1009730E0, UIFont_ptr);
  if (qword_10096E0C0 != -1)
  {
    swift_once();
  }

  v44 = type metadata accessor for FontUseCase();
  sub_1000056A8(v44, qword_1009D11C0);
  v21 = [a6 traitCollection];
  v22 = static UIFont.preferredFont(forUseWith:compatibleWith:)();

  PrivacyDefinition.title.getter();
  v23 = type metadata accessor for Feature();
  v61[3] = v23;
  v24 = sub_100708188(&qword_100972E50, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
  v61[4] = v24;
  v25 = sub_1000056E0(v61);
  v26 = enum case for Feature.measurement_with_labelplaceholder(_:);
  v27 = *(v23 - 8);
  v43[1] = v19;
  v28 = *(v27 + 104);
  v55 = a6;
  v28(v25, enum case for Feature.measurement_with_labelplaceholder(_:), v23);
  v29 = v22;
  v43[0] = v20;
  v30 = v29;
  isFeatureEnabled(_:)();
  sub_100007000(v61);
  v45 = v30;
  LabelPlaceholderCompatibility.init(text:font:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:shouldUseLabelPlaceholder:)();
  LabelPlaceholderCompatibility.layoutTextView.getter();
  v31 = *(v57 + 8);
  v57 += 8;
  v31(v12, v56);
  if (qword_10096E0C8 != -1)
  {
    swift_once();
  }

  sub_1000056A8(v44, qword_1009D11D8);
  v32 = [v55 traitCollection];
  v33 = static UIFont.preferredFont(forUseWith:compatibleWith:)();

  PrivacyDefinition.definition.getter();
  v60[3] = v23;
  v60[4] = v24;
  v34 = sub_1000056E0(v60);
  v28(v34, v26, v23);
  v35 = v33;
  isFeatureEnabled(_:)();
  sub_100007000(v60);
  LabelPlaceholderCompatibility.init(text:font:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:shouldUseLabelPlaceholder:)();
  LabelPlaceholderCompatibility.layoutTextView.getter();
  v31(v12, v56);
  if (qword_10096CE50 != -1)
  {
    swift_once();
  }

  v36 = v50;
  v37 = sub_1000056A8(v50, qword_1009CD720);
  (*(v49 + 16))(v51, v37, v36);
  sub_10002C0AC(v61, v59);
  sub_10002C0AC(v60, v58);
  v38 = v52;
  PrivacyDefinitionLayout.init(metrics:titleLabel:definitionLabel:)();
  sub_100708188(&qword_1009794F8, &type metadata accessor for PrivacyDefinitionLayout, &protocol conformance descriptor for PrivacyDefinitionLayout);
  v39 = v54;
  dispatch thunk of Measurable.measurements(fitting:in:)();
  v41 = v40;

  (*(v53 + 8))(v38, v39);
  sub_100007000(v60);
  sub_100007000(v61);
  (*(v47 + 8))(v46, v48);

  return v41;
}

double sub_1006FEED0(uint64_t a1, uint64_t a2, double a3, double a4, uint64_t a5, void *a6)
{
  v92 = a6;
  v89 = type metadata accessor for LabelPlaceholderCompatibility();
  v88 = *(v89 - 8);
  __chkstk_darwin(v89);
  v85 = &v75 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v83 = &v75 - v10;
  __chkstk_darwin(v11);
  v82 = &v75 - v12;
  v80 = type metadata accessor for AchievementGroupView.Size();
  v79 = *(v80 - 8);
  __chkstk_darwin(v80);
  v81 = &v75 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = type metadata accessor for AchievementSummaryLayout();
  v86 = *(v87 - 8);
  __chkstk_darwin(v87);
  v84 = &v75 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for AchievementSummaryLayout.Metrics();
  v98 = *(v15 - 8);
  __chkstk_darwin(v15);
  v93 = &v75 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v97 = &v75 - v18;
  v19 = type metadata accessor for Achievement();
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v78 = &v75 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v24 = &v75 - v23;
  v25 = sub_10002849C(qword_10097DB40, qword_1007C5240);
  v26 = *(v25 - 8);
  __chkstk_darwin(v25);
  v28 = &v75 - v27;
  v96 = sub_10002849C(&qword_100970F20, &qword_1007B24B8);
  v95 = *(v96 - 8);
  __chkstk_darwin(v96);
  v30 = &v75 - v29;
  sub_10002C0AC(a1, v105);
  sub_10002849C(&qword_100973D50, &unk_1007B3840);
  type metadata accessor for AchievementSummary();
  swift_dynamicCast();
  (*(v26 + 16))(v28, a2, v25);
  type metadata accessor for NilState();
  v94 = v30;
  StateLens.init(_:)();
  v31 = v105[5];
  v32 = AchievementSummary.achievements.getter();
  if (*(v32 + 16))
  {
    v33 = v20;
    v34 = v92;
    v77 = v33;
    v35 = *(v33 + 16);
    v36 = v32 + ((*(v33 + 80) + 32) & ~*(v33 + 80));
    v90 = v24;
    v91 = v19;
    v35(v24, v36, v19);

    if (qword_10096DA00 != -1)
    {
      swift_once();
    }

    v37 = sub_1000056A8(v15, qword_1009CFC78);
    v38 = *(v98 + 16);
    v39 = v97;
    v38(v97, v37, v15);
    v40 = [v34 traitCollection];
    v41 = UITraitCollection.prefersAccessibilityLayouts.getter();

    if (v41)
    {
      v75 = v15;
      v38(v93, v39, v15);
      v35(v78, v90, v91);
      v42 = v31;
      AchievementSummary.totalAchievements.getter();
      v43 = [v34 traitCollection];
      v44 = UITraitCollection.isSizeClassCompact.getter();

      v45 = &enum case for AchievementGroupView.Size.phone(_:);
      if ((v44 & 1) == 0)
      {
        v45 = &enum case for AchievementGroupView.Size.pad(_:);
      }

      (*(v79 + 104))(v81, *v45, v80);
      v46 = type metadata accessor for AchievementGroupView();
      v47 = objc_allocWithZone(v46);
      v48 = AchievementGroupView.init(visibleModel:showSecondCard:cardSize:)();
      v105[3] = v46;
      v105[4] = &protocol witness table for UIView;
      v105[0] = v48;
      v49 = AchievementSummary.completedAchievements.getter();
      v50._object = 0x80000001008005F0;
      v50._countAndFlagsBits = 0xD000000000000032;
      v51._countAndFlagsBits = 0;
      v51._object = 0xE000000000000000;
      localizedStringWithCount(_:count:comment:)(v50, v49, v51);
      v52 = sub_100005744(0, &qword_1009730E0, UIFont_ptr);
      if (qword_10096E040 != -1)
      {
        swift_once();
      }

      v81 = type metadata accessor for FontUseCase();
      sub_1000056A8(v81, qword_1009D1040);
      v80 = v52;
      static UIFont.preferredFont(forUseWith:in:)();
      v53 = type metadata accessor for Feature();
      v104[3] = v53;
      v79 = sub_100708188(&qword_100972E50, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
      v104[4] = v79;
      v54 = sub_1000056E0(v104);
      v55 = *(*(v53 - 8) + 104);
      LODWORD(v78) = enum case for Feature.measurement_with_labelplaceholder(_:);
      v76 = v55;
      v55(v54);
      isFeatureEnabled(_:)();
      sub_100007000(v104);
      v56 = v82;
      LabelPlaceholderCompatibility.init(text:font:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:shouldUseLabelPlaceholder:)();
      LabelPlaceholderCompatibility.layoutTextView.getter();
      v57 = *(v88 + 8);
      v58 = v89;
      v57(v56, v89);
      v59 = [v34 traitCollection];
      sub_10059DF60();
      v88 = v42;

      if (qword_10096E048 != -1)
      {
        swift_once();
      }

      sub_1000056A8(v81, qword_1009D1058);
      static UIFont.preferredFont(forUseWith:in:)();
      v103[3] = v53;
      v103[4] = v79;
      v60 = sub_1000056E0(v103);
      v76(v60, v78, v53);
      isFeatureEnabled(_:)();
      sub_100007000(v103);
      v61 = v83;
      LabelPlaceholderCompatibility.init(text:font:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:shouldUseLabelPlaceholder:)();
      LabelPlaceholderCompatibility.layoutTextView.getter();
      v57(v61, v58);
      AchievementSummary.completedText.getter();
      if (qword_10096E050 != -1)
      {
        swift_once();
      }

      sub_1000056A8(v81, qword_1009D1070);
      static UIFont.preferredFont(forUseWith:in:)();
      v102[3] = v53;
      v102[4] = v79;
      v62 = sub_1000056E0(v102);
      v76(v62, v78, v53);
      isFeatureEnabled(_:)();
      sub_100007000(v102);
      v63 = v85;
      LabelPlaceholderCompatibility.init(text:font:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:shouldUseLabelPlaceholder:)();
      LabelPlaceholderCompatibility.layoutTextView.getter();
      v57(v63, v58);
      v101 = 0;
      v100 = 0u;
      v99 = 0u;
      v64 = v84;
      AchievementSummaryLayout.init(metrics:achievementGroupView:numberCompletedLabel:outOfTotalLabel:completedLabel:chevronView:)();
      sub_100708188(&unk_10098CEA0, &type metadata accessor for AchievementSummaryLayout, &protocol conformance descriptor for AchievementSummaryLayout);
      v65 = v87;
      dispatch thunk of Measurable.measurements(fitting:in:)();
      v67 = v66;
      (*(v86 + 8))(v64, v65);
      (*(v98 + 8))(v97, v75);
      (*(v77 + 8))(v90, v91);
    }

    else
    {
      [v34 pageContainerSize];
      if (v69 >= v68)
      {
        v71 = v91;
        v70 = v97;
      }

      else
      {
        JUScreenClassGetLandscapeWidth();
        v70 = v97;
        v71 = v91;
      }

      v72 = v90;
      static AchievementSummaryLayout.estimatedMeasurements(fitting:using:in:)();
      v67 = v73;
      (*(v98 + 8))(v70, v15);
      (*(v77 + 8))(v72, v71);
    }
  }

  else
  {

    v67 = 0.0;
  }

  (*(v95 + 8))(v94, v96);

  return v67;
}

double sub_1006FFC50(uint64_t a1, uint64_t a2, double a3, uint64_t a4, void *a5)
{
  v9 = sub_10002849C(qword_10097DB40, qword_1007C5240);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v23[-v11];
  v13 = sub_10002849C(&qword_100970F20, &qword_1007B24B8);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v23[-v15];
  sub_10002C0AC(a1, v23);
  sub_10002849C(&qword_100973D50, &unk_1007B3840);
  type metadata accessor for ArcadeDownloadPackCard();
  swift_dynamicCast();
  (*(v10 + 16))(v12, a2, v9);
  type metadata accessor for NilState();
  StateLens.init(_:)();
  v17 = ArcadeDownloadPackCard.numberOfPlaceholders.getter();
  if (v18)
  {
    v19 = ArcadeDownloadPackCard.lockups.getter();
    if (v19 >> 62)
    {
      v20 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v20 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }
  }

  else
  {
    v20 = v17;
  }

  v21 = [a5 traitCollection];
  sub_1002F4FF4(v20, v21);

  (*(v14 + 8))(v16, v13);

  return a3;
}

double sub_1006FFECC(uint64_t a1, uint64_t a2, double a3, double a4, uint64_t a5, void *a6)
{
  v28 = a6;
  v27 = type metadata accessor for LabelPlaceholderCompatibility();
  v8 = *(v27 - 8);
  __chkstk_darwin(v27);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10002849C(qword_10097DB40, qword_1007C5240);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v25 - v13;
  v26 = sub_10002849C(&qword_100970F20, &qword_1007B24B8);
  v15 = *(v26 - 8);
  __chkstk_darwin(v26);
  v17 = &v25 - v16;
  sub_10002C0AC(a1, v29);
  sub_10002849C(&qword_100973D50, &unk_1007B3840);
  type metadata accessor for PreorderDisclaimer();
  swift_dynamicCast();
  (*(v12 + 16))(v14, a2, v11);
  type metadata accessor for NilState();
  StateLens.init(_:)();
  PreorderDisclaimer.disclaimer.getter();
  sub_100005744(0, &qword_1009730E0, UIFont_ptr);
  if (qword_10096DF98 != -1)
  {
    swift_once();
  }

  v18 = type metadata accessor for FontUseCase();
  sub_1000056A8(v18, qword_1009D0E48);
  v19 = [v28 traitCollection];
  static UIFont.preferredFont(forUseWith:compatibleWith:)();

  v20 = type metadata accessor for Feature();
  v30 = v20;
  v31 = sub_100708188(&qword_100972E50, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
  v21 = sub_1000056E0(v29);
  (*(*(v20 - 8) + 104))(v21, enum case for Feature.measurement_with_labelplaceholder(_:), v20);
  isFeatureEnabled(_:)();
  sub_100007000(v29);
  LabelPlaceholderCompatibility.init(text:font:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:shouldUseLabelPlaceholder:)();
  LabelPlaceholderCompatibility.layoutTextView.getter();
  (*(v8 + 8))(v10, v27);
  sub_10002A400(v29, v30);
  Measurable.measuredSize(fitting:in:)();
  v23 = v22;
  (*(v15 + 8))(v17, v26);
  sub_100007000(v29);

  return v23;
}

double sub_100700324(uint64_t a1, uint64_t a2, double a3, double a4, uint64_t a5, void *a6)
{
  v51 = a6;
  v8 = type metadata accessor for GameCenterReengagementLayout.Metrics();
  __chkstk_darwin(v8 - 8);
  v47 = v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for GameCenterReengagementLayout();
  v49 = *(v10 - 8);
  v50 = v10;
  __chkstk_darwin(v10);
  v48 = v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = type metadata accessor for LabelPlaceholderCompatibility();
  v12 = *(v59 - 8);
  __chkstk_darwin(v59);
  v14 = v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_10002849C(qword_10097DB40, qword_1007C5240);
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = v43 - v17;
  v19 = sub_10002849C(&qword_100970F20, &qword_1007B24B8);
  v45 = *(v19 - 8);
  v46 = v19;
  __chkstk_darwin(v19);
  v21 = v43 - v20;
  sub_10002C0AC(a1, v76);
  sub_10002849C(&qword_100973D50, &unk_1007B3840);
  type metadata accessor for GameCenterReengagement();
  swift_dynamicCast();
  (*(v16 + 16))(v18, a2, v15);
  type metadata accessor for NilState();
  v44 = v21;
  StateLens.init(_:)();
  v58 = v76[5];
  GameCenterReengagement.badge.getter();
  v22 = sub_100005744(0, &qword_1009730E0, UIFont_ptr);
  if (qword_10096E380 != -1)
  {
    swift_once();
  }

  v57 = type metadata accessor for FontUseCase();
  sub_1000056A8(v57, qword_1009D1A00);
  v23 = [v51 traitCollection];
  static UIFont.preferredFont(forUseWith:compatibleWith:)();

  v24 = type metadata accessor for Feature();
  v76[3] = v24;
  v56 = sub_100708188(&qword_100972E50, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
  v76[4] = v56;
  v25 = sub_1000056E0(v76);
  v26 = *(*(v24 - 8) + 104);
  v55 = enum case for Feature.measurement_with_labelplaceholder(_:);
  v54 = v26;
  v26(v25);
  isFeatureEnabled(_:)();
  v52 = v22;
  sub_100007000(v76);
  LabelPlaceholderCompatibility.init(text:font:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:shouldUseLabelPlaceholder:)();
  LabelPlaceholderCompatibility.layoutTextView.getter();
  v53 = *(v12 + 8);
  v53(v14, v59);
  GameCenterReengagement.title.getter();
  if (qword_10096E388 != -1)
  {
    swift_once();
  }

  sub_1000056A8(v57, qword_1009D1A18);
  v27 = v51;
  v28 = [v51 traitCollection];
  static UIFont.preferredFont(forUseWith:compatibleWith:)();

  v75[3] = v24;
  v75[4] = v56;
  v29 = sub_1000056E0(v75);
  v54(v29, v55, v24);
  isFeatureEnabled(_:)();
  sub_100007000(v75);
  LabelPlaceholderCompatibility.init(text:font:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:shouldUseLabelPlaceholder:)();
  LabelPlaceholderCompatibility.layoutTextView.getter();
  v53(v14, v59);
  GameCenterReengagement.subtitle.getter();
  if (qword_10096E390 != -1)
  {
    swift_once();
  }

  sub_1000056A8(v57, qword_1009D1A30);
  v30 = [v27 traitCollection];
  static UIFont.preferredFont(forUseWith:compatibleWith:)();

  v74[3] = v24;
  v74[4] = v56;
  v31 = sub_1000056E0(v74);
  v54(v31, v55, v24);
  isFeatureEnabled(_:)();
  sub_100007000(v74);
  LabelPlaceholderCompatibility.init(text:font:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:shouldUseLabelPlaceholder:)();
  LabelPlaceholderCompatibility.layoutTextView.getter();
  v53(v14, v59);
  v32 = type metadata accessor for LayoutViewPlaceholder();
  swift_allocObject();
  v33 = LayoutViewPlaceholder.init(measurements:)();
  v34 = swift_allocObject();
  v34[2] = v58;
  v34[3] = v27;
  v34[4] = v43[1];
  swift_allocObject();

  swift_unknownObjectRetain();
  v35 = LayoutViewPlaceholder.init(measureWith:)();
  sub_10041DBC0(v27, v47);
  v73 = 0;
  *&v71[40] = 0u;
  v72 = 0u;
  sub_10002C0AC(v76, v71);
  sub_10002C0AC(v75, &v70);
  sub_10002C0AC(v74, &v69);
  v67 = v32;
  v68 = &protocol witness table for LayoutViewPlaceholder;
  v66 = v33;

  v36 = [v27 traitCollection];
  static Separator.thickness(compatibleWith:)();

  swift_allocObject();
  v37 = LayoutViewPlaceholder.init(representing:)();
  v64 = v32;
  v65 = &protocol witness table for LayoutViewPlaceholder;
  v62 = &protocol witness table for LayoutViewPlaceholder;
  v63 = v37;
  v61 = v32;
  v60 = v35;

  v38 = v48;
  GameCenterReengagementLayout.init(metrics:badgeGlyph:badgeLabel:titleLabel:subtitleLabel:heroContent:separator:footer:)();
  sub_100708188(&unk_100993010, &type metadata accessor for GameCenterReengagementLayout, &protocol conformance descriptor for GameCenterReengagementLayout);
  v39 = v50;
  dispatch thunk of Measurable.measurements(fitting:in:)();
  v41 = v40;

  (*(v49 + 8))(v38, v39);
  sub_100007000(v74);
  sub_100007000(v75);
  sub_100007000(v76);
  (*(v45 + 8))(v44, v46);

  return v41;
}

uint64_t sub_100700C88(uint64_t a1, char *a2, uint64_t a3)
{
  v106 = a3;
  v104 = a2;
  v5 = sub_10002849C(&unk_100973AD0, &unk_1007B17C0);
  __chkstk_darwin(v5 - 8);
  v92 = v85 - v6;
  v7 = sub_10002849C(&unk_100970150, &unk_1007BDDD0);
  __chkstk_darwin(v7 - 8);
  v94 = v85 - v8;
  v9 = sub_10002849C(&unk_100970160, &unk_1007BDDE0);
  __chkstk_darwin(v9 - 8);
  v93 = v85 - v10;
  v11 = sub_10002849C(&qword_100973AE0, &unk_1007B17D0);
  __chkstk_darwin(v11 - 8);
  v91 = v85 - v12;
  v13 = sub_10002849C(&unk_100973230, &unk_1007B17E0);
  __chkstk_darwin(v13 - 8);
  v90 = v85 - v14;
  v15 = type metadata accessor for MediaOverlayStyle();
  __chkstk_darwin(v15 - 8);
  v89 = v85 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = type metadata accessor for CornerStyle();
  v87 = *(v88 - 8);
  __chkstk_darwin(v88);
  v86 = v85 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_10002849C(&unk_100973A50, &unk_1007B4FD0);
  __chkstk_darwin(v18 - 8);
  v99 = v85 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v98 = v85 - v21;
  v22 = sub_10002849C(&qword_100982460, &unk_1007B5C90);
  __chkstk_darwin(v22 - 8);
  v97 = v85 - v23;
  v24 = type metadata accessor for VideoControls();
  __chkstk_darwin(v24 - 8);
  v96 = v85 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v95 = v85 - v27;
  v28 = sub_10002849C(&unk_1009732A0, &unk_1007B4FE0);
  __chkstk_darwin(v28 - 8);
  v30 = v85 - v29;
  v31 = type metadata accessor for VideoFillMode();
  v32 = *(v31 - 8);
  __chkstk_darwin(v31);
  v34 = v85 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = type metadata accessor for VideoConfiguration();
  v102 = *(v35 - 8);
  v103 = v35;
  __chkstk_darwin(v35);
  v105 = v85 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = sub_10002849C(&unk_10097DAF0, &qword_1007B2A30);
  v38 = *(v37 - 8);
  __chkstk_darwin(v37);
  v40 = v85 - v39;
  v41 = sub_10002849C(&unk_1009731C0, &qword_1007B4578);
  v100 = *(v41 - 8);
  v101 = v41;
  __chkstk_darwin(v41);
  v43 = v85 - v42;
  sub_10002C0AC(a1, v108);
  sub_10002849C(&qword_100973D50, &unk_1007B3840);
  type metadata accessor for VideoCard();
  result = swift_dynamicCast();
  if (!result)
  {
    return result;
  }

  v85[0] = v3;
  v45 = v107;
  (*(v38 + 16))(v40, v104, v37);
  type metadata accessor for NilState();
  v104 = v43;
  WritableStateLens.init(_:)();
  v85[1] = v45;
  VideoCard.video.getter();
  (*(v32 + 104))(v34, enum case for VideoFillMode.scaleAspectFill(_:), v31);
  Video.preview.getter();
  Artwork.size.getter();
  AspectRatio.init(_:_:)();

  v46 = type metadata accessor for AspectRatio();
  (*(*(v46 - 8) + 56))(v30, 0, 1, v46);
  Video.playbackControls.getter();
  Video.autoPlayPlaybackControls.getter();
  Video.canPlayFullScreen.getter();
  Video.allowsAutoPlay.getter();
  Video.looping.getter();
  v47 = v105;
  VideoConfiguration.init(fillMode:aspectRatio:playbackControls:autoPlayPlaybackControls:canPlayFullScreen:allowsAutoPlay:looping:roundedCorners:deviceCornerRadiusFactor:)();
  type metadata accessor for VideoViewManager();
  BaseObjectGraph.inject<A>(_:)();
  v48 = v108[0];
  Video.playbackId.getter();
  v49 = v97;
  Video.videoUrl.getter();
  v50 = type metadata accessor for URL();
  (*(*(v50 - 8) + 56))(v49, 0, 1, v50);
  v51 = v98;
  Video.templateMediaEvent.getter();
  v52 = v99;
  Video.templateClickEvent.getter();
  type metadata accessor for VideoView(0);
  sub_100708188(&qword_100973190, type metadata accessor for VideoView, &unk_1007D1B30);
  v96 = v48;
  v53 = dispatch thunk of VideoViewManager.videoView<A>(with:videoUrl:configuration:templateMediaEvent:templateClickEvent:asPartOf:)();
  sub_10002B894(v52, &unk_100973A50, &unk_1007B4FD0);
  sub_10002B894(v51, &unk_100973A50, &unk_1007B4FD0);
  sub_10002B894(v49, &qword_100982460, &unk_1007B5C90);
  sub_10002B894(v108, &qword_10096FB90, &qword_1007B2A50);
  v54 = *(v85[0] + OBJC_IVAR____TtC8AppStore27VideoCardCollectionViewCell_videoCardView);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v56 = Strong;
    v57 = [Strong superview];
    if (v57)
    {
      v58 = v57;
      sub_100005744(0, &qword_100972EB0, UIView_ptr);
      v59 = v54;
      v60 = static NSObject.== infix(_:_:)();

      if ((v60 & 1) == 0)
      {
        goto LABEL_8;
      }

      v61 = swift_unknownObjectWeakLoadStrong();
      if (!v61)
      {
        goto LABEL_8;
      }

      v56 = v61;
      [v61 removeFromSuperview];
    }
  }

LABEL_8:
  swift_unknownObjectWeakAssign();
  v62 = swift_unknownObjectWeakLoadStrong();
  if (v62)
  {
    v63 = v62;
    v64 = v87;
    v65 = v86;
    v66 = v88;
    (*(v87 + 104))(v86, enum case for CornerStyle.continuous(_:), v88);
    dispatch thunk of RoundedCornerView.setCorner(radius:style:)();
    (*(v64 + 8))(v65, v66);
    [v54 addSubview:v63];
    [v54 sendSubviewToBack:v63];
    [v54 setNeedsLayout];
  }

  v67 = swift_unknownObjectWeakLoadStrong();
  if (v67)
  {
    v67[qword_100988CC8] = 1;
  }

  v68 = *&v54[OBJC_IVAR____TtC8AppStore13VideoCardView_overlayView];
  v69 = VideoCard.lockup.getter();
  if (v69)
  {
    v70 = v69;
    [v68 setHidden:0];
    v71 = v89;
    VideoCard.overlayStyle.getter();
    sub_1001C1010(v71);
    v72 = *&v54[OBJC_IVAR____TtC8AppStore13VideoCardView_lockupView];
    v73 = sub_10002849C(&unk_100973240, qword_1007B2220);
    v74 = v90;
    (*(*(v73 - 8) + 56))(v90, 1, 1, v73);
    v75 = type metadata accessor for OfferStyle();
    v76 = v91;
    (*(*(v75 - 8) + 56))(v91, 1, 1, v75);
    v77 = type metadata accessor for OfferEnvironment();
    v78 = v93;
    (*(*(v77 - 8) + 56))(v93, 1, 1, v77);
    v79 = sub_10002849C(&unk_1009701A0, &unk_1007B17F0);
    v80 = v94;
    (*(*(v79 - 8) + 56))(v94, 1, 1, v79);
    v81 = type metadata accessor for OfferTint();
    v82 = v92;
    (*(*(v81 - 8) + 56))(v92, 1, 1, v81);
    v83 = v72;
    sub_1004F3190(v70, v83, v74, v106, 0, 0, v76, v78, v82, v80);
    sub_10002B894(v82, &unk_100973AD0, &unk_1007B17C0);
    v83[OBJC_IVAR____TtC8AppStore15SmallLockupView_enforceMaximumOfTwoLinesOverall] = 0;
    sub_10070AB34();
    [v83 setNeedsLayout];

    sub_10002B894(v80, &unk_100970150, &unk_1007BDDD0);
    sub_10002B894(v78, &unk_100970160, &unk_1007BDDE0);
    sub_10002B894(v76, &qword_100973AE0, &unk_1007B17D0);
    sub_10002B894(v74, &unk_100973230, &unk_1007B17E0);
    (*(v102 + 8))(v105, v103);
  }

  else
  {
    v84 = v68;
    [v84 setHidden:1];

    (*(v102 + 8))(v47, v103);
  }

  return (*(v100 + 8))(v104, v101);
}

uint64_t sub_100701A98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v71 = a3;
  v67 = a2;
  v6 = sub_10002849C(&qword_10097B3F0, &qword_1007B3120);
  __chkstk_darwin(v6 - 8);
  v68 = &v65 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v65 - v9;
  v11 = sub_10002849C(&unk_10097DAF0, &qword_1007B2A30);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v65 - v13;
  v15 = sub_10002849C(&unk_100992FA0, &qword_1007B15C0);
  v69 = *(v15 - 8);
  v70 = v15;
  __chkstk_darwin(v15);
  v17 = &v65 - v16;
  v18 = sub_10002849C(&qword_10098F3E8, &unk_1007DA290);
  __chkstk_darwin(v18 - 8);
  v20 = &v65 - v19;
  v21 = type metadata accessor for Annotation();
  v22 = *(v21 - 8);
  __chkstk_darwin(v21);
  v24 = &v65 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = a1;
  v27 = v26;
  sub_10002C0AC(v25, v72);
  sub_10002849C(&qword_100973D50, &unk_1007B3840);
  v28 = swift_dynamicCast();
  v29 = *(v22 + 56);
  if (v28)
  {
    v29(v20, 0, 1, v27);
    v65 = v22;
    v66 = v27;
    (*(v22 + 32))(v24, v20, v27);
    (*(v12 + 16))(v14, v67, v11);
    WritableStateLens.init(_:)();
    *&v4[OBJC_IVAR____TtC8AppStore28AnnotationCollectionViewCell_detailItems] = Annotation.items.getter();

    v30 = Annotation.title.getter();
    v31 = &v4[OBJC_IVAR____TtC8AppStore28AnnotationCollectionViewCell_titleText];
    *v31 = v30;
    v31[1] = v32;

    v33 = *&v4[OBJC_IVAR____TtC8AppStore28AnnotationCollectionViewCell_titleLabel];

    v34 = String._bridgeToObjectiveC()();

    [v33 setText:v34];

    [v4 setNeedsLayout];
    v35 = Annotation.summary.getter();
    v36 = &v4[OBJC_IVAR____TtC8AppStore28AnnotationCollectionViewCell_explicitSummary];
    *v36 = v35;
    v36[1] = v37;

    sub_1000B19A4(v38);
    v39 = Annotation.linkAction.getter();
    if (v39)
    {
      v72[0] = v39;
      type metadata accessor for Action();
      type metadata accessor for BaseObjectGraph();
      sub_100708188(&qword_100992FB0, &type metadata accessor for Action, &protocol conformance descriptor for Action);
      ComponentModel.pairedWith<A>(objectGraph:)();

      v40 = 0;
    }

    else
    {
      v40 = 1;
    }

    v42 = sub_10002849C(&unk_10097B3D0, "α\b");
    v43 = 1;
    (*(*(v42 - 8) + 56))(v10, v40, 1, v42);
    v44 = OBJC_IVAR____TtC8AppStore28AnnotationCollectionViewCell_linkAction;
    swift_beginAccess();
    sub_1000C112C(v10, &v4[v44], &qword_10097B3F0, &qword_1007B3120);
    swift_endAccess();
    sub_1000B1B2C();
    sub_10002B894(v10, &qword_10097B3F0, &qword_1007B3120);
    sub_100036A58();
    v45 = v70;
    v46 = v17;
    WritableStateLens<A>.currentValue.getter();
    if ((v72[0] & 1) == 0)
    {
      v43 = Annotation.shouldAlwaysPresentExpanded.getter();
    }

    sub_1000B351C();
    v4[OBJC_IVAR____TtC8AppStore28AnnotationCollectionViewCell_isExpanded] = v43 & 1;
    sub_1000B16F8();
    v47 = Annotation.linkAction.getter();
    if (v47)
    {
      v72[0] = v47;
      type metadata accessor for Action();
      type metadata accessor for BaseObjectGraph();
      sub_100708188(&qword_100992FB0, &type metadata accessor for Action, &protocol conformance descriptor for Action);
      v48 = v68;
      ComponentModel.pairedWith<A>(objectGraph:)();

      v49 = 0;
    }

    else
    {
      v49 = 1;
      v48 = v68;
    }

    v50 = sub_10002849C(&unk_10097B3D0, "α\b");
    (*(*(v50 - 8) + 56))(v48, v49, 1, v50);
    swift_beginAccess();
    sub_1000C112C(v48, &v4[v44], &qword_10097B3F0, &qword_1007B3120);
    swift_endAccess();
    sub_1000B1B2C();
    sub_10002B894(v48, &qword_10097B3F0, &qword_1007B3120);
    v51 = [v4 traitCollection];
    v52 = UITraitCollection.isRegularPad.getter();

    v4[OBJC_IVAR____TtC8AppStore28AnnotationCollectionViewCell_isSeparatorDisplayed] = (v52 & 1) == 0;
    if (v52)
    {
      v53 = OBJC_IVAR____TtC8AppStore28AnnotationCollectionViewCell_separatorLineView;
      swift_beginAccess();
      v54 = *&v4[v53];
      v55 = v65;
      if (v54)
      {
        [v54 removeFromSuperview];
        v56 = *&v4[v53];
      }

      else
      {
        v56 = 0;
      }

      v61 = v66;
      *&v4[v53] = 0;

      [v4 setNeedsLayout];
    }

    else
    {
      v57 = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
      v58 = OBJC_IVAR____TtC8AppStore28AnnotationCollectionViewCell_separatorLineView;
      swift_beginAccess();
      v59 = *&v4[v58];
      if (v59)
      {
        [v59 removeFromSuperview];
        v60 = *&v4[v58];
      }

      else
      {
        v60 = 0;
      }

      *&v4[v58] = v57;
      v62 = v57;

      if (v62)
      {
        sub_100005744(0, &qword_100970180, UIColor_ptr);
        v63 = static UIColor.defaultLine.getter();
        [v62 setBackgroundColor:v63];

        v64 = [v4 contentView];
        [v64 addSubview:v62];
      }

      [v4 setNeedsLayout];

      v55 = v65;
      v61 = v66;
    }

    (*(v69 + 8))(v46, v45);
    return (*(v55 + 8))(v24, v61);
  }

  else
  {
    v29(v20, 1, 1, v27);
    return sub_10002B894(v20, &qword_10098F3E8, &unk_1007DA290);
  }
}

uint64_t sub_1007023A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(uint64_t, uint64_t), void (*a7)(uint64_t, uint64_t))
{
  v22 = a7;
  v11 = sub_10002849C(&unk_10097DAF0, &qword_1007B2A30);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = v23 - v13 + 8;
  v15 = sub_10002849C(&unk_1009731C0, &qword_1007B4578);
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = v23 - v17 + 8;
  sub_10002C0AC(a1, v23);
  sub_10002849C(&qword_100973D50, &unk_1007B3840);
  type metadata accessor for AppPromotion();
  result = swift_dynamicCast();
  if (result)
  {
    (*(v12 + 16))(v14, a2, v11);
    type metadata accessor for NilState();
    WritableStateLens.init(_:)();
    type metadata accessor for ContingentOffer();
    v20 = swift_dynamicCastClass();
    if (v20)
    {
      a6(v20, a3);
    }

    else
    {
      type metadata accessor for OfferItem();
      v21 = swift_dynamicCastClass();
      if (v21)
      {
        v22(v21, a3);
      }
    }

    return (*(v16 + 8))(v18, v15);
  }

  return result;
}

uint64_t sub_1007025E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_10002849C(&unk_10097DAF0, &qword_1007B2A30);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v18[-v9 - 8];
  v11 = sub_10002849C(&unk_1009731C0, &qword_1007B4578);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v18[-v13 - 8];
  sub_10002C0AC(a1, v18);
  sub_10002849C(&qword_100973D50, &unk_1007B3840);
  type metadata accessor for AppEvent();
  result = swift_dynamicCast();
  if (result)
  {
    v16 = v17;
    (*(v8 + 16))(v10, a2, v7);
    type metadata accessor for NilState();
    WritableStateLens.init(_:)();
    sub_100168944(v16, a3);
    [v3 setNeedsLayout];

    return (*(v12 + 8))(v14, v11);
  }

  return result;
}

uint64_t sub_10070280C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_10002849C(&unk_10097DAF0, &qword_1007B2A30);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v22[-v10 - 8];
  v12 = sub_10002849C(&unk_1009731C0, &qword_1007B4578);
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v22[-v14 - 8];
  sub_10002C0AC(a1, v22);
  sub_10002849C(&qword_100973D50, &unk_1007B3840);
  type metadata accessor for AppPromotion();
  result = swift_dynamicCast();
  if (result)
  {
    (*(v9 + 16))(v11, a2, v8);
    type metadata accessor for NilState();
    WritableStateLens.init(_:)();
    type metadata accessor for ContingentOffer();
    v17 = swift_dynamicCastClass();
    if (v17)
    {
      v18 = v17;

      sub_100539A70(v18, a3);
    }

    else
    {
      type metadata accessor for OfferItem();
      v19 = swift_dynamicCastClass();
      if (!v19)
      {
LABEL_7:
        [v4 setNeedsLayout];

        return (*(v13 + 8))(v15, v12);
      }

      v20 = v19;

      sub_100539C84(v20, a3);
    }

    goto LABEL_7;
  }

  return result;
}

uint64_t sub_100702A98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(uint64_t, uint64_t))
{
  v20 = a6;
  v9 = sub_10002849C(&unk_10097DAF0, &qword_1007B2A30);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v19 - v11;
  v13 = sub_10002849C(&unk_1009731C0, &qword_1007B4578);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v19 - v15;
  sub_10002C0AC(a1, v22);
  sub_10002849C(&qword_100973D50, &unk_1007B3840);
  type metadata accessor for AppEvent();
  result = swift_dynamicCast();
  if (result)
  {
    v18 = v21;
    (*(v10 + 16))(v12, a2, v9);
    type metadata accessor for NilState();
    WritableStateLens.init(_:)();
    v20(v18, a3);

    return (*(v14 + 8))(v16, v13);
  }

  return result;
}

uint64_t sub_100702CA0(uint64_t a1, uint64_t a2)
{
  v5 = sub_10002849C(&unk_10097DAF0, &qword_1007B2A30);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v24 - v7;
  v9 = sub_10002849C(&unk_1009731C0, &qword_1007B4578);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v24 - v11;
  sub_10002C0AC(a1, v25);
  sub_10002849C(&qword_100973D50, &unk_1007B3840);
  type metadata accessor for ProductCapability();
  result = swift_dynamicCast();
  if (result)
  {
    (*(v6 + 16))(v8, a2, v5);
    type metadata accessor for NilState();
    WritableStateLens.init(_:)();
    v14 = *&v2[OBJC_IVAR____TtC8AppStore21ProductCapabilityCell_titleLabel];
    v15 = v2;
    ProductCapability.title.getter();
    v16 = String._bridgeToObjectiveC()();

    [v14 setText:v16];

    ProductCapability.caption.getter();
    v17 = ProductCapability.captionTrailingArtwork.getter();
    v18 = LinkableText.linkedSubstrings.getter();
    sub_1000D6F24(v18, sub_1000C17B0);
    v20 = v19;

    v21 = LinkableText.styledText.getter();
    v24[0] = v9;
    sub_1002F6004(v21, v17, v20);

    v22 = *&v2[OBJC_IVAR____TtC8AppStore21ProductCapabilityCell_iconImageView];
    v23 = ProductCapability.artworkTintColor.getter();
    [v22 setTintColor:v23];

    *&v15[OBJC_IVAR____TtC8AppStore21ProductCapabilityCell_icon] = ProductCapability.artwork.getter();

    [v15 setNeedsLayout];

    return (*(v10 + 8))(v12, v24[0]);
  }

  return result;
}

uint64_t sub_100702FDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10002849C(&unk_10097DAF0, &qword_1007B2A30);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v18 - v8;
  v10 = sub_10002849C(&unk_1009731C0, &qword_1007B4578);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v18 - v12;
  sub_10002C0AC(a1, v20);
  sub_10002849C(&qword_100973D50, &unk_1007B3840);
  type metadata accessor for EditorialLink();
  result = swift_dynamicCast();
  if (result)
  {
    v18[1] = v3;
    v15 = v19;
    (*(v7 + 16))(v9, a2, v6);
    type metadata accessor for NilState();
    WritableStateLens.init(_:)();
    sub_10002849C(&unk_100973270, &unk_1007B4688);
    type metadata accessor for BaseObjectGraph();
    inject<A, B>(_:from:)();
    v19 = v15;
    dispatch thunk of LinkLoader.availablePresentation(for:)();

    v16 = v20[0];
    if ((~v20[0] & 0xF000000000000007) != 0)
    {
      v17 = v20[1];
    }

    else
    {

      v17 = 0;
      v16 = v15;
    }

    sub_100510248(v16, v17);
    sub_1000C0220(v16, v17);

    return (*(v11 + 8))(v13, v10);
  }

  return result;
}

uint64_t sub_100703268(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v27 = a4;
  v26 = a2;
  v5 = type metadata accessor for Shelf.PresentationHints();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10002849C(&unk_10097DAF0, &qword_1007B2A30);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v25 - v11;
  v13 = sub_10002849C(&unk_1009731C0, &qword_1007B4578);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v25 - v15;
  sub_10002C0AC(a1, v29);
  sub_10002849C(&qword_100973D50, &unk_1007B3840);
  type metadata accessor for Brick();
  result = swift_dynamicCast();
  if (result)
  {
    (*(v10 + 16))(v12, v26, v9);
    type metadata accessor for NilState();
    WritableStateLens.init(_:)();
    Brick.accessibilityLabel.getter();
    if (v18)
    {
      v19 = String._bridgeToObjectiveC()();
    }

    else
    {
      v19 = 0;
    }

    v20 = v28;
    [v28 setAccessibilityLabel:v19];

    static Shelf.PresentationHints.showSupplementaryText.getter();
    sub_100708188(&unk_100970E20, &type metadata accessor for Shelf.PresentationHints, &protocol conformance descriptor for Shelf.PresentationHints);
    v21 = dispatch thunk of SetAlgebra.isSuperset(of:)();
    (*(v6 + 8))(v8, v5);
    if (v21)
    {
      v22 = Brick.shortEditorialDescription.getter();
      v23 = &v20[OBJC_IVAR____TtC8AppStore23BrickCollectionViewCell_shortDescriptionLabelText];
      *v23 = v22;
      v23[1] = v24;

      sub_1000F88B0();
    }

    return (*(v14 + 8))(v16, v13);
  }

  return result;
}

uint64_t sub_1007035B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v49 = a2;
  v7 = sub_10002849C(&unk_1009732A0, &unk_1007B4FE0);
  __chkstk_darwin(v7 - 8);
  v9 = &v47 - v8;
  v10 = type metadata accessor for AspectRatio();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10002849C(&unk_10097DAF0, &qword_1007B2A30);
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v47 - v16;
  v18 = sub_10002849C(&unk_1009731C0, &qword_1007B4578);
  v50 = *(v18 - 8);
  v51 = v18;
  __chkstk_darwin(v18);
  v20 = &v47 - v19;
  sub_10002C0AC(a1, v53);
  sub_10002849C(&qword_100973D50, &unk_1007B3840);
  type metadata accessor for Quote();
  result = swift_dynamicCast();
  if (result)
  {
    v48 = a5;
    (*(v15 + 16))(v17, v49, v14);
    type metadata accessor for NilState();
    WritableStateLens.init(_:)();
    v22 = v52;
    v23 = *&v52[OBJC_IVAR____TtC8AppStore23QuoteCollectionViewCell_quoteView];
    v24 = Quote.text.getter();
    sub_10007003C(v24, v25);
    v26 = Quote.credit.getter();
    sub_1000707B0(v26, v27);
    v23[OBJC_IVAR____TtC8AppStore9QuoteView_isFullWidthArtwork] = Quote.isFullWidthArtwork.getter() & 1;
    sub_100070BA0();
    if (Quote.artwork.getter())
    {
      Artwork.size.getter();
      Artwork.size.getter();
      AspectRatio.init(_:_:)();
      (*(v11 + 16))(v9, v13, v10);
      (*(v11 + 56))(v9, 0, 1, v10);
      v28 = OBJC_IVAR____TtC8AppStore9QuoteView_artworkAspectRatio;
      swift_beginAccess();
      sub_1000315F8(v9, &v23[v28], &unk_1009732A0, &unk_1007B4FE0);
      swift_endAccess();
      [*&v23[OBJC_IVAR____TtC8AppStore9QuoteView_artworkView] setHidden:0];
      [v23 setNeedsLayout];
      v29 = [v22 contentView];
      sub_100005744(0, &qword_100972EB0, UIView_ptr);
      LayoutMarginsAware<>.layoutFrame.getter();
      v31 = v30;
      v33 = v32;
      v35 = v34;
      v37 = v36;

      v54.origin.x = v31;
      v54.origin.y = v33;
      v54.size.width = v35;
      v54.size.height = v37;
      Width = CGRectGetWidth(v54);
      AspectRatio.height(fromWidth:)();
      v40 = v39;

      (*(v11 + 8))(v13, v10);
      v41 = &v22[OBJC_IVAR____TtC8AppStore23QuoteCollectionViewCell_preferredArtworkSize];
      *v41 = Width;
      *(v41 + 1) = v40;
    }

    else
    {
      (*(v11 + 56))(v9, 1, 1, v10);
      v42 = OBJC_IVAR____TtC8AppStore9QuoteView_artworkAspectRatio;
      swift_beginAccess();
      sub_1000315F8(v9, &v23[v42], &unk_1009732A0, &unk_1007B4FE0);
      swift_endAccess();
      [*&v23[OBJC_IVAR____TtC8AppStore9QuoteView_artworkView] setHidden:1];
      [v23 setNeedsLayout];
      v43 = &v22[OBJC_IVAR____TtC8AppStore23QuoteCollectionViewCell_preferredArtworkSize];
      *v43 = 0;
      *(v43 + 1) = 0;
    }

    v44 = v48;
    [v48 pageMarginInsets];
    v46 = v45;
    [v44 pageMarginInsets];
    [v23 setLayoutMargins:{0.0, v46, 0.0}];

    return (*(v50 + 8))(v20, v51);
  }

  return result;
}

uint64_t sub_100703B48(uint64_t a1, uint64_t a2)
{
  v5 = sub_10002849C(&unk_10097DAF0, &qword_1007B2A30);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v20[-v7 - 8];
  v9 = sub_10002849C(&unk_1009731C0, &qword_1007B4578);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v20[-v11 - 8];
  sub_10002C0AC(a1, v20);
  sub_10002849C(&qword_100973D50, &unk_1007B3840);
  type metadata accessor for Footnote();
  result = swift_dynamicCast();
  if (result)
  {
    (*(v6 + 16))(v8, a2, v5);
    type metadata accessor for NilState();
    WritableStateLens.init(_:)();
    v14 = *&v2[OBJC_IVAR____TtC8AppStore26FootnoteCollectionViewCell_footnoteView];
    v15 = Footnote.presentationStyle.getter();
    v16 = v14[OBJC_IVAR____TtC8AppStore12FootnoteView_hasChevron];
    v14[OBJC_IVAR____TtC8AppStore12FootnoteView_hasChevron] = (v15 & 2) != 0;
    sub_10007B3E8(v16);
    v14[OBJC_IVAR____TtC8AppStore12FootnoteView_textLightensOnHighlight] = (Footnote.presentationStyle.getter() & 4) != 0;
    v17 = *&v14[OBJC_IVAR____TtC8AppStore12FootnoteView_textLabel];
    Footnote.text.getter();
    v18 = String._bridgeToObjectiveC()();

    [v17 setText:v18];

    [v14 setNeedsLayout];
    [v2 setNeedsLayout];

    return (*(v10 + 8))(v12, v9);
  }

  return result;
}

uint64_t sub_100703DEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char *a5)
{
  v19[0] = a5;
  v9 = sub_10002849C(&unk_10097DAF0, &qword_1007B2A30);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v19 - v11;
  v13 = sub_10002849C(&qword_100975768, &qword_1007BA168);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = v19 - v15;
  sub_10002C0AC(a1, v20);
  sub_10002849C(&qword_100973D50, &unk_1007B3840);
  type metadata accessor for Paragraph();
  result = swift_dynamicCast();
  if (result)
  {
    v18 = v19[2];
    (*(v10 + 16))(v12, a2, v9);
    WritableStateLens.init(_:)();
    sub_100319230(v18, v16, a3, a4, v19[0]);

    return (*(v14 + 8))(v16, v13);
  }

  return result;
}

uint64_t sub_100703FF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v16 = a5;
  v7 = sub_10002849C(&unk_10097DAF0, &qword_1007B2A30);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v17 - v9 + 8;
  v11 = sub_10002849C(&unk_1009731C0, &qword_1007B4578);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = v17 - v13 + 8;
  sub_10002C0AC(a1, v17);
  sub_10002849C(&qword_100973D50, &unk_1007B3840);
  type metadata accessor for Lockup();
  result = swift_dynamicCast();
  if (result)
  {
    (*(v8 + 16))(v10, a2, v7);
    type metadata accessor for NilState();
    WritableStateLens.init(_:)();
    sub_1002F753C();

    return (*(v12 + 8))(v14, v11);
  }

  return result;
}

uint64_t sub_100704208(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PrivacyTypeStyle();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10002849C(&unk_10097DAF0, &qword_1007B2A30);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v23 - v10;
  v23[0] = sub_10002849C(&unk_1009731C0, &qword_1007B4578);
  v12 = *(v23[0] - 8);
  __chkstk_darwin(v23[0]);
  v14 = v23 - v13;
  sub_10002C0AC(a1, v24);
  sub_10002849C(&qword_100973D50, &unk_1007B3840);
  type metadata accessor for PrivacyType();
  result = swift_dynamicCast();
  if (result)
  {
    (*(v9 + 16))(v11, a2, v8);
    type metadata accessor for NilState();
    WritableStateLens.init(_:)();
    v16 = v23[1];
    PrivacyType.style.getter();
    v17 = OBJC_IVAR____TtC8AppStore29PrivacyTypeCollectionViewCell_style;
    swift_beginAccess();
    (*(v5 + 24))(v16 + v17, v7, v4);
    swift_endAccess();
    sub_100361A78();
    (*(v5 + 8))(v7, v4);
    v18 = PrivacyType.title.getter();
    sub_1003617E4(v18, v19);
    v20 = PrivacyType.detail.getter();
    sub_1003617F0(v20, v21);
    *(v16 + OBJC_IVAR____TtC8AppStore29PrivacyTypeCollectionViewCell_artwork) = PrivacyType.artwork.getter();

    v22 = PrivacyType.categories.getter();
    sub_100363EC8();
    *(v16 + OBJC_IVAR____TtC8AppStore29PrivacyTypeCollectionViewCell_categories) = v22;

    sub_1003617FC();

    return (*(v12 + 8))(v14, v23[0]);
  }

  return result;
}

uint64_t sub_100704558(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void), void (*a7)(uint64_t, char *, uint64_t, uint64_t, uint64_t))
{
  v23 = a7;
  v21 = a4;
  v22 = a5;
  v11 = sub_10002849C(&unk_10097DAF0, &qword_1007B2A30);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v21 - v13;
  v15 = sub_10002849C(&unk_1009731C0, &qword_1007B4578);
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v21 - v17;
  sub_10002C0AC(a1, v25);
  sub_10002849C(&qword_100973D50, &unk_1007B3840);
  a6(0);
  result = swift_dynamicCast();
  if (result)
  {
    v20 = v24;
    (*(v12 + 16))(v14, a2, v11);
    type metadata accessor for NilState();
    WritableStateLens.init(_:)();
    v23(v20, v18, a3, v21, v22);

    return (*(v16 + 8))(v18, v15);
  }

  return result;
}

uint64_t sub_100704774(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = v5;
  v10 = sub_10002849C(&unk_10097DAF0, &qword_1007B2A30);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v44 - v12;
  v14 = sub_10002849C(&unk_1009731C0, &qword_1007B4578);
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v44 - v16;
  sub_10002C0AC(a1, aBlock);
  sub_10002849C(&qword_100973D50, &unk_1007B3840);
  type metadata accessor for FramedArtwork();
  result = swift_dynamicCast();
  if (!result)
  {
    return result;
  }

  (*(v11 + 16))(v13, a2, v10);
  type metadata accessor for NilState();
  WritableStateLens.init(_:)();
  v19 = FramedMedia.caption.getter();
  v20 = [v19 length];

  v21 = &selRef_setRequiresColorStatistics_;
  if (v20 <= 0)
  {
    [*&v6[qword_100989278] setText:0];
    v6[qword_1009D23C8] = 0;
    v31 = *&v6[qword_100989268];
    [v31 setHidden:1];
    goto LABEL_7;
  }

  v45 = v17;
  v46 = v15;
  v47 = v14;
  v22 = FramedMedia.caption.getter();
  v23 = [a5 traitCollection];
  v24 = [objc_allocWithZone(NSMutableAttributedString) initWithAttributedString:v22];
  v48 = [v22 length];
  v25 = swift_allocObject();
  *(v25 + 16) = 0;
  *(v25 + 24) = v23;
  *(v25 + 32) = v24;
  *(v25 + 40) = 1;
  v26 = swift_allocObject();
  *(v26 + 16) = sub_100126854;
  *(v26 + 24) = v25;
  aBlock[4] = sub_100126848;
  aBlock[5] = v26;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1006606C4;
  aBlock[3] = &unk_1008CFC78;
  v27 = _Block_copy(aBlock);
  v28 = v23;
  v29 = v24;

  [v22 enumerateAttributesInRange:0 options:v48 usingBlock:{0x100000, v27}];

  _Block_release(v27);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
    goto LABEL_22;
  }

  isEscapingClosureAtFileLocation = *&v6[qword_100989278];
  [isEscapingClosureAtFileLocation setAttributedText:v29];
  if (qword_10096E6A8 != -1)
  {
LABEL_22:
    swift_once();
  }

  [isEscapingClosureAtFileLocation setTextColor:qword_1009D23B0];
  v6[qword_1009D23C8] = 1;
  v31 = *&v6[qword_100989268];
  [v31 setHidden:0];

  v15 = v46;
  v14 = v47;
  v17 = v45;
  v21 = &selRef_setRequiresColorStatistics_;
LABEL_7:
  v32 = *&v6[qword_100989270];
  FramedMedia.ordinal.getter();
  if (v33)
  {
    v34 = String._bridgeToObjectiveC()();
  }

  else
  {
    v34 = 0;
  }

  [v32 v21[11]];

  v6[qword_1009D23C0] = (FramedMedia.isFullWidth.getter() & 1) == 0;
  sub_10012684C();
  if ((FramedMedia.isFullWidth.getter() & 1) == 0 && v6[qword_1009D23C8] != 1)
  {
    type metadata accessor for ArtworkView();
    static ArtworkView.iconBorderWidth.getter();
  }

  dispatch thunk of RoundedCornerView.borderWidth.setter();
  if (FramedMedia.isFullWidth.getter())
  {
    [v31 setBackgroundColor:0];
  }

  else
  {
    sub_100005744(0, &qword_100970180, UIColor_ptr);
    v35 = static UIColor.placeholderBackground.getter();
    [v31 setBackgroundColor:v35];
  }

  if (FramedArtwork.artwork.getter())
  {
    v36 = [v6 contentView];
    sub_100005744(0, &qword_100972EB0, UIView_ptr);
    LayoutMarginsAware<>.layoutFrame.getter();
    v38 = v37;

    Artwork.size.getter();
    v40 = v39;
    Artwork.size.getter();
    v42 = v41;

    result = (*(v15 + 8))(v17, v14);
    v43 = &v6[qword_1009CFF30];
    *v43 = v38;
    v43[1] = v38 * (v40 / v42);
  }

  else
  {

    return (*(v15 + 8))(v17, v14);
  }

  return result;
}

uint64_t sub_100704E38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_10002849C(&qword_100973288, &qword_1007B4698);
  v9 = *(v8 - 8);
  v76 = v8;
  v77 = v9;
  __chkstk_darwin(v8);
  v75 = &v63 - v10;
  v70 = type metadata accessor for Separator.Position();
  v72 = *(v70 - 8);
  __chkstk_darwin(v70);
  v71 = &v63 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10002849C(&unk_100970E10, &qword_1007B46A0);
  __chkstk_darwin(v12 - 8);
  v67 = &v63 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v68 = &v63 - v15;
  v16 = sub_10002849C(&unk_100993020, &qword_1007B46A8);
  __chkstk_darwin(v16 - 8);
  v18 = &v63 - v17;
  v19 = sub_10002849C(&unk_10097DAF0, &qword_1007B2A30);
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v22 = &v63 - v21;
  v23 = sub_10002849C(&unk_1009731C0, &qword_1007B4578);
  v69 = *(v23 - 8);
  __chkstk_darwin(v23);
  v25 = &v63 - v24;
  sub_10002C0AC(a1, v79);
  sub_10002849C(&qword_100973D50, &unk_1007B3840);
  type metadata accessor for PrivacyHeader();
  result = swift_dynamicCast();
  if (result)
  {
    v27 = v78;
    (*(v20 + 16))(v22, a2, v19);
    type metadata accessor for NilState();
    WritableStateLens.init(_:)();
    v79[0] = PrivacyHeader.bodyText.getter();
    type metadata accessor for LinkableText();
    v28 = type metadata accessor for BaseObjectGraph();
    sub_100708188(&qword_100973290, &type metadata accessor for LinkableText, &protocol conformance descriptor for LinkableText);
    v73 = v28;
    v74 = a3;
    ComponentModel.pairedWith<A>(objectGraph:)();

    v29 = sub_10002849C(&unk_100993030, &unk_1007B46B0);
    (*(*(v29 - 8) + 56))(v18, 0, 1, v29);
    v30 = OBJC_IVAR____TtC8AppStore31PrivacyHeaderCollectionViewCell_bodyText;
    swift_beginAccess();
    sub_1000C112C(v18, v4 + v30, &unk_100993020, &qword_1007B46A8);
    swift_endAccess();
    sub_1004C3F10();
    sub_10002B894(v18, &unk_100993020, &qword_1007B46A8);
    v31 = PrivacyHeader.isDetailHeader.getter();
    *(v4 + OBJC_IVAR____TtC8AppStore31PrivacyHeaderCollectionViewCell_isDetailHeader) = v31 & 1;
    v32 = *(v4 + OBJC_IVAR____TtC8AppStore31PrivacyHeaderCollectionViewCell_bodyLabel);
    sub_100005744(0, &qword_100970180, UIColor_ptr);
    v33 = v25;
    if (v31)
    {
      v34 = static UIColor.primaryText.getter();
    }

    else
    {
      v34 = static UIColor.secondaryText.getter();
    }

    v35 = *(v32 + qword_10097F920);
    *(v32 + qword_10097F920) = v34;
    v36 = v34;
    if ((static NSObject.== infix(_:_:)() & 1) == 0)
    {
      sub_1002F63D4();
    }

    v37 = PrivacyHeader.supplementaryItems.getter();
    v38 = v37;
    if (v37 >> 62)
    {
      v39 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v39 = *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v64 = v33;
    v65 = v23;
    v66 = v27;
    if (v39)
    {
      v79[0] = _swiftEmptyArrayStorage;
      result = sub_100144004(0, v39 & ~(v39 >> 63), 0);
      if (v39 < 0)
      {
        __break(1u);
        return result;
      }

      v63 = v4;
      v40 = 0;
      v41 = v79[0];
      v42 = v75;
      do
      {
        if ((v38 & 0xC000000000000001) != 0)
        {
          v43 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v43 = *(v38 + 8 * v40 + 32);
        }

        v78 = v43;
        type metadata accessor for PrivacyHeaderSupplementaryItem();
        sub_100708188(&qword_100973298, &type metadata accessor for PrivacyHeaderSupplementaryItem, &protocol conformance descriptor for PrivacyHeaderSupplementaryItem);
        ComponentModel.pairedWith<A>(objectGraph:)();

        v79[0] = v41;
        v45 = v41[2];
        v44 = v41[3];
        if (v45 >= v44 >> 1)
        {
          sub_100144004((v44 > 1), v45 + 1, 1);
          v41 = v79[0];
        }

        ++v40;
        v41[2] = v45 + 1;
        (*(v77 + 32))(v41 + ((*(v77 + 80) + 32) & ~*(v77 + 80)) + *(v77 + 72) * v45, v42, v76);
      }

      while (v39 != v40);

      v4 = v63;
    }

    else
    {

      v41 = _swiftEmptyArrayStorage;
    }

    v46 = v71;
    sub_1004C56C0();
    v47 = OBJC_IVAR____TtC8AppStore31PrivacyHeaderCollectionViewCell_supplementaryItems;
    *(v4 + OBJC_IVAR____TtC8AppStore31PrivacyHeaderCollectionViewCell_supplementaryItems) = v41;

    sub_1004C41B4();
    if (PrivacyHeader.isDetailHeader.getter())
    {
      v48 = *(v72 + 104);
      v72 += 104;
      LODWORD(v77) = enum case for Separator.Position.top(_:);
      v76 = v48;
      v48(v46);
      v75 = type metadata accessor for ZeroDimension();
      v80 = v75;
      v81 = &protocol witness table for ZeroDimension;
      sub_1000056E0(v79);
      static ZeroDimension.zero.getter();
      v49 = v68;
      Separator.init(position:leadingInset:trailingInset:verticalOutset:)();
      v50 = type metadata accessor for Separator();
      v51 = v4;
      v52 = *(*(v50 - 8) + 56);
      v53 = 1;
      v52(v49, 0, 1, v50);
      v54 = OBJC_IVAR____TtC8AppStore31PrivacyHeaderCollectionViewCell_topSeparator;
      swift_beginAccess();
      sub_1000C112C(v49, v51 + v54, &unk_100970E10, &qword_1007B46A0);
      swift_endAccess();
      sub_1004C4970();
      sub_10002B894(v49, &unk_100970E10, &qword_1007B46A0);
      if (*(*(v51 + v47) + 16))
      {
        v76(v71, v77, v70);
        v80 = v75;
        v81 = &protocol witness table for ZeroDimension;
        sub_1000056E0(v79);
        static ZeroDimension.zero.getter();
        v55 = v67;
        Separator.init(position:leadingInset:trailingInset:verticalOutset:)();
        v53 = 0;
        v56 = v69;
      }

      else
      {
        v56 = v69;
        v55 = v67;
      }

      v52(v55, v53, 1, v50);
      v62 = OBJC_IVAR____TtC8AppStore31PrivacyHeaderCollectionViewCell_middleSeparator;
      swift_beginAccess();
      sub_1000C112C(v55, v51 + v62, &unk_100970E10, &qword_1007B46A0);
      swift_endAccess();
      sub_1004C4984();

      sub_10002B894(v55, &unk_100970E10, &qword_1007B46A0);
      return (*(v56 + 8))(v64, v65);
    }

    else
    {
      v57 = type metadata accessor for Separator();
      v58 = *(*(v57 - 8) + 56);
      v59 = v68;
      v58(v68, 1, 1, v57);
      v60 = OBJC_IVAR____TtC8AppStore31PrivacyHeaderCollectionViewCell_topSeparator;
      swift_beginAccess();
      sub_1000C112C(v59, v4 + v60, &unk_100970E10, &qword_1007B46A0);
      swift_endAccess();
      sub_1004C4970();
      sub_10002B894(v59, &unk_100970E10, &qword_1007B46A0);
      v58(v59, 1, 1, v57);
      v61 = OBJC_IVAR____TtC8AppStore31PrivacyHeaderCollectionViewCell_middleSeparator;
      swift_beginAccess();
      sub_1000C112C(v59, v4 + v61, &unk_100970E10, &qword_1007B46A0);
      swift_endAccess();
      sub_1004C4984();

      sub_10002B894(v59, &unk_100970E10, &qword_1007B46A0);
      return (*(v69 + 8))(v64, v65);
    }
  }

  return result;
}

uint64_t sub_1007058FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v9 = sub_10002849C(&unk_10097DAF0, &qword_1007B2A30);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v24[-v11 - 8];
  v13 = sub_10002849C(&unk_1009731C0, &qword_1007B4578);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v24[-v15 - 8];
  sub_10002C0AC(a1, v24);
  sub_10002849C(&qword_100973D50, &unk_1007B3840);
  type metadata accessor for EditorialQuote();
  result = swift_dynamicCast();
  if (result)
  {
    (*(v10 + 16))(v12, a2, v9);
    type metadata accessor for NilState();
    WritableStateLens.init(_:)();
    v18 = [v5 contentView];
    [a5 pageMarginInsets];
    [v18 setLayoutMargins:?];

    v19 = EditorialQuote.text.getter();
    sub_1002804BC(v19, v20);
    v21 = EditorialQuote.attribution.getter();
    sub_1002804C8(v21, v22);

    return (*(v14 + 8))(v16, v13);
  }

  return result;
}

uint64_t sub_100705B50(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HorizontalRule.Style();
  __chkstk_darwin(v4 - 8);
  v6 = &v18[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v7 = sub_10002849C(&unk_10097DAF0, &qword_1007B2A30);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v18[-v9 - 8];
  v11 = sub_10002849C(&unk_1009731C0, &qword_1007B4578);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v18[-v13 - 8];
  sub_10002C0AC(a1, v18);
  sub_10002849C(&qword_100973D50, &unk_1007B3840);
  type metadata accessor for HorizontalRule();
  result = swift_dynamicCast();
  if (result)
  {
    (*(v8 + 16))(v10, a2, v7);
    type metadata accessor for NilState();
    WritableStateLens.init(_:)();
    HorizontalRule.style.getter();
    sub_10075D014(v6);
    v16 = HorizontalRule.color.getter();
    sub_10075DB40(v16);

    return (*(v12 + 8))(v14, v11);
  }

  return result;
}

uint64_t sub_100705DB4(uint64_t a1, uint64_t a2)
{
  v4 = sub_10002849C(&unk_10097DAF0, &qword_1007B2A30);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v15[-v6 - 8];
  v8 = sub_10002849C(&unk_1009731C0, &qword_1007B4578);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v15[-v10 - 8];
  sub_10002C0AC(a1, v15);
  sub_10002849C(&qword_100973D50, &unk_1007B3840);
  type metadata accessor for Ratings();
  result = swift_dynamicCast();
  if (result)
  {
    v13 = v14;
    (*(v5 + 16))(v7, a2, v4);
    type metadata accessor for NilState();
    WritableStateLens.init(_:)();
    sub_100522BA0(v13, 1);

    return (*(v9 + 8))(v11, v8);
  }

  return result;
}

uint64_t sub_100705FAC(uint64_t a1, uint64_t a2)
{
  v5 = sub_10002849C(&unk_10097DAF0, &qword_1007B2A30);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v17[-v7 - 8];
  v9 = sub_10002849C(&unk_1009731C0, &qword_1007B4578);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v17[-v11 - 8];
  sub_10002C0AC(a1, v17);
  sub_10002849C(&qword_100973D50, &unk_1007B3840);
  type metadata accessor for PrivacyCategory();
  result = swift_dynamicCast();
  if (result)
  {
    v14 = v16;
    (*(v6 + 16))(v8, a2, v5);
    type metadata accessor for NilState();
    WritableStateLens.init(_:)();
    *&v2[OBJC_IVAR____TtC8AppStore33PrivacyCategoryCollectionViewCell_privacyCategory] = v14;

    *(*&v2[OBJC_IVAR____TtC8AppStore33PrivacyCategoryCollectionViewCell_privacyCategoryView] + OBJC_IVAR____TtC8AppStore19PrivacyCategoryView_category) = v14;

    sub_100378DCC(v15);
    [v2 setNeedsLayout];

    return (*(v10 + 8))(v12, v9);
  }

  return result;
}

uint64_t sub_10070620C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_10002849C(&unk_10097DAF0, &qword_1007B2A30);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v20[-v8 - 8];
  v10 = sub_10002849C(&unk_1009731C0, &qword_1007B4578);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v20[-v12 - 8];
  sub_10002C0AC(a1, v20);
  sub_10002849C(&qword_100973D50, &unk_1007B3840);
  type metadata accessor for ProductPageLink();
  result = swift_dynamicCast();
  if (result)
  {
    (*(v7 + 16))(v9, a2, v6);
    type metadata accessor for NilState();
    WritableStateLens.init(_:)();
    ProductPageLink.text.getter();
    dispatch thunk of DynamicTypeLabel.axSetLinkStyleText(_:)();

    ProductPageLink.systemImageName.getter();
    if (v15)
    {
      v16 = static SystemImage.load(_:with:includePrivateImages:)();
    }

    else
    {
      v16 = 0;
    }

    v17 = *&v3[OBJC_IVAR____TtC8AppStore33ProductPageLinkCollectionViewCell_iconImage];
    *&v3[OBJC_IVAR____TtC8AppStore33ProductPageLinkCollectionViewCell_iconImage] = v16;
    v18 = v16;

    sub_1005B06B4();
    [v3 setNeedsLayout];

    return (*(v11 + 8))(v13, v10);
  }

  return result;
}

uint64_t sub_100706494(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v28 = a3;
  v25 = a2;
  v4 = type metadata accessor for SmallPlayerCardData();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v25 - v9;
  v11 = sub_10002849C(&unk_10097DAF0, &qword_1007B2A30);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v25 - v13;
  v15 = sub_10002849C(&unk_1009731C0, &qword_1007B4578);
  v26 = *(v15 - 8);
  v27 = v15;
  __chkstk_darwin(v15);
  v17 = &v25 - v16;
  sub_10002C0AC(a1, v30);
  sub_10002849C(&qword_100973D50, &unk_1007B3840);
  type metadata accessor for ImpressionableSmallPlayerCard();
  result = swift_dynamicCast();
  if (result)
  {
    v19 = v29;
    (*(v12 + 16))(v14, v25, v11);
    type metadata accessor for NilState();
    WritableStateLens.init(_:)();
    ImpressionableSmallPlayerCard.data.getter();
    sub_100135F78(v10);
    v20 = *(v5 + 8);
    v20(v7, v4);
    dispatch thunk of SmallPlayerCardView.apply(data:shouldSetImage:)();
    v20(v10, v4);
    v21 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v22 = swift_allocObject();
    v23 = v28;
    v22[2] = v19;
    v22[3] = v23;
    v22[4] = v21;

    dispatch thunk of SmallPlayerCardView.buttonActionBlock.setter();

    v24 = swift_allocObject();
    *(v24 + 16) = v19;
    *(v24 + 24) = v23;

    dispatch thunk of SmallPlayerCardView.closeButtonActionBlock.setter();

    return (*(v26 + 8))(v17, v27);
  }

  return result;
}

uint64_t sub_100706858(uint64_t a1, uint64_t a2)
{
  v4 = sub_10002849C(&unk_10097DAF0, &qword_1007B2A30);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v18[-v6 - 8];
  v8 = sub_10002849C(&unk_1009731C0, &qword_1007B4578);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v18[-v10 - 8];
  sub_10002C0AC(a1, v18);
  sub_10002849C(&qword_100973D50, &unk_1007B3840);
  type metadata accessor for PrivacyDefinition();
  result = swift_dynamicCast();
  if (result)
  {
    (*(v5 + 16))(v7, a2, v4);
    type metadata accessor for NilState();
    WritableStateLens.init(_:)();
    v13 = PrivacyDefinition.title.getter();
    sub_1000278AC(v13, v14);
    v15 = PrivacyDefinition.definition.getter();
    sub_1000278B8(v15, v16);

    return (*(v9 + 8))(v11, v8);
  }

  return result;
}

uint64_t sub_100706A68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = v5;
  v65 = a5;
  v9 = sub_10002849C(&unk_100973220, &unk_1007B4670);
  v63 = *(v9 - 8);
  v64 = v9;
  __chkstk_darwin(v9);
  v11 = &v58 - v10;
  v12 = type metadata accessor for AchievementGroupView.Size();
  v60 = *(v12 - 8);
  v61 = v12;
  __chkstk_darwin(v12);
  v14 = &v58 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = type metadata accessor for Achievement();
  v69 = *(v62 - 8);
  __chkstk_darwin(v62);
  v16 = &v58 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v68 = &v58 - v18;
  v19 = sub_10002849C(&unk_10097DAF0, &qword_1007B2A30);
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v22 = &v58 - v21;
  v23 = sub_10002849C(&unk_1009731C0, &qword_1007B4578);
  v66 = *(v23 - 8);
  v67 = v23;
  __chkstk_darwin(v23);
  v25 = &v58 - v24;
  sub_10002C0AC(a1, v70);
  sub_10002849C(&qword_100973D50, &unk_1007B3840);
  type metadata accessor for AchievementSummary();
  result = swift_dynamicCast();
  if (result)
  {
    v58 = v11;
    (*(v20 + 16))(v22, a2, v19);
    type metadata accessor for NilState();
    v59 = v25;
    WritableStateLens.init(_:)();
    v27 = *(v6 + OBJC_IVAR____TtC8AppStore36AchievementSummaryCollectionViewCell_numberCompletedLabel);
    v28 = AchievementSummary.completedAchievements.getter();
    v29._object = 0x80000001008005F0;
    v29._countAndFlagsBits = 0xD000000000000032;
    v30._countAndFlagsBits = 0;
    v30._object = 0xE000000000000000;
    localizedStringWithCount(_:count:comment:)(v29, v28, v30);
    v31 = String._bridgeToObjectiveC()();

    [v27 setText:v31];

    v32 = *(v6 + OBJC_IVAR____TtC8AppStore36AchievementSummaryCollectionViewCell_outOfTotalLabel);
    v33 = v65;
    v34 = [v65 traitCollection];
    sub_10059DF60();

    v35 = String._bridgeToObjectiveC()();

    [v32 setText:v35];

    v36 = *(v6 + OBJC_IVAR____TtC8AppStore36AchievementSummaryCollectionViewCell_completedLabel);
    AchievementSummary.completedText.getter();
    v37 = String._bridgeToObjectiveC()();

    [v36 setText:v37];

    v38 = AchievementSummary.achievements.getter();
    if (*(v38 + 16))
    {
      v39 = v68;
      v40 = *(v69 + 16);
      v41 = v62;
      v40(v68, v38 + ((*(v69 + 80) + 32) & ~*(v69 + 80)), v62);

      v40(v16, v39, v41);
      AchievementSummary.totalAchievements.getter();
      v42 = [v33 traitCollection];
      LOBYTE(v40) = UITraitCollection.isSizeClassCompact.getter();

      v43 = &enum case for AchievementGroupView.Size.phone(_:);
      if ((v40 & 1) == 0)
      {
        v43 = &enum case for AchievementGroupView.Size.pad(_:);
      }

      (*(v60 + 104))(v14, *v43, v61);
      v44 = objc_allocWithZone(type metadata accessor for AchievementGroupView());
      v45 = AchievementGroupView.init(visibleModel:showSecondCard:cardSize:)();
      v46 = OBJC_IVAR____TtC8AppStore36AchievementSummaryCollectionViewCell_achievementGroupView;
      v47 = *(v6 + OBJC_IVAR____TtC8AppStore36AchievementSummaryCollectionViewCell_achievementGroupView);
      if (v47)
      {
        [v47 removeFromSuperview];
        v48 = *(v6 + v46);
      }

      else
      {
        v48 = 0;
      }

      v52 = v58;
      *(v6 + v46) = v45;
      v53 = v45;

      [*(v6 + OBJC_IVAR____TtC8AppStore36AchievementSummaryCollectionViewCell_containerView) addSubview:v53];
      if (AchievementSummary.totalAchievements.getter() < 2)
      {
        v54 = v59;
        if (qword_10096D9F0 != -1)
        {
          swift_once();
        }

        v55 = qword_1009CFC48;
      }

      else
      {
        v54 = v59;
        if (qword_10096D9F8 != -1)
        {
          swift_once();
        }

        v55 = qword_1009CFC60;
      }

      v56 = v64;
      v57 = sub_1000056A8(v64, v55);
      (*(v63 + 16))(v52, v57, v56);
      swift_beginAccess();
      AchievementSummaryLayout.Metrics.achievementStackInsets.setter();
      swift_endAccess();

      (*(v69 + 8))(v68, v41);
      return (*(v66 + 8))(v54, v67);
    }

    else
    {

      v49 = OBJC_IVAR____TtC8AppStore36AchievementSummaryCollectionViewCell_achievementGroupView;
      v50 = *(v6 + OBJC_IVAR____TtC8AppStore36AchievementSummaryCollectionViewCell_achievementGroupView);
      if (v50)
      {
        [v50 removeFromSuperview];
        v51 = *(v6 + v49);
      }

      else
      {
        v51 = 0;
      }

      *(v6 + v49) = 0;

      return (*(v66 + 8))(v59, v67);
    }
  }

  return result;
}

uint64_t sub_1007071C0(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v24 = a3;
  v7 = sub_10002849C(&unk_1009732C0, &unk_1007C6CB0);
  __chkstk_darwin(v7 - 8);
  v9 = &v23 - v8;
  v10 = sub_10002849C(&unk_10097DAF0, &qword_1007B2A30);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v23 - v12;
  v14 = sub_10002849C(&unk_1009731C0, &qword_1007B4578);
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v23 - v16;
  sub_10002C0AC(a1, v25);
  sub_10002849C(&qword_100973D50, &unk_1007B3840);
  type metadata accessor for ArcadeDownloadPackCard();
  result = swift_dynamicCast();
  if (result)
  {
    (*(v11 + 16))(v13, a2, v10);
    type metadata accessor for NilState();
    WritableStateLens.init(_:)();
    v19 = ArcadeDownloadPackCard.numberOfPlaceholders.getter();
    if (v20)
    {
      v21 = ArcadeDownloadPackCard.lockups.getter();
      v22 = type metadata accessor for ArcadeDownloadPackGamesCardView.DownloadAllButtonConfiguration(0);
      (*(*(v22 - 8) + 56))(v9, 1, 1, v22);
      sub_1002F1F30(v21, v9, 1, v24);

      sub_10002B894(v9, &unk_1009732C0, &unk_1007C6CB0);
      [v4 layoutIfNeeded];
    }

    else
    {
      sub_1002F1C34(v19);
    }

    return (*(v15 + 8))(v17, v14);
  }

  return result;
}

uint64_t sub_1007074C0(uint64_t a1, uint64_t a2)
{
  v5 = sub_10002849C(&unk_10097DAF0, &qword_1007B2A30);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v17[-v7 - 8];
  v9 = sub_10002849C(&unk_1009731C0, &qword_1007B4578);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v17[-v11 - 8];
  sub_10002C0AC(a1, v17);
  sub_10002849C(&qword_100973D50, &unk_1007B3840);
  type metadata accessor for PreorderDisclaimer();
  result = swift_dynamicCast();
  if (result)
  {
    (*(v6 + 16))(v8, a2, v5);
    type metadata accessor for NilState();
    WritableStateLens.init(_:)();
    v14 = *(v2 + OBJC_IVAR____TtC8AppStore36PreorderDisclaimerCollectionViewCell_disclaimerLabel);
    PreorderDisclaimer.disclaimer.getter();
    v15 = String._bridgeToObjectiveC()();

    [v14 setText:v15];

    return (*(v10 + 8))(v12, v9);
  }

  return result;
}

uint64_t sub_1007076F0(uint64_t a1, void *a2, uint64_t a3)
{
  v45 = a3;
  v42 = a2;
  v4 = sub_10002849C(&qword_100991E20, &qword_1007DDC58);
  v50 = *(v4 - 8);
  v51 = v4;
  __chkstk_darwin(v4);
  v48 = v39 - v5;
  v6 = sub_10002849C(&unk_100993040, &qword_1007BC2F0);
  __chkstk_darwin(v6 - 8);
  v46 = v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = v39 - v9;
  __chkstk_darwin(v11);
  v13 = v39 - v12;
  __chkstk_darwin(v14);
  v16 = v39 - v15;
  __chkstk_darwin(v17);
  v19 = v39 - v18;
  v49 = type metadata accessor for ActivityFeedLockupViewModel();
  v47 = *(v49 - 8);
  __chkstk_darwin(v49);
  v21 = v39 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_10002849C(&unk_10097DAF0, &qword_1007B2A30);
  v23 = *(v22 - 8);
  __chkstk_darwin(v22);
  v25 = v39 - v24;
  v26 = sub_10002849C(&unk_1009731C0, &qword_1007B4578);
  v43 = *(v26 - 8);
  v44 = v26;
  __chkstk_darwin(v26);
  v28 = v39 - v27;
  sub_10002C0AC(a1, v53);
  sub_10002849C(&qword_100973D50, &unk_1007B3840);
  type metadata accessor for GameCenterActivityFeedCard();
  result = swift_dynamicCast();
  if (result)
  {
    (*(v23 + 16))(v25, v42, v22);
    type metadata accessor for NilState();
    WritableStateLens.init(_:)();
    v30 = v21;
    v41 = v21;
    v31 = v52;
    GameCenterActivityFeedCard.data.getter();
    v40 = v19;
    GameCenterActivityFeedCard.profileActionMetrics.getter();
    GameCenterActivityFeedCard.profileAvatarActionMetrics.getter();
    GameCenterActivityFeedCard.leaderboardActionMetrics.getter();
    GameCenterActivityFeedCard.achievementActionMetrics.getter();
    v32 = v46;
    v33 = GameCenterActivityFeedCard.appActionMetrics.getter();
    v42 = v39;
    __chkstk_darwin(v33);
    v39[1] = v39;
    v39[-8] = v30;
    v39[-7] = v31;
    v39[-6] = v45;
    v39[-5] = v19;
    v39[-4] = v16;
    v39[-3] = v13;
    v39[-2] = v10;
    v39[-1] = v32;
    __chkstk_darwin(v34);
    v39[-4] = sub_1006B0BAC;
    v39[-3] = v35;
    v39[-2] = v36;
    v39[-1] = v31;
    sub_10002849C(&qword_100991E28, &unk_1007E24A0);
    sub_1006B0BCC();
    v37 = v48;
    UIHostingConfiguration<>.init(content:)();
    static Edge.Set.all.getter();
    v38 = v51;
    v53[3] = v51;
    v53[4] = sub_100097060(&qword_1009930A0, &qword_100991E20, &qword_1007DDC58, &protocol conformance descriptor for UIHostingConfiguration<A, B>);
    sub_1000056E0(v53);
    UIHostingConfiguration.margins(_:_:)();
    (*(v50 + 8))(v37, v38);
    UICollectionViewCell.contentConfiguration.setter();

    (*(v43 + 8))(v28, v44);
    sub_10002B894(v32, &unk_100993040, &qword_1007BC2F0);
    sub_10002B894(v10, &unk_100993040, &qword_1007BC2F0);
    sub_10002B894(v13, &unk_100993040, &qword_1007BC2F0);
    sub_10002B894(v16, &unk_100993040, &qword_1007BC2F0);
    sub_10002B894(v40, &unk_100993040, &qword_1007BC2F0);
    return (*(v47 + 8))(v41, v49);
  }

  return result;
}

uint64_t sub_100707CE4(uint64_t a1, uint64_t a2)
{
  v19 = a2;
  v3 = sub_10002849C(&unk_10097DAF0, &qword_1007B2A30);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v20 - v5 + 8;
  v7 = sub_10002849C(&unk_100992FA0, &qword_1007B15C0);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v20 - v9 + 8;
  v11 = type metadata accessor for Annotation();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0) + 8;
  sub_10002C0AC(a1, v20);
  sub_10002849C(&qword_100973D50, &unk_1007B3840);
  swift_dynamicCast();
  (*(v4 + 16))(v6, v19, v3);
  v15 = WritableStateLens.init(_:)();
  if (sub_1000AE724(v15, v16))
  {
    sub_100036A58();
    WritableStateLens<A>.updateValue(_:)();
    v17 = 3;
  }

  else
  {
    v17 = 2;
  }

  (*(v8 + 8))(v10, v7);
  (*(v12 + 8))(v14, v11);
  return v17;
}

uint64_t sub_100707F8C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10002849C(&unk_10097DAF0, &qword_1007B2A30);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v14[-v6];
  v8 = sub_10002849C(&unk_1009731C0, &qword_1007B4578);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v14[-v10];
  sub_10002C0AC(a1, v14);
  sub_10002849C(&qword_100973D50, &unk_1007B3840);
  type metadata accessor for LargeHeroBreakout();
  swift_dynamicCast();
  (*(v5 + 16))(v7, a2, v4);
  type metadata accessor for NilState();
  WritableStateLens.init(_:)();
  if (dispatch thunk of LargeHeroBreakout.clickAction.getter())
  {

    v12 = 3;
  }

  else
  {
    v12 = 0;
  }

  (*(v9 + 8))(v11, v8);

  return v12;
}

uint64_t sub_100708188(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1007081F0@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for ComponentSeparator.Position();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10002849C(&unk_1009731F0, &qword_1007B0DA0);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v17 - v8;
  swift_getKeyPath();
  ItemLayoutContext.subscript.getter();

  swift_getKeyPath();
  ReadOnlyLens.subscript.getter();

  (*(v7 + 8))(v9, v6);
  if (v19[0] && (v10 = ShelfHeader.hasTrailingArtwork.getter(), , (v10 & 1) != 0))
  {
    v11 = type metadata accessor for ComponentSeparator();
    return (*(*(v11 - 8) + 56))(a1, 1, 1, v11);
  }

  else
  {
    swift_getKeyPath();
    ItemLayoutContext.subscript.getter();

    v13 = v19[0];
    UITraitCollection.prefersAccessibilityLayouts.getter();

    sub_10002849C(&unk_100980530, &qword_1007B69B0);
    ItemLayoutContext.typedModel<A>(as:)();
    if (v18)
    {
      sub_100177264(&v17, v19);
      sub_10002A400(v19, v19[3]);
      if (SearchAdOpportunityProviding.isSearchAd.getter())
      {
        v14 = 1;
      }

      else
      {
        (*(v3 + 104))(v5, enum case for ComponentSeparator.Position.bottom(_:), v2);
        ComponentSeparator.init(position:leadingInset:trailingInset:color:)();
        v14 = 0;
      }

      v16 = type metadata accessor for ComponentSeparator();
      (*(*(v16 - 8) + 56))(a1, v14, 1, v16);
      return sub_100007000(v19);
    }

    else
    {
      sub_100479F68(&v17);
      (*(v3 + 104))(v5, enum case for ComponentSeparator.Position.bottom(_:), v2);
      ComponentSeparator.init(position:leadingInset:trailingInset:color:)();
      v15 = type metadata accessor for ComponentSeparator();
      return (*(*(v15 - 8) + 56))(a1, 0, 1, v15);
    }
  }
}

unint64_t sub_1007085DC()
{
  result = qword_10098EA80;
  if (!qword_10098EA80)
  {
    type metadata accessor for PageTabChangeAction();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10098EA80);
  }

  return result;
}

uint64_t sub_10070863C()
{
  v0 = type metadata accessor for ActionOutcome();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_unknownObjectUnownedLoadStrong();
  v5 = sub_100624370(Strong);

  type metadata accessor for SearchChartsAndCategoriesDiffablePageViewController(0);
  if (swift_dynamicCastClass())
  {

    v6._countAndFlagsBits = PageTabChangeAction.selectedTabId.getter();
    SearchChartsAndCategoriesDiffablePagePresenter.updateTab(for:)(v6);

    sub_10002849C(&qword_1009764A0, &unk_1007B6230);
    (*(v1 + 104))(v3, enum case for ActionOutcome.performed(_:), v0);
    v7 = Promise.__allocating_init(value:)();
  }

  else
  {
    sub_10002849C(&qword_1009764A0, &unk_1007B6230);
    sub_1007087EC();
    swift_allocError();
    v7 = Promise.__allocating_init(error:)();
  }

  return v7;
}

unint64_t sub_1007087EC()
{
  result = qword_1009930A8;
  if (!qword_1009930A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009930A8);
  }

  return result;
}

unint64_t sub_100708854()
{
  result = qword_1009930B0;
  if (!qword_1009930B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009930B0);
  }

  return result;
}

uint64_t sub_1007088A8()
{
  v0 = type metadata accessor for FontSource();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = (&v41 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = type metadata accessor for SmallLockupLayout.Metrics();
  sub_100005644(v4, qword_1009D3798);
  v44 = sub_1000056A8(v4, qword_1009D3798);
  if (qword_10096DD00 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for FontUseCase();
  v6 = sub_1000056A8(v5, qword_1009D0698);
  (*(*(v5 - 8) + 16))(v3, v6, v5);
  v7 = v1[13];
  (v7)(v3, enum case for FontSource.useCase(_:), v0);
  v8 = v7;
  v50 = v7;
  v86 = type metadata accessor for StaticDimension();
  v87 = &protocol witness table for StaticDimension;
  v9 = v86;
  v51 = v86;
  sub_1000056E0(v85);
  v83 = v0;
  v84 = &protocol witness table for FontSource;
  v10 = sub_1000056E0(v82);
  v49 = v1[2];
  v49(v10, v3, v0);
  StaticDimension.init(_:scaledLike:)();
  v46 = v1[1];
  v46(v3, v0);
  *v3 = UIFontTextStyleBody;
  v47 = enum case for FontSource.textStyle(_:);
  v8(v3);
  v48 = v1 + 13;
  v83 = v9;
  v84 = &protocol witness table for StaticDimension;
  sub_1000056E0(v82);
  v80 = v0;
  v81 = &protocol witness table for FontSource;
  v11 = sub_1000056E0(v79);
  v12 = v49;
  v49(v11, v3, v0);
  v13 = UIFontTextStyleBody;
  StaticDimension.init(_:scaledLike:)();
  v14 = v46;
  v46(v3, v0);
  *v3 = v13;
  v15 = v47;
  v50(v3, v47, v0);
  v80 = v51;
  v81 = &protocol witness table for StaticDimension;
  sub_1000056E0(v79);
  v77 = v0;
  v78 = &protocol witness table for FontSource;
  v16 = sub_1000056E0(v76);
  v12(v16, v3, v0);
  v17 = v13;
  StaticDimension.init(_:scaledLike:)();
  v14(v3, v0);
  *v3 = v17;
  v18 = v50;
  v50(v3, v15, v0);
  v19 = v51;
  v77 = v51;
  v78 = &protocol witness table for StaticDimension;
  v42 = sub_1000056E0(v76);
  v74 = v0;
  v75 = &protocol witness table for FontSource;
  v20 = sub_1000056E0(v73);
  v49(v20, v3, v0);
  v21 = v17;
  StaticDimension.init(_:scaledLike:)();
  v14(v3, v0);
  *v3 = v21;
  v22 = v47;
  v18(v3, v47, v0);
  v74 = v19;
  v75 = &protocol witness table for StaticDimension;
  sub_1000056E0(v73);
  v71 = v0;
  v72 = &protocol witness table for FontSource;
  v23 = sub_1000056E0(v70);
  v24 = v49;
  v49(v23, v3, v0);
  v45 = v1 + 2;
  v25 = v21;
  StaticDimension.init(_:scaledLike:)();
  v46(v3, v0);
  *v3 = UIFontTextStyleFootnote;
  v18(v3, v22, v0);
  v71 = v51;
  v72 = &protocol witness table for StaticDimension;
  sub_1000056E0(v70);
  v68 = v0;
  v69 = &protocol witness table for FontSource;
  v26 = sub_1000056E0(v67);
  v24(v26, v3, v0);
  v27 = UIFontTextStyleFootnote;
  StaticDimension.init(_:scaledLike:)();
  v28 = v46;
  v46(v3, v0);
  v43 = v1 + 1;
  *v3 = v27;
  v29 = v47;
  v18(v3, v47, v0);
  v30 = v51;
  v68 = v51;
  v69 = &protocol witness table for StaticDimension;
  v42 = sub_1000056E0(v67);
  v65 = v0;
  v66 = &protocol witness table for FontSource;
  v31 = sub_1000056E0(v64);
  v24(v31, v3, v0);
  v32 = v27;
  StaticDimension.init(_:scaledLike:)();
  v28(v3, v0);
  *v3 = v32;
  v50(v3, v29, v0);
  v65 = v30;
  v66 = &protocol witness table for StaticDimension;
  sub_1000056E0(v64);
  v62 = v0;
  v63 = &protocol witness table for FontSource;
  v33 = sub_1000056E0(v61);
  v24(v33, v3, v0);
  v34 = v32;
  StaticDimension.init(_:scaledLike:)();
  v28(v3, v0);
  *v3 = v34;
  v35 = v50;
  v50(v3, v29, v0);
  v62 = v51;
  v63 = &protocol witness table for StaticDimension;
  v42 = sub_1000056E0(v61);
  v59 = v0;
  v60 = &protocol witness table for FontSource;
  v36 = sub_1000056E0(v58);
  v24(v36, v3, v0);
  v37 = v34;
  StaticDimension.init(_:scaledLike:)();
  v28(v3, v0);
  *v3 = v37;
  v35(v3, v47, v0);
  v59 = v51;
  v60 = &protocol witness table for StaticDimension;
  sub_1000056E0(v58);
  v56 = v0;
  v57 = &protocol witness table for FontSource;
  v38 = sub_1000056E0(v55);
  v49(v38, v3, v0);
  v39 = v37;
  StaticDimension.init(_:scaledLike:)();
  v28(v3, v0);
  v56 = type metadata accessor for ZeroDimension();
  v57 = &protocol witness table for ZeroDimension;
  sub_1000056E0(v55);
  static ZeroDimension.zero.getter();
  v53 = &type metadata for Double;
  v54 = &protocol witness table for Double;
  v52 = 0x4024000000000000;
  return SmallLockupLayout.Metrics.init(artworkSize:artworkMargins:ordinalSpaceProvider:headingSpace:titleRegularSpace:titleMediumSpace:titleShortSpace:titleWithHeadingSpace:subtitleSpace:subtitleExtraTallSpace:tertiaryTitleSpace:offerTextSpace:bottomSpace:axBottomSpace:offerButtonSize:offerButtonMargin:numberOfLines:maxAXTotalLines:wantsVerticallyCenteredTextLayout:wantsHorizontallyCenteredOrdinal:)();
}

uint64_t sub_100709164()
{
  v0 = type metadata accessor for FontSource();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = (v41 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = type metadata accessor for SmallLockupLayout.Metrics();
  sub_100005644(v4, qword_1009D37B0);
  v41[0] = sub_1000056A8(v4, qword_1009D37B0);
  if (qword_10096E400 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for FontUseCase();
  v6 = sub_1000056A8(v5, qword_1009D1B80);
  v7 = *(v5 - 8);
  v8 = *(v7 + 16);
  v9 = v7 + 16;
  v8(v3, v6, v5);
  v45 = v9;
  v10 = v8;
  v51 = enum case for FontSource.useCase(_:);
  v11 = v1[13];
  v44 = v1 + 13;
  v50 = v11;
  v11(v3);
  v47 = type metadata accessor for StaticDimension();
  v84[3] = v47;
  v84[4] = &protocol witness table for StaticDimension;
  sub_1000056E0(v84);
  v82 = v0;
  v83 = &protocol witness table for FontSource;
  v12 = sub_1000056E0(v81);
  v48 = v1[2];
  v49 = v1 + 2;
  v48(v12, v3, v0);
  StaticDimension.init(_:scaledLike:)();
  v43 = v1[1];
  v41[1] = v1 + 1;
  v43(v3, v0);
  v46 = v6;
  v42 = v5;
  v52 = v8;
  v8(v3, v6, v5);
  v13 = v51;
  v50(v3, v51, v0);
  v14 = v47;
  v82 = v47;
  v83 = &protocol witness table for StaticDimension;
  sub_1000056E0(v81);
  v79 = v0;
  v80 = &protocol witness table for FontSource;
  v15 = sub_1000056E0(v78);
  v48(v15, v3, v0);
  StaticDimension.init(_:scaledLike:)();
  v16 = v43;
  v43(v3, v0);
  v10(v3, v6, v5);
  v17 = v50;
  v50(v3, v13, v0);
  v79 = v14;
  v80 = &protocol witness table for StaticDimension;
  sub_1000056E0(v78);
  v76 = v0;
  v77 = &protocol witness table for FontSource;
  v18 = sub_1000056E0(v75);
  v19 = v48;
  v48(v18, v3, v0);
  StaticDimension.init(_:scaledLike:)();
  v16(v3, v0);
  v20 = v42;
  v52(v3, v46, v42);
  v17(v3, v51, v0);
  v76 = v47;
  v77 = &protocol witness table for StaticDimension;
  sub_1000056E0(v75);
  v73 = v0;
  v74 = &protocol witness table for FontSource;
  v21 = sub_1000056E0(v72);
  v19(v21, v3, v0);
  StaticDimension.init(_:scaledLike:)();
  v22 = v43;
  v43(v3, v0);
  v52(v3, v46, v20);
  v50(v3, v51, v0);
  v23 = v47;
  v73 = v47;
  v74 = &protocol witness table for StaticDimension;
  sub_1000056E0(v72);
  v70 = v0;
  v71 = &protocol witness table for FontSource;
  v24 = sub_1000056E0(v69);
  v48(v24, v3, v0);
  StaticDimension.init(_:scaledLike:)();
  v22(v3, v0);
  if (qword_10096E408 != -1)
  {
    swift_once();
  }

  v25 = v42;
  v26 = sub_1000056A8(v42, qword_1009D1B98);
  v52(v3, v26, v25);
  v27 = v50;
  v50(v3, v51, v0);
  v70 = v23;
  v71 = &protocol witness table for StaticDimension;
  sub_1000056E0(v69);
  *(&v67 + 1) = v0;
  v68 = &protocol witness table for FontSource;
  v28 = sub_1000056E0(&v66);
  v48(v28, v3, v0);
  StaticDimension.init(_:scaledLike:)();
  v43(v3, v0);
  v68 = 0;
  v66 = 0u;
  v67 = 0u;
  v52(v3, v46, v42);
  v29 = v27;
  v27(v3, v51, v0);
  v30 = v47;
  v65[3] = v47;
  v65[4] = &protocol witness table for StaticDimension;
  sub_1000056E0(v65);
  v63 = v0;
  v64 = &protocol witness table for FontSource;
  v31 = sub_1000056E0(v62);
  v48(v31, v3, v0);
  StaticDimension.init(_:scaledLike:)();
  v43(v3, v0);
  *v3 = UIFontTextStyleFootnote;
  v29(v3, enum case for FontSource.textStyle(_:), v0);
  v63 = v30;
  v64 = &protocol witness table for StaticDimension;
  sub_1000056E0(v62);
  v60 = v0;
  v61 = &protocol witness table for FontSource;
  v32 = sub_1000056E0(v59);
  v33 = v48;
  v48(v32, v3, v0);
  v34 = UIFontTextStyleFootnote;
  StaticDimension.init(_:scaledLike:)();
  v35 = v43;
  v43(v3, v0);
  v36 = v42;
  v52(v3, v46, v42);
  v37 = v51;
  v50(v3, v51, v0);
  v60 = v47;
  v61 = &protocol witness table for StaticDimension;
  sub_1000056E0(v59);
  v57 = v0;
  v58 = &protocol witness table for FontSource;
  v38 = sub_1000056E0(v56);
  v33(v38, v3, v0);
  StaticDimension.init(_:scaledLike:)();
  v35(v3, v0);
  v52(v3, v46, v36);
  v50(v3, v37, v0);
  v57 = v47;
  v58 = &protocol witness table for StaticDimension;
  sub_1000056E0(v56);
  v54 = v0;
  v55 = &protocol witness table for FontSource;
  v39 = sub_1000056E0(v53);
  v33(v39, v3, v0);
  StaticDimension.init(_:scaledLike:)();
  v35(v3, v0);
  v54 = &type metadata for Double;
  v55 = &protocol witness table for Double;
  v53[0] = 0x4024000000000000;
  return SmallLockupLayout.Metrics.init(artworkSize:artworkMargins:ordinalSpaceProvider:headingSpace:titleRegularSpace:titleMediumSpace:titleShortSpace:titleWithHeadingSpace:subtitleSpace:subtitleExtraTallSpace:tertiaryTitleSpace:offerTextSpace:bottomSpace:axBottomSpace:offerButtonSize:offerButtonMargin:numberOfLines:maxAXTotalLines:wantsVerticallyCenteredTextLayout:wantsHorizontallyCenteredOrdinal:)();
}

double sub_100709B04@<D0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  if (a1 == 3)
  {
    if (qword_10096D030 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for StaticDimension();
    v4 = v3;
    v5 = qword_1009CDF18;
  }

  else
  {
    if (a1 != 2 && a1 != 1)
    {
      a2[3] = type metadata accessor for ZeroDimension();
      a2[4] = &protocol witness table for ZeroDimension;
      sub_1000056E0(a2);
      static ZeroDimension.zero.getter();
      return result;
    }

    if (qword_10096D028 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for StaticDimension();
    v4 = v3;
    v5 = qword_1009CDF00;
  }

  v6 = sub_1000056A8(v3, v5);
  a2[3] = v4;
  a2[4] = &protocol witness table for StaticDimension;
  v7 = sub_1000056E0(a2);
  v8 = *(*(v4 - 8) + 16);

  v8(v7, v6, v4);
  return result;
}

void sub_100709C80(char a1)
{
  v2 = v1;
  v4 = type metadata accessor for InAppPurchaseIconLayout.Metrics();
  *&v5 = __chkstk_darwin(v4 - 8).n128_u64[0];
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = v2[OBJC_IVAR____TtC8AppStore15SmallLockupView_iconType];
  v2[OBJC_IVAR____TtC8AppStore15SmallLockupView_iconType] = a1 & 1;
  if (v8 != (a1 & 1))
  {
    if (a1)
    {
      v9 = [v2 traitCollection];
      UITraitCollection.prefersAccessibilityLayouts.getter();

      InAppPurchaseIconLayout.Metrics.init(mainIconDimension:shouldPlaceTileAtOrigin:scaleToFit:)();
      v10 = objc_allocWithZone(type metadata accessor for InAppPurchaseView(0));
      v11 = sub_1002EB7C0(v7, 1);
      v12 = OBJC_IVAR____TtC8AppStore15SmallLockupView_inAppPurchaseIcon;
      v13 = *&v2[OBJC_IVAR____TtC8AppStore15SmallLockupView_inAppPurchaseIcon];
      if (v13)
      {
        [v13 removeFromSuperview];
        v14 = *&v2[v12];
      }

      else
      {
        v14 = 0;
      }

      *&v2[v12] = v11;
      v18 = v11;

      [v2 addSubview:v18];
      [*&v2[OBJC_IVAR____TtC8AppStore14BaseLockupView_artworkView] setHidden:1];
    }

    else
    {
      v15 = OBJC_IVAR____TtC8AppStore15SmallLockupView_inAppPurchaseIcon;
      v16 = *&v2[OBJC_IVAR____TtC8AppStore15SmallLockupView_inAppPurchaseIcon];
      if (v16)
      {
        [v16 removeFromSuperview];
        v17 = *&v2[v15];
      }

      else
      {
        v17 = 0;
      }

      *&v2[v15] = 0;

      [*&v2[OBJC_IVAR____TtC8AppStore14BaseLockupView_artworkView] setHidden:0];
    }

    [v2 setNeedsLayout];
  }
}

uint64_t sub_100709E58@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC8AppStore15SmallLockupView_metrics;
  swift_beginAccess();
  v4 = type metadata accessor for SmallLockupLayout.Metrics();
  (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
  v5 = *(v1 + OBJC_IVAR____TtC8AppStore14BaseLockupView_offerButton);
  type metadata accessor for BaseLockupView();
  LayoutMarginsAware<>.layoutFrame.getter();
  v6 = v5 + OBJC_IVAR____TtC8AppStore11OfferButton_cachedIntrinsicContentSize;
  if (*(v5 + OBJC_IVAR____TtC8AppStore11OfferButton_cachedIntrinsicContentSize + 16))
  {
    v7 = OBJC_IVAR____TtC8AppStore11OfferButton__configuration;
    swift_beginAccess();
    sub_10002C0AC(v5 + v7, v13);
    sub_10002A400(v13, v13[3]);
    dispatch thunk of OfferButtonConfiguration.size(in:)();
    v9 = v8;
    v11 = v10;
    sub_100007000(v13);
    *v6 = v9;
    *(v6 + 8) = v11;
    *(v6 + 16) = 0;
  }

  return SmallLockupLayout.Metrics.offerButtonSize.setter();
}

uint64_t sub_10070A300@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v60 = a1;
  v61 = type metadata accessor for SmallLockupLayout();
  v59 = *(v61 - 8);
  __chkstk_darwin(v61);
  v58 = &v53 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for SmallLockupLayout.Metrics();
  v62 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v53 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v53 - v8;
  __chkstk_darwin(v10);
  v12 = &v53 - v11;
  sub_100709E58(&v53 - v11);
  v13 = OBJC_IVAR____TtC8AppStore15SmallLockupView_enforceMaximumOfTwoLinesOverall;
  if (v1[OBJC_IVAR____TtC8AppStore15SmallLockupView_isDisplayingSearchAd] == 1 && (v1[OBJC_IVAR____TtC8AppStore15SmallLockupView_enforceMaximumOfTwoLinesOverall] & 1) == 0)
  {
    Copyable.copyWithOverrides(in:)();
    v14 = v62;
    (*(v62 + 8))(v12, v4);
    (*(v14 + 32))(v12, v9, v4);
    v13 = OBJC_IVAR____TtC8AppStore15SmallLockupView_enforceMaximumOfTwoLinesOverall;
  }

  v55 = v9;
  if (v2[v13] == 1)
  {
    v15 = *&v2[OBJC_IVAR____TtC8AppStore15SmallLockupView_searchAdTertiaryLabel];
    v16 = type metadata accessor for DynamicTypeLabel();
    *(&v80 + 1) = v16;
    v81 = &protocol witness table for UILabel;
    if (v15)
    {
      v17 = v15;
    }

    else
    {
      v17 = *&v2[OBJC_IVAR____TtC8AppStore14BaseLockupView_subtitleLabel];
    }

    *&v79 = v17;
    sub_100005A38(&v79, v82);
    v20 = *&v2[OBJC_IVAR____TtC8AppStore14BaseLockupView_tertiaryTitleLabel];
    if (v20)
    {
      v21 = v16;
    }

    else
    {
      v21 = 0;
    }

    if (v20)
    {
      v22 = &protocol witness table for UILabel;
    }

    else
    {
      v22 = 0;
    }

    v79 = v20;
    *&v80 = 0;
    *(&v80 + 1) = v21;
    v81 = v22;
    v23 = v20;
  }

  else
  {
    v18 = *&v2[OBJC_IVAR____TtC8AppStore14BaseLockupView_subtitleLabel];
    v19 = type metadata accessor for DynamicTypeLabel();
    v82[3] = v19;
    v82[4] = &protocol witness table for UILabel;
    v82[0] = v18;
    v15 = *&v2[OBJC_IVAR____TtC8AppStore15SmallLockupView_searchAdTertiaryLabel];
    if (v15)
    {
      *(&v80 + 1) = type metadata accessor for SearchAdTransparencyLabel(0);
      v81 = &protocol witness table for UILabel;
      *&v79 = v15;
      sub_100005A38(&v79, &v76);
    }

    else
    {
      v24 = *&v2[OBJC_IVAR____TtC8AppStore14BaseLockupView_tertiaryTitleLabel];
      if (v24)
      {
        v25 = &protocol witness table for UILabel;
      }

      else
      {
        v19 = 0;
        v25 = 0;
        *(&v76 + 1) = 0;
        *&v77 = 0;
      }

      *&v76 = v24;
      *(&v77 + 1) = v19;
      v78 = v25;
      v26 = v18;
      v15 = 0;
      v18 = v24;
    }

    v27 = v18;
    v79 = v76;
    v80 = v77;
    v81 = v78;
  }

  v28 = v15;
  v29 = OBJC_IVAR____TtC8AppStore15SmallLockupView_inAppPurchaseIcon;
  if (*&v2[OBJC_IVAR____TtC8AppStore15SmallLockupView_inAppPurchaseIcon])
  {
    [*&v2[OBJC_IVAR____TtC8AppStore14BaseLockupView_artworkView] setHidden:1];
  }

  v30 = *(v62 + 16);
  v56 = v12;
  v54 = v30;
  v30(v6, v12, v4);
  v31 = *&v2[v29];
  *(&v77 + 1) = sub_100005744(0, &qword_100972EB0, UIView_ptr);
  v78 = &protocol witness table for UIView;
  v57 = v6;
  if (v31)
  {
    v32 = v31;
  }

  else
  {
    v32 = *&v2[OBJC_IVAR____TtC8AppStore14BaseLockupView_artworkView];
  }

  *&v76 = v32;
  v33 = *&v2[OBJC_IVAR____TtC8AppStore14BaseLockupView_ordinalLabel];
  v34 = type metadata accessor for DynamicTypeLabel();
  v75[3] = v34;
  v75[4] = &protocol witness table for UILabel;
  v75[0] = v33;
  v35 = *&v2[OBJC_IVAR____TtC8AppStore14BaseLockupView_headingLabel];
  v36 = v4;
  if (v35)
  {
    v37 = &protocol witness table for UILabel;
    v38 = v34;
  }

  else
  {
    v38 = 0;
    v37 = 0;
    v74[2] = 0;
    v74[1] = 0;
  }

  v74[0] = v35;
  v74[3] = v38;
  v74[4] = v37;
  v39 = *&v2[OBJC_IVAR____TtC8AppStore14BaseLockupView_titleLabel];
  v73[4] = &protocol witness table for UILabel;
  v73[3] = v34;
  v72[4] = &protocol witness table for UILabel;
  v73[0] = v39;
  v40 = *&v2[OBJC_IVAR____TtC8AppStore14BaseLockupView_offerLabel];
  v72[3] = v34;
  v72[0] = v40;
  v41 = *&v2[OBJC_IVAR____TtC8AppStore14BaseLockupView_offerButton];
  v71[3] = type metadata accessor for OfferButton();
  v71[4] = &protocol witness table for UIView;
  v71[0] = v41;
  v42 = v31;
  v43 = v33;
  v44 = v35;
  v45 = v39;
  v46 = v40;
  v47 = v41;

  v48 = v57;
  v54(v55, v57, v36);
  sub_10002C0AC(&v76, &v70);
  sub_10002C0AC(v75, &v69);
  sub_100031660(v74, &v68, &unk_10097E890, qword_1007B4270);
  sub_10002C0AC(v73, &v67);
  sub_10002C0AC(v82, &v66);
  sub_100031660(&v79, &v65, &unk_10097E890, qword_1007B4270);
  sub_100031660(v72, &v64, &unk_10097E890, qword_1007B4270);
  sub_100031660(v71, &v63, &qword_100975610, &qword_1007B5690);
  v49 = v58;
  SmallLockupLayout.init(metrics:artworkView:ordinalText:headingText:titleText:subtitleText:tertiaryTitleText:offerText:offerButton:)();
  sub_10070B8B4();
  v50 = v61;
  Measurable.placeable.getter();
  (*(v59 + 8))(v49, v50);
  v51 = *(v62 + 8);
  v51(v48, v36);
  sub_10002B894(&v79, &unk_10097E890, qword_1007B4270);
  v51(v56, v36);
  sub_100007000(v82);
  sub_10002B894(v71, &qword_100975610, &qword_1007B5690);
  sub_10002B894(v72, &unk_10097E890, qword_1007B4270);
  sub_100007000(v73);
  sub_10002B894(v74, &unk_10097E890, qword_1007B4270);
  sub_100007000(v75);
  return sub_100007000(&v76);
}

uint64_t sub_10070A9C8()
{
  v0 = type metadata accessor for FontSource();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = (v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v4 = UIFontTextStyleFootnote;
  (*(v1 + 104))(v4, enum case for FontSource.textStyle(_:), v0, v2);
  v9[3] = type metadata accessor for StaticDimension();
  v9[4] = &protocol witness table for StaticDimension;
  sub_1000056E0(v9);
  v8[3] = v0;
  v8[4] = &protocol witness table for FontSource;
  v5 = sub_1000056E0(v8);
  (*(v1 + 16))(v5, v4, v0);
  v6 = UIFontTextStyleFootnote;
  StaticDimension.init(_:scaledLike:)();
  (*(v1 + 8))(v4, v0);
  return SmallLockupLayout.Metrics.tertiaryTitleSpace.setter();
}

void sub_10070AB34()
{
  v1 = sub_10002849C(&qword_100972ED0, &unk_1007B17B0);
  __chkstk_darwin(v1 - 8);
  v3 = &v19 - v2;
  v4 = *(v0 + OBJC_IVAR____TtC8AppStore15SmallLockupView_searchAdTertiaryLabel);
  if (v4)
  {
    if (*(v0 + OBJC_IVAR____TtC8AppStore15SmallLockupView_enforceMaximumOfTwoLinesOverall) == 1)
    {
      v5 = *(v0 + OBJC_IVAR____TtC8AppStore14BaseLockupView_subtitleLabel);
      v6 = v4;
      [v5 setHidden:1];
      v7 = v6;
      dispatch thunk of DynamicTypeLabel.fontUseCase.getter();
      dispatch thunk of DynamicTypeLabel.fontUseCase.setter();

      v8 = v7;
      v9 = [v5 textColor];
    }

    else
    {
      v10 = *(v0 + OBJC_IVAR____TtC8AppStore14BaseLockupView_tertiaryTitleLabel);
      v11 = v4;
      if (v10)
      {
        [v10 setHidden:1];
      }

      v12 = qword_10096DD58;
      v13 = v4;
      if (v12 != -1)
      {
        swift_once();
      }

      v14 = type metadata accessor for FontUseCase();
      v15 = sub_1000056A8(v14, qword_1009D07A0);
      v16 = *(v14 - 8);
      (*(v16 + 16))(v3, v15, v14);
      (*(v16 + 56))(v3, 0, 1, v14);
      dispatch thunk of DynamicTypeLabel.fontUseCase.setter();

      sub_100005744(0, &qword_100970180, UIColor_ptr);
      v17 = v13;
      v9 = static UIColor.secondaryText.getter();
    }

    v18 = v9;
    [v4 setTextColor:v9];
  }
}

uint64_t sub_10070AD88(void *a1, void *a2)
{
  v3 = v2;
  v4 = *&v2[OBJC_IVAR____TtC8AppStore15SmallLockupView_lockupTapGestureRecognizer];
  if (v4 && (sub_100005744(0, &unk_100993110, UIGestureRecognizer_ptr), v7 = a1, v8 = v4, LOBYTE(a1) = static NSObject.== infix(_:_:)(), v8, v7, (a1 & 1) != 0))
  {
    [a2 locationInView:v3];
    v9 = [v3 hitTest:0 withEvent:?];
    if (v9)
    {
      v10 = v9;
      v11 = *&v3[OBJC_IVAR____TtC8AppStore14BaseLockupView_offerButton];
      sub_100005744(0, &qword_100972EB0, UIView_ptr);
      v12 = v11;
      v13 = v10;
      v14 = static NSObject.== infix(_:_:)();

      v15 = v14 ^ 1;
    }

    else
    {
      v15 = 1;
    }
  }

  else
  {
    v15 = 0;
  }

  return v15 & 1;
}

void sub_10070B000()
{
  v1 = OBJC_IVAR____TtC8AppStore15SmallLockupView_lockupTapGestureRecognizer;
  v2 = *&v0[OBJC_IVAR____TtC8AppStore15SmallLockupView_lockupTapGestureRecognizer];
  if (*&v0[OBJC_IVAR____TtC8AppStore15SmallLockupView_lockupTapBlock])
  {
    if (v2)
    {
      return;
    }

    v3 = [objc_allocWithZone(UITapGestureRecognizer) init];
    [v3 addTarget:v0 action:"lockupTapGestureRecognized"];
    [v3 setDelegate:v0];

    [v0 addGestureRecognizer:v3];
    v2 = *&v0[v1];
  }

  else
  {
    v3 = 0;
  }

  *&v0[v1] = v3;
}

uint64_t sub_10070B160()
{
  v1 = OBJC_IVAR____TtC8AppStore15SmallLockupView_metrics;
  v2 = type metadata accessor for SmallLockupLayout.Metrics();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = *(v0 + OBJC_IVAR____TtC8AppStore15SmallLockupView_lockupTapBlock);
  v4 = *(v0 + OBJC_IVAR____TtC8AppStore15SmallLockupView_lockupTapBlock + 8);

  return sub_10001F63C(v3, v4);
}

id sub_10070B20C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SmallLockupView(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for SmallLockupView(uint64_t a1)
{
  result = qword_1009930F8;
  if (!qword_1009930F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10070B348(uint64_t a1)
{
  result = type metadata accessor for SmallLockupLayout.Metrics();
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

double sub_10070B400()
{
  v1 = type metadata accessor for SmallLockupLayout.Metrics();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  sub_100709E58(v4);
  [v5 layoutMargins];
  sub_100508464();
  v7 = v6;
  (*(v2 + 8))(v4, v1);
  return v7;
}

unint64_t sub_10070B544()
{
  result = qword_100993108;
  if (!qword_100993108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100993108);
  }

  return result;
}

double sub_10070B598(uint64_t a1, void *a2, double a3, double a4)
{
  v6 = type metadata accessor for OfferButtonMetrics();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v27 - v11;
  v13 = type metadata accessor for SmallLockupLayout.Metrics();
  v14 = *(v13 - 8);
  *&v15 = __chkstk_darwin(v13).n128_u64[0];
  v17 = &v27 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = [a2 traitCollection];
  (*(v14 + 16))(v17, a1, v13);
  v19 = SmallLockupLayout.Metrics.offerButtonSize.getter();
  if ((v21 & 1) == 0 && ((v19 | v20) & 0x7FFFFFFFFFFFFFFFLL) == 0)
  {
    if (UITraitCollection.prefersAccessibilityLayouts.getter())
    {
      if (qword_10096ECB8 != -1)
      {
        swift_once();
      }

      v22 = qword_100991010;
    }

    else
    {
      if (qword_10096ECC0 != -1)
      {
        swift_once();
      }

      v22 = qword_100991028;
    }

    v23 = sub_1000056A8(v6, v22);
    (*(v7 + 16))(v9, v23, v6);
    (*(v7 + 32))(v12, v9, v6);
    OfferButtonMetrics.minimumSize.getter();
    OfferButtonMetrics.estimatedHeight.getter();
    SmallLockupLayout.Metrics.offerButtonSize.setter();
    (*(v7 + 8))(v12, v6);
  }

  static SmallLockupLayout.estimatedMeasurements(fitting:using:with:)();
  v25 = v24;

  (*(v14 + 8))(v17, v13);
  return v25;
}

unint64_t sub_10070B8B4()
{
  result = qword_100993120;
  if (!qword_100993120)
  {
    type metadata accessor for SmallLockupLayout();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100993120);
  }

  return result;
}

id sub_10070B90C(__n128 a1)
{
  v2 = type metadata accessor for UITraitOverrides();
  __chkstk_darwin(v2);
  v3 = type metadata accessor for UITypesettingLanguageAwareLineHeightRatio();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1[OBJC_IVAR____TtC8AppStore15SmallLockupView_iconType] = 0;
  v7 = OBJC_IVAR____TtC8AppStore15SmallLockupView_metrics;
  if (qword_10096EE80 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for SmallLockupLayout.Metrics();
  v9 = sub_1000056A8(v8, qword_1009D3798);
  (*(*(v8 - 8) + 16))(&v1[v7], v9, v8);
  *&v1[OBJC_IVAR____TtC8AppStore15SmallLockupView_searchAdTertiaryLabel] = 0;
  v1[OBJC_IVAR____TtC8AppStore15SmallLockupView_enforceMaximumOfTwoLinesOverall] = 0;
  v1[OBJC_IVAR____TtC8AppStore15SmallLockupView_isDisplayingSearchAd] = 0;
  *&v1[OBJC_IVAR____TtC8AppStore15SmallLockupView_inAppPurchaseIcon] = 0;
  *&v1[OBJC_IVAR____TtC8AppStore15SmallLockupView_lockupTapGestureRecognizer] = 0;
  v10 = &v1[OBJC_IVAR____TtC8AppStore15SmallLockupView_lockupTapBlock];
  v11 = type metadata accessor for SmallLockupView(0);
  *v10 = 0;
  v10[1] = 0;
  v15.receiver = v1;
  v15.super_class = v11;
  v12 = objc_msgSendSuper2(&v15, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  (*(v4 + 104))(v6, enum case for UITypesettingLanguageAwareLineHeightRatio.legacy(_:), v3);
  v13 = v12;
  UIView.traitOverrides.getter();
  UIMutableTraits._typesettingLanguageAwareLineHeightRatio.setter();
  UIView.traitOverrides.setter();

  return v13;
}

id sub_10070BB88()
{
  result = [objc_allocWithZone(UISegmentedControl) init];
  qword_100993130 = result;
  return result;
}

double sub_10070BBC8(uint64_t a1, double a2, double a3)
{
  v5 = *(a1 + 16);
  if (v5)
  {
    v6 = a1 + 40;
    do
    {
      v7 = qword_10096EE90;

      if (v7 != -1)
      {
        swift_once();
      }

      v8 = qword_100993130;
      v9 = String._bridgeToObjectiveC()();
      [v8 addSegmentWithTitle:v9];

      v6 += 16;
      --v5;
    }

    while (v5);
  }

  if (qword_10096EE90 != -1)
  {
    swift_once();
  }

  v10 = qword_100993130;
  [qword_100993130 sizeThatFits:{a2, a3}];
  v12 = v11;
  [v10 removeAllSegments];
  return v12;
}

void sub_10070BD28(uint64_t a1, char a2, char a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    if ((sub_10006230C() & 1) == 0)
    {
      goto LABEL_10;
    }

    v7 = [v6 view];
    if (v7)
    {
      v8 = v7;
      type metadata accessor for InsetCollectionViewControllerContentView();
      v9 = swift_dynamicCastClass();
      if (v9)
      {
        v10 = *(v9 + OBJC_IVAR____TtC8AppStoreP33_F9B20E6387F6F627D5761E6B0A83FE5540InsetCollectionViewControllerContentView_insetLayoutMarginsFromTopSafeAreaInset);

        if (v10 & 1) == 0 && (a2)
        {

          if ((a3 & 1) != 0 || (v11 = *&v6[qword_1009D01C8]) == 0)
          {
            v12 = 1;
          }

          else
          {
            [*(v11 + OBJC_IVAR____TtC8AppStore19ArcadePageTitleView_lockupView) setAlpha:1.0];
            v12 = 1;
          }

LABEL_24:
          sub_10070BF90(v12);
LABEL_25:

          return;
        }

LABEL_10:
        v13 = *&v6[qword_1009D01D0];
        if (v13)
        {
          v14 = *&v6[qword_1009D01C8];

          if (v14 || (v15 = [v6 traitCollection], v16 = UITraitCollection.isRegularPad.getter(), v15, (v16 & 1) != 0))
          {
            v17 = [v6 collectionView];

            if (v17)
            {
              [v17 _systemContentInset];
              v19 = v18;
              [v17 contentOffset];
              v21 = v20;
              v22 = [v17 contentInset];
              v23.n128_f64[0] = fmin((v19 + v21 + v23.n128_f64[0] - *(v13 + 32)) / *(v13 + 40), 1.0);
              if (v23.n128_f64[0] < 0.0)
              {
                v23.n128_f64[0] = 0.0;
              }

              (*(v13 + 16))(v22, v23);

              goto LABEL_25;
            }

LABEL_29:
            __break(1u);
            return;
          }
        }

        v24 = *&v6[qword_1009D01C8];
        if (v24)
        {
          v25 = 0.0;
          if (a2)
          {
            v25 = 1.0;
          }

          [*(v24 + OBJC_IVAR____TtC8AppStore19ArcadePageTitleView_lockupView) setAlpha:v25];
        }

        v12 = a2 & 1;
        goto LABEL_24;
      }
    }

    __break(1u);
    goto LABEL_29;
  }
}

void sub_10070BF90(char a1)
{
  v2 = v1;
  v4 = [v1 traitCollection];
  v5 = UITraitCollection.isRegularPad.getter();

  if (v5)
  {
    if (a1)
    {
      sub_100028BB8();
      v6 = static UIColor.appTint.getter();
    }

    else
    {
      v6 = [objc_opt_self() whiteColor];
    }

    v12 = v6;
    v10 = [v2 navigationItem];
    v11 = [v10 rightBarButtonItem];

    if (!v11)
    {
      goto LABEL_13;
    }

    v9 = [v11 customView];

    if (!v9)
    {
      goto LABEL_13;
    }

    [v9 setTintColor:v12];
  }

  else
  {
    v7 = [v2 navigationItem];
    v8 = [v7 rightBarButtonItem];

    if (!v8)
    {
      return;
    }

    v9 = [v8 customView];

    if (!v9)
    {
      return;
    }

    v12 = [objc_opt_self() whiteColor];
    [v9 setTintColor:v12];
  }

LABEL_13:
}

uint64_t sub_10070C164(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Shelf.ContentType();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10002849C(&unk_1009731F0, &qword_1007B0DA0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v19 - v10;
  swift_getKeyPath();
  ItemLayoutContext.subscript.getter();

  swift_getKeyPath();
  ReadOnlyLens.subscript.getter();

  (*(v9 + 8))(v11, v8);
  v12 = (*(v5 + 88))(v7, v4);
  if (v12 == enum case for Shelf.ContentType.singleColumnList(_:) || v12 == enum case for Shelf.ContentType.twoColumnList(_:))
  {
    v14 = &qword_100993210;
    v15 = qword_1007DFB40;
    v16 = sub_10002849C(&qword_100993210, qword_1007DFB40);
    sub_100097060(&qword_100993218, &qword_100993210, qword_1007DFB40, &unk_1007B7CA0);
    sub_100097060(&qword_100993220, &qword_100993210, qword_1007DFB40, &unk_1007C8470);
    v17 = &unk_100993228;
  }

  else
  {
    if (v12 != enum case for Shelf.ContentType.scrollablePill(_:))
    {
      v16 = sub_1007512DC(a1, a2);
      (*(v5 + 8))(v7, v4);
      return v16;
    }

    v14 = &qword_1009931F0;
    v15 = &qword_1007DFB38;
    v16 = sub_10002849C(&qword_1009931F0, &qword_1007DFB38);
    sub_100097060(&qword_1009931F8, &qword_1009931F0, &qword_1007DFB38, &unk_1007B7CA0);
    sub_100097060(&qword_100993200, &qword_1009931F0, &qword_1007DFB38, &unk_1007C8470);
    v17 = &unk_100993208;
  }

  sub_100097060(v17, v14, v15, &unk_1007B7CD0);
  return v16;
}

void sub_10070C4F0(uint64_t a1)
{
  v2 = [v1 layer];
  [v2 setMaskedCorners:UIRectCorner.caCornerMask.getter()];

  v3 = [*&v1[OBJC_IVAR____TtC8AppStore18StoryCardMediaView_revealingImageView] layer];
  [v3 setMaskedCorners:UIRectCorner.caCornerMask.getter()];

  v4 = [*&v1[OBJC_IVAR____TtC8AppStore18StoryCardMediaView_revealingVideoView] layer];
  [v4 setMaskedCorners:UIRectCorner.caCornerMask.getter()];
}

void sub_10070C5EC(uint64_t a1, uint64_t a2, double a3)
{
  v7 = type metadata accessor for CornerStyle();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v11, a1, v7, v9);
  v12 = (*(v8 + 88))(v11, v7);
  if (v12 == enum case for CornerStyle.continuous(_:))
  {
    [v3 _setContinuousCornerRadius:a3];
    [*&v3[OBJC_IVAR____TtC8AppStore18StoryCardMediaView_revealingImageView] _setContinuousCornerRadius:a3];
    [*&v3[OBJC_IVAR____TtC8AppStore18StoryCardMediaView_revealingVideoView] _setContinuousCornerRadius:a3];
  }

  else
  {
    v13 = v12;
    v14 = enum case for CornerStyle.arc(_:);
    [v3 _setCornerRadius:a3];
    [*&v3[OBJC_IVAR____TtC8AppStore18StoryCardMediaView_revealingImageView] _setCornerRadius:a3];
    [*&v3[OBJC_IVAR____TtC8AppStore18StoryCardMediaView_revealingVideoView] _setCornerRadius:a3];
    if (v13 != v14)
    {
      (*(v8 + 8))(v11, v7);
    }
  }

  sub_10070C4F0(a2);
}

id sub_10070C7C4(char *a1, char a2, uint64_t a3, unsigned int a4)
{
  v5 = v4;
  v10 = sub_10002849C(&qword_100972638, qword_1007BDA60);
  *&v11 = __chkstk_darwin(v10 - 8).n128_u64[0];
  v13 = &v35 - v12;
  if ((a2 & 1) == 0)
  {
    v36 = a4;
    [a1 frame];
    [v5 setFrame:?];
    v14 = *&v5[OBJC_IVAR____TtC8AppStore18StoryCardMediaView_revealingImageView];
    v21 = *&a1[OBJC_IVAR____TtC8AppStore18StoryCardMediaView_revealingImageView];
    [v21 frame];
    [v14 setFrame:?];
    [v14 setHidden:{objc_msgSend(v21, "isHidden")}];
    v22 = OBJC_IVAR____TtC8AppStore18RevealingImageView_currentArtworkTemplate;
    swift_beginAccess();
    sub_100031660(&v21[v22], v13, &qword_100972638, qword_1007BDA60);
    v23 = OBJC_IVAR____TtC8AppStore18RevealingImageView_currentArtworkTemplate;
    swift_beginAccess();
    sub_1000315F8(v13, v14 + v23, &qword_100972638, qword_1007BDA60);
    swift_endAccess();
    v24 = [*&v21[OBJC_IVAR____TtC8AppStore18RevealingImageView_imageView] image];
    if (v24)
    {
      v25 = &v21[OBJC_IVAR____TtC8AppStore18RevealingImageView_artworkSize];
      if ((v21[OBJC_IVAR____TtC8AppStore18RevealingImageView_artworkSize + 16] & 1) != 0 || (v26 = *&v21[OBJC_IVAR____TtC8AppStore18RevealingImageView_artworkLayoutWithMetrics]) == 0)
      {
      }

      else
      {
        v28 = *v25;
        v27 = v25[1];
        v29 = v24;

        v30 = v29;
        sub_1001A5AD8(v29, v28, v27, 0, v26, a3, v36);
      }
    }

    v15 = *&v5[OBJC_IVAR____TtC8AppStore18StoryCardMediaView_revealingVideoView];
    v20 = *&a1[OBJC_IVAR____TtC8AppStore18StoryCardMediaView_revealingVideoView];
    [v20 frame];
    [v15 setFrame:?];
    [v15 setHidden:{objc_msgSend(v20, "isHidden")}];
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {

      swift_unknownObjectWeakAssign();
    }

    goto LABEL_11;
  }

  v14 = *&v5[OBJC_IVAR____TtC8AppStore18StoryCardMediaView_revealingImageView];
  v15 = *&v5[OBJC_IVAR____TtC8AppStore18StoryCardMediaView_revealingVideoView];
  v16 = *&a1[OBJC_IVAR____TtC8AppStore18StoryCardMediaView_revealingVideoView];
  v17 = swift_unknownObjectWeakLoadStrong();
  if (v17)
  {
    v18 = v17;
    v19 = v16;

    v20 = v19;
    sub_100666A9C(v19, a3);

LABEL_11:
  }

  v32 = OBJC_IVAR____TtC8AppStore18StoryCardMediaView_isExpanded;
  v33 = a1[OBJC_IVAR____TtC8AppStore18StoryCardMediaView_isExpanded];
  v5[OBJC_IVAR____TtC8AppStore18StoryCardMediaView_isExpanded] = v33;
  *(v14 + OBJC_IVAR____TtC8AppStore18RevealingImageView_isExpanded) = v33;
  [v14 setNeedsLayout];
  *(v15 + OBJC_IVAR____TtC8AppStore18RevealingVideoView_isExpanded) = v5[v32];
  sub_100665B04();
  result = [v5 setHidden:{objc_msgSend(a1, "isHidden")}];
  v5[OBJC_IVAR____TtC8AppStore18StoryCardMediaView_hasMedia] = a1[OBJC_IVAR____TtC8AppStore18StoryCardMediaView_hasMedia];
  return result;
}

void sub_10070CB5C(uint64_t a1, int a2)
{
  v17[1] = a2;
  v3 = sub_10002849C(&qword_10097A450, qword_1007BD3D0);
  __chkstk_darwin(v3 - 8);
  v5 = v17 - v4;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = v17 - v11;
  v18 = v2;
  v13 = *(v2 + OBJC_IVAR____TtC8AppStore18StoryCardMediaView_revealingImageView);
  v14 = OBJC_IVAR____TtC8AppStore18RevealingImageView_currentArtworkHandlerKey;
  swift_beginAccess();
  sub_100031660(v13 + v14, v5, &qword_10097A450, qword_1007BD3D0);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_10002B894(v5, &qword_10097A450, qword_1007BD3D0);
  }

  else
  {
    (*(v7 + 32))(v12, v5, v6);
    (*(v7 + 16))(v9, v12, v6);
    sub_10070DDA4(&qword_100979D80, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    AnyHashable.init<A>(_:)();
    ArtworkLoader.forgetFetch(forHandlerKey:deprioritizingFetch:)();
    sub_10003D614(v19);
    (*(v7 + 8))(v12, v6);
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v16 = Strong;
    type metadata accessor for TodayCardVideoView(0);
    sub_10070DDA4(&qword_100979D70, type metadata accessor for TodayCardVideoView, &unk_1007DDE78);
    ArtworkLoader.forgetFetch<A>(forView:deprioritizingFetch:)();
  }
}

id sub_10070CE5C()
{
  v1 = v0;
  v2 = sub_10002849C(&qword_10097A450, qword_1007BD3D0);
  __chkstk_darwin(v2 - 8);
  v4 = &v19 - v3;
  v5 = sub_10002849C(&qword_100972638, qword_1007BDA60);
  __chkstk_darwin(v5 - 8);
  v7 = &v19 - v6;
  v8 = *(v0 + OBJC_IVAR____TtC8AppStore18StoryCardMediaView_revealingImageView);
  v9 = type metadata accessor for Artwork.URLTemplate();
  (*(*(v9 - 8) + 56))(v7, 1, 1, v9);
  v10 = OBJC_IVAR____TtC8AppStore18RevealingImageView_currentArtworkTemplate;
  swift_beginAccess();
  sub_1000315F8(v7, &v8[v10], &qword_100972638, qword_1007BDA60);
  swift_endAccess();
  v11 = type metadata accessor for UUID();
  (*(*(v11 - 8) + 56))(v4, 1, 1, v11);
  v12 = OBJC_IVAR____TtC8AppStore18RevealingImageView_currentArtworkHandlerKey;
  swift_beginAccess();
  sub_1000315F8(v4, &v8[v12], &qword_10097A450, qword_1007BD3D0);
  swift_endAccess();
  [*&v8[OBJC_IVAR____TtC8AppStore18RevealingImageView_imageView] setImage:0];
  v13 = *(v0 + OBJC_IVAR____TtC8AppStore18StoryCardMediaView_revealingVideoView);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v15 = Strong;
    *(Strong + qword_1009CDFF8) = 7;
    sub_1000FA22C();
  }

  v16 = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakAssign();
  sub_1006666C8(v16);

  v17 = OBJC_IVAR____TtC8AppStore18StoryCardMediaView_isExpanded;
  *(v1 + OBJC_IVAR____TtC8AppStore18StoryCardMediaView_isExpanded) = 0;
  v8[OBJC_IVAR____TtC8AppStore18RevealingImageView_isExpanded] = 0;
  [v8 setNeedsLayout];
  *(v13 + OBJC_IVAR____TtC8AppStore18RevealingVideoView_isExpanded) = *(v1 + v17);
  result = sub_100665B04();
  *(v1 + OBJC_IVAR____TtC8AppStore18StoryCardMediaView_hasMedia) = 0;
  return result;
}

char *sub_10070D124(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v4[OBJC_IVAR____TtC8AppStore18StoryCardMediaView_isExpanded] = 0;
  v10 = OBJC_IVAR____TtC8AppStore18StoryCardMediaView_pageGrid;
  v11 = type metadata accessor for PageGrid();
  (*(*(v11 - 8) + 56))(&v4[v10], 1, 1, v11);
  v4[OBJC_IVAR____TtC8AppStore18StoryCardMediaView_sizeCategory] = 7;
  v4[OBJC_IVAR____TtC8AppStore18StoryCardMediaView_originalSizeCategory] = 7;
  v4[OBJC_IVAR____TtC8AppStore18StoryCardMediaView_isTransitioning] = 0;
  v4[OBJC_IVAR____TtC8AppStore18StoryCardMediaView_hasMedia] = 0;
  v12 = OBJC_IVAR____TtC8AppStore18StoryCardMediaView_revealingImageView;
  type metadata accessor for RevealingImageView(0);
  *&v4[v12] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v13 = OBJC_IVAR____TtC8AppStore18StoryCardMediaView_revealingVideoView;
  type metadata accessor for RevealingVideoView(0);
  *&v4[v13] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v18.receiver = v4;
  v18.super_class = ObjectType;
  v14 = objc_msgSendSuper2(&v18, "initWithFrame:", a1, a2, a3, a4);
  v15 = *&v14[OBJC_IVAR____TtC8AppStore18StoryCardMediaView_revealingImageView];
  v16 = v14;
  [v16 addSubview:v15];
  [v16 addSubview:*&v16[OBJC_IVAR____TtC8AppStore18StoryCardMediaView_revealingVideoView]];

  return v16;
}

void sub_10070D304()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC8AppStore18StoryCardMediaView_sizeCategory;
  v3 = *(v0 + OBJC_IVAR____TtC8AppStore18StoryCardMediaView_sizeCategory);
  *(*(v0 + OBJC_IVAR____TtC8AppStore18StoryCardMediaView_revealingImageView) + OBJC_IVAR____TtC8AppStore18RevealingImageView_sizeCategory) = v3;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    (*((swift_isaMask & *Strong) + 0x128))(v3);
  }

  v6 = *(v1 + OBJC_IVAR____TtC8AppStore18StoryCardMediaView_revealingVideoView);
  v7 = *(v1 + v2);
  *(v6 + OBJC_IVAR____TtC8AppStore18RevealingVideoView_sizeCategory) = v7;
  v8 = swift_unknownObjectWeakLoadStrong();
  if (v8)
  {
    v9 = v8;
    (*((swift_isaMask & *v8) + 0x118))(v7);
  }
}

void sub_10070D46C()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC8AppStore18StoryCardMediaView_revealingVideoView);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    sub_10070DDA4(&qword_100979D58, type metadata accessor for TodayCardVideoView, &unk_1007D1B30);
    v4 = [v9 superview];
    if (v4)
    {
      v5 = v4;
      sub_100028004();
      v6 = v2;
      v7 = static NSObject.== infix(_:_:)();

      if ((v7 & 1) == 0)
      {
        return;
      }

      v8 = swift_unknownObjectWeakLoadStrong();
      if (!v8)
      {
        return;
      }

      *(v8 + qword_1009CDFF8) = *(v1 + OBJC_IVAR____TtC8AppStore18StoryCardMediaView_originalSizeCategory);
      v9 = v8;
      sub_1000FA22C();
    }
  }
}

void (*sub_10070D660(uint64_t *a1))(id *a1, char a2)
{
  v2 = OBJC_IVAR____TtC8AppStore18RevealingVideoView_videoView;
  a1[1] = *(v1 + OBJC_IVAR____TtC8AppStore18StoryCardMediaView_revealingVideoView);
  a1[2] = v2;
  *a1 = swift_unknownObjectWeakLoadStrong();
  return sub_100666A04;
}

uint64_t type metadata accessor for StoryCardMediaView(uint64_t a1)
{
  result = qword_100993260;
  if (!qword_100993260)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10070D784(uint64_t a1)
{
  sub_1000A77BC(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_10070D860(void *a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakAssign();
  sub_1006666C8(Strong);
}

uint64_t (*sub_10070D8E0(uint64_t **a1))()
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
  v2[4] = sub_10070D660(v2);
  return sub_1000B4CAC;
}

uint64_t sub_10070D950()
{
  ObjectType = swift_getObjectType();
  v1 = sub_10070DDA4(&qword_100993280, type metadata accessor for StoryCardMediaView, &unk_1007DFC48);

  return VideoViewProviding.someVideoView.getter(ObjectType, v1);
}

uint64_t sub_10070D9C4(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v5 = sub_10070DDA4(&qword_100993280, type metadata accessor for StoryCardMediaView, &unk_1007DFC48);

  return VideoViewProviding.someVideoView.setter(a1, a2, ObjectType, v5);
}

uint64_t (*sub_10070DA50(uint64_t *a1))()
{
  swift_getObjectType();
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  sub_10070DDA4(&qword_100993280, type metadata accessor for StoryCardMediaView, &unk_1007DFC48);
  *(v3 + 32) = VideoViewProviding.someVideoView.modify();
  return sub_1000C2700;
}

uint64_t sub_10070DB0C(void *a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = *(v1 + OBJC_IVAR____TtC8AppStore18StoryCardMediaView_revealingVideoView);
  v3 = [a1 superview];
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  sub_100028004();
  v5 = v2;
  v6 = static NSObject.== infix(_:_:)();

  return v6 & 1;
}

void sub_10070DC6C()
{
  *(v0 + OBJC_IVAR____TtC8AppStore18StoryCardMediaView_isExpanded) = 0;
  v1 = OBJC_IVAR____TtC8AppStore18StoryCardMediaView_pageGrid;
  v2 = type metadata accessor for PageGrid();
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  *(v0 + OBJC_IVAR____TtC8AppStore18StoryCardMediaView_sizeCategory) = 7;
  *(v0 + OBJC_IVAR____TtC8AppStore18StoryCardMediaView_originalSizeCategory) = 7;
  *(v0 + OBJC_IVAR____TtC8AppStore18StoryCardMediaView_isTransitioning) = 0;
  *(v0 + OBJC_IVAR____TtC8AppStore18StoryCardMediaView_hasMedia) = 0;
  v3 = OBJC_IVAR____TtC8AppStore18StoryCardMediaView_revealingImageView;
  type metadata accessor for RevealingImageView(0);
  *(v0 + v3) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v4 = OBJC_IVAR____TtC8AppStore18StoryCardMediaView_revealingVideoView;
  type metadata accessor for RevealingVideoView(0);
  *(v0 + v4) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_10070DDA4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_10070DDEC(void (*a1)(uint64_t *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_14;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v6 = 0;
    while ((a3 & 0xC000000000000001) != 0)
    {
      v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v8 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        goto LABEL_12;
      }

LABEL_7:
      v10 = v7;
      a1(&v10);

      if (!v3)
      {
        ++v6;
        if (v8 != i)
        {
          continue;
        }
      }

      return;
    }

    if (v6 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_13;
    }

    v7 = *(a3 + 8 * v6 + 32);

    v8 = v6 + 1;
    if (!__OFADD__(v6, 1))
    {
      goto LABEL_7;
    }

LABEL_12:
    __break(1u);
LABEL_13:
    __break(1u);
LABEL_14:
    ;
  }
}

uint64_t sub_10070DF00(uint64_t a1)
{
  sub_10002849C(&qword_100973210, qword_1007B0BB0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1007B48F0;
  *(v2 + 32) = sub_10070F708();
  *(v2 + 40) = sub_10070E070(a1);
  *(v2 + 48) = sub_10070FB98();
  return v2;
}

void sub_10070DF78(char a1)
{
  byte_100993288 = a1 & 1;
  v1 = [objc_opt_self() sharedCoordinator];
  [v1 notify];
}

void sub_10070E044(uint64_t *a1@<X8>)
{
  v2 = 28271;
  if (*v1)
  {
    v2 = 6710895;
  }

  v3 = 0xE200000000000000;
  if (*v1)
  {
    v3 = 0xE300000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_10070E070(uint64_t a1)
{
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10002849C(&qword_100973210, qword_1007B0BB0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1007B15F0;
  v7 = v6;
  type metadata accessor for ActionDebugSetting();
  v8 = swift_allocObject();
  strcpy((v8 + 56), "Clear Recents");
  *(v8 + 70) = -4864;
  *(v8 + 72) = 0u;
  *(v8 + 88) = 0u;
  *(v8 + 104) = sub_10070E394;
  *(v8 + 112) = 0;
  UUID.init()();
  v9 = UUID.uuidString.getter();
  v11 = v10;
  v12 = *(v3 + 8);
  v27 = v2;
  v28 = v3 + 8;
  v12(v5, v2);
  v13 = v12;
  v29 = v9;
  v30 = v11;
  AnyHashable.init<A>(_:)();
  *(v7 + 32) = v8;
  v14 = v7;
  v15 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v16 = swift_allocObject();
  *(v16 + 16) = v15;
  *(v16 + 24) = a1;
  type metadata accessor for NavigationActionDebugSetting();
  v17 = swift_allocObject();
  strcpy((v17 + 56), "Show Recents");
  *(v17 + 69) = 0;
  *(v17 + 70) = -5120;
  *(v17 + 80) = 0;
  *(v17 + 88) = 0;
  *(v17 + 72) = 0;
  *(v17 + 96) = sub_10071018C;
  *(v17 + 104) = v16;

  UUID.init()();
  v18 = UUID.uuidString.getter();
  v20 = v19;

  v13(v5, v2);
  v29 = v18;
  v30 = v20;
  AnyHashable.init<A>(_:)();

  *(v14 + 40) = v17;
  type metadata accessor for DebugSection();
  v21 = swift_allocObject();
  UUID.init()();
  v22 = UUID.uuidString.getter();
  v24 = v23;
  v13(v5, v27);
  *(v21 + 16) = v22;
  *(v21 + 24) = v24;
  strcpy((v21 + 32), "Search Focus");
  *(v21 + 45) = 0;
  *(v21 + 46) = -5120;
  *(v21 + 48) = v14;
  return v21;
}

void sub_10070E394(__n128 a1)
{
  type metadata accessor for OnDeviceSearchHistoryManager();
  BaseObjectGraph.inject<A>(_:)();
  OnDeviceSearchHistoryManager.clearData()();
}