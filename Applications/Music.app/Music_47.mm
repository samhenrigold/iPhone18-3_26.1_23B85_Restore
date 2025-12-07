uint64_t sub_1005535F8(uint64_t a1, uint64_t a2)
{
  v4 = sub_10010FC20(&unk_101188920, &qword_100EBCC50);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100553668(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 48);
  v8 = *(v1 + 40);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100008F30;

  return sub_100550D00(a1, v4, v5, v6, v8, v7);
}

uint64_t sub_100553740(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[9];
  v7 = v1[10];
  v8 = v1[11];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10002F3F4;

  return sub_10054FDF4(a1, v4, v5, (v1 + 4), v6, v7, v8);
}

double sub_1005538AC()
{
  if (qword_10117F850 != -1)
  {
    swift_once();
  }

  v0 = *&qword_101218F38;
  if (qword_10117F860 != -1)
  {
    swift_once();
  }

  result = v0 + *&qword_101218F48;
  *&qword_101218F58 = v0 + *&qword_101218F48;
  return result;
}

void sub_100553944()
{
  v1 = *&v0[OBJC_IVAR____TtC5Music19NowPlayingQueueCell_title + 8];
  if (v1)
  {
    v2 = *&v0[OBJC_IVAR____TtC5Music19NowPlayingQueueCell_title];
    v3 = OBJC_IVAR____TtC5Music19NowPlayingQueueCell_titleLabel;
    v4 = *&v0[OBJC_IVAR____TtC5Music19NowPlayingQueueCell_titleLabel];

    v5 = [v4 attributedText];
    if (v5)
    {
      v6 = v5;
      v7 = [v5 string];

      v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v10 = v9;

      if (v2 == v8 && v1 == v10)
      {

LABEL_17:

        return;
      }

      v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v12)
      {
        goto LABEL_17;
      }
    }

    v14 = [objc_allocWithZone(NSMutableParagraphStyle) init];
    if (qword_10117F870 != -1)
    {
      swift_once();
    }

    [v14 setFirstLineHeadIndent:*&qword_101218F58];
    v15 = [v0 traitCollection];
    v16 = [v15 layoutDirection];

    [v14 setBaseWritingDirection:v16 == 1];
    sub_10010FC20(&qword_10119FB30, &unk_100EBC740);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100EBE260;
    *(inited + 32) = NSParagraphStyleAttributeName;
    v18 = sub_100009F78(0, &qword_101194D60, NSMutableParagraphStyle_ptr);
    *(inited + 40) = v14;
    *(inited + 64) = v18;
    *(inited + 72) = NSFontAttributeName;
    v19 = objc_opt_self();
    v20 = NSParagraphStyleAttributeName;
    v21 = v14;
    v22 = NSFontAttributeName;
    v23 = [v19 _preferredFontForTextStyle:UIFontTextStyleBody variant:256];
    if (v23)
    {
      v24 = v23;
      v25 = sub_100009F78(0, &qword_101183A00, UIFont_ptr);
      *(inited + 80) = v24;
      *(inited + 104) = v25;
      *(inited + 112) = NSForegroundColorAttributeName;
      v26 = objc_opt_self();
      v27 = NSForegroundColorAttributeName;
      v28 = [v26 labelColor];
      *(inited + 144) = sub_100009F78(0, &qword_101180C98, UIColor_ptr);
      *(inited + 120) = v28;
      sub_10010BA14(inited);
      swift_setDeallocating();
      sub_10010FC20(&qword_101180420, &unk_100EDEFD0);
      swift_arrayDestroy();
      v29 = objc_allocWithZone(NSAttributedString);
      v30 = String._bridgeToObjectiveC()();

      type metadata accessor for Key(0);
      sub_100557AB0(&qword_10118AC30, type metadata accessor for Key, &unk_100EBC428);
      isa = Dictionary._bridgeToObjectiveC()().super.isa;

      v32 = [v29 initWithString:v30 attributes:isa];

      [*&v0[v3] setAttributedText:v32];
      [*&v0[v3] setHidden:0];
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    v13 = *&v0[OBJC_IVAR____TtC5Music19NowPlayingQueueCell_titleLabel];

    [v13 setHidden:1];
  }
}

