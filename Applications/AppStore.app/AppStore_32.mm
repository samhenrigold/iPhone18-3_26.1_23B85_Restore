void sub_10038F114(uint64_t a1, double a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    (*((swift_isaMask & *Strong) + 0x1C0))(*&a2, 0);
  }
}

void sub_10038F1B4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    v9 = [a1 viewControllerForKey:UITransitionContextToViewControllerKey];
    if (v9)
    {
      v10 = v9;
      sub_100065AF0();
      v11 = v8;
      v12 = static NSObject.== infix(_:_:)();

      if (v12)
      {
        if ([a1 isCancelled])
        {
          (*(a4 + 8))(a3, a4);
          sub_100041DF8();
        }
      }
    }
  }
}

void sub_10038F2C8(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 40);
  if (v3)
  {
    v4 = *(a2 + 48);

    v3(v5, 1.0, 0.0);
    sub_10001F63C(v3, v4);
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    v8 = [Strong navigationController];

    if (v8)
    {
      v9 = [v8 navigationBar];

      [v9 _setTitleOpacity:1.0];
    }
  }

  *(a2 + 88) = 0;
}

void sub_10038F38C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    if ([a1 isCancelled])
    {
      v9 = [a1 viewControllerForKey:UITransitionContextFromViewControllerKey];
      if (v9)
      {
        v10 = v9;
        sub_100065AF0();
        v11 = v8;
        v12 = static NSObject.== infix(_:_:)();

        if ((v12 & 1) != 0 && sub_10038ED6C())
        {
          (*(a4 + 8))(a3, a4);
          v13 = [v11 collectionView];
          if (!v13)
          {
            __break(1u);
            return;
          }

          v14 = v13;
          sub_1000423A0(v13);
        }
      }
    }
  }
}

void sub_10038F4CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    (*(a4 + 8))(a3, a4);
    v8 = [v7 collectionView];
    if (v8)
    {
      v9 = v8;
      sub_1000423A0(v8);
    }

    else
    {
      __break(1u);
    }
  }
}

unint64_t sub_10038F5D8()
{
  result = qword_100977FD8;
  if (!qword_100977FD8)
  {
    type metadata accessor for UberedPageScrollObserver();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100977FD8);
  }

  return result;
}