void sub_100553DD0()
{
  type metadata accessor for Artwork(0);
  __chkstk_darwin();
  v2 = &v10[-((v1 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v3 = *(v0 + OBJC_IVAR____TtC5Music19NowPlayingQueueCell_artworkContainerView);
  v4 = *(v0 + OBJC_IVAR____TtC5Music19NowPlayingQueueCell_artwork);
  v5 = *&v3[OBJC_IVAR____TtCC5Music19NowPlayingQueueCellP33_30B386DF66C9CA3B1688A89B8614D8A420ArtworkContainerView_artwork];
  *&v3[OBJC_IVAR____TtCC5Music19NowPlayingQueueCellP33_30B386DF66C9CA3B1688A89B8614D8A420ArtworkContainerView_artwork] = v4;
  v6 = v4;
  v7 = v3;

  v8 = *&v7[OBJC_IVAR____TtCC5Music19NowPlayingQueueCellP33_30B386DF66C9CA3B1688A89B8614D8A420ArtworkContainerView_artworkView];
  v11 = v7;
  v9 = v8;
  static Artwork.with(_:)(sub_100557B5C, v2);
  Artwork.View.typedConfiguration.setter(v2);
}

id sub_100553ECC(id result)
{
  if (v1[OBJC_IVAR____TtC5Music19NowPlayingQueueCell_isExplicit] == (result & 1))
  {
    return result;
  }

  v2 = *&v1[OBJC_IVAR____TtC5Music19NowPlayingQueueCell_explicitBadgeLabel];
  if (v1[OBJC_IVAR____TtC5Music19NowPlayingQueueCell_isExplicit])
  {
    result = [v2 setHidden:0];
    v3 = *&v1[OBJC_IVAR____TtC5Music19NowPlayingQueueCell_titlesStackViewTrailingConstraint];
    if (v3)
    {
      v4 = *&v1[OBJC_IVAR____TtC5Music19NowPlayingQueueCell_cachedExplicitBadgeLabelWidth];
      v5 = qword_10117F868;
      v6 = v3;
      if (v5 != -1)
      {
        swift_once();
      }

      [v6 setConstant:-(v4 + *&qword_101218F50)];

      goto LABEL_10;
    }

    __break(1u);
LABEL_14:
    __break(1u);
    return result;
  }

  [v2 setHidden:1];
  result = *&v1[OBJC_IVAR____TtC5Music19NowPlayingQueueCell_titlesStackViewTrailingConstraint];
  if (!result)
  {
    goto LABEL_14;
  }

  [result setConstant:0.0];
LABEL_10:

  return [v1 setNeedsLayout];
}

void sub_10055400C(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  swift_getObjectType();
  v10 = &v4[OBJC_IVAR____TtC5Music19NowPlayingQueueCell_title];
  *v10 = 0;
  *(v10 + 1) = 0;
  v11 = OBJC_IVAR____TtC5Music19NowPlayingQueueCell_subtitle;
  v12 = type metadata accessor for AttributedString();
  (*(*(v12 - 8) + 56))(&v4[v11], 1, 1, v12);
  *&v4[OBJC_IVAR____TtC5Music19NowPlayingQueueCell_artwork] = 0;
  *&v4[OBJC_IVAR____TtC5Music19NowPlayingQueueCell_badgeArtworkCatalog] = 0;
  v4[OBJC_IVAR____TtC5Music19NowPlayingQueueCell_isExplicit] = 0;
  v4[OBJC_IVAR____TtC5Music19NowPlayingQueueCell_isDisabled] = 0;
  *&v4[OBJC_IVAR____TtC5Music19NowPlayingQueueCell_artworkCachingReference] = 0;
  *&v4[OBJC_IVAR____TtC5Music19NowPlayingQueueCell_cachedExplicitBadgeLabelWidth] = 0;
  v13 = OBJC_IVAR____TtC5Music19NowPlayingQueueCell_artworkContainerView;
  type metadata accessor for NowPlayingQueueCell.ArtworkContainerView();
  v14 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v15 = UIView.forAutolayout.getter();

  v16._countAndFlagsBits = 0xD00000000000001DLL;
  v16._object = 0x8000000100E4F5E0;
  v141 = AccessibilityIdentifier.init(name:)(v16);
  v17 = UIView.withAccessibilityIdentifier(_:)(v141.rawValue._countAndFlagsBits, v141.rawValue._object, v141.name._countAndFlagsBits, v141.name._object);

  *&v5[v13] = v17;
  v18 = OBJC_IVAR____TtC5Music19NowPlayingQueueCell_titlesStackView;
  v19 = [objc_allocWithZone(UIStackView) init];
  v20 = UIView.forAutolayout.getter();

  *&v5[v18] = v20;
  type metadata accessor for NowPlayingQueueCell.TextView();
  v21 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initReadonlyAndUnselectableWithFrame:0 textContainer:{0.0, 0.0, 0.0, 0.0}];
  if (v21)
  {
    v22 = v21;
    v23 = OBJC_IVAR____TtC5Music19NowPlayingQueueCell_titleLabel;
    v24 = UIView.forAutolayout.getter();

    v25._object = 0x8000000100E4F600;
    v25._countAndFlagsBits = 0xD00000000000001BLL;
    v142 = AccessibilityIdentifier.init(name:)(v25);
    v26 = UIView.withAccessibilityIdentifier(_:)(v142.rawValue._countAndFlagsBits, v142.rawValue._object, v142.name._countAndFlagsBits, v142.name._object);

    *&v5[v23] = v26;
    v27 = OBJC_IVAR____TtC5Music19NowPlayingQueueCell_subtitleLabel;
    v28 = [objc_allocWithZone(UILabel) init];
    v29 = UIView.forAutolayout.getter();

    v30._countAndFlagsBits = 0xD00000000000001ELL;
    v30._object = 0x8000000100E4F620;
    v143 = AccessibilityIdentifier.init(name:)(v30);
    v31 = UIView.withAccessibilityIdentifier(_:)(v143.rawValue._countAndFlagsBits, v143.rawValue._object, v143.name._countAndFlagsBits, v143.name._object);

    *&v5[v27] = v31;
    v32 = OBJC_IVAR____TtC5Music19NowPlayingQueueCell_explicitBadgeLabel;
    v33 = [objc_allocWithZone(UILabel) init];
    v34 = UIView.forAutolayout.getter();

    v35._countAndFlagsBits = 0xD000000000000023;
    v35._object = 0x8000000100E4F640;
    v144 = AccessibilityIdentifier.init(name:)(v35);
    v36 = UIView.withAccessibilityIdentifier(_:)(v144.rawValue._countAndFlagsBits, v144.rawValue._object, v144.name._countAndFlagsBits, v144.name._object);

    *&v5[v32] = v36;
    v37 = &v5[OBJC_IVAR____TtC5Music19NowPlayingQueueCell_lastSeenTitleLabelBounds];
    *v37 = 0u;
    *(v37 + 1) = 0u;
    *&v5[OBJC_IVAR____TtC5Music19NowPlayingQueueCell_lastSeenTitleText] = 0;
    *&v5[OBJC_IVAR____TtC5Music19NowPlayingQueueCell_artworkContainerViewTopConstraint] = 0;
    *&v5[OBJC_IVAR____TtC5Music19NowPlayingQueueCell_artworkContainerViewCenterYConstraint] = 0;
    *&v5[OBJC_IVAR____TtC5Music19NowPlayingQueueCell_titlesStackViewTopConstraint] = 0;
    *&v5[OBJC_IVAR____TtC5Music19NowPlayingQueueCell_titlesStackViewCenterYConstraint] = 0;
    *&v5[OBJC_IVAR____TtC5Music19NowPlayingQueueCell_titlesStackViewTrailingConstraint] = 0;
    v140.receiver = v5;
    v140.super_class = type metadata accessor for NowPlayingQueueCell(0);
    v38 = objc_msgSendSuper2(&v140, "initWithFrame:", a1, a2, a3, a4);
    v39 = OBJC_IVAR____TtC5Music19NowPlayingQueueCell_titleLabel;
    v40 = *&v38[OBJC_IVAR____TtC5Music19NowPlayingQueueCell_titleLabel];
    v41 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v42 = &v40[OBJC_IVAR____TtCC5Music19NowPlayingQueueCell8TextView_didLayoutSubviews];
    v43 = *&v40[OBJC_IVAR____TtCC5Music19NowPlayingQueueCell8TextView_didLayoutSubviews];
    v44 = *&v40[OBJC_IVAR____TtCC5Music19NowPlayingQueueCell8TextView_didLayoutSubviews + 8];
    *v42 = sub_1005579E0;
    v42[1] = v41;
    v45 = v38;
    v46 = v40;

    sub_100020438(v43, v44);

    v47 = v45;
    v48 = [v47 layer];
    [v48 setAllowsGroupOpacity:0];

    v49 = [v47 contentView];
    v50 = [v49 layer];

    [v50 setAllowsGroupBlending:0];
    v51 = OBJC_IVAR____TtC5Music19NowPlayingQueueCell_titlesStackView;
    v52 = [*&v47[OBJC_IVAR____TtC5Music19NowPlayingQueueCell_titlesStackView] layer];
    [v52 setAllowsGroupBlending:0];

    [*&v38[v39] setScrollEnabled:0];
    [*&v38[v39] setTranslatesAutoresizingMaskIntoConstraints:0];
    [*&v38[v39] setTextContainerInset:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];
    [*&v38[v39] setAdjustsFontForContentSizeCategory:1];
    v53 = [*&v38[v39] textContainer];
    [v53 setLineFragmentPadding:0.0];

    v54 = [*&v38[v39] textContainer];
    [v54 setLineBreakMode:4];

    v55 = *&v38[v39];
    v56 = objc_opt_self();
    v57 = v55;
    v58 = [v56 clearColor];
    [v57 setBackgroundColor:v58];

    v59 = [*&v38[v39] textLayoutManager];
    [v59 setUsesHyphenation:1];

    [*&v38[v39] setUserInteractionEnabled:0];
    v60 = OBJC_IVAR____TtC5Music19NowPlayingQueueCell_explicitBadgeLabel;
    v61 = *&v47[OBJC_IVAR____TtC5Music19NowPlayingQueueCell_explicitBadgeLabel];
    ExplicitRestrictionsController.shared.unsafeMutableAddressor();
    swift_beginAccess();

    v62 = String._bridgeToObjectiveC()();

    [v61 setText:v62];

    v63 = *&v47[v60];
    v64 = objc_opt_self();
    v65 = v63;
    v66 = [v64 preferredFontForTextStyle:UIFontTextStyleBody];
    [v65 setFont:v66];

    v67 = *&v47[v60];
    v68 = [v56 secondaryLabelColor];
    [v67 setTextColor:v68];

    [*&v47[v60] setHidden:1];
    [*&v47[v60] sizeThatFits:{INFINITY, INFINITY}];
    *&v47[OBJC_IVAR____TtC5Music19NowPlayingQueueCell_cachedExplicitBadgeLabelWidth] = v69;
    [*&v47[v51] setAxis:1];
    [*&v47[v51] addArrangedSubview:*&v38[v39]];
    v70 = v51;
    v139 = OBJC_IVAR____TtC5Music19NowPlayingQueueCell_subtitleLabel;
    [*&v47[v51] addArrangedSubview:*&v47[OBJC_IVAR____TtC5Music19NowPlayingQueueCell_subtitleLabel]];
    v71 = [v47 contentView];
    v72 = OBJC_IVAR____TtC5Music19NowPlayingQueueCell_artworkContainerView;
    [v71 addSubview:*&v47[OBJC_IVAR____TtC5Music19NowPlayingQueueCell_artworkContainerView]];

    v73 = [v47 contentView];
    [v73 addSubview:*&v47[v70]];

    v74 = [v47 contentView];
    v138 = v60;
    v75 = *&v47[v60];
    v76 = v70;
    [v74 addSubview:v75];

    v77 = [*&v47[v72] topAnchor];
    v78 = [v47 contentView];
    v79 = [v78 topAnchor];

    v80 = [v77 constraintEqualToAnchor:v79 constant:10.0];
    v81 = *&v47[OBJC_IVAR____TtC5Music19NowPlayingQueueCell_artworkContainerViewTopConstraint];
    *&v47[OBJC_IVAR____TtC5Music19NowPlayingQueueCell_artworkContainerViewTopConstraint] = v80;

    v82 = [*&v47[v72] centerYAnchor];
    v83 = [v47 contentView];
    v84 = [v83 centerYAnchor];

    v85 = [v82 constraintEqualToAnchor:v84];
    v86 = *&v47[OBJC_IVAR____TtC5Music19NowPlayingQueueCell_artworkContainerViewCenterYConstraint];
    *&v47[OBJC_IVAR____TtC5Music19NowPlayingQueueCell_artworkContainerViewCenterYConstraint] = v85;

    LODWORD(v87) = 1148846080;
    [*&v47[v139] setContentCompressionResistancePriority:1 forAxis:v87];
    v137 = v38;
    LODWORD(v88) = 1148846080;
    [*&v38[v39] setContentHuggingPriority:1 forAxis:v88];
    LODWORD(v89) = 1148846080;
    [*&v47[v70] setContentHuggingPriority:1 forAxis:v89];
    v90 = [*&v47[v70] firstBaselineAnchor];
    v91 = [*&v47[v72] bottomAnchor];
    v92 = [v90 constraintEqualToAnchor:v91 constant:-3.0];

    v93 = *&v47[OBJC_IVAR____TtC5Music19NowPlayingQueueCell_titlesStackViewTopConstraint];
    *&v47[OBJC_IVAR____TtC5Music19NowPlayingQueueCell_titlesStackViewTopConstraint] = v92;

    v94 = [*&v47[v70] centerYAnchor];
    v95 = [v47 contentView];
    v96 = [v95 centerYAnchor];

    v97 = [v94 constraintEqualToAnchor:v96];
    v98 = *&v47[OBJC_IVAR____TtC5Music19NowPlayingQueueCell_titlesStackViewCenterYConstraint];
    *&v47[OBJC_IVAR____TtC5Music19NowPlayingQueueCell_titlesStackViewCenterYConstraint] = v97;

    v99 = [*&v47[v70] trailingAnchor];
    v100 = [v47 contentView];
    v101 = [v100 layoutMarginsGuide];

    v102 = [v101 trailingAnchor];
    v103 = [v99 constraintEqualToAnchor:v102];

    v104 = OBJC_IVAR____TtC5Music19NowPlayingQueueCell_titlesStackViewTrailingConstraint;
    v105 = *&v47[OBJC_IVAR____TtC5Music19NowPlayingQueueCell_titlesStackViewTrailingConstraint];
    *&v47[OBJC_IVAR____TtC5Music19NowPlayingQueueCell_titlesStackViewTrailingConstraint] = v103;

    sub_10010FC20(&qword_101183990, &qword_100EBC750);
    v106 = swift_allocObject();
    *(v106 + 16) = xmmword_100EBEEA0;
    v107 = [*&v47[v72] heightAnchor];
    v108 = [*&v47[v72] widthAnchor];
    v109 = [v107 constraintEqualToAnchor:v108];

    *(v106 + 32) = v109;
    v110 = [*&v47[v72] widthAnchor];
    if (qword_10117F850 != -1)
    {
      swift_once();
    }

    v111 = [v110 constraintEqualToConstant:*&qword_101218F38];

    *(v106 + 40) = v111;
    v112 = [*&v47[v72] leadingAnchor];
    v113 = [v47 layoutMarginsGuide];

    v114 = [v113 leadingAnchor];
    v115 = [v112 constraintEqualToAnchor:v114];

    *(v106 + 48) = v115;
    v116 = [*&v47[v76] leadingAnchor];
    v117 = [*&v47[v72] leadingAnchor];
    v118 = [v116 constraintEqualToAnchor:v117];

    *(v106 + 56) = v118;
    v119 = [*&v47[v76] bottomAnchor];
    v120 = [v47 contentView];

    v121 = [v120 bottomAnchor];
    v122 = [v119 constraintLessThanOrEqualToAnchor:v121 constant:-4.0];

    *(v106 + 64) = v122;
    v123 = *&v47[v104];
    if (v123)
    {
      v124 = objc_opt_self();
      *(v106 + 72) = v123;
      v125 = *&v47[v138];
      v126 = v123;
      v127 = [v125 topAnchor];
      v128 = [*&v38[v39] topAnchor];
      v129 = [v127 constraintEqualToAnchor:v128];

      *(v106 + 80) = v129;
      v130 = [*&v47[v138] leadingAnchor];
      v131 = [*&v137[v39] leadingAnchor];
      v132 = [v130 constraintEqualToAnchor:v131];

      *(v106 + 88) = v132;
      sub_100009F78(0, &qword_1011838A0, NSLayoutConstraint_ptr);
      isa = Array._bridgeToObjectiveC()().super.isa;

      [v124 activateConstraints:isa];

      sub_100555134();
      sub_10010FC20(&unk_101182D80, "ʫ\n");
      v134 = swift_allocObject();
      *(v134 + 16) = xmmword_100EBC6B0;
      *(v134 + 32) = type metadata accessor for UITraitPreferredContentSizeCategory();
      *(v134 + 40) = &protocol witness table for UITraitPreferredContentSizeCategory;
      UIView.registerForTraitChanges<A>(_:handler:)();
      swift_unknownObjectRelease();

      v135 = swift_allocObject();
      *(v135 + 16) = xmmword_100EBC6B0;
      v136 = sub_100050078();
      *(v135 + 32) = &type metadata for HasAnimatedBackgroundTrait;
      *(v135 + 40) = v136;
      UIView.registerForTraitChanges<A>(_:handler:)();

      swift_unknownObjectRelease();

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_100555030(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    sub_100555504();
  }
}

void sub_100555134()
{
  v32 = [v0 traitCollection];
  v1 = [v32 preferredContentSizeCategory];
  v2 = UIContentSizeCategory.isAccessibilityCategory.getter();

  v3 = [*&v0[OBJC_IVAR____TtC5Music19NowPlayingQueueCell_titleLabel] textContainer];
  v4 = v3;
  if (v2)
  {
    v5 = 3;
  }

  else
  {
    v5 = 1;
  }

  [v3 setMaximumNumberOfLines:v5];

  [*&v0[OBJC_IVAR____TtC5Music19NowPlayingQueueCell_subtitleLabel] setNumberOfLines:v5];
  v6 = *&v0[OBJC_IVAR____TtC5Music19NowPlayingQueueCell_titlesStackView];
  v7 = objc_opt_self();
  v8 = v6;
  v9 = [v7 defaultMetrics];
  [v9 scaledValueForValue:v32 compatibleWithTraitCollection:2.0];
  v11 = v10;

  [v8 setSpacing:v11];
  [*&v0[OBJC_IVAR____TtC5Music19NowPlayingQueueCell_explicitBadgeLabel] sizeThatFits:{INFINITY, INFINITY}];
  *&v0[OBJC_IVAR____TtC5Music19NowPlayingQueueCell_cachedExplicitBadgeLabelWidth] = v12;
  sub_100555BBC(v2 & 1);
  sub_10010FC20(&qword_101183990, &qword_100EBC750);
  v13 = swift_allocObject();
  v14 = v13;
  *(v13 + 16) = xmmword_100EBC6D0;
  if ((v2 & 1) == 0)
  {
LABEL_10:
    v24 = *&v0[OBJC_IVAR____TtC5Music19NowPlayingQueueCell_artworkContainerViewTopConstraint];
    if (v24)
    {
      *(v14 + 32) = v24;
      v25 = *&v0[OBJC_IVAR____TtC5Music19NowPlayingQueueCell_titlesStackViewTopConstraint];
      if (v25)
      {
        v17 = objc_opt_self();
        *(v14 + 40) = v25;
        sub_100009F78(0, &qword_1011838A0, NSLayoutConstraint_ptr);
        v26 = v25;
        v27 = v24;
        isa = Array._bridgeToObjectiveC()().super.isa;

        [v17 deactivateConstraints:isa];

        v21 = swift_allocObject();
        *(v21 + 16) = xmmword_100EBC6D0;
        v22 = *&v0[OBJC_IVAR____TtC5Music19NowPlayingQueueCell_artworkContainerViewCenterYConstraint];
        if (v22)
        {
          *(v21 + 32) = v22;
          v23 = *&v0[OBJC_IVAR____TtC5Music19NowPlayingQueueCell_titlesStackViewCenterYConstraint];
          if (v23)
          {
            goto LABEL_14;
          }

LABEL_23:
          __break(1u);
          return;
        }

LABEL_22:
        __break(1u);
        goto LABEL_23;
      }

      goto LABEL_20;
    }

    goto LABEL_18;
  }

  v15 = *&v0[OBJC_IVAR____TtC5Music19NowPlayingQueueCell_artworkContainerViewCenterYConstraint];
  if (!v15)
  {
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  *(v13 + 32) = v15;
  v16 = *&v0[OBJC_IVAR____TtC5Music19NowPlayingQueueCell_titlesStackViewCenterYConstraint];
  if (!v16)
  {
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v17 = objc_opt_self();
  *(v14 + 40) = v16;
  sub_100009F78(0, &qword_1011838A0, NSLayoutConstraint_ptr);
  v18 = v16;
  v19 = v15;
  v20 = Array._bridgeToObjectiveC()().super.isa;

  [v17 deactivateConstraints:v20];

  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_100EBC6D0;
  v22 = *&v0[OBJC_IVAR____TtC5Music19NowPlayingQueueCell_artworkContainerViewTopConstraint];
  if (!v22)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  *(v21 + 32) = v22;
  v23 = *&v0[OBJC_IVAR____TtC5Music19NowPlayingQueueCell_titlesStackViewTopConstraint];
  if (!v23)
  {
    __break(1u);
    goto LABEL_10;
  }

LABEL_14:
  *(v21 + 40) = v23;
  v29 = v22;
  v30 = v23;
  v31 = Array._bridgeToObjectiveC()().super.isa;

  [v17 activateConstraints:v31];
}

void sub_100555504()
{
  if (*(v0 + OBJC_IVAR____TtC5Music19NowPlayingQueueCell_isExplicit) == 1)
  {
    v1 = OBJC_IVAR____TtC5Music19NowPlayingQueueCell_titleLabel;
    v2 = [*(v0 + OBJC_IVAR____TtC5Music19NowPlayingQueueCell_titleLabel) attributedText];
    v3 = OBJC_IVAR____TtC5Music19NowPlayingQueueCell_lastSeenTitleText;
    v4 = *(v0 + OBJC_IVAR____TtC5Music19NowPlayingQueueCell_lastSeenTitleText);
    if (v2)
    {
      v5 = v2;
      if (v4)
      {
        sub_100009F78(0, &unk_101189D70, NSAttributedString_ptr);
        v6 = v4;
        v7 = static NSObject.== infix(_:_:)();

        if (v7)
        {
          goto LABEL_7;
        }
      }

      else
      {
      }
    }

    else if (!v4)
    {
LABEL_7:
      v8 = 0;
      goto LABEL_10;
    }

    v9 = [*(v0 + v1) attributedText];
    v10 = *(v0 + v3);
    *(v0 + v3) = v9;

    v8 = 1;
LABEL_10:
    v11 = (v0 + OBJC_IVAR____TtC5Music19NowPlayingQueueCell_lastSeenTitleLabelBounds);
    v12 = *(v0 + OBJC_IVAR____TtC5Music19NowPlayingQueueCell_lastSeenTitleLabelBounds);
    v13 = *(v0 + OBJC_IVAR____TtC5Music19NowPlayingQueueCell_lastSeenTitleLabelBounds + 8);
    v14 = *(v0 + OBJC_IVAR____TtC5Music19NowPlayingQueueCell_lastSeenTitleLabelBounds + 16);
    v15 = *(v0 + OBJC_IVAR____TtC5Music19NowPlayingQueueCell_lastSeenTitleLabelBounds + 24);
    [*(v0 + v1) bounds];
    v51.origin.x = v16;
    v51.origin.y = v17;
    v51.size.width = v18;
    v51.size.height = v19;
    v47.origin.x = v12;
    v47.origin.y = v13;
    v47.size.width = v14;
    v47.size.height = v15;
    if (CGRectEqualToRect(v47, v51))
    {
      if (!v8)
      {
        return;
      }
    }

    else
    {
      [*(v0 + v1) bounds];
      *v11 = v20;
      v11[1] = v21;
      v11[2] = v22;
      v11[3] = v23;
    }

    v44 = 0u;
    v45 = 0u;
    v46 = 1;
    v43 = 0;
    v24 = [*(v0 + v1) textLayoutManager];
    if (!v24)
    {
      v26 = 0;
      goto LABEL_27;
    }

    v25 = v24;
    v26 = swift_allocObject();
    *(v26 + 16) = &v43;
    *(v26 + 24) = &v44;
    v27 = swift_allocObject();
    *(v27 + 16) = sub_1005579AC;
    *(v27 + 24) = v26;
    *&aBlock.tx = sub_1005579B4;
    *&aBlock.ty = v27;
    *&aBlock.a = _NSConcreteStackBlock;
    *&aBlock.b = 1107296256;
    *&aBlock.c = sub_100555B78;
    *&aBlock.d = &unk_1010B2278;
    v28 = _Block_copy(&aBlock);

    v29 = [v25 enumerateTextLayoutFragmentsFromLocation:0 options:0 usingBlock:v28];

    swift_unknownObjectRelease();
    _Block_release(v28);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }

    else
    {
      if (v46)
      {
LABEL_25:
        v24 = sub_1005579AC;
LABEL_27:
        sub_100020438(v24, v26);
        return;
      }

      v12 = *(&v45 + 1);
      v13 = *&v45;
      v14 = *(&v44 + 1);
      v15 = *&v44;
      v27 = OBJC_IVAR____TtC5Music19NowPlayingQueueCell_explicitBadgeLabel;
      isEscapingClosureAtFileLocation = *(v0 + OBJC_IVAR____TtC5Music19NowPlayingQueueCell_explicitBadgeLabel);
      v48.origin.x = v15;
      v48.origin.y = v14;
      v48.size.width = v13;
      v48.size.height = v12;
      MaxX = CGRectGetMaxX(v48);
      if (qword_10117F868 == -1)
      {
LABEL_18:
        v32 = *&qword_101218F50;
        v33 = 0.0;
        if ((v43 & 1) == 0)
        {
          if (qword_10117F850 != -1)
          {
            v40 = MaxX;
            swift_once();
            MaxX = v40;
          }

          v34 = *&qword_101218F38;
          if (qword_10117F860 != -1)
          {
            v39 = qword_101218F38;
            v41 = MaxX;
            swift_once();
            v34 = *&v39;
            MaxX = v41;
          }

          v33 = v34 + *&qword_101218F48;
        }

        v35 = MaxX + v32 + v33;
        v49.origin.x = v15;
        v49.origin.y = v14;
        v49.size.width = v13;
        v49.size.height = v12;
        MaxY = CGRectGetMaxY(v49);
        [*(v0 + v27) frame];
        Height = CGRectGetHeight(v50);
        CGAffineTransformMakeTranslation(&aBlock, v35, MaxY - Height);
        [isEscapingClosureAtFileLocation setTransform:&aBlock];

        goto LABEL_25;
      }
    }

    v38 = MaxX;
    swift_once();
    MaxX = v38;
    goto LABEL_18;
  }
}

unint64_t sub_1005559AC(void *a1, BOOL *a2, uint64_t a3)
{
  v6 = [a1 textLineFragments];
  sub_100009F78(0, &qword_101194D68, NSTextLineFragment_ptr);
  v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v7 >> 62)
  {
    v8 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  *a2 = v8 > 1;
  v9 = [a1 textLineFragments];
  v10 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!(v10 >> 62))
  {
    v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v11)
    {
      goto LABEL_5;
    }

LABEL_13:

    v19 = 0uLL;
    v20 = 0uLL;
    goto LABEL_14;
  }

  v11 = _CocoaArrayWrapper.endIndex.getter();
  if (!v11)
  {
    goto LABEL_13;
  }

LABEL_5:
  result = v11 - 1;
  if (__OFSUB__(v11, 1))
  {
    __break(1u);
    goto LABEL_16;
  }

  if ((v10 & 0xC000000000000001) != 0)
  {
LABEL_16:
    v13 = sub_1007E9BEC(result, v10);
    goto LABEL_10;
  }

  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (result < *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v13 = *(v10 + 8 * result + 32);
LABEL_10:
    v14 = v13;

    [v14 typographicBounds];
    v22 = v15;
    v23 = v16;
    v21 = v17;
    v24 = v18;

    *&v20 = v21;
    *&v19 = v22;
    *(&v19 + 1) = v23;
    *(&v20 + 1) = v24;
LABEL_14:
    *a3 = v19;
    *(a3 + 16) = v20;
    *(a3 + 32) = v11 == 0;
    return 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_100555B78(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = v2();

  return v4 & 1;
}

id sub_100555BBC(char a1)
{
  v2 = v1;
  sub_10010FC20(&qword_101180C90, &unk_100EBC730);
  __chkstk_darwin();
  v5 = &v39 - v4;
  v6 = type metadata accessor for AttributedString();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v11 = &v39 - v10;
  v12 = OBJC_IVAR____TtC5Music19NowPlayingQueueCell_subtitle;
  swift_beginAccess();
  sub_1005578D4(&v2[v12], v5);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_100557944(v5);
    v13 = OBJC_IVAR____TtC5Music19NowPlayingQueueCell_subtitleLabel;
    [*&v2[OBJC_IVAR____TtC5Music19NowPlayingQueueCell_subtitleLabel] setText:0];
    return [*&v2[v13] setHidden:1];
  }

  else
  {
    (*(v7 + 32))(v11, v5, v6);
    v15 = [v2 traitCollection];
    sub_100050078();
    v16 = UITraitCollection.subscript.getter();

    v41 = v16;
    if (v16)
    {
      v17 = [objc_allocWithZone(UIColor) initWithWhite:0.45 alpha:1.0];
    }

    else
    {
      v17 = [objc_opt_self() secondaryLabelColor];
    }

    v40 = v17;
    v18 = [objc_allocWithZone(NSMutableParagraphStyle) init];
    v19 = 0.0;
    if ((a1 & 1) == 0)
    {
      if (qword_10117F870 != -1)
      {
        swift_once();
      }

      v19 = *&qword_101218F58;
    }

    [v18 setFirstLineHeadIndent:v19];
    [v18 setLineBreakMode:4];
    v20 = [v2 traitCollection];
    v21 = [v20 layoutDirection];

    [v18 setBaseWritingDirection:v21 == 1];
    sub_100009F78(0, &qword_101194D58, NSMutableAttributedString_ptr);
    v22 = *(v7 + 16);
    v42 = v11;
    v22(v9, v11, v6);
    v39 = NSAttributedString.init(_:)();
    sub_10010FC20(&qword_10119FB30, &unk_100EBC740);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100EBE260;
    *(inited + 32) = NSParagraphStyleAttributeName;
    v24 = sub_100009F78(0, &qword_101194D60, NSMutableParagraphStyle_ptr);
    *(inited + 40) = v18;
    *(inited + 64) = v24;
    *(inited + 72) = NSFontAttributeName;
    v25 = objc_opt_self();
    v26 = NSParagraphStyleAttributeName;
    v43 = v18;
    v27 = NSFontAttributeName;
    result = [v25 _preferredFontForTextStyle:UIFontTextStyleFootnote variant:256];
    if (result)
    {
      v28 = result;
      v29 = sub_100009F78(0, &qword_101183A00, UIFont_ptr);
      *(inited + 80) = v28;
      *(inited + 104) = v29;
      *(inited + 112) = NSForegroundColorAttributeName;
      *(inited + 144) = sub_100009F78(0, &qword_101180C98, UIColor_ptr);
      v30 = v40;
      *(inited + 120) = v40;
      v31 = NSForegroundColorAttributeName;
      v32 = v30;
      sub_10010BA14(inited);
      swift_setDeallocating();
      sub_10010FC20(&qword_101180420, &unk_100EDEFD0);
      swift_arrayDestroy();
      type metadata accessor for Key(0);
      sub_100557AB0(&qword_10118AC30, type metadata accessor for Key, &unk_100EBC428);
      isa = Dictionary._bridgeToObjectiveC()().super.isa;

      v34 = v39;
      [v34 setAttributes:isa range:{0, objc_msgSend(v34, "length")}];

      v35 = OBJC_IVAR____TtC5Music19NowPlayingQueueCell_subtitleLabel;
      v36 = *&v2[OBJC_IVAR____TtC5Music19NowPlayingQueueCell_subtitleLabel];
      [v36 setAttributedText:v34];

      [*&v2[v35] setHidden:0];
      v37 = [*&v2[v35] layer];
      v38 = 0;
      if (v41)
      {
        v38 = kCAFilterPlusL;
      }

      [v37 setCompositingFilter:v38];

      swift_unknownObjectRelease();
      return (*(v7 + 8))(v42, v6);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t type metadata accessor for NowPlayingQueueCell(uint64_t a1)
{
  result = qword_101194CC0;
  if (!qword_101194CC0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1005563B4(uint64_t a1)
{
  sub_1005564A0(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1005564A0(uint64_t a1)
{
  if (!qword_101194CD0)
  {
    type metadata accessor for AttributedString();
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_101194CD0);
    }
  }
}

void sub_1005566F4(void **a1, uint64_t a2)
{
  if (*(a2 + OBJC_IVAR____TtCC5Music19NowPlayingQueueCellP33_30B386DF66C9CA3B1688A89B8614D8A420ArtworkContainerView_cachingReference))
  {

    v4 = Artwork.Caching.Reference.defaultIdentifier.unsafeMutableAddressor();
    v6 = *v4;
    v5 = v4[1];
    swift_weakInit();
    v30[0] = v6;
    v30[1] = v5;
    swift_weakAssign();

    sub_10006B010(v30, (a1 + 2), &qword_101190910, &qword_100ECD530);
  }

  v7 = Artwork.Decoration.list.unsafeMutableAddressor();
  v8 = type metadata accessor for Artwork(0);
  sub_100557B64(v7, a1 + *(v8 + 28));
  v9 = *(a2 + OBJC_IVAR____TtCC5Music19NowPlayingQueueCellP33_30B386DF66C9CA3B1688A89B8614D8A420ArtworkContainerView_artwork);
  v10 = v9;
  v11 = Artwork.Content.init(catalog:background:)(v9, 0);
  v13 = v12;
  sub_10004D23C(*a1, a1[1]);
  *a1 = v11;
  a1[1] = v13;
  v14 = Artwork.Placeholder.nowPlaying.unsafeMutableAddressor();
  v15 = *v14;
  v16 = v14[1];
  v17 = v14[2];
  v18 = v14[3];
  v28 = v14[5];
  v29 = v14[4];
  v19 = a1 + *(v8 + 32);
  v20 = *(v19 + 1);
  v27 = *v19;
  v21 = *(v19 + 2);
  v22 = *(v19 + 3);
  v23 = v17;
  v24 = v18;
  v25 = v15;
  v26 = v16;
  sub_10004D5E4(v27, v20, v21, v22);
  *v19 = v15;
  *(v19 + 1) = v16;
  *(v19 + 2) = v17;
  *(v19 + 3) = v18;
  *(v19 + 4) = v29;
  *(v19 + 5) = v28;
}

id sub_100556868()
{
  v1 = type metadata accessor for Artwork(0);
  __chkstk_darwin();
  v3 = &v26[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v4 = __chkstk_darwin().n128_u64[0];
  v6 = &v26[-1] - v5;
  if (*&v0[OBJC_IVAR____TtCC5Music19NowPlayingQueueCellP33_30B386DF66C9CA3B1688A89B8614D8A420ArtworkContainerView_badgeArtworkCatalog])
  {
    __chkstk_darwin();
    *(&v25 - 2) = v0;
    *(&v25 - 1) = v7;
    v8 = v7;
    static Artwork.with(_:)(sub_1005579E8, v6);
    v9 = OBJC_IVAR____TtCC5Music19NowPlayingQueueCellP33_30B386DF66C9CA3B1688A89B8614D8A420ArtworkContainerView_badgeArtworkView;
    v10 = *&v0[OBJC_IVAR____TtCC5Music19NowPlayingQueueCellP33_30B386DF66C9CA3B1688A89B8614D8A420ArtworkContainerView_badgeArtworkView];
    if (v10)
    {
      v26[3] = v1;
      v26[4] = sub_100557AB0(&qword_101194D70, type metadata accessor for Artwork, &protocol conformance descriptor for Artwork);
      v11 = sub_10001C8B8(v26);
      sub_1005579F0(v6, v11);
      v12 = type metadata accessor for Artwork.View(0);
      v13 = sub_100557AB0(&qword_101194D78, type metadata accessor for Artwork.View, &protocol conformance descriptor for Artwork.View);
      v14 = v10;
      MusicUIContentView.configuration.setter(v26, v12, v13);
    }

    else
    {
      sub_1005579F0(v6, v3);
      v18 = objc_allocWithZone(type metadata accessor for Artwork.View(0));
      v19 = v3;
      v20 = v0;
      v21 = Artwork.View.init(configuration:)(v19);
      [v20 addSubview:v21];
      v22 = *&v20[v9];
      *&v20[v9] = v21;
      v23 = v21;

      [v20 setNeedsLayout];
    }

    return sub_100557A54(v6);
  }

  else
  {
    v15 = OBJC_IVAR____TtCC5Music19NowPlayingQueueCellP33_30B386DF66C9CA3B1688A89B8614D8A420ArtworkContainerView_badgeArtworkView;
    v16 = *&v0[OBJC_IVAR____TtCC5Music19NowPlayingQueueCellP33_30B386DF66C9CA3B1688A89B8614D8A420ArtworkContainerView_badgeArtworkView];
    if (v16)
    {
      [v16 removeFromSuperview];
      v17 = *&v0[v15];
    }

    else
    {
      v17 = 0;
    }

    *&v0[v15] = 0;

    return [v0 setNeedsLayout];
  }
}

void sub_100556B1C(void **a1, uint64_t a2, void *a3)
{
  type metadata accessor for Artwork.Decoration(0);
  __chkstk_darwin();
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a2 + OBJC_IVAR____TtCC5Music19NowPlayingQueueCellP33_30B386DF66C9CA3B1688A89B8614D8A420ArtworkContainerView_cachingReference))
  {

    v8 = Artwork.Caching.Reference.defaultIdentifier.unsafeMutableAddressor();
    v10 = *v8;
    v9 = v8[1];
    swift_weakInit();
    v34[0] = v10;
    v34[1] = v9;
    swift_weakAssign();

    sub_10006B010(v34, (a1 + 2), &qword_101190910, &qword_100ECD530);
  }

  static Artwork.Decoration.with(_:)(sub_100556CE4, v7);
  v11 = type metadata accessor for Artwork(0);
  sub_100557AF8(v7, a1 + *(v11 + 28));
  v12 = a3;
  v13 = Artwork.Content.init(catalog:background:)(a3, 0);
  v15 = v14;
  sub_10004D23C(*a1, a1[1]);
  *a1 = v13;
  a1[1] = v15;
  v16 = Artwork.Placeholder.person.unsafeMutableAddressor();
  v17 = *v16;
  v18 = v16[1];
  v19 = v16[2];
  v20 = v16[3];
  v21 = v16[4];
  v32 = v16[5];
  v33 = v21;
  v22 = a1 + *(v11 + 32);
  v23 = *(v22 + 1);
  v31 = *v22;
  v24 = *(v22 + 2);
  v25 = *(v22 + 3);
  v26 = v19;
  v27 = v20;
  v28 = v17;
  v29 = v18;
  sub_10004D5E4(v31, v23, v24, v25);
  *v22 = v17;
  *(v22 + 1) = v18;
  *(v22 + 2) = v19;
  *(v22 + 3) = v20;
  v30 = v32;
  *(v22 + 4) = v33;
  *(v22 + 5) = v30;
}

void sub_100556CE4(uint64_t a1)
{
  sub_10010FC20(&qword_101183A90, &unk_100EBE340);
  __chkstk_darwin();
  v3 = &v13 - v2;
  static UIView.Corner.rounded.getter();
  v4 = type metadata accessor for UIView.Corner();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = type metadata accessor for Artwork.Decoration(0);
  sub_10006B010(v3, a1 + *(v5 + 20), &qword_101183A90, &unk_100EBE340);
  v6 = [objc_opt_self() whiteColor];
  UIView.Border.init(thickness:color:)();
  v8 = v7;
  v10 = v9;
  v12 = v11 & 1;

  *a1 = v8;
  *(a1 + 8) = v12;
  *(a1 + 16) = v10;
}

char *sub_100556E18(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  type metadata accessor for Artwork(0);
  __chkstk_darwin();
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v5[OBJC_IVAR____TtCC5Music19NowPlayingQueueCellP33_30B386DF66C9CA3B1688A89B8614D8A420ArtworkContainerView_cachingReference] = 0;
  *&v5[OBJC_IVAR____TtCC5Music19NowPlayingQueueCellP33_30B386DF66C9CA3B1688A89B8614D8A420ArtworkContainerView_artwork] = 0;
  *&v5[OBJC_IVAR____TtCC5Music19NowPlayingQueueCellP33_30B386DF66C9CA3B1688A89B8614D8A420ArtworkContainerView_badgeArtworkCatalog] = 0;
  v12 = OBJC_IVAR____TtCC5Music19NowPlayingQueueCellP33_30B386DF66C9CA3B1688A89B8614D8A420ArtworkContainerView_artworkView;
  Artwork.init()(v11);
  v13 = objc_allocWithZone(type metadata accessor for Artwork.View(0));
  *&v5[v12] = Artwork.View.init(configuration:)(v11);
  *&v5[OBJC_IVAR____TtCC5Music19NowPlayingQueueCellP33_30B386DF66C9CA3B1688A89B8614D8A420ArtworkContainerView_badgeArtworkView] = 0;
  v14 = type metadata accessor for NowPlayingQueueCell.ArtworkContainerView();
  v17.receiver = v5;
  v17.super_class = v14;
  v15 = objc_msgSendSuper2(&v17, "initWithFrame:", a1, a2, a3, a4);
  [v15 addSubview:*&v15[OBJC_IVAR____TtCC5Music19NowPlayingQueueCellP33_30B386DF66C9CA3B1688A89B8614D8A420ArtworkContainerView_artworkView]];
  return v15;
}

void sub_100556FA0()
{
  v14.receiver = v0;
  v14.super_class = type metadata accessor for NowPlayingQueueCell.ArtworkContainerView();
  objc_msgSendSuper2(&v14, "layoutSubviews");
  if (!*&v0[OBJC_IVAR____TtCC5Music19NowPlayingQueueCellP33_30B386DF66C9CA3B1688A89B8614D8A420ArtworkContainerView_badgeArtworkCatalog])
  {
    v10 = *&v0[OBJC_IVAR____TtCC5Music19NowPlayingQueueCellP33_30B386DF66C9CA3B1688A89B8614D8A420ArtworkContainerView_artworkView];
    [v0 bounds];
    [v10 setFrame:{v12, v13}];
LABEL_10:

    return;
  }

  if (qword_10117F858 != -1)
  {
    swift_once();
  }

  v1 = *&qword_101218F40;
  v2 = OBJC_IVAR____TtCC5Music19NowPlayingQueueCellP33_30B386DF66C9CA3B1688A89B8614D8A420ArtworkContainerView_artworkView;
  v3 = *&v0[OBJC_IVAR____TtCC5Music19NowPlayingQueueCellP33_30B386DF66C9CA3B1688A89B8614D8A420ArtworkContainerView_artworkView];
  [v3 frame];
  [v3 setFrame:?];

  v4 = *&v0[v2];
  [v4 frame];
  [v4 setFrame:{0.0, 0.0}];

  v5 = OBJC_IVAR____TtCC5Music19NowPlayingQueueCellP33_30B386DF66C9CA3B1688A89B8614D8A420ArtworkContainerView_badgeArtworkView;
  v6 = *&v0[OBJC_IVAR____TtCC5Music19NowPlayingQueueCellP33_30B386DF66C9CA3B1688A89B8614D8A420ArtworkContainerView_badgeArtworkView];
  if (v6)
  {
    v7 = v6;
    [v7 frame];
    [v7 setFrame:?];

    v8 = *&v0[v5];
    if (v8)
    {
      v9 = qword_10117F850;
      v10 = v8;
      if (v9 != -1)
      {
        swift_once();
      }

      v11 = *&qword_101218F38 - v1;
      [v10 frame];
      [v10 setFrame:{v11, v11}];
      goto LABEL_10;
    }
  }
}

id sub_1005571E8(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v4.receiver = v2;
  v4.super_class = a2(a1);
  return objc_msgSendSuper2(&v4, "dealloc");
}

id sub_1005572E4(void *a1)
{
  v1 = [a1 traitCollection];
  v2 = [v1 preferredContentSizeCategory];

  LOBYTE(v1) = UIContentSizeCategory.isAccessibilityCategory.getter();
  return sub_100555BBC(v1 & 1);
}

void sub_100557358(void *a1)
{
  if ([a1 userInterfaceIdiom] == 6)
  {
    v2 = 72.0;
  }

  else
  {
    v2 = Int.seconds.getter(56);
  }

  v3 = Int.seconds.getter(100);
  v4 = [a1 preferredContentSizeCategory];
  v5 = UIContentSizeCategory.isAccessibilityCategory.getter();

  v6 = [objc_opt_self() defaultMetrics];
  v7 = v6;
  if (v5)
  {
    v2 = v3;
  }

  [v6 scaledValueForValue:a1 compatibleWithTraitCollection:v2];
}

void sub_100557438()
{
  v1 = v0;
  v2 = (v0 + OBJC_IVAR____TtC5Music19NowPlayingQueueCell_title);
  *v2 = 0;
  v2[1] = 0;
  v3 = OBJC_IVAR____TtC5Music19NowPlayingQueueCell_subtitle;
  v4 = type metadata accessor for AttributedString();
  (*(*(v4 - 8) + 56))(v1 + v3, 1, 1, v4);
  *(v1 + OBJC_IVAR____TtC5Music19NowPlayingQueueCell_artwork) = 0;
  *(v1 + OBJC_IVAR____TtC5Music19NowPlayingQueueCell_badgeArtworkCatalog) = 0;
  *(v1 + OBJC_IVAR____TtC5Music19NowPlayingQueueCell_isExplicit) = 0;
  *(v1 + OBJC_IVAR____TtC5Music19NowPlayingQueueCell_isDisabled) = 0;
  *(v1 + OBJC_IVAR____TtC5Music19NowPlayingQueueCell_artworkCachingReference) = 0;
  *(v1 + OBJC_IVAR____TtC5Music19NowPlayingQueueCell_cachedExplicitBadgeLabelWidth) = 0;
  v5 = OBJC_IVAR____TtC5Music19NowPlayingQueueCell_artworkContainerView;
  type metadata accessor for NowPlayingQueueCell.ArtworkContainerView();
  v6 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v7 = UIView.forAutolayout.getter();

  v8._countAndFlagsBits = 0xD00000000000001DLL;
  v8._object = 0x8000000100E4F5E0;
  v30 = AccessibilityIdentifier.init(name:)(v8);
  v9 = UIView.withAccessibilityIdentifier(_:)(v30.rawValue._countAndFlagsBits, v30.rawValue._object, v30.name._countAndFlagsBits, v30.name._object);

  *(v1 + v5) = v9;
  v10 = OBJC_IVAR____TtC5Music19NowPlayingQueueCell_titlesStackView;
  v11 = [objc_allocWithZone(UIStackView) init];
  v12 = UIView.forAutolayout.getter();

  *(v1 + v10) = v12;
  type metadata accessor for NowPlayingQueueCell.TextView();
  v13 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initReadonlyAndUnselectableWithFrame:0 textContainer:{0.0, 0.0, 0.0, 0.0}];
  if (!v13)
  {
    __break(1u);
  }

  v14 = OBJC_IVAR____TtC5Music19NowPlayingQueueCell_titleLabel;
  v15 = v13;
  v16 = UIView.forAutolayout.getter();

  v17._object = 0x8000000100E4F600;
  v17._countAndFlagsBits = 0xD00000000000001BLL;
  v31 = AccessibilityIdentifier.init(name:)(v17);
  v18 = UIView.withAccessibilityIdentifier(_:)(v31.rawValue._countAndFlagsBits, v31.rawValue._object, v31.name._countAndFlagsBits, v31.name._object);

  *(v1 + v14) = v18;
  v19 = OBJC_IVAR____TtC5Music19NowPlayingQueueCell_subtitleLabel;
  v20 = [objc_allocWithZone(UILabel) init];
  v21 = UIView.forAutolayout.getter();

  v22._countAndFlagsBits = 0xD00000000000001ELL;
  v22._object = 0x8000000100E4F620;
  v32 = AccessibilityIdentifier.init(name:)(v22);
  v23 = UIView.withAccessibilityIdentifier(_:)(v32.rawValue._countAndFlagsBits, v32.rawValue._object, v32.name._countAndFlagsBits, v32.name._object);

  *(v1 + v19) = v23;
  v24 = OBJC_IVAR____TtC5Music19NowPlayingQueueCell_explicitBadgeLabel;
  v25 = [objc_allocWithZone(UILabel) init];
  v26 = UIView.forAutolayout.getter();

  v27._countAndFlagsBits = 0xD000000000000023;
  v27._object = 0x8000000100E4F640;
  v33 = AccessibilityIdentifier.init(name:)(v27);
  v28 = UIView.withAccessibilityIdentifier(_:)(v33.rawValue._countAndFlagsBits, v33.rawValue._object, v33.name._countAndFlagsBits, v33.name._object);

  *(v1 + v24) = v28;
  v29 = (v1 + OBJC_IVAR____TtC5Music19NowPlayingQueueCell_lastSeenTitleLabelBounds);
  *v29 = 0u;
  v29[1] = 0u;
  *(v1 + OBJC_IVAR____TtC5Music19NowPlayingQueueCell_lastSeenTitleText) = 0;
  *(v1 + OBJC_IVAR____TtC5Music19NowPlayingQueueCell_artworkContainerViewTopConstraint) = 0;
  *(v1 + OBJC_IVAR____TtC5Music19NowPlayingQueueCell_artworkContainerViewCenterYConstraint) = 0;
  *(v1 + OBJC_IVAR____TtC5Music19NowPlayingQueueCell_titlesStackViewTopConstraint) = 0;
  *(v1 + OBJC_IVAR____TtC5Music19NowPlayingQueueCell_titlesStackViewCenterYConstraint) = 0;
  *(v1 + OBJC_IVAR____TtC5Music19NowPlayingQueueCell_titlesStackViewTrailingConstraint) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void sub_1005577C4()
{
  v1 = v0;
  type metadata accessor for Artwork(0);
  __chkstk_darwin();
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v1 + OBJC_IVAR____TtCC5Music19NowPlayingQueueCellP33_30B386DF66C9CA3B1688A89B8614D8A420ArtworkContainerView_cachingReference) = 0;
  *(v1 + OBJC_IVAR____TtCC5Music19NowPlayingQueueCellP33_30B386DF66C9CA3B1688A89B8614D8A420ArtworkContainerView_artwork) = 0;
  *(v1 + OBJC_IVAR____TtCC5Music19NowPlayingQueueCellP33_30B386DF66C9CA3B1688A89B8614D8A420ArtworkContainerView_badgeArtworkCatalog) = 0;
  v4 = OBJC_IVAR____TtCC5Music19NowPlayingQueueCellP33_30B386DF66C9CA3B1688A89B8614D8A420ArtworkContainerView_artworkView;
  Artwork.init()(v3);
  v5 = objc_allocWithZone(type metadata accessor for Artwork.View(0));
  *(v1 + v4) = Artwork.View.init(configuration:)(v3);
  *(v1 + OBJC_IVAR____TtCC5Music19NowPlayingQueueCellP33_30B386DF66C9CA3B1688A89B8614D8A420ArtworkContainerView_badgeArtworkView) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_1005578D4(uint64_t a1, uint64_t a2)
{
  v4 = sub_10010FC20(&qword_101180C90, &unk_100EBC730);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100557944(uint64_t a1)
{
  v2 = sub_10010FC20(&qword_101180C90, &unk_100EBC730);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1005579F0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Artwork(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100557A54(uint64_t a1)
{
  v2 = type metadata accessor for Artwork(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100557AB0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100557AF8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Artwork.Decoration(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_100557B64(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Artwork.Decoration(0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

double sub_100557C00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v29 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin();
  v7 = &v26 - v6;
  type metadata accessor for Optional();
  __chkstk_darwin();
  v9 = &v26 - v8;
  v10 = *(a1 - 8);
  __chkstk_darwin();
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = swift_getAssociatedTypeWitness();
  v26 = *(v13 - 8);
  v14 = __chkstk_darwin();
  v16 = &v26 - v15;
  (*(v10 + 16))(v12, v31, a1, v14);
  dispatch thunk of Sequence.makeIterator()();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v30 = v16;
  v31 = v13;
  v28 = AssociatedConformanceWitness;
  dispatch thunk of IteratorProtocol.next()();
  v27 = *(v5 + 48);
  v18 = 0.0;
  if (v27(v9, 1, AssociatedTypeWitness) != 1)
  {
    v19 = *(v5 + 32);
    v20 = (v5 + 8);
    while (1)
    {
      v19(v7, v9, AssociatedTypeWitness);
      if (static Task<>.isCancelled.getter())
      {
        break;
      }

      v21 = (*(v29 + 8))(AssociatedTypeWitness);
      v23 = v22;
      (*v20)(v7, AssociatedTypeWitness);
      v24 = *&v21;
      if (v23)
      {
        v24 = 0.0;
      }

      v18 = v18 + v24;
      dispatch thunk of IteratorProtocol.next()();
      if (v27(v9, 1, AssociatedTypeWitness) == 1)
      {
        goto LABEL_9;
      }
    }

    (*v20)(v7, AssociatedTypeWitness);
    v18 = 0.0;
  }

LABEL_9:
  (*(v26 + 8))(v30, v31);
  return v18;
}

uint64_t sub_100557FB0(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 32) = a1;
  *(v6 + 16) = a5;
  *(v6 + 24) = a6;
  type metadata accessor for MainActor();
  *(v6 + 40) = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10055804C, v8, v7);
}

uint64_t sub_10055804C()
{
  v1 = v0[4];
  v2 = *(v0 + 2);

  v2(v3, v1);
  v4 = *(v0 + 1);

  return v4();
}

id sub_1005580EC()
{
  result = [objc_opt_self() mainBundle];
  qword_101218F90 = result;
  return result;
}

BOOL sub_100558128(char a1, uint64_t a2, uint64_t a3)
{
  sub_10010FC20(&unk_101188920, &qword_100EBCC50);
  __chkstk_darwin();
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v9 = &v25 - v8;
  sub_10010FC20(&unk_101192950, &unk_100EBDF40);
  __chkstk_darwin();
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin();
  v14 = &v25 - v13;
  if (!a1)
  {
    (*(*(a3 + 8) + 8))(a2, v12);
    v20 = type metadata accessor for VideoArtwork();
    v16 = (*(*(v20 - 8) + 48))(v14, 1, v20) != 1;
    v17 = &unk_101192950;
    v18 = &unk_100EBDF40;
    v19 = v14;
    goto LABEL_7;
  }

  if (a1 == 1)
  {
    (*(*(a3 + 16) + 8))(a2, v12);
    v15 = type metadata accessor for Artwork();
    v16 = (*(*(v15 - 8) + 48))(v9, 1, v15) != 1;
    v17 = &unk_101188920;
    v18 = &qword_100EBCC50;
    v19 = v9;
LABEL_7:
    sub_1000095E8(v19, v17, v18);
    return v16;
  }

  (*(*(a3 + 8) + 8))(a2, v12);
  v21 = type metadata accessor for VideoArtwork();
  v16 = 1;
  v22 = (*(*(v21 - 8) + 48))(v11, 1, v21);
  sub_1000095E8(v11, &unk_101192950, &unk_100EBDF40);
  if (v22 == 1)
  {
    (*(*(a3 + 16) + 8))(a2);
    v23 = type metadata accessor for Artwork();
    v16 = (*(*(v23 - 8) + 48))(v7, 1, v23) != 1;
    v17 = &unk_101188920;
    v18 = &qword_100EBCC50;
    v19 = v7;
    goto LABEL_7;
  }

  return v16;
}

void sub_100558458(uint64_t a1, uint64_t a2, char a3)
{
  v7 = *(type metadata accessor for Logger() - 8);
  __chkstk_darwin();
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3)
  {
    v11 = v3[5];
    v12 = v3[6];
    v13 = v3[7];
    *(v3 + 5) = xmmword_100EBCEE0;
    v3[7] = 0;
    sub_1004E5DFC(v11, v12, v13);

    sub_10055AFE8();
    return;
  }

  v14 = v8;
  v15 = sub_10055C90C(a1, a2);
  v18 = v16;
  v19 = v3[6];
  if (v19 == 2)
  {
    if (v16 == 2)
    {
      return;
    }

    goto LABEL_17;
  }

  v20 = v3[7];
  if (v19 == 1)
  {
    if (v16 != 1)
    {
      v21 = v3[5];
      if (v16 == 2)
      {
        v22 = 1;
      }

      else
      {
        v22 = v3[6];
      }

      v3[5] = v15;
      v3[6] = v16;
      v3[7] = v17;
      v23 = v15;
      v33 = v17;
      sub_1004E5DB4(v15, v16, v17);
      sub_1004E5DFC(v21, v22, v20);
      sub_10055AFE8();
      v24 = v33;

      sub_1004E5DFC(v23, v18, v24);
    }

    return;
  }

  if ((v16 - 1) < 2)
  {
LABEL_17:
    v33 = v17;
    v25 = v15;
    static Logger.music(_:)(0xD000000000000011, 0x8000000100E4F720);
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v34 = v29;
      *v28 = 136315138;
      *(v28 + 4) = sub_1000105AC(0xD00000000000003ELL, 0x8000000100E4F740, &v34);
      _os_log_impl(&_mh_execute_header, v26, v27, "Trying to call %s after layout has been determined, this shouldn't happen.", v28, 0xCu);
      sub_10000959C(v29);

      sub_1004E5DFC(v25, v18, v33);
    }

    else
    {
      sub_1004E5DFC(v25, v18, v33);
    }

    (*(v7 + 8))(v10, v14);
    return;
  }

  v3[5] = v15 & 1;
  v33 = v17;
  v30 = v20;
  v31 = v19;
  sub_10055AFE8();

  v32 = v33;
}

void sub_1005587C8(uint64_t a1)
{
  *(v1 + 32) = 0;
  v2 = *(v1 + 24);
  if (v2)
  {
    v3 = &v2[OBJC_IVAR____TtCV5Music15ContainerDetail10HeaderCell_didSetBoundsBlock];
    v4 = *&v2[OBJC_IVAR____TtCV5Music15ContainerDetail10HeaderCell_didSetBoundsBlock];
    v5 = *&v2[OBJC_IVAR____TtCV5Music15ContainerDetail10HeaderCell_didSetBoundsBlock + 8];
    *v3 = 0;
    *(v3 + 1) = 0;
    v6 = v2;
    sub_100020438(v4, v5);

    v7 = *(v1 + 24);
    if (v7)
    {
      v8 = &v7[OBJC_IVAR____TtCV5Music15ContainerDetail10HeaderCell_didSetMetadataLocationBlock];
      v9 = *&v7[OBJC_IVAR____TtCV5Music15ContainerDetail10HeaderCell_didSetMetadataLocationBlock];
      v10 = *&v7[OBJC_IVAR____TtCV5Music15ContainerDetail10HeaderCell_didSetMetadataLocationBlock + 8];
      *v8 = 0;
      *(v8 + 1) = 0;
      v11 = v7;
      sub_100020438(v9, v10);
    }
  }

  v12 = *(v1 + 48);
  if ((v12 - 1) >= 2)
  {
    v13 = *(v1 + 56);
    if (v13)
    {
      v14 = v12;
      [v13 setAlpha:0.0];
      if (!v12)
      {
LABEL_8:

        goto LABEL_9;
      }
    }

    else
    {
      v15 = v12;
      if (!v12)
      {
        goto LABEL_8;
      }
    }

    [v12 setAlpha:0.0];

    goto LABEL_8;
  }

LABEL_9:

  sub_10055A988();
}

void sub_1005588C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v143 = a1;
  v7 = *v3;
  sub_10010FC20(&unk_101188920, &qword_100EBCC50);
  __chkstk_darwin();
  v9 = &v126 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v11 = &v126 - v10;
  sub_10010FC20(&unk_101192950, &unk_100EBDF40);
  __chkstk_darwin();
  v13 = &v126 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v15 = &v126 - v14;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v17 = Strong;
  v139 = v7;
  v140 = v9;
  v18 = sub_1006A6078();

  v19 = v4[6];
  if ((v19 - 1) < 2)
  {

    return;
  }

  v134 = v13;
  v137 = v11;
  v135 = a2;
  v136 = a3;
  v142 = v18;
  v20 = v4[5];
  v21 = v4[7];
  v151 = v20 & 1;
  v152 = v19;
  v153 = v21;
  *(v4 + 32) = 1;
  v22 = v4[3];
  v138 = v21;
  v141 = v20;
  if (v22)
  {
    v23 = swift_allocObject();
    swift_weakInit();
    v24 = &v22[OBJC_IVAR____TtCV5Music15ContainerDetail10HeaderCell_didSetBoundsBlock];
    v25 = *&v22[OBJC_IVAR____TtCV5Music15ContainerDetail10HeaderCell_didSetBoundsBlock];
    v26 = *&v22[OBJC_IVAR____TtCV5Music15ContainerDetail10HeaderCell_didSetBoundsBlock + 8];
    *v24 = sub_10055CBB8;
    v24[1] = v23;
    sub_1004E5DB4(v20, v19, v21);
    v27 = v22;

    sub_100020438(v25, v26);

    v28 = v4[3];
    if (v28)
    {
      v29 = swift_allocObject();
      swift_weakInit();
      v30 = &v28[OBJC_IVAR____TtCV5Music15ContainerDetail10HeaderCell_didSetMetadataLocationBlock];
      v31 = *&v28[OBJC_IVAR____TtCV5Music15ContainerDetail10HeaderCell_didSetMetadataLocationBlock];
      v32 = *&v28[OBJC_IVAR____TtCV5Music15ContainerDetail10HeaderCell_didSetMetadataLocationBlock + 8];
      *v30 = sub_10055CBC0;
      v30[1] = v29;
      v33 = v28;

      sub_100020438(v31, v32);
    }
  }

  else
  {
    v34 = v21;
    v35 = v19;
  }

  v36 = swift_unknownObjectWeakLoadStrong();
  if (v36)
  {
    v37 = (v36 + OBJC_IVAR____TtCV5Music15ContainerDetail14ViewController_dataSource);
    v38 = v36;
    swift_beginAccess();
    v39 = *v37;
    v40 = v37[1];
    swift_unknownObjectRetain();

    ObjectType = swift_getObjectType();
    v150[0] = v39;
    v42 = (*(v40 + 304))(ObjectType, v40);
    swift_unknownObjectRelease();
    swift_getKeyPath();
    v145[0] = v42;
    sub_10055CBF0(&unk_1011A4750, _s13ConfigurationCMa, &unk_100ED6BBC);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v43 = *(v42 + OBJC_IVAR____TtCV5Music6Header13Configuration__metrics);

    v44 = swift_unknownObjectWeakLoadStrong();
    v45 = v141;
    if (v44)
    {
      v46 = v44;
      v47 = sub_1006A6078();

      [v47 adjustedContentInset];
      v49 = v48;
    }

    else
    {
      v49 = 0.0;
    }

    v50 = v142;
    if (*(v43 + 32) == v49)
    {
      *(v43 + 32) = v49;

      if (v19)
      {
        goto LABEL_16;
      }
    }

    else
    {
      swift_getKeyPath();
      __chkstk_darwin();
      *(&v126 - 2) = v43;
      *(&v126 - 1) = v49;
      v145[0] = v43;
      sub_10055CBF0(&qword_101192A00, _s7MetricsCMa, &unk_100ED6BA0);
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

      v50 = v142;

      if (v19)
      {
        goto LABEL_16;
      }
    }

LABEL_18:
    v130 = 0;
    sub_1000089F8(v143, v150, &unk_101192850, &qword_100EE4C90);
    v53 = type metadata accessor for HIMetricsCollectionView();
    v149.receiver = v50;
    v149.super_class = v53;
    objc_msgSendSuper2(&v149, "frame");
    v54 = CGRectGetWidth(v154) * 4.0;
    v148.receiver = v50;
    v131 = v53;
    v148.super_class = v53;
    objc_msgSendSuper2(&v148, "frame");
    Width = CGRectGetWidth(v155);
    v56 = swift_allocObject();
    swift_weakInit();
    v57 = swift_allocObject();
    v58 = v139;
    v128 = v57;
    *(v57 + 16) = v56;
    *(v57 + 24) = v58;
    _s13ConfigurationCMa_0(0);
    v59 = swift_allocObject();
    v60 = OBJC_IVAR____TtCV5Music4Uber13Configuration__motionArtwork;
    v61 = type metadata accessor for VideoArtwork();
    v126 = *(v61 - 8);
    v62 = *(v126 + 56);
    v62(v59 + v60, 1, 1, v61);
    v63 = OBJC_IVAR____TtCV5Music4Uber13Configuration__staticArtwork;
    v64 = type metadata accessor for Artwork();
    v143 = *(v64 - 8);
    v65 = *(v143 + 56);
    v132 = v64;
    v139 = v143 + 56;
    v133 = v65;
    (v65)(v59 + v63, 1, 1);
    v66 = (v59 + OBJC_IVAR____TtCV5Music4Uber13Configuration__artworkUsedChanged);
    *v66 = 0;
    v66[1] = 0;
    v129 = v56;

    ObservationRegistrar.init()();
    sub_1000089F8(v150, v145, &unk_101192850, &qword_100EE4C90);
    v67 = v146;
    v127 = v61;
    if (v146)
    {
      v68 = v147;
      sub_10000954C(v145, v146);
      (*(*(v68 + 8) + 8))(v67);
      sub_10000959C(v145);
    }

    else
    {
      sub_1000095E8(v145, &unk_101192850, &qword_100EE4C90);
      v62(v15, 1, 1, v61);
    }

    v69 = v140;
    v70 = v54 / 3.0;
    sub_1000095E8(v59 + v60, &unk_101192950, &unk_100EBDF40);
    sub_10003D17C(v15, v59 + v60, &unk_101192950, &unk_100EBDF40);
    sub_1000089F8(v150, v145, &unk_101192850, &qword_100EE4C90);
    v71 = v146;
    if (v146)
    {
      v72 = v147;
      sub_10000954C(v145, v146);
      (*(*(v72 + 16) + 8))(v71);
      sub_10000959C(v145);
      v73 = v132;
      if ((*(v143 + 48))(v69, 1, v132) != 1)
      {
        v74 = v137;
        (*(v143 + 32))(v137, v69, v73);
        v133(v74, 0, 1, v73);
LABEL_33:
        v85 = OBJC_IVAR____TtCV5Music4Uber13Configuration__staticArtwork;
        sub_1000095E8(v59 + OBJC_IVAR____TtCV5Music4Uber13Configuration__staticArtwork, &unk_101188920, &qword_100EBCC50);
        sub_10003D17C(v137, v59 + v85, &unk_101188920, &qword_100EBCC50);
        *(v59 + OBJC_IVAR____TtCV5Music4Uber13Configuration__frameHeight) = v70;
        *(v59 + OBJC_IVAR____TtCV5Music4Uber13Configuration__artworkWidth) = Width;
        v86 = (v59 + OBJC_IVAR____TtCV5Music4Uber13Configuration__accessibilityArtworkLabel);
        v87 = v136;
        *v86 = v135;
        v86[1] = v87;
        swift_getKeyPath();
        __chkstk_darwin();
        *(&v126 - 4) = v59;
        *(&v126 - 3) = sub_10055CBC8;
        *(&v126 - 2) = v128;
        v145[0] = v59;
        sub_10055CBF0(&qword_101194F28, _s13ConfigurationCMa_0, &unk_100ED97A0);

        ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

        sub_1000095E8(v150, &unk_101192850, &qword_100EE4C90);

        sub_10010FC20(&qword_101194F30, &qword_100ED2D58);
        v88 = _UIHostingView.init(content:)(sub_10055CC38);
        v4[2] = v59;

        v89 = sub_10055AF00();
        v91 = v90;
        v93 = v92;
        v50 = v142;
        v94 = v142;
        [v94 adjustedContentInset];
        v96 = v93 + v95 + -5.0;
        [v94 adjustedContentInset];
        v98 = -v97;
        v144.receiver = v94;
        v144.super_class = v131;
        objc_msgSendSuper2(&v144, "frame");
        v99 = CGRectGetWidth(v156);
        [v94 adjustedContentInset];
        v101 = v100;

        v102 = swift_unknownObjectWeakLoadStrong();
        if (v102)
        {
          v103 = v102;
          v104 = [v102 traitCollection];
        }

        else
        {
          v104 = [objc_opt_self() currentTraitCollection];
        }

        [v104 displayScale];
        v106 = v105;

        v107 = v101 + v99 * -4.0 / 3.0 * 0.166;
        if (v107 < 0.0)
        {
          v107 = 0.0;
        }

        v108 = 1.0 / v106 * round(v107 / (1.0 / v106));
        v157.origin.x = v89;
        v157.origin.y = v98;
        v157.size.width = v91;
        v157.size.height = v96;
        v109 = CGRectGetWidth(v157);
        v158.origin.x = v89;
        v158.origin.y = v98;
        v158.size.width = v91;
        v158.size.height = v96;
        [v88 setFrame:{0.0, v108, v109, CGRectGetHeight(v158) - v108}];
        v19 = [objc_allocWithZone(_UIBackgroundExtensionView) init];
        [v19 setFrame:{v89, v98, v91, v96}];
        [v19 setClipsToBounds:1];
        [v19 setDisableAutomaticLayout:1];
        [v19 setContentView:v88];
        v110 = v138;
        v152 = v19;
        v153 = v138;
        v111 = v138;
        v51 = v19;
        sub_10055BD98(0, v110);
        v112 = [objc_allocWithZone(UIView) initWithFrame:{v89, v98, v91, v96}];
        [v112 setUserInteractionEnabled:0];
        v113 = [objc_opt_self() systemBackgroundColor];
        [v112 setBackgroundColor:v113];

        [v112 setAlpha:0.0];
        v152 = v19;
        v153 = v112;
        sub_10055BD98(v19, v110);

        v52 = v112;
        v45 = v141;
        goto LABEL_39;
      }
    }

    else
    {
      sub_1000095E8(v145, &unk_101192850, &qword_100EE4C90);
      v73 = v132;
      v133(v69, 1, 1, v132);
    }

    sub_1000089F8(v150, v145, &unk_101192850, &qword_100EE4C90);
    v75 = v146;
    if (v146)
    {
      v76 = v147;
      sub_10000954C(v145, v146);
      v77 = v134;
      (*(*(v76 + 8) + 8))(v75);
      v78 = v126;
      v79 = v127;
      if ((*(v126 + 48))(v77, 1, v127) != 1)
      {
        v83 = v137;
        VideoArtwork.previewFrame.getter();
        (*(v78 + 8))(v77, v79);
        v84 = v83;
        v73 = v132;
        v133(v84, 0, 1, v132);
        sub_10000959C(v145);
LABEL_31:
        if ((*(v143 + 48))(v69, 1, v73) != 1)
        {
          sub_1000095E8(v69, &unk_101188920, &qword_100EBCC50);
        }

        goto LABEL_33;
      }

      sub_10000959C(v145);
      v80 = &unk_101192950;
      v81 = &unk_100EBDF40;
      v82 = v77;
    }

    else
    {
      v80 = &unk_101192850;
      v81 = &qword_100EE4C90;
      v82 = v145;
    }

    sub_1000095E8(v82, v80, v81);
    v133(v137, 1, 1, v73);
    goto LABEL_31;
  }

  v50 = v142;
  v45 = v141;
  if (!v19)
  {
    goto LABEL_18;
  }

LABEL_16:
  [v19 setAlpha:1.0];
  v51 = v19;
  v52 = v138;
LABEL_39:
  v114 = v45 & 1;
  v115 = v4[5];
  v116 = v4[6];
  v117 = v4[7];
  v4[5] = v114;
  v4[6] = v19;
  v4[7] = v52;
  v118 = v52;
  v119 = v51;
  v120 = v118;
  v121 = v119;
  sub_1004E5DFC(v115, v116, v117);
  sub_10055AFE8();

  [v50 _addContentSubview:v121 atBack:1];
  v122 = v4[3];
  if (v122)
  {
    v123 = *&v122[OBJC_IVAR____TtCV5Music15ContainerDetail10HeaderCell_overlay];
    *&v122[OBJC_IVAR____TtCV5Music15ContainerDetail10HeaderCell_overlay] = v52;
    v124 = v120;
    v125 = v122;
    sub_1003FAD80(v123);
  }

  sub_10055A988();
}

void sub_1005599F8(char *a1)
{
  v2 = v1;
  if (a1)
  {
    v3 = a1;
    v4 = v1[3];
    if (!v4 || (_s10HeaderCellCMa(), v5 = v4, v3 = v3, v6 = static NSObject.== infix(_:_:)(), v3, v5, (v6 & 1) == 0))
    {
      v7 = *&v3[OBJC_IVAR____TtCV5Music15ContainerDetail10HeaderCell_overlay];
      *&v3[OBJC_IVAR____TtCV5Music15ContainerDetail10HeaderCell_overlay] = 0;
      sub_1003FAD80(v7);
    }
  }

  v8 = v2[6];
  v9 = v2[3];
  if ((v8 - 1) >= 2)
  {
    if (!v9)
    {
      return;
    }

    v11 = v2[5];
    v12 = v2[7];
    v10 = *&v9[OBJC_IVAR____TtCV5Music15ContainerDetail10HeaderCell_overlay];
    *&v9[OBJC_IVAR____TtCV5Music15ContainerDetail10HeaderCell_overlay] = v12;
    v15 = v8;
    v13 = v12;
    sub_1004E5DB4(v11, v15, v12);
    v14 = v9;
    sub_1003FAD80(v10);
  }

  else
  {
    if (!v9)
    {
      return;
    }

    v15 = *&v9[OBJC_IVAR____TtCV5Music15ContainerDetail10HeaderCell_overlay];
    *&v9[OBJC_IVAR____TtCV5Music15ContainerDetail10HeaderCell_overlay] = 0;
    v10 = v9;
    sub_1003FAD80(v15);
  }
}

double sub_100559B6C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_100559BC8();
    sub_10055A988();
  }

  return result;
}

void sub_100559BC8()
{
  v1 = v0;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v3 = Strong;
  v84 = sub_1006A6078();

  v94.origin.x = sub_10055AF00();
  if (!CGRectIsEmpty(v94))
  {
    v4 = v1[6];
    if ((v4 - 1) > 1)
    {
      v5 = v1[5];
      v6 = v1[7];
      v7 = swift_unknownObjectWeakLoadStrong();
      if (v7)
      {
        v8 = (v7 + OBJC_IVAR____TtCV5Music15ContainerDetail14ViewController_dataSource);
        v9 = v7;
        swift_beginAccess();
        v11 = *v8;
        v10 = v8[1];
        sub_1004E5DB4(v5, v4, v6);
        swift_unknownObjectRetain();

        ObjectType = swift_getObjectType();
        v92 = v11;
        v13 = (*(v10 + 304))(ObjectType, v10);
        swift_unknownObjectRelease();
        swift_getKeyPath();
        v91 = v13;
        sub_10055CBF0(&unk_1011A4750, _s13ConfigurationCMa, &unk_100ED6BBC);
        ObservationRegistrar.access<A, B>(_:keyPath:)();

        v14 = *(v13 + OBJC_IVAR____TtCV5Music6Header13Configuration__metrics);

        [v84 adjustedContentInset];
        v16 = v15;
        if (*(v14 + 32) == v15)
        {
          *(v14 + 32) = v15;
        }

        else
        {
          swift_getKeyPath();
          __chkstk_darwin();
          v80 = v14;
          v81 = v16;
          v91 = v14;
          sub_10055CBF0(&qword_101192A00, _s7MetricsCMa, &unk_100ED6BA0);
          ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
        }
      }

      else
      {
        v17 = v6;
        v18 = v4;
      }

      v19 = v84;
      [v19 contentOffset];
      v21 = v20;
      [v19 adjustedContentInset];
      if (v21 + v22 > 0.0)
      {
        if (v4)
        {
          [v4 frame];
          v24 = v23;
        }

        else
        {
          v24 = 0.0;
        }

        [v19 adjustedContentInset];
        if (v4 && v24 == -v32)
        {
          goto LABEL_22;
        }

        v33 = v1[2];
        if (v33)
        {
          v34 = type metadata accessor for HIMetricsCollectionView();
          v90.receiver = v19;
          v90.super_class = v34;

          objc_msgSendSuper2(&v90, "frame");
          v35 = CGRectGetWidth(v96) * 4.0 / 3.0;
          if (*(v33 + OBJC_IVAR____TtCV5Music4Uber13Configuration__frameHeight) == v35)
          {
            *(v33 + OBJC_IVAR____TtCV5Music4Uber13Configuration__frameHeight) = v35;
          }

          else
          {
            swift_getKeyPath();
            v84 = &v82;
            __chkstk_darwin();
            v80 = v33;
            v81 = v35;
            v92 = v33;
            sub_10055CBF0(&qword_101194F28, _s13ConfigurationCMa_0, &unk_100ED97A0);
            ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
          }

          v63 = v1[2];
          if (v63)
          {
            v89.receiver = v19;
            v89.super_class = v34;

            objc_msgSendSuper2(&v89, "frame");
            Width = CGRectGetWidth(v102);
            if (*(v63 + OBJC_IVAR____TtCV5Music4Uber13Configuration__artworkWidth) == Width)
            {
              *(v63 + OBJC_IVAR____TtCV5Music4Uber13Configuration__artworkWidth) = Width;
            }

            else
            {
              swift_getKeyPath();
              v84 = v79;
              __chkstk_darwin();
              *&v79[-16] = v63;
              *&v79[-8] = Width;
              v92 = v63;
              sub_10055CBF0(&qword_101194F28, _s13ConfigurationCMa_0, &unk_100ED97A0);
              ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
            }
          }
        }

        [v19 adjustedContentInset];
        v103.origin.x = sub_10055AF00();
        CGRectGetHeight(v103);
        [v19 adjustedContentInset];
        if (v4)
        {
          v65 = v4;
          [v65 frame];
          [v65 setFrame:?];

          v66 = v65;
          [v66 frame];
          [v66 setFrame:?];

          if (!v6)
          {
LABEL_53:
            objc_opt_self();
            v68 = swift_dynamicCastObjCClass();
            if (v68)
            {
              v69 = v68;
              v70 = type metadata accessor for HIMetricsCollectionView();
              v88.receiver = v19;
              v88.super_class = v70;
              v71 = v4;
              objc_msgSendSuper2(&v88, "frame");
              CGRectGetWidth(v104);
              [v19 adjustedContentInset];

              v72 = swift_unknownObjectWeakLoadStrong();
              if (v72)
              {
                v73 = v72;
                v74 = [v72 traitCollection];
              }

              else
              {
                v74 = [objc_opt_self() currentTraitCollection];
              }

              [v74 displayScale];

              v75 = [v69 contentView];
              if (v75)
              {
                v76 = v75;
                [v75 frame];
                [v76 setFrame:?];
              }

              v77 = [v69 contentView];
              if (v77)
              {
                v78 = v77;
                [v77 frame];
                [v78 setFrame:?];
              }

              goto LABEL_64;
            }

LABEL_22:

LABEL_64:
            return;
          }

          goto LABEL_52;
        }

        if (v6)
        {
LABEL_52:
          v67 = v6;
          [v67 frame];
          [v67 setFrame:?];

          v46 = v67;
          [v46 frame];
          [v46 setFrame:?];

          if (v4)
          {
            goto LABEL_53;
          }

          goto LABEL_56;
        }

LABEL_57:

        return;
      }

      v25 = v1[2];
      if (v25)
      {
        v26 = type metadata accessor for HIMetricsCollectionView();
        v87.receiver = v19;
        v87.super_class = v26;

        objc_msgSendSuper2(&v87, "frame");
        v27 = CGRectGetWidth(v95) * 4.0 / 3.0;
        [v19 contentOffset];
        v29 = v28;
        [v19 adjustedContentInset];
        v31 = v27 - (v29 + v30);
        if (*(v25 + OBJC_IVAR____TtCV5Music4Uber13Configuration__frameHeight) == v31)
        {
          *(v25 + OBJC_IVAR____TtCV5Music4Uber13Configuration__frameHeight) = v31;
        }

        else
        {
          swift_getKeyPath();
          v84 = &v82;
          __chkstk_darwin();
          v83 = 0;
          v80 = v25;
          v81 = v31;
          v92 = v25;
          sub_10055CBF0(&qword_101194F28, _s13ConfigurationCMa_0, &unk_100ED97A0);
          ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
        }

        v36 = v1[2];
        if (v36)
        {
          v86.receiver = v19;
          v86.super_class = v26;

          objc_msgSendSuper2(&v86, "frame");
          v37 = CGRectGetWidth(v97);
          if (*(v36 + OBJC_IVAR____TtCV5Music4Uber13Configuration__artworkWidth) == v37)
          {
            *(v36 + OBJC_IVAR____TtCV5Music4Uber13Configuration__artworkWidth) = v37;
          }

          else
          {
            swift_getKeyPath();
            v84 = v6;
            v83 = v79;
            __chkstk_darwin();
            *&v79[-16] = v36;
            *&v79[-8] = v37;
            v92 = v36;
            sub_10055CBF0(&qword_101194F28, _s13ConfigurationCMa_0, &unk_100ED97A0);
            ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

            v6 = v84;
          }
        }
      }

      v98.origin.x = sub_10055AF00();
      Height = CGRectGetHeight(v98);
      [v19 contentOffset];
      v40 = Height - v39 + -5.0;
      v41 = sub_10055AF00();
      [v19 contentOffset];
      v43 = v42;
      v99.origin.x = sub_10055AF00();
      v44 = CGRectGetWidth(v99);
      [v4 setFrame:{v41, v43, v44, v40}];
      if (v6)
      {
        v45 = v1[3];
        v46 = v6;
        [v19 convertRect:v45 toView:{v41, v43, v44, v40}];
        [v46 setFrame:?];

        if (!v4)
        {
LABEL_56:

          goto LABEL_57;
        }
      }

      else if (!v4)
      {
        goto LABEL_57;
      }

      objc_opt_self();
      v47 = swift_dynamicCastObjCClass();
      if (v47)
      {
        v48 = v47;
        v49 = type metadata accessor for HIMetricsCollectionView();
        v85.receiver = v19;
        v85.super_class = v49;
        v50 = v4;
        objc_msgSendSuper2(&v85, "frame");
        v51 = CGRectGetWidth(v100);
        [v19 adjustedContentInset];
        v53 = v52;

        v54 = swift_unknownObjectWeakLoadStrong();
        if (v54)
        {
          v55 = v54;
          v56 = [v54 traitCollection];
        }

        else
        {
          v56 = [objc_opt_self() currentTraitCollection];
        }

        [v56 displayScale];
        v58 = v57;

        v59 = v53 + v51 * -4.0 / 3.0 * 0.166;
        if (v59 < 0.0)
        {
          v59 = 0.0;
        }

        v60 = 1.0 / v58 * round(v59 / (1.0 / v58));
        v101.origin.x = sub_10055AF00();
        v61 = CGRectGetWidth(v101);
        v62 = [v48 contentView];
        [v62 setFrame:{0.0, v60, v61, v40 - v60}];
      }

      else
      {
      }

      goto LABEL_64;
    }
  }
}

void sub_10055A988()
{
  v1 = v0;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v3 = Strong;
  v16 = sub_1006A6078();

  v4 = *(v1 + 48);
  if ((v4 - 1) >= 2 && *(v1 + 32) == 1)
  {
    v5 = *(v1 + 56);
    v6 = *(v1 + 73);
    v7 = v5;
    v8 = v4;
    v9 = sub_10055BBA8(v1, v6);
    v11 = v10;
    [v16 _pocketInsets];
    if (v11 != v12)
    {
      [v16 _setPocketInsets:{v11, 0.0, 0.0, 0.0}];
    }

    v13 = sub_10055B354();
    if (v4)
    {
      [v8 setAlpha:1.0];
    }

    if (v6 < 2)
    {
      if (v5)
      {
        v14 = v7;
        [v14 setAlpha:0.0];
        goto LABEL_18;
      }
    }

    else if (v5)
    {
      v14 = v7;
      [v14 setAlpha:v13 * 0.8];
LABEL_18:

      v15 = v8;
      goto LABEL_12;
    }

    v15 = v8;
    goto LABEL_12;
  }

  [v16 _setPocketInsets:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];
  v15 = v16;
LABEL_12:
}

double sub_10055AB54(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_10055A988();
  }

  return result;
}

double sub_10055ABAC(uint64_t a1, uint64_t a2)
{
  sub_10010FC20(&unk_101188920, &qword_100EBCC50);
  __chkstk_darwin();
  v4 = &v26 - v3;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    v8 = Artwork.hasTitle.getter();
    v9 = *(v7 + 72);
    *(v7 + 72) = v8 & 1;
    sub_10055B6E8(v9);
    v10 = *(v7 + 48);
    if ((v10 - 1) >= 2)
    {
      v11 = *(v7 + 40);
      v12 = *(v7 + 56);
      v13 = type metadata accessor for Artwork();
      v14 = *(v13 - 8);
      (*(v14 + 16))(v4, a1, v13);
      (*(v14 + 56))(v4, 0, 1, v13);
      v15 = v12;
      v16 = v10;
      v17 = sub_10055C610(v4);
      sub_1000095E8(v4, &unk_101188920, &qword_100EBCC50);
      if (v12)
      {
        if (*(v7 + 73) == 3 && (v18 = Artwork.backgroundColor.getter()) != 0)
        {
          v19 = v18;
          v20 = [objc_allocWithZone(UIColor) initWithCGColor:v18];
        }

        else
        {
          v20 = [objc_opt_self() systemBackgroundColor];
        }

        [v15 setBackgroundColor:v20];
      }

      v21 = *(v7 + 40);
      v22 = *(v7 + 48);
      v23 = *(v7 + 56);
      *(v7 + 40) = v17 & 1;
      *(v7 + 48) = v10;
      *(v7 + 56) = v12;
      sub_1004E5DB4(v11, v10, v12);
      v24 = v16;
      v25 = v15;
      sub_1004E5DFC(v21, v22, v23);
      sub_10055AFE8();
      sub_1004E5DFC(v11, v10, v12);
    }
  }

  return result;
}

uint64_t sub_10055AE50@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = a1;
  v3 = *(type metadata accessor for Uber(0) + 20);
  *(a2 + v3) = swift_getKeyPath();
  sub_10010FC20(&qword_101194F38, &qword_100ED2DE0);
  swift_storeEnumTagMultiPayload();
  type metadata accessor for MotionViewStateObserver();

  return LazyState.init(wrappedValue:)();
}

double sub_10055AF00()
{
  v1 = *(v0 + 24);
  if (v1)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    v3 = v1;
    if (Strong)
    {
      v6 = sub_1006A6078();

      v10.receiver = v6;
      v10.super_class = type metadata accessor for HIMetricsCollectionView();
      objc_msgSendSuper2(&v10, "frame");
      v8 = v7;
    }

    else
    {
      v8 = 0.0;
    }

    LODWORD(v4) = 1148846080;
    LODWORD(v5) = 1112014848;
    [v3 systemLayoutSizeFittingSize:v8 withHorizontalFittingPriority:1.79769313e308 verticalFittingPriority:{v4, v5}];
  }

  return 0.0;
}

void sub_10055AFE8()
{
  v1 = v0;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong + OBJC_IVAR____TtCV5Music15ContainerDetail14ViewController_dataSource;
    v4 = Strong;
    swift_beginAccess();
    v5 = *(v3 + 8);
    swift_unknownObjectRetain();

    ObjectType = swift_getObjectType();
    v7 = (*(v5 + 304))(ObjectType, v5);
    swift_unknownObjectRelease();
    if ((*(v1 + 48) - 1) >= 2)
    {
      v8 = (*(v1 + 40) & 1) == 0;
      v9 = *(v7 + 16);
      if (v9 == 2 || ((*(v1 + 40) ^ v9) & 1) == 0)
      {
        goto LABEL_8;
      }
    }

    else
    {
      v8 = 2;
      if (*(v7 + 16) != 2)
      {
LABEL_8:
        swift_getKeyPath();
        __chkstk_darwin();
        sub_10055CBF0(&unk_1011A4750, _s13ConfigurationCMa, &unk_100ED6BBC);
        ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

        goto LABEL_9;
      }
    }

    *(v7 + 16) = v8;
  }

LABEL_9:
  v10 = swift_unknownObjectWeakLoadStrong();
  if (v10)
  {
    v11 = v10 + OBJC_IVAR____TtCV5Music15ContainerDetail14ViewController_dataSource;
    v12 = v10;
    swift_beginAccess();
    v13 = *(v11 + 8);
    swift_unknownObjectRetain();

    v14 = swift_getObjectType();
    v15 = (*(v13 + 304))(v14, v13);
    swift_unknownObjectRelease();
    if ((*(v1 + 48) - 1) > 1)
    {
      v16 = *(v1 + 72);
      v17 = (v15 + OBJC_IVAR____TtCV5Music6Header13Configuration__hideTitleContainer);
      if (v16 == *(v15 + OBJC_IVAR____TtCV5Music6Header13Configuration__hideTitleContainer))
      {
        goto LABEL_12;
      }
    }

    else
    {
      LOBYTE(v16) = 0;
      v17 = (v15 + OBJC_IVAR____TtCV5Music6Header13Configuration__hideTitleContainer);
      if ((*(v15 + OBJC_IVAR____TtCV5Music6Header13Configuration__hideTitleContainer) & 1) == 0)
      {
LABEL_12:
        *v17 = v16;

        goto LABEL_15;
      }
    }

    swift_getKeyPath();
    __chkstk_darwin();
    sub_10055CBF0(&unk_1011A4750, _s13ConfigurationCMa, &unk_100ED6BBC);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

LABEL_15:
  sub_10055A988();
}

double sub_10055B354()
{
  v1 = *(v0 + 48);
  v2 = 0.0;
  if (v1 >= 2)
  {
    if (v1 == 2)
    {
      v32.origin.x = sub_10055AF00();
      if (CGRectGetHeight(v32) <= 0.0)
      {
        return v2;
      }
    }

    else
    {
      v3 = *(v0 + 56);
      v4 = v1;
      [v4 frame];
      Height = CGRectGetHeight(v33);

      if (Height <= 0.0)
      {
        return v2;
      }
    }

    if (*(v0 + 73) == 2)
    {
      v6 = *(v0 + 48);
      v7 = 0.0;
      v8 = 0.0;
      if (v6 >= 2)
      {
        if (v6 == 2)
        {
          v34.origin.x = sub_10055AF00();
          v8 = CGRectGetHeight(v34);
        }

        else
        {
          v16 = *(v0 + 56);
          v17 = v6;
          [v17 frame];
          v8 = CGRectGetHeight(v36);
        }
      }

      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v19 = Strong;
        v20 = sub_1006A6078();

        [v20 adjustedContentInset];
        v22 = v21;

        v7 = v22 * 0.5;
      }

      v11 = v7 + v8 * -0.3;
    }

    else
    {
      v9 = *(v0 + 24);
      if (v9 && (v10 = v9 + OBJC_IVAR____TtCV5Music15ContainerDetail10HeaderCell_metadataLocation, (*(v10 + 16) & 1) == 0))
      {
        v12 = *(v10 + 8);
        v13 = *(v0 + 48);
        v14 = 0.0;
        v15 = 0.0;
        if (v13 >= 2)
        {
          if (v13 == 2)
          {
            v35.origin.x = sub_10055AF00();
            v15 = CGRectGetHeight(v35);
          }

          else
          {
            v23 = *(v0 + 56);
            v24 = v13;
            [v24 frame];
            v15 = CGRectGetHeight(v37);
          }
        }

        v25 = swift_unknownObjectWeakLoadStrong();
        if (v25)
        {
          v26 = v25;
          v27 = sub_1006A6078();

          [v27 adjustedContentInset];
          v14 = v28;
        }

        v11 = v14 - (v15 - v12);
      }

      else
      {
        v11 = -250.0;
      }
    }

    sub_10055B5D8();
    if (v11 < 0.0 && v11 <= v29)
    {
      v2 = 1.0;
      if (v29 < 0.0)
      {
        v30 = (0.0 - v11 + v29) / (0.0 - v11);
        if (v30 < 0.0)
        {
          v30 = 0.0;
        }

        if (v30 <= 1.0)
        {
          return v30;
        }
      }
    }
  }

  return v2;
}

void sub_10055B5D8()
{
  v1 = v0;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = sub_1006A6078();

    v5 = *(v1 + 48);
    if (v5 != 1)
    {
      if (v5 == 2)
      {
        UIScrollView.normalizedContentOffset.getter();
      }

      else
      {
        UIScrollView.normalizedContentOffset.getter();
        if (*(v1 + 73) >= 2u)
        {
          [v4 adjustedContentInset];
        }
      }

      v6 = *(v1 + 48);
      if (v6 >= 2)
      {
        if (v6 == 2)
        {
          v9.origin.x = sub_10055AF00();
          CGRectGetHeight(v9);
        }

        else
        {
          v7 = *(v1 + 56);
          v8 = v6;
          [v8 frame];
          CGRectGetHeight(v10);
        }
      }
    }
  }
}

double sub_10055B6E8(char a1)
{
  if (*(v1 + 72) != (a1 & 1))
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v4 = Strong + OBJC_IVAR____TtCV5Music15ContainerDetail14ViewController_dataSource;
      v5 = Strong;
      swift_beginAccess();
      v6 = *(v4 + 8);
      swift_unknownObjectRetain();

      ObjectType = swift_getObjectType();
      v8 = (*(v6 + 304))(ObjectType, v6);
      swift_unknownObjectRelease();
      if ((*(v1 + 48) - 1) > 1)
      {
        v9 = *(v1 + 72);
        v10 = (v8 + OBJC_IVAR____TtCV5Music6Header13Configuration__hideTitleContainer);
        if (v9 == *(v8 + OBJC_IVAR____TtCV5Music6Header13Configuration__hideTitleContainer))
        {
          goto LABEL_5;
        }
      }

      else
      {
        LOBYTE(v9) = 0;
        v10 = (v8 + OBJC_IVAR____TtCV5Music6Header13Configuration__hideTitleContainer);
        if ((*(v8 + OBJC_IVAR____TtCV5Music6Header13Configuration__hideTitleContainer) & 1) == 0)
        {
LABEL_5:
          *v10 = v9;

          return result;
        }
      }

      swift_getKeyPath();
      __chkstk_darwin();
      sub_10055CBF0(&unk_1011A4750, _s13ConfigurationCMa, &unk_100ED6BBC);
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
    }
  }

  return result;
}

uint64_t sub_10055B8CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_10010FC20(&unk_101192950, &unk_100EBDF40);
  __chkstk_darwin();
  v7 = &v19 - v6;
  sub_10010FC20(&unk_101188920, &qword_100EBCC50);
  v8 = __chkstk_darwin();
  v10 = &v19 - v9;
  (*(*(a2 + 8) + 8))(a1, v8);
  v11 = type metadata accessor for VideoArtwork();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v7, 1, v11) == 1)
  {
    sub_1000095E8(v7, &unk_101192950, &unk_100EBDF40);
    v13 = type metadata accessor for Artwork();
    v14 = *(v13 - 8);
    (*(v14 + 56))(v10, 1, 1, v13);
    (*(*(a2 + 16) + 8))(a1);
    result = (*(v14 + 48))(v10, 1, v13);
    if (result != 1)
    {
      return sub_1000095E8(v10, &unk_101188920, &qword_100EBCC50);
    }
  }

  else
  {
    VideoArtwork.previewFrame.getter();
    (*(v12 + 8))(v7, v11);
    v16 = type metadata accessor for Artwork();
    v17 = *(v16 - 8);
    v18 = *(v17 + 56);
    v18(v10, 0, 1, v16);
    (*(v17 + 32))(a3, v10, v16);
    return (v18)(a3, 0, 1, v16);
  }

  return result;
}

double sub_10055BBA8(uint64_t a1, unsigned __int8 a2)
{
  if (a2 > 1u)
  {
    if (a2 == 2)
    {
      v2 = *(a1 + 24);
      if (v2)
      {
        Strong = swift_unknownObjectWeakLoadStrong();
        v4 = v2;
        if (Strong)
        {
          v7 = sub_1006A6078();

          v18.receiver = v7;
          v18.super_class = type metadata accessor for HIMetricsCollectionView();
          objc_msgSendSuper2(&v18, "frame");
          v9 = v8;
        }

        else
        {
          v9 = 0.0;
        }

        LODWORD(v5) = 1148846080;
        LODWORD(v6) = 1112014848;
        [v4 systemLayoutSizeFittingSize:v9 withHorizontalFittingPriority:1.79769313e308 verticalFittingPriority:{v5, v6}];
        v13 = v15;
        v14 = v16;
      }

      else
      {
        v13 = 0.0;
        v14 = 0.0;
      }

      v20.origin.x = 0.0;
      v20.origin.y = 0.0;
      v20.size.width = v13;
      v20.size.height = v14;
      CGRectGetHeight(v20);
    }

    else
    {
      v19.origin.x = sub_10055AF00();
      CGRectGetHeight(v19);
      v10 = swift_unknownObjectWeakLoadStrong();
      if (v10)
      {
        v11 = v10;
        v12 = sub_1006A6078();

        [v12 adjustedContentInset];
      }
    }
  }

  return 0.0;
}

unint64_t sub_10055BD5C@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10055CBA8(*a1);
  *a2 = result;
  return result;
}

void sub_10055BD98(id a1, void *a2)
{
  v3 = v2;
  v6 = *(v2 + 8);
  if (!a1)
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  if (!v6 || (sub_1003FB264(), v7 = v6, v8 = a1, v9 = static NSObject.== infix(_:_:)(), v8, v7, (v9 & 1) == 0))
  {
LABEL_6:
    [a1 removeFromSuperview];
  }

LABEL_7:
  v10 = *(v3 + 16);
  if (a2)
  {
    if (v10)
    {
      sub_1003FB264();
      v11 = v10;
      v12 = a2;
      v13 = static NSObject.== infix(_:_:)();

      if (v13)
      {
        return;
      }
    }
  }

  else if (!v10)
  {
    return;
  }

  [a2 removeFromSuperview];
}

uint64_t sub_10055BEA4()
{

  sub_1004E5DFC(*(v0 + 40), *(v0 + 48), *(v0 + 56));
  swift_unknownObjectWeakDestroy();

  return swift_deallocClassInstance();
}

uint64_t sub_10055BF30@<X0>(uint64_t (*a1)(void, __n128)@<X0>, uint64_t a3@<X8>)
{
  v5 = type metadata accessor for EditorialVideoArtworkFlavor();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin();
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  a1(0, v7);
  v10 = EditorialVideoArtworkVending.editorialVideoArtworks.getter();
  if (v10)
  {
    v11 = v10;
    static EditorialVideoArtworkFlavor.motionDetailTall.getter();
    if (*(v11 + 16) && (v12 = sub_1006BE63C(v9), (v13 & 1) != 0))
    {
      v14 = v12;
      v15 = *(v11 + 56);
      v16 = type metadata accessor for VideoArtwork();
      v17 = *(v16 - 8);
      (*(v17 + 16))(a3, v15 + *(v17 + 72) * v14, v16);
      (*(v6 + 8))(v9, v5);

      return (*(v17 + 56))(a3, 0, 1, v16);
    }

    else
    {

      (*(v6 + 8))(v9, v5);
      v19 = type metadata accessor for VideoArtwork();
      return (*(*(v19 - 8) + 56))(a3, 1, 1, v19);
    }
  }

  else
  {
    v20 = type metadata accessor for VideoArtwork();
    v21 = *(*(v20 - 8) + 56);

    return v21(a3, 1, 1, v20);
  }
}

uint64_t sub_10055C22C(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10055C250(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFD && *(a1 + 24))
  {
    return (*a1 + 2147483645);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  v5 = v4 + 1;
  v6 = v4 - 1;
  if (v5 >= 3)
  {
    return v6;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10055C2B8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 2147483645;
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 2;
    }
  }

  return result;
}

void *sub_10055C30C(void *result, unsigned int a2)
{
  if (a2 > 0x7FFFFFFE)
  {
    result[1] = 0;
    result[2] = 0;
    *result = a2 - 0x7FFFFFFF;
  }

  else if (a2)
  {
    result[1] = a2;
  }

  return result;
}

unint64_t sub_10055C350()
{
  result = qword_101194F10;
  if (!qword_101194F10)
  {
    sub_1001109D0(&qword_101194F18, qword_100ED2BF8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101194F10);
  }

  return result;
}

unint64_t sub_10055C3B8()
{
  result = qword_101194F20;
  if (!qword_101194F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101194F20);
  }

  return result;
}

double sub_10055C40C@<D0>(uint64_t *a1@<X0>, double *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_10055CBF0(&qword_101194F28, _s13ConfigurationCMa_0, &unk_100ED97A0);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  result = *(v3 + OBJC_IVAR____TtCV5Music4Uber13Configuration__artworkWidth);
  *a2 = result;
  return result;
}

uint64_t sub_10055C508(uint64_t a1)
{
  type metadata accessor for LayoutDirection();
  v2 = __chkstk_darwin();
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v2);
  return EnvironmentValues.layoutDirection.setter();
}

uint64_t sub_10055C5D0@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for MotionViewStateObserver();
  swift_allocObject();
  result = MotionViewStateObserver.init()();
  *a1 = result;
  return result;
}

uint64_t sub_10055C610(uint64_t a1)
{
  sub_10010FC20(&unk_101188920, &qword_100EBCC50);
  __chkstk_darwin();
  v3 = &v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v5 = &v21 - v4;
  sub_10010FC20(&qword_101194F40, &qword_100ED2DE8);
  __chkstk_darwin();
  v7 = &v21 - v6;
  sub_1000089F8(a1, v5, &unk_101188920, &qword_100EBCC50);
  v8 = type metadata accessor for Artwork();
  v9 = *(v8 - 8);
  v10 = *(v9 + 48);
  if (v10(v5, 1, v8) == 1)
  {
    v11 = &unk_101188920;
    v12 = &qword_100EBCC50;
    v13 = v5;
LABEL_5:
    sub_1000095E8(v13, v11, v12);
    goto LABEL_6;
  }

  Artwork.textGradient.getter();
  (*(v9 + 8))(v5, v8);
  v14 = type metadata accessor for Artwork.TextGradient();
  v15 = *(v14 - 8);
  if ((*(v15 + 48))(v7, 1, v14) == 1)
  {
    v11 = &qword_101194F40;
    v12 = &qword_100ED2DE8;
    v13 = v7;
    goto LABEL_5;
  }

  v19 = Artwork.TextGradient.leadingColor.getter();
  (*(v15 + 8))(v7, v14);
  if (v19)
  {
    v18 = CGColorRef.isLightMusicColor.getter();

    return v18 & 1;
  }

LABEL_6:
  sub_1000089F8(a1, v3, &unk_101188920, &qword_100EBCC50);
  if (v10(v3, 1, v8) == 1)
  {
    sub_1000095E8(v3, &unk_101188920, &qword_100EBCC50);
LABEL_10:
    v18 = 1;
    return v18 & 1;
  }

  v16 = Artwork.backgroundColor.getter();
  (*(v9 + 8))(v3, v8);
  if (!v16)
  {
    goto LABEL_10;
  }

  v17 = CGColorRef.isLightMusicColor.getter();

  v18 = v17 ^ 1;
  return v18 & 1;
}