double sub_10038F6A8(uint64_t a1)
{
  v2 = type metadata accessor for FloatingPointRoundingRule();
  v132 = *(v2 - 8);
  v133 = v2;
  __chkstk_darwin(v2);
  v128 = v119 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v129 = type metadata accessor for AspectRatio();
  v127 = *(v129 - 8);
  __chkstk_darwin(v129);
  v131 = v119 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10002849C(&qword_100972ED0, &unk_1007B17B0);
  __chkstk_darwin(v5 - 8);
  v7 = v119 - v6;
  v137 = type metadata accessor for PageGrid.Direction();
  v8 = *(v137 - 8);
  __chkstk_darwin(v137);
  *&v135 = v119 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v136 = v119 - v11;
  v12 = type metadata accessor for PageGrid();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = v119 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = v119 - v17;
  __chkstk_darwin(v19);
  v138 = v119 - v20;
  type metadata accessor for Quote();
  sub_100390AFC(&qword_100982690, &type metadata accessor for Quote, &protocol conformance descriptor for Quote);
  ItemLayoutContext.typedModel<A>(as:)();
  v140 = v147;
  if (!v147)
  {
    return 0.0;
  }

  v125 = v7;
  (*(v8 + 104))(v136, enum case for PageGrid.Direction.vertical(_:), v137);
  swift_getKeyPath();
  ItemLayoutContext.subscript.getter();

  PageGrid.containerWidth.getter();
  v21 = *(v13 + 8);
  v21(v18, v12);
  swift_getKeyPath();
  v139 = a1;
  ItemLayoutContext.subscript.getter();

  PageGrid.containerHeight.getter();
  v21(v15, v12);
  swift_getKeyPath();
  ItemLayoutContext.subscript.getter();

  PageGrid.safeAreaInsets.getter();
  v21(v18, v12);
  v23 = v136;
  v22 = v137;
  (*(v8 + 16))(v135, v136, v137);
  sub_10069F96C(0.0);
  PageGrid.init(name:direction:containerSize:readableContentInsets:safeAreaInsets:requiresAdditionalSafeAreaMargins:breakpoints:)();
  (*(v8 + 8))(v23, v22);
  swift_getKeyPath();
  ItemLayoutContext.subscript.getter();

  PageGrid.componentMeasuringSize(spanning:)();
  v136 = v21;
  v137 = v12;
  v21(v18, v12);
  PageGrid.horizontalMargins.getter();
  CGSize.subtracting(insets:)();
  v24._object = 0x80000001007FC650;
  v24._countAndFlagsBits = 0xD000000000000010;
  v25._countAndFlagsBits = 0;
  v25._object = 0xE000000000000000;
  v151 = localizedString(_:comment:)(v24, v25);
  v26 = sub_100072384(v151);
  v27 = v13 + 8;
  if (v26 <= 2)
  {
    v28 = v18;
    if (v26)
    {
      if (v26 == 1)
      {
        if (qword_10096CE98 != -1)
        {
          swift_once();
        }

        v29 = &xmmword_1009CD870;
      }

      else
      {
        if (qword_10096CEA0 != -1)
        {
          swift_once();
        }

        v29 = &xmmword_1009CD8C8;
      }

      goto LABEL_23;
    }

    goto LABEL_17;
  }

  if (v26 - 3 >= 2)
  {
    v28 = v18;
    if (v26 == 5)
    {
      if (qword_10096CEB0 != -1)
      {
        swift_once();
      }

      v29 = &xmmword_1009CD978;
      goto LABEL_23;
    }

LABEL_17:
    if (qword_10096CE90 != -1)
    {
      swift_once();
    }

    v29 = &xmmword_1009CD818;
    goto LABEL_23;
  }

  v28 = v18;
  if (qword_10096CEA8 != -1)
  {
    swift_once();
  }

  v29 = &xmmword_1009CD920;
LABEL_23:
  v31 = v29[3];
  *&v149[32] = v29[4];
  v150 = *(v29 + 10);
  v32 = v29[2];
  *&v149[16] = v31;
  *v149 = v32;
  v33 = *v29;
  v148 = v29[1];
  v147 = v33;
  v35 = *&v149[40];
  v34 = v150;
  v134 = *&v149[8];
  v135 = *&v149[24];
  v37 = *(&v148 + 1);
  v36 = *v149;
  v39 = *(&v33 + 1);
  v38 = v148;
  v40 = v33;
  sub_100072738(&v147, v144);
  v144[0] = __PAIR128__(v39, v40);
  v144[1] = __PAIR128__(v37, v38);
  *&v145[0] = v36;
  *(v145 + 8) = v134;
  *(&v145[1] + 8) = v135;
  *(&v145[2] + 1) = v35;
  v146 = v34;
  *v149 = v145[0];
  v147 = __PAIR128__(v39, v40);
  v148 = __PAIR128__(v37, v38);
  v150 = v34;
  *&v149[16] = v145[1];
  *&v149[32] = v145[2];
  swift_getKeyPath();
  ItemLayoutContext.subscript.getter();

  PageGrid.horizontalMargins.getter();
  (v136)(v28, v137);
  v41 = [objc_allocWithZone(type metadata accessor for QuotesLabel()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *&v135 = sub_1000723D0(&v147);

  Quote.text.getter();
  v43 = v42;
  v44 = sub_100005744(0, &qword_1009730E0, UIFont_ptr);
  if (qword_10096CED0 != -1)
  {
    swift_once();
  }

  v126 = v27;
  *&v134 = type metadata accessor for FontUseCase();
  v45 = sub_1000056A8(v134, qword_1009CD9D0);
  swift_getKeyPath();
  ItemLayoutContext.subscript.getter();

  v46 = v141[0];
  v124 = v45;
  v47 = static UIFont.preferredFont(forUseWith:compatibleWith:)();

  sub_10002849C(&unk_100973960, &unk_1007B4930);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1007B1890;
  *(inited + 32) = NSParagraphStyleAttributeName;
  v49 = qword_10096E898;
  v50 = NSParagraphStyleAttributeName;
  if (v49 != -1)
  {
    swift_once();
  }

  v51 = [qword_1009D2970 paragraphStyleWithBaseWritingDirection:-1];
  v52 = sub_100005744(0, &unk_100993000, NSParagraphStyle_ptr);
  *(inited + 40) = v51;
  *(inited + 64) = v52;
  *(inited + 72) = NSFontAttributeName;
  *(inited + 104) = v44;
  *(inited + 80) = v47;
  v53 = NSFontAttributeName;
  *&v130 = v47;
  sub_100397150(inited);
  swift_setDeallocating();
  sub_10002849C(&unk_100970EC0, &unk_1007B2BF0);
  swift_arrayDestroy();
  v54 = objc_allocWithZone(NSMutableAttributedString);
  v55 = String._bridgeToObjectiveC()();
  type metadata accessor for Key(0);
  sub_100390AFC(&qword_100976620, type metadata accessor for Key, &unk_1007B0934);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v57 = [v54 initWithString:v55 attributes:isa];

  if (v135)
  {
    v123 = v43;
    v58 = v135;
    sub_100397150(_swiftEmptyArrayStorage);
    v59 = v57;
    v60 = objc_allocWithZone(NSAttributedString);
    v61 = String._bridgeToObjectiveC()();
    v62 = Dictionary._bridgeToObjectiveC()().super.isa;

    v63 = [v60 initWithString:v61 attributes:v62];

    [v59 appendAttributedString:v63];
    v64 = [objc_allocWithZone(NSTextAttachment) init];
    [v64 setImage:v58];
    [v58 size];
    [v64 setBounds:{0.0, -v35, v65, v66}];
    v67 = [objc_opt_self() attributedStringWithAttachment:v64];
    [v59 appendAttributedString:v67];

    sub_100072770(v144);
  }

  else
  {

    sub_100072770(v144);
    v59 = v57;
  }

  v68 = v134;
  v69 = *(v134 - 8);
  v70 = v125;
  (*(v69 + 16))(v125, v124, v134);
  (*(v69 + 56))(v70, 0, 1, v68);
  swift_getKeyPath();
  ItemLayoutContext.subscript.getter();

  v71 = type metadata accessor for Feature();
  v142 = v71;
  v122 = sub_100390AFC(&qword_100972E50, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
  v143 = v122;
  v72 = sub_1000056E0(v141);
  v73 = *(v71 - 8);
  v74 = *(v73 + 104);
  v121 = enum case for Feature.measurement_with_labelplaceholder(_:);
  v119[1] = v73 + 104;
  v120 = v74;
  v74(v72);
  isFeatureEnabled(_:)();
  sub_100007000(v141);
  static LabelPlaceholderCompatibility.measurements(attributedText:fontUseCase:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:fitting:in:shouldUseLabelPlaceholder:)();
  v76 = v75;
  v78 = v77;
  v80 = v79;
  swift_unknownObjectRelease();
  sub_10025BAF0(v70);
  if (qword_10096CEE0 != -1)
  {
    swift_once();
  }

  v125 = v59;
  v81 = type metadata accessor for StaticDimension();
  sub_1000056A8(v81, qword_1009CDA00);
  swift_getKeyPath();
  ItemLayoutContext.subscript.getter();

  AnyDimension.topMargin(from:in:)();
  v83 = v82;
  swift_unknownObjectRelease();
  v84 = v76 + v83;
  if (qword_10096CEE8 != -1)
  {
    swift_once();
  }

  sub_1000056A8(v81, qword_1009CDA18);
  swift_getKeyPath();
  ItemLayoutContext.subscript.getter();

  v85 = v141[0];
  v86 = type metadata accessor for TraitEnvironmentPlaceholder();
  sub_10002849C(&qword_100973210, qword_1007B0BB0);
  v87 = swift_allocObject();
  v130 = xmmword_1007B0B70;
  *(v87 + 16) = xmmword_1007B0B70;
  *(v87 + 32) = v85;
  v88 = v85;
  v123 = v86;
  v89 = TraitEnvironmentPlaceholder.__allocating_init(_:)();
  dispatch thunk of AnyDimension.rawValue(in:)();
  v91 = v90;

  v30 = v84 + v91 - v80;
  v124 = [objc_allocWithZone(NSStringDrawingContext) init];
  [v124 setMaximumNumberOfLines:0];
  Quote.credit.getter();
  if (v92)
  {
    if (qword_10096CED8 != -1)
    {
      swift_once();
    }

    sub_1000056A8(v134, qword_1009CD9E8);
    swift_getKeyPath();
    ItemLayoutContext.subscript.getter();

    v142 = v71;
    v143 = v122;
    v93 = sub_1000056E0(v141);
    v120(v93, v121, v71);
    isFeatureEnabled(_:)();
    sub_100007000(v141);
    static LabelPlaceholderCompatibility.measurements(text:fontUseCase:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:fitting:in:shouldUseLabelPlaceholder:)();
    v95 = v94;
    swift_unknownObjectRelease();

    if (qword_10096CEF0 != -1)
    {
      swift_once();
    }

    sub_1000056A8(v81, qword_1009CDA30);
    swift_getKeyPath();
    ItemLayoutContext.subscript.getter();

    v96 = v141[0];
    v97 = swift_allocObject();
    *(v97 + 16) = v130;
    *(v97 + 32) = v96;
    v98 = v96;
    v99 = TraitEnvironmentPlaceholder.__allocating_init(_:)();
    dispatch thunk of AnyDimension.rawValue(in:)();
    v101 = v100;

    v102 = v95 + v101 - v78;
    v103 = v132;
    if (qword_10096CEF8 != -1)
    {
      swift_once();
    }

    sub_1000056A8(v81, qword_1009CDA48);
    swift_getKeyPath();
    ItemLayoutContext.subscript.getter();

    v104 = v141[0];
    v105 = swift_allocObject();
    *(v105 + 16) = v130;
    *(v105 + 32) = v104;
    v106 = v104;
    v107 = TraitEnvironmentPlaceholder.__allocating_init(_:)();
    dispatch thunk of AnyDimension.rawValue(in:)();
    v109 = v108;

    v30 = v30 + v102 + v109 - v80;
    v110 = v133;
  }

  else
  {
    v103 = v132;
    v110 = v133;
  }

  v111 = v131;
  if (Quote.artwork.getter())
  {
    Artwork.size.getter();
    AspectRatio.init(_:_:)();
    AspectRatio.height(fromWidth:)();
    v113 = v112;
    if (qword_10096CF00 != -1)
    {
      swift_once();
    }

    sub_1000056A8(v81, qword_1009CDA60);
    swift_getKeyPath();
    ItemLayoutContext.subscript.getter();

    v114 = v141[0];
    v115 = v128;
    static Dimensions.defaultRoundingRule.getter();
    StaticDimension.value(compatibleWith:rounded:)();
    v117 = v116;

    (*(v103 + 8))(v115, v110);
    (*(v127 + 8))(v111, v129);
    (v136)(v138, v137);
    return v30 + v113 + v117;
  }

  else
  {
    (v136)(v138, v137);
  }

  return v30;
}

uint64_t sub_100390AFC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

char *sub_100390B44(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v34 = a1;
  v35 = a3;
  v6 = type metadata accessor for DirectionalTextAlignment();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10002849C(&qword_100972ED0, &unk_1007B17B0);
  __chkstk_darwin(v10 - 8);
  v12 = &v34 - v11;
  v13 = OBJC_IVAR____TtC8AppStore28AlertActionTrailingImageView_label;
  if (qword_10096DCE0 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for FontUseCase();
  v15 = sub_1000056A8(v14, qword_1009D0638);
  v16 = *(v14 - 8);
  (*(v16 + 16))(v12, v15, v14);
  (*(v16 + 56))(v12, 0, 1, v14);
  (*(v7 + 104))(v9, enum case for DirectionalTextAlignment.none(_:), v6);
  v17 = objc_allocWithZone(type metadata accessor for DynamicTypeLabel());
  *&v4[v13] = DynamicTypeLabel.init(useCase:numberOfLines:lineBreakMode:isUserInteractionEnabled:directionalTextAlignment:contentSizeCategoryMapping:)();
  v18 = OBJC_IVAR____TtC8AppStore28AlertActionTrailingImageView_imageView;
  v19 = objc_allocWithZone(UIImageView);
  *&v4[v18] = [v19 init];
  v20 = type metadata accessor for AlertActionTrailingImageView();
  v36.receiver = v4;
  v36.super_class = v20;
  v21 = objc_msgSendSuper2(&v36, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v22 = OBJC_IVAR____TtC8AppStore28AlertActionTrailingImageView_label;
  v23 = *&v21[OBJC_IVAR____TtC8AppStore28AlertActionTrailingImageView_label];
  v24 = v21;
  v25 = v23;
  if (a2)
  {
    v26 = String._bridgeToObjectiveC()();
  }

  else
  {
    v26 = 0;
  }

  [v23 setText:v26];

  v27 = *&v21[v22];
  v28 = v21;
  v29 = v27;
  v30 = [v28 tintColor];
  [v29 setTextColor:v30];

  [v28 addSubview:*&v21[v22]];
  v31 = OBJC_IVAR____TtC8AppStore28AlertActionTrailingImageView_imageView;
  v32 = v35;
  [*&v28[OBJC_IVAR____TtC8AppStore28AlertActionTrailingImageView_imageView] setImage:v35];
  [v28 addSubview:*&v28[v31]];
  [v28 setLayoutMargins:{10.0, 5.0, 10.0, 5.0}];

  return v28;
}

id sub_100390EFC()
{
  v1 = type metadata accessor for FloatingPointRoundingRule();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v42 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for AlertActionTrailingImageView();
  v43.receiver = v0;
  v43.super_class = v5;
  objc_msgSendSuper2(&v43, "layoutSubviews");
  [v0 bounds];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  [v0 layoutMargins];
  v16 = sub_1000CC354(v7, v9, v11, v13, v14, v15);
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v23 = *&v0[OBJC_IVAR____TtC8AppStore28AlertActionTrailingImageView_imageView];
  v24 = [v23 image];
  v44.origin.x = v16;
  v44.origin.y = v18;
  v44.size.width = v20;
  v44.size.height = v22;
  MaxX = CGRectGetMaxX(v44);
  if (v24)
  {
    [v24 size];
    v45.origin.x = v16;
    v45.origin.y = v18;
    v45.size.width = v20;
    v45.size.height = v22;
    CGRectGetMidY(v45);
    [v24 size];
    (*(v2 + 104))(v4, enum case for FloatingPointRoundingRule.down(_:), v1);
    CGPoint.rounded(_:)();
    v27 = v26;
    v29 = v28;
    (*(v2 + 8))(v4, v1);
    [v24 size];
    v31 = v30;
    v33 = v32;
    CGRect.withLayoutDirection(in:relativeTo:)();
    [v23 setFrame:?];
    v46.origin.x = v27;
    v46.origin.y = v29;
    v46.size.width = v31;
    v46.size.height = v33;
    MinX = CGRectGetMinX(v46);

    MaxX = MinX + -10.0;
  }

  v47.origin.x = v16;
  v47.origin.y = v18;
  v47.size.width = v20;
  v47.size.height = v22;
  v35 = MaxX - CGRectGetMinX(v47);
  if (v35 > 0.0)
  {
    v36 = v35;
  }

  else
  {
    v36 = 0.0;
  }

  v37 = *&v0[OBJC_IVAR____TtC8AppStore28AlertActionTrailingImageView_label];
  v48.origin.x = v16;
  v48.origin.y = v18;
  v48.size.width = v20;
  v48.size.height = v22;
  [v37 sizeThatFits:{v36, CGRectGetHeight(v48)}];
  v42[1] = v38;
  v39 = [v23 image];
  if (v39)
  {
    v40 = v39;
    [v39 size];
  }

  v49.origin.x = v16;
  v49.origin.y = v18;
  v49.size.width = v20;
  v49.size.height = v22;
  CGRectGetMidX(v49);
  v50.origin.x = v16;
  v50.origin.y = v18;
  v50.size.width = v20;
  v50.size.height = v22;
  CGRectGetMidY(v50);
  CGRect.withLayoutDirection(in:relativeTo:)();
  return [v37 setFrame:?];
}

double sub_100391488(double a1)
{
  v3 = [*&v1[OBJC_IVAR____TtC8AppStore28AlertActionTrailingImageView_imageView] image];
  v4 = 0.0;
  if (v3)
  {
    v5 = v3;
    [v3 size];
    v4 = v6;
  }

  v7 = 10.0;
  if (v4 <= 0.0)
  {
    v7 = 0.0;
  }

  v8 = a1 - v4 - v7;
  if (v8 > 0.0)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0.0;
  }

  v10 = *&v1[OBJC_IVAR____TtC8AppStore28AlertActionTrailingImageView_label];
  type metadata accessor for AlertActionTrailingImageView();
  LayoutMarginsAware<>.layoutFrame.getter();
  [v10 sizeThatFits:{v9, CGRectGetHeight(v12)}];
  [v1 layoutMargins];
  [v1 layoutMargins];
  return a1;
}

id sub_10039160C(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for AlertActionTrailingImageView();
  return objc_msgSendSuper2(&v3, "dealloc");
}

void sub_1003916B0()
{
  v1 = v0;
  v2 = type metadata accessor for DirectionalTextAlignment();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10002849C(&qword_100972ED0, &unk_1007B17B0);
  __chkstk_darwin(v6 - 8);
  v8 = &v15 - v7;
  v9 = OBJC_IVAR____TtC8AppStore28AlertActionTrailingImageView_label;
  if (qword_10096DCE0 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for FontUseCase();
  v11 = sub_1000056A8(v10, qword_1009D0638);
  v12 = *(v10 - 8);
  (*(v12 + 16))(v8, v11, v10);
  (*(v12 + 56))(v8, 0, 1, v10);
  (*(v3 + 104))(v5, enum case for DirectionalTextAlignment.none(_:), v2);
  v13 = objc_allocWithZone(type metadata accessor for DynamicTypeLabel());
  *(v1 + v9) = DynamicTypeLabel.init(useCase:numberOfLines:lineBreakMode:isUserInteractionEnabled:directionalTextAlignment:contentSizeCategoryMapping:)();
  v14 = OBJC_IVAR____TtC8AppStore28AlertActionTrailingImageView_imageView;
  *(v1 + v14) = [objc_allocWithZone(UIImageView) init];
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

id sub_100391920()
{
  v7.receiver = v0;
  v7.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v7, "prepareForReuse");
  v1 = *&v0[OBJC_IVAR____TtC8AppStore33PrivacyCategoryCollectionViewCell_privacyCategoryView];
  v2 = OBJC_IVAR____TtC8AppStore19PrivacyCategoryView_category;
  *(v1 + OBJC_IVAR____TtC8AppStore19PrivacyCategoryView_category) = 0;

  sub_100378DCC(v3);
  v8.value.super.isa = 0;
  v8.is_nil = 0;
  ArtworkView.setImage(image:animated:)(v8, v4);
  *&v0[OBJC_IVAR____TtC8AppStore33PrivacyCategoryCollectionViewCell_privacyCategory] = 0;

  *(v1 + v2) = 0;

  sub_100378DCC(v5);
  return [v0 setNeedsLayout];
}

uint64_t type metadata accessor for PrivacyCategoryCollectionViewCell(uint64_t a1)
{
  result = qword_100982700;
  if (!qword_100982700)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100391CD0(uint64_t a1)
{
  sub_100027FAC(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

char *sub_100391D78()
{
  ObjectType = swift_getObjectType();
  v2 = OBJC_IVAR____TtC8AppStore33PrivacyCategoryCollectionViewCell_privacyCategoryView;
  *&v0[v2] = [objc_allocWithZone(type metadata accessor for PrivacyCategoryView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v3 = OBJC_IVAR____TtC8AppStore33PrivacyCategoryCollectionViewCell_itemLayoutContext;
  v4 = type metadata accessor for ItemLayoutContext();
  (*(*(v4 - 8) + 56))(&v0[v3], 1, 1, v4);
  *&v0[OBJC_IVAR____TtC8AppStore33PrivacyCategoryCollectionViewCell_privacyCategory] = 0;
  v12.receiver = v0;
  v12.super_class = ObjectType;
  v5 = objc_msgSendSuper2(&v12, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v6 = [v5 contentView];
  [v6 setClipsToBounds:0];

  v7 = [v5 contentView];
  [v7 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];

  v8 = [v5 contentView];
  sub_100028BB8();
  v9 = static UIColor.defaultBackground.getter();
  [v8 setBackgroundColor:v9];

  v10 = [v5 contentView];
  [v10 addSubview:*&v5[OBJC_IVAR____TtC8AppStore33PrivacyCategoryCollectionViewCell_privacyCategoryView]];

  return v5;
}

void sub_100391FA8()
{
  v1 = type metadata accessor for PageGrid();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v35 = &v27[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = sub_10002849C(&qword_100980638, &qword_1007C7640);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v27[-v6];
  type metadata accessor for Paragraph();
  sub_100392470(&qword_1009805D8, &type metadata accessor for Paragraph, &protocol conformance descriptor for Paragraph);
  ItemLayoutContext.typedModel<A>(as:)();
  if (aBlock[0])
  {
    sub_100135E04();
    ItemLayoutContext.typedState<A>(as:)();
    StateLens<A>.currentValue.getter();
    v33 = v4;
    v34 = v0;
    v31 = v7;
    v32 = v5;
    v29 = v2;
    v30 = v1;
    if (LOBYTE(aBlock[0]) == 2)
    {
      v28 = Paragraph.isCollapsed.getter();
    }

    else
    {
      v28 = LOBYTE(aBlock[0]);
    }

    v8 = Paragraph.text.getter();
    swift_getKeyPath();
    ItemLayoutContext.subscript.getter();

    v9 = aBlock[6];
    v10 = [objc_allocWithZone(NSMutableAttributedString) initWithAttributedString:v8];
    v11 = [v8 length];
    v12 = swift_allocObject();
    *(v12 + 16) = 0;
    *(v12 + 24) = v9;
    *(v12 + 32) = v10;
    *(v12 + 40) = 1;
    v13 = swift_allocObject();
    *(v13 + 16) = sub_10010279C;
    *(v13 + 24) = v12;
    aBlock[4] = sub_1001027AC;
    aBlock[5] = v13;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1006606C4;
    aBlock[3] = &unk_1008C04F0;
    v14 = _Block_copy(aBlock);
    v15 = v9;
    v16 = v10;

    [v8 enumerateAttributesInRange:0 options:v11 usingBlock:{0x100000, v14}];

    _Block_release(v14);
    LOBYTE(v14) = swift_isEscapingClosureAtFileLocation();

    if (v14)
    {
      __break(1u);
    }

    else
    {
      left = UIEdgeInsetsZero.left;
      bottom = UIEdgeInsetsZero.bottom;
      right = UIEdgeInsetsZero.right;
      swift_getKeyPath();
      v20 = v16;
      v21 = v35;
      ItemLayoutContext.subscript.getter();

      PageGrid.componentMeasuringSize(spanning:)();
      v23 = v22;
      v25 = v24;
      (*(v29 + 8))(v21, v30);
      v26 = sub_100079F24();
      swift_getObjectType();
      sub_100766148(v16, v28 & 1, v26, UIEdgeInsetsZero.top, left, bottom, right, v23, v25);

      swift_unknownObjectRelease();

      (*(v32 + 8))(v31, v33);
    }
  }
}

uint64_t sub_100392470(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

double sub_100392504()
{
  v0 = type metadata accessor for PageGrid();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v17 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for LabelPlaceholderCompatibility();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for PreorderDisclaimer();
  sub_100392918(&qword_100979E10, &type metadata accessor for PreorderDisclaimer, &protocol conformance descriptor for PreorderDisclaimer);
  ItemLayoutContext.typedModel<A>(as:)();
  if (!v20[0])
  {
    return 0.0;
  }

  v18 = v0;
  v19 = v5;
  v8 = PreorderDisclaimer.disclaimer.getter();
  v17[1] = v9;
  v17[2] = v8;
  sub_1000367E8();
  if (qword_10096DF98 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for FontUseCase();
  sub_1000056A8(v10, qword_1009D0E48);
  swift_getKeyPath();
  ItemLayoutContext.subscript.getter();

  v11 = v20[0];
  static UIFont.preferredFont(forUseWith:compatibleWith:)();

  v12 = type metadata accessor for Feature();
  v20[3] = v12;
  v20[4] = sub_100392918(&qword_100972E50, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
  v13 = sub_1000056E0(v20);
  (*(*(v12 - 8) + 104))(v13, enum case for Feature.measurement_with_labelplaceholder(_:), v12);
  isFeatureEnabled(_:)();
  sub_100007000(v20);
  LabelPlaceholderCompatibility.init(text:font:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:shouldUseLabelPlaceholder:)();
  swift_getKeyPath();
  ItemLayoutContext.subscript.getter();

  PageGrid.componentMeasuringSize(spanning:)();
  (*(v1 + 8))(v3, v18);
  swift_getKeyPath();
  ItemLayoutContext.subscript.getter();

  sub_100392918(qword_100982720, &type metadata accessor for LabelPlaceholderCompatibility, &protocol conformance descriptor for LabelPlaceholderCompatibility);
  dispatch thunk of Measurable.measurements(fitting:in:)();
  v15 = v14;
  swift_unknownObjectRelease();

  (*(v19 + 8))(v7, v4);
  return v15;
}

uint64_t sub_100392918(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_100392960(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for Artwork.Style();
  __chkstk_darwin(v5 - 8);
  v6 = type metadata accessor for Artwork.Crop();
  v22 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for SmallLockupLayout.Metrics();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 && a2)
  {
    v13 = *(v2 + OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_lockupView);
    v14 = OBJC_IVAR____TtC8AppStore15SmallLockupView_metrics;
    swift_beginAccess();
    (*(v10 + 16))(v12, v13 + v14, v9);
    v21[1] = a2;

    SmallLockupLayout.Metrics.artworkSize.getter();
    (*(v10 + 8))(v12, v9);
    Artwork.crop.getter();
    Artwork.Crop.preferredContentMode.getter();
    v22 = *(v22 + 8);
    (v22)(v8, v6);
    Artwork.config(_:mode:prefersLayeredImage:)();
    v15 = OBJC_IVAR____TtC8AppStore14BaseLockupView_artworkView;
    v16 = *(v13 + OBJC_IVAR____TtC8AppStore14BaseLockupView_artworkView);
    Artwork.style.getter();
    ArtworkView.style.setter();
    [v16 setContentMode:Artwork.contentMode.getter()];
    ArtworkLoaderConfig.size.getter();
    ArtworkView.imageSize.setter();
    if (!Artwork.backgroundColor.getter())
    {
      sub_100028BB8();
      static UIColor.placeholderBackground.getter();
    }

    ArtworkView.backgroundColor.setter();

    v17 = *(v13 + v15);
    Artwork.crop.getter();
    v18 = Artwork.Crop.preferredContentMode.getter();
    (v22)(v8, v6);
    [v17 setContentMode:v18];

    v19 = *(v13 + v15);
    type metadata accessor for ArtworkView();
    sub_100393EC4(&qword_100970E80, &type metadata accessor for ArtworkView, &protocol conformance descriptor for ArtworkView);
    v20 = v19;
    ArtworkLoader.fetchArtwork<A>(using:closestMatch:into:)();
  }
}

double sub_100392D28(uint64_t a1, int a2, uint64_t a3)
{
  v4 = v3;
  v116 = a2;
  v7 = type metadata accessor for MetricsPipeline();
  v126 = *(v7 - 8);
  v127 = v7;
  __chkstk_darwin(v7);
  v125 = &v110 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10002849C(&qword_100972ED0, &unk_1007B17B0);
  __chkstk_darwin(v9 - 8);
  v123 = &v110 - v10;
  v11 = sub_10002849C(&unk_100973AD0, &unk_1007B17C0);
  __chkstk_darwin(v11 - 8);
  v121 = &v110 - v12;
  v13 = sub_10002849C(&unk_100970E00, "ο\a");
  __chkstk_darwin(v13 - 8);
  v120 = &v110 - v14;
  v119 = type metadata accessor for OfferButtonSubtitlePosition();
  v117 = *(v119 - 8);
  __chkstk_darwin(v119);
  v118 = &v110 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_10002849C(&unk_100970150, &unk_1007BDDD0);
  __chkstk_darwin(v16 - 8);
  v122 = &v110 - v17;
  v18 = sub_10002849C(&unk_100970160, &unk_1007BDDE0);
  __chkstk_darwin(v18 - 8);
  v115 = &v110 - v19;
  v20 = sub_10002849C(&qword_100973AE0, &unk_1007B17D0);
  __chkstk_darwin(v20 - 8);
  v114 = &v110 - v21;
  v22 = sub_10002849C(&unk_100970170, &unk_1007BDDF0);
  __chkstk_darwin(v22 - 8);
  v113 = &v110 - v23;
  v24 = type metadata accessor for OfferButtonPresenterViewAlignment();
  v25 = *(v24 - 8);
  __chkstk_darwin(v24);
  v112 = &v110 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_10002849C(&unk_100973230, &unk_1007B17E0);
  __chkstk_darwin(v27 - 8);
  v111 = &v110 - v28;
  v29 = AppEvent.formattedDates.getter();
  v30 = *&v3[OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_formattedDateView];
  type metadata accessor for AppEventFormattedDatePresenter(0);
  swift_allocObject();
  v31 = v30;
  v32 = sub_1006E6CE8(v29, v30, &off_1008BC738);

  v33 = OBJC_IVAR____TtC8AppStore29AppPromotionFormattedDateView_appEventFormattedDatePresenter;
  swift_beginAccess();
  *&v31[v33] = v32;

  [v4 setNeedsLayout];
  v34 = AppEvent.kind.getter();
  sub_100352158(v34, v35);
  v36 = AppEvent.title.getter();
  sub_100352164(v36, v37);
  v38 = AppEvent.detail.getter();
  sub_100352170(v38, v39);
  v40 = AppEvent.requirements.getter();
  sub_10035217C(v40, v41);
  type metadata accessor for AppEventLiveIndicatorAnimationCoordinator();
  v129 = a3;
  BaseObjectGraph.optional<A>(_:)();
  v42 = v131;
  v43 = OBJC_IVAR____TtC8AppStore29AppPromotionFormattedDateView_liveIndicatorAnimationCoordinator;
  v44 = *&v31[OBJC_IVAR____TtC8AppStore29AppPromotionFormattedDateView_liveIndicatorAnimationCoordinator];
  v45 = v44;
  sub_1002C55E4(v42);
  v46 = *&v31[v43];
  *&v31[v43] = v42;
  v47 = v42;

  sub_1002C5748(v44);
  v48 = v4;

  AppEvent.lockup.getter();
  v49 = dispatch thunk of Lockup.artwork.getter();

  sub_100352DC4(v49);
  v50 = *&v4[OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_lockupView];
  v124 = a1;
  v128 = AppEvent.lockup.getter();
  v51 = *(v25 + 104);
  v51(v112, enum case for OfferButtonPresenterViewAlignment.right(_:), v24);
  v52 = v113;
  v51(v113, enum case for OfferButtonPresenterViewAlignment.left(_:), v24);
  v53 = v111;
  (*(v25 + 56))(v52, 0, 1, v24);
  sub_100393EC4(&unk_100970190, &type metadata accessor for OfferButtonPresenterViewAlignment, &protocol conformance descriptor for OfferButtonPresenterViewAlignment);
  AccessibilityConditional.init(value:axValue:)();
  v54 = sub_10002849C(&unk_100973240, qword_1007B2220);
  (*(*(v54 - 8) + 56))(v53, 0, 1, v54);
  if (v116)
  {
    v55 = enum case for OfferStyle.infer(_:);
    v56 = type metadata accessor for OfferStyle();
    v57 = *(v56 - 8);
    v58 = v114;
    (*(v57 + 104))(v114, v55, v56);
    (*(v57 + 56))(v58, 0, 1, v56);
    v59 = enum case for OfferEnvironment.light(_:);
    v60 = type metadata accessor for OfferEnvironment();
    v61 = *(v60 - 8);
    v62 = v115;
    (*(v61 + 104))(v115, v59, v60);
    (*(v61 + 56))(v62, 0, 1, v60);
  }

  else
  {
    v63 = type metadata accessor for OfferStyle();
    v58 = v114;
    (*(*(v63 - 8) + 56))(v114, 1, 1, v63);
    v64 = type metadata accessor for OfferEnvironment();
    v62 = v115;
    (*(*(v64 - 8) + 56))(v115, 1, 1, v64);
  }

  v65 = v117;
  v66 = v119;
  (*(v117 + 104))(v118, enum case for OfferButtonSubtitlePosition.below(_:), v119);
  (*(v65 + 56))(v120, 1, 1, v66);
  sub_100393EC4(&qword_100987130, &type metadata accessor for OfferButtonSubtitlePosition, &protocol conformance descriptor for OfferButtonSubtitlePosition);
  v67 = v122;
  AccessibilityConditional.init(value:axValue:)();
  v68 = sub_10002849C(&unk_1009701A0, &unk_1007B17F0);
  (*(*(v68 - 8) + 56))(v67, 0, 1, v68);
  v69 = type metadata accessor for OfferTint();
  v70 = v121;
  (*(*(v69 - 8) + 56))(v121, 1, 1, v69);
  sub_1004F3190(v128, v50, v53, v129, 0, 0, v58, v62, v70, v67);
  sub_10002B894(v70, &unk_100973AD0, &unk_1007B17C0);
  v50[OBJC_IVAR____TtC8AppStore15SmallLockupView_enforceMaximumOfTwoLinesOverall] = 1;
  sub_10070AB34();
  [v50 setNeedsLayout];
  v71 = OBJC_IVAR____TtC8AppStore14BaseLockupView_tertiaryTitleLabel;
  v72 = *&v50[OBJC_IVAR____TtC8AppStore14BaseLockupView_tertiaryTitleLabel];
  if (v72)
  {
    [v72 setHidden:1];
    v73 = *&v50[v71];
    if (v73)
    {
      [v73 setText:0];
    }
  }

  v74 = OBJC_IVAR____TtC8AppStore14BaseLockupView_headingLabel;
  v75 = *&v50[OBJC_IVAR____TtC8AppStore14BaseLockupView_headingLabel];
  if (v75)
  {
    if (([v75 isHidden] & 1) == 0)
    {
      v76 = *&v50[v74];
      if (v76)
      {
        if ([v76 hasContent])
        {
          v77 = v53;
          v78 = OBJC_IVAR____TtC8AppStore14BaseLockupView_subtitleLabel;
          [*&v50[OBJC_IVAR____TtC8AppStore14BaseLockupView_subtitleLabel] setHidden:1];
          v79 = *&v50[v78];
          v53 = v77;
          [v79 setText:0];
        }
      }
    }
  }

  v80 = OBJC_IVAR____TtC8AppStore14BaseLockupView_offerLabel;
  if ([*&v50[OBJC_IVAR____TtC8AppStore14BaseLockupView_offerLabel] isHidden] & 1) == 0 && (objc_msgSend(*&v50[v80], "hasContent"))
  {
    v81 = *&v50[v74];
    if (v81)
    {
      [v81 setHidden:1];
      v82 = *&v50[v74];
      if (v82)
      {
        [v82 setText:0];
      }
    }

    v83 = OBJC_IVAR____TtC8AppStore14BaseLockupView_subtitleLabel;
    [*&v50[OBJC_IVAR____TtC8AppStore14BaseLockupView_subtitleLabel] setHidden:1];
    [*&v50[v83] setText:0];
  }

  sub_10002B894(v67, &unk_100970150, &unk_1007BDDD0);
  sub_10002B894(v62, &unk_100970160, &unk_1007BDDE0);
  sub_10002B894(v58, &qword_100973AE0, &unk_1007B17D0);
  sub_10002B894(v53, &unk_100973230, &unk_1007B17E0);
  v84 = *&v50[v74];
  v85 = v123;
  if (v84)
  {
    v86 = qword_10096DD98;
    v87 = v84;
    if (v86 != -1)
    {
      swift_once();
    }

    v88 = type metadata accessor for FontUseCase();
    v89 = sub_1000056A8(v88, qword_1009D0860);
    v90 = *(v88 - 8);
    (*(v90 + 16))(v85, v89, v88);
    (*(v90 + 56))(v85, 0, 1, v88);
    dispatch thunk of DynamicTypeLabel.fontUseCase.setter();
  }

  v91 = *&v50[v71];
  if (v91)
  {
    v92 = qword_10096DDB0;
    v93 = v91;
    if (v92 != -1)
    {
      swift_once();
    }

    v94 = type metadata accessor for FontUseCase();
    v95 = sub_1000056A8(v94, qword_1009D08A8);
    v96 = *(v94 - 8);
    (*(v96 + 16))(v85, v95, v94);
    (*(v96 + 56))(v85, 0, 1, v94);
    dispatch thunk of DynamicTypeLabel.fontUseCase.setter();
  }

  type metadata accessor for UserNotificationsManager();
  type metadata accessor for BaseObjectGraph();
  v97 = v129;
  inject<A, B>(_:from:)();
  v98 = v131;

  v99 = AppEvent.notificationConfig.getter();
  type metadata accessor for NotifyMeButtonPresenter(0);
  v100 = swift_allocObject();
  v101 = v100 + OBJC_IVAR____TtC8AppStore23NotifyMeButtonPresenter_view;
  *(v100 + OBJC_IVAR____TtC8AppStore23NotifyMeButtonPresenter_view + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v100 + OBJC_IVAR____TtC8AppStore23NotifyMeButtonPresenter_displayTimeReachedTimer) = 0;
  *(v100 + OBJC_IVAR____TtC8AppStore23NotifyMeButtonPresenter_isSchedulingNotification) = 0;
  swift_beginAccess();
  *(v101 + 8) = &off_1008BF018;
  swift_unknownObjectWeakAssign();
  *(v100 + 16) = v98;
  *(v100 + 24) = v99;

  v128 = v48;

  v102 = v125;
  v103 = v127;
  inject<A, B>(_:from:)();
  (*(v126 + 32))(v100 + OBJC_IVAR____TtC8AppStore23NotifyMeButtonPresenter_metricsPipeline, v102, v103);
  *(v100 + OBJC_IVAR____TtC8AppStore23NotifyMeButtonPresenter_objectGraph) = v97;
  type metadata accessor for ASKBagContract();

  inject<A, B>(_:from:)();
  *(v100 + OBJC_IVAR____TtC8AppStore23NotifyMeButtonPresenter_bag) = v130;
  sub_10034B790();
  sub_10034C234();
  v104 = objc_opt_self();
  v105 = [v104 defaultCenter];

  v106 = static UserNotificationsManager.userNotificationsDidChangeNotification.getter();
  [v105 addObserver:v100 selector:"userNotificationsDidChangeNotification:" name:v106 object:0];

  v107 = [v104 defaultCenter];
  [v107 addObserver:v100 selector:"appEnteredWhileAppeared" name:UIApplicationDidBecomeActiveNotification object:0];

  v108 = [v104 defaultCenter];
  [v108 addObserver:v100 selector:"appExitedWhileAppeared" name:UIApplicationDidEnterBackgroundNotification object:0];

  sub_100355BC0(v100);

  return result;
}

uint64_t sub_100393D80(uint64_t a1, uint64_t a2)
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

uint64_t sub_100393EC4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

double sub_100393F0C()
{
  v0 = type metadata accessor for ShelfLayoutContext();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  ItemLayoutContext.parentShelfLayoutContext.getter();
  v4 = sub_100393FEC();
  (*(v1 + 8))(v3, v0);
  return v4;
}

double sub_100393FEC()
{
  v0 = type metadata accessor for Shelf.PresentationHints();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v18 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v18 - v5;
  v7 = type metadata accessor for PageGrid();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  ShelfLayoutContext.contentPageGrid.getter();
  PageGrid.componentMeasuringSize(spanning:)();
  (*(v8 + 8))(v10, v7);
  ShelfLayoutContext.shelfPresentationHints.getter();
  static Shelf.PresentationHints.showSupplementaryText.getter();
  sub_100394310(&unk_100970E20, &type metadata accessor for Shelf.PresentationHints, &protocol conformance descriptor for Shelf.PresentationHints);
  v11 = dispatch thunk of SetAlgebra.isSuperset(of:)();
  v12 = *(v1 + 8);
  v12(v3, v0);
  v12(v6, v0);
  if (v11)
  {
    if (qword_10096D058 != -1)
    {
      swift_once();
    }

    v13 = qword_1009CDFB0;
  }

  else
  {
    if (qword_10096D060 != -1)
    {
      swift_once();
    }

    v13 = qword_1009CDFC8;
  }

  v14 = type metadata accessor for BrickLayout.Metrics();
  sub_1000056A8(v14, v13);
  ShelfLayoutContext.traitEnvironment.getter();
  type metadata accessor for BrickLayout();
  sub_100394310(&qword_1009739B0, &type metadata accessor for BrickLayout, &protocol conformance descriptor for BrickLayout);
  dispatch thunk of static EstimatedMeasurable.estimatedMeasurements(fitting:using:in:)();
  v16 = v15;
  swift_unknownObjectRelease();
  return v16;
}

uint64_t sub_100394310(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_10039435C(uint64_t a1)
{
  v2 = *(a1 + 16);
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

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= v3[3] >> 1)
  {
    if (*(a1 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  v3 = sub_100033260(isUniquelyReferenced_nonNull_native, v11, 1, v3);
  if (!*(a1 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((v3[3] >> 1) - v3[2] < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  sub_10002849C(&qword_10096FD60, &qword_1007B13D0);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return;
  }

  v8 = v3[2];
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    v3[2] = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
}

void sub_100394464(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *v1;
  v4 = *(*v1 + 2);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= *(v3 + 3) >> 1)
  {
    if (*(a1 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  v3 = sub_10003356C(isUniquelyReferenced_nonNull_native, v12, 1, v3);
  if (!*(a1 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = *(v3 + 2);
  if ((*(v3 + 3) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy(&v3[8 * v8 + 32], (a1 + 32), 8 * v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return;
  }

  v9 = *(v3 + 2);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 2) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
}

void sub_1003945DC(uint64_t a1)
{
  v2 = *(a1 + 16);
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

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= v3[3] >> 1)
  {
    if (*(a1 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  v3 = sub_100034048(isUniquelyReferenced_nonNull_native, v11, 1, v3);
  if (!*(a1 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((v3[3] >> 1) - v3[2] < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  sub_10002849C(&qword_10096FCA0, &unk_1007C5080);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return;
  }

  v8 = v3[2];
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    v3[2] = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
}

void sub_100394710(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *v1;
  v4 = *(*v1 + 2);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= *(v3 + 3) >> 1)
  {
    if (*(a1 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  v3 = sub_100034618(isUniquelyReferenced_nonNull_native, v11, 1, v3);
  if (!*(a1 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 3) >> 1) - *(v3 + 2) < v2)
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
    return;
  }

  v8 = *(v3 + 2);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 2) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
}

void sub_100394830(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(void))
{
  v4 = *(a1 + 16);
  v5 = *v3;
  v6 = *(*v3 + 16);
  if (__OFADD__(v6, v4))
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (swift_isUniquelyReferenced_nonNull_native() && v6 + v4 <= *(v5 + 24) >> 1)
  {
    if (*(a1 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

  v5 = a2();
  if (!*(a1 + 16))
  {
LABEL_10:

    if (!v4)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_5:
  v10 = (*(v5 + 24) >> 1) - *(v5 + 16);
  a3(0);
  if (v10 < v4)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  swift_arrayInitWithCopy();

  if (!v4)
  {
LABEL_11:
    *v3 = v5;
    return;
  }

  v11 = *(v5 + 16);
  v12 = __OFADD__(v11, v4);
  v13 = v11 + v4;
  if (!v12)
  {
    *(v5 + 16) = v13;
    goto LABEL_11;
  }

LABEL_15:
  __break(1u);
}

void sub_1003949BC(uint64_t a1)
{
  v2 = *(a1 + 16);
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

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= v3[3] >> 1)
  {
    if (*(a1 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  v3 = sub_1000344E4(isUniquelyReferenced_nonNull_native, v11, 1, v3);
  if (!*(a1 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((v3[3] >> 1) - v3[2] < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  sub_10002849C(&unk_100984350, &unk_1007B47A0);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return;
  }

  v8 = v3[2];
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    v3[2] = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
}

void sub_100394AC0(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *v1;
  v4 = *(*v1 + 2);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= *(v3 + 3) >> 1)
  {
    if (*(a1 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  v3 = sub_100034AAC(isUniquelyReferenced_nonNull_native, v11, 1, v3);
  if (!*(a1 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 3) >> 1) - *(v3 + 2) < v2)
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
    return;
  }

  v8 = *(v3 + 2);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 2) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
}

void sub_100394C00(unint64_t a1, uint64_t (*a2)(uint64_t, void, uint64_t), __n128 a3)
{
  if (a1 >> 62)
  {
    v6 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v6 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!(*v3 >> 62))
  {
    v7 = *((*v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v8 = __OFADD__(v7, v6);
    v9 = v7 + v6;
    if (!v8)
    {
      goto LABEL_5;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v16 = _CocoaArrayWrapper.endIndex.getter();
  v8 = __OFADD__(v16, v6);
  v9 = v16 + v6;
  if (v8)
  {
    goto LABEL_13;
  }

LABEL_5:
  sub_100395854(v9, 1, a3);
  v10 = *v3;
  v11 = *v3 & 0xFFFFFFFFFFFFFF8;
  a2(v11 + 8 * *(v11 + 0x10) + 32, (*(v11 + 0x18) >> 1) - *(v11 + 0x10), a1);
  v13 = v12;

  if (v13 < v6)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v13 < 1)
  {
LABEL_9:
    *v3 = v10;
    return;
  }

  v14 = *(v11 + 16);
  v8 = __OFADD__(v14, v13);
  v15 = v14 + v13;
  if (!v8)
  {
    *(v11 + 16) = v15;
    goto LABEL_9;
  }

LABEL_15:
  __break(1u);
}

void sub_100394CF8(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = a4 >> 1;
  v6 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
    goto LABEL_18;
  }

  v7 = *v4;
  v8 = *(*v4 + 16);
  v9 = v8 + v6;
  if (__OFADD__(v8, v6))
  {
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native)
  {
    goto LABEL_8;
  }

  v13 = *(v7 + 24) >> 1;
  if (v13 < v9)
  {
    goto LABEL_8;
  }

  if (v5 == a3)
  {
    while (v6 > 0)
    {
      __break(1u);
LABEL_8:
      if (v8 <= v9)
      {
        v14 = v8 + v6;
      }

      else
      {
        v14 = v8;
      }

      isUniquelyReferenced_nonNull_native = sub_100035300(isUniquelyReferenced_nonNull_native, v14, 1, v7);
      v7 = isUniquelyReferenced_nonNull_native;
      v13 = *(isUniquelyReferenced_nonNull_native + 24) >> 1;
      if (v5 != a3)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_16;
  }

LABEL_12:
  v15 = *(v7 + 16);
  if (v13 - v15 < v6)
  {
    goto LABEL_19;
  }

  memcpy((v7 + 16 * v15 + 32), (a2 + 16 * a3), 16 * v6);
  if (v6 <= 0)
  {
LABEL_16:
    swift_unknownObjectRelease();
    *v4 = v7;
    return;
  }

  v16 = *(v7 + 16);
  v17 = __OFADD__(v16, v6);
  v18 = v16 + v6;
  if (!v17)
  {
    *(v7 + 16) = v18;
    goto LABEL_16;
  }

LABEL_20:
  __break(1u);
}

Swift::Int TodayCardTitleBackingGradient.Style.hashValue.getter(char a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1 & 1);
  return Hasher._finalize()();
}

id static TodayCardTitleBackingGradient.make(from:)(void *a1)
{
  v2 = [objc_allocWithZone(CAGradientLayer) init];
  v3 = [a1 locations];
  [v2 setLocations:v3];

  [a1 startPoint];
  [v2 setStartPoint:?];
  [a1 endPoint];
  [v2 setEndPoint:?];
  v4 = [a1 type];
  [v2 setType:v4];

  v5 = [a1 colors];
  [v2 setColors:v5];

  v6 = v2;
  v7 = [a1 filters];
  [v6 setFilters:v7];

  return v6;
}

id static TodayCardTitleBackingGradient.make(using:)(uint64_t a1)
{
  v2 = type metadata accessor for TodayCard.Style();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, a1, v2, v4);
  v7 = (*(v3 + 88))(v6, v2);
  if (v7 == enum case for TodayCard.Style.automatic(_:) || v7 == enum case for TodayCard.Style.white(_:))
  {
LABEL_8:
    v9 = 0;
    goto LABEL_9;
  }

  if (v7 != enum case for TodayCard.Style.dark(_:))
  {
    if (v7 != enum case for TodayCard.Style.light(_:))
    {
      v45 = 0;
      v46 = 0xE000000000000000;
      _StringGuts.grow(_:)(44);

      v45 = 0xD00000000000002ALL;
      v46 = 0x80000001007FFFC0;
      v40._countAndFlagsBits = TodayCard.Style.rawValue.getter();
      String.append(_:)(v40);

      result = _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
      return result;
    }

    goto LABEL_8;
  }

  v9 = 1;
LABEL_9:
  v10 = [objc_allocWithZone(CAGradientLayer) init];
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (v9)
  {
    v11 = [objc_opt_self() blackColor];
    v12 = [v11 colorWithAlphaComponent:0.32];
  }

  else
  {
    v12 = [objc_allocWithZone(UIColor) initWithWhite:1.0 alpha:0.32];
  }

  v13 = [v12 CGColor];

  sub_10002849C(&qword_100973210, qword_1007B0BB0);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1007BB060;
  sub_100005744(0, &qword_10097FB80, NSNumber_ptr);
  v15 = v13;
  *(v14 + 32) = NSNumber.init(integerLiteral:)(0);
  *(v14 + 40) = NSNumber.init(floatLiteral:)(0.3);
  *(v14 + 48) = NSNumber.init(floatLiteral:)(0.7);
  *(v14 + 56) = NSNumber.init(floatLiteral:)(1.0);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v10 setLocations:isa];

  [v10 setStartPoint:{0.5, 0.0}];
  [v10 setEndPoint:{0.5, 1.0}];
  [v10 setType:kCAGradientLayerAxial];
  v17 = [objc_opt_self() clearColor];
  v18 = [v17 CGColor];

  sub_10002849C(&qword_1009701B0, qword_1007B1800);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_1007B5350;
  type metadata accessor for CGColor(0);
  *(v19 + 32) = v18;
  *(v19 + 56) = v20;
  *(v19 + 64) = v15;
  *(v19 + 88) = v20;
  *(v19 + 96) = v15;
  *(v19 + 152) = v20;
  *(v19 + 120) = v20;
  *(v19 + 128) = v18;
  v21 = v18;
  v44 = v15;
  v43 = v21;
  v22 = Array._bridgeToObjectiveC()().super.isa;

  [v10 setColors:v22];

  v23 = objc_allocWithZone(CAFilter);
  v24 = String._bridgeToObjectiveC()();

  v25 = [v23 initWithType:v24];

  v26 = [objc_allocWithZone(CAFilter) initWithType:kCAFilterGaussianBlur];
  v27 = CGFloat._bridgeToObjectiveC()().super.super.isa;
  v28 = String._bridgeToObjectiveC()();
  [v26 setValue:v27 forKey:v28];

  v29 = v10;
  v30 = [v29 filters];
  if (v30)
  {
    v31 = v30;
    v32 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v32 = _swiftEmptyArrayStorage;
  }

  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1007B1890;
  v34 = sub_100005744(0, &qword_100982738, CAFilter_ptr);
  *(inited + 32) = v25;
  *(inited + 88) = v34;
  *(inited + 56) = v34;
  *(inited + 64) = v26;
  v45 = v32;
  v42 = v25;
  v35 = v26;
  sub_100394AC0(inited);
  v36 = Array._bridgeToObjectiveC()().super.isa;

  [v29 setFilters:v36];

  sub_10002849C(&qword_10097A790, &qword_1007BCDC0);
  v37 = swift_initStackObject();
  *(v37 + 16) = xmmword_1007B73E0;
  *(v37 + 32) = 0x6E6F697469736F70;
  *(v37 + 40) = 0xE800000000000000;
  *(v37 + 48) = [objc_allocWithZone(NSNull) init];
  *(v37 + 56) = 0x6E6564646968;
  *(v37 + 64) = 0xE600000000000000;
  *(v37 + 72) = [objc_allocWithZone(NSNull) init];
  *(v37 + 80) = 0x49726564724F6E6FLL;
  *(v37 + 88) = 0xE90000000000006ELL;
  *(v37 + 96) = [objc_allocWithZone(NSNull) init];
  *(v37 + 104) = 0x4F726564724F6E6FLL;
  *(v37 + 112) = 0xEA00000000007475;
  *(v37 + 120) = [objc_allocWithZone(NSNull) init];
  *(v37 + 128) = 0x726579616C627573;
  *(v37 + 136) = 0xE900000000000073;
  *(v37 + 144) = [objc_allocWithZone(NSNull) init];
  *(v37 + 152) = 0x73746E65746E6F63;
  *(v37 + 160) = 0xE800000000000000;
  *(v37 + 168) = [objc_allocWithZone(NSNull) init];
  *(v37 + 176) = 0x73646E756F62;
  *(v37 + 184) = 0xE600000000000000;
  *(v37 + 192) = [objc_allocWithZone(NSNull) init];
  sub_100399228(v37, &unk_1009829D0, &unk_1007CA300);
  swift_setDeallocating();
  sub_10002849C(&qword_100977870, qword_1007C1D30);
  swift_arrayDestroy();
  sub_10002849C(&unk_10097A780, &unk_1007CC250);
  v38 = Dictionary._bridgeToObjectiveC()().super.isa;

  [v29 setActions:v38];

  return v29;
}

uint64_t sub_100395854(uint64_t a1, char a2, __n128 a3)
{
  v5 = *v3;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v3 = v5;
  if (result)
  {
    if ((v5 & 0x8000000000000000) == 0 && (v5 & 0x4000000000000000) == 0)
    {
      if (a1 <= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  else if ((v5 & 0x8000000000000000) == 0 && (v5 & 0x4000000000000000) == 0)
  {
    goto LABEL_9;
  }

  _CocoaArrayWrapper.endIndex.getter();
LABEL_9:
  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
  *v3 = result;
  return result;
}

uint64_t sub_1003958F4(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = _CocoaArrayWrapper.endIndex.getter();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = _CocoaArrayWrapper.endIndex.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_100399BEC(&qword_100979C80, &qword_100982820, &qword_1007CA1E0);
          for (i = 0; i != v6; ++i)
          {
            sub_10002849C(&qword_100982820, &qword_1007CA1E0);
            v9 = sub_100548DDC(v13, i, a3);
            v11 = *v10;

            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for Artwork();
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_100395A84(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = _CocoaArrayWrapper.endIndex.getter();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = _CocoaArrayWrapper.endIndex.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_100399BEC(&qword_1009828D0, &qword_1009828C8, &unk_1007CA248);
          for (i = 0; i != v6; ++i)
          {
            sub_10002849C(&qword_1009828C8, &unk_1007CA248);
            v9 = sub_100548DDC(v13, i, a3);
            v11 = *v10;

            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for HeroCarouselScrollView.PageViewTracker();
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_100395C14(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = _CocoaArrayWrapper.endIndex.getter();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = _CocoaArrayWrapper.endIndex.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_100399BEC(&unk_100982870, &qword_100982868, &qword_1007CA218);
          for (i = 0; i != v6; ++i)
          {
            sub_10002849C(&qword_100982868, &qword_1007CA218);
            v9 = sub_100548E5C(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_100005744(0, &qword_100982860, NSCollectionLayoutSupplementaryItem_ptr);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_100395DB4(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = _CocoaArrayWrapper.endIndex.getter();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = _CocoaArrayWrapper.endIndex.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_100399BEC(&qword_1009828E0, &qword_1009828D8, &qword_1007CA258);
          for (i = 0; i != v6; ++i)
          {
            sub_10002849C(&qword_1009828D8, &qword_1007CA258);
            v9 = sub_100548E5C(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_100005744(0, &qword_10097F460, NSCollectionLayoutBoundarySupplementaryItem_ptr);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_100395F54(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = _CocoaArrayWrapper.endIndex.getter();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = _CocoaArrayWrapper.endIndex.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_100399BEC(&qword_1009829A8, &qword_1009829A0, &qword_1007CA2D8);
          for (i = 0; i != v6; ++i)
          {
            sub_10002849C(&qword_1009829A0, &qword_1007CA2D8);
            v9 = sub_100548E5C(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_100005744(0, &qword_10097D558, NSCollectionLayoutGroup_ptr);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1003960F4(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = _CocoaArrayWrapper.endIndex.getter();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = _CocoaArrayWrapper.endIndex.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_100399BEC(&qword_1009827D0, &qword_1009827C8, &qword_1007CA190);
          for (i = 0; i != v6; ++i)
          {
            sub_10002849C(&qword_1009827C8, &qword_1007CA190);
            v9 = sub_100548E5C(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_100005744(0, &qword_100970180, UIColor_ptr);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_100396294(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = _CocoaArrayWrapper.endIndex.getter();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = _CocoaArrayWrapper.endIndex.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_100399BEC(&qword_100982818, &unk_1009711F0, &unk_1007B2720);
          for (i = 0; i != v6; ++i)
          {
            sub_10002849C(&unk_1009711F0, &unk_1007B2720);
            v9 = sub_100548E5C(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_100005744(0, &qword_100972EB0, UIView_ptr);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_100396434(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = _CocoaArrayWrapper.endIndex.getter();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = _CocoaArrayWrapper.endIndex.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_100399BEC(&qword_1009827C0, &qword_1009827B8, &unk_1007CA180);
          for (i = 0; i != v6; ++i)
          {
            sub_10002849C(&qword_1009827B8, &unk_1007CA180);
            v9 = sub_100548EDC(v13, i, a3);
            v11 = *v10;

            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for ArtworkLoaderConfig();
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1003965C4(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = _CocoaArrayWrapper.endIndex.getter();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = _CocoaArrayWrapper.endIndex.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_100399BEC(&qword_100982988, &qword_100982980, &qword_1007CA2C8);
          for (i = 0; i != v6; ++i)
          {
            sub_10002849C(&qword_100982980, &qword_1007CA2C8);
            v9 = sub_100548E5C(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_100005744(0, &qword_1009759D0, UICollectionViewLayoutAttributes_ptr);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_100396764(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = _CocoaArrayWrapper.endIndex.getter();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = _CocoaArrayWrapper.endIndex.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_100399BEC(&qword_1009829E8, &qword_1009829E0, &qword_1007BC3E8);
          for (i = 0; i != v6; ++i)
          {
            sub_10002849C(&qword_1009829E0, &qword_1007BC3E8);
            v9 = sub_100548E5C(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_100005744(0, &qword_100977250, AMSNotificationSettingsItem_ptr);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_100396904(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = _CocoaArrayWrapper.endIndex.getter();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = _CocoaArrayWrapper.endIndex.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_100399BEC(&unk_100982950, &qword_100982948, &unk_1007CA2B0);
          for (i = 0; i != v6; ++i)
          {
            sub_10002849C(&qword_100982948, &unk_1007CA2B0);
            v9 = sub_100548E5C(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_100005744(0, &qword_100982940, NSValue_ptr);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_100396AA4(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = _CocoaArrayWrapper.endIndex.getter();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = _CocoaArrayWrapper.endIndex.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_100399BEC(&unk_100982830, &qword_100982828, &unk_1007CA1E8);
          for (i = 0; i != v6; ++i)
          {
            sub_10002849C(&qword_100982828, &unk_1007CA1E8);
            v9 = sub_100548F64(v13, i, a3);
            v11 = *v10;
            swift_unknownObjectRetain();
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_10002849C(&unk_10097E130, &qword_1007C5840);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_100396C40(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = _CocoaArrayWrapper.endIndex.getter();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = _CocoaArrayWrapper.endIndex.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_100399BEC(&qword_100982898, &qword_100982890, &qword_1007CA228);
          for (i = 0; i != v6; ++i)
          {
            sub_10002849C(&qword_100982890, &qword_1007CA228);
            v9 = sub_100548DDC(v13, i, a3);
            v11 = *v10;

            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for DebugSetting();
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_100396DD0(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = _CocoaArrayWrapper.endIndex.getter();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = _CocoaArrayWrapper.endIndex.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_100399BEC(&qword_1009828E8, &qword_10096FCA0, &unk_1007C5080);
          for (i = 0; i != v6; ++i)
          {
            sub_10002849C(&qword_10096FCA0, &unk_1007C5080);
            v9 = sub_100548E5C(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for CGColor(0);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_100396F60(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10002849C(&qword_100982768, &qword_1007CA140);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      result = sub_1003D8ACC();
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
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_100397050(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10002849C(&unk_100982990, &qword_1007CA2D0);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    for (i = (a1 + 40); ; i += 3)
    {
      v5 = *(i - 1);
      v13 = i[1];
      v14 = *i;
      v6 = *(i + 32);
      result = sub_1003D7340(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      v9 = v3[7] + 40 * result;
      *v9 = v14;
      *(v9 + 16) = v13;
      *(v9 + 32) = v6;
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
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
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_100397150(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10002849C(&unk_100982750, &unk_1007B1F10);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_100031660(v4, &v11, &unk_100970EC0, &unk_1007B2BF0);
      v5 = v11;
      result = sub_1003D8ACC();
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_100056164(&v12, (v3[7] + 32 * result));
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
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_100397290()
{
  result = qword_100982748;
  if (!qword_100982748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100982748);
  }

  return result;
}

unint64_t sub_100397304(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return _swiftEmptyDictionarySingleton;
  }

  sub_10002849C(&qword_100982928, &qword_1007CA298);
  v3 = static _DictionaryStorage.allocate(capacity:)();
  LOBYTE(v4) = *(a1 + 32);
  v5 = *(a1 + 40);
  result = sub_1003D75B4(v4);
  if (v7)
  {
LABEL_7:
    __break(1u);
LABEL_8:
    v16 = v5;
    return v3;
  }

  v8 = (a1 + 56);
  while (1)
  {
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    *(v3[6] + result) = v4;
    *(v3[7] + 8 * result) = v5;
    v9 = v3[2];
    v10 = __OFADD__(v9, 1);
    v11 = v9 + 1;
    if (v10)
    {
      break;
    }

    v3[2] = v11;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v12 = v8 + 2;
    v4 = *(v8 - 8);
    v13 = *v8;
    v14 = v5;
    result = sub_1003D75B4(v4);
    v8 = v12;
    v5 = v13;
    if (v15)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_100397408(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10002849C(&qword_1009827D8, &qword_1007CA198);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    for (i = (a1 + 48); ; i += 6)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v14 = *(i + 1);
      v15 = *i;
      result = sub_1003D7724(v5, v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      v10 = (v3[7] + 32 * result);
      *v10 = v15;
      v10[1] = v14;
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
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_100397504(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10002849C(&qword_100982760, "ھ\a");
    v3 = static _DictionaryStorage.allocate(capacity:)();
    for (i = (a1 + 40); ; i = (i + 40))
    {
      v5 = *(i - 1);
      v12 = i[1];
      v13 = *i;
      result = sub_1003D7340(v5);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      v8 = (v3[7] + 32 * result);
      *v8 = v13;
      v8[1] = v12;
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
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_100397604(uint64_t a1)
{
  v2 = sub_10002849C(&unk_100982800, &unk_1007CA1C0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (&v20 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_10002849C(&qword_100970C90, &qword_1007B1EE8);
    v7 = static _DictionaryStorage.allocate(capacity:)();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);
    while (1)
    {
      sub_100031660(v9, v5, &unk_100982800, &unk_1007CA1C0);
      v11 = *v5;
      result = sub_1003D7340(*v5);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + 8 * result) = v11;
      v15 = v7[7];
      v16 = type metadata accessor for ImpressionMetrics();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v5 + v8, v16);
      v17 = v7[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v7[2] = v19;
      v9 += v10;
      if (!--v6)
      {
        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_1003977F4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10002849C(&unk_1009827F0, &unk_1007CA1B0);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_1000072B8(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      *(v3[7] + 8 * result) = v8;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
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
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_1003978F8(uint64_t a1)
{
  v2 = sub_10002849C(&unk_1009828F0, &unk_1007CA260);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (&v19 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_10002849C(&qword_100970D18, &qword_1007B1F78);
    v7 = static _DictionaryStorage.allocate(capacity:)();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_100031660(v9, v5, &unk_1009828F0, &unk_1007CA260);
      result = sub_1003D786C(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = type metadata accessor for Accessory(0);
      result = sub_1000561D8(v5, v14 + *(*(v15 - 8) + 72) * v13);
      *(v7[7] + 8 * v13) = *(v5 + v8);
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_100397AC8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10002849C(&qword_1009827E0, &qword_1007CA1A0);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_100031660(v4, v13, &qword_1009827E8, &qword_1007CA1A8);
      result = sub_1003D78D8(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      *(v3[7] + 8 * result) = v15;
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
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
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_100397BF0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10002849C(&qword_100970D00, &qword_1007CA210);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 1);
      v6 = *i;

      v7 = v6;
      result = sub_1003D791C(v5);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      *(v3[7] + 8 * result) = v7;
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
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
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_100397CE8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10002849C(qword_1009908C0, &unk_1007CA170);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_100031660(v4, v13, &unk_1009827A0, &unk_1007B2F90);
      result = sub_1003D78D8(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = sub_100056164(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
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
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_100397E24(uint64_t a1)
{
  v2 = sub_10002849C(&qword_1009829C0, &qword_1007CA2F0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v22 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_10002849C(&qword_1009829C8, &qword_1007CA2F8);
    v7 = static _DictionaryStorage.allocate(capacity:)();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_100031660(v9, v5, &qword_1009829C0, &qword_1007CA2F0);
      result = sub_1003D78D8(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6] + 40 * result;
      v15 = *v5;
      v16 = *(v5 + 1);
      *(v14 + 32) = *(v5 + 4);
      *v14 = v15;
      *(v14 + 16) = v16;
      v17 = v7[7];
      v18 = type metadata accessor for URL();
      result = (*(*(v18 - 8) + 32))(v17 + *(*(v18 - 8) + 72) * v13, &v5[v8], v18);
      v19 = v7[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v7[2] = v21;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_10039801C(uint64_t a1)
{
  v2 = sub_10002849C(&qword_100982848, &unk_1007CA200);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_10002849C(&unk_100982850, &unk_1007B1F50);
    v7 = static _DictionaryStorage.allocate(capacity:)();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_100031660(v9, v5, &qword_100982848, &unk_1007CA200);
      result = sub_1003D79C8(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = type metadata accessor for BadgeType();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      *(v7[7] + 8 * v13) = *&v5[v8];
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_100398204(uint64_t a1)
{
  v2 = sub_10002849C(&qword_100982910, &qword_1007CA280);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_10002849C(&qword_100982918, &unk_1007CA288);
    v7 = static _DictionaryStorage.allocate(capacity:)();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_100031660(v9, v5, &qword_100982910, &qword_1007CA280);
      result = sub_1003D7A9C(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = type metadata accessor for PageFacets.Facet();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      *(v7[7] + 8 * v13) = *&v5[v8];
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_1003983EC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10002849C(&unk_100982790, &qword_1007CA168);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      result = sub_1003D8ACC();
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
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_1003984D8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10002849C(&unk_100982780, &qword_1007CA158);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_100031660(v4, &v11, &qword_10097C5C0, &qword_1007CA160);
      v5 = v11;
      result = sub_1003D8ACC();
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_100056164(&v12, (v3[7] + 32 * result));
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
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_100398600(uint64_t a1)
{
  v2 = sub_10002849C(&qword_100982770, &qword_1007CA148);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v21 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_10002849C(&qword_100982778, &qword_1007CA150);
    v7 = static _DictionaryStorage.allocate(capacity:)();
    v8 = &v5[*(v2 + 48)];
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_100031660(v9, v5, &qword_100982770, &qword_1007CA148);
      result = sub_1003D7650(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = type metadata accessor for OfferTitleType();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      v16 = (v7[7] + 16 * v13);
      v17 = *(v8 + 1);
      *v16 = *v8;
      v16[1] = v17;
      v18 = v7[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v7[2] = v20;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

void *sub_100398804(double *a1)
{
  v1 = *(a1 + 2);
  if (!v1)
  {
    return _swiftEmptyDictionarySingleton;
  }

  sub_10002849C(&qword_1009827B0, &qword_1007B1F08);
  v3 = static _DictionaryStorage.allocate(capacity:)();
  v4 = *(a1 + 4);
  v5 = *(a1 + 5);
  v6 = a1[6];
  v7 = *(a1 + 7);
  v8 = sub_1003D750C(v4, v5, v6);
  if (v9)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v10 = v8;
  result = v7;
  v12 = a1 + 11;
  while (1)
  {
    *(v3 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v10;
    v13 = (v3[6] + 24 * v10);
    *v13 = v4;
    *(v13 + 1) = v5;
    v13[2] = v6;
    *(v3[7] + 8 * v10) = result;
    v14 = v3[2];
    v15 = __OFADD__(v14, 1);
    v16 = v14 + 1;
    if (v15)
    {
      break;
    }

    v3[2] = v16;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v17 = v12 + 4;
    v4 = *(v12 - 3);
    v5 = *(v12 - 2);
    v6 = *(v12 - 1);
    v18 = *v12;

    v10 = sub_1003D750C(v4, v5, v6);
    v12 = v17;
    result = v18;
    if (v19)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_100398948(uint64_t a1)
{
  v2 = sub_10002849C(&unk_100982900, &unk_1007CA270);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_10002849C(&qword_100970CC0, &unk_1007B1F20);
    v7 = static _DictionaryStorage.allocate(capacity:)();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_100031660(v9, v5, &unk_100982900, &unk_1007CA270);
      result = sub_1003D7C44(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = type metadata accessor for AdPlacementType();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      *(v7[7] + 16 * v13) = *&v5[v8];
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_100398B30(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10002849C(&qword_100970CC8, &qword_1007B1F30);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 24)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_1000072B8(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + result) = v7;
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
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_100398C2C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10002849C(&unk_100982970, &unk_1007B1FB0);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 1);
      v6 = *i;
      result = sub_1003D7340(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      *(v3[7] + 8 * result) = v6;
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
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_100398D0C(uint64_t a1)
{
  v2 = sub_10002849C(&unk_100982960, &qword_1007CA2C0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_10002849C(&qword_100970D30, &qword_1007B1FA8);
    v7 = static _DictionaryStorage.allocate(capacity:)();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_100031660(v9, v5, &unk_100982960, &qword_1007CA2C0);
      result = sub_1003D7D18(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = type metadata accessor for IndexPath();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      *(v7[7] + 16 * v13) = *&v5[v8];
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_100398EF4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10002849C(&qword_100970CB0, &qword_1007CA220);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_100031660(v4, &v13, &unk_100982880, &unk_1007DEC80);
      v5 = v13;
      v6 = v14;
      result = sub_1000072B8(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_100056164(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
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
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_100399024(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10002849C(&qword_100970D20, &unk_1007B1F90);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    for (i = (a1 + 40); ; i = (i + 24))
    {
      v5 = *(i - 1);
      v11 = *i;
      result = sub_1003D7340(v5);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      *(v3[7] + 16 * result) = v11;
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
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
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_100399120(void *a1, uint64_t *a2, uint64_t *a3)
{
  v3 = a1[2];
  if (!v3)
  {
    return _swiftEmptyDictionarySingleton;
  }

  sub_10002849C(a2, a3);
  v5 = static _DictionaryStorage.allocate(capacity:)();
  v6 = a1[4];
  v7 = a1[5];
  result = sub_1003D7340(v6);
  if (v9)
  {
LABEL_7:
    __break(1u);
LABEL_8:
    v18 = v7;
    return v5;
  }

  v10 = (a1 + 7);
  while (1)
  {
    *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    *(v5[6] + 8 * result) = v6;
    *(v5[7] + 8 * result) = v7;
    v11 = v5[2];
    v12 = __OFADD__(v11, 1);
    v13 = v11 + 1;
    if (v12)
    {
      break;
    }

    v5[2] = v13;
    if (!--v3)
    {
      goto LABEL_8;
    }

    v14 = v10 + 2;
    v6 = *(v10 - 1);
    v15 = *v10;
    v16 = v7;
    result = sub_1003D7340(v6);
    v10 = v14;
    v7 = v15;
    if (v17)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_100399228(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    sub_10002849C(a2, a3);
    v5 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v7 = *(i - 2);
      v8 = *(i - 1);
      v9 = *i;

      swift_unknownObjectRetain();
      result = sub_1000072B8(v7, v8);
      if (v11)
      {
        break;
      }

      *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v12 = (v5[6] + 16 * result);
      *v12 = v7;
      v12[1] = v8;
      *(v5[7] + 8 * result) = v9;
      v13 = v5[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v5[2] = v15;
      if (!--v3)
      {

        return v5;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

void *sub_100399338(void *a1, uint64_t *a2, uint64_t *a3)
{
  v3 = a1[2];
  if (!v3)
  {
    return _swiftEmptyDictionarySingleton;
  }

  sub_10002849C(a2, a3);
  v5 = static _DictionaryStorage.allocate(capacity:)();
  v6 = a1[4];
  v7 = a1[5];
  v8 = sub_1003D7340(v6);
  if (v9)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v5;
  }

  v10 = v8;
  result = v7;
  v12 = (a1 + 7);
  while (1)
  {
    *(v5 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v10;
    *(v5[6] + 8 * v10) = v6;
    *(v5[7] + 8 * v10) = result;
    v13 = v5[2];
    v14 = __OFADD__(v13, 1);
    v15 = v13 + 1;
    if (v14)
    {
      break;
    }

    v5[2] = v15;
    if (!--v3)
    {
      goto LABEL_8;
    }

    v16 = v12 + 2;
    v6 = *(v12 - 1);
    v17 = *v12;

    v10 = sub_1003D7340(v6);
    v12 = v16;
    result = v17;
    if (v18)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_100399438(uint64_t a1)
{
  v2 = sub_10002849C(&unk_1009829F0, qword_1007CA310);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (&v22 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_10002849C(&qword_100970D58, &qword_1007B1FD8);
    v7 = static _DictionaryStorage.allocate(capacity:)();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_100031660(v9, v5, &unk_1009829F0, qword_1007CA310);
      v11 = *v5;
      v12 = v5[1];
      result = sub_1000072B8(*v5, v12);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v16 = (v7[6] + 16 * result);
      *v16 = v11;
      v16[1] = v12;
      v17 = v7[7];
      v18 = type metadata accessor for AdamId();
      result = (*(*(v18 - 8) + 32))(v17 + *(*(v18 - 8) + 72) * v15, v5 + v8, v18);
      v19 = v7[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v7[2] = v21;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_100399624(uint64_t a1)
{
  v2 = sub_10002849C(&qword_1009829B0, &qword_1007CA2E0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v20 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_10002849C(&qword_1009829B8, &qword_1007CA2E8);
    v7 = static _DictionaryStorage.allocate(capacity:)();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_100031660(v9, v5, &qword_1009829B0, &qword_1007CA2E0);
      v11 = *v5;
      result = sub_1003D7DEC(*v5);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + result) = v11;
      v15 = v7[7];
      v16 = type metadata accessor for DisplayRepresentation();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, &v5[v8], v16);
      v17 = v7[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v7[2] = v19;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_10039980C(uint64_t a1)
{
  v2 = sub_10002849C(&qword_1009828A0, &qword_1007CA230);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_10002849C(&qword_1009828A8, &qword_1007CA238);
    v7 = static _DictionaryStorage.allocate(capacity:)();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_100031660(v9, v5, &qword_1009828A0, &qword_1007CA230);
      result = sub_1003D7F00(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = type metadata accessor for MetricsFieldExclusionRequest();
      (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      result = sub_100005A38(&v5[v8], v7[7] + 40 * v13);
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_1003999FC(uint64_t a1)
{
  v2 = sub_10002849C(&qword_1009828B0, &qword_1007CA240);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_10002849C(&qword_1009828B8, &qword_1007DEC60);
    v7 = static _DictionaryStorage.allocate(capacity:)();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_100031660(v9, v5, &qword_1009828B0, &qword_1007CA240);
      result = sub_1003D7FD4(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = type metadata accessor for MetricsFieldInclusionRequest();
      (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      result = sub_100005A38(&v5[v8], v7[7] + 40 * v13);
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

uint64_t sub_100399BEC(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_100399C44(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for MetricsFieldsContext();
  v38 = *(v4 - 8);
  v39 = v4;
  __chkstk_darwin(v4);
  v36 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = type metadata accessor for MetricsData();
  v35 = *(v37 - 8);
  __chkstk_darwin(v37);
  v33 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = type metadata accessor for MetricsPipeline();
  v32 = *(v34 - 8);
  __chkstk_darwin(v34);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10002849C(&qword_100975528, &unk_1007BECC0);
  __chkstk_darwin(v9 - 8);
  v11 = &v32 - v10;
  v12 = type metadata accessor for NavigationTab();
  v40 = *(v12 - 8);
  __chkstk_darwin(v12);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for Date();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v32 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for PageRenderMetricsEvent();
  Date.init()();
  Date.timeIntervalSince1970.getter();
  (*(v16 + 8))(v18, v15);
  static PageRenderMetricsEvent.lastInteractionTime.setter();
  static PageRenderEvent.willPerformAction()();
  v19 = [a1 viewControllers];
  if (v19)
  {
    sub_100005744(0, &qword_1009711C0, UIViewController_ptr);
    v20 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v19 = sub_10045DBC0(a2, v20);
    v22 = v21;
  }

  else
  {
    v22 = 1;
  }

  v23 = [a1 tabBar];
  v24 = [v23 items];

  if (!v24)
  {
    return 1;
  }

  sub_100005744(0, &qword_100982AC0, UITabBarItem_ptr);
  v25 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  result = Array.isNotEmpty.getter();
  if (result & 1) == 0 || (v22)
  {

    return 1;
  }

  if ((v25 & 0xC000000000000001) != 0)
  {
    v28 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    v27 = v40;
LABEL_13:

    [v28 tag];

    NavigationTab.init(intValue:)();
    if ((*(v27 + 48))(v11, 1, v12) == 1)
    {
      sub_10002B894(v11, &qword_100975528, &unk_1007BECC0);
    }

    else
    {
      (*(v27 + 32))(v14, v11, v12);
      type metadata accessor for ClickMetricsEvent();
      NavigationTab.pageContext.getter();
      [a1 selectedIndex];
      static ClickMetricsEvent.tabClickEvent(named:at:)();

      type metadata accessor for BaseObjectGraph();
      v29 = v34;
      inject<A, B>(_:from:)();
      v30 = v33;
      dispatch thunk of MetricsEvent.metricsData.getter();
      v31 = v36;
      static MetricsFieldsContext.emptyContext.getter();
      MetricsPipeline.process(_:using:)();

      (*(v38 + 8))(v31, v39);
      (*(v35 + 8))(v30, v37);
      (*(v32 + 8))(v8, v29);
      (*(v27 + 8))(v14, v12);
    }

    return 1;
  }

  v27 = v40;
  if ((v19 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v19 < *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v28 = *(v25 + 8 * v19 + 32);
    goto LABEL_13;
  }

  __break(1u);
  return result;
}

void sub_10039A2F0(void *a1, void *a2)
{
  v4 = sub_10002849C(&unk_100982A90, &unk_1007CAFC0);
  v100 = *(v4 - 8);
  v101 = v4;
  __chkstk_darwin(v4);
  v99 = &v89 - v5;
  v6 = sub_10002849C(&unk_1009767C0, &unk_1007B1880);
  __chkstk_darwin(v6 - 8);
  v98 = &v89 - v7;
  v8 = type metadata accessor for ActionMetrics();
  __chkstk_darwin(v8 - 8);
  v96 = &v89 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10002849C(&unk_100982AA0, qword_1007C0320);
  __chkstk_darwin(v10 - 8);
  v94 = &v89 - v11;
  v91 = type metadata accessor for SearchOrigin();
  v90 = *(v91 - 8);
  __chkstk_darwin(v91);
  v93 = &v89 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10002849C(&qword_100982460, &unk_1007B5C90);
  __chkstk_darwin(v13 - 8);
  v92 = &v89 - v14;
  v97 = sub_10002849C(&unk_100974490, &qword_1007B3DD0);
  v95 = *(v97 - 8);
  __chkstk_darwin(v97);
  v103 = &v89 - v15;
  v110 = type metadata accessor for StoreTab.Identifier();
  v108 = *(v110 - 8);
  __chkstk_darwin(v110);
  v105 = &v89 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_10002849C(&unk_100979700, &unk_1007C0300);
  __chkstk_darwin(v17);
  v104 = &v89 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = &v89 - v20;
  v22 = sub_10002849C(&unk_100982AB0, &qword_1007BECE0);
  __chkstk_darwin(v22 - 8);
  v106 = &v89 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v102 = &v89 - v25;
  __chkstk_darwin(v26);
  v28 = &v89 - v27;
  __chkstk_darwin(v29);
  v31 = &v89 - v30;
  __chkstk_darwin(v32);
  v109 = &v89 - v33;
  __chkstk_darwin(v34);
  v112 = &v89 - v35;
  v36 = sub_10002849C(&qword_100975528, &unk_1007BECC0);
  __chkstk_darwin(v36 - 8);
  v38 = &v89 - v37;
  v39 = type metadata accessor for NavigationTab();
  v113 = *(v39 - 8);
  v114 = v39;
  __chkstk_darwin(v39);
  v41 = &v89 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v42);
  v111 = &v89 - v43;
  type metadata accessor for StoreNavigationController();
  if (swift_dynamicCastClass())
  {
    v44 = a2;
    sub_10047435C();
  }

  v45 = [a1 tabBar];
  v46 = [v45 items];

  if (v46)
  {
    sub_100005744(0, &qword_100982AC0, UITabBarItem_ptr);
    v47 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if ((Array.isNotEmpty.getter() & 1) == 0 || (v48 = [a1 selectedIndex], v48 == NSNotFound.getter()))
    {

      return;
    }

    v49 = [a1 selectedIndex];
    if ((v47 & 0xC000000000000001) == 0)
    {
      if ((v49 & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else if (v49 < *((v47 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v50 = *(v47 + 8 * v49 + 32);
        goto LABEL_13;
      }

      __break(1u);
      return;
    }

    v50 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_13:
    v51 = v50;

    [v51 tag];

    NavigationTab.init(intValue:)();
    v53 = v113;
    v52 = v114;
    if ((*(v113 + 48))(v38, 1, v114) == 1)
    {
      sub_10002B894(v38, &qword_100975528, &unk_1007BECC0);
      return;
    }

    v54 = v111;
    (*(v53 + 32))(v111, v38, v52);
    v89 = objc_opt_self();
    v55 = v52;
    v56 = [v89 standardUserDefaults];
    v57 = v112;
    sub_100736FA4(v112);

    v58 = v54;
    v59 = v109;
    (*(v53 + 16))(v41, v58, v55);
    StoreTab.Identifier.init(navigationTab:)();
    v60 = *(v17 + 48);
    sub_10039B3E4(v57, v21);
    sub_10039B3E4(v59, &v21[v60]);
    v61 = v108;
    v62 = *(v108 + 48);
    v63 = v110;
    if (v62(v21, 1, v110) == 1)
    {
      if (v62(&v21[v60], 1, v63) == 1)
      {
        sub_10002B894(v21, &unk_100982AB0, &qword_1007BECE0);
        v64 = v107;
        v65 = v111;
LABEL_22:
        (*(v61 + 104))(v28, enum case for StoreTab.Identifier.search(_:), v63);
        (*(v61 + 56))(v28, 0, 1, v63);
        v68 = *(v17 + 48);
        v69 = v104;
        sub_10039B3E4(v59, v104);
        sub_10039B3E4(v28, v69 + v68);
        if (v62(v69, 1, v63) == 1)
        {
          sub_10002B894(v28, &unk_100982AB0, &qword_1007BECE0);
          if (v62(v69 + v68, 1, v63) == 1)
          {
            sub_10002B894(v69, &unk_100982AB0, &qword_1007BECE0);
LABEL_29:
            v111 = *(v64 + OBJC_IVAR____TtC8AppStore17TabChangeDelegate_objectGraph);
            v74 = v97;
            BaseObjectGraph.inject<A>(_:)();
            v75 = type metadata accessor for URL();
            (*(*(v75 - 8) + 56))(v92, 1, 1, v75);
            (*(v90 + 104))(v93, enum case for SearchOrigin.tabBar(_:), v91);
            v76 = type metadata accessor for SearchEntity();
            (*(*(v76 - 8) + 56))(v94, 1, 1, v76);
            static ActionMetrics.notInstrumented.getter();
            v77 = type metadata accessor for ReferrerData();
            (*(*(v77 - 8) + 56))(v98, 1, 1, v77);
            v78 = type metadata accessor for SearchAction();
            swift_allocObject();
            v59 = v109;
            v79 = SearchAction.init(title:term:url:origin:source:entity:spellCheckEnabled:excludedTerms:originatingTerm:prefixTerm:guidedSearchTokens:guidedSearchOptimizationTerm:actionMetrics:referrerData:)();
            v115[3] = v78;
            v115[4] = sub_10039B454(&qword_100982AC8, &type metadata accessor for SearchAction, &protocol conformance descriptor for Action);
            v115[0] = v79;
            v81 = v99;
            v80 = v100;
            v82 = v101;
            (*(v100 + 104))(v99, enum case for ActionDispatcher.MetricsBehavior.notProcessed<A>(_:), v101);

            v83 = v103;
            ActionDispatcher.perform(_:withMetrics:asPartOf:)();

            (*(v80 + 8))(v81, v82);
            (*(v95 + 8))(v83, v74);
            sub_100007000(v115);
            goto LABEL_30;
          }

          goto LABEL_27;
        }

        v70 = v102;
        sub_10039B3E4(v69, v102);
        if (v62(v69 + v68, 1, v63) == 1)
        {
          sub_10002B894(v28, &unk_100982AB0, &qword_1007BECE0);
          (*(v108 + 8))(v70, v63);
LABEL_27:
          sub_10002B894(v69, &unk_100979700, &unk_1007C0300);
          goto LABEL_30;
        }

        v71 = v108;
        v72 = v105;
        (*(v108 + 32))(v105, v69 + v68, v63);
        sub_10039B454(&qword_100982AD0, &type metadata accessor for StoreTab.Identifier, &protocol conformance descriptor for StoreTab.Identifier);
        LODWORD(v111) = dispatch thunk of static Equatable.== infix(_:_:)();
        v73 = *(v71 + 8);
        v73(v72, v63);
        sub_10002B894(v28, &unk_100982AB0, &qword_1007BECE0);
        v73(v70, v63);
        sub_10002B894(v69, &unk_100982AB0, &qword_1007BECE0);
        if (v111)
        {
          goto LABEL_29;
        }

LABEL_30:
        type metadata accessor for MetricsActivity();
        static MetricsActivity.current.getter();
        NavigationTab.pageContext.getter();
        dispatch thunk of MetricsActivity.changeContext(_:)();

        v84 = [v89 standardUserDefaults];
        v85 = v106;
        sub_10039B3E4(v59, v106);
        sub_100736DBC(v85);

        type metadata accessor for AppStoreOnDeviceRecommendationsManager();
        BaseObjectGraph.optional<A>(_:)();
        v86 = v115[0];
        if (v115[0])
        {
          dispatch thunk of AppStoreOnDeviceRecommendationsManager.loadInferences(for:)();
        }

        type metadata accessor for UnifiedTabBadgingManager();
        BaseObjectGraph.optional<A>(_:)();
        v87 = v115[0];
        v88 = v113;
        if (v115[0])
        {
          UnifiedTabBadgingManager.didVisit(_:)();
        }

        sub_10002B894(v59, &unk_100982AB0, &qword_1007BECE0);
        sub_10002B894(v112, &unk_100982AB0, &qword_1007BECE0);
        (*(v88 + 8))(v65, v114);
        return;
      }
    }

    else
    {
      sub_10039B3E4(v21, v31);
      if (v62(&v21[v60], 1, v63) != 1)
      {
        (*(v61 + 32))(v105, &v21[v60], v63);
        sub_10039B454(&qword_100982AD0, &type metadata accessor for StoreTab.Identifier, &protocol conformance descriptor for StoreTab.Identifier);
        v66 = dispatch thunk of static Equatable.== infix(_:_:)();
        v67 = *(v61 + 8);
        v67(v105, v110);
        v67(v31, v110);
        v59 = v109;
        v63 = v110;
        sub_10002B894(v21, &unk_100982AB0, &qword_1007BECE0);
        v64 = v107;
        v65 = v111;
        if ((v66 & 1) == 0)
        {
          goto LABEL_30;
        }

        goto LABEL_22;
      }

      (*(v61 + 8))(v31, v63);
    }

    sub_10002B894(v21, &unk_100979700, &unk_1007C0300);
    v65 = v111;
    goto LABEL_30;
  }
}

uint64_t sub_10039B3E4(uint64_t a1, uint64_t a2)
{
  v4 = sub_10002849C(&unk_100982AB0, &qword_1007BECE0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10039B454(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

char *sub_10039B49C(double a1, double a2, double a3, double a4)
{
  v9 = type metadata accessor for AutomationSemantics();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = OBJC_IVAR____TtC8AppStore31ProductReviewCollectionViewCell_itemLayoutContext;
  v14 = type metadata accessor for ItemLayoutContext();
  (*(*(v14 - 8) + 56))(&v4[v13], 1, 1, v14);
  v15 = OBJC_IVAR____TtC8AppStore31ProductReviewCollectionViewCell_reviewsView;
  type metadata accessor for ProductReviewView();
  *&v4[v15] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v16 = type metadata accessor for ProductReviewCollectionViewCell(0);
  v26.receiver = v4;
  v26.super_class = v16;
  v17 = objc_msgSendSuper2(&v26, "initWithFrame:", a1, a2, a3, a4);
  v18 = objc_allocWithZone(UIView);
  v19 = v17;
  v20 = [v18 initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v21 = [v20 layer];
  [v21 setCornerRadius:20.0];

  [v19 setBackgroundView:v20];
  v22 = [v19 contentView];

  [v22 addSubview:*&v19[OBJC_IVAR____TtC8AppStore31ProductReviewCollectionViewCell_reviewsView]];
  memset(v25, 0, sizeof(v25));
  memset(v24, 0, sizeof(v24));
  static AutomationSemantics.productPage(elementName:id:parentId:)();
  sub_10002B894(v24, &unk_1009711D0, &unk_1007B1A10);
  sub_10002B894(v25, &unk_1009711D0, &unk_1007B1A10);
  UIView.setAutomationSemantics(_:)();

  (*(v10 + 8))(v12, v9);
  return v19;
}

uint64_t sub_10039B850()
{
  v13.receiver = v0;
  v13.super_class = type metadata accessor for ProductReviewCollectionViewCell(0);
  objc_msgSendSuper2(&v13, "prepareForReuse");
  v1 = *&v0[OBJC_IVAR____TtC8AppStore31ProductReviewCollectionViewCell_reviewsView];
  v2 = (v1 + OBJC_IVAR____TtC8AppStore17ProductReviewView_moreReviewTapHandler);
  v3 = *(v1 + OBJC_IVAR____TtC8AppStore17ProductReviewView_moreReviewTapHandler);
  v4 = *(v1 + OBJC_IVAR____TtC8AppStore17ProductReviewView_moreReviewTapHandler + 8);
  *v2 = 0;
  v2[1] = 0;
  sub_10001F63C(v3, v4);
  v5 = (v1 + OBJC_IVAR____TtC8AppStore17ProductReviewView_moreResponseTapHandler);
  v6 = *v5;
  v7 = v5[1];
  *v5 = 0;
  v5[1] = 0;
  sub_10001F63C(v6, v7);
  v8 = *v2;
  v9 = v2[1];
  *v2 = 0;
  v2[1] = 0;
  sub_10001F63C(v8, v9);
  v10 = *v5;
  v11 = v5[1];
  *v5 = 0;
  v5[1] = 0;
  return sub_10001F63C(v10, v11);
}

id sub_10039B934()
{
  v6.receiver = v0;
  v6.super_class = type metadata accessor for ProductReviewCollectionViewCell(0);
  objc_msgSendSuper2(&v6, "layoutSubviews");
  v1 = [v0 contentView];
  [v0 bounds];
  [v1 setFrame:?];

  v2 = [v0 backgroundView];
  if (v2)
  {
    v3 = v2;
    [v0 bounds];
    [v3 setFrame:?];
  }

  v4 = *&v0[OBJC_IVAR____TtC8AppStore31ProductReviewCollectionViewCell_reviewsView];
  [v0 bounds];
  return [v4 setFrame:?];
}

uint64_t sub_10039BA7C(char *a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a3)
  {
    v6 = a1;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v13, 0, sizeof(v13));
    v7 = a1;
  }

  v8 = *&a1[OBJC_IVAR____TtC8AppStore31ProductReviewCollectionViewCell_reviewsView] + *a4;
  v9 = *v8;
  if (*v8)
  {
    v10 = *(v8 + 8);

    v9(v11);
    sub_10001F63C(v9, v10);
  }

  return sub_10002B894(v13, &unk_1009711D0, &unk_1007B1A10);
}

id sub_10039BC3C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ProductReviewCollectionViewCell(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for ProductReviewCollectionViewCell(uint64_t a1)
{
  result = qword_100982B00;
  if (!qword_100982B00)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_10039BD24()
{
  v1 = [v0 contentView];

  return v1;
}

unint64_t sub_10039BD60()
{
  result = qword_100974B30;
  if (!qword_100974B30)
  {
    type metadata accessor for MediumLockupCollectionViewCell(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100974B30);
  }

  return result;
}

double sub_10039BDB8()
{
  v0 = type metadata accessor for PageGrid();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  ShelfLayoutContext.traitEnvironment.getter();
  ShelfLayoutContext.contentPageGrid.getter();
  PageGrid.componentMeasuringSize(spanning:)();
  v5 = v4;
  v7 = v6;
  (*(v1 + 8))(v3, v0);
  swift_getObjectType();
  v8 = swift_unknownObjectRetain();
  sub_100633FAC(v8, v5, v7);
  v10 = v9;
  swift_unknownObjectRelease_n();
  return v10;
}

uint64_t sub_10039BF08(uint64_t a1, uint64_t a2, Swift::Bool a3)
{
  v4 = v3;
  v13.value.super.isa = 0;
  v13.is_nil = 0;
  ArtworkView.setImage(image:animated:)(v13, a3);
  [*(v3 + OBJC_IVAR____TtC8AppStore25CondensedAppEventCardView_titleLabel) setText:0];
  v5 = *(v3 + OBJC_IVAR____TtC8AppStore25CondensedAppEventCardView_appEventFormattedDateView);
  type metadata accessor for AppEventFormattedDatePresenter(0);
  swift_allocObject();
  v6 = v5;
  v7 = sub_1006E6CE8(_swiftEmptyArrayStorage, v5, &off_1008BC738);

  v8 = OBJC_IVAR____TtC8AppStore29AppPromotionFormattedDateView_appEventFormattedDatePresenter;
  swift_beginAccess();
  *&v6[v8] = v7;

  v9 = (v4 + OBJC_IVAR____TtC8AppStore25CondensedAppEventCardView_appEventViewTappedAction);
  v10 = *(v4 + OBJC_IVAR____TtC8AppStore25CondensedAppEventCardView_appEventViewTappedAction);
  v11 = *(v4 + OBJC_IVAR____TtC8AppStore25CondensedAppEventCardView_appEventViewTappedAction + 8);
  *v9 = 0;
  v9[1] = 0;
  return sub_10001F63C(v10, v11);
}

uint64_t sub_10039C010()
{
  v1 = type metadata accessor for Artwork.Style();
  __chkstk_darwin(v1 - 8);
  if (AppEvent.moduleVideo.getter())
  {
    Video.preview.getter();
  }

  else
  {
    result = AppEvent.moduleArtwork.getter();
    if (!result)
    {
      return result;
    }
  }

  v3 = *(v0 + OBJC_IVAR____TtC8AppStore25CondensedAppEventCardView_artworkView);
  if (qword_10096EA18 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for CondensedSearchResultCardLayout.Metrics();
  sub_1000056A8(v4, qword_1009D2B70);
  CondensedSearchResultCardLayout.Metrics.artworkSize.getter();
  [v3 contentMode];
  Artwork.config(_:mode:prefersLayeredImage:)();
  Artwork.style.getter();
  ArtworkView.style.setter();
  [v3 setContentMode:Artwork.contentMode.getter()];
  ArtworkLoaderConfig.size.getter();
  ArtworkView.imageSize.setter();
  if (!Artwork.backgroundColor.getter())
  {
    sub_100028BB8();
    static UIColor.placeholderBackground.getter();
  }

  ArtworkView.backgroundColor.setter();
  type metadata accessor for ArtworkView();
  sub_10009A098();
  ArtworkLoader.fetchArtwork<A>(using:closestMatch:into:)();
}

id sub_10039C1FC(uint64_t a1)
{
  v2 = v1;
  v3 = *&v1[OBJC_IVAR____TtC8AppStore25CondensedAppEventCardView_titleLabel];
  AppEvent.title.getter();
  v4 = String._bridgeToObjectiveC()();

  [v3 setText:v4];

  v5 = *&v1[OBJC_IVAR____TtC8AppStore25CondensedAppEventCardView_appEventFormattedDateView];
  v6 = AppEvent.formattedDates.getter();
  type metadata accessor for AppEventFormattedDatePresenter(0);
  swift_allocObject();
  v7 = v5;
  v8 = sub_1006E6CE8(v6, v5, &off_1008BC738);

  v9 = OBJC_IVAR____TtC8AppStore29AppPromotionFormattedDateView_appEventFormattedDatePresenter;
  swift_beginAccess();
  *&v7[v9] = v8;

  return [v2 setNeedsLayout];
}

void *sub_10039C30C()
{
  v0 = type metadata accessor for Artwork.Crop();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = _swiftEmptyArrayStorage;
  if (AppEvent.moduleVideo.getter())
  {
    Video.preview.getter();
  }

  else if (!AppEvent.moduleArtwork.getter())
  {
    return _swiftEmptyArrayStorage;
  }

  Artwork.crop.getter();
  Artwork.Crop.preferredContentMode.getter();
  (*(v1 + 8))(v3, v0);
  if (qword_10096EA18 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for CondensedSearchResultCardLayout.Metrics();
  sub_1000056A8(v4, qword_1009D2B70);
  CondensedSearchResultCardLayout.Metrics.artworkSize.getter();
  Artwork.config(_:mode:prefersLayeredImage:)();

  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

  return v7;
}

id sub_10039C500(char a1, char a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v11 = OBJC_IVAR____TtC8AppStore33OnboardingAdPrivacyViewController_adPrivacyHeaderIconView;
  *&v5[v11] = [objc_allocWithZone(type metadata accessor for OnboardingAdPrivacyHeaderIconView()) init];
  v5[OBJC_IVAR____TtC8AppStore33OnboardingAdPrivacyViewController_buttonsStyle] = a1 & 1;
  v12 = &v5[OBJC_IVAR____TtC8AppStore33OnboardingAdPrivacyViewController_buttonsCallback];
  *v12 = a3;
  v12[1] = a4;

  v13._object = 0x8000000100810230;
  v13._countAndFlagsBits = 0xD000000000000025;
  v14._countAndFlagsBits = 0;
  v14._object = 0xE000000000000000;
  localizedString(_:comment:)(v13, v14);
  static AppleAccountBranding.localizedString(_:)();
  v15 = String._bridgeToObjectiveC()();

  v16 = String._bridgeToObjectiveC()();

  v20.receiver = v5;
  v20.super_class = ObjectType;
  v17 = objc_msgSendSuper2(&v20, "initWithTitle:detailText:icon:contentLayout:", v15, v16, 0, 2);

  v18 = v17;
  [v18 setModalInPresentation:1];
  [v18 setDisableButtonsUntilAllContentWasVisable:a2 & 1];

  return v18;
}

void sub_10039C698()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v59 = type metadata accessor for AutomationSemantics();
  v56 = *(v59 - 8);
  __chkstk_darwin(v59);
  v58 = &v52 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10002849C(&qword_10097CC90, &unk_1007BB2A0);
  __chkstk_darwin(v4 - 8);
  v6 = &v52 - v5;
  v7 = type metadata accessor for UIButton.Configuration();
  v8 = *(v7 - 8);
  *&v9 = __chkstk_darwin(v7).n128_u64[0];
  v11 = &v52 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64.receiver = v1;
  v64.super_class = ObjectType;
  objc_msgSendSuper2(&v64, "viewDidLoad", v9);
  v12 = [v1 headerView];
  LODWORD(v13) = 1036831949;
  [v12 setTitleHyphenationFactor:v13];

  v14 = [v1 headerView];
  v15 = [v14 customIconContainerView];

  if (v15)
  {
    [v15 addSubview:*&v1[OBJC_IVAR____TtC8AppStore33OnboardingAdPrivacyViewController_adPrivacyHeaderIconView]];
  }

  v16 = [objc_opt_self() accessoryButton];
  v17._countAndFlagsBits = 0xD00000000000002ALL;
  v17._object = 0x8000000100810170;
  v18._countAndFlagsBits = 0;
  v18._object = 0xE000000000000000;
  localizedString(_:comment:)(v17, v18);
  v19 = String._bridgeToObjectiveC()();

  [v16 setTitle:v19 forState:0];

  [v16 addTarget:v1 action:"didTapLearnMore" forControlEvents:64];
  v20 = v16;
  v21 = String._bridgeToObjectiveC()();
  [v20 setAccessibilityIdentifier:v21];

  v22 = [v1 headerView];
  v57 = v20;
  [v22 addAccessoryButton:v20];

  v23 = v1[OBJC_IVAR____TtC8AppStore33OnboardingAdPrivacyViewController_buttonsStyle];
  v24 = objc_opt_self();
  v25 = [v24 boldButton];
  v26 = v25;
  if (v23)
  {
    v27 = objc_opt_self();
    v28 = v26;
    v29 = [v27 linkButton];
  }

  else
  {
    v54 = v25;
    v53 = [v24 boldButton];
    static UIButton.Configuration.glass()();
    v30 = objc_opt_self();
    v31 = [v30 systemBlueColor];
    UIButton.Configuration.baseForegroundColor.setter();
    v32 = [v30 systemGray5Color];
    v33 = UIButton.Configuration.background.modify();
    UIBackgroundConfiguration.backgroundColor.setter();
    v33(&v62, 0);
    v34 = *(v8 + 16);
    v34(v6, v11, v7);
    v55 = v1;
    v35 = v26;
    v36 = *(v8 + 56);
    v36(v6, 0, 1, v7);
    v37 = v54;
    UIButton.configuration.setter();

    v34(v6, v11, v7);
    v36(v6, 0, 1, v7);
    v26 = v35;
    v1 = v55;
    v38 = v53;
    UIButton.configuration.setter();
    v29 = v38;

    (*(v8 + 8))(v11, v7);
  }

  v39 = v26;
  v40._countAndFlagsBits = 0xD000000000000027;
  v40._object = 0x80000001008101D0;
  v41._countAndFlagsBits = 0;
  v41._object = 0xE000000000000000;
  localizedString(_:comment:)(v40, v41);
  v42 = String._bridgeToObjectiveC()();

  [v39 setTitle:v42 forState:0];

  [v39 addTarget:v1 action:"didTapTurnOn" forControlEvents:64];
  v62 = 0u;
  v63 = 0u;
  v60 = 0u;
  v61 = 0u;
  v43 = v58;
  static AutomationSemantics.onboarding(elementName:id:parentId:)();
  sub_10003D444(&v60);
  sub_10003D444(&v62);
  UIView.setAutomationSemantics(_:)();

  v44 = *(v56 + 8);
  v45 = v59;
  v44(v43, v59);
  v46 = [v1 buttonTray];
  [v46 addButton:v39];

  v47 = v29;
  v48._countAndFlagsBits = 0xD000000000000028;
  v48._object = 0x8000000100810200;
  v49._countAndFlagsBits = 0;
  v49._object = 0xE000000000000000;
  localizedString(_:comment:)(v48, v49);
  v50 = String._bridgeToObjectiveC()();

  [v47 setTitle:v50 forState:0];

  [v47 addTarget:v1 action:"didTapTurnOff" forControlEvents:64];
  v62 = 0u;
  v63 = 0u;
  v60 = 0u;
  v61 = 0u;
  static AutomationSemantics.onboarding(elementName:id:parentId:)();
  sub_10003D444(&v60);
  sub_10003D444(&v62);
  UIView.setAutomationSemantics(_:)();

  v44(v43, v45);
  v51 = [v1 buttonTray];
  [v51 addButton:v47];
}

uint64_t sub_10039CE80()
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
  sub_10039D130();
  sub_1000076C0();
  v12 = static OS_dispatch_queue.main.getter();
  v13 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = sub_10039D81C;
  aBlock[5] = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100007A08;
  aBlock[3] = &unk_1008C0620;
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

void sub_10039D130()
{
  v1 = v0;
  v2 = type metadata accessor for FloatingPointRoundingRule();
  v3 = *(v2 - 8);
  *&v4 = __chkstk_darwin(v2).n128_u64[0];
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [v1 headerView];
  v8 = [v7 customIconContainerView];

  if (v8)
  {
    v9 = *&v1[OBJC_IVAR____TtC8AppStore33OnboardingAdPrivacyViewController_adPrivacyHeaderIconView];
    [v8 bounds];
    v10 = OBJC_IVAR____TtC8AppStore33OnboardingAdPrivacyHeaderIconView_label;
    [*&v9[OBJC_IVAR____TtC8AppStore33OnboardingAdPrivacyHeaderIconView_label] sizeToFit];
    [*&v9[v10] frame];
    (*(v3 + 104))(v6, enum case for FloatingPointRoundingRule.up(_:), v2);
    CGSize.rounded(_:)();
    v12 = v11;
    v14 = v13;
    (*(v3 + 8))(v6, v2);
    [v8 bounds];
    v15 = CGRectGetMidX(v17) - v12 * 0.5;
    [v8 bounds];
    [v9 setFrame:{v15, CGRectGetMidY(v18) - v14 * 0.5, v12, v14}];
  }
}

void sub_10039D334(uint64_t a1)
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
  v17 = *(v15 + OBJC_IVAR____TtC8AppStore33OnboardingAdPrivacyViewController_adPrivacyHeaderIconView);

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
      sub_10039D130();
    }
  }
}

void sub_10039D598()
{
  v1 = String._bridgeToObjectiveC()();
  v2 = [objc_opt_self() presenterForPrivacySplashWithIdentifier:v1];

  if (v2)
  {
    [v2 setPresentingViewController:v0];
  }

  [v2 present];
}

_OWORD *sub_10039D824@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for BaseCollectionViewLayoutAttributes();
  v9.receiver = v2;
  v9.super_class = v5;
  objc_msgSendSuper2(&v9, "copyWithZone:", a1);
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  sub_1000073E8(v10, v8);
  if (!swift_dynamicCast())
  {
    return sub_100056164(v10, a2);
  }

  *(v7 + OBJC_IVAR____TtC8AppStore34BaseCollectionViewLayoutAttributes_parallaxY) = *&v2[OBJC_IVAR____TtC8AppStore34BaseCollectionViewLayoutAttributes_parallaxY];
  *(v7 + OBJC_IVAR____TtC8AppStore34BaseCollectionViewLayoutAttributes_rubberbandingDistance) = *&v2[OBJC_IVAR____TtC8AppStore34BaseCollectionViewLayoutAttributes_rubberbandingDistance];
  *(v7 + OBJC_IVAR____TtC8AppStore34BaseCollectionViewLayoutAttributes_isRubberbanding) = v2[OBJC_IVAR____TtC8AppStore34BaseCollectionViewLayoutAttributes_isRubberbanding];
  *(a2 + 24) = v5;
  *a2 = v7;
  return sub_100007000(v10);
}

BOOL sub_10039D978(uint64_t a1)
{
  sub_10006C234(a1, v18);
  v3 = v19;
  if (v19)
  {
    v4 = sub_10002A400(v18, v19);
    v5 = *(v3 - 8);
    v6 = __chkstk_darwin(v4);
    v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v5 + 16))(v8, v6);
    v9 = _bridgeAnythingToObjectiveC<A>(_:)();
    (*(v5 + 8))(v8, v3);
    sub_100007000(v18);
  }

  else
  {
    v9 = 0;
  }

  v10 = type metadata accessor for BaseCollectionViewLayoutAttributes();
  v17.receiver = v1;
  v17.super_class = v10;
  v11 = objc_msgSendSuper2(&v17, "isEqual:", v9);
  swift_unknownObjectRelease();
  if (!v11)
  {
    return 0;
  }

  sub_10006C234(a1, v18);
  if (!v19)
  {
    sub_10003D444(v18);
    return 0;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  if (*&v1[OBJC_IVAR____TtC8AppStore34BaseCollectionViewLayoutAttributes_parallaxY] != *&v16[OBJC_IVAR____TtC8AppStore34BaseCollectionViewLayoutAttributes_parallaxY] || v1[OBJC_IVAR____TtC8AppStore34BaseCollectionViewLayoutAttributes_isRubberbanding] != v16[OBJC_IVAR____TtC8AppStore34BaseCollectionViewLayoutAttributes_isRubberbanding])
  {

    return 0;
  }

  v13 = *&v1[OBJC_IVAR____TtC8AppStore34BaseCollectionViewLayoutAttributes_rubberbandingDistance];
  v14 = *&v16[OBJC_IVAR____TtC8AppStore34BaseCollectionViewLayoutAttributes_rubberbandingDistance];

  return v13 == v14;
}

id sub_10039DCB8(uint64_t a1, uint64_t a2, void *a3)
{
  *&v3[OBJC_IVAR____TtC8AppStore33BaseCollectionCompositionalLayout_indexPathsRequiringRubberbanding] = _swiftEmptySetSingleton;
  v5 = &v3[OBJC_IVAR____TtC8AppStore33BaseCollectionCompositionalLayout_pendingPrepareObserver];
  *v5 = 0;
  *(v5 + 1) = 0;
  aBlock[4] = a1;
  aBlock[5] = a2;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1002E9BD4;
  aBlock[3] = &unk_1008C0670;
  v6 = _Block_copy(aBlock);

  v39.receiver = v3;
  v39.super_class = type metadata accessor for BaseCollectionCompositionalLayout();
  v7 = objc_msgSendSuper2(&v39, "initWithSectionProvider:configuration:", v6, a3);
  _Block_release(v6);
  type metadata accessor for GradientSectionBackgroundView();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v9 = v7;
  static UICollectionReusableView.elementKind.getter();
  v10 = String._bridgeToObjectiveC()();

  [v9 registerClass:ObjCClassFromMetadata forDecorationViewOfKind:v10];

  type metadata accessor for MaterialGradientSectionBackgroundView();
  v11 = swift_getObjCClassFromMetadata();
  static UICollectionReusableView.elementKind.getter();
  v12 = String._bridgeToObjectiveC()();

  [v9 registerClass:v11 forDecorationViewOfKind:v12];

  type metadata accessor for ArtworkSectionBackgroundView();
  v13 = swift_getObjCClassFromMetadata();
  static UICollectionReusableView.elementKind.getter();
  v14 = String._bridgeToObjectiveC()();

  [v9 registerClass:v13 forDecorationViewOfKind:v14];

  type metadata accessor for InteractiveSectionBackgroundView(0);
  v15 = swift_getObjCClassFromMetadata();
  static UICollectionReusableView.elementKind.getter();
  v16 = String._bridgeToObjectiveC()();

  [v9 registerClass:v15 forDecorationViewOfKind:v16];

  type metadata accessor for EditorsChoiceBackgroundView();
  v17 = swift_getObjCClassFromMetadata();
  static UICollectionReusableView.elementKind.getter();
  v18 = String._bridgeToObjectiveC()();

  [v9 registerClass:v17 forDecorationViewOfKind:v18];

  v19 = ASKBuildTypeGetCurrent();
  v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v22 = v21;
  if (v20 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v22 == v23)
  {
    goto LABEL_3;
  }

  v24 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v24)
  {
    goto LABEL_5;
  }

  v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v30 = v29;
  if (v28 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v30 == v31)
  {
LABEL_3:

    goto LABEL_6;
  }

  v32 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v32)
  {
LABEL_5:

    goto LABEL_6;
  }

  v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v35 = v34;
  if (v33 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v35 == v36)
  {
  }

  else
  {
    v37 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v37 & 1) == 0)
    {

      goto LABEL_8;
    }
  }

  type metadata accessor for LocalPreferences();
  static LocalPreferences.currentApplication.getter();
  if (qword_10096E988 != -1)
  {
    swift_once();
  }

  v38 = sub_10002849C(&qword_100979740, &qword_1007D00E0);
  sub_1000056A8(v38, qword_1009D2A68);
  Preferences.subscript.getter();

  if (LOBYTE(aBlock[0]) == 2 || (aBlock[0] & 1) == 0)
  {

    goto LABEL_7;
  }

LABEL_6:
  type metadata accessor for TodayDebugSectionBackgroundView();
  v25 = swift_getObjCClassFromMetadata();
  static UICollectionReusableView.elementKind.getter();
  v26 = String._bridgeToObjectiveC()();

  [v9 registerClass:v25 forDecorationViewOfKind:v26];

LABEL_7:

LABEL_8:

  return v9;
}

void *sub_10039E290()
{
  v1 = v0;
  v2 = type metadata accessor for IndexPath();
  v3 = *(v2 - 8);
  *&v4 = __chkstk_darwin(v2).n128_u64[0];
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [v1 collectionView];
  if (v7)
  {
    v8 = v7;
    [v7 bounds];
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v16 = v15;
  }

  else
  {
    v10 = 0.0;
    v12 = 0.0;
    v14 = 0.0;
    v16 = 0.0;
  }

  v17 = [v1 layoutAttributesForElementsInRect:{v10, v12, v14, v16}];
  if (v17)
  {
    v18 = v17;
    sub_10025A08C();
    v19 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v19 >> 62)
    {
LABEL_26:
      v20 = _CocoaArrayWrapper.endIndex.getter();
      if (v20)
      {
LABEL_7:
        v32 = v2;
        v2 = 0;
        v31 = (v3 + 8);
        v3 = _swiftEmptyArrayStorage;
        do
        {
          v21 = v2;
          while (1)
          {
            if ((v19 & 0xC000000000000001) != 0)
            {
              v22 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              if (v21 >= *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_25;
              }

              v22 = *(v19 + 8 * v21 + 32);
            }

            v23 = v22;
            v2 = v21 + 1;
            if (__OFADD__(v21, 1))
            {
              __break(1u);
LABEL_25:
              __break(1u);
              goto LABEL_26;
            }

            if (![v22 representedElementCategory])
            {
              break;
            }

            ++v21;
            if (v2 == v20)
            {
              goto LABEL_28;
            }
          }

          v24 = [v23 indexPath];
          static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();

          v30 = IndexPath.section.getter();
          (*v31)(v6, v32);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v3 = sub_1000343B8(0, *(v3 + 2) + 1, 1, v3);
          }

          v26 = *(v3 + 2);
          v25 = *(v3 + 3);
          if (v26 >= v25 >> 1)
          {
            v3 = sub_1000343B8((v25 > 1), v26 + 1, 1, v3);
          }

          *(v3 + 2) = v26 + 1;
          *&v3[8 * v26 + 32] = v30;
        }

        while (v2 != v20);
        goto LABEL_28;
      }
    }

    else
    {
      v20 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v20)
      {
        goto LABEL_7;
      }
    }

    v3 = _swiftEmptyArrayStorage;
LABEL_28:

    v27 = sub_10039FFF0(v3);

    return v27;
  }

  return _swiftEmptySetSingleton;
}

void *sub_10039E5A8(uint64_t a1, double a2, double a3, double a4, double a5)
{
  v19.receiver = v5;
  v19.super_class = type metadata accessor for BaseCollectionCompositionalLayout();
  result = objc_msgSendSuper2(&v19, "layoutAttributesForElementsInRect:", a2, a3, a4, a5);
  if (result)
  {
    v11 = result;
    sub_10025A08C();
    v12 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v12 >> 62)
    {
      goto LABEL_15;
    }

    for (i = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
    {
      v18 = _swiftEmptyArrayStorage;
      v14 = v5;
      v5 = &v18;
      result = specialized ContiguousArray.reserveCapacity(_:)();
      if (i < 0)
      {
        __break(1u);
        return result;
      }

      v15 = 0;
      while (1)
      {
        if ((v12 & 0xC000000000000001) != 0)
        {
          v16 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          goto LABEL_7;
        }

        if ((v15 & 0x8000000000000000) != 0)
        {
          break;
        }

        if (v15 >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_14;
        }

        v16 = *(v12 + 8 * v15 + 32);
LABEL_7:
        v17 = v16;
        ++v15;
        sub_10039EAF0(v16);

        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v5 = &v18;
        specialized ContiguousArray._endMutation()();
        if (i == v15)
        {

          return v18;
        }
      }

      __break(1u);
LABEL_14:
      __break(1u);
LABEL_15:
      ;
    }

    return _swiftEmptyArrayStorage;
  }

  return result;
}

char *sub_10039E980(void *a1, uint64_t a2, void *a3, uint64_t a4, SEL *a5)
{
  v8 = type metadata accessor for IndexPath();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = a3;
  v13 = a1;
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  v15 = type metadata accessor for BaseCollectionCompositionalLayout();
  v19.receiver = v13;
  v19.super_class = v15;
  v16 = objc_msgSendSuper2(&v19, *a5, v12, isa);

  if (v16)
  {
    v17 = sub_10039EAF0(v16);

    v13 = v16;
  }

  else
  {
    v17 = 0;
  }

  (*(v9 + 8))(v11, v8);

  return v17;
}

char *sub_10039EAF0(void *a1)
{
  v24 = a1;
  v2 = type metadata accessor for IndexPath();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *&v1[OBJC_IVAR____TtC8AppStore33BaseCollectionCompositionalLayout_indexPathsRequiringRubberbanding];

  v7 = [v24 indexPath];
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();

  LOBYTE(v7) = sub_1002964C8(v5, v6);

  (*(v3 + 8))(v5, v2);
  if (v7)
  {
    v8 = [v1 collectionView];
    if (v8)
    {
      v9 = v8;
      type metadata accessor for BaseCollectionViewLayoutAttributes();
      v10 = swift_dynamicCastClass();
      if (v10)
      {
        v11 = v10;
        v12 = v24;
        v13 = v9;
        [v13 contentOffset];
        v15 = v14;
        v16 = -v14;
        if (v14 > 0.0)
        {
          v16 = 0.0;
        }

        *&v11[OBJC_IVAR____TtC8AppStore34BaseCollectionViewLayoutAttributes_rubberbandingDistance] = v16;
        v17 = v12;
        [v11 frame];
        [v11 setFrame:?];
        [v11 frame];
        [v11 setFrame:?];
        v11[OBJC_IVAR____TtC8AppStore34BaseCollectionViewLayoutAttributes_isRubberbanding] = v15 < 0.0;
        if (v15 <= 0.0)
        {

          *&v11[OBJC_IVAR____TtC8AppStore34BaseCollectionViewLayoutAttributes_parallaxY] = 0;
        }

        else
        {
          [v13 contentOffset];
          v19 = v18;

          v20 = v19 * 0.28;
          if (v19 * 0.28 < 0.0)
          {
            v20 = 0.0;
          }

          *&v11[OBJC_IVAR____TtC8AppStore34BaseCollectionViewLayoutAttributes_parallaxY] = v20;
        }

        return v11;
      }
    }
  }

  v21 = v24;

  return v21;
}

uint64_t sub_10039EE38(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v10 = [v4 collectionView];
  if (!v10)
  {
    v30.receiver = v4;
    v30.super_class = type metadata accessor for BaseCollectionCompositionalLayout();
    return objc_msgSendSuper2(&v30, "shouldInvalidateLayoutForBoundsChange:", a1, a2, a3, a4);
  }

  v11 = v10;
  v12 = OBJC_IVAR____TtC8AppStore33BaseCollectionCompositionalLayout_indexPathsRequiringRubberbanding;
  *&v4[OBJC_IVAR____TtC8AppStore33BaseCollectionCompositionalLayout_indexPathsRequiringRubberbanding] = _swiftEmptySetSingleton;

  if ([v11 delegate])
  {
    ObjectType = swift_getObjectType();
    v14 = swift_conformsToProtocol2();
    if (v14)
    {
      v15 = (*(v14 + 8))(v11, ObjectType, v14);
      v16 = v11;
      v17 = sub_1003A02E8(v15, v16);
      swift_unknownObjectRelease();

      *&v4[v12] = v17;
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }

  v19 = [v4 collectionView];
  if (v19)
  {
    v20 = v19;
    [v19 bounds];
    v22 = v21;
    v24 = v23;
    v26 = v25;

    if (v24 != a3)
    {
      goto LABEL_18;
    }
  }

  else
  {
    v22 = 0.0;
    v26 = 0.0;
    if (a3 != 0.0)
    {
      goto LABEL_18;
    }
  }

  if (v26 == a4 && (!*(*&v5[v12] + 16) || v22 == a2))
  {
    v29.receiver = v5;
    v29.super_class = type metadata accessor for BaseCollectionCompositionalLayout();
    v28 = objc_msgSendSuper2(&v29, "shouldInvalidateLayoutForBoundsChange:", a1, a2, a3, a4);

    return v28;
  }

LABEL_18:

  return 1;
}

id sub_10039F0D0(double a1, double a2, double a3, double a4)
{
  v9 = [v4 collectionView];
  if (v9)
  {
    v10 = v9;
    [v9 bounds];
    v12 = v11;
    v14 = v13;
  }

  else
  {
    v12 = 0.0;
    v14 = 0.0;
  }

  if (v12 == a3 && v14 == a4)
  {
    v16 = OBJC_IVAR____TtC8AppStore33BaseCollectionCompositionalLayout_indexPathsRequiringRubberbanding;
    if (*(*&v4[OBJC_IVAR____TtC8AppStore33BaseCollectionCompositionalLayout_indexPathsRequiringRubberbanding] + 16))
    {
      v17 = [objc_allocWithZone(UICollectionViewLayoutInvalidationContext) init];
      v18 = *&v4[v16];
      v19 = *(v18 + 16);
      if (!v19 || (v4 = sub_100035494(*(v18 + 16), 0), v20 = *(type metadata accessor for IndexPath() - 8), sub_10039FD4C(&v28, &v4[(*(v20 + 80) + 32) & ~*(v20 + 80)], v19, v18), v22 = v21, v23 = v28, , sub_100081680(v23), v22 == v19))
      {
        type metadata accessor for IndexPath();
        isa = Array._bridgeToObjectiveC()().super.isa;

        [v17 invalidateItemsAtIndexPaths:isa];

        return v17;
      }

      __break(1u);
    }
  }

  v24 = type metadata accessor for BaseCollectionCompositionalLayout();
  v29.receiver = v4;
  v29.super_class = v24;
  v25 = objc_msgSendSuper2(&v29, "invalidationContextForBoundsChange:", a1, a2, a3, a4);

  return v25;
}

id sub_10039F460(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, "dealloc");
}

unint64_t *sub_10039F50C(unint64_t *result, uint64_t a2, uint64_t a3, void *a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v8 = a4;
    sub_1003A0064(v7, a2, a3, v8);
    v10 = v9;

    return v10;
  }

  return result;
}

uint64_t sub_10039F5A4(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = type metadata accessor for IndexPath();
  v8 = *(v35 - 8);
  __chkstk_darwin(v35);
  v34 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a3)
  {

    return _swiftEmptySetSingleton;
  }

  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  sub_10002849C(&unk_100982BD0, &qword_1007B3328);
  result = static _SetStorage.allocate(capacity:)();
  v10 = result;
  if (a2 < 1)
  {
    v12 = 0;
  }

  else
  {
    v12 = *a1;
  }

  v13 = 0;
  v14 = result + 56;
  v30 = (v8 + 32);
  v31 = v8 + 16;
  v29 = a4;
  while (v12)
  {
    v15 = __clz(__rbit64(v12));
    v32 = (v12 - 1) & v12;
LABEL_16:
    v18 = *(a4 + 48);
    v33 = *(v8 + 72);
    (*(v8 + 16))(v34, v18 + v33 * (v15 | (v13 << 6)), v35);
    sub_1003A0698(&qword_100970D38, &type metadata accessor for IndexPath, &protocol conformance descriptor for IndexPath);
    result = dispatch thunk of Hashable._rawHashValue(seed:)();
    v19 = -1 << *(v10 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v14 + 8 * (v20 >> 6))) == 0)
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
        v26 = *(v14 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v14 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v14 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    result = (*v30)(*(v10 + 48) + v22 * v33, v34, v35);
    ++*(v10 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v29;
    v12 = v32;
    if (!a3)
    {
LABEL_28:

      return v10;
    }
  }

  v16 = v13;
  while (1)
  {
    v13 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v13 >= a2)
    {
      goto LABEL_28;
    }

    v17 = a1[v13];
    ++v16;
    if (v17)
    {
      v15 = __clz(__rbit64(v17));
      v32 = (v17 - 1) & v17;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_10039F8CC(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = type metadata accessor for AdamId();
  v8 = *(v35 - 8);
  __chkstk_darwin(v35);
  v34 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a3)
  {

    return _swiftEmptySetSingleton;
  }

  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  sub_10002849C(&qword_100982C40, qword_1007B3330);
  result = static _SetStorage.allocate(capacity:)();
  v10 = result;
  if (a2 < 1)
  {
    v12 = 0;
  }

  else
  {
    v12 = *a1;
  }

  v13 = 0;
  v14 = result + 56;
  v30 = (v8 + 32);
  v31 = v8 + 16;
  v29 = a4;
  while (v12)
  {
    v15 = __clz(__rbit64(v12));
    v32 = (v12 - 1) & v12;
LABEL_16:
    v18 = *(a4 + 48);
    v33 = *(v8 + 72);
    (*(v8 + 16))(v34, v18 + v33 * (v15 | (v13 << 6)), v35);
    sub_1003A0698(&qword_100970CD8, &type metadata accessor for AdamId, &protocol conformance descriptor for AdamId);
    result = dispatch thunk of Hashable._rawHashValue(seed:)();
    v19 = -1 << *(v10 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v14 + 8 * (v20 >> 6))) == 0)
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
        v26 = *(v14 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v14 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v14 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    result = (*v30)(*(v10 + 48) + v22 * v33, v34, v35);
    ++*(v10 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v29;
    v12 = v32;
    if (!a3)
    {
LABEL_28:

      return v10;
    }
  }

  v16 = v13;
  while (1)
  {
    v13 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v13 >= a2)
    {
      goto LABEL_28;
    }

    v17 = a1[v13];
    ++v16;
    if (v17)
    {
      v15 = __clz(__rbit64(v17));
      v32 = (v17 - 1) & v17;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

void *sub_10039FBF4(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = (*(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

void sub_10039FD4C(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v40 = type metadata accessor for IndexPath();
  v42 = *(v40 - 8);
  __chkstk_darwin(v40);
  v41 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v9);
  v39 = &v33 - v11;
  v12 = a4 + 56;
  v13 = -1 << *(a4 + 32);
  if (-v13 < 64)
  {
    v14 = ~(-1 << -v13);
  }

  else
  {
    v14 = -1;
  }

  v15 = v14 & *(a4 + 56);
  if (!a2)
  {
LABEL_19:
    v31 = 0;
LABEL_25:
    *a1 = a4;
    *(a1 + 8) = v12;
    *(a1 + 16) = ~v13;
    *(a1 + 24) = v31;
    *(a1 + 32) = v15;
    return;
  }

  if (!a3)
  {
    v31 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v33 = -1 << *(a4 + 32);
    v34 = a1;
    v16 = 0;
    v17 = (63 - v13) >> 6;
    v35 = v42 + 32;
    v36 = v42 + 16;
    a1 = 1;
    v37 = a4 + 56;
    v38 = a3;
    v18 = v39;
    while (v15)
    {
      v44 = a2;
LABEL_15:
      v21 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
      v43 = v16;
      v22 = a4;
      v23 = *(a4 + 48);
      v24 = v41;
      v25 = v42;
      v26 = *(v42 + 72);
      v27 = v40;
      (*(v42 + 16))(v41, v23 + v26 * (v21 | (v16 << 6)), v40, v10);
      v28 = *(v25 + 32);
      v28(v18, v24, v27);
      v29 = v44;
      v28(v44, v18, v27);
      if (a1 == v38)
      {
        v13 = v33;
        a1 = v34;
        a4 = v22;
        v31 = v43;
        v12 = v37;
        goto LABEL_25;
      }

      a2 = &v29[v26];
      v30 = __OFADD__(a1++, 1);
      a4 = v22;
      v16 = v43;
      v12 = v37;
      if (v30)
      {
        __break(1u);
        goto LABEL_19;
      }
    }

    v19 = v16;
    while (1)
    {
      v20 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v20 >= v17)
      {
        break;
      }

      v15 = *(v12 + 8 * v20);
      ++v19;
      if (v15)
      {
        v44 = a2;
        v16 = v20;
        goto LABEL_15;
      }
    }

    v15 = 0;
    if (v17 <= v16 + 1)
    {
      v32 = v16 + 1;
    }

    else
    {
      v32 = v17;
    }

    v31 = v32 - 1;
    v13 = v33;
    a1 = v34;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
}

uint64_t sub_10039FFF0(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = Set.init(minimumCapacity:)();
  v7 = result;
  if (v2)
  {
    v4 = (a1 + 32);
    do
    {
      v5 = *v4++;
      sub_100081A6C(&v6, v5);
      --v2;
    }

    while (v2);
    return v7;
  }

  return result;
}

void sub_1003A0064(unint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v29 = a2;
  v30 = a1;
  v6 = type metadata accessor for IndexPath();
  v8 = __chkstk_darwin(v6);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = 0;
  v11 = 0;
  v12 = a3 + 56;
  v13 = 1 << *(a3 + 32);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & *(a3 + 56);
  v16 = (v13 + 63) >> 6;
  v36 = v7;
  v34 = (v7 + 8);
  v35 = v7 + 16;
  while (v15)
  {
    v17 = __clz(__rbit64(v15));
    v15 &= v15 - 1;
LABEL_12:
    v20 = v17 | (v11 << 6);
    v21 = *(a3 + 48);
    v22 = *(v36 + 72);
    v33 = v20;
    (*(v36 + 16))(v10, v21 + v22 * v20, v6, v8);
    v23 = [a4 numberOfSections];
    if (IndexPath.section.getter() >= v23)
    {
      (*v34)(v10, v6);
    }

    else
    {
      v32 = [a4 numberOfItemsInSection:IndexPath.section.getter()];
      v24 = a4;
      v25 = a3;
      v26 = IndexPath.item.getter();
      (*v34)(v10, v6);
      v27 = v26 < v32;
      a3 = v25;
      a4 = v24;
      if (v27)
      {
        *(v30 + ((v33 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v33;
        if (__OFADD__(v31++, 1))
        {
          __break(1u);
LABEL_18:

          sub_10039F5A4(v30, v29, v31, a3);
          return;
        }
      }
    }
  }

  v18 = v11;
  while (1)
  {
    v11 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v11 >= v16)
    {
      goto LABEL_18;
    }

    v19 = *(v12 + 8 * v11);
    ++v18;
    if (v19)
    {
      v17 = __clz(__rbit64(v19));
      v15 = (v19 - 1) & v19;
      goto LABEL_12;
    }
  }

  __break(1u);
}

uint64_t sub_1003A02E8(uint64_t a1, void *a2)
{
  v3 = v2;
  v38 = type metadata accessor for IndexPath();
  v6 = *(v38 - 8);
  __chkstk_darwin(v38);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = a1;
  LOBYTE(v7) = *(a1 + 32);
  LODWORD(a1) = v7 & 0x3F;
  v9 = ((1 << v7) + 63) >> 6;
  v10 = 8 * v9;
  v11 = a2;
  if (a1 > 0xD)
  {
    goto LABEL_21;
  }

  while (1)
  {
    v37 = v11;
    v30 = v9;
    v31 = v3;
    v29 = &v29;
    __chkstk_darwin(v11);
    v32 = &v29 - ((v10 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v32, v10);
    v10 = 0;
    v12 = v38;
    v3 = v39 + 56;
    v13 = 1 << *(v39 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v39 + 56);
    v9 = (v13 + 63) >> 6;
    v35 = v6 + 16;
    v36 = v6;
    v33 = 0;
    v34 = (v6 + 8);
    while (v15)
    {
      v16 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_13:
      v6 = v16 | (v10 << 6);
      (*(v36 + 16))(v8, *(v39 + 48) + *(v36 + 72) * v6, v12);
      v19 = v37;
      v20 = [v37 numberOfSections];
      if (IndexPath.section.getter() >= v20)
      {
        v11 = (*v34)(v8, v12);
      }

      else
      {
        v21 = [v19 numberOfItemsInSection:IndexPath.section.getter()];
        v22 = IndexPath.item.getter();
        v11 = (*v34)(v8, v38);
        v12 = v38;
        if (v22 < v21)
        {
          *&v32[(v6 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v6;
          if (__OFADD__(v33++, 1))
          {
            __break(1u);
LABEL_18:
            v24 = sub_10039F5A4(v32, v30, v33, v39);

            return v24;
          }
        }
      }
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v9)
      {
        goto LABEL_18;
      }

      v18 = *(v3 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v15 = (v18 - 1) & v18;
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_21:
    v26 = v11;

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }

    v11 = v26;
  }

  v27 = swift_slowAlloc();
  v28 = v26;
  v24 = sub_10039F50C(v27, v9, v39, v28);

  return v24;
}

uint64_t sub_1003A0698(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

id sub_1003A06E0(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5, double a6, double a7)
{
  v8 = v7;
  v86 = a3;
  v83 = a2;
  v74 = type metadata accessor for InAppPurchaseTheme();
  v82 = *(v74 - 8);
  __chkstk_darwin(v74);
  v84 = &v71 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v85 = &v71 - v16;
  v17 = sub_10002849C(&unk_100970E00, "ο\a");
  __chkstk_darwin(v17 - 8);
  v81 = &v71 - v18;
  v79 = type metadata accessor for OfferButtonSubtitlePosition();
  v75 = *(v79 - 8);
  __chkstk_darwin(v79);
  v76 = &v71 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = sub_10002849C(&unk_1009701A0, &unk_1007B17F0);
  v78 = *(v80 - 8);
  __chkstk_darwin(v80);
  v77 = &v71 - v20;
  v21 = sub_10002849C(&unk_100973230, &unk_1007B17E0);
  *&v22 = __chkstk_darwin(v21 - 8).n128_u64[0];
  v24 = &v71 - v23;
  v25 = [v7 contentView];
  [v25 setLayoutMargins:{a4, a5, a6, a7}];

  v26 = a1;
  Lockup.title.getter();
  v28 = v27;
  v29 = v8;
  v30 = *&v8[OBJC_IVAR____TtC8AppStore43InAppPurchaseSearchResultCollectionViewCell_titleLabel];
  if (v27)
  {
    v31 = String._bridgeToObjectiveC()();
  }

  else
  {
    v31 = 0;
  }

  [v30 setText:v31];

  [v30 setHidden:v28 == 0];
  [v29 setNeedsLayout];
  v32 = InAppPurchaseLockup.isSubscription.getter();
  v33 = *&v29[OBJC_IVAR____TtC8AppStore43InAppPurchaseSearchResultCollectionViewCell_inAppPurchaseLabel];
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

  InAppPurchaseLockup.parent.getter();
  v39 = Lockup.title.getter();
  v41 = v40;

  if (v41)
  {
    v42._countAndFlagsBits = 0xD000000000000035;
    v42._object = 0x800000010080C060;
    v43._countAndFlagsBits = 0;
    v43._object = 0xE000000000000000;
    localizedString(_:comment:)(v42, v43);
    sub_10002849C(&unk_10097E350, &unk_1007DEA00);
    v44 = swift_allocObject();
    *(v44 + 16) = xmmword_1007B10D0;
    *(v44 + 56) = &type metadata for String;
    *(v44 + 64) = sub_1000BFD1C();
    *(v44 + 32) = v39;
    *(v44 + 40) = v41;
    String.init(format:_:)();

    v45 = *&v29[OBJC_IVAR____TtC8AppStore43InAppPurchaseSearchResultCollectionViewCell_subtitleLabel];

    v46 = String._bridgeToObjectiveC()();

    [v45 setText:v46];

    [v45 setHidden:0];
  }

  else
  {
    v47 = *&v29[OBJC_IVAR____TtC8AppStore43InAppPurchaseSearchResultCollectionViewCell_subtitleLabel];
    [v47 setText:0];
    [v47 setHidden:1];
  }

  [v29 setNeedsLayout];
  InAppPurchaseLockup.descriptionText.getter();
  v49 = *&v29[OBJC_IVAR____TtC8AppStore43InAppPurchaseSearchResultCollectionViewCell_inAppDescription];
  if (v48)
  {
    v50 = String._bridgeToObjectiveC()();
    [v49 setText:v50];

    [v49 setHidden:0];
  }

  else
  {
    [*&v29[OBJC_IVAR____TtC8AppStore43InAppPurchaseSearchResultCollectionViewCell_inAppDescription] setText:0];
    [v49 setHidden:1];
  }

  [v29 setNeedsLayout];
  v51 = Lockup.offerDisplayProperties.getter();
  v73 = v26;
  v52 = Lockup.buttonAction.getter();
  v53 = sub_10002849C(&unk_100973240, qword_1007B2220);
  (*(*(v53 - 8) + 56))(v24, 1, 1, v53);
  v54 = v75;
  v55 = v79;
  (*(v75 + 104))(v76, enum case for OfferButtonSubtitlePosition.below(_:), v79);
  (*(v54 + 56))(v81, 1, 1, v55);
  sub_1003A1084(&qword_100987130, &type metadata accessor for OfferButtonSubtitlePosition, &protocol conformance descriptor for OfferButtonSubtitlePosition);
  v56 = v77;
  AccessibilityConditional.init(value:axValue:)();
  sub_10064AFA4(v51, v52, 0, v24, v56, v83, 0, 0);

  (*(v78 + 8))(v56, v80);
  sub_10025B2D0(v24);
  v72 = v29;
  v57 = *&v29[OBJC_IVAR____TtC8AppStore43InAppPurchaseSearchResultCollectionViewCell_iconView];
  v87.value.super.isa = 0;
  v87.is_nil = 0;
  ArtworkView.setImage(image:animated:)(v87, v58);
  v88.value.super.isa = 0;
  v88.is_nil = 0;
  ArtworkView.setImage(image:animated:)(v88, v59);
  type metadata accessor for ArtworkView();
  sub_1003A1084(&qword_100970E80, &type metadata accessor for ArtworkView, &protocol conformance descriptor for ArtworkView);
  v60 = v86;
  ArtworkLoader.forgetFetch<A>(forView:deprioritizingFetch:)();
  ArtworkLoader.forgetFetch<A>(forView:deprioritizingFetch:)();
  v83 = *&v29[OBJC_IVAR____TtC8AppStore43InAppPurchaseSearchResultCollectionViewCell_bodyBackgroundColor];
  v61 = v85;
  InAppPurchaseLockup.theme.getter();
  v62 = OBJC_IVAR____TtC8AppStore17InAppPurchaseView_theme;
  swift_beginAccess();
  v63 = v82;
  v64 = v74;
  (*(v82 + 24))(&v57[v62], v61, v74);
  swift_endAccess();
  v65 = *(v63 + 16);
  v66 = v84;
  v65(v84, &v57[v62], v64);
  sub_1002EBEE4(v66);
  v67 = *(v63 + 8);
  v67(v66, v64);
  v67(v61, v64);
  v68 = v72;
  [v57 setBackgroundColor:v83];
  sub_1001BCDCC(93.0, 93.0, v73, v57, v60);
  v65(v61, &v57[v62], v64);
  sub_1002EBEE4(v61);
  v67(v61, v64);
  [v57 setNeedsLayout];
  sub_100028BB8();
  v69 = static UIColor.defaultBackground.getter();
  [v68 setBackgroundColor:v69];

  return [v68 setNeedsLayout];
}

uint64_t sub_1003A1084(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

char *sub_1003A10CC(double a1, double a2, double a3, double a4)
{
  v9 = type metadata accessor for MediaView();
  v10 = objc_allocWithZone(v9);
  *&v10[OBJC_IVAR____TtC8AppStore9MediaView_reflectionView] = 0;
  *&v10[OBJC_IVAR____TtC8AppStore9MediaView_reflectionAmount] = 0;
  v10[OBJC_IVAR____TtC8AppStore9MediaView_isRubberbanding] = 0;
  *&v10[OBJC_IVAR____TtC8AppStore9MediaView_reflectionScale] = 0x3FF0000000000000;
  *&v10[OBJC_IVAR____TtC8AppStore9MediaView_reflectionOffset] = 0;
  v11 = type metadata accessor for UberContentContainer();
  v12 = objc_allocWithZone(v11);
  *&v12[OBJC_IVAR____TtC8AppStoreP33_ECECB79BEF5D802E6E21EF3AE112F28D20UberContentContainer_contents] = 0;
  *&v12[OBJC_IVAR____TtC8AppStoreP33_ECECB79BEF5D802E6E21EF3AE112F28D20UberContentContainer_parallaxY] = 0;
  v13 = &v12[OBJC_IVAR____TtC8AppStoreP33_ECECB79BEF5D802E6E21EF3AE112F28D20UberContentContainer_prominentPlayButtonCenterYOverride];
  *v13 = 0;
  v13[8] = 1;
  v14 = &v12[OBJC_IVAR____TtC8AppStoreP33_ECECB79BEF5D802E6E21EF3AE112F28D20UberContentContainer_systemBackgroundExtensionOutsets];
  *v14 = 0u;
  *(v14 + 1) = 0u;
  v14[32] = 1;
  *&v12[OBJC_IVAR____TtC8AppStoreP33_ECECB79BEF5D802E6E21EF3AE112F28D20UberContentContainer_backgroundExtensionView] = 0;
  v29.receiver = v12;
  v29.super_class = v11;
  v15 = objc_msgSendSuper2(&v29, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v16 = v15;
  if (*&v15[OBJC_IVAR____TtC8AppStoreP33_ECECB79BEF5D802E6E21EF3AE112F28D20UberContentContainer_backgroundExtensionView])
  {
    [v15 addSubview:?];
  }

  v17 = OBJC_IVAR____TtC8AppStore30HeroCarouselItemBackgroundView_mediaViewContainer;
  *&v10[OBJC_IVAR____TtC8AppStore9MediaView_contentContainer] = v16;
  v28.receiver = v10;
  v28.super_class = v9;
  v18 = objc_msgSendSuper2(&v28, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  [v18 setClipsToBounds:1];
  [v18 addSubview:*&v18[OBJC_IVAR____TtC8AppStore9MediaView_contentContainer]];

  *&v4[v17] = v18;
  v19 = OBJC_IVAR____TtC8AppStore30HeroCarouselItemBackgroundView_artworkView;
  type metadata accessor for ArtworkView();
  *&v4[v19] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v27.receiver = v4;
  v27.super_class = type metadata accessor for HeroCarouselItemBackgroundView();
  v20 = objc_msgSendSuper2(&v27, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v24 = v20;
  [v24 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  [v24 setUserInteractionEnabled:0];
  v25 = [v24 layer];
  [v25 setAllowsGroupBlending:0];

  [v24 addSubview:*&v24[OBJC_IVAR____TtC8AppStore30HeroCarouselItemBackgroundView_mediaViewContainer]];
  return v24;
}

void sub_1003A13D0(void *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC8AppStore30HeroCarouselItemBackgroundView_mediaViewContainer);
  v4 = OBJC_IVAR____TtC8AppStore9MediaView_contentContainer;
  v5 = *(v3 + OBJC_IVAR____TtC8AppStore9MediaView_contentContainer);
  if (a1)
  {
    sub_1003A2BF8(&qword_100973190, 255, type metadata accessor for VideoView, &unk_1007D1B30);
    v6 = a1;
    v7 = [v6 superview];
    if (v7)
    {
      v8 = v7;
      sub_100005744(0, &qword_100972EB0, UIView_ptr);
      v9 = v5;
      v10 = static NSObject.== infix(_:_:)();

      if (v10)
      {
        [v6 removeFromSuperview];
      }
    }

    else
    {
    }
  }

  v11 = *&v5[OBJC_IVAR____TtC8AppStoreP33_ECECB79BEF5D802E6E21EF3AE112F28D20UberContentContainer_contents];
  *&v5[OBJC_IVAR____TtC8AppStoreP33_ECECB79BEF5D802E6E21EF3AE112F28D20UberContentContainer_contents] = a1;
  v16 = a1;
  sub_10047C6C8(v11);

  v12 = *(*(v3 + v4) + OBJC_IVAR____TtC8AppStoreP33_ECECB79BEF5D802E6E21EF3AE112F28D20UberContentContainer_contents);
  if (v12)
  {
    type metadata accessor for VideoView(0);
    v13 = swift_dynamicCastClass();
    if (v13)
    {
      v14 = v13;
      v15 = v12;
      [v14 setUserInteractionEnabled:0];
    }
  }
}

void (*sub_1003A1578(uint64_t *a1))(uint64_t a1, char a2)
{
  v3 = *(v1 + OBJC_IVAR____TtC8AppStore30HeroCarouselItemBackgroundView_mediaViewContainer);
  v4 = OBJC_IVAR____TtC8AppStore9MediaView_contentContainer;
  a1[1] = v3;
  a1[2] = v4;
  v5 = *(*(v3 + v4) + OBJC_IVAR____TtC8AppStoreP33_ECECB79BEF5D802E6E21EF3AE112F28D20UberContentContainer_contents);
  if (v5)
  {
    type metadata accessor for VideoView(0);
    v6 = swift_dynamicCastClass();
    if (v6)
    {
      v7 = v5;
    }
  }

  else
  {
    v6 = 0;
  }

  *a1 = v6;
  return sub_1003A1614;
}

void sub_1003A1614(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*(a1 + 8) + *(a1 + 16));
  if (a2)
  {
    if (v3)
    {
      sub_1003A2BF8(&qword_100973190, 255, type metadata accessor for VideoView, &unk_1007D1B30);
      v5 = v3;
      v6 = [v5 superview];
      if (v6)
      {
        v7 = v6;
        sub_100005744(0, &qword_100972EB0, UIView_ptr);
        v8 = v4;
        v9 = static NSObject.== infix(_:_:)();

        if (v9)
        {
          [v5 removeFromSuperview];
        }
      }

      else
      {
      }
    }

    v16 = *(a1 + 8);
    v15 = *(a1 + 16);
    v17 = *&v4[OBJC_IVAR____TtC8AppStoreP33_ECECB79BEF5D802E6E21EF3AE112F28D20UberContentContainer_contents];
    *&v4[OBJC_IVAR____TtC8AppStoreP33_ECECB79BEF5D802E6E21EF3AE112F28D20UberContentContainer_contents] = v3;
    v18 = v3;
    sub_10047C6C8(v17);

    v19 = *(*(v16 + v15) + OBJC_IVAR____TtC8AppStoreP33_ECECB79BEF5D802E6E21EF3AE112F28D20UberContentContainer_contents);
    if (v19)
    {
      type metadata accessor for VideoView(0);
      v20 = swift_dynamicCastClass();
      if (v20)
      {
        v21 = v20;
        v22 = v19;
        [v21 setUserInteractionEnabled:0];
      }
    }

    v23 = *a1;
  }

  else
  {
    if (v3)
    {
      sub_1003A2BF8(&qword_100973190, 255, type metadata accessor for VideoView, &unk_1007D1B30);
      v10 = v3;
      v11 = [v10 superview];
      if (v11)
      {
        v12 = v11;
        sub_100005744(0, &qword_100972EB0, UIView_ptr);
        v13 = v4;
        v14 = static NSObject.== infix(_:_:)();

        if (v14)
        {
          [v10 removeFromSuperview];
        }
      }

      else
      {
      }
    }

    v25 = *(a1 + 8);
    v24 = *(a1 + 16);
    v26 = *&v4[OBJC_IVAR____TtC8AppStoreP33_ECECB79BEF5D802E6E21EF3AE112F28D20UberContentContainer_contents];
    *&v4[OBJC_IVAR____TtC8AppStoreP33_ECECB79BEF5D802E6E21EF3AE112F28D20UberContentContainer_contents] = v3;
    v31 = v3;
    sub_10047C6C8(v26);

    v27 = *(*(v25 + v24) + OBJC_IVAR____TtC8AppStoreP33_ECECB79BEF5D802E6E21EF3AE112F28D20UberContentContainer_contents);
    if (v27)
    {
      type metadata accessor for VideoView(0);
      v28 = swift_dynamicCastClass();
      if (v28)
      {
        v29 = v28;
        v30 = v27;
        [v29 setUserInteractionEnabled:0];
      }
    }

    v23 = v31;
  }
}

id sub_1003A199C(uint64_t a1, char *a2)
{
  v64 = a2;
  v3 = sub_10002849C(&unk_100973A50, &unk_1007B4FD0);
  __chkstk_darwin(v3 - 8);
  v63 = v61 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v62 = v61 - v6;
  v7 = sub_10002849C(&qword_100982460, &unk_1007B5C90);
  __chkstk_darwin(v7 - 8);
  v9 = v61 - v8;
  v10 = type metadata accessor for VideoControls();
  __chkstk_darwin(v10 - 8);
  __chkstk_darwin(v11);
  v12 = sub_10002849C(&unk_1009732A0, &unk_1007B4FE0);
  __chkstk_darwin(v12 - 8);
  v14 = v61 - v13;
  v15 = type metadata accessor for VideoFillMode();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = v61 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for VideoConfiguration();
  v65 = *(v19 - 8);
  v66 = v19;
  __chkstk_darwin(v19);
  v21 = v61 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (HeroCarouselItem.video.getter())
  {
    v61[2] = a1;
    (*(v16 + 104))(v18, enum case for VideoFillMode.scaleAspectFill(_:), v15);
    Video.preview.getter();
    Artwork.size.getter();
    AspectRatio.init(_:_:)();

    v22 = type metadata accessor for AspectRatio();
    (*(*(v22 - 8) + 56))(v14, 0, 1, v22);
    Video.playbackControls.getter();
    Video.autoPlayPlaybackControls.getter();
    Video.canPlayFullScreen.getter();
    Video.allowsAutoPlay.getter();
    Video.looping.getter();
    VideoConfiguration.init(fillMode:aspectRatio:playbackControls:autoPlayPlaybackControls:canPlayFullScreen:allowsAutoPlay:looping:roundedCorners:deviceCornerRadiusFactor:)();
    type metadata accessor for VideoViewManager();
    BaseObjectGraph.inject<A>(_:)();
    v23 = v69[0];
    Video.playbackId.getter();
    Video.videoUrl.getter();
    v24 = type metadata accessor for URL();
    (*(*(v24 - 8) + 56))(v9, 0, 1, v24);
    v25 = v62;
    Video.templateMediaEvent.getter();
    v26 = v63;
    Video.templateClickEvent.getter();
    v27 = type metadata accessor for VideoView(0);
    sub_1003A2BF8(&qword_100973190, 255, type metadata accessor for VideoView, &unk_1007D1B30);
    v61[0] = v27;
    v61[1] = v23;
    v28 = dispatch thunk of VideoViewManager.videoView<A>(with:videoUrl:configuration:templateMediaEvent:templateClickEvent:asPartOf:)();
    sub_10002B894(v26, &unk_100973A50, &unk_1007B4FD0);
    sub_10002B894(v25, &unk_100973A50, &unk_1007B4FD0);
    sub_10002B894(v9, &qword_100982460, &unk_1007B5C90);
    sub_10002B894(v69, &qword_10096FB90, &qword_1007B2A50);
    v29 = *&v67[OBJC_IVAR____TtC8AppStore30HeroCarouselItemBackgroundView_mediaViewContainer];
    v30 = OBJC_IVAR____TtC8AppStore9MediaView_contentContainer;
    v31 = *(v29 + OBJC_IVAR____TtC8AppStore9MediaView_contentContainer);
    v64 = v21;
    if (v28)
    {
      v32 = v28;
      v33 = [v32 superview];
      if (v33)
      {
        v34 = v33;
        sub_100005744(0, &qword_100972EB0, UIView_ptr);
        v35 = v31;
        v36 = static NSObject.== infix(_:_:)();

        if (v36)
        {
          [v32 removeFromSuperview];
        }
      }

      else
      {
      }
    }

    v43 = *&v31[OBJC_IVAR____TtC8AppStoreP33_ECECB79BEF5D802E6E21EF3AE112F28D20UberContentContainer_contents];
    *&v31[OBJC_IVAR____TtC8AppStoreP33_ECECB79BEF5D802E6E21EF3AE112F28D20UberContentContainer_contents] = v28;
    v44 = v28;
    sub_10047C6C8(v43);

    v45 = *(*(v29 + v30) + OBJC_IVAR____TtC8AppStoreP33_ECECB79BEF5D802E6E21EF3AE112F28D20UberContentContainer_contents);
    if (v45 && (v46 = swift_dynamicCastClass()) != 0)
    {
      v47 = v46;
      v48 = v45;
      [v47 setUserInteractionEnabled:0];
    }

    else
    {
    }

    (*(v65 + 8))(v64, v66);
    v38 = v67;
  }

  else
  {
    v37 = HeroCarouselItem.artwork.getter();
    v38 = v67;
    if (v37)
    {

      v39 = *&v38[OBJC_IVAR____TtC8AppStore30HeroCarouselItemBackgroundView_artworkView];
      v40 = *(*&v38[OBJC_IVAR____TtC8AppStore30HeroCarouselItemBackgroundView_mediaViewContainer] + OBJC_IVAR____TtC8AppStore9MediaView_contentContainer);
      v41 = *(v40 + OBJC_IVAR____TtC8AppStoreP33_ECECB79BEF5D802E6E21EF3AE112F28D20UberContentContainer_contents);
      *(v40 + OBJC_IVAR____TtC8AppStoreP33_ECECB79BEF5D802E6E21EF3AE112F28D20UberContentContainer_contents) = v39;
      v42 = v39;
      sub_10047C6C8(v41);

      sub_10047B37C();
    }
  }

  v49 = type metadata accessor for Feature.iOS();
  v69[3] = v49;
  v69[4] = sub_1003A2BF8(&qword_10097CC80, 255, &type metadata accessor for Feature.iOS, &protocol conformance descriptor for Feature.iOS);
  v50 = sub_1000056E0(v69);
  (*(*(v49 - 8) + 104))(v50, enum case for Feature.iOS.arcade_hero_video_page_timer(_:), v49);
  LOBYTE(v49) = isFeatureEnabled(_:)();
  sub_100007000(v69);
  v51 = OBJC_IVAR____TtC8AppStore30HeroCarouselItemBackgroundView_mediaViewContainer;
  if (v49)
  {
    v52 = *(*(*&v38[OBJC_IVAR____TtC8AppStore30HeroCarouselItemBackgroundView_mediaViewContainer] + OBJC_IVAR____TtC8AppStore9MediaView_contentContainer) + OBJC_IVAR____TtC8AppStoreP33_ECECB79BEF5D802E6E21EF3AE112F28D20UberContentContainer_contents);
    if (v52)
    {
      type metadata accessor for VideoView(0);
      if (swift_dynamicCastClass())
      {
        v53 = v52;
        sub_1004E053C();

        v51 = OBJC_IVAR____TtC8AppStore30HeroCarouselItemBackgroundView_mediaViewContainer;
      }
    }
  }

  v54 = *&v38[v51];
  v55 = HeroCarouselItem.backgroundColor.getter();
  if (!v55)
  {
    v55 = [objc_opt_self() systemBackgroundColor];
  }

  v56 = v55;
  v57 = type metadata accessor for MediaView();
  v68.receiver = v54;
  v68.super_class = v57;
  objc_msgSendSuper2(&v68, "setBackgroundColor:", v56);
  [*(*&v54[OBJC_IVAR____TtC8AppStore9MediaView_contentContainer] + OBJC_IVAR____TtC8AppStoreP33_ECECB79BEF5D802E6E21EF3AE112F28D20UberContentContainer_contents) setBackgroundColor:v56];
  v58 = *&v54[OBJC_IVAR____TtC8AppStore9MediaView_reflectionView];
  if (v58)
  {
    v59 = v58;
    [v59 setBackgroundColor:v56];
  }

  [v38 setNeedsLayout];
  return [v38 layoutIfNeeded];
}

void sub_1003A223C(double a1, double a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for Artwork.Style();
  __chkstk_darwin(v5 - 8);
  v6 = sub_10002849C(&unk_1009732A0, &unk_1007B4FE0);
  __chkstk_darwin(v6 - 8);
  v8 = v33 - v7;
  v9 = type metadata accessor for VideoConfiguration();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for AspectRatio();
  v34 = *(v13 - 8);
  __chkstk_darwin(v13);
  v15 = v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = HeroCarouselItem.video.getter();
  if (v16)
  {
    v17 = *(*(*(v35 + OBJC_IVAR____TtC8AppStore30HeroCarouselItemBackgroundView_mediaViewContainer) + OBJC_IVAR____TtC8AppStore9MediaView_contentContainer) + OBJC_IVAR____TtC8AppStoreP33_ECECB79BEF5D802E6E21EF3AE112F28D20UberContentContainer_contents);
    if (v17 && (v33[4] = v16, v33[3] = type metadata accessor for VideoView(0), (v18 = swift_dynamicCastClass()) != 0))
    {
      v33[0] = v15;
      v33[2] = a4;
      v19 = qword_1009D2200;
      v20 = v13;
      v21 = v18;
      swift_beginAccess();
      v22 = *(v10 + 16);
      v33[1] = v21;
      v23 = v21 + v19;
      v24 = v20;
      v22(v12, v23, v9);
      v25 = v17;
      VideoConfiguration.aspectRatio.getter();
      (*(v10 + 8))(v12, v9);
      v26 = v34;
      if ((*(v34 + 48))(v8, 1, v24) != 1)
      {
        v32 = v33[0];
        (*(v26 + 32))(v33[0], v8, v24);
        AspectRatio.maxSize(filling:)();
        Video.preview.getter();
        Artwork.config(_:mode:prefersLayeredImage:)();

        sub_1003A2BF8(&unk_1009840E0, 255, type metadata accessor for VideoView, &unk_1007DDE78);
        ArtworkLoader.fetchArtwork<A>(using:closestMatch:into:)();

        (*(v26 + 8))(v32, v24);
        return;
      }

      sub_10002B894(v8, &unk_1009732A0, &unk_1007B4FE0);
    }

    else
    {
    }
  }

  if (HeroCarouselItem.artwork.getter())
  {
    Artwork.config(_:mode:prefersLayeredImage:)();
    v27 = OBJC_IVAR____TtC8AppStore30HeroCarouselItemBackgroundView_artworkView;
    v28 = v35;
    v29 = *(v35 + OBJC_IVAR____TtC8AppStore30HeroCarouselItemBackgroundView_artworkView);
    Artwork.style.getter();
    ArtworkView.style.setter();
    [v29 setContentMode:Artwork.contentMode.getter()];
    ArtworkLoaderConfig.size.getter();
    ArtworkView.imageSize.setter();
    if (!Artwork.backgroundColor.getter())
    {
      sub_100005744(0, &qword_100970180, UIColor_ptr);
      static UIColor.placeholderBackground.getter();
    }

    ArtworkView.backgroundColor.setter();

    [*(v28 + v27) setContentMode:2];
    v30 = *(v28 + v27);
    type metadata accessor for ArtworkView();
    sub_1003A2BF8(&qword_100970E80, 255, &type metadata accessor for ArtworkView, &protocol conformance descriptor for ArtworkView);
    v31 = v30;
    ArtworkLoader.fetchArtwork<A>(using:closestMatch:into:)();
  }
}

id sub_1003A2794(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for HeroCarouselItemBackgroundView();
  return objc_msgSendSuper2(&v4, "dealloc");
}

uint64_t sub_1003A2838()
{
  v1 = *(*(*(v0 + OBJC_IVAR____TtC8AppStore30HeroCarouselItemBackgroundView_mediaViewContainer) + OBJC_IVAR____TtC8AppStore9MediaView_contentContainer) + OBJC_IVAR____TtC8AppStoreP33_ECECB79BEF5D802E6E21EF3AE112F28D20UberContentContainer_contents);
  if (!v1)
  {
    return 0;
  }

  type metadata accessor for VideoView(0);
  result = swift_dynamicCastClass();
  if (result)
  {
    v3 = result;
    v4 = v1;
    return v3;
  }

  return result;
}

uint64_t (*sub_1003A28AC(uint64_t **a1))()
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
  v2[4] = sub_1003A1578(v2);
  return sub_1000B4CAC;
}

uint64_t sub_1003A291C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return VideoViewProviding.someVideoView.getter(a1, WitnessTable);
}

uint64_t sub_1003A2970(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return VideoViewProviding.someVideoView.setter(a1, a2, a3, WitnessTable);
}

uint64_t (*sub_1003A29DC(uint64_t *a1, uint64_t a2))()
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

uint64_t sub_1003A2A78(void *a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = *(v1 + OBJC_IVAR____TtC8AppStore30HeroCarouselItemBackgroundView_mediaViewContainer);
  v3 = [a1 superview];
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  v5 = *(v2 + OBJC_IVAR____TtC8AppStore9MediaView_contentContainer);
  sub_100005744(0, &qword_100972EB0, UIView_ptr);
  v6 = v5;
  v7 = static NSObject.== infix(_:_:)();

  return v7 & 1;
}

uint64_t sub_1003A2BF8(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

void sub_1003A2C40()
{
  v1 = type metadata accessor for MediaView();
  v2 = objc_allocWithZone(v1);
  *&v2[OBJC_IVAR____TtC8AppStore9MediaView_reflectionView] = 0;
  *&v2[OBJC_IVAR____TtC8AppStore9MediaView_reflectionAmount] = 0;
  v2[OBJC_IVAR____TtC8AppStore9MediaView_isRubberbanding] = 0;
  *&v2[OBJC_IVAR____TtC8AppStore9MediaView_reflectionScale] = 0x3FF0000000000000;
  *&v2[OBJC_IVAR____TtC8AppStore9MediaView_reflectionOffset] = 0;
  v3 = type metadata accessor for UberContentContainer();
  v4 = objc_allocWithZone(v3);
  *&v4[OBJC_IVAR____TtC8AppStoreP33_ECECB79BEF5D802E6E21EF3AE112F28D20UberContentContainer_contents] = 0;
  *&v4[OBJC_IVAR____TtC8AppStoreP33_ECECB79BEF5D802E6E21EF3AE112F28D20UberContentContainer_parallaxY] = 0;
  v5 = &v4[OBJC_IVAR____TtC8AppStoreP33_ECECB79BEF5D802E6E21EF3AE112F28D20UberContentContainer_prominentPlayButtonCenterYOverride];
  *v5 = 0;
  v5[8] = 1;
  v6 = &v4[OBJC_IVAR____TtC8AppStoreP33_ECECB79BEF5D802E6E21EF3AE112F28D20UberContentContainer_systemBackgroundExtensionOutsets];
  *v6 = 0u;
  *(v6 + 1) = 0u;
  v6[32] = 1;
  *&v4[OBJC_IVAR____TtC8AppStoreP33_ECECB79BEF5D802E6E21EF3AE112F28D20UberContentContainer_backgroundExtensionView] = 0;
  v13.receiver = v4;
  v13.super_class = v3;
  v7 = objc_msgSendSuper2(&v13, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v8 = v7;
  if (*&v7[OBJC_IVAR____TtC8AppStoreP33_ECECB79BEF5D802E6E21EF3AE112F28D20UberContentContainer_backgroundExtensionView])
  {
    [v7 addSubview:?];
  }

  v9 = OBJC_IVAR____TtC8AppStore30HeroCarouselItemBackgroundView_mediaViewContainer;
  *&v2[OBJC_IVAR____TtC8AppStore9MediaView_contentContainer] = v8;
  v12.receiver = v2;
  v12.super_class = v1;
  v10 = objc_msgSendSuper2(&v12, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  [v10 setClipsToBounds:1];
  [v10 addSubview:*&v10[OBJC_IVAR____TtC8AppStore9MediaView_contentContainer]];

  *(v0 + v9) = v10;
  v11 = OBJC_IVAR____TtC8AppStore30HeroCarouselItemBackgroundView_artworkView;
  type metadata accessor for ArtworkView();
  *(v0 + v11) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void sub_1003A2E44(float a1)
{
  v2 = OBJC_IVAR____TtC8AppStore10RatingView_rating;
  v3 = *(v1 + OBJC_IVAR____TtC8AppStore10RatingView_rating);
  *(v1 + OBJC_IVAR____TtC8AppStore10RatingView_rating) = a1;
  if (v3 != a1)
  {
    v4 = 0.0;
    if (a1 < 0.0 || (v4 = *(v1 + OBJC_IVAR____TtC8AppStore10RatingView_maxNumberOfStars), v4 < a1))
    {
      *(v1 + v2) = v4;
      a1 = v4;
    }

    v5 = *(v1 + OBJC_IVAR____TtC8AppStore10RatingView_filledStarRowView);
    v6 = *(v5 + OBJC_IVAR____TtC8AppStoreP33_4D569A3E6303747AA734C2D941AA4EED7StarRow_currentRating);
    *(v5 + OBJC_IVAR____TtC8AppStoreP33_4D569A3E6303747AA734C2D941AA4EED7StarRow_currentRating) = a1;
    sub_1003A3A64(v6);
  }
}

UIColor sub_1003A2EC8()
{
  sub_100005744(0, &qword_100970180, UIColor_ptr);
  result.super.isa = UIColor.init(light:dark:)([objc_allocWithZone(UIColor) initWithRed:0.556862745 green:0.556862745 blue:0.57254902 alpha:1.0], objc_msgSend(objc_allocWithZone(UIColor), "initWithRed:green:blue:alpha:", 0.552941176, 0.552941176, 0.580392157, 1.0)).super.isa;
  qword_100982C88 = result.super.isa;
  return result;
}

void sub_1003A2F78()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC8AppStore10RatingView_emptyStarRowView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC8AppStore10RatingView_emptyStarColor);
    if (v3)
    {
      v4 = *(v0 + OBJC_IVAR____TtC8AppStore10RatingView_emptyStarColor);
    }

    else
    {
      v4 = *(v0 + OBJC_IVAR____TtC8AppStore10RatingView_starColor);
    }

    v5 = *(v2 + OBJC_IVAR____TtC8AppStoreP33_4D569A3E6303747AA734C2D941AA4EED7StarRow_starColor);
    *(v2 + OBJC_IVAR____TtC8AppStoreP33_4D569A3E6303747AA734C2D941AA4EED7StarRow_starColor) = v4;
    if (v5)
    {
      sub_100005744(0, &qword_100970180, UIColor_ptr);
      v6 = v3;
      v7 = v4;
      v8 = v5;
      v9 = static NSObject.== infix(_:_:)();

      if (v9)
      {
        goto LABEL_10;
      }
    }

    else
    {
      v10 = v3;
      v11 = v4;
      v8 = 0;
    }

    sub_1003A450C();
    v7 = v4;
LABEL_10:
  }

  v12 = *(v1 + OBJC_IVAR____TtC8AppStore10RatingView_filledStarRowView);
  v13 = *(v1 + OBJC_IVAR____TtC8AppStore10RatingView_starColor);
  v14 = *(v12 + OBJC_IVAR____TtC8AppStoreP33_4D569A3E6303747AA734C2D941AA4EED7StarRow_starColor);
  *(v12 + OBJC_IVAR____TtC8AppStoreP33_4D569A3E6303747AA734C2D941AA4EED7StarRow_starColor) = v13;
  if (!v14)
  {
    v17 = v13;
    v18 = 0;
    goto LABEL_15;
  }

  sub_100005744(0, &qword_100970180, UIColor_ptr);
  v15 = v13;
  v18 = v14;
  v16 = static NSObject.== infix(_:_:)();

  if ((v16 & 1) == 0)
  {
LABEL_15:
    sub_1003A450C();
    v15 = v13;
  }
}

void sub_1003A3118(uint64_t a1, char a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v7 = type metadata accessor for SystemImage();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = &v3[OBJC_IVAR____TtC8AppStoreP33_4D569A3E6303747AA734C2D941AA4EED7StarRow_starPadding];
  v12 = *&v3[OBJC_IVAR____TtC8AppStoreP33_4D569A3E6303747AA734C2D941AA4EED7StarRow_starPadding];
  v13 = v3[OBJC_IVAR____TtC8AppStoreP33_4D569A3E6303747AA734C2D941AA4EED7StarRow_starPadding + 8];
  *v11 = *&a1;
  *(v11 + 8) = a2 & 1;
  if (v13)
  {
    if (a2)
    {
      return;
    }

LABEL_6:
    v49 = a1;
    v14 = v3[OBJC_IVAR____TtC8AppStoreP33_4D569A3E6303747AA734C2D941AA4EED7StarRow_starSize];
    v15 = *&v3[OBJC_IVAR____TtC8AppStoreP33_4D569A3E6303747AA734C2D941AA4EED7StarRow_currentRating];
    v47 = v3[OBJC_IVAR____TtC8AppStoreP33_4D569A3E6303747AA734C2D941AA4EED7StarRow_useCase];
    v16 = [v3 traitCollection];
    v54.receiver = v3;
    v54.super_class = ObjectType;
    v17 = objc_msgSendSuper2(&v54, "minimumContentSizeCategory");
    v53.receiver = v3;
    v53.super_class = ObjectType;
    v18 = objc_msgSendSuper2(&v53, "maximumContentSizeCategory");
    v55.value._rawValue = v17;
    v55.is_nil = v18;
    v19.super.isa = UITraitCollection.clampingContentSizeCategory(min:max:)(v55, v56).super.isa;

    v48 = v14;
    if (v14 <= 1)
    {
      if (v14)
      {
        v23 = &UIFontTextStyleCaption2;
      }

      else
      {
        v23 = &UIFontTextStyleHeadline;
      }

      v24 = [objc_opt_self() configurationWithTextStyle:*v23 scale:2];
    }

    else if (v14 == 2)
    {
      v24 = [objc_opt_self() configurationWithTextStyle:UIFontTextStyleCaption2 scale:1];
    }

    else if (v14 == 3)
    {
      if ((v47 & 1) != 0 || (v20 = type metadata accessor for Feature(), v51 = v20, v52 = sub_100085D7C(), v21 = sub_1000056E0(v50), (*(*(v20 - 8) + 104))(v21, enum case for Feature.search_tags(_:), v20), LOBYTE(v20) = isFeatureEnabled(_:)(), sub_100007000(v50), (v20 & 1) == 0))
      {
        v22 = 2;
      }

      else
      {
        v22 = 1;
      }

      v24 = [objc_opt_self() configurationWithPointSize:4 weight:v22 scale:10.0];
    }

    else
    {
      if ((v47 & 1) != 0 || (v25 = type metadata accessor for Feature(), v51 = v25, v52 = sub_100085D7C(), v26 = sub_1000056E0(v50), (*(*(v25 - 8) + 104))(v26, enum case for Feature.search_tags(_:), v25), LOBYTE(v25) = isFeatureEnabled(_:)(), sub_100007000(v50), (v25 & 1) == 0))
      {
        v27 = 2;
      }

      else
      {
        v27 = 1;
      }

      v24 = [objc_opt_self() configurationWithPointSize:4 weight:v27 scale:6.0];
    }

    v28 = v24;
    (*(v8 + 104))(v10, enum case for SystemImage.star(_:), v7);
    v29 = [v28 configurationWithTraitCollection:v19.super.isa];
    v30 = static SystemImage.load(_:with:)();

    (*(v8 + 8))(v10, v7);
    [v30 contentInsets];
    v32 = v31;
    [v30 contentInsets];
    v34 = v32 + v33;
    [v30 size];
    v36 = v35 - v34;
    [v30 contentInsets];
    v38 = v37;
    [v30 contentInsets];
    v40 = v38 + v39;
    [v30 size];
    v42 = v41;

    if (a2)
    {
      if (v48 == 4 || v48 == 2)
      {
        v43 = 2.0;
      }

      else
      {
        v43 = 6.0;
        if (v48)
        {
          v44 = v34 * (ceilf(v15) + -1.0);
          if (v44 < 0.0)
          {
            v44 = 0.0;
          }

          v45 = v36 * v15;
          goto LABEL_34;
        }
      }
    }

    else
    {
      v43 = *&v49;
    }

    v45 = v36 * v15;
    v44 = v43 * (ceilf(v15) + -1.0);
LABEL_34:
    [v3 setFrame:{0.0, 0.0, v45 + v44, v42 - v40}];
    sub_1003A450C();
    return;
  }

  if ((a2 & 1) != 0 || v12 != *&a1)
  {
    goto LABEL_6;
  }
}

id sub_1003A36D4()
{
  v1 = v0;
  v10.receiver = v0;
  v10.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v10, "layoutSubviews");
  v2 = *&v0[OBJC_IVAR____TtC8AppStore10RatingView_emptyStarRowView];
  if (v2)
  {
    v3 = v2;
    [v3 frame];
    v4 = *&v1[OBJC_IVAR____TtC8AppStore10RatingView_filledStarRowView];
    [v4 frame];
    [v3 bounds];
    CGRect.withLayoutDirection(in:relativeTo:)();
    [v4 setFrame:?];
  }

  v5 = [v1 traitCollection];
  v6 = UITraitCollection.prefersRightToLeftLayouts.getter();

  v7 = *&v1[OBJC_IVAR____TtC8AppStore10RatingView_filledStarRowView];
  if (v6)
  {
    CGAffineTransformMakeScale(&v9, -1.0, 1.0);
  }

  else
  {
    *&v9.a = 0x3FF0000000000000uLL;
    v9.c = 0.0;
    v9.d = 1.0;
    *&v9.tx = 0uLL;
  }

  return [v7 setTransform:&v9];
}

void sub_1003A3A64(float a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = type metadata accessor for SystemImage();
  v6 = *(v5 - 8);
  *&v7 = __chkstk_darwin(v5).n128_u64[0];
  v9 = &v63[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *&v2[OBJC_IVAR____TtC8AppStoreP33_4D569A3E6303747AA734C2D941AA4EED7StarRow_currentRating];
  if (v10 != a1)
  {
    v11 = v2[OBJC_IVAR____TtC8AppStoreP33_4D569A3E6303747AA734C2D941AA4EED7StarRow_starSize];
    v12 = *&v2[OBJC_IVAR____TtC8AppStoreP33_4D569A3E6303747AA734C2D941AA4EED7StarRow_starPadding];
    HIDWORD(v62) = v2[OBJC_IVAR____TtC8AppStoreP33_4D569A3E6303747AA734C2D941AA4EED7StarRow_starPadding + 8];
    v13 = v2[OBJC_IVAR____TtC8AppStoreP33_4D569A3E6303747AA734C2D941AA4EED7StarRow_useCase];
    v14 = [v2 traitCollection];
    v67.receiver = v2;
    v67.super_class = ObjectType;
    v15 = objc_msgSendSuper2(&v67, "minimumContentSizeCategory");
    v66.receiver = v2;
    v66.super_class = ObjectType;
    v16 = objc_msgSendSuper2(&v66, "maximumContentSizeCategory");
    v68.value._rawValue = v15;
    v68.is_nil = v16;
    v17.super.isa = UITraitCollection.clampingContentSizeCategory(min:max:)(v68, v69).super.isa;

    if (v11 <= 1)
    {
      if (v11)
      {
        v21 = &UIFontTextStyleCaption2;
      }

      else
      {
        v21 = &UIFontTextStyleHeadline;
      }

      v22 = [objc_opt_self() configurationWithTextStyle:*v21 scale:2];
    }

    else if (v11 == 2)
    {
      v22 = [objc_opt_self() configurationWithTextStyle:UIFontTextStyleCaption2 scale:1];
    }

    else if (v11 == 3)
    {
      if ((v13 & 1) != 0 || (v18 = type metadata accessor for Feature(), v64 = v18, v65 = sub_100085D7C(), v19 = sub_1000056E0(v63), (*(*(v18 - 8) + 104))(v19, enum case for Feature.search_tags(_:), v18), LOBYTE(v18) = isFeatureEnabled(_:)(), sub_100007000(v63), (v18 & 1) == 0))
      {
        v20 = 2;
      }

      else
      {
        v20 = 1;
      }

      v22 = [objc_opt_self() configurationWithPointSize:4 weight:v20 scale:10.0];
    }

    else
    {
      if ((v13 & 1) != 0 || (v23 = type metadata accessor for Feature(), v64 = v23, v65 = sub_100085D7C(), v24 = sub_1000056E0(v63), (*(*(v23 - 8) + 104))(v24, enum case for Feature.search_tags(_:), v23), LOBYTE(v23) = isFeatureEnabled(_:)(), sub_100007000(v63), (v23 & 1) == 0))
      {
        v25 = 2;
      }

      else
      {
        v25 = 1;
      }

      v22 = [objc_opt_self() configurationWithPointSize:4 weight:v25 scale:6.0];
    }

    v26 = HIDWORD(v62);
    v27 = v22;
    (*(v6 + 104))(v9, enum case for SystemImage.star(_:), v5);
    v28 = [v27 configurationWithTraitCollection:v17.super.isa];
    v29 = static SystemImage.load(_:with:)();

    (*(v6 + 8))(v9, v5);
    [v29 contentInsets];
    v31 = v30;
    [v29 contentInsets];
    v33 = v31 + v32;
    [v29 size];
    v35 = v34 - v33;
    [v29 contentInsets];
    v37 = v36;
    [v29 contentInsets];
    v39 = v37 + v38;
    [v29 size];
    v41 = v40;

    if (v26)
    {
      if (v11 == 4 || v11 == 2)
      {
        v12 = 2.0;
      }

      else
      {
        v12 = 6.0;
        if (v11)
        {
          v42 = v33 * (ceilf(v10) + -1.0);
          if (v42 < 0.0)
          {
            v42 = 0.0;
          }

          v43 = v35 * v10 + v42;
          goto LABEL_29;
        }
      }
    }

    v43 = v35 * v10 + v12 * (ceilf(v10) + -1.0);
LABEL_29:
    [v2 setFrame:{0.0, 0.0, v43, v41 - v39}];
    v44 = [*&v2[OBJC_IVAR____TtC8AppStoreP33_4D569A3E6303747AA734C2D941AA4EED7StarRow_starImageView] image];
    if (v44)
    {
      v45 = v44;
      v46 = *&v2[OBJC_IVAR____TtC8AppStoreP33_4D569A3E6303747AA734C2D941AA4EED7StarRow_starLayer];
      [v2 bounds];
      v48 = v47;
      v50 = v49;
      v52 = v51;
      v54 = v53;
      [v45 contentInsets];
      v56 = v55;
      [v45 contentInsets];
      v58 = v57;
      [v45 contentInsets];
      v60 = v59;
      [v45 contentInsets];
      [v46 setFrame:{v48 - v56, v50 - v58, v52 + v60, v54 + v61}];
    }
  }
}

id sub_1003A401C()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = type metadata accessor for SystemImage();
  v4 = *(v3 - 8);
  *&v5 = __chkstk_darwin(v3).n128_u64[0];
  v7 = &v44[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = v1[OBJC_IVAR____TtC8AppStoreP33_4D569A3E6303747AA734C2D941AA4EED7StarRow_starSize];
  v9 = *&v1[OBJC_IVAR____TtC8AppStoreP33_4D569A3E6303747AA734C2D941AA4EED7StarRow_starPadding];
  HIDWORD(v43) = v1[OBJC_IVAR____TtC8AppStoreP33_4D569A3E6303747AA734C2D941AA4EED7StarRow_starPadding + 8];
  v10 = *&v1[OBJC_IVAR____TtC8AppStoreP33_4D569A3E6303747AA734C2D941AA4EED7StarRow_currentRating];
  v11 = v1[OBJC_IVAR____TtC8AppStoreP33_4D569A3E6303747AA734C2D941AA4EED7StarRow_useCase];
  v12 = [v1 traitCollection];
  v48.receiver = v1;
  v48.super_class = ObjectType;
  v13 = objc_msgSendSuper2(&v48, "minimumContentSizeCategory");
  v47.receiver = v1;
  v47.super_class = ObjectType;
  v14 = objc_msgSendSuper2(&v47, "maximumContentSizeCategory");
  v49.value._rawValue = v13;
  v49.is_nil = v14;
  v15.super.isa = UITraitCollection.clampingContentSizeCategory(min:max:)(v49, v50).super.isa;

  if (v8 <= 1)
  {
    if (v8)
    {
      v19 = &UIFontTextStyleCaption2;
    }

    else
    {
      v19 = &UIFontTextStyleHeadline;
    }

    v20 = [objc_opt_self() configurationWithTextStyle:*v19 scale:2];
  }

  else if (v8 == 2)
  {
    v20 = [objc_opt_self() configurationWithTextStyle:UIFontTextStyleCaption2 scale:1];
  }

  else if (v8 == 3)
  {
    if ((v11 & 1) != 0 || (v16 = type metadata accessor for Feature(), v45 = v16, v46 = sub_100085D7C(), v17 = sub_1000056E0(v44), (*(*(v16 - 8) + 104))(v17, enum case for Feature.search_tags(_:), v16), LOBYTE(v16) = isFeatureEnabled(_:)(), sub_100007000(v44), (v16 & 1) == 0))
    {
      v18 = 2;
    }

    else
    {
      v18 = 1;
    }

    v20 = [objc_opt_self() configurationWithPointSize:4 weight:v18 scale:10.0];
  }

  else
  {
    if ((v11 & 1) != 0 || (v21 = type metadata accessor for Feature(), v45 = v21, v46 = sub_100085D7C(), v22 = sub_1000056E0(v44), (*(*(v21 - 8) + 104))(v22, enum case for Feature.search_tags(_:), v21), LOBYTE(v21) = isFeatureEnabled(_:)(), sub_100007000(v44), (v21 & 1) == 0))
    {
      v23 = 2;
    }

    else
    {
      v23 = 1;
    }

    v20 = [objc_opt_self() configurationWithPointSize:4 weight:v23 scale:6.0];
  }

  v24 = HIDWORD(v43);
  v25 = v20;
  (*(v4 + 104))(v7, enum case for SystemImage.star(_:), v3);
  v26 = [v25 configurationWithTraitCollection:v15.super.isa];
  v27 = static SystemImage.load(_:with:)();

  (*(v4 + 8))(v7, v3);
  [v27 contentInsets];
  v29 = v28;
  [v27 contentInsets];
  v31 = v29 + v30;
  [v27 size];
  v33 = v32 - v31;
  [v27 contentInsets];
  v35 = v34;
  [v27 contentInsets];
  v37 = v36;
  [v27 size];
  v39 = v38;

  if (!v24)
  {
    goto LABEL_28;
  }

  if (v8 == 4 || v8 == 2)
  {
    v9 = 2.0;
    goto LABEL_28;
  }

  v9 = 6.0;
  if (!v8)
  {
LABEL_28:
    v41 = v33 * v10 + v9 * (ceilf(v10) + -1.0);
    return [v1 setFrame:{0.0, 0.0, v41, v39 - (v35 + v37)}];
  }

  v40 = v31 * (ceilf(v10) + -1.0);
  if (v40 < 0.0)
  {
    v40 = 0.0;
  }

  v41 = v33 * v10 + v40;
  return [v1 setFrame:{0.0, 0.0, v41, v39 - (v35 + v37)}];
}

void sub_1003A450C()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v65 = type metadata accessor for SystemImage();
  v66 = *(v65 - 8);
  *&v3 = __chkstk_darwin(v65).n128_u64[0];
  v5 = &v63 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = OBJC_IVAR____TtC8AppStoreP33_4D569A3E6303747AA734C2D941AA4EED7StarRow_starImageView;
  v6 = [*&v1[OBJC_IVAR____TtC8AppStoreP33_4D569A3E6303747AA734C2D941AA4EED7StarRow_starImageView] layer];
  [v6 removeFromSuperlayer];

  v7 = OBJC_IVAR____TtC8AppStoreP33_4D569A3E6303747AA734C2D941AA4EED7StarRow_starLayer;
  [*&v1[OBJC_IVAR____TtC8AppStoreP33_4D569A3E6303747AA734C2D941AA4EED7StarRow_starLayer] removeFromSuperlayer];
  v8 = v1[OBJC_IVAR____TtC8AppStoreP33_4D569A3E6303747AA734C2D941AA4EED7StarRow_starSize];
  v9 = v1[OBJC_IVAR____TtC8AppStoreP33_4D569A3E6303747AA734C2D941AA4EED7StarRow_filled];
  v10 = v1[OBJC_IVAR____TtC8AppStoreP33_4D569A3E6303747AA734C2D941AA4EED7StarRow_useCase];
  v11 = [v1 traitCollection];
  v70.receiver = v1;
  v70.super_class = ObjectType;
  v12 = objc_msgSendSuper2(&v70, "minimumContentSizeCategory");
  v69.receiver = v1;
  v69.super_class = ObjectType;
  v13 = objc_msgSendSuper2(&v69, "maximumContentSizeCategory");
  v71.value._rawValue = v12;
  v71.is_nil = v13;
  isa = UITraitCollection.clampingContentSizeCategory(min:max:)(v71, v72).super.isa;

  HIDWORD(v63) = v8;
  if (v8 <= 1)
  {
    if (v8)
    {
      v19 = &UIFontTextStyleCaption2;
    }

    else
    {
      v19 = &UIFontTextStyleHeadline;
    }

    v20 = [objc_opt_self() configurationWithTextStyle:*v19 scale:2];
    goto LABEL_15;
  }

  if (v8 == 2)
  {
    v20 = [objc_opt_self() configurationWithTextStyle:UIFontTextStyleCaption2 scale:1];
LABEL_15:
    v24 = v67;
    v25 = v65;
    v14 = v9;
    v15 = v66;
    goto LABEL_21;
  }

  v14 = v9;
  if (v8 == 3)
  {
    v15 = v66;
    if ((v10 & 1) != 0 || (v16 = type metadata accessor for Feature(), *&v68.m14 = v16, *&v68.m21 = sub_100085D7C(), v17 = sub_1000056E0(&v68), (*(*(v16 - 8) + 104))(v17, enum case for Feature.search_tags(_:), v16), LOBYTE(v16) = isFeatureEnabled(_:)(), sub_100007000(&v68), (v16 & 1) == 0))
    {
      v18 = 2;
    }

    else
    {
      v18 = 1;
    }

    v25 = v65;
    v20 = [objc_opt_self() configurationWithPointSize:4 weight:v18 scale:10.0];
  }

  else
  {
    v15 = v66;
    if ((v10 & 1) != 0 || (v21 = type metadata accessor for Feature(), *&v68.m14 = v21, *&v68.m21 = sub_100085D7C(), v22 = sub_1000056E0(&v68), (*(*(v21 - 8) + 104))(v22, enum case for Feature.search_tags(_:), v21), LOBYTE(v21) = isFeatureEnabled(_:)(), sub_100007000(&v68), (v21 & 1) == 0))
    {
      v23 = 2;
    }

    else
    {
      v23 = 1;
    }

    v25 = v65;
    v20 = [objc_opt_self() configurationWithPointSize:4 weight:v23 scale:6.0];
  }

  v24 = v67;
LABEL_21:
  v26 = v20;
  v27 = &enum case for SystemImage.starFill(_:);
  if (!v14)
  {
    v27 = &enum case for SystemImage.star(_:);
  }

  (*(v15 + 104))(v5, *v27, v25);
  v28 = isa;
  v29 = [v26 configurationWithTraitCollection:isa];
  v30 = static SystemImage.load(_:with:)();

  (*(v15 + 8))(v5, v25);
  v31 = [objc_allocWithZone(UIImageView) initWithImage:v30];
  v32 = *&v1[v24];
  *&v1[v24] = v31;

  v33 = [objc_allocWithZone(CAReplicatorLayer) init];
  v34 = *&v1[v7];
  *&v1[v7] = v33;
  v35 = v33;

  [v35 setInstanceCount:*&v1[OBJC_IVAR____TtC8AppStoreP33_4D569A3E6303747AA734C2D941AA4EED7StarRow_maxNumberOfStars]];
  if (v1[OBJC_IVAR____TtC8AppStoreP33_4D569A3E6303747AA734C2D941AA4EED7StarRow_starPadding + 8])
  {
    if (HIDWORD(v63))
    {
      if (HIDWORD(v63) != 4 && HIDWORD(v63) != 2)
      {
        [*&v1[v24] frame];
        Width = CGRectGetWidth(v74);
        goto LABEL_30;
      }

      v36 = 2.0;
    }

    else
    {
      v36 = 6.0;
    }
  }

  else
  {
    v36 = *&v1[OBJC_IVAR____TtC8AppStoreP33_4D569A3E6303747AA734C2D941AA4EED7StarRow_starPadding];
  }

  [*&v1[v24] frame];
  v37 = CGRectGetWidth(v73);
  [v30 contentInsets];
  v39 = v37 - v38;
  [v30 contentInsets];
  Width = v36 + v39 - v40;
LABEL_30:
  v42 = *&v1[v7];
  CATransform3DMakeTranslation(&v68, Width, 0.0, 0.0);
  [v42 setInstanceTransform:&v68];

  [*&v1[v7] setMasksToBounds:1];
  [*&v1[v24] setTintColor:*&v1[OBJC_IVAR____TtC8AppStoreP33_4D569A3E6303747AA734C2D941AA4EED7StarRow_starColor]];
  v43 = *&v1[v24];
  v44 = *&v1[v7];
  v45 = [v43 layer];
  [v44 addSublayer:v45];

  v46 = *&v1[v7];
  [v1 bounds];
  v48 = v47;
  v50 = v49;
  v52 = v51;
  v54 = v53;
  [v30 contentInsets];
  v56 = v55;
  [v30 contentInsets];
  v58 = v57;
  [v30 contentInsets];
  v60 = v59;
  [v30 contentInsets];
  [v46 setFrame:{v48 - v56, v50 - v58, v52 + v60, v54 + v61}];

  v62 = [v1 layer];
  [v62 addSublayer:*&v1[v7]];
}

id sub_1003A4C60(void *a1, uint64_t a2, SEL *a3)
{
  v6.receiver = a1;
  v6.super_class = swift_getObjectType();
  v4 = objc_msgSendSuper2(&v6, *a3);

  return v4;
}

void sub_1003A4CCC(void *a1, uint64_t a2, void *a3, const char **a4, SEL *a5)
{
  ObjectType = swift_getObjectType();
  v15.receiver = a1;
  v15.super_class = ObjectType;
  v10 = *a4;
  v11 = a3;
  v12 = a1;
  v13 = objc_msgSendSuper2(&v15, v10);
  v14.receiver = v12;
  v14.super_class = ObjectType;
  objc_msgSendSuper2(&v14, *a5, v11);
  sub_1003A4D7C(v13, a4);
}

void sub_1003A4D7C(uint64_t a1, SEL *a2)
{
  v4 = v2;
  ObjectType = swift_getObjectType();
  v7 = type metadata accessor for SystemImage();
  v8 = *(v7 - 8);
  *&v9 = __chkstk_darwin(v7).n128_u64[0];
  v11 = &v55[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60.receiver = v4;
  v60.super_class = ObjectType;
  v12 = objc_msgSendSuper2(&v60, *a2, v9);
  v13 = v12;
  if (!a1)
  {
    if (!v12)
    {
      return;
    }

    goto LABEL_11;
  }

  if (!v12)
  {
    goto LABEL_11;
  }

  v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = v15;
  if (v14 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v16 == v17)
  {

    return;
  }

  v19 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v19 & 1) == 0)
  {
LABEL_11:
    v20 = v4[OBJC_IVAR____TtC8AppStoreP33_4D569A3E6303747AA734C2D941AA4EED7StarRow_starSize];
    v21 = *&v4[OBJC_IVAR____TtC8AppStoreP33_4D569A3E6303747AA734C2D941AA4EED7StarRow_starPadding];
    HIDWORD(v54) = v4[OBJC_IVAR____TtC8AppStoreP33_4D569A3E6303747AA734C2D941AA4EED7StarRow_starPadding + 8];
    v22 = *&v4[OBJC_IVAR____TtC8AppStoreP33_4D569A3E6303747AA734C2D941AA4EED7StarRow_currentRating];
    v23 = v4[OBJC_IVAR____TtC8AppStoreP33_4D569A3E6303747AA734C2D941AA4EED7StarRow_useCase];
    v24 = [v4 traitCollection];
    v59.receiver = v4;
    v59.super_class = ObjectType;
    v25 = objc_msgSendSuper2(&v59, "minimumContentSizeCategory");
    v58.receiver = v4;
    v58.super_class = ObjectType;
    v26 = objc_msgSendSuper2(&v58, "maximumContentSizeCategory");
    v61.value._rawValue = v25;
    v61.is_nil = v26;
    v27.super.isa = UITraitCollection.clampingContentSizeCategory(min:max:)(v61, v62).super.isa;

    if (v20 <= 1)
    {
      if (v20)
      {
        v31 = &UIFontTextStyleCaption2;
      }

      else
      {
        v31 = &UIFontTextStyleHeadline;
      }

      v32 = [objc_opt_self() configurationWithTextStyle:*v31 scale:2];
    }

    else if (v20 == 2)
    {
      v32 = [objc_opt_self() configurationWithTextStyle:UIFontTextStyleCaption2 scale:1];
    }

    else if (v20 == 3)
    {
      if ((v23 & 1) != 0 || (v28 = type metadata accessor for Feature(), v56 = v28, v57 = sub_100085D7C(), v29 = sub_1000056E0(v55), (*(*(v28 - 8) + 104))(v29, enum case for Feature.search_tags(_:), v28), LOBYTE(v28) = isFeatureEnabled(_:)(), sub_100007000(v55), (v28 & 1) == 0))
      {
        v30 = 2;
      }

      else
      {
        v30 = 1;
      }

      v32 = [objc_opt_self() configurationWithPointSize:4 weight:v30 scale:10.0];
    }

    else
    {
      if ((v23 & 1) != 0 || (v33 = type metadata accessor for Feature(), v56 = v33, v57 = sub_100085D7C(), v34 = sub_1000056E0(v55), (*(*(v33 - 8) + 104))(v34, enum case for Feature.search_tags(_:), v33), LOBYTE(v33) = isFeatureEnabled(_:)(), sub_100007000(v55), (v33 & 1) == 0))
      {
        v35 = 2;
      }

      else
      {
        v35 = 1;
      }

      v32 = [objc_opt_self() configurationWithPointSize:4 weight:v35 scale:6.0];
    }

    v36 = HIDWORD(v54);
    v37 = v32;
    (*(v8 + 104))(v11, enum case for SystemImage.star(_:), v7);
    v38 = [v37 configurationWithTraitCollection:v27.super.isa];
    v39 = static SystemImage.load(_:with:)();

    (*(v8 + 8))(v11, v7);
    [v39 contentInsets];
    v41 = v40;
    [v39 contentInsets];
    v43 = v41 + v42;
    [v39 size];
    v45 = v44 - v43;
    [v39 contentInsets];
    v47 = v46;
    [v39 contentInsets];
    v49 = v47 + v48;
    [v39 size];
    v51 = v50;

    if (v36)
    {
      if (v20 == 4 || v20 == 2)
      {
        v21 = 2.0;
      }

      else
      {
        v21 = 6.0;
        if (v20)
        {
          v52 = v43 * (ceilf(v22) + -1.0);
          if (v52 < 0.0)
          {
            v52 = 0.0;
          }

          v53 = v45 * v22 + v52;
          goto LABEL_39;
        }
      }
    }

    v53 = v45 * v22 + v21 * (ceilf(v22) + -1.0);
LABEL_39:
    [v4 setFrame:{0.0, 0.0, v53, v51 - v49}];
    sub_1003A450C();
  }
}

char *sub_1003A533C(uint64_t a1, char a2, char a3, uint64_t a4, char a5, void *a6, char a7)
{
  v8 = v7;
  ObjectType = swift_getObjectType();
  *&v8[OBJC_IVAR____TtC8AppStoreP33_4D569A3E6303747AA734C2D941AA4EED7StarRow_starColor] = 0;
  v16 = &v8[OBJC_IVAR____TtC8AppStoreP33_4D569A3E6303747AA734C2D941AA4EED7StarRow_starPadding];
  *v16 = 0;
  v16[8] = 1;
  v17 = OBJC_IVAR____TtC8AppStoreP33_4D569A3E6303747AA734C2D941AA4EED7StarRow_starImageView;
  *&v8[v17] = [objc_allocWithZone(UIImageView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v18 = OBJC_IVAR____TtC8AppStoreP33_4D569A3E6303747AA734C2D941AA4EED7StarRow_starLayer;
  *&v8[v18] = [objc_allocWithZone(CAReplicatorLayer) init];
  v8[OBJC_IVAR____TtC8AppStoreP33_4D569A3E6303747AA734C2D941AA4EED7StarRow_starSize] = a3;
  *v16 = a4;
  v16[8] = a5 & 1;
  *&v8[OBJC_IVAR____TtC8AppStoreP33_4D569A3E6303747AA734C2D941AA4EED7StarRow_maxNumberOfStars] = a1;
  v8[OBJC_IVAR____TtC8AppStoreP33_4D569A3E6303747AA734C2D941AA4EED7StarRow_filled] = a2;
  *&v8[OBJC_IVAR____TtC8AppStoreP33_4D569A3E6303747AA734C2D941AA4EED7StarRow_currentRating] = a1;
  v8[OBJC_IVAR____TtC8AppStoreP33_4D569A3E6303747AA734C2D941AA4EED7StarRow_useCase] = a7 & 1;
  v27.receiver = v8;
  v27.super_class = ObjectType;
  v19 = objc_msgSendSuper2(&v27, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v20 = *&v19[OBJC_IVAR____TtC8AppStoreP33_4D569A3E6303747AA734C2D941AA4EED7StarRow_starColor];
  *&v19[OBJC_IVAR____TtC8AppStoreP33_4D569A3E6303747AA734C2D941AA4EED7StarRow_starColor] = a6;
  v21 = v19;
  v22 = a6;

  sub_1003A401C();
  sub_1003A450C();
  v23 = [v21 layer];

  [v23 setMasksToBounds:1];
  sub_10002849C(&qword_10097B110, &unk_1007B27C0);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_1007B10D0;
  *(v24 + 32) = type metadata accessor for UITraitPreferredContentSizeCategory();
  *(v24 + 40) = &protocol witness table for UITraitPreferredContentSizeCategory;
  UIView.registerForTraitChanges<A>(_:handler:)();
  swift_unknownObjectRelease();

  sub_100005744(0, &qword_100972780, UITraitCollection_ptr);
  static UITraitCollection.systemTraitsAffectingColorAppearance.getter();
  UIView.registerForTraitChanges<A>(_:handler:)();

  swift_unknownObjectRelease();

  return v21;
}

unint64_t sub_1003A56C4()
{
  result = qword_100982D78;
  if (!qword_100982D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100982D78);
  }

  return result;
}

unint64_t sub_1003A571C()
{
  result = qword_100982D80;
  if (!qword_100982D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100982D80);
  }

  return result;
}

void sub_1003A57BC()
{
  v1 = type metadata accessor for SystemImage();
  v2 = *(v1 - 8);
  *&v3 = __chkstk_darwin(v1).n128_u64[0];
  v5 = &v23[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = v0[OBJC_IVAR____TtC8AppStore10RatingView_starSize];
  v22 = *&v0[OBJC_IVAR____TtC8AppStore10RatingView_maxNumberOfStars];
  v7 = v0[OBJC_IVAR____TtC8AppStore10RatingView_useCase];
  v8 = [v0 traitCollection];
  v9 = [v0 minimumContentSizeCategory];
  v10 = [v0 maximumContentSizeCategory];
  v26.value._rawValue = v9;
  v26.is_nil = v10;
  v11.super.isa = UITraitCollection.clampingContentSizeCategory(min:max:)(v26, v27).super.isa;

  if (v6 <= 1)
  {
    if (v6)
    {
      v15 = [objc_opt_self() configurationWithTextStyle:UIFontTextStyleCaption2 scale:2];
    }

    else
    {
      v15 = [objc_opt_self() configurationWithTextStyle:UIFontTextStyleHeadline scale:2];
    }
  }

  else if (v6 == 2)
  {
    v15 = [objc_opt_self() configurationWithTextStyle:UIFontTextStyleCaption2 scale:1];
  }

  else if (v6 == 3)
  {
    if ((v7 & 1) != 0 || (v12 = type metadata accessor for Feature(), v24 = v12, v25 = sub_100085D7C(), v13 = sub_1000056E0(v23), (*(*(v12 - 8) + 104))(v13, enum case for Feature.search_tags(_:), v12), LOBYTE(v12) = isFeatureEnabled(_:)(), sub_100007000(v23), (v12 & 1) == 0))
    {
      v14 = 2;
    }

    else
    {
      v14 = 1;
    }

    v15 = [objc_opt_self() configurationWithPointSize:4 weight:v14 scale:10.0];
  }

  else
  {
    if ((v7 & 1) != 0 || (v16 = type metadata accessor for Feature(), v24 = v16, v25 = sub_100085D7C(), v17 = sub_1000056E0(v23), (*(*(v16 - 8) + 104))(v17, enum case for Feature.search_tags(_:), v16), LOBYTE(v16) = isFeatureEnabled(_:)(), sub_100007000(v23), (v16 & 1) == 0))
    {
      v18 = 2;
    }

    else
    {
      v18 = 1;
    }

    v15 = [objc_opt_self() configurationWithPointSize:4 weight:v18 scale:6.0];
  }

  v19 = v15;
  (*(v2 + 104))(v5, enum case for SystemImage.star(_:), v1);
  v20 = [v19 configurationWithTraitCollection:v11.super.isa];
  v21 = static SystemImage.load(_:with:)();

  (*(v2 + 8))(v5, v1);
  [v21 contentInsets];
  [v21 contentInsets];
  [v21 size];
  [v21 contentInsets];
  [v21 contentInsets];
  [v21 size];
}

double sub_1003A5CBC(void *a1)
{
  v3 = type metadata accessor for SystemImage();
  v4 = *(v3 - 8);
  *&v5 = __chkstk_darwin(v3).n128_u64[0];
  v7 = &v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = v1[OBJC_IVAR____TtC8AppStore10RatingView_starSize];
  v9 = *&v1[OBJC_IVAR____TtC8AppStore10RatingView_starPadding];
  v51 = v1[OBJC_IVAR____TtC8AppStore10RatingView_starPadding + 8];
  v10 = *&v1[OBJC_IVAR____TtC8AppStore10RatingView_maxNumberOfStars];
  v49 = v1[OBJC_IVAR____TtC8AppStore10RatingView_useCase];
  v11 = [a1 traitCollection];
  v12 = [v1 minimumContentSizeCategory];
  v13 = [v1 maximumContentSizeCategory];
  v56.value._rawValue = v12;
  v56.is_nil = v13;
  isa = UITraitCollection.clampingContentSizeCategory(min:max:)(v56, v57).super.isa;

  if (v8 <= 1)
  {
    if (v8)
    {
      v17 = [objc_opt_self() configurationWithTextStyle:UIFontTextStyleCaption2 scale:2];
    }

    else
    {
      v17 = [objc_opt_self() configurationWithTextStyle:UIFontTextStyleHeadline scale:2];
    }
  }

  else if (v8 == 2)
  {
    v17 = [objc_opt_self() configurationWithTextStyle:UIFontTextStyleCaption2 scale:1];
  }

  else if (v8 == 3)
  {
    if ((v49 & 1) != 0 || (v14 = type metadata accessor for Feature(), v54 = v14, v55 = sub_100085D7C(), v15 = sub_1000056E0(v53), (*(*(v14 - 8) + 104))(v15, enum case for Feature.search_tags(_:), v14), LOBYTE(v14) = isFeatureEnabled(_:)(), sub_100007000(v53), (v14 & 1) == 0))
    {
      v16 = 2;
    }

    else
    {
      v16 = 1;
    }

    v17 = [objc_opt_self() configurationWithPointSize:4 weight:v16 scale:10.0];
  }

  else
  {
    if ((v49 & 1) != 0 || (v18 = type metadata accessor for Feature(), v54 = v18, v55 = sub_100085D7C(), v19 = sub_1000056E0(v53), (*(*(v18 - 8) + 104))(v19, enum case for Feature.search_tags(_:), v18), LOBYTE(v18) = isFeatureEnabled(_:)(), sub_100007000(v53), (v18 & 1) == 0))
    {
      v20 = 2;
    }

    else
    {
      v20 = 1;
    }

    v17 = [objc_opt_self() configurationWithPointSize:4 weight:v20 scale:6.0];
  }

  v21 = v10;
  v22 = v17;
  v23 = *(v4 + 104);
  v23(v7, enum case for SystemImage.star(_:), v3);
  v24 = [v22 configurationWithTraitCollection:isa];
  v25 = static SystemImage.load(_:with:)();

  v26 = *(v4 + 8);
  v26(v7, v3);
  [v25 contentInsets];
  v28 = v27;
  [v25 contentInsets];
  v30 = v28 + v29;
  [v25 size];
  v32 = v31 - v30;
  [v25 contentInsets];
  [v25 contentInsets];
  [v25 size];

  if (!v51)
  {
    goto LABEL_26;
  }

  if (v8 == 4 || v8 == 2)
  {
    v9 = 2.0;
    goto LABEL_26;
  }

  v9 = 6.0;
  if (!v8)
  {
LABEL_26:
    v34 = v32 * v21 + v9 * (v21 + -1.0);
    goto LABEL_27;
  }

  v33 = v30 * (v21 + -1.0);
  if (v33 < 0.0)
  {
    v33 = 0.0;
  }

  v34 = v32 * v21 + v33;
LABEL_27:
  v50 = v26;
  if (v8 <= 1)
  {
    if (v8)
    {
      v38 = &UIFontTextStyleCaption2;
    }

    else
    {
      v38 = &UIFontTextStyleHeadline;
    }

    v39 = [objc_opt_self() configurationWithTextStyle:*v38 scale:2];
  }

  else if (v8 == 2)
  {
    v39 = [objc_opt_self() configurationWithTextStyle:UIFontTextStyleCaption2 scale:1];
  }

  else if (v8 == 3)
  {
    if ((v49 & 1) != 0 || (v35 = type metadata accessor for Feature(), v54 = v35, v55 = sub_100085D7C(), v36 = sub_1000056E0(v53), (*(*(v35 - 8) + 104))(v36, enum case for Feature.search_tags(_:), v35), LOBYTE(v35) = isFeatureEnabled(_:)(), sub_100007000(v53), (v35 & 1) == 0))
    {
      v37 = 2;
    }

    else
    {
      v37 = 1;
    }

    v39 = [objc_opt_self() configurationWithPointSize:4 weight:v37 scale:10.0];
  }

  else
  {
    if ((v49 & 1) != 0 || (v40 = type metadata accessor for Feature(), v54 = v40, v55 = sub_100085D7C(), v41 = sub_1000056E0(v53), (*(*(v40 - 8) + 104))(v41, enum case for Feature.search_tags(_:), v40), LOBYTE(v40) = isFeatureEnabled(_:)(), sub_100007000(v53), (v40 & 1) == 0))
    {
      v42 = 2;
    }

    else
    {
      v42 = 1;
    }

    v39 = [objc_opt_self() configurationWithPointSize:4 weight:v42 scale:6.0];
  }

  v43 = v39;
  v23(v7, enum case for SystemImage.starFill(_:), v3);
  v44 = isa;
  v45 = [v43 configurationWithTraitCollection:isa];
  v46 = static SystemImage.load(_:with:)();

  v50(v7, v3);
  UIImage.baselineOffsetFromBottom.getter();
  [v46 contentInsets];

  return v34;
}