uint64_t sub_10055C90C(uint64_t a1, uint64_t a2)
{
  sub_10010FC20(&unk_101188920, &qword_100EBCC50);
  __chkstk_darwin();
  v4 = &v17 - v3;
  v5 = type metadata accessor for MusicPropertySource();
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [objc_opt_self() currentDevice];
  v10 = [v9 userInterfaceIdiom];

  if (!v10)
  {
    (*(v6 + 104))(v8, enum case for MusicPropertySource.catalog(_:), v5);
    v11 = static MusicPropertySource.== infix(_:_:)();
    (*(v6 + 8))(v8, v5);
    if (v11)
    {
      sub_1000089F8(a1, &v17, &unk_101192850, &qword_100EE4C90);
      if (v18)
      {
        sub_100059A8C(&v17, v19);
        v12 = v20;
        v13 = v21;
        sub_10000954C(v19, v20);
        if (sub_100558128(2, v12, v13))
        {
          v14 = v20;
          v15 = v21;
          sub_10000954C(v19, v20);
          sub_10055B8CC(v14, v15, v4);
          LOBYTE(v14) = sub_10055C610(v4);
          sub_1000095E8(v4, &unk_101188920, &qword_100EBCC50);
          sub_10000959C(v19);
          return v14 & 1;
        }

        sub_10000959C(v19);
      }

      else
      {
        sub_1000095E8(&v17, &unk_101192850, &qword_100EE4C90);
      }
    }
  }

  return 0;
}

unint64_t sub_10055CBA8(unint64_t result)
{
  if (result >= 4)
  {
    return 4;
  }

  return result;
}

uint64_t sub_10055CBF0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_10055CCF4()
{
  result = qword_101194F48;
  if (!qword_101194F48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101194F48);
  }

  return result;
}

uint64_t sub_10055CDA8()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v1);

  return v1;
}

uint64_t sub_10055CE1C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v1);

  return v1;
}

uint64_t sub_10055CE90()
{
  sub_1000095E8(v0 + OBJC_IVAR____TtCVV5Music15ContainerDetail14SheetPresenter10DataSource_playlist, &unk_1011814D0, &qword_100EC12A0);
  v1 = OBJC_IVAR____TtCVV5Music15ContainerDetail14SheetPresenter10DataSource__suggestedSongsViewModel;
  v2 = sub_10010FC20(&qword_101195100, &qword_100ED3178);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtCVV5Music15ContainerDetail14SheetPresenter10DataSource__isPresentingMusicPicker;
  v4 = sub_10010FC20(&unk_101189E60, &unk_100EC0CF0);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  sub_100020438(*(v0 + OBJC_IVAR____TtCVV5Music15ContainerDetail14SheetPresenter10DataSource_musicPickerCompletionHandler), *(v0 + OBJC_IVAR____TtCVV5Music15ContainerDetail14SheetPresenter10DataSource_musicPickerCompletionHandler + 8));

  return swift_deallocClassInstance();
}

uint64_t _s14SheetPresenterV10DataSourceCMa(uint64_t a1)
{
  result = qword_101194F88;
  if (!qword_101194F88)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10055D00C(uint64_t a1)
{
  sub_100039144(319);
  if (v1 <= 0x3F)
  {
    sub_10055D118(319);
    if (v2 <= 0x3F)
    {
      sub_100008E30();
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_10055D118(uint64_t a1)
{
  if (!qword_101194F98)
  {
    sub_1001109D0(&unk_101194FA0, &qword_100ED2F20);
    v1 = type metadata accessor for Published();
    if (!v2)
    {
      atomic_store(v1, &qword_101194F98);
    }
  }
}

uint64_t sub_10055D1A8()
{
  v1 = sub_10010FC20(&unk_101189E60, &unk_100EC0CF0);
  v2 = *(v1 - 8);
  __chkstk_darwin();
  v4 = &v15[-v3];
  v5 = sub_10010FC20(&qword_101195100, &qword_100ED3178);
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = &v15[-v7];
  v9 = OBJC_IVAR____TtCVV5Music15ContainerDetail14SheetPresenter10DataSource_playlist;
  v10 = type metadata accessor for Playlist();
  (*(*(v10 - 8) + 56))(v0 + v9, 1, 1, v10);
  v11 = OBJC_IVAR____TtCVV5Music15ContainerDetail14SheetPresenter10DataSource__suggestedSongsViewModel;
  v16 = 0;
  sub_10010FC20(&unk_101194FA0, &qword_100ED2F20);
  Published.init(initialValue:)();
  (*(v6 + 32))(v0 + v11, v8, v5);
  v12 = OBJC_IVAR____TtCVV5Music15ContainerDetail14SheetPresenter10DataSource__isPresentingMusicPicker;
  v15[7] = 0;
  Published.init(initialValue:)();
  (*(v2 + 32))(v0 + v12, v4, v1);
  v13 = (v0 + OBJC_IVAR____TtCVV5Music15ContainerDetail14SheetPresenter10DataSource_musicPickerCompletionHandler);
  *v13 = 0;
  v13[1] = 0;
  return v0;
}

uint64_t sub_10055D3C8@<X0>(uint64_t *a2@<X8>)
{
  _s14SheetPresenterV10DataSourceCMa(0);
  result = ObservableObject<>.objectWillChange.getter();
  *a2 = result;
  return result;
}

uint64_t sub_10055D408@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v40 = a5;
  sub_10010FC20(&qword_10119EEF0, &qword_100ED30B0);
  __chkstk_darwin();
  v10 = (&v25 - v9);
  v39 = sub_10010FC20(&qword_1011950D0, &qword_100ED30B8);
  v38 = *(v39 - 8);
  __chkstk_darwin();
  v35 = &v25 - v11;
  v43 = static Color.clear.getter();
  sub_100561980();
  v12 = Color.init<A>(_:)();
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v36 = v12;
  v43 = v12;
  v44 = v49;
  LOBYTE(v45) = v50;
  v46 = v51;
  v47 = v52;
  v48 = v53;
  v13 = _s14SheetPresenterV10DataSourceCMa(0);
  sub_100561B14(&unk_10119E450, _s14SheetPresenterV10DataSourceCMa, &unk_100ED3044);

  v37 = v13;
  ObservedObject.projectedValue.getter();
  swift_getKeyPath();
  ObservedObject.Wrapper.subscript.getter();

  v34 = v41[6];
  v32 = v42;
  v41[3] = a3;
  v41[4] = a4;
  sub_10010FC20(&qword_1011950E0, &qword_100ED30E8);
  State.projectedValue.getter();
  v33 = v41[0];
  v31 = v41[1];
  v30 = v41[2];
  swift_getKeyPath();
  swift_getKeyPath();
  v14 = a2;
  static Published.subscript.getter(v41);

  if (v41[0])
  {
    *v10 = v41[0];
    v15 = enum case for MusicPicker.Reason.editingPlaylist(_:);
    v16 = type metadata accessor for MusicPicker.Reason();
    v17 = *(v16 - 8);
    (*(v17 + 104))(v10, v15, v16);
    v18 = v10;
    (*(v17 + 56))(v10, 0, 1, v16);
  }

  else
  {
    v19 = type metadata accessor for MusicPicker.Reason();
    v18 = v10;
    (*(*(v19 - 8) + 56))(v10, 1, 1, v19);
  }

  v20 = swift_allocObject();
  v20[2] = a1;
  v20[3] = v14;
  v29 = v14;
  v20[4] = a3;
  v20[5] = a4;

  v26 = sub_10010FC20(&qword_1011950E8, &qword_100ED3148);
  v27 = type metadata accessor for Track();
  v28 = sub_100561A90();
  v24 = sub_100561B14(&qword_1011950F8, &type metadata accessor for Track, &protocol conformance descriptor for Track);
  v21 = v35;
  View.musicPicker<A>(isPresented:selection:reason:onCompletion:)();

  sub_1000095E8(v18, &qword_10119EEF0, &qword_100ED30B0);

  v41[0] = v29;
  v43 = v26;
  v44 = v27;
  v45 = v28;
  v46 = v24;
  swift_getOpaqueTypeConformance2();
  sub_100561B14(&qword_1011950C8, _s14SheetPresenterV10DataSourceCMa, &unk_100ED2FF0);
  v22 = v39;
  View.musicPickerUserExperienceObserver<A>(_:)();

  return (*(v38 + 8))(v21, v22);
}

void sub_10055DA58(_BYTE *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v3);

  *a2 = v3;
}

uint64_t sub_10055DAD8(char *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t sub_10055DB4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[7] = a4;
  v5[8] = a5;
  v5[5] = a1;
  v5[6] = a3;
  type metadata accessor for MainActor();
  v5[9] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[10] = v7;
  v5[11] = v6;

  return _swift_task_switch(sub_10055DBE8, v7, v6);
}

uint64_t sub_10055DBE8()
{
  if (*(v0[5] + 16))
  {
    v1 = v0[6] + OBJC_IVAR____TtCVV5Music15ContainerDetail14SheetPresenter10DataSource_musicPickerCompletionHandler;
    v2 = *v1;
    v0[12] = *v1;
    if (v2)
    {
      v0[13] = *(v1 + 8);

      v8 = (v2 + *v2);
      v3 = swift_task_alloc();
      v0[14] = v3;
      *v3 = v0;
      v3[1] = sub_10055DD94;
      v4 = v0[5];

      return v8(v4);
    }

    v6 = v0[8];
    v0[2] = v0[7];
    v0[3] = v6;
    v0[4] = _swiftEmptyArrayStorage;
    sub_10010FC20(&qword_1011950E0, &qword_100ED30E8);
    State.wrappedValue.setter();
  }

  else
  {
  }

  v7 = v0[1];

  return v7();
}

uint64_t sub_10055DD94()
{
  v1 = *v0;
  v2 = *(*v0 + 104);
  v3 = *(*v0 + 96);

  sub_100020438(v3, v2);
  v4 = *(v1 + 88);
  v5 = *(v1 + 80);

  return _swift_task_switch(sub_10055DEF0, v5, v4);
}

uint64_t sub_10055DEF0()
{

  v1 = v0[8];
  v0[2] = v0[7];
  v0[3] = v1;
  v0[4] = _swiftEmptyArrayStorage;
  sub_10010FC20(&qword_1011950E0, &qword_100ED30E8);
  State.wrappedValue.setter();
  v2 = v0[1];

  return v2();
}

uint64_t sub_10055DF9C()
{
  v67 = type metadata accessor for MusicPicker.Click.SearchGroupID();
  v65 = *(v67 - 8);
  __chkstk_darwin();
  v64 = &v60 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = type metadata accessor for MusicPicker.Click.SourceContext();
  v74 = *(v2 - 8);
  v75 = v2;
  __chkstk_darwin();
  v73 = &v60 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Artist();
  v68 = *(v4 - 8);
  v69 = v4;
  __chkstk_darwin();
  v66 = &v60 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Playlist();
  v62 = *(v6 - 8);
  v63 = v6;
  __chkstk_darwin();
  v61 = &v60 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Album();
  v71 = *(v8 - 8);
  v72 = v8;
  __chkstk_darwin();
  v70 = &v60 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for GenericMusicItem();
  v77 = *(v10 - 8);
  v78 = v10;
  __chkstk_darwin();
  v12 = &v60 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v76 = &v60 - v13;
  v14 = type metadata accessor for MusicPicker.Click.LibraryMenuItemID();
  v15 = *(v14 - 8);
  __chkstk_darwin();
  v17 = &v60 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v19 = &v60 - v18;
  v20 = type metadata accessor for MusicPicker.PageID();
  v21 = *(v20 - 8);
  __chkstk_darwin();
  v23 = &v60 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __chkstk_darwin();
  v26 = &v60 - v25;
  (*(v21 + 16))(&v60 - v25, v0, v20, v24);
  v27 = (*(v21 + 88))(v26, v20);
  if (v27 != enum case for MusicPicker.PageID.libraryMenuPage(_:))
  {
    if (v27 == enum case for MusicPicker.PageID.detailPage(_:))
    {
      (*(v21 + 96))(v26, v20);
      v32 = swift_projectBox();
      v34 = v76;
      v33 = v77;
      v35 = *(v77 + 16);
      v36 = v78;
      v35(v76, v32, v78);
      v35(v12, v34, v36);
      v37 = (*(v33 + 88))(v12, v36);
      if (v37 == enum case for GenericMusicItem.album(_:))
      {
        (*(v33 + 96))(v12, v36);
        v39 = v70;
        v38 = v71;
        v40 = v72;
        (*(v71 + 32))(v70, v12, v72);
        v41 = Album.catalogID.getter();
        if (!v42)
        {
          v41 = Album.id.getter();
        }

        v43 = 0x5F6D75626C41;
        v44 = 0xE600000000000000;
      }

      else if (v37 == enum case for GenericMusicItem.artist(_:))
      {
        (*(v33 + 96))(v12, v36);
        v38 = v68;
        v40 = v69;
        v39 = v66;
        (*(v68 + 32))(v66, v12, v69);
        v41 = Artist.catalogID.getter();
        if (!v42)
        {
          v41 = Artist.id.getter();
        }

        v43 = 0x5F747369747241;
        v44 = 0xE700000000000000;
      }

      else
      {
        if (v37 != enum case for GenericMusicItem.playlist(_:))
        {
          v58 = *(v33 + 8);
          v58(v34, v36);
          v58(v12, v36);

          return 0;
        }

        (*(v33 + 96))(v12, v36);
        v39 = v61;
        v38 = v62;
        v40 = v63;
        (*(v62 + 32))(v61, v12, v63);
        v41 = Playlist.catalogID.getter();
        if (!v42)
        {
          v41 = Playlist.id.getter();
        }

        v43 = 0x7473696C79616C50;
        v44 = 0xE90000000000005FLL;
      }

      v79 = v43;
      v80 = v44;
      String.append(_:)(*&v41);

      v31 = v79;
      (*(v38 + 8))(v39, v40);
      (*(v33 + 8))(v34, v36);
    }

    else
    {
      if (v27 != enum case for MusicPicker.PageID.additionalContentPage(_:))
      {
        if (v27 == enum case for MusicPicker.PageID.searchGroup(_:))
        {
          (*(v21 + 96))(v26, v20);
          v54 = v64;
          v53 = v65;
          v55 = v67;
          (*(v65 + 32))(v64, v26, v67);
          v56._countAndFlagsBits = sub_10055ED68();
          v79 = 0x5F686372616553;
          v80 = 0xE700000000000000;
          String.append(_:)(v56);

          v31 = v79;
          (*(v53 + 8))(v54, v55);
          return v31;
        }

        if (v27 == enum case for MusicPicker.PageID.landing(_:))
        {
          return 0x4C5F72656B636950;
        }

        if (v27 == enum case for MusicPicker.PageID.search(_:))
        {
          return 0xD000000000000014;
        }

        (*(v21 + 8))(v26, v20);
        return 0;
      }

      (*(v21 + 96))(v26, v20);
      v45 = swift_projectBox();
      v47 = v73;
      v46 = v74;
      v48 = v75;
      (*(v74 + 16))(v73, v45, v75);
      MusicPicker.Click.SourceContext.pageID.getter();
      v49 = sub_10055DF9C();
      v51 = v50;
      (*(v21 + 8))(v23, v20);
      v79 = 0x6C6C41656553;
      v80 = 0xE600000000000000;
      v52._countAndFlagsBits = v49;
      v52._object = v51;
      String.append(_:)(v52);

      v31 = v79;
      (*(v46 + 8))(v47, v48);
    }

    return v31;
  }

  (*(v21 + 96))(v26, v20);
  v28 = swift_projectBox();
  v29 = *(v15 + 16);
  v29(v19, v28, v14);
  v29(v17, v19, v14);
  v30 = (*(v15 + 88))(v17, v14);
  if (v30 != enum case for MusicPicker.Click.LibraryMenuItemID.artists(_:))
  {
    if (v30 == enum case for MusicPicker.Click.LibraryMenuItemID.albums(_:))
    {
      (*(v15 + 8))(v19, v14);

      return 0xD000000000000018;
    }

    if (v30 == enum case for MusicPicker.Click.LibraryMenuItemID.songs(_:))
    {
      (*(v15 + 8))(v19, v14);

      return 0xD000000000000017;
    }

    if (v30 == enum case for MusicPicker.Click.LibraryMenuItemID.playlists(_:))
    {
      (*(v15 + 8))(v19, v14);

      return 0xD00000000000001BLL;
    }

    if (v30 == enum case for MusicPicker.Click.LibraryMenuItemID.recentlyAdded(_:))
    {
      (*(v15 + 8))(v19, v14);

      return 0xD00000000000001FLL;
    }

    v59 = *(v15 + 8);
    v59(v19, v14);
    v59(v17, v14);

    return 0;
  }

  (*(v15 + 8))(v19, v14);

  return 0xD000000000000019;
}

uint64_t sub_10055EB74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 40) = a4;
  type metadata accessor for MainActor();
  *(v4 + 48) = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10055EC0C, v6, v5);
}

uint64_t sub_10055EC0C()
{

  v1 = *MetricsReportingController.shared.unsafeMutableAddressor();
  v2 = sub_10053771C();
  v4 = v3;
  if (qword_10117F600 != -1)
  {
    swift_once();
  }

  v5 = *(v0 + 40);
  v6 = qword_101218AD0;
  v7 = GroupActivitiesManager.hasJoined.getter();
  v8 = GroupActivitiesManager.participantsCount.getter();
  v9 = OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_maxParticipantsCount;
  swift_beginAccess();
  (*((swift_isaMask & *v1) + 0xA0))(v5, v2, v4, v7 & 1, v8, *(v6 + v9));

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_10055ED68()
{
  v1 = v0;
  v2 = type metadata accessor for MusicPicker.Click.SearchGroupID();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin();
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, v1, v2, v4);
  v7 = (*(v3 + 88))(v6, v2);
  if (v7 == enum case for MusicPicker.Click.SearchGroupID.topResults(_:))
  {
    return 0x6C75736552706F74;
  }

  if (v7 == enum case for MusicPicker.Click.SearchGroupID.albums(_:))
  {
    return 0x736D75626C61;
  }

  if (v7 == enum case for MusicPicker.Click.SearchGroupID.artists(_:))
  {
    return 0x73747369747261;
  }

  if (v7 == enum case for MusicPicker.Click.SearchGroupID.curators(_:))
  {
    return 0x73726F7461727563;
  }

  if (v7 == enum case for MusicPicker.Click.SearchGroupID.songs(_:))
  {
    return 0x73676E6F73;
  }

  if (v7 == enum case for MusicPicker.Click.SearchGroupID.musicVideos(_:))
  {
    return 0x646956636973756DLL;
  }

  if (v7 == enum case for MusicPicker.Click.SearchGroupID.playlists(_:))
  {
    return 0x7473696C79616C70;
  }

  if (v7 == enum case for MusicPicker.Click.SearchGroupID.radioShows(_:))
  {
    return 0x6F68536F69646172;
  }

  if (v7 == enum case for MusicPicker.Click.SearchGroupID.recordLabels(_:))
  {
    return 0x614C64726F636572;
  }

  if (v7 == enum case for MusicPicker.Click.SearchGroupID.stations(_:))
  {
    return 0x736E6F6974617473;
  }

  (*(v3 + 8))(v6, v2);
  return 0;
}

uint64_t sub_10055F03C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 40) = a4;
  type metadata accessor for MainActor();
  *(v4 + 48) = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100561B5C, v6, v5);
}

uint64_t sub_10055F0D4(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v85 = a5;
  v84 = a4;
  v90 = a2;
  v101 = a1;
  sub_10010FC20(&unk_101181520, &qword_100EBCC60);
  __chkstk_darwin();
  v100 = &v81 - v5;
  sub_10010FC20(&qword_101183A20, &unk_100EBCF80);
  __chkstk_darwin();
  v94 = &v81 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v95 = &v81 - v7;
  v96 = *(type metadata accessor for MetricsEvent.Click(0) - 8);
  __chkstk_darwin();
  v97 = v8;
  v98 = &v81 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v99 = &v81 - v9;
  sub_10010FC20(&unk_1011814D0, &qword_100EC12A0);
  __chkstk_darwin();
  v83 = &v81 - v10;
  v11 = type metadata accessor for Playlist();
  v86 = *(v11 - 8);
  v87 = v11;
  __chkstk_darwin();
  v82 = &v81 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for MusicPicker.Click.ActionKind();
  v14 = *(v13 - 8);
  __chkstk_darwin();
  v89 = &v81 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v91 = &v81 - v16;
  v17 = type metadata accessor for MusicPicker.Click.ControlKind();
  *&v88 = *(v17 - 8);
  __chkstk_darwin();
  v19 = &v81 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for MusicPicker.PageID();
  v21 = *(v20 - 8);
  __chkstk_darwin();
  v23 = &v81 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MusicPicker.Click.SourceContext.pageID.getter();
  v24 = sub_10055DF9C();
  v92 = v25;
  v93 = v24;
  (*(v21 + 8))(v23, v20);
  v102 = GenericMusicItem.catalogID.getter();
  if (!v26)
  {
    v102 = GenericMusicItem.id.getter();
  }

  v27 = v26;
  MusicPicker.Click.SourceContext.controlKind.getter();
  v28 = v88;
  v29 = (*(v88 + 88))(v19, v17);
  if (v29 == enum case for MusicPicker.Click.ControlKind.button(_:))
  {
    LODWORD(v101) = 5;
    v30 = v91;
    goto LABEL_12;
  }

  v30 = v91;
  if (v29 != enum case for MusicPicker.Click.ControlKind.listItem(_:))
  {
    if (v29 == enum case for MusicPicker.Click.ControlKind.gridItem(_:))
    {
      v31 = 26;
      goto LABEL_11;
    }

    if (v29 == enum case for MusicPicker.Click.ControlKind.shelfItem(_:))
    {
      v31 = 25;
      goto LABEL_11;
    }

    (*(v28 + 8))(v19, v17);
  }

  v31 = 19;
LABEL_11:
  LODWORD(v101) = v31;
LABEL_12:
  (*(v14 + 16))(v30, v90, v13);
  v32 = (*(v14 + 88))(v30, v13);
  if (v32 == enum case for MusicPicker.Click.ActionKind.add(_:))
  {
    v33 = 3;
  }

  else if (v32 == enum case for MusicPicker.Click.ActionKind.remove(_:))
  {
    v33 = 16;
  }

  else if (v32 == enum case for MusicPicker.Click.ActionKind.play(_:))
  {
    v33 = 61;
  }

  else if (v32 == enum case for MusicPicker.Click.ActionKind.pause(_:))
  {
    v33 = 62;
  }

  else
  {
    if (v32 != enum case for MusicPicker.Click.ActionKind.navigate(_:))
    {
      (*(v14 + 8))(v30, v13);
    }

    v33 = 28;
  }

  LODWORD(v91) = v33;
  v34 = v89;
  (*(v14 + 104))(v89);
  v35 = static MusicPicker.Click.ActionKind.== infix(_:_:)();
  (*(v14 + 8))(v34, v13);
  if ((v35 & 1) == 0)
  {
    goto LABEL_27;
  }

  v36 = v83;
  (*(v85 + 16))(v84);
  v37 = v86;
  v38 = v87;
  if ((*(v86 + 48))(v36, 1, v87) == 1)
  {
    sub_1000095E8(v36, &unk_1011814D0, &qword_100EC12A0);
LABEL_27:
    v90 = 0;
    v39 = 65280;
    goto LABEL_34;
  }

  v40 = v82;
  (*(v37 + 32))(v82, v36, v38);
  sub_10010FC20(&qword_101190BE0, &qword_100EC1580);
  inited = swift_initStackObject();
  *(inited + 32) = 1684957547;
  *(inited + 16) = xmmword_100EBEF50;
  *(inited + 40) = 0xE400000000000000;
  *(inited + 48) = 1735290739;
  *(inited + 56) = 0xE400000000000000;
  *(inited + 64) = 0x6F54646461;
  *(inited + 72) = 0xE500000000000000;
  *(inited + 80) = 0x7473696C79616C70;
  *(inited + 88) = 0xE800000000000000;
  *(inited + 96) = 0x4E6E6F6974636573;
  *(inited + 104) = 0xEB00000000656D61;
  v42 = v37;
  v43 = MusicPicker.Click.SourceContext.sectionTitle.getter();
  if (v44)
  {
    v45 = v43;
  }

  else
  {
    v45 = 0;
  }

  v46 = 0xE000000000000000;
  if (v44)
  {
    v46 = v44;
  }

  *(inited + 112) = v45;
  *(inited + 120) = v46;
  *(inited + 128) = 0x49746E65746E6F63;
  *(inited + 136) = 0xE900000000000064;
  *(inited + 144) = Playlist.id.getter();
  *(inited + 152) = v47;
  v48 = sub_10010C578(inited);
  swift_setDeallocating();
  sub_10010FC20(&qword_101183AA0, &unk_100ECAF50);
  swift_arrayDestroy();
  (*(v42 + 8))(v40, v38);
  v90 = v48;

  v39 = 768;
LABEL_34:
  LODWORD(v89) = v39;
  v49 = MusicPicker.Click.SourceContext.sectionTitle.getter();
  if (v50)
  {
    v51 = v50;
    v87 = v49;
    sub_10010FC20(&unk_1011927C0, &unk_100ED6A50);
    v52 = swift_allocObject();
    v88 = xmmword_100EBDC20;
    *(v52 + 16) = xmmword_100EBDC20;
    sub_10010FC20(&unk_1011972C0, &qword_100ECF9B0);
    v53 = swift_initStackObject();
    *(v53 + 16) = v88;
    *(v53 + 32) = 25705;
    v54 = v102;
    *(v53 + 40) = 0xE200000000000000;
    *(v53 + 48) = v54;
    *(v53 + 56) = v27;
    *(v53 + 72) = &type metadata for String;
    strcpy((v53 + 80), "locationType");
    *(v53 + 93) = 0;
    *(v53 + 94) = -5120;
    v55 = MetricsEvent.TargetType.rawValue.getter(v101);
    *(v53 + 120) = &type metadata for String;
    *(v53 + 96) = v55;
    *(v53 + 104) = v56;

    v57 = sub_10010BC60(v53);
    swift_setDeallocating();
    sub_10010FC20(&unk_1011927D0, &unk_100EBA560);
    swift_arrayDestroy();
    *(v52 + 32) = v57;
    v58 = swift_initStackObject();
    *(v58 + 16) = v88;
    strcpy((v58 + 32), "locationType");
    *(v58 + 45) = 0;
    *(v58 + 46) = -5120;
    *(v58 + 48) = 0x666C656853;
    *(v58 + 56) = 0xE500000000000000;
    *(v58 + 72) = &type metadata for String;
    *(v58 + 80) = 1701667182;
    *(v58 + 120) = &type metadata for String;
    v59 = v87;
    *(v58 + 88) = 0xE400000000000000;
    *(v58 + 96) = v59;
    *(v58 + 104) = v51;
    v60 = sub_10010BC60(v58);
    swift_setDeallocating();
    swift_arrayDestroy();
    *(v52 + 40) = v60;
  }

  else
  {
    sub_10010FC20(&unk_1011927C0, &unk_100ED6A50);
    v52 = swift_allocObject();
    *(v52 + 16) = xmmword_100EBC6B0;
    sub_10010FC20(&unk_1011972C0, &qword_100ECF9B0);
    v61 = swift_initStackObject();
    *(v61 + 16) = xmmword_100EBDC20;
    *(v61 + 32) = 25705;
    v62 = v102;
    *(v61 + 40) = 0xE200000000000000;
    *(v61 + 48) = v62;
    *(v61 + 56) = v27;
    *(v61 + 72) = &type metadata for String;
    strcpy((v61 + 80), "locationType");
    *(v61 + 93) = 0;
    *(v61 + 94) = -5120;
    v63 = MetricsEvent.TargetType.rawValue.getter(v101);
    *(v61 + 120) = &type metadata for String;
    *(v61 + 96) = v63;
    *(v61 + 104) = v64;

    v65 = sub_10010BC60(v61);
    swift_setDeallocating();
    sub_10010FC20(&unk_1011927D0, &unk_100EBA560);
    swift_arrayDestroy();
    *(v52 + 32) = v65;
  }

  v66 = type metadata accessor for URL();
  v67 = *(*(v66 - 8) + 56);
  v68 = v95;
  v67(v95, 1, 1, v66);
  v69 = v94;
  v67(v94, 1, 1, v66);
  v80 = v69;
  v70 = v89;
  v71 = v90;
  v72 = v99;
  MetricsEvent.Click.init(targetIdentifier:targetType:actionType:actionURL:locations:actionContext:actionDetails:pageIdentifier:pageType:pageURL:pageDetails:pageDisplayType:attenuationAvailable:snapshotImpressions:searchTerm:)(v102, v27, v101, v91, v68, v52, 0, 12, v99, v90, 0, v89, v93, v92, 0x72656B636950, 0xE600000000000000, v80, 0, 0, 2, 0, 0, 0);
  v73 = type metadata accessor for TaskPriority();
  v74 = v100;
  (*(*(v73 - 8) + 56))(v100, 1, 1, v73);
  v75 = v98;
  sub_100561760(v72, v98, type metadata accessor for MetricsEvent.Click);
  type metadata accessor for MainActor();
  v76 = static MainActor.shared.getter();
  v77 = (*(v96 + 80) + 32) & ~*(v96 + 80);
  v78 = swift_allocObject();
  *(v78 + 16) = v76;
  *(v78 + 24) = &protocol witness table for MainActor;
  sub_1005617C8(v75, v78 + v77, type metadata accessor for MetricsEvent.Click);
  sub_1001F4CB8(0, 0, v74, &unk_100ED3088, v78);

  sub_1005602B0(v71, 0, 0, v70);
  return sub_100561920(v72, type metadata accessor for MetricsEvent.Click);
}

uint64_t sub_10055FD98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 40) = a4;
  type metadata accessor for MainActor();
  *(v4 + 48) = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10055FE30, v6, v5);
}

uint64_t sub_10055FE30()
{

  v1 = *MetricsReportingController.shared.unsafeMutableAddressor();
  v2 = sub_10053771C();
  v4 = v3;
  if (qword_10117F600 != -1)
  {
    swift_once();
  }

  v5 = *(v0 + 40);
  v6 = qword_101218AD0;
  v7 = GroupActivitiesManager.hasJoined.getter();
  v8 = GroupActivitiesManager.participantsCount.getter();
  v9 = OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_maxParticipantsCount;
  swift_beginAccess();
  (*((swift_isaMask & *v1) + 0xB8))(v5, v2, v4, v7 & 1, v8, *(v6 + v9));

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_10055FF8C@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtCVV5Music15ContainerDetail14SheetPresenter10DataSource_playlist;
  swift_beginAccess();
  return sub_100452FB8(v3 + v4, a1);
}

uint64_t sub_10055FFF0(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  WitnessTable = swift_getWitnessTable();

  return sub_10055F0D4(a1, a2, a3, a4, WitnessTable);
}

uint64_t sub_10056006C(uint64_t a1)
{
  result = sub_100561B14(&qword_1011950C8, _s14SheetPresenterV10DataSourceCMa, &unk_100ED2FF0);
  *(a1 + 8) = result;
  return result;
}

void sub_1005600C4(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v3);

  *a2 = v3;
}

uint64_t sub_100560144(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t sub_1005601C0(uint64_t a1, __n128 a2)
{
  v5 = *(type metadata accessor for MetricsEvent.Click(0) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v2 + 16);
  v8 = *(v2 + 24);
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_100008F30;

  return sub_10055FD98(a1, v7, v8, v2 + v6);
}

double sub_1005602B0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (BYTE1(a4) != 255)
  {
    return sub_100344B1C(a1, a2, a3, a4, SBYTE1(a4));
  }

  return result;
}

uint64_t sub_1005602C4()
{
  sub_10010FC20(&unk_101181520, &qword_100EBCC60);
  __chkstk_darwin();
  v1 = &v18 - v0;
  sub_10010FC20(&qword_101183A20, &unk_100EBCF80);
  __chkstk_darwin();
  v3 = &v18 - v2;
  v4 = *(type metadata accessor for MetricsEvent.Page(0) - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin();
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v8 = (&v18 - v7);
  v9 = sub_10055DF9C();
  v11 = v10;
  v12 = type metadata accessor for URL();
  (*(*(v12 - 8) + 56))(v3, 1, 1, v12);
  MetricsEvent.Page.init(pageIdentifier:pageType:pageURL:pageDetails:searchTerm:pageDisplayType:extRefUrl:attenuationAvailable:)(v9, v11, 0x72656B636950, 0xE600000000000000, v3, 0, 0, 0, v8, 0, 0, 0, 2);
  v13 = type metadata accessor for TaskPriority();
  (*(*(v13 - 8) + 56))(v1, 1, 1, v13);
  sub_100561760(v8, v6, type metadata accessor for MetricsEvent.Page);
  type metadata accessor for MainActor();
  v14 = static MainActor.shared.getter();
  v15 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = v14;
  *(v16 + 24) = &protocol witness table for MainActor;
  sub_1005617C8(v6, v16 + v15, type metadata accessor for MetricsEvent.Page);
  sub_1001F4CB8(0, 0, v1, &unk_100ED30A8, v16);

  return sub_100561920(v8, type metadata accessor for MetricsEvent.Page);
}

uint64_t sub_1005605AC(uint64_t a1)
{
  v95 = a1;
  sub_10010FC20(&unk_101181520, &qword_100EBCC60);
  __chkstk_darwin();
  v104 = &v81 - v1;
  sub_10010FC20(&qword_101183A20, &unk_100EBCF80);
  __chkstk_darwin();
  v98 = &v81 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v99 = &v81 - v3;
  v100 = *(type metadata accessor for MetricsEvent.Click(0) - 8);
  __chkstk_darwin();
  v101 = v4;
  v102 = &v81 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v103 = &v81 - v5;
  v6 = type metadata accessor for MusicPicker.Click.SearchGroupID();
  v82 = *(v6 - 8);
  v83 = v6;
  __chkstk_darwin();
  v81 = &v81 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for MusicCatalogSearchSuggestionsResponse.Suggestion();
  v86 = *(v8 - 8);
  v87 = v8;
  __chkstk_darwin();
  v85 = &v81 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for MusicPicker.Click.LibraryMenuItemID();
  v91 = *(v10 - 8);
  v92 = v10;
  __chkstk_darwin();
  v89 = &v81 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v90 = &v81 - v12;
  v13 = type metadata accessor for MusicPicker.Click.ControlID();
  *&v93 = *(v13 - 8);
  __chkstk_darwin();
  v94 = &v81 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v84 = &v81 - v15;
  __chkstk_darwin();
  v88 = &v81 - v16;
  v17 = type metadata accessor for MusicPicker.Click.ControlKind();
  v18 = *(v17 - 8);
  __chkstk_darwin();
  v20 = &v81 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for MusicPicker.PageID();
  v22 = *(v21 - 8);
  __chkstk_darwin();
  v24 = &v81 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MusicPicker.Click.SourceContext.pageID.getter();
  v25 = sub_10055DF9C();
  v96 = v26;
  v97 = v25;
  v27 = v18;
  (*(v22 + 8))(v24, v21);
  MusicPicker.Click.SourceContext.controlKind.getter();
  v28 = (*(v18 + 88))(v20, v17);
  if (v28 == enum case for MusicPicker.Click.ControlKind.button(_:))
  {
    v29 = v93;
    v30 = v88;
    v31 = v95;
    (*(v93 + 16))(v88, v95, v13);
    if ((*(v29 + 88))(v30, v13) == enum case for MusicPicker.Click.ControlID.searchGroup(_:))
    {
      LODWORD(v32) = 9;
    }

    else
    {
      LODWORD(v32) = 5;
    }

    v33 = v29;
LABEL_11:
    (*(v33 + 8))(v30, v13);
    v35 = v94;
    goto LABEL_18;
  }

  v34 = v93;
  v31 = v95;
  if (v28 == enum case for MusicPicker.Click.ControlKind.listItem(_:))
  {
    v29 = v93;
    v30 = v84;
    (*(v93 + 16))(v84, v95, v13);
    if ((*(v34 + 88))(v30, v13) == enum case for MusicPicker.Click.ControlID.searchSuggestion(_:))
    {
      LODWORD(v32) = 11;
    }

    else
    {
      LODWORD(v32) = 15;
    }

    v33 = v34;
    goto LABEL_11;
  }

  v35 = v94;
  if (v28 == enum case for MusicPicker.Click.ControlKind.gridItem(_:))
  {
    LODWORD(v32) = 26;
  }

  else if (v28 == enum case for MusicPicker.Click.ControlKind.shelfItem(_:))
  {
    LODWORD(v32) = 25;
  }

  else
  {
    (*(v27 + 8))(v20, v17);
    LODWORD(v32) = 15;
  }

  v29 = v34;
LABEL_18:
  (*(v29 + 16))(v35, v31, v13);
  v36 = (*(v29 + 88))(v35, v13);
  if (v36 == enum case for MusicPicker.Click.ControlID.libraryMenuItem(_:))
  {
    (*(v29 + 96))(v35, v13);
    v38 = v90;
    v37 = v91;
    v39 = v92;
    (*(v91 + 32))(v90, v35, v92);
    v40 = v89;
    (*(v37 + 16))(v89, v38, v39);
    v41 = (*(v37 + 88))(v40, v39);
    if (v41 == enum case for MusicPicker.Click.LibraryMenuItemID.artists(_:))
    {
      v42 = 0xE700000000000000;
      v43 = 0x73747369747241;
    }

    else if (v41 == enum case for MusicPicker.Click.LibraryMenuItemID.albums(_:))
    {
      v42 = 0xE600000000000000;
      v43 = 0x736D75626C41;
    }

    else if (v41 == enum case for MusicPicker.Click.LibraryMenuItemID.songs(_:))
    {
      v42 = 0xE500000000000000;
      v43 = 0x73676E6F53;
    }

    else if (v41 == enum case for MusicPicker.Click.LibraryMenuItemID.playlists(_:))
    {
      v42 = 0xE900000000000073;
      v43 = 0x7473696C79616C50;
    }

    else if (v41 == enum case for MusicPicker.Click.LibraryMenuItemID.recentlyAdded(_:))
    {
      v42 = 0xED00006465646441;
      v43 = 0x796C746E65636552;
    }

    else
    {
      (*(v37 + 8))(v40, v39);
      v43 = 0;
      v42 = 0xE000000000000000;
    }

    (*(v37 + 8))(v38, v39);
  }

  else
  {
    if (v36 == enum case for MusicPicker.Click.ControlID.searchSuggestion(_:))
    {
      (*(v29 + 96))(v35, v13);
      v44 = v85;
      v45 = v86;
      v46 = v87;
      (*(v86 + 32))(v85, v35, v87);
      v43 = MusicCatalogSearchSuggestionsResponse.Suggestion.displayTerm.getter();
      v42 = v47;
      (*(v45 + 8))(v44, v46);
      v48 = 26;
      goto LABEL_39;
    }

    if (v36 == enum case for MusicPicker.Click.ControlID.searchGroup(_:))
    {
      (*(v29 + 96))(v35, v13);
      v49 = v81;
      v50 = v82;
      v51 = v83;
      (*(v82 + 32))(v81, v35, v83);
      v43 = sub_10055ED68();
      v42 = v52;
      (*(v50 + 8))(v49, v51);
    }

    else if (v36 == enum case for MusicPicker.Click.ControlID.additionalContent(_:))
    {
      v42 = 0xE600000000000000;
      v43 = 0x6C6C41656573;
    }

    else
    {
      (*(v29 + 8))(v35, v13);
      v43 = 0;
      v42 = 0xE000000000000000;
    }
  }

  v48 = 28;
LABEL_39:
  LODWORD(v95) = v48;
  v53 = MusicPicker.Click.SourceContext.sectionTitle.getter();
  if (v54)
  {
    v55 = v54;
    v92 = v53;
    sub_10010FC20(&unk_1011927C0, &unk_100ED6A50);
    v56 = swift_allocObject();
    v93 = xmmword_100EBDC20;
    *(v56 + 16) = xmmword_100EBDC20;
    sub_10010FC20(&unk_1011972C0, &qword_100ECF9B0);
    inited = swift_initStackObject();
    LODWORD(v94) = v32;
    v32 = inited;
    *(inited + 16) = v93;
    *(inited + 32) = 25705;
    *(inited + 40) = 0xE200000000000000;
    *(inited + 48) = v43;
    *(inited + 56) = v42;
    *(inited + 72) = &type metadata for String;
    strcpy((inited + 80), "locationType");
    *(inited + 93) = 0;
    *(inited + 94) = -5120;
    v58 = MetricsEvent.TargetType.rawValue.getter(v94);
    v32[15] = &type metadata for String;
    v32[12] = v58;
    v32[13] = v59;

    v60 = sub_10010BC60(v32);
    swift_setDeallocating();
    sub_10010FC20(&unk_1011927D0, &unk_100EBA560);
    swift_arrayDestroy();
    *(v56 + 32) = v60;
    v61 = swift_initStackObject();
    *(v61 + 16) = v93;
    strcpy((v61 + 32), "locationType");
    *(v61 + 45) = 0;
    *(v61 + 46) = -5120;
    *(v61 + 48) = 0x666C656853;
    *(v61 + 56) = 0xE500000000000000;
    *(v61 + 72) = &type metadata for String;
    *(v61 + 80) = 1701667182;
    *(v61 + 120) = &type metadata for String;
    v62 = v92;
    *(v61 + 88) = 0xE400000000000000;
    *(v61 + 96) = v62;
    *(v61 + 104) = v55;
    v63 = sub_10010BC60(v61);
    swift_setDeallocating();
    LOBYTE(v32) = v94;
    swift_arrayDestroy();
    *(v56 + 40) = v63;
  }

  else
  {
    sub_10010FC20(&unk_1011927C0, &unk_100ED6A50);
    v56 = swift_allocObject();
    *(v56 + 16) = xmmword_100EBC6B0;
    sub_10010FC20(&unk_1011972C0, &qword_100ECF9B0);
    v64 = swift_initStackObject();
    *(v64 + 16) = xmmword_100EBDC20;
    *(v64 + 32) = 25705;
    *(v64 + 40) = 0xE200000000000000;
    *(v64 + 48) = v43;
    *(v64 + 56) = v42;
    *(v64 + 72) = &type metadata for String;
    strcpy((v64 + 80), "locationType");
    *(v64 + 93) = 0;
    *(v64 + 94) = -5120;
    v65 = MetricsEvent.TargetType.rawValue.getter(v32);
    *(v64 + 120) = &type metadata for String;
    *(v64 + 96) = v65;
    *(v64 + 104) = v66;

    v67 = sub_10010BC60(v64);
    swift_setDeallocating();
    sub_10010FC20(&unk_1011927D0, &unk_100EBA560);
    swift_arrayDestroy();
    *(v56 + 32) = v67;
  }

  v68 = type metadata accessor for URL();
  v69 = *(*(v68 - 8) + 56);
  v70 = v99;
  v69(v99, 1, 1, v68);
  v71 = v98;
  v69(v98, 1, 1, v68);
  v80 = v71;
  v72 = v103;
  MetricsEvent.Click.init(targetIdentifier:targetType:actionType:actionURL:locations:actionContext:actionDetails:pageIdentifier:pageType:pageURL:pageDetails:pageDisplayType:attenuationAvailable:snapshotImpressions:searchTerm:)(v43, v42, v32, v95, v70, v56, 0, 12, v103, 0, 0, 65280, v97, v96, 0x72656B636950, 0xE600000000000000, v80, 0, 0, 2, 0, 0, 0);
  v73 = type metadata accessor for TaskPriority();
  v74 = v104;
  (*(*(v73 - 8) + 56))(v104, 1, 1, v73);
  v75 = v102;
  sub_100561760(v72, v102, type metadata accessor for MetricsEvent.Click);
  type metadata accessor for MainActor();
  v76 = static MainActor.shared.getter();
  v77 = (*(v100 + 80) + 32) & ~*(v100 + 80);
  v78 = swift_allocObject();
  *(v78 + 16) = v76;
  *(v78 + 24) = &protocol witness table for MainActor;
  sub_1005617C8(v75, v78 + v77, type metadata accessor for MetricsEvent.Click);
  sub_1001F4CB8(0, 0, v74, &unk_100ED3098, v78);

  return sub_100561920(v72, type metadata accessor for MetricsEvent.Click);
}

uint64_t sub_100561448(__n128 a1)
{
  v2 = type metadata accessor for MetricsEvent.Click(0);
  v3 = (*(*(v2 - 1) + 80) + 32) & ~*(*(v2 - 1) + 80);
  swift_unknownObjectRelease();
  v4 = v1 + v3;

  v5 = v2[7];
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  v8 = *(v7 + 48);
  if (!v8(v1 + v3 + v5, 1, v6))
  {
    (*(v7 + 8))(v4 + v5, v6);
  }

  if (*(v4 + v2[9] + 8) >= 0xDuLL)
  {
  }

  v9 = v4 + v2[10];
  v10 = *(v9 + 24);
  if (v10 >> 8 <= 0xFE)
  {
    sub_100344B1C(*v9, *(v9 + 8), *(v9 + 16), v10, SBYTE1(v10));
  }

  v11 = v2[14];
  if (!v8(v4 + v11, 1, v6))
  {
    (*(v7 + 8))(v4 + v11, v6);
  }

  return swift_deallocObject();
}

uint64_t sub_100561670(uint64_t a1, __n128 a2)
{
  v5 = *(type metadata accessor for MetricsEvent.Click(0) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v2 + 16);
  v8 = *(v2 + 24);
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_100008F30;

  return sub_10055F03C(a1, v7, v8, v2 + v6);
}

uint64_t sub_100561760(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1005617C8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100561830(uint64_t a1)
{
  v4 = *(type metadata accessor for MetricsEvent.Page(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10002F3F4;

  return sub_10055EB74(a1, v6, v7, v1 + v5);
}

uint64_t sub_100561920(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_100561980()
{
  result = qword_1011950D8;
  if (!qword_1011950D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011950D8);
  }

  return result;
}

uint64_t sub_1005619D4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100008F30;

  return sub_10055DB4C(a1, v4, v5, v7, v6);
}

unint64_t sub_100561A90()
{
  result = qword_1011950F0;
  if (!qword_1011950F0)
  {
    sub_1001109D0(&qword_1011950E8, &qword_100ED3148);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011950F0);
  }

  return result;
}

uint64_t sub_100561B14(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

char *sub_100561B60(void *a1)
{
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR____TtC5Music28MusicBackgroundExtensionView_contentView] = a1;
  v4 = type metadata accessor for MusicBackgroundExtensionEffectsView();
  v5 = objc_allocWithZone(v4);
  *&v5[OBJC_IVAR____TtC5MusicP33_863730B999DE7C5F62E72266A355981A35MusicBackgroundExtensionEffectsView_referenceView] = a1;
  v6 = a1;
  [v6 frame];
  v10.receiver = v5;
  v10.super_class = v4;
  *&v1[OBJC_IVAR____TtC5Music28MusicBackgroundExtensionView_effectsView] = objc_msgSendSuper2(&v10, "initWithFrame:");
  [v6 frame];
  v9.receiver = v1;
  v9.super_class = ObjectType;
  v7 = objc_msgSendSuper2(&v9, "initWithFrame:");
  [v7 addSubview:v6];
  [v7 addSubview:*&v7[OBJC_IVAR____TtC5Music28MusicBackgroundExtensionView_effectsView]];

  return v7;
}

void sub_100561E34(void *a1)
{
  v2 = v1;
  v44.receiver = v1;
  v44.super_class = type metadata accessor for MusicBackgroundExtensionEffectsView();
  objc_msgSendSuper2(&v44, "layoutSublayersOfLayer:", a1);
  sub_1003C4CA4();
  v4 = [v1 layer];
  v5 = static NSObject.== infix(_:_:)();

  if (v5)
  {
    v6 = objc_opt_self();
    [v6 begin];
    v38 = v6;
    [v6 setDisableActions:1];
    v40 = *&v2[OBJC_IVAR____TtC5MusicP33_863730B999DE7C5F62E72266A355981A35MusicBackgroundExtensionEffectsView_referenceView];
    v7 = [v40 layer];
    [v7 setShouldRasterize:1];
    v8 = [v2 traitCollection];
    [v8 displayScale];
    v10 = v9;

    [v7 setRasterizationScale:v10];
    v39 = a1;
    v11 = 8;
    v12 = &unk_10109B928;
    do
    {
      v14 = *(v12 - 1);
      v13 = *v12;
      v15 = [objc_allocWithZone(CAPortalLayer) init];
      v42.a = 8.18364421e-308;
      v42.b = -1.39234638e188;
      *&v41.a = 4028456;
      v41.b = -7.54792485e168;
      v43 = v14;
      v16 = v15;
      v17._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v17);

      v18._countAndFlagsBits = 1031348268;
      v18._object = 0xE400000000000000;
      String.append(_:)(v18);
      v43 = v13;
      v19._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v19);

      v20._countAndFlagsBits = 41;
      v20._object = 0xE100000000000000;
      String.append(_:)(v20);
      v21._countAndFlagsBits = *&v41.a;
      v21._object = *&v41.b;
      String.append(_:)(v21);

      v22 = String._bridgeToObjectiveC()();

      [v16 setName:v22];

      [v39 insertSublayer:v16 atIndex:0];
      [v16 setSourceLayer:v7];
      [v40 frame];
      x = v45.origin.x;
      y = v45.origin.y;
      width = v45.size.width;
      height = v45.size.height;
      MinX = CGRectGetMinX(v45);
      v46.origin.x = x;
      v46.origin.y = y;
      v46.size.width = width;
      v46.size.height = height;
      v28 = CGRectGetWidth(v46);
      v29 = Int.seconds.getter(v14);
      v30 = MinX + v28 * v29 - v29;
      v47.origin.x = x;
      v47.origin.y = y;
      v47.size.width = width;
      v47.size.height = height;
      MinY = CGRectGetMinY(v47);
      v48.origin.x = x;
      v48.origin.y = y;
      v48.size.width = width;
      v48.size.height = height;
      v32 = CGRectGetHeight(v48);
      v33 = Int.seconds.getter(v13);
      v34 = MinY + v32 * v33 - v33;
      v49.origin.x = x;
      v49.origin.y = y;
      v49.size.width = width;
      v49.size.height = height;
      v35 = CGRectGetWidth(v49);
      v50.origin.x = x;
      v50.origin.y = y;
      v50.size.width = width;
      v50.size.height = height;
      [v16 setFrame:{v30, v34, v35, CGRectGetHeight(v50)}];

      v36 = -1.0;
      if (v14)
      {
        v37 = -1.0;
      }

      else
      {
        v37 = 1.0;
      }

      v42.b = 0.0;
      v42.c = 0.0;
      if (!v13)
      {
        v36 = 1.0;
      }

      v42.a = 1.0;
      v42.d = 1.0;
      v42.tx = 0.0;
      v42.ty = 0.0;
      CGAffineTransformScale(&v41, &v42, v37, v36);
      v42 = v41;
      [v16 setAffineTransform:&v42];

      v12 += 2;
      --v11;
    }

    while (v11);

    [v38 commit];
  }
}

id sub_100562314()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MusicBackgroundExtensionEffectsView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_100562380()
{
  v1 = v0;
  sub_10010FC20(&unk_10118A5E0, &unk_100EBCD90);
  __chkstk_darwin();
  v3 = &v25[-1] - v2;
  v4 = type metadata accessor for GenericMusicItem();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v25[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [objc_allocWithZone(LPiTunesMediaPlaylistMetadata) init];
  Playlist.name.getter();
  v9 = String._bridgeToObjectiveC()();

  [v8 setName:v9];

  Playlist.curatorName.getter();
  if (v10)
  {
    v11 = String._bridgeToObjectiveC()();
  }

  else
  {
    v11 = 0;
  }

  [v8 setCurator:v11];

  BagProvider.shared.unsafeMutableAddressor();

  v12 = BagProvider.bag.getter();

  if (v12)
  {
    v13 = [v12 stringForBagKey:ICURLBagKeyStoreFrontID];

    if (v13)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      v12 = String._bridgeToObjectiveC()();
    }

    else
    {
      v12 = 0;
    }
  }

  [v8 setStoreFrontIdentifier:v12];

  Playlist.catalogID.getter();
  if (v14)
  {
    v15 = String._bridgeToObjectiveC()();
  }

  else
  {
    v15 = 0;
  }

  [v8 setStoreIdentifier:v15];

  v16 = type metadata accessor for Playlist();
  (*(*(v16 - 8) + 16))(v7, v1, v16);
  (*(v5 + 104))(v7, enum case for GenericMusicItem.playlist(_:), v4);
  GenericMusicItem.artworkViewModel.getter(v3);
  v17 = type metadata accessor for ArtworkImage.ViewModel(0);
  if ((*(*(v17 - 8) + 48))(v3, 1, v17) == 1)
  {
    (*(v5 + 8))(v7, v4);
    sub_1000095E8(v3, &unk_10118A5E0, &unk_100EBCD90);
    v18 = 0;
  }

  else
  {
    sub_100568AEC();
    MusicItem.artworkPlaceholder.getter(v4, v25);
    v18 = sub_1005663C0(v25);
    v28 = v25[0];
    sub_1000095E8(&v28, &unk_1011951E0, &unk_100EBE380);
    v27 = v25[1];
    sub_1000095E8(&v27, &unk_1011951E0, &unk_100EBE380);
    v26 = v25[2];
    sub_1000095E8(&v26, &qword_101184460, &qword_100EDACF0);

    (*(v5 + 8))(v7, v4);
    sub_10026E7C0(v3);
  }

  [v8 setArtwork:v18];

  v19 = objc_allocWithZone(LPLinkMetadata);
  v20 = v8;
  v21 = [v19 init];
  [v21 setSpecialization:v20];

  Playlist.name.getter();
  v22 = String._bridgeToObjectiveC()();

  [v21 setTitle:v22];

  return v21;
}

id sub_100562828()
{
  sub_10010FC20(&unk_10118A5E0, &unk_100EBCD90);
  __chkstk_darwin();
  v1 = &v18[-((v0 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  __chkstk_darwin();
  v3 = &v18[-v2 - 8];
  sub_10056610C(&v18[-v2 - 8]);
  v4 = [objc_allocWithZone(LPiTunesUserProfileMetadata) init];
  SocialProfileDescriptor.name.getter();
  if (v5)
  {
    v6 = String._bridgeToObjectiveC()();
  }

  else
  {
    v6 = 0;
  }

  [v4 setName:v6];

  sub_1000089F8(v3, v1, &unk_10118A5E0, &unk_100EBCD90);
  v7 = type metadata accessor for ArtworkImage.ViewModel(0);
  if ((*(*(v7 - 8) + 48))(v1, 1, v7) == 1)
  {
    sub_1000095E8(v1, &unk_10118A5E0, &unk_100EBCD90);
    v8 = 0;
  }

  else
  {
    v9 = Artwork.Placeholder.person.unsafeMutableAddressor();
    v10 = *(v9 + 1);
    v19[0] = *v9;
    v19[1] = v10;
    v19[2] = *(v9 + 2);
    v20 = v19[0];
    v11 = *(&v10 + 1);
    v21 = v10;
    sub_1000089F8(&v20, v18, &unk_1011951E0, &unk_100EBE380);
    sub_1000089F8(&v20 + 8, v18, &unk_1011951E0, &unk_100EBE380);
    sub_1000089F8(&v21, v18, &qword_101184460, &qword_100EDACF0);
    v12 = v11;
    v8 = sub_1005663C0(v19);
    sub_1000095E8(&v20, &unk_1011951E0, &unk_100EBE380);
    sub_1000095E8(&v20 + 8, &unk_1011951E0, &unk_100EBE380);
    sub_1000095E8(&v21, &qword_101184460, &qword_100EDACF0);

    sub_10026E7C0(v1);
  }

  [v4 setArtwork:v8];

  v13 = objc_allocWithZone(LPLinkMetadata);
  v14 = v4;
  v15 = [v13 init];
  [v15 setSpecialization:v14];

  sub_1000095E8(v3, &unk_10118A5E0, &unk_100EBCD90);
  return v15;
}

id sub_100562B08()
{
  sub_10010FC20(&unk_101184060, &qword_100EBDF50);
  __chkstk_darwin();
  v1 = &v168 - v0;
  type metadata accessor for ArtworkImage.ViewModel(0);
  __chkstk_darwin();
  v182 = &v168 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for Playlist.Variant();
  v179 = *(v3 - 8);
  __chkstk_darwin();
  v5 = &v168 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&unk_101195210, &unk_100ED3590);
  __chkstk_darwin();
  v7 = &v168 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v185 = &v168 - v8;
  v9 = type metadata accessor for Artwork.CropStyle();
  v183 = *(v9 - 8);
  v184 = v9;
  __chkstk_darwin();
  v11 = &v168 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v186 = &v168 - v12;
  sub_10010FC20(&unk_101188920, &qword_100EBCC50);
  __chkstk_darwin();
  v14 = &v168 - v13;
  v15 = type metadata accessor for Artwork();
  v16 = *(v15 - 8);
  __chkstk_darwin();
  v181 = &v168 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v19 = &v168 - v18;
  v20 = ShareURLDescriptor.name.getter();
  if (!v21)
  {
    return 0;
  }

  v180 = v21;
  v178 = v20;
  ShareURLDescriptor.artwork.getter();
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {

    sub_1000095E8(v14, &unk_101188920, &qword_100EBCC50);
    return 0;
  }

  v176 = v1;
  (*(v16 + 32))(v19, v14, v15);
  v177 = v15;
  v23 = v186;
  static Artwork.CropStyle.boundedBox.getter();
  v24 = v185;
  ShareURLDescriptor.contentKind.getter();
  v25 = type metadata accessor for ContentKind();
  v26 = *(v25 - 8);
  if ((*(v26 + 48))(v24, 1, v25) == 1)
  {
    goto LABEL_6;
  }

  v175 = v19;
  v174 = v16;
  sub_1000089F8(v24, v7, &unk_101195210, &unk_100ED3590);
  v36 = (*(v26 + 88))(v7, v25);
  if (v36 == enum case for ContentKind.appleCurator(_:))
  {
    (*(v26 + 8))(v7, v25);
    v37 = v177;
    v38 = v175;
LABEL_9:
    sub_1000095E8(v24, &unk_101195210, &unk_100ED3590);
    v173 = [objc_allocWithZone(LPiTunesUserProfileMetadata) init];
    v39 = Artwork.Placeholder.person.unsafeMutableAddressor();
    v41 = *v39;
    v40 = v39[1];
    v43 = v39[2];
    v42 = v39[3];
    v170 = *(v39 + 2);
    v44 = v43;
    v45 = v42;
    v46 = v41;
    v47 = v40;
    v179 = v44;
    v48 = v45;
    v172 = v46;
    v49 = v47;
    v50 = v170;
    v171 = v49;
    v51 = &off_1010B2910;
LABEL_36:
    v73 = v186;
    goto LABEL_37;
  }

  v37 = v177;
  v38 = v175;
  if (v36 == enum case for ContentKind.album(_:))
  {
    v173 = [objc_allocWithZone(LPiTunesMediaAlbumMetadata) init];
    v52 = Artwork.Placeholder.music.unsafeMutableAddressor();
    v53 = *v52;
    v40 = v52[1];
    v43 = v52[2];
    v54 = v52[3];
    v170 = *(v52 + 2);
    v55 = v43;
    v56 = v54;
    v57 = v53;
    v58 = v40;
    v179 = v55;
    v48 = v56;
    v172 = v57;
    v171 = v58;
    v59 = v24;
    v41 = v53;
    sub_1000095E8(v59, &unk_101195210, &unk_100ED3590);
    v50 = v170;
    v51 = &off_1010B28D0;
    goto LABEL_36;
  }

  if (v36 == enum case for ContentKind.artist(_:))
  {
LABEL_13:
    sub_1000095E8(v24, &unk_101195210, &unk_100ED3590);
    v173 = [objc_allocWithZone(LPiTunesMediaArtistMetadata) init];
    v60 = Artwork.Placeholder.microphone.unsafeMutableAddressor();
    v41 = *v60;
    v40 = v60[1];
    v43 = v60[2];
    v61 = v60[3];
    v170 = *(v60 + 2);
    v62 = v43;
    v63 = v61;
    v64 = v41;
    v65 = v40;
    v179 = v62;
    v48 = v63;
    v172 = v64;
    v66 = v65;
    v50 = v170;
    v171 = v66;
    v51 = &off_1010B28F0;
    goto LABEL_36;
  }

  if (v36 == enum case for ContentKind.artistUploadedVideo(_:) || v36 == enum case for ContentKind.artistUploadedSong(_:))
  {
    goto LABEL_35;
  }

  if (v36 == enum case for ContentKind.creditArtist(_:))
  {
    goto LABEL_13;
  }

  if (v36 == enum case for ContentKind.curator(_:))
  {
    goto LABEL_9;
  }

  v19 = v175;
  v23 = v186;
  v16 = v174;
  if (v36 != enum case for ContentKind.editorialElement(_:) && v36 != enum case for ContentKind.editorialItem(_:))
  {
    if (v36 == enum case for ContentKind.movie(_:))
    {
      v173 = [objc_allocWithZone(LPiTunesMediaMovieMetadata) init];
      v67 = Artwork.Placeholder.tv.unsafeMutableAddressor();
      v41 = *v67;
      v40 = v67[1];
      v43 = v67[2];
      v68 = v67[3];
      v170 = *(v67 + 2);
      v69 = v43;
      v70 = v68;
      v71 = v41;
      v72 = v40;
      v179 = v69;
      v48 = v70;
      v172 = v71;
      v171 = v72;
      sub_1000095E8(v185, &unk_101195210, &unk_100ED3590);
      v50 = v170;
      v51 = &off_1010B2930;
LABEL_22:
      v73 = v186;
LABEL_23:
      v37 = v177;
      v38 = v175;
LABEL_37:
      v185 = v48;
      v191[0] = v41;
      v191[1] = v40;
      v191[2] = v43;
      v191[3] = v48;
      v192 = v50;
      v124 = v174;
      v125 = v181;
      (*(v174 + 16))(v181, v38, v37);
      v126 = v183;
      v127 = v184;
      v128 = v176;
      (*(v183 + 16))(v176, v73, v184);
      (*(v126 + 56))(v128, 0, 1, v127);
      v129 = v182;
      ArtworkImage.ViewModel.init(artwork:cropStyle:)(v125, v128, v182);
      v130 = v173;
      ObjectType = swift_getObjectType();
      v132 = v51[2];
      v133 = v130;
      v132(v178, v180, ObjectType, v51, v134);
      v135 = sub_1005663C0(v191);
      v136 = v185;

      v137 = v179;
      v138 = v171;

      v139 = v172;
      [v133 setArtwork:v135];

      v27 = [objc_allocWithZone(LPLinkMetadata) init];
      [v27 setSpecialization:v133];

      sub_10026E7C0(v129);
      (*(v126 + 8))(v186, v127);
      (*(v124 + 8))(v175, v177);
      return v27;
    }

    v37 = v177;
    v38 = v175;
    v74 = v185;
    if (v36 == enum case for ContentKind.musicVideo(_:))
    {
      v173 = [objc_allocWithZone(LPiTunesMediaMusicVideoMetadata) init];
      v75 = Artwork.Placeholder.musicVideo.unsafeMutableAddressor();
      v76 = *v75;
      v40 = v75[1];
      v43 = v75[2];
      v77 = v75[3];
      v170 = *(v75 + 2);
      v78 = v43;
      v79 = v77;
      v80 = v76;
      v81 = v40;
      v179 = v78;
      v48 = v79;
      v172 = v80;
      v171 = v81;
      v82 = v74;
      v41 = v76;
      sub_1000095E8(v82, &unk_101195210, &unk_100ED3590);
      v50 = v170;
      v51 = &off_1010B2950;
      goto LABEL_36;
    }

    if (v36 == enum case for ContentKind.playlist(_:))
    {
      v83 = [objc_allocWithZone(LPiTunesMediaPlaylistMetadata) init];
      v84 = v179;
      (*(v179 + 13))(v5, enum case for Playlist.Variant.regular(_:), v3);
      v173 = v83;
      v85 = static Artwork.Placeholder.playlist(withVariant:)(v5, &v187);
      v84[1](v5, v3, v85);
      v40 = *(&v187 + 1);
      v86 = v187;
      v43 = v188;
      v87 = v189;
      v179 = v188;
      v88 = v87;
      v172 = v86;
      v171 = v40;
      v89 = v74;
      v41 = v86;
      v48 = v88;
      sub_1000095E8(v89, &unk_101195210, &unk_100ED3590);
      v51 = &off_1010B2970;
      v50 = v190;
      goto LABEL_36;
    }

    if (v36 == enum case for ContentKind.radioStation(_:))
    {
      v173 = [objc_allocWithZone(LPiTunesMediaRadioMetadata) init];
      v90 = Artwork.Placeholder.radio.unsafeMutableAddressor();
      v40 = v90[1];
      v169 = *v90;
      v91 = v169;
      v43 = v90[2];
      v92 = v90[3];
      v170 = *(v90 + 2);
      v93 = v43;
      v94 = v92;
      v95 = v91;
      v171 = v40;
      v179 = v93;
      v96 = v94;
      v172 = v95;
      v171 = v171;
      static Artwork.CropStyle.specificRectangle.getter();
      v98 = v183;
      v97 = v184;
      v73 = v186;
      (*(v183 + 8))(v186, v184);
      v99 = v97;
      v48 = v96;
      (*(v98 + 32))(v73, v11, v99);
      v100 = v74;
      v41 = v169;
      sub_1000095E8(v100, &unk_101195210, &unk_100ED3590);
      v50 = v170;
      v51 = &off_1010B2990;
      goto LABEL_37;
    }

    if (v36 == enum case for ContentKind.recordLabel(_:))
    {
      v173 = [objc_allocWithZone(LPiTunesUserProfileMetadata) init];
      v101 = Artwork.Placeholder.microphone.unsafeMutableAddressor();
      v41 = *v101;
      v40 = v101[1];
      v43 = v101[2];
      v102 = v101[3];
      v170 = *(v101 + 2);
      v103 = v43;
      v104 = v102;
      v105 = v41;
      v106 = v40;
      v179 = v103;
      v48 = v104;
      v172 = v105;
      v171 = v106;
      sub_1000095E8(v185, &unk_101195210, &unk_100ED3590);
      v50 = v170;
      v51 = &off_1010B2910;
      goto LABEL_22;
    }

    if (v36 == enum case for ContentKind.socialProfile(_:))
    {
      v173 = [objc_allocWithZone(LPiTunesUserProfileMetadata) init];
      v107 = Artwork.Placeholder.person.unsafeMutableAddressor();
      v41 = *v107;
      v40 = v107[1];
      v43 = v107[2];
      v108 = v107[3];
      v170 = *(v107 + 2);
      v109 = v43;
      v110 = v108;
      v111 = v41;
      v112 = v40;
      v179 = v109;
      v113 = v110;
      v172 = v111;
      v171 = v112;
      static Artwork.CropStyle.specificRectangle.getter();
      v115 = v183;
      v114 = v184;
      v73 = v186;
      (*(v183 + 8))(v186, v184);
      v116 = v114;
      v48 = v113;
      (*(v115 + 32))(v73, v11, v116);
      sub_1000095E8(v185, &unk_101195210, &unk_100ED3590);
      v50 = v170;
      v51 = &off_1010B2910;
      goto LABEL_23;
    }

    v37 = v177;
    v38 = v175;
    v24 = v185;
    if (v36 != enum case for ContentKind.song(_:))
    {
      if (v36 == enum case for ContentKind.tvEpisode(_:))
      {
        v173 = [objc_allocWithZone(LPiTunesMediaTVEpisodeMetadata) init];
        v140 = Artwork.Placeholder.tv.unsafeMutableAddressor();
        v41 = *v140;
        v40 = v140[1];
        v43 = v140[2];
        v141 = v140[3];
        v170 = *(v140 + 2);
        v142 = v43;
        v143 = v141;
        v144 = v41;
        v145 = v40;
        v179 = v142;
        v48 = v143;
        v172 = v144;
        v171 = v145;
        sub_1000095E8(v185, &unk_101195210, &unk_100ED3590);
        v50 = v170;
        v51 = &off_1010B29D0;
      }

      else if (v36 == enum case for ContentKind.tvSeason(_:))
      {
        v173 = [objc_allocWithZone(LPiTunesMediaTVSeasonMetadata) init];
        v146 = Artwork.Placeholder.tv.unsafeMutableAddressor();
        v41 = *v146;
        v40 = v146[1];
        v43 = v146[2];
        v147 = v146[3];
        v170 = *(v146 + 2);
        v148 = v43;
        v149 = v147;
        v150 = v41;
        v151 = v40;
        v179 = v148;
        v48 = v149;
        v172 = v150;
        v171 = v151;
        sub_1000095E8(v185, &unk_101195210, &unk_100ED3590);
        v50 = v170;
        v51 = &off_1010B29F0;
      }

      else
      {
        if (v36 != enum case for ContentKind.tvShow(_:))
        {

          (*(v26 + 8))(v7, v25);
          v27 = [objc_allocWithZone(LPLinkMetadata) init];
          v158 = v174;
          v159 = v181;
          v160 = v175;
          v161 = v177;
          (*(v174 + 16))(v181, v175, v177);
          v163 = v183;
          v162 = v184;
          v164 = v176;
          v165 = v186;
          (*(v183 + 16))(v176, v186, v184);
          (*(v163 + 56))(v164, 0, 1, v162);
          v166 = v182;
          ArtworkImage.ViewModel.init(artwork:cropStyle:)(v159, v164, v182);
          v167 = sub_100567ED4();
          sub_10026E7C0(v166);
          [v27 setImageProvider:v167];

          (*(v163 + 8))(v165, v162);
          (*(v158 + 8))(v160, v161);
          sub_1000095E8(v185, &unk_101195210, &unk_100ED3590);
          return v27;
        }

        v173 = [objc_allocWithZone(LPAppleMusicTVShowMetadata) init];
        v152 = Artwork.Placeholder.tv.unsafeMutableAddressor();
        v41 = *v152;
        v40 = v152[1];
        v43 = v152[2];
        v153 = v152[3];
        v170 = *(v152 + 2);
        v154 = v43;
        v155 = v153;
        v156 = v41;
        v157 = v40;
        v179 = v154;
        v48 = v155;
        v172 = v156;
        v171 = v157;
        sub_1000095E8(v185, &unk_101195210, &unk_100ED3590);
        v50 = v170;
        v51 = &off_1010B2A10;
      }

      goto LABEL_22;
    }

LABEL_35:
    sub_1000095E8(v24, &unk_101195210, &unk_100ED3590);
    v173 = [objc_allocWithZone(LPiTunesMediaSongMetadata) init];
    v117 = Artwork.Placeholder.music.unsafeMutableAddressor();
    v41 = *v117;
    v40 = v117[1];
    v43 = v117[2];
    v118 = v117[3];
    v170 = *(v117 + 2);
    v119 = v43;
    v120 = v118;
    v121 = v41;
    v122 = v40;
    v179 = v119;
    v48 = v120;
    v172 = v121;
    v123 = v122;
    v50 = v170;
    v171 = v123;
    v51 = &off_1010B29B0;
    goto LABEL_36;
  }

LABEL_6:
  sub_1000095E8(v24, &unk_101195210, &unk_100ED3590);
  v27 = [objc_allocWithZone(LPLinkMetadata) init];
  v28 = String._bridgeToObjectiveC()();

  [v27 setTitle:v28];

  v29 = v181;
  v30 = v177;
  (*(v16 + 16))(v181, v19, v177);
  v32 = v183;
  v31 = v184;
  v33 = v176;
  (*(v183 + 16))(v176, v23, v184);
  (*(v32 + 56))(v33, 0, 1, v31);
  v34 = v182;
  ArtworkImage.ViewModel.init(artwork:cropStyle:)(v29, v33, v182);
  v35 = sub_100567ED4();
  sub_10026E7C0(v34);
  [v27 setImageProvider:v35];

  (*(v32 + 8))(v23, v31);
  (*(v16 + 8))(v19, v30);
  return v27;
}

double sub_10056401C(uint64_t a1, void *aBlock, uint64_t ObjCClassMetadata, uint64_t a4)
{
  v6 = *(a1 + 32);
  v7 = _Block_copy(aBlock);
  if (v7)
  {
    v8 = swift_allocObject();
    *(v8 + 16) = v7;
    v7 = sub_100446558;
    if (!ObjCClassMetadata)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = 0;
  if (ObjCClassMetadata)
  {
LABEL_3:
    ObjCClassMetadata = swift_getObjCClassMetadata();
  }

LABEL_4:
  if (a4)
  {
    a4 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v6(v7, v8, ObjCClassMetadata, a4);

  sub_100020438(v7, v8);

  return result;
}

id sub_100564124()
{
  v1 = v0;
  sub_10010FC20(&unk_10118A5E0, &unk_100EBCD90);
  __chkstk_darwin();
  v3 = &v25[-1] - v2;
  v4 = type metadata accessor for GenericMusicItem();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v25[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [objc_allocWithZone(LPiTunesMediaSongMetadata) init];
  Song.title.getter();
  v9 = String._bridgeToObjectiveC()();

  [v8 setName:v9];

  Song.artistName.getter();
  v10 = String._bridgeToObjectiveC()();

  [v8 setArtist:v10];

  Song.albumTitle.getter();
  if (v11)
  {
    v12 = String._bridgeToObjectiveC()();
  }

  else
  {
    v12 = 0;
  }

  [v8 setAlbum:v12];

  BagProvider.shared.unsafeMutableAddressor();

  v13 = BagProvider.bag.getter();

  if (v13)
  {
    v14 = [v13 stringForBagKey:ICURLBagKeyStoreFrontID];

    if (v14)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      v13 = String._bridgeToObjectiveC()();
    }

    else
    {
      v13 = 0;
    }
  }

  [v8 setStoreFrontIdentifier:v13];

  Song.catalogID.getter();
  if (v15)
  {
    v16 = String._bridgeToObjectiveC()();
  }

  else
  {
    v16 = 0;
  }

  [v8 setStoreIdentifier:v16];

  v17 = type metadata accessor for Song();
  (*(*(v17 - 8) + 16))(v7, v1, v17);
  (*(v5 + 104))(v7, enum case for GenericMusicItem.song(_:), v4);
  GenericMusicItem.artworkViewModel.getter(v3);
  v18 = type metadata accessor for ArtworkImage.ViewModel(0);
  if ((*(*(v18 - 8) + 48))(v3, 1, v18) == 1)
  {
    (*(v5 + 8))(v7, v4);
    sub_1000095E8(v3, &unk_10118A5E0, &unk_100EBCD90);
    v19 = 0;
  }

  else
  {
    sub_100568AEC();
    MusicItem.artworkPlaceholder.getter(v4, v25);
    v19 = sub_1005663C0(v25);
    v28 = v25[0];
    sub_1000095E8(&v28, &unk_1011951E0, &unk_100EBE380);
    v27 = v25[1];
    sub_1000095E8(&v27, &unk_1011951E0, &unk_100EBE380);
    v26 = v25[2];
    sub_1000095E8(&v26, &qword_101184460, &qword_100EDACF0);

    (*(v5 + 8))(v7, v4);
    sub_10026E7C0(v3);
  }

  [v8 setArtwork:v19];

  v20 = objc_allocWithZone(LPLinkMetadata);
  v21 = v8;
  v22 = [v20 init];
  [v22 setSpecialization:v21];

  return v22;
}

id sub_1005645CC()
{
  v1 = v0;
  sub_10010FC20(&unk_10118A5E0, &unk_100EBCD90);
  __chkstk_darwin();
  v3 = &v24[-1] - v2;
  v4 = type metadata accessor for GenericMusicItem();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v24[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [objc_allocWithZone(LPiTunesMediaAlbumMetadata) init];
  Album.title.getter();
  v9 = String._bridgeToObjectiveC()();

  [v8 setName:v9];

  Album.artistName.getter();
  v10 = String._bridgeToObjectiveC()();

  [v8 setArtist:v10];

  BagProvider.shared.unsafeMutableAddressor();

  v11 = BagProvider.bag.getter();

  if (v11)
  {
    v12 = [v11 stringForBagKey:ICURLBagKeyStoreFrontID];

    if (v12)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      v11 = String._bridgeToObjectiveC()();
    }

    else
    {
      v11 = 0;
    }
  }

  [v8 setStoreFrontIdentifier:v11];

  Album.catalogID.getter();
  if (v13)
  {
    v14 = String._bridgeToObjectiveC()();
  }

  else
  {
    v14 = 0;
  }

  [v8 setStoreIdentifier:v14];

  v15 = type metadata accessor for Album();
  (*(*(v15 - 8) + 16))(v7, v1, v15);
  (*(v5 + 104))(v7, enum case for GenericMusicItem.album(_:), v4);
  GenericMusicItem.artworkViewModel.getter(v3);
  v16 = type metadata accessor for ArtworkImage.ViewModel(0);
  if ((*(*(v16 - 8) + 48))(v3, 1, v16) == 1)
  {
    (*(v5 + 8))(v7, v4);
    sub_1000095E8(v3, &unk_10118A5E0, &unk_100EBCD90);
    v17 = 0;
  }

  else
  {
    sub_100568AEC();
    MusicItem.artworkPlaceholder.getter(v4, v24);
    v17 = sub_1005663C0(v24);
    v27 = v24[0];
    sub_1000095E8(&v27, &unk_1011951E0, &unk_100EBE380);
    v26 = v24[1];
    sub_1000095E8(&v26, &unk_1011951E0, &unk_100EBE380);
    v25 = v24[2];
    sub_1000095E8(&v25, &qword_101184460, &qword_100EDACF0);

    (*(v5 + 8))(v7, v4);
    sub_10026E7C0(v3);
  }

  [v8 setArtwork:v17];

  v18 = objc_allocWithZone(LPLinkMetadata);
  v19 = v8;
  v20 = [v18 init];
  [v20 setSpecialization:v19];

  Album.title.getter();
  v21 = String._bridgeToObjectiveC()();

  [v20 setTitle:v21];

  return v20;
}

id sub_100564A6C()
{
  sub_10010FC20(&unk_10118A5E0, &unk_100EBCD90);
  __chkstk_darwin();
  v2 = &v21[-1] - v1;
  v3 = type metadata accessor for GenericMusicItem();
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v21[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [objc_allocWithZone(LPiTunesMediaArtistMetadata) init];
  Artist.name.getter();
  v8 = String._bridgeToObjectiveC()();

  [v7 setName:v8];

  Artist.catalogID.getter();
  if (v9)
  {
    v10 = String._bridgeToObjectiveC()();
  }

  else
  {
    v10 = 0;
  }

  [v7 setStoreIdentifier:v10];

  v11 = Artist.genreNames.getter();
  if (v11)
  {
    if (*(v11 + 16))
    {

      v12 = String._bridgeToObjectiveC()();

      goto LABEL_9;
    }
  }

  v12 = 0;
LABEL_9:
  [v7 setGenre:v12];

  v13 = type metadata accessor for Artist();
  (*(*(v13 - 8) + 16))(v6, v0, v13);
  (*(v4 + 104))(v6, enum case for GenericMusicItem.artist(_:), v3);
  GenericMusicItem.artworkViewModel.getter(v2);
  v14 = type metadata accessor for ArtworkImage.ViewModel(0);
  if ((*(*(v14 - 8) + 48))(v2, 1, v14) == 1)
  {
    (*(v4 + 8))(v6, v3);
    sub_1000095E8(v2, &unk_10118A5E0, &unk_100EBCD90);
    v15 = 0;
  }

  else
  {
    sub_100568AEC();
    MusicItem.artworkPlaceholder.getter(v3, v21);
    v15 = sub_1005663C0(v21);
    v24 = v21[0];
    sub_1000095E8(&v24, &unk_1011951E0, &unk_100EBE380);
    v23 = v21[1];
    sub_1000095E8(&v23, &unk_1011951E0, &unk_100EBE380);
    v22 = v21[2];
    sub_1000095E8(&v22, &qword_101184460, &qword_100EDACF0);

    (*(v4 + 8))(v6, v3);
    sub_10026E7C0(v2);
  }

  [v7 setArtwork:v15];

  v16 = objc_allocWithZone(LPLinkMetadata);
  v17 = v7;
  v18 = [v16 init];
  [v18 setSpecialization:v17];

  return v18;
}

id sub_100564EA4(void (*a1)(void), uint64_t (*a2)(void), unsigned int *a3)
{
  sub_10010FC20(&unk_10118A5E0, &unk_100EBCD90);
  __chkstk_darwin();
  v8 = &v23[-1] - v7;
  v9 = type metadata accessor for GenericMusicItem();
  v10 = *(v9 - 8);
  __chkstk_darwin();
  v12 = &v23[-1] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = [objc_allocWithZone(LPiTunesUserProfileMetadata) init];
  a1();
  v14 = String._bridgeToObjectiveC()();

  [v13 setName:v14];

  v15 = a2(0);
  (*(*(v15 - 8) + 16))(v12, v3, v15);
  (*(v10 + 104))(v12, *a3, v9);
  GenericMusicItem.artworkViewModel.getter(v8);
  v16 = type metadata accessor for ArtworkImage.ViewModel(0);
  if ((*(*(v16 - 8) + 48))(v8, 1, v16) == 1)
  {
    (*(v10 + 8))(v12, v9);
    sub_1000095E8(v8, &unk_10118A5E0, &unk_100EBCD90);
    v17 = 0;
  }

  else
  {
    sub_100568AEC();
    MusicItem.artworkPlaceholder.getter(v9, v23);
    v17 = sub_1005663C0(v23);
    v26 = v23[0];
    sub_1000095E8(&v26, &unk_1011951E0, &unk_100EBE380);
    v25 = v23[1];
    sub_1000095E8(&v25, &unk_1011951E0, &unk_100EBE380);
    v24 = v23[2];
    sub_1000095E8(&v24, &qword_101184460, &qword_100EDACF0);

    (*(v10 + 8))(v12, v9);
    sub_10026E7C0(v8);
  }

  [v13 setArtwork:v17];

  v18 = objc_allocWithZone(LPLinkMetadata);
  v19 = v13;
  v20 = [v18 init];
  [v20 setSpecialization:v19];

  return v20;
}

id sub_100565290()
{
  sub_10010FC20(&unk_10118A5E0, &unk_100EBCD90);
  __chkstk_darwin();
  v2 = &v20[-1] - v1;
  v3 = type metadata accessor for GenericMusicItem();
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v20[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [objc_allocWithZone(LPiTunesMediaMusicVideoMetadata) init];
  MusicVideo.title.getter();
  v8 = String._bridgeToObjectiveC()();

  [v7 setName:v8];

  MusicVideo.artistName.getter();
  v9 = String._bridgeToObjectiveC()();

  [v7 setArtist:v9];

  MusicVideo.catalogID.getter();
  if (v10)
  {
    v11 = String._bridgeToObjectiveC()();
  }

  else
  {
    v11 = 0;
  }

  [v7 setStoreIdentifier:v11];

  v12 = type metadata accessor for MusicVideo();
  (*(*(v12 - 8) + 16))(v6, v0, v12);
  (*(v4 + 104))(v6, enum case for GenericMusicItem.musicVideo(_:), v3);
  GenericMusicItem.artworkViewModel.getter(v2);
  v13 = type metadata accessor for ArtworkImage.ViewModel(0);
  if ((*(*(v13 - 8) + 48))(v2, 1, v13) == 1)
  {
    (*(v4 + 8))(v6, v3);
    sub_1000095E8(v2, &unk_10118A5E0, &unk_100EBCD90);
    v14 = 0;
  }

  else
  {
    sub_100568AEC();
    MusicItem.artworkPlaceholder.getter(v3, v20);
    v14 = sub_1005663C0(v20);
    v23 = v20[0];
    sub_1000095E8(&v23, &unk_1011951E0, &unk_100EBE380);
    v22 = v20[1];
    sub_1000095E8(&v22, &unk_1011951E0, &unk_100EBE380);
    v21 = v20[2];
    sub_1000095E8(&v21, &qword_101184460, &qword_100EDACF0);

    (*(v4 + 8))(v6, v3);
    sub_10026E7C0(v2);
  }

  [v7 setArtwork:v14];

  v15 = objc_allocWithZone(LPLinkMetadata);
  v16 = v7;
  v17 = [v15 init];
  [v17 setSpecialization:v16];

  return v17;
}

id sub_10056564C()
{
  sub_10010FC20(&unk_10118A5E0, &unk_100EBCD90);
  __chkstk_darwin();
  v2 = &v19[-1] - v1;
  v3 = type metadata accessor for GenericMusicItem();
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v19[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [objc_allocWithZone(LPiTunesMediaMovieMetadata) init];
  MusicMovie.title.getter();
  v8 = String._bridgeToObjectiveC()();

  [v7 setName:v8];

  MusicMovie.catalogID.getter();
  if (v9)
  {
    v10 = String._bridgeToObjectiveC()();
  }

  else
  {
    v10 = 0;
  }

  [v7 setStoreIdentifier:v10];

  v11 = type metadata accessor for MusicMovie();
  (*(*(v11 - 8) + 16))(v6, v0, v11);
  (*(v4 + 104))(v6, enum case for GenericMusicItem.musicMovie(_:), v3);
  GenericMusicItem.artworkViewModel.getter(v2);
  v12 = type metadata accessor for ArtworkImage.ViewModel(0);
  if ((*(*(v12 - 8) + 48))(v2, 1, v12) == 1)
  {
    (*(v4 + 8))(v6, v3);
    sub_1000095E8(v2, &unk_10118A5E0, &unk_100EBCD90);
    v13 = 0;
  }

  else
  {
    sub_100568AEC();
    MusicItem.artworkPlaceholder.getter(v3, v19);
    v13 = sub_1005663C0(v19);
    v22 = v19[0];
    sub_1000095E8(&v22, &unk_1011951E0, &unk_100EBE380);
    v21 = v19[1];
    sub_1000095E8(&v21, &unk_1011951E0, &unk_100EBE380);
    v20 = v19[2];
    sub_1000095E8(&v20, &qword_101184460, &qword_100EDACF0);

    (*(v4 + 8))(v6, v3);
    sub_10026E7C0(v2);
  }

  [v7 setArtwork:v13];

  v14 = objc_allocWithZone(LPLinkMetadata);
  v15 = v7;
  v16 = [v14 init];
  [v16 setSpecialization:v15];

  return v16;
}

id sub_1005659DC()
{
  sub_10010FC20(&unk_10118A5E0, &unk_100EBCD90);
  __chkstk_darwin();
  v2 = &v19[-1] - v1;
  v3 = type metadata accessor for GenericMusicItem();
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v19[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [objc_allocWithZone(LPiTunesMediaRadioMetadata) init];
  RadioShow.name.getter();
  v8 = String._bridgeToObjectiveC()();

  [v7 setName:v8];

  RadioShow.hostName.getter();
  if (v9)
  {
    v10 = String._bridgeToObjectiveC()();
  }

  else
  {
    v10 = 0;
  }

  [v7 setCurator:v10];

  v11 = type metadata accessor for RadioShow();
  (*(*(v11 - 8) + 16))(v6, v0, v11);
  (*(v4 + 104))(v6, enum case for GenericMusicItem.radioShow(_:), v3);
  GenericMusicItem.artworkViewModel.getter(v2);
  v12 = type metadata accessor for ArtworkImage.ViewModel(0);
  if ((*(*(v12 - 8) + 48))(v2, 1, v12) == 1)
  {
    (*(v4 + 8))(v6, v3);
    sub_1000095E8(v2, &unk_10118A5E0, &unk_100EBCD90);
    v13 = 0;
  }

  else
  {
    sub_100568AEC();
    MusicItem.artworkPlaceholder.getter(v3, v19);
    v13 = sub_1005663C0(v19);
    v22 = v19[0];
    sub_1000095E8(&v22, &unk_1011951E0, &unk_100EBE380);
    v21 = v19[1];
    sub_1000095E8(&v21, &unk_1011951E0, &unk_100EBE380);
    v20 = v19[2];
    sub_1000095E8(&v20, &qword_101184460, &qword_100EDACF0);

    (*(v4 + 8))(v6, v3);
    sub_10026E7C0(v2);
  }

  [v7 setArtwork:v13];

  v14 = objc_allocWithZone(LPLinkMetadata);
  v15 = v7;
  v16 = [v14 init];
  [v16 setSpecialization:v15];

  return v16;
}

id sub_100565DB0()
{
  sub_10010FC20(&unk_10118A5E0, &unk_100EBCD90);
  __chkstk_darwin();
  v2 = &v18[-1] - v1;
  v3 = type metadata accessor for GenericMusicItem();
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v18[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [objc_allocWithZone(LPiTunesUserProfileMetadata) init];
  SocialProfile.name.getter();
  if (v8)
  {
    v9 = String._bridgeToObjectiveC()();
  }

  else
  {
    v9 = 0;
  }

  [v7 setName:v9];

  v10 = type metadata accessor for SocialProfile();
  (*(*(v10 - 8) + 16))(v6, v0, v10);
  (*(v4 + 104))(v6, enum case for GenericMusicItem.socialProfile(_:), v3);
  GenericMusicItem.artworkViewModel.getter(v2);
  v11 = type metadata accessor for ArtworkImage.ViewModel(0);
  if ((*(*(v11 - 8) + 48))(v2, 1, v11) == 1)
  {
    (*(v4 + 8))(v6, v3);
    sub_1000095E8(v2, &unk_10118A5E0, &unk_100EBCD90);
    v12 = 0;
  }

  else
  {
    sub_100568AEC();
    MusicItem.artworkPlaceholder.getter(v3, v18);
    v12 = sub_1005663C0(v18);
    v21 = v18[0];
    sub_1000095E8(&v21, &unk_1011951E0, &unk_100EBE380);
    v20 = v18[1];
    sub_1000095E8(&v20, &unk_1011951E0, &unk_100EBE380);
    v19 = v18[2];
    sub_1000095E8(&v19, &qword_101184460, &qword_100EDACF0);

    (*(v4 + 8))(v6, v3);
    sub_10026E7C0(v2);
  }

  [v7 setArtwork:v12];

  v13 = objc_allocWithZone(LPLinkMetadata);
  v14 = v7;
  v15 = [v13 init];
  [v15 setSpecialization:v14];

  return v15;
}

uint64_t sub_10056610C@<X0>(uint64_t a1@<X8>)
{
  sub_10010FC20(&unk_101184060, &qword_100EBDF50);
  __chkstk_darwin();
  v3 = &v16 - v2;
  sub_10010FC20(&unk_101188920, &qword_100EBCC50);
  __chkstk_darwin();
  v5 = &v16 - v4;
  v6 = type metadata accessor for Artwork();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v11 = &v16 - v10;
  SocialProfileDescriptor.artwork.getter();
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_1000095E8(v5, &unk_101188920, &qword_100EBCC50);
    v12 = 1;
  }

  else
  {
    (*(v7 + 32))(v11, v5, v6);
    (*(v7 + 16))(v9, v11, v6);
    static Artwork.CropStyle.specificRectangle.getter();
    (*(v7 + 8))(v11, v6);
    v13 = type metadata accessor for Artwork.CropStyle();
    (*(*(v13 - 8) + 56))(v3, 0, 1, v13);
    ArtworkImage.ViewModel.init(artwork:cropStyle:)(v9, v3, a1);
    v12 = 0;
  }

  v14 = type metadata accessor for ArtworkImage.ViewModel(0);
  return (*(*(v14 - 8) + 56))(a1, v12, 1, v14);
}

id sub_1005663C0(uint64_t a1)
{
  v1 = sub_100567ED4();
  sub_100501DD4();
  v2 = [swift_getObjCClassFromMetadata() preferredFormat];
  Artwork.Placeholder.image(with:graphicsFormat:)(v2, 300.0, 300.0);
  v4 = v3;

  if (v4)
  {
    v5 = [objc_allocWithZone(LPImage) initWithPlatformImage:v4];
  }

  else
  {
    v5 = 0;
  }

  v6 = [objc_allocWithZone(LPImage) initWithItemProvider:v1 properties:0 placeholderImage:v5];

  return v6;
}

id sub_100566498()
{
  v1 = v0;
  sub_10010FC20(&unk_10118A5E0, &unk_100EBCD90);
  __chkstk_darwin();
  v3 = &v23[-1] - v2;
  v4 = type metadata accessor for GenericMusicItem();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v23[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [objc_allocWithZone(LPiTunesMediaRadioMetadata) init];
  Station.name.getter();
  v9 = String._bridgeToObjectiveC()();

  [v8 setName:v9];

  BagProvider.shared.unsafeMutableAddressor();

  v10 = BagProvider.bag.getter();

  if (v10)
  {
    v11 = [v10 stringForBagKey:ICURLBagKeyStoreFrontID];

    if (v11)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      v10 = String._bridgeToObjectiveC()();
    }

    else
    {
      v10 = 0;
    }
  }

  [v8 setStoreFrontIdentifier:v10];

  Station.catalogID.getter(v12);
  if (v13)
  {
    v14 = String._bridgeToObjectiveC()();
  }

  else
  {
    v14 = 0;
  }

  [v8 setStoreIdentifier:v14];

  v15 = type metadata accessor for Station();
  (*(*(v15 - 8) + 16))(v7, v1, v15);
  (*(v5 + 104))(v7, enum case for GenericMusicItem.station(_:), v4);
  GenericMusicItem.artworkViewModel.getter(v3);
  v16 = type metadata accessor for ArtworkImage.ViewModel(0);
  if ((*(*(v16 - 8) + 48))(v3, 1, v16) == 1)
  {
    (*(v5 + 8))(v7, v4);
    sub_1000095E8(v3, &unk_10118A5E0, &unk_100EBCD90);
    v17 = 0;
  }

  else
  {
    sub_100568AEC();
    MusicItem.artworkPlaceholder.getter(v4, v23);
    v17 = sub_1005663C0(v23);
    v26 = v23[0];
    sub_1000095E8(&v26, &unk_1011951E0, &unk_100EBE380);
    v25 = v23[1];
    sub_1000095E8(&v25, &unk_1011951E0, &unk_100EBE380);
    v24 = v23[2];
    sub_1000095E8(&v24, &qword_101184460, &qword_100EDACF0);

    (*(v5 + 8))(v7, v4);
    sub_10026E7C0(v3);
  }

  [v8 setArtwork:v17];

  v18 = objc_allocWithZone(LPLinkMetadata);
  v19 = v8;
  v20 = [v18 init];
  [v20 setSpecialization:v19];

  return v20;
}

id sub_1005668D4()
{
  v1 = v0;
  sub_10010FC20(&unk_10118A5E0, &unk_100EBCD90);
  __chkstk_darwin();
  v37 = &v38[-v2 - 8];
  v3 = type metadata accessor for MusicVideo();
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v38[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v7 = type metadata accessor for Song();
  v8 = *(v7 - 8);
  __chkstk_darwin();
  v10 = &v38[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v11 = type metadata accessor for Track();
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin();
  v15 = &v38[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  (*(v12 + 16))(v15, v1, v11, v13);
  v16 = (*(v12 + 88))(v15, v11);
  if (v16 == enum case for Track.song(_:))
  {
    (*(v12 + 96))(v15, v11);
    (*(v8 + 32))(v10, v15, v7);
    v17 = sub_100564124();
    (*(v8 + 8))(v10, v7);
  }

  else if (v16 == enum case for Track.musicVideo(_:))
  {
    (*(v12 + 96))(v15, v11);
    (*(v4 + 32))(v6, v15, v3);
    v17 = sub_100565290();
    (*(v4 + 8))(v6, v3);
  }

  else
  {
    v18 = [objc_allocWithZone(LPiTunesMediaSongMetadata) init];
    Track.title.getter();
    v19 = String._bridgeToObjectiveC()();

    [v18 setName:v19];

    Track.artistName.getter();
    v20 = String._bridgeToObjectiveC()();

    [v18 setArtist:v20];

    Track.albumTitle.getter();
    if (v21)
    {
      v22 = String._bridgeToObjectiveC()();
    }

    else
    {
      v22 = 0;
    }

    [v18 setAlbum:v22];

    BagProvider.shared.unsafeMutableAddressor();

    v23 = BagProvider.bag.getter();

    if (v23)
    {
      v24 = [v23 stringForBagKey:ICURLBagKeyStoreFrontID];

      if (v24)
      {
        static String._unconditionallyBridgeFromObjectiveC(_:)();

        v23 = String._bridgeToObjectiveC()();
      }

      else
      {
        v23 = 0;
      }
    }

    [v18 setStoreFrontIdentifier:v23];

    Track.catalogID.getter();
    if (v25)
    {
      v26 = String._bridgeToObjectiveC()();
    }

    else
    {
      v26 = 0;
    }

    [v18 setStoreIdentifier:v26];

    v27 = v37;
    Track.artworkViewModel.getter(v37);
    v28 = type metadata accessor for ArtworkImage.ViewModel(0);
    if ((*(*(v28 - 8) + 48))(v27, 1, v28) == 1)
    {
      sub_1000095E8(v27, &unk_10118A5E0, &unk_100EBCD90);
      v29 = 0;
    }

    else
    {
      v30 = Artwork.Placeholder.music.unsafeMutableAddressor();
      v31 = *(v30 + 1);
      v39[0] = *v30;
      v39[1] = v31;
      v39[2] = *(v30 + 2);
      v40 = v39[0];
      v32 = *(&v31 + 1);
      v41 = v31;
      sub_1000089F8(&v40, v38, &unk_1011951E0, &unk_100EBE380);
      sub_1000089F8(&v40 + 8, v38, &unk_1011951E0, &unk_100EBE380);
      sub_1000089F8(&v41, v38, &qword_101184460, &qword_100EDACF0);
      v33 = v32;
      v29 = sub_1005663C0(v39);
      sub_1000095E8(&v40, &unk_1011951E0, &unk_100EBE380);
      sub_1000095E8(&v40 + 8, &unk_1011951E0, &unk_100EBE380);
      sub_1000095E8(&v41, &qword_101184460, &qword_100EDACF0);

      sub_10026E7C0(v27);
    }

    [v18 setArtwork:v29];

    v34 = objc_allocWithZone(LPLinkMetadata);
    v35 = v18;
    v17 = [v34 init];
    [v17 setSpecialization:v35];

    (*(v12 + 8))(v15, v11);
  }

  return v17;
}

id sub_100566F60()
{
  sub_10010FC20(&unk_10118A5E0, &unk_100EBCD90);
  __chkstk_darwin();
  v2 = &v20[-1] - v1;
  v3 = type metadata accessor for GenericMusicItem();
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v20[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [objc_allocWithZone(LPiTunesMediaTVEpisodeMetadata) init];
  TVEpisode.title.getter();
  v8 = String._bridgeToObjectiveC()();

  [v7 setEpisodeName:v8];

  TVEpisode.showName.getter();
  v9 = String._bridgeToObjectiveC()();

  [v7 setSeasonName:v9];

  TVEpisode.catalogID.getter();
  if (v10)
  {
    v11 = String._bridgeToObjectiveC()();
  }

  else
  {
    v11 = 0;
  }

  [v7 setStoreIdentifier:v11];

  v12 = type metadata accessor for TVEpisode();
  (*(*(v12 - 8) + 16))(v6, v0, v12);
  (*(v4 + 104))(v6, enum case for GenericMusicItem.tvEpisode(_:), v3);
  GenericMusicItem.artworkViewModel.getter(v2);
  v13 = type metadata accessor for ArtworkImage.ViewModel(0);
  if ((*(*(v13 - 8) + 48))(v2, 1, v13) == 1)
  {
    (*(v4 + 8))(v6, v3);
    sub_1000095E8(v2, &unk_10118A5E0, &unk_100EBCD90);
    v14 = 0;
  }

  else
  {
    sub_100568AEC();
    MusicItem.artworkPlaceholder.getter(v3, v20);
    v14 = sub_1005663C0(v20);
    v23 = v20[0];
    sub_1000095E8(&v23, &unk_1011951E0, &unk_100EBE380);
    v22 = v20[1];
    sub_1000095E8(&v22, &unk_1011951E0, &unk_100EBE380);
    v21 = v20[2];
    sub_1000095E8(&v21, &qword_101184460, &qword_100EDACF0);

    (*(v4 + 8))(v6, v3);
    sub_10026E7C0(v2);
  }

  [v7 setArtwork:v14];

  v15 = objc_allocWithZone(LPLinkMetadata);
  v16 = v7;
  v17 = [v15 init];
  [v17 setSpecialization:v16];

  return v17;
}

id sub_10056731C()
{
  sub_10010FC20(&unk_10118A5E0, &unk_100EBCD90);
  __chkstk_darwin();
  v2 = &v19[-1] - v1;
  v3 = type metadata accessor for GenericMusicItem();
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v19[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [objc_allocWithZone(LPiTunesMediaTVSeasonMetadata) init];
  TVSeason.showName.getter();
  v8 = String._bridgeToObjectiveC()();

  [v7 setName:v8];

  TVSeason.catalogID.getter();
  if (v9)
  {
    v10 = String._bridgeToObjectiveC()();
  }

  else
  {
    v10 = 0;
  }

  [v7 setStoreIdentifier:v10];

  v11 = type metadata accessor for TVSeason();
  (*(*(v11 - 8) + 16))(v6, v0, v11);
  (*(v4 + 104))(v6, enum case for GenericMusicItem.tvSeason(_:), v3);
  GenericMusicItem.artworkViewModel.getter(v2);
  v12 = type metadata accessor for ArtworkImage.ViewModel(0);
  if ((*(*(v12 - 8) + 48))(v2, 1, v12) == 1)
  {
    (*(v4 + 8))(v6, v3);
    sub_1000095E8(v2, &unk_10118A5E0, &unk_100EBCD90);
    v13 = 0;
  }

  else
  {
    sub_100568AEC();
    MusicItem.artworkPlaceholder.getter(v3, v19);
    v13 = sub_1005663C0(v19);
    v22 = v19[0];
    sub_1000095E8(&v22, &unk_1011951E0, &unk_100EBE380);
    v21 = v19[1];
    sub_1000095E8(&v21, &unk_1011951E0, &unk_100EBE380);
    v20 = v19[2];
    sub_1000095E8(&v20, &qword_101184460, &qword_100EDACF0);

    (*(v4 + 8))(v6, v3);
    sub_10026E7C0(v2);
  }

  [v7 setArtwork:v13];

  v14 = objc_allocWithZone(LPLinkMetadata);
  v15 = v7;
  v16 = [v14 init];
  [v16 setSpecialization:v15];

  return v16;
}

id sub_1005676A8()
{
  sub_10010FC20(&unk_10118A5E0, &unk_100EBCD90);
  __chkstk_darwin();
  v2 = &v19[-1] - v1;
  v3 = type metadata accessor for GenericMusicItem();
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v19[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [objc_allocWithZone(LPAppleMusicTVShowMetadata) init];
  TVShow.name.getter();
  v8 = String._bridgeToObjectiveC()();

  [v7 setName:v8];

  TVShow.catalogID.getter();
  if (v9)
  {
    v10 = String._bridgeToObjectiveC()();
  }

  else
  {
    v10 = 0;
  }

  [v7 setStoreIdentifier:v10];

  v11 = type metadata accessor for TVShow();
  (*(*(v11 - 8) + 16))(v6, v0, v11);
  (*(v4 + 104))(v6, enum case for GenericMusicItem.tvShow(_:), v3);
  GenericMusicItem.artworkViewModel.getter(v2);
  v12 = type metadata accessor for ArtworkImage.ViewModel(0);
  if ((*(*(v12 - 8) + 48))(v2, 1, v12) == 1)
  {
    (*(v4 + 8))(v6, v3);
    sub_1000095E8(v2, &unk_10118A5E0, &unk_100EBCD90);
    v13 = 0;
  }

  else
  {
    sub_100568AEC();
    MusicItem.artworkPlaceholder.getter(v3, v19);
    v13 = sub_1005663C0(v19);
    v22 = v19[0];
    sub_1000095E8(&v22, &unk_1011951E0, &unk_100EBE380);
    v21 = v19[1];
    sub_1000095E8(&v21, &unk_1011951E0, &unk_100EBE380);
    v20 = v19[2];
    sub_1000095E8(&v20, &qword_101184460, &qword_100EDACF0);

    (*(v4 + 8))(v6, v3);
    sub_10026E7C0(v2);
  }

  [v7 setArtwork:v13];

  v14 = objc_allocWithZone(LPLinkMetadata);
  v15 = v7;
  v16 = [v14 init];
  [v16 setSpecialization:v15];

  return v16;
}

id sub_100567A90(void (*a1)(void), void (*a2)(void), uint64_t (*a3)(void), unsigned int *a4)
{
  sub_10010FC20(&unk_10118A5E0, &unk_100EBCD90);
  __chkstk_darwin();
  v10 = &v28[-1] - v9;
  v11 = type metadata accessor for GenericMusicItem();
  v12 = *(v11 - 8);
  __chkstk_darwin();
  v14 = &v28[-1] - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = [objc_allocWithZone(LPiTunesMediaSongMetadata) init];
  v27 = v4;
  a1();
  if (v16)
  {
    v17 = String._bridgeToObjectiveC()();
  }

  else
  {
    v17 = 0;
  }

  [v15 setName:v17];

  v18 = v27;
  a2();
  v19 = String._bridgeToObjectiveC()();

  [v15 setArtist:v19];

  v20 = a3(0);
  (*(*(v20 - 8) + 16))(v14, v18, v20);
  (*(v12 + 104))(v14, *a4, v11);
  GenericMusicItem.artworkViewModel.getter(v10);
  v21 = type metadata accessor for ArtworkImage.ViewModel(0);
  if ((*(*(v21 - 8) + 48))(v10, 1, v21) == 1)
  {
    (*(v12 + 8))(v14, v11);
    sub_1000095E8(v10, &unk_10118A5E0, &unk_100EBCD90);
    v22 = 0;
  }

  else
  {
    sub_100568AEC();
    MusicItem.artworkPlaceholder.getter(v11, v28);
    v22 = sub_1005663C0(v28);
    v31 = v28[0];
    sub_1000095E8(&v31, &unk_1011951E0, &unk_100EBE380);
    v30 = v28[1];
    sub_1000095E8(&v30, &unk_1011951E0, &unk_100EBE380);
    v29 = v28[2];
    sub_1000095E8(&v29, &qword_101184460, &qword_100EDACF0);

    (*(v12 + 8))(v14, v11);
    sub_10026E7C0(v10);
  }

  [v15 setArtwork:v22];

  v23 = objc_allocWithZone(LPLinkMetadata);
  v24 = v15;
  v25 = [v23 init];
  [v25 setSpecialization:v24];

  return v25;
}

id sub_100567ED4()
{
  v1 = v0;
  v2 = *(type metadata accessor for ArtworkImage.ViewModel(0) - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin();
  v4 = type metadata accessor for UTType();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [objc_allocWithZone(NSItemProvider) init];
  static UTType.png.getter();
  UTType.identifier.getter();
  (*(v5 + 8))(v7, v4);
  v9 = String._bridgeToObjectiveC()();

  sub_100568B44(v1, aBlock - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v11 = swift_allocObject();
  sub_100568BA8(aBlock - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v11 + v10);
  aBlock[4] = sub_100568C0C;
  aBlock[5] = v11;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10056401C;
  aBlock[3] = &unk_1010B2A58;
  v12 = _Block_copy(aBlock);

  [v8 registerItemForTypeIdentifier:v9 loadHandler:v12];
  _Block_release(v12);

  return v8;
}

double sub_100568134(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = *(type metadata accessor for ArtworkImage.ViewModel(0) - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin();
  sub_10010FC20(&unk_101181520, &qword_100EBCC60);
  *&result = __chkstk_darwin().n128_u64[0];
  v12 = &v17 - v11;
  if (a1)
  {
    v13 = type metadata accessor for TaskPriority();
    (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
    sub_100568B44(a5, &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
    v14 = (*(v8 + 80) + 32) & ~*(v8 + 80);
    v15 = swift_allocObject();
    *(v15 + 16) = 0;
    *(v15 + 24) = 0;
    sub_100568BA8(&v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v15 + v14);
    v16 = (v15 + ((v9 + v14 + 7) & 0xFFFFFFFFFFFFFFF8));
    *v16 = a1;
    v16[1] = a2;

    sub_1001F4CB8(0, 0, v12, &unk_100ED3588, v15);
  }

  return result;
}

uint64_t sub_100568300(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[4] = a5;
  v6[5] = a6;
  v6[3] = a4;
  v6[6] = type metadata accessor for ArtworkImage.ViewModel(0);
  v6[7] = swift_task_alloc();
  v6[8] = swift_task_alloc();
  v7 = type metadata accessor for Logger();
  v6[9] = v7;
  v6[10] = *(v7 - 8);
  v6[11] = swift_task_alloc();
  sub_10010FC20(&unk_101195200, &qword_100EBFA50);
  v6[12] = swift_task_alloc();

  return _swift_task_switch(sub_100568438, 0, 0);
}

uint64_t sub_100568438()
{
  v1 = v0[12];
  v2 = v0[6];
  v3 = v0[3];
  v4 = [objc_opt_self() currentTraitCollection];
  [v4 displayScale];
  v6 = v5;

  v7 = *(v2 + 20);
  v8 = type metadata accessor for Artwork.ImageFormat();
  (*(*(v8 - 8) + 56))(v1, 1, 1, v8);
  v9 = swift_task_alloc();
  v0[13] = v9;
  *v9 = v0;
  v9[1] = sub_100568594;
  v11 = v0[12];
  v12.n128_u64[0] = 0x4072C00000000000;
  v13.n128_u64[0] = 0x4072C00000000000;

  v10.n128_f64[0] = 1.0 / v6;
  return Artwork.image(width:height:pixelLength:cropStyle:format:cacheOwner:)(v3 + v7, v11, 0, 0, v12, v13, v10);
}

uint64_t sub_100568594(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 96);
  *(v3 + 112) = a1;
  *(v3 + 120) = v1;

  sub_1000095E8(v4, &unk_101195200, &qword_100EBFA50);
  if (v1)
  {
    v5 = sub_1005687CC;
  }

  else
  {
    v5 = sub_1005686D8;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1005686D8()
{
  v1 = UIImagePNGRepresentation(*(v0 + 112));
  if (v1)
  {
    v2 = v1;
    v3 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v5 = v4;

    v6.super.isa = Data._bridgeToObjectiveC()().super.isa;
    sub_10002C064(v3, v5);
  }

  else
  {
    v6.super.isa = 0;
  }

  v7 = *(v0 + 112);
  (*(v0 + 32))(v6.super.isa, 0);

  swift_unknownObjectRelease();

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_1005687CC(__n128 a1)
{
  v31 = v1;
  v3 = v1[10];
  v2 = v1[11];
  v5 = v1[8];
  v4 = v1[9];
  v6 = v1[3];
  v7 = Logger.musicKit.unsafeMutableAddressor();
  (*(v3 + 16))(v2, v7, v4);
  sub_100568B44(v6, v5);
  swift_errorRetain();
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = v1[15];
    v11 = v1[10];
    v12 = v1[8];
    v28 = v1[9];
    v29 = v1[11];
    v13 = v1[7];
    v14 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    *v14 = 136446466;
    sub_100568B44(v12, v13);
    v15 = String.init<A>(describing:)();
    v17 = v16;
    sub_10026E7C0(v12);
    v18 = sub_1000105AC(v15, v17, &v30);

    *(v14 + 4) = v18;
    *(v14 + 12) = 2082;
    v1[2] = v10;
    swift_errorRetain();
    sub_10010FC20(&qword_1011824A0, &unk_100EBE390);
    v19 = String.init<A>(describing:)();
    v21 = sub_1000105AC(v19, v20, &v30);

    *(v14 + 14) = v21;
    _os_log_impl(&_mh_execute_header, v8, v9, "Failed to generate UIImage from MusicKit.Artwork=%{public}s with error=%{public}s", v14, 0x16u);
    swift_arrayDestroy();

    (*(v11 + 8))(v29, v28);
  }

  else
  {
    v23 = v1[10];
    v22 = v1[11];
    v25 = v1[8];
    v24 = v1[9];

    sub_10026E7C0(v25);
    (*(v23 + 8))(v22, v24);
  }

  v26 = v1[1];

  return v26();
}

void sub_100568A78(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, SEL *a6)
{
  if (a3)
  {
    v8 = String._bridgeToObjectiveC()();
  }

  else
  {
    v8 = 0;
  }

  [v6 *a6];
}

unint64_t sub_100568AEC()
{
  result = qword_1011951D8;
  if (!qword_1011951D8)
  {
    type metadata accessor for GenericMusicItem();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011951D8);
  }

  return result;
}

uint64_t sub_100568B44(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ArtworkImage.ViewModel(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100568BA8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ArtworkImage.ViewModel(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

double sub_100568C0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(type metadata accessor for ArtworkImage.ViewModel(0) - 8);
  v10 = v4 + ((*(v9 + 80) + 16) & ~*(v9 + 80));

  return sub_100568134(a1, a2, a3, a4, v10);
}

uint64_t sub_100568CA4(uint64_t a1)
{
  v4 = *(type metadata accessor for ArtworkImage.ViewModel(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = (v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = *v8;
  v10 = v8[1];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_10002F3F4;

  return sub_100568300(a1, v6, v7, v1 + v5, v9, v10);
}

void sub_100568DD8(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v10 = type metadata accessor for UIButton.Configuration();
  v100 = *(v10 - 8);
  v101 = v10;
  __chkstk_darwin();
  v12 = &v96 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v14 = &v96 - v13;
  type metadata accessor for Locale();
  __chkstk_darwin();
  type metadata accessor for String.LocalizationValue();
  __chkstk_darwin();
  *&v4[OBJC_IVAR____TtC5Music27NowPlayingHistoryHeaderView_clearButton] = 0;
  *&v4[OBJC_IVAR____TtC5Music27NowPlayingHistoryHeaderView_sizeCategoryObserver] = 0;
  v15 = OBJC_IVAR____TtC5Music27NowPlayingHistoryHeaderView_gradientView;
  v99 = type metadata accessor for BackdropView();
  v16 = objc_allocWithZone(v99);
  *&v4[v15] = sub_100453A34();
  v17 = &v4[OBJC_IVAR____TtC5Music27NowPlayingHistoryHeaderView_clearButtonAction];
  *v17 = 0;
  *(v17 + 1) = 0;
  v18 = [objc_allocWithZone(UILabel) init];
  v19._object = 0x8000000100E4FAF0;
  v19._countAndFlagsBits = 0xD000000000000024;
  v104 = AccessibilityIdentifier.init(name:)(v19);
  v20 = UIView.withAccessibilityIdentifier(_:)(v104.rawValue._countAndFlagsBits, v104.rawValue._object, v104.name._countAndFlagsBits, v104.name._object);

  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  v21 = String._bridgeToObjectiveC()();

  [v20 setText:v21];

  v97 = objc_opt_self();
  v22 = [v97 preferredFontForTextStyle:UIFontTextStyleHeadline];
  [v20 setFont:v22];

  [v20 setAdjustsFontForContentSizeCategory:1];
  v23 = v20;
  [v23 setMaximumContentSizeCategory:UIContentSizeCategoryExtraExtraExtraLarge];
  [v23 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v23 setNumberOfLines:1];
  v24 = type metadata accessor for NowPlayingHistoryHeaderView();
  v103.receiver = v5;
  v103.super_class = v24;
  v25 = objc_msgSendSuper2(&v103, "initWithFrame:", a1, a2, a3, a4);
  static UIButton.Configuration.plain()();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  UIButton.Configuration.title.setter();
  UIButton.Configuration.contentInsets.getter();
  v27 = v26;
  v28 = sub_100009F78(0, &qword_101183A18, UIButton_ptr);
  v29 = *(v100 + 16);
  v98 = v14;
  v29(v12, v14, v101);
  v30 = UIButton.init(configuration:primaryAction:)();
  v31._countAndFlagsBits = 0xD00000000000002ALL;
  v31._object = 0x8000000100E4FB20;
  v105 = AccessibilityIdentifier.init(name:)(v31);
  v32 = UIView.withAccessibilityIdentifier(_:)(v105.rawValue._countAndFlagsBits, v105.rawValue._object, v105.name._countAndFlagsBits, v105.name._object);

  v33 = OBJC_IVAR____TtC5Music27NowPlayingHistoryHeaderView_clearButton;
  v34 = *&v25[OBJC_IVAR____TtC5Music27NowPlayingHistoryHeaderView_clearButton];
  *&v25[OBJC_IVAR____TtC5Music27NowPlayingHistoryHeaderView_clearButton] = v32;
  v35 = v32;

  v36 = [v35 titleLabel];
  if (!v36)
  {
LABEL_4:
    v42 = *&v25[v33];
    if (v42)
    {
      [v42 setMaximumContentSizeCategory:UIContentSizeCategoryExtraExtraExtraLarge];
      v43 = *&v25[v33];
      if (v43)
      {
        [v43 setTranslatesAutoresizingMaskIntoConstraints:0];
        v44 = *&v25[v33];
        if (v44)
        {
          [v44 setContentVerticalAlignment:3];
          v45 = objc_allocWithZone(v99);
          v46 = sub_100453A34();
          [v46 setTranslatesAutoresizingMaskIntoConstraints:0];
          v47 = *&v25[v33];
          if (v47)
          {
            v48 = swift_allocObject();
            swift_unknownObjectWeakInit();
            v49 = v25;
            v50 = v47;
            ControlEventHandling<>.on(_:handler:)(64, sub_10056A174, v48, v28);

            v51 = v49;
            [v51 addSubview:v46];
            [v51 addSubview:v23];
            if (*&v25[v33])
            {
              [v51 addSubview:?];
              v102 = 2;
              v52 = sub_100309CC0();
              if (FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.MediaPlayer, v52))
              {
                v53 = OBJC_IVAR____TtC5Music27NowPlayingHistoryHeaderView_gradientView;
                v54 = *&v51[OBJC_IVAR____TtC5Music27NowPlayingHistoryHeaderView_gradientView];
                v55 = v54[OBJC_IVAR____TtC5Music12BackdropView_gradientMaskType];
                v54[OBJC_IVAR____TtC5Music12BackdropView_gradientMaskType] = 1;
                v56 = v54;
                sub_100453194(v55);

                [v51 addSubview:*&v51[v53]];
              }

              sub_10010FC20(&qword_101183990, &qword_100EBC750);
              v57 = swift_allocObject();
              *(v57 + 16) = xmmword_100EBEE90;
              v58 = [v46 topAnchor];
              v59 = [v51 topAnchor];
              v60 = [v58 constraintEqualToAnchor:v59];

              *(v57 + 32) = v60;
              v61 = [v46 leadingAnchor];
              v62 = [v51 leadingAnchor];

              v63 = [v61 constraintEqualToAnchor:v62];
              *(v57 + 40) = v63;
              v64 = [v46 trailingAnchor];
              v65 = [v51 trailingAnchor];

              v66 = [v64 constraintEqualToAnchor:v65];
              *(v57 + 48) = v66;
              v67 = [v46 bottomAnchor];
              v99 = v46;

              v68 = [v51 bottomAnchor];
              v69 = [v67 constraintEqualToAnchor:v68];

              *(v57 + 56) = v69;
              v70 = [v23 centerYAnchor];
              v71 = [v51 centerYAnchor];

              v72 = [v70 constraintEqualToAnchor:v71];
              *(v57 + 64) = v72;
              v73 = [v23 leadingAnchor];
              v74 = [v51 layoutMarginsGuide];

              v75 = [v74 leadingAnchor];
              v76 = [v73 constraintEqualToAnchor:v75];

              *(v57 + 72) = v76;
              v77 = [v23 trailingAnchor];

              v78 = *&v25[v33];
              if (v78)
              {
                v79 = [v78 leadingAnchor];
                v80 = [v77 constraintLessThanOrEqualToAnchor:v79 constant:-10.0];

                *(v57 + 80) = v80;
                v81 = *&v25[v33];
                if (v81)
                {
                  v82 = [v81 centerYAnchor];
                  v83 = [v51 centerYAnchor];

                  v84 = [v82 constraintEqualToAnchor:v83];
                  *(v57 + 88) = v84;
                  v85 = *&v25[v33];
                  if (v85)
                  {
                    v86 = objc_opt_self();
                    v87 = [v85 trailingAnchor];
                    v88 = [v51 layoutMarginsGuide];

                    v89 = [v88 trailingAnchor];
                    v90 = [v87 constraintEqualToAnchor:v89 constant:v27];

                    *(v57 + 96) = v90;
                    sub_100009F78(0, &qword_1011838A0, NSLayoutConstraint_ptr);
                    isa = Array._bridgeToObjectiveC()().super.isa;

                    [v86 activateConstraints:isa];

                    v92 = swift_allocObject();
                    swift_unknownObjectWeakInit();
                    v93 = UIContentSizeCategoryDidChangeNotification;

                    v94 = swift_allocObject();
                    *(v94 + 16) = v92;
                    *(v94 + 24) = v23;
                    type metadata accessor for NotificationObserver();
                    swift_allocObject();
                    v95 = v23;
                    *&v51[OBJC_IVAR____TtC5Music27NowPlayingHistoryHeaderView_sizeCategoryObserver] = NotificationObserver.init(name:object:dispatchOnMainThread:usesLocalNotificationCenter:handler:)(v93, 0, 1, 1, sub_10056A17C, v94);

                    sub_100569EC4();

                    (*(v100 + 8))(v98, v101);
                    return;
                  }

                  goto LABEL_22;
                }

LABEL_21:
                __break(1u);
LABEL_22:
                __break(1u);
                goto LABEL_23;
              }

LABEL_20:
              __break(1u);
              goto LABEL_21;
            }

LABEL_19:
            __break(1u);
            goto LABEL_20;
          }

LABEL_18:
          __break(1u);
          goto LABEL_19;
        }

LABEL_17:
        __break(1u);
        goto LABEL_18;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_17;
  }

  v37 = [v23 font];
  if (v37)
  {
    v38 = v37;
    [v37 pointSize];
    v40 = v39;

    v41 = [v97 systemFontOfSize:v40 weight:UIFontWeightRegular];
    [v36 setFont:v41];

    goto LABEL_4;
  }

LABEL_23:
  __break(1u);
}

void sub_100569A18(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = *(Strong + OBJC_IVAR____TtC5Music27NowPlayingHistoryHeaderView_clearButtonAction);
    v4 = *(Strong + OBJC_IVAR____TtC5Music27NowPlayingHistoryHeaderView_clearButtonAction + 8);
    v5 = Strong;
    sub_100030444(v3, v4);

    if (v3)
    {
      v3();
      sub_100020438(v3, v4);
    }
  }
}

void sub_100569AA4(uint64_t a1, uint64_t a2, void *a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = *(Strong + OBJC_IVAR____TtC5Music27NowPlayingHistoryHeaderView_clearButton);
    v6 = Strong;
    v7 = v5;

    if (v5)
    {
      v8 = [v7 titleLabel];

      if (!v8)
      {
        return;
      }

      v9 = [a3 font];
      if (v9)
      {
        v10 = v9;
        v11 = objc_opt_self();
        [v10 pointSize];
        v13 = v12;

        v14 = [v11 systemFontOfSize:v13 weight:UIFontWeightRegular];
        [v8 setFont:v14];

        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }
}

void sub_100569D38(uint64_t a1)
{
  v2 = v1;
  v6.receiver = v1;
  v6.super_class = type metadata accessor for NowPlayingHistoryHeaderView();
  objc_msgSendSuper2(&v6, "layoutSubviews");
  v3 = sub_100309CC0();
  if (FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.MediaPlayer, v3))
  {
    v4 = *&v1[OBJC_IVAR____TtC5Music27NowPlayingHistoryHeaderView_gradientView];
    [v2 bounds];
    MaxY = CGRectGetMaxY(v7);
    [v2 bounds];
    [v4 setFrame:{0.0, MaxY, CGRectGetWidth(v8), 5.0}];
  }
}

void sub_100569EC4()
{
  v1 = v0;
  v2 = [v0 traitCollection];
  sub_100050078();
  v3 = UITraitCollection.subscript.getter();

  v4 = [v1 traitCollection];
  v5 = [v4 userInterfaceIdiom];

  if (v5 != 6)
  {
    v6 = objc_opt_self();
    v7 = &selRef_clearColor;
    if ((v3 & 1) == 0)
    {
      v7 = &selRef_systemBackgroundColor;
    }

    v8 = [v6 *v7];
    [v1 setBackgroundColor:v8];
  }

  v9 = OBJC_IVAR____TtC5Music27NowPlayingHistoryHeaderView_clearButton;
  v10 = *&v1[OBJC_IVAR____TtC5Music27NowPlayingHistoryHeaderView_clearButton];
  if (!v10)
  {
    __break(1u);
LABEL_19:
    __break(1u);
    return;
  }

  if (v3)
  {
    v11 = qword_10117F900;
    v12 = v10;
    if (v11 != -1)
    {
      swift_once();
    }

    v13 = qword_101219098;
  }

  else
  {
    v14 = v10;
    v13 = 0;
  }

  [v10 setTintColor:v13];

  v15 = *&v1[v9];
  if (!v15)
  {
    goto LABEL_19;
  }

  v16 = [v15 layer];
  if (v3)
  {
    v17 = kCAFilterPlusL;
  }

  else
  {
    v17 = 0;
  }

  [v16 setCompositingFilter:v17];

  swift_unknownObjectRelease();
}

id sub_10056A0AC(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for NowPlayingHistoryHeaderView();
  return objc_msgSendSuper2(&v3, "dealloc");
}

char *sub_10056A184(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  swift_getObjectType();
  type metadata accessor for Locale();
  __chkstk_darwin();
  type metadata accessor for String.LocalizationValue();
  __chkstk_darwin();
  v10 = OBJC_IVAR____TtC5Music28NowPlayingAutoPlayHeaderView_backdropView;
  v11 = type metadata accessor for BackdropView();
  v12 = objc_allocWithZone(v11);
  *&v4[v10] = sub_100453A34();
  v13 = OBJC_IVAR____TtC5Music28NowPlayingAutoPlayHeaderView_bottomGradientView;
  v14 = objc_allocWithZone(v11);
  *&v4[v13] = sub_100453A34();
  v15 = [objc_allocWithZone(UILabel) init];
  v16._object = 0x8000000100E4FC10;
  v16._countAndFlagsBits = 0xD000000000000025;
  v101 = AccessibilityIdentifier.init(name:)(v16);
  v17 = UIView.withAccessibilityIdentifier(_:)(v101.rawValue._countAndFlagsBits, v101.rawValue._object, v101.name._countAndFlagsBits, v101.name._object);

  v18 = OBJC_IVAR____TtC5Music28NowPlayingAutoPlayHeaderView_titleLabel;
  *&v5[OBJC_IVAR____TtC5Music28NowPlayingAutoPlayHeaderView_titleLabel] = v17;
  v19 = objc_opt_self();
  v20 = v17;
  v21 = [v19 preferredFontForTextStyle:UIFontTextStyleHeadline];
  [v20 setFont:v21];

  [*&v5[v18] setAdjustsFontForContentSizeCategory:1];
  [*&v5[v18] setMaximumContentSizeCategory:UIContentSizeCategoryExtraExtraExtraLarge];
  [*&v5[v18] setTranslatesAutoresizingMaskIntoConstraints:0];
  [*&v5[v18] setNumberOfLines:1];
  v22 = *&v5[v18];
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  v23 = String._bridgeToObjectiveC()();

  [v22 setText:v23];

  [*&v5[v18] setSizingRule:1];
  [*&v5[v18] _setWantsContentAwareTypesettingLanguage:1];
  v24 = [objc_allocWithZone(UILabel) init];
  v25._countAndFlagsBits = 0xD000000000000028;
  v25._object = 0x8000000100E4FC40;
  v102 = AccessibilityIdentifier.init(name:)(v25);
  v26 = UIView.withAccessibilityIdentifier(_:)(v102.rawValue._countAndFlagsBits, v102.rawValue._object, v102.name._countAndFlagsBits, v102.name._object);

  v27 = OBJC_IVAR____TtC5Music28NowPlayingAutoPlayHeaderView_subtitleLabel;
  *&v5[OBJC_IVAR____TtC5Music28NowPlayingAutoPlayHeaderView_subtitleLabel] = v26;
  v28 = v26;
  v29 = [v19 preferredFontForTextStyle:UIFontTextStyleFootnote];
  [v28 setFont:v29];

  [*&v5[v27] setAdjustsFontForContentSizeCategory:1];
  [*&v5[v27] setMaximumContentSizeCategory:UIContentSizeCategoryExtraExtraExtraLarge];
  [*&v5[v27] setTranslatesAutoresizingMaskIntoConstraints:0];
  [*&v5[v27] setNumberOfLines:0];
  v30 = *&v5[v27];
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  v31 = String._bridgeToObjectiveC()();

  [v30 setText:v31];

  v32 = *&v5[v27];
  v33 = objc_opt_self();
  v34 = v32;
  v35 = [v33 secondaryLabelColor];
  [v34 setTextColor:v35];

  [*&v5[v27] setSizingRule:1];
  [*&v5[v27] _setWantsContentAwareTypesettingLanguage:1];
  v36 = [objc_opt_self() configurationWithPointSize:7 weight:15.0];
  v37 = String._bridgeToObjectiveC()();
  v38 = [objc_opt_self() systemImageNamed:v37 withConfiguration:v36];

  v99 = v36;
  v39 = [objc_allocWithZone(UIImageView) initWithImage:v38];

  v40._object = 0x8000000100E4FC90;
  v40._countAndFlagsBits = 0xD000000000000025;
  v103 = AccessibilityIdentifier.init(name:)(v40);
  v41 = UIView.withAccessibilityIdentifier(_:)(v103.rawValue._countAndFlagsBits, v103.rawValue._object, v103.name._countAndFlagsBits, v103.name._object);

  v42 = OBJC_IVAR____TtC5Music28NowPlayingAutoPlayHeaderView_autoplayImageView;
  *&v5[OBJC_IVAR____TtC5Music28NowPlayingAutoPlayHeaderView_autoplayImageView] = v41;
  [v41 setTranslatesAutoresizingMaskIntoConstraints:0];
  v43 = *&v5[v42];
  v44 = [v33 labelColor];
  [v43 setTintColor:v44];

  [*&v5[v42] setContentMode:4];
  v100.receiver = v5;
  v100.super_class = type metadata accessor for NowPlayingAutoPlayHeaderView();
  v45 = objc_msgSendSuper2(&v100, "initWithFrame:", a1, a2, a3, a4);
  v46 = [v45 layer];
  [v46 setAllowsGroupBlending:0];

  v47 = OBJC_IVAR____TtC5Music28NowPlayingAutoPlayHeaderView_bottomGradientView;
  v48 = *&v45[OBJC_IVAR____TtC5Music28NowPlayingAutoPlayHeaderView_bottomGradientView];
  LOBYTE(v46) = v48[OBJC_IVAR____TtC5Music12BackdropView_gradientMaskType];
  v48[OBJC_IVAR____TtC5Music12BackdropView_gradientMaskType] = 1;
  v49 = v48;
  sub_100453194(v46);

  [v45 addSubview:*&v45[OBJC_IVAR____TtC5Music28NowPlayingAutoPlayHeaderView_backdropView]];
  v50 = sub_100309CC0();
  if (FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.MediaPlayer, v50))
  {
    [v45 addSubview:*&v45[v47]];
  }

  v51 = OBJC_IVAR____TtC5Music28NowPlayingAutoPlayHeaderView_titleLabel;
  [v45 addSubview:*&v45[OBJC_IVAR____TtC5Music28NowPlayingAutoPlayHeaderView_titleLabel]];
  v97 = OBJC_IVAR____TtC5Music28NowPlayingAutoPlayHeaderView_subtitleLabel;
  [v45 addSubview:*&v45[OBJC_IVAR____TtC5Music28NowPlayingAutoPlayHeaderView_subtitleLabel]];
  v52 = OBJC_IVAR____TtC5Music28NowPlayingAutoPlayHeaderView_autoplayImageView;
  [v45 addSubview:*&v45[OBJC_IVAR____TtC5Music28NowPlayingAutoPlayHeaderView_autoplayImageView]];
  v98 = objc_opt_self();
  sub_10010FC20(&qword_101183990, &qword_100EBC750);
  v53 = swift_allocObject();
  *(v53 + 16) = xmmword_100EC56B0;
  v54 = [*&v45[v52] leadingAnchor];
  v55 = [v45 layoutMarginsGuide];
  v56 = [v55 leadingAnchor];

  v57 = [v54 constraintEqualToAnchor:v56];
  *(v53 + 32) = v57;
  v58 = [*&v45[v52] heightAnchor];
  v59 = [*&v45[v52] widthAnchor];
  v60 = [v58 constraintEqualToAnchor:v59];

  *(v53 + 40) = v60;
  v61 = [*&v45[v52] centerYAnchor];
  v62 = [*&v45[v51] centerYAnchor];
  v63 = [v61 constraintEqualToAnchor:v62];

  *(v53 + 48) = v63;
  v64 = [*&v45[v51] firstBaselineAnchor];
  v65 = [v45 topAnchor];
  v66 = [v64 constraintEqualToAnchor:v65 constant:27.0];

  *(v53 + 56) = v66;
  v67 = [*&v45[v51] leadingAnchor];
  v68 = [*&v45[v52] trailingAnchor];
  v69 = [v67 constraintEqualToAnchor:v68 constant:2.0];

  *(v53 + 64) = v69;
  v70 = [*&v45[v51] trailingAnchor];
  v71 = [v45 layoutMarginsGuide];
  v72 = [v71 trailingAnchor];

  v73 = [v70 constraintEqualToAnchor:v72];
  *(v53 + 72) = v73;
  v74 = [*&v45[v97] leadingAnchor];
  v75 = [v45 layoutMarginsGuide];
  v76 = [v75 leadingAnchor];

  v77 = [v74 constraintEqualToAnchor:v76];
  *(v53 + 80) = v77;
  v78 = [*&v45[v97] topAnchor];
  v79 = [*&v45[v51] bottomAnchor];
  v80 = [v78 constraintEqualToAnchor:v79 constant:1.0];

  *(v53 + 88) = v80;
  v81 = [*&v45[v97] trailingAnchor];
  v82 = [*&v45[v51] trailingAnchor];
  v83 = [v81 constraintEqualToAnchor:v82];

  *(v53 + 96) = v83;
  v84 = [*&v45[v97] bottomAnchor];
  v85 = [v45 bottomAnchor];

  v86 = [v84 constraintEqualToAnchor:v85 constant:-8.0];
  LODWORD(v87) = 1144750080;
  v88 = [v86 withPriority:v87];

  *(v53 + 104) = v88;
  sub_100294F58();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v98 activateConstraints:isa];

  sub_10056B1F0();
  sub_10010FC20(&unk_101182D80, "ʫ\n");
  v90 = swift_allocObject();
  *(v90 + 16) = xmmword_100EBC6B0;
  v91 = sub_100050078();
  *(v90 + 32) = &type metadata for HasAnimatedBackgroundTrait;
  *(v90 + 40) = v91;
  UIView.registerForTraitChanges<A>(_:handler:)();
  swift_unknownObjectRelease();

  v92 = *&v45[v47];
  v93 = [v45 traitCollection];
  v94 = sub_1001D1C24();
  sub_1001D1C78();
  UITraitCollection.subscript.getter();

  [v92 setHidden:sub_1005C3564(2u) & 1];
  v95 = swift_allocObject();
  *(v95 + 16) = xmmword_100EBC6B0;
  *(v95 + 32) = &type metadata for NowPlayingLayoutTypeTrait;
  *(v95 + 40) = v94;
  UIView.registerForTraitChanges<A>(_:handler:)();

  swift_unknownObjectRelease();

  return v45;
}

void sub_10056B0BC(uint64_t a1)
{
  v7.receiver = v1;
  v7.super_class = type metadata accessor for NowPlayingAutoPlayHeaderView();
  objc_msgSendSuper2(&v7, "layoutSubviews");
  v2 = OBJC_IVAR____TtC5Music28NowPlayingAutoPlayHeaderView_backdropView;
  v3 = *&v1[OBJC_IVAR____TtC5Music28NowPlayingAutoPlayHeaderView_backdropView];
  [v1 bounds];
  [v3 setFrame:?];

  v4 = *&v1[v2];
  v5 = *&v1[OBJC_IVAR____TtC5Music28NowPlayingAutoPlayHeaderView_bottomGradientView];
  [v4 frame];
  MaxY = CGRectGetMaxY(v8);
  [v1 bounds];
  [v5 setFrame:{0.0, MaxY, CGRectGetWidth(v9), 5.0}];
}

void sub_10056B1F0()
{
  v1 = v0;
  v2 = [v0 traitCollection];
  sub_100050078();
  v3 = UITraitCollection.subscript.getter();

  v4 = [v1 traitCollection];
  v5 = [v4 userInterfaceIdiom];

  if (v5 != 6)
  {
    if (v3)
    {
      v6 = 0;
    }

    else
    {
      v6 = [objc_opt_self() systemBackgroundColor];
    }

    [v1 setBackgroundColor:v6];
  }

  sub_10010FC20(&qword_101183990, &qword_100EBC750);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100EBC6D0;
  v8 = *&v1[OBJC_IVAR____TtC5Music28NowPlayingAutoPlayHeaderView_subtitleLabel];
  *(inited + 32) = v8;
  v9 = *&v1[OBJC_IVAR____TtC5Music28NowPlayingAutoPlayHeaderView_autoplayImageView];
  *(inited + 40) = v9;
  v10 = v8;
  v11 = v9;
  if ((inited & 0xC000000000000001) != 0)
  {
    v12 = sub_100062D50(0, inited);
  }

  else
  {
    v12 = v10;
  }

  v13 = v12;
  v14 = [v12 layer];
  if (v3)
  {
    v15 = kCAFilterPlusL;
  }

  else
  {
    v15 = 0;
  }

  [v14 setCompositingFilter:v15];

  swift_unknownObjectRelease();
  if ((inited & 0xC000000000000001) != 0)
  {
    v16 = sub_100062D50(1uLL, inited);
  }

  else
  {
    if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) < 2uLL)
    {
      __break(1u);
      return;
    }

    v16 = *(inited + 40);
  }

  v17 = v16;

  v18 = [v17 layer];
  if (v3)
  {
    v19 = kCAFilterPlusL;
  }

  else
  {
    v19 = 0;
  }

  [v18 setCompositingFilter:v19];

  swift_unknownObjectRelease();
}

id sub_10056B450(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for NowPlayingAutoPlayHeaderView();
  return objc_msgSendSuper2(&v3, "dealloc");
}

void sub_10056B548(char *a1)
{
  v2 = *&a1[OBJC_IVAR____TtC5Music28NowPlayingAutoPlayHeaderView_bottomGradientView];
  v3 = [a1 traitCollection];
  sub_1001D1C24();
  sub_1001D1C78();
  UITraitCollection.subscript.getter();

  [v2 setHidden:sub_1005C3564(v4) & 1];
}

uint64_t sub_10056B5F4()
{
  if (qword_10117F880 != -1)
  {
    swift_once();
  }

  if (objc_getAssociatedObject(v0, qword_1011952C0))
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v3 = 0u;
    v4 = 0u;
  }

  v5[0] = v3;
  v5[1] = v4;
  if (*(&v4 + 1))
  {
    result = swift_dynamicCast();
    if (result)
    {
      return v2;
    }
  }

  else
  {
    sub_100011DF0(v5);
    return 0;
  }

  return result;
}

void sub_10056B6D0(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for IndexPath();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v60 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *&v1[OBJC_IVAR____TtCC5Music29NowPlayingQueueViewController19CompositionalLayout_dataSource];
  if (v8)
  {
    v9 = v8;
    v10 = sub_1004357B8(5u);
    v12 = v11;

    if ((v12 & 1) == 0)
    {
      v13 = [a1 indexPath];
      static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();

      v14 = IndexPath.section.getter();
      v15 = *(v5 + 8);
      v15(v7, v4);
      [v2 _layoutFrameForSection:v14];
      v17 = v16;
      v19 = v18;
      v21 = v20;
      v23 = v22;
      [a1 frame];
      CGRectGetMinY(v61);
      v62.origin.x = v17;
      v62.origin.y = v19;
      v62.size.width = v21;
      v62.size.height = v23;
      CGRectGetMinY(v62);
      if (qword_10117F880 != -1)
      {
        swift_once();
      }

      v24 = qword_1011952C0;
      isa = Bool._bridgeToObjectiveC()().super.super.isa;
      objc_setAssociatedObject(a1, v24, isa, 3);

      [a1 setAlpha:1.0];
      v26 = [a1 indexPath];
      static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();

      v27 = IndexPath.section.getter();
      v15(v7, v4);
      if (v27 == v10 && (v28 = [a1 indexPath], static IndexPath._unconditionallyBridgeFromObjectiveC(_:)(), v28, v29 = IndexPath.section.getter(), v15(v7, v4), v29 >= 1))
      {
        v30 = [a1 indexPath];
        static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();

        v31 = IndexPath.section.getter();
        v15(v7, v4);
        if (__OFSUB__(v31, 1))
        {
          __break(1u);
        }

        else
        {
          [v2 _layoutFrameForSection:v31 - 1];
          v33 = v32;
          v35 = v34;
          v37 = v36;
          v39 = v38;
          [v2 bounds];
          MinY = CGRectGetMinY(v63);
          v64.origin.x = v33;
          v64.origin.y = v35;
          v64.size.width = v37;
          v64.size.height = v39;
          if (CGRectGetMaxY(v64) < MinY || ([a1 frame], v41 = CGRectGetMinY(v65), objc_msgSend(v2, "bounds"), v41 < CGRectGetMinY(v66)))
          {
            [v2 bounds];
            CGRectGetMinY(v67);
            [a1 frame];
            [a1 setFrame:?];
          }
        }
      }

      else
      {
        v42 = [a1 indexPath];
        static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();

        v43 = IndexPath.section.getter();
        v15(v7, v4);
        if (v10 < v43)
        {
          v44 = _UICollectionViewListLayoutElementKindSectionHeader;
          IndexPath.init(item:section:)();
          v45 = IndexPath._bridgeToObjectiveC()().super.isa;
          v15(v7, v4);
          v46 = [v2 layoutAttributesForSupplementaryViewOfKind:v44 atIndexPath:v45];

          if (v46)
          {
            v47 = [a1 indexPath];
            static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();

            v48 = IndexPath.section.getter();
            v15(v7, v4);
            [v2 _layoutFrameForSection:v48];
            v50 = v49;
            v52 = v51;
            v54 = v53;
            v56 = v55;
            [a1 frame];
            v57 = CGRectGetMinY(v68);
            [v2 bounds];
            v58 = v57 - CGRectGetMinY(v69);
            [v46 frame];
            if (v58 < CGRectGetHeight(v70))
            {
              [v2 bounds];
              CGRectGetMinY(v71);
              [v46 frame];
              CGRectGetHeight(v72);
              [a1 frame];
              [a1 setFrame:?];
            }

            v73.origin.x = v50;
            v73.origin.y = v52;
            v73.size.width = v54;
            v73.size.height = v56;
            MaxY = CGRectGetMaxY(v73);
            [a1 frame];
            if (MaxY < CGRectGetMaxY(v74))
            {
              v75.origin.x = v50;
              v75.origin.y = v52;
              v75.size.width = v54;
              v75.size.height = v56;
              CGRectGetMaxY(v75);
              [a1 frame];
              [a1 frame];
              [a1 setFrame:?];
            }
          }
        }
      }
    }
  }
}

unint64_t sub_10056BE24(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v46 = type metadata accessor for IndexPath();
  v10 = *(v46 - 8);
  __chkstk_darwin();
  v12 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = _s19CompositionalLayoutCMa();
  v48.receiver = v4;
  v48.super_class = v13;
  v14 = objc_msgSendSuper2(&v48, "layoutAttributesForElementsInRect:", a1, a2, a3, a4);
  if (!v14)
  {
    return 0;
  }

  v15 = v14;
  sub_10056CA5C();
  v16 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v49 = v16;
  v17 = *&v5[OBJC_IVAR____TtCC5Music29NowPlayingQueueViewController19CompositionalLayout_dataSource];
  if (v17)
  {
    v18 = v17;
    v45 = sub_1004357B8(5u);
    v20 = v19;

    if ((v20 & 1) == 0)
    {
      if (v16 >> 62)
      {
        v21 = _CocoaArrayWrapper.endIndex.getter();
        if (v21)
        {
          goto LABEL_6;
        }
      }

      else
      {
        v21 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v21)
        {
LABEL_6:
          v44 = v5;
          if (v21 < 1)
          {
            __break(1u);
LABEL_34:
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
LABEL_32:
            specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

            return v49;
          }

          v47 = 0;
          v22 = 0;
          v23 = _UICollectionViewListLayoutElementKindSectionHeader;
          v42 = v10;
          v43 = (v10 + 8);
          while (1)
          {
            v24 = (v16 & 0xC000000000000001) != 0 ? sub_1007E9C00(v22, v16) : *(v16 + 8 * v22 + 32);
            v25 = v24;
            v26 = [v24 representedElementKind];
            if (!v26)
            {
              break;
            }

            v27 = v26;
            v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v30 = v29;

            v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            if (!v30)
            {
              goto LABEL_9;
            }

            if (v28 == v31 && v30 == v32)
            {

LABEL_23:
              v35 = [v25 indexPath];
              static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();

              v36 = IndexPath.section.getter();
              (*v43)(v12, v46);
              v47 |= v36 == v45;
              sub_10056B6D0(v25);
              goto LABEL_10;
            }

            v34 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if (v34)
            {
              goto LABEL_23;
            }

LABEL_10:
            ++v22;

            if (v21 == v22)
            {
              v5 = v44;
              v10 = v42;
              if ((v47 & 1) == 0)
              {
LABEL_30:
                v38 = v23;
                IndexPath.init(item:section:)();
                isa = IndexPath._bridgeToObjectiveC()().super.isa;
                (*(v10 + 8))(v12, v46);
                v40 = [v5 layoutAttributesForSupplementaryViewOfKind:v38 atIndexPath:isa];

                if (v40)
                {
                  v5 = v40;
                  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
                  if (*((v49 & 0xFFFFFFFFFFFFFF8) + 0x10) < *((v49 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                  {
                    goto LABEL_32;
                  }

                  goto LABEL_34;
                }
              }

              return v16;
            }
          }

          static String._unconditionallyBridgeFromObjectiveC(_:)();
LABEL_9:

          goto LABEL_10;
        }
      }

      v23 = _UICollectionViewListLayoutElementKindSectionHeader;
      goto LABEL_30;
    }
  }

  return v16;
}

id sub_10056C808(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  *&v4[OBJC_IVAR____TtCC5Music29NowPlayingQueueViewController19CompositionalLayout_upNextHeaderMaxY] = 0;
  *&v4[OBJC_IVAR____TtCC5Music29NowPlayingQueueViewController19CompositionalLayout_dataSource] = 0;
  if (a2)
  {
    v13[4] = a2;
    v13[5] = a3;
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 1107296256;
    v13[2] = sub_1005A63A8;
    v13[3] = &unk_1010B2B48;
    v9 = _Block_copy(v13);
  }

  else
  {
    v9 = 0;
  }

  v10 = _s19CompositionalLayoutCMa();
  v14.receiver = v4;
  v14.super_class = v10;
  v11 = objc_msgSendSuper2(&v14, "initWithSection:sectionProvider:configuration:", a1, v9, a4);

  sub_100020438(a2, a3);
  _Block_release(v9);
  return v11;
}

id sub_10056C9C4(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = _s19CompositionalLayoutCMa();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_10056CA2C()
{
  result = swift_slowAlloc();
  qword_1011952C0 = result;
  return result;
}

unint64_t sub_10056CA5C()
{
  result = qword_10119E3E0;
  if (!qword_10119E3E0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10119E3E0);
  }

  return result;
}

uint64_t sub_10056CAE4@<X0>(void *a1@<X8>)
{
  v3 = v2;
  v5 = type metadata accessor for EnvironmentValues();
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&unk_101184840, &qword_100EC0DE0);
  __chkstk_darwin();
  v10 = &v14 - v9;
  sub_1000089F8(v3, &v14 - v9, &unk_101184840, &qword_100EC0DE0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_10003D17C(v10, a1, &unk_101184290, &qword_100EC0E60);
  }

  v12 = static os_log_type_t.fault.getter();
  v13 = static Log.runtimeIssuesLog.getter();
  os_log(_:dso:log:_:_:)(v12, &_mh_execute_header, v13, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, _swiftEmptyArrayStorage);

  EnvironmentValues.init()();
  swift_getAtKeyPath();

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_10056CCEC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t (*a3)(void)@<X2>, void *a4@<X8>)
{
  v9 = v5;
  v11 = type metadata accessor for EnvironmentValues();
  v12 = *(v11 - 8);
  __chkstk_darwin();
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(a1, a2);
  __chkstk_darwin();
  v16 = &v21 - v15;
  sub_1000089F8(v9, &v21 - v15, a1, a2);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v17 = a3(0);
    return (*(*(v17 - 8) + 32))(a4, v16, v17);
  }

  else
  {
    v19 = static os_log_type_t.fault.getter();
    v20 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)(v19, &_mh_execute_header, v20, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, _swiftEmptyArrayStorage);

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    return (*(v12 + 8))(v14, v11);
  }
}

uint64_t sub_10056CFDC()
{
  v1 = OBJC_IVAR____TtCVV5Music15ContainerDetail15FloatingArtwork10DataSource__artworkInfo;
  v2 = sub_10010FC20(&qword_1011955C8, &qword_100ED37D8);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtCVV5Music15ContainerDetail15FloatingArtwork10DataSource__videoArtwork;
  v4 = sub_10010FC20(&qword_1011955C0, &qword_100ED37D0);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  sub_100020438(*(v0 + OBJC_IVAR____TtCVV5Music15ContainerDetail15FloatingArtwork10DataSource_artworkAction), *(v0 + OBJC_IVAR____TtCVV5Music15ContainerDetail15FloatingArtwork10DataSource_artworkAction + 8));

  return swift_deallocClassInstance();
}

void sub_10056D10C(uint64_t a1)
{
  sub_10056D40C(319, &qword_101195348, type metadata accessor for ArtworkImage.Info, &type metadata accessor for Published);
  if (v1 <= 0x3F)
  {
    sub_10056D210(319);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_10056D210(uint64_t a1)
{
  if (!qword_101195350)
  {
    sub_1001109D0(&unk_101192950, &unk_100EBDF40);
    v1 = type metadata accessor for Published();
    if (!v2)
    {
      atomic_store(v1, &qword_101195350);
    }
  }
}

void sub_10056D2BC(uint64_t a1)
{
  sub_10056D378(319);
  if (v1 <= 0x3F)
  {
    sub_10056D40C(319, &unk_1011954D0, &type metadata accessor for LayoutDirection, &type metadata accessor for Environment);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_10056D378(uint64_t a1)
{
  if (!qword_1011954C8)
  {
    _s15FloatingArtworkV10DataSourceCMa(255);
    sub_10056F084(&unk_10119E420, _s15FloatingArtworkV10DataSourceCMa, &unk_100ED3698);
    v1 = type metadata accessor for ObservedObject();
    if (!v2)
    {
      atomic_store(v1, &qword_1011954C8);
    }
  }
}

void sub_10056D40C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_10056D48C@<X0>(uint64_t *a2@<X8>)
{
  _s15FloatingArtworkV10DataSourceCMa(0);
  result = ObservableObject<>.objectWillChange.getter();
  *a2 = result;
  return result;
}

uint64_t sub_10056D4CC@<X0>(uint64_t a1@<X8>)
{
  v197 = a1;
  v195 = sub_10010FC20(&qword_101195508, &qword_100ED36D0);
  __chkstk_darwin();
  v196 = &v143 - v2;
  v154 = type metadata accessor for PlainButtonStyle();
  v152 = *(v154 - 8);
  __chkstk_darwin();
  v148 = &v143 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v150 = sub_10010FC20(&qword_101195510, &qword_100ED36D8);
  v145 = *(v150 - 8);
  __chkstk_darwin();
  v143 = &v143 - v4;
  v151 = sub_10010FC20(&qword_101195518, &qword_100ED36E0);
  v149 = *(v151 - 8);
  __chkstk_darwin();
  v144 = &v143 - v5;
  v146 = sub_10010FC20(&qword_101195520, &qword_100ED36E8);
  __chkstk_darwin();
  v147 = &v143 - v6;
  v194 = sub_10010FC20(&qword_101195528, &qword_100ED36F0);
  __chkstk_darwin();
  v153 = &v143 - v7;
  sub_10010FC20(&qword_101195530, &qword_100ED36F8);
  __chkstk_darwin();
  v193 = &v143 - v8;
  v9 = type metadata accessor for LayoutDirection();
  v189 = *(v9 - 8);
  v190 = v9;
  __chkstk_darwin();
  v188 = &v143 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v187 = &v143 - v11;
  v200 = type metadata accessor for AccessibilityTraits();
  v202 = *(v200 - 8);
  __chkstk_darwin();
  v192 = &v143 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for AccessibilityChildBehavior();
  v185 = *(v13 - 8);
  v186 = v13;
  __chkstk_darwin();
  v184 = &v143 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&unk_101184060, &qword_100EBDF50);
  __chkstk_darwin();
  v201 = (&v143 - v15);
  v204 = type metadata accessor for ArtworkImage.Info(0);
  __chkstk_darwin();
  v167 = (&v143 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin();
  v203 = (&v143 - v17);
  __chkstk_darwin();
  v163 = (&v143 - v18);
  __chkstk_darwin();
  v20 = (&v143 - v19);
  sub_10010FC20(&unk_10118A5E0, &unk_100EBCD90);
  __chkstk_darwin();
  v22 = &v143 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v24 = &v143 - v23;
  sub_10010FC20(&unk_101188920, &qword_100EBCC50);
  __chkstk_darwin();
  v26 = &v143 - v25;
  sub_10010FC20(&unk_101192950, &unk_100EBDF40);
  __chkstk_darwin();
  v28 = (&v143 - v27);
  v164 = type metadata accessor for ArtworkMotionView(0);
  __chkstk_darwin();
  v162 = &v143 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v171 = sub_10010FC20(&qword_101195538, &qword_100ED3700);
  v169 = *(v171 - 8);
  __chkstk_darwin();
  v168 = &v143 - v30;
  v174 = sub_10010FC20(&qword_101195540, &qword_100ED3708);
  v172 = *(v174 - 8);
  __chkstk_darwin();
  v170 = &v143 - v31;
  v32 = sub_10010FC20(&qword_101195548, &qword_100ED3710);
  v175 = *(v32 - 8);
  v176 = v32;
  __chkstk_darwin();
  v173 = &v143 - v33;
  v177 = sub_10010FC20(&qword_101195550, &qword_100ED3718);
  __chkstk_darwin();
  v178 = &v143 - v34;
  v180 = sub_10010FC20(&qword_101195558, &qword_100ED3720);
  __chkstk_darwin();
  v179 = &v143 - v35;
  sub_10010FC20(&qword_101195560, &qword_100ED3728);
  __chkstk_darwin();
  v181 = &v143 - v36;
  v182 = sub_10010FC20(&qword_101195568, &qword_100ED3730);
  __chkstk_darwin();
  v183 = &v143 - v37;
  v198 = sub_10010FC20(&qword_101195570, &qword_100ED3738);
  __chkstk_darwin();
  v199 = &v143 - v38;
  v191 = v1;
  v39 = *(v1 + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  v165 = v28;
  static Published.subscript.getter(v28);

  swift_getKeyPath();
  swift_getKeyPath();
  v205 = v39;
  static Published.subscript.getter(v20);

  sub_1000089F8(v20, v24, &unk_10118A5E0, &unk_100EBCD90);
  sub_10056F770(v20, type metadata accessor for ArtworkImage.Info);
  v40 = type metadata accessor for ArtworkImage.ViewModel(0);
  v41 = *(*(v40 - 8) + 48);
  if (v41(v24, 1, v40) == 1)
  {
    sub_1000095E8(v24, &unk_10118A5E0, &unk_100EBCD90);
    v42 = type metadata accessor for Artwork();
    (*(*(v42 - 8) + 56))(v26, 1, 1, v42);
  }

  else
  {
    v43 = type metadata accessor for Artwork();
    v44 = *(v43 - 8);
    (*(v44 + 16))(v26, v24, v43);
    sub_10056F770(v24, type metadata accessor for ArtworkImage.ViewModel);
    (*(v44 + 56))(v26, 0, 1, v43);
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v45 = v163;
  static Published.subscript.getter(v163);

  sub_1000089F8(v45, v22, &unk_10118A5E0, &unk_100EBCD90);
  sub_10056F770(v45, type metadata accessor for ArtworkImage.Info);
  v46 = v41(v22, 1, v40);
  v47 = v201;
  v166 = v26;
  if (v46 == 1)
  {
    sub_1000095E8(v22, &unk_10118A5E0, &unk_100EBCD90);
    v48 = type metadata accessor for Artwork.CropStyle();
    (*(*(v48 - 8) + 56))(v47, 1, 1, v48);
  }

  else
  {
    sub_1000089F8(&v22[*(v40 + 20)], v201, &unk_101184060, &qword_100EBDF50);
    sub_10056F770(v22, type metadata accessor for ArtworkImage.ViewModel);
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v49 = v203;
  static Published.subscript.getter(v203);

  v50 = v204;
  v51 = v49 + *(v204 + 28);
  v161 = *v51;
  v160 = v51[8];
  v159 = *(v51 + 2);
  v158 = v51[24];
  v157 = *(v51 + 4);
  v52 = v51[40];
  v155 = v51[41];
  v156 = v52;
  sub_10056F770(v49, type metadata accessor for ArtworkImage.Info);
  v53 = v164;
  v54 = *(v164 + 32);
  swift_getKeyPath();
  swift_getKeyPath();
  v55 = v167;
  static Published.subscript.getter(v167);

  v56 = v162;
  sub_10056F7D0(v55 + *(v50 + 20), &v162[v54], type metadata accessor for ArtworkImage.Placeholder);
  sub_10056F770(v55, type metadata accessor for ArtworkImage.Info);
  v57 = type metadata accessor for ArtworkImage.Placeholder(0);
  (*(*(v57 - 8) + 56))(v56 + v54, 0, 1, v57);
  v58 = v53[9];
  v59 = enum case for ArtworkImage.ReusePolicy.notReusableForDistinctItems(_:);
  v60 = type metadata accessor for ArtworkImage.ReusePolicy();
  (*(*(v60 - 8) + 104))(v56 + v58, v59, v60);
  sub_10003D17C(v165, v56, &unk_101192950, &unk_100EBDF40);
  sub_10003D17C(v166, v56 + v53[5], &unk_101188920, &qword_100EBCC50);
  sub_10003D17C(v201, v56 + v53[6], &unk_101184060, &qword_100EBDF50);
  v61 = v56 + v53[7];
  *v61 = v161;
  *(v61 + 8) = v160;
  *(v61 + 16) = v159;
  *(v61 + 24) = v158;
  *(v61 + 32) = v157;
  v62 = v155;
  *(v61 + 40) = v156;
  *(v61 + 41) = v62;
  *(v56 + v53[10]) = 0;
  *(v56 + v53[11]) = 0;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(v49);

  v63 = v49;
  v64 = v49 + *(v50 + 32);
  v65 = *v64;
  v66 = *(v64 + 1);
  LOBYTE(v50) = v64[16];
  v163 = type metadata accessor for ArtworkImage.Info;
  sub_10056F770(v63, type metadata accessor for ArtworkImage.Info);
  v67 = sub_10056F084(&qword_101190498, type metadata accessor for ArtworkMotionView, &unk_100EBDF74);
  v68 = v168;
  View.corner(_:)(v65, v66, v50, v53, v67);
  sub_10056F770(v56, type metadata accessor for ArtworkMotionView);
  v69 = Border.artwork.unsafeMutableAddressor();
  v70 = *v69;
  v71 = *(v69 + 1);
  LODWORD(v201) = *(v69 + 16);
  swift_getKeyPath();
  swift_getKeyPath();

  v72 = v203;
  static Published.subscript.getter(v203);

  v73 = v72 + *(v204 + 32);
  v74 = *v73;
  v75 = *(v73 + 1);
  LOBYTE(v55) = v73[16];
  sub_10056F770(v72, type metadata accessor for ArtworkImage.Info);
  *&v211[0] = v53;
  *(&v211[0] + 1) = v67;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v77 = v170;
  v78 = v55;
  v79 = v171;
  View.border(_:corner:)(v70, v201, v74, v75, v78, v171, OpaqueTypeConformance2, v71);

  (*(v169 + 8))(v68, v79);
  v80 = v184;
  static AccessibilityChildBehavior.ignore.getter();
  *&v211[0] = v79;
  *(&v211[0] + 1) = OpaqueTypeConformance2;
  v81 = swift_getOpaqueTypeConformance2();
  v83 = v173;
  v82 = v174;
  View.accessibilityElement(children:)();
  (*(v185 + 8))(v80, v186);
  (*(v172 + 8))(v77, v82);
  v84 = v192;
  static AccessibilityTraits.isImage.getter();
  *&v211[0] = v82;
  *(&v211[0] + 1) = v81;
  swift_getOpaqueTypeConformance2();
  v85 = v178;
  v86 = v176;
  View.accessibilityAddTraits(_:)();
  v201 = *(v202 + 8);
  v202 += 8;
  (v201)(v84, v200);
  (*(v175 + 8))(v83, v86);
  v87 = AccessibilityIdentifier.containerDetailFloatingArtwork.unsafeMutableAddressor();
  v88 = *v87;
  v89 = v87[1];
  v90 = v87[2];
  v91 = v87[3];
  v92 = sub_10056F0CC();

  v93 = v179;
  View.accessibilityIdentifier(_:)(v88, v89, v90, v91, v177, v92);

  sub_1000095E8(v85, &qword_101195550, &qword_100ED3718);
  v94 = *(v191 + 16);
  v95 = *(v191 + 24);
  v96 = sub_10056F268();
  v97 = v181;
  v185 = v95;
  v186 = v94;
  View.accessibilityLabel(_:)(v94, v95, v180, v96);
  sub_1000095E8(v93, &qword_101195558, &qword_100ED3720);
  _s15FloatingArtworkVMa(0);
  v98 = v187;
  sub_10056CCEC(&qword_101194F38, &qword_100ED2DE0, &type metadata accessor for LayoutDirection, v187);
  v100 = v188;
  v99 = v189;
  v101 = v190;
  (*(v189 + 104))(v188, enum case for LayoutDirection.rightToLeft(_:), v190);
  LOBYTE(v94) = static LayoutDirection.== infix(_:_:)();
  v102 = *(v99 + 8);
  v102(v100, v101);
  v102(v98, v101);
  if (v94)
  {
    v103 = -1.0;
  }

  else
  {
    v103 = 1.0;
  }

  static UnitPoint.center.getter();
  v105 = v104;
  v107 = v106;
  v108 = v183;
  sub_10003D17C(v97, v183, &qword_101195560, &qword_100ED3728);
  v109 = v182;
  v110 = v108 + *(v182 + 36);
  *v110 = v103;
  *(v110 + 8) = 0x3FF0000000000000;
  *(v110 + 16) = v105;
  *(v110 + 24) = v107;
  v111 = Radiosity.Specs.containerDetailHeaderArtwork.unsafeMutableAddressor();
  v112 = v111[3];
  v114 = *v111;
  v113 = v111[1];
  v211[2] = v111[2];
  v211[3] = v112;
  v211[0] = v114;
  v211[1] = v113;
  v115 = v111[7];
  v117 = v111[4];
  v116 = v111[5];
  v211[6] = v111[6];
  v211[7] = v115;
  v211[4] = v117;
  v211[5] = v116;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10056F298(v211, v210);
  v118 = v203;
  v119 = v205;
  static Published.subscript.getter(v203);

  v120 = v118 + *(v204 + 32);
  v121 = *v120;
  v122 = *(v120 + 1);
  v123 = v120[16];
  sub_10056F770(v118, v163);
  Radiosity.Specs.pathShadow(for:)(v121, v122, v123, v210);
  sub_10056F2F4(v211);
  v124 = sub_10056F348();
  v125 = v199;
  View.radiosity(specs:)(v210, v109, v124);
  sub_10056F2F4(v210);
  sub_1000095E8(v108, &qword_101195568, &qword_100ED3730);
  if (*(v119 + OBJC_IVAR____TtCVV5Music15ContainerDetail15FloatingArtwork10DataSource_artworkAction))
  {
    v205 = *(v119 + OBJC_IVAR____TtCVV5Music15ContainerDetail15FloatingArtwork10DataSource_artworkAction + 8);
    v126 = v205;
    __chkstk_darwin();
    *(&v143 - 2) = v125;
    v204 = v127;
    sub_100030444(v127, v126);
    v203 = sub_10056F660();

    v128 = v143;
    Button.init(action:label:)();
    v129 = v148;
    PlainButtonStyle.init()();
    v130 = sub_10056F5FC();
    v131 = sub_10056F084(&qword_10119A260, &type metadata accessor for PlainButtonStyle, &protocol conformance descriptor for PlainButtonStyle);
    v132 = v144;
    v133 = v150;
    v134 = v84;
    v135 = v154;
    View.buttonStyle<A>(_:)();
    (*(v152 + 8))(v129, v135);
    (*(v145 + 8))(v128, v133);
    v206 = v133;
    v207 = v135;
    v208 = v130;
    v209 = v131;
    v136 = swift_getOpaqueTypeConformance2();
    v137 = v147;
    v138 = v151;
    v139 = View.accessibilityLabel(_:)(v186, v185, v151, v136);
    (*(v149 + 8))(v132, v138, v139);
    static AccessibilityTraits.isImage.getter();
    sub_10056F4B4();
    v140 = v153;
    View.accessibilityAddTraits(_:)();
    (v201)(v134, v200);
    sub_1000095E8(v137, &qword_101195520, &qword_100ED36E8);
    sub_1000089F8(v140, v196, &qword_101195528, &qword_100ED36F0);
    swift_storeEnumTagMultiPayload();
    sub_10056F400(&qword_101195598, &qword_101195528, &qword_100ED36F0, sub_10056F4B4);
    v141 = v193;
    v125 = v199;
    _ConditionalContent<>.init(storage:)();
    sub_100020438(v204, v205);
    sub_1000095E8(v140, &qword_101195528, &qword_100ED36F0);
  }

  else
  {
    sub_1000089F8(v125, v196, &qword_101195570, &qword_100ED3738);
    swift_storeEnumTagMultiPayload();
    sub_10056F400(&qword_101195598, &qword_101195528, &qword_100ED36F0, sub_10056F4B4);
    sub_10056F660();
    v141 = v193;
    _ConditionalContent<>.init(storage:)();
  }

  sub_10003D17C(v141, v197, &qword_101195530, &qword_100ED36F8);
  return sub_1000095E8(v125, &qword_101195570, &qword_100ED3738);
}

uint64_t sub_10056EE14(uint64_t a1, uint64_t *a2)
{
  type metadata accessor for ArtworkImage.Info(0);
  __chkstk_darwin();
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v6 = &v8 - v5;
  sub_10056F7D0(a1, &v8 - v5, type metadata accessor for ArtworkImage.Info);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10056F7D0(v6, v4, type metadata accessor for ArtworkImage.Info);

  static Published.subscript.setter();
  return sub_10056F770(v6, type metadata accessor for ArtworkImage.Info);
}

uint64_t sub_10056EF54(uint64_t a1, uint64_t *a2)
{
  sub_10010FC20(&unk_101192950, &unk_100EBDF40);
  __chkstk_darwin();
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v6 = &v8 - v5;
  sub_1000089F8(a1, &v8 - v5, &unk_101192950, &unk_100EBDF40);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000089F8(v6, v4, &unk_101192950, &unk_100EBDF40);

  static Published.subscript.setter();
  return sub_1000095E8(v6, &unk_101192950, &unk_100EBDF40);
}

uint64_t sub_10056F084(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_10056F0CC()
{
  result = qword_101195578;
  if (!qword_101195578)
  {
    sub_1001109D0(&qword_101195550, &qword_100ED3718);
    sub_1001109D0(&qword_101195540, &qword_100ED3708);
    sub_1001109D0(&qword_101195538, &qword_100ED3700);
    type metadata accessor for ArtworkMotionView(255);
    sub_10056F084(&qword_101190498, type metadata accessor for ArtworkMotionView, &unk_100EBDF74);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_10056F084(&qword_101181038, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101195578);
  }

  return result;
}

unint64_t sub_10056F348()
{
  result = qword_101195588;
  if (!qword_101195588)
  {
    sub_1001109D0(&qword_101195568, &qword_100ED3730);
    sub_10056F400(&qword_101195590, &qword_101195560, &qword_100ED3728, sub_10056F268);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101195588);
  }

  return result;
}

uint64_t sub_10056F400(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1001109D0(a2, a3);
    a4();
    sub_10056F084(&qword_101181038, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10056F4B4()
{
  result = qword_1011955A0;
  if (!qword_1011955A0)
  {
    sub_1001109D0(&qword_101195520, &qword_100ED36E8);
    sub_1001109D0(&qword_101195510, &qword_100ED36D8);
    type metadata accessor for PlainButtonStyle();
    sub_10056F5FC();
    sub_10056F084(&qword_10119A260, &type metadata accessor for PlainButtonStyle, &protocol conformance descriptor for PlainButtonStyle);
    swift_getOpaqueTypeConformance2();
    sub_10056F084(&qword_101181038, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011955A0);
  }

  return result;
}

unint64_t sub_10056F5FC()
{
  result = qword_1011955A8;
  if (!qword_1011955A8)
  {
    sub_1001109D0(&qword_101195510, &qword_100ED36D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011955A8);
  }

  return result;
}

unint64_t sub_10056F660()
{
  result = qword_1011955B0;
  if (!qword_1011955B0)
  {
    sub_1001109D0(&qword_101195570, &qword_100ED3738);
    sub_10056F348();
    sub_10056F6EC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011955B0);
  }

  return result;
}

unint64_t sub_10056F6EC()
{
  result = qword_1011955B8;
  if (!qword_1011955B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011955B8);
  }

  return result;
}

uint64_t sub_10056F770(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10056F7D0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10056F838(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v28 = a3;
  v29 = a4;
  v27 = a2;
  v30 = a1;
  v26 = type metadata accessor for ArtworkImage.Info(0);
  __chkstk_darwin();
  v25 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v7 = &v24 - v6;
  v24 = sub_10010FC20(&qword_1011955C0, &qword_100ED37D0);
  v8 = *(v24 - 8);
  __chkstk_darwin();
  v10 = &v24 - v9;
  sub_10010FC20(&unk_101192950, &unk_100EBDF40);
  __chkstk_darwin();
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v14 = &v24 - v13;
  v15 = OBJC_IVAR____TtCVV5Music15ContainerDetail15FloatingArtwork10DataSource__videoArtwork;
  v16 = type metadata accessor for VideoArtwork();
  (*(*(v16 - 8) + 56))(v14, 1, 1, v16);
  sub_1000089F8(v14, v12, &unk_101192950, &unk_100EBDF40);
  Published.init(initialValue:)();
  sub_1000095E8(v14, &unk_101192950, &unk_100EBDF40);
  (*(v8 + 32))(v4 + v15, v10, v24);
  v17 = (v4 + OBJC_IVAR____TtCVV5Music15ContainerDetail15FloatingArtwork10DataSource_artworkAction);
  *v17 = 0;
  v17[1] = 0;
  sub_10056F7D0(v30, v7, type metadata accessor for ArtworkImage.Info);
  swift_beginAccess();
  sub_10056F7D0(v7, v25, type metadata accessor for ArtworkImage.Info);
  Published.init(initialValue:)();
  sub_10056F770(v7, type metadata accessor for ArtworkImage.Info);
  swift_endAccess();
  v18 = v27;
  sub_1000089F8(v27, v14, &unk_101192950, &unk_100EBDF40);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000089F8(v14, v12, &unk_101192950, &unk_100EBDF40);

  static Published.subscript.setter();
  sub_1000095E8(v18, &unk_101192950, &unk_100EBDF40);
  sub_10056F770(v30, type metadata accessor for ArtworkImage.Info);
  sub_1000095E8(v14, &unk_101192950, &unk_100EBDF40);
  v19 = *v17;
  v20 = v17[1];
  v21 = v28;
  v22 = v29;
  *v17 = v28;
  v17[1] = v22;
  sub_100030444(v21, v22);
  sub_100020438(v19, v20);
  return v4;
}

unint64_t sub_10056FBF0()
{
  result = qword_1011955D0;
  if (!qword_1011955D0)
  {
    sub_1001109D0(&qword_101195530, &qword_100ED36F8);
    sub_10056F400(&qword_101195598, &qword_101195528, &qword_100ED36F0, sub_10056F4B4);
    sub_10056F660();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011955D0);
  }

  return result;
}

id sub_10056FCA8()
{
  v1 = OBJC_IVAR____TtC5Music25NowPlayingQueueHeaderView____lazy_storage___clearButton;
  v2 = *(v0 + OBJC_IVAR____TtC5Music25NowPlayingQueueHeaderView____lazy_storage___clearButton);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC5Music25NowPlayingQueueHeaderView____lazy_storage___clearButton);
  }

  else
  {
    v4 = sub_10056FD08();
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_10056FD08()
{
  type metadata accessor for Locale();
  __chkstk_darwin();
  type metadata accessor for String.LocalizationValue();
  __chkstk_darwin();
  v0 = type metadata accessor for UIButton.Configuration();
  v1 = *(v0 - 8);
  __chkstk_darwin();
  v3 = &v10[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v5 = &v10[-v4];
  static UIButton.Configuration.plain()();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  UIButton.Configuration.title.setter();
  sub_100009F78(0, &qword_101183A18, UIButton_ptr);
  (*(v1 + 16))(v3, v5, v0);
  v6 = UIButton.init(configuration:primaryAction:)();
  v7._object = 0x8000000100E50010;
  v7._countAndFlagsBits = 0xD000000000000023;
  v11 = AccessibilityIdentifier.init(name:)(v7);
  v8 = UIView.withAccessibilityIdentifier(_:)(v11.rawValue._countAndFlagsBits, v11.rawValue._object, v11.name._countAndFlagsBits, v11.name._object);

  (*(v1 + 8))(v5, v0);
  return v8;
}

id sub_10056FF60()
{
  v1 = v0;
  sub_10010FC20(&unk_101183AB0, &qword_100EBF4D0);
  __chkstk_darwin();
  v3 = &v12 - v2;
  v4 = sub_1002931A8();
  v5 = FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.Alchemy, v4);
  v6 = [*(v1 + OBJC_IVAR____TtC5Music25NowPlayingQueueHeaderView_autoplayButton) isHidden];
  v7 = 0.0;
  if (v5)
  {
    if (!v6 || (FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.Alchemy, v4) & 1) != 0 && ![*(v1 + OBJC_IVAR____TtC5Music25NowPlayingQueueHeaderView_transitionButton) isHidden])
    {
      return [*(v1 + OBJC_IVAR____TtC5Music25NowPlayingQueueHeaderView_buttonsStackViewTrailingConstraint) setConstant:v7];
    }
  }

  else if ((v6 & 1) == 0)
  {
    return [*(v1 + OBJC_IVAR____TtC5Music25NowPlayingQueueHeaderView_buttonsStackViewTrailingConstraint) setConstant:v7];
  }

  v8 = sub_10056FCA8();
  UIButton.configuration.getter();

  v9 = type metadata accessor for UIButton.Configuration();
  if (!(*(*(v9 - 8) + 48))(v3, 1, v9))
  {
    UIButton.Configuration.contentInsets.getter();
    v7 = v10;
  }

  sub_1000095E8(v3, &unk_101183AB0, &qword_100EBF4D0);
  return [*(v1 + OBJC_IVAR____TtC5Music25NowPlayingQueueHeaderView_buttonsStackViewTrailingConstraint) setConstant:v7];
}

void sub_1005700F4()
{
  if (*(v0 + OBJC_IVAR____TtC5Music25NowPlayingQueueHeaderView_title + 8))
  {
    v1 = OBJC_IVAR____TtC5Music25NowPlayingQueueHeaderView_titleLabel;
    v2 = *(v0 + OBJC_IVAR____TtC5Music25NowPlayingQueueHeaderView_titleLabel);

    [v2 setHidden:0];
    v3 = *(v0 + v1);
    v5 = String._bridgeToObjectiveC()();

    [v3 setText:v5];
  }

  else
  {
    v4 = *(v0 + OBJC_IVAR____TtC5Music25NowPlayingQueueHeaderView_titleLabel);

    [v4 setHidden:1];
  }
}

void sub_1005701F8()
{
  v1 = *&v0[OBJC_IVAR____TtC5Music25NowPlayingQueueHeaderView_titleLabelTopConstraint];
  if (v0[OBJC_IVAR____TtC5Music25NowPlayingQueueHeaderView_playSource + 32] == 255)
  {
    if (v1)
    {
      [v1 setConstant:16.0];
    }

    [*&v0[OBJC_IVAR____TtC5Music25NowPlayingQueueHeaderView_subtitleButton] removeFromSuperview];
    v8 = objc_opt_self();
    sub_100009F78(0, &qword_1011838A0, NSLayoutConstraint_ptr);

    isa = Array._bridgeToObjectiveC()().super.isa;

    [v8 deactivateConstraints:isa];

    v10 = *&v0[OBJC_IVAR____TtC5Music25NowPlayingQueueHeaderView_subtitleButtonBottomAnchorConstraint];
    if (v10)
    {
      [v10 setActive:0];
    }

    v11 = *&v0[OBJC_IVAR____TtC5Music25NowPlayingQueueHeaderView_titleLabelBottomAnchorConstraint];
    if (v11)
    {

      [v11 setActive:1];
    }
  }

  else
  {
    if (v1)
    {
      [v1 setConstant:12.0];
    }

    sub_1005705D8([*&v0[OBJC_IVAR____TtC5Music25NowPlayingQueueHeaderView_subtitleButton] state]);
    v2 = objc_opt_self();
    v3 = swift_allocObject();
    *(v3 + 16) = v0;
    v4 = swift_allocObject();
    *(v4 + 16) = sub_100575840;
    *(v4 + 24) = v3;
    v12[4] = sub_100029B94;
    v12[5] = v4;
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 1107296256;
    v12[2] = sub_100029B9C;
    v12[3] = &unk_1010B2DA0;
    v5 = _Block_copy(v12);
    v6 = v0;

    [v2 performWithoutAnimation:v5];
    _Block_release(v5);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }
  }
}

id sub_1005704A4(char *a1)
{
  v2 = OBJC_IVAR____TtC5Music25NowPlayingQueueHeaderView_subtitleButton;
  v3 = [*&a1[OBJC_IVAR____TtC5Music25NowPlayingQueueHeaderView_subtitleButton] superview];
  if (v3)
  {
  }

  else
  {
    [a1 addSubview:*&a1[v2]];
    v4 = objc_opt_self();
    sub_100009F78(0, &qword_1011838A0, NSLayoutConstraint_ptr);

    isa = Array._bridgeToObjectiveC()().super.isa;

    [v4 activateConstraints:isa];

    v6 = *&a1[OBJC_IVAR____TtC5Music25NowPlayingQueueHeaderView_subtitleButtonBottomAnchorConstraint];
    if (v6)
    {
      [v6 setActive:1];
    }

    v7 = *&a1[OBJC_IVAR____TtC5Music25NowPlayingQueueHeaderView_titleLabelBottomAnchorConstraint];
    if (v7)
    {
      [v7 setActive:0];
    }
  }

  v8 = *&a1[v2];

  return [v8 layoutIfNeeded];
}